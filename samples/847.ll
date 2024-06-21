; ModuleID = 'samples/847.bc'
source_filename = "/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/map/lapack2flamec/f2c/c/zlargv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.doublecomplex = type { double, double }

@.str = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"E\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"B\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @zlargv_(ptr noundef %n, ptr noundef %x, ptr noundef %incx, ptr noundef %y, ptr noundef %incy, ptr noundef %c__, ptr noundef %incc) #0 {
entry:
  %n.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %incx.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  %incy.addr = alloca ptr, align 8
  %c__.addr = alloca ptr, align 8
  %incc.addr = alloca ptr, align 8
  %i__1 = alloca i32, align 4
  %i__2 = alloca i32, align 4
  %d__1 = alloca double, align 8
  %d__2 = alloca double, align 8
  %d__3 = alloca double, align 8
  %d__4 = alloca double, align 8
  %d__5 = alloca double, align 8
  %d__6 = alloca double, align 8
  %d__7 = alloca double, align 8
  %d__8 = alloca double, align 8
  %d__9 = alloca double, align 8
  %d__10 = alloca double, align 8
  %z__1 = alloca %struct.doublecomplex, align 8
  %z__2 = alloca %struct.doublecomplex, align 8
  %z__3 = alloca %struct.doublecomplex, align 8
  %d__ = alloca double, align 8
  %f = alloca %struct.doublecomplex, align 8
  %g = alloca %struct.doublecomplex, align 8
  %i__ = alloca i32, align 4
  %j = alloca i32, align 4
  %r__ = alloca %struct.doublecomplex, align 8
  %f2 = alloca double, align 8
  %g2 = alloca double, align 8
  %ic = alloca i32, align 4
  %di = alloca double, align 8
  %ff = alloca %struct.doublecomplex, align 8
  %cs = alloca double, align 8
  %dr = alloca double, align 8
  %fs = alloca %struct.doublecomplex, align 8
  %gs = alloca %struct.doublecomplex, align 8
  %ix = alloca i32, align 4
  %iy = alloca i32, align 4
  %sn = alloca %struct.doublecomplex, align 8
  %f2s = alloca double, align 8
  %g2s = alloca double, align 8
  %eps = alloca double, align 8
  %scale = alloca double, align 8
  %count = alloca i32, align 4
  %safmn2 = alloca double, align 8
  %safmx2 = alloca double, align 8
  %safmin = alloca double, align 8
  store ptr %n, ptr %n.addr, align 8
  store ptr %x, ptr %x.addr, align 8
  store ptr %incx, ptr %incx.addr, align 8
  store ptr %y, ptr %y.addr, align 8
  store ptr %incy, ptr %incy.addr, align 8
  store ptr %c__, ptr %c__.addr, align 8
  store ptr %incc, ptr %incc.addr, align 8
  %0 = load ptr, ptr %c__.addr, align 8
  %incdec.ptr = getelementptr inbounds double, ptr %0, i32 -1
  store ptr %incdec.ptr, ptr %c__.addr, align 8
  %1 = load ptr, ptr %y.addr, align 8
  %incdec.ptr1 = getelementptr inbounds %struct.doublecomplex, ptr %1, i32 -1
  store ptr %incdec.ptr1, ptr %y.addr, align 8
  %2 = load ptr, ptr %x.addr, align 8
  %incdec.ptr2 = getelementptr inbounds %struct.doublecomplex, ptr %2, i32 -1
  store ptr %incdec.ptr2, ptr %x.addr, align 8
  %call = call double @dlamch_(ptr noundef @.str)
  store double %call, ptr %safmin, align 8
  %call3 = call double @dlamch_(ptr noundef @.str.1)
  store double %call3, ptr %eps, align 8
  %call4 = call double @dlamch_(ptr noundef @.str.2)
  store double %call4, ptr %d__1, align 8
  %3 = load double, ptr %safmin, align 8
  %4 = load double, ptr %eps, align 8
  %div = fdiv double %3, %4
  %call5 = call double @log(double noundef %div) #4
  %call6 = call double @dlamch_(ptr noundef @.str.2)
  %call7 = call double @log(double noundef %call6) #4
  %div8 = fdiv double %call5, %call7
  %div9 = fdiv double %div8, 2.000000e+00
  %conv = fptosi double %div9 to i32
  store i32 %conv, ptr %i__1, align 4
  %call10 = call double @pow_di(ptr noundef %d__1, ptr noundef %i__1)
  store double %call10, ptr %safmn2, align 8
  %5 = load double, ptr %safmn2, align 8
  %div11 = fdiv double 1.000000e+00, %5
  store double %div11, ptr %safmx2, align 8
  store i32 1, ptr %ix, align 4
  store i32 1, ptr %iy, align 4
  store i32 1, ptr %ic, align 4
  %6 = load ptr, ptr %n.addr, align 8
  %7 = load i32, ptr %6, align 4
  store i32 %7, ptr %i__1, align 4
  store i32 1, ptr %i__, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc416, %entry
  %8 = load i32, ptr %i__, align 4
  %9 = load i32, ptr %i__1, align 4
  %cmp = icmp sle i32 %8, %9
  br i1 %cmp, label %for.body, label %for.end418

for.body:                                         ; preds = %for.cond
  %10 = load i32, ptr %ix, align 4
  store i32 %10, ptr %i__2, align 4
  %11 = load ptr, ptr %x.addr, align 8
  %12 = load i32, ptr %i__2, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds %struct.doublecomplex, ptr %11, i64 %idxprom
  %r = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx, i32 0, i32 0
  %13 = load double, ptr %r, align 8
  %r13 = getelementptr inbounds %struct.doublecomplex, ptr %f, i32 0, i32 0
  store double %13, ptr %r13, align 8
  %14 = load ptr, ptr %x.addr, align 8
  %15 = load i32, ptr %i__2, align 4
  %idxprom14 = sext i32 %15 to i64
  %arrayidx15 = getelementptr inbounds %struct.doublecomplex, ptr %14, i64 %idxprom14
  %i = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx15, i32 0, i32 1
  %16 = load double, ptr %i, align 8
  %i16 = getelementptr inbounds %struct.doublecomplex, ptr %f, i32 0, i32 1
  store double %16, ptr %i16, align 8
  %17 = load i32, ptr %iy, align 4
  store i32 %17, ptr %i__2, align 4
  %18 = load ptr, ptr %y.addr, align 8
  %19 = load i32, ptr %i__2, align 4
  %idxprom17 = sext i32 %19 to i64
  %arrayidx18 = getelementptr inbounds %struct.doublecomplex, ptr %18, i64 %idxprom17
  %r19 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx18, i32 0, i32 0
  %20 = load double, ptr %r19, align 8
  %r20 = getelementptr inbounds %struct.doublecomplex, ptr %g, i32 0, i32 0
  store double %20, ptr %r20, align 8
  %21 = load ptr, ptr %y.addr, align 8
  %22 = load i32, ptr %i__2, align 4
  %idxprom21 = sext i32 %22 to i64
  %arrayidx22 = getelementptr inbounds %struct.doublecomplex, ptr %21, i64 %idxprom21
  %i23 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx22, i32 0, i32 1
  %23 = load double, ptr %i23, align 8
  %i24 = getelementptr inbounds %struct.doublecomplex, ptr %g, i32 0, i32 1
  store double %23, ptr %i24, align 8
  %r25 = getelementptr inbounds %struct.doublecomplex, ptr %f, i32 0, i32 0
  %24 = load double, ptr %r25, align 8
  store double %24, ptr %d__1, align 8
  %25 = load double, ptr %d__1, align 8
  %cmp26 = fcmp oge double %25, 0.000000e+00
  br i1 %cmp26, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %26 = load double, ptr %d__1, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %27 = load double, ptr %d__1, align 8
  %fneg = fneg double %27
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %26, %cond.true ], [ %fneg, %cond.false ]
  store double %cond, ptr %d__7, align 8
  %call28 = call double @d_imag(ptr noundef %f)
  store double %call28, ptr %d__2, align 8
  %28 = load double, ptr %d__2, align 8
  %cmp29 = fcmp oge double %28, 0.000000e+00
  br i1 %cmp29, label %cond.true31, label %cond.false32

cond.true31:                                      ; preds = %cond.end
  %29 = load double, ptr %d__2, align 8
  br label %cond.end34

cond.false32:                                     ; preds = %cond.end
  %30 = load double, ptr %d__2, align 8
  %fneg33 = fneg double %30
  br label %cond.end34

cond.end34:                                       ; preds = %cond.false32, %cond.true31
  %cond35 = phi double [ %29, %cond.true31 ], [ %fneg33, %cond.false32 ]
  store double %cond35, ptr %d__8, align 8
  %r36 = getelementptr inbounds %struct.doublecomplex, ptr %g, i32 0, i32 0
  %31 = load double, ptr %r36, align 8
  store double %31, ptr %d__3, align 8
  %32 = load double, ptr %d__3, align 8
  %cmp37 = fcmp oge double %32, 0.000000e+00
  br i1 %cmp37, label %cond.true39, label %cond.false40

cond.true39:                                      ; preds = %cond.end34
  %33 = load double, ptr %d__3, align 8
  br label %cond.end42

cond.false40:                                     ; preds = %cond.end34
  %34 = load double, ptr %d__3, align 8
  %fneg41 = fneg double %34
  br label %cond.end42

cond.end42:                                       ; preds = %cond.false40, %cond.true39
  %cond43 = phi double [ %33, %cond.true39 ], [ %fneg41, %cond.false40 ]
  store double %cond43, ptr %d__9, align 8
  %call44 = call double @d_imag(ptr noundef %g)
  store double %call44, ptr %d__4, align 8
  %35 = load double, ptr %d__4, align 8
  %cmp45 = fcmp oge double %35, 0.000000e+00
  br i1 %cmp45, label %cond.true47, label %cond.false48

cond.true47:                                      ; preds = %cond.end42
  %36 = load double, ptr %d__4, align 8
  br label %cond.end50

cond.false48:                                     ; preds = %cond.end42
  %37 = load double, ptr %d__4, align 8
  %fneg49 = fneg double %37
  br label %cond.end50

cond.end50:                                       ; preds = %cond.false48, %cond.true47
  %cond51 = phi double [ %36, %cond.true47 ], [ %fneg49, %cond.false48 ]
  store double %cond51, ptr %d__10, align 8
  %38 = load double, ptr %d__7, align 8
  %39 = load double, ptr %d__8, align 8
  %cmp52 = fcmp oge double %38, %39
  br i1 %cmp52, label %cond.true54, label %cond.false55

cond.true54:                                      ; preds = %cond.end50
  %40 = load double, ptr %d__7, align 8
  br label %cond.end56

cond.false55:                                     ; preds = %cond.end50
  %41 = load double, ptr %d__8, align 8
  br label %cond.end56

cond.end56:                                       ; preds = %cond.false55, %cond.true54
  %cond57 = phi double [ %40, %cond.true54 ], [ %41, %cond.false55 ]
  store double %cond57, ptr %d__5, align 8
  %42 = load double, ptr %d__9, align 8
  %43 = load double, ptr %d__10, align 8
  %cmp58 = fcmp oge double %42, %43
  br i1 %cmp58, label %cond.true60, label %cond.false61

cond.true60:                                      ; preds = %cond.end56
  %44 = load double, ptr %d__9, align 8
  br label %cond.end62

cond.false61:                                     ; preds = %cond.end56
  %45 = load double, ptr %d__10, align 8
  br label %cond.end62

cond.end62:                                       ; preds = %cond.false61, %cond.true60
  %cond63 = phi double [ %44, %cond.true60 ], [ %45, %cond.false61 ]
  store double %cond63, ptr %d__6, align 8
  %46 = load double, ptr %d__5, align 8
  %47 = load double, ptr %d__6, align 8
  %cmp64 = fcmp oge double %46, %47
  br i1 %cmp64, label %cond.true66, label %cond.false67

cond.true66:                                      ; preds = %cond.end62
  %48 = load double, ptr %d__5, align 8
  br label %cond.end68

cond.false67:                                     ; preds = %cond.end62
  %49 = load double, ptr %d__6, align 8
  br label %cond.end68

cond.end68:                                       ; preds = %cond.false67, %cond.true66
  %cond69 = phi double [ %48, %cond.true66 ], [ %49, %cond.false67 ]
  store double %cond69, ptr %scale, align 8
  %r70 = getelementptr inbounds %struct.doublecomplex, ptr %f, i32 0, i32 0
  %50 = load double, ptr %r70, align 8
  %r71 = getelementptr inbounds %struct.doublecomplex, ptr %fs, i32 0, i32 0
  store double %50, ptr %r71, align 8
  %i72 = getelementptr inbounds %struct.doublecomplex, ptr %f, i32 0, i32 1
  %51 = load double, ptr %i72, align 8
  %i73 = getelementptr inbounds %struct.doublecomplex, ptr %fs, i32 0, i32 1
  store double %51, ptr %i73, align 8
  %r74 = getelementptr inbounds %struct.doublecomplex, ptr %g, i32 0, i32 0
  %52 = load double, ptr %r74, align 8
  %r75 = getelementptr inbounds %struct.doublecomplex, ptr %gs, i32 0, i32 0
  store double %52, ptr %r75, align 8
  %i76 = getelementptr inbounds %struct.doublecomplex, ptr %g, i32 0, i32 1
  %53 = load double, ptr %i76, align 8
  %i77 = getelementptr inbounds %struct.doublecomplex, ptr %gs, i32 0, i32 1
  store double %53, ptr %i77, align 8
  store i32 0, ptr %count, align 4
  %54 = load double, ptr %scale, align 8
  %55 = load double, ptr %safmx2, align 8
  %cmp78 = fcmp oge double %54, %55
  br i1 %cmp78, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end68
  br label %L10

L10:                                              ; preds = %if.then102, %if.then
  %56 = load i32, ptr %count, align 4
  %inc = add nsw i32 %56, 1
  store i32 %inc, ptr %count, align 4
  %57 = load double, ptr %safmn2, align 8
  %r80 = getelementptr inbounds %struct.doublecomplex, ptr %fs, i32 0, i32 0
  %58 = load double, ptr %r80, align 8
  %mul = fmul double %57, %58
  %r81 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double %mul, ptr %r81, align 8
  %59 = load double, ptr %safmn2, align 8
  %i82 = getelementptr inbounds %struct.doublecomplex, ptr %fs, i32 0, i32 1
  %60 = load double, ptr %i82, align 8
  %mul83 = fmul double %59, %60
  %i84 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double %mul83, ptr %i84, align 8
  %r85 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  %61 = load double, ptr %r85, align 8
  %r86 = getelementptr inbounds %struct.doublecomplex, ptr %fs, i32 0, i32 0
  store double %61, ptr %r86, align 8
  %i87 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  %62 = load double, ptr %i87, align 8
  %i88 = getelementptr inbounds %struct.doublecomplex, ptr %fs, i32 0, i32 1
  store double %62, ptr %i88, align 8
  %63 = load double, ptr %safmn2, align 8
  %r89 = getelementptr inbounds %struct.doublecomplex, ptr %gs, i32 0, i32 0
  %64 = load double, ptr %r89, align 8
  %mul90 = fmul double %63, %64
  %r91 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double %mul90, ptr %r91, align 8
  %65 = load double, ptr %safmn2, align 8
  %i92 = getelementptr inbounds %struct.doublecomplex, ptr %gs, i32 0, i32 1
  %66 = load double, ptr %i92, align 8
  %mul93 = fmul double %65, %66
  %i94 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double %mul93, ptr %i94, align 8
  %r95 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  %67 = load double, ptr %r95, align 8
  %r96 = getelementptr inbounds %struct.doublecomplex, ptr %gs, i32 0, i32 0
  store double %67, ptr %r96, align 8
  %i97 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  %68 = load double, ptr %i97, align 8
  %i98 = getelementptr inbounds %struct.doublecomplex, ptr %gs, i32 0, i32 1
  store double %68, ptr %i98, align 8
  %69 = load double, ptr %safmn2, align 8
  %70 = load double, ptr %scale, align 8
  %mul99 = fmul double %70, %69
  store double %mul99, ptr %scale, align 8
  %71 = load double, ptr %scale, align 8
  %72 = load double, ptr %safmx2, align 8
  %cmp100 = fcmp oge double %71, %72
  br i1 %cmp100, label %if.then102, label %if.end

if.then102:                                       ; preds = %L10
  br label %L10

if.end:                                           ; preds = %L10
  br label %if.end146

if.else:                                          ; preds = %cond.end68
  %73 = load double, ptr %scale, align 8
  %74 = load double, ptr %safmn2, align 8
  %cmp103 = fcmp ole double %73, %74
  br i1 %cmp103, label %if.then105, label %if.end145

if.then105:                                       ; preds = %if.else
  %r106 = getelementptr inbounds %struct.doublecomplex, ptr %g, i32 0, i32 0
  %75 = load double, ptr %r106, align 8
  %cmp107 = fcmp oeq double %75, 0.000000e+00
  br i1 %cmp107, label %land.lhs.true, label %if.end119

land.lhs.true:                                    ; preds = %if.then105
  %i109 = getelementptr inbounds %struct.doublecomplex, ptr %g, i32 0, i32 1
  %76 = load double, ptr %i109, align 8
  %cmp110 = fcmp oeq double %76, 0.000000e+00
  br i1 %cmp110, label %if.then112, label %if.end119

if.then112:                                       ; preds = %land.lhs.true
  store double 1.000000e+00, ptr %cs, align 8
  %r113 = getelementptr inbounds %struct.doublecomplex, ptr %sn, i32 0, i32 0
  store double 0.000000e+00, ptr %r113, align 8
  %i114 = getelementptr inbounds %struct.doublecomplex, ptr %sn, i32 0, i32 1
  store double 0.000000e+00, ptr %i114, align 8
  %r115 = getelementptr inbounds %struct.doublecomplex, ptr %f, i32 0, i32 0
  %77 = load double, ptr %r115, align 8
  %r116 = getelementptr inbounds %struct.doublecomplex, ptr %r__, i32 0, i32 0
  store double %77, ptr %r116, align 8
  %i117 = getelementptr inbounds %struct.doublecomplex, ptr %f, i32 0, i32 1
  %78 = load double, ptr %i117, align 8
  %i118 = getelementptr inbounds %struct.doublecomplex, ptr %r__, i32 0, i32 1
  store double %78, ptr %i118, align 8
  br label %L50

if.end119:                                        ; preds = %land.lhs.true, %if.then105
  br label %L20

L20:                                              ; preds = %if.then143, %if.end119
  %79 = load i32, ptr %count, align 4
  %dec = add nsw i32 %79, -1
  store i32 %dec, ptr %count, align 4
  %80 = load double, ptr %safmx2, align 8
  %r120 = getelementptr inbounds %struct.doublecomplex, ptr %fs, i32 0, i32 0
  %81 = load double, ptr %r120, align 8
  %mul121 = fmul double %80, %81
  %r122 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double %mul121, ptr %r122, align 8
  %82 = load double, ptr %safmx2, align 8
  %i123 = getelementptr inbounds %struct.doublecomplex, ptr %fs, i32 0, i32 1
  %83 = load double, ptr %i123, align 8
  %mul124 = fmul double %82, %83
  %i125 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double %mul124, ptr %i125, align 8
  %r126 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  %84 = load double, ptr %r126, align 8
  %r127 = getelementptr inbounds %struct.doublecomplex, ptr %fs, i32 0, i32 0
  store double %84, ptr %r127, align 8
  %i128 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  %85 = load double, ptr %i128, align 8
  %i129 = getelementptr inbounds %struct.doublecomplex, ptr %fs, i32 0, i32 1
  store double %85, ptr %i129, align 8
  %86 = load double, ptr %safmx2, align 8
  %r130 = getelementptr inbounds %struct.doublecomplex, ptr %gs, i32 0, i32 0
  %87 = load double, ptr %r130, align 8
  %mul131 = fmul double %86, %87
  %r132 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double %mul131, ptr %r132, align 8
  %88 = load double, ptr %safmx2, align 8
  %i133 = getelementptr inbounds %struct.doublecomplex, ptr %gs, i32 0, i32 1
  %89 = load double, ptr %i133, align 8
  %mul134 = fmul double %88, %89
  %i135 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double %mul134, ptr %i135, align 8
  %r136 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  %90 = load double, ptr %r136, align 8
  %r137 = getelementptr inbounds %struct.doublecomplex, ptr %gs, i32 0, i32 0
  store double %90, ptr %r137, align 8
  %i138 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  %91 = load double, ptr %i138, align 8
  %i139 = getelementptr inbounds %struct.doublecomplex, ptr %gs, i32 0, i32 1
  store double %91, ptr %i139, align 8
  %92 = load double, ptr %safmx2, align 8
  %93 = load double, ptr %scale, align 8
  %mul140 = fmul double %93, %92
  store double %mul140, ptr %scale, align 8
  %94 = load double, ptr %scale, align 8
  %95 = load double, ptr %safmn2, align 8
  %cmp141 = fcmp ole double %94, %95
  br i1 %cmp141, label %if.then143, label %if.end144

if.then143:                                       ; preds = %L20
  br label %L20

if.end144:                                        ; preds = %L20
  br label %if.end145

if.end145:                                        ; preds = %if.end144, %if.else
  br label %if.end146

if.end146:                                        ; preds = %if.end145, %if.end
  %r147 = getelementptr inbounds %struct.doublecomplex, ptr %fs, i32 0, i32 0
  %96 = load double, ptr %r147, align 8
  store double %96, ptr %d__1, align 8
  %call148 = call double @d_imag(ptr noundef %fs)
  store double %call148, ptr %d__2, align 8
  %97 = load double, ptr %d__1, align 8
  %98 = load double, ptr %d__1, align 8
  %99 = load double, ptr %d__2, align 8
  %100 = load double, ptr %d__2, align 8
  %mul150 = fmul double %99, %100
  %101 = call double @llvm.fmuladd.f64(double %97, double %98, double %mul150)
  store double %101, ptr %f2, align 8
  %r151 = getelementptr inbounds %struct.doublecomplex, ptr %gs, i32 0, i32 0
  %102 = load double, ptr %r151, align 8
  store double %102, ptr %d__1, align 8
  %call152 = call double @d_imag(ptr noundef %gs)
  store double %call152, ptr %d__2, align 8
  %103 = load double, ptr %d__1, align 8
  %104 = load double, ptr %d__1, align 8
  %105 = load double, ptr %d__2, align 8
  %106 = load double, ptr %d__2, align 8
  %mul154 = fmul double %105, %106
  %107 = call double @llvm.fmuladd.f64(double %103, double %104, double %mul154)
  store double %107, ptr %g2, align 8
  %108 = load double, ptr %f2, align 8
  %109 = load double, ptr %g2, align 8
  %cmp155 = fcmp oge double %109, 1.000000e+00
  br i1 %cmp155, label %cond.true157, label %cond.false158

cond.true157:                                     ; preds = %if.end146
  %110 = load double, ptr %g2, align 8
  br label %cond.end159

cond.false158:                                    ; preds = %if.end146
  br label %cond.end159

cond.end159:                                      ; preds = %cond.false158, %cond.true157
  %cond160 = phi double [ %110, %cond.true157 ], [ 1.000000e+00, %cond.false158 ]
  %111 = load double, ptr %safmin, align 8
  %mul161 = fmul double %cond160, %111
  %cmp162 = fcmp ole double %108, %mul161
  br i1 %cmp162, label %if.then164, label %if.else308

if.then164:                                       ; preds = %cond.end159
  %r165 = getelementptr inbounds %struct.doublecomplex, ptr %f, i32 0, i32 0
  %112 = load double, ptr %r165, align 8
  %cmp166 = fcmp oeq double %112, 0.000000e+00
  br i1 %cmp166, label %land.lhs.true168, label %if.end192

land.lhs.true168:                                 ; preds = %if.then164
  %i169 = getelementptr inbounds %struct.doublecomplex, ptr %f, i32 0, i32 1
  %113 = load double, ptr %i169, align 8
  %cmp170 = fcmp oeq double %113, 0.000000e+00
  br i1 %cmp170, label %if.then172, label %if.end192

if.then172:                                       ; preds = %land.lhs.true168
  store double 0.000000e+00, ptr %cs, align 8
  %r173 = getelementptr inbounds %struct.doublecomplex, ptr %g, i32 0, i32 0
  %114 = load double, ptr %r173, align 8
  store double %114, ptr %d__2, align 8
  %call174 = call double @d_imag(ptr noundef %g)
  store double %call174, ptr %d__3, align 8
  %call175 = call double @dlapy2_(ptr noundef %d__2, ptr noundef %d__3)
  store double %call175, ptr %d__1, align 8
  %115 = load double, ptr %d__1, align 8
  %r176 = getelementptr inbounds %struct.doublecomplex, ptr %r__, i32 0, i32 0
  store double %115, ptr %r176, align 8
  %i177 = getelementptr inbounds %struct.doublecomplex, ptr %r__, i32 0, i32 1
  store double 0.000000e+00, ptr %i177, align 8
  %r178 = getelementptr inbounds %struct.doublecomplex, ptr %gs, i32 0, i32 0
  %116 = load double, ptr %r178, align 8
  store double %116, ptr %d__1, align 8
  %call179 = call double @d_imag(ptr noundef %gs)
  store double %call179, ptr %d__2, align 8
  %call180 = call double @dlapy2_(ptr noundef %d__1, ptr noundef %d__2)
  store double %call180, ptr %d__, align 8
  %r181 = getelementptr inbounds %struct.doublecomplex, ptr %gs, i32 0, i32 0
  %117 = load double, ptr %r181, align 8
  %118 = load double, ptr %d__, align 8
  %div182 = fdiv double %117, %118
  store double %div182, ptr %d__1, align 8
  %call183 = call double @d_imag(ptr noundef %gs)
  %fneg184 = fneg double %call183
  %119 = load double, ptr %d__, align 8
  %div185 = fdiv double %fneg184, %119
  store double %div185, ptr %d__2, align 8
  %120 = load double, ptr %d__1, align 8
  %r186 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double %120, ptr %r186, align 8
  %121 = load double, ptr %d__2, align 8
  %i187 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double %121, ptr %i187, align 8
  %r188 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  %122 = load double, ptr %r188, align 8
  %r189 = getelementptr inbounds %struct.doublecomplex, ptr %sn, i32 0, i32 0
  store double %122, ptr %r189, align 8
  %i190 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  %123 = load double, ptr %i190, align 8
  %i191 = getelementptr inbounds %struct.doublecomplex, ptr %sn, i32 0, i32 1
  store double %123, ptr %i191, align 8
  br label %L50

if.end192:                                        ; preds = %land.lhs.true168, %if.then164
  %r193 = getelementptr inbounds %struct.doublecomplex, ptr %fs, i32 0, i32 0
  %124 = load double, ptr %r193, align 8
  store double %124, ptr %d__1, align 8
  %call194 = call double @d_imag(ptr noundef %fs)
  store double %call194, ptr %d__2, align 8
  %call195 = call double @dlapy2_(ptr noundef %d__1, ptr noundef %d__2)
  store double %call195, ptr %f2s, align 8
  %125 = load double, ptr %g2, align 8
  %call196 = call double @sqrt(double noundef %125) #4
  store double %call196, ptr %g2s, align 8
  %126 = load double, ptr %f2s, align 8
  %127 = load double, ptr %g2s, align 8
  %div197 = fdiv double %126, %127
  store double %div197, ptr %cs, align 8
  %r198 = getelementptr inbounds %struct.doublecomplex, ptr %f, i32 0, i32 0
  %128 = load double, ptr %r198, align 8
  store double %128, ptr %d__1, align 8
  %129 = load double, ptr %d__1, align 8
  %cmp199 = fcmp oge double %129, 0.000000e+00
  br i1 %cmp199, label %cond.true201, label %cond.false202

cond.true201:                                     ; preds = %if.end192
  %130 = load double, ptr %d__1, align 8
  br label %cond.end204

cond.false202:                                    ; preds = %if.end192
  %131 = load double, ptr %d__1, align 8
  %fneg203 = fneg double %131
  br label %cond.end204

cond.end204:                                      ; preds = %cond.false202, %cond.true201
  %cond205 = phi double [ %130, %cond.true201 ], [ %fneg203, %cond.false202 ]
  store double %cond205, ptr %d__3, align 8
  %call206 = call double @d_imag(ptr noundef %f)
  store double %call206, ptr %d__2, align 8
  %132 = load double, ptr %d__2, align 8
  %cmp207 = fcmp oge double %132, 0.000000e+00
  br i1 %cmp207, label %cond.true209, label %cond.false210

cond.true209:                                     ; preds = %cond.end204
  %133 = load double, ptr %d__2, align 8
  br label %cond.end212

cond.false210:                                    ; preds = %cond.end204
  %134 = load double, ptr %d__2, align 8
  %fneg211 = fneg double %134
  br label %cond.end212

cond.end212:                                      ; preds = %cond.false210, %cond.true209
  %cond213 = phi double [ %133, %cond.true209 ], [ %fneg211, %cond.false210 ]
  store double %cond213, ptr %d__4, align 8
  %135 = load double, ptr %d__3, align 8
  %136 = load double, ptr %d__4, align 8
  %cmp214 = fcmp oge double %135, %136
  br i1 %cmp214, label %cond.true216, label %cond.false217

cond.true216:                                     ; preds = %cond.end212
  %137 = load double, ptr %d__3, align 8
  br label %cond.end218

cond.false217:                                    ; preds = %cond.end212
  %138 = load double, ptr %d__4, align 8
  br label %cond.end218

cond.end218:                                      ; preds = %cond.false217, %cond.true216
  %cond219 = phi double [ %137, %cond.true216 ], [ %138, %cond.false217 ]
  %cmp220 = fcmp ogt double %cond219, 1.000000e+00
  br i1 %cmp220, label %if.then222, label %if.else236

if.then222:                                       ; preds = %cond.end218
  %r223 = getelementptr inbounds %struct.doublecomplex, ptr %f, i32 0, i32 0
  %139 = load double, ptr %r223, align 8
  store double %139, ptr %d__1, align 8
  %call224 = call double @d_imag(ptr noundef %f)
  store double %call224, ptr %d__2, align 8
  %call225 = call double @dlapy2_(ptr noundef %d__1, ptr noundef %d__2)
  store double %call225, ptr %d__, align 8
  %r226 = getelementptr inbounds %struct.doublecomplex, ptr %f, i32 0, i32 0
  %140 = load double, ptr %r226, align 8
  %141 = load double, ptr %d__, align 8
  %div227 = fdiv double %140, %141
  store double %div227, ptr %d__1, align 8
  %call228 = call double @d_imag(ptr noundef %f)
  %142 = load double, ptr %d__, align 8
  %div229 = fdiv double %call228, %142
  store double %div229, ptr %d__2, align 8
  %143 = load double, ptr %d__1, align 8
  %r230 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double %143, ptr %r230, align 8
  %144 = load double, ptr %d__2, align 8
  %i231 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double %144, ptr %i231, align 8
  %r232 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  %145 = load double, ptr %r232, align 8
  %r233 = getelementptr inbounds %struct.doublecomplex, ptr %ff, i32 0, i32 0
  store double %145, ptr %r233, align 8
  %i234 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  %146 = load double, ptr %i234, align 8
  %i235 = getelementptr inbounds %struct.doublecomplex, ptr %ff, i32 0, i32 1
  store double %146, ptr %i235, align 8
  br label %if.end250

if.else236:                                       ; preds = %cond.end218
  %147 = load double, ptr %safmx2, align 8
  %r237 = getelementptr inbounds %struct.doublecomplex, ptr %f, i32 0, i32 0
  %148 = load double, ptr %r237, align 8
  %mul238 = fmul double %147, %148
  store double %mul238, ptr %dr, align 8
  %149 = load double, ptr %safmx2, align 8
  %call239 = call double @d_imag(ptr noundef %f)
  %mul240 = fmul double %149, %call239
  store double %mul240, ptr %di, align 8
  %call241 = call double @dlapy2_(ptr noundef %dr, ptr noundef %di)
  store double %call241, ptr %d__, align 8
  %150 = load double, ptr %dr, align 8
  %151 = load double, ptr %d__, align 8
  %div242 = fdiv double %150, %151
  store double %div242, ptr %d__1, align 8
  %152 = load double, ptr %di, align 8
  %153 = load double, ptr %d__, align 8
  %div243 = fdiv double %152, %153
  store double %div243, ptr %d__2, align 8
  %154 = load double, ptr %d__1, align 8
  %r244 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double %154, ptr %r244, align 8
  %155 = load double, ptr %d__2, align 8
  %i245 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double %155, ptr %i245, align 8
  %r246 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  %156 = load double, ptr %r246, align 8
  %r247 = getelementptr inbounds %struct.doublecomplex, ptr %ff, i32 0, i32 0
  store double %156, ptr %r247, align 8
  %i248 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  %157 = load double, ptr %i248, align 8
  %i249 = getelementptr inbounds %struct.doublecomplex, ptr %ff, i32 0, i32 1
  store double %157, ptr %i249, align 8
  br label %if.end250

if.end250:                                        ; preds = %if.else236, %if.then222
  %r251 = getelementptr inbounds %struct.doublecomplex, ptr %gs, i32 0, i32 0
  %158 = load double, ptr %r251, align 8
  %159 = load double, ptr %g2s, align 8
  %div252 = fdiv double %158, %159
  store double %div252, ptr %d__1, align 8
  %call253 = call double @d_imag(ptr noundef %gs)
  %fneg254 = fneg double %call253
  %160 = load double, ptr %g2s, align 8
  %div255 = fdiv double %fneg254, %160
  store double %div255, ptr %d__2, align 8
  %161 = load double, ptr %d__1, align 8
  %r256 = getelementptr inbounds %struct.doublecomplex, ptr %z__2, i32 0, i32 0
  store double %161, ptr %r256, align 8
  %162 = load double, ptr %d__2, align 8
  %i257 = getelementptr inbounds %struct.doublecomplex, ptr %z__2, i32 0, i32 1
  store double %162, ptr %i257, align 8
  %r258 = getelementptr inbounds %struct.doublecomplex, ptr %ff, i32 0, i32 0
  %163 = load double, ptr %r258, align 8
  %r259 = getelementptr inbounds %struct.doublecomplex, ptr %z__2, i32 0, i32 0
  %164 = load double, ptr %r259, align 8
  %i261 = getelementptr inbounds %struct.doublecomplex, ptr %ff, i32 0, i32 1
  %165 = load double, ptr %i261, align 8
  %i262 = getelementptr inbounds %struct.doublecomplex, ptr %z__2, i32 0, i32 1
  %166 = load double, ptr %i262, align 8
  %mul263 = fmul double %165, %166
  %neg = fneg double %mul263
  %167 = call double @llvm.fmuladd.f64(double %163, double %164, double %neg)
  %r264 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double %167, ptr %r264, align 8
  %r265 = getelementptr inbounds %struct.doublecomplex, ptr %ff, i32 0, i32 0
  %168 = load double, ptr %r265, align 8
  %i266 = getelementptr inbounds %struct.doublecomplex, ptr %z__2, i32 0, i32 1
  %169 = load double, ptr %i266, align 8
  %i268 = getelementptr inbounds %struct.doublecomplex, ptr %ff, i32 0, i32 1
  %170 = load double, ptr %i268, align 8
  %r269 = getelementptr inbounds %struct.doublecomplex, ptr %z__2, i32 0, i32 0
  %171 = load double, ptr %r269, align 8
  %mul270 = fmul double %170, %171
  %172 = call double @llvm.fmuladd.f64(double %168, double %169, double %mul270)
  %i271 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double %172, ptr %i271, align 8
  %r272 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  %173 = load double, ptr %r272, align 8
  %r273 = getelementptr inbounds %struct.doublecomplex, ptr %sn, i32 0, i32 0
  store double %173, ptr %r273, align 8
  %i274 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  %174 = load double, ptr %i274, align 8
  %i275 = getelementptr inbounds %struct.doublecomplex, ptr %sn, i32 0, i32 1
  store double %174, ptr %i275, align 8
  %175 = load double, ptr %cs, align 8
  %r276 = getelementptr inbounds %struct.doublecomplex, ptr %f, i32 0, i32 0
  %176 = load double, ptr %r276, align 8
  %mul277 = fmul double %175, %176
  %r278 = getelementptr inbounds %struct.doublecomplex, ptr %z__2, i32 0, i32 0
  store double %mul277, ptr %r278, align 8
  %177 = load double, ptr %cs, align 8
  %i279 = getelementptr inbounds %struct.doublecomplex, ptr %f, i32 0, i32 1
  %178 = load double, ptr %i279, align 8
  %mul280 = fmul double %177, %178
  %i281 = getelementptr inbounds %struct.doublecomplex, ptr %z__2, i32 0, i32 1
  store double %mul280, ptr %i281, align 8
  %r282 = getelementptr inbounds %struct.doublecomplex, ptr %sn, i32 0, i32 0
  %179 = load double, ptr %r282, align 8
  %r283 = getelementptr inbounds %struct.doublecomplex, ptr %g, i32 0, i32 0
  %180 = load double, ptr %r283, align 8
  %i285 = getelementptr inbounds %struct.doublecomplex, ptr %sn, i32 0, i32 1
  %181 = load double, ptr %i285, align 8
  %i286 = getelementptr inbounds %struct.doublecomplex, ptr %g, i32 0, i32 1
  %182 = load double, ptr %i286, align 8
  %mul287 = fmul double %181, %182
  %neg288 = fneg double %mul287
  %183 = call double @llvm.fmuladd.f64(double %179, double %180, double %neg288)
  %r289 = getelementptr inbounds %struct.doublecomplex, ptr %z__3, i32 0, i32 0
  store double %183, ptr %r289, align 8
  %r290 = getelementptr inbounds %struct.doublecomplex, ptr %sn, i32 0, i32 0
  %184 = load double, ptr %r290, align 8
  %i291 = getelementptr inbounds %struct.doublecomplex, ptr %g, i32 0, i32 1
  %185 = load double, ptr %i291, align 8
  %i293 = getelementptr inbounds %struct.doublecomplex, ptr %sn, i32 0, i32 1
  %186 = load double, ptr %i293, align 8
  %r294 = getelementptr inbounds %struct.doublecomplex, ptr %g, i32 0, i32 0
  %187 = load double, ptr %r294, align 8
  %mul295 = fmul double %186, %187
  %188 = call double @llvm.fmuladd.f64(double %184, double %185, double %mul295)
  %i296 = getelementptr inbounds %struct.doublecomplex, ptr %z__3, i32 0, i32 1
  store double %188, ptr %i296, align 8
  %r297 = getelementptr inbounds %struct.doublecomplex, ptr %z__2, i32 0, i32 0
  %189 = load double, ptr %r297, align 8
  %r298 = getelementptr inbounds %struct.doublecomplex, ptr %z__3, i32 0, i32 0
  %190 = load double, ptr %r298, align 8
  %add = fadd double %189, %190
  %r299 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double %add, ptr %r299, align 8
  %i300 = getelementptr inbounds %struct.doublecomplex, ptr %z__2, i32 0, i32 1
  %191 = load double, ptr %i300, align 8
  %i301 = getelementptr inbounds %struct.doublecomplex, ptr %z__3, i32 0, i32 1
  %192 = load double, ptr %i301, align 8
  %add302 = fadd double %191, %192
  %i303 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double %add302, ptr %i303, align 8
  %r304 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  %193 = load double, ptr %r304, align 8
  %r305 = getelementptr inbounds %struct.doublecomplex, ptr %r__, i32 0, i32 0
  store double %193, ptr %r305, align 8
  %i306 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  %194 = load double, ptr %i306, align 8
  %i307 = getelementptr inbounds %struct.doublecomplex, ptr %r__, i32 0, i32 1
  store double %194, ptr %i307, align 8
  br label %if.end394

if.else308:                                       ; preds = %cond.end159
  %195 = load double, ptr %g2, align 8
  %196 = load double, ptr %f2, align 8
  %div309 = fdiv double %195, %196
  %add310 = fadd double %div309, 1.000000e+00
  %call311 = call double @sqrt(double noundef %add310) #4
  store double %call311, ptr %f2s, align 8
  %197 = load double, ptr %f2s, align 8
  %r312 = getelementptr inbounds %struct.doublecomplex, ptr %fs, i32 0, i32 0
  %198 = load double, ptr %r312, align 8
  %mul313 = fmul double %197, %198
  store double %mul313, ptr %d__1, align 8
  %199 = load double, ptr %f2s, align 8
  %call314 = call double @d_imag(ptr noundef %fs)
  %mul315 = fmul double %199, %call314
  store double %mul315, ptr %d__2, align 8
  %200 = load double, ptr %d__1, align 8
  %r316 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double %200, ptr %r316, align 8
  %201 = load double, ptr %d__2, align 8
  %i317 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double %201, ptr %i317, align 8
  %r318 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  %202 = load double, ptr %r318, align 8
  %r319 = getelementptr inbounds %struct.doublecomplex, ptr %r__, i32 0, i32 0
  store double %202, ptr %r319, align 8
  %i320 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  %203 = load double, ptr %i320, align 8
  %i321 = getelementptr inbounds %struct.doublecomplex, ptr %r__, i32 0, i32 1
  store double %203, ptr %i321, align 8
  %204 = load double, ptr %f2s, align 8
  %div322 = fdiv double 1.000000e+00, %204
  store double %div322, ptr %cs, align 8
  %205 = load double, ptr %f2, align 8
  %206 = load double, ptr %g2, align 8
  %add323 = fadd double %205, %206
  store double %add323, ptr %d__, align 8
  %r324 = getelementptr inbounds %struct.doublecomplex, ptr %r__, i32 0, i32 0
  %207 = load double, ptr %r324, align 8
  %208 = load double, ptr %d__, align 8
  %div325 = fdiv double %207, %208
  store double %div325, ptr %d__1, align 8
  %call326 = call double @d_imag(ptr noundef %r__)
  %209 = load double, ptr %d__, align 8
  %div327 = fdiv double %call326, %209
  store double %div327, ptr %d__2, align 8
  %210 = load double, ptr %d__1, align 8
  %r328 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double %210, ptr %r328, align 8
  %211 = load double, ptr %d__2, align 8
  %i329 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double %211, ptr %i329, align 8
  %r330 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  %212 = load double, ptr %r330, align 8
  %r331 = getelementptr inbounds %struct.doublecomplex, ptr %sn, i32 0, i32 0
  store double %212, ptr %r331, align 8
  %i332 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  %213 = load double, ptr %i332, align 8
  %i333 = getelementptr inbounds %struct.doublecomplex, ptr %sn, i32 0, i32 1
  store double %213, ptr %i333, align 8
  call void @d_cnjg(ptr noundef %z__2, ptr noundef %gs)
  %r334 = getelementptr inbounds %struct.doublecomplex, ptr %sn, i32 0, i32 0
  %214 = load double, ptr %r334, align 8
  %r335 = getelementptr inbounds %struct.doublecomplex, ptr %z__2, i32 0, i32 0
  %215 = load double, ptr %r335, align 8
  %i337 = getelementptr inbounds %struct.doublecomplex, ptr %sn, i32 0, i32 1
  %216 = load double, ptr %i337, align 8
  %i338 = getelementptr inbounds %struct.doublecomplex, ptr %z__2, i32 0, i32 1
  %217 = load double, ptr %i338, align 8
  %mul339 = fmul double %216, %217
  %neg340 = fneg double %mul339
  %218 = call double @llvm.fmuladd.f64(double %214, double %215, double %neg340)
  %r341 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double %218, ptr %r341, align 8
  %r342 = getelementptr inbounds %struct.doublecomplex, ptr %sn, i32 0, i32 0
  %219 = load double, ptr %r342, align 8
  %i343 = getelementptr inbounds %struct.doublecomplex, ptr %z__2, i32 0, i32 1
  %220 = load double, ptr %i343, align 8
  %i345 = getelementptr inbounds %struct.doublecomplex, ptr %sn, i32 0, i32 1
  %221 = load double, ptr %i345, align 8
  %r346 = getelementptr inbounds %struct.doublecomplex, ptr %z__2, i32 0, i32 0
  %222 = load double, ptr %r346, align 8
  %mul347 = fmul double %221, %222
  %223 = call double @llvm.fmuladd.f64(double %219, double %220, double %mul347)
  %i348 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double %223, ptr %i348, align 8
  %r349 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  %224 = load double, ptr %r349, align 8
  %r350 = getelementptr inbounds %struct.doublecomplex, ptr %sn, i32 0, i32 0
  store double %224, ptr %r350, align 8
  %i351 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  %225 = load double, ptr %i351, align 8
  %i352 = getelementptr inbounds %struct.doublecomplex, ptr %sn, i32 0, i32 1
  store double %225, ptr %i352, align 8
  %226 = load i32, ptr %count, align 4
  %cmp353 = icmp ne i32 %226, 0
  br i1 %cmp353, label %if.then355, label %if.end393

if.then355:                                       ; preds = %if.else308
  %227 = load i32, ptr %count, align 4
  %cmp356 = icmp sgt i32 %227, 0
  br i1 %cmp356, label %if.then358, label %if.else374

if.then358:                                       ; preds = %if.then355
  %228 = load i32, ptr %count, align 4
  store i32 %228, ptr %i__2, align 4
  store i32 1, ptr %j, align 4
  br label %for.cond359

for.cond359:                                      ; preds = %for.inc, %if.then358
  %229 = load i32, ptr %j, align 4
  %230 = load i32, ptr %i__2, align 4
  %cmp360 = icmp sle i32 %229, %230
  br i1 %cmp360, label %for.body362, label %for.end

for.body362:                                      ; preds = %for.cond359
  %231 = load double, ptr %safmx2, align 8
  %r363 = getelementptr inbounds %struct.doublecomplex, ptr %r__, i32 0, i32 0
  %232 = load double, ptr %r363, align 8
  %mul364 = fmul double %231, %232
  %r365 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double %mul364, ptr %r365, align 8
  %233 = load double, ptr %safmx2, align 8
  %i366 = getelementptr inbounds %struct.doublecomplex, ptr %r__, i32 0, i32 1
  %234 = load double, ptr %i366, align 8
  %mul367 = fmul double %233, %234
  %i368 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double %mul367, ptr %i368, align 8
  %r369 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  %235 = load double, ptr %r369, align 8
  %r370 = getelementptr inbounds %struct.doublecomplex, ptr %r__, i32 0, i32 0
  store double %235, ptr %r370, align 8
  %i371 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  %236 = load double, ptr %i371, align 8
  %i372 = getelementptr inbounds %struct.doublecomplex, ptr %r__, i32 0, i32 1
  store double %236, ptr %i372, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body362
  %237 = load i32, ptr %j, align 4
  %inc373 = add nsw i32 %237, 1
  store i32 %inc373, ptr %j, align 4
  br label %for.cond359, !llvm.loop !5

for.end:                                          ; preds = %for.cond359
  br label %if.end392

if.else374:                                       ; preds = %if.then355
  %238 = load i32, ptr %count, align 4
  %sub = sub nsw i32 0, %238
  store i32 %sub, ptr %i__2, align 4
  store i32 1, ptr %j, align 4
  br label %for.cond375

for.cond375:                                      ; preds = %for.inc389, %if.else374
  %239 = load i32, ptr %j, align 4
  %240 = load i32, ptr %i__2, align 4
  %cmp376 = icmp sle i32 %239, %240
  br i1 %cmp376, label %for.body378, label %for.end391

for.body378:                                      ; preds = %for.cond375
  %241 = load double, ptr %safmn2, align 8
  %r379 = getelementptr inbounds %struct.doublecomplex, ptr %r__, i32 0, i32 0
  %242 = load double, ptr %r379, align 8
  %mul380 = fmul double %241, %242
  %r381 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double %mul380, ptr %r381, align 8
  %243 = load double, ptr %safmn2, align 8
  %i382 = getelementptr inbounds %struct.doublecomplex, ptr %r__, i32 0, i32 1
  %244 = load double, ptr %i382, align 8
  %mul383 = fmul double %243, %244
  %i384 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double %mul383, ptr %i384, align 8
  %r385 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  %245 = load double, ptr %r385, align 8
  %r386 = getelementptr inbounds %struct.doublecomplex, ptr %r__, i32 0, i32 0
  store double %245, ptr %r386, align 8
  %i387 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  %246 = load double, ptr %i387, align 8
  %i388 = getelementptr inbounds %struct.doublecomplex, ptr %r__, i32 0, i32 1
  store double %246, ptr %i388, align 8
  br label %for.inc389

for.inc389:                                       ; preds = %for.body378
  %247 = load i32, ptr %j, align 4
  %inc390 = add nsw i32 %247, 1
  store i32 %inc390, ptr %j, align 4
  br label %for.cond375, !llvm.loop !7

for.end391:                                       ; preds = %for.cond375
  br label %if.end392

if.end392:                                        ; preds = %for.end391, %for.end
  br label %if.end393

if.end393:                                        ; preds = %if.end392, %if.else308
  br label %if.end394

if.end394:                                        ; preds = %if.end393, %if.end250
  br label %L50

L50:                                              ; preds = %if.end394, %if.then172, %if.then112
  %248 = load double, ptr %cs, align 8
  %249 = load ptr, ptr %c__.addr, align 8
  %250 = load i32, ptr %ic, align 4
  %idxprom395 = sext i32 %250 to i64
  %arrayidx396 = getelementptr inbounds double, ptr %249, i64 %idxprom395
  store double %248, ptr %arrayidx396, align 8
  %251 = load i32, ptr %iy, align 4
  store i32 %251, ptr %i__2, align 4
  %r397 = getelementptr inbounds %struct.doublecomplex, ptr %sn, i32 0, i32 0
  %252 = load double, ptr %r397, align 8
  %253 = load ptr, ptr %y.addr, align 8
  %254 = load i32, ptr %i__2, align 4
  %idxprom398 = sext i32 %254 to i64
  %arrayidx399 = getelementptr inbounds %struct.doublecomplex, ptr %253, i64 %idxprom398
  %r400 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx399, i32 0, i32 0
  store double %252, ptr %r400, align 8
  %i401 = getelementptr inbounds %struct.doublecomplex, ptr %sn, i32 0, i32 1
  %255 = load double, ptr %i401, align 8
  %256 = load ptr, ptr %y.addr, align 8
  %257 = load i32, ptr %i__2, align 4
  %idxprom402 = sext i32 %257 to i64
  %arrayidx403 = getelementptr inbounds %struct.doublecomplex, ptr %256, i64 %idxprom402
  %i404 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx403, i32 0, i32 1
  store double %255, ptr %i404, align 8
  %258 = load i32, ptr %ix, align 4
  store i32 %258, ptr %i__2, align 4
  %r405 = getelementptr inbounds %struct.doublecomplex, ptr %r__, i32 0, i32 0
  %259 = load double, ptr %r405, align 8
  %260 = load ptr, ptr %x.addr, align 8
  %261 = load i32, ptr %i__2, align 4
  %idxprom406 = sext i32 %261 to i64
  %arrayidx407 = getelementptr inbounds %struct.doublecomplex, ptr %260, i64 %idxprom406
  %r408 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx407, i32 0, i32 0
  store double %259, ptr %r408, align 8
  %i409 = getelementptr inbounds %struct.doublecomplex, ptr %r__, i32 0, i32 1
  %262 = load double, ptr %i409, align 8
  %263 = load ptr, ptr %x.addr, align 8
  %264 = load i32, ptr %i__2, align 4
  %idxprom410 = sext i32 %264 to i64
  %arrayidx411 = getelementptr inbounds %struct.doublecomplex, ptr %263, i64 %idxprom410
  %i412 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx411, i32 0, i32 1
  store double %262, ptr %i412, align 8
  %265 = load ptr, ptr %incc.addr, align 8
  %266 = load i32, ptr %265, align 4
  %267 = load i32, ptr %ic, align 4
  %add413 = add nsw i32 %267, %266
  store i32 %add413, ptr %ic, align 4
  %268 = load ptr, ptr %incy.addr, align 8
  %269 = load i32, ptr %268, align 4
  %270 = load i32, ptr %iy, align 4
  %add414 = add nsw i32 %270, %269
  store i32 %add414, ptr %iy, align 4
  %271 = load ptr, ptr %incx.addr, align 8
  %272 = load i32, ptr %271, align 4
  %273 = load i32, ptr %ix, align 4
  %add415 = add nsw i32 %273, %272
  store i32 %add415, ptr %ix, align 4
  br label %for.inc416

for.inc416:                                       ; preds = %L50
  %274 = load i32, ptr %i__, align 4
  %inc417 = add nsw i32 %274, 1
  store i32 %inc417, ptr %i__, align 4
  br label %for.cond, !llvm.loop !8

for.end418:                                       ; preds = %for.cond
  ret i32 0
}

declare double @dlamch_(ptr noundef) #1

; Function Attrs: nounwind
declare double @log(double noundef) #2

declare double @pow_di(ptr noundef, ptr noundef) #1

declare double @d_imag(ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

declare double @dlapy2_(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
declare double @sqrt(double noundef) #2

declare void @d_cnjg(ptr noundef, ptr noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

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

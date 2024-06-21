; ModuleID = 'samples/185.bc'
source_filename = "/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/map/lapack2flamec/f2c/c/claqr3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.complex = type { float, float }

@c__1 = internal global i32 1, align 4
@c_n1 = internal global i32 -1, align 4
@.str = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@c_true = internal global i32 1, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"SAFE MINIMUM\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"PRECISION\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@c_b1 = internal global %struct.complex zeroinitializer, align 4
@c_b2 = internal global %struct.complex { float 1.000000e+00, float 0.000000e+00 }, align 4
@c__12 = internal global i32 12, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"CLAQR3\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"SV\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"V\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"C\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @claqr3_(ptr noundef %wantt, ptr noundef %wantz, ptr noundef %n, ptr noundef %ktop, ptr noundef %kbot, ptr noundef %nw, ptr noundef %h__, ptr noundef %ldh, ptr noundef %iloz, ptr noundef %ihiz, ptr noundef %z__, ptr noundef %ldz, ptr noundef %ns, ptr noundef %nd, ptr noundef %sh, ptr noundef %v, ptr noundef %ldv, ptr noundef %nh, ptr noundef %t, ptr noundef %ldt, ptr noundef %nv, ptr noundef %wv, ptr noundef %ldwv, ptr noundef %work, ptr noundef %lwork) #0 {
entry:
  %retval = alloca i32, align 4
  %wantt.addr = alloca ptr, align 8
  %wantz.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %ktop.addr = alloca ptr, align 8
  %kbot.addr = alloca ptr, align 8
  %nw.addr = alloca ptr, align 8
  %h__.addr = alloca ptr, align 8
  %ldh.addr = alloca ptr, align 8
  %iloz.addr = alloca ptr, align 8
  %ihiz.addr = alloca ptr, align 8
  %z__.addr = alloca ptr, align 8
  %ldz.addr = alloca ptr, align 8
  %ns.addr = alloca ptr, align 8
  %nd.addr = alloca ptr, align 8
  %sh.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %ldv.addr = alloca ptr, align 8
  %nh.addr = alloca ptr, align 8
  %t.addr = alloca ptr, align 8
  %ldt.addr = alloca ptr, align 8
  %nv.addr = alloca ptr, align 8
  %wv.addr = alloca ptr, align 8
  %ldwv.addr = alloca ptr, align 8
  %work.addr = alloca ptr, align 8
  %lwork.addr = alloca ptr, align 8
  %h_dim1 = alloca i32, align 4
  %h_offset = alloca i32, align 4
  %t_dim1 = alloca i32, align 4
  %t_offset = alloca i32, align 4
  %v_dim1 = alloca i32, align 4
  %v_offset = alloca i32, align 4
  %wv_dim1 = alloca i32, align 4
  %wv_offset = alloca i32, align 4
  %z_dim1 = alloca i32, align 4
  %z_offset = alloca i32, align 4
  %i__1 = alloca i32, align 4
  %i__2 = alloca i32, align 4
  %i__3 = alloca i32, align 4
  %i__4 = alloca i32, align 4
  %r__1 = alloca float, align 4
  %r__2 = alloca float, align 4
  %r__3 = alloca float, align 4
  %r__4 = alloca float, align 4
  %r__5 = alloca float, align 4
  %r__6 = alloca float, align 4
  %q__1 = alloca %struct.complex, align 4
  %q__2 = alloca %struct.complex, align 4
  %i__ = alloca i32, align 4
  %j = alloca i32, align 4
  %s = alloca %struct.complex, align 4
  %jw = alloca i32, align 4
  %foo = alloca float, align 4
  %kln = alloca i32, align 4
  %tau = alloca %struct.complex, align 4
  %knt = alloca i32, align 4
  %ulp = alloca float, align 4
  %lwk1 = alloca i32, align 4
  %lwk2 = alloca i32, align 4
  %lwk3 = alloca i32, align 4
  %beta = alloca %struct.complex, align 4
  %kcol = alloca i32, align 4
  %info = alloca i32, align 4
  %nmin = alloca i32, align 4
  %ifst = alloca i32, align 4
  %ilst = alloca i32, align 4
  %ltop = alloca i32, align 4
  %krow = alloca i32, align 4
  %infqr = alloca i32, align 4
  %kwtop = alloca i32, align 4
  %safmin = alloca float, align 4
  %safmax = alloca float, align 4
  %smlnum = alloca float, align 4
  %lwkopt = alloca i32, align 4
  store ptr %wantt, ptr %wantt.addr, align 8
  store ptr %wantz, ptr %wantz.addr, align 8
  store ptr %n, ptr %n.addr, align 8
  store ptr %ktop, ptr %ktop.addr, align 8
  store ptr %kbot, ptr %kbot.addr, align 8
  store ptr %nw, ptr %nw.addr, align 8
  store ptr %h__, ptr %h__.addr, align 8
  store ptr %ldh, ptr %ldh.addr, align 8
  store ptr %iloz, ptr %iloz.addr, align 8
  store ptr %ihiz, ptr %ihiz.addr, align 8
  store ptr %z__, ptr %z__.addr, align 8
  store ptr %ldz, ptr %ldz.addr, align 8
  store ptr %ns, ptr %ns.addr, align 8
  store ptr %nd, ptr %nd.addr, align 8
  store ptr %sh, ptr %sh.addr, align 8
  store ptr %v, ptr %v.addr, align 8
  store ptr %ldv, ptr %ldv.addr, align 8
  store ptr %nh, ptr %nh.addr, align 8
  store ptr %t, ptr %t.addr, align 8
  store ptr %ldt, ptr %ldt.addr, align 8
  store ptr %nv, ptr %nv.addr, align 8
  store ptr %wv, ptr %wv.addr, align 8
  store ptr %ldwv, ptr %ldwv.addr, align 8
  store ptr %work, ptr %work.addr, align 8
  store ptr %lwork, ptr %lwork.addr, align 8
  %0 = load ptr, ptr %ldh.addr, align 8
  %1 = load i32, ptr %0, align 4
  store i32 %1, ptr %h_dim1, align 4
  %2 = load i32, ptr %h_dim1, align 4
  %add = add nsw i32 1, %2
  store i32 %add, ptr %h_offset, align 4
  %3 = load i32, ptr %h_offset, align 4
  %4 = load ptr, ptr %h__.addr, align 8
  %idx.ext = sext i32 %3 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds %struct.complex, ptr %4, i64 %idx.neg
  store ptr %add.ptr, ptr %h__.addr, align 8
  %5 = load ptr, ptr %ldz.addr, align 8
  %6 = load i32, ptr %5, align 4
  store i32 %6, ptr %z_dim1, align 4
  %7 = load i32, ptr %z_dim1, align 4
  %add1 = add nsw i32 1, %7
  store i32 %add1, ptr %z_offset, align 4
  %8 = load i32, ptr %z_offset, align 4
  %9 = load ptr, ptr %z__.addr, align 8
  %idx.ext2 = sext i32 %8 to i64
  %idx.neg3 = sub i64 0, %idx.ext2
  %add.ptr4 = getelementptr inbounds %struct.complex, ptr %9, i64 %idx.neg3
  store ptr %add.ptr4, ptr %z__.addr, align 8
  %10 = load ptr, ptr %sh.addr, align 8
  %incdec.ptr = getelementptr inbounds %struct.complex, ptr %10, i32 -1
  store ptr %incdec.ptr, ptr %sh.addr, align 8
  %11 = load ptr, ptr %ldv.addr, align 8
  %12 = load i32, ptr %11, align 4
  store i32 %12, ptr %v_dim1, align 4
  %13 = load i32, ptr %v_dim1, align 4
  %add5 = add nsw i32 1, %13
  store i32 %add5, ptr %v_offset, align 4
  %14 = load i32, ptr %v_offset, align 4
  %15 = load ptr, ptr %v.addr, align 8
  %idx.ext6 = sext i32 %14 to i64
  %idx.neg7 = sub i64 0, %idx.ext6
  %add.ptr8 = getelementptr inbounds %struct.complex, ptr %15, i64 %idx.neg7
  store ptr %add.ptr8, ptr %v.addr, align 8
  %16 = load ptr, ptr %ldt.addr, align 8
  %17 = load i32, ptr %16, align 4
  store i32 %17, ptr %t_dim1, align 4
  %18 = load i32, ptr %t_dim1, align 4
  %add9 = add nsw i32 1, %18
  store i32 %add9, ptr %t_offset, align 4
  %19 = load i32, ptr %t_offset, align 4
  %20 = load ptr, ptr %t.addr, align 8
  %idx.ext10 = sext i32 %19 to i64
  %idx.neg11 = sub i64 0, %idx.ext10
  %add.ptr12 = getelementptr inbounds %struct.complex, ptr %20, i64 %idx.neg11
  store ptr %add.ptr12, ptr %t.addr, align 8
  %21 = load ptr, ptr %ldwv.addr, align 8
  %22 = load i32, ptr %21, align 4
  store i32 %22, ptr %wv_dim1, align 4
  %23 = load i32, ptr %wv_dim1, align 4
  %add13 = add nsw i32 1, %23
  store i32 %add13, ptr %wv_offset, align 4
  %24 = load i32, ptr %wv_offset, align 4
  %25 = load ptr, ptr %wv.addr, align 8
  %idx.ext14 = sext i32 %24 to i64
  %idx.neg15 = sub i64 0, %idx.ext14
  %add.ptr16 = getelementptr inbounds %struct.complex, ptr %25, i64 %idx.neg15
  store ptr %add.ptr16, ptr %wv.addr, align 8
  %26 = load ptr, ptr %work.addr, align 8
  %incdec.ptr17 = getelementptr inbounds %struct.complex, ptr %26, i32 -1
  store ptr %incdec.ptr17, ptr %work.addr, align 8
  %27 = load ptr, ptr %nw.addr, align 8
  %28 = load i32, ptr %27, align 4
  store i32 %28, ptr %i__1, align 4
  %29 = load ptr, ptr %kbot.addr, align 8
  %30 = load i32, ptr %29, align 4
  %31 = load ptr, ptr %ktop.addr, align 8
  %32 = load i32, ptr %31, align 4
  %sub = sub nsw i32 %30, %32
  %add18 = add nsw i32 %sub, 1
  store i32 %add18, ptr %i__2, align 4
  %33 = load i32, ptr %i__1, align 4
  %34 = load i32, ptr %i__2, align 4
  %cmp = icmp sle i32 %33, %34
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %35 = load i32, ptr %i__1, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %36 = load i32, ptr %i__2, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %35, %cond.true ], [ %36, %cond.false ]
  store i32 %cond, ptr %jw, align 4
  %37 = load i32, ptr %jw, align 4
  %cmp19 = icmp sle i32 %37, 2
  br i1 %cmp19, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  store i32 1, ptr %lwkopt, align 4
  br label %if.end

if.else:                                          ; preds = %cond.end
  %38 = load i32, ptr %jw, align 4
  %sub20 = sub nsw i32 %38, 1
  store i32 %sub20, ptr %i__1, align 4
  %39 = load ptr, ptr %t.addr, align 8
  %40 = load i32, ptr %t_offset, align 4
  %idxprom = sext i32 %40 to i64
  %arrayidx = getelementptr inbounds %struct.complex, ptr %39, i64 %idxprom
  %41 = load ptr, ptr %ldt.addr, align 8
  %42 = load ptr, ptr %work.addr, align 8
  %arrayidx21 = getelementptr inbounds %struct.complex, ptr %42, i64 1
  %43 = load ptr, ptr %work.addr, align 8
  %arrayidx22 = getelementptr inbounds %struct.complex, ptr %43, i64 1
  %call = call i32 @cgehrd_(ptr noundef %jw, ptr noundef @c__1, ptr noundef %i__1, ptr noundef %arrayidx, ptr noundef %41, ptr noundef %arrayidx21, ptr noundef %arrayidx22, ptr noundef @c_n1, ptr noundef %info)
  %44 = load ptr, ptr %work.addr, align 8
  %arrayidx23 = getelementptr inbounds %struct.complex, ptr %44, i64 1
  %r = getelementptr inbounds %struct.complex, ptr %arrayidx23, i32 0, i32 0
  %45 = load float, ptr %r, align 4
  %conv = fptosi float %45 to i32
  store i32 %conv, ptr %lwk1, align 4
  %46 = load i32, ptr %jw, align 4
  %sub24 = sub nsw i32 %46, 1
  store i32 %sub24, ptr %i__1, align 4
  %47 = load ptr, ptr %t.addr, align 8
  %48 = load i32, ptr %t_offset, align 4
  %idxprom25 = sext i32 %48 to i64
  %arrayidx26 = getelementptr inbounds %struct.complex, ptr %47, i64 %idxprom25
  %49 = load ptr, ptr %ldt.addr, align 8
  %50 = load ptr, ptr %work.addr, align 8
  %arrayidx27 = getelementptr inbounds %struct.complex, ptr %50, i64 1
  %51 = load ptr, ptr %v.addr, align 8
  %52 = load i32, ptr %v_offset, align 4
  %idxprom28 = sext i32 %52 to i64
  %arrayidx29 = getelementptr inbounds %struct.complex, ptr %51, i64 %idxprom28
  %53 = load ptr, ptr %ldv.addr, align 8
  %54 = load ptr, ptr %work.addr, align 8
  %arrayidx30 = getelementptr inbounds %struct.complex, ptr %54, i64 1
  %call31 = call i32 @cunmhr_(ptr noundef @.str, ptr noundef @.str.1, ptr noundef %jw, ptr noundef %jw, ptr noundef @c__1, ptr noundef %i__1, ptr noundef %arrayidx26, ptr noundef %49, ptr noundef %arrayidx27, ptr noundef %arrayidx29, ptr noundef %53, ptr noundef %arrayidx30, ptr noundef @c_n1, ptr noundef %info)
  %55 = load ptr, ptr %work.addr, align 8
  %arrayidx32 = getelementptr inbounds %struct.complex, ptr %55, i64 1
  %r33 = getelementptr inbounds %struct.complex, ptr %arrayidx32, i32 0, i32 0
  %56 = load float, ptr %r33, align 4
  %conv34 = fptosi float %56 to i32
  store i32 %conv34, ptr %lwk2, align 4
  %57 = load ptr, ptr %t.addr, align 8
  %58 = load i32, ptr %t_offset, align 4
  %idxprom35 = sext i32 %58 to i64
  %arrayidx36 = getelementptr inbounds %struct.complex, ptr %57, i64 %idxprom35
  %59 = load ptr, ptr %ldt.addr, align 8
  %60 = load ptr, ptr %sh.addr, align 8
  %arrayidx37 = getelementptr inbounds %struct.complex, ptr %60, i64 1
  %61 = load ptr, ptr %v.addr, align 8
  %62 = load i32, ptr %v_offset, align 4
  %idxprom38 = sext i32 %62 to i64
  %arrayidx39 = getelementptr inbounds %struct.complex, ptr %61, i64 %idxprom38
  %63 = load ptr, ptr %ldv.addr, align 8
  %64 = load ptr, ptr %work.addr, align 8
  %arrayidx40 = getelementptr inbounds %struct.complex, ptr %64, i64 1
  %call41 = call i32 @claqr4_(ptr noundef @c_true, ptr noundef @c_true, ptr noundef %jw, ptr noundef @c__1, ptr noundef %jw, ptr noundef %arrayidx36, ptr noundef %59, ptr noundef %arrayidx37, ptr noundef @c__1, ptr noundef %jw, ptr noundef %arrayidx39, ptr noundef %63, ptr noundef %arrayidx40, ptr noundef @c_n1, ptr noundef %infqr)
  %65 = load ptr, ptr %work.addr, align 8
  %arrayidx42 = getelementptr inbounds %struct.complex, ptr %65, i64 1
  %r43 = getelementptr inbounds %struct.complex, ptr %arrayidx42, i32 0, i32 0
  %66 = load float, ptr %r43, align 4
  %conv44 = fptosi float %66 to i32
  store i32 %conv44, ptr %lwk3, align 4
  %67 = load i32, ptr %jw, align 4
  %68 = load i32, ptr %lwk1, align 4
  %69 = load i32, ptr %lwk2, align 4
  %cmp45 = icmp sge i32 %68, %69
  br i1 %cmp45, label %cond.true47, label %cond.false48

cond.true47:                                      ; preds = %if.else
  %70 = load i32, ptr %lwk1, align 4
  br label %cond.end49

cond.false48:                                     ; preds = %if.else
  %71 = load i32, ptr %lwk2, align 4
  br label %cond.end49

cond.end49:                                       ; preds = %cond.false48, %cond.true47
  %cond50 = phi i32 [ %70, %cond.true47 ], [ %71, %cond.false48 ]
  %add51 = add nsw i32 %67, %cond50
  store i32 %add51, ptr %i__1, align 4
  %72 = load i32, ptr %i__1, align 4
  %73 = load i32, ptr %lwk3, align 4
  %cmp52 = icmp sge i32 %72, %73
  br i1 %cmp52, label %cond.true54, label %cond.false55

cond.true54:                                      ; preds = %cond.end49
  %74 = load i32, ptr %i__1, align 4
  br label %cond.end56

cond.false55:                                     ; preds = %cond.end49
  %75 = load i32, ptr %lwk3, align 4
  br label %cond.end56

cond.end56:                                       ; preds = %cond.false55, %cond.true54
  %cond57 = phi i32 [ %74, %cond.true54 ], [ %75, %cond.false55 ]
  store i32 %cond57, ptr %lwkopt, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end56, %if.then
  %76 = load ptr, ptr %lwork.addr, align 8
  %77 = load i32, ptr %76, align 4
  %cmp58 = icmp eq i32 %77, -1
  br i1 %cmp58, label %if.then60, label %if.end69

if.then60:                                        ; preds = %if.end
  %78 = load i32, ptr %lwkopt, align 4
  %conv61 = sitofp i32 %78 to float
  store float %conv61, ptr %r__1, align 4
  %79 = load float, ptr %r__1, align 4
  %r62 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float %79, ptr %r62, align 4
  %i = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float 0.000000e+00, ptr %i, align 4
  %r63 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %80 = load float, ptr %r63, align 4
  %81 = load ptr, ptr %work.addr, align 8
  %arrayidx64 = getelementptr inbounds %struct.complex, ptr %81, i64 1
  %r65 = getelementptr inbounds %struct.complex, ptr %arrayidx64, i32 0, i32 0
  store float %80, ptr %r65, align 4
  %i66 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %82 = load float, ptr %i66, align 4
  %83 = load ptr, ptr %work.addr, align 8
  %arrayidx67 = getelementptr inbounds %struct.complex, ptr %83, i64 1
  %i68 = getelementptr inbounds %struct.complex, ptr %arrayidx67, i32 0, i32 1
  store float %82, ptr %i68, align 4
  store i32 0, ptr %retval, align 4
  br label %return

if.end69:                                         ; preds = %if.end
  %84 = load ptr, ptr %ns.addr, align 8
  store i32 0, ptr %84, align 4
  %85 = load ptr, ptr %nd.addr, align 8
  store i32 0, ptr %85, align 4
  %86 = load ptr, ptr %work.addr, align 8
  %arrayidx70 = getelementptr inbounds %struct.complex, ptr %86, i64 1
  %r71 = getelementptr inbounds %struct.complex, ptr %arrayidx70, i32 0, i32 0
  store float 1.000000e+00, ptr %r71, align 4
  %87 = load ptr, ptr %work.addr, align 8
  %arrayidx72 = getelementptr inbounds %struct.complex, ptr %87, i64 1
  %i73 = getelementptr inbounds %struct.complex, ptr %arrayidx72, i32 0, i32 1
  store float 0.000000e+00, ptr %i73, align 4
  %88 = load ptr, ptr %ktop.addr, align 8
  %89 = load i32, ptr %88, align 4
  %90 = load ptr, ptr %kbot.addr, align 8
  %91 = load i32, ptr %90, align 4
  %cmp74 = icmp sgt i32 %89, %91
  br i1 %cmp74, label %if.then76, label %if.end77

if.then76:                                        ; preds = %if.end69
  store i32 0, ptr %retval, align 4
  br label %return

if.end77:                                         ; preds = %if.end69
  %92 = load ptr, ptr %nw.addr, align 8
  %93 = load i32, ptr %92, align 4
  %cmp78 = icmp slt i32 %93, 1
  br i1 %cmp78, label %if.then80, label %if.end81

if.then80:                                        ; preds = %if.end77
  store i32 0, ptr %retval, align 4
  br label %return

if.end81:                                         ; preds = %if.end77
  %call82 = call float @slamch_(ptr noundef @.str.2)
  store float %call82, ptr %safmin, align 4
  %94 = load float, ptr %safmin, align 4
  %div = fdiv float 1.000000e+00, %94
  store float %div, ptr %safmax, align 4
  %call83 = call i32 @slabad_(ptr noundef %safmin, ptr noundef %safmax)
  %call84 = call float @slamch_(ptr noundef @.str.3)
  store float %call84, ptr %ulp, align 4
  %95 = load float, ptr %safmin, align 4
  %96 = load ptr, ptr %n.addr, align 8
  %97 = load i32, ptr %96, align 4
  %conv85 = sitofp i32 %97 to float
  %98 = load float, ptr %ulp, align 4
  %div86 = fdiv float %conv85, %98
  %mul = fmul float %95, %div86
  store float %mul, ptr %smlnum, align 4
  %99 = load ptr, ptr %nw.addr, align 8
  %100 = load i32, ptr %99, align 4
  store i32 %100, ptr %i__1, align 4
  %101 = load ptr, ptr %kbot.addr, align 8
  %102 = load i32, ptr %101, align 4
  %103 = load ptr, ptr %ktop.addr, align 8
  %104 = load i32, ptr %103, align 4
  %sub87 = sub nsw i32 %102, %104
  %add88 = add nsw i32 %sub87, 1
  store i32 %add88, ptr %i__2, align 4
  %105 = load i32, ptr %i__1, align 4
  %106 = load i32, ptr %i__2, align 4
  %cmp89 = icmp sle i32 %105, %106
  br i1 %cmp89, label %cond.true91, label %cond.false92

cond.true91:                                      ; preds = %if.end81
  %107 = load i32, ptr %i__1, align 4
  br label %cond.end93

cond.false92:                                     ; preds = %if.end81
  %108 = load i32, ptr %i__2, align 4
  br label %cond.end93

cond.end93:                                       ; preds = %cond.false92, %cond.true91
  %cond94 = phi i32 [ %107, %cond.true91 ], [ %108, %cond.false92 ]
  store i32 %cond94, ptr %jw, align 4
  %109 = load ptr, ptr %kbot.addr, align 8
  %110 = load i32, ptr %109, align 4
  %111 = load i32, ptr %jw, align 4
  %sub95 = sub nsw i32 %110, %111
  %add96 = add nsw i32 %sub95, 1
  store i32 %add96, ptr %kwtop, align 4
  %112 = load i32, ptr %kwtop, align 4
  %113 = load ptr, ptr %ktop.addr, align 8
  %114 = load i32, ptr %113, align 4
  %cmp97 = icmp eq i32 %112, %114
  br i1 %cmp97, label %if.then99, label %if.else102

if.then99:                                        ; preds = %cond.end93
  %r100 = getelementptr inbounds %struct.complex, ptr %s, i32 0, i32 0
  store float 0.000000e+00, ptr %r100, align 4
  %i101 = getelementptr inbounds %struct.complex, ptr %s, i32 0, i32 1
  store float 0.000000e+00, ptr %i101, align 4
  br label %if.end114

if.else102:                                       ; preds = %cond.end93
  %115 = load i32, ptr %kwtop, align 4
  %116 = load i32, ptr %kwtop, align 4
  %sub103 = sub nsw i32 %116, 1
  %117 = load i32, ptr %h_dim1, align 4
  %mul104 = mul nsw i32 %sub103, %117
  %add105 = add nsw i32 %115, %mul104
  store i32 %add105, ptr %i__1, align 4
  %118 = load ptr, ptr %h__.addr, align 8
  %119 = load i32, ptr %i__1, align 4
  %idxprom106 = sext i32 %119 to i64
  %arrayidx107 = getelementptr inbounds %struct.complex, ptr %118, i64 %idxprom106
  %r108 = getelementptr inbounds %struct.complex, ptr %arrayidx107, i32 0, i32 0
  %120 = load float, ptr %r108, align 4
  %r109 = getelementptr inbounds %struct.complex, ptr %s, i32 0, i32 0
  store float %120, ptr %r109, align 4
  %121 = load ptr, ptr %h__.addr, align 8
  %122 = load i32, ptr %i__1, align 4
  %idxprom110 = sext i32 %122 to i64
  %arrayidx111 = getelementptr inbounds %struct.complex, ptr %121, i64 %idxprom110
  %i112 = getelementptr inbounds %struct.complex, ptr %arrayidx111, i32 0, i32 1
  %123 = load float, ptr %i112, align 4
  %i113 = getelementptr inbounds %struct.complex, ptr %s, i32 0, i32 1
  store float %123, ptr %i113, align 4
  br label %if.end114

if.end114:                                        ; preds = %if.else102, %if.then99
  %124 = load ptr, ptr %kbot.addr, align 8
  %125 = load i32, ptr %124, align 4
  %126 = load i32, ptr %kwtop, align 4
  %cmp115 = icmp eq i32 %125, %126
  br i1 %cmp115, label %if.then117, label %if.end203

if.then117:                                       ; preds = %if.end114
  %127 = load i32, ptr %kwtop, align 4
  store i32 %127, ptr %i__1, align 4
  %128 = load i32, ptr %kwtop, align 4
  %129 = load i32, ptr %kwtop, align 4
  %130 = load i32, ptr %h_dim1, align 4
  %mul118 = mul nsw i32 %129, %130
  %add119 = add nsw i32 %128, %mul118
  store i32 %add119, ptr %i__2, align 4
  %131 = load ptr, ptr %h__.addr, align 8
  %132 = load i32, ptr %i__2, align 4
  %idxprom120 = sext i32 %132 to i64
  %arrayidx121 = getelementptr inbounds %struct.complex, ptr %131, i64 %idxprom120
  %r122 = getelementptr inbounds %struct.complex, ptr %arrayidx121, i32 0, i32 0
  %133 = load float, ptr %r122, align 4
  %134 = load ptr, ptr %sh.addr, align 8
  %135 = load i32, ptr %i__1, align 4
  %idxprom123 = sext i32 %135 to i64
  %arrayidx124 = getelementptr inbounds %struct.complex, ptr %134, i64 %idxprom123
  %r125 = getelementptr inbounds %struct.complex, ptr %arrayidx124, i32 0, i32 0
  store float %133, ptr %r125, align 4
  %136 = load ptr, ptr %h__.addr, align 8
  %137 = load i32, ptr %i__2, align 4
  %idxprom126 = sext i32 %137 to i64
  %arrayidx127 = getelementptr inbounds %struct.complex, ptr %136, i64 %idxprom126
  %i128 = getelementptr inbounds %struct.complex, ptr %arrayidx127, i32 0, i32 1
  %138 = load float, ptr %i128, align 4
  %139 = load ptr, ptr %sh.addr, align 8
  %140 = load i32, ptr %i__1, align 4
  %idxprom129 = sext i32 %140 to i64
  %arrayidx130 = getelementptr inbounds %struct.complex, ptr %139, i64 %idxprom129
  %i131 = getelementptr inbounds %struct.complex, ptr %arrayidx130, i32 0, i32 1
  store float %138, ptr %i131, align 4
  %141 = load ptr, ptr %ns.addr, align 8
  store i32 1, ptr %141, align 4
  %142 = load ptr, ptr %nd.addr, align 8
  store i32 0, ptr %142, align 4
  %143 = load i32, ptr %kwtop, align 4
  %144 = load i32, ptr %kwtop, align 4
  %145 = load i32, ptr %h_dim1, align 4
  %mul132 = mul nsw i32 %144, %145
  %add133 = add nsw i32 %143, %mul132
  store i32 %add133, ptr %i__1, align 4
  %146 = load float, ptr %smlnum, align 4
  store float %146, ptr %r__5, align 4
  %147 = load float, ptr %ulp, align 4
  %148 = load ptr, ptr %h__.addr, align 8
  %149 = load i32, ptr %i__1, align 4
  %idxprom134 = sext i32 %149 to i64
  %arrayidx135 = getelementptr inbounds %struct.complex, ptr %148, i64 %idxprom134
  %r136 = getelementptr inbounds %struct.complex, ptr %arrayidx135, i32 0, i32 0
  %150 = load float, ptr %r136, align 4
  store float %150, ptr %r__1, align 4
  %151 = load float, ptr %r__1, align 4
  %cmp137 = fcmp oge float %151, 0.000000e+00
  br i1 %cmp137, label %cond.true139, label %cond.false140

cond.true139:                                     ; preds = %if.then117
  %152 = load float, ptr %r__1, align 4
  br label %cond.end141

cond.false140:                                    ; preds = %if.then117
  %153 = load float, ptr %r__1, align 4
  %fneg = fneg float %153
  br label %cond.end141

cond.end141:                                      ; preds = %cond.false140, %cond.true139
  %cond142 = phi float [ %152, %cond.true139 ], [ %fneg, %cond.false140 ]
  %154 = load ptr, ptr %h__.addr, align 8
  %155 = load i32, ptr %kwtop, align 4
  %156 = load i32, ptr %kwtop, align 4
  %157 = load i32, ptr %h_dim1, align 4
  %mul143 = mul nsw i32 %156, %157
  %add144 = add nsw i32 %155, %mul143
  %idxprom145 = sext i32 %add144 to i64
  %arrayidx146 = getelementptr inbounds %struct.complex, ptr %154, i64 %idxprom145
  %call147 = call double @r_imag(ptr noundef %arrayidx146)
  %conv148 = fptrunc double %call147 to float
  store float %conv148, ptr %r__2, align 4
  %158 = load float, ptr %r__2, align 4
  %cmp149 = fcmp oge float %158, 0.000000e+00
  br i1 %cmp149, label %cond.true151, label %cond.false152

cond.true151:                                     ; preds = %cond.end141
  %159 = load float, ptr %r__2, align 4
  br label %cond.end154

cond.false152:                                    ; preds = %cond.end141
  %160 = load float, ptr %r__2, align 4
  %fneg153 = fneg float %160
  br label %cond.end154

cond.end154:                                      ; preds = %cond.false152, %cond.true151
  %cond155 = phi float [ %159, %cond.true151 ], [ %fneg153, %cond.false152 ]
  %add156 = fadd float %cond142, %cond155
  %mul157 = fmul float %147, %add156
  store float %mul157, ptr %r__6, align 4
  %r158 = getelementptr inbounds %struct.complex, ptr %s, i32 0, i32 0
  %161 = load float, ptr %r158, align 4
  store float %161, ptr %r__3, align 4
  %162 = load float, ptr %r__3, align 4
  %cmp159 = fcmp oge float %162, 0.000000e+00
  br i1 %cmp159, label %cond.true161, label %cond.false162

cond.true161:                                     ; preds = %cond.end154
  %163 = load float, ptr %r__3, align 4
  br label %cond.end164

cond.false162:                                    ; preds = %cond.end154
  %164 = load float, ptr %r__3, align 4
  %fneg163 = fneg float %164
  br label %cond.end164

cond.end164:                                      ; preds = %cond.false162, %cond.true161
  %cond165 = phi float [ %163, %cond.true161 ], [ %fneg163, %cond.false162 ]
  %call166 = call double @r_imag(ptr noundef %s)
  %conv167 = fptrunc double %call166 to float
  store float %conv167, ptr %r__4, align 4
  %165 = load float, ptr %r__4, align 4
  %cmp168 = fcmp oge float %165, 0.000000e+00
  br i1 %cmp168, label %cond.true170, label %cond.false171

cond.true170:                                     ; preds = %cond.end164
  %166 = load float, ptr %r__4, align 4
  br label %cond.end173

cond.false171:                                    ; preds = %cond.end164
  %167 = load float, ptr %r__4, align 4
  %fneg172 = fneg float %167
  br label %cond.end173

cond.end173:                                      ; preds = %cond.false171, %cond.true170
  %cond174 = phi float [ %166, %cond.true170 ], [ %fneg172, %cond.false171 ]
  %add175 = fadd float %cond165, %cond174
  %168 = load float, ptr %r__5, align 4
  %169 = load float, ptr %r__6, align 4
  %cmp176 = fcmp oge float %168, %169
  br i1 %cmp176, label %cond.true178, label %cond.false179

cond.true178:                                     ; preds = %cond.end173
  %170 = load float, ptr %r__5, align 4
  br label %cond.end180

cond.false179:                                    ; preds = %cond.end173
  %171 = load float, ptr %r__6, align 4
  br label %cond.end180

cond.end180:                                      ; preds = %cond.false179, %cond.true178
  %cond181 = phi float [ %170, %cond.true178 ], [ %171, %cond.false179 ]
  %cmp182 = fcmp ole float %add175, %cond181
  br i1 %cmp182, label %if.then184, label %if.end198

if.then184:                                       ; preds = %cond.end180
  %172 = load ptr, ptr %ns.addr, align 8
  store i32 0, ptr %172, align 4
  %173 = load ptr, ptr %nd.addr, align 8
  store i32 1, ptr %173, align 4
  %174 = load i32, ptr %kwtop, align 4
  %175 = load ptr, ptr %ktop.addr, align 8
  %176 = load i32, ptr %175, align 4
  %cmp185 = icmp sgt i32 %174, %176
  br i1 %cmp185, label %if.then187, label %if.end197

if.then187:                                       ; preds = %if.then184
  %177 = load i32, ptr %kwtop, align 4
  %178 = load i32, ptr %kwtop, align 4
  %sub188 = sub nsw i32 %178, 1
  %179 = load i32, ptr %h_dim1, align 4
  %mul189 = mul nsw i32 %sub188, %179
  %add190 = add nsw i32 %177, %mul189
  store i32 %add190, ptr %i__1, align 4
  %180 = load ptr, ptr %h__.addr, align 8
  %181 = load i32, ptr %i__1, align 4
  %idxprom191 = sext i32 %181 to i64
  %arrayidx192 = getelementptr inbounds %struct.complex, ptr %180, i64 %idxprom191
  %r193 = getelementptr inbounds %struct.complex, ptr %arrayidx192, i32 0, i32 0
  store float 0.000000e+00, ptr %r193, align 4
  %182 = load ptr, ptr %h__.addr, align 8
  %183 = load i32, ptr %i__1, align 4
  %idxprom194 = sext i32 %183 to i64
  %arrayidx195 = getelementptr inbounds %struct.complex, ptr %182, i64 %idxprom194
  %i196 = getelementptr inbounds %struct.complex, ptr %arrayidx195, i32 0, i32 1
  store float 0.000000e+00, ptr %i196, align 4
  br label %if.end197

if.end197:                                        ; preds = %if.then187, %if.then184
  br label %if.end198

if.end198:                                        ; preds = %if.end197, %cond.end180
  %184 = load ptr, ptr %work.addr, align 8
  %arrayidx199 = getelementptr inbounds %struct.complex, ptr %184, i64 1
  %r200 = getelementptr inbounds %struct.complex, ptr %arrayidx199, i32 0, i32 0
  store float 1.000000e+00, ptr %r200, align 4
  %185 = load ptr, ptr %work.addr, align 8
  %arrayidx201 = getelementptr inbounds %struct.complex, ptr %185, i64 1
  %i202 = getelementptr inbounds %struct.complex, ptr %arrayidx201, i32 0, i32 1
  store float 0.000000e+00, ptr %i202, align 4
  store i32 0, ptr %retval, align 4
  br label %return

if.end203:                                        ; preds = %if.end114
  %186 = load ptr, ptr %h__.addr, align 8
  %187 = load i32, ptr %kwtop, align 4
  %188 = load i32, ptr %kwtop, align 4
  %189 = load i32, ptr %h_dim1, align 4
  %mul204 = mul nsw i32 %188, %189
  %add205 = add nsw i32 %187, %mul204
  %idxprom206 = sext i32 %add205 to i64
  %arrayidx207 = getelementptr inbounds %struct.complex, ptr %186, i64 %idxprom206
  %190 = load ptr, ptr %ldh.addr, align 8
  %191 = load ptr, ptr %t.addr, align 8
  %192 = load i32, ptr %t_offset, align 4
  %idxprom208 = sext i32 %192 to i64
  %arrayidx209 = getelementptr inbounds %struct.complex, ptr %191, i64 %idxprom208
  %193 = load ptr, ptr %ldt.addr, align 8
  %call210 = call i32 @clacpy_(ptr noundef @.str.4, ptr noundef %jw, ptr noundef %jw, ptr noundef %arrayidx207, ptr noundef %190, ptr noundef %arrayidx209, ptr noundef %193)
  %194 = load i32, ptr %jw, align 4
  %sub211 = sub nsw i32 %194, 1
  store i32 %sub211, ptr %i__1, align 4
  %195 = load ptr, ptr %ldh.addr, align 8
  %196 = load i32, ptr %195, align 4
  %add212 = add nsw i32 %196, 1
  store i32 %add212, ptr %i__2, align 4
  %197 = load ptr, ptr %ldt.addr, align 8
  %198 = load i32, ptr %197, align 4
  %add213 = add nsw i32 %198, 1
  store i32 %add213, ptr %i__3, align 4
  %199 = load ptr, ptr %h__.addr, align 8
  %200 = load i32, ptr %kwtop, align 4
  %add214 = add nsw i32 %200, 1
  %201 = load i32, ptr %kwtop, align 4
  %202 = load i32, ptr %h_dim1, align 4
  %mul215 = mul nsw i32 %201, %202
  %add216 = add nsw i32 %add214, %mul215
  %idxprom217 = sext i32 %add216 to i64
  %arrayidx218 = getelementptr inbounds %struct.complex, ptr %199, i64 %idxprom217
  %203 = load ptr, ptr %t.addr, align 8
  %204 = load i32, ptr %t_dim1, align 4
  %add219 = add nsw i32 %204, 2
  %idxprom220 = sext i32 %add219 to i64
  %arrayidx221 = getelementptr inbounds %struct.complex, ptr %203, i64 %idxprom220
  %call222 = call i32 @ccopy_(ptr noundef %i__1, ptr noundef %arrayidx218, ptr noundef %i__2, ptr noundef %arrayidx221, ptr noundef %i__3)
  %205 = load ptr, ptr %v.addr, align 8
  %206 = load i32, ptr %v_offset, align 4
  %idxprom223 = sext i32 %206 to i64
  %arrayidx224 = getelementptr inbounds %struct.complex, ptr %205, i64 %idxprom223
  %207 = load ptr, ptr %ldv.addr, align 8
  %call225 = call i32 @claset_(ptr noundef @.str.5, ptr noundef %jw, ptr noundef %jw, ptr noundef @c_b1, ptr noundef @c_b2, ptr noundef %arrayidx224, ptr noundef %207)
  %208 = load ptr, ptr %lwork.addr, align 8
  %call226 = call i32 @ilaenv_(ptr noundef @c__12, ptr noundef @.str.6, ptr noundef @.str.7, ptr noundef %jw, ptr noundef @c__1, ptr noundef %jw, ptr noundef %208)
  store i32 %call226, ptr %nmin, align 4
  %209 = load i32, ptr %jw, align 4
  %210 = load i32, ptr %nmin, align 4
  %cmp227 = icmp sgt i32 %209, %210
  br i1 %cmp227, label %if.then229, label %if.else238

if.then229:                                       ; preds = %if.end203
  %211 = load ptr, ptr %t.addr, align 8
  %212 = load i32, ptr %t_offset, align 4
  %idxprom230 = sext i32 %212 to i64
  %arrayidx231 = getelementptr inbounds %struct.complex, ptr %211, i64 %idxprom230
  %213 = load ptr, ptr %ldt.addr, align 8
  %214 = load ptr, ptr %sh.addr, align 8
  %215 = load i32, ptr %kwtop, align 4
  %idxprom232 = sext i32 %215 to i64
  %arrayidx233 = getelementptr inbounds %struct.complex, ptr %214, i64 %idxprom232
  %216 = load ptr, ptr %v.addr, align 8
  %217 = load i32, ptr %v_offset, align 4
  %idxprom234 = sext i32 %217 to i64
  %arrayidx235 = getelementptr inbounds %struct.complex, ptr %216, i64 %idxprom234
  %218 = load ptr, ptr %ldv.addr, align 8
  %219 = load ptr, ptr %work.addr, align 8
  %arrayidx236 = getelementptr inbounds %struct.complex, ptr %219, i64 1
  %220 = load ptr, ptr %lwork.addr, align 8
  %call237 = call i32 @claqr4_(ptr noundef @c_true, ptr noundef @c_true, ptr noundef %jw, ptr noundef @c__1, ptr noundef %jw, ptr noundef %arrayidx231, ptr noundef %213, ptr noundef %arrayidx233, ptr noundef @c__1, ptr noundef %jw, ptr noundef %arrayidx235, ptr noundef %218, ptr noundef %arrayidx236, ptr noundef %220, ptr noundef %infqr)
  br label %if.end246

if.else238:                                       ; preds = %if.end203
  %221 = load ptr, ptr %t.addr, align 8
  %222 = load i32, ptr %t_offset, align 4
  %idxprom239 = sext i32 %222 to i64
  %arrayidx240 = getelementptr inbounds %struct.complex, ptr %221, i64 %idxprom239
  %223 = load ptr, ptr %ldt.addr, align 8
  %224 = load ptr, ptr %sh.addr, align 8
  %225 = load i32, ptr %kwtop, align 4
  %idxprom241 = sext i32 %225 to i64
  %arrayidx242 = getelementptr inbounds %struct.complex, ptr %224, i64 %idxprom241
  %226 = load ptr, ptr %v.addr, align 8
  %227 = load i32, ptr %v_offset, align 4
  %idxprom243 = sext i32 %227 to i64
  %arrayidx244 = getelementptr inbounds %struct.complex, ptr %226, i64 %idxprom243
  %228 = load ptr, ptr %ldv.addr, align 8
  %call245 = call i32 @clahqr_(ptr noundef @c_true, ptr noundef @c_true, ptr noundef %jw, ptr noundef @c__1, ptr noundef %jw, ptr noundef %arrayidx240, ptr noundef %223, ptr noundef %arrayidx242, ptr noundef @c__1, ptr noundef %jw, ptr noundef %arrayidx244, ptr noundef %228, ptr noundef %infqr)
  br label %if.end246

if.end246:                                        ; preds = %if.else238, %if.then229
  %229 = load i32, ptr %jw, align 4
  %230 = load ptr, ptr %ns.addr, align 8
  store i32 %229, ptr %230, align 4
  %231 = load i32, ptr %infqr, align 4
  %add247 = add nsw i32 %231, 1
  store i32 %add247, ptr %ilst, align 4
  %232 = load i32, ptr %jw, align 4
  store i32 %232, ptr %i__1, align 4
  %233 = load i32, ptr %infqr, align 4
  %add248 = add nsw i32 %233, 1
  store i32 %add248, ptr %knt, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end246
  %234 = load i32, ptr %knt, align 4
  %235 = load i32, ptr %i__1, align 4
  %cmp249 = icmp sle i32 %234, %235
  br i1 %cmp249, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %236 = load ptr, ptr %ns.addr, align 8
  %237 = load i32, ptr %236, align 4
  %238 = load ptr, ptr %ns.addr, align 8
  %239 = load i32, ptr %238, align 4
  %240 = load i32, ptr %t_dim1, align 4
  %mul251 = mul nsw i32 %239, %240
  %add252 = add nsw i32 %237, %mul251
  store i32 %add252, ptr %i__2, align 4
  %241 = load ptr, ptr %t.addr, align 8
  %242 = load i32, ptr %i__2, align 4
  %idxprom253 = sext i32 %242 to i64
  %arrayidx254 = getelementptr inbounds %struct.complex, ptr %241, i64 %idxprom253
  %r255 = getelementptr inbounds %struct.complex, ptr %arrayidx254, i32 0, i32 0
  %243 = load float, ptr %r255, align 4
  store float %243, ptr %r__1, align 4
  %244 = load float, ptr %r__1, align 4
  %cmp256 = fcmp oge float %244, 0.000000e+00
  br i1 %cmp256, label %cond.true258, label %cond.false259

cond.true258:                                     ; preds = %for.body
  %245 = load float, ptr %r__1, align 4
  br label %cond.end261

cond.false259:                                    ; preds = %for.body
  %246 = load float, ptr %r__1, align 4
  %fneg260 = fneg float %246
  br label %cond.end261

cond.end261:                                      ; preds = %cond.false259, %cond.true258
  %cond262 = phi float [ %245, %cond.true258 ], [ %fneg260, %cond.false259 ]
  %247 = load ptr, ptr %t.addr, align 8
  %248 = load ptr, ptr %ns.addr, align 8
  %249 = load i32, ptr %248, align 4
  %250 = load ptr, ptr %ns.addr, align 8
  %251 = load i32, ptr %250, align 4
  %252 = load i32, ptr %t_dim1, align 4
  %mul263 = mul nsw i32 %251, %252
  %add264 = add nsw i32 %249, %mul263
  %idxprom265 = sext i32 %add264 to i64
  %arrayidx266 = getelementptr inbounds %struct.complex, ptr %247, i64 %idxprom265
  %call267 = call double @r_imag(ptr noundef %arrayidx266)
  %conv268 = fptrunc double %call267 to float
  store float %conv268, ptr %r__2, align 4
  %253 = load float, ptr %r__2, align 4
  %cmp269 = fcmp oge float %253, 0.000000e+00
  br i1 %cmp269, label %cond.true271, label %cond.false272

cond.true271:                                     ; preds = %cond.end261
  %254 = load float, ptr %r__2, align 4
  br label %cond.end274

cond.false272:                                    ; preds = %cond.end261
  %255 = load float, ptr %r__2, align 4
  %fneg273 = fneg float %255
  br label %cond.end274

cond.end274:                                      ; preds = %cond.false272, %cond.true271
  %cond275 = phi float [ %254, %cond.true271 ], [ %fneg273, %cond.false272 ]
  %add276 = fadd float %cond262, %cond275
  store float %add276, ptr %foo, align 4
  %256 = load float, ptr %foo, align 4
  %cmp277 = fcmp oeq float %256, 0.000000e+00
  br i1 %cmp277, label %if.then279, label %if.end298

if.then279:                                       ; preds = %cond.end274
  %r280 = getelementptr inbounds %struct.complex, ptr %s, i32 0, i32 0
  %257 = load float, ptr %r280, align 4
  store float %257, ptr %r__1, align 4
  %258 = load float, ptr %r__1, align 4
  %cmp281 = fcmp oge float %258, 0.000000e+00
  br i1 %cmp281, label %cond.true283, label %cond.false284

cond.true283:                                     ; preds = %if.then279
  %259 = load float, ptr %r__1, align 4
  br label %cond.end286

cond.false284:                                    ; preds = %if.then279
  %260 = load float, ptr %r__1, align 4
  %fneg285 = fneg float %260
  br label %cond.end286

cond.end286:                                      ; preds = %cond.false284, %cond.true283
  %cond287 = phi float [ %259, %cond.true283 ], [ %fneg285, %cond.false284 ]
  %call288 = call double @r_imag(ptr noundef %s)
  %conv289 = fptrunc double %call288 to float
  store float %conv289, ptr %r__2, align 4
  %261 = load float, ptr %r__2, align 4
  %cmp290 = fcmp oge float %261, 0.000000e+00
  br i1 %cmp290, label %cond.true292, label %cond.false293

cond.true292:                                     ; preds = %cond.end286
  %262 = load float, ptr %r__2, align 4
  br label %cond.end295

cond.false293:                                    ; preds = %cond.end286
  %263 = load float, ptr %r__2, align 4
  %fneg294 = fneg float %263
  br label %cond.end295

cond.end295:                                      ; preds = %cond.false293, %cond.true292
  %cond296 = phi float [ %262, %cond.true292 ], [ %fneg294, %cond.false293 ]
  %add297 = fadd float %cond287, %cond296
  store float %add297, ptr %foo, align 4
  br label %if.end298

if.end298:                                        ; preds = %cond.end295, %cond.end274
  %264 = load ptr, ptr %ns.addr, align 8
  %265 = load i32, ptr %264, align 4
  %266 = load i32, ptr %v_dim1, align 4
  %mul299 = mul nsw i32 %265, %266
  %add300 = add nsw i32 %mul299, 1
  store i32 %add300, ptr %i__2, align 4
  %267 = load float, ptr %smlnum, align 4
  store float %267, ptr %r__5, align 4
  %268 = load float, ptr %ulp, align 4
  %269 = load float, ptr %foo, align 4
  %mul301 = fmul float %268, %269
  store float %mul301, ptr %r__6, align 4
  %r302 = getelementptr inbounds %struct.complex, ptr %s, i32 0, i32 0
  %270 = load float, ptr %r302, align 4
  store float %270, ptr %r__1, align 4
  %271 = load float, ptr %r__1, align 4
  %cmp303 = fcmp oge float %271, 0.000000e+00
  br i1 %cmp303, label %cond.true305, label %cond.false306

cond.true305:                                     ; preds = %if.end298
  %272 = load float, ptr %r__1, align 4
  br label %cond.end308

cond.false306:                                    ; preds = %if.end298
  %273 = load float, ptr %r__1, align 4
  %fneg307 = fneg float %273
  br label %cond.end308

cond.end308:                                      ; preds = %cond.false306, %cond.true305
  %cond309 = phi float [ %272, %cond.true305 ], [ %fneg307, %cond.false306 ]
  %call310 = call double @r_imag(ptr noundef %s)
  %conv311 = fptrunc double %call310 to float
  store float %conv311, ptr %r__2, align 4
  %274 = load float, ptr %r__2, align 4
  %cmp312 = fcmp oge float %274, 0.000000e+00
  br i1 %cmp312, label %cond.true314, label %cond.false315

cond.true314:                                     ; preds = %cond.end308
  %275 = load float, ptr %r__2, align 4
  br label %cond.end317

cond.false315:                                    ; preds = %cond.end308
  %276 = load float, ptr %r__2, align 4
  %fneg316 = fneg float %276
  br label %cond.end317

cond.end317:                                      ; preds = %cond.false315, %cond.true314
  %cond318 = phi float [ %275, %cond.true314 ], [ %fneg316, %cond.false315 ]
  %add319 = fadd float %cond309, %cond318
  %277 = load ptr, ptr %v.addr, align 8
  %278 = load i32, ptr %i__2, align 4
  %idxprom320 = sext i32 %278 to i64
  %arrayidx321 = getelementptr inbounds %struct.complex, ptr %277, i64 %idxprom320
  %r322 = getelementptr inbounds %struct.complex, ptr %arrayidx321, i32 0, i32 0
  %279 = load float, ptr %r322, align 4
  store float %279, ptr %r__3, align 4
  %280 = load float, ptr %r__3, align 4
  %cmp323 = fcmp oge float %280, 0.000000e+00
  br i1 %cmp323, label %cond.true325, label %cond.false326

cond.true325:                                     ; preds = %cond.end317
  %281 = load float, ptr %r__3, align 4
  br label %cond.end328

cond.false326:                                    ; preds = %cond.end317
  %282 = load float, ptr %r__3, align 4
  %fneg327 = fneg float %282
  br label %cond.end328

cond.end328:                                      ; preds = %cond.false326, %cond.true325
  %cond329 = phi float [ %281, %cond.true325 ], [ %fneg327, %cond.false326 ]
  %283 = load ptr, ptr %v.addr, align 8
  %284 = load ptr, ptr %ns.addr, align 8
  %285 = load i32, ptr %284, align 4
  %286 = load i32, ptr %v_dim1, align 4
  %mul330 = mul nsw i32 %285, %286
  %add331 = add nsw i32 %mul330, 1
  %idxprom332 = sext i32 %add331 to i64
  %arrayidx333 = getelementptr inbounds %struct.complex, ptr %283, i64 %idxprom332
  %call334 = call double @r_imag(ptr noundef %arrayidx333)
  %conv335 = fptrunc double %call334 to float
  store float %conv335, ptr %r__4, align 4
  %287 = load float, ptr %r__4, align 4
  %cmp336 = fcmp oge float %287, 0.000000e+00
  br i1 %cmp336, label %cond.true338, label %cond.false339

cond.true338:                                     ; preds = %cond.end328
  %288 = load float, ptr %r__4, align 4
  br label %cond.end341

cond.false339:                                    ; preds = %cond.end328
  %289 = load float, ptr %r__4, align 4
  %fneg340 = fneg float %289
  br label %cond.end341

cond.end341:                                      ; preds = %cond.false339, %cond.true338
  %cond342 = phi float [ %288, %cond.true338 ], [ %fneg340, %cond.false339 ]
  %add343 = fadd float %cond329, %cond342
  %mul344 = fmul float %add319, %add343
  %290 = load float, ptr %r__5, align 4
  %291 = load float, ptr %r__6, align 4
  %cmp345 = fcmp oge float %290, %291
  br i1 %cmp345, label %cond.true347, label %cond.false348

cond.true347:                                     ; preds = %cond.end341
  %292 = load float, ptr %r__5, align 4
  br label %cond.end349

cond.false348:                                    ; preds = %cond.end341
  %293 = load float, ptr %r__6, align 4
  br label %cond.end349

cond.end349:                                      ; preds = %cond.false348, %cond.true347
  %cond350 = phi float [ %292, %cond.true347 ], [ %293, %cond.false348 ]
  %cmp351 = fcmp ole float %mul344, %cond350
  br i1 %cmp351, label %if.then353, label %if.else354

if.then353:                                       ; preds = %cond.end349
  %294 = load ptr, ptr %ns.addr, align 8
  %295 = load i32, ptr %294, align 4
  %dec = add nsw i32 %295, -1
  store i32 %dec, ptr %294, align 4
  br label %if.end360

if.else354:                                       ; preds = %cond.end349
  %296 = load ptr, ptr %ns.addr, align 8
  %297 = load i32, ptr %296, align 4
  store i32 %297, ptr %ifst, align 4
  %298 = load ptr, ptr %t.addr, align 8
  %299 = load i32, ptr %t_offset, align 4
  %idxprom355 = sext i32 %299 to i64
  %arrayidx356 = getelementptr inbounds %struct.complex, ptr %298, i64 %idxprom355
  %300 = load ptr, ptr %ldt.addr, align 8
  %301 = load ptr, ptr %v.addr, align 8
  %302 = load i32, ptr %v_offset, align 4
  %idxprom357 = sext i32 %302 to i64
  %arrayidx358 = getelementptr inbounds %struct.complex, ptr %301, i64 %idxprom357
  %303 = load ptr, ptr %ldv.addr, align 8
  %call359 = call i32 @ctrexc_(ptr noundef @.str.8, ptr noundef %jw, ptr noundef %arrayidx356, ptr noundef %300, ptr noundef %arrayidx358, ptr noundef %303, ptr noundef %ifst, ptr noundef %ilst, ptr noundef %info)
  %304 = load i32, ptr %ilst, align 4
  %inc = add nsw i32 %304, 1
  store i32 %inc, ptr %ilst, align 4
  br label %if.end360

if.end360:                                        ; preds = %if.else354, %if.then353
  br label %for.inc

for.inc:                                          ; preds = %if.end360
  %305 = load i32, ptr %knt, align 4
  %inc361 = add nsw i32 %305, 1
  store i32 %inc361, ptr %knt, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %306 = load ptr, ptr %ns.addr, align 8
  %307 = load i32, ptr %306, align 4
  %cmp362 = icmp eq i32 %307, 0
  br i1 %cmp362, label %if.then364, label %if.end367

if.then364:                                       ; preds = %for.end
  %r365 = getelementptr inbounds %struct.complex, ptr %s, i32 0, i32 0
  store float 0.000000e+00, ptr %r365, align 4
  %i366 = getelementptr inbounds %struct.complex, ptr %s, i32 0, i32 1
  store float 0.000000e+00, ptr %i366, align 4
  br label %if.end367

if.end367:                                        ; preds = %if.then364, %for.end
  %308 = load ptr, ptr %ns.addr, align 8
  %309 = load i32, ptr %308, align 4
  %310 = load i32, ptr %jw, align 4
  %cmp368 = icmp slt i32 %309, %310
  br i1 %cmp368, label %if.then370, label %if.end452

if.then370:                                       ; preds = %if.end367
  %311 = load ptr, ptr %ns.addr, align 8
  %312 = load i32, ptr %311, align 4
  store i32 %312, ptr %i__1, align 4
  %313 = load i32, ptr %infqr, align 4
  %add371 = add nsw i32 %313, 1
  store i32 %add371, ptr %i__, align 4
  br label %for.cond372

for.cond372:                                      ; preds = %for.inc449, %if.then370
  %314 = load i32, ptr %i__, align 4
  %315 = load i32, ptr %i__1, align 4
  %cmp373 = icmp sle i32 %314, %315
  br i1 %cmp373, label %for.body375, label %for.end451

for.body375:                                      ; preds = %for.cond372
  %316 = load i32, ptr %i__, align 4
  store i32 %316, ptr %ifst, align 4
  %317 = load ptr, ptr %ns.addr, align 8
  %318 = load i32, ptr %317, align 4
  store i32 %318, ptr %i__2, align 4
  %319 = load i32, ptr %i__, align 4
  %add376 = add nsw i32 %319, 1
  store i32 %add376, ptr %j, align 4
  br label %for.cond377

for.cond377:                                      ; preds = %for.inc437, %for.body375
  %320 = load i32, ptr %j, align 4
  %321 = load i32, ptr %i__2, align 4
  %cmp378 = icmp sle i32 %320, %321
  br i1 %cmp378, label %for.body380, label %for.end439

for.body380:                                      ; preds = %for.cond377
  %322 = load i32, ptr %j, align 4
  %323 = load i32, ptr %j, align 4
  %324 = load i32, ptr %t_dim1, align 4
  %mul381 = mul nsw i32 %323, %324
  %add382 = add nsw i32 %322, %mul381
  store i32 %add382, ptr %i__3, align 4
  %325 = load i32, ptr %ifst, align 4
  %326 = load i32, ptr %ifst, align 4
  %327 = load i32, ptr %t_dim1, align 4
  %mul383 = mul nsw i32 %326, %327
  %add384 = add nsw i32 %325, %mul383
  store i32 %add384, ptr %i__4, align 4
  %328 = load ptr, ptr %t.addr, align 8
  %329 = load i32, ptr %i__3, align 4
  %idxprom385 = sext i32 %329 to i64
  %arrayidx386 = getelementptr inbounds %struct.complex, ptr %328, i64 %idxprom385
  %r387 = getelementptr inbounds %struct.complex, ptr %arrayidx386, i32 0, i32 0
  %330 = load float, ptr %r387, align 4
  store float %330, ptr %r__1, align 4
  %331 = load float, ptr %r__1, align 4
  %cmp388 = fcmp oge float %331, 0.000000e+00
  br i1 %cmp388, label %cond.true390, label %cond.false391

cond.true390:                                     ; preds = %for.body380
  %332 = load float, ptr %r__1, align 4
  br label %cond.end393

cond.false391:                                    ; preds = %for.body380
  %333 = load float, ptr %r__1, align 4
  %fneg392 = fneg float %333
  br label %cond.end393

cond.end393:                                      ; preds = %cond.false391, %cond.true390
  %cond394 = phi float [ %332, %cond.true390 ], [ %fneg392, %cond.false391 ]
  %334 = load ptr, ptr %t.addr, align 8
  %335 = load i32, ptr %j, align 4
  %336 = load i32, ptr %j, align 4
  %337 = load i32, ptr %t_dim1, align 4
  %mul395 = mul nsw i32 %336, %337
  %add396 = add nsw i32 %335, %mul395
  %idxprom397 = sext i32 %add396 to i64
  %arrayidx398 = getelementptr inbounds %struct.complex, ptr %334, i64 %idxprom397
  %call399 = call double @r_imag(ptr noundef %arrayidx398)
  %conv400 = fptrunc double %call399 to float
  store float %conv400, ptr %r__2, align 4
  %338 = load float, ptr %r__2, align 4
  %cmp401 = fcmp oge float %338, 0.000000e+00
  br i1 %cmp401, label %cond.true403, label %cond.false404

cond.true403:                                     ; preds = %cond.end393
  %339 = load float, ptr %r__2, align 4
  br label %cond.end406

cond.false404:                                    ; preds = %cond.end393
  %340 = load float, ptr %r__2, align 4
  %fneg405 = fneg float %340
  br label %cond.end406

cond.end406:                                      ; preds = %cond.false404, %cond.true403
  %cond407 = phi float [ %339, %cond.true403 ], [ %fneg405, %cond.false404 ]
  %add408 = fadd float %cond394, %cond407
  %341 = load ptr, ptr %t.addr, align 8
  %342 = load i32, ptr %i__4, align 4
  %idxprom409 = sext i32 %342 to i64
  %arrayidx410 = getelementptr inbounds %struct.complex, ptr %341, i64 %idxprom409
  %r411 = getelementptr inbounds %struct.complex, ptr %arrayidx410, i32 0, i32 0
  %343 = load float, ptr %r411, align 4
  store float %343, ptr %r__3, align 4
  %344 = load float, ptr %r__3, align 4
  %cmp412 = fcmp oge float %344, 0.000000e+00
  br i1 %cmp412, label %cond.true414, label %cond.false415

cond.true414:                                     ; preds = %cond.end406
  %345 = load float, ptr %r__3, align 4
  br label %cond.end417

cond.false415:                                    ; preds = %cond.end406
  %346 = load float, ptr %r__3, align 4
  %fneg416 = fneg float %346
  br label %cond.end417

cond.end417:                                      ; preds = %cond.false415, %cond.true414
  %cond418 = phi float [ %345, %cond.true414 ], [ %fneg416, %cond.false415 ]
  %347 = load ptr, ptr %t.addr, align 8
  %348 = load i32, ptr %ifst, align 4
  %349 = load i32, ptr %ifst, align 4
  %350 = load i32, ptr %t_dim1, align 4
  %mul419 = mul nsw i32 %349, %350
  %add420 = add nsw i32 %348, %mul419
  %idxprom421 = sext i32 %add420 to i64
  %arrayidx422 = getelementptr inbounds %struct.complex, ptr %347, i64 %idxprom421
  %call423 = call double @r_imag(ptr noundef %arrayidx422)
  %conv424 = fptrunc double %call423 to float
  store float %conv424, ptr %r__4, align 4
  %351 = load float, ptr %r__4, align 4
  %cmp425 = fcmp oge float %351, 0.000000e+00
  br i1 %cmp425, label %cond.true427, label %cond.false428

cond.true427:                                     ; preds = %cond.end417
  %352 = load float, ptr %r__4, align 4
  br label %cond.end430

cond.false428:                                    ; preds = %cond.end417
  %353 = load float, ptr %r__4, align 4
  %fneg429 = fneg float %353
  br label %cond.end430

cond.end430:                                      ; preds = %cond.false428, %cond.true427
  %cond431 = phi float [ %352, %cond.true427 ], [ %fneg429, %cond.false428 ]
  %add432 = fadd float %cond418, %cond431
  %cmp433 = fcmp ogt float %add408, %add432
  br i1 %cmp433, label %if.then435, label %if.end436

if.then435:                                       ; preds = %cond.end430
  %354 = load i32, ptr %j, align 4
  store i32 %354, ptr %ifst, align 4
  br label %if.end436

if.end436:                                        ; preds = %if.then435, %cond.end430
  br label %for.inc437

for.inc437:                                       ; preds = %if.end436
  %355 = load i32, ptr %j, align 4
  %inc438 = add nsw i32 %355, 1
  store i32 %inc438, ptr %j, align 4
  br label %for.cond377, !llvm.loop !7

for.end439:                                       ; preds = %for.cond377
  %356 = load i32, ptr %i__, align 4
  store i32 %356, ptr %ilst, align 4
  %357 = load i32, ptr %ifst, align 4
  %358 = load i32, ptr %ilst, align 4
  %cmp440 = icmp ne i32 %357, %358
  br i1 %cmp440, label %if.then442, label %if.end448

if.then442:                                       ; preds = %for.end439
  %359 = load ptr, ptr %t.addr, align 8
  %360 = load i32, ptr %t_offset, align 4
  %idxprom443 = sext i32 %360 to i64
  %arrayidx444 = getelementptr inbounds %struct.complex, ptr %359, i64 %idxprom443
  %361 = load ptr, ptr %ldt.addr, align 8
  %362 = load ptr, ptr %v.addr, align 8
  %363 = load i32, ptr %v_offset, align 4
  %idxprom445 = sext i32 %363 to i64
  %arrayidx446 = getelementptr inbounds %struct.complex, ptr %362, i64 %idxprom445
  %364 = load ptr, ptr %ldv.addr, align 8
  %call447 = call i32 @ctrexc_(ptr noundef @.str.8, ptr noundef %jw, ptr noundef %arrayidx444, ptr noundef %361, ptr noundef %arrayidx446, ptr noundef %364, ptr noundef %ifst, ptr noundef %ilst, ptr noundef %info)
  br label %if.end448

if.end448:                                        ; preds = %if.then442, %for.end439
  br label %for.inc449

for.inc449:                                       ; preds = %if.end448
  %365 = load i32, ptr %i__, align 4
  %inc450 = add nsw i32 %365, 1
  store i32 %inc450, ptr %i__, align 4
  br label %for.cond372, !llvm.loop !8

for.end451:                                       ; preds = %for.cond372
  br label %if.end452

if.end452:                                        ; preds = %for.end451, %if.end367
  %366 = load i32, ptr %jw, align 4
  store i32 %366, ptr %i__1, align 4
  %367 = load i32, ptr %infqr, align 4
  %add453 = add nsw i32 %367, 1
  store i32 %add453, ptr %i__, align 4
  br label %for.cond454

for.cond454:                                      ; preds = %for.inc474, %if.end452
  %368 = load i32, ptr %i__, align 4
  %369 = load i32, ptr %i__1, align 4
  %cmp455 = icmp sle i32 %368, %369
  br i1 %cmp455, label %for.body457, label %for.end476

for.body457:                                      ; preds = %for.cond454
  %370 = load i32, ptr %kwtop, align 4
  %371 = load i32, ptr %i__, align 4
  %add458 = add nsw i32 %370, %371
  %sub459 = sub nsw i32 %add458, 1
  store i32 %sub459, ptr %i__2, align 4
  %372 = load i32, ptr %i__, align 4
  %373 = load i32, ptr %i__, align 4
  %374 = load i32, ptr %t_dim1, align 4
  %mul460 = mul nsw i32 %373, %374
  %add461 = add nsw i32 %372, %mul460
  store i32 %add461, ptr %i__3, align 4
  %375 = load ptr, ptr %t.addr, align 8
  %376 = load i32, ptr %i__3, align 4
  %idxprom462 = sext i32 %376 to i64
  %arrayidx463 = getelementptr inbounds %struct.complex, ptr %375, i64 %idxprom462
  %r464 = getelementptr inbounds %struct.complex, ptr %arrayidx463, i32 0, i32 0
  %377 = load float, ptr %r464, align 4
  %378 = load ptr, ptr %sh.addr, align 8
  %379 = load i32, ptr %i__2, align 4
  %idxprom465 = sext i32 %379 to i64
  %arrayidx466 = getelementptr inbounds %struct.complex, ptr %378, i64 %idxprom465
  %r467 = getelementptr inbounds %struct.complex, ptr %arrayidx466, i32 0, i32 0
  store float %377, ptr %r467, align 4
  %380 = load ptr, ptr %t.addr, align 8
  %381 = load i32, ptr %i__3, align 4
  %idxprom468 = sext i32 %381 to i64
  %arrayidx469 = getelementptr inbounds %struct.complex, ptr %380, i64 %idxprom468
  %i470 = getelementptr inbounds %struct.complex, ptr %arrayidx469, i32 0, i32 1
  %382 = load float, ptr %i470, align 4
  %383 = load ptr, ptr %sh.addr, align 8
  %384 = load i32, ptr %i__2, align 4
  %idxprom471 = sext i32 %384 to i64
  %arrayidx472 = getelementptr inbounds %struct.complex, ptr %383, i64 %idxprom471
  %i473 = getelementptr inbounds %struct.complex, ptr %arrayidx472, i32 0, i32 1
  store float %382, ptr %i473, align 4
  br label %for.inc474

for.inc474:                                       ; preds = %for.body457
  %385 = load i32, ptr %i__, align 4
  %inc475 = add nsw i32 %385, 1
  store i32 %inc475, ptr %i__, align 4
  br label %for.cond454, !llvm.loop !9

for.end476:                                       ; preds = %for.cond454
  %386 = load ptr, ptr %ns.addr, align 8
  %387 = load i32, ptr %386, align 4
  %388 = load i32, ptr %jw, align 4
  %cmp477 = icmp slt i32 %387, %388
  br i1 %cmp477, label %if.then485, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end476
  %r479 = getelementptr inbounds %struct.complex, ptr %s, i32 0, i32 0
  %389 = load float, ptr %r479, align 4
  %cmp480 = fcmp oeq float %389, 0.000000e+00
  br i1 %cmp480, label %land.lhs.true, label %if.end769

land.lhs.true:                                    ; preds = %lor.lhs.false
  %i482 = getelementptr inbounds %struct.complex, ptr %s, i32 0, i32 1
  %390 = load float, ptr %i482, align 4
  %cmp483 = fcmp oeq float %390, 0.000000e+00
  br i1 %cmp483, label %if.then485, label %if.end769

if.then485:                                       ; preds = %land.lhs.true, %for.end476
  %391 = load ptr, ptr %ns.addr, align 8
  %392 = load i32, ptr %391, align 4
  %cmp486 = icmp sgt i32 %392, 1
  br i1 %cmp486, label %land.lhs.true488, label %if.end565

land.lhs.true488:                                 ; preds = %if.then485
  %r489 = getelementptr inbounds %struct.complex, ptr %s, i32 0, i32 0
  %393 = load float, ptr %r489, align 4
  %cmp490 = fcmp une float %393, 0.000000e+00
  br i1 %cmp490, label %if.then496, label %lor.lhs.false492

lor.lhs.false492:                                 ; preds = %land.lhs.true488
  %i493 = getelementptr inbounds %struct.complex, ptr %s, i32 0, i32 1
  %394 = load float, ptr %i493, align 4
  %cmp494 = fcmp une float %394, 0.000000e+00
  br i1 %cmp494, label %if.then496, label %if.end565

if.then496:                                       ; preds = %lor.lhs.false492, %land.lhs.true488
  %395 = load ptr, ptr %ns.addr, align 8
  %396 = load ptr, ptr %v.addr, align 8
  %397 = load i32, ptr %v_offset, align 4
  %idxprom497 = sext i32 %397 to i64
  %arrayidx498 = getelementptr inbounds %struct.complex, ptr %396, i64 %idxprom497
  %398 = load ptr, ptr %ldv.addr, align 8
  %399 = load ptr, ptr %work.addr, align 8
  %arrayidx499 = getelementptr inbounds %struct.complex, ptr %399, i64 1
  %call500 = call i32 @ccopy_(ptr noundef %395, ptr noundef %arrayidx498, ptr noundef %398, ptr noundef %arrayidx499, ptr noundef @c__1)
  %400 = load ptr, ptr %ns.addr, align 8
  %401 = load i32, ptr %400, align 4
  store i32 %401, ptr %i__1, align 4
  store i32 1, ptr %i__, align 4
  br label %for.cond501

for.cond501:                                      ; preds = %for.inc515, %if.then496
  %402 = load i32, ptr %i__, align 4
  %403 = load i32, ptr %i__1, align 4
  %cmp502 = icmp sle i32 %402, %403
  br i1 %cmp502, label %for.body504, label %for.end517

for.body504:                                      ; preds = %for.cond501
  %404 = load i32, ptr %i__, align 4
  store i32 %404, ptr %i__2, align 4
  %405 = load ptr, ptr %work.addr, align 8
  %406 = load i32, ptr %i__, align 4
  %idxprom505 = sext i32 %406 to i64
  %arrayidx506 = getelementptr inbounds %struct.complex, ptr %405, i64 %idxprom505
  call void @r_cnjg(ptr noundef %q__1, ptr noundef %arrayidx506)
  %r507 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %407 = load float, ptr %r507, align 4
  %408 = load ptr, ptr %work.addr, align 8
  %409 = load i32, ptr %i__2, align 4
  %idxprom508 = sext i32 %409 to i64
  %arrayidx509 = getelementptr inbounds %struct.complex, ptr %408, i64 %idxprom508
  %r510 = getelementptr inbounds %struct.complex, ptr %arrayidx509, i32 0, i32 0
  store float %407, ptr %r510, align 4
  %i511 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %410 = load float, ptr %i511, align 4
  %411 = load ptr, ptr %work.addr, align 8
  %412 = load i32, ptr %i__2, align 4
  %idxprom512 = sext i32 %412 to i64
  %arrayidx513 = getelementptr inbounds %struct.complex, ptr %411, i64 %idxprom512
  %i514 = getelementptr inbounds %struct.complex, ptr %arrayidx513, i32 0, i32 1
  store float %410, ptr %i514, align 4
  br label %for.inc515

for.inc515:                                       ; preds = %for.body504
  %413 = load i32, ptr %i__, align 4
  %inc516 = add nsw i32 %413, 1
  store i32 %inc516, ptr %i__, align 4
  br label %for.cond501, !llvm.loop !10

for.end517:                                       ; preds = %for.cond501
  %414 = load ptr, ptr %work.addr, align 8
  %arrayidx518 = getelementptr inbounds %struct.complex, ptr %414, i64 1
  %r519 = getelementptr inbounds %struct.complex, ptr %arrayidx518, i32 0, i32 0
  %415 = load float, ptr %r519, align 4
  %r520 = getelementptr inbounds %struct.complex, ptr %beta, i32 0, i32 0
  store float %415, ptr %r520, align 4
  %416 = load ptr, ptr %work.addr, align 8
  %arrayidx521 = getelementptr inbounds %struct.complex, ptr %416, i64 1
  %i522 = getelementptr inbounds %struct.complex, ptr %arrayidx521, i32 0, i32 1
  %417 = load float, ptr %i522, align 4
  %i523 = getelementptr inbounds %struct.complex, ptr %beta, i32 0, i32 1
  store float %417, ptr %i523, align 4
  %418 = load ptr, ptr %ns.addr, align 8
  %419 = load ptr, ptr %work.addr, align 8
  %arrayidx524 = getelementptr inbounds %struct.complex, ptr %419, i64 2
  %call525 = call i32 @clarfg_(ptr noundef %418, ptr noundef %beta, ptr noundef %arrayidx524, ptr noundef @c__1, ptr noundef %tau)
  %420 = load ptr, ptr %work.addr, align 8
  %arrayidx526 = getelementptr inbounds %struct.complex, ptr %420, i64 1
  %r527 = getelementptr inbounds %struct.complex, ptr %arrayidx526, i32 0, i32 0
  store float 1.000000e+00, ptr %r527, align 4
  %421 = load ptr, ptr %work.addr, align 8
  %arrayidx528 = getelementptr inbounds %struct.complex, ptr %421, i64 1
  %i529 = getelementptr inbounds %struct.complex, ptr %arrayidx528, i32 0, i32 1
  store float 0.000000e+00, ptr %i529, align 4
  %422 = load i32, ptr %jw, align 4
  %sub530 = sub nsw i32 %422, 2
  store i32 %sub530, ptr %i__1, align 4
  %423 = load i32, ptr %jw, align 4
  %sub531 = sub nsw i32 %423, 2
  store i32 %sub531, ptr %i__2, align 4
  %424 = load ptr, ptr %t.addr, align 8
  %425 = load i32, ptr %t_dim1, align 4
  %add532 = add nsw i32 %425, 3
  %idxprom533 = sext i32 %add532 to i64
  %arrayidx534 = getelementptr inbounds %struct.complex, ptr %424, i64 %idxprom533
  %426 = load ptr, ptr %ldt.addr, align 8
  %call535 = call i32 @claset_(ptr noundef @.str.9, ptr noundef %i__1, ptr noundef %i__2, ptr noundef @c_b1, ptr noundef @c_b1, ptr noundef %arrayidx534, ptr noundef %426)
  call void @r_cnjg(ptr noundef %q__1, ptr noundef %tau)
  %427 = load ptr, ptr %ns.addr, align 8
  %428 = load ptr, ptr %work.addr, align 8
  %arrayidx536 = getelementptr inbounds %struct.complex, ptr %428, i64 1
  %429 = load ptr, ptr %t.addr, align 8
  %430 = load i32, ptr %t_offset, align 4
  %idxprom537 = sext i32 %430 to i64
  %arrayidx538 = getelementptr inbounds %struct.complex, ptr %429, i64 %idxprom537
  %431 = load ptr, ptr %ldt.addr, align 8
  %432 = load ptr, ptr %work.addr, align 8
  %433 = load i32, ptr %jw, align 4
  %add539 = add nsw i32 %433, 1
  %idxprom540 = sext i32 %add539 to i64
  %arrayidx541 = getelementptr inbounds %struct.complex, ptr %432, i64 %idxprom540
  %call542 = call i32 @clarf_(ptr noundef @.str.9, ptr noundef %427, ptr noundef %jw, ptr noundef %arrayidx536, ptr noundef @c__1, ptr noundef %q__1, ptr noundef %arrayidx538, ptr noundef %431, ptr noundef %arrayidx541)
  %434 = load ptr, ptr %ns.addr, align 8
  %435 = load ptr, ptr %ns.addr, align 8
  %436 = load ptr, ptr %work.addr, align 8
  %arrayidx543 = getelementptr inbounds %struct.complex, ptr %436, i64 1
  %437 = load ptr, ptr %t.addr, align 8
  %438 = load i32, ptr %t_offset, align 4
  %idxprom544 = sext i32 %438 to i64
  %arrayidx545 = getelementptr inbounds %struct.complex, ptr %437, i64 %idxprom544
  %439 = load ptr, ptr %ldt.addr, align 8
  %440 = load ptr, ptr %work.addr, align 8
  %441 = load i32, ptr %jw, align 4
  %add546 = add nsw i32 %441, 1
  %idxprom547 = sext i32 %add546 to i64
  %arrayidx548 = getelementptr inbounds %struct.complex, ptr %440, i64 %idxprom547
  %call549 = call i32 @clarf_(ptr noundef @.str, ptr noundef %434, ptr noundef %435, ptr noundef %arrayidx543, ptr noundef @c__1, ptr noundef %tau, ptr noundef %arrayidx545, ptr noundef %439, ptr noundef %arrayidx548)
  %442 = load ptr, ptr %ns.addr, align 8
  %443 = load ptr, ptr %work.addr, align 8
  %arrayidx550 = getelementptr inbounds %struct.complex, ptr %443, i64 1
  %444 = load ptr, ptr %v.addr, align 8
  %445 = load i32, ptr %v_offset, align 4
  %idxprom551 = sext i32 %445 to i64
  %arrayidx552 = getelementptr inbounds %struct.complex, ptr %444, i64 %idxprom551
  %446 = load ptr, ptr %ldv.addr, align 8
  %447 = load ptr, ptr %work.addr, align 8
  %448 = load i32, ptr %jw, align 4
  %add553 = add nsw i32 %448, 1
  %idxprom554 = sext i32 %add553 to i64
  %arrayidx555 = getelementptr inbounds %struct.complex, ptr %447, i64 %idxprom554
  %call556 = call i32 @clarf_(ptr noundef @.str, ptr noundef %jw, ptr noundef %442, ptr noundef %arrayidx550, ptr noundef @c__1, ptr noundef %tau, ptr noundef %arrayidx552, ptr noundef %446, ptr noundef %arrayidx555)
  %449 = load ptr, ptr %lwork.addr, align 8
  %450 = load i32, ptr %449, align 4
  %451 = load i32, ptr %jw, align 4
  %sub557 = sub nsw i32 %450, %451
  store i32 %sub557, ptr %i__1, align 4
  %452 = load ptr, ptr %ns.addr, align 8
  %453 = load ptr, ptr %t.addr, align 8
  %454 = load i32, ptr %t_offset, align 4
  %idxprom558 = sext i32 %454 to i64
  %arrayidx559 = getelementptr inbounds %struct.complex, ptr %453, i64 %idxprom558
  %455 = load ptr, ptr %ldt.addr, align 8
  %456 = load ptr, ptr %work.addr, align 8
  %arrayidx560 = getelementptr inbounds %struct.complex, ptr %456, i64 1
  %457 = load ptr, ptr %work.addr, align 8
  %458 = load i32, ptr %jw, align 4
  %add561 = add nsw i32 %458, 1
  %idxprom562 = sext i32 %add561 to i64
  %arrayidx563 = getelementptr inbounds %struct.complex, ptr %457, i64 %idxprom562
  %call564 = call i32 @cgehrd_(ptr noundef %jw, ptr noundef @c__1, ptr noundef %452, ptr noundef %arrayidx559, ptr noundef %455, ptr noundef %arrayidx560, ptr noundef %arrayidx563, ptr noundef %i__1, ptr noundef %info)
  br label %if.end565

if.end565:                                        ; preds = %for.end517, %lor.lhs.false492, %if.then485
  %459 = load i32, ptr %kwtop, align 4
  %cmp566 = icmp sgt i32 %459, 1
  br i1 %cmp566, label %if.then568, label %if.end597

if.then568:                                       ; preds = %if.end565
  %460 = load i32, ptr %kwtop, align 4
  %461 = load i32, ptr %kwtop, align 4
  %sub569 = sub nsw i32 %461, 1
  %462 = load i32, ptr %h_dim1, align 4
  %mul570 = mul nsw i32 %sub569, %462
  %add571 = add nsw i32 %460, %mul570
  store i32 %add571, ptr %i__1, align 4
  %463 = load ptr, ptr %v.addr, align 8
  %464 = load i32, ptr %v_dim1, align 4
  %add572 = add nsw i32 %464, 1
  %idxprom573 = sext i32 %add572 to i64
  %arrayidx574 = getelementptr inbounds %struct.complex, ptr %463, i64 %idxprom573
  call void @r_cnjg(ptr noundef %q__2, ptr noundef %arrayidx574)
  %r575 = getelementptr inbounds %struct.complex, ptr %s, i32 0, i32 0
  %465 = load float, ptr %r575, align 4
  %r576 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  %466 = load float, ptr %r576, align 4
  %i578 = getelementptr inbounds %struct.complex, ptr %s, i32 0, i32 1
  %467 = load float, ptr %i578, align 4
  %i579 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  %468 = load float, ptr %i579, align 4
  %mul580 = fmul float %467, %468
  %neg = fneg float %mul580
  %469 = call float @llvm.fmuladd.f32(float %465, float %466, float %neg)
  %r581 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float %469, ptr %r581, align 4
  %r582 = getelementptr inbounds %struct.complex, ptr %s, i32 0, i32 0
  %470 = load float, ptr %r582, align 4
  %i583 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  %471 = load float, ptr %i583, align 4
  %i585 = getelementptr inbounds %struct.complex, ptr %s, i32 0, i32 1
  %472 = load float, ptr %i585, align 4
  %r586 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  %473 = load float, ptr %r586, align 4
  %mul587 = fmul float %472, %473
  %474 = call float @llvm.fmuladd.f32(float %470, float %471, float %mul587)
  %i588 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float %474, ptr %i588, align 4
  %r589 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %475 = load float, ptr %r589, align 4
  %476 = load ptr, ptr %h__.addr, align 8
  %477 = load i32, ptr %i__1, align 4
  %idxprom590 = sext i32 %477 to i64
  %arrayidx591 = getelementptr inbounds %struct.complex, ptr %476, i64 %idxprom590
  %r592 = getelementptr inbounds %struct.complex, ptr %arrayidx591, i32 0, i32 0
  store float %475, ptr %r592, align 4
  %i593 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %478 = load float, ptr %i593, align 4
  %479 = load ptr, ptr %h__.addr, align 8
  %480 = load i32, ptr %i__1, align 4
  %idxprom594 = sext i32 %480 to i64
  %arrayidx595 = getelementptr inbounds %struct.complex, ptr %479, i64 %idxprom594
  %i596 = getelementptr inbounds %struct.complex, ptr %arrayidx595, i32 0, i32 1
  store float %478, ptr %i596, align 4
  br label %if.end597

if.end597:                                        ; preds = %if.then568, %if.end565
  %481 = load ptr, ptr %t.addr, align 8
  %482 = load i32, ptr %t_offset, align 4
  %idxprom598 = sext i32 %482 to i64
  %arrayidx599 = getelementptr inbounds %struct.complex, ptr %481, i64 %idxprom598
  %483 = load ptr, ptr %ldt.addr, align 8
  %484 = load ptr, ptr %h__.addr, align 8
  %485 = load i32, ptr %kwtop, align 4
  %486 = load i32, ptr %kwtop, align 4
  %487 = load i32, ptr %h_dim1, align 4
  %mul600 = mul nsw i32 %486, %487
  %add601 = add nsw i32 %485, %mul600
  %idxprom602 = sext i32 %add601 to i64
  %arrayidx603 = getelementptr inbounds %struct.complex, ptr %484, i64 %idxprom602
  %488 = load ptr, ptr %ldh.addr, align 8
  %call604 = call i32 @clacpy_(ptr noundef @.str.4, ptr noundef %jw, ptr noundef %jw, ptr noundef %arrayidx599, ptr noundef %483, ptr noundef %arrayidx603, ptr noundef %488)
  %489 = load i32, ptr %jw, align 4
  %sub605 = sub nsw i32 %489, 1
  store i32 %sub605, ptr %i__1, align 4
  %490 = load ptr, ptr %ldt.addr, align 8
  %491 = load i32, ptr %490, align 4
  %add606 = add nsw i32 %491, 1
  store i32 %add606, ptr %i__2, align 4
  %492 = load ptr, ptr %ldh.addr, align 8
  %493 = load i32, ptr %492, align 4
  %add607 = add nsw i32 %493, 1
  store i32 %add607, ptr %i__3, align 4
  %494 = load ptr, ptr %t.addr, align 8
  %495 = load i32, ptr %t_dim1, align 4
  %add608 = add nsw i32 %495, 2
  %idxprom609 = sext i32 %add608 to i64
  %arrayidx610 = getelementptr inbounds %struct.complex, ptr %494, i64 %idxprom609
  %496 = load ptr, ptr %h__.addr, align 8
  %497 = load i32, ptr %kwtop, align 4
  %add611 = add nsw i32 %497, 1
  %498 = load i32, ptr %kwtop, align 4
  %499 = load i32, ptr %h_dim1, align 4
  %mul612 = mul nsw i32 %498, %499
  %add613 = add nsw i32 %add611, %mul612
  %idxprom614 = sext i32 %add613 to i64
  %arrayidx615 = getelementptr inbounds %struct.complex, ptr %496, i64 %idxprom614
  %call616 = call i32 @ccopy_(ptr noundef %i__1, ptr noundef %arrayidx610, ptr noundef %i__2, ptr noundef %arrayidx615, ptr noundef %i__3)
  %500 = load ptr, ptr %ns.addr, align 8
  %501 = load i32, ptr %500, align 4
  %cmp617 = icmp sgt i32 %501, 1
  br i1 %cmp617, label %land.lhs.true619, label %if.end638

land.lhs.true619:                                 ; preds = %if.end597
  %r620 = getelementptr inbounds %struct.complex, ptr %s, i32 0, i32 0
  %502 = load float, ptr %r620, align 4
  %cmp621 = fcmp une float %502, 0.000000e+00
  br i1 %cmp621, label %if.then627, label %lor.lhs.false623

lor.lhs.false623:                                 ; preds = %land.lhs.true619
  %i624 = getelementptr inbounds %struct.complex, ptr %s, i32 0, i32 1
  %503 = load float, ptr %i624, align 4
  %cmp625 = fcmp une float %503, 0.000000e+00
  br i1 %cmp625, label %if.then627, label %if.end638

if.then627:                                       ; preds = %lor.lhs.false623, %land.lhs.true619
  %504 = load ptr, ptr %lwork.addr, align 8
  %505 = load i32, ptr %504, align 4
  %506 = load i32, ptr %jw, align 4
  %sub628 = sub nsw i32 %505, %506
  store i32 %sub628, ptr %i__1, align 4
  %507 = load ptr, ptr %ns.addr, align 8
  %508 = load ptr, ptr %ns.addr, align 8
  %509 = load ptr, ptr %t.addr, align 8
  %510 = load i32, ptr %t_offset, align 4
  %idxprom629 = sext i32 %510 to i64
  %arrayidx630 = getelementptr inbounds %struct.complex, ptr %509, i64 %idxprom629
  %511 = load ptr, ptr %ldt.addr, align 8
  %512 = load ptr, ptr %work.addr, align 8
  %arrayidx631 = getelementptr inbounds %struct.complex, ptr %512, i64 1
  %513 = load ptr, ptr %v.addr, align 8
  %514 = load i32, ptr %v_offset, align 4
  %idxprom632 = sext i32 %514 to i64
  %arrayidx633 = getelementptr inbounds %struct.complex, ptr %513, i64 %idxprom632
  %515 = load ptr, ptr %ldv.addr, align 8
  %516 = load ptr, ptr %work.addr, align 8
  %517 = load i32, ptr %jw, align 4
  %add634 = add nsw i32 %517, 1
  %idxprom635 = sext i32 %add634 to i64
  %arrayidx636 = getelementptr inbounds %struct.complex, ptr %516, i64 %idxprom635
  %call637 = call i32 @cunmhr_(ptr noundef @.str, ptr noundef @.str.1, ptr noundef %jw, ptr noundef %507, ptr noundef @c__1, ptr noundef %508, ptr noundef %arrayidx630, ptr noundef %511, ptr noundef %arrayidx631, ptr noundef %arrayidx633, ptr noundef %515, ptr noundef %arrayidx636, ptr noundef %i__1, ptr noundef %info)
  br label %if.end638

if.end638:                                        ; preds = %if.then627, %lor.lhs.false623, %if.end597
  %518 = load ptr, ptr %wantt.addr, align 8
  %519 = load i32, ptr %518, align 4
  %tobool = icmp ne i32 %519, 0
  br i1 %tobool, label %if.then639, label %if.else640

if.then639:                                       ; preds = %if.end638
  store i32 1, ptr %ltop, align 4
  br label %if.end641

if.else640:                                       ; preds = %if.end638
  %520 = load ptr, ptr %ktop.addr, align 8
  %521 = load i32, ptr %520, align 4
  store i32 %521, ptr %ltop, align 4
  br label %if.end641

if.end641:                                        ; preds = %if.else640, %if.then639
  %522 = load i32, ptr %kwtop, align 4
  %sub642 = sub nsw i32 %522, 1
  store i32 %sub642, ptr %i__1, align 4
  %523 = load ptr, ptr %nv.addr, align 8
  %524 = load i32, ptr %523, align 4
  store i32 %524, ptr %i__2, align 4
  %525 = load i32, ptr %ltop, align 4
  store i32 %525, ptr %krow, align 4
  br label %for.cond643

for.cond643:                                      ; preds = %for.inc679, %if.end641
  %526 = load i32, ptr %i__2, align 4
  %cmp644 = icmp slt i32 %526, 0
  br i1 %cmp644, label %cond.true646, label %cond.false649

cond.true646:                                     ; preds = %for.cond643
  %527 = load i32, ptr %krow, align 4
  %528 = load i32, ptr %i__1, align 4
  %cmp647 = icmp sge i32 %527, %528
  %conv648 = zext i1 %cmp647 to i32
  br label %cond.end652

cond.false649:                                    ; preds = %for.cond643
  %529 = load i32, ptr %krow, align 4
  %530 = load i32, ptr %i__1, align 4
  %cmp650 = icmp sle i32 %529, %530
  %conv651 = zext i1 %cmp650 to i32
  br label %cond.end652

cond.end652:                                      ; preds = %cond.false649, %cond.true646
  %cond653 = phi i32 [ %conv648, %cond.true646 ], [ %conv651, %cond.false649 ]
  %tobool654 = icmp ne i32 %cond653, 0
  br i1 %tobool654, label %for.body655, label %for.end681

for.body655:                                      ; preds = %cond.end652
  %531 = load ptr, ptr %nv.addr, align 8
  %532 = load i32, ptr %531, align 4
  store i32 %532, ptr %i__3, align 4
  %533 = load i32, ptr %kwtop, align 4
  %534 = load i32, ptr %krow, align 4
  %sub656 = sub nsw i32 %533, %534
  store i32 %sub656, ptr %i__4, align 4
  %535 = load i32, ptr %i__3, align 4
  %536 = load i32, ptr %i__4, align 4
  %cmp657 = icmp sle i32 %535, %536
  br i1 %cmp657, label %cond.true659, label %cond.false660

cond.true659:                                     ; preds = %for.body655
  %537 = load i32, ptr %i__3, align 4
  br label %cond.end661

cond.false660:                                    ; preds = %for.body655
  %538 = load i32, ptr %i__4, align 4
  br label %cond.end661

cond.end661:                                      ; preds = %cond.false660, %cond.true659
  %cond662 = phi i32 [ %537, %cond.true659 ], [ %538, %cond.false660 ]
  store i32 %cond662, ptr %kln, align 4
  %539 = load ptr, ptr %h__.addr, align 8
  %540 = load i32, ptr %krow, align 4
  %541 = load i32, ptr %kwtop, align 4
  %542 = load i32, ptr %h_dim1, align 4
  %mul663 = mul nsw i32 %541, %542
  %add664 = add nsw i32 %540, %mul663
  %idxprom665 = sext i32 %add664 to i64
  %arrayidx666 = getelementptr inbounds %struct.complex, ptr %539, i64 %idxprom665
  %543 = load ptr, ptr %ldh.addr, align 8
  %544 = load ptr, ptr %v.addr, align 8
  %545 = load i32, ptr %v_offset, align 4
  %idxprom667 = sext i32 %545 to i64
  %arrayidx668 = getelementptr inbounds %struct.complex, ptr %544, i64 %idxprom667
  %546 = load ptr, ptr %ldv.addr, align 8
  %547 = load ptr, ptr %wv.addr, align 8
  %548 = load i32, ptr %wv_offset, align 4
  %idxprom669 = sext i32 %548 to i64
  %arrayidx670 = getelementptr inbounds %struct.complex, ptr %547, i64 %idxprom669
  %549 = load ptr, ptr %ldwv.addr, align 8
  %call671 = call i32 @cgemm_(ptr noundef @.str.1, ptr noundef @.str.1, ptr noundef %kln, ptr noundef %jw, ptr noundef %jw, ptr noundef @c_b2, ptr noundef %arrayidx666, ptr noundef %543, ptr noundef %arrayidx668, ptr noundef %546, ptr noundef @c_b1, ptr noundef %arrayidx670, ptr noundef %549)
  %550 = load ptr, ptr %wv.addr, align 8
  %551 = load i32, ptr %wv_offset, align 4
  %idxprom672 = sext i32 %551 to i64
  %arrayidx673 = getelementptr inbounds %struct.complex, ptr %550, i64 %idxprom672
  %552 = load ptr, ptr %ldwv.addr, align 8
  %553 = load ptr, ptr %h__.addr, align 8
  %554 = load i32, ptr %krow, align 4
  %555 = load i32, ptr %kwtop, align 4
  %556 = load i32, ptr %h_dim1, align 4
  %mul674 = mul nsw i32 %555, %556
  %add675 = add nsw i32 %554, %mul674
  %idxprom676 = sext i32 %add675 to i64
  %arrayidx677 = getelementptr inbounds %struct.complex, ptr %553, i64 %idxprom676
  %557 = load ptr, ptr %ldh.addr, align 8
  %call678 = call i32 @clacpy_(ptr noundef @.str.5, ptr noundef %kln, ptr noundef %jw, ptr noundef %arrayidx673, ptr noundef %552, ptr noundef %arrayidx677, ptr noundef %557)
  br label %for.inc679

for.inc679:                                       ; preds = %cond.end661
  %558 = load i32, ptr %i__2, align 4
  %559 = load i32, ptr %krow, align 4
  %add680 = add nsw i32 %559, %558
  store i32 %add680, ptr %krow, align 4
  br label %for.cond643, !llvm.loop !11

for.end681:                                       ; preds = %cond.end652
  %560 = load ptr, ptr %wantt.addr, align 8
  %561 = load i32, ptr %560, align 4
  %tobool682 = icmp ne i32 %561, 0
  br i1 %tobool682, label %if.then683, label %if.end725

if.then683:                                       ; preds = %for.end681
  %562 = load ptr, ptr %n.addr, align 8
  %563 = load i32, ptr %562, align 4
  store i32 %563, ptr %i__2, align 4
  %564 = load ptr, ptr %nh.addr, align 8
  %565 = load i32, ptr %564, align 4
  store i32 %565, ptr %i__1, align 4
  %566 = load ptr, ptr %kbot.addr, align 8
  %567 = load i32, ptr %566, align 4
  %add684 = add nsw i32 %567, 1
  store i32 %add684, ptr %kcol, align 4
  br label %for.cond685

for.cond685:                                      ; preds = %for.inc722, %if.then683
  %568 = load i32, ptr %i__1, align 4
  %cmp686 = icmp slt i32 %568, 0
  br i1 %cmp686, label %cond.true688, label %cond.false691

cond.true688:                                     ; preds = %for.cond685
  %569 = load i32, ptr %kcol, align 4
  %570 = load i32, ptr %i__2, align 4
  %cmp689 = icmp sge i32 %569, %570
  %conv690 = zext i1 %cmp689 to i32
  br label %cond.end694

cond.false691:                                    ; preds = %for.cond685
  %571 = load i32, ptr %kcol, align 4
  %572 = load i32, ptr %i__2, align 4
  %cmp692 = icmp sle i32 %571, %572
  %conv693 = zext i1 %cmp692 to i32
  br label %cond.end694

cond.end694:                                      ; preds = %cond.false691, %cond.true688
  %cond695 = phi i32 [ %conv690, %cond.true688 ], [ %conv693, %cond.false691 ]
  %tobool696 = icmp ne i32 %cond695, 0
  br i1 %tobool696, label %for.body697, label %for.end724

for.body697:                                      ; preds = %cond.end694
  %573 = load ptr, ptr %nh.addr, align 8
  %574 = load i32, ptr %573, align 4
  store i32 %574, ptr %i__3, align 4
  %575 = load ptr, ptr %n.addr, align 8
  %576 = load i32, ptr %575, align 4
  %577 = load i32, ptr %kcol, align 4
  %sub698 = sub nsw i32 %576, %577
  %add699 = add nsw i32 %sub698, 1
  store i32 %add699, ptr %i__4, align 4
  %578 = load i32, ptr %i__3, align 4
  %579 = load i32, ptr %i__4, align 4
  %cmp700 = icmp sle i32 %578, %579
  br i1 %cmp700, label %cond.true702, label %cond.false703

cond.true702:                                     ; preds = %for.body697
  %580 = load i32, ptr %i__3, align 4
  br label %cond.end704

cond.false703:                                    ; preds = %for.body697
  %581 = load i32, ptr %i__4, align 4
  br label %cond.end704

cond.end704:                                      ; preds = %cond.false703, %cond.true702
  %cond705 = phi i32 [ %580, %cond.true702 ], [ %581, %cond.false703 ]
  store i32 %cond705, ptr %kln, align 4
  %582 = load ptr, ptr %v.addr, align 8
  %583 = load i32, ptr %v_offset, align 4
  %idxprom706 = sext i32 %583 to i64
  %arrayidx707 = getelementptr inbounds %struct.complex, ptr %582, i64 %idxprom706
  %584 = load ptr, ptr %ldv.addr, align 8
  %585 = load ptr, ptr %h__.addr, align 8
  %586 = load i32, ptr %kwtop, align 4
  %587 = load i32, ptr %kcol, align 4
  %588 = load i32, ptr %h_dim1, align 4
  %mul708 = mul nsw i32 %587, %588
  %add709 = add nsw i32 %586, %mul708
  %idxprom710 = sext i32 %add709 to i64
  %arrayidx711 = getelementptr inbounds %struct.complex, ptr %585, i64 %idxprom710
  %589 = load ptr, ptr %ldh.addr, align 8
  %590 = load ptr, ptr %t.addr, align 8
  %591 = load i32, ptr %t_offset, align 4
  %idxprom712 = sext i32 %591 to i64
  %arrayidx713 = getelementptr inbounds %struct.complex, ptr %590, i64 %idxprom712
  %592 = load ptr, ptr %ldt.addr, align 8
  %call714 = call i32 @cgemm_(ptr noundef @.str.10, ptr noundef @.str.1, ptr noundef %jw, ptr noundef %kln, ptr noundef %jw, ptr noundef @c_b2, ptr noundef %arrayidx707, ptr noundef %584, ptr noundef %arrayidx711, ptr noundef %589, ptr noundef @c_b1, ptr noundef %arrayidx713, ptr noundef %592)
  %593 = load ptr, ptr %t.addr, align 8
  %594 = load i32, ptr %t_offset, align 4
  %idxprom715 = sext i32 %594 to i64
  %arrayidx716 = getelementptr inbounds %struct.complex, ptr %593, i64 %idxprom715
  %595 = load ptr, ptr %ldt.addr, align 8
  %596 = load ptr, ptr %h__.addr, align 8
  %597 = load i32, ptr %kwtop, align 4
  %598 = load i32, ptr %kcol, align 4
  %599 = load i32, ptr %h_dim1, align 4
  %mul717 = mul nsw i32 %598, %599
  %add718 = add nsw i32 %597, %mul717
  %idxprom719 = sext i32 %add718 to i64
  %arrayidx720 = getelementptr inbounds %struct.complex, ptr %596, i64 %idxprom719
  %600 = load ptr, ptr %ldh.addr, align 8
  %call721 = call i32 @clacpy_(ptr noundef @.str.5, ptr noundef %jw, ptr noundef %kln, ptr noundef %arrayidx716, ptr noundef %595, ptr noundef %arrayidx720, ptr noundef %600)
  br label %for.inc722

for.inc722:                                       ; preds = %cond.end704
  %601 = load i32, ptr %i__1, align 4
  %602 = load i32, ptr %kcol, align 4
  %add723 = add nsw i32 %602, %601
  store i32 %add723, ptr %kcol, align 4
  br label %for.cond685, !llvm.loop !12

for.end724:                                       ; preds = %cond.end694
  br label %if.end725

if.end725:                                        ; preds = %for.end724, %for.end681
  %603 = load ptr, ptr %wantz.addr, align 8
  %604 = load i32, ptr %603, align 4
  %tobool726 = icmp ne i32 %604, 0
  br i1 %tobool726, label %if.then727, label %if.end768

if.then727:                                       ; preds = %if.end725
  %605 = load ptr, ptr %ihiz.addr, align 8
  %606 = load i32, ptr %605, align 4
  store i32 %606, ptr %i__1, align 4
  %607 = load ptr, ptr %nv.addr, align 8
  %608 = load i32, ptr %607, align 4
  store i32 %608, ptr %i__2, align 4
  %609 = load ptr, ptr %iloz.addr, align 8
  %610 = load i32, ptr %609, align 4
  store i32 %610, ptr %krow, align 4
  br label %for.cond728

for.cond728:                                      ; preds = %for.inc765, %if.then727
  %611 = load i32, ptr %i__2, align 4
  %cmp729 = icmp slt i32 %611, 0
  br i1 %cmp729, label %cond.true731, label %cond.false734

cond.true731:                                     ; preds = %for.cond728
  %612 = load i32, ptr %krow, align 4
  %613 = load i32, ptr %i__1, align 4
  %cmp732 = icmp sge i32 %612, %613
  %conv733 = zext i1 %cmp732 to i32
  br label %cond.end737

cond.false734:                                    ; preds = %for.cond728
  %614 = load i32, ptr %krow, align 4
  %615 = load i32, ptr %i__1, align 4
  %cmp735 = icmp sle i32 %614, %615
  %conv736 = zext i1 %cmp735 to i32
  br label %cond.end737

cond.end737:                                      ; preds = %cond.false734, %cond.true731
  %cond738 = phi i32 [ %conv733, %cond.true731 ], [ %conv736, %cond.false734 ]
  %tobool739 = icmp ne i32 %cond738, 0
  br i1 %tobool739, label %for.body740, label %for.end767

for.body740:                                      ; preds = %cond.end737
  %616 = load ptr, ptr %nv.addr, align 8
  %617 = load i32, ptr %616, align 4
  store i32 %617, ptr %i__3, align 4
  %618 = load ptr, ptr %ihiz.addr, align 8
  %619 = load i32, ptr %618, align 4
  %620 = load i32, ptr %krow, align 4
  %sub741 = sub nsw i32 %619, %620
  %add742 = add nsw i32 %sub741, 1
  store i32 %add742, ptr %i__4, align 4
  %621 = load i32, ptr %i__3, align 4
  %622 = load i32, ptr %i__4, align 4
  %cmp743 = icmp sle i32 %621, %622
  br i1 %cmp743, label %cond.true745, label %cond.false746

cond.true745:                                     ; preds = %for.body740
  %623 = load i32, ptr %i__3, align 4
  br label %cond.end747

cond.false746:                                    ; preds = %for.body740
  %624 = load i32, ptr %i__4, align 4
  br label %cond.end747

cond.end747:                                      ; preds = %cond.false746, %cond.true745
  %cond748 = phi i32 [ %623, %cond.true745 ], [ %624, %cond.false746 ]
  store i32 %cond748, ptr %kln, align 4
  %625 = load ptr, ptr %z__.addr, align 8
  %626 = load i32, ptr %krow, align 4
  %627 = load i32, ptr %kwtop, align 4
  %628 = load i32, ptr %z_dim1, align 4
  %mul749 = mul nsw i32 %627, %628
  %add750 = add nsw i32 %626, %mul749
  %idxprom751 = sext i32 %add750 to i64
  %arrayidx752 = getelementptr inbounds %struct.complex, ptr %625, i64 %idxprom751
  %629 = load ptr, ptr %ldz.addr, align 8
  %630 = load ptr, ptr %v.addr, align 8
  %631 = load i32, ptr %v_offset, align 4
  %idxprom753 = sext i32 %631 to i64
  %arrayidx754 = getelementptr inbounds %struct.complex, ptr %630, i64 %idxprom753
  %632 = load ptr, ptr %ldv.addr, align 8
  %633 = load ptr, ptr %wv.addr, align 8
  %634 = load i32, ptr %wv_offset, align 4
  %idxprom755 = sext i32 %634 to i64
  %arrayidx756 = getelementptr inbounds %struct.complex, ptr %633, i64 %idxprom755
  %635 = load ptr, ptr %ldwv.addr, align 8
  %call757 = call i32 @cgemm_(ptr noundef @.str.1, ptr noundef @.str.1, ptr noundef %kln, ptr noundef %jw, ptr noundef %jw, ptr noundef @c_b2, ptr noundef %arrayidx752, ptr noundef %629, ptr noundef %arrayidx754, ptr noundef %632, ptr noundef @c_b1, ptr noundef %arrayidx756, ptr noundef %635)
  %636 = load ptr, ptr %wv.addr, align 8
  %637 = load i32, ptr %wv_offset, align 4
  %idxprom758 = sext i32 %637 to i64
  %arrayidx759 = getelementptr inbounds %struct.complex, ptr %636, i64 %idxprom758
  %638 = load ptr, ptr %ldwv.addr, align 8
  %639 = load ptr, ptr %z__.addr, align 8
  %640 = load i32, ptr %krow, align 4
  %641 = load i32, ptr %kwtop, align 4
  %642 = load i32, ptr %z_dim1, align 4
  %mul760 = mul nsw i32 %641, %642
  %add761 = add nsw i32 %640, %mul760
  %idxprom762 = sext i32 %add761 to i64
  %arrayidx763 = getelementptr inbounds %struct.complex, ptr %639, i64 %idxprom762
  %643 = load ptr, ptr %ldz.addr, align 8
  %call764 = call i32 @clacpy_(ptr noundef @.str.5, ptr noundef %kln, ptr noundef %jw, ptr noundef %arrayidx759, ptr noundef %638, ptr noundef %arrayidx763, ptr noundef %643)
  br label %for.inc765

for.inc765:                                       ; preds = %cond.end747
  %644 = load i32, ptr %i__2, align 4
  %645 = load i32, ptr %krow, align 4
  %add766 = add nsw i32 %645, %644
  store i32 %add766, ptr %krow, align 4
  br label %for.cond728, !llvm.loop !13

for.end767:                                       ; preds = %cond.end737
  br label %if.end768

if.end768:                                        ; preds = %for.end767, %if.end725
  br label %if.end769

if.end769:                                        ; preds = %if.end768, %land.lhs.true, %lor.lhs.false
  %646 = load i32, ptr %jw, align 4
  %647 = load ptr, ptr %ns.addr, align 8
  %648 = load i32, ptr %647, align 4
  %sub770 = sub nsw i32 %646, %648
  %649 = load ptr, ptr %nd.addr, align 8
  store i32 %sub770, ptr %649, align 4
  %650 = load i32, ptr %infqr, align 4
  %651 = load ptr, ptr %ns.addr, align 8
  %652 = load i32, ptr %651, align 4
  %sub771 = sub nsw i32 %652, %650
  store i32 %sub771, ptr %651, align 4
  %653 = load i32, ptr %lwkopt, align 4
  %conv772 = sitofp i32 %653 to float
  store float %conv772, ptr %r__1, align 4
  %654 = load float, ptr %r__1, align 4
  %r773 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float %654, ptr %r773, align 4
  %i774 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float 0.000000e+00, ptr %i774, align 4
  %r775 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %655 = load float, ptr %r775, align 4
  %656 = load ptr, ptr %work.addr, align 8
  %arrayidx776 = getelementptr inbounds %struct.complex, ptr %656, i64 1
  %r777 = getelementptr inbounds %struct.complex, ptr %arrayidx776, i32 0, i32 0
  store float %655, ptr %r777, align 4
  %i778 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %657 = load float, ptr %i778, align 4
  %658 = load ptr, ptr %work.addr, align 8
  %arrayidx779 = getelementptr inbounds %struct.complex, ptr %658, i64 1
  %i780 = getelementptr inbounds %struct.complex, ptr %arrayidx779, i32 0, i32 1
  store float %657, ptr %i780, align 4
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end769, %if.end198, %if.then80, %if.then76, %if.then60
  %659 = load i32, ptr %retval, align 4
  ret i32 %659
}

declare i32 @cgehrd_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @cunmhr_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @claqr4_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare float @slamch_(ptr noundef) #1

declare i32 @slabad_(ptr noundef, ptr noundef) #1

declare double @r_imag(ptr noundef) #1

declare i32 @clacpy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @ccopy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @claset_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @ilaenv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @clahqr_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @ctrexc_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare void @r_cnjg(ptr noundef, ptr noundef) #1

declare i32 @clarfg_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @clarf_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

declare i32 @cgemm_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

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
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6}

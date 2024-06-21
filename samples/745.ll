; ModuleID = 'samples/745.bc'
source_filename = "/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/map/lapack2flamec/f2c/c/dgees.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"V\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@c__1 = internal global i32 1, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"DGEHRD\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c" \00", align 1
@c__0 = internal global i32 0, align 4
@c_n1 = internal global i32 -1, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"DORGHR\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"DGEES \00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"M\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"G\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"H\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @dgees_(ptr noundef %jobvs, ptr noundef %sort, ptr noundef %select, ptr noundef %n, ptr noundef %a, ptr noundef %lda, ptr noundef %sdim, ptr noundef %wr, ptr noundef %wi, ptr noundef %vs, ptr noundef %ldvs, ptr noundef %work, ptr noundef %lwork, ptr noundef %bwork, ptr noundef %info) #0 {
entry:
  %retval = alloca i32, align 4
  %jobvs.addr = alloca ptr, align 8
  %sort.addr = alloca ptr, align 8
  %select.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %lda.addr = alloca ptr, align 8
  %sdim.addr = alloca ptr, align 8
  %wr.addr = alloca ptr, align 8
  %wi.addr = alloca ptr, align 8
  %vs.addr = alloca ptr, align 8
  %ldvs.addr = alloca ptr, align 8
  %work.addr = alloca ptr, align 8
  %lwork.addr = alloca ptr, align 8
  %bwork.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %a_dim1 = alloca i32, align 4
  %a_offset = alloca i32, align 4
  %vs_dim1 = alloca i32, align 4
  %vs_offset = alloca i32, align 4
  %i__1 = alloca i32, align 4
  %i__2 = alloca i32, align 4
  %i__3 = alloca i32, align 4
  %i__ = alloca i32, align 4
  %s = alloca double, align 8
  %i1 = alloca i32, align 4
  %i2 = alloca i32, align 4
  %ip = alloca i32, align 4
  %ihi = alloca i32, align 4
  %ilo = alloca i32, align 4
  %dum = alloca [1 x double], align 8
  %eps = alloca double, align 8
  %sep = alloca double, align 8
  %ibal = alloca i32, align 4
  %anrm = alloca double, align 8
  %idum = alloca [1 x i32], align 4
  %ierr = alloca i32, align 4
  %itau = alloca i32, align 4
  %iwrk = alloca i32, align 4
  %inxt = alloca i32, align 4
  %icond = alloca i32, align 4
  %ieval = alloca i32, align 4
  %cursl = alloca i32, align 4
  %lst2sl = alloca i32, align 4
  %scalea = alloca i32, align 4
  %cscale = alloca double, align 8
  %bignum = alloca double, align 8
  %lastsl = alloca i32, align 4
  %minwrk = alloca i32, align 4
  %maxwrk = alloca i32, align 4
  %smlnum = alloca double, align 8
  %hswork = alloca i32, align 4
  %wantst = alloca i32, align 4
  %lquery = alloca i32, align 4
  %wantvs = alloca i32, align 4
  store ptr %jobvs, ptr %jobvs.addr, align 8
  store ptr %sort, ptr %sort.addr, align 8
  store ptr %select, ptr %select.addr, align 8
  store ptr %n, ptr %n.addr, align 8
  store ptr %a, ptr %a.addr, align 8
  store ptr %lda, ptr %lda.addr, align 8
  store ptr %sdim, ptr %sdim.addr, align 8
  store ptr %wr, ptr %wr.addr, align 8
  store ptr %wi, ptr %wi.addr, align 8
  store ptr %vs, ptr %vs.addr, align 8
  store ptr %ldvs, ptr %ldvs.addr, align 8
  store ptr %work, ptr %work.addr, align 8
  store ptr %lwork, ptr %lwork.addr, align 8
  store ptr %bwork, ptr %bwork.addr, align 8
  store ptr %info, ptr %info.addr, align 8
  %0 = load ptr, ptr %lda.addr, align 8
  %1 = load i32, ptr %0, align 4
  store i32 %1, ptr %a_dim1, align 4
  %2 = load i32, ptr %a_dim1, align 4
  %add = add nsw i32 1, %2
  store i32 %add, ptr %a_offset, align 4
  %3 = load i32, ptr %a_offset, align 4
  %4 = load ptr, ptr %a.addr, align 8
  %idx.ext = sext i32 %3 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds double, ptr %4, i64 %idx.neg
  store ptr %add.ptr, ptr %a.addr, align 8
  %5 = load ptr, ptr %wr.addr, align 8
  %incdec.ptr = getelementptr inbounds double, ptr %5, i32 -1
  store ptr %incdec.ptr, ptr %wr.addr, align 8
  %6 = load ptr, ptr %wi.addr, align 8
  %incdec.ptr1 = getelementptr inbounds double, ptr %6, i32 -1
  store ptr %incdec.ptr1, ptr %wi.addr, align 8
  %7 = load ptr, ptr %ldvs.addr, align 8
  %8 = load i32, ptr %7, align 4
  store i32 %8, ptr %vs_dim1, align 4
  %9 = load i32, ptr %vs_dim1, align 4
  %add2 = add nsw i32 1, %9
  store i32 %add2, ptr %vs_offset, align 4
  %10 = load i32, ptr %vs_offset, align 4
  %11 = load ptr, ptr %vs.addr, align 8
  %idx.ext3 = sext i32 %10 to i64
  %idx.neg4 = sub i64 0, %idx.ext3
  %add.ptr5 = getelementptr inbounds double, ptr %11, i64 %idx.neg4
  store ptr %add.ptr5, ptr %vs.addr, align 8
  %12 = load ptr, ptr %work.addr, align 8
  %incdec.ptr6 = getelementptr inbounds double, ptr %12, i32 -1
  store ptr %incdec.ptr6, ptr %work.addr, align 8
  %13 = load ptr, ptr %bwork.addr, align 8
  %incdec.ptr7 = getelementptr inbounds i32, ptr %13, i32 -1
  store ptr %incdec.ptr7, ptr %bwork.addr, align 8
  %14 = load ptr, ptr %info.addr, align 8
  store i32 0, ptr %14, align 4
  %15 = load ptr, ptr %lwork.addr, align 8
  %16 = load i32, ptr %15, align 4
  %cmp = icmp eq i32 %16, -1
  %conv = zext i1 %cmp to i32
  store i32 %conv, ptr %lquery, align 4
  %17 = load ptr, ptr %jobvs.addr, align 8
  %call = call i32 @lsame_(ptr noundef %17, ptr noundef @.str)
  store i32 %call, ptr %wantvs, align 4
  %18 = load ptr, ptr %sort.addr, align 8
  %call8 = call i32 @lsame_(ptr noundef %18, ptr noundef @.str.1)
  store i32 %call8, ptr %wantst, align 4
  %19 = load i32, ptr %wantvs, align 4
  %tobool = icmp ne i32 %19, 0
  br i1 %tobool, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %20 = load ptr, ptr %jobvs.addr, align 8
  %call9 = call i32 @lsame_(ptr noundef %20, ptr noundef @.str.2)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %21 = load ptr, ptr %info.addr, align 8
  store i32 -1, ptr %21, align 4
  br label %if.end37

if.else:                                          ; preds = %land.lhs.true, %entry
  %22 = load i32, ptr %wantst, align 4
  %tobool11 = icmp ne i32 %22, 0
  br i1 %tobool11, label %if.else16, label %land.lhs.true12

land.lhs.true12:                                  ; preds = %if.else
  %23 = load ptr, ptr %sort.addr, align 8
  %call13 = call i32 @lsame_(ptr noundef %23, ptr noundef @.str.2)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.else16, label %if.then15

if.then15:                                        ; preds = %land.lhs.true12
  %24 = load ptr, ptr %info.addr, align 8
  store i32 -2, ptr %24, align 4
  br label %if.end36

if.else16:                                        ; preds = %land.lhs.true12, %if.else
  %25 = load ptr, ptr %n.addr, align 8
  %26 = load i32, ptr %25, align 4
  %cmp17 = icmp slt i32 %26, 0
  br i1 %cmp17, label %if.then19, label %if.else20

if.then19:                                        ; preds = %if.else16
  %27 = load ptr, ptr %info.addr, align 8
  store i32 -4, ptr %27, align 4
  br label %if.end35

if.else20:                                        ; preds = %if.else16
  %28 = load ptr, ptr %lda.addr, align 8
  %29 = load i32, ptr %28, align 4
  %30 = load ptr, ptr %n.addr, align 8
  %31 = load i32, ptr %30, align 4
  %cmp21 = icmp sge i32 1, %31
  br i1 %cmp21, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else20
  br label %cond.end

cond.false:                                       ; preds = %if.else20
  %32 = load ptr, ptr %n.addr, align 8
  %33 = load i32, ptr %32, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %33, %cond.false ]
  %cmp23 = icmp slt i32 %29, %cond
  br i1 %cmp23, label %if.then25, label %if.else26

if.then25:                                        ; preds = %cond.end
  %34 = load ptr, ptr %info.addr, align 8
  store i32 -6, ptr %34, align 4
  br label %if.end34

if.else26:                                        ; preds = %cond.end
  %35 = load ptr, ptr %ldvs.addr, align 8
  %36 = load i32, ptr %35, align 4
  %cmp27 = icmp slt i32 %36, 1
  br i1 %cmp27, label %if.then33, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else26
  %37 = load i32, ptr %wantvs, align 4
  %tobool29 = icmp ne i32 %37, 0
  br i1 %tobool29, label %land.lhs.true30, label %if.end

land.lhs.true30:                                  ; preds = %lor.lhs.false
  %38 = load ptr, ptr %ldvs.addr, align 8
  %39 = load i32, ptr %38, align 4
  %40 = load ptr, ptr %n.addr, align 8
  %41 = load i32, ptr %40, align 4
  %cmp31 = icmp slt i32 %39, %41
  br i1 %cmp31, label %if.then33, label %if.end

if.then33:                                        ; preds = %land.lhs.true30, %if.else26
  %42 = load ptr, ptr %info.addr, align 8
  store i32 -11, ptr %42, align 4
  br label %if.end

if.end:                                           ; preds = %if.then33, %land.lhs.true30, %lor.lhs.false
  br label %if.end34

if.end34:                                         ; preds = %if.end, %if.then25
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.then19
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.then15
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.then
  %43 = load ptr, ptr %info.addr, align 8
  %44 = load i32, ptr %43, align 4
  %cmp38 = icmp eq i32 %44, 0
  br i1 %cmp38, label %if.then40, label %if.end93

if.then40:                                        ; preds = %if.end37
  %45 = load ptr, ptr %n.addr, align 8
  %46 = load i32, ptr %45, align 4
  %cmp41 = icmp eq i32 %46, 0
  br i1 %cmp41, label %if.then43, label %if.else44

if.then43:                                        ; preds = %if.then40
  store i32 1, ptr %minwrk, align 4
  store i32 1, ptr %maxwrk, align 4
  br label %if.end84

if.else44:                                        ; preds = %if.then40
  %47 = load ptr, ptr %n.addr, align 8
  %48 = load i32, ptr %47, align 4
  %shl = shl i32 %48, 1
  %49 = load ptr, ptr %n.addr, align 8
  %50 = load i32, ptr %49, align 4
  %51 = load ptr, ptr %n.addr, align 8
  %52 = load ptr, ptr %n.addr, align 8
  %call45 = call i32 @ilaenv_(ptr noundef @c__1, ptr noundef @.str.3, ptr noundef @.str.4, ptr noundef %51, ptr noundef @c__1, ptr noundef %52, ptr noundef @c__0)
  %mul = mul nsw i32 %50, %call45
  %add46 = add nsw i32 %shl, %mul
  store i32 %add46, ptr %maxwrk, align 4
  %53 = load ptr, ptr %n.addr, align 8
  %54 = load i32, ptr %53, align 4
  %mul47 = mul nsw i32 %54, 3
  store i32 %mul47, ptr %minwrk, align 4
  %55 = load ptr, ptr %jobvs.addr, align 8
  %56 = load ptr, ptr %n.addr, align 8
  %57 = load ptr, ptr %n.addr, align 8
  %58 = load ptr, ptr %a.addr, align 8
  %59 = load i32, ptr %a_offset, align 4
  %idxprom = sext i32 %59 to i64
  %arrayidx = getelementptr inbounds double, ptr %58, i64 %idxprom
  %60 = load ptr, ptr %lda.addr, align 8
  %61 = load ptr, ptr %wr.addr, align 8
  %arrayidx48 = getelementptr inbounds double, ptr %61, i64 1
  %62 = load ptr, ptr %wi.addr, align 8
  %arrayidx49 = getelementptr inbounds double, ptr %62, i64 1
  %63 = load ptr, ptr %vs.addr, align 8
  %64 = load i32, ptr %vs_offset, align 4
  %idxprom50 = sext i32 %64 to i64
  %arrayidx51 = getelementptr inbounds double, ptr %63, i64 %idxprom50
  %65 = load ptr, ptr %ldvs.addr, align 8
  %66 = load ptr, ptr %work.addr, align 8
  %arrayidx52 = getelementptr inbounds double, ptr %66, i64 1
  %call53 = call i32 @dhseqr_(ptr noundef @.str.1, ptr noundef %55, ptr noundef %56, ptr noundef @c__1, ptr noundef %57, ptr noundef %arrayidx, ptr noundef %60, ptr noundef %arrayidx48, ptr noundef %arrayidx49, ptr noundef %arrayidx51, ptr noundef %65, ptr noundef %arrayidx52, ptr noundef @c_n1, ptr noundef %ieval)
  %67 = load ptr, ptr %work.addr, align 8
  %arrayidx54 = getelementptr inbounds double, ptr %67, i64 1
  %68 = load double, ptr %arrayidx54, align 8
  %conv55 = fptosi double %68 to i32
  store i32 %conv55, ptr %hswork, align 4
  %69 = load i32, ptr %wantvs, align 4
  %tobool56 = icmp ne i32 %69, 0
  br i1 %tobool56, label %if.else65, label %if.then57

if.then57:                                        ; preds = %if.else44
  %70 = load i32, ptr %maxwrk, align 4
  store i32 %70, ptr %i__1, align 4
  %71 = load ptr, ptr %n.addr, align 8
  %72 = load i32, ptr %71, align 4
  %73 = load i32, ptr %hswork, align 4
  %add58 = add nsw i32 %72, %73
  store i32 %add58, ptr %i__2, align 4
  %74 = load i32, ptr %i__1, align 4
  %75 = load i32, ptr %i__2, align 4
  %cmp59 = icmp sge i32 %74, %75
  br i1 %cmp59, label %cond.true61, label %cond.false62

cond.true61:                                      ; preds = %if.then57
  %76 = load i32, ptr %i__1, align 4
  br label %cond.end63

cond.false62:                                     ; preds = %if.then57
  %77 = load i32, ptr %i__2, align 4
  br label %cond.end63

cond.end63:                                       ; preds = %cond.false62, %cond.true61
  %cond64 = phi i32 [ %76, %cond.true61 ], [ %77, %cond.false62 ]
  store i32 %cond64, ptr %maxwrk, align 4
  br label %if.end83

if.else65:                                        ; preds = %if.else44
  %78 = load i32, ptr %maxwrk, align 4
  store i32 %78, ptr %i__1, align 4
  %79 = load ptr, ptr %n.addr, align 8
  %80 = load i32, ptr %79, align 4
  %shl66 = shl i32 %80, 1
  %81 = load ptr, ptr %n.addr, align 8
  %82 = load i32, ptr %81, align 4
  %sub = sub nsw i32 %82, 1
  %83 = load ptr, ptr %n.addr, align 8
  %84 = load ptr, ptr %n.addr, align 8
  %call67 = call i32 @ilaenv_(ptr noundef @c__1, ptr noundef @.str.5, ptr noundef @.str.4, ptr noundef %83, ptr noundef @c__1, ptr noundef %84, ptr noundef @c_n1)
  %mul68 = mul nsw i32 %sub, %call67
  %add69 = add nsw i32 %shl66, %mul68
  store i32 %add69, ptr %i__2, align 4
  %85 = load i32, ptr %i__1, align 4
  %86 = load i32, ptr %i__2, align 4
  %cmp70 = icmp sge i32 %85, %86
  br i1 %cmp70, label %cond.true72, label %cond.false73

cond.true72:                                      ; preds = %if.else65
  %87 = load i32, ptr %i__1, align 4
  br label %cond.end74

cond.false73:                                     ; preds = %if.else65
  %88 = load i32, ptr %i__2, align 4
  br label %cond.end74

cond.end74:                                       ; preds = %cond.false73, %cond.true72
  %cond75 = phi i32 [ %87, %cond.true72 ], [ %88, %cond.false73 ]
  store i32 %cond75, ptr %maxwrk, align 4
  %89 = load i32, ptr %maxwrk, align 4
  store i32 %89, ptr %i__1, align 4
  %90 = load ptr, ptr %n.addr, align 8
  %91 = load i32, ptr %90, align 4
  %92 = load i32, ptr %hswork, align 4
  %add76 = add nsw i32 %91, %92
  store i32 %add76, ptr %i__2, align 4
  %93 = load i32, ptr %i__1, align 4
  %94 = load i32, ptr %i__2, align 4
  %cmp77 = icmp sge i32 %93, %94
  br i1 %cmp77, label %cond.true79, label %cond.false80

cond.true79:                                      ; preds = %cond.end74
  %95 = load i32, ptr %i__1, align 4
  br label %cond.end81

cond.false80:                                     ; preds = %cond.end74
  %96 = load i32, ptr %i__2, align 4
  br label %cond.end81

cond.end81:                                       ; preds = %cond.false80, %cond.true79
  %cond82 = phi i32 [ %95, %cond.true79 ], [ %96, %cond.false80 ]
  store i32 %cond82, ptr %maxwrk, align 4
  br label %if.end83

if.end83:                                         ; preds = %cond.end81, %cond.end63
  br label %if.end84

if.end84:                                         ; preds = %if.end83, %if.then43
  %97 = load i32, ptr %maxwrk, align 4
  %conv85 = sitofp i32 %97 to double
  %98 = load ptr, ptr %work.addr, align 8
  %arrayidx86 = getelementptr inbounds double, ptr %98, i64 1
  store double %conv85, ptr %arrayidx86, align 8
  %99 = load ptr, ptr %lwork.addr, align 8
  %100 = load i32, ptr %99, align 4
  %101 = load i32, ptr %minwrk, align 4
  %cmp87 = icmp slt i32 %100, %101
  br i1 %cmp87, label %land.lhs.true89, label %if.end92

land.lhs.true89:                                  ; preds = %if.end84
  %102 = load i32, ptr %lquery, align 4
  %tobool90 = icmp ne i32 %102, 0
  br i1 %tobool90, label %if.end92, label %if.then91

if.then91:                                        ; preds = %land.lhs.true89
  %103 = load ptr, ptr %info.addr, align 8
  store i32 -13, ptr %103, align 4
  br label %if.end92

if.end92:                                         ; preds = %if.then91, %land.lhs.true89, %if.end84
  br label %if.end93

if.end93:                                         ; preds = %if.end92, %if.end37
  %104 = load ptr, ptr %info.addr, align 8
  %105 = load i32, ptr %104, align 4
  %cmp94 = icmp ne i32 %105, 0
  br i1 %cmp94, label %if.then96, label %if.else99

if.then96:                                        ; preds = %if.end93
  %106 = load ptr, ptr %info.addr, align 8
  %107 = load i32, ptr %106, align 4
  %sub97 = sub nsw i32 0, %107
  store i32 %sub97, ptr %i__1, align 4
  %call98 = call i32 @xerbla_(ptr noundef @.str.6, ptr noundef %i__1)
  store i32 0, ptr %retval, align 4
  br label %return

if.else99:                                        ; preds = %if.end93
  %108 = load i32, ptr %lquery, align 4
  %tobool100 = icmp ne i32 %108, 0
  br i1 %tobool100, label %if.then101, label %if.end102

if.then101:                                       ; preds = %if.else99
  store i32 0, ptr %retval, align 4
  br label %return

if.end102:                                        ; preds = %if.else99
  br label %if.end103

if.end103:                                        ; preds = %if.end102
  %109 = load ptr, ptr %n.addr, align 8
  %110 = load i32, ptr %109, align 4
  %cmp104 = icmp eq i32 %110, 0
  br i1 %cmp104, label %if.then106, label %if.end107

if.then106:                                       ; preds = %if.end103
  %111 = load ptr, ptr %sdim.addr, align 8
  store i32 0, ptr %111, align 4
  store i32 0, ptr %retval, align 4
  br label %return

if.end107:                                        ; preds = %if.end103
  %call108 = call double @dlamch_(ptr noundef @.str.7)
  store double %call108, ptr %eps, align 8
  %call109 = call double @dlamch_(ptr noundef @.str.1)
  store double %call109, ptr %smlnum, align 8
  %112 = load double, ptr %smlnum, align 8
  %div = fdiv double 1.000000e+00, %112
  store double %div, ptr %bignum, align 8
  %call110 = call i32 @dlabad_(ptr noundef %smlnum, ptr noundef %bignum)
  %113 = load double, ptr %smlnum, align 8
  %call111 = call double @sqrt(double noundef %113) #3
  %114 = load double, ptr %eps, align 8
  %div112 = fdiv double %call111, %114
  store double %div112, ptr %smlnum, align 8
  %115 = load double, ptr %smlnum, align 8
  %div113 = fdiv double 1.000000e+00, %115
  store double %div113, ptr %bignum, align 8
  %116 = load ptr, ptr %n.addr, align 8
  %117 = load ptr, ptr %n.addr, align 8
  %118 = load ptr, ptr %a.addr, align 8
  %119 = load i32, ptr %a_offset, align 4
  %idxprom114 = sext i32 %119 to i64
  %arrayidx115 = getelementptr inbounds double, ptr %118, i64 %idxprom114
  %120 = load ptr, ptr %lda.addr, align 8
  %arraydecay = getelementptr inbounds [1 x double], ptr %dum, i64 0, i64 0
  %call116 = call double @dlange_(ptr noundef @.str.8, ptr noundef %116, ptr noundef %117, ptr noundef %arrayidx115, ptr noundef %120, ptr noundef %arraydecay)
  store double %call116, ptr %anrm, align 8
  store i32 0, ptr %scalea, align 4
  %121 = load double, ptr %anrm, align 8
  %cmp117 = fcmp ogt double %121, 0.000000e+00
  br i1 %cmp117, label %land.lhs.true119, label %if.else123

land.lhs.true119:                                 ; preds = %if.end107
  %122 = load double, ptr %anrm, align 8
  %123 = load double, ptr %smlnum, align 8
  %cmp120 = fcmp olt double %122, %123
  br i1 %cmp120, label %if.then122, label %if.else123

if.then122:                                       ; preds = %land.lhs.true119
  store i32 1, ptr %scalea, align 4
  %124 = load double, ptr %smlnum, align 8
  store double %124, ptr %cscale, align 8
  br label %if.end128

if.else123:                                       ; preds = %land.lhs.true119, %if.end107
  %125 = load double, ptr %anrm, align 8
  %126 = load double, ptr %bignum, align 8
  %cmp124 = fcmp ogt double %125, %126
  br i1 %cmp124, label %if.then126, label %if.end127

if.then126:                                       ; preds = %if.else123
  store i32 1, ptr %scalea, align 4
  %127 = load double, ptr %bignum, align 8
  store double %127, ptr %cscale, align 8
  br label %if.end127

if.end127:                                        ; preds = %if.then126, %if.else123
  br label %if.end128

if.end128:                                        ; preds = %if.end127, %if.then122
  %128 = load i32, ptr %scalea, align 4
  %tobool129 = icmp ne i32 %128, 0
  br i1 %tobool129, label %if.then130, label %if.end134

if.then130:                                       ; preds = %if.end128
  %129 = load ptr, ptr %n.addr, align 8
  %130 = load ptr, ptr %n.addr, align 8
  %131 = load ptr, ptr %a.addr, align 8
  %132 = load i32, ptr %a_offset, align 4
  %idxprom131 = sext i32 %132 to i64
  %arrayidx132 = getelementptr inbounds double, ptr %131, i64 %idxprom131
  %133 = load ptr, ptr %lda.addr, align 8
  %call133 = call i32 @dlascl_(ptr noundef @.str.9, ptr noundef @c__0, ptr noundef @c__0, ptr noundef %anrm, ptr noundef %cscale, ptr noundef %129, ptr noundef %130, ptr noundef %arrayidx132, ptr noundef %133, ptr noundef %ierr)
  br label %if.end134

if.end134:                                        ; preds = %if.then130, %if.end128
  store i32 1, ptr %ibal, align 4
  %134 = load ptr, ptr %n.addr, align 8
  %135 = load ptr, ptr %a.addr, align 8
  %136 = load i32, ptr %a_offset, align 4
  %idxprom135 = sext i32 %136 to i64
  %arrayidx136 = getelementptr inbounds double, ptr %135, i64 %idxprom135
  %137 = load ptr, ptr %lda.addr, align 8
  %138 = load ptr, ptr %work.addr, align 8
  %139 = load i32, ptr %ibal, align 4
  %idxprom137 = sext i32 %139 to i64
  %arrayidx138 = getelementptr inbounds double, ptr %138, i64 %idxprom137
  %call139 = call i32 @dgebal_(ptr noundef @.str.7, ptr noundef %134, ptr noundef %arrayidx136, ptr noundef %137, ptr noundef %ilo, ptr noundef %ihi, ptr noundef %arrayidx138, ptr noundef %ierr)
  %140 = load ptr, ptr %n.addr, align 8
  %141 = load i32, ptr %140, align 4
  %142 = load i32, ptr %ibal, align 4
  %add140 = add nsw i32 %141, %142
  store i32 %add140, ptr %itau, align 4
  %143 = load ptr, ptr %n.addr, align 8
  %144 = load i32, ptr %143, align 4
  %145 = load i32, ptr %itau, align 4
  %add141 = add nsw i32 %144, %145
  store i32 %add141, ptr %iwrk, align 4
  %146 = load ptr, ptr %lwork.addr, align 8
  %147 = load i32, ptr %146, align 4
  %148 = load i32, ptr %iwrk, align 4
  %sub142 = sub nsw i32 %147, %148
  %add143 = add nsw i32 %sub142, 1
  store i32 %add143, ptr %i__1, align 4
  %149 = load ptr, ptr %n.addr, align 8
  %150 = load ptr, ptr %a.addr, align 8
  %151 = load i32, ptr %a_offset, align 4
  %idxprom144 = sext i32 %151 to i64
  %arrayidx145 = getelementptr inbounds double, ptr %150, i64 %idxprom144
  %152 = load ptr, ptr %lda.addr, align 8
  %153 = load ptr, ptr %work.addr, align 8
  %154 = load i32, ptr %itau, align 4
  %idxprom146 = sext i32 %154 to i64
  %arrayidx147 = getelementptr inbounds double, ptr %153, i64 %idxprom146
  %155 = load ptr, ptr %work.addr, align 8
  %156 = load i32, ptr %iwrk, align 4
  %idxprom148 = sext i32 %156 to i64
  %arrayidx149 = getelementptr inbounds double, ptr %155, i64 %idxprom148
  %call150 = call i32 @dgehrd_(ptr noundef %149, ptr noundef %ilo, ptr noundef %ihi, ptr noundef %arrayidx145, ptr noundef %152, ptr noundef %arrayidx147, ptr noundef %arrayidx149, ptr noundef %i__1, ptr noundef %ierr)
  %157 = load i32, ptr %wantvs, align 4
  %tobool151 = icmp ne i32 %157, 0
  br i1 %tobool151, label %if.then152, label %if.end167

if.then152:                                       ; preds = %if.end134
  %158 = load ptr, ptr %n.addr, align 8
  %159 = load ptr, ptr %n.addr, align 8
  %160 = load ptr, ptr %a.addr, align 8
  %161 = load i32, ptr %a_offset, align 4
  %idxprom153 = sext i32 %161 to i64
  %arrayidx154 = getelementptr inbounds double, ptr %160, i64 %idxprom153
  %162 = load ptr, ptr %lda.addr, align 8
  %163 = load ptr, ptr %vs.addr, align 8
  %164 = load i32, ptr %vs_offset, align 4
  %idxprom155 = sext i32 %164 to i64
  %arrayidx156 = getelementptr inbounds double, ptr %163, i64 %idxprom155
  %165 = load ptr, ptr %ldvs.addr, align 8
  %call157 = call i32 @dlacpy_(ptr noundef @.str.10, ptr noundef %158, ptr noundef %159, ptr noundef %arrayidx154, ptr noundef %162, ptr noundef %arrayidx156, ptr noundef %165)
  %166 = load ptr, ptr %lwork.addr, align 8
  %167 = load i32, ptr %166, align 4
  %168 = load i32, ptr %iwrk, align 4
  %sub158 = sub nsw i32 %167, %168
  %add159 = add nsw i32 %sub158, 1
  store i32 %add159, ptr %i__1, align 4
  %169 = load ptr, ptr %n.addr, align 8
  %170 = load ptr, ptr %vs.addr, align 8
  %171 = load i32, ptr %vs_offset, align 4
  %idxprom160 = sext i32 %171 to i64
  %arrayidx161 = getelementptr inbounds double, ptr %170, i64 %idxprom160
  %172 = load ptr, ptr %ldvs.addr, align 8
  %173 = load ptr, ptr %work.addr, align 8
  %174 = load i32, ptr %itau, align 4
  %idxprom162 = sext i32 %174 to i64
  %arrayidx163 = getelementptr inbounds double, ptr %173, i64 %idxprom162
  %175 = load ptr, ptr %work.addr, align 8
  %176 = load i32, ptr %iwrk, align 4
  %idxprom164 = sext i32 %176 to i64
  %arrayidx165 = getelementptr inbounds double, ptr %175, i64 %idxprom164
  %call166 = call i32 @dorghr_(ptr noundef %169, ptr noundef %ilo, ptr noundef %ihi, ptr noundef %arrayidx161, ptr noundef %172, ptr noundef %arrayidx163, ptr noundef %arrayidx165, ptr noundef %i__1, ptr noundef %ierr)
  br label %if.end167

if.end167:                                        ; preds = %if.then152, %if.end134
  %177 = load ptr, ptr %sdim.addr, align 8
  store i32 0, ptr %177, align 4
  %178 = load i32, ptr %itau, align 4
  store i32 %178, ptr %iwrk, align 4
  %179 = load ptr, ptr %lwork.addr, align 8
  %180 = load i32, ptr %179, align 4
  %181 = load i32, ptr %iwrk, align 4
  %sub168 = sub nsw i32 %180, %181
  %add169 = add nsw i32 %sub168, 1
  store i32 %add169, ptr %i__1, align 4
  %182 = load ptr, ptr %jobvs.addr, align 8
  %183 = load ptr, ptr %n.addr, align 8
  %184 = load ptr, ptr %a.addr, align 8
  %185 = load i32, ptr %a_offset, align 4
  %idxprom170 = sext i32 %185 to i64
  %arrayidx171 = getelementptr inbounds double, ptr %184, i64 %idxprom170
  %186 = load ptr, ptr %lda.addr, align 8
  %187 = load ptr, ptr %wr.addr, align 8
  %arrayidx172 = getelementptr inbounds double, ptr %187, i64 1
  %188 = load ptr, ptr %wi.addr, align 8
  %arrayidx173 = getelementptr inbounds double, ptr %188, i64 1
  %189 = load ptr, ptr %vs.addr, align 8
  %190 = load i32, ptr %vs_offset, align 4
  %idxprom174 = sext i32 %190 to i64
  %arrayidx175 = getelementptr inbounds double, ptr %189, i64 %idxprom174
  %191 = load ptr, ptr %ldvs.addr, align 8
  %192 = load ptr, ptr %work.addr, align 8
  %193 = load i32, ptr %iwrk, align 4
  %idxprom176 = sext i32 %193 to i64
  %arrayidx177 = getelementptr inbounds double, ptr %192, i64 %idxprom176
  %call178 = call i32 @dhseqr_(ptr noundef @.str.1, ptr noundef %182, ptr noundef %183, ptr noundef %ilo, ptr noundef %ihi, ptr noundef %arrayidx171, ptr noundef %186, ptr noundef %arrayidx172, ptr noundef %arrayidx173, ptr noundef %arrayidx175, ptr noundef %191, ptr noundef %arrayidx177, ptr noundef %i__1, ptr noundef %ieval)
  %194 = load i32, ptr %ieval, align 4
  %cmp179 = icmp sgt i32 %194, 0
  br i1 %cmp179, label %if.then181, label %if.end182

if.then181:                                       ; preds = %if.end167
  %195 = load i32, ptr %ieval, align 4
  %196 = load ptr, ptr %info.addr, align 8
  store i32 %195, ptr %196, align 4
  br label %if.end182

if.end182:                                        ; preds = %if.then181, %if.end167
  %197 = load i32, ptr %wantst, align 4
  %tobool183 = icmp ne i32 %197, 0
  br i1 %tobool183, label %land.lhs.true184, label %if.end222

land.lhs.true184:                                 ; preds = %if.end182
  %198 = load ptr, ptr %info.addr, align 8
  %199 = load i32, ptr %198, align 4
  %cmp185 = icmp eq i32 %199, 0
  br i1 %cmp185, label %if.then187, label %if.end222

if.then187:                                       ; preds = %land.lhs.true184
  %200 = load i32, ptr %scalea, align 4
  %tobool188 = icmp ne i32 %200, 0
  br i1 %tobool188, label %if.then189, label %if.end194

if.then189:                                       ; preds = %if.then187
  %201 = load ptr, ptr %n.addr, align 8
  %202 = load ptr, ptr %wr.addr, align 8
  %arrayidx190 = getelementptr inbounds double, ptr %202, i64 1
  %203 = load ptr, ptr %n.addr, align 8
  %call191 = call i32 @dlascl_(ptr noundef @.str.9, ptr noundef @c__0, ptr noundef @c__0, ptr noundef %cscale, ptr noundef %anrm, ptr noundef %201, ptr noundef @c__1, ptr noundef %arrayidx190, ptr noundef %203, ptr noundef %ierr)
  %204 = load ptr, ptr %n.addr, align 8
  %205 = load ptr, ptr %wi.addr, align 8
  %arrayidx192 = getelementptr inbounds double, ptr %205, i64 1
  %206 = load ptr, ptr %n.addr, align 8
  %call193 = call i32 @dlascl_(ptr noundef @.str.9, ptr noundef @c__0, ptr noundef @c__0, ptr noundef %cscale, ptr noundef %anrm, ptr noundef %204, ptr noundef @c__1, ptr noundef %arrayidx192, ptr noundef %206, ptr noundef %ierr)
  br label %if.end194

if.end194:                                        ; preds = %if.then189, %if.then187
  %207 = load ptr, ptr %n.addr, align 8
  %208 = load i32, ptr %207, align 4
  store i32 %208, ptr %i__1, align 4
  store i32 1, ptr %i__, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end194
  %209 = load i32, ptr %i__, align 4
  %210 = load i32, ptr %i__1, align 4
  %cmp195 = icmp sle i32 %209, %210
  br i1 %cmp195, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %211 = load ptr, ptr %select.addr, align 8
  %212 = load ptr, ptr %wr.addr, align 8
  %213 = load i32, ptr %i__, align 4
  %idxprom197 = sext i32 %213 to i64
  %arrayidx198 = getelementptr inbounds double, ptr %212, i64 %idxprom197
  %214 = load ptr, ptr %wi.addr, align 8
  %215 = load i32, ptr %i__, align 4
  %idxprom199 = sext i32 %215 to i64
  %arrayidx200 = getelementptr inbounds double, ptr %214, i64 %idxprom199
  %call201 = call i32 (ptr, ptr, ...) %211(ptr noundef %arrayidx198, ptr noundef %arrayidx200)
  %216 = load ptr, ptr %bwork.addr, align 8
  %217 = load i32, ptr %i__, align 4
  %idxprom202 = sext i32 %217 to i64
  %arrayidx203 = getelementptr inbounds i32, ptr %216, i64 %idxprom202
  store i32 %call201, ptr %arrayidx203, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %218 = load i32, ptr %i__, align 4
  %inc = add nsw i32 %218, 1
  store i32 %inc, ptr %i__, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %219 = load ptr, ptr %lwork.addr, align 8
  %220 = load i32, ptr %219, align 4
  %221 = load i32, ptr %iwrk, align 4
  %sub204 = sub nsw i32 %220, %221
  %add205 = add nsw i32 %sub204, 1
  store i32 %add205, ptr %i__1, align 4
  %222 = load ptr, ptr %jobvs.addr, align 8
  %223 = load ptr, ptr %bwork.addr, align 8
  %arrayidx206 = getelementptr inbounds i32, ptr %223, i64 1
  %224 = load ptr, ptr %n.addr, align 8
  %225 = load ptr, ptr %a.addr, align 8
  %226 = load i32, ptr %a_offset, align 4
  %idxprom207 = sext i32 %226 to i64
  %arrayidx208 = getelementptr inbounds double, ptr %225, i64 %idxprom207
  %227 = load ptr, ptr %lda.addr, align 8
  %228 = load ptr, ptr %vs.addr, align 8
  %229 = load i32, ptr %vs_offset, align 4
  %idxprom209 = sext i32 %229 to i64
  %arrayidx210 = getelementptr inbounds double, ptr %228, i64 %idxprom209
  %230 = load ptr, ptr %ldvs.addr, align 8
  %231 = load ptr, ptr %wr.addr, align 8
  %arrayidx211 = getelementptr inbounds double, ptr %231, i64 1
  %232 = load ptr, ptr %wi.addr, align 8
  %arrayidx212 = getelementptr inbounds double, ptr %232, i64 1
  %233 = load ptr, ptr %sdim.addr, align 8
  %234 = load ptr, ptr %work.addr, align 8
  %235 = load i32, ptr %iwrk, align 4
  %idxprom213 = sext i32 %235 to i64
  %arrayidx214 = getelementptr inbounds double, ptr %234, i64 %idxprom213
  %arraydecay215 = getelementptr inbounds [1 x i32], ptr %idum, i64 0, i64 0
  %call216 = call i32 @dtrsen_(ptr noundef @.str.2, ptr noundef %222, ptr noundef %arrayidx206, ptr noundef %224, ptr noundef %arrayidx208, ptr noundef %227, ptr noundef %arrayidx210, ptr noundef %230, ptr noundef %arrayidx211, ptr noundef %arrayidx212, ptr noundef %233, ptr noundef %s, ptr noundef %sep, ptr noundef %arrayidx214, ptr noundef %i__1, ptr noundef %arraydecay215, ptr noundef @c__1, ptr noundef %icond)
  %236 = load i32, ptr %icond, align 4
  %cmp217 = icmp sgt i32 %236, 0
  br i1 %cmp217, label %if.then219, label %if.end221

if.then219:                                       ; preds = %for.end
  %237 = load ptr, ptr %n.addr, align 8
  %238 = load i32, ptr %237, align 4
  %239 = load i32, ptr %icond, align 4
  %add220 = add nsw i32 %238, %239
  %240 = load ptr, ptr %info.addr, align 8
  store i32 %add220, ptr %240, align 4
  br label %if.end221

if.end221:                                        ; preds = %if.then219, %for.end
  br label %if.end222

if.end222:                                        ; preds = %if.end221, %land.lhs.true184, %if.end182
  %241 = load i32, ptr %wantvs, align 4
  %tobool223 = icmp ne i32 %241, 0
  br i1 %tobool223, label %if.then224, label %if.end230

if.then224:                                       ; preds = %if.end222
  %242 = load ptr, ptr %n.addr, align 8
  %243 = load ptr, ptr %work.addr, align 8
  %244 = load i32, ptr %ibal, align 4
  %idxprom225 = sext i32 %244 to i64
  %arrayidx226 = getelementptr inbounds double, ptr %243, i64 %idxprom225
  %245 = load ptr, ptr %n.addr, align 8
  %246 = load ptr, ptr %vs.addr, align 8
  %247 = load i32, ptr %vs_offset, align 4
  %idxprom227 = sext i32 %247 to i64
  %arrayidx228 = getelementptr inbounds double, ptr %246, i64 %idxprom227
  %248 = load ptr, ptr %ldvs.addr, align 8
  %call229 = call i32 @dgebak_(ptr noundef @.str.7, ptr noundef @.str.11, ptr noundef %242, ptr noundef %ilo, ptr noundef %ihi, ptr noundef %arrayidx226, ptr noundef %245, ptr noundef %arrayidx228, ptr noundef %248, ptr noundef %ierr)
  br label %if.end230

if.end230:                                        ; preds = %if.then224, %if.end222
  %249 = load i32, ptr %scalea, align 4
  %tobool231 = icmp ne i32 %249, 0
  br i1 %tobool231, label %if.then232, label %if.end400

if.then232:                                       ; preds = %if.end230
  %250 = load ptr, ptr %n.addr, align 8
  %251 = load ptr, ptr %n.addr, align 8
  %252 = load ptr, ptr %a.addr, align 8
  %253 = load i32, ptr %a_offset, align 4
  %idxprom233 = sext i32 %253 to i64
  %arrayidx234 = getelementptr inbounds double, ptr %252, i64 %idxprom233
  %254 = load ptr, ptr %lda.addr, align 8
  %call235 = call i32 @dlascl_(ptr noundef @.str.12, ptr noundef @c__0, ptr noundef @c__0, ptr noundef %cscale, ptr noundef %anrm, ptr noundef %250, ptr noundef %251, ptr noundef %arrayidx234, ptr noundef %254, ptr noundef %ierr)
  %255 = load ptr, ptr %lda.addr, align 8
  %256 = load i32, ptr %255, align 4
  %add236 = add nsw i32 %256, 1
  store i32 %add236, ptr %i__1, align 4
  %257 = load ptr, ptr %n.addr, align 8
  %258 = load ptr, ptr %a.addr, align 8
  %259 = load i32, ptr %a_offset, align 4
  %idxprom237 = sext i32 %259 to i64
  %arrayidx238 = getelementptr inbounds double, ptr %258, i64 %idxprom237
  %260 = load ptr, ptr %wr.addr, align 8
  %arrayidx239 = getelementptr inbounds double, ptr %260, i64 1
  %call240 = call i32 @dcopy_(ptr noundef %257, ptr noundef %arrayidx238, ptr noundef %i__1, ptr noundef %arrayidx239, ptr noundef @c__1)
  %261 = load double, ptr %cscale, align 8
  %262 = load double, ptr %smlnum, align 8
  %cmp241 = fcmp oeq double %261, %262
  br i1 %cmp241, label %if.then243, label %if.end387

if.then243:                                       ; preds = %if.then232
  %263 = load i32, ptr %ieval, align 4
  %cmp244 = icmp sgt i32 %263, 0
  br i1 %cmp244, label %if.then246, label %if.else259

if.then246:                                       ; preds = %if.then243
  %264 = load i32, ptr %ieval, align 4
  %add247 = add nsw i32 %264, 1
  store i32 %add247, ptr %i1, align 4
  %265 = load i32, ptr %ihi, align 4
  %sub248 = sub nsw i32 %265, 1
  store i32 %sub248, ptr %i2, align 4
  %266 = load i32, ptr %ilo, align 4
  %sub249 = sub nsw i32 %266, 1
  store i32 %sub249, ptr %i__1, align 4
  %267 = load i32, ptr %ilo, align 4
  %sub250 = sub nsw i32 %267, 1
  store i32 %sub250, ptr %i__3, align 4
  %268 = load i32, ptr %i__3, align 4
  %cmp251 = icmp sge i32 %268, 1
  br i1 %cmp251, label %cond.true253, label %cond.false254

cond.true253:                                     ; preds = %if.then246
  %269 = load i32, ptr %i__3, align 4
  br label %cond.end255

cond.false254:                                    ; preds = %if.then246
  br label %cond.end255

cond.end255:                                      ; preds = %cond.false254, %cond.true253
  %cond256 = phi i32 [ %269, %cond.true253 ], [ 1, %cond.false254 ]
  store i32 %cond256, ptr %i__2, align 4
  %270 = load ptr, ptr %wi.addr, align 8
  %arrayidx257 = getelementptr inbounds double, ptr %270, i64 1
  %call258 = call i32 @dlascl_(ptr noundef @.str.9, ptr noundef @c__0, ptr noundef @c__0, ptr noundef %cscale, ptr noundef %anrm, ptr noundef %i__1, ptr noundef @c__1, ptr noundef %arrayidx257, ptr noundef %i__2, ptr noundef %ierr)
  br label %if.end266

if.else259:                                       ; preds = %if.then243
  %271 = load i32, ptr %wantst, align 4
  %tobool260 = icmp ne i32 %271, 0
  br i1 %tobool260, label %if.then261, label %if.else263

if.then261:                                       ; preds = %if.else259
  store i32 1, ptr %i1, align 4
  %272 = load ptr, ptr %n.addr, align 8
  %273 = load i32, ptr %272, align 4
  %sub262 = sub nsw i32 %273, 1
  store i32 %sub262, ptr %i2, align 4
  br label %if.end265

if.else263:                                       ; preds = %if.else259
  %274 = load i32, ptr %ilo, align 4
  store i32 %274, ptr %i1, align 4
  %275 = load i32, ptr %ihi, align 4
  %sub264 = sub nsw i32 %275, 1
  store i32 %sub264, ptr %i2, align 4
  br label %if.end265

if.end265:                                        ; preds = %if.else263, %if.then261
  br label %if.end266

if.end266:                                        ; preds = %if.end265, %cond.end255
  %276 = load i32, ptr %i1, align 4
  %sub267 = sub nsw i32 %276, 1
  store i32 %sub267, ptr %inxt, align 4
  %277 = load i32, ptr %i2, align 4
  store i32 %277, ptr %i__1, align 4
  %278 = load i32, ptr %i1, align 4
  store i32 %278, ptr %i__, align 4
  br label %for.cond268

for.cond268:                                      ; preds = %for.inc384, %if.end266
  %279 = load i32, ptr %i__, align 4
  %280 = load i32, ptr %i__1, align 4
  %cmp269 = icmp sle i32 %279, %280
  br i1 %cmp269, label %for.body271, label %for.end386

for.body271:                                      ; preds = %for.cond268
  %281 = load i32, ptr %i__, align 4
  %282 = load i32, ptr %inxt, align 4
  %cmp272 = icmp slt i32 %281, %282
  br i1 %cmp272, label %if.then274, label %if.end275

if.then274:                                       ; preds = %for.body271
  br label %L20

if.end275:                                        ; preds = %for.body271
  %283 = load ptr, ptr %wi.addr, align 8
  %284 = load i32, ptr %i__, align 4
  %idxprom276 = sext i32 %284 to i64
  %arrayidx277 = getelementptr inbounds double, ptr %283, i64 %idxprom276
  %285 = load double, ptr %arrayidx277, align 8
  %cmp278 = fcmp oeq double %285, 0.000000e+00
  br i1 %cmp278, label %if.then280, label %if.else282

if.then280:                                       ; preds = %if.end275
  %286 = load i32, ptr %i__, align 4
  %add281 = add nsw i32 %286, 1
  store i32 %add281, ptr %inxt, align 4
  br label %if.end383

if.else282:                                       ; preds = %if.end275
  %287 = load ptr, ptr %a.addr, align 8
  %288 = load i32, ptr %i__, align 4
  %add283 = add nsw i32 %288, 1
  %289 = load i32, ptr %i__, align 4
  %290 = load i32, ptr %a_dim1, align 4
  %mul284 = mul nsw i32 %289, %290
  %add285 = add nsw i32 %add283, %mul284
  %idxprom286 = sext i32 %add285 to i64
  %arrayidx287 = getelementptr inbounds double, ptr %287, i64 %idxprom286
  %291 = load double, ptr %arrayidx287, align 8
  %cmp288 = fcmp oeq double %291, 0.000000e+00
  br i1 %cmp288, label %if.then290, label %if.else296

if.then290:                                       ; preds = %if.else282
  %292 = load ptr, ptr %wi.addr, align 8
  %293 = load i32, ptr %i__, align 4
  %idxprom291 = sext i32 %293 to i64
  %arrayidx292 = getelementptr inbounds double, ptr %292, i64 %idxprom291
  store double 0.000000e+00, ptr %arrayidx292, align 8
  %294 = load ptr, ptr %wi.addr, align 8
  %295 = load i32, ptr %i__, align 4
  %add293 = add nsw i32 %295, 1
  %idxprom294 = sext i32 %add293 to i64
  %arrayidx295 = getelementptr inbounds double, ptr %294, i64 %idxprom294
  store double 0.000000e+00, ptr %arrayidx295, align 8
  br label %if.end381

if.else296:                                       ; preds = %if.else282
  %296 = load ptr, ptr %a.addr, align 8
  %297 = load i32, ptr %i__, align 4
  %add297 = add nsw i32 %297, 1
  %298 = load i32, ptr %i__, align 4
  %299 = load i32, ptr %a_dim1, align 4
  %mul298 = mul nsw i32 %298, %299
  %add299 = add nsw i32 %add297, %mul298
  %idxprom300 = sext i32 %add299 to i64
  %arrayidx301 = getelementptr inbounds double, ptr %296, i64 %idxprom300
  %300 = load double, ptr %arrayidx301, align 8
  %cmp302 = fcmp une double %300, 0.000000e+00
  br i1 %cmp302, label %land.lhs.true304, label %if.end380

land.lhs.true304:                                 ; preds = %if.else296
  %301 = load ptr, ptr %a.addr, align 8
  %302 = load i32, ptr %i__, align 4
  %303 = load i32, ptr %i__, align 4
  %add305 = add nsw i32 %303, 1
  %304 = load i32, ptr %a_dim1, align 4
  %mul306 = mul nsw i32 %add305, %304
  %add307 = add nsw i32 %302, %mul306
  %idxprom308 = sext i32 %add307 to i64
  %arrayidx309 = getelementptr inbounds double, ptr %301, i64 %idxprom308
  %305 = load double, ptr %arrayidx309, align 8
  %cmp310 = fcmp oeq double %305, 0.000000e+00
  br i1 %cmp310, label %if.then312, label %if.end380

if.then312:                                       ; preds = %land.lhs.true304
  %306 = load ptr, ptr %wi.addr, align 8
  %307 = load i32, ptr %i__, align 4
  %idxprom313 = sext i32 %307 to i64
  %arrayidx314 = getelementptr inbounds double, ptr %306, i64 %idxprom313
  store double 0.000000e+00, ptr %arrayidx314, align 8
  %308 = load ptr, ptr %wi.addr, align 8
  %309 = load i32, ptr %i__, align 4
  %add315 = add nsw i32 %309, 1
  %idxprom316 = sext i32 %add315 to i64
  %arrayidx317 = getelementptr inbounds double, ptr %308, i64 %idxprom316
  store double 0.000000e+00, ptr %arrayidx317, align 8
  %310 = load i32, ptr %i__, align 4
  %cmp318 = icmp sgt i32 %310, 1
  br i1 %cmp318, label %if.then320, label %if.end332

if.then320:                                       ; preds = %if.then312
  %311 = load i32, ptr %i__, align 4
  %sub321 = sub nsw i32 %311, 1
  store i32 %sub321, ptr %i__2, align 4
  %312 = load ptr, ptr %a.addr, align 8
  %313 = load i32, ptr %i__, align 4
  %314 = load i32, ptr %a_dim1, align 4
  %mul322 = mul nsw i32 %313, %314
  %add323 = add nsw i32 %mul322, 1
  %idxprom324 = sext i32 %add323 to i64
  %arrayidx325 = getelementptr inbounds double, ptr %312, i64 %idxprom324
  %315 = load ptr, ptr %a.addr, align 8
  %316 = load i32, ptr %i__, align 4
  %add326 = add nsw i32 %316, 1
  %317 = load i32, ptr %a_dim1, align 4
  %mul327 = mul nsw i32 %add326, %317
  %add328 = add nsw i32 %mul327, 1
  %idxprom329 = sext i32 %add328 to i64
  %arrayidx330 = getelementptr inbounds double, ptr %315, i64 %idxprom329
  %call331 = call i32 @dswap_(ptr noundef %i__2, ptr noundef %arrayidx325, ptr noundef @c__1, ptr noundef %arrayidx330, ptr noundef @c__1)
  br label %if.end332

if.end332:                                        ; preds = %if.then320, %if.then312
  %318 = load ptr, ptr %n.addr, align 8
  %319 = load i32, ptr %318, align 4
  %320 = load i32, ptr %i__, align 4
  %add333 = add nsw i32 %320, 1
  %cmp334 = icmp sgt i32 %319, %add333
  br i1 %cmp334, label %if.then336, label %if.end351

if.then336:                                       ; preds = %if.end332
  %321 = load ptr, ptr %n.addr, align 8
  %322 = load i32, ptr %321, align 4
  %323 = load i32, ptr %i__, align 4
  %sub337 = sub nsw i32 %322, %323
  %sub338 = sub nsw i32 %sub337, 1
  store i32 %sub338, ptr %i__2, align 4
  %324 = load ptr, ptr %a.addr, align 8
  %325 = load i32, ptr %i__, align 4
  %326 = load i32, ptr %i__, align 4
  %add339 = add nsw i32 %326, 2
  %327 = load i32, ptr %a_dim1, align 4
  %mul340 = mul nsw i32 %add339, %327
  %add341 = add nsw i32 %325, %mul340
  %idxprom342 = sext i32 %add341 to i64
  %arrayidx343 = getelementptr inbounds double, ptr %324, i64 %idxprom342
  %328 = load ptr, ptr %lda.addr, align 8
  %329 = load ptr, ptr %a.addr, align 8
  %330 = load i32, ptr %i__, align 4
  %add344 = add nsw i32 %330, 1
  %331 = load i32, ptr %i__, align 4
  %add345 = add nsw i32 %331, 2
  %332 = load i32, ptr %a_dim1, align 4
  %mul346 = mul nsw i32 %add345, %332
  %add347 = add nsw i32 %add344, %mul346
  %idxprom348 = sext i32 %add347 to i64
  %arrayidx349 = getelementptr inbounds double, ptr %329, i64 %idxprom348
  %333 = load ptr, ptr %lda.addr, align 8
  %call350 = call i32 @dswap_(ptr noundef %i__2, ptr noundef %arrayidx343, ptr noundef %328, ptr noundef %arrayidx349, ptr noundef %333)
  br label %if.end351

if.end351:                                        ; preds = %if.then336, %if.end332
  %334 = load i32, ptr %wantvs, align 4
  %tobool352 = icmp ne i32 %334, 0
  br i1 %tobool352, label %if.then353, label %if.end364

if.then353:                                       ; preds = %if.end351
  %335 = load ptr, ptr %n.addr, align 8
  %336 = load ptr, ptr %vs.addr, align 8
  %337 = load i32, ptr %i__, align 4
  %338 = load i32, ptr %vs_dim1, align 4
  %mul354 = mul nsw i32 %337, %338
  %add355 = add nsw i32 %mul354, 1
  %idxprom356 = sext i32 %add355 to i64
  %arrayidx357 = getelementptr inbounds double, ptr %336, i64 %idxprom356
  %339 = load ptr, ptr %vs.addr, align 8
  %340 = load i32, ptr %i__, align 4
  %add358 = add nsw i32 %340, 1
  %341 = load i32, ptr %vs_dim1, align 4
  %mul359 = mul nsw i32 %add358, %341
  %add360 = add nsw i32 %mul359, 1
  %idxprom361 = sext i32 %add360 to i64
  %arrayidx362 = getelementptr inbounds double, ptr %339, i64 %idxprom361
  %call363 = call i32 @dswap_(ptr noundef %335, ptr noundef %arrayidx357, ptr noundef @c__1, ptr noundef %arrayidx362, ptr noundef @c__1)
  br label %if.end364

if.end364:                                        ; preds = %if.then353, %if.end351
  %342 = load ptr, ptr %a.addr, align 8
  %343 = load i32, ptr %i__, align 4
  %add365 = add nsw i32 %343, 1
  %344 = load i32, ptr %i__, align 4
  %345 = load i32, ptr %a_dim1, align 4
  %mul366 = mul nsw i32 %344, %345
  %add367 = add nsw i32 %add365, %mul366
  %idxprom368 = sext i32 %add367 to i64
  %arrayidx369 = getelementptr inbounds double, ptr %342, i64 %idxprom368
  %346 = load double, ptr %arrayidx369, align 8
  %347 = load ptr, ptr %a.addr, align 8
  %348 = load i32, ptr %i__, align 4
  %349 = load i32, ptr %i__, align 4
  %add370 = add nsw i32 %349, 1
  %350 = load i32, ptr %a_dim1, align 4
  %mul371 = mul nsw i32 %add370, %350
  %add372 = add nsw i32 %348, %mul371
  %idxprom373 = sext i32 %add372 to i64
  %arrayidx374 = getelementptr inbounds double, ptr %347, i64 %idxprom373
  store double %346, ptr %arrayidx374, align 8
  %351 = load ptr, ptr %a.addr, align 8
  %352 = load i32, ptr %i__, align 4
  %add375 = add nsw i32 %352, 1
  %353 = load i32, ptr %i__, align 4
  %354 = load i32, ptr %a_dim1, align 4
  %mul376 = mul nsw i32 %353, %354
  %add377 = add nsw i32 %add375, %mul376
  %idxprom378 = sext i32 %add377 to i64
  %arrayidx379 = getelementptr inbounds double, ptr %351, i64 %idxprom378
  store double 0.000000e+00, ptr %arrayidx379, align 8
  br label %if.end380

if.end380:                                        ; preds = %if.end364, %land.lhs.true304, %if.else296
  br label %if.end381

if.end381:                                        ; preds = %if.end380, %if.then290
  %355 = load i32, ptr %i__, align 4
  %add382 = add nsw i32 %355, 2
  store i32 %add382, ptr %inxt, align 4
  br label %if.end383

if.end383:                                        ; preds = %if.end381, %if.then280
  br label %L20

L20:                                              ; preds = %if.end383, %if.then274
  br label %for.inc384

for.inc384:                                       ; preds = %L20
  %356 = load i32, ptr %i__, align 4
  %inc385 = add nsw i32 %356, 1
  store i32 %inc385, ptr %i__, align 4
  br label %for.cond268, !llvm.loop !7

for.end386:                                       ; preds = %for.cond268
  br label %if.end387

if.end387:                                        ; preds = %for.end386, %if.then232
  %357 = load ptr, ptr %n.addr, align 8
  %358 = load i32, ptr %357, align 4
  %359 = load i32, ptr %ieval, align 4
  %sub388 = sub nsw i32 %358, %359
  store i32 %sub388, ptr %i__1, align 4
  %360 = load ptr, ptr %n.addr, align 8
  %361 = load i32, ptr %360, align 4
  %362 = load i32, ptr %ieval, align 4
  %sub389 = sub nsw i32 %361, %362
  store i32 %sub389, ptr %i__3, align 4
  %363 = load i32, ptr %i__3, align 4
  %cmp390 = icmp sge i32 %363, 1
  br i1 %cmp390, label %cond.true392, label %cond.false393

cond.true392:                                     ; preds = %if.end387
  %364 = load i32, ptr %i__3, align 4
  br label %cond.end394

cond.false393:                                    ; preds = %if.end387
  br label %cond.end394

cond.end394:                                      ; preds = %cond.false393, %cond.true392
  %cond395 = phi i32 [ %364, %cond.true392 ], [ 1, %cond.false393 ]
  store i32 %cond395, ptr %i__2, align 4
  %365 = load ptr, ptr %wi.addr, align 8
  %366 = load i32, ptr %ieval, align 4
  %add396 = add nsw i32 %366, 1
  %idxprom397 = sext i32 %add396 to i64
  %arrayidx398 = getelementptr inbounds double, ptr %365, i64 %idxprom397
  %call399 = call i32 @dlascl_(ptr noundef @.str.9, ptr noundef @c__0, ptr noundef @c__0, ptr noundef %cscale, ptr noundef %anrm, ptr noundef %i__1, ptr noundef @c__1, ptr noundef %arrayidx398, ptr noundef %i__2, ptr noundef %ierr)
  br label %if.end400

if.end400:                                        ; preds = %cond.end394, %if.end230
  %367 = load i32, ptr %wantst, align 4
  %tobool401 = icmp ne i32 %367, 0
  br i1 %tobool401, label %land.lhs.true402, label %if.end452

land.lhs.true402:                                 ; preds = %if.end400
  %368 = load ptr, ptr %info.addr, align 8
  %369 = load i32, ptr %368, align 4
  %cmp403 = icmp eq i32 %369, 0
  br i1 %cmp403, label %if.then405, label %if.end452

if.then405:                                       ; preds = %land.lhs.true402
  store i32 1, ptr %lastsl, align 4
  store i32 1, ptr %lst2sl, align 4
  %370 = load ptr, ptr %sdim.addr, align 8
  store i32 0, ptr %370, align 4
  store i32 0, ptr %ip, align 4
  %371 = load ptr, ptr %n.addr, align 8
  %372 = load i32, ptr %371, align 4
  store i32 %372, ptr %i__1, align 4
  store i32 1, ptr %i__, align 4
  br label %for.cond406

for.cond406:                                      ; preds = %for.inc449, %if.then405
  %373 = load i32, ptr %i__, align 4
  %374 = load i32, ptr %i__1, align 4
  %cmp407 = icmp sle i32 %373, %374
  br i1 %cmp407, label %for.body409, label %for.end451

for.body409:                                      ; preds = %for.cond406
  %375 = load ptr, ptr %select.addr, align 8
  %376 = load ptr, ptr %wr.addr, align 8
  %377 = load i32, ptr %i__, align 4
  %idxprom410 = sext i32 %377 to i64
  %arrayidx411 = getelementptr inbounds double, ptr %376, i64 %idxprom410
  %378 = load ptr, ptr %wi.addr, align 8
  %379 = load i32, ptr %i__, align 4
  %idxprom412 = sext i32 %379 to i64
  %arrayidx413 = getelementptr inbounds double, ptr %378, i64 %idxprom412
  %call414 = call i32 (ptr, ptr, ...) %375(ptr noundef %arrayidx411, ptr noundef %arrayidx413)
  store i32 %call414, ptr %cursl, align 4
  %380 = load ptr, ptr %wi.addr, align 8
  %381 = load i32, ptr %i__, align 4
  %idxprom415 = sext i32 %381 to i64
  %arrayidx416 = getelementptr inbounds double, ptr %380, i64 %idxprom415
  %382 = load double, ptr %arrayidx416, align 8
  %cmp417 = fcmp oeq double %382, 0.000000e+00
  br i1 %cmp417, label %if.then419, label %if.else430

if.then419:                                       ; preds = %for.body409
  %383 = load i32, ptr %cursl, align 4
  %tobool420 = icmp ne i32 %383, 0
  br i1 %tobool420, label %if.then421, label %if.end423

if.then421:                                       ; preds = %if.then419
  %384 = load ptr, ptr %sdim.addr, align 8
  %385 = load i32, ptr %384, align 4
  %inc422 = add nsw i32 %385, 1
  store i32 %inc422, ptr %384, align 4
  br label %if.end423

if.end423:                                        ; preds = %if.then421, %if.then419
  store i32 0, ptr %ip, align 4
  %386 = load i32, ptr %cursl, align 4
  %tobool424 = icmp ne i32 %386, 0
  br i1 %tobool424, label %land.lhs.true425, label %if.end429

land.lhs.true425:                                 ; preds = %if.end423
  %387 = load i32, ptr %lastsl, align 4
  %tobool426 = icmp ne i32 %387, 0
  br i1 %tobool426, label %if.end429, label %if.then427

if.then427:                                       ; preds = %land.lhs.true425
  %388 = load ptr, ptr %n.addr, align 8
  %389 = load i32, ptr %388, align 4
  %add428 = add nsw i32 %389, 2
  %390 = load ptr, ptr %info.addr, align 8
  store i32 %add428, ptr %390, align 4
  br label %if.end429

if.end429:                                        ; preds = %if.then427, %land.lhs.true425, %if.end423
  br label %if.end448

if.else430:                                       ; preds = %for.body409
  %391 = load i32, ptr %ip, align 4
  %cmp431 = icmp eq i32 %391, 1
  br i1 %cmp431, label %if.then433, label %if.else446

if.then433:                                       ; preds = %if.else430
  %392 = load i32, ptr %cursl, align 4
  %tobool434 = icmp ne i32 %392, 0
  br i1 %tobool434, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.then433
  %393 = load i32, ptr %lastsl, align 4
  %tobool435 = icmp ne i32 %393, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then433
  %394 = phi i1 [ true, %if.then433 ], [ %tobool435, %lor.rhs ]
  %lor.ext = zext i1 %394 to i32
  store i32 %lor.ext, ptr %cursl, align 4
  %395 = load i32, ptr %cursl, align 4
  store i32 %395, ptr %lastsl, align 4
  %396 = load i32, ptr %cursl, align 4
  %tobool436 = icmp ne i32 %396, 0
  br i1 %tobool436, label %if.then437, label %if.end439

if.then437:                                       ; preds = %lor.end
  %397 = load ptr, ptr %sdim.addr, align 8
  %398 = load i32, ptr %397, align 4
  %add438 = add nsw i32 %398, 2
  store i32 %add438, ptr %397, align 4
  br label %if.end439

if.end439:                                        ; preds = %if.then437, %lor.end
  store i32 -1, ptr %ip, align 4
  %399 = load i32, ptr %cursl, align 4
  %tobool440 = icmp ne i32 %399, 0
  br i1 %tobool440, label %land.lhs.true441, label %if.end445

land.lhs.true441:                                 ; preds = %if.end439
  %400 = load i32, ptr %lst2sl, align 4
  %tobool442 = icmp ne i32 %400, 0
  br i1 %tobool442, label %if.end445, label %if.then443

if.then443:                                       ; preds = %land.lhs.true441
  %401 = load ptr, ptr %n.addr, align 8
  %402 = load i32, ptr %401, align 4
  %add444 = add nsw i32 %402, 2
  %403 = load ptr, ptr %info.addr, align 8
  store i32 %add444, ptr %403, align 4
  br label %if.end445

if.end445:                                        ; preds = %if.then443, %land.lhs.true441, %if.end439
  br label %if.end447

if.else446:                                       ; preds = %if.else430
  store i32 1, ptr %ip, align 4
  br label %if.end447

if.end447:                                        ; preds = %if.else446, %if.end445
  br label %if.end448

if.end448:                                        ; preds = %if.end447, %if.end429
  %404 = load i32, ptr %lastsl, align 4
  store i32 %404, ptr %lst2sl, align 4
  %405 = load i32, ptr %cursl, align 4
  store i32 %405, ptr %lastsl, align 4
  br label %for.inc449

for.inc449:                                       ; preds = %if.end448
  %406 = load i32, ptr %i__, align 4
  %inc450 = add nsw i32 %406, 1
  store i32 %inc450, ptr %i__, align 4
  br label %for.cond406, !llvm.loop !8

for.end451:                                       ; preds = %for.cond406
  br label %if.end452

if.end452:                                        ; preds = %for.end451, %land.lhs.true402, %if.end400
  %407 = load i32, ptr %maxwrk, align 4
  %conv453 = sitofp i32 %407 to double
  %408 = load ptr, ptr %work.addr, align 8
  %arrayidx454 = getelementptr inbounds double, ptr %408, i64 1
  store double %conv453, ptr %arrayidx454, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end452, %if.then106, %if.then101, %if.then96
  %409 = load i32, ptr %retval, align 4
  ret i32 %409
}

declare i32 @lsame_(ptr noundef, ptr noundef) #1

declare i32 @ilaenv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @dhseqr_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @xerbla_(ptr noundef, ptr noundef) #1

declare double @dlamch_(ptr noundef) #1

declare i32 @dlabad_(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
declare double @sqrt(double noundef) #2

declare double @dlange_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @dlascl_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @dgebal_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @dgehrd_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @dlacpy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @dorghr_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @dtrsen_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @dgebak_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @dcopy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @dswap_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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

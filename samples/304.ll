; ModuleID = 'samples/304.bc'
source_filename = "/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/map/lapack2flamec/f2c/c/sgeesx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"V\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"E\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@c__1 = internal global i32 1, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"SGEHRD\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c" \00", align 1
@c__0 = internal global i32 0, align 4
@c_n1 = internal global i32 -1, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"SORGHR\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"SGEESX\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"M\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"G\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"H\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @sgeesx_(ptr noundef %jobvs, ptr noundef %sort, ptr noundef %select, ptr noundef %sense, ptr noundef %n, ptr noundef %a, ptr noundef %lda, ptr noundef %sdim, ptr noundef %wr, ptr noundef %wi, ptr noundef %vs, ptr noundef %ldvs, ptr noundef %rconde, ptr noundef %rcondv, ptr noundef %work, ptr noundef %lwork, ptr noundef %iwork, ptr noundef %liwork, ptr noundef %bwork, ptr noundef %info) #0 {
entry:
  %retval = alloca i32, align 4
  %jobvs.addr = alloca ptr, align 8
  %sort.addr = alloca ptr, align 8
  %select.addr = alloca ptr, align 8
  %sense.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %lda.addr = alloca ptr, align 8
  %sdim.addr = alloca ptr, align 8
  %wr.addr = alloca ptr, align 8
  %wi.addr = alloca ptr, align 8
  %vs.addr = alloca ptr, align 8
  %ldvs.addr = alloca ptr, align 8
  %rconde.addr = alloca ptr, align 8
  %rcondv.addr = alloca ptr, align 8
  %work.addr = alloca ptr, align 8
  %lwork.addr = alloca ptr, align 8
  %iwork.addr = alloca ptr, align 8
  %liwork.addr = alloca ptr, align 8
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
  %i1 = alloca i32, align 4
  %i2 = alloca i32, align 4
  %ip = alloca i32, align 4
  %ihi = alloca i32, align 4
  %ilo = alloca i32, align 4
  %dum = alloca [1 x float], align 4
  %eps = alloca float, align 4
  %ibal = alloca i32, align 4
  %anrm = alloca float, align 4
  %ierr = alloca i32, align 4
  %itau = alloca i32, align 4
  %iwrk = alloca i32, align 4
  %lwrk = alloca i32, align 4
  %inxt = alloca i32, align 4
  %icond = alloca i32, align 4
  %ieval = alloca i32, align 4
  %cursl = alloca i32, align 4
  %liwrk = alloca i32, align 4
  %lst2sl = alloca i32, align 4
  %scalea = alloca i32, align 4
  %cscale = alloca float, align 4
  %bignum = alloca float, align 4
  %wantsb = alloca i32, align 4
  %wantse = alloca i32, align 4
  %lastsl = alloca i32, align 4
  %minwrk = alloca i32, align 4
  %maxwrk = alloca i32, align 4
  %wantsn = alloca i32, align 4
  %smlnum = alloca float, align 4
  %hswork = alloca i32, align 4
  %wantst = alloca i32, align 4
  %lquery = alloca i32, align 4
  %wantsv = alloca i32, align 4
  %wantvs = alloca i32, align 4
  store ptr %jobvs, ptr %jobvs.addr, align 8
  store ptr %sort, ptr %sort.addr, align 8
  store ptr %select, ptr %select.addr, align 8
  store ptr %sense, ptr %sense.addr, align 8
  store ptr %n, ptr %n.addr, align 8
  store ptr %a, ptr %a.addr, align 8
  store ptr %lda, ptr %lda.addr, align 8
  store ptr %sdim, ptr %sdim.addr, align 8
  store ptr %wr, ptr %wr.addr, align 8
  store ptr %wi, ptr %wi.addr, align 8
  store ptr %vs, ptr %vs.addr, align 8
  store ptr %ldvs, ptr %ldvs.addr, align 8
  store ptr %rconde, ptr %rconde.addr, align 8
  store ptr %rcondv, ptr %rcondv.addr, align 8
  store ptr %work, ptr %work.addr, align 8
  store ptr %lwork, ptr %lwork.addr, align 8
  store ptr %iwork, ptr %iwork.addr, align 8
  store ptr %liwork, ptr %liwork.addr, align 8
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
  %add.ptr = getelementptr inbounds float, ptr %4, i64 %idx.neg
  store ptr %add.ptr, ptr %a.addr, align 8
  %5 = load ptr, ptr %wr.addr, align 8
  %incdec.ptr = getelementptr inbounds float, ptr %5, i32 -1
  store ptr %incdec.ptr, ptr %wr.addr, align 8
  %6 = load ptr, ptr %wi.addr, align 8
  %incdec.ptr1 = getelementptr inbounds float, ptr %6, i32 -1
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
  %add.ptr5 = getelementptr inbounds float, ptr %11, i64 %idx.neg4
  store ptr %add.ptr5, ptr %vs.addr, align 8
  %12 = load ptr, ptr %work.addr, align 8
  %incdec.ptr6 = getelementptr inbounds float, ptr %12, i32 -1
  store ptr %incdec.ptr6, ptr %work.addr, align 8
  %13 = load ptr, ptr %iwork.addr, align 8
  %incdec.ptr7 = getelementptr inbounds i32, ptr %13, i32 -1
  store ptr %incdec.ptr7, ptr %iwork.addr, align 8
  %14 = load ptr, ptr %bwork.addr, align 8
  %incdec.ptr8 = getelementptr inbounds i32, ptr %14, i32 -1
  store ptr %incdec.ptr8, ptr %bwork.addr, align 8
  %15 = load ptr, ptr %info.addr, align 8
  store i32 0, ptr %15, align 4
  %16 = load ptr, ptr %jobvs.addr, align 8
  %call = call i32 @lsame_(ptr noundef %16, ptr noundef @.str)
  store i32 %call, ptr %wantvs, align 4
  %17 = load ptr, ptr %sort.addr, align 8
  %call9 = call i32 @lsame_(ptr noundef %17, ptr noundef @.str.1)
  store i32 %call9, ptr %wantst, align 4
  %18 = load ptr, ptr %sense.addr, align 8
  %call10 = call i32 @lsame_(ptr noundef %18, ptr noundef @.str.2)
  store i32 %call10, ptr %wantsn, align 4
  %19 = load ptr, ptr %sense.addr, align 8
  %call11 = call i32 @lsame_(ptr noundef %19, ptr noundef @.str.3)
  store i32 %call11, ptr %wantse, align 4
  %20 = load ptr, ptr %sense.addr, align 8
  %call12 = call i32 @lsame_(ptr noundef %20, ptr noundef @.str)
  store i32 %call12, ptr %wantsv, align 4
  %21 = load ptr, ptr %sense.addr, align 8
  %call13 = call i32 @lsame_(ptr noundef %21, ptr noundef @.str.4)
  store i32 %call13, ptr %wantsb, align 4
  %22 = load ptr, ptr %lwork.addr, align 8
  %23 = load i32, ptr %22, align 4
  %cmp = icmp eq i32 %23, -1
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %24 = load ptr, ptr %liwork.addr, align 8
  %25 = load i32, ptr %24, align 4
  %cmp14 = icmp eq i32 %25, -1
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %26 = phi i1 [ true, %entry ], [ %cmp14, %lor.rhs ]
  %lor.ext = zext i1 %26 to i32
  store i32 %lor.ext, ptr %lquery, align 4
  %27 = load i32, ptr %wantvs, align 4
  %tobool = icmp ne i32 %27, 0
  br i1 %tobool, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.end
  %28 = load ptr, ptr %jobvs.addr, align 8
  %call15 = call i32 @lsame_(ptr noundef %28, ptr noundef @.str.2)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %29 = load ptr, ptr %info.addr, align 8
  store i32 -1, ptr %29, align 4
  br label %if.end52

if.else:                                          ; preds = %land.lhs.true, %lor.end
  %30 = load i32, ptr %wantst, align 4
  %tobool17 = icmp ne i32 %30, 0
  br i1 %tobool17, label %if.else22, label %land.lhs.true18

land.lhs.true18:                                  ; preds = %if.else
  %31 = load ptr, ptr %sort.addr, align 8
  %call19 = call i32 @lsame_(ptr noundef %31, ptr noundef @.str.2)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.else22, label %if.then21

if.then21:                                        ; preds = %land.lhs.true18
  %32 = load ptr, ptr %info.addr, align 8
  store i32 -2, ptr %32, align 4
  br label %if.end51

if.else22:                                        ; preds = %land.lhs.true18, %if.else
  %33 = load i32, ptr %wantsn, align 4
  %tobool23 = icmp ne i32 %33, 0
  br i1 %tobool23, label %lor.lhs.false29, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else22
  %34 = load i32, ptr %wantse, align 4
  %tobool24 = icmp ne i32 %34, 0
  br i1 %tobool24, label %lor.lhs.false29, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %lor.lhs.false
  %35 = load i32, ptr %wantsv, align 4
  %tobool26 = icmp ne i32 %35, 0
  br i1 %tobool26, label %lor.lhs.false29, label %lor.lhs.false27

lor.lhs.false27:                                  ; preds = %lor.lhs.false25
  %36 = load i32, ptr %wantsb, align 4
  %tobool28 = icmp ne i32 %36, 0
  br i1 %tobool28, label %lor.lhs.false29, label %if.then33

lor.lhs.false29:                                  ; preds = %lor.lhs.false27, %lor.lhs.false25, %lor.lhs.false, %if.else22
  %37 = load i32, ptr %wantst, align 4
  %tobool30 = icmp ne i32 %37, 0
  br i1 %tobool30, label %if.else34, label %land.lhs.true31

land.lhs.true31:                                  ; preds = %lor.lhs.false29
  %38 = load i32, ptr %wantsn, align 4
  %tobool32 = icmp ne i32 %38, 0
  br i1 %tobool32, label %if.else34, label %if.then33

if.then33:                                        ; preds = %land.lhs.true31, %lor.lhs.false27
  %39 = load ptr, ptr %info.addr, align 8
  store i32 -4, ptr %39, align 4
  br label %if.end50

if.else34:                                        ; preds = %land.lhs.true31, %lor.lhs.false29
  %40 = load ptr, ptr %n.addr, align 8
  %41 = load i32, ptr %40, align 4
  %cmp35 = icmp slt i32 %41, 0
  br i1 %cmp35, label %if.then36, label %if.else37

if.then36:                                        ; preds = %if.else34
  %42 = load ptr, ptr %info.addr, align 8
  store i32 -5, ptr %42, align 4
  br label %if.end49

if.else37:                                        ; preds = %if.else34
  %43 = load ptr, ptr %lda.addr, align 8
  %44 = load i32, ptr %43, align 4
  %45 = load ptr, ptr %n.addr, align 8
  %46 = load i32, ptr %45, align 4
  %cmp38 = icmp sge i32 1, %46
  br i1 %cmp38, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else37
  br label %cond.end

cond.false:                                       ; preds = %if.else37
  %47 = load ptr, ptr %n.addr, align 8
  %48 = load i32, ptr %47, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %48, %cond.false ]
  %cmp39 = icmp slt i32 %44, %cond
  br i1 %cmp39, label %if.then40, label %if.else41

if.then40:                                        ; preds = %cond.end
  %49 = load ptr, ptr %info.addr, align 8
  store i32 -7, ptr %49, align 4
  br label %if.end48

if.else41:                                        ; preds = %cond.end
  %50 = load ptr, ptr %ldvs.addr, align 8
  %51 = load i32, ptr %50, align 4
  %cmp42 = icmp slt i32 %51, 1
  br i1 %cmp42, label %if.then47, label %lor.lhs.false43

lor.lhs.false43:                                  ; preds = %if.else41
  %52 = load i32, ptr %wantvs, align 4
  %tobool44 = icmp ne i32 %52, 0
  br i1 %tobool44, label %land.lhs.true45, label %if.end

land.lhs.true45:                                  ; preds = %lor.lhs.false43
  %53 = load ptr, ptr %ldvs.addr, align 8
  %54 = load i32, ptr %53, align 4
  %55 = load ptr, ptr %n.addr, align 8
  %56 = load i32, ptr %55, align 4
  %cmp46 = icmp slt i32 %54, %56
  br i1 %cmp46, label %if.then47, label %if.end

if.then47:                                        ; preds = %land.lhs.true45, %if.else41
  %57 = load ptr, ptr %info.addr, align 8
  store i32 -12, ptr %57, align 4
  br label %if.end

if.end:                                           ; preds = %if.then47, %land.lhs.true45, %lor.lhs.false43
  br label %if.end48

if.end48:                                         ; preds = %if.end, %if.then40
  br label %if.end49

if.end49:                                         ; preds = %if.end48, %if.then36
  br label %if.end50

if.end50:                                         ; preds = %if.end49, %if.then33
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %if.then21
  br label %if.end52

if.end52:                                         ; preds = %if.end51, %if.then
  %58 = load ptr, ptr %info.addr, align 8
  %59 = load i32, ptr %58, align 4
  %cmp53 = icmp eq i32 %59, 0
  br i1 %cmp53, label %if.then54, label %if.end131

if.then54:                                        ; preds = %if.end52
  store i32 1, ptr %liwrk, align 4
  %60 = load ptr, ptr %n.addr, align 8
  %61 = load i32, ptr %60, align 4
  %cmp55 = icmp eq i32 %61, 0
  br i1 %cmp55, label %if.then56, label %if.else57

if.then56:                                        ; preds = %if.then54
  store i32 1, ptr %minwrk, align 4
  store i32 1, ptr %lwrk, align 4
  br label %if.end114

if.else57:                                        ; preds = %if.then54
  %62 = load ptr, ptr %n.addr, align 8
  %63 = load i32, ptr %62, align 4
  %shl = shl i32 %63, 1
  %64 = load ptr, ptr %n.addr, align 8
  %65 = load i32, ptr %64, align 4
  %66 = load ptr, ptr %n.addr, align 8
  %67 = load ptr, ptr %n.addr, align 8
  %call58 = call i32 @ilaenv_(ptr noundef @c__1, ptr noundef @.str.5, ptr noundef @.str.6, ptr noundef %66, ptr noundef @c__1, ptr noundef %67, ptr noundef @c__0)
  %mul = mul nsw i32 %65, %call58
  %add59 = add nsw i32 %shl, %mul
  store i32 %add59, ptr %maxwrk, align 4
  %68 = load ptr, ptr %n.addr, align 8
  %69 = load i32, ptr %68, align 4
  %mul60 = mul nsw i32 %69, 3
  store i32 %mul60, ptr %minwrk, align 4
  %70 = load ptr, ptr %jobvs.addr, align 8
  %71 = load ptr, ptr %n.addr, align 8
  %72 = load ptr, ptr %n.addr, align 8
  %73 = load ptr, ptr %a.addr, align 8
  %74 = load i32, ptr %a_offset, align 4
  %idxprom = sext i32 %74 to i64
  %arrayidx = getelementptr inbounds float, ptr %73, i64 %idxprom
  %75 = load ptr, ptr %lda.addr, align 8
  %76 = load ptr, ptr %wr.addr, align 8
  %arrayidx61 = getelementptr inbounds float, ptr %76, i64 1
  %77 = load ptr, ptr %wi.addr, align 8
  %arrayidx62 = getelementptr inbounds float, ptr %77, i64 1
  %78 = load ptr, ptr %vs.addr, align 8
  %79 = load i32, ptr %vs_offset, align 4
  %idxprom63 = sext i32 %79 to i64
  %arrayidx64 = getelementptr inbounds float, ptr %78, i64 %idxprom63
  %80 = load ptr, ptr %ldvs.addr, align 8
  %81 = load ptr, ptr %work.addr, align 8
  %arrayidx65 = getelementptr inbounds float, ptr %81, i64 1
  %call66 = call i32 @shseqr_(ptr noundef @.str.1, ptr noundef %70, ptr noundef %71, ptr noundef @c__1, ptr noundef %72, ptr noundef %arrayidx, ptr noundef %75, ptr noundef %arrayidx61, ptr noundef %arrayidx62, ptr noundef %arrayidx64, ptr noundef %80, ptr noundef %arrayidx65, ptr noundef @c_n1, ptr noundef %ieval)
  %82 = load ptr, ptr %work.addr, align 8
  %arrayidx67 = getelementptr inbounds float, ptr %82, i64 1
  %83 = load float, ptr %arrayidx67, align 4
  %conv = fptosi float %83 to i32
  store i32 %conv, ptr %hswork, align 4
  %84 = load i32, ptr %wantvs, align 4
  %tobool68 = icmp ne i32 %84, 0
  br i1 %tobool68, label %if.else77, label %if.then69

if.then69:                                        ; preds = %if.else57
  %85 = load i32, ptr %maxwrk, align 4
  store i32 %85, ptr %i__1, align 4
  %86 = load ptr, ptr %n.addr, align 8
  %87 = load i32, ptr %86, align 4
  %88 = load i32, ptr %hswork, align 4
  %add70 = add nsw i32 %87, %88
  store i32 %add70, ptr %i__2, align 4
  %89 = load i32, ptr %i__1, align 4
  %90 = load i32, ptr %i__2, align 4
  %cmp71 = icmp sge i32 %89, %90
  br i1 %cmp71, label %cond.true73, label %cond.false74

cond.true73:                                      ; preds = %if.then69
  %91 = load i32, ptr %i__1, align 4
  br label %cond.end75

cond.false74:                                     ; preds = %if.then69
  %92 = load i32, ptr %i__2, align 4
  br label %cond.end75

cond.end75:                                       ; preds = %cond.false74, %cond.true73
  %cond76 = phi i32 [ %91, %cond.true73 ], [ %92, %cond.false74 ]
  store i32 %cond76, ptr %maxwrk, align 4
  br label %if.end95

if.else77:                                        ; preds = %if.else57
  %93 = load i32, ptr %maxwrk, align 4
  store i32 %93, ptr %i__1, align 4
  %94 = load ptr, ptr %n.addr, align 8
  %95 = load i32, ptr %94, align 4
  %shl78 = shl i32 %95, 1
  %96 = load ptr, ptr %n.addr, align 8
  %97 = load i32, ptr %96, align 4
  %sub = sub nsw i32 %97, 1
  %98 = load ptr, ptr %n.addr, align 8
  %99 = load ptr, ptr %n.addr, align 8
  %call79 = call i32 @ilaenv_(ptr noundef @c__1, ptr noundef @.str.7, ptr noundef @.str.6, ptr noundef %98, ptr noundef @c__1, ptr noundef %99, ptr noundef @c_n1)
  %mul80 = mul nsw i32 %sub, %call79
  %add81 = add nsw i32 %shl78, %mul80
  store i32 %add81, ptr %i__2, align 4
  %100 = load i32, ptr %i__1, align 4
  %101 = load i32, ptr %i__2, align 4
  %cmp82 = icmp sge i32 %100, %101
  br i1 %cmp82, label %cond.true84, label %cond.false85

cond.true84:                                      ; preds = %if.else77
  %102 = load i32, ptr %i__1, align 4
  br label %cond.end86

cond.false85:                                     ; preds = %if.else77
  %103 = load i32, ptr %i__2, align 4
  br label %cond.end86

cond.end86:                                       ; preds = %cond.false85, %cond.true84
  %cond87 = phi i32 [ %102, %cond.true84 ], [ %103, %cond.false85 ]
  store i32 %cond87, ptr %maxwrk, align 4
  %104 = load i32, ptr %maxwrk, align 4
  store i32 %104, ptr %i__1, align 4
  %105 = load ptr, ptr %n.addr, align 8
  %106 = load i32, ptr %105, align 4
  %107 = load i32, ptr %hswork, align 4
  %add88 = add nsw i32 %106, %107
  store i32 %add88, ptr %i__2, align 4
  %108 = load i32, ptr %i__1, align 4
  %109 = load i32, ptr %i__2, align 4
  %cmp89 = icmp sge i32 %108, %109
  br i1 %cmp89, label %cond.true91, label %cond.false92

cond.true91:                                      ; preds = %cond.end86
  %110 = load i32, ptr %i__1, align 4
  br label %cond.end93

cond.false92:                                     ; preds = %cond.end86
  %111 = load i32, ptr %i__2, align 4
  br label %cond.end93

cond.end93:                                       ; preds = %cond.false92, %cond.true91
  %cond94 = phi i32 [ %110, %cond.true91 ], [ %111, %cond.false92 ]
  store i32 %cond94, ptr %maxwrk, align 4
  br label %if.end95

if.end95:                                         ; preds = %cond.end93, %cond.end75
  %112 = load i32, ptr %maxwrk, align 4
  store i32 %112, ptr %lwrk, align 4
  %113 = load i32, ptr %wantsn, align 4
  %tobool96 = icmp ne i32 %113, 0
  br i1 %tobool96, label %if.end106, label %if.then97

if.then97:                                        ; preds = %if.end95
  %114 = load i32, ptr %lwrk, align 4
  store i32 %114, ptr %i__1, align 4
  %115 = load ptr, ptr %n.addr, align 8
  %116 = load i32, ptr %115, align 4
  %117 = load ptr, ptr %n.addr, align 8
  %118 = load i32, ptr %117, align 4
  %119 = load ptr, ptr %n.addr, align 8
  %120 = load i32, ptr %119, align 4
  %mul98 = mul nsw i32 %118, %120
  %div = sdiv i32 %mul98, 2
  %add99 = add nsw i32 %116, %div
  store i32 %add99, ptr %i__2, align 4
  %121 = load i32, ptr %i__1, align 4
  %122 = load i32, ptr %i__2, align 4
  %cmp100 = icmp sge i32 %121, %122
  br i1 %cmp100, label %cond.true102, label %cond.false103

cond.true102:                                     ; preds = %if.then97
  %123 = load i32, ptr %i__1, align 4
  br label %cond.end104

cond.false103:                                    ; preds = %if.then97
  %124 = load i32, ptr %i__2, align 4
  br label %cond.end104

cond.end104:                                      ; preds = %cond.false103, %cond.true102
  %cond105 = phi i32 [ %123, %cond.true102 ], [ %124, %cond.false103 ]
  store i32 %cond105, ptr %lwrk, align 4
  br label %if.end106

if.end106:                                        ; preds = %cond.end104, %if.end95
  %125 = load i32, ptr %wantsv, align 4
  %tobool107 = icmp ne i32 %125, 0
  br i1 %tobool107, label %if.then110, label %lor.lhs.false108

lor.lhs.false108:                                 ; preds = %if.end106
  %126 = load i32, ptr %wantsb, align 4
  %tobool109 = icmp ne i32 %126, 0
  br i1 %tobool109, label %if.then110, label %if.end113

if.then110:                                       ; preds = %lor.lhs.false108, %if.end106
  %127 = load ptr, ptr %n.addr, align 8
  %128 = load i32, ptr %127, align 4
  %129 = load ptr, ptr %n.addr, align 8
  %130 = load i32, ptr %129, align 4
  %mul111 = mul nsw i32 %128, %130
  %div112 = sdiv i32 %mul111, 4
  store i32 %div112, ptr %liwrk, align 4
  br label %if.end113

if.end113:                                        ; preds = %if.then110, %lor.lhs.false108
  br label %if.end114

if.end114:                                        ; preds = %if.end113, %if.then56
  %131 = load i32, ptr %liwrk, align 4
  %132 = load ptr, ptr %iwork.addr, align 8
  %arrayidx115 = getelementptr inbounds i32, ptr %132, i64 1
  store i32 %131, ptr %arrayidx115, align 4
  %133 = load i32, ptr %lwrk, align 4
  %conv116 = sitofp i32 %133 to float
  %134 = load ptr, ptr %work.addr, align 8
  %arrayidx117 = getelementptr inbounds float, ptr %134, i64 1
  store float %conv116, ptr %arrayidx117, align 4
  %135 = load ptr, ptr %lwork.addr, align 8
  %136 = load i32, ptr %135, align 4
  %137 = load i32, ptr %minwrk, align 4
  %cmp118 = icmp slt i32 %136, %137
  br i1 %cmp118, label %land.lhs.true120, label %if.else123

land.lhs.true120:                                 ; preds = %if.end114
  %138 = load i32, ptr %lquery, align 4
  %tobool121 = icmp ne i32 %138, 0
  br i1 %tobool121, label %if.else123, label %if.then122

if.then122:                                       ; preds = %land.lhs.true120
  %139 = load ptr, ptr %info.addr, align 8
  store i32 -16, ptr %139, align 4
  br label %if.end130

if.else123:                                       ; preds = %land.lhs.true120, %if.end114
  %140 = load ptr, ptr %liwork.addr, align 8
  %141 = load i32, ptr %140, align 4
  %cmp124 = icmp slt i32 %141, 1
  br i1 %cmp124, label %land.lhs.true126, label %if.end129

land.lhs.true126:                                 ; preds = %if.else123
  %142 = load i32, ptr %lquery, align 4
  %tobool127 = icmp ne i32 %142, 0
  br i1 %tobool127, label %if.end129, label %if.then128

if.then128:                                       ; preds = %land.lhs.true126
  %143 = load ptr, ptr %info.addr, align 8
  store i32 -18, ptr %143, align 4
  br label %if.end129

if.end129:                                        ; preds = %if.then128, %land.lhs.true126, %if.else123
  br label %if.end130

if.end130:                                        ; preds = %if.end129, %if.then122
  br label %if.end131

if.end131:                                        ; preds = %if.end130, %if.end52
  %144 = load ptr, ptr %info.addr, align 8
  %145 = load i32, ptr %144, align 4
  %cmp132 = icmp ne i32 %145, 0
  br i1 %cmp132, label %if.then134, label %if.else137

if.then134:                                       ; preds = %if.end131
  %146 = load ptr, ptr %info.addr, align 8
  %147 = load i32, ptr %146, align 4
  %sub135 = sub nsw i32 0, %147
  store i32 %sub135, ptr %i__1, align 4
  %call136 = call i32 @xerbla_(ptr noundef @.str.8, ptr noundef %i__1)
  store i32 0, ptr %retval, align 4
  br label %return

if.else137:                                       ; preds = %if.end131
  %148 = load i32, ptr %lquery, align 4
  %tobool138 = icmp ne i32 %148, 0
  br i1 %tobool138, label %if.then139, label %if.end140

if.then139:                                       ; preds = %if.else137
  store i32 0, ptr %retval, align 4
  br label %return

if.end140:                                        ; preds = %if.else137
  br label %if.end141

if.end141:                                        ; preds = %if.end140
  %149 = load ptr, ptr %n.addr, align 8
  %150 = load i32, ptr %149, align 4
  %cmp142 = icmp eq i32 %150, 0
  br i1 %cmp142, label %if.then144, label %if.end145

if.then144:                                       ; preds = %if.end141
  %151 = load ptr, ptr %sdim.addr, align 8
  store i32 0, ptr %151, align 4
  store i32 0, ptr %retval, align 4
  br label %return

if.end145:                                        ; preds = %if.end141
  %call146 = call float @slamch_(ptr noundef @.str.9)
  store float %call146, ptr %eps, align 4
  %call147 = call float @slamch_(ptr noundef @.str.1)
  store float %call147, ptr %smlnum, align 4
  %152 = load float, ptr %smlnum, align 4
  %div148 = fdiv float 1.000000e+00, %152
  store float %div148, ptr %bignum, align 4
  %call149 = call i32 @slabad_(ptr noundef %smlnum, ptr noundef %bignum)
  %153 = load float, ptr %smlnum, align 4
  %conv150 = fpext float %153 to double
  %call151 = call double @sqrt(double noundef %conv150) #3
  %154 = load float, ptr %eps, align 4
  %conv152 = fpext float %154 to double
  %div153 = fdiv double %call151, %conv152
  %conv154 = fptrunc double %div153 to float
  store float %conv154, ptr %smlnum, align 4
  %155 = load float, ptr %smlnum, align 4
  %div155 = fdiv float 1.000000e+00, %155
  store float %div155, ptr %bignum, align 4
  %156 = load ptr, ptr %n.addr, align 8
  %157 = load ptr, ptr %n.addr, align 8
  %158 = load ptr, ptr %a.addr, align 8
  %159 = load i32, ptr %a_offset, align 4
  %idxprom156 = sext i32 %159 to i64
  %arrayidx157 = getelementptr inbounds float, ptr %158, i64 %idxprom156
  %160 = load ptr, ptr %lda.addr, align 8
  %arraydecay = getelementptr inbounds [1 x float], ptr %dum, i64 0, i64 0
  %call158 = call float @slange_(ptr noundef @.str.10, ptr noundef %156, ptr noundef %157, ptr noundef %arrayidx157, ptr noundef %160, ptr noundef %arraydecay)
  store float %call158, ptr %anrm, align 4
  store i32 0, ptr %scalea, align 4
  %161 = load float, ptr %anrm, align 4
  %cmp159 = fcmp ogt float %161, 0.000000e+00
  br i1 %cmp159, label %land.lhs.true161, label %if.else165

land.lhs.true161:                                 ; preds = %if.end145
  %162 = load float, ptr %anrm, align 4
  %163 = load float, ptr %smlnum, align 4
  %cmp162 = fcmp olt float %162, %163
  br i1 %cmp162, label %if.then164, label %if.else165

if.then164:                                       ; preds = %land.lhs.true161
  store i32 1, ptr %scalea, align 4
  %164 = load float, ptr %smlnum, align 4
  store float %164, ptr %cscale, align 4
  br label %if.end170

if.else165:                                       ; preds = %land.lhs.true161, %if.end145
  %165 = load float, ptr %anrm, align 4
  %166 = load float, ptr %bignum, align 4
  %cmp166 = fcmp ogt float %165, %166
  br i1 %cmp166, label %if.then168, label %if.end169

if.then168:                                       ; preds = %if.else165
  store i32 1, ptr %scalea, align 4
  %167 = load float, ptr %bignum, align 4
  store float %167, ptr %cscale, align 4
  br label %if.end169

if.end169:                                        ; preds = %if.then168, %if.else165
  br label %if.end170

if.end170:                                        ; preds = %if.end169, %if.then164
  %168 = load i32, ptr %scalea, align 4
  %tobool171 = icmp ne i32 %168, 0
  br i1 %tobool171, label %if.then172, label %if.end176

if.then172:                                       ; preds = %if.end170
  %169 = load ptr, ptr %n.addr, align 8
  %170 = load ptr, ptr %n.addr, align 8
  %171 = load ptr, ptr %a.addr, align 8
  %172 = load i32, ptr %a_offset, align 4
  %idxprom173 = sext i32 %172 to i64
  %arrayidx174 = getelementptr inbounds float, ptr %171, i64 %idxprom173
  %173 = load ptr, ptr %lda.addr, align 8
  %call175 = call i32 @slascl_(ptr noundef @.str.11, ptr noundef @c__0, ptr noundef @c__0, ptr noundef %anrm, ptr noundef %cscale, ptr noundef %169, ptr noundef %170, ptr noundef %arrayidx174, ptr noundef %173, ptr noundef %ierr)
  br label %if.end176

if.end176:                                        ; preds = %if.then172, %if.end170
  store i32 1, ptr %ibal, align 4
  %174 = load ptr, ptr %n.addr, align 8
  %175 = load ptr, ptr %a.addr, align 8
  %176 = load i32, ptr %a_offset, align 4
  %idxprom177 = sext i32 %176 to i64
  %arrayidx178 = getelementptr inbounds float, ptr %175, i64 %idxprom177
  %177 = load ptr, ptr %lda.addr, align 8
  %178 = load ptr, ptr %work.addr, align 8
  %179 = load i32, ptr %ibal, align 4
  %idxprom179 = sext i32 %179 to i64
  %arrayidx180 = getelementptr inbounds float, ptr %178, i64 %idxprom179
  %call181 = call i32 @sgebal_(ptr noundef @.str.9, ptr noundef %174, ptr noundef %arrayidx178, ptr noundef %177, ptr noundef %ilo, ptr noundef %ihi, ptr noundef %arrayidx180, ptr noundef %ierr)
  %180 = load ptr, ptr %n.addr, align 8
  %181 = load i32, ptr %180, align 4
  %182 = load i32, ptr %ibal, align 4
  %add182 = add nsw i32 %181, %182
  store i32 %add182, ptr %itau, align 4
  %183 = load ptr, ptr %n.addr, align 8
  %184 = load i32, ptr %183, align 4
  %185 = load i32, ptr %itau, align 4
  %add183 = add nsw i32 %184, %185
  store i32 %add183, ptr %iwrk, align 4
  %186 = load ptr, ptr %lwork.addr, align 8
  %187 = load i32, ptr %186, align 4
  %188 = load i32, ptr %iwrk, align 4
  %sub184 = sub nsw i32 %187, %188
  %add185 = add nsw i32 %sub184, 1
  store i32 %add185, ptr %i__1, align 4
  %189 = load ptr, ptr %n.addr, align 8
  %190 = load ptr, ptr %a.addr, align 8
  %191 = load i32, ptr %a_offset, align 4
  %idxprom186 = sext i32 %191 to i64
  %arrayidx187 = getelementptr inbounds float, ptr %190, i64 %idxprom186
  %192 = load ptr, ptr %lda.addr, align 8
  %193 = load ptr, ptr %work.addr, align 8
  %194 = load i32, ptr %itau, align 4
  %idxprom188 = sext i32 %194 to i64
  %arrayidx189 = getelementptr inbounds float, ptr %193, i64 %idxprom188
  %195 = load ptr, ptr %work.addr, align 8
  %196 = load i32, ptr %iwrk, align 4
  %idxprom190 = sext i32 %196 to i64
  %arrayidx191 = getelementptr inbounds float, ptr %195, i64 %idxprom190
  %call192 = call i32 @sgehrd_(ptr noundef %189, ptr noundef %ilo, ptr noundef %ihi, ptr noundef %arrayidx187, ptr noundef %192, ptr noundef %arrayidx189, ptr noundef %arrayidx191, ptr noundef %i__1, ptr noundef %ierr)
  %197 = load i32, ptr %wantvs, align 4
  %tobool193 = icmp ne i32 %197, 0
  br i1 %tobool193, label %if.then194, label %if.end209

if.then194:                                       ; preds = %if.end176
  %198 = load ptr, ptr %n.addr, align 8
  %199 = load ptr, ptr %n.addr, align 8
  %200 = load ptr, ptr %a.addr, align 8
  %201 = load i32, ptr %a_offset, align 4
  %idxprom195 = sext i32 %201 to i64
  %arrayidx196 = getelementptr inbounds float, ptr %200, i64 %idxprom195
  %202 = load ptr, ptr %lda.addr, align 8
  %203 = load ptr, ptr %vs.addr, align 8
  %204 = load i32, ptr %vs_offset, align 4
  %idxprom197 = sext i32 %204 to i64
  %arrayidx198 = getelementptr inbounds float, ptr %203, i64 %idxprom197
  %205 = load ptr, ptr %ldvs.addr, align 8
  %call199 = call i32 @slacpy_(ptr noundef @.str.12, ptr noundef %198, ptr noundef %199, ptr noundef %arrayidx196, ptr noundef %202, ptr noundef %arrayidx198, ptr noundef %205)
  %206 = load ptr, ptr %lwork.addr, align 8
  %207 = load i32, ptr %206, align 4
  %208 = load i32, ptr %iwrk, align 4
  %sub200 = sub nsw i32 %207, %208
  %add201 = add nsw i32 %sub200, 1
  store i32 %add201, ptr %i__1, align 4
  %209 = load ptr, ptr %n.addr, align 8
  %210 = load ptr, ptr %vs.addr, align 8
  %211 = load i32, ptr %vs_offset, align 4
  %idxprom202 = sext i32 %211 to i64
  %arrayidx203 = getelementptr inbounds float, ptr %210, i64 %idxprom202
  %212 = load ptr, ptr %ldvs.addr, align 8
  %213 = load ptr, ptr %work.addr, align 8
  %214 = load i32, ptr %itau, align 4
  %idxprom204 = sext i32 %214 to i64
  %arrayidx205 = getelementptr inbounds float, ptr %213, i64 %idxprom204
  %215 = load ptr, ptr %work.addr, align 8
  %216 = load i32, ptr %iwrk, align 4
  %idxprom206 = sext i32 %216 to i64
  %arrayidx207 = getelementptr inbounds float, ptr %215, i64 %idxprom206
  %call208 = call i32 @sorghr_(ptr noundef %209, ptr noundef %ilo, ptr noundef %ihi, ptr noundef %arrayidx203, ptr noundef %212, ptr noundef %arrayidx205, ptr noundef %arrayidx207, ptr noundef %i__1, ptr noundef %ierr)
  br label %if.end209

if.end209:                                        ; preds = %if.then194, %if.end176
  %217 = load ptr, ptr %sdim.addr, align 8
  store i32 0, ptr %217, align 4
  %218 = load i32, ptr %itau, align 4
  store i32 %218, ptr %iwrk, align 4
  %219 = load ptr, ptr %lwork.addr, align 8
  %220 = load i32, ptr %219, align 4
  %221 = load i32, ptr %iwrk, align 4
  %sub210 = sub nsw i32 %220, %221
  %add211 = add nsw i32 %sub210, 1
  store i32 %add211, ptr %i__1, align 4
  %222 = load ptr, ptr %jobvs.addr, align 8
  %223 = load ptr, ptr %n.addr, align 8
  %224 = load ptr, ptr %a.addr, align 8
  %225 = load i32, ptr %a_offset, align 4
  %idxprom212 = sext i32 %225 to i64
  %arrayidx213 = getelementptr inbounds float, ptr %224, i64 %idxprom212
  %226 = load ptr, ptr %lda.addr, align 8
  %227 = load ptr, ptr %wr.addr, align 8
  %arrayidx214 = getelementptr inbounds float, ptr %227, i64 1
  %228 = load ptr, ptr %wi.addr, align 8
  %arrayidx215 = getelementptr inbounds float, ptr %228, i64 1
  %229 = load ptr, ptr %vs.addr, align 8
  %230 = load i32, ptr %vs_offset, align 4
  %idxprom216 = sext i32 %230 to i64
  %arrayidx217 = getelementptr inbounds float, ptr %229, i64 %idxprom216
  %231 = load ptr, ptr %ldvs.addr, align 8
  %232 = load ptr, ptr %work.addr, align 8
  %233 = load i32, ptr %iwrk, align 4
  %idxprom218 = sext i32 %233 to i64
  %arrayidx219 = getelementptr inbounds float, ptr %232, i64 %idxprom218
  %call220 = call i32 @shseqr_(ptr noundef @.str.1, ptr noundef %222, ptr noundef %223, ptr noundef %ilo, ptr noundef %ihi, ptr noundef %arrayidx213, ptr noundef %226, ptr noundef %arrayidx214, ptr noundef %arrayidx215, ptr noundef %arrayidx217, ptr noundef %231, ptr noundef %arrayidx219, ptr noundef %i__1, ptr noundef %ieval)
  %234 = load i32, ptr %ieval, align 4
  %cmp221 = icmp sgt i32 %234, 0
  br i1 %cmp221, label %if.then223, label %if.end224

if.then223:                                       ; preds = %if.end209
  %235 = load i32, ptr %ieval, align 4
  %236 = load ptr, ptr %info.addr, align 8
  store i32 %235, ptr %236, align 4
  br label %if.end224

if.end224:                                        ; preds = %if.then223, %if.end209
  %237 = load i32, ptr %wantst, align 4
  %tobool225 = icmp ne i32 %237, 0
  br i1 %tobool225, label %land.lhs.true226, label %if.end287

land.lhs.true226:                                 ; preds = %if.end224
  %238 = load ptr, ptr %info.addr, align 8
  %239 = load i32, ptr %238, align 4
  %cmp227 = icmp eq i32 %239, 0
  br i1 %cmp227, label %if.then229, label %if.end287

if.then229:                                       ; preds = %land.lhs.true226
  %240 = load i32, ptr %scalea, align 4
  %tobool230 = icmp ne i32 %240, 0
  br i1 %tobool230, label %if.then231, label %if.end236

if.then231:                                       ; preds = %if.then229
  %241 = load ptr, ptr %n.addr, align 8
  %242 = load ptr, ptr %wr.addr, align 8
  %arrayidx232 = getelementptr inbounds float, ptr %242, i64 1
  %243 = load ptr, ptr %n.addr, align 8
  %call233 = call i32 @slascl_(ptr noundef @.str.11, ptr noundef @c__0, ptr noundef @c__0, ptr noundef %cscale, ptr noundef %anrm, ptr noundef %241, ptr noundef @c__1, ptr noundef %arrayidx232, ptr noundef %243, ptr noundef %ierr)
  %244 = load ptr, ptr %n.addr, align 8
  %245 = load ptr, ptr %wi.addr, align 8
  %arrayidx234 = getelementptr inbounds float, ptr %245, i64 1
  %246 = load ptr, ptr %n.addr, align 8
  %call235 = call i32 @slascl_(ptr noundef @.str.11, ptr noundef @c__0, ptr noundef @c__0, ptr noundef %cscale, ptr noundef %anrm, ptr noundef %244, ptr noundef @c__1, ptr noundef %arrayidx234, ptr noundef %246, ptr noundef %ierr)
  br label %if.end236

if.end236:                                        ; preds = %if.then231, %if.then229
  %247 = load ptr, ptr %n.addr, align 8
  %248 = load i32, ptr %247, align 4
  store i32 %248, ptr %i__1, align 4
  store i32 1, ptr %i__, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end236
  %249 = load i32, ptr %i__, align 4
  %250 = load i32, ptr %i__1, align 4
  %cmp237 = icmp sle i32 %249, %250
  br i1 %cmp237, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %251 = load ptr, ptr %select.addr, align 8
  %252 = load ptr, ptr %wr.addr, align 8
  %253 = load i32, ptr %i__, align 4
  %idxprom239 = sext i32 %253 to i64
  %arrayidx240 = getelementptr inbounds float, ptr %252, i64 %idxprom239
  %254 = load ptr, ptr %wi.addr, align 8
  %255 = load i32, ptr %i__, align 4
  %idxprom241 = sext i32 %255 to i64
  %arrayidx242 = getelementptr inbounds float, ptr %254, i64 %idxprom241
  %call243 = call i32 (ptr, ptr, ...) %251(ptr noundef %arrayidx240, ptr noundef %arrayidx242)
  %256 = load ptr, ptr %bwork.addr, align 8
  %257 = load i32, ptr %i__, align 4
  %idxprom244 = sext i32 %257 to i64
  %arrayidx245 = getelementptr inbounds i32, ptr %256, i64 %idxprom244
  store i32 %call243, ptr %arrayidx245, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %258 = load i32, ptr %i__, align 4
  %inc = add nsw i32 %258, 1
  store i32 %inc, ptr %i__, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %259 = load ptr, ptr %lwork.addr, align 8
  %260 = load i32, ptr %259, align 4
  %261 = load i32, ptr %iwrk, align 4
  %sub246 = sub nsw i32 %260, %261
  %add247 = add nsw i32 %sub246, 1
  store i32 %add247, ptr %i__1, align 4
  %262 = load ptr, ptr %sense.addr, align 8
  %263 = load ptr, ptr %jobvs.addr, align 8
  %264 = load ptr, ptr %bwork.addr, align 8
  %arrayidx248 = getelementptr inbounds i32, ptr %264, i64 1
  %265 = load ptr, ptr %n.addr, align 8
  %266 = load ptr, ptr %a.addr, align 8
  %267 = load i32, ptr %a_offset, align 4
  %idxprom249 = sext i32 %267 to i64
  %arrayidx250 = getelementptr inbounds float, ptr %266, i64 %idxprom249
  %268 = load ptr, ptr %lda.addr, align 8
  %269 = load ptr, ptr %vs.addr, align 8
  %270 = load i32, ptr %vs_offset, align 4
  %idxprom251 = sext i32 %270 to i64
  %arrayidx252 = getelementptr inbounds float, ptr %269, i64 %idxprom251
  %271 = load ptr, ptr %ldvs.addr, align 8
  %272 = load ptr, ptr %wr.addr, align 8
  %arrayidx253 = getelementptr inbounds float, ptr %272, i64 1
  %273 = load ptr, ptr %wi.addr, align 8
  %arrayidx254 = getelementptr inbounds float, ptr %273, i64 1
  %274 = load ptr, ptr %sdim.addr, align 8
  %275 = load ptr, ptr %rconde.addr, align 8
  %276 = load ptr, ptr %rcondv.addr, align 8
  %277 = load ptr, ptr %work.addr, align 8
  %278 = load i32, ptr %iwrk, align 4
  %idxprom255 = sext i32 %278 to i64
  %arrayidx256 = getelementptr inbounds float, ptr %277, i64 %idxprom255
  %279 = load ptr, ptr %iwork.addr, align 8
  %arrayidx257 = getelementptr inbounds i32, ptr %279, i64 1
  %280 = load ptr, ptr %liwork.addr, align 8
  %call258 = call i32 @strsen_(ptr noundef %262, ptr noundef %263, ptr noundef %arrayidx248, ptr noundef %265, ptr noundef %arrayidx250, ptr noundef %268, ptr noundef %arrayidx252, ptr noundef %271, ptr noundef %arrayidx253, ptr noundef %arrayidx254, ptr noundef %274, ptr noundef %275, ptr noundef %276, ptr noundef %arrayidx256, ptr noundef %i__1, ptr noundef %arrayidx257, ptr noundef %280, ptr noundef %icond)
  %281 = load i32, ptr %wantsn, align 4
  %tobool259 = icmp ne i32 %281, 0
  br i1 %tobool259, label %if.end271, label %if.then260

if.then260:                                       ; preds = %for.end
  %282 = load i32, ptr %maxwrk, align 4
  store i32 %282, ptr %i__1, align 4
  %283 = load ptr, ptr %n.addr, align 8
  %284 = load i32, ptr %283, align 4
  %285 = load ptr, ptr %sdim.addr, align 8
  %286 = load i32, ptr %285, align 4
  %shl261 = shl i32 %286, 1
  %287 = load ptr, ptr %n.addr, align 8
  %288 = load i32, ptr %287, align 4
  %289 = load ptr, ptr %sdim.addr, align 8
  %290 = load i32, ptr %289, align 4
  %sub262 = sub nsw i32 %288, %290
  %mul263 = mul nsw i32 %shl261, %sub262
  %add264 = add nsw i32 %284, %mul263
  store i32 %add264, ptr %i__2, align 4
  %291 = load i32, ptr %i__1, align 4
  %292 = load i32, ptr %i__2, align 4
  %cmp265 = icmp sge i32 %291, %292
  br i1 %cmp265, label %cond.true267, label %cond.false268

cond.true267:                                     ; preds = %if.then260
  %293 = load i32, ptr %i__1, align 4
  br label %cond.end269

cond.false268:                                    ; preds = %if.then260
  %294 = load i32, ptr %i__2, align 4
  br label %cond.end269

cond.end269:                                      ; preds = %cond.false268, %cond.true267
  %cond270 = phi i32 [ %293, %cond.true267 ], [ %294, %cond.false268 ]
  store i32 %cond270, ptr %maxwrk, align 4
  br label %if.end271

if.end271:                                        ; preds = %cond.end269, %for.end
  %295 = load i32, ptr %icond, align 4
  %cmp272 = icmp eq i32 %295, -15
  br i1 %cmp272, label %if.then274, label %if.else275

if.then274:                                       ; preds = %if.end271
  %296 = load ptr, ptr %info.addr, align 8
  store i32 -16, ptr %296, align 4
  br label %if.end286

if.else275:                                       ; preds = %if.end271
  %297 = load i32, ptr %icond, align 4
  %cmp276 = icmp eq i32 %297, -17
  br i1 %cmp276, label %if.then278, label %if.else279

if.then278:                                       ; preds = %if.else275
  %298 = load ptr, ptr %info.addr, align 8
  store i32 -18, ptr %298, align 4
  br label %if.end285

if.else279:                                       ; preds = %if.else275
  %299 = load i32, ptr %icond, align 4
  %cmp280 = icmp sgt i32 %299, 0
  br i1 %cmp280, label %if.then282, label %if.end284

if.then282:                                       ; preds = %if.else279
  %300 = load i32, ptr %icond, align 4
  %301 = load ptr, ptr %n.addr, align 8
  %302 = load i32, ptr %301, align 4
  %add283 = add nsw i32 %300, %302
  %303 = load ptr, ptr %info.addr, align 8
  store i32 %add283, ptr %303, align 4
  br label %if.end284

if.end284:                                        ; preds = %if.then282, %if.else279
  br label %if.end285

if.end285:                                        ; preds = %if.end284, %if.then278
  br label %if.end286

if.end286:                                        ; preds = %if.end285, %if.then274
  br label %if.end287

if.end287:                                        ; preds = %if.end286, %land.lhs.true226, %if.end224
  %304 = load i32, ptr %wantvs, align 4
  %tobool288 = icmp ne i32 %304, 0
  br i1 %tobool288, label %if.then289, label %if.end295

if.then289:                                       ; preds = %if.end287
  %305 = load ptr, ptr %n.addr, align 8
  %306 = load ptr, ptr %work.addr, align 8
  %307 = load i32, ptr %ibal, align 4
  %idxprom290 = sext i32 %307 to i64
  %arrayidx291 = getelementptr inbounds float, ptr %306, i64 %idxprom290
  %308 = load ptr, ptr %n.addr, align 8
  %309 = load ptr, ptr %vs.addr, align 8
  %310 = load i32, ptr %vs_offset, align 4
  %idxprom292 = sext i32 %310 to i64
  %arrayidx293 = getelementptr inbounds float, ptr %309, i64 %idxprom292
  %311 = load ptr, ptr %ldvs.addr, align 8
  %call294 = call i32 @sgebak_(ptr noundef @.str.9, ptr noundef @.str.13, ptr noundef %305, ptr noundef %ilo, ptr noundef %ihi, ptr noundef %arrayidx291, ptr noundef %308, ptr noundef %arrayidx293, ptr noundef %311, ptr noundef %ierr)
  br label %if.end295

if.end295:                                        ; preds = %if.then289, %if.end287
  %312 = load i32, ptr %scalea, align 4
  %tobool296 = icmp ne i32 %312, 0
  br i1 %tobool296, label %if.then297, label %if.end467

if.then297:                                       ; preds = %if.end295
  %313 = load ptr, ptr %n.addr, align 8
  %314 = load ptr, ptr %n.addr, align 8
  %315 = load ptr, ptr %a.addr, align 8
  %316 = load i32, ptr %a_offset, align 4
  %idxprom298 = sext i32 %316 to i64
  %arrayidx299 = getelementptr inbounds float, ptr %315, i64 %idxprom298
  %317 = load ptr, ptr %lda.addr, align 8
  %call300 = call i32 @slascl_(ptr noundef @.str.14, ptr noundef @c__0, ptr noundef @c__0, ptr noundef %cscale, ptr noundef %anrm, ptr noundef %313, ptr noundef %314, ptr noundef %arrayidx299, ptr noundef %317, ptr noundef %ierr)
  %318 = load ptr, ptr %lda.addr, align 8
  %319 = load i32, ptr %318, align 4
  %add301 = add nsw i32 %319, 1
  store i32 %add301, ptr %i__1, align 4
  %320 = load ptr, ptr %n.addr, align 8
  %321 = load ptr, ptr %a.addr, align 8
  %322 = load i32, ptr %a_offset, align 4
  %idxprom302 = sext i32 %322 to i64
  %arrayidx303 = getelementptr inbounds float, ptr %321, i64 %idxprom302
  %323 = load ptr, ptr %wr.addr, align 8
  %arrayidx304 = getelementptr inbounds float, ptr %323, i64 1
  %call305 = call i32 @scopy_(ptr noundef %320, ptr noundef %arrayidx303, ptr noundef %i__1, ptr noundef %arrayidx304, ptr noundef @c__1)
  %324 = load i32, ptr %wantsv, align 4
  %tobool306 = icmp ne i32 %324, 0
  br i1 %tobool306, label %land.lhs.true309, label %lor.lhs.false307

lor.lhs.false307:                                 ; preds = %if.then297
  %325 = load i32, ptr %wantsb, align 4
  %tobool308 = icmp ne i32 %325, 0
  br i1 %tobool308, label %land.lhs.true309, label %if.end317

land.lhs.true309:                                 ; preds = %lor.lhs.false307, %if.then297
  %326 = load ptr, ptr %info.addr, align 8
  %327 = load i32, ptr %326, align 4
  %cmp310 = icmp eq i32 %327, 0
  br i1 %cmp310, label %if.then312, label %if.end317

if.then312:                                       ; preds = %land.lhs.true309
  %328 = load ptr, ptr %rcondv.addr, align 8
  %329 = load float, ptr %328, align 4
  %arrayidx313 = getelementptr inbounds [1 x float], ptr %dum, i64 0, i64 0
  store float %329, ptr %arrayidx313, align 4
  %arraydecay314 = getelementptr inbounds [1 x float], ptr %dum, i64 0, i64 0
  %call315 = call i32 @slascl_(ptr noundef @.str.11, ptr noundef @c__0, ptr noundef @c__0, ptr noundef %cscale, ptr noundef %anrm, ptr noundef @c__1, ptr noundef @c__1, ptr noundef %arraydecay314, ptr noundef @c__1, ptr noundef %ierr)
  %arrayidx316 = getelementptr inbounds [1 x float], ptr %dum, i64 0, i64 0
  %330 = load float, ptr %arrayidx316, align 4
  %331 = load ptr, ptr %rcondv.addr, align 8
  store float %330, ptr %331, align 4
  br label %if.end317

if.end317:                                        ; preds = %if.then312, %land.lhs.true309, %lor.lhs.false307
  %332 = load float, ptr %cscale, align 4
  %333 = load float, ptr %smlnum, align 4
  %cmp318 = fcmp oeq float %332, %333
  br i1 %cmp318, label %if.then320, label %if.end454

if.then320:                                       ; preds = %if.end317
  %334 = load i32, ptr %ieval, align 4
  %cmp321 = icmp sgt i32 %334, 0
  br i1 %cmp321, label %if.then323, label %if.else329

if.then323:                                       ; preds = %if.then320
  %335 = load i32, ptr %ieval, align 4
  %add324 = add nsw i32 %335, 1
  store i32 %add324, ptr %i1, align 4
  %336 = load i32, ptr %ihi, align 4
  %sub325 = sub nsw i32 %336, 1
  store i32 %sub325, ptr %i2, align 4
  %337 = load i32, ptr %ilo, align 4
  %sub326 = sub nsw i32 %337, 1
  store i32 %sub326, ptr %i__1, align 4
  %338 = load ptr, ptr %wi.addr, align 8
  %arrayidx327 = getelementptr inbounds float, ptr %338, i64 1
  %339 = load ptr, ptr %n.addr, align 8
  %call328 = call i32 @slascl_(ptr noundef @.str.11, ptr noundef @c__0, ptr noundef @c__0, ptr noundef %cscale, ptr noundef %anrm, ptr noundef %i__1, ptr noundef @c__1, ptr noundef %arrayidx327, ptr noundef %339, ptr noundef %ierr)
  br label %if.end336

if.else329:                                       ; preds = %if.then320
  %340 = load i32, ptr %wantst, align 4
  %tobool330 = icmp ne i32 %340, 0
  br i1 %tobool330, label %if.then331, label %if.else333

if.then331:                                       ; preds = %if.else329
  store i32 1, ptr %i1, align 4
  %341 = load ptr, ptr %n.addr, align 8
  %342 = load i32, ptr %341, align 4
  %sub332 = sub nsw i32 %342, 1
  store i32 %sub332, ptr %i2, align 4
  br label %if.end335

if.else333:                                       ; preds = %if.else329
  %343 = load i32, ptr %ilo, align 4
  store i32 %343, ptr %i1, align 4
  %344 = load i32, ptr %ihi, align 4
  %sub334 = sub nsw i32 %344, 1
  store i32 %sub334, ptr %i2, align 4
  br label %if.end335

if.end335:                                        ; preds = %if.else333, %if.then331
  br label %if.end336

if.end336:                                        ; preds = %if.end335, %if.then323
  %345 = load i32, ptr %i1, align 4
  %sub337 = sub nsw i32 %345, 1
  store i32 %sub337, ptr %inxt, align 4
  %346 = load i32, ptr %i2, align 4
  store i32 %346, ptr %i__1, align 4
  %347 = load i32, ptr %i1, align 4
  store i32 %347, ptr %i__, align 4
  br label %for.cond338

for.cond338:                                      ; preds = %for.inc451, %if.end336
  %348 = load i32, ptr %i__, align 4
  %349 = load i32, ptr %i__1, align 4
  %cmp339 = icmp sle i32 %348, %349
  br i1 %cmp339, label %for.body341, label %for.end453

for.body341:                                      ; preds = %for.cond338
  %350 = load i32, ptr %i__, align 4
  %351 = load i32, ptr %inxt, align 4
  %cmp342 = icmp slt i32 %350, %351
  br i1 %cmp342, label %if.then344, label %if.end345

if.then344:                                       ; preds = %for.body341
  br label %L20

if.end345:                                        ; preds = %for.body341
  %352 = load ptr, ptr %wi.addr, align 8
  %353 = load i32, ptr %i__, align 4
  %idxprom346 = sext i32 %353 to i64
  %arrayidx347 = getelementptr inbounds float, ptr %352, i64 %idxprom346
  %354 = load float, ptr %arrayidx347, align 4
  %cmp348 = fcmp oeq float %354, 0.000000e+00
  br i1 %cmp348, label %if.then350, label %if.else352

if.then350:                                       ; preds = %if.end345
  %355 = load i32, ptr %i__, align 4
  %add351 = add nsw i32 %355, 1
  store i32 %add351, ptr %inxt, align 4
  br label %if.end450

if.else352:                                       ; preds = %if.end345
  %356 = load ptr, ptr %a.addr, align 8
  %357 = load i32, ptr %i__, align 4
  %add353 = add nsw i32 %357, 1
  %358 = load i32, ptr %i__, align 4
  %359 = load i32, ptr %a_dim1, align 4
  %mul354 = mul nsw i32 %358, %359
  %add355 = add nsw i32 %add353, %mul354
  %idxprom356 = sext i32 %add355 to i64
  %arrayidx357 = getelementptr inbounds float, ptr %356, i64 %idxprom356
  %360 = load float, ptr %arrayidx357, align 4
  %cmp358 = fcmp oeq float %360, 0.000000e+00
  br i1 %cmp358, label %if.then360, label %if.else366

if.then360:                                       ; preds = %if.else352
  %361 = load ptr, ptr %wi.addr, align 8
  %362 = load i32, ptr %i__, align 4
  %idxprom361 = sext i32 %362 to i64
  %arrayidx362 = getelementptr inbounds float, ptr %361, i64 %idxprom361
  store float 0.000000e+00, ptr %arrayidx362, align 4
  %363 = load ptr, ptr %wi.addr, align 8
  %364 = load i32, ptr %i__, align 4
  %add363 = add nsw i32 %364, 1
  %idxprom364 = sext i32 %add363 to i64
  %arrayidx365 = getelementptr inbounds float, ptr %363, i64 %idxprom364
  store float 0.000000e+00, ptr %arrayidx365, align 4
  br label %if.end448

if.else366:                                       ; preds = %if.else352
  %365 = load ptr, ptr %a.addr, align 8
  %366 = load i32, ptr %i__, align 4
  %add367 = add nsw i32 %366, 1
  %367 = load i32, ptr %i__, align 4
  %368 = load i32, ptr %a_dim1, align 4
  %mul368 = mul nsw i32 %367, %368
  %add369 = add nsw i32 %add367, %mul368
  %idxprom370 = sext i32 %add369 to i64
  %arrayidx371 = getelementptr inbounds float, ptr %365, i64 %idxprom370
  %369 = load float, ptr %arrayidx371, align 4
  %cmp372 = fcmp une float %369, 0.000000e+00
  br i1 %cmp372, label %land.lhs.true374, label %if.end447

land.lhs.true374:                                 ; preds = %if.else366
  %370 = load ptr, ptr %a.addr, align 8
  %371 = load i32, ptr %i__, align 4
  %372 = load i32, ptr %i__, align 4
  %add375 = add nsw i32 %372, 1
  %373 = load i32, ptr %a_dim1, align 4
  %mul376 = mul nsw i32 %add375, %373
  %add377 = add nsw i32 %371, %mul376
  %idxprom378 = sext i32 %add377 to i64
  %arrayidx379 = getelementptr inbounds float, ptr %370, i64 %idxprom378
  %374 = load float, ptr %arrayidx379, align 4
  %cmp380 = fcmp oeq float %374, 0.000000e+00
  br i1 %cmp380, label %if.then382, label %if.end447

if.then382:                                       ; preds = %land.lhs.true374
  %375 = load ptr, ptr %wi.addr, align 8
  %376 = load i32, ptr %i__, align 4
  %idxprom383 = sext i32 %376 to i64
  %arrayidx384 = getelementptr inbounds float, ptr %375, i64 %idxprom383
  store float 0.000000e+00, ptr %arrayidx384, align 4
  %377 = load ptr, ptr %wi.addr, align 8
  %378 = load i32, ptr %i__, align 4
  %add385 = add nsw i32 %378, 1
  %idxprom386 = sext i32 %add385 to i64
  %arrayidx387 = getelementptr inbounds float, ptr %377, i64 %idxprom386
  store float 0.000000e+00, ptr %arrayidx387, align 4
  %379 = load i32, ptr %i__, align 4
  %cmp388 = icmp sgt i32 %379, 1
  br i1 %cmp388, label %if.then390, label %if.end402

if.then390:                                       ; preds = %if.then382
  %380 = load i32, ptr %i__, align 4
  %sub391 = sub nsw i32 %380, 1
  store i32 %sub391, ptr %i__2, align 4
  %381 = load ptr, ptr %a.addr, align 8
  %382 = load i32, ptr %i__, align 4
  %383 = load i32, ptr %a_dim1, align 4
  %mul392 = mul nsw i32 %382, %383
  %add393 = add nsw i32 %mul392, 1
  %idxprom394 = sext i32 %add393 to i64
  %arrayidx395 = getelementptr inbounds float, ptr %381, i64 %idxprom394
  %384 = load ptr, ptr %a.addr, align 8
  %385 = load i32, ptr %i__, align 4
  %add396 = add nsw i32 %385, 1
  %386 = load i32, ptr %a_dim1, align 4
  %mul397 = mul nsw i32 %add396, %386
  %add398 = add nsw i32 %mul397, 1
  %idxprom399 = sext i32 %add398 to i64
  %arrayidx400 = getelementptr inbounds float, ptr %384, i64 %idxprom399
  %call401 = call i32 @sswap_(ptr noundef %i__2, ptr noundef %arrayidx395, ptr noundef @c__1, ptr noundef %arrayidx400, ptr noundef @c__1)
  br label %if.end402

if.end402:                                        ; preds = %if.then390, %if.then382
  %387 = load ptr, ptr %n.addr, align 8
  %388 = load i32, ptr %387, align 4
  %389 = load i32, ptr %i__, align 4
  %add403 = add nsw i32 %389, 1
  %cmp404 = icmp sgt i32 %388, %add403
  br i1 %cmp404, label %if.then406, label %if.end421

if.then406:                                       ; preds = %if.end402
  %390 = load ptr, ptr %n.addr, align 8
  %391 = load i32, ptr %390, align 4
  %392 = load i32, ptr %i__, align 4
  %sub407 = sub nsw i32 %391, %392
  %sub408 = sub nsw i32 %sub407, 1
  store i32 %sub408, ptr %i__2, align 4
  %393 = load ptr, ptr %a.addr, align 8
  %394 = load i32, ptr %i__, align 4
  %395 = load i32, ptr %i__, align 4
  %add409 = add nsw i32 %395, 2
  %396 = load i32, ptr %a_dim1, align 4
  %mul410 = mul nsw i32 %add409, %396
  %add411 = add nsw i32 %394, %mul410
  %idxprom412 = sext i32 %add411 to i64
  %arrayidx413 = getelementptr inbounds float, ptr %393, i64 %idxprom412
  %397 = load ptr, ptr %lda.addr, align 8
  %398 = load ptr, ptr %a.addr, align 8
  %399 = load i32, ptr %i__, align 4
  %add414 = add nsw i32 %399, 1
  %400 = load i32, ptr %i__, align 4
  %add415 = add nsw i32 %400, 2
  %401 = load i32, ptr %a_dim1, align 4
  %mul416 = mul nsw i32 %add415, %401
  %add417 = add nsw i32 %add414, %mul416
  %idxprom418 = sext i32 %add417 to i64
  %arrayidx419 = getelementptr inbounds float, ptr %398, i64 %idxprom418
  %402 = load ptr, ptr %lda.addr, align 8
  %call420 = call i32 @sswap_(ptr noundef %i__2, ptr noundef %arrayidx413, ptr noundef %397, ptr noundef %arrayidx419, ptr noundef %402)
  br label %if.end421

if.end421:                                        ; preds = %if.then406, %if.end402
  %403 = load ptr, ptr %n.addr, align 8
  %404 = load ptr, ptr %vs.addr, align 8
  %405 = load i32, ptr %i__, align 4
  %406 = load i32, ptr %vs_dim1, align 4
  %mul422 = mul nsw i32 %405, %406
  %add423 = add nsw i32 %mul422, 1
  %idxprom424 = sext i32 %add423 to i64
  %arrayidx425 = getelementptr inbounds float, ptr %404, i64 %idxprom424
  %407 = load ptr, ptr %vs.addr, align 8
  %408 = load i32, ptr %i__, align 4
  %add426 = add nsw i32 %408, 1
  %409 = load i32, ptr %vs_dim1, align 4
  %mul427 = mul nsw i32 %add426, %409
  %add428 = add nsw i32 %mul427, 1
  %idxprom429 = sext i32 %add428 to i64
  %arrayidx430 = getelementptr inbounds float, ptr %407, i64 %idxprom429
  %call431 = call i32 @sswap_(ptr noundef %403, ptr noundef %arrayidx425, ptr noundef @c__1, ptr noundef %arrayidx430, ptr noundef @c__1)
  %410 = load ptr, ptr %a.addr, align 8
  %411 = load i32, ptr %i__, align 4
  %add432 = add nsw i32 %411, 1
  %412 = load i32, ptr %i__, align 4
  %413 = load i32, ptr %a_dim1, align 4
  %mul433 = mul nsw i32 %412, %413
  %add434 = add nsw i32 %add432, %mul433
  %idxprom435 = sext i32 %add434 to i64
  %arrayidx436 = getelementptr inbounds float, ptr %410, i64 %idxprom435
  %414 = load float, ptr %arrayidx436, align 4
  %415 = load ptr, ptr %a.addr, align 8
  %416 = load i32, ptr %i__, align 4
  %417 = load i32, ptr %i__, align 4
  %add437 = add nsw i32 %417, 1
  %418 = load i32, ptr %a_dim1, align 4
  %mul438 = mul nsw i32 %add437, %418
  %add439 = add nsw i32 %416, %mul438
  %idxprom440 = sext i32 %add439 to i64
  %arrayidx441 = getelementptr inbounds float, ptr %415, i64 %idxprom440
  store float %414, ptr %arrayidx441, align 4
  %419 = load ptr, ptr %a.addr, align 8
  %420 = load i32, ptr %i__, align 4
  %add442 = add nsw i32 %420, 1
  %421 = load i32, ptr %i__, align 4
  %422 = load i32, ptr %a_dim1, align 4
  %mul443 = mul nsw i32 %421, %422
  %add444 = add nsw i32 %add442, %mul443
  %idxprom445 = sext i32 %add444 to i64
  %arrayidx446 = getelementptr inbounds float, ptr %419, i64 %idxprom445
  store float 0.000000e+00, ptr %arrayidx446, align 4
  br label %if.end447

if.end447:                                        ; preds = %if.end421, %land.lhs.true374, %if.else366
  br label %if.end448

if.end448:                                        ; preds = %if.end447, %if.then360
  %423 = load i32, ptr %i__, align 4
  %add449 = add nsw i32 %423, 2
  store i32 %add449, ptr %inxt, align 4
  br label %if.end450

if.end450:                                        ; preds = %if.end448, %if.then350
  br label %L20

L20:                                              ; preds = %if.end450, %if.then344
  br label %for.inc451

for.inc451:                                       ; preds = %L20
  %424 = load i32, ptr %i__, align 4
  %inc452 = add nsw i32 %424, 1
  store i32 %inc452, ptr %i__, align 4
  br label %for.cond338, !llvm.loop !7

for.end453:                                       ; preds = %for.cond338
  br label %if.end454

if.end454:                                        ; preds = %for.end453, %if.end317
  %425 = load ptr, ptr %n.addr, align 8
  %426 = load i32, ptr %425, align 4
  %427 = load i32, ptr %ieval, align 4
  %sub455 = sub nsw i32 %426, %427
  store i32 %sub455, ptr %i__1, align 4
  %428 = load ptr, ptr %n.addr, align 8
  %429 = load i32, ptr %428, align 4
  %430 = load i32, ptr %ieval, align 4
  %sub456 = sub nsw i32 %429, %430
  store i32 %sub456, ptr %i__3, align 4
  %431 = load i32, ptr %i__3, align 4
  %cmp457 = icmp sge i32 %431, 1
  br i1 %cmp457, label %cond.true459, label %cond.false460

cond.true459:                                     ; preds = %if.end454
  %432 = load i32, ptr %i__3, align 4
  br label %cond.end461

cond.false460:                                    ; preds = %if.end454
  br label %cond.end461

cond.end461:                                      ; preds = %cond.false460, %cond.true459
  %cond462 = phi i32 [ %432, %cond.true459 ], [ 1, %cond.false460 ]
  store i32 %cond462, ptr %i__2, align 4
  %433 = load ptr, ptr %wi.addr, align 8
  %434 = load i32, ptr %ieval, align 4
  %add463 = add nsw i32 %434, 1
  %idxprom464 = sext i32 %add463 to i64
  %arrayidx465 = getelementptr inbounds float, ptr %433, i64 %idxprom464
  %call466 = call i32 @slascl_(ptr noundef @.str.11, ptr noundef @c__0, ptr noundef @c__0, ptr noundef %cscale, ptr noundef %anrm, ptr noundef %i__1, ptr noundef @c__1, ptr noundef %arrayidx465, ptr noundef %i__2, ptr noundef %ierr)
  br label %if.end467

if.end467:                                        ; preds = %cond.end461, %if.end295
  %435 = load i32, ptr %wantst, align 4
  %tobool468 = icmp ne i32 %435, 0
  br i1 %tobool468, label %land.lhs.true469, label %if.end522

land.lhs.true469:                                 ; preds = %if.end467
  %436 = load ptr, ptr %info.addr, align 8
  %437 = load i32, ptr %436, align 4
  %cmp470 = icmp eq i32 %437, 0
  br i1 %cmp470, label %if.then472, label %if.end522

if.then472:                                       ; preds = %land.lhs.true469
  store i32 1, ptr %lastsl, align 4
  store i32 1, ptr %lst2sl, align 4
  %438 = load ptr, ptr %sdim.addr, align 8
  store i32 0, ptr %438, align 4
  store i32 0, ptr %ip, align 4
  %439 = load ptr, ptr %n.addr, align 8
  %440 = load i32, ptr %439, align 4
  store i32 %440, ptr %i__1, align 4
  store i32 1, ptr %i__, align 4
  br label %for.cond473

for.cond473:                                      ; preds = %for.inc519, %if.then472
  %441 = load i32, ptr %i__, align 4
  %442 = load i32, ptr %i__1, align 4
  %cmp474 = icmp sle i32 %441, %442
  br i1 %cmp474, label %for.body476, label %for.end521

for.body476:                                      ; preds = %for.cond473
  %443 = load ptr, ptr %select.addr, align 8
  %444 = load ptr, ptr %wr.addr, align 8
  %445 = load i32, ptr %i__, align 4
  %idxprom477 = sext i32 %445 to i64
  %arrayidx478 = getelementptr inbounds float, ptr %444, i64 %idxprom477
  %446 = load ptr, ptr %wi.addr, align 8
  %447 = load i32, ptr %i__, align 4
  %idxprom479 = sext i32 %447 to i64
  %arrayidx480 = getelementptr inbounds float, ptr %446, i64 %idxprom479
  %call481 = call i32 (ptr, ptr, ...) %443(ptr noundef %arrayidx478, ptr noundef %arrayidx480)
  store i32 %call481, ptr %cursl, align 4
  %448 = load ptr, ptr %wi.addr, align 8
  %449 = load i32, ptr %i__, align 4
  %idxprom482 = sext i32 %449 to i64
  %arrayidx483 = getelementptr inbounds float, ptr %448, i64 %idxprom482
  %450 = load float, ptr %arrayidx483, align 4
  %cmp484 = fcmp oeq float %450, 0.000000e+00
  br i1 %cmp484, label %if.then486, label %if.else497

if.then486:                                       ; preds = %for.body476
  %451 = load i32, ptr %cursl, align 4
  %tobool487 = icmp ne i32 %451, 0
  br i1 %tobool487, label %if.then488, label %if.end490

if.then488:                                       ; preds = %if.then486
  %452 = load ptr, ptr %sdim.addr, align 8
  %453 = load i32, ptr %452, align 4
  %inc489 = add nsw i32 %453, 1
  store i32 %inc489, ptr %452, align 4
  br label %if.end490

if.end490:                                        ; preds = %if.then488, %if.then486
  store i32 0, ptr %ip, align 4
  %454 = load i32, ptr %cursl, align 4
  %tobool491 = icmp ne i32 %454, 0
  br i1 %tobool491, label %land.lhs.true492, label %if.end496

land.lhs.true492:                                 ; preds = %if.end490
  %455 = load i32, ptr %lastsl, align 4
  %tobool493 = icmp ne i32 %455, 0
  br i1 %tobool493, label %if.end496, label %if.then494

if.then494:                                       ; preds = %land.lhs.true492
  %456 = load ptr, ptr %n.addr, align 8
  %457 = load i32, ptr %456, align 4
  %add495 = add nsw i32 %457, 2
  %458 = load ptr, ptr %info.addr, align 8
  store i32 %add495, ptr %458, align 4
  br label %if.end496

if.end496:                                        ; preds = %if.then494, %land.lhs.true492, %if.end490
  br label %if.end518

if.else497:                                       ; preds = %for.body476
  %459 = load i32, ptr %ip, align 4
  %cmp498 = icmp eq i32 %459, 1
  br i1 %cmp498, label %if.then500, label %if.else516

if.then500:                                       ; preds = %if.else497
  %460 = load i32, ptr %cursl, align 4
  %tobool501 = icmp ne i32 %460, 0
  br i1 %tobool501, label %lor.end504, label %lor.rhs502

lor.rhs502:                                       ; preds = %if.then500
  %461 = load i32, ptr %lastsl, align 4
  %tobool503 = icmp ne i32 %461, 0
  br label %lor.end504

lor.end504:                                       ; preds = %lor.rhs502, %if.then500
  %462 = phi i1 [ true, %if.then500 ], [ %tobool503, %lor.rhs502 ]
  %lor.ext505 = zext i1 %462 to i32
  store i32 %lor.ext505, ptr %cursl, align 4
  %463 = load i32, ptr %cursl, align 4
  store i32 %463, ptr %lastsl, align 4
  %464 = load i32, ptr %cursl, align 4
  %tobool506 = icmp ne i32 %464, 0
  br i1 %tobool506, label %if.then507, label %if.end509

if.then507:                                       ; preds = %lor.end504
  %465 = load ptr, ptr %sdim.addr, align 8
  %466 = load i32, ptr %465, align 4
  %add508 = add nsw i32 %466, 2
  store i32 %add508, ptr %465, align 4
  br label %if.end509

if.end509:                                        ; preds = %if.then507, %lor.end504
  store i32 -1, ptr %ip, align 4
  %467 = load i32, ptr %cursl, align 4
  %tobool510 = icmp ne i32 %467, 0
  br i1 %tobool510, label %land.lhs.true511, label %if.end515

land.lhs.true511:                                 ; preds = %if.end509
  %468 = load i32, ptr %lst2sl, align 4
  %tobool512 = icmp ne i32 %468, 0
  br i1 %tobool512, label %if.end515, label %if.then513

if.then513:                                       ; preds = %land.lhs.true511
  %469 = load ptr, ptr %n.addr, align 8
  %470 = load i32, ptr %469, align 4
  %add514 = add nsw i32 %470, 2
  %471 = load ptr, ptr %info.addr, align 8
  store i32 %add514, ptr %471, align 4
  br label %if.end515

if.end515:                                        ; preds = %if.then513, %land.lhs.true511, %if.end509
  br label %if.end517

if.else516:                                       ; preds = %if.else497
  store i32 1, ptr %ip, align 4
  br label %if.end517

if.end517:                                        ; preds = %if.else516, %if.end515
  br label %if.end518

if.end518:                                        ; preds = %if.end517, %if.end496
  %472 = load i32, ptr %lastsl, align 4
  store i32 %472, ptr %lst2sl, align 4
  %473 = load i32, ptr %cursl, align 4
  store i32 %473, ptr %lastsl, align 4
  br label %for.inc519

for.inc519:                                       ; preds = %if.end518
  %474 = load i32, ptr %i__, align 4
  %inc520 = add nsw i32 %474, 1
  store i32 %inc520, ptr %i__, align 4
  br label %for.cond473, !llvm.loop !8

for.end521:                                       ; preds = %for.cond473
  br label %if.end522

if.end522:                                        ; preds = %for.end521, %land.lhs.true469, %if.end467
  %475 = load i32, ptr %maxwrk, align 4
  %conv523 = sitofp i32 %475 to float
  %476 = load ptr, ptr %work.addr, align 8
  %arrayidx524 = getelementptr inbounds float, ptr %476, i64 1
  store float %conv523, ptr %arrayidx524, align 4
  %477 = load i32, ptr %wantsv, align 4
  %tobool525 = icmp ne i32 %477, 0
  br i1 %tobool525, label %if.then528, label %lor.lhs.false526

lor.lhs.false526:                                 ; preds = %if.end522
  %478 = load i32, ptr %wantsb, align 4
  %tobool527 = icmp ne i32 %478, 0
  br i1 %tobool527, label %if.then528, label %if.else532

if.then528:                                       ; preds = %lor.lhs.false526, %if.end522
  %479 = load ptr, ptr %sdim.addr, align 8
  %480 = load i32, ptr %479, align 4
  %481 = load ptr, ptr %n.addr, align 8
  %482 = load i32, ptr %481, align 4
  %483 = load ptr, ptr %sdim.addr, align 8
  %484 = load i32, ptr %483, align 4
  %sub529 = sub nsw i32 %482, %484
  %mul530 = mul nsw i32 %480, %sub529
  %485 = load ptr, ptr %iwork.addr, align 8
  %arrayidx531 = getelementptr inbounds i32, ptr %485, i64 1
  store i32 %mul530, ptr %arrayidx531, align 4
  br label %if.end534

if.else532:                                       ; preds = %lor.lhs.false526
  %486 = load ptr, ptr %iwork.addr, align 8
  %arrayidx533 = getelementptr inbounds i32, ptr %486, i64 1
  store i32 1, ptr %arrayidx533, align 4
  br label %if.end534

if.end534:                                        ; preds = %if.else532, %if.then528
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end534, %if.then144, %if.then139, %if.then134
  %487 = load i32, ptr %retval, align 4
  ret i32 %487
}

declare i32 @lsame_(ptr noundef, ptr noundef) #1

declare i32 @ilaenv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @shseqr_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @xerbla_(ptr noundef, ptr noundef) #1

declare float @slamch_(ptr noundef) #1

declare i32 @slabad_(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
declare double @sqrt(double noundef) #2

declare float @slange_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @slascl_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @sgebal_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @sgehrd_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @slacpy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @sorghr_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @strsen_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @sgebak_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @scopy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @sswap_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

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

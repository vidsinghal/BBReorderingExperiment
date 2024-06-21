; ModuleID = 'samples/591.bc'
source_filename = "/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/map/lapack2flamec/f2c/c/dsyevr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@c__10 = internal global i32 10, align 4
@.str = private unnamed_addr constant [7 x i8] c"DSYEVR\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@c__1 = internal global i32 1, align 4
@c__2 = internal global i32 2, align 4
@c__3 = internal global i32 3, align 4
@c__4 = internal global i32 4, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"V\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"DSYTRD\00", align 1
@c_n1 = internal global i32 -1, align 4
@.str.8 = private unnamed_addr constant [7 x i8] c"DORMTR\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"Safe minimum\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"Precision\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"M\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @dsyevr_(ptr noundef %jobz, ptr noundef %range, ptr noundef %uplo, ptr noundef %n, ptr noundef %a, ptr noundef %lda, ptr noundef %vl, ptr noundef %vu, ptr noundef %il, ptr noundef %iu, ptr noundef %abstol, ptr noundef %m, ptr noundef %w, ptr noundef %z__, ptr noundef %ldz, ptr noundef %isuppz, ptr noundef %work, ptr noundef %lwork, ptr noundef %iwork, ptr noundef %liwork, ptr noundef %info) #0 {
entry:
  %retval = alloca i32, align 4
  %jobz.addr = alloca ptr, align 8
  %range.addr = alloca ptr, align 8
  %uplo.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %lda.addr = alloca ptr, align 8
  %vl.addr = alloca ptr, align 8
  %vu.addr = alloca ptr, align 8
  %il.addr = alloca ptr, align 8
  %iu.addr = alloca ptr, align 8
  %abstol.addr = alloca ptr, align 8
  %m.addr = alloca ptr, align 8
  %w.addr = alloca ptr, align 8
  %z__.addr = alloca ptr, align 8
  %ldz.addr = alloca ptr, align 8
  %isuppz.addr = alloca ptr, align 8
  %work.addr = alloca ptr, align 8
  %lwork.addr = alloca ptr, align 8
  %iwork.addr = alloca ptr, align 8
  %liwork.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %a_dim1 = alloca i32, align 4
  %a_offset = alloca i32, align 4
  %z_dim1 = alloca i32, align 4
  %z_offset = alloca i32, align 4
  %i__1 = alloca i32, align 4
  %i__2 = alloca i32, align 4
  %d__1 = alloca double, align 8
  %d__2 = alloca double, align 8
  %i__ = alloca i32, align 4
  %j = alloca i32, align 4
  %nb = alloca i32, align 4
  %jj = alloca i32, align 4
  %eps = alloca double, align 8
  %vll = alloca double, align 8
  %vuu = alloca double, align 8
  %tmp1 = alloca double, align 8
  %indd = alloca i32, align 4
  %inde = alloca i32, align 4
  %anrm = alloca double, align 8
  %imax = alloca i32, align 4
  %rmin = alloca double, align 8
  %rmax = alloca double, align 8
  %inddd = alloca i32, align 4
  %indee = alloca i32, align 4
  %sigma = alloca double, align 8
  %iinfo = alloca i32, align 4
  %order = alloca [1 x i8], align 1
  %indwk = alloca i32, align 4
  %lwmin = alloca i32, align 4
  %lower = alloca i32, align 4
  %wantz = alloca i32, align 4
  %alleig = alloca i32, align 4
  %indeig = alloca i32, align 4
  %iscale = alloca i32, align 4
  %ieeeok = alloca i32, align 4
  %indibl = alloca i32, align 4
  %indifl = alloca i32, align 4
  %valeig = alloca i32, align 4
  %safmin = alloca double, align 8
  %abstll = alloca double, align 8
  %bignum = alloca double, align 8
  %indtau = alloca i32, align 4
  %indisp = alloca i32, align 4
  %indiwo = alloca i32, align 4
  %indwkn = alloca i32, align 4
  %liwmin = alloca i32, align 4
  %tryrac = alloca i32, align 4
  %llwrkn = alloca i32, align 4
  %llwork = alloca i32, align 4
  %nsplit = alloca i32, align 4
  %smlnum = alloca double, align 8
  %lwkopt = alloca i32, align 4
  %lquery = alloca i32, align 4
  store ptr %jobz, ptr %jobz.addr, align 8
  store ptr %range, ptr %range.addr, align 8
  store ptr %uplo, ptr %uplo.addr, align 8
  store ptr %n, ptr %n.addr, align 8
  store ptr %a, ptr %a.addr, align 8
  store ptr %lda, ptr %lda.addr, align 8
  store ptr %vl, ptr %vl.addr, align 8
  store ptr %vu, ptr %vu.addr, align 8
  store ptr %il, ptr %il.addr, align 8
  store ptr %iu, ptr %iu.addr, align 8
  store ptr %abstol, ptr %abstol.addr, align 8
  store ptr %m, ptr %m.addr, align 8
  store ptr %w, ptr %w.addr, align 8
  store ptr %z__, ptr %z__.addr, align 8
  store ptr %ldz, ptr %ldz.addr, align 8
  store ptr %isuppz, ptr %isuppz.addr, align 8
  store ptr %work, ptr %work.addr, align 8
  store ptr %lwork, ptr %lwork.addr, align 8
  store ptr %iwork, ptr %iwork.addr, align 8
  store ptr %liwork, ptr %liwork.addr, align 8
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
  %5 = load ptr, ptr %w.addr, align 8
  %incdec.ptr = getelementptr inbounds double, ptr %5, i32 -1
  store ptr %incdec.ptr, ptr %w.addr, align 8
  %6 = load ptr, ptr %ldz.addr, align 8
  %7 = load i32, ptr %6, align 4
  store i32 %7, ptr %z_dim1, align 4
  %8 = load i32, ptr %z_dim1, align 4
  %add1 = add nsw i32 1, %8
  store i32 %add1, ptr %z_offset, align 4
  %9 = load i32, ptr %z_offset, align 4
  %10 = load ptr, ptr %z__.addr, align 8
  %idx.ext2 = sext i32 %9 to i64
  %idx.neg3 = sub i64 0, %idx.ext2
  %add.ptr4 = getelementptr inbounds double, ptr %10, i64 %idx.neg3
  store ptr %add.ptr4, ptr %z__.addr, align 8
  %11 = load ptr, ptr %isuppz.addr, align 8
  %incdec.ptr5 = getelementptr inbounds i32, ptr %11, i32 -1
  store ptr %incdec.ptr5, ptr %isuppz.addr, align 8
  %12 = load ptr, ptr %work.addr, align 8
  %incdec.ptr6 = getelementptr inbounds double, ptr %12, i32 -1
  store ptr %incdec.ptr6, ptr %work.addr, align 8
  %13 = load ptr, ptr %iwork.addr, align 8
  %incdec.ptr7 = getelementptr inbounds i32, ptr %13, i32 -1
  store ptr %incdec.ptr7, ptr %iwork.addr, align 8
  %call = call i32 @ilaenv_(ptr noundef @c__10, ptr noundef @.str, ptr noundef @.str.1, ptr noundef @c__1, ptr noundef @c__2, ptr noundef @c__3, ptr noundef @c__4)
  store i32 %call, ptr %ieeeok, align 4
  %14 = load ptr, ptr %uplo.addr, align 8
  %call8 = call i32 @lsame_(ptr noundef %14, ptr noundef @.str.2)
  store i32 %call8, ptr %lower, align 4
  %15 = load ptr, ptr %jobz.addr, align 8
  %call9 = call i32 @lsame_(ptr noundef %15, ptr noundef @.str.3)
  store i32 %call9, ptr %wantz, align 4
  %16 = load ptr, ptr %range.addr, align 8
  %call10 = call i32 @lsame_(ptr noundef %16, ptr noundef @.str.4)
  store i32 %call10, ptr %alleig, align 4
  %17 = load ptr, ptr %range.addr, align 8
  %call11 = call i32 @lsame_(ptr noundef %17, ptr noundef @.str.3)
  store i32 %call11, ptr %valeig, align 4
  %18 = load ptr, ptr %range.addr, align 8
  %call12 = call i32 @lsame_(ptr noundef %18, ptr noundef @.str.5)
  store i32 %call12, ptr %indeig, align 4
  %19 = load ptr, ptr %lwork.addr, align 8
  %20 = load i32, ptr %19, align 4
  %cmp = icmp eq i32 %20, -1
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %21 = load ptr, ptr %liwork.addr, align 8
  %22 = load i32, ptr %21, align 4
  %cmp13 = icmp eq i32 %22, -1
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %23 = phi i1 [ true, %entry ], [ %cmp13, %lor.rhs ]
  %lor.ext = zext i1 %23 to i32
  store i32 %lor.ext, ptr %lquery, align 4
  store i32 1, ptr %i__1, align 4
  %24 = load ptr, ptr %n.addr, align 8
  %25 = load i32, ptr %24, align 4
  %mul = mul nsw i32 %25, 26
  store i32 %mul, ptr %i__2, align 4
  %26 = load i32, ptr %i__1, align 4
  %27 = load i32, ptr %i__2, align 4
  %cmp14 = icmp sge i32 %26, %27
  br i1 %cmp14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.end
  %28 = load i32, ptr %i__1, align 4
  br label %cond.end

cond.false:                                       ; preds = %lor.end
  %29 = load i32, ptr %i__2, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %28, %cond.true ], [ %29, %cond.false ]
  store i32 %cond, ptr %lwmin, align 4
  store i32 1, ptr %i__1, align 4
  %30 = load ptr, ptr %n.addr, align 8
  %31 = load i32, ptr %30, align 4
  %mul15 = mul nsw i32 %31, 10
  store i32 %mul15, ptr %i__2, align 4
  %32 = load i32, ptr %i__1, align 4
  %33 = load i32, ptr %i__2, align 4
  %cmp16 = icmp sge i32 %32, %33
  br i1 %cmp16, label %cond.true17, label %cond.false18

cond.true17:                                      ; preds = %cond.end
  %34 = load i32, ptr %i__1, align 4
  br label %cond.end19

cond.false18:                                     ; preds = %cond.end
  %35 = load i32, ptr %i__2, align 4
  br label %cond.end19

cond.end19:                                       ; preds = %cond.false18, %cond.true17
  %cond20 = phi i32 [ %34, %cond.true17 ], [ %35, %cond.false18 ]
  store i32 %cond20, ptr %liwmin, align 4
  %36 = load ptr, ptr %info.addr, align 8
  store i32 0, ptr %36, align 4
  %37 = load i32, ptr %wantz, align 4
  %tobool = icmp ne i32 %37, 0
  br i1 %tobool, label %if.else, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end19
  %38 = load ptr, ptr %jobz.addr, align 8
  %call21 = call i32 @lsame_(ptr noundef %38, ptr noundef @.str.1)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.else, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  %39 = load ptr, ptr %info.addr, align 8
  store i32 -1, ptr %39, align 4
  br label %if.end82

if.else:                                          ; preds = %lor.lhs.false, %cond.end19
  %40 = load i32, ptr %alleig, align 4
  %tobool23 = icmp ne i32 %40, 0
  br i1 %tobool23, label %if.else29, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %if.else
  %41 = load i32, ptr %valeig, align 4
  %tobool25 = icmp ne i32 %41, 0
  br i1 %tobool25, label %if.else29, label %lor.lhs.false26

lor.lhs.false26:                                  ; preds = %lor.lhs.false24
  %42 = load i32, ptr %indeig, align 4
  %tobool27 = icmp ne i32 %42, 0
  br i1 %tobool27, label %if.else29, label %if.then28

if.then28:                                        ; preds = %lor.lhs.false26
  %43 = load ptr, ptr %info.addr, align 8
  store i32 -2, ptr %43, align 4
  br label %if.end81

if.else29:                                        ; preds = %lor.lhs.false26, %lor.lhs.false24, %if.else
  %44 = load i32, ptr %lower, align 4
  %tobool30 = icmp ne i32 %44, 0
  br i1 %tobool30, label %if.else35, label %lor.lhs.false31

lor.lhs.false31:                                  ; preds = %if.else29
  %45 = load ptr, ptr %uplo.addr, align 8
  %call32 = call i32 @lsame_(ptr noundef %45, ptr noundef @.str.6)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.else35, label %if.then34

if.then34:                                        ; preds = %lor.lhs.false31
  %46 = load ptr, ptr %info.addr, align 8
  store i32 -3, ptr %46, align 4
  br label %if.end80

if.else35:                                        ; preds = %lor.lhs.false31, %if.else29
  %47 = load ptr, ptr %n.addr, align 8
  %48 = load i32, ptr %47, align 4
  %cmp36 = icmp slt i32 %48, 0
  br i1 %cmp36, label %if.then37, label %if.else38

if.then37:                                        ; preds = %if.else35
  %49 = load ptr, ptr %info.addr, align 8
  store i32 -4, ptr %49, align 4
  br label %if.end79

if.else38:                                        ; preds = %if.else35
  %50 = load ptr, ptr %lda.addr, align 8
  %51 = load i32, ptr %50, align 4
  %52 = load ptr, ptr %n.addr, align 8
  %53 = load i32, ptr %52, align 4
  %cmp39 = icmp sge i32 1, %53
  br i1 %cmp39, label %cond.true40, label %cond.false41

cond.true40:                                      ; preds = %if.else38
  br label %cond.end42

cond.false41:                                     ; preds = %if.else38
  %54 = load ptr, ptr %n.addr, align 8
  %55 = load i32, ptr %54, align 4
  br label %cond.end42

cond.end42:                                       ; preds = %cond.false41, %cond.true40
  %cond43 = phi i32 [ 1, %cond.true40 ], [ %55, %cond.false41 ]
  %cmp44 = icmp slt i32 %51, %cond43
  br i1 %cmp44, label %if.then45, label %if.else46

if.then45:                                        ; preds = %cond.end42
  %56 = load ptr, ptr %info.addr, align 8
  store i32 -6, ptr %56, align 4
  br label %if.end78

if.else46:                                        ; preds = %cond.end42
  %57 = load i32, ptr %valeig, align 4
  %tobool47 = icmp ne i32 %57, 0
  br i1 %tobool47, label %if.then48, label %if.else52

if.then48:                                        ; preds = %if.else46
  %58 = load ptr, ptr %n.addr, align 8
  %59 = load i32, ptr %58, align 4
  %cmp49 = icmp sgt i32 %59, 0
  br i1 %cmp49, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then48
  %60 = load ptr, ptr %vu.addr, align 8
  %61 = load double, ptr %60, align 8
  %62 = load ptr, ptr %vl.addr, align 8
  %63 = load double, ptr %62, align 8
  %cmp50 = fcmp ole double %61, %63
  br i1 %cmp50, label %if.then51, label %if.end

if.then51:                                        ; preds = %land.lhs.true
  %64 = load ptr, ptr %info.addr, align 8
  store i32 -8, ptr %64, align 4
  br label %if.end

if.end:                                           ; preds = %if.then51, %land.lhs.true, %if.then48
  br label %if.end77

if.else52:                                        ; preds = %if.else46
  %65 = load i32, ptr %indeig, align 4
  %tobool53 = icmp ne i32 %65, 0
  br i1 %tobool53, label %if.then54, label %if.end76

if.then54:                                        ; preds = %if.else52
  %66 = load ptr, ptr %il.addr, align 8
  %67 = load i32, ptr %66, align 4
  %cmp55 = icmp slt i32 %67, 1
  br i1 %cmp55, label %if.then63, label %lor.lhs.false56

lor.lhs.false56:                                  ; preds = %if.then54
  %68 = load ptr, ptr %il.addr, align 8
  %69 = load i32, ptr %68, align 4
  %70 = load ptr, ptr %n.addr, align 8
  %71 = load i32, ptr %70, align 4
  %cmp57 = icmp sge i32 1, %71
  br i1 %cmp57, label %cond.true58, label %cond.false59

cond.true58:                                      ; preds = %lor.lhs.false56
  br label %cond.end60

cond.false59:                                     ; preds = %lor.lhs.false56
  %72 = load ptr, ptr %n.addr, align 8
  %73 = load i32, ptr %72, align 4
  br label %cond.end60

cond.end60:                                       ; preds = %cond.false59, %cond.true58
  %cond61 = phi i32 [ 1, %cond.true58 ], [ %73, %cond.false59 ]
  %cmp62 = icmp sgt i32 %69, %cond61
  br i1 %cmp62, label %if.then63, label %if.else64

if.then63:                                        ; preds = %cond.end60, %if.then54
  %74 = load ptr, ptr %info.addr, align 8
  store i32 -9, ptr %74, align 4
  br label %if.end75

if.else64:                                        ; preds = %cond.end60
  %75 = load ptr, ptr %iu.addr, align 8
  %76 = load i32, ptr %75, align 4
  %77 = load ptr, ptr %n.addr, align 8
  %78 = load i32, ptr %77, align 4
  %79 = load ptr, ptr %il.addr, align 8
  %80 = load i32, ptr %79, align 4
  %cmp65 = icmp sle i32 %78, %80
  br i1 %cmp65, label %cond.true66, label %cond.false67

cond.true66:                                      ; preds = %if.else64
  %81 = load ptr, ptr %n.addr, align 8
  %82 = load i32, ptr %81, align 4
  br label %cond.end68

cond.false67:                                     ; preds = %if.else64
  %83 = load ptr, ptr %il.addr, align 8
  %84 = load i32, ptr %83, align 4
  br label %cond.end68

cond.end68:                                       ; preds = %cond.false67, %cond.true66
  %cond69 = phi i32 [ %82, %cond.true66 ], [ %84, %cond.false67 ]
  %cmp70 = icmp slt i32 %76, %cond69
  br i1 %cmp70, label %if.then73, label %lor.lhs.false71

lor.lhs.false71:                                  ; preds = %cond.end68
  %85 = load ptr, ptr %iu.addr, align 8
  %86 = load i32, ptr %85, align 4
  %87 = load ptr, ptr %n.addr, align 8
  %88 = load i32, ptr %87, align 4
  %cmp72 = icmp sgt i32 %86, %88
  br i1 %cmp72, label %if.then73, label %if.end74

if.then73:                                        ; preds = %lor.lhs.false71, %cond.end68
  %89 = load ptr, ptr %info.addr, align 8
  store i32 -10, ptr %89, align 4
  br label %if.end74

if.end74:                                         ; preds = %if.then73, %lor.lhs.false71
  br label %if.end75

if.end75:                                         ; preds = %if.end74, %if.then63
  br label %if.end76

if.end76:                                         ; preds = %if.end75, %if.else52
  br label %if.end77

if.end77:                                         ; preds = %if.end76, %if.end
  br label %if.end78

if.end78:                                         ; preds = %if.end77, %if.then45
  br label %if.end79

if.end79:                                         ; preds = %if.end78, %if.then37
  br label %if.end80

if.end80:                                         ; preds = %if.end79, %if.then34
  br label %if.end81

if.end81:                                         ; preds = %if.end80, %if.then28
  br label %if.end82

if.end82:                                         ; preds = %if.end81, %if.then
  %90 = load ptr, ptr %info.addr, align 8
  %91 = load i32, ptr %90, align 4
  %cmp83 = icmp eq i32 %91, 0
  br i1 %cmp83, label %if.then84, label %if.end104

if.then84:                                        ; preds = %if.end82
  %92 = load ptr, ptr %ldz.addr, align 8
  %93 = load i32, ptr %92, align 4
  %cmp85 = icmp slt i32 %93, 1
  br i1 %cmp85, label %if.then90, label %lor.lhs.false86

lor.lhs.false86:                                  ; preds = %if.then84
  %94 = load i32, ptr %wantz, align 4
  %tobool87 = icmp ne i32 %94, 0
  br i1 %tobool87, label %land.lhs.true88, label %if.else91

land.lhs.true88:                                  ; preds = %lor.lhs.false86
  %95 = load ptr, ptr %ldz.addr, align 8
  %96 = load i32, ptr %95, align 4
  %97 = load ptr, ptr %n.addr, align 8
  %98 = load i32, ptr %97, align 4
  %cmp89 = icmp slt i32 %96, %98
  br i1 %cmp89, label %if.then90, label %if.else91

if.then90:                                        ; preds = %land.lhs.true88, %if.then84
  %99 = load ptr, ptr %info.addr, align 8
  store i32 -15, ptr %99, align 4
  br label %if.end103

if.else91:                                        ; preds = %land.lhs.true88, %lor.lhs.false86
  %100 = load ptr, ptr %lwork.addr, align 8
  %101 = load i32, ptr %100, align 4
  %102 = load i32, ptr %lwmin, align 4
  %cmp92 = icmp slt i32 %101, %102
  br i1 %cmp92, label %land.lhs.true93, label %if.else96

land.lhs.true93:                                  ; preds = %if.else91
  %103 = load i32, ptr %lquery, align 4
  %tobool94 = icmp ne i32 %103, 0
  br i1 %tobool94, label %if.else96, label %if.then95

if.then95:                                        ; preds = %land.lhs.true93
  %104 = load ptr, ptr %info.addr, align 8
  store i32 -18, ptr %104, align 4
  br label %if.end102

if.else96:                                        ; preds = %land.lhs.true93, %if.else91
  %105 = load ptr, ptr %liwork.addr, align 8
  %106 = load i32, ptr %105, align 4
  %107 = load i32, ptr %liwmin, align 4
  %cmp97 = icmp slt i32 %106, %107
  br i1 %cmp97, label %land.lhs.true98, label %if.end101

land.lhs.true98:                                  ; preds = %if.else96
  %108 = load i32, ptr %lquery, align 4
  %tobool99 = icmp ne i32 %108, 0
  br i1 %tobool99, label %if.end101, label %if.then100

if.then100:                                       ; preds = %land.lhs.true98
  %109 = load ptr, ptr %info.addr, align 8
  store i32 -20, ptr %109, align 4
  br label %if.end101

if.end101:                                        ; preds = %if.then100, %land.lhs.true98, %if.else96
  br label %if.end102

if.end102:                                        ; preds = %if.end101, %if.then95
  br label %if.end103

if.end103:                                        ; preds = %if.end102, %if.then90
  br label %if.end104

if.end104:                                        ; preds = %if.end103, %if.end82
  %110 = load ptr, ptr %info.addr, align 8
  %111 = load i32, ptr %110, align 4
  %cmp105 = icmp eq i32 %111, 0
  br i1 %cmp105, label %if.then106, label %if.end122

if.then106:                                       ; preds = %if.end104
  %112 = load ptr, ptr %uplo.addr, align 8
  %113 = load ptr, ptr %n.addr, align 8
  %call107 = call i32 @ilaenv_(ptr noundef @c__1, ptr noundef @.str.7, ptr noundef %112, ptr noundef %113, ptr noundef @c_n1, ptr noundef @c_n1, ptr noundef @c_n1)
  store i32 %call107, ptr %nb, align 4
  %114 = load i32, ptr %nb, align 4
  store i32 %114, ptr %i__1, align 4
  %115 = load ptr, ptr %uplo.addr, align 8
  %116 = load ptr, ptr %n.addr, align 8
  %call108 = call i32 @ilaenv_(ptr noundef @c__1, ptr noundef @.str.8, ptr noundef %115, ptr noundef %116, ptr noundef @c_n1, ptr noundef @c_n1, ptr noundef @c_n1)
  store i32 %call108, ptr %i__2, align 4
  %117 = load i32, ptr %i__1, align 4
  %118 = load i32, ptr %i__2, align 4
  %cmp109 = icmp sge i32 %117, %118
  br i1 %cmp109, label %cond.true110, label %cond.false111

cond.true110:                                     ; preds = %if.then106
  %119 = load i32, ptr %i__1, align 4
  br label %cond.end112

cond.false111:                                    ; preds = %if.then106
  %120 = load i32, ptr %i__2, align 4
  br label %cond.end112

cond.end112:                                      ; preds = %cond.false111, %cond.true110
  %cond113 = phi i32 [ %119, %cond.true110 ], [ %120, %cond.false111 ]
  store i32 %cond113, ptr %nb, align 4
  %121 = load i32, ptr %nb, align 4
  %add114 = add nsw i32 %121, 1
  %122 = load ptr, ptr %n.addr, align 8
  %123 = load i32, ptr %122, align 4
  %mul115 = mul nsw i32 %add114, %123
  store i32 %mul115, ptr %i__1, align 4
  %124 = load i32, ptr %i__1, align 4
  %125 = load i32, ptr %lwmin, align 4
  %cmp116 = icmp sge i32 %124, %125
  br i1 %cmp116, label %cond.true117, label %cond.false118

cond.true117:                                     ; preds = %cond.end112
  %126 = load i32, ptr %i__1, align 4
  br label %cond.end119

cond.false118:                                    ; preds = %cond.end112
  %127 = load i32, ptr %lwmin, align 4
  br label %cond.end119

cond.end119:                                      ; preds = %cond.false118, %cond.true117
  %cond120 = phi i32 [ %126, %cond.true117 ], [ %127, %cond.false118 ]
  store i32 %cond120, ptr %lwkopt, align 4
  %128 = load i32, ptr %lwkopt, align 4
  %conv = sitofp i32 %128 to double
  %129 = load ptr, ptr %work.addr, align 8
  %arrayidx = getelementptr inbounds double, ptr %129, i64 1
  store double %conv, ptr %arrayidx, align 8
  %130 = load i32, ptr %liwmin, align 4
  %131 = load ptr, ptr %iwork.addr, align 8
  %arrayidx121 = getelementptr inbounds i32, ptr %131, i64 1
  store i32 %130, ptr %arrayidx121, align 4
  br label %if.end122

if.end122:                                        ; preds = %cond.end119, %if.end104
  %132 = load ptr, ptr %info.addr, align 8
  %133 = load i32, ptr %132, align 4
  %cmp123 = icmp ne i32 %133, 0
  br i1 %cmp123, label %if.then125, label %if.else127

if.then125:                                       ; preds = %if.end122
  %134 = load ptr, ptr %info.addr, align 8
  %135 = load i32, ptr %134, align 4
  %sub = sub nsw i32 0, %135
  store i32 %sub, ptr %i__1, align 4
  %call126 = call i32 @xerbla_(ptr noundef @.str, ptr noundef %i__1)
  store i32 0, ptr %retval, align 4
  br label %return

if.else127:                                       ; preds = %if.end122
  %136 = load i32, ptr %lquery, align 4
  %tobool128 = icmp ne i32 %136, 0
  br i1 %tobool128, label %if.then129, label %if.end130

if.then129:                                       ; preds = %if.else127
  store i32 0, ptr %retval, align 4
  br label %return

if.end130:                                        ; preds = %if.else127
  br label %if.end131

if.end131:                                        ; preds = %if.end130
  %137 = load ptr, ptr %m.addr, align 8
  store i32 0, ptr %137, align 4
  %138 = load ptr, ptr %n.addr, align 8
  %139 = load i32, ptr %138, align 4
  %cmp132 = icmp eq i32 %139, 0
  br i1 %cmp132, label %if.then134, label %if.end136

if.then134:                                       ; preds = %if.end131
  %140 = load ptr, ptr %work.addr, align 8
  %arrayidx135 = getelementptr inbounds double, ptr %140, i64 1
  store double 1.000000e+00, ptr %arrayidx135, align 8
  store i32 0, ptr %retval, align 4
  br label %return

if.end136:                                        ; preds = %if.end131
  %141 = load ptr, ptr %n.addr, align 8
  %142 = load i32, ptr %141, align 4
  %cmp137 = icmp eq i32 %142, 1
  br i1 %cmp137, label %if.then139, label %if.end175

if.then139:                                       ; preds = %if.end136
  %143 = load ptr, ptr %work.addr, align 8
  %arrayidx140 = getelementptr inbounds double, ptr %143, i64 1
  store double 7.000000e+00, ptr %arrayidx140, align 8
  %144 = load i32, ptr %alleig, align 4
  %tobool141 = icmp ne i32 %144, 0
  br i1 %tobool141, label %if.then144, label %lor.lhs.false142

lor.lhs.false142:                                 ; preds = %if.then139
  %145 = load i32, ptr %indeig, align 4
  %tobool143 = icmp ne i32 %145, 0
  br i1 %tobool143, label %if.then144, label %if.else148

if.then144:                                       ; preds = %lor.lhs.false142, %if.then139
  %146 = load ptr, ptr %m.addr, align 8
  store i32 1, ptr %146, align 4
  %147 = load ptr, ptr %a.addr, align 8
  %148 = load i32, ptr %a_dim1, align 4
  %add145 = add nsw i32 %148, 1
  %idxprom = sext i32 %add145 to i64
  %arrayidx146 = getelementptr inbounds double, ptr %147, i64 %idxprom
  %149 = load double, ptr %arrayidx146, align 8
  %150 = load ptr, ptr %w.addr, align 8
  %arrayidx147 = getelementptr inbounds double, ptr %150, i64 1
  store double %149, ptr %arrayidx147, align 8
  br label %if.end166

if.else148:                                       ; preds = %lor.lhs.false142
  %151 = load ptr, ptr %vl.addr, align 8
  %152 = load double, ptr %151, align 8
  %153 = load ptr, ptr %a.addr, align 8
  %154 = load i32, ptr %a_dim1, align 4
  %add149 = add nsw i32 %154, 1
  %idxprom150 = sext i32 %add149 to i64
  %arrayidx151 = getelementptr inbounds double, ptr %153, i64 %idxprom150
  %155 = load double, ptr %arrayidx151, align 8
  %cmp152 = fcmp olt double %152, %155
  br i1 %cmp152, label %land.lhs.true154, label %if.end165

land.lhs.true154:                                 ; preds = %if.else148
  %156 = load ptr, ptr %vu.addr, align 8
  %157 = load double, ptr %156, align 8
  %158 = load ptr, ptr %a.addr, align 8
  %159 = load i32, ptr %a_dim1, align 4
  %add155 = add nsw i32 %159, 1
  %idxprom156 = sext i32 %add155 to i64
  %arrayidx157 = getelementptr inbounds double, ptr %158, i64 %idxprom156
  %160 = load double, ptr %arrayidx157, align 8
  %cmp158 = fcmp oge double %157, %160
  br i1 %cmp158, label %if.then160, label %if.end165

if.then160:                                       ; preds = %land.lhs.true154
  %161 = load ptr, ptr %m.addr, align 8
  store i32 1, ptr %161, align 4
  %162 = load ptr, ptr %a.addr, align 8
  %163 = load i32, ptr %a_dim1, align 4
  %add161 = add nsw i32 %163, 1
  %idxprom162 = sext i32 %add161 to i64
  %arrayidx163 = getelementptr inbounds double, ptr %162, i64 %idxprom162
  %164 = load double, ptr %arrayidx163, align 8
  %165 = load ptr, ptr %w.addr, align 8
  %arrayidx164 = getelementptr inbounds double, ptr %165, i64 1
  store double %164, ptr %arrayidx164, align 8
  br label %if.end165

if.end165:                                        ; preds = %if.then160, %land.lhs.true154, %if.else148
  br label %if.end166

if.end166:                                        ; preds = %if.end165, %if.then144
  %166 = load i32, ptr %wantz, align 4
  %tobool167 = icmp ne i32 %166, 0
  br i1 %tobool167, label %if.then168, label %if.end174

if.then168:                                       ; preds = %if.end166
  %167 = load ptr, ptr %z__.addr, align 8
  %168 = load i32, ptr %z_dim1, align 4
  %add169 = add nsw i32 %168, 1
  %idxprom170 = sext i32 %add169 to i64
  %arrayidx171 = getelementptr inbounds double, ptr %167, i64 %idxprom170
  store double 1.000000e+00, ptr %arrayidx171, align 8
  %169 = load ptr, ptr %isuppz.addr, align 8
  %arrayidx172 = getelementptr inbounds i32, ptr %169, i64 1
  store i32 1, ptr %arrayidx172, align 4
  %170 = load ptr, ptr %isuppz.addr, align 8
  %arrayidx173 = getelementptr inbounds i32, ptr %170, i64 2
  store i32 1, ptr %arrayidx173, align 4
  br label %if.end174

if.end174:                                        ; preds = %if.then168, %if.end166
  store i32 0, ptr %retval, align 4
  br label %return

if.end175:                                        ; preds = %if.end136
  %call176 = call double @dlamch_(ptr noundef @.str.9)
  store double %call176, ptr %safmin, align 8
  %call177 = call double @dlamch_(ptr noundef @.str.10)
  store double %call177, ptr %eps, align 8
  %171 = load double, ptr %safmin, align 8
  %172 = load double, ptr %eps, align 8
  %div = fdiv double %171, %172
  store double %div, ptr %smlnum, align 8
  %173 = load double, ptr %smlnum, align 8
  %div178 = fdiv double 1.000000e+00, %173
  store double %div178, ptr %bignum, align 8
  %174 = load double, ptr %smlnum, align 8
  %call179 = call double @sqrt(double noundef %174) #3
  store double %call179, ptr %rmin, align 8
  %175 = load double, ptr %bignum, align 8
  %call180 = call double @sqrt(double noundef %175) #3
  store double %call180, ptr %d__1, align 8
  %176 = load double, ptr %safmin, align 8
  %call181 = call double @sqrt(double noundef %176) #3
  %call182 = call double @sqrt(double noundef %call181) #3
  %div183 = fdiv double 1.000000e+00, %call182
  store double %div183, ptr %d__2, align 8
  %177 = load double, ptr %d__1, align 8
  %178 = load double, ptr %d__2, align 8
  %cmp184 = fcmp ole double %177, %178
  br i1 %cmp184, label %cond.true186, label %cond.false187

cond.true186:                                     ; preds = %if.end175
  %179 = load double, ptr %d__1, align 8
  br label %cond.end188

cond.false187:                                    ; preds = %if.end175
  %180 = load double, ptr %d__2, align 8
  br label %cond.end188

cond.end188:                                      ; preds = %cond.false187, %cond.true186
  %cond189 = phi double [ %179, %cond.true186 ], [ %180, %cond.false187 ]
  store double %cond189, ptr %rmax, align 8
  store i32 0, ptr %iscale, align 4
  %181 = load ptr, ptr %abstol.addr, align 8
  %182 = load double, ptr %181, align 8
  store double %182, ptr %abstll, align 8
  %183 = load i32, ptr %valeig, align 4
  %tobool190 = icmp ne i32 %183, 0
  br i1 %tobool190, label %if.then191, label %if.end192

if.then191:                                       ; preds = %cond.end188
  %184 = load ptr, ptr %vl.addr, align 8
  %185 = load double, ptr %184, align 8
  store double %185, ptr %vll, align 8
  %186 = load ptr, ptr %vu.addr, align 8
  %187 = load double, ptr %186, align 8
  store double %187, ptr %vuu, align 8
  br label %if.end192

if.end192:                                        ; preds = %if.then191, %cond.end188
  %188 = load ptr, ptr %uplo.addr, align 8
  %189 = load ptr, ptr %n.addr, align 8
  %190 = load ptr, ptr %a.addr, align 8
  %191 = load i32, ptr %a_offset, align 4
  %idxprom193 = sext i32 %191 to i64
  %arrayidx194 = getelementptr inbounds double, ptr %190, i64 %idxprom193
  %192 = load ptr, ptr %lda.addr, align 8
  %193 = load ptr, ptr %work.addr, align 8
  %arrayidx195 = getelementptr inbounds double, ptr %193, i64 1
  %call196 = call double @dlansy_(ptr noundef @.str.11, ptr noundef %188, ptr noundef %189, ptr noundef %arrayidx194, ptr noundef %192, ptr noundef %arrayidx195)
  store double %call196, ptr %anrm, align 8
  %194 = load double, ptr %anrm, align 8
  %cmp197 = fcmp ogt double %194, 0.000000e+00
  br i1 %cmp197, label %land.lhs.true199, label %if.else204

land.lhs.true199:                                 ; preds = %if.end192
  %195 = load double, ptr %anrm, align 8
  %196 = load double, ptr %rmin, align 8
  %cmp200 = fcmp olt double %195, %196
  br i1 %cmp200, label %if.then202, label %if.else204

if.then202:                                       ; preds = %land.lhs.true199
  store i32 1, ptr %iscale, align 4
  %197 = load double, ptr %rmin, align 8
  %198 = load double, ptr %anrm, align 8
  %div203 = fdiv double %197, %198
  store double %div203, ptr %sigma, align 8
  br label %if.end210

if.else204:                                       ; preds = %land.lhs.true199, %if.end192
  %199 = load double, ptr %anrm, align 8
  %200 = load double, ptr %rmax, align 8
  %cmp205 = fcmp ogt double %199, %200
  br i1 %cmp205, label %if.then207, label %if.end209

if.then207:                                       ; preds = %if.else204
  store i32 1, ptr %iscale, align 4
  %201 = load double, ptr %rmax, align 8
  %202 = load double, ptr %anrm, align 8
  %div208 = fdiv double %201, %202
  store double %div208, ptr %sigma, align 8
  br label %if.end209

if.end209:                                        ; preds = %if.then207, %if.else204
  br label %if.end210

if.end210:                                        ; preds = %if.end209, %if.then202
  %203 = load i32, ptr %iscale, align 4
  %cmp211 = icmp eq i32 %203, 1
  br i1 %cmp211, label %if.then213, label %if.end249

if.then213:                                       ; preds = %if.end210
  %204 = load i32, ptr %lower, align 4
  %tobool214 = icmp ne i32 %204, 0
  br i1 %tobool214, label %if.then215, label %if.else225

if.then215:                                       ; preds = %if.then213
  %205 = load ptr, ptr %n.addr, align 8
  %206 = load i32, ptr %205, align 4
  store i32 %206, ptr %i__1, align 4
  store i32 1, ptr %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then215
  %207 = load i32, ptr %j, align 4
  %208 = load i32, ptr %i__1, align 4
  %cmp216 = icmp sle i32 %207, %208
  br i1 %cmp216, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %209 = load ptr, ptr %n.addr, align 8
  %210 = load i32, ptr %209, align 4
  %211 = load i32, ptr %j, align 4
  %sub218 = sub nsw i32 %210, %211
  %add219 = add nsw i32 %sub218, 1
  store i32 %add219, ptr %i__2, align 4
  %212 = load ptr, ptr %a.addr, align 8
  %213 = load i32, ptr %j, align 4
  %214 = load i32, ptr %j, align 4
  %215 = load i32, ptr %a_dim1, align 4
  %mul220 = mul nsw i32 %214, %215
  %add221 = add nsw i32 %213, %mul220
  %idxprom222 = sext i32 %add221 to i64
  %arrayidx223 = getelementptr inbounds double, ptr %212, i64 %idxprom222
  %call224 = call i32 @dscal_(ptr noundef %i__2, ptr noundef %sigma, ptr noundef %arrayidx223, ptr noundef @c__1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %216 = load i32, ptr %j, align 4
  %inc = add nsw i32 %216, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  br label %if.end238

if.else225:                                       ; preds = %if.then213
  %217 = load ptr, ptr %n.addr, align 8
  %218 = load i32, ptr %217, align 4
  store i32 %218, ptr %i__1, align 4
  store i32 1, ptr %j, align 4
  br label %for.cond226

for.cond226:                                      ; preds = %for.inc235, %if.else225
  %219 = load i32, ptr %j, align 4
  %220 = load i32, ptr %i__1, align 4
  %cmp227 = icmp sle i32 %219, %220
  br i1 %cmp227, label %for.body229, label %for.end237

for.body229:                                      ; preds = %for.cond226
  %221 = load ptr, ptr %a.addr, align 8
  %222 = load i32, ptr %j, align 4
  %223 = load i32, ptr %a_dim1, align 4
  %mul230 = mul nsw i32 %222, %223
  %add231 = add nsw i32 %mul230, 1
  %idxprom232 = sext i32 %add231 to i64
  %arrayidx233 = getelementptr inbounds double, ptr %221, i64 %idxprom232
  %call234 = call i32 @dscal_(ptr noundef %j, ptr noundef %sigma, ptr noundef %arrayidx233, ptr noundef @c__1)
  br label %for.inc235

for.inc235:                                       ; preds = %for.body229
  %224 = load i32, ptr %j, align 4
  %inc236 = add nsw i32 %224, 1
  store i32 %inc236, ptr %j, align 4
  br label %for.cond226, !llvm.loop !7

for.end237:                                       ; preds = %for.cond226
  br label %if.end238

if.end238:                                        ; preds = %for.end237, %for.end
  %225 = load ptr, ptr %abstol.addr, align 8
  %226 = load double, ptr %225, align 8
  %cmp239 = fcmp ogt double %226, 0.000000e+00
  br i1 %cmp239, label %if.then241, label %if.end243

if.then241:                                       ; preds = %if.end238
  %227 = load ptr, ptr %abstol.addr, align 8
  %228 = load double, ptr %227, align 8
  %229 = load double, ptr %sigma, align 8
  %mul242 = fmul double %228, %229
  store double %mul242, ptr %abstll, align 8
  br label %if.end243

if.end243:                                        ; preds = %if.then241, %if.end238
  %230 = load i32, ptr %valeig, align 4
  %tobool244 = icmp ne i32 %230, 0
  br i1 %tobool244, label %if.then245, label %if.end248

if.then245:                                       ; preds = %if.end243
  %231 = load ptr, ptr %vl.addr, align 8
  %232 = load double, ptr %231, align 8
  %233 = load double, ptr %sigma, align 8
  %mul246 = fmul double %232, %233
  store double %mul246, ptr %vll, align 8
  %234 = load ptr, ptr %vu.addr, align 8
  %235 = load double, ptr %234, align 8
  %236 = load double, ptr %sigma, align 8
  %mul247 = fmul double %235, %236
  store double %mul247, ptr %vuu, align 8
  br label %if.end248

if.end248:                                        ; preds = %if.then245, %if.end243
  br label %if.end249

if.end249:                                        ; preds = %if.end248, %if.end210
  store i32 1, ptr %indtau, align 4
  %237 = load i32, ptr %indtau, align 4
  %238 = load ptr, ptr %n.addr, align 8
  %239 = load i32, ptr %238, align 4
  %add250 = add nsw i32 %237, %239
  store i32 %add250, ptr %indd, align 4
  %240 = load i32, ptr %indd, align 4
  %241 = load ptr, ptr %n.addr, align 8
  %242 = load i32, ptr %241, align 4
  %add251 = add nsw i32 %240, %242
  store i32 %add251, ptr %inde, align 4
  %243 = load i32, ptr %inde, align 4
  %244 = load ptr, ptr %n.addr, align 8
  %245 = load i32, ptr %244, align 4
  %add252 = add nsw i32 %243, %245
  store i32 %add252, ptr %inddd, align 4
  %246 = load i32, ptr %inddd, align 4
  %247 = load ptr, ptr %n.addr, align 8
  %248 = load i32, ptr %247, align 4
  %add253 = add nsw i32 %246, %248
  store i32 %add253, ptr %indee, align 4
  %249 = load i32, ptr %indee, align 4
  %250 = load ptr, ptr %n.addr, align 8
  %251 = load i32, ptr %250, align 4
  %add254 = add nsw i32 %249, %251
  store i32 %add254, ptr %indwk, align 4
  %252 = load ptr, ptr %lwork.addr, align 8
  %253 = load i32, ptr %252, align 4
  %254 = load i32, ptr %indwk, align 4
  %sub255 = sub nsw i32 %253, %254
  %add256 = add nsw i32 %sub255, 1
  store i32 %add256, ptr %llwork, align 4
  store i32 1, ptr %indibl, align 4
  %255 = load i32, ptr %indibl, align 4
  %256 = load ptr, ptr %n.addr, align 8
  %257 = load i32, ptr %256, align 4
  %add257 = add nsw i32 %255, %257
  store i32 %add257, ptr %indisp, align 4
  %258 = load i32, ptr %indisp, align 4
  %259 = load ptr, ptr %n.addr, align 8
  %260 = load i32, ptr %259, align 4
  %add258 = add nsw i32 %258, %260
  store i32 %add258, ptr %indifl, align 4
  %261 = load i32, ptr %indifl, align 4
  %262 = load ptr, ptr %n.addr, align 8
  %263 = load i32, ptr %262, align 4
  %add259 = add nsw i32 %261, %263
  store i32 %add259, ptr %indiwo, align 4
  %264 = load ptr, ptr %uplo.addr, align 8
  %265 = load ptr, ptr %n.addr, align 8
  %266 = load ptr, ptr %a.addr, align 8
  %267 = load i32, ptr %a_offset, align 4
  %idxprom260 = sext i32 %267 to i64
  %arrayidx261 = getelementptr inbounds double, ptr %266, i64 %idxprom260
  %268 = load ptr, ptr %lda.addr, align 8
  %269 = load ptr, ptr %work.addr, align 8
  %270 = load i32, ptr %indd, align 4
  %idxprom262 = sext i32 %270 to i64
  %arrayidx263 = getelementptr inbounds double, ptr %269, i64 %idxprom262
  %271 = load ptr, ptr %work.addr, align 8
  %272 = load i32, ptr %inde, align 4
  %idxprom264 = sext i32 %272 to i64
  %arrayidx265 = getelementptr inbounds double, ptr %271, i64 %idxprom264
  %273 = load ptr, ptr %work.addr, align 8
  %274 = load i32, ptr %indtau, align 4
  %idxprom266 = sext i32 %274 to i64
  %arrayidx267 = getelementptr inbounds double, ptr %273, i64 %idxprom266
  %275 = load ptr, ptr %work.addr, align 8
  %276 = load i32, ptr %indwk, align 4
  %idxprom268 = sext i32 %276 to i64
  %arrayidx269 = getelementptr inbounds double, ptr %275, i64 %idxprom268
  %call270 = call i32 @dsytrd_(ptr noundef %264, ptr noundef %265, ptr noundef %arrayidx261, ptr noundef %268, ptr noundef %arrayidx263, ptr noundef %arrayidx265, ptr noundef %arrayidx267, ptr noundef %arrayidx269, ptr noundef %llwork, ptr noundef %iinfo)
  %277 = load i32, ptr %alleig, align 4
  %tobool271 = icmp ne i32 %277, 0
  br i1 %tobool271, label %land.lhs.true280, label %lor.lhs.false272

lor.lhs.false272:                                 ; preds = %if.end249
  %278 = load i32, ptr %indeig, align 4
  %tobool273 = icmp ne i32 %278, 0
  br i1 %tobool273, label %land.lhs.true274, label %if.end354

land.lhs.true274:                                 ; preds = %lor.lhs.false272
  %279 = load ptr, ptr %il.addr, align 8
  %280 = load i32, ptr %279, align 4
  %cmp275 = icmp eq i32 %280, 1
  br i1 %cmp275, label %land.lhs.true277, label %if.end354

land.lhs.true277:                                 ; preds = %land.lhs.true274
  %281 = load ptr, ptr %iu.addr, align 8
  %282 = load i32, ptr %281, align 4
  %283 = load ptr, ptr %n.addr, align 8
  %284 = load i32, ptr %283, align 4
  %cmp278 = icmp eq i32 %282, %284
  br i1 %cmp278, label %land.lhs.true280, label %if.end354

land.lhs.true280:                                 ; preds = %land.lhs.true277, %if.end249
  %285 = load i32, ptr %ieeeok, align 4
  %cmp281 = icmp eq i32 %285, 1
  br i1 %cmp281, label %if.then283, label %if.end354

if.then283:                                       ; preds = %land.lhs.true280
  %286 = load i32, ptr %wantz, align 4
  %tobool284 = icmp ne i32 %286, 0
  br i1 %tobool284, label %if.else300, label %if.then285

if.then285:                                       ; preds = %if.then283
  %287 = load ptr, ptr %n.addr, align 8
  %288 = load ptr, ptr %work.addr, align 8
  %289 = load i32, ptr %indd, align 4
  %idxprom286 = sext i32 %289 to i64
  %arrayidx287 = getelementptr inbounds double, ptr %288, i64 %idxprom286
  %290 = load ptr, ptr %w.addr, align 8
  %arrayidx288 = getelementptr inbounds double, ptr %290, i64 1
  %call289 = call i32 @dcopy_(ptr noundef %287, ptr noundef %arrayidx287, ptr noundef @c__1, ptr noundef %arrayidx288, ptr noundef @c__1)
  %291 = load ptr, ptr %n.addr, align 8
  %292 = load i32, ptr %291, align 4
  %sub290 = sub nsw i32 %292, 1
  store i32 %sub290, ptr %i__1, align 4
  %293 = load ptr, ptr %work.addr, align 8
  %294 = load i32, ptr %inde, align 4
  %idxprom291 = sext i32 %294 to i64
  %arrayidx292 = getelementptr inbounds double, ptr %293, i64 %idxprom291
  %295 = load ptr, ptr %work.addr, align 8
  %296 = load i32, ptr %indee, align 4
  %idxprom293 = sext i32 %296 to i64
  %arrayidx294 = getelementptr inbounds double, ptr %295, i64 %idxprom293
  %call295 = call i32 @dcopy_(ptr noundef %i__1, ptr noundef %arrayidx292, ptr noundef @c__1, ptr noundef %arrayidx294, ptr noundef @c__1)
  %297 = load ptr, ptr %n.addr, align 8
  %298 = load ptr, ptr %w.addr, align 8
  %arrayidx296 = getelementptr inbounds double, ptr %298, i64 1
  %299 = load ptr, ptr %work.addr, align 8
  %300 = load i32, ptr %indee, align 4
  %idxprom297 = sext i32 %300 to i64
  %arrayidx298 = getelementptr inbounds double, ptr %299, i64 %idxprom297
  %301 = load ptr, ptr %info.addr, align 8
  %call299 = call i32 @dsterf_(ptr noundef %297, ptr noundef %arrayidx296, ptr noundef %arrayidx298, ptr noundef %301)
  br label %if.end349

if.else300:                                       ; preds = %if.then283
  %302 = load ptr, ptr %n.addr, align 8
  %303 = load i32, ptr %302, align 4
  %sub301 = sub nsw i32 %303, 1
  store i32 %sub301, ptr %i__1, align 4
  %304 = load ptr, ptr %work.addr, align 8
  %305 = load i32, ptr %inde, align 4
  %idxprom302 = sext i32 %305 to i64
  %arrayidx303 = getelementptr inbounds double, ptr %304, i64 %idxprom302
  %306 = load ptr, ptr %work.addr, align 8
  %307 = load i32, ptr %indee, align 4
  %idxprom304 = sext i32 %307 to i64
  %arrayidx305 = getelementptr inbounds double, ptr %306, i64 %idxprom304
  %call306 = call i32 @dcopy_(ptr noundef %i__1, ptr noundef %arrayidx303, ptr noundef @c__1, ptr noundef %arrayidx305, ptr noundef @c__1)
  %308 = load ptr, ptr %n.addr, align 8
  %309 = load ptr, ptr %work.addr, align 8
  %310 = load i32, ptr %indd, align 4
  %idxprom307 = sext i32 %310 to i64
  %arrayidx308 = getelementptr inbounds double, ptr %309, i64 %idxprom307
  %311 = load ptr, ptr %work.addr, align 8
  %312 = load i32, ptr %inddd, align 4
  %idxprom309 = sext i32 %312 to i64
  %arrayidx310 = getelementptr inbounds double, ptr %311, i64 %idxprom309
  %call311 = call i32 @dcopy_(ptr noundef %308, ptr noundef %arrayidx308, ptr noundef @c__1, ptr noundef %arrayidx310, ptr noundef @c__1)
  %313 = load ptr, ptr %abstol.addr, align 8
  %314 = load double, ptr %313, align 8
  %315 = load ptr, ptr %n.addr, align 8
  %316 = load i32, ptr %315, align 4
  %conv312 = sitofp i32 %316 to double
  %mul313 = fmul double %conv312, 2.000000e+00
  %317 = load double, ptr %eps, align 8
  %mul314 = fmul double %mul313, %317
  %cmp315 = fcmp ole double %314, %mul314
  br i1 %cmp315, label %if.then317, label %if.else318

if.then317:                                       ; preds = %if.else300
  store i32 1, ptr %tryrac, align 4
  br label %if.end319

if.else318:                                       ; preds = %if.else300
  store i32 0, ptr %tryrac, align 4
  br label %if.end319

if.end319:                                        ; preds = %if.else318, %if.then317
  %318 = load ptr, ptr %jobz.addr, align 8
  %319 = load ptr, ptr %n.addr, align 8
  %320 = load ptr, ptr %work.addr, align 8
  %321 = load i32, ptr %inddd, align 4
  %idxprom320 = sext i32 %321 to i64
  %arrayidx321 = getelementptr inbounds double, ptr %320, i64 %idxprom320
  %322 = load ptr, ptr %work.addr, align 8
  %323 = load i32, ptr %indee, align 4
  %idxprom322 = sext i32 %323 to i64
  %arrayidx323 = getelementptr inbounds double, ptr %322, i64 %idxprom322
  %324 = load ptr, ptr %vl.addr, align 8
  %325 = load ptr, ptr %vu.addr, align 8
  %326 = load ptr, ptr %il.addr, align 8
  %327 = load ptr, ptr %iu.addr, align 8
  %328 = load ptr, ptr %m.addr, align 8
  %329 = load ptr, ptr %w.addr, align 8
  %arrayidx324 = getelementptr inbounds double, ptr %329, i64 1
  %330 = load ptr, ptr %z__.addr, align 8
  %331 = load i32, ptr %z_offset, align 4
  %idxprom325 = sext i32 %331 to i64
  %arrayidx326 = getelementptr inbounds double, ptr %330, i64 %idxprom325
  %332 = load ptr, ptr %ldz.addr, align 8
  %333 = load ptr, ptr %n.addr, align 8
  %334 = load ptr, ptr %isuppz.addr, align 8
  %arrayidx327 = getelementptr inbounds i32, ptr %334, i64 1
  %335 = load ptr, ptr %work.addr, align 8
  %336 = load i32, ptr %indwk, align 4
  %idxprom328 = sext i32 %336 to i64
  %arrayidx329 = getelementptr inbounds double, ptr %335, i64 %idxprom328
  %337 = load ptr, ptr %lwork.addr, align 8
  %338 = load ptr, ptr %iwork.addr, align 8
  %arrayidx330 = getelementptr inbounds i32, ptr %338, i64 1
  %339 = load ptr, ptr %liwork.addr, align 8
  %340 = load ptr, ptr %info.addr, align 8
  %call331 = call i32 @dstemr_(ptr noundef %318, ptr noundef @.str.4, ptr noundef %319, ptr noundef %arrayidx321, ptr noundef %arrayidx323, ptr noundef %324, ptr noundef %325, ptr noundef %326, ptr noundef %327, ptr noundef %328, ptr noundef %arrayidx324, ptr noundef %arrayidx326, ptr noundef %332, ptr noundef %333, ptr noundef %arrayidx327, ptr noundef %tryrac, ptr noundef %arrayidx329, ptr noundef %337, ptr noundef %arrayidx330, ptr noundef %339, ptr noundef %340)
  %341 = load i32, ptr %wantz, align 4
  %tobool332 = icmp ne i32 %341, 0
  br i1 %tobool332, label %land.lhs.true333, label %if.end348

land.lhs.true333:                                 ; preds = %if.end319
  %342 = load ptr, ptr %info.addr, align 8
  %343 = load i32, ptr %342, align 4
  %cmp334 = icmp eq i32 %343, 0
  br i1 %cmp334, label %if.then336, label %if.end348

if.then336:                                       ; preds = %land.lhs.true333
  %344 = load i32, ptr %inde, align 4
  store i32 %344, ptr %indwkn, align 4
  %345 = load ptr, ptr %lwork.addr, align 8
  %346 = load i32, ptr %345, align 4
  %347 = load i32, ptr %indwkn, align 4
  %sub337 = sub nsw i32 %346, %347
  %add338 = add nsw i32 %sub337, 1
  store i32 %add338, ptr %llwrkn, align 4
  %348 = load ptr, ptr %uplo.addr, align 8
  %349 = load ptr, ptr %n.addr, align 8
  %350 = load ptr, ptr %m.addr, align 8
  %351 = load ptr, ptr %a.addr, align 8
  %352 = load i32, ptr %a_offset, align 4
  %idxprom339 = sext i32 %352 to i64
  %arrayidx340 = getelementptr inbounds double, ptr %351, i64 %idxprom339
  %353 = load ptr, ptr %lda.addr, align 8
  %354 = load ptr, ptr %work.addr, align 8
  %355 = load i32, ptr %indtau, align 4
  %idxprom341 = sext i32 %355 to i64
  %arrayidx342 = getelementptr inbounds double, ptr %354, i64 %idxprom341
  %356 = load ptr, ptr %z__.addr, align 8
  %357 = load i32, ptr %z_offset, align 4
  %idxprom343 = sext i32 %357 to i64
  %arrayidx344 = getelementptr inbounds double, ptr %356, i64 %idxprom343
  %358 = load ptr, ptr %ldz.addr, align 8
  %359 = load ptr, ptr %work.addr, align 8
  %360 = load i32, ptr %indwkn, align 4
  %idxprom345 = sext i32 %360 to i64
  %arrayidx346 = getelementptr inbounds double, ptr %359, i64 %idxprom345
  %call347 = call i32 @dormtr_(ptr noundef @.str.2, ptr noundef %348, ptr noundef @.str.1, ptr noundef %349, ptr noundef %350, ptr noundef %arrayidx340, ptr noundef %353, ptr noundef %arrayidx342, ptr noundef %arrayidx344, ptr noundef %358, ptr noundef %arrayidx346, ptr noundef %llwrkn, ptr noundef %iinfo)
  br label %if.end348

if.end348:                                        ; preds = %if.then336, %land.lhs.true333, %if.end319
  br label %if.end349

if.end349:                                        ; preds = %if.end348, %if.then285
  %361 = load ptr, ptr %info.addr, align 8
  %362 = load i32, ptr %361, align 4
  %cmp350 = icmp eq i32 %362, 0
  br i1 %cmp350, label %if.then352, label %if.end353

if.then352:                                       ; preds = %if.end349
  %363 = load ptr, ptr %n.addr, align 8
  %364 = load i32, ptr %363, align 4
  %365 = load ptr, ptr %m.addr, align 8
  store i32 %364, ptr %365, align 4
  br label %L30

if.end353:                                        ; preds = %if.end349
  %366 = load ptr, ptr %info.addr, align 8
  store i32 0, ptr %366, align 4
  br label %if.end354

if.end354:                                        ; preds = %if.end353, %land.lhs.true280, %land.lhs.true277, %land.lhs.true274, %lor.lhs.false272
  %367 = load i32, ptr %wantz, align 4
  %tobool355 = icmp ne i32 %367, 0
  br i1 %tobool355, label %if.then356, label %if.else357

if.then356:                                       ; preds = %if.end354
  %arraydecay = getelementptr inbounds [1 x i8], ptr %order, i64 0, i64 0
  store i8 66, ptr %arraydecay, align 1
  br label %if.end359

if.else357:                                       ; preds = %if.end354
  %arraydecay358 = getelementptr inbounds [1 x i8], ptr %order, i64 0, i64 0
  store i8 69, ptr %arraydecay358, align 1
  br label %if.end359

if.end359:                                        ; preds = %if.else357, %if.then356
  %368 = load ptr, ptr %range.addr, align 8
  %arraydecay360 = getelementptr inbounds [1 x i8], ptr %order, i64 0, i64 0
  %369 = load ptr, ptr %n.addr, align 8
  %370 = load ptr, ptr %il.addr, align 8
  %371 = load ptr, ptr %iu.addr, align 8
  %372 = load ptr, ptr %work.addr, align 8
  %373 = load i32, ptr %indd, align 4
  %idxprom361 = sext i32 %373 to i64
  %arrayidx362 = getelementptr inbounds double, ptr %372, i64 %idxprom361
  %374 = load ptr, ptr %work.addr, align 8
  %375 = load i32, ptr %inde, align 4
  %idxprom363 = sext i32 %375 to i64
  %arrayidx364 = getelementptr inbounds double, ptr %374, i64 %idxprom363
  %376 = load ptr, ptr %m.addr, align 8
  %377 = load ptr, ptr %w.addr, align 8
  %arrayidx365 = getelementptr inbounds double, ptr %377, i64 1
  %378 = load ptr, ptr %iwork.addr, align 8
  %379 = load i32, ptr %indibl, align 4
  %idxprom366 = sext i32 %379 to i64
  %arrayidx367 = getelementptr inbounds i32, ptr %378, i64 %idxprom366
  %380 = load ptr, ptr %iwork.addr, align 8
  %381 = load i32, ptr %indisp, align 4
  %idxprom368 = sext i32 %381 to i64
  %arrayidx369 = getelementptr inbounds i32, ptr %380, i64 %idxprom368
  %382 = load ptr, ptr %work.addr, align 8
  %383 = load i32, ptr %indwk, align 4
  %idxprom370 = sext i32 %383 to i64
  %arrayidx371 = getelementptr inbounds double, ptr %382, i64 %idxprom370
  %384 = load ptr, ptr %iwork.addr, align 8
  %385 = load i32, ptr %indiwo, align 4
  %idxprom372 = sext i32 %385 to i64
  %arrayidx373 = getelementptr inbounds i32, ptr %384, i64 %idxprom372
  %386 = load ptr, ptr %info.addr, align 8
  %call374 = call i32 @dstebz_(ptr noundef %368, ptr noundef %arraydecay360, ptr noundef %369, ptr noundef %vll, ptr noundef %vuu, ptr noundef %370, ptr noundef %371, ptr noundef %abstll, ptr noundef %arrayidx362, ptr noundef %arrayidx364, ptr noundef %376, ptr noundef %nsplit, ptr noundef %arrayidx365, ptr noundef %arrayidx367, ptr noundef %arrayidx369, ptr noundef %arrayidx371, ptr noundef %arrayidx373, ptr noundef %386)
  %387 = load i32, ptr %wantz, align 4
  %tobool375 = icmp ne i32 %387, 0
  br i1 %tobool375, label %if.then376, label %if.end406

if.then376:                                       ; preds = %if.end359
  %388 = load ptr, ptr %n.addr, align 8
  %389 = load ptr, ptr %work.addr, align 8
  %390 = load i32, ptr %indd, align 4
  %idxprom377 = sext i32 %390 to i64
  %arrayidx378 = getelementptr inbounds double, ptr %389, i64 %idxprom377
  %391 = load ptr, ptr %work.addr, align 8
  %392 = load i32, ptr %inde, align 4
  %idxprom379 = sext i32 %392 to i64
  %arrayidx380 = getelementptr inbounds double, ptr %391, i64 %idxprom379
  %393 = load ptr, ptr %m.addr, align 8
  %394 = load ptr, ptr %w.addr, align 8
  %arrayidx381 = getelementptr inbounds double, ptr %394, i64 1
  %395 = load ptr, ptr %iwork.addr, align 8
  %396 = load i32, ptr %indibl, align 4
  %idxprom382 = sext i32 %396 to i64
  %arrayidx383 = getelementptr inbounds i32, ptr %395, i64 %idxprom382
  %397 = load ptr, ptr %iwork.addr, align 8
  %398 = load i32, ptr %indisp, align 4
  %idxprom384 = sext i32 %398 to i64
  %arrayidx385 = getelementptr inbounds i32, ptr %397, i64 %idxprom384
  %399 = load ptr, ptr %z__.addr, align 8
  %400 = load i32, ptr %z_offset, align 4
  %idxprom386 = sext i32 %400 to i64
  %arrayidx387 = getelementptr inbounds double, ptr %399, i64 %idxprom386
  %401 = load ptr, ptr %ldz.addr, align 8
  %402 = load ptr, ptr %work.addr, align 8
  %403 = load i32, ptr %indwk, align 4
  %idxprom388 = sext i32 %403 to i64
  %arrayidx389 = getelementptr inbounds double, ptr %402, i64 %idxprom388
  %404 = load ptr, ptr %iwork.addr, align 8
  %405 = load i32, ptr %indiwo, align 4
  %idxprom390 = sext i32 %405 to i64
  %arrayidx391 = getelementptr inbounds i32, ptr %404, i64 %idxprom390
  %406 = load ptr, ptr %iwork.addr, align 8
  %407 = load i32, ptr %indifl, align 4
  %idxprom392 = sext i32 %407 to i64
  %arrayidx393 = getelementptr inbounds i32, ptr %406, i64 %idxprom392
  %408 = load ptr, ptr %info.addr, align 8
  %call394 = call i32 @dstein_(ptr noundef %388, ptr noundef %arrayidx378, ptr noundef %arrayidx380, ptr noundef %393, ptr noundef %arrayidx381, ptr noundef %arrayidx383, ptr noundef %arrayidx385, ptr noundef %arrayidx387, ptr noundef %401, ptr noundef %arrayidx389, ptr noundef %arrayidx391, ptr noundef %arrayidx393, ptr noundef %408)
  %409 = load i32, ptr %inde, align 4
  store i32 %409, ptr %indwkn, align 4
  %410 = load ptr, ptr %lwork.addr, align 8
  %411 = load i32, ptr %410, align 4
  %412 = load i32, ptr %indwkn, align 4
  %sub395 = sub nsw i32 %411, %412
  %add396 = add nsw i32 %sub395, 1
  store i32 %add396, ptr %llwrkn, align 4
  %413 = load ptr, ptr %uplo.addr, align 8
  %414 = load ptr, ptr %n.addr, align 8
  %415 = load ptr, ptr %m.addr, align 8
  %416 = load ptr, ptr %a.addr, align 8
  %417 = load i32, ptr %a_offset, align 4
  %idxprom397 = sext i32 %417 to i64
  %arrayidx398 = getelementptr inbounds double, ptr %416, i64 %idxprom397
  %418 = load ptr, ptr %lda.addr, align 8
  %419 = load ptr, ptr %work.addr, align 8
  %420 = load i32, ptr %indtau, align 4
  %idxprom399 = sext i32 %420 to i64
  %arrayidx400 = getelementptr inbounds double, ptr %419, i64 %idxprom399
  %421 = load ptr, ptr %z__.addr, align 8
  %422 = load i32, ptr %z_offset, align 4
  %idxprom401 = sext i32 %422 to i64
  %arrayidx402 = getelementptr inbounds double, ptr %421, i64 %idxprom401
  %423 = load ptr, ptr %ldz.addr, align 8
  %424 = load ptr, ptr %work.addr, align 8
  %425 = load i32, ptr %indwkn, align 4
  %idxprom403 = sext i32 %425 to i64
  %arrayidx404 = getelementptr inbounds double, ptr %424, i64 %idxprom403
  %call405 = call i32 @dormtr_(ptr noundef @.str.2, ptr noundef %413, ptr noundef @.str.1, ptr noundef %414, ptr noundef %415, ptr noundef %arrayidx398, ptr noundef %418, ptr noundef %arrayidx400, ptr noundef %arrayidx402, ptr noundef %423, ptr noundef %arrayidx404, ptr noundef %llwrkn, ptr noundef %iinfo)
  br label %if.end406

if.end406:                                        ; preds = %if.then376, %if.end359
  br label %L30

L30:                                              ; preds = %if.end406, %if.then352
  %426 = load i32, ptr %iscale, align 4
  %cmp407 = icmp eq i32 %426, 1
  br i1 %cmp407, label %if.then409, label %if.end419

if.then409:                                       ; preds = %L30
  %427 = load ptr, ptr %info.addr, align 8
  %428 = load i32, ptr %427, align 4
  %cmp410 = icmp eq i32 %428, 0
  br i1 %cmp410, label %if.then412, label %if.else413

if.then412:                                       ; preds = %if.then409
  %429 = load ptr, ptr %m.addr, align 8
  %430 = load i32, ptr %429, align 4
  store i32 %430, ptr %imax, align 4
  br label %if.end415

if.else413:                                       ; preds = %if.then409
  %431 = load ptr, ptr %info.addr, align 8
  %432 = load i32, ptr %431, align 4
  %sub414 = sub nsw i32 %432, 1
  store i32 %sub414, ptr %imax, align 4
  br label %if.end415

if.end415:                                        ; preds = %if.else413, %if.then412
  %433 = load double, ptr %sigma, align 8
  %div416 = fdiv double 1.000000e+00, %433
  store double %div416, ptr %d__1, align 8
  %434 = load ptr, ptr %w.addr, align 8
  %arrayidx417 = getelementptr inbounds double, ptr %434, i64 1
  %call418 = call i32 @dscal_(ptr noundef %imax, ptr noundef %d__1, ptr noundef %arrayidx417, ptr noundef @c__1)
  br label %if.end419

if.end419:                                        ; preds = %if.end415, %L30
  %435 = load i32, ptr %wantz, align 4
  %tobool420 = icmp ne i32 %435, 0
  br i1 %tobool420, label %if.then421, label %if.end467

if.then421:                                       ; preds = %if.end419
  %436 = load ptr, ptr %m.addr, align 8
  %437 = load i32, ptr %436, align 4
  %sub422 = sub nsw i32 %437, 1
  store i32 %sub422, ptr %i__1, align 4
  store i32 1, ptr %j, align 4
  br label %for.cond423

for.cond423:                                      ; preds = %for.inc464, %if.then421
  %438 = load i32, ptr %j, align 4
  %439 = load i32, ptr %i__1, align 4
  %cmp424 = icmp sle i32 %438, %439
  br i1 %cmp424, label %for.body426, label %for.end466

for.body426:                                      ; preds = %for.cond423
  store i32 0, ptr %i__, align 4
  %440 = load ptr, ptr %w.addr, align 8
  %441 = load i32, ptr %j, align 4
  %idxprom427 = sext i32 %441 to i64
  %arrayidx428 = getelementptr inbounds double, ptr %440, i64 %idxprom427
  %442 = load double, ptr %arrayidx428, align 8
  store double %442, ptr %tmp1, align 8
  %443 = load ptr, ptr %m.addr, align 8
  %444 = load i32, ptr %443, align 4
  store i32 %444, ptr %i__2, align 4
  %445 = load i32, ptr %j, align 4
  %add429 = add nsw i32 %445, 1
  store i32 %add429, ptr %jj, align 4
  br label %for.cond430

for.cond430:                                      ; preds = %for.inc442, %for.body426
  %446 = load i32, ptr %jj, align 4
  %447 = load i32, ptr %i__2, align 4
  %cmp431 = icmp sle i32 %446, %447
  br i1 %cmp431, label %for.body433, label %for.end444

for.body433:                                      ; preds = %for.cond430
  %448 = load ptr, ptr %w.addr, align 8
  %449 = load i32, ptr %jj, align 4
  %idxprom434 = sext i32 %449 to i64
  %arrayidx435 = getelementptr inbounds double, ptr %448, i64 %idxprom434
  %450 = load double, ptr %arrayidx435, align 8
  %451 = load double, ptr %tmp1, align 8
  %cmp436 = fcmp olt double %450, %451
  br i1 %cmp436, label %if.then438, label %if.end441

if.then438:                                       ; preds = %for.body433
  %452 = load i32, ptr %jj, align 4
  store i32 %452, ptr %i__, align 4
  %453 = load ptr, ptr %w.addr, align 8
  %454 = load i32, ptr %jj, align 4
  %idxprom439 = sext i32 %454 to i64
  %arrayidx440 = getelementptr inbounds double, ptr %453, i64 %idxprom439
  %455 = load double, ptr %arrayidx440, align 8
  store double %455, ptr %tmp1, align 8
  br label %if.end441

if.end441:                                        ; preds = %if.then438, %for.body433
  br label %for.inc442

for.inc442:                                       ; preds = %if.end441
  %456 = load i32, ptr %jj, align 4
  %inc443 = add nsw i32 %456, 1
  store i32 %inc443, ptr %jj, align 4
  br label %for.cond430, !llvm.loop !8

for.end444:                                       ; preds = %for.cond430
  %457 = load i32, ptr %i__, align 4
  %cmp445 = icmp ne i32 %457, 0
  br i1 %cmp445, label %if.then447, label %if.end463

if.then447:                                       ; preds = %for.end444
  %458 = load ptr, ptr %w.addr, align 8
  %459 = load i32, ptr %j, align 4
  %idxprom448 = sext i32 %459 to i64
  %arrayidx449 = getelementptr inbounds double, ptr %458, i64 %idxprom448
  %460 = load double, ptr %arrayidx449, align 8
  %461 = load ptr, ptr %w.addr, align 8
  %462 = load i32, ptr %i__, align 4
  %idxprom450 = sext i32 %462 to i64
  %arrayidx451 = getelementptr inbounds double, ptr %461, i64 %idxprom450
  store double %460, ptr %arrayidx451, align 8
  %463 = load double, ptr %tmp1, align 8
  %464 = load ptr, ptr %w.addr, align 8
  %465 = load i32, ptr %j, align 4
  %idxprom452 = sext i32 %465 to i64
  %arrayidx453 = getelementptr inbounds double, ptr %464, i64 %idxprom452
  store double %463, ptr %arrayidx453, align 8
  %466 = load ptr, ptr %n.addr, align 8
  %467 = load ptr, ptr %z__.addr, align 8
  %468 = load i32, ptr %i__, align 4
  %469 = load i32, ptr %z_dim1, align 4
  %mul454 = mul nsw i32 %468, %469
  %add455 = add nsw i32 %mul454, 1
  %idxprom456 = sext i32 %add455 to i64
  %arrayidx457 = getelementptr inbounds double, ptr %467, i64 %idxprom456
  %470 = load ptr, ptr %z__.addr, align 8
  %471 = load i32, ptr %j, align 4
  %472 = load i32, ptr %z_dim1, align 4
  %mul458 = mul nsw i32 %471, %472
  %add459 = add nsw i32 %mul458, 1
  %idxprom460 = sext i32 %add459 to i64
  %arrayidx461 = getelementptr inbounds double, ptr %470, i64 %idxprom460
  %call462 = call i32 @dswap_(ptr noundef %466, ptr noundef %arrayidx457, ptr noundef @c__1, ptr noundef %arrayidx461, ptr noundef @c__1)
  br label %if.end463

if.end463:                                        ; preds = %if.then447, %for.end444
  br label %for.inc464

for.inc464:                                       ; preds = %if.end463
  %473 = load i32, ptr %j, align 4
  %inc465 = add nsw i32 %473, 1
  store i32 %inc465, ptr %j, align 4
  br label %for.cond423, !llvm.loop !9

for.end466:                                       ; preds = %for.cond423
  br label %if.end467

if.end467:                                        ; preds = %for.end466, %if.end419
  %474 = load i32, ptr %lwkopt, align 4
  %conv468 = sitofp i32 %474 to double
  %475 = load ptr, ptr %work.addr, align 8
  %arrayidx469 = getelementptr inbounds double, ptr %475, i64 1
  store double %conv468, ptr %arrayidx469, align 8
  %476 = load i32, ptr %liwmin, align 4
  %477 = load ptr, ptr %iwork.addr, align 8
  %arrayidx470 = getelementptr inbounds i32, ptr %477, i64 1
  store i32 %476, ptr %arrayidx470, align 4
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end467, %if.end174, %if.then134, %if.then129, %if.then125
  %478 = load i32, ptr %retval, align 4
  ret i32 %478
}

declare i32 @ilaenv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @lsame_(ptr noundef, ptr noundef) #1

declare i32 @xerbla_(ptr noundef, ptr noundef) #1

declare double @dlamch_(ptr noundef) #1

; Function Attrs: nounwind
declare double @sqrt(double noundef) #2

declare double @dlansy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @dscal_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @dsytrd_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @dcopy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @dsterf_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @dstemr_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @dormtr_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @dstebz_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @dstein_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

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
!9 = distinct !{!9, !6}

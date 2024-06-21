; ModuleID = 'samples/342.bc'
source_filename = "/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/map/lapack2flamec/f2c/c/zheevx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.doublecomplex = type { double, double }

@.str = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"V\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@c__1 = internal global i32 1, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"ZHETRD\00", align 1
@c_n1 = internal global i32 -1, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"ZUNMTR\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"ZHEEVX\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"Safe minimum\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"Precision\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"M\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @zheevx_(ptr noundef %jobz, ptr noundef %range, ptr noundef %uplo, ptr noundef %n, ptr noundef %a, ptr noundef %lda, ptr noundef %vl, ptr noundef %vu, ptr noundef %il, ptr noundef %iu, ptr noundef %abstol, ptr noundef %m, ptr noundef %w, ptr noundef %z__, ptr noundef %ldz, ptr noundef %work, ptr noundef %lwork, ptr noundef %rwork, ptr noundef %iwork, ptr noundef %ifail, ptr noundef %info) #0 {
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
  %work.addr = alloca ptr, align 8
  %lwork.addr = alloca ptr, align 8
  %rwork.addr = alloca ptr, align 8
  %iwork.addr = alloca ptr, align 8
  %ifail.addr = alloca ptr, align 8
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
  %test = alloca i32, align 4
  %itmp1 = alloca i32, align 4
  %indee = alloca i32, align 4
  %sigma = alloca double, align 8
  %iinfo = alloca i32, align 4
  %order = alloca [1 x i8], align 1
  %lower = alloca i32, align 4
  %wantz = alloca i32, align 4
  %alleig = alloca i32, align 4
  %indeig = alloca i32, align 4
  %iscale = alloca i32, align 4
  %indibl = alloca i32, align 4
  %valeig = alloca i32, align 4
  %safmin = alloca double, align 8
  %abstll = alloca double, align 8
  %bignum = alloca double, align 8
  %indiwk = alloca i32, align 4
  %indisp = alloca i32, align 4
  %indtau = alloca i32, align 4
  %indrwk = alloca i32, align 4
  %indwrk = alloca i32, align 4
  %lwkmin = alloca i32, align 4
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
  store ptr %work, ptr %work.addr, align 8
  store ptr %lwork, ptr %lwork.addr, align 8
  store ptr %rwork, ptr %rwork.addr, align 8
  store ptr %iwork, ptr %iwork.addr, align 8
  store ptr %ifail, ptr %ifail.addr, align 8
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
  %add.ptr = getelementptr inbounds %struct.doublecomplex, ptr %4, i64 %idx.neg
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
  %add.ptr4 = getelementptr inbounds %struct.doublecomplex, ptr %10, i64 %idx.neg3
  store ptr %add.ptr4, ptr %z__.addr, align 8
  %11 = load ptr, ptr %work.addr, align 8
  %incdec.ptr5 = getelementptr inbounds %struct.doublecomplex, ptr %11, i32 -1
  store ptr %incdec.ptr5, ptr %work.addr, align 8
  %12 = load ptr, ptr %rwork.addr, align 8
  %incdec.ptr6 = getelementptr inbounds double, ptr %12, i32 -1
  store ptr %incdec.ptr6, ptr %rwork.addr, align 8
  %13 = load ptr, ptr %iwork.addr, align 8
  %incdec.ptr7 = getelementptr inbounds i32, ptr %13, i32 -1
  store ptr %incdec.ptr7, ptr %iwork.addr, align 8
  %14 = load ptr, ptr %ifail.addr, align 8
  %incdec.ptr8 = getelementptr inbounds i32, ptr %14, i32 -1
  store ptr %incdec.ptr8, ptr %ifail.addr, align 8
  %15 = load ptr, ptr %uplo.addr, align 8
  %call = call i32 @lsame_(ptr noundef %15, ptr noundef @.str)
  store i32 %call, ptr %lower, align 4
  %16 = load ptr, ptr %jobz.addr, align 8
  %call9 = call i32 @lsame_(ptr noundef %16, ptr noundef @.str.1)
  store i32 %call9, ptr %wantz, align 4
  %17 = load ptr, ptr %range.addr, align 8
  %call10 = call i32 @lsame_(ptr noundef %17, ptr noundef @.str.2)
  store i32 %call10, ptr %alleig, align 4
  %18 = load ptr, ptr %range.addr, align 8
  %call11 = call i32 @lsame_(ptr noundef %18, ptr noundef @.str.1)
  store i32 %call11, ptr %valeig, align 4
  %19 = load ptr, ptr %range.addr, align 8
  %call12 = call i32 @lsame_(ptr noundef %19, ptr noundef @.str.3)
  store i32 %call12, ptr %indeig, align 4
  %20 = load ptr, ptr %lwork.addr, align 8
  %21 = load i32, ptr %20, align 4
  %cmp = icmp eq i32 %21, -1
  %conv = zext i1 %cmp to i32
  store i32 %conv, ptr %lquery, align 4
  %22 = load ptr, ptr %info.addr, align 8
  store i32 0, ptr %22, align 4
  %23 = load i32, ptr %wantz, align 4
  %tobool = icmp ne i32 %23, 0
  br i1 %tobool, label %if.else, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %24 = load ptr, ptr %jobz.addr, align 8
  %call13 = call i32 @lsame_(ptr noundef %24, ptr noundef @.str.4)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.else, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  %25 = load ptr, ptr %info.addr, align 8
  store i32 -1, ptr %25, align 4
  br label %if.end81

if.else:                                          ; preds = %lor.lhs.false, %entry
  %26 = load i32, ptr %alleig, align 4
  %tobool15 = icmp ne i32 %26, 0
  br i1 %tobool15, label %if.else21, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %if.else
  %27 = load i32, ptr %valeig, align 4
  %tobool17 = icmp ne i32 %27, 0
  br i1 %tobool17, label %if.else21, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false16
  %28 = load i32, ptr %indeig, align 4
  %tobool19 = icmp ne i32 %28, 0
  br i1 %tobool19, label %if.else21, label %if.then20

if.then20:                                        ; preds = %lor.lhs.false18
  %29 = load ptr, ptr %info.addr, align 8
  store i32 -2, ptr %29, align 4
  br label %if.end80

if.else21:                                        ; preds = %lor.lhs.false18, %lor.lhs.false16, %if.else
  %30 = load i32, ptr %lower, align 4
  %tobool22 = icmp ne i32 %30, 0
  br i1 %tobool22, label %if.else27, label %lor.lhs.false23

lor.lhs.false23:                                  ; preds = %if.else21
  %31 = load ptr, ptr %uplo.addr, align 8
  %call24 = call i32 @lsame_(ptr noundef %31, ptr noundef @.str.5)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.else27, label %if.then26

if.then26:                                        ; preds = %lor.lhs.false23
  %32 = load ptr, ptr %info.addr, align 8
  store i32 -3, ptr %32, align 4
  br label %if.end79

if.else27:                                        ; preds = %lor.lhs.false23, %if.else21
  %33 = load ptr, ptr %n.addr, align 8
  %34 = load i32, ptr %33, align 4
  %cmp28 = icmp slt i32 %34, 0
  br i1 %cmp28, label %if.then30, label %if.else31

if.then30:                                        ; preds = %if.else27
  %35 = load ptr, ptr %info.addr, align 8
  store i32 -4, ptr %35, align 4
  br label %if.end78

if.else31:                                        ; preds = %if.else27
  %36 = load ptr, ptr %lda.addr, align 8
  %37 = load i32, ptr %36, align 4
  %38 = load ptr, ptr %n.addr, align 8
  %39 = load i32, ptr %38, align 4
  %cmp32 = icmp sge i32 1, %39
  br i1 %cmp32, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else31
  br label %cond.end

cond.false:                                       ; preds = %if.else31
  %40 = load ptr, ptr %n.addr, align 8
  %41 = load i32, ptr %40, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %41, %cond.false ]
  %cmp34 = icmp slt i32 %37, %cond
  br i1 %cmp34, label %if.then36, label %if.else37

if.then36:                                        ; preds = %cond.end
  %42 = load ptr, ptr %info.addr, align 8
  store i32 -6, ptr %42, align 4
  br label %if.end77

if.else37:                                        ; preds = %cond.end
  %43 = load i32, ptr %valeig, align 4
  %tobool38 = icmp ne i32 %43, 0
  br i1 %tobool38, label %if.then39, label %if.else45

if.then39:                                        ; preds = %if.else37
  %44 = load ptr, ptr %n.addr, align 8
  %45 = load i32, ptr %44, align 4
  %cmp40 = icmp sgt i32 %45, 0
  br i1 %cmp40, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then39
  %46 = load ptr, ptr %vu.addr, align 8
  %47 = load double, ptr %46, align 8
  %48 = load ptr, ptr %vl.addr, align 8
  %49 = load double, ptr %48, align 8
  %cmp42 = fcmp ole double %47, %49
  br i1 %cmp42, label %if.then44, label %if.end

if.then44:                                        ; preds = %land.lhs.true
  %50 = load ptr, ptr %info.addr, align 8
  store i32 -8, ptr %50, align 4
  br label %if.end

if.end:                                           ; preds = %if.then44, %land.lhs.true, %if.then39
  br label %if.end76

if.else45:                                        ; preds = %if.else37
  %51 = load i32, ptr %indeig, align 4
  %tobool46 = icmp ne i32 %51, 0
  br i1 %tobool46, label %if.then47, label %if.end75

if.then47:                                        ; preds = %if.else45
  %52 = load ptr, ptr %il.addr, align 8
  %53 = load i32, ptr %52, align 4
  %cmp48 = icmp slt i32 %53, 1
  br i1 %cmp48, label %if.then59, label %lor.lhs.false50

lor.lhs.false50:                                  ; preds = %if.then47
  %54 = load ptr, ptr %il.addr, align 8
  %55 = load i32, ptr %54, align 4
  %56 = load ptr, ptr %n.addr, align 8
  %57 = load i32, ptr %56, align 4
  %cmp51 = icmp sge i32 1, %57
  br i1 %cmp51, label %cond.true53, label %cond.false54

cond.true53:                                      ; preds = %lor.lhs.false50
  br label %cond.end55

cond.false54:                                     ; preds = %lor.lhs.false50
  %58 = load ptr, ptr %n.addr, align 8
  %59 = load i32, ptr %58, align 4
  br label %cond.end55

cond.end55:                                       ; preds = %cond.false54, %cond.true53
  %cond56 = phi i32 [ 1, %cond.true53 ], [ %59, %cond.false54 ]
  %cmp57 = icmp sgt i32 %55, %cond56
  br i1 %cmp57, label %if.then59, label %if.else60

if.then59:                                        ; preds = %cond.end55, %if.then47
  %60 = load ptr, ptr %info.addr, align 8
  store i32 -9, ptr %60, align 4
  br label %if.end74

if.else60:                                        ; preds = %cond.end55
  %61 = load ptr, ptr %iu.addr, align 8
  %62 = load i32, ptr %61, align 4
  %63 = load ptr, ptr %n.addr, align 8
  %64 = load i32, ptr %63, align 4
  %65 = load ptr, ptr %il.addr, align 8
  %66 = load i32, ptr %65, align 4
  %cmp61 = icmp sle i32 %64, %66
  br i1 %cmp61, label %cond.true63, label %cond.false64

cond.true63:                                      ; preds = %if.else60
  %67 = load ptr, ptr %n.addr, align 8
  %68 = load i32, ptr %67, align 4
  br label %cond.end65

cond.false64:                                     ; preds = %if.else60
  %69 = load ptr, ptr %il.addr, align 8
  %70 = load i32, ptr %69, align 4
  br label %cond.end65

cond.end65:                                       ; preds = %cond.false64, %cond.true63
  %cond66 = phi i32 [ %68, %cond.true63 ], [ %70, %cond.false64 ]
  %cmp67 = icmp slt i32 %62, %cond66
  br i1 %cmp67, label %if.then72, label %lor.lhs.false69

lor.lhs.false69:                                  ; preds = %cond.end65
  %71 = load ptr, ptr %iu.addr, align 8
  %72 = load i32, ptr %71, align 4
  %73 = load ptr, ptr %n.addr, align 8
  %74 = load i32, ptr %73, align 4
  %cmp70 = icmp sgt i32 %72, %74
  br i1 %cmp70, label %if.then72, label %if.end73

if.then72:                                        ; preds = %lor.lhs.false69, %cond.end65
  %75 = load ptr, ptr %info.addr, align 8
  store i32 -10, ptr %75, align 4
  br label %if.end73

if.end73:                                         ; preds = %if.then72, %lor.lhs.false69
  br label %if.end74

if.end74:                                         ; preds = %if.end73, %if.then59
  br label %if.end75

if.end75:                                         ; preds = %if.end74, %if.else45
  br label %if.end76

if.end76:                                         ; preds = %if.end75, %if.end
  br label %if.end77

if.end77:                                         ; preds = %if.end76, %if.then36
  br label %if.end78

if.end78:                                         ; preds = %if.end77, %if.then30
  br label %if.end79

if.end79:                                         ; preds = %if.end78, %if.then26
  br label %if.end80

if.end80:                                         ; preds = %if.end79, %if.then20
  br label %if.end81

if.end81:                                         ; preds = %if.end80, %if.then
  %76 = load ptr, ptr %info.addr, align 8
  %77 = load i32, ptr %76, align 4
  %cmp82 = icmp eq i32 %77, 0
  br i1 %cmp82, label %if.then84, label %if.end94

if.then84:                                        ; preds = %if.end81
  %78 = load ptr, ptr %ldz.addr, align 8
  %79 = load i32, ptr %78, align 4
  %cmp85 = icmp slt i32 %79, 1
  br i1 %cmp85, label %if.then92, label %lor.lhs.false87

lor.lhs.false87:                                  ; preds = %if.then84
  %80 = load i32, ptr %wantz, align 4
  %tobool88 = icmp ne i32 %80, 0
  br i1 %tobool88, label %land.lhs.true89, label %if.end93

land.lhs.true89:                                  ; preds = %lor.lhs.false87
  %81 = load ptr, ptr %ldz.addr, align 8
  %82 = load i32, ptr %81, align 4
  %83 = load ptr, ptr %n.addr, align 8
  %84 = load i32, ptr %83, align 4
  %cmp90 = icmp slt i32 %82, %84
  br i1 %cmp90, label %if.then92, label %if.end93

if.then92:                                        ; preds = %land.lhs.true89, %if.then84
  %85 = load ptr, ptr %info.addr, align 8
  store i32 -15, ptr %85, align 4
  br label %if.end93

if.end93:                                         ; preds = %if.then92, %land.lhs.true89, %lor.lhs.false87
  br label %if.end94

if.end94:                                         ; preds = %if.end93, %if.end81
  %86 = load ptr, ptr %info.addr, align 8
  %87 = load i32, ptr %86, align 4
  %cmp95 = icmp eq i32 %87, 0
  br i1 %cmp95, label %if.then97, label %if.end131

if.then97:                                        ; preds = %if.end94
  %88 = load ptr, ptr %n.addr, align 8
  %89 = load i32, ptr %88, align 4
  %cmp98 = icmp sle i32 %89, 1
  br i1 %cmp98, label %if.then100, label %if.else103

if.then100:                                       ; preds = %if.then97
  store i32 1, ptr %lwkmin, align 4
  %90 = load i32, ptr %lwkmin, align 4
  %conv101 = sitofp i32 %90 to double
  %91 = load ptr, ptr %work.addr, align 8
  %arrayidx = getelementptr inbounds %struct.doublecomplex, ptr %91, i64 1
  %r = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx, i32 0, i32 0
  store double %conv101, ptr %r, align 8
  %92 = load ptr, ptr %work.addr, align 8
  %arrayidx102 = getelementptr inbounds %struct.doublecomplex, ptr %92, i64 1
  %i = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx102, i32 0, i32 1
  store double 0.000000e+00, ptr %i, align 8
  br label %if.end124

if.else103:                                       ; preds = %if.then97
  %93 = load ptr, ptr %n.addr, align 8
  %94 = load i32, ptr %93, align 4
  %shl = shl i32 %94, 1
  store i32 %shl, ptr %lwkmin, align 4
  %95 = load ptr, ptr %uplo.addr, align 8
  %96 = load ptr, ptr %n.addr, align 8
  %call104 = call i32 @ilaenv_(ptr noundef @c__1, ptr noundef @.str.6, ptr noundef %95, ptr noundef %96, ptr noundef @c_n1, ptr noundef @c_n1, ptr noundef @c_n1)
  store i32 %call104, ptr %nb, align 4
  %97 = load i32, ptr %nb, align 4
  store i32 %97, ptr %i__1, align 4
  %98 = load ptr, ptr %uplo.addr, align 8
  %99 = load ptr, ptr %n.addr, align 8
  %call105 = call i32 @ilaenv_(ptr noundef @c__1, ptr noundef @.str.7, ptr noundef %98, ptr noundef %99, ptr noundef @c_n1, ptr noundef @c_n1, ptr noundef @c_n1)
  store i32 %call105, ptr %i__2, align 4
  %100 = load i32, ptr %i__1, align 4
  %101 = load i32, ptr %i__2, align 4
  %cmp106 = icmp sge i32 %100, %101
  br i1 %cmp106, label %cond.true108, label %cond.false109

cond.true108:                                     ; preds = %if.else103
  %102 = load i32, ptr %i__1, align 4
  br label %cond.end110

cond.false109:                                    ; preds = %if.else103
  %103 = load i32, ptr %i__2, align 4
  br label %cond.end110

cond.end110:                                      ; preds = %cond.false109, %cond.true108
  %cond111 = phi i32 [ %102, %cond.true108 ], [ %103, %cond.false109 ]
  store i32 %cond111, ptr %nb, align 4
  store i32 1, ptr %i__1, align 4
  %104 = load i32, ptr %nb, align 4
  %add112 = add nsw i32 %104, 1
  %105 = load ptr, ptr %n.addr, align 8
  %106 = load i32, ptr %105, align 4
  %mul = mul nsw i32 %add112, %106
  store i32 %mul, ptr %i__2, align 4
  %107 = load i32, ptr %i__1, align 4
  %108 = load i32, ptr %i__2, align 4
  %cmp113 = icmp sge i32 %107, %108
  br i1 %cmp113, label %cond.true115, label %cond.false116

cond.true115:                                     ; preds = %cond.end110
  %109 = load i32, ptr %i__1, align 4
  br label %cond.end117

cond.false116:                                    ; preds = %cond.end110
  %110 = load i32, ptr %i__2, align 4
  br label %cond.end117

cond.end117:                                      ; preds = %cond.false116, %cond.true115
  %cond118 = phi i32 [ %109, %cond.true115 ], [ %110, %cond.false116 ]
  store i32 %cond118, ptr %lwkopt, align 4
  %111 = load i32, ptr %lwkopt, align 4
  %conv119 = sitofp i32 %111 to double
  %112 = load ptr, ptr %work.addr, align 8
  %arrayidx120 = getelementptr inbounds %struct.doublecomplex, ptr %112, i64 1
  %r121 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx120, i32 0, i32 0
  store double %conv119, ptr %r121, align 8
  %113 = load ptr, ptr %work.addr, align 8
  %arrayidx122 = getelementptr inbounds %struct.doublecomplex, ptr %113, i64 1
  %i123 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx122, i32 0, i32 1
  store double 0.000000e+00, ptr %i123, align 8
  br label %if.end124

if.end124:                                        ; preds = %cond.end117, %if.then100
  %114 = load ptr, ptr %lwork.addr, align 8
  %115 = load i32, ptr %114, align 4
  %116 = load i32, ptr %lwkmin, align 4
  %cmp125 = icmp slt i32 %115, %116
  br i1 %cmp125, label %land.lhs.true127, label %if.end130

land.lhs.true127:                                 ; preds = %if.end124
  %117 = load i32, ptr %lquery, align 4
  %tobool128 = icmp ne i32 %117, 0
  br i1 %tobool128, label %if.end130, label %if.then129

if.then129:                                       ; preds = %land.lhs.true127
  %118 = load ptr, ptr %info.addr, align 8
  store i32 -17, ptr %118, align 4
  br label %if.end130

if.end130:                                        ; preds = %if.then129, %land.lhs.true127, %if.end124
  br label %if.end131

if.end131:                                        ; preds = %if.end130, %if.end94
  %119 = load ptr, ptr %info.addr, align 8
  %120 = load i32, ptr %119, align 4
  %cmp132 = icmp ne i32 %120, 0
  br i1 %cmp132, label %if.then134, label %if.else136

if.then134:                                       ; preds = %if.end131
  %121 = load ptr, ptr %info.addr, align 8
  %122 = load i32, ptr %121, align 4
  %sub = sub nsw i32 0, %122
  store i32 %sub, ptr %i__1, align 4
  %call135 = call i32 @xerbla_(ptr noundef @.str.8, ptr noundef %i__1)
  store i32 0, ptr %retval, align 4
  br label %return

if.else136:                                       ; preds = %if.end131
  %123 = load i32, ptr %lquery, align 4
  %tobool137 = icmp ne i32 %123, 0
  br i1 %tobool137, label %if.then138, label %if.end139

if.then138:                                       ; preds = %if.else136
  store i32 0, ptr %retval, align 4
  br label %return

if.end139:                                        ; preds = %if.else136
  br label %if.end140

if.end140:                                        ; preds = %if.end139
  %124 = load ptr, ptr %m.addr, align 8
  store i32 0, ptr %124, align 4
  %125 = load ptr, ptr %n.addr, align 8
  %126 = load i32, ptr %125, align 4
  %cmp141 = icmp eq i32 %126, 0
  br i1 %cmp141, label %if.then143, label %if.end144

if.then143:                                       ; preds = %if.end140
  store i32 0, ptr %retval, align 4
  br label %return

if.end144:                                        ; preds = %if.end140
  %127 = load ptr, ptr %n.addr, align 8
  %128 = load i32, ptr %127, align 4
  %cmp145 = icmp eq i32 %128, 1
  br i1 %cmp145, label %if.then147, label %if.end191

if.then147:                                       ; preds = %if.end144
  %129 = load i32, ptr %alleig, align 4
  %tobool148 = icmp ne i32 %129, 0
  br i1 %tobool148, label %if.then151, label %lor.lhs.false149

lor.lhs.false149:                                 ; preds = %if.then147
  %130 = load i32, ptr %indeig, align 4
  %tobool150 = icmp ne i32 %130, 0
  br i1 %tobool150, label %if.then151, label %if.else156

if.then151:                                       ; preds = %lor.lhs.false149, %if.then147
  %131 = load ptr, ptr %m.addr, align 8
  store i32 1, ptr %131, align 4
  %132 = load i32, ptr %a_dim1, align 4
  %add152 = add nsw i32 %132, 1
  store i32 %add152, ptr %i__1, align 4
  %133 = load ptr, ptr %a.addr, align 8
  %134 = load i32, ptr %i__1, align 4
  %idxprom = sext i32 %134 to i64
  %arrayidx153 = getelementptr inbounds %struct.doublecomplex, ptr %133, i64 %idxprom
  %r154 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx153, i32 0, i32 0
  %135 = load double, ptr %r154, align 8
  %136 = load ptr, ptr %w.addr, align 8
  %arrayidx155 = getelementptr inbounds double, ptr %136, i64 1
  store double %135, ptr %arrayidx155, align 8
  br label %if.end180

if.else156:                                       ; preds = %lor.lhs.false149
  %137 = load i32, ptr %valeig, align 4
  %tobool157 = icmp ne i32 %137, 0
  br i1 %tobool157, label %if.then158, label %if.end179

if.then158:                                       ; preds = %if.else156
  %138 = load i32, ptr %a_dim1, align 4
  %add159 = add nsw i32 %138, 1
  store i32 %add159, ptr %i__1, align 4
  %139 = load i32, ptr %a_dim1, align 4
  %add160 = add nsw i32 %139, 1
  store i32 %add160, ptr %i__2, align 4
  %140 = load ptr, ptr %vl.addr, align 8
  %141 = load double, ptr %140, align 8
  %142 = load ptr, ptr %a.addr, align 8
  %143 = load i32, ptr %i__1, align 4
  %idxprom161 = sext i32 %143 to i64
  %arrayidx162 = getelementptr inbounds %struct.doublecomplex, ptr %142, i64 %idxprom161
  %r163 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx162, i32 0, i32 0
  %144 = load double, ptr %r163, align 8
  %cmp164 = fcmp olt double %141, %144
  br i1 %cmp164, label %land.lhs.true166, label %if.end178

land.lhs.true166:                                 ; preds = %if.then158
  %145 = load ptr, ptr %vu.addr, align 8
  %146 = load double, ptr %145, align 8
  %147 = load ptr, ptr %a.addr, align 8
  %148 = load i32, ptr %i__2, align 4
  %idxprom167 = sext i32 %148 to i64
  %arrayidx168 = getelementptr inbounds %struct.doublecomplex, ptr %147, i64 %idxprom167
  %r169 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx168, i32 0, i32 0
  %149 = load double, ptr %r169, align 8
  %cmp170 = fcmp oge double %146, %149
  br i1 %cmp170, label %if.then172, label %if.end178

if.then172:                                       ; preds = %land.lhs.true166
  %150 = load ptr, ptr %m.addr, align 8
  store i32 1, ptr %150, align 4
  %151 = load i32, ptr %a_dim1, align 4
  %add173 = add nsw i32 %151, 1
  store i32 %add173, ptr %i__1, align 4
  %152 = load ptr, ptr %a.addr, align 8
  %153 = load i32, ptr %i__1, align 4
  %idxprom174 = sext i32 %153 to i64
  %arrayidx175 = getelementptr inbounds %struct.doublecomplex, ptr %152, i64 %idxprom174
  %r176 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx175, i32 0, i32 0
  %154 = load double, ptr %r176, align 8
  %155 = load ptr, ptr %w.addr, align 8
  %arrayidx177 = getelementptr inbounds double, ptr %155, i64 1
  store double %154, ptr %arrayidx177, align 8
  br label %if.end178

if.end178:                                        ; preds = %if.then172, %land.lhs.true166, %if.then158
  br label %if.end179

if.end179:                                        ; preds = %if.end178, %if.else156
  br label %if.end180

if.end180:                                        ; preds = %if.end179, %if.then151
  %156 = load i32, ptr %wantz, align 4
  %tobool181 = icmp ne i32 %156, 0
  br i1 %tobool181, label %if.then182, label %if.end190

if.then182:                                       ; preds = %if.end180
  %157 = load i32, ptr %z_dim1, align 4
  %add183 = add nsw i32 %157, 1
  store i32 %add183, ptr %i__1, align 4
  %158 = load ptr, ptr %z__.addr, align 8
  %159 = load i32, ptr %i__1, align 4
  %idxprom184 = sext i32 %159 to i64
  %arrayidx185 = getelementptr inbounds %struct.doublecomplex, ptr %158, i64 %idxprom184
  %r186 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx185, i32 0, i32 0
  store double 1.000000e+00, ptr %r186, align 8
  %160 = load ptr, ptr %z__.addr, align 8
  %161 = load i32, ptr %i__1, align 4
  %idxprom187 = sext i32 %161 to i64
  %arrayidx188 = getelementptr inbounds %struct.doublecomplex, ptr %160, i64 %idxprom187
  %i189 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx188, i32 0, i32 1
  store double 0.000000e+00, ptr %i189, align 8
  br label %if.end190

if.end190:                                        ; preds = %if.then182, %if.end180
  store i32 0, ptr %retval, align 4
  br label %return

if.end191:                                        ; preds = %if.end144
  %call192 = call double @dlamch_(ptr noundef @.str.9)
  store double %call192, ptr %safmin, align 8
  %call193 = call double @dlamch_(ptr noundef @.str.10)
  store double %call193, ptr %eps, align 8
  %162 = load double, ptr %safmin, align 8
  %163 = load double, ptr %eps, align 8
  %div = fdiv double %162, %163
  store double %div, ptr %smlnum, align 8
  %164 = load double, ptr %smlnum, align 8
  %div194 = fdiv double 1.000000e+00, %164
  store double %div194, ptr %bignum, align 8
  %165 = load double, ptr %smlnum, align 8
  %call195 = call double @sqrt(double noundef %165) #3
  store double %call195, ptr %rmin, align 8
  %166 = load double, ptr %bignum, align 8
  %call196 = call double @sqrt(double noundef %166) #3
  store double %call196, ptr %d__1, align 8
  %167 = load double, ptr %safmin, align 8
  %call197 = call double @sqrt(double noundef %167) #3
  %call198 = call double @sqrt(double noundef %call197) #3
  %div199 = fdiv double 1.000000e+00, %call198
  store double %div199, ptr %d__2, align 8
  %168 = load double, ptr %d__1, align 8
  %169 = load double, ptr %d__2, align 8
  %cmp200 = fcmp ole double %168, %169
  br i1 %cmp200, label %cond.true202, label %cond.false203

cond.true202:                                     ; preds = %if.end191
  %170 = load double, ptr %d__1, align 8
  br label %cond.end204

cond.false203:                                    ; preds = %if.end191
  %171 = load double, ptr %d__2, align 8
  br label %cond.end204

cond.end204:                                      ; preds = %cond.false203, %cond.true202
  %cond205 = phi double [ %170, %cond.true202 ], [ %171, %cond.false203 ]
  store double %cond205, ptr %rmax, align 8
  store i32 0, ptr %iscale, align 4
  %172 = load ptr, ptr %abstol.addr, align 8
  %173 = load double, ptr %172, align 8
  store double %173, ptr %abstll, align 8
  %174 = load i32, ptr %valeig, align 4
  %tobool206 = icmp ne i32 %174, 0
  br i1 %tobool206, label %if.then207, label %if.end208

if.then207:                                       ; preds = %cond.end204
  %175 = load ptr, ptr %vl.addr, align 8
  %176 = load double, ptr %175, align 8
  store double %176, ptr %vll, align 8
  %177 = load ptr, ptr %vu.addr, align 8
  %178 = load double, ptr %177, align 8
  store double %178, ptr %vuu, align 8
  br label %if.end208

if.end208:                                        ; preds = %if.then207, %cond.end204
  %179 = load ptr, ptr %uplo.addr, align 8
  %180 = load ptr, ptr %n.addr, align 8
  %181 = load ptr, ptr %a.addr, align 8
  %182 = load i32, ptr %a_offset, align 4
  %idxprom209 = sext i32 %182 to i64
  %arrayidx210 = getelementptr inbounds %struct.doublecomplex, ptr %181, i64 %idxprom209
  %183 = load ptr, ptr %lda.addr, align 8
  %184 = load ptr, ptr %rwork.addr, align 8
  %arrayidx211 = getelementptr inbounds double, ptr %184, i64 1
  %call212 = call double @zlanhe_(ptr noundef @.str.11, ptr noundef %179, ptr noundef %180, ptr noundef %arrayidx210, ptr noundef %183, ptr noundef %arrayidx211)
  store double %call212, ptr %anrm, align 8
  %185 = load double, ptr %anrm, align 8
  %cmp213 = fcmp ogt double %185, 0.000000e+00
  br i1 %cmp213, label %land.lhs.true215, label %if.else220

land.lhs.true215:                                 ; preds = %if.end208
  %186 = load double, ptr %anrm, align 8
  %187 = load double, ptr %rmin, align 8
  %cmp216 = fcmp olt double %186, %187
  br i1 %cmp216, label %if.then218, label %if.else220

if.then218:                                       ; preds = %land.lhs.true215
  store i32 1, ptr %iscale, align 4
  %188 = load double, ptr %rmin, align 8
  %189 = load double, ptr %anrm, align 8
  %div219 = fdiv double %188, %189
  store double %div219, ptr %sigma, align 8
  br label %if.end226

if.else220:                                       ; preds = %land.lhs.true215, %if.end208
  %190 = load double, ptr %anrm, align 8
  %191 = load double, ptr %rmax, align 8
  %cmp221 = fcmp ogt double %190, %191
  br i1 %cmp221, label %if.then223, label %if.end225

if.then223:                                       ; preds = %if.else220
  store i32 1, ptr %iscale, align 4
  %192 = load double, ptr %rmax, align 8
  %193 = load double, ptr %anrm, align 8
  %div224 = fdiv double %192, %193
  store double %div224, ptr %sigma, align 8
  br label %if.end225

if.end225:                                        ; preds = %if.then223, %if.else220
  br label %if.end226

if.end226:                                        ; preds = %if.end225, %if.then218
  %194 = load i32, ptr %iscale, align 4
  %cmp227 = icmp eq i32 %194, 1
  br i1 %cmp227, label %if.then229, label %if.end265

if.then229:                                       ; preds = %if.end226
  %195 = load i32, ptr %lower, align 4
  %tobool230 = icmp ne i32 %195, 0
  br i1 %tobool230, label %if.then231, label %if.else241

if.then231:                                       ; preds = %if.then229
  %196 = load ptr, ptr %n.addr, align 8
  %197 = load i32, ptr %196, align 4
  store i32 %197, ptr %i__1, align 4
  store i32 1, ptr %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then231
  %198 = load i32, ptr %j, align 4
  %199 = load i32, ptr %i__1, align 4
  %cmp232 = icmp sle i32 %198, %199
  br i1 %cmp232, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %200 = load ptr, ptr %n.addr, align 8
  %201 = load i32, ptr %200, align 4
  %202 = load i32, ptr %j, align 4
  %sub234 = sub nsw i32 %201, %202
  %add235 = add nsw i32 %sub234, 1
  store i32 %add235, ptr %i__2, align 4
  %203 = load ptr, ptr %a.addr, align 8
  %204 = load i32, ptr %j, align 4
  %205 = load i32, ptr %j, align 4
  %206 = load i32, ptr %a_dim1, align 4
  %mul236 = mul nsw i32 %205, %206
  %add237 = add nsw i32 %204, %mul236
  %idxprom238 = sext i32 %add237 to i64
  %arrayidx239 = getelementptr inbounds %struct.doublecomplex, ptr %203, i64 %idxprom238
  %call240 = call i32 @zdscal_(ptr noundef %i__2, ptr noundef %sigma, ptr noundef %arrayidx239, ptr noundef @c__1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %207 = load i32, ptr %j, align 4
  %inc = add nsw i32 %207, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  br label %if.end254

if.else241:                                       ; preds = %if.then229
  %208 = load ptr, ptr %n.addr, align 8
  %209 = load i32, ptr %208, align 4
  store i32 %209, ptr %i__1, align 4
  store i32 1, ptr %j, align 4
  br label %for.cond242

for.cond242:                                      ; preds = %for.inc251, %if.else241
  %210 = load i32, ptr %j, align 4
  %211 = load i32, ptr %i__1, align 4
  %cmp243 = icmp sle i32 %210, %211
  br i1 %cmp243, label %for.body245, label %for.end253

for.body245:                                      ; preds = %for.cond242
  %212 = load ptr, ptr %a.addr, align 8
  %213 = load i32, ptr %j, align 4
  %214 = load i32, ptr %a_dim1, align 4
  %mul246 = mul nsw i32 %213, %214
  %add247 = add nsw i32 %mul246, 1
  %idxprom248 = sext i32 %add247 to i64
  %arrayidx249 = getelementptr inbounds %struct.doublecomplex, ptr %212, i64 %idxprom248
  %call250 = call i32 @zdscal_(ptr noundef %j, ptr noundef %sigma, ptr noundef %arrayidx249, ptr noundef @c__1)
  br label %for.inc251

for.inc251:                                       ; preds = %for.body245
  %215 = load i32, ptr %j, align 4
  %inc252 = add nsw i32 %215, 1
  store i32 %inc252, ptr %j, align 4
  br label %for.cond242, !llvm.loop !7

for.end253:                                       ; preds = %for.cond242
  br label %if.end254

if.end254:                                        ; preds = %for.end253, %for.end
  %216 = load ptr, ptr %abstol.addr, align 8
  %217 = load double, ptr %216, align 8
  %cmp255 = fcmp ogt double %217, 0.000000e+00
  br i1 %cmp255, label %if.then257, label %if.end259

if.then257:                                       ; preds = %if.end254
  %218 = load ptr, ptr %abstol.addr, align 8
  %219 = load double, ptr %218, align 8
  %220 = load double, ptr %sigma, align 8
  %mul258 = fmul double %219, %220
  store double %mul258, ptr %abstll, align 8
  br label %if.end259

if.end259:                                        ; preds = %if.then257, %if.end254
  %221 = load i32, ptr %valeig, align 4
  %tobool260 = icmp ne i32 %221, 0
  br i1 %tobool260, label %if.then261, label %if.end264

if.then261:                                       ; preds = %if.end259
  %222 = load ptr, ptr %vl.addr, align 8
  %223 = load double, ptr %222, align 8
  %224 = load double, ptr %sigma, align 8
  %mul262 = fmul double %223, %224
  store double %mul262, ptr %vll, align 8
  %225 = load ptr, ptr %vu.addr, align 8
  %226 = load double, ptr %225, align 8
  %227 = load double, ptr %sigma, align 8
  %mul263 = fmul double %226, %227
  store double %mul263, ptr %vuu, align 8
  br label %if.end264

if.end264:                                        ; preds = %if.then261, %if.end259
  br label %if.end265

if.end265:                                        ; preds = %if.end264, %if.end226
  store i32 1, ptr %indd, align 4
  %228 = load i32, ptr %indd, align 4
  %229 = load ptr, ptr %n.addr, align 8
  %230 = load i32, ptr %229, align 4
  %add266 = add nsw i32 %228, %230
  store i32 %add266, ptr %inde, align 4
  %231 = load i32, ptr %inde, align 4
  %232 = load ptr, ptr %n.addr, align 8
  %233 = load i32, ptr %232, align 4
  %add267 = add nsw i32 %231, %233
  store i32 %add267, ptr %indrwk, align 4
  store i32 1, ptr %indtau, align 4
  %234 = load i32, ptr %indtau, align 4
  %235 = load ptr, ptr %n.addr, align 8
  %236 = load i32, ptr %235, align 4
  %add268 = add nsw i32 %234, %236
  store i32 %add268, ptr %indwrk, align 4
  %237 = load ptr, ptr %lwork.addr, align 8
  %238 = load i32, ptr %237, align 4
  %239 = load i32, ptr %indwrk, align 4
  %sub269 = sub nsw i32 %238, %239
  %add270 = add nsw i32 %sub269, 1
  store i32 %add270, ptr %llwork, align 4
  %240 = load ptr, ptr %uplo.addr, align 8
  %241 = load ptr, ptr %n.addr, align 8
  %242 = load ptr, ptr %a.addr, align 8
  %243 = load i32, ptr %a_offset, align 4
  %idxprom271 = sext i32 %243 to i64
  %arrayidx272 = getelementptr inbounds %struct.doublecomplex, ptr %242, i64 %idxprom271
  %244 = load ptr, ptr %lda.addr, align 8
  %245 = load ptr, ptr %rwork.addr, align 8
  %246 = load i32, ptr %indd, align 4
  %idxprom273 = sext i32 %246 to i64
  %arrayidx274 = getelementptr inbounds double, ptr %245, i64 %idxprom273
  %247 = load ptr, ptr %rwork.addr, align 8
  %248 = load i32, ptr %inde, align 4
  %idxprom275 = sext i32 %248 to i64
  %arrayidx276 = getelementptr inbounds double, ptr %247, i64 %idxprom275
  %249 = load ptr, ptr %work.addr, align 8
  %250 = load i32, ptr %indtau, align 4
  %idxprom277 = sext i32 %250 to i64
  %arrayidx278 = getelementptr inbounds %struct.doublecomplex, ptr %249, i64 %idxprom277
  %251 = load ptr, ptr %work.addr, align 8
  %252 = load i32, ptr %indwrk, align 4
  %idxprom279 = sext i32 %252 to i64
  %arrayidx280 = getelementptr inbounds %struct.doublecomplex, ptr %251, i64 %idxprom279
  %call281 = call i32 @zhetrd_(ptr noundef %240, ptr noundef %241, ptr noundef %arrayidx272, ptr noundef %244, ptr noundef %arrayidx274, ptr noundef %arrayidx276, ptr noundef %arrayidx278, ptr noundef %arrayidx280, ptr noundef %llwork, ptr noundef %iinfo)
  store i32 0, ptr %test, align 4
  %253 = load i32, ptr %indeig, align 4
  %tobool282 = icmp ne i32 %253, 0
  br i1 %tobool282, label %if.then283, label %if.end291

if.then283:                                       ; preds = %if.end265
  %254 = load ptr, ptr %il.addr, align 8
  %255 = load i32, ptr %254, align 4
  %cmp284 = icmp eq i32 %255, 1
  br i1 %cmp284, label %land.lhs.true286, label %if.end290

land.lhs.true286:                                 ; preds = %if.then283
  %256 = load ptr, ptr %iu.addr, align 8
  %257 = load i32, ptr %256, align 4
  %258 = load ptr, ptr %n.addr, align 8
  %259 = load i32, ptr %258, align 4
  %cmp287 = icmp eq i32 %257, %259
  br i1 %cmp287, label %if.then289, label %if.end290

if.then289:                                       ; preds = %land.lhs.true286
  store i32 1, ptr %test, align 4
  br label %if.end290

if.end290:                                        ; preds = %if.then289, %land.lhs.true286, %if.then283
  br label %if.end291

if.end291:                                        ; preds = %if.end290, %if.end265
  %260 = load i32, ptr %alleig, align 4
  %tobool292 = icmp ne i32 %260, 0
  br i1 %tobool292, label %land.lhs.true295, label %lor.lhs.false293

lor.lhs.false293:                                 ; preds = %if.end291
  %261 = load i32, ptr %test, align 4
  %tobool294 = icmp ne i32 %261, 0
  br i1 %tobool294, label %land.lhs.true295, label %if.end362

land.lhs.true295:                                 ; preds = %lor.lhs.false293, %if.end291
  %262 = load ptr, ptr %abstol.addr, align 8
  %263 = load double, ptr %262, align 8
  %cmp296 = fcmp ole double %263, 0.000000e+00
  br i1 %cmp296, label %if.then298, label %if.end362

if.then298:                                       ; preds = %land.lhs.true295
  %264 = load ptr, ptr %n.addr, align 8
  %265 = load ptr, ptr %rwork.addr, align 8
  %266 = load i32, ptr %indd, align 4
  %idxprom299 = sext i32 %266 to i64
  %arrayidx300 = getelementptr inbounds double, ptr %265, i64 %idxprom299
  %267 = load ptr, ptr %w.addr, align 8
  %arrayidx301 = getelementptr inbounds double, ptr %267, i64 1
  %call302 = call i32 @dcopy_(ptr noundef %264, ptr noundef %arrayidx300, ptr noundef @c__1, ptr noundef %arrayidx301, ptr noundef @c__1)
  %268 = load i32, ptr %indrwk, align 4
  %269 = load ptr, ptr %n.addr, align 8
  %270 = load i32, ptr %269, align 4
  %shl303 = shl i32 %270, 1
  %add304 = add nsw i32 %268, %shl303
  store i32 %add304, ptr %indee, align 4
  %271 = load i32, ptr %wantz, align 4
  %tobool305 = icmp ne i32 %271, 0
  br i1 %tobool305, label %if.else317, label %if.then306

if.then306:                                       ; preds = %if.then298
  %272 = load ptr, ptr %n.addr, align 8
  %273 = load i32, ptr %272, align 4
  %sub307 = sub nsw i32 %273, 1
  store i32 %sub307, ptr %i__1, align 4
  %274 = load ptr, ptr %rwork.addr, align 8
  %275 = load i32, ptr %inde, align 4
  %idxprom308 = sext i32 %275 to i64
  %arrayidx309 = getelementptr inbounds double, ptr %274, i64 %idxprom308
  %276 = load ptr, ptr %rwork.addr, align 8
  %277 = load i32, ptr %indee, align 4
  %idxprom310 = sext i32 %277 to i64
  %arrayidx311 = getelementptr inbounds double, ptr %276, i64 %idxprom310
  %call312 = call i32 @dcopy_(ptr noundef %i__1, ptr noundef %arrayidx309, ptr noundef @c__1, ptr noundef %arrayidx311, ptr noundef @c__1)
  %278 = load ptr, ptr %n.addr, align 8
  %279 = load ptr, ptr %w.addr, align 8
  %arrayidx313 = getelementptr inbounds double, ptr %279, i64 1
  %280 = load ptr, ptr %rwork.addr, align 8
  %281 = load i32, ptr %indee, align 4
  %idxprom314 = sext i32 %281 to i64
  %arrayidx315 = getelementptr inbounds double, ptr %280, i64 %idxprom314
  %282 = load ptr, ptr %info.addr, align 8
  %call316 = call i32 @dsterf_(ptr noundef %278, ptr noundef %arrayidx313, ptr noundef %arrayidx315, ptr noundef %282)
  br label %if.end357

if.else317:                                       ; preds = %if.then298
  %283 = load ptr, ptr %n.addr, align 8
  %284 = load ptr, ptr %n.addr, align 8
  %285 = load ptr, ptr %a.addr, align 8
  %286 = load i32, ptr %a_offset, align 4
  %idxprom318 = sext i32 %286 to i64
  %arrayidx319 = getelementptr inbounds %struct.doublecomplex, ptr %285, i64 %idxprom318
  %287 = load ptr, ptr %lda.addr, align 8
  %288 = load ptr, ptr %z__.addr, align 8
  %289 = load i32, ptr %z_offset, align 4
  %idxprom320 = sext i32 %289 to i64
  %arrayidx321 = getelementptr inbounds %struct.doublecomplex, ptr %288, i64 %idxprom320
  %290 = load ptr, ptr %ldz.addr, align 8
  %call322 = call i32 @zlacpy_(ptr noundef @.str.2, ptr noundef %283, ptr noundef %284, ptr noundef %arrayidx319, ptr noundef %287, ptr noundef %arrayidx321, ptr noundef %290)
  %291 = load ptr, ptr %uplo.addr, align 8
  %292 = load ptr, ptr %n.addr, align 8
  %293 = load ptr, ptr %z__.addr, align 8
  %294 = load i32, ptr %z_offset, align 4
  %idxprom323 = sext i32 %294 to i64
  %arrayidx324 = getelementptr inbounds %struct.doublecomplex, ptr %293, i64 %idxprom323
  %295 = load ptr, ptr %ldz.addr, align 8
  %296 = load ptr, ptr %work.addr, align 8
  %297 = load i32, ptr %indtau, align 4
  %idxprom325 = sext i32 %297 to i64
  %arrayidx326 = getelementptr inbounds %struct.doublecomplex, ptr %296, i64 %idxprom325
  %298 = load ptr, ptr %work.addr, align 8
  %299 = load i32, ptr %indwrk, align 4
  %idxprom327 = sext i32 %299 to i64
  %arrayidx328 = getelementptr inbounds %struct.doublecomplex, ptr %298, i64 %idxprom327
  %call329 = call i32 @zungtr_(ptr noundef %291, ptr noundef %292, ptr noundef %arrayidx324, ptr noundef %295, ptr noundef %arrayidx326, ptr noundef %arrayidx328, ptr noundef %llwork, ptr noundef %iinfo)
  %300 = load ptr, ptr %n.addr, align 8
  %301 = load i32, ptr %300, align 4
  %sub330 = sub nsw i32 %301, 1
  store i32 %sub330, ptr %i__1, align 4
  %302 = load ptr, ptr %rwork.addr, align 8
  %303 = load i32, ptr %inde, align 4
  %idxprom331 = sext i32 %303 to i64
  %arrayidx332 = getelementptr inbounds double, ptr %302, i64 %idxprom331
  %304 = load ptr, ptr %rwork.addr, align 8
  %305 = load i32, ptr %indee, align 4
  %idxprom333 = sext i32 %305 to i64
  %arrayidx334 = getelementptr inbounds double, ptr %304, i64 %idxprom333
  %call335 = call i32 @dcopy_(ptr noundef %i__1, ptr noundef %arrayidx332, ptr noundef @c__1, ptr noundef %arrayidx334, ptr noundef @c__1)
  %306 = load ptr, ptr %jobz.addr, align 8
  %307 = load ptr, ptr %n.addr, align 8
  %308 = load ptr, ptr %w.addr, align 8
  %arrayidx336 = getelementptr inbounds double, ptr %308, i64 1
  %309 = load ptr, ptr %rwork.addr, align 8
  %310 = load i32, ptr %indee, align 4
  %idxprom337 = sext i32 %310 to i64
  %arrayidx338 = getelementptr inbounds double, ptr %309, i64 %idxprom337
  %311 = load ptr, ptr %z__.addr, align 8
  %312 = load i32, ptr %z_offset, align 4
  %idxprom339 = sext i32 %312 to i64
  %arrayidx340 = getelementptr inbounds %struct.doublecomplex, ptr %311, i64 %idxprom339
  %313 = load ptr, ptr %ldz.addr, align 8
  %314 = load ptr, ptr %rwork.addr, align 8
  %315 = load i32, ptr %indrwk, align 4
  %idxprom341 = sext i32 %315 to i64
  %arrayidx342 = getelementptr inbounds double, ptr %314, i64 %idxprom341
  %316 = load ptr, ptr %info.addr, align 8
  %call343 = call i32 @zsteqr_(ptr noundef %306, ptr noundef %307, ptr noundef %arrayidx336, ptr noundef %arrayidx338, ptr noundef %arrayidx340, ptr noundef %313, ptr noundef %arrayidx342, ptr noundef %316)
  %317 = load ptr, ptr %info.addr, align 8
  %318 = load i32, ptr %317, align 4
  %cmp344 = icmp eq i32 %318, 0
  br i1 %cmp344, label %if.then346, label %if.end356

if.then346:                                       ; preds = %if.else317
  %319 = load ptr, ptr %n.addr, align 8
  %320 = load i32, ptr %319, align 4
  store i32 %320, ptr %i__1, align 4
  store i32 1, ptr %i__, align 4
  br label %for.cond347

for.cond347:                                      ; preds = %for.inc353, %if.then346
  %321 = load i32, ptr %i__, align 4
  %322 = load i32, ptr %i__1, align 4
  %cmp348 = icmp sle i32 %321, %322
  br i1 %cmp348, label %for.body350, label %for.end355

for.body350:                                      ; preds = %for.cond347
  %323 = load ptr, ptr %ifail.addr, align 8
  %324 = load i32, ptr %i__, align 4
  %idxprom351 = sext i32 %324 to i64
  %arrayidx352 = getelementptr inbounds i32, ptr %323, i64 %idxprom351
  store i32 0, ptr %arrayidx352, align 4
  br label %for.inc353

for.inc353:                                       ; preds = %for.body350
  %325 = load i32, ptr %i__, align 4
  %inc354 = add nsw i32 %325, 1
  store i32 %inc354, ptr %i__, align 4
  br label %for.cond347, !llvm.loop !8

for.end355:                                       ; preds = %for.cond347
  br label %if.end356

if.end356:                                        ; preds = %for.end355, %if.else317
  br label %if.end357

if.end357:                                        ; preds = %if.end356, %if.then306
  %326 = load ptr, ptr %info.addr, align 8
  %327 = load i32, ptr %326, align 4
  %cmp358 = icmp eq i32 %327, 0
  br i1 %cmp358, label %if.then360, label %if.end361

if.then360:                                       ; preds = %if.end357
  %328 = load ptr, ptr %n.addr, align 8
  %329 = load i32, ptr %328, align 4
  %330 = load ptr, ptr %m.addr, align 8
  store i32 %329, ptr %330, align 4
  br label %L40

if.end361:                                        ; preds = %if.end357
  %331 = load ptr, ptr %info.addr, align 8
  store i32 0, ptr %331, align 4
  br label %if.end362

if.end362:                                        ; preds = %if.end361, %land.lhs.true295, %lor.lhs.false293
  %332 = load i32, ptr %wantz, align 4
  %tobool363 = icmp ne i32 %332, 0
  br i1 %tobool363, label %if.then364, label %if.else365

if.then364:                                       ; preds = %if.end362
  %arraydecay = getelementptr inbounds [1 x i8], ptr %order, i64 0, i64 0
  store i8 66, ptr %arraydecay, align 1
  br label %if.end367

if.else365:                                       ; preds = %if.end362
  %arraydecay366 = getelementptr inbounds [1 x i8], ptr %order, i64 0, i64 0
  store i8 69, ptr %arraydecay366, align 1
  br label %if.end367

if.end367:                                        ; preds = %if.else365, %if.then364
  store i32 1, ptr %indibl, align 4
  %333 = load i32, ptr %indibl, align 4
  %334 = load ptr, ptr %n.addr, align 8
  %335 = load i32, ptr %334, align 4
  %add368 = add nsw i32 %333, %335
  store i32 %add368, ptr %indisp, align 4
  %336 = load i32, ptr %indisp, align 4
  %337 = load ptr, ptr %n.addr, align 8
  %338 = load i32, ptr %337, align 4
  %add369 = add nsw i32 %336, %338
  store i32 %add369, ptr %indiwk, align 4
  %339 = load ptr, ptr %range.addr, align 8
  %arraydecay370 = getelementptr inbounds [1 x i8], ptr %order, i64 0, i64 0
  %340 = load ptr, ptr %n.addr, align 8
  %341 = load ptr, ptr %il.addr, align 8
  %342 = load ptr, ptr %iu.addr, align 8
  %343 = load ptr, ptr %rwork.addr, align 8
  %344 = load i32, ptr %indd, align 4
  %idxprom371 = sext i32 %344 to i64
  %arrayidx372 = getelementptr inbounds double, ptr %343, i64 %idxprom371
  %345 = load ptr, ptr %rwork.addr, align 8
  %346 = load i32, ptr %inde, align 4
  %idxprom373 = sext i32 %346 to i64
  %arrayidx374 = getelementptr inbounds double, ptr %345, i64 %idxprom373
  %347 = load ptr, ptr %m.addr, align 8
  %348 = load ptr, ptr %w.addr, align 8
  %arrayidx375 = getelementptr inbounds double, ptr %348, i64 1
  %349 = load ptr, ptr %iwork.addr, align 8
  %350 = load i32, ptr %indibl, align 4
  %idxprom376 = sext i32 %350 to i64
  %arrayidx377 = getelementptr inbounds i32, ptr %349, i64 %idxprom376
  %351 = load ptr, ptr %iwork.addr, align 8
  %352 = load i32, ptr %indisp, align 4
  %idxprom378 = sext i32 %352 to i64
  %arrayidx379 = getelementptr inbounds i32, ptr %351, i64 %idxprom378
  %353 = load ptr, ptr %rwork.addr, align 8
  %354 = load i32, ptr %indrwk, align 4
  %idxprom380 = sext i32 %354 to i64
  %arrayidx381 = getelementptr inbounds double, ptr %353, i64 %idxprom380
  %355 = load ptr, ptr %iwork.addr, align 8
  %356 = load i32, ptr %indiwk, align 4
  %idxprom382 = sext i32 %356 to i64
  %arrayidx383 = getelementptr inbounds i32, ptr %355, i64 %idxprom382
  %357 = load ptr, ptr %info.addr, align 8
  %call384 = call i32 @dstebz_(ptr noundef %339, ptr noundef %arraydecay370, ptr noundef %340, ptr noundef %vll, ptr noundef %vuu, ptr noundef %341, ptr noundef %342, ptr noundef %abstll, ptr noundef %arrayidx372, ptr noundef %arrayidx374, ptr noundef %347, ptr noundef %nsplit, ptr noundef %arrayidx375, ptr noundef %arrayidx377, ptr noundef %arrayidx379, ptr noundef %arrayidx381, ptr noundef %arrayidx383, ptr noundef %357)
  %358 = load i32, ptr %wantz, align 4
  %tobool385 = icmp ne i32 %358, 0
  br i1 %tobool385, label %if.then386, label %if.end413

if.then386:                                       ; preds = %if.end367
  %359 = load ptr, ptr %n.addr, align 8
  %360 = load ptr, ptr %rwork.addr, align 8
  %361 = load i32, ptr %indd, align 4
  %idxprom387 = sext i32 %361 to i64
  %arrayidx388 = getelementptr inbounds double, ptr %360, i64 %idxprom387
  %362 = load ptr, ptr %rwork.addr, align 8
  %363 = load i32, ptr %inde, align 4
  %idxprom389 = sext i32 %363 to i64
  %arrayidx390 = getelementptr inbounds double, ptr %362, i64 %idxprom389
  %364 = load ptr, ptr %m.addr, align 8
  %365 = load ptr, ptr %w.addr, align 8
  %arrayidx391 = getelementptr inbounds double, ptr %365, i64 1
  %366 = load ptr, ptr %iwork.addr, align 8
  %367 = load i32, ptr %indibl, align 4
  %idxprom392 = sext i32 %367 to i64
  %arrayidx393 = getelementptr inbounds i32, ptr %366, i64 %idxprom392
  %368 = load ptr, ptr %iwork.addr, align 8
  %369 = load i32, ptr %indisp, align 4
  %idxprom394 = sext i32 %369 to i64
  %arrayidx395 = getelementptr inbounds i32, ptr %368, i64 %idxprom394
  %370 = load ptr, ptr %z__.addr, align 8
  %371 = load i32, ptr %z_offset, align 4
  %idxprom396 = sext i32 %371 to i64
  %arrayidx397 = getelementptr inbounds %struct.doublecomplex, ptr %370, i64 %idxprom396
  %372 = load ptr, ptr %ldz.addr, align 8
  %373 = load ptr, ptr %rwork.addr, align 8
  %374 = load i32, ptr %indrwk, align 4
  %idxprom398 = sext i32 %374 to i64
  %arrayidx399 = getelementptr inbounds double, ptr %373, i64 %idxprom398
  %375 = load ptr, ptr %iwork.addr, align 8
  %376 = load i32, ptr %indiwk, align 4
  %idxprom400 = sext i32 %376 to i64
  %arrayidx401 = getelementptr inbounds i32, ptr %375, i64 %idxprom400
  %377 = load ptr, ptr %ifail.addr, align 8
  %arrayidx402 = getelementptr inbounds i32, ptr %377, i64 1
  %378 = load ptr, ptr %info.addr, align 8
  %call403 = call i32 @zstein_(ptr noundef %359, ptr noundef %arrayidx388, ptr noundef %arrayidx390, ptr noundef %364, ptr noundef %arrayidx391, ptr noundef %arrayidx393, ptr noundef %arrayidx395, ptr noundef %arrayidx397, ptr noundef %372, ptr noundef %arrayidx399, ptr noundef %arrayidx401, ptr noundef %arrayidx402, ptr noundef %378)
  %379 = load ptr, ptr %uplo.addr, align 8
  %380 = load ptr, ptr %n.addr, align 8
  %381 = load ptr, ptr %m.addr, align 8
  %382 = load ptr, ptr %a.addr, align 8
  %383 = load i32, ptr %a_offset, align 4
  %idxprom404 = sext i32 %383 to i64
  %arrayidx405 = getelementptr inbounds %struct.doublecomplex, ptr %382, i64 %idxprom404
  %384 = load ptr, ptr %lda.addr, align 8
  %385 = load ptr, ptr %work.addr, align 8
  %386 = load i32, ptr %indtau, align 4
  %idxprom406 = sext i32 %386 to i64
  %arrayidx407 = getelementptr inbounds %struct.doublecomplex, ptr %385, i64 %idxprom406
  %387 = load ptr, ptr %z__.addr, align 8
  %388 = load i32, ptr %z_offset, align 4
  %idxprom408 = sext i32 %388 to i64
  %arrayidx409 = getelementptr inbounds %struct.doublecomplex, ptr %387, i64 %idxprom408
  %389 = load ptr, ptr %ldz.addr, align 8
  %390 = load ptr, ptr %work.addr, align 8
  %391 = load i32, ptr %indwrk, align 4
  %idxprom410 = sext i32 %391 to i64
  %arrayidx411 = getelementptr inbounds %struct.doublecomplex, ptr %390, i64 %idxprom410
  %call412 = call i32 @zunmtr_(ptr noundef @.str, ptr noundef %379, ptr noundef @.str.4, ptr noundef %380, ptr noundef %381, ptr noundef %arrayidx405, ptr noundef %384, ptr noundef %arrayidx407, ptr noundef %arrayidx409, ptr noundef %389, ptr noundef %arrayidx411, ptr noundef %llwork, ptr noundef %iinfo)
  br label %if.end413

if.end413:                                        ; preds = %if.then386, %if.end367
  br label %L40

L40:                                              ; preds = %if.end413, %if.then360
  %392 = load i32, ptr %iscale, align 4
  %cmp414 = icmp eq i32 %392, 1
  br i1 %cmp414, label %if.then416, label %if.end426

if.then416:                                       ; preds = %L40
  %393 = load ptr, ptr %info.addr, align 8
  %394 = load i32, ptr %393, align 4
  %cmp417 = icmp eq i32 %394, 0
  br i1 %cmp417, label %if.then419, label %if.else420

if.then419:                                       ; preds = %if.then416
  %395 = load ptr, ptr %m.addr, align 8
  %396 = load i32, ptr %395, align 4
  store i32 %396, ptr %imax, align 4
  br label %if.end422

if.else420:                                       ; preds = %if.then416
  %397 = load ptr, ptr %info.addr, align 8
  %398 = load i32, ptr %397, align 4
  %sub421 = sub nsw i32 %398, 1
  store i32 %sub421, ptr %imax, align 4
  br label %if.end422

if.end422:                                        ; preds = %if.else420, %if.then419
  %399 = load double, ptr %sigma, align 8
  %div423 = fdiv double 1.000000e+00, %399
  store double %div423, ptr %d__1, align 8
  %400 = load ptr, ptr %w.addr, align 8
  %arrayidx424 = getelementptr inbounds double, ptr %400, i64 1
  %call425 = call i32 @dscal_(ptr noundef %imax, ptr noundef %d__1, ptr noundef %arrayidx424, ptr noundef @c__1)
  br label %if.end426

if.end426:                                        ; preds = %if.end422, %L40
  %401 = load i32, ptr %wantz, align 4
  %tobool427 = icmp ne i32 %401, 0
  br i1 %tobool427, label %if.then428, label %if.end502

if.then428:                                       ; preds = %if.end426
  %402 = load ptr, ptr %m.addr, align 8
  %403 = load i32, ptr %402, align 4
  %sub429 = sub nsw i32 %403, 1
  store i32 %sub429, ptr %i__1, align 4
  store i32 1, ptr %j, align 4
  br label %for.cond430

for.cond430:                                      ; preds = %for.inc499, %if.then428
  %404 = load i32, ptr %j, align 4
  %405 = load i32, ptr %i__1, align 4
  %cmp431 = icmp sle i32 %404, %405
  br i1 %cmp431, label %for.body433, label %for.end501

for.body433:                                      ; preds = %for.cond430
  store i32 0, ptr %i__, align 4
  %406 = load ptr, ptr %w.addr, align 8
  %407 = load i32, ptr %j, align 4
  %idxprom434 = sext i32 %407 to i64
  %arrayidx435 = getelementptr inbounds double, ptr %406, i64 %idxprom434
  %408 = load double, ptr %arrayidx435, align 8
  store double %408, ptr %tmp1, align 8
  %409 = load ptr, ptr %m.addr, align 8
  %410 = load i32, ptr %409, align 4
  store i32 %410, ptr %i__2, align 4
  %411 = load i32, ptr %j, align 4
  %add436 = add nsw i32 %411, 1
  store i32 %add436, ptr %jj, align 4
  br label %for.cond437

for.cond437:                                      ; preds = %for.inc449, %for.body433
  %412 = load i32, ptr %jj, align 4
  %413 = load i32, ptr %i__2, align 4
  %cmp438 = icmp sle i32 %412, %413
  br i1 %cmp438, label %for.body440, label %for.end451

for.body440:                                      ; preds = %for.cond437
  %414 = load ptr, ptr %w.addr, align 8
  %415 = load i32, ptr %jj, align 4
  %idxprom441 = sext i32 %415 to i64
  %arrayidx442 = getelementptr inbounds double, ptr %414, i64 %idxprom441
  %416 = load double, ptr %arrayidx442, align 8
  %417 = load double, ptr %tmp1, align 8
  %cmp443 = fcmp olt double %416, %417
  br i1 %cmp443, label %if.then445, label %if.end448

if.then445:                                       ; preds = %for.body440
  %418 = load i32, ptr %jj, align 4
  store i32 %418, ptr %i__, align 4
  %419 = load ptr, ptr %w.addr, align 8
  %420 = load i32, ptr %jj, align 4
  %idxprom446 = sext i32 %420 to i64
  %arrayidx447 = getelementptr inbounds double, ptr %419, i64 %idxprom446
  %421 = load double, ptr %arrayidx447, align 8
  store double %421, ptr %tmp1, align 8
  br label %if.end448

if.end448:                                        ; preds = %if.then445, %for.body440
  br label %for.inc449

for.inc449:                                       ; preds = %if.end448
  %422 = load i32, ptr %jj, align 4
  %inc450 = add nsw i32 %422, 1
  store i32 %inc450, ptr %jj, align 4
  br label %for.cond437, !llvm.loop !9

for.end451:                                       ; preds = %for.cond437
  %423 = load i32, ptr %i__, align 4
  %cmp452 = icmp ne i32 %423, 0
  br i1 %cmp452, label %if.then454, label %if.end498

if.then454:                                       ; preds = %for.end451
  %424 = load ptr, ptr %iwork.addr, align 8
  %425 = load i32, ptr %indibl, align 4
  %426 = load i32, ptr %i__, align 4
  %add455 = add nsw i32 %425, %426
  %sub456 = sub nsw i32 %add455, 1
  %idxprom457 = sext i32 %sub456 to i64
  %arrayidx458 = getelementptr inbounds i32, ptr %424, i64 %idxprom457
  %427 = load i32, ptr %arrayidx458, align 4
  store i32 %427, ptr %itmp1, align 4
  %428 = load ptr, ptr %w.addr, align 8
  %429 = load i32, ptr %j, align 4
  %idxprom459 = sext i32 %429 to i64
  %arrayidx460 = getelementptr inbounds double, ptr %428, i64 %idxprom459
  %430 = load double, ptr %arrayidx460, align 8
  %431 = load ptr, ptr %w.addr, align 8
  %432 = load i32, ptr %i__, align 4
  %idxprom461 = sext i32 %432 to i64
  %arrayidx462 = getelementptr inbounds double, ptr %431, i64 %idxprom461
  store double %430, ptr %arrayidx462, align 8
  %433 = load ptr, ptr %iwork.addr, align 8
  %434 = load i32, ptr %indibl, align 4
  %435 = load i32, ptr %j, align 4
  %add463 = add nsw i32 %434, %435
  %sub464 = sub nsw i32 %add463, 1
  %idxprom465 = sext i32 %sub464 to i64
  %arrayidx466 = getelementptr inbounds i32, ptr %433, i64 %idxprom465
  %436 = load i32, ptr %arrayidx466, align 4
  %437 = load ptr, ptr %iwork.addr, align 8
  %438 = load i32, ptr %indibl, align 4
  %439 = load i32, ptr %i__, align 4
  %add467 = add nsw i32 %438, %439
  %sub468 = sub nsw i32 %add467, 1
  %idxprom469 = sext i32 %sub468 to i64
  %arrayidx470 = getelementptr inbounds i32, ptr %437, i64 %idxprom469
  store i32 %436, ptr %arrayidx470, align 4
  %440 = load double, ptr %tmp1, align 8
  %441 = load ptr, ptr %w.addr, align 8
  %442 = load i32, ptr %j, align 4
  %idxprom471 = sext i32 %442 to i64
  %arrayidx472 = getelementptr inbounds double, ptr %441, i64 %idxprom471
  store double %440, ptr %arrayidx472, align 8
  %443 = load i32, ptr %itmp1, align 4
  %444 = load ptr, ptr %iwork.addr, align 8
  %445 = load i32, ptr %indibl, align 4
  %446 = load i32, ptr %j, align 4
  %add473 = add nsw i32 %445, %446
  %sub474 = sub nsw i32 %add473, 1
  %idxprom475 = sext i32 %sub474 to i64
  %arrayidx476 = getelementptr inbounds i32, ptr %444, i64 %idxprom475
  store i32 %443, ptr %arrayidx476, align 4
  %447 = load ptr, ptr %n.addr, align 8
  %448 = load ptr, ptr %z__.addr, align 8
  %449 = load i32, ptr %i__, align 4
  %450 = load i32, ptr %z_dim1, align 4
  %mul477 = mul nsw i32 %449, %450
  %add478 = add nsw i32 %mul477, 1
  %idxprom479 = sext i32 %add478 to i64
  %arrayidx480 = getelementptr inbounds %struct.doublecomplex, ptr %448, i64 %idxprom479
  %451 = load ptr, ptr %z__.addr, align 8
  %452 = load i32, ptr %j, align 4
  %453 = load i32, ptr %z_dim1, align 4
  %mul481 = mul nsw i32 %452, %453
  %add482 = add nsw i32 %mul481, 1
  %idxprom483 = sext i32 %add482 to i64
  %arrayidx484 = getelementptr inbounds %struct.doublecomplex, ptr %451, i64 %idxprom483
  %call485 = call i32 @zswap_(ptr noundef %447, ptr noundef %arrayidx480, ptr noundef @c__1, ptr noundef %arrayidx484, ptr noundef @c__1)
  %454 = load ptr, ptr %info.addr, align 8
  %455 = load i32, ptr %454, align 4
  %cmp486 = icmp ne i32 %455, 0
  br i1 %cmp486, label %if.then488, label %if.end497

if.then488:                                       ; preds = %if.then454
  %456 = load ptr, ptr %ifail.addr, align 8
  %457 = load i32, ptr %i__, align 4
  %idxprom489 = sext i32 %457 to i64
  %arrayidx490 = getelementptr inbounds i32, ptr %456, i64 %idxprom489
  %458 = load i32, ptr %arrayidx490, align 4
  store i32 %458, ptr %itmp1, align 4
  %459 = load ptr, ptr %ifail.addr, align 8
  %460 = load i32, ptr %j, align 4
  %idxprom491 = sext i32 %460 to i64
  %arrayidx492 = getelementptr inbounds i32, ptr %459, i64 %idxprom491
  %461 = load i32, ptr %arrayidx492, align 4
  %462 = load ptr, ptr %ifail.addr, align 8
  %463 = load i32, ptr %i__, align 4
  %idxprom493 = sext i32 %463 to i64
  %arrayidx494 = getelementptr inbounds i32, ptr %462, i64 %idxprom493
  store i32 %461, ptr %arrayidx494, align 4
  %464 = load i32, ptr %itmp1, align 4
  %465 = load ptr, ptr %ifail.addr, align 8
  %466 = load i32, ptr %j, align 4
  %idxprom495 = sext i32 %466 to i64
  %arrayidx496 = getelementptr inbounds i32, ptr %465, i64 %idxprom495
  store i32 %464, ptr %arrayidx496, align 4
  br label %if.end497

if.end497:                                        ; preds = %if.then488, %if.then454
  br label %if.end498

if.end498:                                        ; preds = %if.end497, %for.end451
  br label %for.inc499

for.inc499:                                       ; preds = %if.end498
  %467 = load i32, ptr %j, align 4
  %inc500 = add nsw i32 %467, 1
  store i32 %inc500, ptr %j, align 4
  br label %for.cond430, !llvm.loop !10

for.end501:                                       ; preds = %for.cond430
  br label %if.end502

if.end502:                                        ; preds = %for.end501, %if.end426
  %468 = load i32, ptr %lwkopt, align 4
  %conv503 = sitofp i32 %468 to double
  %469 = load ptr, ptr %work.addr, align 8
  %arrayidx504 = getelementptr inbounds %struct.doublecomplex, ptr %469, i64 1
  %r505 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx504, i32 0, i32 0
  store double %conv503, ptr %r505, align 8
  %470 = load ptr, ptr %work.addr, align 8
  %arrayidx506 = getelementptr inbounds %struct.doublecomplex, ptr %470, i64 1
  %i507 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx506, i32 0, i32 1
  store double 0.000000e+00, ptr %i507, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end502, %if.end190, %if.then143, %if.then138, %if.then134
  %471 = load i32, ptr %retval, align 4
  ret i32 %471
}

declare i32 @lsame_(ptr noundef, ptr noundef) #1

declare i32 @ilaenv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @xerbla_(ptr noundef, ptr noundef) #1

declare double @dlamch_(ptr noundef) #1

; Function Attrs: nounwind
declare double @sqrt(double noundef) #2

declare double @zlanhe_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @zdscal_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @zhetrd_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @dcopy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @dsterf_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @zlacpy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @zungtr_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @zsteqr_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @dstebz_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @zstein_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @zunmtr_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @dscal_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @zswap_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

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
!10 = distinct !{!10, !6}

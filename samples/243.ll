; ModuleID = 'samples/243.bc'
source_filename = "/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/map/lapack2flamec/f2c/c/dsbevx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"V\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"DSBEVX\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"Safe minimum\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"Precision\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"M\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@c_b14 = internal global double 1.000000e+00, align 8
@.str.11 = private unnamed_addr constant [2 x i8] c"Q\00", align 1
@c__1 = internal global i32 1, align 4
@c_b34 = internal global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define i32 @dsbevx_(ptr noundef %jobz, ptr noundef %range, ptr noundef %uplo, ptr noundef %n, ptr noundef %kd, ptr noundef %ab, ptr noundef %ldab, ptr noundef %q, ptr noundef %ldq, ptr noundef %vl, ptr noundef %vu, ptr noundef %il, ptr noundef %iu, ptr noundef %abstol, ptr noundef %m, ptr noundef %w, ptr noundef %z__, ptr noundef %ldz, ptr noundef %work, ptr noundef %iwork, ptr noundef %ifail, ptr noundef %info) #0 {
entry:
  %retval = alloca i32, align 4
  %jobz.addr = alloca ptr, align 8
  %range.addr = alloca ptr, align 8
  %uplo.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %kd.addr = alloca ptr, align 8
  %ab.addr = alloca ptr, align 8
  %ldab.addr = alloca ptr, align 8
  %q.addr = alloca ptr, align 8
  %ldq.addr = alloca ptr, align 8
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
  %iwork.addr = alloca ptr, align 8
  %ifail.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %ab_dim1 = alloca i32, align 4
  %ab_offset = alloca i32, align 4
  %q_dim1 = alloca i32, align 4
  %q_offset = alloca i32, align 4
  %z_dim1 = alloca i32, align 4
  %z_offset = alloca i32, align 4
  %i__1 = alloca i32, align 4
  %i__2 = alloca i32, align 4
  %d__1 = alloca double, align 8
  %d__2 = alloca double, align 8
  %i__ = alloca i32, align 4
  %j = alloca i32, align 4
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
  %indisp = alloca i32, align 4
  %indiwo = alloca i32, align 4
  %indwrk = alloca i32, align 4
  %nsplit = alloca i32, align 4
  %smlnum = alloca double, align 8
  store ptr %jobz, ptr %jobz.addr, align 8
  store ptr %range, ptr %range.addr, align 8
  store ptr %uplo, ptr %uplo.addr, align 8
  store ptr %n, ptr %n.addr, align 8
  store ptr %kd, ptr %kd.addr, align 8
  store ptr %ab, ptr %ab.addr, align 8
  store ptr %ldab, ptr %ldab.addr, align 8
  store ptr %q, ptr %q.addr, align 8
  store ptr %ldq, ptr %ldq.addr, align 8
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
  store ptr %iwork, ptr %iwork.addr, align 8
  store ptr %ifail, ptr %ifail.addr, align 8
  store ptr %info, ptr %info.addr, align 8
  %0 = load ptr, ptr %ldab.addr, align 8
  %1 = load i32, ptr %0, align 4
  store i32 %1, ptr %ab_dim1, align 4
  %2 = load i32, ptr %ab_dim1, align 4
  %add = add nsw i32 1, %2
  store i32 %add, ptr %ab_offset, align 4
  %3 = load i32, ptr %ab_offset, align 4
  %4 = load ptr, ptr %ab.addr, align 8
  %idx.ext = sext i32 %3 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds double, ptr %4, i64 %idx.neg
  store ptr %add.ptr, ptr %ab.addr, align 8
  %5 = load ptr, ptr %ldq.addr, align 8
  %6 = load i32, ptr %5, align 4
  store i32 %6, ptr %q_dim1, align 4
  %7 = load i32, ptr %q_dim1, align 4
  %add1 = add nsw i32 1, %7
  store i32 %add1, ptr %q_offset, align 4
  %8 = load i32, ptr %q_offset, align 4
  %9 = load ptr, ptr %q.addr, align 8
  %idx.ext2 = sext i32 %8 to i64
  %idx.neg3 = sub i64 0, %idx.ext2
  %add.ptr4 = getelementptr inbounds double, ptr %9, i64 %idx.neg3
  store ptr %add.ptr4, ptr %q.addr, align 8
  %10 = load ptr, ptr %w.addr, align 8
  %incdec.ptr = getelementptr inbounds double, ptr %10, i32 -1
  store ptr %incdec.ptr, ptr %w.addr, align 8
  %11 = load ptr, ptr %ldz.addr, align 8
  %12 = load i32, ptr %11, align 4
  store i32 %12, ptr %z_dim1, align 4
  %13 = load i32, ptr %z_dim1, align 4
  %add5 = add nsw i32 1, %13
  store i32 %add5, ptr %z_offset, align 4
  %14 = load i32, ptr %z_offset, align 4
  %15 = load ptr, ptr %z__.addr, align 8
  %idx.ext6 = sext i32 %14 to i64
  %idx.neg7 = sub i64 0, %idx.ext6
  %add.ptr8 = getelementptr inbounds double, ptr %15, i64 %idx.neg7
  store ptr %add.ptr8, ptr %z__.addr, align 8
  %16 = load ptr, ptr %work.addr, align 8
  %incdec.ptr9 = getelementptr inbounds double, ptr %16, i32 -1
  store ptr %incdec.ptr9, ptr %work.addr, align 8
  %17 = load ptr, ptr %iwork.addr, align 8
  %incdec.ptr10 = getelementptr inbounds i32, ptr %17, i32 -1
  store ptr %incdec.ptr10, ptr %iwork.addr, align 8
  %18 = load ptr, ptr %ifail.addr, align 8
  %incdec.ptr11 = getelementptr inbounds i32, ptr %18, i32 -1
  store ptr %incdec.ptr11, ptr %ifail.addr, align 8
  %19 = load ptr, ptr %jobz.addr, align 8
  %call = call i32 @lsame_(ptr noundef %19, ptr noundef @.str)
  store i32 %call, ptr %wantz, align 4
  %20 = load ptr, ptr %range.addr, align 8
  %call12 = call i32 @lsame_(ptr noundef %20, ptr noundef @.str.1)
  store i32 %call12, ptr %alleig, align 4
  %21 = load ptr, ptr %range.addr, align 8
  %call13 = call i32 @lsame_(ptr noundef %21, ptr noundef @.str)
  store i32 %call13, ptr %valeig, align 4
  %22 = load ptr, ptr %range.addr, align 8
  %call14 = call i32 @lsame_(ptr noundef %22, ptr noundef @.str.2)
  store i32 %call14, ptr %indeig, align 4
  %23 = load ptr, ptr %uplo.addr, align 8
  %call15 = call i32 @lsame_(ptr noundef %23, ptr noundef @.str.3)
  store i32 %call15, ptr %lower, align 4
  %24 = load ptr, ptr %info.addr, align 8
  store i32 0, ptr %24, align 4
  %25 = load i32, ptr %wantz, align 4
  %tobool = icmp ne i32 %25, 0
  br i1 %tobool, label %if.else, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %26 = load ptr, ptr %jobz.addr, align 8
  %call16 = call i32 @lsame_(ptr noundef %26, ptr noundef @.str.4)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.else, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  %27 = load ptr, ptr %info.addr, align 8
  store i32 -1, ptr %27, align 4
  br label %if.end83

if.else:                                          ; preds = %lor.lhs.false, %entry
  %28 = load i32, ptr %alleig, align 4
  %tobool18 = icmp ne i32 %28, 0
  br i1 %tobool18, label %if.else24, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %if.else
  %29 = load i32, ptr %valeig, align 4
  %tobool20 = icmp ne i32 %29, 0
  br i1 %tobool20, label %if.else24, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %lor.lhs.false19
  %30 = load i32, ptr %indeig, align 4
  %tobool22 = icmp ne i32 %30, 0
  br i1 %tobool22, label %if.else24, label %if.then23

if.then23:                                        ; preds = %lor.lhs.false21
  %31 = load ptr, ptr %info.addr, align 8
  store i32 -2, ptr %31, align 4
  br label %if.end82

if.else24:                                        ; preds = %lor.lhs.false21, %lor.lhs.false19, %if.else
  %32 = load i32, ptr %lower, align 4
  %tobool25 = icmp ne i32 %32, 0
  br i1 %tobool25, label %if.else30, label %lor.lhs.false26

lor.lhs.false26:                                  ; preds = %if.else24
  %33 = load ptr, ptr %uplo.addr, align 8
  %call27 = call i32 @lsame_(ptr noundef %33, ptr noundef @.str.5)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.else30, label %if.then29

if.then29:                                        ; preds = %lor.lhs.false26
  %34 = load ptr, ptr %info.addr, align 8
  store i32 -3, ptr %34, align 4
  br label %if.end81

if.else30:                                        ; preds = %lor.lhs.false26, %if.else24
  %35 = load ptr, ptr %n.addr, align 8
  %36 = load i32, ptr %35, align 4
  %cmp = icmp slt i32 %36, 0
  br i1 %cmp, label %if.then31, label %if.else32

if.then31:                                        ; preds = %if.else30
  %37 = load ptr, ptr %info.addr, align 8
  store i32 -4, ptr %37, align 4
  br label %if.end80

if.else32:                                        ; preds = %if.else30
  %38 = load ptr, ptr %kd.addr, align 8
  %39 = load i32, ptr %38, align 4
  %cmp33 = icmp slt i32 %39, 0
  br i1 %cmp33, label %if.then34, label %if.else35

if.then34:                                        ; preds = %if.else32
  %40 = load ptr, ptr %info.addr, align 8
  store i32 -5, ptr %40, align 4
  br label %if.end79

if.else35:                                        ; preds = %if.else32
  %41 = load ptr, ptr %ldab.addr, align 8
  %42 = load i32, ptr %41, align 4
  %43 = load ptr, ptr %kd.addr, align 8
  %44 = load i32, ptr %43, align 4
  %add36 = add nsw i32 %44, 1
  %cmp37 = icmp slt i32 %42, %add36
  br i1 %cmp37, label %if.then38, label %if.else39

if.then38:                                        ; preds = %if.else35
  %45 = load ptr, ptr %info.addr, align 8
  store i32 -7, ptr %45, align 4
  br label %if.end78

if.else39:                                        ; preds = %if.else35
  %46 = load i32, ptr %wantz, align 4
  %tobool40 = icmp ne i32 %46, 0
  br i1 %tobool40, label %land.lhs.true, label %if.else44

land.lhs.true:                                    ; preds = %if.else39
  %47 = load ptr, ptr %ldq.addr, align 8
  %48 = load i32, ptr %47, align 4
  %49 = load ptr, ptr %n.addr, align 8
  %50 = load i32, ptr %49, align 4
  %cmp41 = icmp sge i32 1, %50
  br i1 %cmp41, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true
  %51 = load ptr, ptr %n.addr, align 8
  %52 = load i32, ptr %51, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %52, %cond.false ]
  %cmp42 = icmp slt i32 %48, %cond
  br i1 %cmp42, label %if.then43, label %if.else44

if.then43:                                        ; preds = %cond.end
  %53 = load ptr, ptr %info.addr, align 8
  store i32 -9, ptr %53, align 4
  br label %if.end77

if.else44:                                        ; preds = %cond.end, %if.else39
  %54 = load i32, ptr %valeig, align 4
  %tobool45 = icmp ne i32 %54, 0
  br i1 %tobool45, label %if.then46, label %if.else51

if.then46:                                        ; preds = %if.else44
  %55 = load ptr, ptr %n.addr, align 8
  %56 = load i32, ptr %55, align 4
  %cmp47 = icmp sgt i32 %56, 0
  br i1 %cmp47, label %land.lhs.true48, label %if.end

land.lhs.true48:                                  ; preds = %if.then46
  %57 = load ptr, ptr %vu.addr, align 8
  %58 = load double, ptr %57, align 8
  %59 = load ptr, ptr %vl.addr, align 8
  %60 = load double, ptr %59, align 8
  %cmp49 = fcmp ole double %58, %60
  br i1 %cmp49, label %if.then50, label %if.end

if.then50:                                        ; preds = %land.lhs.true48
  %61 = load ptr, ptr %info.addr, align 8
  store i32 -11, ptr %61, align 4
  br label %if.end

if.end:                                           ; preds = %if.then50, %land.lhs.true48, %if.then46
  br label %if.end76

if.else51:                                        ; preds = %if.else44
  %62 = load i32, ptr %indeig, align 4
  %tobool52 = icmp ne i32 %62, 0
  br i1 %tobool52, label %if.then53, label %if.end75

if.then53:                                        ; preds = %if.else51
  %63 = load ptr, ptr %il.addr, align 8
  %64 = load i32, ptr %63, align 4
  %cmp54 = icmp slt i32 %64, 1
  br i1 %cmp54, label %if.then62, label %lor.lhs.false55

lor.lhs.false55:                                  ; preds = %if.then53
  %65 = load ptr, ptr %il.addr, align 8
  %66 = load i32, ptr %65, align 4
  %67 = load ptr, ptr %n.addr, align 8
  %68 = load i32, ptr %67, align 4
  %cmp56 = icmp sge i32 1, %68
  br i1 %cmp56, label %cond.true57, label %cond.false58

cond.true57:                                      ; preds = %lor.lhs.false55
  br label %cond.end59

cond.false58:                                     ; preds = %lor.lhs.false55
  %69 = load ptr, ptr %n.addr, align 8
  %70 = load i32, ptr %69, align 4
  br label %cond.end59

cond.end59:                                       ; preds = %cond.false58, %cond.true57
  %cond60 = phi i32 [ 1, %cond.true57 ], [ %70, %cond.false58 ]
  %cmp61 = icmp sgt i32 %66, %cond60
  br i1 %cmp61, label %if.then62, label %if.else63

if.then62:                                        ; preds = %cond.end59, %if.then53
  %71 = load ptr, ptr %info.addr, align 8
  store i32 -12, ptr %71, align 4
  br label %if.end74

if.else63:                                        ; preds = %cond.end59
  %72 = load ptr, ptr %iu.addr, align 8
  %73 = load i32, ptr %72, align 4
  %74 = load ptr, ptr %n.addr, align 8
  %75 = load i32, ptr %74, align 4
  %76 = load ptr, ptr %il.addr, align 8
  %77 = load i32, ptr %76, align 4
  %cmp64 = icmp sle i32 %75, %77
  br i1 %cmp64, label %cond.true65, label %cond.false66

cond.true65:                                      ; preds = %if.else63
  %78 = load ptr, ptr %n.addr, align 8
  %79 = load i32, ptr %78, align 4
  br label %cond.end67

cond.false66:                                     ; preds = %if.else63
  %80 = load ptr, ptr %il.addr, align 8
  %81 = load i32, ptr %80, align 4
  br label %cond.end67

cond.end67:                                       ; preds = %cond.false66, %cond.true65
  %cond68 = phi i32 [ %79, %cond.true65 ], [ %81, %cond.false66 ]
  %cmp69 = icmp slt i32 %73, %cond68
  br i1 %cmp69, label %if.then72, label %lor.lhs.false70

lor.lhs.false70:                                  ; preds = %cond.end67
  %82 = load ptr, ptr %iu.addr, align 8
  %83 = load i32, ptr %82, align 4
  %84 = load ptr, ptr %n.addr, align 8
  %85 = load i32, ptr %84, align 4
  %cmp71 = icmp sgt i32 %83, %85
  br i1 %cmp71, label %if.then72, label %if.end73

if.then72:                                        ; preds = %lor.lhs.false70, %cond.end67
  %86 = load ptr, ptr %info.addr, align 8
  store i32 -13, ptr %86, align 4
  br label %if.end73

if.end73:                                         ; preds = %if.then72, %lor.lhs.false70
  br label %if.end74

if.end74:                                         ; preds = %if.end73, %if.then62
  br label %if.end75

if.end75:                                         ; preds = %if.end74, %if.else51
  br label %if.end76

if.end76:                                         ; preds = %if.end75, %if.end
  br label %if.end77

if.end77:                                         ; preds = %if.end76, %if.then43
  br label %if.end78

if.end78:                                         ; preds = %if.end77, %if.then38
  br label %if.end79

if.end79:                                         ; preds = %if.end78, %if.then34
  br label %if.end80

if.end80:                                         ; preds = %if.end79, %if.then31
  br label %if.end81

if.end81:                                         ; preds = %if.end80, %if.then29
  br label %if.end82

if.end82:                                         ; preds = %if.end81, %if.then23
  br label %if.end83

if.end83:                                         ; preds = %if.end82, %if.then
  %87 = load ptr, ptr %info.addr, align 8
  %88 = load i32, ptr %87, align 4
  %cmp84 = icmp eq i32 %88, 0
  br i1 %cmp84, label %if.then85, label %if.end93

if.then85:                                        ; preds = %if.end83
  %89 = load ptr, ptr %ldz.addr, align 8
  %90 = load i32, ptr %89, align 4
  %cmp86 = icmp slt i32 %90, 1
  br i1 %cmp86, label %if.then91, label %lor.lhs.false87

lor.lhs.false87:                                  ; preds = %if.then85
  %91 = load i32, ptr %wantz, align 4
  %tobool88 = icmp ne i32 %91, 0
  br i1 %tobool88, label %land.lhs.true89, label %if.end92

land.lhs.true89:                                  ; preds = %lor.lhs.false87
  %92 = load ptr, ptr %ldz.addr, align 8
  %93 = load i32, ptr %92, align 4
  %94 = load ptr, ptr %n.addr, align 8
  %95 = load i32, ptr %94, align 4
  %cmp90 = icmp slt i32 %93, %95
  br i1 %cmp90, label %if.then91, label %if.end92

if.then91:                                        ; preds = %land.lhs.true89, %if.then85
  %96 = load ptr, ptr %info.addr, align 8
  store i32 -18, ptr %96, align 4
  br label %if.end92

if.end92:                                         ; preds = %if.then91, %land.lhs.true89, %lor.lhs.false87
  br label %if.end93

if.end93:                                         ; preds = %if.end92, %if.end83
  %97 = load ptr, ptr %info.addr, align 8
  %98 = load i32, ptr %97, align 4
  %cmp94 = icmp ne i32 %98, 0
  br i1 %cmp94, label %if.then95, label %if.end97

if.then95:                                        ; preds = %if.end93
  %99 = load ptr, ptr %info.addr, align 8
  %100 = load i32, ptr %99, align 4
  %sub = sub nsw i32 0, %100
  store i32 %sub, ptr %i__1, align 4
  %call96 = call i32 @xerbla_(ptr noundef @.str.6, ptr noundef %i__1)
  store i32 0, ptr %retval, align 4
  br label %return

if.end97:                                         ; preds = %if.end93
  %101 = load ptr, ptr %m.addr, align 8
  store i32 0, ptr %101, align 4
  %102 = load ptr, ptr %n.addr, align 8
  %103 = load i32, ptr %102, align 4
  %cmp98 = icmp eq i32 %103, 0
  br i1 %cmp98, label %if.then99, label %if.end100

if.then99:                                        ; preds = %if.end97
  store i32 0, ptr %retval, align 4
  br label %return

if.end100:                                        ; preds = %if.end97
  %104 = load ptr, ptr %n.addr, align 8
  %105 = load i32, ptr %104, align 4
  %cmp101 = icmp eq i32 %105, 1
  br i1 %cmp101, label %if.then102, label %if.end130

if.then102:                                       ; preds = %if.end100
  %106 = load ptr, ptr %m.addr, align 8
  store i32 1, ptr %106, align 4
  %107 = load i32, ptr %lower, align 4
  %tobool103 = icmp ne i32 %107, 0
  br i1 %tobool103, label %if.then104, label %if.else106

if.then104:                                       ; preds = %if.then102
  %108 = load ptr, ptr %ab.addr, align 8
  %109 = load i32, ptr %ab_dim1, align 4
  %add105 = add nsw i32 %109, 1
  %idxprom = sext i32 %add105 to i64
  %arrayidx = getelementptr inbounds double, ptr %108, i64 %idxprom
  %110 = load double, ptr %arrayidx, align 8
  store double %110, ptr %tmp1, align 8
  br label %if.end111

if.else106:                                       ; preds = %if.then102
  %111 = load ptr, ptr %ab.addr, align 8
  %112 = load ptr, ptr %kd.addr, align 8
  %113 = load i32, ptr %112, align 4
  %add107 = add nsw i32 %113, 1
  %114 = load i32, ptr %ab_dim1, align 4
  %add108 = add nsw i32 %add107, %114
  %idxprom109 = sext i32 %add108 to i64
  %arrayidx110 = getelementptr inbounds double, ptr %111, i64 %idxprom109
  %115 = load double, ptr %arrayidx110, align 8
  store double %115, ptr %tmp1, align 8
  br label %if.end111

if.end111:                                        ; preds = %if.else106, %if.then104
  %116 = load i32, ptr %valeig, align 4
  %tobool112 = icmp ne i32 %116, 0
  br i1 %tobool112, label %if.then113, label %if.end119

if.then113:                                       ; preds = %if.end111
  %117 = load ptr, ptr %vl.addr, align 8
  %118 = load double, ptr %117, align 8
  %119 = load double, ptr %tmp1, align 8
  %cmp114 = fcmp olt double %118, %119
  br i1 %cmp114, label %land.lhs.true115, label %if.then117

land.lhs.true115:                                 ; preds = %if.then113
  %120 = load ptr, ptr %vu.addr, align 8
  %121 = load double, ptr %120, align 8
  %122 = load double, ptr %tmp1, align 8
  %cmp116 = fcmp oge double %121, %122
  br i1 %cmp116, label %if.end118, label %if.then117

if.then117:                                       ; preds = %land.lhs.true115, %if.then113
  %123 = load ptr, ptr %m.addr, align 8
  store i32 0, ptr %123, align 4
  br label %if.end118

if.end118:                                        ; preds = %if.then117, %land.lhs.true115
  br label %if.end119

if.end119:                                        ; preds = %if.end118, %if.end111
  %124 = load ptr, ptr %m.addr, align 8
  %125 = load i32, ptr %124, align 4
  %cmp120 = icmp eq i32 %125, 1
  br i1 %cmp120, label %if.then121, label %if.end129

if.then121:                                       ; preds = %if.end119
  %126 = load double, ptr %tmp1, align 8
  %127 = load ptr, ptr %w.addr, align 8
  %arrayidx122 = getelementptr inbounds double, ptr %127, i64 1
  store double %126, ptr %arrayidx122, align 8
  %128 = load i32, ptr %wantz, align 4
  %tobool123 = icmp ne i32 %128, 0
  br i1 %tobool123, label %if.then124, label %if.end128

if.then124:                                       ; preds = %if.then121
  %129 = load ptr, ptr %z__.addr, align 8
  %130 = load i32, ptr %z_dim1, align 4
  %add125 = add nsw i32 %130, 1
  %idxprom126 = sext i32 %add125 to i64
  %arrayidx127 = getelementptr inbounds double, ptr %129, i64 %idxprom126
  store double 1.000000e+00, ptr %arrayidx127, align 8
  br label %if.end128

if.end128:                                        ; preds = %if.then124, %if.then121
  br label %if.end129

if.end129:                                        ; preds = %if.end128, %if.end119
  store i32 0, ptr %retval, align 4
  br label %return

if.end130:                                        ; preds = %if.end100
  %call131 = call double @dlamch_(ptr noundef @.str.7)
  store double %call131, ptr %safmin, align 8
  %call132 = call double @dlamch_(ptr noundef @.str.8)
  store double %call132, ptr %eps, align 8
  %131 = load double, ptr %safmin, align 8
  %132 = load double, ptr %eps, align 8
  %div = fdiv double %131, %132
  store double %div, ptr %smlnum, align 8
  %133 = load double, ptr %smlnum, align 8
  %div133 = fdiv double 1.000000e+00, %133
  store double %div133, ptr %bignum, align 8
  %134 = load double, ptr %smlnum, align 8
  %call134 = call double @sqrt(double noundef %134) #3
  store double %call134, ptr %rmin, align 8
  %135 = load double, ptr %bignum, align 8
  %call135 = call double @sqrt(double noundef %135) #3
  store double %call135, ptr %d__1, align 8
  %136 = load double, ptr %safmin, align 8
  %call136 = call double @sqrt(double noundef %136) #3
  %call137 = call double @sqrt(double noundef %call136) #3
  %div138 = fdiv double 1.000000e+00, %call137
  store double %div138, ptr %d__2, align 8
  %137 = load double, ptr %d__1, align 8
  %138 = load double, ptr %d__2, align 8
  %cmp139 = fcmp ole double %137, %138
  br i1 %cmp139, label %cond.true140, label %cond.false141

cond.true140:                                     ; preds = %if.end130
  %139 = load double, ptr %d__1, align 8
  br label %cond.end142

cond.false141:                                    ; preds = %if.end130
  %140 = load double, ptr %d__2, align 8
  br label %cond.end142

cond.end142:                                      ; preds = %cond.false141, %cond.true140
  %cond143 = phi double [ %139, %cond.true140 ], [ %140, %cond.false141 ]
  store double %cond143, ptr %rmax, align 8
  store i32 0, ptr %iscale, align 4
  %141 = load ptr, ptr %abstol.addr, align 8
  %142 = load double, ptr %141, align 8
  store double %142, ptr %abstll, align 8
  %143 = load i32, ptr %valeig, align 4
  %tobool144 = icmp ne i32 %143, 0
  br i1 %tobool144, label %if.then145, label %if.else146

if.then145:                                       ; preds = %cond.end142
  %144 = load ptr, ptr %vl.addr, align 8
  %145 = load double, ptr %144, align 8
  store double %145, ptr %vll, align 8
  %146 = load ptr, ptr %vu.addr, align 8
  %147 = load double, ptr %146, align 8
  store double %147, ptr %vuu, align 8
  br label %if.end147

if.else146:                                       ; preds = %cond.end142
  store double 0.000000e+00, ptr %vll, align 8
  store double 0.000000e+00, ptr %vuu, align 8
  br label %if.end147

if.end147:                                        ; preds = %if.else146, %if.then145
  %148 = load ptr, ptr %uplo.addr, align 8
  %149 = load ptr, ptr %n.addr, align 8
  %150 = load ptr, ptr %kd.addr, align 8
  %151 = load ptr, ptr %ab.addr, align 8
  %152 = load i32, ptr %ab_offset, align 4
  %idxprom148 = sext i32 %152 to i64
  %arrayidx149 = getelementptr inbounds double, ptr %151, i64 %idxprom148
  %153 = load ptr, ptr %ldab.addr, align 8
  %154 = load ptr, ptr %work.addr, align 8
  %arrayidx150 = getelementptr inbounds double, ptr %154, i64 1
  %call151 = call double @dlansb_(ptr noundef @.str.9, ptr noundef %148, ptr noundef %149, ptr noundef %150, ptr noundef %arrayidx149, ptr noundef %153, ptr noundef %arrayidx150)
  store double %call151, ptr %anrm, align 8
  %155 = load double, ptr %anrm, align 8
  %cmp152 = fcmp ogt double %155, 0.000000e+00
  br i1 %cmp152, label %land.lhs.true153, label %if.else157

land.lhs.true153:                                 ; preds = %if.end147
  %156 = load double, ptr %anrm, align 8
  %157 = load double, ptr %rmin, align 8
  %cmp154 = fcmp olt double %156, %157
  br i1 %cmp154, label %if.then155, label %if.else157

if.then155:                                       ; preds = %land.lhs.true153
  store i32 1, ptr %iscale, align 4
  %158 = load double, ptr %rmin, align 8
  %159 = load double, ptr %anrm, align 8
  %div156 = fdiv double %158, %159
  store double %div156, ptr %sigma, align 8
  br label %if.end162

if.else157:                                       ; preds = %land.lhs.true153, %if.end147
  %160 = load double, ptr %anrm, align 8
  %161 = load double, ptr %rmax, align 8
  %cmp158 = fcmp ogt double %160, %161
  br i1 %cmp158, label %if.then159, label %if.end161

if.then159:                                       ; preds = %if.else157
  store i32 1, ptr %iscale, align 4
  %162 = load double, ptr %rmax, align 8
  %163 = load double, ptr %anrm, align 8
  %div160 = fdiv double %162, %163
  store double %div160, ptr %sigma, align 8
  br label %if.end161

if.end161:                                        ; preds = %if.then159, %if.else157
  br label %if.end162

if.end162:                                        ; preds = %if.end161, %if.then155
  %164 = load i32, ptr %iscale, align 4
  %cmp163 = icmp eq i32 %164, 1
  br i1 %cmp163, label %if.then164, label %if.end183

if.then164:                                       ; preds = %if.end162
  %165 = load i32, ptr %lower, align 4
  %tobool165 = icmp ne i32 %165, 0
  br i1 %tobool165, label %if.then166, label %if.else170

if.then166:                                       ; preds = %if.then164
  %166 = load ptr, ptr %kd.addr, align 8
  %167 = load ptr, ptr %kd.addr, align 8
  %168 = load ptr, ptr %n.addr, align 8
  %169 = load ptr, ptr %n.addr, align 8
  %170 = load ptr, ptr %ab.addr, align 8
  %171 = load i32, ptr %ab_offset, align 4
  %idxprom167 = sext i32 %171 to i64
  %arrayidx168 = getelementptr inbounds double, ptr %170, i64 %idxprom167
  %172 = load ptr, ptr %ldab.addr, align 8
  %173 = load ptr, ptr %info.addr, align 8
  %call169 = call i32 @dlascl_(ptr noundef @.str.10, ptr noundef %166, ptr noundef %167, ptr noundef @c_b14, ptr noundef %sigma, ptr noundef %168, ptr noundef %169, ptr noundef %arrayidx168, ptr noundef %172, ptr noundef %173)
  br label %if.end174

if.else170:                                       ; preds = %if.then164
  %174 = load ptr, ptr %kd.addr, align 8
  %175 = load ptr, ptr %kd.addr, align 8
  %176 = load ptr, ptr %n.addr, align 8
  %177 = load ptr, ptr %n.addr, align 8
  %178 = load ptr, ptr %ab.addr, align 8
  %179 = load i32, ptr %ab_offset, align 4
  %idxprom171 = sext i32 %179 to i64
  %arrayidx172 = getelementptr inbounds double, ptr %178, i64 %idxprom171
  %180 = load ptr, ptr %ldab.addr, align 8
  %181 = load ptr, ptr %info.addr, align 8
  %call173 = call i32 @dlascl_(ptr noundef @.str.11, ptr noundef %174, ptr noundef %175, ptr noundef @c_b14, ptr noundef %sigma, ptr noundef %176, ptr noundef %177, ptr noundef %arrayidx172, ptr noundef %180, ptr noundef %181)
  br label %if.end174

if.end174:                                        ; preds = %if.else170, %if.then166
  %182 = load ptr, ptr %abstol.addr, align 8
  %183 = load double, ptr %182, align 8
  %cmp175 = fcmp ogt double %183, 0.000000e+00
  br i1 %cmp175, label %if.then176, label %if.end177

if.then176:                                       ; preds = %if.end174
  %184 = load ptr, ptr %abstol.addr, align 8
  %185 = load double, ptr %184, align 8
  %186 = load double, ptr %sigma, align 8
  %mul = fmul double %185, %186
  store double %mul, ptr %abstll, align 8
  br label %if.end177

if.end177:                                        ; preds = %if.then176, %if.end174
  %187 = load i32, ptr %valeig, align 4
  %tobool178 = icmp ne i32 %187, 0
  br i1 %tobool178, label %if.then179, label %if.end182

if.then179:                                       ; preds = %if.end177
  %188 = load ptr, ptr %vl.addr, align 8
  %189 = load double, ptr %188, align 8
  %190 = load double, ptr %sigma, align 8
  %mul180 = fmul double %189, %190
  store double %mul180, ptr %vll, align 8
  %191 = load ptr, ptr %vu.addr, align 8
  %192 = load double, ptr %191, align 8
  %193 = load double, ptr %sigma, align 8
  %mul181 = fmul double %192, %193
  store double %mul181, ptr %vuu, align 8
  br label %if.end182

if.end182:                                        ; preds = %if.then179, %if.end177
  br label %if.end183

if.end183:                                        ; preds = %if.end182, %if.end162
  store i32 1, ptr %indd, align 4
  %194 = load i32, ptr %indd, align 4
  %195 = load ptr, ptr %n.addr, align 8
  %196 = load i32, ptr %195, align 4
  %add184 = add nsw i32 %194, %196
  store i32 %add184, ptr %inde, align 4
  %197 = load i32, ptr %inde, align 4
  %198 = load ptr, ptr %n.addr, align 8
  %199 = load i32, ptr %198, align 4
  %add185 = add nsw i32 %197, %199
  store i32 %add185, ptr %indwrk, align 4
  %200 = load ptr, ptr %jobz.addr, align 8
  %201 = load ptr, ptr %uplo.addr, align 8
  %202 = load ptr, ptr %n.addr, align 8
  %203 = load ptr, ptr %kd.addr, align 8
  %204 = load ptr, ptr %ab.addr, align 8
  %205 = load i32, ptr %ab_offset, align 4
  %idxprom186 = sext i32 %205 to i64
  %arrayidx187 = getelementptr inbounds double, ptr %204, i64 %idxprom186
  %206 = load ptr, ptr %ldab.addr, align 8
  %207 = load ptr, ptr %work.addr, align 8
  %208 = load i32, ptr %indd, align 4
  %idxprom188 = sext i32 %208 to i64
  %arrayidx189 = getelementptr inbounds double, ptr %207, i64 %idxprom188
  %209 = load ptr, ptr %work.addr, align 8
  %210 = load i32, ptr %inde, align 4
  %idxprom190 = sext i32 %210 to i64
  %arrayidx191 = getelementptr inbounds double, ptr %209, i64 %idxprom190
  %211 = load ptr, ptr %q.addr, align 8
  %212 = load i32, ptr %q_offset, align 4
  %idxprom192 = sext i32 %212 to i64
  %arrayidx193 = getelementptr inbounds double, ptr %211, i64 %idxprom192
  %213 = load ptr, ptr %ldq.addr, align 8
  %214 = load ptr, ptr %work.addr, align 8
  %215 = load i32, ptr %indwrk, align 4
  %idxprom194 = sext i32 %215 to i64
  %arrayidx195 = getelementptr inbounds double, ptr %214, i64 %idxprom194
  %call196 = call i32 @dsbtrd_(ptr noundef %200, ptr noundef %201, ptr noundef %202, ptr noundef %203, ptr noundef %arrayidx187, ptr noundef %206, ptr noundef %arrayidx189, ptr noundef %arrayidx191, ptr noundef %arrayidx193, ptr noundef %213, ptr noundef %arrayidx195, ptr noundef %iinfo)
  store i32 0, ptr %test, align 4
  %216 = load i32, ptr %indeig, align 4
  %tobool197 = icmp ne i32 %216, 0
  br i1 %tobool197, label %if.then198, label %if.end204

if.then198:                                       ; preds = %if.end183
  %217 = load ptr, ptr %il.addr, align 8
  %218 = load i32, ptr %217, align 4
  %cmp199 = icmp eq i32 %218, 1
  br i1 %cmp199, label %land.lhs.true200, label %if.end203

land.lhs.true200:                                 ; preds = %if.then198
  %219 = load ptr, ptr %iu.addr, align 8
  %220 = load i32, ptr %219, align 4
  %221 = load ptr, ptr %n.addr, align 8
  %222 = load i32, ptr %221, align 4
  %cmp201 = icmp eq i32 %220, %222
  br i1 %cmp201, label %if.then202, label %if.end203

if.then202:                                       ; preds = %land.lhs.true200
  store i32 1, ptr %test, align 4
  br label %if.end203

if.end203:                                        ; preds = %if.then202, %land.lhs.true200, %if.then198
  br label %if.end204

if.end204:                                        ; preds = %if.end203, %if.end183
  %223 = load i32, ptr %alleig, align 4
  %tobool205 = icmp ne i32 %223, 0
  br i1 %tobool205, label %land.lhs.true208, label %lor.lhs.false206

lor.lhs.false206:                                 ; preds = %if.end204
  %224 = load i32, ptr %test, align 4
  %tobool207 = icmp ne i32 %224, 0
  br i1 %tobool207, label %land.lhs.true208, label %if.end258

land.lhs.true208:                                 ; preds = %lor.lhs.false206, %if.end204
  %225 = load ptr, ptr %abstol.addr, align 8
  %226 = load double, ptr %225, align 8
  %cmp209 = fcmp ole double %226, 0.000000e+00
  br i1 %cmp209, label %if.then210, label %if.end258

if.then210:                                       ; preds = %land.lhs.true208
  %227 = load ptr, ptr %n.addr, align 8
  %228 = load ptr, ptr %work.addr, align 8
  %229 = load i32, ptr %indd, align 4
  %idxprom211 = sext i32 %229 to i64
  %arrayidx212 = getelementptr inbounds double, ptr %228, i64 %idxprom211
  %230 = load ptr, ptr %w.addr, align 8
  %arrayidx213 = getelementptr inbounds double, ptr %230, i64 1
  %call214 = call i32 @dcopy_(ptr noundef %227, ptr noundef %arrayidx212, ptr noundef @c__1, ptr noundef %arrayidx213, ptr noundef @c__1)
  %231 = load i32, ptr %indwrk, align 4
  %232 = load ptr, ptr %n.addr, align 8
  %233 = load i32, ptr %232, align 4
  %shl = shl i32 %233, 1
  %add215 = add nsw i32 %231, %shl
  store i32 %add215, ptr %indee, align 4
  %234 = load i32, ptr %wantz, align 4
  %tobool216 = icmp ne i32 %234, 0
  br i1 %tobool216, label %if.else228, label %if.then217

if.then217:                                       ; preds = %if.then210
  %235 = load ptr, ptr %n.addr, align 8
  %236 = load i32, ptr %235, align 4
  %sub218 = sub nsw i32 %236, 1
  store i32 %sub218, ptr %i__1, align 4
  %237 = load ptr, ptr %work.addr, align 8
  %238 = load i32, ptr %inde, align 4
  %idxprom219 = sext i32 %238 to i64
  %arrayidx220 = getelementptr inbounds double, ptr %237, i64 %idxprom219
  %239 = load ptr, ptr %work.addr, align 8
  %240 = load i32, ptr %indee, align 4
  %idxprom221 = sext i32 %240 to i64
  %arrayidx222 = getelementptr inbounds double, ptr %239, i64 %idxprom221
  %call223 = call i32 @dcopy_(ptr noundef %i__1, ptr noundef %arrayidx220, ptr noundef @c__1, ptr noundef %arrayidx222, ptr noundef @c__1)
  %241 = load ptr, ptr %n.addr, align 8
  %242 = load ptr, ptr %w.addr, align 8
  %arrayidx224 = getelementptr inbounds double, ptr %242, i64 1
  %243 = load ptr, ptr %work.addr, align 8
  %244 = load i32, ptr %indee, align 4
  %idxprom225 = sext i32 %244 to i64
  %arrayidx226 = getelementptr inbounds double, ptr %243, i64 %idxprom225
  %245 = load ptr, ptr %info.addr, align 8
  %call227 = call i32 @dsterf_(ptr noundef %241, ptr noundef %arrayidx224, ptr noundef %arrayidx226, ptr noundef %245)
  br label %if.end254

if.else228:                                       ; preds = %if.then210
  %246 = load ptr, ptr %n.addr, align 8
  %247 = load ptr, ptr %n.addr, align 8
  %248 = load ptr, ptr %q.addr, align 8
  %249 = load i32, ptr %q_offset, align 4
  %idxprom229 = sext i32 %249 to i64
  %arrayidx230 = getelementptr inbounds double, ptr %248, i64 %idxprom229
  %250 = load ptr, ptr %ldq.addr, align 8
  %251 = load ptr, ptr %z__.addr, align 8
  %252 = load i32, ptr %z_offset, align 4
  %idxprom231 = sext i32 %252 to i64
  %arrayidx232 = getelementptr inbounds double, ptr %251, i64 %idxprom231
  %253 = load ptr, ptr %ldz.addr, align 8
  %call233 = call i32 @dlacpy_(ptr noundef @.str.1, ptr noundef %246, ptr noundef %247, ptr noundef %arrayidx230, ptr noundef %250, ptr noundef %arrayidx232, ptr noundef %253)
  %254 = load ptr, ptr %n.addr, align 8
  %255 = load i32, ptr %254, align 4
  %sub234 = sub nsw i32 %255, 1
  store i32 %sub234, ptr %i__1, align 4
  %256 = load ptr, ptr %work.addr, align 8
  %257 = load i32, ptr %inde, align 4
  %idxprom235 = sext i32 %257 to i64
  %arrayidx236 = getelementptr inbounds double, ptr %256, i64 %idxprom235
  %258 = load ptr, ptr %work.addr, align 8
  %259 = load i32, ptr %indee, align 4
  %idxprom237 = sext i32 %259 to i64
  %arrayidx238 = getelementptr inbounds double, ptr %258, i64 %idxprom237
  %call239 = call i32 @dcopy_(ptr noundef %i__1, ptr noundef %arrayidx236, ptr noundef @c__1, ptr noundef %arrayidx238, ptr noundef @c__1)
  %260 = load ptr, ptr %jobz.addr, align 8
  %261 = load ptr, ptr %n.addr, align 8
  %262 = load ptr, ptr %w.addr, align 8
  %arrayidx240 = getelementptr inbounds double, ptr %262, i64 1
  %263 = load ptr, ptr %work.addr, align 8
  %264 = load i32, ptr %indee, align 4
  %idxprom241 = sext i32 %264 to i64
  %arrayidx242 = getelementptr inbounds double, ptr %263, i64 %idxprom241
  %265 = load ptr, ptr %z__.addr, align 8
  %266 = load i32, ptr %z_offset, align 4
  %idxprom243 = sext i32 %266 to i64
  %arrayidx244 = getelementptr inbounds double, ptr %265, i64 %idxprom243
  %267 = load ptr, ptr %ldz.addr, align 8
  %268 = load ptr, ptr %work.addr, align 8
  %269 = load i32, ptr %indwrk, align 4
  %idxprom245 = sext i32 %269 to i64
  %arrayidx246 = getelementptr inbounds double, ptr %268, i64 %idxprom245
  %270 = load ptr, ptr %info.addr, align 8
  %call247 = call i32 @dsteqr_(ptr noundef %260, ptr noundef %261, ptr noundef %arrayidx240, ptr noundef %arrayidx242, ptr noundef %arrayidx244, ptr noundef %267, ptr noundef %arrayidx246, ptr noundef %270)
  %271 = load ptr, ptr %info.addr, align 8
  %272 = load i32, ptr %271, align 4
  %cmp248 = icmp eq i32 %272, 0
  br i1 %cmp248, label %if.then249, label %if.end253

if.then249:                                       ; preds = %if.else228
  %273 = load ptr, ptr %n.addr, align 8
  %274 = load i32, ptr %273, align 4
  store i32 %274, ptr %i__1, align 4
  store i32 1, ptr %i__, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then249
  %275 = load i32, ptr %i__, align 4
  %276 = load i32, ptr %i__1, align 4
  %cmp250 = icmp sle i32 %275, %276
  br i1 %cmp250, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %277 = load ptr, ptr %ifail.addr, align 8
  %278 = load i32, ptr %i__, align 4
  %idxprom251 = sext i32 %278 to i64
  %arrayidx252 = getelementptr inbounds i32, ptr %277, i64 %idxprom251
  store i32 0, ptr %arrayidx252, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %279 = load i32, ptr %i__, align 4
  %inc = add nsw i32 %279, 1
  store i32 %inc, ptr %i__, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  br label %if.end253

if.end253:                                        ; preds = %for.end, %if.else228
  br label %if.end254

if.end254:                                        ; preds = %if.end253, %if.then217
  %280 = load ptr, ptr %info.addr, align 8
  %281 = load i32, ptr %280, align 4
  %cmp255 = icmp eq i32 %281, 0
  br i1 %cmp255, label %if.then256, label %if.end257

if.then256:                                       ; preds = %if.end254
  %282 = load ptr, ptr %n.addr, align 8
  %283 = load i32, ptr %282, align 4
  %284 = load ptr, ptr %m.addr, align 8
  store i32 %283, ptr %284, align 4
  br label %L30

if.end257:                                        ; preds = %if.end254
  %285 = load ptr, ptr %info.addr, align 8
  store i32 0, ptr %285, align 4
  br label %if.end258

if.end258:                                        ; preds = %if.end257, %land.lhs.true208, %lor.lhs.false206
  %286 = load i32, ptr %wantz, align 4
  %tobool259 = icmp ne i32 %286, 0
  br i1 %tobool259, label %if.then260, label %if.else261

if.then260:                                       ; preds = %if.end258
  %arraydecay = getelementptr inbounds [1 x i8], ptr %order, i64 0, i64 0
  store i8 66, ptr %arraydecay, align 1
  br label %if.end263

if.else261:                                       ; preds = %if.end258
  %arraydecay262 = getelementptr inbounds [1 x i8], ptr %order, i64 0, i64 0
  store i8 69, ptr %arraydecay262, align 1
  br label %if.end263

if.end263:                                        ; preds = %if.else261, %if.then260
  store i32 1, ptr %indibl, align 4
  %287 = load i32, ptr %indibl, align 4
  %288 = load ptr, ptr %n.addr, align 8
  %289 = load i32, ptr %288, align 4
  %add264 = add nsw i32 %287, %289
  store i32 %add264, ptr %indisp, align 4
  %290 = load i32, ptr %indisp, align 4
  %291 = load ptr, ptr %n.addr, align 8
  %292 = load i32, ptr %291, align 4
  %add265 = add nsw i32 %290, %292
  store i32 %add265, ptr %indiwo, align 4
  %293 = load ptr, ptr %range.addr, align 8
  %arraydecay266 = getelementptr inbounds [1 x i8], ptr %order, i64 0, i64 0
  %294 = load ptr, ptr %n.addr, align 8
  %295 = load ptr, ptr %il.addr, align 8
  %296 = load ptr, ptr %iu.addr, align 8
  %297 = load ptr, ptr %work.addr, align 8
  %298 = load i32, ptr %indd, align 4
  %idxprom267 = sext i32 %298 to i64
  %arrayidx268 = getelementptr inbounds double, ptr %297, i64 %idxprom267
  %299 = load ptr, ptr %work.addr, align 8
  %300 = load i32, ptr %inde, align 4
  %idxprom269 = sext i32 %300 to i64
  %arrayidx270 = getelementptr inbounds double, ptr %299, i64 %idxprom269
  %301 = load ptr, ptr %m.addr, align 8
  %302 = load ptr, ptr %w.addr, align 8
  %arrayidx271 = getelementptr inbounds double, ptr %302, i64 1
  %303 = load ptr, ptr %iwork.addr, align 8
  %304 = load i32, ptr %indibl, align 4
  %idxprom272 = sext i32 %304 to i64
  %arrayidx273 = getelementptr inbounds i32, ptr %303, i64 %idxprom272
  %305 = load ptr, ptr %iwork.addr, align 8
  %306 = load i32, ptr %indisp, align 4
  %idxprom274 = sext i32 %306 to i64
  %arrayidx275 = getelementptr inbounds i32, ptr %305, i64 %idxprom274
  %307 = load ptr, ptr %work.addr, align 8
  %308 = load i32, ptr %indwrk, align 4
  %idxprom276 = sext i32 %308 to i64
  %arrayidx277 = getelementptr inbounds double, ptr %307, i64 %idxprom276
  %309 = load ptr, ptr %iwork.addr, align 8
  %310 = load i32, ptr %indiwo, align 4
  %idxprom278 = sext i32 %310 to i64
  %arrayidx279 = getelementptr inbounds i32, ptr %309, i64 %idxprom278
  %311 = load ptr, ptr %info.addr, align 8
  %call280 = call i32 @dstebz_(ptr noundef %293, ptr noundef %arraydecay266, ptr noundef %294, ptr noundef %vll, ptr noundef %vuu, ptr noundef %295, ptr noundef %296, ptr noundef %abstll, ptr noundef %arrayidx268, ptr noundef %arrayidx270, ptr noundef %301, ptr noundef %nsplit, ptr noundef %arrayidx271, ptr noundef %arrayidx273, ptr noundef %arrayidx275, ptr noundef %arrayidx277, ptr noundef %arrayidx279, ptr noundef %311)
  %312 = load i32, ptr %wantz, align 4
  %tobool281 = icmp ne i32 %312, 0
  br i1 %tobool281, label %if.then282, label %if.end320

if.then282:                                       ; preds = %if.end263
  %313 = load ptr, ptr %n.addr, align 8
  %314 = load ptr, ptr %work.addr, align 8
  %315 = load i32, ptr %indd, align 4
  %idxprom283 = sext i32 %315 to i64
  %arrayidx284 = getelementptr inbounds double, ptr %314, i64 %idxprom283
  %316 = load ptr, ptr %work.addr, align 8
  %317 = load i32, ptr %inde, align 4
  %idxprom285 = sext i32 %317 to i64
  %arrayidx286 = getelementptr inbounds double, ptr %316, i64 %idxprom285
  %318 = load ptr, ptr %m.addr, align 8
  %319 = load ptr, ptr %w.addr, align 8
  %arrayidx287 = getelementptr inbounds double, ptr %319, i64 1
  %320 = load ptr, ptr %iwork.addr, align 8
  %321 = load i32, ptr %indibl, align 4
  %idxprom288 = sext i32 %321 to i64
  %arrayidx289 = getelementptr inbounds i32, ptr %320, i64 %idxprom288
  %322 = load ptr, ptr %iwork.addr, align 8
  %323 = load i32, ptr %indisp, align 4
  %idxprom290 = sext i32 %323 to i64
  %arrayidx291 = getelementptr inbounds i32, ptr %322, i64 %idxprom290
  %324 = load ptr, ptr %z__.addr, align 8
  %325 = load i32, ptr %z_offset, align 4
  %idxprom292 = sext i32 %325 to i64
  %arrayidx293 = getelementptr inbounds double, ptr %324, i64 %idxprom292
  %326 = load ptr, ptr %ldz.addr, align 8
  %327 = load ptr, ptr %work.addr, align 8
  %328 = load i32, ptr %indwrk, align 4
  %idxprom294 = sext i32 %328 to i64
  %arrayidx295 = getelementptr inbounds double, ptr %327, i64 %idxprom294
  %329 = load ptr, ptr %iwork.addr, align 8
  %330 = load i32, ptr %indiwo, align 4
  %idxprom296 = sext i32 %330 to i64
  %arrayidx297 = getelementptr inbounds i32, ptr %329, i64 %idxprom296
  %331 = load ptr, ptr %ifail.addr, align 8
  %arrayidx298 = getelementptr inbounds i32, ptr %331, i64 1
  %332 = load ptr, ptr %info.addr, align 8
  %call299 = call i32 @dstein_(ptr noundef %313, ptr noundef %arrayidx284, ptr noundef %arrayidx286, ptr noundef %318, ptr noundef %arrayidx287, ptr noundef %arrayidx289, ptr noundef %arrayidx291, ptr noundef %arrayidx293, ptr noundef %326, ptr noundef %arrayidx295, ptr noundef %arrayidx297, ptr noundef %arrayidx298, ptr noundef %332)
  %333 = load ptr, ptr %m.addr, align 8
  %334 = load i32, ptr %333, align 4
  store i32 %334, ptr %i__1, align 4
  store i32 1, ptr %j, align 4
  br label %for.cond300

for.cond300:                                      ; preds = %for.inc317, %if.then282
  %335 = load i32, ptr %j, align 4
  %336 = load i32, ptr %i__1, align 4
  %cmp301 = icmp sle i32 %335, %336
  br i1 %cmp301, label %for.body302, label %for.end319

for.body302:                                      ; preds = %for.cond300
  %337 = load ptr, ptr %n.addr, align 8
  %338 = load ptr, ptr %z__.addr, align 8
  %339 = load i32, ptr %j, align 4
  %340 = load i32, ptr %z_dim1, align 4
  %mul303 = mul nsw i32 %339, %340
  %add304 = add nsw i32 %mul303, 1
  %idxprom305 = sext i32 %add304 to i64
  %arrayidx306 = getelementptr inbounds double, ptr %338, i64 %idxprom305
  %341 = load ptr, ptr %work.addr, align 8
  %arrayidx307 = getelementptr inbounds double, ptr %341, i64 1
  %call308 = call i32 @dcopy_(ptr noundef %337, ptr noundef %arrayidx306, ptr noundef @c__1, ptr noundef %arrayidx307, ptr noundef @c__1)
  %342 = load ptr, ptr %n.addr, align 8
  %343 = load ptr, ptr %n.addr, align 8
  %344 = load ptr, ptr %q.addr, align 8
  %345 = load i32, ptr %q_offset, align 4
  %idxprom309 = sext i32 %345 to i64
  %arrayidx310 = getelementptr inbounds double, ptr %344, i64 %idxprom309
  %346 = load ptr, ptr %ldq.addr, align 8
  %347 = load ptr, ptr %work.addr, align 8
  %arrayidx311 = getelementptr inbounds double, ptr %347, i64 1
  %348 = load ptr, ptr %z__.addr, align 8
  %349 = load i32, ptr %j, align 4
  %350 = load i32, ptr %z_dim1, align 4
  %mul312 = mul nsw i32 %349, %350
  %add313 = add nsw i32 %mul312, 1
  %idxprom314 = sext i32 %add313 to i64
  %arrayidx315 = getelementptr inbounds double, ptr %348, i64 %idxprom314
  %call316 = call i32 @dgemv_(ptr noundef @.str.4, ptr noundef %342, ptr noundef %343, ptr noundef @c_b14, ptr noundef %arrayidx310, ptr noundef %346, ptr noundef %arrayidx311, ptr noundef @c__1, ptr noundef @c_b34, ptr noundef %arrayidx315, ptr noundef @c__1)
  br label %for.inc317

for.inc317:                                       ; preds = %for.body302
  %351 = load i32, ptr %j, align 4
  %inc318 = add nsw i32 %351, 1
  store i32 %inc318, ptr %j, align 4
  br label %for.cond300, !llvm.loop !7

for.end319:                                       ; preds = %for.cond300
  br label %if.end320

if.end320:                                        ; preds = %for.end319, %if.end263
  br label %L30

L30:                                              ; preds = %if.end320, %if.then256
  %352 = load i32, ptr %iscale, align 4
  %cmp321 = icmp eq i32 %352, 1
  br i1 %cmp321, label %if.then322, label %if.end331

if.then322:                                       ; preds = %L30
  %353 = load ptr, ptr %info.addr, align 8
  %354 = load i32, ptr %353, align 4
  %cmp323 = icmp eq i32 %354, 0
  br i1 %cmp323, label %if.then324, label %if.else325

if.then324:                                       ; preds = %if.then322
  %355 = load ptr, ptr %m.addr, align 8
  %356 = load i32, ptr %355, align 4
  store i32 %356, ptr %imax, align 4
  br label %if.end327

if.else325:                                       ; preds = %if.then322
  %357 = load ptr, ptr %info.addr, align 8
  %358 = load i32, ptr %357, align 4
  %sub326 = sub nsw i32 %358, 1
  store i32 %sub326, ptr %imax, align 4
  br label %if.end327

if.end327:                                        ; preds = %if.else325, %if.then324
  %359 = load double, ptr %sigma, align 8
  %div328 = fdiv double 1.000000e+00, %359
  store double %div328, ptr %d__1, align 8
  %360 = load ptr, ptr %w.addr, align 8
  %arrayidx329 = getelementptr inbounds double, ptr %360, i64 1
  %call330 = call i32 @dscal_(ptr noundef %imax, ptr noundef %d__1, ptr noundef %arrayidx329, ptr noundef @c__1)
  br label %if.end331

if.end331:                                        ; preds = %if.end327, %L30
  %361 = load i32, ptr %wantz, align 4
  %tobool332 = icmp ne i32 %361, 0
  br i1 %tobool332, label %if.then333, label %if.end402

if.then333:                                       ; preds = %if.end331
  %362 = load ptr, ptr %m.addr, align 8
  %363 = load i32, ptr %362, align 4
  %sub334 = sub nsw i32 %363, 1
  store i32 %sub334, ptr %i__1, align 4
  store i32 1, ptr %j, align 4
  br label %for.cond335

for.cond335:                                      ; preds = %for.inc399, %if.then333
  %364 = load i32, ptr %j, align 4
  %365 = load i32, ptr %i__1, align 4
  %cmp336 = icmp sle i32 %364, %365
  br i1 %cmp336, label %for.body337, label %for.end401

for.body337:                                      ; preds = %for.cond335
  store i32 0, ptr %i__, align 4
  %366 = load ptr, ptr %w.addr, align 8
  %367 = load i32, ptr %j, align 4
  %idxprom338 = sext i32 %367 to i64
  %arrayidx339 = getelementptr inbounds double, ptr %366, i64 %idxprom338
  %368 = load double, ptr %arrayidx339, align 8
  store double %368, ptr %tmp1, align 8
  %369 = load ptr, ptr %m.addr, align 8
  %370 = load i32, ptr %369, align 4
  store i32 %370, ptr %i__2, align 4
  %371 = load i32, ptr %j, align 4
  %add340 = add nsw i32 %371, 1
  store i32 %add340, ptr %jj, align 4
  br label %for.cond341

for.cond341:                                      ; preds = %for.inc351, %for.body337
  %372 = load i32, ptr %jj, align 4
  %373 = load i32, ptr %i__2, align 4
  %cmp342 = icmp sle i32 %372, %373
  br i1 %cmp342, label %for.body343, label %for.end353

for.body343:                                      ; preds = %for.cond341
  %374 = load ptr, ptr %w.addr, align 8
  %375 = load i32, ptr %jj, align 4
  %idxprom344 = sext i32 %375 to i64
  %arrayidx345 = getelementptr inbounds double, ptr %374, i64 %idxprom344
  %376 = load double, ptr %arrayidx345, align 8
  %377 = load double, ptr %tmp1, align 8
  %cmp346 = fcmp olt double %376, %377
  br i1 %cmp346, label %if.then347, label %if.end350

if.then347:                                       ; preds = %for.body343
  %378 = load i32, ptr %jj, align 4
  store i32 %378, ptr %i__, align 4
  %379 = load ptr, ptr %w.addr, align 8
  %380 = load i32, ptr %jj, align 4
  %idxprom348 = sext i32 %380 to i64
  %arrayidx349 = getelementptr inbounds double, ptr %379, i64 %idxprom348
  %381 = load double, ptr %arrayidx349, align 8
  store double %381, ptr %tmp1, align 8
  br label %if.end350

if.end350:                                        ; preds = %if.then347, %for.body343
  br label %for.inc351

for.inc351:                                       ; preds = %if.end350
  %382 = load i32, ptr %jj, align 4
  %inc352 = add nsw i32 %382, 1
  store i32 %inc352, ptr %jj, align 4
  br label %for.cond341, !llvm.loop !8

for.end353:                                       ; preds = %for.cond341
  %383 = load i32, ptr %i__, align 4
  %cmp354 = icmp ne i32 %383, 0
  br i1 %cmp354, label %if.then355, label %if.end398

if.then355:                                       ; preds = %for.end353
  %384 = load ptr, ptr %iwork.addr, align 8
  %385 = load i32, ptr %indibl, align 4
  %386 = load i32, ptr %i__, align 4
  %add356 = add nsw i32 %385, %386
  %sub357 = sub nsw i32 %add356, 1
  %idxprom358 = sext i32 %sub357 to i64
  %arrayidx359 = getelementptr inbounds i32, ptr %384, i64 %idxprom358
  %387 = load i32, ptr %arrayidx359, align 4
  store i32 %387, ptr %itmp1, align 4
  %388 = load ptr, ptr %w.addr, align 8
  %389 = load i32, ptr %j, align 4
  %idxprom360 = sext i32 %389 to i64
  %arrayidx361 = getelementptr inbounds double, ptr %388, i64 %idxprom360
  %390 = load double, ptr %arrayidx361, align 8
  %391 = load ptr, ptr %w.addr, align 8
  %392 = load i32, ptr %i__, align 4
  %idxprom362 = sext i32 %392 to i64
  %arrayidx363 = getelementptr inbounds double, ptr %391, i64 %idxprom362
  store double %390, ptr %arrayidx363, align 8
  %393 = load ptr, ptr %iwork.addr, align 8
  %394 = load i32, ptr %indibl, align 4
  %395 = load i32, ptr %j, align 4
  %add364 = add nsw i32 %394, %395
  %sub365 = sub nsw i32 %add364, 1
  %idxprom366 = sext i32 %sub365 to i64
  %arrayidx367 = getelementptr inbounds i32, ptr %393, i64 %idxprom366
  %396 = load i32, ptr %arrayidx367, align 4
  %397 = load ptr, ptr %iwork.addr, align 8
  %398 = load i32, ptr %indibl, align 4
  %399 = load i32, ptr %i__, align 4
  %add368 = add nsw i32 %398, %399
  %sub369 = sub nsw i32 %add368, 1
  %idxprom370 = sext i32 %sub369 to i64
  %arrayidx371 = getelementptr inbounds i32, ptr %397, i64 %idxprom370
  store i32 %396, ptr %arrayidx371, align 4
  %400 = load double, ptr %tmp1, align 8
  %401 = load ptr, ptr %w.addr, align 8
  %402 = load i32, ptr %j, align 4
  %idxprom372 = sext i32 %402 to i64
  %arrayidx373 = getelementptr inbounds double, ptr %401, i64 %idxprom372
  store double %400, ptr %arrayidx373, align 8
  %403 = load i32, ptr %itmp1, align 4
  %404 = load ptr, ptr %iwork.addr, align 8
  %405 = load i32, ptr %indibl, align 4
  %406 = load i32, ptr %j, align 4
  %add374 = add nsw i32 %405, %406
  %sub375 = sub nsw i32 %add374, 1
  %idxprom376 = sext i32 %sub375 to i64
  %arrayidx377 = getelementptr inbounds i32, ptr %404, i64 %idxprom376
  store i32 %403, ptr %arrayidx377, align 4
  %407 = load ptr, ptr %n.addr, align 8
  %408 = load ptr, ptr %z__.addr, align 8
  %409 = load i32, ptr %i__, align 4
  %410 = load i32, ptr %z_dim1, align 4
  %mul378 = mul nsw i32 %409, %410
  %add379 = add nsw i32 %mul378, 1
  %idxprom380 = sext i32 %add379 to i64
  %arrayidx381 = getelementptr inbounds double, ptr %408, i64 %idxprom380
  %411 = load ptr, ptr %z__.addr, align 8
  %412 = load i32, ptr %j, align 4
  %413 = load i32, ptr %z_dim1, align 4
  %mul382 = mul nsw i32 %412, %413
  %add383 = add nsw i32 %mul382, 1
  %idxprom384 = sext i32 %add383 to i64
  %arrayidx385 = getelementptr inbounds double, ptr %411, i64 %idxprom384
  %call386 = call i32 @dswap_(ptr noundef %407, ptr noundef %arrayidx381, ptr noundef @c__1, ptr noundef %arrayidx385, ptr noundef @c__1)
  %414 = load ptr, ptr %info.addr, align 8
  %415 = load i32, ptr %414, align 4
  %cmp387 = icmp ne i32 %415, 0
  br i1 %cmp387, label %if.then388, label %if.end397

if.then388:                                       ; preds = %if.then355
  %416 = load ptr, ptr %ifail.addr, align 8
  %417 = load i32, ptr %i__, align 4
  %idxprom389 = sext i32 %417 to i64
  %arrayidx390 = getelementptr inbounds i32, ptr %416, i64 %idxprom389
  %418 = load i32, ptr %arrayidx390, align 4
  store i32 %418, ptr %itmp1, align 4
  %419 = load ptr, ptr %ifail.addr, align 8
  %420 = load i32, ptr %j, align 4
  %idxprom391 = sext i32 %420 to i64
  %arrayidx392 = getelementptr inbounds i32, ptr %419, i64 %idxprom391
  %421 = load i32, ptr %arrayidx392, align 4
  %422 = load ptr, ptr %ifail.addr, align 8
  %423 = load i32, ptr %i__, align 4
  %idxprom393 = sext i32 %423 to i64
  %arrayidx394 = getelementptr inbounds i32, ptr %422, i64 %idxprom393
  store i32 %421, ptr %arrayidx394, align 4
  %424 = load i32, ptr %itmp1, align 4
  %425 = load ptr, ptr %ifail.addr, align 8
  %426 = load i32, ptr %j, align 4
  %idxprom395 = sext i32 %426 to i64
  %arrayidx396 = getelementptr inbounds i32, ptr %425, i64 %idxprom395
  store i32 %424, ptr %arrayidx396, align 4
  br label %if.end397

if.end397:                                        ; preds = %if.then388, %if.then355
  br label %if.end398

if.end398:                                        ; preds = %if.end397, %for.end353
  br label %for.inc399

for.inc399:                                       ; preds = %if.end398
  %427 = load i32, ptr %j, align 4
  %inc400 = add nsw i32 %427, 1
  store i32 %inc400, ptr %j, align 4
  br label %for.cond335, !llvm.loop !9

for.end401:                                       ; preds = %for.cond335
  br label %if.end402

if.end402:                                        ; preds = %for.end401, %if.end331
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end402, %if.end129, %if.then99, %if.then95
  %428 = load i32, ptr %retval, align 4
  ret i32 %428
}

declare i32 @lsame_(ptr noundef, ptr noundef) #1

declare i32 @xerbla_(ptr noundef, ptr noundef) #1

declare double @dlamch_(ptr noundef) #1

; Function Attrs: nounwind
declare double @sqrt(double noundef) #2

declare double @dlansb_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @dlascl_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @dsbtrd_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @dcopy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @dsterf_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @dlacpy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @dsteqr_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @dstebz_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @dstein_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @dgemv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @dscal_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

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

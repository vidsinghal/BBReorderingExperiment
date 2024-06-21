; ModuleID = 'samples/470.bc'
source_filename = "/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/map/lapack2flamec/f2c/c/zgelsd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.doublecomplex = type { double, double }

@c__9 = internal global i32 9, align 4
@.str = private unnamed_addr constant [7 x i8] c"ZGELSD\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@c__0 = internal global i32 0, align 4
@c__6 = internal global i32 6, align 4
@c_n1 = internal global i32 -1, align 4
@c__1 = internal global i32 1, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"ZGEQRF\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"ZUNMQR\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"LC\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"ZGEBRD\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"ZUNMBR\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"QLC\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"PLN\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"ZGELQF\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"ZUNMLQ\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"M\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"G\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"F\00", align 1
@c_b1 = internal global %struct.doublecomplex zeroinitializer, align 8
@c_b80 = internal global double 0.000000e+00, align 8
@.str.16 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"Q\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"N\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @zgelsd_(ptr noundef %m, ptr noundef %n, ptr noundef %nrhs, ptr noundef %a, ptr noundef %lda, ptr noundef %b, ptr noundef %ldb, ptr noundef %s, ptr noundef %rcond, ptr noundef %rank, ptr noundef %work, ptr noundef %lwork, ptr noundef %rwork, ptr noundef %iwork, ptr noundef %info) #0 {
entry:
  %retval = alloca i32, align 4
  %m.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %nrhs.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %lda.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %ldb.addr = alloca ptr, align 8
  %s.addr = alloca ptr, align 8
  %rcond.addr = alloca ptr, align 8
  %rank.addr = alloca ptr, align 8
  %work.addr = alloca ptr, align 8
  %lwork.addr = alloca ptr, align 8
  %rwork.addr = alloca ptr, align 8
  %iwork.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %a_dim1 = alloca i32, align 4
  %a_offset = alloca i32, align 4
  %b_dim1 = alloca i32, align 4
  %b_offset = alloca i32, align 4
  %i__1 = alloca i32, align 4
  %i__2 = alloca i32, align 4
  %i__3 = alloca i32, align 4
  %i__4 = alloca i32, align 4
  %ie = alloca i32, align 4
  %il = alloca i32, align 4
  %mm = alloca i32, align 4
  %eps = alloca double, align 8
  %anrm = alloca double, align 8
  %bnrm = alloca double, align 8
  %itau = alloca i32, align 4
  %nlvl = alloca i32, align 4
  %iascl = alloca i32, align 4
  %ibscl = alloca i32, align 4
  %sfmin = alloca double, align 8
  %minmn = alloca i32, align 4
  %maxmn = alloca i32, align 4
  %itaup = alloca i32, align 4
  %itauq = alloca i32, align 4
  %mnthr = alloca i32, align 4
  %nwork = alloca i32, align 4
  %bignum = alloca double, align 8
  %ldwork = alloca i32, align 4
  %liwork = alloca i32, align 4
  %minwrk = alloca i32, align 4
  %maxwrk = alloca i32, align 4
  %smlnum = alloca double, align 8
  %lrwork = alloca i32, align 4
  %lquery = alloca i32, align 4
  %nrwork = alloca i32, align 4
  %smlsiz = alloca i32, align 4
  store ptr %m, ptr %m.addr, align 8
  store ptr %n, ptr %n.addr, align 8
  store ptr %nrhs, ptr %nrhs.addr, align 8
  store ptr %a, ptr %a.addr, align 8
  store ptr %lda, ptr %lda.addr, align 8
  store ptr %b, ptr %b.addr, align 8
  store ptr %ldb, ptr %ldb.addr, align 8
  store ptr %s, ptr %s.addr, align 8
  store ptr %rcond, ptr %rcond.addr, align 8
  store ptr %rank, ptr %rank.addr, align 8
  store ptr %work, ptr %work.addr, align 8
  store ptr %lwork, ptr %lwork.addr, align 8
  store ptr %rwork, ptr %rwork.addr, align 8
  store ptr %iwork, ptr %iwork.addr, align 8
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
  %5 = load ptr, ptr %ldb.addr, align 8
  %6 = load i32, ptr %5, align 4
  store i32 %6, ptr %b_dim1, align 4
  %7 = load i32, ptr %b_dim1, align 4
  %add1 = add nsw i32 1, %7
  store i32 %add1, ptr %b_offset, align 4
  %8 = load i32, ptr %b_offset, align 4
  %9 = load ptr, ptr %b.addr, align 8
  %idx.ext2 = sext i32 %8 to i64
  %idx.neg3 = sub i64 0, %idx.ext2
  %add.ptr4 = getelementptr inbounds %struct.doublecomplex, ptr %9, i64 %idx.neg3
  store ptr %add.ptr4, ptr %b.addr, align 8
  %10 = load ptr, ptr %s.addr, align 8
  %incdec.ptr = getelementptr inbounds double, ptr %10, i32 -1
  store ptr %incdec.ptr, ptr %s.addr, align 8
  %11 = load ptr, ptr %work.addr, align 8
  %incdec.ptr5 = getelementptr inbounds %struct.doublecomplex, ptr %11, i32 -1
  store ptr %incdec.ptr5, ptr %work.addr, align 8
  %12 = load ptr, ptr %rwork.addr, align 8
  %incdec.ptr6 = getelementptr inbounds double, ptr %12, i32 -1
  store ptr %incdec.ptr6, ptr %rwork.addr, align 8
  %13 = load ptr, ptr %iwork.addr, align 8
  %incdec.ptr7 = getelementptr inbounds i32, ptr %13, i32 -1
  store ptr %incdec.ptr7, ptr %iwork.addr, align 8
  %14 = load ptr, ptr %info.addr, align 8
  store i32 0, ptr %14, align 4
  %15 = load ptr, ptr %m.addr, align 8
  %16 = load i32, ptr %15, align 4
  %17 = load ptr, ptr %n.addr, align 8
  %18 = load i32, ptr %17, align 4
  %cmp = icmp sle i32 %16, %18
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %19 = load ptr, ptr %m.addr, align 8
  %20 = load i32, ptr %19, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %21 = load ptr, ptr %n.addr, align 8
  %22 = load i32, ptr %21, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %20, %cond.true ], [ %22, %cond.false ]
  store i32 %cond, ptr %minmn, align 4
  %23 = load ptr, ptr %m.addr, align 8
  %24 = load i32, ptr %23, align 4
  %25 = load ptr, ptr %n.addr, align 8
  %26 = load i32, ptr %25, align 4
  %cmp8 = icmp sge i32 %24, %26
  br i1 %cmp8, label %cond.true9, label %cond.false10

cond.true9:                                       ; preds = %cond.end
  %27 = load ptr, ptr %m.addr, align 8
  %28 = load i32, ptr %27, align 4
  br label %cond.end11

cond.false10:                                     ; preds = %cond.end
  %29 = load ptr, ptr %n.addr, align 8
  %30 = load i32, ptr %29, align 4
  br label %cond.end11

cond.end11:                                       ; preds = %cond.false10, %cond.true9
  %cond12 = phi i32 [ %28, %cond.true9 ], [ %30, %cond.false10 ]
  store i32 %cond12, ptr %maxmn, align 4
  %31 = load ptr, ptr %lwork.addr, align 8
  %32 = load i32, ptr %31, align 4
  %cmp13 = icmp eq i32 %32, -1
  %conv = zext i1 %cmp13 to i32
  store i32 %conv, ptr %lquery, align 4
  %33 = load ptr, ptr %m.addr, align 8
  %34 = load i32, ptr %33, align 4
  %cmp14 = icmp slt i32 %34, 0
  br i1 %cmp14, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end11
  %35 = load ptr, ptr %info.addr, align 8
  store i32 -1, ptr %35, align 4
  br label %if.end46

if.else:                                          ; preds = %cond.end11
  %36 = load ptr, ptr %n.addr, align 8
  %37 = load i32, ptr %36, align 4
  %cmp16 = icmp slt i32 %37, 0
  br i1 %cmp16, label %if.then18, label %if.else19

if.then18:                                        ; preds = %if.else
  %38 = load ptr, ptr %info.addr, align 8
  store i32 -2, ptr %38, align 4
  br label %if.end45

if.else19:                                        ; preds = %if.else
  %39 = load ptr, ptr %nrhs.addr, align 8
  %40 = load i32, ptr %39, align 4
  %cmp20 = icmp slt i32 %40, 0
  br i1 %cmp20, label %if.then22, label %if.else23

if.then22:                                        ; preds = %if.else19
  %41 = load ptr, ptr %info.addr, align 8
  store i32 -3, ptr %41, align 4
  br label %if.end44

if.else23:                                        ; preds = %if.else19
  %42 = load ptr, ptr %lda.addr, align 8
  %43 = load i32, ptr %42, align 4
  %44 = load ptr, ptr %m.addr, align 8
  %45 = load i32, ptr %44, align 4
  %cmp24 = icmp sge i32 1, %45
  br i1 %cmp24, label %cond.true26, label %cond.false27

cond.true26:                                      ; preds = %if.else23
  br label %cond.end28

cond.false27:                                     ; preds = %if.else23
  %46 = load ptr, ptr %m.addr, align 8
  %47 = load i32, ptr %46, align 4
  br label %cond.end28

cond.end28:                                       ; preds = %cond.false27, %cond.true26
  %cond29 = phi i32 [ 1, %cond.true26 ], [ %47, %cond.false27 ]
  %cmp30 = icmp slt i32 %43, %cond29
  br i1 %cmp30, label %if.then32, label %if.else33

if.then32:                                        ; preds = %cond.end28
  %48 = load ptr, ptr %info.addr, align 8
  store i32 -5, ptr %48, align 4
  br label %if.end43

if.else33:                                        ; preds = %cond.end28
  %49 = load ptr, ptr %ldb.addr, align 8
  %50 = load i32, ptr %49, align 4
  %51 = load i32, ptr %maxmn, align 4
  %cmp34 = icmp sge i32 1, %51
  br i1 %cmp34, label %cond.true36, label %cond.false37

cond.true36:                                      ; preds = %if.else33
  br label %cond.end38

cond.false37:                                     ; preds = %if.else33
  %52 = load i32, ptr %maxmn, align 4
  br label %cond.end38

cond.end38:                                       ; preds = %cond.false37, %cond.true36
  %cond39 = phi i32 [ 1, %cond.true36 ], [ %52, %cond.false37 ]
  %cmp40 = icmp slt i32 %50, %cond39
  br i1 %cmp40, label %if.then42, label %if.end

if.then42:                                        ; preds = %cond.end38
  %53 = load ptr, ptr %info.addr, align 8
  store i32 -7, ptr %53, align 4
  br label %if.end

if.end:                                           ; preds = %if.then42, %cond.end38
  br label %if.end43

if.end43:                                         ; preds = %if.end, %if.then32
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %if.then22
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %if.then18
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %if.then
  %54 = load ptr, ptr %info.addr, align 8
  %55 = load i32, ptr %54, align 4
  %cmp47 = icmp eq i32 %55, 0
  br i1 %cmp47, label %if.then49, label %if.end372

if.then49:                                        ; preds = %if.end46
  store i32 1, ptr %minwrk, align 4
  store i32 1, ptr %maxwrk, align 4
  store i32 1, ptr %liwork, align 4
  store i32 1, ptr %lrwork, align 4
  %56 = load i32, ptr %minmn, align 4
  %cmp50 = icmp sgt i32 %56, 0
  br i1 %cmp50, label %if.then52, label %if.end355

if.then52:                                        ; preds = %if.then49
  %call = call i32 @ilaenv_(ptr noundef @c__9, ptr noundef @.str, ptr noundef @.str.1, ptr noundef @c__0, ptr noundef @c__0, ptr noundef @c__0, ptr noundef @c__0)
  store i32 %call, ptr %smlsiz, align 4
  %57 = load ptr, ptr %m.addr, align 8
  %58 = load ptr, ptr %n.addr, align 8
  %59 = load ptr, ptr %nrhs.addr, align 8
  %call53 = call i32 @ilaenv_(ptr noundef @c__6, ptr noundef @.str, ptr noundef @.str.1, ptr noundef %57, ptr noundef %58, ptr noundef %59, ptr noundef @c_n1)
  store i32 %call53, ptr %mnthr, align 4
  %60 = load i32, ptr %minmn, align 4
  %conv54 = sitofp i32 %60 to double
  %61 = load i32, ptr %smlsiz, align 4
  %add55 = add nsw i32 %61, 1
  %conv56 = sitofp i32 %add55 to double
  %div = fdiv double %conv54, %conv56
  %call57 = call double @log(double noundef %div) #3
  %call58 = call double @log(double noundef 2.000000e+00) #3
  %div59 = fdiv double %call57, %call58
  %conv60 = fptosi double %div59 to i32
  %add61 = add nsw i32 %conv60, 1
  store i32 %add61, ptr %i__1, align 4
  %62 = load i32, ptr %i__1, align 4
  %cmp62 = icmp sge i32 %62, 0
  br i1 %cmp62, label %cond.true64, label %cond.false65

cond.true64:                                      ; preds = %if.then52
  %63 = load i32, ptr %i__1, align 4
  br label %cond.end66

cond.false65:                                     ; preds = %if.then52
  br label %cond.end66

cond.end66:                                       ; preds = %cond.false65, %cond.true64
  %cond67 = phi i32 [ %63, %cond.true64 ], [ 0, %cond.false65 ]
  store i32 %cond67, ptr %nlvl, align 4
  %64 = load i32, ptr %minmn, align 4
  %mul = mul nsw i32 %64, 3
  %65 = load i32, ptr %nlvl, align 4
  %mul68 = mul nsw i32 %mul, %65
  %66 = load i32, ptr %minmn, align 4
  %mul69 = mul nsw i32 %66, 11
  %add70 = add nsw i32 %mul68, %mul69
  store i32 %add70, ptr %liwork, align 4
  %67 = load ptr, ptr %m.addr, align 8
  %68 = load i32, ptr %67, align 4
  store i32 %68, ptr %mm, align 4
  %69 = load ptr, ptr %m.addr, align 8
  %70 = load i32, ptr %69, align 4
  %71 = load ptr, ptr %n.addr, align 8
  %72 = load i32, ptr %71, align 4
  %cmp71 = icmp sge i32 %70, %72
  br i1 %cmp71, label %land.lhs.true, label %if.end92

land.lhs.true:                                    ; preds = %cond.end66
  %73 = load ptr, ptr %m.addr, align 8
  %74 = load i32, ptr %73, align 4
  %75 = load i32, ptr %mnthr, align 4
  %cmp73 = icmp sge i32 %74, %75
  br i1 %cmp73, label %if.then75, label %if.end92

if.then75:                                        ; preds = %land.lhs.true
  %76 = load ptr, ptr %n.addr, align 8
  %77 = load i32, ptr %76, align 4
  store i32 %77, ptr %mm, align 4
  %78 = load i32, ptr %maxwrk, align 4
  store i32 %78, ptr %i__1, align 4
  %79 = load ptr, ptr %n.addr, align 8
  %80 = load i32, ptr %79, align 4
  %81 = load ptr, ptr %m.addr, align 8
  %82 = load ptr, ptr %n.addr, align 8
  %call76 = call i32 @ilaenv_(ptr noundef @c__1, ptr noundef @.str.2, ptr noundef @.str.1, ptr noundef %81, ptr noundef %82, ptr noundef @c_n1, ptr noundef @c_n1)
  %mul77 = mul nsw i32 %80, %call76
  store i32 %mul77, ptr %i__2, align 4
  %83 = load i32, ptr %i__1, align 4
  %84 = load i32, ptr %i__2, align 4
  %cmp78 = icmp sge i32 %83, %84
  br i1 %cmp78, label %cond.true80, label %cond.false81

cond.true80:                                      ; preds = %if.then75
  %85 = load i32, ptr %i__1, align 4
  br label %cond.end82

cond.false81:                                     ; preds = %if.then75
  %86 = load i32, ptr %i__2, align 4
  br label %cond.end82

cond.end82:                                       ; preds = %cond.false81, %cond.true80
  %cond83 = phi i32 [ %85, %cond.true80 ], [ %86, %cond.false81 ]
  store i32 %cond83, ptr %maxwrk, align 4
  %87 = load i32, ptr %maxwrk, align 4
  store i32 %87, ptr %i__1, align 4
  %88 = load ptr, ptr %nrhs.addr, align 8
  %89 = load i32, ptr %88, align 4
  %90 = load ptr, ptr %m.addr, align 8
  %91 = load ptr, ptr %nrhs.addr, align 8
  %92 = load ptr, ptr %n.addr, align 8
  %call84 = call i32 @ilaenv_(ptr noundef @c__1, ptr noundef @.str.3, ptr noundef @.str.4, ptr noundef %90, ptr noundef %91, ptr noundef %92, ptr noundef @c_n1)
  %mul85 = mul nsw i32 %89, %call84
  store i32 %mul85, ptr %i__2, align 4
  %93 = load i32, ptr %i__1, align 4
  %94 = load i32, ptr %i__2, align 4
  %cmp86 = icmp sge i32 %93, %94
  br i1 %cmp86, label %cond.true88, label %cond.false89

cond.true88:                                      ; preds = %cond.end82
  %95 = load i32, ptr %i__1, align 4
  br label %cond.end90

cond.false89:                                     ; preds = %cond.end82
  %96 = load i32, ptr %i__2, align 4
  br label %cond.end90

cond.end90:                                       ; preds = %cond.false89, %cond.true88
  %cond91 = phi i32 [ %95, %cond.true88 ], [ %96, %cond.false89 ]
  store i32 %cond91, ptr %maxwrk, align 4
  br label %if.end92

if.end92:                                         ; preds = %cond.end90, %land.lhs.true, %cond.end66
  %97 = load ptr, ptr %m.addr, align 8
  %98 = load i32, ptr %97, align 4
  %99 = load ptr, ptr %n.addr, align 8
  %100 = load i32, ptr %99, align 4
  %cmp93 = icmp sge i32 %98, %100
  br i1 %cmp93, label %if.then95, label %if.end169

if.then95:                                        ; preds = %if.end92
  %101 = load i32, ptr %smlsiz, align 4
  %add96 = add nsw i32 %101, 1
  store i32 %add96, ptr %i__3, align 4
  %102 = load i32, ptr %i__3, align 4
  %103 = load i32, ptr %i__3, align 4
  %mul97 = mul nsw i32 %102, %103
  store i32 %mul97, ptr %i__1, align 4
  %104 = load ptr, ptr %n.addr, align 8
  %105 = load i32, ptr %104, align 4
  %106 = load ptr, ptr %nrhs.addr, align 8
  %107 = load i32, ptr %106, align 4
  %add98 = add nsw i32 %107, 1
  %mul99 = mul nsw i32 %105, %add98
  %108 = load ptr, ptr %nrhs.addr, align 8
  %109 = load i32, ptr %108, align 4
  %shl = shl i32 %109, 1
  %add100 = add nsw i32 %mul99, %shl
  store i32 %add100, ptr %i__2, align 4
  %110 = load ptr, ptr %n.addr, align 8
  %111 = load i32, ptr %110, align 4
  %mul101 = mul nsw i32 %111, 10
  %112 = load ptr, ptr %n.addr, align 8
  %113 = load i32, ptr %112, align 4
  %shl102 = shl i32 %113, 1
  %114 = load i32, ptr %smlsiz, align 4
  %mul103 = mul nsw i32 %shl102, %114
  %add104 = add nsw i32 %mul101, %mul103
  %115 = load ptr, ptr %n.addr, align 8
  %116 = load i32, ptr %115, align 4
  %shl105 = shl i32 %116, 3
  %117 = load i32, ptr %nlvl, align 4
  %mul106 = mul nsw i32 %shl105, %117
  %add107 = add nsw i32 %add104, %mul106
  %118 = load i32, ptr %smlsiz, align 4
  %mul108 = mul nsw i32 %118, 3
  %119 = load ptr, ptr %nrhs.addr, align 8
  %120 = load i32, ptr %119, align 4
  %mul109 = mul nsw i32 %mul108, %120
  %add110 = add nsw i32 %add107, %mul109
  %121 = load i32, ptr %i__1, align 4
  %122 = load i32, ptr %i__2, align 4
  %cmp111 = icmp sge i32 %121, %122
  br i1 %cmp111, label %cond.true113, label %cond.false114

cond.true113:                                     ; preds = %if.then95
  %123 = load i32, ptr %i__1, align 4
  br label %cond.end115

cond.false114:                                    ; preds = %if.then95
  %124 = load i32, ptr %i__2, align 4
  br label %cond.end115

cond.end115:                                      ; preds = %cond.false114, %cond.true113
  %cond116 = phi i32 [ %123, %cond.true113 ], [ %124, %cond.false114 ]
  %add117 = add nsw i32 %add110, %cond116
  store i32 %add117, ptr %lrwork, align 4
  %125 = load i32, ptr %maxwrk, align 4
  store i32 %125, ptr %i__1, align 4
  %126 = load ptr, ptr %n.addr, align 8
  %127 = load i32, ptr %126, align 4
  %shl118 = shl i32 %127, 1
  %128 = load i32, ptr %mm, align 4
  %129 = load ptr, ptr %n.addr, align 8
  %130 = load i32, ptr %129, align 4
  %add119 = add nsw i32 %128, %130
  %131 = load ptr, ptr %n.addr, align 8
  %call120 = call i32 @ilaenv_(ptr noundef @c__1, ptr noundef @.str.5, ptr noundef @.str.1, ptr noundef %mm, ptr noundef %131, ptr noundef @c_n1, ptr noundef @c_n1)
  %mul121 = mul nsw i32 %add119, %call120
  %add122 = add nsw i32 %shl118, %mul121
  store i32 %add122, ptr %i__2, align 4
  %132 = load i32, ptr %i__1, align 4
  %133 = load i32, ptr %i__2, align 4
  %cmp123 = icmp sge i32 %132, %133
  br i1 %cmp123, label %cond.true125, label %cond.false126

cond.true125:                                     ; preds = %cond.end115
  %134 = load i32, ptr %i__1, align 4
  br label %cond.end127

cond.false126:                                    ; preds = %cond.end115
  %135 = load i32, ptr %i__2, align 4
  br label %cond.end127

cond.end127:                                      ; preds = %cond.false126, %cond.true125
  %cond128 = phi i32 [ %134, %cond.true125 ], [ %135, %cond.false126 ]
  store i32 %cond128, ptr %maxwrk, align 4
  %136 = load i32, ptr %maxwrk, align 4
  store i32 %136, ptr %i__1, align 4
  %137 = load ptr, ptr %n.addr, align 8
  %138 = load i32, ptr %137, align 4
  %shl129 = shl i32 %138, 1
  %139 = load ptr, ptr %nrhs.addr, align 8
  %140 = load i32, ptr %139, align 4
  %141 = load ptr, ptr %nrhs.addr, align 8
  %142 = load ptr, ptr %n.addr, align 8
  %call130 = call i32 @ilaenv_(ptr noundef @c__1, ptr noundef @.str.6, ptr noundef @.str.7, ptr noundef %mm, ptr noundef %141, ptr noundef %142, ptr noundef @c_n1)
  %mul131 = mul nsw i32 %140, %call130
  %add132 = add nsw i32 %shl129, %mul131
  store i32 %add132, ptr %i__2, align 4
  %143 = load i32, ptr %i__1, align 4
  %144 = load i32, ptr %i__2, align 4
  %cmp133 = icmp sge i32 %143, %144
  br i1 %cmp133, label %cond.true135, label %cond.false136

cond.true135:                                     ; preds = %cond.end127
  %145 = load i32, ptr %i__1, align 4
  br label %cond.end137

cond.false136:                                    ; preds = %cond.end127
  %146 = load i32, ptr %i__2, align 4
  br label %cond.end137

cond.end137:                                      ; preds = %cond.false136, %cond.true135
  %cond138 = phi i32 [ %145, %cond.true135 ], [ %146, %cond.false136 ]
  store i32 %cond138, ptr %maxwrk, align 4
  %147 = load i32, ptr %maxwrk, align 4
  store i32 %147, ptr %i__1, align 4
  %148 = load ptr, ptr %n.addr, align 8
  %149 = load i32, ptr %148, align 4
  %shl139 = shl i32 %149, 1
  %150 = load ptr, ptr %n.addr, align 8
  %151 = load i32, ptr %150, align 4
  %sub = sub nsw i32 %151, 1
  %152 = load ptr, ptr %n.addr, align 8
  %153 = load ptr, ptr %nrhs.addr, align 8
  %154 = load ptr, ptr %n.addr, align 8
  %call140 = call i32 @ilaenv_(ptr noundef @c__1, ptr noundef @.str.6, ptr noundef @.str.8, ptr noundef %152, ptr noundef %153, ptr noundef %154, ptr noundef @c_n1)
  %mul141 = mul nsw i32 %sub, %call140
  %add142 = add nsw i32 %shl139, %mul141
  store i32 %add142, ptr %i__2, align 4
  %155 = load i32, ptr %i__1, align 4
  %156 = load i32, ptr %i__2, align 4
  %cmp143 = icmp sge i32 %155, %156
  br i1 %cmp143, label %cond.true145, label %cond.false146

cond.true145:                                     ; preds = %cond.end137
  %157 = load i32, ptr %i__1, align 4
  br label %cond.end147

cond.false146:                                    ; preds = %cond.end137
  %158 = load i32, ptr %i__2, align 4
  br label %cond.end147

cond.end147:                                      ; preds = %cond.false146, %cond.true145
  %cond148 = phi i32 [ %157, %cond.true145 ], [ %158, %cond.false146 ]
  store i32 %cond148, ptr %maxwrk, align 4
  %159 = load i32, ptr %maxwrk, align 4
  store i32 %159, ptr %i__1, align 4
  %160 = load ptr, ptr %n.addr, align 8
  %161 = load i32, ptr %160, align 4
  %shl149 = shl i32 %161, 1
  %162 = load ptr, ptr %n.addr, align 8
  %163 = load i32, ptr %162, align 4
  %164 = load ptr, ptr %nrhs.addr, align 8
  %165 = load i32, ptr %164, align 4
  %mul150 = mul nsw i32 %163, %165
  %add151 = add nsw i32 %shl149, %mul150
  store i32 %add151, ptr %i__2, align 4
  %166 = load i32, ptr %i__1, align 4
  %167 = load i32, ptr %i__2, align 4
  %cmp152 = icmp sge i32 %166, %167
  br i1 %cmp152, label %cond.true154, label %cond.false155

cond.true154:                                     ; preds = %cond.end147
  %168 = load i32, ptr %i__1, align 4
  br label %cond.end156

cond.false155:                                    ; preds = %cond.end147
  %169 = load i32, ptr %i__2, align 4
  br label %cond.end156

cond.end156:                                      ; preds = %cond.false155, %cond.true154
  %cond157 = phi i32 [ %168, %cond.true154 ], [ %169, %cond.false155 ]
  store i32 %cond157, ptr %maxwrk, align 4
  %170 = load ptr, ptr %n.addr, align 8
  %171 = load i32, ptr %170, align 4
  %shl158 = shl i32 %171, 1
  %172 = load i32, ptr %mm, align 4
  %add159 = add nsw i32 %shl158, %172
  store i32 %add159, ptr %i__1, align 4
  %173 = load ptr, ptr %n.addr, align 8
  %174 = load i32, ptr %173, align 4
  %shl160 = shl i32 %174, 1
  %175 = load ptr, ptr %n.addr, align 8
  %176 = load i32, ptr %175, align 4
  %177 = load ptr, ptr %nrhs.addr, align 8
  %178 = load i32, ptr %177, align 4
  %mul161 = mul nsw i32 %176, %178
  %add162 = add nsw i32 %shl160, %mul161
  store i32 %add162, ptr %i__2, align 4
  %179 = load i32, ptr %i__1, align 4
  %180 = load i32, ptr %i__2, align 4
  %cmp163 = icmp sge i32 %179, %180
  br i1 %cmp163, label %cond.true165, label %cond.false166

cond.true165:                                     ; preds = %cond.end156
  %181 = load i32, ptr %i__1, align 4
  br label %cond.end167

cond.false166:                                    ; preds = %cond.end156
  %182 = load i32, ptr %i__2, align 4
  br label %cond.end167

cond.end167:                                      ; preds = %cond.false166, %cond.true165
  %cond168 = phi i32 [ %181, %cond.true165 ], [ %182, %cond.false166 ]
  store i32 %cond168, ptr %minwrk, align 4
  br label %if.end169

if.end169:                                        ; preds = %cond.end167, %if.end92
  %183 = load ptr, ptr %n.addr, align 8
  %184 = load i32, ptr %183, align 4
  %185 = load ptr, ptr %m.addr, align 8
  %186 = load i32, ptr %185, align 4
  %cmp170 = icmp sgt i32 %184, %186
  br i1 %cmp170, label %if.then172, label %if.end354

if.then172:                                       ; preds = %if.end169
  %187 = load i32, ptr %smlsiz, align 4
  %add173 = add nsw i32 %187, 1
  store i32 %add173, ptr %i__3, align 4
  %188 = load i32, ptr %i__3, align 4
  %189 = load i32, ptr %i__3, align 4
  %mul174 = mul nsw i32 %188, %189
  store i32 %mul174, ptr %i__1, align 4
  %190 = load ptr, ptr %n.addr, align 8
  %191 = load i32, ptr %190, align 4
  %192 = load ptr, ptr %nrhs.addr, align 8
  %193 = load i32, ptr %192, align 4
  %add175 = add nsw i32 %193, 1
  %mul176 = mul nsw i32 %191, %add175
  %194 = load ptr, ptr %nrhs.addr, align 8
  %195 = load i32, ptr %194, align 4
  %shl177 = shl i32 %195, 1
  %add178 = add nsw i32 %mul176, %shl177
  store i32 %add178, ptr %i__2, align 4
  %196 = load ptr, ptr %m.addr, align 8
  %197 = load i32, ptr %196, align 4
  %mul179 = mul nsw i32 %197, 10
  %198 = load ptr, ptr %m.addr, align 8
  %199 = load i32, ptr %198, align 4
  %shl180 = shl i32 %199, 1
  %200 = load i32, ptr %smlsiz, align 4
  %mul181 = mul nsw i32 %shl180, %200
  %add182 = add nsw i32 %mul179, %mul181
  %201 = load ptr, ptr %m.addr, align 8
  %202 = load i32, ptr %201, align 4
  %shl183 = shl i32 %202, 3
  %203 = load i32, ptr %nlvl, align 4
  %mul184 = mul nsw i32 %shl183, %203
  %add185 = add nsw i32 %add182, %mul184
  %204 = load i32, ptr %smlsiz, align 4
  %mul186 = mul nsw i32 %204, 3
  %205 = load ptr, ptr %nrhs.addr, align 8
  %206 = load i32, ptr %205, align 4
  %mul187 = mul nsw i32 %mul186, %206
  %add188 = add nsw i32 %add185, %mul187
  %207 = load i32, ptr %i__1, align 4
  %208 = load i32, ptr %i__2, align 4
  %cmp189 = icmp sge i32 %207, %208
  br i1 %cmp189, label %cond.true191, label %cond.false192

cond.true191:                                     ; preds = %if.then172
  %209 = load i32, ptr %i__1, align 4
  br label %cond.end193

cond.false192:                                    ; preds = %if.then172
  %210 = load i32, ptr %i__2, align 4
  br label %cond.end193

cond.end193:                                      ; preds = %cond.false192, %cond.true191
  %cond194 = phi i32 [ %209, %cond.true191 ], [ %210, %cond.false192 ]
  %add195 = add nsw i32 %add188, %cond194
  store i32 %add195, ptr %lrwork, align 4
  %211 = load ptr, ptr %n.addr, align 8
  %212 = load i32, ptr %211, align 4
  %213 = load i32, ptr %mnthr, align 4
  %cmp196 = icmp sge i32 %212, %213
  br i1 %cmp196, label %if.then198, label %if.else307

if.then198:                                       ; preds = %cond.end193
  %214 = load ptr, ptr %m.addr, align 8
  %215 = load i32, ptr %214, align 4
  %216 = load ptr, ptr %m.addr, align 8
  %217 = load i32, ptr %216, align 4
  %218 = load ptr, ptr %m.addr, align 8
  %219 = load ptr, ptr %n.addr, align 8
  %call199 = call i32 @ilaenv_(ptr noundef @c__1, ptr noundef @.str.9, ptr noundef @.str.1, ptr noundef %218, ptr noundef %219, ptr noundef @c_n1, ptr noundef @c_n1)
  %mul200 = mul nsw i32 %217, %call199
  %add201 = add nsw i32 %215, %mul200
  store i32 %add201, ptr %maxwrk, align 4
  %220 = load i32, ptr %maxwrk, align 4
  store i32 %220, ptr %i__1, align 4
  %221 = load ptr, ptr %m.addr, align 8
  %222 = load i32, ptr %221, align 4
  %223 = load ptr, ptr %m.addr, align 8
  %224 = load i32, ptr %223, align 4
  %mul202 = mul nsw i32 %222, %224
  %225 = load ptr, ptr %m.addr, align 8
  %226 = load i32, ptr %225, align 4
  %shl203 = shl i32 %226, 2
  %add204 = add nsw i32 %mul202, %shl203
  %227 = load ptr, ptr %m.addr, align 8
  %228 = load i32, ptr %227, align 4
  %shl205 = shl i32 %228, 1
  %229 = load ptr, ptr %m.addr, align 8
  %230 = load ptr, ptr %m.addr, align 8
  %call206 = call i32 @ilaenv_(ptr noundef @c__1, ptr noundef @.str.5, ptr noundef @.str.1, ptr noundef %229, ptr noundef %230, ptr noundef @c_n1, ptr noundef @c_n1)
  %mul207 = mul nsw i32 %shl205, %call206
  %add208 = add nsw i32 %add204, %mul207
  store i32 %add208, ptr %i__2, align 4
  %231 = load i32, ptr %i__1, align 4
  %232 = load i32, ptr %i__2, align 4
  %cmp209 = icmp sge i32 %231, %232
  br i1 %cmp209, label %cond.true211, label %cond.false212

cond.true211:                                     ; preds = %if.then198
  %233 = load i32, ptr %i__1, align 4
  br label %cond.end213

cond.false212:                                    ; preds = %if.then198
  %234 = load i32, ptr %i__2, align 4
  br label %cond.end213

cond.end213:                                      ; preds = %cond.false212, %cond.true211
  %cond214 = phi i32 [ %233, %cond.true211 ], [ %234, %cond.false212 ]
  store i32 %cond214, ptr %maxwrk, align 4
  %235 = load i32, ptr %maxwrk, align 4
  store i32 %235, ptr %i__1, align 4
  %236 = load ptr, ptr %m.addr, align 8
  %237 = load i32, ptr %236, align 4
  %238 = load ptr, ptr %m.addr, align 8
  %239 = load i32, ptr %238, align 4
  %mul215 = mul nsw i32 %237, %239
  %240 = load ptr, ptr %m.addr, align 8
  %241 = load i32, ptr %240, align 4
  %shl216 = shl i32 %241, 2
  %add217 = add nsw i32 %mul215, %shl216
  %242 = load ptr, ptr %nrhs.addr, align 8
  %243 = load i32, ptr %242, align 4
  %244 = load ptr, ptr %m.addr, align 8
  %245 = load ptr, ptr %nrhs.addr, align 8
  %246 = load ptr, ptr %m.addr, align 8
  %call218 = call i32 @ilaenv_(ptr noundef @c__1, ptr noundef @.str.6, ptr noundef @.str.7, ptr noundef %244, ptr noundef %245, ptr noundef %246, ptr noundef @c_n1)
  %mul219 = mul nsw i32 %243, %call218
  %add220 = add nsw i32 %add217, %mul219
  store i32 %add220, ptr %i__2, align 4
  %247 = load i32, ptr %i__1, align 4
  %248 = load i32, ptr %i__2, align 4
  %cmp221 = icmp sge i32 %247, %248
  br i1 %cmp221, label %cond.true223, label %cond.false224

cond.true223:                                     ; preds = %cond.end213
  %249 = load i32, ptr %i__1, align 4
  br label %cond.end225

cond.false224:                                    ; preds = %cond.end213
  %250 = load i32, ptr %i__2, align 4
  br label %cond.end225

cond.end225:                                      ; preds = %cond.false224, %cond.true223
  %cond226 = phi i32 [ %249, %cond.true223 ], [ %250, %cond.false224 ]
  store i32 %cond226, ptr %maxwrk, align 4
  %251 = load i32, ptr %maxwrk, align 4
  store i32 %251, ptr %i__1, align 4
  %252 = load ptr, ptr %m.addr, align 8
  %253 = load i32, ptr %252, align 4
  %254 = load ptr, ptr %m.addr, align 8
  %255 = load i32, ptr %254, align 4
  %mul227 = mul nsw i32 %253, %255
  %256 = load ptr, ptr %m.addr, align 8
  %257 = load i32, ptr %256, align 4
  %shl228 = shl i32 %257, 2
  %add229 = add nsw i32 %mul227, %shl228
  %258 = load ptr, ptr %m.addr, align 8
  %259 = load i32, ptr %258, align 4
  %sub230 = sub nsw i32 %259, 1
  %260 = load ptr, ptr %n.addr, align 8
  %261 = load ptr, ptr %nrhs.addr, align 8
  %262 = load ptr, ptr %m.addr, align 8
  %call231 = call i32 @ilaenv_(ptr noundef @c__1, ptr noundef @.str.10, ptr noundef @.str.4, ptr noundef %260, ptr noundef %261, ptr noundef %262, ptr noundef @c_n1)
  %mul232 = mul nsw i32 %sub230, %call231
  %add233 = add nsw i32 %add229, %mul232
  store i32 %add233, ptr %i__2, align 4
  %263 = load i32, ptr %i__1, align 4
  %264 = load i32, ptr %i__2, align 4
  %cmp234 = icmp sge i32 %263, %264
  br i1 %cmp234, label %cond.true236, label %cond.false237

cond.true236:                                     ; preds = %cond.end225
  %265 = load i32, ptr %i__1, align 4
  br label %cond.end238

cond.false237:                                    ; preds = %cond.end225
  %266 = load i32, ptr %i__2, align 4
  br label %cond.end238

cond.end238:                                      ; preds = %cond.false237, %cond.true236
  %cond239 = phi i32 [ %265, %cond.true236 ], [ %266, %cond.false237 ]
  store i32 %cond239, ptr %maxwrk, align 4
  %267 = load ptr, ptr %nrhs.addr, align 8
  %268 = load i32, ptr %267, align 4
  %cmp240 = icmp sgt i32 %268, 1
  br i1 %cmp240, label %if.then242, label %if.else253

if.then242:                                       ; preds = %cond.end238
  %269 = load i32, ptr %maxwrk, align 4
  store i32 %269, ptr %i__1, align 4
  %270 = load ptr, ptr %m.addr, align 8
  %271 = load i32, ptr %270, align 4
  %272 = load ptr, ptr %m.addr, align 8
  %273 = load i32, ptr %272, align 4
  %mul243 = mul nsw i32 %271, %273
  %274 = load ptr, ptr %m.addr, align 8
  %275 = load i32, ptr %274, align 4
  %add244 = add nsw i32 %mul243, %275
  %276 = load ptr, ptr %m.addr, align 8
  %277 = load i32, ptr %276, align 4
  %278 = load ptr, ptr %nrhs.addr, align 8
  %279 = load i32, ptr %278, align 4
  %mul245 = mul nsw i32 %277, %279
  %add246 = add nsw i32 %add244, %mul245
  store i32 %add246, ptr %i__2, align 4
  %280 = load i32, ptr %i__1, align 4
  %281 = load i32, ptr %i__2, align 4
  %cmp247 = icmp sge i32 %280, %281
  br i1 %cmp247, label %cond.true249, label %cond.false250

cond.true249:                                     ; preds = %if.then242
  %282 = load i32, ptr %i__1, align 4
  br label %cond.end251

cond.false250:                                    ; preds = %if.then242
  %283 = load i32, ptr %i__2, align 4
  br label %cond.end251

cond.end251:                                      ; preds = %cond.false250, %cond.true249
  %cond252 = phi i32 [ %282, %cond.true249 ], [ %283, %cond.false250 ]
  store i32 %cond252, ptr %maxwrk, align 4
  br label %if.end263

if.else253:                                       ; preds = %cond.end238
  %284 = load i32, ptr %maxwrk, align 4
  store i32 %284, ptr %i__1, align 4
  %285 = load ptr, ptr %m.addr, align 8
  %286 = load i32, ptr %285, align 4
  %287 = load ptr, ptr %m.addr, align 8
  %288 = load i32, ptr %287, align 4
  %mul254 = mul nsw i32 %286, %288
  %289 = load ptr, ptr %m.addr, align 8
  %290 = load i32, ptr %289, align 4
  %shl255 = shl i32 %290, 1
  %add256 = add nsw i32 %mul254, %shl255
  store i32 %add256, ptr %i__2, align 4
  %291 = load i32, ptr %i__1, align 4
  %292 = load i32, ptr %i__2, align 4
  %cmp257 = icmp sge i32 %291, %292
  br i1 %cmp257, label %cond.true259, label %cond.false260

cond.true259:                                     ; preds = %if.else253
  %293 = load i32, ptr %i__1, align 4
  br label %cond.end261

cond.false260:                                    ; preds = %if.else253
  %294 = load i32, ptr %i__2, align 4
  br label %cond.end261

cond.end261:                                      ; preds = %cond.false260, %cond.true259
  %cond262 = phi i32 [ %293, %cond.true259 ], [ %294, %cond.false260 ]
  store i32 %cond262, ptr %maxwrk, align 4
  br label %if.end263

if.end263:                                        ; preds = %cond.end261, %cond.end251
  %295 = load i32, ptr %maxwrk, align 4
  store i32 %295, ptr %i__1, align 4
  %296 = load ptr, ptr %m.addr, align 8
  %297 = load i32, ptr %296, align 4
  %298 = load ptr, ptr %m.addr, align 8
  %299 = load i32, ptr %298, align 4
  %mul264 = mul nsw i32 %297, %299
  %300 = load ptr, ptr %m.addr, align 8
  %301 = load i32, ptr %300, align 4
  %shl265 = shl i32 %301, 2
  %add266 = add nsw i32 %mul264, %shl265
  %302 = load ptr, ptr %m.addr, align 8
  %303 = load i32, ptr %302, align 4
  %304 = load ptr, ptr %nrhs.addr, align 8
  %305 = load i32, ptr %304, align 4
  %mul267 = mul nsw i32 %303, %305
  %add268 = add nsw i32 %add266, %mul267
  store i32 %add268, ptr %i__2, align 4
  %306 = load i32, ptr %i__1, align 4
  %307 = load i32, ptr %i__2, align 4
  %cmp269 = icmp sge i32 %306, %307
  br i1 %cmp269, label %cond.true271, label %cond.false272

cond.true271:                                     ; preds = %if.end263
  %308 = load i32, ptr %i__1, align 4
  br label %cond.end273

cond.false272:                                    ; preds = %if.end263
  %309 = load i32, ptr %i__2, align 4
  br label %cond.end273

cond.end273:                                      ; preds = %cond.false272, %cond.true271
  %cond274 = phi i32 [ %308, %cond.true271 ], [ %309, %cond.false272 ]
  store i32 %cond274, ptr %maxwrk, align 4
  %310 = load ptr, ptr %m.addr, align 8
  %311 = load i32, ptr %310, align 4
  store i32 %311, ptr %i__3, align 4
  %312 = load ptr, ptr %m.addr, align 8
  %313 = load i32, ptr %312, align 4
  %shl275 = shl i32 %313, 1
  %sub276 = sub nsw i32 %shl275, 4
  store i32 %sub276, ptr %i__4, align 4
  %314 = load i32, ptr %i__3, align 4
  %315 = load i32, ptr %i__4, align 4
  %cmp277 = icmp sge i32 %314, %315
  br i1 %cmp277, label %cond.true279, label %cond.false280

cond.true279:                                     ; preds = %cond.end273
  %316 = load i32, ptr %i__3, align 4
  br label %cond.end281

cond.false280:                                    ; preds = %cond.end273
  %317 = load i32, ptr %i__4, align 4
  br label %cond.end281

cond.end281:                                      ; preds = %cond.false280, %cond.true279
  %cond282 = phi i32 [ %316, %cond.true279 ], [ %317, %cond.false280 ]
  store i32 %cond282, ptr %i__3, align 4
  %318 = load i32, ptr %i__3, align 4
  %319 = load ptr, ptr %nrhs.addr, align 8
  %320 = load i32, ptr %319, align 4
  %cmp283 = icmp sge i32 %318, %320
  br i1 %cmp283, label %cond.true285, label %cond.false286

cond.true285:                                     ; preds = %cond.end281
  %321 = load i32, ptr %i__3, align 4
  br label %cond.end287

cond.false286:                                    ; preds = %cond.end281
  %322 = load ptr, ptr %nrhs.addr, align 8
  %323 = load i32, ptr %322, align 4
  br label %cond.end287

cond.end287:                                      ; preds = %cond.false286, %cond.true285
  %cond288 = phi i32 [ %321, %cond.true285 ], [ %323, %cond.false286 ]
  store i32 %cond288, ptr %i__3, align 4
  %324 = load ptr, ptr %n.addr, align 8
  %325 = load i32, ptr %324, align 4
  %326 = load ptr, ptr %m.addr, align 8
  %327 = load i32, ptr %326, align 4
  %mul289 = mul nsw i32 %327, 3
  %sub290 = sub nsw i32 %325, %mul289
  store i32 %sub290, ptr %i__4, align 4
  %328 = load i32, ptr %maxwrk, align 4
  store i32 %328, ptr %i__1, align 4
  %329 = load ptr, ptr %m.addr, align 8
  %330 = load i32, ptr %329, align 4
  %shl291 = shl i32 %330, 2
  %331 = load ptr, ptr %m.addr, align 8
  %332 = load i32, ptr %331, align 4
  %333 = load ptr, ptr %m.addr, align 8
  %334 = load i32, ptr %333, align 4
  %mul292 = mul nsw i32 %332, %334
  %add293 = add nsw i32 %shl291, %mul292
  %335 = load i32, ptr %i__3, align 4
  %336 = load i32, ptr %i__4, align 4
  %cmp294 = icmp sge i32 %335, %336
  br i1 %cmp294, label %cond.true296, label %cond.false297

cond.true296:                                     ; preds = %cond.end287
  %337 = load i32, ptr %i__3, align 4
  br label %cond.end298

cond.false297:                                    ; preds = %cond.end287
  %338 = load i32, ptr %i__4, align 4
  br label %cond.end298

cond.end298:                                      ; preds = %cond.false297, %cond.true296
  %cond299 = phi i32 [ %337, %cond.true296 ], [ %338, %cond.false297 ]
  %add300 = add nsw i32 %add293, %cond299
  store i32 %add300, ptr %i__2, align 4
  %339 = load i32, ptr %i__1, align 4
  %340 = load i32, ptr %i__2, align 4
  %cmp301 = icmp sge i32 %339, %340
  br i1 %cmp301, label %cond.true303, label %cond.false304

cond.true303:                                     ; preds = %cond.end298
  %341 = load i32, ptr %i__1, align 4
  br label %cond.end305

cond.false304:                                    ; preds = %cond.end298
  %342 = load i32, ptr %i__2, align 4
  br label %cond.end305

cond.end305:                                      ; preds = %cond.false304, %cond.true303
  %cond306 = phi i32 [ %341, %cond.true303 ], [ %342, %cond.false304 ]
  store i32 %cond306, ptr %maxwrk, align 4
  br label %if.end342

if.else307:                                       ; preds = %cond.end193
  %343 = load ptr, ptr %m.addr, align 8
  %344 = load i32, ptr %343, align 4
  %shl308 = shl i32 %344, 1
  %345 = load ptr, ptr %n.addr, align 8
  %346 = load i32, ptr %345, align 4
  %347 = load ptr, ptr %m.addr, align 8
  %348 = load i32, ptr %347, align 4
  %add309 = add nsw i32 %346, %348
  %349 = load ptr, ptr %m.addr, align 8
  %350 = load ptr, ptr %n.addr, align 8
  %call310 = call i32 @ilaenv_(ptr noundef @c__1, ptr noundef @.str.5, ptr noundef @.str.1, ptr noundef %349, ptr noundef %350, ptr noundef @c_n1, ptr noundef @c_n1)
  %mul311 = mul nsw i32 %add309, %call310
  %add312 = add nsw i32 %shl308, %mul311
  store i32 %add312, ptr %maxwrk, align 4
  %351 = load i32, ptr %maxwrk, align 4
  store i32 %351, ptr %i__1, align 4
  %352 = load ptr, ptr %m.addr, align 8
  %353 = load i32, ptr %352, align 4
  %shl313 = shl i32 %353, 1
  %354 = load ptr, ptr %nrhs.addr, align 8
  %355 = load i32, ptr %354, align 4
  %356 = load ptr, ptr %m.addr, align 8
  %357 = load ptr, ptr %nrhs.addr, align 8
  %358 = load ptr, ptr %m.addr, align 8
  %call314 = call i32 @ilaenv_(ptr noundef @c__1, ptr noundef @.str.6, ptr noundef @.str.7, ptr noundef %356, ptr noundef %357, ptr noundef %358, ptr noundef @c_n1)
  %mul315 = mul nsw i32 %355, %call314
  %add316 = add nsw i32 %shl313, %mul315
  store i32 %add316, ptr %i__2, align 4
  %359 = load i32, ptr %i__1, align 4
  %360 = load i32, ptr %i__2, align 4
  %cmp317 = icmp sge i32 %359, %360
  br i1 %cmp317, label %cond.true319, label %cond.false320

cond.true319:                                     ; preds = %if.else307
  %361 = load i32, ptr %i__1, align 4
  br label %cond.end321

cond.false320:                                    ; preds = %if.else307
  %362 = load i32, ptr %i__2, align 4
  br label %cond.end321

cond.end321:                                      ; preds = %cond.false320, %cond.true319
  %cond322 = phi i32 [ %361, %cond.true319 ], [ %362, %cond.false320 ]
  store i32 %cond322, ptr %maxwrk, align 4
  %363 = load i32, ptr %maxwrk, align 4
  store i32 %363, ptr %i__1, align 4
  %364 = load ptr, ptr %m.addr, align 8
  %365 = load i32, ptr %364, align 4
  %shl323 = shl i32 %365, 1
  %366 = load ptr, ptr %m.addr, align 8
  %367 = load i32, ptr %366, align 4
  %368 = load ptr, ptr %n.addr, align 8
  %369 = load ptr, ptr %nrhs.addr, align 8
  %370 = load ptr, ptr %m.addr, align 8
  %call324 = call i32 @ilaenv_(ptr noundef @c__1, ptr noundef @.str.6, ptr noundef @.str.8, ptr noundef %368, ptr noundef %369, ptr noundef %370, ptr noundef @c_n1)
  %mul325 = mul nsw i32 %367, %call324
  %add326 = add nsw i32 %shl323, %mul325
  store i32 %add326, ptr %i__2, align 4
  %371 = load i32, ptr %i__1, align 4
  %372 = load i32, ptr %i__2, align 4
  %cmp327 = icmp sge i32 %371, %372
  br i1 %cmp327, label %cond.true329, label %cond.false330

cond.true329:                                     ; preds = %cond.end321
  %373 = load i32, ptr %i__1, align 4
  br label %cond.end331

cond.false330:                                    ; preds = %cond.end321
  %374 = load i32, ptr %i__2, align 4
  br label %cond.end331

cond.end331:                                      ; preds = %cond.false330, %cond.true329
  %cond332 = phi i32 [ %373, %cond.true329 ], [ %374, %cond.false330 ]
  store i32 %cond332, ptr %maxwrk, align 4
  %375 = load i32, ptr %maxwrk, align 4
  store i32 %375, ptr %i__1, align 4
  %376 = load ptr, ptr %m.addr, align 8
  %377 = load i32, ptr %376, align 4
  %shl333 = shl i32 %377, 1
  %378 = load ptr, ptr %m.addr, align 8
  %379 = load i32, ptr %378, align 4
  %380 = load ptr, ptr %nrhs.addr, align 8
  %381 = load i32, ptr %380, align 4
  %mul334 = mul nsw i32 %379, %381
  %add335 = add nsw i32 %shl333, %mul334
  store i32 %add335, ptr %i__2, align 4
  %382 = load i32, ptr %i__1, align 4
  %383 = load i32, ptr %i__2, align 4
  %cmp336 = icmp sge i32 %382, %383
  br i1 %cmp336, label %cond.true338, label %cond.false339

cond.true338:                                     ; preds = %cond.end331
  %384 = load i32, ptr %i__1, align 4
  br label %cond.end340

cond.false339:                                    ; preds = %cond.end331
  %385 = load i32, ptr %i__2, align 4
  br label %cond.end340

cond.end340:                                      ; preds = %cond.false339, %cond.true338
  %cond341 = phi i32 [ %384, %cond.true338 ], [ %385, %cond.false339 ]
  store i32 %cond341, ptr %maxwrk, align 4
  br label %if.end342

if.end342:                                        ; preds = %cond.end340, %cond.end305
  %386 = load ptr, ptr %m.addr, align 8
  %387 = load i32, ptr %386, align 4
  %shl343 = shl i32 %387, 1
  %388 = load ptr, ptr %n.addr, align 8
  %389 = load i32, ptr %388, align 4
  %add344 = add nsw i32 %shl343, %389
  store i32 %add344, ptr %i__1, align 4
  %390 = load ptr, ptr %m.addr, align 8
  %391 = load i32, ptr %390, align 4
  %shl345 = shl i32 %391, 1
  %392 = load ptr, ptr %m.addr, align 8
  %393 = load i32, ptr %392, align 4
  %394 = load ptr, ptr %nrhs.addr, align 8
  %395 = load i32, ptr %394, align 4
  %mul346 = mul nsw i32 %393, %395
  %add347 = add nsw i32 %shl345, %mul346
  store i32 %add347, ptr %i__2, align 4
  %396 = load i32, ptr %i__1, align 4
  %397 = load i32, ptr %i__2, align 4
  %cmp348 = icmp sge i32 %396, %397
  br i1 %cmp348, label %cond.true350, label %cond.false351

cond.true350:                                     ; preds = %if.end342
  %398 = load i32, ptr %i__1, align 4
  br label %cond.end352

cond.false351:                                    ; preds = %if.end342
  %399 = load i32, ptr %i__2, align 4
  br label %cond.end352

cond.end352:                                      ; preds = %cond.false351, %cond.true350
  %cond353 = phi i32 [ %398, %cond.true350 ], [ %399, %cond.false351 ]
  store i32 %cond353, ptr %minwrk, align 4
  br label %if.end354

if.end354:                                        ; preds = %cond.end352, %if.end169
  br label %if.end355

if.end355:                                        ; preds = %if.end354, %if.then49
  %400 = load i32, ptr %minwrk, align 4
  %401 = load i32, ptr %maxwrk, align 4
  %cmp356 = icmp sle i32 %400, %401
  br i1 %cmp356, label %cond.true358, label %cond.false359

cond.true358:                                     ; preds = %if.end355
  %402 = load i32, ptr %minwrk, align 4
  br label %cond.end360

cond.false359:                                    ; preds = %if.end355
  %403 = load i32, ptr %maxwrk, align 4
  br label %cond.end360

cond.end360:                                      ; preds = %cond.false359, %cond.true358
  %cond361 = phi i32 [ %402, %cond.true358 ], [ %403, %cond.false359 ]
  store i32 %cond361, ptr %minwrk, align 4
  %404 = load i32, ptr %maxwrk, align 4
  %conv362 = sitofp i32 %404 to double
  %405 = load ptr, ptr %work.addr, align 8
  %arrayidx = getelementptr inbounds %struct.doublecomplex, ptr %405, i64 1
  %r = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx, i32 0, i32 0
  store double %conv362, ptr %r, align 8
  %406 = load ptr, ptr %work.addr, align 8
  %arrayidx363 = getelementptr inbounds %struct.doublecomplex, ptr %406, i64 1
  %i = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx363, i32 0, i32 1
  store double 0.000000e+00, ptr %i, align 8
  %407 = load i32, ptr %liwork, align 4
  %408 = load ptr, ptr %iwork.addr, align 8
  %arrayidx364 = getelementptr inbounds i32, ptr %408, i64 1
  store i32 %407, ptr %arrayidx364, align 4
  %409 = load i32, ptr %lrwork, align 4
  %conv365 = sitofp i32 %409 to double
  %410 = load ptr, ptr %rwork.addr, align 8
  %arrayidx366 = getelementptr inbounds double, ptr %410, i64 1
  store double %conv365, ptr %arrayidx366, align 8
  %411 = load ptr, ptr %lwork.addr, align 8
  %412 = load i32, ptr %411, align 4
  %413 = load i32, ptr %minwrk, align 4
  %cmp367 = icmp slt i32 %412, %413
  br i1 %cmp367, label %land.lhs.true369, label %if.end371

land.lhs.true369:                                 ; preds = %cond.end360
  %414 = load i32, ptr %lquery, align 4
  %tobool = icmp ne i32 %414, 0
  br i1 %tobool, label %if.end371, label %if.then370

if.then370:                                       ; preds = %land.lhs.true369
  %415 = load ptr, ptr %info.addr, align 8
  store i32 -12, ptr %415, align 4
  br label %if.end371

if.end371:                                        ; preds = %if.then370, %land.lhs.true369, %cond.end360
  br label %if.end372

if.end372:                                        ; preds = %if.end371, %if.end46
  %416 = load ptr, ptr %info.addr, align 8
  %417 = load i32, ptr %416, align 4
  %cmp373 = icmp ne i32 %417, 0
  br i1 %cmp373, label %if.then375, label %if.else378

if.then375:                                       ; preds = %if.end372
  %418 = load ptr, ptr %info.addr, align 8
  %419 = load i32, ptr %418, align 4
  %sub376 = sub nsw i32 0, %419
  store i32 %sub376, ptr %i__1, align 4
  %call377 = call i32 @xerbla_(ptr noundef @.str, ptr noundef %i__1)
  store i32 0, ptr %retval, align 4
  br label %return

if.else378:                                       ; preds = %if.end372
  %420 = load i32, ptr %lquery, align 4
  %tobool379 = icmp ne i32 %420, 0
  br i1 %tobool379, label %if.then380, label %if.end381

if.then380:                                       ; preds = %if.else378
  store i32 0, ptr %retval, align 4
  br label %return

if.end381:                                        ; preds = %if.else378
  br label %if.end382

if.end382:                                        ; preds = %if.end381
  %421 = load ptr, ptr %m.addr, align 8
  %422 = load i32, ptr %421, align 4
  %cmp383 = icmp eq i32 %422, 0
  br i1 %cmp383, label %if.then387, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end382
  %423 = load ptr, ptr %n.addr, align 8
  %424 = load i32, ptr %423, align 4
  %cmp385 = icmp eq i32 %424, 0
  br i1 %cmp385, label %if.then387, label %if.end388

if.then387:                                       ; preds = %lor.lhs.false, %if.end382
  %425 = load ptr, ptr %rank.addr, align 8
  store i32 0, ptr %425, align 4
  store i32 0, ptr %retval, align 4
  br label %return

if.end388:                                        ; preds = %lor.lhs.false
  %call389 = call double @dlamch_(ptr noundef @.str.11)
  store double %call389, ptr %eps, align 8
  %call390 = call double @dlamch_(ptr noundef @.str.12)
  store double %call390, ptr %sfmin, align 8
  %426 = load double, ptr %sfmin, align 8
  %427 = load double, ptr %eps, align 8
  %div391 = fdiv double %426, %427
  store double %div391, ptr %smlnum, align 8
  %428 = load double, ptr %smlnum, align 8
  %div392 = fdiv double 1.000000e+00, %428
  store double %div392, ptr %bignum, align 8
  %call393 = call i32 @dlabad_(ptr noundef %smlnum, ptr noundef %bignum)
  %429 = load ptr, ptr %m.addr, align 8
  %430 = load ptr, ptr %n.addr, align 8
  %431 = load ptr, ptr %a.addr, align 8
  %432 = load i32, ptr %a_offset, align 4
  %idxprom = sext i32 %432 to i64
  %arrayidx394 = getelementptr inbounds %struct.doublecomplex, ptr %431, i64 %idxprom
  %433 = load ptr, ptr %lda.addr, align 8
  %434 = load ptr, ptr %rwork.addr, align 8
  %arrayidx395 = getelementptr inbounds double, ptr %434, i64 1
  %call396 = call double @zlange_(ptr noundef @.str.13, ptr noundef %429, ptr noundef %430, ptr noundef %arrayidx394, ptr noundef %433, ptr noundef %arrayidx395)
  store double %call396, ptr %anrm, align 8
  store i32 0, ptr %iascl, align 4
  %435 = load double, ptr %anrm, align 8
  %cmp397 = fcmp ogt double %435, 0.000000e+00
  br i1 %cmp397, label %land.lhs.true399, label %if.else406

land.lhs.true399:                                 ; preds = %if.end388
  %436 = load double, ptr %anrm, align 8
  %437 = load double, ptr %smlnum, align 8
  %cmp400 = fcmp olt double %436, %437
  br i1 %cmp400, label %if.then402, label %if.else406

if.then402:                                       ; preds = %land.lhs.true399
  %438 = load ptr, ptr %m.addr, align 8
  %439 = load ptr, ptr %n.addr, align 8
  %440 = load ptr, ptr %a.addr, align 8
  %441 = load i32, ptr %a_offset, align 4
  %idxprom403 = sext i32 %441 to i64
  %arrayidx404 = getelementptr inbounds %struct.doublecomplex, ptr %440, i64 %idxprom403
  %442 = load ptr, ptr %lda.addr, align 8
  %443 = load ptr, ptr %info.addr, align 8
  %call405 = call i32 @zlascl_(ptr noundef @.str.14, ptr noundef @c__0, ptr noundef @c__0, ptr noundef %anrm, ptr noundef %smlnum, ptr noundef %438, ptr noundef %439, ptr noundef %arrayidx404, ptr noundef %442, ptr noundef %443)
  store i32 1, ptr %iascl, align 4
  br label %if.end430

if.else406:                                       ; preds = %land.lhs.true399, %if.end388
  %444 = load double, ptr %anrm, align 8
  %445 = load double, ptr %bignum, align 8
  %cmp407 = fcmp ogt double %444, %445
  br i1 %cmp407, label %if.then409, label %if.else413

if.then409:                                       ; preds = %if.else406
  %446 = load ptr, ptr %m.addr, align 8
  %447 = load ptr, ptr %n.addr, align 8
  %448 = load ptr, ptr %a.addr, align 8
  %449 = load i32, ptr %a_offset, align 4
  %idxprom410 = sext i32 %449 to i64
  %arrayidx411 = getelementptr inbounds %struct.doublecomplex, ptr %448, i64 %idxprom410
  %450 = load ptr, ptr %lda.addr, align 8
  %451 = load ptr, ptr %info.addr, align 8
  %call412 = call i32 @zlascl_(ptr noundef @.str.14, ptr noundef @c__0, ptr noundef @c__0, ptr noundef %anrm, ptr noundef %bignum, ptr noundef %446, ptr noundef %447, ptr noundef %arrayidx411, ptr noundef %450, ptr noundef %451)
  store i32 2, ptr %iascl, align 4
  br label %if.end429

if.else413:                                       ; preds = %if.else406
  %452 = load double, ptr %anrm, align 8
  %cmp414 = fcmp oeq double %452, 0.000000e+00
  br i1 %cmp414, label %if.then416, label %if.end428

if.then416:                                       ; preds = %if.else413
  %453 = load ptr, ptr %m.addr, align 8
  %454 = load i32, ptr %453, align 4
  %455 = load ptr, ptr %n.addr, align 8
  %456 = load i32, ptr %455, align 4
  %cmp417 = icmp sge i32 %454, %456
  br i1 %cmp417, label %cond.true419, label %cond.false420

cond.true419:                                     ; preds = %if.then416
  %457 = load ptr, ptr %m.addr, align 8
  %458 = load i32, ptr %457, align 4
  br label %cond.end421

cond.false420:                                    ; preds = %if.then416
  %459 = load ptr, ptr %n.addr, align 8
  %460 = load i32, ptr %459, align 4
  br label %cond.end421

cond.end421:                                      ; preds = %cond.false420, %cond.true419
  %cond422 = phi i32 [ %458, %cond.true419 ], [ %460, %cond.false420 ]
  store i32 %cond422, ptr %i__1, align 4
  %461 = load ptr, ptr %nrhs.addr, align 8
  %462 = load ptr, ptr %b.addr, align 8
  %463 = load i32, ptr %b_offset, align 4
  %idxprom423 = sext i32 %463 to i64
  %arrayidx424 = getelementptr inbounds %struct.doublecomplex, ptr %462, i64 %idxprom423
  %464 = load ptr, ptr %ldb.addr, align 8
  %call425 = call i32 @zlaset_(ptr noundef @.str.15, ptr noundef %i__1, ptr noundef %461, ptr noundef @c_b1, ptr noundef @c_b1, ptr noundef %arrayidx424, ptr noundef %464)
  %465 = load ptr, ptr %s.addr, align 8
  %arrayidx426 = getelementptr inbounds double, ptr %465, i64 1
  %call427 = call i32 @dlaset_(ptr noundef @.str.15, ptr noundef %minmn, ptr noundef @c__1, ptr noundef @c_b80, ptr noundef @c_b80, ptr noundef %arrayidx426, ptr noundef @c__1)
  %466 = load ptr, ptr %rank.addr, align 8
  store i32 0, ptr %466, align 4
  br label %L10

if.end428:                                        ; preds = %if.else413
  br label %if.end429

if.end429:                                        ; preds = %if.end428, %if.then409
  br label %if.end430

if.end430:                                        ; preds = %if.end429, %if.then402
  %467 = load ptr, ptr %m.addr, align 8
  %468 = load ptr, ptr %nrhs.addr, align 8
  %469 = load ptr, ptr %b.addr, align 8
  %470 = load i32, ptr %b_offset, align 4
  %idxprom431 = sext i32 %470 to i64
  %arrayidx432 = getelementptr inbounds %struct.doublecomplex, ptr %469, i64 %idxprom431
  %471 = load ptr, ptr %ldb.addr, align 8
  %472 = load ptr, ptr %rwork.addr, align 8
  %arrayidx433 = getelementptr inbounds double, ptr %472, i64 1
  %call434 = call double @zlange_(ptr noundef @.str.13, ptr noundef %467, ptr noundef %468, ptr noundef %arrayidx432, ptr noundef %471, ptr noundef %arrayidx433)
  store double %call434, ptr %bnrm, align 8
  store i32 0, ptr %ibscl, align 4
  %473 = load double, ptr %bnrm, align 8
  %cmp435 = fcmp ogt double %473, 0.000000e+00
  br i1 %cmp435, label %land.lhs.true437, label %if.else444

land.lhs.true437:                                 ; preds = %if.end430
  %474 = load double, ptr %bnrm, align 8
  %475 = load double, ptr %smlnum, align 8
  %cmp438 = fcmp olt double %474, %475
  br i1 %cmp438, label %if.then440, label %if.else444

if.then440:                                       ; preds = %land.lhs.true437
  %476 = load ptr, ptr %m.addr, align 8
  %477 = load ptr, ptr %nrhs.addr, align 8
  %478 = load ptr, ptr %b.addr, align 8
  %479 = load i32, ptr %b_offset, align 4
  %idxprom441 = sext i32 %479 to i64
  %arrayidx442 = getelementptr inbounds %struct.doublecomplex, ptr %478, i64 %idxprom441
  %480 = load ptr, ptr %ldb.addr, align 8
  %481 = load ptr, ptr %info.addr, align 8
  %call443 = call i32 @zlascl_(ptr noundef @.str.14, ptr noundef @c__0, ptr noundef @c__0, ptr noundef %bnrm, ptr noundef %smlnum, ptr noundef %476, ptr noundef %477, ptr noundef %arrayidx442, ptr noundef %480, ptr noundef %481)
  store i32 1, ptr %ibscl, align 4
  br label %if.end452

if.else444:                                       ; preds = %land.lhs.true437, %if.end430
  %482 = load double, ptr %bnrm, align 8
  %483 = load double, ptr %bignum, align 8
  %cmp445 = fcmp ogt double %482, %483
  br i1 %cmp445, label %if.then447, label %if.end451

if.then447:                                       ; preds = %if.else444
  %484 = load ptr, ptr %m.addr, align 8
  %485 = load ptr, ptr %nrhs.addr, align 8
  %486 = load ptr, ptr %b.addr, align 8
  %487 = load i32, ptr %b_offset, align 4
  %idxprom448 = sext i32 %487 to i64
  %arrayidx449 = getelementptr inbounds %struct.doublecomplex, ptr %486, i64 %idxprom448
  %488 = load ptr, ptr %ldb.addr, align 8
  %489 = load ptr, ptr %info.addr, align 8
  %call450 = call i32 @zlascl_(ptr noundef @.str.14, ptr noundef @c__0, ptr noundef @c__0, ptr noundef %bnrm, ptr noundef %bignum, ptr noundef %484, ptr noundef %485, ptr noundef %arrayidx449, ptr noundef %488, ptr noundef %489)
  store i32 2, ptr %ibscl, align 4
  br label %if.end451

if.end451:                                        ; preds = %if.then447, %if.else444
  br label %if.end452

if.end452:                                        ; preds = %if.end451, %if.then440
  %490 = load ptr, ptr %m.addr, align 8
  %491 = load i32, ptr %490, align 4
  %492 = load ptr, ptr %n.addr, align 8
  %493 = load i32, ptr %492, align 4
  %cmp453 = icmp slt i32 %491, %493
  br i1 %cmp453, label %if.then455, label %if.end462

if.then455:                                       ; preds = %if.end452
  %494 = load ptr, ptr %n.addr, align 8
  %495 = load i32, ptr %494, align 4
  %496 = load ptr, ptr %m.addr, align 8
  %497 = load i32, ptr %496, align 4
  %sub456 = sub nsw i32 %495, %497
  store i32 %sub456, ptr %i__1, align 4
  %498 = load ptr, ptr %nrhs.addr, align 8
  %499 = load ptr, ptr %b.addr, align 8
  %500 = load ptr, ptr %m.addr, align 8
  %501 = load i32, ptr %500, align 4
  %add457 = add nsw i32 %501, 1
  %502 = load i32, ptr %b_dim1, align 4
  %add458 = add nsw i32 %add457, %502
  %idxprom459 = sext i32 %add458 to i64
  %arrayidx460 = getelementptr inbounds %struct.doublecomplex, ptr %499, i64 %idxprom459
  %503 = load ptr, ptr %ldb.addr, align 8
  %call461 = call i32 @zlaset_(ptr noundef @.str.15, ptr noundef %i__1, ptr noundef %498, ptr noundef @c_b1, ptr noundef @c_b1, ptr noundef %arrayidx460, ptr noundef %503)
  br label %if.end462

if.end462:                                        ; preds = %if.then455, %if.end452
  %504 = load ptr, ptr %m.addr, align 8
  %505 = load i32, ptr %504, align 4
  %506 = load ptr, ptr %n.addr, align 8
  %507 = load i32, ptr %506, align 4
  %cmp463 = icmp sge i32 %505, %507
  br i1 %cmp463, label %if.then465, label %if.else555

if.then465:                                       ; preds = %if.end462
  %508 = load ptr, ptr %m.addr, align 8
  %509 = load i32, ptr %508, align 4
  store i32 %509, ptr %mm, align 4
  %510 = load ptr, ptr %m.addr, align 8
  %511 = load i32, ptr %510, align 4
  %512 = load i32, ptr %mnthr, align 4
  %cmp466 = icmp sge i32 %511, %512
  br i1 %cmp466, label %if.then468, label %if.end500

if.then468:                                       ; preds = %if.then465
  %513 = load ptr, ptr %n.addr, align 8
  %514 = load i32, ptr %513, align 4
  store i32 %514, ptr %mm, align 4
  store i32 1, ptr %itau, align 4
  %515 = load i32, ptr %itau, align 4
  %516 = load ptr, ptr %n.addr, align 8
  %517 = load i32, ptr %516, align 4
  %add469 = add nsw i32 %515, %517
  store i32 %add469, ptr %nwork, align 4
  %518 = load ptr, ptr %lwork.addr, align 8
  %519 = load i32, ptr %518, align 4
  %520 = load i32, ptr %nwork, align 4
  %sub470 = sub nsw i32 %519, %520
  %add471 = add nsw i32 %sub470, 1
  store i32 %add471, ptr %i__1, align 4
  %521 = load ptr, ptr %m.addr, align 8
  %522 = load ptr, ptr %n.addr, align 8
  %523 = load ptr, ptr %a.addr, align 8
  %524 = load i32, ptr %a_offset, align 4
  %idxprom472 = sext i32 %524 to i64
  %arrayidx473 = getelementptr inbounds %struct.doublecomplex, ptr %523, i64 %idxprom472
  %525 = load ptr, ptr %lda.addr, align 8
  %526 = load ptr, ptr %work.addr, align 8
  %527 = load i32, ptr %itau, align 4
  %idxprom474 = sext i32 %527 to i64
  %arrayidx475 = getelementptr inbounds %struct.doublecomplex, ptr %526, i64 %idxprom474
  %528 = load ptr, ptr %work.addr, align 8
  %529 = load i32, ptr %nwork, align 4
  %idxprom476 = sext i32 %529 to i64
  %arrayidx477 = getelementptr inbounds %struct.doublecomplex, ptr %528, i64 %idxprom476
  %530 = load ptr, ptr %info.addr, align 8
  %call478 = call i32 @zgeqrf_(ptr noundef %521, ptr noundef %522, ptr noundef %arrayidx473, ptr noundef %525, ptr noundef %arrayidx475, ptr noundef %arrayidx477, ptr noundef %i__1, ptr noundef %530)
  %531 = load ptr, ptr %lwork.addr, align 8
  %532 = load i32, ptr %531, align 4
  %533 = load i32, ptr %nwork, align 4
  %sub479 = sub nsw i32 %532, %533
  %add480 = add nsw i32 %sub479, 1
  store i32 %add480, ptr %i__1, align 4
  %534 = load ptr, ptr %m.addr, align 8
  %535 = load ptr, ptr %nrhs.addr, align 8
  %536 = load ptr, ptr %n.addr, align 8
  %537 = load ptr, ptr %a.addr, align 8
  %538 = load i32, ptr %a_offset, align 4
  %idxprom481 = sext i32 %538 to i64
  %arrayidx482 = getelementptr inbounds %struct.doublecomplex, ptr %537, i64 %idxprom481
  %539 = load ptr, ptr %lda.addr, align 8
  %540 = load ptr, ptr %work.addr, align 8
  %541 = load i32, ptr %itau, align 4
  %idxprom483 = sext i32 %541 to i64
  %arrayidx484 = getelementptr inbounds %struct.doublecomplex, ptr %540, i64 %idxprom483
  %542 = load ptr, ptr %b.addr, align 8
  %543 = load i32, ptr %b_offset, align 4
  %idxprom485 = sext i32 %543 to i64
  %arrayidx486 = getelementptr inbounds %struct.doublecomplex, ptr %542, i64 %idxprom485
  %544 = load ptr, ptr %ldb.addr, align 8
  %545 = load ptr, ptr %work.addr, align 8
  %546 = load i32, ptr %nwork, align 4
  %idxprom487 = sext i32 %546 to i64
  %arrayidx488 = getelementptr inbounds %struct.doublecomplex, ptr %545, i64 %idxprom487
  %547 = load ptr, ptr %info.addr, align 8
  %call489 = call i32 @zunmqr_(ptr noundef @.str.16, ptr noundef @.str.17, ptr noundef %534, ptr noundef %535, ptr noundef %536, ptr noundef %arrayidx482, ptr noundef %539, ptr noundef %arrayidx484, ptr noundef %arrayidx486, ptr noundef %544, ptr noundef %arrayidx488, ptr noundef %i__1, ptr noundef %547)
  %548 = load ptr, ptr %n.addr, align 8
  %549 = load i32, ptr %548, align 4
  %cmp490 = icmp sgt i32 %549, 1
  br i1 %cmp490, label %if.then492, label %if.end499

if.then492:                                       ; preds = %if.then468
  %550 = load ptr, ptr %n.addr, align 8
  %551 = load i32, ptr %550, align 4
  %sub493 = sub nsw i32 %551, 1
  store i32 %sub493, ptr %i__1, align 4
  %552 = load ptr, ptr %n.addr, align 8
  %553 = load i32, ptr %552, align 4
  %sub494 = sub nsw i32 %553, 1
  store i32 %sub494, ptr %i__2, align 4
  %554 = load ptr, ptr %a.addr, align 8
  %555 = load i32, ptr %a_dim1, align 4
  %add495 = add nsw i32 %555, 2
  %idxprom496 = sext i32 %add495 to i64
  %arrayidx497 = getelementptr inbounds %struct.doublecomplex, ptr %554, i64 %idxprom496
  %556 = load ptr, ptr %lda.addr, align 8
  %call498 = call i32 @zlaset_(ptr noundef @.str.16, ptr noundef %i__1, ptr noundef %i__2, ptr noundef @c_b1, ptr noundef @c_b1, ptr noundef %arrayidx497, ptr noundef %556)
  br label %if.end499

if.end499:                                        ; preds = %if.then492, %if.then468
  br label %if.end500

if.end500:                                        ; preds = %if.end499, %if.then465
  store i32 1, ptr %itauq, align 4
  %557 = load i32, ptr %itauq, align 4
  %558 = load ptr, ptr %n.addr, align 8
  %559 = load i32, ptr %558, align 4
  %add501 = add nsw i32 %557, %559
  store i32 %add501, ptr %itaup, align 4
  %560 = load i32, ptr %itaup, align 4
  %561 = load ptr, ptr %n.addr, align 8
  %562 = load i32, ptr %561, align 4
  %add502 = add nsw i32 %560, %562
  store i32 %add502, ptr %nwork, align 4
  store i32 1, ptr %ie, align 4
  %563 = load i32, ptr %ie, align 4
  %564 = load ptr, ptr %n.addr, align 8
  %565 = load i32, ptr %564, align 4
  %add503 = add nsw i32 %563, %565
  store i32 %add503, ptr %nrwork, align 4
  %566 = load ptr, ptr %lwork.addr, align 8
  %567 = load i32, ptr %566, align 4
  %568 = load i32, ptr %nwork, align 4
  %sub504 = sub nsw i32 %567, %568
  %add505 = add nsw i32 %sub504, 1
  store i32 %add505, ptr %i__1, align 4
  %569 = load ptr, ptr %n.addr, align 8
  %570 = load ptr, ptr %a.addr, align 8
  %571 = load i32, ptr %a_offset, align 4
  %idxprom506 = sext i32 %571 to i64
  %arrayidx507 = getelementptr inbounds %struct.doublecomplex, ptr %570, i64 %idxprom506
  %572 = load ptr, ptr %lda.addr, align 8
  %573 = load ptr, ptr %s.addr, align 8
  %arrayidx508 = getelementptr inbounds double, ptr %573, i64 1
  %574 = load ptr, ptr %rwork.addr, align 8
  %575 = load i32, ptr %ie, align 4
  %idxprom509 = sext i32 %575 to i64
  %arrayidx510 = getelementptr inbounds double, ptr %574, i64 %idxprom509
  %576 = load ptr, ptr %work.addr, align 8
  %577 = load i32, ptr %itauq, align 4
  %idxprom511 = sext i32 %577 to i64
  %arrayidx512 = getelementptr inbounds %struct.doublecomplex, ptr %576, i64 %idxprom511
  %578 = load ptr, ptr %work.addr, align 8
  %579 = load i32, ptr %itaup, align 4
  %idxprom513 = sext i32 %579 to i64
  %arrayidx514 = getelementptr inbounds %struct.doublecomplex, ptr %578, i64 %idxprom513
  %580 = load ptr, ptr %work.addr, align 8
  %581 = load i32, ptr %nwork, align 4
  %idxprom515 = sext i32 %581 to i64
  %arrayidx516 = getelementptr inbounds %struct.doublecomplex, ptr %580, i64 %idxprom515
  %582 = load ptr, ptr %info.addr, align 8
  %call517 = call i32 @zgebrd_(ptr noundef %mm, ptr noundef %569, ptr noundef %arrayidx507, ptr noundef %572, ptr noundef %arrayidx508, ptr noundef %arrayidx510, ptr noundef %arrayidx512, ptr noundef %arrayidx514, ptr noundef %arrayidx516, ptr noundef %i__1, ptr noundef %582)
  %583 = load ptr, ptr %lwork.addr, align 8
  %584 = load i32, ptr %583, align 4
  %585 = load i32, ptr %nwork, align 4
  %sub518 = sub nsw i32 %584, %585
  %add519 = add nsw i32 %sub518, 1
  store i32 %add519, ptr %i__1, align 4
  %586 = load ptr, ptr %nrhs.addr, align 8
  %587 = load ptr, ptr %n.addr, align 8
  %588 = load ptr, ptr %a.addr, align 8
  %589 = load i32, ptr %a_offset, align 4
  %idxprom520 = sext i32 %589 to i64
  %arrayidx521 = getelementptr inbounds %struct.doublecomplex, ptr %588, i64 %idxprom520
  %590 = load ptr, ptr %lda.addr, align 8
  %591 = load ptr, ptr %work.addr, align 8
  %592 = load i32, ptr %itauq, align 4
  %idxprom522 = sext i32 %592 to i64
  %arrayidx523 = getelementptr inbounds %struct.doublecomplex, ptr %591, i64 %idxprom522
  %593 = load ptr, ptr %b.addr, align 8
  %594 = load i32, ptr %b_offset, align 4
  %idxprom524 = sext i32 %594 to i64
  %arrayidx525 = getelementptr inbounds %struct.doublecomplex, ptr %593, i64 %idxprom524
  %595 = load ptr, ptr %ldb.addr, align 8
  %596 = load ptr, ptr %work.addr, align 8
  %597 = load i32, ptr %nwork, align 4
  %idxprom526 = sext i32 %597 to i64
  %arrayidx527 = getelementptr inbounds %struct.doublecomplex, ptr %596, i64 %idxprom526
  %598 = load ptr, ptr %info.addr, align 8
  %call528 = call i32 @zunmbr_(ptr noundef @.str.18, ptr noundef @.str.16, ptr noundef @.str.17, ptr noundef %mm, ptr noundef %586, ptr noundef %587, ptr noundef %arrayidx521, ptr noundef %590, ptr noundef %arrayidx523, ptr noundef %arrayidx525, ptr noundef %595, ptr noundef %arrayidx527, ptr noundef %i__1, ptr noundef %598)
  %599 = load ptr, ptr %n.addr, align 8
  %600 = load ptr, ptr %nrhs.addr, align 8
  %601 = load ptr, ptr %s.addr, align 8
  %arrayidx529 = getelementptr inbounds double, ptr %601, i64 1
  %602 = load ptr, ptr %rwork.addr, align 8
  %603 = load i32, ptr %ie, align 4
  %idxprom530 = sext i32 %603 to i64
  %arrayidx531 = getelementptr inbounds double, ptr %602, i64 %idxprom530
  %604 = load ptr, ptr %b.addr, align 8
  %605 = load i32, ptr %b_offset, align 4
  %idxprom532 = sext i32 %605 to i64
  %arrayidx533 = getelementptr inbounds %struct.doublecomplex, ptr %604, i64 %idxprom532
  %606 = load ptr, ptr %ldb.addr, align 8
  %607 = load ptr, ptr %rcond.addr, align 8
  %608 = load ptr, ptr %rank.addr, align 8
  %609 = load ptr, ptr %work.addr, align 8
  %610 = load i32, ptr %nwork, align 4
  %idxprom534 = sext i32 %610 to i64
  %arrayidx535 = getelementptr inbounds %struct.doublecomplex, ptr %609, i64 %idxprom534
  %611 = load ptr, ptr %rwork.addr, align 8
  %612 = load i32, ptr %nrwork, align 4
  %idxprom536 = sext i32 %612 to i64
  %arrayidx537 = getelementptr inbounds double, ptr %611, i64 %idxprom536
  %613 = load ptr, ptr %iwork.addr, align 8
  %arrayidx538 = getelementptr inbounds i32, ptr %613, i64 1
  %614 = load ptr, ptr %info.addr, align 8
  %call539 = call i32 @zlalsd_(ptr noundef @.str.19, ptr noundef %smlsiz, ptr noundef %599, ptr noundef %600, ptr noundef %arrayidx529, ptr noundef %arrayidx531, ptr noundef %arrayidx533, ptr noundef %606, ptr noundef %607, ptr noundef %608, ptr noundef %arrayidx535, ptr noundef %arrayidx537, ptr noundef %arrayidx538, ptr noundef %614)
  %615 = load ptr, ptr %info.addr, align 8
  %616 = load i32, ptr %615, align 4
  %cmp540 = icmp ne i32 %616, 0
  br i1 %cmp540, label %if.then542, label %if.end543

if.then542:                                       ; preds = %if.end500
  br label %L10

if.end543:                                        ; preds = %if.end500
  %617 = load ptr, ptr %lwork.addr, align 8
  %618 = load i32, ptr %617, align 4
  %619 = load i32, ptr %nwork, align 4
  %sub544 = sub nsw i32 %618, %619
  %add545 = add nsw i32 %sub544, 1
  store i32 %add545, ptr %i__1, align 4
  %620 = load ptr, ptr %n.addr, align 8
  %621 = load ptr, ptr %nrhs.addr, align 8
  %622 = load ptr, ptr %n.addr, align 8
  %623 = load ptr, ptr %a.addr, align 8
  %624 = load i32, ptr %a_offset, align 4
  %idxprom546 = sext i32 %624 to i64
  %arrayidx547 = getelementptr inbounds %struct.doublecomplex, ptr %623, i64 %idxprom546
  %625 = load ptr, ptr %lda.addr, align 8
  %626 = load ptr, ptr %work.addr, align 8
  %627 = load i32, ptr %itaup, align 4
  %idxprom548 = sext i32 %627 to i64
  %arrayidx549 = getelementptr inbounds %struct.doublecomplex, ptr %626, i64 %idxprom548
  %628 = load ptr, ptr %b.addr, align 8
  %629 = load i32, ptr %b_offset, align 4
  %idxprom550 = sext i32 %629 to i64
  %arrayidx551 = getelementptr inbounds %struct.doublecomplex, ptr %628, i64 %idxprom550
  %630 = load ptr, ptr %ldb.addr, align 8
  %631 = load ptr, ptr %work.addr, align 8
  %632 = load i32, ptr %nwork, align 4
  %idxprom552 = sext i32 %632 to i64
  %arrayidx553 = getelementptr inbounds %struct.doublecomplex, ptr %631, i64 %idxprom552
  %633 = load ptr, ptr %info.addr, align 8
  %call554 = call i32 @zunmbr_(ptr noundef @.str.11, ptr noundef @.str.16, ptr noundef @.str.20, ptr noundef %620, ptr noundef %621, ptr noundef %622, ptr noundef %arrayidx547, ptr noundef %625, ptr noundef %arrayidx549, ptr noundef %arrayidx551, ptr noundef %630, ptr noundef %arrayidx553, ptr noundef %i__1, ptr noundef %633)
  br label %if.end779

if.else555:                                       ; preds = %if.end462
  %634 = load ptr, ptr %m.addr, align 8
  %635 = load i32, ptr %634, align 4
  store i32 %635, ptr %i__1, align 4
  %636 = load ptr, ptr %m.addr, align 8
  %637 = load i32, ptr %636, align 4
  %shl556 = shl i32 %637, 1
  %sub557 = sub nsw i32 %shl556, 4
  store i32 %sub557, ptr %i__2, align 4
  %638 = load i32, ptr %i__1, align 4
  %639 = load i32, ptr %i__2, align 4
  %cmp558 = icmp sge i32 %638, %639
  br i1 %cmp558, label %cond.true560, label %cond.false561

cond.true560:                                     ; preds = %if.else555
  %640 = load i32, ptr %i__1, align 4
  br label %cond.end562

cond.false561:                                    ; preds = %if.else555
  %641 = load i32, ptr %i__2, align 4
  br label %cond.end562

cond.end562:                                      ; preds = %cond.false561, %cond.true560
  %cond563 = phi i32 [ %640, %cond.true560 ], [ %641, %cond.false561 ]
  store i32 %cond563, ptr %i__1, align 4
  %642 = load i32, ptr %i__1, align 4
  %643 = load ptr, ptr %nrhs.addr, align 8
  %644 = load i32, ptr %643, align 4
  %cmp564 = icmp sge i32 %642, %644
  br i1 %cmp564, label %cond.true566, label %cond.false567

cond.true566:                                     ; preds = %cond.end562
  %645 = load i32, ptr %i__1, align 4
  br label %cond.end568

cond.false567:                                    ; preds = %cond.end562
  %646 = load ptr, ptr %nrhs.addr, align 8
  %647 = load i32, ptr %646, align 4
  br label %cond.end568

cond.end568:                                      ; preds = %cond.false567, %cond.true566
  %cond569 = phi i32 [ %645, %cond.true566 ], [ %647, %cond.false567 ]
  store i32 %cond569, ptr %i__1, align 4
  %648 = load ptr, ptr %n.addr, align 8
  %649 = load i32, ptr %648, align 4
  %650 = load ptr, ptr %m.addr, align 8
  %651 = load i32, ptr %650, align 4
  %mul570 = mul nsw i32 %651, 3
  %sub571 = sub nsw i32 %649, %mul570
  store i32 %sub571, ptr %i__2, align 4
  %652 = load ptr, ptr %n.addr, align 8
  %653 = load i32, ptr %652, align 4
  %654 = load i32, ptr %mnthr, align 4
  %cmp572 = icmp sge i32 %653, %654
  br i1 %cmp572, label %land.lhs.true574, label %if.else723

land.lhs.true574:                                 ; preds = %cond.end568
  %655 = load ptr, ptr %lwork.addr, align 8
  %656 = load i32, ptr %655, align 4
  %657 = load ptr, ptr %m.addr, align 8
  %658 = load i32, ptr %657, align 4
  %shl575 = shl i32 %658, 2
  %659 = load ptr, ptr %m.addr, align 8
  %660 = load i32, ptr %659, align 4
  %661 = load ptr, ptr %m.addr, align 8
  %662 = load i32, ptr %661, align 4
  %mul576 = mul nsw i32 %660, %662
  %add577 = add nsw i32 %shl575, %mul576
  %663 = load i32, ptr %i__1, align 4
  %664 = load i32, ptr %i__2, align 4
  %cmp578 = icmp sge i32 %663, %664
  br i1 %cmp578, label %cond.true580, label %cond.false581

cond.true580:                                     ; preds = %land.lhs.true574
  %665 = load i32, ptr %i__1, align 4
  br label %cond.end582

cond.false581:                                    ; preds = %land.lhs.true574
  %666 = load i32, ptr %i__2, align 4
  br label %cond.end582

cond.end582:                                      ; preds = %cond.false581, %cond.true580
  %cond583 = phi i32 [ %665, %cond.true580 ], [ %666, %cond.false581 ]
  %add584 = add nsw i32 %add577, %cond583
  %cmp585 = icmp sge i32 %656, %add584
  br i1 %cmp585, label %if.then587, label %if.else723

if.then587:                                       ; preds = %cond.end582
  %667 = load ptr, ptr %m.addr, align 8
  %668 = load i32, ptr %667, align 4
  store i32 %668, ptr %ldwork, align 4
  %669 = load ptr, ptr %m.addr, align 8
  %670 = load i32, ptr %669, align 4
  store i32 %670, ptr %i__3, align 4
  %671 = load ptr, ptr %m.addr, align 8
  %672 = load i32, ptr %671, align 4
  %shl588 = shl i32 %672, 1
  %sub589 = sub nsw i32 %shl588, 4
  store i32 %sub589, ptr %i__4, align 4
  %673 = load i32, ptr %i__3, align 4
  %674 = load i32, ptr %i__4, align 4
  %cmp590 = icmp sge i32 %673, %674
  br i1 %cmp590, label %cond.true592, label %cond.false593

cond.true592:                                     ; preds = %if.then587
  %675 = load i32, ptr %i__3, align 4
  br label %cond.end594

cond.false593:                                    ; preds = %if.then587
  %676 = load i32, ptr %i__4, align 4
  br label %cond.end594

cond.end594:                                      ; preds = %cond.false593, %cond.true592
  %cond595 = phi i32 [ %675, %cond.true592 ], [ %676, %cond.false593 ]
  store i32 %cond595, ptr %i__3, align 4
  %677 = load i32, ptr %i__3, align 4
  %678 = load ptr, ptr %nrhs.addr, align 8
  %679 = load i32, ptr %678, align 4
  %cmp596 = icmp sge i32 %677, %679
  br i1 %cmp596, label %cond.true598, label %cond.false599

cond.true598:                                     ; preds = %cond.end594
  %680 = load i32, ptr %i__3, align 4
  br label %cond.end600

cond.false599:                                    ; preds = %cond.end594
  %681 = load ptr, ptr %nrhs.addr, align 8
  %682 = load i32, ptr %681, align 4
  br label %cond.end600

cond.end600:                                      ; preds = %cond.false599, %cond.true598
  %cond601 = phi i32 [ %680, %cond.true598 ], [ %682, %cond.false599 ]
  store i32 %cond601, ptr %i__3, align 4
  %683 = load ptr, ptr %n.addr, align 8
  %684 = load i32, ptr %683, align 4
  %685 = load ptr, ptr %m.addr, align 8
  %686 = load i32, ptr %685, align 4
  %mul602 = mul nsw i32 %686, 3
  %sub603 = sub nsw i32 %684, %mul602
  store i32 %sub603, ptr %i__4, align 4
  %687 = load ptr, ptr %m.addr, align 8
  %688 = load i32, ptr %687, align 4
  %shl604 = shl i32 %688, 2
  %689 = load ptr, ptr %m.addr, align 8
  %690 = load i32, ptr %689, align 4
  %691 = load ptr, ptr %lda.addr, align 8
  %692 = load i32, ptr %691, align 4
  %mul605 = mul nsw i32 %690, %692
  %add606 = add nsw i32 %shl604, %mul605
  %693 = load i32, ptr %i__3, align 4
  %694 = load i32, ptr %i__4, align 4
  %cmp607 = icmp sge i32 %693, %694
  br i1 %cmp607, label %cond.true609, label %cond.false610

cond.true609:                                     ; preds = %cond.end600
  %695 = load i32, ptr %i__3, align 4
  br label %cond.end611

cond.false610:                                    ; preds = %cond.end600
  %696 = load i32, ptr %i__4, align 4
  br label %cond.end611

cond.end611:                                      ; preds = %cond.false610, %cond.true609
  %cond612 = phi i32 [ %695, %cond.true609 ], [ %696, %cond.false610 ]
  %add613 = add nsw i32 %add606, %cond612
  store i32 %add613, ptr %i__1, align 4
  %697 = load ptr, ptr %m.addr, align 8
  %698 = load i32, ptr %697, align 4
  %699 = load ptr, ptr %lda.addr, align 8
  %700 = load i32, ptr %699, align 4
  %mul614 = mul nsw i32 %698, %700
  %701 = load ptr, ptr %m.addr, align 8
  %702 = load i32, ptr %701, align 4
  %add615 = add nsw i32 %mul614, %702
  %703 = load ptr, ptr %m.addr, align 8
  %704 = load i32, ptr %703, align 4
  %705 = load ptr, ptr %nrhs.addr, align 8
  %706 = load i32, ptr %705, align 4
  %mul616 = mul nsw i32 %704, %706
  %add617 = add nsw i32 %add615, %mul616
  store i32 %add617, ptr %i__2, align 4
  %707 = load ptr, ptr %lwork.addr, align 8
  %708 = load i32, ptr %707, align 4
  %709 = load i32, ptr %i__1, align 4
  %710 = load i32, ptr %i__2, align 4
  %cmp618 = icmp sge i32 %709, %710
  br i1 %cmp618, label %cond.true620, label %cond.false621

cond.true620:                                     ; preds = %cond.end611
  %711 = load i32, ptr %i__1, align 4
  br label %cond.end622

cond.false621:                                    ; preds = %cond.end611
  %712 = load i32, ptr %i__2, align 4
  br label %cond.end622

cond.end622:                                      ; preds = %cond.false621, %cond.true620
  %cond623 = phi i32 [ %711, %cond.true620 ], [ %712, %cond.false621 ]
  %cmp624 = icmp sge i32 %708, %cond623
  br i1 %cmp624, label %if.then626, label %if.end627

if.then626:                                       ; preds = %cond.end622
  %713 = load ptr, ptr %lda.addr, align 8
  %714 = load i32, ptr %713, align 4
  store i32 %714, ptr %ldwork, align 4
  br label %if.end627

if.end627:                                        ; preds = %if.then626, %cond.end622
  store i32 1, ptr %itau, align 4
  %715 = load ptr, ptr %m.addr, align 8
  %716 = load i32, ptr %715, align 4
  %add628 = add nsw i32 %716, 1
  store i32 %add628, ptr %nwork, align 4
  %717 = load ptr, ptr %lwork.addr, align 8
  %718 = load i32, ptr %717, align 4
  %719 = load i32, ptr %nwork, align 4
  %sub629 = sub nsw i32 %718, %719
  %add630 = add nsw i32 %sub629, 1
  store i32 %add630, ptr %i__1, align 4
  %720 = load ptr, ptr %m.addr, align 8
  %721 = load ptr, ptr %n.addr, align 8
  %722 = load ptr, ptr %a.addr, align 8
  %723 = load i32, ptr %a_offset, align 4
  %idxprom631 = sext i32 %723 to i64
  %arrayidx632 = getelementptr inbounds %struct.doublecomplex, ptr %722, i64 %idxprom631
  %724 = load ptr, ptr %lda.addr, align 8
  %725 = load ptr, ptr %work.addr, align 8
  %726 = load i32, ptr %itau, align 4
  %idxprom633 = sext i32 %726 to i64
  %arrayidx634 = getelementptr inbounds %struct.doublecomplex, ptr %725, i64 %idxprom633
  %727 = load ptr, ptr %work.addr, align 8
  %728 = load i32, ptr %nwork, align 4
  %idxprom635 = sext i32 %728 to i64
  %arrayidx636 = getelementptr inbounds %struct.doublecomplex, ptr %727, i64 %idxprom635
  %729 = load ptr, ptr %info.addr, align 8
  %call637 = call i32 @zgelqf_(ptr noundef %720, ptr noundef %721, ptr noundef %arrayidx632, ptr noundef %724, ptr noundef %arrayidx634, ptr noundef %arrayidx636, ptr noundef %i__1, ptr noundef %729)
  %730 = load i32, ptr %nwork, align 4
  store i32 %730, ptr %il, align 4
  %731 = load ptr, ptr %m.addr, align 8
  %732 = load ptr, ptr %m.addr, align 8
  %733 = load ptr, ptr %a.addr, align 8
  %734 = load i32, ptr %a_offset, align 4
  %idxprom638 = sext i32 %734 to i64
  %arrayidx639 = getelementptr inbounds %struct.doublecomplex, ptr %733, i64 %idxprom638
  %735 = load ptr, ptr %lda.addr, align 8
  %736 = load ptr, ptr %work.addr, align 8
  %737 = load i32, ptr %il, align 4
  %idxprom640 = sext i32 %737 to i64
  %arrayidx641 = getelementptr inbounds %struct.doublecomplex, ptr %736, i64 %idxprom640
  %call642 = call i32 @zlacpy_(ptr noundef @.str.16, ptr noundef %731, ptr noundef %732, ptr noundef %arrayidx639, ptr noundef %735, ptr noundef %arrayidx641, ptr noundef %ldwork)
  %738 = load ptr, ptr %m.addr, align 8
  %739 = load i32, ptr %738, align 4
  %sub643 = sub nsw i32 %739, 1
  store i32 %sub643, ptr %i__1, align 4
  %740 = load ptr, ptr %m.addr, align 8
  %741 = load i32, ptr %740, align 4
  %sub644 = sub nsw i32 %741, 1
  store i32 %sub644, ptr %i__2, align 4
  %742 = load ptr, ptr %work.addr, align 8
  %743 = load i32, ptr %il, align 4
  %744 = load i32, ptr %ldwork, align 4
  %add645 = add nsw i32 %743, %744
  %idxprom646 = sext i32 %add645 to i64
  %arrayidx647 = getelementptr inbounds %struct.doublecomplex, ptr %742, i64 %idxprom646
  %call648 = call i32 @zlaset_(ptr noundef @.str.19, ptr noundef %i__1, ptr noundef %i__2, ptr noundef @c_b1, ptr noundef @c_b1, ptr noundef %arrayidx647, ptr noundef %ldwork)
  %745 = load i32, ptr %il, align 4
  %746 = load i32, ptr %ldwork, align 4
  %747 = load ptr, ptr %m.addr, align 8
  %748 = load i32, ptr %747, align 4
  %mul649 = mul nsw i32 %746, %748
  %add650 = add nsw i32 %745, %mul649
  store i32 %add650, ptr %itauq, align 4
  %749 = load i32, ptr %itauq, align 4
  %750 = load ptr, ptr %m.addr, align 8
  %751 = load i32, ptr %750, align 4
  %add651 = add nsw i32 %749, %751
  store i32 %add651, ptr %itaup, align 4
  %752 = load i32, ptr %itaup, align 4
  %753 = load ptr, ptr %m.addr, align 8
  %754 = load i32, ptr %753, align 4
  %add652 = add nsw i32 %752, %754
  store i32 %add652, ptr %nwork, align 4
  store i32 1, ptr %ie, align 4
  %755 = load i32, ptr %ie, align 4
  %756 = load ptr, ptr %m.addr, align 8
  %757 = load i32, ptr %756, align 4
  %add653 = add nsw i32 %755, %757
  store i32 %add653, ptr %nrwork, align 4
  %758 = load ptr, ptr %lwork.addr, align 8
  %759 = load i32, ptr %758, align 4
  %760 = load i32, ptr %nwork, align 4
  %sub654 = sub nsw i32 %759, %760
  %add655 = add nsw i32 %sub654, 1
  store i32 %add655, ptr %i__1, align 4
  %761 = load ptr, ptr %m.addr, align 8
  %762 = load ptr, ptr %m.addr, align 8
  %763 = load ptr, ptr %work.addr, align 8
  %764 = load i32, ptr %il, align 4
  %idxprom656 = sext i32 %764 to i64
  %arrayidx657 = getelementptr inbounds %struct.doublecomplex, ptr %763, i64 %idxprom656
  %765 = load ptr, ptr %s.addr, align 8
  %arrayidx658 = getelementptr inbounds double, ptr %765, i64 1
  %766 = load ptr, ptr %rwork.addr, align 8
  %767 = load i32, ptr %ie, align 4
  %idxprom659 = sext i32 %767 to i64
  %arrayidx660 = getelementptr inbounds double, ptr %766, i64 %idxprom659
  %768 = load ptr, ptr %work.addr, align 8
  %769 = load i32, ptr %itauq, align 4
  %idxprom661 = sext i32 %769 to i64
  %arrayidx662 = getelementptr inbounds %struct.doublecomplex, ptr %768, i64 %idxprom661
  %770 = load ptr, ptr %work.addr, align 8
  %771 = load i32, ptr %itaup, align 4
  %idxprom663 = sext i32 %771 to i64
  %arrayidx664 = getelementptr inbounds %struct.doublecomplex, ptr %770, i64 %idxprom663
  %772 = load ptr, ptr %work.addr, align 8
  %773 = load i32, ptr %nwork, align 4
  %idxprom665 = sext i32 %773 to i64
  %arrayidx666 = getelementptr inbounds %struct.doublecomplex, ptr %772, i64 %idxprom665
  %774 = load ptr, ptr %info.addr, align 8
  %call667 = call i32 @zgebrd_(ptr noundef %761, ptr noundef %762, ptr noundef %arrayidx657, ptr noundef %ldwork, ptr noundef %arrayidx658, ptr noundef %arrayidx660, ptr noundef %arrayidx662, ptr noundef %arrayidx664, ptr noundef %arrayidx666, ptr noundef %i__1, ptr noundef %774)
  %775 = load ptr, ptr %lwork.addr, align 8
  %776 = load i32, ptr %775, align 4
  %777 = load i32, ptr %nwork, align 4
  %sub668 = sub nsw i32 %776, %777
  %add669 = add nsw i32 %sub668, 1
  store i32 %add669, ptr %i__1, align 4
  %778 = load ptr, ptr %m.addr, align 8
  %779 = load ptr, ptr %nrhs.addr, align 8
  %780 = load ptr, ptr %m.addr, align 8
  %781 = load ptr, ptr %work.addr, align 8
  %782 = load i32, ptr %il, align 4
  %idxprom670 = sext i32 %782 to i64
  %arrayidx671 = getelementptr inbounds %struct.doublecomplex, ptr %781, i64 %idxprom670
  %783 = load ptr, ptr %work.addr, align 8
  %784 = load i32, ptr %itauq, align 4
  %idxprom672 = sext i32 %784 to i64
  %arrayidx673 = getelementptr inbounds %struct.doublecomplex, ptr %783, i64 %idxprom672
  %785 = load ptr, ptr %b.addr, align 8
  %786 = load i32, ptr %b_offset, align 4
  %idxprom674 = sext i32 %786 to i64
  %arrayidx675 = getelementptr inbounds %struct.doublecomplex, ptr %785, i64 %idxprom674
  %787 = load ptr, ptr %ldb.addr, align 8
  %788 = load ptr, ptr %work.addr, align 8
  %789 = load i32, ptr %nwork, align 4
  %idxprom676 = sext i32 %789 to i64
  %arrayidx677 = getelementptr inbounds %struct.doublecomplex, ptr %788, i64 %idxprom676
  %790 = load ptr, ptr %info.addr, align 8
  %call678 = call i32 @zunmbr_(ptr noundef @.str.18, ptr noundef @.str.16, ptr noundef @.str.17, ptr noundef %778, ptr noundef %779, ptr noundef %780, ptr noundef %arrayidx671, ptr noundef %ldwork, ptr noundef %arrayidx673, ptr noundef %arrayidx675, ptr noundef %787, ptr noundef %arrayidx677, ptr noundef %i__1, ptr noundef %790)
  %791 = load ptr, ptr %m.addr, align 8
  %792 = load ptr, ptr %nrhs.addr, align 8
  %793 = load ptr, ptr %s.addr, align 8
  %arrayidx679 = getelementptr inbounds double, ptr %793, i64 1
  %794 = load ptr, ptr %rwork.addr, align 8
  %795 = load i32, ptr %ie, align 4
  %idxprom680 = sext i32 %795 to i64
  %arrayidx681 = getelementptr inbounds double, ptr %794, i64 %idxprom680
  %796 = load ptr, ptr %b.addr, align 8
  %797 = load i32, ptr %b_offset, align 4
  %idxprom682 = sext i32 %797 to i64
  %arrayidx683 = getelementptr inbounds %struct.doublecomplex, ptr %796, i64 %idxprom682
  %798 = load ptr, ptr %ldb.addr, align 8
  %799 = load ptr, ptr %rcond.addr, align 8
  %800 = load ptr, ptr %rank.addr, align 8
  %801 = load ptr, ptr %work.addr, align 8
  %802 = load i32, ptr %nwork, align 4
  %idxprom684 = sext i32 %802 to i64
  %arrayidx685 = getelementptr inbounds %struct.doublecomplex, ptr %801, i64 %idxprom684
  %803 = load ptr, ptr %rwork.addr, align 8
  %804 = load i32, ptr %nrwork, align 4
  %idxprom686 = sext i32 %804 to i64
  %arrayidx687 = getelementptr inbounds double, ptr %803, i64 %idxprom686
  %805 = load ptr, ptr %iwork.addr, align 8
  %arrayidx688 = getelementptr inbounds i32, ptr %805, i64 1
  %806 = load ptr, ptr %info.addr, align 8
  %call689 = call i32 @zlalsd_(ptr noundef @.str.19, ptr noundef %smlsiz, ptr noundef %791, ptr noundef %792, ptr noundef %arrayidx679, ptr noundef %arrayidx681, ptr noundef %arrayidx683, ptr noundef %798, ptr noundef %799, ptr noundef %800, ptr noundef %arrayidx685, ptr noundef %arrayidx687, ptr noundef %arrayidx688, ptr noundef %806)
  %807 = load ptr, ptr %info.addr, align 8
  %808 = load i32, ptr %807, align 4
  %cmp690 = icmp ne i32 %808, 0
  br i1 %cmp690, label %if.then692, label %if.end693

if.then692:                                       ; preds = %if.end627
  br label %L10

if.end693:                                        ; preds = %if.end627
  %809 = load ptr, ptr %lwork.addr, align 8
  %810 = load i32, ptr %809, align 4
  %811 = load i32, ptr %nwork, align 4
  %sub694 = sub nsw i32 %810, %811
  %add695 = add nsw i32 %sub694, 1
  store i32 %add695, ptr %i__1, align 4
  %812 = load ptr, ptr %m.addr, align 8
  %813 = load ptr, ptr %nrhs.addr, align 8
  %814 = load ptr, ptr %m.addr, align 8
  %815 = load ptr, ptr %work.addr, align 8
  %816 = load i32, ptr %il, align 4
  %idxprom696 = sext i32 %816 to i64
  %arrayidx697 = getelementptr inbounds %struct.doublecomplex, ptr %815, i64 %idxprom696
  %817 = load ptr, ptr %work.addr, align 8
  %818 = load i32, ptr %itaup, align 4
  %idxprom698 = sext i32 %818 to i64
  %arrayidx699 = getelementptr inbounds %struct.doublecomplex, ptr %817, i64 %idxprom698
  %819 = load ptr, ptr %b.addr, align 8
  %820 = load i32, ptr %b_offset, align 4
  %idxprom700 = sext i32 %820 to i64
  %arrayidx701 = getelementptr inbounds %struct.doublecomplex, ptr %819, i64 %idxprom700
  %821 = load ptr, ptr %ldb.addr, align 8
  %822 = load ptr, ptr %work.addr, align 8
  %823 = load i32, ptr %nwork, align 4
  %idxprom702 = sext i32 %823 to i64
  %arrayidx703 = getelementptr inbounds %struct.doublecomplex, ptr %822, i64 %idxprom702
  %824 = load ptr, ptr %info.addr, align 8
  %call704 = call i32 @zunmbr_(ptr noundef @.str.11, ptr noundef @.str.16, ptr noundef @.str.20, ptr noundef %812, ptr noundef %813, ptr noundef %814, ptr noundef %arrayidx697, ptr noundef %ldwork, ptr noundef %arrayidx699, ptr noundef %arrayidx701, ptr noundef %821, ptr noundef %arrayidx703, ptr noundef %i__1, ptr noundef %824)
  %825 = load ptr, ptr %n.addr, align 8
  %826 = load i32, ptr %825, align 4
  %827 = load ptr, ptr %m.addr, align 8
  %828 = load i32, ptr %827, align 4
  %sub705 = sub nsw i32 %826, %828
  store i32 %sub705, ptr %i__1, align 4
  %829 = load ptr, ptr %nrhs.addr, align 8
  %830 = load ptr, ptr %b.addr, align 8
  %831 = load ptr, ptr %m.addr, align 8
  %832 = load i32, ptr %831, align 4
  %add706 = add nsw i32 %832, 1
  %833 = load i32, ptr %b_dim1, align 4
  %add707 = add nsw i32 %add706, %833
  %idxprom708 = sext i32 %add707 to i64
  %arrayidx709 = getelementptr inbounds %struct.doublecomplex, ptr %830, i64 %idxprom708
  %834 = load ptr, ptr %ldb.addr, align 8
  %call710 = call i32 @zlaset_(ptr noundef @.str.15, ptr noundef %i__1, ptr noundef %829, ptr noundef @c_b1, ptr noundef @c_b1, ptr noundef %arrayidx709, ptr noundef %834)
  %835 = load i32, ptr %itau, align 4
  %836 = load ptr, ptr %m.addr, align 8
  %837 = load i32, ptr %836, align 4
  %add711 = add nsw i32 %835, %837
  store i32 %add711, ptr %nwork, align 4
  %838 = load ptr, ptr %lwork.addr, align 8
  %839 = load i32, ptr %838, align 4
  %840 = load i32, ptr %nwork, align 4
  %sub712 = sub nsw i32 %839, %840
  %add713 = add nsw i32 %sub712, 1
  store i32 %add713, ptr %i__1, align 4
  %841 = load ptr, ptr %n.addr, align 8
  %842 = load ptr, ptr %nrhs.addr, align 8
  %843 = load ptr, ptr %m.addr, align 8
  %844 = load ptr, ptr %a.addr, align 8
  %845 = load i32, ptr %a_offset, align 4
  %idxprom714 = sext i32 %845 to i64
  %arrayidx715 = getelementptr inbounds %struct.doublecomplex, ptr %844, i64 %idxprom714
  %846 = load ptr, ptr %lda.addr, align 8
  %847 = load ptr, ptr %work.addr, align 8
  %848 = load i32, ptr %itau, align 4
  %idxprom716 = sext i32 %848 to i64
  %arrayidx717 = getelementptr inbounds %struct.doublecomplex, ptr %847, i64 %idxprom716
  %849 = load ptr, ptr %b.addr, align 8
  %850 = load i32, ptr %b_offset, align 4
  %idxprom718 = sext i32 %850 to i64
  %arrayidx719 = getelementptr inbounds %struct.doublecomplex, ptr %849, i64 %idxprom718
  %851 = load ptr, ptr %ldb.addr, align 8
  %852 = load ptr, ptr %work.addr, align 8
  %853 = load i32, ptr %nwork, align 4
  %idxprom720 = sext i32 %853 to i64
  %arrayidx721 = getelementptr inbounds %struct.doublecomplex, ptr %852, i64 %idxprom720
  %854 = load ptr, ptr %info.addr, align 8
  %call722 = call i32 @zunmlq_(ptr noundef @.str.16, ptr noundef @.str.17, ptr noundef %841, ptr noundef %842, ptr noundef %843, ptr noundef %arrayidx715, ptr noundef %846, ptr noundef %arrayidx717, ptr noundef %arrayidx719, ptr noundef %851, ptr noundef %arrayidx721, ptr noundef %i__1, ptr noundef %854)
  br label %if.end778

if.else723:                                       ; preds = %cond.end582, %cond.end568
  store i32 1, ptr %itauq, align 4
  %855 = load i32, ptr %itauq, align 4
  %856 = load ptr, ptr %m.addr, align 8
  %857 = load i32, ptr %856, align 4
  %add724 = add nsw i32 %855, %857
  store i32 %add724, ptr %itaup, align 4
  %858 = load i32, ptr %itaup, align 4
  %859 = load ptr, ptr %m.addr, align 8
  %860 = load i32, ptr %859, align 4
  %add725 = add nsw i32 %858, %860
  store i32 %add725, ptr %nwork, align 4
  store i32 1, ptr %ie, align 4
  %861 = load i32, ptr %ie, align 4
  %862 = load ptr, ptr %m.addr, align 8
  %863 = load i32, ptr %862, align 4
  %add726 = add nsw i32 %861, %863
  store i32 %add726, ptr %nrwork, align 4
  %864 = load ptr, ptr %lwork.addr, align 8
  %865 = load i32, ptr %864, align 4
  %866 = load i32, ptr %nwork, align 4
  %sub727 = sub nsw i32 %865, %866
  %add728 = add nsw i32 %sub727, 1
  store i32 %add728, ptr %i__1, align 4
  %867 = load ptr, ptr %m.addr, align 8
  %868 = load ptr, ptr %n.addr, align 8
  %869 = load ptr, ptr %a.addr, align 8
  %870 = load i32, ptr %a_offset, align 4
  %idxprom729 = sext i32 %870 to i64
  %arrayidx730 = getelementptr inbounds %struct.doublecomplex, ptr %869, i64 %idxprom729
  %871 = load ptr, ptr %lda.addr, align 8
  %872 = load ptr, ptr %s.addr, align 8
  %arrayidx731 = getelementptr inbounds double, ptr %872, i64 1
  %873 = load ptr, ptr %rwork.addr, align 8
  %874 = load i32, ptr %ie, align 4
  %idxprom732 = sext i32 %874 to i64
  %arrayidx733 = getelementptr inbounds double, ptr %873, i64 %idxprom732
  %875 = load ptr, ptr %work.addr, align 8
  %876 = load i32, ptr %itauq, align 4
  %idxprom734 = sext i32 %876 to i64
  %arrayidx735 = getelementptr inbounds %struct.doublecomplex, ptr %875, i64 %idxprom734
  %877 = load ptr, ptr %work.addr, align 8
  %878 = load i32, ptr %itaup, align 4
  %idxprom736 = sext i32 %878 to i64
  %arrayidx737 = getelementptr inbounds %struct.doublecomplex, ptr %877, i64 %idxprom736
  %879 = load ptr, ptr %work.addr, align 8
  %880 = load i32, ptr %nwork, align 4
  %idxprom738 = sext i32 %880 to i64
  %arrayidx739 = getelementptr inbounds %struct.doublecomplex, ptr %879, i64 %idxprom738
  %881 = load ptr, ptr %info.addr, align 8
  %call740 = call i32 @zgebrd_(ptr noundef %867, ptr noundef %868, ptr noundef %arrayidx730, ptr noundef %871, ptr noundef %arrayidx731, ptr noundef %arrayidx733, ptr noundef %arrayidx735, ptr noundef %arrayidx737, ptr noundef %arrayidx739, ptr noundef %i__1, ptr noundef %881)
  %882 = load ptr, ptr %lwork.addr, align 8
  %883 = load i32, ptr %882, align 4
  %884 = load i32, ptr %nwork, align 4
  %sub741 = sub nsw i32 %883, %884
  %add742 = add nsw i32 %sub741, 1
  store i32 %add742, ptr %i__1, align 4
  %885 = load ptr, ptr %m.addr, align 8
  %886 = load ptr, ptr %nrhs.addr, align 8
  %887 = load ptr, ptr %n.addr, align 8
  %888 = load ptr, ptr %a.addr, align 8
  %889 = load i32, ptr %a_offset, align 4
  %idxprom743 = sext i32 %889 to i64
  %arrayidx744 = getelementptr inbounds %struct.doublecomplex, ptr %888, i64 %idxprom743
  %890 = load ptr, ptr %lda.addr, align 8
  %891 = load ptr, ptr %work.addr, align 8
  %892 = load i32, ptr %itauq, align 4
  %idxprom745 = sext i32 %892 to i64
  %arrayidx746 = getelementptr inbounds %struct.doublecomplex, ptr %891, i64 %idxprom745
  %893 = load ptr, ptr %b.addr, align 8
  %894 = load i32, ptr %b_offset, align 4
  %idxprom747 = sext i32 %894 to i64
  %arrayidx748 = getelementptr inbounds %struct.doublecomplex, ptr %893, i64 %idxprom747
  %895 = load ptr, ptr %ldb.addr, align 8
  %896 = load ptr, ptr %work.addr, align 8
  %897 = load i32, ptr %nwork, align 4
  %idxprom749 = sext i32 %897 to i64
  %arrayidx750 = getelementptr inbounds %struct.doublecomplex, ptr %896, i64 %idxprom749
  %898 = load ptr, ptr %info.addr, align 8
  %call751 = call i32 @zunmbr_(ptr noundef @.str.18, ptr noundef @.str.16, ptr noundef @.str.17, ptr noundef %885, ptr noundef %886, ptr noundef %887, ptr noundef %arrayidx744, ptr noundef %890, ptr noundef %arrayidx746, ptr noundef %arrayidx748, ptr noundef %895, ptr noundef %arrayidx750, ptr noundef %i__1, ptr noundef %898)
  %899 = load ptr, ptr %m.addr, align 8
  %900 = load ptr, ptr %nrhs.addr, align 8
  %901 = load ptr, ptr %s.addr, align 8
  %arrayidx752 = getelementptr inbounds double, ptr %901, i64 1
  %902 = load ptr, ptr %rwork.addr, align 8
  %903 = load i32, ptr %ie, align 4
  %idxprom753 = sext i32 %903 to i64
  %arrayidx754 = getelementptr inbounds double, ptr %902, i64 %idxprom753
  %904 = load ptr, ptr %b.addr, align 8
  %905 = load i32, ptr %b_offset, align 4
  %idxprom755 = sext i32 %905 to i64
  %arrayidx756 = getelementptr inbounds %struct.doublecomplex, ptr %904, i64 %idxprom755
  %906 = load ptr, ptr %ldb.addr, align 8
  %907 = load ptr, ptr %rcond.addr, align 8
  %908 = load ptr, ptr %rank.addr, align 8
  %909 = load ptr, ptr %work.addr, align 8
  %910 = load i32, ptr %nwork, align 4
  %idxprom757 = sext i32 %910 to i64
  %arrayidx758 = getelementptr inbounds %struct.doublecomplex, ptr %909, i64 %idxprom757
  %911 = load ptr, ptr %rwork.addr, align 8
  %912 = load i32, ptr %nrwork, align 4
  %idxprom759 = sext i32 %912 to i64
  %arrayidx760 = getelementptr inbounds double, ptr %911, i64 %idxprom759
  %913 = load ptr, ptr %iwork.addr, align 8
  %arrayidx761 = getelementptr inbounds i32, ptr %913, i64 1
  %914 = load ptr, ptr %info.addr, align 8
  %call762 = call i32 @zlalsd_(ptr noundef @.str.16, ptr noundef %smlsiz, ptr noundef %899, ptr noundef %900, ptr noundef %arrayidx752, ptr noundef %arrayidx754, ptr noundef %arrayidx756, ptr noundef %906, ptr noundef %907, ptr noundef %908, ptr noundef %arrayidx758, ptr noundef %arrayidx760, ptr noundef %arrayidx761, ptr noundef %914)
  %915 = load ptr, ptr %info.addr, align 8
  %916 = load i32, ptr %915, align 4
  %cmp763 = icmp ne i32 %916, 0
  br i1 %cmp763, label %if.then765, label %if.end766

if.then765:                                       ; preds = %if.else723
  br label %L10

if.end766:                                        ; preds = %if.else723
  %917 = load ptr, ptr %lwork.addr, align 8
  %918 = load i32, ptr %917, align 4
  %919 = load i32, ptr %nwork, align 4
  %sub767 = sub nsw i32 %918, %919
  %add768 = add nsw i32 %sub767, 1
  store i32 %add768, ptr %i__1, align 4
  %920 = load ptr, ptr %n.addr, align 8
  %921 = load ptr, ptr %nrhs.addr, align 8
  %922 = load ptr, ptr %m.addr, align 8
  %923 = load ptr, ptr %a.addr, align 8
  %924 = load i32, ptr %a_offset, align 4
  %idxprom769 = sext i32 %924 to i64
  %arrayidx770 = getelementptr inbounds %struct.doublecomplex, ptr %923, i64 %idxprom769
  %925 = load ptr, ptr %lda.addr, align 8
  %926 = load ptr, ptr %work.addr, align 8
  %927 = load i32, ptr %itaup, align 4
  %idxprom771 = sext i32 %927 to i64
  %arrayidx772 = getelementptr inbounds %struct.doublecomplex, ptr %926, i64 %idxprom771
  %928 = load ptr, ptr %b.addr, align 8
  %929 = load i32, ptr %b_offset, align 4
  %idxprom773 = sext i32 %929 to i64
  %arrayidx774 = getelementptr inbounds %struct.doublecomplex, ptr %928, i64 %idxprom773
  %930 = load ptr, ptr %ldb.addr, align 8
  %931 = load ptr, ptr %work.addr, align 8
  %932 = load i32, ptr %nwork, align 4
  %idxprom775 = sext i32 %932 to i64
  %arrayidx776 = getelementptr inbounds %struct.doublecomplex, ptr %931, i64 %idxprom775
  %933 = load ptr, ptr %info.addr, align 8
  %call777 = call i32 @zunmbr_(ptr noundef @.str.11, ptr noundef @.str.16, ptr noundef @.str.20, ptr noundef %920, ptr noundef %921, ptr noundef %922, ptr noundef %arrayidx770, ptr noundef %925, ptr noundef %arrayidx772, ptr noundef %arrayidx774, ptr noundef %930, ptr noundef %arrayidx776, ptr noundef %i__1, ptr noundef %933)
  br label %if.end778

if.end778:                                        ; preds = %if.end766, %if.end693
  br label %if.end779

if.end779:                                        ; preds = %if.end778, %if.end543
  %934 = load i32, ptr %iascl, align 4
  %cmp780 = icmp eq i32 %934, 1
  br i1 %cmp780, label %if.then782, label %if.else788

if.then782:                                       ; preds = %if.end779
  %935 = load ptr, ptr %n.addr, align 8
  %936 = load ptr, ptr %nrhs.addr, align 8
  %937 = load ptr, ptr %b.addr, align 8
  %938 = load i32, ptr %b_offset, align 4
  %idxprom783 = sext i32 %938 to i64
  %arrayidx784 = getelementptr inbounds %struct.doublecomplex, ptr %937, i64 %idxprom783
  %939 = load ptr, ptr %ldb.addr, align 8
  %940 = load ptr, ptr %info.addr, align 8
  %call785 = call i32 @zlascl_(ptr noundef @.str.14, ptr noundef @c__0, ptr noundef @c__0, ptr noundef %anrm, ptr noundef %smlnum, ptr noundef %935, ptr noundef %936, ptr noundef %arrayidx784, ptr noundef %939, ptr noundef %940)
  %941 = load ptr, ptr %s.addr, align 8
  %arrayidx786 = getelementptr inbounds double, ptr %941, i64 1
  %942 = load ptr, ptr %info.addr, align 8
  %call787 = call i32 @dlascl_(ptr noundef @.str.14, ptr noundef @c__0, ptr noundef @c__0, ptr noundef %smlnum, ptr noundef %anrm, ptr noundef %minmn, ptr noundef @c__1, ptr noundef %arrayidx786, ptr noundef %minmn, ptr noundef %942)
  br label %if.end798

if.else788:                                       ; preds = %if.end779
  %943 = load i32, ptr %iascl, align 4
  %cmp789 = icmp eq i32 %943, 2
  br i1 %cmp789, label %if.then791, label %if.end797

if.then791:                                       ; preds = %if.else788
  %944 = load ptr, ptr %n.addr, align 8
  %945 = load ptr, ptr %nrhs.addr, align 8
  %946 = load ptr, ptr %b.addr, align 8
  %947 = load i32, ptr %b_offset, align 4
  %idxprom792 = sext i32 %947 to i64
  %arrayidx793 = getelementptr inbounds %struct.doublecomplex, ptr %946, i64 %idxprom792
  %948 = load ptr, ptr %ldb.addr, align 8
  %949 = load ptr, ptr %info.addr, align 8
  %call794 = call i32 @zlascl_(ptr noundef @.str.14, ptr noundef @c__0, ptr noundef @c__0, ptr noundef %anrm, ptr noundef %bignum, ptr noundef %944, ptr noundef %945, ptr noundef %arrayidx793, ptr noundef %948, ptr noundef %949)
  %950 = load ptr, ptr %s.addr, align 8
  %arrayidx795 = getelementptr inbounds double, ptr %950, i64 1
  %951 = load ptr, ptr %info.addr, align 8
  %call796 = call i32 @dlascl_(ptr noundef @.str.14, ptr noundef @c__0, ptr noundef @c__0, ptr noundef %bignum, ptr noundef %anrm, ptr noundef %minmn, ptr noundef @c__1, ptr noundef %arrayidx795, ptr noundef %minmn, ptr noundef %951)
  br label %if.end797

if.end797:                                        ; preds = %if.then791, %if.else788
  br label %if.end798

if.end798:                                        ; preds = %if.end797, %if.then782
  %952 = load i32, ptr %ibscl, align 4
  %cmp799 = icmp eq i32 %952, 1
  br i1 %cmp799, label %if.then801, label %if.else805

if.then801:                                       ; preds = %if.end798
  %953 = load ptr, ptr %n.addr, align 8
  %954 = load ptr, ptr %nrhs.addr, align 8
  %955 = load ptr, ptr %b.addr, align 8
  %956 = load i32, ptr %b_offset, align 4
  %idxprom802 = sext i32 %956 to i64
  %arrayidx803 = getelementptr inbounds %struct.doublecomplex, ptr %955, i64 %idxprom802
  %957 = load ptr, ptr %ldb.addr, align 8
  %958 = load ptr, ptr %info.addr, align 8
  %call804 = call i32 @zlascl_(ptr noundef @.str.14, ptr noundef @c__0, ptr noundef @c__0, ptr noundef %smlnum, ptr noundef %bnrm, ptr noundef %953, ptr noundef %954, ptr noundef %arrayidx803, ptr noundef %957, ptr noundef %958)
  br label %if.end813

if.else805:                                       ; preds = %if.end798
  %959 = load i32, ptr %ibscl, align 4
  %cmp806 = icmp eq i32 %959, 2
  br i1 %cmp806, label %if.then808, label %if.end812

if.then808:                                       ; preds = %if.else805
  %960 = load ptr, ptr %n.addr, align 8
  %961 = load ptr, ptr %nrhs.addr, align 8
  %962 = load ptr, ptr %b.addr, align 8
  %963 = load i32, ptr %b_offset, align 4
  %idxprom809 = sext i32 %963 to i64
  %arrayidx810 = getelementptr inbounds %struct.doublecomplex, ptr %962, i64 %idxprom809
  %964 = load ptr, ptr %ldb.addr, align 8
  %965 = load ptr, ptr %info.addr, align 8
  %call811 = call i32 @zlascl_(ptr noundef @.str.14, ptr noundef @c__0, ptr noundef @c__0, ptr noundef %bignum, ptr noundef %bnrm, ptr noundef %960, ptr noundef %961, ptr noundef %arrayidx810, ptr noundef %964, ptr noundef %965)
  br label %if.end812

if.end812:                                        ; preds = %if.then808, %if.else805
  br label %if.end813

if.end813:                                        ; preds = %if.end812, %if.then801
  br label %L10

L10:                                              ; preds = %if.end813, %if.then765, %if.then692, %if.then542, %cond.end421
  %966 = load i32, ptr %maxwrk, align 4
  %conv814 = sitofp i32 %966 to double
  %967 = load ptr, ptr %work.addr, align 8
  %arrayidx815 = getelementptr inbounds %struct.doublecomplex, ptr %967, i64 1
  %r816 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx815, i32 0, i32 0
  store double %conv814, ptr %r816, align 8
  %968 = load ptr, ptr %work.addr, align 8
  %arrayidx817 = getelementptr inbounds %struct.doublecomplex, ptr %968, i64 1
  %i818 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx817, i32 0, i32 1
  store double 0.000000e+00, ptr %i818, align 8
  %969 = load i32, ptr %liwork, align 4
  %970 = load ptr, ptr %iwork.addr, align 8
  %arrayidx819 = getelementptr inbounds i32, ptr %970, i64 1
  store i32 %969, ptr %arrayidx819, align 4
  %971 = load i32, ptr %lrwork, align 4
  %conv820 = sitofp i32 %971 to double
  %972 = load ptr, ptr %rwork.addr, align 8
  %arrayidx821 = getelementptr inbounds double, ptr %972, i64 1
  store double %conv820, ptr %arrayidx821, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %L10, %if.then387, %if.then380, %if.then375
  %973 = load i32, ptr %retval, align 4
  ret i32 %973
}

declare i32 @ilaenv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
declare double @log(double noundef) #2

declare i32 @xerbla_(ptr noundef, ptr noundef) #1

declare double @dlamch_(ptr noundef) #1

declare i32 @dlabad_(ptr noundef, ptr noundef) #1

declare double @zlange_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @zlascl_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @zlaset_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @dlaset_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @zgeqrf_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @zunmqr_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @zgebrd_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @zunmbr_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @zlalsd_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @zgelqf_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @zlacpy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @zunmlq_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @dlascl_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

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

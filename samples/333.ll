; ModuleID = 'samples/333.bc'
source_filename = "/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/map/lapack2flamec/f2c/c/dgesvj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"V\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"G\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"DGESVJ\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"Epsilon\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"SafeMinimum\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"Overflow\00", align 1
@c_b17 = internal global double 0.000000e+00, align 8
@c_b18 = internal global double 1.000000e+00, align 8
@c__1 = internal global i32 1, align 4
@c__0 = internal global i32 0, align 4
@c__2 = internal global i32 2, align 4

; Function Attrs: noinline nounwind optnone uwtable
define i32 @dgesvj_(ptr noundef %joba, ptr noundef %jobu, ptr noundef %jobv, ptr noundef %m, ptr noundef %n, ptr noundef %a, ptr noundef %lda, ptr noundef %sva, ptr noundef %mv, ptr noundef %v, ptr noundef %ldv, ptr noundef %work, ptr noundef %lwork, ptr noundef %info) #0 {
entry:
  %retval = alloca i32, align 4
  %joba.addr = alloca ptr, align 8
  %jobu.addr = alloca ptr, align 8
  %jobv.addr = alloca ptr, align 8
  %m.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %lda.addr = alloca ptr, align 8
  %sva.addr = alloca ptr, align 8
  %mv.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %ldv.addr = alloca ptr, align 8
  %work.addr = alloca ptr, align 8
  %lwork.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %a_dim1 = alloca i32, align 4
  %a_offset = alloca i32, align 4
  %v_dim1 = alloca i32, align 4
  %v_offset = alloca i32, align 4
  %i__1 = alloca i32, align 4
  %i__2 = alloca i32, align 4
  %i__3 = alloca i32, align 4
  %i__4 = alloca i32, align 4
  %i__5 = alloca i32, align 4
  %d__1 = alloca double, align 8
  %d__2 = alloca double, align 8
  %bigtheta = alloca double, align 8
  %pskipped = alloca i32, align 4
  %i__ = alloca i32, align 4
  %p = alloca i32, align 4
  %q = alloca i32, align 4
  %t = alloca double, align 8
  %n2 = alloca i32, align 4
  %n4 = alloca i32, align 4
  %rootsfmin = alloca double, align 8
  %n34 = alloca i32, align 4
  %cs = alloca double, align 8
  %sn = alloca double, align 8
  %ir1 = alloca i32, align 4
  %jbc = alloca i32, align 4
  %big = alloca double, align 8
  %kbl = alloca i32, align 4
  %igl = alloca i32, align 4
  %ibr = alloca i32, align 4
  %jgl = alloca i32, align 4
  %nbl = alloca i32, align 4
  %skl = alloca double, align 8
  %tol = alloca double, align 8
  %mvl = alloca i32, align 4
  %aapp = alloca double, align 8
  %aapq = alloca double, align 8
  %aaqq = alloca double, align 8
  %ctol = alloca double, align 8
  %ierr = alloca i32, align 4
  %aapp0 = alloca double, align 8
  %temp1 = alloca double, align 8
  %large = alloca double, align 8
  %apoaq = alloca double, align 8
  %aqoap = alloca double, align 8
  %theta = alloca double, align 8
  %small = alloca double, align 8
  %sfmin = alloca double, align 8
  %lsvec = alloca i32, align 4
  %fastr = alloca [5 x double], align 16
  %epsln = alloca double, align 8
  %applv = alloca i32, align 4
  %rsvec = alloca i32, align 4
  %uctol = alloca i32, align 4
  %lower = alloca i32, align 4
  %upper = alloca i32, align 4
  %rotok = alloca i32, align 4
  %ijblsk = alloca i32, align 4
  %swband = alloca i32, align 4
  %blskip = alloca i32, align 4
  %mxaapq = alloca double, align 8
  %thsign = alloca double, align 8
  %mxsinj = alloca double, align 8
  %emptsw = alloca i32, align 4
  %notrot = alloca i32, align 4
  %iswrot = alloca i32, align 4
  %lkahead = alloca i32, align 4
  %goscale = alloca i32, align 4
  %noscale = alloca i32, align 4
  %rootbig = alloca double, align 8
  %rooteps = alloca double, align 8
  %rowskip = alloca i32, align 4
  %roottol = alloca double, align 8
  store ptr %joba, ptr %joba.addr, align 8
  store ptr %jobu, ptr %jobu.addr, align 8
  store ptr %jobv, ptr %jobv.addr, align 8
  store ptr %m, ptr %m.addr, align 8
  store ptr %n, ptr %n.addr, align 8
  store ptr %a, ptr %a.addr, align 8
  store ptr %lda, ptr %lda.addr, align 8
  store ptr %sva, ptr %sva.addr, align 8
  store ptr %mv, ptr %mv.addr, align 8
  store ptr %v, ptr %v.addr, align 8
  store ptr %ldv, ptr %ldv.addr, align 8
  store ptr %work, ptr %work.addr, align 8
  store ptr %lwork, ptr %lwork.addr, align 8
  store ptr %info, ptr %info.addr, align 8
  %0 = load ptr, ptr %sva.addr, align 8
  %incdec.ptr = getelementptr inbounds double, ptr %0, i32 -1
  store ptr %incdec.ptr, ptr %sva.addr, align 8
  %1 = load ptr, ptr %lda.addr, align 8
  %2 = load i32, ptr %1, align 4
  store i32 %2, ptr %a_dim1, align 4
  %3 = load i32, ptr %a_dim1, align 4
  %add = add nsw i32 1, %3
  store i32 %add, ptr %a_offset, align 4
  %4 = load i32, ptr %a_offset, align 4
  %5 = load ptr, ptr %a.addr, align 8
  %idx.ext = sext i32 %4 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds double, ptr %5, i64 %idx.neg
  store ptr %add.ptr, ptr %a.addr, align 8
  %6 = load ptr, ptr %ldv.addr, align 8
  %7 = load i32, ptr %6, align 4
  store i32 %7, ptr %v_dim1, align 4
  %8 = load i32, ptr %v_dim1, align 4
  %add1 = add nsw i32 1, %8
  store i32 %add1, ptr %v_offset, align 4
  %9 = load i32, ptr %v_offset, align 4
  %10 = load ptr, ptr %v.addr, align 8
  %idx.ext2 = sext i32 %9 to i64
  %idx.neg3 = sub i64 0, %idx.ext2
  %add.ptr4 = getelementptr inbounds double, ptr %10, i64 %idx.neg3
  store ptr %add.ptr4, ptr %v.addr, align 8
  %11 = load ptr, ptr %work.addr, align 8
  %incdec.ptr5 = getelementptr inbounds double, ptr %11, i32 -1
  store ptr %incdec.ptr5, ptr %work.addr, align 8
  %12 = load ptr, ptr %jobu.addr, align 8
  %call = call i32 @lsame_(ptr noundef %12, ptr noundef @.str)
  store i32 %call, ptr %lsvec, align 4
  %13 = load ptr, ptr %jobu.addr, align 8
  %call6 = call i32 @lsame_(ptr noundef %13, ptr noundef @.str.1)
  store i32 %call6, ptr %uctol, align 4
  %14 = load ptr, ptr %jobv.addr, align 8
  %call7 = call i32 @lsame_(ptr noundef %14, ptr noundef @.str.2)
  store i32 %call7, ptr %rsvec, align 4
  %15 = load ptr, ptr %jobv.addr, align 8
  %call8 = call i32 @lsame_(ptr noundef %15, ptr noundef @.str.3)
  store i32 %call8, ptr %applv, align 4
  %16 = load ptr, ptr %joba.addr, align 8
  %call9 = call i32 @lsame_(ptr noundef %16, ptr noundef @.str)
  store i32 %call9, ptr %upper, align 4
  %17 = load ptr, ptr %joba.addr, align 8
  %call10 = call i32 @lsame_(ptr noundef %17, ptr noundef @.str.4)
  store i32 %call10, ptr %lower, align 4
  %18 = load i32, ptr %upper, align 4
  %tobool = icmp ne i32 %18, 0
  br i1 %tobool, label %if.else, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %19 = load i32, ptr %lower, align 4
  %tobool11 = icmp ne i32 %19, 0
  br i1 %tobool11, label %if.else, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false
  %20 = load ptr, ptr %joba.addr, align 8
  %call13 = call i32 @lsame_(ptr noundef %20, ptr noundef @.str.5)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.else, label %if.then

if.then:                                          ; preds = %lor.lhs.false12
  %21 = load ptr, ptr %info.addr, align 8
  store i32 -1, ptr %21, align 4
  br label %if.end70

if.else:                                          ; preds = %lor.lhs.false12, %lor.lhs.false, %entry
  %22 = load i32, ptr %lsvec, align 4
  %tobool15 = icmp ne i32 %22, 0
  br i1 %tobool15, label %if.else22, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %if.else
  %23 = load i32, ptr %uctol, align 4
  %tobool17 = icmp ne i32 %23, 0
  br i1 %tobool17, label %if.else22, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false16
  %24 = load ptr, ptr %jobu.addr, align 8
  %call19 = call i32 @lsame_(ptr noundef %24, ptr noundef @.str.6)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.else22, label %if.then21

if.then21:                                        ; preds = %lor.lhs.false18
  %25 = load ptr, ptr %info.addr, align 8
  store i32 -2, ptr %25, align 4
  br label %if.end69

if.else22:                                        ; preds = %lor.lhs.false18, %lor.lhs.false16, %if.else
  %26 = load i32, ptr %rsvec, align 4
  %tobool23 = icmp ne i32 %26, 0
  br i1 %tobool23, label %if.else30, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %if.else22
  %27 = load i32, ptr %applv, align 4
  %tobool25 = icmp ne i32 %27, 0
  br i1 %tobool25, label %if.else30, label %lor.lhs.false26

lor.lhs.false26:                                  ; preds = %lor.lhs.false24
  %28 = load ptr, ptr %jobv.addr, align 8
  %call27 = call i32 @lsame_(ptr noundef %28, ptr noundef @.str.6)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.else30, label %if.then29

if.then29:                                        ; preds = %lor.lhs.false26
  %29 = load ptr, ptr %info.addr, align 8
  store i32 -3, ptr %29, align 4
  br label %if.end68

if.else30:                                        ; preds = %lor.lhs.false26, %lor.lhs.false24, %if.else22
  %30 = load ptr, ptr %m.addr, align 8
  %31 = load i32, ptr %30, align 4
  %cmp = icmp slt i32 %31, 0
  br i1 %cmp, label %if.then31, label %if.else32

if.then31:                                        ; preds = %if.else30
  %32 = load ptr, ptr %info.addr, align 8
  store i32 -4, ptr %32, align 4
  br label %if.end67

if.else32:                                        ; preds = %if.else30
  %33 = load ptr, ptr %n.addr, align 8
  %34 = load i32, ptr %33, align 4
  %cmp33 = icmp slt i32 %34, 0
  br i1 %cmp33, label %if.then36, label %lor.lhs.false34

lor.lhs.false34:                                  ; preds = %if.else32
  %35 = load ptr, ptr %n.addr, align 8
  %36 = load i32, ptr %35, align 4
  %37 = load ptr, ptr %m.addr, align 8
  %38 = load i32, ptr %37, align 4
  %cmp35 = icmp sgt i32 %36, %38
  br i1 %cmp35, label %if.then36, label %if.else37

if.then36:                                        ; preds = %lor.lhs.false34, %if.else32
  %39 = load ptr, ptr %info.addr, align 8
  store i32 -5, ptr %39, align 4
  br label %if.end66

if.else37:                                        ; preds = %lor.lhs.false34
  %40 = load ptr, ptr %lda.addr, align 8
  %41 = load i32, ptr %40, align 4
  %42 = load ptr, ptr %m.addr, align 8
  %43 = load i32, ptr %42, align 4
  %cmp38 = icmp slt i32 %41, %43
  br i1 %cmp38, label %if.then39, label %if.else40

if.then39:                                        ; preds = %if.else37
  %44 = load ptr, ptr %info.addr, align 8
  store i32 -7, ptr %44, align 4
  br label %if.end65

if.else40:                                        ; preds = %if.else37
  %45 = load ptr, ptr %mv.addr, align 8
  %46 = load i32, ptr %45, align 4
  %cmp41 = icmp slt i32 %46, 0
  br i1 %cmp41, label %if.then42, label %if.else43

if.then42:                                        ; preds = %if.else40
  %47 = load ptr, ptr %info.addr, align 8
  store i32 -9, ptr %47, align 4
  br label %if.end64

if.else43:                                        ; preds = %if.else40
  %48 = load i32, ptr %rsvec, align 4
  %tobool44 = icmp ne i32 %48, 0
  br i1 %tobool44, label %land.lhs.true, label %lor.lhs.false46

land.lhs.true:                                    ; preds = %if.else43
  %49 = load ptr, ptr %ldv.addr, align 8
  %50 = load i32, ptr %49, align 4
  %51 = load ptr, ptr %n.addr, align 8
  %52 = load i32, ptr %51, align 4
  %cmp45 = icmp slt i32 %50, %52
  br i1 %cmp45, label %if.then50, label %lor.lhs.false46

lor.lhs.false46:                                  ; preds = %land.lhs.true, %if.else43
  %53 = load i32, ptr %applv, align 4
  %tobool47 = icmp ne i32 %53, 0
  br i1 %tobool47, label %land.lhs.true48, label %if.else51

land.lhs.true48:                                  ; preds = %lor.lhs.false46
  %54 = load ptr, ptr %ldv.addr, align 8
  %55 = load i32, ptr %54, align 4
  %56 = load ptr, ptr %mv.addr, align 8
  %57 = load i32, ptr %56, align 4
  %cmp49 = icmp slt i32 %55, %57
  br i1 %cmp49, label %if.then50, label %if.else51

if.then50:                                        ; preds = %land.lhs.true48, %land.lhs.true
  %58 = load ptr, ptr %info.addr, align 8
  store i32 -11, ptr %58, align 4
  br label %if.end63

if.else51:                                        ; preds = %land.lhs.true48, %lor.lhs.false46
  %59 = load i32, ptr %uctol, align 4
  %tobool52 = icmp ne i32 %59, 0
  br i1 %tobool52, label %land.lhs.true53, label %if.else56

land.lhs.true53:                                  ; preds = %if.else51
  %60 = load ptr, ptr %work.addr, align 8
  %arrayidx = getelementptr inbounds double, ptr %60, i64 1
  %61 = load double, ptr %arrayidx, align 8
  %cmp54 = fcmp ole double %61, 1.000000e+00
  br i1 %cmp54, label %if.then55, label %if.else56

if.then55:                                        ; preds = %land.lhs.true53
  %62 = load ptr, ptr %info.addr, align 8
  store i32 -12, ptr %62, align 4
  br label %if.end62

if.else56:                                        ; preds = %land.lhs.true53, %if.else51
  %63 = load ptr, ptr %m.addr, align 8
  %64 = load i32, ptr %63, align 4
  %65 = load ptr, ptr %n.addr, align 8
  %66 = load i32, ptr %65, align 4
  %add57 = add nsw i32 %64, %66
  store i32 %add57, ptr %i__1, align 4
  %67 = load ptr, ptr %lwork.addr, align 8
  %68 = load i32, ptr %67, align 4
  %69 = load i32, ptr %i__1, align 4
  %cmp58 = icmp sge i32 %69, 6
  br i1 %cmp58, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else56
  %70 = load i32, ptr %i__1, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.else56
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %70, %cond.true ], [ 6, %cond.false ]
  %cmp59 = icmp slt i32 %68, %cond
  br i1 %cmp59, label %if.then60, label %if.else61

if.then60:                                        ; preds = %cond.end
  %71 = load ptr, ptr %info.addr, align 8
  store i32 -13, ptr %71, align 4
  br label %if.end

if.else61:                                        ; preds = %cond.end
  %72 = load ptr, ptr %info.addr, align 8
  store i32 0, ptr %72, align 4
  br label %if.end

if.end:                                           ; preds = %if.else61, %if.then60
  br label %if.end62

if.end62:                                         ; preds = %if.end, %if.then55
  br label %if.end63

if.end63:                                         ; preds = %if.end62, %if.then50
  br label %if.end64

if.end64:                                         ; preds = %if.end63, %if.then42
  br label %if.end65

if.end65:                                         ; preds = %if.end64, %if.then39
  br label %if.end66

if.end66:                                         ; preds = %if.end65, %if.then36
  br label %if.end67

if.end67:                                         ; preds = %if.end66, %if.then31
  br label %if.end68

if.end68:                                         ; preds = %if.end67, %if.then29
  br label %if.end69

if.end69:                                         ; preds = %if.end68, %if.then21
  br label %if.end70

if.end70:                                         ; preds = %if.end69, %if.then
  %73 = load ptr, ptr %info.addr, align 8
  %74 = load i32, ptr %73, align 4
  %cmp71 = icmp ne i32 %74, 0
  br i1 %cmp71, label %if.then72, label %if.end74

if.then72:                                        ; preds = %if.end70
  %75 = load ptr, ptr %info.addr, align 8
  %76 = load i32, ptr %75, align 4
  %sub = sub nsw i32 0, %76
  store i32 %sub, ptr %i__1, align 4
  %call73 = call i32 @xerbla_(ptr noundef @.str.7, ptr noundef %i__1)
  store i32 0, ptr %retval, align 4
  br label %return

if.end74:                                         ; preds = %if.end70
  %77 = load ptr, ptr %m.addr, align 8
  %78 = load i32, ptr %77, align 4
  %cmp75 = icmp eq i32 %78, 0
  br i1 %cmp75, label %if.then78, label %lor.lhs.false76

lor.lhs.false76:                                  ; preds = %if.end74
  %79 = load ptr, ptr %n.addr, align 8
  %80 = load i32, ptr %79, align 4
  %cmp77 = icmp eq i32 %80, 0
  br i1 %cmp77, label %if.then78, label %if.end79

if.then78:                                        ; preds = %lor.lhs.false76, %if.end74
  store i32 0, ptr %retval, align 4
  br label %return

if.end79:                                         ; preds = %lor.lhs.false76
  %81 = load i32, ptr %uctol, align 4
  %tobool80 = icmp ne i32 %81, 0
  br i1 %tobool80, label %if.then81, label %if.else83

if.then81:                                        ; preds = %if.end79
  %82 = load ptr, ptr %work.addr, align 8
  %arrayidx82 = getelementptr inbounds double, ptr %82, i64 1
  %83 = load double, ptr %arrayidx82, align 8
  store double %83, ptr %ctol, align 8
  br label %if.end94

if.else83:                                        ; preds = %if.end79
  %84 = load i32, ptr %lsvec, align 4
  %tobool84 = icmp ne i32 %84, 0
  br i1 %tobool84, label %if.then89, label %lor.lhs.false85

lor.lhs.false85:                                  ; preds = %if.else83
  %85 = load i32, ptr %rsvec, align 4
  %tobool86 = icmp ne i32 %85, 0
  br i1 %tobool86, label %if.then89, label %lor.lhs.false87

lor.lhs.false87:                                  ; preds = %lor.lhs.false85
  %86 = load i32, ptr %applv, align 4
  %tobool88 = icmp ne i32 %86, 0
  br i1 %tobool88, label %if.then89, label %if.else91

if.then89:                                        ; preds = %lor.lhs.false87, %lor.lhs.false85, %if.else83
  %87 = load ptr, ptr %m.addr, align 8
  %88 = load i32, ptr %87, align 4
  %conv = sitofp i32 %88 to double
  %call90 = call double @sqrt(double noundef %conv) #4
  store double %call90, ptr %ctol, align 8
  br label %if.end93

if.else91:                                        ; preds = %lor.lhs.false87
  %89 = load ptr, ptr %m.addr, align 8
  %90 = load i32, ptr %89, align 4
  %conv92 = sitofp i32 %90 to double
  store double %conv92, ptr %ctol, align 8
  br label %if.end93

if.end93:                                         ; preds = %if.else91, %if.then89
  br label %if.end94

if.end94:                                         ; preds = %if.end93, %if.then81
  %call95 = call double @dlamch_(ptr noundef @.str.8)
  store double %call95, ptr %epsln, align 8
  %91 = load double, ptr %epsln, align 8
  %call96 = call double @sqrt(double noundef %91) #4
  store double %call96, ptr %rooteps, align 8
  %call97 = call double @dlamch_(ptr noundef @.str.9)
  store double %call97, ptr %sfmin, align 8
  %92 = load double, ptr %sfmin, align 8
  %call98 = call double @sqrt(double noundef %92) #4
  store double %call98, ptr %rootsfmin, align 8
  %93 = load double, ptr %sfmin, align 8
  %94 = load double, ptr %epsln, align 8
  %div = fdiv double %93, %94
  store double %div, ptr %small, align 8
  %call99 = call double @dlamch_(ptr noundef @.str.10)
  store double %call99, ptr %big, align 8
  %95 = load double, ptr %rootsfmin, align 8
  %div100 = fdiv double 1.000000e+00, %95
  store double %div100, ptr %rootbig, align 8
  %96 = load double, ptr %big, align 8
  %97 = load ptr, ptr %m.addr, align 8
  %98 = load i32, ptr %97, align 4
  %99 = load ptr, ptr %n.addr, align 8
  %100 = load i32, ptr %99, align 4
  %mul = mul nsw i32 %98, %100
  %conv101 = sitofp i32 %mul to double
  %call102 = call double @sqrt(double noundef %conv101) #4
  %div103 = fdiv double %96, %call102
  store double %div103, ptr %large, align 8
  %101 = load double, ptr %rooteps, align 8
  %div104 = fdiv double 1.000000e+00, %101
  store double %div104, ptr %bigtheta, align 8
  %102 = load double, ptr %ctol, align 8
  %103 = load double, ptr %epsln, align 8
  %mul105 = fmul double %102, %103
  store double %mul105, ptr %tol, align 8
  %104 = load double, ptr %tol, align 8
  %call106 = call double @sqrt(double noundef %104) #4
  store double %call106, ptr %roottol, align 8
  %105 = load ptr, ptr %m.addr, align 8
  %106 = load i32, ptr %105, align 4
  %conv107 = sitofp i32 %106 to double
  %107 = load double, ptr %epsln, align 8
  %mul108 = fmul double %conv107, %107
  %cmp109 = fcmp oge double %mul108, 1.000000e+00
  br i1 %cmp109, label %if.then111, label %if.end114

if.then111:                                       ; preds = %if.end94
  %108 = load ptr, ptr %info.addr, align 8
  store i32 -4, ptr %108, align 4
  %109 = load ptr, ptr %info.addr, align 8
  %110 = load i32, ptr %109, align 4
  %sub112 = sub nsw i32 0, %110
  store i32 %sub112, ptr %i__1, align 4
  %call113 = call i32 @xerbla_(ptr noundef @.str.7, ptr noundef %i__1)
  store i32 0, ptr %retval, align 4
  br label %return

if.end114:                                        ; preds = %if.end94
  %111 = load i32, ptr %rsvec, align 4
  %tobool115 = icmp ne i32 %111, 0
  br i1 %tobool115, label %if.then116, label %if.else119

if.then116:                                       ; preds = %if.end114
  %112 = load ptr, ptr %n.addr, align 8
  %113 = load i32, ptr %112, align 4
  store i32 %113, ptr %mvl, align 4
  %114 = load ptr, ptr %n.addr, align 8
  %115 = load ptr, ptr %v.addr, align 8
  %116 = load i32, ptr %v_offset, align 4
  %idxprom = sext i32 %116 to i64
  %arrayidx117 = getelementptr inbounds double, ptr %115, i64 %idxprom
  %117 = load ptr, ptr %ldv.addr, align 8
  %call118 = call i32 @dlaset_(ptr noundef @.str.3, ptr noundef %mvl, ptr noundef %114, ptr noundef @c_b17, ptr noundef @c_b18, ptr noundef %arrayidx117, ptr noundef %117)
  br label %if.end123

if.else119:                                       ; preds = %if.end114
  %118 = load i32, ptr %applv, align 4
  %tobool120 = icmp ne i32 %118, 0
  br i1 %tobool120, label %if.then121, label %if.end122

if.then121:                                       ; preds = %if.else119
  %119 = load ptr, ptr %mv.addr, align 8
  %120 = load i32, ptr %119, align 4
  store i32 %120, ptr %mvl, align 4
  br label %if.end122

if.end122:                                        ; preds = %if.then121, %if.else119
  br label %if.end123

if.end123:                                        ; preds = %if.end122, %if.then116
  %121 = load i32, ptr %rsvec, align 4
  %tobool124 = icmp ne i32 %121, 0
  br i1 %tobool124, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end123
  %122 = load i32, ptr %applv, align 4
  %tobool125 = icmp ne i32 %122, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end123
  %123 = phi i1 [ true, %if.end123 ], [ %tobool125, %lor.rhs ]
  %lor.ext = zext i1 %123 to i32
  store i32 %lor.ext, ptr %rsvec, align 4
  %124 = load ptr, ptr %m.addr, align 8
  %125 = load i32, ptr %124, align 4
  %conv126 = sitofp i32 %125 to double
  %126 = load ptr, ptr %n.addr, align 8
  %127 = load i32, ptr %126, align 4
  %conv127 = sitofp i32 %127 to double
  %mul128 = fmul double %conv126, %conv127
  %call129 = call double @sqrt(double noundef %mul128) #4
  %div130 = fdiv double 1.000000e+00, %call129
  store double %div130, ptr %skl, align 8
  store i32 1, ptr %noscale, align 4
  store i32 1, ptr %goscale, align 4
  %128 = load i32, ptr %lower, align 4
  %tobool131 = icmp ne i32 %128, 0
  br i1 %tobool131, label %if.then132, label %if.else178

if.then132:                                       ; preds = %lor.end
  %129 = load ptr, ptr %n.addr, align 8
  %130 = load i32, ptr %129, align 4
  store i32 %130, ptr %i__1, align 4
  store i32 1, ptr %p, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc175, %if.then132
  %131 = load i32, ptr %p, align 4
  %132 = load i32, ptr %i__1, align 4
  %cmp133 = icmp sle i32 %131, %132
  br i1 %cmp133, label %for.body, label %for.end177

for.body:                                         ; preds = %for.cond
  store double 0.000000e+00, ptr %aapp, align 8
  store double 1.000000e+00, ptr %aaqq, align 8
  %133 = load ptr, ptr %m.addr, align 8
  %134 = load i32, ptr %133, align 4
  %135 = load i32, ptr %p, align 4
  %sub135 = sub nsw i32 %134, %135
  %add136 = add nsw i32 %sub135, 1
  store i32 %add136, ptr %i__2, align 4
  %136 = load ptr, ptr %a.addr, align 8
  %137 = load i32, ptr %p, align 4
  %138 = load i32, ptr %p, align 4
  %139 = load i32, ptr %a_dim1, align 4
  %mul137 = mul nsw i32 %138, %139
  %add138 = add nsw i32 %137, %mul137
  %idxprom139 = sext i32 %add138 to i64
  %arrayidx140 = getelementptr inbounds double, ptr %136, i64 %idxprom139
  %call141 = call i32 @dlassq_(ptr noundef %i__2, ptr noundef %arrayidx140, ptr noundef @c__1, ptr noundef %aapp, ptr noundef %aaqq)
  %140 = load double, ptr %aapp, align 8
  %141 = load double, ptr %big, align 8
  %cmp142 = fcmp ogt double %140, %141
  br i1 %cmp142, label %if.then144, label %if.end147

if.then144:                                       ; preds = %for.body
  %142 = load ptr, ptr %info.addr, align 8
  store i32 -6, ptr %142, align 4
  %143 = load ptr, ptr %info.addr, align 8
  %144 = load i32, ptr %143, align 4
  %sub145 = sub nsw i32 0, %144
  store i32 %sub145, ptr %i__2, align 4
  %call146 = call i32 @xerbla_(ptr noundef @.str.7, ptr noundef %i__2)
  store i32 0, ptr %retval, align 4
  br label %return

if.end147:                                        ; preds = %for.body
  %145 = load double, ptr %aaqq, align 8
  %call148 = call double @sqrt(double noundef %145) #4
  store double %call148, ptr %aaqq, align 8
  %146 = load double, ptr %aapp, align 8
  %147 = load double, ptr %big, align 8
  %148 = load double, ptr %aaqq, align 8
  %div149 = fdiv double %147, %148
  %cmp150 = fcmp olt double %146, %div149
  br i1 %cmp150, label %land.lhs.true152, label %if.else158

land.lhs.true152:                                 ; preds = %if.end147
  %149 = load i32, ptr %noscale, align 4
  %tobool153 = icmp ne i32 %149, 0
  br i1 %tobool153, label %if.then154, label %if.else158

if.then154:                                       ; preds = %land.lhs.true152
  %150 = load double, ptr %aapp, align 8
  %151 = load double, ptr %aaqq, align 8
  %mul155 = fmul double %150, %151
  %152 = load ptr, ptr %sva.addr, align 8
  %153 = load i32, ptr %p, align 4
  %idxprom156 = sext i32 %153 to i64
  %arrayidx157 = getelementptr inbounds double, ptr %152, i64 %idxprom156
  store double %mul155, ptr %arrayidx157, align 8
  br label %if.end174

if.else158:                                       ; preds = %land.lhs.true152, %if.end147
  store i32 0, ptr %noscale, align 4
  %154 = load double, ptr %aapp, align 8
  %155 = load double, ptr %aaqq, align 8
  %156 = load double, ptr %skl, align 8
  %mul159 = fmul double %155, %156
  %mul160 = fmul double %154, %mul159
  %157 = load ptr, ptr %sva.addr, align 8
  %158 = load i32, ptr %p, align 4
  %idxprom161 = sext i32 %158 to i64
  %arrayidx162 = getelementptr inbounds double, ptr %157, i64 %idxprom161
  store double %mul160, ptr %arrayidx162, align 8
  %159 = load i32, ptr %goscale, align 4
  %tobool163 = icmp ne i32 %159, 0
  br i1 %tobool163, label %if.then164, label %if.end173

if.then164:                                       ; preds = %if.else158
  store i32 0, ptr %goscale, align 4
  %160 = load i32, ptr %p, align 4
  %sub165 = sub nsw i32 %160, 1
  store i32 %sub165, ptr %i__2, align 4
  store i32 1, ptr %q, align 4
  br label %for.cond166

for.cond166:                                      ; preds = %for.inc, %if.then164
  %161 = load i32, ptr %q, align 4
  %162 = load i32, ptr %i__2, align 4
  %cmp167 = icmp sle i32 %161, %162
  br i1 %cmp167, label %for.body169, label %for.end

for.body169:                                      ; preds = %for.cond166
  %163 = load double, ptr %skl, align 8
  %164 = load ptr, ptr %sva.addr, align 8
  %165 = load i32, ptr %q, align 4
  %idxprom170 = sext i32 %165 to i64
  %arrayidx171 = getelementptr inbounds double, ptr %164, i64 %idxprom170
  %166 = load double, ptr %arrayidx171, align 8
  %mul172 = fmul double %166, %163
  store double %mul172, ptr %arrayidx171, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body169
  %167 = load i32, ptr %q, align 4
  %inc = add nsw i32 %167, 1
  store i32 %inc, ptr %q, align 4
  br label %for.cond166, !llvm.loop !5

for.end:                                          ; preds = %for.cond166
  br label %if.end173

if.end173:                                        ; preds = %for.end, %if.else158
  br label %if.end174

if.end174:                                        ; preds = %if.end173, %if.then154
  br label %for.inc175

for.inc175:                                       ; preds = %if.end174
  %168 = load i32, ptr %p, align 4
  %inc176 = add nsw i32 %168, 1
  store i32 %inc176, ptr %p, align 4
  br label %for.cond, !llvm.loop !7

for.end177:                                       ; preds = %for.cond
  br label %if.end279

if.else178:                                       ; preds = %lor.end
  %169 = load i32, ptr %upper, align 4
  %tobool179 = icmp ne i32 %169, 0
  br i1 %tobool179, label %if.then180, label %if.else229

if.then180:                                       ; preds = %if.else178
  %170 = load ptr, ptr %n.addr, align 8
  %171 = load i32, ptr %170, align 4
  store i32 %171, ptr %i__1, align 4
  store i32 1, ptr %p, align 4
  br label %for.cond181

for.cond181:                                      ; preds = %for.inc226, %if.then180
  %172 = load i32, ptr %p, align 4
  %173 = load i32, ptr %i__1, align 4
  %cmp182 = icmp sle i32 %172, %173
  br i1 %cmp182, label %for.body184, label %for.end228

for.body184:                                      ; preds = %for.cond181
  store double 0.000000e+00, ptr %aapp, align 8
  store double 1.000000e+00, ptr %aaqq, align 8
  %174 = load ptr, ptr %a.addr, align 8
  %175 = load i32, ptr %p, align 4
  %176 = load i32, ptr %a_dim1, align 4
  %mul185 = mul nsw i32 %175, %176
  %add186 = add nsw i32 %mul185, 1
  %idxprom187 = sext i32 %add186 to i64
  %arrayidx188 = getelementptr inbounds double, ptr %174, i64 %idxprom187
  %call189 = call i32 @dlassq_(ptr noundef %p, ptr noundef %arrayidx188, ptr noundef @c__1, ptr noundef %aapp, ptr noundef %aaqq)
  %177 = load double, ptr %aapp, align 8
  %178 = load double, ptr %big, align 8
  %cmp190 = fcmp ogt double %177, %178
  br i1 %cmp190, label %if.then192, label %if.end195

if.then192:                                       ; preds = %for.body184
  %179 = load ptr, ptr %info.addr, align 8
  store i32 -6, ptr %179, align 4
  %180 = load ptr, ptr %info.addr, align 8
  %181 = load i32, ptr %180, align 4
  %sub193 = sub nsw i32 0, %181
  store i32 %sub193, ptr %i__2, align 4
  %call194 = call i32 @xerbla_(ptr noundef @.str.7, ptr noundef %i__2)
  store i32 0, ptr %retval, align 4
  br label %return

if.end195:                                        ; preds = %for.body184
  %182 = load double, ptr %aaqq, align 8
  %call196 = call double @sqrt(double noundef %182) #4
  store double %call196, ptr %aaqq, align 8
  %183 = load double, ptr %aapp, align 8
  %184 = load double, ptr %big, align 8
  %185 = load double, ptr %aaqq, align 8
  %div197 = fdiv double %184, %185
  %cmp198 = fcmp olt double %183, %div197
  br i1 %cmp198, label %land.lhs.true200, label %if.else206

land.lhs.true200:                                 ; preds = %if.end195
  %186 = load i32, ptr %noscale, align 4
  %tobool201 = icmp ne i32 %186, 0
  br i1 %tobool201, label %if.then202, label %if.else206

if.then202:                                       ; preds = %land.lhs.true200
  %187 = load double, ptr %aapp, align 8
  %188 = load double, ptr %aaqq, align 8
  %mul203 = fmul double %187, %188
  %189 = load ptr, ptr %sva.addr, align 8
  %190 = load i32, ptr %p, align 4
  %idxprom204 = sext i32 %190 to i64
  %arrayidx205 = getelementptr inbounds double, ptr %189, i64 %idxprom204
  store double %mul203, ptr %arrayidx205, align 8
  br label %if.end225

if.else206:                                       ; preds = %land.lhs.true200, %if.end195
  store i32 0, ptr %noscale, align 4
  %191 = load double, ptr %aapp, align 8
  %192 = load double, ptr %aaqq, align 8
  %193 = load double, ptr %skl, align 8
  %mul207 = fmul double %192, %193
  %mul208 = fmul double %191, %mul207
  %194 = load ptr, ptr %sva.addr, align 8
  %195 = load i32, ptr %p, align 4
  %idxprom209 = sext i32 %195 to i64
  %arrayidx210 = getelementptr inbounds double, ptr %194, i64 %idxprom209
  store double %mul208, ptr %arrayidx210, align 8
  %196 = load i32, ptr %goscale, align 4
  %tobool211 = icmp ne i32 %196, 0
  br i1 %tobool211, label %if.then212, label %if.end224

if.then212:                                       ; preds = %if.else206
  store i32 0, ptr %goscale, align 4
  %197 = load i32, ptr %p, align 4
  %sub213 = sub nsw i32 %197, 1
  store i32 %sub213, ptr %i__2, align 4
  store i32 1, ptr %q, align 4
  br label %for.cond214

for.cond214:                                      ; preds = %for.inc221, %if.then212
  %198 = load i32, ptr %q, align 4
  %199 = load i32, ptr %i__2, align 4
  %cmp215 = icmp sle i32 %198, %199
  br i1 %cmp215, label %for.body217, label %for.end223

for.body217:                                      ; preds = %for.cond214
  %200 = load double, ptr %skl, align 8
  %201 = load ptr, ptr %sva.addr, align 8
  %202 = load i32, ptr %q, align 4
  %idxprom218 = sext i32 %202 to i64
  %arrayidx219 = getelementptr inbounds double, ptr %201, i64 %idxprom218
  %203 = load double, ptr %arrayidx219, align 8
  %mul220 = fmul double %203, %200
  store double %mul220, ptr %arrayidx219, align 8
  br label %for.inc221

for.inc221:                                       ; preds = %for.body217
  %204 = load i32, ptr %q, align 4
  %inc222 = add nsw i32 %204, 1
  store i32 %inc222, ptr %q, align 4
  br label %for.cond214, !llvm.loop !8

for.end223:                                       ; preds = %for.cond214
  br label %if.end224

if.end224:                                        ; preds = %for.end223, %if.else206
  br label %if.end225

if.end225:                                        ; preds = %if.end224, %if.then202
  br label %for.inc226

for.inc226:                                       ; preds = %if.end225
  %205 = load i32, ptr %p, align 4
  %inc227 = add nsw i32 %205, 1
  store i32 %inc227, ptr %p, align 4
  br label %for.cond181, !llvm.loop !9

for.end228:                                       ; preds = %for.cond181
  br label %if.end278

if.else229:                                       ; preds = %if.else178
  %206 = load ptr, ptr %n.addr, align 8
  %207 = load i32, ptr %206, align 4
  store i32 %207, ptr %i__1, align 4
  store i32 1, ptr %p, align 4
  br label %for.cond230

for.cond230:                                      ; preds = %for.inc275, %if.else229
  %208 = load i32, ptr %p, align 4
  %209 = load i32, ptr %i__1, align 4
  %cmp231 = icmp sle i32 %208, %209
  br i1 %cmp231, label %for.body233, label %for.end277

for.body233:                                      ; preds = %for.cond230
  store double 0.000000e+00, ptr %aapp, align 8
  store double 1.000000e+00, ptr %aaqq, align 8
  %210 = load ptr, ptr %m.addr, align 8
  %211 = load ptr, ptr %a.addr, align 8
  %212 = load i32, ptr %p, align 4
  %213 = load i32, ptr %a_dim1, align 4
  %mul234 = mul nsw i32 %212, %213
  %add235 = add nsw i32 %mul234, 1
  %idxprom236 = sext i32 %add235 to i64
  %arrayidx237 = getelementptr inbounds double, ptr %211, i64 %idxprom236
  %call238 = call i32 @dlassq_(ptr noundef %210, ptr noundef %arrayidx237, ptr noundef @c__1, ptr noundef %aapp, ptr noundef %aaqq)
  %214 = load double, ptr %aapp, align 8
  %215 = load double, ptr %big, align 8
  %cmp239 = fcmp ogt double %214, %215
  br i1 %cmp239, label %if.then241, label %if.end244

if.then241:                                       ; preds = %for.body233
  %216 = load ptr, ptr %info.addr, align 8
  store i32 -6, ptr %216, align 4
  %217 = load ptr, ptr %info.addr, align 8
  %218 = load i32, ptr %217, align 4
  %sub242 = sub nsw i32 0, %218
  store i32 %sub242, ptr %i__2, align 4
  %call243 = call i32 @xerbla_(ptr noundef @.str.7, ptr noundef %i__2)
  store i32 0, ptr %retval, align 4
  br label %return

if.end244:                                        ; preds = %for.body233
  %219 = load double, ptr %aaqq, align 8
  %call245 = call double @sqrt(double noundef %219) #4
  store double %call245, ptr %aaqq, align 8
  %220 = load double, ptr %aapp, align 8
  %221 = load double, ptr %big, align 8
  %222 = load double, ptr %aaqq, align 8
  %div246 = fdiv double %221, %222
  %cmp247 = fcmp olt double %220, %div246
  br i1 %cmp247, label %land.lhs.true249, label %if.else255

land.lhs.true249:                                 ; preds = %if.end244
  %223 = load i32, ptr %noscale, align 4
  %tobool250 = icmp ne i32 %223, 0
  br i1 %tobool250, label %if.then251, label %if.else255

if.then251:                                       ; preds = %land.lhs.true249
  %224 = load double, ptr %aapp, align 8
  %225 = load double, ptr %aaqq, align 8
  %mul252 = fmul double %224, %225
  %226 = load ptr, ptr %sva.addr, align 8
  %227 = load i32, ptr %p, align 4
  %idxprom253 = sext i32 %227 to i64
  %arrayidx254 = getelementptr inbounds double, ptr %226, i64 %idxprom253
  store double %mul252, ptr %arrayidx254, align 8
  br label %if.end274

if.else255:                                       ; preds = %land.lhs.true249, %if.end244
  store i32 0, ptr %noscale, align 4
  %228 = load double, ptr %aapp, align 8
  %229 = load double, ptr %aaqq, align 8
  %230 = load double, ptr %skl, align 8
  %mul256 = fmul double %229, %230
  %mul257 = fmul double %228, %mul256
  %231 = load ptr, ptr %sva.addr, align 8
  %232 = load i32, ptr %p, align 4
  %idxprom258 = sext i32 %232 to i64
  %arrayidx259 = getelementptr inbounds double, ptr %231, i64 %idxprom258
  store double %mul257, ptr %arrayidx259, align 8
  %233 = load i32, ptr %goscale, align 4
  %tobool260 = icmp ne i32 %233, 0
  br i1 %tobool260, label %if.then261, label %if.end273

if.then261:                                       ; preds = %if.else255
  store i32 0, ptr %goscale, align 4
  %234 = load i32, ptr %p, align 4
  %sub262 = sub nsw i32 %234, 1
  store i32 %sub262, ptr %i__2, align 4
  store i32 1, ptr %q, align 4
  br label %for.cond263

for.cond263:                                      ; preds = %for.inc270, %if.then261
  %235 = load i32, ptr %q, align 4
  %236 = load i32, ptr %i__2, align 4
  %cmp264 = icmp sle i32 %235, %236
  br i1 %cmp264, label %for.body266, label %for.end272

for.body266:                                      ; preds = %for.cond263
  %237 = load double, ptr %skl, align 8
  %238 = load ptr, ptr %sva.addr, align 8
  %239 = load i32, ptr %q, align 4
  %idxprom267 = sext i32 %239 to i64
  %arrayidx268 = getelementptr inbounds double, ptr %238, i64 %idxprom267
  %240 = load double, ptr %arrayidx268, align 8
  %mul269 = fmul double %240, %237
  store double %mul269, ptr %arrayidx268, align 8
  br label %for.inc270

for.inc270:                                       ; preds = %for.body266
  %241 = load i32, ptr %q, align 4
  %inc271 = add nsw i32 %241, 1
  store i32 %inc271, ptr %q, align 4
  br label %for.cond263, !llvm.loop !10

for.end272:                                       ; preds = %for.cond263
  br label %if.end273

if.end273:                                        ; preds = %for.end272, %if.else255
  br label %if.end274

if.end274:                                        ; preds = %if.end273, %if.then251
  br label %for.inc275

for.inc275:                                       ; preds = %if.end274
  %242 = load i32, ptr %p, align 4
  %inc276 = add nsw i32 %242, 1
  store i32 %inc276, ptr %p, align 4
  br label %for.cond230, !llvm.loop !11

for.end277:                                       ; preds = %for.cond230
  br label %if.end278

if.end278:                                        ; preds = %for.end277, %for.end228
  br label %if.end279

if.end279:                                        ; preds = %if.end278, %for.end177
  %243 = load i32, ptr %noscale, align 4
  %tobool280 = icmp ne i32 %243, 0
  br i1 %tobool280, label %if.then281, label %if.end282

if.then281:                                       ; preds = %if.end279
  store double 1.000000e+00, ptr %skl, align 8
  br label %if.end282

if.end282:                                        ; preds = %if.then281, %if.end279
  store double 0.000000e+00, ptr %aapp, align 8
  %244 = load double, ptr %big, align 8
  store double %244, ptr %aaqq, align 8
  %245 = load ptr, ptr %n.addr, align 8
  %246 = load i32, ptr %245, align 4
  store i32 %246, ptr %i__1, align 4
  store i32 1, ptr %p, align 4
  br label %for.cond283

for.cond283:                                      ; preds = %for.inc309, %if.end282
  %247 = load i32, ptr %p, align 4
  %248 = load i32, ptr %i__1, align 4
  %cmp284 = icmp sle i32 %247, %248
  br i1 %cmp284, label %for.body286, label %for.end311

for.body286:                                      ; preds = %for.cond283
  %249 = load ptr, ptr %sva.addr, align 8
  %250 = load i32, ptr %p, align 4
  %idxprom287 = sext i32 %250 to i64
  %arrayidx288 = getelementptr inbounds double, ptr %249, i64 %idxprom287
  %251 = load double, ptr %arrayidx288, align 8
  %cmp289 = fcmp une double %251, 0.000000e+00
  br i1 %cmp289, label %if.then291, label %if.end300

if.then291:                                       ; preds = %for.body286
  %252 = load double, ptr %aaqq, align 8
  store double %252, ptr %d__1, align 8
  %253 = load ptr, ptr %sva.addr, align 8
  %254 = load i32, ptr %p, align 4
  %idxprom292 = sext i32 %254 to i64
  %arrayidx293 = getelementptr inbounds double, ptr %253, i64 %idxprom292
  %255 = load double, ptr %arrayidx293, align 8
  store double %255, ptr %d__2, align 8
  %256 = load double, ptr %d__1, align 8
  %257 = load double, ptr %d__2, align 8
  %cmp294 = fcmp ole double %256, %257
  br i1 %cmp294, label %cond.true296, label %cond.false297

cond.true296:                                     ; preds = %if.then291
  %258 = load double, ptr %d__1, align 8
  br label %cond.end298

cond.false297:                                    ; preds = %if.then291
  %259 = load double, ptr %d__2, align 8
  br label %cond.end298

cond.end298:                                      ; preds = %cond.false297, %cond.true296
  %cond299 = phi double [ %258, %cond.true296 ], [ %259, %cond.false297 ]
  store double %cond299, ptr %aaqq, align 8
  br label %if.end300

if.end300:                                        ; preds = %cond.end298, %for.body286
  %260 = load double, ptr %aapp, align 8
  store double %260, ptr %d__1, align 8
  %261 = load ptr, ptr %sva.addr, align 8
  %262 = load i32, ptr %p, align 4
  %idxprom301 = sext i32 %262 to i64
  %arrayidx302 = getelementptr inbounds double, ptr %261, i64 %idxprom301
  %263 = load double, ptr %arrayidx302, align 8
  store double %263, ptr %d__2, align 8
  %264 = load double, ptr %d__1, align 8
  %265 = load double, ptr %d__2, align 8
  %cmp303 = fcmp oge double %264, %265
  br i1 %cmp303, label %cond.true305, label %cond.false306

cond.true305:                                     ; preds = %if.end300
  %266 = load double, ptr %d__1, align 8
  br label %cond.end307

cond.false306:                                    ; preds = %if.end300
  %267 = load double, ptr %d__2, align 8
  br label %cond.end307

cond.end307:                                      ; preds = %cond.false306, %cond.true305
  %cond308 = phi double [ %266, %cond.true305 ], [ %267, %cond.false306 ]
  store double %cond308, ptr %aapp, align 8
  br label %for.inc309

for.inc309:                                       ; preds = %cond.end307
  %268 = load i32, ptr %p, align 4
  %inc310 = add nsw i32 %268, 1
  store i32 %inc310, ptr %p, align 4
  br label %for.cond283, !llvm.loop !12

for.end311:                                       ; preds = %for.cond283
  %269 = load double, ptr %aapp, align 8
  %cmp312 = fcmp oeq double %269, 0.000000e+00
  br i1 %cmp312, label %if.then314, label %if.end327

if.then314:                                       ; preds = %for.end311
  %270 = load i32, ptr %lsvec, align 4
  %tobool315 = icmp ne i32 %270, 0
  br i1 %tobool315, label %if.then316, label %if.end320

if.then316:                                       ; preds = %if.then314
  %271 = load ptr, ptr %m.addr, align 8
  %272 = load ptr, ptr %n.addr, align 8
  %273 = load ptr, ptr %a.addr, align 8
  %274 = load i32, ptr %a_offset, align 4
  %idxprom317 = sext i32 %274 to i64
  %arrayidx318 = getelementptr inbounds double, ptr %273, i64 %idxprom317
  %275 = load ptr, ptr %lda.addr, align 8
  %call319 = call i32 @dlaset_(ptr noundef @.str.5, ptr noundef %271, ptr noundef %272, ptr noundef @c_b17, ptr noundef @c_b18, ptr noundef %arrayidx318, ptr noundef %275)
  br label %if.end320

if.end320:                                        ; preds = %if.then316, %if.then314
  %276 = load ptr, ptr %work.addr, align 8
  %arrayidx321 = getelementptr inbounds double, ptr %276, i64 1
  store double 1.000000e+00, ptr %arrayidx321, align 8
  %277 = load ptr, ptr %work.addr, align 8
  %arrayidx322 = getelementptr inbounds double, ptr %277, i64 2
  store double 0.000000e+00, ptr %arrayidx322, align 8
  %278 = load ptr, ptr %work.addr, align 8
  %arrayidx323 = getelementptr inbounds double, ptr %278, i64 3
  store double 0.000000e+00, ptr %arrayidx323, align 8
  %279 = load ptr, ptr %work.addr, align 8
  %arrayidx324 = getelementptr inbounds double, ptr %279, i64 4
  store double 0.000000e+00, ptr %arrayidx324, align 8
  %280 = load ptr, ptr %work.addr, align 8
  %arrayidx325 = getelementptr inbounds double, ptr %280, i64 5
  store double 0.000000e+00, ptr %arrayidx325, align 8
  %281 = load ptr, ptr %work.addr, align 8
  %arrayidx326 = getelementptr inbounds double, ptr %281, i64 6
  store double 0.000000e+00, ptr %arrayidx326, align 8
  store i32 0, ptr %retval, align 4
  br label %return

if.end327:                                        ; preds = %for.end311
  %282 = load ptr, ptr %n.addr, align 8
  %283 = load i32, ptr %282, align 4
  %cmp328 = icmp eq i32 %283, 1
  br i1 %cmp328, label %if.then330, label %if.end353

if.then330:                                       ; preds = %if.end327
  %284 = load i32, ptr %lsvec, align 4
  %tobool331 = icmp ne i32 %284, 0
  br i1 %tobool331, label %if.then332, label %if.end338

if.then332:                                       ; preds = %if.then330
  %285 = load ptr, ptr %sva.addr, align 8
  %arrayidx333 = getelementptr inbounds double, ptr %285, i64 1
  %286 = load ptr, ptr %m.addr, align 8
  %287 = load ptr, ptr %a.addr, align 8
  %288 = load i32, ptr %a_dim1, align 4
  %add334 = add nsw i32 %288, 1
  %idxprom335 = sext i32 %add334 to i64
  %arrayidx336 = getelementptr inbounds double, ptr %287, i64 %idxprom335
  %289 = load ptr, ptr %lda.addr, align 8
  %call337 = call i32 @dlascl_(ptr noundef @.str.5, ptr noundef @c__0, ptr noundef @c__0, ptr noundef %arrayidx333, ptr noundef %skl, ptr noundef %286, ptr noundef @c__1, ptr noundef %arrayidx336, ptr noundef %289, ptr noundef %ierr)
  br label %if.end338

if.end338:                                        ; preds = %if.then332, %if.then330
  %290 = load double, ptr %skl, align 8
  %div339 = fdiv double 1.000000e+00, %290
  %291 = load ptr, ptr %work.addr, align 8
  %arrayidx340 = getelementptr inbounds double, ptr %291, i64 1
  store double %div339, ptr %arrayidx340, align 8
  %292 = load ptr, ptr %sva.addr, align 8
  %arrayidx341 = getelementptr inbounds double, ptr %292, i64 1
  %293 = load double, ptr %arrayidx341, align 8
  %294 = load double, ptr %sfmin, align 8
  %cmp342 = fcmp oge double %293, %294
  br i1 %cmp342, label %if.then344, label %if.else346

if.then344:                                       ; preds = %if.end338
  %295 = load ptr, ptr %work.addr, align 8
  %arrayidx345 = getelementptr inbounds double, ptr %295, i64 2
  store double 1.000000e+00, ptr %arrayidx345, align 8
  br label %if.end348

if.else346:                                       ; preds = %if.end338
  %296 = load ptr, ptr %work.addr, align 8
  %arrayidx347 = getelementptr inbounds double, ptr %296, i64 2
  store double 0.000000e+00, ptr %arrayidx347, align 8
  br label %if.end348

if.end348:                                        ; preds = %if.else346, %if.then344
  %297 = load ptr, ptr %work.addr, align 8
  %arrayidx349 = getelementptr inbounds double, ptr %297, i64 3
  store double 0.000000e+00, ptr %arrayidx349, align 8
  %298 = load ptr, ptr %work.addr, align 8
  %arrayidx350 = getelementptr inbounds double, ptr %298, i64 4
  store double 0.000000e+00, ptr %arrayidx350, align 8
  %299 = load ptr, ptr %work.addr, align 8
  %arrayidx351 = getelementptr inbounds double, ptr %299, i64 5
  store double 0.000000e+00, ptr %arrayidx351, align 8
  %300 = load ptr, ptr %work.addr, align 8
  %arrayidx352 = getelementptr inbounds double, ptr %300, i64 6
  store double 0.000000e+00, ptr %arrayidx352, align 8
  store i32 0, ptr %retval, align 4
  br label %return

if.end353:                                        ; preds = %if.end327
  %301 = load double, ptr %sfmin, align 8
  %302 = load double, ptr %epsln, align 8
  %div354 = fdiv double %301, %302
  %call355 = call double @sqrt(double noundef %div354) #4
  store double %call355, ptr %sn, align 8
  %303 = load double, ptr %big, align 8
  %304 = load ptr, ptr %n.addr, align 8
  %305 = load i32, ptr %304, align 4
  %conv356 = sitofp i32 %305 to double
  %div357 = fdiv double %303, %conv356
  %call358 = call double @sqrt(double noundef %div357) #4
  store double %call358, ptr %temp1, align 8
  %306 = load double, ptr %aapp, align 8
  %307 = load double, ptr %sn, align 8
  %cmp359 = fcmp ole double %306, %307
  br i1 %cmp359, label %if.then370, label %lor.lhs.false361

lor.lhs.false361:                                 ; preds = %if.end353
  %308 = load double, ptr %aaqq, align 8
  %309 = load double, ptr %temp1, align 8
  %cmp362 = fcmp oge double %308, %309
  br i1 %cmp362, label %if.then370, label %lor.lhs.false364

lor.lhs.false364:                                 ; preds = %lor.lhs.false361
  %310 = load double, ptr %sn, align 8
  %311 = load double, ptr %aaqq, align 8
  %cmp365 = fcmp ole double %310, %311
  br i1 %cmp365, label %land.lhs.true367, label %if.else378

land.lhs.true367:                                 ; preds = %lor.lhs.false364
  %312 = load double, ptr %aapp, align 8
  %313 = load double, ptr %temp1, align 8
  %cmp368 = fcmp ole double %312, %313
  br i1 %cmp368, label %if.then370, label %if.else378

if.then370:                                       ; preds = %land.lhs.true367, %lor.lhs.false361, %if.end353
  %314 = load double, ptr %big, align 8
  store double %314, ptr %d__1, align 8
  %315 = load double, ptr %temp1, align 8
  %316 = load double, ptr %aapp, align 8
  %div371 = fdiv double %315, %316
  store double %div371, ptr %d__2, align 8
  %317 = load double, ptr %d__1, align 8
  %318 = load double, ptr %d__2, align 8
  %cmp372 = fcmp ole double %317, %318
  br i1 %cmp372, label %cond.true374, label %cond.false375

cond.true374:                                     ; preds = %if.then370
  %319 = load double, ptr %d__1, align 8
  br label %cond.end376

cond.false375:                                    ; preds = %if.then370
  %320 = load double, ptr %d__2, align 8
  br label %cond.end376

cond.end376:                                      ; preds = %cond.false375, %cond.true374
  %cond377 = phi double [ %319, %cond.true374 ], [ %320, %cond.false375 ]
  store double %cond377, ptr %temp1, align 8
  br label %if.end433

if.else378:                                       ; preds = %land.lhs.true367, %lor.lhs.false364
  %321 = load double, ptr %aaqq, align 8
  %322 = load double, ptr %sn, align 8
  %cmp379 = fcmp ole double %321, %322
  br i1 %cmp379, label %land.lhs.true381, label %if.else396

land.lhs.true381:                                 ; preds = %if.else378
  %323 = load double, ptr %aapp, align 8
  %324 = load double, ptr %temp1, align 8
  %cmp382 = fcmp ole double %323, %324
  br i1 %cmp382, label %if.then384, label %if.else396

if.then384:                                       ; preds = %land.lhs.true381
  %325 = load double, ptr %sn, align 8
  %326 = load double, ptr %aaqq, align 8
  %div385 = fdiv double %325, %326
  store double %div385, ptr %d__1, align 8
  %327 = load double, ptr %big, align 8
  %328 = load double, ptr %aapp, align 8
  %329 = load ptr, ptr %n.addr, align 8
  %330 = load i32, ptr %329, align 4
  %conv386 = sitofp i32 %330 to double
  %call387 = call double @sqrt(double noundef %conv386) #4
  %mul388 = fmul double %328, %call387
  %div389 = fdiv double %327, %mul388
  store double %div389, ptr %d__2, align 8
  %331 = load double, ptr %d__1, align 8
  %332 = load double, ptr %d__2, align 8
  %cmp390 = fcmp ole double %331, %332
  br i1 %cmp390, label %cond.true392, label %cond.false393

cond.true392:                                     ; preds = %if.then384
  %333 = load double, ptr %d__1, align 8
  br label %cond.end394

cond.false393:                                    ; preds = %if.then384
  %334 = load double, ptr %d__2, align 8
  br label %cond.end394

cond.end394:                                      ; preds = %cond.false393, %cond.true392
  %cond395 = phi double [ %333, %cond.true392 ], [ %334, %cond.false393 ]
  store double %cond395, ptr %temp1, align 8
  br label %if.end432

if.else396:                                       ; preds = %land.lhs.true381, %if.else378
  %335 = load double, ptr %aaqq, align 8
  %336 = load double, ptr %sn, align 8
  %cmp397 = fcmp oge double %335, %336
  br i1 %cmp397, label %land.lhs.true399, label %if.else411

land.lhs.true399:                                 ; preds = %if.else396
  %337 = load double, ptr %aapp, align 8
  %338 = load double, ptr %temp1, align 8
  %cmp400 = fcmp oge double %337, %338
  br i1 %cmp400, label %if.then402, label %if.else411

if.then402:                                       ; preds = %land.lhs.true399
  %339 = load double, ptr %sn, align 8
  %340 = load double, ptr %aaqq, align 8
  %div403 = fdiv double %339, %340
  store double %div403, ptr %d__1, align 8
  %341 = load double, ptr %temp1, align 8
  %342 = load double, ptr %aapp, align 8
  %div404 = fdiv double %341, %342
  store double %div404, ptr %d__2, align 8
  %343 = load double, ptr %d__1, align 8
  %344 = load double, ptr %d__2, align 8
  %cmp405 = fcmp oge double %343, %344
  br i1 %cmp405, label %cond.true407, label %cond.false408

cond.true407:                                     ; preds = %if.then402
  %345 = load double, ptr %d__1, align 8
  br label %cond.end409

cond.false408:                                    ; preds = %if.then402
  %346 = load double, ptr %d__2, align 8
  br label %cond.end409

cond.end409:                                      ; preds = %cond.false408, %cond.true407
  %cond410 = phi double [ %345, %cond.true407 ], [ %346, %cond.false408 ]
  store double %cond410, ptr %temp1, align 8
  br label %if.end431

if.else411:                                       ; preds = %land.lhs.true399, %if.else396
  %347 = load double, ptr %aaqq, align 8
  %348 = load double, ptr %sn, align 8
  %cmp412 = fcmp ole double %347, %348
  br i1 %cmp412, label %land.lhs.true414, label %if.else429

land.lhs.true414:                                 ; preds = %if.else411
  %349 = load double, ptr %aapp, align 8
  %350 = load double, ptr %temp1, align 8
  %cmp415 = fcmp oge double %349, %350
  br i1 %cmp415, label %if.then417, label %if.else429

if.then417:                                       ; preds = %land.lhs.true414
  %351 = load double, ptr %sn, align 8
  %352 = load double, ptr %aaqq, align 8
  %div418 = fdiv double %351, %352
  store double %div418, ptr %d__1, align 8
  %353 = load double, ptr %big, align 8
  %354 = load ptr, ptr %n.addr, align 8
  %355 = load i32, ptr %354, align 4
  %conv419 = sitofp i32 %355 to double
  %call420 = call double @sqrt(double noundef %conv419) #4
  %356 = load double, ptr %aapp, align 8
  %mul421 = fmul double %call420, %356
  %div422 = fdiv double %353, %mul421
  store double %div422, ptr %d__2, align 8
  %357 = load double, ptr %d__1, align 8
  %358 = load double, ptr %d__2, align 8
  %cmp423 = fcmp ole double %357, %358
  br i1 %cmp423, label %cond.true425, label %cond.false426

cond.true425:                                     ; preds = %if.then417
  %359 = load double, ptr %d__1, align 8
  br label %cond.end427

cond.false426:                                    ; preds = %if.then417
  %360 = load double, ptr %d__2, align 8
  br label %cond.end427

cond.end427:                                      ; preds = %cond.false426, %cond.true425
  %cond428 = phi double [ %359, %cond.true425 ], [ %360, %cond.false426 ]
  store double %cond428, ptr %temp1, align 8
  br label %if.end430

if.else429:                                       ; preds = %land.lhs.true414, %if.else411
  store double 1.000000e+00, ptr %temp1, align 8
  br label %if.end430

if.end430:                                        ; preds = %if.else429, %cond.end427
  br label %if.end431

if.end431:                                        ; preds = %if.end430, %cond.end409
  br label %if.end432

if.end432:                                        ; preds = %if.end431, %cond.end394
  br label %if.end433

if.end433:                                        ; preds = %if.end432, %cond.end376
  %361 = load double, ptr %temp1, align 8
  %cmp434 = fcmp une double %361, 1.000000e+00
  br i1 %cmp434, label %if.then436, label %if.end439

if.then436:                                       ; preds = %if.end433
  %362 = load ptr, ptr %n.addr, align 8
  %363 = load ptr, ptr %sva.addr, align 8
  %arrayidx437 = getelementptr inbounds double, ptr %363, i64 1
  %364 = load ptr, ptr %n.addr, align 8
  %call438 = call i32 @dlascl_(ptr noundef @.str.5, ptr noundef @c__0, ptr noundef @c__0, ptr noundef @c_b18, ptr noundef %temp1, ptr noundef %362, ptr noundef @c__1, ptr noundef %arrayidx437, ptr noundef %364, ptr noundef %ierr)
  br label %if.end439

if.end439:                                        ; preds = %if.then436, %if.end433
  %365 = load double, ptr %temp1, align 8
  %366 = load double, ptr %skl, align 8
  %mul440 = fmul double %365, %366
  store double %mul440, ptr %skl, align 8
  %367 = load double, ptr %skl, align 8
  %cmp441 = fcmp une double %367, 1.000000e+00
  br i1 %cmp441, label %if.then443, label %if.end448

if.then443:                                       ; preds = %if.end439
  %368 = load ptr, ptr %joba.addr, align 8
  %369 = load ptr, ptr %m.addr, align 8
  %370 = load ptr, ptr %n.addr, align 8
  %371 = load ptr, ptr %a.addr, align 8
  %372 = load i32, ptr %a_offset, align 4
  %idxprom444 = sext i32 %372 to i64
  %arrayidx445 = getelementptr inbounds double, ptr %371, i64 %idxprom444
  %373 = load ptr, ptr %lda.addr, align 8
  %call446 = call i32 @dlascl_(ptr noundef %368, ptr noundef @c__0, ptr noundef @c__0, ptr noundef @c_b18, ptr noundef %skl, ptr noundef %369, ptr noundef %370, ptr noundef %arrayidx445, ptr noundef %373, ptr noundef %ierr)
  %374 = load double, ptr %skl, align 8
  %div447 = fdiv double 1.000000e+00, %374
  store double %div447, ptr %skl, align 8
  br label %if.end448

if.end448:                                        ; preds = %if.then443, %if.end439
  %375 = load ptr, ptr %n.addr, align 8
  %376 = load i32, ptr %375, align 4
  %377 = load ptr, ptr %n.addr, align 8
  %378 = load i32, ptr %377, align 4
  %sub449 = sub nsw i32 %378, 1
  %mul450 = mul nsw i32 %376, %sub449
  %div451 = sdiv i32 %mul450, 2
  store i32 %div451, ptr %emptsw, align 4
  store i32 0, ptr %notrot, align 4
  %arrayidx452 = getelementptr inbounds [5 x double], ptr %fastr, i64 0, i64 0
  store double 0.000000e+00, ptr %arrayidx452, align 16
  %379 = load ptr, ptr %n.addr, align 8
  %380 = load i32, ptr %379, align 4
  store i32 %380, ptr %i__1, align 4
  store i32 1, ptr %q, align 4
  br label %for.cond453

for.cond453:                                      ; preds = %for.inc459, %if.end448
  %381 = load i32, ptr %q, align 4
  %382 = load i32, ptr %i__1, align 4
  %cmp454 = icmp sle i32 %381, %382
  br i1 %cmp454, label %for.body456, label %for.end461

for.body456:                                      ; preds = %for.cond453
  %383 = load ptr, ptr %work.addr, align 8
  %384 = load i32, ptr %q, align 4
  %idxprom457 = sext i32 %384 to i64
  %arrayidx458 = getelementptr inbounds double, ptr %383, i64 %idxprom457
  store double 1.000000e+00, ptr %arrayidx458, align 8
  br label %for.inc459

for.inc459:                                       ; preds = %for.body456
  %385 = load i32, ptr %q, align 4
  %inc460 = add nsw i32 %385, 1
  store i32 %inc460, ptr %q, align 4
  br label %for.cond453, !llvm.loop !13

for.end461:                                       ; preds = %for.cond453
  store i32 3, ptr %swband, align 4
  %386 = load ptr, ptr %n.addr, align 8
  %387 = load i32, ptr %386, align 4
  %cmp462 = icmp sle i32 8, %387
  br i1 %cmp462, label %cond.true464, label %cond.false465

cond.true464:                                     ; preds = %for.end461
  br label %cond.end466

cond.false465:                                    ; preds = %for.end461
  %388 = load ptr, ptr %n.addr, align 8
  %389 = load i32, ptr %388, align 4
  br label %cond.end466

cond.end466:                                      ; preds = %cond.false465, %cond.true464
  %cond467 = phi i32 [ 8, %cond.true464 ], [ %389, %cond.false465 ]
  store i32 %cond467, ptr %kbl, align 4
  %390 = load ptr, ptr %n.addr, align 8
  %391 = load i32, ptr %390, align 4
  %392 = load i32, ptr %kbl, align 4
  %div468 = sdiv i32 %391, %392
  store i32 %div468, ptr %nbl, align 4
  %393 = load i32, ptr %nbl, align 4
  %394 = load i32, ptr %kbl, align 4
  %mul469 = mul nsw i32 %393, %394
  %395 = load ptr, ptr %n.addr, align 8
  %396 = load i32, ptr %395, align 4
  %cmp470 = icmp ne i32 %mul469, %396
  br i1 %cmp470, label %if.then472, label %if.end474

if.then472:                                       ; preds = %cond.end466
  %397 = load i32, ptr %nbl, align 4
  %inc473 = add nsw i32 %397, 1
  store i32 %inc473, ptr %nbl, align 4
  br label %if.end474

if.end474:                                        ; preds = %if.then472, %cond.end466
  %398 = load i32, ptr %kbl, align 4
  store i32 %398, ptr %i__1, align 4
  %399 = load i32, ptr %i__1, align 4
  %400 = load i32, ptr %i__1, align 4
  %mul475 = mul nsw i32 %399, %400
  store i32 %mul475, ptr %blskip, align 4
  %401 = load i32, ptr %kbl, align 4
  %cmp476 = icmp sle i32 5, %401
  br i1 %cmp476, label %cond.true478, label %cond.false479

cond.true478:                                     ; preds = %if.end474
  br label %cond.end480

cond.false479:                                    ; preds = %if.end474
  %402 = load i32, ptr %kbl, align 4
  br label %cond.end480

cond.end480:                                      ; preds = %cond.false479, %cond.true478
  %cond481 = phi i32 [ 5, %cond.true478 ], [ %402, %cond.false479 ]
  store i32 %cond481, ptr %rowskip, align 4
  store i32 1, ptr %lkahead, align 4
  store i32 64, ptr %i__1, align 4
  %403 = load i32, ptr %kbl, align 4
  %shl = shl i32 %403, 2
  store i32 %shl, ptr %i__2, align 4
  %404 = load i32, ptr %lower, align 4
  %tobool482 = icmp ne i32 %404, 0
  br i1 %tobool482, label %land.lhs.true485, label %lor.lhs.false483

lor.lhs.false483:                                 ; preds = %cond.end480
  %405 = load i32, ptr %upper, align 4
  %tobool484 = icmp ne i32 %405, 0
  br i1 %tobool484, label %land.lhs.true485, label %if.end704

land.lhs.true485:                                 ; preds = %lor.lhs.false483, %cond.end480
  %406 = load ptr, ptr %n.addr, align 8
  %407 = load i32, ptr %406, align 4
  %408 = load i32, ptr %i__1, align 4
  %409 = load i32, ptr %i__2, align 4
  %cmp486 = icmp sge i32 %408, %409
  br i1 %cmp486, label %cond.true488, label %cond.false489

cond.true488:                                     ; preds = %land.lhs.true485
  %410 = load i32, ptr %i__1, align 4
  br label %cond.end490

cond.false489:                                    ; preds = %land.lhs.true485
  %411 = load i32, ptr %i__2, align 4
  br label %cond.end490

cond.end490:                                      ; preds = %cond.false489, %cond.true488
  %cond491 = phi i32 [ %410, %cond.true488 ], [ %411, %cond.false489 ]
  %cmp492 = icmp sgt i32 %407, %cond491
  br i1 %cmp492, label %if.then494, label %if.end704

if.then494:                                       ; preds = %cond.end490
  %412 = load ptr, ptr %n.addr, align 8
  %413 = load i32, ptr %412, align 4
  %div495 = sdiv i32 %413, 4
  store i32 %div495, ptr %n4, align 4
  %414 = load ptr, ptr %n.addr, align 8
  %415 = load i32, ptr %414, align 4
  %div496 = sdiv i32 %415, 2
  store i32 %div496, ptr %n2, align 4
  %416 = load i32, ptr %n4, align 4
  %mul497 = mul nsw i32 %416, 3
  store i32 %mul497, ptr %n34, align 4
  %417 = load i32, ptr %applv, align 4
  %tobool498 = icmp ne i32 %417, 0
  br i1 %tobool498, label %if.then499, label %if.else500

if.then499:                                       ; preds = %if.then494
  store i32 0, ptr %q, align 4
  br label %if.end501

if.else500:                                       ; preds = %if.then494
  store i32 1, ptr %q, align 4
  br label %if.end501

if.end501:                                        ; preds = %if.else500, %if.then499
  %418 = load i32, ptr %lower, align 4
  %tobool502 = icmp ne i32 %418, 0
  br i1 %tobool502, label %if.then503, label %if.else630

if.then503:                                       ; preds = %if.end501
  %419 = load ptr, ptr %m.addr, align 8
  %420 = load i32, ptr %419, align 4
  %421 = load i32, ptr %n34, align 4
  %sub504 = sub nsw i32 %420, %421
  store i32 %sub504, ptr %i__1, align 4
  %422 = load ptr, ptr %n.addr, align 8
  %423 = load i32, ptr %422, align 4
  %424 = load i32, ptr %n34, align 4
  %sub505 = sub nsw i32 %423, %424
  store i32 %sub505, ptr %i__2, align 4
  %425 = load ptr, ptr %lwork.addr, align 8
  %426 = load i32, ptr %425, align 4
  %427 = load ptr, ptr %n.addr, align 8
  %428 = load i32, ptr %427, align 4
  %sub506 = sub nsw i32 %426, %428
  store i32 %sub506, ptr %i__3, align 4
  %429 = load ptr, ptr %jobv.addr, align 8
  %430 = load ptr, ptr %a.addr, align 8
  %431 = load i32, ptr %n34, align 4
  %add507 = add nsw i32 %431, 1
  %432 = load i32, ptr %n34, align 4
  %add508 = add nsw i32 %432, 1
  %433 = load i32, ptr %a_dim1, align 4
  %mul509 = mul nsw i32 %add508, %433
  %add510 = add nsw i32 %add507, %mul509
  %idxprom511 = sext i32 %add510 to i64
  %arrayidx512 = getelementptr inbounds double, ptr %430, i64 %idxprom511
  %434 = load ptr, ptr %lda.addr, align 8
  %435 = load ptr, ptr %work.addr, align 8
  %436 = load i32, ptr %n34, align 4
  %add513 = add nsw i32 %436, 1
  %idxprom514 = sext i32 %add513 to i64
  %arrayidx515 = getelementptr inbounds double, ptr %435, i64 %idxprom514
  %437 = load ptr, ptr %sva.addr, align 8
  %438 = load i32, ptr %n34, align 4
  %add516 = add nsw i32 %438, 1
  %idxprom517 = sext i32 %add516 to i64
  %arrayidx518 = getelementptr inbounds double, ptr %437, i64 %idxprom517
  %439 = load ptr, ptr %v.addr, align 8
  %440 = load i32, ptr %n34, align 4
  %441 = load i32, ptr %q, align 4
  %mul519 = mul nsw i32 %440, %441
  %add520 = add nsw i32 %mul519, 1
  %442 = load i32, ptr %n34, align 4
  %add521 = add nsw i32 %442, 1
  %443 = load i32, ptr %v_dim1, align 4
  %mul522 = mul nsw i32 %add521, %443
  %add523 = add nsw i32 %add520, %mul522
  %idxprom524 = sext i32 %add523 to i64
  %arrayidx525 = getelementptr inbounds double, ptr %439, i64 %idxprom524
  %444 = load ptr, ptr %ldv.addr, align 8
  %445 = load ptr, ptr %work.addr, align 8
  %446 = load ptr, ptr %n.addr, align 8
  %447 = load i32, ptr %446, align 4
  %add526 = add nsw i32 %447, 1
  %idxprom527 = sext i32 %add526 to i64
  %arrayidx528 = getelementptr inbounds double, ptr %445, i64 %idxprom527
  %call529 = call i32 @dgsvj0_(ptr noundef %429, ptr noundef %i__1, ptr noundef %i__2, ptr noundef %arrayidx512, ptr noundef %434, ptr noundef %arrayidx515, ptr noundef %arrayidx518, ptr noundef %mvl, ptr noundef %arrayidx525, ptr noundef %444, ptr noundef %epsln, ptr noundef %sfmin, ptr noundef %tol, ptr noundef @c__2, ptr noundef %arrayidx528, ptr noundef %i__3, ptr noundef %ierr)
  %448 = load ptr, ptr %m.addr, align 8
  %449 = load i32, ptr %448, align 4
  %450 = load i32, ptr %n2, align 4
  %sub530 = sub nsw i32 %449, %450
  store i32 %sub530, ptr %i__1, align 4
  %451 = load i32, ptr %n34, align 4
  %452 = load i32, ptr %n2, align 4
  %sub531 = sub nsw i32 %451, %452
  store i32 %sub531, ptr %i__2, align 4
  %453 = load ptr, ptr %lwork.addr, align 8
  %454 = load i32, ptr %453, align 4
  %455 = load ptr, ptr %n.addr, align 8
  %456 = load i32, ptr %455, align 4
  %sub532 = sub nsw i32 %454, %456
  store i32 %sub532, ptr %i__3, align 4
  %457 = load ptr, ptr %jobv.addr, align 8
  %458 = load ptr, ptr %a.addr, align 8
  %459 = load i32, ptr %n2, align 4
  %add533 = add nsw i32 %459, 1
  %460 = load i32, ptr %n2, align 4
  %add534 = add nsw i32 %460, 1
  %461 = load i32, ptr %a_dim1, align 4
  %mul535 = mul nsw i32 %add534, %461
  %add536 = add nsw i32 %add533, %mul535
  %idxprom537 = sext i32 %add536 to i64
  %arrayidx538 = getelementptr inbounds double, ptr %458, i64 %idxprom537
  %462 = load ptr, ptr %lda.addr, align 8
  %463 = load ptr, ptr %work.addr, align 8
  %464 = load i32, ptr %n2, align 4
  %add539 = add nsw i32 %464, 1
  %idxprom540 = sext i32 %add539 to i64
  %arrayidx541 = getelementptr inbounds double, ptr %463, i64 %idxprom540
  %465 = load ptr, ptr %sva.addr, align 8
  %466 = load i32, ptr %n2, align 4
  %add542 = add nsw i32 %466, 1
  %idxprom543 = sext i32 %add542 to i64
  %arrayidx544 = getelementptr inbounds double, ptr %465, i64 %idxprom543
  %467 = load ptr, ptr %v.addr, align 8
  %468 = load i32, ptr %n2, align 4
  %469 = load i32, ptr %q, align 4
  %mul545 = mul nsw i32 %468, %469
  %add546 = add nsw i32 %mul545, 1
  %470 = load i32, ptr %n2, align 4
  %add547 = add nsw i32 %470, 1
  %471 = load i32, ptr %v_dim1, align 4
  %mul548 = mul nsw i32 %add547, %471
  %add549 = add nsw i32 %add546, %mul548
  %idxprom550 = sext i32 %add549 to i64
  %arrayidx551 = getelementptr inbounds double, ptr %467, i64 %idxprom550
  %472 = load ptr, ptr %ldv.addr, align 8
  %473 = load ptr, ptr %work.addr, align 8
  %474 = load ptr, ptr %n.addr, align 8
  %475 = load i32, ptr %474, align 4
  %add552 = add nsw i32 %475, 1
  %idxprom553 = sext i32 %add552 to i64
  %arrayidx554 = getelementptr inbounds double, ptr %473, i64 %idxprom553
  %call555 = call i32 @dgsvj0_(ptr noundef %457, ptr noundef %i__1, ptr noundef %i__2, ptr noundef %arrayidx538, ptr noundef %462, ptr noundef %arrayidx541, ptr noundef %arrayidx544, ptr noundef %mvl, ptr noundef %arrayidx551, ptr noundef %472, ptr noundef %epsln, ptr noundef %sfmin, ptr noundef %tol, ptr noundef @c__2, ptr noundef %arrayidx554, ptr noundef %i__3, ptr noundef %ierr)
  %476 = load ptr, ptr %m.addr, align 8
  %477 = load i32, ptr %476, align 4
  %478 = load i32, ptr %n2, align 4
  %sub556 = sub nsw i32 %477, %478
  store i32 %sub556, ptr %i__1, align 4
  %479 = load ptr, ptr %n.addr, align 8
  %480 = load i32, ptr %479, align 4
  %481 = load i32, ptr %n2, align 4
  %sub557 = sub nsw i32 %480, %481
  store i32 %sub557, ptr %i__2, align 4
  %482 = load ptr, ptr %lwork.addr, align 8
  %483 = load i32, ptr %482, align 4
  %484 = load ptr, ptr %n.addr, align 8
  %485 = load i32, ptr %484, align 4
  %sub558 = sub nsw i32 %483, %485
  store i32 %sub558, ptr %i__3, align 4
  %486 = load ptr, ptr %jobv.addr, align 8
  %487 = load ptr, ptr %a.addr, align 8
  %488 = load i32, ptr %n2, align 4
  %add559 = add nsw i32 %488, 1
  %489 = load i32, ptr %n2, align 4
  %add560 = add nsw i32 %489, 1
  %490 = load i32, ptr %a_dim1, align 4
  %mul561 = mul nsw i32 %add560, %490
  %add562 = add nsw i32 %add559, %mul561
  %idxprom563 = sext i32 %add562 to i64
  %arrayidx564 = getelementptr inbounds double, ptr %487, i64 %idxprom563
  %491 = load ptr, ptr %lda.addr, align 8
  %492 = load ptr, ptr %work.addr, align 8
  %493 = load i32, ptr %n2, align 4
  %add565 = add nsw i32 %493, 1
  %idxprom566 = sext i32 %add565 to i64
  %arrayidx567 = getelementptr inbounds double, ptr %492, i64 %idxprom566
  %494 = load ptr, ptr %sva.addr, align 8
  %495 = load i32, ptr %n2, align 4
  %add568 = add nsw i32 %495, 1
  %idxprom569 = sext i32 %add568 to i64
  %arrayidx570 = getelementptr inbounds double, ptr %494, i64 %idxprom569
  %496 = load ptr, ptr %v.addr, align 8
  %497 = load i32, ptr %n2, align 4
  %498 = load i32, ptr %q, align 4
  %mul571 = mul nsw i32 %497, %498
  %add572 = add nsw i32 %mul571, 1
  %499 = load i32, ptr %n2, align 4
  %add573 = add nsw i32 %499, 1
  %500 = load i32, ptr %v_dim1, align 4
  %mul574 = mul nsw i32 %add573, %500
  %add575 = add nsw i32 %add572, %mul574
  %idxprom576 = sext i32 %add575 to i64
  %arrayidx577 = getelementptr inbounds double, ptr %496, i64 %idxprom576
  %501 = load ptr, ptr %ldv.addr, align 8
  %502 = load ptr, ptr %work.addr, align 8
  %503 = load ptr, ptr %n.addr, align 8
  %504 = load i32, ptr %503, align 4
  %add578 = add nsw i32 %504, 1
  %idxprom579 = sext i32 %add578 to i64
  %arrayidx580 = getelementptr inbounds double, ptr %502, i64 %idxprom579
  %call581 = call i32 @dgsvj1_(ptr noundef %486, ptr noundef %i__1, ptr noundef %i__2, ptr noundef %n4, ptr noundef %arrayidx564, ptr noundef %491, ptr noundef %arrayidx567, ptr noundef %arrayidx570, ptr noundef %mvl, ptr noundef %arrayidx577, ptr noundef %501, ptr noundef %epsln, ptr noundef %sfmin, ptr noundef %tol, ptr noundef @c__1, ptr noundef %arrayidx580, ptr noundef %i__3, ptr noundef %ierr)
  %505 = load ptr, ptr %m.addr, align 8
  %506 = load i32, ptr %505, align 4
  %507 = load i32, ptr %n4, align 4
  %sub582 = sub nsw i32 %506, %507
  store i32 %sub582, ptr %i__1, align 4
  %508 = load i32, ptr %n2, align 4
  %509 = load i32, ptr %n4, align 4
  %sub583 = sub nsw i32 %508, %509
  store i32 %sub583, ptr %i__2, align 4
  %510 = load ptr, ptr %lwork.addr, align 8
  %511 = load i32, ptr %510, align 4
  %512 = load ptr, ptr %n.addr, align 8
  %513 = load i32, ptr %512, align 4
  %sub584 = sub nsw i32 %511, %513
  store i32 %sub584, ptr %i__3, align 4
  %514 = load ptr, ptr %jobv.addr, align 8
  %515 = load ptr, ptr %a.addr, align 8
  %516 = load i32, ptr %n4, align 4
  %add585 = add nsw i32 %516, 1
  %517 = load i32, ptr %n4, align 4
  %add586 = add nsw i32 %517, 1
  %518 = load i32, ptr %a_dim1, align 4
  %mul587 = mul nsw i32 %add586, %518
  %add588 = add nsw i32 %add585, %mul587
  %idxprom589 = sext i32 %add588 to i64
  %arrayidx590 = getelementptr inbounds double, ptr %515, i64 %idxprom589
  %519 = load ptr, ptr %lda.addr, align 8
  %520 = load ptr, ptr %work.addr, align 8
  %521 = load i32, ptr %n4, align 4
  %add591 = add nsw i32 %521, 1
  %idxprom592 = sext i32 %add591 to i64
  %arrayidx593 = getelementptr inbounds double, ptr %520, i64 %idxprom592
  %522 = load ptr, ptr %sva.addr, align 8
  %523 = load i32, ptr %n4, align 4
  %add594 = add nsw i32 %523, 1
  %idxprom595 = sext i32 %add594 to i64
  %arrayidx596 = getelementptr inbounds double, ptr %522, i64 %idxprom595
  %524 = load ptr, ptr %v.addr, align 8
  %525 = load i32, ptr %n4, align 4
  %526 = load i32, ptr %q, align 4
  %mul597 = mul nsw i32 %525, %526
  %add598 = add nsw i32 %mul597, 1
  %527 = load i32, ptr %n4, align 4
  %add599 = add nsw i32 %527, 1
  %528 = load i32, ptr %v_dim1, align 4
  %mul600 = mul nsw i32 %add599, %528
  %add601 = add nsw i32 %add598, %mul600
  %idxprom602 = sext i32 %add601 to i64
  %arrayidx603 = getelementptr inbounds double, ptr %524, i64 %idxprom602
  %529 = load ptr, ptr %ldv.addr, align 8
  %530 = load ptr, ptr %work.addr, align 8
  %531 = load ptr, ptr %n.addr, align 8
  %532 = load i32, ptr %531, align 4
  %add604 = add nsw i32 %532, 1
  %idxprom605 = sext i32 %add604 to i64
  %arrayidx606 = getelementptr inbounds double, ptr %530, i64 %idxprom605
  %call607 = call i32 @dgsvj0_(ptr noundef %514, ptr noundef %i__1, ptr noundef %i__2, ptr noundef %arrayidx590, ptr noundef %519, ptr noundef %arrayidx593, ptr noundef %arrayidx596, ptr noundef %mvl, ptr noundef %arrayidx603, ptr noundef %529, ptr noundef %epsln, ptr noundef %sfmin, ptr noundef %tol, ptr noundef @c__1, ptr noundef %arrayidx606, ptr noundef %i__3, ptr noundef %ierr)
  %533 = load ptr, ptr %lwork.addr, align 8
  %534 = load i32, ptr %533, align 4
  %535 = load ptr, ptr %n.addr, align 8
  %536 = load i32, ptr %535, align 4
  %sub608 = sub nsw i32 %534, %536
  store i32 %sub608, ptr %i__1, align 4
  %537 = load ptr, ptr %jobv.addr, align 8
  %538 = load ptr, ptr %m.addr, align 8
  %539 = load ptr, ptr %a.addr, align 8
  %540 = load i32, ptr %a_offset, align 4
  %idxprom609 = sext i32 %540 to i64
  %arrayidx610 = getelementptr inbounds double, ptr %539, i64 %idxprom609
  %541 = load ptr, ptr %lda.addr, align 8
  %542 = load ptr, ptr %work.addr, align 8
  %arrayidx611 = getelementptr inbounds double, ptr %542, i64 1
  %543 = load ptr, ptr %sva.addr, align 8
  %arrayidx612 = getelementptr inbounds double, ptr %543, i64 1
  %544 = load ptr, ptr %v.addr, align 8
  %545 = load i32, ptr %v_offset, align 4
  %idxprom613 = sext i32 %545 to i64
  %arrayidx614 = getelementptr inbounds double, ptr %544, i64 %idxprom613
  %546 = load ptr, ptr %ldv.addr, align 8
  %547 = load ptr, ptr %work.addr, align 8
  %548 = load ptr, ptr %n.addr, align 8
  %549 = load i32, ptr %548, align 4
  %add615 = add nsw i32 %549, 1
  %idxprom616 = sext i32 %add615 to i64
  %arrayidx617 = getelementptr inbounds double, ptr %547, i64 %idxprom616
  %call618 = call i32 @dgsvj0_(ptr noundef %537, ptr noundef %538, ptr noundef %n4, ptr noundef %arrayidx610, ptr noundef %541, ptr noundef %arrayidx611, ptr noundef %arrayidx612, ptr noundef %mvl, ptr noundef %arrayidx614, ptr noundef %546, ptr noundef %epsln, ptr noundef %sfmin, ptr noundef %tol, ptr noundef @c__1, ptr noundef %arrayidx617, ptr noundef %i__1, ptr noundef %ierr)
  %550 = load ptr, ptr %lwork.addr, align 8
  %551 = load i32, ptr %550, align 4
  %552 = load ptr, ptr %n.addr, align 8
  %553 = load i32, ptr %552, align 4
  %sub619 = sub nsw i32 %551, %553
  store i32 %sub619, ptr %i__1, align 4
  %554 = load ptr, ptr %jobv.addr, align 8
  %555 = load ptr, ptr %m.addr, align 8
  %556 = load ptr, ptr %a.addr, align 8
  %557 = load i32, ptr %a_offset, align 4
  %idxprom620 = sext i32 %557 to i64
  %arrayidx621 = getelementptr inbounds double, ptr %556, i64 %idxprom620
  %558 = load ptr, ptr %lda.addr, align 8
  %559 = load ptr, ptr %work.addr, align 8
  %arrayidx622 = getelementptr inbounds double, ptr %559, i64 1
  %560 = load ptr, ptr %sva.addr, align 8
  %arrayidx623 = getelementptr inbounds double, ptr %560, i64 1
  %561 = load ptr, ptr %v.addr, align 8
  %562 = load i32, ptr %v_offset, align 4
  %idxprom624 = sext i32 %562 to i64
  %arrayidx625 = getelementptr inbounds double, ptr %561, i64 %idxprom624
  %563 = load ptr, ptr %ldv.addr, align 8
  %564 = load ptr, ptr %work.addr, align 8
  %565 = load ptr, ptr %n.addr, align 8
  %566 = load i32, ptr %565, align 4
  %add626 = add nsw i32 %566, 1
  %idxprom627 = sext i32 %add626 to i64
  %arrayidx628 = getelementptr inbounds double, ptr %564, i64 %idxprom627
  %call629 = call i32 @dgsvj1_(ptr noundef %554, ptr noundef %555, ptr noundef %n2, ptr noundef %n4, ptr noundef %arrayidx621, ptr noundef %558, ptr noundef %arrayidx622, ptr noundef %arrayidx623, ptr noundef %mvl, ptr noundef %arrayidx625, ptr noundef %563, ptr noundef %epsln, ptr noundef %sfmin, ptr noundef %tol, ptr noundef @c__1, ptr noundef %arrayidx628, ptr noundef %i__1, ptr noundef %ierr)
  br label %if.end703

if.else630:                                       ; preds = %if.end501
  %567 = load i32, ptr %upper, align 4
  %tobool631 = icmp ne i32 %567, 0
  br i1 %tobool631, label %if.then632, label %if.end702

if.then632:                                       ; preds = %if.else630
  %568 = load ptr, ptr %lwork.addr, align 8
  %569 = load i32, ptr %568, align 4
  %570 = load ptr, ptr %n.addr, align 8
  %571 = load i32, ptr %570, align 4
  %sub633 = sub nsw i32 %569, %571
  store i32 %sub633, ptr %i__1, align 4
  %572 = load ptr, ptr %jobv.addr, align 8
  %573 = load ptr, ptr %a.addr, align 8
  %574 = load i32, ptr %a_offset, align 4
  %idxprom634 = sext i32 %574 to i64
  %arrayidx635 = getelementptr inbounds double, ptr %573, i64 %idxprom634
  %575 = load ptr, ptr %lda.addr, align 8
  %576 = load ptr, ptr %work.addr, align 8
  %arrayidx636 = getelementptr inbounds double, ptr %576, i64 1
  %577 = load ptr, ptr %sva.addr, align 8
  %arrayidx637 = getelementptr inbounds double, ptr %577, i64 1
  %578 = load ptr, ptr %v.addr, align 8
  %579 = load i32, ptr %v_offset, align 4
  %idxprom638 = sext i32 %579 to i64
  %arrayidx639 = getelementptr inbounds double, ptr %578, i64 %idxprom638
  %580 = load ptr, ptr %ldv.addr, align 8
  %581 = load ptr, ptr %work.addr, align 8
  %582 = load ptr, ptr %n.addr, align 8
  %583 = load i32, ptr %582, align 4
  %add640 = add nsw i32 %583, 1
  %idxprom641 = sext i32 %add640 to i64
  %arrayidx642 = getelementptr inbounds double, ptr %581, i64 %idxprom641
  %call643 = call i32 @dgsvj0_(ptr noundef %572, ptr noundef %n4, ptr noundef %n4, ptr noundef %arrayidx635, ptr noundef %575, ptr noundef %arrayidx636, ptr noundef %arrayidx637, ptr noundef %mvl, ptr noundef %arrayidx639, ptr noundef %580, ptr noundef %epsln, ptr noundef %sfmin, ptr noundef %tol, ptr noundef @c__2, ptr noundef %arrayidx642, ptr noundef %i__1, ptr noundef %ierr)
  %584 = load ptr, ptr %lwork.addr, align 8
  %585 = load i32, ptr %584, align 4
  %586 = load ptr, ptr %n.addr, align 8
  %587 = load i32, ptr %586, align 4
  %sub644 = sub nsw i32 %585, %587
  store i32 %sub644, ptr %i__1, align 4
  %588 = load ptr, ptr %jobv.addr, align 8
  %589 = load ptr, ptr %a.addr, align 8
  %590 = load i32, ptr %n4, align 4
  %add645 = add nsw i32 %590, 1
  %591 = load i32, ptr %a_dim1, align 4
  %mul646 = mul nsw i32 %add645, %591
  %add647 = add nsw i32 %mul646, 1
  %idxprom648 = sext i32 %add647 to i64
  %arrayidx649 = getelementptr inbounds double, ptr %589, i64 %idxprom648
  %592 = load ptr, ptr %lda.addr, align 8
  %593 = load ptr, ptr %work.addr, align 8
  %594 = load i32, ptr %n4, align 4
  %add650 = add nsw i32 %594, 1
  %idxprom651 = sext i32 %add650 to i64
  %arrayidx652 = getelementptr inbounds double, ptr %593, i64 %idxprom651
  %595 = load ptr, ptr %sva.addr, align 8
  %596 = load i32, ptr %n4, align 4
  %add653 = add nsw i32 %596, 1
  %idxprom654 = sext i32 %add653 to i64
  %arrayidx655 = getelementptr inbounds double, ptr %595, i64 %idxprom654
  %597 = load ptr, ptr %v.addr, align 8
  %598 = load i32, ptr %n4, align 4
  %599 = load i32, ptr %q, align 4
  %mul656 = mul nsw i32 %598, %599
  %add657 = add nsw i32 %mul656, 1
  %600 = load i32, ptr %n4, align 4
  %add658 = add nsw i32 %600, 1
  %601 = load i32, ptr %v_dim1, align 4
  %mul659 = mul nsw i32 %add658, %601
  %add660 = add nsw i32 %add657, %mul659
  %idxprom661 = sext i32 %add660 to i64
  %arrayidx662 = getelementptr inbounds double, ptr %597, i64 %idxprom661
  %602 = load ptr, ptr %ldv.addr, align 8
  %603 = load ptr, ptr %work.addr, align 8
  %604 = load ptr, ptr %n.addr, align 8
  %605 = load i32, ptr %604, align 4
  %add663 = add nsw i32 %605, 1
  %idxprom664 = sext i32 %add663 to i64
  %arrayidx665 = getelementptr inbounds double, ptr %603, i64 %idxprom664
  %call666 = call i32 @dgsvj0_(ptr noundef %588, ptr noundef %n2, ptr noundef %n4, ptr noundef %arrayidx649, ptr noundef %592, ptr noundef %arrayidx652, ptr noundef %arrayidx655, ptr noundef %mvl, ptr noundef %arrayidx662, ptr noundef %602, ptr noundef %epsln, ptr noundef %sfmin, ptr noundef %tol, ptr noundef @c__1, ptr noundef %arrayidx665, ptr noundef %i__1, ptr noundef %ierr)
  %606 = load ptr, ptr %lwork.addr, align 8
  %607 = load i32, ptr %606, align 4
  %608 = load ptr, ptr %n.addr, align 8
  %609 = load i32, ptr %608, align 4
  %sub667 = sub nsw i32 %607, %609
  store i32 %sub667, ptr %i__1, align 4
  %610 = load ptr, ptr %jobv.addr, align 8
  %611 = load ptr, ptr %a.addr, align 8
  %612 = load i32, ptr %a_offset, align 4
  %idxprom668 = sext i32 %612 to i64
  %arrayidx669 = getelementptr inbounds double, ptr %611, i64 %idxprom668
  %613 = load ptr, ptr %lda.addr, align 8
  %614 = load ptr, ptr %work.addr, align 8
  %arrayidx670 = getelementptr inbounds double, ptr %614, i64 1
  %615 = load ptr, ptr %sva.addr, align 8
  %arrayidx671 = getelementptr inbounds double, ptr %615, i64 1
  %616 = load ptr, ptr %v.addr, align 8
  %617 = load i32, ptr %v_offset, align 4
  %idxprom672 = sext i32 %617 to i64
  %arrayidx673 = getelementptr inbounds double, ptr %616, i64 %idxprom672
  %618 = load ptr, ptr %ldv.addr, align 8
  %619 = load ptr, ptr %work.addr, align 8
  %620 = load ptr, ptr %n.addr, align 8
  %621 = load i32, ptr %620, align 4
  %add674 = add nsw i32 %621, 1
  %idxprom675 = sext i32 %add674 to i64
  %arrayidx676 = getelementptr inbounds double, ptr %619, i64 %idxprom675
  %call677 = call i32 @dgsvj1_(ptr noundef %610, ptr noundef %n2, ptr noundef %n2, ptr noundef %n4, ptr noundef %arrayidx669, ptr noundef %613, ptr noundef %arrayidx670, ptr noundef %arrayidx671, ptr noundef %mvl, ptr noundef %arrayidx673, ptr noundef %618, ptr noundef %epsln, ptr noundef %sfmin, ptr noundef %tol, ptr noundef @c__1, ptr noundef %arrayidx676, ptr noundef %i__1, ptr noundef %ierr)
  %622 = load i32, ptr %n2, align 4
  %623 = load i32, ptr %n4, align 4
  %add678 = add nsw i32 %622, %623
  store i32 %add678, ptr %i__1, align 4
  %624 = load ptr, ptr %lwork.addr, align 8
  %625 = load i32, ptr %624, align 4
  %626 = load ptr, ptr %n.addr, align 8
  %627 = load i32, ptr %626, align 4
  %sub679 = sub nsw i32 %625, %627
  store i32 %sub679, ptr %i__2, align 4
  %628 = load ptr, ptr %jobv.addr, align 8
  %629 = load ptr, ptr %a.addr, align 8
  %630 = load i32, ptr %n2, align 4
  %add680 = add nsw i32 %630, 1
  %631 = load i32, ptr %a_dim1, align 4
  %mul681 = mul nsw i32 %add680, %631
  %add682 = add nsw i32 %mul681, 1
  %idxprom683 = sext i32 %add682 to i64
  %arrayidx684 = getelementptr inbounds double, ptr %629, i64 %idxprom683
  %632 = load ptr, ptr %lda.addr, align 8
  %633 = load ptr, ptr %work.addr, align 8
  %634 = load i32, ptr %n2, align 4
  %add685 = add nsw i32 %634, 1
  %idxprom686 = sext i32 %add685 to i64
  %arrayidx687 = getelementptr inbounds double, ptr %633, i64 %idxprom686
  %635 = load ptr, ptr %sva.addr, align 8
  %636 = load i32, ptr %n2, align 4
  %add688 = add nsw i32 %636, 1
  %idxprom689 = sext i32 %add688 to i64
  %arrayidx690 = getelementptr inbounds double, ptr %635, i64 %idxprom689
  %637 = load ptr, ptr %v.addr, align 8
  %638 = load i32, ptr %n2, align 4
  %639 = load i32, ptr %q, align 4
  %mul691 = mul nsw i32 %638, %639
  %add692 = add nsw i32 %mul691, 1
  %640 = load i32, ptr %n2, align 4
  %add693 = add nsw i32 %640, 1
  %641 = load i32, ptr %v_dim1, align 4
  %mul694 = mul nsw i32 %add693, %641
  %add695 = add nsw i32 %add692, %mul694
  %idxprom696 = sext i32 %add695 to i64
  %arrayidx697 = getelementptr inbounds double, ptr %637, i64 %idxprom696
  %642 = load ptr, ptr %ldv.addr, align 8
  %643 = load ptr, ptr %work.addr, align 8
  %644 = load ptr, ptr %n.addr, align 8
  %645 = load i32, ptr %644, align 4
  %add698 = add nsw i32 %645, 1
  %idxprom699 = sext i32 %add698 to i64
  %arrayidx700 = getelementptr inbounds double, ptr %643, i64 %idxprom699
  %call701 = call i32 @dgsvj0_(ptr noundef %628, ptr noundef %i__1, ptr noundef %n4, ptr noundef %arrayidx684, ptr noundef %632, ptr noundef %arrayidx687, ptr noundef %arrayidx690, ptr noundef %mvl, ptr noundef %arrayidx697, ptr noundef %642, ptr noundef %epsln, ptr noundef %sfmin, ptr noundef %tol, ptr noundef @c__1, ptr noundef %arrayidx700, ptr noundef %i__2, ptr noundef %ierr)
  br label %if.end702

if.end702:                                        ; preds = %if.then632, %if.else630
  br label %if.end703

if.end703:                                        ; preds = %if.end702, %if.then503
  br label %if.end704

if.end704:                                        ; preds = %if.end703, %cond.end490, %lor.lhs.false483
  store i32 1, ptr %i__, align 4
  br label %for.cond705

for.cond705:                                      ; preds = %for.inc2588, %if.end704
  %646 = load i32, ptr %i__, align 4
  %cmp706 = icmp sle i32 %646, 30
  br i1 %cmp706, label %for.body708, label %for.end2590

for.body708:                                      ; preds = %for.cond705
  store double 0.000000e+00, ptr %mxaapq, align 8
  store double 0.000000e+00, ptr %mxsinj, align 8
  store i32 0, ptr %iswrot, align 4
  store i32 0, ptr %notrot, align 4
  store i32 0, ptr %pskipped, align 4
  %647 = load i32, ptr %nbl, align 4
  store i32 %647, ptr %i__1, align 4
  store i32 1, ptr %ibr, align 4
  br label %for.cond709

for.cond709:                                      ; preds = %for.inc2520, %for.body708
  %648 = load i32, ptr %ibr, align 4
  %649 = load i32, ptr %i__1, align 4
  %cmp710 = icmp sle i32 %648, %649
  br i1 %cmp710, label %for.body712, label %for.end2522

for.body712:                                      ; preds = %for.cond709
  %650 = load i32, ptr %ibr, align 4
  %sub713 = sub nsw i32 %650, 1
  %651 = load i32, ptr %kbl, align 4
  %mul714 = mul nsw i32 %sub713, %651
  %add715 = add nsw i32 %mul714, 1
  store i32 %add715, ptr %igl, align 4
  %652 = load i32, ptr %lkahead, align 4
  store i32 %652, ptr %i__3, align 4
  %653 = load i32, ptr %nbl, align 4
  %654 = load i32, ptr %ibr, align 4
  %sub716 = sub nsw i32 %653, %654
  store i32 %sub716, ptr %i__4, align 4
  %655 = load i32, ptr %i__3, align 4
  %656 = load i32, ptr %i__4, align 4
  %cmp717 = icmp sle i32 %655, %656
  br i1 %cmp717, label %cond.true719, label %cond.false720

cond.true719:                                     ; preds = %for.body712
  %657 = load i32, ptr %i__3, align 4
  br label %cond.end721

cond.false720:                                    ; preds = %for.body712
  %658 = load i32, ptr %i__4, align 4
  br label %cond.end721

cond.end721:                                      ; preds = %cond.false720, %cond.true719
  %cond722 = phi i32 [ %657, %cond.true719 ], [ %658, %cond.false720 ]
  store i32 %cond722, ptr %i__2, align 4
  store i32 0, ptr %ir1, align 4
  br label %for.cond723

for.cond723:                                      ; preds = %for.inc1606, %cond.end721
  %659 = load i32, ptr %ir1, align 4
  %660 = load i32, ptr %i__2, align 4
  %cmp724 = icmp sle i32 %659, %660
  br i1 %cmp724, label %for.body726, label %for.end1608

for.body726:                                      ; preds = %for.cond723
  %661 = load i32, ptr %ir1, align 4
  %662 = load i32, ptr %kbl, align 4
  %mul727 = mul nsw i32 %661, %662
  %663 = load i32, ptr %igl, align 4
  %add728 = add nsw i32 %663, %mul727
  store i32 %add728, ptr %igl, align 4
  %664 = load i32, ptr %igl, align 4
  %665 = load i32, ptr %kbl, align 4
  %add729 = add nsw i32 %664, %665
  %sub730 = sub nsw i32 %add729, 1
  store i32 %sub730, ptr %i__4, align 4
  %666 = load ptr, ptr %n.addr, align 8
  %667 = load i32, ptr %666, align 4
  %sub731 = sub nsw i32 %667, 1
  store i32 %sub731, ptr %i__5, align 4
  %668 = load i32, ptr %i__4, align 4
  %669 = load i32, ptr %i__5, align 4
  %cmp732 = icmp sle i32 %668, %669
  br i1 %cmp732, label %cond.true734, label %cond.false735

cond.true734:                                     ; preds = %for.body726
  %670 = load i32, ptr %i__4, align 4
  br label %cond.end736

cond.false735:                                    ; preds = %for.body726
  %671 = load i32, ptr %i__5, align 4
  br label %cond.end736

cond.end736:                                      ; preds = %cond.false735, %cond.true734
  %cond737 = phi i32 [ %670, %cond.true734 ], [ %671, %cond.false735 ]
  store i32 %cond737, ptr %i__3, align 4
  %672 = load i32, ptr %igl, align 4
  store i32 %672, ptr %p, align 4
  br label %for.cond738

for.cond738:                                      ; preds = %for.inc1603, %cond.end736
  %673 = load i32, ptr %p, align 4
  %674 = load i32, ptr %i__3, align 4
  %cmp739 = icmp sle i32 %673, %674
  br i1 %cmp739, label %for.body741, label %for.end1605

for.body741:                                      ; preds = %for.cond738
  %675 = load ptr, ptr %n.addr, align 8
  %676 = load i32, ptr %675, align 4
  %677 = load i32, ptr %p, align 4
  %sub742 = sub nsw i32 %676, %677
  %add743 = add nsw i32 %sub742, 1
  store i32 %add743, ptr %i__4, align 4
  %678 = load ptr, ptr %sva.addr, align 8
  %679 = load i32, ptr %p, align 4
  %idxprom744 = sext i32 %679 to i64
  %arrayidx745 = getelementptr inbounds double, ptr %678, i64 %idxprom744
  %call746 = call i32 @idamax_(ptr noundef %i__4, ptr noundef %arrayidx745, ptr noundef @c__1)
  %680 = load i32, ptr %p, align 4
  %add747 = add nsw i32 %call746, %680
  %sub748 = sub nsw i32 %add747, 1
  store i32 %sub748, ptr %q, align 4
  %681 = load i32, ptr %p, align 4
  %682 = load i32, ptr %q, align 4
  %cmp749 = icmp ne i32 %681, %682
  br i1 %cmp749, label %if.then751, label %if.end789

if.then751:                                       ; preds = %for.body741
  %683 = load ptr, ptr %m.addr, align 8
  %684 = load ptr, ptr %a.addr, align 8
  %685 = load i32, ptr %p, align 4
  %686 = load i32, ptr %a_dim1, align 4
  %mul752 = mul nsw i32 %685, %686
  %add753 = add nsw i32 %mul752, 1
  %idxprom754 = sext i32 %add753 to i64
  %arrayidx755 = getelementptr inbounds double, ptr %684, i64 %idxprom754
  %687 = load ptr, ptr %a.addr, align 8
  %688 = load i32, ptr %q, align 4
  %689 = load i32, ptr %a_dim1, align 4
  %mul756 = mul nsw i32 %688, %689
  %add757 = add nsw i32 %mul756, 1
  %idxprom758 = sext i32 %add757 to i64
  %arrayidx759 = getelementptr inbounds double, ptr %687, i64 %idxprom758
  %call760 = call i32 @dswap_(ptr noundef %683, ptr noundef %arrayidx755, ptr noundef @c__1, ptr noundef %arrayidx759, ptr noundef @c__1)
  %690 = load i32, ptr %rsvec, align 4
  %tobool761 = icmp ne i32 %690, 0
  br i1 %tobool761, label %if.then762, label %if.end772

if.then762:                                       ; preds = %if.then751
  %691 = load ptr, ptr %v.addr, align 8
  %692 = load i32, ptr %p, align 4
  %693 = load i32, ptr %v_dim1, align 4
  %mul763 = mul nsw i32 %692, %693
  %add764 = add nsw i32 %mul763, 1
  %idxprom765 = sext i32 %add764 to i64
  %arrayidx766 = getelementptr inbounds double, ptr %691, i64 %idxprom765
  %694 = load ptr, ptr %v.addr, align 8
  %695 = load i32, ptr %q, align 4
  %696 = load i32, ptr %v_dim1, align 4
  %mul767 = mul nsw i32 %695, %696
  %add768 = add nsw i32 %mul767, 1
  %idxprom769 = sext i32 %add768 to i64
  %arrayidx770 = getelementptr inbounds double, ptr %694, i64 %idxprom769
  %call771 = call i32 @dswap_(ptr noundef %mvl, ptr noundef %arrayidx766, ptr noundef @c__1, ptr noundef %arrayidx770, ptr noundef @c__1)
  br label %if.end772

if.end772:                                        ; preds = %if.then762, %if.then751
  %697 = load ptr, ptr %sva.addr, align 8
  %698 = load i32, ptr %p, align 4
  %idxprom773 = sext i32 %698 to i64
  %arrayidx774 = getelementptr inbounds double, ptr %697, i64 %idxprom773
  %699 = load double, ptr %arrayidx774, align 8
  store double %699, ptr %temp1, align 8
  %700 = load ptr, ptr %sva.addr, align 8
  %701 = load i32, ptr %q, align 4
  %idxprom775 = sext i32 %701 to i64
  %arrayidx776 = getelementptr inbounds double, ptr %700, i64 %idxprom775
  %702 = load double, ptr %arrayidx776, align 8
  %703 = load ptr, ptr %sva.addr, align 8
  %704 = load i32, ptr %p, align 4
  %idxprom777 = sext i32 %704 to i64
  %arrayidx778 = getelementptr inbounds double, ptr %703, i64 %idxprom777
  store double %702, ptr %arrayidx778, align 8
  %705 = load double, ptr %temp1, align 8
  %706 = load ptr, ptr %sva.addr, align 8
  %707 = load i32, ptr %q, align 4
  %idxprom779 = sext i32 %707 to i64
  %arrayidx780 = getelementptr inbounds double, ptr %706, i64 %idxprom779
  store double %705, ptr %arrayidx780, align 8
  %708 = load ptr, ptr %work.addr, align 8
  %709 = load i32, ptr %p, align 4
  %idxprom781 = sext i32 %709 to i64
  %arrayidx782 = getelementptr inbounds double, ptr %708, i64 %idxprom781
  %710 = load double, ptr %arrayidx782, align 8
  store double %710, ptr %temp1, align 8
  %711 = load ptr, ptr %work.addr, align 8
  %712 = load i32, ptr %q, align 4
  %idxprom783 = sext i32 %712 to i64
  %arrayidx784 = getelementptr inbounds double, ptr %711, i64 %idxprom783
  %713 = load double, ptr %arrayidx784, align 8
  %714 = load ptr, ptr %work.addr, align 8
  %715 = load i32, ptr %p, align 4
  %idxprom785 = sext i32 %715 to i64
  %arrayidx786 = getelementptr inbounds double, ptr %714, i64 %idxprom785
  store double %713, ptr %arrayidx786, align 8
  %716 = load double, ptr %temp1, align 8
  %717 = load ptr, ptr %work.addr, align 8
  %718 = load i32, ptr %q, align 4
  %idxprom787 = sext i32 %718 to i64
  %arrayidx788 = getelementptr inbounds double, ptr %717, i64 %idxprom787
  store double %716, ptr %arrayidx788, align 8
  br label %if.end789

if.end789:                                        ; preds = %if.end772, %for.body741
  %719 = load i32, ptr %ir1, align 4
  %cmp790 = icmp eq i32 %719, 0
  br i1 %cmp790, label %if.then792, label %if.else829

if.then792:                                       ; preds = %if.end789
  %720 = load ptr, ptr %sva.addr, align 8
  %721 = load i32, ptr %p, align 4
  %idxprom793 = sext i32 %721 to i64
  %arrayidx794 = getelementptr inbounds double, ptr %720, i64 %idxprom793
  %722 = load double, ptr %arrayidx794, align 8
  %723 = load double, ptr %rootbig, align 8
  %cmp795 = fcmp olt double %722, %723
  br i1 %cmp795, label %land.lhs.true797, label %if.else813

land.lhs.true797:                                 ; preds = %if.then792
  %724 = load ptr, ptr %sva.addr, align 8
  %725 = load i32, ptr %p, align 4
  %idxprom798 = sext i32 %725 to i64
  %arrayidx799 = getelementptr inbounds double, ptr %724, i64 %idxprom798
  %726 = load double, ptr %arrayidx799, align 8
  %727 = load double, ptr %rootsfmin, align 8
  %cmp800 = fcmp ogt double %726, %727
  br i1 %cmp800, label %if.then802, label %if.else813

if.then802:                                       ; preds = %land.lhs.true797
  %728 = load ptr, ptr %m.addr, align 8
  %729 = load ptr, ptr %a.addr, align 8
  %730 = load i32, ptr %p, align 4
  %731 = load i32, ptr %a_dim1, align 4
  %mul803 = mul nsw i32 %730, %731
  %add804 = add nsw i32 %mul803, 1
  %idxprom805 = sext i32 %add804 to i64
  %arrayidx806 = getelementptr inbounds double, ptr %729, i64 %idxprom805
  %call807 = call double @dnrm2_(ptr noundef %728, ptr noundef %arrayidx806, ptr noundef @c__1)
  %732 = load ptr, ptr %work.addr, align 8
  %733 = load i32, ptr %p, align 4
  %idxprom808 = sext i32 %733 to i64
  %arrayidx809 = getelementptr inbounds double, ptr %732, i64 %idxprom808
  %734 = load double, ptr %arrayidx809, align 8
  %mul810 = fmul double %call807, %734
  %735 = load ptr, ptr %sva.addr, align 8
  %736 = load i32, ptr %p, align 4
  %idxprom811 = sext i32 %736 to i64
  %arrayidx812 = getelementptr inbounds double, ptr %735, i64 %idxprom811
  store double %mul810, ptr %arrayidx812, align 8
  br label %if.end826

if.else813:                                       ; preds = %land.lhs.true797, %if.then792
  store double 0.000000e+00, ptr %temp1, align 8
  store double 1.000000e+00, ptr %aapp, align 8
  %737 = load ptr, ptr %m.addr, align 8
  %738 = load ptr, ptr %a.addr, align 8
  %739 = load i32, ptr %p, align 4
  %740 = load i32, ptr %a_dim1, align 4
  %mul814 = mul nsw i32 %739, %740
  %add815 = add nsw i32 %mul814, 1
  %idxprom816 = sext i32 %add815 to i64
  %arrayidx817 = getelementptr inbounds double, ptr %738, i64 %idxprom816
  %call818 = call i32 @dlassq_(ptr noundef %737, ptr noundef %arrayidx817, ptr noundef @c__1, ptr noundef %temp1, ptr noundef %aapp)
  %741 = load double, ptr %temp1, align 8
  %742 = load double, ptr %aapp, align 8
  %call819 = call double @sqrt(double noundef %742) #4
  %mul820 = fmul double %741, %call819
  %743 = load ptr, ptr %work.addr, align 8
  %744 = load i32, ptr %p, align 4
  %idxprom821 = sext i32 %744 to i64
  %arrayidx822 = getelementptr inbounds double, ptr %743, i64 %idxprom821
  %745 = load double, ptr %arrayidx822, align 8
  %mul823 = fmul double %mul820, %745
  %746 = load ptr, ptr %sva.addr, align 8
  %747 = load i32, ptr %p, align 4
  %idxprom824 = sext i32 %747 to i64
  %arrayidx825 = getelementptr inbounds double, ptr %746, i64 %idxprom824
  store double %mul823, ptr %arrayidx825, align 8
  br label %if.end826

if.end826:                                        ; preds = %if.else813, %if.then802
  %748 = load ptr, ptr %sva.addr, align 8
  %749 = load i32, ptr %p, align 4
  %idxprom827 = sext i32 %749 to i64
  %arrayidx828 = getelementptr inbounds double, ptr %748, i64 %idxprom827
  %750 = load double, ptr %arrayidx828, align 8
  store double %750, ptr %aapp, align 8
  br label %if.end832

if.else829:                                       ; preds = %if.end789
  %751 = load ptr, ptr %sva.addr, align 8
  %752 = load i32, ptr %p, align 4
  %idxprom830 = sext i32 %752 to i64
  %arrayidx831 = getelementptr inbounds double, ptr %751, i64 %idxprom830
  %753 = load double, ptr %arrayidx831, align 8
  store double %753, ptr %aapp, align 8
  br label %if.end832

if.end832:                                        ; preds = %if.else829, %if.end826
  %754 = load double, ptr %aapp, align 8
  %cmp833 = fcmp ogt double %754, 0.000000e+00
  br i1 %cmp833, label %if.then835, label %if.else1582

if.then835:                                       ; preds = %if.end832
  store i32 0, ptr %pskipped, align 4
  %755 = load i32, ptr %igl, align 4
  %756 = load i32, ptr %kbl, align 4
  %add836 = add nsw i32 %755, %756
  %sub837 = sub nsw i32 %add836, 1
  store i32 %sub837, ptr %i__5, align 4
  %757 = load i32, ptr %i__5, align 4
  %758 = load ptr, ptr %n.addr, align 8
  %759 = load i32, ptr %758, align 4
  %cmp838 = icmp sle i32 %757, %759
  br i1 %cmp838, label %cond.true840, label %cond.false841

cond.true840:                                     ; preds = %if.then835
  %760 = load i32, ptr %i__5, align 4
  br label %cond.end842

cond.false841:                                    ; preds = %if.then835
  %761 = load ptr, ptr %n.addr, align 8
  %762 = load i32, ptr %761, align 4
  br label %cond.end842

cond.end842:                                      ; preds = %cond.false841, %cond.true840
  %cond843 = phi i32 [ %760, %cond.true840 ], [ %762, %cond.false841 ]
  store i32 %cond843, ptr %i__4, align 4
  %763 = load i32, ptr %p, align 4
  %add844 = add nsw i32 %763, 1
  store i32 %add844, ptr %q, align 4
  br label %for.cond845

for.cond845:                                      ; preds = %for.inc1577, %cond.end842
  %764 = load i32, ptr %q, align 4
  %765 = load i32, ptr %i__4, align 4
  %cmp846 = icmp sle i32 %764, %765
  br i1 %cmp846, label %for.body848, label %for.end1579

for.body848:                                      ; preds = %for.cond845
  %766 = load ptr, ptr %sva.addr, align 8
  %767 = load i32, ptr %q, align 4
  %idxprom849 = sext i32 %767 to i64
  %arrayidx850 = getelementptr inbounds double, ptr %766, i64 %idxprom849
  %768 = load double, ptr %arrayidx850, align 8
  store double %768, ptr %aaqq, align 8
  %769 = load double, ptr %aaqq, align 8
  %cmp851 = fcmp ogt double %769, 0.000000e+00
  br i1 %cmp851, label %if.then853, label %if.else1557

if.then853:                                       ; preds = %for.body848
  %770 = load double, ptr %aapp, align 8
  store double %770, ptr %aapp0, align 8
  %771 = load double, ptr %aaqq, align 8
  %cmp854 = fcmp oge double %771, 1.000000e+00
  br i1 %cmp854, label %if.then856, label %if.else909

if.then856:                                       ; preds = %if.then853
  %772 = load double, ptr %small, align 8
  %773 = load double, ptr %aapp, align 8
  %mul857 = fmul double %772, %773
  %774 = load double, ptr %aaqq, align 8
  %cmp858 = fcmp ole double %mul857, %774
  %conv859 = zext i1 %cmp858 to i32
  store i32 %conv859, ptr %rotok, align 4
  %775 = load double, ptr %aapp, align 8
  %776 = load double, ptr %big, align 8
  %777 = load double, ptr %aaqq, align 8
  %div860 = fdiv double %776, %777
  %cmp861 = fcmp olt double %775, %div860
  br i1 %cmp861, label %if.then863, label %if.else881

if.then863:                                       ; preds = %if.then856
  %778 = load ptr, ptr %m.addr, align 8
  %779 = load ptr, ptr %a.addr, align 8
  %780 = load i32, ptr %p, align 4
  %781 = load i32, ptr %a_dim1, align 4
  %mul864 = mul nsw i32 %780, %781
  %add865 = add nsw i32 %mul864, 1
  %idxprom866 = sext i32 %add865 to i64
  %arrayidx867 = getelementptr inbounds double, ptr %779, i64 %idxprom866
  %782 = load ptr, ptr %a.addr, align 8
  %783 = load i32, ptr %q, align 4
  %784 = load i32, ptr %a_dim1, align 4
  %mul868 = mul nsw i32 %783, %784
  %add869 = add nsw i32 %mul868, 1
  %idxprom870 = sext i32 %add869 to i64
  %arrayidx871 = getelementptr inbounds double, ptr %782, i64 %idxprom870
  %call872 = call double @ddot_(ptr noundef %778, ptr noundef %arrayidx867, ptr noundef @c__1, ptr noundef %arrayidx871, ptr noundef @c__1)
  %785 = load ptr, ptr %work.addr, align 8
  %786 = load i32, ptr %p, align 4
  %idxprom873 = sext i32 %786 to i64
  %arrayidx874 = getelementptr inbounds double, ptr %785, i64 %idxprom873
  %787 = load double, ptr %arrayidx874, align 8
  %mul875 = fmul double %call872, %787
  %788 = load ptr, ptr %work.addr, align 8
  %789 = load i32, ptr %q, align 4
  %idxprom876 = sext i32 %789 to i64
  %arrayidx877 = getelementptr inbounds double, ptr %788, i64 %idxprom876
  %790 = load double, ptr %arrayidx877, align 8
  %mul878 = fmul double %mul875, %790
  %791 = load double, ptr %aaqq, align 8
  %div879 = fdiv double %mul878, %791
  %792 = load double, ptr %aapp, align 8
  %div880 = fdiv double %div879, %792
  store double %div880, ptr %aapq, align 8
  br label %if.end908

if.else881:                                       ; preds = %if.then856
  %793 = load ptr, ptr %m.addr, align 8
  %794 = load ptr, ptr %a.addr, align 8
  %795 = load i32, ptr %p, align 4
  %796 = load i32, ptr %a_dim1, align 4
  %mul882 = mul nsw i32 %795, %796
  %add883 = add nsw i32 %mul882, 1
  %idxprom884 = sext i32 %add883 to i64
  %arrayidx885 = getelementptr inbounds double, ptr %794, i64 %idxprom884
  %797 = load ptr, ptr %work.addr, align 8
  %798 = load ptr, ptr %n.addr, align 8
  %799 = load i32, ptr %798, align 4
  %add886 = add nsw i32 %799, 1
  %idxprom887 = sext i32 %add886 to i64
  %arrayidx888 = getelementptr inbounds double, ptr %797, i64 %idxprom887
  %call889 = call i32 @dcopy_(ptr noundef %793, ptr noundef %arrayidx885, ptr noundef @c__1, ptr noundef %arrayidx888, ptr noundef @c__1)
  %800 = load ptr, ptr %work.addr, align 8
  %801 = load i32, ptr %p, align 4
  %idxprom890 = sext i32 %801 to i64
  %arrayidx891 = getelementptr inbounds double, ptr %800, i64 %idxprom890
  %802 = load ptr, ptr %m.addr, align 8
  %803 = load ptr, ptr %work.addr, align 8
  %804 = load ptr, ptr %n.addr, align 8
  %805 = load i32, ptr %804, align 4
  %add892 = add nsw i32 %805, 1
  %idxprom893 = sext i32 %add892 to i64
  %arrayidx894 = getelementptr inbounds double, ptr %803, i64 %idxprom893
  %806 = load ptr, ptr %lda.addr, align 8
  %call895 = call i32 @dlascl_(ptr noundef @.str.5, ptr noundef @c__0, ptr noundef @c__0, ptr noundef %aapp, ptr noundef %arrayidx891, ptr noundef %802, ptr noundef @c__1, ptr noundef %arrayidx894, ptr noundef %806, ptr noundef %ierr)
  %807 = load ptr, ptr %m.addr, align 8
  %808 = load ptr, ptr %work.addr, align 8
  %809 = load ptr, ptr %n.addr, align 8
  %810 = load i32, ptr %809, align 4
  %add896 = add nsw i32 %810, 1
  %idxprom897 = sext i32 %add896 to i64
  %arrayidx898 = getelementptr inbounds double, ptr %808, i64 %idxprom897
  %811 = load ptr, ptr %a.addr, align 8
  %812 = load i32, ptr %q, align 4
  %813 = load i32, ptr %a_dim1, align 4
  %mul899 = mul nsw i32 %812, %813
  %add900 = add nsw i32 %mul899, 1
  %idxprom901 = sext i32 %add900 to i64
  %arrayidx902 = getelementptr inbounds double, ptr %811, i64 %idxprom901
  %call903 = call double @ddot_(ptr noundef %807, ptr noundef %arrayidx898, ptr noundef @c__1, ptr noundef %arrayidx902, ptr noundef @c__1)
  %814 = load ptr, ptr %work.addr, align 8
  %815 = load i32, ptr %q, align 4
  %idxprom904 = sext i32 %815 to i64
  %arrayidx905 = getelementptr inbounds double, ptr %814, i64 %idxprom904
  %816 = load double, ptr %arrayidx905, align 8
  %mul906 = fmul double %call903, %816
  %817 = load double, ptr %aaqq, align 8
  %div907 = fdiv double %mul906, %817
  store double %div907, ptr %aapq, align 8
  br label %if.end908

if.end908:                                        ; preds = %if.else881, %if.then863
  br label %if.end962

if.else909:                                       ; preds = %if.then853
  %818 = load double, ptr %aapp, align 8
  %819 = load double, ptr %aaqq, align 8
  %820 = load double, ptr %small, align 8
  %div910 = fdiv double %819, %820
  %cmp911 = fcmp ole double %818, %div910
  %conv912 = zext i1 %cmp911 to i32
  store i32 %conv912, ptr %rotok, align 4
  %821 = load double, ptr %aapp, align 8
  %822 = load double, ptr %small, align 8
  %823 = load double, ptr %aaqq, align 8
  %div913 = fdiv double %822, %823
  %cmp914 = fcmp ogt double %821, %div913
  br i1 %cmp914, label %if.then916, label %if.else934

if.then916:                                       ; preds = %if.else909
  %824 = load ptr, ptr %m.addr, align 8
  %825 = load ptr, ptr %a.addr, align 8
  %826 = load i32, ptr %p, align 4
  %827 = load i32, ptr %a_dim1, align 4
  %mul917 = mul nsw i32 %826, %827
  %add918 = add nsw i32 %mul917, 1
  %idxprom919 = sext i32 %add918 to i64
  %arrayidx920 = getelementptr inbounds double, ptr %825, i64 %idxprom919
  %828 = load ptr, ptr %a.addr, align 8
  %829 = load i32, ptr %q, align 4
  %830 = load i32, ptr %a_dim1, align 4
  %mul921 = mul nsw i32 %829, %830
  %add922 = add nsw i32 %mul921, 1
  %idxprom923 = sext i32 %add922 to i64
  %arrayidx924 = getelementptr inbounds double, ptr %828, i64 %idxprom923
  %call925 = call double @ddot_(ptr noundef %824, ptr noundef %arrayidx920, ptr noundef @c__1, ptr noundef %arrayidx924, ptr noundef @c__1)
  %831 = load ptr, ptr %work.addr, align 8
  %832 = load i32, ptr %p, align 4
  %idxprom926 = sext i32 %832 to i64
  %arrayidx927 = getelementptr inbounds double, ptr %831, i64 %idxprom926
  %833 = load double, ptr %arrayidx927, align 8
  %mul928 = fmul double %call925, %833
  %834 = load ptr, ptr %work.addr, align 8
  %835 = load i32, ptr %q, align 4
  %idxprom929 = sext i32 %835 to i64
  %arrayidx930 = getelementptr inbounds double, ptr %834, i64 %idxprom929
  %836 = load double, ptr %arrayidx930, align 8
  %mul931 = fmul double %mul928, %836
  %837 = load double, ptr %aaqq, align 8
  %div932 = fdiv double %mul931, %837
  %838 = load double, ptr %aapp, align 8
  %div933 = fdiv double %div932, %838
  store double %div933, ptr %aapq, align 8
  br label %if.end961

if.else934:                                       ; preds = %if.else909
  %839 = load ptr, ptr %m.addr, align 8
  %840 = load ptr, ptr %a.addr, align 8
  %841 = load i32, ptr %q, align 4
  %842 = load i32, ptr %a_dim1, align 4
  %mul935 = mul nsw i32 %841, %842
  %add936 = add nsw i32 %mul935, 1
  %idxprom937 = sext i32 %add936 to i64
  %arrayidx938 = getelementptr inbounds double, ptr %840, i64 %idxprom937
  %843 = load ptr, ptr %work.addr, align 8
  %844 = load ptr, ptr %n.addr, align 8
  %845 = load i32, ptr %844, align 4
  %add939 = add nsw i32 %845, 1
  %idxprom940 = sext i32 %add939 to i64
  %arrayidx941 = getelementptr inbounds double, ptr %843, i64 %idxprom940
  %call942 = call i32 @dcopy_(ptr noundef %839, ptr noundef %arrayidx938, ptr noundef @c__1, ptr noundef %arrayidx941, ptr noundef @c__1)
  %846 = load ptr, ptr %work.addr, align 8
  %847 = load i32, ptr %q, align 4
  %idxprom943 = sext i32 %847 to i64
  %arrayidx944 = getelementptr inbounds double, ptr %846, i64 %idxprom943
  %848 = load ptr, ptr %m.addr, align 8
  %849 = load ptr, ptr %work.addr, align 8
  %850 = load ptr, ptr %n.addr, align 8
  %851 = load i32, ptr %850, align 4
  %add945 = add nsw i32 %851, 1
  %idxprom946 = sext i32 %add945 to i64
  %arrayidx947 = getelementptr inbounds double, ptr %849, i64 %idxprom946
  %852 = load ptr, ptr %lda.addr, align 8
  %call948 = call i32 @dlascl_(ptr noundef @.str.5, ptr noundef @c__0, ptr noundef @c__0, ptr noundef %aaqq, ptr noundef %arrayidx944, ptr noundef %848, ptr noundef @c__1, ptr noundef %arrayidx947, ptr noundef %852, ptr noundef %ierr)
  %853 = load ptr, ptr %m.addr, align 8
  %854 = load ptr, ptr %work.addr, align 8
  %855 = load ptr, ptr %n.addr, align 8
  %856 = load i32, ptr %855, align 4
  %add949 = add nsw i32 %856, 1
  %idxprom950 = sext i32 %add949 to i64
  %arrayidx951 = getelementptr inbounds double, ptr %854, i64 %idxprom950
  %857 = load ptr, ptr %a.addr, align 8
  %858 = load i32, ptr %p, align 4
  %859 = load i32, ptr %a_dim1, align 4
  %mul952 = mul nsw i32 %858, %859
  %add953 = add nsw i32 %mul952, 1
  %idxprom954 = sext i32 %add953 to i64
  %arrayidx955 = getelementptr inbounds double, ptr %857, i64 %idxprom954
  %call956 = call double @ddot_(ptr noundef %853, ptr noundef %arrayidx951, ptr noundef @c__1, ptr noundef %arrayidx955, ptr noundef @c__1)
  %860 = load ptr, ptr %work.addr, align 8
  %861 = load i32, ptr %p, align 4
  %idxprom957 = sext i32 %861 to i64
  %arrayidx958 = getelementptr inbounds double, ptr %860, i64 %idxprom957
  %862 = load double, ptr %arrayidx958, align 8
  %mul959 = fmul double %call956, %862
  %863 = load double, ptr %aapp, align 8
  %div960 = fdiv double %mul959, %863
  store double %div960, ptr %aapq, align 8
  br label %if.end961

if.end961:                                        ; preds = %if.else934, %if.then916
  br label %if.end962

if.end962:                                        ; preds = %if.end961, %if.end908
  %864 = load double, ptr %mxaapq, align 8
  store double %864, ptr %d__1, align 8
  %865 = load double, ptr %aapq, align 8
  %cmp963 = fcmp oge double %865, 0.000000e+00
  br i1 %cmp963, label %cond.true965, label %cond.false966

cond.true965:                                     ; preds = %if.end962
  %866 = load double, ptr %aapq, align 8
  br label %cond.end967

cond.false966:                                    ; preds = %if.end962
  %867 = load double, ptr %aapq, align 8
  %fneg = fneg double %867
  br label %cond.end967

cond.end967:                                      ; preds = %cond.false966, %cond.true965
  %cond968 = phi double [ %866, %cond.true965 ], [ %fneg, %cond.false966 ]
  store double %cond968, ptr %d__2, align 8
  %868 = load double, ptr %d__1, align 8
  %869 = load double, ptr %d__2, align 8
  %cmp969 = fcmp oge double %868, %869
  br i1 %cmp969, label %cond.true971, label %cond.false972

cond.true971:                                     ; preds = %cond.end967
  %870 = load double, ptr %d__1, align 8
  br label %cond.end973

cond.false972:                                    ; preds = %cond.end967
  %871 = load double, ptr %d__2, align 8
  br label %cond.end973

cond.end973:                                      ; preds = %cond.false972, %cond.true971
  %cond974 = phi double [ %870, %cond.true971 ], [ %871, %cond.false972 ]
  store double %cond974, ptr %mxaapq, align 8
  %872 = load double, ptr %aapq, align 8
  %cmp975 = fcmp oge double %872, 0.000000e+00
  br i1 %cmp975, label %cond.true977, label %cond.false978

cond.true977:                                     ; preds = %cond.end973
  %873 = load double, ptr %aapq, align 8
  br label %cond.end980

cond.false978:                                    ; preds = %cond.end973
  %874 = load double, ptr %aapq, align 8
  %fneg979 = fneg double %874
  br label %cond.end980

cond.end980:                                      ; preds = %cond.false978, %cond.true977
  %cond981 = phi double [ %873, %cond.true977 ], [ %fneg979, %cond.false978 ]
  %875 = load double, ptr %tol, align 8
  %cmp982 = fcmp ogt double %cond981, %875
  br i1 %cmp982, label %if.then984, label %if.else1549

if.then984:                                       ; preds = %cond.end980
  %876 = load i32, ptr %ir1, align 4
  %cmp985 = icmp eq i32 %876, 0
  br i1 %cmp985, label %if.then987, label %if.end989

if.then987:                                       ; preds = %if.then984
  store i32 0, ptr %notrot, align 4
  store i32 0, ptr %pskipped, align 4
  %877 = load i32, ptr %iswrot, align 4
  %inc988 = add nsw i32 %877, 1
  store i32 %inc988, ptr %iswrot, align 4
  br label %if.end989

if.end989:                                        ; preds = %if.then987, %if.then984
  %878 = load i32, ptr %rotok, align 4
  %tobool990 = icmp ne i32 %878, 0
  br i1 %tobool990, label %if.then991, label %if.else1421

if.then991:                                       ; preds = %if.end989
  %879 = load double, ptr %aaqq, align 8
  %880 = load double, ptr %aapp, align 8
  %div992 = fdiv double %879, %880
  store double %div992, ptr %aqoap, align 8
  %881 = load double, ptr %aapp, align 8
  %882 = load double, ptr %aaqq, align 8
  %div993 = fdiv double %881, %882
  store double %div993, ptr %apoaq, align 8
  %883 = load double, ptr %aqoap, align 8
  %884 = load double, ptr %apoaq, align 8
  %sub994 = fsub double %883, %884
  store double %sub994, ptr %d__1, align 8
  %885 = load double, ptr %d__1, align 8
  %cmp995 = fcmp oge double %885, 0.000000e+00
  br i1 %cmp995, label %cond.true997, label %cond.false998

cond.true997:                                     ; preds = %if.then991
  %886 = load double, ptr %d__1, align 8
  br label %cond.end1000

cond.false998:                                    ; preds = %if.then991
  %887 = load double, ptr %d__1, align 8
  %fneg999 = fneg double %887
  br label %cond.end1000

cond.end1000:                                     ; preds = %cond.false998, %cond.true997
  %cond1001 = phi double [ %886, %cond.true997 ], [ %fneg999, %cond.false998 ]
  %mul1002 = fmul double %cond1001, -5.000000e-01
  %888 = load double, ptr %aapq, align 8
  %div1003 = fdiv double %mul1002, %888
  store double %div1003, ptr %theta, align 8
  %889 = load double, ptr %theta, align 8
  %cmp1004 = fcmp oge double %889, 0.000000e+00
  br i1 %cmp1004, label %cond.true1006, label %cond.false1007

cond.true1006:                                    ; preds = %cond.end1000
  %890 = load double, ptr %theta, align 8
  br label %cond.end1009

cond.false1007:                                   ; preds = %cond.end1000
  %891 = load double, ptr %theta, align 8
  %fneg1008 = fneg double %891
  br label %cond.end1009

cond.end1009:                                     ; preds = %cond.false1007, %cond.true1006
  %cond1010 = phi double [ %890, %cond.true1006 ], [ %fneg1008, %cond.false1007 ]
  %892 = load double, ptr %bigtheta, align 8
  %cmp1011 = fcmp ogt double %cond1010, %892
  br i1 %cmp1011, label %if.then1013, label %if.else1087

if.then1013:                                      ; preds = %cond.end1009
  %893 = load double, ptr %theta, align 8
  %div1014 = fdiv double 5.000000e-01, %893
  store double %div1014, ptr %t, align 8
  %894 = load double, ptr %t, align 8
  %895 = load ptr, ptr %work.addr, align 8
  %896 = load i32, ptr %p, align 4
  %idxprom1015 = sext i32 %896 to i64
  %arrayidx1016 = getelementptr inbounds double, ptr %895, i64 %idxprom1015
  %897 = load double, ptr %arrayidx1016, align 8
  %mul1017 = fmul double %894, %897
  %898 = load ptr, ptr %work.addr, align 8
  %899 = load i32, ptr %q, align 4
  %idxprom1018 = sext i32 %899 to i64
  %arrayidx1019 = getelementptr inbounds double, ptr %898, i64 %idxprom1018
  %900 = load double, ptr %arrayidx1019, align 8
  %div1020 = fdiv double %mul1017, %900
  %arrayidx1021 = getelementptr inbounds [5 x double], ptr %fastr, i64 0, i64 2
  store double %div1020, ptr %arrayidx1021, align 16
  %901 = load double, ptr %t, align 8
  %fneg1022 = fneg double %901
  %902 = load ptr, ptr %work.addr, align 8
  %903 = load i32, ptr %q, align 4
  %idxprom1023 = sext i32 %903 to i64
  %arrayidx1024 = getelementptr inbounds double, ptr %902, i64 %idxprom1023
  %904 = load double, ptr %arrayidx1024, align 8
  %mul1025 = fmul double %fneg1022, %904
  %905 = load ptr, ptr %work.addr, align 8
  %906 = load i32, ptr %p, align 4
  %idxprom1026 = sext i32 %906 to i64
  %arrayidx1027 = getelementptr inbounds double, ptr %905, i64 %idxprom1026
  %907 = load double, ptr %arrayidx1027, align 8
  %div1028 = fdiv double %mul1025, %907
  %arrayidx1029 = getelementptr inbounds [5 x double], ptr %fastr, i64 0, i64 3
  store double %div1028, ptr %arrayidx1029, align 8
  %908 = load ptr, ptr %m.addr, align 8
  %909 = load ptr, ptr %a.addr, align 8
  %910 = load i32, ptr %p, align 4
  %911 = load i32, ptr %a_dim1, align 4
  %mul1030 = mul nsw i32 %910, %911
  %add1031 = add nsw i32 %mul1030, 1
  %idxprom1032 = sext i32 %add1031 to i64
  %arrayidx1033 = getelementptr inbounds double, ptr %909, i64 %idxprom1032
  %912 = load ptr, ptr %a.addr, align 8
  %913 = load i32, ptr %q, align 4
  %914 = load i32, ptr %a_dim1, align 4
  %mul1034 = mul nsw i32 %913, %914
  %add1035 = add nsw i32 %mul1034, 1
  %idxprom1036 = sext i32 %add1035 to i64
  %arrayidx1037 = getelementptr inbounds double, ptr %912, i64 %idxprom1036
  %arraydecay = getelementptr inbounds [5 x double], ptr %fastr, i64 0, i64 0
  %call1038 = call i32 @drotm_(ptr noundef %908, ptr noundef %arrayidx1033, ptr noundef @c__1, ptr noundef %arrayidx1037, ptr noundef @c__1, ptr noundef %arraydecay)
  %915 = load i32, ptr %rsvec, align 4
  %tobool1039 = icmp ne i32 %915, 0
  br i1 %tobool1039, label %if.then1040, label %if.end1051

if.then1040:                                      ; preds = %if.then1013
  %916 = load ptr, ptr %v.addr, align 8
  %917 = load i32, ptr %p, align 4
  %918 = load i32, ptr %v_dim1, align 4
  %mul1041 = mul nsw i32 %917, %918
  %add1042 = add nsw i32 %mul1041, 1
  %idxprom1043 = sext i32 %add1042 to i64
  %arrayidx1044 = getelementptr inbounds double, ptr %916, i64 %idxprom1043
  %919 = load ptr, ptr %v.addr, align 8
  %920 = load i32, ptr %q, align 4
  %921 = load i32, ptr %v_dim1, align 4
  %mul1045 = mul nsw i32 %920, %921
  %add1046 = add nsw i32 %mul1045, 1
  %idxprom1047 = sext i32 %add1046 to i64
  %arrayidx1048 = getelementptr inbounds double, ptr %919, i64 %idxprom1047
  %arraydecay1049 = getelementptr inbounds [5 x double], ptr %fastr, i64 0, i64 0
  %call1050 = call i32 @drotm_(ptr noundef %mvl, ptr noundef %arrayidx1044, ptr noundef @c__1, ptr noundef %arrayidx1048, ptr noundef @c__1, ptr noundef %arraydecay1049)
  br label %if.end1051

if.end1051:                                       ; preds = %if.then1040, %if.then1013
  store double 0.000000e+00, ptr %d__1, align 8
  %922 = load double, ptr %t, align 8
  %923 = load double, ptr %apoaq, align 8
  %mul1052 = fmul double %922, %923
  %924 = load double, ptr %aapq, align 8
  %925 = call double @llvm.fmuladd.f64(double %mul1052, double %924, double 1.000000e+00)
  store double %925, ptr %d__2, align 8
  %926 = load double, ptr %aaqq, align 8
  %927 = load double, ptr %d__1, align 8
  %928 = load double, ptr %d__2, align 8
  %cmp1054 = fcmp oge double %927, %928
  br i1 %cmp1054, label %cond.true1056, label %cond.false1057

cond.true1056:                                    ; preds = %if.end1051
  %929 = load double, ptr %d__1, align 8
  br label %cond.end1058

cond.false1057:                                   ; preds = %if.end1051
  %930 = load double, ptr %d__2, align 8
  br label %cond.end1058

cond.end1058:                                     ; preds = %cond.false1057, %cond.true1056
  %cond1059 = phi double [ %929, %cond.true1056 ], [ %930, %cond.false1057 ]
  %call1060 = call double @sqrt(double noundef %cond1059) #4
  %mul1061 = fmul double %926, %call1060
  %931 = load ptr, ptr %sva.addr, align 8
  %932 = load i32, ptr %q, align 4
  %idxprom1062 = sext i32 %932 to i64
  %arrayidx1063 = getelementptr inbounds double, ptr %931, i64 %idxprom1062
  store double %mul1061, ptr %arrayidx1063, align 8
  store double 0.000000e+00, ptr %d__1, align 8
  %933 = load double, ptr %t, align 8
  %934 = load double, ptr %aqoap, align 8
  %mul1064 = fmul double %933, %934
  %935 = load double, ptr %aapq, align 8
  %neg = fneg double %mul1064
  %936 = call double @llvm.fmuladd.f64(double %neg, double %935, double 1.000000e+00)
  store double %936, ptr %d__2, align 8
  %937 = load double, ptr %d__1, align 8
  %938 = load double, ptr %d__2, align 8
  %cmp1066 = fcmp oge double %937, %938
  br i1 %cmp1066, label %cond.true1068, label %cond.false1069

cond.true1068:                                    ; preds = %cond.end1058
  %939 = load double, ptr %d__1, align 8
  br label %cond.end1070

cond.false1069:                                   ; preds = %cond.end1058
  %940 = load double, ptr %d__2, align 8
  br label %cond.end1070

cond.end1070:                                     ; preds = %cond.false1069, %cond.true1068
  %cond1071 = phi double [ %939, %cond.true1068 ], [ %940, %cond.false1069 ]
  %call1072 = call double @sqrt(double noundef %cond1071) #4
  %941 = load double, ptr %aapp, align 8
  %mul1073 = fmul double %941, %call1072
  store double %mul1073, ptr %aapp, align 8
  %942 = load double, ptr %mxsinj, align 8
  store double %942, ptr %d__1, align 8
  %943 = load double, ptr %t, align 8
  %cmp1074 = fcmp oge double %943, 0.000000e+00
  br i1 %cmp1074, label %cond.true1076, label %cond.false1077

cond.true1076:                                    ; preds = %cond.end1070
  %944 = load double, ptr %t, align 8
  br label %cond.end1079

cond.false1077:                                   ; preds = %cond.end1070
  %945 = load double, ptr %t, align 8
  %fneg1078 = fneg double %945
  br label %cond.end1079

cond.end1079:                                     ; preds = %cond.false1077, %cond.true1076
  %cond1080 = phi double [ %944, %cond.true1076 ], [ %fneg1078, %cond.false1077 ]
  store double %cond1080, ptr %d__2, align 8
  %946 = load double, ptr %d__1, align 8
  %947 = load double, ptr %d__2, align 8
  %cmp1081 = fcmp oge double %946, %947
  br i1 %cmp1081, label %cond.true1083, label %cond.false1084

cond.true1083:                                    ; preds = %cond.end1079
  %948 = load double, ptr %d__1, align 8
  br label %cond.end1085

cond.false1084:                                   ; preds = %cond.end1079
  %949 = load double, ptr %d__2, align 8
  br label %cond.end1085

cond.end1085:                                     ; preds = %cond.false1084, %cond.true1083
  %cond1086 = phi double [ %948, %cond.true1083 ], [ %949, %cond.false1084 ]
  store double %cond1086, ptr %mxsinj, align 8
  br label %if.end1420

if.else1087:                                      ; preds = %cond.end1009
  %call1088 = call double @d_sign(ptr noundef @c_b18, ptr noundef %aapq)
  %fneg1089 = fneg double %call1088
  store double %fneg1089, ptr %thsign, align 8
  %950 = load double, ptr %theta, align 8
  %951 = load double, ptr %thsign, align 8
  %952 = load double, ptr %theta, align 8
  %953 = load double, ptr %theta, align 8
  %954 = call double @llvm.fmuladd.f64(double %952, double %953, double 1.000000e+00)
  %call1091 = call double @sqrt(double noundef %954) #4
  %955 = call double @llvm.fmuladd.f64(double %951, double %call1091, double %950)
  %div1093 = fdiv double 1.000000e+00, %955
  store double %div1093, ptr %t, align 8
  %956 = load double, ptr %t, align 8
  %957 = load double, ptr %t, align 8
  %958 = call double @llvm.fmuladd.f64(double %956, double %957, double 1.000000e+00)
  %div1095 = fdiv double 1.000000e+00, %958
  %call1096 = call double @sqrt(double noundef %div1095) #4
  store double %call1096, ptr %cs, align 8
  %959 = load double, ptr %t, align 8
  %960 = load double, ptr %cs, align 8
  %mul1097 = fmul double %959, %960
  store double %mul1097, ptr %sn, align 8
  %961 = load double, ptr %mxsinj, align 8
  store double %961, ptr %d__1, align 8
  %962 = load double, ptr %sn, align 8
  %cmp1098 = fcmp oge double %962, 0.000000e+00
  br i1 %cmp1098, label %cond.true1100, label %cond.false1101

cond.true1100:                                    ; preds = %if.else1087
  %963 = load double, ptr %sn, align 8
  br label %cond.end1103

cond.false1101:                                   ; preds = %if.else1087
  %964 = load double, ptr %sn, align 8
  %fneg1102 = fneg double %964
  br label %cond.end1103

cond.end1103:                                     ; preds = %cond.false1101, %cond.true1100
  %cond1104 = phi double [ %963, %cond.true1100 ], [ %fneg1102, %cond.false1101 ]
  store double %cond1104, ptr %d__2, align 8
  %965 = load double, ptr %d__1, align 8
  %966 = load double, ptr %d__2, align 8
  %cmp1105 = fcmp oge double %965, %966
  br i1 %cmp1105, label %cond.true1107, label %cond.false1108

cond.true1107:                                    ; preds = %cond.end1103
  %967 = load double, ptr %d__1, align 8
  br label %cond.end1109

cond.false1108:                                   ; preds = %cond.end1103
  %968 = load double, ptr %d__2, align 8
  br label %cond.end1109

cond.end1109:                                     ; preds = %cond.false1108, %cond.true1107
  %cond1110 = phi double [ %967, %cond.true1107 ], [ %968, %cond.false1108 ]
  store double %cond1110, ptr %mxsinj, align 8
  store double 0.000000e+00, ptr %d__1, align 8
  %969 = load double, ptr %t, align 8
  %970 = load double, ptr %apoaq, align 8
  %mul1111 = fmul double %969, %970
  %971 = load double, ptr %aapq, align 8
  %972 = call double @llvm.fmuladd.f64(double %mul1111, double %971, double 1.000000e+00)
  store double %972, ptr %d__2, align 8
  %973 = load double, ptr %aaqq, align 8
  %974 = load double, ptr %d__1, align 8
  %975 = load double, ptr %d__2, align 8
  %cmp1113 = fcmp oge double %974, %975
  br i1 %cmp1113, label %cond.true1115, label %cond.false1116

cond.true1115:                                    ; preds = %cond.end1109
  %976 = load double, ptr %d__1, align 8
  br label %cond.end1117

cond.false1116:                                   ; preds = %cond.end1109
  %977 = load double, ptr %d__2, align 8
  br label %cond.end1117

cond.end1117:                                     ; preds = %cond.false1116, %cond.true1115
  %cond1118 = phi double [ %976, %cond.true1115 ], [ %977, %cond.false1116 ]
  %call1119 = call double @sqrt(double noundef %cond1118) #4
  %mul1120 = fmul double %973, %call1119
  %978 = load ptr, ptr %sva.addr, align 8
  %979 = load i32, ptr %q, align 4
  %idxprom1121 = sext i32 %979 to i64
  %arrayidx1122 = getelementptr inbounds double, ptr %978, i64 %idxprom1121
  store double %mul1120, ptr %arrayidx1122, align 8
  store double 0.000000e+00, ptr %d__1, align 8
  %980 = load double, ptr %t, align 8
  %981 = load double, ptr %aqoap, align 8
  %mul1123 = fmul double %980, %981
  %982 = load double, ptr %aapq, align 8
  %neg1125 = fneg double %mul1123
  %983 = call double @llvm.fmuladd.f64(double %neg1125, double %982, double 1.000000e+00)
  store double %983, ptr %d__2, align 8
  %984 = load double, ptr %d__1, align 8
  %985 = load double, ptr %d__2, align 8
  %cmp1126 = fcmp oge double %984, %985
  br i1 %cmp1126, label %cond.true1128, label %cond.false1129

cond.true1128:                                    ; preds = %cond.end1117
  %986 = load double, ptr %d__1, align 8
  br label %cond.end1130

cond.false1129:                                   ; preds = %cond.end1117
  %987 = load double, ptr %d__2, align 8
  br label %cond.end1130

cond.end1130:                                     ; preds = %cond.false1129, %cond.true1128
  %cond1131 = phi double [ %986, %cond.true1128 ], [ %987, %cond.false1129 ]
  %call1132 = call double @sqrt(double noundef %cond1131) #4
  %988 = load double, ptr %aapp, align 8
  %mul1133 = fmul double %988, %call1132
  store double %mul1133, ptr %aapp, align 8
  %989 = load ptr, ptr %work.addr, align 8
  %990 = load i32, ptr %p, align 4
  %idxprom1134 = sext i32 %990 to i64
  %arrayidx1135 = getelementptr inbounds double, ptr %989, i64 %idxprom1134
  %991 = load double, ptr %arrayidx1135, align 8
  %992 = load ptr, ptr %work.addr, align 8
  %993 = load i32, ptr %q, align 4
  %idxprom1136 = sext i32 %993 to i64
  %arrayidx1137 = getelementptr inbounds double, ptr %992, i64 %idxprom1136
  %994 = load double, ptr %arrayidx1137, align 8
  %div1138 = fdiv double %991, %994
  store double %div1138, ptr %apoaq, align 8
  %995 = load ptr, ptr %work.addr, align 8
  %996 = load i32, ptr %q, align 4
  %idxprom1139 = sext i32 %996 to i64
  %arrayidx1140 = getelementptr inbounds double, ptr %995, i64 %idxprom1139
  %997 = load double, ptr %arrayidx1140, align 8
  %998 = load ptr, ptr %work.addr, align 8
  %999 = load i32, ptr %p, align 4
  %idxprom1141 = sext i32 %999 to i64
  %arrayidx1142 = getelementptr inbounds double, ptr %998, i64 %idxprom1141
  %1000 = load double, ptr %arrayidx1142, align 8
  %div1143 = fdiv double %997, %1000
  store double %div1143, ptr %aqoap, align 8
  %1001 = load ptr, ptr %work.addr, align 8
  %1002 = load i32, ptr %p, align 4
  %idxprom1144 = sext i32 %1002 to i64
  %arrayidx1145 = getelementptr inbounds double, ptr %1001, i64 %idxprom1144
  %1003 = load double, ptr %arrayidx1145, align 8
  %cmp1146 = fcmp oge double %1003, 1.000000e+00
  br i1 %cmp1146, label %if.then1148, label %if.else1243

if.then1148:                                      ; preds = %cond.end1130
  %1004 = load ptr, ptr %work.addr, align 8
  %1005 = load i32, ptr %q, align 4
  %idxprom1149 = sext i32 %1005 to i64
  %arrayidx1150 = getelementptr inbounds double, ptr %1004, i64 %idxprom1149
  %1006 = load double, ptr %arrayidx1150, align 8
  %cmp1151 = fcmp oge double %1006, 1.000000e+00
  br i1 %cmp1151, label %if.then1153, label %if.else1188

if.then1153:                                      ; preds = %if.then1148
  %1007 = load double, ptr %t, align 8
  %1008 = load double, ptr %apoaq, align 8
  %mul1154 = fmul double %1007, %1008
  %arrayidx1155 = getelementptr inbounds [5 x double], ptr %fastr, i64 0, i64 2
  store double %mul1154, ptr %arrayidx1155, align 16
  %1009 = load double, ptr %t, align 8
  %fneg1156 = fneg double %1009
  %1010 = load double, ptr %aqoap, align 8
  %mul1157 = fmul double %fneg1156, %1010
  %arrayidx1158 = getelementptr inbounds [5 x double], ptr %fastr, i64 0, i64 3
  store double %mul1157, ptr %arrayidx1158, align 8
  %1011 = load double, ptr %cs, align 8
  %1012 = load ptr, ptr %work.addr, align 8
  %1013 = load i32, ptr %p, align 4
  %idxprom1159 = sext i32 %1013 to i64
  %arrayidx1160 = getelementptr inbounds double, ptr %1012, i64 %idxprom1159
  %1014 = load double, ptr %arrayidx1160, align 8
  %mul1161 = fmul double %1014, %1011
  store double %mul1161, ptr %arrayidx1160, align 8
  %1015 = load double, ptr %cs, align 8
  %1016 = load ptr, ptr %work.addr, align 8
  %1017 = load i32, ptr %q, align 4
  %idxprom1162 = sext i32 %1017 to i64
  %arrayidx1163 = getelementptr inbounds double, ptr %1016, i64 %idxprom1162
  %1018 = load double, ptr %arrayidx1163, align 8
  %mul1164 = fmul double %1018, %1015
  store double %mul1164, ptr %arrayidx1163, align 8
  %1019 = load ptr, ptr %m.addr, align 8
  %1020 = load ptr, ptr %a.addr, align 8
  %1021 = load i32, ptr %p, align 4
  %1022 = load i32, ptr %a_dim1, align 4
  %mul1165 = mul nsw i32 %1021, %1022
  %add1166 = add nsw i32 %mul1165, 1
  %idxprom1167 = sext i32 %add1166 to i64
  %arrayidx1168 = getelementptr inbounds double, ptr %1020, i64 %idxprom1167
  %1023 = load ptr, ptr %a.addr, align 8
  %1024 = load i32, ptr %q, align 4
  %1025 = load i32, ptr %a_dim1, align 4
  %mul1169 = mul nsw i32 %1024, %1025
  %add1170 = add nsw i32 %mul1169, 1
  %idxprom1171 = sext i32 %add1170 to i64
  %arrayidx1172 = getelementptr inbounds double, ptr %1023, i64 %idxprom1171
  %arraydecay1173 = getelementptr inbounds [5 x double], ptr %fastr, i64 0, i64 0
  %call1174 = call i32 @drotm_(ptr noundef %1019, ptr noundef %arrayidx1168, ptr noundef @c__1, ptr noundef %arrayidx1172, ptr noundef @c__1, ptr noundef %arraydecay1173)
  %1026 = load i32, ptr %rsvec, align 4
  %tobool1175 = icmp ne i32 %1026, 0
  br i1 %tobool1175, label %if.then1176, label %if.end1187

if.then1176:                                      ; preds = %if.then1153
  %1027 = load ptr, ptr %v.addr, align 8
  %1028 = load i32, ptr %p, align 4
  %1029 = load i32, ptr %v_dim1, align 4
  %mul1177 = mul nsw i32 %1028, %1029
  %add1178 = add nsw i32 %mul1177, 1
  %idxprom1179 = sext i32 %add1178 to i64
  %arrayidx1180 = getelementptr inbounds double, ptr %1027, i64 %idxprom1179
  %1030 = load ptr, ptr %v.addr, align 8
  %1031 = load i32, ptr %q, align 4
  %1032 = load i32, ptr %v_dim1, align 4
  %mul1181 = mul nsw i32 %1031, %1032
  %add1182 = add nsw i32 %mul1181, 1
  %idxprom1183 = sext i32 %add1182 to i64
  %arrayidx1184 = getelementptr inbounds double, ptr %1030, i64 %idxprom1183
  %arraydecay1185 = getelementptr inbounds [5 x double], ptr %fastr, i64 0, i64 0
  %call1186 = call i32 @drotm_(ptr noundef %mvl, ptr noundef %arrayidx1180, ptr noundef @c__1, ptr noundef %arrayidx1184, ptr noundef @c__1, ptr noundef %arraydecay1185)
  br label %if.end1187

if.end1187:                                       ; preds = %if.then1176, %if.then1153
  br label %if.end1242

if.else1188:                                      ; preds = %if.then1148
  %1033 = load double, ptr %t, align 8
  %fneg1189 = fneg double %1033
  %1034 = load double, ptr %aqoap, align 8
  %mul1190 = fmul double %fneg1189, %1034
  store double %mul1190, ptr %d__1, align 8
  %1035 = load ptr, ptr %m.addr, align 8
  %1036 = load ptr, ptr %a.addr, align 8
  %1037 = load i32, ptr %q, align 4
  %1038 = load i32, ptr %a_dim1, align 4
  %mul1191 = mul nsw i32 %1037, %1038
  %add1192 = add nsw i32 %mul1191, 1
  %idxprom1193 = sext i32 %add1192 to i64
  %arrayidx1194 = getelementptr inbounds double, ptr %1036, i64 %idxprom1193
  %1039 = load ptr, ptr %a.addr, align 8
  %1040 = load i32, ptr %p, align 4
  %1041 = load i32, ptr %a_dim1, align 4
  %mul1195 = mul nsw i32 %1040, %1041
  %add1196 = add nsw i32 %mul1195, 1
  %idxprom1197 = sext i32 %add1196 to i64
  %arrayidx1198 = getelementptr inbounds double, ptr %1039, i64 %idxprom1197
  %call1199 = call i32 @daxpy_(ptr noundef %1035, ptr noundef %d__1, ptr noundef %arrayidx1194, ptr noundef @c__1, ptr noundef %arrayidx1198, ptr noundef @c__1)
  %1042 = load double, ptr %cs, align 8
  %1043 = load double, ptr %sn, align 8
  %mul1200 = fmul double %1042, %1043
  %1044 = load double, ptr %apoaq, align 8
  %mul1201 = fmul double %mul1200, %1044
  store double %mul1201, ptr %d__1, align 8
  %1045 = load ptr, ptr %m.addr, align 8
  %1046 = load ptr, ptr %a.addr, align 8
  %1047 = load i32, ptr %p, align 4
  %1048 = load i32, ptr %a_dim1, align 4
  %mul1202 = mul nsw i32 %1047, %1048
  %add1203 = add nsw i32 %mul1202, 1
  %idxprom1204 = sext i32 %add1203 to i64
  %arrayidx1205 = getelementptr inbounds double, ptr %1046, i64 %idxprom1204
  %1049 = load ptr, ptr %a.addr, align 8
  %1050 = load i32, ptr %q, align 4
  %1051 = load i32, ptr %a_dim1, align 4
  %mul1206 = mul nsw i32 %1050, %1051
  %add1207 = add nsw i32 %mul1206, 1
  %idxprom1208 = sext i32 %add1207 to i64
  %arrayidx1209 = getelementptr inbounds double, ptr %1049, i64 %idxprom1208
  %call1210 = call i32 @daxpy_(ptr noundef %1045, ptr noundef %d__1, ptr noundef %arrayidx1205, ptr noundef @c__1, ptr noundef %arrayidx1209, ptr noundef @c__1)
  %1052 = load double, ptr %cs, align 8
  %1053 = load ptr, ptr %work.addr, align 8
  %1054 = load i32, ptr %p, align 4
  %idxprom1211 = sext i32 %1054 to i64
  %arrayidx1212 = getelementptr inbounds double, ptr %1053, i64 %idxprom1211
  %1055 = load double, ptr %arrayidx1212, align 8
  %mul1213 = fmul double %1055, %1052
  store double %mul1213, ptr %arrayidx1212, align 8
  %1056 = load double, ptr %cs, align 8
  %1057 = load ptr, ptr %work.addr, align 8
  %1058 = load i32, ptr %q, align 4
  %idxprom1214 = sext i32 %1058 to i64
  %arrayidx1215 = getelementptr inbounds double, ptr %1057, i64 %idxprom1214
  %1059 = load double, ptr %arrayidx1215, align 8
  %div1216 = fdiv double %1059, %1056
  store double %div1216, ptr %arrayidx1215, align 8
  %1060 = load i32, ptr %rsvec, align 4
  %tobool1217 = icmp ne i32 %1060, 0
  br i1 %tobool1217, label %if.then1218, label %if.end1241

if.then1218:                                      ; preds = %if.else1188
  %1061 = load double, ptr %t, align 8
  %fneg1219 = fneg double %1061
  %1062 = load double, ptr %aqoap, align 8
  %mul1220 = fmul double %fneg1219, %1062
  store double %mul1220, ptr %d__1, align 8
  %1063 = load ptr, ptr %v.addr, align 8
  %1064 = load i32, ptr %q, align 4
  %1065 = load i32, ptr %v_dim1, align 4
  %mul1221 = mul nsw i32 %1064, %1065
  %add1222 = add nsw i32 %mul1221, 1
  %idxprom1223 = sext i32 %add1222 to i64
  %arrayidx1224 = getelementptr inbounds double, ptr %1063, i64 %idxprom1223
  %1066 = load ptr, ptr %v.addr, align 8
  %1067 = load i32, ptr %p, align 4
  %1068 = load i32, ptr %v_dim1, align 4
  %mul1225 = mul nsw i32 %1067, %1068
  %add1226 = add nsw i32 %mul1225, 1
  %idxprom1227 = sext i32 %add1226 to i64
  %arrayidx1228 = getelementptr inbounds double, ptr %1066, i64 %idxprom1227
  %call1229 = call i32 @daxpy_(ptr noundef %mvl, ptr noundef %d__1, ptr noundef %arrayidx1224, ptr noundef @c__1, ptr noundef %arrayidx1228, ptr noundef @c__1)
  %1069 = load double, ptr %cs, align 8
  %1070 = load double, ptr %sn, align 8
  %mul1230 = fmul double %1069, %1070
  %1071 = load double, ptr %apoaq, align 8
  %mul1231 = fmul double %mul1230, %1071
  store double %mul1231, ptr %d__1, align 8
  %1072 = load ptr, ptr %v.addr, align 8
  %1073 = load i32, ptr %p, align 4
  %1074 = load i32, ptr %v_dim1, align 4
  %mul1232 = mul nsw i32 %1073, %1074
  %add1233 = add nsw i32 %mul1232, 1
  %idxprom1234 = sext i32 %add1233 to i64
  %arrayidx1235 = getelementptr inbounds double, ptr %1072, i64 %idxprom1234
  %1075 = load ptr, ptr %v.addr, align 8
  %1076 = load i32, ptr %q, align 4
  %1077 = load i32, ptr %v_dim1, align 4
  %mul1236 = mul nsw i32 %1076, %1077
  %add1237 = add nsw i32 %mul1236, 1
  %idxprom1238 = sext i32 %add1237 to i64
  %arrayidx1239 = getelementptr inbounds double, ptr %1075, i64 %idxprom1238
  %call1240 = call i32 @daxpy_(ptr noundef %mvl, ptr noundef %d__1, ptr noundef %arrayidx1235, ptr noundef @c__1, ptr noundef %arrayidx1239, ptr noundef @c__1)
  br label %if.end1241

if.end1241:                                       ; preds = %if.then1218, %if.else1188
  br label %if.end1242

if.end1242:                                       ; preds = %if.end1241, %if.end1187
  br label %if.end1419

if.else1243:                                      ; preds = %cond.end1130
  %1078 = load ptr, ptr %work.addr, align 8
  %1079 = load i32, ptr %q, align 4
  %idxprom1244 = sext i32 %1079 to i64
  %arrayidx1245 = getelementptr inbounds double, ptr %1078, i64 %idxprom1244
  %1080 = load double, ptr %arrayidx1245, align 8
  %cmp1246 = fcmp oge double %1080, 1.000000e+00
  br i1 %cmp1246, label %if.then1248, label %if.else1302

if.then1248:                                      ; preds = %if.else1243
  %1081 = load double, ptr %t, align 8
  %1082 = load double, ptr %apoaq, align 8
  %mul1249 = fmul double %1081, %1082
  store double %mul1249, ptr %d__1, align 8
  %1083 = load ptr, ptr %m.addr, align 8
  %1084 = load ptr, ptr %a.addr, align 8
  %1085 = load i32, ptr %p, align 4
  %1086 = load i32, ptr %a_dim1, align 4
  %mul1250 = mul nsw i32 %1085, %1086
  %add1251 = add nsw i32 %mul1250, 1
  %idxprom1252 = sext i32 %add1251 to i64
  %arrayidx1253 = getelementptr inbounds double, ptr %1084, i64 %idxprom1252
  %1087 = load ptr, ptr %a.addr, align 8
  %1088 = load i32, ptr %q, align 4
  %1089 = load i32, ptr %a_dim1, align 4
  %mul1254 = mul nsw i32 %1088, %1089
  %add1255 = add nsw i32 %mul1254, 1
  %idxprom1256 = sext i32 %add1255 to i64
  %arrayidx1257 = getelementptr inbounds double, ptr %1087, i64 %idxprom1256
  %call1258 = call i32 @daxpy_(ptr noundef %1083, ptr noundef %d__1, ptr noundef %arrayidx1253, ptr noundef @c__1, ptr noundef %arrayidx1257, ptr noundef @c__1)
  %1090 = load double, ptr %cs, align 8
  %fneg1259 = fneg double %1090
  %1091 = load double, ptr %sn, align 8
  %mul1260 = fmul double %fneg1259, %1091
  %1092 = load double, ptr %aqoap, align 8
  %mul1261 = fmul double %mul1260, %1092
  store double %mul1261, ptr %d__1, align 8
  %1093 = load ptr, ptr %m.addr, align 8
  %1094 = load ptr, ptr %a.addr, align 8
  %1095 = load i32, ptr %q, align 4
  %1096 = load i32, ptr %a_dim1, align 4
  %mul1262 = mul nsw i32 %1095, %1096
  %add1263 = add nsw i32 %mul1262, 1
  %idxprom1264 = sext i32 %add1263 to i64
  %arrayidx1265 = getelementptr inbounds double, ptr %1094, i64 %idxprom1264
  %1097 = load ptr, ptr %a.addr, align 8
  %1098 = load i32, ptr %p, align 4
  %1099 = load i32, ptr %a_dim1, align 4
  %mul1266 = mul nsw i32 %1098, %1099
  %add1267 = add nsw i32 %mul1266, 1
  %idxprom1268 = sext i32 %add1267 to i64
  %arrayidx1269 = getelementptr inbounds double, ptr %1097, i64 %idxprom1268
  %call1270 = call i32 @daxpy_(ptr noundef %1093, ptr noundef %d__1, ptr noundef %arrayidx1265, ptr noundef @c__1, ptr noundef %arrayidx1269, ptr noundef @c__1)
  %1100 = load double, ptr %cs, align 8
  %1101 = load ptr, ptr %work.addr, align 8
  %1102 = load i32, ptr %p, align 4
  %idxprom1271 = sext i32 %1102 to i64
  %arrayidx1272 = getelementptr inbounds double, ptr %1101, i64 %idxprom1271
  %1103 = load double, ptr %arrayidx1272, align 8
  %div1273 = fdiv double %1103, %1100
  store double %div1273, ptr %arrayidx1272, align 8
  %1104 = load double, ptr %cs, align 8
  %1105 = load ptr, ptr %work.addr, align 8
  %1106 = load i32, ptr %q, align 4
  %idxprom1274 = sext i32 %1106 to i64
  %arrayidx1275 = getelementptr inbounds double, ptr %1105, i64 %idxprom1274
  %1107 = load double, ptr %arrayidx1275, align 8
  %mul1276 = fmul double %1107, %1104
  store double %mul1276, ptr %arrayidx1275, align 8
  %1108 = load i32, ptr %rsvec, align 4
  %tobool1277 = icmp ne i32 %1108, 0
  br i1 %tobool1277, label %if.then1278, label %if.end1301

if.then1278:                                      ; preds = %if.then1248
  %1109 = load double, ptr %t, align 8
  %1110 = load double, ptr %apoaq, align 8
  %mul1279 = fmul double %1109, %1110
  store double %mul1279, ptr %d__1, align 8
  %1111 = load ptr, ptr %v.addr, align 8
  %1112 = load i32, ptr %p, align 4
  %1113 = load i32, ptr %v_dim1, align 4
  %mul1280 = mul nsw i32 %1112, %1113
  %add1281 = add nsw i32 %mul1280, 1
  %idxprom1282 = sext i32 %add1281 to i64
  %arrayidx1283 = getelementptr inbounds double, ptr %1111, i64 %idxprom1282
  %1114 = load ptr, ptr %v.addr, align 8
  %1115 = load i32, ptr %q, align 4
  %1116 = load i32, ptr %v_dim1, align 4
  %mul1284 = mul nsw i32 %1115, %1116
  %add1285 = add nsw i32 %mul1284, 1
  %idxprom1286 = sext i32 %add1285 to i64
  %arrayidx1287 = getelementptr inbounds double, ptr %1114, i64 %idxprom1286
  %call1288 = call i32 @daxpy_(ptr noundef %mvl, ptr noundef %d__1, ptr noundef %arrayidx1283, ptr noundef @c__1, ptr noundef %arrayidx1287, ptr noundef @c__1)
  %1117 = load double, ptr %cs, align 8
  %fneg1289 = fneg double %1117
  %1118 = load double, ptr %sn, align 8
  %mul1290 = fmul double %fneg1289, %1118
  %1119 = load double, ptr %aqoap, align 8
  %mul1291 = fmul double %mul1290, %1119
  store double %mul1291, ptr %d__1, align 8
  %1120 = load ptr, ptr %v.addr, align 8
  %1121 = load i32, ptr %q, align 4
  %1122 = load i32, ptr %v_dim1, align 4
  %mul1292 = mul nsw i32 %1121, %1122
  %add1293 = add nsw i32 %mul1292, 1
  %idxprom1294 = sext i32 %add1293 to i64
  %arrayidx1295 = getelementptr inbounds double, ptr %1120, i64 %idxprom1294
  %1123 = load ptr, ptr %v.addr, align 8
  %1124 = load i32, ptr %p, align 4
  %1125 = load i32, ptr %v_dim1, align 4
  %mul1296 = mul nsw i32 %1124, %1125
  %add1297 = add nsw i32 %mul1296, 1
  %idxprom1298 = sext i32 %add1297 to i64
  %arrayidx1299 = getelementptr inbounds double, ptr %1123, i64 %idxprom1298
  %call1300 = call i32 @daxpy_(ptr noundef %mvl, ptr noundef %d__1, ptr noundef %arrayidx1295, ptr noundef @c__1, ptr noundef %arrayidx1299, ptr noundef @c__1)
  br label %if.end1301

if.end1301:                                       ; preds = %if.then1278, %if.then1248
  br label %if.end1418

if.else1302:                                      ; preds = %if.else1243
  %1126 = load ptr, ptr %work.addr, align 8
  %1127 = load i32, ptr %p, align 4
  %idxprom1303 = sext i32 %1127 to i64
  %arrayidx1304 = getelementptr inbounds double, ptr %1126, i64 %idxprom1303
  %1128 = load double, ptr %arrayidx1304, align 8
  %1129 = load ptr, ptr %work.addr, align 8
  %1130 = load i32, ptr %q, align 4
  %idxprom1305 = sext i32 %1130 to i64
  %arrayidx1306 = getelementptr inbounds double, ptr %1129, i64 %idxprom1305
  %1131 = load double, ptr %arrayidx1306, align 8
  %cmp1307 = fcmp oge double %1128, %1131
  br i1 %cmp1307, label %if.then1309, label %if.else1363

if.then1309:                                      ; preds = %if.else1302
  %1132 = load double, ptr %t, align 8
  %fneg1310 = fneg double %1132
  %1133 = load double, ptr %aqoap, align 8
  %mul1311 = fmul double %fneg1310, %1133
  store double %mul1311, ptr %d__1, align 8
  %1134 = load ptr, ptr %m.addr, align 8
  %1135 = load ptr, ptr %a.addr, align 8
  %1136 = load i32, ptr %q, align 4
  %1137 = load i32, ptr %a_dim1, align 4
  %mul1312 = mul nsw i32 %1136, %1137
  %add1313 = add nsw i32 %mul1312, 1
  %idxprom1314 = sext i32 %add1313 to i64
  %arrayidx1315 = getelementptr inbounds double, ptr %1135, i64 %idxprom1314
  %1138 = load ptr, ptr %a.addr, align 8
  %1139 = load i32, ptr %p, align 4
  %1140 = load i32, ptr %a_dim1, align 4
  %mul1316 = mul nsw i32 %1139, %1140
  %add1317 = add nsw i32 %mul1316, 1
  %idxprom1318 = sext i32 %add1317 to i64
  %arrayidx1319 = getelementptr inbounds double, ptr %1138, i64 %idxprom1318
  %call1320 = call i32 @daxpy_(ptr noundef %1134, ptr noundef %d__1, ptr noundef %arrayidx1315, ptr noundef @c__1, ptr noundef %arrayidx1319, ptr noundef @c__1)
  %1141 = load double, ptr %cs, align 8
  %1142 = load double, ptr %sn, align 8
  %mul1321 = fmul double %1141, %1142
  %1143 = load double, ptr %apoaq, align 8
  %mul1322 = fmul double %mul1321, %1143
  store double %mul1322, ptr %d__1, align 8
  %1144 = load ptr, ptr %m.addr, align 8
  %1145 = load ptr, ptr %a.addr, align 8
  %1146 = load i32, ptr %p, align 4
  %1147 = load i32, ptr %a_dim1, align 4
  %mul1323 = mul nsw i32 %1146, %1147
  %add1324 = add nsw i32 %mul1323, 1
  %idxprom1325 = sext i32 %add1324 to i64
  %arrayidx1326 = getelementptr inbounds double, ptr %1145, i64 %idxprom1325
  %1148 = load ptr, ptr %a.addr, align 8
  %1149 = load i32, ptr %q, align 4
  %1150 = load i32, ptr %a_dim1, align 4
  %mul1327 = mul nsw i32 %1149, %1150
  %add1328 = add nsw i32 %mul1327, 1
  %idxprom1329 = sext i32 %add1328 to i64
  %arrayidx1330 = getelementptr inbounds double, ptr %1148, i64 %idxprom1329
  %call1331 = call i32 @daxpy_(ptr noundef %1144, ptr noundef %d__1, ptr noundef %arrayidx1326, ptr noundef @c__1, ptr noundef %arrayidx1330, ptr noundef @c__1)
  %1151 = load double, ptr %cs, align 8
  %1152 = load ptr, ptr %work.addr, align 8
  %1153 = load i32, ptr %p, align 4
  %idxprom1332 = sext i32 %1153 to i64
  %arrayidx1333 = getelementptr inbounds double, ptr %1152, i64 %idxprom1332
  %1154 = load double, ptr %arrayidx1333, align 8
  %mul1334 = fmul double %1154, %1151
  store double %mul1334, ptr %arrayidx1333, align 8
  %1155 = load double, ptr %cs, align 8
  %1156 = load ptr, ptr %work.addr, align 8
  %1157 = load i32, ptr %q, align 4
  %idxprom1335 = sext i32 %1157 to i64
  %arrayidx1336 = getelementptr inbounds double, ptr %1156, i64 %idxprom1335
  %1158 = load double, ptr %arrayidx1336, align 8
  %div1337 = fdiv double %1158, %1155
  store double %div1337, ptr %arrayidx1336, align 8
  %1159 = load i32, ptr %rsvec, align 4
  %tobool1338 = icmp ne i32 %1159, 0
  br i1 %tobool1338, label %if.then1339, label %if.end1362

if.then1339:                                      ; preds = %if.then1309
  %1160 = load double, ptr %t, align 8
  %fneg1340 = fneg double %1160
  %1161 = load double, ptr %aqoap, align 8
  %mul1341 = fmul double %fneg1340, %1161
  store double %mul1341, ptr %d__1, align 8
  %1162 = load ptr, ptr %v.addr, align 8
  %1163 = load i32, ptr %q, align 4
  %1164 = load i32, ptr %v_dim1, align 4
  %mul1342 = mul nsw i32 %1163, %1164
  %add1343 = add nsw i32 %mul1342, 1
  %idxprom1344 = sext i32 %add1343 to i64
  %arrayidx1345 = getelementptr inbounds double, ptr %1162, i64 %idxprom1344
  %1165 = load ptr, ptr %v.addr, align 8
  %1166 = load i32, ptr %p, align 4
  %1167 = load i32, ptr %v_dim1, align 4
  %mul1346 = mul nsw i32 %1166, %1167
  %add1347 = add nsw i32 %mul1346, 1
  %idxprom1348 = sext i32 %add1347 to i64
  %arrayidx1349 = getelementptr inbounds double, ptr %1165, i64 %idxprom1348
  %call1350 = call i32 @daxpy_(ptr noundef %mvl, ptr noundef %d__1, ptr noundef %arrayidx1345, ptr noundef @c__1, ptr noundef %arrayidx1349, ptr noundef @c__1)
  %1168 = load double, ptr %cs, align 8
  %1169 = load double, ptr %sn, align 8
  %mul1351 = fmul double %1168, %1169
  %1170 = load double, ptr %apoaq, align 8
  %mul1352 = fmul double %mul1351, %1170
  store double %mul1352, ptr %d__1, align 8
  %1171 = load ptr, ptr %v.addr, align 8
  %1172 = load i32, ptr %p, align 4
  %1173 = load i32, ptr %v_dim1, align 4
  %mul1353 = mul nsw i32 %1172, %1173
  %add1354 = add nsw i32 %mul1353, 1
  %idxprom1355 = sext i32 %add1354 to i64
  %arrayidx1356 = getelementptr inbounds double, ptr %1171, i64 %idxprom1355
  %1174 = load ptr, ptr %v.addr, align 8
  %1175 = load i32, ptr %q, align 4
  %1176 = load i32, ptr %v_dim1, align 4
  %mul1357 = mul nsw i32 %1175, %1176
  %add1358 = add nsw i32 %mul1357, 1
  %idxprom1359 = sext i32 %add1358 to i64
  %arrayidx1360 = getelementptr inbounds double, ptr %1174, i64 %idxprom1359
  %call1361 = call i32 @daxpy_(ptr noundef %mvl, ptr noundef %d__1, ptr noundef %arrayidx1356, ptr noundef @c__1, ptr noundef %arrayidx1360, ptr noundef @c__1)
  br label %if.end1362

if.end1362:                                       ; preds = %if.then1339, %if.then1309
  br label %if.end1417

if.else1363:                                      ; preds = %if.else1302
  %1177 = load double, ptr %t, align 8
  %1178 = load double, ptr %apoaq, align 8
  %mul1364 = fmul double %1177, %1178
  store double %mul1364, ptr %d__1, align 8
  %1179 = load ptr, ptr %m.addr, align 8
  %1180 = load ptr, ptr %a.addr, align 8
  %1181 = load i32, ptr %p, align 4
  %1182 = load i32, ptr %a_dim1, align 4
  %mul1365 = mul nsw i32 %1181, %1182
  %add1366 = add nsw i32 %mul1365, 1
  %idxprom1367 = sext i32 %add1366 to i64
  %arrayidx1368 = getelementptr inbounds double, ptr %1180, i64 %idxprom1367
  %1183 = load ptr, ptr %a.addr, align 8
  %1184 = load i32, ptr %q, align 4
  %1185 = load i32, ptr %a_dim1, align 4
  %mul1369 = mul nsw i32 %1184, %1185
  %add1370 = add nsw i32 %mul1369, 1
  %idxprom1371 = sext i32 %add1370 to i64
  %arrayidx1372 = getelementptr inbounds double, ptr %1183, i64 %idxprom1371
  %call1373 = call i32 @daxpy_(ptr noundef %1179, ptr noundef %d__1, ptr noundef %arrayidx1368, ptr noundef @c__1, ptr noundef %arrayidx1372, ptr noundef @c__1)
  %1186 = load double, ptr %cs, align 8
  %fneg1374 = fneg double %1186
  %1187 = load double, ptr %sn, align 8
  %mul1375 = fmul double %fneg1374, %1187
  %1188 = load double, ptr %aqoap, align 8
  %mul1376 = fmul double %mul1375, %1188
  store double %mul1376, ptr %d__1, align 8
  %1189 = load ptr, ptr %m.addr, align 8
  %1190 = load ptr, ptr %a.addr, align 8
  %1191 = load i32, ptr %q, align 4
  %1192 = load i32, ptr %a_dim1, align 4
  %mul1377 = mul nsw i32 %1191, %1192
  %add1378 = add nsw i32 %mul1377, 1
  %idxprom1379 = sext i32 %add1378 to i64
  %arrayidx1380 = getelementptr inbounds double, ptr %1190, i64 %idxprom1379
  %1193 = load ptr, ptr %a.addr, align 8
  %1194 = load i32, ptr %p, align 4
  %1195 = load i32, ptr %a_dim1, align 4
  %mul1381 = mul nsw i32 %1194, %1195
  %add1382 = add nsw i32 %mul1381, 1
  %idxprom1383 = sext i32 %add1382 to i64
  %arrayidx1384 = getelementptr inbounds double, ptr %1193, i64 %idxprom1383
  %call1385 = call i32 @daxpy_(ptr noundef %1189, ptr noundef %d__1, ptr noundef %arrayidx1380, ptr noundef @c__1, ptr noundef %arrayidx1384, ptr noundef @c__1)
  %1196 = load double, ptr %cs, align 8
  %1197 = load ptr, ptr %work.addr, align 8
  %1198 = load i32, ptr %p, align 4
  %idxprom1386 = sext i32 %1198 to i64
  %arrayidx1387 = getelementptr inbounds double, ptr %1197, i64 %idxprom1386
  %1199 = load double, ptr %arrayidx1387, align 8
  %div1388 = fdiv double %1199, %1196
  store double %div1388, ptr %arrayidx1387, align 8
  %1200 = load double, ptr %cs, align 8
  %1201 = load ptr, ptr %work.addr, align 8
  %1202 = load i32, ptr %q, align 4
  %idxprom1389 = sext i32 %1202 to i64
  %arrayidx1390 = getelementptr inbounds double, ptr %1201, i64 %idxprom1389
  %1203 = load double, ptr %arrayidx1390, align 8
  %mul1391 = fmul double %1203, %1200
  store double %mul1391, ptr %arrayidx1390, align 8
  %1204 = load i32, ptr %rsvec, align 4
  %tobool1392 = icmp ne i32 %1204, 0
  br i1 %tobool1392, label %if.then1393, label %if.end1416

if.then1393:                                      ; preds = %if.else1363
  %1205 = load double, ptr %t, align 8
  %1206 = load double, ptr %apoaq, align 8
  %mul1394 = fmul double %1205, %1206
  store double %mul1394, ptr %d__1, align 8
  %1207 = load ptr, ptr %v.addr, align 8
  %1208 = load i32, ptr %p, align 4
  %1209 = load i32, ptr %v_dim1, align 4
  %mul1395 = mul nsw i32 %1208, %1209
  %add1396 = add nsw i32 %mul1395, 1
  %idxprom1397 = sext i32 %add1396 to i64
  %arrayidx1398 = getelementptr inbounds double, ptr %1207, i64 %idxprom1397
  %1210 = load ptr, ptr %v.addr, align 8
  %1211 = load i32, ptr %q, align 4
  %1212 = load i32, ptr %v_dim1, align 4
  %mul1399 = mul nsw i32 %1211, %1212
  %add1400 = add nsw i32 %mul1399, 1
  %idxprom1401 = sext i32 %add1400 to i64
  %arrayidx1402 = getelementptr inbounds double, ptr %1210, i64 %idxprom1401
  %call1403 = call i32 @daxpy_(ptr noundef %mvl, ptr noundef %d__1, ptr noundef %arrayidx1398, ptr noundef @c__1, ptr noundef %arrayidx1402, ptr noundef @c__1)
  %1213 = load double, ptr %cs, align 8
  %fneg1404 = fneg double %1213
  %1214 = load double, ptr %sn, align 8
  %mul1405 = fmul double %fneg1404, %1214
  %1215 = load double, ptr %aqoap, align 8
  %mul1406 = fmul double %mul1405, %1215
  store double %mul1406, ptr %d__1, align 8
  %1216 = load ptr, ptr %v.addr, align 8
  %1217 = load i32, ptr %q, align 4
  %1218 = load i32, ptr %v_dim1, align 4
  %mul1407 = mul nsw i32 %1217, %1218
  %add1408 = add nsw i32 %mul1407, 1
  %idxprom1409 = sext i32 %add1408 to i64
  %arrayidx1410 = getelementptr inbounds double, ptr %1216, i64 %idxprom1409
  %1219 = load ptr, ptr %v.addr, align 8
  %1220 = load i32, ptr %p, align 4
  %1221 = load i32, ptr %v_dim1, align 4
  %mul1411 = mul nsw i32 %1220, %1221
  %add1412 = add nsw i32 %mul1411, 1
  %idxprom1413 = sext i32 %add1412 to i64
  %arrayidx1414 = getelementptr inbounds double, ptr %1219, i64 %idxprom1413
  %call1415 = call i32 @daxpy_(ptr noundef %mvl, ptr noundef %d__1, ptr noundef %arrayidx1410, ptr noundef @c__1, ptr noundef %arrayidx1414, ptr noundef @c__1)
  br label %if.end1416

if.end1416:                                       ; preds = %if.then1393, %if.else1363
  br label %if.end1417

if.end1417:                                       ; preds = %if.end1416, %if.end1362
  br label %if.end1418

if.end1418:                                       ; preds = %if.end1417, %if.end1301
  br label %if.end1419

if.end1419:                                       ; preds = %if.end1418, %if.end1242
  br label %if.end1420

if.end1420:                                       ; preds = %if.end1419, %cond.end1085
  br label %if.end1477

if.else1421:                                      ; preds = %if.end989
  %1222 = load ptr, ptr %m.addr, align 8
  %1223 = load ptr, ptr %a.addr, align 8
  %1224 = load i32, ptr %p, align 4
  %1225 = load i32, ptr %a_dim1, align 4
  %mul1422 = mul nsw i32 %1224, %1225
  %add1423 = add nsw i32 %mul1422, 1
  %idxprom1424 = sext i32 %add1423 to i64
  %arrayidx1425 = getelementptr inbounds double, ptr %1223, i64 %idxprom1424
  %1226 = load ptr, ptr %work.addr, align 8
  %1227 = load ptr, ptr %n.addr, align 8
  %1228 = load i32, ptr %1227, align 4
  %add1426 = add nsw i32 %1228, 1
  %idxprom1427 = sext i32 %add1426 to i64
  %arrayidx1428 = getelementptr inbounds double, ptr %1226, i64 %idxprom1427
  %call1429 = call i32 @dcopy_(ptr noundef %1222, ptr noundef %arrayidx1425, ptr noundef @c__1, ptr noundef %arrayidx1428, ptr noundef @c__1)
  %1229 = load ptr, ptr %m.addr, align 8
  %1230 = load ptr, ptr %work.addr, align 8
  %1231 = load ptr, ptr %n.addr, align 8
  %1232 = load i32, ptr %1231, align 4
  %add1430 = add nsw i32 %1232, 1
  %idxprom1431 = sext i32 %add1430 to i64
  %arrayidx1432 = getelementptr inbounds double, ptr %1230, i64 %idxprom1431
  %1233 = load ptr, ptr %lda.addr, align 8
  %call1433 = call i32 @dlascl_(ptr noundef @.str.5, ptr noundef @c__0, ptr noundef @c__0, ptr noundef %aapp, ptr noundef @c_b18, ptr noundef %1229, ptr noundef @c__1, ptr noundef %arrayidx1432, ptr noundef %1233, ptr noundef %ierr)
  %1234 = load ptr, ptr %m.addr, align 8
  %1235 = load ptr, ptr %a.addr, align 8
  %1236 = load i32, ptr %q, align 4
  %1237 = load i32, ptr %a_dim1, align 4
  %mul1434 = mul nsw i32 %1236, %1237
  %add1435 = add nsw i32 %mul1434, 1
  %idxprom1436 = sext i32 %add1435 to i64
  %arrayidx1437 = getelementptr inbounds double, ptr %1235, i64 %idxprom1436
  %1238 = load ptr, ptr %lda.addr, align 8
  %call1438 = call i32 @dlascl_(ptr noundef @.str.5, ptr noundef @c__0, ptr noundef @c__0, ptr noundef %aaqq, ptr noundef @c_b18, ptr noundef %1234, ptr noundef @c__1, ptr noundef %arrayidx1437, ptr noundef %1238, ptr noundef %ierr)
  %1239 = load double, ptr %aapq, align 8
  %fneg1439 = fneg double %1239
  %1240 = load ptr, ptr %work.addr, align 8
  %1241 = load i32, ptr %p, align 4
  %idxprom1440 = sext i32 %1241 to i64
  %arrayidx1441 = getelementptr inbounds double, ptr %1240, i64 %idxprom1440
  %1242 = load double, ptr %arrayidx1441, align 8
  %mul1442 = fmul double %fneg1439, %1242
  %1243 = load ptr, ptr %work.addr, align 8
  %1244 = load i32, ptr %q, align 4
  %idxprom1443 = sext i32 %1244 to i64
  %arrayidx1444 = getelementptr inbounds double, ptr %1243, i64 %idxprom1443
  %1245 = load double, ptr %arrayidx1444, align 8
  %div1445 = fdiv double %mul1442, %1245
  store double %div1445, ptr %temp1, align 8
  %1246 = load ptr, ptr %m.addr, align 8
  %1247 = load ptr, ptr %work.addr, align 8
  %1248 = load ptr, ptr %n.addr, align 8
  %1249 = load i32, ptr %1248, align 4
  %add1446 = add nsw i32 %1249, 1
  %idxprom1447 = sext i32 %add1446 to i64
  %arrayidx1448 = getelementptr inbounds double, ptr %1247, i64 %idxprom1447
  %1250 = load ptr, ptr %a.addr, align 8
  %1251 = load i32, ptr %q, align 4
  %1252 = load i32, ptr %a_dim1, align 4
  %mul1449 = mul nsw i32 %1251, %1252
  %add1450 = add nsw i32 %mul1449, 1
  %idxprom1451 = sext i32 %add1450 to i64
  %arrayidx1452 = getelementptr inbounds double, ptr %1250, i64 %idxprom1451
  %call1453 = call i32 @daxpy_(ptr noundef %1246, ptr noundef %temp1, ptr noundef %arrayidx1448, ptr noundef @c__1, ptr noundef %arrayidx1452, ptr noundef @c__1)
  %1253 = load ptr, ptr %m.addr, align 8
  %1254 = load ptr, ptr %a.addr, align 8
  %1255 = load i32, ptr %q, align 4
  %1256 = load i32, ptr %a_dim1, align 4
  %mul1454 = mul nsw i32 %1255, %1256
  %add1455 = add nsw i32 %mul1454, 1
  %idxprom1456 = sext i32 %add1455 to i64
  %arrayidx1457 = getelementptr inbounds double, ptr %1254, i64 %idxprom1456
  %1257 = load ptr, ptr %lda.addr, align 8
  %call1458 = call i32 @dlascl_(ptr noundef @.str.5, ptr noundef @c__0, ptr noundef @c__0, ptr noundef @c_b18, ptr noundef %aaqq, ptr noundef %1253, ptr noundef @c__1, ptr noundef %arrayidx1457, ptr noundef %1257, ptr noundef %ierr)
  store double 0.000000e+00, ptr %d__1, align 8
  %1258 = load double, ptr %aapq, align 8
  %1259 = load double, ptr %aapq, align 8
  %neg1460 = fneg double %1258
  %1260 = call double @llvm.fmuladd.f64(double %neg1460, double %1259, double 1.000000e+00)
  store double %1260, ptr %d__2, align 8
  %1261 = load double, ptr %aaqq, align 8
  %1262 = load double, ptr %d__1, align 8
  %1263 = load double, ptr %d__2, align 8
  %cmp1461 = fcmp oge double %1262, %1263
  br i1 %cmp1461, label %cond.true1463, label %cond.false1464

cond.true1463:                                    ; preds = %if.else1421
  %1264 = load double, ptr %d__1, align 8
  br label %cond.end1465

cond.false1464:                                   ; preds = %if.else1421
  %1265 = load double, ptr %d__2, align 8
  br label %cond.end1465

cond.end1465:                                     ; preds = %cond.false1464, %cond.true1463
  %cond1466 = phi double [ %1264, %cond.true1463 ], [ %1265, %cond.false1464 ]
  %call1467 = call double @sqrt(double noundef %cond1466) #4
  %mul1468 = fmul double %1261, %call1467
  %1266 = load ptr, ptr %sva.addr, align 8
  %1267 = load i32, ptr %q, align 4
  %idxprom1469 = sext i32 %1267 to i64
  %arrayidx1470 = getelementptr inbounds double, ptr %1266, i64 %idxprom1469
  store double %mul1468, ptr %arrayidx1470, align 8
  %1268 = load double, ptr %mxsinj, align 8
  %1269 = load double, ptr %sfmin, align 8
  %cmp1471 = fcmp oge double %1268, %1269
  br i1 %cmp1471, label %cond.true1473, label %cond.false1474

cond.true1473:                                    ; preds = %cond.end1465
  %1270 = load double, ptr %mxsinj, align 8
  br label %cond.end1475

cond.false1474:                                   ; preds = %cond.end1465
  %1271 = load double, ptr %sfmin, align 8
  br label %cond.end1475

cond.end1475:                                     ; preds = %cond.false1474, %cond.true1473
  %cond1476 = phi double [ %1270, %cond.true1473 ], [ %1271, %cond.false1474 ]
  store double %cond1476, ptr %mxsinj, align 8
  br label %if.end1477

if.end1477:                                       ; preds = %cond.end1475, %if.end1420
  %1272 = load ptr, ptr %sva.addr, align 8
  %1273 = load i32, ptr %q, align 4
  %idxprom1478 = sext i32 %1273 to i64
  %arrayidx1479 = getelementptr inbounds double, ptr %1272, i64 %idxprom1478
  %1274 = load double, ptr %arrayidx1479, align 8
  %1275 = load double, ptr %aaqq, align 8
  %div1480 = fdiv double %1274, %1275
  store double %div1480, ptr %d__1, align 8
  %1276 = load double, ptr %d__1, align 8
  %1277 = load double, ptr %d__1, align 8
  %mul1481 = fmul double %1276, %1277
  %1278 = load double, ptr %rooteps, align 8
  %cmp1482 = fcmp ole double %mul1481, %1278
  br i1 %cmp1482, label %if.then1484, label %if.end1515

if.then1484:                                      ; preds = %if.end1477
  %1279 = load double, ptr %aaqq, align 8
  %1280 = load double, ptr %rootbig, align 8
  %cmp1485 = fcmp olt double %1279, %1280
  br i1 %cmp1485, label %land.lhs.true1487, label %if.else1501

land.lhs.true1487:                                ; preds = %if.then1484
  %1281 = load double, ptr %aaqq, align 8
  %1282 = load double, ptr %rootsfmin, align 8
  %cmp1488 = fcmp ogt double %1281, %1282
  br i1 %cmp1488, label %if.then1490, label %if.else1501

if.then1490:                                      ; preds = %land.lhs.true1487
  %1283 = load ptr, ptr %m.addr, align 8
  %1284 = load ptr, ptr %a.addr, align 8
  %1285 = load i32, ptr %q, align 4
  %1286 = load i32, ptr %a_dim1, align 4
  %mul1491 = mul nsw i32 %1285, %1286
  %add1492 = add nsw i32 %mul1491, 1
  %idxprom1493 = sext i32 %add1492 to i64
  %arrayidx1494 = getelementptr inbounds double, ptr %1284, i64 %idxprom1493
  %call1495 = call double @dnrm2_(ptr noundef %1283, ptr noundef %arrayidx1494, ptr noundef @c__1)
  %1287 = load ptr, ptr %work.addr, align 8
  %1288 = load i32, ptr %q, align 4
  %idxprom1496 = sext i32 %1288 to i64
  %arrayidx1497 = getelementptr inbounds double, ptr %1287, i64 %idxprom1496
  %1289 = load double, ptr %arrayidx1497, align 8
  %mul1498 = fmul double %call1495, %1289
  %1290 = load ptr, ptr %sva.addr, align 8
  %1291 = load i32, ptr %q, align 4
  %idxprom1499 = sext i32 %1291 to i64
  %arrayidx1500 = getelementptr inbounds double, ptr %1290, i64 %idxprom1499
  store double %mul1498, ptr %arrayidx1500, align 8
  br label %if.end1514

if.else1501:                                      ; preds = %land.lhs.true1487, %if.then1484
  store double 0.000000e+00, ptr %t, align 8
  store double 1.000000e+00, ptr %aaqq, align 8
  %1292 = load ptr, ptr %m.addr, align 8
  %1293 = load ptr, ptr %a.addr, align 8
  %1294 = load i32, ptr %q, align 4
  %1295 = load i32, ptr %a_dim1, align 4
  %mul1502 = mul nsw i32 %1294, %1295
  %add1503 = add nsw i32 %mul1502, 1
  %idxprom1504 = sext i32 %add1503 to i64
  %arrayidx1505 = getelementptr inbounds double, ptr %1293, i64 %idxprom1504
  %call1506 = call i32 @dlassq_(ptr noundef %1292, ptr noundef %arrayidx1505, ptr noundef @c__1, ptr noundef %t, ptr noundef %aaqq)
  %1296 = load double, ptr %t, align 8
  %1297 = load double, ptr %aaqq, align 8
  %call1507 = call double @sqrt(double noundef %1297) #4
  %mul1508 = fmul double %1296, %call1507
  %1298 = load ptr, ptr %work.addr, align 8
  %1299 = load i32, ptr %q, align 4
  %idxprom1509 = sext i32 %1299 to i64
  %arrayidx1510 = getelementptr inbounds double, ptr %1298, i64 %idxprom1509
  %1300 = load double, ptr %arrayidx1510, align 8
  %mul1511 = fmul double %mul1508, %1300
  %1301 = load ptr, ptr %sva.addr, align 8
  %1302 = load i32, ptr %q, align 4
  %idxprom1512 = sext i32 %1302 to i64
  %arrayidx1513 = getelementptr inbounds double, ptr %1301, i64 %idxprom1512
  store double %mul1511, ptr %arrayidx1513, align 8
  br label %if.end1514

if.end1514:                                       ; preds = %if.else1501, %if.then1490
  br label %if.end1515

if.end1515:                                       ; preds = %if.end1514, %if.end1477
  %1303 = load double, ptr %aapp, align 8
  %1304 = load double, ptr %aapp0, align 8
  %div1516 = fdiv double %1303, %1304
  %1305 = load double, ptr %rooteps, align 8
  %cmp1517 = fcmp ole double %div1516, %1305
  br i1 %cmp1517, label %if.then1519, label %if.end1548

if.then1519:                                      ; preds = %if.end1515
  %1306 = load double, ptr %aapp, align 8
  %1307 = load double, ptr %rootbig, align 8
  %cmp1520 = fcmp olt double %1306, %1307
  br i1 %cmp1520, label %land.lhs.true1522, label %if.else1534

land.lhs.true1522:                                ; preds = %if.then1519
  %1308 = load double, ptr %aapp, align 8
  %1309 = load double, ptr %rootsfmin, align 8
  %cmp1523 = fcmp ogt double %1308, %1309
  br i1 %cmp1523, label %if.then1525, label %if.else1534

if.then1525:                                      ; preds = %land.lhs.true1522
  %1310 = load ptr, ptr %m.addr, align 8
  %1311 = load ptr, ptr %a.addr, align 8
  %1312 = load i32, ptr %p, align 4
  %1313 = load i32, ptr %a_dim1, align 4
  %mul1526 = mul nsw i32 %1312, %1313
  %add1527 = add nsw i32 %mul1526, 1
  %idxprom1528 = sext i32 %add1527 to i64
  %arrayidx1529 = getelementptr inbounds double, ptr %1311, i64 %idxprom1528
  %call1530 = call double @dnrm2_(ptr noundef %1310, ptr noundef %arrayidx1529, ptr noundef @c__1)
  %1314 = load ptr, ptr %work.addr, align 8
  %1315 = load i32, ptr %p, align 4
  %idxprom1531 = sext i32 %1315 to i64
  %arrayidx1532 = getelementptr inbounds double, ptr %1314, i64 %idxprom1531
  %1316 = load double, ptr %arrayidx1532, align 8
  %mul1533 = fmul double %call1530, %1316
  store double %mul1533, ptr %aapp, align 8
  br label %if.end1545

if.else1534:                                      ; preds = %land.lhs.true1522, %if.then1519
  store double 0.000000e+00, ptr %t, align 8
  store double 1.000000e+00, ptr %aapp, align 8
  %1317 = load ptr, ptr %m.addr, align 8
  %1318 = load ptr, ptr %a.addr, align 8
  %1319 = load i32, ptr %p, align 4
  %1320 = load i32, ptr %a_dim1, align 4
  %mul1535 = mul nsw i32 %1319, %1320
  %add1536 = add nsw i32 %mul1535, 1
  %idxprom1537 = sext i32 %add1536 to i64
  %arrayidx1538 = getelementptr inbounds double, ptr %1318, i64 %idxprom1537
  %call1539 = call i32 @dlassq_(ptr noundef %1317, ptr noundef %arrayidx1538, ptr noundef @c__1, ptr noundef %t, ptr noundef %aapp)
  %1321 = load double, ptr %t, align 8
  %1322 = load double, ptr %aapp, align 8
  %call1540 = call double @sqrt(double noundef %1322) #4
  %mul1541 = fmul double %1321, %call1540
  %1323 = load ptr, ptr %work.addr, align 8
  %1324 = load i32, ptr %p, align 4
  %idxprom1542 = sext i32 %1324 to i64
  %arrayidx1543 = getelementptr inbounds double, ptr %1323, i64 %idxprom1542
  %1325 = load double, ptr %arrayidx1543, align 8
  %mul1544 = fmul double %mul1541, %1325
  store double %mul1544, ptr %aapp, align 8
  br label %if.end1545

if.end1545:                                       ; preds = %if.else1534, %if.then1525
  %1326 = load double, ptr %aapp, align 8
  %1327 = load ptr, ptr %sva.addr, align 8
  %1328 = load i32, ptr %p, align 4
  %idxprom1546 = sext i32 %1328 to i64
  %arrayidx1547 = getelementptr inbounds double, ptr %1327, i64 %idxprom1546
  store double %1326, ptr %arrayidx1547, align 8
  br label %if.end1548

if.end1548:                                       ; preds = %if.end1545, %if.end1515
  br label %if.end1556

if.else1549:                                      ; preds = %cond.end980
  %1329 = load i32, ptr %ir1, align 4
  %cmp1550 = icmp eq i32 %1329, 0
  br i1 %cmp1550, label %if.then1552, label %if.end1554

if.then1552:                                      ; preds = %if.else1549
  %1330 = load i32, ptr %notrot, align 4
  %inc1553 = add nsw i32 %1330, 1
  store i32 %inc1553, ptr %notrot, align 4
  br label %if.end1554

if.end1554:                                       ; preds = %if.then1552, %if.else1549
  %1331 = load i32, ptr %pskipped, align 4
  %inc1555 = add nsw i32 %1331, 1
  store i32 %inc1555, ptr %pskipped, align 4
  br label %if.end1556

if.end1556:                                       ; preds = %if.end1554, %if.end1548
  br label %if.end1564

if.else1557:                                      ; preds = %for.body848
  %1332 = load i32, ptr %ir1, align 4
  %cmp1558 = icmp eq i32 %1332, 0
  br i1 %cmp1558, label %if.then1560, label %if.end1562

if.then1560:                                      ; preds = %if.else1557
  %1333 = load i32, ptr %notrot, align 4
  %inc1561 = add nsw i32 %1333, 1
  store i32 %inc1561, ptr %notrot, align 4
  br label %if.end1562

if.end1562:                                       ; preds = %if.then1560, %if.else1557
  %1334 = load i32, ptr %pskipped, align 4
  %inc1563 = add nsw i32 %1334, 1
  store i32 %inc1563, ptr %pskipped, align 4
  br label %if.end1564

if.end1564:                                       ; preds = %if.end1562, %if.end1556
  %1335 = load i32, ptr %i__, align 4
  %1336 = load i32, ptr %swband, align 4
  %cmp1565 = icmp sle i32 %1335, %1336
  br i1 %cmp1565, label %land.lhs.true1567, label %if.end1576

land.lhs.true1567:                                ; preds = %if.end1564
  %1337 = load i32, ptr %pskipped, align 4
  %1338 = load i32, ptr %rowskip, align 4
  %cmp1568 = icmp sgt i32 %1337, %1338
  br i1 %cmp1568, label %if.then1570, label %if.end1576

if.then1570:                                      ; preds = %land.lhs.true1567
  %1339 = load i32, ptr %ir1, align 4
  %cmp1571 = icmp eq i32 %1339, 0
  br i1 %cmp1571, label %if.then1573, label %if.end1575

if.then1573:                                      ; preds = %if.then1570
  %1340 = load double, ptr %aapp, align 8
  %fneg1574 = fneg double %1340
  store double %fneg1574, ptr %aapp, align 8
  br label %if.end1575

if.end1575:                                       ; preds = %if.then1573, %if.then1570
  store i32 0, ptr %notrot, align 4
  br label %L2103

if.end1576:                                       ; preds = %land.lhs.true1567, %if.end1564
  br label %for.inc1577

for.inc1577:                                      ; preds = %if.end1576
  %1341 = load i32, ptr %q, align 4
  %inc1578 = add nsw i32 %1341, 1
  store i32 %inc1578, ptr %q, align 4
  br label %for.cond845, !llvm.loop !14

for.end1579:                                      ; preds = %for.cond845
  br label %L2103

L2103:                                            ; preds = %for.end1579, %if.end1575
  %1342 = load double, ptr %aapp, align 8
  %1343 = load ptr, ptr %sva.addr, align 8
  %1344 = load i32, ptr %p, align 4
  %idxprom1580 = sext i32 %1344 to i64
  %arrayidx1581 = getelementptr inbounds double, ptr %1343, i64 %idxprom1580
  store double %1342, ptr %arrayidx1581, align 8
  br label %if.end1602

if.else1582:                                      ; preds = %if.end832
  %1345 = load double, ptr %aapp, align 8
  %1346 = load ptr, ptr %sva.addr, align 8
  %1347 = load i32, ptr %p, align 4
  %idxprom1583 = sext i32 %1347 to i64
  %arrayidx1584 = getelementptr inbounds double, ptr %1346, i64 %idxprom1583
  store double %1345, ptr %arrayidx1584, align 8
  %1348 = load i32, ptr %ir1, align 4
  %cmp1585 = icmp eq i32 %1348, 0
  br i1 %cmp1585, label %land.lhs.true1587, label %if.end1601

land.lhs.true1587:                                ; preds = %if.else1582
  %1349 = load double, ptr %aapp, align 8
  %cmp1588 = fcmp oeq double %1349, 0.000000e+00
  br i1 %cmp1588, label %if.then1590, label %if.end1601

if.then1590:                                      ; preds = %land.lhs.true1587
  %1350 = load i32, ptr %igl, align 4
  %1351 = load i32, ptr %kbl, align 4
  %add1591 = add nsw i32 %1350, %1351
  %sub1592 = sub nsw i32 %add1591, 1
  store i32 %sub1592, ptr %i__4, align 4
  %1352 = load i32, ptr %notrot, align 4
  %1353 = load i32, ptr %i__4, align 4
  %1354 = load ptr, ptr %n.addr, align 8
  %1355 = load i32, ptr %1354, align 4
  %cmp1593 = icmp sle i32 %1353, %1355
  br i1 %cmp1593, label %cond.true1595, label %cond.false1596

cond.true1595:                                    ; preds = %if.then1590
  %1356 = load i32, ptr %i__4, align 4
  br label %cond.end1597

cond.false1596:                                   ; preds = %if.then1590
  %1357 = load ptr, ptr %n.addr, align 8
  %1358 = load i32, ptr %1357, align 4
  br label %cond.end1597

cond.end1597:                                     ; preds = %cond.false1596, %cond.true1595
  %cond1598 = phi i32 [ %1356, %cond.true1595 ], [ %1358, %cond.false1596 ]
  %add1599 = add nsw i32 %1352, %cond1598
  %1359 = load i32, ptr %p, align 4
  %sub1600 = sub nsw i32 %add1599, %1359
  store i32 %sub1600, ptr %notrot, align 4
  br label %if.end1601

if.end1601:                                       ; preds = %cond.end1597, %land.lhs.true1587, %if.else1582
  br label %if.end1602

if.end1602:                                       ; preds = %if.end1601, %L2103
  br label %for.inc1603

for.inc1603:                                      ; preds = %if.end1602
  %1360 = load i32, ptr %p, align 4
  %inc1604 = add nsw i32 %1360, 1
  store i32 %inc1604, ptr %p, align 4
  br label %for.cond738, !llvm.loop !15

for.end1605:                                      ; preds = %for.cond738
  br label %for.inc1606

for.inc1606:                                      ; preds = %for.end1605
  %1361 = load i32, ptr %ir1, align 4
  %inc1607 = add nsw i32 %1361, 1
  store i32 %inc1607, ptr %ir1, align 4
  br label %for.cond723, !llvm.loop !16

for.end1608:                                      ; preds = %for.cond723
  %1362 = load i32, ptr %ibr, align 4
  %sub1609 = sub nsw i32 %1362, 1
  %1363 = load i32, ptr %kbl, align 4
  %mul1610 = mul nsw i32 %sub1609, %1363
  %add1611 = add nsw i32 %mul1610, 1
  store i32 %add1611, ptr %igl, align 4
  %1364 = load i32, ptr %nbl, align 4
  store i32 %1364, ptr %i__2, align 4
  %1365 = load i32, ptr %ibr, align 4
  %add1612 = add nsw i32 %1365, 1
  store i32 %add1612, ptr %jbc, align 4
  br label %for.cond1613

for.cond1613:                                     ; preds = %for.inc2491, %for.end1608
  %1366 = load i32, ptr %jbc, align 4
  %1367 = load i32, ptr %i__2, align 4
  %cmp1614 = icmp sle i32 %1366, %1367
  br i1 %cmp1614, label %for.body1616, label %for.end2493

for.body1616:                                     ; preds = %for.cond1613
  %1368 = load i32, ptr %jbc, align 4
  %sub1617 = sub nsw i32 %1368, 1
  %1369 = load i32, ptr %kbl, align 4
  %mul1618 = mul nsw i32 %sub1617, %1369
  %add1619 = add nsw i32 %mul1618, 1
  store i32 %add1619, ptr %jgl, align 4
  store i32 0, ptr %ijblsk, align 4
  %1370 = load i32, ptr %igl, align 4
  %1371 = load i32, ptr %kbl, align 4
  %add1620 = add nsw i32 %1370, %1371
  %sub1621 = sub nsw i32 %add1620, 1
  store i32 %sub1621, ptr %i__4, align 4
  %1372 = load i32, ptr %i__4, align 4
  %1373 = load ptr, ptr %n.addr, align 8
  %1374 = load i32, ptr %1373, align 4
  %cmp1622 = icmp sle i32 %1372, %1374
  br i1 %cmp1622, label %cond.true1624, label %cond.false1625

cond.true1624:                                    ; preds = %for.body1616
  %1375 = load i32, ptr %i__4, align 4
  br label %cond.end1626

cond.false1625:                                   ; preds = %for.body1616
  %1376 = load ptr, ptr %n.addr, align 8
  %1377 = load i32, ptr %1376, align 4
  br label %cond.end1626

cond.end1626:                                     ; preds = %cond.false1625, %cond.true1624
  %cond1627 = phi i32 [ %1375, %cond.true1624 ], [ %1377, %cond.false1625 ]
  store i32 %cond1627, ptr %i__3, align 4
  %1378 = load i32, ptr %igl, align 4
  store i32 %1378, ptr %p, align 4
  br label %for.cond1628

for.cond1628:                                     ; preds = %for.inc2488, %cond.end1626
  %1379 = load i32, ptr %p, align 4
  %1380 = load i32, ptr %i__3, align 4
  %cmp1629 = icmp sle i32 %1379, %1380
  br i1 %cmp1629, label %for.body1631, label %for.end2490

for.body1631:                                     ; preds = %for.cond1628
  %1381 = load ptr, ptr %sva.addr, align 8
  %1382 = load i32, ptr %p, align 4
  %idxprom1632 = sext i32 %1382 to i64
  %arrayidx1633 = getelementptr inbounds double, ptr %1381, i64 %idxprom1632
  %1383 = load double, ptr %arrayidx1633, align 8
  store double %1383, ptr %aapp, align 8
  %1384 = load double, ptr %aapp, align 8
  %cmp1634 = fcmp ogt double %1384, 0.000000e+00
  br i1 %cmp1634, label %if.then1636, label %if.else2467

if.then1636:                                      ; preds = %for.body1631
  store i32 0, ptr %pskipped, align 4
  %1385 = load i32, ptr %jgl, align 4
  %1386 = load i32, ptr %kbl, align 4
  %add1637 = add nsw i32 %1385, %1386
  %sub1638 = sub nsw i32 %add1637, 1
  store i32 %sub1638, ptr %i__5, align 4
  %1387 = load i32, ptr %i__5, align 4
  %1388 = load ptr, ptr %n.addr, align 8
  %1389 = load i32, ptr %1388, align 4
  %cmp1639 = icmp sle i32 %1387, %1389
  br i1 %cmp1639, label %cond.true1641, label %cond.false1642

cond.true1641:                                    ; preds = %if.then1636
  %1390 = load i32, ptr %i__5, align 4
  br label %cond.end1643

cond.false1642:                                   ; preds = %if.then1636
  %1391 = load ptr, ptr %n.addr, align 8
  %1392 = load i32, ptr %1391, align 4
  br label %cond.end1643

cond.end1643:                                     ; preds = %cond.false1642, %cond.true1641
  %cond1644 = phi i32 [ %1390, %cond.true1641 ], [ %1392, %cond.false1642 ]
  store i32 %cond1644, ptr %i__4, align 4
  %1393 = load i32, ptr %jgl, align 4
  store i32 %1393, ptr %q, align 4
  br label %for.cond1645

for.cond1645:                                     ; preds = %for.inc2462, %cond.end1643
  %1394 = load i32, ptr %q, align 4
  %1395 = load i32, ptr %i__4, align 4
  %cmp1646 = icmp sle i32 %1394, %1395
  br i1 %cmp1646, label %for.body1648, label %for.end2464

for.body1648:                                     ; preds = %for.cond1645
  %1396 = load ptr, ptr %sva.addr, align 8
  %1397 = load i32, ptr %q, align 4
  %idxprom1649 = sext i32 %1397 to i64
  %arrayidx1650 = getelementptr inbounds double, ptr %1396, i64 %idxprom1649
  %1398 = load double, ptr %arrayidx1650, align 8
  store double %1398, ptr %aaqq, align 8
  %1399 = load double, ptr %aaqq, align 8
  %cmp1651 = fcmp ogt double %1399, 0.000000e+00
  br i1 %cmp1651, label %if.then1653, label %if.else2440

if.then1653:                                      ; preds = %for.body1648
  %1400 = load double, ptr %aapp, align 8
  store double %1400, ptr %aapp0, align 8
  %1401 = load double, ptr %aaqq, align 8
  %cmp1654 = fcmp oge double %1401, 1.000000e+00
  br i1 %cmp1654, label %if.then1656, label %if.else1717

if.then1656:                                      ; preds = %if.then1653
  %1402 = load double, ptr %aapp, align 8
  %1403 = load double, ptr %aaqq, align 8
  %cmp1657 = fcmp oge double %1402, %1403
  br i1 %cmp1657, label %if.then1659, label %if.else1663

if.then1659:                                      ; preds = %if.then1656
  %1404 = load double, ptr %small, align 8
  %1405 = load double, ptr %aapp, align 8
  %mul1660 = fmul double %1404, %1405
  %1406 = load double, ptr %aaqq, align 8
  %cmp1661 = fcmp ole double %mul1660, %1406
  %conv1662 = zext i1 %cmp1661 to i32
  store i32 %conv1662, ptr %rotok, align 4
  br label %if.end1667

if.else1663:                                      ; preds = %if.then1656
  %1407 = load double, ptr %small, align 8
  %1408 = load double, ptr %aaqq, align 8
  %mul1664 = fmul double %1407, %1408
  %1409 = load double, ptr %aapp, align 8
  %cmp1665 = fcmp ole double %mul1664, %1409
  %conv1666 = zext i1 %cmp1665 to i32
  store i32 %conv1666, ptr %rotok, align 4
  br label %if.end1667

if.end1667:                                       ; preds = %if.else1663, %if.then1659
  %1410 = load double, ptr %aapp, align 8
  %1411 = load double, ptr %big, align 8
  %1412 = load double, ptr %aaqq, align 8
  %div1668 = fdiv double %1411, %1412
  %cmp1669 = fcmp olt double %1410, %div1668
  br i1 %cmp1669, label %if.then1671, label %if.else1689

if.then1671:                                      ; preds = %if.end1667
  %1413 = load ptr, ptr %m.addr, align 8
  %1414 = load ptr, ptr %a.addr, align 8
  %1415 = load i32, ptr %p, align 4
  %1416 = load i32, ptr %a_dim1, align 4
  %mul1672 = mul nsw i32 %1415, %1416
  %add1673 = add nsw i32 %mul1672, 1
  %idxprom1674 = sext i32 %add1673 to i64
  %arrayidx1675 = getelementptr inbounds double, ptr %1414, i64 %idxprom1674
  %1417 = load ptr, ptr %a.addr, align 8
  %1418 = load i32, ptr %q, align 4
  %1419 = load i32, ptr %a_dim1, align 4
  %mul1676 = mul nsw i32 %1418, %1419
  %add1677 = add nsw i32 %mul1676, 1
  %idxprom1678 = sext i32 %add1677 to i64
  %arrayidx1679 = getelementptr inbounds double, ptr %1417, i64 %idxprom1678
  %call1680 = call double @ddot_(ptr noundef %1413, ptr noundef %arrayidx1675, ptr noundef @c__1, ptr noundef %arrayidx1679, ptr noundef @c__1)
  %1420 = load ptr, ptr %work.addr, align 8
  %1421 = load i32, ptr %p, align 4
  %idxprom1681 = sext i32 %1421 to i64
  %arrayidx1682 = getelementptr inbounds double, ptr %1420, i64 %idxprom1681
  %1422 = load double, ptr %arrayidx1682, align 8
  %mul1683 = fmul double %call1680, %1422
  %1423 = load ptr, ptr %work.addr, align 8
  %1424 = load i32, ptr %q, align 4
  %idxprom1684 = sext i32 %1424 to i64
  %arrayidx1685 = getelementptr inbounds double, ptr %1423, i64 %idxprom1684
  %1425 = load double, ptr %arrayidx1685, align 8
  %mul1686 = fmul double %mul1683, %1425
  %1426 = load double, ptr %aaqq, align 8
  %div1687 = fdiv double %mul1686, %1426
  %1427 = load double, ptr %aapp, align 8
  %div1688 = fdiv double %div1687, %1427
  store double %div1688, ptr %aapq, align 8
  br label %if.end1716

if.else1689:                                      ; preds = %if.end1667
  %1428 = load ptr, ptr %m.addr, align 8
  %1429 = load ptr, ptr %a.addr, align 8
  %1430 = load i32, ptr %p, align 4
  %1431 = load i32, ptr %a_dim1, align 4
  %mul1690 = mul nsw i32 %1430, %1431
  %add1691 = add nsw i32 %mul1690, 1
  %idxprom1692 = sext i32 %add1691 to i64
  %arrayidx1693 = getelementptr inbounds double, ptr %1429, i64 %idxprom1692
  %1432 = load ptr, ptr %work.addr, align 8
  %1433 = load ptr, ptr %n.addr, align 8
  %1434 = load i32, ptr %1433, align 4
  %add1694 = add nsw i32 %1434, 1
  %idxprom1695 = sext i32 %add1694 to i64
  %arrayidx1696 = getelementptr inbounds double, ptr %1432, i64 %idxprom1695
  %call1697 = call i32 @dcopy_(ptr noundef %1428, ptr noundef %arrayidx1693, ptr noundef @c__1, ptr noundef %arrayidx1696, ptr noundef @c__1)
  %1435 = load ptr, ptr %work.addr, align 8
  %1436 = load i32, ptr %p, align 4
  %idxprom1698 = sext i32 %1436 to i64
  %arrayidx1699 = getelementptr inbounds double, ptr %1435, i64 %idxprom1698
  %1437 = load ptr, ptr %m.addr, align 8
  %1438 = load ptr, ptr %work.addr, align 8
  %1439 = load ptr, ptr %n.addr, align 8
  %1440 = load i32, ptr %1439, align 4
  %add1700 = add nsw i32 %1440, 1
  %idxprom1701 = sext i32 %add1700 to i64
  %arrayidx1702 = getelementptr inbounds double, ptr %1438, i64 %idxprom1701
  %1441 = load ptr, ptr %lda.addr, align 8
  %call1703 = call i32 @dlascl_(ptr noundef @.str.5, ptr noundef @c__0, ptr noundef @c__0, ptr noundef %aapp, ptr noundef %arrayidx1699, ptr noundef %1437, ptr noundef @c__1, ptr noundef %arrayidx1702, ptr noundef %1441, ptr noundef %ierr)
  %1442 = load ptr, ptr %m.addr, align 8
  %1443 = load ptr, ptr %work.addr, align 8
  %1444 = load ptr, ptr %n.addr, align 8
  %1445 = load i32, ptr %1444, align 4
  %add1704 = add nsw i32 %1445, 1
  %idxprom1705 = sext i32 %add1704 to i64
  %arrayidx1706 = getelementptr inbounds double, ptr %1443, i64 %idxprom1705
  %1446 = load ptr, ptr %a.addr, align 8
  %1447 = load i32, ptr %q, align 4
  %1448 = load i32, ptr %a_dim1, align 4
  %mul1707 = mul nsw i32 %1447, %1448
  %add1708 = add nsw i32 %mul1707, 1
  %idxprom1709 = sext i32 %add1708 to i64
  %arrayidx1710 = getelementptr inbounds double, ptr %1446, i64 %idxprom1709
  %call1711 = call double @ddot_(ptr noundef %1442, ptr noundef %arrayidx1706, ptr noundef @c__1, ptr noundef %arrayidx1710, ptr noundef @c__1)
  %1449 = load ptr, ptr %work.addr, align 8
  %1450 = load i32, ptr %q, align 4
  %idxprom1712 = sext i32 %1450 to i64
  %arrayidx1713 = getelementptr inbounds double, ptr %1449, i64 %idxprom1712
  %1451 = load double, ptr %arrayidx1713, align 8
  %mul1714 = fmul double %call1711, %1451
  %1452 = load double, ptr %aaqq, align 8
  %div1715 = fdiv double %mul1714, %1452
  store double %div1715, ptr %aapq, align 8
  br label %if.end1716

if.end1716:                                       ; preds = %if.else1689, %if.then1671
  br label %if.end1778

if.else1717:                                      ; preds = %if.then1653
  %1453 = load double, ptr %aapp, align 8
  %1454 = load double, ptr %aaqq, align 8
  %cmp1718 = fcmp oge double %1453, %1454
  br i1 %cmp1718, label %if.then1720, label %if.else1724

if.then1720:                                      ; preds = %if.else1717
  %1455 = load double, ptr %aapp, align 8
  %1456 = load double, ptr %aaqq, align 8
  %1457 = load double, ptr %small, align 8
  %div1721 = fdiv double %1456, %1457
  %cmp1722 = fcmp ole double %1455, %div1721
  %conv1723 = zext i1 %cmp1722 to i32
  store i32 %conv1723, ptr %rotok, align 4
  br label %if.end1728

if.else1724:                                      ; preds = %if.else1717
  %1458 = load double, ptr %aaqq, align 8
  %1459 = load double, ptr %aapp, align 8
  %1460 = load double, ptr %small, align 8
  %div1725 = fdiv double %1459, %1460
  %cmp1726 = fcmp ole double %1458, %div1725
  %conv1727 = zext i1 %cmp1726 to i32
  store i32 %conv1727, ptr %rotok, align 4
  br label %if.end1728

if.end1728:                                       ; preds = %if.else1724, %if.then1720
  %1461 = load double, ptr %aapp, align 8
  %1462 = load double, ptr %small, align 8
  %1463 = load double, ptr %aaqq, align 8
  %div1729 = fdiv double %1462, %1463
  %cmp1730 = fcmp ogt double %1461, %div1729
  br i1 %cmp1730, label %if.then1732, label %if.else1750

if.then1732:                                      ; preds = %if.end1728
  %1464 = load ptr, ptr %m.addr, align 8
  %1465 = load ptr, ptr %a.addr, align 8
  %1466 = load i32, ptr %p, align 4
  %1467 = load i32, ptr %a_dim1, align 4
  %mul1733 = mul nsw i32 %1466, %1467
  %add1734 = add nsw i32 %mul1733, 1
  %idxprom1735 = sext i32 %add1734 to i64
  %arrayidx1736 = getelementptr inbounds double, ptr %1465, i64 %idxprom1735
  %1468 = load ptr, ptr %a.addr, align 8
  %1469 = load i32, ptr %q, align 4
  %1470 = load i32, ptr %a_dim1, align 4
  %mul1737 = mul nsw i32 %1469, %1470
  %add1738 = add nsw i32 %mul1737, 1
  %idxprom1739 = sext i32 %add1738 to i64
  %arrayidx1740 = getelementptr inbounds double, ptr %1468, i64 %idxprom1739
  %call1741 = call double @ddot_(ptr noundef %1464, ptr noundef %arrayidx1736, ptr noundef @c__1, ptr noundef %arrayidx1740, ptr noundef @c__1)
  %1471 = load ptr, ptr %work.addr, align 8
  %1472 = load i32, ptr %p, align 4
  %idxprom1742 = sext i32 %1472 to i64
  %arrayidx1743 = getelementptr inbounds double, ptr %1471, i64 %idxprom1742
  %1473 = load double, ptr %arrayidx1743, align 8
  %mul1744 = fmul double %call1741, %1473
  %1474 = load ptr, ptr %work.addr, align 8
  %1475 = load i32, ptr %q, align 4
  %idxprom1745 = sext i32 %1475 to i64
  %arrayidx1746 = getelementptr inbounds double, ptr %1474, i64 %idxprom1745
  %1476 = load double, ptr %arrayidx1746, align 8
  %mul1747 = fmul double %mul1744, %1476
  %1477 = load double, ptr %aaqq, align 8
  %div1748 = fdiv double %mul1747, %1477
  %1478 = load double, ptr %aapp, align 8
  %div1749 = fdiv double %div1748, %1478
  store double %div1749, ptr %aapq, align 8
  br label %if.end1777

if.else1750:                                      ; preds = %if.end1728
  %1479 = load ptr, ptr %m.addr, align 8
  %1480 = load ptr, ptr %a.addr, align 8
  %1481 = load i32, ptr %q, align 4
  %1482 = load i32, ptr %a_dim1, align 4
  %mul1751 = mul nsw i32 %1481, %1482
  %add1752 = add nsw i32 %mul1751, 1
  %idxprom1753 = sext i32 %add1752 to i64
  %arrayidx1754 = getelementptr inbounds double, ptr %1480, i64 %idxprom1753
  %1483 = load ptr, ptr %work.addr, align 8
  %1484 = load ptr, ptr %n.addr, align 8
  %1485 = load i32, ptr %1484, align 4
  %add1755 = add nsw i32 %1485, 1
  %idxprom1756 = sext i32 %add1755 to i64
  %arrayidx1757 = getelementptr inbounds double, ptr %1483, i64 %idxprom1756
  %call1758 = call i32 @dcopy_(ptr noundef %1479, ptr noundef %arrayidx1754, ptr noundef @c__1, ptr noundef %arrayidx1757, ptr noundef @c__1)
  %1486 = load ptr, ptr %work.addr, align 8
  %1487 = load i32, ptr %q, align 4
  %idxprom1759 = sext i32 %1487 to i64
  %arrayidx1760 = getelementptr inbounds double, ptr %1486, i64 %idxprom1759
  %1488 = load ptr, ptr %m.addr, align 8
  %1489 = load ptr, ptr %work.addr, align 8
  %1490 = load ptr, ptr %n.addr, align 8
  %1491 = load i32, ptr %1490, align 4
  %add1761 = add nsw i32 %1491, 1
  %idxprom1762 = sext i32 %add1761 to i64
  %arrayidx1763 = getelementptr inbounds double, ptr %1489, i64 %idxprom1762
  %1492 = load ptr, ptr %lda.addr, align 8
  %call1764 = call i32 @dlascl_(ptr noundef @.str.5, ptr noundef @c__0, ptr noundef @c__0, ptr noundef %aaqq, ptr noundef %arrayidx1760, ptr noundef %1488, ptr noundef @c__1, ptr noundef %arrayidx1763, ptr noundef %1492, ptr noundef %ierr)
  %1493 = load ptr, ptr %m.addr, align 8
  %1494 = load ptr, ptr %work.addr, align 8
  %1495 = load ptr, ptr %n.addr, align 8
  %1496 = load i32, ptr %1495, align 4
  %add1765 = add nsw i32 %1496, 1
  %idxprom1766 = sext i32 %add1765 to i64
  %arrayidx1767 = getelementptr inbounds double, ptr %1494, i64 %idxprom1766
  %1497 = load ptr, ptr %a.addr, align 8
  %1498 = load i32, ptr %p, align 4
  %1499 = load i32, ptr %a_dim1, align 4
  %mul1768 = mul nsw i32 %1498, %1499
  %add1769 = add nsw i32 %mul1768, 1
  %idxprom1770 = sext i32 %add1769 to i64
  %arrayidx1771 = getelementptr inbounds double, ptr %1497, i64 %idxprom1770
  %call1772 = call double @ddot_(ptr noundef %1493, ptr noundef %arrayidx1767, ptr noundef @c__1, ptr noundef %arrayidx1771, ptr noundef @c__1)
  %1500 = load ptr, ptr %work.addr, align 8
  %1501 = load i32, ptr %p, align 4
  %idxprom1773 = sext i32 %1501 to i64
  %arrayidx1774 = getelementptr inbounds double, ptr %1500, i64 %idxprom1773
  %1502 = load double, ptr %arrayidx1774, align 8
  %mul1775 = fmul double %call1772, %1502
  %1503 = load double, ptr %aapp, align 8
  %div1776 = fdiv double %mul1775, %1503
  store double %div1776, ptr %aapq, align 8
  br label %if.end1777

if.end1777:                                       ; preds = %if.else1750, %if.then1732
  br label %if.end1778

if.end1778:                                       ; preds = %if.end1777, %if.end1716
  %1504 = load double, ptr %mxaapq, align 8
  store double %1504, ptr %d__1, align 8
  %1505 = load double, ptr %aapq, align 8
  %cmp1779 = fcmp oge double %1505, 0.000000e+00
  br i1 %cmp1779, label %cond.true1781, label %cond.false1782

cond.true1781:                                    ; preds = %if.end1778
  %1506 = load double, ptr %aapq, align 8
  br label %cond.end1784

cond.false1782:                                   ; preds = %if.end1778
  %1507 = load double, ptr %aapq, align 8
  %fneg1783 = fneg double %1507
  br label %cond.end1784

cond.end1784:                                     ; preds = %cond.false1782, %cond.true1781
  %cond1785 = phi double [ %1506, %cond.true1781 ], [ %fneg1783, %cond.false1782 ]
  store double %cond1785, ptr %d__2, align 8
  %1508 = load double, ptr %d__1, align 8
  %1509 = load double, ptr %d__2, align 8
  %cmp1786 = fcmp oge double %1508, %1509
  br i1 %cmp1786, label %cond.true1788, label %cond.false1789

cond.true1788:                                    ; preds = %cond.end1784
  %1510 = load double, ptr %d__1, align 8
  br label %cond.end1790

cond.false1789:                                   ; preds = %cond.end1784
  %1511 = load double, ptr %d__2, align 8
  br label %cond.end1790

cond.end1790:                                     ; preds = %cond.false1789, %cond.true1788
  %cond1791 = phi double [ %1510, %cond.true1788 ], [ %1511, %cond.false1789 ]
  store double %cond1791, ptr %mxaapq, align 8
  %1512 = load double, ptr %aapq, align 8
  %cmp1792 = fcmp oge double %1512, 0.000000e+00
  br i1 %cmp1792, label %cond.true1794, label %cond.false1795

cond.true1794:                                    ; preds = %cond.end1790
  %1513 = load double, ptr %aapq, align 8
  br label %cond.end1797

cond.false1795:                                   ; preds = %cond.end1790
  %1514 = load double, ptr %aapq, align 8
  %fneg1796 = fneg double %1514
  br label %cond.end1797

cond.end1797:                                     ; preds = %cond.false1795, %cond.true1794
  %cond1798 = phi double [ %1513, %cond.true1794 ], [ %fneg1796, %cond.false1795 ]
  %1515 = load double, ptr %tol, align 8
  %cmp1799 = fcmp ogt double %cond1798, %1515
  br i1 %cmp1799, label %if.then1801, label %if.else2435

if.then1801:                                      ; preds = %cond.end1797
  store i32 0, ptr %notrot, align 4
  store i32 0, ptr %pskipped, align 4
  %1516 = load i32, ptr %iswrot, align 4
  %inc1802 = add nsw i32 %1516, 1
  store i32 %inc1802, ptr %iswrot, align 4
  %1517 = load i32, ptr %rotok, align 4
  %tobool1803 = icmp ne i32 %1517, 0
  br i1 %tobool1803, label %if.then1804, label %if.else2246

if.then1804:                                      ; preds = %if.then1801
  %1518 = load double, ptr %aaqq, align 8
  %1519 = load double, ptr %aapp, align 8
  %div1805 = fdiv double %1518, %1519
  store double %div1805, ptr %aqoap, align 8
  %1520 = load double, ptr %aapp, align 8
  %1521 = load double, ptr %aaqq, align 8
  %div1806 = fdiv double %1520, %1521
  store double %div1806, ptr %apoaq, align 8
  %1522 = load double, ptr %aqoap, align 8
  %1523 = load double, ptr %apoaq, align 8
  %sub1807 = fsub double %1522, %1523
  store double %sub1807, ptr %d__1, align 8
  %1524 = load double, ptr %d__1, align 8
  %cmp1808 = fcmp oge double %1524, 0.000000e+00
  br i1 %cmp1808, label %cond.true1810, label %cond.false1811

cond.true1810:                                    ; preds = %if.then1804
  %1525 = load double, ptr %d__1, align 8
  br label %cond.end1813

cond.false1811:                                   ; preds = %if.then1804
  %1526 = load double, ptr %d__1, align 8
  %fneg1812 = fneg double %1526
  br label %cond.end1813

cond.end1813:                                     ; preds = %cond.false1811, %cond.true1810
  %cond1814 = phi double [ %1525, %cond.true1810 ], [ %fneg1812, %cond.false1811 ]
  %mul1815 = fmul double %cond1814, -5.000000e-01
  %1527 = load double, ptr %aapq, align 8
  %div1816 = fdiv double %mul1815, %1527
  store double %div1816, ptr %theta, align 8
  %1528 = load double, ptr %aaqq, align 8
  %1529 = load double, ptr %aapp0, align 8
  %cmp1817 = fcmp ogt double %1528, %1529
  br i1 %cmp1817, label %if.then1819, label %if.end1821

if.then1819:                                      ; preds = %cond.end1813
  %1530 = load double, ptr %theta, align 8
  %fneg1820 = fneg double %1530
  store double %fneg1820, ptr %theta, align 8
  br label %if.end1821

if.end1821:                                       ; preds = %if.then1819, %cond.end1813
  %1531 = load double, ptr %theta, align 8
  %cmp1822 = fcmp oge double %1531, 0.000000e+00
  br i1 %cmp1822, label %cond.true1824, label %cond.false1825

cond.true1824:                                    ; preds = %if.end1821
  %1532 = load double, ptr %theta, align 8
  br label %cond.end1827

cond.false1825:                                   ; preds = %if.end1821
  %1533 = load double, ptr %theta, align 8
  %fneg1826 = fneg double %1533
  br label %cond.end1827

cond.end1827:                                     ; preds = %cond.false1825, %cond.true1824
  %cond1828 = phi double [ %1532, %cond.true1824 ], [ %fneg1826, %cond.false1825 ]
  %1534 = load double, ptr %bigtheta, align 8
  %cmp1829 = fcmp ogt double %cond1828, %1534
  br i1 %cmp1829, label %if.then1831, label %if.else1907

if.then1831:                                      ; preds = %cond.end1827
  %1535 = load double, ptr %theta, align 8
  %div1832 = fdiv double 5.000000e-01, %1535
  store double %div1832, ptr %t, align 8
  %1536 = load double, ptr %t, align 8
  %1537 = load ptr, ptr %work.addr, align 8
  %1538 = load i32, ptr %p, align 4
  %idxprom1833 = sext i32 %1538 to i64
  %arrayidx1834 = getelementptr inbounds double, ptr %1537, i64 %idxprom1833
  %1539 = load double, ptr %arrayidx1834, align 8
  %mul1835 = fmul double %1536, %1539
  %1540 = load ptr, ptr %work.addr, align 8
  %1541 = load i32, ptr %q, align 4
  %idxprom1836 = sext i32 %1541 to i64
  %arrayidx1837 = getelementptr inbounds double, ptr %1540, i64 %idxprom1836
  %1542 = load double, ptr %arrayidx1837, align 8
  %div1838 = fdiv double %mul1835, %1542
  %arrayidx1839 = getelementptr inbounds [5 x double], ptr %fastr, i64 0, i64 2
  store double %div1838, ptr %arrayidx1839, align 16
  %1543 = load double, ptr %t, align 8
  %fneg1840 = fneg double %1543
  %1544 = load ptr, ptr %work.addr, align 8
  %1545 = load i32, ptr %q, align 4
  %idxprom1841 = sext i32 %1545 to i64
  %arrayidx1842 = getelementptr inbounds double, ptr %1544, i64 %idxprom1841
  %1546 = load double, ptr %arrayidx1842, align 8
  %mul1843 = fmul double %fneg1840, %1546
  %1547 = load ptr, ptr %work.addr, align 8
  %1548 = load i32, ptr %p, align 4
  %idxprom1844 = sext i32 %1548 to i64
  %arrayidx1845 = getelementptr inbounds double, ptr %1547, i64 %idxprom1844
  %1549 = load double, ptr %arrayidx1845, align 8
  %div1846 = fdiv double %mul1843, %1549
  %arrayidx1847 = getelementptr inbounds [5 x double], ptr %fastr, i64 0, i64 3
  store double %div1846, ptr %arrayidx1847, align 8
  %1550 = load ptr, ptr %m.addr, align 8
  %1551 = load ptr, ptr %a.addr, align 8
  %1552 = load i32, ptr %p, align 4
  %1553 = load i32, ptr %a_dim1, align 4
  %mul1848 = mul nsw i32 %1552, %1553
  %add1849 = add nsw i32 %mul1848, 1
  %idxprom1850 = sext i32 %add1849 to i64
  %arrayidx1851 = getelementptr inbounds double, ptr %1551, i64 %idxprom1850
  %1554 = load ptr, ptr %a.addr, align 8
  %1555 = load i32, ptr %q, align 4
  %1556 = load i32, ptr %a_dim1, align 4
  %mul1852 = mul nsw i32 %1555, %1556
  %add1853 = add nsw i32 %mul1852, 1
  %idxprom1854 = sext i32 %add1853 to i64
  %arrayidx1855 = getelementptr inbounds double, ptr %1554, i64 %idxprom1854
  %arraydecay1856 = getelementptr inbounds [5 x double], ptr %fastr, i64 0, i64 0
  %call1857 = call i32 @drotm_(ptr noundef %1550, ptr noundef %arrayidx1851, ptr noundef @c__1, ptr noundef %arrayidx1855, ptr noundef @c__1, ptr noundef %arraydecay1856)
  %1557 = load i32, ptr %rsvec, align 4
  %tobool1858 = icmp ne i32 %1557, 0
  br i1 %tobool1858, label %if.then1859, label %if.end1870

if.then1859:                                      ; preds = %if.then1831
  %1558 = load ptr, ptr %v.addr, align 8
  %1559 = load i32, ptr %p, align 4
  %1560 = load i32, ptr %v_dim1, align 4
  %mul1860 = mul nsw i32 %1559, %1560
  %add1861 = add nsw i32 %mul1860, 1
  %idxprom1862 = sext i32 %add1861 to i64
  %arrayidx1863 = getelementptr inbounds double, ptr %1558, i64 %idxprom1862
  %1561 = load ptr, ptr %v.addr, align 8
  %1562 = load i32, ptr %q, align 4
  %1563 = load i32, ptr %v_dim1, align 4
  %mul1864 = mul nsw i32 %1562, %1563
  %add1865 = add nsw i32 %mul1864, 1
  %idxprom1866 = sext i32 %add1865 to i64
  %arrayidx1867 = getelementptr inbounds double, ptr %1561, i64 %idxprom1866
  %arraydecay1868 = getelementptr inbounds [5 x double], ptr %fastr, i64 0, i64 0
  %call1869 = call i32 @drotm_(ptr noundef %mvl, ptr noundef %arrayidx1863, ptr noundef @c__1, ptr noundef %arrayidx1867, ptr noundef @c__1, ptr noundef %arraydecay1868)
  br label %if.end1870

if.end1870:                                       ; preds = %if.then1859, %if.then1831
  store double 0.000000e+00, ptr %d__1, align 8
  %1564 = load double, ptr %t, align 8
  %1565 = load double, ptr %apoaq, align 8
  %mul1871 = fmul double %1564, %1565
  %1566 = load double, ptr %aapq, align 8
  %1567 = call double @llvm.fmuladd.f64(double %mul1871, double %1566, double 1.000000e+00)
  store double %1567, ptr %d__2, align 8
  %1568 = load double, ptr %aaqq, align 8
  %1569 = load double, ptr %d__1, align 8
  %1570 = load double, ptr %d__2, align 8
  %cmp1873 = fcmp oge double %1569, %1570
  br i1 %cmp1873, label %cond.true1875, label %cond.false1876

cond.true1875:                                    ; preds = %if.end1870
  %1571 = load double, ptr %d__1, align 8
  br label %cond.end1877

cond.false1876:                                   ; preds = %if.end1870
  %1572 = load double, ptr %d__2, align 8
  br label %cond.end1877

cond.end1877:                                     ; preds = %cond.false1876, %cond.true1875
  %cond1878 = phi double [ %1571, %cond.true1875 ], [ %1572, %cond.false1876 ]
  %call1879 = call double @sqrt(double noundef %cond1878) #4
  %mul1880 = fmul double %1568, %call1879
  %1573 = load ptr, ptr %sva.addr, align 8
  %1574 = load i32, ptr %q, align 4
  %idxprom1881 = sext i32 %1574 to i64
  %arrayidx1882 = getelementptr inbounds double, ptr %1573, i64 %idxprom1881
  store double %mul1880, ptr %arrayidx1882, align 8
  store double 0.000000e+00, ptr %d__1, align 8
  %1575 = load double, ptr %t, align 8
  %1576 = load double, ptr %aqoap, align 8
  %mul1883 = fmul double %1575, %1576
  %1577 = load double, ptr %aapq, align 8
  %neg1885 = fneg double %mul1883
  %1578 = call double @llvm.fmuladd.f64(double %neg1885, double %1577, double 1.000000e+00)
  store double %1578, ptr %d__2, align 8
  %1579 = load double, ptr %d__1, align 8
  %1580 = load double, ptr %d__2, align 8
  %cmp1886 = fcmp oge double %1579, %1580
  br i1 %cmp1886, label %cond.true1888, label %cond.false1889

cond.true1888:                                    ; preds = %cond.end1877
  %1581 = load double, ptr %d__1, align 8
  br label %cond.end1890

cond.false1889:                                   ; preds = %cond.end1877
  %1582 = load double, ptr %d__2, align 8
  br label %cond.end1890

cond.end1890:                                     ; preds = %cond.false1889, %cond.true1888
  %cond1891 = phi double [ %1581, %cond.true1888 ], [ %1582, %cond.false1889 ]
  %call1892 = call double @sqrt(double noundef %cond1891) #4
  %1583 = load double, ptr %aapp, align 8
  %mul1893 = fmul double %1583, %call1892
  store double %mul1893, ptr %aapp, align 8
  %1584 = load double, ptr %mxsinj, align 8
  store double %1584, ptr %d__1, align 8
  %1585 = load double, ptr %t, align 8
  %cmp1894 = fcmp oge double %1585, 0.000000e+00
  br i1 %cmp1894, label %cond.true1896, label %cond.false1897

cond.true1896:                                    ; preds = %cond.end1890
  %1586 = load double, ptr %t, align 8
  br label %cond.end1899

cond.false1897:                                   ; preds = %cond.end1890
  %1587 = load double, ptr %t, align 8
  %fneg1898 = fneg double %1587
  br label %cond.end1899

cond.end1899:                                     ; preds = %cond.false1897, %cond.true1896
  %cond1900 = phi double [ %1586, %cond.true1896 ], [ %fneg1898, %cond.false1897 ]
  store double %cond1900, ptr %d__2, align 8
  %1588 = load double, ptr %d__1, align 8
  %1589 = load double, ptr %d__2, align 8
  %cmp1901 = fcmp oge double %1588, %1589
  br i1 %cmp1901, label %cond.true1903, label %cond.false1904

cond.true1903:                                    ; preds = %cond.end1899
  %1590 = load double, ptr %d__1, align 8
  br label %cond.end1905

cond.false1904:                                   ; preds = %cond.end1899
  %1591 = load double, ptr %d__2, align 8
  br label %cond.end1905

cond.end1905:                                     ; preds = %cond.false1904, %cond.true1903
  %cond1906 = phi double [ %1590, %cond.true1903 ], [ %1591, %cond.false1904 ]
  store double %cond1906, ptr %mxsinj, align 8
  br label %if.end2245

if.else1907:                                      ; preds = %cond.end1827
  %call1908 = call double @d_sign(ptr noundef @c_b18, ptr noundef %aapq)
  %fneg1909 = fneg double %call1908
  store double %fneg1909, ptr %thsign, align 8
  %1592 = load double, ptr %aaqq, align 8
  %1593 = load double, ptr %aapp0, align 8
  %cmp1910 = fcmp ogt double %1592, %1593
  br i1 %cmp1910, label %if.then1912, label %if.end1914

if.then1912:                                      ; preds = %if.else1907
  %1594 = load double, ptr %thsign, align 8
  %fneg1913 = fneg double %1594
  store double %fneg1913, ptr %thsign, align 8
  br label %if.end1914

if.end1914:                                       ; preds = %if.then1912, %if.else1907
  %1595 = load double, ptr %theta, align 8
  %1596 = load double, ptr %thsign, align 8
  %1597 = load double, ptr %theta, align 8
  %1598 = load double, ptr %theta, align 8
  %1599 = call double @llvm.fmuladd.f64(double %1597, double %1598, double 1.000000e+00)
  %call1916 = call double @sqrt(double noundef %1599) #4
  %1600 = call double @llvm.fmuladd.f64(double %1596, double %call1916, double %1595)
  %div1918 = fdiv double 1.000000e+00, %1600
  store double %div1918, ptr %t, align 8
  %1601 = load double, ptr %t, align 8
  %1602 = load double, ptr %t, align 8
  %1603 = call double @llvm.fmuladd.f64(double %1601, double %1602, double 1.000000e+00)
  %div1920 = fdiv double 1.000000e+00, %1603
  %call1921 = call double @sqrt(double noundef %div1920) #4
  store double %call1921, ptr %cs, align 8
  %1604 = load double, ptr %t, align 8
  %1605 = load double, ptr %cs, align 8
  %mul1922 = fmul double %1604, %1605
  store double %mul1922, ptr %sn, align 8
  %1606 = load double, ptr %mxsinj, align 8
  store double %1606, ptr %d__1, align 8
  %1607 = load double, ptr %sn, align 8
  %cmp1923 = fcmp oge double %1607, 0.000000e+00
  br i1 %cmp1923, label %cond.true1925, label %cond.false1926

cond.true1925:                                    ; preds = %if.end1914
  %1608 = load double, ptr %sn, align 8
  br label %cond.end1928

cond.false1926:                                   ; preds = %if.end1914
  %1609 = load double, ptr %sn, align 8
  %fneg1927 = fneg double %1609
  br label %cond.end1928

cond.end1928:                                     ; preds = %cond.false1926, %cond.true1925
  %cond1929 = phi double [ %1608, %cond.true1925 ], [ %fneg1927, %cond.false1926 ]
  store double %cond1929, ptr %d__2, align 8
  %1610 = load double, ptr %d__1, align 8
  %1611 = load double, ptr %d__2, align 8
  %cmp1930 = fcmp oge double %1610, %1611
  br i1 %cmp1930, label %cond.true1932, label %cond.false1933

cond.true1932:                                    ; preds = %cond.end1928
  %1612 = load double, ptr %d__1, align 8
  br label %cond.end1934

cond.false1933:                                   ; preds = %cond.end1928
  %1613 = load double, ptr %d__2, align 8
  br label %cond.end1934

cond.end1934:                                     ; preds = %cond.false1933, %cond.true1932
  %cond1935 = phi double [ %1612, %cond.true1932 ], [ %1613, %cond.false1933 ]
  store double %cond1935, ptr %mxsinj, align 8
  store double 0.000000e+00, ptr %d__1, align 8
  %1614 = load double, ptr %t, align 8
  %1615 = load double, ptr %apoaq, align 8
  %mul1936 = fmul double %1614, %1615
  %1616 = load double, ptr %aapq, align 8
  %1617 = call double @llvm.fmuladd.f64(double %mul1936, double %1616, double 1.000000e+00)
  store double %1617, ptr %d__2, align 8
  %1618 = load double, ptr %aaqq, align 8
  %1619 = load double, ptr %d__1, align 8
  %1620 = load double, ptr %d__2, align 8
  %cmp1938 = fcmp oge double %1619, %1620
  br i1 %cmp1938, label %cond.true1940, label %cond.false1941

cond.true1940:                                    ; preds = %cond.end1934
  %1621 = load double, ptr %d__1, align 8
  br label %cond.end1942

cond.false1941:                                   ; preds = %cond.end1934
  %1622 = load double, ptr %d__2, align 8
  br label %cond.end1942

cond.end1942:                                     ; preds = %cond.false1941, %cond.true1940
  %cond1943 = phi double [ %1621, %cond.true1940 ], [ %1622, %cond.false1941 ]
  %call1944 = call double @sqrt(double noundef %cond1943) #4
  %mul1945 = fmul double %1618, %call1944
  %1623 = load ptr, ptr %sva.addr, align 8
  %1624 = load i32, ptr %q, align 4
  %idxprom1946 = sext i32 %1624 to i64
  %arrayidx1947 = getelementptr inbounds double, ptr %1623, i64 %idxprom1946
  store double %mul1945, ptr %arrayidx1947, align 8
  store double 0.000000e+00, ptr %d__1, align 8
  %1625 = load double, ptr %t, align 8
  %1626 = load double, ptr %aqoap, align 8
  %mul1948 = fmul double %1625, %1626
  %1627 = load double, ptr %aapq, align 8
  %neg1950 = fneg double %mul1948
  %1628 = call double @llvm.fmuladd.f64(double %neg1950, double %1627, double 1.000000e+00)
  store double %1628, ptr %d__2, align 8
  %1629 = load double, ptr %d__1, align 8
  %1630 = load double, ptr %d__2, align 8
  %cmp1951 = fcmp oge double %1629, %1630
  br i1 %cmp1951, label %cond.true1953, label %cond.false1954

cond.true1953:                                    ; preds = %cond.end1942
  %1631 = load double, ptr %d__1, align 8
  br label %cond.end1955

cond.false1954:                                   ; preds = %cond.end1942
  %1632 = load double, ptr %d__2, align 8
  br label %cond.end1955

cond.end1955:                                     ; preds = %cond.false1954, %cond.true1953
  %cond1956 = phi double [ %1631, %cond.true1953 ], [ %1632, %cond.false1954 ]
  %call1957 = call double @sqrt(double noundef %cond1956) #4
  %1633 = load double, ptr %aapp, align 8
  %mul1958 = fmul double %1633, %call1957
  store double %mul1958, ptr %aapp, align 8
  %1634 = load ptr, ptr %work.addr, align 8
  %1635 = load i32, ptr %p, align 4
  %idxprom1959 = sext i32 %1635 to i64
  %arrayidx1960 = getelementptr inbounds double, ptr %1634, i64 %idxprom1959
  %1636 = load double, ptr %arrayidx1960, align 8
  %1637 = load ptr, ptr %work.addr, align 8
  %1638 = load i32, ptr %q, align 4
  %idxprom1961 = sext i32 %1638 to i64
  %arrayidx1962 = getelementptr inbounds double, ptr %1637, i64 %idxprom1961
  %1639 = load double, ptr %arrayidx1962, align 8
  %div1963 = fdiv double %1636, %1639
  store double %div1963, ptr %apoaq, align 8
  %1640 = load ptr, ptr %work.addr, align 8
  %1641 = load i32, ptr %q, align 4
  %idxprom1964 = sext i32 %1641 to i64
  %arrayidx1965 = getelementptr inbounds double, ptr %1640, i64 %idxprom1964
  %1642 = load double, ptr %arrayidx1965, align 8
  %1643 = load ptr, ptr %work.addr, align 8
  %1644 = load i32, ptr %p, align 4
  %idxprom1966 = sext i32 %1644 to i64
  %arrayidx1967 = getelementptr inbounds double, ptr %1643, i64 %idxprom1966
  %1645 = load double, ptr %arrayidx1967, align 8
  %div1968 = fdiv double %1642, %1645
  store double %div1968, ptr %aqoap, align 8
  %1646 = load ptr, ptr %work.addr, align 8
  %1647 = load i32, ptr %p, align 4
  %idxprom1969 = sext i32 %1647 to i64
  %arrayidx1970 = getelementptr inbounds double, ptr %1646, i64 %idxprom1969
  %1648 = load double, ptr %arrayidx1970, align 8
  %cmp1971 = fcmp oge double %1648, 1.000000e+00
  br i1 %cmp1971, label %if.then1973, label %if.else2068

if.then1973:                                      ; preds = %cond.end1955
  %1649 = load ptr, ptr %work.addr, align 8
  %1650 = load i32, ptr %q, align 4
  %idxprom1974 = sext i32 %1650 to i64
  %arrayidx1975 = getelementptr inbounds double, ptr %1649, i64 %idxprom1974
  %1651 = load double, ptr %arrayidx1975, align 8
  %cmp1976 = fcmp oge double %1651, 1.000000e+00
  br i1 %cmp1976, label %if.then1978, label %if.else2013

if.then1978:                                      ; preds = %if.then1973
  %1652 = load double, ptr %t, align 8
  %1653 = load double, ptr %apoaq, align 8
  %mul1979 = fmul double %1652, %1653
  %arrayidx1980 = getelementptr inbounds [5 x double], ptr %fastr, i64 0, i64 2
  store double %mul1979, ptr %arrayidx1980, align 16
  %1654 = load double, ptr %t, align 8
  %fneg1981 = fneg double %1654
  %1655 = load double, ptr %aqoap, align 8
  %mul1982 = fmul double %fneg1981, %1655
  %arrayidx1983 = getelementptr inbounds [5 x double], ptr %fastr, i64 0, i64 3
  store double %mul1982, ptr %arrayidx1983, align 8
  %1656 = load double, ptr %cs, align 8
  %1657 = load ptr, ptr %work.addr, align 8
  %1658 = load i32, ptr %p, align 4
  %idxprom1984 = sext i32 %1658 to i64
  %arrayidx1985 = getelementptr inbounds double, ptr %1657, i64 %idxprom1984
  %1659 = load double, ptr %arrayidx1985, align 8
  %mul1986 = fmul double %1659, %1656
  store double %mul1986, ptr %arrayidx1985, align 8
  %1660 = load double, ptr %cs, align 8
  %1661 = load ptr, ptr %work.addr, align 8
  %1662 = load i32, ptr %q, align 4
  %idxprom1987 = sext i32 %1662 to i64
  %arrayidx1988 = getelementptr inbounds double, ptr %1661, i64 %idxprom1987
  %1663 = load double, ptr %arrayidx1988, align 8
  %mul1989 = fmul double %1663, %1660
  store double %mul1989, ptr %arrayidx1988, align 8
  %1664 = load ptr, ptr %m.addr, align 8
  %1665 = load ptr, ptr %a.addr, align 8
  %1666 = load i32, ptr %p, align 4
  %1667 = load i32, ptr %a_dim1, align 4
  %mul1990 = mul nsw i32 %1666, %1667
  %add1991 = add nsw i32 %mul1990, 1
  %idxprom1992 = sext i32 %add1991 to i64
  %arrayidx1993 = getelementptr inbounds double, ptr %1665, i64 %idxprom1992
  %1668 = load ptr, ptr %a.addr, align 8
  %1669 = load i32, ptr %q, align 4
  %1670 = load i32, ptr %a_dim1, align 4
  %mul1994 = mul nsw i32 %1669, %1670
  %add1995 = add nsw i32 %mul1994, 1
  %idxprom1996 = sext i32 %add1995 to i64
  %arrayidx1997 = getelementptr inbounds double, ptr %1668, i64 %idxprom1996
  %arraydecay1998 = getelementptr inbounds [5 x double], ptr %fastr, i64 0, i64 0
  %call1999 = call i32 @drotm_(ptr noundef %1664, ptr noundef %arrayidx1993, ptr noundef @c__1, ptr noundef %arrayidx1997, ptr noundef @c__1, ptr noundef %arraydecay1998)
  %1671 = load i32, ptr %rsvec, align 4
  %tobool2000 = icmp ne i32 %1671, 0
  br i1 %tobool2000, label %if.then2001, label %if.end2012

if.then2001:                                      ; preds = %if.then1978
  %1672 = load ptr, ptr %v.addr, align 8
  %1673 = load i32, ptr %p, align 4
  %1674 = load i32, ptr %v_dim1, align 4
  %mul2002 = mul nsw i32 %1673, %1674
  %add2003 = add nsw i32 %mul2002, 1
  %idxprom2004 = sext i32 %add2003 to i64
  %arrayidx2005 = getelementptr inbounds double, ptr %1672, i64 %idxprom2004
  %1675 = load ptr, ptr %v.addr, align 8
  %1676 = load i32, ptr %q, align 4
  %1677 = load i32, ptr %v_dim1, align 4
  %mul2006 = mul nsw i32 %1676, %1677
  %add2007 = add nsw i32 %mul2006, 1
  %idxprom2008 = sext i32 %add2007 to i64
  %arrayidx2009 = getelementptr inbounds double, ptr %1675, i64 %idxprom2008
  %arraydecay2010 = getelementptr inbounds [5 x double], ptr %fastr, i64 0, i64 0
  %call2011 = call i32 @drotm_(ptr noundef %mvl, ptr noundef %arrayidx2005, ptr noundef @c__1, ptr noundef %arrayidx2009, ptr noundef @c__1, ptr noundef %arraydecay2010)
  br label %if.end2012

if.end2012:                                       ; preds = %if.then2001, %if.then1978
  br label %if.end2067

if.else2013:                                      ; preds = %if.then1973
  %1678 = load double, ptr %t, align 8
  %fneg2014 = fneg double %1678
  %1679 = load double, ptr %aqoap, align 8
  %mul2015 = fmul double %fneg2014, %1679
  store double %mul2015, ptr %d__1, align 8
  %1680 = load ptr, ptr %m.addr, align 8
  %1681 = load ptr, ptr %a.addr, align 8
  %1682 = load i32, ptr %q, align 4
  %1683 = load i32, ptr %a_dim1, align 4
  %mul2016 = mul nsw i32 %1682, %1683
  %add2017 = add nsw i32 %mul2016, 1
  %idxprom2018 = sext i32 %add2017 to i64
  %arrayidx2019 = getelementptr inbounds double, ptr %1681, i64 %idxprom2018
  %1684 = load ptr, ptr %a.addr, align 8
  %1685 = load i32, ptr %p, align 4
  %1686 = load i32, ptr %a_dim1, align 4
  %mul2020 = mul nsw i32 %1685, %1686
  %add2021 = add nsw i32 %mul2020, 1
  %idxprom2022 = sext i32 %add2021 to i64
  %arrayidx2023 = getelementptr inbounds double, ptr %1684, i64 %idxprom2022
  %call2024 = call i32 @daxpy_(ptr noundef %1680, ptr noundef %d__1, ptr noundef %arrayidx2019, ptr noundef @c__1, ptr noundef %arrayidx2023, ptr noundef @c__1)
  %1687 = load double, ptr %cs, align 8
  %1688 = load double, ptr %sn, align 8
  %mul2025 = fmul double %1687, %1688
  %1689 = load double, ptr %apoaq, align 8
  %mul2026 = fmul double %mul2025, %1689
  store double %mul2026, ptr %d__1, align 8
  %1690 = load ptr, ptr %m.addr, align 8
  %1691 = load ptr, ptr %a.addr, align 8
  %1692 = load i32, ptr %p, align 4
  %1693 = load i32, ptr %a_dim1, align 4
  %mul2027 = mul nsw i32 %1692, %1693
  %add2028 = add nsw i32 %mul2027, 1
  %idxprom2029 = sext i32 %add2028 to i64
  %arrayidx2030 = getelementptr inbounds double, ptr %1691, i64 %idxprom2029
  %1694 = load ptr, ptr %a.addr, align 8
  %1695 = load i32, ptr %q, align 4
  %1696 = load i32, ptr %a_dim1, align 4
  %mul2031 = mul nsw i32 %1695, %1696
  %add2032 = add nsw i32 %mul2031, 1
  %idxprom2033 = sext i32 %add2032 to i64
  %arrayidx2034 = getelementptr inbounds double, ptr %1694, i64 %idxprom2033
  %call2035 = call i32 @daxpy_(ptr noundef %1690, ptr noundef %d__1, ptr noundef %arrayidx2030, ptr noundef @c__1, ptr noundef %arrayidx2034, ptr noundef @c__1)
  %1697 = load i32, ptr %rsvec, align 4
  %tobool2036 = icmp ne i32 %1697, 0
  br i1 %tobool2036, label %if.then2037, label %if.end2060

if.then2037:                                      ; preds = %if.else2013
  %1698 = load double, ptr %t, align 8
  %fneg2038 = fneg double %1698
  %1699 = load double, ptr %aqoap, align 8
  %mul2039 = fmul double %fneg2038, %1699
  store double %mul2039, ptr %d__1, align 8
  %1700 = load ptr, ptr %v.addr, align 8
  %1701 = load i32, ptr %q, align 4
  %1702 = load i32, ptr %v_dim1, align 4
  %mul2040 = mul nsw i32 %1701, %1702
  %add2041 = add nsw i32 %mul2040, 1
  %idxprom2042 = sext i32 %add2041 to i64
  %arrayidx2043 = getelementptr inbounds double, ptr %1700, i64 %idxprom2042
  %1703 = load ptr, ptr %v.addr, align 8
  %1704 = load i32, ptr %p, align 4
  %1705 = load i32, ptr %v_dim1, align 4
  %mul2044 = mul nsw i32 %1704, %1705
  %add2045 = add nsw i32 %mul2044, 1
  %idxprom2046 = sext i32 %add2045 to i64
  %arrayidx2047 = getelementptr inbounds double, ptr %1703, i64 %idxprom2046
  %call2048 = call i32 @daxpy_(ptr noundef %mvl, ptr noundef %d__1, ptr noundef %arrayidx2043, ptr noundef @c__1, ptr noundef %arrayidx2047, ptr noundef @c__1)
  %1706 = load double, ptr %cs, align 8
  %1707 = load double, ptr %sn, align 8
  %mul2049 = fmul double %1706, %1707
  %1708 = load double, ptr %apoaq, align 8
  %mul2050 = fmul double %mul2049, %1708
  store double %mul2050, ptr %d__1, align 8
  %1709 = load ptr, ptr %v.addr, align 8
  %1710 = load i32, ptr %p, align 4
  %1711 = load i32, ptr %v_dim1, align 4
  %mul2051 = mul nsw i32 %1710, %1711
  %add2052 = add nsw i32 %mul2051, 1
  %idxprom2053 = sext i32 %add2052 to i64
  %arrayidx2054 = getelementptr inbounds double, ptr %1709, i64 %idxprom2053
  %1712 = load ptr, ptr %v.addr, align 8
  %1713 = load i32, ptr %q, align 4
  %1714 = load i32, ptr %v_dim1, align 4
  %mul2055 = mul nsw i32 %1713, %1714
  %add2056 = add nsw i32 %mul2055, 1
  %idxprom2057 = sext i32 %add2056 to i64
  %arrayidx2058 = getelementptr inbounds double, ptr %1712, i64 %idxprom2057
  %call2059 = call i32 @daxpy_(ptr noundef %mvl, ptr noundef %d__1, ptr noundef %arrayidx2054, ptr noundef @c__1, ptr noundef %arrayidx2058, ptr noundef @c__1)
  br label %if.end2060

if.end2060:                                       ; preds = %if.then2037, %if.else2013
  %1715 = load double, ptr %cs, align 8
  %1716 = load ptr, ptr %work.addr, align 8
  %1717 = load i32, ptr %p, align 4
  %idxprom2061 = sext i32 %1717 to i64
  %arrayidx2062 = getelementptr inbounds double, ptr %1716, i64 %idxprom2061
  %1718 = load double, ptr %arrayidx2062, align 8
  %mul2063 = fmul double %1718, %1715
  store double %mul2063, ptr %arrayidx2062, align 8
  %1719 = load double, ptr %cs, align 8
  %1720 = load ptr, ptr %work.addr, align 8
  %1721 = load i32, ptr %q, align 4
  %idxprom2064 = sext i32 %1721 to i64
  %arrayidx2065 = getelementptr inbounds double, ptr %1720, i64 %idxprom2064
  %1722 = load double, ptr %arrayidx2065, align 8
  %div2066 = fdiv double %1722, %1719
  store double %div2066, ptr %arrayidx2065, align 8
  br label %if.end2067

if.end2067:                                       ; preds = %if.end2060, %if.end2012
  br label %if.end2244

if.else2068:                                      ; preds = %cond.end1955
  %1723 = load ptr, ptr %work.addr, align 8
  %1724 = load i32, ptr %q, align 4
  %idxprom2069 = sext i32 %1724 to i64
  %arrayidx2070 = getelementptr inbounds double, ptr %1723, i64 %idxprom2069
  %1725 = load double, ptr %arrayidx2070, align 8
  %cmp2071 = fcmp oge double %1725, 1.000000e+00
  br i1 %cmp2071, label %if.then2073, label %if.else2127

if.then2073:                                      ; preds = %if.else2068
  %1726 = load double, ptr %t, align 8
  %1727 = load double, ptr %apoaq, align 8
  %mul2074 = fmul double %1726, %1727
  store double %mul2074, ptr %d__1, align 8
  %1728 = load ptr, ptr %m.addr, align 8
  %1729 = load ptr, ptr %a.addr, align 8
  %1730 = load i32, ptr %p, align 4
  %1731 = load i32, ptr %a_dim1, align 4
  %mul2075 = mul nsw i32 %1730, %1731
  %add2076 = add nsw i32 %mul2075, 1
  %idxprom2077 = sext i32 %add2076 to i64
  %arrayidx2078 = getelementptr inbounds double, ptr %1729, i64 %idxprom2077
  %1732 = load ptr, ptr %a.addr, align 8
  %1733 = load i32, ptr %q, align 4
  %1734 = load i32, ptr %a_dim1, align 4
  %mul2079 = mul nsw i32 %1733, %1734
  %add2080 = add nsw i32 %mul2079, 1
  %idxprom2081 = sext i32 %add2080 to i64
  %arrayidx2082 = getelementptr inbounds double, ptr %1732, i64 %idxprom2081
  %call2083 = call i32 @daxpy_(ptr noundef %1728, ptr noundef %d__1, ptr noundef %arrayidx2078, ptr noundef @c__1, ptr noundef %arrayidx2082, ptr noundef @c__1)
  %1735 = load double, ptr %cs, align 8
  %fneg2084 = fneg double %1735
  %1736 = load double, ptr %sn, align 8
  %mul2085 = fmul double %fneg2084, %1736
  %1737 = load double, ptr %aqoap, align 8
  %mul2086 = fmul double %mul2085, %1737
  store double %mul2086, ptr %d__1, align 8
  %1738 = load ptr, ptr %m.addr, align 8
  %1739 = load ptr, ptr %a.addr, align 8
  %1740 = load i32, ptr %q, align 4
  %1741 = load i32, ptr %a_dim1, align 4
  %mul2087 = mul nsw i32 %1740, %1741
  %add2088 = add nsw i32 %mul2087, 1
  %idxprom2089 = sext i32 %add2088 to i64
  %arrayidx2090 = getelementptr inbounds double, ptr %1739, i64 %idxprom2089
  %1742 = load ptr, ptr %a.addr, align 8
  %1743 = load i32, ptr %p, align 4
  %1744 = load i32, ptr %a_dim1, align 4
  %mul2091 = mul nsw i32 %1743, %1744
  %add2092 = add nsw i32 %mul2091, 1
  %idxprom2093 = sext i32 %add2092 to i64
  %arrayidx2094 = getelementptr inbounds double, ptr %1742, i64 %idxprom2093
  %call2095 = call i32 @daxpy_(ptr noundef %1738, ptr noundef %d__1, ptr noundef %arrayidx2090, ptr noundef @c__1, ptr noundef %arrayidx2094, ptr noundef @c__1)
  %1745 = load i32, ptr %rsvec, align 4
  %tobool2096 = icmp ne i32 %1745, 0
  br i1 %tobool2096, label %if.then2097, label %if.end2120

if.then2097:                                      ; preds = %if.then2073
  %1746 = load double, ptr %t, align 8
  %1747 = load double, ptr %apoaq, align 8
  %mul2098 = fmul double %1746, %1747
  store double %mul2098, ptr %d__1, align 8
  %1748 = load ptr, ptr %v.addr, align 8
  %1749 = load i32, ptr %p, align 4
  %1750 = load i32, ptr %v_dim1, align 4
  %mul2099 = mul nsw i32 %1749, %1750
  %add2100 = add nsw i32 %mul2099, 1
  %idxprom2101 = sext i32 %add2100 to i64
  %arrayidx2102 = getelementptr inbounds double, ptr %1748, i64 %idxprom2101
  %1751 = load ptr, ptr %v.addr, align 8
  %1752 = load i32, ptr %q, align 4
  %1753 = load i32, ptr %v_dim1, align 4
  %mul2103 = mul nsw i32 %1752, %1753
  %add2104 = add nsw i32 %mul2103, 1
  %idxprom2105 = sext i32 %add2104 to i64
  %arrayidx2106 = getelementptr inbounds double, ptr %1751, i64 %idxprom2105
  %call2107 = call i32 @daxpy_(ptr noundef %mvl, ptr noundef %d__1, ptr noundef %arrayidx2102, ptr noundef @c__1, ptr noundef %arrayidx2106, ptr noundef @c__1)
  %1754 = load double, ptr %cs, align 8
  %fneg2108 = fneg double %1754
  %1755 = load double, ptr %sn, align 8
  %mul2109 = fmul double %fneg2108, %1755
  %1756 = load double, ptr %aqoap, align 8
  %mul2110 = fmul double %mul2109, %1756
  store double %mul2110, ptr %d__1, align 8
  %1757 = load ptr, ptr %v.addr, align 8
  %1758 = load i32, ptr %q, align 4
  %1759 = load i32, ptr %v_dim1, align 4
  %mul2111 = mul nsw i32 %1758, %1759
  %add2112 = add nsw i32 %mul2111, 1
  %idxprom2113 = sext i32 %add2112 to i64
  %arrayidx2114 = getelementptr inbounds double, ptr %1757, i64 %idxprom2113
  %1760 = load ptr, ptr %v.addr, align 8
  %1761 = load i32, ptr %p, align 4
  %1762 = load i32, ptr %v_dim1, align 4
  %mul2115 = mul nsw i32 %1761, %1762
  %add2116 = add nsw i32 %mul2115, 1
  %idxprom2117 = sext i32 %add2116 to i64
  %arrayidx2118 = getelementptr inbounds double, ptr %1760, i64 %idxprom2117
  %call2119 = call i32 @daxpy_(ptr noundef %mvl, ptr noundef %d__1, ptr noundef %arrayidx2114, ptr noundef @c__1, ptr noundef %arrayidx2118, ptr noundef @c__1)
  br label %if.end2120

if.end2120:                                       ; preds = %if.then2097, %if.then2073
  %1763 = load double, ptr %cs, align 8
  %1764 = load ptr, ptr %work.addr, align 8
  %1765 = load i32, ptr %p, align 4
  %idxprom2121 = sext i32 %1765 to i64
  %arrayidx2122 = getelementptr inbounds double, ptr %1764, i64 %idxprom2121
  %1766 = load double, ptr %arrayidx2122, align 8
  %div2123 = fdiv double %1766, %1763
  store double %div2123, ptr %arrayidx2122, align 8
  %1767 = load double, ptr %cs, align 8
  %1768 = load ptr, ptr %work.addr, align 8
  %1769 = load i32, ptr %q, align 4
  %idxprom2124 = sext i32 %1769 to i64
  %arrayidx2125 = getelementptr inbounds double, ptr %1768, i64 %idxprom2124
  %1770 = load double, ptr %arrayidx2125, align 8
  %mul2126 = fmul double %1770, %1767
  store double %mul2126, ptr %arrayidx2125, align 8
  br label %if.end2243

if.else2127:                                      ; preds = %if.else2068
  %1771 = load ptr, ptr %work.addr, align 8
  %1772 = load i32, ptr %p, align 4
  %idxprom2128 = sext i32 %1772 to i64
  %arrayidx2129 = getelementptr inbounds double, ptr %1771, i64 %idxprom2128
  %1773 = load double, ptr %arrayidx2129, align 8
  %1774 = load ptr, ptr %work.addr, align 8
  %1775 = load i32, ptr %q, align 4
  %idxprom2130 = sext i32 %1775 to i64
  %arrayidx2131 = getelementptr inbounds double, ptr %1774, i64 %idxprom2130
  %1776 = load double, ptr %arrayidx2131, align 8
  %cmp2132 = fcmp oge double %1773, %1776
  br i1 %cmp2132, label %if.then2134, label %if.else2188

if.then2134:                                      ; preds = %if.else2127
  %1777 = load double, ptr %t, align 8
  %fneg2135 = fneg double %1777
  %1778 = load double, ptr %aqoap, align 8
  %mul2136 = fmul double %fneg2135, %1778
  store double %mul2136, ptr %d__1, align 8
  %1779 = load ptr, ptr %m.addr, align 8
  %1780 = load ptr, ptr %a.addr, align 8
  %1781 = load i32, ptr %q, align 4
  %1782 = load i32, ptr %a_dim1, align 4
  %mul2137 = mul nsw i32 %1781, %1782
  %add2138 = add nsw i32 %mul2137, 1
  %idxprom2139 = sext i32 %add2138 to i64
  %arrayidx2140 = getelementptr inbounds double, ptr %1780, i64 %idxprom2139
  %1783 = load ptr, ptr %a.addr, align 8
  %1784 = load i32, ptr %p, align 4
  %1785 = load i32, ptr %a_dim1, align 4
  %mul2141 = mul nsw i32 %1784, %1785
  %add2142 = add nsw i32 %mul2141, 1
  %idxprom2143 = sext i32 %add2142 to i64
  %arrayidx2144 = getelementptr inbounds double, ptr %1783, i64 %idxprom2143
  %call2145 = call i32 @daxpy_(ptr noundef %1779, ptr noundef %d__1, ptr noundef %arrayidx2140, ptr noundef @c__1, ptr noundef %arrayidx2144, ptr noundef @c__1)
  %1786 = load double, ptr %cs, align 8
  %1787 = load double, ptr %sn, align 8
  %mul2146 = fmul double %1786, %1787
  %1788 = load double, ptr %apoaq, align 8
  %mul2147 = fmul double %mul2146, %1788
  store double %mul2147, ptr %d__1, align 8
  %1789 = load ptr, ptr %m.addr, align 8
  %1790 = load ptr, ptr %a.addr, align 8
  %1791 = load i32, ptr %p, align 4
  %1792 = load i32, ptr %a_dim1, align 4
  %mul2148 = mul nsw i32 %1791, %1792
  %add2149 = add nsw i32 %mul2148, 1
  %idxprom2150 = sext i32 %add2149 to i64
  %arrayidx2151 = getelementptr inbounds double, ptr %1790, i64 %idxprom2150
  %1793 = load ptr, ptr %a.addr, align 8
  %1794 = load i32, ptr %q, align 4
  %1795 = load i32, ptr %a_dim1, align 4
  %mul2152 = mul nsw i32 %1794, %1795
  %add2153 = add nsw i32 %mul2152, 1
  %idxprom2154 = sext i32 %add2153 to i64
  %arrayidx2155 = getelementptr inbounds double, ptr %1793, i64 %idxprom2154
  %call2156 = call i32 @daxpy_(ptr noundef %1789, ptr noundef %d__1, ptr noundef %arrayidx2151, ptr noundef @c__1, ptr noundef %arrayidx2155, ptr noundef @c__1)
  %1796 = load double, ptr %cs, align 8
  %1797 = load ptr, ptr %work.addr, align 8
  %1798 = load i32, ptr %p, align 4
  %idxprom2157 = sext i32 %1798 to i64
  %arrayidx2158 = getelementptr inbounds double, ptr %1797, i64 %idxprom2157
  %1799 = load double, ptr %arrayidx2158, align 8
  %mul2159 = fmul double %1799, %1796
  store double %mul2159, ptr %arrayidx2158, align 8
  %1800 = load double, ptr %cs, align 8
  %1801 = load ptr, ptr %work.addr, align 8
  %1802 = load i32, ptr %q, align 4
  %idxprom2160 = sext i32 %1802 to i64
  %arrayidx2161 = getelementptr inbounds double, ptr %1801, i64 %idxprom2160
  %1803 = load double, ptr %arrayidx2161, align 8
  %div2162 = fdiv double %1803, %1800
  store double %div2162, ptr %arrayidx2161, align 8
  %1804 = load i32, ptr %rsvec, align 4
  %tobool2163 = icmp ne i32 %1804, 0
  br i1 %tobool2163, label %if.then2164, label %if.end2187

if.then2164:                                      ; preds = %if.then2134
  %1805 = load double, ptr %t, align 8
  %fneg2165 = fneg double %1805
  %1806 = load double, ptr %aqoap, align 8
  %mul2166 = fmul double %fneg2165, %1806
  store double %mul2166, ptr %d__1, align 8
  %1807 = load ptr, ptr %v.addr, align 8
  %1808 = load i32, ptr %q, align 4
  %1809 = load i32, ptr %v_dim1, align 4
  %mul2167 = mul nsw i32 %1808, %1809
  %add2168 = add nsw i32 %mul2167, 1
  %idxprom2169 = sext i32 %add2168 to i64
  %arrayidx2170 = getelementptr inbounds double, ptr %1807, i64 %idxprom2169
  %1810 = load ptr, ptr %v.addr, align 8
  %1811 = load i32, ptr %p, align 4
  %1812 = load i32, ptr %v_dim1, align 4
  %mul2171 = mul nsw i32 %1811, %1812
  %add2172 = add nsw i32 %mul2171, 1
  %idxprom2173 = sext i32 %add2172 to i64
  %arrayidx2174 = getelementptr inbounds double, ptr %1810, i64 %idxprom2173
  %call2175 = call i32 @daxpy_(ptr noundef %mvl, ptr noundef %d__1, ptr noundef %arrayidx2170, ptr noundef @c__1, ptr noundef %arrayidx2174, ptr noundef @c__1)
  %1813 = load double, ptr %cs, align 8
  %1814 = load double, ptr %sn, align 8
  %mul2176 = fmul double %1813, %1814
  %1815 = load double, ptr %apoaq, align 8
  %mul2177 = fmul double %mul2176, %1815
  store double %mul2177, ptr %d__1, align 8
  %1816 = load ptr, ptr %v.addr, align 8
  %1817 = load i32, ptr %p, align 4
  %1818 = load i32, ptr %v_dim1, align 4
  %mul2178 = mul nsw i32 %1817, %1818
  %add2179 = add nsw i32 %mul2178, 1
  %idxprom2180 = sext i32 %add2179 to i64
  %arrayidx2181 = getelementptr inbounds double, ptr %1816, i64 %idxprom2180
  %1819 = load ptr, ptr %v.addr, align 8
  %1820 = load i32, ptr %q, align 4
  %1821 = load i32, ptr %v_dim1, align 4
  %mul2182 = mul nsw i32 %1820, %1821
  %add2183 = add nsw i32 %mul2182, 1
  %idxprom2184 = sext i32 %add2183 to i64
  %arrayidx2185 = getelementptr inbounds double, ptr %1819, i64 %idxprom2184
  %call2186 = call i32 @daxpy_(ptr noundef %mvl, ptr noundef %d__1, ptr noundef %arrayidx2181, ptr noundef @c__1, ptr noundef %arrayidx2185, ptr noundef @c__1)
  br label %if.end2187

if.end2187:                                       ; preds = %if.then2164, %if.then2134
  br label %if.end2242

if.else2188:                                      ; preds = %if.else2127
  %1822 = load double, ptr %t, align 8
  %1823 = load double, ptr %apoaq, align 8
  %mul2189 = fmul double %1822, %1823
  store double %mul2189, ptr %d__1, align 8
  %1824 = load ptr, ptr %m.addr, align 8
  %1825 = load ptr, ptr %a.addr, align 8
  %1826 = load i32, ptr %p, align 4
  %1827 = load i32, ptr %a_dim1, align 4
  %mul2190 = mul nsw i32 %1826, %1827
  %add2191 = add nsw i32 %mul2190, 1
  %idxprom2192 = sext i32 %add2191 to i64
  %arrayidx2193 = getelementptr inbounds double, ptr %1825, i64 %idxprom2192
  %1828 = load ptr, ptr %a.addr, align 8
  %1829 = load i32, ptr %q, align 4
  %1830 = load i32, ptr %a_dim1, align 4
  %mul2194 = mul nsw i32 %1829, %1830
  %add2195 = add nsw i32 %mul2194, 1
  %idxprom2196 = sext i32 %add2195 to i64
  %arrayidx2197 = getelementptr inbounds double, ptr %1828, i64 %idxprom2196
  %call2198 = call i32 @daxpy_(ptr noundef %1824, ptr noundef %d__1, ptr noundef %arrayidx2193, ptr noundef @c__1, ptr noundef %arrayidx2197, ptr noundef @c__1)
  %1831 = load double, ptr %cs, align 8
  %fneg2199 = fneg double %1831
  %1832 = load double, ptr %sn, align 8
  %mul2200 = fmul double %fneg2199, %1832
  %1833 = load double, ptr %aqoap, align 8
  %mul2201 = fmul double %mul2200, %1833
  store double %mul2201, ptr %d__1, align 8
  %1834 = load ptr, ptr %m.addr, align 8
  %1835 = load ptr, ptr %a.addr, align 8
  %1836 = load i32, ptr %q, align 4
  %1837 = load i32, ptr %a_dim1, align 4
  %mul2202 = mul nsw i32 %1836, %1837
  %add2203 = add nsw i32 %mul2202, 1
  %idxprom2204 = sext i32 %add2203 to i64
  %arrayidx2205 = getelementptr inbounds double, ptr %1835, i64 %idxprom2204
  %1838 = load ptr, ptr %a.addr, align 8
  %1839 = load i32, ptr %p, align 4
  %1840 = load i32, ptr %a_dim1, align 4
  %mul2206 = mul nsw i32 %1839, %1840
  %add2207 = add nsw i32 %mul2206, 1
  %idxprom2208 = sext i32 %add2207 to i64
  %arrayidx2209 = getelementptr inbounds double, ptr %1838, i64 %idxprom2208
  %call2210 = call i32 @daxpy_(ptr noundef %1834, ptr noundef %d__1, ptr noundef %arrayidx2205, ptr noundef @c__1, ptr noundef %arrayidx2209, ptr noundef @c__1)
  %1841 = load double, ptr %cs, align 8
  %1842 = load ptr, ptr %work.addr, align 8
  %1843 = load i32, ptr %p, align 4
  %idxprom2211 = sext i32 %1843 to i64
  %arrayidx2212 = getelementptr inbounds double, ptr %1842, i64 %idxprom2211
  %1844 = load double, ptr %arrayidx2212, align 8
  %div2213 = fdiv double %1844, %1841
  store double %div2213, ptr %arrayidx2212, align 8
  %1845 = load double, ptr %cs, align 8
  %1846 = load ptr, ptr %work.addr, align 8
  %1847 = load i32, ptr %q, align 4
  %idxprom2214 = sext i32 %1847 to i64
  %arrayidx2215 = getelementptr inbounds double, ptr %1846, i64 %idxprom2214
  %1848 = load double, ptr %arrayidx2215, align 8
  %mul2216 = fmul double %1848, %1845
  store double %mul2216, ptr %arrayidx2215, align 8
  %1849 = load i32, ptr %rsvec, align 4
  %tobool2217 = icmp ne i32 %1849, 0
  br i1 %tobool2217, label %if.then2218, label %if.end2241

if.then2218:                                      ; preds = %if.else2188
  %1850 = load double, ptr %t, align 8
  %1851 = load double, ptr %apoaq, align 8
  %mul2219 = fmul double %1850, %1851
  store double %mul2219, ptr %d__1, align 8
  %1852 = load ptr, ptr %v.addr, align 8
  %1853 = load i32, ptr %p, align 4
  %1854 = load i32, ptr %v_dim1, align 4
  %mul2220 = mul nsw i32 %1853, %1854
  %add2221 = add nsw i32 %mul2220, 1
  %idxprom2222 = sext i32 %add2221 to i64
  %arrayidx2223 = getelementptr inbounds double, ptr %1852, i64 %idxprom2222
  %1855 = load ptr, ptr %v.addr, align 8
  %1856 = load i32, ptr %q, align 4
  %1857 = load i32, ptr %v_dim1, align 4
  %mul2224 = mul nsw i32 %1856, %1857
  %add2225 = add nsw i32 %mul2224, 1
  %idxprom2226 = sext i32 %add2225 to i64
  %arrayidx2227 = getelementptr inbounds double, ptr %1855, i64 %idxprom2226
  %call2228 = call i32 @daxpy_(ptr noundef %mvl, ptr noundef %d__1, ptr noundef %arrayidx2223, ptr noundef @c__1, ptr noundef %arrayidx2227, ptr noundef @c__1)
  %1858 = load double, ptr %cs, align 8
  %fneg2229 = fneg double %1858
  %1859 = load double, ptr %sn, align 8
  %mul2230 = fmul double %fneg2229, %1859
  %1860 = load double, ptr %aqoap, align 8
  %mul2231 = fmul double %mul2230, %1860
  store double %mul2231, ptr %d__1, align 8
  %1861 = load ptr, ptr %v.addr, align 8
  %1862 = load i32, ptr %q, align 4
  %1863 = load i32, ptr %v_dim1, align 4
  %mul2232 = mul nsw i32 %1862, %1863
  %add2233 = add nsw i32 %mul2232, 1
  %idxprom2234 = sext i32 %add2233 to i64
  %arrayidx2235 = getelementptr inbounds double, ptr %1861, i64 %idxprom2234
  %1864 = load ptr, ptr %v.addr, align 8
  %1865 = load i32, ptr %p, align 4
  %1866 = load i32, ptr %v_dim1, align 4
  %mul2236 = mul nsw i32 %1865, %1866
  %add2237 = add nsw i32 %mul2236, 1
  %idxprom2238 = sext i32 %add2237 to i64
  %arrayidx2239 = getelementptr inbounds double, ptr %1864, i64 %idxprom2238
  %call2240 = call i32 @daxpy_(ptr noundef %mvl, ptr noundef %d__1, ptr noundef %arrayidx2235, ptr noundef @c__1, ptr noundef %arrayidx2239, ptr noundef @c__1)
  br label %if.end2241

if.end2241:                                       ; preds = %if.then2218, %if.else2188
  br label %if.end2242

if.end2242:                                       ; preds = %if.end2241, %if.end2187
  br label %if.end2243

if.end2243:                                       ; preds = %if.end2242, %if.end2120
  br label %if.end2244

if.end2244:                                       ; preds = %if.end2243, %if.end2067
  br label %if.end2245

if.end2245:                                       ; preds = %if.end2244, %cond.end1905
  br label %if.end2362

if.else2246:                                      ; preds = %if.then1801
  %1867 = load double, ptr %aapp, align 8
  %1868 = load double, ptr %aaqq, align 8
  %cmp2247 = fcmp ogt double %1867, %1868
  br i1 %cmp2247, label %if.then2249, label %if.else2305

if.then2249:                                      ; preds = %if.else2246
  %1869 = load ptr, ptr %m.addr, align 8
  %1870 = load ptr, ptr %a.addr, align 8
  %1871 = load i32, ptr %p, align 4
  %1872 = load i32, ptr %a_dim1, align 4
  %mul2250 = mul nsw i32 %1871, %1872
  %add2251 = add nsw i32 %mul2250, 1
  %idxprom2252 = sext i32 %add2251 to i64
  %arrayidx2253 = getelementptr inbounds double, ptr %1870, i64 %idxprom2252
  %1873 = load ptr, ptr %work.addr, align 8
  %1874 = load ptr, ptr %n.addr, align 8
  %1875 = load i32, ptr %1874, align 4
  %add2254 = add nsw i32 %1875, 1
  %idxprom2255 = sext i32 %add2254 to i64
  %arrayidx2256 = getelementptr inbounds double, ptr %1873, i64 %idxprom2255
  %call2257 = call i32 @dcopy_(ptr noundef %1869, ptr noundef %arrayidx2253, ptr noundef @c__1, ptr noundef %arrayidx2256, ptr noundef @c__1)
  %1876 = load ptr, ptr %m.addr, align 8
  %1877 = load ptr, ptr %work.addr, align 8
  %1878 = load ptr, ptr %n.addr, align 8
  %1879 = load i32, ptr %1878, align 4
  %add2258 = add nsw i32 %1879, 1
  %idxprom2259 = sext i32 %add2258 to i64
  %arrayidx2260 = getelementptr inbounds double, ptr %1877, i64 %idxprom2259
  %1880 = load ptr, ptr %lda.addr, align 8
  %call2261 = call i32 @dlascl_(ptr noundef @.str.5, ptr noundef @c__0, ptr noundef @c__0, ptr noundef %aapp, ptr noundef @c_b18, ptr noundef %1876, ptr noundef @c__1, ptr noundef %arrayidx2260, ptr noundef %1880, ptr noundef %ierr)
  %1881 = load ptr, ptr %m.addr, align 8
  %1882 = load ptr, ptr %a.addr, align 8
  %1883 = load i32, ptr %q, align 4
  %1884 = load i32, ptr %a_dim1, align 4
  %mul2262 = mul nsw i32 %1883, %1884
  %add2263 = add nsw i32 %mul2262, 1
  %idxprom2264 = sext i32 %add2263 to i64
  %arrayidx2265 = getelementptr inbounds double, ptr %1882, i64 %idxprom2264
  %1885 = load ptr, ptr %lda.addr, align 8
  %call2266 = call i32 @dlascl_(ptr noundef @.str.5, ptr noundef @c__0, ptr noundef @c__0, ptr noundef %aaqq, ptr noundef @c_b18, ptr noundef %1881, ptr noundef @c__1, ptr noundef %arrayidx2265, ptr noundef %1885, ptr noundef %ierr)
  %1886 = load double, ptr %aapq, align 8
  %fneg2267 = fneg double %1886
  %1887 = load ptr, ptr %work.addr, align 8
  %1888 = load i32, ptr %p, align 4
  %idxprom2268 = sext i32 %1888 to i64
  %arrayidx2269 = getelementptr inbounds double, ptr %1887, i64 %idxprom2268
  %1889 = load double, ptr %arrayidx2269, align 8
  %mul2270 = fmul double %fneg2267, %1889
  %1890 = load ptr, ptr %work.addr, align 8
  %1891 = load i32, ptr %q, align 4
  %idxprom2271 = sext i32 %1891 to i64
  %arrayidx2272 = getelementptr inbounds double, ptr %1890, i64 %idxprom2271
  %1892 = load double, ptr %arrayidx2272, align 8
  %div2273 = fdiv double %mul2270, %1892
  store double %div2273, ptr %temp1, align 8
  %1893 = load ptr, ptr %m.addr, align 8
  %1894 = load ptr, ptr %work.addr, align 8
  %1895 = load ptr, ptr %n.addr, align 8
  %1896 = load i32, ptr %1895, align 4
  %add2274 = add nsw i32 %1896, 1
  %idxprom2275 = sext i32 %add2274 to i64
  %arrayidx2276 = getelementptr inbounds double, ptr %1894, i64 %idxprom2275
  %1897 = load ptr, ptr %a.addr, align 8
  %1898 = load i32, ptr %q, align 4
  %1899 = load i32, ptr %a_dim1, align 4
  %mul2277 = mul nsw i32 %1898, %1899
  %add2278 = add nsw i32 %mul2277, 1
  %idxprom2279 = sext i32 %add2278 to i64
  %arrayidx2280 = getelementptr inbounds double, ptr %1897, i64 %idxprom2279
  %call2281 = call i32 @daxpy_(ptr noundef %1893, ptr noundef %temp1, ptr noundef %arrayidx2276, ptr noundef @c__1, ptr noundef %arrayidx2280, ptr noundef @c__1)
  %1900 = load ptr, ptr %m.addr, align 8
  %1901 = load ptr, ptr %a.addr, align 8
  %1902 = load i32, ptr %q, align 4
  %1903 = load i32, ptr %a_dim1, align 4
  %mul2282 = mul nsw i32 %1902, %1903
  %add2283 = add nsw i32 %mul2282, 1
  %idxprom2284 = sext i32 %add2283 to i64
  %arrayidx2285 = getelementptr inbounds double, ptr %1901, i64 %idxprom2284
  %1904 = load ptr, ptr %lda.addr, align 8
  %call2286 = call i32 @dlascl_(ptr noundef @.str.5, ptr noundef @c__0, ptr noundef @c__0, ptr noundef @c_b18, ptr noundef %aaqq, ptr noundef %1900, ptr noundef @c__1, ptr noundef %arrayidx2285, ptr noundef %1904, ptr noundef %ierr)
  store double 0.000000e+00, ptr %d__1, align 8
  %1905 = load double, ptr %aapq, align 8
  %1906 = load double, ptr %aapq, align 8
  %neg2288 = fneg double %1905
  %1907 = call double @llvm.fmuladd.f64(double %neg2288, double %1906, double 1.000000e+00)
  store double %1907, ptr %d__2, align 8
  %1908 = load double, ptr %aaqq, align 8
  %1909 = load double, ptr %d__1, align 8
  %1910 = load double, ptr %d__2, align 8
  %cmp2289 = fcmp oge double %1909, %1910
  br i1 %cmp2289, label %cond.true2291, label %cond.false2292

cond.true2291:                                    ; preds = %if.then2249
  %1911 = load double, ptr %d__1, align 8
  br label %cond.end2293

cond.false2292:                                   ; preds = %if.then2249
  %1912 = load double, ptr %d__2, align 8
  br label %cond.end2293

cond.end2293:                                     ; preds = %cond.false2292, %cond.true2291
  %cond2294 = phi double [ %1911, %cond.true2291 ], [ %1912, %cond.false2292 ]
  %call2295 = call double @sqrt(double noundef %cond2294) #4
  %mul2296 = fmul double %1908, %call2295
  %1913 = load ptr, ptr %sva.addr, align 8
  %1914 = load i32, ptr %q, align 4
  %idxprom2297 = sext i32 %1914 to i64
  %arrayidx2298 = getelementptr inbounds double, ptr %1913, i64 %idxprom2297
  store double %mul2296, ptr %arrayidx2298, align 8
  %1915 = load double, ptr %mxsinj, align 8
  %1916 = load double, ptr %sfmin, align 8
  %cmp2299 = fcmp oge double %1915, %1916
  br i1 %cmp2299, label %cond.true2301, label %cond.false2302

cond.true2301:                                    ; preds = %cond.end2293
  %1917 = load double, ptr %mxsinj, align 8
  br label %cond.end2303

cond.false2302:                                   ; preds = %cond.end2293
  %1918 = load double, ptr %sfmin, align 8
  br label %cond.end2303

cond.end2303:                                     ; preds = %cond.false2302, %cond.true2301
  %cond2304 = phi double [ %1917, %cond.true2301 ], [ %1918, %cond.false2302 ]
  store double %cond2304, ptr %mxsinj, align 8
  br label %if.end2361

if.else2305:                                      ; preds = %if.else2246
  %1919 = load ptr, ptr %m.addr, align 8
  %1920 = load ptr, ptr %a.addr, align 8
  %1921 = load i32, ptr %q, align 4
  %1922 = load i32, ptr %a_dim1, align 4
  %mul2306 = mul nsw i32 %1921, %1922
  %add2307 = add nsw i32 %mul2306, 1
  %idxprom2308 = sext i32 %add2307 to i64
  %arrayidx2309 = getelementptr inbounds double, ptr %1920, i64 %idxprom2308
  %1923 = load ptr, ptr %work.addr, align 8
  %1924 = load ptr, ptr %n.addr, align 8
  %1925 = load i32, ptr %1924, align 4
  %add2310 = add nsw i32 %1925, 1
  %idxprom2311 = sext i32 %add2310 to i64
  %arrayidx2312 = getelementptr inbounds double, ptr %1923, i64 %idxprom2311
  %call2313 = call i32 @dcopy_(ptr noundef %1919, ptr noundef %arrayidx2309, ptr noundef @c__1, ptr noundef %arrayidx2312, ptr noundef @c__1)
  %1926 = load ptr, ptr %m.addr, align 8
  %1927 = load ptr, ptr %work.addr, align 8
  %1928 = load ptr, ptr %n.addr, align 8
  %1929 = load i32, ptr %1928, align 4
  %add2314 = add nsw i32 %1929, 1
  %idxprom2315 = sext i32 %add2314 to i64
  %arrayidx2316 = getelementptr inbounds double, ptr %1927, i64 %idxprom2315
  %1930 = load ptr, ptr %lda.addr, align 8
  %call2317 = call i32 @dlascl_(ptr noundef @.str.5, ptr noundef @c__0, ptr noundef @c__0, ptr noundef %aaqq, ptr noundef @c_b18, ptr noundef %1926, ptr noundef @c__1, ptr noundef %arrayidx2316, ptr noundef %1930, ptr noundef %ierr)
  %1931 = load ptr, ptr %m.addr, align 8
  %1932 = load ptr, ptr %a.addr, align 8
  %1933 = load i32, ptr %p, align 4
  %1934 = load i32, ptr %a_dim1, align 4
  %mul2318 = mul nsw i32 %1933, %1934
  %add2319 = add nsw i32 %mul2318, 1
  %idxprom2320 = sext i32 %add2319 to i64
  %arrayidx2321 = getelementptr inbounds double, ptr %1932, i64 %idxprom2320
  %1935 = load ptr, ptr %lda.addr, align 8
  %call2322 = call i32 @dlascl_(ptr noundef @.str.5, ptr noundef @c__0, ptr noundef @c__0, ptr noundef %aapp, ptr noundef @c_b18, ptr noundef %1931, ptr noundef @c__1, ptr noundef %arrayidx2321, ptr noundef %1935, ptr noundef %ierr)
  %1936 = load double, ptr %aapq, align 8
  %fneg2323 = fneg double %1936
  %1937 = load ptr, ptr %work.addr, align 8
  %1938 = load i32, ptr %q, align 4
  %idxprom2324 = sext i32 %1938 to i64
  %arrayidx2325 = getelementptr inbounds double, ptr %1937, i64 %idxprom2324
  %1939 = load double, ptr %arrayidx2325, align 8
  %mul2326 = fmul double %fneg2323, %1939
  %1940 = load ptr, ptr %work.addr, align 8
  %1941 = load i32, ptr %p, align 4
  %idxprom2327 = sext i32 %1941 to i64
  %arrayidx2328 = getelementptr inbounds double, ptr %1940, i64 %idxprom2327
  %1942 = load double, ptr %arrayidx2328, align 8
  %div2329 = fdiv double %mul2326, %1942
  store double %div2329, ptr %temp1, align 8
  %1943 = load ptr, ptr %m.addr, align 8
  %1944 = load ptr, ptr %work.addr, align 8
  %1945 = load ptr, ptr %n.addr, align 8
  %1946 = load i32, ptr %1945, align 4
  %add2330 = add nsw i32 %1946, 1
  %idxprom2331 = sext i32 %add2330 to i64
  %arrayidx2332 = getelementptr inbounds double, ptr %1944, i64 %idxprom2331
  %1947 = load ptr, ptr %a.addr, align 8
  %1948 = load i32, ptr %p, align 4
  %1949 = load i32, ptr %a_dim1, align 4
  %mul2333 = mul nsw i32 %1948, %1949
  %add2334 = add nsw i32 %mul2333, 1
  %idxprom2335 = sext i32 %add2334 to i64
  %arrayidx2336 = getelementptr inbounds double, ptr %1947, i64 %idxprom2335
  %call2337 = call i32 @daxpy_(ptr noundef %1943, ptr noundef %temp1, ptr noundef %arrayidx2332, ptr noundef @c__1, ptr noundef %arrayidx2336, ptr noundef @c__1)
  %1950 = load ptr, ptr %m.addr, align 8
  %1951 = load ptr, ptr %a.addr, align 8
  %1952 = load i32, ptr %p, align 4
  %1953 = load i32, ptr %a_dim1, align 4
  %mul2338 = mul nsw i32 %1952, %1953
  %add2339 = add nsw i32 %mul2338, 1
  %idxprom2340 = sext i32 %add2339 to i64
  %arrayidx2341 = getelementptr inbounds double, ptr %1951, i64 %idxprom2340
  %1954 = load ptr, ptr %lda.addr, align 8
  %call2342 = call i32 @dlascl_(ptr noundef @.str.5, ptr noundef @c__0, ptr noundef @c__0, ptr noundef @c_b18, ptr noundef %aapp, ptr noundef %1950, ptr noundef @c__1, ptr noundef %arrayidx2341, ptr noundef %1954, ptr noundef %ierr)
  store double 0.000000e+00, ptr %d__1, align 8
  %1955 = load double, ptr %aapq, align 8
  %1956 = load double, ptr %aapq, align 8
  %neg2344 = fneg double %1955
  %1957 = call double @llvm.fmuladd.f64(double %neg2344, double %1956, double 1.000000e+00)
  store double %1957, ptr %d__2, align 8
  %1958 = load double, ptr %aapp, align 8
  %1959 = load double, ptr %d__1, align 8
  %1960 = load double, ptr %d__2, align 8
  %cmp2345 = fcmp oge double %1959, %1960
  br i1 %cmp2345, label %cond.true2347, label %cond.false2348

cond.true2347:                                    ; preds = %if.else2305
  %1961 = load double, ptr %d__1, align 8
  br label %cond.end2349

cond.false2348:                                   ; preds = %if.else2305
  %1962 = load double, ptr %d__2, align 8
  br label %cond.end2349

cond.end2349:                                     ; preds = %cond.false2348, %cond.true2347
  %cond2350 = phi double [ %1961, %cond.true2347 ], [ %1962, %cond.false2348 ]
  %call2351 = call double @sqrt(double noundef %cond2350) #4
  %mul2352 = fmul double %1958, %call2351
  %1963 = load ptr, ptr %sva.addr, align 8
  %1964 = load i32, ptr %p, align 4
  %idxprom2353 = sext i32 %1964 to i64
  %arrayidx2354 = getelementptr inbounds double, ptr %1963, i64 %idxprom2353
  store double %mul2352, ptr %arrayidx2354, align 8
  %1965 = load double, ptr %mxsinj, align 8
  %1966 = load double, ptr %sfmin, align 8
  %cmp2355 = fcmp oge double %1965, %1966
  br i1 %cmp2355, label %cond.true2357, label %cond.false2358

cond.true2357:                                    ; preds = %cond.end2349
  %1967 = load double, ptr %mxsinj, align 8
  br label %cond.end2359

cond.false2358:                                   ; preds = %cond.end2349
  %1968 = load double, ptr %sfmin, align 8
  br label %cond.end2359

cond.end2359:                                     ; preds = %cond.false2358, %cond.true2357
  %cond2360 = phi double [ %1967, %cond.true2357 ], [ %1968, %cond.false2358 ]
  store double %cond2360, ptr %mxsinj, align 8
  br label %if.end2361

if.end2361:                                       ; preds = %cond.end2359, %cond.end2303
  br label %if.end2362

if.end2362:                                       ; preds = %if.end2361, %if.end2245
  %1969 = load ptr, ptr %sva.addr, align 8
  %1970 = load i32, ptr %q, align 4
  %idxprom2363 = sext i32 %1970 to i64
  %arrayidx2364 = getelementptr inbounds double, ptr %1969, i64 %idxprom2363
  %1971 = load double, ptr %arrayidx2364, align 8
  %1972 = load double, ptr %aaqq, align 8
  %div2365 = fdiv double %1971, %1972
  store double %div2365, ptr %d__1, align 8
  %1973 = load double, ptr %d__1, align 8
  %1974 = load double, ptr %d__1, align 8
  %mul2366 = fmul double %1973, %1974
  %1975 = load double, ptr %rooteps, align 8
  %cmp2367 = fcmp ole double %mul2366, %1975
  br i1 %cmp2367, label %if.then2369, label %if.end2400

if.then2369:                                      ; preds = %if.end2362
  %1976 = load double, ptr %aaqq, align 8
  %1977 = load double, ptr %rootbig, align 8
  %cmp2370 = fcmp olt double %1976, %1977
  br i1 %cmp2370, label %land.lhs.true2372, label %if.else2386

land.lhs.true2372:                                ; preds = %if.then2369
  %1978 = load double, ptr %aaqq, align 8
  %1979 = load double, ptr %rootsfmin, align 8
  %cmp2373 = fcmp ogt double %1978, %1979
  br i1 %cmp2373, label %if.then2375, label %if.else2386

if.then2375:                                      ; preds = %land.lhs.true2372
  %1980 = load ptr, ptr %m.addr, align 8
  %1981 = load ptr, ptr %a.addr, align 8
  %1982 = load i32, ptr %q, align 4
  %1983 = load i32, ptr %a_dim1, align 4
  %mul2376 = mul nsw i32 %1982, %1983
  %add2377 = add nsw i32 %mul2376, 1
  %idxprom2378 = sext i32 %add2377 to i64
  %arrayidx2379 = getelementptr inbounds double, ptr %1981, i64 %idxprom2378
  %call2380 = call double @dnrm2_(ptr noundef %1980, ptr noundef %arrayidx2379, ptr noundef @c__1)
  %1984 = load ptr, ptr %work.addr, align 8
  %1985 = load i32, ptr %q, align 4
  %idxprom2381 = sext i32 %1985 to i64
  %arrayidx2382 = getelementptr inbounds double, ptr %1984, i64 %idxprom2381
  %1986 = load double, ptr %arrayidx2382, align 8
  %mul2383 = fmul double %call2380, %1986
  %1987 = load ptr, ptr %sva.addr, align 8
  %1988 = load i32, ptr %q, align 4
  %idxprom2384 = sext i32 %1988 to i64
  %arrayidx2385 = getelementptr inbounds double, ptr %1987, i64 %idxprom2384
  store double %mul2383, ptr %arrayidx2385, align 8
  br label %if.end2399

if.else2386:                                      ; preds = %land.lhs.true2372, %if.then2369
  store double 0.000000e+00, ptr %t, align 8
  store double 1.000000e+00, ptr %aaqq, align 8
  %1989 = load ptr, ptr %m.addr, align 8
  %1990 = load ptr, ptr %a.addr, align 8
  %1991 = load i32, ptr %q, align 4
  %1992 = load i32, ptr %a_dim1, align 4
  %mul2387 = mul nsw i32 %1991, %1992
  %add2388 = add nsw i32 %mul2387, 1
  %idxprom2389 = sext i32 %add2388 to i64
  %arrayidx2390 = getelementptr inbounds double, ptr %1990, i64 %idxprom2389
  %call2391 = call i32 @dlassq_(ptr noundef %1989, ptr noundef %arrayidx2390, ptr noundef @c__1, ptr noundef %t, ptr noundef %aaqq)
  %1993 = load double, ptr %t, align 8
  %1994 = load double, ptr %aaqq, align 8
  %call2392 = call double @sqrt(double noundef %1994) #4
  %mul2393 = fmul double %1993, %call2392
  %1995 = load ptr, ptr %work.addr, align 8
  %1996 = load i32, ptr %q, align 4
  %idxprom2394 = sext i32 %1996 to i64
  %arrayidx2395 = getelementptr inbounds double, ptr %1995, i64 %idxprom2394
  %1997 = load double, ptr %arrayidx2395, align 8
  %mul2396 = fmul double %mul2393, %1997
  %1998 = load ptr, ptr %sva.addr, align 8
  %1999 = load i32, ptr %q, align 4
  %idxprom2397 = sext i32 %1999 to i64
  %arrayidx2398 = getelementptr inbounds double, ptr %1998, i64 %idxprom2397
  store double %mul2396, ptr %arrayidx2398, align 8
  br label %if.end2399

if.end2399:                                       ; preds = %if.else2386, %if.then2375
  br label %if.end2400

if.end2400:                                       ; preds = %if.end2399, %if.end2362
  %2000 = load double, ptr %aapp, align 8
  %2001 = load double, ptr %aapp0, align 8
  %div2401 = fdiv double %2000, %2001
  store double %div2401, ptr %d__1, align 8
  %2002 = load double, ptr %d__1, align 8
  %2003 = load double, ptr %d__1, align 8
  %mul2402 = fmul double %2002, %2003
  %2004 = load double, ptr %rooteps, align 8
  %cmp2403 = fcmp ole double %mul2402, %2004
  br i1 %cmp2403, label %if.then2405, label %if.end2434

if.then2405:                                      ; preds = %if.end2400
  %2005 = load double, ptr %aapp, align 8
  %2006 = load double, ptr %rootbig, align 8
  %cmp2406 = fcmp olt double %2005, %2006
  br i1 %cmp2406, label %land.lhs.true2408, label %if.else2420

land.lhs.true2408:                                ; preds = %if.then2405
  %2007 = load double, ptr %aapp, align 8
  %2008 = load double, ptr %rootsfmin, align 8
  %cmp2409 = fcmp ogt double %2007, %2008
  br i1 %cmp2409, label %if.then2411, label %if.else2420

if.then2411:                                      ; preds = %land.lhs.true2408
  %2009 = load ptr, ptr %m.addr, align 8
  %2010 = load ptr, ptr %a.addr, align 8
  %2011 = load i32, ptr %p, align 4
  %2012 = load i32, ptr %a_dim1, align 4
  %mul2412 = mul nsw i32 %2011, %2012
  %add2413 = add nsw i32 %mul2412, 1
  %idxprom2414 = sext i32 %add2413 to i64
  %arrayidx2415 = getelementptr inbounds double, ptr %2010, i64 %idxprom2414
  %call2416 = call double @dnrm2_(ptr noundef %2009, ptr noundef %arrayidx2415, ptr noundef @c__1)
  %2013 = load ptr, ptr %work.addr, align 8
  %2014 = load i32, ptr %p, align 4
  %idxprom2417 = sext i32 %2014 to i64
  %arrayidx2418 = getelementptr inbounds double, ptr %2013, i64 %idxprom2417
  %2015 = load double, ptr %arrayidx2418, align 8
  %mul2419 = fmul double %call2416, %2015
  store double %mul2419, ptr %aapp, align 8
  br label %if.end2431

if.else2420:                                      ; preds = %land.lhs.true2408, %if.then2405
  store double 0.000000e+00, ptr %t, align 8
  store double 1.000000e+00, ptr %aapp, align 8
  %2016 = load ptr, ptr %m.addr, align 8
  %2017 = load ptr, ptr %a.addr, align 8
  %2018 = load i32, ptr %p, align 4
  %2019 = load i32, ptr %a_dim1, align 4
  %mul2421 = mul nsw i32 %2018, %2019
  %add2422 = add nsw i32 %mul2421, 1
  %idxprom2423 = sext i32 %add2422 to i64
  %arrayidx2424 = getelementptr inbounds double, ptr %2017, i64 %idxprom2423
  %call2425 = call i32 @dlassq_(ptr noundef %2016, ptr noundef %arrayidx2424, ptr noundef @c__1, ptr noundef %t, ptr noundef %aapp)
  %2020 = load double, ptr %t, align 8
  %2021 = load double, ptr %aapp, align 8
  %call2426 = call double @sqrt(double noundef %2021) #4
  %mul2427 = fmul double %2020, %call2426
  %2022 = load ptr, ptr %work.addr, align 8
  %2023 = load i32, ptr %p, align 4
  %idxprom2428 = sext i32 %2023 to i64
  %arrayidx2429 = getelementptr inbounds double, ptr %2022, i64 %idxprom2428
  %2024 = load double, ptr %arrayidx2429, align 8
  %mul2430 = fmul double %mul2427, %2024
  store double %mul2430, ptr %aapp, align 8
  br label %if.end2431

if.end2431:                                       ; preds = %if.else2420, %if.then2411
  %2025 = load double, ptr %aapp, align 8
  %2026 = load ptr, ptr %sva.addr, align 8
  %2027 = load i32, ptr %p, align 4
  %idxprom2432 = sext i32 %2027 to i64
  %arrayidx2433 = getelementptr inbounds double, ptr %2026, i64 %idxprom2432
  store double %2025, ptr %arrayidx2433, align 8
  br label %if.end2434

if.end2434:                                       ; preds = %if.end2431, %if.end2400
  br label %if.end2439

if.else2435:                                      ; preds = %cond.end1797
  %2028 = load i32, ptr %notrot, align 4
  %inc2436 = add nsw i32 %2028, 1
  store i32 %inc2436, ptr %notrot, align 4
  %2029 = load i32, ptr %pskipped, align 4
  %inc2437 = add nsw i32 %2029, 1
  store i32 %inc2437, ptr %pskipped, align 4
  %2030 = load i32, ptr %ijblsk, align 4
  %inc2438 = add nsw i32 %2030, 1
  store i32 %inc2438, ptr %ijblsk, align 4
  br label %if.end2439

if.end2439:                                       ; preds = %if.else2435, %if.end2434
  br label %if.end2444

if.else2440:                                      ; preds = %for.body1648
  %2031 = load i32, ptr %notrot, align 4
  %inc2441 = add nsw i32 %2031, 1
  store i32 %inc2441, ptr %notrot, align 4
  %2032 = load i32, ptr %pskipped, align 4
  %inc2442 = add nsw i32 %2032, 1
  store i32 %inc2442, ptr %pskipped, align 4
  %2033 = load i32, ptr %ijblsk, align 4
  %inc2443 = add nsw i32 %2033, 1
  store i32 %inc2443, ptr %ijblsk, align 4
  br label %if.end2444

if.end2444:                                       ; preds = %if.else2440, %if.end2439
  %2034 = load i32, ptr %i__, align 4
  %2035 = load i32, ptr %swband, align 4
  %cmp2445 = icmp sle i32 %2034, %2035
  br i1 %cmp2445, label %land.lhs.true2447, label %if.end2453

land.lhs.true2447:                                ; preds = %if.end2444
  %2036 = load i32, ptr %ijblsk, align 4
  %2037 = load i32, ptr %blskip, align 4
  %cmp2448 = icmp sge i32 %2036, %2037
  br i1 %cmp2448, label %if.then2450, label %if.end2453

if.then2450:                                      ; preds = %land.lhs.true2447
  %2038 = load double, ptr %aapp, align 8
  %2039 = load ptr, ptr %sva.addr, align 8
  %2040 = load i32, ptr %p, align 4
  %idxprom2451 = sext i32 %2040 to i64
  %arrayidx2452 = getelementptr inbounds double, ptr %2039, i64 %idxprom2451
  store double %2038, ptr %arrayidx2452, align 8
  store i32 0, ptr %notrot, align 4
  br label %L2011

if.end2453:                                       ; preds = %land.lhs.true2447, %if.end2444
  %2041 = load i32, ptr %i__, align 4
  %2042 = load i32, ptr %swband, align 4
  %cmp2454 = icmp sle i32 %2041, %2042
  br i1 %cmp2454, label %land.lhs.true2456, label %if.end2461

land.lhs.true2456:                                ; preds = %if.end2453
  %2043 = load i32, ptr %pskipped, align 4
  %2044 = load i32, ptr %rowskip, align 4
  %cmp2457 = icmp sgt i32 %2043, %2044
  br i1 %cmp2457, label %if.then2459, label %if.end2461

if.then2459:                                      ; preds = %land.lhs.true2456
  %2045 = load double, ptr %aapp, align 8
  %fneg2460 = fneg double %2045
  store double %fneg2460, ptr %aapp, align 8
  store i32 0, ptr %notrot, align 4
  br label %L2203

if.end2461:                                       ; preds = %land.lhs.true2456, %if.end2453
  br label %for.inc2462

for.inc2462:                                      ; preds = %if.end2461
  %2046 = load i32, ptr %q, align 4
  %inc2463 = add nsw i32 %2046, 1
  store i32 %inc2463, ptr %q, align 4
  br label %for.cond1645, !llvm.loop !17

for.end2464:                                      ; preds = %for.cond1645
  br label %L2203

L2203:                                            ; preds = %for.end2464, %if.then2459
  %2047 = load double, ptr %aapp, align 8
  %2048 = load ptr, ptr %sva.addr, align 8
  %2049 = load i32, ptr %p, align 4
  %idxprom2465 = sext i32 %2049 to i64
  %arrayidx2466 = getelementptr inbounds double, ptr %2048, i64 %idxprom2465
  store double %2047, ptr %arrayidx2466, align 8
  br label %if.end2487

if.else2467:                                      ; preds = %for.body1631
  %2050 = load double, ptr %aapp, align 8
  %cmp2468 = fcmp oeq double %2050, 0.000000e+00
  br i1 %cmp2468, label %if.then2470, label %if.end2482

if.then2470:                                      ; preds = %if.else2467
  %2051 = load i32, ptr %jgl, align 4
  %2052 = load i32, ptr %kbl, align 4
  %add2471 = add nsw i32 %2051, %2052
  %sub2472 = sub nsw i32 %add2471, 1
  store i32 %sub2472, ptr %i__4, align 4
  %2053 = load i32, ptr %notrot, align 4
  %2054 = load i32, ptr %i__4, align 4
  %2055 = load ptr, ptr %n.addr, align 8
  %2056 = load i32, ptr %2055, align 4
  %cmp2473 = icmp sle i32 %2054, %2056
  br i1 %cmp2473, label %cond.true2475, label %cond.false2476

cond.true2475:                                    ; preds = %if.then2470
  %2057 = load i32, ptr %i__4, align 4
  br label %cond.end2477

cond.false2476:                                   ; preds = %if.then2470
  %2058 = load ptr, ptr %n.addr, align 8
  %2059 = load i32, ptr %2058, align 4
  br label %cond.end2477

cond.end2477:                                     ; preds = %cond.false2476, %cond.true2475
  %cond2478 = phi i32 [ %2057, %cond.true2475 ], [ %2059, %cond.false2476 ]
  %add2479 = add nsw i32 %2053, %cond2478
  %2060 = load i32, ptr %jgl, align 4
  %sub2480 = sub nsw i32 %add2479, %2060
  %add2481 = add nsw i32 %sub2480, 1
  store i32 %add2481, ptr %notrot, align 4
  br label %if.end2482

if.end2482:                                       ; preds = %cond.end2477, %if.else2467
  %2061 = load double, ptr %aapp, align 8
  %cmp2483 = fcmp olt double %2061, 0.000000e+00
  br i1 %cmp2483, label %if.then2485, label %if.end2486

if.then2485:                                      ; preds = %if.end2482
  store i32 0, ptr %notrot, align 4
  br label %if.end2486

if.end2486:                                       ; preds = %if.then2485, %if.end2482
  br label %if.end2487

if.end2487:                                       ; preds = %if.end2486, %L2203
  br label %for.inc2488

for.inc2488:                                      ; preds = %if.end2487
  %2062 = load i32, ptr %p, align 4
  %inc2489 = add nsw i32 %2062, 1
  store i32 %inc2489, ptr %p, align 4
  br label %for.cond1628, !llvm.loop !18

for.end2490:                                      ; preds = %for.cond1628
  br label %for.inc2491

for.inc2491:                                      ; preds = %for.end2490
  %2063 = load i32, ptr %jbc, align 4
  %inc2492 = add nsw i32 %2063, 1
  store i32 %inc2492, ptr %jbc, align 4
  br label %for.cond1613, !llvm.loop !19

for.end2493:                                      ; preds = %for.cond1613
  br label %L2011

L2011:                                            ; preds = %for.end2493, %if.then2450
  %2064 = load i32, ptr %igl, align 4
  %2065 = load i32, ptr %kbl, align 4
  %add2494 = add nsw i32 %2064, %2065
  %sub2495 = sub nsw i32 %add2494, 1
  store i32 %sub2495, ptr %i__3, align 4
  %2066 = load i32, ptr %i__3, align 4
  %2067 = load ptr, ptr %n.addr, align 8
  %2068 = load i32, ptr %2067, align 4
  %cmp2496 = icmp sle i32 %2066, %2068
  br i1 %cmp2496, label %cond.true2498, label %cond.false2499

cond.true2498:                                    ; preds = %L2011
  %2069 = load i32, ptr %i__3, align 4
  br label %cond.end2500

cond.false2499:                                   ; preds = %L2011
  %2070 = load ptr, ptr %n.addr, align 8
  %2071 = load i32, ptr %2070, align 4
  br label %cond.end2500

cond.end2500:                                     ; preds = %cond.false2499, %cond.true2498
  %cond2501 = phi i32 [ %2069, %cond.true2498 ], [ %2071, %cond.false2499 ]
  store i32 %cond2501, ptr %i__2, align 4
  %2072 = load i32, ptr %igl, align 4
  store i32 %2072, ptr %p, align 4
  br label %for.cond2502

for.cond2502:                                     ; preds = %for.inc2517, %cond.end2500
  %2073 = load i32, ptr %p, align 4
  %2074 = load i32, ptr %i__2, align 4
  %cmp2503 = icmp sle i32 %2073, %2074
  br i1 %cmp2503, label %for.body2505, label %for.end2519

for.body2505:                                     ; preds = %for.cond2502
  %2075 = load ptr, ptr %sva.addr, align 8
  %2076 = load i32, ptr %p, align 4
  %idxprom2506 = sext i32 %2076 to i64
  %arrayidx2507 = getelementptr inbounds double, ptr %2075, i64 %idxprom2506
  %2077 = load double, ptr %arrayidx2507, align 8
  store double %2077, ptr %d__1, align 8
  %2078 = load double, ptr %d__1, align 8
  %cmp2508 = fcmp oge double %2078, 0.000000e+00
  br i1 %cmp2508, label %cond.true2510, label %cond.false2511

cond.true2510:                                    ; preds = %for.body2505
  %2079 = load double, ptr %d__1, align 8
  br label %cond.end2513

cond.false2511:                                   ; preds = %for.body2505
  %2080 = load double, ptr %d__1, align 8
  %fneg2512 = fneg double %2080
  br label %cond.end2513

cond.end2513:                                     ; preds = %cond.false2511, %cond.true2510
  %cond2514 = phi double [ %2079, %cond.true2510 ], [ %fneg2512, %cond.false2511 ]
  %2081 = load ptr, ptr %sva.addr, align 8
  %2082 = load i32, ptr %p, align 4
  %idxprom2515 = sext i32 %2082 to i64
  %arrayidx2516 = getelementptr inbounds double, ptr %2081, i64 %idxprom2515
  store double %cond2514, ptr %arrayidx2516, align 8
  br label %for.inc2517

for.inc2517:                                      ; preds = %cond.end2513
  %2083 = load i32, ptr %p, align 4
  %inc2518 = add nsw i32 %2083, 1
  store i32 %inc2518, ptr %p, align 4
  br label %for.cond2502, !llvm.loop !20

for.end2519:                                      ; preds = %for.cond2502
  br label %for.inc2520

for.inc2520:                                      ; preds = %for.end2519
  %2084 = load i32, ptr %ibr, align 4
  %inc2521 = add nsw i32 %2084, 1
  store i32 %inc2521, ptr %ibr, align 4
  br label %for.cond709, !llvm.loop !21

for.end2522:                                      ; preds = %for.cond709
  %2085 = load ptr, ptr %sva.addr, align 8
  %2086 = load ptr, ptr %n.addr, align 8
  %2087 = load i32, ptr %2086, align 4
  %idxprom2523 = sext i32 %2087 to i64
  %arrayidx2524 = getelementptr inbounds double, ptr %2085, i64 %idxprom2523
  %2088 = load double, ptr %arrayidx2524, align 8
  %2089 = load double, ptr %rootbig, align 8
  %cmp2525 = fcmp olt double %2088, %2089
  br i1 %cmp2525, label %land.lhs.true2527, label %if.else2543

land.lhs.true2527:                                ; preds = %for.end2522
  %2090 = load ptr, ptr %sva.addr, align 8
  %2091 = load ptr, ptr %n.addr, align 8
  %2092 = load i32, ptr %2091, align 4
  %idxprom2528 = sext i32 %2092 to i64
  %arrayidx2529 = getelementptr inbounds double, ptr %2090, i64 %idxprom2528
  %2093 = load double, ptr %arrayidx2529, align 8
  %2094 = load double, ptr %rootsfmin, align 8
  %cmp2530 = fcmp ogt double %2093, %2094
  br i1 %cmp2530, label %if.then2532, label %if.else2543

if.then2532:                                      ; preds = %land.lhs.true2527
  %2095 = load ptr, ptr %m.addr, align 8
  %2096 = load ptr, ptr %a.addr, align 8
  %2097 = load ptr, ptr %n.addr, align 8
  %2098 = load i32, ptr %2097, align 4
  %2099 = load i32, ptr %a_dim1, align 4
  %mul2533 = mul nsw i32 %2098, %2099
  %add2534 = add nsw i32 %mul2533, 1
  %idxprom2535 = sext i32 %add2534 to i64
  %arrayidx2536 = getelementptr inbounds double, ptr %2096, i64 %idxprom2535
  %call2537 = call double @dnrm2_(ptr noundef %2095, ptr noundef %arrayidx2536, ptr noundef @c__1)
  %2100 = load ptr, ptr %work.addr, align 8
  %2101 = load ptr, ptr %n.addr, align 8
  %2102 = load i32, ptr %2101, align 4
  %idxprom2538 = sext i32 %2102 to i64
  %arrayidx2539 = getelementptr inbounds double, ptr %2100, i64 %idxprom2538
  %2103 = load double, ptr %arrayidx2539, align 8
  %mul2540 = fmul double %call2537, %2103
  %2104 = load ptr, ptr %sva.addr, align 8
  %2105 = load ptr, ptr %n.addr, align 8
  %2106 = load i32, ptr %2105, align 4
  %idxprom2541 = sext i32 %2106 to i64
  %arrayidx2542 = getelementptr inbounds double, ptr %2104, i64 %idxprom2541
  store double %mul2540, ptr %arrayidx2542, align 8
  br label %if.end2556

if.else2543:                                      ; preds = %land.lhs.true2527, %for.end2522
  store double 0.000000e+00, ptr %t, align 8
  store double 1.000000e+00, ptr %aapp, align 8
  %2107 = load ptr, ptr %m.addr, align 8
  %2108 = load ptr, ptr %a.addr, align 8
  %2109 = load ptr, ptr %n.addr, align 8
  %2110 = load i32, ptr %2109, align 4
  %2111 = load i32, ptr %a_dim1, align 4
  %mul2544 = mul nsw i32 %2110, %2111
  %add2545 = add nsw i32 %mul2544, 1
  %idxprom2546 = sext i32 %add2545 to i64
  %arrayidx2547 = getelementptr inbounds double, ptr %2108, i64 %idxprom2546
  %call2548 = call i32 @dlassq_(ptr noundef %2107, ptr noundef %arrayidx2547, ptr noundef @c__1, ptr noundef %t, ptr noundef %aapp)
  %2112 = load double, ptr %t, align 8
  %2113 = load double, ptr %aapp, align 8
  %call2549 = call double @sqrt(double noundef %2113) #4
  %mul2550 = fmul double %2112, %call2549
  %2114 = load ptr, ptr %work.addr, align 8
  %2115 = load ptr, ptr %n.addr, align 8
  %2116 = load i32, ptr %2115, align 4
  %idxprom2551 = sext i32 %2116 to i64
  %arrayidx2552 = getelementptr inbounds double, ptr %2114, i64 %idxprom2551
  %2117 = load double, ptr %arrayidx2552, align 8
  %mul2553 = fmul double %mul2550, %2117
  %2118 = load ptr, ptr %sva.addr, align 8
  %2119 = load ptr, ptr %n.addr, align 8
  %2120 = load i32, ptr %2119, align 4
  %idxprom2554 = sext i32 %2120 to i64
  %arrayidx2555 = getelementptr inbounds double, ptr %2118, i64 %idxprom2554
  store double %mul2553, ptr %arrayidx2555, align 8
  br label %if.end2556

if.end2556:                                       ; preds = %if.else2543, %if.then2532
  %2121 = load i32, ptr %i__, align 4
  %2122 = load i32, ptr %swband, align 4
  %cmp2557 = icmp slt i32 %2121, %2122
  br i1 %cmp2557, label %land.lhs.true2559, label %if.end2566

land.lhs.true2559:                                ; preds = %if.end2556
  %2123 = load double, ptr %mxaapq, align 8
  %2124 = load double, ptr %roottol, align 8
  %cmp2560 = fcmp ole double %2123, %2124
  br i1 %cmp2560, label %if.then2565, label %lor.lhs.false2562

lor.lhs.false2562:                                ; preds = %land.lhs.true2559
  %2125 = load i32, ptr %iswrot, align 4
  %2126 = load ptr, ptr %n.addr, align 8
  %2127 = load i32, ptr %2126, align 4
  %cmp2563 = icmp sle i32 %2125, %2127
  br i1 %cmp2563, label %if.then2565, label %if.end2566

if.then2565:                                      ; preds = %lor.lhs.false2562, %land.lhs.true2559
  %2128 = load i32, ptr %i__, align 4
  store i32 %2128, ptr %swband, align 4
  br label %if.end2566

if.end2566:                                       ; preds = %if.then2565, %lor.lhs.false2562, %if.end2556
  %2129 = load i32, ptr %i__, align 4
  %2130 = load i32, ptr %swband, align 4
  %add2567 = add nsw i32 %2130, 1
  %cmp2568 = icmp sgt i32 %2129, %add2567
  br i1 %cmp2568, label %land.lhs.true2570, label %if.end2583

land.lhs.true2570:                                ; preds = %if.end2566
  %2131 = load double, ptr %mxaapq, align 8
  %2132 = load ptr, ptr %n.addr, align 8
  %2133 = load i32, ptr %2132, align 4
  %conv2571 = sitofp i32 %2133 to double
  %call2572 = call double @sqrt(double noundef %conv2571) #4
  %2134 = load double, ptr %tol, align 8
  %mul2573 = fmul double %call2572, %2134
  %cmp2574 = fcmp olt double %2131, %mul2573
  br i1 %cmp2574, label %land.lhs.true2576, label %if.end2583

land.lhs.true2576:                                ; preds = %land.lhs.true2570
  %2135 = load ptr, ptr %n.addr, align 8
  %2136 = load i32, ptr %2135, align 4
  %conv2577 = sitofp i32 %2136 to double
  %2137 = load double, ptr %mxaapq, align 8
  %mul2578 = fmul double %conv2577, %2137
  %2138 = load double, ptr %mxsinj, align 8
  %mul2579 = fmul double %mul2578, %2138
  %2139 = load double, ptr %tol, align 8
  %cmp2580 = fcmp olt double %mul2579, %2139
  br i1 %cmp2580, label %if.then2582, label %if.end2583

if.then2582:                                      ; preds = %land.lhs.true2576
  br label %L1994

if.end2583:                                       ; preds = %land.lhs.true2576, %land.lhs.true2570, %if.end2566
  %2140 = load i32, ptr %notrot, align 4
  %2141 = load i32, ptr %emptsw, align 4
  %cmp2584 = icmp sge i32 %2140, %2141
  br i1 %cmp2584, label %if.then2586, label %if.end2587

if.then2586:                                      ; preds = %if.end2583
  br label %L1994

if.end2587:                                       ; preds = %if.end2583
  br label %for.inc2588

for.inc2588:                                      ; preds = %if.end2587
  %2142 = load i32, ptr %i__, align 4
  %inc2589 = add nsw i32 %2142, 1
  store i32 %inc2589, ptr %i__, align 4
  br label %for.cond705, !llvm.loop !22

for.end2590:                                      ; preds = %for.cond705
  %2143 = load ptr, ptr %info.addr, align 8
  store i32 29, ptr %2143, align 4
  br label %L1995

L1994:                                            ; preds = %if.then2586, %if.then2582
  %2144 = load ptr, ptr %info.addr, align 8
  store i32 0, ptr %2144, align 4
  br label %L1995

L1995:                                            ; preds = %L1994, %for.end2590
  store i32 0, ptr %n2, align 4
  store i32 0, ptr %n4, align 4
  %2145 = load ptr, ptr %n.addr, align 8
  %2146 = load i32, ptr %2145, align 4
  %sub2591 = sub nsw i32 %2146, 1
  store i32 %sub2591, ptr %i__1, align 4
  store i32 1, ptr %p, align 4
  br label %for.cond2592

for.cond2592:                                     ; preds = %for.inc2659, %L1995
  %2147 = load i32, ptr %p, align 4
  %2148 = load i32, ptr %i__1, align 4
  %cmp2593 = icmp sle i32 %2147, %2148
  br i1 %cmp2593, label %for.body2595, label %for.end2661

for.body2595:                                     ; preds = %for.cond2592
  %2149 = load ptr, ptr %n.addr, align 8
  %2150 = load i32, ptr %2149, align 4
  %2151 = load i32, ptr %p, align 4
  %sub2596 = sub nsw i32 %2150, %2151
  %add2597 = add nsw i32 %sub2596, 1
  store i32 %add2597, ptr %i__2, align 4
  %2152 = load ptr, ptr %sva.addr, align 8
  %2153 = load i32, ptr %p, align 4
  %idxprom2598 = sext i32 %2153 to i64
  %arrayidx2599 = getelementptr inbounds double, ptr %2152, i64 %idxprom2598
  %call2600 = call i32 @idamax_(ptr noundef %i__2, ptr noundef %arrayidx2599, ptr noundef @c__1)
  %2154 = load i32, ptr %p, align 4
  %add2601 = add nsw i32 %call2600, %2154
  %sub2602 = sub nsw i32 %add2601, 1
  store i32 %sub2602, ptr %q, align 4
  %2155 = load i32, ptr %p, align 4
  %2156 = load i32, ptr %q, align 4
  %cmp2603 = icmp ne i32 %2155, %2156
  br i1 %cmp2603, label %if.then2605, label %if.end2643

if.then2605:                                      ; preds = %for.body2595
  %2157 = load ptr, ptr %sva.addr, align 8
  %2158 = load i32, ptr %p, align 4
  %idxprom2606 = sext i32 %2158 to i64
  %arrayidx2607 = getelementptr inbounds double, ptr %2157, i64 %idxprom2606
  %2159 = load double, ptr %arrayidx2607, align 8
  store double %2159, ptr %temp1, align 8
  %2160 = load ptr, ptr %sva.addr, align 8
  %2161 = load i32, ptr %q, align 4
  %idxprom2608 = sext i32 %2161 to i64
  %arrayidx2609 = getelementptr inbounds double, ptr %2160, i64 %idxprom2608
  %2162 = load double, ptr %arrayidx2609, align 8
  %2163 = load ptr, ptr %sva.addr, align 8
  %2164 = load i32, ptr %p, align 4
  %idxprom2610 = sext i32 %2164 to i64
  %arrayidx2611 = getelementptr inbounds double, ptr %2163, i64 %idxprom2610
  store double %2162, ptr %arrayidx2611, align 8
  %2165 = load double, ptr %temp1, align 8
  %2166 = load ptr, ptr %sva.addr, align 8
  %2167 = load i32, ptr %q, align 4
  %idxprom2612 = sext i32 %2167 to i64
  %arrayidx2613 = getelementptr inbounds double, ptr %2166, i64 %idxprom2612
  store double %2165, ptr %arrayidx2613, align 8
  %2168 = load ptr, ptr %work.addr, align 8
  %2169 = load i32, ptr %p, align 4
  %idxprom2614 = sext i32 %2169 to i64
  %arrayidx2615 = getelementptr inbounds double, ptr %2168, i64 %idxprom2614
  %2170 = load double, ptr %arrayidx2615, align 8
  store double %2170, ptr %temp1, align 8
  %2171 = load ptr, ptr %work.addr, align 8
  %2172 = load i32, ptr %q, align 4
  %idxprom2616 = sext i32 %2172 to i64
  %arrayidx2617 = getelementptr inbounds double, ptr %2171, i64 %idxprom2616
  %2173 = load double, ptr %arrayidx2617, align 8
  %2174 = load ptr, ptr %work.addr, align 8
  %2175 = load i32, ptr %p, align 4
  %idxprom2618 = sext i32 %2175 to i64
  %arrayidx2619 = getelementptr inbounds double, ptr %2174, i64 %idxprom2618
  store double %2173, ptr %arrayidx2619, align 8
  %2176 = load double, ptr %temp1, align 8
  %2177 = load ptr, ptr %work.addr, align 8
  %2178 = load i32, ptr %q, align 4
  %idxprom2620 = sext i32 %2178 to i64
  %arrayidx2621 = getelementptr inbounds double, ptr %2177, i64 %idxprom2620
  store double %2176, ptr %arrayidx2621, align 8
  %2179 = load ptr, ptr %m.addr, align 8
  %2180 = load ptr, ptr %a.addr, align 8
  %2181 = load i32, ptr %p, align 4
  %2182 = load i32, ptr %a_dim1, align 4
  %mul2622 = mul nsw i32 %2181, %2182
  %add2623 = add nsw i32 %mul2622, 1
  %idxprom2624 = sext i32 %add2623 to i64
  %arrayidx2625 = getelementptr inbounds double, ptr %2180, i64 %idxprom2624
  %2183 = load ptr, ptr %a.addr, align 8
  %2184 = load i32, ptr %q, align 4
  %2185 = load i32, ptr %a_dim1, align 4
  %mul2626 = mul nsw i32 %2184, %2185
  %add2627 = add nsw i32 %mul2626, 1
  %idxprom2628 = sext i32 %add2627 to i64
  %arrayidx2629 = getelementptr inbounds double, ptr %2183, i64 %idxprom2628
  %call2630 = call i32 @dswap_(ptr noundef %2179, ptr noundef %arrayidx2625, ptr noundef @c__1, ptr noundef %arrayidx2629, ptr noundef @c__1)
  %2186 = load i32, ptr %rsvec, align 4
  %tobool2631 = icmp ne i32 %2186, 0
  br i1 %tobool2631, label %if.then2632, label %if.end2642

if.then2632:                                      ; preds = %if.then2605
  %2187 = load ptr, ptr %v.addr, align 8
  %2188 = load i32, ptr %p, align 4
  %2189 = load i32, ptr %v_dim1, align 4
  %mul2633 = mul nsw i32 %2188, %2189
  %add2634 = add nsw i32 %mul2633, 1
  %idxprom2635 = sext i32 %add2634 to i64
  %arrayidx2636 = getelementptr inbounds double, ptr %2187, i64 %idxprom2635
  %2190 = load ptr, ptr %v.addr, align 8
  %2191 = load i32, ptr %q, align 4
  %2192 = load i32, ptr %v_dim1, align 4
  %mul2637 = mul nsw i32 %2191, %2192
  %add2638 = add nsw i32 %mul2637, 1
  %idxprom2639 = sext i32 %add2638 to i64
  %arrayidx2640 = getelementptr inbounds double, ptr %2190, i64 %idxprom2639
  %call2641 = call i32 @dswap_(ptr noundef %mvl, ptr noundef %arrayidx2636, ptr noundef @c__1, ptr noundef %arrayidx2640, ptr noundef @c__1)
  br label %if.end2642

if.end2642:                                       ; preds = %if.then2632, %if.then2605
  br label %if.end2643

if.end2643:                                       ; preds = %if.end2642, %for.body2595
  %2193 = load ptr, ptr %sva.addr, align 8
  %2194 = load i32, ptr %p, align 4
  %idxprom2644 = sext i32 %2194 to i64
  %arrayidx2645 = getelementptr inbounds double, ptr %2193, i64 %idxprom2644
  %2195 = load double, ptr %arrayidx2645, align 8
  %cmp2646 = fcmp une double %2195, 0.000000e+00
  br i1 %cmp2646, label %if.then2648, label %if.end2658

if.then2648:                                      ; preds = %if.end2643
  %2196 = load i32, ptr %n4, align 4
  %inc2649 = add nsw i32 %2196, 1
  store i32 %inc2649, ptr %n4, align 4
  %2197 = load ptr, ptr %sva.addr, align 8
  %2198 = load i32, ptr %p, align 4
  %idxprom2650 = sext i32 %2198 to i64
  %arrayidx2651 = getelementptr inbounds double, ptr %2197, i64 %idxprom2650
  %2199 = load double, ptr %arrayidx2651, align 8
  %2200 = load double, ptr %skl, align 8
  %mul2652 = fmul double %2199, %2200
  %2201 = load double, ptr %sfmin, align 8
  %cmp2653 = fcmp ogt double %mul2652, %2201
  br i1 %cmp2653, label %if.then2655, label %if.end2657

if.then2655:                                      ; preds = %if.then2648
  %2202 = load i32, ptr %n2, align 4
  %inc2656 = add nsw i32 %2202, 1
  store i32 %inc2656, ptr %n2, align 4
  br label %if.end2657

if.end2657:                                       ; preds = %if.then2655, %if.then2648
  br label %if.end2658

if.end2658:                                       ; preds = %if.end2657, %if.end2643
  br label %for.inc2659

for.inc2659:                                      ; preds = %if.end2658
  %2203 = load i32, ptr %p, align 4
  %inc2660 = add nsw i32 %2203, 1
  store i32 %inc2660, ptr %p, align 4
  br label %for.cond2592, !llvm.loop !23

for.end2661:                                      ; preds = %for.cond2592
  %2204 = load ptr, ptr %sva.addr, align 8
  %2205 = load ptr, ptr %n.addr, align 8
  %2206 = load i32, ptr %2205, align 4
  %idxprom2662 = sext i32 %2206 to i64
  %arrayidx2663 = getelementptr inbounds double, ptr %2204, i64 %idxprom2662
  %2207 = load double, ptr %arrayidx2663, align 8
  %cmp2664 = fcmp une double %2207, 0.000000e+00
  br i1 %cmp2664, label %if.then2666, label %if.end2676

if.then2666:                                      ; preds = %for.end2661
  %2208 = load i32, ptr %n4, align 4
  %inc2667 = add nsw i32 %2208, 1
  store i32 %inc2667, ptr %n4, align 4
  %2209 = load ptr, ptr %sva.addr, align 8
  %2210 = load ptr, ptr %n.addr, align 8
  %2211 = load i32, ptr %2210, align 4
  %idxprom2668 = sext i32 %2211 to i64
  %arrayidx2669 = getelementptr inbounds double, ptr %2209, i64 %idxprom2668
  %2212 = load double, ptr %arrayidx2669, align 8
  %2213 = load double, ptr %skl, align 8
  %mul2670 = fmul double %2212, %2213
  %2214 = load double, ptr %sfmin, align 8
  %cmp2671 = fcmp ogt double %mul2670, %2214
  br i1 %cmp2671, label %if.then2673, label %if.end2675

if.then2673:                                      ; preds = %if.then2666
  %2215 = load i32, ptr %n2, align 4
  %inc2674 = add nsw i32 %2215, 1
  store i32 %inc2674, ptr %n2, align 4
  br label %if.end2675

if.end2675:                                       ; preds = %if.then2673, %if.then2666
  br label %if.end2676

if.end2676:                                       ; preds = %if.end2675, %for.end2661
  %2216 = load i32, ptr %lsvec, align 4
  %tobool2677 = icmp ne i32 %2216, 0
  br i1 %tobool2677, label %if.then2680, label %lor.lhs.false2678

lor.lhs.false2678:                                ; preds = %if.end2676
  %2217 = load i32, ptr %uctol, align 4
  %tobool2679 = icmp ne i32 %2217, 0
  br i1 %tobool2679, label %if.then2680, label %if.end2698

if.then2680:                                      ; preds = %lor.lhs.false2678, %if.end2676
  %2218 = load i32, ptr %n2, align 4
  store i32 %2218, ptr %i__1, align 4
  store i32 1, ptr %p, align 4
  br label %for.cond2681

for.cond2681:                                     ; preds = %for.inc2695, %if.then2680
  %2219 = load i32, ptr %p, align 4
  %2220 = load i32, ptr %i__1, align 4
  %cmp2682 = icmp sle i32 %2219, %2220
  br i1 %cmp2682, label %for.body2684, label %for.end2697

for.body2684:                                     ; preds = %for.cond2681
  %2221 = load ptr, ptr %work.addr, align 8
  %2222 = load i32, ptr %p, align 4
  %idxprom2685 = sext i32 %2222 to i64
  %arrayidx2686 = getelementptr inbounds double, ptr %2221, i64 %idxprom2685
  %2223 = load double, ptr %arrayidx2686, align 8
  %2224 = load ptr, ptr %sva.addr, align 8
  %2225 = load i32, ptr %p, align 4
  %idxprom2687 = sext i32 %2225 to i64
  %arrayidx2688 = getelementptr inbounds double, ptr %2224, i64 %idxprom2687
  %2226 = load double, ptr %arrayidx2688, align 8
  %div2689 = fdiv double %2223, %2226
  store double %div2689, ptr %d__1, align 8
  %2227 = load ptr, ptr %m.addr, align 8
  %2228 = load ptr, ptr %a.addr, align 8
  %2229 = load i32, ptr %p, align 4
  %2230 = load i32, ptr %a_dim1, align 4
  %mul2690 = mul nsw i32 %2229, %2230
  %add2691 = add nsw i32 %mul2690, 1
  %idxprom2692 = sext i32 %add2691 to i64
  %arrayidx2693 = getelementptr inbounds double, ptr %2228, i64 %idxprom2692
  %call2694 = call i32 @dscal_(ptr noundef %2227, ptr noundef %d__1, ptr noundef %arrayidx2693, ptr noundef @c__1)
  br label %for.inc2695

for.inc2695:                                      ; preds = %for.body2684
  %2231 = load i32, ptr %p, align 4
  %inc2696 = add nsw i32 %2231, 1
  store i32 %inc2696, ptr %p, align 4
  br label %for.cond2681, !llvm.loop !24

for.end2697:                                      ; preds = %for.cond2681
  br label %if.end2698

if.end2698:                                       ; preds = %for.end2697, %lor.lhs.false2678
  %2232 = load i32, ptr %rsvec, align 4
  %tobool2699 = icmp ne i32 %2232, 0
  br i1 %tobool2699, label %if.then2700, label %if.end2737

if.then2700:                                      ; preds = %if.end2698
  %2233 = load i32, ptr %applv, align 4
  %tobool2701 = icmp ne i32 %2233, 0
  br i1 %tobool2701, label %if.then2702, label %if.else2717

if.then2702:                                      ; preds = %if.then2700
  %2234 = load ptr, ptr %n.addr, align 8
  %2235 = load i32, ptr %2234, align 4
  store i32 %2235, ptr %i__1, align 4
  store i32 1, ptr %p, align 4
  br label %for.cond2703

for.cond2703:                                     ; preds = %for.inc2714, %if.then2702
  %2236 = load i32, ptr %p, align 4
  %2237 = load i32, ptr %i__1, align 4
  %cmp2704 = icmp sle i32 %2236, %2237
  br i1 %cmp2704, label %for.body2706, label %for.end2716

for.body2706:                                     ; preds = %for.cond2703
  %2238 = load ptr, ptr %work.addr, align 8
  %2239 = load i32, ptr %p, align 4
  %idxprom2707 = sext i32 %2239 to i64
  %arrayidx2708 = getelementptr inbounds double, ptr %2238, i64 %idxprom2707
  %2240 = load ptr, ptr %v.addr, align 8
  %2241 = load i32, ptr %p, align 4
  %2242 = load i32, ptr %v_dim1, align 4
  %mul2709 = mul nsw i32 %2241, %2242
  %add2710 = add nsw i32 %mul2709, 1
  %idxprom2711 = sext i32 %add2710 to i64
  %arrayidx2712 = getelementptr inbounds double, ptr %2240, i64 %idxprom2711
  %call2713 = call i32 @dscal_(ptr noundef %mvl, ptr noundef %arrayidx2708, ptr noundef %arrayidx2712, ptr noundef @c__1)
  br label %for.inc2714

for.inc2714:                                      ; preds = %for.body2706
  %2243 = load i32, ptr %p, align 4
  %inc2715 = add nsw i32 %2243, 1
  store i32 %inc2715, ptr %p, align 4
  br label %for.cond2703, !llvm.loop !25

for.end2716:                                      ; preds = %for.cond2703
  br label %if.end2736

if.else2717:                                      ; preds = %if.then2700
  %2244 = load ptr, ptr %n.addr, align 8
  %2245 = load i32, ptr %2244, align 4
  store i32 %2245, ptr %i__1, align 4
  store i32 1, ptr %p, align 4
  br label %for.cond2718

for.cond2718:                                     ; preds = %for.inc2733, %if.else2717
  %2246 = load i32, ptr %p, align 4
  %2247 = load i32, ptr %i__1, align 4
  %cmp2719 = icmp sle i32 %2246, %2247
  br i1 %cmp2719, label %for.body2721, label %for.end2735

for.body2721:                                     ; preds = %for.cond2718
  %2248 = load ptr, ptr %v.addr, align 8
  %2249 = load i32, ptr %p, align 4
  %2250 = load i32, ptr %v_dim1, align 4
  %mul2722 = mul nsw i32 %2249, %2250
  %add2723 = add nsw i32 %mul2722, 1
  %idxprom2724 = sext i32 %add2723 to i64
  %arrayidx2725 = getelementptr inbounds double, ptr %2248, i64 %idxprom2724
  %call2726 = call double @dnrm2_(ptr noundef %mvl, ptr noundef %arrayidx2725, ptr noundef @c__1)
  %div2727 = fdiv double 1.000000e+00, %call2726
  store double %div2727, ptr %temp1, align 8
  %2251 = load ptr, ptr %v.addr, align 8
  %2252 = load i32, ptr %p, align 4
  %2253 = load i32, ptr %v_dim1, align 4
  %mul2728 = mul nsw i32 %2252, %2253
  %add2729 = add nsw i32 %mul2728, 1
  %idxprom2730 = sext i32 %add2729 to i64
  %arrayidx2731 = getelementptr inbounds double, ptr %2251, i64 %idxprom2730
  %call2732 = call i32 @dscal_(ptr noundef %mvl, ptr noundef %temp1, ptr noundef %arrayidx2731, ptr noundef @c__1)
  br label %for.inc2733

for.inc2733:                                      ; preds = %for.body2721
  %2254 = load i32, ptr %p, align 4
  %inc2734 = add nsw i32 %2254, 1
  store i32 %inc2734, ptr %p, align 4
  br label %for.cond2718, !llvm.loop !26

for.end2735:                                      ; preds = %for.cond2718
  br label %if.end2736

if.end2736:                                       ; preds = %for.end2735, %for.end2716
  br label %if.end2737

if.end2737:                                       ; preds = %if.end2736, %if.end2698
  %2255 = load double, ptr %skl, align 8
  %cmp2738 = fcmp ogt double %2255, 1.000000e+00
  br i1 %cmp2738, label %land.lhs.true2740, label %lor.lhs.false2745

land.lhs.true2740:                                ; preds = %if.end2737
  %2256 = load ptr, ptr %sva.addr, align 8
  %arrayidx2741 = getelementptr inbounds double, ptr %2256, i64 1
  %2257 = load double, ptr %arrayidx2741, align 8
  %2258 = load double, ptr %big, align 8
  %2259 = load double, ptr %skl, align 8
  %div2742 = fdiv double %2258, %2259
  %cmp2743 = fcmp olt double %2257, %div2742
  br i1 %cmp2743, label %if.then2760, label %lor.lhs.false2745

lor.lhs.false2745:                                ; preds = %land.lhs.true2740, %if.end2737
  %2260 = load double, ptr %skl, align 8
  %cmp2746 = fcmp olt double %2260, 1.000000e+00
  br i1 %cmp2746, label %land.lhs.true2748, label %if.end2773

land.lhs.true2748:                                ; preds = %lor.lhs.false2745
  %2261 = load ptr, ptr %sva.addr, align 8
  %2262 = load i32, ptr %n2, align 4
  %cmp2749 = icmp sge i32 %2262, 1
  br i1 %cmp2749, label %cond.true2751, label %cond.false2752

cond.true2751:                                    ; preds = %land.lhs.true2748
  %2263 = load i32, ptr %n2, align 4
  br label %cond.end2753

cond.false2752:                                   ; preds = %land.lhs.true2748
  br label %cond.end2753

cond.end2753:                                     ; preds = %cond.false2752, %cond.true2751
  %cond2754 = phi i32 [ %2263, %cond.true2751 ], [ 1, %cond.false2752 ]
  %idxprom2755 = sext i32 %cond2754 to i64
  %arrayidx2756 = getelementptr inbounds double, ptr %2261, i64 %idxprom2755
  %2264 = load double, ptr %arrayidx2756, align 8
  %2265 = load double, ptr %sfmin, align 8
  %2266 = load double, ptr %skl, align 8
  %div2757 = fdiv double %2265, %2266
  %cmp2758 = fcmp ogt double %2264, %div2757
  br i1 %cmp2758, label %if.then2760, label %if.end2773

if.then2760:                                      ; preds = %cond.end2753, %land.lhs.true2740
  %2267 = load ptr, ptr %n.addr, align 8
  %2268 = load i32, ptr %2267, align 4
  store i32 %2268, ptr %i__1, align 4
  store i32 1, ptr %p, align 4
  br label %for.cond2761

for.cond2761:                                     ; preds = %for.inc2770, %if.then2760
  %2269 = load i32, ptr %p, align 4
  %2270 = load i32, ptr %i__1, align 4
  %cmp2762 = icmp sle i32 %2269, %2270
  br i1 %cmp2762, label %for.body2764, label %for.end2772

for.body2764:                                     ; preds = %for.cond2761
  %2271 = load double, ptr %skl, align 8
  %2272 = load ptr, ptr %sva.addr, align 8
  %2273 = load i32, ptr %p, align 4
  %idxprom2765 = sext i32 %2273 to i64
  %arrayidx2766 = getelementptr inbounds double, ptr %2272, i64 %idxprom2765
  %2274 = load double, ptr %arrayidx2766, align 8
  %mul2767 = fmul double %2271, %2274
  %2275 = load ptr, ptr %sva.addr, align 8
  %2276 = load i32, ptr %p, align 4
  %idxprom2768 = sext i32 %2276 to i64
  %arrayidx2769 = getelementptr inbounds double, ptr %2275, i64 %idxprom2768
  store double %mul2767, ptr %arrayidx2769, align 8
  br label %for.inc2770

for.inc2770:                                      ; preds = %for.body2764
  %2277 = load i32, ptr %p, align 4
  %inc2771 = add nsw i32 %2277, 1
  store i32 %inc2771, ptr %p, align 4
  br label %for.cond2761, !llvm.loop !27

for.end2772:                                      ; preds = %for.cond2761
  store double 1.000000e+00, ptr %skl, align 8
  br label %if.end2773

if.end2773:                                       ; preds = %for.end2772, %cond.end2753, %lor.lhs.false2745
  %2278 = load double, ptr %skl, align 8
  %2279 = load ptr, ptr %work.addr, align 8
  %arrayidx2774 = getelementptr inbounds double, ptr %2279, i64 1
  store double %2278, ptr %arrayidx2774, align 8
  %2280 = load i32, ptr %n4, align 4
  %conv2775 = sitofp i32 %2280 to double
  %2281 = load ptr, ptr %work.addr, align 8
  %arrayidx2776 = getelementptr inbounds double, ptr %2281, i64 2
  store double %conv2775, ptr %arrayidx2776, align 8
  %2282 = load i32, ptr %n2, align 4
  %conv2777 = sitofp i32 %2282 to double
  %2283 = load ptr, ptr %work.addr, align 8
  %arrayidx2778 = getelementptr inbounds double, ptr %2283, i64 3
  store double %conv2777, ptr %arrayidx2778, align 8
  %2284 = load i32, ptr %i__, align 4
  %conv2779 = sitofp i32 %2284 to double
  %2285 = load ptr, ptr %work.addr, align 8
  %arrayidx2780 = getelementptr inbounds double, ptr %2285, i64 4
  store double %conv2779, ptr %arrayidx2780, align 8
  %2286 = load double, ptr %mxaapq, align 8
  %2287 = load ptr, ptr %work.addr, align 8
  %arrayidx2781 = getelementptr inbounds double, ptr %2287, i64 5
  store double %2286, ptr %arrayidx2781, align 8
  %2288 = load double, ptr %mxsinj, align 8
  %2289 = load ptr, ptr %work.addr, align 8
  %arrayidx2782 = getelementptr inbounds double, ptr %2289, i64 6
  store double %2288, ptr %arrayidx2782, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end2773, %if.end348, %if.end320, %if.then241, %if.then192, %if.then144, %if.then111, %if.then78, %if.then72
  %2290 = load i32, ptr %retval, align 4
  ret i32 %2290
}

declare i32 @lsame_(ptr noundef, ptr noundef) #1

declare i32 @xerbla_(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
declare double @sqrt(double noundef) #2

declare double @dlamch_(ptr noundef) #1

declare i32 @dlaset_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @dlassq_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @dlascl_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @dgsvj0_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @dgsvj1_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @idamax_(ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @dswap_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare double @dnrm2_(ptr noundef, ptr noundef, ptr noundef) #1

declare double @ddot_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @dcopy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @drotm_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

declare double @d_sign(ptr noundef, ptr noundef) #1

declare i32 @daxpy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @dscal_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

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
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6}
!14 = distinct !{!14, !6}
!15 = distinct !{!15, !6}
!16 = distinct !{!16, !6}
!17 = distinct !{!17, !6}
!18 = distinct !{!18, !6}
!19 = distinct !{!19, !6}
!20 = distinct !{!20, !6}
!21 = distinct !{!21, !6}
!22 = distinct !{!22, !6}
!23 = distinct !{!23, !6}
!24 = distinct !{!24, !6}
!25 = distinct !{!25, !6}
!26 = distinct !{!26, !6}
!27 = distinct !{!27, !6}

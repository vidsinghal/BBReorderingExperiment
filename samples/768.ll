; ModuleID = 'samples/768.bc'
source_filename = "/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/map/lapack2flamec/f2c/c/zunmqr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.doublecomplex = type { double, double }

@.str = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@c__1 = internal global i32 1, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"ZUNMQR\00", align 1
@c_n1 = internal global i32 -1, align 4
@c__2 = internal global i32 2, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"Forward\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"Columnwise\00", align 1
@c__65 = internal global i32 65, align 4

; Function Attrs: noinline nounwind optnone uwtable
define i32 @zunmqr_(ptr noundef %side, ptr noundef %trans, ptr noundef %m, ptr noundef %n, ptr noundef %k, ptr noundef %a, ptr noundef %lda, ptr noundef %tau, ptr noundef %c__, ptr noundef %ldc, ptr noundef %work, ptr noundef %lwork, ptr noundef %info) #0 {
entry:
  %retval = alloca i32, align 4
  %side.addr = alloca ptr, align 8
  %trans.addr = alloca ptr, align 8
  %m.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %k.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %lda.addr = alloca ptr, align 8
  %tau.addr = alloca ptr, align 8
  %c__.addr = alloca ptr, align 8
  %ldc.addr = alloca ptr, align 8
  %work.addr = alloca ptr, align 8
  %lwork.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %a_dim1 = alloca i32, align 4
  %a_offset = alloca i32, align 4
  %c_dim1 = alloca i32, align 4
  %c_offset = alloca i32, align 4
  %i__1 = alloca i32, align 4
  %i__2 = alloca i32, align 4
  %i__4 = alloca i32, align 4
  %i__5 = alloca i32, align 4
  %ch__1 = alloca [2 x i8], align 1
  %i__ = alloca i32, align 4
  %t = alloca [4160 x %struct.doublecomplex], align 16
  %i1 = alloca i32, align 4
  %i2 = alloca i32, align 4
  %i3 = alloca i32, align 4
  %ib = alloca i32, align 4
  %ic = alloca i32, align 4
  %jc = alloca i32, align 4
  %nb = alloca i32, align 4
  %mi = alloca i32, align 4
  %ni = alloca i32, align 4
  %nq = alloca i32, align 4
  %nw = alloca i32, align 4
  %iws = alloca i32, align 4
  %left = alloca i32, align 4
  %nbmin = alloca i32, align 4
  %iinfo = alloca i32, align 4
  %notran = alloca i32, align 4
  %ldwork = alloca i32, align 4
  %lwkopt = alloca i32, align 4
  %lquery = alloca i32, align 4
  store ptr %side, ptr %side.addr, align 8
  store ptr %trans, ptr %trans.addr, align 8
  store ptr %m, ptr %m.addr, align 8
  store ptr %n, ptr %n.addr, align 8
  store ptr %k, ptr %k.addr, align 8
  store ptr %a, ptr %a.addr, align 8
  store ptr %lda, ptr %lda.addr, align 8
  store ptr %tau, ptr %tau.addr, align 8
  store ptr %c__, ptr %c__.addr, align 8
  store ptr %ldc, ptr %ldc.addr, align 8
  store ptr %work, ptr %work.addr, align 8
  store ptr %lwork, ptr %lwork.addr, align 8
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
  %5 = load ptr, ptr %tau.addr, align 8
  %incdec.ptr = getelementptr inbounds %struct.doublecomplex, ptr %5, i32 -1
  store ptr %incdec.ptr, ptr %tau.addr, align 8
  %6 = load ptr, ptr %ldc.addr, align 8
  %7 = load i32, ptr %6, align 4
  store i32 %7, ptr %c_dim1, align 4
  %8 = load i32, ptr %c_dim1, align 4
  %add1 = add nsw i32 1, %8
  store i32 %add1, ptr %c_offset, align 4
  %9 = load i32, ptr %c_offset, align 4
  %10 = load ptr, ptr %c__.addr, align 8
  %idx.ext2 = sext i32 %9 to i64
  %idx.neg3 = sub i64 0, %idx.ext2
  %add.ptr4 = getelementptr inbounds %struct.doublecomplex, ptr %10, i64 %idx.neg3
  store ptr %add.ptr4, ptr %c__.addr, align 8
  %11 = load ptr, ptr %work.addr, align 8
  %incdec.ptr5 = getelementptr inbounds %struct.doublecomplex, ptr %11, i32 -1
  store ptr %incdec.ptr5, ptr %work.addr, align 8
  %12 = load ptr, ptr %info.addr, align 8
  store i32 0, ptr %12, align 4
  %13 = load ptr, ptr %side.addr, align 8
  %call = call i32 @lsame_(ptr noundef %13, ptr noundef @.str)
  store i32 %call, ptr %left, align 4
  %14 = load ptr, ptr %trans.addr, align 8
  %call6 = call i32 @lsame_(ptr noundef %14, ptr noundef @.str.1)
  store i32 %call6, ptr %notran, align 4
  %15 = load ptr, ptr %lwork.addr, align 8
  %16 = load i32, ptr %15, align 4
  %cmp = icmp eq i32 %16, -1
  %conv = zext i1 %cmp to i32
  store i32 %conv, ptr %lquery, align 4
  %17 = load i32, ptr %left, align 4
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %18 = load ptr, ptr %m.addr, align 8
  %19 = load i32, ptr %18, align 4
  store i32 %19, ptr %nq, align 4
  %20 = load ptr, ptr %n.addr, align 8
  %21 = load i32, ptr %20, align 4
  store i32 %21, ptr %nw, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %22 = load ptr, ptr %n.addr, align 8
  %23 = load i32, ptr %22, align 4
  store i32 %23, ptr %nq, align 4
  %24 = load ptr, ptr %m.addr, align 8
  %25 = load i32, ptr %24, align 4
  store i32 %25, ptr %nw, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %26 = load i32, ptr %left, align 4
  %tobool7 = icmp ne i32 %26, 0
  br i1 %tobool7, label %if.else11, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %27 = load ptr, ptr %side.addr, align 8
  %call8 = call i32 @lsame_(ptr noundef %27, ptr noundef @.str.2)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.else11, label %if.then10

if.then10:                                        ; preds = %land.lhs.true
  %28 = load ptr, ptr %info.addr, align 8
  store i32 -1, ptr %28, align 4
  br label %if.end66

if.else11:                                        ; preds = %land.lhs.true, %if.end
  %29 = load i32, ptr %notran, align 4
  %tobool12 = icmp ne i32 %29, 0
  br i1 %tobool12, label %if.else17, label %land.lhs.true13

land.lhs.true13:                                  ; preds = %if.else11
  %30 = load ptr, ptr %trans.addr, align 8
  %call14 = call i32 @lsame_(ptr noundef %30, ptr noundef @.str.3)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.else17, label %if.then16

if.then16:                                        ; preds = %land.lhs.true13
  %31 = load ptr, ptr %info.addr, align 8
  store i32 -2, ptr %31, align 4
  br label %if.end65

if.else17:                                        ; preds = %land.lhs.true13, %if.else11
  %32 = load ptr, ptr %m.addr, align 8
  %33 = load i32, ptr %32, align 4
  %cmp18 = icmp slt i32 %33, 0
  br i1 %cmp18, label %if.then20, label %if.else21

if.then20:                                        ; preds = %if.else17
  %34 = load ptr, ptr %info.addr, align 8
  store i32 -3, ptr %34, align 4
  br label %if.end64

if.else21:                                        ; preds = %if.else17
  %35 = load ptr, ptr %n.addr, align 8
  %36 = load i32, ptr %35, align 4
  %cmp22 = icmp slt i32 %36, 0
  br i1 %cmp22, label %if.then24, label %if.else25

if.then24:                                        ; preds = %if.else21
  %37 = load ptr, ptr %info.addr, align 8
  store i32 -4, ptr %37, align 4
  br label %if.end63

if.else25:                                        ; preds = %if.else21
  %38 = load ptr, ptr %k.addr, align 8
  %39 = load i32, ptr %38, align 4
  %cmp26 = icmp slt i32 %39, 0
  br i1 %cmp26, label %if.then30, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else25
  %40 = load ptr, ptr %k.addr, align 8
  %41 = load i32, ptr %40, align 4
  %42 = load i32, ptr %nq, align 4
  %cmp28 = icmp sgt i32 %41, %42
  br i1 %cmp28, label %if.then30, label %if.else31

if.then30:                                        ; preds = %lor.lhs.false, %if.else25
  %43 = load ptr, ptr %info.addr, align 8
  store i32 -5, ptr %43, align 4
  br label %if.end62

if.else31:                                        ; preds = %lor.lhs.false
  %44 = load ptr, ptr %lda.addr, align 8
  %45 = load i32, ptr %44, align 4
  %46 = load i32, ptr %nq, align 4
  %cmp32 = icmp sge i32 1, %46
  br i1 %cmp32, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else31
  br label %cond.end

cond.false:                                       ; preds = %if.else31
  %47 = load i32, ptr %nq, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %47, %cond.false ]
  %cmp34 = icmp slt i32 %45, %cond
  br i1 %cmp34, label %if.then36, label %if.else37

if.then36:                                        ; preds = %cond.end
  %48 = load ptr, ptr %info.addr, align 8
  store i32 -7, ptr %48, align 4
  br label %if.end61

if.else37:                                        ; preds = %cond.end
  %49 = load ptr, ptr %ldc.addr, align 8
  %50 = load i32, ptr %49, align 4
  %51 = load ptr, ptr %m.addr, align 8
  %52 = load i32, ptr %51, align 4
  %cmp38 = icmp sge i32 1, %52
  br i1 %cmp38, label %cond.true40, label %cond.false41

cond.true40:                                      ; preds = %if.else37
  br label %cond.end42

cond.false41:                                     ; preds = %if.else37
  %53 = load ptr, ptr %m.addr, align 8
  %54 = load i32, ptr %53, align 4
  br label %cond.end42

cond.end42:                                       ; preds = %cond.false41, %cond.true40
  %cond43 = phi i32 [ 1, %cond.true40 ], [ %54, %cond.false41 ]
  %cmp44 = icmp slt i32 %50, %cond43
  br i1 %cmp44, label %if.then46, label %if.else47

if.then46:                                        ; preds = %cond.end42
  %55 = load ptr, ptr %info.addr, align 8
  store i32 -10, ptr %55, align 4
  br label %if.end60

if.else47:                                        ; preds = %cond.end42
  %56 = load ptr, ptr %lwork.addr, align 8
  %57 = load i32, ptr %56, align 4
  %58 = load i32, ptr %nw, align 4
  %cmp48 = icmp sge i32 1, %58
  br i1 %cmp48, label %cond.true50, label %cond.false51

cond.true50:                                      ; preds = %if.else47
  br label %cond.end52

cond.false51:                                     ; preds = %if.else47
  %59 = load i32, ptr %nw, align 4
  br label %cond.end52

cond.end52:                                       ; preds = %cond.false51, %cond.true50
  %cond53 = phi i32 [ 1, %cond.true50 ], [ %59, %cond.false51 ]
  %cmp54 = icmp slt i32 %57, %cond53
  br i1 %cmp54, label %land.lhs.true56, label %if.end59

land.lhs.true56:                                  ; preds = %cond.end52
  %60 = load i32, ptr %lquery, align 4
  %tobool57 = icmp ne i32 %60, 0
  br i1 %tobool57, label %if.end59, label %if.then58

if.then58:                                        ; preds = %land.lhs.true56
  %61 = load ptr, ptr %info.addr, align 8
  store i32 -12, ptr %61, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.then58, %land.lhs.true56, %cond.end52
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %if.then46
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %if.then36
  br label %if.end62

if.end62:                                         ; preds = %if.end61, %if.then30
  br label %if.end63

if.end63:                                         ; preds = %if.end62, %if.then24
  br label %if.end64

if.end64:                                         ; preds = %if.end63, %if.then20
  br label %if.end65

if.end65:                                         ; preds = %if.end64, %if.then16
  br label %if.end66

if.end66:                                         ; preds = %if.end65, %if.then10
  %62 = load ptr, ptr %info.addr, align 8
  %63 = load i32, ptr %62, align 4
  %cmp67 = icmp eq i32 %63, 0
  br i1 %cmp67, label %if.then69, label %if.end85

if.then69:                                        ; preds = %if.end66
  store i32 64, ptr %i__1, align 4
  %arraydecay = getelementptr inbounds [2 x i8], ptr %ch__1, i64 0, i64 0
  %64 = load ptr, ptr %m.addr, align 8
  %65 = load ptr, ptr %n.addr, align 8
  %66 = load ptr, ptr %k.addr, align 8
  %call70 = call i32 @ilaenv_(ptr noundef @c__1, ptr noundef @.str.4, ptr noundef %arraydecay, ptr noundef %64, ptr noundef %65, ptr noundef %66, ptr noundef @c_n1)
  store i32 %call70, ptr %i__2, align 4
  %67 = load i32, ptr %i__1, align 4
  %68 = load i32, ptr %i__2, align 4
  %cmp71 = icmp sle i32 %67, %68
  br i1 %cmp71, label %cond.true73, label %cond.false74

cond.true73:                                      ; preds = %if.then69
  %69 = load i32, ptr %i__1, align 4
  br label %cond.end75

cond.false74:                                     ; preds = %if.then69
  %70 = load i32, ptr %i__2, align 4
  br label %cond.end75

cond.end75:                                       ; preds = %cond.false74, %cond.true73
  %cond76 = phi i32 [ %69, %cond.true73 ], [ %70, %cond.false74 ]
  store i32 %cond76, ptr %nb, align 4
  %71 = load i32, ptr %nw, align 4
  %cmp77 = icmp sge i32 1, %71
  br i1 %cmp77, label %cond.true79, label %cond.false80

cond.true79:                                      ; preds = %cond.end75
  br label %cond.end81

cond.false80:                                     ; preds = %cond.end75
  %72 = load i32, ptr %nw, align 4
  br label %cond.end81

cond.end81:                                       ; preds = %cond.false80, %cond.true79
  %cond82 = phi i32 [ 1, %cond.true79 ], [ %72, %cond.false80 ]
  %73 = load i32, ptr %nb, align 4
  %mul = mul nsw i32 %cond82, %73
  store i32 %mul, ptr %lwkopt, align 4
  %74 = load i32, ptr %lwkopt, align 4
  %conv83 = sitofp i32 %74 to double
  %75 = load ptr, ptr %work.addr, align 8
  %arrayidx = getelementptr inbounds %struct.doublecomplex, ptr %75, i64 1
  %r = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx, i32 0, i32 0
  store double %conv83, ptr %r, align 8
  %76 = load ptr, ptr %work.addr, align 8
  %arrayidx84 = getelementptr inbounds %struct.doublecomplex, ptr %76, i64 1
  %i = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx84, i32 0, i32 1
  store double 0.000000e+00, ptr %i, align 8
  br label %if.end85

if.end85:                                         ; preds = %cond.end81, %if.end66
  %77 = load ptr, ptr %info.addr, align 8
  %78 = load i32, ptr %77, align 4
  %cmp86 = icmp ne i32 %78, 0
  br i1 %cmp86, label %if.then88, label %if.else90

if.then88:                                        ; preds = %if.end85
  %79 = load ptr, ptr %info.addr, align 8
  %80 = load i32, ptr %79, align 4
  %sub = sub nsw i32 0, %80
  store i32 %sub, ptr %i__1, align 4
  %call89 = call i32 @xerbla_(ptr noundef @.str.4, ptr noundef %i__1)
  store i32 0, ptr %retval, align 4
  br label %return

if.else90:                                        ; preds = %if.end85
  %81 = load i32, ptr %lquery, align 4
  %tobool91 = icmp ne i32 %81, 0
  br i1 %tobool91, label %if.then92, label %if.end93

if.then92:                                        ; preds = %if.else90
  store i32 0, ptr %retval, align 4
  br label %return

if.end93:                                         ; preds = %if.else90
  br label %if.end94

if.end94:                                         ; preds = %if.end93
  %82 = load ptr, ptr %m.addr, align 8
  %83 = load i32, ptr %82, align 4
  %cmp95 = icmp eq i32 %83, 0
  br i1 %cmp95, label %if.then103, label %lor.lhs.false97

lor.lhs.false97:                                  ; preds = %if.end94
  %84 = load ptr, ptr %n.addr, align 8
  %85 = load i32, ptr %84, align 4
  %cmp98 = icmp eq i32 %85, 0
  br i1 %cmp98, label %if.then103, label %lor.lhs.false100

lor.lhs.false100:                                 ; preds = %lor.lhs.false97
  %86 = load ptr, ptr %k.addr, align 8
  %87 = load i32, ptr %86, align 4
  %cmp101 = icmp eq i32 %87, 0
  br i1 %cmp101, label %if.then103, label %if.end108

if.then103:                                       ; preds = %lor.lhs.false100, %lor.lhs.false97, %if.end94
  %88 = load ptr, ptr %work.addr, align 8
  %arrayidx104 = getelementptr inbounds %struct.doublecomplex, ptr %88, i64 1
  %r105 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx104, i32 0, i32 0
  store double 1.000000e+00, ptr %r105, align 8
  %89 = load ptr, ptr %work.addr, align 8
  %arrayidx106 = getelementptr inbounds %struct.doublecomplex, ptr %89, i64 1
  %i107 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx106, i32 0, i32 1
  store double 0.000000e+00, ptr %i107, align 8
  store i32 0, ptr %retval, align 4
  br label %return

if.end108:                                        ; preds = %lor.lhs.false100
  store i32 2, ptr %nbmin, align 4
  %90 = load i32, ptr %nw, align 4
  store i32 %90, ptr %ldwork, align 4
  %91 = load i32, ptr %nb, align 4
  %cmp109 = icmp sgt i32 %91, 1
  br i1 %cmp109, label %land.lhs.true111, label %if.else128

land.lhs.true111:                                 ; preds = %if.end108
  %92 = load i32, ptr %nb, align 4
  %93 = load ptr, ptr %k.addr, align 8
  %94 = load i32, ptr %93, align 4
  %cmp112 = icmp slt i32 %92, %94
  br i1 %cmp112, label %if.then114, label %if.else128

if.then114:                                       ; preds = %land.lhs.true111
  %95 = load i32, ptr %nw, align 4
  %96 = load i32, ptr %nb, align 4
  %mul115 = mul nsw i32 %95, %96
  store i32 %mul115, ptr %iws, align 4
  %97 = load ptr, ptr %lwork.addr, align 8
  %98 = load i32, ptr %97, align 4
  %99 = load i32, ptr %iws, align 4
  %cmp116 = icmp slt i32 %98, %99
  br i1 %cmp116, label %if.then118, label %if.end127

if.then118:                                       ; preds = %if.then114
  %100 = load ptr, ptr %lwork.addr, align 8
  %101 = load i32, ptr %100, align 4
  %102 = load i32, ptr %ldwork, align 4
  %div = sdiv i32 %101, %102
  store i32 %div, ptr %nb, align 4
  store i32 2, ptr %i__1, align 4
  %arraydecay119 = getelementptr inbounds [2 x i8], ptr %ch__1, i64 0, i64 0
  %103 = load ptr, ptr %m.addr, align 8
  %104 = load ptr, ptr %n.addr, align 8
  %105 = load ptr, ptr %k.addr, align 8
  %call120 = call i32 @ilaenv_(ptr noundef @c__2, ptr noundef @.str.4, ptr noundef %arraydecay119, ptr noundef %103, ptr noundef %104, ptr noundef %105, ptr noundef @c_n1)
  store i32 %call120, ptr %i__2, align 4
  %106 = load i32, ptr %i__1, align 4
  %107 = load i32, ptr %i__2, align 4
  %cmp121 = icmp sge i32 %106, %107
  br i1 %cmp121, label %cond.true123, label %cond.false124

cond.true123:                                     ; preds = %if.then118
  %108 = load i32, ptr %i__1, align 4
  br label %cond.end125

cond.false124:                                    ; preds = %if.then118
  %109 = load i32, ptr %i__2, align 4
  br label %cond.end125

cond.end125:                                      ; preds = %cond.false124, %cond.true123
  %cond126 = phi i32 [ %108, %cond.true123 ], [ %109, %cond.false124 ]
  store i32 %cond126, ptr %nbmin, align 4
  br label %if.end127

if.end127:                                        ; preds = %cond.end125, %if.then114
  br label %if.end129

if.else128:                                       ; preds = %land.lhs.true111, %if.end108
  %110 = load i32, ptr %nw, align 4
  store i32 %110, ptr %iws, align 4
  br label %if.end129

if.end129:                                        ; preds = %if.else128, %if.end127
  %111 = load i32, ptr %nb, align 4
  %112 = load i32, ptr %nbmin, align 4
  %cmp130 = icmp slt i32 %111, %112
  br i1 %cmp130, label %if.then135, label %lor.lhs.false132

lor.lhs.false132:                                 ; preds = %if.end129
  %113 = load i32, ptr %nb, align 4
  %114 = load ptr, ptr %k.addr, align 8
  %115 = load i32, ptr %114, align 4
  %cmp133 = icmp sge i32 %113, %115
  br i1 %cmp133, label %if.then135, label %if.else142

if.then135:                                       ; preds = %lor.lhs.false132, %if.end129
  %116 = load ptr, ptr %side.addr, align 8
  %117 = load ptr, ptr %trans.addr, align 8
  %118 = load ptr, ptr %m.addr, align 8
  %119 = load ptr, ptr %n.addr, align 8
  %120 = load ptr, ptr %k.addr, align 8
  %121 = load ptr, ptr %a.addr, align 8
  %122 = load i32, ptr %a_offset, align 4
  %idxprom = sext i32 %122 to i64
  %arrayidx136 = getelementptr inbounds %struct.doublecomplex, ptr %121, i64 %idxprom
  %123 = load ptr, ptr %lda.addr, align 8
  %124 = load ptr, ptr %tau.addr, align 8
  %arrayidx137 = getelementptr inbounds %struct.doublecomplex, ptr %124, i64 1
  %125 = load ptr, ptr %c__.addr, align 8
  %126 = load i32, ptr %c_offset, align 4
  %idxprom138 = sext i32 %126 to i64
  %arrayidx139 = getelementptr inbounds %struct.doublecomplex, ptr %125, i64 %idxprom138
  %127 = load ptr, ptr %ldc.addr, align 8
  %128 = load ptr, ptr %work.addr, align 8
  %arrayidx140 = getelementptr inbounds %struct.doublecomplex, ptr %128, i64 1
  %call141 = call i32 @zunm2r_(ptr noundef %116, ptr noundef %117, ptr noundef %118, ptr noundef %119, ptr noundef %120, ptr noundef %arrayidx136, ptr noundef %123, ptr noundef %arrayidx137, ptr noundef %arrayidx139, ptr noundef %127, ptr noundef %arrayidx140, ptr noundef %iinfo)
  br label %if.end211

if.else142:                                       ; preds = %lor.lhs.false132
  %129 = load i32, ptr %left, align 4
  %tobool143 = icmp ne i32 %129, 0
  br i1 %tobool143, label %land.lhs.true144, label %lor.lhs.false146

land.lhs.true144:                                 ; preds = %if.else142
  %130 = load i32, ptr %notran, align 4
  %tobool145 = icmp ne i32 %130, 0
  br i1 %tobool145, label %lor.lhs.false146, label %if.then150

lor.lhs.false146:                                 ; preds = %land.lhs.true144, %if.else142
  %131 = load i32, ptr %left, align 4
  %tobool147 = icmp ne i32 %131, 0
  br i1 %tobool147, label %if.else151, label %land.lhs.true148

land.lhs.true148:                                 ; preds = %lor.lhs.false146
  %132 = load i32, ptr %notran, align 4
  %tobool149 = icmp ne i32 %132, 0
  br i1 %tobool149, label %if.then150, label %if.else151

if.then150:                                       ; preds = %land.lhs.true148, %land.lhs.true144
  store i32 1, ptr %i1, align 4
  %133 = load ptr, ptr %k.addr, align 8
  %134 = load i32, ptr %133, align 4
  store i32 %134, ptr %i2, align 4
  %135 = load i32, ptr %nb, align 4
  store i32 %135, ptr %i3, align 4
  br label %if.end157

if.else151:                                       ; preds = %land.lhs.true148, %lor.lhs.false146
  %136 = load ptr, ptr %k.addr, align 8
  %137 = load i32, ptr %136, align 4
  %sub152 = sub nsw i32 %137, 1
  %138 = load i32, ptr %nb, align 4
  %div153 = sdiv i32 %sub152, %138
  %139 = load i32, ptr %nb, align 4
  %mul154 = mul nsw i32 %div153, %139
  %add155 = add nsw i32 %mul154, 1
  store i32 %add155, ptr %i1, align 4
  store i32 1, ptr %i2, align 4
  %140 = load i32, ptr %nb, align 4
  %sub156 = sub nsw i32 0, %140
  store i32 %sub156, ptr %i3, align 4
  br label %if.end157

if.end157:                                        ; preds = %if.else151, %if.then150
  %141 = load i32, ptr %left, align 4
  %tobool158 = icmp ne i32 %141, 0
  br i1 %tobool158, label %if.then159, label %if.else160

if.then159:                                       ; preds = %if.end157
  %142 = load ptr, ptr %n.addr, align 8
  %143 = load i32, ptr %142, align 4
  store i32 %143, ptr %ni, align 4
  store i32 1, ptr %jc, align 4
  br label %if.end161

if.else160:                                       ; preds = %if.end157
  %144 = load ptr, ptr %m.addr, align 8
  %145 = load i32, ptr %144, align 4
  store i32 %145, ptr %mi, align 4
  store i32 1, ptr %ic, align 4
  br label %if.end161

if.end161:                                        ; preds = %if.else160, %if.then159
  %146 = load i32, ptr %i2, align 4
  store i32 %146, ptr %i__1, align 4
  %147 = load i32, ptr %i3, align 4
  store i32 %147, ptr %i__2, align 4
  %148 = load i32, ptr %i1, align 4
  store i32 %148, ptr %i__, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end161
  %149 = load i32, ptr %i__2, align 4
  %cmp162 = icmp slt i32 %149, 0
  br i1 %cmp162, label %cond.true164, label %cond.false167

cond.true164:                                     ; preds = %for.cond
  %150 = load i32, ptr %i__, align 4
  %151 = load i32, ptr %i__1, align 4
  %cmp165 = icmp sge i32 %150, %151
  %conv166 = zext i1 %cmp165 to i32
  br label %cond.end170

cond.false167:                                    ; preds = %for.cond
  %152 = load i32, ptr %i__, align 4
  %153 = load i32, ptr %i__1, align 4
  %cmp168 = icmp sle i32 %152, %153
  %conv169 = zext i1 %cmp168 to i32
  br label %cond.end170

cond.end170:                                      ; preds = %cond.false167, %cond.true164
  %cond171 = phi i32 [ %conv166, %cond.true164 ], [ %conv169, %cond.false167 ]
  %tobool172 = icmp ne i32 %cond171, 0
  br i1 %tobool172, label %for.body, label %for.end

for.body:                                         ; preds = %cond.end170
  %154 = load i32, ptr %nb, align 4
  store i32 %154, ptr %i__4, align 4
  %155 = load ptr, ptr %k.addr, align 8
  %156 = load i32, ptr %155, align 4
  %157 = load i32, ptr %i__, align 4
  %sub173 = sub nsw i32 %156, %157
  %add174 = add nsw i32 %sub173, 1
  store i32 %add174, ptr %i__5, align 4
  %158 = load i32, ptr %i__4, align 4
  %159 = load i32, ptr %i__5, align 4
  %cmp175 = icmp sle i32 %158, %159
  br i1 %cmp175, label %cond.true177, label %cond.false178

cond.true177:                                     ; preds = %for.body
  %160 = load i32, ptr %i__4, align 4
  br label %cond.end179

cond.false178:                                    ; preds = %for.body
  %161 = load i32, ptr %i__5, align 4
  br label %cond.end179

cond.end179:                                      ; preds = %cond.false178, %cond.true177
  %cond180 = phi i32 [ %160, %cond.true177 ], [ %161, %cond.false178 ]
  store i32 %cond180, ptr %ib, align 4
  %162 = load i32, ptr %nq, align 4
  %163 = load i32, ptr %i__, align 4
  %sub181 = sub nsw i32 %162, %163
  %add182 = add nsw i32 %sub181, 1
  store i32 %add182, ptr %i__4, align 4
  %164 = load ptr, ptr %a.addr, align 8
  %165 = load i32, ptr %i__, align 4
  %166 = load i32, ptr %i__, align 4
  %167 = load i32, ptr %a_dim1, align 4
  %mul183 = mul nsw i32 %166, %167
  %add184 = add nsw i32 %165, %mul183
  %idxprom185 = sext i32 %add184 to i64
  %arrayidx186 = getelementptr inbounds %struct.doublecomplex, ptr %164, i64 %idxprom185
  %168 = load ptr, ptr %lda.addr, align 8
  %169 = load ptr, ptr %tau.addr, align 8
  %170 = load i32, ptr %i__, align 4
  %idxprom187 = sext i32 %170 to i64
  %arrayidx188 = getelementptr inbounds %struct.doublecomplex, ptr %169, i64 %idxprom187
  %arraydecay189 = getelementptr inbounds [4160 x %struct.doublecomplex], ptr %t, i64 0, i64 0
  %call190 = call i32 @zlarft_(ptr noundef @.str.5, ptr noundef @.str.6, ptr noundef %i__4, ptr noundef %ib, ptr noundef %arrayidx186, ptr noundef %168, ptr noundef %arrayidx188, ptr noundef %arraydecay189, ptr noundef @c__65)
  %171 = load i32, ptr %left, align 4
  %tobool191 = icmp ne i32 %171, 0
  br i1 %tobool191, label %if.then192, label %if.else195

if.then192:                                       ; preds = %cond.end179
  %172 = load ptr, ptr %m.addr, align 8
  %173 = load i32, ptr %172, align 4
  %174 = load i32, ptr %i__, align 4
  %sub193 = sub nsw i32 %173, %174
  %add194 = add nsw i32 %sub193, 1
  store i32 %add194, ptr %mi, align 4
  %175 = load i32, ptr %i__, align 4
  store i32 %175, ptr %ic, align 4
  br label %if.end198

if.else195:                                       ; preds = %cond.end179
  %176 = load ptr, ptr %n.addr, align 8
  %177 = load i32, ptr %176, align 4
  %178 = load i32, ptr %i__, align 4
  %sub196 = sub nsw i32 %177, %178
  %add197 = add nsw i32 %sub196, 1
  store i32 %add197, ptr %ni, align 4
  %179 = load i32, ptr %i__, align 4
  store i32 %179, ptr %jc, align 4
  br label %if.end198

if.end198:                                        ; preds = %if.else195, %if.then192
  %180 = load ptr, ptr %side.addr, align 8
  %181 = load ptr, ptr %trans.addr, align 8
  %182 = load ptr, ptr %a.addr, align 8
  %183 = load i32, ptr %i__, align 4
  %184 = load i32, ptr %i__, align 4
  %185 = load i32, ptr %a_dim1, align 4
  %mul199 = mul nsw i32 %184, %185
  %add200 = add nsw i32 %183, %mul199
  %idxprom201 = sext i32 %add200 to i64
  %arrayidx202 = getelementptr inbounds %struct.doublecomplex, ptr %182, i64 %idxprom201
  %186 = load ptr, ptr %lda.addr, align 8
  %arraydecay203 = getelementptr inbounds [4160 x %struct.doublecomplex], ptr %t, i64 0, i64 0
  %187 = load ptr, ptr %c__.addr, align 8
  %188 = load i32, ptr %ic, align 4
  %189 = load i32, ptr %jc, align 4
  %190 = load i32, ptr %c_dim1, align 4
  %mul204 = mul nsw i32 %189, %190
  %add205 = add nsw i32 %188, %mul204
  %idxprom206 = sext i32 %add205 to i64
  %arrayidx207 = getelementptr inbounds %struct.doublecomplex, ptr %187, i64 %idxprom206
  %191 = load ptr, ptr %ldc.addr, align 8
  %192 = load ptr, ptr %work.addr, align 8
  %arrayidx208 = getelementptr inbounds %struct.doublecomplex, ptr %192, i64 1
  %call209 = call i32 @zlarfb_(ptr noundef %180, ptr noundef %181, ptr noundef @.str.5, ptr noundef @.str.6, ptr noundef %mi, ptr noundef %ni, ptr noundef %ib, ptr noundef %arrayidx202, ptr noundef %186, ptr noundef %arraydecay203, ptr noundef @c__65, ptr noundef %arrayidx207, ptr noundef %191, ptr noundef %arrayidx208, ptr noundef %ldwork)
  br label %for.inc

for.inc:                                          ; preds = %if.end198
  %193 = load i32, ptr %i__2, align 4
  %194 = load i32, ptr %i__, align 4
  %add210 = add nsw i32 %194, %193
  store i32 %add210, ptr %i__, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %cond.end170
  br label %if.end211

if.end211:                                        ; preds = %for.end, %if.then135
  %195 = load i32, ptr %lwkopt, align 4
  %conv212 = sitofp i32 %195 to double
  %196 = load ptr, ptr %work.addr, align 8
  %arrayidx213 = getelementptr inbounds %struct.doublecomplex, ptr %196, i64 1
  %r214 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx213, i32 0, i32 0
  store double %conv212, ptr %r214, align 8
  %197 = load ptr, ptr %work.addr, align 8
  %arrayidx215 = getelementptr inbounds %struct.doublecomplex, ptr %197, i64 1
  %i216 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx215, i32 0, i32 1
  store double 0.000000e+00, ptr %i216, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end211, %if.then103, %if.then92, %if.then88
  %198 = load i32, ptr %retval, align 4
  ret i32 %198
}

declare i32 @lsame_(ptr noundef, ptr noundef) #1

declare i32 @ilaenv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @xerbla_(ptr noundef, ptr noundef) #1

declare i32 @zunm2r_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @zlarft_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @zlarfb_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

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

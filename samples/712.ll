; ModuleID = 'samples/712.bc'
source_filename = "/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/map/lapack2flamec/f2c/flamec/gelq/cunglq_fla.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.complex = type { float, float }

@c__1 = internal global i32 1, align 4
@.str = private unnamed_addr constant [7 x i8] c"CUNGLQ\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@c_n1 = internal global i32 -1, align 4
@c__3 = internal global i32 3, align 4
@c__2 = internal global i32 2, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"Forward\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"Rowwise\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"Right\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"Conjugate transpose\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @cunglq_fla(ptr noundef %m, ptr noundef %n, ptr noundef %k, ptr noundef %a, ptr noundef %lda, ptr noundef %tau, ptr noundef %work, ptr noundef %lwork, ptr noundef %info) #0 {
entry:
  %retval = alloca i32, align 4
  %m.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %k.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %lda.addr = alloca ptr, align 8
  %tau.addr = alloca ptr, align 8
  %work.addr = alloca ptr, align 8
  %lwork.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %a_dim1 = alloca i32, align 4
  %a_offset = alloca i32, align 4
  %i__1 = alloca i32, align 4
  %i__2 = alloca i32, align 4
  %i__3 = alloca i32, align 4
  %i__4 = alloca i32, align 4
  %i__ = alloca i32, align 4
  %j = alloca i32, align 4
  %l = alloca i32, align 4
  %ib = alloca i32, align 4
  %nb = alloca i32, align 4
  %ki = alloca i32, align 4
  %kk = alloca i32, align 4
  %nx = alloca i32, align 4
  %iws = alloca i32, align 4
  %nbmin = alloca i32, align 4
  %iinfo = alloca i32, align 4
  %ldwork = alloca i32, align 4
  %lwkopt = alloca i32, align 4
  %lquery = alloca i32, align 4
  store ptr %m, ptr %m.addr, align 8
  store ptr %n, ptr %n.addr, align 8
  store ptr %k, ptr %k.addr, align 8
  store ptr %a, ptr %a.addr, align 8
  store ptr %lda, ptr %lda.addr, align 8
  store ptr %tau, ptr %tau.addr, align 8
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
  %add.ptr = getelementptr inbounds %struct.complex, ptr %4, i64 %idx.neg
  store ptr %add.ptr, ptr %a.addr, align 8
  %5 = load ptr, ptr %tau.addr, align 8
  %incdec.ptr = getelementptr inbounds %struct.complex, ptr %5, i32 -1
  store ptr %incdec.ptr, ptr %tau.addr, align 8
  %6 = load ptr, ptr %work.addr, align 8
  %incdec.ptr1 = getelementptr inbounds %struct.complex, ptr %6, i32 -1
  store ptr %incdec.ptr1, ptr %work.addr, align 8
  %7 = load ptr, ptr %info.addr, align 8
  store i32 0, ptr %7, align 4
  %8 = load ptr, ptr %m.addr, align 8
  %9 = load ptr, ptr %n.addr, align 8
  %10 = load ptr, ptr %k.addr, align 8
  %call = call i32 @ilaenv_(ptr noundef @c__1, ptr noundef @.str, ptr noundef @.str.1, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef @c_n1)
  store i32 %call, ptr %nb, align 4
  %11 = load ptr, ptr %m.addr, align 8
  %12 = load i32, ptr %11, align 4
  %cmp = icmp sge i32 1, %12
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %13 = load ptr, ptr %m.addr, align 8
  %14 = load i32, ptr %13, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %14, %cond.false ]
  %15 = load i32, ptr %nb, align 4
  %mul = mul nsw i32 %cond, %15
  store i32 %mul, ptr %lwkopt, align 4
  %16 = load i32, ptr %lwkopt, align 4
  %conv = sitofp i32 %16 to float
  %17 = load ptr, ptr %work.addr, align 8
  %arrayidx = getelementptr inbounds %struct.complex, ptr %17, i64 1
  %r = getelementptr inbounds %struct.complex, ptr %arrayidx, i32 0, i32 0
  store float %conv, ptr %r, align 4
  %18 = load ptr, ptr %work.addr, align 8
  %arrayidx2 = getelementptr inbounds %struct.complex, ptr %18, i64 1
  %i = getelementptr inbounds %struct.complex, ptr %arrayidx2, i32 0, i32 1
  store float 0.000000e+00, ptr %i, align 4
  %19 = load ptr, ptr %lwork.addr, align 8
  %20 = load i32, ptr %19, align 4
  %cmp3 = icmp eq i32 %20, -1
  %conv4 = zext i1 %cmp3 to i32
  store i32 %conv4, ptr %lquery, align 4
  %21 = load ptr, ptr %m.addr, align 8
  %22 = load i32, ptr %21, align 4
  %cmp5 = icmp slt i32 %22, 0
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %23 = load ptr, ptr %info.addr, align 8
  store i32 -1, ptr %23, align 4
  br label %if.end39

if.else:                                          ; preds = %cond.end
  %24 = load ptr, ptr %n.addr, align 8
  %25 = load i32, ptr %24, align 4
  %26 = load ptr, ptr %m.addr, align 8
  %27 = load i32, ptr %26, align 4
  %cmp7 = icmp slt i32 %25, %27
  br i1 %cmp7, label %if.then9, label %if.else10

if.then9:                                         ; preds = %if.else
  %28 = load ptr, ptr %info.addr, align 8
  store i32 -2, ptr %28, align 4
  br label %if.end38

if.else10:                                        ; preds = %if.else
  %29 = load ptr, ptr %k.addr, align 8
  %30 = load i32, ptr %29, align 4
  %cmp11 = icmp slt i32 %30, 0
  br i1 %cmp11, label %if.then15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else10
  %31 = load ptr, ptr %k.addr, align 8
  %32 = load i32, ptr %31, align 4
  %33 = load ptr, ptr %m.addr, align 8
  %34 = load i32, ptr %33, align 4
  %cmp13 = icmp sgt i32 %32, %34
  br i1 %cmp13, label %if.then15, label %if.else16

if.then15:                                        ; preds = %lor.lhs.false, %if.else10
  %35 = load ptr, ptr %info.addr, align 8
  store i32 -3, ptr %35, align 4
  br label %if.end37

if.else16:                                        ; preds = %lor.lhs.false
  %36 = load ptr, ptr %lda.addr, align 8
  %37 = load i32, ptr %36, align 4
  %38 = load ptr, ptr %m.addr, align 8
  %39 = load i32, ptr %38, align 4
  %cmp17 = icmp sge i32 1, %39
  br i1 %cmp17, label %cond.true19, label %cond.false20

cond.true19:                                      ; preds = %if.else16
  br label %cond.end21

cond.false20:                                     ; preds = %if.else16
  %40 = load ptr, ptr %m.addr, align 8
  %41 = load i32, ptr %40, align 4
  br label %cond.end21

cond.end21:                                       ; preds = %cond.false20, %cond.true19
  %cond22 = phi i32 [ 1, %cond.true19 ], [ %41, %cond.false20 ]
  %cmp23 = icmp slt i32 %37, %cond22
  br i1 %cmp23, label %if.then25, label %if.else26

if.then25:                                        ; preds = %cond.end21
  %42 = load ptr, ptr %info.addr, align 8
  store i32 -5, ptr %42, align 4
  br label %if.end36

if.else26:                                        ; preds = %cond.end21
  %43 = load ptr, ptr %lwork.addr, align 8
  %44 = load i32, ptr %43, align 4
  %45 = load ptr, ptr %m.addr, align 8
  %46 = load i32, ptr %45, align 4
  %cmp27 = icmp sge i32 1, %46
  br i1 %cmp27, label %cond.true29, label %cond.false30

cond.true29:                                      ; preds = %if.else26
  br label %cond.end31

cond.false30:                                     ; preds = %if.else26
  %47 = load ptr, ptr %m.addr, align 8
  %48 = load i32, ptr %47, align 4
  br label %cond.end31

cond.end31:                                       ; preds = %cond.false30, %cond.true29
  %cond32 = phi i32 [ 1, %cond.true29 ], [ %48, %cond.false30 ]
  %cmp33 = icmp slt i32 %44, %cond32
  br i1 %cmp33, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %cond.end31
  %49 = load i32, ptr %lquery, align 4
  %tobool = icmp ne i32 %49, 0
  br i1 %tobool, label %if.end, label %if.then35

if.then35:                                        ; preds = %land.lhs.true
  %50 = load ptr, ptr %info.addr, align 8
  store i32 -8, ptr %50, align 4
  br label %if.end

if.end:                                           ; preds = %if.then35, %land.lhs.true, %cond.end31
  br label %if.end36

if.end36:                                         ; preds = %if.end, %if.then25
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.then15
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %if.then9
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %if.then
  %51 = load ptr, ptr %info.addr, align 8
  %52 = load i32, ptr %51, align 4
  %cmp40 = icmp ne i32 %52, 0
  br i1 %cmp40, label %if.then42, label %if.else44

if.then42:                                        ; preds = %if.end39
  %53 = load ptr, ptr %info.addr, align 8
  %54 = load i32, ptr %53, align 4
  %sub = sub nsw i32 0, %54
  store i32 %sub, ptr %i__1, align 4
  %call43 = call i32 @xerbla_(ptr noundef @.str, ptr noundef %i__1)
  store i32 0, ptr %retval, align 4
  br label %return

if.else44:                                        ; preds = %if.end39
  %55 = load i32, ptr %lquery, align 4
  %tobool45 = icmp ne i32 %55, 0
  br i1 %tobool45, label %if.then46, label %if.end47

if.then46:                                        ; preds = %if.else44
  store i32 0, ptr %retval, align 4
  br label %return

if.end47:                                         ; preds = %if.else44
  br label %if.end48

if.end48:                                         ; preds = %if.end47
  %56 = load ptr, ptr %m.addr, align 8
  %57 = load i32, ptr %56, align 4
  %cmp49 = icmp sle i32 %57, 0
  br i1 %cmp49, label %if.then51, label %if.end56

if.then51:                                        ; preds = %if.end48
  %58 = load ptr, ptr %work.addr, align 8
  %arrayidx52 = getelementptr inbounds %struct.complex, ptr %58, i64 1
  %r53 = getelementptr inbounds %struct.complex, ptr %arrayidx52, i32 0, i32 0
  store float 1.000000e+00, ptr %r53, align 4
  %59 = load ptr, ptr %work.addr, align 8
  %arrayidx54 = getelementptr inbounds %struct.complex, ptr %59, i64 1
  %i55 = getelementptr inbounds %struct.complex, ptr %arrayidx54, i32 0, i32 1
  store float 0.000000e+00, ptr %i55, align 4
  store i32 0, ptr %retval, align 4
  br label %return

if.end56:                                         ; preds = %if.end48
  store i32 2, ptr %nbmin, align 4
  store i32 0, ptr %nx, align 4
  %60 = load ptr, ptr %m.addr, align 8
  %61 = load i32, ptr %60, align 4
  store i32 %61, ptr %iws, align 4
  %62 = load i32, ptr %nb, align 4
  %cmp57 = icmp sgt i32 %62, 1
  br i1 %cmp57, label %land.lhs.true59, label %if.end86

land.lhs.true59:                                  ; preds = %if.end56
  %63 = load i32, ptr %nb, align 4
  %64 = load ptr, ptr %k.addr, align 8
  %65 = load i32, ptr %64, align 4
  %cmp60 = icmp slt i32 %63, %65
  br i1 %cmp60, label %if.then62, label %if.end86

if.then62:                                        ; preds = %land.lhs.true59
  store i32 0, ptr %i__1, align 4
  %66 = load ptr, ptr %m.addr, align 8
  %67 = load ptr, ptr %n.addr, align 8
  %68 = load ptr, ptr %k.addr, align 8
  %call63 = call i32 @ilaenv_(ptr noundef @c__3, ptr noundef @.str, ptr noundef @.str.1, ptr noundef %66, ptr noundef %67, ptr noundef %68, ptr noundef @c_n1)
  store i32 %call63, ptr %i__2, align 4
  %69 = load i32, ptr %i__1, align 4
  %70 = load i32, ptr %i__2, align 4
  %cmp64 = icmp sge i32 %69, %70
  br i1 %cmp64, label %cond.true66, label %cond.false67

cond.true66:                                      ; preds = %if.then62
  %71 = load i32, ptr %i__1, align 4
  br label %cond.end68

cond.false67:                                     ; preds = %if.then62
  %72 = load i32, ptr %i__2, align 4
  br label %cond.end68

cond.end68:                                       ; preds = %cond.false67, %cond.true66
  %cond69 = phi i32 [ %71, %cond.true66 ], [ %72, %cond.false67 ]
  store i32 %cond69, ptr %nx, align 4
  %73 = load i32, ptr %nx, align 4
  %74 = load ptr, ptr %k.addr, align 8
  %75 = load i32, ptr %74, align 4
  %cmp70 = icmp slt i32 %73, %75
  br i1 %cmp70, label %if.then72, label %if.end85

if.then72:                                        ; preds = %cond.end68
  %76 = load ptr, ptr %m.addr, align 8
  %77 = load i32, ptr %76, align 4
  store i32 %77, ptr %ldwork, align 4
  %78 = load i32, ptr %ldwork, align 4
  %79 = load i32, ptr %nb, align 4
  %mul73 = mul nsw i32 %78, %79
  store i32 %mul73, ptr %iws, align 4
  %80 = load ptr, ptr %lwork.addr, align 8
  %81 = load i32, ptr %80, align 4
  %82 = load i32, ptr %iws, align 4
  %cmp74 = icmp slt i32 %81, %82
  br i1 %cmp74, label %if.then76, label %if.end84

if.then76:                                        ; preds = %if.then72
  %83 = load ptr, ptr %lwork.addr, align 8
  %84 = load i32, ptr %83, align 4
  %85 = load i32, ptr %ldwork, align 4
  %div = sdiv i32 %84, %85
  store i32 %div, ptr %nb, align 4
  store i32 2, ptr %i__1, align 4
  %86 = load ptr, ptr %m.addr, align 8
  %87 = load ptr, ptr %n.addr, align 8
  %88 = load ptr, ptr %k.addr, align 8
  %call77 = call i32 @ilaenv_(ptr noundef @c__2, ptr noundef @.str, ptr noundef @.str.1, ptr noundef %86, ptr noundef %87, ptr noundef %88, ptr noundef @c_n1)
  store i32 %call77, ptr %i__2, align 4
  %89 = load i32, ptr %i__1, align 4
  %90 = load i32, ptr %i__2, align 4
  %cmp78 = icmp sge i32 %89, %90
  br i1 %cmp78, label %cond.true80, label %cond.false81

cond.true80:                                      ; preds = %if.then76
  %91 = load i32, ptr %i__1, align 4
  br label %cond.end82

cond.false81:                                     ; preds = %if.then76
  %92 = load i32, ptr %i__2, align 4
  br label %cond.end82

cond.end82:                                       ; preds = %cond.false81, %cond.true80
  %cond83 = phi i32 [ %91, %cond.true80 ], [ %92, %cond.false81 ]
  store i32 %cond83, ptr %nbmin, align 4
  br label %if.end84

if.end84:                                         ; preds = %cond.end82, %if.then72
  br label %if.end85

if.end85:                                         ; preds = %if.end84, %cond.end68
  br label %if.end86

if.end86:                                         ; preds = %if.end85, %land.lhs.true59, %if.end56
  %93 = load i32, ptr %nb, align 4
  %94 = load i32, ptr %nbmin, align 4
  %cmp87 = icmp sge i32 %93, %94
  br i1 %cmp87, label %land.lhs.true89, label %if.else124

land.lhs.true89:                                  ; preds = %if.end86
  %95 = load i32, ptr %nb, align 4
  %96 = load ptr, ptr %k.addr, align 8
  %97 = load i32, ptr %96, align 4
  %cmp90 = icmp slt i32 %95, %97
  br i1 %cmp90, label %land.lhs.true92, label %if.else124

land.lhs.true92:                                  ; preds = %land.lhs.true89
  %98 = load i32, ptr %nx, align 4
  %99 = load ptr, ptr %k.addr, align 8
  %100 = load i32, ptr %99, align 4
  %cmp93 = icmp slt i32 %98, %100
  br i1 %cmp93, label %if.then95, label %if.else124

if.then95:                                        ; preds = %land.lhs.true92
  %101 = load ptr, ptr %k.addr, align 8
  %102 = load i32, ptr %101, align 4
  %103 = load i32, ptr %nx, align 4
  %sub96 = sub nsw i32 %102, %103
  %sub97 = sub nsw i32 %sub96, 1
  %104 = load i32, ptr %nb, align 4
  %div98 = sdiv i32 %sub97, %104
  %105 = load i32, ptr %nb, align 4
  %mul99 = mul nsw i32 %div98, %105
  store i32 %mul99, ptr %ki, align 4
  %106 = load ptr, ptr %k.addr, align 8
  %107 = load i32, ptr %106, align 4
  store i32 %107, ptr %i__1, align 4
  %108 = load i32, ptr %ki, align 4
  %109 = load i32, ptr %nb, align 4
  %add100 = add nsw i32 %108, %109
  store i32 %add100, ptr %i__2, align 4
  %110 = load i32, ptr %i__1, align 4
  %111 = load i32, ptr %i__2, align 4
  %cmp101 = icmp sle i32 %110, %111
  br i1 %cmp101, label %cond.true103, label %cond.false104

cond.true103:                                     ; preds = %if.then95
  %112 = load i32, ptr %i__1, align 4
  br label %cond.end105

cond.false104:                                    ; preds = %if.then95
  %113 = load i32, ptr %i__2, align 4
  br label %cond.end105

cond.end105:                                      ; preds = %cond.false104, %cond.true103
  %cond106 = phi i32 [ %112, %cond.true103 ], [ %113, %cond.false104 ]
  store i32 %cond106, ptr %kk, align 4
  %114 = load i32, ptr %kk, align 4
  store i32 %114, ptr %i__1, align 4
  store i32 1, ptr %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc121, %cond.end105
  %115 = load i32, ptr %j, align 4
  %116 = load i32, ptr %i__1, align 4
  %cmp107 = icmp sle i32 %115, %116
  br i1 %cmp107, label %for.body, label %for.end123

for.body:                                         ; preds = %for.cond
  %117 = load ptr, ptr %m.addr, align 8
  %118 = load i32, ptr %117, align 4
  store i32 %118, ptr %i__2, align 4
  %119 = load i32, ptr %kk, align 4
  %add109 = add nsw i32 %119, 1
  store i32 %add109, ptr %i__, align 4
  br label %for.cond110

for.cond110:                                      ; preds = %for.inc, %for.body
  %120 = load i32, ptr %i__, align 4
  %121 = load i32, ptr %i__2, align 4
  %cmp111 = icmp sle i32 %120, %121
  br i1 %cmp111, label %for.body113, label %for.end

for.body113:                                      ; preds = %for.cond110
  %122 = load i32, ptr %i__, align 4
  %123 = load i32, ptr %j, align 4
  %124 = load i32, ptr %a_dim1, align 4
  %mul114 = mul nsw i32 %123, %124
  %add115 = add nsw i32 %122, %mul114
  store i32 %add115, ptr %i__3, align 4
  %125 = load ptr, ptr %a.addr, align 8
  %126 = load i32, ptr %i__3, align 4
  %idxprom = sext i32 %126 to i64
  %arrayidx116 = getelementptr inbounds %struct.complex, ptr %125, i64 %idxprom
  %r117 = getelementptr inbounds %struct.complex, ptr %arrayidx116, i32 0, i32 0
  store float 0.000000e+00, ptr %r117, align 4
  %127 = load ptr, ptr %a.addr, align 8
  %128 = load i32, ptr %i__3, align 4
  %idxprom118 = sext i32 %128 to i64
  %arrayidx119 = getelementptr inbounds %struct.complex, ptr %127, i64 %idxprom118
  %i120 = getelementptr inbounds %struct.complex, ptr %arrayidx119, i32 0, i32 1
  store float 0.000000e+00, ptr %i120, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body113
  %129 = load i32, ptr %i__, align 4
  %inc = add nsw i32 %129, 1
  store i32 %inc, ptr %i__, align 4
  br label %for.cond110, !llvm.loop !5

for.end:                                          ; preds = %for.cond110
  br label %for.inc121

for.inc121:                                       ; preds = %for.end
  %130 = load i32, ptr %j, align 4
  %inc122 = add nsw i32 %130, 1
  store i32 %inc122, ptr %j, align 4
  br label %for.cond, !llvm.loop !7

for.end123:                                       ; preds = %for.cond
  br label %if.end125

if.else124:                                       ; preds = %land.lhs.true92, %land.lhs.true89, %if.end86
  store i32 0, ptr %kk, align 4
  br label %if.end125

if.end125:                                        ; preds = %if.else124, %for.end123
  %131 = load i32, ptr %kk, align 4
  %132 = load ptr, ptr %m.addr, align 8
  %133 = load i32, ptr %132, align 4
  %cmp126 = icmp slt i32 %131, %133
  br i1 %cmp126, label %if.then128, label %if.end143

if.then128:                                       ; preds = %if.end125
  %134 = load ptr, ptr %m.addr, align 8
  %135 = load i32, ptr %134, align 4
  %136 = load i32, ptr %kk, align 4
  %sub129 = sub nsw i32 %135, %136
  store i32 %sub129, ptr %i__1, align 4
  %137 = load ptr, ptr %n.addr, align 8
  %138 = load i32, ptr %137, align 4
  %139 = load i32, ptr %kk, align 4
  %sub130 = sub nsw i32 %138, %139
  store i32 %sub130, ptr %i__2, align 4
  %140 = load ptr, ptr %k.addr, align 8
  %141 = load i32, ptr %140, align 4
  %142 = load i32, ptr %kk, align 4
  %sub131 = sub nsw i32 %141, %142
  store i32 %sub131, ptr %i__3, align 4
  %143 = load ptr, ptr %a.addr, align 8
  %144 = load i32, ptr %kk, align 4
  %add132 = add nsw i32 %144, 1
  %145 = load i32, ptr %kk, align 4
  %add133 = add nsw i32 %145, 1
  %146 = load i32, ptr %a_dim1, align 4
  %mul134 = mul nsw i32 %add133, %146
  %add135 = add nsw i32 %add132, %mul134
  %idxprom136 = sext i32 %add135 to i64
  %arrayidx137 = getelementptr inbounds %struct.complex, ptr %143, i64 %idxprom136
  %147 = load ptr, ptr %lda.addr, align 8
  %148 = load ptr, ptr %tau.addr, align 8
  %149 = load i32, ptr %kk, align 4
  %add138 = add nsw i32 %149, 1
  %idxprom139 = sext i32 %add138 to i64
  %arrayidx140 = getelementptr inbounds %struct.complex, ptr %148, i64 %idxprom139
  %150 = load ptr, ptr %work.addr, align 8
  %arrayidx141 = getelementptr inbounds %struct.complex, ptr %150, i64 1
  %call142 = call i32 @cungl2_fla(ptr noundef %i__1, ptr noundef %i__2, ptr noundef %i__3, ptr noundef %arrayidx137, ptr noundef %147, ptr noundef %arrayidx140, ptr noundef %arrayidx141, ptr noundef %iinfo)
  br label %if.end143

if.end143:                                        ; preds = %if.then128, %if.end125
  %151 = load i32, ptr %kk, align 4
  %cmp144 = icmp sgt i32 %151, 0
  br i1 %cmp144, label %if.then146, label %if.end242

if.then146:                                       ; preds = %if.end143
  %152 = load i32, ptr %nb, align 4
  %sub147 = sub nsw i32 0, %152
  store i32 %sub147, ptr %i__1, align 4
  %153 = load i32, ptr %ki, align 4
  %add148 = add nsw i32 %153, 1
  store i32 %add148, ptr %i__, align 4
  br label %for.cond149

for.cond149:                                      ; preds = %for.inc239, %if.then146
  %154 = load i32, ptr %i__1, align 4
  %cmp150 = icmp slt i32 %154, 0
  br i1 %cmp150, label %cond.true152, label %cond.false155

cond.true152:                                     ; preds = %for.cond149
  %155 = load i32, ptr %i__, align 4
  %cmp153 = icmp sge i32 %155, 1
  %conv154 = zext i1 %cmp153 to i32
  br label %cond.end158

cond.false155:                                    ; preds = %for.cond149
  %156 = load i32, ptr %i__, align 4
  %cmp156 = icmp sle i32 %156, 1
  %conv157 = zext i1 %cmp156 to i32
  br label %cond.end158

cond.end158:                                      ; preds = %cond.false155, %cond.true152
  %cond159 = phi i32 [ %conv154, %cond.true152 ], [ %conv157, %cond.false155 ]
  %tobool160 = icmp ne i32 %cond159, 0
  br i1 %tobool160, label %for.body161, label %for.end241

for.body161:                                      ; preds = %cond.end158
  %157 = load i32, ptr %nb, align 4
  store i32 %157, ptr %i__2, align 4
  %158 = load ptr, ptr %k.addr, align 8
  %159 = load i32, ptr %158, align 4
  %160 = load i32, ptr %i__, align 4
  %sub162 = sub nsw i32 %159, %160
  %add163 = add nsw i32 %sub162, 1
  store i32 %add163, ptr %i__3, align 4
  %161 = load i32, ptr %i__2, align 4
  %162 = load i32, ptr %i__3, align 4
  %cmp164 = icmp sle i32 %161, %162
  br i1 %cmp164, label %cond.true166, label %cond.false167

cond.true166:                                     ; preds = %for.body161
  %163 = load i32, ptr %i__2, align 4
  br label %cond.end168

cond.false167:                                    ; preds = %for.body161
  %164 = load i32, ptr %i__3, align 4
  br label %cond.end168

cond.end168:                                      ; preds = %cond.false167, %cond.true166
  %cond169 = phi i32 [ %163, %cond.true166 ], [ %164, %cond.false167 ]
  store i32 %cond169, ptr %ib, align 4
  %165 = load i32, ptr %i__, align 4
  %166 = load i32, ptr %ib, align 4
  %add170 = add nsw i32 %165, %166
  %167 = load ptr, ptr %m.addr, align 8
  %168 = load i32, ptr %167, align 4
  %cmp171 = icmp sle i32 %add170, %168
  br i1 %cmp171, label %if.then173, label %if.end203

if.then173:                                       ; preds = %cond.end168
  %169 = load ptr, ptr %n.addr, align 8
  %170 = load i32, ptr %169, align 4
  %171 = load i32, ptr %i__, align 4
  %sub174 = sub nsw i32 %170, %171
  %add175 = add nsw i32 %sub174, 1
  store i32 %add175, ptr %i__2, align 4
  %172 = load ptr, ptr %a.addr, align 8
  %173 = load i32, ptr %i__, align 4
  %174 = load i32, ptr %i__, align 4
  %175 = load i32, ptr %a_dim1, align 4
  %mul176 = mul nsw i32 %174, %175
  %add177 = add nsw i32 %173, %mul176
  %idxprom178 = sext i32 %add177 to i64
  %arrayidx179 = getelementptr inbounds %struct.complex, ptr %172, i64 %idxprom178
  %176 = load ptr, ptr %lda.addr, align 8
  %177 = load ptr, ptr %tau.addr, align 8
  %178 = load i32, ptr %i__, align 4
  %idxprom180 = sext i32 %178 to i64
  %arrayidx181 = getelementptr inbounds %struct.complex, ptr %177, i64 %idxprom180
  %179 = load ptr, ptr %work.addr, align 8
  %arrayidx182 = getelementptr inbounds %struct.complex, ptr %179, i64 1
  %call183 = call i32 @clarft_(ptr noundef @.str.2, ptr noundef @.str.3, ptr noundef %i__2, ptr noundef %ib, ptr noundef %arrayidx179, ptr noundef %176, ptr noundef %arrayidx181, ptr noundef %arrayidx182, ptr noundef %ldwork)
  %180 = load ptr, ptr %m.addr, align 8
  %181 = load i32, ptr %180, align 4
  %182 = load i32, ptr %i__, align 4
  %sub184 = sub nsw i32 %181, %182
  %183 = load i32, ptr %ib, align 4
  %sub185 = sub nsw i32 %sub184, %183
  %add186 = add nsw i32 %sub185, 1
  store i32 %add186, ptr %i__2, align 4
  %184 = load ptr, ptr %n.addr, align 8
  %185 = load i32, ptr %184, align 4
  %186 = load i32, ptr %i__, align 4
  %sub187 = sub nsw i32 %185, %186
  %add188 = add nsw i32 %sub187, 1
  store i32 %add188, ptr %i__3, align 4
  %187 = load ptr, ptr %a.addr, align 8
  %188 = load i32, ptr %i__, align 4
  %189 = load i32, ptr %i__, align 4
  %190 = load i32, ptr %a_dim1, align 4
  %mul189 = mul nsw i32 %189, %190
  %add190 = add nsw i32 %188, %mul189
  %idxprom191 = sext i32 %add190 to i64
  %arrayidx192 = getelementptr inbounds %struct.complex, ptr %187, i64 %idxprom191
  %191 = load ptr, ptr %lda.addr, align 8
  %192 = load ptr, ptr %work.addr, align 8
  %arrayidx193 = getelementptr inbounds %struct.complex, ptr %192, i64 1
  %193 = load ptr, ptr %a.addr, align 8
  %194 = load i32, ptr %i__, align 4
  %195 = load i32, ptr %ib, align 4
  %add194 = add nsw i32 %194, %195
  %196 = load i32, ptr %i__, align 4
  %197 = load i32, ptr %a_dim1, align 4
  %mul195 = mul nsw i32 %196, %197
  %add196 = add nsw i32 %add194, %mul195
  %idxprom197 = sext i32 %add196 to i64
  %arrayidx198 = getelementptr inbounds %struct.complex, ptr %193, i64 %idxprom197
  %198 = load ptr, ptr %lda.addr, align 8
  %199 = load ptr, ptr %work.addr, align 8
  %200 = load i32, ptr %ib, align 4
  %add199 = add nsw i32 %200, 1
  %idxprom200 = sext i32 %add199 to i64
  %arrayidx201 = getelementptr inbounds %struct.complex, ptr %199, i64 %idxprom200
  %call202 = call i32 @clarfb_(ptr noundef @.str.4, ptr noundef @.str.5, ptr noundef @.str.2, ptr noundef @.str.3, ptr noundef %i__2, ptr noundef %i__3, ptr noundef %ib, ptr noundef %arrayidx192, ptr noundef %191, ptr noundef %arrayidx193, ptr noundef %ldwork, ptr noundef %arrayidx198, ptr noundef %198, ptr noundef %arrayidx201, ptr noundef %ldwork)
  br label %if.end203

if.end203:                                        ; preds = %if.then173, %cond.end168
  %201 = load ptr, ptr %n.addr, align 8
  %202 = load i32, ptr %201, align 4
  %203 = load i32, ptr %i__, align 4
  %sub204 = sub nsw i32 %202, %203
  %add205 = add nsw i32 %sub204, 1
  store i32 %add205, ptr %i__2, align 4
  %204 = load ptr, ptr %a.addr, align 8
  %205 = load i32, ptr %i__, align 4
  %206 = load i32, ptr %i__, align 4
  %207 = load i32, ptr %a_dim1, align 4
  %mul206 = mul nsw i32 %206, %207
  %add207 = add nsw i32 %205, %mul206
  %idxprom208 = sext i32 %add207 to i64
  %arrayidx209 = getelementptr inbounds %struct.complex, ptr %204, i64 %idxprom208
  %208 = load ptr, ptr %lda.addr, align 8
  %209 = load ptr, ptr %tau.addr, align 8
  %210 = load i32, ptr %i__, align 4
  %idxprom210 = sext i32 %210 to i64
  %arrayidx211 = getelementptr inbounds %struct.complex, ptr %209, i64 %idxprom210
  %211 = load ptr, ptr %work.addr, align 8
  %arrayidx212 = getelementptr inbounds %struct.complex, ptr %211, i64 1
  %call213 = call i32 @cungl2_fla(ptr noundef %ib, ptr noundef %i__2, ptr noundef %ib, ptr noundef %arrayidx209, ptr noundef %208, ptr noundef %arrayidx211, ptr noundef %arrayidx212, ptr noundef %iinfo)
  %212 = load i32, ptr %i__, align 4
  %sub214 = sub nsw i32 %212, 1
  store i32 %sub214, ptr %i__2, align 4
  store i32 1, ptr %j, align 4
  br label %for.cond215

for.cond215:                                      ; preds = %for.inc236, %if.end203
  %213 = load i32, ptr %j, align 4
  %214 = load i32, ptr %i__2, align 4
  %cmp216 = icmp sle i32 %213, %214
  br i1 %cmp216, label %for.body218, label %for.end238

for.body218:                                      ; preds = %for.cond215
  %215 = load i32, ptr %i__, align 4
  %216 = load i32, ptr %ib, align 4
  %add219 = add nsw i32 %215, %216
  %sub220 = sub nsw i32 %add219, 1
  store i32 %sub220, ptr %i__3, align 4
  %217 = load i32, ptr %i__, align 4
  store i32 %217, ptr %l, align 4
  br label %for.cond221

for.cond221:                                      ; preds = %for.inc233, %for.body218
  %218 = load i32, ptr %l, align 4
  %219 = load i32, ptr %i__3, align 4
  %cmp222 = icmp sle i32 %218, %219
  br i1 %cmp222, label %for.body224, label %for.end235

for.body224:                                      ; preds = %for.cond221
  %220 = load i32, ptr %l, align 4
  %221 = load i32, ptr %j, align 4
  %222 = load i32, ptr %a_dim1, align 4
  %mul225 = mul nsw i32 %221, %222
  %add226 = add nsw i32 %220, %mul225
  store i32 %add226, ptr %i__4, align 4
  %223 = load ptr, ptr %a.addr, align 8
  %224 = load i32, ptr %i__4, align 4
  %idxprom227 = sext i32 %224 to i64
  %arrayidx228 = getelementptr inbounds %struct.complex, ptr %223, i64 %idxprom227
  %r229 = getelementptr inbounds %struct.complex, ptr %arrayidx228, i32 0, i32 0
  store float 0.000000e+00, ptr %r229, align 4
  %225 = load ptr, ptr %a.addr, align 8
  %226 = load i32, ptr %i__4, align 4
  %idxprom230 = sext i32 %226 to i64
  %arrayidx231 = getelementptr inbounds %struct.complex, ptr %225, i64 %idxprom230
  %i232 = getelementptr inbounds %struct.complex, ptr %arrayidx231, i32 0, i32 1
  store float 0.000000e+00, ptr %i232, align 4
  br label %for.inc233

for.inc233:                                       ; preds = %for.body224
  %227 = load i32, ptr %l, align 4
  %inc234 = add nsw i32 %227, 1
  store i32 %inc234, ptr %l, align 4
  br label %for.cond221, !llvm.loop !8

for.end235:                                       ; preds = %for.cond221
  br label %for.inc236

for.inc236:                                       ; preds = %for.end235
  %228 = load i32, ptr %j, align 4
  %inc237 = add nsw i32 %228, 1
  store i32 %inc237, ptr %j, align 4
  br label %for.cond215, !llvm.loop !9

for.end238:                                       ; preds = %for.cond215
  br label %for.inc239

for.inc239:                                       ; preds = %for.end238
  %229 = load i32, ptr %i__1, align 4
  %230 = load i32, ptr %i__, align 4
  %add240 = add nsw i32 %230, %229
  store i32 %add240, ptr %i__, align 4
  br label %for.cond149, !llvm.loop !10

for.end241:                                       ; preds = %cond.end158
  br label %if.end242

if.end242:                                        ; preds = %for.end241, %if.end143
  %231 = load i32, ptr %iws, align 4
  %conv243 = sitofp i32 %231 to float
  %232 = load ptr, ptr %work.addr, align 8
  %arrayidx244 = getelementptr inbounds %struct.complex, ptr %232, i64 1
  %r245 = getelementptr inbounds %struct.complex, ptr %arrayidx244, i32 0, i32 0
  store float %conv243, ptr %r245, align 4
  %233 = load ptr, ptr %work.addr, align 8
  %arrayidx246 = getelementptr inbounds %struct.complex, ptr %233, i64 1
  %i247 = getelementptr inbounds %struct.complex, ptr %arrayidx246, i32 0, i32 1
  store float 0.000000e+00, ptr %i247, align 4
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end242, %if.then51, %if.then46, %if.then42
  %234 = load i32, ptr %retval, align 4
  ret i32 %234
}

declare i32 @ilaenv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @xerbla_(ptr noundef, ptr noundef) #1

declare i32 @cungl2_fla(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @clarft_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @clarfb_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

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
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}

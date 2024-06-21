; ModuleID = 'samples/112.bc'
source_filename = "/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/map/lapack2flamec/f2c/c/dlabrd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"No transpose\00", align 1
@c_b4 = internal global double -1.000000e+00, align 8
@c_b5 = internal global double 1.000000e+00, align 8
@c__1 = internal global i32 1, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"Transpose\00", align 1
@c_b16 = internal global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define i32 @dlabrd_(ptr noundef %m, ptr noundef %n, ptr noundef %nb, ptr noundef %a, ptr noundef %lda, ptr noundef %d__, ptr noundef %e, ptr noundef %tauq, ptr noundef %taup, ptr noundef %x, ptr noundef %ldx, ptr noundef %y, ptr noundef %ldy) #0 {
entry:
  %retval = alloca i32, align 4
  %m.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %nb.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %lda.addr = alloca ptr, align 8
  %d__.addr = alloca ptr, align 8
  %e.addr = alloca ptr, align 8
  %tauq.addr = alloca ptr, align 8
  %taup.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %ldx.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  %ldy.addr = alloca ptr, align 8
  %a_dim1 = alloca i32, align 4
  %a_offset = alloca i32, align 4
  %x_dim1 = alloca i32, align 4
  %x_offset = alloca i32, align 4
  %y_dim1 = alloca i32, align 4
  %y_offset = alloca i32, align 4
  %i__1 = alloca i32, align 4
  %i__2 = alloca i32, align 4
  %i__3 = alloca i32, align 4
  %i__ = alloca i32, align 4
  store ptr %m, ptr %m.addr, align 8
  store ptr %n, ptr %n.addr, align 8
  store ptr %nb, ptr %nb.addr, align 8
  store ptr %a, ptr %a.addr, align 8
  store ptr %lda, ptr %lda.addr, align 8
  store ptr %d__, ptr %d__.addr, align 8
  store ptr %e, ptr %e.addr, align 8
  store ptr %tauq, ptr %tauq.addr, align 8
  store ptr %taup, ptr %taup.addr, align 8
  store ptr %x, ptr %x.addr, align 8
  store ptr %ldx, ptr %ldx.addr, align 8
  store ptr %y, ptr %y.addr, align 8
  store ptr %ldy, ptr %ldy.addr, align 8
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
  %5 = load ptr, ptr %d__.addr, align 8
  %incdec.ptr = getelementptr inbounds double, ptr %5, i32 -1
  store ptr %incdec.ptr, ptr %d__.addr, align 8
  %6 = load ptr, ptr %e.addr, align 8
  %incdec.ptr1 = getelementptr inbounds double, ptr %6, i32 -1
  store ptr %incdec.ptr1, ptr %e.addr, align 8
  %7 = load ptr, ptr %tauq.addr, align 8
  %incdec.ptr2 = getelementptr inbounds double, ptr %7, i32 -1
  store ptr %incdec.ptr2, ptr %tauq.addr, align 8
  %8 = load ptr, ptr %taup.addr, align 8
  %incdec.ptr3 = getelementptr inbounds double, ptr %8, i32 -1
  store ptr %incdec.ptr3, ptr %taup.addr, align 8
  %9 = load ptr, ptr %ldx.addr, align 8
  %10 = load i32, ptr %9, align 4
  store i32 %10, ptr %x_dim1, align 4
  %11 = load i32, ptr %x_dim1, align 4
  %add4 = add nsw i32 1, %11
  store i32 %add4, ptr %x_offset, align 4
  %12 = load i32, ptr %x_offset, align 4
  %13 = load ptr, ptr %x.addr, align 8
  %idx.ext5 = sext i32 %12 to i64
  %idx.neg6 = sub i64 0, %idx.ext5
  %add.ptr7 = getelementptr inbounds double, ptr %13, i64 %idx.neg6
  store ptr %add.ptr7, ptr %x.addr, align 8
  %14 = load ptr, ptr %ldy.addr, align 8
  %15 = load i32, ptr %14, align 4
  store i32 %15, ptr %y_dim1, align 4
  %16 = load i32, ptr %y_dim1, align 4
  %add8 = add nsw i32 1, %16
  store i32 %add8, ptr %y_offset, align 4
  %17 = load i32, ptr %y_offset, align 4
  %18 = load ptr, ptr %y.addr, align 8
  %idx.ext9 = sext i32 %17 to i64
  %idx.neg10 = sub i64 0, %idx.ext9
  %add.ptr11 = getelementptr inbounds double, ptr %18, i64 %idx.neg10
  store ptr %add.ptr11, ptr %y.addr, align 8
  %19 = load ptr, ptr %m.addr, align 8
  %20 = load i32, ptr %19, align 4
  %cmp = icmp sle i32 %20, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %21 = load ptr, ptr %n.addr, align 8
  %22 = load i32, ptr %21, align 4
  %cmp12 = icmp sle i32 %22, 0
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %23 = load ptr, ptr %m.addr, align 8
  %24 = load i32, ptr %23, align 4
  %25 = load ptr, ptr %n.addr, align 8
  %26 = load i32, ptr %25, align 4
  %cmp13 = icmp sge i32 %24, %26
  br i1 %cmp13, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end
  %27 = load ptr, ptr %nb.addr, align 8
  %28 = load i32, ptr %27, align 4
  store i32 %28, ptr %i__1, align 4
  store i32 1, ptr %i__, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then14
  %29 = load i32, ptr %i__, align 4
  %30 = load i32, ptr %i__1, align 4
  %cmp15 = icmp sle i32 %29, %30
  br i1 %cmp15, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %31 = load ptr, ptr %m.addr, align 8
  %32 = load i32, ptr %31, align 4
  %33 = load i32, ptr %i__, align 4
  %sub = sub nsw i32 %32, %33
  %add16 = add nsw i32 %sub, 1
  store i32 %add16, ptr %i__2, align 4
  %34 = load i32, ptr %i__, align 4
  %sub17 = sub nsw i32 %34, 1
  store i32 %sub17, ptr %i__3, align 4
  %35 = load ptr, ptr %a.addr, align 8
  %36 = load i32, ptr %i__, align 4
  %37 = load i32, ptr %a_dim1, align 4
  %add18 = add nsw i32 %36, %37
  %idxprom = sext i32 %add18 to i64
  %arrayidx = getelementptr inbounds double, ptr %35, i64 %idxprom
  %38 = load ptr, ptr %lda.addr, align 8
  %39 = load ptr, ptr %y.addr, align 8
  %40 = load i32, ptr %i__, align 4
  %41 = load i32, ptr %y_dim1, align 4
  %add19 = add nsw i32 %40, %41
  %idxprom20 = sext i32 %add19 to i64
  %arrayidx21 = getelementptr inbounds double, ptr %39, i64 %idxprom20
  %42 = load ptr, ptr %ldy.addr, align 8
  %43 = load ptr, ptr %a.addr, align 8
  %44 = load i32, ptr %i__, align 4
  %45 = load i32, ptr %i__, align 4
  %46 = load i32, ptr %a_dim1, align 4
  %mul = mul nsw i32 %45, %46
  %add22 = add nsw i32 %44, %mul
  %idxprom23 = sext i32 %add22 to i64
  %arrayidx24 = getelementptr inbounds double, ptr %43, i64 %idxprom23
  %call = call i32 @dgemv_(ptr noundef @.str, ptr noundef %i__2, ptr noundef %i__3, ptr noundef @c_b4, ptr noundef %arrayidx, ptr noundef %38, ptr noundef %arrayidx21, ptr noundef %42, ptr noundef @c_b5, ptr noundef %arrayidx24, ptr noundef @c__1)
  %47 = load ptr, ptr %m.addr, align 8
  %48 = load i32, ptr %47, align 4
  %49 = load i32, ptr %i__, align 4
  %sub25 = sub nsw i32 %48, %49
  %add26 = add nsw i32 %sub25, 1
  store i32 %add26, ptr %i__2, align 4
  %50 = load i32, ptr %i__, align 4
  %sub27 = sub nsw i32 %50, 1
  store i32 %sub27, ptr %i__3, align 4
  %51 = load ptr, ptr %x.addr, align 8
  %52 = load i32, ptr %i__, align 4
  %53 = load i32, ptr %x_dim1, align 4
  %add28 = add nsw i32 %52, %53
  %idxprom29 = sext i32 %add28 to i64
  %arrayidx30 = getelementptr inbounds double, ptr %51, i64 %idxprom29
  %54 = load ptr, ptr %ldx.addr, align 8
  %55 = load ptr, ptr %a.addr, align 8
  %56 = load i32, ptr %i__, align 4
  %57 = load i32, ptr %a_dim1, align 4
  %mul31 = mul nsw i32 %56, %57
  %add32 = add nsw i32 %mul31, 1
  %idxprom33 = sext i32 %add32 to i64
  %arrayidx34 = getelementptr inbounds double, ptr %55, i64 %idxprom33
  %58 = load ptr, ptr %a.addr, align 8
  %59 = load i32, ptr %i__, align 4
  %60 = load i32, ptr %i__, align 4
  %61 = load i32, ptr %a_dim1, align 4
  %mul35 = mul nsw i32 %60, %61
  %add36 = add nsw i32 %59, %mul35
  %idxprom37 = sext i32 %add36 to i64
  %arrayidx38 = getelementptr inbounds double, ptr %58, i64 %idxprom37
  %call39 = call i32 @dgemv_(ptr noundef @.str, ptr noundef %i__2, ptr noundef %i__3, ptr noundef @c_b4, ptr noundef %arrayidx30, ptr noundef %54, ptr noundef %arrayidx34, ptr noundef @c__1, ptr noundef @c_b5, ptr noundef %arrayidx38, ptr noundef @c__1)
  %62 = load ptr, ptr %m.addr, align 8
  %63 = load i32, ptr %62, align 4
  %64 = load i32, ptr %i__, align 4
  %sub40 = sub nsw i32 %63, %64
  %add41 = add nsw i32 %sub40, 1
  store i32 %add41, ptr %i__2, align 4
  %65 = load i32, ptr %i__, align 4
  %add42 = add nsw i32 %65, 1
  store i32 %add42, ptr %i__3, align 4
  %66 = load ptr, ptr %a.addr, align 8
  %67 = load i32, ptr %i__, align 4
  %68 = load i32, ptr %i__, align 4
  %69 = load i32, ptr %a_dim1, align 4
  %mul43 = mul nsw i32 %68, %69
  %add44 = add nsw i32 %67, %mul43
  %idxprom45 = sext i32 %add44 to i64
  %arrayidx46 = getelementptr inbounds double, ptr %66, i64 %idxprom45
  %70 = load ptr, ptr %a.addr, align 8
  %71 = load i32, ptr %i__3, align 4
  %72 = load ptr, ptr %m.addr, align 8
  %73 = load i32, ptr %72, align 4
  %cmp47 = icmp sle i32 %71, %73
  br i1 %cmp47, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %74 = load i32, ptr %i__3, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %75 = load ptr, ptr %m.addr, align 8
  %76 = load i32, ptr %75, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %74, %cond.true ], [ %76, %cond.false ]
  %77 = load i32, ptr %i__, align 4
  %78 = load i32, ptr %a_dim1, align 4
  %mul48 = mul nsw i32 %77, %78
  %add49 = add nsw i32 %cond, %mul48
  %idxprom50 = sext i32 %add49 to i64
  %arrayidx51 = getelementptr inbounds double, ptr %70, i64 %idxprom50
  %79 = load ptr, ptr %tauq.addr, align 8
  %80 = load i32, ptr %i__, align 4
  %idxprom52 = sext i32 %80 to i64
  %arrayidx53 = getelementptr inbounds double, ptr %79, i64 %idxprom52
  %call54 = call i32 @dlarfg_(ptr noundef %i__2, ptr noundef %arrayidx46, ptr noundef %arrayidx51, ptr noundef @c__1, ptr noundef %arrayidx53)
  %81 = load ptr, ptr %a.addr, align 8
  %82 = load i32, ptr %i__, align 4
  %83 = load i32, ptr %i__, align 4
  %84 = load i32, ptr %a_dim1, align 4
  %mul55 = mul nsw i32 %83, %84
  %add56 = add nsw i32 %82, %mul55
  %idxprom57 = sext i32 %add56 to i64
  %arrayidx58 = getelementptr inbounds double, ptr %81, i64 %idxprom57
  %85 = load double, ptr %arrayidx58, align 8
  %86 = load ptr, ptr %d__.addr, align 8
  %87 = load i32, ptr %i__, align 4
  %idxprom59 = sext i32 %87 to i64
  %arrayidx60 = getelementptr inbounds double, ptr %86, i64 %idxprom59
  store double %85, ptr %arrayidx60, align 8
  %88 = load i32, ptr %i__, align 4
  %89 = load ptr, ptr %n.addr, align 8
  %90 = load i32, ptr %89, align 4
  %cmp61 = icmp slt i32 %88, %90
  br i1 %cmp61, label %if.then62, label %if.end309

if.then62:                                        ; preds = %cond.end
  %91 = load ptr, ptr %a.addr, align 8
  %92 = load i32, ptr %i__, align 4
  %93 = load i32, ptr %i__, align 4
  %94 = load i32, ptr %a_dim1, align 4
  %mul63 = mul nsw i32 %93, %94
  %add64 = add nsw i32 %92, %mul63
  %idxprom65 = sext i32 %add64 to i64
  %arrayidx66 = getelementptr inbounds double, ptr %91, i64 %idxprom65
  store double 1.000000e+00, ptr %arrayidx66, align 8
  %95 = load ptr, ptr %m.addr, align 8
  %96 = load i32, ptr %95, align 4
  %97 = load i32, ptr %i__, align 4
  %sub67 = sub nsw i32 %96, %97
  %add68 = add nsw i32 %sub67, 1
  store i32 %add68, ptr %i__2, align 4
  %98 = load ptr, ptr %n.addr, align 8
  %99 = load i32, ptr %98, align 4
  %100 = load i32, ptr %i__, align 4
  %sub69 = sub nsw i32 %99, %100
  store i32 %sub69, ptr %i__3, align 4
  %101 = load ptr, ptr %a.addr, align 8
  %102 = load i32, ptr %i__, align 4
  %103 = load i32, ptr %i__, align 4
  %add70 = add nsw i32 %103, 1
  %104 = load i32, ptr %a_dim1, align 4
  %mul71 = mul nsw i32 %add70, %104
  %add72 = add nsw i32 %102, %mul71
  %idxprom73 = sext i32 %add72 to i64
  %arrayidx74 = getelementptr inbounds double, ptr %101, i64 %idxprom73
  %105 = load ptr, ptr %lda.addr, align 8
  %106 = load ptr, ptr %a.addr, align 8
  %107 = load i32, ptr %i__, align 4
  %108 = load i32, ptr %i__, align 4
  %109 = load i32, ptr %a_dim1, align 4
  %mul75 = mul nsw i32 %108, %109
  %add76 = add nsw i32 %107, %mul75
  %idxprom77 = sext i32 %add76 to i64
  %arrayidx78 = getelementptr inbounds double, ptr %106, i64 %idxprom77
  %110 = load ptr, ptr %y.addr, align 8
  %111 = load i32, ptr %i__, align 4
  %add79 = add nsw i32 %111, 1
  %112 = load i32, ptr %i__, align 4
  %113 = load i32, ptr %y_dim1, align 4
  %mul80 = mul nsw i32 %112, %113
  %add81 = add nsw i32 %add79, %mul80
  %idxprom82 = sext i32 %add81 to i64
  %arrayidx83 = getelementptr inbounds double, ptr %110, i64 %idxprom82
  %call84 = call i32 @dgemv_(ptr noundef @.str.1, ptr noundef %i__2, ptr noundef %i__3, ptr noundef @c_b5, ptr noundef %arrayidx74, ptr noundef %105, ptr noundef %arrayidx78, ptr noundef @c__1, ptr noundef @c_b16, ptr noundef %arrayidx83, ptr noundef @c__1)
  %114 = load ptr, ptr %m.addr, align 8
  %115 = load i32, ptr %114, align 4
  %116 = load i32, ptr %i__, align 4
  %sub85 = sub nsw i32 %115, %116
  %add86 = add nsw i32 %sub85, 1
  store i32 %add86, ptr %i__2, align 4
  %117 = load i32, ptr %i__, align 4
  %sub87 = sub nsw i32 %117, 1
  store i32 %sub87, ptr %i__3, align 4
  %118 = load ptr, ptr %a.addr, align 8
  %119 = load i32, ptr %i__, align 4
  %120 = load i32, ptr %a_dim1, align 4
  %add88 = add nsw i32 %119, %120
  %idxprom89 = sext i32 %add88 to i64
  %arrayidx90 = getelementptr inbounds double, ptr %118, i64 %idxprom89
  %121 = load ptr, ptr %lda.addr, align 8
  %122 = load ptr, ptr %a.addr, align 8
  %123 = load i32, ptr %i__, align 4
  %124 = load i32, ptr %i__, align 4
  %125 = load i32, ptr %a_dim1, align 4
  %mul91 = mul nsw i32 %124, %125
  %add92 = add nsw i32 %123, %mul91
  %idxprom93 = sext i32 %add92 to i64
  %arrayidx94 = getelementptr inbounds double, ptr %122, i64 %idxprom93
  %126 = load ptr, ptr %y.addr, align 8
  %127 = load i32, ptr %i__, align 4
  %128 = load i32, ptr %y_dim1, align 4
  %mul95 = mul nsw i32 %127, %128
  %add96 = add nsw i32 %mul95, 1
  %idxprom97 = sext i32 %add96 to i64
  %arrayidx98 = getelementptr inbounds double, ptr %126, i64 %idxprom97
  %call99 = call i32 @dgemv_(ptr noundef @.str.1, ptr noundef %i__2, ptr noundef %i__3, ptr noundef @c_b5, ptr noundef %arrayidx90, ptr noundef %121, ptr noundef %arrayidx94, ptr noundef @c__1, ptr noundef @c_b16, ptr noundef %arrayidx98, ptr noundef @c__1)
  %129 = load ptr, ptr %n.addr, align 8
  %130 = load i32, ptr %129, align 4
  %131 = load i32, ptr %i__, align 4
  %sub100 = sub nsw i32 %130, %131
  store i32 %sub100, ptr %i__2, align 4
  %132 = load i32, ptr %i__, align 4
  %sub101 = sub nsw i32 %132, 1
  store i32 %sub101, ptr %i__3, align 4
  %133 = load ptr, ptr %y.addr, align 8
  %134 = load i32, ptr %i__, align 4
  %add102 = add nsw i32 %134, 1
  %135 = load i32, ptr %y_dim1, align 4
  %add103 = add nsw i32 %add102, %135
  %idxprom104 = sext i32 %add103 to i64
  %arrayidx105 = getelementptr inbounds double, ptr %133, i64 %idxprom104
  %136 = load ptr, ptr %ldy.addr, align 8
  %137 = load ptr, ptr %y.addr, align 8
  %138 = load i32, ptr %i__, align 4
  %139 = load i32, ptr %y_dim1, align 4
  %mul106 = mul nsw i32 %138, %139
  %add107 = add nsw i32 %mul106, 1
  %idxprom108 = sext i32 %add107 to i64
  %arrayidx109 = getelementptr inbounds double, ptr %137, i64 %idxprom108
  %140 = load ptr, ptr %y.addr, align 8
  %141 = load i32, ptr %i__, align 4
  %add110 = add nsw i32 %141, 1
  %142 = load i32, ptr %i__, align 4
  %143 = load i32, ptr %y_dim1, align 4
  %mul111 = mul nsw i32 %142, %143
  %add112 = add nsw i32 %add110, %mul111
  %idxprom113 = sext i32 %add112 to i64
  %arrayidx114 = getelementptr inbounds double, ptr %140, i64 %idxprom113
  %call115 = call i32 @dgemv_(ptr noundef @.str, ptr noundef %i__2, ptr noundef %i__3, ptr noundef @c_b4, ptr noundef %arrayidx105, ptr noundef %136, ptr noundef %arrayidx109, ptr noundef @c__1, ptr noundef @c_b5, ptr noundef %arrayidx114, ptr noundef @c__1)
  %144 = load ptr, ptr %m.addr, align 8
  %145 = load i32, ptr %144, align 4
  %146 = load i32, ptr %i__, align 4
  %sub116 = sub nsw i32 %145, %146
  %add117 = add nsw i32 %sub116, 1
  store i32 %add117, ptr %i__2, align 4
  %147 = load i32, ptr %i__, align 4
  %sub118 = sub nsw i32 %147, 1
  store i32 %sub118, ptr %i__3, align 4
  %148 = load ptr, ptr %x.addr, align 8
  %149 = load i32, ptr %i__, align 4
  %150 = load i32, ptr %x_dim1, align 4
  %add119 = add nsw i32 %149, %150
  %idxprom120 = sext i32 %add119 to i64
  %arrayidx121 = getelementptr inbounds double, ptr %148, i64 %idxprom120
  %151 = load ptr, ptr %ldx.addr, align 8
  %152 = load ptr, ptr %a.addr, align 8
  %153 = load i32, ptr %i__, align 4
  %154 = load i32, ptr %i__, align 4
  %155 = load i32, ptr %a_dim1, align 4
  %mul122 = mul nsw i32 %154, %155
  %add123 = add nsw i32 %153, %mul122
  %idxprom124 = sext i32 %add123 to i64
  %arrayidx125 = getelementptr inbounds double, ptr %152, i64 %idxprom124
  %156 = load ptr, ptr %y.addr, align 8
  %157 = load i32, ptr %i__, align 4
  %158 = load i32, ptr %y_dim1, align 4
  %mul126 = mul nsw i32 %157, %158
  %add127 = add nsw i32 %mul126, 1
  %idxprom128 = sext i32 %add127 to i64
  %arrayidx129 = getelementptr inbounds double, ptr %156, i64 %idxprom128
  %call130 = call i32 @dgemv_(ptr noundef @.str.1, ptr noundef %i__2, ptr noundef %i__3, ptr noundef @c_b5, ptr noundef %arrayidx121, ptr noundef %151, ptr noundef %arrayidx125, ptr noundef @c__1, ptr noundef @c_b16, ptr noundef %arrayidx129, ptr noundef @c__1)
  %159 = load i32, ptr %i__, align 4
  %sub131 = sub nsw i32 %159, 1
  store i32 %sub131, ptr %i__2, align 4
  %160 = load ptr, ptr %n.addr, align 8
  %161 = load i32, ptr %160, align 4
  %162 = load i32, ptr %i__, align 4
  %sub132 = sub nsw i32 %161, %162
  store i32 %sub132, ptr %i__3, align 4
  %163 = load ptr, ptr %a.addr, align 8
  %164 = load i32, ptr %i__, align 4
  %add133 = add nsw i32 %164, 1
  %165 = load i32, ptr %a_dim1, align 4
  %mul134 = mul nsw i32 %add133, %165
  %add135 = add nsw i32 %mul134, 1
  %idxprom136 = sext i32 %add135 to i64
  %arrayidx137 = getelementptr inbounds double, ptr %163, i64 %idxprom136
  %166 = load ptr, ptr %lda.addr, align 8
  %167 = load ptr, ptr %y.addr, align 8
  %168 = load i32, ptr %i__, align 4
  %169 = load i32, ptr %y_dim1, align 4
  %mul138 = mul nsw i32 %168, %169
  %add139 = add nsw i32 %mul138, 1
  %idxprom140 = sext i32 %add139 to i64
  %arrayidx141 = getelementptr inbounds double, ptr %167, i64 %idxprom140
  %170 = load ptr, ptr %y.addr, align 8
  %171 = load i32, ptr %i__, align 4
  %add142 = add nsw i32 %171, 1
  %172 = load i32, ptr %i__, align 4
  %173 = load i32, ptr %y_dim1, align 4
  %mul143 = mul nsw i32 %172, %173
  %add144 = add nsw i32 %add142, %mul143
  %idxprom145 = sext i32 %add144 to i64
  %arrayidx146 = getelementptr inbounds double, ptr %170, i64 %idxprom145
  %call147 = call i32 @dgemv_(ptr noundef @.str.1, ptr noundef %i__2, ptr noundef %i__3, ptr noundef @c_b4, ptr noundef %arrayidx137, ptr noundef %166, ptr noundef %arrayidx141, ptr noundef @c__1, ptr noundef @c_b5, ptr noundef %arrayidx146, ptr noundef @c__1)
  %174 = load ptr, ptr %n.addr, align 8
  %175 = load i32, ptr %174, align 4
  %176 = load i32, ptr %i__, align 4
  %sub148 = sub nsw i32 %175, %176
  store i32 %sub148, ptr %i__2, align 4
  %177 = load ptr, ptr %tauq.addr, align 8
  %178 = load i32, ptr %i__, align 4
  %idxprom149 = sext i32 %178 to i64
  %arrayidx150 = getelementptr inbounds double, ptr %177, i64 %idxprom149
  %179 = load ptr, ptr %y.addr, align 8
  %180 = load i32, ptr %i__, align 4
  %add151 = add nsw i32 %180, 1
  %181 = load i32, ptr %i__, align 4
  %182 = load i32, ptr %y_dim1, align 4
  %mul152 = mul nsw i32 %181, %182
  %add153 = add nsw i32 %add151, %mul152
  %idxprom154 = sext i32 %add153 to i64
  %arrayidx155 = getelementptr inbounds double, ptr %179, i64 %idxprom154
  %call156 = call i32 @dscal_(ptr noundef %i__2, ptr noundef %arrayidx150, ptr noundef %arrayidx155, ptr noundef @c__1)
  %183 = load ptr, ptr %n.addr, align 8
  %184 = load i32, ptr %183, align 4
  %185 = load i32, ptr %i__, align 4
  %sub157 = sub nsw i32 %184, %185
  store i32 %sub157, ptr %i__2, align 4
  %186 = load ptr, ptr %y.addr, align 8
  %187 = load i32, ptr %i__, align 4
  %add158 = add nsw i32 %187, 1
  %188 = load i32, ptr %y_dim1, align 4
  %add159 = add nsw i32 %add158, %188
  %idxprom160 = sext i32 %add159 to i64
  %arrayidx161 = getelementptr inbounds double, ptr %186, i64 %idxprom160
  %189 = load ptr, ptr %ldy.addr, align 8
  %190 = load ptr, ptr %a.addr, align 8
  %191 = load i32, ptr %i__, align 4
  %192 = load i32, ptr %a_dim1, align 4
  %add162 = add nsw i32 %191, %192
  %idxprom163 = sext i32 %add162 to i64
  %arrayidx164 = getelementptr inbounds double, ptr %190, i64 %idxprom163
  %193 = load ptr, ptr %lda.addr, align 8
  %194 = load ptr, ptr %a.addr, align 8
  %195 = load i32, ptr %i__, align 4
  %196 = load i32, ptr %i__, align 4
  %add165 = add nsw i32 %196, 1
  %197 = load i32, ptr %a_dim1, align 4
  %mul166 = mul nsw i32 %add165, %197
  %add167 = add nsw i32 %195, %mul166
  %idxprom168 = sext i32 %add167 to i64
  %arrayidx169 = getelementptr inbounds double, ptr %194, i64 %idxprom168
  %198 = load ptr, ptr %lda.addr, align 8
  %call170 = call i32 @dgemv_(ptr noundef @.str, ptr noundef %i__2, ptr noundef %i__, ptr noundef @c_b4, ptr noundef %arrayidx161, ptr noundef %189, ptr noundef %arrayidx164, ptr noundef %193, ptr noundef @c_b5, ptr noundef %arrayidx169, ptr noundef %198)
  %199 = load i32, ptr %i__, align 4
  %sub171 = sub nsw i32 %199, 1
  store i32 %sub171, ptr %i__2, align 4
  %200 = load ptr, ptr %n.addr, align 8
  %201 = load i32, ptr %200, align 4
  %202 = load i32, ptr %i__, align 4
  %sub172 = sub nsw i32 %201, %202
  store i32 %sub172, ptr %i__3, align 4
  %203 = load ptr, ptr %a.addr, align 8
  %204 = load i32, ptr %i__, align 4
  %add173 = add nsw i32 %204, 1
  %205 = load i32, ptr %a_dim1, align 4
  %mul174 = mul nsw i32 %add173, %205
  %add175 = add nsw i32 %mul174, 1
  %idxprom176 = sext i32 %add175 to i64
  %arrayidx177 = getelementptr inbounds double, ptr %203, i64 %idxprom176
  %206 = load ptr, ptr %lda.addr, align 8
  %207 = load ptr, ptr %x.addr, align 8
  %208 = load i32, ptr %i__, align 4
  %209 = load i32, ptr %x_dim1, align 4
  %add178 = add nsw i32 %208, %209
  %idxprom179 = sext i32 %add178 to i64
  %arrayidx180 = getelementptr inbounds double, ptr %207, i64 %idxprom179
  %210 = load ptr, ptr %ldx.addr, align 8
  %211 = load ptr, ptr %a.addr, align 8
  %212 = load i32, ptr %i__, align 4
  %213 = load i32, ptr %i__, align 4
  %add181 = add nsw i32 %213, 1
  %214 = load i32, ptr %a_dim1, align 4
  %mul182 = mul nsw i32 %add181, %214
  %add183 = add nsw i32 %212, %mul182
  %idxprom184 = sext i32 %add183 to i64
  %arrayidx185 = getelementptr inbounds double, ptr %211, i64 %idxprom184
  %215 = load ptr, ptr %lda.addr, align 8
  %call186 = call i32 @dgemv_(ptr noundef @.str.1, ptr noundef %i__2, ptr noundef %i__3, ptr noundef @c_b4, ptr noundef %arrayidx177, ptr noundef %206, ptr noundef %arrayidx180, ptr noundef %210, ptr noundef @c_b5, ptr noundef %arrayidx185, ptr noundef %215)
  %216 = load ptr, ptr %n.addr, align 8
  %217 = load i32, ptr %216, align 4
  %218 = load i32, ptr %i__, align 4
  %sub187 = sub nsw i32 %217, %218
  store i32 %sub187, ptr %i__2, align 4
  %219 = load i32, ptr %i__, align 4
  %add188 = add nsw i32 %219, 2
  store i32 %add188, ptr %i__3, align 4
  %220 = load ptr, ptr %a.addr, align 8
  %221 = load i32, ptr %i__, align 4
  %222 = load i32, ptr %i__, align 4
  %add189 = add nsw i32 %222, 1
  %223 = load i32, ptr %a_dim1, align 4
  %mul190 = mul nsw i32 %add189, %223
  %add191 = add nsw i32 %221, %mul190
  %idxprom192 = sext i32 %add191 to i64
  %arrayidx193 = getelementptr inbounds double, ptr %220, i64 %idxprom192
  %224 = load ptr, ptr %a.addr, align 8
  %225 = load i32, ptr %i__, align 4
  %226 = load i32, ptr %i__3, align 4
  %227 = load ptr, ptr %n.addr, align 8
  %228 = load i32, ptr %227, align 4
  %cmp194 = icmp sle i32 %226, %228
  br i1 %cmp194, label %cond.true195, label %cond.false196

cond.true195:                                     ; preds = %if.then62
  %229 = load i32, ptr %i__3, align 4
  br label %cond.end197

cond.false196:                                    ; preds = %if.then62
  %230 = load ptr, ptr %n.addr, align 8
  %231 = load i32, ptr %230, align 4
  br label %cond.end197

cond.end197:                                      ; preds = %cond.false196, %cond.true195
  %cond198 = phi i32 [ %229, %cond.true195 ], [ %231, %cond.false196 ]
  %232 = load i32, ptr %a_dim1, align 4
  %mul199 = mul nsw i32 %cond198, %232
  %add200 = add nsw i32 %225, %mul199
  %idxprom201 = sext i32 %add200 to i64
  %arrayidx202 = getelementptr inbounds double, ptr %224, i64 %idxprom201
  %233 = load ptr, ptr %lda.addr, align 8
  %234 = load ptr, ptr %taup.addr, align 8
  %235 = load i32, ptr %i__, align 4
  %idxprom203 = sext i32 %235 to i64
  %arrayidx204 = getelementptr inbounds double, ptr %234, i64 %idxprom203
  %call205 = call i32 @dlarfg_(ptr noundef %i__2, ptr noundef %arrayidx193, ptr noundef %arrayidx202, ptr noundef %233, ptr noundef %arrayidx204)
  %236 = load ptr, ptr %a.addr, align 8
  %237 = load i32, ptr %i__, align 4
  %238 = load i32, ptr %i__, align 4
  %add206 = add nsw i32 %238, 1
  %239 = load i32, ptr %a_dim1, align 4
  %mul207 = mul nsw i32 %add206, %239
  %add208 = add nsw i32 %237, %mul207
  %idxprom209 = sext i32 %add208 to i64
  %arrayidx210 = getelementptr inbounds double, ptr %236, i64 %idxprom209
  %240 = load double, ptr %arrayidx210, align 8
  %241 = load ptr, ptr %e.addr, align 8
  %242 = load i32, ptr %i__, align 4
  %idxprom211 = sext i32 %242 to i64
  %arrayidx212 = getelementptr inbounds double, ptr %241, i64 %idxprom211
  store double %240, ptr %arrayidx212, align 8
  %243 = load ptr, ptr %a.addr, align 8
  %244 = load i32, ptr %i__, align 4
  %245 = load i32, ptr %i__, align 4
  %add213 = add nsw i32 %245, 1
  %246 = load i32, ptr %a_dim1, align 4
  %mul214 = mul nsw i32 %add213, %246
  %add215 = add nsw i32 %244, %mul214
  %idxprom216 = sext i32 %add215 to i64
  %arrayidx217 = getelementptr inbounds double, ptr %243, i64 %idxprom216
  store double 1.000000e+00, ptr %arrayidx217, align 8
  %247 = load ptr, ptr %m.addr, align 8
  %248 = load i32, ptr %247, align 4
  %249 = load i32, ptr %i__, align 4
  %sub218 = sub nsw i32 %248, %249
  store i32 %sub218, ptr %i__2, align 4
  %250 = load ptr, ptr %n.addr, align 8
  %251 = load i32, ptr %250, align 4
  %252 = load i32, ptr %i__, align 4
  %sub219 = sub nsw i32 %251, %252
  store i32 %sub219, ptr %i__3, align 4
  %253 = load ptr, ptr %a.addr, align 8
  %254 = load i32, ptr %i__, align 4
  %add220 = add nsw i32 %254, 1
  %255 = load i32, ptr %i__, align 4
  %add221 = add nsw i32 %255, 1
  %256 = load i32, ptr %a_dim1, align 4
  %mul222 = mul nsw i32 %add221, %256
  %add223 = add nsw i32 %add220, %mul222
  %idxprom224 = sext i32 %add223 to i64
  %arrayidx225 = getelementptr inbounds double, ptr %253, i64 %idxprom224
  %257 = load ptr, ptr %lda.addr, align 8
  %258 = load ptr, ptr %a.addr, align 8
  %259 = load i32, ptr %i__, align 4
  %260 = load i32, ptr %i__, align 4
  %add226 = add nsw i32 %260, 1
  %261 = load i32, ptr %a_dim1, align 4
  %mul227 = mul nsw i32 %add226, %261
  %add228 = add nsw i32 %259, %mul227
  %idxprom229 = sext i32 %add228 to i64
  %arrayidx230 = getelementptr inbounds double, ptr %258, i64 %idxprom229
  %262 = load ptr, ptr %lda.addr, align 8
  %263 = load ptr, ptr %x.addr, align 8
  %264 = load i32, ptr %i__, align 4
  %add231 = add nsw i32 %264, 1
  %265 = load i32, ptr %i__, align 4
  %266 = load i32, ptr %x_dim1, align 4
  %mul232 = mul nsw i32 %265, %266
  %add233 = add nsw i32 %add231, %mul232
  %idxprom234 = sext i32 %add233 to i64
  %arrayidx235 = getelementptr inbounds double, ptr %263, i64 %idxprom234
  %call236 = call i32 @dgemv_(ptr noundef @.str, ptr noundef %i__2, ptr noundef %i__3, ptr noundef @c_b5, ptr noundef %arrayidx225, ptr noundef %257, ptr noundef %arrayidx230, ptr noundef %262, ptr noundef @c_b16, ptr noundef %arrayidx235, ptr noundef @c__1)
  %267 = load ptr, ptr %n.addr, align 8
  %268 = load i32, ptr %267, align 4
  %269 = load i32, ptr %i__, align 4
  %sub237 = sub nsw i32 %268, %269
  store i32 %sub237, ptr %i__2, align 4
  %270 = load ptr, ptr %y.addr, align 8
  %271 = load i32, ptr %i__, align 4
  %add238 = add nsw i32 %271, 1
  %272 = load i32, ptr %y_dim1, align 4
  %add239 = add nsw i32 %add238, %272
  %idxprom240 = sext i32 %add239 to i64
  %arrayidx241 = getelementptr inbounds double, ptr %270, i64 %idxprom240
  %273 = load ptr, ptr %ldy.addr, align 8
  %274 = load ptr, ptr %a.addr, align 8
  %275 = load i32, ptr %i__, align 4
  %276 = load i32, ptr %i__, align 4
  %add242 = add nsw i32 %276, 1
  %277 = load i32, ptr %a_dim1, align 4
  %mul243 = mul nsw i32 %add242, %277
  %add244 = add nsw i32 %275, %mul243
  %idxprom245 = sext i32 %add244 to i64
  %arrayidx246 = getelementptr inbounds double, ptr %274, i64 %idxprom245
  %278 = load ptr, ptr %lda.addr, align 8
  %279 = load ptr, ptr %x.addr, align 8
  %280 = load i32, ptr %i__, align 4
  %281 = load i32, ptr %x_dim1, align 4
  %mul247 = mul nsw i32 %280, %281
  %add248 = add nsw i32 %mul247, 1
  %idxprom249 = sext i32 %add248 to i64
  %arrayidx250 = getelementptr inbounds double, ptr %279, i64 %idxprom249
  %call251 = call i32 @dgemv_(ptr noundef @.str.1, ptr noundef %i__2, ptr noundef %i__, ptr noundef @c_b5, ptr noundef %arrayidx241, ptr noundef %273, ptr noundef %arrayidx246, ptr noundef %278, ptr noundef @c_b16, ptr noundef %arrayidx250, ptr noundef @c__1)
  %282 = load ptr, ptr %m.addr, align 8
  %283 = load i32, ptr %282, align 4
  %284 = load i32, ptr %i__, align 4
  %sub252 = sub nsw i32 %283, %284
  store i32 %sub252, ptr %i__2, align 4
  %285 = load ptr, ptr %a.addr, align 8
  %286 = load i32, ptr %i__, align 4
  %add253 = add nsw i32 %286, 1
  %287 = load i32, ptr %a_dim1, align 4
  %add254 = add nsw i32 %add253, %287
  %idxprom255 = sext i32 %add254 to i64
  %arrayidx256 = getelementptr inbounds double, ptr %285, i64 %idxprom255
  %288 = load ptr, ptr %lda.addr, align 8
  %289 = load ptr, ptr %x.addr, align 8
  %290 = load i32, ptr %i__, align 4
  %291 = load i32, ptr %x_dim1, align 4
  %mul257 = mul nsw i32 %290, %291
  %add258 = add nsw i32 %mul257, 1
  %idxprom259 = sext i32 %add258 to i64
  %arrayidx260 = getelementptr inbounds double, ptr %289, i64 %idxprom259
  %292 = load ptr, ptr %x.addr, align 8
  %293 = load i32, ptr %i__, align 4
  %add261 = add nsw i32 %293, 1
  %294 = load i32, ptr %i__, align 4
  %295 = load i32, ptr %x_dim1, align 4
  %mul262 = mul nsw i32 %294, %295
  %add263 = add nsw i32 %add261, %mul262
  %idxprom264 = sext i32 %add263 to i64
  %arrayidx265 = getelementptr inbounds double, ptr %292, i64 %idxprom264
  %call266 = call i32 @dgemv_(ptr noundef @.str, ptr noundef %i__2, ptr noundef %i__, ptr noundef @c_b4, ptr noundef %arrayidx256, ptr noundef %288, ptr noundef %arrayidx260, ptr noundef @c__1, ptr noundef @c_b5, ptr noundef %arrayidx265, ptr noundef @c__1)
  %296 = load i32, ptr %i__, align 4
  %sub267 = sub nsw i32 %296, 1
  store i32 %sub267, ptr %i__2, align 4
  %297 = load ptr, ptr %n.addr, align 8
  %298 = load i32, ptr %297, align 4
  %299 = load i32, ptr %i__, align 4
  %sub268 = sub nsw i32 %298, %299
  store i32 %sub268, ptr %i__3, align 4
  %300 = load ptr, ptr %a.addr, align 8
  %301 = load i32, ptr %i__, align 4
  %add269 = add nsw i32 %301, 1
  %302 = load i32, ptr %a_dim1, align 4
  %mul270 = mul nsw i32 %add269, %302
  %add271 = add nsw i32 %mul270, 1
  %idxprom272 = sext i32 %add271 to i64
  %arrayidx273 = getelementptr inbounds double, ptr %300, i64 %idxprom272
  %303 = load ptr, ptr %lda.addr, align 8
  %304 = load ptr, ptr %a.addr, align 8
  %305 = load i32, ptr %i__, align 4
  %306 = load i32, ptr %i__, align 4
  %add274 = add nsw i32 %306, 1
  %307 = load i32, ptr %a_dim1, align 4
  %mul275 = mul nsw i32 %add274, %307
  %add276 = add nsw i32 %305, %mul275
  %idxprom277 = sext i32 %add276 to i64
  %arrayidx278 = getelementptr inbounds double, ptr %304, i64 %idxprom277
  %308 = load ptr, ptr %lda.addr, align 8
  %309 = load ptr, ptr %x.addr, align 8
  %310 = load i32, ptr %i__, align 4
  %311 = load i32, ptr %x_dim1, align 4
  %mul279 = mul nsw i32 %310, %311
  %add280 = add nsw i32 %mul279, 1
  %idxprom281 = sext i32 %add280 to i64
  %arrayidx282 = getelementptr inbounds double, ptr %309, i64 %idxprom281
  %call283 = call i32 @dgemv_(ptr noundef @.str, ptr noundef %i__2, ptr noundef %i__3, ptr noundef @c_b5, ptr noundef %arrayidx273, ptr noundef %303, ptr noundef %arrayidx278, ptr noundef %308, ptr noundef @c_b16, ptr noundef %arrayidx282, ptr noundef @c__1)
  %312 = load ptr, ptr %m.addr, align 8
  %313 = load i32, ptr %312, align 4
  %314 = load i32, ptr %i__, align 4
  %sub284 = sub nsw i32 %313, %314
  store i32 %sub284, ptr %i__2, align 4
  %315 = load i32, ptr %i__, align 4
  %sub285 = sub nsw i32 %315, 1
  store i32 %sub285, ptr %i__3, align 4
  %316 = load ptr, ptr %x.addr, align 8
  %317 = load i32, ptr %i__, align 4
  %add286 = add nsw i32 %317, 1
  %318 = load i32, ptr %x_dim1, align 4
  %add287 = add nsw i32 %add286, %318
  %idxprom288 = sext i32 %add287 to i64
  %arrayidx289 = getelementptr inbounds double, ptr %316, i64 %idxprom288
  %319 = load ptr, ptr %ldx.addr, align 8
  %320 = load ptr, ptr %x.addr, align 8
  %321 = load i32, ptr %i__, align 4
  %322 = load i32, ptr %x_dim1, align 4
  %mul290 = mul nsw i32 %321, %322
  %add291 = add nsw i32 %mul290, 1
  %idxprom292 = sext i32 %add291 to i64
  %arrayidx293 = getelementptr inbounds double, ptr %320, i64 %idxprom292
  %323 = load ptr, ptr %x.addr, align 8
  %324 = load i32, ptr %i__, align 4
  %add294 = add nsw i32 %324, 1
  %325 = load i32, ptr %i__, align 4
  %326 = load i32, ptr %x_dim1, align 4
  %mul295 = mul nsw i32 %325, %326
  %add296 = add nsw i32 %add294, %mul295
  %idxprom297 = sext i32 %add296 to i64
  %arrayidx298 = getelementptr inbounds double, ptr %323, i64 %idxprom297
  %call299 = call i32 @dgemv_(ptr noundef @.str, ptr noundef %i__2, ptr noundef %i__3, ptr noundef @c_b4, ptr noundef %arrayidx289, ptr noundef %319, ptr noundef %arrayidx293, ptr noundef @c__1, ptr noundef @c_b5, ptr noundef %arrayidx298, ptr noundef @c__1)
  %327 = load ptr, ptr %m.addr, align 8
  %328 = load i32, ptr %327, align 4
  %329 = load i32, ptr %i__, align 4
  %sub300 = sub nsw i32 %328, %329
  store i32 %sub300, ptr %i__2, align 4
  %330 = load ptr, ptr %taup.addr, align 8
  %331 = load i32, ptr %i__, align 4
  %idxprom301 = sext i32 %331 to i64
  %arrayidx302 = getelementptr inbounds double, ptr %330, i64 %idxprom301
  %332 = load ptr, ptr %x.addr, align 8
  %333 = load i32, ptr %i__, align 4
  %add303 = add nsw i32 %333, 1
  %334 = load i32, ptr %i__, align 4
  %335 = load i32, ptr %x_dim1, align 4
  %mul304 = mul nsw i32 %334, %335
  %add305 = add nsw i32 %add303, %mul304
  %idxprom306 = sext i32 %add305 to i64
  %arrayidx307 = getelementptr inbounds double, ptr %332, i64 %idxprom306
  %call308 = call i32 @dscal_(ptr noundef %i__2, ptr noundef %arrayidx302, ptr noundef %arrayidx307, ptr noundef @c__1)
  br label %if.end309

if.end309:                                        ; preds = %cond.end197, %cond.end
  br label %for.inc

for.inc:                                          ; preds = %if.end309
  %336 = load i32, ptr %i__, align 4
  %inc = add nsw i32 %336, 1
  store i32 %inc, ptr %i__, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  br label %if.end619

if.else:                                          ; preds = %if.end
  %337 = load ptr, ptr %nb.addr, align 8
  %338 = load i32, ptr %337, align 4
  store i32 %338, ptr %i__1, align 4
  store i32 1, ptr %i__, align 4
  br label %for.cond310

for.cond310:                                      ; preds = %for.inc616, %if.else
  %339 = load i32, ptr %i__, align 4
  %340 = load i32, ptr %i__1, align 4
  %cmp311 = icmp sle i32 %339, %340
  br i1 %cmp311, label %for.body312, label %for.end618

for.body312:                                      ; preds = %for.cond310
  %341 = load ptr, ptr %n.addr, align 8
  %342 = load i32, ptr %341, align 4
  %343 = load i32, ptr %i__, align 4
  %sub313 = sub nsw i32 %342, %343
  %add314 = add nsw i32 %sub313, 1
  store i32 %add314, ptr %i__2, align 4
  %344 = load i32, ptr %i__, align 4
  %sub315 = sub nsw i32 %344, 1
  store i32 %sub315, ptr %i__3, align 4
  %345 = load ptr, ptr %y.addr, align 8
  %346 = load i32, ptr %i__, align 4
  %347 = load i32, ptr %y_dim1, align 4
  %add316 = add nsw i32 %346, %347
  %idxprom317 = sext i32 %add316 to i64
  %arrayidx318 = getelementptr inbounds double, ptr %345, i64 %idxprom317
  %348 = load ptr, ptr %ldy.addr, align 8
  %349 = load ptr, ptr %a.addr, align 8
  %350 = load i32, ptr %i__, align 4
  %351 = load i32, ptr %a_dim1, align 4
  %add319 = add nsw i32 %350, %351
  %idxprom320 = sext i32 %add319 to i64
  %arrayidx321 = getelementptr inbounds double, ptr %349, i64 %idxprom320
  %352 = load ptr, ptr %lda.addr, align 8
  %353 = load ptr, ptr %a.addr, align 8
  %354 = load i32, ptr %i__, align 4
  %355 = load i32, ptr %i__, align 4
  %356 = load i32, ptr %a_dim1, align 4
  %mul322 = mul nsw i32 %355, %356
  %add323 = add nsw i32 %354, %mul322
  %idxprom324 = sext i32 %add323 to i64
  %arrayidx325 = getelementptr inbounds double, ptr %353, i64 %idxprom324
  %357 = load ptr, ptr %lda.addr, align 8
  %call326 = call i32 @dgemv_(ptr noundef @.str, ptr noundef %i__2, ptr noundef %i__3, ptr noundef @c_b4, ptr noundef %arrayidx318, ptr noundef %348, ptr noundef %arrayidx321, ptr noundef %352, ptr noundef @c_b5, ptr noundef %arrayidx325, ptr noundef %357)
  %358 = load i32, ptr %i__, align 4
  %sub327 = sub nsw i32 %358, 1
  store i32 %sub327, ptr %i__2, align 4
  %359 = load ptr, ptr %n.addr, align 8
  %360 = load i32, ptr %359, align 4
  %361 = load i32, ptr %i__, align 4
  %sub328 = sub nsw i32 %360, %361
  %add329 = add nsw i32 %sub328, 1
  store i32 %add329, ptr %i__3, align 4
  %362 = load ptr, ptr %a.addr, align 8
  %363 = load i32, ptr %i__, align 4
  %364 = load i32, ptr %a_dim1, align 4
  %mul330 = mul nsw i32 %363, %364
  %add331 = add nsw i32 %mul330, 1
  %idxprom332 = sext i32 %add331 to i64
  %arrayidx333 = getelementptr inbounds double, ptr %362, i64 %idxprom332
  %365 = load ptr, ptr %lda.addr, align 8
  %366 = load ptr, ptr %x.addr, align 8
  %367 = load i32, ptr %i__, align 4
  %368 = load i32, ptr %x_dim1, align 4
  %add334 = add nsw i32 %367, %368
  %idxprom335 = sext i32 %add334 to i64
  %arrayidx336 = getelementptr inbounds double, ptr %366, i64 %idxprom335
  %369 = load ptr, ptr %ldx.addr, align 8
  %370 = load ptr, ptr %a.addr, align 8
  %371 = load i32, ptr %i__, align 4
  %372 = load i32, ptr %i__, align 4
  %373 = load i32, ptr %a_dim1, align 4
  %mul337 = mul nsw i32 %372, %373
  %add338 = add nsw i32 %371, %mul337
  %idxprom339 = sext i32 %add338 to i64
  %arrayidx340 = getelementptr inbounds double, ptr %370, i64 %idxprom339
  %374 = load ptr, ptr %lda.addr, align 8
  %call341 = call i32 @dgemv_(ptr noundef @.str.1, ptr noundef %i__2, ptr noundef %i__3, ptr noundef @c_b4, ptr noundef %arrayidx333, ptr noundef %365, ptr noundef %arrayidx336, ptr noundef %369, ptr noundef @c_b5, ptr noundef %arrayidx340, ptr noundef %374)
  %375 = load ptr, ptr %n.addr, align 8
  %376 = load i32, ptr %375, align 4
  %377 = load i32, ptr %i__, align 4
  %sub342 = sub nsw i32 %376, %377
  %add343 = add nsw i32 %sub342, 1
  store i32 %add343, ptr %i__2, align 4
  %378 = load i32, ptr %i__, align 4
  %add344 = add nsw i32 %378, 1
  store i32 %add344, ptr %i__3, align 4
  %379 = load ptr, ptr %a.addr, align 8
  %380 = load i32, ptr %i__, align 4
  %381 = load i32, ptr %i__, align 4
  %382 = load i32, ptr %a_dim1, align 4
  %mul345 = mul nsw i32 %381, %382
  %add346 = add nsw i32 %380, %mul345
  %idxprom347 = sext i32 %add346 to i64
  %arrayidx348 = getelementptr inbounds double, ptr %379, i64 %idxprom347
  %383 = load ptr, ptr %a.addr, align 8
  %384 = load i32, ptr %i__, align 4
  %385 = load i32, ptr %i__3, align 4
  %386 = load ptr, ptr %n.addr, align 8
  %387 = load i32, ptr %386, align 4
  %cmp349 = icmp sle i32 %385, %387
  br i1 %cmp349, label %cond.true350, label %cond.false351

cond.true350:                                     ; preds = %for.body312
  %388 = load i32, ptr %i__3, align 4
  br label %cond.end352

cond.false351:                                    ; preds = %for.body312
  %389 = load ptr, ptr %n.addr, align 8
  %390 = load i32, ptr %389, align 4
  br label %cond.end352

cond.end352:                                      ; preds = %cond.false351, %cond.true350
  %cond353 = phi i32 [ %388, %cond.true350 ], [ %390, %cond.false351 ]
  %391 = load i32, ptr %a_dim1, align 4
  %mul354 = mul nsw i32 %cond353, %391
  %add355 = add nsw i32 %384, %mul354
  %idxprom356 = sext i32 %add355 to i64
  %arrayidx357 = getelementptr inbounds double, ptr %383, i64 %idxprom356
  %392 = load ptr, ptr %lda.addr, align 8
  %393 = load ptr, ptr %taup.addr, align 8
  %394 = load i32, ptr %i__, align 4
  %idxprom358 = sext i32 %394 to i64
  %arrayidx359 = getelementptr inbounds double, ptr %393, i64 %idxprom358
  %call360 = call i32 @dlarfg_(ptr noundef %i__2, ptr noundef %arrayidx348, ptr noundef %arrayidx357, ptr noundef %392, ptr noundef %arrayidx359)
  %395 = load ptr, ptr %a.addr, align 8
  %396 = load i32, ptr %i__, align 4
  %397 = load i32, ptr %i__, align 4
  %398 = load i32, ptr %a_dim1, align 4
  %mul361 = mul nsw i32 %397, %398
  %add362 = add nsw i32 %396, %mul361
  %idxprom363 = sext i32 %add362 to i64
  %arrayidx364 = getelementptr inbounds double, ptr %395, i64 %idxprom363
  %399 = load double, ptr %arrayidx364, align 8
  %400 = load ptr, ptr %d__.addr, align 8
  %401 = load i32, ptr %i__, align 4
  %idxprom365 = sext i32 %401 to i64
  %arrayidx366 = getelementptr inbounds double, ptr %400, i64 %idxprom365
  store double %399, ptr %arrayidx366, align 8
  %402 = load i32, ptr %i__, align 4
  %403 = load ptr, ptr %m.addr, align 8
  %404 = load i32, ptr %403, align 4
  %cmp367 = icmp slt i32 %402, %404
  br i1 %cmp367, label %if.then368, label %if.end615

if.then368:                                       ; preds = %cond.end352
  %405 = load ptr, ptr %a.addr, align 8
  %406 = load i32, ptr %i__, align 4
  %407 = load i32, ptr %i__, align 4
  %408 = load i32, ptr %a_dim1, align 4
  %mul369 = mul nsw i32 %407, %408
  %add370 = add nsw i32 %406, %mul369
  %idxprom371 = sext i32 %add370 to i64
  %arrayidx372 = getelementptr inbounds double, ptr %405, i64 %idxprom371
  store double 1.000000e+00, ptr %arrayidx372, align 8
  %409 = load ptr, ptr %m.addr, align 8
  %410 = load i32, ptr %409, align 4
  %411 = load i32, ptr %i__, align 4
  %sub373 = sub nsw i32 %410, %411
  store i32 %sub373, ptr %i__2, align 4
  %412 = load ptr, ptr %n.addr, align 8
  %413 = load i32, ptr %412, align 4
  %414 = load i32, ptr %i__, align 4
  %sub374 = sub nsw i32 %413, %414
  %add375 = add nsw i32 %sub374, 1
  store i32 %add375, ptr %i__3, align 4
  %415 = load ptr, ptr %a.addr, align 8
  %416 = load i32, ptr %i__, align 4
  %add376 = add nsw i32 %416, 1
  %417 = load i32, ptr %i__, align 4
  %418 = load i32, ptr %a_dim1, align 4
  %mul377 = mul nsw i32 %417, %418
  %add378 = add nsw i32 %add376, %mul377
  %idxprom379 = sext i32 %add378 to i64
  %arrayidx380 = getelementptr inbounds double, ptr %415, i64 %idxprom379
  %419 = load ptr, ptr %lda.addr, align 8
  %420 = load ptr, ptr %a.addr, align 8
  %421 = load i32, ptr %i__, align 4
  %422 = load i32, ptr %i__, align 4
  %423 = load i32, ptr %a_dim1, align 4
  %mul381 = mul nsw i32 %422, %423
  %add382 = add nsw i32 %421, %mul381
  %idxprom383 = sext i32 %add382 to i64
  %arrayidx384 = getelementptr inbounds double, ptr %420, i64 %idxprom383
  %424 = load ptr, ptr %lda.addr, align 8
  %425 = load ptr, ptr %x.addr, align 8
  %426 = load i32, ptr %i__, align 4
  %add385 = add nsw i32 %426, 1
  %427 = load i32, ptr %i__, align 4
  %428 = load i32, ptr %x_dim1, align 4
  %mul386 = mul nsw i32 %427, %428
  %add387 = add nsw i32 %add385, %mul386
  %idxprom388 = sext i32 %add387 to i64
  %arrayidx389 = getelementptr inbounds double, ptr %425, i64 %idxprom388
  %call390 = call i32 @dgemv_(ptr noundef @.str, ptr noundef %i__2, ptr noundef %i__3, ptr noundef @c_b5, ptr noundef %arrayidx380, ptr noundef %419, ptr noundef %arrayidx384, ptr noundef %424, ptr noundef @c_b16, ptr noundef %arrayidx389, ptr noundef @c__1)
  %429 = load ptr, ptr %n.addr, align 8
  %430 = load i32, ptr %429, align 4
  %431 = load i32, ptr %i__, align 4
  %sub391 = sub nsw i32 %430, %431
  %add392 = add nsw i32 %sub391, 1
  store i32 %add392, ptr %i__2, align 4
  %432 = load i32, ptr %i__, align 4
  %sub393 = sub nsw i32 %432, 1
  store i32 %sub393, ptr %i__3, align 4
  %433 = load ptr, ptr %y.addr, align 8
  %434 = load i32, ptr %i__, align 4
  %435 = load i32, ptr %y_dim1, align 4
  %add394 = add nsw i32 %434, %435
  %idxprom395 = sext i32 %add394 to i64
  %arrayidx396 = getelementptr inbounds double, ptr %433, i64 %idxprom395
  %436 = load ptr, ptr %ldy.addr, align 8
  %437 = load ptr, ptr %a.addr, align 8
  %438 = load i32, ptr %i__, align 4
  %439 = load i32, ptr %i__, align 4
  %440 = load i32, ptr %a_dim1, align 4
  %mul397 = mul nsw i32 %439, %440
  %add398 = add nsw i32 %438, %mul397
  %idxprom399 = sext i32 %add398 to i64
  %arrayidx400 = getelementptr inbounds double, ptr %437, i64 %idxprom399
  %441 = load ptr, ptr %lda.addr, align 8
  %442 = load ptr, ptr %x.addr, align 8
  %443 = load i32, ptr %i__, align 4
  %444 = load i32, ptr %x_dim1, align 4
  %mul401 = mul nsw i32 %443, %444
  %add402 = add nsw i32 %mul401, 1
  %idxprom403 = sext i32 %add402 to i64
  %arrayidx404 = getelementptr inbounds double, ptr %442, i64 %idxprom403
  %call405 = call i32 @dgemv_(ptr noundef @.str.1, ptr noundef %i__2, ptr noundef %i__3, ptr noundef @c_b5, ptr noundef %arrayidx396, ptr noundef %436, ptr noundef %arrayidx400, ptr noundef %441, ptr noundef @c_b16, ptr noundef %arrayidx404, ptr noundef @c__1)
  %445 = load ptr, ptr %m.addr, align 8
  %446 = load i32, ptr %445, align 4
  %447 = load i32, ptr %i__, align 4
  %sub406 = sub nsw i32 %446, %447
  store i32 %sub406, ptr %i__2, align 4
  %448 = load i32, ptr %i__, align 4
  %sub407 = sub nsw i32 %448, 1
  store i32 %sub407, ptr %i__3, align 4
  %449 = load ptr, ptr %a.addr, align 8
  %450 = load i32, ptr %i__, align 4
  %add408 = add nsw i32 %450, 1
  %451 = load i32, ptr %a_dim1, align 4
  %add409 = add nsw i32 %add408, %451
  %idxprom410 = sext i32 %add409 to i64
  %arrayidx411 = getelementptr inbounds double, ptr %449, i64 %idxprom410
  %452 = load ptr, ptr %lda.addr, align 8
  %453 = load ptr, ptr %x.addr, align 8
  %454 = load i32, ptr %i__, align 4
  %455 = load i32, ptr %x_dim1, align 4
  %mul412 = mul nsw i32 %454, %455
  %add413 = add nsw i32 %mul412, 1
  %idxprom414 = sext i32 %add413 to i64
  %arrayidx415 = getelementptr inbounds double, ptr %453, i64 %idxprom414
  %456 = load ptr, ptr %x.addr, align 8
  %457 = load i32, ptr %i__, align 4
  %add416 = add nsw i32 %457, 1
  %458 = load i32, ptr %i__, align 4
  %459 = load i32, ptr %x_dim1, align 4
  %mul417 = mul nsw i32 %458, %459
  %add418 = add nsw i32 %add416, %mul417
  %idxprom419 = sext i32 %add418 to i64
  %arrayidx420 = getelementptr inbounds double, ptr %456, i64 %idxprom419
  %call421 = call i32 @dgemv_(ptr noundef @.str, ptr noundef %i__2, ptr noundef %i__3, ptr noundef @c_b4, ptr noundef %arrayidx411, ptr noundef %452, ptr noundef %arrayidx415, ptr noundef @c__1, ptr noundef @c_b5, ptr noundef %arrayidx420, ptr noundef @c__1)
  %460 = load i32, ptr %i__, align 4
  %sub422 = sub nsw i32 %460, 1
  store i32 %sub422, ptr %i__2, align 4
  %461 = load ptr, ptr %n.addr, align 8
  %462 = load i32, ptr %461, align 4
  %463 = load i32, ptr %i__, align 4
  %sub423 = sub nsw i32 %462, %463
  %add424 = add nsw i32 %sub423, 1
  store i32 %add424, ptr %i__3, align 4
  %464 = load ptr, ptr %a.addr, align 8
  %465 = load i32, ptr %i__, align 4
  %466 = load i32, ptr %a_dim1, align 4
  %mul425 = mul nsw i32 %465, %466
  %add426 = add nsw i32 %mul425, 1
  %idxprom427 = sext i32 %add426 to i64
  %arrayidx428 = getelementptr inbounds double, ptr %464, i64 %idxprom427
  %467 = load ptr, ptr %lda.addr, align 8
  %468 = load ptr, ptr %a.addr, align 8
  %469 = load i32, ptr %i__, align 4
  %470 = load i32, ptr %i__, align 4
  %471 = load i32, ptr %a_dim1, align 4
  %mul429 = mul nsw i32 %470, %471
  %add430 = add nsw i32 %469, %mul429
  %idxprom431 = sext i32 %add430 to i64
  %arrayidx432 = getelementptr inbounds double, ptr %468, i64 %idxprom431
  %472 = load ptr, ptr %lda.addr, align 8
  %473 = load ptr, ptr %x.addr, align 8
  %474 = load i32, ptr %i__, align 4
  %475 = load i32, ptr %x_dim1, align 4
  %mul433 = mul nsw i32 %474, %475
  %add434 = add nsw i32 %mul433, 1
  %idxprom435 = sext i32 %add434 to i64
  %arrayidx436 = getelementptr inbounds double, ptr %473, i64 %idxprom435
  %call437 = call i32 @dgemv_(ptr noundef @.str, ptr noundef %i__2, ptr noundef %i__3, ptr noundef @c_b5, ptr noundef %arrayidx428, ptr noundef %467, ptr noundef %arrayidx432, ptr noundef %472, ptr noundef @c_b16, ptr noundef %arrayidx436, ptr noundef @c__1)
  %476 = load ptr, ptr %m.addr, align 8
  %477 = load i32, ptr %476, align 4
  %478 = load i32, ptr %i__, align 4
  %sub438 = sub nsw i32 %477, %478
  store i32 %sub438, ptr %i__2, align 4
  %479 = load i32, ptr %i__, align 4
  %sub439 = sub nsw i32 %479, 1
  store i32 %sub439, ptr %i__3, align 4
  %480 = load ptr, ptr %x.addr, align 8
  %481 = load i32, ptr %i__, align 4
  %add440 = add nsw i32 %481, 1
  %482 = load i32, ptr %x_dim1, align 4
  %add441 = add nsw i32 %add440, %482
  %idxprom442 = sext i32 %add441 to i64
  %arrayidx443 = getelementptr inbounds double, ptr %480, i64 %idxprom442
  %483 = load ptr, ptr %ldx.addr, align 8
  %484 = load ptr, ptr %x.addr, align 8
  %485 = load i32, ptr %i__, align 4
  %486 = load i32, ptr %x_dim1, align 4
  %mul444 = mul nsw i32 %485, %486
  %add445 = add nsw i32 %mul444, 1
  %idxprom446 = sext i32 %add445 to i64
  %arrayidx447 = getelementptr inbounds double, ptr %484, i64 %idxprom446
  %487 = load ptr, ptr %x.addr, align 8
  %488 = load i32, ptr %i__, align 4
  %add448 = add nsw i32 %488, 1
  %489 = load i32, ptr %i__, align 4
  %490 = load i32, ptr %x_dim1, align 4
  %mul449 = mul nsw i32 %489, %490
  %add450 = add nsw i32 %add448, %mul449
  %idxprom451 = sext i32 %add450 to i64
  %arrayidx452 = getelementptr inbounds double, ptr %487, i64 %idxprom451
  %call453 = call i32 @dgemv_(ptr noundef @.str, ptr noundef %i__2, ptr noundef %i__3, ptr noundef @c_b4, ptr noundef %arrayidx443, ptr noundef %483, ptr noundef %arrayidx447, ptr noundef @c__1, ptr noundef @c_b5, ptr noundef %arrayidx452, ptr noundef @c__1)
  %491 = load ptr, ptr %m.addr, align 8
  %492 = load i32, ptr %491, align 4
  %493 = load i32, ptr %i__, align 4
  %sub454 = sub nsw i32 %492, %493
  store i32 %sub454, ptr %i__2, align 4
  %494 = load ptr, ptr %taup.addr, align 8
  %495 = load i32, ptr %i__, align 4
  %idxprom455 = sext i32 %495 to i64
  %arrayidx456 = getelementptr inbounds double, ptr %494, i64 %idxprom455
  %496 = load ptr, ptr %x.addr, align 8
  %497 = load i32, ptr %i__, align 4
  %add457 = add nsw i32 %497, 1
  %498 = load i32, ptr %i__, align 4
  %499 = load i32, ptr %x_dim1, align 4
  %mul458 = mul nsw i32 %498, %499
  %add459 = add nsw i32 %add457, %mul458
  %idxprom460 = sext i32 %add459 to i64
  %arrayidx461 = getelementptr inbounds double, ptr %496, i64 %idxprom460
  %call462 = call i32 @dscal_(ptr noundef %i__2, ptr noundef %arrayidx456, ptr noundef %arrayidx461, ptr noundef @c__1)
  %500 = load ptr, ptr %m.addr, align 8
  %501 = load i32, ptr %500, align 4
  %502 = load i32, ptr %i__, align 4
  %sub463 = sub nsw i32 %501, %502
  store i32 %sub463, ptr %i__2, align 4
  %503 = load i32, ptr %i__, align 4
  %sub464 = sub nsw i32 %503, 1
  store i32 %sub464, ptr %i__3, align 4
  %504 = load ptr, ptr %a.addr, align 8
  %505 = load i32, ptr %i__, align 4
  %add465 = add nsw i32 %505, 1
  %506 = load i32, ptr %a_dim1, align 4
  %add466 = add nsw i32 %add465, %506
  %idxprom467 = sext i32 %add466 to i64
  %arrayidx468 = getelementptr inbounds double, ptr %504, i64 %idxprom467
  %507 = load ptr, ptr %lda.addr, align 8
  %508 = load ptr, ptr %y.addr, align 8
  %509 = load i32, ptr %i__, align 4
  %510 = load i32, ptr %y_dim1, align 4
  %add469 = add nsw i32 %509, %510
  %idxprom470 = sext i32 %add469 to i64
  %arrayidx471 = getelementptr inbounds double, ptr %508, i64 %idxprom470
  %511 = load ptr, ptr %ldy.addr, align 8
  %512 = load ptr, ptr %a.addr, align 8
  %513 = load i32, ptr %i__, align 4
  %add472 = add nsw i32 %513, 1
  %514 = load i32, ptr %i__, align 4
  %515 = load i32, ptr %a_dim1, align 4
  %mul473 = mul nsw i32 %514, %515
  %add474 = add nsw i32 %add472, %mul473
  %idxprom475 = sext i32 %add474 to i64
  %arrayidx476 = getelementptr inbounds double, ptr %512, i64 %idxprom475
  %call477 = call i32 @dgemv_(ptr noundef @.str, ptr noundef %i__2, ptr noundef %i__3, ptr noundef @c_b4, ptr noundef %arrayidx468, ptr noundef %507, ptr noundef %arrayidx471, ptr noundef %511, ptr noundef @c_b5, ptr noundef %arrayidx476, ptr noundef @c__1)
  %516 = load ptr, ptr %m.addr, align 8
  %517 = load i32, ptr %516, align 4
  %518 = load i32, ptr %i__, align 4
  %sub478 = sub nsw i32 %517, %518
  store i32 %sub478, ptr %i__2, align 4
  %519 = load ptr, ptr %x.addr, align 8
  %520 = load i32, ptr %i__, align 4
  %add479 = add nsw i32 %520, 1
  %521 = load i32, ptr %x_dim1, align 4
  %add480 = add nsw i32 %add479, %521
  %idxprom481 = sext i32 %add480 to i64
  %arrayidx482 = getelementptr inbounds double, ptr %519, i64 %idxprom481
  %522 = load ptr, ptr %ldx.addr, align 8
  %523 = load ptr, ptr %a.addr, align 8
  %524 = load i32, ptr %i__, align 4
  %525 = load i32, ptr %a_dim1, align 4
  %mul483 = mul nsw i32 %524, %525
  %add484 = add nsw i32 %mul483, 1
  %idxprom485 = sext i32 %add484 to i64
  %arrayidx486 = getelementptr inbounds double, ptr %523, i64 %idxprom485
  %526 = load ptr, ptr %a.addr, align 8
  %527 = load i32, ptr %i__, align 4
  %add487 = add nsw i32 %527, 1
  %528 = load i32, ptr %i__, align 4
  %529 = load i32, ptr %a_dim1, align 4
  %mul488 = mul nsw i32 %528, %529
  %add489 = add nsw i32 %add487, %mul488
  %idxprom490 = sext i32 %add489 to i64
  %arrayidx491 = getelementptr inbounds double, ptr %526, i64 %idxprom490
  %call492 = call i32 @dgemv_(ptr noundef @.str, ptr noundef %i__2, ptr noundef %i__, ptr noundef @c_b4, ptr noundef %arrayidx482, ptr noundef %522, ptr noundef %arrayidx486, ptr noundef @c__1, ptr noundef @c_b5, ptr noundef %arrayidx491, ptr noundef @c__1)
  %530 = load ptr, ptr %m.addr, align 8
  %531 = load i32, ptr %530, align 4
  %532 = load i32, ptr %i__, align 4
  %sub493 = sub nsw i32 %531, %532
  store i32 %sub493, ptr %i__2, align 4
  %533 = load i32, ptr %i__, align 4
  %add494 = add nsw i32 %533, 2
  store i32 %add494, ptr %i__3, align 4
  %534 = load ptr, ptr %a.addr, align 8
  %535 = load i32, ptr %i__, align 4
  %add495 = add nsw i32 %535, 1
  %536 = load i32, ptr %i__, align 4
  %537 = load i32, ptr %a_dim1, align 4
  %mul496 = mul nsw i32 %536, %537
  %add497 = add nsw i32 %add495, %mul496
  %idxprom498 = sext i32 %add497 to i64
  %arrayidx499 = getelementptr inbounds double, ptr %534, i64 %idxprom498
  %538 = load ptr, ptr %a.addr, align 8
  %539 = load i32, ptr %i__3, align 4
  %540 = load ptr, ptr %m.addr, align 8
  %541 = load i32, ptr %540, align 4
  %cmp500 = icmp sle i32 %539, %541
  br i1 %cmp500, label %cond.true501, label %cond.false502

cond.true501:                                     ; preds = %if.then368
  %542 = load i32, ptr %i__3, align 4
  br label %cond.end503

cond.false502:                                    ; preds = %if.then368
  %543 = load ptr, ptr %m.addr, align 8
  %544 = load i32, ptr %543, align 4
  br label %cond.end503

cond.end503:                                      ; preds = %cond.false502, %cond.true501
  %cond504 = phi i32 [ %542, %cond.true501 ], [ %544, %cond.false502 ]
  %545 = load i32, ptr %i__, align 4
  %546 = load i32, ptr %a_dim1, align 4
  %mul505 = mul nsw i32 %545, %546
  %add506 = add nsw i32 %cond504, %mul505
  %idxprom507 = sext i32 %add506 to i64
  %arrayidx508 = getelementptr inbounds double, ptr %538, i64 %idxprom507
  %547 = load ptr, ptr %tauq.addr, align 8
  %548 = load i32, ptr %i__, align 4
  %idxprom509 = sext i32 %548 to i64
  %arrayidx510 = getelementptr inbounds double, ptr %547, i64 %idxprom509
  %call511 = call i32 @dlarfg_(ptr noundef %i__2, ptr noundef %arrayidx499, ptr noundef %arrayidx508, ptr noundef @c__1, ptr noundef %arrayidx510)
  %549 = load ptr, ptr %a.addr, align 8
  %550 = load i32, ptr %i__, align 4
  %add512 = add nsw i32 %550, 1
  %551 = load i32, ptr %i__, align 4
  %552 = load i32, ptr %a_dim1, align 4
  %mul513 = mul nsw i32 %551, %552
  %add514 = add nsw i32 %add512, %mul513
  %idxprom515 = sext i32 %add514 to i64
  %arrayidx516 = getelementptr inbounds double, ptr %549, i64 %idxprom515
  %553 = load double, ptr %arrayidx516, align 8
  %554 = load ptr, ptr %e.addr, align 8
  %555 = load i32, ptr %i__, align 4
  %idxprom517 = sext i32 %555 to i64
  %arrayidx518 = getelementptr inbounds double, ptr %554, i64 %idxprom517
  store double %553, ptr %arrayidx518, align 8
  %556 = load ptr, ptr %a.addr, align 8
  %557 = load i32, ptr %i__, align 4
  %add519 = add nsw i32 %557, 1
  %558 = load i32, ptr %i__, align 4
  %559 = load i32, ptr %a_dim1, align 4
  %mul520 = mul nsw i32 %558, %559
  %add521 = add nsw i32 %add519, %mul520
  %idxprom522 = sext i32 %add521 to i64
  %arrayidx523 = getelementptr inbounds double, ptr %556, i64 %idxprom522
  store double 1.000000e+00, ptr %arrayidx523, align 8
  %560 = load ptr, ptr %m.addr, align 8
  %561 = load i32, ptr %560, align 4
  %562 = load i32, ptr %i__, align 4
  %sub524 = sub nsw i32 %561, %562
  store i32 %sub524, ptr %i__2, align 4
  %563 = load ptr, ptr %n.addr, align 8
  %564 = load i32, ptr %563, align 4
  %565 = load i32, ptr %i__, align 4
  %sub525 = sub nsw i32 %564, %565
  store i32 %sub525, ptr %i__3, align 4
  %566 = load ptr, ptr %a.addr, align 8
  %567 = load i32, ptr %i__, align 4
  %add526 = add nsw i32 %567, 1
  %568 = load i32, ptr %i__, align 4
  %add527 = add nsw i32 %568, 1
  %569 = load i32, ptr %a_dim1, align 4
  %mul528 = mul nsw i32 %add527, %569
  %add529 = add nsw i32 %add526, %mul528
  %idxprom530 = sext i32 %add529 to i64
  %arrayidx531 = getelementptr inbounds double, ptr %566, i64 %idxprom530
  %570 = load ptr, ptr %lda.addr, align 8
  %571 = load ptr, ptr %a.addr, align 8
  %572 = load i32, ptr %i__, align 4
  %add532 = add nsw i32 %572, 1
  %573 = load i32, ptr %i__, align 4
  %574 = load i32, ptr %a_dim1, align 4
  %mul533 = mul nsw i32 %573, %574
  %add534 = add nsw i32 %add532, %mul533
  %idxprom535 = sext i32 %add534 to i64
  %arrayidx536 = getelementptr inbounds double, ptr %571, i64 %idxprom535
  %575 = load ptr, ptr %y.addr, align 8
  %576 = load i32, ptr %i__, align 4
  %add537 = add nsw i32 %576, 1
  %577 = load i32, ptr %i__, align 4
  %578 = load i32, ptr %y_dim1, align 4
  %mul538 = mul nsw i32 %577, %578
  %add539 = add nsw i32 %add537, %mul538
  %idxprom540 = sext i32 %add539 to i64
  %arrayidx541 = getelementptr inbounds double, ptr %575, i64 %idxprom540
  %call542 = call i32 @dgemv_(ptr noundef @.str.1, ptr noundef %i__2, ptr noundef %i__3, ptr noundef @c_b5, ptr noundef %arrayidx531, ptr noundef %570, ptr noundef %arrayidx536, ptr noundef @c__1, ptr noundef @c_b16, ptr noundef %arrayidx541, ptr noundef @c__1)
  %579 = load ptr, ptr %m.addr, align 8
  %580 = load i32, ptr %579, align 4
  %581 = load i32, ptr %i__, align 4
  %sub543 = sub nsw i32 %580, %581
  store i32 %sub543, ptr %i__2, align 4
  %582 = load i32, ptr %i__, align 4
  %sub544 = sub nsw i32 %582, 1
  store i32 %sub544, ptr %i__3, align 4
  %583 = load ptr, ptr %a.addr, align 8
  %584 = load i32, ptr %i__, align 4
  %add545 = add nsw i32 %584, 1
  %585 = load i32, ptr %a_dim1, align 4
  %add546 = add nsw i32 %add545, %585
  %idxprom547 = sext i32 %add546 to i64
  %arrayidx548 = getelementptr inbounds double, ptr %583, i64 %idxprom547
  %586 = load ptr, ptr %lda.addr, align 8
  %587 = load ptr, ptr %a.addr, align 8
  %588 = load i32, ptr %i__, align 4
  %add549 = add nsw i32 %588, 1
  %589 = load i32, ptr %i__, align 4
  %590 = load i32, ptr %a_dim1, align 4
  %mul550 = mul nsw i32 %589, %590
  %add551 = add nsw i32 %add549, %mul550
  %idxprom552 = sext i32 %add551 to i64
  %arrayidx553 = getelementptr inbounds double, ptr %587, i64 %idxprom552
  %591 = load ptr, ptr %y.addr, align 8
  %592 = load i32, ptr %i__, align 4
  %593 = load i32, ptr %y_dim1, align 4
  %mul554 = mul nsw i32 %592, %593
  %add555 = add nsw i32 %mul554, 1
  %idxprom556 = sext i32 %add555 to i64
  %arrayidx557 = getelementptr inbounds double, ptr %591, i64 %idxprom556
  %call558 = call i32 @dgemv_(ptr noundef @.str.1, ptr noundef %i__2, ptr noundef %i__3, ptr noundef @c_b5, ptr noundef %arrayidx548, ptr noundef %586, ptr noundef %arrayidx553, ptr noundef @c__1, ptr noundef @c_b16, ptr noundef %arrayidx557, ptr noundef @c__1)
  %594 = load ptr, ptr %n.addr, align 8
  %595 = load i32, ptr %594, align 4
  %596 = load i32, ptr %i__, align 4
  %sub559 = sub nsw i32 %595, %596
  store i32 %sub559, ptr %i__2, align 4
  %597 = load i32, ptr %i__, align 4
  %sub560 = sub nsw i32 %597, 1
  store i32 %sub560, ptr %i__3, align 4
  %598 = load ptr, ptr %y.addr, align 8
  %599 = load i32, ptr %i__, align 4
  %add561 = add nsw i32 %599, 1
  %600 = load i32, ptr %y_dim1, align 4
  %add562 = add nsw i32 %add561, %600
  %idxprom563 = sext i32 %add562 to i64
  %arrayidx564 = getelementptr inbounds double, ptr %598, i64 %idxprom563
  %601 = load ptr, ptr %ldy.addr, align 8
  %602 = load ptr, ptr %y.addr, align 8
  %603 = load i32, ptr %i__, align 4
  %604 = load i32, ptr %y_dim1, align 4
  %mul565 = mul nsw i32 %603, %604
  %add566 = add nsw i32 %mul565, 1
  %idxprom567 = sext i32 %add566 to i64
  %arrayidx568 = getelementptr inbounds double, ptr %602, i64 %idxprom567
  %605 = load ptr, ptr %y.addr, align 8
  %606 = load i32, ptr %i__, align 4
  %add569 = add nsw i32 %606, 1
  %607 = load i32, ptr %i__, align 4
  %608 = load i32, ptr %y_dim1, align 4
  %mul570 = mul nsw i32 %607, %608
  %add571 = add nsw i32 %add569, %mul570
  %idxprom572 = sext i32 %add571 to i64
  %arrayidx573 = getelementptr inbounds double, ptr %605, i64 %idxprom572
  %call574 = call i32 @dgemv_(ptr noundef @.str, ptr noundef %i__2, ptr noundef %i__3, ptr noundef @c_b4, ptr noundef %arrayidx564, ptr noundef %601, ptr noundef %arrayidx568, ptr noundef @c__1, ptr noundef @c_b5, ptr noundef %arrayidx573, ptr noundef @c__1)
  %609 = load ptr, ptr %m.addr, align 8
  %610 = load i32, ptr %609, align 4
  %611 = load i32, ptr %i__, align 4
  %sub575 = sub nsw i32 %610, %611
  store i32 %sub575, ptr %i__2, align 4
  %612 = load ptr, ptr %x.addr, align 8
  %613 = load i32, ptr %i__, align 4
  %add576 = add nsw i32 %613, 1
  %614 = load i32, ptr %x_dim1, align 4
  %add577 = add nsw i32 %add576, %614
  %idxprom578 = sext i32 %add577 to i64
  %arrayidx579 = getelementptr inbounds double, ptr %612, i64 %idxprom578
  %615 = load ptr, ptr %ldx.addr, align 8
  %616 = load ptr, ptr %a.addr, align 8
  %617 = load i32, ptr %i__, align 4
  %add580 = add nsw i32 %617, 1
  %618 = load i32, ptr %i__, align 4
  %619 = load i32, ptr %a_dim1, align 4
  %mul581 = mul nsw i32 %618, %619
  %add582 = add nsw i32 %add580, %mul581
  %idxprom583 = sext i32 %add582 to i64
  %arrayidx584 = getelementptr inbounds double, ptr %616, i64 %idxprom583
  %620 = load ptr, ptr %y.addr, align 8
  %621 = load i32, ptr %i__, align 4
  %622 = load i32, ptr %y_dim1, align 4
  %mul585 = mul nsw i32 %621, %622
  %add586 = add nsw i32 %mul585, 1
  %idxprom587 = sext i32 %add586 to i64
  %arrayidx588 = getelementptr inbounds double, ptr %620, i64 %idxprom587
  %call589 = call i32 @dgemv_(ptr noundef @.str.1, ptr noundef %i__2, ptr noundef %i__, ptr noundef @c_b5, ptr noundef %arrayidx579, ptr noundef %615, ptr noundef %arrayidx584, ptr noundef @c__1, ptr noundef @c_b16, ptr noundef %arrayidx588, ptr noundef @c__1)
  %623 = load ptr, ptr %n.addr, align 8
  %624 = load i32, ptr %623, align 4
  %625 = load i32, ptr %i__, align 4
  %sub590 = sub nsw i32 %624, %625
  store i32 %sub590, ptr %i__2, align 4
  %626 = load ptr, ptr %a.addr, align 8
  %627 = load i32, ptr %i__, align 4
  %add591 = add nsw i32 %627, 1
  %628 = load i32, ptr %a_dim1, align 4
  %mul592 = mul nsw i32 %add591, %628
  %add593 = add nsw i32 %mul592, 1
  %idxprom594 = sext i32 %add593 to i64
  %arrayidx595 = getelementptr inbounds double, ptr %626, i64 %idxprom594
  %629 = load ptr, ptr %lda.addr, align 8
  %630 = load ptr, ptr %y.addr, align 8
  %631 = load i32, ptr %i__, align 4
  %632 = load i32, ptr %y_dim1, align 4
  %mul596 = mul nsw i32 %631, %632
  %add597 = add nsw i32 %mul596, 1
  %idxprom598 = sext i32 %add597 to i64
  %arrayidx599 = getelementptr inbounds double, ptr %630, i64 %idxprom598
  %633 = load ptr, ptr %y.addr, align 8
  %634 = load i32, ptr %i__, align 4
  %add600 = add nsw i32 %634, 1
  %635 = load i32, ptr %i__, align 4
  %636 = load i32, ptr %y_dim1, align 4
  %mul601 = mul nsw i32 %635, %636
  %add602 = add nsw i32 %add600, %mul601
  %idxprom603 = sext i32 %add602 to i64
  %arrayidx604 = getelementptr inbounds double, ptr %633, i64 %idxprom603
  %call605 = call i32 @dgemv_(ptr noundef @.str.1, ptr noundef %i__, ptr noundef %i__2, ptr noundef @c_b4, ptr noundef %arrayidx595, ptr noundef %629, ptr noundef %arrayidx599, ptr noundef @c__1, ptr noundef @c_b5, ptr noundef %arrayidx604, ptr noundef @c__1)
  %637 = load ptr, ptr %n.addr, align 8
  %638 = load i32, ptr %637, align 4
  %639 = load i32, ptr %i__, align 4
  %sub606 = sub nsw i32 %638, %639
  store i32 %sub606, ptr %i__2, align 4
  %640 = load ptr, ptr %tauq.addr, align 8
  %641 = load i32, ptr %i__, align 4
  %idxprom607 = sext i32 %641 to i64
  %arrayidx608 = getelementptr inbounds double, ptr %640, i64 %idxprom607
  %642 = load ptr, ptr %y.addr, align 8
  %643 = load i32, ptr %i__, align 4
  %add609 = add nsw i32 %643, 1
  %644 = load i32, ptr %i__, align 4
  %645 = load i32, ptr %y_dim1, align 4
  %mul610 = mul nsw i32 %644, %645
  %add611 = add nsw i32 %add609, %mul610
  %idxprom612 = sext i32 %add611 to i64
  %arrayidx613 = getelementptr inbounds double, ptr %642, i64 %idxprom612
  %call614 = call i32 @dscal_(ptr noundef %i__2, ptr noundef %arrayidx608, ptr noundef %arrayidx613, ptr noundef @c__1)
  br label %if.end615

if.end615:                                        ; preds = %cond.end503, %cond.end352
  br label %for.inc616

for.inc616:                                       ; preds = %if.end615
  %646 = load i32, ptr %i__, align 4
  %inc617 = add nsw i32 %646, 1
  store i32 %inc617, ptr %i__, align 4
  br label %for.cond310, !llvm.loop !7

for.end618:                                       ; preds = %for.cond310
  br label %if.end619

if.end619:                                        ; preds = %for.end618, %for.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end619, %if.then
  %647 = load i32, ptr %retval, align 4
  ret i32 %647
}

declare i32 @dgemv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @dlarfg_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @dscal_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

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

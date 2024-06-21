; ModuleID = 'samples/791.bc'
source_filename = "/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/map/lapack2flamec/f2c/c/slaqps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"Epsilon\00", align 1
@c__1 = internal global i32 1, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"No transpose\00", align 1
@c_b8 = internal global float -1.000000e+00, align 4
@c_b9 = internal global float 1.000000e+00, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"Transpose\00", align 1
@c_b16 = internal global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define i32 @slaqps_(ptr noundef %m, ptr noundef %n, ptr noundef %offset, ptr noundef %nb, ptr noundef %kb, ptr noundef %a, ptr noundef %lda, ptr noundef %jpvt, ptr noundef %tau, ptr noundef %vn1, ptr noundef %vn2, ptr noundef %auxv, ptr noundef %f, ptr noundef %ldf) #0 {
entry:
  %m.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %offset.addr = alloca ptr, align 8
  %nb.addr = alloca ptr, align 8
  %kb.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %lda.addr = alloca ptr, align 8
  %jpvt.addr = alloca ptr, align 8
  %tau.addr = alloca ptr, align 8
  %vn1.addr = alloca ptr, align 8
  %vn2.addr = alloca ptr, align 8
  %auxv.addr = alloca ptr, align 8
  %f.addr = alloca ptr, align 8
  %ldf.addr = alloca ptr, align 8
  %a_dim1 = alloca i32, align 4
  %a_offset = alloca i32, align 4
  %f_dim1 = alloca i32, align 4
  %f_offset = alloca i32, align 4
  %i__1 = alloca i32, align 4
  %i__2 = alloca i32, align 4
  %r__1 = alloca float, align 4
  %r__2 = alloca float, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %rk = alloca i32, align 4
  %akk = alloca float, align 4
  %pvt = alloca i32, align 4
  %temp = alloca float, align 4
  %temp2 = alloca float, align 4
  %tol3z = alloca float, align 4
  %itemp = alloca i32, align 4
  %lsticc = alloca i32, align 4
  %lastrk = alloca i32, align 4
  store ptr %m, ptr %m.addr, align 8
  store ptr %n, ptr %n.addr, align 8
  store ptr %offset, ptr %offset.addr, align 8
  store ptr %nb, ptr %nb.addr, align 8
  store ptr %kb, ptr %kb.addr, align 8
  store ptr %a, ptr %a.addr, align 8
  store ptr %lda, ptr %lda.addr, align 8
  store ptr %jpvt, ptr %jpvt.addr, align 8
  store ptr %tau, ptr %tau.addr, align 8
  store ptr %vn1, ptr %vn1.addr, align 8
  store ptr %vn2, ptr %vn2.addr, align 8
  store ptr %auxv, ptr %auxv.addr, align 8
  store ptr %f, ptr %f.addr, align 8
  store ptr %ldf, ptr %ldf.addr, align 8
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
  %5 = load ptr, ptr %jpvt.addr, align 8
  %incdec.ptr = getelementptr inbounds i32, ptr %5, i32 -1
  store ptr %incdec.ptr, ptr %jpvt.addr, align 8
  %6 = load ptr, ptr %tau.addr, align 8
  %incdec.ptr1 = getelementptr inbounds float, ptr %6, i32 -1
  store ptr %incdec.ptr1, ptr %tau.addr, align 8
  %7 = load ptr, ptr %vn1.addr, align 8
  %incdec.ptr2 = getelementptr inbounds float, ptr %7, i32 -1
  store ptr %incdec.ptr2, ptr %vn1.addr, align 8
  %8 = load ptr, ptr %vn2.addr, align 8
  %incdec.ptr3 = getelementptr inbounds float, ptr %8, i32 -1
  store ptr %incdec.ptr3, ptr %vn2.addr, align 8
  %9 = load ptr, ptr %auxv.addr, align 8
  %incdec.ptr4 = getelementptr inbounds float, ptr %9, i32 -1
  store ptr %incdec.ptr4, ptr %auxv.addr, align 8
  %10 = load ptr, ptr %ldf.addr, align 8
  %11 = load i32, ptr %10, align 4
  store i32 %11, ptr %f_dim1, align 4
  %12 = load i32, ptr %f_dim1, align 4
  %add5 = add nsw i32 1, %12
  store i32 %add5, ptr %f_offset, align 4
  %13 = load i32, ptr %f_offset, align 4
  %14 = load ptr, ptr %f.addr, align 8
  %idx.ext6 = sext i32 %13 to i64
  %idx.neg7 = sub i64 0, %idx.ext6
  %add.ptr8 = getelementptr inbounds float, ptr %14, i64 %idx.neg7
  store ptr %add.ptr8, ptr %f.addr, align 8
  %15 = load ptr, ptr %m.addr, align 8
  %16 = load i32, ptr %15, align 4
  store i32 %16, ptr %i__1, align 4
  %17 = load ptr, ptr %n.addr, align 8
  %18 = load i32, ptr %17, align 4
  %19 = load ptr, ptr %offset.addr, align 8
  %20 = load i32, ptr %19, align 4
  %add9 = add nsw i32 %18, %20
  store i32 %add9, ptr %i__2, align 4
  %21 = load i32, ptr %i__1, align 4
  %22 = load i32, ptr %i__2, align 4
  %cmp = icmp sle i32 %21, %22
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %23 = load i32, ptr %i__1, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %24 = load i32, ptr %i__2, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %23, %cond.true ], [ %24, %cond.false ]
  store i32 %cond, ptr %lastrk, align 4
  store i32 0, ptr %lsticc, align 4
  store i32 0, ptr %k, align 4
  %call = call float @slamch_(ptr noundef @.str)
  %conv = fpext float %call to double
  %call10 = call double @sqrt(double noundef %conv) #3
  %conv11 = fptrunc double %call10 to float
  store float %conv11, ptr %tol3z, align 4
  br label %L10

L10:                                              ; preds = %if.end249, %cond.end
  %25 = load i32, ptr %k, align 4
  %26 = load ptr, ptr %nb.addr, align 8
  %27 = load i32, ptr %26, align 4
  %cmp12 = icmp slt i32 %25, %27
  br i1 %cmp12, label %land.lhs.true, label %if.end254

land.lhs.true:                                    ; preds = %L10
  %28 = load i32, ptr %lsticc, align 4
  %cmp14 = icmp eq i32 %28, 0
  br i1 %cmp14, label %if.then, label %if.end254

if.then:                                          ; preds = %land.lhs.true
  %29 = load i32, ptr %k, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, ptr %k, align 4
  %30 = load ptr, ptr %offset.addr, align 8
  %31 = load i32, ptr %30, align 4
  %32 = load i32, ptr %k, align 4
  %add16 = add nsw i32 %31, %32
  store i32 %add16, ptr %rk, align 4
  %33 = load ptr, ptr %n.addr, align 8
  %34 = load i32, ptr %33, align 4
  %35 = load i32, ptr %k, align 4
  %sub = sub nsw i32 %34, %35
  %add17 = add nsw i32 %sub, 1
  store i32 %add17, ptr %i__1, align 4
  %36 = load i32, ptr %k, align 4
  %sub18 = sub nsw i32 %36, 1
  %37 = load ptr, ptr %vn1.addr, align 8
  %38 = load i32, ptr %k, align 4
  %idxprom = sext i32 %38 to i64
  %arrayidx = getelementptr inbounds float, ptr %37, i64 %idxprom
  %call19 = call i32 @isamax_(ptr noundef %i__1, ptr noundef %arrayidx, ptr noundef @c__1)
  %add20 = add nsw i32 %sub18, %call19
  store i32 %add20, ptr %pvt, align 4
  %39 = load i32, ptr %pvt, align 4
  %40 = load i32, ptr %k, align 4
  %cmp21 = icmp ne i32 %39, %40
  br i1 %cmp21, label %if.then23, label %if.end

if.then23:                                        ; preds = %if.then
  %41 = load ptr, ptr %m.addr, align 8
  %42 = load ptr, ptr %a.addr, align 8
  %43 = load i32, ptr %pvt, align 4
  %44 = load i32, ptr %a_dim1, align 4
  %mul = mul nsw i32 %43, %44
  %add24 = add nsw i32 %mul, 1
  %idxprom25 = sext i32 %add24 to i64
  %arrayidx26 = getelementptr inbounds float, ptr %42, i64 %idxprom25
  %45 = load ptr, ptr %a.addr, align 8
  %46 = load i32, ptr %k, align 4
  %47 = load i32, ptr %a_dim1, align 4
  %mul27 = mul nsw i32 %46, %47
  %add28 = add nsw i32 %mul27, 1
  %idxprom29 = sext i32 %add28 to i64
  %arrayidx30 = getelementptr inbounds float, ptr %45, i64 %idxprom29
  %call31 = call i32 @sswap_(ptr noundef %41, ptr noundef %arrayidx26, ptr noundef @c__1, ptr noundef %arrayidx30, ptr noundef @c__1)
  %48 = load i32, ptr %k, align 4
  %sub32 = sub nsw i32 %48, 1
  store i32 %sub32, ptr %i__1, align 4
  %49 = load ptr, ptr %f.addr, align 8
  %50 = load i32, ptr %pvt, align 4
  %51 = load i32, ptr %f_dim1, align 4
  %add33 = add nsw i32 %50, %51
  %idxprom34 = sext i32 %add33 to i64
  %arrayidx35 = getelementptr inbounds float, ptr %49, i64 %idxprom34
  %52 = load ptr, ptr %ldf.addr, align 8
  %53 = load ptr, ptr %f.addr, align 8
  %54 = load i32, ptr %k, align 4
  %55 = load i32, ptr %f_dim1, align 4
  %add36 = add nsw i32 %54, %55
  %idxprom37 = sext i32 %add36 to i64
  %arrayidx38 = getelementptr inbounds float, ptr %53, i64 %idxprom37
  %56 = load ptr, ptr %ldf.addr, align 8
  %call39 = call i32 @sswap_(ptr noundef %i__1, ptr noundef %arrayidx35, ptr noundef %52, ptr noundef %arrayidx38, ptr noundef %56)
  %57 = load ptr, ptr %jpvt.addr, align 8
  %58 = load i32, ptr %pvt, align 4
  %idxprom40 = sext i32 %58 to i64
  %arrayidx41 = getelementptr inbounds i32, ptr %57, i64 %idxprom40
  %59 = load i32, ptr %arrayidx41, align 4
  store i32 %59, ptr %itemp, align 4
  %60 = load ptr, ptr %jpvt.addr, align 8
  %61 = load i32, ptr %k, align 4
  %idxprom42 = sext i32 %61 to i64
  %arrayidx43 = getelementptr inbounds i32, ptr %60, i64 %idxprom42
  %62 = load i32, ptr %arrayidx43, align 4
  %63 = load ptr, ptr %jpvt.addr, align 8
  %64 = load i32, ptr %pvt, align 4
  %idxprom44 = sext i32 %64 to i64
  %arrayidx45 = getelementptr inbounds i32, ptr %63, i64 %idxprom44
  store i32 %62, ptr %arrayidx45, align 4
  %65 = load i32, ptr %itemp, align 4
  %66 = load ptr, ptr %jpvt.addr, align 8
  %67 = load i32, ptr %k, align 4
  %idxprom46 = sext i32 %67 to i64
  %arrayidx47 = getelementptr inbounds i32, ptr %66, i64 %idxprom46
  store i32 %65, ptr %arrayidx47, align 4
  %68 = load ptr, ptr %vn1.addr, align 8
  %69 = load i32, ptr %k, align 4
  %idxprom48 = sext i32 %69 to i64
  %arrayidx49 = getelementptr inbounds float, ptr %68, i64 %idxprom48
  %70 = load float, ptr %arrayidx49, align 4
  %71 = load ptr, ptr %vn1.addr, align 8
  %72 = load i32, ptr %pvt, align 4
  %idxprom50 = sext i32 %72 to i64
  %arrayidx51 = getelementptr inbounds float, ptr %71, i64 %idxprom50
  store float %70, ptr %arrayidx51, align 4
  %73 = load ptr, ptr %vn2.addr, align 8
  %74 = load i32, ptr %k, align 4
  %idxprom52 = sext i32 %74 to i64
  %arrayidx53 = getelementptr inbounds float, ptr %73, i64 %idxprom52
  %75 = load float, ptr %arrayidx53, align 4
  %76 = load ptr, ptr %vn2.addr, align 8
  %77 = load i32, ptr %pvt, align 4
  %idxprom54 = sext i32 %77 to i64
  %arrayidx55 = getelementptr inbounds float, ptr %76, i64 %idxprom54
  store float %75, ptr %arrayidx55, align 4
  br label %if.end

if.end:                                           ; preds = %if.then23, %if.then
  %78 = load i32, ptr %k, align 4
  %cmp56 = icmp sgt i32 %78, 1
  br i1 %cmp56, label %if.then58, label %if.end73

if.then58:                                        ; preds = %if.end
  %79 = load ptr, ptr %m.addr, align 8
  %80 = load i32, ptr %79, align 4
  %81 = load i32, ptr %rk, align 4
  %sub59 = sub nsw i32 %80, %81
  %add60 = add nsw i32 %sub59, 1
  store i32 %add60, ptr %i__1, align 4
  %82 = load i32, ptr %k, align 4
  %sub61 = sub nsw i32 %82, 1
  store i32 %sub61, ptr %i__2, align 4
  %83 = load ptr, ptr %a.addr, align 8
  %84 = load i32, ptr %rk, align 4
  %85 = load i32, ptr %a_dim1, align 4
  %add62 = add nsw i32 %84, %85
  %idxprom63 = sext i32 %add62 to i64
  %arrayidx64 = getelementptr inbounds float, ptr %83, i64 %idxprom63
  %86 = load ptr, ptr %lda.addr, align 8
  %87 = load ptr, ptr %f.addr, align 8
  %88 = load i32, ptr %k, align 4
  %89 = load i32, ptr %f_dim1, align 4
  %add65 = add nsw i32 %88, %89
  %idxprom66 = sext i32 %add65 to i64
  %arrayidx67 = getelementptr inbounds float, ptr %87, i64 %idxprom66
  %90 = load ptr, ptr %ldf.addr, align 8
  %91 = load ptr, ptr %a.addr, align 8
  %92 = load i32, ptr %rk, align 4
  %93 = load i32, ptr %k, align 4
  %94 = load i32, ptr %a_dim1, align 4
  %mul68 = mul nsw i32 %93, %94
  %add69 = add nsw i32 %92, %mul68
  %idxprom70 = sext i32 %add69 to i64
  %arrayidx71 = getelementptr inbounds float, ptr %91, i64 %idxprom70
  %call72 = call i32 @sgemv_(ptr noundef @.str.1, ptr noundef %i__1, ptr noundef %i__2, ptr noundef @c_b8, ptr noundef %arrayidx64, ptr noundef %86, ptr noundef %arrayidx67, ptr noundef %90, ptr noundef @c_b9, ptr noundef %arrayidx71, ptr noundef @c__1)
  br label %if.end73

if.end73:                                         ; preds = %if.then58, %if.end
  %95 = load i32, ptr %rk, align 4
  %96 = load ptr, ptr %m.addr, align 8
  %97 = load i32, ptr %96, align 4
  %cmp74 = icmp slt i32 %95, %97
  br i1 %cmp74, label %if.then76, label %if.else

if.then76:                                        ; preds = %if.end73
  %98 = load ptr, ptr %m.addr, align 8
  %99 = load i32, ptr %98, align 4
  %100 = load i32, ptr %rk, align 4
  %sub77 = sub nsw i32 %99, %100
  %add78 = add nsw i32 %sub77, 1
  store i32 %add78, ptr %i__1, align 4
  %101 = load ptr, ptr %a.addr, align 8
  %102 = load i32, ptr %rk, align 4
  %103 = load i32, ptr %k, align 4
  %104 = load i32, ptr %a_dim1, align 4
  %mul79 = mul nsw i32 %103, %104
  %add80 = add nsw i32 %102, %mul79
  %idxprom81 = sext i32 %add80 to i64
  %arrayidx82 = getelementptr inbounds float, ptr %101, i64 %idxprom81
  %105 = load ptr, ptr %a.addr, align 8
  %106 = load i32, ptr %rk, align 4
  %add83 = add nsw i32 %106, 1
  %107 = load i32, ptr %k, align 4
  %108 = load i32, ptr %a_dim1, align 4
  %mul84 = mul nsw i32 %107, %108
  %add85 = add nsw i32 %add83, %mul84
  %idxprom86 = sext i32 %add85 to i64
  %arrayidx87 = getelementptr inbounds float, ptr %105, i64 %idxprom86
  %109 = load ptr, ptr %tau.addr, align 8
  %110 = load i32, ptr %k, align 4
  %idxprom88 = sext i32 %110 to i64
  %arrayidx89 = getelementptr inbounds float, ptr %109, i64 %idxprom88
  %call90 = call i32 @slarfg_(ptr noundef %i__1, ptr noundef %arrayidx82, ptr noundef %arrayidx87, ptr noundef @c__1, ptr noundef %arrayidx89)
  br label %if.end102

if.else:                                          ; preds = %if.end73
  %111 = load ptr, ptr %a.addr, align 8
  %112 = load i32, ptr %rk, align 4
  %113 = load i32, ptr %k, align 4
  %114 = load i32, ptr %a_dim1, align 4
  %mul91 = mul nsw i32 %113, %114
  %add92 = add nsw i32 %112, %mul91
  %idxprom93 = sext i32 %add92 to i64
  %arrayidx94 = getelementptr inbounds float, ptr %111, i64 %idxprom93
  %115 = load ptr, ptr %a.addr, align 8
  %116 = load i32, ptr %rk, align 4
  %117 = load i32, ptr %k, align 4
  %118 = load i32, ptr %a_dim1, align 4
  %mul95 = mul nsw i32 %117, %118
  %add96 = add nsw i32 %116, %mul95
  %idxprom97 = sext i32 %add96 to i64
  %arrayidx98 = getelementptr inbounds float, ptr %115, i64 %idxprom97
  %119 = load ptr, ptr %tau.addr, align 8
  %120 = load i32, ptr %k, align 4
  %idxprom99 = sext i32 %120 to i64
  %arrayidx100 = getelementptr inbounds float, ptr %119, i64 %idxprom99
  %call101 = call i32 @slarfg_(ptr noundef @c__1, ptr noundef %arrayidx94, ptr noundef %arrayidx98, ptr noundef @c__1, ptr noundef %arrayidx100)
  br label %if.end102

if.end102:                                        ; preds = %if.else, %if.then76
  %121 = load ptr, ptr %a.addr, align 8
  %122 = load i32, ptr %rk, align 4
  %123 = load i32, ptr %k, align 4
  %124 = load i32, ptr %a_dim1, align 4
  %mul103 = mul nsw i32 %123, %124
  %add104 = add nsw i32 %122, %mul103
  %idxprom105 = sext i32 %add104 to i64
  %arrayidx106 = getelementptr inbounds float, ptr %121, i64 %idxprom105
  %125 = load float, ptr %arrayidx106, align 4
  store float %125, ptr %akk, align 4
  %126 = load ptr, ptr %a.addr, align 8
  %127 = load i32, ptr %rk, align 4
  %128 = load i32, ptr %k, align 4
  %129 = load i32, ptr %a_dim1, align 4
  %mul107 = mul nsw i32 %128, %129
  %add108 = add nsw i32 %127, %mul107
  %idxprom109 = sext i32 %add108 to i64
  %arrayidx110 = getelementptr inbounds float, ptr %126, i64 %idxprom109
  store float 1.000000e+00, ptr %arrayidx110, align 4
  %130 = load i32, ptr %k, align 4
  %131 = load ptr, ptr %n.addr, align 8
  %132 = load i32, ptr %131, align 4
  %cmp111 = icmp slt i32 %130, %132
  br i1 %cmp111, label %if.then113, label %if.end134

if.then113:                                       ; preds = %if.end102
  %133 = load ptr, ptr %m.addr, align 8
  %134 = load i32, ptr %133, align 4
  %135 = load i32, ptr %rk, align 4
  %sub114 = sub nsw i32 %134, %135
  %add115 = add nsw i32 %sub114, 1
  store i32 %add115, ptr %i__1, align 4
  %136 = load ptr, ptr %n.addr, align 8
  %137 = load i32, ptr %136, align 4
  %138 = load i32, ptr %k, align 4
  %sub116 = sub nsw i32 %137, %138
  store i32 %sub116, ptr %i__2, align 4
  %139 = load ptr, ptr %tau.addr, align 8
  %140 = load i32, ptr %k, align 4
  %idxprom117 = sext i32 %140 to i64
  %arrayidx118 = getelementptr inbounds float, ptr %139, i64 %idxprom117
  %141 = load ptr, ptr %a.addr, align 8
  %142 = load i32, ptr %rk, align 4
  %143 = load i32, ptr %k, align 4
  %add119 = add nsw i32 %143, 1
  %144 = load i32, ptr %a_dim1, align 4
  %mul120 = mul nsw i32 %add119, %144
  %add121 = add nsw i32 %142, %mul120
  %idxprom122 = sext i32 %add121 to i64
  %arrayidx123 = getelementptr inbounds float, ptr %141, i64 %idxprom122
  %145 = load ptr, ptr %lda.addr, align 8
  %146 = load ptr, ptr %a.addr, align 8
  %147 = load i32, ptr %rk, align 4
  %148 = load i32, ptr %k, align 4
  %149 = load i32, ptr %a_dim1, align 4
  %mul124 = mul nsw i32 %148, %149
  %add125 = add nsw i32 %147, %mul124
  %idxprom126 = sext i32 %add125 to i64
  %arrayidx127 = getelementptr inbounds float, ptr %146, i64 %idxprom126
  %150 = load ptr, ptr %f.addr, align 8
  %151 = load i32, ptr %k, align 4
  %add128 = add nsw i32 %151, 1
  %152 = load i32, ptr %k, align 4
  %153 = load i32, ptr %f_dim1, align 4
  %mul129 = mul nsw i32 %152, %153
  %add130 = add nsw i32 %add128, %mul129
  %idxprom131 = sext i32 %add130 to i64
  %arrayidx132 = getelementptr inbounds float, ptr %150, i64 %idxprom131
  %call133 = call i32 @sgemv_(ptr noundef @.str.2, ptr noundef %i__1, ptr noundef %i__2, ptr noundef %arrayidx118, ptr noundef %arrayidx123, ptr noundef %145, ptr noundef %arrayidx127, ptr noundef @c__1, ptr noundef @c_b16, ptr noundef %arrayidx132, ptr noundef @c__1)
  br label %if.end134

if.end134:                                        ; preds = %if.then113, %if.end102
  %154 = load i32, ptr %k, align 4
  store i32 %154, ptr %i__1, align 4
  store i32 1, ptr %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end134
  %155 = load i32, ptr %j, align 4
  %156 = load i32, ptr %i__1, align 4
  %cmp135 = icmp sle i32 %155, %156
  br i1 %cmp135, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %157 = load ptr, ptr %f.addr, align 8
  %158 = load i32, ptr %j, align 4
  %159 = load i32, ptr %k, align 4
  %160 = load i32, ptr %f_dim1, align 4
  %mul137 = mul nsw i32 %159, %160
  %add138 = add nsw i32 %158, %mul137
  %idxprom139 = sext i32 %add138 to i64
  %arrayidx140 = getelementptr inbounds float, ptr %157, i64 %idxprom139
  store float 0.000000e+00, ptr %arrayidx140, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %161 = load i32, ptr %j, align 4
  %inc141 = add nsw i32 %161, 1
  store i32 %inc141, ptr %j, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %162 = load i32, ptr %k, align 4
  %cmp142 = icmp sgt i32 %162, 1
  br i1 %cmp142, label %if.then144, label %if.end169

if.then144:                                       ; preds = %for.end
  %163 = load ptr, ptr %m.addr, align 8
  %164 = load i32, ptr %163, align 4
  %165 = load i32, ptr %rk, align 4
  %sub145 = sub nsw i32 %164, %165
  %add146 = add nsw i32 %sub145, 1
  store i32 %add146, ptr %i__1, align 4
  %166 = load i32, ptr %k, align 4
  %sub147 = sub nsw i32 %166, 1
  store i32 %sub147, ptr %i__2, align 4
  %167 = load ptr, ptr %tau.addr, align 8
  %168 = load i32, ptr %k, align 4
  %idxprom148 = sext i32 %168 to i64
  %arrayidx149 = getelementptr inbounds float, ptr %167, i64 %idxprom148
  %169 = load float, ptr %arrayidx149, align 4
  %fneg = fneg float %169
  store float %fneg, ptr %r__1, align 4
  %170 = load ptr, ptr %a.addr, align 8
  %171 = load i32, ptr %rk, align 4
  %172 = load i32, ptr %a_dim1, align 4
  %add150 = add nsw i32 %171, %172
  %idxprom151 = sext i32 %add150 to i64
  %arrayidx152 = getelementptr inbounds float, ptr %170, i64 %idxprom151
  %173 = load ptr, ptr %lda.addr, align 8
  %174 = load ptr, ptr %a.addr, align 8
  %175 = load i32, ptr %rk, align 4
  %176 = load i32, ptr %k, align 4
  %177 = load i32, ptr %a_dim1, align 4
  %mul153 = mul nsw i32 %176, %177
  %add154 = add nsw i32 %175, %mul153
  %idxprom155 = sext i32 %add154 to i64
  %arrayidx156 = getelementptr inbounds float, ptr %174, i64 %idxprom155
  %178 = load ptr, ptr %auxv.addr, align 8
  %arrayidx157 = getelementptr inbounds float, ptr %178, i64 1
  %call158 = call i32 @sgemv_(ptr noundef @.str.2, ptr noundef %i__1, ptr noundef %i__2, ptr noundef %r__1, ptr noundef %arrayidx152, ptr noundef %173, ptr noundef %arrayidx156, ptr noundef @c__1, ptr noundef @c_b16, ptr noundef %arrayidx157, ptr noundef @c__1)
  %179 = load i32, ptr %k, align 4
  %sub159 = sub nsw i32 %179, 1
  store i32 %sub159, ptr %i__1, align 4
  %180 = load ptr, ptr %n.addr, align 8
  %181 = load ptr, ptr %f.addr, align 8
  %182 = load i32, ptr %f_dim1, align 4
  %add160 = add nsw i32 %182, 1
  %idxprom161 = sext i32 %add160 to i64
  %arrayidx162 = getelementptr inbounds float, ptr %181, i64 %idxprom161
  %183 = load ptr, ptr %ldf.addr, align 8
  %184 = load ptr, ptr %auxv.addr, align 8
  %arrayidx163 = getelementptr inbounds float, ptr %184, i64 1
  %185 = load ptr, ptr %f.addr, align 8
  %186 = load i32, ptr %k, align 4
  %187 = load i32, ptr %f_dim1, align 4
  %mul164 = mul nsw i32 %186, %187
  %add165 = add nsw i32 %mul164, 1
  %idxprom166 = sext i32 %add165 to i64
  %arrayidx167 = getelementptr inbounds float, ptr %185, i64 %idxprom166
  %call168 = call i32 @sgemv_(ptr noundef @.str.1, ptr noundef %180, ptr noundef %i__1, ptr noundef @c_b9, ptr noundef %arrayidx162, ptr noundef %183, ptr noundef %arrayidx163, ptr noundef @c__1, ptr noundef @c_b9, ptr noundef %arrayidx167, ptr noundef @c__1)
  br label %if.end169

if.end169:                                        ; preds = %if.then144, %for.end
  %188 = load i32, ptr %k, align 4
  %189 = load ptr, ptr %n.addr, align 8
  %190 = load i32, ptr %189, align 4
  %cmp170 = icmp slt i32 %188, %190
  br i1 %cmp170, label %if.then172, label %if.end187

if.then172:                                       ; preds = %if.end169
  %191 = load ptr, ptr %n.addr, align 8
  %192 = load i32, ptr %191, align 4
  %193 = load i32, ptr %k, align 4
  %sub173 = sub nsw i32 %192, %193
  store i32 %sub173, ptr %i__1, align 4
  %194 = load ptr, ptr %f.addr, align 8
  %195 = load i32, ptr %k, align 4
  %add174 = add nsw i32 %195, 1
  %196 = load i32, ptr %f_dim1, align 4
  %add175 = add nsw i32 %add174, %196
  %idxprom176 = sext i32 %add175 to i64
  %arrayidx177 = getelementptr inbounds float, ptr %194, i64 %idxprom176
  %197 = load ptr, ptr %ldf.addr, align 8
  %198 = load ptr, ptr %a.addr, align 8
  %199 = load i32, ptr %rk, align 4
  %200 = load i32, ptr %a_dim1, align 4
  %add178 = add nsw i32 %199, %200
  %idxprom179 = sext i32 %add178 to i64
  %arrayidx180 = getelementptr inbounds float, ptr %198, i64 %idxprom179
  %201 = load ptr, ptr %lda.addr, align 8
  %202 = load ptr, ptr %a.addr, align 8
  %203 = load i32, ptr %rk, align 4
  %204 = load i32, ptr %k, align 4
  %add181 = add nsw i32 %204, 1
  %205 = load i32, ptr %a_dim1, align 4
  %mul182 = mul nsw i32 %add181, %205
  %add183 = add nsw i32 %203, %mul182
  %idxprom184 = sext i32 %add183 to i64
  %arrayidx185 = getelementptr inbounds float, ptr %202, i64 %idxprom184
  %206 = load ptr, ptr %lda.addr, align 8
  %call186 = call i32 @sgemv_(ptr noundef @.str.1, ptr noundef %i__1, ptr noundef %k, ptr noundef @c_b8, ptr noundef %arrayidx177, ptr noundef %197, ptr noundef %arrayidx180, ptr noundef %201, ptr noundef @c_b9, ptr noundef %arrayidx185, ptr noundef %206)
  br label %if.end187

if.end187:                                        ; preds = %if.then172, %if.end169
  %207 = load i32, ptr %rk, align 4
  %208 = load i32, ptr %lastrk, align 4
  %cmp188 = icmp slt i32 %207, %208
  br i1 %cmp188, label %if.then190, label %if.end249

if.then190:                                       ; preds = %if.end187
  %209 = load ptr, ptr %n.addr, align 8
  %210 = load i32, ptr %209, align 4
  store i32 %210, ptr %i__1, align 4
  %211 = load i32, ptr %k, align 4
  %add191 = add nsw i32 %211, 1
  store i32 %add191, ptr %j, align 4
  br label %for.cond192

for.cond192:                                      ; preds = %for.inc246, %if.then190
  %212 = load i32, ptr %j, align 4
  %213 = load i32, ptr %i__1, align 4
  %cmp193 = icmp sle i32 %212, %213
  br i1 %cmp193, label %for.body195, label %for.end248

for.body195:                                      ; preds = %for.cond192
  %214 = load ptr, ptr %vn1.addr, align 8
  %215 = load i32, ptr %j, align 4
  %idxprom196 = sext i32 %215 to i64
  %arrayidx197 = getelementptr inbounds float, ptr %214, i64 %idxprom196
  %216 = load float, ptr %arrayidx197, align 4
  %cmp198 = fcmp une float %216, 0.000000e+00
  br i1 %cmp198, label %if.then200, label %if.end245

if.then200:                                       ; preds = %for.body195
  %217 = load ptr, ptr %a.addr, align 8
  %218 = load i32, ptr %rk, align 4
  %219 = load i32, ptr %j, align 4
  %220 = load i32, ptr %a_dim1, align 4
  %mul201 = mul nsw i32 %219, %220
  %add202 = add nsw i32 %218, %mul201
  %idxprom203 = sext i32 %add202 to i64
  %arrayidx204 = getelementptr inbounds float, ptr %217, i64 %idxprom203
  %221 = load float, ptr %arrayidx204, align 4
  store float %221, ptr %r__1, align 4
  %222 = load float, ptr %r__1, align 4
  %cmp205 = fcmp oge float %222, 0.000000e+00
  br i1 %cmp205, label %cond.true207, label %cond.false208

cond.true207:                                     ; preds = %if.then200
  %223 = load float, ptr %r__1, align 4
  br label %cond.end210

cond.false208:                                    ; preds = %if.then200
  %224 = load float, ptr %r__1, align 4
  %fneg209 = fneg float %224
  br label %cond.end210

cond.end210:                                      ; preds = %cond.false208, %cond.true207
  %cond211 = phi float [ %223, %cond.true207 ], [ %fneg209, %cond.false208 ]
  %225 = load ptr, ptr %vn1.addr, align 8
  %226 = load i32, ptr %j, align 4
  %idxprom212 = sext i32 %226 to i64
  %arrayidx213 = getelementptr inbounds float, ptr %225, i64 %idxprom212
  %227 = load float, ptr %arrayidx213, align 4
  %div = fdiv float %cond211, %227
  store float %div, ptr %temp, align 4
  store float 0.000000e+00, ptr %r__1, align 4
  %228 = load float, ptr %temp, align 4
  %add214 = fadd float %228, 1.000000e+00
  %229 = load float, ptr %temp, align 4
  %sub215 = fsub float 1.000000e+00, %229
  %mul216 = fmul float %add214, %sub215
  store float %mul216, ptr %r__2, align 4
  %230 = load float, ptr %r__1, align 4
  %231 = load float, ptr %r__2, align 4
  %cmp217 = fcmp oge float %230, %231
  br i1 %cmp217, label %cond.true219, label %cond.false220

cond.true219:                                     ; preds = %cond.end210
  %232 = load float, ptr %r__1, align 4
  br label %cond.end221

cond.false220:                                    ; preds = %cond.end210
  %233 = load float, ptr %r__2, align 4
  br label %cond.end221

cond.end221:                                      ; preds = %cond.false220, %cond.true219
  %cond222 = phi float [ %232, %cond.true219 ], [ %233, %cond.false220 ]
  store float %cond222, ptr %temp, align 4
  %234 = load ptr, ptr %vn1.addr, align 8
  %235 = load i32, ptr %j, align 4
  %idxprom223 = sext i32 %235 to i64
  %arrayidx224 = getelementptr inbounds float, ptr %234, i64 %idxprom223
  %236 = load float, ptr %arrayidx224, align 4
  %237 = load ptr, ptr %vn2.addr, align 8
  %238 = load i32, ptr %j, align 4
  %idxprom225 = sext i32 %238 to i64
  %arrayidx226 = getelementptr inbounds float, ptr %237, i64 %idxprom225
  %239 = load float, ptr %arrayidx226, align 4
  %div227 = fdiv float %236, %239
  store float %div227, ptr %r__1, align 4
  %240 = load float, ptr %temp, align 4
  %241 = load float, ptr %r__1, align 4
  %242 = load float, ptr %r__1, align 4
  %mul228 = fmul float %241, %242
  %mul229 = fmul float %240, %mul228
  store float %mul229, ptr %temp2, align 4
  %243 = load float, ptr %temp2, align 4
  %244 = load float, ptr %tol3z, align 4
  %cmp230 = fcmp ole float %243, %244
  br i1 %cmp230, label %if.then232, label %if.else236

if.then232:                                       ; preds = %cond.end221
  %245 = load i32, ptr %lsticc, align 4
  %conv233 = sitofp i32 %245 to float
  %246 = load ptr, ptr %vn2.addr, align 8
  %247 = load i32, ptr %j, align 4
  %idxprom234 = sext i32 %247 to i64
  %arrayidx235 = getelementptr inbounds float, ptr %246, i64 %idxprom234
  store float %conv233, ptr %arrayidx235, align 4
  %248 = load i32, ptr %j, align 4
  store i32 %248, ptr %lsticc, align 4
  br label %if.end244

if.else236:                                       ; preds = %cond.end221
  %249 = load float, ptr %temp, align 4
  %conv237 = fpext float %249 to double
  %call238 = call double @sqrt(double noundef %conv237) #3
  %250 = load ptr, ptr %vn1.addr, align 8
  %251 = load i32, ptr %j, align 4
  %idxprom239 = sext i32 %251 to i64
  %arrayidx240 = getelementptr inbounds float, ptr %250, i64 %idxprom239
  %252 = load float, ptr %arrayidx240, align 4
  %conv241 = fpext float %252 to double
  %mul242 = fmul double %conv241, %call238
  %conv243 = fptrunc double %mul242 to float
  store float %conv243, ptr %arrayidx240, align 4
  br label %if.end244

if.end244:                                        ; preds = %if.else236, %if.then232
  br label %if.end245

if.end245:                                        ; preds = %if.end244, %for.body195
  br label %for.inc246

for.inc246:                                       ; preds = %if.end245
  %253 = load i32, ptr %j, align 4
  %inc247 = add nsw i32 %253, 1
  store i32 %inc247, ptr %j, align 4
  br label %for.cond192, !llvm.loop !7

for.end248:                                       ; preds = %for.cond192
  br label %if.end249

if.end249:                                        ; preds = %for.end248, %if.end187
  %254 = load float, ptr %akk, align 4
  %255 = load ptr, ptr %a.addr, align 8
  %256 = load i32, ptr %rk, align 4
  %257 = load i32, ptr %k, align 4
  %258 = load i32, ptr %a_dim1, align 4
  %mul250 = mul nsw i32 %257, %258
  %add251 = add nsw i32 %256, %mul250
  %idxprom252 = sext i32 %add251 to i64
  %arrayidx253 = getelementptr inbounds float, ptr %255, i64 %idxprom252
  store float %254, ptr %arrayidx253, align 4
  br label %L10

if.end254:                                        ; preds = %land.lhs.true, %L10
  %259 = load i32, ptr %k, align 4
  %260 = load ptr, ptr %kb.addr, align 8
  store i32 %259, ptr %260, align 4
  %261 = load ptr, ptr %offset.addr, align 8
  %262 = load i32, ptr %261, align 4
  %263 = load ptr, ptr %kb.addr, align 8
  %264 = load i32, ptr %263, align 4
  %add255 = add nsw i32 %262, %264
  store i32 %add255, ptr %rk, align 4
  %265 = load ptr, ptr %n.addr, align 8
  %266 = load i32, ptr %265, align 4
  store i32 %266, ptr %i__1, align 4
  %267 = load ptr, ptr %m.addr, align 8
  %268 = load i32, ptr %267, align 4
  %269 = load ptr, ptr %offset.addr, align 8
  %270 = load i32, ptr %269, align 4
  %sub256 = sub nsw i32 %268, %270
  store i32 %sub256, ptr %i__2, align 4
  %271 = load ptr, ptr %kb.addr, align 8
  %272 = load i32, ptr %271, align 4
  %273 = load i32, ptr %i__1, align 4
  %274 = load i32, ptr %i__2, align 4
  %cmp257 = icmp sle i32 %273, %274
  br i1 %cmp257, label %cond.true259, label %cond.false260

cond.true259:                                     ; preds = %if.end254
  %275 = load i32, ptr %i__1, align 4
  br label %cond.end261

cond.false260:                                    ; preds = %if.end254
  %276 = load i32, ptr %i__2, align 4
  br label %cond.end261

cond.end261:                                      ; preds = %cond.false260, %cond.true259
  %cond262 = phi i32 [ %275, %cond.true259 ], [ %276, %cond.false260 ]
  %cmp263 = icmp slt i32 %272, %cond262
  br i1 %cmp263, label %if.then265, label %if.end283

if.then265:                                       ; preds = %cond.end261
  %277 = load ptr, ptr %m.addr, align 8
  %278 = load i32, ptr %277, align 4
  %279 = load i32, ptr %rk, align 4
  %sub266 = sub nsw i32 %278, %279
  store i32 %sub266, ptr %i__1, align 4
  %280 = load ptr, ptr %n.addr, align 8
  %281 = load i32, ptr %280, align 4
  %282 = load ptr, ptr %kb.addr, align 8
  %283 = load i32, ptr %282, align 4
  %sub267 = sub nsw i32 %281, %283
  store i32 %sub267, ptr %i__2, align 4
  %284 = load ptr, ptr %kb.addr, align 8
  %285 = load ptr, ptr %a.addr, align 8
  %286 = load i32, ptr %rk, align 4
  %add268 = add nsw i32 %286, 1
  %287 = load i32, ptr %a_dim1, align 4
  %add269 = add nsw i32 %add268, %287
  %idxprom270 = sext i32 %add269 to i64
  %arrayidx271 = getelementptr inbounds float, ptr %285, i64 %idxprom270
  %288 = load ptr, ptr %lda.addr, align 8
  %289 = load ptr, ptr %f.addr, align 8
  %290 = load ptr, ptr %kb.addr, align 8
  %291 = load i32, ptr %290, align 4
  %add272 = add nsw i32 %291, 1
  %292 = load i32, ptr %f_dim1, align 4
  %add273 = add nsw i32 %add272, %292
  %idxprom274 = sext i32 %add273 to i64
  %arrayidx275 = getelementptr inbounds float, ptr %289, i64 %idxprom274
  %293 = load ptr, ptr %ldf.addr, align 8
  %294 = load ptr, ptr %a.addr, align 8
  %295 = load i32, ptr %rk, align 4
  %add276 = add nsw i32 %295, 1
  %296 = load ptr, ptr %kb.addr, align 8
  %297 = load i32, ptr %296, align 4
  %add277 = add nsw i32 %297, 1
  %298 = load i32, ptr %a_dim1, align 4
  %mul278 = mul nsw i32 %add277, %298
  %add279 = add nsw i32 %add276, %mul278
  %idxprom280 = sext i32 %add279 to i64
  %arrayidx281 = getelementptr inbounds float, ptr %294, i64 %idxprom280
  %299 = load ptr, ptr %lda.addr, align 8
  %call282 = call i32 @sgemm_(ptr noundef @.str.1, ptr noundef @.str.2, ptr noundef %i__1, ptr noundef %i__2, ptr noundef %284, ptr noundef @c_b8, ptr noundef %arrayidx271, ptr noundef %288, ptr noundef %arrayidx275, ptr noundef %293, ptr noundef @c_b9, ptr noundef %arrayidx281, ptr noundef %299)
  br label %if.end283

if.end283:                                        ; preds = %if.then265, %cond.end261
  br label %L40

L40:                                              ; preds = %if.then286, %if.end283
  %300 = load i32, ptr %lsticc, align 4
  %cmp284 = icmp sgt i32 %300, 0
  br i1 %cmp284, label %if.then286, label %if.end303

if.then286:                                       ; preds = %L40
  %301 = load ptr, ptr %vn2.addr, align 8
  %302 = load i32, ptr %lsticc, align 4
  %idxprom287 = sext i32 %302 to i64
  %arrayidx288 = getelementptr inbounds float, ptr %301, i64 %idxprom287
  %call289 = call i32 @i_nint(ptr noundef %arrayidx288)
  store i32 %call289, ptr %itemp, align 4
  %303 = load ptr, ptr %m.addr, align 8
  %304 = load i32, ptr %303, align 4
  %305 = load i32, ptr %rk, align 4
  %sub290 = sub nsw i32 %304, %305
  store i32 %sub290, ptr %i__1, align 4
  %306 = load ptr, ptr %a.addr, align 8
  %307 = load i32, ptr %rk, align 4
  %add291 = add nsw i32 %307, 1
  %308 = load i32, ptr %lsticc, align 4
  %309 = load i32, ptr %a_dim1, align 4
  %mul292 = mul nsw i32 %308, %309
  %add293 = add nsw i32 %add291, %mul292
  %idxprom294 = sext i32 %add293 to i64
  %arrayidx295 = getelementptr inbounds float, ptr %306, i64 %idxprom294
  %call296 = call float @snrm2_(ptr noundef %i__1, ptr noundef %arrayidx295, ptr noundef @c__1)
  %310 = load ptr, ptr %vn1.addr, align 8
  %311 = load i32, ptr %lsticc, align 4
  %idxprom297 = sext i32 %311 to i64
  %arrayidx298 = getelementptr inbounds float, ptr %310, i64 %idxprom297
  store float %call296, ptr %arrayidx298, align 4
  %312 = load ptr, ptr %vn1.addr, align 8
  %313 = load i32, ptr %lsticc, align 4
  %idxprom299 = sext i32 %313 to i64
  %arrayidx300 = getelementptr inbounds float, ptr %312, i64 %idxprom299
  %314 = load float, ptr %arrayidx300, align 4
  %315 = load ptr, ptr %vn2.addr, align 8
  %316 = load i32, ptr %lsticc, align 4
  %idxprom301 = sext i32 %316 to i64
  %arrayidx302 = getelementptr inbounds float, ptr %315, i64 %idxprom301
  store float %314, ptr %arrayidx302, align 4
  %317 = load i32, ptr %itemp, align 4
  store i32 %317, ptr %lsticc, align 4
  br label %L40

if.end303:                                        ; preds = %L40
  ret i32 0
}

; Function Attrs: nounwind
declare double @sqrt(double noundef) #1

declare float @slamch_(ptr noundef) #2

declare i32 @isamax_(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @sswap_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @sgemv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @slarfg_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @sgemm_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @i_nint(ptr noundef) #2

declare float @snrm2_(ptr noundef, ptr noundef, ptr noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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

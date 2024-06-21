; ModuleID = 'samples/171.bc'
source_filename = "/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/map/lapack2flamec/f2c/c/slahrd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"No transpose\00", align 1
@c_b4 = internal global float -1.000000e+00, align 4
@c_b5 = internal global float 1.000000e+00, align 4
@c__1 = internal global i32 1, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"Lower\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"Transpose\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"Unit\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"Upper\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"Non-unit\00", align 1
@c_b38 = internal global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define i32 @slahrd_(ptr noundef %n, ptr noundef %k, ptr noundef %nb, ptr noundef %a, ptr noundef %lda, ptr noundef %tau, ptr noundef %t, ptr noundef %ldt, ptr noundef %y, ptr noundef %ldy) #0 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca ptr, align 8
  %k.addr = alloca ptr, align 8
  %nb.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %lda.addr = alloca ptr, align 8
  %tau.addr = alloca ptr, align 8
  %t.addr = alloca ptr, align 8
  %ldt.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  %ldy.addr = alloca ptr, align 8
  %a_dim1 = alloca i32, align 4
  %a_offset = alloca i32, align 4
  %t_dim1 = alloca i32, align 4
  %t_offset = alloca i32, align 4
  %y_dim1 = alloca i32, align 4
  %y_offset = alloca i32, align 4
  %i__1 = alloca i32, align 4
  %i__2 = alloca i32, align 4
  %i__3 = alloca i32, align 4
  %r__1 = alloca float, align 4
  %i__ = alloca i32, align 4
  %ei = alloca float, align 4
  store ptr %n, ptr %n.addr, align 8
  store ptr %k, ptr %k.addr, align 8
  store ptr %nb, ptr %nb.addr, align 8
  store ptr %a, ptr %a.addr, align 8
  store ptr %lda, ptr %lda.addr, align 8
  store ptr %tau, ptr %tau.addr, align 8
  store ptr %t, ptr %t.addr, align 8
  store ptr %ldt, ptr %ldt.addr, align 8
  store ptr %y, ptr %y.addr, align 8
  store ptr %ldy, ptr %ldy.addr, align 8
  %0 = load ptr, ptr %tau.addr, align 8
  %incdec.ptr = getelementptr inbounds float, ptr %0, i32 -1
  store ptr %incdec.ptr, ptr %tau.addr, align 8
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
  %add.ptr = getelementptr inbounds float, ptr %5, i64 %idx.neg
  store ptr %add.ptr, ptr %a.addr, align 8
  %6 = load ptr, ptr %ldt.addr, align 8
  %7 = load i32, ptr %6, align 4
  store i32 %7, ptr %t_dim1, align 4
  %8 = load i32, ptr %t_dim1, align 4
  %add1 = add nsw i32 1, %8
  store i32 %add1, ptr %t_offset, align 4
  %9 = load i32, ptr %t_offset, align 4
  %10 = load ptr, ptr %t.addr, align 8
  %idx.ext2 = sext i32 %9 to i64
  %idx.neg3 = sub i64 0, %idx.ext2
  %add.ptr4 = getelementptr inbounds float, ptr %10, i64 %idx.neg3
  store ptr %add.ptr4, ptr %t.addr, align 8
  %11 = load ptr, ptr %ldy.addr, align 8
  %12 = load i32, ptr %11, align 4
  store i32 %12, ptr %y_dim1, align 4
  %13 = load i32, ptr %y_dim1, align 4
  %add5 = add nsw i32 1, %13
  store i32 %add5, ptr %y_offset, align 4
  %14 = load i32, ptr %y_offset, align 4
  %15 = load ptr, ptr %y.addr, align 8
  %idx.ext6 = sext i32 %14 to i64
  %idx.neg7 = sub i64 0, %idx.ext6
  %add.ptr8 = getelementptr inbounds float, ptr %15, i64 %idx.neg7
  store ptr %add.ptr8, ptr %y.addr, align 8
  %16 = load ptr, ptr %n.addr, align 8
  %17 = load i32, ptr %16, align 4
  %cmp = icmp sle i32 %17, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %18 = load ptr, ptr %nb.addr, align 8
  %19 = load i32, ptr %18, align 4
  store i32 %19, ptr %i__1, align 4
  store i32 1, ptr %i__, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %20 = load i32, ptr %i__, align 4
  %21 = load i32, ptr %i__1, align 4
  %cmp9 = icmp sle i32 %20, %21
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load i32, ptr %i__, align 4
  %cmp10 = icmp sgt i32 %22, 1
  br i1 %cmp10, label %if.then11, label %if.end113

if.then11:                                        ; preds = %for.body
  %23 = load i32, ptr %i__, align 4
  %sub = sub nsw i32 %23, 1
  store i32 %sub, ptr %i__2, align 4
  %24 = load ptr, ptr %n.addr, align 8
  %25 = load ptr, ptr %y.addr, align 8
  %26 = load i32, ptr %y_offset, align 4
  %idxprom = sext i32 %26 to i64
  %arrayidx = getelementptr inbounds float, ptr %25, i64 %idxprom
  %27 = load ptr, ptr %ldy.addr, align 8
  %28 = load ptr, ptr %a.addr, align 8
  %29 = load ptr, ptr %k.addr, align 8
  %30 = load i32, ptr %29, align 4
  %31 = load i32, ptr %i__, align 4
  %add12 = add nsw i32 %30, %31
  %sub13 = sub nsw i32 %add12, 1
  %32 = load i32, ptr %a_dim1, align 4
  %add14 = add nsw i32 %sub13, %32
  %idxprom15 = sext i32 %add14 to i64
  %arrayidx16 = getelementptr inbounds float, ptr %28, i64 %idxprom15
  %33 = load ptr, ptr %lda.addr, align 8
  %34 = load ptr, ptr %a.addr, align 8
  %35 = load i32, ptr %i__, align 4
  %36 = load i32, ptr %a_dim1, align 4
  %mul = mul nsw i32 %35, %36
  %add17 = add nsw i32 %mul, 1
  %idxprom18 = sext i32 %add17 to i64
  %arrayidx19 = getelementptr inbounds float, ptr %34, i64 %idxprom18
  %call = call i32 @sgemv_(ptr noundef @.str, ptr noundef %24, ptr noundef %i__2, ptr noundef @c_b4, ptr noundef %arrayidx, ptr noundef %27, ptr noundef %arrayidx16, ptr noundef %33, ptr noundef @c_b5, ptr noundef %arrayidx19, ptr noundef @c__1)
  %37 = load i32, ptr %i__, align 4
  %sub20 = sub nsw i32 %37, 1
  store i32 %sub20, ptr %i__2, align 4
  %38 = load ptr, ptr %a.addr, align 8
  %39 = load ptr, ptr %k.addr, align 8
  %40 = load i32, ptr %39, align 4
  %add21 = add nsw i32 %40, 1
  %41 = load i32, ptr %i__, align 4
  %42 = load i32, ptr %a_dim1, align 4
  %mul22 = mul nsw i32 %41, %42
  %add23 = add nsw i32 %add21, %mul22
  %idxprom24 = sext i32 %add23 to i64
  %arrayidx25 = getelementptr inbounds float, ptr %38, i64 %idxprom24
  %43 = load ptr, ptr %t.addr, align 8
  %44 = load ptr, ptr %nb.addr, align 8
  %45 = load i32, ptr %44, align 4
  %46 = load i32, ptr %t_dim1, align 4
  %mul26 = mul nsw i32 %45, %46
  %add27 = add nsw i32 %mul26, 1
  %idxprom28 = sext i32 %add27 to i64
  %arrayidx29 = getelementptr inbounds float, ptr %43, i64 %idxprom28
  %call30 = call i32 @scopy_(ptr noundef %i__2, ptr noundef %arrayidx25, ptr noundef @c__1, ptr noundef %arrayidx29, ptr noundef @c__1)
  %47 = load i32, ptr %i__, align 4
  %sub31 = sub nsw i32 %47, 1
  store i32 %sub31, ptr %i__2, align 4
  %48 = load ptr, ptr %a.addr, align 8
  %49 = load ptr, ptr %k.addr, align 8
  %50 = load i32, ptr %49, align 4
  %add32 = add nsw i32 %50, 1
  %51 = load i32, ptr %a_dim1, align 4
  %add33 = add nsw i32 %add32, %51
  %idxprom34 = sext i32 %add33 to i64
  %arrayidx35 = getelementptr inbounds float, ptr %48, i64 %idxprom34
  %52 = load ptr, ptr %lda.addr, align 8
  %53 = load ptr, ptr %t.addr, align 8
  %54 = load ptr, ptr %nb.addr, align 8
  %55 = load i32, ptr %54, align 4
  %56 = load i32, ptr %t_dim1, align 4
  %mul36 = mul nsw i32 %55, %56
  %add37 = add nsw i32 %mul36, 1
  %idxprom38 = sext i32 %add37 to i64
  %arrayidx39 = getelementptr inbounds float, ptr %53, i64 %idxprom38
  %call40 = call i32 @strmv_(ptr noundef @.str.1, ptr noundef @.str.2, ptr noundef @.str.3, ptr noundef %i__2, ptr noundef %arrayidx35, ptr noundef %52, ptr noundef %arrayidx39, ptr noundef @c__1)
  %57 = load ptr, ptr %n.addr, align 8
  %58 = load i32, ptr %57, align 4
  %59 = load ptr, ptr %k.addr, align 8
  %60 = load i32, ptr %59, align 4
  %sub41 = sub nsw i32 %58, %60
  %61 = load i32, ptr %i__, align 4
  %sub42 = sub nsw i32 %sub41, %61
  %add43 = add nsw i32 %sub42, 1
  store i32 %add43, ptr %i__2, align 4
  %62 = load i32, ptr %i__, align 4
  %sub44 = sub nsw i32 %62, 1
  store i32 %sub44, ptr %i__3, align 4
  %63 = load ptr, ptr %a.addr, align 8
  %64 = load ptr, ptr %k.addr, align 8
  %65 = load i32, ptr %64, align 4
  %66 = load i32, ptr %i__, align 4
  %add45 = add nsw i32 %65, %66
  %67 = load i32, ptr %a_dim1, align 4
  %add46 = add nsw i32 %add45, %67
  %idxprom47 = sext i32 %add46 to i64
  %arrayidx48 = getelementptr inbounds float, ptr %63, i64 %idxprom47
  %68 = load ptr, ptr %lda.addr, align 8
  %69 = load ptr, ptr %a.addr, align 8
  %70 = load ptr, ptr %k.addr, align 8
  %71 = load i32, ptr %70, align 4
  %72 = load i32, ptr %i__, align 4
  %add49 = add nsw i32 %71, %72
  %73 = load i32, ptr %i__, align 4
  %74 = load i32, ptr %a_dim1, align 4
  %mul50 = mul nsw i32 %73, %74
  %add51 = add nsw i32 %add49, %mul50
  %idxprom52 = sext i32 %add51 to i64
  %arrayidx53 = getelementptr inbounds float, ptr %69, i64 %idxprom52
  %75 = load ptr, ptr %t.addr, align 8
  %76 = load ptr, ptr %nb.addr, align 8
  %77 = load i32, ptr %76, align 4
  %78 = load i32, ptr %t_dim1, align 4
  %mul54 = mul nsw i32 %77, %78
  %add55 = add nsw i32 %mul54, 1
  %idxprom56 = sext i32 %add55 to i64
  %arrayidx57 = getelementptr inbounds float, ptr %75, i64 %idxprom56
  %call58 = call i32 @sgemv_(ptr noundef @.str.2, ptr noundef %i__2, ptr noundef %i__3, ptr noundef @c_b5, ptr noundef %arrayidx48, ptr noundef %68, ptr noundef %arrayidx53, ptr noundef @c__1, ptr noundef @c_b5, ptr noundef %arrayidx57, ptr noundef @c__1)
  %79 = load i32, ptr %i__, align 4
  %sub59 = sub nsw i32 %79, 1
  store i32 %sub59, ptr %i__2, align 4
  %80 = load ptr, ptr %t.addr, align 8
  %81 = load i32, ptr %t_offset, align 4
  %idxprom60 = sext i32 %81 to i64
  %arrayidx61 = getelementptr inbounds float, ptr %80, i64 %idxprom60
  %82 = load ptr, ptr %ldt.addr, align 8
  %83 = load ptr, ptr %t.addr, align 8
  %84 = load ptr, ptr %nb.addr, align 8
  %85 = load i32, ptr %84, align 4
  %86 = load i32, ptr %t_dim1, align 4
  %mul62 = mul nsw i32 %85, %86
  %add63 = add nsw i32 %mul62, 1
  %idxprom64 = sext i32 %add63 to i64
  %arrayidx65 = getelementptr inbounds float, ptr %83, i64 %idxprom64
  %call66 = call i32 @strmv_(ptr noundef @.str.4, ptr noundef @.str.2, ptr noundef @.str.5, ptr noundef %i__2, ptr noundef %arrayidx61, ptr noundef %82, ptr noundef %arrayidx65, ptr noundef @c__1)
  %87 = load ptr, ptr %n.addr, align 8
  %88 = load i32, ptr %87, align 4
  %89 = load ptr, ptr %k.addr, align 8
  %90 = load i32, ptr %89, align 4
  %sub67 = sub nsw i32 %88, %90
  %91 = load i32, ptr %i__, align 4
  %sub68 = sub nsw i32 %sub67, %91
  %add69 = add nsw i32 %sub68, 1
  store i32 %add69, ptr %i__2, align 4
  %92 = load i32, ptr %i__, align 4
  %sub70 = sub nsw i32 %92, 1
  store i32 %sub70, ptr %i__3, align 4
  %93 = load ptr, ptr %a.addr, align 8
  %94 = load ptr, ptr %k.addr, align 8
  %95 = load i32, ptr %94, align 4
  %96 = load i32, ptr %i__, align 4
  %add71 = add nsw i32 %95, %96
  %97 = load i32, ptr %a_dim1, align 4
  %add72 = add nsw i32 %add71, %97
  %idxprom73 = sext i32 %add72 to i64
  %arrayidx74 = getelementptr inbounds float, ptr %93, i64 %idxprom73
  %98 = load ptr, ptr %lda.addr, align 8
  %99 = load ptr, ptr %t.addr, align 8
  %100 = load ptr, ptr %nb.addr, align 8
  %101 = load i32, ptr %100, align 4
  %102 = load i32, ptr %t_dim1, align 4
  %mul75 = mul nsw i32 %101, %102
  %add76 = add nsw i32 %mul75, 1
  %idxprom77 = sext i32 %add76 to i64
  %arrayidx78 = getelementptr inbounds float, ptr %99, i64 %idxprom77
  %103 = load ptr, ptr %a.addr, align 8
  %104 = load ptr, ptr %k.addr, align 8
  %105 = load i32, ptr %104, align 4
  %106 = load i32, ptr %i__, align 4
  %add79 = add nsw i32 %105, %106
  %107 = load i32, ptr %i__, align 4
  %108 = load i32, ptr %a_dim1, align 4
  %mul80 = mul nsw i32 %107, %108
  %add81 = add nsw i32 %add79, %mul80
  %idxprom82 = sext i32 %add81 to i64
  %arrayidx83 = getelementptr inbounds float, ptr %103, i64 %idxprom82
  %call84 = call i32 @sgemv_(ptr noundef @.str, ptr noundef %i__2, ptr noundef %i__3, ptr noundef @c_b4, ptr noundef %arrayidx74, ptr noundef %98, ptr noundef %arrayidx78, ptr noundef @c__1, ptr noundef @c_b5, ptr noundef %arrayidx83, ptr noundef @c__1)
  %109 = load i32, ptr %i__, align 4
  %sub85 = sub nsw i32 %109, 1
  store i32 %sub85, ptr %i__2, align 4
  %110 = load ptr, ptr %a.addr, align 8
  %111 = load ptr, ptr %k.addr, align 8
  %112 = load i32, ptr %111, align 4
  %add86 = add nsw i32 %112, 1
  %113 = load i32, ptr %a_dim1, align 4
  %add87 = add nsw i32 %add86, %113
  %idxprom88 = sext i32 %add87 to i64
  %arrayidx89 = getelementptr inbounds float, ptr %110, i64 %idxprom88
  %114 = load ptr, ptr %lda.addr, align 8
  %115 = load ptr, ptr %t.addr, align 8
  %116 = load ptr, ptr %nb.addr, align 8
  %117 = load i32, ptr %116, align 4
  %118 = load i32, ptr %t_dim1, align 4
  %mul90 = mul nsw i32 %117, %118
  %add91 = add nsw i32 %mul90, 1
  %idxprom92 = sext i32 %add91 to i64
  %arrayidx93 = getelementptr inbounds float, ptr %115, i64 %idxprom92
  %call94 = call i32 @strmv_(ptr noundef @.str.1, ptr noundef @.str, ptr noundef @.str.3, ptr noundef %i__2, ptr noundef %arrayidx89, ptr noundef %114, ptr noundef %arrayidx93, ptr noundef @c__1)
  %119 = load i32, ptr %i__, align 4
  %sub95 = sub nsw i32 %119, 1
  store i32 %sub95, ptr %i__2, align 4
  %120 = load ptr, ptr %t.addr, align 8
  %121 = load ptr, ptr %nb.addr, align 8
  %122 = load i32, ptr %121, align 4
  %123 = load i32, ptr %t_dim1, align 4
  %mul96 = mul nsw i32 %122, %123
  %add97 = add nsw i32 %mul96, 1
  %idxprom98 = sext i32 %add97 to i64
  %arrayidx99 = getelementptr inbounds float, ptr %120, i64 %idxprom98
  %124 = load ptr, ptr %a.addr, align 8
  %125 = load ptr, ptr %k.addr, align 8
  %126 = load i32, ptr %125, align 4
  %add100 = add nsw i32 %126, 1
  %127 = load i32, ptr %i__, align 4
  %128 = load i32, ptr %a_dim1, align 4
  %mul101 = mul nsw i32 %127, %128
  %add102 = add nsw i32 %add100, %mul101
  %idxprom103 = sext i32 %add102 to i64
  %arrayidx104 = getelementptr inbounds float, ptr %124, i64 %idxprom103
  %call105 = call i32 @saxpy_(ptr noundef %i__2, ptr noundef @c_b4, ptr noundef %arrayidx99, ptr noundef @c__1, ptr noundef %arrayidx104, ptr noundef @c__1)
  %129 = load float, ptr %ei, align 4
  %130 = load ptr, ptr %a.addr, align 8
  %131 = load ptr, ptr %k.addr, align 8
  %132 = load i32, ptr %131, align 4
  %133 = load i32, ptr %i__, align 4
  %add106 = add nsw i32 %132, %133
  %sub107 = sub nsw i32 %add106, 1
  %134 = load i32, ptr %i__, align 4
  %sub108 = sub nsw i32 %134, 1
  %135 = load i32, ptr %a_dim1, align 4
  %mul109 = mul nsw i32 %sub108, %135
  %add110 = add nsw i32 %sub107, %mul109
  %idxprom111 = sext i32 %add110 to i64
  %arrayidx112 = getelementptr inbounds float, ptr %130, i64 %idxprom111
  store float %129, ptr %arrayidx112, align 4
  br label %if.end113

if.end113:                                        ; preds = %if.then11, %for.body
  %136 = load ptr, ptr %n.addr, align 8
  %137 = load i32, ptr %136, align 4
  %138 = load ptr, ptr %k.addr, align 8
  %139 = load i32, ptr %138, align 4
  %sub114 = sub nsw i32 %137, %139
  %140 = load i32, ptr %i__, align 4
  %sub115 = sub nsw i32 %sub114, %140
  %add116 = add nsw i32 %sub115, 1
  store i32 %add116, ptr %i__2, align 4
  %141 = load ptr, ptr %k.addr, align 8
  %142 = load i32, ptr %141, align 4
  %143 = load i32, ptr %i__, align 4
  %add117 = add nsw i32 %142, %143
  %add118 = add nsw i32 %add117, 1
  store i32 %add118, ptr %i__3, align 4
  %144 = load ptr, ptr %a.addr, align 8
  %145 = load ptr, ptr %k.addr, align 8
  %146 = load i32, ptr %145, align 4
  %147 = load i32, ptr %i__, align 4
  %add119 = add nsw i32 %146, %147
  %148 = load i32, ptr %i__, align 4
  %149 = load i32, ptr %a_dim1, align 4
  %mul120 = mul nsw i32 %148, %149
  %add121 = add nsw i32 %add119, %mul120
  %idxprom122 = sext i32 %add121 to i64
  %arrayidx123 = getelementptr inbounds float, ptr %144, i64 %idxprom122
  %150 = load ptr, ptr %a.addr, align 8
  %151 = load i32, ptr %i__3, align 4
  %152 = load ptr, ptr %n.addr, align 8
  %153 = load i32, ptr %152, align 4
  %cmp124 = icmp sle i32 %151, %153
  br i1 %cmp124, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end113
  %154 = load i32, ptr %i__3, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end113
  %155 = load ptr, ptr %n.addr, align 8
  %156 = load i32, ptr %155, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %154, %cond.true ], [ %156, %cond.false ]
  %157 = load i32, ptr %i__, align 4
  %158 = load i32, ptr %a_dim1, align 4
  %mul125 = mul nsw i32 %157, %158
  %add126 = add nsw i32 %cond, %mul125
  %idxprom127 = sext i32 %add126 to i64
  %arrayidx128 = getelementptr inbounds float, ptr %150, i64 %idxprom127
  %159 = load ptr, ptr %tau.addr, align 8
  %160 = load i32, ptr %i__, align 4
  %idxprom129 = sext i32 %160 to i64
  %arrayidx130 = getelementptr inbounds float, ptr %159, i64 %idxprom129
  %call131 = call i32 @slarfg_(ptr noundef %i__2, ptr noundef %arrayidx123, ptr noundef %arrayidx128, ptr noundef @c__1, ptr noundef %arrayidx130)
  %161 = load ptr, ptr %a.addr, align 8
  %162 = load ptr, ptr %k.addr, align 8
  %163 = load i32, ptr %162, align 4
  %164 = load i32, ptr %i__, align 4
  %add132 = add nsw i32 %163, %164
  %165 = load i32, ptr %i__, align 4
  %166 = load i32, ptr %a_dim1, align 4
  %mul133 = mul nsw i32 %165, %166
  %add134 = add nsw i32 %add132, %mul133
  %idxprom135 = sext i32 %add134 to i64
  %arrayidx136 = getelementptr inbounds float, ptr %161, i64 %idxprom135
  %167 = load float, ptr %arrayidx136, align 4
  store float %167, ptr %ei, align 4
  %168 = load ptr, ptr %a.addr, align 8
  %169 = load ptr, ptr %k.addr, align 8
  %170 = load i32, ptr %169, align 4
  %171 = load i32, ptr %i__, align 4
  %add137 = add nsw i32 %170, %171
  %172 = load i32, ptr %i__, align 4
  %173 = load i32, ptr %a_dim1, align 4
  %mul138 = mul nsw i32 %172, %173
  %add139 = add nsw i32 %add137, %mul138
  %idxprom140 = sext i32 %add139 to i64
  %arrayidx141 = getelementptr inbounds float, ptr %168, i64 %idxprom140
  store float 1.000000e+00, ptr %arrayidx141, align 4
  %174 = load ptr, ptr %n.addr, align 8
  %175 = load i32, ptr %174, align 4
  %176 = load ptr, ptr %k.addr, align 8
  %177 = load i32, ptr %176, align 4
  %sub142 = sub nsw i32 %175, %177
  %178 = load i32, ptr %i__, align 4
  %sub143 = sub nsw i32 %sub142, %178
  %add144 = add nsw i32 %sub143, 1
  store i32 %add144, ptr %i__2, align 4
  %179 = load ptr, ptr %n.addr, align 8
  %180 = load ptr, ptr %a.addr, align 8
  %181 = load i32, ptr %i__, align 4
  %add145 = add nsw i32 %181, 1
  %182 = load i32, ptr %a_dim1, align 4
  %mul146 = mul nsw i32 %add145, %182
  %add147 = add nsw i32 %mul146, 1
  %idxprom148 = sext i32 %add147 to i64
  %arrayidx149 = getelementptr inbounds float, ptr %180, i64 %idxprom148
  %183 = load ptr, ptr %lda.addr, align 8
  %184 = load ptr, ptr %a.addr, align 8
  %185 = load ptr, ptr %k.addr, align 8
  %186 = load i32, ptr %185, align 4
  %187 = load i32, ptr %i__, align 4
  %add150 = add nsw i32 %186, %187
  %188 = load i32, ptr %i__, align 4
  %189 = load i32, ptr %a_dim1, align 4
  %mul151 = mul nsw i32 %188, %189
  %add152 = add nsw i32 %add150, %mul151
  %idxprom153 = sext i32 %add152 to i64
  %arrayidx154 = getelementptr inbounds float, ptr %184, i64 %idxprom153
  %190 = load ptr, ptr %y.addr, align 8
  %191 = load i32, ptr %i__, align 4
  %192 = load i32, ptr %y_dim1, align 4
  %mul155 = mul nsw i32 %191, %192
  %add156 = add nsw i32 %mul155, 1
  %idxprom157 = sext i32 %add156 to i64
  %arrayidx158 = getelementptr inbounds float, ptr %190, i64 %idxprom157
  %call159 = call i32 @sgemv_(ptr noundef @.str, ptr noundef %179, ptr noundef %i__2, ptr noundef @c_b5, ptr noundef %arrayidx149, ptr noundef %183, ptr noundef %arrayidx154, ptr noundef @c__1, ptr noundef @c_b38, ptr noundef %arrayidx158, ptr noundef @c__1)
  %193 = load ptr, ptr %n.addr, align 8
  %194 = load i32, ptr %193, align 4
  %195 = load ptr, ptr %k.addr, align 8
  %196 = load i32, ptr %195, align 4
  %sub160 = sub nsw i32 %194, %196
  %197 = load i32, ptr %i__, align 4
  %sub161 = sub nsw i32 %sub160, %197
  %add162 = add nsw i32 %sub161, 1
  store i32 %add162, ptr %i__2, align 4
  %198 = load i32, ptr %i__, align 4
  %sub163 = sub nsw i32 %198, 1
  store i32 %sub163, ptr %i__3, align 4
  %199 = load ptr, ptr %a.addr, align 8
  %200 = load ptr, ptr %k.addr, align 8
  %201 = load i32, ptr %200, align 4
  %202 = load i32, ptr %i__, align 4
  %add164 = add nsw i32 %201, %202
  %203 = load i32, ptr %a_dim1, align 4
  %add165 = add nsw i32 %add164, %203
  %idxprom166 = sext i32 %add165 to i64
  %arrayidx167 = getelementptr inbounds float, ptr %199, i64 %idxprom166
  %204 = load ptr, ptr %lda.addr, align 8
  %205 = load ptr, ptr %a.addr, align 8
  %206 = load ptr, ptr %k.addr, align 8
  %207 = load i32, ptr %206, align 4
  %208 = load i32, ptr %i__, align 4
  %add168 = add nsw i32 %207, %208
  %209 = load i32, ptr %i__, align 4
  %210 = load i32, ptr %a_dim1, align 4
  %mul169 = mul nsw i32 %209, %210
  %add170 = add nsw i32 %add168, %mul169
  %idxprom171 = sext i32 %add170 to i64
  %arrayidx172 = getelementptr inbounds float, ptr %205, i64 %idxprom171
  %211 = load ptr, ptr %t.addr, align 8
  %212 = load i32, ptr %i__, align 4
  %213 = load i32, ptr %t_dim1, align 4
  %mul173 = mul nsw i32 %212, %213
  %add174 = add nsw i32 %mul173, 1
  %idxprom175 = sext i32 %add174 to i64
  %arrayidx176 = getelementptr inbounds float, ptr %211, i64 %idxprom175
  %call177 = call i32 @sgemv_(ptr noundef @.str.2, ptr noundef %i__2, ptr noundef %i__3, ptr noundef @c_b5, ptr noundef %arrayidx167, ptr noundef %204, ptr noundef %arrayidx172, ptr noundef @c__1, ptr noundef @c_b38, ptr noundef %arrayidx176, ptr noundef @c__1)
  %214 = load i32, ptr %i__, align 4
  %sub178 = sub nsw i32 %214, 1
  store i32 %sub178, ptr %i__2, align 4
  %215 = load ptr, ptr %n.addr, align 8
  %216 = load ptr, ptr %y.addr, align 8
  %217 = load i32, ptr %y_offset, align 4
  %idxprom179 = sext i32 %217 to i64
  %arrayidx180 = getelementptr inbounds float, ptr %216, i64 %idxprom179
  %218 = load ptr, ptr %ldy.addr, align 8
  %219 = load ptr, ptr %t.addr, align 8
  %220 = load i32, ptr %i__, align 4
  %221 = load i32, ptr %t_dim1, align 4
  %mul181 = mul nsw i32 %220, %221
  %add182 = add nsw i32 %mul181, 1
  %idxprom183 = sext i32 %add182 to i64
  %arrayidx184 = getelementptr inbounds float, ptr %219, i64 %idxprom183
  %222 = load ptr, ptr %y.addr, align 8
  %223 = load i32, ptr %i__, align 4
  %224 = load i32, ptr %y_dim1, align 4
  %mul185 = mul nsw i32 %223, %224
  %add186 = add nsw i32 %mul185, 1
  %idxprom187 = sext i32 %add186 to i64
  %arrayidx188 = getelementptr inbounds float, ptr %222, i64 %idxprom187
  %call189 = call i32 @sgemv_(ptr noundef @.str, ptr noundef %215, ptr noundef %i__2, ptr noundef @c_b4, ptr noundef %arrayidx180, ptr noundef %218, ptr noundef %arrayidx184, ptr noundef @c__1, ptr noundef @c_b5, ptr noundef %arrayidx188, ptr noundef @c__1)
  %225 = load ptr, ptr %n.addr, align 8
  %226 = load ptr, ptr %tau.addr, align 8
  %227 = load i32, ptr %i__, align 4
  %idxprom190 = sext i32 %227 to i64
  %arrayidx191 = getelementptr inbounds float, ptr %226, i64 %idxprom190
  %228 = load ptr, ptr %y.addr, align 8
  %229 = load i32, ptr %i__, align 4
  %230 = load i32, ptr %y_dim1, align 4
  %mul192 = mul nsw i32 %229, %230
  %add193 = add nsw i32 %mul192, 1
  %idxprom194 = sext i32 %add193 to i64
  %arrayidx195 = getelementptr inbounds float, ptr %228, i64 %idxprom194
  %call196 = call i32 @sscal_(ptr noundef %225, ptr noundef %arrayidx191, ptr noundef %arrayidx195, ptr noundef @c__1)
  %231 = load i32, ptr %i__, align 4
  %sub197 = sub nsw i32 %231, 1
  store i32 %sub197, ptr %i__2, align 4
  %232 = load ptr, ptr %tau.addr, align 8
  %233 = load i32, ptr %i__, align 4
  %idxprom198 = sext i32 %233 to i64
  %arrayidx199 = getelementptr inbounds float, ptr %232, i64 %idxprom198
  %234 = load float, ptr %arrayidx199, align 4
  %fneg = fneg float %234
  store float %fneg, ptr %r__1, align 4
  %235 = load ptr, ptr %t.addr, align 8
  %236 = load i32, ptr %i__, align 4
  %237 = load i32, ptr %t_dim1, align 4
  %mul200 = mul nsw i32 %236, %237
  %add201 = add nsw i32 %mul200, 1
  %idxprom202 = sext i32 %add201 to i64
  %arrayidx203 = getelementptr inbounds float, ptr %235, i64 %idxprom202
  %call204 = call i32 @sscal_(ptr noundef %i__2, ptr noundef %r__1, ptr noundef %arrayidx203, ptr noundef @c__1)
  %238 = load i32, ptr %i__, align 4
  %sub205 = sub nsw i32 %238, 1
  store i32 %sub205, ptr %i__2, align 4
  %239 = load ptr, ptr %t.addr, align 8
  %240 = load i32, ptr %t_offset, align 4
  %idxprom206 = sext i32 %240 to i64
  %arrayidx207 = getelementptr inbounds float, ptr %239, i64 %idxprom206
  %241 = load ptr, ptr %ldt.addr, align 8
  %242 = load ptr, ptr %t.addr, align 8
  %243 = load i32, ptr %i__, align 4
  %244 = load i32, ptr %t_dim1, align 4
  %mul208 = mul nsw i32 %243, %244
  %add209 = add nsw i32 %mul208, 1
  %idxprom210 = sext i32 %add209 to i64
  %arrayidx211 = getelementptr inbounds float, ptr %242, i64 %idxprom210
  %call212 = call i32 @strmv_(ptr noundef @.str.4, ptr noundef @.str, ptr noundef @.str.5, ptr noundef %i__2, ptr noundef %arrayidx207, ptr noundef %241, ptr noundef %arrayidx211, ptr noundef @c__1)
  %245 = load ptr, ptr %tau.addr, align 8
  %246 = load i32, ptr %i__, align 4
  %idxprom213 = sext i32 %246 to i64
  %arrayidx214 = getelementptr inbounds float, ptr %245, i64 %idxprom213
  %247 = load float, ptr %arrayidx214, align 4
  %248 = load ptr, ptr %t.addr, align 8
  %249 = load i32, ptr %i__, align 4
  %250 = load i32, ptr %i__, align 4
  %251 = load i32, ptr %t_dim1, align 4
  %mul215 = mul nsw i32 %250, %251
  %add216 = add nsw i32 %249, %mul215
  %idxprom217 = sext i32 %add216 to i64
  %arrayidx218 = getelementptr inbounds float, ptr %248, i64 %idxprom217
  store float %247, ptr %arrayidx218, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %252 = load i32, ptr %i__, align 4
  %inc = add nsw i32 %252, 1
  store i32 %inc, ptr %i__, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %253 = load float, ptr %ei, align 4
  %254 = load ptr, ptr %a.addr, align 8
  %255 = load ptr, ptr %k.addr, align 8
  %256 = load i32, ptr %255, align 4
  %257 = load ptr, ptr %nb.addr, align 8
  %258 = load i32, ptr %257, align 4
  %add219 = add nsw i32 %256, %258
  %259 = load ptr, ptr %nb.addr, align 8
  %260 = load i32, ptr %259, align 4
  %261 = load i32, ptr %a_dim1, align 4
  %mul220 = mul nsw i32 %260, %261
  %add221 = add nsw i32 %add219, %mul220
  %idxprom222 = sext i32 %add221 to i64
  %arrayidx223 = getelementptr inbounds float, ptr %254, i64 %idxprom222
  store float %253, ptr %arrayidx223, align 4
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %262 = load i32, ptr %retval, align 4
  ret i32 %262
}

declare i32 @sgemv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @scopy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @strmv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @saxpy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @slarfg_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @sscal_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

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

; ModuleID = 'samples/564.bc'
source_filename = "/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/map/lapack2flamec/f2c/c/claswp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.complex = type { float, float }

; Function Attrs: noinline nounwind optnone uwtable
define i32 @claswp_(ptr noundef %n, ptr noundef %a, ptr noundef %lda, ptr noundef %k1, ptr noundef %k2, ptr noundef %ipiv, ptr noundef %incx) #0 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %lda.addr = alloca ptr, align 8
  %k1.addr = alloca ptr, align 8
  %k2.addr = alloca ptr, align 8
  %ipiv.addr = alloca ptr, align 8
  %incx.addr = alloca ptr, align 8
  %a_dim1 = alloca i32, align 4
  %a_offset = alloca i32, align 4
  %i__1 = alloca i32, align 4
  %i__2 = alloca i32, align 4
  %i__3 = alloca i32, align 4
  %i__4 = alloca i32, align 4
  %i__5 = alloca i32, align 4
  %i__6 = alloca i32, align 4
  %i__ = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %i1 = alloca i32, align 4
  %i2 = alloca i32, align 4
  %n32 = alloca i32, align 4
  %ip = alloca i32, align 4
  %ix = alloca i32, align 4
  %ix0 = alloca i32, align 4
  %inc = alloca i32, align 4
  %temp = alloca %struct.complex, align 4
  store ptr %n, ptr %n.addr, align 8
  store ptr %a, ptr %a.addr, align 8
  store ptr %lda, ptr %lda.addr, align 8
  store ptr %k1, ptr %k1.addr, align 8
  store ptr %k2, ptr %k2.addr, align 8
  store ptr %ipiv, ptr %ipiv.addr, align 8
  store ptr %incx, ptr %incx.addr, align 8
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
  %5 = load ptr, ptr %ipiv.addr, align 8
  %incdec.ptr = getelementptr inbounds i32, ptr %5, i32 -1
  store ptr %incdec.ptr, ptr %ipiv.addr, align 8
  %6 = load ptr, ptr %incx.addr, align 8
  %7 = load i32, ptr %6, align 4
  %cmp = icmp sgt i32 %7, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %k1.addr, align 8
  %9 = load i32, ptr %8, align 4
  store i32 %9, ptr %ix0, align 4
  %10 = load ptr, ptr %k1.addr, align 8
  %11 = load i32, ptr %10, align 4
  store i32 %11, ptr %i1, align 4
  %12 = load ptr, ptr %k2.addr, align 8
  %13 = load i32, ptr %12, align 4
  store i32 %13, ptr %i2, align 4
  store i32 1, ptr %inc, align 4
  br label %if.end5

if.else:                                          ; preds = %entry
  %14 = load ptr, ptr %incx.addr, align 8
  %15 = load i32, ptr %14, align 4
  %cmp1 = icmp slt i32 %15, 0
  br i1 %cmp1, label %if.then2, label %if.else4

if.then2:                                         ; preds = %if.else
  %16 = load ptr, ptr %k2.addr, align 8
  %17 = load i32, ptr %16, align 4
  %sub = sub nsw i32 1, %17
  %18 = load ptr, ptr %incx.addr, align 8
  %19 = load i32, ptr %18, align 4
  %mul = mul nsw i32 %sub, %19
  %add3 = add nsw i32 %mul, 1
  store i32 %add3, ptr %ix0, align 4
  %20 = load ptr, ptr %k2.addr, align 8
  %21 = load i32, ptr %20, align 4
  store i32 %21, ptr %i1, align 4
  %22 = load ptr, ptr %k1.addr, align 8
  %23 = load i32, ptr %22, align 4
  store i32 %23, ptr %i2, align 4
  store i32 -1, ptr %inc, align 4
  br label %if.end

if.else4:                                         ; preds = %if.else
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then2
  br label %if.end5

if.end5:                                          ; preds = %if.end, %if.then
  %24 = load ptr, ptr %n.addr, align 8
  %25 = load i32, ptr %24, align 4
  %div = sdiv i32 %25, 32
  %shl = shl i32 %div, 5
  store i32 %shl, ptr %n32, align 4
  %26 = load i32, ptr %n32, align 4
  %cmp6 = icmp ne i32 %26, 0
  br i1 %cmp6, label %if.then7, label %if.end66

if.then7:                                         ; preds = %if.end5
  %27 = load i32, ptr %n32, align 4
  store i32 %27, ptr %i__1, align 4
  store i32 1, ptr %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc63, %if.then7
  %28 = load i32, ptr %j, align 4
  %29 = load i32, ptr %i__1, align 4
  %cmp8 = icmp sle i32 %28, %29
  br i1 %cmp8, label %for.body, label %for.end65

for.body:                                         ; preds = %for.cond
  %30 = load i32, ptr %ix0, align 4
  store i32 %30, ptr %ix, align 4
  %31 = load i32, ptr %i2, align 4
  store i32 %31, ptr %i__2, align 4
  %32 = load i32, ptr %inc, align 4
  store i32 %32, ptr %i__3, align 4
  %33 = load i32, ptr %i1, align 4
  store i32 %33, ptr %i__, align 4
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc60, %for.body
  %34 = load i32, ptr %i__3, align 4
  %cmp10 = icmp slt i32 %34, 0
  br i1 %cmp10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.cond9
  %35 = load i32, ptr %i__, align 4
  %36 = load i32, ptr %i__2, align 4
  %cmp11 = icmp sge i32 %35, %36
  %conv = zext i1 %cmp11 to i32
  br label %cond.end

cond.false:                                       ; preds = %for.cond9
  %37 = load i32, ptr %i__, align 4
  %38 = load i32, ptr %i__2, align 4
  %cmp12 = icmp sle i32 %37, %38
  %conv13 = zext i1 %cmp12 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv13, %cond.false ]
  %tobool = icmp ne i32 %cond, 0
  br i1 %tobool, label %for.body14, label %for.end62

for.body14:                                       ; preds = %cond.end
  %39 = load ptr, ptr %ipiv.addr, align 8
  %40 = load i32, ptr %ix, align 4
  %idxprom = sext i32 %40 to i64
  %arrayidx = getelementptr inbounds i32, ptr %39, i64 %idxprom
  %41 = load i32, ptr %arrayidx, align 4
  store i32 %41, ptr %ip, align 4
  %42 = load i32, ptr %ip, align 4
  %43 = load i32, ptr %i__, align 4
  %cmp15 = icmp ne i32 %42, %43
  br i1 %cmp15, label %if.then17, label %if.end58

if.then17:                                        ; preds = %for.body14
  %44 = load i32, ptr %j, align 4
  %add18 = add nsw i32 %44, 31
  store i32 %add18, ptr %i__4, align 4
  %45 = load i32, ptr %j, align 4
  store i32 %45, ptr %k, align 4
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc, %if.then17
  %46 = load i32, ptr %k, align 4
  %47 = load i32, ptr %i__4, align 4
  %cmp20 = icmp sle i32 %46, %47
  br i1 %cmp20, label %for.body22, label %for.end

for.body22:                                       ; preds = %for.cond19
  %48 = load i32, ptr %i__, align 4
  %49 = load i32, ptr %k, align 4
  %50 = load i32, ptr %a_dim1, align 4
  %mul23 = mul nsw i32 %49, %50
  %add24 = add nsw i32 %48, %mul23
  store i32 %add24, ptr %i__5, align 4
  %51 = load ptr, ptr %a.addr, align 8
  %52 = load i32, ptr %i__5, align 4
  %idxprom25 = sext i32 %52 to i64
  %arrayidx26 = getelementptr inbounds %struct.complex, ptr %51, i64 %idxprom25
  %r = getelementptr inbounds %struct.complex, ptr %arrayidx26, i32 0, i32 0
  %53 = load float, ptr %r, align 4
  %r27 = getelementptr inbounds %struct.complex, ptr %temp, i32 0, i32 0
  store float %53, ptr %r27, align 4
  %54 = load ptr, ptr %a.addr, align 8
  %55 = load i32, ptr %i__5, align 4
  %idxprom28 = sext i32 %55 to i64
  %arrayidx29 = getelementptr inbounds %struct.complex, ptr %54, i64 %idxprom28
  %i = getelementptr inbounds %struct.complex, ptr %arrayidx29, i32 0, i32 1
  %56 = load float, ptr %i, align 4
  %i30 = getelementptr inbounds %struct.complex, ptr %temp, i32 0, i32 1
  store float %56, ptr %i30, align 4
  %57 = load i32, ptr %i__, align 4
  %58 = load i32, ptr %k, align 4
  %59 = load i32, ptr %a_dim1, align 4
  %mul31 = mul nsw i32 %58, %59
  %add32 = add nsw i32 %57, %mul31
  store i32 %add32, ptr %i__5, align 4
  %60 = load i32, ptr %ip, align 4
  %61 = load i32, ptr %k, align 4
  %62 = load i32, ptr %a_dim1, align 4
  %mul33 = mul nsw i32 %61, %62
  %add34 = add nsw i32 %60, %mul33
  store i32 %add34, ptr %i__6, align 4
  %63 = load ptr, ptr %a.addr, align 8
  %64 = load i32, ptr %i__6, align 4
  %idxprom35 = sext i32 %64 to i64
  %arrayidx36 = getelementptr inbounds %struct.complex, ptr %63, i64 %idxprom35
  %r37 = getelementptr inbounds %struct.complex, ptr %arrayidx36, i32 0, i32 0
  %65 = load float, ptr %r37, align 4
  %66 = load ptr, ptr %a.addr, align 8
  %67 = load i32, ptr %i__5, align 4
  %idxprom38 = sext i32 %67 to i64
  %arrayidx39 = getelementptr inbounds %struct.complex, ptr %66, i64 %idxprom38
  %r40 = getelementptr inbounds %struct.complex, ptr %arrayidx39, i32 0, i32 0
  store float %65, ptr %r40, align 4
  %68 = load ptr, ptr %a.addr, align 8
  %69 = load i32, ptr %i__6, align 4
  %idxprom41 = sext i32 %69 to i64
  %arrayidx42 = getelementptr inbounds %struct.complex, ptr %68, i64 %idxprom41
  %i43 = getelementptr inbounds %struct.complex, ptr %arrayidx42, i32 0, i32 1
  %70 = load float, ptr %i43, align 4
  %71 = load ptr, ptr %a.addr, align 8
  %72 = load i32, ptr %i__5, align 4
  %idxprom44 = sext i32 %72 to i64
  %arrayidx45 = getelementptr inbounds %struct.complex, ptr %71, i64 %idxprom44
  %i46 = getelementptr inbounds %struct.complex, ptr %arrayidx45, i32 0, i32 1
  store float %70, ptr %i46, align 4
  %73 = load i32, ptr %ip, align 4
  %74 = load i32, ptr %k, align 4
  %75 = load i32, ptr %a_dim1, align 4
  %mul47 = mul nsw i32 %74, %75
  %add48 = add nsw i32 %73, %mul47
  store i32 %add48, ptr %i__5, align 4
  %r49 = getelementptr inbounds %struct.complex, ptr %temp, i32 0, i32 0
  %76 = load float, ptr %r49, align 4
  %77 = load ptr, ptr %a.addr, align 8
  %78 = load i32, ptr %i__5, align 4
  %idxprom50 = sext i32 %78 to i64
  %arrayidx51 = getelementptr inbounds %struct.complex, ptr %77, i64 %idxprom50
  %r52 = getelementptr inbounds %struct.complex, ptr %arrayidx51, i32 0, i32 0
  store float %76, ptr %r52, align 4
  %i53 = getelementptr inbounds %struct.complex, ptr %temp, i32 0, i32 1
  %79 = load float, ptr %i53, align 4
  %80 = load ptr, ptr %a.addr, align 8
  %81 = load i32, ptr %i__5, align 4
  %idxprom54 = sext i32 %81 to i64
  %arrayidx55 = getelementptr inbounds %struct.complex, ptr %80, i64 %idxprom54
  %i56 = getelementptr inbounds %struct.complex, ptr %arrayidx55, i32 0, i32 1
  store float %79, ptr %i56, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body22
  %82 = load i32, ptr %k, align 4
  %inc57 = add nsw i32 %82, 1
  store i32 %inc57, ptr %k, align 4
  br label %for.cond19, !llvm.loop !5

for.end:                                          ; preds = %for.cond19
  br label %if.end58

if.end58:                                         ; preds = %for.end, %for.body14
  %83 = load ptr, ptr %incx.addr, align 8
  %84 = load i32, ptr %83, align 4
  %85 = load i32, ptr %ix, align 4
  %add59 = add nsw i32 %85, %84
  store i32 %add59, ptr %ix, align 4
  br label %for.inc60

for.inc60:                                        ; preds = %if.end58
  %86 = load i32, ptr %i__3, align 4
  %87 = load i32, ptr %i__, align 4
  %add61 = add nsw i32 %87, %86
  store i32 %add61, ptr %i__, align 4
  br label %for.cond9, !llvm.loop !7

for.end62:                                        ; preds = %cond.end
  br label %for.inc63

for.inc63:                                        ; preds = %for.end62
  %88 = load i32, ptr %j, align 4
  %add64 = add nsw i32 %88, 32
  store i32 %add64, ptr %j, align 4
  br label %for.cond, !llvm.loop !8

for.end65:                                        ; preds = %for.cond
  br label %if.end66

if.end66:                                         ; preds = %for.end65, %if.end5
  %89 = load i32, ptr %n32, align 4
  %90 = load ptr, ptr %n.addr, align 8
  %91 = load i32, ptr %90, align 4
  %cmp67 = icmp ne i32 %89, %91
  br i1 %cmp67, label %if.then69, label %if.end137

if.then69:                                        ; preds = %if.end66
  %92 = load i32, ptr %n32, align 4
  %inc70 = add nsw i32 %92, 1
  store i32 %inc70, ptr %n32, align 4
  %93 = load i32, ptr %ix0, align 4
  store i32 %93, ptr %ix, align 4
  %94 = load i32, ptr %i2, align 4
  store i32 %94, ptr %i__1, align 4
  %95 = load i32, ptr %inc, align 4
  store i32 %95, ptr %i__3, align 4
  %96 = load i32, ptr %i1, align 4
  store i32 %96, ptr %i__, align 4
  br label %for.cond71

for.cond71:                                       ; preds = %for.inc134, %if.then69
  %97 = load i32, ptr %i__3, align 4
  %cmp72 = icmp slt i32 %97, 0
  br i1 %cmp72, label %cond.true74, label %cond.false77

cond.true74:                                      ; preds = %for.cond71
  %98 = load i32, ptr %i__, align 4
  %99 = load i32, ptr %i__1, align 4
  %cmp75 = icmp sge i32 %98, %99
  %conv76 = zext i1 %cmp75 to i32
  br label %cond.end80

cond.false77:                                     ; preds = %for.cond71
  %100 = load i32, ptr %i__, align 4
  %101 = load i32, ptr %i__1, align 4
  %cmp78 = icmp sle i32 %100, %101
  %conv79 = zext i1 %cmp78 to i32
  br label %cond.end80

cond.end80:                                       ; preds = %cond.false77, %cond.true74
  %cond81 = phi i32 [ %conv76, %cond.true74 ], [ %conv79, %cond.false77 ]
  %tobool82 = icmp ne i32 %cond81, 0
  br i1 %tobool82, label %for.body83, label %for.end136

for.body83:                                       ; preds = %cond.end80
  %102 = load ptr, ptr %ipiv.addr, align 8
  %103 = load i32, ptr %ix, align 4
  %idxprom84 = sext i32 %103 to i64
  %arrayidx85 = getelementptr inbounds i32, ptr %102, i64 %idxprom84
  %104 = load i32, ptr %arrayidx85, align 4
  store i32 %104, ptr %ip, align 4
  %105 = load i32, ptr %ip, align 4
  %106 = load i32, ptr %i__, align 4
  %cmp86 = icmp ne i32 %105, %106
  br i1 %cmp86, label %if.then88, label %if.end132

if.then88:                                        ; preds = %for.body83
  %107 = load ptr, ptr %n.addr, align 8
  %108 = load i32, ptr %107, align 4
  store i32 %108, ptr %i__2, align 4
  %109 = load i32, ptr %n32, align 4
  store i32 %109, ptr %k, align 4
  br label %for.cond89

for.cond89:                                       ; preds = %for.inc129, %if.then88
  %110 = load i32, ptr %k, align 4
  %111 = load i32, ptr %i__2, align 4
  %cmp90 = icmp sle i32 %110, %111
  br i1 %cmp90, label %for.body92, label %for.end131

for.body92:                                       ; preds = %for.cond89
  %112 = load i32, ptr %i__, align 4
  %113 = load i32, ptr %k, align 4
  %114 = load i32, ptr %a_dim1, align 4
  %mul93 = mul nsw i32 %113, %114
  %add94 = add nsw i32 %112, %mul93
  store i32 %add94, ptr %i__4, align 4
  %115 = load ptr, ptr %a.addr, align 8
  %116 = load i32, ptr %i__4, align 4
  %idxprom95 = sext i32 %116 to i64
  %arrayidx96 = getelementptr inbounds %struct.complex, ptr %115, i64 %idxprom95
  %r97 = getelementptr inbounds %struct.complex, ptr %arrayidx96, i32 0, i32 0
  %117 = load float, ptr %r97, align 4
  %r98 = getelementptr inbounds %struct.complex, ptr %temp, i32 0, i32 0
  store float %117, ptr %r98, align 4
  %118 = load ptr, ptr %a.addr, align 8
  %119 = load i32, ptr %i__4, align 4
  %idxprom99 = sext i32 %119 to i64
  %arrayidx100 = getelementptr inbounds %struct.complex, ptr %118, i64 %idxprom99
  %i101 = getelementptr inbounds %struct.complex, ptr %arrayidx100, i32 0, i32 1
  %120 = load float, ptr %i101, align 4
  %i102 = getelementptr inbounds %struct.complex, ptr %temp, i32 0, i32 1
  store float %120, ptr %i102, align 4
  %121 = load i32, ptr %i__, align 4
  %122 = load i32, ptr %k, align 4
  %123 = load i32, ptr %a_dim1, align 4
  %mul103 = mul nsw i32 %122, %123
  %add104 = add nsw i32 %121, %mul103
  store i32 %add104, ptr %i__4, align 4
  %124 = load i32, ptr %ip, align 4
  %125 = load i32, ptr %k, align 4
  %126 = load i32, ptr %a_dim1, align 4
  %mul105 = mul nsw i32 %125, %126
  %add106 = add nsw i32 %124, %mul105
  store i32 %add106, ptr %i__5, align 4
  %127 = load ptr, ptr %a.addr, align 8
  %128 = load i32, ptr %i__5, align 4
  %idxprom107 = sext i32 %128 to i64
  %arrayidx108 = getelementptr inbounds %struct.complex, ptr %127, i64 %idxprom107
  %r109 = getelementptr inbounds %struct.complex, ptr %arrayidx108, i32 0, i32 0
  %129 = load float, ptr %r109, align 4
  %130 = load ptr, ptr %a.addr, align 8
  %131 = load i32, ptr %i__4, align 4
  %idxprom110 = sext i32 %131 to i64
  %arrayidx111 = getelementptr inbounds %struct.complex, ptr %130, i64 %idxprom110
  %r112 = getelementptr inbounds %struct.complex, ptr %arrayidx111, i32 0, i32 0
  store float %129, ptr %r112, align 4
  %132 = load ptr, ptr %a.addr, align 8
  %133 = load i32, ptr %i__5, align 4
  %idxprom113 = sext i32 %133 to i64
  %arrayidx114 = getelementptr inbounds %struct.complex, ptr %132, i64 %idxprom113
  %i115 = getelementptr inbounds %struct.complex, ptr %arrayidx114, i32 0, i32 1
  %134 = load float, ptr %i115, align 4
  %135 = load ptr, ptr %a.addr, align 8
  %136 = load i32, ptr %i__4, align 4
  %idxprom116 = sext i32 %136 to i64
  %arrayidx117 = getelementptr inbounds %struct.complex, ptr %135, i64 %idxprom116
  %i118 = getelementptr inbounds %struct.complex, ptr %arrayidx117, i32 0, i32 1
  store float %134, ptr %i118, align 4
  %137 = load i32, ptr %ip, align 4
  %138 = load i32, ptr %k, align 4
  %139 = load i32, ptr %a_dim1, align 4
  %mul119 = mul nsw i32 %138, %139
  %add120 = add nsw i32 %137, %mul119
  store i32 %add120, ptr %i__4, align 4
  %r121 = getelementptr inbounds %struct.complex, ptr %temp, i32 0, i32 0
  %140 = load float, ptr %r121, align 4
  %141 = load ptr, ptr %a.addr, align 8
  %142 = load i32, ptr %i__4, align 4
  %idxprom122 = sext i32 %142 to i64
  %arrayidx123 = getelementptr inbounds %struct.complex, ptr %141, i64 %idxprom122
  %r124 = getelementptr inbounds %struct.complex, ptr %arrayidx123, i32 0, i32 0
  store float %140, ptr %r124, align 4
  %i125 = getelementptr inbounds %struct.complex, ptr %temp, i32 0, i32 1
  %143 = load float, ptr %i125, align 4
  %144 = load ptr, ptr %a.addr, align 8
  %145 = load i32, ptr %i__4, align 4
  %idxprom126 = sext i32 %145 to i64
  %arrayidx127 = getelementptr inbounds %struct.complex, ptr %144, i64 %idxprom126
  %i128 = getelementptr inbounds %struct.complex, ptr %arrayidx127, i32 0, i32 1
  store float %143, ptr %i128, align 4
  br label %for.inc129

for.inc129:                                       ; preds = %for.body92
  %146 = load i32, ptr %k, align 4
  %inc130 = add nsw i32 %146, 1
  store i32 %inc130, ptr %k, align 4
  br label %for.cond89, !llvm.loop !9

for.end131:                                       ; preds = %for.cond89
  br label %if.end132

if.end132:                                        ; preds = %for.end131, %for.body83
  %147 = load ptr, ptr %incx.addr, align 8
  %148 = load i32, ptr %147, align 4
  %149 = load i32, ptr %ix, align 4
  %add133 = add nsw i32 %149, %148
  store i32 %add133, ptr %ix, align 4
  br label %for.inc134

for.inc134:                                       ; preds = %if.end132
  %150 = load i32, ptr %i__3, align 4
  %151 = load i32, ptr %i__, align 4
  %add135 = add nsw i32 %151, %150
  store i32 %add135, ptr %i__, align 4
  br label %for.cond71, !llvm.loop !10

for.end136:                                       ; preds = %cond.end80
  br label %if.end137

if.end137:                                        ; preds = %for.end136, %if.end66
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end137, %if.else4
  %152 = load i32, ptr %retval, align 4
  ret i32 %152
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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

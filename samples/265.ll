; ModuleID = 'samples/265.bc'
source_filename = "/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/map/lapack2flamec/f2c/c/clagtm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.complex = type { float, float }

@.str = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"C\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @clagtm_(ptr noundef %trans, ptr noundef %n, ptr noundef %nrhs, ptr noundef %alpha, ptr noundef %dl, ptr noundef %d__, ptr noundef %du, ptr noundef %x, ptr noundef %ldx, ptr noundef %beta, ptr noundef %b, ptr noundef %ldb) #0 {
entry:
  %retval = alloca i32, align 4
  %trans.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %nrhs.addr = alloca ptr, align 8
  %alpha.addr = alloca ptr, align 8
  %dl.addr = alloca ptr, align 8
  %d__.addr = alloca ptr, align 8
  %du.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %ldx.addr = alloca ptr, align 8
  %beta.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %ldb.addr = alloca ptr, align 8
  %b_dim1 = alloca i32, align 4
  %b_offset = alloca i32, align 4
  %x_dim1 = alloca i32, align 4
  %x_offset = alloca i32, align 4
  %i__1 = alloca i32, align 4
  %i__2 = alloca i32, align 4
  %i__3 = alloca i32, align 4
  %i__4 = alloca i32, align 4
  %i__5 = alloca i32, align 4
  %i__6 = alloca i32, align 4
  %i__7 = alloca i32, align 4
  %i__8 = alloca i32, align 4
  %i__9 = alloca i32, align 4
  %i__10 = alloca i32, align 4
  %q__1 = alloca %struct.complex, align 4
  %q__2 = alloca %struct.complex, align 4
  %q__3 = alloca %struct.complex, align 4
  %q__4 = alloca %struct.complex, align 4
  %q__5 = alloca %struct.complex, align 4
  %q__6 = alloca %struct.complex, align 4
  %q__7 = alloca %struct.complex, align 4
  %q__8 = alloca %struct.complex, align 4
  %q__9 = alloca %struct.complex, align 4
  %i__ = alloca i32, align 4
  %j = alloca i32, align 4
  store ptr %trans, ptr %trans.addr, align 8
  store ptr %n, ptr %n.addr, align 8
  store ptr %nrhs, ptr %nrhs.addr, align 8
  store ptr %alpha, ptr %alpha.addr, align 8
  store ptr %dl, ptr %dl.addr, align 8
  store ptr %d__, ptr %d__.addr, align 8
  store ptr %du, ptr %du.addr, align 8
  store ptr %x, ptr %x.addr, align 8
  store ptr %ldx, ptr %ldx.addr, align 8
  store ptr %beta, ptr %beta.addr, align 8
  store ptr %b, ptr %b.addr, align 8
  store ptr %ldb, ptr %ldb.addr, align 8
  %0 = load ptr, ptr %dl.addr, align 8
  %incdec.ptr = getelementptr inbounds %struct.complex, ptr %0, i32 -1
  store ptr %incdec.ptr, ptr %dl.addr, align 8
  %1 = load ptr, ptr %d__.addr, align 8
  %incdec.ptr1 = getelementptr inbounds %struct.complex, ptr %1, i32 -1
  store ptr %incdec.ptr1, ptr %d__.addr, align 8
  %2 = load ptr, ptr %du.addr, align 8
  %incdec.ptr2 = getelementptr inbounds %struct.complex, ptr %2, i32 -1
  store ptr %incdec.ptr2, ptr %du.addr, align 8
  %3 = load ptr, ptr %ldx.addr, align 8
  %4 = load i32, ptr %3, align 4
  store i32 %4, ptr %x_dim1, align 4
  %5 = load i32, ptr %x_dim1, align 4
  %add = add nsw i32 1, %5
  store i32 %add, ptr %x_offset, align 4
  %6 = load i32, ptr %x_offset, align 4
  %7 = load ptr, ptr %x.addr, align 8
  %idx.ext = sext i32 %6 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds %struct.complex, ptr %7, i64 %idx.neg
  store ptr %add.ptr, ptr %x.addr, align 8
  %8 = load ptr, ptr %ldb.addr, align 8
  %9 = load i32, ptr %8, align 4
  store i32 %9, ptr %b_dim1, align 4
  %10 = load i32, ptr %b_dim1, align 4
  %add3 = add nsw i32 1, %10
  store i32 %add3, ptr %b_offset, align 4
  %11 = load i32, ptr %b_offset, align 4
  %12 = load ptr, ptr %b.addr, align 8
  %idx.ext4 = sext i32 %11 to i64
  %idx.neg5 = sub i64 0, %idx.ext4
  %add.ptr6 = getelementptr inbounds %struct.complex, ptr %12, i64 %idx.neg5
  store ptr %add.ptr6, ptr %b.addr, align 8
  %13 = load ptr, ptr %n.addr, align 8
  %14 = load i32, ptr %13, align 4
  %cmp = icmp eq i32 %14, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %15 = load ptr, ptr %beta.addr, align 8
  %16 = load float, ptr %15, align 4
  %cmp7 = fcmp oeq float %16, 0.000000e+00
  br i1 %cmp7, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end
  %17 = load ptr, ptr %nrhs.addr, align 8
  %18 = load i32, ptr %17, align 4
  store i32 %18, ptr %i__1, align 4
  store i32 1, ptr %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc16, %if.then8
  %19 = load i32, ptr %j, align 4
  %20 = load i32, ptr %i__1, align 4
  %cmp9 = icmp sle i32 %19, %20
  br i1 %cmp9, label %for.body, label %for.end18

for.body:                                         ; preds = %for.cond
  %21 = load ptr, ptr %n.addr, align 8
  %22 = load i32, ptr %21, align 4
  store i32 %22, ptr %i__2, align 4
  store i32 1, ptr %i__, align 4
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc, %for.body
  %23 = load i32, ptr %i__, align 4
  %24 = load i32, ptr %i__2, align 4
  %cmp11 = icmp sle i32 %23, %24
  br i1 %cmp11, label %for.body12, label %for.end

for.body12:                                       ; preds = %for.cond10
  %25 = load i32, ptr %i__, align 4
  %26 = load i32, ptr %j, align 4
  %27 = load i32, ptr %b_dim1, align 4
  %mul = mul nsw i32 %26, %27
  %add13 = add nsw i32 %25, %mul
  store i32 %add13, ptr %i__3, align 4
  %28 = load ptr, ptr %b.addr, align 8
  %29 = load i32, ptr %i__3, align 4
  %idxprom = sext i32 %29 to i64
  %arrayidx = getelementptr inbounds %struct.complex, ptr %28, i64 %idxprom
  %r = getelementptr inbounds %struct.complex, ptr %arrayidx, i32 0, i32 0
  store float 0.000000e+00, ptr %r, align 4
  %30 = load ptr, ptr %b.addr, align 8
  %31 = load i32, ptr %i__3, align 4
  %idxprom14 = sext i32 %31 to i64
  %arrayidx15 = getelementptr inbounds %struct.complex, ptr %30, i64 %idxprom14
  %i = getelementptr inbounds %struct.complex, ptr %arrayidx15, i32 0, i32 1
  store float 0.000000e+00, ptr %i, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body12
  %32 = load i32, ptr %i__, align 4
  %inc = add nsw i32 %32, 1
  store i32 %inc, ptr %i__, align 4
  br label %for.cond10, !llvm.loop !5

for.end:                                          ; preds = %for.cond10
  br label %for.inc16

for.inc16:                                        ; preds = %for.end
  %33 = load i32, ptr %j, align 4
  %inc17 = add nsw i32 %33, 1
  store i32 %inc17, ptr %j, align 4
  br label %for.cond, !llvm.loop !7

for.end18:                                        ; preds = %for.cond
  br label %if.end55

if.else:                                          ; preds = %if.end
  %34 = load ptr, ptr %beta.addr, align 8
  %35 = load float, ptr %34, align 4
  %cmp19 = fcmp oeq float %35, -1.000000e+00
  br i1 %cmp19, label %if.then20, label %if.end54

if.then20:                                        ; preds = %if.else
  %36 = load ptr, ptr %nrhs.addr, align 8
  %37 = load i32, ptr %36, align 4
  store i32 %37, ptr %i__1, align 4
  store i32 1, ptr %j, align 4
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc51, %if.then20
  %38 = load i32, ptr %j, align 4
  %39 = load i32, ptr %i__1, align 4
  %cmp22 = icmp sle i32 %38, %39
  br i1 %cmp22, label %for.body23, label %for.end53

for.body23:                                       ; preds = %for.cond21
  %40 = load ptr, ptr %n.addr, align 8
  %41 = load i32, ptr %40, align 4
  store i32 %41, ptr %i__2, align 4
  store i32 1, ptr %i__, align 4
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc48, %for.body23
  %42 = load i32, ptr %i__, align 4
  %43 = load i32, ptr %i__2, align 4
  %cmp25 = icmp sle i32 %42, %43
  br i1 %cmp25, label %for.body26, label %for.end50

for.body26:                                       ; preds = %for.cond24
  %44 = load i32, ptr %i__, align 4
  %45 = load i32, ptr %j, align 4
  %46 = load i32, ptr %b_dim1, align 4
  %mul27 = mul nsw i32 %45, %46
  %add28 = add nsw i32 %44, %mul27
  store i32 %add28, ptr %i__3, align 4
  %47 = load i32, ptr %i__, align 4
  %48 = load i32, ptr %j, align 4
  %49 = load i32, ptr %b_dim1, align 4
  %mul29 = mul nsw i32 %48, %49
  %add30 = add nsw i32 %47, %mul29
  store i32 %add30, ptr %i__4, align 4
  %50 = load ptr, ptr %b.addr, align 8
  %51 = load i32, ptr %i__4, align 4
  %idxprom31 = sext i32 %51 to i64
  %arrayidx32 = getelementptr inbounds %struct.complex, ptr %50, i64 %idxprom31
  %r33 = getelementptr inbounds %struct.complex, ptr %arrayidx32, i32 0, i32 0
  %52 = load float, ptr %r33, align 4
  %fneg = fneg float %52
  %r34 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float %fneg, ptr %r34, align 4
  %53 = load ptr, ptr %b.addr, align 8
  %54 = load i32, ptr %i__4, align 4
  %idxprom35 = sext i32 %54 to i64
  %arrayidx36 = getelementptr inbounds %struct.complex, ptr %53, i64 %idxprom35
  %i37 = getelementptr inbounds %struct.complex, ptr %arrayidx36, i32 0, i32 1
  %55 = load float, ptr %i37, align 4
  %fneg38 = fneg float %55
  %i39 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float %fneg38, ptr %i39, align 4
  %r40 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %56 = load float, ptr %r40, align 4
  %57 = load ptr, ptr %b.addr, align 8
  %58 = load i32, ptr %i__3, align 4
  %idxprom41 = sext i32 %58 to i64
  %arrayidx42 = getelementptr inbounds %struct.complex, ptr %57, i64 %idxprom41
  %r43 = getelementptr inbounds %struct.complex, ptr %arrayidx42, i32 0, i32 0
  store float %56, ptr %r43, align 4
  %i44 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %59 = load float, ptr %i44, align 4
  %60 = load ptr, ptr %b.addr, align 8
  %61 = load i32, ptr %i__3, align 4
  %idxprom45 = sext i32 %61 to i64
  %arrayidx46 = getelementptr inbounds %struct.complex, ptr %60, i64 %idxprom45
  %i47 = getelementptr inbounds %struct.complex, ptr %arrayidx46, i32 0, i32 1
  store float %59, ptr %i47, align 4
  br label %for.inc48

for.inc48:                                        ; preds = %for.body26
  %62 = load i32, ptr %i__, align 4
  %inc49 = add nsw i32 %62, 1
  store i32 %inc49, ptr %i__, align 4
  br label %for.cond24, !llvm.loop !8

for.end50:                                        ; preds = %for.cond24
  br label %for.inc51

for.inc51:                                        ; preds = %for.end50
  %63 = load i32, ptr %j, align 4
  %inc52 = add nsw i32 %63, 1
  store i32 %inc52, ptr %j, align 4
  br label %for.cond21, !llvm.loop !9

for.end53:                                        ; preds = %for.cond21
  br label %if.end54

if.end54:                                         ; preds = %for.end53, %if.else
  br label %if.end55

if.end55:                                         ; preds = %if.end54, %for.end18
  %64 = load ptr, ptr %alpha.addr, align 8
  %65 = load float, ptr %64, align 4
  %cmp56 = fcmp oeq float %65, 1.000000e+00
  br i1 %cmp56, label %if.then57, label %if.else1235

if.then57:                                        ; preds = %if.end55
  %66 = load ptr, ptr %trans.addr, align 8
  %call = call i32 @lsame_(ptr noundef %66, ptr noundef @.str)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then58, label %if.else459

if.then58:                                        ; preds = %if.then57
  %67 = load ptr, ptr %nrhs.addr, align 8
  %68 = load i32, ptr %67, align 4
  store i32 %68, ptr %i__1, align 4
  store i32 1, ptr %j, align 4
  br label %for.cond59

for.cond59:                                       ; preds = %for.inc456, %if.then58
  %69 = load i32, ptr %j, align 4
  %70 = load i32, ptr %i__1, align 4
  %cmp60 = icmp sle i32 %69, %70
  br i1 %cmp60, label %for.body61, label %for.end458

for.body61:                                       ; preds = %for.cond59
  %71 = load ptr, ptr %n.addr, align 8
  %72 = load i32, ptr %71, align 4
  %cmp62 = icmp eq i32 %72, 1
  br i1 %cmp62, label %if.then63, label %if.else116

if.then63:                                        ; preds = %for.body61
  %73 = load i32, ptr %j, align 4
  %74 = load i32, ptr %b_dim1, align 4
  %mul64 = mul nsw i32 %73, %74
  %add65 = add nsw i32 %mul64, 1
  store i32 %add65, ptr %i__2, align 4
  %75 = load i32, ptr %j, align 4
  %76 = load i32, ptr %b_dim1, align 4
  %mul66 = mul nsw i32 %75, %76
  %add67 = add nsw i32 %mul66, 1
  store i32 %add67, ptr %i__3, align 4
  %77 = load i32, ptr %j, align 4
  %78 = load i32, ptr %x_dim1, align 4
  %mul68 = mul nsw i32 %77, %78
  %add69 = add nsw i32 %mul68, 1
  store i32 %add69, ptr %i__4, align 4
  %79 = load ptr, ptr %d__.addr, align 8
  %arrayidx70 = getelementptr inbounds %struct.complex, ptr %79, i64 1
  %r71 = getelementptr inbounds %struct.complex, ptr %arrayidx70, i32 0, i32 0
  %80 = load float, ptr %r71, align 4
  %81 = load ptr, ptr %x.addr, align 8
  %82 = load i32, ptr %i__4, align 4
  %idxprom72 = sext i32 %82 to i64
  %arrayidx73 = getelementptr inbounds %struct.complex, ptr %81, i64 %idxprom72
  %r74 = getelementptr inbounds %struct.complex, ptr %arrayidx73, i32 0, i32 0
  %83 = load float, ptr %r74, align 4
  %84 = load ptr, ptr %d__.addr, align 8
  %arrayidx76 = getelementptr inbounds %struct.complex, ptr %84, i64 1
  %i77 = getelementptr inbounds %struct.complex, ptr %arrayidx76, i32 0, i32 1
  %85 = load float, ptr %i77, align 4
  %86 = load ptr, ptr %x.addr, align 8
  %87 = load i32, ptr %i__4, align 4
  %idxprom78 = sext i32 %87 to i64
  %arrayidx79 = getelementptr inbounds %struct.complex, ptr %86, i64 %idxprom78
  %i80 = getelementptr inbounds %struct.complex, ptr %arrayidx79, i32 0, i32 1
  %88 = load float, ptr %i80, align 4
  %mul81 = fmul float %85, %88
  %neg = fneg float %mul81
  %89 = call float @llvm.fmuladd.f32(float %80, float %83, float %neg)
  %r82 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  store float %89, ptr %r82, align 4
  %90 = load ptr, ptr %d__.addr, align 8
  %arrayidx83 = getelementptr inbounds %struct.complex, ptr %90, i64 1
  %r84 = getelementptr inbounds %struct.complex, ptr %arrayidx83, i32 0, i32 0
  %91 = load float, ptr %r84, align 4
  %92 = load ptr, ptr %x.addr, align 8
  %93 = load i32, ptr %i__4, align 4
  %idxprom85 = sext i32 %93 to i64
  %arrayidx86 = getelementptr inbounds %struct.complex, ptr %92, i64 %idxprom85
  %i87 = getelementptr inbounds %struct.complex, ptr %arrayidx86, i32 0, i32 1
  %94 = load float, ptr %i87, align 4
  %95 = load ptr, ptr %d__.addr, align 8
  %arrayidx89 = getelementptr inbounds %struct.complex, ptr %95, i64 1
  %i90 = getelementptr inbounds %struct.complex, ptr %arrayidx89, i32 0, i32 1
  %96 = load float, ptr %i90, align 4
  %97 = load ptr, ptr %x.addr, align 8
  %98 = load i32, ptr %i__4, align 4
  %idxprom91 = sext i32 %98 to i64
  %arrayidx92 = getelementptr inbounds %struct.complex, ptr %97, i64 %idxprom91
  %r93 = getelementptr inbounds %struct.complex, ptr %arrayidx92, i32 0, i32 0
  %99 = load float, ptr %r93, align 4
  %mul94 = fmul float %96, %99
  %100 = call float @llvm.fmuladd.f32(float %91, float %94, float %mul94)
  %i95 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  store float %100, ptr %i95, align 4
  %101 = load ptr, ptr %b.addr, align 8
  %102 = load i32, ptr %i__3, align 4
  %idxprom96 = sext i32 %102 to i64
  %arrayidx97 = getelementptr inbounds %struct.complex, ptr %101, i64 %idxprom96
  %r98 = getelementptr inbounds %struct.complex, ptr %arrayidx97, i32 0, i32 0
  %103 = load float, ptr %r98, align 4
  %r99 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  %104 = load float, ptr %r99, align 4
  %add100 = fadd float %103, %104
  %r101 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float %add100, ptr %r101, align 4
  %105 = load ptr, ptr %b.addr, align 8
  %106 = load i32, ptr %i__3, align 4
  %idxprom102 = sext i32 %106 to i64
  %arrayidx103 = getelementptr inbounds %struct.complex, ptr %105, i64 %idxprom102
  %i104 = getelementptr inbounds %struct.complex, ptr %arrayidx103, i32 0, i32 1
  %107 = load float, ptr %i104, align 4
  %i105 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  %108 = load float, ptr %i105, align 4
  %add106 = fadd float %107, %108
  %i107 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float %add106, ptr %i107, align 4
  %r108 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %109 = load float, ptr %r108, align 4
  %110 = load ptr, ptr %b.addr, align 8
  %111 = load i32, ptr %i__2, align 4
  %idxprom109 = sext i32 %111 to i64
  %arrayidx110 = getelementptr inbounds %struct.complex, ptr %110, i64 %idxprom109
  %r111 = getelementptr inbounds %struct.complex, ptr %arrayidx110, i32 0, i32 0
  store float %109, ptr %r111, align 4
  %i112 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %112 = load float, ptr %i112, align 4
  %113 = load ptr, ptr %b.addr, align 8
  %114 = load i32, ptr %i__2, align 4
  %idxprom113 = sext i32 %114 to i64
  %arrayidx114 = getelementptr inbounds %struct.complex, ptr %113, i64 %idxprom113
  %i115 = getelementptr inbounds %struct.complex, ptr %arrayidx114, i32 0, i32 1
  store float %112, ptr %i115, align 4
  br label %if.end455

if.else116:                                       ; preds = %for.body61
  %115 = load i32, ptr %j, align 4
  %116 = load i32, ptr %b_dim1, align 4
  %mul117 = mul nsw i32 %115, %116
  %add118 = add nsw i32 %mul117, 1
  store i32 %add118, ptr %i__2, align 4
  %117 = load i32, ptr %j, align 4
  %118 = load i32, ptr %b_dim1, align 4
  %mul119 = mul nsw i32 %117, %118
  %add120 = add nsw i32 %mul119, 1
  store i32 %add120, ptr %i__3, align 4
  %119 = load i32, ptr %j, align 4
  %120 = load i32, ptr %x_dim1, align 4
  %mul121 = mul nsw i32 %119, %120
  %add122 = add nsw i32 %mul121, 1
  store i32 %add122, ptr %i__4, align 4
  %121 = load ptr, ptr %d__.addr, align 8
  %arrayidx123 = getelementptr inbounds %struct.complex, ptr %121, i64 1
  %r124 = getelementptr inbounds %struct.complex, ptr %arrayidx123, i32 0, i32 0
  %122 = load float, ptr %r124, align 4
  %123 = load ptr, ptr %x.addr, align 8
  %124 = load i32, ptr %i__4, align 4
  %idxprom125 = sext i32 %124 to i64
  %arrayidx126 = getelementptr inbounds %struct.complex, ptr %123, i64 %idxprom125
  %r127 = getelementptr inbounds %struct.complex, ptr %arrayidx126, i32 0, i32 0
  %125 = load float, ptr %r127, align 4
  %126 = load ptr, ptr %d__.addr, align 8
  %arrayidx129 = getelementptr inbounds %struct.complex, ptr %126, i64 1
  %i130 = getelementptr inbounds %struct.complex, ptr %arrayidx129, i32 0, i32 1
  %127 = load float, ptr %i130, align 4
  %128 = load ptr, ptr %x.addr, align 8
  %129 = load i32, ptr %i__4, align 4
  %idxprom131 = sext i32 %129 to i64
  %arrayidx132 = getelementptr inbounds %struct.complex, ptr %128, i64 %idxprom131
  %i133 = getelementptr inbounds %struct.complex, ptr %arrayidx132, i32 0, i32 1
  %130 = load float, ptr %i133, align 4
  %mul134 = fmul float %127, %130
  %neg135 = fneg float %mul134
  %131 = call float @llvm.fmuladd.f32(float %122, float %125, float %neg135)
  %r136 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 0
  store float %131, ptr %r136, align 4
  %132 = load ptr, ptr %d__.addr, align 8
  %arrayidx137 = getelementptr inbounds %struct.complex, ptr %132, i64 1
  %r138 = getelementptr inbounds %struct.complex, ptr %arrayidx137, i32 0, i32 0
  %133 = load float, ptr %r138, align 4
  %134 = load ptr, ptr %x.addr, align 8
  %135 = load i32, ptr %i__4, align 4
  %idxprom139 = sext i32 %135 to i64
  %arrayidx140 = getelementptr inbounds %struct.complex, ptr %134, i64 %idxprom139
  %i141 = getelementptr inbounds %struct.complex, ptr %arrayidx140, i32 0, i32 1
  %136 = load float, ptr %i141, align 4
  %137 = load ptr, ptr %d__.addr, align 8
  %arrayidx143 = getelementptr inbounds %struct.complex, ptr %137, i64 1
  %i144 = getelementptr inbounds %struct.complex, ptr %arrayidx143, i32 0, i32 1
  %138 = load float, ptr %i144, align 4
  %139 = load ptr, ptr %x.addr, align 8
  %140 = load i32, ptr %i__4, align 4
  %idxprom145 = sext i32 %140 to i64
  %arrayidx146 = getelementptr inbounds %struct.complex, ptr %139, i64 %idxprom145
  %r147 = getelementptr inbounds %struct.complex, ptr %arrayidx146, i32 0, i32 0
  %141 = load float, ptr %r147, align 4
  %mul148 = fmul float %138, %141
  %142 = call float @llvm.fmuladd.f32(float %133, float %136, float %mul148)
  %i149 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 1
  store float %142, ptr %i149, align 4
  %143 = load ptr, ptr %b.addr, align 8
  %144 = load i32, ptr %i__3, align 4
  %idxprom150 = sext i32 %144 to i64
  %arrayidx151 = getelementptr inbounds %struct.complex, ptr %143, i64 %idxprom150
  %r152 = getelementptr inbounds %struct.complex, ptr %arrayidx151, i32 0, i32 0
  %145 = load float, ptr %r152, align 4
  %r153 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 0
  %146 = load float, ptr %r153, align 4
  %add154 = fadd float %145, %146
  %r155 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  store float %add154, ptr %r155, align 4
  %147 = load ptr, ptr %b.addr, align 8
  %148 = load i32, ptr %i__3, align 4
  %idxprom156 = sext i32 %148 to i64
  %arrayidx157 = getelementptr inbounds %struct.complex, ptr %147, i64 %idxprom156
  %i158 = getelementptr inbounds %struct.complex, ptr %arrayidx157, i32 0, i32 1
  %149 = load float, ptr %i158, align 4
  %i159 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 1
  %150 = load float, ptr %i159, align 4
  %add160 = fadd float %149, %150
  %i161 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  store float %add160, ptr %i161, align 4
  %151 = load i32, ptr %j, align 4
  %152 = load i32, ptr %x_dim1, align 4
  %mul162 = mul nsw i32 %151, %152
  %add163 = add nsw i32 %mul162, 2
  store i32 %add163, ptr %i__5, align 4
  %153 = load ptr, ptr %du.addr, align 8
  %arrayidx164 = getelementptr inbounds %struct.complex, ptr %153, i64 1
  %r165 = getelementptr inbounds %struct.complex, ptr %arrayidx164, i32 0, i32 0
  %154 = load float, ptr %r165, align 4
  %155 = load ptr, ptr %x.addr, align 8
  %156 = load i32, ptr %i__5, align 4
  %idxprom166 = sext i32 %156 to i64
  %arrayidx167 = getelementptr inbounds %struct.complex, ptr %155, i64 %idxprom166
  %r168 = getelementptr inbounds %struct.complex, ptr %arrayidx167, i32 0, i32 0
  %157 = load float, ptr %r168, align 4
  %158 = load ptr, ptr %du.addr, align 8
  %arrayidx170 = getelementptr inbounds %struct.complex, ptr %158, i64 1
  %i171 = getelementptr inbounds %struct.complex, ptr %arrayidx170, i32 0, i32 1
  %159 = load float, ptr %i171, align 4
  %160 = load ptr, ptr %x.addr, align 8
  %161 = load i32, ptr %i__5, align 4
  %idxprom172 = sext i32 %161 to i64
  %arrayidx173 = getelementptr inbounds %struct.complex, ptr %160, i64 %idxprom172
  %i174 = getelementptr inbounds %struct.complex, ptr %arrayidx173, i32 0, i32 1
  %162 = load float, ptr %i174, align 4
  %mul175 = fmul float %159, %162
  %neg176 = fneg float %mul175
  %163 = call float @llvm.fmuladd.f32(float %154, float %157, float %neg176)
  %r177 = getelementptr inbounds %struct.complex, ptr %q__4, i32 0, i32 0
  store float %163, ptr %r177, align 4
  %164 = load ptr, ptr %du.addr, align 8
  %arrayidx178 = getelementptr inbounds %struct.complex, ptr %164, i64 1
  %r179 = getelementptr inbounds %struct.complex, ptr %arrayidx178, i32 0, i32 0
  %165 = load float, ptr %r179, align 4
  %166 = load ptr, ptr %x.addr, align 8
  %167 = load i32, ptr %i__5, align 4
  %idxprom180 = sext i32 %167 to i64
  %arrayidx181 = getelementptr inbounds %struct.complex, ptr %166, i64 %idxprom180
  %i182 = getelementptr inbounds %struct.complex, ptr %arrayidx181, i32 0, i32 1
  %168 = load float, ptr %i182, align 4
  %169 = load ptr, ptr %du.addr, align 8
  %arrayidx184 = getelementptr inbounds %struct.complex, ptr %169, i64 1
  %i185 = getelementptr inbounds %struct.complex, ptr %arrayidx184, i32 0, i32 1
  %170 = load float, ptr %i185, align 4
  %171 = load ptr, ptr %x.addr, align 8
  %172 = load i32, ptr %i__5, align 4
  %idxprom186 = sext i32 %172 to i64
  %arrayidx187 = getelementptr inbounds %struct.complex, ptr %171, i64 %idxprom186
  %r188 = getelementptr inbounds %struct.complex, ptr %arrayidx187, i32 0, i32 0
  %173 = load float, ptr %r188, align 4
  %mul189 = fmul float %170, %173
  %174 = call float @llvm.fmuladd.f32(float %165, float %168, float %mul189)
  %i190 = getelementptr inbounds %struct.complex, ptr %q__4, i32 0, i32 1
  store float %174, ptr %i190, align 4
  %r191 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  %175 = load float, ptr %r191, align 4
  %r192 = getelementptr inbounds %struct.complex, ptr %q__4, i32 0, i32 0
  %176 = load float, ptr %r192, align 4
  %add193 = fadd float %175, %176
  %r194 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float %add193, ptr %r194, align 4
  %i195 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  %177 = load float, ptr %i195, align 4
  %i196 = getelementptr inbounds %struct.complex, ptr %q__4, i32 0, i32 1
  %178 = load float, ptr %i196, align 4
  %add197 = fadd float %177, %178
  %i198 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float %add197, ptr %i198, align 4
  %r199 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %179 = load float, ptr %r199, align 4
  %180 = load ptr, ptr %b.addr, align 8
  %181 = load i32, ptr %i__2, align 4
  %idxprom200 = sext i32 %181 to i64
  %arrayidx201 = getelementptr inbounds %struct.complex, ptr %180, i64 %idxprom200
  %r202 = getelementptr inbounds %struct.complex, ptr %arrayidx201, i32 0, i32 0
  store float %179, ptr %r202, align 4
  %i203 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %182 = load float, ptr %i203, align 4
  %183 = load ptr, ptr %b.addr, align 8
  %184 = load i32, ptr %i__2, align 4
  %idxprom204 = sext i32 %184 to i64
  %arrayidx205 = getelementptr inbounds %struct.complex, ptr %183, i64 %idxprom204
  %i206 = getelementptr inbounds %struct.complex, ptr %arrayidx205, i32 0, i32 1
  store float %182, ptr %i206, align 4
  %185 = load ptr, ptr %n.addr, align 8
  %186 = load i32, ptr %185, align 4
  %187 = load i32, ptr %j, align 4
  %188 = load i32, ptr %b_dim1, align 4
  %mul207 = mul nsw i32 %187, %188
  %add208 = add nsw i32 %186, %mul207
  store i32 %add208, ptr %i__2, align 4
  %189 = load ptr, ptr %n.addr, align 8
  %190 = load i32, ptr %189, align 4
  %191 = load i32, ptr %j, align 4
  %192 = load i32, ptr %b_dim1, align 4
  %mul209 = mul nsw i32 %191, %192
  %add210 = add nsw i32 %190, %mul209
  store i32 %add210, ptr %i__3, align 4
  %193 = load ptr, ptr %n.addr, align 8
  %194 = load i32, ptr %193, align 4
  %sub = sub nsw i32 %194, 1
  store i32 %sub, ptr %i__4, align 4
  %195 = load ptr, ptr %n.addr, align 8
  %196 = load i32, ptr %195, align 4
  %sub211 = sub nsw i32 %196, 1
  %197 = load i32, ptr %j, align 4
  %198 = load i32, ptr %x_dim1, align 4
  %mul212 = mul nsw i32 %197, %198
  %add213 = add nsw i32 %sub211, %mul212
  store i32 %add213, ptr %i__5, align 4
  %199 = load ptr, ptr %dl.addr, align 8
  %200 = load i32, ptr %i__4, align 4
  %idxprom214 = sext i32 %200 to i64
  %arrayidx215 = getelementptr inbounds %struct.complex, ptr %199, i64 %idxprom214
  %r216 = getelementptr inbounds %struct.complex, ptr %arrayidx215, i32 0, i32 0
  %201 = load float, ptr %r216, align 4
  %202 = load ptr, ptr %x.addr, align 8
  %203 = load i32, ptr %i__5, align 4
  %idxprom217 = sext i32 %203 to i64
  %arrayidx218 = getelementptr inbounds %struct.complex, ptr %202, i64 %idxprom217
  %r219 = getelementptr inbounds %struct.complex, ptr %arrayidx218, i32 0, i32 0
  %204 = load float, ptr %r219, align 4
  %205 = load ptr, ptr %dl.addr, align 8
  %206 = load i32, ptr %i__4, align 4
  %idxprom221 = sext i32 %206 to i64
  %arrayidx222 = getelementptr inbounds %struct.complex, ptr %205, i64 %idxprom221
  %i223 = getelementptr inbounds %struct.complex, ptr %arrayidx222, i32 0, i32 1
  %207 = load float, ptr %i223, align 4
  %208 = load ptr, ptr %x.addr, align 8
  %209 = load i32, ptr %i__5, align 4
  %idxprom224 = sext i32 %209 to i64
  %arrayidx225 = getelementptr inbounds %struct.complex, ptr %208, i64 %idxprom224
  %i226 = getelementptr inbounds %struct.complex, ptr %arrayidx225, i32 0, i32 1
  %210 = load float, ptr %i226, align 4
  %mul227 = fmul float %207, %210
  %neg228 = fneg float %mul227
  %211 = call float @llvm.fmuladd.f32(float %201, float %204, float %neg228)
  %r229 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 0
  store float %211, ptr %r229, align 4
  %212 = load ptr, ptr %dl.addr, align 8
  %213 = load i32, ptr %i__4, align 4
  %idxprom230 = sext i32 %213 to i64
  %arrayidx231 = getelementptr inbounds %struct.complex, ptr %212, i64 %idxprom230
  %r232 = getelementptr inbounds %struct.complex, ptr %arrayidx231, i32 0, i32 0
  %214 = load float, ptr %r232, align 4
  %215 = load ptr, ptr %x.addr, align 8
  %216 = load i32, ptr %i__5, align 4
  %idxprom233 = sext i32 %216 to i64
  %arrayidx234 = getelementptr inbounds %struct.complex, ptr %215, i64 %idxprom233
  %i235 = getelementptr inbounds %struct.complex, ptr %arrayidx234, i32 0, i32 1
  %217 = load float, ptr %i235, align 4
  %218 = load ptr, ptr %dl.addr, align 8
  %219 = load i32, ptr %i__4, align 4
  %idxprom237 = sext i32 %219 to i64
  %arrayidx238 = getelementptr inbounds %struct.complex, ptr %218, i64 %idxprom237
  %i239 = getelementptr inbounds %struct.complex, ptr %arrayidx238, i32 0, i32 1
  %220 = load float, ptr %i239, align 4
  %221 = load ptr, ptr %x.addr, align 8
  %222 = load i32, ptr %i__5, align 4
  %idxprom240 = sext i32 %222 to i64
  %arrayidx241 = getelementptr inbounds %struct.complex, ptr %221, i64 %idxprom240
  %r242 = getelementptr inbounds %struct.complex, ptr %arrayidx241, i32 0, i32 0
  %223 = load float, ptr %r242, align 4
  %mul243 = fmul float %220, %223
  %224 = call float @llvm.fmuladd.f32(float %214, float %217, float %mul243)
  %i244 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 1
  store float %224, ptr %i244, align 4
  %225 = load ptr, ptr %b.addr, align 8
  %226 = load i32, ptr %i__3, align 4
  %idxprom245 = sext i32 %226 to i64
  %arrayidx246 = getelementptr inbounds %struct.complex, ptr %225, i64 %idxprom245
  %r247 = getelementptr inbounds %struct.complex, ptr %arrayidx246, i32 0, i32 0
  %227 = load float, ptr %r247, align 4
  %r248 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 0
  %228 = load float, ptr %r248, align 4
  %add249 = fadd float %227, %228
  %r250 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  store float %add249, ptr %r250, align 4
  %229 = load ptr, ptr %b.addr, align 8
  %230 = load i32, ptr %i__3, align 4
  %idxprom251 = sext i32 %230 to i64
  %arrayidx252 = getelementptr inbounds %struct.complex, ptr %229, i64 %idxprom251
  %i253 = getelementptr inbounds %struct.complex, ptr %arrayidx252, i32 0, i32 1
  %231 = load float, ptr %i253, align 4
  %i254 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 1
  %232 = load float, ptr %i254, align 4
  %add255 = fadd float %231, %232
  %i256 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  store float %add255, ptr %i256, align 4
  %233 = load ptr, ptr %n.addr, align 8
  %234 = load i32, ptr %233, align 4
  store i32 %234, ptr %i__6, align 4
  %235 = load ptr, ptr %n.addr, align 8
  %236 = load i32, ptr %235, align 4
  %237 = load i32, ptr %j, align 4
  %238 = load i32, ptr %x_dim1, align 4
  %mul257 = mul nsw i32 %237, %238
  %add258 = add nsw i32 %236, %mul257
  store i32 %add258, ptr %i__7, align 4
  %239 = load ptr, ptr %d__.addr, align 8
  %240 = load i32, ptr %i__6, align 4
  %idxprom259 = sext i32 %240 to i64
  %arrayidx260 = getelementptr inbounds %struct.complex, ptr %239, i64 %idxprom259
  %r261 = getelementptr inbounds %struct.complex, ptr %arrayidx260, i32 0, i32 0
  %241 = load float, ptr %r261, align 4
  %242 = load ptr, ptr %x.addr, align 8
  %243 = load i32, ptr %i__7, align 4
  %idxprom262 = sext i32 %243 to i64
  %arrayidx263 = getelementptr inbounds %struct.complex, ptr %242, i64 %idxprom262
  %r264 = getelementptr inbounds %struct.complex, ptr %arrayidx263, i32 0, i32 0
  %244 = load float, ptr %r264, align 4
  %245 = load ptr, ptr %d__.addr, align 8
  %246 = load i32, ptr %i__6, align 4
  %idxprom266 = sext i32 %246 to i64
  %arrayidx267 = getelementptr inbounds %struct.complex, ptr %245, i64 %idxprom266
  %i268 = getelementptr inbounds %struct.complex, ptr %arrayidx267, i32 0, i32 1
  %247 = load float, ptr %i268, align 4
  %248 = load ptr, ptr %x.addr, align 8
  %249 = load i32, ptr %i__7, align 4
  %idxprom269 = sext i32 %249 to i64
  %arrayidx270 = getelementptr inbounds %struct.complex, ptr %248, i64 %idxprom269
  %i271 = getelementptr inbounds %struct.complex, ptr %arrayidx270, i32 0, i32 1
  %250 = load float, ptr %i271, align 4
  %mul272 = fmul float %247, %250
  %neg273 = fneg float %mul272
  %251 = call float @llvm.fmuladd.f32(float %241, float %244, float %neg273)
  %r274 = getelementptr inbounds %struct.complex, ptr %q__4, i32 0, i32 0
  store float %251, ptr %r274, align 4
  %252 = load ptr, ptr %d__.addr, align 8
  %253 = load i32, ptr %i__6, align 4
  %idxprom275 = sext i32 %253 to i64
  %arrayidx276 = getelementptr inbounds %struct.complex, ptr %252, i64 %idxprom275
  %r277 = getelementptr inbounds %struct.complex, ptr %arrayidx276, i32 0, i32 0
  %254 = load float, ptr %r277, align 4
  %255 = load ptr, ptr %x.addr, align 8
  %256 = load i32, ptr %i__7, align 4
  %idxprom278 = sext i32 %256 to i64
  %arrayidx279 = getelementptr inbounds %struct.complex, ptr %255, i64 %idxprom278
  %i280 = getelementptr inbounds %struct.complex, ptr %arrayidx279, i32 0, i32 1
  %257 = load float, ptr %i280, align 4
  %258 = load ptr, ptr %d__.addr, align 8
  %259 = load i32, ptr %i__6, align 4
  %idxprom282 = sext i32 %259 to i64
  %arrayidx283 = getelementptr inbounds %struct.complex, ptr %258, i64 %idxprom282
  %i284 = getelementptr inbounds %struct.complex, ptr %arrayidx283, i32 0, i32 1
  %260 = load float, ptr %i284, align 4
  %261 = load ptr, ptr %x.addr, align 8
  %262 = load i32, ptr %i__7, align 4
  %idxprom285 = sext i32 %262 to i64
  %arrayidx286 = getelementptr inbounds %struct.complex, ptr %261, i64 %idxprom285
  %r287 = getelementptr inbounds %struct.complex, ptr %arrayidx286, i32 0, i32 0
  %263 = load float, ptr %r287, align 4
  %mul288 = fmul float %260, %263
  %264 = call float @llvm.fmuladd.f32(float %254, float %257, float %mul288)
  %i289 = getelementptr inbounds %struct.complex, ptr %q__4, i32 0, i32 1
  store float %264, ptr %i289, align 4
  %r290 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  %265 = load float, ptr %r290, align 4
  %r291 = getelementptr inbounds %struct.complex, ptr %q__4, i32 0, i32 0
  %266 = load float, ptr %r291, align 4
  %add292 = fadd float %265, %266
  %r293 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float %add292, ptr %r293, align 4
  %i294 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  %267 = load float, ptr %i294, align 4
  %i295 = getelementptr inbounds %struct.complex, ptr %q__4, i32 0, i32 1
  %268 = load float, ptr %i295, align 4
  %add296 = fadd float %267, %268
  %i297 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float %add296, ptr %i297, align 4
  %r298 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %269 = load float, ptr %r298, align 4
  %270 = load ptr, ptr %b.addr, align 8
  %271 = load i32, ptr %i__2, align 4
  %idxprom299 = sext i32 %271 to i64
  %arrayidx300 = getelementptr inbounds %struct.complex, ptr %270, i64 %idxprom299
  %r301 = getelementptr inbounds %struct.complex, ptr %arrayidx300, i32 0, i32 0
  store float %269, ptr %r301, align 4
  %i302 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %272 = load float, ptr %i302, align 4
  %273 = load ptr, ptr %b.addr, align 8
  %274 = load i32, ptr %i__2, align 4
  %idxprom303 = sext i32 %274 to i64
  %arrayidx304 = getelementptr inbounds %struct.complex, ptr %273, i64 %idxprom303
  %i305 = getelementptr inbounds %struct.complex, ptr %arrayidx304, i32 0, i32 1
  store float %272, ptr %i305, align 4
  %275 = load ptr, ptr %n.addr, align 8
  %276 = load i32, ptr %275, align 4
  %sub306 = sub nsw i32 %276, 1
  store i32 %sub306, ptr %i__2, align 4
  store i32 2, ptr %i__, align 4
  br label %for.cond307

for.cond307:                                      ; preds = %for.inc452, %if.else116
  %277 = load i32, ptr %i__, align 4
  %278 = load i32, ptr %i__2, align 4
  %cmp308 = icmp sle i32 %277, %278
  br i1 %cmp308, label %for.body309, label %for.end454

for.body309:                                      ; preds = %for.cond307
  %279 = load i32, ptr %i__, align 4
  %280 = load i32, ptr %j, align 4
  %281 = load i32, ptr %b_dim1, align 4
  %mul310 = mul nsw i32 %280, %281
  %add311 = add nsw i32 %279, %mul310
  store i32 %add311, ptr %i__3, align 4
  %282 = load i32, ptr %i__, align 4
  %283 = load i32, ptr %j, align 4
  %284 = load i32, ptr %b_dim1, align 4
  %mul312 = mul nsw i32 %283, %284
  %add313 = add nsw i32 %282, %mul312
  store i32 %add313, ptr %i__4, align 4
  %285 = load i32, ptr %i__, align 4
  %sub314 = sub nsw i32 %285, 1
  store i32 %sub314, ptr %i__5, align 4
  %286 = load i32, ptr %i__, align 4
  %sub315 = sub nsw i32 %286, 1
  %287 = load i32, ptr %j, align 4
  %288 = load i32, ptr %x_dim1, align 4
  %mul316 = mul nsw i32 %287, %288
  %add317 = add nsw i32 %sub315, %mul316
  store i32 %add317, ptr %i__6, align 4
  %289 = load ptr, ptr %dl.addr, align 8
  %290 = load i32, ptr %i__5, align 4
  %idxprom318 = sext i32 %290 to i64
  %arrayidx319 = getelementptr inbounds %struct.complex, ptr %289, i64 %idxprom318
  %r320 = getelementptr inbounds %struct.complex, ptr %arrayidx319, i32 0, i32 0
  %291 = load float, ptr %r320, align 4
  %292 = load ptr, ptr %x.addr, align 8
  %293 = load i32, ptr %i__6, align 4
  %idxprom321 = sext i32 %293 to i64
  %arrayidx322 = getelementptr inbounds %struct.complex, ptr %292, i64 %idxprom321
  %r323 = getelementptr inbounds %struct.complex, ptr %arrayidx322, i32 0, i32 0
  %294 = load float, ptr %r323, align 4
  %295 = load ptr, ptr %dl.addr, align 8
  %296 = load i32, ptr %i__5, align 4
  %idxprom325 = sext i32 %296 to i64
  %arrayidx326 = getelementptr inbounds %struct.complex, ptr %295, i64 %idxprom325
  %i327 = getelementptr inbounds %struct.complex, ptr %arrayidx326, i32 0, i32 1
  %297 = load float, ptr %i327, align 4
  %298 = load ptr, ptr %x.addr, align 8
  %299 = load i32, ptr %i__6, align 4
  %idxprom328 = sext i32 %299 to i64
  %arrayidx329 = getelementptr inbounds %struct.complex, ptr %298, i64 %idxprom328
  %i330 = getelementptr inbounds %struct.complex, ptr %arrayidx329, i32 0, i32 1
  %300 = load float, ptr %i330, align 4
  %mul331 = fmul float %297, %300
  %neg332 = fneg float %mul331
  %301 = call float @llvm.fmuladd.f32(float %291, float %294, float %neg332)
  %r333 = getelementptr inbounds %struct.complex, ptr %q__4, i32 0, i32 0
  store float %301, ptr %r333, align 4
  %302 = load ptr, ptr %dl.addr, align 8
  %303 = load i32, ptr %i__5, align 4
  %idxprom334 = sext i32 %303 to i64
  %arrayidx335 = getelementptr inbounds %struct.complex, ptr %302, i64 %idxprom334
  %r336 = getelementptr inbounds %struct.complex, ptr %arrayidx335, i32 0, i32 0
  %304 = load float, ptr %r336, align 4
  %305 = load ptr, ptr %x.addr, align 8
  %306 = load i32, ptr %i__6, align 4
  %idxprom337 = sext i32 %306 to i64
  %arrayidx338 = getelementptr inbounds %struct.complex, ptr %305, i64 %idxprom337
  %i339 = getelementptr inbounds %struct.complex, ptr %arrayidx338, i32 0, i32 1
  %307 = load float, ptr %i339, align 4
  %308 = load ptr, ptr %dl.addr, align 8
  %309 = load i32, ptr %i__5, align 4
  %idxprom341 = sext i32 %309 to i64
  %arrayidx342 = getelementptr inbounds %struct.complex, ptr %308, i64 %idxprom341
  %i343 = getelementptr inbounds %struct.complex, ptr %arrayidx342, i32 0, i32 1
  %310 = load float, ptr %i343, align 4
  %311 = load ptr, ptr %x.addr, align 8
  %312 = load i32, ptr %i__6, align 4
  %idxprom344 = sext i32 %312 to i64
  %arrayidx345 = getelementptr inbounds %struct.complex, ptr %311, i64 %idxprom344
  %r346 = getelementptr inbounds %struct.complex, ptr %arrayidx345, i32 0, i32 0
  %313 = load float, ptr %r346, align 4
  %mul347 = fmul float %310, %313
  %314 = call float @llvm.fmuladd.f32(float %304, float %307, float %mul347)
  %i348 = getelementptr inbounds %struct.complex, ptr %q__4, i32 0, i32 1
  store float %314, ptr %i348, align 4
  %315 = load ptr, ptr %b.addr, align 8
  %316 = load i32, ptr %i__4, align 4
  %idxprom349 = sext i32 %316 to i64
  %arrayidx350 = getelementptr inbounds %struct.complex, ptr %315, i64 %idxprom349
  %r351 = getelementptr inbounds %struct.complex, ptr %arrayidx350, i32 0, i32 0
  %317 = load float, ptr %r351, align 4
  %r352 = getelementptr inbounds %struct.complex, ptr %q__4, i32 0, i32 0
  %318 = load float, ptr %r352, align 4
  %add353 = fadd float %317, %318
  %r354 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 0
  store float %add353, ptr %r354, align 4
  %319 = load ptr, ptr %b.addr, align 8
  %320 = load i32, ptr %i__4, align 4
  %idxprom355 = sext i32 %320 to i64
  %arrayidx356 = getelementptr inbounds %struct.complex, ptr %319, i64 %idxprom355
  %i357 = getelementptr inbounds %struct.complex, ptr %arrayidx356, i32 0, i32 1
  %321 = load float, ptr %i357, align 4
  %i358 = getelementptr inbounds %struct.complex, ptr %q__4, i32 0, i32 1
  %322 = load float, ptr %i358, align 4
  %add359 = fadd float %321, %322
  %i360 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 1
  store float %add359, ptr %i360, align 4
  %323 = load i32, ptr %i__, align 4
  store i32 %323, ptr %i__7, align 4
  %324 = load i32, ptr %i__, align 4
  %325 = load i32, ptr %j, align 4
  %326 = load i32, ptr %x_dim1, align 4
  %mul361 = mul nsw i32 %325, %326
  %add362 = add nsw i32 %324, %mul361
  store i32 %add362, ptr %i__8, align 4
  %327 = load ptr, ptr %d__.addr, align 8
  %328 = load i32, ptr %i__7, align 4
  %idxprom363 = sext i32 %328 to i64
  %arrayidx364 = getelementptr inbounds %struct.complex, ptr %327, i64 %idxprom363
  %r365 = getelementptr inbounds %struct.complex, ptr %arrayidx364, i32 0, i32 0
  %329 = load float, ptr %r365, align 4
  %330 = load ptr, ptr %x.addr, align 8
  %331 = load i32, ptr %i__8, align 4
  %idxprom366 = sext i32 %331 to i64
  %arrayidx367 = getelementptr inbounds %struct.complex, ptr %330, i64 %idxprom366
  %r368 = getelementptr inbounds %struct.complex, ptr %arrayidx367, i32 0, i32 0
  %332 = load float, ptr %r368, align 4
  %333 = load ptr, ptr %d__.addr, align 8
  %334 = load i32, ptr %i__7, align 4
  %idxprom370 = sext i32 %334 to i64
  %arrayidx371 = getelementptr inbounds %struct.complex, ptr %333, i64 %idxprom370
  %i372 = getelementptr inbounds %struct.complex, ptr %arrayidx371, i32 0, i32 1
  %335 = load float, ptr %i372, align 4
  %336 = load ptr, ptr %x.addr, align 8
  %337 = load i32, ptr %i__8, align 4
  %idxprom373 = sext i32 %337 to i64
  %arrayidx374 = getelementptr inbounds %struct.complex, ptr %336, i64 %idxprom373
  %i375 = getelementptr inbounds %struct.complex, ptr %arrayidx374, i32 0, i32 1
  %338 = load float, ptr %i375, align 4
  %mul376 = fmul float %335, %338
  %neg377 = fneg float %mul376
  %339 = call float @llvm.fmuladd.f32(float %329, float %332, float %neg377)
  %r378 = getelementptr inbounds %struct.complex, ptr %q__5, i32 0, i32 0
  store float %339, ptr %r378, align 4
  %340 = load ptr, ptr %d__.addr, align 8
  %341 = load i32, ptr %i__7, align 4
  %idxprom379 = sext i32 %341 to i64
  %arrayidx380 = getelementptr inbounds %struct.complex, ptr %340, i64 %idxprom379
  %r381 = getelementptr inbounds %struct.complex, ptr %arrayidx380, i32 0, i32 0
  %342 = load float, ptr %r381, align 4
  %343 = load ptr, ptr %x.addr, align 8
  %344 = load i32, ptr %i__8, align 4
  %idxprom382 = sext i32 %344 to i64
  %arrayidx383 = getelementptr inbounds %struct.complex, ptr %343, i64 %idxprom382
  %i384 = getelementptr inbounds %struct.complex, ptr %arrayidx383, i32 0, i32 1
  %345 = load float, ptr %i384, align 4
  %346 = load ptr, ptr %d__.addr, align 8
  %347 = load i32, ptr %i__7, align 4
  %idxprom386 = sext i32 %347 to i64
  %arrayidx387 = getelementptr inbounds %struct.complex, ptr %346, i64 %idxprom386
  %i388 = getelementptr inbounds %struct.complex, ptr %arrayidx387, i32 0, i32 1
  %348 = load float, ptr %i388, align 4
  %349 = load ptr, ptr %x.addr, align 8
  %350 = load i32, ptr %i__8, align 4
  %idxprom389 = sext i32 %350 to i64
  %arrayidx390 = getelementptr inbounds %struct.complex, ptr %349, i64 %idxprom389
  %r391 = getelementptr inbounds %struct.complex, ptr %arrayidx390, i32 0, i32 0
  %351 = load float, ptr %r391, align 4
  %mul392 = fmul float %348, %351
  %352 = call float @llvm.fmuladd.f32(float %342, float %345, float %mul392)
  %i393 = getelementptr inbounds %struct.complex, ptr %q__5, i32 0, i32 1
  store float %352, ptr %i393, align 4
  %r394 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 0
  %353 = load float, ptr %r394, align 4
  %r395 = getelementptr inbounds %struct.complex, ptr %q__5, i32 0, i32 0
  %354 = load float, ptr %r395, align 4
  %add396 = fadd float %353, %354
  %r397 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  store float %add396, ptr %r397, align 4
  %i398 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 1
  %355 = load float, ptr %i398, align 4
  %i399 = getelementptr inbounds %struct.complex, ptr %q__5, i32 0, i32 1
  %356 = load float, ptr %i399, align 4
  %add400 = fadd float %355, %356
  %i401 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  store float %add400, ptr %i401, align 4
  %357 = load i32, ptr %i__, align 4
  store i32 %357, ptr %i__9, align 4
  %358 = load i32, ptr %i__, align 4
  %add402 = add nsw i32 %358, 1
  %359 = load i32, ptr %j, align 4
  %360 = load i32, ptr %x_dim1, align 4
  %mul403 = mul nsw i32 %359, %360
  %add404 = add nsw i32 %add402, %mul403
  store i32 %add404, ptr %i__10, align 4
  %361 = load ptr, ptr %du.addr, align 8
  %362 = load i32, ptr %i__9, align 4
  %idxprom405 = sext i32 %362 to i64
  %arrayidx406 = getelementptr inbounds %struct.complex, ptr %361, i64 %idxprom405
  %r407 = getelementptr inbounds %struct.complex, ptr %arrayidx406, i32 0, i32 0
  %363 = load float, ptr %r407, align 4
  %364 = load ptr, ptr %x.addr, align 8
  %365 = load i32, ptr %i__10, align 4
  %idxprom408 = sext i32 %365 to i64
  %arrayidx409 = getelementptr inbounds %struct.complex, ptr %364, i64 %idxprom408
  %r410 = getelementptr inbounds %struct.complex, ptr %arrayidx409, i32 0, i32 0
  %366 = load float, ptr %r410, align 4
  %367 = load ptr, ptr %du.addr, align 8
  %368 = load i32, ptr %i__9, align 4
  %idxprom412 = sext i32 %368 to i64
  %arrayidx413 = getelementptr inbounds %struct.complex, ptr %367, i64 %idxprom412
  %i414 = getelementptr inbounds %struct.complex, ptr %arrayidx413, i32 0, i32 1
  %369 = load float, ptr %i414, align 4
  %370 = load ptr, ptr %x.addr, align 8
  %371 = load i32, ptr %i__10, align 4
  %idxprom415 = sext i32 %371 to i64
  %arrayidx416 = getelementptr inbounds %struct.complex, ptr %370, i64 %idxprom415
  %i417 = getelementptr inbounds %struct.complex, ptr %arrayidx416, i32 0, i32 1
  %372 = load float, ptr %i417, align 4
  %mul418 = fmul float %369, %372
  %neg419 = fneg float %mul418
  %373 = call float @llvm.fmuladd.f32(float %363, float %366, float %neg419)
  %r420 = getelementptr inbounds %struct.complex, ptr %q__6, i32 0, i32 0
  store float %373, ptr %r420, align 4
  %374 = load ptr, ptr %du.addr, align 8
  %375 = load i32, ptr %i__9, align 4
  %idxprom421 = sext i32 %375 to i64
  %arrayidx422 = getelementptr inbounds %struct.complex, ptr %374, i64 %idxprom421
  %r423 = getelementptr inbounds %struct.complex, ptr %arrayidx422, i32 0, i32 0
  %376 = load float, ptr %r423, align 4
  %377 = load ptr, ptr %x.addr, align 8
  %378 = load i32, ptr %i__10, align 4
  %idxprom424 = sext i32 %378 to i64
  %arrayidx425 = getelementptr inbounds %struct.complex, ptr %377, i64 %idxprom424
  %i426 = getelementptr inbounds %struct.complex, ptr %arrayidx425, i32 0, i32 1
  %379 = load float, ptr %i426, align 4
  %380 = load ptr, ptr %du.addr, align 8
  %381 = load i32, ptr %i__9, align 4
  %idxprom428 = sext i32 %381 to i64
  %arrayidx429 = getelementptr inbounds %struct.complex, ptr %380, i64 %idxprom428
  %i430 = getelementptr inbounds %struct.complex, ptr %arrayidx429, i32 0, i32 1
  %382 = load float, ptr %i430, align 4
  %383 = load ptr, ptr %x.addr, align 8
  %384 = load i32, ptr %i__10, align 4
  %idxprom431 = sext i32 %384 to i64
  %arrayidx432 = getelementptr inbounds %struct.complex, ptr %383, i64 %idxprom431
  %r433 = getelementptr inbounds %struct.complex, ptr %arrayidx432, i32 0, i32 0
  %385 = load float, ptr %r433, align 4
  %mul434 = fmul float %382, %385
  %386 = call float @llvm.fmuladd.f32(float %376, float %379, float %mul434)
  %i435 = getelementptr inbounds %struct.complex, ptr %q__6, i32 0, i32 1
  store float %386, ptr %i435, align 4
  %r436 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  %387 = load float, ptr %r436, align 4
  %r437 = getelementptr inbounds %struct.complex, ptr %q__6, i32 0, i32 0
  %388 = load float, ptr %r437, align 4
  %add438 = fadd float %387, %388
  %r439 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float %add438, ptr %r439, align 4
  %i440 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  %389 = load float, ptr %i440, align 4
  %i441 = getelementptr inbounds %struct.complex, ptr %q__6, i32 0, i32 1
  %390 = load float, ptr %i441, align 4
  %add442 = fadd float %389, %390
  %i443 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float %add442, ptr %i443, align 4
  %r444 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %391 = load float, ptr %r444, align 4
  %392 = load ptr, ptr %b.addr, align 8
  %393 = load i32, ptr %i__3, align 4
  %idxprom445 = sext i32 %393 to i64
  %arrayidx446 = getelementptr inbounds %struct.complex, ptr %392, i64 %idxprom445
  %r447 = getelementptr inbounds %struct.complex, ptr %arrayidx446, i32 0, i32 0
  store float %391, ptr %r447, align 4
  %i448 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %394 = load float, ptr %i448, align 4
  %395 = load ptr, ptr %b.addr, align 8
  %396 = load i32, ptr %i__3, align 4
  %idxprom449 = sext i32 %396 to i64
  %arrayidx450 = getelementptr inbounds %struct.complex, ptr %395, i64 %idxprom449
  %i451 = getelementptr inbounds %struct.complex, ptr %arrayidx450, i32 0, i32 1
  store float %394, ptr %i451, align 4
  br label %for.inc452

for.inc452:                                       ; preds = %for.body309
  %397 = load i32, ptr %i__, align 4
  %inc453 = add nsw i32 %397, 1
  store i32 %inc453, ptr %i__, align 4
  br label %for.cond307, !llvm.loop !10

for.end454:                                       ; preds = %for.cond307
  br label %if.end455

if.end455:                                        ; preds = %for.end454, %if.then63
  br label %for.inc456

for.inc456:                                       ; preds = %if.end455
  %398 = load i32, ptr %j, align 4
  %inc457 = add nsw i32 %398, 1
  store i32 %inc457, ptr %j, align 4
  br label %for.cond59, !llvm.loop !11

for.end458:                                       ; preds = %for.cond59
  br label %if.end1234

if.else459:                                       ; preds = %if.then57
  %399 = load ptr, ptr %trans.addr, align 8
  %call460 = call i32 @lsame_(ptr noundef %399, ptr noundef @.str.1)
  %tobool461 = icmp ne i32 %call460, 0
  br i1 %tobool461, label %if.then462, label %if.else865

if.then462:                                       ; preds = %if.else459
  %400 = load ptr, ptr %nrhs.addr, align 8
  %401 = load i32, ptr %400, align 4
  store i32 %401, ptr %i__1, align 4
  store i32 1, ptr %j, align 4
  br label %for.cond463

for.cond463:                                      ; preds = %for.inc862, %if.then462
  %402 = load i32, ptr %j, align 4
  %403 = load i32, ptr %i__1, align 4
  %cmp464 = icmp sle i32 %402, %403
  br i1 %cmp464, label %for.body465, label %for.end864

for.body465:                                      ; preds = %for.cond463
  %404 = load ptr, ptr %n.addr, align 8
  %405 = load i32, ptr %404, align 4
  %cmp466 = icmp eq i32 %405, 1
  br i1 %cmp466, label %if.then467, label %if.else521

if.then467:                                       ; preds = %for.body465
  %406 = load i32, ptr %j, align 4
  %407 = load i32, ptr %b_dim1, align 4
  %mul468 = mul nsw i32 %406, %407
  %add469 = add nsw i32 %mul468, 1
  store i32 %add469, ptr %i__2, align 4
  %408 = load i32, ptr %j, align 4
  %409 = load i32, ptr %b_dim1, align 4
  %mul470 = mul nsw i32 %408, %409
  %add471 = add nsw i32 %mul470, 1
  store i32 %add471, ptr %i__3, align 4
  %410 = load i32, ptr %j, align 4
  %411 = load i32, ptr %x_dim1, align 4
  %mul472 = mul nsw i32 %410, %411
  %add473 = add nsw i32 %mul472, 1
  store i32 %add473, ptr %i__4, align 4
  %412 = load ptr, ptr %d__.addr, align 8
  %arrayidx474 = getelementptr inbounds %struct.complex, ptr %412, i64 1
  %r475 = getelementptr inbounds %struct.complex, ptr %arrayidx474, i32 0, i32 0
  %413 = load float, ptr %r475, align 4
  %414 = load ptr, ptr %x.addr, align 8
  %415 = load i32, ptr %i__4, align 4
  %idxprom476 = sext i32 %415 to i64
  %arrayidx477 = getelementptr inbounds %struct.complex, ptr %414, i64 %idxprom476
  %r478 = getelementptr inbounds %struct.complex, ptr %arrayidx477, i32 0, i32 0
  %416 = load float, ptr %r478, align 4
  %417 = load ptr, ptr %d__.addr, align 8
  %arrayidx480 = getelementptr inbounds %struct.complex, ptr %417, i64 1
  %i481 = getelementptr inbounds %struct.complex, ptr %arrayidx480, i32 0, i32 1
  %418 = load float, ptr %i481, align 4
  %419 = load ptr, ptr %x.addr, align 8
  %420 = load i32, ptr %i__4, align 4
  %idxprom482 = sext i32 %420 to i64
  %arrayidx483 = getelementptr inbounds %struct.complex, ptr %419, i64 %idxprom482
  %i484 = getelementptr inbounds %struct.complex, ptr %arrayidx483, i32 0, i32 1
  %421 = load float, ptr %i484, align 4
  %mul485 = fmul float %418, %421
  %neg486 = fneg float %mul485
  %422 = call float @llvm.fmuladd.f32(float %413, float %416, float %neg486)
  %r487 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  store float %422, ptr %r487, align 4
  %423 = load ptr, ptr %d__.addr, align 8
  %arrayidx488 = getelementptr inbounds %struct.complex, ptr %423, i64 1
  %r489 = getelementptr inbounds %struct.complex, ptr %arrayidx488, i32 0, i32 0
  %424 = load float, ptr %r489, align 4
  %425 = load ptr, ptr %x.addr, align 8
  %426 = load i32, ptr %i__4, align 4
  %idxprom490 = sext i32 %426 to i64
  %arrayidx491 = getelementptr inbounds %struct.complex, ptr %425, i64 %idxprom490
  %i492 = getelementptr inbounds %struct.complex, ptr %arrayidx491, i32 0, i32 1
  %427 = load float, ptr %i492, align 4
  %428 = load ptr, ptr %d__.addr, align 8
  %arrayidx494 = getelementptr inbounds %struct.complex, ptr %428, i64 1
  %i495 = getelementptr inbounds %struct.complex, ptr %arrayidx494, i32 0, i32 1
  %429 = load float, ptr %i495, align 4
  %430 = load ptr, ptr %x.addr, align 8
  %431 = load i32, ptr %i__4, align 4
  %idxprom496 = sext i32 %431 to i64
  %arrayidx497 = getelementptr inbounds %struct.complex, ptr %430, i64 %idxprom496
  %r498 = getelementptr inbounds %struct.complex, ptr %arrayidx497, i32 0, i32 0
  %432 = load float, ptr %r498, align 4
  %mul499 = fmul float %429, %432
  %433 = call float @llvm.fmuladd.f32(float %424, float %427, float %mul499)
  %i500 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  store float %433, ptr %i500, align 4
  %434 = load ptr, ptr %b.addr, align 8
  %435 = load i32, ptr %i__3, align 4
  %idxprom501 = sext i32 %435 to i64
  %arrayidx502 = getelementptr inbounds %struct.complex, ptr %434, i64 %idxprom501
  %r503 = getelementptr inbounds %struct.complex, ptr %arrayidx502, i32 0, i32 0
  %436 = load float, ptr %r503, align 4
  %r504 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  %437 = load float, ptr %r504, align 4
  %add505 = fadd float %436, %437
  %r506 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float %add505, ptr %r506, align 4
  %438 = load ptr, ptr %b.addr, align 8
  %439 = load i32, ptr %i__3, align 4
  %idxprom507 = sext i32 %439 to i64
  %arrayidx508 = getelementptr inbounds %struct.complex, ptr %438, i64 %idxprom507
  %i509 = getelementptr inbounds %struct.complex, ptr %arrayidx508, i32 0, i32 1
  %440 = load float, ptr %i509, align 4
  %i510 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  %441 = load float, ptr %i510, align 4
  %add511 = fadd float %440, %441
  %i512 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float %add511, ptr %i512, align 4
  %r513 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %442 = load float, ptr %r513, align 4
  %443 = load ptr, ptr %b.addr, align 8
  %444 = load i32, ptr %i__2, align 4
  %idxprom514 = sext i32 %444 to i64
  %arrayidx515 = getelementptr inbounds %struct.complex, ptr %443, i64 %idxprom514
  %r516 = getelementptr inbounds %struct.complex, ptr %arrayidx515, i32 0, i32 0
  store float %442, ptr %r516, align 4
  %i517 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %445 = load float, ptr %i517, align 4
  %446 = load ptr, ptr %b.addr, align 8
  %447 = load i32, ptr %i__2, align 4
  %idxprom518 = sext i32 %447 to i64
  %arrayidx519 = getelementptr inbounds %struct.complex, ptr %446, i64 %idxprom518
  %i520 = getelementptr inbounds %struct.complex, ptr %arrayidx519, i32 0, i32 1
  store float %445, ptr %i520, align 4
  br label %if.end861

if.else521:                                       ; preds = %for.body465
  %448 = load i32, ptr %j, align 4
  %449 = load i32, ptr %b_dim1, align 4
  %mul522 = mul nsw i32 %448, %449
  %add523 = add nsw i32 %mul522, 1
  store i32 %add523, ptr %i__2, align 4
  %450 = load i32, ptr %j, align 4
  %451 = load i32, ptr %b_dim1, align 4
  %mul524 = mul nsw i32 %450, %451
  %add525 = add nsw i32 %mul524, 1
  store i32 %add525, ptr %i__3, align 4
  %452 = load i32, ptr %j, align 4
  %453 = load i32, ptr %x_dim1, align 4
  %mul526 = mul nsw i32 %452, %453
  %add527 = add nsw i32 %mul526, 1
  store i32 %add527, ptr %i__4, align 4
  %454 = load ptr, ptr %d__.addr, align 8
  %arrayidx528 = getelementptr inbounds %struct.complex, ptr %454, i64 1
  %r529 = getelementptr inbounds %struct.complex, ptr %arrayidx528, i32 0, i32 0
  %455 = load float, ptr %r529, align 4
  %456 = load ptr, ptr %x.addr, align 8
  %457 = load i32, ptr %i__4, align 4
  %idxprom530 = sext i32 %457 to i64
  %arrayidx531 = getelementptr inbounds %struct.complex, ptr %456, i64 %idxprom530
  %r532 = getelementptr inbounds %struct.complex, ptr %arrayidx531, i32 0, i32 0
  %458 = load float, ptr %r532, align 4
  %459 = load ptr, ptr %d__.addr, align 8
  %arrayidx534 = getelementptr inbounds %struct.complex, ptr %459, i64 1
  %i535 = getelementptr inbounds %struct.complex, ptr %arrayidx534, i32 0, i32 1
  %460 = load float, ptr %i535, align 4
  %461 = load ptr, ptr %x.addr, align 8
  %462 = load i32, ptr %i__4, align 4
  %idxprom536 = sext i32 %462 to i64
  %arrayidx537 = getelementptr inbounds %struct.complex, ptr %461, i64 %idxprom536
  %i538 = getelementptr inbounds %struct.complex, ptr %arrayidx537, i32 0, i32 1
  %463 = load float, ptr %i538, align 4
  %mul539 = fmul float %460, %463
  %neg540 = fneg float %mul539
  %464 = call float @llvm.fmuladd.f32(float %455, float %458, float %neg540)
  %r541 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 0
  store float %464, ptr %r541, align 4
  %465 = load ptr, ptr %d__.addr, align 8
  %arrayidx542 = getelementptr inbounds %struct.complex, ptr %465, i64 1
  %r543 = getelementptr inbounds %struct.complex, ptr %arrayidx542, i32 0, i32 0
  %466 = load float, ptr %r543, align 4
  %467 = load ptr, ptr %x.addr, align 8
  %468 = load i32, ptr %i__4, align 4
  %idxprom544 = sext i32 %468 to i64
  %arrayidx545 = getelementptr inbounds %struct.complex, ptr %467, i64 %idxprom544
  %i546 = getelementptr inbounds %struct.complex, ptr %arrayidx545, i32 0, i32 1
  %469 = load float, ptr %i546, align 4
  %470 = load ptr, ptr %d__.addr, align 8
  %arrayidx548 = getelementptr inbounds %struct.complex, ptr %470, i64 1
  %i549 = getelementptr inbounds %struct.complex, ptr %arrayidx548, i32 0, i32 1
  %471 = load float, ptr %i549, align 4
  %472 = load ptr, ptr %x.addr, align 8
  %473 = load i32, ptr %i__4, align 4
  %idxprom550 = sext i32 %473 to i64
  %arrayidx551 = getelementptr inbounds %struct.complex, ptr %472, i64 %idxprom550
  %r552 = getelementptr inbounds %struct.complex, ptr %arrayidx551, i32 0, i32 0
  %474 = load float, ptr %r552, align 4
  %mul553 = fmul float %471, %474
  %475 = call float @llvm.fmuladd.f32(float %466, float %469, float %mul553)
  %i554 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 1
  store float %475, ptr %i554, align 4
  %476 = load ptr, ptr %b.addr, align 8
  %477 = load i32, ptr %i__3, align 4
  %idxprom555 = sext i32 %477 to i64
  %arrayidx556 = getelementptr inbounds %struct.complex, ptr %476, i64 %idxprom555
  %r557 = getelementptr inbounds %struct.complex, ptr %arrayidx556, i32 0, i32 0
  %478 = load float, ptr %r557, align 4
  %r558 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 0
  %479 = load float, ptr %r558, align 4
  %add559 = fadd float %478, %479
  %r560 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  store float %add559, ptr %r560, align 4
  %480 = load ptr, ptr %b.addr, align 8
  %481 = load i32, ptr %i__3, align 4
  %idxprom561 = sext i32 %481 to i64
  %arrayidx562 = getelementptr inbounds %struct.complex, ptr %480, i64 %idxprom561
  %i563 = getelementptr inbounds %struct.complex, ptr %arrayidx562, i32 0, i32 1
  %482 = load float, ptr %i563, align 4
  %i564 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 1
  %483 = load float, ptr %i564, align 4
  %add565 = fadd float %482, %483
  %i566 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  store float %add565, ptr %i566, align 4
  %484 = load i32, ptr %j, align 4
  %485 = load i32, ptr %x_dim1, align 4
  %mul567 = mul nsw i32 %484, %485
  %add568 = add nsw i32 %mul567, 2
  store i32 %add568, ptr %i__5, align 4
  %486 = load ptr, ptr %dl.addr, align 8
  %arrayidx569 = getelementptr inbounds %struct.complex, ptr %486, i64 1
  %r570 = getelementptr inbounds %struct.complex, ptr %arrayidx569, i32 0, i32 0
  %487 = load float, ptr %r570, align 4
  %488 = load ptr, ptr %x.addr, align 8
  %489 = load i32, ptr %i__5, align 4
  %idxprom571 = sext i32 %489 to i64
  %arrayidx572 = getelementptr inbounds %struct.complex, ptr %488, i64 %idxprom571
  %r573 = getelementptr inbounds %struct.complex, ptr %arrayidx572, i32 0, i32 0
  %490 = load float, ptr %r573, align 4
  %491 = load ptr, ptr %dl.addr, align 8
  %arrayidx575 = getelementptr inbounds %struct.complex, ptr %491, i64 1
  %i576 = getelementptr inbounds %struct.complex, ptr %arrayidx575, i32 0, i32 1
  %492 = load float, ptr %i576, align 4
  %493 = load ptr, ptr %x.addr, align 8
  %494 = load i32, ptr %i__5, align 4
  %idxprom577 = sext i32 %494 to i64
  %arrayidx578 = getelementptr inbounds %struct.complex, ptr %493, i64 %idxprom577
  %i579 = getelementptr inbounds %struct.complex, ptr %arrayidx578, i32 0, i32 1
  %495 = load float, ptr %i579, align 4
  %mul580 = fmul float %492, %495
  %neg581 = fneg float %mul580
  %496 = call float @llvm.fmuladd.f32(float %487, float %490, float %neg581)
  %r582 = getelementptr inbounds %struct.complex, ptr %q__4, i32 0, i32 0
  store float %496, ptr %r582, align 4
  %497 = load ptr, ptr %dl.addr, align 8
  %arrayidx583 = getelementptr inbounds %struct.complex, ptr %497, i64 1
  %r584 = getelementptr inbounds %struct.complex, ptr %arrayidx583, i32 0, i32 0
  %498 = load float, ptr %r584, align 4
  %499 = load ptr, ptr %x.addr, align 8
  %500 = load i32, ptr %i__5, align 4
  %idxprom585 = sext i32 %500 to i64
  %arrayidx586 = getelementptr inbounds %struct.complex, ptr %499, i64 %idxprom585
  %i587 = getelementptr inbounds %struct.complex, ptr %arrayidx586, i32 0, i32 1
  %501 = load float, ptr %i587, align 4
  %502 = load ptr, ptr %dl.addr, align 8
  %arrayidx589 = getelementptr inbounds %struct.complex, ptr %502, i64 1
  %i590 = getelementptr inbounds %struct.complex, ptr %arrayidx589, i32 0, i32 1
  %503 = load float, ptr %i590, align 4
  %504 = load ptr, ptr %x.addr, align 8
  %505 = load i32, ptr %i__5, align 4
  %idxprom591 = sext i32 %505 to i64
  %arrayidx592 = getelementptr inbounds %struct.complex, ptr %504, i64 %idxprom591
  %r593 = getelementptr inbounds %struct.complex, ptr %arrayidx592, i32 0, i32 0
  %506 = load float, ptr %r593, align 4
  %mul594 = fmul float %503, %506
  %507 = call float @llvm.fmuladd.f32(float %498, float %501, float %mul594)
  %i595 = getelementptr inbounds %struct.complex, ptr %q__4, i32 0, i32 1
  store float %507, ptr %i595, align 4
  %r596 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  %508 = load float, ptr %r596, align 4
  %r597 = getelementptr inbounds %struct.complex, ptr %q__4, i32 0, i32 0
  %509 = load float, ptr %r597, align 4
  %add598 = fadd float %508, %509
  %r599 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float %add598, ptr %r599, align 4
  %i600 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  %510 = load float, ptr %i600, align 4
  %i601 = getelementptr inbounds %struct.complex, ptr %q__4, i32 0, i32 1
  %511 = load float, ptr %i601, align 4
  %add602 = fadd float %510, %511
  %i603 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float %add602, ptr %i603, align 4
  %r604 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %512 = load float, ptr %r604, align 4
  %513 = load ptr, ptr %b.addr, align 8
  %514 = load i32, ptr %i__2, align 4
  %idxprom605 = sext i32 %514 to i64
  %arrayidx606 = getelementptr inbounds %struct.complex, ptr %513, i64 %idxprom605
  %r607 = getelementptr inbounds %struct.complex, ptr %arrayidx606, i32 0, i32 0
  store float %512, ptr %r607, align 4
  %i608 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %515 = load float, ptr %i608, align 4
  %516 = load ptr, ptr %b.addr, align 8
  %517 = load i32, ptr %i__2, align 4
  %idxprom609 = sext i32 %517 to i64
  %arrayidx610 = getelementptr inbounds %struct.complex, ptr %516, i64 %idxprom609
  %i611 = getelementptr inbounds %struct.complex, ptr %arrayidx610, i32 0, i32 1
  store float %515, ptr %i611, align 4
  %518 = load ptr, ptr %n.addr, align 8
  %519 = load i32, ptr %518, align 4
  %520 = load i32, ptr %j, align 4
  %521 = load i32, ptr %b_dim1, align 4
  %mul612 = mul nsw i32 %520, %521
  %add613 = add nsw i32 %519, %mul612
  store i32 %add613, ptr %i__2, align 4
  %522 = load ptr, ptr %n.addr, align 8
  %523 = load i32, ptr %522, align 4
  %524 = load i32, ptr %j, align 4
  %525 = load i32, ptr %b_dim1, align 4
  %mul614 = mul nsw i32 %524, %525
  %add615 = add nsw i32 %523, %mul614
  store i32 %add615, ptr %i__3, align 4
  %526 = load ptr, ptr %n.addr, align 8
  %527 = load i32, ptr %526, align 4
  %sub616 = sub nsw i32 %527, 1
  store i32 %sub616, ptr %i__4, align 4
  %528 = load ptr, ptr %n.addr, align 8
  %529 = load i32, ptr %528, align 4
  %sub617 = sub nsw i32 %529, 1
  %530 = load i32, ptr %j, align 4
  %531 = load i32, ptr %x_dim1, align 4
  %mul618 = mul nsw i32 %530, %531
  %add619 = add nsw i32 %sub617, %mul618
  store i32 %add619, ptr %i__5, align 4
  %532 = load ptr, ptr %du.addr, align 8
  %533 = load i32, ptr %i__4, align 4
  %idxprom620 = sext i32 %533 to i64
  %arrayidx621 = getelementptr inbounds %struct.complex, ptr %532, i64 %idxprom620
  %r622 = getelementptr inbounds %struct.complex, ptr %arrayidx621, i32 0, i32 0
  %534 = load float, ptr %r622, align 4
  %535 = load ptr, ptr %x.addr, align 8
  %536 = load i32, ptr %i__5, align 4
  %idxprom623 = sext i32 %536 to i64
  %arrayidx624 = getelementptr inbounds %struct.complex, ptr %535, i64 %idxprom623
  %r625 = getelementptr inbounds %struct.complex, ptr %arrayidx624, i32 0, i32 0
  %537 = load float, ptr %r625, align 4
  %538 = load ptr, ptr %du.addr, align 8
  %539 = load i32, ptr %i__4, align 4
  %idxprom627 = sext i32 %539 to i64
  %arrayidx628 = getelementptr inbounds %struct.complex, ptr %538, i64 %idxprom627
  %i629 = getelementptr inbounds %struct.complex, ptr %arrayidx628, i32 0, i32 1
  %540 = load float, ptr %i629, align 4
  %541 = load ptr, ptr %x.addr, align 8
  %542 = load i32, ptr %i__5, align 4
  %idxprom630 = sext i32 %542 to i64
  %arrayidx631 = getelementptr inbounds %struct.complex, ptr %541, i64 %idxprom630
  %i632 = getelementptr inbounds %struct.complex, ptr %arrayidx631, i32 0, i32 1
  %543 = load float, ptr %i632, align 4
  %mul633 = fmul float %540, %543
  %neg634 = fneg float %mul633
  %544 = call float @llvm.fmuladd.f32(float %534, float %537, float %neg634)
  %r635 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 0
  store float %544, ptr %r635, align 4
  %545 = load ptr, ptr %du.addr, align 8
  %546 = load i32, ptr %i__4, align 4
  %idxprom636 = sext i32 %546 to i64
  %arrayidx637 = getelementptr inbounds %struct.complex, ptr %545, i64 %idxprom636
  %r638 = getelementptr inbounds %struct.complex, ptr %arrayidx637, i32 0, i32 0
  %547 = load float, ptr %r638, align 4
  %548 = load ptr, ptr %x.addr, align 8
  %549 = load i32, ptr %i__5, align 4
  %idxprom639 = sext i32 %549 to i64
  %arrayidx640 = getelementptr inbounds %struct.complex, ptr %548, i64 %idxprom639
  %i641 = getelementptr inbounds %struct.complex, ptr %arrayidx640, i32 0, i32 1
  %550 = load float, ptr %i641, align 4
  %551 = load ptr, ptr %du.addr, align 8
  %552 = load i32, ptr %i__4, align 4
  %idxprom643 = sext i32 %552 to i64
  %arrayidx644 = getelementptr inbounds %struct.complex, ptr %551, i64 %idxprom643
  %i645 = getelementptr inbounds %struct.complex, ptr %arrayidx644, i32 0, i32 1
  %553 = load float, ptr %i645, align 4
  %554 = load ptr, ptr %x.addr, align 8
  %555 = load i32, ptr %i__5, align 4
  %idxprom646 = sext i32 %555 to i64
  %arrayidx647 = getelementptr inbounds %struct.complex, ptr %554, i64 %idxprom646
  %r648 = getelementptr inbounds %struct.complex, ptr %arrayidx647, i32 0, i32 0
  %556 = load float, ptr %r648, align 4
  %mul649 = fmul float %553, %556
  %557 = call float @llvm.fmuladd.f32(float %547, float %550, float %mul649)
  %i650 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 1
  store float %557, ptr %i650, align 4
  %558 = load ptr, ptr %b.addr, align 8
  %559 = load i32, ptr %i__3, align 4
  %idxprom651 = sext i32 %559 to i64
  %arrayidx652 = getelementptr inbounds %struct.complex, ptr %558, i64 %idxprom651
  %r653 = getelementptr inbounds %struct.complex, ptr %arrayidx652, i32 0, i32 0
  %560 = load float, ptr %r653, align 4
  %r654 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 0
  %561 = load float, ptr %r654, align 4
  %add655 = fadd float %560, %561
  %r656 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  store float %add655, ptr %r656, align 4
  %562 = load ptr, ptr %b.addr, align 8
  %563 = load i32, ptr %i__3, align 4
  %idxprom657 = sext i32 %563 to i64
  %arrayidx658 = getelementptr inbounds %struct.complex, ptr %562, i64 %idxprom657
  %i659 = getelementptr inbounds %struct.complex, ptr %arrayidx658, i32 0, i32 1
  %564 = load float, ptr %i659, align 4
  %i660 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 1
  %565 = load float, ptr %i660, align 4
  %add661 = fadd float %564, %565
  %i662 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  store float %add661, ptr %i662, align 4
  %566 = load ptr, ptr %n.addr, align 8
  %567 = load i32, ptr %566, align 4
  store i32 %567, ptr %i__6, align 4
  %568 = load ptr, ptr %n.addr, align 8
  %569 = load i32, ptr %568, align 4
  %570 = load i32, ptr %j, align 4
  %571 = load i32, ptr %x_dim1, align 4
  %mul663 = mul nsw i32 %570, %571
  %add664 = add nsw i32 %569, %mul663
  store i32 %add664, ptr %i__7, align 4
  %572 = load ptr, ptr %d__.addr, align 8
  %573 = load i32, ptr %i__6, align 4
  %idxprom665 = sext i32 %573 to i64
  %arrayidx666 = getelementptr inbounds %struct.complex, ptr %572, i64 %idxprom665
  %r667 = getelementptr inbounds %struct.complex, ptr %arrayidx666, i32 0, i32 0
  %574 = load float, ptr %r667, align 4
  %575 = load ptr, ptr %x.addr, align 8
  %576 = load i32, ptr %i__7, align 4
  %idxprom668 = sext i32 %576 to i64
  %arrayidx669 = getelementptr inbounds %struct.complex, ptr %575, i64 %idxprom668
  %r670 = getelementptr inbounds %struct.complex, ptr %arrayidx669, i32 0, i32 0
  %577 = load float, ptr %r670, align 4
  %578 = load ptr, ptr %d__.addr, align 8
  %579 = load i32, ptr %i__6, align 4
  %idxprom672 = sext i32 %579 to i64
  %arrayidx673 = getelementptr inbounds %struct.complex, ptr %578, i64 %idxprom672
  %i674 = getelementptr inbounds %struct.complex, ptr %arrayidx673, i32 0, i32 1
  %580 = load float, ptr %i674, align 4
  %581 = load ptr, ptr %x.addr, align 8
  %582 = load i32, ptr %i__7, align 4
  %idxprom675 = sext i32 %582 to i64
  %arrayidx676 = getelementptr inbounds %struct.complex, ptr %581, i64 %idxprom675
  %i677 = getelementptr inbounds %struct.complex, ptr %arrayidx676, i32 0, i32 1
  %583 = load float, ptr %i677, align 4
  %mul678 = fmul float %580, %583
  %neg679 = fneg float %mul678
  %584 = call float @llvm.fmuladd.f32(float %574, float %577, float %neg679)
  %r680 = getelementptr inbounds %struct.complex, ptr %q__4, i32 0, i32 0
  store float %584, ptr %r680, align 4
  %585 = load ptr, ptr %d__.addr, align 8
  %586 = load i32, ptr %i__6, align 4
  %idxprom681 = sext i32 %586 to i64
  %arrayidx682 = getelementptr inbounds %struct.complex, ptr %585, i64 %idxprom681
  %r683 = getelementptr inbounds %struct.complex, ptr %arrayidx682, i32 0, i32 0
  %587 = load float, ptr %r683, align 4
  %588 = load ptr, ptr %x.addr, align 8
  %589 = load i32, ptr %i__7, align 4
  %idxprom684 = sext i32 %589 to i64
  %arrayidx685 = getelementptr inbounds %struct.complex, ptr %588, i64 %idxprom684
  %i686 = getelementptr inbounds %struct.complex, ptr %arrayidx685, i32 0, i32 1
  %590 = load float, ptr %i686, align 4
  %591 = load ptr, ptr %d__.addr, align 8
  %592 = load i32, ptr %i__6, align 4
  %idxprom688 = sext i32 %592 to i64
  %arrayidx689 = getelementptr inbounds %struct.complex, ptr %591, i64 %idxprom688
  %i690 = getelementptr inbounds %struct.complex, ptr %arrayidx689, i32 0, i32 1
  %593 = load float, ptr %i690, align 4
  %594 = load ptr, ptr %x.addr, align 8
  %595 = load i32, ptr %i__7, align 4
  %idxprom691 = sext i32 %595 to i64
  %arrayidx692 = getelementptr inbounds %struct.complex, ptr %594, i64 %idxprom691
  %r693 = getelementptr inbounds %struct.complex, ptr %arrayidx692, i32 0, i32 0
  %596 = load float, ptr %r693, align 4
  %mul694 = fmul float %593, %596
  %597 = call float @llvm.fmuladd.f32(float %587, float %590, float %mul694)
  %i695 = getelementptr inbounds %struct.complex, ptr %q__4, i32 0, i32 1
  store float %597, ptr %i695, align 4
  %r696 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  %598 = load float, ptr %r696, align 4
  %r697 = getelementptr inbounds %struct.complex, ptr %q__4, i32 0, i32 0
  %599 = load float, ptr %r697, align 4
  %add698 = fadd float %598, %599
  %r699 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float %add698, ptr %r699, align 4
  %i700 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  %600 = load float, ptr %i700, align 4
  %i701 = getelementptr inbounds %struct.complex, ptr %q__4, i32 0, i32 1
  %601 = load float, ptr %i701, align 4
  %add702 = fadd float %600, %601
  %i703 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float %add702, ptr %i703, align 4
  %r704 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %602 = load float, ptr %r704, align 4
  %603 = load ptr, ptr %b.addr, align 8
  %604 = load i32, ptr %i__2, align 4
  %idxprom705 = sext i32 %604 to i64
  %arrayidx706 = getelementptr inbounds %struct.complex, ptr %603, i64 %idxprom705
  %r707 = getelementptr inbounds %struct.complex, ptr %arrayidx706, i32 0, i32 0
  store float %602, ptr %r707, align 4
  %i708 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %605 = load float, ptr %i708, align 4
  %606 = load ptr, ptr %b.addr, align 8
  %607 = load i32, ptr %i__2, align 4
  %idxprom709 = sext i32 %607 to i64
  %arrayidx710 = getelementptr inbounds %struct.complex, ptr %606, i64 %idxprom709
  %i711 = getelementptr inbounds %struct.complex, ptr %arrayidx710, i32 0, i32 1
  store float %605, ptr %i711, align 4
  %608 = load ptr, ptr %n.addr, align 8
  %609 = load i32, ptr %608, align 4
  %sub712 = sub nsw i32 %609, 1
  store i32 %sub712, ptr %i__2, align 4
  store i32 2, ptr %i__, align 4
  br label %for.cond713

for.cond713:                                      ; preds = %for.inc858, %if.else521
  %610 = load i32, ptr %i__, align 4
  %611 = load i32, ptr %i__2, align 4
  %cmp714 = icmp sle i32 %610, %611
  br i1 %cmp714, label %for.body715, label %for.end860

for.body715:                                      ; preds = %for.cond713
  %612 = load i32, ptr %i__, align 4
  %613 = load i32, ptr %j, align 4
  %614 = load i32, ptr %b_dim1, align 4
  %mul716 = mul nsw i32 %613, %614
  %add717 = add nsw i32 %612, %mul716
  store i32 %add717, ptr %i__3, align 4
  %615 = load i32, ptr %i__, align 4
  %616 = load i32, ptr %j, align 4
  %617 = load i32, ptr %b_dim1, align 4
  %mul718 = mul nsw i32 %616, %617
  %add719 = add nsw i32 %615, %mul718
  store i32 %add719, ptr %i__4, align 4
  %618 = load i32, ptr %i__, align 4
  %sub720 = sub nsw i32 %618, 1
  store i32 %sub720, ptr %i__5, align 4
  %619 = load i32, ptr %i__, align 4
  %sub721 = sub nsw i32 %619, 1
  %620 = load i32, ptr %j, align 4
  %621 = load i32, ptr %x_dim1, align 4
  %mul722 = mul nsw i32 %620, %621
  %add723 = add nsw i32 %sub721, %mul722
  store i32 %add723, ptr %i__6, align 4
  %622 = load ptr, ptr %du.addr, align 8
  %623 = load i32, ptr %i__5, align 4
  %idxprom724 = sext i32 %623 to i64
  %arrayidx725 = getelementptr inbounds %struct.complex, ptr %622, i64 %idxprom724
  %r726 = getelementptr inbounds %struct.complex, ptr %arrayidx725, i32 0, i32 0
  %624 = load float, ptr %r726, align 4
  %625 = load ptr, ptr %x.addr, align 8
  %626 = load i32, ptr %i__6, align 4
  %idxprom727 = sext i32 %626 to i64
  %arrayidx728 = getelementptr inbounds %struct.complex, ptr %625, i64 %idxprom727
  %r729 = getelementptr inbounds %struct.complex, ptr %arrayidx728, i32 0, i32 0
  %627 = load float, ptr %r729, align 4
  %628 = load ptr, ptr %du.addr, align 8
  %629 = load i32, ptr %i__5, align 4
  %idxprom731 = sext i32 %629 to i64
  %arrayidx732 = getelementptr inbounds %struct.complex, ptr %628, i64 %idxprom731
  %i733 = getelementptr inbounds %struct.complex, ptr %arrayidx732, i32 0, i32 1
  %630 = load float, ptr %i733, align 4
  %631 = load ptr, ptr %x.addr, align 8
  %632 = load i32, ptr %i__6, align 4
  %idxprom734 = sext i32 %632 to i64
  %arrayidx735 = getelementptr inbounds %struct.complex, ptr %631, i64 %idxprom734
  %i736 = getelementptr inbounds %struct.complex, ptr %arrayidx735, i32 0, i32 1
  %633 = load float, ptr %i736, align 4
  %mul737 = fmul float %630, %633
  %neg738 = fneg float %mul737
  %634 = call float @llvm.fmuladd.f32(float %624, float %627, float %neg738)
  %r739 = getelementptr inbounds %struct.complex, ptr %q__4, i32 0, i32 0
  store float %634, ptr %r739, align 4
  %635 = load ptr, ptr %du.addr, align 8
  %636 = load i32, ptr %i__5, align 4
  %idxprom740 = sext i32 %636 to i64
  %arrayidx741 = getelementptr inbounds %struct.complex, ptr %635, i64 %idxprom740
  %r742 = getelementptr inbounds %struct.complex, ptr %arrayidx741, i32 0, i32 0
  %637 = load float, ptr %r742, align 4
  %638 = load ptr, ptr %x.addr, align 8
  %639 = load i32, ptr %i__6, align 4
  %idxprom743 = sext i32 %639 to i64
  %arrayidx744 = getelementptr inbounds %struct.complex, ptr %638, i64 %idxprom743
  %i745 = getelementptr inbounds %struct.complex, ptr %arrayidx744, i32 0, i32 1
  %640 = load float, ptr %i745, align 4
  %641 = load ptr, ptr %du.addr, align 8
  %642 = load i32, ptr %i__5, align 4
  %idxprom747 = sext i32 %642 to i64
  %arrayidx748 = getelementptr inbounds %struct.complex, ptr %641, i64 %idxprom747
  %i749 = getelementptr inbounds %struct.complex, ptr %arrayidx748, i32 0, i32 1
  %643 = load float, ptr %i749, align 4
  %644 = load ptr, ptr %x.addr, align 8
  %645 = load i32, ptr %i__6, align 4
  %idxprom750 = sext i32 %645 to i64
  %arrayidx751 = getelementptr inbounds %struct.complex, ptr %644, i64 %idxprom750
  %r752 = getelementptr inbounds %struct.complex, ptr %arrayidx751, i32 0, i32 0
  %646 = load float, ptr %r752, align 4
  %mul753 = fmul float %643, %646
  %647 = call float @llvm.fmuladd.f32(float %637, float %640, float %mul753)
  %i754 = getelementptr inbounds %struct.complex, ptr %q__4, i32 0, i32 1
  store float %647, ptr %i754, align 4
  %648 = load ptr, ptr %b.addr, align 8
  %649 = load i32, ptr %i__4, align 4
  %idxprom755 = sext i32 %649 to i64
  %arrayidx756 = getelementptr inbounds %struct.complex, ptr %648, i64 %idxprom755
  %r757 = getelementptr inbounds %struct.complex, ptr %arrayidx756, i32 0, i32 0
  %650 = load float, ptr %r757, align 4
  %r758 = getelementptr inbounds %struct.complex, ptr %q__4, i32 0, i32 0
  %651 = load float, ptr %r758, align 4
  %add759 = fadd float %650, %651
  %r760 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 0
  store float %add759, ptr %r760, align 4
  %652 = load ptr, ptr %b.addr, align 8
  %653 = load i32, ptr %i__4, align 4
  %idxprom761 = sext i32 %653 to i64
  %arrayidx762 = getelementptr inbounds %struct.complex, ptr %652, i64 %idxprom761
  %i763 = getelementptr inbounds %struct.complex, ptr %arrayidx762, i32 0, i32 1
  %654 = load float, ptr %i763, align 4
  %i764 = getelementptr inbounds %struct.complex, ptr %q__4, i32 0, i32 1
  %655 = load float, ptr %i764, align 4
  %add765 = fadd float %654, %655
  %i766 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 1
  store float %add765, ptr %i766, align 4
  %656 = load i32, ptr %i__, align 4
  store i32 %656, ptr %i__7, align 4
  %657 = load i32, ptr %i__, align 4
  %658 = load i32, ptr %j, align 4
  %659 = load i32, ptr %x_dim1, align 4
  %mul767 = mul nsw i32 %658, %659
  %add768 = add nsw i32 %657, %mul767
  store i32 %add768, ptr %i__8, align 4
  %660 = load ptr, ptr %d__.addr, align 8
  %661 = load i32, ptr %i__7, align 4
  %idxprom769 = sext i32 %661 to i64
  %arrayidx770 = getelementptr inbounds %struct.complex, ptr %660, i64 %idxprom769
  %r771 = getelementptr inbounds %struct.complex, ptr %arrayidx770, i32 0, i32 0
  %662 = load float, ptr %r771, align 4
  %663 = load ptr, ptr %x.addr, align 8
  %664 = load i32, ptr %i__8, align 4
  %idxprom772 = sext i32 %664 to i64
  %arrayidx773 = getelementptr inbounds %struct.complex, ptr %663, i64 %idxprom772
  %r774 = getelementptr inbounds %struct.complex, ptr %arrayidx773, i32 0, i32 0
  %665 = load float, ptr %r774, align 4
  %666 = load ptr, ptr %d__.addr, align 8
  %667 = load i32, ptr %i__7, align 4
  %idxprom776 = sext i32 %667 to i64
  %arrayidx777 = getelementptr inbounds %struct.complex, ptr %666, i64 %idxprom776
  %i778 = getelementptr inbounds %struct.complex, ptr %arrayidx777, i32 0, i32 1
  %668 = load float, ptr %i778, align 4
  %669 = load ptr, ptr %x.addr, align 8
  %670 = load i32, ptr %i__8, align 4
  %idxprom779 = sext i32 %670 to i64
  %arrayidx780 = getelementptr inbounds %struct.complex, ptr %669, i64 %idxprom779
  %i781 = getelementptr inbounds %struct.complex, ptr %arrayidx780, i32 0, i32 1
  %671 = load float, ptr %i781, align 4
  %mul782 = fmul float %668, %671
  %neg783 = fneg float %mul782
  %672 = call float @llvm.fmuladd.f32(float %662, float %665, float %neg783)
  %r784 = getelementptr inbounds %struct.complex, ptr %q__5, i32 0, i32 0
  store float %672, ptr %r784, align 4
  %673 = load ptr, ptr %d__.addr, align 8
  %674 = load i32, ptr %i__7, align 4
  %idxprom785 = sext i32 %674 to i64
  %arrayidx786 = getelementptr inbounds %struct.complex, ptr %673, i64 %idxprom785
  %r787 = getelementptr inbounds %struct.complex, ptr %arrayidx786, i32 0, i32 0
  %675 = load float, ptr %r787, align 4
  %676 = load ptr, ptr %x.addr, align 8
  %677 = load i32, ptr %i__8, align 4
  %idxprom788 = sext i32 %677 to i64
  %arrayidx789 = getelementptr inbounds %struct.complex, ptr %676, i64 %idxprom788
  %i790 = getelementptr inbounds %struct.complex, ptr %arrayidx789, i32 0, i32 1
  %678 = load float, ptr %i790, align 4
  %679 = load ptr, ptr %d__.addr, align 8
  %680 = load i32, ptr %i__7, align 4
  %idxprom792 = sext i32 %680 to i64
  %arrayidx793 = getelementptr inbounds %struct.complex, ptr %679, i64 %idxprom792
  %i794 = getelementptr inbounds %struct.complex, ptr %arrayidx793, i32 0, i32 1
  %681 = load float, ptr %i794, align 4
  %682 = load ptr, ptr %x.addr, align 8
  %683 = load i32, ptr %i__8, align 4
  %idxprom795 = sext i32 %683 to i64
  %arrayidx796 = getelementptr inbounds %struct.complex, ptr %682, i64 %idxprom795
  %r797 = getelementptr inbounds %struct.complex, ptr %arrayidx796, i32 0, i32 0
  %684 = load float, ptr %r797, align 4
  %mul798 = fmul float %681, %684
  %685 = call float @llvm.fmuladd.f32(float %675, float %678, float %mul798)
  %i799 = getelementptr inbounds %struct.complex, ptr %q__5, i32 0, i32 1
  store float %685, ptr %i799, align 4
  %r800 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 0
  %686 = load float, ptr %r800, align 4
  %r801 = getelementptr inbounds %struct.complex, ptr %q__5, i32 0, i32 0
  %687 = load float, ptr %r801, align 4
  %add802 = fadd float %686, %687
  %r803 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  store float %add802, ptr %r803, align 4
  %i804 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 1
  %688 = load float, ptr %i804, align 4
  %i805 = getelementptr inbounds %struct.complex, ptr %q__5, i32 0, i32 1
  %689 = load float, ptr %i805, align 4
  %add806 = fadd float %688, %689
  %i807 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  store float %add806, ptr %i807, align 4
  %690 = load i32, ptr %i__, align 4
  store i32 %690, ptr %i__9, align 4
  %691 = load i32, ptr %i__, align 4
  %add808 = add nsw i32 %691, 1
  %692 = load i32, ptr %j, align 4
  %693 = load i32, ptr %x_dim1, align 4
  %mul809 = mul nsw i32 %692, %693
  %add810 = add nsw i32 %add808, %mul809
  store i32 %add810, ptr %i__10, align 4
  %694 = load ptr, ptr %dl.addr, align 8
  %695 = load i32, ptr %i__9, align 4
  %idxprom811 = sext i32 %695 to i64
  %arrayidx812 = getelementptr inbounds %struct.complex, ptr %694, i64 %idxprom811
  %r813 = getelementptr inbounds %struct.complex, ptr %arrayidx812, i32 0, i32 0
  %696 = load float, ptr %r813, align 4
  %697 = load ptr, ptr %x.addr, align 8
  %698 = load i32, ptr %i__10, align 4
  %idxprom814 = sext i32 %698 to i64
  %arrayidx815 = getelementptr inbounds %struct.complex, ptr %697, i64 %idxprom814
  %r816 = getelementptr inbounds %struct.complex, ptr %arrayidx815, i32 0, i32 0
  %699 = load float, ptr %r816, align 4
  %700 = load ptr, ptr %dl.addr, align 8
  %701 = load i32, ptr %i__9, align 4
  %idxprom818 = sext i32 %701 to i64
  %arrayidx819 = getelementptr inbounds %struct.complex, ptr %700, i64 %idxprom818
  %i820 = getelementptr inbounds %struct.complex, ptr %arrayidx819, i32 0, i32 1
  %702 = load float, ptr %i820, align 4
  %703 = load ptr, ptr %x.addr, align 8
  %704 = load i32, ptr %i__10, align 4
  %idxprom821 = sext i32 %704 to i64
  %arrayidx822 = getelementptr inbounds %struct.complex, ptr %703, i64 %idxprom821
  %i823 = getelementptr inbounds %struct.complex, ptr %arrayidx822, i32 0, i32 1
  %705 = load float, ptr %i823, align 4
  %mul824 = fmul float %702, %705
  %neg825 = fneg float %mul824
  %706 = call float @llvm.fmuladd.f32(float %696, float %699, float %neg825)
  %r826 = getelementptr inbounds %struct.complex, ptr %q__6, i32 0, i32 0
  store float %706, ptr %r826, align 4
  %707 = load ptr, ptr %dl.addr, align 8
  %708 = load i32, ptr %i__9, align 4
  %idxprom827 = sext i32 %708 to i64
  %arrayidx828 = getelementptr inbounds %struct.complex, ptr %707, i64 %idxprom827
  %r829 = getelementptr inbounds %struct.complex, ptr %arrayidx828, i32 0, i32 0
  %709 = load float, ptr %r829, align 4
  %710 = load ptr, ptr %x.addr, align 8
  %711 = load i32, ptr %i__10, align 4
  %idxprom830 = sext i32 %711 to i64
  %arrayidx831 = getelementptr inbounds %struct.complex, ptr %710, i64 %idxprom830
  %i832 = getelementptr inbounds %struct.complex, ptr %arrayidx831, i32 0, i32 1
  %712 = load float, ptr %i832, align 4
  %713 = load ptr, ptr %dl.addr, align 8
  %714 = load i32, ptr %i__9, align 4
  %idxprom834 = sext i32 %714 to i64
  %arrayidx835 = getelementptr inbounds %struct.complex, ptr %713, i64 %idxprom834
  %i836 = getelementptr inbounds %struct.complex, ptr %arrayidx835, i32 0, i32 1
  %715 = load float, ptr %i836, align 4
  %716 = load ptr, ptr %x.addr, align 8
  %717 = load i32, ptr %i__10, align 4
  %idxprom837 = sext i32 %717 to i64
  %arrayidx838 = getelementptr inbounds %struct.complex, ptr %716, i64 %idxprom837
  %r839 = getelementptr inbounds %struct.complex, ptr %arrayidx838, i32 0, i32 0
  %718 = load float, ptr %r839, align 4
  %mul840 = fmul float %715, %718
  %719 = call float @llvm.fmuladd.f32(float %709, float %712, float %mul840)
  %i841 = getelementptr inbounds %struct.complex, ptr %q__6, i32 0, i32 1
  store float %719, ptr %i841, align 4
  %r842 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  %720 = load float, ptr %r842, align 4
  %r843 = getelementptr inbounds %struct.complex, ptr %q__6, i32 0, i32 0
  %721 = load float, ptr %r843, align 4
  %add844 = fadd float %720, %721
  %r845 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float %add844, ptr %r845, align 4
  %i846 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  %722 = load float, ptr %i846, align 4
  %i847 = getelementptr inbounds %struct.complex, ptr %q__6, i32 0, i32 1
  %723 = load float, ptr %i847, align 4
  %add848 = fadd float %722, %723
  %i849 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float %add848, ptr %i849, align 4
  %r850 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %724 = load float, ptr %r850, align 4
  %725 = load ptr, ptr %b.addr, align 8
  %726 = load i32, ptr %i__3, align 4
  %idxprom851 = sext i32 %726 to i64
  %arrayidx852 = getelementptr inbounds %struct.complex, ptr %725, i64 %idxprom851
  %r853 = getelementptr inbounds %struct.complex, ptr %arrayidx852, i32 0, i32 0
  store float %724, ptr %r853, align 4
  %i854 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %727 = load float, ptr %i854, align 4
  %728 = load ptr, ptr %b.addr, align 8
  %729 = load i32, ptr %i__3, align 4
  %idxprom855 = sext i32 %729 to i64
  %arrayidx856 = getelementptr inbounds %struct.complex, ptr %728, i64 %idxprom855
  %i857 = getelementptr inbounds %struct.complex, ptr %arrayidx856, i32 0, i32 1
  store float %727, ptr %i857, align 4
  br label %for.inc858

for.inc858:                                       ; preds = %for.body715
  %730 = load i32, ptr %i__, align 4
  %inc859 = add nsw i32 %730, 1
  store i32 %inc859, ptr %i__, align 4
  br label %for.cond713, !llvm.loop !12

for.end860:                                       ; preds = %for.cond713
  br label %if.end861

if.end861:                                        ; preds = %for.end860, %if.then467
  br label %for.inc862

for.inc862:                                       ; preds = %if.end861
  %731 = load i32, ptr %j, align 4
  %inc863 = add nsw i32 %731, 1
  store i32 %inc863, ptr %j, align 4
  br label %for.cond463, !llvm.loop !13

for.end864:                                       ; preds = %for.cond463
  br label %if.end1233

if.else865:                                       ; preds = %if.else459
  %732 = load ptr, ptr %trans.addr, align 8
  %call866 = call i32 @lsame_(ptr noundef %732, ptr noundef @.str.2)
  %tobool867 = icmp ne i32 %call866, 0
  br i1 %tobool867, label %if.then868, label %if.end1232

if.then868:                                       ; preds = %if.else865
  %733 = load ptr, ptr %nrhs.addr, align 8
  %734 = load i32, ptr %733, align 4
  store i32 %734, ptr %i__1, align 4
  store i32 1, ptr %j, align 4
  br label %for.cond869

for.cond869:                                      ; preds = %for.inc1229, %if.then868
  %735 = load i32, ptr %j, align 4
  %736 = load i32, ptr %i__1, align 4
  %cmp870 = icmp sle i32 %735, %736
  br i1 %cmp870, label %for.body871, label %for.end1231

for.body871:                                      ; preds = %for.cond869
  %737 = load ptr, ptr %n.addr, align 8
  %738 = load i32, ptr %737, align 4
  %cmp872 = icmp eq i32 %738, 1
  br i1 %cmp872, label %if.then873, label %if.else924

if.then873:                                       ; preds = %for.body871
  %739 = load i32, ptr %j, align 4
  %740 = load i32, ptr %b_dim1, align 4
  %mul874 = mul nsw i32 %739, %740
  %add875 = add nsw i32 %mul874, 1
  store i32 %add875, ptr %i__2, align 4
  %741 = load i32, ptr %j, align 4
  %742 = load i32, ptr %b_dim1, align 4
  %mul876 = mul nsw i32 %741, %742
  %add877 = add nsw i32 %mul876, 1
  store i32 %add877, ptr %i__3, align 4
  %743 = load ptr, ptr %d__.addr, align 8
  %arrayidx878 = getelementptr inbounds %struct.complex, ptr %743, i64 1
  call void @r_cnjg(ptr noundef %q__3, ptr noundef %arrayidx878)
  %744 = load i32, ptr %j, align 4
  %745 = load i32, ptr %x_dim1, align 4
  %mul879 = mul nsw i32 %744, %745
  %add880 = add nsw i32 %mul879, 1
  store i32 %add880, ptr %i__4, align 4
  %r881 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 0
  %746 = load float, ptr %r881, align 4
  %747 = load ptr, ptr %x.addr, align 8
  %748 = load i32, ptr %i__4, align 4
  %idxprom882 = sext i32 %748 to i64
  %arrayidx883 = getelementptr inbounds %struct.complex, ptr %747, i64 %idxprom882
  %r884 = getelementptr inbounds %struct.complex, ptr %arrayidx883, i32 0, i32 0
  %749 = load float, ptr %r884, align 4
  %i886 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 1
  %750 = load float, ptr %i886, align 4
  %751 = load ptr, ptr %x.addr, align 8
  %752 = load i32, ptr %i__4, align 4
  %idxprom887 = sext i32 %752 to i64
  %arrayidx888 = getelementptr inbounds %struct.complex, ptr %751, i64 %idxprom887
  %i889 = getelementptr inbounds %struct.complex, ptr %arrayidx888, i32 0, i32 1
  %753 = load float, ptr %i889, align 4
  %mul890 = fmul float %750, %753
  %neg891 = fneg float %mul890
  %754 = call float @llvm.fmuladd.f32(float %746, float %749, float %neg891)
  %r892 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  store float %754, ptr %r892, align 4
  %r893 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 0
  %755 = load float, ptr %r893, align 4
  %756 = load ptr, ptr %x.addr, align 8
  %757 = load i32, ptr %i__4, align 4
  %idxprom894 = sext i32 %757 to i64
  %arrayidx895 = getelementptr inbounds %struct.complex, ptr %756, i64 %idxprom894
  %i896 = getelementptr inbounds %struct.complex, ptr %arrayidx895, i32 0, i32 1
  %758 = load float, ptr %i896, align 4
  %i898 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 1
  %759 = load float, ptr %i898, align 4
  %760 = load ptr, ptr %x.addr, align 8
  %761 = load i32, ptr %i__4, align 4
  %idxprom899 = sext i32 %761 to i64
  %arrayidx900 = getelementptr inbounds %struct.complex, ptr %760, i64 %idxprom899
  %r901 = getelementptr inbounds %struct.complex, ptr %arrayidx900, i32 0, i32 0
  %762 = load float, ptr %r901, align 4
  %mul902 = fmul float %759, %762
  %763 = call float @llvm.fmuladd.f32(float %755, float %758, float %mul902)
  %i903 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  store float %763, ptr %i903, align 4
  %764 = load ptr, ptr %b.addr, align 8
  %765 = load i32, ptr %i__3, align 4
  %idxprom904 = sext i32 %765 to i64
  %arrayidx905 = getelementptr inbounds %struct.complex, ptr %764, i64 %idxprom904
  %r906 = getelementptr inbounds %struct.complex, ptr %arrayidx905, i32 0, i32 0
  %766 = load float, ptr %r906, align 4
  %r907 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  %767 = load float, ptr %r907, align 4
  %add908 = fadd float %766, %767
  %r909 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float %add908, ptr %r909, align 4
  %768 = load ptr, ptr %b.addr, align 8
  %769 = load i32, ptr %i__3, align 4
  %idxprom910 = sext i32 %769 to i64
  %arrayidx911 = getelementptr inbounds %struct.complex, ptr %768, i64 %idxprom910
  %i912 = getelementptr inbounds %struct.complex, ptr %arrayidx911, i32 0, i32 1
  %770 = load float, ptr %i912, align 4
  %i913 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  %771 = load float, ptr %i913, align 4
  %add914 = fadd float %770, %771
  %i915 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float %add914, ptr %i915, align 4
  %r916 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %772 = load float, ptr %r916, align 4
  %773 = load ptr, ptr %b.addr, align 8
  %774 = load i32, ptr %i__2, align 4
  %idxprom917 = sext i32 %774 to i64
  %arrayidx918 = getelementptr inbounds %struct.complex, ptr %773, i64 %idxprom917
  %r919 = getelementptr inbounds %struct.complex, ptr %arrayidx918, i32 0, i32 0
  store float %772, ptr %r919, align 4
  %i920 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %775 = load float, ptr %i920, align 4
  %776 = load ptr, ptr %b.addr, align 8
  %777 = load i32, ptr %i__2, align 4
  %idxprom921 = sext i32 %777 to i64
  %arrayidx922 = getelementptr inbounds %struct.complex, ptr %776, i64 %idxprom921
  %i923 = getelementptr inbounds %struct.complex, ptr %arrayidx922, i32 0, i32 1
  store float %775, ptr %i923, align 4
  br label %if.end1228

if.else924:                                       ; preds = %for.body871
  %778 = load i32, ptr %j, align 4
  %779 = load i32, ptr %b_dim1, align 4
  %mul925 = mul nsw i32 %778, %779
  %add926 = add nsw i32 %mul925, 1
  store i32 %add926, ptr %i__2, align 4
  %780 = load i32, ptr %j, align 4
  %781 = load i32, ptr %b_dim1, align 4
  %mul927 = mul nsw i32 %780, %781
  %add928 = add nsw i32 %mul927, 1
  store i32 %add928, ptr %i__3, align 4
  %782 = load ptr, ptr %d__.addr, align 8
  %arrayidx929 = getelementptr inbounds %struct.complex, ptr %782, i64 1
  call void @r_cnjg(ptr noundef %q__4, ptr noundef %arrayidx929)
  %783 = load i32, ptr %j, align 4
  %784 = load i32, ptr %x_dim1, align 4
  %mul930 = mul nsw i32 %783, %784
  %add931 = add nsw i32 %mul930, 1
  store i32 %add931, ptr %i__4, align 4
  %r932 = getelementptr inbounds %struct.complex, ptr %q__4, i32 0, i32 0
  %785 = load float, ptr %r932, align 4
  %786 = load ptr, ptr %x.addr, align 8
  %787 = load i32, ptr %i__4, align 4
  %idxprom933 = sext i32 %787 to i64
  %arrayidx934 = getelementptr inbounds %struct.complex, ptr %786, i64 %idxprom933
  %r935 = getelementptr inbounds %struct.complex, ptr %arrayidx934, i32 0, i32 0
  %788 = load float, ptr %r935, align 4
  %i937 = getelementptr inbounds %struct.complex, ptr %q__4, i32 0, i32 1
  %789 = load float, ptr %i937, align 4
  %790 = load ptr, ptr %x.addr, align 8
  %791 = load i32, ptr %i__4, align 4
  %idxprom938 = sext i32 %791 to i64
  %arrayidx939 = getelementptr inbounds %struct.complex, ptr %790, i64 %idxprom938
  %i940 = getelementptr inbounds %struct.complex, ptr %arrayidx939, i32 0, i32 1
  %792 = load float, ptr %i940, align 4
  %mul941 = fmul float %789, %792
  %neg942 = fneg float %mul941
  %793 = call float @llvm.fmuladd.f32(float %785, float %788, float %neg942)
  %r943 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 0
  store float %793, ptr %r943, align 4
  %r944 = getelementptr inbounds %struct.complex, ptr %q__4, i32 0, i32 0
  %794 = load float, ptr %r944, align 4
  %795 = load ptr, ptr %x.addr, align 8
  %796 = load i32, ptr %i__4, align 4
  %idxprom945 = sext i32 %796 to i64
  %arrayidx946 = getelementptr inbounds %struct.complex, ptr %795, i64 %idxprom945
  %i947 = getelementptr inbounds %struct.complex, ptr %arrayidx946, i32 0, i32 1
  %797 = load float, ptr %i947, align 4
  %i949 = getelementptr inbounds %struct.complex, ptr %q__4, i32 0, i32 1
  %798 = load float, ptr %i949, align 4
  %799 = load ptr, ptr %x.addr, align 8
  %800 = load i32, ptr %i__4, align 4
  %idxprom950 = sext i32 %800 to i64
  %arrayidx951 = getelementptr inbounds %struct.complex, ptr %799, i64 %idxprom950
  %r952 = getelementptr inbounds %struct.complex, ptr %arrayidx951, i32 0, i32 0
  %801 = load float, ptr %r952, align 4
  %mul953 = fmul float %798, %801
  %802 = call float @llvm.fmuladd.f32(float %794, float %797, float %mul953)
  %i954 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 1
  store float %802, ptr %i954, align 4
  %803 = load ptr, ptr %b.addr, align 8
  %804 = load i32, ptr %i__3, align 4
  %idxprom955 = sext i32 %804 to i64
  %arrayidx956 = getelementptr inbounds %struct.complex, ptr %803, i64 %idxprom955
  %r957 = getelementptr inbounds %struct.complex, ptr %arrayidx956, i32 0, i32 0
  %805 = load float, ptr %r957, align 4
  %r958 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 0
  %806 = load float, ptr %r958, align 4
  %add959 = fadd float %805, %806
  %r960 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  store float %add959, ptr %r960, align 4
  %807 = load ptr, ptr %b.addr, align 8
  %808 = load i32, ptr %i__3, align 4
  %idxprom961 = sext i32 %808 to i64
  %arrayidx962 = getelementptr inbounds %struct.complex, ptr %807, i64 %idxprom961
  %i963 = getelementptr inbounds %struct.complex, ptr %arrayidx962, i32 0, i32 1
  %809 = load float, ptr %i963, align 4
  %i964 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 1
  %810 = load float, ptr %i964, align 4
  %add965 = fadd float %809, %810
  %i966 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  store float %add965, ptr %i966, align 4
  %811 = load ptr, ptr %dl.addr, align 8
  %arrayidx967 = getelementptr inbounds %struct.complex, ptr %811, i64 1
  call void @r_cnjg(ptr noundef %q__6, ptr noundef %arrayidx967)
  %812 = load i32, ptr %j, align 4
  %813 = load i32, ptr %x_dim1, align 4
  %mul968 = mul nsw i32 %812, %813
  %add969 = add nsw i32 %mul968, 2
  store i32 %add969, ptr %i__5, align 4
  %r970 = getelementptr inbounds %struct.complex, ptr %q__6, i32 0, i32 0
  %814 = load float, ptr %r970, align 4
  %815 = load ptr, ptr %x.addr, align 8
  %816 = load i32, ptr %i__5, align 4
  %idxprom971 = sext i32 %816 to i64
  %arrayidx972 = getelementptr inbounds %struct.complex, ptr %815, i64 %idxprom971
  %r973 = getelementptr inbounds %struct.complex, ptr %arrayidx972, i32 0, i32 0
  %817 = load float, ptr %r973, align 4
  %i975 = getelementptr inbounds %struct.complex, ptr %q__6, i32 0, i32 1
  %818 = load float, ptr %i975, align 4
  %819 = load ptr, ptr %x.addr, align 8
  %820 = load i32, ptr %i__5, align 4
  %idxprom976 = sext i32 %820 to i64
  %arrayidx977 = getelementptr inbounds %struct.complex, ptr %819, i64 %idxprom976
  %i978 = getelementptr inbounds %struct.complex, ptr %arrayidx977, i32 0, i32 1
  %821 = load float, ptr %i978, align 4
  %mul979 = fmul float %818, %821
  %neg980 = fneg float %mul979
  %822 = call float @llvm.fmuladd.f32(float %814, float %817, float %neg980)
  %r981 = getelementptr inbounds %struct.complex, ptr %q__5, i32 0, i32 0
  store float %822, ptr %r981, align 4
  %r982 = getelementptr inbounds %struct.complex, ptr %q__6, i32 0, i32 0
  %823 = load float, ptr %r982, align 4
  %824 = load ptr, ptr %x.addr, align 8
  %825 = load i32, ptr %i__5, align 4
  %idxprom983 = sext i32 %825 to i64
  %arrayidx984 = getelementptr inbounds %struct.complex, ptr %824, i64 %idxprom983
  %i985 = getelementptr inbounds %struct.complex, ptr %arrayidx984, i32 0, i32 1
  %826 = load float, ptr %i985, align 4
  %i987 = getelementptr inbounds %struct.complex, ptr %q__6, i32 0, i32 1
  %827 = load float, ptr %i987, align 4
  %828 = load ptr, ptr %x.addr, align 8
  %829 = load i32, ptr %i__5, align 4
  %idxprom988 = sext i32 %829 to i64
  %arrayidx989 = getelementptr inbounds %struct.complex, ptr %828, i64 %idxprom988
  %r990 = getelementptr inbounds %struct.complex, ptr %arrayidx989, i32 0, i32 0
  %830 = load float, ptr %r990, align 4
  %mul991 = fmul float %827, %830
  %831 = call float @llvm.fmuladd.f32(float %823, float %826, float %mul991)
  %i992 = getelementptr inbounds %struct.complex, ptr %q__5, i32 0, i32 1
  store float %831, ptr %i992, align 4
  %r993 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  %832 = load float, ptr %r993, align 4
  %r994 = getelementptr inbounds %struct.complex, ptr %q__5, i32 0, i32 0
  %833 = load float, ptr %r994, align 4
  %add995 = fadd float %832, %833
  %r996 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float %add995, ptr %r996, align 4
  %i997 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  %834 = load float, ptr %i997, align 4
  %i998 = getelementptr inbounds %struct.complex, ptr %q__5, i32 0, i32 1
  %835 = load float, ptr %i998, align 4
  %add999 = fadd float %834, %835
  %i1000 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float %add999, ptr %i1000, align 4
  %r1001 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %836 = load float, ptr %r1001, align 4
  %837 = load ptr, ptr %b.addr, align 8
  %838 = load i32, ptr %i__2, align 4
  %idxprom1002 = sext i32 %838 to i64
  %arrayidx1003 = getelementptr inbounds %struct.complex, ptr %837, i64 %idxprom1002
  %r1004 = getelementptr inbounds %struct.complex, ptr %arrayidx1003, i32 0, i32 0
  store float %836, ptr %r1004, align 4
  %i1005 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %839 = load float, ptr %i1005, align 4
  %840 = load ptr, ptr %b.addr, align 8
  %841 = load i32, ptr %i__2, align 4
  %idxprom1006 = sext i32 %841 to i64
  %arrayidx1007 = getelementptr inbounds %struct.complex, ptr %840, i64 %idxprom1006
  %i1008 = getelementptr inbounds %struct.complex, ptr %arrayidx1007, i32 0, i32 1
  store float %839, ptr %i1008, align 4
  %842 = load ptr, ptr %n.addr, align 8
  %843 = load i32, ptr %842, align 4
  %844 = load i32, ptr %j, align 4
  %845 = load i32, ptr %b_dim1, align 4
  %mul1009 = mul nsw i32 %844, %845
  %add1010 = add nsw i32 %843, %mul1009
  store i32 %add1010, ptr %i__2, align 4
  %846 = load ptr, ptr %n.addr, align 8
  %847 = load i32, ptr %846, align 4
  %848 = load i32, ptr %j, align 4
  %849 = load i32, ptr %b_dim1, align 4
  %mul1011 = mul nsw i32 %848, %849
  %add1012 = add nsw i32 %847, %mul1011
  store i32 %add1012, ptr %i__3, align 4
  %850 = load ptr, ptr %du.addr, align 8
  %851 = load ptr, ptr %n.addr, align 8
  %852 = load i32, ptr %851, align 4
  %sub1013 = sub nsw i32 %852, 1
  %idxprom1014 = sext i32 %sub1013 to i64
  %arrayidx1015 = getelementptr inbounds %struct.complex, ptr %850, i64 %idxprom1014
  call void @r_cnjg(ptr noundef %q__4, ptr noundef %arrayidx1015)
  %853 = load ptr, ptr %n.addr, align 8
  %854 = load i32, ptr %853, align 4
  %sub1016 = sub nsw i32 %854, 1
  %855 = load i32, ptr %j, align 4
  %856 = load i32, ptr %x_dim1, align 4
  %mul1017 = mul nsw i32 %855, %856
  %add1018 = add nsw i32 %sub1016, %mul1017
  store i32 %add1018, ptr %i__4, align 4
  %r1019 = getelementptr inbounds %struct.complex, ptr %q__4, i32 0, i32 0
  %857 = load float, ptr %r1019, align 4
  %858 = load ptr, ptr %x.addr, align 8
  %859 = load i32, ptr %i__4, align 4
  %idxprom1020 = sext i32 %859 to i64
  %arrayidx1021 = getelementptr inbounds %struct.complex, ptr %858, i64 %idxprom1020
  %r1022 = getelementptr inbounds %struct.complex, ptr %arrayidx1021, i32 0, i32 0
  %860 = load float, ptr %r1022, align 4
  %i1024 = getelementptr inbounds %struct.complex, ptr %q__4, i32 0, i32 1
  %861 = load float, ptr %i1024, align 4
  %862 = load ptr, ptr %x.addr, align 8
  %863 = load i32, ptr %i__4, align 4
  %idxprom1025 = sext i32 %863 to i64
  %arrayidx1026 = getelementptr inbounds %struct.complex, ptr %862, i64 %idxprom1025
  %i1027 = getelementptr inbounds %struct.complex, ptr %arrayidx1026, i32 0, i32 1
  %864 = load float, ptr %i1027, align 4
  %mul1028 = fmul float %861, %864
  %neg1029 = fneg float %mul1028
  %865 = call float @llvm.fmuladd.f32(float %857, float %860, float %neg1029)
  %r1030 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 0
  store float %865, ptr %r1030, align 4
  %r1031 = getelementptr inbounds %struct.complex, ptr %q__4, i32 0, i32 0
  %866 = load float, ptr %r1031, align 4
  %867 = load ptr, ptr %x.addr, align 8
  %868 = load i32, ptr %i__4, align 4
  %idxprom1032 = sext i32 %868 to i64
  %arrayidx1033 = getelementptr inbounds %struct.complex, ptr %867, i64 %idxprom1032
  %i1034 = getelementptr inbounds %struct.complex, ptr %arrayidx1033, i32 0, i32 1
  %869 = load float, ptr %i1034, align 4
  %i1036 = getelementptr inbounds %struct.complex, ptr %q__4, i32 0, i32 1
  %870 = load float, ptr %i1036, align 4
  %871 = load ptr, ptr %x.addr, align 8
  %872 = load i32, ptr %i__4, align 4
  %idxprom1037 = sext i32 %872 to i64
  %arrayidx1038 = getelementptr inbounds %struct.complex, ptr %871, i64 %idxprom1037
  %r1039 = getelementptr inbounds %struct.complex, ptr %arrayidx1038, i32 0, i32 0
  %873 = load float, ptr %r1039, align 4
  %mul1040 = fmul float %870, %873
  %874 = call float @llvm.fmuladd.f32(float %866, float %869, float %mul1040)
  %i1041 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 1
  store float %874, ptr %i1041, align 4
  %875 = load ptr, ptr %b.addr, align 8
  %876 = load i32, ptr %i__3, align 4
  %idxprom1042 = sext i32 %876 to i64
  %arrayidx1043 = getelementptr inbounds %struct.complex, ptr %875, i64 %idxprom1042
  %r1044 = getelementptr inbounds %struct.complex, ptr %arrayidx1043, i32 0, i32 0
  %877 = load float, ptr %r1044, align 4
  %r1045 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 0
  %878 = load float, ptr %r1045, align 4
  %add1046 = fadd float %877, %878
  %r1047 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  store float %add1046, ptr %r1047, align 4
  %879 = load ptr, ptr %b.addr, align 8
  %880 = load i32, ptr %i__3, align 4
  %idxprom1048 = sext i32 %880 to i64
  %arrayidx1049 = getelementptr inbounds %struct.complex, ptr %879, i64 %idxprom1048
  %i1050 = getelementptr inbounds %struct.complex, ptr %arrayidx1049, i32 0, i32 1
  %881 = load float, ptr %i1050, align 4
  %i1051 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 1
  %882 = load float, ptr %i1051, align 4
  %add1052 = fadd float %881, %882
  %i1053 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  store float %add1052, ptr %i1053, align 4
  %883 = load ptr, ptr %d__.addr, align 8
  %884 = load ptr, ptr %n.addr, align 8
  %885 = load i32, ptr %884, align 4
  %idxprom1054 = sext i32 %885 to i64
  %arrayidx1055 = getelementptr inbounds %struct.complex, ptr %883, i64 %idxprom1054
  call void @r_cnjg(ptr noundef %q__6, ptr noundef %arrayidx1055)
  %886 = load ptr, ptr %n.addr, align 8
  %887 = load i32, ptr %886, align 4
  %888 = load i32, ptr %j, align 4
  %889 = load i32, ptr %x_dim1, align 4
  %mul1056 = mul nsw i32 %888, %889
  %add1057 = add nsw i32 %887, %mul1056
  store i32 %add1057, ptr %i__5, align 4
  %r1058 = getelementptr inbounds %struct.complex, ptr %q__6, i32 0, i32 0
  %890 = load float, ptr %r1058, align 4
  %891 = load ptr, ptr %x.addr, align 8
  %892 = load i32, ptr %i__5, align 4
  %idxprom1059 = sext i32 %892 to i64
  %arrayidx1060 = getelementptr inbounds %struct.complex, ptr %891, i64 %idxprom1059
  %r1061 = getelementptr inbounds %struct.complex, ptr %arrayidx1060, i32 0, i32 0
  %893 = load float, ptr %r1061, align 4
  %i1063 = getelementptr inbounds %struct.complex, ptr %q__6, i32 0, i32 1
  %894 = load float, ptr %i1063, align 4
  %895 = load ptr, ptr %x.addr, align 8
  %896 = load i32, ptr %i__5, align 4
  %idxprom1064 = sext i32 %896 to i64
  %arrayidx1065 = getelementptr inbounds %struct.complex, ptr %895, i64 %idxprom1064
  %i1066 = getelementptr inbounds %struct.complex, ptr %arrayidx1065, i32 0, i32 1
  %897 = load float, ptr %i1066, align 4
  %mul1067 = fmul float %894, %897
  %neg1068 = fneg float %mul1067
  %898 = call float @llvm.fmuladd.f32(float %890, float %893, float %neg1068)
  %r1069 = getelementptr inbounds %struct.complex, ptr %q__5, i32 0, i32 0
  store float %898, ptr %r1069, align 4
  %r1070 = getelementptr inbounds %struct.complex, ptr %q__6, i32 0, i32 0
  %899 = load float, ptr %r1070, align 4
  %900 = load ptr, ptr %x.addr, align 8
  %901 = load i32, ptr %i__5, align 4
  %idxprom1071 = sext i32 %901 to i64
  %arrayidx1072 = getelementptr inbounds %struct.complex, ptr %900, i64 %idxprom1071
  %i1073 = getelementptr inbounds %struct.complex, ptr %arrayidx1072, i32 0, i32 1
  %902 = load float, ptr %i1073, align 4
  %i1075 = getelementptr inbounds %struct.complex, ptr %q__6, i32 0, i32 1
  %903 = load float, ptr %i1075, align 4
  %904 = load ptr, ptr %x.addr, align 8
  %905 = load i32, ptr %i__5, align 4
  %idxprom1076 = sext i32 %905 to i64
  %arrayidx1077 = getelementptr inbounds %struct.complex, ptr %904, i64 %idxprom1076
  %r1078 = getelementptr inbounds %struct.complex, ptr %arrayidx1077, i32 0, i32 0
  %906 = load float, ptr %r1078, align 4
  %mul1079 = fmul float %903, %906
  %907 = call float @llvm.fmuladd.f32(float %899, float %902, float %mul1079)
  %i1080 = getelementptr inbounds %struct.complex, ptr %q__5, i32 0, i32 1
  store float %907, ptr %i1080, align 4
  %r1081 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  %908 = load float, ptr %r1081, align 4
  %r1082 = getelementptr inbounds %struct.complex, ptr %q__5, i32 0, i32 0
  %909 = load float, ptr %r1082, align 4
  %add1083 = fadd float %908, %909
  %r1084 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float %add1083, ptr %r1084, align 4
  %i1085 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  %910 = load float, ptr %i1085, align 4
  %i1086 = getelementptr inbounds %struct.complex, ptr %q__5, i32 0, i32 1
  %911 = load float, ptr %i1086, align 4
  %add1087 = fadd float %910, %911
  %i1088 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float %add1087, ptr %i1088, align 4
  %r1089 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %912 = load float, ptr %r1089, align 4
  %913 = load ptr, ptr %b.addr, align 8
  %914 = load i32, ptr %i__2, align 4
  %idxprom1090 = sext i32 %914 to i64
  %arrayidx1091 = getelementptr inbounds %struct.complex, ptr %913, i64 %idxprom1090
  %r1092 = getelementptr inbounds %struct.complex, ptr %arrayidx1091, i32 0, i32 0
  store float %912, ptr %r1092, align 4
  %i1093 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %915 = load float, ptr %i1093, align 4
  %916 = load ptr, ptr %b.addr, align 8
  %917 = load i32, ptr %i__2, align 4
  %idxprom1094 = sext i32 %917 to i64
  %arrayidx1095 = getelementptr inbounds %struct.complex, ptr %916, i64 %idxprom1094
  %i1096 = getelementptr inbounds %struct.complex, ptr %arrayidx1095, i32 0, i32 1
  store float %915, ptr %i1096, align 4
  %918 = load ptr, ptr %n.addr, align 8
  %919 = load i32, ptr %918, align 4
  %sub1097 = sub nsw i32 %919, 1
  store i32 %sub1097, ptr %i__2, align 4
  store i32 2, ptr %i__, align 4
  br label %for.cond1098

for.cond1098:                                     ; preds = %for.inc1225, %if.else924
  %920 = load i32, ptr %i__, align 4
  %921 = load i32, ptr %i__2, align 4
  %cmp1099 = icmp sle i32 %920, %921
  br i1 %cmp1099, label %for.body1100, label %for.end1227

for.body1100:                                     ; preds = %for.cond1098
  %922 = load i32, ptr %i__, align 4
  %923 = load i32, ptr %j, align 4
  %924 = load i32, ptr %b_dim1, align 4
  %mul1101 = mul nsw i32 %923, %924
  %add1102 = add nsw i32 %922, %mul1101
  store i32 %add1102, ptr %i__3, align 4
  %925 = load i32, ptr %i__, align 4
  %926 = load i32, ptr %j, align 4
  %927 = load i32, ptr %b_dim1, align 4
  %mul1103 = mul nsw i32 %926, %927
  %add1104 = add nsw i32 %925, %mul1103
  store i32 %add1104, ptr %i__4, align 4
  %928 = load ptr, ptr %du.addr, align 8
  %929 = load i32, ptr %i__, align 4
  %sub1105 = sub nsw i32 %929, 1
  %idxprom1106 = sext i32 %sub1105 to i64
  %arrayidx1107 = getelementptr inbounds %struct.complex, ptr %928, i64 %idxprom1106
  call void @r_cnjg(ptr noundef %q__5, ptr noundef %arrayidx1107)
  %930 = load i32, ptr %i__, align 4
  %sub1108 = sub nsw i32 %930, 1
  %931 = load i32, ptr %j, align 4
  %932 = load i32, ptr %x_dim1, align 4
  %mul1109 = mul nsw i32 %931, %932
  %add1110 = add nsw i32 %sub1108, %mul1109
  store i32 %add1110, ptr %i__5, align 4
  %r1111 = getelementptr inbounds %struct.complex, ptr %q__5, i32 0, i32 0
  %933 = load float, ptr %r1111, align 4
  %934 = load ptr, ptr %x.addr, align 8
  %935 = load i32, ptr %i__5, align 4
  %idxprom1112 = sext i32 %935 to i64
  %arrayidx1113 = getelementptr inbounds %struct.complex, ptr %934, i64 %idxprom1112
  %r1114 = getelementptr inbounds %struct.complex, ptr %arrayidx1113, i32 0, i32 0
  %936 = load float, ptr %r1114, align 4
  %i1116 = getelementptr inbounds %struct.complex, ptr %q__5, i32 0, i32 1
  %937 = load float, ptr %i1116, align 4
  %938 = load ptr, ptr %x.addr, align 8
  %939 = load i32, ptr %i__5, align 4
  %idxprom1117 = sext i32 %939 to i64
  %arrayidx1118 = getelementptr inbounds %struct.complex, ptr %938, i64 %idxprom1117
  %i1119 = getelementptr inbounds %struct.complex, ptr %arrayidx1118, i32 0, i32 1
  %940 = load float, ptr %i1119, align 4
  %mul1120 = fmul float %937, %940
  %neg1121 = fneg float %mul1120
  %941 = call float @llvm.fmuladd.f32(float %933, float %936, float %neg1121)
  %r1122 = getelementptr inbounds %struct.complex, ptr %q__4, i32 0, i32 0
  store float %941, ptr %r1122, align 4
  %r1123 = getelementptr inbounds %struct.complex, ptr %q__5, i32 0, i32 0
  %942 = load float, ptr %r1123, align 4
  %943 = load ptr, ptr %x.addr, align 8
  %944 = load i32, ptr %i__5, align 4
  %idxprom1124 = sext i32 %944 to i64
  %arrayidx1125 = getelementptr inbounds %struct.complex, ptr %943, i64 %idxprom1124
  %i1126 = getelementptr inbounds %struct.complex, ptr %arrayidx1125, i32 0, i32 1
  %945 = load float, ptr %i1126, align 4
  %i1128 = getelementptr inbounds %struct.complex, ptr %q__5, i32 0, i32 1
  %946 = load float, ptr %i1128, align 4
  %947 = load ptr, ptr %x.addr, align 8
  %948 = load i32, ptr %i__5, align 4
  %idxprom1129 = sext i32 %948 to i64
  %arrayidx1130 = getelementptr inbounds %struct.complex, ptr %947, i64 %idxprom1129
  %r1131 = getelementptr inbounds %struct.complex, ptr %arrayidx1130, i32 0, i32 0
  %949 = load float, ptr %r1131, align 4
  %mul1132 = fmul float %946, %949
  %950 = call float @llvm.fmuladd.f32(float %942, float %945, float %mul1132)
  %i1133 = getelementptr inbounds %struct.complex, ptr %q__4, i32 0, i32 1
  store float %950, ptr %i1133, align 4
  %951 = load ptr, ptr %b.addr, align 8
  %952 = load i32, ptr %i__4, align 4
  %idxprom1134 = sext i32 %952 to i64
  %arrayidx1135 = getelementptr inbounds %struct.complex, ptr %951, i64 %idxprom1134
  %r1136 = getelementptr inbounds %struct.complex, ptr %arrayidx1135, i32 0, i32 0
  %953 = load float, ptr %r1136, align 4
  %r1137 = getelementptr inbounds %struct.complex, ptr %q__4, i32 0, i32 0
  %954 = load float, ptr %r1137, align 4
  %add1138 = fadd float %953, %954
  %r1139 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 0
  store float %add1138, ptr %r1139, align 4
  %955 = load ptr, ptr %b.addr, align 8
  %956 = load i32, ptr %i__4, align 4
  %idxprom1140 = sext i32 %956 to i64
  %arrayidx1141 = getelementptr inbounds %struct.complex, ptr %955, i64 %idxprom1140
  %i1142 = getelementptr inbounds %struct.complex, ptr %arrayidx1141, i32 0, i32 1
  %957 = load float, ptr %i1142, align 4
  %i1143 = getelementptr inbounds %struct.complex, ptr %q__4, i32 0, i32 1
  %958 = load float, ptr %i1143, align 4
  %add1144 = fadd float %957, %958
  %i1145 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 1
  store float %add1144, ptr %i1145, align 4
  %959 = load ptr, ptr %d__.addr, align 8
  %960 = load i32, ptr %i__, align 4
  %idxprom1146 = sext i32 %960 to i64
  %arrayidx1147 = getelementptr inbounds %struct.complex, ptr %959, i64 %idxprom1146
  call void @r_cnjg(ptr noundef %q__7, ptr noundef %arrayidx1147)
  %961 = load i32, ptr %i__, align 4
  %962 = load i32, ptr %j, align 4
  %963 = load i32, ptr %x_dim1, align 4
  %mul1148 = mul nsw i32 %962, %963
  %add1149 = add nsw i32 %961, %mul1148
  store i32 %add1149, ptr %i__6, align 4
  %r1150 = getelementptr inbounds %struct.complex, ptr %q__7, i32 0, i32 0
  %964 = load float, ptr %r1150, align 4
  %965 = load ptr, ptr %x.addr, align 8
  %966 = load i32, ptr %i__6, align 4
  %idxprom1151 = sext i32 %966 to i64
  %arrayidx1152 = getelementptr inbounds %struct.complex, ptr %965, i64 %idxprom1151
  %r1153 = getelementptr inbounds %struct.complex, ptr %arrayidx1152, i32 0, i32 0
  %967 = load float, ptr %r1153, align 4
  %i1155 = getelementptr inbounds %struct.complex, ptr %q__7, i32 0, i32 1
  %968 = load float, ptr %i1155, align 4
  %969 = load ptr, ptr %x.addr, align 8
  %970 = load i32, ptr %i__6, align 4
  %idxprom1156 = sext i32 %970 to i64
  %arrayidx1157 = getelementptr inbounds %struct.complex, ptr %969, i64 %idxprom1156
  %i1158 = getelementptr inbounds %struct.complex, ptr %arrayidx1157, i32 0, i32 1
  %971 = load float, ptr %i1158, align 4
  %mul1159 = fmul float %968, %971
  %neg1160 = fneg float %mul1159
  %972 = call float @llvm.fmuladd.f32(float %964, float %967, float %neg1160)
  %r1161 = getelementptr inbounds %struct.complex, ptr %q__6, i32 0, i32 0
  store float %972, ptr %r1161, align 4
  %r1162 = getelementptr inbounds %struct.complex, ptr %q__7, i32 0, i32 0
  %973 = load float, ptr %r1162, align 4
  %974 = load ptr, ptr %x.addr, align 8
  %975 = load i32, ptr %i__6, align 4
  %idxprom1163 = sext i32 %975 to i64
  %arrayidx1164 = getelementptr inbounds %struct.complex, ptr %974, i64 %idxprom1163
  %i1165 = getelementptr inbounds %struct.complex, ptr %arrayidx1164, i32 0, i32 1
  %976 = load float, ptr %i1165, align 4
  %i1167 = getelementptr inbounds %struct.complex, ptr %q__7, i32 0, i32 1
  %977 = load float, ptr %i1167, align 4
  %978 = load ptr, ptr %x.addr, align 8
  %979 = load i32, ptr %i__6, align 4
  %idxprom1168 = sext i32 %979 to i64
  %arrayidx1169 = getelementptr inbounds %struct.complex, ptr %978, i64 %idxprom1168
  %r1170 = getelementptr inbounds %struct.complex, ptr %arrayidx1169, i32 0, i32 0
  %980 = load float, ptr %r1170, align 4
  %mul1171 = fmul float %977, %980
  %981 = call float @llvm.fmuladd.f32(float %973, float %976, float %mul1171)
  %i1172 = getelementptr inbounds %struct.complex, ptr %q__6, i32 0, i32 1
  store float %981, ptr %i1172, align 4
  %r1173 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 0
  %982 = load float, ptr %r1173, align 4
  %r1174 = getelementptr inbounds %struct.complex, ptr %q__6, i32 0, i32 0
  %983 = load float, ptr %r1174, align 4
  %add1175 = fadd float %982, %983
  %r1176 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  store float %add1175, ptr %r1176, align 4
  %i1177 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 1
  %984 = load float, ptr %i1177, align 4
  %i1178 = getelementptr inbounds %struct.complex, ptr %q__6, i32 0, i32 1
  %985 = load float, ptr %i1178, align 4
  %add1179 = fadd float %984, %985
  %i1180 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  store float %add1179, ptr %i1180, align 4
  %986 = load ptr, ptr %dl.addr, align 8
  %987 = load i32, ptr %i__, align 4
  %idxprom1181 = sext i32 %987 to i64
  %arrayidx1182 = getelementptr inbounds %struct.complex, ptr %986, i64 %idxprom1181
  call void @r_cnjg(ptr noundef %q__9, ptr noundef %arrayidx1182)
  %988 = load i32, ptr %i__, align 4
  %add1183 = add nsw i32 %988, 1
  %989 = load i32, ptr %j, align 4
  %990 = load i32, ptr %x_dim1, align 4
  %mul1184 = mul nsw i32 %989, %990
  %add1185 = add nsw i32 %add1183, %mul1184
  store i32 %add1185, ptr %i__7, align 4
  %r1186 = getelementptr inbounds %struct.complex, ptr %q__9, i32 0, i32 0
  %991 = load float, ptr %r1186, align 4
  %992 = load ptr, ptr %x.addr, align 8
  %993 = load i32, ptr %i__7, align 4
  %idxprom1187 = sext i32 %993 to i64
  %arrayidx1188 = getelementptr inbounds %struct.complex, ptr %992, i64 %idxprom1187
  %r1189 = getelementptr inbounds %struct.complex, ptr %arrayidx1188, i32 0, i32 0
  %994 = load float, ptr %r1189, align 4
  %i1191 = getelementptr inbounds %struct.complex, ptr %q__9, i32 0, i32 1
  %995 = load float, ptr %i1191, align 4
  %996 = load ptr, ptr %x.addr, align 8
  %997 = load i32, ptr %i__7, align 4
  %idxprom1192 = sext i32 %997 to i64
  %arrayidx1193 = getelementptr inbounds %struct.complex, ptr %996, i64 %idxprom1192
  %i1194 = getelementptr inbounds %struct.complex, ptr %arrayidx1193, i32 0, i32 1
  %998 = load float, ptr %i1194, align 4
  %mul1195 = fmul float %995, %998
  %neg1196 = fneg float %mul1195
  %999 = call float @llvm.fmuladd.f32(float %991, float %994, float %neg1196)
  %r1197 = getelementptr inbounds %struct.complex, ptr %q__8, i32 0, i32 0
  store float %999, ptr %r1197, align 4
  %r1198 = getelementptr inbounds %struct.complex, ptr %q__9, i32 0, i32 0
  %1000 = load float, ptr %r1198, align 4
  %1001 = load ptr, ptr %x.addr, align 8
  %1002 = load i32, ptr %i__7, align 4
  %idxprom1199 = sext i32 %1002 to i64
  %arrayidx1200 = getelementptr inbounds %struct.complex, ptr %1001, i64 %idxprom1199
  %i1201 = getelementptr inbounds %struct.complex, ptr %arrayidx1200, i32 0, i32 1
  %1003 = load float, ptr %i1201, align 4
  %i1203 = getelementptr inbounds %struct.complex, ptr %q__9, i32 0, i32 1
  %1004 = load float, ptr %i1203, align 4
  %1005 = load ptr, ptr %x.addr, align 8
  %1006 = load i32, ptr %i__7, align 4
  %idxprom1204 = sext i32 %1006 to i64
  %arrayidx1205 = getelementptr inbounds %struct.complex, ptr %1005, i64 %idxprom1204
  %r1206 = getelementptr inbounds %struct.complex, ptr %arrayidx1205, i32 0, i32 0
  %1007 = load float, ptr %r1206, align 4
  %mul1207 = fmul float %1004, %1007
  %1008 = call float @llvm.fmuladd.f32(float %1000, float %1003, float %mul1207)
  %i1208 = getelementptr inbounds %struct.complex, ptr %q__8, i32 0, i32 1
  store float %1008, ptr %i1208, align 4
  %r1209 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  %1009 = load float, ptr %r1209, align 4
  %r1210 = getelementptr inbounds %struct.complex, ptr %q__8, i32 0, i32 0
  %1010 = load float, ptr %r1210, align 4
  %add1211 = fadd float %1009, %1010
  %r1212 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float %add1211, ptr %r1212, align 4
  %i1213 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  %1011 = load float, ptr %i1213, align 4
  %i1214 = getelementptr inbounds %struct.complex, ptr %q__8, i32 0, i32 1
  %1012 = load float, ptr %i1214, align 4
  %add1215 = fadd float %1011, %1012
  %i1216 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float %add1215, ptr %i1216, align 4
  %r1217 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %1013 = load float, ptr %r1217, align 4
  %1014 = load ptr, ptr %b.addr, align 8
  %1015 = load i32, ptr %i__3, align 4
  %idxprom1218 = sext i32 %1015 to i64
  %arrayidx1219 = getelementptr inbounds %struct.complex, ptr %1014, i64 %idxprom1218
  %r1220 = getelementptr inbounds %struct.complex, ptr %arrayidx1219, i32 0, i32 0
  store float %1013, ptr %r1220, align 4
  %i1221 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %1016 = load float, ptr %i1221, align 4
  %1017 = load ptr, ptr %b.addr, align 8
  %1018 = load i32, ptr %i__3, align 4
  %idxprom1222 = sext i32 %1018 to i64
  %arrayidx1223 = getelementptr inbounds %struct.complex, ptr %1017, i64 %idxprom1222
  %i1224 = getelementptr inbounds %struct.complex, ptr %arrayidx1223, i32 0, i32 1
  store float %1016, ptr %i1224, align 4
  br label %for.inc1225

for.inc1225:                                      ; preds = %for.body1100
  %1019 = load i32, ptr %i__, align 4
  %inc1226 = add nsw i32 %1019, 1
  store i32 %inc1226, ptr %i__, align 4
  br label %for.cond1098, !llvm.loop !14

for.end1227:                                      ; preds = %for.cond1098
  br label %if.end1228

if.end1228:                                       ; preds = %for.end1227, %if.then873
  br label %for.inc1229

for.inc1229:                                      ; preds = %if.end1228
  %1020 = load i32, ptr %j, align 4
  %inc1230 = add nsw i32 %1020, 1
  store i32 %inc1230, ptr %j, align 4
  br label %for.cond869, !llvm.loop !15

for.end1231:                                      ; preds = %for.cond869
  br label %if.end1232

if.end1232:                                       ; preds = %for.end1231, %if.else865
  br label %if.end1233

if.end1233:                                       ; preds = %if.end1232, %for.end864
  br label %if.end1234

if.end1234:                                       ; preds = %if.end1233, %for.end458
  br label %if.end2420

if.else1235:                                      ; preds = %if.end55
  %1021 = load ptr, ptr %alpha.addr, align 8
  %1022 = load float, ptr %1021, align 4
  %cmp1236 = fcmp oeq float %1022, -1.000000e+00
  br i1 %cmp1236, label %if.then1237, label %if.end2419

if.then1237:                                      ; preds = %if.else1235
  %1023 = load ptr, ptr %trans.addr, align 8
  %call1238 = call i32 @lsame_(ptr noundef %1023, ptr noundef @.str)
  %tobool1239 = icmp ne i32 %call1238, 0
  br i1 %tobool1239, label %if.then1240, label %if.else1643

if.then1240:                                      ; preds = %if.then1237
  %1024 = load ptr, ptr %nrhs.addr, align 8
  %1025 = load i32, ptr %1024, align 4
  store i32 %1025, ptr %i__1, align 4
  store i32 1, ptr %j, align 4
  br label %for.cond1241

for.cond1241:                                     ; preds = %for.inc1640, %if.then1240
  %1026 = load i32, ptr %j, align 4
  %1027 = load i32, ptr %i__1, align 4
  %cmp1242 = icmp sle i32 %1026, %1027
  br i1 %cmp1242, label %for.body1243, label %for.end1642

for.body1243:                                     ; preds = %for.cond1241
  %1028 = load ptr, ptr %n.addr, align 8
  %1029 = load i32, ptr %1028, align 4
  %cmp1244 = icmp eq i32 %1029, 1
  br i1 %cmp1244, label %if.then1245, label %if.else1299

if.then1245:                                      ; preds = %for.body1243
  %1030 = load i32, ptr %j, align 4
  %1031 = load i32, ptr %b_dim1, align 4
  %mul1246 = mul nsw i32 %1030, %1031
  %add1247 = add nsw i32 %mul1246, 1
  store i32 %add1247, ptr %i__2, align 4
  %1032 = load i32, ptr %j, align 4
  %1033 = load i32, ptr %b_dim1, align 4
  %mul1248 = mul nsw i32 %1032, %1033
  %add1249 = add nsw i32 %mul1248, 1
  store i32 %add1249, ptr %i__3, align 4
  %1034 = load i32, ptr %j, align 4
  %1035 = load i32, ptr %x_dim1, align 4
  %mul1250 = mul nsw i32 %1034, %1035
  %add1251 = add nsw i32 %mul1250, 1
  store i32 %add1251, ptr %i__4, align 4
  %1036 = load ptr, ptr %d__.addr, align 8
  %arrayidx1252 = getelementptr inbounds %struct.complex, ptr %1036, i64 1
  %r1253 = getelementptr inbounds %struct.complex, ptr %arrayidx1252, i32 0, i32 0
  %1037 = load float, ptr %r1253, align 4
  %1038 = load ptr, ptr %x.addr, align 8
  %1039 = load i32, ptr %i__4, align 4
  %idxprom1254 = sext i32 %1039 to i64
  %arrayidx1255 = getelementptr inbounds %struct.complex, ptr %1038, i64 %idxprom1254
  %r1256 = getelementptr inbounds %struct.complex, ptr %arrayidx1255, i32 0, i32 0
  %1040 = load float, ptr %r1256, align 4
  %1041 = load ptr, ptr %d__.addr, align 8
  %arrayidx1258 = getelementptr inbounds %struct.complex, ptr %1041, i64 1
  %i1259 = getelementptr inbounds %struct.complex, ptr %arrayidx1258, i32 0, i32 1
  %1042 = load float, ptr %i1259, align 4
  %1043 = load ptr, ptr %x.addr, align 8
  %1044 = load i32, ptr %i__4, align 4
  %idxprom1260 = sext i32 %1044 to i64
  %arrayidx1261 = getelementptr inbounds %struct.complex, ptr %1043, i64 %idxprom1260
  %i1262 = getelementptr inbounds %struct.complex, ptr %arrayidx1261, i32 0, i32 1
  %1045 = load float, ptr %i1262, align 4
  %mul1263 = fmul float %1042, %1045
  %neg1264 = fneg float %mul1263
  %1046 = call float @llvm.fmuladd.f32(float %1037, float %1040, float %neg1264)
  %r1265 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  store float %1046, ptr %r1265, align 4
  %1047 = load ptr, ptr %d__.addr, align 8
  %arrayidx1266 = getelementptr inbounds %struct.complex, ptr %1047, i64 1
  %r1267 = getelementptr inbounds %struct.complex, ptr %arrayidx1266, i32 0, i32 0
  %1048 = load float, ptr %r1267, align 4
  %1049 = load ptr, ptr %x.addr, align 8
  %1050 = load i32, ptr %i__4, align 4
  %idxprom1268 = sext i32 %1050 to i64
  %arrayidx1269 = getelementptr inbounds %struct.complex, ptr %1049, i64 %idxprom1268
  %i1270 = getelementptr inbounds %struct.complex, ptr %arrayidx1269, i32 0, i32 1
  %1051 = load float, ptr %i1270, align 4
  %1052 = load ptr, ptr %d__.addr, align 8
  %arrayidx1272 = getelementptr inbounds %struct.complex, ptr %1052, i64 1
  %i1273 = getelementptr inbounds %struct.complex, ptr %arrayidx1272, i32 0, i32 1
  %1053 = load float, ptr %i1273, align 4
  %1054 = load ptr, ptr %x.addr, align 8
  %1055 = load i32, ptr %i__4, align 4
  %idxprom1274 = sext i32 %1055 to i64
  %arrayidx1275 = getelementptr inbounds %struct.complex, ptr %1054, i64 %idxprom1274
  %r1276 = getelementptr inbounds %struct.complex, ptr %arrayidx1275, i32 0, i32 0
  %1056 = load float, ptr %r1276, align 4
  %mul1277 = fmul float %1053, %1056
  %1057 = call float @llvm.fmuladd.f32(float %1048, float %1051, float %mul1277)
  %i1278 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  store float %1057, ptr %i1278, align 4
  %1058 = load ptr, ptr %b.addr, align 8
  %1059 = load i32, ptr %i__3, align 4
  %idxprom1279 = sext i32 %1059 to i64
  %arrayidx1280 = getelementptr inbounds %struct.complex, ptr %1058, i64 %idxprom1279
  %r1281 = getelementptr inbounds %struct.complex, ptr %arrayidx1280, i32 0, i32 0
  %1060 = load float, ptr %r1281, align 4
  %r1282 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  %1061 = load float, ptr %r1282, align 4
  %sub1283 = fsub float %1060, %1061
  %r1284 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float %sub1283, ptr %r1284, align 4
  %1062 = load ptr, ptr %b.addr, align 8
  %1063 = load i32, ptr %i__3, align 4
  %idxprom1285 = sext i32 %1063 to i64
  %arrayidx1286 = getelementptr inbounds %struct.complex, ptr %1062, i64 %idxprom1285
  %i1287 = getelementptr inbounds %struct.complex, ptr %arrayidx1286, i32 0, i32 1
  %1064 = load float, ptr %i1287, align 4
  %i1288 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  %1065 = load float, ptr %i1288, align 4
  %sub1289 = fsub float %1064, %1065
  %i1290 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float %sub1289, ptr %i1290, align 4
  %r1291 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %1066 = load float, ptr %r1291, align 4
  %1067 = load ptr, ptr %b.addr, align 8
  %1068 = load i32, ptr %i__2, align 4
  %idxprom1292 = sext i32 %1068 to i64
  %arrayidx1293 = getelementptr inbounds %struct.complex, ptr %1067, i64 %idxprom1292
  %r1294 = getelementptr inbounds %struct.complex, ptr %arrayidx1293, i32 0, i32 0
  store float %1066, ptr %r1294, align 4
  %i1295 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %1069 = load float, ptr %i1295, align 4
  %1070 = load ptr, ptr %b.addr, align 8
  %1071 = load i32, ptr %i__2, align 4
  %idxprom1296 = sext i32 %1071 to i64
  %arrayidx1297 = getelementptr inbounds %struct.complex, ptr %1070, i64 %idxprom1296
  %i1298 = getelementptr inbounds %struct.complex, ptr %arrayidx1297, i32 0, i32 1
  store float %1069, ptr %i1298, align 4
  br label %if.end1639

if.else1299:                                      ; preds = %for.body1243
  %1072 = load i32, ptr %j, align 4
  %1073 = load i32, ptr %b_dim1, align 4
  %mul1300 = mul nsw i32 %1072, %1073
  %add1301 = add nsw i32 %mul1300, 1
  store i32 %add1301, ptr %i__2, align 4
  %1074 = load i32, ptr %j, align 4
  %1075 = load i32, ptr %b_dim1, align 4
  %mul1302 = mul nsw i32 %1074, %1075
  %add1303 = add nsw i32 %mul1302, 1
  store i32 %add1303, ptr %i__3, align 4
  %1076 = load i32, ptr %j, align 4
  %1077 = load i32, ptr %x_dim1, align 4
  %mul1304 = mul nsw i32 %1076, %1077
  %add1305 = add nsw i32 %mul1304, 1
  store i32 %add1305, ptr %i__4, align 4
  %1078 = load ptr, ptr %d__.addr, align 8
  %arrayidx1306 = getelementptr inbounds %struct.complex, ptr %1078, i64 1
  %r1307 = getelementptr inbounds %struct.complex, ptr %arrayidx1306, i32 0, i32 0
  %1079 = load float, ptr %r1307, align 4
  %1080 = load ptr, ptr %x.addr, align 8
  %1081 = load i32, ptr %i__4, align 4
  %idxprom1308 = sext i32 %1081 to i64
  %arrayidx1309 = getelementptr inbounds %struct.complex, ptr %1080, i64 %idxprom1308
  %r1310 = getelementptr inbounds %struct.complex, ptr %arrayidx1309, i32 0, i32 0
  %1082 = load float, ptr %r1310, align 4
  %1083 = load ptr, ptr %d__.addr, align 8
  %arrayidx1312 = getelementptr inbounds %struct.complex, ptr %1083, i64 1
  %i1313 = getelementptr inbounds %struct.complex, ptr %arrayidx1312, i32 0, i32 1
  %1084 = load float, ptr %i1313, align 4
  %1085 = load ptr, ptr %x.addr, align 8
  %1086 = load i32, ptr %i__4, align 4
  %idxprom1314 = sext i32 %1086 to i64
  %arrayidx1315 = getelementptr inbounds %struct.complex, ptr %1085, i64 %idxprom1314
  %i1316 = getelementptr inbounds %struct.complex, ptr %arrayidx1315, i32 0, i32 1
  %1087 = load float, ptr %i1316, align 4
  %mul1317 = fmul float %1084, %1087
  %neg1318 = fneg float %mul1317
  %1088 = call float @llvm.fmuladd.f32(float %1079, float %1082, float %neg1318)
  %r1319 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 0
  store float %1088, ptr %r1319, align 4
  %1089 = load ptr, ptr %d__.addr, align 8
  %arrayidx1320 = getelementptr inbounds %struct.complex, ptr %1089, i64 1
  %r1321 = getelementptr inbounds %struct.complex, ptr %arrayidx1320, i32 0, i32 0
  %1090 = load float, ptr %r1321, align 4
  %1091 = load ptr, ptr %x.addr, align 8
  %1092 = load i32, ptr %i__4, align 4
  %idxprom1322 = sext i32 %1092 to i64
  %arrayidx1323 = getelementptr inbounds %struct.complex, ptr %1091, i64 %idxprom1322
  %i1324 = getelementptr inbounds %struct.complex, ptr %arrayidx1323, i32 0, i32 1
  %1093 = load float, ptr %i1324, align 4
  %1094 = load ptr, ptr %d__.addr, align 8
  %arrayidx1326 = getelementptr inbounds %struct.complex, ptr %1094, i64 1
  %i1327 = getelementptr inbounds %struct.complex, ptr %arrayidx1326, i32 0, i32 1
  %1095 = load float, ptr %i1327, align 4
  %1096 = load ptr, ptr %x.addr, align 8
  %1097 = load i32, ptr %i__4, align 4
  %idxprom1328 = sext i32 %1097 to i64
  %arrayidx1329 = getelementptr inbounds %struct.complex, ptr %1096, i64 %idxprom1328
  %r1330 = getelementptr inbounds %struct.complex, ptr %arrayidx1329, i32 0, i32 0
  %1098 = load float, ptr %r1330, align 4
  %mul1331 = fmul float %1095, %1098
  %1099 = call float @llvm.fmuladd.f32(float %1090, float %1093, float %mul1331)
  %i1332 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 1
  store float %1099, ptr %i1332, align 4
  %1100 = load ptr, ptr %b.addr, align 8
  %1101 = load i32, ptr %i__3, align 4
  %idxprom1333 = sext i32 %1101 to i64
  %arrayidx1334 = getelementptr inbounds %struct.complex, ptr %1100, i64 %idxprom1333
  %r1335 = getelementptr inbounds %struct.complex, ptr %arrayidx1334, i32 0, i32 0
  %1102 = load float, ptr %r1335, align 4
  %r1336 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 0
  %1103 = load float, ptr %r1336, align 4
  %sub1337 = fsub float %1102, %1103
  %r1338 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  store float %sub1337, ptr %r1338, align 4
  %1104 = load ptr, ptr %b.addr, align 8
  %1105 = load i32, ptr %i__3, align 4
  %idxprom1339 = sext i32 %1105 to i64
  %arrayidx1340 = getelementptr inbounds %struct.complex, ptr %1104, i64 %idxprom1339
  %i1341 = getelementptr inbounds %struct.complex, ptr %arrayidx1340, i32 0, i32 1
  %1106 = load float, ptr %i1341, align 4
  %i1342 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 1
  %1107 = load float, ptr %i1342, align 4
  %sub1343 = fsub float %1106, %1107
  %i1344 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  store float %sub1343, ptr %i1344, align 4
  %1108 = load i32, ptr %j, align 4
  %1109 = load i32, ptr %x_dim1, align 4
  %mul1345 = mul nsw i32 %1108, %1109
  %add1346 = add nsw i32 %mul1345, 2
  store i32 %add1346, ptr %i__5, align 4
  %1110 = load ptr, ptr %du.addr, align 8
  %arrayidx1347 = getelementptr inbounds %struct.complex, ptr %1110, i64 1
  %r1348 = getelementptr inbounds %struct.complex, ptr %arrayidx1347, i32 0, i32 0
  %1111 = load float, ptr %r1348, align 4
  %1112 = load ptr, ptr %x.addr, align 8
  %1113 = load i32, ptr %i__5, align 4
  %idxprom1349 = sext i32 %1113 to i64
  %arrayidx1350 = getelementptr inbounds %struct.complex, ptr %1112, i64 %idxprom1349
  %r1351 = getelementptr inbounds %struct.complex, ptr %arrayidx1350, i32 0, i32 0
  %1114 = load float, ptr %r1351, align 4
  %1115 = load ptr, ptr %du.addr, align 8
  %arrayidx1353 = getelementptr inbounds %struct.complex, ptr %1115, i64 1
  %i1354 = getelementptr inbounds %struct.complex, ptr %arrayidx1353, i32 0, i32 1
  %1116 = load float, ptr %i1354, align 4
  %1117 = load ptr, ptr %x.addr, align 8
  %1118 = load i32, ptr %i__5, align 4
  %idxprom1355 = sext i32 %1118 to i64
  %arrayidx1356 = getelementptr inbounds %struct.complex, ptr %1117, i64 %idxprom1355
  %i1357 = getelementptr inbounds %struct.complex, ptr %arrayidx1356, i32 0, i32 1
  %1119 = load float, ptr %i1357, align 4
  %mul1358 = fmul float %1116, %1119
  %neg1359 = fneg float %mul1358
  %1120 = call float @llvm.fmuladd.f32(float %1111, float %1114, float %neg1359)
  %r1360 = getelementptr inbounds %struct.complex, ptr %q__4, i32 0, i32 0
  store float %1120, ptr %r1360, align 4
  %1121 = load ptr, ptr %du.addr, align 8
  %arrayidx1361 = getelementptr inbounds %struct.complex, ptr %1121, i64 1
  %r1362 = getelementptr inbounds %struct.complex, ptr %arrayidx1361, i32 0, i32 0
  %1122 = load float, ptr %r1362, align 4
  %1123 = load ptr, ptr %x.addr, align 8
  %1124 = load i32, ptr %i__5, align 4
  %idxprom1363 = sext i32 %1124 to i64
  %arrayidx1364 = getelementptr inbounds %struct.complex, ptr %1123, i64 %idxprom1363
  %i1365 = getelementptr inbounds %struct.complex, ptr %arrayidx1364, i32 0, i32 1
  %1125 = load float, ptr %i1365, align 4
  %1126 = load ptr, ptr %du.addr, align 8
  %arrayidx1367 = getelementptr inbounds %struct.complex, ptr %1126, i64 1
  %i1368 = getelementptr inbounds %struct.complex, ptr %arrayidx1367, i32 0, i32 1
  %1127 = load float, ptr %i1368, align 4
  %1128 = load ptr, ptr %x.addr, align 8
  %1129 = load i32, ptr %i__5, align 4
  %idxprom1369 = sext i32 %1129 to i64
  %arrayidx1370 = getelementptr inbounds %struct.complex, ptr %1128, i64 %idxprom1369
  %r1371 = getelementptr inbounds %struct.complex, ptr %arrayidx1370, i32 0, i32 0
  %1130 = load float, ptr %r1371, align 4
  %mul1372 = fmul float %1127, %1130
  %1131 = call float @llvm.fmuladd.f32(float %1122, float %1125, float %mul1372)
  %i1373 = getelementptr inbounds %struct.complex, ptr %q__4, i32 0, i32 1
  store float %1131, ptr %i1373, align 4
  %r1374 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  %1132 = load float, ptr %r1374, align 4
  %r1375 = getelementptr inbounds %struct.complex, ptr %q__4, i32 0, i32 0
  %1133 = load float, ptr %r1375, align 4
  %sub1376 = fsub float %1132, %1133
  %r1377 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float %sub1376, ptr %r1377, align 4
  %i1378 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  %1134 = load float, ptr %i1378, align 4
  %i1379 = getelementptr inbounds %struct.complex, ptr %q__4, i32 0, i32 1
  %1135 = load float, ptr %i1379, align 4
  %sub1380 = fsub float %1134, %1135
  %i1381 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float %sub1380, ptr %i1381, align 4
  %r1382 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %1136 = load float, ptr %r1382, align 4
  %1137 = load ptr, ptr %b.addr, align 8
  %1138 = load i32, ptr %i__2, align 4
  %idxprom1383 = sext i32 %1138 to i64
  %arrayidx1384 = getelementptr inbounds %struct.complex, ptr %1137, i64 %idxprom1383
  %r1385 = getelementptr inbounds %struct.complex, ptr %arrayidx1384, i32 0, i32 0
  store float %1136, ptr %r1385, align 4
  %i1386 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %1139 = load float, ptr %i1386, align 4
  %1140 = load ptr, ptr %b.addr, align 8
  %1141 = load i32, ptr %i__2, align 4
  %idxprom1387 = sext i32 %1141 to i64
  %arrayidx1388 = getelementptr inbounds %struct.complex, ptr %1140, i64 %idxprom1387
  %i1389 = getelementptr inbounds %struct.complex, ptr %arrayidx1388, i32 0, i32 1
  store float %1139, ptr %i1389, align 4
  %1142 = load ptr, ptr %n.addr, align 8
  %1143 = load i32, ptr %1142, align 4
  %1144 = load i32, ptr %j, align 4
  %1145 = load i32, ptr %b_dim1, align 4
  %mul1390 = mul nsw i32 %1144, %1145
  %add1391 = add nsw i32 %1143, %mul1390
  store i32 %add1391, ptr %i__2, align 4
  %1146 = load ptr, ptr %n.addr, align 8
  %1147 = load i32, ptr %1146, align 4
  %1148 = load i32, ptr %j, align 4
  %1149 = load i32, ptr %b_dim1, align 4
  %mul1392 = mul nsw i32 %1148, %1149
  %add1393 = add nsw i32 %1147, %mul1392
  store i32 %add1393, ptr %i__3, align 4
  %1150 = load ptr, ptr %n.addr, align 8
  %1151 = load i32, ptr %1150, align 4
  %sub1394 = sub nsw i32 %1151, 1
  store i32 %sub1394, ptr %i__4, align 4
  %1152 = load ptr, ptr %n.addr, align 8
  %1153 = load i32, ptr %1152, align 4
  %sub1395 = sub nsw i32 %1153, 1
  %1154 = load i32, ptr %j, align 4
  %1155 = load i32, ptr %x_dim1, align 4
  %mul1396 = mul nsw i32 %1154, %1155
  %add1397 = add nsw i32 %sub1395, %mul1396
  store i32 %add1397, ptr %i__5, align 4
  %1156 = load ptr, ptr %dl.addr, align 8
  %1157 = load i32, ptr %i__4, align 4
  %idxprom1398 = sext i32 %1157 to i64
  %arrayidx1399 = getelementptr inbounds %struct.complex, ptr %1156, i64 %idxprom1398
  %r1400 = getelementptr inbounds %struct.complex, ptr %arrayidx1399, i32 0, i32 0
  %1158 = load float, ptr %r1400, align 4
  %1159 = load ptr, ptr %x.addr, align 8
  %1160 = load i32, ptr %i__5, align 4
  %idxprom1401 = sext i32 %1160 to i64
  %arrayidx1402 = getelementptr inbounds %struct.complex, ptr %1159, i64 %idxprom1401
  %r1403 = getelementptr inbounds %struct.complex, ptr %arrayidx1402, i32 0, i32 0
  %1161 = load float, ptr %r1403, align 4
  %1162 = load ptr, ptr %dl.addr, align 8
  %1163 = load i32, ptr %i__4, align 4
  %idxprom1405 = sext i32 %1163 to i64
  %arrayidx1406 = getelementptr inbounds %struct.complex, ptr %1162, i64 %idxprom1405
  %i1407 = getelementptr inbounds %struct.complex, ptr %arrayidx1406, i32 0, i32 1
  %1164 = load float, ptr %i1407, align 4
  %1165 = load ptr, ptr %x.addr, align 8
  %1166 = load i32, ptr %i__5, align 4
  %idxprom1408 = sext i32 %1166 to i64
  %arrayidx1409 = getelementptr inbounds %struct.complex, ptr %1165, i64 %idxprom1408
  %i1410 = getelementptr inbounds %struct.complex, ptr %arrayidx1409, i32 0, i32 1
  %1167 = load float, ptr %i1410, align 4
  %mul1411 = fmul float %1164, %1167
  %neg1412 = fneg float %mul1411
  %1168 = call float @llvm.fmuladd.f32(float %1158, float %1161, float %neg1412)
  %r1413 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 0
  store float %1168, ptr %r1413, align 4
  %1169 = load ptr, ptr %dl.addr, align 8
  %1170 = load i32, ptr %i__4, align 4
  %idxprom1414 = sext i32 %1170 to i64
  %arrayidx1415 = getelementptr inbounds %struct.complex, ptr %1169, i64 %idxprom1414
  %r1416 = getelementptr inbounds %struct.complex, ptr %arrayidx1415, i32 0, i32 0
  %1171 = load float, ptr %r1416, align 4
  %1172 = load ptr, ptr %x.addr, align 8
  %1173 = load i32, ptr %i__5, align 4
  %idxprom1417 = sext i32 %1173 to i64
  %arrayidx1418 = getelementptr inbounds %struct.complex, ptr %1172, i64 %idxprom1417
  %i1419 = getelementptr inbounds %struct.complex, ptr %arrayidx1418, i32 0, i32 1
  %1174 = load float, ptr %i1419, align 4
  %1175 = load ptr, ptr %dl.addr, align 8
  %1176 = load i32, ptr %i__4, align 4
  %idxprom1421 = sext i32 %1176 to i64
  %arrayidx1422 = getelementptr inbounds %struct.complex, ptr %1175, i64 %idxprom1421
  %i1423 = getelementptr inbounds %struct.complex, ptr %arrayidx1422, i32 0, i32 1
  %1177 = load float, ptr %i1423, align 4
  %1178 = load ptr, ptr %x.addr, align 8
  %1179 = load i32, ptr %i__5, align 4
  %idxprom1424 = sext i32 %1179 to i64
  %arrayidx1425 = getelementptr inbounds %struct.complex, ptr %1178, i64 %idxprom1424
  %r1426 = getelementptr inbounds %struct.complex, ptr %arrayidx1425, i32 0, i32 0
  %1180 = load float, ptr %r1426, align 4
  %mul1427 = fmul float %1177, %1180
  %1181 = call float @llvm.fmuladd.f32(float %1171, float %1174, float %mul1427)
  %i1428 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 1
  store float %1181, ptr %i1428, align 4
  %1182 = load ptr, ptr %b.addr, align 8
  %1183 = load i32, ptr %i__3, align 4
  %idxprom1429 = sext i32 %1183 to i64
  %arrayidx1430 = getelementptr inbounds %struct.complex, ptr %1182, i64 %idxprom1429
  %r1431 = getelementptr inbounds %struct.complex, ptr %arrayidx1430, i32 0, i32 0
  %1184 = load float, ptr %r1431, align 4
  %r1432 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 0
  %1185 = load float, ptr %r1432, align 4
  %sub1433 = fsub float %1184, %1185
  %r1434 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  store float %sub1433, ptr %r1434, align 4
  %1186 = load ptr, ptr %b.addr, align 8
  %1187 = load i32, ptr %i__3, align 4
  %idxprom1435 = sext i32 %1187 to i64
  %arrayidx1436 = getelementptr inbounds %struct.complex, ptr %1186, i64 %idxprom1435
  %i1437 = getelementptr inbounds %struct.complex, ptr %arrayidx1436, i32 0, i32 1
  %1188 = load float, ptr %i1437, align 4
  %i1438 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 1
  %1189 = load float, ptr %i1438, align 4
  %sub1439 = fsub float %1188, %1189
  %i1440 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  store float %sub1439, ptr %i1440, align 4
  %1190 = load ptr, ptr %n.addr, align 8
  %1191 = load i32, ptr %1190, align 4
  store i32 %1191, ptr %i__6, align 4
  %1192 = load ptr, ptr %n.addr, align 8
  %1193 = load i32, ptr %1192, align 4
  %1194 = load i32, ptr %j, align 4
  %1195 = load i32, ptr %x_dim1, align 4
  %mul1441 = mul nsw i32 %1194, %1195
  %add1442 = add nsw i32 %1193, %mul1441
  store i32 %add1442, ptr %i__7, align 4
  %1196 = load ptr, ptr %d__.addr, align 8
  %1197 = load i32, ptr %i__6, align 4
  %idxprom1443 = sext i32 %1197 to i64
  %arrayidx1444 = getelementptr inbounds %struct.complex, ptr %1196, i64 %idxprom1443
  %r1445 = getelementptr inbounds %struct.complex, ptr %arrayidx1444, i32 0, i32 0
  %1198 = load float, ptr %r1445, align 4
  %1199 = load ptr, ptr %x.addr, align 8
  %1200 = load i32, ptr %i__7, align 4
  %idxprom1446 = sext i32 %1200 to i64
  %arrayidx1447 = getelementptr inbounds %struct.complex, ptr %1199, i64 %idxprom1446
  %r1448 = getelementptr inbounds %struct.complex, ptr %arrayidx1447, i32 0, i32 0
  %1201 = load float, ptr %r1448, align 4
  %1202 = load ptr, ptr %d__.addr, align 8
  %1203 = load i32, ptr %i__6, align 4
  %idxprom1450 = sext i32 %1203 to i64
  %arrayidx1451 = getelementptr inbounds %struct.complex, ptr %1202, i64 %idxprom1450
  %i1452 = getelementptr inbounds %struct.complex, ptr %arrayidx1451, i32 0, i32 1
  %1204 = load float, ptr %i1452, align 4
  %1205 = load ptr, ptr %x.addr, align 8
  %1206 = load i32, ptr %i__7, align 4
  %idxprom1453 = sext i32 %1206 to i64
  %arrayidx1454 = getelementptr inbounds %struct.complex, ptr %1205, i64 %idxprom1453
  %i1455 = getelementptr inbounds %struct.complex, ptr %arrayidx1454, i32 0, i32 1
  %1207 = load float, ptr %i1455, align 4
  %mul1456 = fmul float %1204, %1207
  %neg1457 = fneg float %mul1456
  %1208 = call float @llvm.fmuladd.f32(float %1198, float %1201, float %neg1457)
  %r1458 = getelementptr inbounds %struct.complex, ptr %q__4, i32 0, i32 0
  store float %1208, ptr %r1458, align 4
  %1209 = load ptr, ptr %d__.addr, align 8
  %1210 = load i32, ptr %i__6, align 4
  %idxprom1459 = sext i32 %1210 to i64
  %arrayidx1460 = getelementptr inbounds %struct.complex, ptr %1209, i64 %idxprom1459
  %r1461 = getelementptr inbounds %struct.complex, ptr %arrayidx1460, i32 0, i32 0
  %1211 = load float, ptr %r1461, align 4
  %1212 = load ptr, ptr %x.addr, align 8
  %1213 = load i32, ptr %i__7, align 4
  %idxprom1462 = sext i32 %1213 to i64
  %arrayidx1463 = getelementptr inbounds %struct.complex, ptr %1212, i64 %idxprom1462
  %i1464 = getelementptr inbounds %struct.complex, ptr %arrayidx1463, i32 0, i32 1
  %1214 = load float, ptr %i1464, align 4
  %1215 = load ptr, ptr %d__.addr, align 8
  %1216 = load i32, ptr %i__6, align 4
  %idxprom1466 = sext i32 %1216 to i64
  %arrayidx1467 = getelementptr inbounds %struct.complex, ptr %1215, i64 %idxprom1466
  %i1468 = getelementptr inbounds %struct.complex, ptr %arrayidx1467, i32 0, i32 1
  %1217 = load float, ptr %i1468, align 4
  %1218 = load ptr, ptr %x.addr, align 8
  %1219 = load i32, ptr %i__7, align 4
  %idxprom1469 = sext i32 %1219 to i64
  %arrayidx1470 = getelementptr inbounds %struct.complex, ptr %1218, i64 %idxprom1469
  %r1471 = getelementptr inbounds %struct.complex, ptr %arrayidx1470, i32 0, i32 0
  %1220 = load float, ptr %r1471, align 4
  %mul1472 = fmul float %1217, %1220
  %1221 = call float @llvm.fmuladd.f32(float %1211, float %1214, float %mul1472)
  %i1473 = getelementptr inbounds %struct.complex, ptr %q__4, i32 0, i32 1
  store float %1221, ptr %i1473, align 4
  %r1474 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  %1222 = load float, ptr %r1474, align 4
  %r1475 = getelementptr inbounds %struct.complex, ptr %q__4, i32 0, i32 0
  %1223 = load float, ptr %r1475, align 4
  %sub1476 = fsub float %1222, %1223
  %r1477 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float %sub1476, ptr %r1477, align 4
  %i1478 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  %1224 = load float, ptr %i1478, align 4
  %i1479 = getelementptr inbounds %struct.complex, ptr %q__4, i32 0, i32 1
  %1225 = load float, ptr %i1479, align 4
  %sub1480 = fsub float %1224, %1225
  %i1481 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float %sub1480, ptr %i1481, align 4
  %r1482 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %1226 = load float, ptr %r1482, align 4
  %1227 = load ptr, ptr %b.addr, align 8
  %1228 = load i32, ptr %i__2, align 4
  %idxprom1483 = sext i32 %1228 to i64
  %arrayidx1484 = getelementptr inbounds %struct.complex, ptr %1227, i64 %idxprom1483
  %r1485 = getelementptr inbounds %struct.complex, ptr %arrayidx1484, i32 0, i32 0
  store float %1226, ptr %r1485, align 4
  %i1486 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %1229 = load float, ptr %i1486, align 4
  %1230 = load ptr, ptr %b.addr, align 8
  %1231 = load i32, ptr %i__2, align 4
  %idxprom1487 = sext i32 %1231 to i64
  %arrayidx1488 = getelementptr inbounds %struct.complex, ptr %1230, i64 %idxprom1487
  %i1489 = getelementptr inbounds %struct.complex, ptr %arrayidx1488, i32 0, i32 1
  store float %1229, ptr %i1489, align 4
  %1232 = load ptr, ptr %n.addr, align 8
  %1233 = load i32, ptr %1232, align 4
  %sub1490 = sub nsw i32 %1233, 1
  store i32 %sub1490, ptr %i__2, align 4
  store i32 2, ptr %i__, align 4
  br label %for.cond1491

for.cond1491:                                     ; preds = %for.inc1636, %if.else1299
  %1234 = load i32, ptr %i__, align 4
  %1235 = load i32, ptr %i__2, align 4
  %cmp1492 = icmp sle i32 %1234, %1235
  br i1 %cmp1492, label %for.body1493, label %for.end1638

for.body1493:                                     ; preds = %for.cond1491
  %1236 = load i32, ptr %i__, align 4
  %1237 = load i32, ptr %j, align 4
  %1238 = load i32, ptr %b_dim1, align 4
  %mul1494 = mul nsw i32 %1237, %1238
  %add1495 = add nsw i32 %1236, %mul1494
  store i32 %add1495, ptr %i__3, align 4
  %1239 = load i32, ptr %i__, align 4
  %1240 = load i32, ptr %j, align 4
  %1241 = load i32, ptr %b_dim1, align 4
  %mul1496 = mul nsw i32 %1240, %1241
  %add1497 = add nsw i32 %1239, %mul1496
  store i32 %add1497, ptr %i__4, align 4
  %1242 = load i32, ptr %i__, align 4
  %sub1498 = sub nsw i32 %1242, 1
  store i32 %sub1498, ptr %i__5, align 4
  %1243 = load i32, ptr %i__, align 4
  %sub1499 = sub nsw i32 %1243, 1
  %1244 = load i32, ptr %j, align 4
  %1245 = load i32, ptr %x_dim1, align 4
  %mul1500 = mul nsw i32 %1244, %1245
  %add1501 = add nsw i32 %sub1499, %mul1500
  store i32 %add1501, ptr %i__6, align 4
  %1246 = load ptr, ptr %dl.addr, align 8
  %1247 = load i32, ptr %i__5, align 4
  %idxprom1502 = sext i32 %1247 to i64
  %arrayidx1503 = getelementptr inbounds %struct.complex, ptr %1246, i64 %idxprom1502
  %r1504 = getelementptr inbounds %struct.complex, ptr %arrayidx1503, i32 0, i32 0
  %1248 = load float, ptr %r1504, align 4
  %1249 = load ptr, ptr %x.addr, align 8
  %1250 = load i32, ptr %i__6, align 4
  %idxprom1505 = sext i32 %1250 to i64
  %arrayidx1506 = getelementptr inbounds %struct.complex, ptr %1249, i64 %idxprom1505
  %r1507 = getelementptr inbounds %struct.complex, ptr %arrayidx1506, i32 0, i32 0
  %1251 = load float, ptr %r1507, align 4
  %1252 = load ptr, ptr %dl.addr, align 8
  %1253 = load i32, ptr %i__5, align 4
  %idxprom1509 = sext i32 %1253 to i64
  %arrayidx1510 = getelementptr inbounds %struct.complex, ptr %1252, i64 %idxprom1509
  %i1511 = getelementptr inbounds %struct.complex, ptr %arrayidx1510, i32 0, i32 1
  %1254 = load float, ptr %i1511, align 4
  %1255 = load ptr, ptr %x.addr, align 8
  %1256 = load i32, ptr %i__6, align 4
  %idxprom1512 = sext i32 %1256 to i64
  %arrayidx1513 = getelementptr inbounds %struct.complex, ptr %1255, i64 %idxprom1512
  %i1514 = getelementptr inbounds %struct.complex, ptr %arrayidx1513, i32 0, i32 1
  %1257 = load float, ptr %i1514, align 4
  %mul1515 = fmul float %1254, %1257
  %neg1516 = fneg float %mul1515
  %1258 = call float @llvm.fmuladd.f32(float %1248, float %1251, float %neg1516)
  %r1517 = getelementptr inbounds %struct.complex, ptr %q__4, i32 0, i32 0
  store float %1258, ptr %r1517, align 4
  %1259 = load ptr, ptr %dl.addr, align 8
  %1260 = load i32, ptr %i__5, align 4
  %idxprom1518 = sext i32 %1260 to i64
  %arrayidx1519 = getelementptr inbounds %struct.complex, ptr %1259, i64 %idxprom1518
  %r1520 = getelementptr inbounds %struct.complex, ptr %arrayidx1519, i32 0, i32 0
  %1261 = load float, ptr %r1520, align 4
  %1262 = load ptr, ptr %x.addr, align 8
  %1263 = load i32, ptr %i__6, align 4
  %idxprom1521 = sext i32 %1263 to i64
  %arrayidx1522 = getelementptr inbounds %struct.complex, ptr %1262, i64 %idxprom1521
  %i1523 = getelementptr inbounds %struct.complex, ptr %arrayidx1522, i32 0, i32 1
  %1264 = load float, ptr %i1523, align 4
  %1265 = load ptr, ptr %dl.addr, align 8
  %1266 = load i32, ptr %i__5, align 4
  %idxprom1525 = sext i32 %1266 to i64
  %arrayidx1526 = getelementptr inbounds %struct.complex, ptr %1265, i64 %idxprom1525
  %i1527 = getelementptr inbounds %struct.complex, ptr %arrayidx1526, i32 0, i32 1
  %1267 = load float, ptr %i1527, align 4
  %1268 = load ptr, ptr %x.addr, align 8
  %1269 = load i32, ptr %i__6, align 4
  %idxprom1528 = sext i32 %1269 to i64
  %arrayidx1529 = getelementptr inbounds %struct.complex, ptr %1268, i64 %idxprom1528
  %r1530 = getelementptr inbounds %struct.complex, ptr %arrayidx1529, i32 0, i32 0
  %1270 = load float, ptr %r1530, align 4
  %mul1531 = fmul float %1267, %1270
  %1271 = call float @llvm.fmuladd.f32(float %1261, float %1264, float %mul1531)
  %i1532 = getelementptr inbounds %struct.complex, ptr %q__4, i32 0, i32 1
  store float %1271, ptr %i1532, align 4
  %1272 = load ptr, ptr %b.addr, align 8
  %1273 = load i32, ptr %i__4, align 4
  %idxprom1533 = sext i32 %1273 to i64
  %arrayidx1534 = getelementptr inbounds %struct.complex, ptr %1272, i64 %idxprom1533
  %r1535 = getelementptr inbounds %struct.complex, ptr %arrayidx1534, i32 0, i32 0
  %1274 = load float, ptr %r1535, align 4
  %r1536 = getelementptr inbounds %struct.complex, ptr %q__4, i32 0, i32 0
  %1275 = load float, ptr %r1536, align 4
  %sub1537 = fsub float %1274, %1275
  %r1538 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 0
  store float %sub1537, ptr %r1538, align 4
  %1276 = load ptr, ptr %b.addr, align 8
  %1277 = load i32, ptr %i__4, align 4
  %idxprom1539 = sext i32 %1277 to i64
  %arrayidx1540 = getelementptr inbounds %struct.complex, ptr %1276, i64 %idxprom1539
  %i1541 = getelementptr inbounds %struct.complex, ptr %arrayidx1540, i32 0, i32 1
  %1278 = load float, ptr %i1541, align 4
  %i1542 = getelementptr inbounds %struct.complex, ptr %q__4, i32 0, i32 1
  %1279 = load float, ptr %i1542, align 4
  %sub1543 = fsub float %1278, %1279
  %i1544 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 1
  store float %sub1543, ptr %i1544, align 4
  %1280 = load i32, ptr %i__, align 4
  store i32 %1280, ptr %i__7, align 4
  %1281 = load i32, ptr %i__, align 4
  %1282 = load i32, ptr %j, align 4
  %1283 = load i32, ptr %x_dim1, align 4
  %mul1545 = mul nsw i32 %1282, %1283
  %add1546 = add nsw i32 %1281, %mul1545
  store i32 %add1546, ptr %i__8, align 4
  %1284 = load ptr, ptr %d__.addr, align 8
  %1285 = load i32, ptr %i__7, align 4
  %idxprom1547 = sext i32 %1285 to i64
  %arrayidx1548 = getelementptr inbounds %struct.complex, ptr %1284, i64 %idxprom1547
  %r1549 = getelementptr inbounds %struct.complex, ptr %arrayidx1548, i32 0, i32 0
  %1286 = load float, ptr %r1549, align 4
  %1287 = load ptr, ptr %x.addr, align 8
  %1288 = load i32, ptr %i__8, align 4
  %idxprom1550 = sext i32 %1288 to i64
  %arrayidx1551 = getelementptr inbounds %struct.complex, ptr %1287, i64 %idxprom1550
  %r1552 = getelementptr inbounds %struct.complex, ptr %arrayidx1551, i32 0, i32 0
  %1289 = load float, ptr %r1552, align 4
  %1290 = load ptr, ptr %d__.addr, align 8
  %1291 = load i32, ptr %i__7, align 4
  %idxprom1554 = sext i32 %1291 to i64
  %arrayidx1555 = getelementptr inbounds %struct.complex, ptr %1290, i64 %idxprom1554
  %i1556 = getelementptr inbounds %struct.complex, ptr %arrayidx1555, i32 0, i32 1
  %1292 = load float, ptr %i1556, align 4
  %1293 = load ptr, ptr %x.addr, align 8
  %1294 = load i32, ptr %i__8, align 4
  %idxprom1557 = sext i32 %1294 to i64
  %arrayidx1558 = getelementptr inbounds %struct.complex, ptr %1293, i64 %idxprom1557
  %i1559 = getelementptr inbounds %struct.complex, ptr %arrayidx1558, i32 0, i32 1
  %1295 = load float, ptr %i1559, align 4
  %mul1560 = fmul float %1292, %1295
  %neg1561 = fneg float %mul1560
  %1296 = call float @llvm.fmuladd.f32(float %1286, float %1289, float %neg1561)
  %r1562 = getelementptr inbounds %struct.complex, ptr %q__5, i32 0, i32 0
  store float %1296, ptr %r1562, align 4
  %1297 = load ptr, ptr %d__.addr, align 8
  %1298 = load i32, ptr %i__7, align 4
  %idxprom1563 = sext i32 %1298 to i64
  %arrayidx1564 = getelementptr inbounds %struct.complex, ptr %1297, i64 %idxprom1563
  %r1565 = getelementptr inbounds %struct.complex, ptr %arrayidx1564, i32 0, i32 0
  %1299 = load float, ptr %r1565, align 4
  %1300 = load ptr, ptr %x.addr, align 8
  %1301 = load i32, ptr %i__8, align 4
  %idxprom1566 = sext i32 %1301 to i64
  %arrayidx1567 = getelementptr inbounds %struct.complex, ptr %1300, i64 %idxprom1566
  %i1568 = getelementptr inbounds %struct.complex, ptr %arrayidx1567, i32 0, i32 1
  %1302 = load float, ptr %i1568, align 4
  %1303 = load ptr, ptr %d__.addr, align 8
  %1304 = load i32, ptr %i__7, align 4
  %idxprom1570 = sext i32 %1304 to i64
  %arrayidx1571 = getelementptr inbounds %struct.complex, ptr %1303, i64 %idxprom1570
  %i1572 = getelementptr inbounds %struct.complex, ptr %arrayidx1571, i32 0, i32 1
  %1305 = load float, ptr %i1572, align 4
  %1306 = load ptr, ptr %x.addr, align 8
  %1307 = load i32, ptr %i__8, align 4
  %idxprom1573 = sext i32 %1307 to i64
  %arrayidx1574 = getelementptr inbounds %struct.complex, ptr %1306, i64 %idxprom1573
  %r1575 = getelementptr inbounds %struct.complex, ptr %arrayidx1574, i32 0, i32 0
  %1308 = load float, ptr %r1575, align 4
  %mul1576 = fmul float %1305, %1308
  %1309 = call float @llvm.fmuladd.f32(float %1299, float %1302, float %mul1576)
  %i1577 = getelementptr inbounds %struct.complex, ptr %q__5, i32 0, i32 1
  store float %1309, ptr %i1577, align 4
  %r1578 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 0
  %1310 = load float, ptr %r1578, align 4
  %r1579 = getelementptr inbounds %struct.complex, ptr %q__5, i32 0, i32 0
  %1311 = load float, ptr %r1579, align 4
  %sub1580 = fsub float %1310, %1311
  %r1581 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  store float %sub1580, ptr %r1581, align 4
  %i1582 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 1
  %1312 = load float, ptr %i1582, align 4
  %i1583 = getelementptr inbounds %struct.complex, ptr %q__5, i32 0, i32 1
  %1313 = load float, ptr %i1583, align 4
  %sub1584 = fsub float %1312, %1313
  %i1585 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  store float %sub1584, ptr %i1585, align 4
  %1314 = load i32, ptr %i__, align 4
  store i32 %1314, ptr %i__9, align 4
  %1315 = load i32, ptr %i__, align 4
  %add1586 = add nsw i32 %1315, 1
  %1316 = load i32, ptr %j, align 4
  %1317 = load i32, ptr %x_dim1, align 4
  %mul1587 = mul nsw i32 %1316, %1317
  %add1588 = add nsw i32 %add1586, %mul1587
  store i32 %add1588, ptr %i__10, align 4
  %1318 = load ptr, ptr %du.addr, align 8
  %1319 = load i32, ptr %i__9, align 4
  %idxprom1589 = sext i32 %1319 to i64
  %arrayidx1590 = getelementptr inbounds %struct.complex, ptr %1318, i64 %idxprom1589
  %r1591 = getelementptr inbounds %struct.complex, ptr %arrayidx1590, i32 0, i32 0
  %1320 = load float, ptr %r1591, align 4
  %1321 = load ptr, ptr %x.addr, align 8
  %1322 = load i32, ptr %i__10, align 4
  %idxprom1592 = sext i32 %1322 to i64
  %arrayidx1593 = getelementptr inbounds %struct.complex, ptr %1321, i64 %idxprom1592
  %r1594 = getelementptr inbounds %struct.complex, ptr %arrayidx1593, i32 0, i32 0
  %1323 = load float, ptr %r1594, align 4
  %1324 = load ptr, ptr %du.addr, align 8
  %1325 = load i32, ptr %i__9, align 4
  %idxprom1596 = sext i32 %1325 to i64
  %arrayidx1597 = getelementptr inbounds %struct.complex, ptr %1324, i64 %idxprom1596
  %i1598 = getelementptr inbounds %struct.complex, ptr %arrayidx1597, i32 0, i32 1
  %1326 = load float, ptr %i1598, align 4
  %1327 = load ptr, ptr %x.addr, align 8
  %1328 = load i32, ptr %i__10, align 4
  %idxprom1599 = sext i32 %1328 to i64
  %arrayidx1600 = getelementptr inbounds %struct.complex, ptr %1327, i64 %idxprom1599
  %i1601 = getelementptr inbounds %struct.complex, ptr %arrayidx1600, i32 0, i32 1
  %1329 = load float, ptr %i1601, align 4
  %mul1602 = fmul float %1326, %1329
  %neg1603 = fneg float %mul1602
  %1330 = call float @llvm.fmuladd.f32(float %1320, float %1323, float %neg1603)
  %r1604 = getelementptr inbounds %struct.complex, ptr %q__6, i32 0, i32 0
  store float %1330, ptr %r1604, align 4
  %1331 = load ptr, ptr %du.addr, align 8
  %1332 = load i32, ptr %i__9, align 4
  %idxprom1605 = sext i32 %1332 to i64
  %arrayidx1606 = getelementptr inbounds %struct.complex, ptr %1331, i64 %idxprom1605
  %r1607 = getelementptr inbounds %struct.complex, ptr %arrayidx1606, i32 0, i32 0
  %1333 = load float, ptr %r1607, align 4
  %1334 = load ptr, ptr %x.addr, align 8
  %1335 = load i32, ptr %i__10, align 4
  %idxprom1608 = sext i32 %1335 to i64
  %arrayidx1609 = getelementptr inbounds %struct.complex, ptr %1334, i64 %idxprom1608
  %i1610 = getelementptr inbounds %struct.complex, ptr %arrayidx1609, i32 0, i32 1
  %1336 = load float, ptr %i1610, align 4
  %1337 = load ptr, ptr %du.addr, align 8
  %1338 = load i32, ptr %i__9, align 4
  %idxprom1612 = sext i32 %1338 to i64
  %arrayidx1613 = getelementptr inbounds %struct.complex, ptr %1337, i64 %idxprom1612
  %i1614 = getelementptr inbounds %struct.complex, ptr %arrayidx1613, i32 0, i32 1
  %1339 = load float, ptr %i1614, align 4
  %1340 = load ptr, ptr %x.addr, align 8
  %1341 = load i32, ptr %i__10, align 4
  %idxprom1615 = sext i32 %1341 to i64
  %arrayidx1616 = getelementptr inbounds %struct.complex, ptr %1340, i64 %idxprom1615
  %r1617 = getelementptr inbounds %struct.complex, ptr %arrayidx1616, i32 0, i32 0
  %1342 = load float, ptr %r1617, align 4
  %mul1618 = fmul float %1339, %1342
  %1343 = call float @llvm.fmuladd.f32(float %1333, float %1336, float %mul1618)
  %i1619 = getelementptr inbounds %struct.complex, ptr %q__6, i32 0, i32 1
  store float %1343, ptr %i1619, align 4
  %r1620 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  %1344 = load float, ptr %r1620, align 4
  %r1621 = getelementptr inbounds %struct.complex, ptr %q__6, i32 0, i32 0
  %1345 = load float, ptr %r1621, align 4
  %sub1622 = fsub float %1344, %1345
  %r1623 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float %sub1622, ptr %r1623, align 4
  %i1624 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  %1346 = load float, ptr %i1624, align 4
  %i1625 = getelementptr inbounds %struct.complex, ptr %q__6, i32 0, i32 1
  %1347 = load float, ptr %i1625, align 4
  %sub1626 = fsub float %1346, %1347
  %i1627 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float %sub1626, ptr %i1627, align 4
  %r1628 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %1348 = load float, ptr %r1628, align 4
  %1349 = load ptr, ptr %b.addr, align 8
  %1350 = load i32, ptr %i__3, align 4
  %idxprom1629 = sext i32 %1350 to i64
  %arrayidx1630 = getelementptr inbounds %struct.complex, ptr %1349, i64 %idxprom1629
  %r1631 = getelementptr inbounds %struct.complex, ptr %arrayidx1630, i32 0, i32 0
  store float %1348, ptr %r1631, align 4
  %i1632 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %1351 = load float, ptr %i1632, align 4
  %1352 = load ptr, ptr %b.addr, align 8
  %1353 = load i32, ptr %i__3, align 4
  %idxprom1633 = sext i32 %1353 to i64
  %arrayidx1634 = getelementptr inbounds %struct.complex, ptr %1352, i64 %idxprom1633
  %i1635 = getelementptr inbounds %struct.complex, ptr %arrayidx1634, i32 0, i32 1
  store float %1351, ptr %i1635, align 4
  br label %for.inc1636

for.inc1636:                                      ; preds = %for.body1493
  %1354 = load i32, ptr %i__, align 4
  %inc1637 = add nsw i32 %1354, 1
  store i32 %inc1637, ptr %i__, align 4
  br label %for.cond1491, !llvm.loop !16

for.end1638:                                      ; preds = %for.cond1491
  br label %if.end1639

if.end1639:                                       ; preds = %for.end1638, %if.then1245
  br label %for.inc1640

for.inc1640:                                      ; preds = %if.end1639
  %1355 = load i32, ptr %j, align 4
  %inc1641 = add nsw i32 %1355, 1
  store i32 %inc1641, ptr %j, align 4
  br label %for.cond1241, !llvm.loop !17

for.end1642:                                      ; preds = %for.cond1241
  br label %if.end2418

if.else1643:                                      ; preds = %if.then1237
  %1356 = load ptr, ptr %trans.addr, align 8
  %call1644 = call i32 @lsame_(ptr noundef %1356, ptr noundef @.str.1)
  %tobool1645 = icmp ne i32 %call1644, 0
  br i1 %tobool1645, label %if.then1646, label %if.else2049

if.then1646:                                      ; preds = %if.else1643
  %1357 = load ptr, ptr %nrhs.addr, align 8
  %1358 = load i32, ptr %1357, align 4
  store i32 %1358, ptr %i__1, align 4
  store i32 1, ptr %j, align 4
  br label %for.cond1647

for.cond1647:                                     ; preds = %for.inc2046, %if.then1646
  %1359 = load i32, ptr %j, align 4
  %1360 = load i32, ptr %i__1, align 4
  %cmp1648 = icmp sle i32 %1359, %1360
  br i1 %cmp1648, label %for.body1649, label %for.end2048

for.body1649:                                     ; preds = %for.cond1647
  %1361 = load ptr, ptr %n.addr, align 8
  %1362 = load i32, ptr %1361, align 4
  %cmp1650 = icmp eq i32 %1362, 1
  br i1 %cmp1650, label %if.then1651, label %if.else1705

if.then1651:                                      ; preds = %for.body1649
  %1363 = load i32, ptr %j, align 4
  %1364 = load i32, ptr %b_dim1, align 4
  %mul1652 = mul nsw i32 %1363, %1364
  %add1653 = add nsw i32 %mul1652, 1
  store i32 %add1653, ptr %i__2, align 4
  %1365 = load i32, ptr %j, align 4
  %1366 = load i32, ptr %b_dim1, align 4
  %mul1654 = mul nsw i32 %1365, %1366
  %add1655 = add nsw i32 %mul1654, 1
  store i32 %add1655, ptr %i__3, align 4
  %1367 = load i32, ptr %j, align 4
  %1368 = load i32, ptr %x_dim1, align 4
  %mul1656 = mul nsw i32 %1367, %1368
  %add1657 = add nsw i32 %mul1656, 1
  store i32 %add1657, ptr %i__4, align 4
  %1369 = load ptr, ptr %d__.addr, align 8
  %arrayidx1658 = getelementptr inbounds %struct.complex, ptr %1369, i64 1
  %r1659 = getelementptr inbounds %struct.complex, ptr %arrayidx1658, i32 0, i32 0
  %1370 = load float, ptr %r1659, align 4
  %1371 = load ptr, ptr %x.addr, align 8
  %1372 = load i32, ptr %i__4, align 4
  %idxprom1660 = sext i32 %1372 to i64
  %arrayidx1661 = getelementptr inbounds %struct.complex, ptr %1371, i64 %idxprom1660
  %r1662 = getelementptr inbounds %struct.complex, ptr %arrayidx1661, i32 0, i32 0
  %1373 = load float, ptr %r1662, align 4
  %1374 = load ptr, ptr %d__.addr, align 8
  %arrayidx1664 = getelementptr inbounds %struct.complex, ptr %1374, i64 1
  %i1665 = getelementptr inbounds %struct.complex, ptr %arrayidx1664, i32 0, i32 1
  %1375 = load float, ptr %i1665, align 4
  %1376 = load ptr, ptr %x.addr, align 8
  %1377 = load i32, ptr %i__4, align 4
  %idxprom1666 = sext i32 %1377 to i64
  %arrayidx1667 = getelementptr inbounds %struct.complex, ptr %1376, i64 %idxprom1666
  %i1668 = getelementptr inbounds %struct.complex, ptr %arrayidx1667, i32 0, i32 1
  %1378 = load float, ptr %i1668, align 4
  %mul1669 = fmul float %1375, %1378
  %neg1670 = fneg float %mul1669
  %1379 = call float @llvm.fmuladd.f32(float %1370, float %1373, float %neg1670)
  %r1671 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  store float %1379, ptr %r1671, align 4
  %1380 = load ptr, ptr %d__.addr, align 8
  %arrayidx1672 = getelementptr inbounds %struct.complex, ptr %1380, i64 1
  %r1673 = getelementptr inbounds %struct.complex, ptr %arrayidx1672, i32 0, i32 0
  %1381 = load float, ptr %r1673, align 4
  %1382 = load ptr, ptr %x.addr, align 8
  %1383 = load i32, ptr %i__4, align 4
  %idxprom1674 = sext i32 %1383 to i64
  %arrayidx1675 = getelementptr inbounds %struct.complex, ptr %1382, i64 %idxprom1674
  %i1676 = getelementptr inbounds %struct.complex, ptr %arrayidx1675, i32 0, i32 1
  %1384 = load float, ptr %i1676, align 4
  %1385 = load ptr, ptr %d__.addr, align 8
  %arrayidx1678 = getelementptr inbounds %struct.complex, ptr %1385, i64 1
  %i1679 = getelementptr inbounds %struct.complex, ptr %arrayidx1678, i32 0, i32 1
  %1386 = load float, ptr %i1679, align 4
  %1387 = load ptr, ptr %x.addr, align 8
  %1388 = load i32, ptr %i__4, align 4
  %idxprom1680 = sext i32 %1388 to i64
  %arrayidx1681 = getelementptr inbounds %struct.complex, ptr %1387, i64 %idxprom1680
  %r1682 = getelementptr inbounds %struct.complex, ptr %arrayidx1681, i32 0, i32 0
  %1389 = load float, ptr %r1682, align 4
  %mul1683 = fmul float %1386, %1389
  %1390 = call float @llvm.fmuladd.f32(float %1381, float %1384, float %mul1683)
  %i1684 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  store float %1390, ptr %i1684, align 4
  %1391 = load ptr, ptr %b.addr, align 8
  %1392 = load i32, ptr %i__3, align 4
  %idxprom1685 = sext i32 %1392 to i64
  %arrayidx1686 = getelementptr inbounds %struct.complex, ptr %1391, i64 %idxprom1685
  %r1687 = getelementptr inbounds %struct.complex, ptr %arrayidx1686, i32 0, i32 0
  %1393 = load float, ptr %r1687, align 4
  %r1688 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  %1394 = load float, ptr %r1688, align 4
  %sub1689 = fsub float %1393, %1394
  %r1690 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float %sub1689, ptr %r1690, align 4
  %1395 = load ptr, ptr %b.addr, align 8
  %1396 = load i32, ptr %i__3, align 4
  %idxprom1691 = sext i32 %1396 to i64
  %arrayidx1692 = getelementptr inbounds %struct.complex, ptr %1395, i64 %idxprom1691
  %i1693 = getelementptr inbounds %struct.complex, ptr %arrayidx1692, i32 0, i32 1
  %1397 = load float, ptr %i1693, align 4
  %i1694 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  %1398 = load float, ptr %i1694, align 4
  %sub1695 = fsub float %1397, %1398
  %i1696 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float %sub1695, ptr %i1696, align 4
  %r1697 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %1399 = load float, ptr %r1697, align 4
  %1400 = load ptr, ptr %b.addr, align 8
  %1401 = load i32, ptr %i__2, align 4
  %idxprom1698 = sext i32 %1401 to i64
  %arrayidx1699 = getelementptr inbounds %struct.complex, ptr %1400, i64 %idxprom1698
  %r1700 = getelementptr inbounds %struct.complex, ptr %arrayidx1699, i32 0, i32 0
  store float %1399, ptr %r1700, align 4
  %i1701 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %1402 = load float, ptr %i1701, align 4
  %1403 = load ptr, ptr %b.addr, align 8
  %1404 = load i32, ptr %i__2, align 4
  %idxprom1702 = sext i32 %1404 to i64
  %arrayidx1703 = getelementptr inbounds %struct.complex, ptr %1403, i64 %idxprom1702
  %i1704 = getelementptr inbounds %struct.complex, ptr %arrayidx1703, i32 0, i32 1
  store float %1402, ptr %i1704, align 4
  br label %if.end2045

if.else1705:                                      ; preds = %for.body1649
  %1405 = load i32, ptr %j, align 4
  %1406 = load i32, ptr %b_dim1, align 4
  %mul1706 = mul nsw i32 %1405, %1406
  %add1707 = add nsw i32 %mul1706, 1
  store i32 %add1707, ptr %i__2, align 4
  %1407 = load i32, ptr %j, align 4
  %1408 = load i32, ptr %b_dim1, align 4
  %mul1708 = mul nsw i32 %1407, %1408
  %add1709 = add nsw i32 %mul1708, 1
  store i32 %add1709, ptr %i__3, align 4
  %1409 = load i32, ptr %j, align 4
  %1410 = load i32, ptr %x_dim1, align 4
  %mul1710 = mul nsw i32 %1409, %1410
  %add1711 = add nsw i32 %mul1710, 1
  store i32 %add1711, ptr %i__4, align 4
  %1411 = load ptr, ptr %d__.addr, align 8
  %arrayidx1712 = getelementptr inbounds %struct.complex, ptr %1411, i64 1
  %r1713 = getelementptr inbounds %struct.complex, ptr %arrayidx1712, i32 0, i32 0
  %1412 = load float, ptr %r1713, align 4
  %1413 = load ptr, ptr %x.addr, align 8
  %1414 = load i32, ptr %i__4, align 4
  %idxprom1714 = sext i32 %1414 to i64
  %arrayidx1715 = getelementptr inbounds %struct.complex, ptr %1413, i64 %idxprom1714
  %r1716 = getelementptr inbounds %struct.complex, ptr %arrayidx1715, i32 0, i32 0
  %1415 = load float, ptr %r1716, align 4
  %1416 = load ptr, ptr %d__.addr, align 8
  %arrayidx1718 = getelementptr inbounds %struct.complex, ptr %1416, i64 1
  %i1719 = getelementptr inbounds %struct.complex, ptr %arrayidx1718, i32 0, i32 1
  %1417 = load float, ptr %i1719, align 4
  %1418 = load ptr, ptr %x.addr, align 8
  %1419 = load i32, ptr %i__4, align 4
  %idxprom1720 = sext i32 %1419 to i64
  %arrayidx1721 = getelementptr inbounds %struct.complex, ptr %1418, i64 %idxprom1720
  %i1722 = getelementptr inbounds %struct.complex, ptr %arrayidx1721, i32 0, i32 1
  %1420 = load float, ptr %i1722, align 4
  %mul1723 = fmul float %1417, %1420
  %neg1724 = fneg float %mul1723
  %1421 = call float @llvm.fmuladd.f32(float %1412, float %1415, float %neg1724)
  %r1725 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 0
  store float %1421, ptr %r1725, align 4
  %1422 = load ptr, ptr %d__.addr, align 8
  %arrayidx1726 = getelementptr inbounds %struct.complex, ptr %1422, i64 1
  %r1727 = getelementptr inbounds %struct.complex, ptr %arrayidx1726, i32 0, i32 0
  %1423 = load float, ptr %r1727, align 4
  %1424 = load ptr, ptr %x.addr, align 8
  %1425 = load i32, ptr %i__4, align 4
  %idxprom1728 = sext i32 %1425 to i64
  %arrayidx1729 = getelementptr inbounds %struct.complex, ptr %1424, i64 %idxprom1728
  %i1730 = getelementptr inbounds %struct.complex, ptr %arrayidx1729, i32 0, i32 1
  %1426 = load float, ptr %i1730, align 4
  %1427 = load ptr, ptr %d__.addr, align 8
  %arrayidx1732 = getelementptr inbounds %struct.complex, ptr %1427, i64 1
  %i1733 = getelementptr inbounds %struct.complex, ptr %arrayidx1732, i32 0, i32 1
  %1428 = load float, ptr %i1733, align 4
  %1429 = load ptr, ptr %x.addr, align 8
  %1430 = load i32, ptr %i__4, align 4
  %idxprom1734 = sext i32 %1430 to i64
  %arrayidx1735 = getelementptr inbounds %struct.complex, ptr %1429, i64 %idxprom1734
  %r1736 = getelementptr inbounds %struct.complex, ptr %arrayidx1735, i32 0, i32 0
  %1431 = load float, ptr %r1736, align 4
  %mul1737 = fmul float %1428, %1431
  %1432 = call float @llvm.fmuladd.f32(float %1423, float %1426, float %mul1737)
  %i1738 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 1
  store float %1432, ptr %i1738, align 4
  %1433 = load ptr, ptr %b.addr, align 8
  %1434 = load i32, ptr %i__3, align 4
  %idxprom1739 = sext i32 %1434 to i64
  %arrayidx1740 = getelementptr inbounds %struct.complex, ptr %1433, i64 %idxprom1739
  %r1741 = getelementptr inbounds %struct.complex, ptr %arrayidx1740, i32 0, i32 0
  %1435 = load float, ptr %r1741, align 4
  %r1742 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 0
  %1436 = load float, ptr %r1742, align 4
  %sub1743 = fsub float %1435, %1436
  %r1744 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  store float %sub1743, ptr %r1744, align 4
  %1437 = load ptr, ptr %b.addr, align 8
  %1438 = load i32, ptr %i__3, align 4
  %idxprom1745 = sext i32 %1438 to i64
  %arrayidx1746 = getelementptr inbounds %struct.complex, ptr %1437, i64 %idxprom1745
  %i1747 = getelementptr inbounds %struct.complex, ptr %arrayidx1746, i32 0, i32 1
  %1439 = load float, ptr %i1747, align 4
  %i1748 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 1
  %1440 = load float, ptr %i1748, align 4
  %sub1749 = fsub float %1439, %1440
  %i1750 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  store float %sub1749, ptr %i1750, align 4
  %1441 = load i32, ptr %j, align 4
  %1442 = load i32, ptr %x_dim1, align 4
  %mul1751 = mul nsw i32 %1441, %1442
  %add1752 = add nsw i32 %mul1751, 2
  store i32 %add1752, ptr %i__5, align 4
  %1443 = load ptr, ptr %dl.addr, align 8
  %arrayidx1753 = getelementptr inbounds %struct.complex, ptr %1443, i64 1
  %r1754 = getelementptr inbounds %struct.complex, ptr %arrayidx1753, i32 0, i32 0
  %1444 = load float, ptr %r1754, align 4
  %1445 = load ptr, ptr %x.addr, align 8
  %1446 = load i32, ptr %i__5, align 4
  %idxprom1755 = sext i32 %1446 to i64
  %arrayidx1756 = getelementptr inbounds %struct.complex, ptr %1445, i64 %idxprom1755
  %r1757 = getelementptr inbounds %struct.complex, ptr %arrayidx1756, i32 0, i32 0
  %1447 = load float, ptr %r1757, align 4
  %1448 = load ptr, ptr %dl.addr, align 8
  %arrayidx1759 = getelementptr inbounds %struct.complex, ptr %1448, i64 1
  %i1760 = getelementptr inbounds %struct.complex, ptr %arrayidx1759, i32 0, i32 1
  %1449 = load float, ptr %i1760, align 4
  %1450 = load ptr, ptr %x.addr, align 8
  %1451 = load i32, ptr %i__5, align 4
  %idxprom1761 = sext i32 %1451 to i64
  %arrayidx1762 = getelementptr inbounds %struct.complex, ptr %1450, i64 %idxprom1761
  %i1763 = getelementptr inbounds %struct.complex, ptr %arrayidx1762, i32 0, i32 1
  %1452 = load float, ptr %i1763, align 4
  %mul1764 = fmul float %1449, %1452
  %neg1765 = fneg float %mul1764
  %1453 = call float @llvm.fmuladd.f32(float %1444, float %1447, float %neg1765)
  %r1766 = getelementptr inbounds %struct.complex, ptr %q__4, i32 0, i32 0
  store float %1453, ptr %r1766, align 4
  %1454 = load ptr, ptr %dl.addr, align 8
  %arrayidx1767 = getelementptr inbounds %struct.complex, ptr %1454, i64 1
  %r1768 = getelementptr inbounds %struct.complex, ptr %arrayidx1767, i32 0, i32 0
  %1455 = load float, ptr %r1768, align 4
  %1456 = load ptr, ptr %x.addr, align 8
  %1457 = load i32, ptr %i__5, align 4
  %idxprom1769 = sext i32 %1457 to i64
  %arrayidx1770 = getelementptr inbounds %struct.complex, ptr %1456, i64 %idxprom1769
  %i1771 = getelementptr inbounds %struct.complex, ptr %arrayidx1770, i32 0, i32 1
  %1458 = load float, ptr %i1771, align 4
  %1459 = load ptr, ptr %dl.addr, align 8
  %arrayidx1773 = getelementptr inbounds %struct.complex, ptr %1459, i64 1
  %i1774 = getelementptr inbounds %struct.complex, ptr %arrayidx1773, i32 0, i32 1
  %1460 = load float, ptr %i1774, align 4
  %1461 = load ptr, ptr %x.addr, align 8
  %1462 = load i32, ptr %i__5, align 4
  %idxprom1775 = sext i32 %1462 to i64
  %arrayidx1776 = getelementptr inbounds %struct.complex, ptr %1461, i64 %idxprom1775
  %r1777 = getelementptr inbounds %struct.complex, ptr %arrayidx1776, i32 0, i32 0
  %1463 = load float, ptr %r1777, align 4
  %mul1778 = fmul float %1460, %1463
  %1464 = call float @llvm.fmuladd.f32(float %1455, float %1458, float %mul1778)
  %i1779 = getelementptr inbounds %struct.complex, ptr %q__4, i32 0, i32 1
  store float %1464, ptr %i1779, align 4
  %r1780 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  %1465 = load float, ptr %r1780, align 4
  %r1781 = getelementptr inbounds %struct.complex, ptr %q__4, i32 0, i32 0
  %1466 = load float, ptr %r1781, align 4
  %sub1782 = fsub float %1465, %1466
  %r1783 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float %sub1782, ptr %r1783, align 4
  %i1784 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  %1467 = load float, ptr %i1784, align 4
  %i1785 = getelementptr inbounds %struct.complex, ptr %q__4, i32 0, i32 1
  %1468 = load float, ptr %i1785, align 4
  %sub1786 = fsub float %1467, %1468
  %i1787 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float %sub1786, ptr %i1787, align 4
  %r1788 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %1469 = load float, ptr %r1788, align 4
  %1470 = load ptr, ptr %b.addr, align 8
  %1471 = load i32, ptr %i__2, align 4
  %idxprom1789 = sext i32 %1471 to i64
  %arrayidx1790 = getelementptr inbounds %struct.complex, ptr %1470, i64 %idxprom1789
  %r1791 = getelementptr inbounds %struct.complex, ptr %arrayidx1790, i32 0, i32 0
  store float %1469, ptr %r1791, align 4
  %i1792 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %1472 = load float, ptr %i1792, align 4
  %1473 = load ptr, ptr %b.addr, align 8
  %1474 = load i32, ptr %i__2, align 4
  %idxprom1793 = sext i32 %1474 to i64
  %arrayidx1794 = getelementptr inbounds %struct.complex, ptr %1473, i64 %idxprom1793
  %i1795 = getelementptr inbounds %struct.complex, ptr %arrayidx1794, i32 0, i32 1
  store float %1472, ptr %i1795, align 4
  %1475 = load ptr, ptr %n.addr, align 8
  %1476 = load i32, ptr %1475, align 4
  %1477 = load i32, ptr %j, align 4
  %1478 = load i32, ptr %b_dim1, align 4
  %mul1796 = mul nsw i32 %1477, %1478
  %add1797 = add nsw i32 %1476, %mul1796
  store i32 %add1797, ptr %i__2, align 4
  %1479 = load ptr, ptr %n.addr, align 8
  %1480 = load i32, ptr %1479, align 4
  %1481 = load i32, ptr %j, align 4
  %1482 = load i32, ptr %b_dim1, align 4
  %mul1798 = mul nsw i32 %1481, %1482
  %add1799 = add nsw i32 %1480, %mul1798
  store i32 %add1799, ptr %i__3, align 4
  %1483 = load ptr, ptr %n.addr, align 8
  %1484 = load i32, ptr %1483, align 4
  %sub1800 = sub nsw i32 %1484, 1
  store i32 %sub1800, ptr %i__4, align 4
  %1485 = load ptr, ptr %n.addr, align 8
  %1486 = load i32, ptr %1485, align 4
  %sub1801 = sub nsw i32 %1486, 1
  %1487 = load i32, ptr %j, align 4
  %1488 = load i32, ptr %x_dim1, align 4
  %mul1802 = mul nsw i32 %1487, %1488
  %add1803 = add nsw i32 %sub1801, %mul1802
  store i32 %add1803, ptr %i__5, align 4
  %1489 = load ptr, ptr %du.addr, align 8
  %1490 = load i32, ptr %i__4, align 4
  %idxprom1804 = sext i32 %1490 to i64
  %arrayidx1805 = getelementptr inbounds %struct.complex, ptr %1489, i64 %idxprom1804
  %r1806 = getelementptr inbounds %struct.complex, ptr %arrayidx1805, i32 0, i32 0
  %1491 = load float, ptr %r1806, align 4
  %1492 = load ptr, ptr %x.addr, align 8
  %1493 = load i32, ptr %i__5, align 4
  %idxprom1807 = sext i32 %1493 to i64
  %arrayidx1808 = getelementptr inbounds %struct.complex, ptr %1492, i64 %idxprom1807
  %r1809 = getelementptr inbounds %struct.complex, ptr %arrayidx1808, i32 0, i32 0
  %1494 = load float, ptr %r1809, align 4
  %1495 = load ptr, ptr %du.addr, align 8
  %1496 = load i32, ptr %i__4, align 4
  %idxprom1811 = sext i32 %1496 to i64
  %arrayidx1812 = getelementptr inbounds %struct.complex, ptr %1495, i64 %idxprom1811
  %i1813 = getelementptr inbounds %struct.complex, ptr %arrayidx1812, i32 0, i32 1
  %1497 = load float, ptr %i1813, align 4
  %1498 = load ptr, ptr %x.addr, align 8
  %1499 = load i32, ptr %i__5, align 4
  %idxprom1814 = sext i32 %1499 to i64
  %arrayidx1815 = getelementptr inbounds %struct.complex, ptr %1498, i64 %idxprom1814
  %i1816 = getelementptr inbounds %struct.complex, ptr %arrayidx1815, i32 0, i32 1
  %1500 = load float, ptr %i1816, align 4
  %mul1817 = fmul float %1497, %1500
  %neg1818 = fneg float %mul1817
  %1501 = call float @llvm.fmuladd.f32(float %1491, float %1494, float %neg1818)
  %r1819 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 0
  store float %1501, ptr %r1819, align 4
  %1502 = load ptr, ptr %du.addr, align 8
  %1503 = load i32, ptr %i__4, align 4
  %idxprom1820 = sext i32 %1503 to i64
  %arrayidx1821 = getelementptr inbounds %struct.complex, ptr %1502, i64 %idxprom1820
  %r1822 = getelementptr inbounds %struct.complex, ptr %arrayidx1821, i32 0, i32 0
  %1504 = load float, ptr %r1822, align 4
  %1505 = load ptr, ptr %x.addr, align 8
  %1506 = load i32, ptr %i__5, align 4
  %idxprom1823 = sext i32 %1506 to i64
  %arrayidx1824 = getelementptr inbounds %struct.complex, ptr %1505, i64 %idxprom1823
  %i1825 = getelementptr inbounds %struct.complex, ptr %arrayidx1824, i32 0, i32 1
  %1507 = load float, ptr %i1825, align 4
  %1508 = load ptr, ptr %du.addr, align 8
  %1509 = load i32, ptr %i__4, align 4
  %idxprom1827 = sext i32 %1509 to i64
  %arrayidx1828 = getelementptr inbounds %struct.complex, ptr %1508, i64 %idxprom1827
  %i1829 = getelementptr inbounds %struct.complex, ptr %arrayidx1828, i32 0, i32 1
  %1510 = load float, ptr %i1829, align 4
  %1511 = load ptr, ptr %x.addr, align 8
  %1512 = load i32, ptr %i__5, align 4
  %idxprom1830 = sext i32 %1512 to i64
  %arrayidx1831 = getelementptr inbounds %struct.complex, ptr %1511, i64 %idxprom1830
  %r1832 = getelementptr inbounds %struct.complex, ptr %arrayidx1831, i32 0, i32 0
  %1513 = load float, ptr %r1832, align 4
  %mul1833 = fmul float %1510, %1513
  %1514 = call float @llvm.fmuladd.f32(float %1504, float %1507, float %mul1833)
  %i1834 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 1
  store float %1514, ptr %i1834, align 4
  %1515 = load ptr, ptr %b.addr, align 8
  %1516 = load i32, ptr %i__3, align 4
  %idxprom1835 = sext i32 %1516 to i64
  %arrayidx1836 = getelementptr inbounds %struct.complex, ptr %1515, i64 %idxprom1835
  %r1837 = getelementptr inbounds %struct.complex, ptr %arrayidx1836, i32 0, i32 0
  %1517 = load float, ptr %r1837, align 4
  %r1838 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 0
  %1518 = load float, ptr %r1838, align 4
  %sub1839 = fsub float %1517, %1518
  %r1840 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  store float %sub1839, ptr %r1840, align 4
  %1519 = load ptr, ptr %b.addr, align 8
  %1520 = load i32, ptr %i__3, align 4
  %idxprom1841 = sext i32 %1520 to i64
  %arrayidx1842 = getelementptr inbounds %struct.complex, ptr %1519, i64 %idxprom1841
  %i1843 = getelementptr inbounds %struct.complex, ptr %arrayidx1842, i32 0, i32 1
  %1521 = load float, ptr %i1843, align 4
  %i1844 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 1
  %1522 = load float, ptr %i1844, align 4
  %sub1845 = fsub float %1521, %1522
  %i1846 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  store float %sub1845, ptr %i1846, align 4
  %1523 = load ptr, ptr %n.addr, align 8
  %1524 = load i32, ptr %1523, align 4
  store i32 %1524, ptr %i__6, align 4
  %1525 = load ptr, ptr %n.addr, align 8
  %1526 = load i32, ptr %1525, align 4
  %1527 = load i32, ptr %j, align 4
  %1528 = load i32, ptr %x_dim1, align 4
  %mul1847 = mul nsw i32 %1527, %1528
  %add1848 = add nsw i32 %1526, %mul1847
  store i32 %add1848, ptr %i__7, align 4
  %1529 = load ptr, ptr %d__.addr, align 8
  %1530 = load i32, ptr %i__6, align 4
  %idxprom1849 = sext i32 %1530 to i64
  %arrayidx1850 = getelementptr inbounds %struct.complex, ptr %1529, i64 %idxprom1849
  %r1851 = getelementptr inbounds %struct.complex, ptr %arrayidx1850, i32 0, i32 0
  %1531 = load float, ptr %r1851, align 4
  %1532 = load ptr, ptr %x.addr, align 8
  %1533 = load i32, ptr %i__7, align 4
  %idxprom1852 = sext i32 %1533 to i64
  %arrayidx1853 = getelementptr inbounds %struct.complex, ptr %1532, i64 %idxprom1852
  %r1854 = getelementptr inbounds %struct.complex, ptr %arrayidx1853, i32 0, i32 0
  %1534 = load float, ptr %r1854, align 4
  %1535 = load ptr, ptr %d__.addr, align 8
  %1536 = load i32, ptr %i__6, align 4
  %idxprom1856 = sext i32 %1536 to i64
  %arrayidx1857 = getelementptr inbounds %struct.complex, ptr %1535, i64 %idxprom1856
  %i1858 = getelementptr inbounds %struct.complex, ptr %arrayidx1857, i32 0, i32 1
  %1537 = load float, ptr %i1858, align 4
  %1538 = load ptr, ptr %x.addr, align 8
  %1539 = load i32, ptr %i__7, align 4
  %idxprom1859 = sext i32 %1539 to i64
  %arrayidx1860 = getelementptr inbounds %struct.complex, ptr %1538, i64 %idxprom1859
  %i1861 = getelementptr inbounds %struct.complex, ptr %arrayidx1860, i32 0, i32 1
  %1540 = load float, ptr %i1861, align 4
  %mul1862 = fmul float %1537, %1540
  %neg1863 = fneg float %mul1862
  %1541 = call float @llvm.fmuladd.f32(float %1531, float %1534, float %neg1863)
  %r1864 = getelementptr inbounds %struct.complex, ptr %q__4, i32 0, i32 0
  store float %1541, ptr %r1864, align 4
  %1542 = load ptr, ptr %d__.addr, align 8
  %1543 = load i32, ptr %i__6, align 4
  %idxprom1865 = sext i32 %1543 to i64
  %arrayidx1866 = getelementptr inbounds %struct.complex, ptr %1542, i64 %idxprom1865
  %r1867 = getelementptr inbounds %struct.complex, ptr %arrayidx1866, i32 0, i32 0
  %1544 = load float, ptr %r1867, align 4
  %1545 = load ptr, ptr %x.addr, align 8
  %1546 = load i32, ptr %i__7, align 4
  %idxprom1868 = sext i32 %1546 to i64
  %arrayidx1869 = getelementptr inbounds %struct.complex, ptr %1545, i64 %idxprom1868
  %i1870 = getelementptr inbounds %struct.complex, ptr %arrayidx1869, i32 0, i32 1
  %1547 = load float, ptr %i1870, align 4
  %1548 = load ptr, ptr %d__.addr, align 8
  %1549 = load i32, ptr %i__6, align 4
  %idxprom1872 = sext i32 %1549 to i64
  %arrayidx1873 = getelementptr inbounds %struct.complex, ptr %1548, i64 %idxprom1872
  %i1874 = getelementptr inbounds %struct.complex, ptr %arrayidx1873, i32 0, i32 1
  %1550 = load float, ptr %i1874, align 4
  %1551 = load ptr, ptr %x.addr, align 8
  %1552 = load i32, ptr %i__7, align 4
  %idxprom1875 = sext i32 %1552 to i64
  %arrayidx1876 = getelementptr inbounds %struct.complex, ptr %1551, i64 %idxprom1875
  %r1877 = getelementptr inbounds %struct.complex, ptr %arrayidx1876, i32 0, i32 0
  %1553 = load float, ptr %r1877, align 4
  %mul1878 = fmul float %1550, %1553
  %1554 = call float @llvm.fmuladd.f32(float %1544, float %1547, float %mul1878)
  %i1879 = getelementptr inbounds %struct.complex, ptr %q__4, i32 0, i32 1
  store float %1554, ptr %i1879, align 4
  %r1880 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  %1555 = load float, ptr %r1880, align 4
  %r1881 = getelementptr inbounds %struct.complex, ptr %q__4, i32 0, i32 0
  %1556 = load float, ptr %r1881, align 4
  %sub1882 = fsub float %1555, %1556
  %r1883 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float %sub1882, ptr %r1883, align 4
  %i1884 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  %1557 = load float, ptr %i1884, align 4
  %i1885 = getelementptr inbounds %struct.complex, ptr %q__4, i32 0, i32 1
  %1558 = load float, ptr %i1885, align 4
  %sub1886 = fsub float %1557, %1558
  %i1887 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float %sub1886, ptr %i1887, align 4
  %r1888 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %1559 = load float, ptr %r1888, align 4
  %1560 = load ptr, ptr %b.addr, align 8
  %1561 = load i32, ptr %i__2, align 4
  %idxprom1889 = sext i32 %1561 to i64
  %arrayidx1890 = getelementptr inbounds %struct.complex, ptr %1560, i64 %idxprom1889
  %r1891 = getelementptr inbounds %struct.complex, ptr %arrayidx1890, i32 0, i32 0
  store float %1559, ptr %r1891, align 4
  %i1892 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %1562 = load float, ptr %i1892, align 4
  %1563 = load ptr, ptr %b.addr, align 8
  %1564 = load i32, ptr %i__2, align 4
  %idxprom1893 = sext i32 %1564 to i64
  %arrayidx1894 = getelementptr inbounds %struct.complex, ptr %1563, i64 %idxprom1893
  %i1895 = getelementptr inbounds %struct.complex, ptr %arrayidx1894, i32 0, i32 1
  store float %1562, ptr %i1895, align 4
  %1565 = load ptr, ptr %n.addr, align 8
  %1566 = load i32, ptr %1565, align 4
  %sub1896 = sub nsw i32 %1566, 1
  store i32 %sub1896, ptr %i__2, align 4
  store i32 2, ptr %i__, align 4
  br label %for.cond1897

for.cond1897:                                     ; preds = %for.inc2042, %if.else1705
  %1567 = load i32, ptr %i__, align 4
  %1568 = load i32, ptr %i__2, align 4
  %cmp1898 = icmp sle i32 %1567, %1568
  br i1 %cmp1898, label %for.body1899, label %for.end2044

for.body1899:                                     ; preds = %for.cond1897
  %1569 = load i32, ptr %i__, align 4
  %1570 = load i32, ptr %j, align 4
  %1571 = load i32, ptr %b_dim1, align 4
  %mul1900 = mul nsw i32 %1570, %1571
  %add1901 = add nsw i32 %1569, %mul1900
  store i32 %add1901, ptr %i__3, align 4
  %1572 = load i32, ptr %i__, align 4
  %1573 = load i32, ptr %j, align 4
  %1574 = load i32, ptr %b_dim1, align 4
  %mul1902 = mul nsw i32 %1573, %1574
  %add1903 = add nsw i32 %1572, %mul1902
  store i32 %add1903, ptr %i__4, align 4
  %1575 = load i32, ptr %i__, align 4
  %sub1904 = sub nsw i32 %1575, 1
  store i32 %sub1904, ptr %i__5, align 4
  %1576 = load i32, ptr %i__, align 4
  %sub1905 = sub nsw i32 %1576, 1
  %1577 = load i32, ptr %j, align 4
  %1578 = load i32, ptr %x_dim1, align 4
  %mul1906 = mul nsw i32 %1577, %1578
  %add1907 = add nsw i32 %sub1905, %mul1906
  store i32 %add1907, ptr %i__6, align 4
  %1579 = load ptr, ptr %du.addr, align 8
  %1580 = load i32, ptr %i__5, align 4
  %idxprom1908 = sext i32 %1580 to i64
  %arrayidx1909 = getelementptr inbounds %struct.complex, ptr %1579, i64 %idxprom1908
  %r1910 = getelementptr inbounds %struct.complex, ptr %arrayidx1909, i32 0, i32 0
  %1581 = load float, ptr %r1910, align 4
  %1582 = load ptr, ptr %x.addr, align 8
  %1583 = load i32, ptr %i__6, align 4
  %idxprom1911 = sext i32 %1583 to i64
  %arrayidx1912 = getelementptr inbounds %struct.complex, ptr %1582, i64 %idxprom1911
  %r1913 = getelementptr inbounds %struct.complex, ptr %arrayidx1912, i32 0, i32 0
  %1584 = load float, ptr %r1913, align 4
  %1585 = load ptr, ptr %du.addr, align 8
  %1586 = load i32, ptr %i__5, align 4
  %idxprom1915 = sext i32 %1586 to i64
  %arrayidx1916 = getelementptr inbounds %struct.complex, ptr %1585, i64 %idxprom1915
  %i1917 = getelementptr inbounds %struct.complex, ptr %arrayidx1916, i32 0, i32 1
  %1587 = load float, ptr %i1917, align 4
  %1588 = load ptr, ptr %x.addr, align 8
  %1589 = load i32, ptr %i__6, align 4
  %idxprom1918 = sext i32 %1589 to i64
  %arrayidx1919 = getelementptr inbounds %struct.complex, ptr %1588, i64 %idxprom1918
  %i1920 = getelementptr inbounds %struct.complex, ptr %arrayidx1919, i32 0, i32 1
  %1590 = load float, ptr %i1920, align 4
  %mul1921 = fmul float %1587, %1590
  %neg1922 = fneg float %mul1921
  %1591 = call float @llvm.fmuladd.f32(float %1581, float %1584, float %neg1922)
  %r1923 = getelementptr inbounds %struct.complex, ptr %q__4, i32 0, i32 0
  store float %1591, ptr %r1923, align 4
  %1592 = load ptr, ptr %du.addr, align 8
  %1593 = load i32, ptr %i__5, align 4
  %idxprom1924 = sext i32 %1593 to i64
  %arrayidx1925 = getelementptr inbounds %struct.complex, ptr %1592, i64 %idxprom1924
  %r1926 = getelementptr inbounds %struct.complex, ptr %arrayidx1925, i32 0, i32 0
  %1594 = load float, ptr %r1926, align 4
  %1595 = load ptr, ptr %x.addr, align 8
  %1596 = load i32, ptr %i__6, align 4
  %idxprom1927 = sext i32 %1596 to i64
  %arrayidx1928 = getelementptr inbounds %struct.complex, ptr %1595, i64 %idxprom1927
  %i1929 = getelementptr inbounds %struct.complex, ptr %arrayidx1928, i32 0, i32 1
  %1597 = load float, ptr %i1929, align 4
  %1598 = load ptr, ptr %du.addr, align 8
  %1599 = load i32, ptr %i__5, align 4
  %idxprom1931 = sext i32 %1599 to i64
  %arrayidx1932 = getelementptr inbounds %struct.complex, ptr %1598, i64 %idxprom1931
  %i1933 = getelementptr inbounds %struct.complex, ptr %arrayidx1932, i32 0, i32 1
  %1600 = load float, ptr %i1933, align 4
  %1601 = load ptr, ptr %x.addr, align 8
  %1602 = load i32, ptr %i__6, align 4
  %idxprom1934 = sext i32 %1602 to i64
  %arrayidx1935 = getelementptr inbounds %struct.complex, ptr %1601, i64 %idxprom1934
  %r1936 = getelementptr inbounds %struct.complex, ptr %arrayidx1935, i32 0, i32 0
  %1603 = load float, ptr %r1936, align 4
  %mul1937 = fmul float %1600, %1603
  %1604 = call float @llvm.fmuladd.f32(float %1594, float %1597, float %mul1937)
  %i1938 = getelementptr inbounds %struct.complex, ptr %q__4, i32 0, i32 1
  store float %1604, ptr %i1938, align 4
  %1605 = load ptr, ptr %b.addr, align 8
  %1606 = load i32, ptr %i__4, align 4
  %idxprom1939 = sext i32 %1606 to i64
  %arrayidx1940 = getelementptr inbounds %struct.complex, ptr %1605, i64 %idxprom1939
  %r1941 = getelementptr inbounds %struct.complex, ptr %arrayidx1940, i32 0, i32 0
  %1607 = load float, ptr %r1941, align 4
  %r1942 = getelementptr inbounds %struct.complex, ptr %q__4, i32 0, i32 0
  %1608 = load float, ptr %r1942, align 4
  %sub1943 = fsub float %1607, %1608
  %r1944 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 0
  store float %sub1943, ptr %r1944, align 4
  %1609 = load ptr, ptr %b.addr, align 8
  %1610 = load i32, ptr %i__4, align 4
  %idxprom1945 = sext i32 %1610 to i64
  %arrayidx1946 = getelementptr inbounds %struct.complex, ptr %1609, i64 %idxprom1945
  %i1947 = getelementptr inbounds %struct.complex, ptr %arrayidx1946, i32 0, i32 1
  %1611 = load float, ptr %i1947, align 4
  %i1948 = getelementptr inbounds %struct.complex, ptr %q__4, i32 0, i32 1
  %1612 = load float, ptr %i1948, align 4
  %sub1949 = fsub float %1611, %1612
  %i1950 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 1
  store float %sub1949, ptr %i1950, align 4
  %1613 = load i32, ptr %i__, align 4
  store i32 %1613, ptr %i__7, align 4
  %1614 = load i32, ptr %i__, align 4
  %1615 = load i32, ptr %j, align 4
  %1616 = load i32, ptr %x_dim1, align 4
  %mul1951 = mul nsw i32 %1615, %1616
  %add1952 = add nsw i32 %1614, %mul1951
  store i32 %add1952, ptr %i__8, align 4
  %1617 = load ptr, ptr %d__.addr, align 8
  %1618 = load i32, ptr %i__7, align 4
  %idxprom1953 = sext i32 %1618 to i64
  %arrayidx1954 = getelementptr inbounds %struct.complex, ptr %1617, i64 %idxprom1953
  %r1955 = getelementptr inbounds %struct.complex, ptr %arrayidx1954, i32 0, i32 0
  %1619 = load float, ptr %r1955, align 4
  %1620 = load ptr, ptr %x.addr, align 8
  %1621 = load i32, ptr %i__8, align 4
  %idxprom1956 = sext i32 %1621 to i64
  %arrayidx1957 = getelementptr inbounds %struct.complex, ptr %1620, i64 %idxprom1956
  %r1958 = getelementptr inbounds %struct.complex, ptr %arrayidx1957, i32 0, i32 0
  %1622 = load float, ptr %r1958, align 4
  %1623 = load ptr, ptr %d__.addr, align 8
  %1624 = load i32, ptr %i__7, align 4
  %idxprom1960 = sext i32 %1624 to i64
  %arrayidx1961 = getelementptr inbounds %struct.complex, ptr %1623, i64 %idxprom1960
  %i1962 = getelementptr inbounds %struct.complex, ptr %arrayidx1961, i32 0, i32 1
  %1625 = load float, ptr %i1962, align 4
  %1626 = load ptr, ptr %x.addr, align 8
  %1627 = load i32, ptr %i__8, align 4
  %idxprom1963 = sext i32 %1627 to i64
  %arrayidx1964 = getelementptr inbounds %struct.complex, ptr %1626, i64 %idxprom1963
  %i1965 = getelementptr inbounds %struct.complex, ptr %arrayidx1964, i32 0, i32 1
  %1628 = load float, ptr %i1965, align 4
  %mul1966 = fmul float %1625, %1628
  %neg1967 = fneg float %mul1966
  %1629 = call float @llvm.fmuladd.f32(float %1619, float %1622, float %neg1967)
  %r1968 = getelementptr inbounds %struct.complex, ptr %q__5, i32 0, i32 0
  store float %1629, ptr %r1968, align 4
  %1630 = load ptr, ptr %d__.addr, align 8
  %1631 = load i32, ptr %i__7, align 4
  %idxprom1969 = sext i32 %1631 to i64
  %arrayidx1970 = getelementptr inbounds %struct.complex, ptr %1630, i64 %idxprom1969
  %r1971 = getelementptr inbounds %struct.complex, ptr %arrayidx1970, i32 0, i32 0
  %1632 = load float, ptr %r1971, align 4
  %1633 = load ptr, ptr %x.addr, align 8
  %1634 = load i32, ptr %i__8, align 4
  %idxprom1972 = sext i32 %1634 to i64
  %arrayidx1973 = getelementptr inbounds %struct.complex, ptr %1633, i64 %idxprom1972
  %i1974 = getelementptr inbounds %struct.complex, ptr %arrayidx1973, i32 0, i32 1
  %1635 = load float, ptr %i1974, align 4
  %1636 = load ptr, ptr %d__.addr, align 8
  %1637 = load i32, ptr %i__7, align 4
  %idxprom1976 = sext i32 %1637 to i64
  %arrayidx1977 = getelementptr inbounds %struct.complex, ptr %1636, i64 %idxprom1976
  %i1978 = getelementptr inbounds %struct.complex, ptr %arrayidx1977, i32 0, i32 1
  %1638 = load float, ptr %i1978, align 4
  %1639 = load ptr, ptr %x.addr, align 8
  %1640 = load i32, ptr %i__8, align 4
  %idxprom1979 = sext i32 %1640 to i64
  %arrayidx1980 = getelementptr inbounds %struct.complex, ptr %1639, i64 %idxprom1979
  %r1981 = getelementptr inbounds %struct.complex, ptr %arrayidx1980, i32 0, i32 0
  %1641 = load float, ptr %r1981, align 4
  %mul1982 = fmul float %1638, %1641
  %1642 = call float @llvm.fmuladd.f32(float %1632, float %1635, float %mul1982)
  %i1983 = getelementptr inbounds %struct.complex, ptr %q__5, i32 0, i32 1
  store float %1642, ptr %i1983, align 4
  %r1984 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 0
  %1643 = load float, ptr %r1984, align 4
  %r1985 = getelementptr inbounds %struct.complex, ptr %q__5, i32 0, i32 0
  %1644 = load float, ptr %r1985, align 4
  %sub1986 = fsub float %1643, %1644
  %r1987 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  store float %sub1986, ptr %r1987, align 4
  %i1988 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 1
  %1645 = load float, ptr %i1988, align 4
  %i1989 = getelementptr inbounds %struct.complex, ptr %q__5, i32 0, i32 1
  %1646 = load float, ptr %i1989, align 4
  %sub1990 = fsub float %1645, %1646
  %i1991 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  store float %sub1990, ptr %i1991, align 4
  %1647 = load i32, ptr %i__, align 4
  store i32 %1647, ptr %i__9, align 4
  %1648 = load i32, ptr %i__, align 4
  %add1992 = add nsw i32 %1648, 1
  %1649 = load i32, ptr %j, align 4
  %1650 = load i32, ptr %x_dim1, align 4
  %mul1993 = mul nsw i32 %1649, %1650
  %add1994 = add nsw i32 %add1992, %mul1993
  store i32 %add1994, ptr %i__10, align 4
  %1651 = load ptr, ptr %dl.addr, align 8
  %1652 = load i32, ptr %i__9, align 4
  %idxprom1995 = sext i32 %1652 to i64
  %arrayidx1996 = getelementptr inbounds %struct.complex, ptr %1651, i64 %idxprom1995
  %r1997 = getelementptr inbounds %struct.complex, ptr %arrayidx1996, i32 0, i32 0
  %1653 = load float, ptr %r1997, align 4
  %1654 = load ptr, ptr %x.addr, align 8
  %1655 = load i32, ptr %i__10, align 4
  %idxprom1998 = sext i32 %1655 to i64
  %arrayidx1999 = getelementptr inbounds %struct.complex, ptr %1654, i64 %idxprom1998
  %r2000 = getelementptr inbounds %struct.complex, ptr %arrayidx1999, i32 0, i32 0
  %1656 = load float, ptr %r2000, align 4
  %1657 = load ptr, ptr %dl.addr, align 8
  %1658 = load i32, ptr %i__9, align 4
  %idxprom2002 = sext i32 %1658 to i64
  %arrayidx2003 = getelementptr inbounds %struct.complex, ptr %1657, i64 %idxprom2002
  %i2004 = getelementptr inbounds %struct.complex, ptr %arrayidx2003, i32 0, i32 1
  %1659 = load float, ptr %i2004, align 4
  %1660 = load ptr, ptr %x.addr, align 8
  %1661 = load i32, ptr %i__10, align 4
  %idxprom2005 = sext i32 %1661 to i64
  %arrayidx2006 = getelementptr inbounds %struct.complex, ptr %1660, i64 %idxprom2005
  %i2007 = getelementptr inbounds %struct.complex, ptr %arrayidx2006, i32 0, i32 1
  %1662 = load float, ptr %i2007, align 4
  %mul2008 = fmul float %1659, %1662
  %neg2009 = fneg float %mul2008
  %1663 = call float @llvm.fmuladd.f32(float %1653, float %1656, float %neg2009)
  %r2010 = getelementptr inbounds %struct.complex, ptr %q__6, i32 0, i32 0
  store float %1663, ptr %r2010, align 4
  %1664 = load ptr, ptr %dl.addr, align 8
  %1665 = load i32, ptr %i__9, align 4
  %idxprom2011 = sext i32 %1665 to i64
  %arrayidx2012 = getelementptr inbounds %struct.complex, ptr %1664, i64 %idxprom2011
  %r2013 = getelementptr inbounds %struct.complex, ptr %arrayidx2012, i32 0, i32 0
  %1666 = load float, ptr %r2013, align 4
  %1667 = load ptr, ptr %x.addr, align 8
  %1668 = load i32, ptr %i__10, align 4
  %idxprom2014 = sext i32 %1668 to i64
  %arrayidx2015 = getelementptr inbounds %struct.complex, ptr %1667, i64 %idxprom2014
  %i2016 = getelementptr inbounds %struct.complex, ptr %arrayidx2015, i32 0, i32 1
  %1669 = load float, ptr %i2016, align 4
  %1670 = load ptr, ptr %dl.addr, align 8
  %1671 = load i32, ptr %i__9, align 4
  %idxprom2018 = sext i32 %1671 to i64
  %arrayidx2019 = getelementptr inbounds %struct.complex, ptr %1670, i64 %idxprom2018
  %i2020 = getelementptr inbounds %struct.complex, ptr %arrayidx2019, i32 0, i32 1
  %1672 = load float, ptr %i2020, align 4
  %1673 = load ptr, ptr %x.addr, align 8
  %1674 = load i32, ptr %i__10, align 4
  %idxprom2021 = sext i32 %1674 to i64
  %arrayidx2022 = getelementptr inbounds %struct.complex, ptr %1673, i64 %idxprom2021
  %r2023 = getelementptr inbounds %struct.complex, ptr %arrayidx2022, i32 0, i32 0
  %1675 = load float, ptr %r2023, align 4
  %mul2024 = fmul float %1672, %1675
  %1676 = call float @llvm.fmuladd.f32(float %1666, float %1669, float %mul2024)
  %i2025 = getelementptr inbounds %struct.complex, ptr %q__6, i32 0, i32 1
  store float %1676, ptr %i2025, align 4
  %r2026 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  %1677 = load float, ptr %r2026, align 4
  %r2027 = getelementptr inbounds %struct.complex, ptr %q__6, i32 0, i32 0
  %1678 = load float, ptr %r2027, align 4
  %sub2028 = fsub float %1677, %1678
  %r2029 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float %sub2028, ptr %r2029, align 4
  %i2030 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  %1679 = load float, ptr %i2030, align 4
  %i2031 = getelementptr inbounds %struct.complex, ptr %q__6, i32 0, i32 1
  %1680 = load float, ptr %i2031, align 4
  %sub2032 = fsub float %1679, %1680
  %i2033 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float %sub2032, ptr %i2033, align 4
  %r2034 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %1681 = load float, ptr %r2034, align 4
  %1682 = load ptr, ptr %b.addr, align 8
  %1683 = load i32, ptr %i__3, align 4
  %idxprom2035 = sext i32 %1683 to i64
  %arrayidx2036 = getelementptr inbounds %struct.complex, ptr %1682, i64 %idxprom2035
  %r2037 = getelementptr inbounds %struct.complex, ptr %arrayidx2036, i32 0, i32 0
  store float %1681, ptr %r2037, align 4
  %i2038 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %1684 = load float, ptr %i2038, align 4
  %1685 = load ptr, ptr %b.addr, align 8
  %1686 = load i32, ptr %i__3, align 4
  %idxprom2039 = sext i32 %1686 to i64
  %arrayidx2040 = getelementptr inbounds %struct.complex, ptr %1685, i64 %idxprom2039
  %i2041 = getelementptr inbounds %struct.complex, ptr %arrayidx2040, i32 0, i32 1
  store float %1684, ptr %i2041, align 4
  br label %for.inc2042

for.inc2042:                                      ; preds = %for.body1899
  %1687 = load i32, ptr %i__, align 4
  %inc2043 = add nsw i32 %1687, 1
  store i32 %inc2043, ptr %i__, align 4
  br label %for.cond1897, !llvm.loop !18

for.end2044:                                      ; preds = %for.cond1897
  br label %if.end2045

if.end2045:                                       ; preds = %for.end2044, %if.then1651
  br label %for.inc2046

for.inc2046:                                      ; preds = %if.end2045
  %1688 = load i32, ptr %j, align 4
  %inc2047 = add nsw i32 %1688, 1
  store i32 %inc2047, ptr %j, align 4
  br label %for.cond1647, !llvm.loop !19

for.end2048:                                      ; preds = %for.cond1647
  br label %if.end2417

if.else2049:                                      ; preds = %if.else1643
  %1689 = load ptr, ptr %trans.addr, align 8
  %call2050 = call i32 @lsame_(ptr noundef %1689, ptr noundef @.str.2)
  %tobool2051 = icmp ne i32 %call2050, 0
  br i1 %tobool2051, label %if.then2052, label %if.end2416

if.then2052:                                      ; preds = %if.else2049
  %1690 = load ptr, ptr %nrhs.addr, align 8
  %1691 = load i32, ptr %1690, align 4
  store i32 %1691, ptr %i__1, align 4
  store i32 1, ptr %j, align 4
  br label %for.cond2053

for.cond2053:                                     ; preds = %for.inc2413, %if.then2052
  %1692 = load i32, ptr %j, align 4
  %1693 = load i32, ptr %i__1, align 4
  %cmp2054 = icmp sle i32 %1692, %1693
  br i1 %cmp2054, label %for.body2055, label %for.end2415

for.body2055:                                     ; preds = %for.cond2053
  %1694 = load ptr, ptr %n.addr, align 8
  %1695 = load i32, ptr %1694, align 4
  %cmp2056 = icmp eq i32 %1695, 1
  br i1 %cmp2056, label %if.then2057, label %if.else2108

if.then2057:                                      ; preds = %for.body2055
  %1696 = load i32, ptr %j, align 4
  %1697 = load i32, ptr %b_dim1, align 4
  %mul2058 = mul nsw i32 %1696, %1697
  %add2059 = add nsw i32 %mul2058, 1
  store i32 %add2059, ptr %i__2, align 4
  %1698 = load i32, ptr %j, align 4
  %1699 = load i32, ptr %b_dim1, align 4
  %mul2060 = mul nsw i32 %1698, %1699
  %add2061 = add nsw i32 %mul2060, 1
  store i32 %add2061, ptr %i__3, align 4
  %1700 = load ptr, ptr %d__.addr, align 8
  %arrayidx2062 = getelementptr inbounds %struct.complex, ptr %1700, i64 1
  call void @r_cnjg(ptr noundef %q__3, ptr noundef %arrayidx2062)
  %1701 = load i32, ptr %j, align 4
  %1702 = load i32, ptr %x_dim1, align 4
  %mul2063 = mul nsw i32 %1701, %1702
  %add2064 = add nsw i32 %mul2063, 1
  store i32 %add2064, ptr %i__4, align 4
  %r2065 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 0
  %1703 = load float, ptr %r2065, align 4
  %1704 = load ptr, ptr %x.addr, align 8
  %1705 = load i32, ptr %i__4, align 4
  %idxprom2066 = sext i32 %1705 to i64
  %arrayidx2067 = getelementptr inbounds %struct.complex, ptr %1704, i64 %idxprom2066
  %r2068 = getelementptr inbounds %struct.complex, ptr %arrayidx2067, i32 0, i32 0
  %1706 = load float, ptr %r2068, align 4
  %i2070 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 1
  %1707 = load float, ptr %i2070, align 4
  %1708 = load ptr, ptr %x.addr, align 8
  %1709 = load i32, ptr %i__4, align 4
  %idxprom2071 = sext i32 %1709 to i64
  %arrayidx2072 = getelementptr inbounds %struct.complex, ptr %1708, i64 %idxprom2071
  %i2073 = getelementptr inbounds %struct.complex, ptr %arrayidx2072, i32 0, i32 1
  %1710 = load float, ptr %i2073, align 4
  %mul2074 = fmul float %1707, %1710
  %neg2075 = fneg float %mul2074
  %1711 = call float @llvm.fmuladd.f32(float %1703, float %1706, float %neg2075)
  %r2076 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  store float %1711, ptr %r2076, align 4
  %r2077 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 0
  %1712 = load float, ptr %r2077, align 4
  %1713 = load ptr, ptr %x.addr, align 8
  %1714 = load i32, ptr %i__4, align 4
  %idxprom2078 = sext i32 %1714 to i64
  %arrayidx2079 = getelementptr inbounds %struct.complex, ptr %1713, i64 %idxprom2078
  %i2080 = getelementptr inbounds %struct.complex, ptr %arrayidx2079, i32 0, i32 1
  %1715 = load float, ptr %i2080, align 4
  %i2082 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 1
  %1716 = load float, ptr %i2082, align 4
  %1717 = load ptr, ptr %x.addr, align 8
  %1718 = load i32, ptr %i__4, align 4
  %idxprom2083 = sext i32 %1718 to i64
  %arrayidx2084 = getelementptr inbounds %struct.complex, ptr %1717, i64 %idxprom2083
  %r2085 = getelementptr inbounds %struct.complex, ptr %arrayidx2084, i32 0, i32 0
  %1719 = load float, ptr %r2085, align 4
  %mul2086 = fmul float %1716, %1719
  %1720 = call float @llvm.fmuladd.f32(float %1712, float %1715, float %mul2086)
  %i2087 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  store float %1720, ptr %i2087, align 4
  %1721 = load ptr, ptr %b.addr, align 8
  %1722 = load i32, ptr %i__3, align 4
  %idxprom2088 = sext i32 %1722 to i64
  %arrayidx2089 = getelementptr inbounds %struct.complex, ptr %1721, i64 %idxprom2088
  %r2090 = getelementptr inbounds %struct.complex, ptr %arrayidx2089, i32 0, i32 0
  %1723 = load float, ptr %r2090, align 4
  %r2091 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  %1724 = load float, ptr %r2091, align 4
  %sub2092 = fsub float %1723, %1724
  %r2093 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float %sub2092, ptr %r2093, align 4
  %1725 = load ptr, ptr %b.addr, align 8
  %1726 = load i32, ptr %i__3, align 4
  %idxprom2094 = sext i32 %1726 to i64
  %arrayidx2095 = getelementptr inbounds %struct.complex, ptr %1725, i64 %idxprom2094
  %i2096 = getelementptr inbounds %struct.complex, ptr %arrayidx2095, i32 0, i32 1
  %1727 = load float, ptr %i2096, align 4
  %i2097 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  %1728 = load float, ptr %i2097, align 4
  %sub2098 = fsub float %1727, %1728
  %i2099 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float %sub2098, ptr %i2099, align 4
  %r2100 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %1729 = load float, ptr %r2100, align 4
  %1730 = load ptr, ptr %b.addr, align 8
  %1731 = load i32, ptr %i__2, align 4
  %idxprom2101 = sext i32 %1731 to i64
  %arrayidx2102 = getelementptr inbounds %struct.complex, ptr %1730, i64 %idxprom2101
  %r2103 = getelementptr inbounds %struct.complex, ptr %arrayidx2102, i32 0, i32 0
  store float %1729, ptr %r2103, align 4
  %i2104 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %1732 = load float, ptr %i2104, align 4
  %1733 = load ptr, ptr %b.addr, align 8
  %1734 = load i32, ptr %i__2, align 4
  %idxprom2105 = sext i32 %1734 to i64
  %arrayidx2106 = getelementptr inbounds %struct.complex, ptr %1733, i64 %idxprom2105
  %i2107 = getelementptr inbounds %struct.complex, ptr %arrayidx2106, i32 0, i32 1
  store float %1732, ptr %i2107, align 4
  br label %if.end2412

if.else2108:                                      ; preds = %for.body2055
  %1735 = load i32, ptr %j, align 4
  %1736 = load i32, ptr %b_dim1, align 4
  %mul2109 = mul nsw i32 %1735, %1736
  %add2110 = add nsw i32 %mul2109, 1
  store i32 %add2110, ptr %i__2, align 4
  %1737 = load i32, ptr %j, align 4
  %1738 = load i32, ptr %b_dim1, align 4
  %mul2111 = mul nsw i32 %1737, %1738
  %add2112 = add nsw i32 %mul2111, 1
  store i32 %add2112, ptr %i__3, align 4
  %1739 = load ptr, ptr %d__.addr, align 8
  %arrayidx2113 = getelementptr inbounds %struct.complex, ptr %1739, i64 1
  call void @r_cnjg(ptr noundef %q__4, ptr noundef %arrayidx2113)
  %1740 = load i32, ptr %j, align 4
  %1741 = load i32, ptr %x_dim1, align 4
  %mul2114 = mul nsw i32 %1740, %1741
  %add2115 = add nsw i32 %mul2114, 1
  store i32 %add2115, ptr %i__4, align 4
  %r2116 = getelementptr inbounds %struct.complex, ptr %q__4, i32 0, i32 0
  %1742 = load float, ptr %r2116, align 4
  %1743 = load ptr, ptr %x.addr, align 8
  %1744 = load i32, ptr %i__4, align 4
  %idxprom2117 = sext i32 %1744 to i64
  %arrayidx2118 = getelementptr inbounds %struct.complex, ptr %1743, i64 %idxprom2117
  %r2119 = getelementptr inbounds %struct.complex, ptr %arrayidx2118, i32 0, i32 0
  %1745 = load float, ptr %r2119, align 4
  %i2121 = getelementptr inbounds %struct.complex, ptr %q__4, i32 0, i32 1
  %1746 = load float, ptr %i2121, align 4
  %1747 = load ptr, ptr %x.addr, align 8
  %1748 = load i32, ptr %i__4, align 4
  %idxprom2122 = sext i32 %1748 to i64
  %arrayidx2123 = getelementptr inbounds %struct.complex, ptr %1747, i64 %idxprom2122
  %i2124 = getelementptr inbounds %struct.complex, ptr %arrayidx2123, i32 0, i32 1
  %1749 = load float, ptr %i2124, align 4
  %mul2125 = fmul float %1746, %1749
  %neg2126 = fneg float %mul2125
  %1750 = call float @llvm.fmuladd.f32(float %1742, float %1745, float %neg2126)
  %r2127 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 0
  store float %1750, ptr %r2127, align 4
  %r2128 = getelementptr inbounds %struct.complex, ptr %q__4, i32 0, i32 0
  %1751 = load float, ptr %r2128, align 4
  %1752 = load ptr, ptr %x.addr, align 8
  %1753 = load i32, ptr %i__4, align 4
  %idxprom2129 = sext i32 %1753 to i64
  %arrayidx2130 = getelementptr inbounds %struct.complex, ptr %1752, i64 %idxprom2129
  %i2131 = getelementptr inbounds %struct.complex, ptr %arrayidx2130, i32 0, i32 1
  %1754 = load float, ptr %i2131, align 4
  %i2133 = getelementptr inbounds %struct.complex, ptr %q__4, i32 0, i32 1
  %1755 = load float, ptr %i2133, align 4
  %1756 = load ptr, ptr %x.addr, align 8
  %1757 = load i32, ptr %i__4, align 4
  %idxprom2134 = sext i32 %1757 to i64
  %arrayidx2135 = getelementptr inbounds %struct.complex, ptr %1756, i64 %idxprom2134
  %r2136 = getelementptr inbounds %struct.complex, ptr %arrayidx2135, i32 0, i32 0
  %1758 = load float, ptr %r2136, align 4
  %mul2137 = fmul float %1755, %1758
  %1759 = call float @llvm.fmuladd.f32(float %1751, float %1754, float %mul2137)
  %i2138 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 1
  store float %1759, ptr %i2138, align 4
  %1760 = load ptr, ptr %b.addr, align 8
  %1761 = load i32, ptr %i__3, align 4
  %idxprom2139 = sext i32 %1761 to i64
  %arrayidx2140 = getelementptr inbounds %struct.complex, ptr %1760, i64 %idxprom2139
  %r2141 = getelementptr inbounds %struct.complex, ptr %arrayidx2140, i32 0, i32 0
  %1762 = load float, ptr %r2141, align 4
  %r2142 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 0
  %1763 = load float, ptr %r2142, align 4
  %sub2143 = fsub float %1762, %1763
  %r2144 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  store float %sub2143, ptr %r2144, align 4
  %1764 = load ptr, ptr %b.addr, align 8
  %1765 = load i32, ptr %i__3, align 4
  %idxprom2145 = sext i32 %1765 to i64
  %arrayidx2146 = getelementptr inbounds %struct.complex, ptr %1764, i64 %idxprom2145
  %i2147 = getelementptr inbounds %struct.complex, ptr %arrayidx2146, i32 0, i32 1
  %1766 = load float, ptr %i2147, align 4
  %i2148 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 1
  %1767 = load float, ptr %i2148, align 4
  %sub2149 = fsub float %1766, %1767
  %i2150 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  store float %sub2149, ptr %i2150, align 4
  %1768 = load ptr, ptr %dl.addr, align 8
  %arrayidx2151 = getelementptr inbounds %struct.complex, ptr %1768, i64 1
  call void @r_cnjg(ptr noundef %q__6, ptr noundef %arrayidx2151)
  %1769 = load i32, ptr %j, align 4
  %1770 = load i32, ptr %x_dim1, align 4
  %mul2152 = mul nsw i32 %1769, %1770
  %add2153 = add nsw i32 %mul2152, 2
  store i32 %add2153, ptr %i__5, align 4
  %r2154 = getelementptr inbounds %struct.complex, ptr %q__6, i32 0, i32 0
  %1771 = load float, ptr %r2154, align 4
  %1772 = load ptr, ptr %x.addr, align 8
  %1773 = load i32, ptr %i__5, align 4
  %idxprom2155 = sext i32 %1773 to i64
  %arrayidx2156 = getelementptr inbounds %struct.complex, ptr %1772, i64 %idxprom2155
  %r2157 = getelementptr inbounds %struct.complex, ptr %arrayidx2156, i32 0, i32 0
  %1774 = load float, ptr %r2157, align 4
  %i2159 = getelementptr inbounds %struct.complex, ptr %q__6, i32 0, i32 1
  %1775 = load float, ptr %i2159, align 4
  %1776 = load ptr, ptr %x.addr, align 8
  %1777 = load i32, ptr %i__5, align 4
  %idxprom2160 = sext i32 %1777 to i64
  %arrayidx2161 = getelementptr inbounds %struct.complex, ptr %1776, i64 %idxprom2160
  %i2162 = getelementptr inbounds %struct.complex, ptr %arrayidx2161, i32 0, i32 1
  %1778 = load float, ptr %i2162, align 4
  %mul2163 = fmul float %1775, %1778
  %neg2164 = fneg float %mul2163
  %1779 = call float @llvm.fmuladd.f32(float %1771, float %1774, float %neg2164)
  %r2165 = getelementptr inbounds %struct.complex, ptr %q__5, i32 0, i32 0
  store float %1779, ptr %r2165, align 4
  %r2166 = getelementptr inbounds %struct.complex, ptr %q__6, i32 0, i32 0
  %1780 = load float, ptr %r2166, align 4
  %1781 = load ptr, ptr %x.addr, align 8
  %1782 = load i32, ptr %i__5, align 4
  %idxprom2167 = sext i32 %1782 to i64
  %arrayidx2168 = getelementptr inbounds %struct.complex, ptr %1781, i64 %idxprom2167
  %i2169 = getelementptr inbounds %struct.complex, ptr %arrayidx2168, i32 0, i32 1
  %1783 = load float, ptr %i2169, align 4
  %i2171 = getelementptr inbounds %struct.complex, ptr %q__6, i32 0, i32 1
  %1784 = load float, ptr %i2171, align 4
  %1785 = load ptr, ptr %x.addr, align 8
  %1786 = load i32, ptr %i__5, align 4
  %idxprom2172 = sext i32 %1786 to i64
  %arrayidx2173 = getelementptr inbounds %struct.complex, ptr %1785, i64 %idxprom2172
  %r2174 = getelementptr inbounds %struct.complex, ptr %arrayidx2173, i32 0, i32 0
  %1787 = load float, ptr %r2174, align 4
  %mul2175 = fmul float %1784, %1787
  %1788 = call float @llvm.fmuladd.f32(float %1780, float %1783, float %mul2175)
  %i2176 = getelementptr inbounds %struct.complex, ptr %q__5, i32 0, i32 1
  store float %1788, ptr %i2176, align 4
  %r2177 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  %1789 = load float, ptr %r2177, align 4
  %r2178 = getelementptr inbounds %struct.complex, ptr %q__5, i32 0, i32 0
  %1790 = load float, ptr %r2178, align 4
  %sub2179 = fsub float %1789, %1790
  %r2180 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float %sub2179, ptr %r2180, align 4
  %i2181 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  %1791 = load float, ptr %i2181, align 4
  %i2182 = getelementptr inbounds %struct.complex, ptr %q__5, i32 0, i32 1
  %1792 = load float, ptr %i2182, align 4
  %sub2183 = fsub float %1791, %1792
  %i2184 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float %sub2183, ptr %i2184, align 4
  %r2185 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %1793 = load float, ptr %r2185, align 4
  %1794 = load ptr, ptr %b.addr, align 8
  %1795 = load i32, ptr %i__2, align 4
  %idxprom2186 = sext i32 %1795 to i64
  %arrayidx2187 = getelementptr inbounds %struct.complex, ptr %1794, i64 %idxprom2186
  %r2188 = getelementptr inbounds %struct.complex, ptr %arrayidx2187, i32 0, i32 0
  store float %1793, ptr %r2188, align 4
  %i2189 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %1796 = load float, ptr %i2189, align 4
  %1797 = load ptr, ptr %b.addr, align 8
  %1798 = load i32, ptr %i__2, align 4
  %idxprom2190 = sext i32 %1798 to i64
  %arrayidx2191 = getelementptr inbounds %struct.complex, ptr %1797, i64 %idxprom2190
  %i2192 = getelementptr inbounds %struct.complex, ptr %arrayidx2191, i32 0, i32 1
  store float %1796, ptr %i2192, align 4
  %1799 = load ptr, ptr %n.addr, align 8
  %1800 = load i32, ptr %1799, align 4
  %1801 = load i32, ptr %j, align 4
  %1802 = load i32, ptr %b_dim1, align 4
  %mul2193 = mul nsw i32 %1801, %1802
  %add2194 = add nsw i32 %1800, %mul2193
  store i32 %add2194, ptr %i__2, align 4
  %1803 = load ptr, ptr %n.addr, align 8
  %1804 = load i32, ptr %1803, align 4
  %1805 = load i32, ptr %j, align 4
  %1806 = load i32, ptr %b_dim1, align 4
  %mul2195 = mul nsw i32 %1805, %1806
  %add2196 = add nsw i32 %1804, %mul2195
  store i32 %add2196, ptr %i__3, align 4
  %1807 = load ptr, ptr %du.addr, align 8
  %1808 = load ptr, ptr %n.addr, align 8
  %1809 = load i32, ptr %1808, align 4
  %sub2197 = sub nsw i32 %1809, 1
  %idxprom2198 = sext i32 %sub2197 to i64
  %arrayidx2199 = getelementptr inbounds %struct.complex, ptr %1807, i64 %idxprom2198
  call void @r_cnjg(ptr noundef %q__4, ptr noundef %arrayidx2199)
  %1810 = load ptr, ptr %n.addr, align 8
  %1811 = load i32, ptr %1810, align 4
  %sub2200 = sub nsw i32 %1811, 1
  %1812 = load i32, ptr %j, align 4
  %1813 = load i32, ptr %x_dim1, align 4
  %mul2201 = mul nsw i32 %1812, %1813
  %add2202 = add nsw i32 %sub2200, %mul2201
  store i32 %add2202, ptr %i__4, align 4
  %r2203 = getelementptr inbounds %struct.complex, ptr %q__4, i32 0, i32 0
  %1814 = load float, ptr %r2203, align 4
  %1815 = load ptr, ptr %x.addr, align 8
  %1816 = load i32, ptr %i__4, align 4
  %idxprom2204 = sext i32 %1816 to i64
  %arrayidx2205 = getelementptr inbounds %struct.complex, ptr %1815, i64 %idxprom2204
  %r2206 = getelementptr inbounds %struct.complex, ptr %arrayidx2205, i32 0, i32 0
  %1817 = load float, ptr %r2206, align 4
  %i2208 = getelementptr inbounds %struct.complex, ptr %q__4, i32 0, i32 1
  %1818 = load float, ptr %i2208, align 4
  %1819 = load ptr, ptr %x.addr, align 8
  %1820 = load i32, ptr %i__4, align 4
  %idxprom2209 = sext i32 %1820 to i64
  %arrayidx2210 = getelementptr inbounds %struct.complex, ptr %1819, i64 %idxprom2209
  %i2211 = getelementptr inbounds %struct.complex, ptr %arrayidx2210, i32 0, i32 1
  %1821 = load float, ptr %i2211, align 4
  %mul2212 = fmul float %1818, %1821
  %neg2213 = fneg float %mul2212
  %1822 = call float @llvm.fmuladd.f32(float %1814, float %1817, float %neg2213)
  %r2214 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 0
  store float %1822, ptr %r2214, align 4
  %r2215 = getelementptr inbounds %struct.complex, ptr %q__4, i32 0, i32 0
  %1823 = load float, ptr %r2215, align 4
  %1824 = load ptr, ptr %x.addr, align 8
  %1825 = load i32, ptr %i__4, align 4
  %idxprom2216 = sext i32 %1825 to i64
  %arrayidx2217 = getelementptr inbounds %struct.complex, ptr %1824, i64 %idxprom2216
  %i2218 = getelementptr inbounds %struct.complex, ptr %arrayidx2217, i32 0, i32 1
  %1826 = load float, ptr %i2218, align 4
  %i2220 = getelementptr inbounds %struct.complex, ptr %q__4, i32 0, i32 1
  %1827 = load float, ptr %i2220, align 4
  %1828 = load ptr, ptr %x.addr, align 8
  %1829 = load i32, ptr %i__4, align 4
  %idxprom2221 = sext i32 %1829 to i64
  %arrayidx2222 = getelementptr inbounds %struct.complex, ptr %1828, i64 %idxprom2221
  %r2223 = getelementptr inbounds %struct.complex, ptr %arrayidx2222, i32 0, i32 0
  %1830 = load float, ptr %r2223, align 4
  %mul2224 = fmul float %1827, %1830
  %1831 = call float @llvm.fmuladd.f32(float %1823, float %1826, float %mul2224)
  %i2225 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 1
  store float %1831, ptr %i2225, align 4
  %1832 = load ptr, ptr %b.addr, align 8
  %1833 = load i32, ptr %i__3, align 4
  %idxprom2226 = sext i32 %1833 to i64
  %arrayidx2227 = getelementptr inbounds %struct.complex, ptr %1832, i64 %idxprom2226
  %r2228 = getelementptr inbounds %struct.complex, ptr %arrayidx2227, i32 0, i32 0
  %1834 = load float, ptr %r2228, align 4
  %r2229 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 0
  %1835 = load float, ptr %r2229, align 4
  %sub2230 = fsub float %1834, %1835
  %r2231 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  store float %sub2230, ptr %r2231, align 4
  %1836 = load ptr, ptr %b.addr, align 8
  %1837 = load i32, ptr %i__3, align 4
  %idxprom2232 = sext i32 %1837 to i64
  %arrayidx2233 = getelementptr inbounds %struct.complex, ptr %1836, i64 %idxprom2232
  %i2234 = getelementptr inbounds %struct.complex, ptr %arrayidx2233, i32 0, i32 1
  %1838 = load float, ptr %i2234, align 4
  %i2235 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 1
  %1839 = load float, ptr %i2235, align 4
  %sub2236 = fsub float %1838, %1839
  %i2237 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  store float %sub2236, ptr %i2237, align 4
  %1840 = load ptr, ptr %d__.addr, align 8
  %1841 = load ptr, ptr %n.addr, align 8
  %1842 = load i32, ptr %1841, align 4
  %idxprom2238 = sext i32 %1842 to i64
  %arrayidx2239 = getelementptr inbounds %struct.complex, ptr %1840, i64 %idxprom2238
  call void @r_cnjg(ptr noundef %q__6, ptr noundef %arrayidx2239)
  %1843 = load ptr, ptr %n.addr, align 8
  %1844 = load i32, ptr %1843, align 4
  %1845 = load i32, ptr %j, align 4
  %1846 = load i32, ptr %x_dim1, align 4
  %mul2240 = mul nsw i32 %1845, %1846
  %add2241 = add nsw i32 %1844, %mul2240
  store i32 %add2241, ptr %i__5, align 4
  %r2242 = getelementptr inbounds %struct.complex, ptr %q__6, i32 0, i32 0
  %1847 = load float, ptr %r2242, align 4
  %1848 = load ptr, ptr %x.addr, align 8
  %1849 = load i32, ptr %i__5, align 4
  %idxprom2243 = sext i32 %1849 to i64
  %arrayidx2244 = getelementptr inbounds %struct.complex, ptr %1848, i64 %idxprom2243
  %r2245 = getelementptr inbounds %struct.complex, ptr %arrayidx2244, i32 0, i32 0
  %1850 = load float, ptr %r2245, align 4
  %i2247 = getelementptr inbounds %struct.complex, ptr %q__6, i32 0, i32 1
  %1851 = load float, ptr %i2247, align 4
  %1852 = load ptr, ptr %x.addr, align 8
  %1853 = load i32, ptr %i__5, align 4
  %idxprom2248 = sext i32 %1853 to i64
  %arrayidx2249 = getelementptr inbounds %struct.complex, ptr %1852, i64 %idxprom2248
  %i2250 = getelementptr inbounds %struct.complex, ptr %arrayidx2249, i32 0, i32 1
  %1854 = load float, ptr %i2250, align 4
  %mul2251 = fmul float %1851, %1854
  %neg2252 = fneg float %mul2251
  %1855 = call float @llvm.fmuladd.f32(float %1847, float %1850, float %neg2252)
  %r2253 = getelementptr inbounds %struct.complex, ptr %q__5, i32 0, i32 0
  store float %1855, ptr %r2253, align 4
  %r2254 = getelementptr inbounds %struct.complex, ptr %q__6, i32 0, i32 0
  %1856 = load float, ptr %r2254, align 4
  %1857 = load ptr, ptr %x.addr, align 8
  %1858 = load i32, ptr %i__5, align 4
  %idxprom2255 = sext i32 %1858 to i64
  %arrayidx2256 = getelementptr inbounds %struct.complex, ptr %1857, i64 %idxprom2255
  %i2257 = getelementptr inbounds %struct.complex, ptr %arrayidx2256, i32 0, i32 1
  %1859 = load float, ptr %i2257, align 4
  %i2259 = getelementptr inbounds %struct.complex, ptr %q__6, i32 0, i32 1
  %1860 = load float, ptr %i2259, align 4
  %1861 = load ptr, ptr %x.addr, align 8
  %1862 = load i32, ptr %i__5, align 4
  %idxprom2260 = sext i32 %1862 to i64
  %arrayidx2261 = getelementptr inbounds %struct.complex, ptr %1861, i64 %idxprom2260
  %r2262 = getelementptr inbounds %struct.complex, ptr %arrayidx2261, i32 0, i32 0
  %1863 = load float, ptr %r2262, align 4
  %mul2263 = fmul float %1860, %1863
  %1864 = call float @llvm.fmuladd.f32(float %1856, float %1859, float %mul2263)
  %i2264 = getelementptr inbounds %struct.complex, ptr %q__5, i32 0, i32 1
  store float %1864, ptr %i2264, align 4
  %r2265 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  %1865 = load float, ptr %r2265, align 4
  %r2266 = getelementptr inbounds %struct.complex, ptr %q__5, i32 0, i32 0
  %1866 = load float, ptr %r2266, align 4
  %sub2267 = fsub float %1865, %1866
  %r2268 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float %sub2267, ptr %r2268, align 4
  %i2269 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  %1867 = load float, ptr %i2269, align 4
  %i2270 = getelementptr inbounds %struct.complex, ptr %q__5, i32 0, i32 1
  %1868 = load float, ptr %i2270, align 4
  %sub2271 = fsub float %1867, %1868
  %i2272 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float %sub2271, ptr %i2272, align 4
  %r2273 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %1869 = load float, ptr %r2273, align 4
  %1870 = load ptr, ptr %b.addr, align 8
  %1871 = load i32, ptr %i__2, align 4
  %idxprom2274 = sext i32 %1871 to i64
  %arrayidx2275 = getelementptr inbounds %struct.complex, ptr %1870, i64 %idxprom2274
  %r2276 = getelementptr inbounds %struct.complex, ptr %arrayidx2275, i32 0, i32 0
  store float %1869, ptr %r2276, align 4
  %i2277 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %1872 = load float, ptr %i2277, align 4
  %1873 = load ptr, ptr %b.addr, align 8
  %1874 = load i32, ptr %i__2, align 4
  %idxprom2278 = sext i32 %1874 to i64
  %arrayidx2279 = getelementptr inbounds %struct.complex, ptr %1873, i64 %idxprom2278
  %i2280 = getelementptr inbounds %struct.complex, ptr %arrayidx2279, i32 0, i32 1
  store float %1872, ptr %i2280, align 4
  %1875 = load ptr, ptr %n.addr, align 8
  %1876 = load i32, ptr %1875, align 4
  %sub2281 = sub nsw i32 %1876, 1
  store i32 %sub2281, ptr %i__2, align 4
  store i32 2, ptr %i__, align 4
  br label %for.cond2282

for.cond2282:                                     ; preds = %for.inc2409, %if.else2108
  %1877 = load i32, ptr %i__, align 4
  %1878 = load i32, ptr %i__2, align 4
  %cmp2283 = icmp sle i32 %1877, %1878
  br i1 %cmp2283, label %for.body2284, label %for.end2411

for.body2284:                                     ; preds = %for.cond2282
  %1879 = load i32, ptr %i__, align 4
  %1880 = load i32, ptr %j, align 4
  %1881 = load i32, ptr %b_dim1, align 4
  %mul2285 = mul nsw i32 %1880, %1881
  %add2286 = add nsw i32 %1879, %mul2285
  store i32 %add2286, ptr %i__3, align 4
  %1882 = load i32, ptr %i__, align 4
  %1883 = load i32, ptr %j, align 4
  %1884 = load i32, ptr %b_dim1, align 4
  %mul2287 = mul nsw i32 %1883, %1884
  %add2288 = add nsw i32 %1882, %mul2287
  store i32 %add2288, ptr %i__4, align 4
  %1885 = load ptr, ptr %du.addr, align 8
  %1886 = load i32, ptr %i__, align 4
  %sub2289 = sub nsw i32 %1886, 1
  %idxprom2290 = sext i32 %sub2289 to i64
  %arrayidx2291 = getelementptr inbounds %struct.complex, ptr %1885, i64 %idxprom2290
  call void @r_cnjg(ptr noundef %q__5, ptr noundef %arrayidx2291)
  %1887 = load i32, ptr %i__, align 4
  %sub2292 = sub nsw i32 %1887, 1
  %1888 = load i32, ptr %j, align 4
  %1889 = load i32, ptr %x_dim1, align 4
  %mul2293 = mul nsw i32 %1888, %1889
  %add2294 = add nsw i32 %sub2292, %mul2293
  store i32 %add2294, ptr %i__5, align 4
  %r2295 = getelementptr inbounds %struct.complex, ptr %q__5, i32 0, i32 0
  %1890 = load float, ptr %r2295, align 4
  %1891 = load ptr, ptr %x.addr, align 8
  %1892 = load i32, ptr %i__5, align 4
  %idxprom2296 = sext i32 %1892 to i64
  %arrayidx2297 = getelementptr inbounds %struct.complex, ptr %1891, i64 %idxprom2296
  %r2298 = getelementptr inbounds %struct.complex, ptr %arrayidx2297, i32 0, i32 0
  %1893 = load float, ptr %r2298, align 4
  %i2300 = getelementptr inbounds %struct.complex, ptr %q__5, i32 0, i32 1
  %1894 = load float, ptr %i2300, align 4
  %1895 = load ptr, ptr %x.addr, align 8
  %1896 = load i32, ptr %i__5, align 4
  %idxprom2301 = sext i32 %1896 to i64
  %arrayidx2302 = getelementptr inbounds %struct.complex, ptr %1895, i64 %idxprom2301
  %i2303 = getelementptr inbounds %struct.complex, ptr %arrayidx2302, i32 0, i32 1
  %1897 = load float, ptr %i2303, align 4
  %mul2304 = fmul float %1894, %1897
  %neg2305 = fneg float %mul2304
  %1898 = call float @llvm.fmuladd.f32(float %1890, float %1893, float %neg2305)
  %r2306 = getelementptr inbounds %struct.complex, ptr %q__4, i32 0, i32 0
  store float %1898, ptr %r2306, align 4
  %r2307 = getelementptr inbounds %struct.complex, ptr %q__5, i32 0, i32 0
  %1899 = load float, ptr %r2307, align 4
  %1900 = load ptr, ptr %x.addr, align 8
  %1901 = load i32, ptr %i__5, align 4
  %idxprom2308 = sext i32 %1901 to i64
  %arrayidx2309 = getelementptr inbounds %struct.complex, ptr %1900, i64 %idxprom2308
  %i2310 = getelementptr inbounds %struct.complex, ptr %arrayidx2309, i32 0, i32 1
  %1902 = load float, ptr %i2310, align 4
  %i2312 = getelementptr inbounds %struct.complex, ptr %q__5, i32 0, i32 1
  %1903 = load float, ptr %i2312, align 4
  %1904 = load ptr, ptr %x.addr, align 8
  %1905 = load i32, ptr %i__5, align 4
  %idxprom2313 = sext i32 %1905 to i64
  %arrayidx2314 = getelementptr inbounds %struct.complex, ptr %1904, i64 %idxprom2313
  %r2315 = getelementptr inbounds %struct.complex, ptr %arrayidx2314, i32 0, i32 0
  %1906 = load float, ptr %r2315, align 4
  %mul2316 = fmul float %1903, %1906
  %1907 = call float @llvm.fmuladd.f32(float %1899, float %1902, float %mul2316)
  %i2317 = getelementptr inbounds %struct.complex, ptr %q__4, i32 0, i32 1
  store float %1907, ptr %i2317, align 4
  %1908 = load ptr, ptr %b.addr, align 8
  %1909 = load i32, ptr %i__4, align 4
  %idxprom2318 = sext i32 %1909 to i64
  %arrayidx2319 = getelementptr inbounds %struct.complex, ptr %1908, i64 %idxprom2318
  %r2320 = getelementptr inbounds %struct.complex, ptr %arrayidx2319, i32 0, i32 0
  %1910 = load float, ptr %r2320, align 4
  %r2321 = getelementptr inbounds %struct.complex, ptr %q__4, i32 0, i32 0
  %1911 = load float, ptr %r2321, align 4
  %sub2322 = fsub float %1910, %1911
  %r2323 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 0
  store float %sub2322, ptr %r2323, align 4
  %1912 = load ptr, ptr %b.addr, align 8
  %1913 = load i32, ptr %i__4, align 4
  %idxprom2324 = sext i32 %1913 to i64
  %arrayidx2325 = getelementptr inbounds %struct.complex, ptr %1912, i64 %idxprom2324
  %i2326 = getelementptr inbounds %struct.complex, ptr %arrayidx2325, i32 0, i32 1
  %1914 = load float, ptr %i2326, align 4
  %i2327 = getelementptr inbounds %struct.complex, ptr %q__4, i32 0, i32 1
  %1915 = load float, ptr %i2327, align 4
  %sub2328 = fsub float %1914, %1915
  %i2329 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 1
  store float %sub2328, ptr %i2329, align 4
  %1916 = load ptr, ptr %d__.addr, align 8
  %1917 = load i32, ptr %i__, align 4
  %idxprom2330 = sext i32 %1917 to i64
  %arrayidx2331 = getelementptr inbounds %struct.complex, ptr %1916, i64 %idxprom2330
  call void @r_cnjg(ptr noundef %q__7, ptr noundef %arrayidx2331)
  %1918 = load i32, ptr %i__, align 4
  %1919 = load i32, ptr %j, align 4
  %1920 = load i32, ptr %x_dim1, align 4
  %mul2332 = mul nsw i32 %1919, %1920
  %add2333 = add nsw i32 %1918, %mul2332
  store i32 %add2333, ptr %i__6, align 4
  %r2334 = getelementptr inbounds %struct.complex, ptr %q__7, i32 0, i32 0
  %1921 = load float, ptr %r2334, align 4
  %1922 = load ptr, ptr %x.addr, align 8
  %1923 = load i32, ptr %i__6, align 4
  %idxprom2335 = sext i32 %1923 to i64
  %arrayidx2336 = getelementptr inbounds %struct.complex, ptr %1922, i64 %idxprom2335
  %r2337 = getelementptr inbounds %struct.complex, ptr %arrayidx2336, i32 0, i32 0
  %1924 = load float, ptr %r2337, align 4
  %i2339 = getelementptr inbounds %struct.complex, ptr %q__7, i32 0, i32 1
  %1925 = load float, ptr %i2339, align 4
  %1926 = load ptr, ptr %x.addr, align 8
  %1927 = load i32, ptr %i__6, align 4
  %idxprom2340 = sext i32 %1927 to i64
  %arrayidx2341 = getelementptr inbounds %struct.complex, ptr %1926, i64 %idxprom2340
  %i2342 = getelementptr inbounds %struct.complex, ptr %arrayidx2341, i32 0, i32 1
  %1928 = load float, ptr %i2342, align 4
  %mul2343 = fmul float %1925, %1928
  %neg2344 = fneg float %mul2343
  %1929 = call float @llvm.fmuladd.f32(float %1921, float %1924, float %neg2344)
  %r2345 = getelementptr inbounds %struct.complex, ptr %q__6, i32 0, i32 0
  store float %1929, ptr %r2345, align 4
  %r2346 = getelementptr inbounds %struct.complex, ptr %q__7, i32 0, i32 0
  %1930 = load float, ptr %r2346, align 4
  %1931 = load ptr, ptr %x.addr, align 8
  %1932 = load i32, ptr %i__6, align 4
  %idxprom2347 = sext i32 %1932 to i64
  %arrayidx2348 = getelementptr inbounds %struct.complex, ptr %1931, i64 %idxprom2347
  %i2349 = getelementptr inbounds %struct.complex, ptr %arrayidx2348, i32 0, i32 1
  %1933 = load float, ptr %i2349, align 4
  %i2351 = getelementptr inbounds %struct.complex, ptr %q__7, i32 0, i32 1
  %1934 = load float, ptr %i2351, align 4
  %1935 = load ptr, ptr %x.addr, align 8
  %1936 = load i32, ptr %i__6, align 4
  %idxprom2352 = sext i32 %1936 to i64
  %arrayidx2353 = getelementptr inbounds %struct.complex, ptr %1935, i64 %idxprom2352
  %r2354 = getelementptr inbounds %struct.complex, ptr %arrayidx2353, i32 0, i32 0
  %1937 = load float, ptr %r2354, align 4
  %mul2355 = fmul float %1934, %1937
  %1938 = call float @llvm.fmuladd.f32(float %1930, float %1933, float %mul2355)
  %i2356 = getelementptr inbounds %struct.complex, ptr %q__6, i32 0, i32 1
  store float %1938, ptr %i2356, align 4
  %r2357 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 0
  %1939 = load float, ptr %r2357, align 4
  %r2358 = getelementptr inbounds %struct.complex, ptr %q__6, i32 0, i32 0
  %1940 = load float, ptr %r2358, align 4
  %sub2359 = fsub float %1939, %1940
  %r2360 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  store float %sub2359, ptr %r2360, align 4
  %i2361 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 1
  %1941 = load float, ptr %i2361, align 4
  %i2362 = getelementptr inbounds %struct.complex, ptr %q__6, i32 0, i32 1
  %1942 = load float, ptr %i2362, align 4
  %sub2363 = fsub float %1941, %1942
  %i2364 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  store float %sub2363, ptr %i2364, align 4
  %1943 = load ptr, ptr %dl.addr, align 8
  %1944 = load i32, ptr %i__, align 4
  %idxprom2365 = sext i32 %1944 to i64
  %arrayidx2366 = getelementptr inbounds %struct.complex, ptr %1943, i64 %idxprom2365
  call void @r_cnjg(ptr noundef %q__9, ptr noundef %arrayidx2366)
  %1945 = load i32, ptr %i__, align 4
  %add2367 = add nsw i32 %1945, 1
  %1946 = load i32, ptr %j, align 4
  %1947 = load i32, ptr %x_dim1, align 4
  %mul2368 = mul nsw i32 %1946, %1947
  %add2369 = add nsw i32 %add2367, %mul2368
  store i32 %add2369, ptr %i__7, align 4
  %r2370 = getelementptr inbounds %struct.complex, ptr %q__9, i32 0, i32 0
  %1948 = load float, ptr %r2370, align 4
  %1949 = load ptr, ptr %x.addr, align 8
  %1950 = load i32, ptr %i__7, align 4
  %idxprom2371 = sext i32 %1950 to i64
  %arrayidx2372 = getelementptr inbounds %struct.complex, ptr %1949, i64 %idxprom2371
  %r2373 = getelementptr inbounds %struct.complex, ptr %arrayidx2372, i32 0, i32 0
  %1951 = load float, ptr %r2373, align 4
  %i2375 = getelementptr inbounds %struct.complex, ptr %q__9, i32 0, i32 1
  %1952 = load float, ptr %i2375, align 4
  %1953 = load ptr, ptr %x.addr, align 8
  %1954 = load i32, ptr %i__7, align 4
  %idxprom2376 = sext i32 %1954 to i64
  %arrayidx2377 = getelementptr inbounds %struct.complex, ptr %1953, i64 %idxprom2376
  %i2378 = getelementptr inbounds %struct.complex, ptr %arrayidx2377, i32 0, i32 1
  %1955 = load float, ptr %i2378, align 4
  %mul2379 = fmul float %1952, %1955
  %neg2380 = fneg float %mul2379
  %1956 = call float @llvm.fmuladd.f32(float %1948, float %1951, float %neg2380)
  %r2381 = getelementptr inbounds %struct.complex, ptr %q__8, i32 0, i32 0
  store float %1956, ptr %r2381, align 4
  %r2382 = getelementptr inbounds %struct.complex, ptr %q__9, i32 0, i32 0
  %1957 = load float, ptr %r2382, align 4
  %1958 = load ptr, ptr %x.addr, align 8
  %1959 = load i32, ptr %i__7, align 4
  %idxprom2383 = sext i32 %1959 to i64
  %arrayidx2384 = getelementptr inbounds %struct.complex, ptr %1958, i64 %idxprom2383
  %i2385 = getelementptr inbounds %struct.complex, ptr %arrayidx2384, i32 0, i32 1
  %1960 = load float, ptr %i2385, align 4
  %i2387 = getelementptr inbounds %struct.complex, ptr %q__9, i32 0, i32 1
  %1961 = load float, ptr %i2387, align 4
  %1962 = load ptr, ptr %x.addr, align 8
  %1963 = load i32, ptr %i__7, align 4
  %idxprom2388 = sext i32 %1963 to i64
  %arrayidx2389 = getelementptr inbounds %struct.complex, ptr %1962, i64 %idxprom2388
  %r2390 = getelementptr inbounds %struct.complex, ptr %arrayidx2389, i32 0, i32 0
  %1964 = load float, ptr %r2390, align 4
  %mul2391 = fmul float %1961, %1964
  %1965 = call float @llvm.fmuladd.f32(float %1957, float %1960, float %mul2391)
  %i2392 = getelementptr inbounds %struct.complex, ptr %q__8, i32 0, i32 1
  store float %1965, ptr %i2392, align 4
  %r2393 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  %1966 = load float, ptr %r2393, align 4
  %r2394 = getelementptr inbounds %struct.complex, ptr %q__8, i32 0, i32 0
  %1967 = load float, ptr %r2394, align 4
  %sub2395 = fsub float %1966, %1967
  %r2396 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float %sub2395, ptr %r2396, align 4
  %i2397 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  %1968 = load float, ptr %i2397, align 4
  %i2398 = getelementptr inbounds %struct.complex, ptr %q__8, i32 0, i32 1
  %1969 = load float, ptr %i2398, align 4
  %sub2399 = fsub float %1968, %1969
  %i2400 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float %sub2399, ptr %i2400, align 4
  %r2401 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %1970 = load float, ptr %r2401, align 4
  %1971 = load ptr, ptr %b.addr, align 8
  %1972 = load i32, ptr %i__3, align 4
  %idxprom2402 = sext i32 %1972 to i64
  %arrayidx2403 = getelementptr inbounds %struct.complex, ptr %1971, i64 %idxprom2402
  %r2404 = getelementptr inbounds %struct.complex, ptr %arrayidx2403, i32 0, i32 0
  store float %1970, ptr %r2404, align 4
  %i2405 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %1973 = load float, ptr %i2405, align 4
  %1974 = load ptr, ptr %b.addr, align 8
  %1975 = load i32, ptr %i__3, align 4
  %idxprom2406 = sext i32 %1975 to i64
  %arrayidx2407 = getelementptr inbounds %struct.complex, ptr %1974, i64 %idxprom2406
  %i2408 = getelementptr inbounds %struct.complex, ptr %arrayidx2407, i32 0, i32 1
  store float %1973, ptr %i2408, align 4
  br label %for.inc2409

for.inc2409:                                      ; preds = %for.body2284
  %1976 = load i32, ptr %i__, align 4
  %inc2410 = add nsw i32 %1976, 1
  store i32 %inc2410, ptr %i__, align 4
  br label %for.cond2282, !llvm.loop !20

for.end2411:                                      ; preds = %for.cond2282
  br label %if.end2412

if.end2412:                                       ; preds = %for.end2411, %if.then2057
  br label %for.inc2413

for.inc2413:                                      ; preds = %if.end2412
  %1977 = load i32, ptr %j, align 4
  %inc2414 = add nsw i32 %1977, 1
  store i32 %inc2414, ptr %j, align 4
  br label %for.cond2053, !llvm.loop !21

for.end2415:                                      ; preds = %for.cond2053
  br label %if.end2416

if.end2416:                                       ; preds = %for.end2415, %if.else2049
  br label %if.end2417

if.end2417:                                       ; preds = %if.end2416, %for.end2048
  br label %if.end2418

if.end2418:                                       ; preds = %if.end2417, %for.end1642
  br label %if.end2419

if.end2419:                                       ; preds = %if.end2418, %if.else1235
  br label %if.end2420

if.end2420:                                       ; preds = %if.end2419, %if.end1234
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end2420, %if.then
  %1978 = load i32, ptr %retval, align 4
  ret i32 %1978
}

declare i32 @lsame_(ptr noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

declare void @r_cnjg(ptr noundef, ptr noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

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

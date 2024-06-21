; ModuleID = 'samples/594.bc'
source_filename = "/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/map/lapack2flamec/f2c/c/zlarf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.doublecomplex = type { double, double }

@.str = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Conjugate transpose\00", align 1
@c_b1 = internal global %struct.doublecomplex { double 1.000000e+00, double 0.000000e+00 }, align 8
@c_b2 = internal global %struct.doublecomplex zeroinitializer, align 8
@c__1 = internal global i32 1, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"No transpose\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @zlarf_(ptr noundef %side, ptr noundef %m, ptr noundef %n, ptr noundef %v, ptr noundef %incv, ptr noundef %tau, ptr noundef %c__, ptr noundef %ldc, ptr noundef %work) #0 {
entry:
  %side.addr = alloca ptr, align 8
  %m.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %incv.addr = alloca ptr, align 8
  %tau.addr = alloca ptr, align 8
  %c__.addr = alloca ptr, align 8
  %ldc.addr = alloca ptr, align 8
  %work.addr = alloca ptr, align 8
  %c_dim1 = alloca i32, align 4
  %c_offset = alloca i32, align 4
  %i__1 = alloca i32, align 4
  %z__1 = alloca %struct.doublecomplex, align 8
  %i__ = alloca i32, align 4
  %applyleft = alloca i32, align 4
  %lastc = alloca i32, align 4
  %lastv = alloca i32, align 4
  store ptr %side, ptr %side.addr, align 8
  store ptr %m, ptr %m.addr, align 8
  store ptr %n, ptr %n.addr, align 8
  store ptr %v, ptr %v.addr, align 8
  store ptr %incv, ptr %incv.addr, align 8
  store ptr %tau, ptr %tau.addr, align 8
  store ptr %c__, ptr %c__.addr, align 8
  store ptr %ldc, ptr %ldc.addr, align 8
  store ptr %work, ptr %work.addr, align 8
  %0 = load ptr, ptr %v.addr, align 8
  %incdec.ptr = getelementptr inbounds %struct.doublecomplex, ptr %0, i32 -1
  store ptr %incdec.ptr, ptr %v.addr, align 8
  %1 = load ptr, ptr %ldc.addr, align 8
  %2 = load i32, ptr %1, align 4
  store i32 %2, ptr %c_dim1, align 4
  %3 = load i32, ptr %c_dim1, align 4
  %add = add nsw i32 1, %3
  store i32 %add, ptr %c_offset, align 4
  %4 = load i32, ptr %c_offset, align 4
  %5 = load ptr, ptr %c__.addr, align 8
  %idx.ext = sext i32 %4 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds %struct.doublecomplex, ptr %5, i64 %idx.neg
  store ptr %add.ptr, ptr %c__.addr, align 8
  %6 = load ptr, ptr %work.addr, align 8
  %incdec.ptr1 = getelementptr inbounds %struct.doublecomplex, ptr %6, i32 -1
  store ptr %incdec.ptr1, ptr %work.addr, align 8
  %7 = load ptr, ptr %side.addr, align 8
  %call = call i32 @lsame_(ptr noundef %7, ptr noundef @.str)
  store i32 %call, ptr %applyleft, align 4
  store i32 0, ptr %lastv, align 4
  store i32 0, ptr %lastc, align 4
  %8 = load ptr, ptr %tau.addr, align 8
  %r = getelementptr inbounds %struct.doublecomplex, ptr %8, i32 0, i32 0
  %9 = load double, ptr %r, align 8
  %cmp = fcmp une double %9, 0.000000e+00
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %10 = load ptr, ptr %tau.addr, align 8
  %i = getelementptr inbounds %struct.doublecomplex, ptr %10, i32 0, i32 1
  %11 = load double, ptr %i, align 8
  %cmp2 = fcmp une double %11, 0.000000e+00
  br i1 %cmp2, label %if.then, label %if.end30

if.then:                                          ; preds = %lor.lhs.false, %entry
  %12 = load i32, ptr %applyleft, align 4
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  %13 = load ptr, ptr %m.addr, align 8
  %14 = load i32, ptr %13, align 4
  store i32 %14, ptr %lastv, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %15 = load ptr, ptr %n.addr, align 8
  %16 = load i32, ptr %15, align 4
  store i32 %16, ptr %lastv, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then3
  %17 = load ptr, ptr %incv.addr, align 8
  %18 = load i32, ptr %17, align 4
  %cmp4 = icmp sgt i32 %18, 0
  br i1 %cmp4, label %if.then5, label %if.else7

if.then5:                                         ; preds = %if.end
  %19 = load i32, ptr %lastv, align 4
  %sub = sub nsw i32 %19, 1
  %20 = load ptr, ptr %incv.addr, align 8
  %21 = load i32, ptr %20, align 4
  %mul = mul nsw i32 %sub, %21
  %add6 = add nsw i32 %mul, 1
  store i32 %add6, ptr %i__, align 4
  br label %if.end8

if.else7:                                         ; preds = %if.end
  store i32 1, ptr %i__, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.else7, %if.then5
  br label %for.cond

for.cond:                                         ; preds = %if.end18, %if.end8
  %22 = load i32, ptr %i__, align 4
  store i32 %22, ptr %i__1, align 4
  %23 = load i32, ptr %lastv, align 4
  %cmp9 = icmp sgt i32 %23, 0
  br i1 %cmp9, label %land.lhs.true, label %if.then17

land.lhs.true:                                    ; preds = %for.cond
  %24 = load ptr, ptr %v.addr, align 8
  %25 = load i32, ptr %i__1, align 4
  %idxprom = sext i32 %25 to i64
  %arrayidx = getelementptr inbounds %struct.doublecomplex, ptr %24, i64 %idxprom
  %r10 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx, i32 0, i32 0
  %26 = load double, ptr %r10, align 8
  %cmp11 = fcmp oeq double %26, 0.000000e+00
  br i1 %cmp11, label %land.lhs.true12, label %if.then17

land.lhs.true12:                                  ; preds = %land.lhs.true
  %27 = load ptr, ptr %v.addr, align 8
  %28 = load i32, ptr %i__1, align 4
  %idxprom13 = sext i32 %28 to i64
  %arrayidx14 = getelementptr inbounds %struct.doublecomplex, ptr %27, i64 %idxprom13
  %i15 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx14, i32 0, i32 1
  %29 = load double, ptr %i15, align 8
  %cmp16 = fcmp oeq double %29, 0.000000e+00
  br i1 %cmp16, label %if.end18, label %if.then17

if.then17:                                        ; preds = %land.lhs.true12, %land.lhs.true, %for.cond
  br label %for.end

if.end18:                                         ; preds = %land.lhs.true12
  %30 = load i32, ptr %lastv, align 4
  %dec = add nsw i32 %30, -1
  store i32 %dec, ptr %lastv, align 4
  %31 = load ptr, ptr %incv.addr, align 8
  %32 = load i32, ptr %31, align 4
  %33 = load i32, ptr %i__, align 4
  %sub19 = sub nsw i32 %33, %32
  store i32 %sub19, ptr %i__, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then17
  %34 = load i32, ptr %applyleft, align 4
  %tobool20 = icmp ne i32 %34, 0
  br i1 %tobool20, label %if.then21, label %if.else25

if.then21:                                        ; preds = %for.end
  %35 = load ptr, ptr %n.addr, align 8
  %36 = load ptr, ptr %c__.addr, align 8
  %37 = load i32, ptr %c_offset, align 4
  %idxprom22 = sext i32 %37 to i64
  %arrayidx23 = getelementptr inbounds %struct.doublecomplex, ptr %36, i64 %idxprom22
  %38 = load ptr, ptr %ldc.addr, align 8
  %call24 = call i32 @ilazlc_(ptr noundef %lastv, ptr noundef %35, ptr noundef %arrayidx23, ptr noundef %38)
  store i32 %call24, ptr %lastc, align 4
  br label %if.end29

if.else25:                                        ; preds = %for.end
  %39 = load ptr, ptr %m.addr, align 8
  %40 = load ptr, ptr %c__.addr, align 8
  %41 = load i32, ptr %c_offset, align 4
  %idxprom26 = sext i32 %41 to i64
  %arrayidx27 = getelementptr inbounds %struct.doublecomplex, ptr %40, i64 %idxprom26
  %42 = load ptr, ptr %ldc.addr, align 8
  %call28 = call i32 @ilazlr_(ptr noundef %39, ptr noundef %lastv, ptr noundef %arrayidx27, ptr noundef %42)
  store i32 %call28, ptr %lastc, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.else25, %if.then21
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %lor.lhs.false
  %43 = load i32, ptr %applyleft, align 4
  %tobool31 = icmp ne i32 %43, 0
  br i1 %tobool31, label %if.then32, label %if.else51

if.then32:                                        ; preds = %if.end30
  %44 = load i32, ptr %lastv, align 4
  %cmp33 = icmp sgt i32 %44, 0
  br i1 %cmp33, label %if.then34, label %if.end50

if.then34:                                        ; preds = %if.then32
  %45 = load ptr, ptr %c__.addr, align 8
  %46 = load i32, ptr %c_offset, align 4
  %idxprom35 = sext i32 %46 to i64
  %arrayidx36 = getelementptr inbounds %struct.doublecomplex, ptr %45, i64 %idxprom35
  %47 = load ptr, ptr %ldc.addr, align 8
  %48 = load ptr, ptr %v.addr, align 8
  %arrayidx37 = getelementptr inbounds %struct.doublecomplex, ptr %48, i64 1
  %49 = load ptr, ptr %incv.addr, align 8
  %50 = load ptr, ptr %work.addr, align 8
  %arrayidx38 = getelementptr inbounds %struct.doublecomplex, ptr %50, i64 1
  %call39 = call i32 @zgemv_(ptr noundef @.str.1, ptr noundef %lastv, ptr noundef %lastc, ptr noundef @c_b1, ptr noundef %arrayidx36, ptr noundef %47, ptr noundef %arrayidx37, ptr noundef %49, ptr noundef @c_b2, ptr noundef %arrayidx38, ptr noundef @c__1)
  %51 = load ptr, ptr %tau.addr, align 8
  %r40 = getelementptr inbounds %struct.doublecomplex, ptr %51, i32 0, i32 0
  %52 = load double, ptr %r40, align 8
  %fneg = fneg double %52
  %r41 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double %fneg, ptr %r41, align 8
  %53 = load ptr, ptr %tau.addr, align 8
  %i42 = getelementptr inbounds %struct.doublecomplex, ptr %53, i32 0, i32 1
  %54 = load double, ptr %i42, align 8
  %fneg43 = fneg double %54
  %i44 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double %fneg43, ptr %i44, align 8
  %55 = load ptr, ptr %v.addr, align 8
  %arrayidx45 = getelementptr inbounds %struct.doublecomplex, ptr %55, i64 1
  %56 = load ptr, ptr %incv.addr, align 8
  %57 = load ptr, ptr %work.addr, align 8
  %arrayidx46 = getelementptr inbounds %struct.doublecomplex, ptr %57, i64 1
  %58 = load ptr, ptr %c__.addr, align 8
  %59 = load i32, ptr %c_offset, align 4
  %idxprom47 = sext i32 %59 to i64
  %arrayidx48 = getelementptr inbounds %struct.doublecomplex, ptr %58, i64 %idxprom47
  %60 = load ptr, ptr %ldc.addr, align 8
  %call49 = call i32 @zgerc_(ptr noundef %lastv, ptr noundef %lastc, ptr noundef %z__1, ptr noundef %arrayidx45, ptr noundef %56, ptr noundef %arrayidx46, ptr noundef @c__1, ptr noundef %arrayidx48, ptr noundef %60)
  br label %if.end50

if.end50:                                         ; preds = %if.then34, %if.then32
  br label %if.end71

if.else51:                                        ; preds = %if.end30
  %61 = load i32, ptr %lastv, align 4
  %cmp52 = icmp sgt i32 %61, 0
  br i1 %cmp52, label %if.then53, label %if.end70

if.then53:                                        ; preds = %if.else51
  %62 = load ptr, ptr %c__.addr, align 8
  %63 = load i32, ptr %c_offset, align 4
  %idxprom54 = sext i32 %63 to i64
  %arrayidx55 = getelementptr inbounds %struct.doublecomplex, ptr %62, i64 %idxprom54
  %64 = load ptr, ptr %ldc.addr, align 8
  %65 = load ptr, ptr %v.addr, align 8
  %arrayidx56 = getelementptr inbounds %struct.doublecomplex, ptr %65, i64 1
  %66 = load ptr, ptr %incv.addr, align 8
  %67 = load ptr, ptr %work.addr, align 8
  %arrayidx57 = getelementptr inbounds %struct.doublecomplex, ptr %67, i64 1
  %call58 = call i32 @zgemv_(ptr noundef @.str.2, ptr noundef %lastc, ptr noundef %lastv, ptr noundef @c_b1, ptr noundef %arrayidx55, ptr noundef %64, ptr noundef %arrayidx56, ptr noundef %66, ptr noundef @c_b2, ptr noundef %arrayidx57, ptr noundef @c__1)
  %68 = load ptr, ptr %tau.addr, align 8
  %r59 = getelementptr inbounds %struct.doublecomplex, ptr %68, i32 0, i32 0
  %69 = load double, ptr %r59, align 8
  %fneg60 = fneg double %69
  %r61 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double %fneg60, ptr %r61, align 8
  %70 = load ptr, ptr %tau.addr, align 8
  %i62 = getelementptr inbounds %struct.doublecomplex, ptr %70, i32 0, i32 1
  %71 = load double, ptr %i62, align 8
  %fneg63 = fneg double %71
  %i64 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double %fneg63, ptr %i64, align 8
  %72 = load ptr, ptr %work.addr, align 8
  %arrayidx65 = getelementptr inbounds %struct.doublecomplex, ptr %72, i64 1
  %73 = load ptr, ptr %v.addr, align 8
  %arrayidx66 = getelementptr inbounds %struct.doublecomplex, ptr %73, i64 1
  %74 = load ptr, ptr %incv.addr, align 8
  %75 = load ptr, ptr %c__.addr, align 8
  %76 = load i32, ptr %c_offset, align 4
  %idxprom67 = sext i32 %76 to i64
  %arrayidx68 = getelementptr inbounds %struct.doublecomplex, ptr %75, i64 %idxprom67
  %77 = load ptr, ptr %ldc.addr, align 8
  %call69 = call i32 @zgerc_(ptr noundef %lastc, ptr noundef %lastv, ptr noundef %z__1, ptr noundef %arrayidx65, ptr noundef @c__1, ptr noundef %arrayidx66, ptr noundef %74, ptr noundef %arrayidx68, ptr noundef %77)
  br label %if.end70

if.end70:                                         ; preds = %if.then53, %if.else51
  br label %if.end71

if.end71:                                         ; preds = %if.end70, %if.end50
  ret i32 0
}

declare i32 @lsame_(ptr noundef, ptr noundef) #1

declare i32 @ilazlc_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @ilazlr_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @zgemv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @zgerc_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}

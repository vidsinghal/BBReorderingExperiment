; ModuleID = 'samples/105.bc'
source_filename = "/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/map/lapack2flamec/f2c/c/claed8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.complex = type { float, float }

@.str = private unnamed_addr constant [7 x i8] c"CLAED8\00", align 1
@c_b3 = internal global float -1.000000e+00, align 4
@c__1 = internal global i32 1, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"Epsilon\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @claed8_(ptr noundef %k, ptr noundef %n, ptr noundef %qsiz, ptr noundef %q, ptr noundef %ldq, ptr noundef %d__, ptr noundef %rho, ptr noundef %cutpnt, ptr noundef %z__, ptr noundef %dlamda, ptr noundef %q2, ptr noundef %ldq2, ptr noundef %w, ptr noundef %indxp, ptr noundef %indx, ptr noundef %indxq, ptr noundef %perm, ptr noundef %givptr, ptr noundef %givcol, ptr noundef %givnum, ptr noundef %info) #0 {
entry:
  %retval = alloca i32, align 4
  %k.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %qsiz.addr = alloca ptr, align 8
  %q.addr = alloca ptr, align 8
  %ldq.addr = alloca ptr, align 8
  %d__.addr = alloca ptr, align 8
  %rho.addr = alloca ptr, align 8
  %cutpnt.addr = alloca ptr, align 8
  %z__.addr = alloca ptr, align 8
  %dlamda.addr = alloca ptr, align 8
  %q2.addr = alloca ptr, align 8
  %ldq2.addr = alloca ptr, align 8
  %w.addr = alloca ptr, align 8
  %indxp.addr = alloca ptr, align 8
  %indx.addr = alloca ptr, align 8
  %indxq.addr = alloca ptr, align 8
  %perm.addr = alloca ptr, align 8
  %givptr.addr = alloca ptr, align 8
  %givcol.addr = alloca ptr, align 8
  %givnum.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %q_dim1 = alloca i32, align 4
  %q_offset = alloca i32, align 4
  %q2_dim1 = alloca i32, align 4
  %q2_offset = alloca i32, align 4
  %i__1 = alloca i32, align 4
  %r__1 = alloca float, align 4
  %c__ = alloca float, align 4
  %i__ = alloca i32, align 4
  %j = alloca i32, align 4
  %s = alloca float, align 4
  %t = alloca float, align 4
  %k2 = alloca i32, align 4
  %n1 = alloca i32, align 4
  %n2 = alloca i32, align 4
  %jp = alloca i32, align 4
  %n1p1 = alloca i32, align 4
  %eps = alloca float, align 4
  %tau = alloca float, align 4
  %tol = alloca float, align 4
  %jlam = alloca i32, align 4
  %imax = alloca i32, align 4
  %jmax = alloca i32, align 4
  store ptr %k, ptr %k.addr, align 8
  store ptr %n, ptr %n.addr, align 8
  store ptr %qsiz, ptr %qsiz.addr, align 8
  store ptr %q, ptr %q.addr, align 8
  store ptr %ldq, ptr %ldq.addr, align 8
  store ptr %d__, ptr %d__.addr, align 8
  store ptr %rho, ptr %rho.addr, align 8
  store ptr %cutpnt, ptr %cutpnt.addr, align 8
  store ptr %z__, ptr %z__.addr, align 8
  store ptr %dlamda, ptr %dlamda.addr, align 8
  store ptr %q2, ptr %q2.addr, align 8
  store ptr %ldq2, ptr %ldq2.addr, align 8
  store ptr %w, ptr %w.addr, align 8
  store ptr %indxp, ptr %indxp.addr, align 8
  store ptr %indx, ptr %indx.addr, align 8
  store ptr %indxq, ptr %indxq.addr, align 8
  store ptr %perm, ptr %perm.addr, align 8
  store ptr %givptr, ptr %givptr.addr, align 8
  store ptr %givcol, ptr %givcol.addr, align 8
  store ptr %givnum, ptr %givnum.addr, align 8
  store ptr %info, ptr %info.addr, align 8
  %0 = load ptr, ptr %ldq.addr, align 8
  %1 = load i32, ptr %0, align 4
  store i32 %1, ptr %q_dim1, align 4
  %2 = load i32, ptr %q_dim1, align 4
  %add = add nsw i32 1, %2
  store i32 %add, ptr %q_offset, align 4
  %3 = load i32, ptr %q_offset, align 4
  %4 = load ptr, ptr %q.addr, align 8
  %idx.ext = sext i32 %3 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds %struct.complex, ptr %4, i64 %idx.neg
  store ptr %add.ptr, ptr %q.addr, align 8
  %5 = load ptr, ptr %d__.addr, align 8
  %incdec.ptr = getelementptr inbounds float, ptr %5, i32 -1
  store ptr %incdec.ptr, ptr %d__.addr, align 8
  %6 = load ptr, ptr %z__.addr, align 8
  %incdec.ptr1 = getelementptr inbounds float, ptr %6, i32 -1
  store ptr %incdec.ptr1, ptr %z__.addr, align 8
  %7 = load ptr, ptr %dlamda.addr, align 8
  %incdec.ptr2 = getelementptr inbounds float, ptr %7, i32 -1
  store ptr %incdec.ptr2, ptr %dlamda.addr, align 8
  %8 = load ptr, ptr %ldq2.addr, align 8
  %9 = load i32, ptr %8, align 4
  store i32 %9, ptr %q2_dim1, align 4
  %10 = load i32, ptr %q2_dim1, align 4
  %add3 = add nsw i32 1, %10
  store i32 %add3, ptr %q2_offset, align 4
  %11 = load i32, ptr %q2_offset, align 4
  %12 = load ptr, ptr %q2.addr, align 8
  %idx.ext4 = sext i32 %11 to i64
  %idx.neg5 = sub i64 0, %idx.ext4
  %add.ptr6 = getelementptr inbounds %struct.complex, ptr %12, i64 %idx.neg5
  store ptr %add.ptr6, ptr %q2.addr, align 8
  %13 = load ptr, ptr %w.addr, align 8
  %incdec.ptr7 = getelementptr inbounds float, ptr %13, i32 -1
  store ptr %incdec.ptr7, ptr %w.addr, align 8
  %14 = load ptr, ptr %indxp.addr, align 8
  %incdec.ptr8 = getelementptr inbounds i32, ptr %14, i32 -1
  store ptr %incdec.ptr8, ptr %indxp.addr, align 8
  %15 = load ptr, ptr %indx.addr, align 8
  %incdec.ptr9 = getelementptr inbounds i32, ptr %15, i32 -1
  store ptr %incdec.ptr9, ptr %indx.addr, align 8
  %16 = load ptr, ptr %indxq.addr, align 8
  %incdec.ptr10 = getelementptr inbounds i32, ptr %16, i32 -1
  store ptr %incdec.ptr10, ptr %indxq.addr, align 8
  %17 = load ptr, ptr %perm.addr, align 8
  %incdec.ptr11 = getelementptr inbounds i32, ptr %17, i32 -1
  store ptr %incdec.ptr11, ptr %perm.addr, align 8
  %18 = load ptr, ptr %givcol.addr, align 8
  %add.ptr12 = getelementptr inbounds i32, ptr %18, i64 -3
  store ptr %add.ptr12, ptr %givcol.addr, align 8
  %19 = load ptr, ptr %givnum.addr, align 8
  %add.ptr13 = getelementptr inbounds float, ptr %19, i64 -3
  store ptr %add.ptr13, ptr %givnum.addr, align 8
  %20 = load ptr, ptr %info.addr, align 8
  store i32 0, ptr %20, align 4
  %21 = load ptr, ptr %n.addr, align 8
  %22 = load i32, ptr %21, align 4
  %cmp = icmp slt i32 %22, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %23 = load ptr, ptr %info.addr, align 8
  store i32 -2, ptr %23, align 4
  br label %if.end40

if.else:                                          ; preds = %entry
  %24 = load ptr, ptr %qsiz.addr, align 8
  %25 = load i32, ptr %24, align 4
  %26 = load ptr, ptr %n.addr, align 8
  %27 = load i32, ptr %26, align 4
  %cmp14 = icmp slt i32 %25, %27
  br i1 %cmp14, label %if.then15, label %if.else16

if.then15:                                        ; preds = %if.else
  %28 = load ptr, ptr %info.addr, align 8
  store i32 -3, ptr %28, align 4
  br label %if.end39

if.else16:                                        ; preds = %if.else
  %29 = load ptr, ptr %ldq.addr, align 8
  %30 = load i32, ptr %29, align 4
  %31 = load ptr, ptr %n.addr, align 8
  %32 = load i32, ptr %31, align 4
  %cmp17 = icmp sge i32 1, %32
  br i1 %cmp17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else16
  br label %cond.end

cond.false:                                       ; preds = %if.else16
  %33 = load ptr, ptr %n.addr, align 8
  %34 = load i32, ptr %33, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %34, %cond.false ]
  %cmp18 = icmp slt i32 %30, %cond
  br i1 %cmp18, label %if.then19, label %if.else20

if.then19:                                        ; preds = %cond.end
  %35 = load ptr, ptr %info.addr, align 8
  store i32 -5, ptr %35, align 4
  br label %if.end38

if.else20:                                        ; preds = %cond.end
  %36 = load ptr, ptr %cutpnt.addr, align 8
  %37 = load i32, ptr %36, align 4
  %38 = load ptr, ptr %n.addr, align 8
  %39 = load i32, ptr %38, align 4
  %cmp21 = icmp sle i32 1, %39
  br i1 %cmp21, label %cond.true22, label %cond.false23

cond.true22:                                      ; preds = %if.else20
  br label %cond.end24

cond.false23:                                     ; preds = %if.else20
  %40 = load ptr, ptr %n.addr, align 8
  %41 = load i32, ptr %40, align 4
  br label %cond.end24

cond.end24:                                       ; preds = %cond.false23, %cond.true22
  %cond25 = phi i32 [ 1, %cond.true22 ], [ %41, %cond.false23 ]
  %cmp26 = icmp slt i32 %37, %cond25
  br i1 %cmp26, label %if.then28, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end24
  %42 = load ptr, ptr %cutpnt.addr, align 8
  %43 = load i32, ptr %42, align 4
  %44 = load ptr, ptr %n.addr, align 8
  %45 = load i32, ptr %44, align 4
  %cmp27 = icmp sgt i32 %43, %45
  br i1 %cmp27, label %if.then28, label %if.else29

if.then28:                                        ; preds = %lor.lhs.false, %cond.end24
  %46 = load ptr, ptr %info.addr, align 8
  store i32 -8, ptr %46, align 4
  br label %if.end37

if.else29:                                        ; preds = %lor.lhs.false
  %47 = load ptr, ptr %ldq2.addr, align 8
  %48 = load i32, ptr %47, align 4
  %49 = load ptr, ptr %n.addr, align 8
  %50 = load i32, ptr %49, align 4
  %cmp30 = icmp sge i32 1, %50
  br i1 %cmp30, label %cond.true31, label %cond.false32

cond.true31:                                      ; preds = %if.else29
  br label %cond.end33

cond.false32:                                     ; preds = %if.else29
  %51 = load ptr, ptr %n.addr, align 8
  %52 = load i32, ptr %51, align 4
  br label %cond.end33

cond.end33:                                       ; preds = %cond.false32, %cond.true31
  %cond34 = phi i32 [ 1, %cond.true31 ], [ %52, %cond.false32 ]
  %cmp35 = icmp slt i32 %48, %cond34
  br i1 %cmp35, label %if.then36, label %if.end

if.then36:                                        ; preds = %cond.end33
  %53 = load ptr, ptr %info.addr, align 8
  store i32 -12, ptr %53, align 4
  br label %if.end

if.end:                                           ; preds = %if.then36, %cond.end33
  br label %if.end37

if.end37:                                         ; preds = %if.end, %if.then28
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %if.then19
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %if.then15
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.then
  %54 = load ptr, ptr %info.addr, align 8
  %55 = load i32, ptr %54, align 4
  %cmp41 = icmp ne i32 %55, 0
  br i1 %cmp41, label %if.then42, label %if.end43

if.then42:                                        ; preds = %if.end40
  %56 = load ptr, ptr %info.addr, align 8
  %57 = load i32, ptr %56, align 4
  %sub = sub nsw i32 0, %57
  store i32 %sub, ptr %i__1, align 4
  %call = call i32 @xerbla_(ptr noundef @.str, ptr noundef %i__1)
  store i32 0, ptr %retval, align 4
  br label %return

if.end43:                                         ; preds = %if.end40
  %58 = load ptr, ptr %givptr.addr, align 8
  store i32 0, ptr %58, align 4
  %59 = load ptr, ptr %n.addr, align 8
  %60 = load i32, ptr %59, align 4
  %cmp44 = icmp eq i32 %60, 0
  br i1 %cmp44, label %if.then45, label %if.end46

if.then45:                                        ; preds = %if.end43
  store i32 0, ptr %retval, align 4
  br label %return

if.end46:                                         ; preds = %if.end43
  %61 = load ptr, ptr %cutpnt.addr, align 8
  %62 = load i32, ptr %61, align 4
  store i32 %62, ptr %n1, align 4
  %63 = load ptr, ptr %n.addr, align 8
  %64 = load i32, ptr %63, align 4
  %65 = load i32, ptr %n1, align 4
  %sub47 = sub nsw i32 %64, %65
  store i32 %sub47, ptr %n2, align 4
  %66 = load i32, ptr %n1, align 4
  %add48 = add nsw i32 %66, 1
  store i32 %add48, ptr %n1p1, align 4
  %67 = load ptr, ptr %rho.addr, align 8
  %68 = load float, ptr %67, align 4
  %cmp49 = fcmp olt float %68, 0.000000e+00
  br i1 %cmp49, label %if.then50, label %if.end52

if.then50:                                        ; preds = %if.end46
  %69 = load ptr, ptr %z__.addr, align 8
  %70 = load i32, ptr %n1p1, align 4
  %idxprom = sext i32 %70 to i64
  %arrayidx = getelementptr inbounds float, ptr %69, i64 %idxprom
  %call51 = call i32 @sscal_(ptr noundef %n2, ptr noundef @c_b3, ptr noundef %arrayidx, ptr noundef @c__1)
  br label %if.end52

if.end52:                                         ; preds = %if.then50, %if.end46
  %call53 = call double @sqrt(double noundef 2.000000e+00) #4
  %div = fdiv double 1.000000e+00, %call53
  %conv = fptrunc double %div to float
  store float %conv, ptr %t, align 4
  %71 = load ptr, ptr %n.addr, align 8
  %72 = load i32, ptr %71, align 4
  store i32 %72, ptr %i__1, align 4
  store i32 1, ptr %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end52
  %73 = load i32, ptr %j, align 4
  %74 = load i32, ptr %i__1, align 4
  %cmp54 = icmp sle i32 %73, %74
  br i1 %cmp54, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %75 = load i32, ptr %j, align 4
  %76 = load ptr, ptr %indx.addr, align 8
  %77 = load i32, ptr %j, align 4
  %idxprom56 = sext i32 %77 to i64
  %arrayidx57 = getelementptr inbounds i32, ptr %76, i64 %idxprom56
  store i32 %75, ptr %arrayidx57, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %78 = load i32, ptr %j, align 4
  %inc = add nsw i32 %78, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %79 = load ptr, ptr %n.addr, align 8
  %80 = load ptr, ptr %z__.addr, align 8
  %arrayidx58 = getelementptr inbounds float, ptr %80, i64 1
  %call59 = call i32 @sscal_(ptr noundef %79, ptr noundef %t, ptr noundef %arrayidx58, ptr noundef @c__1)
  %81 = load ptr, ptr %rho.addr, align 8
  %82 = load float, ptr %81, align 4
  %mul = fmul float %82, 2.000000e+00
  store float %mul, ptr %r__1, align 4
  %83 = load float, ptr %r__1, align 4
  %cmp60 = fcmp oge float %83, 0.000000e+00
  br i1 %cmp60, label %cond.true62, label %cond.false63

cond.true62:                                      ; preds = %for.end
  %84 = load float, ptr %r__1, align 4
  br label %cond.end64

cond.false63:                                     ; preds = %for.end
  %85 = load float, ptr %r__1, align 4
  %fneg = fneg float %85
  br label %cond.end64

cond.end64:                                       ; preds = %cond.false63, %cond.true62
  %cond65 = phi float [ %84, %cond.true62 ], [ %fneg, %cond.false63 ]
  %86 = load ptr, ptr %rho.addr, align 8
  store float %cond65, ptr %86, align 4
  %87 = load ptr, ptr %n.addr, align 8
  %88 = load i32, ptr %87, align 4
  store i32 %88, ptr %i__1, align 4
  %89 = load ptr, ptr %cutpnt.addr, align 8
  %90 = load i32, ptr %89, align 4
  %add66 = add nsw i32 %90, 1
  store i32 %add66, ptr %i__, align 4
  br label %for.cond67

for.cond67:                                       ; preds = %for.inc74, %cond.end64
  %91 = load i32, ptr %i__, align 4
  %92 = load i32, ptr %i__1, align 4
  %cmp68 = icmp sle i32 %91, %92
  br i1 %cmp68, label %for.body70, label %for.end76

for.body70:                                       ; preds = %for.cond67
  %93 = load ptr, ptr %cutpnt.addr, align 8
  %94 = load i32, ptr %93, align 4
  %95 = load ptr, ptr %indxq.addr, align 8
  %96 = load i32, ptr %i__, align 4
  %idxprom71 = sext i32 %96 to i64
  %arrayidx72 = getelementptr inbounds i32, ptr %95, i64 %idxprom71
  %97 = load i32, ptr %arrayidx72, align 4
  %add73 = add nsw i32 %97, %94
  store i32 %add73, ptr %arrayidx72, align 4
  br label %for.inc74

for.inc74:                                        ; preds = %for.body70
  %98 = load i32, ptr %i__, align 4
  %inc75 = add nsw i32 %98, 1
  store i32 %inc75, ptr %i__, align 4
  br label %for.cond67, !llvm.loop !7

for.end76:                                        ; preds = %for.cond67
  %99 = load ptr, ptr %n.addr, align 8
  %100 = load i32, ptr %99, align 4
  store i32 %100, ptr %i__1, align 4
  store i32 1, ptr %i__, align 4
  br label %for.cond77

for.cond77:                                       ; preds = %for.inc93, %for.end76
  %101 = load i32, ptr %i__, align 4
  %102 = load i32, ptr %i__1, align 4
  %cmp78 = icmp sle i32 %101, %102
  br i1 %cmp78, label %for.body80, label %for.end95

for.body80:                                       ; preds = %for.cond77
  %103 = load ptr, ptr %d__.addr, align 8
  %104 = load ptr, ptr %indxq.addr, align 8
  %105 = load i32, ptr %i__, align 4
  %idxprom81 = sext i32 %105 to i64
  %arrayidx82 = getelementptr inbounds i32, ptr %104, i64 %idxprom81
  %106 = load i32, ptr %arrayidx82, align 4
  %idxprom83 = sext i32 %106 to i64
  %arrayidx84 = getelementptr inbounds float, ptr %103, i64 %idxprom83
  %107 = load float, ptr %arrayidx84, align 4
  %108 = load ptr, ptr %dlamda.addr, align 8
  %109 = load i32, ptr %i__, align 4
  %idxprom85 = sext i32 %109 to i64
  %arrayidx86 = getelementptr inbounds float, ptr %108, i64 %idxprom85
  store float %107, ptr %arrayidx86, align 4
  %110 = load ptr, ptr %z__.addr, align 8
  %111 = load ptr, ptr %indxq.addr, align 8
  %112 = load i32, ptr %i__, align 4
  %idxprom87 = sext i32 %112 to i64
  %arrayidx88 = getelementptr inbounds i32, ptr %111, i64 %idxprom87
  %113 = load i32, ptr %arrayidx88, align 4
  %idxprom89 = sext i32 %113 to i64
  %arrayidx90 = getelementptr inbounds float, ptr %110, i64 %idxprom89
  %114 = load float, ptr %arrayidx90, align 4
  %115 = load ptr, ptr %w.addr, align 8
  %116 = load i32, ptr %i__, align 4
  %idxprom91 = sext i32 %116 to i64
  %arrayidx92 = getelementptr inbounds float, ptr %115, i64 %idxprom91
  store float %114, ptr %arrayidx92, align 4
  br label %for.inc93

for.inc93:                                        ; preds = %for.body80
  %117 = load i32, ptr %i__, align 4
  %inc94 = add nsw i32 %117, 1
  store i32 %inc94, ptr %i__, align 4
  br label %for.cond77, !llvm.loop !8

for.end95:                                        ; preds = %for.cond77
  store i32 1, ptr %i__, align 4
  %118 = load ptr, ptr %cutpnt.addr, align 8
  %119 = load i32, ptr %118, align 4
  %add96 = add nsw i32 %119, 1
  store i32 %add96, ptr %j, align 4
  %120 = load ptr, ptr %dlamda.addr, align 8
  %arrayidx97 = getelementptr inbounds float, ptr %120, i64 1
  %121 = load ptr, ptr %indx.addr, align 8
  %arrayidx98 = getelementptr inbounds i32, ptr %121, i64 1
  %call99 = call i32 @slamrg_(ptr noundef %n1, ptr noundef %n2, ptr noundef %arrayidx97, ptr noundef @c__1, ptr noundef @c__1, ptr noundef %arrayidx98)
  %122 = load ptr, ptr %n.addr, align 8
  %123 = load i32, ptr %122, align 4
  store i32 %123, ptr %i__1, align 4
  store i32 1, ptr %i__, align 4
  br label %for.cond100

for.cond100:                                      ; preds = %for.inc116, %for.end95
  %124 = load i32, ptr %i__, align 4
  %125 = load i32, ptr %i__1, align 4
  %cmp101 = icmp sle i32 %124, %125
  br i1 %cmp101, label %for.body103, label %for.end118

for.body103:                                      ; preds = %for.cond100
  %126 = load ptr, ptr %dlamda.addr, align 8
  %127 = load ptr, ptr %indx.addr, align 8
  %128 = load i32, ptr %i__, align 4
  %idxprom104 = sext i32 %128 to i64
  %arrayidx105 = getelementptr inbounds i32, ptr %127, i64 %idxprom104
  %129 = load i32, ptr %arrayidx105, align 4
  %idxprom106 = sext i32 %129 to i64
  %arrayidx107 = getelementptr inbounds float, ptr %126, i64 %idxprom106
  %130 = load float, ptr %arrayidx107, align 4
  %131 = load ptr, ptr %d__.addr, align 8
  %132 = load i32, ptr %i__, align 4
  %idxprom108 = sext i32 %132 to i64
  %arrayidx109 = getelementptr inbounds float, ptr %131, i64 %idxprom108
  store float %130, ptr %arrayidx109, align 4
  %133 = load ptr, ptr %w.addr, align 8
  %134 = load ptr, ptr %indx.addr, align 8
  %135 = load i32, ptr %i__, align 4
  %idxprom110 = sext i32 %135 to i64
  %arrayidx111 = getelementptr inbounds i32, ptr %134, i64 %idxprom110
  %136 = load i32, ptr %arrayidx111, align 4
  %idxprom112 = sext i32 %136 to i64
  %arrayidx113 = getelementptr inbounds float, ptr %133, i64 %idxprom112
  %137 = load float, ptr %arrayidx113, align 4
  %138 = load ptr, ptr %z__.addr, align 8
  %139 = load i32, ptr %i__, align 4
  %idxprom114 = sext i32 %139 to i64
  %arrayidx115 = getelementptr inbounds float, ptr %138, i64 %idxprom114
  store float %137, ptr %arrayidx115, align 4
  br label %for.inc116

for.inc116:                                       ; preds = %for.body103
  %140 = load i32, ptr %i__, align 4
  %inc117 = add nsw i32 %140, 1
  store i32 %inc117, ptr %i__, align 4
  br label %for.cond100, !llvm.loop !9

for.end118:                                       ; preds = %for.cond100
  %141 = load ptr, ptr %n.addr, align 8
  %142 = load ptr, ptr %z__.addr, align 8
  %arrayidx119 = getelementptr inbounds float, ptr %142, i64 1
  %call120 = call i32 @isamax_(ptr noundef %141, ptr noundef %arrayidx119, ptr noundef @c__1)
  store i32 %call120, ptr %imax, align 4
  %143 = load ptr, ptr %n.addr, align 8
  %144 = load ptr, ptr %d__.addr, align 8
  %arrayidx121 = getelementptr inbounds float, ptr %144, i64 1
  %call122 = call i32 @isamax_(ptr noundef %143, ptr noundef %arrayidx121, ptr noundef @c__1)
  store i32 %call122, ptr %jmax, align 4
  %call123 = call float @slamch_(ptr noundef @.str.1)
  store float %call123, ptr %eps, align 4
  %145 = load float, ptr %eps, align 4
  %mul124 = fmul float %145, 8.000000e+00
  %146 = load ptr, ptr %d__.addr, align 8
  %147 = load i32, ptr %jmax, align 4
  %idxprom125 = sext i32 %147 to i64
  %arrayidx126 = getelementptr inbounds float, ptr %146, i64 %idxprom125
  %148 = load float, ptr %arrayidx126, align 4
  store float %148, ptr %r__1, align 4
  %149 = load float, ptr %r__1, align 4
  %cmp127 = fcmp oge float %149, 0.000000e+00
  br i1 %cmp127, label %cond.true129, label %cond.false130

cond.true129:                                     ; preds = %for.end118
  %150 = load float, ptr %r__1, align 4
  br label %cond.end132

cond.false130:                                    ; preds = %for.end118
  %151 = load float, ptr %r__1, align 4
  %fneg131 = fneg float %151
  br label %cond.end132

cond.end132:                                      ; preds = %cond.false130, %cond.true129
  %cond133 = phi float [ %150, %cond.true129 ], [ %fneg131, %cond.false130 ]
  %mul134 = fmul float %mul124, %cond133
  store float %mul134, ptr %tol, align 4
  %152 = load ptr, ptr %rho.addr, align 8
  %153 = load float, ptr %152, align 4
  %154 = load ptr, ptr %z__.addr, align 8
  %155 = load i32, ptr %imax, align 4
  %idxprom135 = sext i32 %155 to i64
  %arrayidx136 = getelementptr inbounds float, ptr %154, i64 %idxprom135
  %156 = load float, ptr %arrayidx136, align 4
  store float %156, ptr %r__1, align 4
  %157 = load float, ptr %r__1, align 4
  %cmp137 = fcmp oge float %157, 0.000000e+00
  br i1 %cmp137, label %cond.true139, label %cond.false140

cond.true139:                                     ; preds = %cond.end132
  %158 = load float, ptr %r__1, align 4
  br label %cond.end142

cond.false140:                                    ; preds = %cond.end132
  %159 = load float, ptr %r__1, align 4
  %fneg141 = fneg float %159
  br label %cond.end142

cond.end142:                                      ; preds = %cond.false140, %cond.true139
  %cond143 = phi float [ %158, %cond.true139 ], [ %fneg141, %cond.false140 ]
  %mul144 = fmul float %153, %cond143
  %160 = load float, ptr %tol, align 4
  %cmp145 = fcmp ole float %mul144, %160
  br i1 %cmp145, label %if.then147, label %if.end179

if.then147:                                       ; preds = %cond.end142
  %161 = load ptr, ptr %k.addr, align 8
  store i32 0, ptr %161, align 4
  %162 = load ptr, ptr %n.addr, align 8
  %163 = load i32, ptr %162, align 4
  store i32 %163, ptr %i__1, align 4
  store i32 1, ptr %j, align 4
  br label %for.cond148

for.cond148:                                      ; preds = %for.inc169, %if.then147
  %164 = load i32, ptr %j, align 4
  %165 = load i32, ptr %i__1, align 4
  %cmp149 = icmp sle i32 %164, %165
  br i1 %cmp149, label %for.body151, label %for.end171

for.body151:                                      ; preds = %for.cond148
  %166 = load ptr, ptr %indxq.addr, align 8
  %167 = load ptr, ptr %indx.addr, align 8
  %168 = load i32, ptr %j, align 4
  %idxprom152 = sext i32 %168 to i64
  %arrayidx153 = getelementptr inbounds i32, ptr %167, i64 %idxprom152
  %169 = load i32, ptr %arrayidx153, align 4
  %idxprom154 = sext i32 %169 to i64
  %arrayidx155 = getelementptr inbounds i32, ptr %166, i64 %idxprom154
  %170 = load i32, ptr %arrayidx155, align 4
  %171 = load ptr, ptr %perm.addr, align 8
  %172 = load i32, ptr %j, align 4
  %idxprom156 = sext i32 %172 to i64
  %arrayidx157 = getelementptr inbounds i32, ptr %171, i64 %idxprom156
  store i32 %170, ptr %arrayidx157, align 4
  %173 = load ptr, ptr %qsiz.addr, align 8
  %174 = load ptr, ptr %q.addr, align 8
  %175 = load ptr, ptr %perm.addr, align 8
  %176 = load i32, ptr %j, align 4
  %idxprom158 = sext i32 %176 to i64
  %arrayidx159 = getelementptr inbounds i32, ptr %175, i64 %idxprom158
  %177 = load i32, ptr %arrayidx159, align 4
  %178 = load i32, ptr %q_dim1, align 4
  %mul160 = mul nsw i32 %177, %178
  %add161 = add nsw i32 %mul160, 1
  %idxprom162 = sext i32 %add161 to i64
  %arrayidx163 = getelementptr inbounds %struct.complex, ptr %174, i64 %idxprom162
  %179 = load ptr, ptr %q2.addr, align 8
  %180 = load i32, ptr %j, align 4
  %181 = load i32, ptr %q2_dim1, align 4
  %mul164 = mul nsw i32 %180, %181
  %add165 = add nsw i32 %mul164, 1
  %idxprom166 = sext i32 %add165 to i64
  %arrayidx167 = getelementptr inbounds %struct.complex, ptr %179, i64 %idxprom166
  %call168 = call i32 @ccopy_(ptr noundef %173, ptr noundef %arrayidx163, ptr noundef @c__1, ptr noundef %arrayidx167, ptr noundef @c__1)
  br label %for.inc169

for.inc169:                                       ; preds = %for.body151
  %182 = load i32, ptr %j, align 4
  %inc170 = add nsw i32 %182, 1
  store i32 %inc170, ptr %j, align 4
  br label %for.cond148, !llvm.loop !10

for.end171:                                       ; preds = %for.cond148
  %183 = load ptr, ptr %qsiz.addr, align 8
  %184 = load ptr, ptr %n.addr, align 8
  %185 = load ptr, ptr %q2.addr, align 8
  %186 = load i32, ptr %q2_dim1, align 4
  %add172 = add nsw i32 %186, 1
  %idxprom173 = sext i32 %add172 to i64
  %arrayidx174 = getelementptr inbounds %struct.complex, ptr %185, i64 %idxprom173
  %187 = load ptr, ptr %ldq2.addr, align 8
  %188 = load ptr, ptr %q.addr, align 8
  %189 = load i32, ptr %q_dim1, align 4
  %add175 = add nsw i32 %189, 1
  %idxprom176 = sext i32 %add175 to i64
  %arrayidx177 = getelementptr inbounds %struct.complex, ptr %188, i64 %idxprom176
  %190 = load ptr, ptr %ldq.addr, align 8
  %call178 = call i32 @clacpy_(ptr noundef @.str.2, ptr noundef %183, ptr noundef %184, ptr noundef %arrayidx174, ptr noundef %187, ptr noundef %arrayidx177, ptr noundef %190)
  store i32 0, ptr %retval, align 4
  br label %return

if.end179:                                        ; preds = %cond.end142
  %191 = load ptr, ptr %k.addr, align 8
  store i32 0, ptr %191, align 4
  %192 = load ptr, ptr %n.addr, align 8
  %193 = load i32, ptr %192, align 4
  %add180 = add nsw i32 %193, 1
  store i32 %add180, ptr %k2, align 4
  %194 = load ptr, ptr %n.addr, align 8
  %195 = load i32, ptr %194, align 4
  store i32 %195, ptr %i__1, align 4
  store i32 1, ptr %j, align 4
  br label %for.cond181

for.cond181:                                      ; preds = %for.inc206, %if.end179
  %196 = load i32, ptr %j, align 4
  %197 = load i32, ptr %i__1, align 4
  %cmp182 = icmp sle i32 %196, %197
  br i1 %cmp182, label %for.body184, label %for.end208

for.body184:                                      ; preds = %for.cond181
  %198 = load ptr, ptr %rho.addr, align 8
  %199 = load float, ptr %198, align 4
  %200 = load ptr, ptr %z__.addr, align 8
  %201 = load i32, ptr %j, align 4
  %idxprom185 = sext i32 %201 to i64
  %arrayidx186 = getelementptr inbounds float, ptr %200, i64 %idxprom185
  %202 = load float, ptr %arrayidx186, align 4
  store float %202, ptr %r__1, align 4
  %203 = load float, ptr %r__1, align 4
  %cmp187 = fcmp oge float %203, 0.000000e+00
  br i1 %cmp187, label %cond.true189, label %cond.false190

cond.true189:                                     ; preds = %for.body184
  %204 = load float, ptr %r__1, align 4
  br label %cond.end192

cond.false190:                                    ; preds = %for.body184
  %205 = load float, ptr %r__1, align 4
  %fneg191 = fneg float %205
  br label %cond.end192

cond.end192:                                      ; preds = %cond.false190, %cond.true189
  %cond193 = phi float [ %204, %cond.true189 ], [ %fneg191, %cond.false190 ]
  %mul194 = fmul float %199, %cond193
  %206 = load float, ptr %tol, align 4
  %cmp195 = fcmp ole float %mul194, %206
  br i1 %cmp195, label %if.then197, label %if.else204

if.then197:                                       ; preds = %cond.end192
  %207 = load i32, ptr %k2, align 4
  %dec = add nsw i32 %207, -1
  store i32 %dec, ptr %k2, align 4
  %208 = load i32, ptr %j, align 4
  %209 = load ptr, ptr %indxp.addr, align 8
  %210 = load i32, ptr %k2, align 4
  %idxprom198 = sext i32 %210 to i64
  %arrayidx199 = getelementptr inbounds i32, ptr %209, i64 %idxprom198
  store i32 %208, ptr %arrayidx199, align 4
  %211 = load i32, ptr %j, align 4
  %212 = load ptr, ptr %n.addr, align 8
  %213 = load i32, ptr %212, align 4
  %cmp200 = icmp eq i32 %211, %213
  br i1 %cmp200, label %if.then202, label %if.end203

if.then202:                                       ; preds = %if.then197
  br label %L100

if.end203:                                        ; preds = %if.then197
  br label %if.end205

if.else204:                                       ; preds = %cond.end192
  %214 = load i32, ptr %j, align 4
  store i32 %214, ptr %jlam, align 4
  br label %L70

if.end205:                                        ; preds = %if.end203
  br label %for.inc206

for.inc206:                                       ; preds = %if.end205
  %215 = load i32, ptr %j, align 4
  %inc207 = add nsw i32 %215, 1
  store i32 %inc207, ptr %j, align 4
  br label %for.cond181, !llvm.loop !11

for.end208:                                       ; preds = %for.cond181
  br label %L70

L70:                                              ; preds = %if.end372, %for.end208, %if.else204
  %216 = load i32, ptr %j, align 4
  %inc209 = add nsw i32 %216, 1
  store i32 %inc209, ptr %j, align 4
  %217 = load i32, ptr %j, align 4
  %218 = load ptr, ptr %n.addr, align 8
  %219 = load i32, ptr %218, align 4
  %cmp210 = icmp sgt i32 %217, %219
  br i1 %cmp210, label %if.then212, label %if.end213

if.then212:                                       ; preds = %L70
  br label %L90

if.end213:                                        ; preds = %L70
  %220 = load ptr, ptr %rho.addr, align 8
  %221 = load float, ptr %220, align 4
  %222 = load ptr, ptr %z__.addr, align 8
  %223 = load i32, ptr %j, align 4
  %idxprom214 = sext i32 %223 to i64
  %arrayidx215 = getelementptr inbounds float, ptr %222, i64 %idxprom214
  %224 = load float, ptr %arrayidx215, align 4
  store float %224, ptr %r__1, align 4
  %225 = load float, ptr %r__1, align 4
  %cmp216 = fcmp oge float %225, 0.000000e+00
  br i1 %cmp216, label %cond.true218, label %cond.false219

cond.true218:                                     ; preds = %if.end213
  %226 = load float, ptr %r__1, align 4
  br label %cond.end221

cond.false219:                                    ; preds = %if.end213
  %227 = load float, ptr %r__1, align 4
  %fneg220 = fneg float %227
  br label %cond.end221

cond.end221:                                      ; preds = %cond.false219, %cond.true218
  %cond222 = phi float [ %226, %cond.true218 ], [ %fneg220, %cond.false219 ]
  %mul223 = fmul float %221, %cond222
  %228 = load float, ptr %tol, align 4
  %cmp224 = fcmp ole float %mul223, %228
  br i1 %cmp224, label %if.then226, label %if.else230

if.then226:                                       ; preds = %cond.end221
  %229 = load i32, ptr %k2, align 4
  %dec227 = add nsw i32 %229, -1
  store i32 %dec227, ptr %k2, align 4
  %230 = load i32, ptr %j, align 4
  %231 = load ptr, ptr %indxp.addr, align 8
  %232 = load i32, ptr %k2, align 4
  %idxprom228 = sext i32 %232 to i64
  %arrayidx229 = getelementptr inbounds i32, ptr %231, i64 %idxprom228
  store i32 %230, ptr %arrayidx229, align 4
  br label %if.end372

if.else230:                                       ; preds = %cond.end221
  %233 = load ptr, ptr %z__.addr, align 8
  %234 = load i32, ptr %jlam, align 4
  %idxprom231 = sext i32 %234 to i64
  %arrayidx232 = getelementptr inbounds float, ptr %233, i64 %idxprom231
  %235 = load float, ptr %arrayidx232, align 4
  store float %235, ptr %s, align 4
  %236 = load ptr, ptr %z__.addr, align 8
  %237 = load i32, ptr %j, align 4
  %idxprom233 = sext i32 %237 to i64
  %arrayidx234 = getelementptr inbounds float, ptr %236, i64 %idxprom233
  %238 = load float, ptr %arrayidx234, align 4
  store float %238, ptr %c__, align 4
  %call235 = call float @slapy2_(ptr noundef %c__, ptr noundef %s)
  store float %call235, ptr %tau, align 4
  %239 = load ptr, ptr %d__.addr, align 8
  %240 = load i32, ptr %j, align 4
  %idxprom236 = sext i32 %240 to i64
  %arrayidx237 = getelementptr inbounds float, ptr %239, i64 %idxprom236
  %241 = load float, ptr %arrayidx237, align 4
  %242 = load ptr, ptr %d__.addr, align 8
  %243 = load i32, ptr %jlam, align 4
  %idxprom238 = sext i32 %243 to i64
  %arrayidx239 = getelementptr inbounds float, ptr %242, i64 %idxprom238
  %244 = load float, ptr %arrayidx239, align 4
  %sub240 = fsub float %241, %244
  store float %sub240, ptr %t, align 4
  %245 = load float, ptr %tau, align 4
  %246 = load float, ptr %c__, align 4
  %div241 = fdiv float %246, %245
  store float %div241, ptr %c__, align 4
  %247 = load float, ptr %s, align 4
  %fneg242 = fneg float %247
  %248 = load float, ptr %tau, align 4
  %div243 = fdiv float %fneg242, %248
  store float %div243, ptr %s, align 4
  %249 = load float, ptr %t, align 4
  %250 = load float, ptr %c__, align 4
  %mul244 = fmul float %249, %250
  %251 = load float, ptr %s, align 4
  %mul245 = fmul float %mul244, %251
  store float %mul245, ptr %r__1, align 4
  %252 = load float, ptr %r__1, align 4
  %cmp246 = fcmp oge float %252, 0.000000e+00
  br i1 %cmp246, label %cond.true248, label %cond.false249

cond.true248:                                     ; preds = %if.else230
  %253 = load float, ptr %r__1, align 4
  br label %cond.end251

cond.false249:                                    ; preds = %if.else230
  %254 = load float, ptr %r__1, align 4
  %fneg250 = fneg float %254
  br label %cond.end251

cond.end251:                                      ; preds = %cond.false249, %cond.true248
  %cond252 = phi float [ %253, %cond.true248 ], [ %fneg250, %cond.false249 ]
  %255 = load float, ptr %tol, align 4
  %cmp253 = fcmp ole float %cond252, %255
  br i1 %cmp253, label %if.then255, label %if.else359

if.then255:                                       ; preds = %cond.end251
  %256 = load float, ptr %tau, align 4
  %257 = load ptr, ptr %z__.addr, align 8
  %258 = load i32, ptr %j, align 4
  %idxprom256 = sext i32 %258 to i64
  %arrayidx257 = getelementptr inbounds float, ptr %257, i64 %idxprom256
  store float %256, ptr %arrayidx257, align 4
  %259 = load ptr, ptr %z__.addr, align 8
  %260 = load i32, ptr %jlam, align 4
  %idxprom258 = sext i32 %260 to i64
  %arrayidx259 = getelementptr inbounds float, ptr %259, i64 %idxprom258
  store float 0.000000e+00, ptr %arrayidx259, align 4
  %261 = load ptr, ptr %givptr.addr, align 8
  %262 = load i32, ptr %261, align 4
  %inc260 = add nsw i32 %262, 1
  store i32 %inc260, ptr %261, align 4
  %263 = load ptr, ptr %indxq.addr, align 8
  %264 = load ptr, ptr %indx.addr, align 8
  %265 = load i32, ptr %jlam, align 4
  %idxprom261 = sext i32 %265 to i64
  %arrayidx262 = getelementptr inbounds i32, ptr %264, i64 %idxprom261
  %266 = load i32, ptr %arrayidx262, align 4
  %idxprom263 = sext i32 %266 to i64
  %arrayidx264 = getelementptr inbounds i32, ptr %263, i64 %idxprom263
  %267 = load i32, ptr %arrayidx264, align 4
  %268 = load ptr, ptr %givcol.addr, align 8
  %269 = load ptr, ptr %givptr.addr, align 8
  %270 = load i32, ptr %269, align 4
  %shl = shl i32 %270, 1
  %add265 = add nsw i32 %shl, 1
  %idxprom266 = sext i32 %add265 to i64
  %arrayidx267 = getelementptr inbounds i32, ptr %268, i64 %idxprom266
  store i32 %267, ptr %arrayidx267, align 4
  %271 = load ptr, ptr %indxq.addr, align 8
  %272 = load ptr, ptr %indx.addr, align 8
  %273 = load i32, ptr %j, align 4
  %idxprom268 = sext i32 %273 to i64
  %arrayidx269 = getelementptr inbounds i32, ptr %272, i64 %idxprom268
  %274 = load i32, ptr %arrayidx269, align 4
  %idxprom270 = sext i32 %274 to i64
  %arrayidx271 = getelementptr inbounds i32, ptr %271, i64 %idxprom270
  %275 = load i32, ptr %arrayidx271, align 4
  %276 = load ptr, ptr %givcol.addr, align 8
  %277 = load ptr, ptr %givptr.addr, align 8
  %278 = load i32, ptr %277, align 4
  %shl272 = shl i32 %278, 1
  %add273 = add nsw i32 %shl272, 2
  %idxprom274 = sext i32 %add273 to i64
  %arrayidx275 = getelementptr inbounds i32, ptr %276, i64 %idxprom274
  store i32 %275, ptr %arrayidx275, align 4
  %279 = load float, ptr %c__, align 4
  %280 = load ptr, ptr %givnum.addr, align 8
  %281 = load ptr, ptr %givptr.addr, align 8
  %282 = load i32, ptr %281, align 4
  %shl276 = shl i32 %282, 1
  %add277 = add nsw i32 %shl276, 1
  %idxprom278 = sext i32 %add277 to i64
  %arrayidx279 = getelementptr inbounds float, ptr %280, i64 %idxprom278
  store float %279, ptr %arrayidx279, align 4
  %283 = load float, ptr %s, align 4
  %284 = load ptr, ptr %givnum.addr, align 8
  %285 = load ptr, ptr %givptr.addr, align 8
  %286 = load i32, ptr %285, align 4
  %shl280 = shl i32 %286, 1
  %add281 = add nsw i32 %shl280, 2
  %idxprom282 = sext i32 %add281 to i64
  %arrayidx283 = getelementptr inbounds float, ptr %284, i64 %idxprom282
  store float %283, ptr %arrayidx283, align 4
  %287 = load ptr, ptr %qsiz.addr, align 8
  %288 = load ptr, ptr %q.addr, align 8
  %289 = load ptr, ptr %indxq.addr, align 8
  %290 = load ptr, ptr %indx.addr, align 8
  %291 = load i32, ptr %jlam, align 4
  %idxprom284 = sext i32 %291 to i64
  %arrayidx285 = getelementptr inbounds i32, ptr %290, i64 %idxprom284
  %292 = load i32, ptr %arrayidx285, align 4
  %idxprom286 = sext i32 %292 to i64
  %arrayidx287 = getelementptr inbounds i32, ptr %289, i64 %idxprom286
  %293 = load i32, ptr %arrayidx287, align 4
  %294 = load i32, ptr %q_dim1, align 4
  %mul288 = mul nsw i32 %293, %294
  %add289 = add nsw i32 %mul288, 1
  %idxprom290 = sext i32 %add289 to i64
  %arrayidx291 = getelementptr inbounds %struct.complex, ptr %288, i64 %idxprom290
  %295 = load ptr, ptr %q.addr, align 8
  %296 = load ptr, ptr %indxq.addr, align 8
  %297 = load ptr, ptr %indx.addr, align 8
  %298 = load i32, ptr %j, align 4
  %idxprom292 = sext i32 %298 to i64
  %arrayidx293 = getelementptr inbounds i32, ptr %297, i64 %idxprom292
  %299 = load i32, ptr %arrayidx293, align 4
  %idxprom294 = sext i32 %299 to i64
  %arrayidx295 = getelementptr inbounds i32, ptr %296, i64 %idxprom294
  %300 = load i32, ptr %arrayidx295, align 4
  %301 = load i32, ptr %q_dim1, align 4
  %mul296 = mul nsw i32 %300, %301
  %add297 = add nsw i32 %mul296, 1
  %idxprom298 = sext i32 %add297 to i64
  %arrayidx299 = getelementptr inbounds %struct.complex, ptr %295, i64 %idxprom298
  %call300 = call i32 @csrot_(ptr noundef %287, ptr noundef %arrayidx291, ptr noundef @c__1, ptr noundef %arrayidx299, ptr noundef @c__1, ptr noundef %c__, ptr noundef %s)
  %302 = load ptr, ptr %d__.addr, align 8
  %303 = load i32, ptr %jlam, align 4
  %idxprom301 = sext i32 %303 to i64
  %arrayidx302 = getelementptr inbounds float, ptr %302, i64 %idxprom301
  %304 = load float, ptr %arrayidx302, align 4
  %305 = load float, ptr %c__, align 4
  %mul303 = fmul float %304, %305
  %306 = load float, ptr %c__, align 4
  %307 = load ptr, ptr %d__.addr, align 8
  %308 = load i32, ptr %j, align 4
  %idxprom305 = sext i32 %308 to i64
  %arrayidx306 = getelementptr inbounds float, ptr %307, i64 %idxprom305
  %309 = load float, ptr %arrayidx306, align 4
  %310 = load float, ptr %s, align 4
  %mul307 = fmul float %309, %310
  %311 = load float, ptr %s, align 4
  %mul308 = fmul float %mul307, %311
  %312 = call float @llvm.fmuladd.f32(float %mul303, float %306, float %mul308)
  store float %312, ptr %t, align 4
  %313 = load ptr, ptr %d__.addr, align 8
  %314 = load i32, ptr %jlam, align 4
  %idxprom309 = sext i32 %314 to i64
  %arrayidx310 = getelementptr inbounds float, ptr %313, i64 %idxprom309
  %315 = load float, ptr %arrayidx310, align 4
  %316 = load float, ptr %s, align 4
  %mul311 = fmul float %315, %316
  %317 = load float, ptr %s, align 4
  %318 = load ptr, ptr %d__.addr, align 8
  %319 = load i32, ptr %j, align 4
  %idxprom313 = sext i32 %319 to i64
  %arrayidx314 = getelementptr inbounds float, ptr %318, i64 %idxprom313
  %320 = load float, ptr %arrayidx314, align 4
  %321 = load float, ptr %c__, align 4
  %mul315 = fmul float %320, %321
  %322 = load float, ptr %c__, align 4
  %mul316 = fmul float %mul315, %322
  %323 = call float @llvm.fmuladd.f32(float %mul311, float %317, float %mul316)
  %324 = load ptr, ptr %d__.addr, align 8
  %325 = load i32, ptr %j, align 4
  %idxprom317 = sext i32 %325 to i64
  %arrayidx318 = getelementptr inbounds float, ptr %324, i64 %idxprom317
  store float %323, ptr %arrayidx318, align 4
  %326 = load float, ptr %t, align 4
  %327 = load ptr, ptr %d__.addr, align 8
  %328 = load i32, ptr %jlam, align 4
  %idxprom319 = sext i32 %328 to i64
  %arrayidx320 = getelementptr inbounds float, ptr %327, i64 %idxprom319
  store float %326, ptr %arrayidx320, align 4
  %329 = load i32, ptr %k2, align 4
  %dec321 = add nsw i32 %329, -1
  store i32 %dec321, ptr %k2, align 4
  store i32 1, ptr %i__, align 4
  br label %L80

L80:                                              ; preds = %if.then335, %if.then255
  %330 = load i32, ptr %k2, align 4
  %331 = load i32, ptr %i__, align 4
  %add322 = add nsw i32 %330, %331
  %332 = load ptr, ptr %n.addr, align 8
  %333 = load i32, ptr %332, align 4
  %cmp323 = icmp sle i32 %add322, %333
  br i1 %cmp323, label %if.then325, label %if.else353

if.then325:                                       ; preds = %L80
  %334 = load ptr, ptr %d__.addr, align 8
  %335 = load i32, ptr %jlam, align 4
  %idxprom326 = sext i32 %335 to i64
  %arrayidx327 = getelementptr inbounds float, ptr %334, i64 %idxprom326
  %336 = load float, ptr %arrayidx327, align 4
  %337 = load ptr, ptr %d__.addr, align 8
  %338 = load ptr, ptr %indxp.addr, align 8
  %339 = load i32, ptr %k2, align 4
  %340 = load i32, ptr %i__, align 4
  %add328 = add nsw i32 %339, %340
  %idxprom329 = sext i32 %add328 to i64
  %arrayidx330 = getelementptr inbounds i32, ptr %338, i64 %idxprom329
  %341 = load i32, ptr %arrayidx330, align 4
  %idxprom331 = sext i32 %341 to i64
  %arrayidx332 = getelementptr inbounds float, ptr %337, i64 %idxprom331
  %342 = load float, ptr %arrayidx332, align 4
  %cmp333 = fcmp olt float %336, %342
  br i1 %cmp333, label %if.then335, label %if.else347

if.then335:                                       ; preds = %if.then325
  %343 = load ptr, ptr %indxp.addr, align 8
  %344 = load i32, ptr %k2, align 4
  %345 = load i32, ptr %i__, align 4
  %add336 = add nsw i32 %344, %345
  %idxprom337 = sext i32 %add336 to i64
  %arrayidx338 = getelementptr inbounds i32, ptr %343, i64 %idxprom337
  %346 = load i32, ptr %arrayidx338, align 4
  %347 = load ptr, ptr %indxp.addr, align 8
  %348 = load i32, ptr %k2, align 4
  %349 = load i32, ptr %i__, align 4
  %add339 = add nsw i32 %348, %349
  %sub340 = sub nsw i32 %add339, 1
  %idxprom341 = sext i32 %sub340 to i64
  %arrayidx342 = getelementptr inbounds i32, ptr %347, i64 %idxprom341
  store i32 %346, ptr %arrayidx342, align 4
  %350 = load i32, ptr %jlam, align 4
  %351 = load ptr, ptr %indxp.addr, align 8
  %352 = load i32, ptr %k2, align 4
  %353 = load i32, ptr %i__, align 4
  %add343 = add nsw i32 %352, %353
  %idxprom344 = sext i32 %add343 to i64
  %arrayidx345 = getelementptr inbounds i32, ptr %351, i64 %idxprom344
  store i32 %350, ptr %arrayidx345, align 4
  %354 = load i32, ptr %i__, align 4
  %inc346 = add nsw i32 %354, 1
  store i32 %inc346, ptr %i__, align 4
  br label %L80

if.else347:                                       ; preds = %if.then325
  %355 = load i32, ptr %jlam, align 4
  %356 = load ptr, ptr %indxp.addr, align 8
  %357 = load i32, ptr %k2, align 4
  %358 = load i32, ptr %i__, align 4
  %add348 = add nsw i32 %357, %358
  %sub349 = sub nsw i32 %add348, 1
  %idxprom350 = sext i32 %sub349 to i64
  %arrayidx351 = getelementptr inbounds i32, ptr %356, i64 %idxprom350
  store i32 %355, ptr %arrayidx351, align 4
  br label %if.end352

if.end352:                                        ; preds = %if.else347
  br label %if.end358

if.else353:                                       ; preds = %L80
  %359 = load i32, ptr %jlam, align 4
  %360 = load ptr, ptr %indxp.addr, align 8
  %361 = load i32, ptr %k2, align 4
  %362 = load i32, ptr %i__, align 4
  %add354 = add nsw i32 %361, %362
  %sub355 = sub nsw i32 %add354, 1
  %idxprom356 = sext i32 %sub355 to i64
  %arrayidx357 = getelementptr inbounds i32, ptr %360, i64 %idxprom356
  store i32 %359, ptr %arrayidx357, align 4
  br label %if.end358

if.end358:                                        ; preds = %if.else353, %if.end352
  %363 = load i32, ptr %j, align 4
  store i32 %363, ptr %jlam, align 4
  br label %if.end371

if.else359:                                       ; preds = %cond.end251
  %364 = load ptr, ptr %k.addr, align 8
  %365 = load i32, ptr %364, align 4
  %inc360 = add nsw i32 %365, 1
  store i32 %inc360, ptr %364, align 4
  %366 = load ptr, ptr %z__.addr, align 8
  %367 = load i32, ptr %jlam, align 4
  %idxprom361 = sext i32 %367 to i64
  %arrayidx362 = getelementptr inbounds float, ptr %366, i64 %idxprom361
  %368 = load float, ptr %arrayidx362, align 4
  %369 = load ptr, ptr %w.addr, align 8
  %370 = load ptr, ptr %k.addr, align 8
  %371 = load i32, ptr %370, align 4
  %idxprom363 = sext i32 %371 to i64
  %arrayidx364 = getelementptr inbounds float, ptr %369, i64 %idxprom363
  store float %368, ptr %arrayidx364, align 4
  %372 = load ptr, ptr %d__.addr, align 8
  %373 = load i32, ptr %jlam, align 4
  %idxprom365 = sext i32 %373 to i64
  %arrayidx366 = getelementptr inbounds float, ptr %372, i64 %idxprom365
  %374 = load float, ptr %arrayidx366, align 4
  %375 = load ptr, ptr %dlamda.addr, align 8
  %376 = load ptr, ptr %k.addr, align 8
  %377 = load i32, ptr %376, align 4
  %idxprom367 = sext i32 %377 to i64
  %arrayidx368 = getelementptr inbounds float, ptr %375, i64 %idxprom367
  store float %374, ptr %arrayidx368, align 4
  %378 = load i32, ptr %jlam, align 4
  %379 = load ptr, ptr %indxp.addr, align 8
  %380 = load ptr, ptr %k.addr, align 8
  %381 = load i32, ptr %380, align 4
  %idxprom369 = sext i32 %381 to i64
  %arrayidx370 = getelementptr inbounds i32, ptr %379, i64 %idxprom369
  store i32 %378, ptr %arrayidx370, align 4
  %382 = load i32, ptr %j, align 4
  store i32 %382, ptr %jlam, align 4
  br label %if.end371

if.end371:                                        ; preds = %if.else359, %if.end358
  br label %if.end372

if.end372:                                        ; preds = %if.end371, %if.then226
  br label %L70

L90:                                              ; preds = %if.then212
  %383 = load ptr, ptr %k.addr, align 8
  %384 = load i32, ptr %383, align 4
  %inc373 = add nsw i32 %384, 1
  store i32 %inc373, ptr %383, align 4
  %385 = load ptr, ptr %z__.addr, align 8
  %386 = load i32, ptr %jlam, align 4
  %idxprom374 = sext i32 %386 to i64
  %arrayidx375 = getelementptr inbounds float, ptr %385, i64 %idxprom374
  %387 = load float, ptr %arrayidx375, align 4
  %388 = load ptr, ptr %w.addr, align 8
  %389 = load ptr, ptr %k.addr, align 8
  %390 = load i32, ptr %389, align 4
  %idxprom376 = sext i32 %390 to i64
  %arrayidx377 = getelementptr inbounds float, ptr %388, i64 %idxprom376
  store float %387, ptr %arrayidx377, align 4
  %391 = load ptr, ptr %d__.addr, align 8
  %392 = load i32, ptr %jlam, align 4
  %idxprom378 = sext i32 %392 to i64
  %arrayidx379 = getelementptr inbounds float, ptr %391, i64 %idxprom378
  %393 = load float, ptr %arrayidx379, align 4
  %394 = load ptr, ptr %dlamda.addr, align 8
  %395 = load ptr, ptr %k.addr, align 8
  %396 = load i32, ptr %395, align 4
  %idxprom380 = sext i32 %396 to i64
  %arrayidx381 = getelementptr inbounds float, ptr %394, i64 %idxprom380
  store float %393, ptr %arrayidx381, align 4
  %397 = load i32, ptr %jlam, align 4
  %398 = load ptr, ptr %indxp.addr, align 8
  %399 = load ptr, ptr %k.addr, align 8
  %400 = load i32, ptr %399, align 4
  %idxprom382 = sext i32 %400 to i64
  %arrayidx383 = getelementptr inbounds i32, ptr %398, i64 %idxprom382
  store i32 %397, ptr %arrayidx383, align 4
  br label %L100

L100:                                             ; preds = %L90, %if.then202
  %401 = load ptr, ptr %n.addr, align 8
  %402 = load i32, ptr %401, align 4
  store i32 %402, ptr %i__1, align 4
  store i32 1, ptr %j, align 4
  br label %for.cond384

for.cond384:                                      ; preds = %for.inc411, %L100
  %403 = load i32, ptr %j, align 4
  %404 = load i32, ptr %i__1, align 4
  %cmp385 = icmp sle i32 %403, %404
  br i1 %cmp385, label %for.body387, label %for.end413

for.body387:                                      ; preds = %for.cond384
  %405 = load ptr, ptr %indxp.addr, align 8
  %406 = load i32, ptr %j, align 4
  %idxprom388 = sext i32 %406 to i64
  %arrayidx389 = getelementptr inbounds i32, ptr %405, i64 %idxprom388
  %407 = load i32, ptr %arrayidx389, align 4
  store i32 %407, ptr %jp, align 4
  %408 = load ptr, ptr %d__.addr, align 8
  %409 = load i32, ptr %jp, align 4
  %idxprom390 = sext i32 %409 to i64
  %arrayidx391 = getelementptr inbounds float, ptr %408, i64 %idxprom390
  %410 = load float, ptr %arrayidx391, align 4
  %411 = load ptr, ptr %dlamda.addr, align 8
  %412 = load i32, ptr %j, align 4
  %idxprom392 = sext i32 %412 to i64
  %arrayidx393 = getelementptr inbounds float, ptr %411, i64 %idxprom392
  store float %410, ptr %arrayidx393, align 4
  %413 = load ptr, ptr %indxq.addr, align 8
  %414 = load ptr, ptr %indx.addr, align 8
  %415 = load i32, ptr %jp, align 4
  %idxprom394 = sext i32 %415 to i64
  %arrayidx395 = getelementptr inbounds i32, ptr %414, i64 %idxprom394
  %416 = load i32, ptr %arrayidx395, align 4
  %idxprom396 = sext i32 %416 to i64
  %arrayidx397 = getelementptr inbounds i32, ptr %413, i64 %idxprom396
  %417 = load i32, ptr %arrayidx397, align 4
  %418 = load ptr, ptr %perm.addr, align 8
  %419 = load i32, ptr %j, align 4
  %idxprom398 = sext i32 %419 to i64
  %arrayidx399 = getelementptr inbounds i32, ptr %418, i64 %idxprom398
  store i32 %417, ptr %arrayidx399, align 4
  %420 = load ptr, ptr %qsiz.addr, align 8
  %421 = load ptr, ptr %q.addr, align 8
  %422 = load ptr, ptr %perm.addr, align 8
  %423 = load i32, ptr %j, align 4
  %idxprom400 = sext i32 %423 to i64
  %arrayidx401 = getelementptr inbounds i32, ptr %422, i64 %idxprom400
  %424 = load i32, ptr %arrayidx401, align 4
  %425 = load i32, ptr %q_dim1, align 4
  %mul402 = mul nsw i32 %424, %425
  %add403 = add nsw i32 %mul402, 1
  %idxprom404 = sext i32 %add403 to i64
  %arrayidx405 = getelementptr inbounds %struct.complex, ptr %421, i64 %idxprom404
  %426 = load ptr, ptr %q2.addr, align 8
  %427 = load i32, ptr %j, align 4
  %428 = load i32, ptr %q2_dim1, align 4
  %mul406 = mul nsw i32 %427, %428
  %add407 = add nsw i32 %mul406, 1
  %idxprom408 = sext i32 %add407 to i64
  %arrayidx409 = getelementptr inbounds %struct.complex, ptr %426, i64 %idxprom408
  %call410 = call i32 @ccopy_(ptr noundef %420, ptr noundef %arrayidx405, ptr noundef @c__1, ptr noundef %arrayidx409, ptr noundef @c__1)
  br label %for.inc411

for.inc411:                                       ; preds = %for.body387
  %429 = load i32, ptr %j, align 4
  %inc412 = add nsw i32 %429, 1
  store i32 %inc412, ptr %j, align 4
  br label %for.cond384, !llvm.loop !12

for.end413:                                       ; preds = %for.cond384
  %430 = load ptr, ptr %k.addr, align 8
  %431 = load i32, ptr %430, align 4
  %432 = load ptr, ptr %n.addr, align 8
  %433 = load i32, ptr %432, align 4
  %cmp414 = icmp slt i32 %431, %433
  br i1 %cmp414, label %if.then416, label %if.end437

if.then416:                                       ; preds = %for.end413
  %434 = load ptr, ptr %n.addr, align 8
  %435 = load i32, ptr %434, align 4
  %436 = load ptr, ptr %k.addr, align 8
  %437 = load i32, ptr %436, align 4
  %sub417 = sub nsw i32 %435, %437
  store i32 %sub417, ptr %i__1, align 4
  %438 = load ptr, ptr %dlamda.addr, align 8
  %439 = load ptr, ptr %k.addr, align 8
  %440 = load i32, ptr %439, align 4
  %add418 = add nsw i32 %440, 1
  %idxprom419 = sext i32 %add418 to i64
  %arrayidx420 = getelementptr inbounds float, ptr %438, i64 %idxprom419
  %441 = load ptr, ptr %d__.addr, align 8
  %442 = load ptr, ptr %k.addr, align 8
  %443 = load i32, ptr %442, align 4
  %add421 = add nsw i32 %443, 1
  %idxprom422 = sext i32 %add421 to i64
  %arrayidx423 = getelementptr inbounds float, ptr %441, i64 %idxprom422
  %call424 = call i32 @scopy_(ptr noundef %i__1, ptr noundef %arrayidx420, ptr noundef @c__1, ptr noundef %arrayidx423, ptr noundef @c__1)
  %444 = load ptr, ptr %n.addr, align 8
  %445 = load i32, ptr %444, align 4
  %446 = load ptr, ptr %k.addr, align 8
  %447 = load i32, ptr %446, align 4
  %sub425 = sub nsw i32 %445, %447
  store i32 %sub425, ptr %i__1, align 4
  %448 = load ptr, ptr %qsiz.addr, align 8
  %449 = load ptr, ptr %q2.addr, align 8
  %450 = load ptr, ptr %k.addr, align 8
  %451 = load i32, ptr %450, align 4
  %add426 = add nsw i32 %451, 1
  %452 = load i32, ptr %q2_dim1, align 4
  %mul427 = mul nsw i32 %add426, %452
  %add428 = add nsw i32 %mul427, 1
  %idxprom429 = sext i32 %add428 to i64
  %arrayidx430 = getelementptr inbounds %struct.complex, ptr %449, i64 %idxprom429
  %453 = load ptr, ptr %ldq2.addr, align 8
  %454 = load ptr, ptr %q.addr, align 8
  %455 = load ptr, ptr %k.addr, align 8
  %456 = load i32, ptr %455, align 4
  %add431 = add nsw i32 %456, 1
  %457 = load i32, ptr %q_dim1, align 4
  %mul432 = mul nsw i32 %add431, %457
  %add433 = add nsw i32 %mul432, 1
  %idxprom434 = sext i32 %add433 to i64
  %arrayidx435 = getelementptr inbounds %struct.complex, ptr %454, i64 %idxprom434
  %458 = load ptr, ptr %ldq.addr, align 8
  %call436 = call i32 @clacpy_(ptr noundef @.str.2, ptr noundef %448, ptr noundef %i__1, ptr noundef %arrayidx430, ptr noundef %453, ptr noundef %arrayidx435, ptr noundef %458)
  br label %if.end437

if.end437:                                        ; preds = %if.then416, %for.end413
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end437, %for.end171, %if.then45, %if.then42
  %459 = load i32, ptr %retval, align 4
  ret i32 %459
}

declare i32 @xerbla_(ptr noundef, ptr noundef) #1

declare i32 @sscal_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
declare double @sqrt(double noundef) #2

declare i32 @slamrg_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @isamax_(ptr noundef, ptr noundef, ptr noundef) #1

declare float @slamch_(ptr noundef) #1

declare i32 @ccopy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @clacpy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare float @slapy2_(ptr noundef, ptr noundef) #1

declare i32 @csrot_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

declare i32 @scopy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

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

; ModuleID = 'samples/762.bc'
source_filename = "/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/map/lapack2flamec/f2c/c/cla_hercond_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.complex = type { float, float }

@.str = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"CLA_HERCOND_C\00", align 1
@c__1 = internal global i32 1, align 4

; Function Attrs: noinline nounwind optnone uwtable
define float @cla_hercond_c_(ptr noundef %uplo, ptr noundef %n, ptr noundef %a, ptr noundef %lda, ptr noundef %af, ptr noundef %ldaf, ptr noundef %ipiv, ptr noundef %c__, ptr noundef %capply, ptr noundef %info, ptr noundef %work, ptr noundef %rwork) #0 {
entry:
  %retval = alloca float, align 4
  %uplo.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %lda.addr = alloca ptr, align 8
  %af.addr = alloca ptr, align 8
  %ldaf.addr = alloca ptr, align 8
  %ipiv.addr = alloca ptr, align 8
  %c__.addr = alloca ptr, align 8
  %capply.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %work.addr = alloca ptr, align 8
  %rwork.addr = alloca ptr, align 8
  %a_dim1 = alloca i32, align 4
  %a_offset = alloca i32, align 4
  %af_dim1 = alloca i32, align 4
  %af_offset = alloca i32, align 4
  %i__1 = alloca i32, align 4
  %i__2 = alloca i32, align 4
  %i__3 = alloca i32, align 4
  %i__4 = alloca i32, align 4
  %ret_val = alloca float, align 4
  %r__1 = alloca float, align 4
  %r__2 = alloca float, align 4
  %q__1 = alloca %struct.complex, align 4
  %i__ = alloca i32, align 4
  %j = alloca i32, align 4
  %up = alloca i32, align 4
  %tmp = alloca float, align 4
  %kase = alloca i32, align 4
  %isave = alloca [3 x i32], align 4
  %anorm = alloca float, align 4
  %upper = alloca i32, align 4
  %ainvnm = alloca float, align 4
  store ptr %uplo, ptr %uplo.addr, align 8
  store ptr %n, ptr %n.addr, align 8
  store ptr %a, ptr %a.addr, align 8
  store ptr %lda, ptr %lda.addr, align 8
  store ptr %af, ptr %af.addr, align 8
  store ptr %ldaf, ptr %ldaf.addr, align 8
  store ptr %ipiv, ptr %ipiv.addr, align 8
  store ptr %c__, ptr %c__.addr, align 8
  store ptr %capply, ptr %capply.addr, align 8
  store ptr %info, ptr %info.addr, align 8
  store ptr %work, ptr %work.addr, align 8
  store ptr %rwork, ptr %rwork.addr, align 8
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
  %5 = load ptr, ptr %ldaf.addr, align 8
  %6 = load i32, ptr %5, align 4
  store i32 %6, ptr %af_dim1, align 4
  %7 = load i32, ptr %af_dim1, align 4
  %add1 = add nsw i32 1, %7
  store i32 %add1, ptr %af_offset, align 4
  %8 = load i32, ptr %af_offset, align 4
  %9 = load ptr, ptr %af.addr, align 8
  %idx.ext2 = sext i32 %8 to i64
  %idx.neg3 = sub i64 0, %idx.ext2
  %add.ptr4 = getelementptr inbounds %struct.complex, ptr %9, i64 %idx.neg3
  store ptr %add.ptr4, ptr %af.addr, align 8
  %10 = load ptr, ptr %ipiv.addr, align 8
  %incdec.ptr = getelementptr inbounds i32, ptr %10, i32 -1
  store ptr %incdec.ptr, ptr %ipiv.addr, align 8
  %11 = load ptr, ptr %c__.addr, align 8
  %incdec.ptr5 = getelementptr inbounds float, ptr %11, i32 -1
  store ptr %incdec.ptr5, ptr %c__.addr, align 8
  %12 = load ptr, ptr %work.addr, align 8
  %incdec.ptr6 = getelementptr inbounds %struct.complex, ptr %12, i32 -1
  store ptr %incdec.ptr6, ptr %work.addr, align 8
  %13 = load ptr, ptr %rwork.addr, align 8
  %incdec.ptr7 = getelementptr inbounds float, ptr %13, i32 -1
  store ptr %incdec.ptr7, ptr %rwork.addr, align 8
  store float 0.000000e+00, ptr %ret_val, align 4
  %14 = load ptr, ptr %info.addr, align 8
  store i32 0, ptr %14, align 4
  %15 = load ptr, ptr %uplo.addr, align 8
  %call = call i32 @lsame_(ptr noundef %15, ptr noundef @.str)
  store i32 %call, ptr %upper, align 4
  %16 = load i32, ptr %upper, align 4
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %17 = load ptr, ptr %uplo.addr, align 8
  %call8 = call i32 @lsame_(ptr noundef %17, ptr noundef @.str.1)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %18 = load ptr, ptr %info.addr, align 8
  store i32 -1, ptr %18, align 4
  br label %if.end25

if.else:                                          ; preds = %land.lhs.true, %entry
  %19 = load ptr, ptr %n.addr, align 8
  %20 = load i32, ptr %19, align 4
  %cmp = icmp slt i32 %20, 0
  br i1 %cmp, label %if.then10, label %if.else11

if.then10:                                        ; preds = %if.else
  %21 = load ptr, ptr %info.addr, align 8
  store i32 -2, ptr %21, align 4
  br label %if.end24

if.else11:                                        ; preds = %if.else
  %22 = load ptr, ptr %lda.addr, align 8
  %23 = load i32, ptr %22, align 4
  %24 = load ptr, ptr %n.addr, align 8
  %25 = load i32, ptr %24, align 4
  %cmp12 = icmp sge i32 1, %25
  br i1 %cmp12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else11
  br label %cond.end

cond.false:                                       ; preds = %if.else11
  %26 = load ptr, ptr %n.addr, align 8
  %27 = load i32, ptr %26, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %27, %cond.false ]
  %cmp13 = icmp slt i32 %23, %cond
  br i1 %cmp13, label %if.then14, label %if.else15

if.then14:                                        ; preds = %cond.end
  %28 = load ptr, ptr %info.addr, align 8
  store i32 -4, ptr %28, align 4
  br label %if.end23

if.else15:                                        ; preds = %cond.end
  %29 = load ptr, ptr %ldaf.addr, align 8
  %30 = load i32, ptr %29, align 4
  %31 = load ptr, ptr %n.addr, align 8
  %32 = load i32, ptr %31, align 4
  %cmp16 = icmp sge i32 1, %32
  br i1 %cmp16, label %cond.true17, label %cond.false18

cond.true17:                                      ; preds = %if.else15
  br label %cond.end19

cond.false18:                                     ; preds = %if.else15
  %33 = load ptr, ptr %n.addr, align 8
  %34 = load i32, ptr %33, align 4
  br label %cond.end19

cond.end19:                                       ; preds = %cond.false18, %cond.true17
  %cond20 = phi i32 [ 1, %cond.true17 ], [ %34, %cond.false18 ]
  %cmp21 = icmp slt i32 %30, %cond20
  br i1 %cmp21, label %if.then22, label %if.end

if.then22:                                        ; preds = %cond.end19
  %35 = load ptr, ptr %info.addr, align 8
  store i32 -6, ptr %35, align 4
  br label %if.end

if.end:                                           ; preds = %if.then22, %cond.end19
  br label %if.end23

if.end23:                                         ; preds = %if.end, %if.then14
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.then10
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.then
  %36 = load ptr, ptr %info.addr, align 8
  %37 = load i32, ptr %36, align 4
  %cmp26 = icmp ne i32 %37, 0
  br i1 %cmp26, label %if.then27, label %if.end29

if.then27:                                        ; preds = %if.end25
  %38 = load ptr, ptr %info.addr, align 8
  %39 = load i32, ptr %38, align 4
  %sub = sub nsw i32 0, %39
  store i32 %sub, ptr %i__1, align 4
  %call28 = call i32 @xerbla_(ptr noundef @.str.2, ptr noundef %i__1)
  %40 = load float, ptr %ret_val, align 4
  store float %40, ptr %retval, align 4
  br label %return

if.end29:                                         ; preds = %if.end25
  store i32 0, ptr %up, align 4
  %41 = load ptr, ptr %uplo.addr, align 8
  %call30 = call i32 @lsame_(ptr noundef %41, ptr noundef @.str)
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end29
  store i32 1, ptr %up, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.end29
  store float 0.000000e+00, ptr %anorm, align 4
  %42 = load i32, ptr %up, align 4
  %tobool34 = icmp ne i32 %42, 0
  br i1 %tobool34, label %if.then35, label %if.else184

if.then35:                                        ; preds = %if.end33
  %43 = load ptr, ptr %n.addr, align 8
  %44 = load i32, ptr %43, align 4
  store i32 %44, ptr %i__1, align 4
  store i32 1, ptr %i__, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc181, %if.then35
  %45 = load i32, ptr %i__, align 4
  %46 = load i32, ptr %i__1, align 4
  %cmp36 = icmp sle i32 %45, %46
  br i1 %cmp36, label %for.body, label %for.end183

for.body:                                         ; preds = %for.cond
  store float 0.000000e+00, ptr %tmp, align 4
  %47 = load ptr, ptr %capply.addr, align 8
  %48 = load i32, ptr %47, align 4
  %tobool37 = icmp ne i32 %48, 0
  br i1 %tobool37, label %if.then38, label %if.else102

if.then38:                                        ; preds = %for.body
  %49 = load i32, ptr %i__, align 4
  store i32 %49, ptr %i__2, align 4
  store i32 1, ptr %j, align 4
  br label %for.cond39

for.cond39:                                       ; preds = %for.inc, %if.then38
  %50 = load i32, ptr %j, align 4
  %51 = load i32, ptr %i__2, align 4
  %cmp40 = icmp sle i32 %50, %51
  br i1 %cmp40, label %for.body41, label %for.end

for.body41:                                       ; preds = %for.cond39
  %52 = load i32, ptr %j, align 4
  %53 = load i32, ptr %i__, align 4
  %54 = load i32, ptr %a_dim1, align 4
  %mul = mul nsw i32 %53, %54
  %add42 = add nsw i32 %52, %mul
  store i32 %add42, ptr %i__3, align 4
  %55 = load ptr, ptr %a.addr, align 8
  %56 = load i32, ptr %i__3, align 4
  %idxprom = sext i32 %56 to i64
  %arrayidx = getelementptr inbounds %struct.complex, ptr %55, i64 %idxprom
  %r = getelementptr inbounds %struct.complex, ptr %arrayidx, i32 0, i32 0
  %57 = load float, ptr %r, align 4
  store float %57, ptr %r__1, align 4
  %58 = load float, ptr %r__1, align 4
  %cmp43 = fcmp oge float %58, 0.000000e+00
  br i1 %cmp43, label %cond.true44, label %cond.false45

cond.true44:                                      ; preds = %for.body41
  %59 = load float, ptr %r__1, align 4
  br label %cond.end46

cond.false45:                                     ; preds = %for.body41
  %60 = load float, ptr %r__1, align 4
  %fneg = fneg float %60
  br label %cond.end46

cond.end46:                                       ; preds = %cond.false45, %cond.true44
  %cond47 = phi float [ %59, %cond.true44 ], [ %fneg, %cond.false45 ]
  %61 = load ptr, ptr %a.addr, align 8
  %62 = load i32, ptr %j, align 4
  %63 = load i32, ptr %i__, align 4
  %64 = load i32, ptr %a_dim1, align 4
  %mul48 = mul nsw i32 %63, %64
  %add49 = add nsw i32 %62, %mul48
  %idxprom50 = sext i32 %add49 to i64
  %arrayidx51 = getelementptr inbounds %struct.complex, ptr %61, i64 %idxprom50
  %call52 = call double @r_imag(ptr noundef %arrayidx51)
  %conv = fptrunc double %call52 to float
  store float %conv, ptr %r__2, align 4
  %65 = load float, ptr %r__2, align 4
  %cmp53 = fcmp oge float %65, 0.000000e+00
  br i1 %cmp53, label %cond.true55, label %cond.false56

cond.true55:                                      ; preds = %cond.end46
  %66 = load float, ptr %r__2, align 4
  br label %cond.end58

cond.false56:                                     ; preds = %cond.end46
  %67 = load float, ptr %r__2, align 4
  %fneg57 = fneg float %67
  br label %cond.end58

cond.end58:                                       ; preds = %cond.false56, %cond.true55
  %cond59 = phi float [ %66, %cond.true55 ], [ %fneg57, %cond.false56 ]
  %add60 = fadd float %cond47, %cond59
  %68 = load ptr, ptr %c__.addr, align 8
  %69 = load i32, ptr %j, align 4
  %idxprom61 = sext i32 %69 to i64
  %arrayidx62 = getelementptr inbounds float, ptr %68, i64 %idxprom61
  %70 = load float, ptr %arrayidx62, align 4
  %div = fdiv float %add60, %70
  %71 = load float, ptr %tmp, align 4
  %add63 = fadd float %71, %div
  store float %add63, ptr %tmp, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end58
  %72 = load i32, ptr %j, align 4
  %inc = add nsw i32 %72, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond39, !llvm.loop !5

for.end:                                          ; preds = %for.cond39
  %73 = load ptr, ptr %n.addr, align 8
  %74 = load i32, ptr %73, align 4
  store i32 %74, ptr %i__2, align 4
  %75 = load i32, ptr %i__, align 4
  %add64 = add nsw i32 %75, 1
  store i32 %add64, ptr %j, align 4
  br label %for.cond65

for.cond65:                                       ; preds = %for.inc99, %for.end
  %76 = load i32, ptr %j, align 4
  %77 = load i32, ptr %i__2, align 4
  %cmp66 = icmp sle i32 %76, %77
  br i1 %cmp66, label %for.body68, label %for.end101

for.body68:                                       ; preds = %for.cond65
  %78 = load i32, ptr %i__, align 4
  %79 = load i32, ptr %j, align 4
  %80 = load i32, ptr %a_dim1, align 4
  %mul69 = mul nsw i32 %79, %80
  %add70 = add nsw i32 %78, %mul69
  store i32 %add70, ptr %i__3, align 4
  %81 = load ptr, ptr %a.addr, align 8
  %82 = load i32, ptr %i__3, align 4
  %idxprom71 = sext i32 %82 to i64
  %arrayidx72 = getelementptr inbounds %struct.complex, ptr %81, i64 %idxprom71
  %r73 = getelementptr inbounds %struct.complex, ptr %arrayidx72, i32 0, i32 0
  %83 = load float, ptr %r73, align 4
  store float %83, ptr %r__1, align 4
  %84 = load float, ptr %r__1, align 4
  %cmp74 = fcmp oge float %84, 0.000000e+00
  br i1 %cmp74, label %cond.true76, label %cond.false77

cond.true76:                                      ; preds = %for.body68
  %85 = load float, ptr %r__1, align 4
  br label %cond.end79

cond.false77:                                     ; preds = %for.body68
  %86 = load float, ptr %r__1, align 4
  %fneg78 = fneg float %86
  br label %cond.end79

cond.end79:                                       ; preds = %cond.false77, %cond.true76
  %cond80 = phi float [ %85, %cond.true76 ], [ %fneg78, %cond.false77 ]
  %87 = load ptr, ptr %a.addr, align 8
  %88 = load i32, ptr %i__, align 4
  %89 = load i32, ptr %j, align 4
  %90 = load i32, ptr %a_dim1, align 4
  %mul81 = mul nsw i32 %89, %90
  %add82 = add nsw i32 %88, %mul81
  %idxprom83 = sext i32 %add82 to i64
  %arrayidx84 = getelementptr inbounds %struct.complex, ptr %87, i64 %idxprom83
  %call85 = call double @r_imag(ptr noundef %arrayidx84)
  %conv86 = fptrunc double %call85 to float
  store float %conv86, ptr %r__2, align 4
  %91 = load float, ptr %r__2, align 4
  %cmp87 = fcmp oge float %91, 0.000000e+00
  br i1 %cmp87, label %cond.true89, label %cond.false90

cond.true89:                                      ; preds = %cond.end79
  %92 = load float, ptr %r__2, align 4
  br label %cond.end92

cond.false90:                                     ; preds = %cond.end79
  %93 = load float, ptr %r__2, align 4
  %fneg91 = fneg float %93
  br label %cond.end92

cond.end92:                                       ; preds = %cond.false90, %cond.true89
  %cond93 = phi float [ %92, %cond.true89 ], [ %fneg91, %cond.false90 ]
  %add94 = fadd float %cond80, %cond93
  %94 = load ptr, ptr %c__.addr, align 8
  %95 = load i32, ptr %j, align 4
  %idxprom95 = sext i32 %95 to i64
  %arrayidx96 = getelementptr inbounds float, ptr %94, i64 %idxprom95
  %96 = load float, ptr %arrayidx96, align 4
  %div97 = fdiv float %add94, %96
  %97 = load float, ptr %tmp, align 4
  %add98 = fadd float %97, %div97
  store float %add98, ptr %tmp, align 4
  br label %for.inc99

for.inc99:                                        ; preds = %cond.end92
  %98 = load i32, ptr %j, align 4
  %inc100 = add nsw i32 %98, 1
  store i32 %inc100, ptr %j, align 4
  br label %for.cond65, !llvm.loop !7

for.end101:                                       ; preds = %for.cond65
  br label %if.end172

if.else102:                                       ; preds = %for.body
  %99 = load i32, ptr %i__, align 4
  store i32 %99, ptr %i__2, align 4
  store i32 1, ptr %j, align 4
  br label %for.cond103

for.cond103:                                      ; preds = %for.inc134, %if.else102
  %100 = load i32, ptr %j, align 4
  %101 = load i32, ptr %i__2, align 4
  %cmp104 = icmp sle i32 %100, %101
  br i1 %cmp104, label %for.body106, label %for.end136

for.body106:                                      ; preds = %for.cond103
  %102 = load i32, ptr %j, align 4
  %103 = load i32, ptr %i__, align 4
  %104 = load i32, ptr %a_dim1, align 4
  %mul107 = mul nsw i32 %103, %104
  %add108 = add nsw i32 %102, %mul107
  store i32 %add108, ptr %i__3, align 4
  %105 = load ptr, ptr %a.addr, align 8
  %106 = load i32, ptr %i__3, align 4
  %idxprom109 = sext i32 %106 to i64
  %arrayidx110 = getelementptr inbounds %struct.complex, ptr %105, i64 %idxprom109
  %r111 = getelementptr inbounds %struct.complex, ptr %arrayidx110, i32 0, i32 0
  %107 = load float, ptr %r111, align 4
  store float %107, ptr %r__1, align 4
  %108 = load float, ptr %r__1, align 4
  %cmp112 = fcmp oge float %108, 0.000000e+00
  br i1 %cmp112, label %cond.true114, label %cond.false115

cond.true114:                                     ; preds = %for.body106
  %109 = load float, ptr %r__1, align 4
  br label %cond.end117

cond.false115:                                    ; preds = %for.body106
  %110 = load float, ptr %r__1, align 4
  %fneg116 = fneg float %110
  br label %cond.end117

cond.end117:                                      ; preds = %cond.false115, %cond.true114
  %cond118 = phi float [ %109, %cond.true114 ], [ %fneg116, %cond.false115 ]
  %111 = load ptr, ptr %a.addr, align 8
  %112 = load i32, ptr %j, align 4
  %113 = load i32, ptr %i__, align 4
  %114 = load i32, ptr %a_dim1, align 4
  %mul119 = mul nsw i32 %113, %114
  %add120 = add nsw i32 %112, %mul119
  %idxprom121 = sext i32 %add120 to i64
  %arrayidx122 = getelementptr inbounds %struct.complex, ptr %111, i64 %idxprom121
  %call123 = call double @r_imag(ptr noundef %arrayidx122)
  %conv124 = fptrunc double %call123 to float
  store float %conv124, ptr %r__2, align 4
  %115 = load float, ptr %r__2, align 4
  %cmp125 = fcmp oge float %115, 0.000000e+00
  br i1 %cmp125, label %cond.true127, label %cond.false128

cond.true127:                                     ; preds = %cond.end117
  %116 = load float, ptr %r__2, align 4
  br label %cond.end130

cond.false128:                                    ; preds = %cond.end117
  %117 = load float, ptr %r__2, align 4
  %fneg129 = fneg float %117
  br label %cond.end130

cond.end130:                                      ; preds = %cond.false128, %cond.true127
  %cond131 = phi float [ %116, %cond.true127 ], [ %fneg129, %cond.false128 ]
  %add132 = fadd float %cond118, %cond131
  %118 = load float, ptr %tmp, align 4
  %add133 = fadd float %118, %add132
  store float %add133, ptr %tmp, align 4
  br label %for.inc134

for.inc134:                                       ; preds = %cond.end130
  %119 = load i32, ptr %j, align 4
  %inc135 = add nsw i32 %119, 1
  store i32 %inc135, ptr %j, align 4
  br label %for.cond103, !llvm.loop !8

for.end136:                                       ; preds = %for.cond103
  %120 = load ptr, ptr %n.addr, align 8
  %121 = load i32, ptr %120, align 4
  store i32 %121, ptr %i__2, align 4
  %122 = load i32, ptr %i__, align 4
  %add137 = add nsw i32 %122, 1
  store i32 %add137, ptr %j, align 4
  br label %for.cond138

for.cond138:                                      ; preds = %for.inc169, %for.end136
  %123 = load i32, ptr %j, align 4
  %124 = load i32, ptr %i__2, align 4
  %cmp139 = icmp sle i32 %123, %124
  br i1 %cmp139, label %for.body141, label %for.end171

for.body141:                                      ; preds = %for.cond138
  %125 = load i32, ptr %i__, align 4
  %126 = load i32, ptr %j, align 4
  %127 = load i32, ptr %a_dim1, align 4
  %mul142 = mul nsw i32 %126, %127
  %add143 = add nsw i32 %125, %mul142
  store i32 %add143, ptr %i__3, align 4
  %128 = load ptr, ptr %a.addr, align 8
  %129 = load i32, ptr %i__3, align 4
  %idxprom144 = sext i32 %129 to i64
  %arrayidx145 = getelementptr inbounds %struct.complex, ptr %128, i64 %idxprom144
  %r146 = getelementptr inbounds %struct.complex, ptr %arrayidx145, i32 0, i32 0
  %130 = load float, ptr %r146, align 4
  store float %130, ptr %r__1, align 4
  %131 = load float, ptr %r__1, align 4
  %cmp147 = fcmp oge float %131, 0.000000e+00
  br i1 %cmp147, label %cond.true149, label %cond.false150

cond.true149:                                     ; preds = %for.body141
  %132 = load float, ptr %r__1, align 4
  br label %cond.end152

cond.false150:                                    ; preds = %for.body141
  %133 = load float, ptr %r__1, align 4
  %fneg151 = fneg float %133
  br label %cond.end152

cond.end152:                                      ; preds = %cond.false150, %cond.true149
  %cond153 = phi float [ %132, %cond.true149 ], [ %fneg151, %cond.false150 ]
  %134 = load ptr, ptr %a.addr, align 8
  %135 = load i32, ptr %i__, align 4
  %136 = load i32, ptr %j, align 4
  %137 = load i32, ptr %a_dim1, align 4
  %mul154 = mul nsw i32 %136, %137
  %add155 = add nsw i32 %135, %mul154
  %idxprom156 = sext i32 %add155 to i64
  %arrayidx157 = getelementptr inbounds %struct.complex, ptr %134, i64 %idxprom156
  %call158 = call double @r_imag(ptr noundef %arrayidx157)
  %conv159 = fptrunc double %call158 to float
  store float %conv159, ptr %r__2, align 4
  %138 = load float, ptr %r__2, align 4
  %cmp160 = fcmp oge float %138, 0.000000e+00
  br i1 %cmp160, label %cond.true162, label %cond.false163

cond.true162:                                     ; preds = %cond.end152
  %139 = load float, ptr %r__2, align 4
  br label %cond.end165

cond.false163:                                    ; preds = %cond.end152
  %140 = load float, ptr %r__2, align 4
  %fneg164 = fneg float %140
  br label %cond.end165

cond.end165:                                      ; preds = %cond.false163, %cond.true162
  %cond166 = phi float [ %139, %cond.true162 ], [ %fneg164, %cond.false163 ]
  %add167 = fadd float %cond153, %cond166
  %141 = load float, ptr %tmp, align 4
  %add168 = fadd float %141, %add167
  store float %add168, ptr %tmp, align 4
  br label %for.inc169

for.inc169:                                       ; preds = %cond.end165
  %142 = load i32, ptr %j, align 4
  %inc170 = add nsw i32 %142, 1
  store i32 %inc170, ptr %j, align 4
  br label %for.cond138, !llvm.loop !9

for.end171:                                       ; preds = %for.cond138
  br label %if.end172

if.end172:                                        ; preds = %for.end171, %for.end101
  %143 = load float, ptr %tmp, align 4
  %144 = load ptr, ptr %rwork.addr, align 8
  %145 = load i32, ptr %i__, align 4
  %idxprom173 = sext i32 %145 to i64
  %arrayidx174 = getelementptr inbounds float, ptr %144, i64 %idxprom173
  store float %143, ptr %arrayidx174, align 4
  %146 = load float, ptr %anorm, align 4
  %147 = load float, ptr %tmp, align 4
  %cmp175 = fcmp oge float %146, %147
  br i1 %cmp175, label %cond.true177, label %cond.false178

cond.true177:                                     ; preds = %if.end172
  %148 = load float, ptr %anorm, align 4
  br label %cond.end179

cond.false178:                                    ; preds = %if.end172
  %149 = load float, ptr %tmp, align 4
  br label %cond.end179

cond.end179:                                      ; preds = %cond.false178, %cond.true177
  %cond180 = phi float [ %148, %cond.true177 ], [ %149, %cond.false178 ]
  store float %cond180, ptr %anorm, align 4
  br label %for.inc181

for.inc181:                                       ; preds = %cond.end179
  %150 = load i32, ptr %i__, align 4
  %inc182 = add nsw i32 %150, 1
  store i32 %inc182, ptr %i__, align 4
  br label %for.cond, !llvm.loop !10

for.end183:                                       ; preds = %for.cond
  br label %if.end348

if.else184:                                       ; preds = %if.end33
  %151 = load ptr, ptr %n.addr, align 8
  %152 = load i32, ptr %151, align 4
  store i32 %152, ptr %i__1, align 4
  store i32 1, ptr %i__, align 4
  br label %for.cond185

for.cond185:                                      ; preds = %for.inc345, %if.else184
  %153 = load i32, ptr %i__, align 4
  %154 = load i32, ptr %i__1, align 4
  %cmp186 = icmp sle i32 %153, %154
  br i1 %cmp186, label %for.body188, label %for.end347

for.body188:                                      ; preds = %for.cond185
  store float 0.000000e+00, ptr %tmp, align 4
  %155 = load ptr, ptr %capply.addr, align 8
  %156 = load i32, ptr %155, align 4
  %tobool189 = icmp ne i32 %156, 0
  br i1 %tobool189, label %if.then190, label %if.else266

if.then190:                                       ; preds = %for.body188
  %157 = load i32, ptr %i__, align 4
  store i32 %157, ptr %i__2, align 4
  store i32 1, ptr %j, align 4
  br label %for.cond191

for.cond191:                                      ; preds = %for.inc225, %if.then190
  %158 = load i32, ptr %j, align 4
  %159 = load i32, ptr %i__2, align 4
  %cmp192 = icmp sle i32 %158, %159
  br i1 %cmp192, label %for.body194, label %for.end227

for.body194:                                      ; preds = %for.cond191
  %160 = load i32, ptr %i__, align 4
  %161 = load i32, ptr %j, align 4
  %162 = load i32, ptr %a_dim1, align 4
  %mul195 = mul nsw i32 %161, %162
  %add196 = add nsw i32 %160, %mul195
  store i32 %add196, ptr %i__3, align 4
  %163 = load ptr, ptr %a.addr, align 8
  %164 = load i32, ptr %i__3, align 4
  %idxprom197 = sext i32 %164 to i64
  %arrayidx198 = getelementptr inbounds %struct.complex, ptr %163, i64 %idxprom197
  %r199 = getelementptr inbounds %struct.complex, ptr %arrayidx198, i32 0, i32 0
  %165 = load float, ptr %r199, align 4
  store float %165, ptr %r__1, align 4
  %166 = load float, ptr %r__1, align 4
  %cmp200 = fcmp oge float %166, 0.000000e+00
  br i1 %cmp200, label %cond.true202, label %cond.false203

cond.true202:                                     ; preds = %for.body194
  %167 = load float, ptr %r__1, align 4
  br label %cond.end205

cond.false203:                                    ; preds = %for.body194
  %168 = load float, ptr %r__1, align 4
  %fneg204 = fneg float %168
  br label %cond.end205

cond.end205:                                      ; preds = %cond.false203, %cond.true202
  %cond206 = phi float [ %167, %cond.true202 ], [ %fneg204, %cond.false203 ]
  %169 = load ptr, ptr %a.addr, align 8
  %170 = load i32, ptr %i__, align 4
  %171 = load i32, ptr %j, align 4
  %172 = load i32, ptr %a_dim1, align 4
  %mul207 = mul nsw i32 %171, %172
  %add208 = add nsw i32 %170, %mul207
  %idxprom209 = sext i32 %add208 to i64
  %arrayidx210 = getelementptr inbounds %struct.complex, ptr %169, i64 %idxprom209
  %call211 = call double @r_imag(ptr noundef %arrayidx210)
  %conv212 = fptrunc double %call211 to float
  store float %conv212, ptr %r__2, align 4
  %173 = load float, ptr %r__2, align 4
  %cmp213 = fcmp oge float %173, 0.000000e+00
  br i1 %cmp213, label %cond.true215, label %cond.false216

cond.true215:                                     ; preds = %cond.end205
  %174 = load float, ptr %r__2, align 4
  br label %cond.end218

cond.false216:                                    ; preds = %cond.end205
  %175 = load float, ptr %r__2, align 4
  %fneg217 = fneg float %175
  br label %cond.end218

cond.end218:                                      ; preds = %cond.false216, %cond.true215
  %cond219 = phi float [ %174, %cond.true215 ], [ %fneg217, %cond.false216 ]
  %add220 = fadd float %cond206, %cond219
  %176 = load ptr, ptr %c__.addr, align 8
  %177 = load i32, ptr %j, align 4
  %idxprom221 = sext i32 %177 to i64
  %arrayidx222 = getelementptr inbounds float, ptr %176, i64 %idxprom221
  %178 = load float, ptr %arrayidx222, align 4
  %div223 = fdiv float %add220, %178
  %179 = load float, ptr %tmp, align 4
  %add224 = fadd float %179, %div223
  store float %add224, ptr %tmp, align 4
  br label %for.inc225

for.inc225:                                       ; preds = %cond.end218
  %180 = load i32, ptr %j, align 4
  %inc226 = add nsw i32 %180, 1
  store i32 %inc226, ptr %j, align 4
  br label %for.cond191, !llvm.loop !11

for.end227:                                       ; preds = %for.cond191
  %181 = load ptr, ptr %n.addr, align 8
  %182 = load i32, ptr %181, align 4
  store i32 %182, ptr %i__2, align 4
  %183 = load i32, ptr %i__, align 4
  %add228 = add nsw i32 %183, 1
  store i32 %add228, ptr %j, align 4
  br label %for.cond229

for.cond229:                                      ; preds = %for.inc263, %for.end227
  %184 = load i32, ptr %j, align 4
  %185 = load i32, ptr %i__2, align 4
  %cmp230 = icmp sle i32 %184, %185
  br i1 %cmp230, label %for.body232, label %for.end265

for.body232:                                      ; preds = %for.cond229
  %186 = load i32, ptr %j, align 4
  %187 = load i32, ptr %i__, align 4
  %188 = load i32, ptr %a_dim1, align 4
  %mul233 = mul nsw i32 %187, %188
  %add234 = add nsw i32 %186, %mul233
  store i32 %add234, ptr %i__3, align 4
  %189 = load ptr, ptr %a.addr, align 8
  %190 = load i32, ptr %i__3, align 4
  %idxprom235 = sext i32 %190 to i64
  %arrayidx236 = getelementptr inbounds %struct.complex, ptr %189, i64 %idxprom235
  %r237 = getelementptr inbounds %struct.complex, ptr %arrayidx236, i32 0, i32 0
  %191 = load float, ptr %r237, align 4
  store float %191, ptr %r__1, align 4
  %192 = load float, ptr %r__1, align 4
  %cmp238 = fcmp oge float %192, 0.000000e+00
  br i1 %cmp238, label %cond.true240, label %cond.false241

cond.true240:                                     ; preds = %for.body232
  %193 = load float, ptr %r__1, align 4
  br label %cond.end243

cond.false241:                                    ; preds = %for.body232
  %194 = load float, ptr %r__1, align 4
  %fneg242 = fneg float %194
  br label %cond.end243

cond.end243:                                      ; preds = %cond.false241, %cond.true240
  %cond244 = phi float [ %193, %cond.true240 ], [ %fneg242, %cond.false241 ]
  %195 = load ptr, ptr %a.addr, align 8
  %196 = load i32, ptr %j, align 4
  %197 = load i32, ptr %i__, align 4
  %198 = load i32, ptr %a_dim1, align 4
  %mul245 = mul nsw i32 %197, %198
  %add246 = add nsw i32 %196, %mul245
  %idxprom247 = sext i32 %add246 to i64
  %arrayidx248 = getelementptr inbounds %struct.complex, ptr %195, i64 %idxprom247
  %call249 = call double @r_imag(ptr noundef %arrayidx248)
  %conv250 = fptrunc double %call249 to float
  store float %conv250, ptr %r__2, align 4
  %199 = load float, ptr %r__2, align 4
  %cmp251 = fcmp oge float %199, 0.000000e+00
  br i1 %cmp251, label %cond.true253, label %cond.false254

cond.true253:                                     ; preds = %cond.end243
  %200 = load float, ptr %r__2, align 4
  br label %cond.end256

cond.false254:                                    ; preds = %cond.end243
  %201 = load float, ptr %r__2, align 4
  %fneg255 = fneg float %201
  br label %cond.end256

cond.end256:                                      ; preds = %cond.false254, %cond.true253
  %cond257 = phi float [ %200, %cond.true253 ], [ %fneg255, %cond.false254 ]
  %add258 = fadd float %cond244, %cond257
  %202 = load ptr, ptr %c__.addr, align 8
  %203 = load i32, ptr %j, align 4
  %idxprom259 = sext i32 %203 to i64
  %arrayidx260 = getelementptr inbounds float, ptr %202, i64 %idxprom259
  %204 = load float, ptr %arrayidx260, align 4
  %div261 = fdiv float %add258, %204
  %205 = load float, ptr %tmp, align 4
  %add262 = fadd float %205, %div261
  store float %add262, ptr %tmp, align 4
  br label %for.inc263

for.inc263:                                       ; preds = %cond.end256
  %206 = load i32, ptr %j, align 4
  %inc264 = add nsw i32 %206, 1
  store i32 %inc264, ptr %j, align 4
  br label %for.cond229, !llvm.loop !12

for.end265:                                       ; preds = %for.cond229
  br label %if.end336

if.else266:                                       ; preds = %for.body188
  %207 = load i32, ptr %i__, align 4
  store i32 %207, ptr %i__2, align 4
  store i32 1, ptr %j, align 4
  br label %for.cond267

for.cond267:                                      ; preds = %for.inc298, %if.else266
  %208 = load i32, ptr %j, align 4
  %209 = load i32, ptr %i__2, align 4
  %cmp268 = icmp sle i32 %208, %209
  br i1 %cmp268, label %for.body270, label %for.end300

for.body270:                                      ; preds = %for.cond267
  %210 = load i32, ptr %i__, align 4
  %211 = load i32, ptr %j, align 4
  %212 = load i32, ptr %a_dim1, align 4
  %mul271 = mul nsw i32 %211, %212
  %add272 = add nsw i32 %210, %mul271
  store i32 %add272, ptr %i__3, align 4
  %213 = load ptr, ptr %a.addr, align 8
  %214 = load i32, ptr %i__3, align 4
  %idxprom273 = sext i32 %214 to i64
  %arrayidx274 = getelementptr inbounds %struct.complex, ptr %213, i64 %idxprom273
  %r275 = getelementptr inbounds %struct.complex, ptr %arrayidx274, i32 0, i32 0
  %215 = load float, ptr %r275, align 4
  store float %215, ptr %r__1, align 4
  %216 = load float, ptr %r__1, align 4
  %cmp276 = fcmp oge float %216, 0.000000e+00
  br i1 %cmp276, label %cond.true278, label %cond.false279

cond.true278:                                     ; preds = %for.body270
  %217 = load float, ptr %r__1, align 4
  br label %cond.end281

cond.false279:                                    ; preds = %for.body270
  %218 = load float, ptr %r__1, align 4
  %fneg280 = fneg float %218
  br label %cond.end281

cond.end281:                                      ; preds = %cond.false279, %cond.true278
  %cond282 = phi float [ %217, %cond.true278 ], [ %fneg280, %cond.false279 ]
  %219 = load ptr, ptr %a.addr, align 8
  %220 = load i32, ptr %i__, align 4
  %221 = load i32, ptr %j, align 4
  %222 = load i32, ptr %a_dim1, align 4
  %mul283 = mul nsw i32 %221, %222
  %add284 = add nsw i32 %220, %mul283
  %idxprom285 = sext i32 %add284 to i64
  %arrayidx286 = getelementptr inbounds %struct.complex, ptr %219, i64 %idxprom285
  %call287 = call double @r_imag(ptr noundef %arrayidx286)
  %conv288 = fptrunc double %call287 to float
  store float %conv288, ptr %r__2, align 4
  %223 = load float, ptr %r__2, align 4
  %cmp289 = fcmp oge float %223, 0.000000e+00
  br i1 %cmp289, label %cond.true291, label %cond.false292

cond.true291:                                     ; preds = %cond.end281
  %224 = load float, ptr %r__2, align 4
  br label %cond.end294

cond.false292:                                    ; preds = %cond.end281
  %225 = load float, ptr %r__2, align 4
  %fneg293 = fneg float %225
  br label %cond.end294

cond.end294:                                      ; preds = %cond.false292, %cond.true291
  %cond295 = phi float [ %224, %cond.true291 ], [ %fneg293, %cond.false292 ]
  %add296 = fadd float %cond282, %cond295
  %226 = load float, ptr %tmp, align 4
  %add297 = fadd float %226, %add296
  store float %add297, ptr %tmp, align 4
  br label %for.inc298

for.inc298:                                       ; preds = %cond.end294
  %227 = load i32, ptr %j, align 4
  %inc299 = add nsw i32 %227, 1
  store i32 %inc299, ptr %j, align 4
  br label %for.cond267, !llvm.loop !13

for.end300:                                       ; preds = %for.cond267
  %228 = load ptr, ptr %n.addr, align 8
  %229 = load i32, ptr %228, align 4
  store i32 %229, ptr %i__2, align 4
  %230 = load i32, ptr %i__, align 4
  %add301 = add nsw i32 %230, 1
  store i32 %add301, ptr %j, align 4
  br label %for.cond302

for.cond302:                                      ; preds = %for.inc333, %for.end300
  %231 = load i32, ptr %j, align 4
  %232 = load i32, ptr %i__2, align 4
  %cmp303 = icmp sle i32 %231, %232
  br i1 %cmp303, label %for.body305, label %for.end335

for.body305:                                      ; preds = %for.cond302
  %233 = load i32, ptr %j, align 4
  %234 = load i32, ptr %i__, align 4
  %235 = load i32, ptr %a_dim1, align 4
  %mul306 = mul nsw i32 %234, %235
  %add307 = add nsw i32 %233, %mul306
  store i32 %add307, ptr %i__3, align 4
  %236 = load ptr, ptr %a.addr, align 8
  %237 = load i32, ptr %i__3, align 4
  %idxprom308 = sext i32 %237 to i64
  %arrayidx309 = getelementptr inbounds %struct.complex, ptr %236, i64 %idxprom308
  %r310 = getelementptr inbounds %struct.complex, ptr %arrayidx309, i32 0, i32 0
  %238 = load float, ptr %r310, align 4
  store float %238, ptr %r__1, align 4
  %239 = load float, ptr %r__1, align 4
  %cmp311 = fcmp oge float %239, 0.000000e+00
  br i1 %cmp311, label %cond.true313, label %cond.false314

cond.true313:                                     ; preds = %for.body305
  %240 = load float, ptr %r__1, align 4
  br label %cond.end316

cond.false314:                                    ; preds = %for.body305
  %241 = load float, ptr %r__1, align 4
  %fneg315 = fneg float %241
  br label %cond.end316

cond.end316:                                      ; preds = %cond.false314, %cond.true313
  %cond317 = phi float [ %240, %cond.true313 ], [ %fneg315, %cond.false314 ]
  %242 = load ptr, ptr %a.addr, align 8
  %243 = load i32, ptr %j, align 4
  %244 = load i32, ptr %i__, align 4
  %245 = load i32, ptr %a_dim1, align 4
  %mul318 = mul nsw i32 %244, %245
  %add319 = add nsw i32 %243, %mul318
  %idxprom320 = sext i32 %add319 to i64
  %arrayidx321 = getelementptr inbounds %struct.complex, ptr %242, i64 %idxprom320
  %call322 = call double @r_imag(ptr noundef %arrayidx321)
  %conv323 = fptrunc double %call322 to float
  store float %conv323, ptr %r__2, align 4
  %246 = load float, ptr %r__2, align 4
  %cmp324 = fcmp oge float %246, 0.000000e+00
  br i1 %cmp324, label %cond.true326, label %cond.false327

cond.true326:                                     ; preds = %cond.end316
  %247 = load float, ptr %r__2, align 4
  br label %cond.end329

cond.false327:                                    ; preds = %cond.end316
  %248 = load float, ptr %r__2, align 4
  %fneg328 = fneg float %248
  br label %cond.end329

cond.end329:                                      ; preds = %cond.false327, %cond.true326
  %cond330 = phi float [ %247, %cond.true326 ], [ %fneg328, %cond.false327 ]
  %add331 = fadd float %cond317, %cond330
  %249 = load float, ptr %tmp, align 4
  %add332 = fadd float %249, %add331
  store float %add332, ptr %tmp, align 4
  br label %for.inc333

for.inc333:                                       ; preds = %cond.end329
  %250 = load i32, ptr %j, align 4
  %inc334 = add nsw i32 %250, 1
  store i32 %inc334, ptr %j, align 4
  br label %for.cond302, !llvm.loop !14

for.end335:                                       ; preds = %for.cond302
  br label %if.end336

if.end336:                                        ; preds = %for.end335, %for.end265
  %251 = load float, ptr %tmp, align 4
  %252 = load ptr, ptr %rwork.addr, align 8
  %253 = load i32, ptr %i__, align 4
  %idxprom337 = sext i32 %253 to i64
  %arrayidx338 = getelementptr inbounds float, ptr %252, i64 %idxprom337
  store float %251, ptr %arrayidx338, align 4
  %254 = load float, ptr %anorm, align 4
  %255 = load float, ptr %tmp, align 4
  %cmp339 = fcmp oge float %254, %255
  br i1 %cmp339, label %cond.true341, label %cond.false342

cond.true341:                                     ; preds = %if.end336
  %256 = load float, ptr %anorm, align 4
  br label %cond.end343

cond.false342:                                    ; preds = %if.end336
  %257 = load float, ptr %tmp, align 4
  br label %cond.end343

cond.end343:                                      ; preds = %cond.false342, %cond.true341
  %cond344 = phi float [ %256, %cond.true341 ], [ %257, %cond.false342 ]
  store float %cond344, ptr %anorm, align 4
  br label %for.inc345

for.inc345:                                       ; preds = %cond.end343
  %258 = load i32, ptr %i__, align 4
  %inc346 = add nsw i32 %258, 1
  store i32 %inc346, ptr %i__, align 4
  br label %for.cond185, !llvm.loop !15

for.end347:                                       ; preds = %for.cond185
  br label %if.end348

if.end348:                                        ; preds = %for.end347, %for.end183
  %259 = load ptr, ptr %n.addr, align 8
  %260 = load i32, ptr %259, align 4
  %cmp349 = icmp eq i32 %260, 0
  br i1 %cmp349, label %if.then351, label %if.else352

if.then351:                                       ; preds = %if.end348
  store float 1.000000e+00, ptr %ret_val, align 4
  %261 = load float, ptr %ret_val, align 4
  store float %261, ptr %retval, align 4
  br label %return

if.else352:                                       ; preds = %if.end348
  %262 = load float, ptr %anorm, align 4
  %cmp353 = fcmp oeq float %262, 0.000000e+00
  br i1 %cmp353, label %if.then355, label %if.end356

if.then355:                                       ; preds = %if.else352
  %263 = load float, ptr %ret_val, align 4
  store float %263, ptr %retval, align 4
  br label %return

if.end356:                                        ; preds = %if.else352
  br label %if.end357

if.end357:                                        ; preds = %if.end356
  store float 0.000000e+00, ptr %ainvnm, align 4
  store i32 0, ptr %kase, align 4
  br label %L10

L10:                                              ; preds = %if.end519, %if.end357
  %264 = load ptr, ptr %n.addr, align 8
  %265 = load ptr, ptr %work.addr, align 8
  %266 = load ptr, ptr %n.addr, align 8
  %267 = load i32, ptr %266, align 4
  %add358 = add nsw i32 %267, 1
  %idxprom359 = sext i32 %add358 to i64
  %arrayidx360 = getelementptr inbounds %struct.complex, ptr %265, i64 %idxprom359
  %268 = load ptr, ptr %work.addr, align 8
  %arrayidx361 = getelementptr inbounds %struct.complex, ptr %268, i64 1
  %arraydecay = getelementptr inbounds [3 x i32], ptr %isave, i64 0, i64 0
  %call362 = call i32 @clacn2_(ptr noundef %264, ptr noundef %arrayidx360, ptr noundef %arrayidx361, ptr noundef %ainvnm, ptr noundef %kase, ptr noundef %arraydecay)
  %269 = load i32, ptr %kase, align 4
  %cmp363 = icmp ne i32 %269, 0
  br i1 %cmp363, label %if.then365, label %if.end520

if.then365:                                       ; preds = %L10
  %270 = load i32, ptr %kase, align 4
  %cmp366 = icmp eq i32 %270, 2
  br i1 %cmp366, label %if.then368, label %if.else443

if.then368:                                       ; preds = %if.then365
  %271 = load ptr, ptr %n.addr, align 8
  %272 = load i32, ptr %271, align 4
  store i32 %272, ptr %i__1, align 4
  store i32 1, ptr %i__, align 4
  br label %for.cond369

for.cond369:                                      ; preds = %for.inc394, %if.then368
  %273 = load i32, ptr %i__, align 4
  %274 = load i32, ptr %i__1, align 4
  %cmp370 = icmp sle i32 %273, %274
  br i1 %cmp370, label %for.body372, label %for.end396

for.body372:                                      ; preds = %for.cond369
  %275 = load i32, ptr %i__, align 4
  store i32 %275, ptr %i__2, align 4
  %276 = load i32, ptr %i__, align 4
  store i32 %276, ptr %i__3, align 4
  %277 = load i32, ptr %i__, align 4
  store i32 %277, ptr %i__4, align 4
  %278 = load ptr, ptr %rwork.addr, align 8
  %279 = load i32, ptr %i__4, align 4
  %idxprom373 = sext i32 %279 to i64
  %arrayidx374 = getelementptr inbounds float, ptr %278, i64 %idxprom373
  %280 = load float, ptr %arrayidx374, align 4
  %281 = load ptr, ptr %work.addr, align 8
  %282 = load i32, ptr %i__3, align 4
  %idxprom375 = sext i32 %282 to i64
  %arrayidx376 = getelementptr inbounds %struct.complex, ptr %281, i64 %idxprom375
  %r377 = getelementptr inbounds %struct.complex, ptr %arrayidx376, i32 0, i32 0
  %283 = load float, ptr %r377, align 4
  %mul378 = fmul float %280, %283
  %r379 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float %mul378, ptr %r379, align 4
  %284 = load ptr, ptr %rwork.addr, align 8
  %285 = load i32, ptr %i__4, align 4
  %idxprom380 = sext i32 %285 to i64
  %arrayidx381 = getelementptr inbounds float, ptr %284, i64 %idxprom380
  %286 = load float, ptr %arrayidx381, align 4
  %287 = load ptr, ptr %work.addr, align 8
  %288 = load i32, ptr %i__3, align 4
  %idxprom382 = sext i32 %288 to i64
  %arrayidx383 = getelementptr inbounds %struct.complex, ptr %287, i64 %idxprom382
  %i = getelementptr inbounds %struct.complex, ptr %arrayidx383, i32 0, i32 1
  %289 = load float, ptr %i, align 4
  %mul384 = fmul float %286, %289
  %i385 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float %mul384, ptr %i385, align 4
  %r386 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %290 = load float, ptr %r386, align 4
  %291 = load ptr, ptr %work.addr, align 8
  %292 = load i32, ptr %i__2, align 4
  %idxprom387 = sext i32 %292 to i64
  %arrayidx388 = getelementptr inbounds %struct.complex, ptr %291, i64 %idxprom387
  %r389 = getelementptr inbounds %struct.complex, ptr %arrayidx388, i32 0, i32 0
  store float %290, ptr %r389, align 4
  %i390 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %293 = load float, ptr %i390, align 4
  %294 = load ptr, ptr %work.addr, align 8
  %295 = load i32, ptr %i__2, align 4
  %idxprom391 = sext i32 %295 to i64
  %arrayidx392 = getelementptr inbounds %struct.complex, ptr %294, i64 %idxprom391
  %i393 = getelementptr inbounds %struct.complex, ptr %arrayidx392, i32 0, i32 1
  store float %293, ptr %i393, align 4
  br label %for.inc394

for.inc394:                                       ; preds = %for.body372
  %296 = load i32, ptr %i__, align 4
  %inc395 = add nsw i32 %296, 1
  store i32 %inc395, ptr %i__, align 4
  br label %for.cond369, !llvm.loop !16

for.end396:                                       ; preds = %for.cond369
  %297 = load i32, ptr %up, align 4
  %tobool397 = icmp ne i32 %297, 0
  br i1 %tobool397, label %if.then398, label %if.else404

if.then398:                                       ; preds = %for.end396
  %298 = load ptr, ptr %n.addr, align 8
  %299 = load ptr, ptr %af.addr, align 8
  %300 = load i32, ptr %af_offset, align 4
  %idxprom399 = sext i32 %300 to i64
  %arrayidx400 = getelementptr inbounds %struct.complex, ptr %299, i64 %idxprom399
  %301 = load ptr, ptr %ldaf.addr, align 8
  %302 = load ptr, ptr %ipiv.addr, align 8
  %arrayidx401 = getelementptr inbounds i32, ptr %302, i64 1
  %303 = load ptr, ptr %work.addr, align 8
  %arrayidx402 = getelementptr inbounds %struct.complex, ptr %303, i64 1
  %304 = load ptr, ptr %n.addr, align 8
  %305 = load ptr, ptr %info.addr, align 8
  %call403 = call i32 @chetrs_(ptr noundef @.str, ptr noundef %298, ptr noundef @c__1, ptr noundef %arrayidx400, ptr noundef %301, ptr noundef %arrayidx401, ptr noundef %arrayidx402, ptr noundef %304, ptr noundef %305)
  br label %if.end410

if.else404:                                       ; preds = %for.end396
  %306 = load ptr, ptr %n.addr, align 8
  %307 = load ptr, ptr %af.addr, align 8
  %308 = load i32, ptr %af_offset, align 4
  %idxprom405 = sext i32 %308 to i64
  %arrayidx406 = getelementptr inbounds %struct.complex, ptr %307, i64 %idxprom405
  %309 = load ptr, ptr %ldaf.addr, align 8
  %310 = load ptr, ptr %ipiv.addr, align 8
  %arrayidx407 = getelementptr inbounds i32, ptr %310, i64 1
  %311 = load ptr, ptr %work.addr, align 8
  %arrayidx408 = getelementptr inbounds %struct.complex, ptr %311, i64 1
  %312 = load ptr, ptr %n.addr, align 8
  %313 = load ptr, ptr %info.addr, align 8
  %call409 = call i32 @chetrs_(ptr noundef @.str.1, ptr noundef %306, ptr noundef @c__1, ptr noundef %arrayidx406, ptr noundef %309, ptr noundef %arrayidx407, ptr noundef %arrayidx408, ptr noundef %312, ptr noundef %313)
  br label %if.end410

if.end410:                                        ; preds = %if.else404, %if.then398
  %314 = load ptr, ptr %capply.addr, align 8
  %315 = load i32, ptr %314, align 4
  %tobool411 = icmp ne i32 %315, 0
  br i1 %tobool411, label %if.then412, label %if.end442

if.then412:                                       ; preds = %if.end410
  %316 = load ptr, ptr %n.addr, align 8
  %317 = load i32, ptr %316, align 4
  store i32 %317, ptr %i__1, align 4
  store i32 1, ptr %i__, align 4
  br label %for.cond413

for.cond413:                                      ; preds = %for.inc439, %if.then412
  %318 = load i32, ptr %i__, align 4
  %319 = load i32, ptr %i__1, align 4
  %cmp414 = icmp sle i32 %318, %319
  br i1 %cmp414, label %for.body416, label %for.end441

for.body416:                                      ; preds = %for.cond413
  %320 = load i32, ptr %i__, align 4
  store i32 %320, ptr %i__2, align 4
  %321 = load i32, ptr %i__, align 4
  store i32 %321, ptr %i__3, align 4
  %322 = load i32, ptr %i__, align 4
  store i32 %322, ptr %i__4, align 4
  %323 = load ptr, ptr %c__.addr, align 8
  %324 = load i32, ptr %i__4, align 4
  %idxprom417 = sext i32 %324 to i64
  %arrayidx418 = getelementptr inbounds float, ptr %323, i64 %idxprom417
  %325 = load float, ptr %arrayidx418, align 4
  %326 = load ptr, ptr %work.addr, align 8
  %327 = load i32, ptr %i__3, align 4
  %idxprom419 = sext i32 %327 to i64
  %arrayidx420 = getelementptr inbounds %struct.complex, ptr %326, i64 %idxprom419
  %r421 = getelementptr inbounds %struct.complex, ptr %arrayidx420, i32 0, i32 0
  %328 = load float, ptr %r421, align 4
  %mul422 = fmul float %325, %328
  %r423 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float %mul422, ptr %r423, align 4
  %329 = load ptr, ptr %c__.addr, align 8
  %330 = load i32, ptr %i__4, align 4
  %idxprom424 = sext i32 %330 to i64
  %arrayidx425 = getelementptr inbounds float, ptr %329, i64 %idxprom424
  %331 = load float, ptr %arrayidx425, align 4
  %332 = load ptr, ptr %work.addr, align 8
  %333 = load i32, ptr %i__3, align 4
  %idxprom426 = sext i32 %333 to i64
  %arrayidx427 = getelementptr inbounds %struct.complex, ptr %332, i64 %idxprom426
  %i428 = getelementptr inbounds %struct.complex, ptr %arrayidx427, i32 0, i32 1
  %334 = load float, ptr %i428, align 4
  %mul429 = fmul float %331, %334
  %i430 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float %mul429, ptr %i430, align 4
  %r431 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %335 = load float, ptr %r431, align 4
  %336 = load ptr, ptr %work.addr, align 8
  %337 = load i32, ptr %i__2, align 4
  %idxprom432 = sext i32 %337 to i64
  %arrayidx433 = getelementptr inbounds %struct.complex, ptr %336, i64 %idxprom432
  %r434 = getelementptr inbounds %struct.complex, ptr %arrayidx433, i32 0, i32 0
  store float %335, ptr %r434, align 4
  %i435 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %338 = load float, ptr %i435, align 4
  %339 = load ptr, ptr %work.addr, align 8
  %340 = load i32, ptr %i__2, align 4
  %idxprom436 = sext i32 %340 to i64
  %arrayidx437 = getelementptr inbounds %struct.complex, ptr %339, i64 %idxprom436
  %i438 = getelementptr inbounds %struct.complex, ptr %arrayidx437, i32 0, i32 1
  store float %338, ptr %i438, align 4
  br label %for.inc439

for.inc439:                                       ; preds = %for.body416
  %341 = load i32, ptr %i__, align 4
  %inc440 = add nsw i32 %341, 1
  store i32 %inc440, ptr %i__, align 4
  br label %for.cond413, !llvm.loop !17

for.end441:                                       ; preds = %for.cond413
  br label %if.end442

if.end442:                                        ; preds = %for.end441, %if.end410
  br label %if.end519

if.else443:                                       ; preds = %if.then365
  %342 = load ptr, ptr %capply.addr, align 8
  %343 = load i32, ptr %342, align 4
  %tobool444 = icmp ne i32 %343, 0
  br i1 %tobool444, label %if.then445, label %if.end475

if.then445:                                       ; preds = %if.else443
  %344 = load ptr, ptr %n.addr, align 8
  %345 = load i32, ptr %344, align 4
  store i32 %345, ptr %i__1, align 4
  store i32 1, ptr %i__, align 4
  br label %for.cond446

for.cond446:                                      ; preds = %for.inc472, %if.then445
  %346 = load i32, ptr %i__, align 4
  %347 = load i32, ptr %i__1, align 4
  %cmp447 = icmp sle i32 %346, %347
  br i1 %cmp447, label %for.body449, label %for.end474

for.body449:                                      ; preds = %for.cond446
  %348 = load i32, ptr %i__, align 4
  store i32 %348, ptr %i__2, align 4
  %349 = load i32, ptr %i__, align 4
  store i32 %349, ptr %i__3, align 4
  %350 = load i32, ptr %i__, align 4
  store i32 %350, ptr %i__4, align 4
  %351 = load ptr, ptr %c__.addr, align 8
  %352 = load i32, ptr %i__4, align 4
  %idxprom450 = sext i32 %352 to i64
  %arrayidx451 = getelementptr inbounds float, ptr %351, i64 %idxprom450
  %353 = load float, ptr %arrayidx451, align 4
  %354 = load ptr, ptr %work.addr, align 8
  %355 = load i32, ptr %i__3, align 4
  %idxprom452 = sext i32 %355 to i64
  %arrayidx453 = getelementptr inbounds %struct.complex, ptr %354, i64 %idxprom452
  %r454 = getelementptr inbounds %struct.complex, ptr %arrayidx453, i32 0, i32 0
  %356 = load float, ptr %r454, align 4
  %mul455 = fmul float %353, %356
  %r456 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float %mul455, ptr %r456, align 4
  %357 = load ptr, ptr %c__.addr, align 8
  %358 = load i32, ptr %i__4, align 4
  %idxprom457 = sext i32 %358 to i64
  %arrayidx458 = getelementptr inbounds float, ptr %357, i64 %idxprom457
  %359 = load float, ptr %arrayidx458, align 4
  %360 = load ptr, ptr %work.addr, align 8
  %361 = load i32, ptr %i__3, align 4
  %idxprom459 = sext i32 %361 to i64
  %arrayidx460 = getelementptr inbounds %struct.complex, ptr %360, i64 %idxprom459
  %i461 = getelementptr inbounds %struct.complex, ptr %arrayidx460, i32 0, i32 1
  %362 = load float, ptr %i461, align 4
  %mul462 = fmul float %359, %362
  %i463 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float %mul462, ptr %i463, align 4
  %r464 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %363 = load float, ptr %r464, align 4
  %364 = load ptr, ptr %work.addr, align 8
  %365 = load i32, ptr %i__2, align 4
  %idxprom465 = sext i32 %365 to i64
  %arrayidx466 = getelementptr inbounds %struct.complex, ptr %364, i64 %idxprom465
  %r467 = getelementptr inbounds %struct.complex, ptr %arrayidx466, i32 0, i32 0
  store float %363, ptr %r467, align 4
  %i468 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %366 = load float, ptr %i468, align 4
  %367 = load ptr, ptr %work.addr, align 8
  %368 = load i32, ptr %i__2, align 4
  %idxprom469 = sext i32 %368 to i64
  %arrayidx470 = getelementptr inbounds %struct.complex, ptr %367, i64 %idxprom469
  %i471 = getelementptr inbounds %struct.complex, ptr %arrayidx470, i32 0, i32 1
  store float %366, ptr %i471, align 4
  br label %for.inc472

for.inc472:                                       ; preds = %for.body449
  %369 = load i32, ptr %i__, align 4
  %inc473 = add nsw i32 %369, 1
  store i32 %inc473, ptr %i__, align 4
  br label %for.cond446, !llvm.loop !18

for.end474:                                       ; preds = %for.cond446
  br label %if.end475

if.end475:                                        ; preds = %for.end474, %if.else443
  %370 = load i32, ptr %up, align 4
  %tobool476 = icmp ne i32 %370, 0
  br i1 %tobool476, label %if.then477, label %if.else483

if.then477:                                       ; preds = %if.end475
  %371 = load ptr, ptr %n.addr, align 8
  %372 = load ptr, ptr %af.addr, align 8
  %373 = load i32, ptr %af_offset, align 4
  %idxprom478 = sext i32 %373 to i64
  %arrayidx479 = getelementptr inbounds %struct.complex, ptr %372, i64 %idxprom478
  %374 = load ptr, ptr %ldaf.addr, align 8
  %375 = load ptr, ptr %ipiv.addr, align 8
  %arrayidx480 = getelementptr inbounds i32, ptr %375, i64 1
  %376 = load ptr, ptr %work.addr, align 8
  %arrayidx481 = getelementptr inbounds %struct.complex, ptr %376, i64 1
  %377 = load ptr, ptr %n.addr, align 8
  %378 = load ptr, ptr %info.addr, align 8
  %call482 = call i32 @chetrs_(ptr noundef @.str, ptr noundef %371, ptr noundef @c__1, ptr noundef %arrayidx479, ptr noundef %374, ptr noundef %arrayidx480, ptr noundef %arrayidx481, ptr noundef %377, ptr noundef %378)
  br label %if.end489

if.else483:                                       ; preds = %if.end475
  %379 = load ptr, ptr %n.addr, align 8
  %380 = load ptr, ptr %af.addr, align 8
  %381 = load i32, ptr %af_offset, align 4
  %idxprom484 = sext i32 %381 to i64
  %arrayidx485 = getelementptr inbounds %struct.complex, ptr %380, i64 %idxprom484
  %382 = load ptr, ptr %ldaf.addr, align 8
  %383 = load ptr, ptr %ipiv.addr, align 8
  %arrayidx486 = getelementptr inbounds i32, ptr %383, i64 1
  %384 = load ptr, ptr %work.addr, align 8
  %arrayidx487 = getelementptr inbounds %struct.complex, ptr %384, i64 1
  %385 = load ptr, ptr %n.addr, align 8
  %386 = load ptr, ptr %info.addr, align 8
  %call488 = call i32 @chetrs_(ptr noundef @.str.1, ptr noundef %379, ptr noundef @c__1, ptr noundef %arrayidx485, ptr noundef %382, ptr noundef %arrayidx486, ptr noundef %arrayidx487, ptr noundef %385, ptr noundef %386)
  br label %if.end489

if.end489:                                        ; preds = %if.else483, %if.then477
  %387 = load ptr, ptr %n.addr, align 8
  %388 = load i32, ptr %387, align 4
  store i32 %388, ptr %i__1, align 4
  store i32 1, ptr %i__, align 4
  br label %for.cond490

for.cond490:                                      ; preds = %for.inc516, %if.end489
  %389 = load i32, ptr %i__, align 4
  %390 = load i32, ptr %i__1, align 4
  %cmp491 = icmp sle i32 %389, %390
  br i1 %cmp491, label %for.body493, label %for.end518

for.body493:                                      ; preds = %for.cond490
  %391 = load i32, ptr %i__, align 4
  store i32 %391, ptr %i__2, align 4
  %392 = load i32, ptr %i__, align 4
  store i32 %392, ptr %i__3, align 4
  %393 = load i32, ptr %i__, align 4
  store i32 %393, ptr %i__4, align 4
  %394 = load ptr, ptr %rwork.addr, align 8
  %395 = load i32, ptr %i__4, align 4
  %idxprom494 = sext i32 %395 to i64
  %arrayidx495 = getelementptr inbounds float, ptr %394, i64 %idxprom494
  %396 = load float, ptr %arrayidx495, align 4
  %397 = load ptr, ptr %work.addr, align 8
  %398 = load i32, ptr %i__3, align 4
  %idxprom496 = sext i32 %398 to i64
  %arrayidx497 = getelementptr inbounds %struct.complex, ptr %397, i64 %idxprom496
  %r498 = getelementptr inbounds %struct.complex, ptr %arrayidx497, i32 0, i32 0
  %399 = load float, ptr %r498, align 4
  %mul499 = fmul float %396, %399
  %r500 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float %mul499, ptr %r500, align 4
  %400 = load ptr, ptr %rwork.addr, align 8
  %401 = load i32, ptr %i__4, align 4
  %idxprom501 = sext i32 %401 to i64
  %arrayidx502 = getelementptr inbounds float, ptr %400, i64 %idxprom501
  %402 = load float, ptr %arrayidx502, align 4
  %403 = load ptr, ptr %work.addr, align 8
  %404 = load i32, ptr %i__3, align 4
  %idxprom503 = sext i32 %404 to i64
  %arrayidx504 = getelementptr inbounds %struct.complex, ptr %403, i64 %idxprom503
  %i505 = getelementptr inbounds %struct.complex, ptr %arrayidx504, i32 0, i32 1
  %405 = load float, ptr %i505, align 4
  %mul506 = fmul float %402, %405
  %i507 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float %mul506, ptr %i507, align 4
  %r508 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %406 = load float, ptr %r508, align 4
  %407 = load ptr, ptr %work.addr, align 8
  %408 = load i32, ptr %i__2, align 4
  %idxprom509 = sext i32 %408 to i64
  %arrayidx510 = getelementptr inbounds %struct.complex, ptr %407, i64 %idxprom509
  %r511 = getelementptr inbounds %struct.complex, ptr %arrayidx510, i32 0, i32 0
  store float %406, ptr %r511, align 4
  %i512 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %409 = load float, ptr %i512, align 4
  %410 = load ptr, ptr %work.addr, align 8
  %411 = load i32, ptr %i__2, align 4
  %idxprom513 = sext i32 %411 to i64
  %arrayidx514 = getelementptr inbounds %struct.complex, ptr %410, i64 %idxprom513
  %i515 = getelementptr inbounds %struct.complex, ptr %arrayidx514, i32 0, i32 1
  store float %409, ptr %i515, align 4
  br label %for.inc516

for.inc516:                                       ; preds = %for.body493
  %412 = load i32, ptr %i__, align 4
  %inc517 = add nsw i32 %412, 1
  store i32 %inc517, ptr %i__, align 4
  br label %for.cond490, !llvm.loop !19

for.end518:                                       ; preds = %for.cond490
  br label %if.end519

if.end519:                                        ; preds = %for.end518, %if.end442
  br label %L10

if.end520:                                        ; preds = %L10
  %413 = load float, ptr %ainvnm, align 4
  %cmp521 = fcmp une float %413, 0.000000e+00
  br i1 %cmp521, label %if.then523, label %if.end525

if.then523:                                       ; preds = %if.end520
  %414 = load float, ptr %ainvnm, align 4
  %div524 = fdiv float 1.000000e+00, %414
  store float %div524, ptr %ret_val, align 4
  br label %if.end525

if.end525:                                        ; preds = %if.then523, %if.end520
  %415 = load float, ptr %ret_val, align 4
  store float %415, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end525, %if.then355, %if.then351, %if.then27
  %416 = load float, ptr %retval, align 4
  ret float %416
}

declare i32 @lsame_(ptr noundef, ptr noundef) #1

declare i32 @xerbla_(ptr noundef, ptr noundef) #1

declare double @r_imag(ptr noundef) #1

declare i32 @clacn2_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @chetrs_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

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
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6}
!14 = distinct !{!14, !6}
!15 = distinct !{!15, !6}
!16 = distinct !{!16, !6}
!17 = distinct !{!17, !6}
!18 = distinct !{!18, !6}
!19 = distinct !{!19, !6}

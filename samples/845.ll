; ModuleID = 'samples/845.bc'
source_filename = "/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/map/lapack2flamec/f2c/c/slasd6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"SLASD6\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"G\00", align 1
@c__0 = internal global i32 0, align 4
@c_b7 = internal global float 1.000000e+00, align 4
@c__1 = internal global i32 1, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"SLASD8\00", align 1
@c_n1 = internal global i32 -1, align 4

; Function Attrs: noinline nounwind optnone uwtable
define i32 @slasd6_(ptr noundef %icompq, ptr noundef %nl, ptr noundef %nr, ptr noundef %sqre, ptr noundef %d__, ptr noundef %vf, ptr noundef %vl, ptr noundef %alpha, ptr noundef %beta, ptr noundef %idxq, ptr noundef %perm, ptr noundef %givptr, ptr noundef %givcol, ptr noundef %ldgcol, ptr noundef %givnum, ptr noundef %ldgnum, ptr noundef %poles, ptr noundef %difl, ptr noundef %difr, ptr noundef %z__, ptr noundef %k, ptr noundef %c__, ptr noundef %s, ptr noundef %work, ptr noundef %iwork, ptr noundef %info) #0 {
entry:
  %retval = alloca i32, align 4
  %icompq.addr = alloca ptr, align 8
  %nl.addr = alloca ptr, align 8
  %nr.addr = alloca ptr, align 8
  %sqre.addr = alloca ptr, align 8
  %d__.addr = alloca ptr, align 8
  %vf.addr = alloca ptr, align 8
  %vl.addr = alloca ptr, align 8
  %alpha.addr = alloca ptr, align 8
  %beta.addr = alloca ptr, align 8
  %idxq.addr = alloca ptr, align 8
  %perm.addr = alloca ptr, align 8
  %givptr.addr = alloca ptr, align 8
  %givcol.addr = alloca ptr, align 8
  %ldgcol.addr = alloca ptr, align 8
  %givnum.addr = alloca ptr, align 8
  %ldgnum.addr = alloca ptr, align 8
  %poles.addr = alloca ptr, align 8
  %difl.addr = alloca ptr, align 8
  %difr.addr = alloca ptr, align 8
  %z__.addr = alloca ptr, align 8
  %k.addr = alloca ptr, align 8
  %c__.addr = alloca ptr, align 8
  %s.addr = alloca ptr, align 8
  %work.addr = alloca ptr, align 8
  %iwork.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %givcol_dim1 = alloca i32, align 4
  %givcol_offset = alloca i32, align 4
  %givnum_dim1 = alloca i32, align 4
  %givnum_offset = alloca i32, align 4
  %poles_dim1 = alloca i32, align 4
  %poles_offset = alloca i32, align 4
  %i__1 = alloca i32, align 4
  %r__1 = alloca float, align 4
  %r__2 = alloca float, align 4
  %i__ = alloca i32, align 4
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %n1 = alloca i32, align 4
  %n2 = alloca i32, align 4
  %iw = alloca i32, align 4
  %idx = alloca i32, align 4
  %idxc = alloca i32, align 4
  %idxp = alloca i32, align 4
  %ivfw = alloca i32, align 4
  %ivlw = alloca i32, align 4
  %isigma = alloca i32, align 4
  %orgnrm = alloca float, align 4
  store ptr %icompq, ptr %icompq.addr, align 8
  store ptr %nl, ptr %nl.addr, align 8
  store ptr %nr, ptr %nr.addr, align 8
  store ptr %sqre, ptr %sqre.addr, align 8
  store ptr %d__, ptr %d__.addr, align 8
  store ptr %vf, ptr %vf.addr, align 8
  store ptr %vl, ptr %vl.addr, align 8
  store ptr %alpha, ptr %alpha.addr, align 8
  store ptr %beta, ptr %beta.addr, align 8
  store ptr %idxq, ptr %idxq.addr, align 8
  store ptr %perm, ptr %perm.addr, align 8
  store ptr %givptr, ptr %givptr.addr, align 8
  store ptr %givcol, ptr %givcol.addr, align 8
  store ptr %ldgcol, ptr %ldgcol.addr, align 8
  store ptr %givnum, ptr %givnum.addr, align 8
  store ptr %ldgnum, ptr %ldgnum.addr, align 8
  store ptr %poles, ptr %poles.addr, align 8
  store ptr %difl, ptr %difl.addr, align 8
  store ptr %difr, ptr %difr.addr, align 8
  store ptr %z__, ptr %z__.addr, align 8
  store ptr %k, ptr %k.addr, align 8
  store ptr %c__, ptr %c__.addr, align 8
  store ptr %s, ptr %s.addr, align 8
  store ptr %work, ptr %work.addr, align 8
  store ptr %iwork, ptr %iwork.addr, align 8
  store ptr %info, ptr %info.addr, align 8
  %0 = load ptr, ptr %d__.addr, align 8
  %incdec.ptr = getelementptr inbounds float, ptr %0, i32 -1
  store ptr %incdec.ptr, ptr %d__.addr, align 8
  %1 = load ptr, ptr %vf.addr, align 8
  %incdec.ptr1 = getelementptr inbounds float, ptr %1, i32 -1
  store ptr %incdec.ptr1, ptr %vf.addr, align 8
  %2 = load ptr, ptr %vl.addr, align 8
  %incdec.ptr2 = getelementptr inbounds float, ptr %2, i32 -1
  store ptr %incdec.ptr2, ptr %vl.addr, align 8
  %3 = load ptr, ptr %idxq.addr, align 8
  %incdec.ptr3 = getelementptr inbounds i32, ptr %3, i32 -1
  store ptr %incdec.ptr3, ptr %idxq.addr, align 8
  %4 = load ptr, ptr %perm.addr, align 8
  %incdec.ptr4 = getelementptr inbounds i32, ptr %4, i32 -1
  store ptr %incdec.ptr4, ptr %perm.addr, align 8
  %5 = load ptr, ptr %ldgcol.addr, align 8
  %6 = load i32, ptr %5, align 4
  store i32 %6, ptr %givcol_dim1, align 4
  %7 = load i32, ptr %givcol_dim1, align 4
  %add = add nsw i32 1, %7
  store i32 %add, ptr %givcol_offset, align 4
  %8 = load i32, ptr %givcol_offset, align 4
  %9 = load ptr, ptr %givcol.addr, align 8
  %idx.ext = sext i32 %8 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i32, ptr %9, i64 %idx.neg
  store ptr %add.ptr, ptr %givcol.addr, align 8
  %10 = load ptr, ptr %ldgnum.addr, align 8
  %11 = load i32, ptr %10, align 4
  store i32 %11, ptr %poles_dim1, align 4
  %12 = load i32, ptr %poles_dim1, align 4
  %add5 = add nsw i32 1, %12
  store i32 %add5, ptr %poles_offset, align 4
  %13 = load i32, ptr %poles_offset, align 4
  %14 = load ptr, ptr %poles.addr, align 8
  %idx.ext6 = sext i32 %13 to i64
  %idx.neg7 = sub i64 0, %idx.ext6
  %add.ptr8 = getelementptr inbounds float, ptr %14, i64 %idx.neg7
  store ptr %add.ptr8, ptr %poles.addr, align 8
  %15 = load ptr, ptr %ldgnum.addr, align 8
  %16 = load i32, ptr %15, align 4
  store i32 %16, ptr %givnum_dim1, align 4
  %17 = load i32, ptr %givnum_dim1, align 4
  %add9 = add nsw i32 1, %17
  store i32 %add9, ptr %givnum_offset, align 4
  %18 = load i32, ptr %givnum_offset, align 4
  %19 = load ptr, ptr %givnum.addr, align 8
  %idx.ext10 = sext i32 %18 to i64
  %idx.neg11 = sub i64 0, %idx.ext10
  %add.ptr12 = getelementptr inbounds float, ptr %19, i64 %idx.neg11
  store ptr %add.ptr12, ptr %givnum.addr, align 8
  %20 = load ptr, ptr %difl.addr, align 8
  %incdec.ptr13 = getelementptr inbounds float, ptr %20, i32 -1
  store ptr %incdec.ptr13, ptr %difl.addr, align 8
  %21 = load ptr, ptr %difr.addr, align 8
  %incdec.ptr14 = getelementptr inbounds float, ptr %21, i32 -1
  store ptr %incdec.ptr14, ptr %difr.addr, align 8
  %22 = load ptr, ptr %z__.addr, align 8
  %incdec.ptr15 = getelementptr inbounds float, ptr %22, i32 -1
  store ptr %incdec.ptr15, ptr %z__.addr, align 8
  %23 = load ptr, ptr %work.addr, align 8
  %incdec.ptr16 = getelementptr inbounds float, ptr %23, i32 -1
  store ptr %incdec.ptr16, ptr %work.addr, align 8
  %24 = load ptr, ptr %iwork.addr, align 8
  %incdec.ptr17 = getelementptr inbounds i32, ptr %24, i32 -1
  store ptr %incdec.ptr17, ptr %iwork.addr, align 8
  %25 = load ptr, ptr %info.addr, align 8
  store i32 0, ptr %25, align 4
  %26 = load ptr, ptr %nl.addr, align 8
  %27 = load i32, ptr %26, align 4
  %28 = load ptr, ptr %nr.addr, align 8
  %29 = load i32, ptr %28, align 4
  %add18 = add nsw i32 %27, %29
  %add19 = add nsw i32 %add18, 1
  store i32 %add19, ptr %n, align 4
  %30 = load i32, ptr %n, align 4
  %31 = load ptr, ptr %sqre.addr, align 8
  %32 = load i32, ptr %31, align 4
  %add20 = add nsw i32 %30, %32
  store i32 %add20, ptr %m, align 4
  %33 = load ptr, ptr %icompq.addr, align 8
  %34 = load i32, ptr %33, align 4
  %cmp = icmp slt i32 %34, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %35 = load ptr, ptr %icompq.addr, align 8
  %36 = load i32, ptr %35, align 4
  %cmp21 = icmp sgt i32 %36, 1
  br i1 %cmp21, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %37 = load ptr, ptr %info.addr, align 8
  store i32 -1, ptr %37, align 4
  br label %if.end42

if.else:                                          ; preds = %lor.lhs.false
  %38 = load ptr, ptr %nl.addr, align 8
  %39 = load i32, ptr %38, align 4
  %cmp22 = icmp slt i32 %39, 1
  br i1 %cmp22, label %if.then23, label %if.else24

if.then23:                                        ; preds = %if.else
  %40 = load ptr, ptr %info.addr, align 8
  store i32 -2, ptr %40, align 4
  br label %if.end41

if.else24:                                        ; preds = %if.else
  %41 = load ptr, ptr %nr.addr, align 8
  %42 = load i32, ptr %41, align 4
  %cmp25 = icmp slt i32 %42, 1
  br i1 %cmp25, label %if.then26, label %if.else27

if.then26:                                        ; preds = %if.else24
  %43 = load ptr, ptr %info.addr, align 8
  store i32 -3, ptr %43, align 4
  br label %if.end40

if.else27:                                        ; preds = %if.else24
  %44 = load ptr, ptr %sqre.addr, align 8
  %45 = load i32, ptr %44, align 4
  %cmp28 = icmp slt i32 %45, 0
  br i1 %cmp28, label %if.then31, label %lor.lhs.false29

lor.lhs.false29:                                  ; preds = %if.else27
  %46 = load ptr, ptr %sqre.addr, align 8
  %47 = load i32, ptr %46, align 4
  %cmp30 = icmp sgt i32 %47, 1
  br i1 %cmp30, label %if.then31, label %if.else32

if.then31:                                        ; preds = %lor.lhs.false29, %if.else27
  %48 = load ptr, ptr %info.addr, align 8
  store i32 -4, ptr %48, align 4
  br label %if.end39

if.else32:                                        ; preds = %lor.lhs.false29
  %49 = load ptr, ptr %ldgcol.addr, align 8
  %50 = load i32, ptr %49, align 4
  %51 = load i32, ptr %n, align 4
  %cmp33 = icmp slt i32 %50, %51
  br i1 %cmp33, label %if.then34, label %if.else35

if.then34:                                        ; preds = %if.else32
  %52 = load ptr, ptr %info.addr, align 8
  store i32 -14, ptr %52, align 4
  br label %if.end38

if.else35:                                        ; preds = %if.else32
  %53 = load ptr, ptr %ldgnum.addr, align 8
  %54 = load i32, ptr %53, align 4
  %55 = load i32, ptr %n, align 4
  %cmp36 = icmp slt i32 %54, %55
  br i1 %cmp36, label %if.then37, label %if.end

if.then37:                                        ; preds = %if.else35
  %56 = load ptr, ptr %info.addr, align 8
  store i32 -16, ptr %56, align 4
  br label %if.end

if.end:                                           ; preds = %if.then37, %if.else35
  br label %if.end38

if.end38:                                         ; preds = %if.end, %if.then34
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %if.then31
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.then26
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.then23
  br label %if.end42

if.end42:                                         ; preds = %if.end41, %if.then
  %57 = load ptr, ptr %info.addr, align 8
  %58 = load i32, ptr %57, align 4
  %cmp43 = icmp ne i32 %58, 0
  br i1 %cmp43, label %if.then44, label %if.end45

if.then44:                                        ; preds = %if.end42
  %59 = load ptr, ptr %info.addr, align 8
  %60 = load i32, ptr %59, align 4
  %sub = sub nsw i32 0, %60
  store i32 %sub, ptr %i__1, align 4
  %call = call i32 @xerbla_(ptr noundef @.str, ptr noundef %i__1)
  store i32 0, ptr %retval, align 4
  br label %return

if.end45:                                         ; preds = %if.end42
  store i32 1, ptr %isigma, align 4
  %61 = load i32, ptr %isigma, align 4
  %62 = load i32, ptr %n, align 4
  %add46 = add nsw i32 %61, %62
  store i32 %add46, ptr %iw, align 4
  %63 = load i32, ptr %iw, align 4
  %64 = load i32, ptr %m, align 4
  %add47 = add nsw i32 %63, %64
  store i32 %add47, ptr %ivfw, align 4
  %65 = load i32, ptr %ivfw, align 4
  %66 = load i32, ptr %m, align 4
  %add48 = add nsw i32 %65, %66
  store i32 %add48, ptr %ivlw, align 4
  store i32 1, ptr %idx, align 4
  %67 = load i32, ptr %idx, align 4
  %68 = load i32, ptr %n, align 4
  %add49 = add nsw i32 %67, %68
  store i32 %add49, ptr %idxc, align 4
  %69 = load i32, ptr %idxc, align 4
  %70 = load i32, ptr %n, align 4
  %add50 = add nsw i32 %69, %70
  store i32 %add50, ptr %idxp, align 4
  %71 = load ptr, ptr %alpha.addr, align 8
  %72 = load float, ptr %71, align 4
  %cmp51 = fcmp oge float %72, 0.000000e+00
  br i1 %cmp51, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end45
  %73 = load ptr, ptr %alpha.addr, align 8
  %74 = load float, ptr %73, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end45
  %75 = load ptr, ptr %alpha.addr, align 8
  %76 = load float, ptr %75, align 4
  %fneg = fneg float %76
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %74, %cond.true ], [ %fneg, %cond.false ]
  store float %cond, ptr %r__1, align 4
  %77 = load ptr, ptr %beta.addr, align 8
  %78 = load float, ptr %77, align 4
  %cmp52 = fcmp oge float %78, 0.000000e+00
  br i1 %cmp52, label %cond.true53, label %cond.false54

cond.true53:                                      ; preds = %cond.end
  %79 = load ptr, ptr %beta.addr, align 8
  %80 = load float, ptr %79, align 4
  br label %cond.end56

cond.false54:                                     ; preds = %cond.end
  %81 = load ptr, ptr %beta.addr, align 8
  %82 = load float, ptr %81, align 4
  %fneg55 = fneg float %82
  br label %cond.end56

cond.end56:                                       ; preds = %cond.false54, %cond.true53
  %cond57 = phi float [ %80, %cond.true53 ], [ %fneg55, %cond.false54 ]
  store float %cond57, ptr %r__2, align 4
  %83 = load float, ptr %r__1, align 4
  %84 = load float, ptr %r__2, align 4
  %cmp58 = fcmp oge float %83, %84
  br i1 %cmp58, label %cond.true59, label %cond.false60

cond.true59:                                      ; preds = %cond.end56
  %85 = load float, ptr %r__1, align 4
  br label %cond.end61

cond.false60:                                     ; preds = %cond.end56
  %86 = load float, ptr %r__2, align 4
  br label %cond.end61

cond.end61:                                       ; preds = %cond.false60, %cond.true59
  %cond62 = phi float [ %85, %cond.true59 ], [ %86, %cond.false60 ]
  store float %cond62, ptr %orgnrm, align 4
  %87 = load ptr, ptr %d__.addr, align 8
  %88 = load ptr, ptr %nl.addr, align 8
  %89 = load i32, ptr %88, align 4
  %add63 = add nsw i32 %89, 1
  %idxprom = sext i32 %add63 to i64
  %arrayidx = getelementptr inbounds float, ptr %87, i64 %idxprom
  store float 0.000000e+00, ptr %arrayidx, align 4
  %90 = load i32, ptr %n, align 4
  store i32 %90, ptr %i__1, align 4
  store i32 1, ptr %i__, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end61
  %91 = load i32, ptr %i__, align 4
  %92 = load i32, ptr %i__1, align 4
  %cmp64 = icmp sle i32 %91, %92
  br i1 %cmp64, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %93 = load ptr, ptr %d__.addr, align 8
  %94 = load i32, ptr %i__, align 4
  %idxprom65 = sext i32 %94 to i64
  %arrayidx66 = getelementptr inbounds float, ptr %93, i64 %idxprom65
  %95 = load float, ptr %arrayidx66, align 4
  store float %95, ptr %r__1, align 4
  %96 = load float, ptr %r__1, align 4
  %cmp67 = fcmp oge float %96, 0.000000e+00
  br i1 %cmp67, label %cond.true68, label %cond.false69

cond.true68:                                      ; preds = %for.body
  %97 = load float, ptr %r__1, align 4
  br label %cond.end71

cond.false69:                                     ; preds = %for.body
  %98 = load float, ptr %r__1, align 4
  %fneg70 = fneg float %98
  br label %cond.end71

cond.end71:                                       ; preds = %cond.false69, %cond.true68
  %cond72 = phi float [ %97, %cond.true68 ], [ %fneg70, %cond.false69 ]
  %99 = load float, ptr %orgnrm, align 4
  %cmp73 = fcmp ogt float %cond72, %99
  br i1 %cmp73, label %if.then74, label %if.end83

if.then74:                                        ; preds = %cond.end71
  %100 = load ptr, ptr %d__.addr, align 8
  %101 = load i32, ptr %i__, align 4
  %idxprom75 = sext i32 %101 to i64
  %arrayidx76 = getelementptr inbounds float, ptr %100, i64 %idxprom75
  %102 = load float, ptr %arrayidx76, align 4
  store float %102, ptr %r__1, align 4
  %103 = load float, ptr %r__1, align 4
  %cmp77 = fcmp oge float %103, 0.000000e+00
  br i1 %cmp77, label %cond.true78, label %cond.false79

cond.true78:                                      ; preds = %if.then74
  %104 = load float, ptr %r__1, align 4
  br label %cond.end81

cond.false79:                                     ; preds = %if.then74
  %105 = load float, ptr %r__1, align 4
  %fneg80 = fneg float %105
  br label %cond.end81

cond.end81:                                       ; preds = %cond.false79, %cond.true78
  %cond82 = phi float [ %104, %cond.true78 ], [ %fneg80, %cond.false79 ]
  store float %cond82, ptr %orgnrm, align 4
  br label %if.end83

if.end83:                                         ; preds = %cond.end81, %cond.end71
  br label %for.inc

for.inc:                                          ; preds = %if.end83
  %106 = load i32, ptr %i__, align 4
  %inc = add nsw i32 %106, 1
  store i32 %inc, ptr %i__, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %107 = load ptr, ptr %d__.addr, align 8
  %arrayidx84 = getelementptr inbounds float, ptr %107, i64 1
  %108 = load ptr, ptr %info.addr, align 8
  %call85 = call i32 @slascl_(ptr noundef @.str.1, ptr noundef @c__0, ptr noundef @c__0, ptr noundef %orgnrm, ptr noundef @c_b7, ptr noundef %n, ptr noundef @c__1, ptr noundef %arrayidx84, ptr noundef %n, ptr noundef %108)
  %109 = load float, ptr %orgnrm, align 4
  %110 = load ptr, ptr %alpha.addr, align 8
  %111 = load float, ptr %110, align 4
  %div = fdiv float %111, %109
  store float %div, ptr %110, align 4
  %112 = load float, ptr %orgnrm, align 4
  %113 = load ptr, ptr %beta.addr, align 8
  %114 = load float, ptr %113, align 4
  %div86 = fdiv float %114, %112
  store float %div86, ptr %113, align 4
  %115 = load ptr, ptr %icompq.addr, align 8
  %116 = load ptr, ptr %nl.addr, align 8
  %117 = load ptr, ptr %nr.addr, align 8
  %118 = load ptr, ptr %sqre.addr, align 8
  %119 = load ptr, ptr %k.addr, align 8
  %120 = load ptr, ptr %d__.addr, align 8
  %arrayidx87 = getelementptr inbounds float, ptr %120, i64 1
  %121 = load ptr, ptr %z__.addr, align 8
  %arrayidx88 = getelementptr inbounds float, ptr %121, i64 1
  %122 = load ptr, ptr %work.addr, align 8
  %123 = load i32, ptr %iw, align 4
  %idxprom89 = sext i32 %123 to i64
  %arrayidx90 = getelementptr inbounds float, ptr %122, i64 %idxprom89
  %124 = load ptr, ptr %vf.addr, align 8
  %arrayidx91 = getelementptr inbounds float, ptr %124, i64 1
  %125 = load ptr, ptr %work.addr, align 8
  %126 = load i32, ptr %ivfw, align 4
  %idxprom92 = sext i32 %126 to i64
  %arrayidx93 = getelementptr inbounds float, ptr %125, i64 %idxprom92
  %127 = load ptr, ptr %vl.addr, align 8
  %arrayidx94 = getelementptr inbounds float, ptr %127, i64 1
  %128 = load ptr, ptr %work.addr, align 8
  %129 = load i32, ptr %ivlw, align 4
  %idxprom95 = sext i32 %129 to i64
  %arrayidx96 = getelementptr inbounds float, ptr %128, i64 %idxprom95
  %130 = load ptr, ptr %alpha.addr, align 8
  %131 = load ptr, ptr %beta.addr, align 8
  %132 = load ptr, ptr %work.addr, align 8
  %133 = load i32, ptr %isigma, align 4
  %idxprom97 = sext i32 %133 to i64
  %arrayidx98 = getelementptr inbounds float, ptr %132, i64 %idxprom97
  %134 = load ptr, ptr %iwork.addr, align 8
  %135 = load i32, ptr %idx, align 4
  %idxprom99 = sext i32 %135 to i64
  %arrayidx100 = getelementptr inbounds i32, ptr %134, i64 %idxprom99
  %136 = load ptr, ptr %iwork.addr, align 8
  %137 = load i32, ptr %idxp, align 4
  %idxprom101 = sext i32 %137 to i64
  %arrayidx102 = getelementptr inbounds i32, ptr %136, i64 %idxprom101
  %138 = load ptr, ptr %idxq.addr, align 8
  %arrayidx103 = getelementptr inbounds i32, ptr %138, i64 1
  %139 = load ptr, ptr %perm.addr, align 8
  %arrayidx104 = getelementptr inbounds i32, ptr %139, i64 1
  %140 = load ptr, ptr %givptr.addr, align 8
  %141 = load ptr, ptr %givcol.addr, align 8
  %142 = load i32, ptr %givcol_offset, align 4
  %idxprom105 = sext i32 %142 to i64
  %arrayidx106 = getelementptr inbounds i32, ptr %141, i64 %idxprom105
  %143 = load ptr, ptr %ldgcol.addr, align 8
  %144 = load ptr, ptr %givnum.addr, align 8
  %145 = load i32, ptr %givnum_offset, align 4
  %idxprom107 = sext i32 %145 to i64
  %arrayidx108 = getelementptr inbounds float, ptr %144, i64 %idxprom107
  %146 = load ptr, ptr %ldgnum.addr, align 8
  %147 = load ptr, ptr %c__.addr, align 8
  %148 = load ptr, ptr %s.addr, align 8
  %149 = load ptr, ptr %info.addr, align 8
  %call109 = call i32 @slasd7_(ptr noundef %115, ptr noundef %116, ptr noundef %117, ptr noundef %118, ptr noundef %119, ptr noundef %arrayidx87, ptr noundef %arrayidx88, ptr noundef %arrayidx90, ptr noundef %arrayidx91, ptr noundef %arrayidx93, ptr noundef %arrayidx94, ptr noundef %arrayidx96, ptr noundef %130, ptr noundef %131, ptr noundef %arrayidx98, ptr noundef %arrayidx100, ptr noundef %arrayidx102, ptr noundef %arrayidx103, ptr noundef %arrayidx104, ptr noundef %140, ptr noundef %arrayidx106, ptr noundef %143, ptr noundef %arrayidx108, ptr noundef %146, ptr noundef %147, ptr noundef %148, ptr noundef %149)
  %150 = load ptr, ptr %icompq.addr, align 8
  %151 = load ptr, ptr %k.addr, align 8
  %152 = load ptr, ptr %d__.addr, align 8
  %arrayidx110 = getelementptr inbounds float, ptr %152, i64 1
  %153 = load ptr, ptr %z__.addr, align 8
  %arrayidx111 = getelementptr inbounds float, ptr %153, i64 1
  %154 = load ptr, ptr %vf.addr, align 8
  %arrayidx112 = getelementptr inbounds float, ptr %154, i64 1
  %155 = load ptr, ptr %vl.addr, align 8
  %arrayidx113 = getelementptr inbounds float, ptr %155, i64 1
  %156 = load ptr, ptr %difl.addr, align 8
  %arrayidx114 = getelementptr inbounds float, ptr %156, i64 1
  %157 = load ptr, ptr %difr.addr, align 8
  %arrayidx115 = getelementptr inbounds float, ptr %157, i64 1
  %158 = load ptr, ptr %ldgnum.addr, align 8
  %159 = load ptr, ptr %work.addr, align 8
  %160 = load i32, ptr %isigma, align 4
  %idxprom116 = sext i32 %160 to i64
  %arrayidx117 = getelementptr inbounds float, ptr %159, i64 %idxprom116
  %161 = load ptr, ptr %work.addr, align 8
  %162 = load i32, ptr %iw, align 4
  %idxprom118 = sext i32 %162 to i64
  %arrayidx119 = getelementptr inbounds float, ptr %161, i64 %idxprom118
  %163 = load ptr, ptr %info.addr, align 8
  %call120 = call i32 @slasd8_(ptr noundef %150, ptr noundef %151, ptr noundef %arrayidx110, ptr noundef %arrayidx111, ptr noundef %arrayidx112, ptr noundef %arrayidx113, ptr noundef %arrayidx114, ptr noundef %arrayidx115, ptr noundef %158, ptr noundef %arrayidx117, ptr noundef %arrayidx119, ptr noundef %163)
  %164 = load ptr, ptr %info.addr, align 8
  %165 = load i32, ptr %164, align 4
  %cmp121 = icmp ne i32 %165, 0
  br i1 %cmp121, label %if.then122, label %if.end125

if.then122:                                       ; preds = %for.end
  %166 = load ptr, ptr %info.addr, align 8
  %167 = load i32, ptr %166, align 4
  %sub123 = sub nsw i32 0, %167
  store i32 %sub123, ptr %i__1, align 4
  %call124 = call i32 @xerbla_(ptr noundef @.str.2, ptr noundef %i__1)
  store i32 0, ptr %retval, align 4
  br label %return

if.end125:                                        ; preds = %for.end
  %168 = load ptr, ptr %icompq.addr, align 8
  %169 = load i32, ptr %168, align 4
  %cmp126 = icmp eq i32 %169, 1
  br i1 %cmp126, label %if.then127, label %if.end139

if.then127:                                       ; preds = %if.end125
  %170 = load ptr, ptr %k.addr, align 8
  %171 = load ptr, ptr %d__.addr, align 8
  %arrayidx128 = getelementptr inbounds float, ptr %171, i64 1
  %172 = load ptr, ptr %poles.addr, align 8
  %173 = load i32, ptr %poles_dim1, align 4
  %add129 = add nsw i32 %173, 1
  %idxprom130 = sext i32 %add129 to i64
  %arrayidx131 = getelementptr inbounds float, ptr %172, i64 %idxprom130
  %call132 = call i32 @scopy_(ptr noundef %170, ptr noundef %arrayidx128, ptr noundef @c__1, ptr noundef %arrayidx131, ptr noundef @c__1)
  %174 = load ptr, ptr %k.addr, align 8
  %175 = load ptr, ptr %work.addr, align 8
  %176 = load i32, ptr %isigma, align 4
  %idxprom133 = sext i32 %176 to i64
  %arrayidx134 = getelementptr inbounds float, ptr %175, i64 %idxprom133
  %177 = load ptr, ptr %poles.addr, align 8
  %178 = load i32, ptr %poles_dim1, align 4
  %shl = shl i32 %178, 1
  %add135 = add nsw i32 %shl, 1
  %idxprom136 = sext i32 %add135 to i64
  %arrayidx137 = getelementptr inbounds float, ptr %177, i64 %idxprom136
  %call138 = call i32 @scopy_(ptr noundef %174, ptr noundef %arrayidx134, ptr noundef @c__1, ptr noundef %arrayidx137, ptr noundef @c__1)
  br label %if.end139

if.end139:                                        ; preds = %if.then127, %if.end125
  %179 = load ptr, ptr %d__.addr, align 8
  %arrayidx140 = getelementptr inbounds float, ptr %179, i64 1
  %180 = load ptr, ptr %info.addr, align 8
  %call141 = call i32 @slascl_(ptr noundef @.str.1, ptr noundef @c__0, ptr noundef @c__0, ptr noundef @c_b7, ptr noundef %orgnrm, ptr noundef %n, ptr noundef @c__1, ptr noundef %arrayidx140, ptr noundef %n, ptr noundef %180)
  %181 = load ptr, ptr %k.addr, align 8
  %182 = load i32, ptr %181, align 4
  store i32 %182, ptr %n1, align 4
  %183 = load i32, ptr %n, align 4
  %184 = load ptr, ptr %k.addr, align 8
  %185 = load i32, ptr %184, align 4
  %sub142 = sub nsw i32 %183, %185
  store i32 %sub142, ptr %n2, align 4
  %186 = load ptr, ptr %d__.addr, align 8
  %arrayidx143 = getelementptr inbounds float, ptr %186, i64 1
  %187 = load ptr, ptr %idxq.addr, align 8
  %arrayidx144 = getelementptr inbounds i32, ptr %187, i64 1
  %call145 = call i32 @slamrg_(ptr noundef %n1, ptr noundef %n2, ptr noundef %arrayidx143, ptr noundef @c__1, ptr noundef @c_n1, ptr noundef %arrayidx144)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end139, %if.then122, %if.then44
  %188 = load i32, ptr %retval, align 4
  ret i32 %188
}

declare i32 @xerbla_(ptr noundef, ptr noundef) #1

declare i32 @slascl_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @slasd7_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @slasd8_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @scopy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @slamrg_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

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

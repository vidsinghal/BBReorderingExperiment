; ModuleID = 'samples/199.bc'
source_filename = "/local-ssd/amdlibflame-otrkevhm552xspevawtkllysqp2goz3p-build/aidengro/spack-stage-amdlibflame-4.1-otrkevhm552xspevawtkllysqp2goz3p/spack-src/src/map/lapack2flamec/f2c/c/slahqr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"SAFE MINIMUM\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"PRECISION\00", align 1
@c__1 = internal global i32 1, align 4

; Function Attrs: nounwind uwtable
define i32 @slahqr_(ptr noundef %wantt, ptr noundef %wantz, ptr noundef %n, ptr noundef %ilo, ptr noundef %ihi, ptr noundef %h__, ptr noundef %ldh, ptr noundef %wr, ptr noundef %wi, ptr noundef %iloz, ptr noundef %ihiz, ptr noundef %z__, ptr noundef %ldz, ptr noundef %info) #0 {
entry:
  %retval = alloca i32, align 4
  %wantt.addr = alloca ptr, align 8
  %wantz.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %ilo.addr = alloca ptr, align 8
  %ihi.addr = alloca ptr, align 8
  %h__.addr = alloca ptr, align 8
  %ldh.addr = alloca ptr, align 8
  %wr.addr = alloca ptr, align 8
  %wi.addr = alloca ptr, align 8
  %iloz.addr = alloca ptr, align 8
  %ihiz.addr = alloca ptr, align 8
  %z__.addr = alloca ptr, align 8
  %ldz.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %h_dim1 = alloca i32, align 4
  %h_offset = alloca i32, align 4
  %z_dim1 = alloca i32, align 4
  %z_offset = alloca i32, align 4
  %i__1 = alloca i32, align 4
  %i__2 = alloca i32, align 4
  %i__3 = alloca i32, align 4
  %i__4 = alloca i32, align 4
  %r__1 = alloca float, align 4
  %r__2 = alloca float, align 4
  %r__3 = alloca float, align 4
  %r__4 = alloca float, align 4
  %i__ = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %m = alloca i32, align 4
  %s = alloca float, align 4
  %v = alloca [3 x float], align 4
  %i1 = alloca i32, align 4
  %i2 = alloca i32, align 4
  %t1 = alloca float, align 4
  %t2 = alloca float, align 4
  %t3 = alloca float, align 4
  %v2 = alloca float, align 4
  %v3 = alloca float, align 4
  %aa = alloca float, align 4
  %ab = alloca float, align 4
  %ba = alloca float, align 4
  %bb = alloca float, align 4
  %h11 = alloca float, align 4
  %h12 = alloca float, align 4
  %h21 = alloca float, align 4
  %h22 = alloca float, align 4
  %cs = alloca float, align 4
  %nh = alloca i32, align 4
  %sn = alloca float, align 4
  %nr = alloca i32, align 4
  %tr = alloca float, align 4
  %nz = alloca i32, align 4
  %det = alloca float, align 4
  %h21s = alloca float, align 4
  %its = alloca i32, align 4
  %ulp = alloca float, align 4
  %sum = alloca float, align 4
  %tst = alloca float, align 4
  %rt1i = alloca float, align 4
  %rt2i = alloca float, align 4
  %rt1r = alloca float, align 4
  %rt2r = alloca float, align 4
  %kdefl = alloca i32, align 4
  %itmax = alloca i32, align 4
  %safmin = alloca float, align 4
  %safmax = alloca float, align 4
  %rtdisc = alloca float, align 4
  %smlnum = alloca float, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %_x = alloca i32, align 4
  %_y = alloca i32, align 4
  %tmp = alloca i32, align 4
  %_x181 = alloca float, align 4
  %_y182 = alloca float, align 4
  %tmp183 = alloca float, align 4
  %_x214 = alloca float, align 4
  %_y215 = alloca float, align 4
  %tmp216 = alloca float, align 4
  %_x252 = alloca float, align 4
  %_y253 = alloca float, align 4
  %tmp254 = alloca float, align 4
  %_x290 = alloca float, align 4
  %_y291 = alloca float, align 4
  %tmp292 = alloca float, align 4
  %_x305 = alloca float, align 4
  %_y306 = alloca float, align 4
  %tmp307 = alloca float, align 4
  %_x752 = alloca i32, align 4
  %_y753 = alloca i32, align 4
  %tmp754 = alloca i32, align 4
  %_x864 = alloca i32, align 4
  %_y865 = alloca i32, align 4
  %tmp866 = alloca i32, align 4
  store ptr %wantt, ptr %wantt.addr, align 8, !tbaa !4
  store ptr %wantz, ptr %wantz.addr, align 8, !tbaa !4
  store ptr %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %ilo, ptr %ilo.addr, align 8, !tbaa !4
  store ptr %ihi, ptr %ihi.addr, align 8, !tbaa !4
  store ptr %h__, ptr %h__.addr, align 8, !tbaa !4
  store ptr %ldh, ptr %ldh.addr, align 8, !tbaa !4
  store ptr %wr, ptr %wr.addr, align 8, !tbaa !4
  store ptr %wi, ptr %wi.addr, align 8, !tbaa !4
  store ptr %iloz, ptr %iloz.addr, align 8, !tbaa !4
  store ptr %ihiz, ptr %ihiz.addr, align 8, !tbaa !4
  store ptr %z__, ptr %z__.addr, align 8, !tbaa !4
  store ptr %ldz, ptr %ldz.addr, align 8, !tbaa !4
  store ptr %info, ptr %info.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %h_dim1) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %h_offset) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %z_dim1) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %z_offset) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__1) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__2) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__3) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__4) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %r__1) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %r__2) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %r__3) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %r__4) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %l) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %s) #5
  call void @llvm.lifetime.start.p0(i64 12, ptr %v) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i1) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i2) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %t1) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %t2) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %t3) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %v2) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %v3) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %aa) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %ab) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %ba) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %bb) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %h11) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %h12) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %h21) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %h22) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %cs) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %nh) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %sn) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %nr) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %tr) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %nz) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %det) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %h21s) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %its) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %ulp) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %sum) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %tst) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %rt1i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %rt2i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %rt1r) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %rt2r) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %kdefl) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %itmax) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %safmin) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %safmax) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %rtdisc) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %smlnum) #5
  %0 = load ptr, ptr %ldh.addr, align 8, !tbaa !4
  %1 = load i32, ptr %0, align 4, !tbaa !8
  store i32 %1, ptr %h_dim1, align 4, !tbaa !8
  %2 = load i32, ptr %h_dim1, align 4, !tbaa !8
  %add = add nsw i32 1, %2
  store i32 %add, ptr %h_offset, align 4, !tbaa !8
  %3 = load i32, ptr %h_offset, align 4, !tbaa !8
  %4 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %idx.ext = sext i32 %3 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds float, ptr %4, i64 %idx.neg
  store ptr %add.ptr, ptr %h__.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %wr.addr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds float, ptr %5, i32 -1
  store ptr %incdec.ptr, ptr %wr.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %wi.addr, align 8, !tbaa !4
  %incdec.ptr1 = getelementptr inbounds float, ptr %6, i32 -1
  store ptr %incdec.ptr1, ptr %wi.addr, align 8, !tbaa !4
  %7 = load ptr, ptr %ldz.addr, align 8, !tbaa !4
  %8 = load i32, ptr %7, align 4, !tbaa !8
  store i32 %8, ptr %z_dim1, align 4, !tbaa !8
  %9 = load i32, ptr %z_dim1, align 4, !tbaa !8
  %add2 = add nsw i32 1, %9
  store i32 %add2, ptr %z_offset, align 4, !tbaa !8
  %10 = load i32, ptr %z_offset, align 4, !tbaa !8
  %11 = load ptr, ptr %z__.addr, align 8, !tbaa !4
  %idx.ext3 = sext i32 %10 to i64
  %idx.neg4 = sub i64 0, %idx.ext3
  %add.ptr5 = getelementptr inbounds float, ptr %11, i64 %idx.neg4
  store ptr %add.ptr5, ptr %z__.addr, align 8, !tbaa !4
  %12 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 0, ptr %12, align 4, !tbaa !8
  %13 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %14 = load i32, ptr %13, align 4, !tbaa !8
  %cmp = icmp eq i32 %14, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %15 = load ptr, ptr %ilo.addr, align 8, !tbaa !4
  %16 = load i32, ptr %15, align 4, !tbaa !8
  %17 = load ptr, ptr %ihi.addr, align 8, !tbaa !4
  %18 = load i32, ptr %17, align 4, !tbaa !8
  %cmp6 = icmp eq i32 %16, %18
  br i1 %cmp6, label %if.then7, label %if.end13

if.then7:                                         ; preds = %if.end
  %19 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %20 = load ptr, ptr %ilo.addr, align 8, !tbaa !4
  %21 = load i32, ptr %20, align 4, !tbaa !8
  %22 = load ptr, ptr %ilo.addr, align 8, !tbaa !4
  %23 = load i32, ptr %22, align 4, !tbaa !8
  %24 = load i32, ptr %h_dim1, align 4, !tbaa !8
  %mul = mul nsw i32 %23, %24
  %add8 = add nsw i32 %21, %mul
  %idxprom = sext i32 %add8 to i64
  %arrayidx = getelementptr inbounds float, ptr %19, i64 %idxprom
  %25 = load float, ptr %arrayidx, align 4, !tbaa !10
  %26 = load ptr, ptr %wr.addr, align 8, !tbaa !4
  %27 = load ptr, ptr %ilo.addr, align 8, !tbaa !4
  %28 = load i32, ptr %27, align 4, !tbaa !8
  %idxprom9 = sext i32 %28 to i64
  %arrayidx10 = getelementptr inbounds float, ptr %26, i64 %idxprom9
  store float %25, ptr %arrayidx10, align 4, !tbaa !10
  %29 = load ptr, ptr %wi.addr, align 8, !tbaa !4
  %30 = load ptr, ptr %ilo.addr, align 8, !tbaa !4
  %31 = load i32, ptr %30, align 4, !tbaa !8
  %idxprom11 = sext i32 %31 to i64
  %arrayidx12 = getelementptr inbounds float, ptr %29, i64 %idxprom11
  store float 0.000000e+00, ptr %arrayidx12, align 4, !tbaa !10
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %32 = load ptr, ptr %ihi.addr, align 8, !tbaa !4
  %33 = load i32, ptr %32, align 4, !tbaa !8
  %sub = sub nsw i32 %33, 3
  store i32 %sub, ptr %i__1, align 4, !tbaa !8
  %34 = load ptr, ptr %ilo.addr, align 8, !tbaa !4
  %35 = load i32, ptr %34, align 4, !tbaa !8
  store i32 %35, ptr %j, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end13
  %36 = load i32, ptr %j, align 4, !tbaa !8
  %37 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp14 = icmp sle i32 %36, %37
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %38 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %39 = load i32, ptr %j, align 4, !tbaa !8
  %add15 = add nsw i32 %39, 2
  %40 = load i32, ptr %j, align 4, !tbaa !8
  %41 = load i32, ptr %h_dim1, align 4, !tbaa !8
  %mul16 = mul nsw i32 %40, %41
  %add17 = add nsw i32 %add15, %mul16
  %idxprom18 = sext i32 %add17 to i64
  %arrayidx19 = getelementptr inbounds float, ptr %38, i64 %idxprom18
  store float 0.000000e+00, ptr %arrayidx19, align 4, !tbaa !10
  %42 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %43 = load i32, ptr %j, align 4, !tbaa !8
  %add20 = add nsw i32 %43, 3
  %44 = load i32, ptr %j, align 4, !tbaa !8
  %45 = load i32, ptr %h_dim1, align 4, !tbaa !8
  %mul21 = mul nsw i32 %44, %45
  %add22 = add nsw i32 %add20, %mul21
  %idxprom23 = sext i32 %add22 to i64
  %arrayidx24 = getelementptr inbounds float, ptr %42, i64 %idxprom23
  store float 0.000000e+00, ptr %arrayidx24, align 4, !tbaa !10
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %46 = load i32, ptr %j, align 4, !tbaa !8
  %inc = add nsw i32 %46, 1
  store i32 %inc, ptr %j, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  %47 = load ptr, ptr %ilo.addr, align 8, !tbaa !4
  %48 = load i32, ptr %47, align 4, !tbaa !8
  %49 = load ptr, ptr %ihi.addr, align 8, !tbaa !4
  %50 = load i32, ptr %49, align 4, !tbaa !8
  %sub25 = sub nsw i32 %50, 2
  %cmp26 = icmp sle i32 %48, %sub25
  br i1 %cmp26, label %if.then27, label %if.end33

if.then27:                                        ; preds = %for.end
  %51 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %52 = load ptr, ptr %ihi.addr, align 8, !tbaa !4
  %53 = load i32, ptr %52, align 4, !tbaa !8
  %54 = load ptr, ptr %ihi.addr, align 8, !tbaa !4
  %55 = load i32, ptr %54, align 4, !tbaa !8
  %sub28 = sub nsw i32 %55, 2
  %56 = load i32, ptr %h_dim1, align 4, !tbaa !8
  %mul29 = mul nsw i32 %sub28, %56
  %add30 = add nsw i32 %53, %mul29
  %idxprom31 = sext i32 %add30 to i64
  %arrayidx32 = getelementptr inbounds float, ptr %51, i64 %idxprom31
  store float 0.000000e+00, ptr %arrayidx32, align 4, !tbaa !10
  br label %if.end33

if.end33:                                         ; preds = %if.then27, %for.end
  %57 = load ptr, ptr %ihi.addr, align 8, !tbaa !4
  %58 = load i32, ptr %57, align 4, !tbaa !8
  %59 = load ptr, ptr %ilo.addr, align 8, !tbaa !4
  %60 = load i32, ptr %59, align 4, !tbaa !8
  %sub34 = sub nsw i32 %58, %60
  %add35 = add nsw i32 %sub34, 1
  store i32 %add35, ptr %nh, align 4, !tbaa !8
  %61 = load ptr, ptr %ihiz.addr, align 8, !tbaa !4
  %62 = load i32, ptr %61, align 4, !tbaa !8
  %63 = load ptr, ptr %iloz.addr, align 8, !tbaa !4
  %64 = load i32, ptr %63, align 4, !tbaa !8
  %sub36 = sub nsw i32 %62, %64
  %add37 = add nsw i32 %sub36, 1
  store i32 %add37, ptr %nz, align 4, !tbaa !8
  %call = call float @slamch_(ptr noundef @.str)
  store float %call, ptr %safmin, align 4, !tbaa !10
  %65 = load float, ptr %safmin, align 4, !tbaa !10
  %div = fdiv float 1.000000e+00, %65
  store float %div, ptr %safmax, align 4, !tbaa !10
  %call38 = call i32 @slabad_(ptr noundef %safmin, ptr noundef %safmax)
  %call39 = call float @slamch_(ptr noundef @.str.1)
  store float %call39, ptr %ulp, align 4, !tbaa !10
  %66 = load float, ptr %safmin, align 4, !tbaa !10
  %67 = load i32, ptr %nh, align 4, !tbaa !8
  %conv = sitofp i32 %67 to float
  %68 = load float, ptr %ulp, align 4, !tbaa !10
  %div40 = fdiv float %conv, %68
  %mul41 = fmul float %66, %div40
  store float %mul41, ptr %smlnum, align 4, !tbaa !10
  %69 = load ptr, ptr %wantt.addr, align 8, !tbaa !4
  %70 = load i32, ptr %69, align 4, !tbaa !8
  %tobool = icmp ne i32 %70, 0
  br i1 %tobool, label %if.then42, label %if.end43

if.then42:                                        ; preds = %if.end33
  store i32 1, ptr %i1, align 4, !tbaa !8
  %71 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %72 = load i32, ptr %71, align 4, !tbaa !8
  store i32 %72, ptr %i2, align 4, !tbaa !8
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %if.end33
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x) #5
  store i32 10, ptr %_x, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y) #5
  %73 = load i32, ptr %nh, align 4, !tbaa !8
  store i32 %73, ptr %_y, align 4, !tbaa !8
  %74 = load i32, ptr %_x, align 4, !tbaa !8
  %75 = load i32, ptr %_y, align 4, !tbaa !8
  %cmp44 = icmp sgt i32 %74, %75
  br i1 %cmp44, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end43
  %76 = load i32, ptr %_x, align 4, !tbaa !8
  br label %cond.end

cond.false:                                       ; preds = %if.end43
  %77 = load i32, ptr %_y, align 4, !tbaa !8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %76, %cond.true ], [ %77, %cond.false ]
  store i32 %cond, ptr %tmp, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x) #5
  %78 = load i32, ptr %tmp, align 4, !tbaa !8
  %mul46 = mul nsw i32 %78, 30
  store i32 %mul46, ptr %itmax, align 4, !tbaa !8
  store i32 0, ptr %kdefl, align 4, !tbaa !8
  %79 = load ptr, ptr %ihi.addr, align 8, !tbaa !4
  %80 = load i32, ptr %79, align 4, !tbaa !8
  store i32 %80, ptr %i__, align 4, !tbaa !8
  br label %L20

L20:                                              ; preds = %if.end1160, %cond.end
  %81 = load ptr, ptr %ilo.addr, align 8, !tbaa !4
  %82 = load i32, ptr %81, align 4, !tbaa !8
  store i32 %82, ptr %l, align 4, !tbaa !8
  %83 = load i32, ptr %i__, align 4, !tbaa !8
  %84 = load ptr, ptr %ilo.addr, align 8, !tbaa !4
  %85 = load i32, ptr %84, align 4, !tbaa !8
  %cmp47 = icmp slt i32 %83, %85
  br i1 %cmp47, label %if.then49, label %if.end50

if.then49:                                        ; preds = %L20
  br label %L160

if.end50:                                         ; preds = %L20
  %86 = load i32, ptr %itmax, align 4, !tbaa !8
  store i32 %86, ptr %i__1, align 4, !tbaa !8
  store i32 0, ptr %its, align 4, !tbaa !8
  br label %for.cond51

for.cond51:                                       ; preds = %for.inc1064, %if.end50
  %87 = load i32, ptr %its, align 4, !tbaa !8
  %88 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp52 = icmp sle i32 %87, %88
  br i1 %cmp52, label %for.body54, label %for.end1066

for.body54:                                       ; preds = %for.cond51
  %89 = load i32, ptr %l, align 4, !tbaa !8
  %add55 = add nsw i32 %89, 1
  store i32 %add55, ptr %i__2, align 4, !tbaa !8
  %90 = load i32, ptr %i__, align 4, !tbaa !8
  store i32 %90, ptr %k, align 4, !tbaa !8
  br label %for.cond56

for.cond56:                                       ; preds = %for.inc319, %for.body54
  %91 = load i32, ptr %k, align 4, !tbaa !8
  %92 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp57 = icmp sge i32 %91, %92
  br i1 %cmp57, label %for.body59, label %for.end320

for.body59:                                       ; preds = %for.cond56
  %93 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %94 = load i32, ptr %k, align 4, !tbaa !8
  %95 = load i32, ptr %k, align 4, !tbaa !8
  %sub60 = sub nsw i32 %95, 1
  %96 = load i32, ptr %h_dim1, align 4, !tbaa !8
  %mul61 = mul nsw i32 %sub60, %96
  %add62 = add nsw i32 %94, %mul61
  %idxprom63 = sext i32 %add62 to i64
  %arrayidx64 = getelementptr inbounds float, ptr %93, i64 %idxprom63
  %97 = load float, ptr %arrayidx64, align 4, !tbaa !10
  store float %97, ptr %r__1, align 4, !tbaa !10
  %98 = load float, ptr %r__1, align 4, !tbaa !10
  %cmp65 = fcmp oge float %98, 0.000000e+00
  br i1 %cmp65, label %cond.true67, label %cond.false68

cond.true67:                                      ; preds = %for.body59
  %99 = load float, ptr %r__1, align 4, !tbaa !10
  br label %cond.end69

cond.false68:                                     ; preds = %for.body59
  %100 = load float, ptr %r__1, align 4, !tbaa !10
  %fneg = fneg float %100
  br label %cond.end69

cond.end69:                                       ; preds = %cond.false68, %cond.true67
  %cond70 = phi float [ %99, %cond.true67 ], [ %fneg, %cond.false68 ]
  %101 = load float, ptr %smlnum, align 4, !tbaa !10
  %cmp71 = fcmp ole float %cond70, %101
  br i1 %cmp71, label %if.then73, label %if.end74

if.then73:                                        ; preds = %cond.end69
  br label %L40

if.end74:                                         ; preds = %cond.end69
  %102 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %103 = load i32, ptr %k, align 4, !tbaa !8
  %sub75 = sub nsw i32 %103, 1
  %104 = load i32, ptr %k, align 4, !tbaa !8
  %sub76 = sub nsw i32 %104, 1
  %105 = load i32, ptr %h_dim1, align 4, !tbaa !8
  %mul77 = mul nsw i32 %sub76, %105
  %add78 = add nsw i32 %sub75, %mul77
  %idxprom79 = sext i32 %add78 to i64
  %arrayidx80 = getelementptr inbounds float, ptr %102, i64 %idxprom79
  %106 = load float, ptr %arrayidx80, align 4, !tbaa !10
  store float %106, ptr %r__1, align 4, !tbaa !10
  %107 = load float, ptr %r__1, align 4, !tbaa !10
  %cmp81 = fcmp oge float %107, 0.000000e+00
  br i1 %cmp81, label %cond.true83, label %cond.false84

cond.true83:                                      ; preds = %if.end74
  %108 = load float, ptr %r__1, align 4, !tbaa !10
  br label %cond.end86

cond.false84:                                     ; preds = %if.end74
  %109 = load float, ptr %r__1, align 4, !tbaa !10
  %fneg85 = fneg float %109
  br label %cond.end86

cond.end86:                                       ; preds = %cond.false84, %cond.true83
  %cond87 = phi float [ %108, %cond.true83 ], [ %fneg85, %cond.false84 ]
  %110 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %111 = load i32, ptr %k, align 4, !tbaa !8
  %112 = load i32, ptr %k, align 4, !tbaa !8
  %113 = load i32, ptr %h_dim1, align 4, !tbaa !8
  %mul88 = mul nsw i32 %112, %113
  %add89 = add nsw i32 %111, %mul88
  %idxprom90 = sext i32 %add89 to i64
  %arrayidx91 = getelementptr inbounds float, ptr %110, i64 %idxprom90
  %114 = load float, ptr %arrayidx91, align 4, !tbaa !10
  store float %114, ptr %r__2, align 4, !tbaa !10
  %115 = load float, ptr %r__2, align 4, !tbaa !10
  %cmp92 = fcmp oge float %115, 0.000000e+00
  br i1 %cmp92, label %cond.true94, label %cond.false95

cond.true94:                                      ; preds = %cond.end86
  %116 = load float, ptr %r__2, align 4, !tbaa !10
  br label %cond.end97

cond.false95:                                     ; preds = %cond.end86
  %117 = load float, ptr %r__2, align 4, !tbaa !10
  %fneg96 = fneg float %117
  br label %cond.end97

cond.end97:                                       ; preds = %cond.false95, %cond.true94
  %cond98 = phi float [ %116, %cond.true94 ], [ %fneg96, %cond.false95 ]
  %add99 = fadd float %cond87, %cond98
  store float %add99, ptr %tst, align 4, !tbaa !10
  %118 = load float, ptr %tst, align 4, !tbaa !10
  %cmp100 = fcmp oeq float %118, 0.000000e+00
  br i1 %cmp100, label %if.then102, label %if.end140

if.then102:                                       ; preds = %cond.end97
  %119 = load i32, ptr %k, align 4, !tbaa !8
  %sub103 = sub nsw i32 %119, 2
  %120 = load ptr, ptr %ilo.addr, align 8, !tbaa !4
  %121 = load i32, ptr %120, align 4, !tbaa !8
  %cmp104 = icmp sge i32 %sub103, %121
  br i1 %cmp104, label %if.then106, label %if.end121

if.then106:                                       ; preds = %if.then102
  %122 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %123 = load i32, ptr %k, align 4, !tbaa !8
  %sub107 = sub nsw i32 %123, 1
  %124 = load i32, ptr %k, align 4, !tbaa !8
  %sub108 = sub nsw i32 %124, 2
  %125 = load i32, ptr %h_dim1, align 4, !tbaa !8
  %mul109 = mul nsw i32 %sub108, %125
  %add110 = add nsw i32 %sub107, %mul109
  %idxprom111 = sext i32 %add110 to i64
  %arrayidx112 = getelementptr inbounds float, ptr %122, i64 %idxprom111
  %126 = load float, ptr %arrayidx112, align 4, !tbaa !10
  store float %126, ptr %r__1, align 4, !tbaa !10
  %127 = load float, ptr %r__1, align 4, !tbaa !10
  %cmp113 = fcmp oge float %127, 0.000000e+00
  br i1 %cmp113, label %cond.true115, label %cond.false116

cond.true115:                                     ; preds = %if.then106
  %128 = load float, ptr %r__1, align 4, !tbaa !10
  br label %cond.end118

cond.false116:                                    ; preds = %if.then106
  %129 = load float, ptr %r__1, align 4, !tbaa !10
  %fneg117 = fneg float %129
  br label %cond.end118

cond.end118:                                      ; preds = %cond.false116, %cond.true115
  %cond119 = phi float [ %128, %cond.true115 ], [ %fneg117, %cond.false116 ]
  %130 = load float, ptr %tst, align 4, !tbaa !10
  %add120 = fadd float %130, %cond119
  store float %add120, ptr %tst, align 4, !tbaa !10
  br label %if.end121

if.end121:                                        ; preds = %cond.end118, %if.then102
  %131 = load i32, ptr %k, align 4, !tbaa !8
  %add122 = add nsw i32 %131, 1
  %132 = load ptr, ptr %ihi.addr, align 8, !tbaa !4
  %133 = load i32, ptr %132, align 4, !tbaa !8
  %cmp123 = icmp sle i32 %add122, %133
  br i1 %cmp123, label %if.then125, label %if.end139

if.then125:                                       ; preds = %if.end121
  %134 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %135 = load i32, ptr %k, align 4, !tbaa !8
  %add126 = add nsw i32 %135, 1
  %136 = load i32, ptr %k, align 4, !tbaa !8
  %137 = load i32, ptr %h_dim1, align 4, !tbaa !8
  %mul127 = mul nsw i32 %136, %137
  %add128 = add nsw i32 %add126, %mul127
  %idxprom129 = sext i32 %add128 to i64
  %arrayidx130 = getelementptr inbounds float, ptr %134, i64 %idxprom129
  %138 = load float, ptr %arrayidx130, align 4, !tbaa !10
  store float %138, ptr %r__1, align 4, !tbaa !10
  %139 = load float, ptr %r__1, align 4, !tbaa !10
  %cmp131 = fcmp oge float %139, 0.000000e+00
  br i1 %cmp131, label %cond.true133, label %cond.false134

cond.true133:                                     ; preds = %if.then125
  %140 = load float, ptr %r__1, align 4, !tbaa !10
  br label %cond.end136

cond.false134:                                    ; preds = %if.then125
  %141 = load float, ptr %r__1, align 4, !tbaa !10
  %fneg135 = fneg float %141
  br label %cond.end136

cond.end136:                                      ; preds = %cond.false134, %cond.true133
  %cond137 = phi float [ %140, %cond.true133 ], [ %fneg135, %cond.false134 ]
  %142 = load float, ptr %tst, align 4, !tbaa !10
  %add138 = fadd float %142, %cond137
  store float %add138, ptr %tst, align 4, !tbaa !10
  br label %if.end139

if.end139:                                        ; preds = %cond.end136, %if.end121
  br label %if.end140

if.end140:                                        ; preds = %if.end139, %cond.end97
  %143 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %144 = load i32, ptr %k, align 4, !tbaa !8
  %145 = load i32, ptr %k, align 4, !tbaa !8
  %sub141 = sub nsw i32 %145, 1
  %146 = load i32, ptr %h_dim1, align 4, !tbaa !8
  %mul142 = mul nsw i32 %sub141, %146
  %add143 = add nsw i32 %144, %mul142
  %idxprom144 = sext i32 %add143 to i64
  %arrayidx145 = getelementptr inbounds float, ptr %143, i64 %idxprom144
  %147 = load float, ptr %arrayidx145, align 4, !tbaa !10
  store float %147, ptr %r__1, align 4, !tbaa !10
  %148 = load float, ptr %r__1, align 4, !tbaa !10
  %cmp146 = fcmp oge float %148, 0.000000e+00
  br i1 %cmp146, label %cond.true148, label %cond.false149

cond.true148:                                     ; preds = %if.end140
  %149 = load float, ptr %r__1, align 4, !tbaa !10
  br label %cond.end151

cond.false149:                                    ; preds = %if.end140
  %150 = load float, ptr %r__1, align 4, !tbaa !10
  %fneg150 = fneg float %150
  br label %cond.end151

cond.end151:                                      ; preds = %cond.false149, %cond.true148
  %cond152 = phi float [ %149, %cond.true148 ], [ %fneg150, %cond.false149 ]
  %151 = load float, ptr %ulp, align 4, !tbaa !10
  %152 = load float, ptr %tst, align 4, !tbaa !10
  %mul153 = fmul float %151, %152
  %cmp154 = fcmp ole float %cond152, %mul153
  br i1 %cmp154, label %if.then156, label %if.end318

if.then156:                                       ; preds = %cond.end151
  %153 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %154 = load i32, ptr %k, align 4, !tbaa !8
  %155 = load i32, ptr %k, align 4, !tbaa !8
  %sub157 = sub nsw i32 %155, 1
  %156 = load i32, ptr %h_dim1, align 4, !tbaa !8
  %mul158 = mul nsw i32 %sub157, %156
  %add159 = add nsw i32 %154, %mul158
  %idxprom160 = sext i32 %add159 to i64
  %arrayidx161 = getelementptr inbounds float, ptr %153, i64 %idxprom160
  %157 = load float, ptr %arrayidx161, align 4, !tbaa !10
  store float %157, ptr %r__1, align 4, !tbaa !10
  %158 = load float, ptr %r__1, align 4, !tbaa !10
  %cmp162 = fcmp oge float %158, 0.000000e+00
  br i1 %cmp162, label %cond.true164, label %cond.false165

cond.true164:                                     ; preds = %if.then156
  %159 = load float, ptr %r__1, align 4, !tbaa !10
  br label %cond.end167

cond.false165:                                    ; preds = %if.then156
  %160 = load float, ptr %r__1, align 4, !tbaa !10
  %fneg166 = fneg float %160
  br label %cond.end167

cond.end167:                                      ; preds = %cond.false165, %cond.true164
  %cond168 = phi float [ %159, %cond.true164 ], [ %fneg166, %cond.false165 ]
  store float %cond168, ptr %r__3, align 4, !tbaa !10
  %161 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %162 = load i32, ptr %k, align 4, !tbaa !8
  %sub169 = sub nsw i32 %162, 1
  %163 = load i32, ptr %k, align 4, !tbaa !8
  %164 = load i32, ptr %h_dim1, align 4, !tbaa !8
  %mul170 = mul nsw i32 %163, %164
  %add171 = add nsw i32 %sub169, %mul170
  %idxprom172 = sext i32 %add171 to i64
  %arrayidx173 = getelementptr inbounds float, ptr %161, i64 %idxprom172
  %165 = load float, ptr %arrayidx173, align 4, !tbaa !10
  store float %165, ptr %r__2, align 4, !tbaa !10
  %166 = load float, ptr %r__2, align 4, !tbaa !10
  %cmp174 = fcmp oge float %166, 0.000000e+00
  br i1 %cmp174, label %cond.true176, label %cond.false177

cond.true176:                                     ; preds = %cond.end167
  %167 = load float, ptr %r__2, align 4, !tbaa !10
  br label %cond.end179

cond.false177:                                    ; preds = %cond.end167
  %168 = load float, ptr %r__2, align 4, !tbaa !10
  %fneg178 = fneg float %168
  br label %cond.end179

cond.end179:                                      ; preds = %cond.false177, %cond.true176
  %cond180 = phi float [ %167, %cond.true176 ], [ %fneg178, %cond.false177 ]
  store float %cond180, ptr %r__4, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x181) #5
  %169 = load float, ptr %r__3, align 4, !tbaa !10
  store float %169, ptr %_x181, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y182) #5
  %170 = load float, ptr %r__4, align 4, !tbaa !10
  store float %170, ptr %_y182, align 4, !tbaa !10
  %171 = load float, ptr %_x181, align 4, !tbaa !10
  %172 = load float, ptr %_y182, align 4, !tbaa !10
  %cmp184 = fcmp ogt float %171, %172
  br i1 %cmp184, label %cond.true186, label %cond.false187

cond.true186:                                     ; preds = %cond.end179
  %173 = load float, ptr %_x181, align 4, !tbaa !10
  br label %cond.end188

cond.false187:                                    ; preds = %cond.end179
  %174 = load float, ptr %_y182, align 4, !tbaa !10
  br label %cond.end188

cond.end188:                                      ; preds = %cond.false187, %cond.true186
  %cond189 = phi float [ %173, %cond.true186 ], [ %174, %cond.false187 ]
  store float %cond189, ptr %tmp183, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y182) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x181) #5
  %175 = load float, ptr %tmp183, align 4, !tbaa !10
  store float %175, ptr %ab, align 4, !tbaa !10
  %176 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %177 = load i32, ptr %k, align 4, !tbaa !8
  %178 = load i32, ptr %k, align 4, !tbaa !8
  %sub190 = sub nsw i32 %178, 1
  %179 = load i32, ptr %h_dim1, align 4, !tbaa !8
  %mul191 = mul nsw i32 %sub190, %179
  %add192 = add nsw i32 %177, %mul191
  %idxprom193 = sext i32 %add192 to i64
  %arrayidx194 = getelementptr inbounds float, ptr %176, i64 %idxprom193
  %180 = load float, ptr %arrayidx194, align 4, !tbaa !10
  store float %180, ptr %r__1, align 4, !tbaa !10
  %181 = load float, ptr %r__1, align 4, !tbaa !10
  %cmp195 = fcmp oge float %181, 0.000000e+00
  br i1 %cmp195, label %cond.true197, label %cond.false198

cond.true197:                                     ; preds = %cond.end188
  %182 = load float, ptr %r__1, align 4, !tbaa !10
  br label %cond.end200

cond.false198:                                    ; preds = %cond.end188
  %183 = load float, ptr %r__1, align 4, !tbaa !10
  %fneg199 = fneg float %183
  br label %cond.end200

cond.end200:                                      ; preds = %cond.false198, %cond.true197
  %cond201 = phi float [ %182, %cond.true197 ], [ %fneg199, %cond.false198 ]
  store float %cond201, ptr %r__3, align 4, !tbaa !10
  %184 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %185 = load i32, ptr %k, align 4, !tbaa !8
  %sub202 = sub nsw i32 %185, 1
  %186 = load i32, ptr %k, align 4, !tbaa !8
  %187 = load i32, ptr %h_dim1, align 4, !tbaa !8
  %mul203 = mul nsw i32 %186, %187
  %add204 = add nsw i32 %sub202, %mul203
  %idxprom205 = sext i32 %add204 to i64
  %arrayidx206 = getelementptr inbounds float, ptr %184, i64 %idxprom205
  %188 = load float, ptr %arrayidx206, align 4, !tbaa !10
  store float %188, ptr %r__2, align 4, !tbaa !10
  %189 = load float, ptr %r__2, align 4, !tbaa !10
  %cmp207 = fcmp oge float %189, 0.000000e+00
  br i1 %cmp207, label %cond.true209, label %cond.false210

cond.true209:                                     ; preds = %cond.end200
  %190 = load float, ptr %r__2, align 4, !tbaa !10
  br label %cond.end212

cond.false210:                                    ; preds = %cond.end200
  %191 = load float, ptr %r__2, align 4, !tbaa !10
  %fneg211 = fneg float %191
  br label %cond.end212

cond.end212:                                      ; preds = %cond.false210, %cond.true209
  %cond213 = phi float [ %190, %cond.true209 ], [ %fneg211, %cond.false210 ]
  store float %cond213, ptr %r__4, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x214) #5
  %192 = load float, ptr %r__3, align 4, !tbaa !10
  store float %192, ptr %_x214, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y215) #5
  %193 = load float, ptr %r__4, align 4, !tbaa !10
  store float %193, ptr %_y215, align 4, !tbaa !10
  %194 = load float, ptr %_x214, align 4, !tbaa !10
  %195 = load float, ptr %_y215, align 4, !tbaa !10
  %cmp217 = fcmp olt float %194, %195
  br i1 %cmp217, label %cond.true219, label %cond.false220

cond.true219:                                     ; preds = %cond.end212
  %196 = load float, ptr %_x214, align 4, !tbaa !10
  br label %cond.end221

cond.false220:                                    ; preds = %cond.end212
  %197 = load float, ptr %_y215, align 4, !tbaa !10
  br label %cond.end221

cond.end221:                                      ; preds = %cond.false220, %cond.true219
  %cond222 = phi float [ %196, %cond.true219 ], [ %197, %cond.false220 ]
  store float %cond222, ptr %tmp216, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y215) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x214) #5
  %198 = load float, ptr %tmp216, align 4, !tbaa !10
  store float %198, ptr %ba, align 4, !tbaa !10
  %199 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %200 = load i32, ptr %k, align 4, !tbaa !8
  %201 = load i32, ptr %k, align 4, !tbaa !8
  %202 = load i32, ptr %h_dim1, align 4, !tbaa !8
  %mul223 = mul nsw i32 %201, %202
  %add224 = add nsw i32 %200, %mul223
  %idxprom225 = sext i32 %add224 to i64
  %arrayidx226 = getelementptr inbounds float, ptr %199, i64 %idxprom225
  %203 = load float, ptr %arrayidx226, align 4, !tbaa !10
  store float %203, ptr %r__1, align 4, !tbaa !10
  %204 = load float, ptr %r__1, align 4, !tbaa !10
  %cmp227 = fcmp oge float %204, 0.000000e+00
  br i1 %cmp227, label %cond.true229, label %cond.false230

cond.true229:                                     ; preds = %cond.end221
  %205 = load float, ptr %r__1, align 4, !tbaa !10
  br label %cond.end232

cond.false230:                                    ; preds = %cond.end221
  %206 = load float, ptr %r__1, align 4, !tbaa !10
  %fneg231 = fneg float %206
  br label %cond.end232

cond.end232:                                      ; preds = %cond.false230, %cond.true229
  %cond233 = phi float [ %205, %cond.true229 ], [ %fneg231, %cond.false230 ]
  store float %cond233, ptr %r__3, align 4, !tbaa !10
  %207 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %208 = load i32, ptr %k, align 4, !tbaa !8
  %sub234 = sub nsw i32 %208, 1
  %209 = load i32, ptr %k, align 4, !tbaa !8
  %sub235 = sub nsw i32 %209, 1
  %210 = load i32, ptr %h_dim1, align 4, !tbaa !8
  %mul236 = mul nsw i32 %sub235, %210
  %add237 = add nsw i32 %sub234, %mul236
  %idxprom238 = sext i32 %add237 to i64
  %arrayidx239 = getelementptr inbounds float, ptr %207, i64 %idxprom238
  %211 = load float, ptr %arrayidx239, align 4, !tbaa !10
  %212 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %213 = load i32, ptr %k, align 4, !tbaa !8
  %214 = load i32, ptr %k, align 4, !tbaa !8
  %215 = load i32, ptr %h_dim1, align 4, !tbaa !8
  %mul240 = mul nsw i32 %214, %215
  %add241 = add nsw i32 %213, %mul240
  %idxprom242 = sext i32 %add241 to i64
  %arrayidx243 = getelementptr inbounds float, ptr %212, i64 %idxprom242
  %216 = load float, ptr %arrayidx243, align 4, !tbaa !10
  %sub244 = fsub float %211, %216
  store float %sub244, ptr %r__2, align 4, !tbaa !10
  %217 = load float, ptr %r__2, align 4, !tbaa !10
  %cmp245 = fcmp oge float %217, 0.000000e+00
  br i1 %cmp245, label %cond.true247, label %cond.false248

cond.true247:                                     ; preds = %cond.end232
  %218 = load float, ptr %r__2, align 4, !tbaa !10
  br label %cond.end250

cond.false248:                                    ; preds = %cond.end232
  %219 = load float, ptr %r__2, align 4, !tbaa !10
  %fneg249 = fneg float %219
  br label %cond.end250

cond.end250:                                      ; preds = %cond.false248, %cond.true247
  %cond251 = phi float [ %218, %cond.true247 ], [ %fneg249, %cond.false248 ]
  store float %cond251, ptr %r__4, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x252) #5
  %220 = load float, ptr %r__3, align 4, !tbaa !10
  store float %220, ptr %_x252, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y253) #5
  %221 = load float, ptr %r__4, align 4, !tbaa !10
  store float %221, ptr %_y253, align 4, !tbaa !10
  %222 = load float, ptr %_x252, align 4, !tbaa !10
  %223 = load float, ptr %_y253, align 4, !tbaa !10
  %cmp255 = fcmp ogt float %222, %223
  br i1 %cmp255, label %cond.true257, label %cond.false258

cond.true257:                                     ; preds = %cond.end250
  %224 = load float, ptr %_x252, align 4, !tbaa !10
  br label %cond.end259

cond.false258:                                    ; preds = %cond.end250
  %225 = load float, ptr %_y253, align 4, !tbaa !10
  br label %cond.end259

cond.end259:                                      ; preds = %cond.false258, %cond.true257
  %cond260 = phi float [ %224, %cond.true257 ], [ %225, %cond.false258 ]
  store float %cond260, ptr %tmp254, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y253) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x252) #5
  %226 = load float, ptr %tmp254, align 4, !tbaa !10
  store float %226, ptr %aa, align 4, !tbaa !10
  %227 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %228 = load i32, ptr %k, align 4, !tbaa !8
  %229 = load i32, ptr %k, align 4, !tbaa !8
  %230 = load i32, ptr %h_dim1, align 4, !tbaa !8
  %mul261 = mul nsw i32 %229, %230
  %add262 = add nsw i32 %228, %mul261
  %idxprom263 = sext i32 %add262 to i64
  %arrayidx264 = getelementptr inbounds float, ptr %227, i64 %idxprom263
  %231 = load float, ptr %arrayidx264, align 4, !tbaa !10
  store float %231, ptr %r__1, align 4, !tbaa !10
  %232 = load float, ptr %r__1, align 4, !tbaa !10
  %cmp265 = fcmp oge float %232, 0.000000e+00
  br i1 %cmp265, label %cond.true267, label %cond.false268

cond.true267:                                     ; preds = %cond.end259
  %233 = load float, ptr %r__1, align 4, !tbaa !10
  br label %cond.end270

cond.false268:                                    ; preds = %cond.end259
  %234 = load float, ptr %r__1, align 4, !tbaa !10
  %fneg269 = fneg float %234
  br label %cond.end270

cond.end270:                                      ; preds = %cond.false268, %cond.true267
  %cond271 = phi float [ %233, %cond.true267 ], [ %fneg269, %cond.false268 ]
  store float %cond271, ptr %r__3, align 4, !tbaa !10
  %235 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %236 = load i32, ptr %k, align 4, !tbaa !8
  %sub272 = sub nsw i32 %236, 1
  %237 = load i32, ptr %k, align 4, !tbaa !8
  %sub273 = sub nsw i32 %237, 1
  %238 = load i32, ptr %h_dim1, align 4, !tbaa !8
  %mul274 = mul nsw i32 %sub273, %238
  %add275 = add nsw i32 %sub272, %mul274
  %idxprom276 = sext i32 %add275 to i64
  %arrayidx277 = getelementptr inbounds float, ptr %235, i64 %idxprom276
  %239 = load float, ptr %arrayidx277, align 4, !tbaa !10
  %240 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %241 = load i32, ptr %k, align 4, !tbaa !8
  %242 = load i32, ptr %k, align 4, !tbaa !8
  %243 = load i32, ptr %h_dim1, align 4, !tbaa !8
  %mul278 = mul nsw i32 %242, %243
  %add279 = add nsw i32 %241, %mul278
  %idxprom280 = sext i32 %add279 to i64
  %arrayidx281 = getelementptr inbounds float, ptr %240, i64 %idxprom280
  %244 = load float, ptr %arrayidx281, align 4, !tbaa !10
  %sub282 = fsub float %239, %244
  store float %sub282, ptr %r__2, align 4, !tbaa !10
  %245 = load float, ptr %r__2, align 4, !tbaa !10
  %cmp283 = fcmp oge float %245, 0.000000e+00
  br i1 %cmp283, label %cond.true285, label %cond.false286

cond.true285:                                     ; preds = %cond.end270
  %246 = load float, ptr %r__2, align 4, !tbaa !10
  br label %cond.end288

cond.false286:                                    ; preds = %cond.end270
  %247 = load float, ptr %r__2, align 4, !tbaa !10
  %fneg287 = fneg float %247
  br label %cond.end288

cond.end288:                                      ; preds = %cond.false286, %cond.true285
  %cond289 = phi float [ %246, %cond.true285 ], [ %fneg287, %cond.false286 ]
  store float %cond289, ptr %r__4, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x290) #5
  %248 = load float, ptr %r__3, align 4, !tbaa !10
  store float %248, ptr %_x290, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y291) #5
  %249 = load float, ptr %r__4, align 4, !tbaa !10
  store float %249, ptr %_y291, align 4, !tbaa !10
  %250 = load float, ptr %_x290, align 4, !tbaa !10
  %251 = load float, ptr %_y291, align 4, !tbaa !10
  %cmp293 = fcmp olt float %250, %251
  br i1 %cmp293, label %cond.true295, label %cond.false296

cond.true295:                                     ; preds = %cond.end288
  %252 = load float, ptr %_x290, align 4, !tbaa !10
  br label %cond.end297

cond.false296:                                    ; preds = %cond.end288
  %253 = load float, ptr %_y291, align 4, !tbaa !10
  br label %cond.end297

cond.end297:                                      ; preds = %cond.false296, %cond.true295
  %cond298 = phi float [ %252, %cond.true295 ], [ %253, %cond.false296 ]
  store float %cond298, ptr %tmp292, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y291) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x290) #5
  %254 = load float, ptr %tmp292, align 4, !tbaa !10
  store float %254, ptr %bb, align 4, !tbaa !10
  %255 = load float, ptr %aa, align 4, !tbaa !10
  %256 = load float, ptr %ab, align 4, !tbaa !10
  %add299 = fadd float %255, %256
  store float %add299, ptr %s, align 4, !tbaa !10
  %257 = load float, ptr %smlnum, align 4, !tbaa !10
  store float %257, ptr %r__1, align 4, !tbaa !10
  %258 = load float, ptr %ulp, align 4, !tbaa !10
  %259 = load float, ptr %bb, align 4, !tbaa !10
  %260 = load float, ptr %aa, align 4, !tbaa !10
  %261 = load float, ptr %s, align 4, !tbaa !10
  %div300 = fdiv float %260, %261
  %mul301 = fmul float %259, %div300
  %mul302 = fmul float %258, %mul301
  store float %mul302, ptr %r__2, align 4, !tbaa !10
  %262 = load float, ptr %ba, align 4, !tbaa !10
  %263 = load float, ptr %ab, align 4, !tbaa !10
  %264 = load float, ptr %s, align 4, !tbaa !10
  %div303 = fdiv float %263, %264
  %mul304 = fmul float %262, %div303
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x305) #5
  %265 = load float, ptr %r__1, align 4, !tbaa !10
  store float %265, ptr %_x305, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y306) #5
  %266 = load float, ptr %r__2, align 4, !tbaa !10
  store float %266, ptr %_y306, align 4, !tbaa !10
  %267 = load float, ptr %_x305, align 4, !tbaa !10
  %268 = load float, ptr %_y306, align 4, !tbaa !10
  %cmp308 = fcmp ogt float %267, %268
  br i1 %cmp308, label %cond.true310, label %cond.false311

cond.true310:                                     ; preds = %cond.end297
  %269 = load float, ptr %_x305, align 4, !tbaa !10
  br label %cond.end312

cond.false311:                                    ; preds = %cond.end297
  %270 = load float, ptr %_y306, align 4, !tbaa !10
  br label %cond.end312

cond.end312:                                      ; preds = %cond.false311, %cond.true310
  %cond313 = phi float [ %269, %cond.true310 ], [ %270, %cond.false311 ]
  store float %cond313, ptr %tmp307, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y306) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x305) #5
  %271 = load float, ptr %tmp307, align 4, !tbaa !10
  %cmp314 = fcmp ole float %mul304, %271
  br i1 %cmp314, label %if.then316, label %if.end317

if.then316:                                       ; preds = %cond.end312
  br label %L40

if.end317:                                        ; preds = %cond.end312
  br label %if.end318

if.end318:                                        ; preds = %if.end317, %cond.end151
  br label %for.inc319

for.inc319:                                       ; preds = %if.end318
  %272 = load i32, ptr %k, align 4, !tbaa !8
  %dec = add nsw i32 %272, -1
  store i32 %dec, ptr %k, align 4, !tbaa !8
  br label %for.cond56, !llvm.loop !14

for.end320:                                       ; preds = %for.cond56
  br label %L40

L40:                                              ; preds = %for.end320, %if.then316, %if.then73
  %273 = load i32, ptr %k, align 4, !tbaa !8
  store i32 %273, ptr %l, align 4, !tbaa !8
  %274 = load i32, ptr %l, align 4, !tbaa !8
  %275 = load ptr, ptr %ilo.addr, align 8, !tbaa !4
  %276 = load i32, ptr %275, align 4, !tbaa !8
  %cmp321 = icmp sgt i32 %274, %276
  br i1 %cmp321, label %if.then323, label %if.end329

if.then323:                                       ; preds = %L40
  %277 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %278 = load i32, ptr %l, align 4, !tbaa !8
  %279 = load i32, ptr %l, align 4, !tbaa !8
  %sub324 = sub nsw i32 %279, 1
  %280 = load i32, ptr %h_dim1, align 4, !tbaa !8
  %mul325 = mul nsw i32 %sub324, %280
  %add326 = add nsw i32 %278, %mul325
  %idxprom327 = sext i32 %add326 to i64
  %arrayidx328 = getelementptr inbounds float, ptr %277, i64 %idxprom327
  store float 0.000000e+00, ptr %arrayidx328, align 4, !tbaa !10
  br label %if.end329

if.end329:                                        ; preds = %if.then323, %L40
  %281 = load i32, ptr %l, align 4, !tbaa !8
  %282 = load i32, ptr %i__, align 4, !tbaa !8
  %sub330 = sub nsw i32 %282, 1
  %cmp331 = icmp sge i32 %281, %sub330
  br i1 %cmp331, label %if.then333, label %if.end334

if.then333:                                       ; preds = %if.end329
  br label %L150

if.end334:                                        ; preds = %if.end329
  %283 = load i32, ptr %kdefl, align 4, !tbaa !8
  %inc335 = add nsw i32 %283, 1
  store i32 %inc335, ptr %kdefl, align 4, !tbaa !8
  %284 = load ptr, ptr %wantt.addr, align 8, !tbaa !4
  %285 = load i32, ptr %284, align 4, !tbaa !8
  %tobool336 = icmp ne i32 %285, 0
  br i1 %tobool336, label %if.end338, label %if.then337

if.then337:                                       ; preds = %if.end334
  %286 = load i32, ptr %l, align 4, !tbaa !8
  store i32 %286, ptr %i1, align 4, !tbaa !8
  %287 = load i32, ptr %i__, align 4, !tbaa !8
  store i32 %287, ptr %i2, align 4, !tbaa !8
  br label %if.end338

if.end338:                                        ; preds = %if.then337, %if.end334
  %288 = load i32, ptr %kdefl, align 4, !tbaa !8
  %rem = srem i32 %288, 20
  %cmp339 = icmp eq i32 %rem, 0
  br i1 %cmp339, label %if.then341, label %if.else

if.then341:                                       ; preds = %if.end338
  %289 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %290 = load i32, ptr %i__, align 4, !tbaa !8
  %291 = load i32, ptr %i__, align 4, !tbaa !8
  %sub342 = sub nsw i32 %291, 1
  %292 = load i32, ptr %h_dim1, align 4, !tbaa !8
  %mul343 = mul nsw i32 %sub342, %292
  %add344 = add nsw i32 %290, %mul343
  %idxprom345 = sext i32 %add344 to i64
  %arrayidx346 = getelementptr inbounds float, ptr %289, i64 %idxprom345
  %293 = load float, ptr %arrayidx346, align 4, !tbaa !10
  store float %293, ptr %r__1, align 4, !tbaa !10
  %294 = load float, ptr %r__1, align 4, !tbaa !10
  %cmp347 = fcmp oge float %294, 0.000000e+00
  br i1 %cmp347, label %cond.true349, label %cond.false350

cond.true349:                                     ; preds = %if.then341
  %295 = load float, ptr %r__1, align 4, !tbaa !10
  br label %cond.end352

cond.false350:                                    ; preds = %if.then341
  %296 = load float, ptr %r__1, align 4, !tbaa !10
  %fneg351 = fneg float %296
  br label %cond.end352

cond.end352:                                      ; preds = %cond.false350, %cond.true349
  %cond353 = phi float [ %295, %cond.true349 ], [ %fneg351, %cond.false350 ]
  %297 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %298 = load i32, ptr %i__, align 4, !tbaa !8
  %sub354 = sub nsw i32 %298, 1
  %299 = load i32, ptr %i__, align 4, !tbaa !8
  %sub355 = sub nsw i32 %299, 2
  %300 = load i32, ptr %h_dim1, align 4, !tbaa !8
  %mul356 = mul nsw i32 %sub355, %300
  %add357 = add nsw i32 %sub354, %mul356
  %idxprom358 = sext i32 %add357 to i64
  %arrayidx359 = getelementptr inbounds float, ptr %297, i64 %idxprom358
  %301 = load float, ptr %arrayidx359, align 4, !tbaa !10
  store float %301, ptr %r__2, align 4, !tbaa !10
  %302 = load float, ptr %r__2, align 4, !tbaa !10
  %cmp360 = fcmp oge float %302, 0.000000e+00
  br i1 %cmp360, label %cond.true362, label %cond.false363

cond.true362:                                     ; preds = %cond.end352
  %303 = load float, ptr %r__2, align 4, !tbaa !10
  br label %cond.end365

cond.false363:                                    ; preds = %cond.end352
  %304 = load float, ptr %r__2, align 4, !tbaa !10
  %fneg364 = fneg float %304
  br label %cond.end365

cond.end365:                                      ; preds = %cond.false363, %cond.true362
  %cond366 = phi float [ %303, %cond.true362 ], [ %fneg364, %cond.false363 ]
  %add367 = fadd float %cond353, %cond366
  store float %add367, ptr %s, align 4, !tbaa !10
  %305 = load float, ptr %s, align 4, !tbaa !10
  %306 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %307 = load i32, ptr %i__, align 4, !tbaa !8
  %308 = load i32, ptr %i__, align 4, !tbaa !8
  %309 = load i32, ptr %h_dim1, align 4, !tbaa !8
  %mul369 = mul nsw i32 %308, %309
  %add370 = add nsw i32 %307, %mul369
  %idxprom371 = sext i32 %add370 to i64
  %arrayidx372 = getelementptr inbounds float, ptr %306, i64 %idxprom371
  %310 = load float, ptr %arrayidx372, align 4, !tbaa !10
  %311 = call float @llvm.fmuladd.f32(float %305, float 7.500000e-01, float %310)
  store float %311, ptr %h11, align 4, !tbaa !10
  %312 = load float, ptr %s, align 4, !tbaa !10
  %mul373 = fmul float %312, -4.375000e-01
  store float %mul373, ptr %h12, align 4, !tbaa !10
  %313 = load float, ptr %s, align 4, !tbaa !10
  store float %313, ptr %h21, align 4, !tbaa !10
  %314 = load float, ptr %h11, align 4, !tbaa !10
  store float %314, ptr %h22, align 4, !tbaa !10
  br label %if.end432

if.else:                                          ; preds = %if.end338
  %315 = load i32, ptr %kdefl, align 4, !tbaa !8
  %rem374 = srem i32 %315, 10
  %cmp375 = icmp eq i32 %rem374, 0
  br i1 %cmp375, label %if.then377, label %if.else410

if.then377:                                       ; preds = %if.else
  %316 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %317 = load i32, ptr %l, align 4, !tbaa !8
  %add378 = add nsw i32 %317, 1
  %318 = load i32, ptr %l, align 4, !tbaa !8
  %319 = load i32, ptr %h_dim1, align 4, !tbaa !8
  %mul379 = mul nsw i32 %318, %319
  %add380 = add nsw i32 %add378, %mul379
  %idxprom381 = sext i32 %add380 to i64
  %arrayidx382 = getelementptr inbounds float, ptr %316, i64 %idxprom381
  %320 = load float, ptr %arrayidx382, align 4, !tbaa !10
  store float %320, ptr %r__1, align 4, !tbaa !10
  %321 = load float, ptr %r__1, align 4, !tbaa !10
  %cmp383 = fcmp oge float %321, 0.000000e+00
  br i1 %cmp383, label %cond.true385, label %cond.false386

cond.true385:                                     ; preds = %if.then377
  %322 = load float, ptr %r__1, align 4, !tbaa !10
  br label %cond.end388

cond.false386:                                    ; preds = %if.then377
  %323 = load float, ptr %r__1, align 4, !tbaa !10
  %fneg387 = fneg float %323
  br label %cond.end388

cond.end388:                                      ; preds = %cond.false386, %cond.true385
  %cond389 = phi float [ %322, %cond.true385 ], [ %fneg387, %cond.false386 ]
  %324 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %325 = load i32, ptr %l, align 4, !tbaa !8
  %add390 = add nsw i32 %325, 2
  %326 = load i32, ptr %l, align 4, !tbaa !8
  %add391 = add nsw i32 %326, 1
  %327 = load i32, ptr %h_dim1, align 4, !tbaa !8
  %mul392 = mul nsw i32 %add391, %327
  %add393 = add nsw i32 %add390, %mul392
  %idxprom394 = sext i32 %add393 to i64
  %arrayidx395 = getelementptr inbounds float, ptr %324, i64 %idxprom394
  %328 = load float, ptr %arrayidx395, align 4, !tbaa !10
  store float %328, ptr %r__2, align 4, !tbaa !10
  %329 = load float, ptr %r__2, align 4, !tbaa !10
  %cmp396 = fcmp oge float %329, 0.000000e+00
  br i1 %cmp396, label %cond.true398, label %cond.false399

cond.true398:                                     ; preds = %cond.end388
  %330 = load float, ptr %r__2, align 4, !tbaa !10
  br label %cond.end401

cond.false399:                                    ; preds = %cond.end388
  %331 = load float, ptr %r__2, align 4, !tbaa !10
  %fneg400 = fneg float %331
  br label %cond.end401

cond.end401:                                      ; preds = %cond.false399, %cond.true398
  %cond402 = phi float [ %330, %cond.true398 ], [ %fneg400, %cond.false399 ]
  %add403 = fadd float %cond389, %cond402
  store float %add403, ptr %s, align 4, !tbaa !10
  %332 = load float, ptr %s, align 4, !tbaa !10
  %333 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %334 = load i32, ptr %l, align 4, !tbaa !8
  %335 = load i32, ptr %l, align 4, !tbaa !8
  %336 = load i32, ptr %h_dim1, align 4, !tbaa !8
  %mul405 = mul nsw i32 %335, %336
  %add406 = add nsw i32 %334, %mul405
  %idxprom407 = sext i32 %add406 to i64
  %arrayidx408 = getelementptr inbounds float, ptr %333, i64 %idxprom407
  %337 = load float, ptr %arrayidx408, align 4, !tbaa !10
  %338 = call float @llvm.fmuladd.f32(float %332, float 7.500000e-01, float %337)
  store float %338, ptr %h11, align 4, !tbaa !10
  %339 = load float, ptr %s, align 4, !tbaa !10
  %mul409 = fmul float %339, -4.375000e-01
  store float %mul409, ptr %h12, align 4, !tbaa !10
  %340 = load float, ptr %s, align 4, !tbaa !10
  store float %340, ptr %h21, align 4, !tbaa !10
  %341 = load float, ptr %h11, align 4, !tbaa !10
  store float %341, ptr %h22, align 4, !tbaa !10
  br label %if.end431

if.else410:                                       ; preds = %if.else
  %342 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %343 = load i32, ptr %i__, align 4, !tbaa !8
  %sub411 = sub nsw i32 %343, 1
  %344 = load i32, ptr %i__, align 4, !tbaa !8
  %sub412 = sub nsw i32 %344, 1
  %345 = load i32, ptr %h_dim1, align 4, !tbaa !8
  %mul413 = mul nsw i32 %sub412, %345
  %add414 = add nsw i32 %sub411, %mul413
  %idxprom415 = sext i32 %add414 to i64
  %arrayidx416 = getelementptr inbounds float, ptr %342, i64 %idxprom415
  %346 = load float, ptr %arrayidx416, align 4, !tbaa !10
  store float %346, ptr %h11, align 4, !tbaa !10
  %347 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %348 = load i32, ptr %i__, align 4, !tbaa !8
  %349 = load i32, ptr %i__, align 4, !tbaa !8
  %sub417 = sub nsw i32 %349, 1
  %350 = load i32, ptr %h_dim1, align 4, !tbaa !8
  %mul418 = mul nsw i32 %sub417, %350
  %add419 = add nsw i32 %348, %mul418
  %idxprom420 = sext i32 %add419 to i64
  %arrayidx421 = getelementptr inbounds float, ptr %347, i64 %idxprom420
  %351 = load float, ptr %arrayidx421, align 4, !tbaa !10
  store float %351, ptr %h21, align 4, !tbaa !10
  %352 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %353 = load i32, ptr %i__, align 4, !tbaa !8
  %sub422 = sub nsw i32 %353, 1
  %354 = load i32, ptr %i__, align 4, !tbaa !8
  %355 = load i32, ptr %h_dim1, align 4, !tbaa !8
  %mul423 = mul nsw i32 %354, %355
  %add424 = add nsw i32 %sub422, %mul423
  %idxprom425 = sext i32 %add424 to i64
  %arrayidx426 = getelementptr inbounds float, ptr %352, i64 %idxprom425
  %356 = load float, ptr %arrayidx426, align 4, !tbaa !10
  store float %356, ptr %h12, align 4, !tbaa !10
  %357 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %358 = load i32, ptr %i__, align 4, !tbaa !8
  %359 = load i32, ptr %i__, align 4, !tbaa !8
  %360 = load i32, ptr %h_dim1, align 4, !tbaa !8
  %mul427 = mul nsw i32 %359, %360
  %add428 = add nsw i32 %358, %mul427
  %idxprom429 = sext i32 %add428 to i64
  %arrayidx430 = getelementptr inbounds float, ptr %357, i64 %idxprom429
  %361 = load float, ptr %arrayidx430, align 4, !tbaa !10
  store float %361, ptr %h22, align 4, !tbaa !10
  br label %if.end431

if.end431:                                        ; preds = %if.else410, %cond.end401
  br label %if.end432

if.end432:                                        ; preds = %if.end431, %cond.end365
  %362 = load float, ptr %h11, align 4, !tbaa !10
  %cmp433 = fcmp oge float %362, 0.000000e+00
  br i1 %cmp433, label %cond.true435, label %cond.false436

cond.true435:                                     ; preds = %if.end432
  %363 = load float, ptr %h11, align 4, !tbaa !10
  br label %cond.end438

cond.false436:                                    ; preds = %if.end432
  %364 = load float, ptr %h11, align 4, !tbaa !10
  %fneg437 = fneg float %364
  br label %cond.end438

cond.end438:                                      ; preds = %cond.false436, %cond.true435
  %cond439 = phi float [ %363, %cond.true435 ], [ %fneg437, %cond.false436 ]
  %365 = load float, ptr %h12, align 4, !tbaa !10
  %cmp440 = fcmp oge float %365, 0.000000e+00
  br i1 %cmp440, label %cond.true442, label %cond.false443

cond.true442:                                     ; preds = %cond.end438
  %366 = load float, ptr %h12, align 4, !tbaa !10
  br label %cond.end445

cond.false443:                                    ; preds = %cond.end438
  %367 = load float, ptr %h12, align 4, !tbaa !10
  %fneg444 = fneg float %367
  br label %cond.end445

cond.end445:                                      ; preds = %cond.false443, %cond.true442
  %cond446 = phi float [ %366, %cond.true442 ], [ %fneg444, %cond.false443 ]
  %add447 = fadd float %cond439, %cond446
  %368 = load float, ptr %h21, align 4, !tbaa !10
  %cmp448 = fcmp oge float %368, 0.000000e+00
  br i1 %cmp448, label %cond.true450, label %cond.false451

cond.true450:                                     ; preds = %cond.end445
  %369 = load float, ptr %h21, align 4, !tbaa !10
  br label %cond.end453

cond.false451:                                    ; preds = %cond.end445
  %370 = load float, ptr %h21, align 4, !tbaa !10
  %fneg452 = fneg float %370
  br label %cond.end453

cond.end453:                                      ; preds = %cond.false451, %cond.true450
  %cond454 = phi float [ %369, %cond.true450 ], [ %fneg452, %cond.false451 ]
  %add455 = fadd float %add447, %cond454
  %371 = load float, ptr %h22, align 4, !tbaa !10
  %cmp456 = fcmp oge float %371, 0.000000e+00
  br i1 %cmp456, label %cond.true458, label %cond.false459

cond.true458:                                     ; preds = %cond.end453
  %372 = load float, ptr %h22, align 4, !tbaa !10
  br label %cond.end461

cond.false459:                                    ; preds = %cond.end453
  %373 = load float, ptr %h22, align 4, !tbaa !10
  %fneg460 = fneg float %373
  br label %cond.end461

cond.end461:                                      ; preds = %cond.false459, %cond.true458
  %cond462 = phi float [ %372, %cond.true458 ], [ %fneg460, %cond.false459 ]
  %add463 = fadd float %add455, %cond462
  store float %add463, ptr %s, align 4, !tbaa !10
  %374 = load float, ptr %s, align 4, !tbaa !10
  %cmp464 = fcmp oeq float %374, 0.000000e+00
  br i1 %cmp464, label %if.then466, label %if.else467

if.then466:                                       ; preds = %cond.end461
  store float 0.000000e+00, ptr %rt1r, align 4, !tbaa !10
  store float 0.000000e+00, ptr %rt1i, align 4, !tbaa !10
  store float 0.000000e+00, ptr %rt2r, align 4, !tbaa !10
  store float 0.000000e+00, ptr %rt2i, align 4, !tbaa !10
  br label %if.end521

if.else467:                                       ; preds = %cond.end461
  %375 = load float, ptr %s, align 4, !tbaa !10
  %376 = load float, ptr %h11, align 4, !tbaa !10
  %div468 = fdiv float %376, %375
  store float %div468, ptr %h11, align 4, !tbaa !10
  %377 = load float, ptr %s, align 4, !tbaa !10
  %378 = load float, ptr %h21, align 4, !tbaa !10
  %div469 = fdiv float %378, %377
  store float %div469, ptr %h21, align 4, !tbaa !10
  %379 = load float, ptr %s, align 4, !tbaa !10
  %380 = load float, ptr %h12, align 4, !tbaa !10
  %div470 = fdiv float %380, %379
  store float %div470, ptr %h12, align 4, !tbaa !10
  %381 = load float, ptr %s, align 4, !tbaa !10
  %382 = load float, ptr %h22, align 4, !tbaa !10
  %div471 = fdiv float %382, %381
  store float %div471, ptr %h22, align 4, !tbaa !10
  %383 = load float, ptr %h11, align 4, !tbaa !10
  %384 = load float, ptr %h22, align 4, !tbaa !10
  %add472 = fadd float %383, %384
  %div473 = fdiv float %add472, 2.000000e+00
  store float %div473, ptr %tr, align 4, !tbaa !10
  %385 = load float, ptr %h11, align 4, !tbaa !10
  %386 = load float, ptr %tr, align 4, !tbaa !10
  %sub474 = fsub float %385, %386
  %387 = load float, ptr %h22, align 4, !tbaa !10
  %388 = load float, ptr %tr, align 4, !tbaa !10
  %sub475 = fsub float %387, %388
  %389 = load float, ptr %h12, align 4, !tbaa !10
  %390 = load float, ptr %h21, align 4, !tbaa !10
  %mul477 = fmul float %389, %390
  %neg = fneg float %mul477
  %391 = call float @llvm.fmuladd.f32(float %sub474, float %sub475, float %neg)
  store float %391, ptr %det, align 4, !tbaa !10
  %392 = load float, ptr %det, align 4, !tbaa !10
  %cmp478 = fcmp oge float %392, 0.000000e+00
  br i1 %cmp478, label %cond.true480, label %cond.false481

cond.true480:                                     ; preds = %if.else467
  %393 = load float, ptr %det, align 4, !tbaa !10
  br label %cond.end483

cond.false481:                                    ; preds = %if.else467
  %394 = load float, ptr %det, align 4, !tbaa !10
  %fneg482 = fneg float %394
  br label %cond.end483

cond.end483:                                      ; preds = %cond.false481, %cond.true480
  %cond484 = phi float [ %393, %cond.true480 ], [ %fneg482, %cond.false481 ]
  %conv485 = fpext float %cond484 to double
  %call486 = call double @sqrt(double noundef %conv485) #5
  %conv487 = fptrunc double %call486 to float
  store float %conv487, ptr %rtdisc, align 4, !tbaa !10
  %395 = load float, ptr %det, align 4, !tbaa !10
  %cmp488 = fcmp oge float %395, 0.000000e+00
  br i1 %cmp488, label %if.then490, label %if.else494

if.then490:                                       ; preds = %cond.end483
  %396 = load float, ptr %tr, align 4, !tbaa !10
  %397 = load float, ptr %s, align 4, !tbaa !10
  %mul491 = fmul float %396, %397
  store float %mul491, ptr %rt1r, align 4, !tbaa !10
  %398 = load float, ptr %rt1r, align 4, !tbaa !10
  store float %398, ptr %rt2r, align 4, !tbaa !10
  %399 = load float, ptr %rtdisc, align 4, !tbaa !10
  %400 = load float, ptr %s, align 4, !tbaa !10
  %mul492 = fmul float %399, %400
  store float %mul492, ptr %rt1i, align 4, !tbaa !10
  %401 = load float, ptr %rt1i, align 4, !tbaa !10
  %fneg493 = fneg float %401
  store float %fneg493, ptr %rt2i, align 4, !tbaa !10
  br label %if.end520

if.else494:                                       ; preds = %cond.end483
  %402 = load float, ptr %tr, align 4, !tbaa !10
  %403 = load float, ptr %rtdisc, align 4, !tbaa !10
  %add495 = fadd float %402, %403
  store float %add495, ptr %rt1r, align 4, !tbaa !10
  %404 = load float, ptr %tr, align 4, !tbaa !10
  %405 = load float, ptr %rtdisc, align 4, !tbaa !10
  %sub496 = fsub float %404, %405
  store float %sub496, ptr %rt2r, align 4, !tbaa !10
  %406 = load float, ptr %rt1r, align 4, !tbaa !10
  %407 = load float, ptr %h22, align 4, !tbaa !10
  %sub497 = fsub float %406, %407
  store float %sub497, ptr %r__1, align 4, !tbaa !10
  %408 = load float, ptr %r__1, align 4, !tbaa !10
  %cmp498 = fcmp oge float %408, 0.000000e+00
  br i1 %cmp498, label %cond.true500, label %cond.false501

cond.true500:                                     ; preds = %if.else494
  %409 = load float, ptr %r__1, align 4, !tbaa !10
  br label %cond.end503

cond.false501:                                    ; preds = %if.else494
  %410 = load float, ptr %r__1, align 4, !tbaa !10
  %fneg502 = fneg float %410
  br label %cond.end503

cond.end503:                                      ; preds = %cond.false501, %cond.true500
  %cond504 = phi float [ %409, %cond.true500 ], [ %fneg502, %cond.false501 ]
  %411 = load float, ptr %rt2r, align 4, !tbaa !10
  %412 = load float, ptr %h22, align 4, !tbaa !10
  %sub505 = fsub float %411, %412
  store float %sub505, ptr %r__2, align 4, !tbaa !10
  %413 = load float, ptr %r__2, align 4, !tbaa !10
  %cmp506 = fcmp oge float %413, 0.000000e+00
  br i1 %cmp506, label %cond.true508, label %cond.false509

cond.true508:                                     ; preds = %cond.end503
  %414 = load float, ptr %r__2, align 4, !tbaa !10
  br label %cond.end511

cond.false509:                                    ; preds = %cond.end503
  %415 = load float, ptr %r__2, align 4, !tbaa !10
  %fneg510 = fneg float %415
  br label %cond.end511

cond.end511:                                      ; preds = %cond.false509, %cond.true508
  %cond512 = phi float [ %414, %cond.true508 ], [ %fneg510, %cond.false509 ]
  %cmp513 = fcmp ole float %cond504, %cond512
  br i1 %cmp513, label %if.then515, label %if.else517

if.then515:                                       ; preds = %cond.end511
  %416 = load float, ptr %s, align 4, !tbaa !10
  %417 = load float, ptr %rt1r, align 4, !tbaa !10
  %mul516 = fmul float %417, %416
  store float %mul516, ptr %rt1r, align 4, !tbaa !10
  %418 = load float, ptr %rt1r, align 4, !tbaa !10
  store float %418, ptr %rt2r, align 4, !tbaa !10
  br label %if.end519

if.else517:                                       ; preds = %cond.end511
  %419 = load float, ptr %s, align 4, !tbaa !10
  %420 = load float, ptr %rt2r, align 4, !tbaa !10
  %mul518 = fmul float %420, %419
  store float %mul518, ptr %rt2r, align 4, !tbaa !10
  %421 = load float, ptr %rt2r, align 4, !tbaa !10
  store float %421, ptr %rt1r, align 4, !tbaa !10
  br label %if.end519

if.end519:                                        ; preds = %if.else517, %if.then515
  store float 0.000000e+00, ptr %rt1i, align 4, !tbaa !10
  store float 0.000000e+00, ptr %rt2i, align 4, !tbaa !10
  br label %if.end520

if.end520:                                        ; preds = %if.end519, %if.then490
  br label %if.end521

if.end521:                                        ; preds = %if.end520, %if.then466
  %422 = load i32, ptr %l, align 4, !tbaa !8
  store i32 %422, ptr %i__2, align 4, !tbaa !8
  %423 = load i32, ptr %i__, align 4, !tbaa !8
  %sub522 = sub nsw i32 %423, 2
  store i32 %sub522, ptr %m, align 4, !tbaa !8
  br label %for.cond523

for.cond523:                                      ; preds = %for.inc742, %if.end521
  %424 = load i32, ptr %m, align 4, !tbaa !8
  %425 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp524 = icmp sge i32 %424, %425
  br i1 %cmp524, label %for.body526, label %for.end744

for.body526:                                      ; preds = %for.cond523
  %426 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %427 = load i32, ptr %m, align 4, !tbaa !8
  %add527 = add nsw i32 %427, 1
  %428 = load i32, ptr %m, align 4, !tbaa !8
  %429 = load i32, ptr %h_dim1, align 4, !tbaa !8
  %mul528 = mul nsw i32 %428, %429
  %add529 = add nsw i32 %add527, %mul528
  %idxprom530 = sext i32 %add529 to i64
  %arrayidx531 = getelementptr inbounds float, ptr %426, i64 %idxprom530
  %430 = load float, ptr %arrayidx531, align 4, !tbaa !10
  store float %430, ptr %h21s, align 4, !tbaa !10
  %431 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %432 = load i32, ptr %m, align 4, !tbaa !8
  %433 = load i32, ptr %m, align 4, !tbaa !8
  %434 = load i32, ptr %h_dim1, align 4, !tbaa !8
  %mul532 = mul nsw i32 %433, %434
  %add533 = add nsw i32 %432, %mul532
  %idxprom534 = sext i32 %add533 to i64
  %arrayidx535 = getelementptr inbounds float, ptr %431, i64 %idxprom534
  %435 = load float, ptr %arrayidx535, align 4, !tbaa !10
  %436 = load float, ptr %rt2r, align 4, !tbaa !10
  %sub536 = fsub float %435, %436
  store float %sub536, ptr %r__1, align 4, !tbaa !10
  %437 = load float, ptr %r__1, align 4, !tbaa !10
  %cmp537 = fcmp oge float %437, 0.000000e+00
  br i1 %cmp537, label %cond.true539, label %cond.false540

cond.true539:                                     ; preds = %for.body526
  %438 = load float, ptr %r__1, align 4, !tbaa !10
  br label %cond.end542

cond.false540:                                    ; preds = %for.body526
  %439 = load float, ptr %r__1, align 4, !tbaa !10
  %fneg541 = fneg float %439
  br label %cond.end542

cond.end542:                                      ; preds = %cond.false540, %cond.true539
  %cond543 = phi float [ %438, %cond.true539 ], [ %fneg541, %cond.false540 ]
  %440 = load float, ptr %rt2i, align 4, !tbaa !10
  %cmp544 = fcmp oge float %440, 0.000000e+00
  br i1 %cmp544, label %cond.true546, label %cond.false547

cond.true546:                                     ; preds = %cond.end542
  %441 = load float, ptr %rt2i, align 4, !tbaa !10
  br label %cond.end549

cond.false547:                                    ; preds = %cond.end542
  %442 = load float, ptr %rt2i, align 4, !tbaa !10
  %fneg548 = fneg float %442
  br label %cond.end549

cond.end549:                                      ; preds = %cond.false547, %cond.true546
  %cond550 = phi float [ %441, %cond.true546 ], [ %fneg548, %cond.false547 ]
  %add551 = fadd float %cond543, %cond550
  %443 = load float, ptr %h21s, align 4, !tbaa !10
  %cmp552 = fcmp oge float %443, 0.000000e+00
  br i1 %cmp552, label %cond.true554, label %cond.false555

cond.true554:                                     ; preds = %cond.end549
  %444 = load float, ptr %h21s, align 4, !tbaa !10
  br label %cond.end557

cond.false555:                                    ; preds = %cond.end549
  %445 = load float, ptr %h21s, align 4, !tbaa !10
  %fneg556 = fneg float %445
  br label %cond.end557

cond.end557:                                      ; preds = %cond.false555, %cond.true554
  %cond558 = phi float [ %444, %cond.true554 ], [ %fneg556, %cond.false555 ]
  %add559 = fadd float %add551, %cond558
  store float %add559, ptr %s, align 4, !tbaa !10
  %446 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %447 = load i32, ptr %m, align 4, !tbaa !8
  %add560 = add nsw i32 %447, 1
  %448 = load i32, ptr %m, align 4, !tbaa !8
  %449 = load i32, ptr %h_dim1, align 4, !tbaa !8
  %mul561 = mul nsw i32 %448, %449
  %add562 = add nsw i32 %add560, %mul561
  %idxprom563 = sext i32 %add562 to i64
  %arrayidx564 = getelementptr inbounds float, ptr %446, i64 %idxprom563
  %450 = load float, ptr %arrayidx564, align 4, !tbaa !10
  %451 = load float, ptr %s, align 4, !tbaa !10
  %div565 = fdiv float %450, %451
  store float %div565, ptr %h21s, align 4, !tbaa !10
  %452 = load float, ptr %h21s, align 4, !tbaa !10
  %453 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %454 = load i32, ptr %m, align 4, !tbaa !8
  %455 = load i32, ptr %m, align 4, !tbaa !8
  %add566 = add nsw i32 %455, 1
  %456 = load i32, ptr %h_dim1, align 4, !tbaa !8
  %mul567 = mul nsw i32 %add566, %456
  %add568 = add nsw i32 %454, %mul567
  %idxprom569 = sext i32 %add568 to i64
  %arrayidx570 = getelementptr inbounds float, ptr %453, i64 %idxprom569
  %457 = load float, ptr %arrayidx570, align 4, !tbaa !10
  %458 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %459 = load i32, ptr %m, align 4, !tbaa !8
  %460 = load i32, ptr %m, align 4, !tbaa !8
  %461 = load i32, ptr %h_dim1, align 4, !tbaa !8
  %mul572 = mul nsw i32 %460, %461
  %add573 = add nsw i32 %459, %mul572
  %idxprom574 = sext i32 %add573 to i64
  %arrayidx575 = getelementptr inbounds float, ptr %458, i64 %idxprom574
  %462 = load float, ptr %arrayidx575, align 4, !tbaa !10
  %463 = load float, ptr %rt1r, align 4, !tbaa !10
  %sub576 = fsub float %462, %463
  %464 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %465 = load i32, ptr %m, align 4, !tbaa !8
  %466 = load i32, ptr %m, align 4, !tbaa !8
  %467 = load i32, ptr %h_dim1, align 4, !tbaa !8
  %mul577 = mul nsw i32 %466, %467
  %add578 = add nsw i32 %465, %mul577
  %idxprom579 = sext i32 %add578 to i64
  %arrayidx580 = getelementptr inbounds float, ptr %464, i64 %idxprom579
  %468 = load float, ptr %arrayidx580, align 4, !tbaa !10
  %469 = load float, ptr %rt2r, align 4, !tbaa !10
  %sub581 = fsub float %468, %469
  %470 = load float, ptr %s, align 4, !tbaa !10
  %div582 = fdiv float %sub581, %470
  %mul583 = fmul float %sub576, %div582
  %471 = call float @llvm.fmuladd.f32(float %452, float %457, float %mul583)
  %472 = load float, ptr %rt1i, align 4, !tbaa !10
  %473 = load float, ptr %rt2i, align 4, !tbaa !10
  %474 = load float, ptr %s, align 4, !tbaa !10
  %div584 = fdiv float %473, %474
  %neg586 = fneg float %472
  %475 = call float @llvm.fmuladd.f32(float %neg586, float %div584, float %471)
  %arrayidx587 = getelementptr inbounds [3 x float], ptr %v, i64 0, i64 0
  store float %475, ptr %arrayidx587, align 4, !tbaa !10
  %476 = load float, ptr %h21s, align 4, !tbaa !10
  %477 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %478 = load i32, ptr %m, align 4, !tbaa !8
  %479 = load i32, ptr %m, align 4, !tbaa !8
  %480 = load i32, ptr %h_dim1, align 4, !tbaa !8
  %mul588 = mul nsw i32 %479, %480
  %add589 = add nsw i32 %478, %mul588
  %idxprom590 = sext i32 %add589 to i64
  %arrayidx591 = getelementptr inbounds float, ptr %477, i64 %idxprom590
  %481 = load float, ptr %arrayidx591, align 4, !tbaa !10
  %482 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %483 = load i32, ptr %m, align 4, !tbaa !8
  %add592 = add nsw i32 %483, 1
  %484 = load i32, ptr %m, align 4, !tbaa !8
  %add593 = add nsw i32 %484, 1
  %485 = load i32, ptr %h_dim1, align 4, !tbaa !8
  %mul594 = mul nsw i32 %add593, %485
  %add595 = add nsw i32 %add592, %mul594
  %idxprom596 = sext i32 %add595 to i64
  %arrayidx597 = getelementptr inbounds float, ptr %482, i64 %idxprom596
  %486 = load float, ptr %arrayidx597, align 4, !tbaa !10
  %add598 = fadd float %481, %486
  %487 = load float, ptr %rt1r, align 4, !tbaa !10
  %sub599 = fsub float %add598, %487
  %488 = load float, ptr %rt2r, align 4, !tbaa !10
  %sub600 = fsub float %sub599, %488
  %mul601 = fmul float %476, %sub600
  %arrayidx602 = getelementptr inbounds [3 x float], ptr %v, i64 0, i64 1
  store float %mul601, ptr %arrayidx602, align 4, !tbaa !10
  %489 = load float, ptr %h21s, align 4, !tbaa !10
  %490 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %491 = load i32, ptr %m, align 4, !tbaa !8
  %add603 = add nsw i32 %491, 2
  %492 = load i32, ptr %m, align 4, !tbaa !8
  %add604 = add nsw i32 %492, 1
  %493 = load i32, ptr %h_dim1, align 4, !tbaa !8
  %mul605 = mul nsw i32 %add604, %493
  %add606 = add nsw i32 %add603, %mul605
  %idxprom607 = sext i32 %add606 to i64
  %arrayidx608 = getelementptr inbounds float, ptr %490, i64 %idxprom607
  %494 = load float, ptr %arrayidx608, align 4, !tbaa !10
  %mul609 = fmul float %489, %494
  %arrayidx610 = getelementptr inbounds [3 x float], ptr %v, i64 0, i64 2
  store float %mul609, ptr %arrayidx610, align 4, !tbaa !10
  %arrayidx611 = getelementptr inbounds [3 x float], ptr %v, i64 0, i64 0
  %495 = load float, ptr %arrayidx611, align 4, !tbaa !10
  %cmp612 = fcmp oge float %495, 0.000000e+00
  br i1 %cmp612, label %cond.true614, label %cond.false616

cond.true614:                                     ; preds = %cond.end557
  %arrayidx615 = getelementptr inbounds [3 x float], ptr %v, i64 0, i64 0
  %496 = load float, ptr %arrayidx615, align 4, !tbaa !10
  br label %cond.end619

cond.false616:                                    ; preds = %cond.end557
  %arrayidx617 = getelementptr inbounds [3 x float], ptr %v, i64 0, i64 0
  %497 = load float, ptr %arrayidx617, align 4, !tbaa !10
  %fneg618 = fneg float %497
  br label %cond.end619

cond.end619:                                      ; preds = %cond.false616, %cond.true614
  %cond620 = phi float [ %496, %cond.true614 ], [ %fneg618, %cond.false616 ]
  %arrayidx621 = getelementptr inbounds [3 x float], ptr %v, i64 0, i64 1
  %498 = load float, ptr %arrayidx621, align 4, !tbaa !10
  %cmp622 = fcmp oge float %498, 0.000000e+00
  br i1 %cmp622, label %cond.true624, label %cond.false626

cond.true624:                                     ; preds = %cond.end619
  %arrayidx625 = getelementptr inbounds [3 x float], ptr %v, i64 0, i64 1
  %499 = load float, ptr %arrayidx625, align 4, !tbaa !10
  br label %cond.end629

cond.false626:                                    ; preds = %cond.end619
  %arrayidx627 = getelementptr inbounds [3 x float], ptr %v, i64 0, i64 1
  %500 = load float, ptr %arrayidx627, align 4, !tbaa !10
  %fneg628 = fneg float %500
  br label %cond.end629

cond.end629:                                      ; preds = %cond.false626, %cond.true624
  %cond630 = phi float [ %499, %cond.true624 ], [ %fneg628, %cond.false626 ]
  %add631 = fadd float %cond620, %cond630
  %arrayidx632 = getelementptr inbounds [3 x float], ptr %v, i64 0, i64 2
  %501 = load float, ptr %arrayidx632, align 4, !tbaa !10
  %cmp633 = fcmp oge float %501, 0.000000e+00
  br i1 %cmp633, label %cond.true635, label %cond.false637

cond.true635:                                     ; preds = %cond.end629
  %arrayidx636 = getelementptr inbounds [3 x float], ptr %v, i64 0, i64 2
  %502 = load float, ptr %arrayidx636, align 4, !tbaa !10
  br label %cond.end640

cond.false637:                                    ; preds = %cond.end629
  %arrayidx638 = getelementptr inbounds [3 x float], ptr %v, i64 0, i64 2
  %503 = load float, ptr %arrayidx638, align 4, !tbaa !10
  %fneg639 = fneg float %503
  br label %cond.end640

cond.end640:                                      ; preds = %cond.false637, %cond.true635
  %cond641 = phi float [ %502, %cond.true635 ], [ %fneg639, %cond.false637 ]
  %add642 = fadd float %add631, %cond641
  store float %add642, ptr %s, align 4, !tbaa !10
  %504 = load float, ptr %s, align 4, !tbaa !10
  %arrayidx643 = getelementptr inbounds [3 x float], ptr %v, i64 0, i64 0
  %505 = load float, ptr %arrayidx643, align 4, !tbaa !10
  %div644 = fdiv float %505, %504
  store float %div644, ptr %arrayidx643, align 4, !tbaa !10
  %506 = load float, ptr %s, align 4, !tbaa !10
  %arrayidx645 = getelementptr inbounds [3 x float], ptr %v, i64 0, i64 1
  %507 = load float, ptr %arrayidx645, align 4, !tbaa !10
  %div646 = fdiv float %507, %506
  store float %div646, ptr %arrayidx645, align 4, !tbaa !10
  %508 = load float, ptr %s, align 4, !tbaa !10
  %arrayidx647 = getelementptr inbounds [3 x float], ptr %v, i64 0, i64 2
  %509 = load float, ptr %arrayidx647, align 4, !tbaa !10
  %div648 = fdiv float %509, %508
  store float %div648, ptr %arrayidx647, align 4, !tbaa !10
  %510 = load i32, ptr %m, align 4, !tbaa !8
  %511 = load i32, ptr %l, align 4, !tbaa !8
  %cmp649 = icmp eq i32 %510, %511
  br i1 %cmp649, label %if.then651, label %if.end652

if.then651:                                       ; preds = %cond.end640
  br label %L60

if.end652:                                        ; preds = %cond.end640
  %512 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %513 = load i32, ptr %m, align 4, !tbaa !8
  %514 = load i32, ptr %m, align 4, !tbaa !8
  %sub653 = sub nsw i32 %514, 1
  %515 = load i32, ptr %h_dim1, align 4, !tbaa !8
  %mul654 = mul nsw i32 %sub653, %515
  %add655 = add nsw i32 %513, %mul654
  %idxprom656 = sext i32 %add655 to i64
  %arrayidx657 = getelementptr inbounds float, ptr %512, i64 %idxprom656
  %516 = load float, ptr %arrayidx657, align 4, !tbaa !10
  store float %516, ptr %r__1, align 4, !tbaa !10
  %517 = load float, ptr %r__1, align 4, !tbaa !10
  %cmp658 = fcmp oge float %517, 0.000000e+00
  br i1 %cmp658, label %cond.true660, label %cond.false661

cond.true660:                                     ; preds = %if.end652
  %518 = load float, ptr %r__1, align 4, !tbaa !10
  br label %cond.end663

cond.false661:                                    ; preds = %if.end652
  %519 = load float, ptr %r__1, align 4, !tbaa !10
  %fneg662 = fneg float %519
  br label %cond.end663

cond.end663:                                      ; preds = %cond.false661, %cond.true660
  %cond664 = phi float [ %518, %cond.true660 ], [ %fneg662, %cond.false661 ]
  %arrayidx665 = getelementptr inbounds [3 x float], ptr %v, i64 0, i64 1
  %520 = load float, ptr %arrayidx665, align 4, !tbaa !10
  %cmp666 = fcmp oge float %520, 0.000000e+00
  br i1 %cmp666, label %cond.true668, label %cond.false670

cond.true668:                                     ; preds = %cond.end663
  %arrayidx669 = getelementptr inbounds [3 x float], ptr %v, i64 0, i64 1
  %521 = load float, ptr %arrayidx669, align 4, !tbaa !10
  br label %cond.end673

cond.false670:                                    ; preds = %cond.end663
  %arrayidx671 = getelementptr inbounds [3 x float], ptr %v, i64 0, i64 1
  %522 = load float, ptr %arrayidx671, align 4, !tbaa !10
  %fneg672 = fneg float %522
  br label %cond.end673

cond.end673:                                      ; preds = %cond.false670, %cond.true668
  %cond674 = phi float [ %521, %cond.true668 ], [ %fneg672, %cond.false670 ]
  %arrayidx675 = getelementptr inbounds [3 x float], ptr %v, i64 0, i64 2
  %523 = load float, ptr %arrayidx675, align 4, !tbaa !10
  %cmp676 = fcmp oge float %523, 0.000000e+00
  br i1 %cmp676, label %cond.true678, label %cond.false680

cond.true678:                                     ; preds = %cond.end673
  %arrayidx679 = getelementptr inbounds [3 x float], ptr %v, i64 0, i64 2
  %524 = load float, ptr %arrayidx679, align 4, !tbaa !10
  br label %cond.end683

cond.false680:                                    ; preds = %cond.end673
  %arrayidx681 = getelementptr inbounds [3 x float], ptr %v, i64 0, i64 2
  %525 = load float, ptr %arrayidx681, align 4, !tbaa !10
  %fneg682 = fneg float %525
  br label %cond.end683

cond.end683:                                      ; preds = %cond.false680, %cond.true678
  %cond684 = phi float [ %524, %cond.true678 ], [ %fneg682, %cond.false680 ]
  %add685 = fadd float %cond674, %cond684
  %mul686 = fmul float %cond664, %add685
  %526 = load float, ptr %ulp, align 4, !tbaa !10
  %arrayidx687 = getelementptr inbounds [3 x float], ptr %v, i64 0, i64 0
  %527 = load float, ptr %arrayidx687, align 4, !tbaa !10
  %cmp688 = fcmp oge float %527, 0.000000e+00
  br i1 %cmp688, label %cond.true690, label %cond.false692

cond.true690:                                     ; preds = %cond.end683
  %arrayidx691 = getelementptr inbounds [3 x float], ptr %v, i64 0, i64 0
  %528 = load float, ptr %arrayidx691, align 4, !tbaa !10
  br label %cond.end695

cond.false692:                                    ; preds = %cond.end683
  %arrayidx693 = getelementptr inbounds [3 x float], ptr %v, i64 0, i64 0
  %529 = load float, ptr %arrayidx693, align 4, !tbaa !10
  %fneg694 = fneg float %529
  br label %cond.end695

cond.end695:                                      ; preds = %cond.false692, %cond.true690
  %cond696 = phi float [ %528, %cond.true690 ], [ %fneg694, %cond.false692 ]
  %mul697 = fmul float %526, %cond696
  %530 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %531 = load i32, ptr %m, align 4, !tbaa !8
  %sub698 = sub nsw i32 %531, 1
  %532 = load i32, ptr %m, align 4, !tbaa !8
  %sub699 = sub nsw i32 %532, 1
  %533 = load i32, ptr %h_dim1, align 4, !tbaa !8
  %mul700 = mul nsw i32 %sub699, %533
  %add701 = add nsw i32 %sub698, %mul700
  %idxprom702 = sext i32 %add701 to i64
  %arrayidx703 = getelementptr inbounds float, ptr %530, i64 %idxprom702
  %534 = load float, ptr %arrayidx703, align 4, !tbaa !10
  store float %534, ptr %r__2, align 4, !tbaa !10
  %535 = load float, ptr %r__2, align 4, !tbaa !10
  %cmp704 = fcmp oge float %535, 0.000000e+00
  br i1 %cmp704, label %cond.true706, label %cond.false707

cond.true706:                                     ; preds = %cond.end695
  %536 = load float, ptr %r__2, align 4, !tbaa !10
  br label %cond.end709

cond.false707:                                    ; preds = %cond.end695
  %537 = load float, ptr %r__2, align 4, !tbaa !10
  %fneg708 = fneg float %537
  br label %cond.end709

cond.end709:                                      ; preds = %cond.false707, %cond.true706
  %cond710 = phi float [ %536, %cond.true706 ], [ %fneg708, %cond.false707 ]
  %538 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %539 = load i32, ptr %m, align 4, !tbaa !8
  %540 = load i32, ptr %m, align 4, !tbaa !8
  %541 = load i32, ptr %h_dim1, align 4, !tbaa !8
  %mul711 = mul nsw i32 %540, %541
  %add712 = add nsw i32 %539, %mul711
  %idxprom713 = sext i32 %add712 to i64
  %arrayidx714 = getelementptr inbounds float, ptr %538, i64 %idxprom713
  %542 = load float, ptr %arrayidx714, align 4, !tbaa !10
  store float %542, ptr %r__3, align 4, !tbaa !10
  %543 = load float, ptr %r__3, align 4, !tbaa !10
  %cmp715 = fcmp oge float %543, 0.000000e+00
  br i1 %cmp715, label %cond.true717, label %cond.false718

cond.true717:                                     ; preds = %cond.end709
  %544 = load float, ptr %r__3, align 4, !tbaa !10
  br label %cond.end720

cond.false718:                                    ; preds = %cond.end709
  %545 = load float, ptr %r__3, align 4, !tbaa !10
  %fneg719 = fneg float %545
  br label %cond.end720

cond.end720:                                      ; preds = %cond.false718, %cond.true717
  %cond721 = phi float [ %544, %cond.true717 ], [ %fneg719, %cond.false718 ]
  %add722 = fadd float %cond710, %cond721
  %546 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %547 = load i32, ptr %m, align 4, !tbaa !8
  %add723 = add nsw i32 %547, 1
  %548 = load i32, ptr %m, align 4, !tbaa !8
  %add724 = add nsw i32 %548, 1
  %549 = load i32, ptr %h_dim1, align 4, !tbaa !8
  %mul725 = mul nsw i32 %add724, %549
  %add726 = add nsw i32 %add723, %mul725
  %idxprom727 = sext i32 %add726 to i64
  %arrayidx728 = getelementptr inbounds float, ptr %546, i64 %idxprom727
  %550 = load float, ptr %arrayidx728, align 4, !tbaa !10
  store float %550, ptr %r__4, align 4, !tbaa !10
  %551 = load float, ptr %r__4, align 4, !tbaa !10
  %cmp729 = fcmp oge float %551, 0.000000e+00
  br i1 %cmp729, label %cond.true731, label %cond.false732

cond.true731:                                     ; preds = %cond.end720
  %552 = load float, ptr %r__4, align 4, !tbaa !10
  br label %cond.end734

cond.false732:                                    ; preds = %cond.end720
  %553 = load float, ptr %r__4, align 4, !tbaa !10
  %fneg733 = fneg float %553
  br label %cond.end734

cond.end734:                                      ; preds = %cond.false732, %cond.true731
  %cond735 = phi float [ %552, %cond.true731 ], [ %fneg733, %cond.false732 ]
  %add736 = fadd float %add722, %cond735
  %mul737 = fmul float %mul697, %add736
  %cmp738 = fcmp ole float %mul686, %mul737
  br i1 %cmp738, label %if.then740, label %if.end741

if.then740:                                       ; preds = %cond.end734
  br label %L60

if.end741:                                        ; preds = %cond.end734
  br label %for.inc742

for.inc742:                                       ; preds = %if.end741
  %554 = load i32, ptr %m, align 4, !tbaa !8
  %dec743 = add nsw i32 %554, -1
  store i32 %dec743, ptr %m, align 4, !tbaa !8
  br label %for.cond523, !llvm.loop !15

for.end744:                                       ; preds = %for.cond523
  br label %L60

L60:                                              ; preds = %for.end744, %if.then740, %if.then651
  %555 = load i32, ptr %i__, align 4, !tbaa !8
  %sub745 = sub nsw i32 %555, 1
  store i32 %sub745, ptr %i__2, align 4, !tbaa !8
  %556 = load i32, ptr %m, align 4, !tbaa !8
  store i32 %556, ptr %k, align 4, !tbaa !8
  br label %for.cond746

for.cond746:                                      ; preds = %for.inc1061, %L60
  %557 = load i32, ptr %k, align 4, !tbaa !8
  %558 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp747 = icmp sle i32 %557, %558
  br i1 %cmp747, label %for.body749, label %for.end1063

for.body749:                                      ; preds = %for.cond746
  store i32 3, ptr %i__3, align 4, !tbaa !8
  %559 = load i32, ptr %i__, align 4, !tbaa !8
  %560 = load i32, ptr %k, align 4, !tbaa !8
  %sub750 = sub nsw i32 %559, %560
  %add751 = add nsw i32 %sub750, 1
  store i32 %add751, ptr %i__4, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x752) #5
  %561 = load i32, ptr %i__3, align 4, !tbaa !8
  store i32 %561, ptr %_x752, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y753) #5
  %562 = load i32, ptr %i__4, align 4, !tbaa !8
  store i32 %562, ptr %_y753, align 4, !tbaa !8
  %563 = load i32, ptr %_x752, align 4, !tbaa !8
  %564 = load i32, ptr %_y753, align 4, !tbaa !8
  %cmp755 = icmp slt i32 %563, %564
  br i1 %cmp755, label %cond.true757, label %cond.false758

cond.true757:                                     ; preds = %for.body749
  %565 = load i32, ptr %_x752, align 4, !tbaa !8
  br label %cond.end759

cond.false758:                                    ; preds = %for.body749
  %566 = load i32, ptr %_y753, align 4, !tbaa !8
  br label %cond.end759

cond.end759:                                      ; preds = %cond.false758, %cond.true757
  %cond760 = phi i32 [ %565, %cond.true757 ], [ %566, %cond.false758 ]
  store i32 %cond760, ptr %tmp754, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y753) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x752) #5
  %567 = load i32, ptr %tmp754, align 4, !tbaa !8
  store i32 %567, ptr %nr, align 4, !tbaa !8
  %568 = load i32, ptr %k, align 4, !tbaa !8
  %569 = load i32, ptr %m, align 4, !tbaa !8
  %cmp761 = icmp sgt i32 %568, %569
  br i1 %cmp761, label %if.then763, label %if.end770

if.then763:                                       ; preds = %cond.end759
  %570 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %571 = load i32, ptr %k, align 4, !tbaa !8
  %572 = load i32, ptr %k, align 4, !tbaa !8
  %sub764 = sub nsw i32 %572, 1
  %573 = load i32, ptr %h_dim1, align 4, !tbaa !8
  %mul765 = mul nsw i32 %sub764, %573
  %add766 = add nsw i32 %571, %mul765
  %idxprom767 = sext i32 %add766 to i64
  %arrayidx768 = getelementptr inbounds float, ptr %570, i64 %idxprom767
  %arraydecay = getelementptr inbounds [3 x float], ptr %v, i64 0, i64 0
  %call769 = call i32 @scopy_(ptr noundef %nr, ptr noundef %arrayidx768, ptr noundef @c__1, ptr noundef %arraydecay, ptr noundef @c__1)
  br label %if.end770

if.end770:                                        ; preds = %if.then763, %cond.end759
  %arraydecay771 = getelementptr inbounds [3 x float], ptr %v, i64 0, i64 0
  %arrayidx772 = getelementptr inbounds [3 x float], ptr %v, i64 0, i64 1
  %call773 = call i32 @slarfg_(ptr noundef %nr, ptr noundef %arraydecay771, ptr noundef %arrayidx772, ptr noundef @c__1, ptr noundef %t1)
  %574 = load i32, ptr %k, align 4, !tbaa !8
  %575 = load i32, ptr %m, align 4, !tbaa !8
  %cmp774 = icmp sgt i32 %574, %575
  br i1 %cmp774, label %if.then776, label %if.else800

if.then776:                                       ; preds = %if.end770
  %arrayidx777 = getelementptr inbounds [3 x float], ptr %v, i64 0, i64 0
  %576 = load float, ptr %arrayidx777, align 4, !tbaa !10
  %577 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %578 = load i32, ptr %k, align 4, !tbaa !8
  %579 = load i32, ptr %k, align 4, !tbaa !8
  %sub778 = sub nsw i32 %579, 1
  %580 = load i32, ptr %h_dim1, align 4, !tbaa !8
  %mul779 = mul nsw i32 %sub778, %580
  %add780 = add nsw i32 %578, %mul779
  %idxprom781 = sext i32 %add780 to i64
  %arrayidx782 = getelementptr inbounds float, ptr %577, i64 %idxprom781
  store float %576, ptr %arrayidx782, align 4, !tbaa !10
  %581 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %582 = load i32, ptr %k, align 4, !tbaa !8
  %add783 = add nsw i32 %582, 1
  %583 = load i32, ptr %k, align 4, !tbaa !8
  %sub784 = sub nsw i32 %583, 1
  %584 = load i32, ptr %h_dim1, align 4, !tbaa !8
  %mul785 = mul nsw i32 %sub784, %584
  %add786 = add nsw i32 %add783, %mul785
  %idxprom787 = sext i32 %add786 to i64
  %arrayidx788 = getelementptr inbounds float, ptr %581, i64 %idxprom787
  store float 0.000000e+00, ptr %arrayidx788, align 4, !tbaa !10
  %585 = load i32, ptr %k, align 4, !tbaa !8
  %586 = load i32, ptr %i__, align 4, !tbaa !8
  %sub789 = sub nsw i32 %586, 1
  %cmp790 = icmp slt i32 %585, %sub789
  br i1 %cmp790, label %if.then792, label %if.end799

if.then792:                                       ; preds = %if.then776
  %587 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %588 = load i32, ptr %k, align 4, !tbaa !8
  %add793 = add nsw i32 %588, 2
  %589 = load i32, ptr %k, align 4, !tbaa !8
  %sub794 = sub nsw i32 %589, 1
  %590 = load i32, ptr %h_dim1, align 4, !tbaa !8
  %mul795 = mul nsw i32 %sub794, %590
  %add796 = add nsw i32 %add793, %mul795
  %idxprom797 = sext i32 %add796 to i64
  %arrayidx798 = getelementptr inbounds float, ptr %587, i64 %idxprom797
  store float 0.000000e+00, ptr %arrayidx798, align 4, !tbaa !10
  br label %if.end799

if.end799:                                        ; preds = %if.then792, %if.then776
  br label %if.end812

if.else800:                                       ; preds = %if.end770
  %591 = load i32, ptr %m, align 4, !tbaa !8
  %592 = load i32, ptr %l, align 4, !tbaa !8
  %cmp801 = icmp sgt i32 %591, %592
  br i1 %cmp801, label %if.then803, label %if.end811

if.then803:                                       ; preds = %if.else800
  %593 = load float, ptr %t1, align 4, !tbaa !10
  %sub804 = fsub float 1.000000e+00, %593
  %594 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %595 = load i32, ptr %k, align 4, !tbaa !8
  %596 = load i32, ptr %k, align 4, !tbaa !8
  %sub805 = sub nsw i32 %596, 1
  %597 = load i32, ptr %h_dim1, align 4, !tbaa !8
  %mul806 = mul nsw i32 %sub805, %597
  %add807 = add nsw i32 %595, %mul806
  %idxprom808 = sext i32 %add807 to i64
  %arrayidx809 = getelementptr inbounds float, ptr %594, i64 %idxprom808
  %598 = load float, ptr %arrayidx809, align 4, !tbaa !10
  %mul810 = fmul float %598, %sub804
  store float %mul810, ptr %arrayidx809, align 4, !tbaa !10
  br label %if.end811

if.end811:                                        ; preds = %if.then803, %if.else800
  br label %if.end812

if.end812:                                        ; preds = %if.end811, %if.end799
  %arrayidx813 = getelementptr inbounds [3 x float], ptr %v, i64 0, i64 1
  %599 = load float, ptr %arrayidx813, align 4, !tbaa !10
  store float %599, ptr %v2, align 4, !tbaa !10
  %600 = load float, ptr %t1, align 4, !tbaa !10
  %601 = load float, ptr %v2, align 4, !tbaa !10
  %mul814 = fmul float %600, %601
  store float %mul814, ptr %t2, align 4, !tbaa !10
  %602 = load i32, ptr %nr, align 4, !tbaa !8
  %cmp815 = icmp eq i32 %602, 3
  br i1 %cmp815, label %if.then817, label %if.else962

if.then817:                                       ; preds = %if.end812
  %arrayidx818 = getelementptr inbounds [3 x float], ptr %v, i64 0, i64 2
  %603 = load float, ptr %arrayidx818, align 4, !tbaa !10
  store float %603, ptr %v3, align 4, !tbaa !10
  %604 = load float, ptr %t1, align 4, !tbaa !10
  %605 = load float, ptr %v3, align 4, !tbaa !10
  %mul819 = fmul float %604, %605
  store float %mul819, ptr %t3, align 4, !tbaa !10
  %606 = load i32, ptr %i2, align 4, !tbaa !8
  store i32 %606, ptr %i__3, align 4, !tbaa !8
  %607 = load i32, ptr %k, align 4, !tbaa !8
  store i32 %607, ptr %j, align 4, !tbaa !8
  br label %for.cond820

for.cond820:                                      ; preds = %for.inc860, %if.then817
  %608 = load i32, ptr %j, align 4, !tbaa !8
  %609 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp821 = icmp sle i32 %608, %609
  br i1 %cmp821, label %for.body823, label %for.end862

for.body823:                                      ; preds = %for.cond820
  %610 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %611 = load i32, ptr %k, align 4, !tbaa !8
  %612 = load i32, ptr %j, align 4, !tbaa !8
  %613 = load i32, ptr %h_dim1, align 4, !tbaa !8
  %mul824 = mul nsw i32 %612, %613
  %add825 = add nsw i32 %611, %mul824
  %idxprom826 = sext i32 %add825 to i64
  %arrayidx827 = getelementptr inbounds float, ptr %610, i64 %idxprom826
  %614 = load float, ptr %arrayidx827, align 4, !tbaa !10
  %615 = load float, ptr %v2, align 4, !tbaa !10
  %616 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %617 = load i32, ptr %k, align 4, !tbaa !8
  %add828 = add nsw i32 %617, 1
  %618 = load i32, ptr %j, align 4, !tbaa !8
  %619 = load i32, ptr %h_dim1, align 4, !tbaa !8
  %mul829 = mul nsw i32 %618, %619
  %add830 = add nsw i32 %add828, %mul829
  %idxprom831 = sext i32 %add830 to i64
  %arrayidx832 = getelementptr inbounds float, ptr %616, i64 %idxprom831
  %620 = load float, ptr %arrayidx832, align 4, !tbaa !10
  %621 = call float @llvm.fmuladd.f32(float %615, float %620, float %614)
  %622 = load float, ptr %v3, align 4, !tbaa !10
  %623 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %624 = load i32, ptr %k, align 4, !tbaa !8
  %add834 = add nsw i32 %624, 2
  %625 = load i32, ptr %j, align 4, !tbaa !8
  %626 = load i32, ptr %h_dim1, align 4, !tbaa !8
  %mul835 = mul nsw i32 %625, %626
  %add836 = add nsw i32 %add834, %mul835
  %idxprom837 = sext i32 %add836 to i64
  %arrayidx838 = getelementptr inbounds float, ptr %623, i64 %idxprom837
  %627 = load float, ptr %arrayidx838, align 4, !tbaa !10
  %628 = call float @llvm.fmuladd.f32(float %622, float %627, float %621)
  store float %628, ptr %sum, align 4, !tbaa !10
  %629 = load float, ptr %sum, align 4, !tbaa !10
  %630 = load float, ptr %t1, align 4, !tbaa !10
  %631 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %632 = load i32, ptr %k, align 4, !tbaa !8
  %633 = load i32, ptr %j, align 4, !tbaa !8
  %634 = load i32, ptr %h_dim1, align 4, !tbaa !8
  %mul841 = mul nsw i32 %633, %634
  %add842 = add nsw i32 %632, %mul841
  %idxprom843 = sext i32 %add842 to i64
  %arrayidx844 = getelementptr inbounds float, ptr %631, i64 %idxprom843
  %635 = load float, ptr %arrayidx844, align 4, !tbaa !10
  %neg845 = fneg float %629
  %636 = call float @llvm.fmuladd.f32(float %neg845, float %630, float %635)
  store float %636, ptr %arrayidx844, align 4, !tbaa !10
  %637 = load float, ptr %sum, align 4, !tbaa !10
  %638 = load float, ptr %t2, align 4, !tbaa !10
  %639 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %640 = load i32, ptr %k, align 4, !tbaa !8
  %add847 = add nsw i32 %640, 1
  %641 = load i32, ptr %j, align 4, !tbaa !8
  %642 = load i32, ptr %h_dim1, align 4, !tbaa !8
  %mul848 = mul nsw i32 %641, %642
  %add849 = add nsw i32 %add847, %mul848
  %idxprom850 = sext i32 %add849 to i64
  %arrayidx851 = getelementptr inbounds float, ptr %639, i64 %idxprom850
  %643 = load float, ptr %arrayidx851, align 4, !tbaa !10
  %neg852 = fneg float %637
  %644 = call float @llvm.fmuladd.f32(float %neg852, float %638, float %643)
  store float %644, ptr %arrayidx851, align 4, !tbaa !10
  %645 = load float, ptr %sum, align 4, !tbaa !10
  %646 = load float, ptr %t3, align 4, !tbaa !10
  %647 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %648 = load i32, ptr %k, align 4, !tbaa !8
  %add854 = add nsw i32 %648, 2
  %649 = load i32, ptr %j, align 4, !tbaa !8
  %650 = load i32, ptr %h_dim1, align 4, !tbaa !8
  %mul855 = mul nsw i32 %649, %650
  %add856 = add nsw i32 %add854, %mul855
  %idxprom857 = sext i32 %add856 to i64
  %arrayidx858 = getelementptr inbounds float, ptr %647, i64 %idxprom857
  %651 = load float, ptr %arrayidx858, align 4, !tbaa !10
  %neg859 = fneg float %645
  %652 = call float @llvm.fmuladd.f32(float %neg859, float %646, float %651)
  store float %652, ptr %arrayidx858, align 4, !tbaa !10
  br label %for.inc860

for.inc860:                                       ; preds = %for.body823
  %653 = load i32, ptr %j, align 4, !tbaa !8
  %inc861 = add nsw i32 %653, 1
  store i32 %inc861, ptr %j, align 4, !tbaa !8
  br label %for.cond820, !llvm.loop !16

for.end862:                                       ; preds = %for.cond820
  %654 = load i32, ptr %k, align 4, !tbaa !8
  %add863 = add nsw i32 %654, 3
  store i32 %add863, ptr %i__4, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x864) #5
  %655 = load i32, ptr %i__4, align 4, !tbaa !8
  store i32 %655, ptr %_x864, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y865) #5
  %656 = load i32, ptr %i__, align 4, !tbaa !8
  store i32 %656, ptr %_y865, align 4, !tbaa !8
  %657 = load i32, ptr %_x864, align 4, !tbaa !8
  %658 = load i32, ptr %_y865, align 4, !tbaa !8
  %cmp867 = icmp slt i32 %657, %658
  br i1 %cmp867, label %cond.true869, label %cond.false870

cond.true869:                                     ; preds = %for.end862
  %659 = load i32, ptr %_x864, align 4, !tbaa !8
  br label %cond.end871

cond.false870:                                    ; preds = %for.end862
  %660 = load i32, ptr %_y865, align 4, !tbaa !8
  br label %cond.end871

cond.end871:                                      ; preds = %cond.false870, %cond.true869
  %cond872 = phi i32 [ %659, %cond.true869 ], [ %660, %cond.false870 ]
  store i32 %cond872, ptr %tmp866, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y865) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x864) #5
  %661 = load i32, ptr %tmp866, align 4, !tbaa !8
  store i32 %661, ptr %i__3, align 4, !tbaa !8
  %662 = load i32, ptr %i1, align 4, !tbaa !8
  store i32 %662, ptr %j, align 4, !tbaa !8
  br label %for.cond873

for.cond873:                                      ; preds = %for.inc913, %cond.end871
  %663 = load i32, ptr %j, align 4, !tbaa !8
  %664 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp874 = icmp sle i32 %663, %664
  br i1 %cmp874, label %for.body876, label %for.end915

for.body876:                                      ; preds = %for.cond873
  %665 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %666 = load i32, ptr %j, align 4, !tbaa !8
  %667 = load i32, ptr %k, align 4, !tbaa !8
  %668 = load i32, ptr %h_dim1, align 4, !tbaa !8
  %mul877 = mul nsw i32 %667, %668
  %add878 = add nsw i32 %666, %mul877
  %idxprom879 = sext i32 %add878 to i64
  %arrayidx880 = getelementptr inbounds float, ptr %665, i64 %idxprom879
  %669 = load float, ptr %arrayidx880, align 4, !tbaa !10
  %670 = load float, ptr %v2, align 4, !tbaa !10
  %671 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %672 = load i32, ptr %j, align 4, !tbaa !8
  %673 = load i32, ptr %k, align 4, !tbaa !8
  %add881 = add nsw i32 %673, 1
  %674 = load i32, ptr %h_dim1, align 4, !tbaa !8
  %mul882 = mul nsw i32 %add881, %674
  %add883 = add nsw i32 %672, %mul882
  %idxprom884 = sext i32 %add883 to i64
  %arrayidx885 = getelementptr inbounds float, ptr %671, i64 %idxprom884
  %675 = load float, ptr %arrayidx885, align 4, !tbaa !10
  %676 = call float @llvm.fmuladd.f32(float %670, float %675, float %669)
  %677 = load float, ptr %v3, align 4, !tbaa !10
  %678 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %679 = load i32, ptr %j, align 4, !tbaa !8
  %680 = load i32, ptr %k, align 4, !tbaa !8
  %add887 = add nsw i32 %680, 2
  %681 = load i32, ptr %h_dim1, align 4, !tbaa !8
  %mul888 = mul nsw i32 %add887, %681
  %add889 = add nsw i32 %679, %mul888
  %idxprom890 = sext i32 %add889 to i64
  %arrayidx891 = getelementptr inbounds float, ptr %678, i64 %idxprom890
  %682 = load float, ptr %arrayidx891, align 4, !tbaa !10
  %683 = call float @llvm.fmuladd.f32(float %677, float %682, float %676)
  store float %683, ptr %sum, align 4, !tbaa !10
  %684 = load float, ptr %sum, align 4, !tbaa !10
  %685 = load float, ptr %t1, align 4, !tbaa !10
  %686 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %687 = load i32, ptr %j, align 4, !tbaa !8
  %688 = load i32, ptr %k, align 4, !tbaa !8
  %689 = load i32, ptr %h_dim1, align 4, !tbaa !8
  %mul894 = mul nsw i32 %688, %689
  %add895 = add nsw i32 %687, %mul894
  %idxprom896 = sext i32 %add895 to i64
  %arrayidx897 = getelementptr inbounds float, ptr %686, i64 %idxprom896
  %690 = load float, ptr %arrayidx897, align 4, !tbaa !10
  %neg898 = fneg float %684
  %691 = call float @llvm.fmuladd.f32(float %neg898, float %685, float %690)
  store float %691, ptr %arrayidx897, align 4, !tbaa !10
  %692 = load float, ptr %sum, align 4, !tbaa !10
  %693 = load float, ptr %t2, align 4, !tbaa !10
  %694 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %695 = load i32, ptr %j, align 4, !tbaa !8
  %696 = load i32, ptr %k, align 4, !tbaa !8
  %add900 = add nsw i32 %696, 1
  %697 = load i32, ptr %h_dim1, align 4, !tbaa !8
  %mul901 = mul nsw i32 %add900, %697
  %add902 = add nsw i32 %695, %mul901
  %idxprom903 = sext i32 %add902 to i64
  %arrayidx904 = getelementptr inbounds float, ptr %694, i64 %idxprom903
  %698 = load float, ptr %arrayidx904, align 4, !tbaa !10
  %neg905 = fneg float %692
  %699 = call float @llvm.fmuladd.f32(float %neg905, float %693, float %698)
  store float %699, ptr %arrayidx904, align 4, !tbaa !10
  %700 = load float, ptr %sum, align 4, !tbaa !10
  %701 = load float, ptr %t3, align 4, !tbaa !10
  %702 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %703 = load i32, ptr %j, align 4, !tbaa !8
  %704 = load i32, ptr %k, align 4, !tbaa !8
  %add907 = add nsw i32 %704, 2
  %705 = load i32, ptr %h_dim1, align 4, !tbaa !8
  %mul908 = mul nsw i32 %add907, %705
  %add909 = add nsw i32 %703, %mul908
  %idxprom910 = sext i32 %add909 to i64
  %arrayidx911 = getelementptr inbounds float, ptr %702, i64 %idxprom910
  %706 = load float, ptr %arrayidx911, align 4, !tbaa !10
  %neg912 = fneg float %700
  %707 = call float @llvm.fmuladd.f32(float %neg912, float %701, float %706)
  store float %707, ptr %arrayidx911, align 4, !tbaa !10
  br label %for.inc913

for.inc913:                                       ; preds = %for.body876
  %708 = load i32, ptr %j, align 4, !tbaa !8
  %inc914 = add nsw i32 %708, 1
  store i32 %inc914, ptr %j, align 4, !tbaa !8
  br label %for.cond873, !llvm.loop !17

for.end915:                                       ; preds = %for.cond873
  %709 = load ptr, ptr %wantz.addr, align 8, !tbaa !4
  %710 = load i32, ptr %709, align 4, !tbaa !8
  %tobool916 = icmp ne i32 %710, 0
  br i1 %tobool916, label %if.then917, label %if.end961

if.then917:                                       ; preds = %for.end915
  %711 = load ptr, ptr %ihiz.addr, align 8, !tbaa !4
  %712 = load i32, ptr %711, align 4, !tbaa !8
  store i32 %712, ptr %i__3, align 4, !tbaa !8
  %713 = load ptr, ptr %iloz.addr, align 8, !tbaa !4
  %714 = load i32, ptr %713, align 4, !tbaa !8
  store i32 %714, ptr %j, align 4, !tbaa !8
  br label %for.cond918

for.cond918:                                      ; preds = %for.inc958, %if.then917
  %715 = load i32, ptr %j, align 4, !tbaa !8
  %716 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp919 = icmp sle i32 %715, %716
  br i1 %cmp919, label %for.body921, label %for.end960

for.body921:                                      ; preds = %for.cond918
  %717 = load ptr, ptr %z__.addr, align 8, !tbaa !4
  %718 = load i32, ptr %j, align 4, !tbaa !8
  %719 = load i32, ptr %k, align 4, !tbaa !8
  %720 = load i32, ptr %z_dim1, align 4, !tbaa !8
  %mul922 = mul nsw i32 %719, %720
  %add923 = add nsw i32 %718, %mul922
  %idxprom924 = sext i32 %add923 to i64
  %arrayidx925 = getelementptr inbounds float, ptr %717, i64 %idxprom924
  %721 = load float, ptr %arrayidx925, align 4, !tbaa !10
  %722 = load float, ptr %v2, align 4, !tbaa !10
  %723 = load ptr, ptr %z__.addr, align 8, !tbaa !4
  %724 = load i32, ptr %j, align 4, !tbaa !8
  %725 = load i32, ptr %k, align 4, !tbaa !8
  %add926 = add nsw i32 %725, 1
  %726 = load i32, ptr %z_dim1, align 4, !tbaa !8
  %mul927 = mul nsw i32 %add926, %726
  %add928 = add nsw i32 %724, %mul927
  %idxprom929 = sext i32 %add928 to i64
  %arrayidx930 = getelementptr inbounds float, ptr %723, i64 %idxprom929
  %727 = load float, ptr %arrayidx930, align 4, !tbaa !10
  %728 = call float @llvm.fmuladd.f32(float %722, float %727, float %721)
  %729 = load float, ptr %v3, align 4, !tbaa !10
  %730 = load ptr, ptr %z__.addr, align 8, !tbaa !4
  %731 = load i32, ptr %j, align 4, !tbaa !8
  %732 = load i32, ptr %k, align 4, !tbaa !8
  %add932 = add nsw i32 %732, 2
  %733 = load i32, ptr %z_dim1, align 4, !tbaa !8
  %mul933 = mul nsw i32 %add932, %733
  %add934 = add nsw i32 %731, %mul933
  %idxprom935 = sext i32 %add934 to i64
  %arrayidx936 = getelementptr inbounds float, ptr %730, i64 %idxprom935
  %734 = load float, ptr %arrayidx936, align 4, !tbaa !10
  %735 = call float @llvm.fmuladd.f32(float %729, float %734, float %728)
  store float %735, ptr %sum, align 4, !tbaa !10
  %736 = load float, ptr %sum, align 4, !tbaa !10
  %737 = load float, ptr %t1, align 4, !tbaa !10
  %738 = load ptr, ptr %z__.addr, align 8, !tbaa !4
  %739 = load i32, ptr %j, align 4, !tbaa !8
  %740 = load i32, ptr %k, align 4, !tbaa !8
  %741 = load i32, ptr %z_dim1, align 4, !tbaa !8
  %mul939 = mul nsw i32 %740, %741
  %add940 = add nsw i32 %739, %mul939
  %idxprom941 = sext i32 %add940 to i64
  %arrayidx942 = getelementptr inbounds float, ptr %738, i64 %idxprom941
  %742 = load float, ptr %arrayidx942, align 4, !tbaa !10
  %neg943 = fneg float %736
  %743 = call float @llvm.fmuladd.f32(float %neg943, float %737, float %742)
  store float %743, ptr %arrayidx942, align 4, !tbaa !10
  %744 = load float, ptr %sum, align 4, !tbaa !10
  %745 = load float, ptr %t2, align 4, !tbaa !10
  %746 = load ptr, ptr %z__.addr, align 8, !tbaa !4
  %747 = load i32, ptr %j, align 4, !tbaa !8
  %748 = load i32, ptr %k, align 4, !tbaa !8
  %add945 = add nsw i32 %748, 1
  %749 = load i32, ptr %z_dim1, align 4, !tbaa !8
  %mul946 = mul nsw i32 %add945, %749
  %add947 = add nsw i32 %747, %mul946
  %idxprom948 = sext i32 %add947 to i64
  %arrayidx949 = getelementptr inbounds float, ptr %746, i64 %idxprom948
  %750 = load float, ptr %arrayidx949, align 4, !tbaa !10
  %neg950 = fneg float %744
  %751 = call float @llvm.fmuladd.f32(float %neg950, float %745, float %750)
  store float %751, ptr %arrayidx949, align 4, !tbaa !10
  %752 = load float, ptr %sum, align 4, !tbaa !10
  %753 = load float, ptr %t3, align 4, !tbaa !10
  %754 = load ptr, ptr %z__.addr, align 8, !tbaa !4
  %755 = load i32, ptr %j, align 4, !tbaa !8
  %756 = load i32, ptr %k, align 4, !tbaa !8
  %add952 = add nsw i32 %756, 2
  %757 = load i32, ptr %z_dim1, align 4, !tbaa !8
  %mul953 = mul nsw i32 %add952, %757
  %add954 = add nsw i32 %755, %mul953
  %idxprom955 = sext i32 %add954 to i64
  %arrayidx956 = getelementptr inbounds float, ptr %754, i64 %idxprom955
  %758 = load float, ptr %arrayidx956, align 4, !tbaa !10
  %neg957 = fneg float %752
  %759 = call float @llvm.fmuladd.f32(float %neg957, float %753, float %758)
  store float %759, ptr %arrayidx956, align 4, !tbaa !10
  br label %for.inc958

for.inc958:                                       ; preds = %for.body921
  %760 = load i32, ptr %j, align 4, !tbaa !8
  %inc959 = add nsw i32 %760, 1
  store i32 %inc959, ptr %j, align 4, !tbaa !8
  br label %for.cond918, !llvm.loop !18

for.end960:                                       ; preds = %for.cond918
  br label %if.end961

if.end961:                                        ; preds = %for.end960, %for.end915
  br label %if.end1060

if.else962:                                       ; preds = %if.end812
  %761 = load i32, ptr %nr, align 4, !tbaa !8
  %cmp963 = icmp eq i32 %761, 2
  br i1 %cmp963, label %if.then965, label %if.end1059

if.then965:                                       ; preds = %if.else962
  %762 = load i32, ptr %i2, align 4, !tbaa !8
  store i32 %762, ptr %i__3, align 4, !tbaa !8
  %763 = load i32, ptr %k, align 4, !tbaa !8
  store i32 %763, ptr %j, align 4, !tbaa !8
  br label %for.cond966

for.cond966:                                      ; preds = %for.inc993, %if.then965
  %764 = load i32, ptr %j, align 4, !tbaa !8
  %765 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp967 = icmp sle i32 %764, %765
  br i1 %cmp967, label %for.body969, label %for.end995

for.body969:                                      ; preds = %for.cond966
  %766 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %767 = load i32, ptr %k, align 4, !tbaa !8
  %768 = load i32, ptr %j, align 4, !tbaa !8
  %769 = load i32, ptr %h_dim1, align 4, !tbaa !8
  %mul970 = mul nsw i32 %768, %769
  %add971 = add nsw i32 %767, %mul970
  %idxprom972 = sext i32 %add971 to i64
  %arrayidx973 = getelementptr inbounds float, ptr %766, i64 %idxprom972
  %770 = load float, ptr %arrayidx973, align 4, !tbaa !10
  %771 = load float, ptr %v2, align 4, !tbaa !10
  %772 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %773 = load i32, ptr %k, align 4, !tbaa !8
  %add974 = add nsw i32 %773, 1
  %774 = load i32, ptr %j, align 4, !tbaa !8
  %775 = load i32, ptr %h_dim1, align 4, !tbaa !8
  %mul975 = mul nsw i32 %774, %775
  %add976 = add nsw i32 %add974, %mul975
  %idxprom977 = sext i32 %add976 to i64
  %arrayidx978 = getelementptr inbounds float, ptr %772, i64 %idxprom977
  %776 = load float, ptr %arrayidx978, align 4, !tbaa !10
  %777 = call float @llvm.fmuladd.f32(float %771, float %776, float %770)
  store float %777, ptr %sum, align 4, !tbaa !10
  %778 = load float, ptr %sum, align 4, !tbaa !10
  %779 = load float, ptr %t1, align 4, !tbaa !10
  %780 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %781 = load i32, ptr %k, align 4, !tbaa !8
  %782 = load i32, ptr %j, align 4, !tbaa !8
  %783 = load i32, ptr %h_dim1, align 4, !tbaa !8
  %mul981 = mul nsw i32 %782, %783
  %add982 = add nsw i32 %781, %mul981
  %idxprom983 = sext i32 %add982 to i64
  %arrayidx984 = getelementptr inbounds float, ptr %780, i64 %idxprom983
  %784 = load float, ptr %arrayidx984, align 4, !tbaa !10
  %neg985 = fneg float %778
  %785 = call float @llvm.fmuladd.f32(float %neg985, float %779, float %784)
  store float %785, ptr %arrayidx984, align 4, !tbaa !10
  %786 = load float, ptr %sum, align 4, !tbaa !10
  %787 = load float, ptr %t2, align 4, !tbaa !10
  %788 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %789 = load i32, ptr %k, align 4, !tbaa !8
  %add987 = add nsw i32 %789, 1
  %790 = load i32, ptr %j, align 4, !tbaa !8
  %791 = load i32, ptr %h_dim1, align 4, !tbaa !8
  %mul988 = mul nsw i32 %790, %791
  %add989 = add nsw i32 %add987, %mul988
  %idxprom990 = sext i32 %add989 to i64
  %arrayidx991 = getelementptr inbounds float, ptr %788, i64 %idxprom990
  %792 = load float, ptr %arrayidx991, align 4, !tbaa !10
  %neg992 = fneg float %786
  %793 = call float @llvm.fmuladd.f32(float %neg992, float %787, float %792)
  store float %793, ptr %arrayidx991, align 4, !tbaa !10
  br label %for.inc993

for.inc993:                                       ; preds = %for.body969
  %794 = load i32, ptr %j, align 4, !tbaa !8
  %inc994 = add nsw i32 %794, 1
  store i32 %inc994, ptr %j, align 4, !tbaa !8
  br label %for.cond966, !llvm.loop !19

for.end995:                                       ; preds = %for.cond966
  %795 = load i32, ptr %i__, align 4, !tbaa !8
  store i32 %795, ptr %i__3, align 4, !tbaa !8
  %796 = load i32, ptr %i1, align 4, !tbaa !8
  store i32 %796, ptr %j, align 4, !tbaa !8
  br label %for.cond996

for.cond996:                                      ; preds = %for.inc1023, %for.end995
  %797 = load i32, ptr %j, align 4, !tbaa !8
  %798 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp997 = icmp sle i32 %797, %798
  br i1 %cmp997, label %for.body999, label %for.end1025

for.body999:                                      ; preds = %for.cond996
  %799 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %800 = load i32, ptr %j, align 4, !tbaa !8
  %801 = load i32, ptr %k, align 4, !tbaa !8
  %802 = load i32, ptr %h_dim1, align 4, !tbaa !8
  %mul1000 = mul nsw i32 %801, %802
  %add1001 = add nsw i32 %800, %mul1000
  %idxprom1002 = sext i32 %add1001 to i64
  %arrayidx1003 = getelementptr inbounds float, ptr %799, i64 %idxprom1002
  %803 = load float, ptr %arrayidx1003, align 4, !tbaa !10
  %804 = load float, ptr %v2, align 4, !tbaa !10
  %805 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %806 = load i32, ptr %j, align 4, !tbaa !8
  %807 = load i32, ptr %k, align 4, !tbaa !8
  %add1004 = add nsw i32 %807, 1
  %808 = load i32, ptr %h_dim1, align 4, !tbaa !8
  %mul1005 = mul nsw i32 %add1004, %808
  %add1006 = add nsw i32 %806, %mul1005
  %idxprom1007 = sext i32 %add1006 to i64
  %arrayidx1008 = getelementptr inbounds float, ptr %805, i64 %idxprom1007
  %809 = load float, ptr %arrayidx1008, align 4, !tbaa !10
  %810 = call float @llvm.fmuladd.f32(float %804, float %809, float %803)
  store float %810, ptr %sum, align 4, !tbaa !10
  %811 = load float, ptr %sum, align 4, !tbaa !10
  %812 = load float, ptr %t1, align 4, !tbaa !10
  %813 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %814 = load i32, ptr %j, align 4, !tbaa !8
  %815 = load i32, ptr %k, align 4, !tbaa !8
  %816 = load i32, ptr %h_dim1, align 4, !tbaa !8
  %mul1011 = mul nsw i32 %815, %816
  %add1012 = add nsw i32 %814, %mul1011
  %idxprom1013 = sext i32 %add1012 to i64
  %arrayidx1014 = getelementptr inbounds float, ptr %813, i64 %idxprom1013
  %817 = load float, ptr %arrayidx1014, align 4, !tbaa !10
  %neg1015 = fneg float %811
  %818 = call float @llvm.fmuladd.f32(float %neg1015, float %812, float %817)
  store float %818, ptr %arrayidx1014, align 4, !tbaa !10
  %819 = load float, ptr %sum, align 4, !tbaa !10
  %820 = load float, ptr %t2, align 4, !tbaa !10
  %821 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %822 = load i32, ptr %j, align 4, !tbaa !8
  %823 = load i32, ptr %k, align 4, !tbaa !8
  %add1017 = add nsw i32 %823, 1
  %824 = load i32, ptr %h_dim1, align 4, !tbaa !8
  %mul1018 = mul nsw i32 %add1017, %824
  %add1019 = add nsw i32 %822, %mul1018
  %idxprom1020 = sext i32 %add1019 to i64
  %arrayidx1021 = getelementptr inbounds float, ptr %821, i64 %idxprom1020
  %825 = load float, ptr %arrayidx1021, align 4, !tbaa !10
  %neg1022 = fneg float %819
  %826 = call float @llvm.fmuladd.f32(float %neg1022, float %820, float %825)
  store float %826, ptr %arrayidx1021, align 4, !tbaa !10
  br label %for.inc1023

for.inc1023:                                      ; preds = %for.body999
  %827 = load i32, ptr %j, align 4, !tbaa !8
  %inc1024 = add nsw i32 %827, 1
  store i32 %inc1024, ptr %j, align 4, !tbaa !8
  br label %for.cond996, !llvm.loop !20

for.end1025:                                      ; preds = %for.cond996
  %828 = load ptr, ptr %wantz.addr, align 8, !tbaa !4
  %829 = load i32, ptr %828, align 4, !tbaa !8
  %tobool1026 = icmp ne i32 %829, 0
  br i1 %tobool1026, label %if.then1027, label %if.end1058

if.then1027:                                      ; preds = %for.end1025
  %830 = load ptr, ptr %ihiz.addr, align 8, !tbaa !4
  %831 = load i32, ptr %830, align 4, !tbaa !8
  store i32 %831, ptr %i__3, align 4, !tbaa !8
  %832 = load ptr, ptr %iloz.addr, align 8, !tbaa !4
  %833 = load i32, ptr %832, align 4, !tbaa !8
  store i32 %833, ptr %j, align 4, !tbaa !8
  br label %for.cond1028

for.cond1028:                                     ; preds = %for.inc1055, %if.then1027
  %834 = load i32, ptr %j, align 4, !tbaa !8
  %835 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp1029 = icmp sle i32 %834, %835
  br i1 %cmp1029, label %for.body1031, label %for.end1057

for.body1031:                                     ; preds = %for.cond1028
  %836 = load ptr, ptr %z__.addr, align 8, !tbaa !4
  %837 = load i32, ptr %j, align 4, !tbaa !8
  %838 = load i32, ptr %k, align 4, !tbaa !8
  %839 = load i32, ptr %z_dim1, align 4, !tbaa !8
  %mul1032 = mul nsw i32 %838, %839
  %add1033 = add nsw i32 %837, %mul1032
  %idxprom1034 = sext i32 %add1033 to i64
  %arrayidx1035 = getelementptr inbounds float, ptr %836, i64 %idxprom1034
  %840 = load float, ptr %arrayidx1035, align 4, !tbaa !10
  %841 = load float, ptr %v2, align 4, !tbaa !10
  %842 = load ptr, ptr %z__.addr, align 8, !tbaa !4
  %843 = load i32, ptr %j, align 4, !tbaa !8
  %844 = load i32, ptr %k, align 4, !tbaa !8
  %add1036 = add nsw i32 %844, 1
  %845 = load i32, ptr %z_dim1, align 4, !tbaa !8
  %mul1037 = mul nsw i32 %add1036, %845
  %add1038 = add nsw i32 %843, %mul1037
  %idxprom1039 = sext i32 %add1038 to i64
  %arrayidx1040 = getelementptr inbounds float, ptr %842, i64 %idxprom1039
  %846 = load float, ptr %arrayidx1040, align 4, !tbaa !10
  %847 = call float @llvm.fmuladd.f32(float %841, float %846, float %840)
  store float %847, ptr %sum, align 4, !tbaa !10
  %848 = load float, ptr %sum, align 4, !tbaa !10
  %849 = load float, ptr %t1, align 4, !tbaa !10
  %850 = load ptr, ptr %z__.addr, align 8, !tbaa !4
  %851 = load i32, ptr %j, align 4, !tbaa !8
  %852 = load i32, ptr %k, align 4, !tbaa !8
  %853 = load i32, ptr %z_dim1, align 4, !tbaa !8
  %mul1043 = mul nsw i32 %852, %853
  %add1044 = add nsw i32 %851, %mul1043
  %idxprom1045 = sext i32 %add1044 to i64
  %arrayidx1046 = getelementptr inbounds float, ptr %850, i64 %idxprom1045
  %854 = load float, ptr %arrayidx1046, align 4, !tbaa !10
  %neg1047 = fneg float %848
  %855 = call float @llvm.fmuladd.f32(float %neg1047, float %849, float %854)
  store float %855, ptr %arrayidx1046, align 4, !tbaa !10
  %856 = load float, ptr %sum, align 4, !tbaa !10
  %857 = load float, ptr %t2, align 4, !tbaa !10
  %858 = load ptr, ptr %z__.addr, align 8, !tbaa !4
  %859 = load i32, ptr %j, align 4, !tbaa !8
  %860 = load i32, ptr %k, align 4, !tbaa !8
  %add1049 = add nsw i32 %860, 1
  %861 = load i32, ptr %z_dim1, align 4, !tbaa !8
  %mul1050 = mul nsw i32 %add1049, %861
  %add1051 = add nsw i32 %859, %mul1050
  %idxprom1052 = sext i32 %add1051 to i64
  %arrayidx1053 = getelementptr inbounds float, ptr %858, i64 %idxprom1052
  %862 = load float, ptr %arrayidx1053, align 4, !tbaa !10
  %neg1054 = fneg float %856
  %863 = call float @llvm.fmuladd.f32(float %neg1054, float %857, float %862)
  store float %863, ptr %arrayidx1053, align 4, !tbaa !10
  br label %for.inc1055

for.inc1055:                                      ; preds = %for.body1031
  %864 = load i32, ptr %j, align 4, !tbaa !8
  %inc1056 = add nsw i32 %864, 1
  store i32 %inc1056, ptr %j, align 4, !tbaa !8
  br label %for.cond1028, !llvm.loop !21

for.end1057:                                      ; preds = %for.cond1028
  br label %if.end1058

if.end1058:                                       ; preds = %for.end1057, %for.end1025
  br label %if.end1059

if.end1059:                                       ; preds = %if.end1058, %if.else962
  br label %if.end1060

if.end1060:                                       ; preds = %if.end1059, %if.end961
  br label %for.inc1061

for.inc1061:                                      ; preds = %if.end1060
  %865 = load i32, ptr %k, align 4, !tbaa !8
  %inc1062 = add nsw i32 %865, 1
  store i32 %inc1062, ptr %k, align 4, !tbaa !8
  br label %for.cond746, !llvm.loop !22

for.end1063:                                      ; preds = %for.cond746
  br label %for.inc1064

for.inc1064:                                      ; preds = %for.end1063
  %866 = load i32, ptr %its, align 4, !tbaa !8
  %inc1065 = add nsw i32 %866, 1
  store i32 %inc1065, ptr %its, align 4, !tbaa !8
  br label %for.cond51, !llvm.loop !23

for.end1066:                                      ; preds = %for.cond51
  %867 = load i32, ptr %i__, align 4, !tbaa !8
  %868 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 %867, ptr %868, align 4, !tbaa !8
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

L150:                                             ; preds = %if.then333
  %869 = load i32, ptr %l, align 4, !tbaa !8
  %870 = load i32, ptr %i__, align 4, !tbaa !8
  %cmp1067 = icmp eq i32 %869, %870
  br i1 %cmp1067, label %if.then1069, label %if.else1078

if.then1069:                                      ; preds = %L150
  %871 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %872 = load i32, ptr %i__, align 4, !tbaa !8
  %873 = load i32, ptr %i__, align 4, !tbaa !8
  %874 = load i32, ptr %h_dim1, align 4, !tbaa !8
  %mul1070 = mul nsw i32 %873, %874
  %add1071 = add nsw i32 %872, %mul1070
  %idxprom1072 = sext i32 %add1071 to i64
  %arrayidx1073 = getelementptr inbounds float, ptr %871, i64 %idxprom1072
  %875 = load float, ptr %arrayidx1073, align 4, !tbaa !10
  %876 = load ptr, ptr %wr.addr, align 8, !tbaa !4
  %877 = load i32, ptr %i__, align 4, !tbaa !8
  %idxprom1074 = sext i32 %877 to i64
  %arrayidx1075 = getelementptr inbounds float, ptr %876, i64 %idxprom1074
  store float %875, ptr %arrayidx1075, align 4, !tbaa !10
  %878 = load ptr, ptr %wi.addr, align 8, !tbaa !4
  %879 = load i32, ptr %i__, align 4, !tbaa !8
  %idxprom1076 = sext i32 %879 to i64
  %arrayidx1077 = getelementptr inbounds float, ptr %878, i64 %idxprom1076
  store float 0.000000e+00, ptr %arrayidx1077, align 4, !tbaa !10
  br label %if.end1160

if.else1078:                                      ; preds = %L150
  %880 = load i32, ptr %l, align 4, !tbaa !8
  %881 = load i32, ptr %i__, align 4, !tbaa !8
  %sub1079 = sub nsw i32 %881, 1
  %cmp1080 = icmp eq i32 %880, %sub1079
  br i1 %cmp1080, label %if.then1082, label %if.end1159

if.then1082:                                      ; preds = %if.else1078
  %882 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %883 = load i32, ptr %i__, align 4, !tbaa !8
  %sub1083 = sub nsw i32 %883, 1
  %884 = load i32, ptr %i__, align 4, !tbaa !8
  %sub1084 = sub nsw i32 %884, 1
  %885 = load i32, ptr %h_dim1, align 4, !tbaa !8
  %mul1085 = mul nsw i32 %sub1084, %885
  %add1086 = add nsw i32 %sub1083, %mul1085
  %idxprom1087 = sext i32 %add1086 to i64
  %arrayidx1088 = getelementptr inbounds float, ptr %882, i64 %idxprom1087
  %886 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %887 = load i32, ptr %i__, align 4, !tbaa !8
  %sub1089 = sub nsw i32 %887, 1
  %888 = load i32, ptr %i__, align 4, !tbaa !8
  %889 = load i32, ptr %h_dim1, align 4, !tbaa !8
  %mul1090 = mul nsw i32 %888, %889
  %add1091 = add nsw i32 %sub1089, %mul1090
  %idxprom1092 = sext i32 %add1091 to i64
  %arrayidx1093 = getelementptr inbounds float, ptr %886, i64 %idxprom1092
  %890 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %891 = load i32, ptr %i__, align 4, !tbaa !8
  %892 = load i32, ptr %i__, align 4, !tbaa !8
  %sub1094 = sub nsw i32 %892, 1
  %893 = load i32, ptr %h_dim1, align 4, !tbaa !8
  %mul1095 = mul nsw i32 %sub1094, %893
  %add1096 = add nsw i32 %891, %mul1095
  %idxprom1097 = sext i32 %add1096 to i64
  %arrayidx1098 = getelementptr inbounds float, ptr %890, i64 %idxprom1097
  %894 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %895 = load i32, ptr %i__, align 4, !tbaa !8
  %896 = load i32, ptr %i__, align 4, !tbaa !8
  %897 = load i32, ptr %h_dim1, align 4, !tbaa !8
  %mul1099 = mul nsw i32 %896, %897
  %add1100 = add nsw i32 %895, %mul1099
  %idxprom1101 = sext i32 %add1100 to i64
  %arrayidx1102 = getelementptr inbounds float, ptr %894, i64 %idxprom1101
  %898 = load ptr, ptr %wr.addr, align 8, !tbaa !4
  %899 = load i32, ptr %i__, align 4, !tbaa !8
  %sub1103 = sub nsw i32 %899, 1
  %idxprom1104 = sext i32 %sub1103 to i64
  %arrayidx1105 = getelementptr inbounds float, ptr %898, i64 %idxprom1104
  %900 = load ptr, ptr %wi.addr, align 8, !tbaa !4
  %901 = load i32, ptr %i__, align 4, !tbaa !8
  %sub1106 = sub nsw i32 %901, 1
  %idxprom1107 = sext i32 %sub1106 to i64
  %arrayidx1108 = getelementptr inbounds float, ptr %900, i64 %idxprom1107
  %902 = load ptr, ptr %wr.addr, align 8, !tbaa !4
  %903 = load i32, ptr %i__, align 4, !tbaa !8
  %idxprom1109 = sext i32 %903 to i64
  %arrayidx1110 = getelementptr inbounds float, ptr %902, i64 %idxprom1109
  %904 = load ptr, ptr %wi.addr, align 8, !tbaa !4
  %905 = load i32, ptr %i__, align 4, !tbaa !8
  %idxprom1111 = sext i32 %905 to i64
  %arrayidx1112 = getelementptr inbounds float, ptr %904, i64 %idxprom1111
  %call1113 = call i32 @slanv2_(ptr noundef %arrayidx1088, ptr noundef %arrayidx1093, ptr noundef %arrayidx1098, ptr noundef %arrayidx1102, ptr noundef %arrayidx1105, ptr noundef %arrayidx1108, ptr noundef %arrayidx1110, ptr noundef %arrayidx1112, ptr noundef %cs, ptr noundef %sn)
  %906 = load ptr, ptr %wantt.addr, align 8, !tbaa !4
  %907 = load i32, ptr %906, align 4, !tbaa !8
  %tobool1114 = icmp ne i32 %907, 0
  br i1 %tobool1114, label %if.then1115, label %if.end1145

if.then1115:                                      ; preds = %if.then1082
  %908 = load i32, ptr %i2, align 4, !tbaa !8
  %909 = load i32, ptr %i__, align 4, !tbaa !8
  %cmp1116 = icmp sgt i32 %908, %909
  br i1 %cmp1116, label %if.then1118, label %if.end1132

if.then1118:                                      ; preds = %if.then1115
  %910 = load i32, ptr %i2, align 4, !tbaa !8
  %911 = load i32, ptr %i__, align 4, !tbaa !8
  %sub1119 = sub nsw i32 %910, %911
  store i32 %sub1119, ptr %i__1, align 4, !tbaa !8
  %912 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %913 = load i32, ptr %i__, align 4, !tbaa !8
  %sub1120 = sub nsw i32 %913, 1
  %914 = load i32, ptr %i__, align 4, !tbaa !8
  %add1121 = add nsw i32 %914, 1
  %915 = load i32, ptr %h_dim1, align 4, !tbaa !8
  %mul1122 = mul nsw i32 %add1121, %915
  %add1123 = add nsw i32 %sub1120, %mul1122
  %idxprom1124 = sext i32 %add1123 to i64
  %arrayidx1125 = getelementptr inbounds float, ptr %912, i64 %idxprom1124
  %916 = load ptr, ptr %ldh.addr, align 8, !tbaa !4
  %917 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %918 = load i32, ptr %i__, align 4, !tbaa !8
  %919 = load i32, ptr %i__, align 4, !tbaa !8
  %add1126 = add nsw i32 %919, 1
  %920 = load i32, ptr %h_dim1, align 4, !tbaa !8
  %mul1127 = mul nsw i32 %add1126, %920
  %add1128 = add nsw i32 %918, %mul1127
  %idxprom1129 = sext i32 %add1128 to i64
  %arrayidx1130 = getelementptr inbounds float, ptr %917, i64 %idxprom1129
  %921 = load ptr, ptr %ldh.addr, align 8, !tbaa !4
  %call1131 = call i32 @srot_(ptr noundef %i__1, ptr noundef %arrayidx1125, ptr noundef %916, ptr noundef %arrayidx1130, ptr noundef %921, ptr noundef %cs, ptr noundef %sn)
  br label %if.end1132

if.end1132:                                       ; preds = %if.then1118, %if.then1115
  %922 = load i32, ptr %i__, align 4, !tbaa !8
  %923 = load i32, ptr %i1, align 4, !tbaa !8
  %sub1133 = sub nsw i32 %922, %923
  %sub1134 = sub nsw i32 %sub1133, 1
  store i32 %sub1134, ptr %i__1, align 4, !tbaa !8
  %924 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %925 = load i32, ptr %i1, align 4, !tbaa !8
  %926 = load i32, ptr %i__, align 4, !tbaa !8
  %sub1135 = sub nsw i32 %926, 1
  %927 = load i32, ptr %h_dim1, align 4, !tbaa !8
  %mul1136 = mul nsw i32 %sub1135, %927
  %add1137 = add nsw i32 %925, %mul1136
  %idxprom1138 = sext i32 %add1137 to i64
  %arrayidx1139 = getelementptr inbounds float, ptr %924, i64 %idxprom1138
  %928 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %929 = load i32, ptr %i1, align 4, !tbaa !8
  %930 = load i32, ptr %i__, align 4, !tbaa !8
  %931 = load i32, ptr %h_dim1, align 4, !tbaa !8
  %mul1140 = mul nsw i32 %930, %931
  %add1141 = add nsw i32 %929, %mul1140
  %idxprom1142 = sext i32 %add1141 to i64
  %arrayidx1143 = getelementptr inbounds float, ptr %928, i64 %idxprom1142
  %call1144 = call i32 @srot_(ptr noundef %i__1, ptr noundef %arrayidx1139, ptr noundef @c__1, ptr noundef %arrayidx1143, ptr noundef @c__1, ptr noundef %cs, ptr noundef %sn)
  br label %if.end1145

if.end1145:                                       ; preds = %if.end1132, %if.then1082
  %932 = load ptr, ptr %wantz.addr, align 8, !tbaa !4
  %933 = load i32, ptr %932, align 4, !tbaa !8
  %tobool1146 = icmp ne i32 %933, 0
  br i1 %tobool1146, label %if.then1147, label %if.end1158

if.then1147:                                      ; preds = %if.end1145
  %934 = load ptr, ptr %z__.addr, align 8, !tbaa !4
  %935 = load ptr, ptr %iloz.addr, align 8, !tbaa !4
  %936 = load i32, ptr %935, align 4, !tbaa !8
  %937 = load i32, ptr %i__, align 4, !tbaa !8
  %sub1148 = sub nsw i32 %937, 1
  %938 = load i32, ptr %z_dim1, align 4, !tbaa !8
  %mul1149 = mul nsw i32 %sub1148, %938
  %add1150 = add nsw i32 %936, %mul1149
  %idxprom1151 = sext i32 %add1150 to i64
  %arrayidx1152 = getelementptr inbounds float, ptr %934, i64 %idxprom1151
  %939 = load ptr, ptr %z__.addr, align 8, !tbaa !4
  %940 = load ptr, ptr %iloz.addr, align 8, !tbaa !4
  %941 = load i32, ptr %940, align 4, !tbaa !8
  %942 = load i32, ptr %i__, align 4, !tbaa !8
  %943 = load i32, ptr %z_dim1, align 4, !tbaa !8
  %mul1153 = mul nsw i32 %942, %943
  %add1154 = add nsw i32 %941, %mul1153
  %idxprom1155 = sext i32 %add1154 to i64
  %arrayidx1156 = getelementptr inbounds float, ptr %939, i64 %idxprom1155
  %call1157 = call i32 @srot_(ptr noundef %nz, ptr noundef %arrayidx1152, ptr noundef @c__1, ptr noundef %arrayidx1156, ptr noundef @c__1, ptr noundef %cs, ptr noundef %sn)
  br label %if.end1158

if.end1158:                                       ; preds = %if.then1147, %if.end1145
  br label %if.end1159

if.end1159:                                       ; preds = %if.end1158, %if.else1078
  br label %if.end1160

if.end1160:                                       ; preds = %if.end1159, %if.then1069
  store i32 0, ptr %kdefl, align 4, !tbaa !8
  %944 = load i32, ptr %l, align 4, !tbaa !8
  %sub1161 = sub nsw i32 %944, 1
  store i32 %sub1161, ptr %i__, align 4, !tbaa !8
  br label %L20

L160:                                             ; preds = %if.then49
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %L160, %for.end1066, %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %smlnum) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %rtdisc) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %safmax) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %safmin) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %itmax) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %kdefl) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %rt2r) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %rt1r) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %rt2i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %rt1i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %tst) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %sum) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %ulp) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %its) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %h21s) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %det) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %nz) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %tr) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %nr) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %sn) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %nh) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %cs) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %h22) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %h21) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %h12) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %h11) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %bb) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %ba) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %ab) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %aa) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %v3) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %v2) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %t3) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %t2) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %t1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i2) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i1) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr %v) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %s) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %l) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %r__4) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %r__3) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %r__2) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %r__1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__4) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__3) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__2) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %z_offset) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %z_dim1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %h_offset) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %h_dim1) #5
  %945 = load i32, ptr %retval, align 4
  ret i32 %945
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare float @slamch_(ptr noundef) #2

declare i32 @slabad_(ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: nounwind
declare double @sqrt(double noundef) #4

declare i32 @scopy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @slarfg_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @slanv2_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @srot_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="znver2" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="znver2" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="znver2" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"float", !6, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = distinct !{!14, !13}
!15 = distinct !{!15, !13}
!16 = distinct !{!16, !13}
!17 = distinct !{!17, !13}
!18 = distinct !{!18, !13}
!19 = distinct !{!19, !13}
!20 = distinct !{!20, !13}
!21 = distinct !{!21, !13}
!22 = distinct !{!22, !13}
!23 = distinct !{!23, !13}

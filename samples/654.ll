; ModuleID = 'samples/654.bc'
source_filename = "/local-ssd/amdlibflame-otrkevhm552xspevawtkllysqp2goz3p-build/aidengro/spack-stage-amdlibflame-4.1-otrkevhm552xspevawtkllysqp2goz3p/spack-src/src/map/lapack2flamec/f2c/c/claqr4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.complex = type { float, float }

@c__13 = internal global i32 13, align 4
@.str = private unnamed_addr constant [7 x i8] c"CLAQR4\00", align 1
@c__15 = internal global i32 15, align 4
@c_n1 = internal global i32 -1, align 4
@c__12 = internal global i32 12, align 4
@c__14 = internal global i32 14, align 4
@c__16 = internal global i32 16, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@c_false = internal global i32 0, align 4
@c__1 = internal global i32 1, align 4
@c__3 = internal global i32 3, align 4

; Function Attrs: nounwind uwtable
define i32 @claqr4_(ptr noundef %wantt, ptr noundef %wantz, ptr noundef %n, ptr noundef %ilo, ptr noundef %ihi, ptr noundef %h__, ptr noundef %ldh, ptr noundef %w, ptr noundef %iloz, ptr noundef %ihiz, ptr noundef %z__, ptr noundef %ldz, ptr noundef %work, ptr noundef %lwork, ptr noundef %info) #0 {
entry:
  %retval = alloca i32, align 4
  %wantt.addr = alloca ptr, align 8
  %wantz.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %ilo.addr = alloca ptr, align 8
  %ihi.addr = alloca ptr, align 8
  %h__.addr = alloca ptr, align 8
  %ldh.addr = alloca ptr, align 8
  %w.addr = alloca ptr, align 8
  %iloz.addr = alloca ptr, align 8
  %ihiz.addr = alloca ptr, align 8
  %z__.addr = alloca ptr, align 8
  %ldz.addr = alloca ptr, align 8
  %work.addr = alloca ptr, align 8
  %lwork.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %h_dim1 = alloca i32, align 4
  %h_offset = alloca i32, align 4
  %z_dim1 = alloca i32, align 4
  %z_offset = alloca i32, align 4
  %i__1 = alloca i32, align 4
  %i__2 = alloca i32, align 4
  %i__3 = alloca i32, align 4
  %i__4 = alloca i32, align 4
  %i__5 = alloca i32, align 4
  %r__1 = alloca float, align 4
  %r__2 = alloca float, align 4
  %r__3 = alloca float, align 4
  %r__4 = alloca float, align 4
  %r__5 = alloca float, align 4
  %r__6 = alloca float, align 4
  %r__7 = alloca float, align 4
  %r__8 = alloca float, align 4
  %q__1 = alloca %struct.complex, align 4
  %q__2 = alloca %struct.complex, align 4
  %q__3 = alloca %struct.complex, align 4
  %q__4 = alloca %struct.complex, align 4
  %q__5 = alloca %struct.complex, align 4
  %i__ = alloca i32, align 4
  %k = alloca i32, align 4
  %s = alloca float, align 4
  %aa = alloca %struct.complex, align 4
  %bb = alloca %struct.complex, align 4
  %cc = alloca %struct.complex, align 4
  %dd = alloca %struct.complex, align 4
  %ld = alloca i32, align 4
  %nh = alloca i32, align 4
  %it = alloca i32, align 4
  %ks = alloca i32, align 4
  %kt = alloca i32, align 4
  %ku = alloca i32, align 4
  %kv = alloca i32, align 4
  %ls = alloca i32, align 4
  %ns = alloca i32, align 4
  %nw = alloca i32, align 4
  %tr2 = alloca %struct.complex, align 4
  %det = alloca %struct.complex, align 4
  %inf = alloca i32, align 4
  %kdu = alloca i32, align 4
  %nho = alloca i32, align 4
  %nve = alloca i32, align 4
  %kwh = alloca i32, align 4
  %nsr = alloca i32, align 4
  %nwr = alloca i32, align 4
  %kwv = alloca i32, align 4
  %ndec = alloca i32, align 4
  %ndfl = alloca i32, align 4
  %kbot = alloca i32, align 4
  %nmin = alloca i32, align 4
  %swap = alloca %struct.complex, align 4
  %ktop = alloca i32, align 4
  %zdum = alloca [1 x %struct.complex], align 4
  %kacc22 = alloca i32, align 4
  %itmax = alloca i32, align 4
  %nsmax = alloca i32, align 4
  %nwmax = alloca i32, align 4
  %kwtop = alloca i32, align 4
  %nibble = alloca i32, align 4
  %jbcmpz = alloca [2 x i8], align 1
  %rtdisc = alloca %struct.complex, align 4
  %nwupbd = alloca i32, align 4
  %sorted = alloca i32, align 4
  %lwkopt = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %_x = alloca i32, align 4
  %_y = alloca i32, align 4
  %tmp = alloca i32, align 4
  %_x31 = alloca i32, align 4
  %_y32 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %_x39 = alloca i32, align 4
  %_y40 = alloca i32, align 4
  %tmp41 = alloca i32, align 4
  %_x51 = alloca i32, align 4
  %_y52 = alloca i32, align 4
  %tmp53 = alloca i32, align 4
  %_x60 = alloca i32, align 4
  %_y61 = alloca i32, align 4
  %tmp62 = alloca i32, align 4
  %_x69 = alloca i32, align 4
  %_y70 = alloca i32, align 4
  %tmp71 = alloca i32, align 4
  %_x94 = alloca i32, align 4
  %_y95 = alloca i32, align 4
  %tmp96 = alloca i32, align 4
  %_x118 = alloca i32, align 4
  %_y119 = alloca i32, align 4
  %tmp120 = alloca i32, align 4
  %_x129 = alloca i32, align 4
  %_y130 = alloca i32, align 4
  %tmp131 = alloca i32, align 4
  %_x140 = alloca i32, align 4
  %_y141 = alloca i32, align 4
  %tmp142 = alloca i32, align 4
  %_x149 = alloca i32, align 4
  %_y150 = alloca i32, align 4
  %tmp151 = alloca i32, align 4
  %_x161 = alloca i32, align 4
  %_y162 = alloca i32, align 4
  %tmp163 = alloca i32, align 4
  %_x173 = alloca i32, align 4
  %_y174 = alloca i32, align 4
  %tmp175 = alloca i32, align 4
  %_x186 = alloca i32, align 4
  %_y187 = alloca i32, align 4
  %tmp188 = alloca i32, align 4
  %_x224 = alloca i32, align 4
  %_y225 = alloca i32, align 4
  %tmp226 = alloca i32, align 4
  %_x236 = alloca i32, align 4
  %_y237 = alloca i32, align 4
  %tmp238 = alloca i32, align 4
  %_x247 = alloca i32, align 4
  %_y248 = alloca i32, align 4
  %tmp249 = alloca i32, align 4
  %_x380 = alloca i32, align 4
  %_y381 = alloca i32, align 4
  %tmp382 = alloca i32, align 4
  %_x393 = alloca i32, align 4
  %_y394 = alloca i32, align 4
  %tmp395 = alloca i32, align 4
  %_x402 = alloca i32, align 4
  %_y403 = alloca i32, align 4
  %tmp404 = alloca i32, align 4
  %_x411 = alloca i32, align 4
  %_y412 = alloca i32, align 4
  %tmp413 = alloca i32, align 4
  %_x1038 = alloca i32, align 4
  %_y1039 = alloca i32, align 4
  %tmp1040 = alloca i32, align 4
  store ptr %wantt, ptr %wantt.addr, align 8, !tbaa !4
  store ptr %wantz, ptr %wantz.addr, align 8, !tbaa !4
  store ptr %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %ilo, ptr %ilo.addr, align 8, !tbaa !4
  store ptr %ihi, ptr %ihi.addr, align 8, !tbaa !4
  store ptr %h__, ptr %h__.addr, align 8, !tbaa !4
  store ptr %ldh, ptr %ldh.addr, align 8, !tbaa !4
  store ptr %w, ptr %w.addr, align 8, !tbaa !4
  store ptr %iloz, ptr %iloz.addr, align 8, !tbaa !4
  store ptr %ihiz, ptr %ihiz.addr, align 8, !tbaa !4
  store ptr %z__, ptr %z__.addr, align 8, !tbaa !4
  store ptr %ldz, ptr %ldz.addr, align 8, !tbaa !4
  store ptr %work, ptr %work.addr, align 8, !tbaa !4
  store ptr %lwork, ptr %lwork.addr, align 8, !tbaa !4
  store ptr %info, ptr %info.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %h_dim1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %h_offset) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %z_dim1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %z_offset) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__2) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__3) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__4) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__5) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %r__1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %r__2) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %r__3) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %r__4) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %r__5) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %r__6) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %r__7) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %r__8) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %q__1) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %q__2) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %q__3) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %q__4) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %q__5) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %s) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %aa) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %bb) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %cc) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %dd) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ld) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %nh) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %it) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ks) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %kt) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ku) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %kv) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ls) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ns) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %nw) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %tr2) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %det) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %inf) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %kdu) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %nho) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %nve) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %kwh) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %nsr) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %nwr) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %kwv) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ndec) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ndfl) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %kbot) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %nmin) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %swap) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ktop) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %zdum) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %kacc22) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %itmax) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %nsmax) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %nwmax) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %kwtop) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %nibble) #4
  call void @llvm.lifetime.start.p0(i64 2, ptr %jbcmpz) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %rtdisc) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %nwupbd) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %sorted) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %lwkopt) #4
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
  %add.ptr = getelementptr inbounds %struct.complex, ptr %4, i64 %idx.neg
  store ptr %add.ptr, ptr %h__.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %w.addr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds %struct.complex, ptr %5, i32 -1
  store ptr %incdec.ptr, ptr %w.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %ldz.addr, align 8, !tbaa !4
  %7 = load i32, ptr %6, align 4, !tbaa !8
  store i32 %7, ptr %z_dim1, align 4, !tbaa !8
  %8 = load i32, ptr %z_dim1, align 4, !tbaa !8
  %add1 = add nsw i32 1, %8
  store i32 %add1, ptr %z_offset, align 4, !tbaa !8
  %9 = load i32, ptr %z_offset, align 4, !tbaa !8
  %10 = load ptr, ptr %z__.addr, align 8, !tbaa !4
  %idx.ext2 = sext i32 %9 to i64
  %idx.neg3 = sub i64 0, %idx.ext2
  %add.ptr4 = getelementptr inbounds %struct.complex, ptr %10, i64 %idx.neg3
  store ptr %add.ptr4, ptr %z__.addr, align 8, !tbaa !4
  %11 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %incdec.ptr5 = getelementptr inbounds %struct.complex, ptr %11, i32 -1
  store ptr %incdec.ptr5, ptr %work.addr, align 8, !tbaa !4
  %12 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 0, ptr %12, align 4, !tbaa !8
  %13 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %14 = load i32, ptr %13, align 4, !tbaa !8
  %cmp = icmp eq i32 %14, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %15 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds %struct.complex, ptr %15, i64 1
  %r = getelementptr inbounds %struct.complex, ptr %arrayidx, i32 0, i32 0
  store float 1.000000e+00, ptr %r, align 4, !tbaa !10
  %16 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx6 = getelementptr inbounds %struct.complex, ptr %16, i64 1
  %i = getelementptr inbounds %struct.complex, ptr %arrayidx6, i32 0, i32 1
  store float 0.000000e+00, ptr %i, align 4, !tbaa !13
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %17 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %18 = load i32, ptr %17, align 4, !tbaa !8
  %cmp7 = icmp sle i32 %18, 15
  br i1 %cmp7, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end
  store i32 1, ptr %lwkopt, align 4, !tbaa !8
  %19 = load ptr, ptr %lwork.addr, align 8, !tbaa !4
  %20 = load i32, ptr %19, align 4, !tbaa !8
  %cmp9 = icmp ne i32 %20, -1
  br i1 %cmp9, label %if.then10, label %if.end15

if.then10:                                        ; preds = %if.then8
  %21 = load ptr, ptr %wantt.addr, align 8, !tbaa !4
  %22 = load ptr, ptr %wantz.addr, align 8, !tbaa !4
  %23 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %24 = load ptr, ptr %ilo.addr, align 8, !tbaa !4
  %25 = load ptr, ptr %ihi.addr, align 8, !tbaa !4
  %26 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %27 = load i32, ptr %h_offset, align 4, !tbaa !8
  %idxprom = sext i32 %27 to i64
  %arrayidx11 = getelementptr inbounds %struct.complex, ptr %26, i64 %idxprom
  %28 = load ptr, ptr %ldh.addr, align 8, !tbaa !4
  %29 = load ptr, ptr %w.addr, align 8, !tbaa !4
  %arrayidx12 = getelementptr inbounds %struct.complex, ptr %29, i64 1
  %30 = load ptr, ptr %iloz.addr, align 8, !tbaa !4
  %31 = load ptr, ptr %ihiz.addr, align 8, !tbaa !4
  %32 = load ptr, ptr %z__.addr, align 8, !tbaa !4
  %33 = load i32, ptr %z_offset, align 4, !tbaa !8
  %idxprom13 = sext i32 %33 to i64
  %arrayidx14 = getelementptr inbounds %struct.complex, ptr %32, i64 %idxprom13
  %34 = load ptr, ptr %ldz.addr, align 8, !tbaa !4
  %35 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %call = call i32 @clahqr_(ptr noundef %21, ptr noundef %22, ptr noundef %23, ptr noundef %24, ptr noundef %25, ptr noundef %arrayidx11, ptr noundef %28, ptr noundef %arrayidx12, ptr noundef %30, ptr noundef %31, ptr noundef %arrayidx14, ptr noundef %34, ptr noundef %35)
  br label %if.end15

if.end15:                                         ; preds = %if.then10, %if.then8
  br label %if.end1092

if.else:                                          ; preds = %if.end
  %36 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 0, ptr %36, align 4, !tbaa !8
  %37 = load ptr, ptr %wantt.addr, align 8, !tbaa !4
  %38 = load i32, ptr %37, align 4, !tbaa !8
  %tobool = icmp ne i32 %38, 0
  br i1 %tobool, label %if.then16, label %if.else17

if.then16:                                        ; preds = %if.else
  %arraydecay = getelementptr inbounds [2 x i8], ptr %jbcmpz, i64 0, i64 0
  store i8 83, ptr %arraydecay, align 1, !tbaa !14
  br label %if.end19

if.else17:                                        ; preds = %if.else
  %arraydecay18 = getelementptr inbounds [2 x i8], ptr %jbcmpz, i64 0, i64 0
  store i8 69, ptr %arraydecay18, align 1, !tbaa !14
  br label %if.end19

if.end19:                                         ; preds = %if.else17, %if.then16
  %39 = load ptr, ptr %wantz.addr, align 8, !tbaa !4
  %40 = load i32, ptr %39, align 4, !tbaa !8
  %tobool20 = icmp ne i32 %40, 0
  br i1 %tobool20, label %if.then21, label %if.else23

if.then21:                                        ; preds = %if.end19
  %arrayidx22 = getelementptr inbounds [2 x i8], ptr %jbcmpz, i64 0, i64 1
  store i8 86, ptr %arrayidx22, align 1, !tbaa !14
  br label %if.end25

if.else23:                                        ; preds = %if.end19
  %arrayidx24 = getelementptr inbounds [2 x i8], ptr %jbcmpz, i64 0, i64 1
  store i8 78, ptr %arrayidx24, align 1, !tbaa !14
  br label %if.end25

if.end25:                                         ; preds = %if.else23, %if.then21
  %arraydecay26 = getelementptr inbounds [2 x i8], ptr %jbcmpz, i64 0, i64 0
  %41 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %42 = load ptr, ptr %ilo.addr, align 8, !tbaa !4
  %43 = load ptr, ptr %ihi.addr, align 8, !tbaa !4
  %44 = load ptr, ptr %lwork.addr, align 8, !tbaa !4
  %call27 = call i32 @ilaenv_(ptr noundef @c__13, ptr noundef @.str, ptr noundef %arraydecay26, ptr noundef %41, ptr noundef %42, ptr noundef %43, ptr noundef %44)
  store i32 %call27, ptr %nwr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x) #4
  store i32 2, ptr %_x, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y) #4
  %45 = load i32, ptr %nwr, align 4, !tbaa !8
  store i32 %45, ptr %_y, align 4, !tbaa !8
  %46 = load i32, ptr %_x, align 4, !tbaa !8
  %47 = load i32, ptr %_y, align 4, !tbaa !8
  %cmp28 = icmp sgt i32 %46, %47
  br i1 %cmp28, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end25
  %48 = load i32, ptr %_x, align 4, !tbaa !8
  br label %cond.end

cond.false:                                       ; preds = %if.end25
  %49 = load i32, ptr %_y, align 4, !tbaa !8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %48, %cond.true ], [ %49, %cond.false ]
  store i32 %cond, ptr %tmp, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x) #4
  %50 = load i32, ptr %tmp, align 4, !tbaa !8
  store i32 %50, ptr %nwr, align 4, !tbaa !8
  %51 = load ptr, ptr %ihi.addr, align 8, !tbaa !4
  %52 = load i32, ptr %51, align 4, !tbaa !8
  %53 = load ptr, ptr %ilo.addr, align 8, !tbaa !4
  %54 = load i32, ptr %53, align 4, !tbaa !8
  %sub = sub nsw i32 %52, %54
  %add29 = add nsw i32 %sub, 1
  store i32 %add29, ptr %i__1, align 4, !tbaa !8
  %55 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %56 = load i32, ptr %55, align 4, !tbaa !8
  %sub30 = sub nsw i32 %56, 1
  %div = sdiv i32 %sub30, 3
  store i32 %div, ptr %i__2, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x31) #4
  %57 = load i32, ptr %i__1, align 4, !tbaa !8
  store i32 %57, ptr %_x31, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y32) #4
  %58 = load i32, ptr %i__2, align 4, !tbaa !8
  store i32 %58, ptr %_y32, align 4, !tbaa !8
  %59 = load i32, ptr %_x31, align 4, !tbaa !8
  %60 = load i32, ptr %_y32, align 4, !tbaa !8
  %cmp34 = icmp slt i32 %59, %60
  br i1 %cmp34, label %cond.true35, label %cond.false36

cond.true35:                                      ; preds = %cond.end
  %61 = load i32, ptr %_x31, align 4, !tbaa !8
  br label %cond.end37

cond.false36:                                     ; preds = %cond.end
  %62 = load i32, ptr %_y32, align 4, !tbaa !8
  br label %cond.end37

cond.end37:                                       ; preds = %cond.false36, %cond.true35
  %cond38 = phi i32 [ %61, %cond.true35 ], [ %62, %cond.false36 ]
  store i32 %cond38, ptr %tmp33, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y32) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x31) #4
  %63 = load i32, ptr %tmp33, align 4, !tbaa !8
  store i32 %63, ptr %i__1, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x39) #4
  %64 = load i32, ptr %i__1, align 4, !tbaa !8
  store i32 %64, ptr %_x39, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y40) #4
  %65 = load i32, ptr %nwr, align 4, !tbaa !8
  store i32 %65, ptr %_y40, align 4, !tbaa !8
  %66 = load i32, ptr %_x39, align 4, !tbaa !8
  %67 = load i32, ptr %_y40, align 4, !tbaa !8
  %cmp42 = icmp slt i32 %66, %67
  br i1 %cmp42, label %cond.true43, label %cond.false44

cond.true43:                                      ; preds = %cond.end37
  %68 = load i32, ptr %_x39, align 4, !tbaa !8
  br label %cond.end45

cond.false44:                                     ; preds = %cond.end37
  %69 = load i32, ptr %_y40, align 4, !tbaa !8
  br label %cond.end45

cond.end45:                                       ; preds = %cond.false44, %cond.true43
  %cond46 = phi i32 [ %68, %cond.true43 ], [ %69, %cond.false44 ]
  store i32 %cond46, ptr %tmp41, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y40) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x39) #4
  %70 = load i32, ptr %tmp41, align 4, !tbaa !8
  store i32 %70, ptr %nwr, align 4, !tbaa !8
  %arraydecay47 = getelementptr inbounds [2 x i8], ptr %jbcmpz, i64 0, i64 0
  %71 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %72 = load ptr, ptr %ilo.addr, align 8, !tbaa !4
  %73 = load ptr, ptr %ihi.addr, align 8, !tbaa !4
  %74 = load ptr, ptr %lwork.addr, align 8, !tbaa !4
  %call48 = call i32 @ilaenv_(ptr noundef @c__15, ptr noundef @.str, ptr noundef %arraydecay47, ptr noundef %71, ptr noundef %72, ptr noundef %73, ptr noundef %74)
  store i32 %call48, ptr %nsr, align 4, !tbaa !8
  %75 = load i32, ptr %nsr, align 4, !tbaa !8
  store i32 %75, ptr %i__1, align 4, !tbaa !8
  %76 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %77 = load i32, ptr %76, align 4, !tbaa !8
  %sub49 = sub nsw i32 %77, 3
  %div50 = sdiv i32 %sub49, 6
  store i32 %div50, ptr %i__2, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x51) #4
  %78 = load i32, ptr %i__1, align 4, !tbaa !8
  store i32 %78, ptr %_x51, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y52) #4
  %79 = load i32, ptr %i__2, align 4, !tbaa !8
  store i32 %79, ptr %_y52, align 4, !tbaa !8
  %80 = load i32, ptr %_x51, align 4, !tbaa !8
  %81 = load i32, ptr %_y52, align 4, !tbaa !8
  %cmp54 = icmp slt i32 %80, %81
  br i1 %cmp54, label %cond.true55, label %cond.false56

cond.true55:                                      ; preds = %cond.end45
  %82 = load i32, ptr %_x51, align 4, !tbaa !8
  br label %cond.end57

cond.false56:                                     ; preds = %cond.end45
  %83 = load i32, ptr %_y52, align 4, !tbaa !8
  br label %cond.end57

cond.end57:                                       ; preds = %cond.false56, %cond.true55
  %cond58 = phi i32 [ %82, %cond.true55 ], [ %83, %cond.false56 ]
  store i32 %cond58, ptr %tmp53, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y52) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x51) #4
  %84 = load i32, ptr %tmp53, align 4, !tbaa !8
  store i32 %84, ptr %i__1, align 4, !tbaa !8
  %85 = load ptr, ptr %ihi.addr, align 8, !tbaa !4
  %86 = load i32, ptr %85, align 4, !tbaa !8
  %87 = load ptr, ptr %ilo.addr, align 8, !tbaa !4
  %88 = load i32, ptr %87, align 4, !tbaa !8
  %sub59 = sub nsw i32 %86, %88
  store i32 %sub59, ptr %i__2, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x60) #4
  %89 = load i32, ptr %i__1, align 4, !tbaa !8
  store i32 %89, ptr %_x60, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y61) #4
  %90 = load i32, ptr %i__2, align 4, !tbaa !8
  store i32 %90, ptr %_y61, align 4, !tbaa !8
  %91 = load i32, ptr %_x60, align 4, !tbaa !8
  %92 = load i32, ptr %_y61, align 4, !tbaa !8
  %cmp63 = icmp slt i32 %91, %92
  br i1 %cmp63, label %cond.true64, label %cond.false65

cond.true64:                                      ; preds = %cond.end57
  %93 = load i32, ptr %_x60, align 4, !tbaa !8
  br label %cond.end66

cond.false65:                                     ; preds = %cond.end57
  %94 = load i32, ptr %_y61, align 4, !tbaa !8
  br label %cond.end66

cond.end66:                                       ; preds = %cond.false65, %cond.true64
  %cond67 = phi i32 [ %93, %cond.true64 ], [ %94, %cond.false65 ]
  store i32 %cond67, ptr %tmp62, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y61) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x60) #4
  %95 = load i32, ptr %tmp62, align 4, !tbaa !8
  store i32 %95, ptr %nsr, align 4, !tbaa !8
  store i32 2, ptr %i__1, align 4, !tbaa !8
  %96 = load i32, ptr %nsr, align 4, !tbaa !8
  %97 = load i32, ptr %nsr, align 4, !tbaa !8
  %rem = srem i32 %97, 2
  %sub68 = sub nsw i32 %96, %rem
  store i32 %sub68, ptr %i__2, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x69) #4
  %98 = load i32, ptr %i__1, align 4, !tbaa !8
  store i32 %98, ptr %_x69, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y70) #4
  %99 = load i32, ptr %i__2, align 4, !tbaa !8
  store i32 %99, ptr %_y70, align 4, !tbaa !8
  %100 = load i32, ptr %_x69, align 4, !tbaa !8
  %101 = load i32, ptr %_y70, align 4, !tbaa !8
  %cmp72 = icmp sgt i32 %100, %101
  br i1 %cmp72, label %cond.true73, label %cond.false74

cond.true73:                                      ; preds = %cond.end66
  %102 = load i32, ptr %_x69, align 4, !tbaa !8
  br label %cond.end75

cond.false74:                                     ; preds = %cond.end66
  %103 = load i32, ptr %_y70, align 4, !tbaa !8
  br label %cond.end75

cond.end75:                                       ; preds = %cond.false74, %cond.true73
  %cond76 = phi i32 [ %102, %cond.true73 ], [ %103, %cond.false74 ]
  store i32 %cond76, ptr %tmp71, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y70) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x69) #4
  %104 = load i32, ptr %tmp71, align 4, !tbaa !8
  store i32 %104, ptr %nsr, align 4, !tbaa !8
  %105 = load i32, ptr %nwr, align 4, !tbaa !8
  %add77 = add nsw i32 %105, 1
  store i32 %add77, ptr %i__1, align 4, !tbaa !8
  %106 = load ptr, ptr %wantt.addr, align 8, !tbaa !4
  %107 = load ptr, ptr %wantz.addr, align 8, !tbaa !4
  %108 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %109 = load ptr, ptr %ilo.addr, align 8, !tbaa !4
  %110 = load ptr, ptr %ihi.addr, align 8, !tbaa !4
  %111 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %112 = load i32, ptr %h_offset, align 4, !tbaa !8
  %idxprom78 = sext i32 %112 to i64
  %arrayidx79 = getelementptr inbounds %struct.complex, ptr %111, i64 %idxprom78
  %113 = load ptr, ptr %ldh.addr, align 8, !tbaa !4
  %114 = load ptr, ptr %iloz.addr, align 8, !tbaa !4
  %115 = load ptr, ptr %ihiz.addr, align 8, !tbaa !4
  %116 = load ptr, ptr %z__.addr, align 8, !tbaa !4
  %117 = load i32, ptr %z_offset, align 4, !tbaa !8
  %idxprom80 = sext i32 %117 to i64
  %arrayidx81 = getelementptr inbounds %struct.complex, ptr %116, i64 %idxprom80
  %118 = load ptr, ptr %ldz.addr, align 8, !tbaa !4
  %119 = load ptr, ptr %w.addr, align 8, !tbaa !4
  %arrayidx82 = getelementptr inbounds %struct.complex, ptr %119, i64 1
  %120 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %121 = load i32, ptr %h_offset, align 4, !tbaa !8
  %idxprom83 = sext i32 %121 to i64
  %arrayidx84 = getelementptr inbounds %struct.complex, ptr %120, i64 %idxprom83
  %122 = load ptr, ptr %ldh.addr, align 8, !tbaa !4
  %123 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %124 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %125 = load i32, ptr %h_offset, align 4, !tbaa !8
  %idxprom85 = sext i32 %125 to i64
  %arrayidx86 = getelementptr inbounds %struct.complex, ptr %124, i64 %idxprom85
  %126 = load ptr, ptr %ldh.addr, align 8, !tbaa !4
  %127 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %128 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %129 = load i32, ptr %h_offset, align 4, !tbaa !8
  %idxprom87 = sext i32 %129 to i64
  %arrayidx88 = getelementptr inbounds %struct.complex, ptr %128, i64 %idxprom87
  %130 = load ptr, ptr %ldh.addr, align 8, !tbaa !4
  %131 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx89 = getelementptr inbounds %struct.complex, ptr %131, i64 1
  %call90 = call i32 @claqr2_(ptr noundef %106, ptr noundef %107, ptr noundef %108, ptr noundef %109, ptr noundef %110, ptr noundef %i__1, ptr noundef %arrayidx79, ptr noundef %113, ptr noundef %114, ptr noundef %115, ptr noundef %arrayidx81, ptr noundef %118, ptr noundef %ls, ptr noundef %ld, ptr noundef %arrayidx82, ptr noundef %arrayidx84, ptr noundef %122, ptr noundef %123, ptr noundef %arrayidx86, ptr noundef %126, ptr noundef %127, ptr noundef %arrayidx88, ptr noundef %130, ptr noundef %arrayidx89, ptr noundef @c_n1)
  %132 = load i32, ptr %nsr, align 4, !tbaa !8
  %mul = mul nsw i32 %132, 3
  %div91 = sdiv i32 %mul, 2
  store i32 %div91, ptr %i__1, align 4, !tbaa !8
  %133 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx92 = getelementptr inbounds %struct.complex, ptr %133, i64 1
  %r93 = getelementptr inbounds %struct.complex, ptr %arrayidx92, i32 0, i32 0
  %134 = load float, ptr %r93, align 4, !tbaa !10
  %conv = fptosi float %134 to i32
  store i32 %conv, ptr %i__2, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x94) #4
  %135 = load i32, ptr %i__1, align 4, !tbaa !8
  store i32 %135, ptr %_x94, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y95) #4
  %136 = load i32, ptr %i__2, align 4, !tbaa !8
  store i32 %136, ptr %_y95, align 4, !tbaa !8
  %137 = load i32, ptr %_x94, align 4, !tbaa !8
  %138 = load i32, ptr %_y95, align 4, !tbaa !8
  %cmp97 = icmp sgt i32 %137, %138
  br i1 %cmp97, label %cond.true99, label %cond.false100

cond.true99:                                      ; preds = %cond.end75
  %139 = load i32, ptr %_x94, align 4, !tbaa !8
  br label %cond.end101

cond.false100:                                    ; preds = %cond.end75
  %140 = load i32, ptr %_y95, align 4, !tbaa !8
  br label %cond.end101

cond.end101:                                      ; preds = %cond.false100, %cond.true99
  %cond102 = phi i32 [ %139, %cond.true99 ], [ %140, %cond.false100 ]
  store i32 %cond102, ptr %tmp96, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y95) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x94) #4
  %141 = load i32, ptr %tmp96, align 4, !tbaa !8
  store i32 %141, ptr %lwkopt, align 4, !tbaa !8
  %142 = load ptr, ptr %lwork.addr, align 8, !tbaa !4
  %143 = load i32, ptr %142, align 4, !tbaa !8
  %cmp103 = icmp eq i32 %143, -1
  br i1 %cmp103, label %if.then105, label %if.end115

if.then105:                                       ; preds = %cond.end101
  %144 = load i32, ptr %lwkopt, align 4, !tbaa !8
  %conv106 = sitofp i32 %144 to float
  store float %conv106, ptr %r__1, align 4, !tbaa !15
  %145 = load float, ptr %r__1, align 4, !tbaa !15
  %r107 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float %145, ptr %r107, align 4, !tbaa !10
  %i108 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float 0.000000e+00, ptr %i108, align 4, !tbaa !13
  %r109 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %146 = load float, ptr %r109, align 4, !tbaa !10
  %147 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx110 = getelementptr inbounds %struct.complex, ptr %147, i64 1
  %r111 = getelementptr inbounds %struct.complex, ptr %arrayidx110, i32 0, i32 0
  store float %146, ptr %r111, align 4, !tbaa !10
  %i112 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %148 = load float, ptr %i112, align 4, !tbaa !13
  %149 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx113 = getelementptr inbounds %struct.complex, ptr %149, i64 1
  %i114 = getelementptr inbounds %struct.complex, ptr %arrayidx113, i32 0, i32 1
  store float %148, ptr %i114, align 4, !tbaa !13
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end115:                                        ; preds = %cond.end101
  %arraydecay116 = getelementptr inbounds [2 x i8], ptr %jbcmpz, i64 0, i64 0
  %150 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %151 = load ptr, ptr %ilo.addr, align 8, !tbaa !4
  %152 = load ptr, ptr %ihi.addr, align 8, !tbaa !4
  %153 = load ptr, ptr %lwork.addr, align 8, !tbaa !4
  %call117 = call i32 @ilaenv_(ptr noundef @c__12, ptr noundef @.str, ptr noundef %arraydecay116, ptr noundef %150, ptr noundef %151, ptr noundef %152, ptr noundef %153)
  store i32 %call117, ptr %nmin, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x118) #4
  store i32 15, ptr %_x118, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y119) #4
  %154 = load i32, ptr %nmin, align 4, !tbaa !8
  store i32 %154, ptr %_y119, align 4, !tbaa !8
  %155 = load i32, ptr %_x118, align 4, !tbaa !8
  %156 = load i32, ptr %_y119, align 4, !tbaa !8
  %cmp121 = icmp sgt i32 %155, %156
  br i1 %cmp121, label %cond.true123, label %cond.false124

cond.true123:                                     ; preds = %if.end115
  %157 = load i32, ptr %_x118, align 4, !tbaa !8
  br label %cond.end125

cond.false124:                                    ; preds = %if.end115
  %158 = load i32, ptr %_y119, align 4, !tbaa !8
  br label %cond.end125

cond.end125:                                      ; preds = %cond.false124, %cond.true123
  %cond126 = phi i32 [ %157, %cond.true123 ], [ %158, %cond.false124 ]
  store i32 %cond126, ptr %tmp120, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y119) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x118) #4
  %159 = load i32, ptr %tmp120, align 4, !tbaa !8
  store i32 %159, ptr %nmin, align 4, !tbaa !8
  %arraydecay127 = getelementptr inbounds [2 x i8], ptr %jbcmpz, i64 0, i64 0
  %160 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %161 = load ptr, ptr %ilo.addr, align 8, !tbaa !4
  %162 = load ptr, ptr %ihi.addr, align 8, !tbaa !4
  %163 = load ptr, ptr %lwork.addr, align 8, !tbaa !4
  %call128 = call i32 @ilaenv_(ptr noundef @c__14, ptr noundef @.str, ptr noundef %arraydecay127, ptr noundef %160, ptr noundef %161, ptr noundef %162, ptr noundef %163)
  store i32 %call128, ptr %nibble, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x129) #4
  store i32 0, ptr %_x129, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y130) #4
  %164 = load i32, ptr %nibble, align 4, !tbaa !8
  store i32 %164, ptr %_y130, align 4, !tbaa !8
  %165 = load i32, ptr %_x129, align 4, !tbaa !8
  %166 = load i32, ptr %_y130, align 4, !tbaa !8
  %cmp132 = icmp sgt i32 %165, %166
  br i1 %cmp132, label %cond.true134, label %cond.false135

cond.true134:                                     ; preds = %cond.end125
  %167 = load i32, ptr %_x129, align 4, !tbaa !8
  br label %cond.end136

cond.false135:                                    ; preds = %cond.end125
  %168 = load i32, ptr %_y130, align 4, !tbaa !8
  br label %cond.end136

cond.end136:                                      ; preds = %cond.false135, %cond.true134
  %cond137 = phi i32 [ %167, %cond.true134 ], [ %168, %cond.false135 ]
  store i32 %cond137, ptr %tmp131, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y130) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x129) #4
  %169 = load i32, ptr %tmp131, align 4, !tbaa !8
  store i32 %169, ptr %nibble, align 4, !tbaa !8
  %arraydecay138 = getelementptr inbounds [2 x i8], ptr %jbcmpz, i64 0, i64 0
  %170 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %171 = load ptr, ptr %ilo.addr, align 8, !tbaa !4
  %172 = load ptr, ptr %ihi.addr, align 8, !tbaa !4
  %173 = load ptr, ptr %lwork.addr, align 8, !tbaa !4
  %call139 = call i32 @ilaenv_(ptr noundef @c__16, ptr noundef @.str, ptr noundef %arraydecay138, ptr noundef %170, ptr noundef %171, ptr noundef %172, ptr noundef %173)
  store i32 %call139, ptr %kacc22, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x140) #4
  store i32 0, ptr %_x140, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y141) #4
  %174 = load i32, ptr %kacc22, align 4, !tbaa !8
  store i32 %174, ptr %_y141, align 4, !tbaa !8
  %175 = load i32, ptr %_x140, align 4, !tbaa !8
  %176 = load i32, ptr %_y141, align 4, !tbaa !8
  %cmp143 = icmp sgt i32 %175, %176
  br i1 %cmp143, label %cond.true145, label %cond.false146

cond.true145:                                     ; preds = %cond.end136
  %177 = load i32, ptr %_x140, align 4, !tbaa !8
  br label %cond.end147

cond.false146:                                    ; preds = %cond.end136
  %178 = load i32, ptr %_y141, align 4, !tbaa !8
  br label %cond.end147

cond.end147:                                      ; preds = %cond.false146, %cond.true145
  %cond148 = phi i32 [ %177, %cond.true145 ], [ %178, %cond.false146 ]
  store i32 %cond148, ptr %tmp142, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y141) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x140) #4
  %179 = load i32, ptr %tmp142, align 4, !tbaa !8
  store i32 %179, ptr %kacc22, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x149) #4
  store i32 2, ptr %_x149, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y150) #4
  %180 = load i32, ptr %kacc22, align 4, !tbaa !8
  store i32 %180, ptr %_y150, align 4, !tbaa !8
  %181 = load i32, ptr %_x149, align 4, !tbaa !8
  %182 = load i32, ptr %_y150, align 4, !tbaa !8
  %cmp152 = icmp slt i32 %181, %182
  br i1 %cmp152, label %cond.true154, label %cond.false155

cond.true154:                                     ; preds = %cond.end147
  %183 = load i32, ptr %_x149, align 4, !tbaa !8
  br label %cond.end156

cond.false155:                                    ; preds = %cond.end147
  %184 = load i32, ptr %_y150, align 4, !tbaa !8
  br label %cond.end156

cond.end156:                                      ; preds = %cond.false155, %cond.true154
  %cond157 = phi i32 [ %183, %cond.true154 ], [ %184, %cond.false155 ]
  store i32 %cond157, ptr %tmp151, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y150) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x149) #4
  %185 = load i32, ptr %tmp151, align 4, !tbaa !8
  store i32 %185, ptr %kacc22, align 4, !tbaa !8
  %186 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %187 = load i32, ptr %186, align 4, !tbaa !8
  %sub158 = sub nsw i32 %187, 1
  %div159 = sdiv i32 %sub158, 3
  store i32 %div159, ptr %i__1, align 4, !tbaa !8
  %188 = load ptr, ptr %lwork.addr, align 8, !tbaa !4
  %189 = load i32, ptr %188, align 4, !tbaa !8
  %div160 = sdiv i32 %189, 2
  store i32 %div160, ptr %i__2, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x161) #4
  %190 = load i32, ptr %i__1, align 4, !tbaa !8
  store i32 %190, ptr %_x161, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y162) #4
  %191 = load i32, ptr %i__2, align 4, !tbaa !8
  store i32 %191, ptr %_y162, align 4, !tbaa !8
  %192 = load i32, ptr %_x161, align 4, !tbaa !8
  %193 = load i32, ptr %_y162, align 4, !tbaa !8
  %cmp164 = icmp slt i32 %192, %193
  br i1 %cmp164, label %cond.true166, label %cond.false167

cond.true166:                                     ; preds = %cond.end156
  %194 = load i32, ptr %_x161, align 4, !tbaa !8
  br label %cond.end168

cond.false167:                                    ; preds = %cond.end156
  %195 = load i32, ptr %_y162, align 4, !tbaa !8
  br label %cond.end168

cond.end168:                                      ; preds = %cond.false167, %cond.true166
  %cond169 = phi i32 [ %194, %cond.true166 ], [ %195, %cond.false167 ]
  store i32 %cond169, ptr %tmp163, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y162) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x161) #4
  %196 = load i32, ptr %tmp163, align 4, !tbaa !8
  store i32 %196, ptr %nwmax, align 4, !tbaa !8
  %197 = load i32, ptr %nwmax, align 4, !tbaa !8
  store i32 %197, ptr %nw, align 4, !tbaa !8
  %198 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %199 = load i32, ptr %198, align 4, !tbaa !8
  %sub170 = sub nsw i32 %199, 3
  %div171 = sdiv i32 %sub170, 6
  store i32 %div171, ptr %i__1, align 4, !tbaa !8
  %200 = load ptr, ptr %lwork.addr, align 8, !tbaa !4
  %201 = load i32, ptr %200, align 4, !tbaa !8
  %shl = shl i32 %201, 1
  %div172 = sdiv i32 %shl, 3
  store i32 %div172, ptr %i__2, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x173) #4
  %202 = load i32, ptr %i__1, align 4, !tbaa !8
  store i32 %202, ptr %_x173, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y174) #4
  %203 = load i32, ptr %i__2, align 4, !tbaa !8
  store i32 %203, ptr %_y174, align 4, !tbaa !8
  %204 = load i32, ptr %_x173, align 4, !tbaa !8
  %205 = load i32, ptr %_y174, align 4, !tbaa !8
  %cmp176 = icmp slt i32 %204, %205
  br i1 %cmp176, label %cond.true178, label %cond.false179

cond.true178:                                     ; preds = %cond.end168
  %206 = load i32, ptr %_x173, align 4, !tbaa !8
  br label %cond.end180

cond.false179:                                    ; preds = %cond.end168
  %207 = load i32, ptr %_y174, align 4, !tbaa !8
  br label %cond.end180

cond.end180:                                      ; preds = %cond.false179, %cond.true178
  %cond181 = phi i32 [ %206, %cond.true178 ], [ %207, %cond.false179 ]
  store i32 %cond181, ptr %tmp175, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y174) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x173) #4
  %208 = load i32, ptr %tmp175, align 4, !tbaa !8
  store i32 %208, ptr %nsmax, align 4, !tbaa !8
  %209 = load i32, ptr %nsmax, align 4, !tbaa !8
  %rem182 = srem i32 %209, 2
  %210 = load i32, ptr %nsmax, align 4, !tbaa !8
  %sub183 = sub nsw i32 %210, %rem182
  store i32 %sub183, ptr %nsmax, align 4, !tbaa !8
  store i32 1, ptr %ndfl, align 4, !tbaa !8
  store i32 10, ptr %i__1, align 4, !tbaa !8
  %211 = load ptr, ptr %ihi.addr, align 8, !tbaa !4
  %212 = load i32, ptr %211, align 4, !tbaa !8
  %213 = load ptr, ptr %ilo.addr, align 8, !tbaa !4
  %214 = load i32, ptr %213, align 4, !tbaa !8
  %sub184 = sub nsw i32 %212, %214
  %add185 = add nsw i32 %sub184, 1
  store i32 %add185, ptr %i__2, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x186) #4
  %215 = load i32, ptr %i__1, align 4, !tbaa !8
  store i32 %215, ptr %_x186, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y187) #4
  %216 = load i32, ptr %i__2, align 4, !tbaa !8
  store i32 %216, ptr %_y187, align 4, !tbaa !8
  %217 = load i32, ptr %_x186, align 4, !tbaa !8
  %218 = load i32, ptr %_y187, align 4, !tbaa !8
  %cmp189 = icmp sgt i32 %217, %218
  br i1 %cmp189, label %cond.true191, label %cond.false192

cond.true191:                                     ; preds = %cond.end180
  %219 = load i32, ptr %_x186, align 4, !tbaa !8
  br label %cond.end193

cond.false192:                                    ; preds = %cond.end180
  %220 = load i32, ptr %_y187, align 4, !tbaa !8
  br label %cond.end193

cond.end193:                                      ; preds = %cond.false192, %cond.true191
  %cond194 = phi i32 [ %219, %cond.true191 ], [ %220, %cond.false192 ]
  store i32 %cond194, ptr %tmp188, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y187) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x186) #4
  %221 = load i32, ptr %tmp188, align 4, !tbaa !8
  %mul195 = mul nsw i32 %221, 30
  store i32 %mul195, ptr %itmax, align 4, !tbaa !8
  %222 = load ptr, ptr %ihi.addr, align 8, !tbaa !4
  %223 = load i32, ptr %222, align 4, !tbaa !8
  store i32 %223, ptr %kbot, align 4, !tbaa !8
  %224 = load i32, ptr %itmax, align 4, !tbaa !8
  store i32 %224, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %it, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc1089, %cond.end193
  %225 = load i32, ptr %it, align 4, !tbaa !8
  %226 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp196 = icmp sle i32 %225, %226
  br i1 %cmp196, label %for.body, label %for.end1091

for.body:                                         ; preds = %for.cond
  %227 = load i32, ptr %kbot, align 4, !tbaa !8
  %228 = load ptr, ptr %ilo.addr, align 8, !tbaa !4
  %229 = load i32, ptr %228, align 4, !tbaa !8
  %cmp198 = icmp slt i32 %227, %229
  br i1 %cmp198, label %if.then200, label %if.end201

if.then200:                                       ; preds = %for.body
  br label %L80

if.end201:                                        ; preds = %for.body
  %230 = load ptr, ptr %ilo.addr, align 8, !tbaa !4
  %231 = load i32, ptr %230, align 4, !tbaa !8
  %add202 = add nsw i32 %231, 1
  store i32 %add202, ptr %i__2, align 4, !tbaa !8
  %232 = load i32, ptr %kbot, align 4, !tbaa !8
  store i32 %232, ptr %k, align 4, !tbaa !8
  br label %for.cond203

for.cond203:                                      ; preds = %for.inc, %if.end201
  %233 = load i32, ptr %k, align 4, !tbaa !8
  %234 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp204 = icmp sge i32 %233, %234
  br i1 %cmp204, label %for.body206, label %for.end

for.body206:                                      ; preds = %for.cond203
  %235 = load i32, ptr %k, align 4, !tbaa !8
  %236 = load i32, ptr %k, align 4, !tbaa !8
  %sub207 = sub nsw i32 %236, 1
  %237 = load i32, ptr %h_dim1, align 4, !tbaa !8
  %mul208 = mul nsw i32 %sub207, %237
  %add209 = add nsw i32 %235, %mul208
  store i32 %add209, ptr %i__3, align 4, !tbaa !8
  %238 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %239 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom210 = sext i32 %239 to i64
  %arrayidx211 = getelementptr inbounds %struct.complex, ptr %238, i64 %idxprom210
  %r212 = getelementptr inbounds %struct.complex, ptr %arrayidx211, i32 0, i32 0
  %240 = load float, ptr %r212, align 4, !tbaa !10
  %cmp213 = fcmp oeq float %240, 0.000000e+00
  br i1 %cmp213, label %land.lhs.true, label %if.end221

land.lhs.true:                                    ; preds = %for.body206
  %241 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %242 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom215 = sext i32 %242 to i64
  %arrayidx216 = getelementptr inbounds %struct.complex, ptr %241, i64 %idxprom215
  %i217 = getelementptr inbounds %struct.complex, ptr %arrayidx216, i32 0, i32 1
  %243 = load float, ptr %i217, align 4, !tbaa !13
  %cmp218 = fcmp oeq float %243, 0.000000e+00
  br i1 %cmp218, label %if.then220, label %if.end221

if.then220:                                       ; preds = %land.lhs.true
  br label %L20

if.end221:                                        ; preds = %land.lhs.true, %for.body206
  br label %for.inc

for.inc:                                          ; preds = %if.end221
  %244 = load i32, ptr %k, align 4, !tbaa !8
  %dec = add nsw i32 %244, -1
  store i32 %dec, ptr %k, align 4, !tbaa !8
  br label %for.cond203, !llvm.loop !16

for.end:                                          ; preds = %for.cond203
  %245 = load ptr, ptr %ilo.addr, align 8, !tbaa !4
  %246 = load i32, ptr %245, align 4, !tbaa !8
  store i32 %246, ptr %k, align 4, !tbaa !8
  br label %L20

L20:                                              ; preds = %for.end, %if.then220
  %247 = load i32, ptr %k, align 4, !tbaa !8
  store i32 %247, ptr %ktop, align 4, !tbaa !8
  %248 = load i32, ptr %kbot, align 4, !tbaa !8
  %249 = load i32, ptr %ktop, align 4, !tbaa !8
  %sub222 = sub nsw i32 %248, %249
  %add223 = add nsw i32 %sub222, 1
  store i32 %add223, ptr %nh, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x224) #4
  %250 = load i32, ptr %nh, align 4, !tbaa !8
  store i32 %250, ptr %_x224, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y225) #4
  %251 = load i32, ptr %nwmax, align 4, !tbaa !8
  store i32 %251, ptr %_y225, align 4, !tbaa !8
  %252 = load i32, ptr %_x224, align 4, !tbaa !8
  %253 = load i32, ptr %_y225, align 4, !tbaa !8
  %cmp227 = icmp slt i32 %252, %253
  br i1 %cmp227, label %cond.true229, label %cond.false230

cond.true229:                                     ; preds = %L20
  %254 = load i32, ptr %_x224, align 4, !tbaa !8
  br label %cond.end231

cond.false230:                                    ; preds = %L20
  %255 = load i32, ptr %_y225, align 4, !tbaa !8
  br label %cond.end231

cond.end231:                                      ; preds = %cond.false230, %cond.true229
  %cond232 = phi i32 [ %254, %cond.true229 ], [ %255, %cond.false230 ]
  store i32 %cond232, ptr %tmp226, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y225) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x224) #4
  %256 = load i32, ptr %tmp226, align 4, !tbaa !8
  store i32 %256, ptr %nwupbd, align 4, !tbaa !8
  %257 = load i32, ptr %ndfl, align 4, !tbaa !8
  %cmp233 = icmp slt i32 %257, 5
  br i1 %cmp233, label %if.then235, label %if.else245

if.then235:                                       ; preds = %cond.end231
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x236) #4
  %258 = load i32, ptr %nwupbd, align 4, !tbaa !8
  store i32 %258, ptr %_x236, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y237) #4
  %259 = load i32, ptr %nwr, align 4, !tbaa !8
  store i32 %259, ptr %_y237, align 4, !tbaa !8
  %260 = load i32, ptr %_x236, align 4, !tbaa !8
  %261 = load i32, ptr %_y237, align 4, !tbaa !8
  %cmp239 = icmp slt i32 %260, %261
  br i1 %cmp239, label %cond.true241, label %cond.false242

cond.true241:                                     ; preds = %if.then235
  %262 = load i32, ptr %_x236, align 4, !tbaa !8
  br label %cond.end243

cond.false242:                                    ; preds = %if.then235
  %263 = load i32, ptr %_y237, align 4, !tbaa !8
  br label %cond.end243

cond.end243:                                      ; preds = %cond.false242, %cond.true241
  %cond244 = phi i32 [ %262, %cond.true241 ], [ %263, %cond.false242 ]
  store i32 %cond244, ptr %tmp238, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y237) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x236) #4
  %264 = load i32, ptr %tmp238, align 4, !tbaa !8
  store i32 %264, ptr %nw, align 4, !tbaa !8
  br label %if.end256

if.else245:                                       ; preds = %cond.end231
  %265 = load i32, ptr %nwupbd, align 4, !tbaa !8
  store i32 %265, ptr %i__2, align 4, !tbaa !8
  %266 = load i32, ptr %nw, align 4, !tbaa !8
  %shl246 = shl i32 %266, 1
  store i32 %shl246, ptr %i__3, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x247) #4
  %267 = load i32, ptr %i__2, align 4, !tbaa !8
  store i32 %267, ptr %_x247, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y248) #4
  %268 = load i32, ptr %i__3, align 4, !tbaa !8
  store i32 %268, ptr %_y248, align 4, !tbaa !8
  %269 = load i32, ptr %_x247, align 4, !tbaa !8
  %270 = load i32, ptr %_y248, align 4, !tbaa !8
  %cmp250 = icmp slt i32 %269, %270
  br i1 %cmp250, label %cond.true252, label %cond.false253

cond.true252:                                     ; preds = %if.else245
  %271 = load i32, ptr %_x247, align 4, !tbaa !8
  br label %cond.end254

cond.false253:                                    ; preds = %if.else245
  %272 = load i32, ptr %_y248, align 4, !tbaa !8
  br label %cond.end254

cond.end254:                                      ; preds = %cond.false253, %cond.true252
  %cond255 = phi i32 [ %271, %cond.true252 ], [ %272, %cond.false253 ]
  store i32 %cond255, ptr %tmp249, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y248) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x247) #4
  %273 = load i32, ptr %tmp249, align 4, !tbaa !8
  store i32 %273, ptr %nw, align 4, !tbaa !8
  br label %if.end256

if.end256:                                        ; preds = %cond.end254, %cond.end243
  %274 = load i32, ptr %nw, align 4, !tbaa !8
  %275 = load i32, ptr %nwmax, align 4, !tbaa !8
  %cmp257 = icmp slt i32 %274, %275
  br i1 %cmp257, label %if.then259, label %if.end320

if.then259:                                       ; preds = %if.end256
  %276 = load i32, ptr %nw, align 4, !tbaa !8
  %277 = load i32, ptr %nh, align 4, !tbaa !8
  %sub260 = sub nsw i32 %277, 1
  %cmp261 = icmp sge i32 %276, %sub260
  br i1 %cmp261, label %if.then263, label %if.else264

if.then263:                                       ; preds = %if.then259
  %278 = load i32, ptr %nh, align 4, !tbaa !8
  store i32 %278, ptr %nw, align 4, !tbaa !8
  br label %if.end319

if.else264:                                       ; preds = %if.then259
  %279 = load i32, ptr %kbot, align 4, !tbaa !8
  %280 = load i32, ptr %nw, align 4, !tbaa !8
  %sub265 = sub nsw i32 %279, %280
  %add266 = add nsw i32 %sub265, 1
  store i32 %add266, ptr %kwtop, align 4, !tbaa !8
  %281 = load i32, ptr %kwtop, align 4, !tbaa !8
  %282 = load i32, ptr %kwtop, align 4, !tbaa !8
  %sub267 = sub nsw i32 %282, 1
  %283 = load i32, ptr %h_dim1, align 4, !tbaa !8
  %mul268 = mul nsw i32 %sub267, %283
  %add269 = add nsw i32 %281, %mul268
  store i32 %add269, ptr %i__2, align 4, !tbaa !8
  %284 = load i32, ptr %kwtop, align 4, !tbaa !8
  %sub270 = sub nsw i32 %284, 1
  %285 = load i32, ptr %kwtop, align 4, !tbaa !8
  %sub271 = sub nsw i32 %285, 2
  %286 = load i32, ptr %h_dim1, align 4, !tbaa !8
  %mul272 = mul nsw i32 %sub271, %286
  %add273 = add nsw i32 %sub270, %mul272
  store i32 %add273, ptr %i__3, align 4, !tbaa !8
  %287 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %288 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom274 = sext i32 %288 to i64
  %arrayidx275 = getelementptr inbounds %struct.complex, ptr %287, i64 %idxprom274
  %r276 = getelementptr inbounds %struct.complex, ptr %arrayidx275, i32 0, i32 0
  %289 = load float, ptr %r276, align 4, !tbaa !10
  store float %289, ptr %r__1, align 4, !tbaa !15
  %290 = load float, ptr %r__1, align 4, !tbaa !15
  %cmp277 = fcmp oge float %290, 0.000000e+00
  br i1 %cmp277, label %cond.true279, label %cond.false280

cond.true279:                                     ; preds = %if.else264
  %291 = load float, ptr %r__1, align 4, !tbaa !15
  br label %cond.end281

cond.false280:                                    ; preds = %if.else264
  %292 = load float, ptr %r__1, align 4, !tbaa !15
  %fneg = fneg float %292
  br label %cond.end281

cond.end281:                                      ; preds = %cond.false280, %cond.true279
  %cond282 = phi float [ %291, %cond.true279 ], [ %fneg, %cond.false280 ]
  %293 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %294 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom283 = sext i32 %294 to i64
  %arrayidx284 = getelementptr inbounds %struct.complex, ptr %293, i64 %idxprom283
  %i285 = getelementptr inbounds %struct.complex, ptr %arrayidx284, i32 0, i32 1
  %295 = load float, ptr %i285, align 4, !tbaa !13
  store float %295, ptr %r__2, align 4, !tbaa !15
  %296 = load float, ptr %r__2, align 4, !tbaa !15
  %cmp286 = fcmp oge float %296, 0.000000e+00
  br i1 %cmp286, label %cond.true288, label %cond.false289

cond.true288:                                     ; preds = %cond.end281
  %297 = load float, ptr %r__2, align 4, !tbaa !15
  br label %cond.end291

cond.false289:                                    ; preds = %cond.end281
  %298 = load float, ptr %r__2, align 4, !tbaa !15
  %fneg290 = fneg float %298
  br label %cond.end291

cond.end291:                                      ; preds = %cond.false289, %cond.true288
  %cond292 = phi float [ %297, %cond.true288 ], [ %fneg290, %cond.false289 ]
  %add293 = fadd float %cond282, %cond292
  %299 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %300 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom294 = sext i32 %300 to i64
  %arrayidx295 = getelementptr inbounds %struct.complex, ptr %299, i64 %idxprom294
  %r296 = getelementptr inbounds %struct.complex, ptr %arrayidx295, i32 0, i32 0
  %301 = load float, ptr %r296, align 4, !tbaa !10
  store float %301, ptr %r__3, align 4, !tbaa !15
  %302 = load float, ptr %r__3, align 4, !tbaa !15
  %cmp297 = fcmp oge float %302, 0.000000e+00
  br i1 %cmp297, label %cond.true299, label %cond.false300

cond.true299:                                     ; preds = %cond.end291
  %303 = load float, ptr %r__3, align 4, !tbaa !15
  br label %cond.end302

cond.false300:                                    ; preds = %cond.end291
  %304 = load float, ptr %r__3, align 4, !tbaa !15
  %fneg301 = fneg float %304
  br label %cond.end302

cond.end302:                                      ; preds = %cond.false300, %cond.true299
  %cond303 = phi float [ %303, %cond.true299 ], [ %fneg301, %cond.false300 ]
  %305 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %306 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom304 = sext i32 %306 to i64
  %arrayidx305 = getelementptr inbounds %struct.complex, ptr %305, i64 %idxprom304
  %i306 = getelementptr inbounds %struct.complex, ptr %arrayidx305, i32 0, i32 1
  %307 = load float, ptr %i306, align 4, !tbaa !13
  store float %307, ptr %r__4, align 4, !tbaa !15
  %308 = load float, ptr %r__4, align 4, !tbaa !15
  %cmp307 = fcmp oge float %308, 0.000000e+00
  br i1 %cmp307, label %cond.true309, label %cond.false310

cond.true309:                                     ; preds = %cond.end302
  %309 = load float, ptr %r__4, align 4, !tbaa !15
  br label %cond.end312

cond.false310:                                    ; preds = %cond.end302
  %310 = load float, ptr %r__4, align 4, !tbaa !15
  %fneg311 = fneg float %310
  br label %cond.end312

cond.end312:                                      ; preds = %cond.false310, %cond.true309
  %cond313 = phi float [ %309, %cond.true309 ], [ %fneg311, %cond.false310 ]
  %add314 = fadd float %cond303, %cond313
  %cmp315 = fcmp ogt float %add293, %add314
  br i1 %cmp315, label %if.then317, label %if.end318

if.then317:                                       ; preds = %cond.end312
  %311 = load i32, ptr %nw, align 4, !tbaa !8
  %inc = add nsw i32 %311, 1
  store i32 %inc, ptr %nw, align 4, !tbaa !8
  br label %if.end318

if.end318:                                        ; preds = %if.then317, %cond.end312
  br label %if.end319

if.end319:                                        ; preds = %if.end318, %if.then263
  br label %if.end320

if.end320:                                        ; preds = %if.end319, %if.end256
  %312 = load i32, ptr %ndfl, align 4, !tbaa !8
  %cmp321 = icmp slt i32 %312, 5
  br i1 %cmp321, label %if.then323, label %if.else324

if.then323:                                       ; preds = %if.end320
  store i32 -1, ptr %ndec, align 4, !tbaa !8
  br label %if.end338

if.else324:                                       ; preds = %if.end320
  %313 = load i32, ptr %ndec, align 4, !tbaa !8
  %cmp325 = icmp sge i32 %313, 0
  br i1 %cmp325, label %if.then329, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else324
  %314 = load i32, ptr %nw, align 4, !tbaa !8
  %315 = load i32, ptr %nwupbd, align 4, !tbaa !8
  %cmp327 = icmp sge i32 %314, %315
  br i1 %cmp327, label %if.then329, label %if.end337

if.then329:                                       ; preds = %lor.lhs.false, %if.else324
  %316 = load i32, ptr %ndec, align 4, !tbaa !8
  %inc330 = add nsw i32 %316, 1
  store i32 %inc330, ptr %ndec, align 4, !tbaa !8
  %317 = load i32, ptr %nw, align 4, !tbaa !8
  %318 = load i32, ptr %ndec, align 4, !tbaa !8
  %sub331 = sub nsw i32 %317, %318
  %cmp332 = icmp slt i32 %sub331, 2
  br i1 %cmp332, label %if.then334, label %if.end335

if.then334:                                       ; preds = %if.then329
  store i32 0, ptr %ndec, align 4, !tbaa !8
  br label %if.end335

if.end335:                                        ; preds = %if.then334, %if.then329
  %319 = load i32, ptr %ndec, align 4, !tbaa !8
  %320 = load i32, ptr %nw, align 4, !tbaa !8
  %sub336 = sub nsw i32 %320, %319
  store i32 %sub336, ptr %nw, align 4, !tbaa !8
  br label %if.end337

if.end337:                                        ; preds = %if.end335, %lor.lhs.false
  br label %if.end338

if.end338:                                        ; preds = %if.end337, %if.then323
  %321 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %322 = load i32, ptr %321, align 4, !tbaa !8
  %323 = load i32, ptr %nw, align 4, !tbaa !8
  %sub339 = sub nsw i32 %322, %323
  %add340 = add nsw i32 %sub339, 1
  store i32 %add340, ptr %kv, align 4, !tbaa !8
  %324 = load i32, ptr %nw, align 4, !tbaa !8
  %add341 = add nsw i32 %324, 1
  store i32 %add341, ptr %kt, align 4, !tbaa !8
  %325 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %326 = load i32, ptr %325, align 4, !tbaa !8
  %327 = load i32, ptr %nw, align 4, !tbaa !8
  %sub342 = sub nsw i32 %326, %327
  %sub343 = sub nsw i32 %sub342, 1
  %328 = load i32, ptr %kt, align 4, !tbaa !8
  %sub344 = sub nsw i32 %sub343, %328
  %add345 = add nsw i32 %sub344, 1
  store i32 %add345, ptr %nho, align 4, !tbaa !8
  %329 = load i32, ptr %nw, align 4, !tbaa !8
  %add346 = add nsw i32 %329, 2
  store i32 %add346, ptr %kwv, align 4, !tbaa !8
  %330 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %331 = load i32, ptr %330, align 4, !tbaa !8
  %332 = load i32, ptr %nw, align 4, !tbaa !8
  %sub347 = sub nsw i32 %331, %332
  %333 = load i32, ptr %kwv, align 4, !tbaa !8
  %sub348 = sub nsw i32 %sub347, %333
  %add349 = add nsw i32 %sub348, 1
  store i32 %add349, ptr %nve, align 4, !tbaa !8
  %334 = load ptr, ptr %wantt.addr, align 8, !tbaa !4
  %335 = load ptr, ptr %wantz.addr, align 8, !tbaa !4
  %336 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %337 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %338 = load i32, ptr %h_offset, align 4, !tbaa !8
  %idxprom350 = sext i32 %338 to i64
  %arrayidx351 = getelementptr inbounds %struct.complex, ptr %337, i64 %idxprom350
  %339 = load ptr, ptr %ldh.addr, align 8, !tbaa !4
  %340 = load ptr, ptr %iloz.addr, align 8, !tbaa !4
  %341 = load ptr, ptr %ihiz.addr, align 8, !tbaa !4
  %342 = load ptr, ptr %z__.addr, align 8, !tbaa !4
  %343 = load i32, ptr %z_offset, align 4, !tbaa !8
  %idxprom352 = sext i32 %343 to i64
  %arrayidx353 = getelementptr inbounds %struct.complex, ptr %342, i64 %idxprom352
  %344 = load ptr, ptr %ldz.addr, align 8, !tbaa !4
  %345 = load ptr, ptr %w.addr, align 8, !tbaa !4
  %arrayidx354 = getelementptr inbounds %struct.complex, ptr %345, i64 1
  %346 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %347 = load i32, ptr %kv, align 4, !tbaa !8
  %348 = load i32, ptr %h_dim1, align 4, !tbaa !8
  %add355 = add nsw i32 %347, %348
  %idxprom356 = sext i32 %add355 to i64
  %arrayidx357 = getelementptr inbounds %struct.complex, ptr %346, i64 %idxprom356
  %349 = load ptr, ptr %ldh.addr, align 8, !tbaa !4
  %350 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %351 = load i32, ptr %kv, align 4, !tbaa !8
  %352 = load i32, ptr %kt, align 4, !tbaa !8
  %353 = load i32, ptr %h_dim1, align 4, !tbaa !8
  %mul358 = mul nsw i32 %352, %353
  %add359 = add nsw i32 %351, %mul358
  %idxprom360 = sext i32 %add359 to i64
  %arrayidx361 = getelementptr inbounds %struct.complex, ptr %350, i64 %idxprom360
  %354 = load ptr, ptr %ldh.addr, align 8, !tbaa !4
  %355 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %356 = load i32, ptr %kwv, align 4, !tbaa !8
  %357 = load i32, ptr %h_dim1, align 4, !tbaa !8
  %add362 = add nsw i32 %356, %357
  %idxprom363 = sext i32 %add362 to i64
  %arrayidx364 = getelementptr inbounds %struct.complex, ptr %355, i64 %idxprom363
  %358 = load ptr, ptr %ldh.addr, align 8, !tbaa !4
  %359 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx365 = getelementptr inbounds %struct.complex, ptr %359, i64 1
  %360 = load ptr, ptr %lwork.addr, align 8, !tbaa !4
  %call366 = call i32 @claqr2_(ptr noundef %334, ptr noundef %335, ptr noundef %336, ptr noundef %ktop, ptr noundef %kbot, ptr noundef %nw, ptr noundef %arrayidx351, ptr noundef %339, ptr noundef %340, ptr noundef %341, ptr noundef %arrayidx353, ptr noundef %344, ptr noundef %ls, ptr noundef %ld, ptr noundef %arrayidx354, ptr noundef %arrayidx357, ptr noundef %349, ptr noundef %nho, ptr noundef %arrayidx361, ptr noundef %354, ptr noundef %nve, ptr noundef %arrayidx364, ptr noundef %358, ptr noundef %arrayidx365, ptr noundef %360)
  %361 = load i32, ptr %ld, align 4, !tbaa !8
  %362 = load i32, ptr %kbot, align 4, !tbaa !8
  %sub367 = sub nsw i32 %362, %361
  store i32 %sub367, ptr %kbot, align 4, !tbaa !8
  %363 = load i32, ptr %kbot, align 4, !tbaa !8
  %364 = load i32, ptr %ls, align 4, !tbaa !8
  %sub368 = sub nsw i32 %363, %364
  %add369 = add nsw i32 %sub368, 1
  store i32 %add369, ptr %ks, align 4, !tbaa !8
  %365 = load i32, ptr %ld, align 4, !tbaa !8
  %cmp370 = icmp eq i32 %365, 0
  br i1 %cmp370, label %if.then391, label %lor.lhs.false372

lor.lhs.false372:                                 ; preds = %if.end338
  %366 = load i32, ptr %ld, align 4, !tbaa !8
  %mul373 = mul nsw i32 %366, 100
  %367 = load i32, ptr %nw, align 4, !tbaa !8
  %368 = load i32, ptr %nibble, align 4, !tbaa !8
  %mul374 = mul nsw i32 %367, %368
  %cmp375 = icmp sle i32 %mul373, %mul374
  br i1 %cmp375, label %land.lhs.true377, label %if.end1082

land.lhs.true377:                                 ; preds = %lor.lhs.false372
  %369 = load i32, ptr %kbot, align 4, !tbaa !8
  %370 = load i32, ptr %ktop, align 4, !tbaa !8
  %sub378 = sub nsw i32 %369, %370
  %add379 = add nsw i32 %sub378, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x380) #4
  %371 = load i32, ptr %nmin, align 4, !tbaa !8
  store i32 %371, ptr %_x380, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y381) #4
  %372 = load i32, ptr %nwmax, align 4, !tbaa !8
  store i32 %372, ptr %_y381, align 4, !tbaa !8
  %373 = load i32, ptr %_x380, align 4, !tbaa !8
  %374 = load i32, ptr %_y381, align 4, !tbaa !8
  %cmp383 = icmp slt i32 %373, %374
  br i1 %cmp383, label %cond.true385, label %cond.false386

cond.true385:                                     ; preds = %land.lhs.true377
  %375 = load i32, ptr %_x380, align 4, !tbaa !8
  br label %cond.end387

cond.false386:                                    ; preds = %land.lhs.true377
  %376 = load i32, ptr %_y381, align 4, !tbaa !8
  br label %cond.end387

cond.end387:                                      ; preds = %cond.false386, %cond.true385
  %cond388 = phi i32 [ %375, %cond.true385 ], [ %376, %cond.false386 ]
  store i32 %cond388, ptr %tmp382, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y381) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x380) #4
  %377 = load i32, ptr %tmp382, align 4, !tbaa !8
  %cmp389 = icmp sgt i32 %add379, %377
  br i1 %cmp389, label %if.then391, label %if.end1082

if.then391:                                       ; preds = %cond.end387, %if.end338
  store i32 2, ptr %i__4, align 4, !tbaa !8
  %378 = load i32, ptr %kbot, align 4, !tbaa !8
  %379 = load i32, ptr %ktop, align 4, !tbaa !8
  %sub392 = sub nsw i32 %378, %379
  store i32 %sub392, ptr %i__5, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x393) #4
  %380 = load i32, ptr %nsmax, align 4, !tbaa !8
  store i32 %380, ptr %_x393, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y394) #4
  %381 = load i32, ptr %nsr, align 4, !tbaa !8
  store i32 %381, ptr %_y394, align 4, !tbaa !8
  %382 = load i32, ptr %_x393, align 4, !tbaa !8
  %383 = load i32, ptr %_y394, align 4, !tbaa !8
  %cmp396 = icmp slt i32 %382, %383
  br i1 %cmp396, label %cond.true398, label %cond.false399

cond.true398:                                     ; preds = %if.then391
  %384 = load i32, ptr %_x393, align 4, !tbaa !8
  br label %cond.end400

cond.false399:                                    ; preds = %if.then391
  %385 = load i32, ptr %_y394, align 4, !tbaa !8
  br label %cond.end400

cond.end400:                                      ; preds = %cond.false399, %cond.true398
  %cond401 = phi i32 [ %384, %cond.true398 ], [ %385, %cond.false399 ]
  store i32 %cond401, ptr %tmp395, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y394) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x393) #4
  %386 = load i32, ptr %tmp395, align 4, !tbaa !8
  store i32 %386, ptr %i__2, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x402) #4
  %387 = load i32, ptr %i__4, align 4, !tbaa !8
  store i32 %387, ptr %_x402, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y403) #4
  %388 = load i32, ptr %i__5, align 4, !tbaa !8
  store i32 %388, ptr %_y403, align 4, !tbaa !8
  %389 = load i32, ptr %_x402, align 4, !tbaa !8
  %390 = load i32, ptr %_y403, align 4, !tbaa !8
  %cmp405 = icmp sgt i32 %389, %390
  br i1 %cmp405, label %cond.true407, label %cond.false408

cond.true407:                                     ; preds = %cond.end400
  %391 = load i32, ptr %_x402, align 4, !tbaa !8
  br label %cond.end409

cond.false408:                                    ; preds = %cond.end400
  %392 = load i32, ptr %_y403, align 4, !tbaa !8
  br label %cond.end409

cond.end409:                                      ; preds = %cond.false408, %cond.true407
  %cond410 = phi i32 [ %391, %cond.true407 ], [ %392, %cond.false408 ]
  store i32 %cond410, ptr %tmp404, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y403) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x402) #4
  %393 = load i32, ptr %tmp404, align 4, !tbaa !8
  store i32 %393, ptr %i__3, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x411) #4
  %394 = load i32, ptr %i__2, align 4, !tbaa !8
  store i32 %394, ptr %_x411, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y412) #4
  %395 = load i32, ptr %i__3, align 4, !tbaa !8
  store i32 %395, ptr %_y412, align 4, !tbaa !8
  %396 = load i32, ptr %_x411, align 4, !tbaa !8
  %397 = load i32, ptr %_y412, align 4, !tbaa !8
  %cmp414 = icmp slt i32 %396, %397
  br i1 %cmp414, label %cond.true416, label %cond.false417

cond.true416:                                     ; preds = %cond.end409
  %398 = load i32, ptr %_x411, align 4, !tbaa !8
  br label %cond.end418

cond.false417:                                    ; preds = %cond.end409
  %399 = load i32, ptr %_y412, align 4, !tbaa !8
  br label %cond.end418

cond.end418:                                      ; preds = %cond.false417, %cond.true416
  %cond419 = phi i32 [ %398, %cond.true416 ], [ %399, %cond.false417 ]
  store i32 %cond419, ptr %tmp413, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y412) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x411) #4
  %400 = load i32, ptr %tmp413, align 4, !tbaa !8
  store i32 %400, ptr %ns, align 4, !tbaa !8
  %401 = load i32, ptr %ns, align 4, !tbaa !8
  %rem420 = srem i32 %401, 2
  %402 = load i32, ptr %ns, align 4, !tbaa !8
  %sub421 = sub nsw i32 %402, %rem420
  store i32 %sub421, ptr %ns, align 4, !tbaa !8
  %403 = load i32, ptr %ndfl, align 4, !tbaa !8
  %rem422 = srem i32 %403, 6
  %cmp423 = icmp eq i32 %rem422, 0
  br i1 %cmp423, label %if.then425, label %if.else493

if.then425:                                       ; preds = %cond.end418
  %404 = load i32, ptr %kbot, align 4, !tbaa !8
  %405 = load i32, ptr %ns, align 4, !tbaa !8
  %sub426 = sub nsw i32 %404, %405
  %add427 = add nsw i32 %sub426, 1
  store i32 %add427, ptr %ks, align 4, !tbaa !8
  %406 = load i32, ptr %ks, align 4, !tbaa !8
  %add428 = add nsw i32 %406, 1
  store i32 %add428, ptr %i__2, align 4, !tbaa !8
  %407 = load i32, ptr %kbot, align 4, !tbaa !8
  store i32 %407, ptr %i__, align 4, !tbaa !8
  br label %for.cond429

for.cond429:                                      ; preds = %for.inc490, %if.then425
  %408 = load i32, ptr %i__, align 4, !tbaa !8
  %409 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp430 = icmp sge i32 %408, %409
  br i1 %cmp430, label %for.body432, label %for.end492

for.body432:                                      ; preds = %for.cond429
  %410 = load i32, ptr %i__, align 4, !tbaa !8
  store i32 %410, ptr %i__3, align 4, !tbaa !8
  %411 = load i32, ptr %i__, align 4, !tbaa !8
  %412 = load i32, ptr %i__, align 4, !tbaa !8
  %413 = load i32, ptr %h_dim1, align 4, !tbaa !8
  %mul433 = mul nsw i32 %412, %413
  %add434 = add nsw i32 %411, %mul433
  store i32 %add434, ptr %i__4, align 4, !tbaa !8
  %414 = load i32, ptr %i__, align 4, !tbaa !8
  %415 = load i32, ptr %i__, align 4, !tbaa !8
  %sub435 = sub nsw i32 %415, 1
  %416 = load i32, ptr %h_dim1, align 4, !tbaa !8
  %mul436 = mul nsw i32 %sub435, %416
  %add437 = add nsw i32 %414, %mul436
  store i32 %add437, ptr %i__5, align 4, !tbaa !8
  %417 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %418 = load i32, ptr %i__5, align 4, !tbaa !8
  %idxprom438 = sext i32 %418 to i64
  %arrayidx439 = getelementptr inbounds %struct.complex, ptr %417, i64 %idxprom438
  %r440 = getelementptr inbounds %struct.complex, ptr %arrayidx439, i32 0, i32 0
  %419 = load float, ptr %r440, align 4, !tbaa !10
  store float %419, ptr %r__1, align 4, !tbaa !15
  %420 = load float, ptr %r__1, align 4, !tbaa !15
  %cmp441 = fcmp oge float %420, 0.000000e+00
  br i1 %cmp441, label %cond.true443, label %cond.false444

cond.true443:                                     ; preds = %for.body432
  %421 = load float, ptr %r__1, align 4, !tbaa !15
  br label %cond.end446

cond.false444:                                    ; preds = %for.body432
  %422 = load float, ptr %r__1, align 4, !tbaa !15
  %fneg445 = fneg float %422
  br label %cond.end446

cond.end446:                                      ; preds = %cond.false444, %cond.true443
  %cond447 = phi float [ %421, %cond.true443 ], [ %fneg445, %cond.false444 ]
  %423 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %424 = load i32, ptr %i__5, align 4, !tbaa !8
  %idxprom448 = sext i32 %424 to i64
  %arrayidx449 = getelementptr inbounds %struct.complex, ptr %423, i64 %idxprom448
  %i450 = getelementptr inbounds %struct.complex, ptr %arrayidx449, i32 0, i32 1
  %425 = load float, ptr %i450, align 4, !tbaa !13
  store float %425, ptr %r__2, align 4, !tbaa !15
  %426 = load float, ptr %r__2, align 4, !tbaa !15
  %cmp451 = fcmp oge float %426, 0.000000e+00
  br i1 %cmp451, label %cond.true453, label %cond.false454

cond.true453:                                     ; preds = %cond.end446
  %427 = load float, ptr %r__2, align 4, !tbaa !15
  br label %cond.end456

cond.false454:                                    ; preds = %cond.end446
  %428 = load float, ptr %r__2, align 4, !tbaa !15
  %fneg455 = fneg float %428
  br label %cond.end456

cond.end456:                                      ; preds = %cond.false454, %cond.true453
  %cond457 = phi float [ %427, %cond.true453 ], [ %fneg455, %cond.false454 ]
  %add458 = fadd float %cond447, %cond457
  %mul459 = fmul float %add458, 7.500000e-01
  store float %mul459, ptr %r__3, align 4, !tbaa !15
  %429 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %430 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom460 = sext i32 %430 to i64
  %arrayidx461 = getelementptr inbounds %struct.complex, ptr %429, i64 %idxprom460
  %r462 = getelementptr inbounds %struct.complex, ptr %arrayidx461, i32 0, i32 0
  %431 = load float, ptr %r462, align 4, !tbaa !10
  %432 = load float, ptr %r__3, align 4, !tbaa !15
  %add463 = fadd float %431, %432
  %r464 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float %add463, ptr %r464, align 4, !tbaa !10
  %433 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %434 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom465 = sext i32 %434 to i64
  %arrayidx466 = getelementptr inbounds %struct.complex, ptr %433, i64 %idxprom465
  %i467 = getelementptr inbounds %struct.complex, ptr %arrayidx466, i32 0, i32 1
  %435 = load float, ptr %i467, align 4, !tbaa !13
  %i468 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float %435, ptr %i468, align 4, !tbaa !13
  %r469 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %436 = load float, ptr %r469, align 4, !tbaa !10
  %437 = load ptr, ptr %w.addr, align 8, !tbaa !4
  %438 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom470 = sext i32 %438 to i64
  %arrayidx471 = getelementptr inbounds %struct.complex, ptr %437, i64 %idxprom470
  %r472 = getelementptr inbounds %struct.complex, ptr %arrayidx471, i32 0, i32 0
  store float %436, ptr %r472, align 4, !tbaa !10
  %i473 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %439 = load float, ptr %i473, align 4, !tbaa !13
  %440 = load ptr, ptr %w.addr, align 8, !tbaa !4
  %441 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom474 = sext i32 %441 to i64
  %arrayidx475 = getelementptr inbounds %struct.complex, ptr %440, i64 %idxprom474
  %i476 = getelementptr inbounds %struct.complex, ptr %arrayidx475, i32 0, i32 1
  store float %439, ptr %i476, align 4, !tbaa !13
  %442 = load i32, ptr %i__, align 4, !tbaa !8
  %sub477 = sub nsw i32 %442, 1
  store i32 %sub477, ptr %i__3, align 4, !tbaa !8
  %443 = load i32, ptr %i__, align 4, !tbaa !8
  store i32 %443, ptr %i__4, align 4, !tbaa !8
  %444 = load ptr, ptr %w.addr, align 8, !tbaa !4
  %445 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom478 = sext i32 %445 to i64
  %arrayidx479 = getelementptr inbounds %struct.complex, ptr %444, i64 %idxprom478
  %r480 = getelementptr inbounds %struct.complex, ptr %arrayidx479, i32 0, i32 0
  %446 = load float, ptr %r480, align 4, !tbaa !10
  %447 = load ptr, ptr %w.addr, align 8, !tbaa !4
  %448 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom481 = sext i32 %448 to i64
  %arrayidx482 = getelementptr inbounds %struct.complex, ptr %447, i64 %idxprom481
  %r483 = getelementptr inbounds %struct.complex, ptr %arrayidx482, i32 0, i32 0
  store float %446, ptr %r483, align 4, !tbaa !10
  %449 = load ptr, ptr %w.addr, align 8, !tbaa !4
  %450 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom484 = sext i32 %450 to i64
  %arrayidx485 = getelementptr inbounds %struct.complex, ptr %449, i64 %idxprom484
  %i486 = getelementptr inbounds %struct.complex, ptr %arrayidx485, i32 0, i32 1
  %451 = load float, ptr %i486, align 4, !tbaa !13
  %452 = load ptr, ptr %w.addr, align 8, !tbaa !4
  %453 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom487 = sext i32 %453 to i64
  %arrayidx488 = getelementptr inbounds %struct.complex, ptr %452, i64 %idxprom487
  %i489 = getelementptr inbounds %struct.complex, ptr %arrayidx488, i32 0, i32 1
  store float %451, ptr %i489, align 4, !tbaa !13
  br label %for.inc490

for.inc490:                                       ; preds = %cond.end456
  %454 = load i32, ptr %i__, align 4, !tbaa !8
  %add491 = add nsw i32 %454, -2
  store i32 %add491, ptr %i__, align 4, !tbaa !8
  br label %for.cond429, !llvm.loop !18

for.end492:                                       ; preds = %for.cond429
  br label %if.end923

if.else493:                                       ; preds = %cond.end418
  %455 = load i32, ptr %kbot, align 4, !tbaa !8
  %456 = load i32, ptr %ks, align 4, !tbaa !8
  %sub494 = sub nsw i32 %455, %456
  %add495 = add nsw i32 %sub494, 1
  %457 = load i32, ptr %ns, align 4, !tbaa !8
  %div496 = sdiv i32 %457, 2
  %cmp497 = icmp sle i32 %add495, %div496
  br i1 %cmp497, label %if.then499, label %if.end822

if.then499:                                       ; preds = %if.else493
  %458 = load i32, ptr %kbot, align 4, !tbaa !8
  %459 = load i32, ptr %ns, align 4, !tbaa !8
  %sub500 = sub nsw i32 %458, %459
  %add501 = add nsw i32 %sub500, 1
  store i32 %add501, ptr %ks, align 4, !tbaa !8
  %460 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %461 = load i32, ptr %460, align 4, !tbaa !8
  %462 = load i32, ptr %ns, align 4, !tbaa !8
  %sub502 = sub nsw i32 %461, %462
  %add503 = add nsw i32 %sub502, 1
  store i32 %add503, ptr %kt, align 4, !tbaa !8
  %463 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %464 = load i32, ptr %ks, align 4, !tbaa !8
  %465 = load i32, ptr %ks, align 4, !tbaa !8
  %466 = load i32, ptr %h_dim1, align 4, !tbaa !8
  %mul504 = mul nsw i32 %465, %466
  %add505 = add nsw i32 %464, %mul504
  %idxprom506 = sext i32 %add505 to i64
  %arrayidx507 = getelementptr inbounds %struct.complex, ptr %463, i64 %idxprom506
  %467 = load ptr, ptr %ldh.addr, align 8, !tbaa !4
  %468 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %469 = load i32, ptr %kt, align 4, !tbaa !8
  %470 = load i32, ptr %h_dim1, align 4, !tbaa !8
  %add508 = add nsw i32 %469, %470
  %idxprom509 = sext i32 %add508 to i64
  %arrayidx510 = getelementptr inbounds %struct.complex, ptr %468, i64 %idxprom509
  %471 = load ptr, ptr %ldh.addr, align 8, !tbaa !4
  %call511 = call i32 @clacpy_(ptr noundef @.str.1, ptr noundef %ns, ptr noundef %ns, ptr noundef %arrayidx507, ptr noundef %467, ptr noundef %arrayidx510, ptr noundef %471)
  %472 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %473 = load i32, ptr %kt, align 4, !tbaa !8
  %474 = load i32, ptr %h_dim1, align 4, !tbaa !8
  %add512 = add nsw i32 %473, %474
  %idxprom513 = sext i32 %add512 to i64
  %arrayidx514 = getelementptr inbounds %struct.complex, ptr %472, i64 %idxprom513
  %475 = load ptr, ptr %ldh.addr, align 8, !tbaa !4
  %476 = load ptr, ptr %w.addr, align 8, !tbaa !4
  %477 = load i32, ptr %ks, align 4, !tbaa !8
  %idxprom515 = sext i32 %477 to i64
  %arrayidx516 = getelementptr inbounds %struct.complex, ptr %476, i64 %idxprom515
  %arraydecay517 = getelementptr inbounds [1 x %struct.complex], ptr %zdum, i64 0, i64 0
  %call518 = call i32 @clahqr_(ptr noundef @c_false, ptr noundef @c_false, ptr noundef %ns, ptr noundef @c__1, ptr noundef %ns, ptr noundef %arrayidx514, ptr noundef %475, ptr noundef %arrayidx516, ptr noundef @c__1, ptr noundef @c__1, ptr noundef %arraydecay517, ptr noundef @c__1, ptr noundef %inf)
  %478 = load i32, ptr %inf, align 4, !tbaa !8
  %479 = load i32, ptr %ks, align 4, !tbaa !8
  %add519 = add nsw i32 %479, %478
  store i32 %add519, ptr %ks, align 4, !tbaa !8
  %480 = load i32, ptr %ks, align 4, !tbaa !8
  %481 = load i32, ptr %kbot, align 4, !tbaa !8
  %cmp520 = icmp sge i32 %480, %481
  br i1 %cmp520, label %if.then522, label %if.end821

if.then522:                                       ; preds = %if.then499
  %482 = load i32, ptr %kbot, align 4, !tbaa !8
  %sub523 = sub nsw i32 %482, 1
  %483 = load i32, ptr %kbot, align 4, !tbaa !8
  %sub524 = sub nsw i32 %483, 1
  %484 = load i32, ptr %h_dim1, align 4, !tbaa !8
  %mul525 = mul nsw i32 %sub524, %484
  %add526 = add nsw i32 %sub523, %mul525
  store i32 %add526, ptr %i__2, align 4, !tbaa !8
  %485 = load i32, ptr %kbot, align 4, !tbaa !8
  %486 = load i32, ptr %kbot, align 4, !tbaa !8
  %sub527 = sub nsw i32 %486, 1
  %487 = load i32, ptr %h_dim1, align 4, !tbaa !8
  %mul528 = mul nsw i32 %sub527, %487
  %add529 = add nsw i32 %485, %mul528
  store i32 %add529, ptr %i__3, align 4, !tbaa !8
  %488 = load i32, ptr %kbot, align 4, !tbaa !8
  %sub530 = sub nsw i32 %488, 1
  %489 = load i32, ptr %kbot, align 4, !tbaa !8
  %490 = load i32, ptr %h_dim1, align 4, !tbaa !8
  %mul531 = mul nsw i32 %489, %490
  %add532 = add nsw i32 %sub530, %mul531
  store i32 %add532, ptr %i__4, align 4, !tbaa !8
  %491 = load i32, ptr %kbot, align 4, !tbaa !8
  %492 = load i32, ptr %kbot, align 4, !tbaa !8
  %493 = load i32, ptr %h_dim1, align 4, !tbaa !8
  %mul533 = mul nsw i32 %492, %493
  %add534 = add nsw i32 %491, %mul533
  store i32 %add534, ptr %i__5, align 4, !tbaa !8
  %494 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %495 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom535 = sext i32 %495 to i64
  %arrayidx536 = getelementptr inbounds %struct.complex, ptr %494, i64 %idxprom535
  %r537 = getelementptr inbounds %struct.complex, ptr %arrayidx536, i32 0, i32 0
  %496 = load float, ptr %r537, align 4, !tbaa !10
  store float %496, ptr %r__1, align 4, !tbaa !15
  %497 = load float, ptr %r__1, align 4, !tbaa !15
  %cmp538 = fcmp oge float %497, 0.000000e+00
  br i1 %cmp538, label %cond.true540, label %cond.false541

cond.true540:                                     ; preds = %if.then522
  %498 = load float, ptr %r__1, align 4, !tbaa !15
  br label %cond.end543

cond.false541:                                    ; preds = %if.then522
  %499 = load float, ptr %r__1, align 4, !tbaa !15
  %fneg542 = fneg float %499
  br label %cond.end543

cond.end543:                                      ; preds = %cond.false541, %cond.true540
  %cond544 = phi float [ %498, %cond.true540 ], [ %fneg542, %cond.false541 ]
  %500 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %501 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom545 = sext i32 %501 to i64
  %arrayidx546 = getelementptr inbounds %struct.complex, ptr %500, i64 %idxprom545
  %i547 = getelementptr inbounds %struct.complex, ptr %arrayidx546, i32 0, i32 1
  %502 = load float, ptr %i547, align 4, !tbaa !13
  store float %502, ptr %r__2, align 4, !tbaa !15
  %503 = load float, ptr %r__2, align 4, !tbaa !15
  %cmp548 = fcmp oge float %503, 0.000000e+00
  br i1 %cmp548, label %cond.true550, label %cond.false551

cond.true550:                                     ; preds = %cond.end543
  %504 = load float, ptr %r__2, align 4, !tbaa !15
  br label %cond.end553

cond.false551:                                    ; preds = %cond.end543
  %505 = load float, ptr %r__2, align 4, !tbaa !15
  %fneg552 = fneg float %505
  br label %cond.end553

cond.end553:                                      ; preds = %cond.false551, %cond.true550
  %cond554 = phi float [ %504, %cond.true550 ], [ %fneg552, %cond.false551 ]
  %add555 = fadd float %cond544, %cond554
  %506 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %507 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom556 = sext i32 %507 to i64
  %arrayidx557 = getelementptr inbounds %struct.complex, ptr %506, i64 %idxprom556
  %r558 = getelementptr inbounds %struct.complex, ptr %arrayidx557, i32 0, i32 0
  %508 = load float, ptr %r558, align 4, !tbaa !10
  store float %508, ptr %r__3, align 4, !tbaa !15
  %509 = load float, ptr %r__3, align 4, !tbaa !15
  %cmp559 = fcmp oge float %509, 0.000000e+00
  br i1 %cmp559, label %cond.true561, label %cond.false562

cond.true561:                                     ; preds = %cond.end553
  %510 = load float, ptr %r__3, align 4, !tbaa !15
  br label %cond.end564

cond.false562:                                    ; preds = %cond.end553
  %511 = load float, ptr %r__3, align 4, !tbaa !15
  %fneg563 = fneg float %511
  br label %cond.end564

cond.end564:                                      ; preds = %cond.false562, %cond.true561
  %cond565 = phi float [ %510, %cond.true561 ], [ %fneg563, %cond.false562 ]
  %512 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %513 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom566 = sext i32 %513 to i64
  %arrayidx567 = getelementptr inbounds %struct.complex, ptr %512, i64 %idxprom566
  %i568 = getelementptr inbounds %struct.complex, ptr %arrayidx567, i32 0, i32 1
  %514 = load float, ptr %i568, align 4, !tbaa !13
  store float %514, ptr %r__4, align 4, !tbaa !15
  %515 = load float, ptr %r__4, align 4, !tbaa !15
  %cmp569 = fcmp oge float %515, 0.000000e+00
  br i1 %cmp569, label %cond.true571, label %cond.false572

cond.true571:                                     ; preds = %cond.end564
  %516 = load float, ptr %r__4, align 4, !tbaa !15
  br label %cond.end574

cond.false572:                                    ; preds = %cond.end564
  %517 = load float, ptr %r__4, align 4, !tbaa !15
  %fneg573 = fneg float %517
  br label %cond.end574

cond.end574:                                      ; preds = %cond.false572, %cond.true571
  %cond575 = phi float [ %516, %cond.true571 ], [ %fneg573, %cond.false572 ]
  %add576 = fadd float %cond565, %cond575
  %add577 = fadd float %add555, %add576
  %518 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %519 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom578 = sext i32 %519 to i64
  %arrayidx579 = getelementptr inbounds %struct.complex, ptr %518, i64 %idxprom578
  %r580 = getelementptr inbounds %struct.complex, ptr %arrayidx579, i32 0, i32 0
  %520 = load float, ptr %r580, align 4, !tbaa !10
  store float %520, ptr %r__5, align 4, !tbaa !15
  %521 = load float, ptr %r__5, align 4, !tbaa !15
  %cmp581 = fcmp oge float %521, 0.000000e+00
  br i1 %cmp581, label %cond.true583, label %cond.false584

cond.true583:                                     ; preds = %cond.end574
  %522 = load float, ptr %r__5, align 4, !tbaa !15
  br label %cond.end586

cond.false584:                                    ; preds = %cond.end574
  %523 = load float, ptr %r__5, align 4, !tbaa !15
  %fneg585 = fneg float %523
  br label %cond.end586

cond.end586:                                      ; preds = %cond.false584, %cond.true583
  %cond587 = phi float [ %522, %cond.true583 ], [ %fneg585, %cond.false584 ]
  %524 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %525 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom588 = sext i32 %525 to i64
  %arrayidx589 = getelementptr inbounds %struct.complex, ptr %524, i64 %idxprom588
  %i590 = getelementptr inbounds %struct.complex, ptr %arrayidx589, i32 0, i32 1
  %526 = load float, ptr %i590, align 4, !tbaa !13
  store float %526, ptr %r__6, align 4, !tbaa !15
  %527 = load float, ptr %r__6, align 4, !tbaa !15
  %cmp591 = fcmp oge float %527, 0.000000e+00
  br i1 %cmp591, label %cond.true593, label %cond.false594

cond.true593:                                     ; preds = %cond.end586
  %528 = load float, ptr %r__6, align 4, !tbaa !15
  br label %cond.end596

cond.false594:                                    ; preds = %cond.end586
  %529 = load float, ptr %r__6, align 4, !tbaa !15
  %fneg595 = fneg float %529
  br label %cond.end596

cond.end596:                                      ; preds = %cond.false594, %cond.true593
  %cond597 = phi float [ %528, %cond.true593 ], [ %fneg595, %cond.false594 ]
  %add598 = fadd float %cond587, %cond597
  %add599 = fadd float %add577, %add598
  %530 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %531 = load i32, ptr %i__5, align 4, !tbaa !8
  %idxprom600 = sext i32 %531 to i64
  %arrayidx601 = getelementptr inbounds %struct.complex, ptr %530, i64 %idxprom600
  %r602 = getelementptr inbounds %struct.complex, ptr %arrayidx601, i32 0, i32 0
  %532 = load float, ptr %r602, align 4, !tbaa !10
  store float %532, ptr %r__7, align 4, !tbaa !15
  %533 = load float, ptr %r__7, align 4, !tbaa !15
  %cmp603 = fcmp oge float %533, 0.000000e+00
  br i1 %cmp603, label %cond.true605, label %cond.false606

cond.true605:                                     ; preds = %cond.end596
  %534 = load float, ptr %r__7, align 4, !tbaa !15
  br label %cond.end608

cond.false606:                                    ; preds = %cond.end596
  %535 = load float, ptr %r__7, align 4, !tbaa !15
  %fneg607 = fneg float %535
  br label %cond.end608

cond.end608:                                      ; preds = %cond.false606, %cond.true605
  %cond609 = phi float [ %534, %cond.true605 ], [ %fneg607, %cond.false606 ]
  %536 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %537 = load i32, ptr %i__5, align 4, !tbaa !8
  %idxprom610 = sext i32 %537 to i64
  %arrayidx611 = getelementptr inbounds %struct.complex, ptr %536, i64 %idxprom610
  %i612 = getelementptr inbounds %struct.complex, ptr %arrayidx611, i32 0, i32 1
  %538 = load float, ptr %i612, align 4, !tbaa !13
  store float %538, ptr %r__8, align 4, !tbaa !15
  %539 = load float, ptr %r__8, align 4, !tbaa !15
  %cmp613 = fcmp oge float %539, 0.000000e+00
  br i1 %cmp613, label %cond.true615, label %cond.false616

cond.true615:                                     ; preds = %cond.end608
  %540 = load float, ptr %r__8, align 4, !tbaa !15
  br label %cond.end618

cond.false616:                                    ; preds = %cond.end608
  %541 = load float, ptr %r__8, align 4, !tbaa !15
  %fneg617 = fneg float %541
  br label %cond.end618

cond.end618:                                      ; preds = %cond.false616, %cond.true615
  %cond619 = phi float [ %540, %cond.true615 ], [ %fneg617, %cond.false616 ]
  %add620 = fadd float %cond609, %cond619
  %add621 = fadd float %add599, %add620
  store float %add621, ptr %s, align 4, !tbaa !15
  %542 = load i32, ptr %kbot, align 4, !tbaa !8
  %sub622 = sub nsw i32 %542, 1
  %543 = load i32, ptr %kbot, align 4, !tbaa !8
  %sub623 = sub nsw i32 %543, 1
  %544 = load i32, ptr %h_dim1, align 4, !tbaa !8
  %mul624 = mul nsw i32 %sub623, %544
  %add625 = add nsw i32 %sub622, %mul624
  store i32 %add625, ptr %i__2, align 4, !tbaa !8
  %545 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %546 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom626 = sext i32 %546 to i64
  %arrayidx627 = getelementptr inbounds %struct.complex, ptr %545, i64 %idxprom626
  %r628 = getelementptr inbounds %struct.complex, ptr %arrayidx627, i32 0, i32 0
  %547 = load float, ptr %r628, align 4, !tbaa !10
  %548 = load float, ptr %s, align 4, !tbaa !15
  %div629 = fdiv float %547, %548
  %r630 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float %div629, ptr %r630, align 4, !tbaa !10
  %549 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %550 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom631 = sext i32 %550 to i64
  %arrayidx632 = getelementptr inbounds %struct.complex, ptr %549, i64 %idxprom631
  %i633 = getelementptr inbounds %struct.complex, ptr %arrayidx632, i32 0, i32 1
  %551 = load float, ptr %i633, align 4, !tbaa !13
  %552 = load float, ptr %s, align 4, !tbaa !15
  %div634 = fdiv float %551, %552
  %i635 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float %div634, ptr %i635, align 4, !tbaa !13
  %r636 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %553 = load float, ptr %r636, align 4, !tbaa !10
  %r637 = getelementptr inbounds %struct.complex, ptr %aa, i32 0, i32 0
  store float %553, ptr %r637, align 4, !tbaa !10
  %i638 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %554 = load float, ptr %i638, align 4, !tbaa !13
  %i639 = getelementptr inbounds %struct.complex, ptr %aa, i32 0, i32 1
  store float %554, ptr %i639, align 4, !tbaa !13
  %555 = load i32, ptr %kbot, align 4, !tbaa !8
  %556 = load i32, ptr %kbot, align 4, !tbaa !8
  %sub640 = sub nsw i32 %556, 1
  %557 = load i32, ptr %h_dim1, align 4, !tbaa !8
  %mul641 = mul nsw i32 %sub640, %557
  %add642 = add nsw i32 %555, %mul641
  store i32 %add642, ptr %i__2, align 4, !tbaa !8
  %558 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %559 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom643 = sext i32 %559 to i64
  %arrayidx644 = getelementptr inbounds %struct.complex, ptr %558, i64 %idxprom643
  %r645 = getelementptr inbounds %struct.complex, ptr %arrayidx644, i32 0, i32 0
  %560 = load float, ptr %r645, align 4, !tbaa !10
  %561 = load float, ptr %s, align 4, !tbaa !15
  %div646 = fdiv float %560, %561
  %r647 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float %div646, ptr %r647, align 4, !tbaa !10
  %562 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %563 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom648 = sext i32 %563 to i64
  %arrayidx649 = getelementptr inbounds %struct.complex, ptr %562, i64 %idxprom648
  %i650 = getelementptr inbounds %struct.complex, ptr %arrayidx649, i32 0, i32 1
  %564 = load float, ptr %i650, align 4, !tbaa !13
  %565 = load float, ptr %s, align 4, !tbaa !15
  %div651 = fdiv float %564, %565
  %i652 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float %div651, ptr %i652, align 4, !tbaa !13
  %r653 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %566 = load float, ptr %r653, align 4, !tbaa !10
  %r654 = getelementptr inbounds %struct.complex, ptr %cc, i32 0, i32 0
  store float %566, ptr %r654, align 4, !tbaa !10
  %i655 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %567 = load float, ptr %i655, align 4, !tbaa !13
  %i656 = getelementptr inbounds %struct.complex, ptr %cc, i32 0, i32 1
  store float %567, ptr %i656, align 4, !tbaa !13
  %568 = load i32, ptr %kbot, align 4, !tbaa !8
  %sub657 = sub nsw i32 %568, 1
  %569 = load i32, ptr %kbot, align 4, !tbaa !8
  %570 = load i32, ptr %h_dim1, align 4, !tbaa !8
  %mul658 = mul nsw i32 %569, %570
  %add659 = add nsw i32 %sub657, %mul658
  store i32 %add659, ptr %i__2, align 4, !tbaa !8
  %571 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %572 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom660 = sext i32 %572 to i64
  %arrayidx661 = getelementptr inbounds %struct.complex, ptr %571, i64 %idxprom660
  %r662 = getelementptr inbounds %struct.complex, ptr %arrayidx661, i32 0, i32 0
  %573 = load float, ptr %r662, align 4, !tbaa !10
  %574 = load float, ptr %s, align 4, !tbaa !15
  %div663 = fdiv float %573, %574
  %r664 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float %div663, ptr %r664, align 4, !tbaa !10
  %575 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %576 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom665 = sext i32 %576 to i64
  %arrayidx666 = getelementptr inbounds %struct.complex, ptr %575, i64 %idxprom665
  %i667 = getelementptr inbounds %struct.complex, ptr %arrayidx666, i32 0, i32 1
  %577 = load float, ptr %i667, align 4, !tbaa !13
  %578 = load float, ptr %s, align 4, !tbaa !15
  %div668 = fdiv float %577, %578
  %i669 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float %div668, ptr %i669, align 4, !tbaa !13
  %r670 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %579 = load float, ptr %r670, align 4, !tbaa !10
  %r671 = getelementptr inbounds %struct.complex, ptr %bb, i32 0, i32 0
  store float %579, ptr %r671, align 4, !tbaa !10
  %i672 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %580 = load float, ptr %i672, align 4, !tbaa !13
  %i673 = getelementptr inbounds %struct.complex, ptr %bb, i32 0, i32 1
  store float %580, ptr %i673, align 4, !tbaa !13
  %581 = load i32, ptr %kbot, align 4, !tbaa !8
  %582 = load i32, ptr %kbot, align 4, !tbaa !8
  %583 = load i32, ptr %h_dim1, align 4, !tbaa !8
  %mul674 = mul nsw i32 %582, %583
  %add675 = add nsw i32 %581, %mul674
  store i32 %add675, ptr %i__2, align 4, !tbaa !8
  %584 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %585 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom676 = sext i32 %585 to i64
  %arrayidx677 = getelementptr inbounds %struct.complex, ptr %584, i64 %idxprom676
  %r678 = getelementptr inbounds %struct.complex, ptr %arrayidx677, i32 0, i32 0
  %586 = load float, ptr %r678, align 4, !tbaa !10
  %587 = load float, ptr %s, align 4, !tbaa !15
  %div679 = fdiv float %586, %587
  %r680 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float %div679, ptr %r680, align 4, !tbaa !10
  %588 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %589 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom681 = sext i32 %589 to i64
  %arrayidx682 = getelementptr inbounds %struct.complex, ptr %588, i64 %idxprom681
  %i683 = getelementptr inbounds %struct.complex, ptr %arrayidx682, i32 0, i32 1
  %590 = load float, ptr %i683, align 4, !tbaa !13
  %591 = load float, ptr %s, align 4, !tbaa !15
  %div684 = fdiv float %590, %591
  %i685 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float %div684, ptr %i685, align 4, !tbaa !13
  %r686 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %592 = load float, ptr %r686, align 4, !tbaa !10
  %r687 = getelementptr inbounds %struct.complex, ptr %dd, i32 0, i32 0
  store float %592, ptr %r687, align 4, !tbaa !10
  %i688 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %593 = load float, ptr %i688, align 4, !tbaa !13
  %i689 = getelementptr inbounds %struct.complex, ptr %dd, i32 0, i32 1
  store float %593, ptr %i689, align 4, !tbaa !13
  %r690 = getelementptr inbounds %struct.complex, ptr %aa, i32 0, i32 0
  %594 = load float, ptr %r690, align 4, !tbaa !10
  %r691 = getelementptr inbounds %struct.complex, ptr %dd, i32 0, i32 0
  %595 = load float, ptr %r691, align 4, !tbaa !10
  %add692 = fadd float %594, %595
  %r693 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  store float %add692, ptr %r693, align 4, !tbaa !10
  %i694 = getelementptr inbounds %struct.complex, ptr %aa, i32 0, i32 1
  %596 = load float, ptr %i694, align 4, !tbaa !13
  %i695 = getelementptr inbounds %struct.complex, ptr %dd, i32 0, i32 1
  %597 = load float, ptr %i695, align 4, !tbaa !13
  %add696 = fadd float %596, %597
  %i697 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  store float %add696, ptr %i697, align 4, !tbaa !13
  %r698 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  %598 = load float, ptr %r698, align 4, !tbaa !10
  %div699 = fdiv float %598, 2.000000e+00
  %r700 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float %div699, ptr %r700, align 4, !tbaa !10
  %i701 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  %599 = load float, ptr %i701, align 4, !tbaa !13
  %div702 = fdiv float %599, 2.000000e+00
  %i703 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float %div702, ptr %i703, align 4, !tbaa !13
  %r704 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %600 = load float, ptr %r704, align 4, !tbaa !10
  %r705 = getelementptr inbounds %struct.complex, ptr %tr2, i32 0, i32 0
  store float %600, ptr %r705, align 4, !tbaa !10
  %i706 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %601 = load float, ptr %i706, align 4, !tbaa !13
  %i707 = getelementptr inbounds %struct.complex, ptr %tr2, i32 0, i32 1
  store float %601, ptr %i707, align 4, !tbaa !13
  %r708 = getelementptr inbounds %struct.complex, ptr %aa, i32 0, i32 0
  %602 = load float, ptr %r708, align 4, !tbaa !10
  %r709 = getelementptr inbounds %struct.complex, ptr %tr2, i32 0, i32 0
  %603 = load float, ptr %r709, align 4, !tbaa !10
  %sub710 = fsub float %602, %603
  %r711 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 0
  store float %sub710, ptr %r711, align 4, !tbaa !10
  %i712 = getelementptr inbounds %struct.complex, ptr %aa, i32 0, i32 1
  %604 = load float, ptr %i712, align 4, !tbaa !13
  %i713 = getelementptr inbounds %struct.complex, ptr %tr2, i32 0, i32 1
  %605 = load float, ptr %i713, align 4, !tbaa !13
  %sub714 = fsub float %604, %605
  %i715 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 1
  store float %sub714, ptr %i715, align 4, !tbaa !13
  %r716 = getelementptr inbounds %struct.complex, ptr %dd, i32 0, i32 0
  %606 = load float, ptr %r716, align 4, !tbaa !10
  %r717 = getelementptr inbounds %struct.complex, ptr %tr2, i32 0, i32 0
  %607 = load float, ptr %r717, align 4, !tbaa !10
  %sub718 = fsub float %606, %607
  %r719 = getelementptr inbounds %struct.complex, ptr %q__4, i32 0, i32 0
  store float %sub718, ptr %r719, align 4, !tbaa !10
  %i720 = getelementptr inbounds %struct.complex, ptr %dd, i32 0, i32 1
  %608 = load float, ptr %i720, align 4, !tbaa !13
  %i721 = getelementptr inbounds %struct.complex, ptr %tr2, i32 0, i32 1
  %609 = load float, ptr %i721, align 4, !tbaa !13
  %sub722 = fsub float %608, %609
  %i723 = getelementptr inbounds %struct.complex, ptr %q__4, i32 0, i32 1
  store float %sub722, ptr %i723, align 4, !tbaa !13
  %r724 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 0
  %610 = load float, ptr %r724, align 4, !tbaa !10
  %r725 = getelementptr inbounds %struct.complex, ptr %q__4, i32 0, i32 0
  %611 = load float, ptr %r725, align 4, !tbaa !10
  %i727 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 1
  %612 = load float, ptr %i727, align 4, !tbaa !13
  %i728 = getelementptr inbounds %struct.complex, ptr %q__4, i32 0, i32 1
  %613 = load float, ptr %i728, align 4, !tbaa !13
  %mul729 = fmul float %612, %613
  %neg = fneg float %mul729
  %614 = call float @llvm.fmuladd.f32(float %610, float %611, float %neg)
  %r730 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  store float %614, ptr %r730, align 4, !tbaa !10
  %r731 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 0
  %615 = load float, ptr %r731, align 4, !tbaa !10
  %i732 = getelementptr inbounds %struct.complex, ptr %q__4, i32 0, i32 1
  %616 = load float, ptr %i732, align 4, !tbaa !13
  %i734 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 1
  %617 = load float, ptr %i734, align 4, !tbaa !13
  %r735 = getelementptr inbounds %struct.complex, ptr %q__4, i32 0, i32 0
  %618 = load float, ptr %r735, align 4, !tbaa !10
  %mul736 = fmul float %617, %618
  %619 = call float @llvm.fmuladd.f32(float %615, float %616, float %mul736)
  %i737 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  store float %619, ptr %i737, align 4, !tbaa !13
  %r738 = getelementptr inbounds %struct.complex, ptr %bb, i32 0, i32 0
  %620 = load float, ptr %r738, align 4, !tbaa !10
  %r739 = getelementptr inbounds %struct.complex, ptr %cc, i32 0, i32 0
  %621 = load float, ptr %r739, align 4, !tbaa !10
  %i741 = getelementptr inbounds %struct.complex, ptr %bb, i32 0, i32 1
  %622 = load float, ptr %i741, align 4, !tbaa !13
  %i742 = getelementptr inbounds %struct.complex, ptr %cc, i32 0, i32 1
  %623 = load float, ptr %i742, align 4, !tbaa !13
  %mul743 = fmul float %622, %623
  %neg744 = fneg float %mul743
  %624 = call float @llvm.fmuladd.f32(float %620, float %621, float %neg744)
  %r745 = getelementptr inbounds %struct.complex, ptr %q__5, i32 0, i32 0
  store float %624, ptr %r745, align 4, !tbaa !10
  %r746 = getelementptr inbounds %struct.complex, ptr %bb, i32 0, i32 0
  %625 = load float, ptr %r746, align 4, !tbaa !10
  %i747 = getelementptr inbounds %struct.complex, ptr %cc, i32 0, i32 1
  %626 = load float, ptr %i747, align 4, !tbaa !13
  %i749 = getelementptr inbounds %struct.complex, ptr %bb, i32 0, i32 1
  %627 = load float, ptr %i749, align 4, !tbaa !13
  %r750 = getelementptr inbounds %struct.complex, ptr %cc, i32 0, i32 0
  %628 = load float, ptr %r750, align 4, !tbaa !10
  %mul751 = fmul float %627, %628
  %629 = call float @llvm.fmuladd.f32(float %625, float %626, float %mul751)
  %i752 = getelementptr inbounds %struct.complex, ptr %q__5, i32 0, i32 1
  store float %629, ptr %i752, align 4, !tbaa !13
  %r753 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  %630 = load float, ptr %r753, align 4, !tbaa !10
  %r754 = getelementptr inbounds %struct.complex, ptr %q__5, i32 0, i32 0
  %631 = load float, ptr %r754, align 4, !tbaa !10
  %sub755 = fsub float %630, %631
  %r756 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float %sub755, ptr %r756, align 4, !tbaa !10
  %i757 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  %632 = load float, ptr %i757, align 4, !tbaa !13
  %i758 = getelementptr inbounds %struct.complex, ptr %q__5, i32 0, i32 1
  %633 = load float, ptr %i758, align 4, !tbaa !13
  %sub759 = fsub float %632, %633
  %i760 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float %sub759, ptr %i760, align 4, !tbaa !13
  %r761 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %634 = load float, ptr %r761, align 4, !tbaa !10
  %r762 = getelementptr inbounds %struct.complex, ptr %det, i32 0, i32 0
  store float %634, ptr %r762, align 4, !tbaa !10
  %i763 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %635 = load float, ptr %i763, align 4, !tbaa !13
  %i764 = getelementptr inbounds %struct.complex, ptr %det, i32 0, i32 1
  store float %635, ptr %i764, align 4, !tbaa !13
  %r765 = getelementptr inbounds %struct.complex, ptr %det, i32 0, i32 0
  %636 = load float, ptr %r765, align 4, !tbaa !10
  %fneg766 = fneg float %636
  %r767 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  store float %fneg766, ptr %r767, align 4, !tbaa !10
  %i768 = getelementptr inbounds %struct.complex, ptr %det, i32 0, i32 1
  %637 = load float, ptr %i768, align 4, !tbaa !13
  %fneg769 = fneg float %637
  %i770 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  store float %fneg769, ptr %i770, align 4, !tbaa !13
  call void @c_sqrt(ptr noundef %q__1, ptr noundef %q__2)
  %r771 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %638 = load float, ptr %r771, align 4, !tbaa !10
  %r772 = getelementptr inbounds %struct.complex, ptr %rtdisc, i32 0, i32 0
  store float %638, ptr %r772, align 4, !tbaa !10
  %i773 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %639 = load float, ptr %i773, align 4, !tbaa !13
  %i774 = getelementptr inbounds %struct.complex, ptr %rtdisc, i32 0, i32 1
  store float %639, ptr %i774, align 4, !tbaa !13
  %640 = load i32, ptr %kbot, align 4, !tbaa !8
  %sub775 = sub nsw i32 %640, 1
  store i32 %sub775, ptr %i__2, align 4, !tbaa !8
  %r776 = getelementptr inbounds %struct.complex, ptr %tr2, i32 0, i32 0
  %641 = load float, ptr %r776, align 4, !tbaa !10
  %r777 = getelementptr inbounds %struct.complex, ptr %rtdisc, i32 0, i32 0
  %642 = load float, ptr %r777, align 4, !tbaa !10
  %add778 = fadd float %641, %642
  %r779 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  store float %add778, ptr %r779, align 4, !tbaa !10
  %i780 = getelementptr inbounds %struct.complex, ptr %tr2, i32 0, i32 1
  %643 = load float, ptr %i780, align 4, !tbaa !13
  %i781 = getelementptr inbounds %struct.complex, ptr %rtdisc, i32 0, i32 1
  %644 = load float, ptr %i781, align 4, !tbaa !13
  %add782 = fadd float %643, %644
  %i783 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  store float %add782, ptr %i783, align 4, !tbaa !13
  %645 = load float, ptr %s, align 4, !tbaa !15
  %r784 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  %646 = load float, ptr %r784, align 4, !tbaa !10
  %mul785 = fmul float %645, %646
  %r786 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float %mul785, ptr %r786, align 4, !tbaa !10
  %647 = load float, ptr %s, align 4, !tbaa !15
  %i787 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  %648 = load float, ptr %i787, align 4, !tbaa !13
  %mul788 = fmul float %647, %648
  %i789 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float %mul788, ptr %i789, align 4, !tbaa !13
  %r790 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %649 = load float, ptr %r790, align 4, !tbaa !10
  %650 = load ptr, ptr %w.addr, align 8, !tbaa !4
  %651 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom791 = sext i32 %651 to i64
  %arrayidx792 = getelementptr inbounds %struct.complex, ptr %650, i64 %idxprom791
  %r793 = getelementptr inbounds %struct.complex, ptr %arrayidx792, i32 0, i32 0
  store float %649, ptr %r793, align 4, !tbaa !10
  %i794 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %652 = load float, ptr %i794, align 4, !tbaa !13
  %653 = load ptr, ptr %w.addr, align 8, !tbaa !4
  %654 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom795 = sext i32 %654 to i64
  %arrayidx796 = getelementptr inbounds %struct.complex, ptr %653, i64 %idxprom795
  %i797 = getelementptr inbounds %struct.complex, ptr %arrayidx796, i32 0, i32 1
  store float %652, ptr %i797, align 4, !tbaa !13
  %655 = load i32, ptr %kbot, align 4, !tbaa !8
  store i32 %655, ptr %i__2, align 4, !tbaa !8
  %r798 = getelementptr inbounds %struct.complex, ptr %tr2, i32 0, i32 0
  %656 = load float, ptr %r798, align 4, !tbaa !10
  %r799 = getelementptr inbounds %struct.complex, ptr %rtdisc, i32 0, i32 0
  %657 = load float, ptr %r799, align 4, !tbaa !10
  %sub800 = fsub float %656, %657
  %r801 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  store float %sub800, ptr %r801, align 4, !tbaa !10
  %i802 = getelementptr inbounds %struct.complex, ptr %tr2, i32 0, i32 1
  %658 = load float, ptr %i802, align 4, !tbaa !13
  %i803 = getelementptr inbounds %struct.complex, ptr %rtdisc, i32 0, i32 1
  %659 = load float, ptr %i803, align 4, !tbaa !13
  %sub804 = fsub float %658, %659
  %i805 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  store float %sub804, ptr %i805, align 4, !tbaa !13
  %660 = load float, ptr %s, align 4, !tbaa !15
  %r806 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  %661 = load float, ptr %r806, align 4, !tbaa !10
  %mul807 = fmul float %660, %661
  %r808 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float %mul807, ptr %r808, align 4, !tbaa !10
  %662 = load float, ptr %s, align 4, !tbaa !15
  %i809 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  %663 = load float, ptr %i809, align 4, !tbaa !13
  %mul810 = fmul float %662, %663
  %i811 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float %mul810, ptr %i811, align 4, !tbaa !13
  %r812 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %664 = load float, ptr %r812, align 4, !tbaa !10
  %665 = load ptr, ptr %w.addr, align 8, !tbaa !4
  %666 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom813 = sext i32 %666 to i64
  %arrayidx814 = getelementptr inbounds %struct.complex, ptr %665, i64 %idxprom813
  %r815 = getelementptr inbounds %struct.complex, ptr %arrayidx814, i32 0, i32 0
  store float %664, ptr %r815, align 4, !tbaa !10
  %i816 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %667 = load float, ptr %i816, align 4, !tbaa !13
  %668 = load ptr, ptr %w.addr, align 8, !tbaa !4
  %669 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom817 = sext i32 %669 to i64
  %arrayidx818 = getelementptr inbounds %struct.complex, ptr %668, i64 %idxprom817
  %i819 = getelementptr inbounds %struct.complex, ptr %arrayidx818, i32 0, i32 1
  store float %667, ptr %i819, align 4, !tbaa !13
  %670 = load i32, ptr %kbot, align 4, !tbaa !8
  %sub820 = sub nsw i32 %670, 1
  store i32 %sub820, ptr %ks, align 4, !tbaa !8
  br label %if.end821

if.end821:                                        ; preds = %cond.end618, %if.then499
  br label %if.end822

if.end822:                                        ; preds = %if.end821, %if.else493
  %671 = load i32, ptr %kbot, align 4, !tbaa !8
  %672 = load i32, ptr %ks, align 4, !tbaa !8
  %sub823 = sub nsw i32 %671, %672
  %add824 = add nsw i32 %sub823, 1
  %673 = load i32, ptr %ns, align 4, !tbaa !8
  %cmp825 = icmp sgt i32 %add824, %673
  br i1 %cmp825, label %if.then827, label %if.end922

if.then827:                                       ; preds = %if.end822
  store i32 0, ptr %sorted, align 4, !tbaa !8
  %674 = load i32, ptr %ks, align 4, !tbaa !8
  %add828 = add nsw i32 %674, 1
  store i32 %add828, ptr %i__2, align 4, !tbaa !8
  %675 = load i32, ptr %kbot, align 4, !tbaa !8
  store i32 %675, ptr %k, align 4, !tbaa !8
  br label %for.cond829

for.cond829:                                      ; preds = %for.inc919, %if.then827
  %676 = load i32, ptr %k, align 4, !tbaa !8
  %677 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp830 = icmp sge i32 %676, %677
  br i1 %cmp830, label %for.body832, label %for.end921

for.body832:                                      ; preds = %for.cond829
  %678 = load i32, ptr %sorted, align 4, !tbaa !8
  %tobool833 = icmp ne i32 %678, 0
  br i1 %tobool833, label %if.then834, label %if.end835

if.then834:                                       ; preds = %for.body832
  br label %L60

if.end835:                                        ; preds = %for.body832
  store i32 1, ptr %sorted, align 4, !tbaa !8
  %679 = load i32, ptr %k, align 4, !tbaa !8
  %sub836 = sub nsw i32 %679, 1
  store i32 %sub836, ptr %i__3, align 4, !tbaa !8
  %680 = load i32, ptr %ks, align 4, !tbaa !8
  store i32 %680, ptr %i__, align 4, !tbaa !8
  br label %for.cond837

for.cond837:                                      ; preds = %for.inc916, %if.end835
  %681 = load i32, ptr %i__, align 4, !tbaa !8
  %682 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp838 = icmp sle i32 %681, %682
  br i1 %cmp838, label %for.body840, label %for.end918

for.body840:                                      ; preds = %for.cond837
  %683 = load i32, ptr %i__, align 4, !tbaa !8
  %add841 = add nsw i32 %683, 1
  store i32 %add841, ptr %i__5, align 4, !tbaa !8
  %684 = load ptr, ptr %w.addr, align 8, !tbaa !4
  %685 = load i32, ptr %i__, align 4, !tbaa !8
  %idxprom842 = sext i32 %685 to i64
  %arrayidx843 = getelementptr inbounds %struct.complex, ptr %684, i64 %idxprom842
  %r844 = getelementptr inbounds %struct.complex, ptr %arrayidx843, i32 0, i32 0
  %686 = load float, ptr %r844, align 4, !tbaa !10
  store float %686, ptr %r__1, align 4, !tbaa !15
  %687 = load float, ptr %r__1, align 4, !tbaa !15
  %cmp845 = fcmp oge float %687, 0.000000e+00
  br i1 %cmp845, label %cond.true847, label %cond.false848

cond.true847:                                     ; preds = %for.body840
  %688 = load float, ptr %r__1, align 4, !tbaa !15
  br label %cond.end850

cond.false848:                                    ; preds = %for.body840
  %689 = load float, ptr %r__1, align 4, !tbaa !15
  %fneg849 = fneg float %689
  br label %cond.end850

cond.end850:                                      ; preds = %cond.false848, %cond.true847
  %cond851 = phi float [ %688, %cond.true847 ], [ %fneg849, %cond.false848 ]
  %690 = load ptr, ptr %w.addr, align 8, !tbaa !4
  %691 = load i32, ptr %i__, align 4, !tbaa !8
  %idxprom852 = sext i32 %691 to i64
  %arrayidx853 = getelementptr inbounds %struct.complex, ptr %690, i64 %idxprom852
  %i854 = getelementptr inbounds %struct.complex, ptr %arrayidx853, i32 0, i32 1
  %692 = load float, ptr %i854, align 4, !tbaa !13
  store float %692, ptr %r__2, align 4, !tbaa !15
  %693 = load float, ptr %r__2, align 4, !tbaa !15
  %cmp855 = fcmp oge float %693, 0.000000e+00
  br i1 %cmp855, label %cond.true857, label %cond.false858

cond.true857:                                     ; preds = %cond.end850
  %694 = load float, ptr %r__2, align 4, !tbaa !15
  br label %cond.end860

cond.false858:                                    ; preds = %cond.end850
  %695 = load float, ptr %r__2, align 4, !tbaa !15
  %fneg859 = fneg float %695
  br label %cond.end860

cond.end860:                                      ; preds = %cond.false858, %cond.true857
  %cond861 = phi float [ %694, %cond.true857 ], [ %fneg859, %cond.false858 ]
  %add862 = fadd float %cond851, %cond861
  %696 = load ptr, ptr %w.addr, align 8, !tbaa !4
  %697 = load i32, ptr %i__5, align 4, !tbaa !8
  %idxprom863 = sext i32 %697 to i64
  %arrayidx864 = getelementptr inbounds %struct.complex, ptr %696, i64 %idxprom863
  %r865 = getelementptr inbounds %struct.complex, ptr %arrayidx864, i32 0, i32 0
  %698 = load float, ptr %r865, align 4, !tbaa !10
  store float %698, ptr %r__3, align 4, !tbaa !15
  %699 = load float, ptr %r__3, align 4, !tbaa !15
  %cmp866 = fcmp oge float %699, 0.000000e+00
  br i1 %cmp866, label %cond.true868, label %cond.false869

cond.true868:                                     ; preds = %cond.end860
  %700 = load float, ptr %r__3, align 4, !tbaa !15
  br label %cond.end871

cond.false869:                                    ; preds = %cond.end860
  %701 = load float, ptr %r__3, align 4, !tbaa !15
  %fneg870 = fneg float %701
  br label %cond.end871

cond.end871:                                      ; preds = %cond.false869, %cond.true868
  %cond872 = phi float [ %700, %cond.true868 ], [ %fneg870, %cond.false869 ]
  %702 = load ptr, ptr %w.addr, align 8, !tbaa !4
  %703 = load i32, ptr %i__5, align 4, !tbaa !8
  %idxprom873 = sext i32 %703 to i64
  %arrayidx874 = getelementptr inbounds %struct.complex, ptr %702, i64 %idxprom873
  %i875 = getelementptr inbounds %struct.complex, ptr %arrayidx874, i32 0, i32 1
  %704 = load float, ptr %i875, align 4, !tbaa !13
  store float %704, ptr %r__4, align 4, !tbaa !15
  %705 = load float, ptr %r__4, align 4, !tbaa !15
  %cmp876 = fcmp oge float %705, 0.000000e+00
  br i1 %cmp876, label %cond.true878, label %cond.false879

cond.true878:                                     ; preds = %cond.end871
  %706 = load float, ptr %r__4, align 4, !tbaa !15
  br label %cond.end881

cond.false879:                                    ; preds = %cond.end871
  %707 = load float, ptr %r__4, align 4, !tbaa !15
  %fneg880 = fneg float %707
  br label %cond.end881

cond.end881:                                      ; preds = %cond.false879, %cond.true878
  %cond882 = phi float [ %706, %cond.true878 ], [ %fneg880, %cond.false879 ]
  %add883 = fadd float %cond872, %cond882
  %cmp884 = fcmp olt float %add862, %add883
  br i1 %cmp884, label %if.then886, label %if.end915

if.then886:                                       ; preds = %cond.end881
  store i32 0, ptr %sorted, align 4, !tbaa !8
  %708 = load ptr, ptr %w.addr, align 8, !tbaa !4
  %709 = load i32, ptr %i__, align 4, !tbaa !8
  %idxprom887 = sext i32 %709 to i64
  %arrayidx888 = getelementptr inbounds %struct.complex, ptr %708, i64 %idxprom887
  %r889 = getelementptr inbounds %struct.complex, ptr %arrayidx888, i32 0, i32 0
  %710 = load float, ptr %r889, align 4, !tbaa !10
  %r890 = getelementptr inbounds %struct.complex, ptr %swap, i32 0, i32 0
  store float %710, ptr %r890, align 4, !tbaa !10
  %711 = load ptr, ptr %w.addr, align 8, !tbaa !4
  %712 = load i32, ptr %i__, align 4, !tbaa !8
  %idxprom891 = sext i32 %712 to i64
  %arrayidx892 = getelementptr inbounds %struct.complex, ptr %711, i64 %idxprom891
  %i893 = getelementptr inbounds %struct.complex, ptr %arrayidx892, i32 0, i32 1
  %713 = load float, ptr %i893, align 4, !tbaa !13
  %i894 = getelementptr inbounds %struct.complex, ptr %swap, i32 0, i32 1
  store float %713, ptr %i894, align 4, !tbaa !13
  %714 = load ptr, ptr %w.addr, align 8, !tbaa !4
  %715 = load i32, ptr %i__5, align 4, !tbaa !8
  %idxprom895 = sext i32 %715 to i64
  %arrayidx896 = getelementptr inbounds %struct.complex, ptr %714, i64 %idxprom895
  %r897 = getelementptr inbounds %struct.complex, ptr %arrayidx896, i32 0, i32 0
  %716 = load float, ptr %r897, align 4, !tbaa !10
  %717 = load ptr, ptr %w.addr, align 8, !tbaa !4
  %718 = load i32, ptr %i__, align 4, !tbaa !8
  %idxprom898 = sext i32 %718 to i64
  %arrayidx899 = getelementptr inbounds %struct.complex, ptr %717, i64 %idxprom898
  %r900 = getelementptr inbounds %struct.complex, ptr %arrayidx899, i32 0, i32 0
  store float %716, ptr %r900, align 4, !tbaa !10
  %719 = load ptr, ptr %w.addr, align 8, !tbaa !4
  %720 = load i32, ptr %i__5, align 4, !tbaa !8
  %idxprom901 = sext i32 %720 to i64
  %arrayidx902 = getelementptr inbounds %struct.complex, ptr %719, i64 %idxprom901
  %i903 = getelementptr inbounds %struct.complex, ptr %arrayidx902, i32 0, i32 1
  %721 = load float, ptr %i903, align 4, !tbaa !13
  %722 = load ptr, ptr %w.addr, align 8, !tbaa !4
  %723 = load i32, ptr %i__, align 4, !tbaa !8
  %idxprom904 = sext i32 %723 to i64
  %arrayidx905 = getelementptr inbounds %struct.complex, ptr %722, i64 %idxprom904
  %i906 = getelementptr inbounds %struct.complex, ptr %arrayidx905, i32 0, i32 1
  store float %721, ptr %i906, align 4, !tbaa !13
  %r907 = getelementptr inbounds %struct.complex, ptr %swap, i32 0, i32 0
  %724 = load float, ptr %r907, align 4, !tbaa !10
  %725 = load ptr, ptr %w.addr, align 8, !tbaa !4
  %726 = load i32, ptr %i__5, align 4, !tbaa !8
  %idxprom908 = sext i32 %726 to i64
  %arrayidx909 = getelementptr inbounds %struct.complex, ptr %725, i64 %idxprom908
  %r910 = getelementptr inbounds %struct.complex, ptr %arrayidx909, i32 0, i32 0
  store float %724, ptr %r910, align 4, !tbaa !10
  %i911 = getelementptr inbounds %struct.complex, ptr %swap, i32 0, i32 1
  %727 = load float, ptr %i911, align 4, !tbaa !13
  %728 = load ptr, ptr %w.addr, align 8, !tbaa !4
  %729 = load i32, ptr %i__5, align 4, !tbaa !8
  %idxprom912 = sext i32 %729 to i64
  %arrayidx913 = getelementptr inbounds %struct.complex, ptr %728, i64 %idxprom912
  %i914 = getelementptr inbounds %struct.complex, ptr %arrayidx913, i32 0, i32 1
  store float %727, ptr %i914, align 4, !tbaa !13
  br label %if.end915

if.end915:                                        ; preds = %if.then886, %cond.end881
  br label %for.inc916

for.inc916:                                       ; preds = %if.end915
  %730 = load i32, ptr %i__, align 4, !tbaa !8
  %inc917 = add nsw i32 %730, 1
  store i32 %inc917, ptr %i__, align 4, !tbaa !8
  br label %for.cond837, !llvm.loop !19

for.end918:                                       ; preds = %for.cond837
  br label %for.inc919

for.inc919:                                       ; preds = %for.end918
  %731 = load i32, ptr %k, align 4, !tbaa !8
  %dec920 = add nsw i32 %731, -1
  store i32 %dec920, ptr %k, align 4, !tbaa !8
  br label %for.cond829, !llvm.loop !20

for.end921:                                       ; preds = %for.cond829
  br label %L60

L60:                                              ; preds = %for.end921, %if.then834
  br label %if.end922

if.end922:                                        ; preds = %L60, %if.end822
  br label %if.end923

if.end923:                                        ; preds = %if.end922, %for.end492
  %732 = load i32, ptr %kbot, align 4, !tbaa !8
  %733 = load i32, ptr %ks, align 4, !tbaa !8
  %sub924 = sub nsw i32 %732, %733
  %add925 = add nsw i32 %sub924, 1
  %cmp926 = icmp eq i32 %add925, 2
  br i1 %cmp926, label %if.then928, label %if.end1035

if.then928:                                       ; preds = %if.end923
  %734 = load i32, ptr %kbot, align 4, !tbaa !8
  store i32 %734, ptr %i__2, align 4, !tbaa !8
  %735 = load i32, ptr %kbot, align 4, !tbaa !8
  %736 = load i32, ptr %kbot, align 4, !tbaa !8
  %737 = load i32, ptr %h_dim1, align 4, !tbaa !8
  %mul929 = mul nsw i32 %736, %737
  %add930 = add nsw i32 %735, %mul929
  store i32 %add930, ptr %i__3, align 4, !tbaa !8
  %738 = load ptr, ptr %w.addr, align 8, !tbaa !4
  %739 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom931 = sext i32 %739 to i64
  %arrayidx932 = getelementptr inbounds %struct.complex, ptr %738, i64 %idxprom931
  %r933 = getelementptr inbounds %struct.complex, ptr %arrayidx932, i32 0, i32 0
  %740 = load float, ptr %r933, align 4, !tbaa !10
  %741 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %742 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom934 = sext i32 %742 to i64
  %arrayidx935 = getelementptr inbounds %struct.complex, ptr %741, i64 %idxprom934
  %r936 = getelementptr inbounds %struct.complex, ptr %arrayidx935, i32 0, i32 0
  %743 = load float, ptr %r936, align 4, !tbaa !10
  %sub937 = fsub float %740, %743
  %r938 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  store float %sub937, ptr %r938, align 4, !tbaa !10
  %744 = load ptr, ptr %w.addr, align 8, !tbaa !4
  %745 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom939 = sext i32 %745 to i64
  %arrayidx940 = getelementptr inbounds %struct.complex, ptr %744, i64 %idxprom939
  %i941 = getelementptr inbounds %struct.complex, ptr %arrayidx940, i32 0, i32 1
  %746 = load float, ptr %i941, align 4, !tbaa !13
  %747 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %748 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom942 = sext i32 %748 to i64
  %arrayidx943 = getelementptr inbounds %struct.complex, ptr %747, i64 %idxprom942
  %i944 = getelementptr inbounds %struct.complex, ptr %arrayidx943, i32 0, i32 1
  %749 = load float, ptr %i944, align 4, !tbaa !13
  %sub945 = fsub float %746, %749
  %i946 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  store float %sub945, ptr %i946, align 4, !tbaa !13
  %r947 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  %750 = load float, ptr %r947, align 4, !tbaa !10
  %r948 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float %750, ptr %r948, align 4, !tbaa !10
  %i949 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  %751 = load float, ptr %i949, align 4, !tbaa !13
  %i950 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float %751, ptr %i950, align 4, !tbaa !13
  %752 = load i32, ptr %kbot, align 4, !tbaa !8
  %sub951 = sub nsw i32 %752, 1
  store i32 %sub951, ptr %i__4, align 4, !tbaa !8
  %753 = load ptr, ptr %w.addr, align 8, !tbaa !4
  %754 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom952 = sext i32 %754 to i64
  %arrayidx953 = getelementptr inbounds %struct.complex, ptr %753, i64 %idxprom952
  %r954 = getelementptr inbounds %struct.complex, ptr %arrayidx953, i32 0, i32 0
  %755 = load float, ptr %r954, align 4, !tbaa !10
  %756 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %757 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom955 = sext i32 %757 to i64
  %arrayidx956 = getelementptr inbounds %struct.complex, ptr %756, i64 %idxprom955
  %r957 = getelementptr inbounds %struct.complex, ptr %arrayidx956, i32 0, i32 0
  %758 = load float, ptr %r957, align 4, !tbaa !10
  %sub958 = fsub float %755, %758
  %r959 = getelementptr inbounds %struct.complex, ptr %q__4, i32 0, i32 0
  store float %sub958, ptr %r959, align 4, !tbaa !10
  %759 = load ptr, ptr %w.addr, align 8, !tbaa !4
  %760 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom960 = sext i32 %760 to i64
  %arrayidx961 = getelementptr inbounds %struct.complex, ptr %759, i64 %idxprom960
  %i962 = getelementptr inbounds %struct.complex, ptr %arrayidx961, i32 0, i32 1
  %761 = load float, ptr %i962, align 4, !tbaa !13
  %762 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %763 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom963 = sext i32 %763 to i64
  %arrayidx964 = getelementptr inbounds %struct.complex, ptr %762, i64 %idxprom963
  %i965 = getelementptr inbounds %struct.complex, ptr %arrayidx964, i32 0, i32 1
  %764 = load float, ptr %i965, align 4, !tbaa !13
  %sub966 = fsub float %761, %764
  %i967 = getelementptr inbounds %struct.complex, ptr %q__4, i32 0, i32 1
  store float %sub966, ptr %i967, align 4, !tbaa !13
  %r968 = getelementptr inbounds %struct.complex, ptr %q__4, i32 0, i32 0
  %765 = load float, ptr %r968, align 4, !tbaa !10
  %r969 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 0
  store float %765, ptr %r969, align 4, !tbaa !10
  %i970 = getelementptr inbounds %struct.complex, ptr %q__4, i32 0, i32 1
  %766 = load float, ptr %i970, align 4, !tbaa !13
  %i971 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 1
  store float %766, ptr %i971, align 4, !tbaa !13
  %r972 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %767 = load float, ptr %r972, align 4, !tbaa !10
  store float %767, ptr %r__1, align 4, !tbaa !15
  %768 = load float, ptr %r__1, align 4, !tbaa !15
  %cmp973 = fcmp oge float %768, 0.000000e+00
  br i1 %cmp973, label %cond.true975, label %cond.false976

cond.true975:                                     ; preds = %if.then928
  %769 = load float, ptr %r__1, align 4, !tbaa !15
  br label %cond.end978

cond.false976:                                    ; preds = %if.then928
  %770 = load float, ptr %r__1, align 4, !tbaa !15
  %fneg977 = fneg float %770
  br label %cond.end978

cond.end978:                                      ; preds = %cond.false976, %cond.true975
  %cond979 = phi float [ %769, %cond.true975 ], [ %fneg977, %cond.false976 ]
  %i980 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %771 = load float, ptr %i980, align 4, !tbaa !13
  store float %771, ptr %r__2, align 4, !tbaa !15
  %772 = load float, ptr %r__2, align 4, !tbaa !15
  %cmp981 = fcmp oge float %772, 0.000000e+00
  br i1 %cmp981, label %cond.true983, label %cond.false984

cond.true983:                                     ; preds = %cond.end978
  %773 = load float, ptr %r__2, align 4, !tbaa !15
  br label %cond.end986

cond.false984:                                    ; preds = %cond.end978
  %774 = load float, ptr %r__2, align 4, !tbaa !15
  %fneg985 = fneg float %774
  br label %cond.end986

cond.end986:                                      ; preds = %cond.false984, %cond.true983
  %cond987 = phi float [ %773, %cond.true983 ], [ %fneg985, %cond.false984 ]
  %add988 = fadd float %cond979, %cond987
  %r989 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 0
  %775 = load float, ptr %r989, align 4, !tbaa !10
  store float %775, ptr %r__3, align 4, !tbaa !15
  %776 = load float, ptr %r__3, align 4, !tbaa !15
  %cmp990 = fcmp oge float %776, 0.000000e+00
  br i1 %cmp990, label %cond.true992, label %cond.false993

cond.true992:                                     ; preds = %cond.end986
  %777 = load float, ptr %r__3, align 4, !tbaa !15
  br label %cond.end995

cond.false993:                                    ; preds = %cond.end986
  %778 = load float, ptr %r__3, align 4, !tbaa !15
  %fneg994 = fneg float %778
  br label %cond.end995

cond.end995:                                      ; preds = %cond.false993, %cond.true992
  %cond996 = phi float [ %777, %cond.true992 ], [ %fneg994, %cond.false993 ]
  %i997 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 1
  %779 = load float, ptr %i997, align 4, !tbaa !13
  store float %779, ptr %r__4, align 4, !tbaa !15
  %780 = load float, ptr %r__4, align 4, !tbaa !15
  %cmp998 = fcmp oge float %780, 0.000000e+00
  br i1 %cmp998, label %cond.true1000, label %cond.false1001

cond.true1000:                                    ; preds = %cond.end995
  %781 = load float, ptr %r__4, align 4, !tbaa !15
  br label %cond.end1003

cond.false1001:                                   ; preds = %cond.end995
  %782 = load float, ptr %r__4, align 4, !tbaa !15
  %fneg1002 = fneg float %782
  br label %cond.end1003

cond.end1003:                                     ; preds = %cond.false1001, %cond.true1000
  %cond1004 = phi float [ %781, %cond.true1000 ], [ %fneg1002, %cond.false1001 ]
  %add1005 = fadd float %cond996, %cond1004
  %cmp1006 = fcmp olt float %add988, %add1005
  br i1 %cmp1006, label %if.then1008, label %if.else1021

if.then1008:                                      ; preds = %cond.end1003
  %783 = load ptr, ptr %w.addr, align 8, !tbaa !4
  %784 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom1009 = sext i32 %784 to i64
  %arrayidx1010 = getelementptr inbounds %struct.complex, ptr %783, i64 %idxprom1009
  %r1011 = getelementptr inbounds %struct.complex, ptr %arrayidx1010, i32 0, i32 0
  %785 = load float, ptr %r1011, align 4, !tbaa !10
  %786 = load ptr, ptr %w.addr, align 8, !tbaa !4
  %787 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom1012 = sext i32 %787 to i64
  %arrayidx1013 = getelementptr inbounds %struct.complex, ptr %786, i64 %idxprom1012
  %r1014 = getelementptr inbounds %struct.complex, ptr %arrayidx1013, i32 0, i32 0
  store float %785, ptr %r1014, align 4, !tbaa !10
  %788 = load ptr, ptr %w.addr, align 8, !tbaa !4
  %789 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom1015 = sext i32 %789 to i64
  %arrayidx1016 = getelementptr inbounds %struct.complex, ptr %788, i64 %idxprom1015
  %i1017 = getelementptr inbounds %struct.complex, ptr %arrayidx1016, i32 0, i32 1
  %790 = load float, ptr %i1017, align 4, !tbaa !13
  %791 = load ptr, ptr %w.addr, align 8, !tbaa !4
  %792 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom1018 = sext i32 %792 to i64
  %arrayidx1019 = getelementptr inbounds %struct.complex, ptr %791, i64 %idxprom1018
  %i1020 = getelementptr inbounds %struct.complex, ptr %arrayidx1019, i32 0, i32 1
  store float %790, ptr %i1020, align 4, !tbaa !13
  br label %if.end1034

if.else1021:                                      ; preds = %cond.end1003
  %793 = load ptr, ptr %w.addr, align 8, !tbaa !4
  %794 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom1022 = sext i32 %794 to i64
  %arrayidx1023 = getelementptr inbounds %struct.complex, ptr %793, i64 %idxprom1022
  %r1024 = getelementptr inbounds %struct.complex, ptr %arrayidx1023, i32 0, i32 0
  %795 = load float, ptr %r1024, align 4, !tbaa !10
  %796 = load ptr, ptr %w.addr, align 8, !tbaa !4
  %797 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom1025 = sext i32 %797 to i64
  %arrayidx1026 = getelementptr inbounds %struct.complex, ptr %796, i64 %idxprom1025
  %r1027 = getelementptr inbounds %struct.complex, ptr %arrayidx1026, i32 0, i32 0
  store float %795, ptr %r1027, align 4, !tbaa !10
  %798 = load ptr, ptr %w.addr, align 8, !tbaa !4
  %799 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom1028 = sext i32 %799 to i64
  %arrayidx1029 = getelementptr inbounds %struct.complex, ptr %798, i64 %idxprom1028
  %i1030 = getelementptr inbounds %struct.complex, ptr %arrayidx1029, i32 0, i32 1
  %800 = load float, ptr %i1030, align 4, !tbaa !13
  %801 = load ptr, ptr %w.addr, align 8, !tbaa !4
  %802 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom1031 = sext i32 %802 to i64
  %arrayidx1032 = getelementptr inbounds %struct.complex, ptr %801, i64 %idxprom1031
  %i1033 = getelementptr inbounds %struct.complex, ptr %arrayidx1032, i32 0, i32 1
  store float %800, ptr %i1033, align 4, !tbaa !13
  br label %if.end1034

if.end1034:                                       ; preds = %if.else1021, %if.then1008
  br label %if.end1035

if.end1035:                                       ; preds = %if.end1034, %if.end923
  %803 = load i32, ptr %ns, align 4, !tbaa !8
  store i32 %803, ptr %i__2, align 4, !tbaa !8
  %804 = load i32, ptr %kbot, align 4, !tbaa !8
  %805 = load i32, ptr %ks, align 4, !tbaa !8
  %sub1036 = sub nsw i32 %804, %805
  %add1037 = add nsw i32 %sub1036, 1
  store i32 %add1037, ptr %i__3, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x1038) #4
  %806 = load i32, ptr %i__2, align 4, !tbaa !8
  store i32 %806, ptr %_x1038, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y1039) #4
  %807 = load i32, ptr %i__3, align 4, !tbaa !8
  store i32 %807, ptr %_y1039, align 4, !tbaa !8
  %808 = load i32, ptr %_x1038, align 4, !tbaa !8
  %809 = load i32, ptr %_y1039, align 4, !tbaa !8
  %cmp1041 = icmp slt i32 %808, %809
  br i1 %cmp1041, label %cond.true1043, label %cond.false1044

cond.true1043:                                    ; preds = %if.end1035
  %810 = load i32, ptr %_x1038, align 4, !tbaa !8
  br label %cond.end1045

cond.false1044:                                   ; preds = %if.end1035
  %811 = load i32, ptr %_y1039, align 4, !tbaa !8
  br label %cond.end1045

cond.end1045:                                     ; preds = %cond.false1044, %cond.true1043
  %cond1046 = phi i32 [ %810, %cond.true1043 ], [ %811, %cond.false1044 ]
  store i32 %cond1046, ptr %tmp1040, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y1039) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x1038) #4
  %812 = load i32, ptr %tmp1040, align 4, !tbaa !8
  store i32 %812, ptr %ns, align 4, !tbaa !8
  %813 = load i32, ptr %ns, align 4, !tbaa !8
  %rem1047 = srem i32 %813, 2
  %814 = load i32, ptr %ns, align 4, !tbaa !8
  %sub1048 = sub nsw i32 %814, %rem1047
  store i32 %sub1048, ptr %ns, align 4, !tbaa !8
  %815 = load i32, ptr %kbot, align 4, !tbaa !8
  %816 = load i32, ptr %ns, align 4, !tbaa !8
  %sub1049 = sub nsw i32 %815, %816
  %add1050 = add nsw i32 %sub1049, 1
  store i32 %add1050, ptr %ks, align 4, !tbaa !8
  %817 = load i32, ptr %ns, align 4, !tbaa !8
  %shl1051 = shl i32 %817, 1
  store i32 %shl1051, ptr %kdu, align 4, !tbaa !8
  %818 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %819 = load i32, ptr %818, align 4, !tbaa !8
  %820 = load i32, ptr %kdu, align 4, !tbaa !8
  %sub1052 = sub nsw i32 %819, %820
  %add1053 = add nsw i32 %sub1052, 1
  store i32 %add1053, ptr %ku, align 4, !tbaa !8
  %821 = load i32, ptr %kdu, align 4, !tbaa !8
  %add1054 = add nsw i32 %821, 1
  store i32 %add1054, ptr %kwh, align 4, !tbaa !8
  %822 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %823 = load i32, ptr %822, align 4, !tbaa !8
  %824 = load i32, ptr %kdu, align 4, !tbaa !8
  %sub1055 = sub nsw i32 %823, %824
  %sub1056 = sub nsw i32 %sub1055, 3
  %825 = load i32, ptr %kdu, align 4, !tbaa !8
  %add1057 = add nsw i32 %825, 1
  %sub1058 = sub nsw i32 %sub1056, %add1057
  %add1059 = add nsw i32 %sub1058, 1
  store i32 %add1059, ptr %nho, align 4, !tbaa !8
  %826 = load i32, ptr %kdu, align 4, !tbaa !8
  %add1060 = add nsw i32 %826, 4
  store i32 %add1060, ptr %kwv, align 4, !tbaa !8
  %827 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %828 = load i32, ptr %827, align 4, !tbaa !8
  %829 = load i32, ptr %kdu, align 4, !tbaa !8
  %sub1061 = sub nsw i32 %828, %829
  %830 = load i32, ptr %kwv, align 4, !tbaa !8
  %sub1062 = sub nsw i32 %sub1061, %830
  %add1063 = add nsw i32 %sub1062, 1
  store i32 %add1063, ptr %nve, align 4, !tbaa !8
  %831 = load ptr, ptr %wantt.addr, align 8, !tbaa !4
  %832 = load ptr, ptr %wantz.addr, align 8, !tbaa !4
  %833 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %834 = load ptr, ptr %w.addr, align 8, !tbaa !4
  %835 = load i32, ptr %ks, align 4, !tbaa !8
  %idxprom1064 = sext i32 %835 to i64
  %arrayidx1065 = getelementptr inbounds %struct.complex, ptr %834, i64 %idxprom1064
  %836 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %837 = load i32, ptr %h_offset, align 4, !tbaa !8
  %idxprom1066 = sext i32 %837 to i64
  %arrayidx1067 = getelementptr inbounds %struct.complex, ptr %836, i64 %idxprom1066
  %838 = load ptr, ptr %ldh.addr, align 8, !tbaa !4
  %839 = load ptr, ptr %iloz.addr, align 8, !tbaa !4
  %840 = load ptr, ptr %ihiz.addr, align 8, !tbaa !4
  %841 = load ptr, ptr %z__.addr, align 8, !tbaa !4
  %842 = load i32, ptr %z_offset, align 4, !tbaa !8
  %idxprom1068 = sext i32 %842 to i64
  %arrayidx1069 = getelementptr inbounds %struct.complex, ptr %841, i64 %idxprom1068
  %843 = load ptr, ptr %ldz.addr, align 8, !tbaa !4
  %844 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx1070 = getelementptr inbounds %struct.complex, ptr %844, i64 1
  %845 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %846 = load i32, ptr %ku, align 4, !tbaa !8
  %847 = load i32, ptr %h_dim1, align 4, !tbaa !8
  %add1071 = add nsw i32 %846, %847
  %idxprom1072 = sext i32 %add1071 to i64
  %arrayidx1073 = getelementptr inbounds %struct.complex, ptr %845, i64 %idxprom1072
  %848 = load ptr, ptr %ldh.addr, align 8, !tbaa !4
  %849 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %850 = load i32, ptr %kwv, align 4, !tbaa !8
  %851 = load i32, ptr %h_dim1, align 4, !tbaa !8
  %add1074 = add nsw i32 %850, %851
  %idxprom1075 = sext i32 %add1074 to i64
  %arrayidx1076 = getelementptr inbounds %struct.complex, ptr %849, i64 %idxprom1075
  %852 = load ptr, ptr %ldh.addr, align 8, !tbaa !4
  %853 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %854 = load i32, ptr %ku, align 4, !tbaa !8
  %855 = load i32, ptr %kwh, align 4, !tbaa !8
  %856 = load i32, ptr %h_dim1, align 4, !tbaa !8
  %mul1077 = mul nsw i32 %855, %856
  %add1078 = add nsw i32 %854, %mul1077
  %idxprom1079 = sext i32 %add1078 to i64
  %arrayidx1080 = getelementptr inbounds %struct.complex, ptr %853, i64 %idxprom1079
  %857 = load ptr, ptr %ldh.addr, align 8, !tbaa !4
  %call1081 = call i32 @claqr5_(ptr noundef %831, ptr noundef %832, ptr noundef %kacc22, ptr noundef %833, ptr noundef %ktop, ptr noundef %kbot, ptr noundef %ns, ptr noundef %arrayidx1065, ptr noundef %arrayidx1067, ptr noundef %838, ptr noundef %839, ptr noundef %840, ptr noundef %arrayidx1069, ptr noundef %843, ptr noundef %arrayidx1070, ptr noundef @c__3, ptr noundef %arrayidx1073, ptr noundef %848, ptr noundef %nve, ptr noundef %arrayidx1076, ptr noundef %852, ptr noundef %nho, ptr noundef %arrayidx1080, ptr noundef %857)
  br label %if.end1082

if.end1082:                                       ; preds = %cond.end1045, %cond.end387, %lor.lhs.false372
  %858 = load i32, ptr %ld, align 4, !tbaa !8
  %cmp1083 = icmp sgt i32 %858, 0
  br i1 %cmp1083, label %if.then1085, label %if.else1086

if.then1085:                                      ; preds = %if.end1082
  store i32 1, ptr %ndfl, align 4, !tbaa !8
  br label %if.end1088

if.else1086:                                      ; preds = %if.end1082
  %859 = load i32, ptr %ndfl, align 4, !tbaa !8
  %inc1087 = add nsw i32 %859, 1
  store i32 %inc1087, ptr %ndfl, align 4, !tbaa !8
  br label %if.end1088

if.end1088:                                       ; preds = %if.else1086, %if.then1085
  br label %for.inc1089

for.inc1089:                                      ; preds = %if.end1088
  %860 = load i32, ptr %it, align 4, !tbaa !8
  %inc1090 = add nsw i32 %860, 1
  store i32 %inc1090, ptr %it, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !21

for.end1091:                                      ; preds = %for.cond
  %861 = load i32, ptr %kbot, align 4, !tbaa !8
  %862 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 %861, ptr %862, align 4, !tbaa !8
  br label %L80

L80:                                              ; preds = %for.end1091, %if.then200
  br label %if.end1092

if.end1092:                                       ; preds = %L80, %if.end15
  %863 = load i32, ptr %lwkopt, align 4, !tbaa !8
  %conv1093 = sitofp i32 %863 to float
  store float %conv1093, ptr %r__1, align 4, !tbaa !15
  %864 = load float, ptr %r__1, align 4, !tbaa !15
  %r1094 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float %864, ptr %r1094, align 4, !tbaa !10
  %i1095 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float 0.000000e+00, ptr %i1095, align 4, !tbaa !13
  %r1096 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %865 = load float, ptr %r1096, align 4, !tbaa !10
  %866 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx1097 = getelementptr inbounds %struct.complex, ptr %866, i64 1
  %r1098 = getelementptr inbounds %struct.complex, ptr %arrayidx1097, i32 0, i32 0
  store float %865, ptr %r1098, align 4, !tbaa !10
  %i1099 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %867 = load float, ptr %i1099, align 4, !tbaa !13
  %868 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx1100 = getelementptr inbounds %struct.complex, ptr %868, i64 1
  %i1101 = getelementptr inbounds %struct.complex, ptr %arrayidx1100, i32 0, i32 1
  store float %867, ptr %i1101, align 4, !tbaa !13
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end1092, %if.then105, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %lwkopt) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %sorted) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %nwupbd) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %rtdisc) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr %jbcmpz) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %nibble) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %kwtop) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %nwmax) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %nsmax) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %itmax) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %kacc22) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %zdum) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %ktop) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %swap) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %nmin) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %kbot) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %ndfl) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %ndec) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %kwv) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %nwr) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %nsr) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %kwh) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %nve) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %nho) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %kdu) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %inf) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %det) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %tr2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %nw) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %ns) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %ls) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %kv) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %ku) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %kt) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %ks) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %it) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %nh) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %ld) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %dd) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %cc) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %bb) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %aa) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %s) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %q__5) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %q__4) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %q__3) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %q__2) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %q__1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %r__8) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %r__7) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %r__6) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %r__5) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %r__4) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %r__3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %r__2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %r__1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__5) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__4) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %z_offset) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %z_dim1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %h_offset) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %h_dim1) #4
  %869 = load i32, ptr %retval, align 4
  ret i32 %869
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @clahqr_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @ilaenv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @claqr2_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @clacpy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

declare void @c_sqrt(ptr noundef, ptr noundef) #2

declare i32 @claqr5_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="znver2" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="znver2" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

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
!10 = !{!11, !12, i64 0}
!11 = !{!"", !12, i64 0, !12, i64 4}
!12 = !{!"float", !6, i64 0}
!13 = !{!11, !12, i64 4}
!14 = !{!6, !6, i64 0}
!15 = !{!12, !12, i64 0}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = distinct !{!18, !17}
!19 = distinct !{!19, !17}
!20 = distinct !{!20, !17}
!21 = distinct !{!21, !17}

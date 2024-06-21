; ModuleID = 'samples/996.bc'
source_filename = "frame/compat/f2c/bla_tbsv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scomplex = type { float, float }
%struct.dcomplex = type { double, double }

@.str = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"CTBSV \00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"DTBSV \00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"STBSV \00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"ZTBSV \00", align 1

; Function Attrs: nounwind uwtable
define i32 @ctbsv_(ptr noundef %uplo, ptr noundef %trans, ptr noundef %diag, ptr noundef %n, ptr noundef %k, ptr noundef %a, ptr noundef %lda, ptr noundef %x, ptr noundef %incx) #0 {
entry:
  %retval = alloca i32, align 4
  %uplo.addr = alloca ptr, align 8
  %trans.addr = alloca ptr, align 8
  %diag.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %k.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %lda.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %incx.addr = alloca ptr, align 8
  %a_dim1 = alloca i32, align 4
  %a_offset = alloca i32, align 4
  %i__1 = alloca i32, align 4
  %i__2 = alloca i32, align 4
  %i__3 = alloca i32, align 4
  %i__4 = alloca i32, align 4
  %i__5 = alloca i32, align 4
  %q__1 = alloca %struct.scomplex, align 4
  %q__2 = alloca %struct.scomplex, align 4
  %q__3 = alloca %struct.scomplex, align 4
  %info = alloca i32, align 4
  %temp = alloca %struct.scomplex, align 4
  %i__ = alloca i32, align 4
  %j = alloca i32, align 4
  %l = alloca i32, align 4
  %kplus1 = alloca i32, align 4
  %ix = alloca i32, align 4
  %jx = alloca i32, align 4
  %kx = alloca i32, align 4
  %noconj = alloca i32, align 4
  %nounit = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %uplo, ptr %uplo.addr, align 8, !tbaa !4
  store ptr %trans, ptr %trans.addr, align 8, !tbaa !4
  store ptr %diag, ptr %diag.addr, align 8, !tbaa !4
  store ptr %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %k, ptr %k.addr, align 8, !tbaa !4
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store ptr %lda, ptr %lda.addr, align 8, !tbaa !4
  store ptr %x, ptr %x.addr, align 8, !tbaa !4
  store ptr %incx, ptr %incx.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %a_dim1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %a_offset) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__2) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__3) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__4) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__5) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %q__1) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %q__2) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %q__3) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %info) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %temp) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %l) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %kplus1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ix) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %jx) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %kx) #4
  store i32 0, ptr %kx, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %noconj) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %nounit) #4
  %0 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %1 = load i32, ptr %0, align 4, !tbaa !8
  store i32 %1, ptr %a_dim1, align 4, !tbaa !8
  %2 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul = mul nsw i32 %2, 1
  %add = add nsw i32 1, %mul
  store i32 %add, ptr %a_offset, align 4, !tbaa !8
  %3 = load i32, ptr %a_offset, align 4, !tbaa !8
  %4 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %idx.ext = sext i32 %3 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds %struct.scomplex, ptr %4, i64 %idx.neg
  store ptr %add.ptr, ptr %a.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds %struct.scomplex, ptr %5, i32 -1
  store ptr %incdec.ptr, ptr %x.addr, align 8, !tbaa !4
  store i32 0, ptr %info, align 4, !tbaa !8
  %6 = load ptr, ptr %uplo.addr, align 8, !tbaa !4
  %call = call i32 @lsame_(ptr noundef %6, ptr noundef @.str, i32 noundef 1, i32 noundef 1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %7 = load ptr, ptr %uplo.addr, align 8, !tbaa !4
  %call1 = call i32 @lsame_(ptr noundef %7, ptr noundef @.str.1, i32 noundef 1, i32 noundef 1)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store i32 1, ptr %info, align 4, !tbaa !8
  br label %if.end36

if.else:                                          ; preds = %land.lhs.true, %entry
  %8 = load ptr, ptr %trans.addr, align 8, !tbaa !4
  %call3 = call i32 @lsame_(ptr noundef %8, ptr noundef @.str.2, i32 noundef 1, i32 noundef 1)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.else12, label %land.lhs.true5

land.lhs.true5:                                   ; preds = %if.else
  %9 = load ptr, ptr %trans.addr, align 8, !tbaa !4
  %call6 = call i32 @lsame_(ptr noundef %9, ptr noundef @.str.3, i32 noundef 1, i32 noundef 1)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.else12, label %land.lhs.true8

land.lhs.true8:                                   ; preds = %land.lhs.true5
  %10 = load ptr, ptr %trans.addr, align 8, !tbaa !4
  %call9 = call i32 @lsame_(ptr noundef %10, ptr noundef @.str.4, i32 noundef 1, i32 noundef 1)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.else12, label %if.then11

if.then11:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %info, align 4, !tbaa !8
  br label %if.end35

if.else12:                                        ; preds = %land.lhs.true8, %land.lhs.true5, %if.else
  %11 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %call13 = call i32 @lsame_(ptr noundef %11, ptr noundef @.str, i32 noundef 1, i32 noundef 1)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.else19, label %land.lhs.true15

land.lhs.true15:                                  ; preds = %if.else12
  %12 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %call16 = call i32 @lsame_(ptr noundef %12, ptr noundef @.str.2, i32 noundef 1, i32 noundef 1)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.else19, label %if.then18

if.then18:                                        ; preds = %land.lhs.true15
  store i32 3, ptr %info, align 4, !tbaa !8
  br label %if.end34

if.else19:                                        ; preds = %land.lhs.true15, %if.else12
  %13 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %14 = load i32, ptr %13, align 4, !tbaa !8
  %cmp = icmp slt i32 %14, 0
  br i1 %cmp, label %if.then20, label %if.else21

if.then20:                                        ; preds = %if.else19
  store i32 4, ptr %info, align 4, !tbaa !8
  br label %if.end33

if.else21:                                        ; preds = %if.else19
  %15 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %16 = load i32, ptr %15, align 4, !tbaa !8
  %cmp22 = icmp slt i32 %16, 0
  br i1 %cmp22, label %if.then23, label %if.else24

if.then23:                                        ; preds = %if.else21
  store i32 5, ptr %info, align 4, !tbaa !8
  br label %if.end32

if.else24:                                        ; preds = %if.else21
  %17 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %18 = load i32, ptr %17, align 4, !tbaa !8
  %19 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %20 = load i32, ptr %19, align 4, !tbaa !8
  %add25 = add nsw i32 %20, 1
  %cmp26 = icmp slt i32 %18, %add25
  br i1 %cmp26, label %if.then27, label %if.else28

if.then27:                                        ; preds = %if.else24
  store i32 7, ptr %info, align 4, !tbaa !8
  br label %if.end31

if.else28:                                        ; preds = %if.else24
  %21 = load ptr, ptr %incx.addr, align 8, !tbaa !4
  %22 = load i32, ptr %21, align 4, !tbaa !8
  %cmp29 = icmp eq i32 %22, 0
  br i1 %cmp29, label %if.then30, label %if.end

if.then30:                                        ; preds = %if.else28
  store i32 9, ptr %info, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then30, %if.else28
  br label %if.end31

if.end31:                                         ; preds = %if.end, %if.then27
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %if.then23
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.then20
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.then18
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.then11
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.then
  %23 = load i32, ptr %info, align 4, !tbaa !8
  %cmp37 = icmp ne i32 %23, 0
  br i1 %cmp37, label %if.then38, label %if.end40

if.then38:                                        ; preds = %if.end36
  %call39 = call i32 @xerbla_(ptr noundef @.str.5, ptr noundef %info, i32 noundef 6)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end40:                                         ; preds = %if.end36
  %24 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %25 = load i32, ptr %24, align 4, !tbaa !8
  %cmp41 = icmp eq i32 %25, 0
  br i1 %cmp41, label %if.then42, label %if.end43

if.then42:                                        ; preds = %if.end40
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end43:                                         ; preds = %if.end40
  %26 = load ptr, ptr %trans.addr, align 8, !tbaa !4
  %call44 = call i32 @lsame_(ptr noundef %26, ptr noundef @.str.3, i32 noundef 1, i32 noundef 1)
  store i32 %call44, ptr %noconj, align 4, !tbaa !8
  %27 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %call45 = call i32 @lsame_(ptr noundef %27, ptr noundef @.str.2, i32 noundef 1, i32 noundef 1)
  store i32 %call45, ptr %nounit, align 4, !tbaa !8
  %28 = load ptr, ptr %incx.addr, align 8, !tbaa !4
  %29 = load i32, ptr %28, align 4, !tbaa !8
  %cmp46 = icmp sle i32 %29, 0
  br i1 %cmp46, label %if.then47, label %if.else50

if.then47:                                        ; preds = %if.end43
  %30 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %31 = load i32, ptr %30, align 4, !tbaa !8
  %sub = sub nsw i32 %31, 1
  %32 = load ptr, ptr %incx.addr, align 8, !tbaa !4
  %33 = load i32, ptr %32, align 4, !tbaa !8
  %mul48 = mul nsw i32 %sub, %33
  %sub49 = sub nsw i32 1, %mul48
  store i32 %sub49, ptr %kx, align 4, !tbaa !8
  br label %if.end54

if.else50:                                        ; preds = %if.end43
  %34 = load ptr, ptr %incx.addr, align 8, !tbaa !4
  %35 = load i32, ptr %34, align 4, !tbaa !8
  %cmp51 = icmp ne i32 %35, 1
  br i1 %cmp51, label %if.then52, label %if.end53

if.then52:                                        ; preds = %if.else50
  store i32 1, ptr %kx, align 4, !tbaa !8
  br label %if.end53

if.end53:                                         ; preds = %if.then52, %if.else50
  br label %if.end54

if.end54:                                         ; preds = %if.end53, %if.then47
  %36 = load ptr, ptr %trans.addr, align 8, !tbaa !4
  %call55 = call i32 @lsame_(ptr noundef %36, ptr noundef @.str.2, i32 noundef 1, i32 noundef 1)
  %tobool56 = icmp ne i32 %call55, 0
  br i1 %tobool56, label %if.then57, label %if.else473

if.then57:                                        ; preds = %if.end54
  %37 = load ptr, ptr %uplo.addr, align 8, !tbaa !4
  %call58 = call i32 @lsame_(ptr noundef %37, ptr noundef @.str, i32 noundef 1, i32 noundef 1)
  %tobool59 = icmp ne i32 %call58, 0
  br i1 %tobool59, label %if.then60, label %if.else261

if.then60:                                        ; preds = %if.then57
  %38 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %39 = load i32, ptr %38, align 4, !tbaa !8
  %add61 = add nsw i32 %39, 1
  store i32 %add61, ptr %kplus1, align 4, !tbaa !8
  %40 = load ptr, ptr %incx.addr, align 8, !tbaa !4
  %41 = load i32, ptr %40, align 4, !tbaa !8
  %cmp62 = icmp eq i32 %41, 1
  br i1 %cmp62, label %if.then63, label %if.else151

if.then63:                                        ; preds = %if.then60
  %42 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %43 = load i32, ptr %42, align 4, !tbaa !8
  store i32 %43, ptr %j, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc148, %if.then63
  %44 = load i32, ptr %j, align 4, !tbaa !8
  %cmp64 = icmp sge i32 %44, 1
  br i1 %cmp64, label %for.body, label %for.end150

for.body:                                         ; preds = %for.cond
  %45 = load i32, ptr %j, align 4, !tbaa !8
  store i32 %45, ptr %i__1, align 4, !tbaa !8
  %46 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %47 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom = sext i32 %47 to i64
  %arrayidx = getelementptr inbounds %struct.scomplex, ptr %46, i64 %idxprom
  %real = getelementptr inbounds %struct.scomplex, ptr %arrayidx, i32 0, i32 0
  %48 = load float, ptr %real, align 4, !tbaa !10
  %cmp65 = fcmp une float %48, 0.000000e+00
  br i1 %cmp65, label %if.then69, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %49 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %50 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom66 = sext i32 %50 to i64
  %arrayidx67 = getelementptr inbounds %struct.scomplex, ptr %49, i64 %idxprom66
  %imag = getelementptr inbounds %struct.scomplex, ptr %arrayidx67, i32 0, i32 1
  %51 = load float, ptr %imag, align 4, !tbaa !13
  %cmp68 = fcmp une float %51, 0.000000e+00
  br i1 %cmp68, label %if.then69, label %if.end147

if.then69:                                        ; preds = %lor.lhs.false, %for.body
  %52 = load i32, ptr %kplus1, align 4, !tbaa !8
  %53 = load i32, ptr %j, align 4, !tbaa !8
  %sub70 = sub nsw i32 %52, %53
  store i32 %sub70, ptr %l, align 4, !tbaa !8
  %54 = load i32, ptr %nounit, align 4, !tbaa !8
  %tobool71 = icmp ne i32 %54, 0
  br i1 %tobool71, label %if.then72, label %if.end87

if.then72:                                        ; preds = %if.then69
  %55 = load i32, ptr %j, align 4, !tbaa !8
  store i32 %55, ptr %i__1, align 4, !tbaa !8
  %56 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %57 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom73 = sext i32 %57 to i64
  %arrayidx74 = getelementptr inbounds %struct.scomplex, ptr %56, i64 %idxprom73
  %58 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %59 = load i32, ptr %kplus1, align 4, !tbaa !8
  %60 = load i32, ptr %j, align 4, !tbaa !8
  %61 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul75 = mul nsw i32 %60, %61
  %add76 = add nsw i32 %59, %mul75
  %idxprom77 = sext i32 %add76 to i64
  %arrayidx78 = getelementptr inbounds %struct.scomplex, ptr %58, i64 %idxprom77
  call void @bla_c_div(ptr noundef %q__1, ptr noundef %arrayidx74, ptr noundef %arrayidx78)
  %real79 = getelementptr inbounds %struct.scomplex, ptr %q__1, i32 0, i32 0
  %62 = load float, ptr %real79, align 4, !tbaa !10
  %63 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %64 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom80 = sext i32 %64 to i64
  %arrayidx81 = getelementptr inbounds %struct.scomplex, ptr %63, i64 %idxprom80
  %real82 = getelementptr inbounds %struct.scomplex, ptr %arrayidx81, i32 0, i32 0
  store float %62, ptr %real82, align 4, !tbaa !10
  %imag83 = getelementptr inbounds %struct.scomplex, ptr %q__1, i32 0, i32 1
  %65 = load float, ptr %imag83, align 4, !tbaa !13
  %66 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %67 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom84 = sext i32 %67 to i64
  %arrayidx85 = getelementptr inbounds %struct.scomplex, ptr %66, i64 %idxprom84
  %imag86 = getelementptr inbounds %struct.scomplex, ptr %arrayidx85, i32 0, i32 1
  store float %65, ptr %imag86, align 4, !tbaa !13
  br label %if.end87

if.end87:                                         ; preds = %if.then72, %if.then69
  %68 = load i32, ptr %j, align 4, !tbaa !8
  store i32 %68, ptr %i__1, align 4, !tbaa !8
  %69 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %70 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom88 = sext i32 %70 to i64
  %arrayidx89 = getelementptr inbounds %struct.scomplex, ptr %69, i64 %idxprom88
  %real90 = getelementptr inbounds %struct.scomplex, ptr %arrayidx89, i32 0, i32 0
  %71 = load float, ptr %real90, align 4, !tbaa !10
  %real91 = getelementptr inbounds %struct.scomplex, ptr %temp, i32 0, i32 0
  store float %71, ptr %real91, align 4, !tbaa !10
  %72 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %73 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom92 = sext i32 %73 to i64
  %arrayidx93 = getelementptr inbounds %struct.scomplex, ptr %72, i64 %idxprom92
  %imag94 = getelementptr inbounds %struct.scomplex, ptr %arrayidx93, i32 0, i32 1
  %74 = load float, ptr %imag94, align 4, !tbaa !13
  %imag95 = getelementptr inbounds %struct.scomplex, ptr %temp, i32 0, i32 1
  store float %74, ptr %imag95, align 4, !tbaa !13
  store i32 1, ptr %i__2, align 4, !tbaa !8
  %75 = load i32, ptr %j, align 4, !tbaa !8
  %76 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %77 = load i32, ptr %76, align 4, !tbaa !8
  %sub96 = sub nsw i32 %75, %77
  store i32 %sub96, ptr %i__3, align 4, !tbaa !8
  %78 = load i32, ptr %i__2, align 4, !tbaa !8
  %79 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp97 = icmp sge i32 %78, %79
  br i1 %cmp97, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end87
  %80 = load i32, ptr %i__2, align 4, !tbaa !8
  br label %cond.end

cond.false:                                       ; preds = %if.end87
  %81 = load i32, ptr %i__3, align 4, !tbaa !8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %80, %cond.true ], [ %81, %cond.false ]
  store i32 %cond, ptr %i__1, align 4, !tbaa !8
  %82 = load i32, ptr %j, align 4, !tbaa !8
  %sub98 = sub nsw i32 %82, 1
  store i32 %sub98, ptr %i__, align 4, !tbaa !8
  br label %for.cond99

for.cond99:                                       ; preds = %for.inc, %cond.end
  %83 = load i32, ptr %i__, align 4, !tbaa !8
  %84 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp100 = icmp sge i32 %83, %84
  br i1 %cmp100, label %for.body101, label %for.end

for.body101:                                      ; preds = %for.cond99
  %85 = load i32, ptr %i__, align 4, !tbaa !8
  store i32 %85, ptr %i__2, align 4, !tbaa !8
  %86 = load i32, ptr %i__, align 4, !tbaa !8
  store i32 %86, ptr %i__3, align 4, !tbaa !8
  %87 = load i32, ptr %l, align 4, !tbaa !8
  %88 = load i32, ptr %i__, align 4, !tbaa !8
  %add102 = add nsw i32 %87, %88
  %89 = load i32, ptr %j, align 4, !tbaa !8
  %90 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul103 = mul nsw i32 %89, %90
  %add104 = add nsw i32 %add102, %mul103
  store i32 %add104, ptr %i__4, align 4, !tbaa !8
  %real105 = getelementptr inbounds %struct.scomplex, ptr %temp, i32 0, i32 0
  %91 = load float, ptr %real105, align 4, !tbaa !10
  %92 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %93 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom106 = sext i32 %93 to i64
  %arrayidx107 = getelementptr inbounds %struct.scomplex, ptr %92, i64 %idxprom106
  %real108 = getelementptr inbounds %struct.scomplex, ptr %arrayidx107, i32 0, i32 0
  %94 = load float, ptr %real108, align 4, !tbaa !10
  %imag110 = getelementptr inbounds %struct.scomplex, ptr %temp, i32 0, i32 1
  %95 = load float, ptr %imag110, align 4, !tbaa !13
  %96 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %97 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom111 = sext i32 %97 to i64
  %arrayidx112 = getelementptr inbounds %struct.scomplex, ptr %96, i64 %idxprom111
  %imag113 = getelementptr inbounds %struct.scomplex, ptr %arrayidx112, i32 0, i32 1
  %98 = load float, ptr %imag113, align 4, !tbaa !13
  %mul114 = fmul float %95, %98
  %neg = fneg float %mul114
  %99 = call float @llvm.fmuladd.f32(float %91, float %94, float %neg)
  %real115 = getelementptr inbounds %struct.scomplex, ptr %q__2, i32 0, i32 0
  store float %99, ptr %real115, align 4, !tbaa !10
  %real116 = getelementptr inbounds %struct.scomplex, ptr %temp, i32 0, i32 0
  %100 = load float, ptr %real116, align 4, !tbaa !10
  %101 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %102 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom117 = sext i32 %102 to i64
  %arrayidx118 = getelementptr inbounds %struct.scomplex, ptr %101, i64 %idxprom117
  %imag119 = getelementptr inbounds %struct.scomplex, ptr %arrayidx118, i32 0, i32 1
  %103 = load float, ptr %imag119, align 4, !tbaa !13
  %imag121 = getelementptr inbounds %struct.scomplex, ptr %temp, i32 0, i32 1
  %104 = load float, ptr %imag121, align 4, !tbaa !13
  %105 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %106 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom122 = sext i32 %106 to i64
  %arrayidx123 = getelementptr inbounds %struct.scomplex, ptr %105, i64 %idxprom122
  %real124 = getelementptr inbounds %struct.scomplex, ptr %arrayidx123, i32 0, i32 0
  %107 = load float, ptr %real124, align 4, !tbaa !10
  %mul125 = fmul float %104, %107
  %108 = call float @llvm.fmuladd.f32(float %100, float %103, float %mul125)
  %imag126 = getelementptr inbounds %struct.scomplex, ptr %q__2, i32 0, i32 1
  store float %108, ptr %imag126, align 4, !tbaa !13
  %109 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %110 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom127 = sext i32 %110 to i64
  %arrayidx128 = getelementptr inbounds %struct.scomplex, ptr %109, i64 %idxprom127
  %real129 = getelementptr inbounds %struct.scomplex, ptr %arrayidx128, i32 0, i32 0
  %111 = load float, ptr %real129, align 4, !tbaa !10
  %real130 = getelementptr inbounds %struct.scomplex, ptr %q__2, i32 0, i32 0
  %112 = load float, ptr %real130, align 4, !tbaa !10
  %sub131 = fsub float %111, %112
  %real132 = getelementptr inbounds %struct.scomplex, ptr %q__1, i32 0, i32 0
  store float %sub131, ptr %real132, align 4, !tbaa !10
  %113 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %114 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom133 = sext i32 %114 to i64
  %arrayidx134 = getelementptr inbounds %struct.scomplex, ptr %113, i64 %idxprom133
  %imag135 = getelementptr inbounds %struct.scomplex, ptr %arrayidx134, i32 0, i32 1
  %115 = load float, ptr %imag135, align 4, !tbaa !13
  %imag136 = getelementptr inbounds %struct.scomplex, ptr %q__2, i32 0, i32 1
  %116 = load float, ptr %imag136, align 4, !tbaa !13
  %sub137 = fsub float %115, %116
  %imag138 = getelementptr inbounds %struct.scomplex, ptr %q__1, i32 0, i32 1
  store float %sub137, ptr %imag138, align 4, !tbaa !13
  %real139 = getelementptr inbounds %struct.scomplex, ptr %q__1, i32 0, i32 0
  %117 = load float, ptr %real139, align 4, !tbaa !10
  %118 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %119 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom140 = sext i32 %119 to i64
  %arrayidx141 = getelementptr inbounds %struct.scomplex, ptr %118, i64 %idxprom140
  %real142 = getelementptr inbounds %struct.scomplex, ptr %arrayidx141, i32 0, i32 0
  store float %117, ptr %real142, align 4, !tbaa !10
  %imag143 = getelementptr inbounds %struct.scomplex, ptr %q__1, i32 0, i32 1
  %120 = load float, ptr %imag143, align 4, !tbaa !13
  %121 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %122 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom144 = sext i32 %122 to i64
  %arrayidx145 = getelementptr inbounds %struct.scomplex, ptr %121, i64 %idxprom144
  %imag146 = getelementptr inbounds %struct.scomplex, ptr %arrayidx145, i32 0, i32 1
  store float %120, ptr %imag146, align 4, !tbaa !13
  br label %for.inc

for.inc:                                          ; preds = %for.body101
  %123 = load i32, ptr %i__, align 4, !tbaa !8
  %dec = add nsw i32 %123, -1
  store i32 %dec, ptr %i__, align 4, !tbaa !8
  br label %for.cond99

for.end:                                          ; preds = %for.cond99
  br label %if.end147

if.end147:                                        ; preds = %for.end, %lor.lhs.false
  br label %for.inc148

for.inc148:                                       ; preds = %if.end147
  %124 = load i32, ptr %j, align 4, !tbaa !8
  %dec149 = add nsw i32 %124, -1
  store i32 %dec149, ptr %j, align 4, !tbaa !8
  br label %for.cond

for.end150:                                       ; preds = %for.cond
  br label %if.end260

if.else151:                                       ; preds = %if.then60
  %125 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %126 = load i32, ptr %125, align 4, !tbaa !8
  %sub152 = sub nsw i32 %126, 1
  %127 = load ptr, ptr %incx.addr, align 8, !tbaa !4
  %128 = load i32, ptr %127, align 4, !tbaa !8
  %mul153 = mul nsw i32 %sub152, %128
  %129 = load i32, ptr %kx, align 4, !tbaa !8
  %add154 = add nsw i32 %129, %mul153
  store i32 %add154, ptr %kx, align 4, !tbaa !8
  %130 = load i32, ptr %kx, align 4, !tbaa !8
  store i32 %130, ptr %jx, align 4, !tbaa !8
  %131 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %132 = load i32, ptr %131, align 4, !tbaa !8
  store i32 %132, ptr %j, align 4, !tbaa !8
  br label %for.cond155

for.cond155:                                      ; preds = %for.inc257, %if.else151
  %133 = load i32, ptr %j, align 4, !tbaa !8
  %cmp156 = icmp sge i32 %133, 1
  br i1 %cmp156, label %for.body157, label %for.end259

for.body157:                                      ; preds = %for.cond155
  %134 = load ptr, ptr %incx.addr, align 8, !tbaa !4
  %135 = load i32, ptr %134, align 4, !tbaa !8
  %136 = load i32, ptr %kx, align 4, !tbaa !8
  %sub158 = sub nsw i32 %136, %135
  store i32 %sub158, ptr %kx, align 4, !tbaa !8
  %137 = load i32, ptr %jx, align 4, !tbaa !8
  store i32 %137, ptr %i__1, align 4, !tbaa !8
  %138 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %139 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom159 = sext i32 %139 to i64
  %arrayidx160 = getelementptr inbounds %struct.scomplex, ptr %138, i64 %idxprom159
  %real161 = getelementptr inbounds %struct.scomplex, ptr %arrayidx160, i32 0, i32 0
  %140 = load float, ptr %real161, align 4, !tbaa !10
  %cmp162 = fcmp une float %140, 0.000000e+00
  br i1 %cmp162, label %if.then168, label %lor.lhs.false163

lor.lhs.false163:                                 ; preds = %for.body157
  %141 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %142 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom164 = sext i32 %142 to i64
  %arrayidx165 = getelementptr inbounds %struct.scomplex, ptr %141, i64 %idxprom164
  %imag166 = getelementptr inbounds %struct.scomplex, ptr %arrayidx165, i32 0, i32 1
  %143 = load float, ptr %imag166, align 4, !tbaa !13
  %cmp167 = fcmp une float %143, 0.000000e+00
  br i1 %cmp167, label %if.then168, label %if.end255

if.then168:                                       ; preds = %lor.lhs.false163, %for.body157
  %144 = load i32, ptr %kx, align 4, !tbaa !8
  store i32 %144, ptr %ix, align 4, !tbaa !8
  %145 = load i32, ptr %kplus1, align 4, !tbaa !8
  %146 = load i32, ptr %j, align 4, !tbaa !8
  %sub169 = sub nsw i32 %145, %146
  store i32 %sub169, ptr %l, align 4, !tbaa !8
  %147 = load i32, ptr %nounit, align 4, !tbaa !8
  %tobool170 = icmp ne i32 %147, 0
  br i1 %tobool170, label %if.then171, label %if.end186

if.then171:                                       ; preds = %if.then168
  %148 = load i32, ptr %jx, align 4, !tbaa !8
  store i32 %148, ptr %i__1, align 4, !tbaa !8
  %149 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %150 = load i32, ptr %jx, align 4, !tbaa !8
  %idxprom172 = sext i32 %150 to i64
  %arrayidx173 = getelementptr inbounds %struct.scomplex, ptr %149, i64 %idxprom172
  %151 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %152 = load i32, ptr %kplus1, align 4, !tbaa !8
  %153 = load i32, ptr %j, align 4, !tbaa !8
  %154 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul174 = mul nsw i32 %153, %154
  %add175 = add nsw i32 %152, %mul174
  %idxprom176 = sext i32 %add175 to i64
  %arrayidx177 = getelementptr inbounds %struct.scomplex, ptr %151, i64 %idxprom176
  call void @bla_c_div(ptr noundef %q__1, ptr noundef %arrayidx173, ptr noundef %arrayidx177)
  %real178 = getelementptr inbounds %struct.scomplex, ptr %q__1, i32 0, i32 0
  %155 = load float, ptr %real178, align 4, !tbaa !10
  %156 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %157 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom179 = sext i32 %157 to i64
  %arrayidx180 = getelementptr inbounds %struct.scomplex, ptr %156, i64 %idxprom179
  %real181 = getelementptr inbounds %struct.scomplex, ptr %arrayidx180, i32 0, i32 0
  store float %155, ptr %real181, align 4, !tbaa !10
  %imag182 = getelementptr inbounds %struct.scomplex, ptr %q__1, i32 0, i32 1
  %158 = load float, ptr %imag182, align 4, !tbaa !13
  %159 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %160 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom183 = sext i32 %160 to i64
  %arrayidx184 = getelementptr inbounds %struct.scomplex, ptr %159, i64 %idxprom183
  %imag185 = getelementptr inbounds %struct.scomplex, ptr %arrayidx184, i32 0, i32 1
  store float %158, ptr %imag185, align 4, !tbaa !13
  br label %if.end186

if.end186:                                        ; preds = %if.then171, %if.then168
  %161 = load i32, ptr %jx, align 4, !tbaa !8
  store i32 %161, ptr %i__1, align 4, !tbaa !8
  %162 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %163 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom187 = sext i32 %163 to i64
  %arrayidx188 = getelementptr inbounds %struct.scomplex, ptr %162, i64 %idxprom187
  %real189 = getelementptr inbounds %struct.scomplex, ptr %arrayidx188, i32 0, i32 0
  %164 = load float, ptr %real189, align 4, !tbaa !10
  %real190 = getelementptr inbounds %struct.scomplex, ptr %temp, i32 0, i32 0
  store float %164, ptr %real190, align 4, !tbaa !10
  %165 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %166 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom191 = sext i32 %166 to i64
  %arrayidx192 = getelementptr inbounds %struct.scomplex, ptr %165, i64 %idxprom191
  %imag193 = getelementptr inbounds %struct.scomplex, ptr %arrayidx192, i32 0, i32 1
  %167 = load float, ptr %imag193, align 4, !tbaa !13
  %imag194 = getelementptr inbounds %struct.scomplex, ptr %temp, i32 0, i32 1
  store float %167, ptr %imag194, align 4, !tbaa !13
  store i32 1, ptr %i__2, align 4, !tbaa !8
  %168 = load i32, ptr %j, align 4, !tbaa !8
  %169 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %170 = load i32, ptr %169, align 4, !tbaa !8
  %sub195 = sub nsw i32 %168, %170
  store i32 %sub195, ptr %i__3, align 4, !tbaa !8
  %171 = load i32, ptr %i__2, align 4, !tbaa !8
  %172 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp196 = icmp sge i32 %171, %172
  br i1 %cmp196, label %cond.true197, label %cond.false198

cond.true197:                                     ; preds = %if.end186
  %173 = load i32, ptr %i__2, align 4, !tbaa !8
  br label %cond.end199

cond.false198:                                    ; preds = %if.end186
  %174 = load i32, ptr %i__3, align 4, !tbaa !8
  br label %cond.end199

cond.end199:                                      ; preds = %cond.false198, %cond.true197
  %cond200 = phi i32 [ %173, %cond.true197 ], [ %174, %cond.false198 ]
  store i32 %cond200, ptr %i__1, align 4, !tbaa !8
  %175 = load i32, ptr %j, align 4, !tbaa !8
  %sub201 = sub nsw i32 %175, 1
  store i32 %sub201, ptr %i__, align 4, !tbaa !8
  br label %for.cond202

for.cond202:                                      ; preds = %for.inc252, %cond.end199
  %176 = load i32, ptr %i__, align 4, !tbaa !8
  %177 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp203 = icmp sge i32 %176, %177
  br i1 %cmp203, label %for.body204, label %for.end254

for.body204:                                      ; preds = %for.cond202
  %178 = load i32, ptr %ix, align 4, !tbaa !8
  store i32 %178, ptr %i__2, align 4, !tbaa !8
  %179 = load i32, ptr %ix, align 4, !tbaa !8
  store i32 %179, ptr %i__3, align 4, !tbaa !8
  %180 = load i32, ptr %l, align 4, !tbaa !8
  %181 = load i32, ptr %i__, align 4, !tbaa !8
  %add205 = add nsw i32 %180, %181
  %182 = load i32, ptr %j, align 4, !tbaa !8
  %183 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul206 = mul nsw i32 %182, %183
  %add207 = add nsw i32 %add205, %mul206
  store i32 %add207, ptr %i__4, align 4, !tbaa !8
  %real208 = getelementptr inbounds %struct.scomplex, ptr %temp, i32 0, i32 0
  %184 = load float, ptr %real208, align 4, !tbaa !10
  %185 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %186 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom209 = sext i32 %186 to i64
  %arrayidx210 = getelementptr inbounds %struct.scomplex, ptr %185, i64 %idxprom209
  %real211 = getelementptr inbounds %struct.scomplex, ptr %arrayidx210, i32 0, i32 0
  %187 = load float, ptr %real211, align 4, !tbaa !10
  %imag213 = getelementptr inbounds %struct.scomplex, ptr %temp, i32 0, i32 1
  %188 = load float, ptr %imag213, align 4, !tbaa !13
  %189 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %190 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom214 = sext i32 %190 to i64
  %arrayidx215 = getelementptr inbounds %struct.scomplex, ptr %189, i64 %idxprom214
  %imag216 = getelementptr inbounds %struct.scomplex, ptr %arrayidx215, i32 0, i32 1
  %191 = load float, ptr %imag216, align 4, !tbaa !13
  %mul217 = fmul float %188, %191
  %neg218 = fneg float %mul217
  %192 = call float @llvm.fmuladd.f32(float %184, float %187, float %neg218)
  %real219 = getelementptr inbounds %struct.scomplex, ptr %q__2, i32 0, i32 0
  store float %192, ptr %real219, align 4, !tbaa !10
  %real220 = getelementptr inbounds %struct.scomplex, ptr %temp, i32 0, i32 0
  %193 = load float, ptr %real220, align 4, !tbaa !10
  %194 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %195 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom221 = sext i32 %195 to i64
  %arrayidx222 = getelementptr inbounds %struct.scomplex, ptr %194, i64 %idxprom221
  %imag223 = getelementptr inbounds %struct.scomplex, ptr %arrayidx222, i32 0, i32 1
  %196 = load float, ptr %imag223, align 4, !tbaa !13
  %imag225 = getelementptr inbounds %struct.scomplex, ptr %temp, i32 0, i32 1
  %197 = load float, ptr %imag225, align 4, !tbaa !13
  %198 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %199 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom226 = sext i32 %199 to i64
  %arrayidx227 = getelementptr inbounds %struct.scomplex, ptr %198, i64 %idxprom226
  %real228 = getelementptr inbounds %struct.scomplex, ptr %arrayidx227, i32 0, i32 0
  %200 = load float, ptr %real228, align 4, !tbaa !10
  %mul229 = fmul float %197, %200
  %201 = call float @llvm.fmuladd.f32(float %193, float %196, float %mul229)
  %imag230 = getelementptr inbounds %struct.scomplex, ptr %q__2, i32 0, i32 1
  store float %201, ptr %imag230, align 4, !tbaa !13
  %202 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %203 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom231 = sext i32 %203 to i64
  %arrayidx232 = getelementptr inbounds %struct.scomplex, ptr %202, i64 %idxprom231
  %real233 = getelementptr inbounds %struct.scomplex, ptr %arrayidx232, i32 0, i32 0
  %204 = load float, ptr %real233, align 4, !tbaa !10
  %real234 = getelementptr inbounds %struct.scomplex, ptr %q__2, i32 0, i32 0
  %205 = load float, ptr %real234, align 4, !tbaa !10
  %sub235 = fsub float %204, %205
  %real236 = getelementptr inbounds %struct.scomplex, ptr %q__1, i32 0, i32 0
  store float %sub235, ptr %real236, align 4, !tbaa !10
  %206 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %207 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom237 = sext i32 %207 to i64
  %arrayidx238 = getelementptr inbounds %struct.scomplex, ptr %206, i64 %idxprom237
  %imag239 = getelementptr inbounds %struct.scomplex, ptr %arrayidx238, i32 0, i32 1
  %208 = load float, ptr %imag239, align 4, !tbaa !13
  %imag240 = getelementptr inbounds %struct.scomplex, ptr %q__2, i32 0, i32 1
  %209 = load float, ptr %imag240, align 4, !tbaa !13
  %sub241 = fsub float %208, %209
  %imag242 = getelementptr inbounds %struct.scomplex, ptr %q__1, i32 0, i32 1
  store float %sub241, ptr %imag242, align 4, !tbaa !13
  %real243 = getelementptr inbounds %struct.scomplex, ptr %q__1, i32 0, i32 0
  %210 = load float, ptr %real243, align 4, !tbaa !10
  %211 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %212 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom244 = sext i32 %212 to i64
  %arrayidx245 = getelementptr inbounds %struct.scomplex, ptr %211, i64 %idxprom244
  %real246 = getelementptr inbounds %struct.scomplex, ptr %arrayidx245, i32 0, i32 0
  store float %210, ptr %real246, align 4, !tbaa !10
  %imag247 = getelementptr inbounds %struct.scomplex, ptr %q__1, i32 0, i32 1
  %213 = load float, ptr %imag247, align 4, !tbaa !13
  %214 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %215 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom248 = sext i32 %215 to i64
  %arrayidx249 = getelementptr inbounds %struct.scomplex, ptr %214, i64 %idxprom248
  %imag250 = getelementptr inbounds %struct.scomplex, ptr %arrayidx249, i32 0, i32 1
  store float %213, ptr %imag250, align 4, !tbaa !13
  %216 = load ptr, ptr %incx.addr, align 8, !tbaa !4
  %217 = load i32, ptr %216, align 4, !tbaa !8
  %218 = load i32, ptr %ix, align 4, !tbaa !8
  %sub251 = sub nsw i32 %218, %217
  store i32 %sub251, ptr %ix, align 4, !tbaa !8
  br label %for.inc252

for.inc252:                                       ; preds = %for.body204
  %219 = load i32, ptr %i__, align 4, !tbaa !8
  %dec253 = add nsw i32 %219, -1
  store i32 %dec253, ptr %i__, align 4, !tbaa !8
  br label %for.cond202

for.end254:                                       ; preds = %for.cond202
  br label %if.end255

if.end255:                                        ; preds = %for.end254, %lor.lhs.false163
  %220 = load ptr, ptr %incx.addr, align 8, !tbaa !4
  %221 = load i32, ptr %220, align 4, !tbaa !8
  %222 = load i32, ptr %jx, align 4, !tbaa !8
  %sub256 = sub nsw i32 %222, %221
  store i32 %sub256, ptr %jx, align 4, !tbaa !8
  br label %for.inc257

for.inc257:                                       ; preds = %if.end255
  %223 = load i32, ptr %j, align 4, !tbaa !8
  %dec258 = add nsw i32 %223, -1
  store i32 %dec258, ptr %j, align 4, !tbaa !8
  br label %for.cond155

for.end259:                                       ; preds = %for.cond155
  br label %if.end260

if.end260:                                        ; preds = %for.end259, %for.end150
  br label %if.end472

if.else261:                                       ; preds = %if.then57
  %224 = load ptr, ptr %incx.addr, align 8, !tbaa !4
  %225 = load i32, ptr %224, align 4, !tbaa !8
  %cmp262 = icmp eq i32 %225, 1
  br i1 %cmp262, label %if.then263, label %if.else365

if.then263:                                       ; preds = %if.else261
  %226 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %227 = load i32, ptr %226, align 4, !tbaa !8
  store i32 %227, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %j, align 4, !tbaa !8
  br label %for.cond264

for.cond264:                                      ; preds = %for.inc362, %if.then263
  %228 = load i32, ptr %j, align 4, !tbaa !8
  %229 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp265 = icmp sle i32 %228, %229
  br i1 %cmp265, label %for.body266, label %for.end364

for.body266:                                      ; preds = %for.cond264
  %230 = load i32, ptr %j, align 4, !tbaa !8
  store i32 %230, ptr %i__2, align 4, !tbaa !8
  %231 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %232 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom267 = sext i32 %232 to i64
  %arrayidx268 = getelementptr inbounds %struct.scomplex, ptr %231, i64 %idxprom267
  %real269 = getelementptr inbounds %struct.scomplex, ptr %arrayidx268, i32 0, i32 0
  %233 = load float, ptr %real269, align 4, !tbaa !10
  %cmp270 = fcmp une float %233, 0.000000e+00
  br i1 %cmp270, label %if.then276, label %lor.lhs.false271

lor.lhs.false271:                                 ; preds = %for.body266
  %234 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %235 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom272 = sext i32 %235 to i64
  %arrayidx273 = getelementptr inbounds %struct.scomplex, ptr %234, i64 %idxprom272
  %imag274 = getelementptr inbounds %struct.scomplex, ptr %arrayidx273, i32 0, i32 1
  %236 = load float, ptr %imag274, align 4, !tbaa !13
  %cmp275 = fcmp une float %236, 0.000000e+00
  br i1 %cmp275, label %if.then276, label %if.end361

if.then276:                                       ; preds = %lor.lhs.false271, %for.body266
  %237 = load i32, ptr %j, align 4, !tbaa !8
  %sub277 = sub nsw i32 1, %237
  store i32 %sub277, ptr %l, align 4, !tbaa !8
  %238 = load i32, ptr %nounit, align 4, !tbaa !8
  %tobool278 = icmp ne i32 %238, 0
  br i1 %tobool278, label %if.then279, label %if.end294

if.then279:                                       ; preds = %if.then276
  %239 = load i32, ptr %j, align 4, !tbaa !8
  store i32 %239, ptr %i__2, align 4, !tbaa !8
  %240 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %241 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom280 = sext i32 %241 to i64
  %arrayidx281 = getelementptr inbounds %struct.scomplex, ptr %240, i64 %idxprom280
  %242 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %243 = load i32, ptr %j, align 4, !tbaa !8
  %244 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul282 = mul nsw i32 %243, %244
  %add283 = add nsw i32 %mul282, 1
  %idxprom284 = sext i32 %add283 to i64
  %arrayidx285 = getelementptr inbounds %struct.scomplex, ptr %242, i64 %idxprom284
  call void @bla_c_div(ptr noundef %q__1, ptr noundef %arrayidx281, ptr noundef %arrayidx285)
  %real286 = getelementptr inbounds %struct.scomplex, ptr %q__1, i32 0, i32 0
  %245 = load float, ptr %real286, align 4, !tbaa !10
  %246 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %247 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom287 = sext i32 %247 to i64
  %arrayidx288 = getelementptr inbounds %struct.scomplex, ptr %246, i64 %idxprom287
  %real289 = getelementptr inbounds %struct.scomplex, ptr %arrayidx288, i32 0, i32 0
  store float %245, ptr %real289, align 4, !tbaa !10
  %imag290 = getelementptr inbounds %struct.scomplex, ptr %q__1, i32 0, i32 1
  %248 = load float, ptr %imag290, align 4, !tbaa !13
  %249 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %250 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom291 = sext i32 %250 to i64
  %arrayidx292 = getelementptr inbounds %struct.scomplex, ptr %249, i64 %idxprom291
  %imag293 = getelementptr inbounds %struct.scomplex, ptr %arrayidx292, i32 0, i32 1
  store float %248, ptr %imag293, align 4, !tbaa !13
  br label %if.end294

if.end294:                                        ; preds = %if.then279, %if.then276
  %251 = load i32, ptr %j, align 4, !tbaa !8
  store i32 %251, ptr %i__2, align 4, !tbaa !8
  %252 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %253 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom295 = sext i32 %253 to i64
  %arrayidx296 = getelementptr inbounds %struct.scomplex, ptr %252, i64 %idxprom295
  %real297 = getelementptr inbounds %struct.scomplex, ptr %arrayidx296, i32 0, i32 0
  %254 = load float, ptr %real297, align 4, !tbaa !10
  %real298 = getelementptr inbounds %struct.scomplex, ptr %temp, i32 0, i32 0
  store float %254, ptr %real298, align 4, !tbaa !10
  %255 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %256 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom299 = sext i32 %256 to i64
  %arrayidx300 = getelementptr inbounds %struct.scomplex, ptr %255, i64 %idxprom299
  %imag301 = getelementptr inbounds %struct.scomplex, ptr %arrayidx300, i32 0, i32 1
  %257 = load float, ptr %imag301, align 4, !tbaa !13
  %imag302 = getelementptr inbounds %struct.scomplex, ptr %temp, i32 0, i32 1
  store float %257, ptr %imag302, align 4, !tbaa !13
  %258 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %259 = load i32, ptr %258, align 4, !tbaa !8
  store i32 %259, ptr %i__3, align 4, !tbaa !8
  %260 = load i32, ptr %j, align 4, !tbaa !8
  %261 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %262 = load i32, ptr %261, align 4, !tbaa !8
  %add303 = add nsw i32 %260, %262
  store i32 %add303, ptr %i__4, align 4, !tbaa !8
  %263 = load i32, ptr %i__3, align 4, !tbaa !8
  %264 = load i32, ptr %i__4, align 4, !tbaa !8
  %cmp304 = icmp sle i32 %263, %264
  br i1 %cmp304, label %cond.true305, label %cond.false306

cond.true305:                                     ; preds = %if.end294
  %265 = load i32, ptr %i__3, align 4, !tbaa !8
  br label %cond.end307

cond.false306:                                    ; preds = %if.end294
  %266 = load i32, ptr %i__4, align 4, !tbaa !8
  br label %cond.end307

cond.end307:                                      ; preds = %cond.false306, %cond.true305
  %cond308 = phi i32 [ %265, %cond.true305 ], [ %266, %cond.false306 ]
  store i32 %cond308, ptr %i__2, align 4, !tbaa !8
  %267 = load i32, ptr %j, align 4, !tbaa !8
  %add309 = add nsw i32 %267, 1
  store i32 %add309, ptr %i__, align 4, !tbaa !8
  br label %for.cond310

for.cond310:                                      ; preds = %for.inc359, %cond.end307
  %268 = load i32, ptr %i__, align 4, !tbaa !8
  %269 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp311 = icmp sle i32 %268, %269
  br i1 %cmp311, label %for.body312, label %for.end360

for.body312:                                      ; preds = %for.cond310
  %270 = load i32, ptr %i__, align 4, !tbaa !8
  store i32 %270, ptr %i__3, align 4, !tbaa !8
  %271 = load i32, ptr %i__, align 4, !tbaa !8
  store i32 %271, ptr %i__4, align 4, !tbaa !8
  %272 = load i32, ptr %l, align 4, !tbaa !8
  %273 = load i32, ptr %i__, align 4, !tbaa !8
  %add313 = add nsw i32 %272, %273
  %274 = load i32, ptr %j, align 4, !tbaa !8
  %275 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul314 = mul nsw i32 %274, %275
  %add315 = add nsw i32 %add313, %mul314
  store i32 %add315, ptr %i__5, align 4, !tbaa !8
  %real316 = getelementptr inbounds %struct.scomplex, ptr %temp, i32 0, i32 0
  %276 = load float, ptr %real316, align 4, !tbaa !10
  %277 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %278 = load i32, ptr %i__5, align 4, !tbaa !8
  %idxprom317 = sext i32 %278 to i64
  %arrayidx318 = getelementptr inbounds %struct.scomplex, ptr %277, i64 %idxprom317
  %real319 = getelementptr inbounds %struct.scomplex, ptr %arrayidx318, i32 0, i32 0
  %279 = load float, ptr %real319, align 4, !tbaa !10
  %imag321 = getelementptr inbounds %struct.scomplex, ptr %temp, i32 0, i32 1
  %280 = load float, ptr %imag321, align 4, !tbaa !13
  %281 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %282 = load i32, ptr %i__5, align 4, !tbaa !8
  %idxprom322 = sext i32 %282 to i64
  %arrayidx323 = getelementptr inbounds %struct.scomplex, ptr %281, i64 %idxprom322
  %imag324 = getelementptr inbounds %struct.scomplex, ptr %arrayidx323, i32 0, i32 1
  %283 = load float, ptr %imag324, align 4, !tbaa !13
  %mul325 = fmul float %280, %283
  %neg326 = fneg float %mul325
  %284 = call float @llvm.fmuladd.f32(float %276, float %279, float %neg326)
  %real327 = getelementptr inbounds %struct.scomplex, ptr %q__2, i32 0, i32 0
  store float %284, ptr %real327, align 4, !tbaa !10
  %real328 = getelementptr inbounds %struct.scomplex, ptr %temp, i32 0, i32 0
  %285 = load float, ptr %real328, align 4, !tbaa !10
  %286 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %287 = load i32, ptr %i__5, align 4, !tbaa !8
  %idxprom329 = sext i32 %287 to i64
  %arrayidx330 = getelementptr inbounds %struct.scomplex, ptr %286, i64 %idxprom329
  %imag331 = getelementptr inbounds %struct.scomplex, ptr %arrayidx330, i32 0, i32 1
  %288 = load float, ptr %imag331, align 4, !tbaa !13
  %imag333 = getelementptr inbounds %struct.scomplex, ptr %temp, i32 0, i32 1
  %289 = load float, ptr %imag333, align 4, !tbaa !13
  %290 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %291 = load i32, ptr %i__5, align 4, !tbaa !8
  %idxprom334 = sext i32 %291 to i64
  %arrayidx335 = getelementptr inbounds %struct.scomplex, ptr %290, i64 %idxprom334
  %real336 = getelementptr inbounds %struct.scomplex, ptr %arrayidx335, i32 0, i32 0
  %292 = load float, ptr %real336, align 4, !tbaa !10
  %mul337 = fmul float %289, %292
  %293 = call float @llvm.fmuladd.f32(float %285, float %288, float %mul337)
  %imag338 = getelementptr inbounds %struct.scomplex, ptr %q__2, i32 0, i32 1
  store float %293, ptr %imag338, align 4, !tbaa !13
  %294 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %295 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom339 = sext i32 %295 to i64
  %arrayidx340 = getelementptr inbounds %struct.scomplex, ptr %294, i64 %idxprom339
  %real341 = getelementptr inbounds %struct.scomplex, ptr %arrayidx340, i32 0, i32 0
  %296 = load float, ptr %real341, align 4, !tbaa !10
  %real342 = getelementptr inbounds %struct.scomplex, ptr %q__2, i32 0, i32 0
  %297 = load float, ptr %real342, align 4, !tbaa !10
  %sub343 = fsub float %296, %297
  %real344 = getelementptr inbounds %struct.scomplex, ptr %q__1, i32 0, i32 0
  store float %sub343, ptr %real344, align 4, !tbaa !10
  %298 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %299 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom345 = sext i32 %299 to i64
  %arrayidx346 = getelementptr inbounds %struct.scomplex, ptr %298, i64 %idxprom345
  %imag347 = getelementptr inbounds %struct.scomplex, ptr %arrayidx346, i32 0, i32 1
  %300 = load float, ptr %imag347, align 4, !tbaa !13
  %imag348 = getelementptr inbounds %struct.scomplex, ptr %q__2, i32 0, i32 1
  %301 = load float, ptr %imag348, align 4, !tbaa !13
  %sub349 = fsub float %300, %301
  %imag350 = getelementptr inbounds %struct.scomplex, ptr %q__1, i32 0, i32 1
  store float %sub349, ptr %imag350, align 4, !tbaa !13
  %real351 = getelementptr inbounds %struct.scomplex, ptr %q__1, i32 0, i32 0
  %302 = load float, ptr %real351, align 4, !tbaa !10
  %303 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %304 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom352 = sext i32 %304 to i64
  %arrayidx353 = getelementptr inbounds %struct.scomplex, ptr %303, i64 %idxprom352
  %real354 = getelementptr inbounds %struct.scomplex, ptr %arrayidx353, i32 0, i32 0
  store float %302, ptr %real354, align 4, !tbaa !10
  %imag355 = getelementptr inbounds %struct.scomplex, ptr %q__1, i32 0, i32 1
  %305 = load float, ptr %imag355, align 4, !tbaa !13
  %306 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %307 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom356 = sext i32 %307 to i64
  %arrayidx357 = getelementptr inbounds %struct.scomplex, ptr %306, i64 %idxprom356
  %imag358 = getelementptr inbounds %struct.scomplex, ptr %arrayidx357, i32 0, i32 1
  store float %305, ptr %imag358, align 4, !tbaa !13
  br label %for.inc359

for.inc359:                                       ; preds = %for.body312
  %308 = load i32, ptr %i__, align 4, !tbaa !8
  %inc = add nsw i32 %308, 1
  store i32 %inc, ptr %i__, align 4, !tbaa !8
  br label %for.cond310

for.end360:                                       ; preds = %for.cond310
  br label %if.end361

if.end361:                                        ; preds = %for.end360, %lor.lhs.false271
  br label %for.inc362

for.inc362:                                       ; preds = %if.end361
  %309 = load i32, ptr %j, align 4, !tbaa !8
  %inc363 = add nsw i32 %309, 1
  store i32 %inc363, ptr %j, align 4, !tbaa !8
  br label %for.cond264

for.end364:                                       ; preds = %for.cond264
  br label %if.end471

if.else365:                                       ; preds = %if.else261
  %310 = load i32, ptr %kx, align 4, !tbaa !8
  store i32 %310, ptr %jx, align 4, !tbaa !8
  %311 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %312 = load i32, ptr %311, align 4, !tbaa !8
  store i32 %312, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %j, align 4, !tbaa !8
  br label %for.cond366

for.cond366:                                      ; preds = %for.inc468, %if.else365
  %313 = load i32, ptr %j, align 4, !tbaa !8
  %314 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp367 = icmp sle i32 %313, %314
  br i1 %cmp367, label %for.body368, label %for.end470

for.body368:                                      ; preds = %for.cond366
  %315 = load ptr, ptr %incx.addr, align 8, !tbaa !4
  %316 = load i32, ptr %315, align 4, !tbaa !8
  %317 = load i32, ptr %kx, align 4, !tbaa !8
  %add369 = add nsw i32 %317, %316
  store i32 %add369, ptr %kx, align 4, !tbaa !8
  %318 = load i32, ptr %jx, align 4, !tbaa !8
  store i32 %318, ptr %i__2, align 4, !tbaa !8
  %319 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %320 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom370 = sext i32 %320 to i64
  %arrayidx371 = getelementptr inbounds %struct.scomplex, ptr %319, i64 %idxprom370
  %real372 = getelementptr inbounds %struct.scomplex, ptr %arrayidx371, i32 0, i32 0
  %321 = load float, ptr %real372, align 4, !tbaa !10
  %cmp373 = fcmp une float %321, 0.000000e+00
  br i1 %cmp373, label %if.then379, label %lor.lhs.false374

lor.lhs.false374:                                 ; preds = %for.body368
  %322 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %323 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom375 = sext i32 %323 to i64
  %arrayidx376 = getelementptr inbounds %struct.scomplex, ptr %322, i64 %idxprom375
  %imag377 = getelementptr inbounds %struct.scomplex, ptr %arrayidx376, i32 0, i32 1
  %324 = load float, ptr %imag377, align 4, !tbaa !13
  %cmp378 = fcmp une float %324, 0.000000e+00
  br i1 %cmp378, label %if.then379, label %if.end466

if.then379:                                       ; preds = %lor.lhs.false374, %for.body368
  %325 = load i32, ptr %kx, align 4, !tbaa !8
  store i32 %325, ptr %ix, align 4, !tbaa !8
  %326 = load i32, ptr %j, align 4, !tbaa !8
  %sub380 = sub nsw i32 1, %326
  store i32 %sub380, ptr %l, align 4, !tbaa !8
  %327 = load i32, ptr %nounit, align 4, !tbaa !8
  %tobool381 = icmp ne i32 %327, 0
  br i1 %tobool381, label %if.then382, label %if.end397

if.then382:                                       ; preds = %if.then379
  %328 = load i32, ptr %jx, align 4, !tbaa !8
  store i32 %328, ptr %i__2, align 4, !tbaa !8
  %329 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %330 = load i32, ptr %jx, align 4, !tbaa !8
  %idxprom383 = sext i32 %330 to i64
  %arrayidx384 = getelementptr inbounds %struct.scomplex, ptr %329, i64 %idxprom383
  %331 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %332 = load i32, ptr %j, align 4, !tbaa !8
  %333 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul385 = mul nsw i32 %332, %333
  %add386 = add nsw i32 %mul385, 1
  %idxprom387 = sext i32 %add386 to i64
  %arrayidx388 = getelementptr inbounds %struct.scomplex, ptr %331, i64 %idxprom387
  call void @bla_c_div(ptr noundef %q__1, ptr noundef %arrayidx384, ptr noundef %arrayidx388)
  %real389 = getelementptr inbounds %struct.scomplex, ptr %q__1, i32 0, i32 0
  %334 = load float, ptr %real389, align 4, !tbaa !10
  %335 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %336 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom390 = sext i32 %336 to i64
  %arrayidx391 = getelementptr inbounds %struct.scomplex, ptr %335, i64 %idxprom390
  %real392 = getelementptr inbounds %struct.scomplex, ptr %arrayidx391, i32 0, i32 0
  store float %334, ptr %real392, align 4, !tbaa !10
  %imag393 = getelementptr inbounds %struct.scomplex, ptr %q__1, i32 0, i32 1
  %337 = load float, ptr %imag393, align 4, !tbaa !13
  %338 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %339 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom394 = sext i32 %339 to i64
  %arrayidx395 = getelementptr inbounds %struct.scomplex, ptr %338, i64 %idxprom394
  %imag396 = getelementptr inbounds %struct.scomplex, ptr %arrayidx395, i32 0, i32 1
  store float %337, ptr %imag396, align 4, !tbaa !13
  br label %if.end397

if.end397:                                        ; preds = %if.then382, %if.then379
  %340 = load i32, ptr %jx, align 4, !tbaa !8
  store i32 %340, ptr %i__2, align 4, !tbaa !8
  %341 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %342 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom398 = sext i32 %342 to i64
  %arrayidx399 = getelementptr inbounds %struct.scomplex, ptr %341, i64 %idxprom398
  %real400 = getelementptr inbounds %struct.scomplex, ptr %arrayidx399, i32 0, i32 0
  %343 = load float, ptr %real400, align 4, !tbaa !10
  %real401 = getelementptr inbounds %struct.scomplex, ptr %temp, i32 0, i32 0
  store float %343, ptr %real401, align 4, !tbaa !10
  %344 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %345 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom402 = sext i32 %345 to i64
  %arrayidx403 = getelementptr inbounds %struct.scomplex, ptr %344, i64 %idxprom402
  %imag404 = getelementptr inbounds %struct.scomplex, ptr %arrayidx403, i32 0, i32 1
  %346 = load float, ptr %imag404, align 4, !tbaa !13
  %imag405 = getelementptr inbounds %struct.scomplex, ptr %temp, i32 0, i32 1
  store float %346, ptr %imag405, align 4, !tbaa !13
  %347 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %348 = load i32, ptr %347, align 4, !tbaa !8
  store i32 %348, ptr %i__3, align 4, !tbaa !8
  %349 = load i32, ptr %j, align 4, !tbaa !8
  %350 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %351 = load i32, ptr %350, align 4, !tbaa !8
  %add406 = add nsw i32 %349, %351
  store i32 %add406, ptr %i__4, align 4, !tbaa !8
  %352 = load i32, ptr %i__3, align 4, !tbaa !8
  %353 = load i32, ptr %i__4, align 4, !tbaa !8
  %cmp407 = icmp sle i32 %352, %353
  br i1 %cmp407, label %cond.true408, label %cond.false409

cond.true408:                                     ; preds = %if.end397
  %354 = load i32, ptr %i__3, align 4, !tbaa !8
  br label %cond.end410

cond.false409:                                    ; preds = %if.end397
  %355 = load i32, ptr %i__4, align 4, !tbaa !8
  br label %cond.end410

cond.end410:                                      ; preds = %cond.false409, %cond.true408
  %cond411 = phi i32 [ %354, %cond.true408 ], [ %355, %cond.false409 ]
  store i32 %cond411, ptr %i__2, align 4, !tbaa !8
  %356 = load i32, ptr %j, align 4, !tbaa !8
  %add412 = add nsw i32 %356, 1
  store i32 %add412, ptr %i__, align 4, !tbaa !8
  br label %for.cond413

for.cond413:                                      ; preds = %for.inc463, %cond.end410
  %357 = load i32, ptr %i__, align 4, !tbaa !8
  %358 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp414 = icmp sle i32 %357, %358
  br i1 %cmp414, label %for.body415, label %for.end465

for.body415:                                      ; preds = %for.cond413
  %359 = load i32, ptr %ix, align 4, !tbaa !8
  store i32 %359, ptr %i__3, align 4, !tbaa !8
  %360 = load i32, ptr %ix, align 4, !tbaa !8
  store i32 %360, ptr %i__4, align 4, !tbaa !8
  %361 = load i32, ptr %l, align 4, !tbaa !8
  %362 = load i32, ptr %i__, align 4, !tbaa !8
  %add416 = add nsw i32 %361, %362
  %363 = load i32, ptr %j, align 4, !tbaa !8
  %364 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul417 = mul nsw i32 %363, %364
  %add418 = add nsw i32 %add416, %mul417
  store i32 %add418, ptr %i__5, align 4, !tbaa !8
  %real419 = getelementptr inbounds %struct.scomplex, ptr %temp, i32 0, i32 0
  %365 = load float, ptr %real419, align 4, !tbaa !10
  %366 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %367 = load i32, ptr %i__5, align 4, !tbaa !8
  %idxprom420 = sext i32 %367 to i64
  %arrayidx421 = getelementptr inbounds %struct.scomplex, ptr %366, i64 %idxprom420
  %real422 = getelementptr inbounds %struct.scomplex, ptr %arrayidx421, i32 0, i32 0
  %368 = load float, ptr %real422, align 4, !tbaa !10
  %imag424 = getelementptr inbounds %struct.scomplex, ptr %temp, i32 0, i32 1
  %369 = load float, ptr %imag424, align 4, !tbaa !13
  %370 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %371 = load i32, ptr %i__5, align 4, !tbaa !8
  %idxprom425 = sext i32 %371 to i64
  %arrayidx426 = getelementptr inbounds %struct.scomplex, ptr %370, i64 %idxprom425
  %imag427 = getelementptr inbounds %struct.scomplex, ptr %arrayidx426, i32 0, i32 1
  %372 = load float, ptr %imag427, align 4, !tbaa !13
  %mul428 = fmul float %369, %372
  %neg429 = fneg float %mul428
  %373 = call float @llvm.fmuladd.f32(float %365, float %368, float %neg429)
  %real430 = getelementptr inbounds %struct.scomplex, ptr %q__2, i32 0, i32 0
  store float %373, ptr %real430, align 4, !tbaa !10
  %real431 = getelementptr inbounds %struct.scomplex, ptr %temp, i32 0, i32 0
  %374 = load float, ptr %real431, align 4, !tbaa !10
  %375 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %376 = load i32, ptr %i__5, align 4, !tbaa !8
  %idxprom432 = sext i32 %376 to i64
  %arrayidx433 = getelementptr inbounds %struct.scomplex, ptr %375, i64 %idxprom432
  %imag434 = getelementptr inbounds %struct.scomplex, ptr %arrayidx433, i32 0, i32 1
  %377 = load float, ptr %imag434, align 4, !tbaa !13
  %imag436 = getelementptr inbounds %struct.scomplex, ptr %temp, i32 0, i32 1
  %378 = load float, ptr %imag436, align 4, !tbaa !13
  %379 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %380 = load i32, ptr %i__5, align 4, !tbaa !8
  %idxprom437 = sext i32 %380 to i64
  %arrayidx438 = getelementptr inbounds %struct.scomplex, ptr %379, i64 %idxprom437
  %real439 = getelementptr inbounds %struct.scomplex, ptr %arrayidx438, i32 0, i32 0
  %381 = load float, ptr %real439, align 4, !tbaa !10
  %mul440 = fmul float %378, %381
  %382 = call float @llvm.fmuladd.f32(float %374, float %377, float %mul440)
  %imag441 = getelementptr inbounds %struct.scomplex, ptr %q__2, i32 0, i32 1
  store float %382, ptr %imag441, align 4, !tbaa !13
  %383 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %384 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom442 = sext i32 %384 to i64
  %arrayidx443 = getelementptr inbounds %struct.scomplex, ptr %383, i64 %idxprom442
  %real444 = getelementptr inbounds %struct.scomplex, ptr %arrayidx443, i32 0, i32 0
  %385 = load float, ptr %real444, align 4, !tbaa !10
  %real445 = getelementptr inbounds %struct.scomplex, ptr %q__2, i32 0, i32 0
  %386 = load float, ptr %real445, align 4, !tbaa !10
  %sub446 = fsub float %385, %386
  %real447 = getelementptr inbounds %struct.scomplex, ptr %q__1, i32 0, i32 0
  store float %sub446, ptr %real447, align 4, !tbaa !10
  %387 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %388 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom448 = sext i32 %388 to i64
  %arrayidx449 = getelementptr inbounds %struct.scomplex, ptr %387, i64 %idxprom448
  %imag450 = getelementptr inbounds %struct.scomplex, ptr %arrayidx449, i32 0, i32 1
  %389 = load float, ptr %imag450, align 4, !tbaa !13
  %imag451 = getelementptr inbounds %struct.scomplex, ptr %q__2, i32 0, i32 1
  %390 = load float, ptr %imag451, align 4, !tbaa !13
  %sub452 = fsub float %389, %390
  %imag453 = getelementptr inbounds %struct.scomplex, ptr %q__1, i32 0, i32 1
  store float %sub452, ptr %imag453, align 4, !tbaa !13
  %real454 = getelementptr inbounds %struct.scomplex, ptr %q__1, i32 0, i32 0
  %391 = load float, ptr %real454, align 4, !tbaa !10
  %392 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %393 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom455 = sext i32 %393 to i64
  %arrayidx456 = getelementptr inbounds %struct.scomplex, ptr %392, i64 %idxprom455
  %real457 = getelementptr inbounds %struct.scomplex, ptr %arrayidx456, i32 0, i32 0
  store float %391, ptr %real457, align 4, !tbaa !10
  %imag458 = getelementptr inbounds %struct.scomplex, ptr %q__1, i32 0, i32 1
  %394 = load float, ptr %imag458, align 4, !tbaa !13
  %395 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %396 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom459 = sext i32 %396 to i64
  %arrayidx460 = getelementptr inbounds %struct.scomplex, ptr %395, i64 %idxprom459
  %imag461 = getelementptr inbounds %struct.scomplex, ptr %arrayidx460, i32 0, i32 1
  store float %394, ptr %imag461, align 4, !tbaa !13
  %397 = load ptr, ptr %incx.addr, align 8, !tbaa !4
  %398 = load i32, ptr %397, align 4, !tbaa !8
  %399 = load i32, ptr %ix, align 4, !tbaa !8
  %add462 = add nsw i32 %399, %398
  store i32 %add462, ptr %ix, align 4, !tbaa !8
  br label %for.inc463

for.inc463:                                       ; preds = %for.body415
  %400 = load i32, ptr %i__, align 4, !tbaa !8
  %inc464 = add nsw i32 %400, 1
  store i32 %inc464, ptr %i__, align 4, !tbaa !8
  br label %for.cond413

for.end465:                                       ; preds = %for.cond413
  br label %if.end466

if.end466:                                        ; preds = %for.end465, %lor.lhs.false374
  %401 = load ptr, ptr %incx.addr, align 8, !tbaa !4
  %402 = load i32, ptr %401, align 4, !tbaa !8
  %403 = load i32, ptr %jx, align 4, !tbaa !8
  %add467 = add nsw i32 %403, %402
  store i32 %add467, ptr %jx, align 4, !tbaa !8
  br label %for.inc468

for.inc468:                                       ; preds = %if.end466
  %404 = load i32, ptr %j, align 4, !tbaa !8
  %inc469 = add nsw i32 %404, 1
  store i32 %inc469, ptr %j, align 4, !tbaa !8
  br label %for.cond366

for.end470:                                       ; preds = %for.cond366
  br label %if.end471

if.end471:                                        ; preds = %for.end470, %for.end364
  br label %if.end472

if.end472:                                        ; preds = %if.end471, %if.end260
  br label %if.end1150

if.else473:                                       ; preds = %if.end54
  %405 = load ptr, ptr %uplo.addr, align 8, !tbaa !4
  %call474 = call i32 @lsame_(ptr noundef %405, ptr noundef @.str, i32 noundef 1, i32 noundef 1)
  %tobool475 = icmp ne i32 %call474, 0
  br i1 %tobool475, label %if.then476, label %if.else811

if.then476:                                       ; preds = %if.else473
  %406 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %407 = load i32, ptr %406, align 4, !tbaa !8
  %add477 = add nsw i32 %407, 1
  store i32 %add477, ptr %kplus1, align 4, !tbaa !8
  %408 = load ptr, ptr %incx.addr, align 8, !tbaa !4
  %409 = load i32, ptr %408, align 4, !tbaa !8
  %cmp478 = icmp eq i32 %409, 1
  br i1 %cmp478, label %if.then479, label %if.else641

if.then479:                                       ; preds = %if.then476
  %410 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %411 = load i32, ptr %410, align 4, !tbaa !8
  store i32 %411, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %j, align 4, !tbaa !8
  br label %for.cond480

for.cond480:                                      ; preds = %for.inc638, %if.then479
  %412 = load i32, ptr %j, align 4, !tbaa !8
  %413 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp481 = icmp sle i32 %412, %413
  br i1 %cmp481, label %for.body482, label %for.end640

for.body482:                                      ; preds = %for.cond480
  %414 = load i32, ptr %j, align 4, !tbaa !8
  store i32 %414, ptr %i__2, align 4, !tbaa !8
  %415 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %416 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom483 = sext i32 %416 to i64
  %arrayidx484 = getelementptr inbounds %struct.scomplex, ptr %415, i64 %idxprom483
  %real485 = getelementptr inbounds %struct.scomplex, ptr %arrayidx484, i32 0, i32 0
  %417 = load float, ptr %real485, align 4, !tbaa !10
  %real486 = getelementptr inbounds %struct.scomplex, ptr %temp, i32 0, i32 0
  store float %417, ptr %real486, align 4, !tbaa !10
  %418 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %419 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom487 = sext i32 %419 to i64
  %arrayidx488 = getelementptr inbounds %struct.scomplex, ptr %418, i64 %idxprom487
  %imag489 = getelementptr inbounds %struct.scomplex, ptr %arrayidx488, i32 0, i32 1
  %420 = load float, ptr %imag489, align 4, !tbaa !13
  %imag490 = getelementptr inbounds %struct.scomplex, ptr %temp, i32 0, i32 1
  store float %420, ptr %imag490, align 4, !tbaa !13
  %421 = load i32, ptr %kplus1, align 4, !tbaa !8
  %422 = load i32, ptr %j, align 4, !tbaa !8
  %sub491 = sub nsw i32 %421, %422
  store i32 %sub491, ptr %l, align 4, !tbaa !8
  %423 = load i32, ptr %noconj, align 4, !tbaa !8
  %tobool492 = icmp ne i32 %423, 0
  br i1 %tobool492, label %if.then493, label %if.else564

if.then493:                                       ; preds = %for.body482
  store i32 1, ptr %i__2, align 4, !tbaa !8
  %424 = load i32, ptr %j, align 4, !tbaa !8
  %425 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %426 = load i32, ptr %425, align 4, !tbaa !8
  %sub494 = sub nsw i32 %424, %426
  store i32 %sub494, ptr %i__3, align 4, !tbaa !8
  %427 = load i32, ptr %j, align 4, !tbaa !8
  %sub495 = sub nsw i32 %427, 1
  store i32 %sub495, ptr %i__4, align 4, !tbaa !8
  %428 = load i32, ptr %i__2, align 4, !tbaa !8
  %429 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp496 = icmp sge i32 %428, %429
  br i1 %cmp496, label %cond.true497, label %cond.false498

cond.true497:                                     ; preds = %if.then493
  %430 = load i32, ptr %i__2, align 4, !tbaa !8
  br label %cond.end499

cond.false498:                                    ; preds = %if.then493
  %431 = load i32, ptr %i__3, align 4, !tbaa !8
  br label %cond.end499

cond.end499:                                      ; preds = %cond.false498, %cond.true497
  %cond500 = phi i32 [ %430, %cond.true497 ], [ %431, %cond.false498 ]
  store i32 %cond500, ptr %i__, align 4, !tbaa !8
  br label %for.cond501

for.cond501:                                      ; preds = %for.inc550, %cond.end499
  %432 = load i32, ptr %i__, align 4, !tbaa !8
  %433 = load i32, ptr %i__4, align 4, !tbaa !8
  %cmp502 = icmp sle i32 %432, %433
  br i1 %cmp502, label %for.body503, label %for.end552

for.body503:                                      ; preds = %for.cond501
  %434 = load i32, ptr %l, align 4, !tbaa !8
  %435 = load i32, ptr %i__, align 4, !tbaa !8
  %add504 = add nsw i32 %434, %435
  %436 = load i32, ptr %j, align 4, !tbaa !8
  %437 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul505 = mul nsw i32 %436, %437
  %add506 = add nsw i32 %add504, %mul505
  store i32 %add506, ptr %i__2, align 4, !tbaa !8
  %438 = load i32, ptr %i__, align 4, !tbaa !8
  store i32 %438, ptr %i__3, align 4, !tbaa !8
  %439 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %440 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom507 = sext i32 %440 to i64
  %arrayidx508 = getelementptr inbounds %struct.scomplex, ptr %439, i64 %idxprom507
  %real509 = getelementptr inbounds %struct.scomplex, ptr %arrayidx508, i32 0, i32 0
  %441 = load float, ptr %real509, align 4, !tbaa !10
  %442 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %443 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom510 = sext i32 %443 to i64
  %arrayidx511 = getelementptr inbounds %struct.scomplex, ptr %442, i64 %idxprom510
  %real512 = getelementptr inbounds %struct.scomplex, ptr %arrayidx511, i32 0, i32 0
  %444 = load float, ptr %real512, align 4, !tbaa !10
  %445 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %446 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom514 = sext i32 %446 to i64
  %arrayidx515 = getelementptr inbounds %struct.scomplex, ptr %445, i64 %idxprom514
  %imag516 = getelementptr inbounds %struct.scomplex, ptr %arrayidx515, i32 0, i32 1
  %447 = load float, ptr %imag516, align 4, !tbaa !13
  %448 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %449 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom517 = sext i32 %449 to i64
  %arrayidx518 = getelementptr inbounds %struct.scomplex, ptr %448, i64 %idxprom517
  %imag519 = getelementptr inbounds %struct.scomplex, ptr %arrayidx518, i32 0, i32 1
  %450 = load float, ptr %imag519, align 4, !tbaa !13
  %mul520 = fmul float %447, %450
  %neg521 = fneg float %mul520
  %451 = call float @llvm.fmuladd.f32(float %441, float %444, float %neg521)
  %real522 = getelementptr inbounds %struct.scomplex, ptr %q__2, i32 0, i32 0
  store float %451, ptr %real522, align 4, !tbaa !10
  %452 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %453 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom523 = sext i32 %453 to i64
  %arrayidx524 = getelementptr inbounds %struct.scomplex, ptr %452, i64 %idxprom523
  %real525 = getelementptr inbounds %struct.scomplex, ptr %arrayidx524, i32 0, i32 0
  %454 = load float, ptr %real525, align 4, !tbaa !10
  %455 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %456 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom526 = sext i32 %456 to i64
  %arrayidx527 = getelementptr inbounds %struct.scomplex, ptr %455, i64 %idxprom526
  %imag528 = getelementptr inbounds %struct.scomplex, ptr %arrayidx527, i32 0, i32 1
  %457 = load float, ptr %imag528, align 4, !tbaa !13
  %458 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %459 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom530 = sext i32 %459 to i64
  %arrayidx531 = getelementptr inbounds %struct.scomplex, ptr %458, i64 %idxprom530
  %imag532 = getelementptr inbounds %struct.scomplex, ptr %arrayidx531, i32 0, i32 1
  %460 = load float, ptr %imag532, align 4, !tbaa !13
  %461 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %462 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom533 = sext i32 %462 to i64
  %arrayidx534 = getelementptr inbounds %struct.scomplex, ptr %461, i64 %idxprom533
  %real535 = getelementptr inbounds %struct.scomplex, ptr %arrayidx534, i32 0, i32 0
  %463 = load float, ptr %real535, align 4, !tbaa !10
  %mul536 = fmul float %460, %463
  %464 = call float @llvm.fmuladd.f32(float %454, float %457, float %mul536)
  %imag537 = getelementptr inbounds %struct.scomplex, ptr %q__2, i32 0, i32 1
  store float %464, ptr %imag537, align 4, !tbaa !13
  %real538 = getelementptr inbounds %struct.scomplex, ptr %temp, i32 0, i32 0
  %465 = load float, ptr %real538, align 4, !tbaa !10
  %real539 = getelementptr inbounds %struct.scomplex, ptr %q__2, i32 0, i32 0
  %466 = load float, ptr %real539, align 4, !tbaa !10
  %sub540 = fsub float %465, %466
  %real541 = getelementptr inbounds %struct.scomplex, ptr %q__1, i32 0, i32 0
  store float %sub540, ptr %real541, align 4, !tbaa !10
  %imag542 = getelementptr inbounds %struct.scomplex, ptr %temp, i32 0, i32 1
  %467 = load float, ptr %imag542, align 4, !tbaa !13
  %imag543 = getelementptr inbounds %struct.scomplex, ptr %q__2, i32 0, i32 1
  %468 = load float, ptr %imag543, align 4, !tbaa !13
  %sub544 = fsub float %467, %468
  %imag545 = getelementptr inbounds %struct.scomplex, ptr %q__1, i32 0, i32 1
  store float %sub544, ptr %imag545, align 4, !tbaa !13
  %real546 = getelementptr inbounds %struct.scomplex, ptr %q__1, i32 0, i32 0
  %469 = load float, ptr %real546, align 4, !tbaa !10
  %real547 = getelementptr inbounds %struct.scomplex, ptr %temp, i32 0, i32 0
  store float %469, ptr %real547, align 4, !tbaa !10
  %imag548 = getelementptr inbounds %struct.scomplex, ptr %q__1, i32 0, i32 1
  %470 = load float, ptr %imag548, align 4, !tbaa !13
  %imag549 = getelementptr inbounds %struct.scomplex, ptr %temp, i32 0, i32 1
  store float %470, ptr %imag549, align 4, !tbaa !13
  br label %for.inc550

for.inc550:                                       ; preds = %for.body503
  %471 = load i32, ptr %i__, align 4, !tbaa !8
  %inc551 = add nsw i32 %471, 1
  store i32 %inc551, ptr %i__, align 4, !tbaa !8
  br label %for.cond501

for.end552:                                       ; preds = %for.cond501
  %472 = load i32, ptr %nounit, align 4, !tbaa !8
  %tobool553 = icmp ne i32 %472, 0
  br i1 %tobool553, label %if.then554, label %if.end563

if.then554:                                       ; preds = %for.end552
  %473 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %474 = load i32, ptr %kplus1, align 4, !tbaa !8
  %475 = load i32, ptr %j, align 4, !tbaa !8
  %476 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul555 = mul nsw i32 %475, %476
  %add556 = add nsw i32 %474, %mul555
  %idxprom557 = sext i32 %add556 to i64
  %arrayidx558 = getelementptr inbounds %struct.scomplex, ptr %473, i64 %idxprom557
  call void @bla_c_div(ptr noundef %q__1, ptr noundef %temp, ptr noundef %arrayidx558)
  %real559 = getelementptr inbounds %struct.scomplex, ptr %q__1, i32 0, i32 0
  %477 = load float, ptr %real559, align 4, !tbaa !10
  %real560 = getelementptr inbounds %struct.scomplex, ptr %temp, i32 0, i32 0
  store float %477, ptr %real560, align 4, !tbaa !10
  %imag561 = getelementptr inbounds %struct.scomplex, ptr %q__1, i32 0, i32 1
  %478 = load float, ptr %imag561, align 4, !tbaa !13
  %imag562 = getelementptr inbounds %struct.scomplex, ptr %temp, i32 0, i32 1
  store float %478, ptr %imag562, align 4, !tbaa !13
  br label %if.end563

if.end563:                                        ; preds = %if.then554, %for.end552
  br label %if.end629

if.else564:                                       ; preds = %for.body482
  store i32 1, ptr %i__4, align 4, !tbaa !8
  %479 = load i32, ptr %j, align 4, !tbaa !8
  %480 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %481 = load i32, ptr %480, align 4, !tbaa !8
  %sub565 = sub nsw i32 %479, %481
  store i32 %sub565, ptr %i__2, align 4, !tbaa !8
  %482 = load i32, ptr %j, align 4, !tbaa !8
  %sub566 = sub nsw i32 %482, 1
  store i32 %sub566, ptr %i__3, align 4, !tbaa !8
  %483 = load i32, ptr %i__4, align 4, !tbaa !8
  %484 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp567 = icmp sge i32 %483, %484
  br i1 %cmp567, label %cond.true568, label %cond.false569

cond.true568:                                     ; preds = %if.else564
  %485 = load i32, ptr %i__4, align 4, !tbaa !8
  br label %cond.end570

cond.false569:                                    ; preds = %if.else564
  %486 = load i32, ptr %i__2, align 4, !tbaa !8
  br label %cond.end570

cond.end570:                                      ; preds = %cond.false569, %cond.true568
  %cond571 = phi i32 [ %485, %cond.true568 ], [ %486, %cond.false569 ]
  store i32 %cond571, ptr %i__, align 4, !tbaa !8
  br label %for.cond572

for.cond572:                                      ; preds = %for.inc615, %cond.end570
  %487 = load i32, ptr %i__, align 4, !tbaa !8
  %488 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp573 = icmp sle i32 %487, %488
  br i1 %cmp573, label %for.body574, label %for.end617

for.body574:                                      ; preds = %for.cond572
  %489 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %490 = load i32, ptr %l, align 4, !tbaa !8
  %491 = load i32, ptr %i__, align 4, !tbaa !8
  %add575 = add nsw i32 %490, %491
  %492 = load i32, ptr %j, align 4, !tbaa !8
  %493 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul576 = mul nsw i32 %492, %493
  %add577 = add nsw i32 %add575, %mul576
  %idxprom578 = sext i32 %add577 to i64
  %arrayidx579 = getelementptr inbounds %struct.scomplex, ptr %489, i64 %idxprom578
  call void @bla_r_cnjg(ptr noundef %q__3, ptr noundef %arrayidx579)
  %494 = load i32, ptr %i__, align 4, !tbaa !8
  store i32 %494, ptr %i__4, align 4, !tbaa !8
  %real580 = getelementptr inbounds %struct.scomplex, ptr %q__3, i32 0, i32 0
  %495 = load float, ptr %real580, align 4, !tbaa !10
  %496 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %497 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom581 = sext i32 %497 to i64
  %arrayidx582 = getelementptr inbounds %struct.scomplex, ptr %496, i64 %idxprom581
  %real583 = getelementptr inbounds %struct.scomplex, ptr %arrayidx582, i32 0, i32 0
  %498 = load float, ptr %real583, align 4, !tbaa !10
  %imag585 = getelementptr inbounds %struct.scomplex, ptr %q__3, i32 0, i32 1
  %499 = load float, ptr %imag585, align 4, !tbaa !13
  %500 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %501 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom586 = sext i32 %501 to i64
  %arrayidx587 = getelementptr inbounds %struct.scomplex, ptr %500, i64 %idxprom586
  %imag588 = getelementptr inbounds %struct.scomplex, ptr %arrayidx587, i32 0, i32 1
  %502 = load float, ptr %imag588, align 4, !tbaa !13
  %mul589 = fmul float %499, %502
  %neg590 = fneg float %mul589
  %503 = call float @llvm.fmuladd.f32(float %495, float %498, float %neg590)
  %real591 = getelementptr inbounds %struct.scomplex, ptr %q__2, i32 0, i32 0
  store float %503, ptr %real591, align 4, !tbaa !10
  %real592 = getelementptr inbounds %struct.scomplex, ptr %q__3, i32 0, i32 0
  %504 = load float, ptr %real592, align 4, !tbaa !10
  %505 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %506 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom593 = sext i32 %506 to i64
  %arrayidx594 = getelementptr inbounds %struct.scomplex, ptr %505, i64 %idxprom593
  %imag595 = getelementptr inbounds %struct.scomplex, ptr %arrayidx594, i32 0, i32 1
  %507 = load float, ptr %imag595, align 4, !tbaa !13
  %imag597 = getelementptr inbounds %struct.scomplex, ptr %q__3, i32 0, i32 1
  %508 = load float, ptr %imag597, align 4, !tbaa !13
  %509 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %510 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom598 = sext i32 %510 to i64
  %arrayidx599 = getelementptr inbounds %struct.scomplex, ptr %509, i64 %idxprom598
  %real600 = getelementptr inbounds %struct.scomplex, ptr %arrayidx599, i32 0, i32 0
  %511 = load float, ptr %real600, align 4, !tbaa !10
  %mul601 = fmul float %508, %511
  %512 = call float @llvm.fmuladd.f32(float %504, float %507, float %mul601)
  %imag602 = getelementptr inbounds %struct.scomplex, ptr %q__2, i32 0, i32 1
  store float %512, ptr %imag602, align 4, !tbaa !13
  %real603 = getelementptr inbounds %struct.scomplex, ptr %temp, i32 0, i32 0
  %513 = load float, ptr %real603, align 4, !tbaa !10
  %real604 = getelementptr inbounds %struct.scomplex, ptr %q__2, i32 0, i32 0
  %514 = load float, ptr %real604, align 4, !tbaa !10
  %sub605 = fsub float %513, %514
  %real606 = getelementptr inbounds %struct.scomplex, ptr %q__1, i32 0, i32 0
  store float %sub605, ptr %real606, align 4, !tbaa !10
  %imag607 = getelementptr inbounds %struct.scomplex, ptr %temp, i32 0, i32 1
  %515 = load float, ptr %imag607, align 4, !tbaa !13
  %imag608 = getelementptr inbounds %struct.scomplex, ptr %q__2, i32 0, i32 1
  %516 = load float, ptr %imag608, align 4, !tbaa !13
  %sub609 = fsub float %515, %516
  %imag610 = getelementptr inbounds %struct.scomplex, ptr %q__1, i32 0, i32 1
  store float %sub609, ptr %imag610, align 4, !tbaa !13
  %real611 = getelementptr inbounds %struct.scomplex, ptr %q__1, i32 0, i32 0
  %517 = load float, ptr %real611, align 4, !tbaa !10
  %real612 = getelementptr inbounds %struct.scomplex, ptr %temp, i32 0, i32 0
  store float %517, ptr %real612, align 4, !tbaa !10
  %imag613 = getelementptr inbounds %struct.scomplex, ptr %q__1, i32 0, i32 1
  %518 = load float, ptr %imag613, align 4, !tbaa !13
  %imag614 = getelementptr inbounds %struct.scomplex, ptr %temp, i32 0, i32 1
  store float %518, ptr %imag614, align 4, !tbaa !13
  br label %for.inc615

for.inc615:                                       ; preds = %for.body574
  %519 = load i32, ptr %i__, align 4, !tbaa !8
  %inc616 = add nsw i32 %519, 1
  store i32 %inc616, ptr %i__, align 4, !tbaa !8
  br label %for.cond572

for.end617:                                       ; preds = %for.cond572
  %520 = load i32, ptr %nounit, align 4, !tbaa !8
  %tobool618 = icmp ne i32 %520, 0
  br i1 %tobool618, label %if.then619, label %if.end628

if.then619:                                       ; preds = %for.end617
  %521 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %522 = load i32, ptr %kplus1, align 4, !tbaa !8
  %523 = load i32, ptr %j, align 4, !tbaa !8
  %524 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul620 = mul nsw i32 %523, %524
  %add621 = add nsw i32 %522, %mul620
  %idxprom622 = sext i32 %add621 to i64
  %arrayidx623 = getelementptr inbounds %struct.scomplex, ptr %521, i64 %idxprom622
  call void @bla_r_cnjg(ptr noundef %q__2, ptr noundef %arrayidx623)
  call void @bla_c_div(ptr noundef %q__1, ptr noundef %temp, ptr noundef %q__2)
  %real624 = getelementptr inbounds %struct.scomplex, ptr %q__1, i32 0, i32 0
  %525 = load float, ptr %real624, align 4, !tbaa !10
  %real625 = getelementptr inbounds %struct.scomplex, ptr %temp, i32 0, i32 0
  store float %525, ptr %real625, align 4, !tbaa !10
  %imag626 = getelementptr inbounds %struct.scomplex, ptr %q__1, i32 0, i32 1
  %526 = load float, ptr %imag626, align 4, !tbaa !13
  %imag627 = getelementptr inbounds %struct.scomplex, ptr %temp, i32 0, i32 1
  store float %526, ptr %imag627, align 4, !tbaa !13
  br label %if.end628

if.end628:                                        ; preds = %if.then619, %for.end617
  br label %if.end629

if.end629:                                        ; preds = %if.end628, %if.end563
  %527 = load i32, ptr %j, align 4, !tbaa !8
  store i32 %527, ptr %i__3, align 4, !tbaa !8
  %real630 = getelementptr inbounds %struct.scomplex, ptr %temp, i32 0, i32 0
  %528 = load float, ptr %real630, align 4, !tbaa !10
  %529 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %530 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom631 = sext i32 %530 to i64
  %arrayidx632 = getelementptr inbounds %struct.scomplex, ptr %529, i64 %idxprom631
  %real633 = getelementptr inbounds %struct.scomplex, ptr %arrayidx632, i32 0, i32 0
  store float %528, ptr %real633, align 4, !tbaa !10
  %imag634 = getelementptr inbounds %struct.scomplex, ptr %temp, i32 0, i32 1
  %531 = load float, ptr %imag634, align 4, !tbaa !13
  %532 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %533 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom635 = sext i32 %533 to i64
  %arrayidx636 = getelementptr inbounds %struct.scomplex, ptr %532, i64 %idxprom635
  %imag637 = getelementptr inbounds %struct.scomplex, ptr %arrayidx636, i32 0, i32 1
  store float %531, ptr %imag637, align 4, !tbaa !13
  br label %for.inc638

for.inc638:                                       ; preds = %if.end629
  %534 = load i32, ptr %j, align 4, !tbaa !8
  %inc639 = add nsw i32 %534, 1
  store i32 %inc639, ptr %j, align 4, !tbaa !8
  br label %for.cond480

for.end640:                                       ; preds = %for.cond480
  br label %if.end810

if.else641:                                       ; preds = %if.then476
  %535 = load i32, ptr %kx, align 4, !tbaa !8
  store i32 %535, ptr %jx, align 4, !tbaa !8
  %536 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %537 = load i32, ptr %536, align 4, !tbaa !8
  store i32 %537, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %j, align 4, !tbaa !8
  br label %for.cond642

for.cond642:                                      ; preds = %for.inc807, %if.else641
  %538 = load i32, ptr %j, align 4, !tbaa !8
  %539 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp643 = icmp sle i32 %538, %539
  br i1 %cmp643, label %for.body644, label %for.end809

for.body644:                                      ; preds = %for.cond642
  %540 = load i32, ptr %jx, align 4, !tbaa !8
  store i32 %540, ptr %i__3, align 4, !tbaa !8
  %541 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %542 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom645 = sext i32 %542 to i64
  %arrayidx646 = getelementptr inbounds %struct.scomplex, ptr %541, i64 %idxprom645
  %real647 = getelementptr inbounds %struct.scomplex, ptr %arrayidx646, i32 0, i32 0
  %543 = load float, ptr %real647, align 4, !tbaa !10
  %real648 = getelementptr inbounds %struct.scomplex, ptr %temp, i32 0, i32 0
  store float %543, ptr %real648, align 4, !tbaa !10
  %544 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %545 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom649 = sext i32 %545 to i64
  %arrayidx650 = getelementptr inbounds %struct.scomplex, ptr %544, i64 %idxprom649
  %imag651 = getelementptr inbounds %struct.scomplex, ptr %arrayidx650, i32 0, i32 1
  %546 = load float, ptr %imag651, align 4, !tbaa !13
  %imag652 = getelementptr inbounds %struct.scomplex, ptr %temp, i32 0, i32 1
  store float %546, ptr %imag652, align 4, !tbaa !13
  %547 = load i32, ptr %kx, align 4, !tbaa !8
  store i32 %547, ptr %ix, align 4, !tbaa !8
  %548 = load i32, ptr %kplus1, align 4, !tbaa !8
  %549 = load i32, ptr %j, align 4, !tbaa !8
  %sub653 = sub nsw i32 %548, %549
  store i32 %sub653, ptr %l, align 4, !tbaa !8
  %550 = load i32, ptr %noconj, align 4, !tbaa !8
  %tobool654 = icmp ne i32 %550, 0
  br i1 %tobool654, label %if.then655, label %if.else727

if.then655:                                       ; preds = %for.body644
  store i32 1, ptr %i__3, align 4, !tbaa !8
  %551 = load i32, ptr %j, align 4, !tbaa !8
  %552 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %553 = load i32, ptr %552, align 4, !tbaa !8
  %sub656 = sub nsw i32 %551, %553
  store i32 %sub656, ptr %i__4, align 4, !tbaa !8
  %554 = load i32, ptr %j, align 4, !tbaa !8
  %sub657 = sub nsw i32 %554, 1
  store i32 %sub657, ptr %i__2, align 4, !tbaa !8
  %555 = load i32, ptr %i__3, align 4, !tbaa !8
  %556 = load i32, ptr %i__4, align 4, !tbaa !8
  %cmp658 = icmp sge i32 %555, %556
  br i1 %cmp658, label %cond.true659, label %cond.false660

cond.true659:                                     ; preds = %if.then655
  %557 = load i32, ptr %i__3, align 4, !tbaa !8
  br label %cond.end661

cond.false660:                                    ; preds = %if.then655
  %558 = load i32, ptr %i__4, align 4, !tbaa !8
  br label %cond.end661

cond.end661:                                      ; preds = %cond.false660, %cond.true659
  %cond662 = phi i32 [ %557, %cond.true659 ], [ %558, %cond.false660 ]
  store i32 %cond662, ptr %i__, align 4, !tbaa !8
  br label %for.cond663

for.cond663:                                      ; preds = %for.inc713, %cond.end661
  %559 = load i32, ptr %i__, align 4, !tbaa !8
  %560 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp664 = icmp sle i32 %559, %560
  br i1 %cmp664, label %for.body665, label %for.end715

for.body665:                                      ; preds = %for.cond663
  %561 = load i32, ptr %l, align 4, !tbaa !8
  %562 = load i32, ptr %i__, align 4, !tbaa !8
  %add666 = add nsw i32 %561, %562
  %563 = load i32, ptr %j, align 4, !tbaa !8
  %564 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul667 = mul nsw i32 %563, %564
  %add668 = add nsw i32 %add666, %mul667
  store i32 %add668, ptr %i__3, align 4, !tbaa !8
  %565 = load i32, ptr %ix, align 4, !tbaa !8
  store i32 %565, ptr %i__4, align 4, !tbaa !8
  %566 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %567 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom669 = sext i32 %567 to i64
  %arrayidx670 = getelementptr inbounds %struct.scomplex, ptr %566, i64 %idxprom669
  %real671 = getelementptr inbounds %struct.scomplex, ptr %arrayidx670, i32 0, i32 0
  %568 = load float, ptr %real671, align 4, !tbaa !10
  %569 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %570 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom672 = sext i32 %570 to i64
  %arrayidx673 = getelementptr inbounds %struct.scomplex, ptr %569, i64 %idxprom672
  %real674 = getelementptr inbounds %struct.scomplex, ptr %arrayidx673, i32 0, i32 0
  %571 = load float, ptr %real674, align 4, !tbaa !10
  %572 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %573 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom676 = sext i32 %573 to i64
  %arrayidx677 = getelementptr inbounds %struct.scomplex, ptr %572, i64 %idxprom676
  %imag678 = getelementptr inbounds %struct.scomplex, ptr %arrayidx677, i32 0, i32 1
  %574 = load float, ptr %imag678, align 4, !tbaa !13
  %575 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %576 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom679 = sext i32 %576 to i64
  %arrayidx680 = getelementptr inbounds %struct.scomplex, ptr %575, i64 %idxprom679
  %imag681 = getelementptr inbounds %struct.scomplex, ptr %arrayidx680, i32 0, i32 1
  %577 = load float, ptr %imag681, align 4, !tbaa !13
  %mul682 = fmul float %574, %577
  %neg683 = fneg float %mul682
  %578 = call float @llvm.fmuladd.f32(float %568, float %571, float %neg683)
  %real684 = getelementptr inbounds %struct.scomplex, ptr %q__2, i32 0, i32 0
  store float %578, ptr %real684, align 4, !tbaa !10
  %579 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %580 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom685 = sext i32 %580 to i64
  %arrayidx686 = getelementptr inbounds %struct.scomplex, ptr %579, i64 %idxprom685
  %real687 = getelementptr inbounds %struct.scomplex, ptr %arrayidx686, i32 0, i32 0
  %581 = load float, ptr %real687, align 4, !tbaa !10
  %582 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %583 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom688 = sext i32 %583 to i64
  %arrayidx689 = getelementptr inbounds %struct.scomplex, ptr %582, i64 %idxprom688
  %imag690 = getelementptr inbounds %struct.scomplex, ptr %arrayidx689, i32 0, i32 1
  %584 = load float, ptr %imag690, align 4, !tbaa !13
  %585 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %586 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom692 = sext i32 %586 to i64
  %arrayidx693 = getelementptr inbounds %struct.scomplex, ptr %585, i64 %idxprom692
  %imag694 = getelementptr inbounds %struct.scomplex, ptr %arrayidx693, i32 0, i32 1
  %587 = load float, ptr %imag694, align 4, !tbaa !13
  %588 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %589 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom695 = sext i32 %589 to i64
  %arrayidx696 = getelementptr inbounds %struct.scomplex, ptr %588, i64 %idxprom695
  %real697 = getelementptr inbounds %struct.scomplex, ptr %arrayidx696, i32 0, i32 0
  %590 = load float, ptr %real697, align 4, !tbaa !10
  %mul698 = fmul float %587, %590
  %591 = call float @llvm.fmuladd.f32(float %581, float %584, float %mul698)
  %imag699 = getelementptr inbounds %struct.scomplex, ptr %q__2, i32 0, i32 1
  store float %591, ptr %imag699, align 4, !tbaa !13
  %real700 = getelementptr inbounds %struct.scomplex, ptr %temp, i32 0, i32 0
  %592 = load float, ptr %real700, align 4, !tbaa !10
  %real701 = getelementptr inbounds %struct.scomplex, ptr %q__2, i32 0, i32 0
  %593 = load float, ptr %real701, align 4, !tbaa !10
  %sub702 = fsub float %592, %593
  %real703 = getelementptr inbounds %struct.scomplex, ptr %q__1, i32 0, i32 0
  store float %sub702, ptr %real703, align 4, !tbaa !10
  %imag704 = getelementptr inbounds %struct.scomplex, ptr %temp, i32 0, i32 1
  %594 = load float, ptr %imag704, align 4, !tbaa !13
  %imag705 = getelementptr inbounds %struct.scomplex, ptr %q__2, i32 0, i32 1
  %595 = load float, ptr %imag705, align 4, !tbaa !13
  %sub706 = fsub float %594, %595
  %imag707 = getelementptr inbounds %struct.scomplex, ptr %q__1, i32 0, i32 1
  store float %sub706, ptr %imag707, align 4, !tbaa !13
  %real708 = getelementptr inbounds %struct.scomplex, ptr %q__1, i32 0, i32 0
  %596 = load float, ptr %real708, align 4, !tbaa !10
  %real709 = getelementptr inbounds %struct.scomplex, ptr %temp, i32 0, i32 0
  store float %596, ptr %real709, align 4, !tbaa !10
  %imag710 = getelementptr inbounds %struct.scomplex, ptr %q__1, i32 0, i32 1
  %597 = load float, ptr %imag710, align 4, !tbaa !13
  %imag711 = getelementptr inbounds %struct.scomplex, ptr %temp, i32 0, i32 1
  store float %597, ptr %imag711, align 4, !tbaa !13
  %598 = load ptr, ptr %incx.addr, align 8, !tbaa !4
  %599 = load i32, ptr %598, align 4, !tbaa !8
  %600 = load i32, ptr %ix, align 4, !tbaa !8
  %add712 = add nsw i32 %600, %599
  store i32 %add712, ptr %ix, align 4, !tbaa !8
  br label %for.inc713

for.inc713:                                       ; preds = %for.body665
  %601 = load i32, ptr %i__, align 4, !tbaa !8
  %inc714 = add nsw i32 %601, 1
  store i32 %inc714, ptr %i__, align 4, !tbaa !8
  br label %for.cond663

for.end715:                                       ; preds = %for.cond663
  %602 = load i32, ptr %nounit, align 4, !tbaa !8
  %tobool716 = icmp ne i32 %602, 0
  br i1 %tobool716, label %if.then717, label %if.end726

if.then717:                                       ; preds = %for.end715
  %603 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %604 = load i32, ptr %kplus1, align 4, !tbaa !8
  %605 = load i32, ptr %j, align 4, !tbaa !8
  %606 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul718 = mul nsw i32 %605, %606
  %add719 = add nsw i32 %604, %mul718
  %idxprom720 = sext i32 %add719 to i64
  %arrayidx721 = getelementptr inbounds %struct.scomplex, ptr %603, i64 %idxprom720
  call void @bla_c_div(ptr noundef %q__1, ptr noundef %temp, ptr noundef %arrayidx721)
  %real722 = getelementptr inbounds %struct.scomplex, ptr %q__1, i32 0, i32 0
  %607 = load float, ptr %real722, align 4, !tbaa !10
  %real723 = getelementptr inbounds %struct.scomplex, ptr %temp, i32 0, i32 0
  store float %607, ptr %real723, align 4, !tbaa !10
  %imag724 = getelementptr inbounds %struct.scomplex, ptr %q__1, i32 0, i32 1
  %608 = load float, ptr %imag724, align 4, !tbaa !13
  %imag725 = getelementptr inbounds %struct.scomplex, ptr %temp, i32 0, i32 1
  store float %608, ptr %imag725, align 4, !tbaa !13
  br label %if.end726

if.end726:                                        ; preds = %if.then717, %for.end715
  br label %if.end793

if.else727:                                       ; preds = %for.body644
  store i32 1, ptr %i__2, align 4, !tbaa !8
  %609 = load i32, ptr %j, align 4, !tbaa !8
  %610 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %611 = load i32, ptr %610, align 4, !tbaa !8
  %sub728 = sub nsw i32 %609, %611
  store i32 %sub728, ptr %i__3, align 4, !tbaa !8
  %612 = load i32, ptr %j, align 4, !tbaa !8
  %sub729 = sub nsw i32 %612, 1
  store i32 %sub729, ptr %i__4, align 4, !tbaa !8
  %613 = load i32, ptr %i__2, align 4, !tbaa !8
  %614 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp730 = icmp sge i32 %613, %614
  br i1 %cmp730, label %cond.true731, label %cond.false732

cond.true731:                                     ; preds = %if.else727
  %615 = load i32, ptr %i__2, align 4, !tbaa !8
  br label %cond.end733

cond.false732:                                    ; preds = %if.else727
  %616 = load i32, ptr %i__3, align 4, !tbaa !8
  br label %cond.end733

cond.end733:                                      ; preds = %cond.false732, %cond.true731
  %cond734 = phi i32 [ %615, %cond.true731 ], [ %616, %cond.false732 ]
  store i32 %cond734, ptr %i__, align 4, !tbaa !8
  br label %for.cond735

for.cond735:                                      ; preds = %for.inc779, %cond.end733
  %617 = load i32, ptr %i__, align 4, !tbaa !8
  %618 = load i32, ptr %i__4, align 4, !tbaa !8
  %cmp736 = icmp sle i32 %617, %618
  br i1 %cmp736, label %for.body737, label %for.end781

for.body737:                                      ; preds = %for.cond735
  %619 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %620 = load i32, ptr %l, align 4, !tbaa !8
  %621 = load i32, ptr %i__, align 4, !tbaa !8
  %add738 = add nsw i32 %620, %621
  %622 = load i32, ptr %j, align 4, !tbaa !8
  %623 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul739 = mul nsw i32 %622, %623
  %add740 = add nsw i32 %add738, %mul739
  %idxprom741 = sext i32 %add740 to i64
  %arrayidx742 = getelementptr inbounds %struct.scomplex, ptr %619, i64 %idxprom741
  call void @bla_r_cnjg(ptr noundef %q__3, ptr noundef %arrayidx742)
  %624 = load i32, ptr %ix, align 4, !tbaa !8
  store i32 %624, ptr %i__2, align 4, !tbaa !8
  %real743 = getelementptr inbounds %struct.scomplex, ptr %q__3, i32 0, i32 0
  %625 = load float, ptr %real743, align 4, !tbaa !10
  %626 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %627 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom744 = sext i32 %627 to i64
  %arrayidx745 = getelementptr inbounds %struct.scomplex, ptr %626, i64 %idxprom744
  %real746 = getelementptr inbounds %struct.scomplex, ptr %arrayidx745, i32 0, i32 0
  %628 = load float, ptr %real746, align 4, !tbaa !10
  %imag748 = getelementptr inbounds %struct.scomplex, ptr %q__3, i32 0, i32 1
  %629 = load float, ptr %imag748, align 4, !tbaa !13
  %630 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %631 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom749 = sext i32 %631 to i64
  %arrayidx750 = getelementptr inbounds %struct.scomplex, ptr %630, i64 %idxprom749
  %imag751 = getelementptr inbounds %struct.scomplex, ptr %arrayidx750, i32 0, i32 1
  %632 = load float, ptr %imag751, align 4, !tbaa !13
  %mul752 = fmul float %629, %632
  %neg753 = fneg float %mul752
  %633 = call float @llvm.fmuladd.f32(float %625, float %628, float %neg753)
  %real754 = getelementptr inbounds %struct.scomplex, ptr %q__2, i32 0, i32 0
  store float %633, ptr %real754, align 4, !tbaa !10
  %real755 = getelementptr inbounds %struct.scomplex, ptr %q__3, i32 0, i32 0
  %634 = load float, ptr %real755, align 4, !tbaa !10
  %635 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %636 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom756 = sext i32 %636 to i64
  %arrayidx757 = getelementptr inbounds %struct.scomplex, ptr %635, i64 %idxprom756
  %imag758 = getelementptr inbounds %struct.scomplex, ptr %arrayidx757, i32 0, i32 1
  %637 = load float, ptr %imag758, align 4, !tbaa !13
  %imag760 = getelementptr inbounds %struct.scomplex, ptr %q__3, i32 0, i32 1
  %638 = load float, ptr %imag760, align 4, !tbaa !13
  %639 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %640 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom761 = sext i32 %640 to i64
  %arrayidx762 = getelementptr inbounds %struct.scomplex, ptr %639, i64 %idxprom761
  %real763 = getelementptr inbounds %struct.scomplex, ptr %arrayidx762, i32 0, i32 0
  %641 = load float, ptr %real763, align 4, !tbaa !10
  %mul764 = fmul float %638, %641
  %642 = call float @llvm.fmuladd.f32(float %634, float %637, float %mul764)
  %imag765 = getelementptr inbounds %struct.scomplex, ptr %q__2, i32 0, i32 1
  store float %642, ptr %imag765, align 4, !tbaa !13
  %real766 = getelementptr inbounds %struct.scomplex, ptr %temp, i32 0, i32 0
  %643 = load float, ptr %real766, align 4, !tbaa !10
  %real767 = getelementptr inbounds %struct.scomplex, ptr %q__2, i32 0, i32 0
  %644 = load float, ptr %real767, align 4, !tbaa !10
  %sub768 = fsub float %643, %644
  %real769 = getelementptr inbounds %struct.scomplex, ptr %q__1, i32 0, i32 0
  store float %sub768, ptr %real769, align 4, !tbaa !10
  %imag770 = getelementptr inbounds %struct.scomplex, ptr %temp, i32 0, i32 1
  %645 = load float, ptr %imag770, align 4, !tbaa !13
  %imag771 = getelementptr inbounds %struct.scomplex, ptr %q__2, i32 0, i32 1
  %646 = load float, ptr %imag771, align 4, !tbaa !13
  %sub772 = fsub float %645, %646
  %imag773 = getelementptr inbounds %struct.scomplex, ptr %q__1, i32 0, i32 1
  store float %sub772, ptr %imag773, align 4, !tbaa !13
  %real774 = getelementptr inbounds %struct.scomplex, ptr %q__1, i32 0, i32 0
  %647 = load float, ptr %real774, align 4, !tbaa !10
  %real775 = getelementptr inbounds %struct.scomplex, ptr %temp, i32 0, i32 0
  store float %647, ptr %real775, align 4, !tbaa !10
  %imag776 = getelementptr inbounds %struct.scomplex, ptr %q__1, i32 0, i32 1
  %648 = load float, ptr %imag776, align 4, !tbaa !13
  %imag777 = getelementptr inbounds %struct.scomplex, ptr %temp, i32 0, i32 1
  store float %648, ptr %imag777, align 4, !tbaa !13
  %649 = load ptr, ptr %incx.addr, align 8, !tbaa !4
  %650 = load i32, ptr %649, align 4, !tbaa !8
  %651 = load i32, ptr %ix, align 4, !tbaa !8
  %add778 = add nsw i32 %651, %650
  store i32 %add778, ptr %ix, align 4, !tbaa !8
  br label %for.inc779

for.inc779:                                       ; preds = %for.body737
  %652 = load i32, ptr %i__, align 4, !tbaa !8
  %inc780 = add nsw i32 %652, 1
  store i32 %inc780, ptr %i__, align 4, !tbaa !8
  br label %for.cond735

for.end781:                                       ; preds = %for.cond735
  %653 = load i32, ptr %nounit, align 4, !tbaa !8
  %tobool782 = icmp ne i32 %653, 0
  br i1 %tobool782, label %if.then783, label %if.end792

if.then783:                                       ; preds = %for.end781
  %654 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %655 = load i32, ptr %kplus1, align 4, !tbaa !8
  %656 = load i32, ptr %j, align 4, !tbaa !8
  %657 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul784 = mul nsw i32 %656, %657
  %add785 = add nsw i32 %655, %mul784
  %idxprom786 = sext i32 %add785 to i64
  %arrayidx787 = getelementptr inbounds %struct.scomplex, ptr %654, i64 %idxprom786
  call void @bla_r_cnjg(ptr noundef %q__2, ptr noundef %arrayidx787)
  call void @bla_c_div(ptr noundef %q__1, ptr noundef %temp, ptr noundef %q__2)
  %real788 = getelementptr inbounds %struct.scomplex, ptr %q__1, i32 0, i32 0
  %658 = load float, ptr %real788, align 4, !tbaa !10
  %real789 = getelementptr inbounds %struct.scomplex, ptr %temp, i32 0, i32 0
  store float %658, ptr %real789, align 4, !tbaa !10
  %imag790 = getelementptr inbounds %struct.scomplex, ptr %q__1, i32 0, i32 1
  %659 = load float, ptr %imag790, align 4, !tbaa !13
  %imag791 = getelementptr inbounds %struct.scomplex, ptr %temp, i32 0, i32 1
  store float %659, ptr %imag791, align 4, !tbaa !13
  br label %if.end792

if.end792:                                        ; preds = %if.then783, %for.end781
  br label %if.end793

if.end793:                                        ; preds = %if.end792, %if.end726
  %660 = load i32, ptr %jx, align 4, !tbaa !8
  store i32 %660, ptr %i__4, align 4, !tbaa !8
  %real794 = getelementptr inbounds %struct.scomplex, ptr %temp, i32 0, i32 0
  %661 = load float, ptr %real794, align 4, !tbaa !10
  %662 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %663 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom795 = sext i32 %663 to i64
  %arrayidx796 = getelementptr inbounds %struct.scomplex, ptr %662, i64 %idxprom795
  %real797 = getelementptr inbounds %struct.scomplex, ptr %arrayidx796, i32 0, i32 0
  store float %661, ptr %real797, align 4, !tbaa !10
  %imag798 = getelementptr inbounds %struct.scomplex, ptr %temp, i32 0, i32 1
  %664 = load float, ptr %imag798, align 4, !tbaa !13
  %665 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %666 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom799 = sext i32 %666 to i64
  %arrayidx800 = getelementptr inbounds %struct.scomplex, ptr %665, i64 %idxprom799
  %imag801 = getelementptr inbounds %struct.scomplex, ptr %arrayidx800, i32 0, i32 1
  store float %664, ptr %imag801, align 4, !tbaa !13
  %667 = load ptr, ptr %incx.addr, align 8, !tbaa !4
  %668 = load i32, ptr %667, align 4, !tbaa !8
  %669 = load i32, ptr %jx, align 4, !tbaa !8
  %add802 = add nsw i32 %669, %668
  store i32 %add802, ptr %jx, align 4, !tbaa !8
  %670 = load i32, ptr %j, align 4, !tbaa !8
  %671 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %672 = load i32, ptr %671, align 4, !tbaa !8
  %cmp803 = icmp sgt i32 %670, %672
  br i1 %cmp803, label %if.then804, label %if.end806

if.then804:                                       ; preds = %if.end793
  %673 = load ptr, ptr %incx.addr, align 8, !tbaa !4
  %674 = load i32, ptr %673, align 4, !tbaa !8
  %675 = load i32, ptr %kx, align 4, !tbaa !8
  %add805 = add nsw i32 %675, %674
  store i32 %add805, ptr %kx, align 4, !tbaa !8
  br label %if.end806

if.end806:                                        ; preds = %if.then804, %if.end793
  br label %for.inc807

for.inc807:                                       ; preds = %if.end806
  %676 = load i32, ptr %j, align 4, !tbaa !8
  %inc808 = add nsw i32 %676, 1
  store i32 %inc808, ptr %j, align 4, !tbaa !8
  br label %for.cond642

for.end809:                                       ; preds = %for.cond642
  br label %if.end810

if.end810:                                        ; preds = %for.end809, %for.end640
  br label %if.end1149

if.else811:                                       ; preds = %if.else473
  %677 = load ptr, ptr %incx.addr, align 8, !tbaa !4
  %678 = load i32, ptr %677, align 4, !tbaa !8
  %cmp812 = icmp eq i32 %678, 1
  br i1 %cmp812, label %if.then813, label %if.else975

if.then813:                                       ; preds = %if.else811
  %679 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %680 = load i32, ptr %679, align 4, !tbaa !8
  store i32 %680, ptr %j, align 4, !tbaa !8
  br label %for.cond814

for.cond814:                                      ; preds = %for.inc972, %if.then813
  %681 = load i32, ptr %j, align 4, !tbaa !8
  %cmp815 = icmp sge i32 %681, 1
  br i1 %cmp815, label %for.body816, label %for.end974

for.body816:                                      ; preds = %for.cond814
  %682 = load i32, ptr %j, align 4, !tbaa !8
  store i32 %682, ptr %i__1, align 4, !tbaa !8
  %683 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %684 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom817 = sext i32 %684 to i64
  %arrayidx818 = getelementptr inbounds %struct.scomplex, ptr %683, i64 %idxprom817
  %real819 = getelementptr inbounds %struct.scomplex, ptr %arrayidx818, i32 0, i32 0
  %685 = load float, ptr %real819, align 4, !tbaa !10
  %real820 = getelementptr inbounds %struct.scomplex, ptr %temp, i32 0, i32 0
  store float %685, ptr %real820, align 4, !tbaa !10
  %686 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %687 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom821 = sext i32 %687 to i64
  %arrayidx822 = getelementptr inbounds %struct.scomplex, ptr %686, i64 %idxprom821
  %imag823 = getelementptr inbounds %struct.scomplex, ptr %arrayidx822, i32 0, i32 1
  %688 = load float, ptr %imag823, align 4, !tbaa !13
  %imag824 = getelementptr inbounds %struct.scomplex, ptr %temp, i32 0, i32 1
  store float %688, ptr %imag824, align 4, !tbaa !13
  %689 = load i32, ptr %j, align 4, !tbaa !8
  %sub825 = sub nsw i32 1, %689
  store i32 %sub825, ptr %l, align 4, !tbaa !8
  %690 = load i32, ptr %noconj, align 4, !tbaa !8
  %tobool826 = icmp ne i32 %690, 0
  br i1 %tobool826, label %if.then827, label %if.else898

if.then827:                                       ; preds = %for.body816
  %691 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %692 = load i32, ptr %691, align 4, !tbaa !8
  store i32 %692, ptr %i__1, align 4, !tbaa !8
  %693 = load i32, ptr %j, align 4, !tbaa !8
  %694 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %695 = load i32, ptr %694, align 4, !tbaa !8
  %add828 = add nsw i32 %693, %695
  store i32 %add828, ptr %i__4, align 4, !tbaa !8
  %696 = load i32, ptr %j, align 4, !tbaa !8
  %add829 = add nsw i32 %696, 1
  store i32 %add829, ptr %i__2, align 4, !tbaa !8
  %697 = load i32, ptr %i__1, align 4, !tbaa !8
  %698 = load i32, ptr %i__4, align 4, !tbaa !8
  %cmp830 = icmp sle i32 %697, %698
  br i1 %cmp830, label %cond.true831, label %cond.false832

cond.true831:                                     ; preds = %if.then827
  %699 = load i32, ptr %i__1, align 4, !tbaa !8
  br label %cond.end833

cond.false832:                                    ; preds = %if.then827
  %700 = load i32, ptr %i__4, align 4, !tbaa !8
  br label %cond.end833

cond.end833:                                      ; preds = %cond.false832, %cond.true831
  %cond834 = phi i32 [ %699, %cond.true831 ], [ %700, %cond.false832 ]
  store i32 %cond834, ptr %i__, align 4, !tbaa !8
  br label %for.cond835

for.cond835:                                      ; preds = %for.inc884, %cond.end833
  %701 = load i32, ptr %i__, align 4, !tbaa !8
  %702 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp836 = icmp sge i32 %701, %702
  br i1 %cmp836, label %for.body837, label %for.end886

for.body837:                                      ; preds = %for.cond835
  %703 = load i32, ptr %l, align 4, !tbaa !8
  %704 = load i32, ptr %i__, align 4, !tbaa !8
  %add838 = add nsw i32 %703, %704
  %705 = load i32, ptr %j, align 4, !tbaa !8
  %706 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul839 = mul nsw i32 %705, %706
  %add840 = add nsw i32 %add838, %mul839
  store i32 %add840, ptr %i__1, align 4, !tbaa !8
  %707 = load i32, ptr %i__, align 4, !tbaa !8
  store i32 %707, ptr %i__4, align 4, !tbaa !8
  %708 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %709 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom841 = sext i32 %709 to i64
  %arrayidx842 = getelementptr inbounds %struct.scomplex, ptr %708, i64 %idxprom841
  %real843 = getelementptr inbounds %struct.scomplex, ptr %arrayidx842, i32 0, i32 0
  %710 = load float, ptr %real843, align 4, !tbaa !10
  %711 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %712 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom844 = sext i32 %712 to i64
  %arrayidx845 = getelementptr inbounds %struct.scomplex, ptr %711, i64 %idxprom844
  %real846 = getelementptr inbounds %struct.scomplex, ptr %arrayidx845, i32 0, i32 0
  %713 = load float, ptr %real846, align 4, !tbaa !10
  %714 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %715 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom848 = sext i32 %715 to i64
  %arrayidx849 = getelementptr inbounds %struct.scomplex, ptr %714, i64 %idxprom848
  %imag850 = getelementptr inbounds %struct.scomplex, ptr %arrayidx849, i32 0, i32 1
  %716 = load float, ptr %imag850, align 4, !tbaa !13
  %717 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %718 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom851 = sext i32 %718 to i64
  %arrayidx852 = getelementptr inbounds %struct.scomplex, ptr %717, i64 %idxprom851
  %imag853 = getelementptr inbounds %struct.scomplex, ptr %arrayidx852, i32 0, i32 1
  %719 = load float, ptr %imag853, align 4, !tbaa !13
  %mul854 = fmul float %716, %719
  %neg855 = fneg float %mul854
  %720 = call float @llvm.fmuladd.f32(float %710, float %713, float %neg855)
  %real856 = getelementptr inbounds %struct.scomplex, ptr %q__2, i32 0, i32 0
  store float %720, ptr %real856, align 4, !tbaa !10
  %721 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %722 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom857 = sext i32 %722 to i64
  %arrayidx858 = getelementptr inbounds %struct.scomplex, ptr %721, i64 %idxprom857
  %real859 = getelementptr inbounds %struct.scomplex, ptr %arrayidx858, i32 0, i32 0
  %723 = load float, ptr %real859, align 4, !tbaa !10
  %724 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %725 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom860 = sext i32 %725 to i64
  %arrayidx861 = getelementptr inbounds %struct.scomplex, ptr %724, i64 %idxprom860
  %imag862 = getelementptr inbounds %struct.scomplex, ptr %arrayidx861, i32 0, i32 1
  %726 = load float, ptr %imag862, align 4, !tbaa !13
  %727 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %728 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom864 = sext i32 %728 to i64
  %arrayidx865 = getelementptr inbounds %struct.scomplex, ptr %727, i64 %idxprom864
  %imag866 = getelementptr inbounds %struct.scomplex, ptr %arrayidx865, i32 0, i32 1
  %729 = load float, ptr %imag866, align 4, !tbaa !13
  %730 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %731 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom867 = sext i32 %731 to i64
  %arrayidx868 = getelementptr inbounds %struct.scomplex, ptr %730, i64 %idxprom867
  %real869 = getelementptr inbounds %struct.scomplex, ptr %arrayidx868, i32 0, i32 0
  %732 = load float, ptr %real869, align 4, !tbaa !10
  %mul870 = fmul float %729, %732
  %733 = call float @llvm.fmuladd.f32(float %723, float %726, float %mul870)
  %imag871 = getelementptr inbounds %struct.scomplex, ptr %q__2, i32 0, i32 1
  store float %733, ptr %imag871, align 4, !tbaa !13
  %real872 = getelementptr inbounds %struct.scomplex, ptr %temp, i32 0, i32 0
  %734 = load float, ptr %real872, align 4, !tbaa !10
  %real873 = getelementptr inbounds %struct.scomplex, ptr %q__2, i32 0, i32 0
  %735 = load float, ptr %real873, align 4, !tbaa !10
  %sub874 = fsub float %734, %735
  %real875 = getelementptr inbounds %struct.scomplex, ptr %q__1, i32 0, i32 0
  store float %sub874, ptr %real875, align 4, !tbaa !10
  %imag876 = getelementptr inbounds %struct.scomplex, ptr %temp, i32 0, i32 1
  %736 = load float, ptr %imag876, align 4, !tbaa !13
  %imag877 = getelementptr inbounds %struct.scomplex, ptr %q__2, i32 0, i32 1
  %737 = load float, ptr %imag877, align 4, !tbaa !13
  %sub878 = fsub float %736, %737
  %imag879 = getelementptr inbounds %struct.scomplex, ptr %q__1, i32 0, i32 1
  store float %sub878, ptr %imag879, align 4, !tbaa !13
  %real880 = getelementptr inbounds %struct.scomplex, ptr %q__1, i32 0, i32 0
  %738 = load float, ptr %real880, align 4, !tbaa !10
  %real881 = getelementptr inbounds %struct.scomplex, ptr %temp, i32 0, i32 0
  store float %738, ptr %real881, align 4, !tbaa !10
  %imag882 = getelementptr inbounds %struct.scomplex, ptr %q__1, i32 0, i32 1
  %739 = load float, ptr %imag882, align 4, !tbaa !13
  %imag883 = getelementptr inbounds %struct.scomplex, ptr %temp, i32 0, i32 1
  store float %739, ptr %imag883, align 4, !tbaa !13
  br label %for.inc884

for.inc884:                                       ; preds = %for.body837
  %740 = load i32, ptr %i__, align 4, !tbaa !8
  %dec885 = add nsw i32 %740, -1
  store i32 %dec885, ptr %i__, align 4, !tbaa !8
  br label %for.cond835

for.end886:                                       ; preds = %for.cond835
  %741 = load i32, ptr %nounit, align 4, !tbaa !8
  %tobool887 = icmp ne i32 %741, 0
  br i1 %tobool887, label %if.then888, label %if.end897

if.then888:                                       ; preds = %for.end886
  %742 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %743 = load i32, ptr %j, align 4, !tbaa !8
  %744 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul889 = mul nsw i32 %743, %744
  %add890 = add nsw i32 %mul889, 1
  %idxprom891 = sext i32 %add890 to i64
  %arrayidx892 = getelementptr inbounds %struct.scomplex, ptr %742, i64 %idxprom891
  call void @bla_c_div(ptr noundef %q__1, ptr noundef %temp, ptr noundef %arrayidx892)
  %real893 = getelementptr inbounds %struct.scomplex, ptr %q__1, i32 0, i32 0
  %745 = load float, ptr %real893, align 4, !tbaa !10
  %real894 = getelementptr inbounds %struct.scomplex, ptr %temp, i32 0, i32 0
  store float %745, ptr %real894, align 4, !tbaa !10
  %imag895 = getelementptr inbounds %struct.scomplex, ptr %q__1, i32 0, i32 1
  %746 = load float, ptr %imag895, align 4, !tbaa !13
  %imag896 = getelementptr inbounds %struct.scomplex, ptr %temp, i32 0, i32 1
  store float %746, ptr %imag896, align 4, !tbaa !13
  br label %if.end897

if.end897:                                        ; preds = %if.then888, %for.end886
  br label %if.end963

if.else898:                                       ; preds = %for.body816
  %747 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %748 = load i32, ptr %747, align 4, !tbaa !8
  store i32 %748, ptr %i__2, align 4, !tbaa !8
  %749 = load i32, ptr %j, align 4, !tbaa !8
  %750 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %751 = load i32, ptr %750, align 4, !tbaa !8
  %add899 = add nsw i32 %749, %751
  store i32 %add899, ptr %i__1, align 4, !tbaa !8
  %752 = load i32, ptr %j, align 4, !tbaa !8
  %add900 = add nsw i32 %752, 1
  store i32 %add900, ptr %i__4, align 4, !tbaa !8
  %753 = load i32, ptr %i__2, align 4, !tbaa !8
  %754 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp901 = icmp sle i32 %753, %754
  br i1 %cmp901, label %cond.true902, label %cond.false903

cond.true902:                                     ; preds = %if.else898
  %755 = load i32, ptr %i__2, align 4, !tbaa !8
  br label %cond.end904

cond.false903:                                    ; preds = %if.else898
  %756 = load i32, ptr %i__1, align 4, !tbaa !8
  br label %cond.end904

cond.end904:                                      ; preds = %cond.false903, %cond.true902
  %cond905 = phi i32 [ %755, %cond.true902 ], [ %756, %cond.false903 ]
  store i32 %cond905, ptr %i__, align 4, !tbaa !8
  br label %for.cond906

for.cond906:                                      ; preds = %for.inc949, %cond.end904
  %757 = load i32, ptr %i__, align 4, !tbaa !8
  %758 = load i32, ptr %i__4, align 4, !tbaa !8
  %cmp907 = icmp sge i32 %757, %758
  br i1 %cmp907, label %for.body908, label %for.end951

for.body908:                                      ; preds = %for.cond906
  %759 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %760 = load i32, ptr %l, align 4, !tbaa !8
  %761 = load i32, ptr %i__, align 4, !tbaa !8
  %add909 = add nsw i32 %760, %761
  %762 = load i32, ptr %j, align 4, !tbaa !8
  %763 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul910 = mul nsw i32 %762, %763
  %add911 = add nsw i32 %add909, %mul910
  %idxprom912 = sext i32 %add911 to i64
  %arrayidx913 = getelementptr inbounds %struct.scomplex, ptr %759, i64 %idxprom912
  call void @bla_r_cnjg(ptr noundef %q__3, ptr noundef %arrayidx913)
  %764 = load i32, ptr %i__, align 4, !tbaa !8
  store i32 %764, ptr %i__2, align 4, !tbaa !8
  %real914 = getelementptr inbounds %struct.scomplex, ptr %q__3, i32 0, i32 0
  %765 = load float, ptr %real914, align 4, !tbaa !10
  %766 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %767 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom915 = sext i32 %767 to i64
  %arrayidx916 = getelementptr inbounds %struct.scomplex, ptr %766, i64 %idxprom915
  %real917 = getelementptr inbounds %struct.scomplex, ptr %arrayidx916, i32 0, i32 0
  %768 = load float, ptr %real917, align 4, !tbaa !10
  %imag919 = getelementptr inbounds %struct.scomplex, ptr %q__3, i32 0, i32 1
  %769 = load float, ptr %imag919, align 4, !tbaa !13
  %770 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %771 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom920 = sext i32 %771 to i64
  %arrayidx921 = getelementptr inbounds %struct.scomplex, ptr %770, i64 %idxprom920
  %imag922 = getelementptr inbounds %struct.scomplex, ptr %arrayidx921, i32 0, i32 1
  %772 = load float, ptr %imag922, align 4, !tbaa !13
  %mul923 = fmul float %769, %772
  %neg924 = fneg float %mul923
  %773 = call float @llvm.fmuladd.f32(float %765, float %768, float %neg924)
  %real925 = getelementptr inbounds %struct.scomplex, ptr %q__2, i32 0, i32 0
  store float %773, ptr %real925, align 4, !tbaa !10
  %real926 = getelementptr inbounds %struct.scomplex, ptr %q__3, i32 0, i32 0
  %774 = load float, ptr %real926, align 4, !tbaa !10
  %775 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %776 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom927 = sext i32 %776 to i64
  %arrayidx928 = getelementptr inbounds %struct.scomplex, ptr %775, i64 %idxprom927
  %imag929 = getelementptr inbounds %struct.scomplex, ptr %arrayidx928, i32 0, i32 1
  %777 = load float, ptr %imag929, align 4, !tbaa !13
  %imag931 = getelementptr inbounds %struct.scomplex, ptr %q__3, i32 0, i32 1
  %778 = load float, ptr %imag931, align 4, !tbaa !13
  %779 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %780 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom932 = sext i32 %780 to i64
  %arrayidx933 = getelementptr inbounds %struct.scomplex, ptr %779, i64 %idxprom932
  %real934 = getelementptr inbounds %struct.scomplex, ptr %arrayidx933, i32 0, i32 0
  %781 = load float, ptr %real934, align 4, !tbaa !10
  %mul935 = fmul float %778, %781
  %782 = call float @llvm.fmuladd.f32(float %774, float %777, float %mul935)
  %imag936 = getelementptr inbounds %struct.scomplex, ptr %q__2, i32 0, i32 1
  store float %782, ptr %imag936, align 4, !tbaa !13
  %real937 = getelementptr inbounds %struct.scomplex, ptr %temp, i32 0, i32 0
  %783 = load float, ptr %real937, align 4, !tbaa !10
  %real938 = getelementptr inbounds %struct.scomplex, ptr %q__2, i32 0, i32 0
  %784 = load float, ptr %real938, align 4, !tbaa !10
  %sub939 = fsub float %783, %784
  %real940 = getelementptr inbounds %struct.scomplex, ptr %q__1, i32 0, i32 0
  store float %sub939, ptr %real940, align 4, !tbaa !10
  %imag941 = getelementptr inbounds %struct.scomplex, ptr %temp, i32 0, i32 1
  %785 = load float, ptr %imag941, align 4, !tbaa !13
  %imag942 = getelementptr inbounds %struct.scomplex, ptr %q__2, i32 0, i32 1
  %786 = load float, ptr %imag942, align 4, !tbaa !13
  %sub943 = fsub float %785, %786
  %imag944 = getelementptr inbounds %struct.scomplex, ptr %q__1, i32 0, i32 1
  store float %sub943, ptr %imag944, align 4, !tbaa !13
  %real945 = getelementptr inbounds %struct.scomplex, ptr %q__1, i32 0, i32 0
  %787 = load float, ptr %real945, align 4, !tbaa !10
  %real946 = getelementptr inbounds %struct.scomplex, ptr %temp, i32 0, i32 0
  store float %787, ptr %real946, align 4, !tbaa !10
  %imag947 = getelementptr inbounds %struct.scomplex, ptr %q__1, i32 0, i32 1
  %788 = load float, ptr %imag947, align 4, !tbaa !13
  %imag948 = getelementptr inbounds %struct.scomplex, ptr %temp, i32 0, i32 1
  store float %788, ptr %imag948, align 4, !tbaa !13
  br label %for.inc949

for.inc949:                                       ; preds = %for.body908
  %789 = load i32, ptr %i__, align 4, !tbaa !8
  %dec950 = add nsw i32 %789, -1
  store i32 %dec950, ptr %i__, align 4, !tbaa !8
  br label %for.cond906

for.end951:                                       ; preds = %for.cond906
  %790 = load i32, ptr %nounit, align 4, !tbaa !8
  %tobool952 = icmp ne i32 %790, 0
  br i1 %tobool952, label %if.then953, label %if.end962

if.then953:                                       ; preds = %for.end951
  %791 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %792 = load i32, ptr %j, align 4, !tbaa !8
  %793 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul954 = mul nsw i32 %792, %793
  %add955 = add nsw i32 %mul954, 1
  %idxprom956 = sext i32 %add955 to i64
  %arrayidx957 = getelementptr inbounds %struct.scomplex, ptr %791, i64 %idxprom956
  call void @bla_r_cnjg(ptr noundef %q__2, ptr noundef %arrayidx957)
  call void @bla_c_div(ptr noundef %q__1, ptr noundef %temp, ptr noundef %q__2)
  %real958 = getelementptr inbounds %struct.scomplex, ptr %q__1, i32 0, i32 0
  %794 = load float, ptr %real958, align 4, !tbaa !10
  %real959 = getelementptr inbounds %struct.scomplex, ptr %temp, i32 0, i32 0
  store float %794, ptr %real959, align 4, !tbaa !10
  %imag960 = getelementptr inbounds %struct.scomplex, ptr %q__1, i32 0, i32 1
  %795 = load float, ptr %imag960, align 4, !tbaa !13
  %imag961 = getelementptr inbounds %struct.scomplex, ptr %temp, i32 0, i32 1
  store float %795, ptr %imag961, align 4, !tbaa !13
  br label %if.end962

if.end962:                                        ; preds = %if.then953, %for.end951
  br label %if.end963

if.end963:                                        ; preds = %if.end962, %if.end897
  %796 = load i32, ptr %j, align 4, !tbaa !8
  store i32 %796, ptr %i__4, align 4, !tbaa !8
  %real964 = getelementptr inbounds %struct.scomplex, ptr %temp, i32 0, i32 0
  %797 = load float, ptr %real964, align 4, !tbaa !10
  %798 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %799 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom965 = sext i32 %799 to i64
  %arrayidx966 = getelementptr inbounds %struct.scomplex, ptr %798, i64 %idxprom965
  %real967 = getelementptr inbounds %struct.scomplex, ptr %arrayidx966, i32 0, i32 0
  store float %797, ptr %real967, align 4, !tbaa !10
  %imag968 = getelementptr inbounds %struct.scomplex, ptr %temp, i32 0, i32 1
  %800 = load float, ptr %imag968, align 4, !tbaa !13
  %801 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %802 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom969 = sext i32 %802 to i64
  %arrayidx970 = getelementptr inbounds %struct.scomplex, ptr %801, i64 %idxprom969
  %imag971 = getelementptr inbounds %struct.scomplex, ptr %arrayidx970, i32 0, i32 1
  store float %800, ptr %imag971, align 4, !tbaa !13
  br label %for.inc972

for.inc972:                                       ; preds = %if.end963
  %803 = load i32, ptr %j, align 4, !tbaa !8
  %dec973 = add nsw i32 %803, -1
  store i32 %dec973, ptr %j, align 4, !tbaa !8
  br label %for.cond814

for.end974:                                       ; preds = %for.cond814
  br label %if.end1148

if.else975:                                       ; preds = %if.else811
  %804 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %805 = load i32, ptr %804, align 4, !tbaa !8
  %sub976 = sub nsw i32 %805, 1
  %806 = load ptr, ptr %incx.addr, align 8, !tbaa !4
  %807 = load i32, ptr %806, align 4, !tbaa !8
  %mul977 = mul nsw i32 %sub976, %807
  %808 = load i32, ptr %kx, align 4, !tbaa !8
  %add978 = add nsw i32 %808, %mul977
  store i32 %add978, ptr %kx, align 4, !tbaa !8
  %809 = load i32, ptr %kx, align 4, !tbaa !8
  store i32 %809, ptr %jx, align 4, !tbaa !8
  %810 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %811 = load i32, ptr %810, align 4, !tbaa !8
  store i32 %811, ptr %j, align 4, !tbaa !8
  br label %for.cond979

for.cond979:                                      ; preds = %for.inc1145, %if.else975
  %812 = load i32, ptr %j, align 4, !tbaa !8
  %cmp980 = icmp sge i32 %812, 1
  br i1 %cmp980, label %for.body981, label %for.end1147

for.body981:                                      ; preds = %for.cond979
  %813 = load i32, ptr %jx, align 4, !tbaa !8
  store i32 %813, ptr %i__4, align 4, !tbaa !8
  %814 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %815 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom982 = sext i32 %815 to i64
  %arrayidx983 = getelementptr inbounds %struct.scomplex, ptr %814, i64 %idxprom982
  %real984 = getelementptr inbounds %struct.scomplex, ptr %arrayidx983, i32 0, i32 0
  %816 = load float, ptr %real984, align 4, !tbaa !10
  %real985 = getelementptr inbounds %struct.scomplex, ptr %temp, i32 0, i32 0
  store float %816, ptr %real985, align 4, !tbaa !10
  %817 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %818 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom986 = sext i32 %818 to i64
  %arrayidx987 = getelementptr inbounds %struct.scomplex, ptr %817, i64 %idxprom986
  %imag988 = getelementptr inbounds %struct.scomplex, ptr %arrayidx987, i32 0, i32 1
  %819 = load float, ptr %imag988, align 4, !tbaa !13
  %imag989 = getelementptr inbounds %struct.scomplex, ptr %temp, i32 0, i32 1
  store float %819, ptr %imag989, align 4, !tbaa !13
  %820 = load i32, ptr %kx, align 4, !tbaa !8
  store i32 %820, ptr %ix, align 4, !tbaa !8
  %821 = load i32, ptr %j, align 4, !tbaa !8
  %sub990 = sub nsw i32 1, %821
  store i32 %sub990, ptr %l, align 4, !tbaa !8
  %822 = load i32, ptr %noconj, align 4, !tbaa !8
  %tobool991 = icmp ne i32 %822, 0
  br i1 %tobool991, label %if.then992, label %if.else1064

if.then992:                                       ; preds = %for.body981
  %823 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %824 = load i32, ptr %823, align 4, !tbaa !8
  store i32 %824, ptr %i__4, align 4, !tbaa !8
  %825 = load i32, ptr %j, align 4, !tbaa !8
  %826 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %827 = load i32, ptr %826, align 4, !tbaa !8
  %add993 = add nsw i32 %825, %827
  store i32 %add993, ptr %i__2, align 4, !tbaa !8
  %828 = load i32, ptr %j, align 4, !tbaa !8
  %add994 = add nsw i32 %828, 1
  store i32 %add994, ptr %i__1, align 4, !tbaa !8
  %829 = load i32, ptr %i__4, align 4, !tbaa !8
  %830 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp995 = icmp sle i32 %829, %830
  br i1 %cmp995, label %cond.true996, label %cond.false997

cond.true996:                                     ; preds = %if.then992
  %831 = load i32, ptr %i__4, align 4, !tbaa !8
  br label %cond.end998

cond.false997:                                    ; preds = %if.then992
  %832 = load i32, ptr %i__2, align 4, !tbaa !8
  br label %cond.end998

cond.end998:                                      ; preds = %cond.false997, %cond.true996
  %cond999 = phi i32 [ %831, %cond.true996 ], [ %832, %cond.false997 ]
  store i32 %cond999, ptr %i__, align 4, !tbaa !8
  br label %for.cond1000

for.cond1000:                                     ; preds = %for.inc1050, %cond.end998
  %833 = load i32, ptr %i__, align 4, !tbaa !8
  %834 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp1001 = icmp sge i32 %833, %834
  br i1 %cmp1001, label %for.body1002, label %for.end1052

for.body1002:                                     ; preds = %for.cond1000
  %835 = load i32, ptr %l, align 4, !tbaa !8
  %836 = load i32, ptr %i__, align 4, !tbaa !8
  %add1003 = add nsw i32 %835, %836
  %837 = load i32, ptr %j, align 4, !tbaa !8
  %838 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul1004 = mul nsw i32 %837, %838
  %add1005 = add nsw i32 %add1003, %mul1004
  store i32 %add1005, ptr %i__4, align 4, !tbaa !8
  %839 = load i32, ptr %ix, align 4, !tbaa !8
  store i32 %839, ptr %i__2, align 4, !tbaa !8
  %840 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %841 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom1006 = sext i32 %841 to i64
  %arrayidx1007 = getelementptr inbounds %struct.scomplex, ptr %840, i64 %idxprom1006
  %real1008 = getelementptr inbounds %struct.scomplex, ptr %arrayidx1007, i32 0, i32 0
  %842 = load float, ptr %real1008, align 4, !tbaa !10
  %843 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %844 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom1009 = sext i32 %844 to i64
  %arrayidx1010 = getelementptr inbounds %struct.scomplex, ptr %843, i64 %idxprom1009
  %real1011 = getelementptr inbounds %struct.scomplex, ptr %arrayidx1010, i32 0, i32 0
  %845 = load float, ptr %real1011, align 4, !tbaa !10
  %846 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %847 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom1013 = sext i32 %847 to i64
  %arrayidx1014 = getelementptr inbounds %struct.scomplex, ptr %846, i64 %idxprom1013
  %imag1015 = getelementptr inbounds %struct.scomplex, ptr %arrayidx1014, i32 0, i32 1
  %848 = load float, ptr %imag1015, align 4, !tbaa !13
  %849 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %850 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom1016 = sext i32 %850 to i64
  %arrayidx1017 = getelementptr inbounds %struct.scomplex, ptr %849, i64 %idxprom1016
  %imag1018 = getelementptr inbounds %struct.scomplex, ptr %arrayidx1017, i32 0, i32 1
  %851 = load float, ptr %imag1018, align 4, !tbaa !13
  %mul1019 = fmul float %848, %851
  %neg1020 = fneg float %mul1019
  %852 = call float @llvm.fmuladd.f32(float %842, float %845, float %neg1020)
  %real1021 = getelementptr inbounds %struct.scomplex, ptr %q__2, i32 0, i32 0
  store float %852, ptr %real1021, align 4, !tbaa !10
  %853 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %854 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom1022 = sext i32 %854 to i64
  %arrayidx1023 = getelementptr inbounds %struct.scomplex, ptr %853, i64 %idxprom1022
  %real1024 = getelementptr inbounds %struct.scomplex, ptr %arrayidx1023, i32 0, i32 0
  %855 = load float, ptr %real1024, align 4, !tbaa !10
  %856 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %857 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom1025 = sext i32 %857 to i64
  %arrayidx1026 = getelementptr inbounds %struct.scomplex, ptr %856, i64 %idxprom1025
  %imag1027 = getelementptr inbounds %struct.scomplex, ptr %arrayidx1026, i32 0, i32 1
  %858 = load float, ptr %imag1027, align 4, !tbaa !13
  %859 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %860 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom1029 = sext i32 %860 to i64
  %arrayidx1030 = getelementptr inbounds %struct.scomplex, ptr %859, i64 %idxprom1029
  %imag1031 = getelementptr inbounds %struct.scomplex, ptr %arrayidx1030, i32 0, i32 1
  %861 = load float, ptr %imag1031, align 4, !tbaa !13
  %862 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %863 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom1032 = sext i32 %863 to i64
  %arrayidx1033 = getelementptr inbounds %struct.scomplex, ptr %862, i64 %idxprom1032
  %real1034 = getelementptr inbounds %struct.scomplex, ptr %arrayidx1033, i32 0, i32 0
  %864 = load float, ptr %real1034, align 4, !tbaa !10
  %mul1035 = fmul float %861, %864
  %865 = call float @llvm.fmuladd.f32(float %855, float %858, float %mul1035)
  %imag1036 = getelementptr inbounds %struct.scomplex, ptr %q__2, i32 0, i32 1
  store float %865, ptr %imag1036, align 4, !tbaa !13
  %real1037 = getelementptr inbounds %struct.scomplex, ptr %temp, i32 0, i32 0
  %866 = load float, ptr %real1037, align 4, !tbaa !10
  %real1038 = getelementptr inbounds %struct.scomplex, ptr %q__2, i32 0, i32 0
  %867 = load float, ptr %real1038, align 4, !tbaa !10
  %sub1039 = fsub float %866, %867
  %real1040 = getelementptr inbounds %struct.scomplex, ptr %q__1, i32 0, i32 0
  store float %sub1039, ptr %real1040, align 4, !tbaa !10
  %imag1041 = getelementptr inbounds %struct.scomplex, ptr %temp, i32 0, i32 1
  %868 = load float, ptr %imag1041, align 4, !tbaa !13
  %imag1042 = getelementptr inbounds %struct.scomplex, ptr %q__2, i32 0, i32 1
  %869 = load float, ptr %imag1042, align 4, !tbaa !13
  %sub1043 = fsub float %868, %869
  %imag1044 = getelementptr inbounds %struct.scomplex, ptr %q__1, i32 0, i32 1
  store float %sub1043, ptr %imag1044, align 4, !tbaa !13
  %real1045 = getelementptr inbounds %struct.scomplex, ptr %q__1, i32 0, i32 0
  %870 = load float, ptr %real1045, align 4, !tbaa !10
  %real1046 = getelementptr inbounds %struct.scomplex, ptr %temp, i32 0, i32 0
  store float %870, ptr %real1046, align 4, !tbaa !10
  %imag1047 = getelementptr inbounds %struct.scomplex, ptr %q__1, i32 0, i32 1
  %871 = load float, ptr %imag1047, align 4, !tbaa !13
  %imag1048 = getelementptr inbounds %struct.scomplex, ptr %temp, i32 0, i32 1
  store float %871, ptr %imag1048, align 4, !tbaa !13
  %872 = load ptr, ptr %incx.addr, align 8, !tbaa !4
  %873 = load i32, ptr %872, align 4, !tbaa !8
  %874 = load i32, ptr %ix, align 4, !tbaa !8
  %sub1049 = sub nsw i32 %874, %873
  store i32 %sub1049, ptr %ix, align 4, !tbaa !8
  br label %for.inc1050

for.inc1050:                                      ; preds = %for.body1002
  %875 = load i32, ptr %i__, align 4, !tbaa !8
  %dec1051 = add nsw i32 %875, -1
  store i32 %dec1051, ptr %i__, align 4, !tbaa !8
  br label %for.cond1000

for.end1052:                                      ; preds = %for.cond1000
  %876 = load i32, ptr %nounit, align 4, !tbaa !8
  %tobool1053 = icmp ne i32 %876, 0
  br i1 %tobool1053, label %if.then1054, label %if.end1063

if.then1054:                                      ; preds = %for.end1052
  %877 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %878 = load i32, ptr %j, align 4, !tbaa !8
  %879 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul1055 = mul nsw i32 %878, %879
  %add1056 = add nsw i32 %mul1055, 1
  %idxprom1057 = sext i32 %add1056 to i64
  %arrayidx1058 = getelementptr inbounds %struct.scomplex, ptr %877, i64 %idxprom1057
  call void @bla_c_div(ptr noundef %q__1, ptr noundef %temp, ptr noundef %arrayidx1058)
  %real1059 = getelementptr inbounds %struct.scomplex, ptr %q__1, i32 0, i32 0
  %880 = load float, ptr %real1059, align 4, !tbaa !10
  %real1060 = getelementptr inbounds %struct.scomplex, ptr %temp, i32 0, i32 0
  store float %880, ptr %real1060, align 4, !tbaa !10
  %imag1061 = getelementptr inbounds %struct.scomplex, ptr %q__1, i32 0, i32 1
  %881 = load float, ptr %imag1061, align 4, !tbaa !13
  %imag1062 = getelementptr inbounds %struct.scomplex, ptr %temp, i32 0, i32 1
  store float %881, ptr %imag1062, align 4, !tbaa !13
  br label %if.end1063

if.end1063:                                       ; preds = %if.then1054, %for.end1052
  br label %if.end1130

if.else1064:                                      ; preds = %for.body981
  %882 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %883 = load i32, ptr %882, align 4, !tbaa !8
  store i32 %883, ptr %i__1, align 4, !tbaa !8
  %884 = load i32, ptr %j, align 4, !tbaa !8
  %885 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %886 = load i32, ptr %885, align 4, !tbaa !8
  %add1065 = add nsw i32 %884, %886
  store i32 %add1065, ptr %i__4, align 4, !tbaa !8
  %887 = load i32, ptr %j, align 4, !tbaa !8
  %add1066 = add nsw i32 %887, 1
  store i32 %add1066, ptr %i__2, align 4, !tbaa !8
  %888 = load i32, ptr %i__1, align 4, !tbaa !8
  %889 = load i32, ptr %i__4, align 4, !tbaa !8
  %cmp1067 = icmp sle i32 %888, %889
  br i1 %cmp1067, label %cond.true1068, label %cond.false1069

cond.true1068:                                    ; preds = %if.else1064
  %890 = load i32, ptr %i__1, align 4, !tbaa !8
  br label %cond.end1070

cond.false1069:                                   ; preds = %if.else1064
  %891 = load i32, ptr %i__4, align 4, !tbaa !8
  br label %cond.end1070

cond.end1070:                                     ; preds = %cond.false1069, %cond.true1068
  %cond1071 = phi i32 [ %890, %cond.true1068 ], [ %891, %cond.false1069 ]
  store i32 %cond1071, ptr %i__, align 4, !tbaa !8
  br label %for.cond1072

for.cond1072:                                     ; preds = %for.inc1116, %cond.end1070
  %892 = load i32, ptr %i__, align 4, !tbaa !8
  %893 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp1073 = icmp sge i32 %892, %893
  br i1 %cmp1073, label %for.body1074, label %for.end1118

for.body1074:                                     ; preds = %for.cond1072
  %894 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %895 = load i32, ptr %l, align 4, !tbaa !8
  %896 = load i32, ptr %i__, align 4, !tbaa !8
  %add1075 = add nsw i32 %895, %896
  %897 = load i32, ptr %j, align 4, !tbaa !8
  %898 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul1076 = mul nsw i32 %897, %898
  %add1077 = add nsw i32 %add1075, %mul1076
  %idxprom1078 = sext i32 %add1077 to i64
  %arrayidx1079 = getelementptr inbounds %struct.scomplex, ptr %894, i64 %idxprom1078
  call void @bla_r_cnjg(ptr noundef %q__3, ptr noundef %arrayidx1079)
  %899 = load i32, ptr %ix, align 4, !tbaa !8
  store i32 %899, ptr %i__1, align 4, !tbaa !8
  %real1080 = getelementptr inbounds %struct.scomplex, ptr %q__3, i32 0, i32 0
  %900 = load float, ptr %real1080, align 4, !tbaa !10
  %901 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %902 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom1081 = sext i32 %902 to i64
  %arrayidx1082 = getelementptr inbounds %struct.scomplex, ptr %901, i64 %idxprom1081
  %real1083 = getelementptr inbounds %struct.scomplex, ptr %arrayidx1082, i32 0, i32 0
  %903 = load float, ptr %real1083, align 4, !tbaa !10
  %imag1085 = getelementptr inbounds %struct.scomplex, ptr %q__3, i32 0, i32 1
  %904 = load float, ptr %imag1085, align 4, !tbaa !13
  %905 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %906 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom1086 = sext i32 %906 to i64
  %arrayidx1087 = getelementptr inbounds %struct.scomplex, ptr %905, i64 %idxprom1086
  %imag1088 = getelementptr inbounds %struct.scomplex, ptr %arrayidx1087, i32 0, i32 1
  %907 = load float, ptr %imag1088, align 4, !tbaa !13
  %mul1089 = fmul float %904, %907
  %neg1090 = fneg float %mul1089
  %908 = call float @llvm.fmuladd.f32(float %900, float %903, float %neg1090)
  %real1091 = getelementptr inbounds %struct.scomplex, ptr %q__2, i32 0, i32 0
  store float %908, ptr %real1091, align 4, !tbaa !10
  %real1092 = getelementptr inbounds %struct.scomplex, ptr %q__3, i32 0, i32 0
  %909 = load float, ptr %real1092, align 4, !tbaa !10
  %910 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %911 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom1093 = sext i32 %911 to i64
  %arrayidx1094 = getelementptr inbounds %struct.scomplex, ptr %910, i64 %idxprom1093
  %imag1095 = getelementptr inbounds %struct.scomplex, ptr %arrayidx1094, i32 0, i32 1
  %912 = load float, ptr %imag1095, align 4, !tbaa !13
  %imag1097 = getelementptr inbounds %struct.scomplex, ptr %q__3, i32 0, i32 1
  %913 = load float, ptr %imag1097, align 4, !tbaa !13
  %914 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %915 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom1098 = sext i32 %915 to i64
  %arrayidx1099 = getelementptr inbounds %struct.scomplex, ptr %914, i64 %idxprom1098
  %real1100 = getelementptr inbounds %struct.scomplex, ptr %arrayidx1099, i32 0, i32 0
  %916 = load float, ptr %real1100, align 4, !tbaa !10
  %mul1101 = fmul float %913, %916
  %917 = call float @llvm.fmuladd.f32(float %909, float %912, float %mul1101)
  %imag1102 = getelementptr inbounds %struct.scomplex, ptr %q__2, i32 0, i32 1
  store float %917, ptr %imag1102, align 4, !tbaa !13
  %real1103 = getelementptr inbounds %struct.scomplex, ptr %temp, i32 0, i32 0
  %918 = load float, ptr %real1103, align 4, !tbaa !10
  %real1104 = getelementptr inbounds %struct.scomplex, ptr %q__2, i32 0, i32 0
  %919 = load float, ptr %real1104, align 4, !tbaa !10
  %sub1105 = fsub float %918, %919
  %real1106 = getelementptr inbounds %struct.scomplex, ptr %q__1, i32 0, i32 0
  store float %sub1105, ptr %real1106, align 4, !tbaa !10
  %imag1107 = getelementptr inbounds %struct.scomplex, ptr %temp, i32 0, i32 1
  %920 = load float, ptr %imag1107, align 4, !tbaa !13
  %imag1108 = getelementptr inbounds %struct.scomplex, ptr %q__2, i32 0, i32 1
  %921 = load float, ptr %imag1108, align 4, !tbaa !13
  %sub1109 = fsub float %920, %921
  %imag1110 = getelementptr inbounds %struct.scomplex, ptr %q__1, i32 0, i32 1
  store float %sub1109, ptr %imag1110, align 4, !tbaa !13
  %real1111 = getelementptr inbounds %struct.scomplex, ptr %q__1, i32 0, i32 0
  %922 = load float, ptr %real1111, align 4, !tbaa !10
  %real1112 = getelementptr inbounds %struct.scomplex, ptr %temp, i32 0, i32 0
  store float %922, ptr %real1112, align 4, !tbaa !10
  %imag1113 = getelementptr inbounds %struct.scomplex, ptr %q__1, i32 0, i32 1
  %923 = load float, ptr %imag1113, align 4, !tbaa !13
  %imag1114 = getelementptr inbounds %struct.scomplex, ptr %temp, i32 0, i32 1
  store float %923, ptr %imag1114, align 4, !tbaa !13
  %924 = load ptr, ptr %incx.addr, align 8, !tbaa !4
  %925 = load i32, ptr %924, align 4, !tbaa !8
  %926 = load i32, ptr %ix, align 4, !tbaa !8
  %sub1115 = sub nsw i32 %926, %925
  store i32 %sub1115, ptr %ix, align 4, !tbaa !8
  br label %for.inc1116

for.inc1116:                                      ; preds = %for.body1074
  %927 = load i32, ptr %i__, align 4, !tbaa !8
  %dec1117 = add nsw i32 %927, -1
  store i32 %dec1117, ptr %i__, align 4, !tbaa !8
  br label %for.cond1072

for.end1118:                                      ; preds = %for.cond1072
  %928 = load i32, ptr %nounit, align 4, !tbaa !8
  %tobool1119 = icmp ne i32 %928, 0
  br i1 %tobool1119, label %if.then1120, label %if.end1129

if.then1120:                                      ; preds = %for.end1118
  %929 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %930 = load i32, ptr %j, align 4, !tbaa !8
  %931 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul1121 = mul nsw i32 %930, %931
  %add1122 = add nsw i32 %mul1121, 1
  %idxprom1123 = sext i32 %add1122 to i64
  %arrayidx1124 = getelementptr inbounds %struct.scomplex, ptr %929, i64 %idxprom1123
  call void @bla_r_cnjg(ptr noundef %q__2, ptr noundef %arrayidx1124)
  call void @bla_c_div(ptr noundef %q__1, ptr noundef %temp, ptr noundef %q__2)
  %real1125 = getelementptr inbounds %struct.scomplex, ptr %q__1, i32 0, i32 0
  %932 = load float, ptr %real1125, align 4, !tbaa !10
  %real1126 = getelementptr inbounds %struct.scomplex, ptr %temp, i32 0, i32 0
  store float %932, ptr %real1126, align 4, !tbaa !10
  %imag1127 = getelementptr inbounds %struct.scomplex, ptr %q__1, i32 0, i32 1
  %933 = load float, ptr %imag1127, align 4, !tbaa !13
  %imag1128 = getelementptr inbounds %struct.scomplex, ptr %temp, i32 0, i32 1
  store float %933, ptr %imag1128, align 4, !tbaa !13
  br label %if.end1129

if.end1129:                                       ; preds = %if.then1120, %for.end1118
  br label %if.end1130

if.end1130:                                       ; preds = %if.end1129, %if.end1063
  %934 = load i32, ptr %jx, align 4, !tbaa !8
  store i32 %934, ptr %i__2, align 4, !tbaa !8
  %real1131 = getelementptr inbounds %struct.scomplex, ptr %temp, i32 0, i32 0
  %935 = load float, ptr %real1131, align 4, !tbaa !10
  %936 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %937 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom1132 = sext i32 %937 to i64
  %arrayidx1133 = getelementptr inbounds %struct.scomplex, ptr %936, i64 %idxprom1132
  %real1134 = getelementptr inbounds %struct.scomplex, ptr %arrayidx1133, i32 0, i32 0
  store float %935, ptr %real1134, align 4, !tbaa !10
  %imag1135 = getelementptr inbounds %struct.scomplex, ptr %temp, i32 0, i32 1
  %938 = load float, ptr %imag1135, align 4, !tbaa !13
  %939 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %940 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom1136 = sext i32 %940 to i64
  %arrayidx1137 = getelementptr inbounds %struct.scomplex, ptr %939, i64 %idxprom1136
  %imag1138 = getelementptr inbounds %struct.scomplex, ptr %arrayidx1137, i32 0, i32 1
  store float %938, ptr %imag1138, align 4, !tbaa !13
  %941 = load ptr, ptr %incx.addr, align 8, !tbaa !4
  %942 = load i32, ptr %941, align 4, !tbaa !8
  %943 = load i32, ptr %jx, align 4, !tbaa !8
  %sub1139 = sub nsw i32 %943, %942
  store i32 %sub1139, ptr %jx, align 4, !tbaa !8
  %944 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %945 = load i32, ptr %944, align 4, !tbaa !8
  %946 = load i32, ptr %j, align 4, !tbaa !8
  %sub1140 = sub nsw i32 %945, %946
  %947 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %948 = load i32, ptr %947, align 4, !tbaa !8
  %cmp1141 = icmp sge i32 %sub1140, %948
  br i1 %cmp1141, label %if.then1142, label %if.end1144

if.then1142:                                      ; preds = %if.end1130
  %949 = load ptr, ptr %incx.addr, align 8, !tbaa !4
  %950 = load i32, ptr %949, align 4, !tbaa !8
  %951 = load i32, ptr %kx, align 4, !tbaa !8
  %sub1143 = sub nsw i32 %951, %950
  store i32 %sub1143, ptr %kx, align 4, !tbaa !8
  br label %if.end1144

if.end1144:                                       ; preds = %if.then1142, %if.end1130
  br label %for.inc1145

for.inc1145:                                      ; preds = %if.end1144
  %952 = load i32, ptr %j, align 4, !tbaa !8
  %dec1146 = add nsw i32 %952, -1
  store i32 %dec1146, ptr %j, align 4, !tbaa !8
  br label %for.cond979

for.end1147:                                      ; preds = %for.cond979
  br label %if.end1148

if.end1148:                                       ; preds = %for.end1147, %for.end974
  br label %if.end1149

if.end1149:                                       ; preds = %if.end1148, %if.end810
  br label %if.end1150

if.end1150:                                       ; preds = %if.end1149, %if.end472
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end1150, %if.then42, %if.then38
  call void @llvm.lifetime.end.p0(i64 4, ptr %nounit) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %noconj) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %kx) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %jx) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %ix) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %kplus1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %l) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %temp) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %info) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %q__3) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %q__2) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %q__1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__5) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__4) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %a_offset) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %a_dim1) #4
  %953 = load i32, ptr %retval, align 4
  ret i32 %953
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @lsame_(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

declare i32 @xerbla_(ptr noundef, ptr noundef, i32 noundef) #2

declare void @bla_c_div(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

declare void @bla_r_cnjg(ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @dtbsv_(ptr noundef %uplo, ptr noundef %trans, ptr noundef %diag, ptr noundef %n, ptr noundef %k, ptr noundef %a, ptr noundef %lda, ptr noundef %x, ptr noundef %incx) #0 {
entry:
  %retval = alloca i32, align 4
  %uplo.addr = alloca ptr, align 8
  %trans.addr = alloca ptr, align 8
  %diag.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %k.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %lda.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %incx.addr = alloca ptr, align 8
  %a_dim1 = alloca i32, align 4
  %a_offset = alloca i32, align 4
  %i__1 = alloca i32, align 4
  %i__2 = alloca i32, align 4
  %i__3 = alloca i32, align 4
  %i__4 = alloca i32, align 4
  %info = alloca i32, align 4
  %temp = alloca double, align 8
  %i__ = alloca i32, align 4
  %j = alloca i32, align 4
  %l = alloca i32, align 4
  %kplus1 = alloca i32, align 4
  %ix = alloca i32, align 4
  %jx = alloca i32, align 4
  %kx = alloca i32, align 4
  %nounit = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %uplo, ptr %uplo.addr, align 8, !tbaa !4
  store ptr %trans, ptr %trans.addr, align 8, !tbaa !4
  store ptr %diag, ptr %diag.addr, align 8, !tbaa !4
  store ptr %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %k, ptr %k.addr, align 8, !tbaa !4
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store ptr %lda, ptr %lda.addr, align 8, !tbaa !4
  store ptr %x, ptr %x.addr, align 8, !tbaa !4
  store ptr %incx, ptr %incx.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %a_dim1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %a_offset) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__2) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__3) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__4) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %info) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %temp) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %l) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %kplus1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ix) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %jx) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %kx) #4
  store i32 0, ptr %kx, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %nounit) #4
  %0 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %1 = load i32, ptr %0, align 4, !tbaa !8
  store i32 %1, ptr %a_dim1, align 4, !tbaa !8
  %2 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul = mul nsw i32 %2, 1
  %add = add nsw i32 1, %mul
  store i32 %add, ptr %a_offset, align 4, !tbaa !8
  %3 = load i32, ptr %a_offset, align 4, !tbaa !8
  %4 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %idx.ext = sext i32 %3 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds double, ptr %4, i64 %idx.neg
  store ptr %add.ptr, ptr %a.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds double, ptr %5, i32 -1
  store ptr %incdec.ptr, ptr %x.addr, align 8, !tbaa !4
  store i32 0, ptr %info, align 4, !tbaa !8
  %6 = load ptr, ptr %uplo.addr, align 8, !tbaa !4
  %call = call i32 @lsame_(ptr noundef %6, ptr noundef @.str, i32 noundef 1, i32 noundef 1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %7 = load ptr, ptr %uplo.addr, align 8, !tbaa !4
  %call1 = call i32 @lsame_(ptr noundef %7, ptr noundef @.str.1, i32 noundef 1, i32 noundef 1)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store i32 1, ptr %info, align 4, !tbaa !8
  br label %if.end36

if.else:                                          ; preds = %land.lhs.true, %entry
  %8 = load ptr, ptr %trans.addr, align 8, !tbaa !4
  %call3 = call i32 @lsame_(ptr noundef %8, ptr noundef @.str.2, i32 noundef 1, i32 noundef 1)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.else12, label %land.lhs.true5

land.lhs.true5:                                   ; preds = %if.else
  %9 = load ptr, ptr %trans.addr, align 8, !tbaa !4
  %call6 = call i32 @lsame_(ptr noundef %9, ptr noundef @.str.3, i32 noundef 1, i32 noundef 1)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.else12, label %land.lhs.true8

land.lhs.true8:                                   ; preds = %land.lhs.true5
  %10 = load ptr, ptr %trans.addr, align 8, !tbaa !4
  %call9 = call i32 @lsame_(ptr noundef %10, ptr noundef @.str.4, i32 noundef 1, i32 noundef 1)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.else12, label %if.then11

if.then11:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %info, align 4, !tbaa !8
  br label %if.end35

if.else12:                                        ; preds = %land.lhs.true8, %land.lhs.true5, %if.else
  %11 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %call13 = call i32 @lsame_(ptr noundef %11, ptr noundef @.str, i32 noundef 1, i32 noundef 1)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.else19, label %land.lhs.true15

land.lhs.true15:                                  ; preds = %if.else12
  %12 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %call16 = call i32 @lsame_(ptr noundef %12, ptr noundef @.str.2, i32 noundef 1, i32 noundef 1)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.else19, label %if.then18

if.then18:                                        ; preds = %land.lhs.true15
  store i32 3, ptr %info, align 4, !tbaa !8
  br label %if.end34

if.else19:                                        ; preds = %land.lhs.true15, %if.else12
  %13 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %14 = load i32, ptr %13, align 4, !tbaa !8
  %cmp = icmp slt i32 %14, 0
  br i1 %cmp, label %if.then20, label %if.else21

if.then20:                                        ; preds = %if.else19
  store i32 4, ptr %info, align 4, !tbaa !8
  br label %if.end33

if.else21:                                        ; preds = %if.else19
  %15 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %16 = load i32, ptr %15, align 4, !tbaa !8
  %cmp22 = icmp slt i32 %16, 0
  br i1 %cmp22, label %if.then23, label %if.else24

if.then23:                                        ; preds = %if.else21
  store i32 5, ptr %info, align 4, !tbaa !8
  br label %if.end32

if.else24:                                        ; preds = %if.else21
  %17 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %18 = load i32, ptr %17, align 4, !tbaa !8
  %19 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %20 = load i32, ptr %19, align 4, !tbaa !8
  %add25 = add nsw i32 %20, 1
  %cmp26 = icmp slt i32 %18, %add25
  br i1 %cmp26, label %if.then27, label %if.else28

if.then27:                                        ; preds = %if.else24
  store i32 7, ptr %info, align 4, !tbaa !8
  br label %if.end31

if.else28:                                        ; preds = %if.else24
  %21 = load ptr, ptr %incx.addr, align 8, !tbaa !4
  %22 = load i32, ptr %21, align 4, !tbaa !8
  %cmp29 = icmp eq i32 %22, 0
  br i1 %cmp29, label %if.then30, label %if.end

if.then30:                                        ; preds = %if.else28
  store i32 9, ptr %info, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then30, %if.else28
  br label %if.end31

if.end31:                                         ; preds = %if.end, %if.then27
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %if.then23
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.then20
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.then18
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.then11
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.then
  %23 = load i32, ptr %info, align 4, !tbaa !8
  %cmp37 = icmp ne i32 %23, 0
  br i1 %cmp37, label %if.then38, label %if.end40

if.then38:                                        ; preds = %if.end36
  %call39 = call i32 @xerbla_(ptr noundef @.str.6, ptr noundef %info, i32 noundef 6)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end40:                                         ; preds = %if.end36
  %24 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %25 = load i32, ptr %24, align 4, !tbaa !8
  %cmp41 = icmp eq i32 %25, 0
  br i1 %cmp41, label %if.then42, label %if.end43

if.then42:                                        ; preds = %if.end40
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end43:                                         ; preds = %if.end40
  %26 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %call44 = call i32 @lsame_(ptr noundef %26, ptr noundef @.str.2, i32 noundef 1, i32 noundef 1)
  store i32 %call44, ptr %nounit, align 4, !tbaa !8
  %27 = load ptr, ptr %incx.addr, align 8, !tbaa !4
  %28 = load i32, ptr %27, align 4, !tbaa !8
  %cmp45 = icmp sle i32 %28, 0
  br i1 %cmp45, label %if.then46, label %if.else49

if.then46:                                        ; preds = %if.end43
  %29 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %30 = load i32, ptr %29, align 4, !tbaa !8
  %sub = sub nsw i32 %30, 1
  %31 = load ptr, ptr %incx.addr, align 8, !tbaa !4
  %32 = load i32, ptr %31, align 4, !tbaa !8
  %mul47 = mul nsw i32 %sub, %32
  %sub48 = sub nsw i32 1, %mul47
  store i32 %sub48, ptr %kx, align 4, !tbaa !8
  br label %if.end53

if.else49:                                        ; preds = %if.end43
  %33 = load ptr, ptr %incx.addr, align 8, !tbaa !4
  %34 = load i32, ptr %33, align 4, !tbaa !8
  %cmp50 = icmp ne i32 %34, 1
  br i1 %cmp50, label %if.then51, label %if.end52

if.then51:                                        ; preds = %if.else49
  store i32 1, ptr %kx, align 4, !tbaa !8
  br label %if.end52

if.end52:                                         ; preds = %if.then51, %if.else49
  br label %if.end53

if.end53:                                         ; preds = %if.end52, %if.then46
  %35 = load ptr, ptr %trans.addr, align 8, !tbaa !4
  %call54 = call i32 @lsame_(ptr noundef %35, ptr noundef @.str.2, i32 noundef 1, i32 noundef 1)
  %tobool55 = icmp ne i32 %call54, 0
  br i1 %tobool55, label %if.then56, label %if.else250

if.then56:                                        ; preds = %if.end53
  %36 = load ptr, ptr %uplo.addr, align 8, !tbaa !4
  %call57 = call i32 @lsame_(ptr noundef %36, ptr noundef @.str, i32 noundef 1, i32 noundef 1)
  %tobool58 = icmp ne i32 %call57, 0
  br i1 %tobool58, label %if.then59, label %if.else150

if.then59:                                        ; preds = %if.then56
  %37 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %38 = load i32, ptr %37, align 4, !tbaa !8
  %add60 = add nsw i32 %38, 1
  store i32 %add60, ptr %kplus1, align 4, !tbaa !8
  %39 = load ptr, ptr %incx.addr, align 8, !tbaa !4
  %40 = load i32, ptr %39, align 4, !tbaa !8
  %cmp61 = icmp eq i32 %40, 1
  br i1 %cmp61, label %if.then62, label %if.else96

if.then62:                                        ; preds = %if.then59
  %41 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %42 = load i32, ptr %41, align 4, !tbaa !8
  store i32 %42, ptr %j, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc93, %if.then62
  %43 = load i32, ptr %j, align 4, !tbaa !8
  %cmp63 = icmp sge i32 %43, 1
  br i1 %cmp63, label %for.body, label %for.end95

for.body:                                         ; preds = %for.cond
  %44 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %45 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom = sext i32 %45 to i64
  %arrayidx = getelementptr inbounds double, ptr %44, i64 %idxprom
  %46 = load double, ptr %arrayidx, align 8, !tbaa !14
  %cmp64 = fcmp une double %46, 0.000000e+00
  br i1 %cmp64, label %if.then65, label %if.end92

if.then65:                                        ; preds = %for.body
  %47 = load i32, ptr %kplus1, align 4, !tbaa !8
  %48 = load i32, ptr %j, align 4, !tbaa !8
  %sub66 = sub nsw i32 %47, %48
  store i32 %sub66, ptr %l, align 4, !tbaa !8
  %49 = load i32, ptr %nounit, align 4, !tbaa !8
  %tobool67 = icmp ne i32 %49, 0
  br i1 %tobool67, label %if.then68, label %if.end75

if.then68:                                        ; preds = %if.then65
  %50 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %51 = load i32, ptr %kplus1, align 4, !tbaa !8
  %52 = load i32, ptr %j, align 4, !tbaa !8
  %53 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul69 = mul nsw i32 %52, %53
  %add70 = add nsw i32 %51, %mul69
  %idxprom71 = sext i32 %add70 to i64
  %arrayidx72 = getelementptr inbounds double, ptr %50, i64 %idxprom71
  %54 = load double, ptr %arrayidx72, align 8, !tbaa !14
  %55 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %56 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom73 = sext i32 %56 to i64
  %arrayidx74 = getelementptr inbounds double, ptr %55, i64 %idxprom73
  %57 = load double, ptr %arrayidx74, align 8, !tbaa !14
  %div = fdiv double %57, %54
  store double %div, ptr %arrayidx74, align 8, !tbaa !14
  br label %if.end75

if.end75:                                         ; preds = %if.then68, %if.then65
  %58 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %59 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom76 = sext i32 %59 to i64
  %arrayidx77 = getelementptr inbounds double, ptr %58, i64 %idxprom76
  %60 = load double, ptr %arrayidx77, align 8, !tbaa !14
  store double %60, ptr %temp, align 8, !tbaa !14
  store i32 1, ptr %i__2, align 4, !tbaa !8
  %61 = load i32, ptr %j, align 4, !tbaa !8
  %62 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %63 = load i32, ptr %62, align 4, !tbaa !8
  %sub78 = sub nsw i32 %61, %63
  store i32 %sub78, ptr %i__3, align 4, !tbaa !8
  %64 = load i32, ptr %i__2, align 4, !tbaa !8
  %65 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp79 = icmp sge i32 %64, %65
  br i1 %cmp79, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end75
  %66 = load i32, ptr %i__2, align 4, !tbaa !8
  br label %cond.end

cond.false:                                       ; preds = %if.end75
  %67 = load i32, ptr %i__3, align 4, !tbaa !8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %66, %cond.true ], [ %67, %cond.false ]
  store i32 %cond, ptr %i__1, align 4, !tbaa !8
  %68 = load i32, ptr %j, align 4, !tbaa !8
  %sub80 = sub nsw i32 %68, 1
  store i32 %sub80, ptr %i__, align 4, !tbaa !8
  br label %for.cond81

for.cond81:                                       ; preds = %for.inc, %cond.end
  %69 = load i32, ptr %i__, align 4, !tbaa !8
  %70 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp82 = icmp sge i32 %69, %70
  br i1 %cmp82, label %for.body83, label %for.end

for.body83:                                       ; preds = %for.cond81
  %71 = load double, ptr %temp, align 8, !tbaa !14
  %72 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %73 = load i32, ptr %l, align 4, !tbaa !8
  %74 = load i32, ptr %i__, align 4, !tbaa !8
  %add84 = add nsw i32 %73, %74
  %75 = load i32, ptr %j, align 4, !tbaa !8
  %76 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul85 = mul nsw i32 %75, %76
  %add86 = add nsw i32 %add84, %mul85
  %idxprom87 = sext i32 %add86 to i64
  %arrayidx88 = getelementptr inbounds double, ptr %72, i64 %idxprom87
  %77 = load double, ptr %arrayidx88, align 8, !tbaa !14
  %78 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %79 = load i32, ptr %i__, align 4, !tbaa !8
  %idxprom90 = sext i32 %79 to i64
  %arrayidx91 = getelementptr inbounds double, ptr %78, i64 %idxprom90
  %80 = load double, ptr %arrayidx91, align 8, !tbaa !14
  %neg = fneg double %71
  %81 = call double @llvm.fmuladd.f64(double %neg, double %77, double %80)
  store double %81, ptr %arrayidx91, align 8, !tbaa !14
  br label %for.inc

for.inc:                                          ; preds = %for.body83
  %82 = load i32, ptr %i__, align 4, !tbaa !8
  %dec = add nsw i32 %82, -1
  store i32 %dec, ptr %i__, align 4, !tbaa !8
  br label %for.cond81

for.end:                                          ; preds = %for.cond81
  br label %if.end92

if.end92:                                         ; preds = %for.end, %for.body
  br label %for.inc93

for.inc93:                                        ; preds = %if.end92
  %83 = load i32, ptr %j, align 4, !tbaa !8
  %dec94 = add nsw i32 %83, -1
  store i32 %dec94, ptr %j, align 4, !tbaa !8
  br label %for.cond

for.end95:                                        ; preds = %for.cond
  br label %if.end149

if.else96:                                        ; preds = %if.then59
  %84 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %85 = load i32, ptr %84, align 4, !tbaa !8
  %sub97 = sub nsw i32 %85, 1
  %86 = load ptr, ptr %incx.addr, align 8, !tbaa !4
  %87 = load i32, ptr %86, align 4, !tbaa !8
  %mul98 = mul nsw i32 %sub97, %87
  %88 = load i32, ptr %kx, align 4, !tbaa !8
  %add99 = add nsw i32 %88, %mul98
  store i32 %add99, ptr %kx, align 4, !tbaa !8
  %89 = load i32, ptr %kx, align 4, !tbaa !8
  store i32 %89, ptr %jx, align 4, !tbaa !8
  %90 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %91 = load i32, ptr %90, align 4, !tbaa !8
  store i32 %91, ptr %j, align 4, !tbaa !8
  br label %for.cond100

for.cond100:                                      ; preds = %for.inc146, %if.else96
  %92 = load i32, ptr %j, align 4, !tbaa !8
  %cmp101 = icmp sge i32 %92, 1
  br i1 %cmp101, label %for.body102, label %for.end148

for.body102:                                      ; preds = %for.cond100
  %93 = load ptr, ptr %incx.addr, align 8, !tbaa !4
  %94 = load i32, ptr %93, align 4, !tbaa !8
  %95 = load i32, ptr %kx, align 4, !tbaa !8
  %sub103 = sub nsw i32 %95, %94
  store i32 %sub103, ptr %kx, align 4, !tbaa !8
  %96 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %97 = load i32, ptr %jx, align 4, !tbaa !8
  %idxprom104 = sext i32 %97 to i64
  %arrayidx105 = getelementptr inbounds double, ptr %96, i64 %idxprom104
  %98 = load double, ptr %arrayidx105, align 8, !tbaa !14
  %cmp106 = fcmp une double %98, 0.000000e+00
  br i1 %cmp106, label %if.then107, label %if.end144

if.then107:                                       ; preds = %for.body102
  %99 = load i32, ptr %kx, align 4, !tbaa !8
  store i32 %99, ptr %ix, align 4, !tbaa !8
  %100 = load i32, ptr %kplus1, align 4, !tbaa !8
  %101 = load i32, ptr %j, align 4, !tbaa !8
  %sub108 = sub nsw i32 %100, %101
  store i32 %sub108, ptr %l, align 4, !tbaa !8
  %102 = load i32, ptr %nounit, align 4, !tbaa !8
  %tobool109 = icmp ne i32 %102, 0
  br i1 %tobool109, label %if.then110, label %if.end118

if.then110:                                       ; preds = %if.then107
  %103 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %104 = load i32, ptr %kplus1, align 4, !tbaa !8
  %105 = load i32, ptr %j, align 4, !tbaa !8
  %106 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul111 = mul nsw i32 %105, %106
  %add112 = add nsw i32 %104, %mul111
  %idxprom113 = sext i32 %add112 to i64
  %arrayidx114 = getelementptr inbounds double, ptr %103, i64 %idxprom113
  %107 = load double, ptr %arrayidx114, align 8, !tbaa !14
  %108 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %109 = load i32, ptr %jx, align 4, !tbaa !8
  %idxprom115 = sext i32 %109 to i64
  %arrayidx116 = getelementptr inbounds double, ptr %108, i64 %idxprom115
  %110 = load double, ptr %arrayidx116, align 8, !tbaa !14
  %div117 = fdiv double %110, %107
  store double %div117, ptr %arrayidx116, align 8, !tbaa !14
  br label %if.end118

if.end118:                                        ; preds = %if.then110, %if.then107
  %111 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %112 = load i32, ptr %jx, align 4, !tbaa !8
  %idxprom119 = sext i32 %112 to i64
  %arrayidx120 = getelementptr inbounds double, ptr %111, i64 %idxprom119
  %113 = load double, ptr %arrayidx120, align 8, !tbaa !14
  store double %113, ptr %temp, align 8, !tbaa !14
  store i32 1, ptr %i__2, align 4, !tbaa !8
  %114 = load i32, ptr %j, align 4, !tbaa !8
  %115 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %116 = load i32, ptr %115, align 4, !tbaa !8
  %sub121 = sub nsw i32 %114, %116
  store i32 %sub121, ptr %i__3, align 4, !tbaa !8
  %117 = load i32, ptr %i__2, align 4, !tbaa !8
  %118 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp122 = icmp sge i32 %117, %118
  br i1 %cmp122, label %cond.true123, label %cond.false124

cond.true123:                                     ; preds = %if.end118
  %119 = load i32, ptr %i__2, align 4, !tbaa !8
  br label %cond.end125

cond.false124:                                    ; preds = %if.end118
  %120 = load i32, ptr %i__3, align 4, !tbaa !8
  br label %cond.end125

cond.end125:                                      ; preds = %cond.false124, %cond.true123
  %cond126 = phi i32 [ %119, %cond.true123 ], [ %120, %cond.false124 ]
  store i32 %cond126, ptr %i__1, align 4, !tbaa !8
  %121 = load i32, ptr %j, align 4, !tbaa !8
  %sub127 = sub nsw i32 %121, 1
  store i32 %sub127, ptr %i__, align 4, !tbaa !8
  br label %for.cond128

for.cond128:                                      ; preds = %for.inc141, %cond.end125
  %122 = load i32, ptr %i__, align 4, !tbaa !8
  %123 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp129 = icmp sge i32 %122, %123
  br i1 %cmp129, label %for.body130, label %for.end143

for.body130:                                      ; preds = %for.cond128
  %124 = load double, ptr %temp, align 8, !tbaa !14
  %125 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %126 = load i32, ptr %l, align 4, !tbaa !8
  %127 = load i32, ptr %i__, align 4, !tbaa !8
  %add131 = add nsw i32 %126, %127
  %128 = load i32, ptr %j, align 4, !tbaa !8
  %129 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul132 = mul nsw i32 %128, %129
  %add133 = add nsw i32 %add131, %mul132
  %idxprom134 = sext i32 %add133 to i64
  %arrayidx135 = getelementptr inbounds double, ptr %125, i64 %idxprom134
  %130 = load double, ptr %arrayidx135, align 8, !tbaa !14
  %131 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %132 = load i32, ptr %ix, align 4, !tbaa !8
  %idxprom137 = sext i32 %132 to i64
  %arrayidx138 = getelementptr inbounds double, ptr %131, i64 %idxprom137
  %133 = load double, ptr %arrayidx138, align 8, !tbaa !14
  %neg139 = fneg double %124
  %134 = call double @llvm.fmuladd.f64(double %neg139, double %130, double %133)
  store double %134, ptr %arrayidx138, align 8, !tbaa !14
  %135 = load ptr, ptr %incx.addr, align 8, !tbaa !4
  %136 = load i32, ptr %135, align 4, !tbaa !8
  %137 = load i32, ptr %ix, align 4, !tbaa !8
  %sub140 = sub nsw i32 %137, %136
  store i32 %sub140, ptr %ix, align 4, !tbaa !8
  br label %for.inc141

for.inc141:                                       ; preds = %for.body130
  %138 = load i32, ptr %i__, align 4, !tbaa !8
  %dec142 = add nsw i32 %138, -1
  store i32 %dec142, ptr %i__, align 4, !tbaa !8
  br label %for.cond128

for.end143:                                       ; preds = %for.cond128
  br label %if.end144

if.end144:                                        ; preds = %for.end143, %for.body102
  %139 = load ptr, ptr %incx.addr, align 8, !tbaa !4
  %140 = load i32, ptr %139, align 4, !tbaa !8
  %141 = load i32, ptr %jx, align 4, !tbaa !8
  %sub145 = sub nsw i32 %141, %140
  store i32 %sub145, ptr %jx, align 4, !tbaa !8
  br label %for.inc146

for.inc146:                                       ; preds = %if.end144
  %142 = load i32, ptr %j, align 4, !tbaa !8
  %dec147 = add nsw i32 %142, -1
  store i32 %dec147, ptr %j, align 4, !tbaa !8
  br label %for.cond100

for.end148:                                       ; preds = %for.cond100
  br label %if.end149

if.end149:                                        ; preds = %for.end148, %for.end95
  br label %if.end249

if.else150:                                       ; preds = %if.then56
  %143 = load ptr, ptr %incx.addr, align 8, !tbaa !4
  %144 = load i32, ptr %143, align 4, !tbaa !8
  %cmp151 = icmp eq i32 %144, 1
  br i1 %cmp151, label %if.then152, label %if.else198

if.then152:                                       ; preds = %if.else150
  %145 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %146 = load i32, ptr %145, align 4, !tbaa !8
  store i32 %146, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %j, align 4, !tbaa !8
  br label %for.cond153

for.cond153:                                      ; preds = %for.inc195, %if.then152
  %147 = load i32, ptr %j, align 4, !tbaa !8
  %148 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp154 = icmp sle i32 %147, %148
  br i1 %cmp154, label %for.body155, label %for.end197

for.body155:                                      ; preds = %for.cond153
  %149 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %150 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom156 = sext i32 %150 to i64
  %arrayidx157 = getelementptr inbounds double, ptr %149, i64 %idxprom156
  %151 = load double, ptr %arrayidx157, align 8, !tbaa !14
  %cmp158 = fcmp une double %151, 0.000000e+00
  br i1 %cmp158, label %if.then159, label %if.end194

if.then159:                                       ; preds = %for.body155
  %152 = load i32, ptr %j, align 4, !tbaa !8
  %sub160 = sub nsw i32 1, %152
  store i32 %sub160, ptr %l, align 4, !tbaa !8
  %153 = load i32, ptr %nounit, align 4, !tbaa !8
  %tobool161 = icmp ne i32 %153, 0
  br i1 %tobool161, label %if.then162, label %if.end170

if.then162:                                       ; preds = %if.then159
  %154 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %155 = load i32, ptr %j, align 4, !tbaa !8
  %156 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul163 = mul nsw i32 %155, %156
  %add164 = add nsw i32 %mul163, 1
  %idxprom165 = sext i32 %add164 to i64
  %arrayidx166 = getelementptr inbounds double, ptr %154, i64 %idxprom165
  %157 = load double, ptr %arrayidx166, align 8, !tbaa !14
  %158 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %159 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom167 = sext i32 %159 to i64
  %arrayidx168 = getelementptr inbounds double, ptr %158, i64 %idxprom167
  %160 = load double, ptr %arrayidx168, align 8, !tbaa !14
  %div169 = fdiv double %160, %157
  store double %div169, ptr %arrayidx168, align 8, !tbaa !14
  br label %if.end170

if.end170:                                        ; preds = %if.then162, %if.then159
  %161 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %162 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom171 = sext i32 %162 to i64
  %arrayidx172 = getelementptr inbounds double, ptr %161, i64 %idxprom171
  %163 = load double, ptr %arrayidx172, align 8, !tbaa !14
  store double %163, ptr %temp, align 8, !tbaa !14
  %164 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %165 = load i32, ptr %164, align 4, !tbaa !8
  store i32 %165, ptr %i__3, align 4, !tbaa !8
  %166 = load i32, ptr %j, align 4, !tbaa !8
  %167 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %168 = load i32, ptr %167, align 4, !tbaa !8
  %add173 = add nsw i32 %166, %168
  store i32 %add173, ptr %i__4, align 4, !tbaa !8
  %169 = load i32, ptr %i__3, align 4, !tbaa !8
  %170 = load i32, ptr %i__4, align 4, !tbaa !8
  %cmp174 = icmp sle i32 %169, %170
  br i1 %cmp174, label %cond.true175, label %cond.false176

cond.true175:                                     ; preds = %if.end170
  %171 = load i32, ptr %i__3, align 4, !tbaa !8
  br label %cond.end177

cond.false176:                                    ; preds = %if.end170
  %172 = load i32, ptr %i__4, align 4, !tbaa !8
  br label %cond.end177

cond.end177:                                      ; preds = %cond.false176, %cond.true175
  %cond178 = phi i32 [ %171, %cond.true175 ], [ %172, %cond.false176 ]
  store i32 %cond178, ptr %i__2, align 4, !tbaa !8
  %173 = load i32, ptr %j, align 4, !tbaa !8
  %add179 = add nsw i32 %173, 1
  store i32 %add179, ptr %i__, align 4, !tbaa !8
  br label %for.cond180

for.cond180:                                      ; preds = %for.inc192, %cond.end177
  %174 = load i32, ptr %i__, align 4, !tbaa !8
  %175 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp181 = icmp sle i32 %174, %175
  br i1 %cmp181, label %for.body182, label %for.end193

for.body182:                                      ; preds = %for.cond180
  %176 = load double, ptr %temp, align 8, !tbaa !14
  %177 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %178 = load i32, ptr %l, align 4, !tbaa !8
  %179 = load i32, ptr %i__, align 4, !tbaa !8
  %add183 = add nsw i32 %178, %179
  %180 = load i32, ptr %j, align 4, !tbaa !8
  %181 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul184 = mul nsw i32 %180, %181
  %add185 = add nsw i32 %add183, %mul184
  %idxprom186 = sext i32 %add185 to i64
  %arrayidx187 = getelementptr inbounds double, ptr %177, i64 %idxprom186
  %182 = load double, ptr %arrayidx187, align 8, !tbaa !14
  %183 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %184 = load i32, ptr %i__, align 4, !tbaa !8
  %idxprom189 = sext i32 %184 to i64
  %arrayidx190 = getelementptr inbounds double, ptr %183, i64 %idxprom189
  %185 = load double, ptr %arrayidx190, align 8, !tbaa !14
  %neg191 = fneg double %176
  %186 = call double @llvm.fmuladd.f64(double %neg191, double %182, double %185)
  store double %186, ptr %arrayidx190, align 8, !tbaa !14
  br label %for.inc192

for.inc192:                                       ; preds = %for.body182
  %187 = load i32, ptr %i__, align 4, !tbaa !8
  %inc = add nsw i32 %187, 1
  store i32 %inc, ptr %i__, align 4, !tbaa !8
  br label %for.cond180

for.end193:                                       ; preds = %for.cond180
  br label %if.end194

if.end194:                                        ; preds = %for.end193, %for.body155
  br label %for.inc195

for.inc195:                                       ; preds = %if.end194
  %188 = load i32, ptr %j, align 4, !tbaa !8
  %inc196 = add nsw i32 %188, 1
  store i32 %inc196, ptr %j, align 4, !tbaa !8
  br label %for.cond153

for.end197:                                       ; preds = %for.cond153
  br label %if.end248

if.else198:                                       ; preds = %if.else150
  %189 = load i32, ptr %kx, align 4, !tbaa !8
  store i32 %189, ptr %jx, align 4, !tbaa !8
  %190 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %191 = load i32, ptr %190, align 4, !tbaa !8
  store i32 %191, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %j, align 4, !tbaa !8
  br label %for.cond199

for.cond199:                                      ; preds = %for.inc245, %if.else198
  %192 = load i32, ptr %j, align 4, !tbaa !8
  %193 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp200 = icmp sle i32 %192, %193
  br i1 %cmp200, label %for.body201, label %for.end247

for.body201:                                      ; preds = %for.cond199
  %194 = load ptr, ptr %incx.addr, align 8, !tbaa !4
  %195 = load i32, ptr %194, align 4, !tbaa !8
  %196 = load i32, ptr %kx, align 4, !tbaa !8
  %add202 = add nsw i32 %196, %195
  store i32 %add202, ptr %kx, align 4, !tbaa !8
  %197 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %198 = load i32, ptr %jx, align 4, !tbaa !8
  %idxprom203 = sext i32 %198 to i64
  %arrayidx204 = getelementptr inbounds double, ptr %197, i64 %idxprom203
  %199 = load double, ptr %arrayidx204, align 8, !tbaa !14
  %cmp205 = fcmp une double %199, 0.000000e+00
  br i1 %cmp205, label %if.then206, label %if.end243

if.then206:                                       ; preds = %for.body201
  %200 = load i32, ptr %kx, align 4, !tbaa !8
  store i32 %200, ptr %ix, align 4, !tbaa !8
  %201 = load i32, ptr %j, align 4, !tbaa !8
  %sub207 = sub nsw i32 1, %201
  store i32 %sub207, ptr %l, align 4, !tbaa !8
  %202 = load i32, ptr %nounit, align 4, !tbaa !8
  %tobool208 = icmp ne i32 %202, 0
  br i1 %tobool208, label %if.then209, label %if.end217

if.then209:                                       ; preds = %if.then206
  %203 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %204 = load i32, ptr %j, align 4, !tbaa !8
  %205 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul210 = mul nsw i32 %204, %205
  %add211 = add nsw i32 %mul210, 1
  %idxprom212 = sext i32 %add211 to i64
  %arrayidx213 = getelementptr inbounds double, ptr %203, i64 %idxprom212
  %206 = load double, ptr %arrayidx213, align 8, !tbaa !14
  %207 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %208 = load i32, ptr %jx, align 4, !tbaa !8
  %idxprom214 = sext i32 %208 to i64
  %arrayidx215 = getelementptr inbounds double, ptr %207, i64 %idxprom214
  %209 = load double, ptr %arrayidx215, align 8, !tbaa !14
  %div216 = fdiv double %209, %206
  store double %div216, ptr %arrayidx215, align 8, !tbaa !14
  br label %if.end217

if.end217:                                        ; preds = %if.then209, %if.then206
  %210 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %211 = load i32, ptr %jx, align 4, !tbaa !8
  %idxprom218 = sext i32 %211 to i64
  %arrayidx219 = getelementptr inbounds double, ptr %210, i64 %idxprom218
  %212 = load double, ptr %arrayidx219, align 8, !tbaa !14
  store double %212, ptr %temp, align 8, !tbaa !14
  %213 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %214 = load i32, ptr %213, align 4, !tbaa !8
  store i32 %214, ptr %i__3, align 4, !tbaa !8
  %215 = load i32, ptr %j, align 4, !tbaa !8
  %216 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %217 = load i32, ptr %216, align 4, !tbaa !8
  %add220 = add nsw i32 %215, %217
  store i32 %add220, ptr %i__4, align 4, !tbaa !8
  %218 = load i32, ptr %i__3, align 4, !tbaa !8
  %219 = load i32, ptr %i__4, align 4, !tbaa !8
  %cmp221 = icmp sle i32 %218, %219
  br i1 %cmp221, label %cond.true222, label %cond.false223

cond.true222:                                     ; preds = %if.end217
  %220 = load i32, ptr %i__3, align 4, !tbaa !8
  br label %cond.end224

cond.false223:                                    ; preds = %if.end217
  %221 = load i32, ptr %i__4, align 4, !tbaa !8
  br label %cond.end224

cond.end224:                                      ; preds = %cond.false223, %cond.true222
  %cond225 = phi i32 [ %220, %cond.true222 ], [ %221, %cond.false223 ]
  store i32 %cond225, ptr %i__2, align 4, !tbaa !8
  %222 = load i32, ptr %j, align 4, !tbaa !8
  %add226 = add nsw i32 %222, 1
  store i32 %add226, ptr %i__, align 4, !tbaa !8
  br label %for.cond227

for.cond227:                                      ; preds = %for.inc240, %cond.end224
  %223 = load i32, ptr %i__, align 4, !tbaa !8
  %224 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp228 = icmp sle i32 %223, %224
  br i1 %cmp228, label %for.body229, label %for.end242

for.body229:                                      ; preds = %for.cond227
  %225 = load double, ptr %temp, align 8, !tbaa !14
  %226 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %227 = load i32, ptr %l, align 4, !tbaa !8
  %228 = load i32, ptr %i__, align 4, !tbaa !8
  %add230 = add nsw i32 %227, %228
  %229 = load i32, ptr %j, align 4, !tbaa !8
  %230 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul231 = mul nsw i32 %229, %230
  %add232 = add nsw i32 %add230, %mul231
  %idxprom233 = sext i32 %add232 to i64
  %arrayidx234 = getelementptr inbounds double, ptr %226, i64 %idxprom233
  %231 = load double, ptr %arrayidx234, align 8, !tbaa !14
  %232 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %233 = load i32, ptr %ix, align 4, !tbaa !8
  %idxprom236 = sext i32 %233 to i64
  %arrayidx237 = getelementptr inbounds double, ptr %232, i64 %idxprom236
  %234 = load double, ptr %arrayidx237, align 8, !tbaa !14
  %neg238 = fneg double %225
  %235 = call double @llvm.fmuladd.f64(double %neg238, double %231, double %234)
  store double %235, ptr %arrayidx237, align 8, !tbaa !14
  %236 = load ptr, ptr %incx.addr, align 8, !tbaa !4
  %237 = load i32, ptr %236, align 4, !tbaa !8
  %238 = load i32, ptr %ix, align 4, !tbaa !8
  %add239 = add nsw i32 %238, %237
  store i32 %add239, ptr %ix, align 4, !tbaa !8
  br label %for.inc240

for.inc240:                                       ; preds = %for.body229
  %239 = load i32, ptr %i__, align 4, !tbaa !8
  %inc241 = add nsw i32 %239, 1
  store i32 %inc241, ptr %i__, align 4, !tbaa !8
  br label %for.cond227

for.end242:                                       ; preds = %for.cond227
  br label %if.end243

if.end243:                                        ; preds = %for.end242, %for.body201
  %240 = load ptr, ptr %incx.addr, align 8, !tbaa !4
  %241 = load i32, ptr %240, align 4, !tbaa !8
  %242 = load i32, ptr %jx, align 4, !tbaa !8
  %add244 = add nsw i32 %242, %241
  store i32 %add244, ptr %jx, align 4, !tbaa !8
  br label %for.inc245

for.inc245:                                       ; preds = %if.end243
  %243 = load i32, ptr %j, align 4, !tbaa !8
  %inc246 = add nsw i32 %243, 1
  store i32 %inc246, ptr %j, align 4, !tbaa !8
  br label %for.cond199

for.end247:                                       ; preds = %for.cond199
  br label %if.end248

if.end248:                                        ; preds = %for.end247, %for.end197
  br label %if.end249

if.end249:                                        ; preds = %if.end248, %if.end149
  br label %if.end445

if.else250:                                       ; preds = %if.end53
  %244 = load ptr, ptr %uplo.addr, align 8, !tbaa !4
  %call251 = call i32 @lsame_(ptr noundef %244, ptr noundef @.str, i32 noundef 1, i32 noundef 1)
  %tobool252 = icmp ne i32 %call251, 0
  br i1 %tobool252, label %if.then253, label %if.else347

if.then253:                                       ; preds = %if.else250
  %245 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %246 = load i32, ptr %245, align 4, !tbaa !8
  %add254 = add nsw i32 %246, 1
  store i32 %add254, ptr %kplus1, align 4, !tbaa !8
  %247 = load ptr, ptr %incx.addr, align 8, !tbaa !4
  %248 = load i32, ptr %247, align 4, !tbaa !8
  %cmp255 = icmp eq i32 %248, 1
  br i1 %cmp255, label %if.then256, label %if.else298

if.then256:                                       ; preds = %if.then253
  %249 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %250 = load i32, ptr %249, align 4, !tbaa !8
  store i32 %250, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %j, align 4, !tbaa !8
  br label %for.cond257

for.cond257:                                      ; preds = %for.inc295, %if.then256
  %251 = load i32, ptr %j, align 4, !tbaa !8
  %252 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp258 = icmp sle i32 %251, %252
  br i1 %cmp258, label %for.body259, label %for.end297

for.body259:                                      ; preds = %for.cond257
  %253 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %254 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom260 = sext i32 %254 to i64
  %arrayidx261 = getelementptr inbounds double, ptr %253, i64 %idxprom260
  %255 = load double, ptr %arrayidx261, align 8, !tbaa !14
  store double %255, ptr %temp, align 8, !tbaa !14
  %256 = load i32, ptr %kplus1, align 4, !tbaa !8
  %257 = load i32, ptr %j, align 4, !tbaa !8
  %sub262 = sub nsw i32 %256, %257
  store i32 %sub262, ptr %l, align 4, !tbaa !8
  store i32 1, ptr %i__2, align 4, !tbaa !8
  %258 = load i32, ptr %j, align 4, !tbaa !8
  %259 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %260 = load i32, ptr %259, align 4, !tbaa !8
  %sub263 = sub nsw i32 %258, %260
  store i32 %sub263, ptr %i__3, align 4, !tbaa !8
  %261 = load i32, ptr %j, align 4, !tbaa !8
  %sub264 = sub nsw i32 %261, 1
  store i32 %sub264, ptr %i__4, align 4, !tbaa !8
  %262 = load i32, ptr %i__2, align 4, !tbaa !8
  %263 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp265 = icmp sge i32 %262, %263
  br i1 %cmp265, label %cond.true266, label %cond.false267

cond.true266:                                     ; preds = %for.body259
  %264 = load i32, ptr %i__2, align 4, !tbaa !8
  br label %cond.end268

cond.false267:                                    ; preds = %for.body259
  %265 = load i32, ptr %i__3, align 4, !tbaa !8
  br label %cond.end268

cond.end268:                                      ; preds = %cond.false267, %cond.true266
  %cond269 = phi i32 [ %264, %cond.true266 ], [ %265, %cond.false267 ]
  store i32 %cond269, ptr %i__, align 4, !tbaa !8
  br label %for.cond270

for.cond270:                                      ; preds = %for.inc282, %cond.end268
  %266 = load i32, ptr %i__, align 4, !tbaa !8
  %267 = load i32, ptr %i__4, align 4, !tbaa !8
  %cmp271 = icmp sle i32 %266, %267
  br i1 %cmp271, label %for.body272, label %for.end284

for.body272:                                      ; preds = %for.cond270
  %268 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %269 = load i32, ptr %l, align 4, !tbaa !8
  %270 = load i32, ptr %i__, align 4, !tbaa !8
  %add273 = add nsw i32 %269, %270
  %271 = load i32, ptr %j, align 4, !tbaa !8
  %272 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul274 = mul nsw i32 %271, %272
  %add275 = add nsw i32 %add273, %mul274
  %idxprom276 = sext i32 %add275 to i64
  %arrayidx277 = getelementptr inbounds double, ptr %268, i64 %idxprom276
  %273 = load double, ptr %arrayidx277, align 8, !tbaa !14
  %274 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %275 = load i32, ptr %i__, align 4, !tbaa !8
  %idxprom278 = sext i32 %275 to i64
  %arrayidx279 = getelementptr inbounds double, ptr %274, i64 %idxprom278
  %276 = load double, ptr %arrayidx279, align 8, !tbaa !14
  %277 = load double, ptr %temp, align 8, !tbaa !14
  %neg281 = fneg double %273
  %278 = call double @llvm.fmuladd.f64(double %neg281, double %276, double %277)
  store double %278, ptr %temp, align 8, !tbaa !14
  br label %for.inc282

for.inc282:                                       ; preds = %for.body272
  %279 = load i32, ptr %i__, align 4, !tbaa !8
  %inc283 = add nsw i32 %279, 1
  store i32 %inc283, ptr %i__, align 4, !tbaa !8
  br label %for.cond270

for.end284:                                       ; preds = %for.cond270
  %280 = load i32, ptr %nounit, align 4, !tbaa !8
  %tobool285 = icmp ne i32 %280, 0
  br i1 %tobool285, label %if.then286, label %if.end292

if.then286:                                       ; preds = %for.end284
  %281 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %282 = load i32, ptr %kplus1, align 4, !tbaa !8
  %283 = load i32, ptr %j, align 4, !tbaa !8
  %284 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul287 = mul nsw i32 %283, %284
  %add288 = add nsw i32 %282, %mul287
  %idxprom289 = sext i32 %add288 to i64
  %arrayidx290 = getelementptr inbounds double, ptr %281, i64 %idxprom289
  %285 = load double, ptr %arrayidx290, align 8, !tbaa !14
  %286 = load double, ptr %temp, align 8, !tbaa !14
  %div291 = fdiv double %286, %285
  store double %div291, ptr %temp, align 8, !tbaa !14
  br label %if.end292

if.end292:                                        ; preds = %if.then286, %for.end284
  %287 = load double, ptr %temp, align 8, !tbaa !14
  %288 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %289 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom293 = sext i32 %289 to i64
  %arrayidx294 = getelementptr inbounds double, ptr %288, i64 %idxprom293
  store double %287, ptr %arrayidx294, align 8, !tbaa !14
  br label %for.inc295

for.inc295:                                       ; preds = %if.end292
  %290 = load i32, ptr %j, align 4, !tbaa !8
  %inc296 = add nsw i32 %290, 1
  store i32 %inc296, ptr %j, align 4, !tbaa !8
  br label %for.cond257

for.end297:                                       ; preds = %for.cond257
  br label %if.end346

if.else298:                                       ; preds = %if.then253
  %291 = load i32, ptr %kx, align 4, !tbaa !8
  store i32 %291, ptr %jx, align 4, !tbaa !8
  %292 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %293 = load i32, ptr %292, align 4, !tbaa !8
  store i32 %293, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %j, align 4, !tbaa !8
  br label %for.cond299

for.cond299:                                      ; preds = %for.inc343, %if.else298
  %294 = load i32, ptr %j, align 4, !tbaa !8
  %295 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp300 = icmp sle i32 %294, %295
  br i1 %cmp300, label %for.body301, label %for.end345

for.body301:                                      ; preds = %for.cond299
  %296 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %297 = load i32, ptr %jx, align 4, !tbaa !8
  %idxprom302 = sext i32 %297 to i64
  %arrayidx303 = getelementptr inbounds double, ptr %296, i64 %idxprom302
  %298 = load double, ptr %arrayidx303, align 8, !tbaa !14
  store double %298, ptr %temp, align 8, !tbaa !14
  %299 = load i32, ptr %kx, align 4, !tbaa !8
  store i32 %299, ptr %ix, align 4, !tbaa !8
  %300 = load i32, ptr %kplus1, align 4, !tbaa !8
  %301 = load i32, ptr %j, align 4, !tbaa !8
  %sub304 = sub nsw i32 %300, %301
  store i32 %sub304, ptr %l, align 4, !tbaa !8
  store i32 1, ptr %i__4, align 4, !tbaa !8
  %302 = load i32, ptr %j, align 4, !tbaa !8
  %303 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %304 = load i32, ptr %303, align 4, !tbaa !8
  %sub305 = sub nsw i32 %302, %304
  store i32 %sub305, ptr %i__2, align 4, !tbaa !8
  %305 = load i32, ptr %j, align 4, !tbaa !8
  %sub306 = sub nsw i32 %305, 1
  store i32 %sub306, ptr %i__3, align 4, !tbaa !8
  %306 = load i32, ptr %i__4, align 4, !tbaa !8
  %307 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp307 = icmp sge i32 %306, %307
  br i1 %cmp307, label %cond.true308, label %cond.false309

cond.true308:                                     ; preds = %for.body301
  %308 = load i32, ptr %i__4, align 4, !tbaa !8
  br label %cond.end310

cond.false309:                                    ; preds = %for.body301
  %309 = load i32, ptr %i__2, align 4, !tbaa !8
  br label %cond.end310

cond.end310:                                      ; preds = %cond.false309, %cond.true308
  %cond311 = phi i32 [ %308, %cond.true308 ], [ %309, %cond.false309 ]
  store i32 %cond311, ptr %i__, align 4, !tbaa !8
  br label %for.cond312

for.cond312:                                      ; preds = %for.inc325, %cond.end310
  %310 = load i32, ptr %i__, align 4, !tbaa !8
  %311 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp313 = icmp sle i32 %310, %311
  br i1 %cmp313, label %for.body314, label %for.end327

for.body314:                                      ; preds = %for.cond312
  %312 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %313 = load i32, ptr %l, align 4, !tbaa !8
  %314 = load i32, ptr %i__, align 4, !tbaa !8
  %add315 = add nsw i32 %313, %314
  %315 = load i32, ptr %j, align 4, !tbaa !8
  %316 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul316 = mul nsw i32 %315, %316
  %add317 = add nsw i32 %add315, %mul316
  %idxprom318 = sext i32 %add317 to i64
  %arrayidx319 = getelementptr inbounds double, ptr %312, i64 %idxprom318
  %317 = load double, ptr %arrayidx319, align 8, !tbaa !14
  %318 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %319 = load i32, ptr %ix, align 4, !tbaa !8
  %idxprom320 = sext i32 %319 to i64
  %arrayidx321 = getelementptr inbounds double, ptr %318, i64 %idxprom320
  %320 = load double, ptr %arrayidx321, align 8, !tbaa !14
  %321 = load double, ptr %temp, align 8, !tbaa !14
  %neg323 = fneg double %317
  %322 = call double @llvm.fmuladd.f64(double %neg323, double %320, double %321)
  store double %322, ptr %temp, align 8, !tbaa !14
  %323 = load ptr, ptr %incx.addr, align 8, !tbaa !4
  %324 = load i32, ptr %323, align 4, !tbaa !8
  %325 = load i32, ptr %ix, align 4, !tbaa !8
  %add324 = add nsw i32 %325, %324
  store i32 %add324, ptr %ix, align 4, !tbaa !8
  br label %for.inc325

for.inc325:                                       ; preds = %for.body314
  %326 = load i32, ptr %i__, align 4, !tbaa !8
  %inc326 = add nsw i32 %326, 1
  store i32 %inc326, ptr %i__, align 4, !tbaa !8
  br label %for.cond312

for.end327:                                       ; preds = %for.cond312
  %327 = load i32, ptr %nounit, align 4, !tbaa !8
  %tobool328 = icmp ne i32 %327, 0
  br i1 %tobool328, label %if.then329, label %if.end335

if.then329:                                       ; preds = %for.end327
  %328 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %329 = load i32, ptr %kplus1, align 4, !tbaa !8
  %330 = load i32, ptr %j, align 4, !tbaa !8
  %331 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul330 = mul nsw i32 %330, %331
  %add331 = add nsw i32 %329, %mul330
  %idxprom332 = sext i32 %add331 to i64
  %arrayidx333 = getelementptr inbounds double, ptr %328, i64 %idxprom332
  %332 = load double, ptr %arrayidx333, align 8, !tbaa !14
  %333 = load double, ptr %temp, align 8, !tbaa !14
  %div334 = fdiv double %333, %332
  store double %div334, ptr %temp, align 8, !tbaa !14
  br label %if.end335

if.end335:                                        ; preds = %if.then329, %for.end327
  %334 = load double, ptr %temp, align 8, !tbaa !14
  %335 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %336 = load i32, ptr %jx, align 4, !tbaa !8
  %idxprom336 = sext i32 %336 to i64
  %arrayidx337 = getelementptr inbounds double, ptr %335, i64 %idxprom336
  store double %334, ptr %arrayidx337, align 8, !tbaa !14
  %337 = load ptr, ptr %incx.addr, align 8, !tbaa !4
  %338 = load i32, ptr %337, align 4, !tbaa !8
  %339 = load i32, ptr %jx, align 4, !tbaa !8
  %add338 = add nsw i32 %339, %338
  store i32 %add338, ptr %jx, align 4, !tbaa !8
  %340 = load i32, ptr %j, align 4, !tbaa !8
  %341 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %342 = load i32, ptr %341, align 4, !tbaa !8
  %cmp339 = icmp sgt i32 %340, %342
  br i1 %cmp339, label %if.then340, label %if.end342

if.then340:                                       ; preds = %if.end335
  %343 = load ptr, ptr %incx.addr, align 8, !tbaa !4
  %344 = load i32, ptr %343, align 4, !tbaa !8
  %345 = load i32, ptr %kx, align 4, !tbaa !8
  %add341 = add nsw i32 %345, %344
  store i32 %add341, ptr %kx, align 4, !tbaa !8
  br label %if.end342

if.end342:                                        ; preds = %if.then340, %if.end335
  br label %for.inc343

for.inc343:                                       ; preds = %if.end342
  %346 = load i32, ptr %j, align 4, !tbaa !8
  %inc344 = add nsw i32 %346, 1
  store i32 %inc344, ptr %j, align 4, !tbaa !8
  br label %for.cond299

for.end345:                                       ; preds = %for.cond299
  br label %if.end346

if.end346:                                        ; preds = %for.end345, %for.end297
  br label %if.end444

if.else347:                                       ; preds = %if.else250
  %347 = load ptr, ptr %incx.addr, align 8, !tbaa !4
  %348 = load i32, ptr %347, align 4, !tbaa !8
  %cmp348 = icmp eq i32 %348, 1
  br i1 %cmp348, label %if.then349, label %if.else391

if.then349:                                       ; preds = %if.else347
  %349 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %350 = load i32, ptr %349, align 4, !tbaa !8
  store i32 %350, ptr %j, align 4, !tbaa !8
  br label %for.cond350

for.cond350:                                      ; preds = %for.inc388, %if.then349
  %351 = load i32, ptr %j, align 4, !tbaa !8
  %cmp351 = icmp sge i32 %351, 1
  br i1 %cmp351, label %for.body352, label %for.end390

for.body352:                                      ; preds = %for.cond350
  %352 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %353 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom353 = sext i32 %353 to i64
  %arrayidx354 = getelementptr inbounds double, ptr %352, i64 %idxprom353
  %354 = load double, ptr %arrayidx354, align 8, !tbaa !14
  store double %354, ptr %temp, align 8, !tbaa !14
  %355 = load i32, ptr %j, align 4, !tbaa !8
  %sub355 = sub nsw i32 1, %355
  store i32 %sub355, ptr %l, align 4, !tbaa !8
  %356 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %357 = load i32, ptr %356, align 4, !tbaa !8
  store i32 %357, ptr %i__1, align 4, !tbaa !8
  %358 = load i32, ptr %j, align 4, !tbaa !8
  %359 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %360 = load i32, ptr %359, align 4, !tbaa !8
  %add356 = add nsw i32 %358, %360
  store i32 %add356, ptr %i__3, align 4, !tbaa !8
  %361 = load i32, ptr %j, align 4, !tbaa !8
  %add357 = add nsw i32 %361, 1
  store i32 %add357, ptr %i__4, align 4, !tbaa !8
  %362 = load i32, ptr %i__1, align 4, !tbaa !8
  %363 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp358 = icmp sle i32 %362, %363
  br i1 %cmp358, label %cond.true359, label %cond.false360

cond.true359:                                     ; preds = %for.body352
  %364 = load i32, ptr %i__1, align 4, !tbaa !8
  br label %cond.end361

cond.false360:                                    ; preds = %for.body352
  %365 = load i32, ptr %i__3, align 4, !tbaa !8
  br label %cond.end361

cond.end361:                                      ; preds = %cond.false360, %cond.true359
  %cond362 = phi i32 [ %364, %cond.true359 ], [ %365, %cond.false360 ]
  store i32 %cond362, ptr %i__, align 4, !tbaa !8
  br label %for.cond363

for.cond363:                                      ; preds = %for.inc375, %cond.end361
  %366 = load i32, ptr %i__, align 4, !tbaa !8
  %367 = load i32, ptr %i__4, align 4, !tbaa !8
  %cmp364 = icmp sge i32 %366, %367
  br i1 %cmp364, label %for.body365, label %for.end377

for.body365:                                      ; preds = %for.cond363
  %368 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %369 = load i32, ptr %l, align 4, !tbaa !8
  %370 = load i32, ptr %i__, align 4, !tbaa !8
  %add366 = add nsw i32 %369, %370
  %371 = load i32, ptr %j, align 4, !tbaa !8
  %372 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul367 = mul nsw i32 %371, %372
  %add368 = add nsw i32 %add366, %mul367
  %idxprom369 = sext i32 %add368 to i64
  %arrayidx370 = getelementptr inbounds double, ptr %368, i64 %idxprom369
  %373 = load double, ptr %arrayidx370, align 8, !tbaa !14
  %374 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %375 = load i32, ptr %i__, align 4, !tbaa !8
  %idxprom371 = sext i32 %375 to i64
  %arrayidx372 = getelementptr inbounds double, ptr %374, i64 %idxprom371
  %376 = load double, ptr %arrayidx372, align 8, !tbaa !14
  %377 = load double, ptr %temp, align 8, !tbaa !14
  %neg374 = fneg double %373
  %378 = call double @llvm.fmuladd.f64(double %neg374, double %376, double %377)
  store double %378, ptr %temp, align 8, !tbaa !14
  br label %for.inc375

for.inc375:                                       ; preds = %for.body365
  %379 = load i32, ptr %i__, align 4, !tbaa !8
  %dec376 = add nsw i32 %379, -1
  store i32 %dec376, ptr %i__, align 4, !tbaa !8
  br label %for.cond363

for.end377:                                       ; preds = %for.cond363
  %380 = load i32, ptr %nounit, align 4, !tbaa !8
  %tobool378 = icmp ne i32 %380, 0
  br i1 %tobool378, label %if.then379, label %if.end385

if.then379:                                       ; preds = %for.end377
  %381 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %382 = load i32, ptr %j, align 4, !tbaa !8
  %383 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul380 = mul nsw i32 %382, %383
  %add381 = add nsw i32 %mul380, 1
  %idxprom382 = sext i32 %add381 to i64
  %arrayidx383 = getelementptr inbounds double, ptr %381, i64 %idxprom382
  %384 = load double, ptr %arrayidx383, align 8, !tbaa !14
  %385 = load double, ptr %temp, align 8, !tbaa !14
  %div384 = fdiv double %385, %384
  store double %div384, ptr %temp, align 8, !tbaa !14
  br label %if.end385

if.end385:                                        ; preds = %if.then379, %for.end377
  %386 = load double, ptr %temp, align 8, !tbaa !14
  %387 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %388 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom386 = sext i32 %388 to i64
  %arrayidx387 = getelementptr inbounds double, ptr %387, i64 %idxprom386
  store double %386, ptr %arrayidx387, align 8, !tbaa !14
  br label %for.inc388

for.inc388:                                       ; preds = %if.end385
  %389 = load i32, ptr %j, align 4, !tbaa !8
  %dec389 = add nsw i32 %389, -1
  store i32 %dec389, ptr %j, align 4, !tbaa !8
  br label %for.cond350

for.end390:                                       ; preds = %for.cond350
  br label %if.end443

if.else391:                                       ; preds = %if.else347
  %390 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %391 = load i32, ptr %390, align 4, !tbaa !8
  %sub392 = sub nsw i32 %391, 1
  %392 = load ptr, ptr %incx.addr, align 8, !tbaa !4
  %393 = load i32, ptr %392, align 4, !tbaa !8
  %mul393 = mul nsw i32 %sub392, %393
  %394 = load i32, ptr %kx, align 4, !tbaa !8
  %add394 = add nsw i32 %394, %mul393
  store i32 %add394, ptr %kx, align 4, !tbaa !8
  %395 = load i32, ptr %kx, align 4, !tbaa !8
  store i32 %395, ptr %jx, align 4, !tbaa !8
  %396 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %397 = load i32, ptr %396, align 4, !tbaa !8
  store i32 %397, ptr %j, align 4, !tbaa !8
  br label %for.cond395

for.cond395:                                      ; preds = %for.inc440, %if.else391
  %398 = load i32, ptr %j, align 4, !tbaa !8
  %cmp396 = icmp sge i32 %398, 1
  br i1 %cmp396, label %for.body397, label %for.end442

for.body397:                                      ; preds = %for.cond395
  %399 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %400 = load i32, ptr %jx, align 4, !tbaa !8
  %idxprom398 = sext i32 %400 to i64
  %arrayidx399 = getelementptr inbounds double, ptr %399, i64 %idxprom398
  %401 = load double, ptr %arrayidx399, align 8, !tbaa !14
  store double %401, ptr %temp, align 8, !tbaa !14
  %402 = load i32, ptr %kx, align 4, !tbaa !8
  store i32 %402, ptr %ix, align 4, !tbaa !8
  %403 = load i32, ptr %j, align 4, !tbaa !8
  %sub400 = sub nsw i32 1, %403
  store i32 %sub400, ptr %l, align 4, !tbaa !8
  %404 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %405 = load i32, ptr %404, align 4, !tbaa !8
  store i32 %405, ptr %i__4, align 4, !tbaa !8
  %406 = load i32, ptr %j, align 4, !tbaa !8
  %407 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %408 = load i32, ptr %407, align 4, !tbaa !8
  %add401 = add nsw i32 %406, %408
  store i32 %add401, ptr %i__1, align 4, !tbaa !8
  %409 = load i32, ptr %j, align 4, !tbaa !8
  %add402 = add nsw i32 %409, 1
  store i32 %add402, ptr %i__3, align 4, !tbaa !8
  %410 = load i32, ptr %i__4, align 4, !tbaa !8
  %411 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp403 = icmp sle i32 %410, %411
  br i1 %cmp403, label %cond.true404, label %cond.false405

cond.true404:                                     ; preds = %for.body397
  %412 = load i32, ptr %i__4, align 4, !tbaa !8
  br label %cond.end406

cond.false405:                                    ; preds = %for.body397
  %413 = load i32, ptr %i__1, align 4, !tbaa !8
  br label %cond.end406

cond.end406:                                      ; preds = %cond.false405, %cond.true404
  %cond407 = phi i32 [ %412, %cond.true404 ], [ %413, %cond.false405 ]
  store i32 %cond407, ptr %i__, align 4, !tbaa !8
  br label %for.cond408

for.cond408:                                      ; preds = %for.inc421, %cond.end406
  %414 = load i32, ptr %i__, align 4, !tbaa !8
  %415 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp409 = icmp sge i32 %414, %415
  br i1 %cmp409, label %for.body410, label %for.end423

for.body410:                                      ; preds = %for.cond408
  %416 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %417 = load i32, ptr %l, align 4, !tbaa !8
  %418 = load i32, ptr %i__, align 4, !tbaa !8
  %add411 = add nsw i32 %417, %418
  %419 = load i32, ptr %j, align 4, !tbaa !8
  %420 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul412 = mul nsw i32 %419, %420
  %add413 = add nsw i32 %add411, %mul412
  %idxprom414 = sext i32 %add413 to i64
  %arrayidx415 = getelementptr inbounds double, ptr %416, i64 %idxprom414
  %421 = load double, ptr %arrayidx415, align 8, !tbaa !14
  %422 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %423 = load i32, ptr %ix, align 4, !tbaa !8
  %idxprom416 = sext i32 %423 to i64
  %arrayidx417 = getelementptr inbounds double, ptr %422, i64 %idxprom416
  %424 = load double, ptr %arrayidx417, align 8, !tbaa !14
  %425 = load double, ptr %temp, align 8, !tbaa !14
  %neg419 = fneg double %421
  %426 = call double @llvm.fmuladd.f64(double %neg419, double %424, double %425)
  store double %426, ptr %temp, align 8, !tbaa !14
  %427 = load ptr, ptr %incx.addr, align 8, !tbaa !4
  %428 = load i32, ptr %427, align 4, !tbaa !8
  %429 = load i32, ptr %ix, align 4, !tbaa !8
  %sub420 = sub nsw i32 %429, %428
  store i32 %sub420, ptr %ix, align 4, !tbaa !8
  br label %for.inc421

for.inc421:                                       ; preds = %for.body410
  %430 = load i32, ptr %i__, align 4, !tbaa !8
  %dec422 = add nsw i32 %430, -1
  store i32 %dec422, ptr %i__, align 4, !tbaa !8
  br label %for.cond408

for.end423:                                       ; preds = %for.cond408
  %431 = load i32, ptr %nounit, align 4, !tbaa !8
  %tobool424 = icmp ne i32 %431, 0
  br i1 %tobool424, label %if.then425, label %if.end431

if.then425:                                       ; preds = %for.end423
  %432 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %433 = load i32, ptr %j, align 4, !tbaa !8
  %434 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul426 = mul nsw i32 %433, %434
  %add427 = add nsw i32 %mul426, 1
  %idxprom428 = sext i32 %add427 to i64
  %arrayidx429 = getelementptr inbounds double, ptr %432, i64 %idxprom428
  %435 = load double, ptr %arrayidx429, align 8, !tbaa !14
  %436 = load double, ptr %temp, align 8, !tbaa !14
  %div430 = fdiv double %436, %435
  store double %div430, ptr %temp, align 8, !tbaa !14
  br label %if.end431

if.end431:                                        ; preds = %if.then425, %for.end423
  %437 = load double, ptr %temp, align 8, !tbaa !14
  %438 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %439 = load i32, ptr %jx, align 4, !tbaa !8
  %idxprom432 = sext i32 %439 to i64
  %arrayidx433 = getelementptr inbounds double, ptr %438, i64 %idxprom432
  store double %437, ptr %arrayidx433, align 8, !tbaa !14
  %440 = load ptr, ptr %incx.addr, align 8, !tbaa !4
  %441 = load i32, ptr %440, align 4, !tbaa !8
  %442 = load i32, ptr %jx, align 4, !tbaa !8
  %sub434 = sub nsw i32 %442, %441
  store i32 %sub434, ptr %jx, align 4, !tbaa !8
  %443 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %444 = load i32, ptr %443, align 4, !tbaa !8
  %445 = load i32, ptr %j, align 4, !tbaa !8
  %sub435 = sub nsw i32 %444, %445
  %446 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %447 = load i32, ptr %446, align 4, !tbaa !8
  %cmp436 = icmp sge i32 %sub435, %447
  br i1 %cmp436, label %if.then437, label %if.end439

if.then437:                                       ; preds = %if.end431
  %448 = load ptr, ptr %incx.addr, align 8, !tbaa !4
  %449 = load i32, ptr %448, align 4, !tbaa !8
  %450 = load i32, ptr %kx, align 4, !tbaa !8
  %sub438 = sub nsw i32 %450, %449
  store i32 %sub438, ptr %kx, align 4, !tbaa !8
  br label %if.end439

if.end439:                                        ; preds = %if.then437, %if.end431
  br label %for.inc440

for.inc440:                                       ; preds = %if.end439
  %451 = load i32, ptr %j, align 4, !tbaa !8
  %dec441 = add nsw i32 %451, -1
  store i32 %dec441, ptr %j, align 4, !tbaa !8
  br label %for.cond395

for.end442:                                       ; preds = %for.cond395
  br label %if.end443

if.end443:                                        ; preds = %for.end442, %for.end390
  br label %if.end444

if.end444:                                        ; preds = %if.end443, %if.end346
  br label %if.end445

if.end445:                                        ; preds = %if.end444, %if.end249
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end445, %if.then42, %if.then38
  call void @llvm.lifetime.end.p0(i64 4, ptr %nounit) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %kx) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %jx) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %ix) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %kplus1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %l) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %temp) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %info) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__4) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %a_offset) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %a_dim1) #4
  %452 = load i32, ptr %retval, align 4
  ret i32 %452
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: nounwind uwtable
define i32 @stbsv_(ptr noundef %uplo, ptr noundef %trans, ptr noundef %diag, ptr noundef %n, ptr noundef %k, ptr noundef %a, ptr noundef %lda, ptr noundef %x, ptr noundef %incx) #0 {
entry:
  %retval = alloca i32, align 4
  %uplo.addr = alloca ptr, align 8
  %trans.addr = alloca ptr, align 8
  %diag.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %k.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %lda.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %incx.addr = alloca ptr, align 8
  %a_dim1 = alloca i32, align 4
  %a_offset = alloca i32, align 4
  %i__1 = alloca i32, align 4
  %i__2 = alloca i32, align 4
  %i__3 = alloca i32, align 4
  %i__4 = alloca i32, align 4
  %info = alloca i32, align 4
  %temp = alloca float, align 4
  %i__ = alloca i32, align 4
  %j = alloca i32, align 4
  %l = alloca i32, align 4
  %kplus1 = alloca i32, align 4
  %ix = alloca i32, align 4
  %jx = alloca i32, align 4
  %kx = alloca i32, align 4
  %nounit = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %uplo, ptr %uplo.addr, align 8, !tbaa !4
  store ptr %trans, ptr %trans.addr, align 8, !tbaa !4
  store ptr %diag, ptr %diag.addr, align 8, !tbaa !4
  store ptr %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %k, ptr %k.addr, align 8, !tbaa !4
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store ptr %lda, ptr %lda.addr, align 8, !tbaa !4
  store ptr %x, ptr %x.addr, align 8, !tbaa !4
  store ptr %incx, ptr %incx.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %a_dim1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %a_offset) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__2) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__3) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__4) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %info) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %temp) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %l) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %kplus1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ix) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %jx) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %kx) #4
  store i32 0, ptr %kx, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %nounit) #4
  %0 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %1 = load i32, ptr %0, align 4, !tbaa !8
  store i32 %1, ptr %a_dim1, align 4, !tbaa !8
  %2 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul = mul nsw i32 %2, 1
  %add = add nsw i32 1, %mul
  store i32 %add, ptr %a_offset, align 4, !tbaa !8
  %3 = load i32, ptr %a_offset, align 4, !tbaa !8
  %4 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %idx.ext = sext i32 %3 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds float, ptr %4, i64 %idx.neg
  store ptr %add.ptr, ptr %a.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds float, ptr %5, i32 -1
  store ptr %incdec.ptr, ptr %x.addr, align 8, !tbaa !4
  store i32 0, ptr %info, align 4, !tbaa !8
  %6 = load ptr, ptr %uplo.addr, align 8, !tbaa !4
  %call = call i32 @lsame_(ptr noundef %6, ptr noundef @.str, i32 noundef 1, i32 noundef 1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %7 = load ptr, ptr %uplo.addr, align 8, !tbaa !4
  %call1 = call i32 @lsame_(ptr noundef %7, ptr noundef @.str.1, i32 noundef 1, i32 noundef 1)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store i32 1, ptr %info, align 4, !tbaa !8
  br label %if.end36

if.else:                                          ; preds = %land.lhs.true, %entry
  %8 = load ptr, ptr %trans.addr, align 8, !tbaa !4
  %call3 = call i32 @lsame_(ptr noundef %8, ptr noundef @.str.2, i32 noundef 1, i32 noundef 1)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.else12, label %land.lhs.true5

land.lhs.true5:                                   ; preds = %if.else
  %9 = load ptr, ptr %trans.addr, align 8, !tbaa !4
  %call6 = call i32 @lsame_(ptr noundef %9, ptr noundef @.str.3, i32 noundef 1, i32 noundef 1)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.else12, label %land.lhs.true8

land.lhs.true8:                                   ; preds = %land.lhs.true5
  %10 = load ptr, ptr %trans.addr, align 8, !tbaa !4
  %call9 = call i32 @lsame_(ptr noundef %10, ptr noundef @.str.4, i32 noundef 1, i32 noundef 1)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.else12, label %if.then11

if.then11:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %info, align 4, !tbaa !8
  br label %if.end35

if.else12:                                        ; preds = %land.lhs.true8, %land.lhs.true5, %if.else
  %11 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %call13 = call i32 @lsame_(ptr noundef %11, ptr noundef @.str, i32 noundef 1, i32 noundef 1)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.else19, label %land.lhs.true15

land.lhs.true15:                                  ; preds = %if.else12
  %12 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %call16 = call i32 @lsame_(ptr noundef %12, ptr noundef @.str.2, i32 noundef 1, i32 noundef 1)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.else19, label %if.then18

if.then18:                                        ; preds = %land.lhs.true15
  store i32 3, ptr %info, align 4, !tbaa !8
  br label %if.end34

if.else19:                                        ; preds = %land.lhs.true15, %if.else12
  %13 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %14 = load i32, ptr %13, align 4, !tbaa !8
  %cmp = icmp slt i32 %14, 0
  br i1 %cmp, label %if.then20, label %if.else21

if.then20:                                        ; preds = %if.else19
  store i32 4, ptr %info, align 4, !tbaa !8
  br label %if.end33

if.else21:                                        ; preds = %if.else19
  %15 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %16 = load i32, ptr %15, align 4, !tbaa !8
  %cmp22 = icmp slt i32 %16, 0
  br i1 %cmp22, label %if.then23, label %if.else24

if.then23:                                        ; preds = %if.else21
  store i32 5, ptr %info, align 4, !tbaa !8
  br label %if.end32

if.else24:                                        ; preds = %if.else21
  %17 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %18 = load i32, ptr %17, align 4, !tbaa !8
  %19 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %20 = load i32, ptr %19, align 4, !tbaa !8
  %add25 = add nsw i32 %20, 1
  %cmp26 = icmp slt i32 %18, %add25
  br i1 %cmp26, label %if.then27, label %if.else28

if.then27:                                        ; preds = %if.else24
  store i32 7, ptr %info, align 4, !tbaa !8
  br label %if.end31

if.else28:                                        ; preds = %if.else24
  %21 = load ptr, ptr %incx.addr, align 8, !tbaa !4
  %22 = load i32, ptr %21, align 4, !tbaa !8
  %cmp29 = icmp eq i32 %22, 0
  br i1 %cmp29, label %if.then30, label %if.end

if.then30:                                        ; preds = %if.else28
  store i32 9, ptr %info, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then30, %if.else28
  br label %if.end31

if.end31:                                         ; preds = %if.end, %if.then27
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %if.then23
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.then20
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.then18
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.then11
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.then
  %23 = load i32, ptr %info, align 4, !tbaa !8
  %cmp37 = icmp ne i32 %23, 0
  br i1 %cmp37, label %if.then38, label %if.end40

if.then38:                                        ; preds = %if.end36
  %call39 = call i32 @xerbla_(ptr noundef @.str.7, ptr noundef %info, i32 noundef 6)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end40:                                         ; preds = %if.end36
  %24 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %25 = load i32, ptr %24, align 4, !tbaa !8
  %cmp41 = icmp eq i32 %25, 0
  br i1 %cmp41, label %if.then42, label %if.end43

if.then42:                                        ; preds = %if.end40
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end43:                                         ; preds = %if.end40
  %26 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %call44 = call i32 @lsame_(ptr noundef %26, ptr noundef @.str.2, i32 noundef 1, i32 noundef 1)
  store i32 %call44, ptr %nounit, align 4, !tbaa !8
  %27 = load ptr, ptr %incx.addr, align 8, !tbaa !4
  %28 = load i32, ptr %27, align 4, !tbaa !8
  %cmp45 = icmp sle i32 %28, 0
  br i1 %cmp45, label %if.then46, label %if.else49

if.then46:                                        ; preds = %if.end43
  %29 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %30 = load i32, ptr %29, align 4, !tbaa !8
  %sub = sub nsw i32 %30, 1
  %31 = load ptr, ptr %incx.addr, align 8, !tbaa !4
  %32 = load i32, ptr %31, align 4, !tbaa !8
  %mul47 = mul nsw i32 %sub, %32
  %sub48 = sub nsw i32 1, %mul47
  store i32 %sub48, ptr %kx, align 4, !tbaa !8
  br label %if.end53

if.else49:                                        ; preds = %if.end43
  %33 = load ptr, ptr %incx.addr, align 8, !tbaa !4
  %34 = load i32, ptr %33, align 4, !tbaa !8
  %cmp50 = icmp ne i32 %34, 1
  br i1 %cmp50, label %if.then51, label %if.end52

if.then51:                                        ; preds = %if.else49
  store i32 1, ptr %kx, align 4, !tbaa !8
  br label %if.end52

if.end52:                                         ; preds = %if.then51, %if.else49
  br label %if.end53

if.end53:                                         ; preds = %if.end52, %if.then46
  %35 = load ptr, ptr %trans.addr, align 8, !tbaa !4
  %call54 = call i32 @lsame_(ptr noundef %35, ptr noundef @.str.2, i32 noundef 1, i32 noundef 1)
  %tobool55 = icmp ne i32 %call54, 0
  br i1 %tobool55, label %if.then56, label %if.else250

if.then56:                                        ; preds = %if.end53
  %36 = load ptr, ptr %uplo.addr, align 8, !tbaa !4
  %call57 = call i32 @lsame_(ptr noundef %36, ptr noundef @.str, i32 noundef 1, i32 noundef 1)
  %tobool58 = icmp ne i32 %call57, 0
  br i1 %tobool58, label %if.then59, label %if.else150

if.then59:                                        ; preds = %if.then56
  %37 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %38 = load i32, ptr %37, align 4, !tbaa !8
  %add60 = add nsw i32 %38, 1
  store i32 %add60, ptr %kplus1, align 4, !tbaa !8
  %39 = load ptr, ptr %incx.addr, align 8, !tbaa !4
  %40 = load i32, ptr %39, align 4, !tbaa !8
  %cmp61 = icmp eq i32 %40, 1
  br i1 %cmp61, label %if.then62, label %if.else96

if.then62:                                        ; preds = %if.then59
  %41 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %42 = load i32, ptr %41, align 4, !tbaa !8
  store i32 %42, ptr %j, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc93, %if.then62
  %43 = load i32, ptr %j, align 4, !tbaa !8
  %cmp63 = icmp sge i32 %43, 1
  br i1 %cmp63, label %for.body, label %for.end95

for.body:                                         ; preds = %for.cond
  %44 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %45 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom = sext i32 %45 to i64
  %arrayidx = getelementptr inbounds float, ptr %44, i64 %idxprom
  %46 = load float, ptr %arrayidx, align 4, !tbaa !16
  %cmp64 = fcmp une float %46, 0.000000e+00
  br i1 %cmp64, label %if.then65, label %if.end92

if.then65:                                        ; preds = %for.body
  %47 = load i32, ptr %kplus1, align 4, !tbaa !8
  %48 = load i32, ptr %j, align 4, !tbaa !8
  %sub66 = sub nsw i32 %47, %48
  store i32 %sub66, ptr %l, align 4, !tbaa !8
  %49 = load i32, ptr %nounit, align 4, !tbaa !8
  %tobool67 = icmp ne i32 %49, 0
  br i1 %tobool67, label %if.then68, label %if.end75

if.then68:                                        ; preds = %if.then65
  %50 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %51 = load i32, ptr %kplus1, align 4, !tbaa !8
  %52 = load i32, ptr %j, align 4, !tbaa !8
  %53 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul69 = mul nsw i32 %52, %53
  %add70 = add nsw i32 %51, %mul69
  %idxprom71 = sext i32 %add70 to i64
  %arrayidx72 = getelementptr inbounds float, ptr %50, i64 %idxprom71
  %54 = load float, ptr %arrayidx72, align 4, !tbaa !16
  %55 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %56 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom73 = sext i32 %56 to i64
  %arrayidx74 = getelementptr inbounds float, ptr %55, i64 %idxprom73
  %57 = load float, ptr %arrayidx74, align 4, !tbaa !16
  %div = fdiv float %57, %54
  store float %div, ptr %arrayidx74, align 4, !tbaa !16
  br label %if.end75

if.end75:                                         ; preds = %if.then68, %if.then65
  %58 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %59 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom76 = sext i32 %59 to i64
  %arrayidx77 = getelementptr inbounds float, ptr %58, i64 %idxprom76
  %60 = load float, ptr %arrayidx77, align 4, !tbaa !16
  store float %60, ptr %temp, align 4, !tbaa !16
  store i32 1, ptr %i__2, align 4, !tbaa !8
  %61 = load i32, ptr %j, align 4, !tbaa !8
  %62 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %63 = load i32, ptr %62, align 4, !tbaa !8
  %sub78 = sub nsw i32 %61, %63
  store i32 %sub78, ptr %i__3, align 4, !tbaa !8
  %64 = load i32, ptr %i__2, align 4, !tbaa !8
  %65 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp79 = icmp sge i32 %64, %65
  br i1 %cmp79, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end75
  %66 = load i32, ptr %i__2, align 4, !tbaa !8
  br label %cond.end

cond.false:                                       ; preds = %if.end75
  %67 = load i32, ptr %i__3, align 4, !tbaa !8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %66, %cond.true ], [ %67, %cond.false ]
  store i32 %cond, ptr %i__1, align 4, !tbaa !8
  %68 = load i32, ptr %j, align 4, !tbaa !8
  %sub80 = sub nsw i32 %68, 1
  store i32 %sub80, ptr %i__, align 4, !tbaa !8
  br label %for.cond81

for.cond81:                                       ; preds = %for.inc, %cond.end
  %69 = load i32, ptr %i__, align 4, !tbaa !8
  %70 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp82 = icmp sge i32 %69, %70
  br i1 %cmp82, label %for.body83, label %for.end

for.body83:                                       ; preds = %for.cond81
  %71 = load float, ptr %temp, align 4, !tbaa !16
  %72 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %73 = load i32, ptr %l, align 4, !tbaa !8
  %74 = load i32, ptr %i__, align 4, !tbaa !8
  %add84 = add nsw i32 %73, %74
  %75 = load i32, ptr %j, align 4, !tbaa !8
  %76 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul85 = mul nsw i32 %75, %76
  %add86 = add nsw i32 %add84, %mul85
  %idxprom87 = sext i32 %add86 to i64
  %arrayidx88 = getelementptr inbounds float, ptr %72, i64 %idxprom87
  %77 = load float, ptr %arrayidx88, align 4, !tbaa !16
  %78 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %79 = load i32, ptr %i__, align 4, !tbaa !8
  %idxprom90 = sext i32 %79 to i64
  %arrayidx91 = getelementptr inbounds float, ptr %78, i64 %idxprom90
  %80 = load float, ptr %arrayidx91, align 4, !tbaa !16
  %neg = fneg float %71
  %81 = call float @llvm.fmuladd.f32(float %neg, float %77, float %80)
  store float %81, ptr %arrayidx91, align 4, !tbaa !16
  br label %for.inc

for.inc:                                          ; preds = %for.body83
  %82 = load i32, ptr %i__, align 4, !tbaa !8
  %dec = add nsw i32 %82, -1
  store i32 %dec, ptr %i__, align 4, !tbaa !8
  br label %for.cond81

for.end:                                          ; preds = %for.cond81
  br label %if.end92

if.end92:                                         ; preds = %for.end, %for.body
  br label %for.inc93

for.inc93:                                        ; preds = %if.end92
  %83 = load i32, ptr %j, align 4, !tbaa !8
  %dec94 = add nsw i32 %83, -1
  store i32 %dec94, ptr %j, align 4, !tbaa !8
  br label %for.cond

for.end95:                                        ; preds = %for.cond
  br label %if.end149

if.else96:                                        ; preds = %if.then59
  %84 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %85 = load i32, ptr %84, align 4, !tbaa !8
  %sub97 = sub nsw i32 %85, 1
  %86 = load ptr, ptr %incx.addr, align 8, !tbaa !4
  %87 = load i32, ptr %86, align 4, !tbaa !8
  %mul98 = mul nsw i32 %sub97, %87
  %88 = load i32, ptr %kx, align 4, !tbaa !8
  %add99 = add nsw i32 %88, %mul98
  store i32 %add99, ptr %kx, align 4, !tbaa !8
  %89 = load i32, ptr %kx, align 4, !tbaa !8
  store i32 %89, ptr %jx, align 4, !tbaa !8
  %90 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %91 = load i32, ptr %90, align 4, !tbaa !8
  store i32 %91, ptr %j, align 4, !tbaa !8
  br label %for.cond100

for.cond100:                                      ; preds = %for.inc146, %if.else96
  %92 = load i32, ptr %j, align 4, !tbaa !8
  %cmp101 = icmp sge i32 %92, 1
  br i1 %cmp101, label %for.body102, label %for.end148

for.body102:                                      ; preds = %for.cond100
  %93 = load ptr, ptr %incx.addr, align 8, !tbaa !4
  %94 = load i32, ptr %93, align 4, !tbaa !8
  %95 = load i32, ptr %kx, align 4, !tbaa !8
  %sub103 = sub nsw i32 %95, %94
  store i32 %sub103, ptr %kx, align 4, !tbaa !8
  %96 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %97 = load i32, ptr %jx, align 4, !tbaa !8
  %idxprom104 = sext i32 %97 to i64
  %arrayidx105 = getelementptr inbounds float, ptr %96, i64 %idxprom104
  %98 = load float, ptr %arrayidx105, align 4, !tbaa !16
  %cmp106 = fcmp une float %98, 0.000000e+00
  br i1 %cmp106, label %if.then107, label %if.end144

if.then107:                                       ; preds = %for.body102
  %99 = load i32, ptr %kx, align 4, !tbaa !8
  store i32 %99, ptr %ix, align 4, !tbaa !8
  %100 = load i32, ptr %kplus1, align 4, !tbaa !8
  %101 = load i32, ptr %j, align 4, !tbaa !8
  %sub108 = sub nsw i32 %100, %101
  store i32 %sub108, ptr %l, align 4, !tbaa !8
  %102 = load i32, ptr %nounit, align 4, !tbaa !8
  %tobool109 = icmp ne i32 %102, 0
  br i1 %tobool109, label %if.then110, label %if.end118

if.then110:                                       ; preds = %if.then107
  %103 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %104 = load i32, ptr %kplus1, align 4, !tbaa !8
  %105 = load i32, ptr %j, align 4, !tbaa !8
  %106 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul111 = mul nsw i32 %105, %106
  %add112 = add nsw i32 %104, %mul111
  %idxprom113 = sext i32 %add112 to i64
  %arrayidx114 = getelementptr inbounds float, ptr %103, i64 %idxprom113
  %107 = load float, ptr %arrayidx114, align 4, !tbaa !16
  %108 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %109 = load i32, ptr %jx, align 4, !tbaa !8
  %idxprom115 = sext i32 %109 to i64
  %arrayidx116 = getelementptr inbounds float, ptr %108, i64 %idxprom115
  %110 = load float, ptr %arrayidx116, align 4, !tbaa !16
  %div117 = fdiv float %110, %107
  store float %div117, ptr %arrayidx116, align 4, !tbaa !16
  br label %if.end118

if.end118:                                        ; preds = %if.then110, %if.then107
  %111 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %112 = load i32, ptr %jx, align 4, !tbaa !8
  %idxprom119 = sext i32 %112 to i64
  %arrayidx120 = getelementptr inbounds float, ptr %111, i64 %idxprom119
  %113 = load float, ptr %arrayidx120, align 4, !tbaa !16
  store float %113, ptr %temp, align 4, !tbaa !16
  store i32 1, ptr %i__2, align 4, !tbaa !8
  %114 = load i32, ptr %j, align 4, !tbaa !8
  %115 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %116 = load i32, ptr %115, align 4, !tbaa !8
  %sub121 = sub nsw i32 %114, %116
  store i32 %sub121, ptr %i__3, align 4, !tbaa !8
  %117 = load i32, ptr %i__2, align 4, !tbaa !8
  %118 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp122 = icmp sge i32 %117, %118
  br i1 %cmp122, label %cond.true123, label %cond.false124

cond.true123:                                     ; preds = %if.end118
  %119 = load i32, ptr %i__2, align 4, !tbaa !8
  br label %cond.end125

cond.false124:                                    ; preds = %if.end118
  %120 = load i32, ptr %i__3, align 4, !tbaa !8
  br label %cond.end125

cond.end125:                                      ; preds = %cond.false124, %cond.true123
  %cond126 = phi i32 [ %119, %cond.true123 ], [ %120, %cond.false124 ]
  store i32 %cond126, ptr %i__1, align 4, !tbaa !8
  %121 = load i32, ptr %j, align 4, !tbaa !8
  %sub127 = sub nsw i32 %121, 1
  store i32 %sub127, ptr %i__, align 4, !tbaa !8
  br label %for.cond128

for.cond128:                                      ; preds = %for.inc141, %cond.end125
  %122 = load i32, ptr %i__, align 4, !tbaa !8
  %123 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp129 = icmp sge i32 %122, %123
  br i1 %cmp129, label %for.body130, label %for.end143

for.body130:                                      ; preds = %for.cond128
  %124 = load float, ptr %temp, align 4, !tbaa !16
  %125 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %126 = load i32, ptr %l, align 4, !tbaa !8
  %127 = load i32, ptr %i__, align 4, !tbaa !8
  %add131 = add nsw i32 %126, %127
  %128 = load i32, ptr %j, align 4, !tbaa !8
  %129 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul132 = mul nsw i32 %128, %129
  %add133 = add nsw i32 %add131, %mul132
  %idxprom134 = sext i32 %add133 to i64
  %arrayidx135 = getelementptr inbounds float, ptr %125, i64 %idxprom134
  %130 = load float, ptr %arrayidx135, align 4, !tbaa !16
  %131 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %132 = load i32, ptr %ix, align 4, !tbaa !8
  %idxprom137 = sext i32 %132 to i64
  %arrayidx138 = getelementptr inbounds float, ptr %131, i64 %idxprom137
  %133 = load float, ptr %arrayidx138, align 4, !tbaa !16
  %neg139 = fneg float %124
  %134 = call float @llvm.fmuladd.f32(float %neg139, float %130, float %133)
  store float %134, ptr %arrayidx138, align 4, !tbaa !16
  %135 = load ptr, ptr %incx.addr, align 8, !tbaa !4
  %136 = load i32, ptr %135, align 4, !tbaa !8
  %137 = load i32, ptr %ix, align 4, !tbaa !8
  %sub140 = sub nsw i32 %137, %136
  store i32 %sub140, ptr %ix, align 4, !tbaa !8
  br label %for.inc141

for.inc141:                                       ; preds = %for.body130
  %138 = load i32, ptr %i__, align 4, !tbaa !8
  %dec142 = add nsw i32 %138, -1
  store i32 %dec142, ptr %i__, align 4, !tbaa !8
  br label %for.cond128

for.end143:                                       ; preds = %for.cond128
  br label %if.end144

if.end144:                                        ; preds = %for.end143, %for.body102
  %139 = load ptr, ptr %incx.addr, align 8, !tbaa !4
  %140 = load i32, ptr %139, align 4, !tbaa !8
  %141 = load i32, ptr %jx, align 4, !tbaa !8
  %sub145 = sub nsw i32 %141, %140
  store i32 %sub145, ptr %jx, align 4, !tbaa !8
  br label %for.inc146

for.inc146:                                       ; preds = %if.end144
  %142 = load i32, ptr %j, align 4, !tbaa !8
  %dec147 = add nsw i32 %142, -1
  store i32 %dec147, ptr %j, align 4, !tbaa !8
  br label %for.cond100

for.end148:                                       ; preds = %for.cond100
  br label %if.end149

if.end149:                                        ; preds = %for.end148, %for.end95
  br label %if.end249

if.else150:                                       ; preds = %if.then56
  %143 = load ptr, ptr %incx.addr, align 8, !tbaa !4
  %144 = load i32, ptr %143, align 4, !tbaa !8
  %cmp151 = icmp eq i32 %144, 1
  br i1 %cmp151, label %if.then152, label %if.else198

if.then152:                                       ; preds = %if.else150
  %145 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %146 = load i32, ptr %145, align 4, !tbaa !8
  store i32 %146, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %j, align 4, !tbaa !8
  br label %for.cond153

for.cond153:                                      ; preds = %for.inc195, %if.then152
  %147 = load i32, ptr %j, align 4, !tbaa !8
  %148 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp154 = icmp sle i32 %147, %148
  br i1 %cmp154, label %for.body155, label %for.end197

for.body155:                                      ; preds = %for.cond153
  %149 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %150 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom156 = sext i32 %150 to i64
  %arrayidx157 = getelementptr inbounds float, ptr %149, i64 %idxprom156
  %151 = load float, ptr %arrayidx157, align 4, !tbaa !16
  %cmp158 = fcmp une float %151, 0.000000e+00
  br i1 %cmp158, label %if.then159, label %if.end194

if.then159:                                       ; preds = %for.body155
  %152 = load i32, ptr %j, align 4, !tbaa !8
  %sub160 = sub nsw i32 1, %152
  store i32 %sub160, ptr %l, align 4, !tbaa !8
  %153 = load i32, ptr %nounit, align 4, !tbaa !8
  %tobool161 = icmp ne i32 %153, 0
  br i1 %tobool161, label %if.then162, label %if.end170

if.then162:                                       ; preds = %if.then159
  %154 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %155 = load i32, ptr %j, align 4, !tbaa !8
  %156 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul163 = mul nsw i32 %155, %156
  %add164 = add nsw i32 %mul163, 1
  %idxprom165 = sext i32 %add164 to i64
  %arrayidx166 = getelementptr inbounds float, ptr %154, i64 %idxprom165
  %157 = load float, ptr %arrayidx166, align 4, !tbaa !16
  %158 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %159 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom167 = sext i32 %159 to i64
  %arrayidx168 = getelementptr inbounds float, ptr %158, i64 %idxprom167
  %160 = load float, ptr %arrayidx168, align 4, !tbaa !16
  %div169 = fdiv float %160, %157
  store float %div169, ptr %arrayidx168, align 4, !tbaa !16
  br label %if.end170

if.end170:                                        ; preds = %if.then162, %if.then159
  %161 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %162 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom171 = sext i32 %162 to i64
  %arrayidx172 = getelementptr inbounds float, ptr %161, i64 %idxprom171
  %163 = load float, ptr %arrayidx172, align 4, !tbaa !16
  store float %163, ptr %temp, align 4, !tbaa !16
  %164 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %165 = load i32, ptr %164, align 4, !tbaa !8
  store i32 %165, ptr %i__3, align 4, !tbaa !8
  %166 = load i32, ptr %j, align 4, !tbaa !8
  %167 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %168 = load i32, ptr %167, align 4, !tbaa !8
  %add173 = add nsw i32 %166, %168
  store i32 %add173, ptr %i__4, align 4, !tbaa !8
  %169 = load i32, ptr %i__3, align 4, !tbaa !8
  %170 = load i32, ptr %i__4, align 4, !tbaa !8
  %cmp174 = icmp sle i32 %169, %170
  br i1 %cmp174, label %cond.true175, label %cond.false176

cond.true175:                                     ; preds = %if.end170
  %171 = load i32, ptr %i__3, align 4, !tbaa !8
  br label %cond.end177

cond.false176:                                    ; preds = %if.end170
  %172 = load i32, ptr %i__4, align 4, !tbaa !8
  br label %cond.end177

cond.end177:                                      ; preds = %cond.false176, %cond.true175
  %cond178 = phi i32 [ %171, %cond.true175 ], [ %172, %cond.false176 ]
  store i32 %cond178, ptr %i__2, align 4, !tbaa !8
  %173 = load i32, ptr %j, align 4, !tbaa !8
  %add179 = add nsw i32 %173, 1
  store i32 %add179, ptr %i__, align 4, !tbaa !8
  br label %for.cond180

for.cond180:                                      ; preds = %for.inc192, %cond.end177
  %174 = load i32, ptr %i__, align 4, !tbaa !8
  %175 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp181 = icmp sle i32 %174, %175
  br i1 %cmp181, label %for.body182, label %for.end193

for.body182:                                      ; preds = %for.cond180
  %176 = load float, ptr %temp, align 4, !tbaa !16
  %177 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %178 = load i32, ptr %l, align 4, !tbaa !8
  %179 = load i32, ptr %i__, align 4, !tbaa !8
  %add183 = add nsw i32 %178, %179
  %180 = load i32, ptr %j, align 4, !tbaa !8
  %181 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul184 = mul nsw i32 %180, %181
  %add185 = add nsw i32 %add183, %mul184
  %idxprom186 = sext i32 %add185 to i64
  %arrayidx187 = getelementptr inbounds float, ptr %177, i64 %idxprom186
  %182 = load float, ptr %arrayidx187, align 4, !tbaa !16
  %183 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %184 = load i32, ptr %i__, align 4, !tbaa !8
  %idxprom189 = sext i32 %184 to i64
  %arrayidx190 = getelementptr inbounds float, ptr %183, i64 %idxprom189
  %185 = load float, ptr %arrayidx190, align 4, !tbaa !16
  %neg191 = fneg float %176
  %186 = call float @llvm.fmuladd.f32(float %neg191, float %182, float %185)
  store float %186, ptr %arrayidx190, align 4, !tbaa !16
  br label %for.inc192

for.inc192:                                       ; preds = %for.body182
  %187 = load i32, ptr %i__, align 4, !tbaa !8
  %inc = add nsw i32 %187, 1
  store i32 %inc, ptr %i__, align 4, !tbaa !8
  br label %for.cond180

for.end193:                                       ; preds = %for.cond180
  br label %if.end194

if.end194:                                        ; preds = %for.end193, %for.body155
  br label %for.inc195

for.inc195:                                       ; preds = %if.end194
  %188 = load i32, ptr %j, align 4, !tbaa !8
  %inc196 = add nsw i32 %188, 1
  store i32 %inc196, ptr %j, align 4, !tbaa !8
  br label %for.cond153

for.end197:                                       ; preds = %for.cond153
  br label %if.end248

if.else198:                                       ; preds = %if.else150
  %189 = load i32, ptr %kx, align 4, !tbaa !8
  store i32 %189, ptr %jx, align 4, !tbaa !8
  %190 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %191 = load i32, ptr %190, align 4, !tbaa !8
  store i32 %191, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %j, align 4, !tbaa !8
  br label %for.cond199

for.cond199:                                      ; preds = %for.inc245, %if.else198
  %192 = load i32, ptr %j, align 4, !tbaa !8
  %193 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp200 = icmp sle i32 %192, %193
  br i1 %cmp200, label %for.body201, label %for.end247

for.body201:                                      ; preds = %for.cond199
  %194 = load ptr, ptr %incx.addr, align 8, !tbaa !4
  %195 = load i32, ptr %194, align 4, !tbaa !8
  %196 = load i32, ptr %kx, align 4, !tbaa !8
  %add202 = add nsw i32 %196, %195
  store i32 %add202, ptr %kx, align 4, !tbaa !8
  %197 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %198 = load i32, ptr %jx, align 4, !tbaa !8
  %idxprom203 = sext i32 %198 to i64
  %arrayidx204 = getelementptr inbounds float, ptr %197, i64 %idxprom203
  %199 = load float, ptr %arrayidx204, align 4, !tbaa !16
  %cmp205 = fcmp une float %199, 0.000000e+00
  br i1 %cmp205, label %if.then206, label %if.end243

if.then206:                                       ; preds = %for.body201
  %200 = load i32, ptr %kx, align 4, !tbaa !8
  store i32 %200, ptr %ix, align 4, !tbaa !8
  %201 = load i32, ptr %j, align 4, !tbaa !8
  %sub207 = sub nsw i32 1, %201
  store i32 %sub207, ptr %l, align 4, !tbaa !8
  %202 = load i32, ptr %nounit, align 4, !tbaa !8
  %tobool208 = icmp ne i32 %202, 0
  br i1 %tobool208, label %if.then209, label %if.end217

if.then209:                                       ; preds = %if.then206
  %203 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %204 = load i32, ptr %j, align 4, !tbaa !8
  %205 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul210 = mul nsw i32 %204, %205
  %add211 = add nsw i32 %mul210, 1
  %idxprom212 = sext i32 %add211 to i64
  %arrayidx213 = getelementptr inbounds float, ptr %203, i64 %idxprom212
  %206 = load float, ptr %arrayidx213, align 4, !tbaa !16
  %207 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %208 = load i32, ptr %jx, align 4, !tbaa !8
  %idxprom214 = sext i32 %208 to i64
  %arrayidx215 = getelementptr inbounds float, ptr %207, i64 %idxprom214
  %209 = load float, ptr %arrayidx215, align 4, !tbaa !16
  %div216 = fdiv float %209, %206
  store float %div216, ptr %arrayidx215, align 4, !tbaa !16
  br label %if.end217

if.end217:                                        ; preds = %if.then209, %if.then206
  %210 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %211 = load i32, ptr %jx, align 4, !tbaa !8
  %idxprom218 = sext i32 %211 to i64
  %arrayidx219 = getelementptr inbounds float, ptr %210, i64 %idxprom218
  %212 = load float, ptr %arrayidx219, align 4, !tbaa !16
  store float %212, ptr %temp, align 4, !tbaa !16
  %213 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %214 = load i32, ptr %213, align 4, !tbaa !8
  store i32 %214, ptr %i__3, align 4, !tbaa !8
  %215 = load i32, ptr %j, align 4, !tbaa !8
  %216 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %217 = load i32, ptr %216, align 4, !tbaa !8
  %add220 = add nsw i32 %215, %217
  store i32 %add220, ptr %i__4, align 4, !tbaa !8
  %218 = load i32, ptr %i__3, align 4, !tbaa !8
  %219 = load i32, ptr %i__4, align 4, !tbaa !8
  %cmp221 = icmp sle i32 %218, %219
  br i1 %cmp221, label %cond.true222, label %cond.false223

cond.true222:                                     ; preds = %if.end217
  %220 = load i32, ptr %i__3, align 4, !tbaa !8
  br label %cond.end224

cond.false223:                                    ; preds = %if.end217
  %221 = load i32, ptr %i__4, align 4, !tbaa !8
  br label %cond.end224

cond.end224:                                      ; preds = %cond.false223, %cond.true222
  %cond225 = phi i32 [ %220, %cond.true222 ], [ %221, %cond.false223 ]
  store i32 %cond225, ptr %i__2, align 4, !tbaa !8
  %222 = load i32, ptr %j, align 4, !tbaa !8
  %add226 = add nsw i32 %222, 1
  store i32 %add226, ptr %i__, align 4, !tbaa !8
  br label %for.cond227

for.cond227:                                      ; preds = %for.inc240, %cond.end224
  %223 = load i32, ptr %i__, align 4, !tbaa !8
  %224 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp228 = icmp sle i32 %223, %224
  br i1 %cmp228, label %for.body229, label %for.end242

for.body229:                                      ; preds = %for.cond227
  %225 = load float, ptr %temp, align 4, !tbaa !16
  %226 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %227 = load i32, ptr %l, align 4, !tbaa !8
  %228 = load i32, ptr %i__, align 4, !tbaa !8
  %add230 = add nsw i32 %227, %228
  %229 = load i32, ptr %j, align 4, !tbaa !8
  %230 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul231 = mul nsw i32 %229, %230
  %add232 = add nsw i32 %add230, %mul231
  %idxprom233 = sext i32 %add232 to i64
  %arrayidx234 = getelementptr inbounds float, ptr %226, i64 %idxprom233
  %231 = load float, ptr %arrayidx234, align 4, !tbaa !16
  %232 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %233 = load i32, ptr %ix, align 4, !tbaa !8
  %idxprom236 = sext i32 %233 to i64
  %arrayidx237 = getelementptr inbounds float, ptr %232, i64 %idxprom236
  %234 = load float, ptr %arrayidx237, align 4, !tbaa !16
  %neg238 = fneg float %225
  %235 = call float @llvm.fmuladd.f32(float %neg238, float %231, float %234)
  store float %235, ptr %arrayidx237, align 4, !tbaa !16
  %236 = load ptr, ptr %incx.addr, align 8, !tbaa !4
  %237 = load i32, ptr %236, align 4, !tbaa !8
  %238 = load i32, ptr %ix, align 4, !tbaa !8
  %add239 = add nsw i32 %238, %237
  store i32 %add239, ptr %ix, align 4, !tbaa !8
  br label %for.inc240

for.inc240:                                       ; preds = %for.body229
  %239 = load i32, ptr %i__, align 4, !tbaa !8
  %inc241 = add nsw i32 %239, 1
  store i32 %inc241, ptr %i__, align 4, !tbaa !8
  br label %for.cond227

for.end242:                                       ; preds = %for.cond227
  br label %if.end243

if.end243:                                        ; preds = %for.end242, %for.body201
  %240 = load ptr, ptr %incx.addr, align 8, !tbaa !4
  %241 = load i32, ptr %240, align 4, !tbaa !8
  %242 = load i32, ptr %jx, align 4, !tbaa !8
  %add244 = add nsw i32 %242, %241
  store i32 %add244, ptr %jx, align 4, !tbaa !8
  br label %for.inc245

for.inc245:                                       ; preds = %if.end243
  %243 = load i32, ptr %j, align 4, !tbaa !8
  %inc246 = add nsw i32 %243, 1
  store i32 %inc246, ptr %j, align 4, !tbaa !8
  br label %for.cond199

for.end247:                                       ; preds = %for.cond199
  br label %if.end248

if.end248:                                        ; preds = %for.end247, %for.end197
  br label %if.end249

if.end249:                                        ; preds = %if.end248, %if.end149
  br label %if.end445

if.else250:                                       ; preds = %if.end53
  %244 = load ptr, ptr %uplo.addr, align 8, !tbaa !4
  %call251 = call i32 @lsame_(ptr noundef %244, ptr noundef @.str, i32 noundef 1, i32 noundef 1)
  %tobool252 = icmp ne i32 %call251, 0
  br i1 %tobool252, label %if.then253, label %if.else347

if.then253:                                       ; preds = %if.else250
  %245 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %246 = load i32, ptr %245, align 4, !tbaa !8
  %add254 = add nsw i32 %246, 1
  store i32 %add254, ptr %kplus1, align 4, !tbaa !8
  %247 = load ptr, ptr %incx.addr, align 8, !tbaa !4
  %248 = load i32, ptr %247, align 4, !tbaa !8
  %cmp255 = icmp eq i32 %248, 1
  br i1 %cmp255, label %if.then256, label %if.else298

if.then256:                                       ; preds = %if.then253
  %249 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %250 = load i32, ptr %249, align 4, !tbaa !8
  store i32 %250, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %j, align 4, !tbaa !8
  br label %for.cond257

for.cond257:                                      ; preds = %for.inc295, %if.then256
  %251 = load i32, ptr %j, align 4, !tbaa !8
  %252 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp258 = icmp sle i32 %251, %252
  br i1 %cmp258, label %for.body259, label %for.end297

for.body259:                                      ; preds = %for.cond257
  %253 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %254 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom260 = sext i32 %254 to i64
  %arrayidx261 = getelementptr inbounds float, ptr %253, i64 %idxprom260
  %255 = load float, ptr %arrayidx261, align 4, !tbaa !16
  store float %255, ptr %temp, align 4, !tbaa !16
  %256 = load i32, ptr %kplus1, align 4, !tbaa !8
  %257 = load i32, ptr %j, align 4, !tbaa !8
  %sub262 = sub nsw i32 %256, %257
  store i32 %sub262, ptr %l, align 4, !tbaa !8
  store i32 1, ptr %i__2, align 4, !tbaa !8
  %258 = load i32, ptr %j, align 4, !tbaa !8
  %259 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %260 = load i32, ptr %259, align 4, !tbaa !8
  %sub263 = sub nsw i32 %258, %260
  store i32 %sub263, ptr %i__3, align 4, !tbaa !8
  %261 = load i32, ptr %j, align 4, !tbaa !8
  %sub264 = sub nsw i32 %261, 1
  store i32 %sub264, ptr %i__4, align 4, !tbaa !8
  %262 = load i32, ptr %i__2, align 4, !tbaa !8
  %263 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp265 = icmp sge i32 %262, %263
  br i1 %cmp265, label %cond.true266, label %cond.false267

cond.true266:                                     ; preds = %for.body259
  %264 = load i32, ptr %i__2, align 4, !tbaa !8
  br label %cond.end268

cond.false267:                                    ; preds = %for.body259
  %265 = load i32, ptr %i__3, align 4, !tbaa !8
  br label %cond.end268

cond.end268:                                      ; preds = %cond.false267, %cond.true266
  %cond269 = phi i32 [ %264, %cond.true266 ], [ %265, %cond.false267 ]
  store i32 %cond269, ptr %i__, align 4, !tbaa !8
  br label %for.cond270

for.cond270:                                      ; preds = %for.inc282, %cond.end268
  %266 = load i32, ptr %i__, align 4, !tbaa !8
  %267 = load i32, ptr %i__4, align 4, !tbaa !8
  %cmp271 = icmp sle i32 %266, %267
  br i1 %cmp271, label %for.body272, label %for.end284

for.body272:                                      ; preds = %for.cond270
  %268 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %269 = load i32, ptr %l, align 4, !tbaa !8
  %270 = load i32, ptr %i__, align 4, !tbaa !8
  %add273 = add nsw i32 %269, %270
  %271 = load i32, ptr %j, align 4, !tbaa !8
  %272 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul274 = mul nsw i32 %271, %272
  %add275 = add nsw i32 %add273, %mul274
  %idxprom276 = sext i32 %add275 to i64
  %arrayidx277 = getelementptr inbounds float, ptr %268, i64 %idxprom276
  %273 = load float, ptr %arrayidx277, align 4, !tbaa !16
  %274 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %275 = load i32, ptr %i__, align 4, !tbaa !8
  %idxprom278 = sext i32 %275 to i64
  %arrayidx279 = getelementptr inbounds float, ptr %274, i64 %idxprom278
  %276 = load float, ptr %arrayidx279, align 4, !tbaa !16
  %277 = load float, ptr %temp, align 4, !tbaa !16
  %neg281 = fneg float %273
  %278 = call float @llvm.fmuladd.f32(float %neg281, float %276, float %277)
  store float %278, ptr %temp, align 4, !tbaa !16
  br label %for.inc282

for.inc282:                                       ; preds = %for.body272
  %279 = load i32, ptr %i__, align 4, !tbaa !8
  %inc283 = add nsw i32 %279, 1
  store i32 %inc283, ptr %i__, align 4, !tbaa !8
  br label %for.cond270

for.end284:                                       ; preds = %for.cond270
  %280 = load i32, ptr %nounit, align 4, !tbaa !8
  %tobool285 = icmp ne i32 %280, 0
  br i1 %tobool285, label %if.then286, label %if.end292

if.then286:                                       ; preds = %for.end284
  %281 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %282 = load i32, ptr %kplus1, align 4, !tbaa !8
  %283 = load i32, ptr %j, align 4, !tbaa !8
  %284 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul287 = mul nsw i32 %283, %284
  %add288 = add nsw i32 %282, %mul287
  %idxprom289 = sext i32 %add288 to i64
  %arrayidx290 = getelementptr inbounds float, ptr %281, i64 %idxprom289
  %285 = load float, ptr %arrayidx290, align 4, !tbaa !16
  %286 = load float, ptr %temp, align 4, !tbaa !16
  %div291 = fdiv float %286, %285
  store float %div291, ptr %temp, align 4, !tbaa !16
  br label %if.end292

if.end292:                                        ; preds = %if.then286, %for.end284
  %287 = load float, ptr %temp, align 4, !tbaa !16
  %288 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %289 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom293 = sext i32 %289 to i64
  %arrayidx294 = getelementptr inbounds float, ptr %288, i64 %idxprom293
  store float %287, ptr %arrayidx294, align 4, !tbaa !16
  br label %for.inc295

for.inc295:                                       ; preds = %if.end292
  %290 = load i32, ptr %j, align 4, !tbaa !8
  %inc296 = add nsw i32 %290, 1
  store i32 %inc296, ptr %j, align 4, !tbaa !8
  br label %for.cond257

for.end297:                                       ; preds = %for.cond257
  br label %if.end346

if.else298:                                       ; preds = %if.then253
  %291 = load i32, ptr %kx, align 4, !tbaa !8
  store i32 %291, ptr %jx, align 4, !tbaa !8
  %292 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %293 = load i32, ptr %292, align 4, !tbaa !8
  store i32 %293, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %j, align 4, !tbaa !8
  br label %for.cond299

for.cond299:                                      ; preds = %for.inc343, %if.else298
  %294 = load i32, ptr %j, align 4, !tbaa !8
  %295 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp300 = icmp sle i32 %294, %295
  br i1 %cmp300, label %for.body301, label %for.end345

for.body301:                                      ; preds = %for.cond299
  %296 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %297 = load i32, ptr %jx, align 4, !tbaa !8
  %idxprom302 = sext i32 %297 to i64
  %arrayidx303 = getelementptr inbounds float, ptr %296, i64 %idxprom302
  %298 = load float, ptr %arrayidx303, align 4, !tbaa !16
  store float %298, ptr %temp, align 4, !tbaa !16
  %299 = load i32, ptr %kx, align 4, !tbaa !8
  store i32 %299, ptr %ix, align 4, !tbaa !8
  %300 = load i32, ptr %kplus1, align 4, !tbaa !8
  %301 = load i32, ptr %j, align 4, !tbaa !8
  %sub304 = sub nsw i32 %300, %301
  store i32 %sub304, ptr %l, align 4, !tbaa !8
  store i32 1, ptr %i__4, align 4, !tbaa !8
  %302 = load i32, ptr %j, align 4, !tbaa !8
  %303 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %304 = load i32, ptr %303, align 4, !tbaa !8
  %sub305 = sub nsw i32 %302, %304
  store i32 %sub305, ptr %i__2, align 4, !tbaa !8
  %305 = load i32, ptr %j, align 4, !tbaa !8
  %sub306 = sub nsw i32 %305, 1
  store i32 %sub306, ptr %i__3, align 4, !tbaa !8
  %306 = load i32, ptr %i__4, align 4, !tbaa !8
  %307 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp307 = icmp sge i32 %306, %307
  br i1 %cmp307, label %cond.true308, label %cond.false309

cond.true308:                                     ; preds = %for.body301
  %308 = load i32, ptr %i__4, align 4, !tbaa !8
  br label %cond.end310

cond.false309:                                    ; preds = %for.body301
  %309 = load i32, ptr %i__2, align 4, !tbaa !8
  br label %cond.end310

cond.end310:                                      ; preds = %cond.false309, %cond.true308
  %cond311 = phi i32 [ %308, %cond.true308 ], [ %309, %cond.false309 ]
  store i32 %cond311, ptr %i__, align 4, !tbaa !8
  br label %for.cond312

for.cond312:                                      ; preds = %for.inc325, %cond.end310
  %310 = load i32, ptr %i__, align 4, !tbaa !8
  %311 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp313 = icmp sle i32 %310, %311
  br i1 %cmp313, label %for.body314, label %for.end327

for.body314:                                      ; preds = %for.cond312
  %312 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %313 = load i32, ptr %l, align 4, !tbaa !8
  %314 = load i32, ptr %i__, align 4, !tbaa !8
  %add315 = add nsw i32 %313, %314
  %315 = load i32, ptr %j, align 4, !tbaa !8
  %316 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul316 = mul nsw i32 %315, %316
  %add317 = add nsw i32 %add315, %mul316
  %idxprom318 = sext i32 %add317 to i64
  %arrayidx319 = getelementptr inbounds float, ptr %312, i64 %idxprom318
  %317 = load float, ptr %arrayidx319, align 4, !tbaa !16
  %318 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %319 = load i32, ptr %ix, align 4, !tbaa !8
  %idxprom320 = sext i32 %319 to i64
  %arrayidx321 = getelementptr inbounds float, ptr %318, i64 %idxprom320
  %320 = load float, ptr %arrayidx321, align 4, !tbaa !16
  %321 = load float, ptr %temp, align 4, !tbaa !16
  %neg323 = fneg float %317
  %322 = call float @llvm.fmuladd.f32(float %neg323, float %320, float %321)
  store float %322, ptr %temp, align 4, !tbaa !16
  %323 = load ptr, ptr %incx.addr, align 8, !tbaa !4
  %324 = load i32, ptr %323, align 4, !tbaa !8
  %325 = load i32, ptr %ix, align 4, !tbaa !8
  %add324 = add nsw i32 %325, %324
  store i32 %add324, ptr %ix, align 4, !tbaa !8
  br label %for.inc325

for.inc325:                                       ; preds = %for.body314
  %326 = load i32, ptr %i__, align 4, !tbaa !8
  %inc326 = add nsw i32 %326, 1
  store i32 %inc326, ptr %i__, align 4, !tbaa !8
  br label %for.cond312

for.end327:                                       ; preds = %for.cond312
  %327 = load i32, ptr %nounit, align 4, !tbaa !8
  %tobool328 = icmp ne i32 %327, 0
  br i1 %tobool328, label %if.then329, label %if.end335

if.then329:                                       ; preds = %for.end327
  %328 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %329 = load i32, ptr %kplus1, align 4, !tbaa !8
  %330 = load i32, ptr %j, align 4, !tbaa !8
  %331 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul330 = mul nsw i32 %330, %331
  %add331 = add nsw i32 %329, %mul330
  %idxprom332 = sext i32 %add331 to i64
  %arrayidx333 = getelementptr inbounds float, ptr %328, i64 %idxprom332
  %332 = load float, ptr %arrayidx333, align 4, !tbaa !16
  %333 = load float, ptr %temp, align 4, !tbaa !16
  %div334 = fdiv float %333, %332
  store float %div334, ptr %temp, align 4, !tbaa !16
  br label %if.end335

if.end335:                                        ; preds = %if.then329, %for.end327
  %334 = load float, ptr %temp, align 4, !tbaa !16
  %335 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %336 = load i32, ptr %jx, align 4, !tbaa !8
  %idxprom336 = sext i32 %336 to i64
  %arrayidx337 = getelementptr inbounds float, ptr %335, i64 %idxprom336
  store float %334, ptr %arrayidx337, align 4, !tbaa !16
  %337 = load ptr, ptr %incx.addr, align 8, !tbaa !4
  %338 = load i32, ptr %337, align 4, !tbaa !8
  %339 = load i32, ptr %jx, align 4, !tbaa !8
  %add338 = add nsw i32 %339, %338
  store i32 %add338, ptr %jx, align 4, !tbaa !8
  %340 = load i32, ptr %j, align 4, !tbaa !8
  %341 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %342 = load i32, ptr %341, align 4, !tbaa !8
  %cmp339 = icmp sgt i32 %340, %342
  br i1 %cmp339, label %if.then340, label %if.end342

if.then340:                                       ; preds = %if.end335
  %343 = load ptr, ptr %incx.addr, align 8, !tbaa !4
  %344 = load i32, ptr %343, align 4, !tbaa !8
  %345 = load i32, ptr %kx, align 4, !tbaa !8
  %add341 = add nsw i32 %345, %344
  store i32 %add341, ptr %kx, align 4, !tbaa !8
  br label %if.end342

if.end342:                                        ; preds = %if.then340, %if.end335
  br label %for.inc343

for.inc343:                                       ; preds = %if.end342
  %346 = load i32, ptr %j, align 4, !tbaa !8
  %inc344 = add nsw i32 %346, 1
  store i32 %inc344, ptr %j, align 4, !tbaa !8
  br label %for.cond299

for.end345:                                       ; preds = %for.cond299
  br label %if.end346

if.end346:                                        ; preds = %for.end345, %for.end297
  br label %if.end444

if.else347:                                       ; preds = %if.else250
  %347 = load ptr, ptr %incx.addr, align 8, !tbaa !4
  %348 = load i32, ptr %347, align 4, !tbaa !8
  %cmp348 = icmp eq i32 %348, 1
  br i1 %cmp348, label %if.then349, label %if.else391

if.then349:                                       ; preds = %if.else347
  %349 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %350 = load i32, ptr %349, align 4, !tbaa !8
  store i32 %350, ptr %j, align 4, !tbaa !8
  br label %for.cond350

for.cond350:                                      ; preds = %for.inc388, %if.then349
  %351 = load i32, ptr %j, align 4, !tbaa !8
  %cmp351 = icmp sge i32 %351, 1
  br i1 %cmp351, label %for.body352, label %for.end390

for.body352:                                      ; preds = %for.cond350
  %352 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %353 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom353 = sext i32 %353 to i64
  %arrayidx354 = getelementptr inbounds float, ptr %352, i64 %idxprom353
  %354 = load float, ptr %arrayidx354, align 4, !tbaa !16
  store float %354, ptr %temp, align 4, !tbaa !16
  %355 = load i32, ptr %j, align 4, !tbaa !8
  %sub355 = sub nsw i32 1, %355
  store i32 %sub355, ptr %l, align 4, !tbaa !8
  %356 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %357 = load i32, ptr %356, align 4, !tbaa !8
  store i32 %357, ptr %i__1, align 4, !tbaa !8
  %358 = load i32, ptr %j, align 4, !tbaa !8
  %359 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %360 = load i32, ptr %359, align 4, !tbaa !8
  %add356 = add nsw i32 %358, %360
  store i32 %add356, ptr %i__3, align 4, !tbaa !8
  %361 = load i32, ptr %j, align 4, !tbaa !8
  %add357 = add nsw i32 %361, 1
  store i32 %add357, ptr %i__4, align 4, !tbaa !8
  %362 = load i32, ptr %i__1, align 4, !tbaa !8
  %363 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp358 = icmp sle i32 %362, %363
  br i1 %cmp358, label %cond.true359, label %cond.false360

cond.true359:                                     ; preds = %for.body352
  %364 = load i32, ptr %i__1, align 4, !tbaa !8
  br label %cond.end361

cond.false360:                                    ; preds = %for.body352
  %365 = load i32, ptr %i__3, align 4, !tbaa !8
  br label %cond.end361

cond.end361:                                      ; preds = %cond.false360, %cond.true359
  %cond362 = phi i32 [ %364, %cond.true359 ], [ %365, %cond.false360 ]
  store i32 %cond362, ptr %i__, align 4, !tbaa !8
  br label %for.cond363

for.cond363:                                      ; preds = %for.inc375, %cond.end361
  %366 = load i32, ptr %i__, align 4, !tbaa !8
  %367 = load i32, ptr %i__4, align 4, !tbaa !8
  %cmp364 = icmp sge i32 %366, %367
  br i1 %cmp364, label %for.body365, label %for.end377

for.body365:                                      ; preds = %for.cond363
  %368 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %369 = load i32, ptr %l, align 4, !tbaa !8
  %370 = load i32, ptr %i__, align 4, !tbaa !8
  %add366 = add nsw i32 %369, %370
  %371 = load i32, ptr %j, align 4, !tbaa !8
  %372 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul367 = mul nsw i32 %371, %372
  %add368 = add nsw i32 %add366, %mul367
  %idxprom369 = sext i32 %add368 to i64
  %arrayidx370 = getelementptr inbounds float, ptr %368, i64 %idxprom369
  %373 = load float, ptr %arrayidx370, align 4, !tbaa !16
  %374 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %375 = load i32, ptr %i__, align 4, !tbaa !8
  %idxprom371 = sext i32 %375 to i64
  %arrayidx372 = getelementptr inbounds float, ptr %374, i64 %idxprom371
  %376 = load float, ptr %arrayidx372, align 4, !tbaa !16
  %377 = load float, ptr %temp, align 4, !tbaa !16
  %neg374 = fneg float %373
  %378 = call float @llvm.fmuladd.f32(float %neg374, float %376, float %377)
  store float %378, ptr %temp, align 4, !tbaa !16
  br label %for.inc375

for.inc375:                                       ; preds = %for.body365
  %379 = load i32, ptr %i__, align 4, !tbaa !8
  %dec376 = add nsw i32 %379, -1
  store i32 %dec376, ptr %i__, align 4, !tbaa !8
  br label %for.cond363

for.end377:                                       ; preds = %for.cond363
  %380 = load i32, ptr %nounit, align 4, !tbaa !8
  %tobool378 = icmp ne i32 %380, 0
  br i1 %tobool378, label %if.then379, label %if.end385

if.then379:                                       ; preds = %for.end377
  %381 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %382 = load i32, ptr %j, align 4, !tbaa !8
  %383 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul380 = mul nsw i32 %382, %383
  %add381 = add nsw i32 %mul380, 1
  %idxprom382 = sext i32 %add381 to i64
  %arrayidx383 = getelementptr inbounds float, ptr %381, i64 %idxprom382
  %384 = load float, ptr %arrayidx383, align 4, !tbaa !16
  %385 = load float, ptr %temp, align 4, !tbaa !16
  %div384 = fdiv float %385, %384
  store float %div384, ptr %temp, align 4, !tbaa !16
  br label %if.end385

if.end385:                                        ; preds = %if.then379, %for.end377
  %386 = load float, ptr %temp, align 4, !tbaa !16
  %387 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %388 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom386 = sext i32 %388 to i64
  %arrayidx387 = getelementptr inbounds float, ptr %387, i64 %idxprom386
  store float %386, ptr %arrayidx387, align 4, !tbaa !16
  br label %for.inc388

for.inc388:                                       ; preds = %if.end385
  %389 = load i32, ptr %j, align 4, !tbaa !8
  %dec389 = add nsw i32 %389, -1
  store i32 %dec389, ptr %j, align 4, !tbaa !8
  br label %for.cond350

for.end390:                                       ; preds = %for.cond350
  br label %if.end443

if.else391:                                       ; preds = %if.else347
  %390 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %391 = load i32, ptr %390, align 4, !tbaa !8
  %sub392 = sub nsw i32 %391, 1
  %392 = load ptr, ptr %incx.addr, align 8, !tbaa !4
  %393 = load i32, ptr %392, align 4, !tbaa !8
  %mul393 = mul nsw i32 %sub392, %393
  %394 = load i32, ptr %kx, align 4, !tbaa !8
  %add394 = add nsw i32 %394, %mul393
  store i32 %add394, ptr %kx, align 4, !tbaa !8
  %395 = load i32, ptr %kx, align 4, !tbaa !8
  store i32 %395, ptr %jx, align 4, !tbaa !8
  %396 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %397 = load i32, ptr %396, align 4, !tbaa !8
  store i32 %397, ptr %j, align 4, !tbaa !8
  br label %for.cond395

for.cond395:                                      ; preds = %for.inc440, %if.else391
  %398 = load i32, ptr %j, align 4, !tbaa !8
  %cmp396 = icmp sge i32 %398, 1
  br i1 %cmp396, label %for.body397, label %for.end442

for.body397:                                      ; preds = %for.cond395
  %399 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %400 = load i32, ptr %jx, align 4, !tbaa !8
  %idxprom398 = sext i32 %400 to i64
  %arrayidx399 = getelementptr inbounds float, ptr %399, i64 %idxprom398
  %401 = load float, ptr %arrayidx399, align 4, !tbaa !16
  store float %401, ptr %temp, align 4, !tbaa !16
  %402 = load i32, ptr %kx, align 4, !tbaa !8
  store i32 %402, ptr %ix, align 4, !tbaa !8
  %403 = load i32, ptr %j, align 4, !tbaa !8
  %sub400 = sub nsw i32 1, %403
  store i32 %sub400, ptr %l, align 4, !tbaa !8
  %404 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %405 = load i32, ptr %404, align 4, !tbaa !8
  store i32 %405, ptr %i__4, align 4, !tbaa !8
  %406 = load i32, ptr %j, align 4, !tbaa !8
  %407 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %408 = load i32, ptr %407, align 4, !tbaa !8
  %add401 = add nsw i32 %406, %408
  store i32 %add401, ptr %i__1, align 4, !tbaa !8
  %409 = load i32, ptr %j, align 4, !tbaa !8
  %add402 = add nsw i32 %409, 1
  store i32 %add402, ptr %i__3, align 4, !tbaa !8
  %410 = load i32, ptr %i__4, align 4, !tbaa !8
  %411 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp403 = icmp sle i32 %410, %411
  br i1 %cmp403, label %cond.true404, label %cond.false405

cond.true404:                                     ; preds = %for.body397
  %412 = load i32, ptr %i__4, align 4, !tbaa !8
  br label %cond.end406

cond.false405:                                    ; preds = %for.body397
  %413 = load i32, ptr %i__1, align 4, !tbaa !8
  br label %cond.end406

cond.end406:                                      ; preds = %cond.false405, %cond.true404
  %cond407 = phi i32 [ %412, %cond.true404 ], [ %413, %cond.false405 ]
  store i32 %cond407, ptr %i__, align 4, !tbaa !8
  br label %for.cond408

for.cond408:                                      ; preds = %for.inc421, %cond.end406
  %414 = load i32, ptr %i__, align 4, !tbaa !8
  %415 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp409 = icmp sge i32 %414, %415
  br i1 %cmp409, label %for.body410, label %for.end423

for.body410:                                      ; preds = %for.cond408
  %416 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %417 = load i32, ptr %l, align 4, !tbaa !8
  %418 = load i32, ptr %i__, align 4, !tbaa !8
  %add411 = add nsw i32 %417, %418
  %419 = load i32, ptr %j, align 4, !tbaa !8
  %420 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul412 = mul nsw i32 %419, %420
  %add413 = add nsw i32 %add411, %mul412
  %idxprom414 = sext i32 %add413 to i64
  %arrayidx415 = getelementptr inbounds float, ptr %416, i64 %idxprom414
  %421 = load float, ptr %arrayidx415, align 4, !tbaa !16
  %422 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %423 = load i32, ptr %ix, align 4, !tbaa !8
  %idxprom416 = sext i32 %423 to i64
  %arrayidx417 = getelementptr inbounds float, ptr %422, i64 %idxprom416
  %424 = load float, ptr %arrayidx417, align 4, !tbaa !16
  %425 = load float, ptr %temp, align 4, !tbaa !16
  %neg419 = fneg float %421
  %426 = call float @llvm.fmuladd.f32(float %neg419, float %424, float %425)
  store float %426, ptr %temp, align 4, !tbaa !16
  %427 = load ptr, ptr %incx.addr, align 8, !tbaa !4
  %428 = load i32, ptr %427, align 4, !tbaa !8
  %429 = load i32, ptr %ix, align 4, !tbaa !8
  %sub420 = sub nsw i32 %429, %428
  store i32 %sub420, ptr %ix, align 4, !tbaa !8
  br label %for.inc421

for.inc421:                                       ; preds = %for.body410
  %430 = load i32, ptr %i__, align 4, !tbaa !8
  %dec422 = add nsw i32 %430, -1
  store i32 %dec422, ptr %i__, align 4, !tbaa !8
  br label %for.cond408

for.end423:                                       ; preds = %for.cond408
  %431 = load i32, ptr %nounit, align 4, !tbaa !8
  %tobool424 = icmp ne i32 %431, 0
  br i1 %tobool424, label %if.then425, label %if.end431

if.then425:                                       ; preds = %for.end423
  %432 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %433 = load i32, ptr %j, align 4, !tbaa !8
  %434 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul426 = mul nsw i32 %433, %434
  %add427 = add nsw i32 %mul426, 1
  %idxprom428 = sext i32 %add427 to i64
  %arrayidx429 = getelementptr inbounds float, ptr %432, i64 %idxprom428
  %435 = load float, ptr %arrayidx429, align 4, !tbaa !16
  %436 = load float, ptr %temp, align 4, !tbaa !16
  %div430 = fdiv float %436, %435
  store float %div430, ptr %temp, align 4, !tbaa !16
  br label %if.end431

if.end431:                                        ; preds = %if.then425, %for.end423
  %437 = load float, ptr %temp, align 4, !tbaa !16
  %438 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %439 = load i32, ptr %jx, align 4, !tbaa !8
  %idxprom432 = sext i32 %439 to i64
  %arrayidx433 = getelementptr inbounds float, ptr %438, i64 %idxprom432
  store float %437, ptr %arrayidx433, align 4, !tbaa !16
  %440 = load ptr, ptr %incx.addr, align 8, !tbaa !4
  %441 = load i32, ptr %440, align 4, !tbaa !8
  %442 = load i32, ptr %jx, align 4, !tbaa !8
  %sub434 = sub nsw i32 %442, %441
  store i32 %sub434, ptr %jx, align 4, !tbaa !8
  %443 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %444 = load i32, ptr %443, align 4, !tbaa !8
  %445 = load i32, ptr %j, align 4, !tbaa !8
  %sub435 = sub nsw i32 %444, %445
  %446 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %447 = load i32, ptr %446, align 4, !tbaa !8
  %cmp436 = icmp sge i32 %sub435, %447
  br i1 %cmp436, label %if.then437, label %if.end439

if.then437:                                       ; preds = %if.end431
  %448 = load ptr, ptr %incx.addr, align 8, !tbaa !4
  %449 = load i32, ptr %448, align 4, !tbaa !8
  %450 = load i32, ptr %kx, align 4, !tbaa !8
  %sub438 = sub nsw i32 %450, %449
  store i32 %sub438, ptr %kx, align 4, !tbaa !8
  br label %if.end439

if.end439:                                        ; preds = %if.then437, %if.end431
  br label %for.inc440

for.inc440:                                       ; preds = %if.end439
  %451 = load i32, ptr %j, align 4, !tbaa !8
  %dec441 = add nsw i32 %451, -1
  store i32 %dec441, ptr %j, align 4, !tbaa !8
  br label %for.cond395

for.end442:                                       ; preds = %for.cond395
  br label %if.end443

if.end443:                                        ; preds = %for.end442, %for.end390
  br label %if.end444

if.end444:                                        ; preds = %if.end443, %if.end346
  br label %if.end445

if.end445:                                        ; preds = %if.end444, %if.end249
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end445, %if.then42, %if.then38
  call void @llvm.lifetime.end.p0(i64 4, ptr %nounit) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %kx) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %jx) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %ix) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %kplus1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %l) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %temp) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %info) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__4) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %a_offset) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %a_dim1) #4
  %452 = load i32, ptr %retval, align 4
  ret i32 %452
}

; Function Attrs: nounwind uwtable
define i32 @ztbsv_(ptr noundef %uplo, ptr noundef %trans, ptr noundef %diag, ptr noundef %n, ptr noundef %k, ptr noundef %a, ptr noundef %lda, ptr noundef %x, ptr noundef %incx) #0 {
entry:
  %retval = alloca i32, align 4
  %uplo.addr = alloca ptr, align 8
  %trans.addr = alloca ptr, align 8
  %diag.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %k.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %lda.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %incx.addr = alloca ptr, align 8
  %a_dim1 = alloca i32, align 4
  %a_offset = alloca i32, align 4
  %i__1 = alloca i32, align 4
  %i__2 = alloca i32, align 4
  %i__3 = alloca i32, align 4
  %i__4 = alloca i32, align 4
  %i__5 = alloca i32, align 4
  %z__1 = alloca %struct.dcomplex, align 8
  %z__2 = alloca %struct.dcomplex, align 8
  %z__3 = alloca %struct.dcomplex, align 8
  %info = alloca i32, align 4
  %temp = alloca %struct.dcomplex, align 8
  %i__ = alloca i32, align 4
  %j = alloca i32, align 4
  %l = alloca i32, align 4
  %kplus1 = alloca i32, align 4
  %ix = alloca i32, align 4
  %jx = alloca i32, align 4
  %kx = alloca i32, align 4
  %noconj = alloca i32, align 4
  %nounit = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %uplo, ptr %uplo.addr, align 8, !tbaa !4
  store ptr %trans, ptr %trans.addr, align 8, !tbaa !4
  store ptr %diag, ptr %diag.addr, align 8, !tbaa !4
  store ptr %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %k, ptr %k.addr, align 8, !tbaa !4
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store ptr %lda, ptr %lda.addr, align 8, !tbaa !4
  store ptr %x, ptr %x.addr, align 8, !tbaa !4
  store ptr %incx, ptr %incx.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %a_dim1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %a_offset) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__2) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__3) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__4) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__5) #4
  call void @llvm.lifetime.start.p0(i64 16, ptr %z__1) #4
  call void @llvm.lifetime.start.p0(i64 16, ptr %z__2) #4
  call void @llvm.lifetime.start.p0(i64 16, ptr %z__3) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %info) #4
  call void @llvm.lifetime.start.p0(i64 16, ptr %temp) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %l) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %kplus1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ix) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %jx) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %kx) #4
  store i32 0, ptr %kx, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %noconj) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %nounit) #4
  %0 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %1 = load i32, ptr %0, align 4, !tbaa !8
  store i32 %1, ptr %a_dim1, align 4, !tbaa !8
  %2 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul = mul nsw i32 %2, 1
  %add = add nsw i32 1, %mul
  store i32 %add, ptr %a_offset, align 4, !tbaa !8
  %3 = load i32, ptr %a_offset, align 4, !tbaa !8
  %4 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %idx.ext = sext i32 %3 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds %struct.dcomplex, ptr %4, i64 %idx.neg
  store ptr %add.ptr, ptr %a.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds %struct.dcomplex, ptr %5, i32 -1
  store ptr %incdec.ptr, ptr %x.addr, align 8, !tbaa !4
  store i32 0, ptr %info, align 4, !tbaa !8
  %6 = load ptr, ptr %uplo.addr, align 8, !tbaa !4
  %call = call i32 @lsame_(ptr noundef %6, ptr noundef @.str, i32 noundef 1, i32 noundef 1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %7 = load ptr, ptr %uplo.addr, align 8, !tbaa !4
  %call1 = call i32 @lsame_(ptr noundef %7, ptr noundef @.str.1, i32 noundef 1, i32 noundef 1)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store i32 1, ptr %info, align 4, !tbaa !8
  br label %if.end36

if.else:                                          ; preds = %land.lhs.true, %entry
  %8 = load ptr, ptr %trans.addr, align 8, !tbaa !4
  %call3 = call i32 @lsame_(ptr noundef %8, ptr noundef @.str.2, i32 noundef 1, i32 noundef 1)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.else12, label %land.lhs.true5

land.lhs.true5:                                   ; preds = %if.else
  %9 = load ptr, ptr %trans.addr, align 8, !tbaa !4
  %call6 = call i32 @lsame_(ptr noundef %9, ptr noundef @.str.3, i32 noundef 1, i32 noundef 1)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.else12, label %land.lhs.true8

land.lhs.true8:                                   ; preds = %land.lhs.true5
  %10 = load ptr, ptr %trans.addr, align 8, !tbaa !4
  %call9 = call i32 @lsame_(ptr noundef %10, ptr noundef @.str.4, i32 noundef 1, i32 noundef 1)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.else12, label %if.then11

if.then11:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %info, align 4, !tbaa !8
  br label %if.end35

if.else12:                                        ; preds = %land.lhs.true8, %land.lhs.true5, %if.else
  %11 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %call13 = call i32 @lsame_(ptr noundef %11, ptr noundef @.str, i32 noundef 1, i32 noundef 1)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.else19, label %land.lhs.true15

land.lhs.true15:                                  ; preds = %if.else12
  %12 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %call16 = call i32 @lsame_(ptr noundef %12, ptr noundef @.str.2, i32 noundef 1, i32 noundef 1)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.else19, label %if.then18

if.then18:                                        ; preds = %land.lhs.true15
  store i32 3, ptr %info, align 4, !tbaa !8
  br label %if.end34

if.else19:                                        ; preds = %land.lhs.true15, %if.else12
  %13 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %14 = load i32, ptr %13, align 4, !tbaa !8
  %cmp = icmp slt i32 %14, 0
  br i1 %cmp, label %if.then20, label %if.else21

if.then20:                                        ; preds = %if.else19
  store i32 4, ptr %info, align 4, !tbaa !8
  br label %if.end33

if.else21:                                        ; preds = %if.else19
  %15 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %16 = load i32, ptr %15, align 4, !tbaa !8
  %cmp22 = icmp slt i32 %16, 0
  br i1 %cmp22, label %if.then23, label %if.else24

if.then23:                                        ; preds = %if.else21
  store i32 5, ptr %info, align 4, !tbaa !8
  br label %if.end32

if.else24:                                        ; preds = %if.else21
  %17 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %18 = load i32, ptr %17, align 4, !tbaa !8
  %19 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %20 = load i32, ptr %19, align 4, !tbaa !8
  %add25 = add nsw i32 %20, 1
  %cmp26 = icmp slt i32 %18, %add25
  br i1 %cmp26, label %if.then27, label %if.else28

if.then27:                                        ; preds = %if.else24
  store i32 7, ptr %info, align 4, !tbaa !8
  br label %if.end31

if.else28:                                        ; preds = %if.else24
  %21 = load ptr, ptr %incx.addr, align 8, !tbaa !4
  %22 = load i32, ptr %21, align 4, !tbaa !8
  %cmp29 = icmp eq i32 %22, 0
  br i1 %cmp29, label %if.then30, label %if.end

if.then30:                                        ; preds = %if.else28
  store i32 9, ptr %info, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then30, %if.else28
  br label %if.end31

if.end31:                                         ; preds = %if.end, %if.then27
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %if.then23
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.then20
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.then18
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.then11
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.then
  %23 = load i32, ptr %info, align 4, !tbaa !8
  %cmp37 = icmp ne i32 %23, 0
  br i1 %cmp37, label %if.then38, label %if.end40

if.then38:                                        ; preds = %if.end36
  %call39 = call i32 @xerbla_(ptr noundef @.str.8, ptr noundef %info, i32 noundef 6)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end40:                                         ; preds = %if.end36
  %24 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %25 = load i32, ptr %24, align 4, !tbaa !8
  %cmp41 = icmp eq i32 %25, 0
  br i1 %cmp41, label %if.then42, label %if.end43

if.then42:                                        ; preds = %if.end40
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end43:                                         ; preds = %if.end40
  %26 = load ptr, ptr %trans.addr, align 8, !tbaa !4
  %call44 = call i32 @lsame_(ptr noundef %26, ptr noundef @.str.3, i32 noundef 1, i32 noundef 1)
  store i32 %call44, ptr %noconj, align 4, !tbaa !8
  %27 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %call45 = call i32 @lsame_(ptr noundef %27, ptr noundef @.str.2, i32 noundef 1, i32 noundef 1)
  store i32 %call45, ptr %nounit, align 4, !tbaa !8
  %28 = load ptr, ptr %incx.addr, align 8, !tbaa !4
  %29 = load i32, ptr %28, align 4, !tbaa !8
  %cmp46 = icmp sle i32 %29, 0
  br i1 %cmp46, label %if.then47, label %if.else50

if.then47:                                        ; preds = %if.end43
  %30 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %31 = load i32, ptr %30, align 4, !tbaa !8
  %sub = sub nsw i32 %31, 1
  %32 = load ptr, ptr %incx.addr, align 8, !tbaa !4
  %33 = load i32, ptr %32, align 4, !tbaa !8
  %mul48 = mul nsw i32 %sub, %33
  %sub49 = sub nsw i32 1, %mul48
  store i32 %sub49, ptr %kx, align 4, !tbaa !8
  br label %if.end54

if.else50:                                        ; preds = %if.end43
  %34 = load ptr, ptr %incx.addr, align 8, !tbaa !4
  %35 = load i32, ptr %34, align 4, !tbaa !8
  %cmp51 = icmp ne i32 %35, 1
  br i1 %cmp51, label %if.then52, label %if.end53

if.then52:                                        ; preds = %if.else50
  store i32 1, ptr %kx, align 4, !tbaa !8
  br label %if.end53

if.end53:                                         ; preds = %if.then52, %if.else50
  br label %if.end54

if.end54:                                         ; preds = %if.end53, %if.then47
  %36 = load ptr, ptr %trans.addr, align 8, !tbaa !4
  %call55 = call i32 @lsame_(ptr noundef %36, ptr noundef @.str.2, i32 noundef 1, i32 noundef 1)
  %tobool56 = icmp ne i32 %call55, 0
  br i1 %tobool56, label %if.then57, label %if.else473

if.then57:                                        ; preds = %if.end54
  %37 = load ptr, ptr %uplo.addr, align 8, !tbaa !4
  %call58 = call i32 @lsame_(ptr noundef %37, ptr noundef @.str, i32 noundef 1, i32 noundef 1)
  %tobool59 = icmp ne i32 %call58, 0
  br i1 %tobool59, label %if.then60, label %if.else261

if.then60:                                        ; preds = %if.then57
  %38 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %39 = load i32, ptr %38, align 4, !tbaa !8
  %add61 = add nsw i32 %39, 1
  store i32 %add61, ptr %kplus1, align 4, !tbaa !8
  %40 = load ptr, ptr %incx.addr, align 8, !tbaa !4
  %41 = load i32, ptr %40, align 4, !tbaa !8
  %cmp62 = icmp eq i32 %41, 1
  br i1 %cmp62, label %if.then63, label %if.else151

if.then63:                                        ; preds = %if.then60
  %42 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %43 = load i32, ptr %42, align 4, !tbaa !8
  store i32 %43, ptr %j, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc148, %if.then63
  %44 = load i32, ptr %j, align 4, !tbaa !8
  %cmp64 = icmp sge i32 %44, 1
  br i1 %cmp64, label %for.body, label %for.end150

for.body:                                         ; preds = %for.cond
  %45 = load i32, ptr %j, align 4, !tbaa !8
  store i32 %45, ptr %i__1, align 4, !tbaa !8
  %46 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %47 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom = sext i32 %47 to i64
  %arrayidx = getelementptr inbounds %struct.dcomplex, ptr %46, i64 %idxprom
  %real = getelementptr inbounds %struct.dcomplex, ptr %arrayidx, i32 0, i32 0
  %48 = load double, ptr %real, align 8, !tbaa !17
  %cmp65 = fcmp une double %48, 0.000000e+00
  br i1 %cmp65, label %if.then69, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %49 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %50 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom66 = sext i32 %50 to i64
  %arrayidx67 = getelementptr inbounds %struct.dcomplex, ptr %49, i64 %idxprom66
  %imag = getelementptr inbounds %struct.dcomplex, ptr %arrayidx67, i32 0, i32 1
  %51 = load double, ptr %imag, align 8, !tbaa !19
  %cmp68 = fcmp une double %51, 0.000000e+00
  br i1 %cmp68, label %if.then69, label %if.end147

if.then69:                                        ; preds = %lor.lhs.false, %for.body
  %52 = load i32, ptr %kplus1, align 4, !tbaa !8
  %53 = load i32, ptr %j, align 4, !tbaa !8
  %sub70 = sub nsw i32 %52, %53
  store i32 %sub70, ptr %l, align 4, !tbaa !8
  %54 = load i32, ptr %nounit, align 4, !tbaa !8
  %tobool71 = icmp ne i32 %54, 0
  br i1 %tobool71, label %if.then72, label %if.end87

if.then72:                                        ; preds = %if.then69
  %55 = load i32, ptr %j, align 4, !tbaa !8
  store i32 %55, ptr %i__1, align 4, !tbaa !8
  %56 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %57 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom73 = sext i32 %57 to i64
  %arrayidx74 = getelementptr inbounds %struct.dcomplex, ptr %56, i64 %idxprom73
  %58 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %59 = load i32, ptr %kplus1, align 4, !tbaa !8
  %60 = load i32, ptr %j, align 4, !tbaa !8
  %61 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul75 = mul nsw i32 %60, %61
  %add76 = add nsw i32 %59, %mul75
  %idxprom77 = sext i32 %add76 to i64
  %arrayidx78 = getelementptr inbounds %struct.dcomplex, ptr %58, i64 %idxprom77
  call void @bla_z_div(ptr noundef %z__1, ptr noundef %arrayidx74, ptr noundef %arrayidx78)
  %real79 = getelementptr inbounds %struct.dcomplex, ptr %z__1, i32 0, i32 0
  %62 = load double, ptr %real79, align 8, !tbaa !17
  %63 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %64 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom80 = sext i32 %64 to i64
  %arrayidx81 = getelementptr inbounds %struct.dcomplex, ptr %63, i64 %idxprom80
  %real82 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx81, i32 0, i32 0
  store double %62, ptr %real82, align 8, !tbaa !17
  %imag83 = getelementptr inbounds %struct.dcomplex, ptr %z__1, i32 0, i32 1
  %65 = load double, ptr %imag83, align 8, !tbaa !19
  %66 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %67 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom84 = sext i32 %67 to i64
  %arrayidx85 = getelementptr inbounds %struct.dcomplex, ptr %66, i64 %idxprom84
  %imag86 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx85, i32 0, i32 1
  store double %65, ptr %imag86, align 8, !tbaa !19
  br label %if.end87

if.end87:                                         ; preds = %if.then72, %if.then69
  %68 = load i32, ptr %j, align 4, !tbaa !8
  store i32 %68, ptr %i__1, align 4, !tbaa !8
  %69 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %70 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom88 = sext i32 %70 to i64
  %arrayidx89 = getelementptr inbounds %struct.dcomplex, ptr %69, i64 %idxprom88
  %real90 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx89, i32 0, i32 0
  %71 = load double, ptr %real90, align 8, !tbaa !17
  %real91 = getelementptr inbounds %struct.dcomplex, ptr %temp, i32 0, i32 0
  store double %71, ptr %real91, align 8, !tbaa !17
  %72 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %73 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom92 = sext i32 %73 to i64
  %arrayidx93 = getelementptr inbounds %struct.dcomplex, ptr %72, i64 %idxprom92
  %imag94 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx93, i32 0, i32 1
  %74 = load double, ptr %imag94, align 8, !tbaa !19
  %imag95 = getelementptr inbounds %struct.dcomplex, ptr %temp, i32 0, i32 1
  store double %74, ptr %imag95, align 8, !tbaa !19
  store i32 1, ptr %i__2, align 4, !tbaa !8
  %75 = load i32, ptr %j, align 4, !tbaa !8
  %76 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %77 = load i32, ptr %76, align 4, !tbaa !8
  %sub96 = sub nsw i32 %75, %77
  store i32 %sub96, ptr %i__3, align 4, !tbaa !8
  %78 = load i32, ptr %i__2, align 4, !tbaa !8
  %79 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp97 = icmp sge i32 %78, %79
  br i1 %cmp97, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end87
  %80 = load i32, ptr %i__2, align 4, !tbaa !8
  br label %cond.end

cond.false:                                       ; preds = %if.end87
  %81 = load i32, ptr %i__3, align 4, !tbaa !8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %80, %cond.true ], [ %81, %cond.false ]
  store i32 %cond, ptr %i__1, align 4, !tbaa !8
  %82 = load i32, ptr %j, align 4, !tbaa !8
  %sub98 = sub nsw i32 %82, 1
  store i32 %sub98, ptr %i__, align 4, !tbaa !8
  br label %for.cond99

for.cond99:                                       ; preds = %for.inc, %cond.end
  %83 = load i32, ptr %i__, align 4, !tbaa !8
  %84 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp100 = icmp sge i32 %83, %84
  br i1 %cmp100, label %for.body101, label %for.end

for.body101:                                      ; preds = %for.cond99
  %85 = load i32, ptr %i__, align 4, !tbaa !8
  store i32 %85, ptr %i__2, align 4, !tbaa !8
  %86 = load i32, ptr %i__, align 4, !tbaa !8
  store i32 %86, ptr %i__3, align 4, !tbaa !8
  %87 = load i32, ptr %l, align 4, !tbaa !8
  %88 = load i32, ptr %i__, align 4, !tbaa !8
  %add102 = add nsw i32 %87, %88
  %89 = load i32, ptr %j, align 4, !tbaa !8
  %90 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul103 = mul nsw i32 %89, %90
  %add104 = add nsw i32 %add102, %mul103
  store i32 %add104, ptr %i__4, align 4, !tbaa !8
  %real105 = getelementptr inbounds %struct.dcomplex, ptr %temp, i32 0, i32 0
  %91 = load double, ptr %real105, align 8, !tbaa !17
  %92 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %93 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom106 = sext i32 %93 to i64
  %arrayidx107 = getelementptr inbounds %struct.dcomplex, ptr %92, i64 %idxprom106
  %real108 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx107, i32 0, i32 0
  %94 = load double, ptr %real108, align 8, !tbaa !17
  %imag110 = getelementptr inbounds %struct.dcomplex, ptr %temp, i32 0, i32 1
  %95 = load double, ptr %imag110, align 8, !tbaa !19
  %96 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %97 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom111 = sext i32 %97 to i64
  %arrayidx112 = getelementptr inbounds %struct.dcomplex, ptr %96, i64 %idxprom111
  %imag113 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx112, i32 0, i32 1
  %98 = load double, ptr %imag113, align 8, !tbaa !19
  %mul114 = fmul double %95, %98
  %neg = fneg double %mul114
  %99 = call double @llvm.fmuladd.f64(double %91, double %94, double %neg)
  %real115 = getelementptr inbounds %struct.dcomplex, ptr %z__2, i32 0, i32 0
  store double %99, ptr %real115, align 8, !tbaa !17
  %real116 = getelementptr inbounds %struct.dcomplex, ptr %temp, i32 0, i32 0
  %100 = load double, ptr %real116, align 8, !tbaa !17
  %101 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %102 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom117 = sext i32 %102 to i64
  %arrayidx118 = getelementptr inbounds %struct.dcomplex, ptr %101, i64 %idxprom117
  %imag119 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx118, i32 0, i32 1
  %103 = load double, ptr %imag119, align 8, !tbaa !19
  %imag121 = getelementptr inbounds %struct.dcomplex, ptr %temp, i32 0, i32 1
  %104 = load double, ptr %imag121, align 8, !tbaa !19
  %105 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %106 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom122 = sext i32 %106 to i64
  %arrayidx123 = getelementptr inbounds %struct.dcomplex, ptr %105, i64 %idxprom122
  %real124 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx123, i32 0, i32 0
  %107 = load double, ptr %real124, align 8, !tbaa !17
  %mul125 = fmul double %104, %107
  %108 = call double @llvm.fmuladd.f64(double %100, double %103, double %mul125)
  %imag126 = getelementptr inbounds %struct.dcomplex, ptr %z__2, i32 0, i32 1
  store double %108, ptr %imag126, align 8, !tbaa !19
  %109 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %110 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom127 = sext i32 %110 to i64
  %arrayidx128 = getelementptr inbounds %struct.dcomplex, ptr %109, i64 %idxprom127
  %real129 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx128, i32 0, i32 0
  %111 = load double, ptr %real129, align 8, !tbaa !17
  %real130 = getelementptr inbounds %struct.dcomplex, ptr %z__2, i32 0, i32 0
  %112 = load double, ptr %real130, align 8, !tbaa !17
  %sub131 = fsub double %111, %112
  %real132 = getelementptr inbounds %struct.dcomplex, ptr %z__1, i32 0, i32 0
  store double %sub131, ptr %real132, align 8, !tbaa !17
  %113 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %114 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom133 = sext i32 %114 to i64
  %arrayidx134 = getelementptr inbounds %struct.dcomplex, ptr %113, i64 %idxprom133
  %imag135 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx134, i32 0, i32 1
  %115 = load double, ptr %imag135, align 8, !tbaa !19
  %imag136 = getelementptr inbounds %struct.dcomplex, ptr %z__2, i32 0, i32 1
  %116 = load double, ptr %imag136, align 8, !tbaa !19
  %sub137 = fsub double %115, %116
  %imag138 = getelementptr inbounds %struct.dcomplex, ptr %z__1, i32 0, i32 1
  store double %sub137, ptr %imag138, align 8, !tbaa !19
  %real139 = getelementptr inbounds %struct.dcomplex, ptr %z__1, i32 0, i32 0
  %117 = load double, ptr %real139, align 8, !tbaa !17
  %118 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %119 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom140 = sext i32 %119 to i64
  %arrayidx141 = getelementptr inbounds %struct.dcomplex, ptr %118, i64 %idxprom140
  %real142 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx141, i32 0, i32 0
  store double %117, ptr %real142, align 8, !tbaa !17
  %imag143 = getelementptr inbounds %struct.dcomplex, ptr %z__1, i32 0, i32 1
  %120 = load double, ptr %imag143, align 8, !tbaa !19
  %121 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %122 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom144 = sext i32 %122 to i64
  %arrayidx145 = getelementptr inbounds %struct.dcomplex, ptr %121, i64 %idxprom144
  %imag146 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx145, i32 0, i32 1
  store double %120, ptr %imag146, align 8, !tbaa !19
  br label %for.inc

for.inc:                                          ; preds = %for.body101
  %123 = load i32, ptr %i__, align 4, !tbaa !8
  %dec = add nsw i32 %123, -1
  store i32 %dec, ptr %i__, align 4, !tbaa !8
  br label %for.cond99

for.end:                                          ; preds = %for.cond99
  br label %if.end147

if.end147:                                        ; preds = %for.end, %lor.lhs.false
  br label %for.inc148

for.inc148:                                       ; preds = %if.end147
  %124 = load i32, ptr %j, align 4, !tbaa !8
  %dec149 = add nsw i32 %124, -1
  store i32 %dec149, ptr %j, align 4, !tbaa !8
  br label %for.cond

for.end150:                                       ; preds = %for.cond
  br label %if.end260

if.else151:                                       ; preds = %if.then60
  %125 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %126 = load i32, ptr %125, align 4, !tbaa !8
  %sub152 = sub nsw i32 %126, 1
  %127 = load ptr, ptr %incx.addr, align 8, !tbaa !4
  %128 = load i32, ptr %127, align 4, !tbaa !8
  %mul153 = mul nsw i32 %sub152, %128
  %129 = load i32, ptr %kx, align 4, !tbaa !8
  %add154 = add nsw i32 %129, %mul153
  store i32 %add154, ptr %kx, align 4, !tbaa !8
  %130 = load i32, ptr %kx, align 4, !tbaa !8
  store i32 %130, ptr %jx, align 4, !tbaa !8
  %131 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %132 = load i32, ptr %131, align 4, !tbaa !8
  store i32 %132, ptr %j, align 4, !tbaa !8
  br label %for.cond155

for.cond155:                                      ; preds = %for.inc257, %if.else151
  %133 = load i32, ptr %j, align 4, !tbaa !8
  %cmp156 = icmp sge i32 %133, 1
  br i1 %cmp156, label %for.body157, label %for.end259

for.body157:                                      ; preds = %for.cond155
  %134 = load ptr, ptr %incx.addr, align 8, !tbaa !4
  %135 = load i32, ptr %134, align 4, !tbaa !8
  %136 = load i32, ptr %kx, align 4, !tbaa !8
  %sub158 = sub nsw i32 %136, %135
  store i32 %sub158, ptr %kx, align 4, !tbaa !8
  %137 = load i32, ptr %jx, align 4, !tbaa !8
  store i32 %137, ptr %i__1, align 4, !tbaa !8
  %138 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %139 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom159 = sext i32 %139 to i64
  %arrayidx160 = getelementptr inbounds %struct.dcomplex, ptr %138, i64 %idxprom159
  %real161 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx160, i32 0, i32 0
  %140 = load double, ptr %real161, align 8, !tbaa !17
  %cmp162 = fcmp une double %140, 0.000000e+00
  br i1 %cmp162, label %if.then168, label %lor.lhs.false163

lor.lhs.false163:                                 ; preds = %for.body157
  %141 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %142 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom164 = sext i32 %142 to i64
  %arrayidx165 = getelementptr inbounds %struct.dcomplex, ptr %141, i64 %idxprom164
  %imag166 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx165, i32 0, i32 1
  %143 = load double, ptr %imag166, align 8, !tbaa !19
  %cmp167 = fcmp une double %143, 0.000000e+00
  br i1 %cmp167, label %if.then168, label %if.end255

if.then168:                                       ; preds = %lor.lhs.false163, %for.body157
  %144 = load i32, ptr %kx, align 4, !tbaa !8
  store i32 %144, ptr %ix, align 4, !tbaa !8
  %145 = load i32, ptr %kplus1, align 4, !tbaa !8
  %146 = load i32, ptr %j, align 4, !tbaa !8
  %sub169 = sub nsw i32 %145, %146
  store i32 %sub169, ptr %l, align 4, !tbaa !8
  %147 = load i32, ptr %nounit, align 4, !tbaa !8
  %tobool170 = icmp ne i32 %147, 0
  br i1 %tobool170, label %if.then171, label %if.end186

if.then171:                                       ; preds = %if.then168
  %148 = load i32, ptr %jx, align 4, !tbaa !8
  store i32 %148, ptr %i__1, align 4, !tbaa !8
  %149 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %150 = load i32, ptr %jx, align 4, !tbaa !8
  %idxprom172 = sext i32 %150 to i64
  %arrayidx173 = getelementptr inbounds %struct.dcomplex, ptr %149, i64 %idxprom172
  %151 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %152 = load i32, ptr %kplus1, align 4, !tbaa !8
  %153 = load i32, ptr %j, align 4, !tbaa !8
  %154 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul174 = mul nsw i32 %153, %154
  %add175 = add nsw i32 %152, %mul174
  %idxprom176 = sext i32 %add175 to i64
  %arrayidx177 = getelementptr inbounds %struct.dcomplex, ptr %151, i64 %idxprom176
  call void @bla_z_div(ptr noundef %z__1, ptr noundef %arrayidx173, ptr noundef %arrayidx177)
  %real178 = getelementptr inbounds %struct.dcomplex, ptr %z__1, i32 0, i32 0
  %155 = load double, ptr %real178, align 8, !tbaa !17
  %156 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %157 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom179 = sext i32 %157 to i64
  %arrayidx180 = getelementptr inbounds %struct.dcomplex, ptr %156, i64 %idxprom179
  %real181 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx180, i32 0, i32 0
  store double %155, ptr %real181, align 8, !tbaa !17
  %imag182 = getelementptr inbounds %struct.dcomplex, ptr %z__1, i32 0, i32 1
  %158 = load double, ptr %imag182, align 8, !tbaa !19
  %159 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %160 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom183 = sext i32 %160 to i64
  %arrayidx184 = getelementptr inbounds %struct.dcomplex, ptr %159, i64 %idxprom183
  %imag185 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx184, i32 0, i32 1
  store double %158, ptr %imag185, align 8, !tbaa !19
  br label %if.end186

if.end186:                                        ; preds = %if.then171, %if.then168
  %161 = load i32, ptr %jx, align 4, !tbaa !8
  store i32 %161, ptr %i__1, align 4, !tbaa !8
  %162 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %163 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom187 = sext i32 %163 to i64
  %arrayidx188 = getelementptr inbounds %struct.dcomplex, ptr %162, i64 %idxprom187
  %real189 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx188, i32 0, i32 0
  %164 = load double, ptr %real189, align 8, !tbaa !17
  %real190 = getelementptr inbounds %struct.dcomplex, ptr %temp, i32 0, i32 0
  store double %164, ptr %real190, align 8, !tbaa !17
  %165 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %166 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom191 = sext i32 %166 to i64
  %arrayidx192 = getelementptr inbounds %struct.dcomplex, ptr %165, i64 %idxprom191
  %imag193 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx192, i32 0, i32 1
  %167 = load double, ptr %imag193, align 8, !tbaa !19
  %imag194 = getelementptr inbounds %struct.dcomplex, ptr %temp, i32 0, i32 1
  store double %167, ptr %imag194, align 8, !tbaa !19
  store i32 1, ptr %i__2, align 4, !tbaa !8
  %168 = load i32, ptr %j, align 4, !tbaa !8
  %169 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %170 = load i32, ptr %169, align 4, !tbaa !8
  %sub195 = sub nsw i32 %168, %170
  store i32 %sub195, ptr %i__3, align 4, !tbaa !8
  %171 = load i32, ptr %i__2, align 4, !tbaa !8
  %172 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp196 = icmp sge i32 %171, %172
  br i1 %cmp196, label %cond.true197, label %cond.false198

cond.true197:                                     ; preds = %if.end186
  %173 = load i32, ptr %i__2, align 4, !tbaa !8
  br label %cond.end199

cond.false198:                                    ; preds = %if.end186
  %174 = load i32, ptr %i__3, align 4, !tbaa !8
  br label %cond.end199

cond.end199:                                      ; preds = %cond.false198, %cond.true197
  %cond200 = phi i32 [ %173, %cond.true197 ], [ %174, %cond.false198 ]
  store i32 %cond200, ptr %i__1, align 4, !tbaa !8
  %175 = load i32, ptr %j, align 4, !tbaa !8
  %sub201 = sub nsw i32 %175, 1
  store i32 %sub201, ptr %i__, align 4, !tbaa !8
  br label %for.cond202

for.cond202:                                      ; preds = %for.inc252, %cond.end199
  %176 = load i32, ptr %i__, align 4, !tbaa !8
  %177 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp203 = icmp sge i32 %176, %177
  br i1 %cmp203, label %for.body204, label %for.end254

for.body204:                                      ; preds = %for.cond202
  %178 = load i32, ptr %ix, align 4, !tbaa !8
  store i32 %178, ptr %i__2, align 4, !tbaa !8
  %179 = load i32, ptr %ix, align 4, !tbaa !8
  store i32 %179, ptr %i__3, align 4, !tbaa !8
  %180 = load i32, ptr %l, align 4, !tbaa !8
  %181 = load i32, ptr %i__, align 4, !tbaa !8
  %add205 = add nsw i32 %180, %181
  %182 = load i32, ptr %j, align 4, !tbaa !8
  %183 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul206 = mul nsw i32 %182, %183
  %add207 = add nsw i32 %add205, %mul206
  store i32 %add207, ptr %i__4, align 4, !tbaa !8
  %real208 = getelementptr inbounds %struct.dcomplex, ptr %temp, i32 0, i32 0
  %184 = load double, ptr %real208, align 8, !tbaa !17
  %185 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %186 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom209 = sext i32 %186 to i64
  %arrayidx210 = getelementptr inbounds %struct.dcomplex, ptr %185, i64 %idxprom209
  %real211 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx210, i32 0, i32 0
  %187 = load double, ptr %real211, align 8, !tbaa !17
  %imag213 = getelementptr inbounds %struct.dcomplex, ptr %temp, i32 0, i32 1
  %188 = load double, ptr %imag213, align 8, !tbaa !19
  %189 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %190 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom214 = sext i32 %190 to i64
  %arrayidx215 = getelementptr inbounds %struct.dcomplex, ptr %189, i64 %idxprom214
  %imag216 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx215, i32 0, i32 1
  %191 = load double, ptr %imag216, align 8, !tbaa !19
  %mul217 = fmul double %188, %191
  %neg218 = fneg double %mul217
  %192 = call double @llvm.fmuladd.f64(double %184, double %187, double %neg218)
  %real219 = getelementptr inbounds %struct.dcomplex, ptr %z__2, i32 0, i32 0
  store double %192, ptr %real219, align 8, !tbaa !17
  %real220 = getelementptr inbounds %struct.dcomplex, ptr %temp, i32 0, i32 0
  %193 = load double, ptr %real220, align 8, !tbaa !17
  %194 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %195 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom221 = sext i32 %195 to i64
  %arrayidx222 = getelementptr inbounds %struct.dcomplex, ptr %194, i64 %idxprom221
  %imag223 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx222, i32 0, i32 1
  %196 = load double, ptr %imag223, align 8, !tbaa !19
  %imag225 = getelementptr inbounds %struct.dcomplex, ptr %temp, i32 0, i32 1
  %197 = load double, ptr %imag225, align 8, !tbaa !19
  %198 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %199 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom226 = sext i32 %199 to i64
  %arrayidx227 = getelementptr inbounds %struct.dcomplex, ptr %198, i64 %idxprom226
  %real228 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx227, i32 0, i32 0
  %200 = load double, ptr %real228, align 8, !tbaa !17
  %mul229 = fmul double %197, %200
  %201 = call double @llvm.fmuladd.f64(double %193, double %196, double %mul229)
  %imag230 = getelementptr inbounds %struct.dcomplex, ptr %z__2, i32 0, i32 1
  store double %201, ptr %imag230, align 8, !tbaa !19
  %202 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %203 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom231 = sext i32 %203 to i64
  %arrayidx232 = getelementptr inbounds %struct.dcomplex, ptr %202, i64 %idxprom231
  %real233 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx232, i32 0, i32 0
  %204 = load double, ptr %real233, align 8, !tbaa !17
  %real234 = getelementptr inbounds %struct.dcomplex, ptr %z__2, i32 0, i32 0
  %205 = load double, ptr %real234, align 8, !tbaa !17
  %sub235 = fsub double %204, %205
  %real236 = getelementptr inbounds %struct.dcomplex, ptr %z__1, i32 0, i32 0
  store double %sub235, ptr %real236, align 8, !tbaa !17
  %206 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %207 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom237 = sext i32 %207 to i64
  %arrayidx238 = getelementptr inbounds %struct.dcomplex, ptr %206, i64 %idxprom237
  %imag239 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx238, i32 0, i32 1
  %208 = load double, ptr %imag239, align 8, !tbaa !19
  %imag240 = getelementptr inbounds %struct.dcomplex, ptr %z__2, i32 0, i32 1
  %209 = load double, ptr %imag240, align 8, !tbaa !19
  %sub241 = fsub double %208, %209
  %imag242 = getelementptr inbounds %struct.dcomplex, ptr %z__1, i32 0, i32 1
  store double %sub241, ptr %imag242, align 8, !tbaa !19
  %real243 = getelementptr inbounds %struct.dcomplex, ptr %z__1, i32 0, i32 0
  %210 = load double, ptr %real243, align 8, !tbaa !17
  %211 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %212 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom244 = sext i32 %212 to i64
  %arrayidx245 = getelementptr inbounds %struct.dcomplex, ptr %211, i64 %idxprom244
  %real246 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx245, i32 0, i32 0
  store double %210, ptr %real246, align 8, !tbaa !17
  %imag247 = getelementptr inbounds %struct.dcomplex, ptr %z__1, i32 0, i32 1
  %213 = load double, ptr %imag247, align 8, !tbaa !19
  %214 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %215 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom248 = sext i32 %215 to i64
  %arrayidx249 = getelementptr inbounds %struct.dcomplex, ptr %214, i64 %idxprom248
  %imag250 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx249, i32 0, i32 1
  store double %213, ptr %imag250, align 8, !tbaa !19
  %216 = load ptr, ptr %incx.addr, align 8, !tbaa !4
  %217 = load i32, ptr %216, align 4, !tbaa !8
  %218 = load i32, ptr %ix, align 4, !tbaa !8
  %sub251 = sub nsw i32 %218, %217
  store i32 %sub251, ptr %ix, align 4, !tbaa !8
  br label %for.inc252

for.inc252:                                       ; preds = %for.body204
  %219 = load i32, ptr %i__, align 4, !tbaa !8
  %dec253 = add nsw i32 %219, -1
  store i32 %dec253, ptr %i__, align 4, !tbaa !8
  br label %for.cond202

for.end254:                                       ; preds = %for.cond202
  br label %if.end255

if.end255:                                        ; preds = %for.end254, %lor.lhs.false163
  %220 = load ptr, ptr %incx.addr, align 8, !tbaa !4
  %221 = load i32, ptr %220, align 4, !tbaa !8
  %222 = load i32, ptr %jx, align 4, !tbaa !8
  %sub256 = sub nsw i32 %222, %221
  store i32 %sub256, ptr %jx, align 4, !tbaa !8
  br label %for.inc257

for.inc257:                                       ; preds = %if.end255
  %223 = load i32, ptr %j, align 4, !tbaa !8
  %dec258 = add nsw i32 %223, -1
  store i32 %dec258, ptr %j, align 4, !tbaa !8
  br label %for.cond155

for.end259:                                       ; preds = %for.cond155
  br label %if.end260

if.end260:                                        ; preds = %for.end259, %for.end150
  br label %if.end472

if.else261:                                       ; preds = %if.then57
  %224 = load ptr, ptr %incx.addr, align 8, !tbaa !4
  %225 = load i32, ptr %224, align 4, !tbaa !8
  %cmp262 = icmp eq i32 %225, 1
  br i1 %cmp262, label %if.then263, label %if.else365

if.then263:                                       ; preds = %if.else261
  %226 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %227 = load i32, ptr %226, align 4, !tbaa !8
  store i32 %227, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %j, align 4, !tbaa !8
  br label %for.cond264

for.cond264:                                      ; preds = %for.inc362, %if.then263
  %228 = load i32, ptr %j, align 4, !tbaa !8
  %229 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp265 = icmp sle i32 %228, %229
  br i1 %cmp265, label %for.body266, label %for.end364

for.body266:                                      ; preds = %for.cond264
  %230 = load i32, ptr %j, align 4, !tbaa !8
  store i32 %230, ptr %i__2, align 4, !tbaa !8
  %231 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %232 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom267 = sext i32 %232 to i64
  %arrayidx268 = getelementptr inbounds %struct.dcomplex, ptr %231, i64 %idxprom267
  %real269 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx268, i32 0, i32 0
  %233 = load double, ptr %real269, align 8, !tbaa !17
  %cmp270 = fcmp une double %233, 0.000000e+00
  br i1 %cmp270, label %if.then276, label %lor.lhs.false271

lor.lhs.false271:                                 ; preds = %for.body266
  %234 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %235 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom272 = sext i32 %235 to i64
  %arrayidx273 = getelementptr inbounds %struct.dcomplex, ptr %234, i64 %idxprom272
  %imag274 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx273, i32 0, i32 1
  %236 = load double, ptr %imag274, align 8, !tbaa !19
  %cmp275 = fcmp une double %236, 0.000000e+00
  br i1 %cmp275, label %if.then276, label %if.end361

if.then276:                                       ; preds = %lor.lhs.false271, %for.body266
  %237 = load i32, ptr %j, align 4, !tbaa !8
  %sub277 = sub nsw i32 1, %237
  store i32 %sub277, ptr %l, align 4, !tbaa !8
  %238 = load i32, ptr %nounit, align 4, !tbaa !8
  %tobool278 = icmp ne i32 %238, 0
  br i1 %tobool278, label %if.then279, label %if.end294

if.then279:                                       ; preds = %if.then276
  %239 = load i32, ptr %j, align 4, !tbaa !8
  store i32 %239, ptr %i__2, align 4, !tbaa !8
  %240 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %241 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom280 = sext i32 %241 to i64
  %arrayidx281 = getelementptr inbounds %struct.dcomplex, ptr %240, i64 %idxprom280
  %242 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %243 = load i32, ptr %j, align 4, !tbaa !8
  %244 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul282 = mul nsw i32 %243, %244
  %add283 = add nsw i32 %mul282, 1
  %idxprom284 = sext i32 %add283 to i64
  %arrayidx285 = getelementptr inbounds %struct.dcomplex, ptr %242, i64 %idxprom284
  call void @bla_z_div(ptr noundef %z__1, ptr noundef %arrayidx281, ptr noundef %arrayidx285)
  %real286 = getelementptr inbounds %struct.dcomplex, ptr %z__1, i32 0, i32 0
  %245 = load double, ptr %real286, align 8, !tbaa !17
  %246 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %247 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom287 = sext i32 %247 to i64
  %arrayidx288 = getelementptr inbounds %struct.dcomplex, ptr %246, i64 %idxprom287
  %real289 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx288, i32 0, i32 0
  store double %245, ptr %real289, align 8, !tbaa !17
  %imag290 = getelementptr inbounds %struct.dcomplex, ptr %z__1, i32 0, i32 1
  %248 = load double, ptr %imag290, align 8, !tbaa !19
  %249 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %250 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom291 = sext i32 %250 to i64
  %arrayidx292 = getelementptr inbounds %struct.dcomplex, ptr %249, i64 %idxprom291
  %imag293 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx292, i32 0, i32 1
  store double %248, ptr %imag293, align 8, !tbaa !19
  br label %if.end294

if.end294:                                        ; preds = %if.then279, %if.then276
  %251 = load i32, ptr %j, align 4, !tbaa !8
  store i32 %251, ptr %i__2, align 4, !tbaa !8
  %252 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %253 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom295 = sext i32 %253 to i64
  %arrayidx296 = getelementptr inbounds %struct.dcomplex, ptr %252, i64 %idxprom295
  %real297 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx296, i32 0, i32 0
  %254 = load double, ptr %real297, align 8, !tbaa !17
  %real298 = getelementptr inbounds %struct.dcomplex, ptr %temp, i32 0, i32 0
  store double %254, ptr %real298, align 8, !tbaa !17
  %255 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %256 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom299 = sext i32 %256 to i64
  %arrayidx300 = getelementptr inbounds %struct.dcomplex, ptr %255, i64 %idxprom299
  %imag301 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx300, i32 0, i32 1
  %257 = load double, ptr %imag301, align 8, !tbaa !19
  %imag302 = getelementptr inbounds %struct.dcomplex, ptr %temp, i32 0, i32 1
  store double %257, ptr %imag302, align 8, !tbaa !19
  %258 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %259 = load i32, ptr %258, align 4, !tbaa !8
  store i32 %259, ptr %i__3, align 4, !tbaa !8
  %260 = load i32, ptr %j, align 4, !tbaa !8
  %261 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %262 = load i32, ptr %261, align 4, !tbaa !8
  %add303 = add nsw i32 %260, %262
  store i32 %add303, ptr %i__4, align 4, !tbaa !8
  %263 = load i32, ptr %i__3, align 4, !tbaa !8
  %264 = load i32, ptr %i__4, align 4, !tbaa !8
  %cmp304 = icmp sle i32 %263, %264
  br i1 %cmp304, label %cond.true305, label %cond.false306

cond.true305:                                     ; preds = %if.end294
  %265 = load i32, ptr %i__3, align 4, !tbaa !8
  br label %cond.end307

cond.false306:                                    ; preds = %if.end294
  %266 = load i32, ptr %i__4, align 4, !tbaa !8
  br label %cond.end307

cond.end307:                                      ; preds = %cond.false306, %cond.true305
  %cond308 = phi i32 [ %265, %cond.true305 ], [ %266, %cond.false306 ]
  store i32 %cond308, ptr %i__2, align 4, !tbaa !8
  %267 = load i32, ptr %j, align 4, !tbaa !8
  %add309 = add nsw i32 %267, 1
  store i32 %add309, ptr %i__, align 4, !tbaa !8
  br label %for.cond310

for.cond310:                                      ; preds = %for.inc359, %cond.end307
  %268 = load i32, ptr %i__, align 4, !tbaa !8
  %269 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp311 = icmp sle i32 %268, %269
  br i1 %cmp311, label %for.body312, label %for.end360

for.body312:                                      ; preds = %for.cond310
  %270 = load i32, ptr %i__, align 4, !tbaa !8
  store i32 %270, ptr %i__3, align 4, !tbaa !8
  %271 = load i32, ptr %i__, align 4, !tbaa !8
  store i32 %271, ptr %i__4, align 4, !tbaa !8
  %272 = load i32, ptr %l, align 4, !tbaa !8
  %273 = load i32, ptr %i__, align 4, !tbaa !8
  %add313 = add nsw i32 %272, %273
  %274 = load i32, ptr %j, align 4, !tbaa !8
  %275 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul314 = mul nsw i32 %274, %275
  %add315 = add nsw i32 %add313, %mul314
  store i32 %add315, ptr %i__5, align 4, !tbaa !8
  %real316 = getelementptr inbounds %struct.dcomplex, ptr %temp, i32 0, i32 0
  %276 = load double, ptr %real316, align 8, !tbaa !17
  %277 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %278 = load i32, ptr %i__5, align 4, !tbaa !8
  %idxprom317 = sext i32 %278 to i64
  %arrayidx318 = getelementptr inbounds %struct.dcomplex, ptr %277, i64 %idxprom317
  %real319 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx318, i32 0, i32 0
  %279 = load double, ptr %real319, align 8, !tbaa !17
  %imag321 = getelementptr inbounds %struct.dcomplex, ptr %temp, i32 0, i32 1
  %280 = load double, ptr %imag321, align 8, !tbaa !19
  %281 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %282 = load i32, ptr %i__5, align 4, !tbaa !8
  %idxprom322 = sext i32 %282 to i64
  %arrayidx323 = getelementptr inbounds %struct.dcomplex, ptr %281, i64 %idxprom322
  %imag324 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx323, i32 0, i32 1
  %283 = load double, ptr %imag324, align 8, !tbaa !19
  %mul325 = fmul double %280, %283
  %neg326 = fneg double %mul325
  %284 = call double @llvm.fmuladd.f64(double %276, double %279, double %neg326)
  %real327 = getelementptr inbounds %struct.dcomplex, ptr %z__2, i32 0, i32 0
  store double %284, ptr %real327, align 8, !tbaa !17
  %real328 = getelementptr inbounds %struct.dcomplex, ptr %temp, i32 0, i32 0
  %285 = load double, ptr %real328, align 8, !tbaa !17
  %286 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %287 = load i32, ptr %i__5, align 4, !tbaa !8
  %idxprom329 = sext i32 %287 to i64
  %arrayidx330 = getelementptr inbounds %struct.dcomplex, ptr %286, i64 %idxprom329
  %imag331 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx330, i32 0, i32 1
  %288 = load double, ptr %imag331, align 8, !tbaa !19
  %imag333 = getelementptr inbounds %struct.dcomplex, ptr %temp, i32 0, i32 1
  %289 = load double, ptr %imag333, align 8, !tbaa !19
  %290 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %291 = load i32, ptr %i__5, align 4, !tbaa !8
  %idxprom334 = sext i32 %291 to i64
  %arrayidx335 = getelementptr inbounds %struct.dcomplex, ptr %290, i64 %idxprom334
  %real336 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx335, i32 0, i32 0
  %292 = load double, ptr %real336, align 8, !tbaa !17
  %mul337 = fmul double %289, %292
  %293 = call double @llvm.fmuladd.f64(double %285, double %288, double %mul337)
  %imag338 = getelementptr inbounds %struct.dcomplex, ptr %z__2, i32 0, i32 1
  store double %293, ptr %imag338, align 8, !tbaa !19
  %294 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %295 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom339 = sext i32 %295 to i64
  %arrayidx340 = getelementptr inbounds %struct.dcomplex, ptr %294, i64 %idxprom339
  %real341 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx340, i32 0, i32 0
  %296 = load double, ptr %real341, align 8, !tbaa !17
  %real342 = getelementptr inbounds %struct.dcomplex, ptr %z__2, i32 0, i32 0
  %297 = load double, ptr %real342, align 8, !tbaa !17
  %sub343 = fsub double %296, %297
  %real344 = getelementptr inbounds %struct.dcomplex, ptr %z__1, i32 0, i32 0
  store double %sub343, ptr %real344, align 8, !tbaa !17
  %298 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %299 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom345 = sext i32 %299 to i64
  %arrayidx346 = getelementptr inbounds %struct.dcomplex, ptr %298, i64 %idxprom345
  %imag347 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx346, i32 0, i32 1
  %300 = load double, ptr %imag347, align 8, !tbaa !19
  %imag348 = getelementptr inbounds %struct.dcomplex, ptr %z__2, i32 0, i32 1
  %301 = load double, ptr %imag348, align 8, !tbaa !19
  %sub349 = fsub double %300, %301
  %imag350 = getelementptr inbounds %struct.dcomplex, ptr %z__1, i32 0, i32 1
  store double %sub349, ptr %imag350, align 8, !tbaa !19
  %real351 = getelementptr inbounds %struct.dcomplex, ptr %z__1, i32 0, i32 0
  %302 = load double, ptr %real351, align 8, !tbaa !17
  %303 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %304 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom352 = sext i32 %304 to i64
  %arrayidx353 = getelementptr inbounds %struct.dcomplex, ptr %303, i64 %idxprom352
  %real354 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx353, i32 0, i32 0
  store double %302, ptr %real354, align 8, !tbaa !17
  %imag355 = getelementptr inbounds %struct.dcomplex, ptr %z__1, i32 0, i32 1
  %305 = load double, ptr %imag355, align 8, !tbaa !19
  %306 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %307 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom356 = sext i32 %307 to i64
  %arrayidx357 = getelementptr inbounds %struct.dcomplex, ptr %306, i64 %idxprom356
  %imag358 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx357, i32 0, i32 1
  store double %305, ptr %imag358, align 8, !tbaa !19
  br label %for.inc359

for.inc359:                                       ; preds = %for.body312
  %308 = load i32, ptr %i__, align 4, !tbaa !8
  %inc = add nsw i32 %308, 1
  store i32 %inc, ptr %i__, align 4, !tbaa !8
  br label %for.cond310

for.end360:                                       ; preds = %for.cond310
  br label %if.end361

if.end361:                                        ; preds = %for.end360, %lor.lhs.false271
  br label %for.inc362

for.inc362:                                       ; preds = %if.end361
  %309 = load i32, ptr %j, align 4, !tbaa !8
  %inc363 = add nsw i32 %309, 1
  store i32 %inc363, ptr %j, align 4, !tbaa !8
  br label %for.cond264

for.end364:                                       ; preds = %for.cond264
  br label %if.end471

if.else365:                                       ; preds = %if.else261
  %310 = load i32, ptr %kx, align 4, !tbaa !8
  store i32 %310, ptr %jx, align 4, !tbaa !8
  %311 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %312 = load i32, ptr %311, align 4, !tbaa !8
  store i32 %312, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %j, align 4, !tbaa !8
  br label %for.cond366

for.cond366:                                      ; preds = %for.inc468, %if.else365
  %313 = load i32, ptr %j, align 4, !tbaa !8
  %314 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp367 = icmp sle i32 %313, %314
  br i1 %cmp367, label %for.body368, label %for.end470

for.body368:                                      ; preds = %for.cond366
  %315 = load ptr, ptr %incx.addr, align 8, !tbaa !4
  %316 = load i32, ptr %315, align 4, !tbaa !8
  %317 = load i32, ptr %kx, align 4, !tbaa !8
  %add369 = add nsw i32 %317, %316
  store i32 %add369, ptr %kx, align 4, !tbaa !8
  %318 = load i32, ptr %jx, align 4, !tbaa !8
  store i32 %318, ptr %i__2, align 4, !tbaa !8
  %319 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %320 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom370 = sext i32 %320 to i64
  %arrayidx371 = getelementptr inbounds %struct.dcomplex, ptr %319, i64 %idxprom370
  %real372 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx371, i32 0, i32 0
  %321 = load double, ptr %real372, align 8, !tbaa !17
  %cmp373 = fcmp une double %321, 0.000000e+00
  br i1 %cmp373, label %if.then379, label %lor.lhs.false374

lor.lhs.false374:                                 ; preds = %for.body368
  %322 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %323 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom375 = sext i32 %323 to i64
  %arrayidx376 = getelementptr inbounds %struct.dcomplex, ptr %322, i64 %idxprom375
  %imag377 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx376, i32 0, i32 1
  %324 = load double, ptr %imag377, align 8, !tbaa !19
  %cmp378 = fcmp une double %324, 0.000000e+00
  br i1 %cmp378, label %if.then379, label %if.end466

if.then379:                                       ; preds = %lor.lhs.false374, %for.body368
  %325 = load i32, ptr %kx, align 4, !tbaa !8
  store i32 %325, ptr %ix, align 4, !tbaa !8
  %326 = load i32, ptr %j, align 4, !tbaa !8
  %sub380 = sub nsw i32 1, %326
  store i32 %sub380, ptr %l, align 4, !tbaa !8
  %327 = load i32, ptr %nounit, align 4, !tbaa !8
  %tobool381 = icmp ne i32 %327, 0
  br i1 %tobool381, label %if.then382, label %if.end397

if.then382:                                       ; preds = %if.then379
  %328 = load i32, ptr %jx, align 4, !tbaa !8
  store i32 %328, ptr %i__2, align 4, !tbaa !8
  %329 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %330 = load i32, ptr %jx, align 4, !tbaa !8
  %idxprom383 = sext i32 %330 to i64
  %arrayidx384 = getelementptr inbounds %struct.dcomplex, ptr %329, i64 %idxprom383
  %331 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %332 = load i32, ptr %j, align 4, !tbaa !8
  %333 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul385 = mul nsw i32 %332, %333
  %add386 = add nsw i32 %mul385, 1
  %idxprom387 = sext i32 %add386 to i64
  %arrayidx388 = getelementptr inbounds %struct.dcomplex, ptr %331, i64 %idxprom387
  call void @bla_z_div(ptr noundef %z__1, ptr noundef %arrayidx384, ptr noundef %arrayidx388)
  %real389 = getelementptr inbounds %struct.dcomplex, ptr %z__1, i32 0, i32 0
  %334 = load double, ptr %real389, align 8, !tbaa !17
  %335 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %336 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom390 = sext i32 %336 to i64
  %arrayidx391 = getelementptr inbounds %struct.dcomplex, ptr %335, i64 %idxprom390
  %real392 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx391, i32 0, i32 0
  store double %334, ptr %real392, align 8, !tbaa !17
  %imag393 = getelementptr inbounds %struct.dcomplex, ptr %z__1, i32 0, i32 1
  %337 = load double, ptr %imag393, align 8, !tbaa !19
  %338 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %339 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom394 = sext i32 %339 to i64
  %arrayidx395 = getelementptr inbounds %struct.dcomplex, ptr %338, i64 %idxprom394
  %imag396 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx395, i32 0, i32 1
  store double %337, ptr %imag396, align 8, !tbaa !19
  br label %if.end397

if.end397:                                        ; preds = %if.then382, %if.then379
  %340 = load i32, ptr %jx, align 4, !tbaa !8
  store i32 %340, ptr %i__2, align 4, !tbaa !8
  %341 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %342 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom398 = sext i32 %342 to i64
  %arrayidx399 = getelementptr inbounds %struct.dcomplex, ptr %341, i64 %idxprom398
  %real400 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx399, i32 0, i32 0
  %343 = load double, ptr %real400, align 8, !tbaa !17
  %real401 = getelementptr inbounds %struct.dcomplex, ptr %temp, i32 0, i32 0
  store double %343, ptr %real401, align 8, !tbaa !17
  %344 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %345 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom402 = sext i32 %345 to i64
  %arrayidx403 = getelementptr inbounds %struct.dcomplex, ptr %344, i64 %idxprom402
  %imag404 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx403, i32 0, i32 1
  %346 = load double, ptr %imag404, align 8, !tbaa !19
  %imag405 = getelementptr inbounds %struct.dcomplex, ptr %temp, i32 0, i32 1
  store double %346, ptr %imag405, align 8, !tbaa !19
  %347 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %348 = load i32, ptr %347, align 4, !tbaa !8
  store i32 %348, ptr %i__3, align 4, !tbaa !8
  %349 = load i32, ptr %j, align 4, !tbaa !8
  %350 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %351 = load i32, ptr %350, align 4, !tbaa !8
  %add406 = add nsw i32 %349, %351
  store i32 %add406, ptr %i__4, align 4, !tbaa !8
  %352 = load i32, ptr %i__3, align 4, !tbaa !8
  %353 = load i32, ptr %i__4, align 4, !tbaa !8
  %cmp407 = icmp sle i32 %352, %353
  br i1 %cmp407, label %cond.true408, label %cond.false409

cond.true408:                                     ; preds = %if.end397
  %354 = load i32, ptr %i__3, align 4, !tbaa !8
  br label %cond.end410

cond.false409:                                    ; preds = %if.end397
  %355 = load i32, ptr %i__4, align 4, !tbaa !8
  br label %cond.end410

cond.end410:                                      ; preds = %cond.false409, %cond.true408
  %cond411 = phi i32 [ %354, %cond.true408 ], [ %355, %cond.false409 ]
  store i32 %cond411, ptr %i__2, align 4, !tbaa !8
  %356 = load i32, ptr %j, align 4, !tbaa !8
  %add412 = add nsw i32 %356, 1
  store i32 %add412, ptr %i__, align 4, !tbaa !8
  br label %for.cond413

for.cond413:                                      ; preds = %for.inc463, %cond.end410
  %357 = load i32, ptr %i__, align 4, !tbaa !8
  %358 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp414 = icmp sle i32 %357, %358
  br i1 %cmp414, label %for.body415, label %for.end465

for.body415:                                      ; preds = %for.cond413
  %359 = load i32, ptr %ix, align 4, !tbaa !8
  store i32 %359, ptr %i__3, align 4, !tbaa !8
  %360 = load i32, ptr %ix, align 4, !tbaa !8
  store i32 %360, ptr %i__4, align 4, !tbaa !8
  %361 = load i32, ptr %l, align 4, !tbaa !8
  %362 = load i32, ptr %i__, align 4, !tbaa !8
  %add416 = add nsw i32 %361, %362
  %363 = load i32, ptr %j, align 4, !tbaa !8
  %364 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul417 = mul nsw i32 %363, %364
  %add418 = add nsw i32 %add416, %mul417
  store i32 %add418, ptr %i__5, align 4, !tbaa !8
  %real419 = getelementptr inbounds %struct.dcomplex, ptr %temp, i32 0, i32 0
  %365 = load double, ptr %real419, align 8, !tbaa !17
  %366 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %367 = load i32, ptr %i__5, align 4, !tbaa !8
  %idxprom420 = sext i32 %367 to i64
  %arrayidx421 = getelementptr inbounds %struct.dcomplex, ptr %366, i64 %idxprom420
  %real422 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx421, i32 0, i32 0
  %368 = load double, ptr %real422, align 8, !tbaa !17
  %imag424 = getelementptr inbounds %struct.dcomplex, ptr %temp, i32 0, i32 1
  %369 = load double, ptr %imag424, align 8, !tbaa !19
  %370 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %371 = load i32, ptr %i__5, align 4, !tbaa !8
  %idxprom425 = sext i32 %371 to i64
  %arrayidx426 = getelementptr inbounds %struct.dcomplex, ptr %370, i64 %idxprom425
  %imag427 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx426, i32 0, i32 1
  %372 = load double, ptr %imag427, align 8, !tbaa !19
  %mul428 = fmul double %369, %372
  %neg429 = fneg double %mul428
  %373 = call double @llvm.fmuladd.f64(double %365, double %368, double %neg429)
  %real430 = getelementptr inbounds %struct.dcomplex, ptr %z__2, i32 0, i32 0
  store double %373, ptr %real430, align 8, !tbaa !17
  %real431 = getelementptr inbounds %struct.dcomplex, ptr %temp, i32 0, i32 0
  %374 = load double, ptr %real431, align 8, !tbaa !17
  %375 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %376 = load i32, ptr %i__5, align 4, !tbaa !8
  %idxprom432 = sext i32 %376 to i64
  %arrayidx433 = getelementptr inbounds %struct.dcomplex, ptr %375, i64 %idxprom432
  %imag434 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx433, i32 0, i32 1
  %377 = load double, ptr %imag434, align 8, !tbaa !19
  %imag436 = getelementptr inbounds %struct.dcomplex, ptr %temp, i32 0, i32 1
  %378 = load double, ptr %imag436, align 8, !tbaa !19
  %379 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %380 = load i32, ptr %i__5, align 4, !tbaa !8
  %idxprom437 = sext i32 %380 to i64
  %arrayidx438 = getelementptr inbounds %struct.dcomplex, ptr %379, i64 %idxprom437
  %real439 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx438, i32 0, i32 0
  %381 = load double, ptr %real439, align 8, !tbaa !17
  %mul440 = fmul double %378, %381
  %382 = call double @llvm.fmuladd.f64(double %374, double %377, double %mul440)
  %imag441 = getelementptr inbounds %struct.dcomplex, ptr %z__2, i32 0, i32 1
  store double %382, ptr %imag441, align 8, !tbaa !19
  %383 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %384 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom442 = sext i32 %384 to i64
  %arrayidx443 = getelementptr inbounds %struct.dcomplex, ptr %383, i64 %idxprom442
  %real444 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx443, i32 0, i32 0
  %385 = load double, ptr %real444, align 8, !tbaa !17
  %real445 = getelementptr inbounds %struct.dcomplex, ptr %z__2, i32 0, i32 0
  %386 = load double, ptr %real445, align 8, !tbaa !17
  %sub446 = fsub double %385, %386
  %real447 = getelementptr inbounds %struct.dcomplex, ptr %z__1, i32 0, i32 0
  store double %sub446, ptr %real447, align 8, !tbaa !17
  %387 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %388 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom448 = sext i32 %388 to i64
  %arrayidx449 = getelementptr inbounds %struct.dcomplex, ptr %387, i64 %idxprom448
  %imag450 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx449, i32 0, i32 1
  %389 = load double, ptr %imag450, align 8, !tbaa !19
  %imag451 = getelementptr inbounds %struct.dcomplex, ptr %z__2, i32 0, i32 1
  %390 = load double, ptr %imag451, align 8, !tbaa !19
  %sub452 = fsub double %389, %390
  %imag453 = getelementptr inbounds %struct.dcomplex, ptr %z__1, i32 0, i32 1
  store double %sub452, ptr %imag453, align 8, !tbaa !19
  %real454 = getelementptr inbounds %struct.dcomplex, ptr %z__1, i32 0, i32 0
  %391 = load double, ptr %real454, align 8, !tbaa !17
  %392 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %393 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom455 = sext i32 %393 to i64
  %arrayidx456 = getelementptr inbounds %struct.dcomplex, ptr %392, i64 %idxprom455
  %real457 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx456, i32 0, i32 0
  store double %391, ptr %real457, align 8, !tbaa !17
  %imag458 = getelementptr inbounds %struct.dcomplex, ptr %z__1, i32 0, i32 1
  %394 = load double, ptr %imag458, align 8, !tbaa !19
  %395 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %396 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom459 = sext i32 %396 to i64
  %arrayidx460 = getelementptr inbounds %struct.dcomplex, ptr %395, i64 %idxprom459
  %imag461 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx460, i32 0, i32 1
  store double %394, ptr %imag461, align 8, !tbaa !19
  %397 = load ptr, ptr %incx.addr, align 8, !tbaa !4
  %398 = load i32, ptr %397, align 4, !tbaa !8
  %399 = load i32, ptr %ix, align 4, !tbaa !8
  %add462 = add nsw i32 %399, %398
  store i32 %add462, ptr %ix, align 4, !tbaa !8
  br label %for.inc463

for.inc463:                                       ; preds = %for.body415
  %400 = load i32, ptr %i__, align 4, !tbaa !8
  %inc464 = add nsw i32 %400, 1
  store i32 %inc464, ptr %i__, align 4, !tbaa !8
  br label %for.cond413

for.end465:                                       ; preds = %for.cond413
  br label %if.end466

if.end466:                                        ; preds = %for.end465, %lor.lhs.false374
  %401 = load ptr, ptr %incx.addr, align 8, !tbaa !4
  %402 = load i32, ptr %401, align 4, !tbaa !8
  %403 = load i32, ptr %jx, align 4, !tbaa !8
  %add467 = add nsw i32 %403, %402
  store i32 %add467, ptr %jx, align 4, !tbaa !8
  br label %for.inc468

for.inc468:                                       ; preds = %if.end466
  %404 = load i32, ptr %j, align 4, !tbaa !8
  %inc469 = add nsw i32 %404, 1
  store i32 %inc469, ptr %j, align 4, !tbaa !8
  br label %for.cond366

for.end470:                                       ; preds = %for.cond366
  br label %if.end471

if.end471:                                        ; preds = %for.end470, %for.end364
  br label %if.end472

if.end472:                                        ; preds = %if.end471, %if.end260
  br label %if.end1150

if.else473:                                       ; preds = %if.end54
  %405 = load ptr, ptr %uplo.addr, align 8, !tbaa !4
  %call474 = call i32 @lsame_(ptr noundef %405, ptr noundef @.str, i32 noundef 1, i32 noundef 1)
  %tobool475 = icmp ne i32 %call474, 0
  br i1 %tobool475, label %if.then476, label %if.else811

if.then476:                                       ; preds = %if.else473
  %406 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %407 = load i32, ptr %406, align 4, !tbaa !8
  %add477 = add nsw i32 %407, 1
  store i32 %add477, ptr %kplus1, align 4, !tbaa !8
  %408 = load ptr, ptr %incx.addr, align 8, !tbaa !4
  %409 = load i32, ptr %408, align 4, !tbaa !8
  %cmp478 = icmp eq i32 %409, 1
  br i1 %cmp478, label %if.then479, label %if.else641

if.then479:                                       ; preds = %if.then476
  %410 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %411 = load i32, ptr %410, align 4, !tbaa !8
  store i32 %411, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %j, align 4, !tbaa !8
  br label %for.cond480

for.cond480:                                      ; preds = %for.inc638, %if.then479
  %412 = load i32, ptr %j, align 4, !tbaa !8
  %413 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp481 = icmp sle i32 %412, %413
  br i1 %cmp481, label %for.body482, label %for.end640

for.body482:                                      ; preds = %for.cond480
  %414 = load i32, ptr %j, align 4, !tbaa !8
  store i32 %414, ptr %i__2, align 4, !tbaa !8
  %415 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %416 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom483 = sext i32 %416 to i64
  %arrayidx484 = getelementptr inbounds %struct.dcomplex, ptr %415, i64 %idxprom483
  %real485 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx484, i32 0, i32 0
  %417 = load double, ptr %real485, align 8, !tbaa !17
  %real486 = getelementptr inbounds %struct.dcomplex, ptr %temp, i32 0, i32 0
  store double %417, ptr %real486, align 8, !tbaa !17
  %418 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %419 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom487 = sext i32 %419 to i64
  %arrayidx488 = getelementptr inbounds %struct.dcomplex, ptr %418, i64 %idxprom487
  %imag489 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx488, i32 0, i32 1
  %420 = load double, ptr %imag489, align 8, !tbaa !19
  %imag490 = getelementptr inbounds %struct.dcomplex, ptr %temp, i32 0, i32 1
  store double %420, ptr %imag490, align 8, !tbaa !19
  %421 = load i32, ptr %kplus1, align 4, !tbaa !8
  %422 = load i32, ptr %j, align 4, !tbaa !8
  %sub491 = sub nsw i32 %421, %422
  store i32 %sub491, ptr %l, align 4, !tbaa !8
  %423 = load i32, ptr %noconj, align 4, !tbaa !8
  %tobool492 = icmp ne i32 %423, 0
  br i1 %tobool492, label %if.then493, label %if.else564

if.then493:                                       ; preds = %for.body482
  store i32 1, ptr %i__2, align 4, !tbaa !8
  %424 = load i32, ptr %j, align 4, !tbaa !8
  %425 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %426 = load i32, ptr %425, align 4, !tbaa !8
  %sub494 = sub nsw i32 %424, %426
  store i32 %sub494, ptr %i__3, align 4, !tbaa !8
  %427 = load i32, ptr %j, align 4, !tbaa !8
  %sub495 = sub nsw i32 %427, 1
  store i32 %sub495, ptr %i__4, align 4, !tbaa !8
  %428 = load i32, ptr %i__2, align 4, !tbaa !8
  %429 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp496 = icmp sge i32 %428, %429
  br i1 %cmp496, label %cond.true497, label %cond.false498

cond.true497:                                     ; preds = %if.then493
  %430 = load i32, ptr %i__2, align 4, !tbaa !8
  br label %cond.end499

cond.false498:                                    ; preds = %if.then493
  %431 = load i32, ptr %i__3, align 4, !tbaa !8
  br label %cond.end499

cond.end499:                                      ; preds = %cond.false498, %cond.true497
  %cond500 = phi i32 [ %430, %cond.true497 ], [ %431, %cond.false498 ]
  store i32 %cond500, ptr %i__, align 4, !tbaa !8
  br label %for.cond501

for.cond501:                                      ; preds = %for.inc550, %cond.end499
  %432 = load i32, ptr %i__, align 4, !tbaa !8
  %433 = load i32, ptr %i__4, align 4, !tbaa !8
  %cmp502 = icmp sle i32 %432, %433
  br i1 %cmp502, label %for.body503, label %for.end552

for.body503:                                      ; preds = %for.cond501
  %434 = load i32, ptr %l, align 4, !tbaa !8
  %435 = load i32, ptr %i__, align 4, !tbaa !8
  %add504 = add nsw i32 %434, %435
  %436 = load i32, ptr %j, align 4, !tbaa !8
  %437 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul505 = mul nsw i32 %436, %437
  %add506 = add nsw i32 %add504, %mul505
  store i32 %add506, ptr %i__2, align 4, !tbaa !8
  %438 = load i32, ptr %i__, align 4, !tbaa !8
  store i32 %438, ptr %i__3, align 4, !tbaa !8
  %439 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %440 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom507 = sext i32 %440 to i64
  %arrayidx508 = getelementptr inbounds %struct.dcomplex, ptr %439, i64 %idxprom507
  %real509 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx508, i32 0, i32 0
  %441 = load double, ptr %real509, align 8, !tbaa !17
  %442 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %443 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom510 = sext i32 %443 to i64
  %arrayidx511 = getelementptr inbounds %struct.dcomplex, ptr %442, i64 %idxprom510
  %real512 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx511, i32 0, i32 0
  %444 = load double, ptr %real512, align 8, !tbaa !17
  %445 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %446 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom514 = sext i32 %446 to i64
  %arrayidx515 = getelementptr inbounds %struct.dcomplex, ptr %445, i64 %idxprom514
  %imag516 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx515, i32 0, i32 1
  %447 = load double, ptr %imag516, align 8, !tbaa !19
  %448 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %449 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom517 = sext i32 %449 to i64
  %arrayidx518 = getelementptr inbounds %struct.dcomplex, ptr %448, i64 %idxprom517
  %imag519 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx518, i32 0, i32 1
  %450 = load double, ptr %imag519, align 8, !tbaa !19
  %mul520 = fmul double %447, %450
  %neg521 = fneg double %mul520
  %451 = call double @llvm.fmuladd.f64(double %441, double %444, double %neg521)
  %real522 = getelementptr inbounds %struct.dcomplex, ptr %z__2, i32 0, i32 0
  store double %451, ptr %real522, align 8, !tbaa !17
  %452 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %453 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom523 = sext i32 %453 to i64
  %arrayidx524 = getelementptr inbounds %struct.dcomplex, ptr %452, i64 %idxprom523
  %real525 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx524, i32 0, i32 0
  %454 = load double, ptr %real525, align 8, !tbaa !17
  %455 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %456 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom526 = sext i32 %456 to i64
  %arrayidx527 = getelementptr inbounds %struct.dcomplex, ptr %455, i64 %idxprom526
  %imag528 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx527, i32 0, i32 1
  %457 = load double, ptr %imag528, align 8, !tbaa !19
  %458 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %459 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom530 = sext i32 %459 to i64
  %arrayidx531 = getelementptr inbounds %struct.dcomplex, ptr %458, i64 %idxprom530
  %imag532 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx531, i32 0, i32 1
  %460 = load double, ptr %imag532, align 8, !tbaa !19
  %461 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %462 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom533 = sext i32 %462 to i64
  %arrayidx534 = getelementptr inbounds %struct.dcomplex, ptr %461, i64 %idxprom533
  %real535 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx534, i32 0, i32 0
  %463 = load double, ptr %real535, align 8, !tbaa !17
  %mul536 = fmul double %460, %463
  %464 = call double @llvm.fmuladd.f64(double %454, double %457, double %mul536)
  %imag537 = getelementptr inbounds %struct.dcomplex, ptr %z__2, i32 0, i32 1
  store double %464, ptr %imag537, align 8, !tbaa !19
  %real538 = getelementptr inbounds %struct.dcomplex, ptr %temp, i32 0, i32 0
  %465 = load double, ptr %real538, align 8, !tbaa !17
  %real539 = getelementptr inbounds %struct.dcomplex, ptr %z__2, i32 0, i32 0
  %466 = load double, ptr %real539, align 8, !tbaa !17
  %sub540 = fsub double %465, %466
  %real541 = getelementptr inbounds %struct.dcomplex, ptr %z__1, i32 0, i32 0
  store double %sub540, ptr %real541, align 8, !tbaa !17
  %imag542 = getelementptr inbounds %struct.dcomplex, ptr %temp, i32 0, i32 1
  %467 = load double, ptr %imag542, align 8, !tbaa !19
  %imag543 = getelementptr inbounds %struct.dcomplex, ptr %z__2, i32 0, i32 1
  %468 = load double, ptr %imag543, align 8, !tbaa !19
  %sub544 = fsub double %467, %468
  %imag545 = getelementptr inbounds %struct.dcomplex, ptr %z__1, i32 0, i32 1
  store double %sub544, ptr %imag545, align 8, !tbaa !19
  %real546 = getelementptr inbounds %struct.dcomplex, ptr %z__1, i32 0, i32 0
  %469 = load double, ptr %real546, align 8, !tbaa !17
  %real547 = getelementptr inbounds %struct.dcomplex, ptr %temp, i32 0, i32 0
  store double %469, ptr %real547, align 8, !tbaa !17
  %imag548 = getelementptr inbounds %struct.dcomplex, ptr %z__1, i32 0, i32 1
  %470 = load double, ptr %imag548, align 8, !tbaa !19
  %imag549 = getelementptr inbounds %struct.dcomplex, ptr %temp, i32 0, i32 1
  store double %470, ptr %imag549, align 8, !tbaa !19
  br label %for.inc550

for.inc550:                                       ; preds = %for.body503
  %471 = load i32, ptr %i__, align 4, !tbaa !8
  %inc551 = add nsw i32 %471, 1
  store i32 %inc551, ptr %i__, align 4, !tbaa !8
  br label %for.cond501

for.end552:                                       ; preds = %for.cond501
  %472 = load i32, ptr %nounit, align 4, !tbaa !8
  %tobool553 = icmp ne i32 %472, 0
  br i1 %tobool553, label %if.then554, label %if.end563

if.then554:                                       ; preds = %for.end552
  %473 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %474 = load i32, ptr %kplus1, align 4, !tbaa !8
  %475 = load i32, ptr %j, align 4, !tbaa !8
  %476 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul555 = mul nsw i32 %475, %476
  %add556 = add nsw i32 %474, %mul555
  %idxprom557 = sext i32 %add556 to i64
  %arrayidx558 = getelementptr inbounds %struct.dcomplex, ptr %473, i64 %idxprom557
  call void @bla_z_div(ptr noundef %z__1, ptr noundef %temp, ptr noundef %arrayidx558)
  %real559 = getelementptr inbounds %struct.dcomplex, ptr %z__1, i32 0, i32 0
  %477 = load double, ptr %real559, align 8, !tbaa !17
  %real560 = getelementptr inbounds %struct.dcomplex, ptr %temp, i32 0, i32 0
  store double %477, ptr %real560, align 8, !tbaa !17
  %imag561 = getelementptr inbounds %struct.dcomplex, ptr %z__1, i32 0, i32 1
  %478 = load double, ptr %imag561, align 8, !tbaa !19
  %imag562 = getelementptr inbounds %struct.dcomplex, ptr %temp, i32 0, i32 1
  store double %478, ptr %imag562, align 8, !tbaa !19
  br label %if.end563

if.end563:                                        ; preds = %if.then554, %for.end552
  br label %if.end629

if.else564:                                       ; preds = %for.body482
  store i32 1, ptr %i__4, align 4, !tbaa !8
  %479 = load i32, ptr %j, align 4, !tbaa !8
  %480 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %481 = load i32, ptr %480, align 4, !tbaa !8
  %sub565 = sub nsw i32 %479, %481
  store i32 %sub565, ptr %i__2, align 4, !tbaa !8
  %482 = load i32, ptr %j, align 4, !tbaa !8
  %sub566 = sub nsw i32 %482, 1
  store i32 %sub566, ptr %i__3, align 4, !tbaa !8
  %483 = load i32, ptr %i__4, align 4, !tbaa !8
  %484 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp567 = icmp sge i32 %483, %484
  br i1 %cmp567, label %cond.true568, label %cond.false569

cond.true568:                                     ; preds = %if.else564
  %485 = load i32, ptr %i__4, align 4, !tbaa !8
  br label %cond.end570

cond.false569:                                    ; preds = %if.else564
  %486 = load i32, ptr %i__2, align 4, !tbaa !8
  br label %cond.end570

cond.end570:                                      ; preds = %cond.false569, %cond.true568
  %cond571 = phi i32 [ %485, %cond.true568 ], [ %486, %cond.false569 ]
  store i32 %cond571, ptr %i__, align 4, !tbaa !8
  br label %for.cond572

for.cond572:                                      ; preds = %for.inc615, %cond.end570
  %487 = load i32, ptr %i__, align 4, !tbaa !8
  %488 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp573 = icmp sle i32 %487, %488
  br i1 %cmp573, label %for.body574, label %for.end617

for.body574:                                      ; preds = %for.cond572
  %489 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %490 = load i32, ptr %l, align 4, !tbaa !8
  %491 = load i32, ptr %i__, align 4, !tbaa !8
  %add575 = add nsw i32 %490, %491
  %492 = load i32, ptr %j, align 4, !tbaa !8
  %493 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul576 = mul nsw i32 %492, %493
  %add577 = add nsw i32 %add575, %mul576
  %idxprom578 = sext i32 %add577 to i64
  %arrayidx579 = getelementptr inbounds %struct.dcomplex, ptr %489, i64 %idxprom578
  call void @bla_d_cnjg(ptr noundef %z__3, ptr noundef %arrayidx579)
  %494 = load i32, ptr %i__, align 4, !tbaa !8
  store i32 %494, ptr %i__4, align 4, !tbaa !8
  %real580 = getelementptr inbounds %struct.dcomplex, ptr %z__3, i32 0, i32 0
  %495 = load double, ptr %real580, align 8, !tbaa !17
  %496 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %497 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom581 = sext i32 %497 to i64
  %arrayidx582 = getelementptr inbounds %struct.dcomplex, ptr %496, i64 %idxprom581
  %real583 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx582, i32 0, i32 0
  %498 = load double, ptr %real583, align 8, !tbaa !17
  %imag585 = getelementptr inbounds %struct.dcomplex, ptr %z__3, i32 0, i32 1
  %499 = load double, ptr %imag585, align 8, !tbaa !19
  %500 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %501 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom586 = sext i32 %501 to i64
  %arrayidx587 = getelementptr inbounds %struct.dcomplex, ptr %500, i64 %idxprom586
  %imag588 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx587, i32 0, i32 1
  %502 = load double, ptr %imag588, align 8, !tbaa !19
  %mul589 = fmul double %499, %502
  %neg590 = fneg double %mul589
  %503 = call double @llvm.fmuladd.f64(double %495, double %498, double %neg590)
  %real591 = getelementptr inbounds %struct.dcomplex, ptr %z__2, i32 0, i32 0
  store double %503, ptr %real591, align 8, !tbaa !17
  %real592 = getelementptr inbounds %struct.dcomplex, ptr %z__3, i32 0, i32 0
  %504 = load double, ptr %real592, align 8, !tbaa !17
  %505 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %506 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom593 = sext i32 %506 to i64
  %arrayidx594 = getelementptr inbounds %struct.dcomplex, ptr %505, i64 %idxprom593
  %imag595 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx594, i32 0, i32 1
  %507 = load double, ptr %imag595, align 8, !tbaa !19
  %imag597 = getelementptr inbounds %struct.dcomplex, ptr %z__3, i32 0, i32 1
  %508 = load double, ptr %imag597, align 8, !tbaa !19
  %509 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %510 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom598 = sext i32 %510 to i64
  %arrayidx599 = getelementptr inbounds %struct.dcomplex, ptr %509, i64 %idxprom598
  %real600 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx599, i32 0, i32 0
  %511 = load double, ptr %real600, align 8, !tbaa !17
  %mul601 = fmul double %508, %511
  %512 = call double @llvm.fmuladd.f64(double %504, double %507, double %mul601)
  %imag602 = getelementptr inbounds %struct.dcomplex, ptr %z__2, i32 0, i32 1
  store double %512, ptr %imag602, align 8, !tbaa !19
  %real603 = getelementptr inbounds %struct.dcomplex, ptr %temp, i32 0, i32 0
  %513 = load double, ptr %real603, align 8, !tbaa !17
  %real604 = getelementptr inbounds %struct.dcomplex, ptr %z__2, i32 0, i32 0
  %514 = load double, ptr %real604, align 8, !tbaa !17
  %sub605 = fsub double %513, %514
  %real606 = getelementptr inbounds %struct.dcomplex, ptr %z__1, i32 0, i32 0
  store double %sub605, ptr %real606, align 8, !tbaa !17
  %imag607 = getelementptr inbounds %struct.dcomplex, ptr %temp, i32 0, i32 1
  %515 = load double, ptr %imag607, align 8, !tbaa !19
  %imag608 = getelementptr inbounds %struct.dcomplex, ptr %z__2, i32 0, i32 1
  %516 = load double, ptr %imag608, align 8, !tbaa !19
  %sub609 = fsub double %515, %516
  %imag610 = getelementptr inbounds %struct.dcomplex, ptr %z__1, i32 0, i32 1
  store double %sub609, ptr %imag610, align 8, !tbaa !19
  %real611 = getelementptr inbounds %struct.dcomplex, ptr %z__1, i32 0, i32 0
  %517 = load double, ptr %real611, align 8, !tbaa !17
  %real612 = getelementptr inbounds %struct.dcomplex, ptr %temp, i32 0, i32 0
  store double %517, ptr %real612, align 8, !tbaa !17
  %imag613 = getelementptr inbounds %struct.dcomplex, ptr %z__1, i32 0, i32 1
  %518 = load double, ptr %imag613, align 8, !tbaa !19
  %imag614 = getelementptr inbounds %struct.dcomplex, ptr %temp, i32 0, i32 1
  store double %518, ptr %imag614, align 8, !tbaa !19
  br label %for.inc615

for.inc615:                                       ; preds = %for.body574
  %519 = load i32, ptr %i__, align 4, !tbaa !8
  %inc616 = add nsw i32 %519, 1
  store i32 %inc616, ptr %i__, align 4, !tbaa !8
  br label %for.cond572

for.end617:                                       ; preds = %for.cond572
  %520 = load i32, ptr %nounit, align 4, !tbaa !8
  %tobool618 = icmp ne i32 %520, 0
  br i1 %tobool618, label %if.then619, label %if.end628

if.then619:                                       ; preds = %for.end617
  %521 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %522 = load i32, ptr %kplus1, align 4, !tbaa !8
  %523 = load i32, ptr %j, align 4, !tbaa !8
  %524 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul620 = mul nsw i32 %523, %524
  %add621 = add nsw i32 %522, %mul620
  %idxprom622 = sext i32 %add621 to i64
  %arrayidx623 = getelementptr inbounds %struct.dcomplex, ptr %521, i64 %idxprom622
  call void @bla_d_cnjg(ptr noundef %z__2, ptr noundef %arrayidx623)
  call void @bla_z_div(ptr noundef %z__1, ptr noundef %temp, ptr noundef %z__2)
  %real624 = getelementptr inbounds %struct.dcomplex, ptr %z__1, i32 0, i32 0
  %525 = load double, ptr %real624, align 8, !tbaa !17
  %real625 = getelementptr inbounds %struct.dcomplex, ptr %temp, i32 0, i32 0
  store double %525, ptr %real625, align 8, !tbaa !17
  %imag626 = getelementptr inbounds %struct.dcomplex, ptr %z__1, i32 0, i32 1
  %526 = load double, ptr %imag626, align 8, !tbaa !19
  %imag627 = getelementptr inbounds %struct.dcomplex, ptr %temp, i32 0, i32 1
  store double %526, ptr %imag627, align 8, !tbaa !19
  br label %if.end628

if.end628:                                        ; preds = %if.then619, %for.end617
  br label %if.end629

if.end629:                                        ; preds = %if.end628, %if.end563
  %527 = load i32, ptr %j, align 4, !tbaa !8
  store i32 %527, ptr %i__3, align 4, !tbaa !8
  %real630 = getelementptr inbounds %struct.dcomplex, ptr %temp, i32 0, i32 0
  %528 = load double, ptr %real630, align 8, !tbaa !17
  %529 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %530 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom631 = sext i32 %530 to i64
  %arrayidx632 = getelementptr inbounds %struct.dcomplex, ptr %529, i64 %idxprom631
  %real633 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx632, i32 0, i32 0
  store double %528, ptr %real633, align 8, !tbaa !17
  %imag634 = getelementptr inbounds %struct.dcomplex, ptr %temp, i32 0, i32 1
  %531 = load double, ptr %imag634, align 8, !tbaa !19
  %532 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %533 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom635 = sext i32 %533 to i64
  %arrayidx636 = getelementptr inbounds %struct.dcomplex, ptr %532, i64 %idxprom635
  %imag637 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx636, i32 0, i32 1
  store double %531, ptr %imag637, align 8, !tbaa !19
  br label %for.inc638

for.inc638:                                       ; preds = %if.end629
  %534 = load i32, ptr %j, align 4, !tbaa !8
  %inc639 = add nsw i32 %534, 1
  store i32 %inc639, ptr %j, align 4, !tbaa !8
  br label %for.cond480

for.end640:                                       ; preds = %for.cond480
  br label %if.end810

if.else641:                                       ; preds = %if.then476
  %535 = load i32, ptr %kx, align 4, !tbaa !8
  store i32 %535, ptr %jx, align 4, !tbaa !8
  %536 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %537 = load i32, ptr %536, align 4, !tbaa !8
  store i32 %537, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %j, align 4, !tbaa !8
  br label %for.cond642

for.cond642:                                      ; preds = %for.inc807, %if.else641
  %538 = load i32, ptr %j, align 4, !tbaa !8
  %539 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp643 = icmp sle i32 %538, %539
  br i1 %cmp643, label %for.body644, label %for.end809

for.body644:                                      ; preds = %for.cond642
  %540 = load i32, ptr %jx, align 4, !tbaa !8
  store i32 %540, ptr %i__3, align 4, !tbaa !8
  %541 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %542 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom645 = sext i32 %542 to i64
  %arrayidx646 = getelementptr inbounds %struct.dcomplex, ptr %541, i64 %idxprom645
  %real647 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx646, i32 0, i32 0
  %543 = load double, ptr %real647, align 8, !tbaa !17
  %real648 = getelementptr inbounds %struct.dcomplex, ptr %temp, i32 0, i32 0
  store double %543, ptr %real648, align 8, !tbaa !17
  %544 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %545 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom649 = sext i32 %545 to i64
  %arrayidx650 = getelementptr inbounds %struct.dcomplex, ptr %544, i64 %idxprom649
  %imag651 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx650, i32 0, i32 1
  %546 = load double, ptr %imag651, align 8, !tbaa !19
  %imag652 = getelementptr inbounds %struct.dcomplex, ptr %temp, i32 0, i32 1
  store double %546, ptr %imag652, align 8, !tbaa !19
  %547 = load i32, ptr %kx, align 4, !tbaa !8
  store i32 %547, ptr %ix, align 4, !tbaa !8
  %548 = load i32, ptr %kplus1, align 4, !tbaa !8
  %549 = load i32, ptr %j, align 4, !tbaa !8
  %sub653 = sub nsw i32 %548, %549
  store i32 %sub653, ptr %l, align 4, !tbaa !8
  %550 = load i32, ptr %noconj, align 4, !tbaa !8
  %tobool654 = icmp ne i32 %550, 0
  br i1 %tobool654, label %if.then655, label %if.else727

if.then655:                                       ; preds = %for.body644
  store i32 1, ptr %i__3, align 4, !tbaa !8
  %551 = load i32, ptr %j, align 4, !tbaa !8
  %552 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %553 = load i32, ptr %552, align 4, !tbaa !8
  %sub656 = sub nsw i32 %551, %553
  store i32 %sub656, ptr %i__4, align 4, !tbaa !8
  %554 = load i32, ptr %j, align 4, !tbaa !8
  %sub657 = sub nsw i32 %554, 1
  store i32 %sub657, ptr %i__2, align 4, !tbaa !8
  %555 = load i32, ptr %i__3, align 4, !tbaa !8
  %556 = load i32, ptr %i__4, align 4, !tbaa !8
  %cmp658 = icmp sge i32 %555, %556
  br i1 %cmp658, label %cond.true659, label %cond.false660

cond.true659:                                     ; preds = %if.then655
  %557 = load i32, ptr %i__3, align 4, !tbaa !8
  br label %cond.end661

cond.false660:                                    ; preds = %if.then655
  %558 = load i32, ptr %i__4, align 4, !tbaa !8
  br label %cond.end661

cond.end661:                                      ; preds = %cond.false660, %cond.true659
  %cond662 = phi i32 [ %557, %cond.true659 ], [ %558, %cond.false660 ]
  store i32 %cond662, ptr %i__, align 4, !tbaa !8
  br label %for.cond663

for.cond663:                                      ; preds = %for.inc713, %cond.end661
  %559 = load i32, ptr %i__, align 4, !tbaa !8
  %560 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp664 = icmp sle i32 %559, %560
  br i1 %cmp664, label %for.body665, label %for.end715

for.body665:                                      ; preds = %for.cond663
  %561 = load i32, ptr %l, align 4, !tbaa !8
  %562 = load i32, ptr %i__, align 4, !tbaa !8
  %add666 = add nsw i32 %561, %562
  %563 = load i32, ptr %j, align 4, !tbaa !8
  %564 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul667 = mul nsw i32 %563, %564
  %add668 = add nsw i32 %add666, %mul667
  store i32 %add668, ptr %i__3, align 4, !tbaa !8
  %565 = load i32, ptr %ix, align 4, !tbaa !8
  store i32 %565, ptr %i__4, align 4, !tbaa !8
  %566 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %567 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom669 = sext i32 %567 to i64
  %arrayidx670 = getelementptr inbounds %struct.dcomplex, ptr %566, i64 %idxprom669
  %real671 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx670, i32 0, i32 0
  %568 = load double, ptr %real671, align 8, !tbaa !17
  %569 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %570 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom672 = sext i32 %570 to i64
  %arrayidx673 = getelementptr inbounds %struct.dcomplex, ptr %569, i64 %idxprom672
  %real674 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx673, i32 0, i32 0
  %571 = load double, ptr %real674, align 8, !tbaa !17
  %572 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %573 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom676 = sext i32 %573 to i64
  %arrayidx677 = getelementptr inbounds %struct.dcomplex, ptr %572, i64 %idxprom676
  %imag678 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx677, i32 0, i32 1
  %574 = load double, ptr %imag678, align 8, !tbaa !19
  %575 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %576 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom679 = sext i32 %576 to i64
  %arrayidx680 = getelementptr inbounds %struct.dcomplex, ptr %575, i64 %idxprom679
  %imag681 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx680, i32 0, i32 1
  %577 = load double, ptr %imag681, align 8, !tbaa !19
  %mul682 = fmul double %574, %577
  %neg683 = fneg double %mul682
  %578 = call double @llvm.fmuladd.f64(double %568, double %571, double %neg683)
  %real684 = getelementptr inbounds %struct.dcomplex, ptr %z__2, i32 0, i32 0
  store double %578, ptr %real684, align 8, !tbaa !17
  %579 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %580 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom685 = sext i32 %580 to i64
  %arrayidx686 = getelementptr inbounds %struct.dcomplex, ptr %579, i64 %idxprom685
  %real687 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx686, i32 0, i32 0
  %581 = load double, ptr %real687, align 8, !tbaa !17
  %582 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %583 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom688 = sext i32 %583 to i64
  %arrayidx689 = getelementptr inbounds %struct.dcomplex, ptr %582, i64 %idxprom688
  %imag690 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx689, i32 0, i32 1
  %584 = load double, ptr %imag690, align 8, !tbaa !19
  %585 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %586 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom692 = sext i32 %586 to i64
  %arrayidx693 = getelementptr inbounds %struct.dcomplex, ptr %585, i64 %idxprom692
  %imag694 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx693, i32 0, i32 1
  %587 = load double, ptr %imag694, align 8, !tbaa !19
  %588 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %589 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom695 = sext i32 %589 to i64
  %arrayidx696 = getelementptr inbounds %struct.dcomplex, ptr %588, i64 %idxprom695
  %real697 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx696, i32 0, i32 0
  %590 = load double, ptr %real697, align 8, !tbaa !17
  %mul698 = fmul double %587, %590
  %591 = call double @llvm.fmuladd.f64(double %581, double %584, double %mul698)
  %imag699 = getelementptr inbounds %struct.dcomplex, ptr %z__2, i32 0, i32 1
  store double %591, ptr %imag699, align 8, !tbaa !19
  %real700 = getelementptr inbounds %struct.dcomplex, ptr %temp, i32 0, i32 0
  %592 = load double, ptr %real700, align 8, !tbaa !17
  %real701 = getelementptr inbounds %struct.dcomplex, ptr %z__2, i32 0, i32 0
  %593 = load double, ptr %real701, align 8, !tbaa !17
  %sub702 = fsub double %592, %593
  %real703 = getelementptr inbounds %struct.dcomplex, ptr %z__1, i32 0, i32 0
  store double %sub702, ptr %real703, align 8, !tbaa !17
  %imag704 = getelementptr inbounds %struct.dcomplex, ptr %temp, i32 0, i32 1
  %594 = load double, ptr %imag704, align 8, !tbaa !19
  %imag705 = getelementptr inbounds %struct.dcomplex, ptr %z__2, i32 0, i32 1
  %595 = load double, ptr %imag705, align 8, !tbaa !19
  %sub706 = fsub double %594, %595
  %imag707 = getelementptr inbounds %struct.dcomplex, ptr %z__1, i32 0, i32 1
  store double %sub706, ptr %imag707, align 8, !tbaa !19
  %real708 = getelementptr inbounds %struct.dcomplex, ptr %z__1, i32 0, i32 0
  %596 = load double, ptr %real708, align 8, !tbaa !17
  %real709 = getelementptr inbounds %struct.dcomplex, ptr %temp, i32 0, i32 0
  store double %596, ptr %real709, align 8, !tbaa !17
  %imag710 = getelementptr inbounds %struct.dcomplex, ptr %z__1, i32 0, i32 1
  %597 = load double, ptr %imag710, align 8, !tbaa !19
  %imag711 = getelementptr inbounds %struct.dcomplex, ptr %temp, i32 0, i32 1
  store double %597, ptr %imag711, align 8, !tbaa !19
  %598 = load ptr, ptr %incx.addr, align 8, !tbaa !4
  %599 = load i32, ptr %598, align 4, !tbaa !8
  %600 = load i32, ptr %ix, align 4, !tbaa !8
  %add712 = add nsw i32 %600, %599
  store i32 %add712, ptr %ix, align 4, !tbaa !8
  br label %for.inc713

for.inc713:                                       ; preds = %for.body665
  %601 = load i32, ptr %i__, align 4, !tbaa !8
  %inc714 = add nsw i32 %601, 1
  store i32 %inc714, ptr %i__, align 4, !tbaa !8
  br label %for.cond663

for.end715:                                       ; preds = %for.cond663
  %602 = load i32, ptr %nounit, align 4, !tbaa !8
  %tobool716 = icmp ne i32 %602, 0
  br i1 %tobool716, label %if.then717, label %if.end726

if.then717:                                       ; preds = %for.end715
  %603 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %604 = load i32, ptr %kplus1, align 4, !tbaa !8
  %605 = load i32, ptr %j, align 4, !tbaa !8
  %606 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul718 = mul nsw i32 %605, %606
  %add719 = add nsw i32 %604, %mul718
  %idxprom720 = sext i32 %add719 to i64
  %arrayidx721 = getelementptr inbounds %struct.dcomplex, ptr %603, i64 %idxprom720
  call void @bla_z_div(ptr noundef %z__1, ptr noundef %temp, ptr noundef %arrayidx721)
  %real722 = getelementptr inbounds %struct.dcomplex, ptr %z__1, i32 0, i32 0
  %607 = load double, ptr %real722, align 8, !tbaa !17
  %real723 = getelementptr inbounds %struct.dcomplex, ptr %temp, i32 0, i32 0
  store double %607, ptr %real723, align 8, !tbaa !17
  %imag724 = getelementptr inbounds %struct.dcomplex, ptr %z__1, i32 0, i32 1
  %608 = load double, ptr %imag724, align 8, !tbaa !19
  %imag725 = getelementptr inbounds %struct.dcomplex, ptr %temp, i32 0, i32 1
  store double %608, ptr %imag725, align 8, !tbaa !19
  br label %if.end726

if.end726:                                        ; preds = %if.then717, %for.end715
  br label %if.end793

if.else727:                                       ; preds = %for.body644
  store i32 1, ptr %i__2, align 4, !tbaa !8
  %609 = load i32, ptr %j, align 4, !tbaa !8
  %610 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %611 = load i32, ptr %610, align 4, !tbaa !8
  %sub728 = sub nsw i32 %609, %611
  store i32 %sub728, ptr %i__3, align 4, !tbaa !8
  %612 = load i32, ptr %j, align 4, !tbaa !8
  %sub729 = sub nsw i32 %612, 1
  store i32 %sub729, ptr %i__4, align 4, !tbaa !8
  %613 = load i32, ptr %i__2, align 4, !tbaa !8
  %614 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp730 = icmp sge i32 %613, %614
  br i1 %cmp730, label %cond.true731, label %cond.false732

cond.true731:                                     ; preds = %if.else727
  %615 = load i32, ptr %i__2, align 4, !tbaa !8
  br label %cond.end733

cond.false732:                                    ; preds = %if.else727
  %616 = load i32, ptr %i__3, align 4, !tbaa !8
  br label %cond.end733

cond.end733:                                      ; preds = %cond.false732, %cond.true731
  %cond734 = phi i32 [ %615, %cond.true731 ], [ %616, %cond.false732 ]
  store i32 %cond734, ptr %i__, align 4, !tbaa !8
  br label %for.cond735

for.cond735:                                      ; preds = %for.inc779, %cond.end733
  %617 = load i32, ptr %i__, align 4, !tbaa !8
  %618 = load i32, ptr %i__4, align 4, !tbaa !8
  %cmp736 = icmp sle i32 %617, %618
  br i1 %cmp736, label %for.body737, label %for.end781

for.body737:                                      ; preds = %for.cond735
  %619 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %620 = load i32, ptr %l, align 4, !tbaa !8
  %621 = load i32, ptr %i__, align 4, !tbaa !8
  %add738 = add nsw i32 %620, %621
  %622 = load i32, ptr %j, align 4, !tbaa !8
  %623 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul739 = mul nsw i32 %622, %623
  %add740 = add nsw i32 %add738, %mul739
  %idxprom741 = sext i32 %add740 to i64
  %arrayidx742 = getelementptr inbounds %struct.dcomplex, ptr %619, i64 %idxprom741
  call void @bla_d_cnjg(ptr noundef %z__3, ptr noundef %arrayidx742)
  %624 = load i32, ptr %ix, align 4, !tbaa !8
  store i32 %624, ptr %i__2, align 4, !tbaa !8
  %real743 = getelementptr inbounds %struct.dcomplex, ptr %z__3, i32 0, i32 0
  %625 = load double, ptr %real743, align 8, !tbaa !17
  %626 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %627 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom744 = sext i32 %627 to i64
  %arrayidx745 = getelementptr inbounds %struct.dcomplex, ptr %626, i64 %idxprom744
  %real746 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx745, i32 0, i32 0
  %628 = load double, ptr %real746, align 8, !tbaa !17
  %imag748 = getelementptr inbounds %struct.dcomplex, ptr %z__3, i32 0, i32 1
  %629 = load double, ptr %imag748, align 8, !tbaa !19
  %630 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %631 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom749 = sext i32 %631 to i64
  %arrayidx750 = getelementptr inbounds %struct.dcomplex, ptr %630, i64 %idxprom749
  %imag751 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx750, i32 0, i32 1
  %632 = load double, ptr %imag751, align 8, !tbaa !19
  %mul752 = fmul double %629, %632
  %neg753 = fneg double %mul752
  %633 = call double @llvm.fmuladd.f64(double %625, double %628, double %neg753)
  %real754 = getelementptr inbounds %struct.dcomplex, ptr %z__2, i32 0, i32 0
  store double %633, ptr %real754, align 8, !tbaa !17
  %real755 = getelementptr inbounds %struct.dcomplex, ptr %z__3, i32 0, i32 0
  %634 = load double, ptr %real755, align 8, !tbaa !17
  %635 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %636 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom756 = sext i32 %636 to i64
  %arrayidx757 = getelementptr inbounds %struct.dcomplex, ptr %635, i64 %idxprom756
  %imag758 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx757, i32 0, i32 1
  %637 = load double, ptr %imag758, align 8, !tbaa !19
  %imag760 = getelementptr inbounds %struct.dcomplex, ptr %z__3, i32 0, i32 1
  %638 = load double, ptr %imag760, align 8, !tbaa !19
  %639 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %640 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom761 = sext i32 %640 to i64
  %arrayidx762 = getelementptr inbounds %struct.dcomplex, ptr %639, i64 %idxprom761
  %real763 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx762, i32 0, i32 0
  %641 = load double, ptr %real763, align 8, !tbaa !17
  %mul764 = fmul double %638, %641
  %642 = call double @llvm.fmuladd.f64(double %634, double %637, double %mul764)
  %imag765 = getelementptr inbounds %struct.dcomplex, ptr %z__2, i32 0, i32 1
  store double %642, ptr %imag765, align 8, !tbaa !19
  %real766 = getelementptr inbounds %struct.dcomplex, ptr %temp, i32 0, i32 0
  %643 = load double, ptr %real766, align 8, !tbaa !17
  %real767 = getelementptr inbounds %struct.dcomplex, ptr %z__2, i32 0, i32 0
  %644 = load double, ptr %real767, align 8, !tbaa !17
  %sub768 = fsub double %643, %644
  %real769 = getelementptr inbounds %struct.dcomplex, ptr %z__1, i32 0, i32 0
  store double %sub768, ptr %real769, align 8, !tbaa !17
  %imag770 = getelementptr inbounds %struct.dcomplex, ptr %temp, i32 0, i32 1
  %645 = load double, ptr %imag770, align 8, !tbaa !19
  %imag771 = getelementptr inbounds %struct.dcomplex, ptr %z__2, i32 0, i32 1
  %646 = load double, ptr %imag771, align 8, !tbaa !19
  %sub772 = fsub double %645, %646
  %imag773 = getelementptr inbounds %struct.dcomplex, ptr %z__1, i32 0, i32 1
  store double %sub772, ptr %imag773, align 8, !tbaa !19
  %real774 = getelementptr inbounds %struct.dcomplex, ptr %z__1, i32 0, i32 0
  %647 = load double, ptr %real774, align 8, !tbaa !17
  %real775 = getelementptr inbounds %struct.dcomplex, ptr %temp, i32 0, i32 0
  store double %647, ptr %real775, align 8, !tbaa !17
  %imag776 = getelementptr inbounds %struct.dcomplex, ptr %z__1, i32 0, i32 1
  %648 = load double, ptr %imag776, align 8, !tbaa !19
  %imag777 = getelementptr inbounds %struct.dcomplex, ptr %temp, i32 0, i32 1
  store double %648, ptr %imag777, align 8, !tbaa !19
  %649 = load ptr, ptr %incx.addr, align 8, !tbaa !4
  %650 = load i32, ptr %649, align 4, !tbaa !8
  %651 = load i32, ptr %ix, align 4, !tbaa !8
  %add778 = add nsw i32 %651, %650
  store i32 %add778, ptr %ix, align 4, !tbaa !8
  br label %for.inc779

for.inc779:                                       ; preds = %for.body737
  %652 = load i32, ptr %i__, align 4, !tbaa !8
  %inc780 = add nsw i32 %652, 1
  store i32 %inc780, ptr %i__, align 4, !tbaa !8
  br label %for.cond735

for.end781:                                       ; preds = %for.cond735
  %653 = load i32, ptr %nounit, align 4, !tbaa !8
  %tobool782 = icmp ne i32 %653, 0
  br i1 %tobool782, label %if.then783, label %if.end792

if.then783:                                       ; preds = %for.end781
  %654 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %655 = load i32, ptr %kplus1, align 4, !tbaa !8
  %656 = load i32, ptr %j, align 4, !tbaa !8
  %657 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul784 = mul nsw i32 %656, %657
  %add785 = add nsw i32 %655, %mul784
  %idxprom786 = sext i32 %add785 to i64
  %arrayidx787 = getelementptr inbounds %struct.dcomplex, ptr %654, i64 %idxprom786
  call void @bla_d_cnjg(ptr noundef %z__2, ptr noundef %arrayidx787)
  call void @bla_z_div(ptr noundef %z__1, ptr noundef %temp, ptr noundef %z__2)
  %real788 = getelementptr inbounds %struct.dcomplex, ptr %z__1, i32 0, i32 0
  %658 = load double, ptr %real788, align 8, !tbaa !17
  %real789 = getelementptr inbounds %struct.dcomplex, ptr %temp, i32 0, i32 0
  store double %658, ptr %real789, align 8, !tbaa !17
  %imag790 = getelementptr inbounds %struct.dcomplex, ptr %z__1, i32 0, i32 1
  %659 = load double, ptr %imag790, align 8, !tbaa !19
  %imag791 = getelementptr inbounds %struct.dcomplex, ptr %temp, i32 0, i32 1
  store double %659, ptr %imag791, align 8, !tbaa !19
  br label %if.end792

if.end792:                                        ; preds = %if.then783, %for.end781
  br label %if.end793

if.end793:                                        ; preds = %if.end792, %if.end726
  %660 = load i32, ptr %jx, align 4, !tbaa !8
  store i32 %660, ptr %i__4, align 4, !tbaa !8
  %real794 = getelementptr inbounds %struct.dcomplex, ptr %temp, i32 0, i32 0
  %661 = load double, ptr %real794, align 8, !tbaa !17
  %662 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %663 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom795 = sext i32 %663 to i64
  %arrayidx796 = getelementptr inbounds %struct.dcomplex, ptr %662, i64 %idxprom795
  %real797 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx796, i32 0, i32 0
  store double %661, ptr %real797, align 8, !tbaa !17
  %imag798 = getelementptr inbounds %struct.dcomplex, ptr %temp, i32 0, i32 1
  %664 = load double, ptr %imag798, align 8, !tbaa !19
  %665 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %666 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom799 = sext i32 %666 to i64
  %arrayidx800 = getelementptr inbounds %struct.dcomplex, ptr %665, i64 %idxprom799
  %imag801 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx800, i32 0, i32 1
  store double %664, ptr %imag801, align 8, !tbaa !19
  %667 = load ptr, ptr %incx.addr, align 8, !tbaa !4
  %668 = load i32, ptr %667, align 4, !tbaa !8
  %669 = load i32, ptr %jx, align 4, !tbaa !8
  %add802 = add nsw i32 %669, %668
  store i32 %add802, ptr %jx, align 4, !tbaa !8
  %670 = load i32, ptr %j, align 4, !tbaa !8
  %671 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %672 = load i32, ptr %671, align 4, !tbaa !8
  %cmp803 = icmp sgt i32 %670, %672
  br i1 %cmp803, label %if.then804, label %if.end806

if.then804:                                       ; preds = %if.end793
  %673 = load ptr, ptr %incx.addr, align 8, !tbaa !4
  %674 = load i32, ptr %673, align 4, !tbaa !8
  %675 = load i32, ptr %kx, align 4, !tbaa !8
  %add805 = add nsw i32 %675, %674
  store i32 %add805, ptr %kx, align 4, !tbaa !8
  br label %if.end806

if.end806:                                        ; preds = %if.then804, %if.end793
  br label %for.inc807

for.inc807:                                       ; preds = %if.end806
  %676 = load i32, ptr %j, align 4, !tbaa !8
  %inc808 = add nsw i32 %676, 1
  store i32 %inc808, ptr %j, align 4, !tbaa !8
  br label %for.cond642

for.end809:                                       ; preds = %for.cond642
  br label %if.end810

if.end810:                                        ; preds = %for.end809, %for.end640
  br label %if.end1149

if.else811:                                       ; preds = %if.else473
  %677 = load ptr, ptr %incx.addr, align 8, !tbaa !4
  %678 = load i32, ptr %677, align 4, !tbaa !8
  %cmp812 = icmp eq i32 %678, 1
  br i1 %cmp812, label %if.then813, label %if.else975

if.then813:                                       ; preds = %if.else811
  %679 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %680 = load i32, ptr %679, align 4, !tbaa !8
  store i32 %680, ptr %j, align 4, !tbaa !8
  br label %for.cond814

for.cond814:                                      ; preds = %for.inc972, %if.then813
  %681 = load i32, ptr %j, align 4, !tbaa !8
  %cmp815 = icmp sge i32 %681, 1
  br i1 %cmp815, label %for.body816, label %for.end974

for.body816:                                      ; preds = %for.cond814
  %682 = load i32, ptr %j, align 4, !tbaa !8
  store i32 %682, ptr %i__1, align 4, !tbaa !8
  %683 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %684 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom817 = sext i32 %684 to i64
  %arrayidx818 = getelementptr inbounds %struct.dcomplex, ptr %683, i64 %idxprom817
  %real819 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx818, i32 0, i32 0
  %685 = load double, ptr %real819, align 8, !tbaa !17
  %real820 = getelementptr inbounds %struct.dcomplex, ptr %temp, i32 0, i32 0
  store double %685, ptr %real820, align 8, !tbaa !17
  %686 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %687 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom821 = sext i32 %687 to i64
  %arrayidx822 = getelementptr inbounds %struct.dcomplex, ptr %686, i64 %idxprom821
  %imag823 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx822, i32 0, i32 1
  %688 = load double, ptr %imag823, align 8, !tbaa !19
  %imag824 = getelementptr inbounds %struct.dcomplex, ptr %temp, i32 0, i32 1
  store double %688, ptr %imag824, align 8, !tbaa !19
  %689 = load i32, ptr %j, align 4, !tbaa !8
  %sub825 = sub nsw i32 1, %689
  store i32 %sub825, ptr %l, align 4, !tbaa !8
  %690 = load i32, ptr %noconj, align 4, !tbaa !8
  %tobool826 = icmp ne i32 %690, 0
  br i1 %tobool826, label %if.then827, label %if.else898

if.then827:                                       ; preds = %for.body816
  %691 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %692 = load i32, ptr %691, align 4, !tbaa !8
  store i32 %692, ptr %i__1, align 4, !tbaa !8
  %693 = load i32, ptr %j, align 4, !tbaa !8
  %694 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %695 = load i32, ptr %694, align 4, !tbaa !8
  %add828 = add nsw i32 %693, %695
  store i32 %add828, ptr %i__4, align 4, !tbaa !8
  %696 = load i32, ptr %j, align 4, !tbaa !8
  %add829 = add nsw i32 %696, 1
  store i32 %add829, ptr %i__2, align 4, !tbaa !8
  %697 = load i32, ptr %i__1, align 4, !tbaa !8
  %698 = load i32, ptr %i__4, align 4, !tbaa !8
  %cmp830 = icmp sle i32 %697, %698
  br i1 %cmp830, label %cond.true831, label %cond.false832

cond.true831:                                     ; preds = %if.then827
  %699 = load i32, ptr %i__1, align 4, !tbaa !8
  br label %cond.end833

cond.false832:                                    ; preds = %if.then827
  %700 = load i32, ptr %i__4, align 4, !tbaa !8
  br label %cond.end833

cond.end833:                                      ; preds = %cond.false832, %cond.true831
  %cond834 = phi i32 [ %699, %cond.true831 ], [ %700, %cond.false832 ]
  store i32 %cond834, ptr %i__, align 4, !tbaa !8
  br label %for.cond835

for.cond835:                                      ; preds = %for.inc884, %cond.end833
  %701 = load i32, ptr %i__, align 4, !tbaa !8
  %702 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp836 = icmp sge i32 %701, %702
  br i1 %cmp836, label %for.body837, label %for.end886

for.body837:                                      ; preds = %for.cond835
  %703 = load i32, ptr %l, align 4, !tbaa !8
  %704 = load i32, ptr %i__, align 4, !tbaa !8
  %add838 = add nsw i32 %703, %704
  %705 = load i32, ptr %j, align 4, !tbaa !8
  %706 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul839 = mul nsw i32 %705, %706
  %add840 = add nsw i32 %add838, %mul839
  store i32 %add840, ptr %i__1, align 4, !tbaa !8
  %707 = load i32, ptr %i__, align 4, !tbaa !8
  store i32 %707, ptr %i__4, align 4, !tbaa !8
  %708 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %709 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom841 = sext i32 %709 to i64
  %arrayidx842 = getelementptr inbounds %struct.dcomplex, ptr %708, i64 %idxprom841
  %real843 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx842, i32 0, i32 0
  %710 = load double, ptr %real843, align 8, !tbaa !17
  %711 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %712 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom844 = sext i32 %712 to i64
  %arrayidx845 = getelementptr inbounds %struct.dcomplex, ptr %711, i64 %idxprom844
  %real846 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx845, i32 0, i32 0
  %713 = load double, ptr %real846, align 8, !tbaa !17
  %714 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %715 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom848 = sext i32 %715 to i64
  %arrayidx849 = getelementptr inbounds %struct.dcomplex, ptr %714, i64 %idxprom848
  %imag850 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx849, i32 0, i32 1
  %716 = load double, ptr %imag850, align 8, !tbaa !19
  %717 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %718 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom851 = sext i32 %718 to i64
  %arrayidx852 = getelementptr inbounds %struct.dcomplex, ptr %717, i64 %idxprom851
  %imag853 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx852, i32 0, i32 1
  %719 = load double, ptr %imag853, align 8, !tbaa !19
  %mul854 = fmul double %716, %719
  %neg855 = fneg double %mul854
  %720 = call double @llvm.fmuladd.f64(double %710, double %713, double %neg855)
  %real856 = getelementptr inbounds %struct.dcomplex, ptr %z__2, i32 0, i32 0
  store double %720, ptr %real856, align 8, !tbaa !17
  %721 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %722 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom857 = sext i32 %722 to i64
  %arrayidx858 = getelementptr inbounds %struct.dcomplex, ptr %721, i64 %idxprom857
  %real859 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx858, i32 0, i32 0
  %723 = load double, ptr %real859, align 8, !tbaa !17
  %724 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %725 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom860 = sext i32 %725 to i64
  %arrayidx861 = getelementptr inbounds %struct.dcomplex, ptr %724, i64 %idxprom860
  %imag862 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx861, i32 0, i32 1
  %726 = load double, ptr %imag862, align 8, !tbaa !19
  %727 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %728 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom864 = sext i32 %728 to i64
  %arrayidx865 = getelementptr inbounds %struct.dcomplex, ptr %727, i64 %idxprom864
  %imag866 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx865, i32 0, i32 1
  %729 = load double, ptr %imag866, align 8, !tbaa !19
  %730 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %731 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom867 = sext i32 %731 to i64
  %arrayidx868 = getelementptr inbounds %struct.dcomplex, ptr %730, i64 %idxprom867
  %real869 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx868, i32 0, i32 0
  %732 = load double, ptr %real869, align 8, !tbaa !17
  %mul870 = fmul double %729, %732
  %733 = call double @llvm.fmuladd.f64(double %723, double %726, double %mul870)
  %imag871 = getelementptr inbounds %struct.dcomplex, ptr %z__2, i32 0, i32 1
  store double %733, ptr %imag871, align 8, !tbaa !19
  %real872 = getelementptr inbounds %struct.dcomplex, ptr %temp, i32 0, i32 0
  %734 = load double, ptr %real872, align 8, !tbaa !17
  %real873 = getelementptr inbounds %struct.dcomplex, ptr %z__2, i32 0, i32 0
  %735 = load double, ptr %real873, align 8, !tbaa !17
  %sub874 = fsub double %734, %735
  %real875 = getelementptr inbounds %struct.dcomplex, ptr %z__1, i32 0, i32 0
  store double %sub874, ptr %real875, align 8, !tbaa !17
  %imag876 = getelementptr inbounds %struct.dcomplex, ptr %temp, i32 0, i32 1
  %736 = load double, ptr %imag876, align 8, !tbaa !19
  %imag877 = getelementptr inbounds %struct.dcomplex, ptr %z__2, i32 0, i32 1
  %737 = load double, ptr %imag877, align 8, !tbaa !19
  %sub878 = fsub double %736, %737
  %imag879 = getelementptr inbounds %struct.dcomplex, ptr %z__1, i32 0, i32 1
  store double %sub878, ptr %imag879, align 8, !tbaa !19
  %real880 = getelementptr inbounds %struct.dcomplex, ptr %z__1, i32 0, i32 0
  %738 = load double, ptr %real880, align 8, !tbaa !17
  %real881 = getelementptr inbounds %struct.dcomplex, ptr %temp, i32 0, i32 0
  store double %738, ptr %real881, align 8, !tbaa !17
  %imag882 = getelementptr inbounds %struct.dcomplex, ptr %z__1, i32 0, i32 1
  %739 = load double, ptr %imag882, align 8, !tbaa !19
  %imag883 = getelementptr inbounds %struct.dcomplex, ptr %temp, i32 0, i32 1
  store double %739, ptr %imag883, align 8, !tbaa !19
  br label %for.inc884

for.inc884:                                       ; preds = %for.body837
  %740 = load i32, ptr %i__, align 4, !tbaa !8
  %dec885 = add nsw i32 %740, -1
  store i32 %dec885, ptr %i__, align 4, !tbaa !8
  br label %for.cond835

for.end886:                                       ; preds = %for.cond835
  %741 = load i32, ptr %nounit, align 4, !tbaa !8
  %tobool887 = icmp ne i32 %741, 0
  br i1 %tobool887, label %if.then888, label %if.end897

if.then888:                                       ; preds = %for.end886
  %742 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %743 = load i32, ptr %j, align 4, !tbaa !8
  %744 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul889 = mul nsw i32 %743, %744
  %add890 = add nsw i32 %mul889, 1
  %idxprom891 = sext i32 %add890 to i64
  %arrayidx892 = getelementptr inbounds %struct.dcomplex, ptr %742, i64 %idxprom891
  call void @bla_z_div(ptr noundef %z__1, ptr noundef %temp, ptr noundef %arrayidx892)
  %real893 = getelementptr inbounds %struct.dcomplex, ptr %z__1, i32 0, i32 0
  %745 = load double, ptr %real893, align 8, !tbaa !17
  %real894 = getelementptr inbounds %struct.dcomplex, ptr %temp, i32 0, i32 0
  store double %745, ptr %real894, align 8, !tbaa !17
  %imag895 = getelementptr inbounds %struct.dcomplex, ptr %z__1, i32 0, i32 1
  %746 = load double, ptr %imag895, align 8, !tbaa !19
  %imag896 = getelementptr inbounds %struct.dcomplex, ptr %temp, i32 0, i32 1
  store double %746, ptr %imag896, align 8, !tbaa !19
  br label %if.end897

if.end897:                                        ; preds = %if.then888, %for.end886
  br label %if.end963

if.else898:                                       ; preds = %for.body816
  %747 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %748 = load i32, ptr %747, align 4, !tbaa !8
  store i32 %748, ptr %i__2, align 4, !tbaa !8
  %749 = load i32, ptr %j, align 4, !tbaa !8
  %750 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %751 = load i32, ptr %750, align 4, !tbaa !8
  %add899 = add nsw i32 %749, %751
  store i32 %add899, ptr %i__1, align 4, !tbaa !8
  %752 = load i32, ptr %j, align 4, !tbaa !8
  %add900 = add nsw i32 %752, 1
  store i32 %add900, ptr %i__4, align 4, !tbaa !8
  %753 = load i32, ptr %i__2, align 4, !tbaa !8
  %754 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp901 = icmp sle i32 %753, %754
  br i1 %cmp901, label %cond.true902, label %cond.false903

cond.true902:                                     ; preds = %if.else898
  %755 = load i32, ptr %i__2, align 4, !tbaa !8
  br label %cond.end904

cond.false903:                                    ; preds = %if.else898
  %756 = load i32, ptr %i__1, align 4, !tbaa !8
  br label %cond.end904

cond.end904:                                      ; preds = %cond.false903, %cond.true902
  %cond905 = phi i32 [ %755, %cond.true902 ], [ %756, %cond.false903 ]
  store i32 %cond905, ptr %i__, align 4, !tbaa !8
  br label %for.cond906

for.cond906:                                      ; preds = %for.inc949, %cond.end904
  %757 = load i32, ptr %i__, align 4, !tbaa !8
  %758 = load i32, ptr %i__4, align 4, !tbaa !8
  %cmp907 = icmp sge i32 %757, %758
  br i1 %cmp907, label %for.body908, label %for.end951

for.body908:                                      ; preds = %for.cond906
  %759 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %760 = load i32, ptr %l, align 4, !tbaa !8
  %761 = load i32, ptr %i__, align 4, !tbaa !8
  %add909 = add nsw i32 %760, %761
  %762 = load i32, ptr %j, align 4, !tbaa !8
  %763 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul910 = mul nsw i32 %762, %763
  %add911 = add nsw i32 %add909, %mul910
  %idxprom912 = sext i32 %add911 to i64
  %arrayidx913 = getelementptr inbounds %struct.dcomplex, ptr %759, i64 %idxprom912
  call void @bla_d_cnjg(ptr noundef %z__3, ptr noundef %arrayidx913)
  %764 = load i32, ptr %i__, align 4, !tbaa !8
  store i32 %764, ptr %i__2, align 4, !tbaa !8
  %real914 = getelementptr inbounds %struct.dcomplex, ptr %z__3, i32 0, i32 0
  %765 = load double, ptr %real914, align 8, !tbaa !17
  %766 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %767 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom915 = sext i32 %767 to i64
  %arrayidx916 = getelementptr inbounds %struct.dcomplex, ptr %766, i64 %idxprom915
  %real917 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx916, i32 0, i32 0
  %768 = load double, ptr %real917, align 8, !tbaa !17
  %imag919 = getelementptr inbounds %struct.dcomplex, ptr %z__3, i32 0, i32 1
  %769 = load double, ptr %imag919, align 8, !tbaa !19
  %770 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %771 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom920 = sext i32 %771 to i64
  %arrayidx921 = getelementptr inbounds %struct.dcomplex, ptr %770, i64 %idxprom920
  %imag922 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx921, i32 0, i32 1
  %772 = load double, ptr %imag922, align 8, !tbaa !19
  %mul923 = fmul double %769, %772
  %neg924 = fneg double %mul923
  %773 = call double @llvm.fmuladd.f64(double %765, double %768, double %neg924)
  %real925 = getelementptr inbounds %struct.dcomplex, ptr %z__2, i32 0, i32 0
  store double %773, ptr %real925, align 8, !tbaa !17
  %real926 = getelementptr inbounds %struct.dcomplex, ptr %z__3, i32 0, i32 0
  %774 = load double, ptr %real926, align 8, !tbaa !17
  %775 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %776 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom927 = sext i32 %776 to i64
  %arrayidx928 = getelementptr inbounds %struct.dcomplex, ptr %775, i64 %idxprom927
  %imag929 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx928, i32 0, i32 1
  %777 = load double, ptr %imag929, align 8, !tbaa !19
  %imag931 = getelementptr inbounds %struct.dcomplex, ptr %z__3, i32 0, i32 1
  %778 = load double, ptr %imag931, align 8, !tbaa !19
  %779 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %780 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom932 = sext i32 %780 to i64
  %arrayidx933 = getelementptr inbounds %struct.dcomplex, ptr %779, i64 %idxprom932
  %real934 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx933, i32 0, i32 0
  %781 = load double, ptr %real934, align 8, !tbaa !17
  %mul935 = fmul double %778, %781
  %782 = call double @llvm.fmuladd.f64(double %774, double %777, double %mul935)
  %imag936 = getelementptr inbounds %struct.dcomplex, ptr %z__2, i32 0, i32 1
  store double %782, ptr %imag936, align 8, !tbaa !19
  %real937 = getelementptr inbounds %struct.dcomplex, ptr %temp, i32 0, i32 0
  %783 = load double, ptr %real937, align 8, !tbaa !17
  %real938 = getelementptr inbounds %struct.dcomplex, ptr %z__2, i32 0, i32 0
  %784 = load double, ptr %real938, align 8, !tbaa !17
  %sub939 = fsub double %783, %784
  %real940 = getelementptr inbounds %struct.dcomplex, ptr %z__1, i32 0, i32 0
  store double %sub939, ptr %real940, align 8, !tbaa !17
  %imag941 = getelementptr inbounds %struct.dcomplex, ptr %temp, i32 0, i32 1
  %785 = load double, ptr %imag941, align 8, !tbaa !19
  %imag942 = getelementptr inbounds %struct.dcomplex, ptr %z__2, i32 0, i32 1
  %786 = load double, ptr %imag942, align 8, !tbaa !19
  %sub943 = fsub double %785, %786
  %imag944 = getelementptr inbounds %struct.dcomplex, ptr %z__1, i32 0, i32 1
  store double %sub943, ptr %imag944, align 8, !tbaa !19
  %real945 = getelementptr inbounds %struct.dcomplex, ptr %z__1, i32 0, i32 0
  %787 = load double, ptr %real945, align 8, !tbaa !17
  %real946 = getelementptr inbounds %struct.dcomplex, ptr %temp, i32 0, i32 0
  store double %787, ptr %real946, align 8, !tbaa !17
  %imag947 = getelementptr inbounds %struct.dcomplex, ptr %z__1, i32 0, i32 1
  %788 = load double, ptr %imag947, align 8, !tbaa !19
  %imag948 = getelementptr inbounds %struct.dcomplex, ptr %temp, i32 0, i32 1
  store double %788, ptr %imag948, align 8, !tbaa !19
  br label %for.inc949

for.inc949:                                       ; preds = %for.body908
  %789 = load i32, ptr %i__, align 4, !tbaa !8
  %dec950 = add nsw i32 %789, -1
  store i32 %dec950, ptr %i__, align 4, !tbaa !8
  br label %for.cond906

for.end951:                                       ; preds = %for.cond906
  %790 = load i32, ptr %nounit, align 4, !tbaa !8
  %tobool952 = icmp ne i32 %790, 0
  br i1 %tobool952, label %if.then953, label %if.end962

if.then953:                                       ; preds = %for.end951
  %791 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %792 = load i32, ptr %j, align 4, !tbaa !8
  %793 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul954 = mul nsw i32 %792, %793
  %add955 = add nsw i32 %mul954, 1
  %idxprom956 = sext i32 %add955 to i64
  %arrayidx957 = getelementptr inbounds %struct.dcomplex, ptr %791, i64 %idxprom956
  call void @bla_d_cnjg(ptr noundef %z__2, ptr noundef %arrayidx957)
  call void @bla_z_div(ptr noundef %z__1, ptr noundef %temp, ptr noundef %z__2)
  %real958 = getelementptr inbounds %struct.dcomplex, ptr %z__1, i32 0, i32 0
  %794 = load double, ptr %real958, align 8, !tbaa !17
  %real959 = getelementptr inbounds %struct.dcomplex, ptr %temp, i32 0, i32 0
  store double %794, ptr %real959, align 8, !tbaa !17
  %imag960 = getelementptr inbounds %struct.dcomplex, ptr %z__1, i32 0, i32 1
  %795 = load double, ptr %imag960, align 8, !tbaa !19
  %imag961 = getelementptr inbounds %struct.dcomplex, ptr %temp, i32 0, i32 1
  store double %795, ptr %imag961, align 8, !tbaa !19
  br label %if.end962

if.end962:                                        ; preds = %if.then953, %for.end951
  br label %if.end963

if.end963:                                        ; preds = %if.end962, %if.end897
  %796 = load i32, ptr %j, align 4, !tbaa !8
  store i32 %796, ptr %i__4, align 4, !tbaa !8
  %real964 = getelementptr inbounds %struct.dcomplex, ptr %temp, i32 0, i32 0
  %797 = load double, ptr %real964, align 8, !tbaa !17
  %798 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %799 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom965 = sext i32 %799 to i64
  %arrayidx966 = getelementptr inbounds %struct.dcomplex, ptr %798, i64 %idxprom965
  %real967 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx966, i32 0, i32 0
  store double %797, ptr %real967, align 8, !tbaa !17
  %imag968 = getelementptr inbounds %struct.dcomplex, ptr %temp, i32 0, i32 1
  %800 = load double, ptr %imag968, align 8, !tbaa !19
  %801 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %802 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom969 = sext i32 %802 to i64
  %arrayidx970 = getelementptr inbounds %struct.dcomplex, ptr %801, i64 %idxprom969
  %imag971 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx970, i32 0, i32 1
  store double %800, ptr %imag971, align 8, !tbaa !19
  br label %for.inc972

for.inc972:                                       ; preds = %if.end963
  %803 = load i32, ptr %j, align 4, !tbaa !8
  %dec973 = add nsw i32 %803, -1
  store i32 %dec973, ptr %j, align 4, !tbaa !8
  br label %for.cond814

for.end974:                                       ; preds = %for.cond814
  br label %if.end1148

if.else975:                                       ; preds = %if.else811
  %804 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %805 = load i32, ptr %804, align 4, !tbaa !8
  %sub976 = sub nsw i32 %805, 1
  %806 = load ptr, ptr %incx.addr, align 8, !tbaa !4
  %807 = load i32, ptr %806, align 4, !tbaa !8
  %mul977 = mul nsw i32 %sub976, %807
  %808 = load i32, ptr %kx, align 4, !tbaa !8
  %add978 = add nsw i32 %808, %mul977
  store i32 %add978, ptr %kx, align 4, !tbaa !8
  %809 = load i32, ptr %kx, align 4, !tbaa !8
  store i32 %809, ptr %jx, align 4, !tbaa !8
  %810 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %811 = load i32, ptr %810, align 4, !tbaa !8
  store i32 %811, ptr %j, align 4, !tbaa !8
  br label %for.cond979

for.cond979:                                      ; preds = %for.inc1145, %if.else975
  %812 = load i32, ptr %j, align 4, !tbaa !8
  %cmp980 = icmp sge i32 %812, 1
  br i1 %cmp980, label %for.body981, label %for.end1147

for.body981:                                      ; preds = %for.cond979
  %813 = load i32, ptr %jx, align 4, !tbaa !8
  store i32 %813, ptr %i__4, align 4, !tbaa !8
  %814 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %815 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom982 = sext i32 %815 to i64
  %arrayidx983 = getelementptr inbounds %struct.dcomplex, ptr %814, i64 %idxprom982
  %real984 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx983, i32 0, i32 0
  %816 = load double, ptr %real984, align 8, !tbaa !17
  %real985 = getelementptr inbounds %struct.dcomplex, ptr %temp, i32 0, i32 0
  store double %816, ptr %real985, align 8, !tbaa !17
  %817 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %818 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom986 = sext i32 %818 to i64
  %arrayidx987 = getelementptr inbounds %struct.dcomplex, ptr %817, i64 %idxprom986
  %imag988 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx987, i32 0, i32 1
  %819 = load double, ptr %imag988, align 8, !tbaa !19
  %imag989 = getelementptr inbounds %struct.dcomplex, ptr %temp, i32 0, i32 1
  store double %819, ptr %imag989, align 8, !tbaa !19
  %820 = load i32, ptr %kx, align 4, !tbaa !8
  store i32 %820, ptr %ix, align 4, !tbaa !8
  %821 = load i32, ptr %j, align 4, !tbaa !8
  %sub990 = sub nsw i32 1, %821
  store i32 %sub990, ptr %l, align 4, !tbaa !8
  %822 = load i32, ptr %noconj, align 4, !tbaa !8
  %tobool991 = icmp ne i32 %822, 0
  br i1 %tobool991, label %if.then992, label %if.else1064

if.then992:                                       ; preds = %for.body981
  %823 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %824 = load i32, ptr %823, align 4, !tbaa !8
  store i32 %824, ptr %i__4, align 4, !tbaa !8
  %825 = load i32, ptr %j, align 4, !tbaa !8
  %826 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %827 = load i32, ptr %826, align 4, !tbaa !8
  %add993 = add nsw i32 %825, %827
  store i32 %add993, ptr %i__2, align 4, !tbaa !8
  %828 = load i32, ptr %j, align 4, !tbaa !8
  %add994 = add nsw i32 %828, 1
  store i32 %add994, ptr %i__1, align 4, !tbaa !8
  %829 = load i32, ptr %i__4, align 4, !tbaa !8
  %830 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp995 = icmp sle i32 %829, %830
  br i1 %cmp995, label %cond.true996, label %cond.false997

cond.true996:                                     ; preds = %if.then992
  %831 = load i32, ptr %i__4, align 4, !tbaa !8
  br label %cond.end998

cond.false997:                                    ; preds = %if.then992
  %832 = load i32, ptr %i__2, align 4, !tbaa !8
  br label %cond.end998

cond.end998:                                      ; preds = %cond.false997, %cond.true996
  %cond999 = phi i32 [ %831, %cond.true996 ], [ %832, %cond.false997 ]
  store i32 %cond999, ptr %i__, align 4, !tbaa !8
  br label %for.cond1000

for.cond1000:                                     ; preds = %for.inc1050, %cond.end998
  %833 = load i32, ptr %i__, align 4, !tbaa !8
  %834 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp1001 = icmp sge i32 %833, %834
  br i1 %cmp1001, label %for.body1002, label %for.end1052

for.body1002:                                     ; preds = %for.cond1000
  %835 = load i32, ptr %l, align 4, !tbaa !8
  %836 = load i32, ptr %i__, align 4, !tbaa !8
  %add1003 = add nsw i32 %835, %836
  %837 = load i32, ptr %j, align 4, !tbaa !8
  %838 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul1004 = mul nsw i32 %837, %838
  %add1005 = add nsw i32 %add1003, %mul1004
  store i32 %add1005, ptr %i__4, align 4, !tbaa !8
  %839 = load i32, ptr %ix, align 4, !tbaa !8
  store i32 %839, ptr %i__2, align 4, !tbaa !8
  %840 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %841 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom1006 = sext i32 %841 to i64
  %arrayidx1007 = getelementptr inbounds %struct.dcomplex, ptr %840, i64 %idxprom1006
  %real1008 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx1007, i32 0, i32 0
  %842 = load double, ptr %real1008, align 8, !tbaa !17
  %843 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %844 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom1009 = sext i32 %844 to i64
  %arrayidx1010 = getelementptr inbounds %struct.dcomplex, ptr %843, i64 %idxprom1009
  %real1011 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx1010, i32 0, i32 0
  %845 = load double, ptr %real1011, align 8, !tbaa !17
  %846 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %847 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom1013 = sext i32 %847 to i64
  %arrayidx1014 = getelementptr inbounds %struct.dcomplex, ptr %846, i64 %idxprom1013
  %imag1015 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx1014, i32 0, i32 1
  %848 = load double, ptr %imag1015, align 8, !tbaa !19
  %849 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %850 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom1016 = sext i32 %850 to i64
  %arrayidx1017 = getelementptr inbounds %struct.dcomplex, ptr %849, i64 %idxprom1016
  %imag1018 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx1017, i32 0, i32 1
  %851 = load double, ptr %imag1018, align 8, !tbaa !19
  %mul1019 = fmul double %848, %851
  %neg1020 = fneg double %mul1019
  %852 = call double @llvm.fmuladd.f64(double %842, double %845, double %neg1020)
  %real1021 = getelementptr inbounds %struct.dcomplex, ptr %z__2, i32 0, i32 0
  store double %852, ptr %real1021, align 8, !tbaa !17
  %853 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %854 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom1022 = sext i32 %854 to i64
  %arrayidx1023 = getelementptr inbounds %struct.dcomplex, ptr %853, i64 %idxprom1022
  %real1024 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx1023, i32 0, i32 0
  %855 = load double, ptr %real1024, align 8, !tbaa !17
  %856 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %857 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom1025 = sext i32 %857 to i64
  %arrayidx1026 = getelementptr inbounds %struct.dcomplex, ptr %856, i64 %idxprom1025
  %imag1027 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx1026, i32 0, i32 1
  %858 = load double, ptr %imag1027, align 8, !tbaa !19
  %859 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %860 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom1029 = sext i32 %860 to i64
  %arrayidx1030 = getelementptr inbounds %struct.dcomplex, ptr %859, i64 %idxprom1029
  %imag1031 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx1030, i32 0, i32 1
  %861 = load double, ptr %imag1031, align 8, !tbaa !19
  %862 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %863 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom1032 = sext i32 %863 to i64
  %arrayidx1033 = getelementptr inbounds %struct.dcomplex, ptr %862, i64 %idxprom1032
  %real1034 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx1033, i32 0, i32 0
  %864 = load double, ptr %real1034, align 8, !tbaa !17
  %mul1035 = fmul double %861, %864
  %865 = call double @llvm.fmuladd.f64(double %855, double %858, double %mul1035)
  %imag1036 = getelementptr inbounds %struct.dcomplex, ptr %z__2, i32 0, i32 1
  store double %865, ptr %imag1036, align 8, !tbaa !19
  %real1037 = getelementptr inbounds %struct.dcomplex, ptr %temp, i32 0, i32 0
  %866 = load double, ptr %real1037, align 8, !tbaa !17
  %real1038 = getelementptr inbounds %struct.dcomplex, ptr %z__2, i32 0, i32 0
  %867 = load double, ptr %real1038, align 8, !tbaa !17
  %sub1039 = fsub double %866, %867
  %real1040 = getelementptr inbounds %struct.dcomplex, ptr %z__1, i32 0, i32 0
  store double %sub1039, ptr %real1040, align 8, !tbaa !17
  %imag1041 = getelementptr inbounds %struct.dcomplex, ptr %temp, i32 0, i32 1
  %868 = load double, ptr %imag1041, align 8, !tbaa !19
  %imag1042 = getelementptr inbounds %struct.dcomplex, ptr %z__2, i32 0, i32 1
  %869 = load double, ptr %imag1042, align 8, !tbaa !19
  %sub1043 = fsub double %868, %869
  %imag1044 = getelementptr inbounds %struct.dcomplex, ptr %z__1, i32 0, i32 1
  store double %sub1043, ptr %imag1044, align 8, !tbaa !19
  %real1045 = getelementptr inbounds %struct.dcomplex, ptr %z__1, i32 0, i32 0
  %870 = load double, ptr %real1045, align 8, !tbaa !17
  %real1046 = getelementptr inbounds %struct.dcomplex, ptr %temp, i32 0, i32 0
  store double %870, ptr %real1046, align 8, !tbaa !17
  %imag1047 = getelementptr inbounds %struct.dcomplex, ptr %z__1, i32 0, i32 1
  %871 = load double, ptr %imag1047, align 8, !tbaa !19
  %imag1048 = getelementptr inbounds %struct.dcomplex, ptr %temp, i32 0, i32 1
  store double %871, ptr %imag1048, align 8, !tbaa !19
  %872 = load ptr, ptr %incx.addr, align 8, !tbaa !4
  %873 = load i32, ptr %872, align 4, !tbaa !8
  %874 = load i32, ptr %ix, align 4, !tbaa !8
  %sub1049 = sub nsw i32 %874, %873
  store i32 %sub1049, ptr %ix, align 4, !tbaa !8
  br label %for.inc1050

for.inc1050:                                      ; preds = %for.body1002
  %875 = load i32, ptr %i__, align 4, !tbaa !8
  %dec1051 = add nsw i32 %875, -1
  store i32 %dec1051, ptr %i__, align 4, !tbaa !8
  br label %for.cond1000

for.end1052:                                      ; preds = %for.cond1000
  %876 = load i32, ptr %nounit, align 4, !tbaa !8
  %tobool1053 = icmp ne i32 %876, 0
  br i1 %tobool1053, label %if.then1054, label %if.end1063

if.then1054:                                      ; preds = %for.end1052
  %877 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %878 = load i32, ptr %j, align 4, !tbaa !8
  %879 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul1055 = mul nsw i32 %878, %879
  %add1056 = add nsw i32 %mul1055, 1
  %idxprom1057 = sext i32 %add1056 to i64
  %arrayidx1058 = getelementptr inbounds %struct.dcomplex, ptr %877, i64 %idxprom1057
  call void @bla_z_div(ptr noundef %z__1, ptr noundef %temp, ptr noundef %arrayidx1058)
  %real1059 = getelementptr inbounds %struct.dcomplex, ptr %z__1, i32 0, i32 0
  %880 = load double, ptr %real1059, align 8, !tbaa !17
  %real1060 = getelementptr inbounds %struct.dcomplex, ptr %temp, i32 0, i32 0
  store double %880, ptr %real1060, align 8, !tbaa !17
  %imag1061 = getelementptr inbounds %struct.dcomplex, ptr %z__1, i32 0, i32 1
  %881 = load double, ptr %imag1061, align 8, !tbaa !19
  %imag1062 = getelementptr inbounds %struct.dcomplex, ptr %temp, i32 0, i32 1
  store double %881, ptr %imag1062, align 8, !tbaa !19
  br label %if.end1063

if.end1063:                                       ; preds = %if.then1054, %for.end1052
  br label %if.end1130

if.else1064:                                      ; preds = %for.body981
  %882 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %883 = load i32, ptr %882, align 4, !tbaa !8
  store i32 %883, ptr %i__1, align 4, !tbaa !8
  %884 = load i32, ptr %j, align 4, !tbaa !8
  %885 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %886 = load i32, ptr %885, align 4, !tbaa !8
  %add1065 = add nsw i32 %884, %886
  store i32 %add1065, ptr %i__4, align 4, !tbaa !8
  %887 = load i32, ptr %j, align 4, !tbaa !8
  %add1066 = add nsw i32 %887, 1
  store i32 %add1066, ptr %i__2, align 4, !tbaa !8
  %888 = load i32, ptr %i__1, align 4, !tbaa !8
  %889 = load i32, ptr %i__4, align 4, !tbaa !8
  %cmp1067 = icmp sle i32 %888, %889
  br i1 %cmp1067, label %cond.true1068, label %cond.false1069

cond.true1068:                                    ; preds = %if.else1064
  %890 = load i32, ptr %i__1, align 4, !tbaa !8
  br label %cond.end1070

cond.false1069:                                   ; preds = %if.else1064
  %891 = load i32, ptr %i__4, align 4, !tbaa !8
  br label %cond.end1070

cond.end1070:                                     ; preds = %cond.false1069, %cond.true1068
  %cond1071 = phi i32 [ %890, %cond.true1068 ], [ %891, %cond.false1069 ]
  store i32 %cond1071, ptr %i__, align 4, !tbaa !8
  br label %for.cond1072

for.cond1072:                                     ; preds = %for.inc1116, %cond.end1070
  %892 = load i32, ptr %i__, align 4, !tbaa !8
  %893 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp1073 = icmp sge i32 %892, %893
  br i1 %cmp1073, label %for.body1074, label %for.end1118

for.body1074:                                     ; preds = %for.cond1072
  %894 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %895 = load i32, ptr %l, align 4, !tbaa !8
  %896 = load i32, ptr %i__, align 4, !tbaa !8
  %add1075 = add nsw i32 %895, %896
  %897 = load i32, ptr %j, align 4, !tbaa !8
  %898 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul1076 = mul nsw i32 %897, %898
  %add1077 = add nsw i32 %add1075, %mul1076
  %idxprom1078 = sext i32 %add1077 to i64
  %arrayidx1079 = getelementptr inbounds %struct.dcomplex, ptr %894, i64 %idxprom1078
  call void @bla_d_cnjg(ptr noundef %z__3, ptr noundef %arrayidx1079)
  %899 = load i32, ptr %ix, align 4, !tbaa !8
  store i32 %899, ptr %i__1, align 4, !tbaa !8
  %real1080 = getelementptr inbounds %struct.dcomplex, ptr %z__3, i32 0, i32 0
  %900 = load double, ptr %real1080, align 8, !tbaa !17
  %901 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %902 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom1081 = sext i32 %902 to i64
  %arrayidx1082 = getelementptr inbounds %struct.dcomplex, ptr %901, i64 %idxprom1081
  %real1083 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx1082, i32 0, i32 0
  %903 = load double, ptr %real1083, align 8, !tbaa !17
  %imag1085 = getelementptr inbounds %struct.dcomplex, ptr %z__3, i32 0, i32 1
  %904 = load double, ptr %imag1085, align 8, !tbaa !19
  %905 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %906 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom1086 = sext i32 %906 to i64
  %arrayidx1087 = getelementptr inbounds %struct.dcomplex, ptr %905, i64 %idxprom1086
  %imag1088 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx1087, i32 0, i32 1
  %907 = load double, ptr %imag1088, align 8, !tbaa !19
  %mul1089 = fmul double %904, %907
  %neg1090 = fneg double %mul1089
  %908 = call double @llvm.fmuladd.f64(double %900, double %903, double %neg1090)
  %real1091 = getelementptr inbounds %struct.dcomplex, ptr %z__2, i32 0, i32 0
  store double %908, ptr %real1091, align 8, !tbaa !17
  %real1092 = getelementptr inbounds %struct.dcomplex, ptr %z__3, i32 0, i32 0
  %909 = load double, ptr %real1092, align 8, !tbaa !17
  %910 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %911 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom1093 = sext i32 %911 to i64
  %arrayidx1094 = getelementptr inbounds %struct.dcomplex, ptr %910, i64 %idxprom1093
  %imag1095 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx1094, i32 0, i32 1
  %912 = load double, ptr %imag1095, align 8, !tbaa !19
  %imag1097 = getelementptr inbounds %struct.dcomplex, ptr %z__3, i32 0, i32 1
  %913 = load double, ptr %imag1097, align 8, !tbaa !19
  %914 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %915 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom1098 = sext i32 %915 to i64
  %arrayidx1099 = getelementptr inbounds %struct.dcomplex, ptr %914, i64 %idxprom1098
  %real1100 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx1099, i32 0, i32 0
  %916 = load double, ptr %real1100, align 8, !tbaa !17
  %mul1101 = fmul double %913, %916
  %917 = call double @llvm.fmuladd.f64(double %909, double %912, double %mul1101)
  %imag1102 = getelementptr inbounds %struct.dcomplex, ptr %z__2, i32 0, i32 1
  store double %917, ptr %imag1102, align 8, !tbaa !19
  %real1103 = getelementptr inbounds %struct.dcomplex, ptr %temp, i32 0, i32 0
  %918 = load double, ptr %real1103, align 8, !tbaa !17
  %real1104 = getelementptr inbounds %struct.dcomplex, ptr %z__2, i32 0, i32 0
  %919 = load double, ptr %real1104, align 8, !tbaa !17
  %sub1105 = fsub double %918, %919
  %real1106 = getelementptr inbounds %struct.dcomplex, ptr %z__1, i32 0, i32 0
  store double %sub1105, ptr %real1106, align 8, !tbaa !17
  %imag1107 = getelementptr inbounds %struct.dcomplex, ptr %temp, i32 0, i32 1
  %920 = load double, ptr %imag1107, align 8, !tbaa !19
  %imag1108 = getelementptr inbounds %struct.dcomplex, ptr %z__2, i32 0, i32 1
  %921 = load double, ptr %imag1108, align 8, !tbaa !19
  %sub1109 = fsub double %920, %921
  %imag1110 = getelementptr inbounds %struct.dcomplex, ptr %z__1, i32 0, i32 1
  store double %sub1109, ptr %imag1110, align 8, !tbaa !19
  %real1111 = getelementptr inbounds %struct.dcomplex, ptr %z__1, i32 0, i32 0
  %922 = load double, ptr %real1111, align 8, !tbaa !17
  %real1112 = getelementptr inbounds %struct.dcomplex, ptr %temp, i32 0, i32 0
  store double %922, ptr %real1112, align 8, !tbaa !17
  %imag1113 = getelementptr inbounds %struct.dcomplex, ptr %z__1, i32 0, i32 1
  %923 = load double, ptr %imag1113, align 8, !tbaa !19
  %imag1114 = getelementptr inbounds %struct.dcomplex, ptr %temp, i32 0, i32 1
  store double %923, ptr %imag1114, align 8, !tbaa !19
  %924 = load ptr, ptr %incx.addr, align 8, !tbaa !4
  %925 = load i32, ptr %924, align 4, !tbaa !8
  %926 = load i32, ptr %ix, align 4, !tbaa !8
  %sub1115 = sub nsw i32 %926, %925
  store i32 %sub1115, ptr %ix, align 4, !tbaa !8
  br label %for.inc1116

for.inc1116:                                      ; preds = %for.body1074
  %927 = load i32, ptr %i__, align 4, !tbaa !8
  %dec1117 = add nsw i32 %927, -1
  store i32 %dec1117, ptr %i__, align 4, !tbaa !8
  br label %for.cond1072

for.end1118:                                      ; preds = %for.cond1072
  %928 = load i32, ptr %nounit, align 4, !tbaa !8
  %tobool1119 = icmp ne i32 %928, 0
  br i1 %tobool1119, label %if.then1120, label %if.end1129

if.then1120:                                      ; preds = %for.end1118
  %929 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %930 = load i32, ptr %j, align 4, !tbaa !8
  %931 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul1121 = mul nsw i32 %930, %931
  %add1122 = add nsw i32 %mul1121, 1
  %idxprom1123 = sext i32 %add1122 to i64
  %arrayidx1124 = getelementptr inbounds %struct.dcomplex, ptr %929, i64 %idxprom1123
  call void @bla_d_cnjg(ptr noundef %z__2, ptr noundef %arrayidx1124)
  call void @bla_z_div(ptr noundef %z__1, ptr noundef %temp, ptr noundef %z__2)
  %real1125 = getelementptr inbounds %struct.dcomplex, ptr %z__1, i32 0, i32 0
  %932 = load double, ptr %real1125, align 8, !tbaa !17
  %real1126 = getelementptr inbounds %struct.dcomplex, ptr %temp, i32 0, i32 0
  store double %932, ptr %real1126, align 8, !tbaa !17
  %imag1127 = getelementptr inbounds %struct.dcomplex, ptr %z__1, i32 0, i32 1
  %933 = load double, ptr %imag1127, align 8, !tbaa !19
  %imag1128 = getelementptr inbounds %struct.dcomplex, ptr %temp, i32 0, i32 1
  store double %933, ptr %imag1128, align 8, !tbaa !19
  br label %if.end1129

if.end1129:                                       ; preds = %if.then1120, %for.end1118
  br label %if.end1130

if.end1130:                                       ; preds = %if.end1129, %if.end1063
  %934 = load i32, ptr %jx, align 4, !tbaa !8
  store i32 %934, ptr %i__2, align 4, !tbaa !8
  %real1131 = getelementptr inbounds %struct.dcomplex, ptr %temp, i32 0, i32 0
  %935 = load double, ptr %real1131, align 8, !tbaa !17
  %936 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %937 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom1132 = sext i32 %937 to i64
  %arrayidx1133 = getelementptr inbounds %struct.dcomplex, ptr %936, i64 %idxprom1132
  %real1134 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx1133, i32 0, i32 0
  store double %935, ptr %real1134, align 8, !tbaa !17
  %imag1135 = getelementptr inbounds %struct.dcomplex, ptr %temp, i32 0, i32 1
  %938 = load double, ptr %imag1135, align 8, !tbaa !19
  %939 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %940 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom1136 = sext i32 %940 to i64
  %arrayidx1137 = getelementptr inbounds %struct.dcomplex, ptr %939, i64 %idxprom1136
  %imag1138 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx1137, i32 0, i32 1
  store double %938, ptr %imag1138, align 8, !tbaa !19
  %941 = load ptr, ptr %incx.addr, align 8, !tbaa !4
  %942 = load i32, ptr %941, align 4, !tbaa !8
  %943 = load i32, ptr %jx, align 4, !tbaa !8
  %sub1139 = sub nsw i32 %943, %942
  store i32 %sub1139, ptr %jx, align 4, !tbaa !8
  %944 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %945 = load i32, ptr %944, align 4, !tbaa !8
  %946 = load i32, ptr %j, align 4, !tbaa !8
  %sub1140 = sub nsw i32 %945, %946
  %947 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %948 = load i32, ptr %947, align 4, !tbaa !8
  %cmp1141 = icmp sge i32 %sub1140, %948
  br i1 %cmp1141, label %if.then1142, label %if.end1144

if.then1142:                                      ; preds = %if.end1130
  %949 = load ptr, ptr %incx.addr, align 8, !tbaa !4
  %950 = load i32, ptr %949, align 4, !tbaa !8
  %951 = load i32, ptr %kx, align 4, !tbaa !8
  %sub1143 = sub nsw i32 %951, %950
  store i32 %sub1143, ptr %kx, align 4, !tbaa !8
  br label %if.end1144

if.end1144:                                       ; preds = %if.then1142, %if.end1130
  br label %for.inc1145

for.inc1145:                                      ; preds = %if.end1144
  %952 = load i32, ptr %j, align 4, !tbaa !8
  %dec1146 = add nsw i32 %952, -1
  store i32 %dec1146, ptr %j, align 4, !tbaa !8
  br label %for.cond979

for.end1147:                                      ; preds = %for.cond979
  br label %if.end1148

if.end1148:                                       ; preds = %for.end1147, %for.end974
  br label %if.end1149

if.end1149:                                       ; preds = %if.end1148, %if.end810
  br label %if.end1150

if.end1150:                                       ; preds = %if.end1149, %if.end472
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end1150, %if.then42, %if.then38
  call void @llvm.lifetime.end.p0(i64 4, ptr %nounit) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %noconj) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %kx) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %jx) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %ix) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %kplus1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %l) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %temp) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %info) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %z__3) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %z__2) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %z__1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__5) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__4) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %a_offset) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %a_dim1) #4
  %953 = load i32, ptr %retval, align 4
  ret i32 %953
}

declare void @bla_z_div(ptr noundef, ptr noundef, ptr noundef) #2

declare void @bla_d_cnjg(ptr noundef, ptr noundef) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!11 = !{!"scomplex", !12, i64 0, !12, i64 4}
!12 = !{!"float", !6, i64 0}
!13 = !{!11, !12, i64 4}
!14 = !{!15, !15, i64 0}
!15 = !{!"double", !6, i64 0}
!16 = !{!12, !12, i64 0}
!17 = !{!18, !15, i64 0}
!18 = !{!"dcomplex", !15, i64 0, !15, i64 8}
!19 = !{!18, !15, i64 8}

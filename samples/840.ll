; ModuleID = 'samples/840.bc'
source_filename = "frame/compat/cblas/src/cblas_zhemv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RowMajorStrg = external global i32, align 4
@CBLAS_CallFromC = external global i32, align 4
@.str = private unnamed_addr constant [12 x i8] c"cblas_zhemv\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Illegal Uplo setting, %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Illegal Order setting, %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @cblas_zhemv(i32 noundef %order, i32 noundef %Uplo, i32 noundef %N, ptr noundef %alpha, ptr noundef %A, i32 noundef %lda, ptr noundef %X, i32 noundef %incX, ptr noundef %beta, ptr noundef %Y, i32 noundef %incY) #0 {
entry:
  %order.addr = alloca i32, align 4
  %Uplo.addr = alloca i32, align 4
  %N.addr = alloca i32, align 4
  %alpha.addr = alloca ptr, align 8
  %A.addr = alloca ptr, align 8
  %lda.addr = alloca i32, align 4
  %X.addr = alloca ptr, align 8
  %incX.addr = alloca i32, align 4
  %beta.addr = alloca ptr, align 8
  %Y.addr = alloca ptr, align 8
  %incY.addr = alloca i32, align 4
  %UL = alloca i8, align 1
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %xx = alloca ptr, align 8
  %alp = alloca ptr, align 8
  %bet = alloca ptr, align 8
  %ALPHA = alloca [2 x double], align 16
  %BETA = alloca [2 x double], align 16
  %tincY = alloca i32, align 4
  %tincx = alloca i32, align 4
  %x = alloca ptr, align 8
  %y = alloca ptr, align 8
  %st = alloca ptr, align 8
  %tx = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %order, ptr %order.addr, align 4, !tbaa !4
  store i32 %Uplo, ptr %Uplo.addr, align 4, !tbaa !4
  store i32 %N, ptr %N.addr, align 4, !tbaa !7
  store ptr %alpha, ptr %alpha.addr, align 8, !tbaa !9
  store ptr %A, ptr %A.addr, align 8, !tbaa !9
  store i32 %lda, ptr %lda.addr, align 4, !tbaa !7
  store ptr %X, ptr %X.addr, align 8, !tbaa !9
  store i32 %incX, ptr %incX.addr, align 4, !tbaa !7
  store ptr %beta, ptr %beta.addr, align 8, !tbaa !9
  store ptr %Y, ptr %Y.addr, align 8, !tbaa !9
  store i32 %incY, ptr %incY.addr, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 1, ptr %UL) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  store i32 0, ptr %i, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 8, ptr %xx) #5
  %0 = load ptr, ptr %X.addr, align 8, !tbaa !9
  store ptr %0, ptr %xx, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %alp) #5
  %1 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  store ptr %1, ptr %alp, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %bet) #5
  %2 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  store ptr %2, ptr %bet, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %ALPHA) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr %BETA) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %tincY) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %tincx) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %x) #5
  %3 = load ptr, ptr %X.addr, align 8, !tbaa !9
  store ptr %3, ptr %x, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %y) #5
  %4 = load ptr, ptr %Y.addr, align 8, !tbaa !9
  store ptr %4, ptr %y, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %st) #5
  store ptr null, ptr %st, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %tx) #5
  store i32 0, ptr @RowMajorStrg, align 4, !tbaa !7
  store i32 1, ptr @CBLAS_CallFromC, align 4, !tbaa !7
  %5 = load i32, ptr %order.addr, align 4, !tbaa !4
  %cmp = icmp eq i32 %5, 102
  br i1 %cmp, label %if.then, label %if.else7

if.then:                                          ; preds = %entry
  %6 = load i32, ptr %Uplo.addr, align 4, !tbaa !4
  %cmp1 = icmp eq i32 %6, 121
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  store i8 85, ptr %UL, align 1, !tbaa !4
  br label %if.end6

if.else:                                          ; preds = %if.then
  %7 = load i32, ptr %Uplo.addr, align 4, !tbaa !4
  %cmp3 = icmp eq i32 %7, 122
  br i1 %cmp3, label %if.then4, label %if.else5

if.then4:                                         ; preds = %if.else
  store i8 76, ptr %UL, align 1, !tbaa !4
  br label %if.end

if.else5:                                         ; preds = %if.else
  %8 = load i32, ptr %Uplo.addr, align 4, !tbaa !4
  call void (i32, ptr, ptr, ...) @cblas_xerbla(i32 noundef 2, ptr noundef @.str, ptr noundef @.str.1, i32 noundef %8)
  store i32 0, ptr @CBLAS_CallFromC, align 4, !tbaa !7
  store i32 0, ptr @RowMajorStrg, align 4, !tbaa !7
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then4
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.then2
  %9 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %10 = load ptr, ptr %A.addr, align 8, !tbaa !9
  %11 = load ptr, ptr %X.addr, align 8, !tbaa !9
  %12 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %13 = load ptr, ptr %Y.addr, align 8, !tbaa !9
  call void @zhemv_(ptr noundef %UL, ptr noundef %N.addr, ptr noundef %9, ptr noundef %10, ptr noundef %lda.addr, ptr noundef %11, ptr noundef %incX.addr, ptr noundef %12, ptr noundef %13, ptr noundef %incY.addr)
  br label %if.end72

if.else7:                                         ; preds = %entry
  %14 = load i32, ptr %order.addr, align 4, !tbaa !4
  %cmp8 = icmp eq i32 %14, 101
  br i1 %cmp8, label %if.then9, label %if.else70

if.then9:                                         ; preds = %if.else7
  store i32 1, ptr @RowMajorStrg, align 4, !tbaa !7
  %15 = load ptr, ptr %alp, align 8, !tbaa !9
  %16 = load double, ptr %15, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [2 x double], ptr %ALPHA, i64 0, i64 0
  store double %16, ptr %arrayidx, align 16, !tbaa !11
  %17 = load ptr, ptr %alp, align 8, !tbaa !9
  %arrayidx10 = getelementptr inbounds double, ptr %17, i64 1
  %18 = load double, ptr %arrayidx10, align 8, !tbaa !11
  %fneg = fneg double %18
  %arrayidx11 = getelementptr inbounds [2 x double], ptr %ALPHA, i64 0, i64 1
  store double %fneg, ptr %arrayidx11, align 8, !tbaa !11
  %19 = load ptr, ptr %bet, align 8, !tbaa !9
  %20 = load double, ptr %19, align 8, !tbaa !11
  %arrayidx12 = getelementptr inbounds [2 x double], ptr %BETA, i64 0, i64 0
  store double %20, ptr %arrayidx12, align 16, !tbaa !11
  %21 = load ptr, ptr %bet, align 8, !tbaa !9
  %arrayidx13 = getelementptr inbounds double, ptr %21, i64 1
  %22 = load double, ptr %arrayidx13, align 8, !tbaa !11
  %fneg14 = fneg double %22
  %arrayidx15 = getelementptr inbounds [2 x double], ptr %BETA, i64 0, i64 1
  store double %fneg14, ptr %arrayidx15, align 8, !tbaa !11
  %23 = load i32, ptr %N.addr, align 4, !tbaa !7
  %cmp16 = icmp sgt i32 %23, 0
  br i1 %cmp16, label %if.then17, label %if.else57

if.then17:                                        ; preds = %if.then9
  %24 = load i32, ptr %N.addr, align 4, !tbaa !7
  %shl = shl i32 %24, 1
  store i32 %shl, ptr %n, align 4, !tbaa !7
  %25 = load i32, ptr %n, align 4, !tbaa !7
  %conv = sext i32 %25 to i64
  %mul = mul i64 %conv, 8
  %call = call noalias ptr @malloc(i64 noundef %mul) #6
  store ptr %call, ptr %x, align 8, !tbaa !9
  %26 = load ptr, ptr %x, align 8, !tbaa !9
  store ptr %26, ptr %tx, align 8, !tbaa !9
  %27 = load i32, ptr %incX.addr, align 4, !tbaa !7
  %cmp18 = icmp sgt i32 %27, 0
  br i1 %cmp18, label %if.then20, label %if.else22

if.then20:                                        ; preds = %if.then17
  %28 = load i32, ptr %incX.addr, align 4, !tbaa !7
  %shl21 = shl i32 %28, 1
  store i32 %shl21, ptr %i, align 4, !tbaa !7
  store i32 2, ptr %tincx, align 4, !tbaa !7
  %29 = load ptr, ptr %x, align 8, !tbaa !9
  %30 = load i32, ptr %n, align 4, !tbaa !7
  %idx.ext = sext i32 %30 to i64
  %add.ptr = getelementptr inbounds double, ptr %29, i64 %idx.ext
  store ptr %add.ptr, ptr %st, align 8, !tbaa !9
  br label %if.end27

if.else22:                                        ; preds = %if.then17
  %31 = load i32, ptr %incX.addr, align 4, !tbaa !7
  %mul23 = mul nsw i32 %31, -2
  store i32 %mul23, ptr %i, align 4, !tbaa !7
  store i32 -2, ptr %tincx, align 4, !tbaa !7
  %32 = load ptr, ptr %x, align 8, !tbaa !9
  %add.ptr24 = getelementptr inbounds double, ptr %32, i64 -2
  store ptr %add.ptr24, ptr %st, align 8, !tbaa !9
  %33 = load i32, ptr %n, align 4, !tbaa !7
  %sub = sub nsw i32 %33, 2
  %34 = load ptr, ptr %x, align 8, !tbaa !9
  %idx.ext25 = sext i32 %sub to i64
  %add.ptr26 = getelementptr inbounds double, ptr %34, i64 %idx.ext25
  store ptr %add.ptr26, ptr %x, align 8, !tbaa !9
  br label %if.end27

if.end27:                                         ; preds = %if.else22, %if.then20
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end27
  %35 = load ptr, ptr %xx, align 8, !tbaa !9
  %36 = load double, ptr %35, align 8, !tbaa !11
  %37 = load ptr, ptr %x, align 8, !tbaa !9
  store double %36, ptr %37, align 8, !tbaa !11
  %38 = load ptr, ptr %xx, align 8, !tbaa !9
  %arrayidx28 = getelementptr inbounds double, ptr %38, i64 1
  %39 = load double, ptr %arrayidx28, align 8, !tbaa !11
  %fneg29 = fneg double %39
  %40 = load ptr, ptr %x, align 8, !tbaa !9
  %arrayidx30 = getelementptr inbounds double, ptr %40, i64 1
  store double %fneg29, ptr %arrayidx30, align 8, !tbaa !11
  %41 = load i32, ptr %tincx, align 4, !tbaa !7
  %42 = load ptr, ptr %x, align 8, !tbaa !9
  %idx.ext31 = sext i32 %41 to i64
  %add.ptr32 = getelementptr inbounds double, ptr %42, i64 %idx.ext31
  store ptr %add.ptr32, ptr %x, align 8, !tbaa !9
  %43 = load i32, ptr %i, align 4, !tbaa !7
  %44 = load ptr, ptr %xx, align 8, !tbaa !9
  %idx.ext33 = sext i32 %43 to i64
  %add.ptr34 = getelementptr inbounds double, ptr %44, i64 %idx.ext33
  store ptr %add.ptr34, ptr %xx, align 8, !tbaa !9
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %45 = load ptr, ptr %x, align 8, !tbaa !9
  %46 = load ptr, ptr %st, align 8, !tbaa !9
  %cmp35 = icmp ne ptr %45, %46
  br i1 %cmp35, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %47 = load ptr, ptr %tx, align 8, !tbaa !9
  store ptr %47, ptr %x, align 8, !tbaa !9
  store i32 1, ptr %incX.addr, align 4, !tbaa !7
  %48 = load i32, ptr %incY.addr, align 4, !tbaa !7
  %cmp37 = icmp sgt i32 %48, 0
  br i1 %cmp37, label %if.then39, label %if.else40

if.then39:                                        ; preds = %do.end
  %49 = load i32, ptr %incY.addr, align 4, !tbaa !7
  store i32 %49, ptr %tincY, align 4, !tbaa !7
  br label %if.end42

if.else40:                                        ; preds = %do.end
  %50 = load i32, ptr %incY.addr, align 4, !tbaa !7
  %sub41 = sub nsw i32 0, %50
  store i32 %sub41, ptr %tincY, align 4, !tbaa !7
  br label %if.end42

if.end42:                                         ; preds = %if.else40, %if.then39
  %51 = load ptr, ptr %y, align 8, !tbaa !9
  %incdec.ptr = getelementptr inbounds double, ptr %51, i32 1
  store ptr %incdec.ptr, ptr %y, align 8, !tbaa !9
  %52 = load i32, ptr %tincY, align 4, !tbaa !7
  %shl43 = shl i32 %52, 1
  store i32 %shl43, ptr %i, align 4, !tbaa !7
  %53 = load i32, ptr %i, align 4, !tbaa !7
  %54 = load i32, ptr %N.addr, align 4, !tbaa !7
  %mul44 = mul nsw i32 %53, %54
  store i32 %mul44, ptr %n, align 4, !tbaa !7
  %55 = load ptr, ptr %y, align 8, !tbaa !9
  %56 = load i32, ptr %n, align 4, !tbaa !7
  %idx.ext45 = sext i32 %56 to i64
  %add.ptr46 = getelementptr inbounds double, ptr %55, i64 %idx.ext45
  store ptr %add.ptr46, ptr %st, align 8, !tbaa !9
  br label %do.body47

do.body47:                                        ; preds = %do.cond51, %if.end42
  %57 = load ptr, ptr %y, align 8, !tbaa !9
  %58 = load double, ptr %57, align 8, !tbaa !11
  %fneg48 = fneg double %58
  %59 = load ptr, ptr %y, align 8, !tbaa !9
  store double %fneg48, ptr %59, align 8, !tbaa !11
  %60 = load i32, ptr %i, align 4, !tbaa !7
  %61 = load ptr, ptr %y, align 8, !tbaa !9
  %idx.ext49 = sext i32 %60 to i64
  %add.ptr50 = getelementptr inbounds double, ptr %61, i64 %idx.ext49
  store ptr %add.ptr50, ptr %y, align 8, !tbaa !9
  br label %do.cond51

do.cond51:                                        ; preds = %do.body47
  %62 = load ptr, ptr %y, align 8, !tbaa !9
  %63 = load ptr, ptr %st, align 8, !tbaa !9
  %cmp52 = icmp ne ptr %62, %63
  br i1 %cmp52, label %do.body47, label %do.end54

do.end54:                                         ; preds = %do.cond51
  %64 = load i32, ptr %n, align 4, !tbaa !7
  %65 = load ptr, ptr %y, align 8, !tbaa !9
  %idx.ext55 = sext i32 %64 to i64
  %idx.neg = sub i64 0, %idx.ext55
  %add.ptr56 = getelementptr inbounds double, ptr %65, i64 %idx.neg
  store ptr %add.ptr56, ptr %y, align 8, !tbaa !9
  br label %if.end58

if.else57:                                        ; preds = %if.then9
  %66 = load ptr, ptr %X.addr, align 8, !tbaa !9
  store ptr %66, ptr %x, align 8, !tbaa !9
  br label %if.end58

if.end58:                                         ; preds = %if.else57, %do.end54
  %67 = load i32, ptr %Uplo.addr, align 4, !tbaa !4
  %cmp59 = icmp eq i32 %67, 121
  br i1 %cmp59, label %if.then61, label %if.else62

if.then61:                                        ; preds = %if.end58
  store i8 76, ptr %UL, align 1, !tbaa !4
  br label %if.end68

if.else62:                                        ; preds = %if.end58
  %68 = load i32, ptr %Uplo.addr, align 4, !tbaa !4
  %cmp63 = icmp eq i32 %68, 122
  br i1 %cmp63, label %if.then65, label %if.else66

if.then65:                                        ; preds = %if.else62
  store i8 85, ptr %UL, align 1, !tbaa !4
  br label %if.end67

if.else66:                                        ; preds = %if.else62
  %69 = load i32, ptr %Uplo.addr, align 4, !tbaa !4
  call void (i32, ptr, ptr, ...) @cblas_xerbla(i32 noundef 2, ptr noundef @.str, ptr noundef @.str.1, i32 noundef %69)
  store i32 0, ptr @CBLAS_CallFromC, align 4, !tbaa !7
  store i32 0, ptr @RowMajorStrg, align 4, !tbaa !7
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end67:                                         ; preds = %if.then65
  br label %if.end68

if.end68:                                         ; preds = %if.end67, %if.then61
  %arraydecay = getelementptr inbounds [2 x double], ptr %ALPHA, i64 0, i64 0
  %70 = load ptr, ptr %A.addr, align 8, !tbaa !9
  %71 = load ptr, ptr %x, align 8, !tbaa !9
  %arraydecay69 = getelementptr inbounds [2 x double], ptr %BETA, i64 0, i64 0
  %72 = load ptr, ptr %Y.addr, align 8, !tbaa !9
  call void @zhemv_(ptr noundef %UL, ptr noundef %N.addr, ptr noundef %arraydecay, ptr noundef %70, ptr noundef %lda.addr, ptr noundef %71, ptr noundef %incX.addr, ptr noundef %arraydecay69, ptr noundef %72, ptr noundef %incY.addr)
  br label %if.end71

if.else70:                                        ; preds = %if.else7
  %73 = load i32, ptr %order.addr, align 4, !tbaa !4
  call void (i32, ptr, ptr, ...) @cblas_xerbla(i32 noundef 1, ptr noundef @.str, ptr noundef @.str.2, i32 noundef %73)
  store i32 0, ptr @CBLAS_CallFromC, align 4, !tbaa !7
  store i32 0, ptr @RowMajorStrg, align 4, !tbaa !7
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end71:                                         ; preds = %if.end68
  br label %if.end72

if.end72:                                         ; preds = %if.end71, %if.end6
  %74 = load i32, ptr %order.addr, align 4, !tbaa !4
  %cmp73 = icmp eq i32 %74, 101
  br i1 %cmp73, label %if.then75, label %if.end92

if.then75:                                        ; preds = %if.end72
  store i32 1, ptr @RowMajorStrg, align 4, !tbaa !7
  %75 = load ptr, ptr %X.addr, align 8, !tbaa !9
  %76 = load ptr, ptr %x, align 8, !tbaa !9
  %cmp76 = icmp ne ptr %75, %76
  br i1 %cmp76, label %if.then78, label %if.end79

if.then78:                                        ; preds = %if.then75
  %77 = load ptr, ptr %x, align 8, !tbaa !9
  call void @free(ptr noundef %77) #5
  br label %if.end79

if.end79:                                         ; preds = %if.then78, %if.then75
  %78 = load i32, ptr %N.addr, align 4, !tbaa !7
  %cmp80 = icmp sgt i32 %78, 0
  br i1 %cmp80, label %if.then82, label %if.end91

if.then82:                                        ; preds = %if.end79
  br label %do.body83

do.body83:                                        ; preds = %do.cond87, %if.then82
  %79 = load ptr, ptr %y, align 8, !tbaa !9
  %80 = load double, ptr %79, align 8, !tbaa !11
  %fneg84 = fneg double %80
  %81 = load ptr, ptr %y, align 8, !tbaa !9
  store double %fneg84, ptr %81, align 8, !tbaa !11
  %82 = load i32, ptr %i, align 4, !tbaa !7
  %83 = load ptr, ptr %y, align 8, !tbaa !9
  %idx.ext85 = sext i32 %82 to i64
  %add.ptr86 = getelementptr inbounds double, ptr %83, i64 %idx.ext85
  store ptr %add.ptr86, ptr %y, align 8, !tbaa !9
  br label %do.cond87

do.cond87:                                        ; preds = %do.body83
  %84 = load ptr, ptr %y, align 8, !tbaa !9
  %85 = load ptr, ptr %st, align 8, !tbaa !9
  %cmp88 = icmp ne ptr %84, %85
  br i1 %cmp88, label %do.body83, label %do.end90

do.end90:                                         ; preds = %do.cond87
  br label %if.end91

if.end91:                                         ; preds = %do.end90, %if.end79
  br label %if.end92

if.end92:                                         ; preds = %if.end91, %if.end72
  store i32 0, ptr @CBLAS_CallFromC, align 4, !tbaa !7
  store i32 0, ptr @RowMajorStrg, align 4, !tbaa !7
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end92, %if.else70, %if.else66, %if.else5
  call void @llvm.lifetime.end.p0(i64 8, ptr %tx) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %st) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %y) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %x) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %tincx) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %tincY) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %BETA) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %ALPHA) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %bet) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %alp) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %xx) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr %UL) #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @cblas_xerbla(i32 noundef, ptr noundef, ptr noundef, ...) #2

declare void @zhemv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #3

; Function Attrs: nounwind
declare void @free(ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !5, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"double", !5, i64 0}

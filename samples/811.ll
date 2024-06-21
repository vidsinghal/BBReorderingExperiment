; ModuleID = 'samples/811.bc'
source_filename = "/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/map/lapack2flamec/f2c/c/ctgsen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.complex = type { float, float }

@.str = private unnamed_addr constant [7 x i8] c"CTGSEN\00", align 1
@c__1 = internal global i32 1, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Full\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"C\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @ctgsen_(ptr noundef %ijob, ptr noundef %wantq, ptr noundef %wantz, ptr noundef %select, ptr noundef %n, ptr noundef %a, ptr noundef %lda, ptr noundef %b, ptr noundef %ldb, ptr noundef %alpha, ptr noundef %beta, ptr noundef %q, ptr noundef %ldq, ptr noundef %z__, ptr noundef %ldz, ptr noundef %m, ptr noundef %pl, ptr noundef %pr, ptr noundef %dif, ptr noundef %work, ptr noundef %lwork, ptr noundef %iwork, ptr noundef %liwork, ptr noundef %info) #0 {
entry:
  %retval = alloca i32, align 4
  %ijob.addr = alloca ptr, align 8
  %wantq.addr = alloca ptr, align 8
  %wantz.addr = alloca ptr, align 8
  %select.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %lda.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %ldb.addr = alloca ptr, align 8
  %alpha.addr = alloca ptr, align 8
  %beta.addr = alloca ptr, align 8
  %q.addr = alloca ptr, align 8
  %ldq.addr = alloca ptr, align 8
  %z__.addr = alloca ptr, align 8
  %ldz.addr = alloca ptr, align 8
  %m.addr = alloca ptr, align 8
  %pl.addr = alloca ptr, align 8
  %pr.addr = alloca ptr, align 8
  %dif.addr = alloca ptr, align 8
  %work.addr = alloca ptr, align 8
  %lwork.addr = alloca ptr, align 8
  %iwork.addr = alloca ptr, align 8
  %liwork.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %a_dim1 = alloca i32, align 4
  %a_offset = alloca i32, align 4
  %b_dim1 = alloca i32, align 4
  %b_offset = alloca i32, align 4
  %q_dim1 = alloca i32, align 4
  %q_offset = alloca i32, align 4
  %z_dim1 = alloca i32, align 4
  %z_offset = alloca i32, align 4
  %i__1 = alloca i32, align 4
  %i__2 = alloca i32, align 4
  %i__3 = alloca i32, align 4
  %q__1 = alloca %struct.complex, align 4
  %q__2 = alloca %struct.complex, align 4
  %i__ = alloca i32, align 4
  %k = alloca i32, align 4
  %n1 = alloca i32, align 4
  %n2 = alloca i32, align 4
  %ks = alloca i32, align 4
  %mn2 = alloca i32, align 4
  %ijb = alloca i32, align 4
  %kase = alloca i32, align 4
  %ierr = alloca i32, align 4
  %dsum = alloca float, align 4
  %swap = alloca i32, align 4
  %temp1 = alloca %struct.complex, align 4
  %temp2 = alloca %struct.complex, align 4
  %isave = alloca [3 x i32], align 4
  %wantd = alloca i32, align 4
  %lwmin = alloca i32, align 4
  %wantp = alloca i32, align 4
  %wantd1 = alloca i32, align 4
  %wantd2 = alloca i32, align 4
  %dscale = alloca float, align 4
  %rdscal = alloca float, align 4
  %safmin = alloca float, align 4
  %liwmin = alloca i32, align 4
  %lquery = alloca i32, align 4
  store ptr %ijob, ptr %ijob.addr, align 8
  store ptr %wantq, ptr %wantq.addr, align 8
  store ptr %wantz, ptr %wantz.addr, align 8
  store ptr %select, ptr %select.addr, align 8
  store ptr %n, ptr %n.addr, align 8
  store ptr %a, ptr %a.addr, align 8
  store ptr %lda, ptr %lda.addr, align 8
  store ptr %b, ptr %b.addr, align 8
  store ptr %ldb, ptr %ldb.addr, align 8
  store ptr %alpha, ptr %alpha.addr, align 8
  store ptr %beta, ptr %beta.addr, align 8
  store ptr %q, ptr %q.addr, align 8
  store ptr %ldq, ptr %ldq.addr, align 8
  store ptr %z__, ptr %z__.addr, align 8
  store ptr %ldz, ptr %ldz.addr, align 8
  store ptr %m, ptr %m.addr, align 8
  store ptr %pl, ptr %pl.addr, align 8
  store ptr %pr, ptr %pr.addr, align 8
  store ptr %dif, ptr %dif.addr, align 8
  store ptr %work, ptr %work.addr, align 8
  store ptr %lwork, ptr %lwork.addr, align 8
  store ptr %iwork, ptr %iwork.addr, align 8
  store ptr %liwork, ptr %liwork.addr, align 8
  store ptr %info, ptr %info.addr, align 8
  %0 = load ptr, ptr %select.addr, align 8
  %incdec.ptr = getelementptr inbounds i32, ptr %0, i32 -1
  store ptr %incdec.ptr, ptr %select.addr, align 8
  %1 = load ptr, ptr %lda.addr, align 8
  %2 = load i32, ptr %1, align 4
  store i32 %2, ptr %a_dim1, align 4
  %3 = load i32, ptr %a_dim1, align 4
  %add = add nsw i32 1, %3
  store i32 %add, ptr %a_offset, align 4
  %4 = load i32, ptr %a_offset, align 4
  %5 = load ptr, ptr %a.addr, align 8
  %idx.ext = sext i32 %4 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds %struct.complex, ptr %5, i64 %idx.neg
  store ptr %add.ptr, ptr %a.addr, align 8
  %6 = load ptr, ptr %ldb.addr, align 8
  %7 = load i32, ptr %6, align 4
  store i32 %7, ptr %b_dim1, align 4
  %8 = load i32, ptr %b_dim1, align 4
  %add1 = add nsw i32 1, %8
  store i32 %add1, ptr %b_offset, align 4
  %9 = load i32, ptr %b_offset, align 4
  %10 = load ptr, ptr %b.addr, align 8
  %idx.ext2 = sext i32 %9 to i64
  %idx.neg3 = sub i64 0, %idx.ext2
  %add.ptr4 = getelementptr inbounds %struct.complex, ptr %10, i64 %idx.neg3
  store ptr %add.ptr4, ptr %b.addr, align 8
  %11 = load ptr, ptr %alpha.addr, align 8
  %incdec.ptr5 = getelementptr inbounds %struct.complex, ptr %11, i32 -1
  store ptr %incdec.ptr5, ptr %alpha.addr, align 8
  %12 = load ptr, ptr %beta.addr, align 8
  %incdec.ptr6 = getelementptr inbounds %struct.complex, ptr %12, i32 -1
  store ptr %incdec.ptr6, ptr %beta.addr, align 8
  %13 = load ptr, ptr %ldq.addr, align 8
  %14 = load i32, ptr %13, align 4
  store i32 %14, ptr %q_dim1, align 4
  %15 = load i32, ptr %q_dim1, align 4
  %add7 = add nsw i32 1, %15
  store i32 %add7, ptr %q_offset, align 4
  %16 = load i32, ptr %q_offset, align 4
  %17 = load ptr, ptr %q.addr, align 8
  %idx.ext8 = sext i32 %16 to i64
  %idx.neg9 = sub i64 0, %idx.ext8
  %add.ptr10 = getelementptr inbounds %struct.complex, ptr %17, i64 %idx.neg9
  store ptr %add.ptr10, ptr %q.addr, align 8
  %18 = load ptr, ptr %ldz.addr, align 8
  %19 = load i32, ptr %18, align 4
  store i32 %19, ptr %z_dim1, align 4
  %20 = load i32, ptr %z_dim1, align 4
  %add11 = add nsw i32 1, %20
  store i32 %add11, ptr %z_offset, align 4
  %21 = load i32, ptr %z_offset, align 4
  %22 = load ptr, ptr %z__.addr, align 8
  %idx.ext12 = sext i32 %21 to i64
  %idx.neg13 = sub i64 0, %idx.ext12
  %add.ptr14 = getelementptr inbounds %struct.complex, ptr %22, i64 %idx.neg13
  store ptr %add.ptr14, ptr %z__.addr, align 8
  %23 = load ptr, ptr %dif.addr, align 8
  %incdec.ptr15 = getelementptr inbounds float, ptr %23, i32 -1
  store ptr %incdec.ptr15, ptr %dif.addr, align 8
  %24 = load ptr, ptr %work.addr, align 8
  %incdec.ptr16 = getelementptr inbounds %struct.complex, ptr %24, i32 -1
  store ptr %incdec.ptr16, ptr %work.addr, align 8
  %25 = load ptr, ptr %iwork.addr, align 8
  %incdec.ptr17 = getelementptr inbounds i32, ptr %25, i32 -1
  store ptr %incdec.ptr17, ptr %iwork.addr, align 8
  %26 = load ptr, ptr %info.addr, align 8
  store i32 0, ptr %26, align 4
  %27 = load ptr, ptr %lwork.addr, align 8
  %28 = load i32, ptr %27, align 4
  %cmp = icmp eq i32 %28, -1
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %29 = load ptr, ptr %liwork.addr, align 8
  %30 = load i32, ptr %29, align 4
  %cmp18 = icmp eq i32 %30, -1
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %31 = phi i1 [ true, %entry ], [ %cmp18, %lor.rhs ]
  %lor.ext = zext i1 %31 to i32
  store i32 %lor.ext, ptr %lquery, align 4
  %32 = load ptr, ptr %ijob.addr, align 8
  %33 = load i32, ptr %32, align 4
  %cmp19 = icmp slt i32 %33, 0
  br i1 %cmp19, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %lor.end
  %34 = load ptr, ptr %ijob.addr, align 8
  %35 = load i32, ptr %34, align 4
  %cmp20 = icmp sgt i32 %35, 5
  br i1 %cmp20, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %lor.end
  %36 = load ptr, ptr %info.addr, align 8
  store i32 -1, ptr %36, align 4
  br label %if.end51

if.else:                                          ; preds = %lor.lhs.false
  %37 = load ptr, ptr %n.addr, align 8
  %38 = load i32, ptr %37, align 4
  %cmp21 = icmp slt i32 %38, 0
  br i1 %cmp21, label %if.then22, label %if.else23

if.then22:                                        ; preds = %if.else
  %39 = load ptr, ptr %info.addr, align 8
  store i32 -5, ptr %39, align 4
  br label %if.end50

if.else23:                                        ; preds = %if.else
  %40 = load ptr, ptr %lda.addr, align 8
  %41 = load i32, ptr %40, align 4
  %42 = load ptr, ptr %n.addr, align 8
  %43 = load i32, ptr %42, align 4
  %cmp24 = icmp sge i32 1, %43
  br i1 %cmp24, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else23
  br label %cond.end

cond.false:                                       ; preds = %if.else23
  %44 = load ptr, ptr %n.addr, align 8
  %45 = load i32, ptr %44, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %45, %cond.false ]
  %cmp25 = icmp slt i32 %41, %cond
  br i1 %cmp25, label %if.then26, label %if.else27

if.then26:                                        ; preds = %cond.end
  %46 = load ptr, ptr %info.addr, align 8
  store i32 -7, ptr %46, align 4
  br label %if.end49

if.else27:                                        ; preds = %cond.end
  %47 = load ptr, ptr %ldb.addr, align 8
  %48 = load i32, ptr %47, align 4
  %49 = load ptr, ptr %n.addr, align 8
  %50 = load i32, ptr %49, align 4
  %cmp28 = icmp sge i32 1, %50
  br i1 %cmp28, label %cond.true29, label %cond.false30

cond.true29:                                      ; preds = %if.else27
  br label %cond.end31

cond.false30:                                     ; preds = %if.else27
  %51 = load ptr, ptr %n.addr, align 8
  %52 = load i32, ptr %51, align 4
  br label %cond.end31

cond.end31:                                       ; preds = %cond.false30, %cond.true29
  %cond32 = phi i32 [ 1, %cond.true29 ], [ %52, %cond.false30 ]
  %cmp33 = icmp slt i32 %48, %cond32
  br i1 %cmp33, label %if.then34, label %if.else35

if.then34:                                        ; preds = %cond.end31
  %53 = load ptr, ptr %info.addr, align 8
  store i32 -9, ptr %53, align 4
  br label %if.end48

if.else35:                                        ; preds = %cond.end31
  %54 = load ptr, ptr %ldq.addr, align 8
  %55 = load i32, ptr %54, align 4
  %cmp36 = icmp slt i32 %55, 1
  br i1 %cmp36, label %if.then39, label %lor.lhs.false37

lor.lhs.false37:                                  ; preds = %if.else35
  %56 = load ptr, ptr %wantq.addr, align 8
  %57 = load i32, ptr %56, align 4
  %tobool = icmp ne i32 %57, 0
  br i1 %tobool, label %land.lhs.true, label %if.else40

land.lhs.true:                                    ; preds = %lor.lhs.false37
  %58 = load ptr, ptr %ldq.addr, align 8
  %59 = load i32, ptr %58, align 4
  %60 = load ptr, ptr %n.addr, align 8
  %61 = load i32, ptr %60, align 4
  %cmp38 = icmp slt i32 %59, %61
  br i1 %cmp38, label %if.then39, label %if.else40

if.then39:                                        ; preds = %land.lhs.true, %if.else35
  %62 = load ptr, ptr %info.addr, align 8
  store i32 -13, ptr %62, align 4
  br label %if.end47

if.else40:                                        ; preds = %land.lhs.true, %lor.lhs.false37
  %63 = load ptr, ptr %ldz.addr, align 8
  %64 = load i32, ptr %63, align 4
  %cmp41 = icmp slt i32 %64, 1
  br i1 %cmp41, label %if.then46, label %lor.lhs.false42

lor.lhs.false42:                                  ; preds = %if.else40
  %65 = load ptr, ptr %wantz.addr, align 8
  %66 = load i32, ptr %65, align 4
  %tobool43 = icmp ne i32 %66, 0
  br i1 %tobool43, label %land.lhs.true44, label %if.end

land.lhs.true44:                                  ; preds = %lor.lhs.false42
  %67 = load ptr, ptr %ldz.addr, align 8
  %68 = load i32, ptr %67, align 4
  %69 = load ptr, ptr %n.addr, align 8
  %70 = load i32, ptr %69, align 4
  %cmp45 = icmp slt i32 %68, %70
  br i1 %cmp45, label %if.then46, label %if.end

if.then46:                                        ; preds = %land.lhs.true44, %if.else40
  %71 = load ptr, ptr %info.addr, align 8
  store i32 -15, ptr %71, align 4
  br label %if.end

if.end:                                           ; preds = %if.then46, %land.lhs.true44, %lor.lhs.false42
  br label %if.end47

if.end47:                                         ; preds = %if.end, %if.then39
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %if.then34
  br label %if.end49

if.end49:                                         ; preds = %if.end48, %if.then26
  br label %if.end50

if.end50:                                         ; preds = %if.end49, %if.then22
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %if.then
  %72 = load ptr, ptr %info.addr, align 8
  %73 = load i32, ptr %72, align 4
  %cmp52 = icmp ne i32 %73, 0
  br i1 %cmp52, label %if.then53, label %if.end54

if.then53:                                        ; preds = %if.end51
  %74 = load ptr, ptr %info.addr, align 8
  %75 = load i32, ptr %74, align 4
  %sub = sub nsw i32 0, %75
  store i32 %sub, ptr %i__1, align 4
  %call = call i32 @xerbla_(ptr noundef @.str, ptr noundef %i__1)
  store i32 0, ptr %retval, align 4
  br label %return

if.end54:                                         ; preds = %if.end51
  store i32 0, ptr %ierr, align 4
  %76 = load ptr, ptr %ijob.addr, align 8
  %77 = load i32, ptr %76, align 4
  %cmp55 = icmp eq i32 %77, 1
  br i1 %cmp55, label %lor.end58, label %lor.rhs56

lor.rhs56:                                        ; preds = %if.end54
  %78 = load ptr, ptr %ijob.addr, align 8
  %79 = load i32, ptr %78, align 4
  %cmp57 = icmp sge i32 %79, 4
  br label %lor.end58

lor.end58:                                        ; preds = %lor.rhs56, %if.end54
  %80 = phi i1 [ true, %if.end54 ], [ %cmp57, %lor.rhs56 ]
  %lor.ext59 = zext i1 %80 to i32
  store i32 %lor.ext59, ptr %wantp, align 4
  %81 = load ptr, ptr %ijob.addr, align 8
  %82 = load i32, ptr %81, align 4
  %cmp60 = icmp eq i32 %82, 2
  br i1 %cmp60, label %lor.end63, label %lor.rhs61

lor.rhs61:                                        ; preds = %lor.end58
  %83 = load ptr, ptr %ijob.addr, align 8
  %84 = load i32, ptr %83, align 4
  %cmp62 = icmp eq i32 %84, 4
  br label %lor.end63

lor.end63:                                        ; preds = %lor.rhs61, %lor.end58
  %85 = phi i1 [ true, %lor.end58 ], [ %cmp62, %lor.rhs61 ]
  %lor.ext64 = zext i1 %85 to i32
  store i32 %lor.ext64, ptr %wantd1, align 4
  %86 = load ptr, ptr %ijob.addr, align 8
  %87 = load i32, ptr %86, align 4
  %cmp65 = icmp eq i32 %87, 3
  br i1 %cmp65, label %lor.end68, label %lor.rhs66

lor.rhs66:                                        ; preds = %lor.end63
  %88 = load ptr, ptr %ijob.addr, align 8
  %89 = load i32, ptr %88, align 4
  %cmp67 = icmp eq i32 %89, 5
  br label %lor.end68

lor.end68:                                        ; preds = %lor.rhs66, %lor.end63
  %90 = phi i1 [ true, %lor.end63 ], [ %cmp67, %lor.rhs66 ]
  %lor.ext69 = zext i1 %90 to i32
  store i32 %lor.ext69, ptr %wantd2, align 4
  %91 = load i32, ptr %wantd1, align 4
  %tobool70 = icmp ne i32 %91, 0
  br i1 %tobool70, label %lor.end73, label %lor.rhs71

lor.rhs71:                                        ; preds = %lor.end68
  %92 = load i32, ptr %wantd2, align 4
  %tobool72 = icmp ne i32 %92, 0
  br label %lor.end73

lor.end73:                                        ; preds = %lor.rhs71, %lor.end68
  %93 = phi i1 [ true, %lor.end68 ], [ %tobool72, %lor.rhs71 ]
  %lor.ext74 = zext i1 %93 to i32
  store i32 %lor.ext74, ptr %wantd, align 4
  %94 = load ptr, ptr %m.addr, align 8
  store i32 0, ptr %94, align 4
  %95 = load ptr, ptr %n.addr, align 8
  %96 = load i32, ptr %95, align 4
  store i32 %96, ptr %i__1, align 4
  store i32 1, ptr %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %lor.end73
  %97 = load i32, ptr %k, align 4
  %98 = load i32, ptr %i__1, align 4
  %cmp75 = icmp sle i32 %97, %98
  br i1 %cmp75, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %99 = load i32, ptr %k, align 4
  store i32 %99, ptr %i__2, align 4
  %100 = load i32, ptr %k, align 4
  %101 = load i32, ptr %k, align 4
  %102 = load i32, ptr %a_dim1, align 4
  %mul = mul nsw i32 %101, %102
  %add76 = add nsw i32 %100, %mul
  store i32 %add76, ptr %i__3, align 4
  %103 = load ptr, ptr %a.addr, align 8
  %104 = load i32, ptr %i__3, align 4
  %idxprom = sext i32 %104 to i64
  %arrayidx = getelementptr inbounds %struct.complex, ptr %103, i64 %idxprom
  %r = getelementptr inbounds %struct.complex, ptr %arrayidx, i32 0, i32 0
  %105 = load float, ptr %r, align 4
  %106 = load ptr, ptr %alpha.addr, align 8
  %107 = load i32, ptr %i__2, align 4
  %idxprom77 = sext i32 %107 to i64
  %arrayidx78 = getelementptr inbounds %struct.complex, ptr %106, i64 %idxprom77
  %r79 = getelementptr inbounds %struct.complex, ptr %arrayidx78, i32 0, i32 0
  store float %105, ptr %r79, align 4
  %108 = load ptr, ptr %a.addr, align 8
  %109 = load i32, ptr %i__3, align 4
  %idxprom80 = sext i32 %109 to i64
  %arrayidx81 = getelementptr inbounds %struct.complex, ptr %108, i64 %idxprom80
  %i = getelementptr inbounds %struct.complex, ptr %arrayidx81, i32 0, i32 1
  %110 = load float, ptr %i, align 4
  %111 = load ptr, ptr %alpha.addr, align 8
  %112 = load i32, ptr %i__2, align 4
  %idxprom82 = sext i32 %112 to i64
  %arrayidx83 = getelementptr inbounds %struct.complex, ptr %111, i64 %idxprom82
  %i84 = getelementptr inbounds %struct.complex, ptr %arrayidx83, i32 0, i32 1
  store float %110, ptr %i84, align 4
  %113 = load i32, ptr %k, align 4
  store i32 %113, ptr %i__2, align 4
  %114 = load i32, ptr %k, align 4
  %115 = load i32, ptr %k, align 4
  %116 = load i32, ptr %b_dim1, align 4
  %mul85 = mul nsw i32 %115, %116
  %add86 = add nsw i32 %114, %mul85
  store i32 %add86, ptr %i__3, align 4
  %117 = load ptr, ptr %b.addr, align 8
  %118 = load i32, ptr %i__3, align 4
  %idxprom87 = sext i32 %118 to i64
  %arrayidx88 = getelementptr inbounds %struct.complex, ptr %117, i64 %idxprom87
  %r89 = getelementptr inbounds %struct.complex, ptr %arrayidx88, i32 0, i32 0
  %119 = load float, ptr %r89, align 4
  %120 = load ptr, ptr %beta.addr, align 8
  %121 = load i32, ptr %i__2, align 4
  %idxprom90 = sext i32 %121 to i64
  %arrayidx91 = getelementptr inbounds %struct.complex, ptr %120, i64 %idxprom90
  %r92 = getelementptr inbounds %struct.complex, ptr %arrayidx91, i32 0, i32 0
  store float %119, ptr %r92, align 4
  %122 = load ptr, ptr %b.addr, align 8
  %123 = load i32, ptr %i__3, align 4
  %idxprom93 = sext i32 %123 to i64
  %arrayidx94 = getelementptr inbounds %struct.complex, ptr %122, i64 %idxprom93
  %i95 = getelementptr inbounds %struct.complex, ptr %arrayidx94, i32 0, i32 1
  %124 = load float, ptr %i95, align 4
  %125 = load ptr, ptr %beta.addr, align 8
  %126 = load i32, ptr %i__2, align 4
  %idxprom96 = sext i32 %126 to i64
  %arrayidx97 = getelementptr inbounds %struct.complex, ptr %125, i64 %idxprom96
  %i98 = getelementptr inbounds %struct.complex, ptr %arrayidx97, i32 0, i32 1
  store float %124, ptr %i98, align 4
  %127 = load i32, ptr %k, align 4
  %128 = load ptr, ptr %n.addr, align 8
  %129 = load i32, ptr %128, align 4
  %cmp99 = icmp slt i32 %127, %129
  br i1 %cmp99, label %if.then100, label %if.else106

if.then100:                                       ; preds = %for.body
  %130 = load ptr, ptr %select.addr, align 8
  %131 = load i32, ptr %k, align 4
  %idxprom101 = sext i32 %131 to i64
  %arrayidx102 = getelementptr inbounds i32, ptr %130, i64 %idxprom101
  %132 = load i32, ptr %arrayidx102, align 4
  %tobool103 = icmp ne i32 %132, 0
  br i1 %tobool103, label %if.then104, label %if.end105

if.then104:                                       ; preds = %if.then100
  %133 = load ptr, ptr %m.addr, align 8
  %134 = load i32, ptr %133, align 4
  %inc = add nsw i32 %134, 1
  store i32 %inc, ptr %133, align 4
  br label %if.end105

if.end105:                                        ; preds = %if.then104, %if.then100
  br label %if.end113

if.else106:                                       ; preds = %for.body
  %135 = load ptr, ptr %select.addr, align 8
  %136 = load ptr, ptr %n.addr, align 8
  %137 = load i32, ptr %136, align 4
  %idxprom107 = sext i32 %137 to i64
  %arrayidx108 = getelementptr inbounds i32, ptr %135, i64 %idxprom107
  %138 = load i32, ptr %arrayidx108, align 4
  %tobool109 = icmp ne i32 %138, 0
  br i1 %tobool109, label %if.then110, label %if.end112

if.then110:                                       ; preds = %if.else106
  %139 = load ptr, ptr %m.addr, align 8
  %140 = load i32, ptr %139, align 4
  %inc111 = add nsw i32 %140, 1
  store i32 %inc111, ptr %139, align 4
  br label %if.end112

if.end112:                                        ; preds = %if.then110, %if.else106
  br label %if.end113

if.end113:                                        ; preds = %if.end112, %if.end105
  br label %for.inc

for.inc:                                          ; preds = %if.end113
  %141 = load i32, ptr %k, align 4
  %inc114 = add nsw i32 %141, 1
  store i32 %inc114, ptr %k, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %142 = load ptr, ptr %ijob.addr, align 8
  %143 = load i32, ptr %142, align 4
  %cmp115 = icmp eq i32 %143, 1
  br i1 %cmp115, label %if.then120, label %lor.lhs.false116

lor.lhs.false116:                                 ; preds = %for.end
  %144 = load ptr, ptr %ijob.addr, align 8
  %145 = load i32, ptr %144, align 4
  %cmp117 = icmp eq i32 %145, 2
  br i1 %cmp117, label %if.then120, label %lor.lhs.false118

lor.lhs.false118:                                 ; preds = %lor.lhs.false116
  %146 = load ptr, ptr %ijob.addr, align 8
  %147 = load i32, ptr %146, align 4
  %cmp119 = icmp eq i32 %147, 4
  br i1 %cmp119, label %if.then120, label %if.else134

if.then120:                                       ; preds = %lor.lhs.false118, %lor.lhs.false116, %for.end
  store i32 1, ptr %i__1, align 4
  %148 = load ptr, ptr %m.addr, align 8
  %149 = load i32, ptr %148, align 4
  %shl = shl i32 %149, 1
  %150 = load ptr, ptr %n.addr, align 8
  %151 = load i32, ptr %150, align 4
  %152 = load ptr, ptr %m.addr, align 8
  %153 = load i32, ptr %152, align 4
  %sub121 = sub nsw i32 %151, %153
  %mul122 = mul nsw i32 %shl, %sub121
  store i32 %mul122, ptr %i__2, align 4
  %154 = load i32, ptr %i__1, align 4
  %155 = load i32, ptr %i__2, align 4
  %cmp123 = icmp sge i32 %154, %155
  br i1 %cmp123, label %cond.true124, label %cond.false125

cond.true124:                                     ; preds = %if.then120
  %156 = load i32, ptr %i__1, align 4
  br label %cond.end126

cond.false125:                                    ; preds = %if.then120
  %157 = load i32, ptr %i__2, align 4
  br label %cond.end126

cond.end126:                                      ; preds = %cond.false125, %cond.true124
  %cond127 = phi i32 [ %156, %cond.true124 ], [ %157, %cond.false125 ]
  store i32 %cond127, ptr %lwmin, align 4
  store i32 1, ptr %i__1, align 4
  %158 = load ptr, ptr %n.addr, align 8
  %159 = load i32, ptr %158, align 4
  %add128 = add nsw i32 %159, 2
  store i32 %add128, ptr %i__2, align 4
  %160 = load i32, ptr %i__1, align 4
  %161 = load i32, ptr %i__2, align 4
  %cmp129 = icmp sge i32 %160, %161
  br i1 %cmp129, label %cond.true130, label %cond.false131

cond.true130:                                     ; preds = %cond.end126
  %162 = load i32, ptr %i__1, align 4
  br label %cond.end132

cond.false131:                                    ; preds = %cond.end126
  %163 = load i32, ptr %i__2, align 4
  br label %cond.end132

cond.end132:                                      ; preds = %cond.false131, %cond.true130
  %cond133 = phi i32 [ %162, %cond.true130 ], [ %163, %cond.false131 ]
  store i32 %cond133, ptr %liwmin, align 4
  br label %if.end163

if.else134:                                       ; preds = %lor.lhs.false118
  %164 = load ptr, ptr %ijob.addr, align 8
  %165 = load i32, ptr %164, align 4
  %cmp135 = icmp eq i32 %165, 3
  br i1 %cmp135, label %if.then138, label %lor.lhs.false136

lor.lhs.false136:                                 ; preds = %if.else134
  %166 = load ptr, ptr %ijob.addr, align 8
  %167 = load i32, ptr %166, align 4
  %cmp137 = icmp eq i32 %167, 5
  br i1 %cmp137, label %if.then138, label %if.else161

if.then138:                                       ; preds = %lor.lhs.false136, %if.else134
  store i32 1, ptr %i__1, align 4
  %168 = load ptr, ptr %m.addr, align 8
  %169 = load i32, ptr %168, align 4
  %shl139 = shl i32 %169, 2
  %170 = load ptr, ptr %n.addr, align 8
  %171 = load i32, ptr %170, align 4
  %172 = load ptr, ptr %m.addr, align 8
  %173 = load i32, ptr %172, align 4
  %sub140 = sub nsw i32 %171, %173
  %mul141 = mul nsw i32 %shl139, %sub140
  store i32 %mul141, ptr %i__2, align 4
  %174 = load i32, ptr %i__1, align 4
  %175 = load i32, ptr %i__2, align 4
  %cmp142 = icmp sge i32 %174, %175
  br i1 %cmp142, label %cond.true143, label %cond.false144

cond.true143:                                     ; preds = %if.then138
  %176 = load i32, ptr %i__1, align 4
  br label %cond.end145

cond.false144:                                    ; preds = %if.then138
  %177 = load i32, ptr %i__2, align 4
  br label %cond.end145

cond.end145:                                      ; preds = %cond.false144, %cond.true143
  %cond146 = phi i32 [ %176, %cond.true143 ], [ %177, %cond.false144 ]
  store i32 %cond146, ptr %lwmin, align 4
  store i32 1, ptr %i__1, align 4
  %178 = load ptr, ptr %m.addr, align 8
  %179 = load i32, ptr %178, align 4
  %shl147 = shl i32 %179, 1
  %180 = load ptr, ptr %n.addr, align 8
  %181 = load i32, ptr %180, align 4
  %182 = load ptr, ptr %m.addr, align 8
  %183 = load i32, ptr %182, align 4
  %sub148 = sub nsw i32 %181, %183
  %mul149 = mul nsw i32 %shl147, %sub148
  store i32 %mul149, ptr %i__2, align 4
  %184 = load i32, ptr %i__1, align 4
  %185 = load i32, ptr %i__2, align 4
  %cmp150 = icmp sge i32 %184, %185
  br i1 %cmp150, label %cond.true151, label %cond.false152

cond.true151:                                     ; preds = %cond.end145
  %186 = load i32, ptr %i__1, align 4
  br label %cond.end153

cond.false152:                                    ; preds = %cond.end145
  %187 = load i32, ptr %i__2, align 4
  br label %cond.end153

cond.end153:                                      ; preds = %cond.false152, %cond.true151
  %cond154 = phi i32 [ %186, %cond.true151 ], [ %187, %cond.false152 ]
  store i32 %cond154, ptr %i__1, align 4
  %188 = load ptr, ptr %n.addr, align 8
  %189 = load i32, ptr %188, align 4
  %add155 = add nsw i32 %189, 2
  store i32 %add155, ptr %i__2, align 4
  %190 = load i32, ptr %i__1, align 4
  %191 = load i32, ptr %i__2, align 4
  %cmp156 = icmp sge i32 %190, %191
  br i1 %cmp156, label %cond.true157, label %cond.false158

cond.true157:                                     ; preds = %cond.end153
  %192 = load i32, ptr %i__1, align 4
  br label %cond.end159

cond.false158:                                    ; preds = %cond.end153
  %193 = load i32, ptr %i__2, align 4
  br label %cond.end159

cond.end159:                                      ; preds = %cond.false158, %cond.true157
  %cond160 = phi i32 [ %192, %cond.true157 ], [ %193, %cond.false158 ]
  store i32 %cond160, ptr %liwmin, align 4
  br label %if.end162

if.else161:                                       ; preds = %lor.lhs.false136
  store i32 1, ptr %lwmin, align 4
  store i32 1, ptr %liwmin, align 4
  br label %if.end162

if.end162:                                        ; preds = %if.else161, %cond.end159
  br label %if.end163

if.end163:                                        ; preds = %if.end162, %cond.end132
  %194 = load i32, ptr %lwmin, align 4
  %conv = sitofp i32 %194 to float
  %195 = load ptr, ptr %work.addr, align 8
  %arrayidx164 = getelementptr inbounds %struct.complex, ptr %195, i64 1
  %r165 = getelementptr inbounds %struct.complex, ptr %arrayidx164, i32 0, i32 0
  store float %conv, ptr %r165, align 4
  %196 = load ptr, ptr %work.addr, align 8
  %arrayidx166 = getelementptr inbounds %struct.complex, ptr %196, i64 1
  %i167 = getelementptr inbounds %struct.complex, ptr %arrayidx166, i32 0, i32 1
  store float 0.000000e+00, ptr %i167, align 4
  %197 = load i32, ptr %liwmin, align 4
  %198 = load ptr, ptr %iwork.addr, align 8
  %arrayidx168 = getelementptr inbounds i32, ptr %198, i64 1
  store i32 %197, ptr %arrayidx168, align 4
  %199 = load ptr, ptr %lwork.addr, align 8
  %200 = load i32, ptr %199, align 4
  %201 = load i32, ptr %lwmin, align 4
  %cmp169 = icmp slt i32 %200, %201
  br i1 %cmp169, label %land.lhs.true171, label %if.else174

land.lhs.true171:                                 ; preds = %if.end163
  %202 = load i32, ptr %lquery, align 4
  %tobool172 = icmp ne i32 %202, 0
  br i1 %tobool172, label %if.else174, label %if.then173

if.then173:                                       ; preds = %land.lhs.true171
  %203 = load ptr, ptr %info.addr, align 8
  store i32 -21, ptr %203, align 4
  br label %if.end181

if.else174:                                       ; preds = %land.lhs.true171, %if.end163
  %204 = load ptr, ptr %liwork.addr, align 8
  %205 = load i32, ptr %204, align 4
  %206 = load i32, ptr %liwmin, align 4
  %cmp175 = icmp slt i32 %205, %206
  br i1 %cmp175, label %land.lhs.true177, label %if.end180

land.lhs.true177:                                 ; preds = %if.else174
  %207 = load i32, ptr %lquery, align 4
  %tobool178 = icmp ne i32 %207, 0
  br i1 %tobool178, label %if.end180, label %if.then179

if.then179:                                       ; preds = %land.lhs.true177
  %208 = load ptr, ptr %info.addr, align 8
  store i32 -23, ptr %208, align 4
  br label %if.end180

if.end180:                                        ; preds = %if.then179, %land.lhs.true177, %if.else174
  br label %if.end181

if.end181:                                        ; preds = %if.end180, %if.then173
  %209 = load ptr, ptr %info.addr, align 8
  %210 = load i32, ptr %209, align 4
  %cmp182 = icmp ne i32 %210, 0
  br i1 %cmp182, label %if.then184, label %if.else187

if.then184:                                       ; preds = %if.end181
  %211 = load ptr, ptr %info.addr, align 8
  %212 = load i32, ptr %211, align 4
  %sub185 = sub nsw i32 0, %212
  store i32 %sub185, ptr %i__1, align 4
  %call186 = call i32 @xerbla_(ptr noundef @.str, ptr noundef %i__1)
  store i32 0, ptr %retval, align 4
  br label %return

if.else187:                                       ; preds = %if.end181
  %213 = load i32, ptr %lquery, align 4
  %tobool188 = icmp ne i32 %213, 0
  br i1 %tobool188, label %if.then189, label %if.end190

if.then189:                                       ; preds = %if.else187
  store i32 0, ptr %retval, align 4
  br label %return

if.end190:                                        ; preds = %if.else187
  br label %if.end191

if.end191:                                        ; preds = %if.end190
  %214 = load ptr, ptr %m.addr, align 8
  %215 = load i32, ptr %214, align 4
  %216 = load ptr, ptr %n.addr, align 8
  %217 = load i32, ptr %216, align 4
  %cmp192 = icmp eq i32 %215, %217
  br i1 %cmp192, label %if.then197, label %lor.lhs.false194

lor.lhs.false194:                                 ; preds = %if.end191
  %218 = load ptr, ptr %m.addr, align 8
  %219 = load i32, ptr %218, align 4
  %cmp195 = icmp eq i32 %219, 0
  br i1 %cmp195, label %if.then197, label %if.end229

if.then197:                                       ; preds = %lor.lhs.false194, %if.end191
  %220 = load i32, ptr %wantp, align 4
  %tobool198 = icmp ne i32 %220, 0
  br i1 %tobool198, label %if.then199, label %if.end200

if.then199:                                       ; preds = %if.then197
  %221 = load ptr, ptr %pl.addr, align 8
  store float 1.000000e+00, ptr %221, align 4
  %222 = load ptr, ptr %pr.addr, align 8
  store float 1.000000e+00, ptr %222, align 4
  br label %if.end200

if.end200:                                        ; preds = %if.then199, %if.then197
  %223 = load i32, ptr %wantd, align 4
  %tobool201 = icmp ne i32 %223, 0
  br i1 %tobool201, label %if.then202, label %if.end228

if.then202:                                       ; preds = %if.end200
  store float 0.000000e+00, ptr %dscale, align 4
  store float 1.000000e+00, ptr %dsum, align 4
  %224 = load ptr, ptr %n.addr, align 8
  %225 = load i32, ptr %224, align 4
  store i32 %225, ptr %i__1, align 4
  store i32 1, ptr %i__, align 4
  br label %for.cond203

for.cond203:                                      ; preds = %for.inc217, %if.then202
  %226 = load i32, ptr %i__, align 4
  %227 = load i32, ptr %i__1, align 4
  %cmp204 = icmp sle i32 %226, %227
  br i1 %cmp204, label %for.body206, label %for.end219

for.body206:                                      ; preds = %for.cond203
  %228 = load ptr, ptr %n.addr, align 8
  %229 = load ptr, ptr %a.addr, align 8
  %230 = load i32, ptr %i__, align 4
  %231 = load i32, ptr %a_dim1, align 4
  %mul207 = mul nsw i32 %230, %231
  %add208 = add nsw i32 %mul207, 1
  %idxprom209 = sext i32 %add208 to i64
  %arrayidx210 = getelementptr inbounds %struct.complex, ptr %229, i64 %idxprom209
  %call211 = call i32 @classq_(ptr noundef %228, ptr noundef %arrayidx210, ptr noundef @c__1, ptr noundef %dscale, ptr noundef %dsum)
  %232 = load ptr, ptr %n.addr, align 8
  %233 = load ptr, ptr %b.addr, align 8
  %234 = load i32, ptr %i__, align 4
  %235 = load i32, ptr %b_dim1, align 4
  %mul212 = mul nsw i32 %234, %235
  %add213 = add nsw i32 %mul212, 1
  %idxprom214 = sext i32 %add213 to i64
  %arrayidx215 = getelementptr inbounds %struct.complex, ptr %233, i64 %idxprom214
  %call216 = call i32 @classq_(ptr noundef %232, ptr noundef %arrayidx215, ptr noundef @c__1, ptr noundef %dscale, ptr noundef %dsum)
  br label %for.inc217

for.inc217:                                       ; preds = %for.body206
  %236 = load i32, ptr %i__, align 4
  %inc218 = add nsw i32 %236, 1
  store i32 %inc218, ptr %i__, align 4
  br label %for.cond203, !llvm.loop !7

for.end219:                                       ; preds = %for.cond203
  %237 = load float, ptr %dscale, align 4
  %conv220 = fpext float %237 to double
  %238 = load float, ptr %dsum, align 4
  %conv221 = fpext float %238 to double
  %call222 = call double @sqrt(double noundef %conv221) #3
  %mul223 = fmul double %conv220, %call222
  %conv224 = fptrunc double %mul223 to float
  %239 = load ptr, ptr %dif.addr, align 8
  %arrayidx225 = getelementptr inbounds float, ptr %239, i64 1
  store float %conv224, ptr %arrayidx225, align 4
  %240 = load ptr, ptr %dif.addr, align 8
  %arrayidx226 = getelementptr inbounds float, ptr %240, i64 1
  %241 = load float, ptr %arrayidx226, align 4
  %242 = load ptr, ptr %dif.addr, align 8
  %arrayidx227 = getelementptr inbounds float, ptr %242, i64 2
  store float %241, ptr %arrayidx227, align 4
  br label %if.end228

if.end228:                                        ; preds = %for.end219, %if.end200
  br label %L70

if.end229:                                        ; preds = %lor.lhs.false194
  %call230 = call float @slamch_(ptr noundef @.str.1)
  store float %call230, ptr %safmin, align 4
  store i32 0, ptr %ks, align 4
  %243 = load ptr, ptr %n.addr, align 8
  %244 = load i32, ptr %243, align 4
  store i32 %244, ptr %i__1, align 4
  store i32 1, ptr %k, align 4
  br label %for.cond231

for.cond231:                                      ; preds = %for.inc266, %if.end229
  %245 = load i32, ptr %k, align 4
  %246 = load i32, ptr %i__1, align 4
  %cmp232 = icmp sle i32 %245, %246
  br i1 %cmp232, label %for.body234, label %for.end268

for.body234:                                      ; preds = %for.cond231
  %247 = load ptr, ptr %select.addr, align 8
  %248 = load i32, ptr %k, align 4
  %idxprom235 = sext i32 %248 to i64
  %arrayidx236 = getelementptr inbounds i32, ptr %247, i64 %idxprom235
  %249 = load i32, ptr %arrayidx236, align 4
  store i32 %249, ptr %swap, align 4
  %250 = load i32, ptr %swap, align 4
  %tobool237 = icmp ne i32 %250, 0
  br i1 %tobool237, label %if.then238, label %if.end265

if.then238:                                       ; preds = %for.body234
  %251 = load i32, ptr %ks, align 4
  %inc239 = add nsw i32 %251, 1
  store i32 %inc239, ptr %ks, align 4
  %252 = load i32, ptr %k, align 4
  %253 = load i32, ptr %ks, align 4
  %cmp240 = icmp ne i32 %252, %253
  br i1 %cmp240, label %if.then242, label %if.end252

if.then242:                                       ; preds = %if.then238
  %254 = load ptr, ptr %wantq.addr, align 8
  %255 = load ptr, ptr %wantz.addr, align 8
  %256 = load ptr, ptr %n.addr, align 8
  %257 = load ptr, ptr %a.addr, align 8
  %258 = load i32, ptr %a_offset, align 4
  %idxprom243 = sext i32 %258 to i64
  %arrayidx244 = getelementptr inbounds %struct.complex, ptr %257, i64 %idxprom243
  %259 = load ptr, ptr %lda.addr, align 8
  %260 = load ptr, ptr %b.addr, align 8
  %261 = load i32, ptr %b_offset, align 4
  %idxprom245 = sext i32 %261 to i64
  %arrayidx246 = getelementptr inbounds %struct.complex, ptr %260, i64 %idxprom245
  %262 = load ptr, ptr %ldb.addr, align 8
  %263 = load ptr, ptr %q.addr, align 8
  %264 = load i32, ptr %q_offset, align 4
  %idxprom247 = sext i32 %264 to i64
  %arrayidx248 = getelementptr inbounds %struct.complex, ptr %263, i64 %idxprom247
  %265 = load ptr, ptr %ldq.addr, align 8
  %266 = load ptr, ptr %z__.addr, align 8
  %267 = load i32, ptr %z_offset, align 4
  %idxprom249 = sext i32 %267 to i64
  %arrayidx250 = getelementptr inbounds %struct.complex, ptr %266, i64 %idxprom249
  %268 = load ptr, ptr %ldz.addr, align 8
  %call251 = call i32 @ctgexc_(ptr noundef %254, ptr noundef %255, ptr noundef %256, ptr noundef %arrayidx244, ptr noundef %259, ptr noundef %arrayidx246, ptr noundef %262, ptr noundef %arrayidx248, ptr noundef %265, ptr noundef %arrayidx250, ptr noundef %268, ptr noundef %k, ptr noundef %ks, ptr noundef %ierr)
  br label %if.end252

if.end252:                                        ; preds = %if.then242, %if.then238
  %269 = load i32, ptr %ierr, align 4
  %cmp253 = icmp sgt i32 %269, 0
  br i1 %cmp253, label %if.then255, label %if.end264

if.then255:                                       ; preds = %if.end252
  %270 = load ptr, ptr %info.addr, align 8
  store i32 1, ptr %270, align 4
  %271 = load i32, ptr %wantp, align 4
  %tobool256 = icmp ne i32 %271, 0
  br i1 %tobool256, label %if.then257, label %if.end258

if.then257:                                       ; preds = %if.then255
  %272 = load ptr, ptr %pl.addr, align 8
  store float 0.000000e+00, ptr %272, align 4
  %273 = load ptr, ptr %pr.addr, align 8
  store float 0.000000e+00, ptr %273, align 4
  br label %if.end258

if.end258:                                        ; preds = %if.then257, %if.then255
  %274 = load i32, ptr %wantd, align 4
  %tobool259 = icmp ne i32 %274, 0
  br i1 %tobool259, label %if.then260, label %if.end263

if.then260:                                       ; preds = %if.end258
  %275 = load ptr, ptr %dif.addr, align 8
  %arrayidx261 = getelementptr inbounds float, ptr %275, i64 1
  store float 0.000000e+00, ptr %arrayidx261, align 4
  %276 = load ptr, ptr %dif.addr, align 8
  %arrayidx262 = getelementptr inbounds float, ptr %276, i64 2
  store float 0.000000e+00, ptr %arrayidx262, align 4
  br label %if.end263

if.end263:                                        ; preds = %if.then260, %if.end258
  br label %L70

if.end264:                                        ; preds = %if.end252
  br label %if.end265

if.end265:                                        ; preds = %if.end264, %for.body234
  br label %for.inc266

for.inc266:                                       ; preds = %if.end265
  %277 = load i32, ptr %k, align 4
  %inc267 = add nsw i32 %277, 1
  store i32 %inc267, ptr %k, align 4
  br label %for.cond231, !llvm.loop !8

for.end268:                                       ; preds = %for.cond231
  %278 = load i32, ptr %wantp, align 4
  %tobool269 = icmp ne i32 %278, 0
  br i1 %tobool269, label %if.then270, label %if.end366

if.then270:                                       ; preds = %for.end268
  %279 = load ptr, ptr %m.addr, align 8
  %280 = load i32, ptr %279, align 4
  store i32 %280, ptr %n1, align 4
  %281 = load ptr, ptr %n.addr, align 8
  %282 = load i32, ptr %281, align 4
  %283 = load ptr, ptr %m.addr, align 8
  %284 = load i32, ptr %283, align 4
  %sub271 = sub nsw i32 %282, %284
  store i32 %sub271, ptr %n2, align 4
  %285 = load i32, ptr %n1, align 4
  %add272 = add nsw i32 %285, 1
  store i32 %add272, ptr %i__, align 4
  %286 = load ptr, ptr %a.addr, align 8
  %287 = load i32, ptr %i__, align 4
  %288 = load i32, ptr %a_dim1, align 4
  %mul273 = mul nsw i32 %287, %288
  %add274 = add nsw i32 %mul273, 1
  %idxprom275 = sext i32 %add274 to i64
  %arrayidx276 = getelementptr inbounds %struct.complex, ptr %286, i64 %idxprom275
  %289 = load ptr, ptr %lda.addr, align 8
  %290 = load ptr, ptr %work.addr, align 8
  %arrayidx277 = getelementptr inbounds %struct.complex, ptr %290, i64 1
  %call278 = call i32 @clacpy_(ptr noundef @.str.2, ptr noundef %n1, ptr noundef %n2, ptr noundef %arrayidx276, ptr noundef %289, ptr noundef %arrayidx277, ptr noundef %n1)
  %291 = load ptr, ptr %b.addr, align 8
  %292 = load i32, ptr %i__, align 4
  %293 = load i32, ptr %b_dim1, align 4
  %mul279 = mul nsw i32 %292, %293
  %add280 = add nsw i32 %mul279, 1
  %idxprom281 = sext i32 %add280 to i64
  %arrayidx282 = getelementptr inbounds %struct.complex, ptr %291, i64 %idxprom281
  %294 = load ptr, ptr %ldb.addr, align 8
  %295 = load ptr, ptr %work.addr, align 8
  %296 = load i32, ptr %n1, align 4
  %297 = load i32, ptr %n2, align 4
  %mul283 = mul nsw i32 %296, %297
  %add284 = add nsw i32 %mul283, 1
  %idxprom285 = sext i32 %add284 to i64
  %arrayidx286 = getelementptr inbounds %struct.complex, ptr %295, i64 %idxprom285
  %call287 = call i32 @clacpy_(ptr noundef @.str.2, ptr noundef %n1, ptr noundef %n2, ptr noundef %arrayidx282, ptr noundef %294, ptr noundef %arrayidx286, ptr noundef %n1)
  store i32 0, ptr %ijb, align 4
  %298 = load ptr, ptr %lwork.addr, align 8
  %299 = load i32, ptr %298, align 4
  %300 = load i32, ptr %n1, align 4
  %shl288 = shl i32 %300, 1
  %301 = load i32, ptr %n2, align 4
  %mul289 = mul nsw i32 %shl288, %301
  %sub290 = sub nsw i32 %299, %mul289
  store i32 %sub290, ptr %i__1, align 4
  %302 = load ptr, ptr %a.addr, align 8
  %303 = load i32, ptr %a_offset, align 4
  %idxprom291 = sext i32 %303 to i64
  %arrayidx292 = getelementptr inbounds %struct.complex, ptr %302, i64 %idxprom291
  %304 = load ptr, ptr %lda.addr, align 8
  %305 = load ptr, ptr %a.addr, align 8
  %306 = load i32, ptr %i__, align 4
  %307 = load i32, ptr %i__, align 4
  %308 = load i32, ptr %a_dim1, align 4
  %mul293 = mul nsw i32 %307, %308
  %add294 = add nsw i32 %306, %mul293
  %idxprom295 = sext i32 %add294 to i64
  %arrayidx296 = getelementptr inbounds %struct.complex, ptr %305, i64 %idxprom295
  %309 = load ptr, ptr %lda.addr, align 8
  %310 = load ptr, ptr %work.addr, align 8
  %arrayidx297 = getelementptr inbounds %struct.complex, ptr %310, i64 1
  %311 = load ptr, ptr %b.addr, align 8
  %312 = load i32, ptr %b_offset, align 4
  %idxprom298 = sext i32 %312 to i64
  %arrayidx299 = getelementptr inbounds %struct.complex, ptr %311, i64 %idxprom298
  %313 = load ptr, ptr %ldb.addr, align 8
  %314 = load ptr, ptr %b.addr, align 8
  %315 = load i32, ptr %i__, align 4
  %316 = load i32, ptr %i__, align 4
  %317 = load i32, ptr %b_dim1, align 4
  %mul300 = mul nsw i32 %316, %317
  %add301 = add nsw i32 %315, %mul300
  %idxprom302 = sext i32 %add301 to i64
  %arrayidx303 = getelementptr inbounds %struct.complex, ptr %314, i64 %idxprom302
  %318 = load ptr, ptr %ldb.addr, align 8
  %319 = load ptr, ptr %work.addr, align 8
  %320 = load i32, ptr %n1, align 4
  %321 = load i32, ptr %n2, align 4
  %mul304 = mul nsw i32 %320, %321
  %add305 = add nsw i32 %mul304, 1
  %idxprom306 = sext i32 %add305 to i64
  %arrayidx307 = getelementptr inbounds %struct.complex, ptr %319, i64 %idxprom306
  %322 = load ptr, ptr %dif.addr, align 8
  %arrayidx308 = getelementptr inbounds float, ptr %322, i64 1
  %323 = load ptr, ptr %work.addr, align 8
  %324 = load i32, ptr %n1, align 4
  %325 = load i32, ptr %n2, align 4
  %mul309 = mul nsw i32 %324, %325
  %shl310 = shl i32 %mul309, 1
  %add311 = add nsw i32 %shl310, 1
  %idxprom312 = sext i32 %add311 to i64
  %arrayidx313 = getelementptr inbounds %struct.complex, ptr %323, i64 %idxprom312
  %326 = load ptr, ptr %iwork.addr, align 8
  %arrayidx314 = getelementptr inbounds i32, ptr %326, i64 1
  %call315 = call i32 @ctgsyl_(ptr noundef @.str.3, ptr noundef %ijb, ptr noundef %n1, ptr noundef %n2, ptr noundef %arrayidx292, ptr noundef %304, ptr noundef %arrayidx296, ptr noundef %309, ptr noundef %arrayidx297, ptr noundef %n1, ptr noundef %arrayidx299, ptr noundef %313, ptr noundef %arrayidx303, ptr noundef %318, ptr noundef %arrayidx307, ptr noundef %n1, ptr noundef %dscale, ptr noundef %arrayidx308, ptr noundef %arrayidx313, ptr noundef %i__1, ptr noundef %arrayidx314, ptr noundef %ierr)
  store float 0.000000e+00, ptr %rdscal, align 4
  store float 1.000000e+00, ptr %dsum, align 4
  %327 = load i32, ptr %n1, align 4
  %328 = load i32, ptr %n2, align 4
  %mul316 = mul nsw i32 %327, %328
  store i32 %mul316, ptr %i__1, align 4
  %329 = load ptr, ptr %work.addr, align 8
  %arrayidx317 = getelementptr inbounds %struct.complex, ptr %329, i64 1
  %call318 = call i32 @classq_(ptr noundef %i__1, ptr noundef %arrayidx317, ptr noundef @c__1, ptr noundef %rdscal, ptr noundef %dsum)
  %330 = load float, ptr %rdscal, align 4
  %conv319 = fpext float %330 to double
  %331 = load float, ptr %dsum, align 4
  %conv320 = fpext float %331 to double
  %call321 = call double @sqrt(double noundef %conv320) #3
  %mul322 = fmul double %conv319, %call321
  %conv323 = fptrunc double %mul322 to float
  %332 = load ptr, ptr %pl.addr, align 8
  store float %conv323, ptr %332, align 4
  %333 = load ptr, ptr %pl.addr, align 8
  %334 = load float, ptr %333, align 4
  %cmp324 = fcmp oeq float %334, 0.000000e+00
  br i1 %cmp324, label %if.then326, label %if.else327

if.then326:                                       ; preds = %if.then270
  %335 = load ptr, ptr %pl.addr, align 8
  store float 1.000000e+00, ptr %335, align 4
  br label %if.end338

if.else327:                                       ; preds = %if.then270
  %336 = load float, ptr %dscale, align 4
  %conv328 = fpext float %336 to double
  %337 = load float, ptr %dscale, align 4
  %338 = load float, ptr %dscale, align 4
  %mul329 = fmul float %337, %338
  %339 = load ptr, ptr %pl.addr, align 8
  %340 = load float, ptr %339, align 4
  %div = fdiv float %mul329, %340
  %341 = load ptr, ptr %pl.addr, align 8
  %342 = load float, ptr %341, align 4
  %add330 = fadd float %div, %342
  %conv331 = fpext float %add330 to double
  %call332 = call double @sqrt(double noundef %conv331) #3
  %343 = load ptr, ptr %pl.addr, align 8
  %344 = load float, ptr %343, align 4
  %conv333 = fpext float %344 to double
  %call334 = call double @sqrt(double noundef %conv333) #3
  %mul335 = fmul double %call332, %call334
  %div336 = fdiv double %conv328, %mul335
  %conv337 = fptrunc double %div336 to float
  %345 = load ptr, ptr %pl.addr, align 8
  store float %conv337, ptr %345, align 4
  br label %if.end338

if.end338:                                        ; preds = %if.else327, %if.then326
  store float 0.000000e+00, ptr %rdscal, align 4
  store float 1.000000e+00, ptr %dsum, align 4
  %346 = load i32, ptr %n1, align 4
  %347 = load i32, ptr %n2, align 4
  %mul339 = mul nsw i32 %346, %347
  store i32 %mul339, ptr %i__1, align 4
  %348 = load ptr, ptr %work.addr, align 8
  %349 = load i32, ptr %n1, align 4
  %350 = load i32, ptr %n2, align 4
  %mul340 = mul nsw i32 %349, %350
  %add341 = add nsw i32 %mul340, 1
  %idxprom342 = sext i32 %add341 to i64
  %arrayidx343 = getelementptr inbounds %struct.complex, ptr %348, i64 %idxprom342
  %call344 = call i32 @classq_(ptr noundef %i__1, ptr noundef %arrayidx343, ptr noundef @c__1, ptr noundef %rdscal, ptr noundef %dsum)
  %351 = load float, ptr %rdscal, align 4
  %conv345 = fpext float %351 to double
  %352 = load float, ptr %dsum, align 4
  %conv346 = fpext float %352 to double
  %call347 = call double @sqrt(double noundef %conv346) #3
  %mul348 = fmul double %conv345, %call347
  %conv349 = fptrunc double %mul348 to float
  %353 = load ptr, ptr %pr.addr, align 8
  store float %conv349, ptr %353, align 4
  %354 = load ptr, ptr %pr.addr, align 8
  %355 = load float, ptr %354, align 4
  %cmp350 = fcmp oeq float %355, 0.000000e+00
  br i1 %cmp350, label %if.then352, label %if.else353

if.then352:                                       ; preds = %if.end338
  %356 = load ptr, ptr %pr.addr, align 8
  store float 1.000000e+00, ptr %356, align 4
  br label %if.end365

if.else353:                                       ; preds = %if.end338
  %357 = load float, ptr %dscale, align 4
  %conv354 = fpext float %357 to double
  %358 = load float, ptr %dscale, align 4
  %359 = load float, ptr %dscale, align 4
  %mul355 = fmul float %358, %359
  %360 = load ptr, ptr %pr.addr, align 8
  %361 = load float, ptr %360, align 4
  %div356 = fdiv float %mul355, %361
  %362 = load ptr, ptr %pr.addr, align 8
  %363 = load float, ptr %362, align 4
  %add357 = fadd float %div356, %363
  %conv358 = fpext float %add357 to double
  %call359 = call double @sqrt(double noundef %conv358) #3
  %364 = load ptr, ptr %pr.addr, align 8
  %365 = load float, ptr %364, align 4
  %conv360 = fpext float %365 to double
  %call361 = call double @sqrt(double noundef %conv360) #3
  %mul362 = fmul double %call359, %call361
  %div363 = fdiv double %conv354, %mul362
  %conv364 = fptrunc double %div363 to float
  %366 = load ptr, ptr %pr.addr, align 8
  store float %conv364, ptr %366, align 4
  br label %if.end365

if.end365:                                        ; preds = %if.else353, %if.then352
  br label %if.end366

if.end366:                                        ; preds = %if.end365, %for.end268
  %367 = load i32, ptr %wantd, align 4
  %tobool367 = icmp ne i32 %367, 0
  br i1 %tobool367, label %if.then368, label %if.end584

if.then368:                                       ; preds = %if.end366
  %368 = load i32, ptr %wantd1, align 4
  %tobool369 = icmp ne i32 %368, 0
  br i1 %tobool369, label %if.then370, label %if.else429

if.then370:                                       ; preds = %if.then368
  %369 = load ptr, ptr %m.addr, align 8
  %370 = load i32, ptr %369, align 4
  store i32 %370, ptr %n1, align 4
  %371 = load ptr, ptr %n.addr, align 8
  %372 = load i32, ptr %371, align 4
  %373 = load ptr, ptr %m.addr, align 8
  %374 = load i32, ptr %373, align 4
  %sub371 = sub nsw i32 %372, %374
  store i32 %sub371, ptr %n2, align 4
  %375 = load i32, ptr %n1, align 4
  %add372 = add nsw i32 %375, 1
  store i32 %add372, ptr %i__, align 4
  store i32 3, ptr %ijb, align 4
  %376 = load ptr, ptr %lwork.addr, align 8
  %377 = load i32, ptr %376, align 4
  %378 = load i32, ptr %n1, align 4
  %shl373 = shl i32 %378, 1
  %379 = load i32, ptr %n2, align 4
  %mul374 = mul nsw i32 %shl373, %379
  %sub375 = sub nsw i32 %377, %mul374
  store i32 %sub375, ptr %i__1, align 4
  %380 = load ptr, ptr %a.addr, align 8
  %381 = load i32, ptr %a_offset, align 4
  %idxprom376 = sext i32 %381 to i64
  %arrayidx377 = getelementptr inbounds %struct.complex, ptr %380, i64 %idxprom376
  %382 = load ptr, ptr %lda.addr, align 8
  %383 = load ptr, ptr %a.addr, align 8
  %384 = load i32, ptr %i__, align 4
  %385 = load i32, ptr %i__, align 4
  %386 = load i32, ptr %a_dim1, align 4
  %mul378 = mul nsw i32 %385, %386
  %add379 = add nsw i32 %384, %mul378
  %idxprom380 = sext i32 %add379 to i64
  %arrayidx381 = getelementptr inbounds %struct.complex, ptr %383, i64 %idxprom380
  %387 = load ptr, ptr %lda.addr, align 8
  %388 = load ptr, ptr %work.addr, align 8
  %arrayidx382 = getelementptr inbounds %struct.complex, ptr %388, i64 1
  %389 = load ptr, ptr %b.addr, align 8
  %390 = load i32, ptr %b_offset, align 4
  %idxprom383 = sext i32 %390 to i64
  %arrayidx384 = getelementptr inbounds %struct.complex, ptr %389, i64 %idxprom383
  %391 = load ptr, ptr %ldb.addr, align 8
  %392 = load ptr, ptr %b.addr, align 8
  %393 = load i32, ptr %i__, align 4
  %394 = load i32, ptr %i__, align 4
  %395 = load i32, ptr %b_dim1, align 4
  %mul385 = mul nsw i32 %394, %395
  %add386 = add nsw i32 %393, %mul385
  %idxprom387 = sext i32 %add386 to i64
  %arrayidx388 = getelementptr inbounds %struct.complex, ptr %392, i64 %idxprom387
  %396 = load ptr, ptr %ldb.addr, align 8
  %397 = load ptr, ptr %work.addr, align 8
  %398 = load i32, ptr %n1, align 4
  %399 = load i32, ptr %n2, align 4
  %mul389 = mul nsw i32 %398, %399
  %add390 = add nsw i32 %mul389, 1
  %idxprom391 = sext i32 %add390 to i64
  %arrayidx392 = getelementptr inbounds %struct.complex, ptr %397, i64 %idxprom391
  %400 = load ptr, ptr %dif.addr, align 8
  %arrayidx393 = getelementptr inbounds float, ptr %400, i64 1
  %401 = load ptr, ptr %work.addr, align 8
  %402 = load i32, ptr %n1, align 4
  %403 = load i32, ptr %n2, align 4
  %mul394 = mul nsw i32 %402, %403
  %shl395 = shl i32 %mul394, 1
  %add396 = add nsw i32 %shl395, 1
  %idxprom397 = sext i32 %add396 to i64
  %arrayidx398 = getelementptr inbounds %struct.complex, ptr %401, i64 %idxprom397
  %404 = load ptr, ptr %iwork.addr, align 8
  %arrayidx399 = getelementptr inbounds i32, ptr %404, i64 1
  %call400 = call i32 @ctgsyl_(ptr noundef @.str.3, ptr noundef %ijb, ptr noundef %n1, ptr noundef %n2, ptr noundef %arrayidx377, ptr noundef %382, ptr noundef %arrayidx381, ptr noundef %387, ptr noundef %arrayidx382, ptr noundef %n1, ptr noundef %arrayidx384, ptr noundef %391, ptr noundef %arrayidx388, ptr noundef %396, ptr noundef %arrayidx392, ptr noundef %n1, ptr noundef %dscale, ptr noundef %arrayidx393, ptr noundef %arrayidx398, ptr noundef %i__1, ptr noundef %arrayidx399, ptr noundef %ierr)
  %405 = load ptr, ptr %lwork.addr, align 8
  %406 = load i32, ptr %405, align 4
  %407 = load i32, ptr %n1, align 4
  %shl401 = shl i32 %407, 1
  %408 = load i32, ptr %n2, align 4
  %mul402 = mul nsw i32 %shl401, %408
  %sub403 = sub nsw i32 %406, %mul402
  store i32 %sub403, ptr %i__1, align 4
  %409 = load ptr, ptr %a.addr, align 8
  %410 = load i32, ptr %i__, align 4
  %411 = load i32, ptr %i__, align 4
  %412 = load i32, ptr %a_dim1, align 4
  %mul404 = mul nsw i32 %411, %412
  %add405 = add nsw i32 %410, %mul404
  %idxprom406 = sext i32 %add405 to i64
  %arrayidx407 = getelementptr inbounds %struct.complex, ptr %409, i64 %idxprom406
  %413 = load ptr, ptr %lda.addr, align 8
  %414 = load ptr, ptr %a.addr, align 8
  %415 = load i32, ptr %a_offset, align 4
  %idxprom408 = sext i32 %415 to i64
  %arrayidx409 = getelementptr inbounds %struct.complex, ptr %414, i64 %idxprom408
  %416 = load ptr, ptr %lda.addr, align 8
  %417 = load ptr, ptr %work.addr, align 8
  %arrayidx410 = getelementptr inbounds %struct.complex, ptr %417, i64 1
  %418 = load ptr, ptr %b.addr, align 8
  %419 = load i32, ptr %i__, align 4
  %420 = load i32, ptr %i__, align 4
  %421 = load i32, ptr %b_dim1, align 4
  %mul411 = mul nsw i32 %420, %421
  %add412 = add nsw i32 %419, %mul411
  %idxprom413 = sext i32 %add412 to i64
  %arrayidx414 = getelementptr inbounds %struct.complex, ptr %418, i64 %idxprom413
  %422 = load ptr, ptr %ldb.addr, align 8
  %423 = load ptr, ptr %b.addr, align 8
  %424 = load i32, ptr %b_offset, align 4
  %idxprom415 = sext i32 %424 to i64
  %arrayidx416 = getelementptr inbounds %struct.complex, ptr %423, i64 %idxprom415
  %425 = load ptr, ptr %ldb.addr, align 8
  %426 = load ptr, ptr %work.addr, align 8
  %427 = load i32, ptr %n1, align 4
  %428 = load i32, ptr %n2, align 4
  %mul417 = mul nsw i32 %427, %428
  %add418 = add nsw i32 %mul417, 1
  %idxprom419 = sext i32 %add418 to i64
  %arrayidx420 = getelementptr inbounds %struct.complex, ptr %426, i64 %idxprom419
  %429 = load ptr, ptr %dif.addr, align 8
  %arrayidx421 = getelementptr inbounds float, ptr %429, i64 2
  %430 = load ptr, ptr %work.addr, align 8
  %431 = load i32, ptr %n1, align 4
  %432 = load i32, ptr %n2, align 4
  %mul422 = mul nsw i32 %431, %432
  %shl423 = shl i32 %mul422, 1
  %add424 = add nsw i32 %shl423, 1
  %idxprom425 = sext i32 %add424 to i64
  %arrayidx426 = getelementptr inbounds %struct.complex, ptr %430, i64 %idxprom425
  %433 = load ptr, ptr %iwork.addr, align 8
  %arrayidx427 = getelementptr inbounds i32, ptr %433, i64 1
  %call428 = call i32 @ctgsyl_(ptr noundef @.str.3, ptr noundef %ijb, ptr noundef %n2, ptr noundef %n1, ptr noundef %arrayidx407, ptr noundef %413, ptr noundef %arrayidx409, ptr noundef %416, ptr noundef %arrayidx410, ptr noundef %n2, ptr noundef %arrayidx414, ptr noundef %422, ptr noundef %arrayidx416, ptr noundef %425, ptr noundef %arrayidx420, ptr noundef %n2, ptr noundef %dscale, ptr noundef %arrayidx421, ptr noundef %arrayidx426, ptr noundef %i__1, ptr noundef %arrayidx427, ptr noundef %ierr)
  br label %if.end583

if.else429:                                       ; preds = %if.then368
  store i32 0, ptr %kase, align 4
  %434 = load ptr, ptr %m.addr, align 8
  %435 = load i32, ptr %434, align 4
  store i32 %435, ptr %n1, align 4
  %436 = load ptr, ptr %n.addr, align 8
  %437 = load i32, ptr %436, align 4
  %438 = load ptr, ptr %m.addr, align 8
  %439 = load i32, ptr %438, align 4
  %sub430 = sub nsw i32 %437, %439
  store i32 %sub430, ptr %n2, align 4
  %440 = load i32, ptr %n1, align 4
  %add431 = add nsw i32 %440, 1
  store i32 %add431, ptr %i__, align 4
  store i32 0, ptr %ijb, align 4
  %441 = load i32, ptr %n1, align 4
  %shl432 = shl i32 %441, 1
  %442 = load i32, ptr %n2, align 4
  %mul433 = mul nsw i32 %shl432, %442
  store i32 %mul433, ptr %mn2, align 4
  br label %L40

L40:                                              ; preds = %if.end503, %if.else429
  %443 = load ptr, ptr %work.addr, align 8
  %444 = load i32, ptr %mn2, align 4
  %add434 = add nsw i32 %444, 1
  %idxprom435 = sext i32 %add434 to i64
  %arrayidx436 = getelementptr inbounds %struct.complex, ptr %443, i64 %idxprom435
  %445 = load ptr, ptr %work.addr, align 8
  %arrayidx437 = getelementptr inbounds %struct.complex, ptr %445, i64 1
  %446 = load ptr, ptr %dif.addr, align 8
  %arrayidx438 = getelementptr inbounds float, ptr %446, i64 1
  %arraydecay = getelementptr inbounds [3 x i32], ptr %isave, i64 0, i64 0
  %call439 = call i32 @clacn2_(ptr noundef %mn2, ptr noundef %arrayidx436, ptr noundef %arrayidx437, ptr noundef %arrayidx438, ptr noundef %kase, ptr noundef %arraydecay)
  %447 = load i32, ptr %kase, align 4
  %cmp440 = icmp ne i32 %447, 0
  br i1 %cmp440, label %if.then442, label %if.end504

if.then442:                                       ; preds = %L40
  %448 = load i32, ptr %kase, align 4
  %cmp443 = icmp eq i32 %448, 1
  br i1 %cmp443, label %if.then445, label %if.else474

if.then445:                                       ; preds = %if.then442
  %449 = load ptr, ptr %lwork.addr, align 8
  %450 = load i32, ptr %449, align 4
  %451 = load i32, ptr %n1, align 4
  %shl446 = shl i32 %451, 1
  %452 = load i32, ptr %n2, align 4
  %mul447 = mul nsw i32 %shl446, %452
  %sub448 = sub nsw i32 %450, %mul447
  store i32 %sub448, ptr %i__1, align 4
  %453 = load ptr, ptr %a.addr, align 8
  %454 = load i32, ptr %a_offset, align 4
  %idxprom449 = sext i32 %454 to i64
  %arrayidx450 = getelementptr inbounds %struct.complex, ptr %453, i64 %idxprom449
  %455 = load ptr, ptr %lda.addr, align 8
  %456 = load ptr, ptr %a.addr, align 8
  %457 = load i32, ptr %i__, align 4
  %458 = load i32, ptr %i__, align 4
  %459 = load i32, ptr %a_dim1, align 4
  %mul451 = mul nsw i32 %458, %459
  %add452 = add nsw i32 %457, %mul451
  %idxprom453 = sext i32 %add452 to i64
  %arrayidx454 = getelementptr inbounds %struct.complex, ptr %456, i64 %idxprom453
  %460 = load ptr, ptr %lda.addr, align 8
  %461 = load ptr, ptr %work.addr, align 8
  %arrayidx455 = getelementptr inbounds %struct.complex, ptr %461, i64 1
  %462 = load ptr, ptr %b.addr, align 8
  %463 = load i32, ptr %b_offset, align 4
  %idxprom456 = sext i32 %463 to i64
  %arrayidx457 = getelementptr inbounds %struct.complex, ptr %462, i64 %idxprom456
  %464 = load ptr, ptr %ldb.addr, align 8
  %465 = load ptr, ptr %b.addr, align 8
  %466 = load i32, ptr %i__, align 4
  %467 = load i32, ptr %i__, align 4
  %468 = load i32, ptr %b_dim1, align 4
  %mul458 = mul nsw i32 %467, %468
  %add459 = add nsw i32 %466, %mul458
  %idxprom460 = sext i32 %add459 to i64
  %arrayidx461 = getelementptr inbounds %struct.complex, ptr %465, i64 %idxprom460
  %469 = load ptr, ptr %ldb.addr, align 8
  %470 = load ptr, ptr %work.addr, align 8
  %471 = load i32, ptr %n1, align 4
  %472 = load i32, ptr %n2, align 4
  %mul462 = mul nsw i32 %471, %472
  %add463 = add nsw i32 %mul462, 1
  %idxprom464 = sext i32 %add463 to i64
  %arrayidx465 = getelementptr inbounds %struct.complex, ptr %470, i64 %idxprom464
  %473 = load ptr, ptr %dif.addr, align 8
  %arrayidx466 = getelementptr inbounds float, ptr %473, i64 1
  %474 = load ptr, ptr %work.addr, align 8
  %475 = load i32, ptr %n1, align 4
  %476 = load i32, ptr %n2, align 4
  %mul467 = mul nsw i32 %475, %476
  %shl468 = shl i32 %mul467, 1
  %add469 = add nsw i32 %shl468, 1
  %idxprom470 = sext i32 %add469 to i64
  %arrayidx471 = getelementptr inbounds %struct.complex, ptr %474, i64 %idxprom470
  %477 = load ptr, ptr %iwork.addr, align 8
  %arrayidx472 = getelementptr inbounds i32, ptr %477, i64 1
  %call473 = call i32 @ctgsyl_(ptr noundef @.str.3, ptr noundef %ijb, ptr noundef %n1, ptr noundef %n2, ptr noundef %arrayidx450, ptr noundef %455, ptr noundef %arrayidx454, ptr noundef %460, ptr noundef %arrayidx455, ptr noundef %n1, ptr noundef %arrayidx457, ptr noundef %464, ptr noundef %arrayidx461, ptr noundef %469, ptr noundef %arrayidx465, ptr noundef %n1, ptr noundef %dscale, ptr noundef %arrayidx466, ptr noundef %arrayidx471, ptr noundef %i__1, ptr noundef %arrayidx472, ptr noundef %ierr)
  br label %if.end503

if.else474:                                       ; preds = %if.then442
  %478 = load ptr, ptr %lwork.addr, align 8
  %479 = load i32, ptr %478, align 4
  %480 = load i32, ptr %n1, align 4
  %shl475 = shl i32 %480, 1
  %481 = load i32, ptr %n2, align 4
  %mul476 = mul nsw i32 %shl475, %481
  %sub477 = sub nsw i32 %479, %mul476
  store i32 %sub477, ptr %i__1, align 4
  %482 = load ptr, ptr %a.addr, align 8
  %483 = load i32, ptr %a_offset, align 4
  %idxprom478 = sext i32 %483 to i64
  %arrayidx479 = getelementptr inbounds %struct.complex, ptr %482, i64 %idxprom478
  %484 = load ptr, ptr %lda.addr, align 8
  %485 = load ptr, ptr %a.addr, align 8
  %486 = load i32, ptr %i__, align 4
  %487 = load i32, ptr %i__, align 4
  %488 = load i32, ptr %a_dim1, align 4
  %mul480 = mul nsw i32 %487, %488
  %add481 = add nsw i32 %486, %mul480
  %idxprom482 = sext i32 %add481 to i64
  %arrayidx483 = getelementptr inbounds %struct.complex, ptr %485, i64 %idxprom482
  %489 = load ptr, ptr %lda.addr, align 8
  %490 = load ptr, ptr %work.addr, align 8
  %arrayidx484 = getelementptr inbounds %struct.complex, ptr %490, i64 1
  %491 = load ptr, ptr %b.addr, align 8
  %492 = load i32, ptr %b_offset, align 4
  %idxprom485 = sext i32 %492 to i64
  %arrayidx486 = getelementptr inbounds %struct.complex, ptr %491, i64 %idxprom485
  %493 = load ptr, ptr %ldb.addr, align 8
  %494 = load ptr, ptr %b.addr, align 8
  %495 = load i32, ptr %i__, align 4
  %496 = load i32, ptr %i__, align 4
  %497 = load i32, ptr %b_dim1, align 4
  %mul487 = mul nsw i32 %496, %497
  %add488 = add nsw i32 %495, %mul487
  %idxprom489 = sext i32 %add488 to i64
  %arrayidx490 = getelementptr inbounds %struct.complex, ptr %494, i64 %idxprom489
  %498 = load ptr, ptr %ldb.addr, align 8
  %499 = load ptr, ptr %work.addr, align 8
  %500 = load i32, ptr %n1, align 4
  %501 = load i32, ptr %n2, align 4
  %mul491 = mul nsw i32 %500, %501
  %add492 = add nsw i32 %mul491, 1
  %idxprom493 = sext i32 %add492 to i64
  %arrayidx494 = getelementptr inbounds %struct.complex, ptr %499, i64 %idxprom493
  %502 = load ptr, ptr %dif.addr, align 8
  %arrayidx495 = getelementptr inbounds float, ptr %502, i64 1
  %503 = load ptr, ptr %work.addr, align 8
  %504 = load i32, ptr %n1, align 4
  %505 = load i32, ptr %n2, align 4
  %mul496 = mul nsw i32 %504, %505
  %shl497 = shl i32 %mul496, 1
  %add498 = add nsw i32 %shl497, 1
  %idxprom499 = sext i32 %add498 to i64
  %arrayidx500 = getelementptr inbounds %struct.complex, ptr %503, i64 %idxprom499
  %506 = load ptr, ptr %iwork.addr, align 8
  %arrayidx501 = getelementptr inbounds i32, ptr %506, i64 1
  %call502 = call i32 @ctgsyl_(ptr noundef @.str.4, ptr noundef %ijb, ptr noundef %n1, ptr noundef %n2, ptr noundef %arrayidx479, ptr noundef %484, ptr noundef %arrayidx483, ptr noundef %489, ptr noundef %arrayidx484, ptr noundef %n1, ptr noundef %arrayidx486, ptr noundef %493, ptr noundef %arrayidx490, ptr noundef %498, ptr noundef %arrayidx494, ptr noundef %n1, ptr noundef %dscale, ptr noundef %arrayidx495, ptr noundef %arrayidx500, ptr noundef %i__1, ptr noundef %arrayidx501, ptr noundef %ierr)
  br label %if.end503

if.end503:                                        ; preds = %if.else474, %if.then445
  br label %L40

if.end504:                                        ; preds = %L40
  %507 = load float, ptr %dscale, align 4
  %508 = load ptr, ptr %dif.addr, align 8
  %arrayidx505 = getelementptr inbounds float, ptr %508, i64 1
  %509 = load float, ptr %arrayidx505, align 4
  %div506 = fdiv float %507, %509
  %510 = load ptr, ptr %dif.addr, align 8
  %arrayidx507 = getelementptr inbounds float, ptr %510, i64 1
  store float %div506, ptr %arrayidx507, align 4
  br label %L50

L50:                                              ; preds = %if.end578, %if.end504
  %511 = load ptr, ptr %work.addr, align 8
  %512 = load i32, ptr %mn2, align 4
  %add508 = add nsw i32 %512, 1
  %idxprom509 = sext i32 %add508 to i64
  %arrayidx510 = getelementptr inbounds %struct.complex, ptr %511, i64 %idxprom509
  %513 = load ptr, ptr %work.addr, align 8
  %arrayidx511 = getelementptr inbounds %struct.complex, ptr %513, i64 1
  %514 = load ptr, ptr %dif.addr, align 8
  %arrayidx512 = getelementptr inbounds float, ptr %514, i64 2
  %arraydecay513 = getelementptr inbounds [3 x i32], ptr %isave, i64 0, i64 0
  %call514 = call i32 @clacn2_(ptr noundef %mn2, ptr noundef %arrayidx510, ptr noundef %arrayidx511, ptr noundef %arrayidx512, ptr noundef %kase, ptr noundef %arraydecay513)
  %515 = load i32, ptr %kase, align 4
  %cmp515 = icmp ne i32 %515, 0
  br i1 %cmp515, label %if.then517, label %if.end579

if.then517:                                       ; preds = %L50
  %516 = load i32, ptr %kase, align 4
  %cmp518 = icmp eq i32 %516, 1
  br i1 %cmp518, label %if.then520, label %if.else549

if.then520:                                       ; preds = %if.then517
  %517 = load ptr, ptr %lwork.addr, align 8
  %518 = load i32, ptr %517, align 4
  %519 = load i32, ptr %n1, align 4
  %shl521 = shl i32 %519, 1
  %520 = load i32, ptr %n2, align 4
  %mul522 = mul nsw i32 %shl521, %520
  %sub523 = sub nsw i32 %518, %mul522
  store i32 %sub523, ptr %i__1, align 4
  %521 = load ptr, ptr %a.addr, align 8
  %522 = load i32, ptr %i__, align 4
  %523 = load i32, ptr %i__, align 4
  %524 = load i32, ptr %a_dim1, align 4
  %mul524 = mul nsw i32 %523, %524
  %add525 = add nsw i32 %522, %mul524
  %idxprom526 = sext i32 %add525 to i64
  %arrayidx527 = getelementptr inbounds %struct.complex, ptr %521, i64 %idxprom526
  %525 = load ptr, ptr %lda.addr, align 8
  %526 = load ptr, ptr %a.addr, align 8
  %527 = load i32, ptr %a_offset, align 4
  %idxprom528 = sext i32 %527 to i64
  %arrayidx529 = getelementptr inbounds %struct.complex, ptr %526, i64 %idxprom528
  %528 = load ptr, ptr %lda.addr, align 8
  %529 = load ptr, ptr %work.addr, align 8
  %arrayidx530 = getelementptr inbounds %struct.complex, ptr %529, i64 1
  %530 = load ptr, ptr %b.addr, align 8
  %531 = load i32, ptr %i__, align 4
  %532 = load i32, ptr %i__, align 4
  %533 = load i32, ptr %b_dim1, align 4
  %mul531 = mul nsw i32 %532, %533
  %add532 = add nsw i32 %531, %mul531
  %idxprom533 = sext i32 %add532 to i64
  %arrayidx534 = getelementptr inbounds %struct.complex, ptr %530, i64 %idxprom533
  %534 = load ptr, ptr %ldb.addr, align 8
  %535 = load ptr, ptr %b.addr, align 8
  %536 = load i32, ptr %b_offset, align 4
  %idxprom535 = sext i32 %536 to i64
  %arrayidx536 = getelementptr inbounds %struct.complex, ptr %535, i64 %idxprom535
  %537 = load ptr, ptr %ldb.addr, align 8
  %538 = load ptr, ptr %work.addr, align 8
  %539 = load i32, ptr %n1, align 4
  %540 = load i32, ptr %n2, align 4
  %mul537 = mul nsw i32 %539, %540
  %add538 = add nsw i32 %mul537, 1
  %idxprom539 = sext i32 %add538 to i64
  %arrayidx540 = getelementptr inbounds %struct.complex, ptr %538, i64 %idxprom539
  %541 = load ptr, ptr %dif.addr, align 8
  %arrayidx541 = getelementptr inbounds float, ptr %541, i64 2
  %542 = load ptr, ptr %work.addr, align 8
  %543 = load i32, ptr %n1, align 4
  %544 = load i32, ptr %n2, align 4
  %mul542 = mul nsw i32 %543, %544
  %shl543 = shl i32 %mul542, 1
  %add544 = add nsw i32 %shl543, 1
  %idxprom545 = sext i32 %add544 to i64
  %arrayidx546 = getelementptr inbounds %struct.complex, ptr %542, i64 %idxprom545
  %545 = load ptr, ptr %iwork.addr, align 8
  %arrayidx547 = getelementptr inbounds i32, ptr %545, i64 1
  %call548 = call i32 @ctgsyl_(ptr noundef @.str.3, ptr noundef %ijb, ptr noundef %n2, ptr noundef %n1, ptr noundef %arrayidx527, ptr noundef %525, ptr noundef %arrayidx529, ptr noundef %528, ptr noundef %arrayidx530, ptr noundef %n2, ptr noundef %arrayidx534, ptr noundef %534, ptr noundef %arrayidx536, ptr noundef %537, ptr noundef %arrayidx540, ptr noundef %n2, ptr noundef %dscale, ptr noundef %arrayidx541, ptr noundef %arrayidx546, ptr noundef %i__1, ptr noundef %arrayidx547, ptr noundef %ierr)
  br label %if.end578

if.else549:                                       ; preds = %if.then517
  %546 = load ptr, ptr %lwork.addr, align 8
  %547 = load i32, ptr %546, align 4
  %548 = load i32, ptr %n1, align 4
  %shl550 = shl i32 %548, 1
  %549 = load i32, ptr %n2, align 4
  %mul551 = mul nsw i32 %shl550, %549
  %sub552 = sub nsw i32 %547, %mul551
  store i32 %sub552, ptr %i__1, align 4
  %550 = load ptr, ptr %a.addr, align 8
  %551 = load i32, ptr %i__, align 4
  %552 = load i32, ptr %i__, align 4
  %553 = load i32, ptr %a_dim1, align 4
  %mul553 = mul nsw i32 %552, %553
  %add554 = add nsw i32 %551, %mul553
  %idxprom555 = sext i32 %add554 to i64
  %arrayidx556 = getelementptr inbounds %struct.complex, ptr %550, i64 %idxprom555
  %554 = load ptr, ptr %lda.addr, align 8
  %555 = load ptr, ptr %a.addr, align 8
  %556 = load i32, ptr %a_offset, align 4
  %idxprom557 = sext i32 %556 to i64
  %arrayidx558 = getelementptr inbounds %struct.complex, ptr %555, i64 %idxprom557
  %557 = load ptr, ptr %lda.addr, align 8
  %558 = load ptr, ptr %work.addr, align 8
  %arrayidx559 = getelementptr inbounds %struct.complex, ptr %558, i64 1
  %559 = load ptr, ptr %b.addr, align 8
  %560 = load i32, ptr %b_offset, align 4
  %idxprom560 = sext i32 %560 to i64
  %arrayidx561 = getelementptr inbounds %struct.complex, ptr %559, i64 %idxprom560
  %561 = load ptr, ptr %ldb.addr, align 8
  %562 = load ptr, ptr %b.addr, align 8
  %563 = load i32, ptr %i__, align 4
  %564 = load i32, ptr %i__, align 4
  %565 = load i32, ptr %b_dim1, align 4
  %mul562 = mul nsw i32 %564, %565
  %add563 = add nsw i32 %563, %mul562
  %idxprom564 = sext i32 %add563 to i64
  %arrayidx565 = getelementptr inbounds %struct.complex, ptr %562, i64 %idxprom564
  %566 = load ptr, ptr %ldb.addr, align 8
  %567 = load ptr, ptr %work.addr, align 8
  %568 = load i32, ptr %n1, align 4
  %569 = load i32, ptr %n2, align 4
  %mul566 = mul nsw i32 %568, %569
  %add567 = add nsw i32 %mul566, 1
  %idxprom568 = sext i32 %add567 to i64
  %arrayidx569 = getelementptr inbounds %struct.complex, ptr %567, i64 %idxprom568
  %570 = load ptr, ptr %dif.addr, align 8
  %arrayidx570 = getelementptr inbounds float, ptr %570, i64 2
  %571 = load ptr, ptr %work.addr, align 8
  %572 = load i32, ptr %n1, align 4
  %573 = load i32, ptr %n2, align 4
  %mul571 = mul nsw i32 %572, %573
  %shl572 = shl i32 %mul571, 1
  %add573 = add nsw i32 %shl572, 1
  %idxprom574 = sext i32 %add573 to i64
  %arrayidx575 = getelementptr inbounds %struct.complex, ptr %571, i64 %idxprom574
  %574 = load ptr, ptr %iwork.addr, align 8
  %arrayidx576 = getelementptr inbounds i32, ptr %574, i64 1
  %call577 = call i32 @ctgsyl_(ptr noundef @.str.4, ptr noundef %ijb, ptr noundef %n2, ptr noundef %n1, ptr noundef %arrayidx556, ptr noundef %554, ptr noundef %arrayidx558, ptr noundef %557, ptr noundef %arrayidx559, ptr noundef %n2, ptr noundef %arrayidx561, ptr noundef %561, ptr noundef %arrayidx565, ptr noundef %566, ptr noundef %arrayidx569, ptr noundef %n2, ptr noundef %dscale, ptr noundef %arrayidx570, ptr noundef %arrayidx575, ptr noundef %i__1, ptr noundef %arrayidx576, ptr noundef %ierr)
  br label %if.end578

if.end578:                                        ; preds = %if.else549, %if.then520
  br label %L50

if.end579:                                        ; preds = %L50
  %575 = load float, ptr %dscale, align 4
  %576 = load ptr, ptr %dif.addr, align 8
  %arrayidx580 = getelementptr inbounds float, ptr %576, i64 2
  %577 = load float, ptr %arrayidx580, align 4
  %div581 = fdiv float %575, %577
  %578 = load ptr, ptr %dif.addr, align 8
  %arrayidx582 = getelementptr inbounds float, ptr %578, i64 2
  store float %div581, ptr %arrayidx582, align 4
  br label %if.end583

if.end583:                                        ; preds = %if.end579, %if.then370
  br label %if.end584

if.end584:                                        ; preds = %if.end583, %if.end366
  %579 = load ptr, ptr %n.addr, align 8
  %580 = load i32, ptr %579, align 4
  store i32 %580, ptr %i__1, align 4
  store i32 1, ptr %k, align 4
  br label %for.cond585

for.cond585:                                      ; preds = %for.inc698, %if.end584
  %581 = load i32, ptr %k, align 4
  %582 = load i32, ptr %i__1, align 4
  %cmp586 = icmp sle i32 %581, %582
  br i1 %cmp586, label %for.body588, label %for.end700

for.body588:                                      ; preds = %for.cond585
  %583 = load ptr, ptr %b.addr, align 8
  %584 = load i32, ptr %k, align 4
  %585 = load i32, ptr %k, align 4
  %586 = load i32, ptr %b_dim1, align 4
  %mul589 = mul nsw i32 %585, %586
  %add590 = add nsw i32 %584, %mul589
  %idxprom591 = sext i32 %add590 to i64
  %arrayidx592 = getelementptr inbounds %struct.complex, ptr %583, i64 %idxprom591
  %call593 = call double @c_abs(ptr noundef %arrayidx592)
  %conv594 = fptrunc double %call593 to float
  store float %conv594, ptr %dscale, align 4
  %587 = load float, ptr %dscale, align 4
  %588 = load float, ptr %safmin, align 4
  %cmp595 = fcmp ogt float %587, %588
  br i1 %cmp595, label %if.then597, label %if.else660

if.then597:                                       ; preds = %for.body588
  %589 = load i32, ptr %k, align 4
  %590 = load i32, ptr %k, align 4
  %591 = load i32, ptr %b_dim1, align 4
  %mul598 = mul nsw i32 %590, %591
  %add599 = add nsw i32 %589, %mul598
  store i32 %add599, ptr %i__2, align 4
  %592 = load ptr, ptr %b.addr, align 8
  %593 = load i32, ptr %i__2, align 4
  %idxprom600 = sext i32 %593 to i64
  %arrayidx601 = getelementptr inbounds %struct.complex, ptr %592, i64 %idxprom600
  %r602 = getelementptr inbounds %struct.complex, ptr %arrayidx601, i32 0, i32 0
  %594 = load float, ptr %r602, align 4
  %595 = load float, ptr %dscale, align 4
  %div603 = fdiv float %594, %595
  %r604 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  store float %div603, ptr %r604, align 4
  %596 = load ptr, ptr %b.addr, align 8
  %597 = load i32, ptr %i__2, align 4
  %idxprom605 = sext i32 %597 to i64
  %arrayidx606 = getelementptr inbounds %struct.complex, ptr %596, i64 %idxprom605
  %i607 = getelementptr inbounds %struct.complex, ptr %arrayidx606, i32 0, i32 1
  %598 = load float, ptr %i607, align 4
  %599 = load float, ptr %dscale, align 4
  %div608 = fdiv float %598, %599
  %i609 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  store float %div608, ptr %i609, align 4
  call void @r_cnjg(ptr noundef %q__1, ptr noundef %q__2)
  %r610 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %600 = load float, ptr %r610, align 4
  %r611 = getelementptr inbounds %struct.complex, ptr %temp1, i32 0, i32 0
  store float %600, ptr %r611, align 4
  %i612 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %601 = load float, ptr %i612, align 4
  %i613 = getelementptr inbounds %struct.complex, ptr %temp1, i32 0, i32 1
  store float %601, ptr %i613, align 4
  %602 = load i32, ptr %k, align 4
  %603 = load i32, ptr %k, align 4
  %604 = load i32, ptr %b_dim1, align 4
  %mul614 = mul nsw i32 %603, %604
  %add615 = add nsw i32 %602, %mul614
  store i32 %add615, ptr %i__2, align 4
  %605 = load ptr, ptr %b.addr, align 8
  %606 = load i32, ptr %i__2, align 4
  %idxprom616 = sext i32 %606 to i64
  %arrayidx617 = getelementptr inbounds %struct.complex, ptr %605, i64 %idxprom616
  %r618 = getelementptr inbounds %struct.complex, ptr %arrayidx617, i32 0, i32 0
  %607 = load float, ptr %r618, align 4
  %608 = load float, ptr %dscale, align 4
  %div619 = fdiv float %607, %608
  %r620 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float %div619, ptr %r620, align 4
  %609 = load ptr, ptr %b.addr, align 8
  %610 = load i32, ptr %i__2, align 4
  %idxprom621 = sext i32 %610 to i64
  %arrayidx622 = getelementptr inbounds %struct.complex, ptr %609, i64 %idxprom621
  %i623 = getelementptr inbounds %struct.complex, ptr %arrayidx622, i32 0, i32 1
  %611 = load float, ptr %i623, align 4
  %612 = load float, ptr %dscale, align 4
  %div624 = fdiv float %611, %612
  %i625 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float %div624, ptr %i625, align 4
  %r626 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %613 = load float, ptr %r626, align 4
  %r627 = getelementptr inbounds %struct.complex, ptr %temp2, i32 0, i32 0
  store float %613, ptr %r627, align 4
  %i628 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %614 = load float, ptr %i628, align 4
  %i629 = getelementptr inbounds %struct.complex, ptr %temp2, i32 0, i32 1
  store float %614, ptr %i629, align 4
  %615 = load i32, ptr %k, align 4
  %616 = load i32, ptr %k, align 4
  %617 = load i32, ptr %b_dim1, align 4
  %mul630 = mul nsw i32 %616, %617
  %add631 = add nsw i32 %615, %mul630
  store i32 %add631, ptr %i__2, align 4
  %618 = load float, ptr %dscale, align 4
  %619 = load ptr, ptr %b.addr, align 8
  %620 = load i32, ptr %i__2, align 4
  %idxprom632 = sext i32 %620 to i64
  %arrayidx633 = getelementptr inbounds %struct.complex, ptr %619, i64 %idxprom632
  %r634 = getelementptr inbounds %struct.complex, ptr %arrayidx633, i32 0, i32 0
  store float %618, ptr %r634, align 4
  %621 = load ptr, ptr %b.addr, align 8
  %622 = load i32, ptr %i__2, align 4
  %idxprom635 = sext i32 %622 to i64
  %arrayidx636 = getelementptr inbounds %struct.complex, ptr %621, i64 %idxprom635
  %i637 = getelementptr inbounds %struct.complex, ptr %arrayidx636, i32 0, i32 1
  store float 0.000000e+00, ptr %i637, align 4
  %623 = load ptr, ptr %n.addr, align 8
  %624 = load i32, ptr %623, align 4
  %625 = load i32, ptr %k, align 4
  %sub638 = sub nsw i32 %624, %625
  store i32 %sub638, ptr %i__2, align 4
  %626 = load ptr, ptr %b.addr, align 8
  %627 = load i32, ptr %k, align 4
  %628 = load i32, ptr %k, align 4
  %add639 = add nsw i32 %628, 1
  %629 = load i32, ptr %b_dim1, align 4
  %mul640 = mul nsw i32 %add639, %629
  %add641 = add nsw i32 %627, %mul640
  %idxprom642 = sext i32 %add641 to i64
  %arrayidx643 = getelementptr inbounds %struct.complex, ptr %626, i64 %idxprom642
  %630 = load ptr, ptr %ldb.addr, align 8
  %call644 = call i32 @cscal_(ptr noundef %i__2, ptr noundef %temp1, ptr noundef %arrayidx643, ptr noundef %630)
  %631 = load ptr, ptr %n.addr, align 8
  %632 = load i32, ptr %631, align 4
  %633 = load i32, ptr %k, align 4
  %sub645 = sub nsw i32 %632, %633
  %add646 = add nsw i32 %sub645, 1
  store i32 %add646, ptr %i__2, align 4
  %634 = load ptr, ptr %a.addr, align 8
  %635 = load i32, ptr %k, align 4
  %636 = load i32, ptr %k, align 4
  %637 = load i32, ptr %a_dim1, align 4
  %mul647 = mul nsw i32 %636, %637
  %add648 = add nsw i32 %635, %mul647
  %idxprom649 = sext i32 %add648 to i64
  %arrayidx650 = getelementptr inbounds %struct.complex, ptr %634, i64 %idxprom649
  %638 = load ptr, ptr %lda.addr, align 8
  %call651 = call i32 @cscal_(ptr noundef %i__2, ptr noundef %temp1, ptr noundef %arrayidx650, ptr noundef %638)
  %639 = load ptr, ptr %wantq.addr, align 8
  %640 = load i32, ptr %639, align 4
  %tobool652 = icmp ne i32 %640, 0
  br i1 %tobool652, label %if.then653, label %if.end659

if.then653:                                       ; preds = %if.then597
  %641 = load ptr, ptr %n.addr, align 8
  %642 = load ptr, ptr %q.addr, align 8
  %643 = load i32, ptr %k, align 4
  %644 = load i32, ptr %q_dim1, align 4
  %mul654 = mul nsw i32 %643, %644
  %add655 = add nsw i32 %mul654, 1
  %idxprom656 = sext i32 %add655 to i64
  %arrayidx657 = getelementptr inbounds %struct.complex, ptr %642, i64 %idxprom656
  %call658 = call i32 @cscal_(ptr noundef %641, ptr noundef %temp2, ptr noundef %arrayidx657, ptr noundef @c__1)
  br label %if.end659

if.end659:                                        ; preds = %if.then653, %if.then597
  br label %if.end669

if.else660:                                       ; preds = %for.body588
  %645 = load i32, ptr %k, align 4
  %646 = load i32, ptr %k, align 4
  %647 = load i32, ptr %b_dim1, align 4
  %mul661 = mul nsw i32 %646, %647
  %add662 = add nsw i32 %645, %mul661
  store i32 %add662, ptr %i__2, align 4
  %648 = load ptr, ptr %b.addr, align 8
  %649 = load i32, ptr %i__2, align 4
  %idxprom663 = sext i32 %649 to i64
  %arrayidx664 = getelementptr inbounds %struct.complex, ptr %648, i64 %idxprom663
  %r665 = getelementptr inbounds %struct.complex, ptr %arrayidx664, i32 0, i32 0
  store float 0.000000e+00, ptr %r665, align 4
  %650 = load ptr, ptr %b.addr, align 8
  %651 = load i32, ptr %i__2, align 4
  %idxprom666 = sext i32 %651 to i64
  %arrayidx667 = getelementptr inbounds %struct.complex, ptr %650, i64 %idxprom666
  %i668 = getelementptr inbounds %struct.complex, ptr %arrayidx667, i32 0, i32 1
  store float 0.000000e+00, ptr %i668, align 4
  br label %if.end669

if.end669:                                        ; preds = %if.else660, %if.end659
  %652 = load i32, ptr %k, align 4
  store i32 %652, ptr %i__2, align 4
  %653 = load i32, ptr %k, align 4
  %654 = load i32, ptr %k, align 4
  %655 = load i32, ptr %a_dim1, align 4
  %mul670 = mul nsw i32 %654, %655
  %add671 = add nsw i32 %653, %mul670
  store i32 %add671, ptr %i__3, align 4
  %656 = load ptr, ptr %a.addr, align 8
  %657 = load i32, ptr %i__3, align 4
  %idxprom672 = sext i32 %657 to i64
  %arrayidx673 = getelementptr inbounds %struct.complex, ptr %656, i64 %idxprom672
  %r674 = getelementptr inbounds %struct.complex, ptr %arrayidx673, i32 0, i32 0
  %658 = load float, ptr %r674, align 4
  %659 = load ptr, ptr %alpha.addr, align 8
  %660 = load i32, ptr %i__2, align 4
  %idxprom675 = sext i32 %660 to i64
  %arrayidx676 = getelementptr inbounds %struct.complex, ptr %659, i64 %idxprom675
  %r677 = getelementptr inbounds %struct.complex, ptr %arrayidx676, i32 0, i32 0
  store float %658, ptr %r677, align 4
  %661 = load ptr, ptr %a.addr, align 8
  %662 = load i32, ptr %i__3, align 4
  %idxprom678 = sext i32 %662 to i64
  %arrayidx679 = getelementptr inbounds %struct.complex, ptr %661, i64 %idxprom678
  %i680 = getelementptr inbounds %struct.complex, ptr %arrayidx679, i32 0, i32 1
  %663 = load float, ptr %i680, align 4
  %664 = load ptr, ptr %alpha.addr, align 8
  %665 = load i32, ptr %i__2, align 4
  %idxprom681 = sext i32 %665 to i64
  %arrayidx682 = getelementptr inbounds %struct.complex, ptr %664, i64 %idxprom681
  %i683 = getelementptr inbounds %struct.complex, ptr %arrayidx682, i32 0, i32 1
  store float %663, ptr %i683, align 4
  %666 = load i32, ptr %k, align 4
  store i32 %666, ptr %i__2, align 4
  %667 = load i32, ptr %k, align 4
  %668 = load i32, ptr %k, align 4
  %669 = load i32, ptr %b_dim1, align 4
  %mul684 = mul nsw i32 %668, %669
  %add685 = add nsw i32 %667, %mul684
  store i32 %add685, ptr %i__3, align 4
  %670 = load ptr, ptr %b.addr, align 8
  %671 = load i32, ptr %i__3, align 4
  %idxprom686 = sext i32 %671 to i64
  %arrayidx687 = getelementptr inbounds %struct.complex, ptr %670, i64 %idxprom686
  %r688 = getelementptr inbounds %struct.complex, ptr %arrayidx687, i32 0, i32 0
  %672 = load float, ptr %r688, align 4
  %673 = load ptr, ptr %beta.addr, align 8
  %674 = load i32, ptr %i__2, align 4
  %idxprom689 = sext i32 %674 to i64
  %arrayidx690 = getelementptr inbounds %struct.complex, ptr %673, i64 %idxprom689
  %r691 = getelementptr inbounds %struct.complex, ptr %arrayidx690, i32 0, i32 0
  store float %672, ptr %r691, align 4
  %675 = load ptr, ptr %b.addr, align 8
  %676 = load i32, ptr %i__3, align 4
  %idxprom692 = sext i32 %676 to i64
  %arrayidx693 = getelementptr inbounds %struct.complex, ptr %675, i64 %idxprom692
  %i694 = getelementptr inbounds %struct.complex, ptr %arrayidx693, i32 0, i32 1
  %677 = load float, ptr %i694, align 4
  %678 = load ptr, ptr %beta.addr, align 8
  %679 = load i32, ptr %i__2, align 4
  %idxprom695 = sext i32 %679 to i64
  %arrayidx696 = getelementptr inbounds %struct.complex, ptr %678, i64 %idxprom695
  %i697 = getelementptr inbounds %struct.complex, ptr %arrayidx696, i32 0, i32 1
  store float %677, ptr %i697, align 4
  br label %for.inc698

for.inc698:                                       ; preds = %if.end669
  %680 = load i32, ptr %k, align 4
  %inc699 = add nsw i32 %680, 1
  store i32 %inc699, ptr %k, align 4
  br label %for.cond585, !llvm.loop !9

for.end700:                                       ; preds = %for.cond585
  br label %L70

L70:                                              ; preds = %for.end700, %if.end263, %if.end228
  %681 = load i32, ptr %lwmin, align 4
  %conv701 = sitofp i32 %681 to float
  %682 = load ptr, ptr %work.addr, align 8
  %arrayidx702 = getelementptr inbounds %struct.complex, ptr %682, i64 1
  %r703 = getelementptr inbounds %struct.complex, ptr %arrayidx702, i32 0, i32 0
  store float %conv701, ptr %r703, align 4
  %683 = load ptr, ptr %work.addr, align 8
  %arrayidx704 = getelementptr inbounds %struct.complex, ptr %683, i64 1
  %i705 = getelementptr inbounds %struct.complex, ptr %arrayidx704, i32 0, i32 1
  store float 0.000000e+00, ptr %i705, align 4
  %684 = load i32, ptr %liwmin, align 4
  %685 = load ptr, ptr %iwork.addr, align 8
  %arrayidx706 = getelementptr inbounds i32, ptr %685, i64 1
  store i32 %684, ptr %arrayidx706, align 4
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %L70, %if.then189, %if.then184, %if.then53
  %686 = load i32, ptr %retval, align 4
  ret i32 %686
}

declare i32 @xerbla_(ptr noundef, ptr noundef) #1

declare i32 @classq_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
declare double @sqrt(double noundef) #2

declare float @slamch_(ptr noundef) #1

declare i32 @ctgexc_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @clacpy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @ctgsyl_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @clacn2_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare double @c_abs(ptr noundef) #1

declare void @r_cnjg(ptr noundef, ptr noundef) #1

declare i32 @cscal_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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

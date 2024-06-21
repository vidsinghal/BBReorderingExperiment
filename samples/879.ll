; ModuleID = 'samples/879.bc'
source_filename = "/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/map/lapack2flamec/check/sorgbr_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"Q\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@c_n1 = internal global i32 -1, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"SORGBR\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @sorgbr_check(ptr noundef %vect, ptr noundef %m, ptr noundef %n, ptr noundef %k, ptr noundef %a, ptr noundef %lda, ptr noundef %tau, ptr noundef %work, ptr noundef %lwork, ptr noundef %info) #0 {
entry:
  %retval = alloca i32, align 4
  %vect.addr = alloca ptr, align 8
  %m.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %k.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %lda.addr = alloca ptr, align 8
  %tau.addr = alloca ptr, align 8
  %work.addr = alloca ptr, align 8
  %lwork.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %a_dim1 = alloca i32, align 4
  %a_offset = alloca i32, align 4
  %i__1 = alloca i32, align 4
  %i__2 = alloca i32, align 4
  %i__3 = alloca i32, align 4
  %mn = alloca i32, align 4
  %iinfo = alloca i32, align 4
  %wantq = alloca i32, align 4
  %lwkopt = alloca i32, align 4
  %lquery = alloca i32, align 4
  store ptr %vect, ptr %vect.addr, align 8
  store ptr %m, ptr %m.addr, align 8
  store ptr %n, ptr %n.addr, align 8
  store ptr %k, ptr %k.addr, align 8
  store ptr %a, ptr %a.addr, align 8
  store ptr %lda, ptr %lda.addr, align 8
  store ptr %tau, ptr %tau.addr, align 8
  store ptr %work, ptr %work.addr, align 8
  store ptr %lwork, ptr %lwork.addr, align 8
  store ptr %info, ptr %info.addr, align 8
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
  %add.ptr = getelementptr inbounds float, ptr %4, i64 %idx.neg
  store ptr %add.ptr, ptr %a.addr, align 8
  %5 = load ptr, ptr %tau.addr, align 8
  %incdec.ptr = getelementptr inbounds float, ptr %5, i32 -1
  store ptr %incdec.ptr, ptr %tau.addr, align 8
  %6 = load ptr, ptr %work.addr, align 8
  %incdec.ptr1 = getelementptr inbounds float, ptr %6, i32 -1
  store ptr %incdec.ptr1, ptr %work.addr, align 8
  %7 = load ptr, ptr %info.addr, align 8
  store i32 0, ptr %7, align 4
  %8 = load ptr, ptr %vect.addr, align 8
  %call = call i32 @lsame_(ptr noundef %8, ptr noundef @.str)
  store i32 %call, ptr %wantq, align 4
  %9 = load ptr, ptr %m.addr, align 8
  %10 = load i32, ptr %9, align 4
  %11 = load ptr, ptr %n.addr, align 8
  %12 = load i32, ptr %11, align 4
  %cmp = icmp slt i32 %10, %12
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %13 = load ptr, ptr %m.addr, align 8
  %14 = load i32, ptr %13, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %15 = load ptr, ptr %n.addr, align 8
  %16 = load i32, ptr %15, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %14, %cond.true ], [ %16, %cond.false ]
  store i32 %cond, ptr %mn, align 4
  %17 = load ptr, ptr %lwork.addr, align 8
  %18 = load i32, ptr %17, align 4
  %cmp2 = icmp eq i32 %18, -1
  %conv = zext i1 %cmp2 to i32
  store i32 %conv, ptr %lquery, align 4
  %19 = load i32, ptr %wantq, align 4
  %tobool = icmp ne i32 %19, 0
  br i1 %tobool, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %cond.end
  %20 = load ptr, ptr %vect.addr, align 8
  %call3 = call i32 @lsame_(ptr noundef %20, ptr noundef @.str.1)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %21 = load ptr, ptr %info.addr, align 8
  store i32 -1, ptr %21, align 4
  br label %if.end69

if.else:                                          ; preds = %land.lhs.true, %cond.end
  %22 = load ptr, ptr %m.addr, align 8
  %23 = load i32, ptr %22, align 4
  %cmp5 = icmp slt i32 %23, 0
  br i1 %cmp5, label %if.then7, label %if.else8

if.then7:                                         ; preds = %if.else
  %24 = load ptr, ptr %info.addr, align 8
  store i32 -2, ptr %24, align 4
  br label %if.end68

if.else8:                                         ; preds = %if.else
  %25 = load ptr, ptr %n.addr, align 8
  %26 = load i32, ptr %25, align 4
  %cmp9 = icmp slt i32 %26, 0
  br i1 %cmp9, label %if.then38, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else8
  %27 = load i32, ptr %wantq, align 4
  %tobool11 = icmp ne i32 %27, 0
  br i1 %tobool11, label %land.lhs.true12, label %lor.lhs.false24

land.lhs.true12:                                  ; preds = %lor.lhs.false
  %28 = load ptr, ptr %n.addr, align 8
  %29 = load i32, ptr %28, align 4
  %30 = load ptr, ptr %m.addr, align 8
  %31 = load i32, ptr %30, align 4
  %cmp13 = icmp sgt i32 %29, %31
  br i1 %cmp13, label %if.then38, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %land.lhs.true12
  %32 = load ptr, ptr %n.addr, align 8
  %33 = load i32, ptr %32, align 4
  %34 = load ptr, ptr %m.addr, align 8
  %35 = load i32, ptr %34, align 4
  %36 = load ptr, ptr %k.addr, align 8
  %37 = load i32, ptr %36, align 4
  %cmp16 = icmp slt i32 %35, %37
  br i1 %cmp16, label %cond.true18, label %cond.false19

cond.true18:                                      ; preds = %lor.lhs.false15
  %38 = load ptr, ptr %m.addr, align 8
  %39 = load i32, ptr %38, align 4
  br label %cond.end20

cond.false19:                                     ; preds = %lor.lhs.false15
  %40 = load ptr, ptr %k.addr, align 8
  %41 = load i32, ptr %40, align 4
  br label %cond.end20

cond.end20:                                       ; preds = %cond.false19, %cond.true18
  %cond21 = phi i32 [ %39, %cond.true18 ], [ %41, %cond.false19 ]
  %cmp22 = icmp slt i32 %33, %cond21
  br i1 %cmp22, label %if.then38, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %cond.end20, %lor.lhs.false
  %42 = load i32, ptr %wantq, align 4
  %tobool25 = icmp ne i32 %42, 0
  br i1 %tobool25, label %if.else39, label %land.lhs.true26

land.lhs.true26:                                  ; preds = %lor.lhs.false24
  %43 = load ptr, ptr %m.addr, align 8
  %44 = load i32, ptr %43, align 4
  %45 = load ptr, ptr %n.addr, align 8
  %46 = load i32, ptr %45, align 4
  %cmp27 = icmp sgt i32 %44, %46
  br i1 %cmp27, label %if.then38, label %lor.lhs.false29

lor.lhs.false29:                                  ; preds = %land.lhs.true26
  %47 = load ptr, ptr %m.addr, align 8
  %48 = load i32, ptr %47, align 4
  %49 = load ptr, ptr %n.addr, align 8
  %50 = load i32, ptr %49, align 4
  %51 = load ptr, ptr %k.addr, align 8
  %52 = load i32, ptr %51, align 4
  %cmp30 = icmp slt i32 %50, %52
  br i1 %cmp30, label %cond.true32, label %cond.false33

cond.true32:                                      ; preds = %lor.lhs.false29
  %53 = load ptr, ptr %n.addr, align 8
  %54 = load i32, ptr %53, align 4
  br label %cond.end34

cond.false33:                                     ; preds = %lor.lhs.false29
  %55 = load ptr, ptr %k.addr, align 8
  %56 = load i32, ptr %55, align 4
  br label %cond.end34

cond.end34:                                       ; preds = %cond.false33, %cond.true32
  %cond35 = phi i32 [ %54, %cond.true32 ], [ %56, %cond.false33 ]
  %cmp36 = icmp slt i32 %48, %cond35
  br i1 %cmp36, label %if.then38, label %if.else39

if.then38:                                        ; preds = %cond.end34, %land.lhs.true26, %cond.end20, %land.lhs.true12, %if.else8
  %57 = load ptr, ptr %info.addr, align 8
  store i32 -3, ptr %57, align 4
  br label %if.end67

if.else39:                                        ; preds = %cond.end34, %lor.lhs.false24
  %58 = load ptr, ptr %k.addr, align 8
  %59 = load i32, ptr %58, align 4
  %cmp40 = icmp slt i32 %59, 0
  br i1 %cmp40, label %if.then42, label %if.else43

if.then42:                                        ; preds = %if.else39
  %60 = load ptr, ptr %info.addr, align 8
  store i32 -4, ptr %60, align 4
  br label %if.end66

if.else43:                                        ; preds = %if.else39
  %61 = load ptr, ptr %lda.addr, align 8
  %62 = load i32, ptr %61, align 4
  %63 = load ptr, ptr %m.addr, align 8
  %64 = load i32, ptr %63, align 4
  %cmp44 = icmp sgt i32 1, %64
  br i1 %cmp44, label %cond.true46, label %cond.false47

cond.true46:                                      ; preds = %if.else43
  br label %cond.end48

cond.false47:                                     ; preds = %if.else43
  %65 = load ptr, ptr %m.addr, align 8
  %66 = load i32, ptr %65, align 4
  br label %cond.end48

cond.end48:                                       ; preds = %cond.false47, %cond.true46
  %cond49 = phi i32 [ 1, %cond.true46 ], [ %66, %cond.false47 ]
  %cmp50 = icmp slt i32 %62, %cond49
  br i1 %cmp50, label %if.then52, label %if.else53

if.then52:                                        ; preds = %cond.end48
  %67 = load ptr, ptr %info.addr, align 8
  store i32 -6, ptr %67, align 4
  br label %if.end65

if.else53:                                        ; preds = %cond.end48
  %68 = load ptr, ptr %lwork.addr, align 8
  %69 = load i32, ptr %68, align 4
  %70 = load i32, ptr %mn, align 4
  %cmp54 = icmp sgt i32 1, %70
  br i1 %cmp54, label %cond.true56, label %cond.false57

cond.true56:                                      ; preds = %if.else53
  br label %cond.end58

cond.false57:                                     ; preds = %if.else53
  %71 = load i32, ptr %mn, align 4
  br label %cond.end58

cond.end58:                                       ; preds = %cond.false57, %cond.true56
  %cond59 = phi i32 [ 1, %cond.true56 ], [ %71, %cond.false57 ]
  %cmp60 = icmp slt i32 %69, %cond59
  br i1 %cmp60, label %land.lhs.true62, label %if.end

land.lhs.true62:                                  ; preds = %cond.end58
  %72 = load i32, ptr %lquery, align 4
  %tobool63 = icmp ne i32 %72, 0
  br i1 %tobool63, label %if.end, label %if.then64

if.then64:                                        ; preds = %land.lhs.true62
  %73 = load ptr, ptr %info.addr, align 8
  store i32 -9, ptr %73, align 4
  br label %if.end

if.end:                                           ; preds = %if.then64, %land.lhs.true62, %cond.end58
  br label %if.end65

if.end65:                                         ; preds = %if.end, %if.then52
  br label %if.end66

if.end66:                                         ; preds = %if.end65, %if.then42
  br label %if.end67

if.end67:                                         ; preds = %if.end66, %if.then38
  br label %if.end68

if.end68:                                         ; preds = %if.end67, %if.then7
  br label %if.end69

if.end69:                                         ; preds = %if.end68, %if.then
  %74 = load ptr, ptr %info.addr, align 8
  %75 = load i32, ptr %74, align 4
  %cmp70 = icmp eq i32 %75, 0
  br i1 %cmp70, label %if.then72, label %if.end130

if.then72:                                        ; preds = %if.end69
  %76 = load ptr, ptr %work.addr, align 8
  %arrayidx = getelementptr inbounds float, ptr %76, i64 1
  store float 1.000000e+00, ptr %arrayidx, align 4
  %77 = load i32, ptr %wantq, align 4
  %tobool73 = icmp ne i32 %77, 0
  br i1 %tobool73, label %if.then74, label %if.else96

if.then74:                                        ; preds = %if.then72
  %78 = load ptr, ptr %m.addr, align 8
  %79 = load i32, ptr %78, align 4
  %80 = load ptr, ptr %k.addr, align 8
  %81 = load i32, ptr %80, align 4
  %cmp75 = icmp sge i32 %79, %81
  br i1 %cmp75, label %if.then77, label %if.else82

if.then77:                                        ; preds = %if.then74
  %82 = load ptr, ptr %m.addr, align 8
  %83 = load ptr, ptr %n.addr, align 8
  %84 = load ptr, ptr %k.addr, align 8
  %85 = load ptr, ptr %a.addr, align 8
  %86 = load i32, ptr %a_offset, align 4
  %idxprom = sext i32 %86 to i64
  %arrayidx78 = getelementptr inbounds float, ptr %85, i64 %idxprom
  %87 = load ptr, ptr %lda.addr, align 8
  %88 = load ptr, ptr %tau.addr, align 8
  %arrayidx79 = getelementptr inbounds float, ptr %88, i64 1
  %89 = load ptr, ptr %work.addr, align 8
  %arrayidx80 = getelementptr inbounds float, ptr %89, i64 1
  %call81 = call i32 @sorgqr_check(ptr noundef %82, ptr noundef %83, ptr noundef %84, ptr noundef %arrayidx78, ptr noundef %87, ptr noundef %arrayidx79, ptr noundef %arrayidx80, ptr noundef @c_n1, ptr noundef %iinfo)
  br label %if.end95

if.else82:                                        ; preds = %if.then74
  %90 = load ptr, ptr %m.addr, align 8
  %91 = load i32, ptr %90, align 4
  %cmp83 = icmp sgt i32 %91, 1
  br i1 %cmp83, label %if.then85, label %if.end94

if.then85:                                        ; preds = %if.else82
  %92 = load ptr, ptr %m.addr, align 8
  %93 = load i32, ptr %92, align 4
  %sub = sub nsw i32 %93, 1
  store i32 %sub, ptr %i__1, align 4
  %94 = load ptr, ptr %m.addr, align 8
  %95 = load i32, ptr %94, align 4
  %sub86 = sub nsw i32 %95, 1
  store i32 %sub86, ptr %i__2, align 4
  %96 = load ptr, ptr %m.addr, align 8
  %97 = load i32, ptr %96, align 4
  %sub87 = sub nsw i32 %97, 1
  store i32 %sub87, ptr %i__3, align 4
  %98 = load ptr, ptr %a.addr, align 8
  %99 = load i32, ptr %a_dim1, align 4
  %shl = shl i32 %99, 1
  %add88 = add nsw i32 %shl, 2
  %idxprom89 = sext i32 %add88 to i64
  %arrayidx90 = getelementptr inbounds float, ptr %98, i64 %idxprom89
  %100 = load ptr, ptr %lda.addr, align 8
  %101 = load ptr, ptr %tau.addr, align 8
  %arrayidx91 = getelementptr inbounds float, ptr %101, i64 1
  %102 = load ptr, ptr %work.addr, align 8
  %arrayidx92 = getelementptr inbounds float, ptr %102, i64 1
  %call93 = call i32 @sorgqr_check(ptr noundef %i__1, ptr noundef %i__2, ptr noundef %i__3, ptr noundef %arrayidx90, ptr noundef %100, ptr noundef %arrayidx91, ptr noundef %arrayidx92, ptr noundef @c_n1, ptr noundef %iinfo)
  br label %if.end94

if.end94:                                         ; preds = %if.then85, %if.else82
  br label %if.end95

if.end95:                                         ; preds = %if.end94, %if.then77
  br label %if.end121

if.else96:                                        ; preds = %if.then72
  %103 = load ptr, ptr %k.addr, align 8
  %104 = load i32, ptr %103, align 4
  %105 = load ptr, ptr %n.addr, align 8
  %106 = load i32, ptr %105, align 4
  %cmp97 = icmp slt i32 %104, %106
  br i1 %cmp97, label %if.then99, label %if.else105

if.then99:                                        ; preds = %if.else96
  %107 = load ptr, ptr %m.addr, align 8
  %108 = load ptr, ptr %n.addr, align 8
  %109 = load ptr, ptr %k.addr, align 8
  %110 = load ptr, ptr %a.addr, align 8
  %111 = load i32, ptr %a_offset, align 4
  %idxprom100 = sext i32 %111 to i64
  %arrayidx101 = getelementptr inbounds float, ptr %110, i64 %idxprom100
  %112 = load ptr, ptr %lda.addr, align 8
  %113 = load ptr, ptr %tau.addr, align 8
  %arrayidx102 = getelementptr inbounds float, ptr %113, i64 1
  %114 = load ptr, ptr %work.addr, align 8
  %arrayidx103 = getelementptr inbounds float, ptr %114, i64 1
  %call104 = call i32 @sorglq_check(ptr noundef %107, ptr noundef %108, ptr noundef %109, ptr noundef %arrayidx101, ptr noundef %112, ptr noundef %arrayidx102, ptr noundef %arrayidx103, ptr noundef @c_n1, ptr noundef %iinfo)
  br label %if.end120

if.else105:                                       ; preds = %if.else96
  %115 = load ptr, ptr %n.addr, align 8
  %116 = load i32, ptr %115, align 4
  %cmp106 = icmp sgt i32 %116, 1
  br i1 %cmp106, label %if.then108, label %if.end119

if.then108:                                       ; preds = %if.else105
  %117 = load ptr, ptr %n.addr, align 8
  %118 = load i32, ptr %117, align 4
  %sub109 = sub nsw i32 %118, 1
  store i32 %sub109, ptr %i__1, align 4
  %119 = load ptr, ptr %n.addr, align 8
  %120 = load i32, ptr %119, align 4
  %sub110 = sub nsw i32 %120, 1
  store i32 %sub110, ptr %i__2, align 4
  %121 = load ptr, ptr %n.addr, align 8
  %122 = load i32, ptr %121, align 4
  %sub111 = sub nsw i32 %122, 1
  store i32 %sub111, ptr %i__3, align 4
  %123 = load ptr, ptr %a.addr, align 8
  %124 = load i32, ptr %a_dim1, align 4
  %shl112 = shl i32 %124, 1
  %add113 = add nsw i32 %shl112, 2
  %idxprom114 = sext i32 %add113 to i64
  %arrayidx115 = getelementptr inbounds float, ptr %123, i64 %idxprom114
  %125 = load ptr, ptr %lda.addr, align 8
  %126 = load ptr, ptr %tau.addr, align 8
  %arrayidx116 = getelementptr inbounds float, ptr %126, i64 1
  %127 = load ptr, ptr %work.addr, align 8
  %arrayidx117 = getelementptr inbounds float, ptr %127, i64 1
  %call118 = call i32 @sorglq_check(ptr noundef %i__1, ptr noundef %i__2, ptr noundef %i__3, ptr noundef %arrayidx115, ptr noundef %125, ptr noundef %arrayidx116, ptr noundef %arrayidx117, ptr noundef @c_n1, ptr noundef %iinfo)
  br label %if.end119

if.end119:                                        ; preds = %if.then108, %if.else105
  br label %if.end120

if.end120:                                        ; preds = %if.end119, %if.then99
  br label %if.end121

if.end121:                                        ; preds = %if.end120, %if.end95
  %128 = load ptr, ptr %work.addr, align 8
  %arrayidx122 = getelementptr inbounds float, ptr %128, i64 1
  %129 = load float, ptr %arrayidx122, align 4
  %conv123 = fptosi float %129 to i32
  store i32 %conv123, ptr %lwkopt, align 4
  %130 = load i32, ptr %lwkopt, align 4
  %131 = load i32, ptr %mn, align 4
  %cmp124 = icmp sgt i32 %130, %131
  br i1 %cmp124, label %cond.true126, label %cond.false127

cond.true126:                                     ; preds = %if.end121
  %132 = load i32, ptr %lwkopt, align 4
  br label %cond.end128

cond.false127:                                    ; preds = %if.end121
  %133 = load i32, ptr %mn, align 4
  br label %cond.end128

cond.end128:                                      ; preds = %cond.false127, %cond.true126
  %cond129 = phi i32 [ %132, %cond.true126 ], [ %133, %cond.false127 ]
  store i32 %cond129, ptr %lwkopt, align 4
  br label %if.end130

if.end130:                                        ; preds = %cond.end128, %if.end69
  %134 = load ptr, ptr %info.addr, align 8
  %135 = load i32, ptr %134, align 4
  %cmp131 = icmp ne i32 %135, 0
  br i1 %cmp131, label %if.then133, label %if.else136

if.then133:                                       ; preds = %if.end130
  %136 = load ptr, ptr %info.addr, align 8
  %137 = load i32, ptr %136, align 4
  %sub134 = sub nsw i32 0, %137
  store i32 %sub134, ptr %i__1, align 4
  %call135 = call i32 @xerbla_(ptr noundef @.str.2, ptr noundef %i__1)
  store i32 312, ptr %retval, align 4
  br label %return

if.else136:                                       ; preds = %if.end130
  %138 = load i32, ptr %lquery, align 4
  %tobool137 = icmp ne i32 %138, 0
  br i1 %tobool137, label %if.then138, label %if.end141

if.then138:                                       ; preds = %if.else136
  %139 = load i32, ptr %lwkopt, align 4
  %conv139 = sitofp i32 %139 to float
  %140 = load ptr, ptr %work.addr, align 8
  %arrayidx140 = getelementptr inbounds float, ptr %140, i64 1
  store float %conv139, ptr %arrayidx140, align 4
  store i32 112, ptr %retval, align 4
  br label %return

if.end141:                                        ; preds = %if.else136
  br label %if.end142

if.end142:                                        ; preds = %if.end141
  %141 = load ptr, ptr %m.addr, align 8
  %142 = load i32, ptr %141, align 4
  %cmp143 = icmp eq i32 %142, 0
  br i1 %cmp143, label %if.then148, label %lor.lhs.false145

lor.lhs.false145:                                 ; preds = %if.end142
  %143 = load ptr, ptr %n.addr, align 8
  %144 = load i32, ptr %143, align 4
  %cmp146 = icmp eq i32 %144, 0
  br i1 %cmp146, label %if.then148, label %if.end150

if.then148:                                       ; preds = %lor.lhs.false145, %if.end142
  %145 = load ptr, ptr %work.addr, align 8
  %arrayidx149 = getelementptr inbounds float, ptr %145, i64 1
  store float 1.000000e+00, ptr %arrayidx149, align 4
  store i32 212, ptr %retval, align 4
  br label %return

if.end150:                                        ; preds = %lor.lhs.false145
  store i32 512, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end150, %if.then148, %if.then138, %if.then133
  %146 = load i32, ptr %retval, align 4
  ret i32 %146
}

declare i32 @lsame_(ptr noundef, ptr noundef) #1

declare i32 @sorgqr_check(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @sorglq_check(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @xerbla_(ptr noundef, ptr noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}

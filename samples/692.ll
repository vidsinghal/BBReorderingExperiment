; ModuleID = 'samples/692.bc'
source_filename = "/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/map/lapack2flamec/f2c/c/chpgvx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.complex = type { float, float }

@.str = private unnamed_addr constant [2 x i8] c"V\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"CHPGVX\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"Non-unit\00", align 1
@c__1 = internal global i32 1, align 4

; Function Attrs: noinline nounwind optnone uwtable
define i32 @chpgvx_(ptr noundef %itype, ptr noundef %jobz, ptr noundef %range, ptr noundef %uplo, ptr noundef %n, ptr noundef %ap, ptr noundef %bp, ptr noundef %vl, ptr noundef %vu, ptr noundef %il, ptr noundef %iu, ptr noundef %abstol, ptr noundef %m, ptr noundef %w, ptr noundef %z__, ptr noundef %ldz, ptr noundef %work, ptr noundef %rwork, ptr noundef %iwork, ptr noundef %ifail, ptr noundef %info) #0 {
entry:
  %retval = alloca i32, align 4
  %itype.addr = alloca ptr, align 8
  %jobz.addr = alloca ptr, align 8
  %range.addr = alloca ptr, align 8
  %uplo.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %ap.addr = alloca ptr, align 8
  %bp.addr = alloca ptr, align 8
  %vl.addr = alloca ptr, align 8
  %vu.addr = alloca ptr, align 8
  %il.addr = alloca ptr, align 8
  %iu.addr = alloca ptr, align 8
  %abstol.addr = alloca ptr, align 8
  %m.addr = alloca ptr, align 8
  %w.addr = alloca ptr, align 8
  %z__.addr = alloca ptr, align 8
  %ldz.addr = alloca ptr, align 8
  %work.addr = alloca ptr, align 8
  %rwork.addr = alloca ptr, align 8
  %iwork.addr = alloca ptr, align 8
  %ifail.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %z_dim1 = alloca i32, align 4
  %z_offset = alloca i32, align 4
  %i__1 = alloca i32, align 4
  %j = alloca i32, align 4
  %trans = alloca [1 x i8], align 1
  %upper = alloca i32, align 4
  %wantz = alloca i32, align 4
  %alleig = alloca i32, align 4
  %indeig = alloca i32, align 4
  %valeig = alloca i32, align 4
  store ptr %itype, ptr %itype.addr, align 8
  store ptr %jobz, ptr %jobz.addr, align 8
  store ptr %range, ptr %range.addr, align 8
  store ptr %uplo, ptr %uplo.addr, align 8
  store ptr %n, ptr %n.addr, align 8
  store ptr %ap, ptr %ap.addr, align 8
  store ptr %bp, ptr %bp.addr, align 8
  store ptr %vl, ptr %vl.addr, align 8
  store ptr %vu, ptr %vu.addr, align 8
  store ptr %il, ptr %il.addr, align 8
  store ptr %iu, ptr %iu.addr, align 8
  store ptr %abstol, ptr %abstol.addr, align 8
  store ptr %m, ptr %m.addr, align 8
  store ptr %w, ptr %w.addr, align 8
  store ptr %z__, ptr %z__.addr, align 8
  store ptr %ldz, ptr %ldz.addr, align 8
  store ptr %work, ptr %work.addr, align 8
  store ptr %rwork, ptr %rwork.addr, align 8
  store ptr %iwork, ptr %iwork.addr, align 8
  store ptr %ifail, ptr %ifail.addr, align 8
  store ptr %info, ptr %info.addr, align 8
  %0 = load ptr, ptr %ap.addr, align 8
  %incdec.ptr = getelementptr inbounds %struct.complex, ptr %0, i32 -1
  store ptr %incdec.ptr, ptr %ap.addr, align 8
  %1 = load ptr, ptr %bp.addr, align 8
  %incdec.ptr1 = getelementptr inbounds %struct.complex, ptr %1, i32 -1
  store ptr %incdec.ptr1, ptr %bp.addr, align 8
  %2 = load ptr, ptr %w.addr, align 8
  %incdec.ptr2 = getelementptr inbounds float, ptr %2, i32 -1
  store ptr %incdec.ptr2, ptr %w.addr, align 8
  %3 = load ptr, ptr %ldz.addr, align 8
  %4 = load i32, ptr %3, align 4
  store i32 %4, ptr %z_dim1, align 4
  %5 = load i32, ptr %z_dim1, align 4
  %add = add nsw i32 1, %5
  store i32 %add, ptr %z_offset, align 4
  %6 = load i32, ptr %z_offset, align 4
  %7 = load ptr, ptr %z__.addr, align 8
  %idx.ext = sext i32 %6 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds %struct.complex, ptr %7, i64 %idx.neg
  store ptr %add.ptr, ptr %z__.addr, align 8
  %8 = load ptr, ptr %work.addr, align 8
  %incdec.ptr3 = getelementptr inbounds %struct.complex, ptr %8, i32 -1
  store ptr %incdec.ptr3, ptr %work.addr, align 8
  %9 = load ptr, ptr %rwork.addr, align 8
  %incdec.ptr4 = getelementptr inbounds float, ptr %9, i32 -1
  store ptr %incdec.ptr4, ptr %rwork.addr, align 8
  %10 = load ptr, ptr %iwork.addr, align 8
  %incdec.ptr5 = getelementptr inbounds i32, ptr %10, i32 -1
  store ptr %incdec.ptr5, ptr %iwork.addr, align 8
  %11 = load ptr, ptr %ifail.addr, align 8
  %incdec.ptr6 = getelementptr inbounds i32, ptr %11, i32 -1
  store ptr %incdec.ptr6, ptr %ifail.addr, align 8
  %12 = load ptr, ptr %jobz.addr, align 8
  %call = call i32 @lsame_(ptr noundef %12, ptr noundef @.str)
  store i32 %call, ptr %wantz, align 4
  %13 = load ptr, ptr %uplo.addr, align 8
  %call7 = call i32 @lsame_(ptr noundef %13, ptr noundef @.str.1)
  store i32 %call7, ptr %upper, align 4
  %14 = load ptr, ptr %range.addr, align 8
  %call8 = call i32 @lsame_(ptr noundef %14, ptr noundef @.str.2)
  store i32 %call8, ptr %alleig, align 4
  %15 = load ptr, ptr %range.addr, align 8
  %call9 = call i32 @lsame_(ptr noundef %15, ptr noundef @.str)
  store i32 %call9, ptr %valeig, align 4
  %16 = load ptr, ptr %range.addr, align 8
  %call10 = call i32 @lsame_(ptr noundef %16, ptr noundef @.str.3)
  store i32 %call10, ptr %indeig, align 4
  %17 = load ptr, ptr %info.addr, align 8
  store i32 0, ptr %17, align 4
  %18 = load ptr, ptr %itype.addr, align 8
  %19 = load i32, ptr %18, align 4
  %cmp = icmp slt i32 %19, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %20 = load ptr, ptr %itype.addr, align 8
  %21 = load i32, ptr %20, align 4
  %cmp11 = icmp sgt i32 %21, 3
  br i1 %cmp11, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %22 = load ptr, ptr %info.addr, align 8
  store i32 -1, ptr %22, align 4
  br label %if.end57

if.else:                                          ; preds = %lor.lhs.false
  %23 = load i32, ptr %wantz, align 4
  %tobool = icmp ne i32 %23, 0
  br i1 %tobool, label %if.else16, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %if.else
  %24 = load ptr, ptr %jobz.addr, align 8
  %call13 = call i32 @lsame_(ptr noundef %24, ptr noundef @.str.4)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.else16, label %if.then15

if.then15:                                        ; preds = %lor.lhs.false12
  %25 = load ptr, ptr %info.addr, align 8
  store i32 -2, ptr %25, align 4
  br label %if.end56

if.else16:                                        ; preds = %lor.lhs.false12, %if.else
  %26 = load i32, ptr %alleig, align 4
  %tobool17 = icmp ne i32 %26, 0
  br i1 %tobool17, label %if.else23, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %if.else16
  %27 = load i32, ptr %valeig, align 4
  %tobool19 = icmp ne i32 %27, 0
  br i1 %tobool19, label %if.else23, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %lor.lhs.false18
  %28 = load i32, ptr %indeig, align 4
  %tobool21 = icmp ne i32 %28, 0
  br i1 %tobool21, label %if.else23, label %if.then22

if.then22:                                        ; preds = %lor.lhs.false20
  %29 = load ptr, ptr %info.addr, align 8
  store i32 -3, ptr %29, align 4
  br label %if.end55

if.else23:                                        ; preds = %lor.lhs.false20, %lor.lhs.false18, %if.else16
  %30 = load i32, ptr %upper, align 4
  %tobool24 = icmp ne i32 %30, 0
  br i1 %tobool24, label %if.else29, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %if.else23
  %31 = load ptr, ptr %uplo.addr, align 8
  %call26 = call i32 @lsame_(ptr noundef %31, ptr noundef @.str.5)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.else29, label %if.then28

if.then28:                                        ; preds = %lor.lhs.false25
  %32 = load ptr, ptr %info.addr, align 8
  store i32 -4, ptr %32, align 4
  br label %if.end54

if.else29:                                        ; preds = %lor.lhs.false25, %if.else23
  %33 = load ptr, ptr %n.addr, align 8
  %34 = load i32, ptr %33, align 4
  %cmp30 = icmp slt i32 %34, 0
  br i1 %cmp30, label %if.then31, label %if.else32

if.then31:                                        ; preds = %if.else29
  %35 = load ptr, ptr %info.addr, align 8
  store i32 -5, ptr %35, align 4
  br label %if.end53

if.else32:                                        ; preds = %if.else29
  %36 = load i32, ptr %valeig, align 4
  %tobool33 = icmp ne i32 %36, 0
  br i1 %tobool33, label %if.then34, label %if.else38

if.then34:                                        ; preds = %if.else32
  %37 = load ptr, ptr %n.addr, align 8
  %38 = load i32, ptr %37, align 4
  %cmp35 = icmp sgt i32 %38, 0
  br i1 %cmp35, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then34
  %39 = load ptr, ptr %vu.addr, align 8
  %40 = load float, ptr %39, align 4
  %41 = load ptr, ptr %vl.addr, align 8
  %42 = load float, ptr %41, align 4
  %cmp36 = fcmp ole float %40, %42
  br i1 %cmp36, label %if.then37, label %if.end

if.then37:                                        ; preds = %land.lhs.true
  %43 = load ptr, ptr %info.addr, align 8
  store i32 -9, ptr %43, align 4
  br label %if.end

if.end:                                           ; preds = %if.then37, %land.lhs.true, %if.then34
  br label %if.end52

if.else38:                                        ; preds = %if.else32
  %44 = load i32, ptr %indeig, align 4
  %tobool39 = icmp ne i32 %44, 0
  br i1 %tobool39, label %if.then40, label %if.end51

if.then40:                                        ; preds = %if.else38
  %45 = load ptr, ptr %il.addr, align 8
  %46 = load i32, ptr %45, align 4
  %cmp41 = icmp slt i32 %46, 1
  br i1 %cmp41, label %if.then42, label %if.else43

if.then42:                                        ; preds = %if.then40
  %47 = load ptr, ptr %info.addr, align 8
  store i32 -10, ptr %47, align 4
  br label %if.end50

if.else43:                                        ; preds = %if.then40
  %48 = load ptr, ptr %iu.addr, align 8
  %49 = load i32, ptr %48, align 4
  %50 = load ptr, ptr %n.addr, align 8
  %51 = load i32, ptr %50, align 4
  %52 = load ptr, ptr %il.addr, align 8
  %53 = load i32, ptr %52, align 4
  %cmp44 = icmp sle i32 %51, %53
  br i1 %cmp44, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else43
  %54 = load ptr, ptr %n.addr, align 8
  %55 = load i32, ptr %54, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.else43
  %56 = load ptr, ptr %il.addr, align 8
  %57 = load i32, ptr %56, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %55, %cond.true ], [ %57, %cond.false ]
  %cmp45 = icmp slt i32 %49, %cond
  br i1 %cmp45, label %if.then48, label %lor.lhs.false46

lor.lhs.false46:                                  ; preds = %cond.end
  %58 = load ptr, ptr %iu.addr, align 8
  %59 = load i32, ptr %58, align 4
  %60 = load ptr, ptr %n.addr, align 8
  %61 = load i32, ptr %60, align 4
  %cmp47 = icmp sgt i32 %59, %61
  br i1 %cmp47, label %if.then48, label %if.end49

if.then48:                                        ; preds = %lor.lhs.false46, %cond.end
  %62 = load ptr, ptr %info.addr, align 8
  store i32 -11, ptr %62, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %lor.lhs.false46
  br label %if.end50

if.end50:                                         ; preds = %if.end49, %if.then42
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %if.else38
  br label %if.end52

if.end52:                                         ; preds = %if.end51, %if.end
  br label %if.end53

if.end53:                                         ; preds = %if.end52, %if.then31
  br label %if.end54

if.end54:                                         ; preds = %if.end53, %if.then28
  br label %if.end55

if.end55:                                         ; preds = %if.end54, %if.then22
  br label %if.end56

if.end56:                                         ; preds = %if.end55, %if.then15
  br label %if.end57

if.end57:                                         ; preds = %if.end56, %if.then
  %63 = load ptr, ptr %info.addr, align 8
  %64 = load i32, ptr %63, align 4
  %cmp58 = icmp eq i32 %64, 0
  br i1 %cmp58, label %if.then59, label %if.end67

if.then59:                                        ; preds = %if.end57
  %65 = load ptr, ptr %ldz.addr, align 8
  %66 = load i32, ptr %65, align 4
  %cmp60 = icmp slt i32 %66, 1
  br i1 %cmp60, label %if.then65, label %lor.lhs.false61

lor.lhs.false61:                                  ; preds = %if.then59
  %67 = load i32, ptr %wantz, align 4
  %tobool62 = icmp ne i32 %67, 0
  br i1 %tobool62, label %land.lhs.true63, label %if.end66

land.lhs.true63:                                  ; preds = %lor.lhs.false61
  %68 = load ptr, ptr %ldz.addr, align 8
  %69 = load i32, ptr %68, align 4
  %70 = load ptr, ptr %n.addr, align 8
  %71 = load i32, ptr %70, align 4
  %cmp64 = icmp slt i32 %69, %71
  br i1 %cmp64, label %if.then65, label %if.end66

if.then65:                                        ; preds = %land.lhs.true63, %if.then59
  %72 = load ptr, ptr %info.addr, align 8
  store i32 -16, ptr %72, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.then65, %land.lhs.true63, %lor.lhs.false61
  br label %if.end67

if.end67:                                         ; preds = %if.end66, %if.end57
  %73 = load ptr, ptr %info.addr, align 8
  %74 = load i32, ptr %73, align 4
  %cmp68 = icmp ne i32 %74, 0
  br i1 %cmp68, label %if.then69, label %if.end71

if.then69:                                        ; preds = %if.end67
  %75 = load ptr, ptr %info.addr, align 8
  %76 = load i32, ptr %75, align 4
  %sub = sub nsw i32 0, %76
  store i32 %sub, ptr %i__1, align 4
  %call70 = call i32 @xerbla_(ptr noundef @.str.6, ptr noundef %i__1)
  store i32 0, ptr %retval, align 4
  br label %return

if.end71:                                         ; preds = %if.end67
  %77 = load ptr, ptr %n.addr, align 8
  %78 = load i32, ptr %77, align 4
  %cmp72 = icmp eq i32 %78, 0
  br i1 %cmp72, label %if.then73, label %if.end74

if.then73:                                        ; preds = %if.end71
  store i32 0, ptr %retval, align 4
  br label %return

if.end74:                                         ; preds = %if.end71
  %79 = load ptr, ptr %uplo.addr, align 8
  %80 = load ptr, ptr %n.addr, align 8
  %81 = load ptr, ptr %bp.addr, align 8
  %arrayidx = getelementptr inbounds %struct.complex, ptr %81, i64 1
  %82 = load ptr, ptr %info.addr, align 8
  %call75 = call i32 @cpptrf_(ptr noundef %79, ptr noundef %80, ptr noundef %arrayidx, ptr noundef %82)
  %83 = load ptr, ptr %info.addr, align 8
  %84 = load i32, ptr %83, align 4
  %cmp76 = icmp ne i32 %84, 0
  br i1 %cmp76, label %if.then77, label %if.end79

if.then77:                                        ; preds = %if.end74
  %85 = load ptr, ptr %n.addr, align 8
  %86 = load i32, ptr %85, align 4
  %87 = load ptr, ptr %info.addr, align 8
  %88 = load i32, ptr %87, align 4
  %add78 = add nsw i32 %86, %88
  %89 = load ptr, ptr %info.addr, align 8
  store i32 %add78, ptr %89, align 4
  store i32 0, ptr %retval, align 4
  br label %return

if.end79:                                         ; preds = %if.end74
  %90 = load ptr, ptr %itype.addr, align 8
  %91 = load ptr, ptr %uplo.addr, align 8
  %92 = load ptr, ptr %n.addr, align 8
  %93 = load ptr, ptr %ap.addr, align 8
  %arrayidx80 = getelementptr inbounds %struct.complex, ptr %93, i64 1
  %94 = load ptr, ptr %bp.addr, align 8
  %arrayidx81 = getelementptr inbounds %struct.complex, ptr %94, i64 1
  %95 = load ptr, ptr %info.addr, align 8
  %call82 = call i32 @chpgst_(ptr noundef %90, ptr noundef %91, ptr noundef %92, ptr noundef %arrayidx80, ptr noundef %arrayidx81, ptr noundef %95)
  %96 = load ptr, ptr %jobz.addr, align 8
  %97 = load ptr, ptr %range.addr, align 8
  %98 = load ptr, ptr %uplo.addr, align 8
  %99 = load ptr, ptr %n.addr, align 8
  %100 = load ptr, ptr %ap.addr, align 8
  %arrayidx83 = getelementptr inbounds %struct.complex, ptr %100, i64 1
  %101 = load ptr, ptr %vl.addr, align 8
  %102 = load ptr, ptr %vu.addr, align 8
  %103 = load ptr, ptr %il.addr, align 8
  %104 = load ptr, ptr %iu.addr, align 8
  %105 = load ptr, ptr %abstol.addr, align 8
  %106 = load ptr, ptr %m.addr, align 8
  %107 = load ptr, ptr %w.addr, align 8
  %arrayidx84 = getelementptr inbounds float, ptr %107, i64 1
  %108 = load ptr, ptr %z__.addr, align 8
  %109 = load i32, ptr %z_offset, align 4
  %idxprom = sext i32 %109 to i64
  %arrayidx85 = getelementptr inbounds %struct.complex, ptr %108, i64 %idxprom
  %110 = load ptr, ptr %ldz.addr, align 8
  %111 = load ptr, ptr %work.addr, align 8
  %arrayidx86 = getelementptr inbounds %struct.complex, ptr %111, i64 1
  %112 = load ptr, ptr %rwork.addr, align 8
  %arrayidx87 = getelementptr inbounds float, ptr %112, i64 1
  %113 = load ptr, ptr %iwork.addr, align 8
  %arrayidx88 = getelementptr inbounds i32, ptr %113, i64 1
  %114 = load ptr, ptr %ifail.addr, align 8
  %arrayidx89 = getelementptr inbounds i32, ptr %114, i64 1
  %115 = load ptr, ptr %info.addr, align 8
  %call90 = call i32 @chpevx_(ptr noundef %96, ptr noundef %97, ptr noundef %98, ptr noundef %99, ptr noundef %arrayidx83, ptr noundef %101, ptr noundef %102, ptr noundef %103, ptr noundef %104, ptr noundef %105, ptr noundef %106, ptr noundef %arrayidx84, ptr noundef %arrayidx85, ptr noundef %110, ptr noundef %arrayidx86, ptr noundef %arrayidx87, ptr noundef %arrayidx88, ptr noundef %arrayidx89, ptr noundef %115)
  %116 = load i32, ptr %wantz, align 4
  %tobool91 = icmp ne i32 %116, 0
  br i1 %tobool91, label %if.then92, label %if.end137

if.then92:                                        ; preds = %if.end79
  %117 = load ptr, ptr %info.addr, align 8
  %118 = load i32, ptr %117, align 4
  %cmp93 = icmp sgt i32 %118, 0
  br i1 %cmp93, label %if.then94, label %if.end96

if.then94:                                        ; preds = %if.then92
  %119 = load ptr, ptr %info.addr, align 8
  %120 = load i32, ptr %119, align 4
  %sub95 = sub nsw i32 %120, 1
  %121 = load ptr, ptr %m.addr, align 8
  store i32 %sub95, ptr %121, align 4
  br label %if.end96

if.end96:                                         ; preds = %if.then94, %if.then92
  %122 = load ptr, ptr %itype.addr, align 8
  %123 = load i32, ptr %122, align 4
  %cmp97 = icmp eq i32 %123, 1
  br i1 %cmp97, label %if.then100, label %lor.lhs.false98

lor.lhs.false98:                                  ; preds = %if.end96
  %124 = load ptr, ptr %itype.addr, align 8
  %125 = load i32, ptr %124, align 4
  %cmp99 = icmp eq i32 %125, 2
  br i1 %cmp99, label %if.then100, label %if.else113

if.then100:                                       ; preds = %lor.lhs.false98, %if.end96
  %126 = load i32, ptr %upper, align 4
  %tobool101 = icmp ne i32 %126, 0
  br i1 %tobool101, label %if.then102, label %if.else103

if.then102:                                       ; preds = %if.then100
  %arraydecay = getelementptr inbounds [1 x i8], ptr %trans, i64 0, i64 0
  store i8 78, ptr %arraydecay, align 1
  br label %if.end105

if.else103:                                       ; preds = %if.then100
  %arraydecay104 = getelementptr inbounds [1 x i8], ptr %trans, i64 0, i64 0
  store i8 67, ptr %arraydecay104, align 1
  br label %if.end105

if.end105:                                        ; preds = %if.else103, %if.then102
  %127 = load ptr, ptr %m.addr, align 8
  %128 = load i32, ptr %127, align 4
  store i32 %128, ptr %i__1, align 4
  store i32 1, ptr %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end105
  %129 = load i32, ptr %j, align 4
  %130 = load i32, ptr %i__1, align 4
  %cmp106 = icmp sle i32 %129, %130
  br i1 %cmp106, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %131 = load ptr, ptr %uplo.addr, align 8
  %arraydecay107 = getelementptr inbounds [1 x i8], ptr %trans, i64 0, i64 0
  %132 = load ptr, ptr %n.addr, align 8
  %133 = load ptr, ptr %bp.addr, align 8
  %arrayidx108 = getelementptr inbounds %struct.complex, ptr %133, i64 1
  %134 = load ptr, ptr %z__.addr, align 8
  %135 = load i32, ptr %j, align 4
  %136 = load i32, ptr %z_dim1, align 4
  %mul = mul nsw i32 %135, %136
  %add109 = add nsw i32 %mul, 1
  %idxprom110 = sext i32 %add109 to i64
  %arrayidx111 = getelementptr inbounds %struct.complex, ptr %134, i64 %idxprom110
  %call112 = call i32 @ctpsv_(ptr noundef %131, ptr noundef %arraydecay107, ptr noundef @.str.7, ptr noundef %132, ptr noundef %arrayidx108, ptr noundef %arrayidx111, ptr noundef @c__1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %137 = load i32, ptr %j, align 4
  %inc = add nsw i32 %137, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  br label %if.end136

if.else113:                                       ; preds = %lor.lhs.false98
  %138 = load ptr, ptr %itype.addr, align 8
  %139 = load i32, ptr %138, align 4
  %cmp114 = icmp eq i32 %139, 3
  br i1 %cmp114, label %if.then115, label %if.end135

if.then115:                                       ; preds = %if.else113
  %140 = load i32, ptr %upper, align 4
  %tobool116 = icmp ne i32 %140, 0
  br i1 %tobool116, label %if.then117, label %if.else119

if.then117:                                       ; preds = %if.then115
  %arraydecay118 = getelementptr inbounds [1 x i8], ptr %trans, i64 0, i64 0
  store i8 67, ptr %arraydecay118, align 1
  br label %if.end121

if.else119:                                       ; preds = %if.then115
  %arraydecay120 = getelementptr inbounds [1 x i8], ptr %trans, i64 0, i64 0
  store i8 78, ptr %arraydecay120, align 1
  br label %if.end121

if.end121:                                        ; preds = %if.else119, %if.then117
  %141 = load ptr, ptr %m.addr, align 8
  %142 = load i32, ptr %141, align 4
  store i32 %142, ptr %i__1, align 4
  store i32 1, ptr %j, align 4
  br label %for.cond122

for.cond122:                                      ; preds = %for.inc132, %if.end121
  %143 = load i32, ptr %j, align 4
  %144 = load i32, ptr %i__1, align 4
  %cmp123 = icmp sle i32 %143, %144
  br i1 %cmp123, label %for.body124, label %for.end134

for.body124:                                      ; preds = %for.cond122
  %145 = load ptr, ptr %uplo.addr, align 8
  %arraydecay125 = getelementptr inbounds [1 x i8], ptr %trans, i64 0, i64 0
  %146 = load ptr, ptr %n.addr, align 8
  %147 = load ptr, ptr %bp.addr, align 8
  %arrayidx126 = getelementptr inbounds %struct.complex, ptr %147, i64 1
  %148 = load ptr, ptr %z__.addr, align 8
  %149 = load i32, ptr %j, align 4
  %150 = load i32, ptr %z_dim1, align 4
  %mul127 = mul nsw i32 %149, %150
  %add128 = add nsw i32 %mul127, 1
  %idxprom129 = sext i32 %add128 to i64
  %arrayidx130 = getelementptr inbounds %struct.complex, ptr %148, i64 %idxprom129
  %call131 = call i32 @ctpmv_(ptr noundef %145, ptr noundef %arraydecay125, ptr noundef @.str.7, ptr noundef %146, ptr noundef %arrayidx126, ptr noundef %arrayidx130, ptr noundef @c__1)
  br label %for.inc132

for.inc132:                                       ; preds = %for.body124
  %151 = load i32, ptr %j, align 4
  %inc133 = add nsw i32 %151, 1
  store i32 %inc133, ptr %j, align 4
  br label %for.cond122, !llvm.loop !7

for.end134:                                       ; preds = %for.cond122
  br label %if.end135

if.end135:                                        ; preds = %for.end134, %if.else113
  br label %if.end136

if.end136:                                        ; preds = %if.end135, %for.end
  br label %if.end137

if.end137:                                        ; preds = %if.end136, %if.end79
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end137, %if.then77, %if.then73, %if.then69
  %152 = load i32, ptr %retval, align 4
  ret i32 %152
}

declare i32 @lsame_(ptr noundef, ptr noundef) #1

declare i32 @xerbla_(ptr noundef, ptr noundef) #1

declare i32 @cpptrf_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @chpgst_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @chpevx_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @ctpsv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @ctpmv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

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

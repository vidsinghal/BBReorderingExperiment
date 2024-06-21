; ModuleID = 'samples/77.bc'
source_filename = "/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/map/lapack2flamec/f2c/c/dorbdb3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"DORBDB3\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@c__1 = internal global i32 1, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"L\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @dorbdb3_(ptr noundef %m, ptr noundef %p, ptr noundef %q, ptr noundef %x11, ptr noundef %ldx11, ptr noundef %x21, ptr noundef %ldx21, ptr noundef %theta, ptr noundef %phi, ptr noundef %taup1, ptr noundef %taup2, ptr noundef %tauq1, ptr noundef %work, ptr noundef %lwork, ptr noundef %info) #0 {
entry:
  %retval = alloca i32, align 4
  %m.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %q.addr = alloca ptr, align 8
  %x11.addr = alloca ptr, align 8
  %ldx11.addr = alloca ptr, align 8
  %x21.addr = alloca ptr, align 8
  %ldx21.addr = alloca ptr, align 8
  %theta.addr = alloca ptr, align 8
  %phi.addr = alloca ptr, align 8
  %taup1.addr = alloca ptr, align 8
  %taup2.addr = alloca ptr, align 8
  %tauq1.addr = alloca ptr, align 8
  %work.addr = alloca ptr, align 8
  %lwork.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %x11_dim1 = alloca i32, align 4
  %x11_offset = alloca i32, align 4
  %x21_dim1 = alloca i32, align 4
  %x21_offset = alloca i32, align 4
  %i__1 = alloca i32, align 4
  %i__2 = alloca i32, align 4
  %i__3 = alloca i32, align 4
  %i__4 = alloca i32, align 4
  %d__1 = alloca double, align 8
  %d__2 = alloca double, align 8
  %lworkmin = alloca i32, align 4
  %lworkopt = alloca i32, align 4
  %c__ = alloca double, align 8
  %i__ = alloca i32, align 4
  %s = alloca double, align 8
  %childinfo = alloca i32, align 4
  %ilarf = alloca i32, align 4
  %llarf = alloca i32, align 4
  %lquery = alloca i32, align 4
  %iorbdb5 = alloca i32, align 4
  %lorbdb5 = alloca i32, align 4
  store ptr %m, ptr %m.addr, align 8
  store ptr %p, ptr %p.addr, align 8
  store ptr %q, ptr %q.addr, align 8
  store ptr %x11, ptr %x11.addr, align 8
  store ptr %ldx11, ptr %ldx11.addr, align 8
  store ptr %x21, ptr %x21.addr, align 8
  store ptr %ldx21, ptr %ldx21.addr, align 8
  store ptr %theta, ptr %theta.addr, align 8
  store ptr %phi, ptr %phi.addr, align 8
  store ptr %taup1, ptr %taup1.addr, align 8
  store ptr %taup2, ptr %taup2.addr, align 8
  store ptr %tauq1, ptr %tauq1.addr, align 8
  store ptr %work, ptr %work.addr, align 8
  store ptr %lwork, ptr %lwork.addr, align 8
  store ptr %info, ptr %info.addr, align 8
  %0 = load ptr, ptr %ldx11.addr, align 8
  %1 = load i32, ptr %0, align 4
  store i32 %1, ptr %x11_dim1, align 4
  %2 = load i32, ptr %x11_dim1, align 4
  %add = add nsw i32 1, %2
  store i32 %add, ptr %x11_offset, align 4
  %3 = load i32, ptr %x11_offset, align 4
  %4 = load ptr, ptr %x11.addr, align 8
  %idx.ext = sext i32 %3 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds double, ptr %4, i64 %idx.neg
  store ptr %add.ptr, ptr %x11.addr, align 8
  %5 = load ptr, ptr %ldx21.addr, align 8
  %6 = load i32, ptr %5, align 4
  store i32 %6, ptr %x21_dim1, align 4
  %7 = load i32, ptr %x21_dim1, align 4
  %add1 = add nsw i32 1, %7
  store i32 %add1, ptr %x21_offset, align 4
  %8 = load i32, ptr %x21_offset, align 4
  %9 = load ptr, ptr %x21.addr, align 8
  %idx.ext2 = sext i32 %8 to i64
  %idx.neg3 = sub i64 0, %idx.ext2
  %add.ptr4 = getelementptr inbounds double, ptr %9, i64 %idx.neg3
  store ptr %add.ptr4, ptr %x21.addr, align 8
  %10 = load ptr, ptr %theta.addr, align 8
  %incdec.ptr = getelementptr inbounds double, ptr %10, i32 -1
  store ptr %incdec.ptr, ptr %theta.addr, align 8
  %11 = load ptr, ptr %phi.addr, align 8
  %incdec.ptr5 = getelementptr inbounds double, ptr %11, i32 -1
  store ptr %incdec.ptr5, ptr %phi.addr, align 8
  %12 = load ptr, ptr %taup1.addr, align 8
  %incdec.ptr6 = getelementptr inbounds double, ptr %12, i32 -1
  store ptr %incdec.ptr6, ptr %taup1.addr, align 8
  %13 = load ptr, ptr %taup2.addr, align 8
  %incdec.ptr7 = getelementptr inbounds double, ptr %13, i32 -1
  store ptr %incdec.ptr7, ptr %taup2.addr, align 8
  %14 = load ptr, ptr %tauq1.addr, align 8
  %incdec.ptr8 = getelementptr inbounds double, ptr %14, i32 -1
  store ptr %incdec.ptr8, ptr %tauq1.addr, align 8
  %15 = load ptr, ptr %work.addr, align 8
  %incdec.ptr9 = getelementptr inbounds double, ptr %15, i32 -1
  store ptr %incdec.ptr9, ptr %work.addr, align 8
  %16 = load ptr, ptr %info.addr, align 8
  store i32 0, ptr %16, align 4
  %17 = load ptr, ptr %lwork.addr, align 8
  %18 = load i32, ptr %17, align 4
  %cmp = icmp eq i32 %18, -1
  %conv = zext i1 %cmp to i32
  store i32 %conv, ptr %lquery, align 4
  %19 = load ptr, ptr %m.addr, align 8
  %20 = load i32, ptr %19, align 4
  %cmp10 = icmp slt i32 %20, 0
  br i1 %cmp10, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %21 = load ptr, ptr %info.addr, align 8
  store i32 -1, ptr %21, align 4
  br label %if.end46

if.else:                                          ; preds = %entry
  %22 = load ptr, ptr %p.addr, align 8
  %23 = load i32, ptr %22, align 4
  %shl = shl i32 %23, 1
  %24 = load ptr, ptr %m.addr, align 8
  %25 = load i32, ptr %24, align 4
  %cmp12 = icmp slt i32 %shl, %25
  br i1 %cmp12, label %if.then16, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %26 = load ptr, ptr %p.addr, align 8
  %27 = load i32, ptr %26, align 4
  %28 = load ptr, ptr %m.addr, align 8
  %29 = load i32, ptr %28, align 4
  %cmp14 = icmp sgt i32 %27, %29
  br i1 %cmp14, label %if.then16, label %if.else17

if.then16:                                        ; preds = %lor.lhs.false, %if.else
  %30 = load ptr, ptr %info.addr, align 8
  store i32 -2, ptr %30, align 4
  br label %if.end45

if.else17:                                        ; preds = %lor.lhs.false
  %31 = load ptr, ptr %q.addr, align 8
  %32 = load i32, ptr %31, align 4
  %33 = load ptr, ptr %m.addr, align 8
  %34 = load i32, ptr %33, align 4
  %35 = load ptr, ptr %p.addr, align 8
  %36 = load i32, ptr %35, align 4
  %sub = sub nsw i32 %34, %36
  %cmp18 = icmp slt i32 %32, %sub
  br i1 %cmp18, label %if.then25, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %if.else17
  %37 = load ptr, ptr %m.addr, align 8
  %38 = load i32, ptr %37, align 4
  %39 = load ptr, ptr %q.addr, align 8
  %40 = load i32, ptr %39, align 4
  %sub21 = sub nsw i32 %38, %40
  %41 = load ptr, ptr %m.addr, align 8
  %42 = load i32, ptr %41, align 4
  %43 = load ptr, ptr %p.addr, align 8
  %44 = load i32, ptr %43, align 4
  %sub22 = sub nsw i32 %42, %44
  %cmp23 = icmp slt i32 %sub21, %sub22
  br i1 %cmp23, label %if.then25, label %if.else26

if.then25:                                        ; preds = %lor.lhs.false20, %if.else17
  %45 = load ptr, ptr %info.addr, align 8
  store i32 -3, ptr %45, align 4
  br label %if.end44

if.else26:                                        ; preds = %lor.lhs.false20
  %46 = load ptr, ptr %ldx11.addr, align 8
  %47 = load i32, ptr %46, align 4
  %48 = load ptr, ptr %p.addr, align 8
  %49 = load i32, ptr %48, align 4
  %cmp27 = icmp sge i32 1, %49
  br i1 %cmp27, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else26
  br label %cond.end

cond.false:                                       ; preds = %if.else26
  %50 = load ptr, ptr %p.addr, align 8
  %51 = load i32, ptr %50, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %51, %cond.false ]
  %cmp29 = icmp slt i32 %47, %cond
  br i1 %cmp29, label %if.then31, label %if.else32

if.then31:                                        ; preds = %cond.end
  %52 = load ptr, ptr %info.addr, align 8
  store i32 -5, ptr %52, align 4
  br label %if.end43

if.else32:                                        ; preds = %cond.end
  store i32 1, ptr %i__1, align 4
  %53 = load ptr, ptr %m.addr, align 8
  %54 = load i32, ptr %53, align 4
  %55 = load ptr, ptr %p.addr, align 8
  %56 = load i32, ptr %55, align 4
  %sub33 = sub nsw i32 %54, %56
  store i32 %sub33, ptr %i__2, align 4
  %57 = load ptr, ptr %ldx21.addr, align 8
  %58 = load i32, ptr %57, align 4
  %59 = load i32, ptr %i__1, align 4
  %60 = load i32, ptr %i__2, align 4
  %cmp34 = icmp sge i32 %59, %60
  br i1 %cmp34, label %cond.true36, label %cond.false37

cond.true36:                                      ; preds = %if.else32
  %61 = load i32, ptr %i__1, align 4
  br label %cond.end38

cond.false37:                                     ; preds = %if.else32
  %62 = load i32, ptr %i__2, align 4
  br label %cond.end38

cond.end38:                                       ; preds = %cond.false37, %cond.true36
  %cond39 = phi i32 [ %61, %cond.true36 ], [ %62, %cond.false37 ]
  %cmp40 = icmp slt i32 %58, %cond39
  br i1 %cmp40, label %if.then42, label %if.end

if.then42:                                        ; preds = %cond.end38
  %63 = load ptr, ptr %info.addr, align 8
  store i32 -7, ptr %63, align 4
  br label %if.end

if.end:                                           ; preds = %if.then42, %cond.end38
  br label %if.end43

if.end43:                                         ; preds = %if.end, %if.then31
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %if.then25
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %if.then16
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %if.then
  %64 = load ptr, ptr %info.addr, align 8
  %65 = load i32, ptr %64, align 4
  %cmp47 = icmp eq i32 %65, 0
  br i1 %cmp47, label %if.then49, label %if.end81

if.then49:                                        ; preds = %if.end46
  store i32 2, ptr %ilarf, align 4
  %66 = load ptr, ptr %p.addr, align 8
  %67 = load i32, ptr %66, align 4
  store i32 %67, ptr %i__1, align 4
  %68 = load ptr, ptr %m.addr, align 8
  %69 = load i32, ptr %68, align 4
  %70 = load ptr, ptr %p.addr, align 8
  %71 = load i32, ptr %70, align 4
  %sub50 = sub nsw i32 %69, %71
  %sub51 = sub nsw i32 %sub50, 1
  store i32 %sub51, ptr %i__2, align 4
  %72 = load i32, ptr %i__1, align 4
  %73 = load i32, ptr %i__2, align 4
  %cmp52 = icmp sge i32 %72, %73
  br i1 %cmp52, label %cond.true54, label %cond.false55

cond.true54:                                      ; preds = %if.then49
  %74 = load i32, ptr %i__1, align 4
  br label %cond.end56

cond.false55:                                     ; preds = %if.then49
  %75 = load i32, ptr %i__2, align 4
  br label %cond.end56

cond.end56:                                       ; preds = %cond.false55, %cond.true54
  %cond57 = phi i32 [ %74, %cond.true54 ], [ %75, %cond.false55 ]
  store i32 %cond57, ptr %i__1, align 4
  %76 = load ptr, ptr %q.addr, align 8
  %77 = load i32, ptr %76, align 4
  %sub58 = sub nsw i32 %77, 1
  store i32 %sub58, ptr %i__2, align 4
  %78 = load i32, ptr %i__1, align 4
  %79 = load i32, ptr %i__2, align 4
  %cmp59 = icmp sge i32 %78, %79
  br i1 %cmp59, label %cond.true61, label %cond.false62

cond.true61:                                      ; preds = %cond.end56
  %80 = load i32, ptr %i__1, align 4
  br label %cond.end63

cond.false62:                                     ; preds = %cond.end56
  %81 = load i32, ptr %i__2, align 4
  br label %cond.end63

cond.end63:                                       ; preds = %cond.false62, %cond.true61
  %cond64 = phi i32 [ %80, %cond.true61 ], [ %81, %cond.false62 ]
  store i32 %cond64, ptr %llarf, align 4
  store i32 2, ptr %iorbdb5, align 4
  %82 = load ptr, ptr %q.addr, align 8
  %83 = load i32, ptr %82, align 4
  %sub65 = sub nsw i32 %83, 1
  store i32 %sub65, ptr %lorbdb5, align 4
  %84 = load i32, ptr %ilarf, align 4
  %85 = load i32, ptr %llarf, align 4
  %add66 = add nsw i32 %84, %85
  %sub67 = sub nsw i32 %add66, 1
  store i32 %sub67, ptr %i__1, align 4
  %86 = load i32, ptr %iorbdb5, align 4
  %87 = load i32, ptr %lorbdb5, align 4
  %add68 = add nsw i32 %86, %87
  %sub69 = sub nsw i32 %add68, 1
  store i32 %sub69, ptr %i__2, align 4
  %88 = load i32, ptr %i__1, align 4
  %89 = load i32, ptr %i__2, align 4
  %cmp70 = icmp sge i32 %88, %89
  br i1 %cmp70, label %cond.true72, label %cond.false73

cond.true72:                                      ; preds = %cond.end63
  %90 = load i32, ptr %i__1, align 4
  br label %cond.end74

cond.false73:                                     ; preds = %cond.end63
  %91 = load i32, ptr %i__2, align 4
  br label %cond.end74

cond.end74:                                       ; preds = %cond.false73, %cond.true72
  %cond75 = phi i32 [ %90, %cond.true72 ], [ %91, %cond.false73 ]
  store i32 %cond75, ptr %lworkopt, align 4
  %92 = load i32, ptr %lworkopt, align 4
  store i32 %92, ptr %lworkmin, align 4
  %93 = load i32, ptr %lworkopt, align 4
  %conv76 = sitofp i32 %93 to double
  %94 = load ptr, ptr %work.addr, align 8
  %arrayidx = getelementptr inbounds double, ptr %94, i64 1
  store double %conv76, ptr %arrayidx, align 8
  %95 = load ptr, ptr %lwork.addr, align 8
  %96 = load i32, ptr %95, align 4
  %97 = load i32, ptr %lworkmin, align 4
  %cmp77 = icmp slt i32 %96, %97
  br i1 %cmp77, label %land.lhs.true, label %if.end80

land.lhs.true:                                    ; preds = %cond.end74
  %98 = load i32, ptr %lquery, align 4
  %tobool = icmp ne i32 %98, 0
  br i1 %tobool, label %if.end80, label %if.then79

if.then79:                                        ; preds = %land.lhs.true
  %99 = load ptr, ptr %info.addr, align 8
  store i32 -14, ptr %99, align 4
  br label %if.end80

if.end80:                                         ; preds = %if.then79, %land.lhs.true, %cond.end74
  br label %if.end81

if.end81:                                         ; preds = %if.end80, %if.end46
  %100 = load ptr, ptr %info.addr, align 8
  %101 = load i32, ptr %100, align 4
  %cmp82 = icmp ne i32 %101, 0
  br i1 %cmp82, label %if.then84, label %if.else86

if.then84:                                        ; preds = %if.end81
  %102 = load ptr, ptr %info.addr, align 8
  %103 = load i32, ptr %102, align 4
  %sub85 = sub nsw i32 0, %103
  store i32 %sub85, ptr %i__1, align 4
  %call = call i32 @xerbla_(ptr noundef @.str, ptr noundef %i__1)
  store i32 0, ptr %retval, align 4
  br label %return

if.else86:                                        ; preds = %if.end81
  %104 = load i32, ptr %lquery, align 4
  %tobool87 = icmp ne i32 %104, 0
  br i1 %tobool87, label %if.then88, label %if.end89

if.then88:                                        ; preds = %if.else86
  store i32 0, ptr %retval, align 4
  br label %return

if.end89:                                         ; preds = %if.else86
  br label %if.end90

if.end90:                                         ; preds = %if.end89
  %105 = load ptr, ptr %m.addr, align 8
  %106 = load i32, ptr %105, align 4
  %107 = load ptr, ptr %p.addr, align 8
  %108 = load i32, ptr %107, align 4
  %sub91 = sub nsw i32 %106, %108
  store i32 %sub91, ptr %i__1, align 4
  store i32 1, ptr %i__, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end90
  %109 = load i32, ptr %i__, align 4
  %110 = load i32, ptr %i__1, align 4
  %cmp92 = icmp sle i32 %109, %110
  br i1 %cmp92, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %111 = load i32, ptr %i__, align 4
  %cmp94 = icmp sgt i32 %111, 1
  br i1 %cmp94, label %if.then96, label %if.end107

if.then96:                                        ; preds = %for.body
  %112 = load ptr, ptr %q.addr, align 8
  %113 = load i32, ptr %112, align 4
  %114 = load i32, ptr %i__, align 4
  %sub97 = sub nsw i32 %113, %114
  %add98 = add nsw i32 %sub97, 1
  store i32 %add98, ptr %i__2, align 4
  %115 = load ptr, ptr %x11.addr, align 8
  %116 = load i32, ptr %i__, align 4
  %sub99 = sub nsw i32 %116, 1
  %117 = load i32, ptr %i__, align 4
  %118 = load i32, ptr %x11_dim1, align 4
  %mul = mul nsw i32 %117, %118
  %add100 = add nsw i32 %sub99, %mul
  %idxprom = sext i32 %add100 to i64
  %arrayidx101 = getelementptr inbounds double, ptr %115, i64 %idxprom
  %119 = load ptr, ptr %ldx11.addr, align 8
  %120 = load ptr, ptr %x21.addr, align 8
  %121 = load i32, ptr %i__, align 4
  %122 = load i32, ptr %i__, align 4
  %123 = load i32, ptr %x21_dim1, align 4
  %mul102 = mul nsw i32 %122, %123
  %add103 = add nsw i32 %121, %mul102
  %idxprom104 = sext i32 %add103 to i64
  %arrayidx105 = getelementptr inbounds double, ptr %120, i64 %idxprom104
  %124 = load ptr, ptr %ldx11.addr, align 8
  %call106 = call i32 @drot_(ptr noundef %i__2, ptr noundef %arrayidx101, ptr noundef %119, ptr noundef %arrayidx105, ptr noundef %124, ptr noundef %c__, ptr noundef %s)
  br label %if.end107

if.end107:                                        ; preds = %if.then96, %for.body
  %125 = load ptr, ptr %q.addr, align 8
  %126 = load i32, ptr %125, align 4
  %127 = load i32, ptr %i__, align 4
  %sub108 = sub nsw i32 %126, %127
  %add109 = add nsw i32 %sub108, 1
  store i32 %add109, ptr %i__2, align 4
  %128 = load ptr, ptr %x21.addr, align 8
  %129 = load i32, ptr %i__, align 4
  %130 = load i32, ptr %i__, align 4
  %131 = load i32, ptr %x21_dim1, align 4
  %mul110 = mul nsw i32 %130, %131
  %add111 = add nsw i32 %129, %mul110
  %idxprom112 = sext i32 %add111 to i64
  %arrayidx113 = getelementptr inbounds double, ptr %128, i64 %idxprom112
  %132 = load ptr, ptr %x21.addr, align 8
  %133 = load i32, ptr %i__, align 4
  %134 = load i32, ptr %i__, align 4
  %add114 = add nsw i32 %134, 1
  %135 = load i32, ptr %x21_dim1, align 4
  %mul115 = mul nsw i32 %add114, %135
  %add116 = add nsw i32 %133, %mul115
  %idxprom117 = sext i32 %add116 to i64
  %arrayidx118 = getelementptr inbounds double, ptr %132, i64 %idxprom117
  %136 = load ptr, ptr %ldx21.addr, align 8
  %137 = load ptr, ptr %tauq1.addr, align 8
  %138 = load i32, ptr %i__, align 4
  %idxprom119 = sext i32 %138 to i64
  %arrayidx120 = getelementptr inbounds double, ptr %137, i64 %idxprom119
  %call121 = call i32 @dlarfgp_(ptr noundef %i__2, ptr noundef %arrayidx113, ptr noundef %arrayidx118, ptr noundef %136, ptr noundef %arrayidx120)
  %139 = load ptr, ptr %x21.addr, align 8
  %140 = load i32, ptr %i__, align 4
  %141 = load i32, ptr %i__, align 4
  %142 = load i32, ptr %x21_dim1, align 4
  %mul122 = mul nsw i32 %141, %142
  %add123 = add nsw i32 %140, %mul122
  %idxprom124 = sext i32 %add123 to i64
  %arrayidx125 = getelementptr inbounds double, ptr %139, i64 %idxprom124
  %143 = load double, ptr %arrayidx125, align 8
  store double %143, ptr %s, align 8
  %144 = load ptr, ptr %x21.addr, align 8
  %145 = load i32, ptr %i__, align 4
  %146 = load i32, ptr %i__, align 4
  %147 = load i32, ptr %x21_dim1, align 4
  %mul126 = mul nsw i32 %146, %147
  %add127 = add nsw i32 %145, %mul126
  %idxprom128 = sext i32 %add127 to i64
  %arrayidx129 = getelementptr inbounds double, ptr %144, i64 %idxprom128
  store double 1.000000e+00, ptr %arrayidx129, align 8
  %148 = load ptr, ptr %p.addr, align 8
  %149 = load i32, ptr %148, align 4
  %150 = load i32, ptr %i__, align 4
  %sub130 = sub nsw i32 %149, %150
  %add131 = add nsw i32 %sub130, 1
  store i32 %add131, ptr %i__2, align 4
  %151 = load ptr, ptr %q.addr, align 8
  %152 = load i32, ptr %151, align 4
  %153 = load i32, ptr %i__, align 4
  %sub132 = sub nsw i32 %152, %153
  %add133 = add nsw i32 %sub132, 1
  store i32 %add133, ptr %i__3, align 4
  %154 = load ptr, ptr %x21.addr, align 8
  %155 = load i32, ptr %i__, align 4
  %156 = load i32, ptr %i__, align 4
  %157 = load i32, ptr %x21_dim1, align 4
  %mul134 = mul nsw i32 %156, %157
  %add135 = add nsw i32 %155, %mul134
  %idxprom136 = sext i32 %add135 to i64
  %arrayidx137 = getelementptr inbounds double, ptr %154, i64 %idxprom136
  %158 = load ptr, ptr %ldx21.addr, align 8
  %159 = load ptr, ptr %tauq1.addr, align 8
  %160 = load i32, ptr %i__, align 4
  %idxprom138 = sext i32 %160 to i64
  %arrayidx139 = getelementptr inbounds double, ptr %159, i64 %idxprom138
  %161 = load ptr, ptr %x11.addr, align 8
  %162 = load i32, ptr %i__, align 4
  %163 = load i32, ptr %i__, align 4
  %164 = load i32, ptr %x11_dim1, align 4
  %mul140 = mul nsw i32 %163, %164
  %add141 = add nsw i32 %162, %mul140
  %idxprom142 = sext i32 %add141 to i64
  %arrayidx143 = getelementptr inbounds double, ptr %161, i64 %idxprom142
  %165 = load ptr, ptr %ldx11.addr, align 8
  %166 = load ptr, ptr %work.addr, align 8
  %167 = load i32, ptr %ilarf, align 4
  %idxprom144 = sext i32 %167 to i64
  %arrayidx145 = getelementptr inbounds double, ptr %166, i64 %idxprom144
  %call146 = call i32 @dlarf_(ptr noundef @.str.1, ptr noundef %i__2, ptr noundef %i__3, ptr noundef %arrayidx137, ptr noundef %158, ptr noundef %arrayidx139, ptr noundef %arrayidx143, ptr noundef %165, ptr noundef %arrayidx145)
  %168 = load ptr, ptr %m.addr, align 8
  %169 = load i32, ptr %168, align 4
  %170 = load ptr, ptr %p.addr, align 8
  %171 = load i32, ptr %170, align 4
  %sub147 = sub nsw i32 %169, %171
  %172 = load i32, ptr %i__, align 4
  %sub148 = sub nsw i32 %sub147, %172
  store i32 %sub148, ptr %i__2, align 4
  %173 = load ptr, ptr %q.addr, align 8
  %174 = load i32, ptr %173, align 4
  %175 = load i32, ptr %i__, align 4
  %sub149 = sub nsw i32 %174, %175
  %add150 = add nsw i32 %sub149, 1
  store i32 %add150, ptr %i__3, align 4
  %176 = load ptr, ptr %x21.addr, align 8
  %177 = load i32, ptr %i__, align 4
  %178 = load i32, ptr %i__, align 4
  %179 = load i32, ptr %x21_dim1, align 4
  %mul151 = mul nsw i32 %178, %179
  %add152 = add nsw i32 %177, %mul151
  %idxprom153 = sext i32 %add152 to i64
  %arrayidx154 = getelementptr inbounds double, ptr %176, i64 %idxprom153
  %180 = load ptr, ptr %ldx21.addr, align 8
  %181 = load ptr, ptr %tauq1.addr, align 8
  %182 = load i32, ptr %i__, align 4
  %idxprom155 = sext i32 %182 to i64
  %arrayidx156 = getelementptr inbounds double, ptr %181, i64 %idxprom155
  %183 = load ptr, ptr %x21.addr, align 8
  %184 = load i32, ptr %i__, align 4
  %add157 = add nsw i32 %184, 1
  %185 = load i32, ptr %i__, align 4
  %186 = load i32, ptr %x21_dim1, align 4
  %mul158 = mul nsw i32 %185, %186
  %add159 = add nsw i32 %add157, %mul158
  %idxprom160 = sext i32 %add159 to i64
  %arrayidx161 = getelementptr inbounds double, ptr %183, i64 %idxprom160
  %187 = load ptr, ptr %ldx21.addr, align 8
  %188 = load ptr, ptr %work.addr, align 8
  %189 = load i32, ptr %ilarf, align 4
  %idxprom162 = sext i32 %189 to i64
  %arrayidx163 = getelementptr inbounds double, ptr %188, i64 %idxprom162
  %call164 = call i32 @dlarf_(ptr noundef @.str.1, ptr noundef %i__2, ptr noundef %i__3, ptr noundef %arrayidx154, ptr noundef %180, ptr noundef %arrayidx156, ptr noundef %arrayidx161, ptr noundef %187, ptr noundef %arrayidx163)
  %190 = load ptr, ptr %p.addr, align 8
  %191 = load i32, ptr %190, align 4
  %192 = load i32, ptr %i__, align 4
  %sub165 = sub nsw i32 %191, %192
  %add166 = add nsw i32 %sub165, 1
  store i32 %add166, ptr %i__2, align 4
  %193 = load ptr, ptr %x11.addr, align 8
  %194 = load i32, ptr %i__, align 4
  %195 = load i32, ptr %i__, align 4
  %196 = load i32, ptr %x11_dim1, align 4
  %mul167 = mul nsw i32 %195, %196
  %add168 = add nsw i32 %194, %mul167
  %idxprom169 = sext i32 %add168 to i64
  %arrayidx170 = getelementptr inbounds double, ptr %193, i64 %idxprom169
  %197 = load ptr, ptr %x11.addr, align 8
  %198 = load i32, ptr %i__, align 4
  %199 = load i32, ptr %i__, align 4
  %200 = load i32, ptr %x11_dim1, align 4
  %mul171 = mul nsw i32 %199, %200
  %add172 = add nsw i32 %198, %mul171
  %idxprom173 = sext i32 %add172 to i64
  %arrayidx174 = getelementptr inbounds double, ptr %197, i64 %idxprom173
  %call175 = call double @dnrm2_(ptr noundef %i__2, ptr noundef %arrayidx170, ptr noundef @c__1, ptr noundef %arrayidx174, ptr noundef @c__1)
  store double %call175, ptr %d__1, align 8
  %201 = load ptr, ptr %m.addr, align 8
  %202 = load i32, ptr %201, align 4
  %203 = load ptr, ptr %p.addr, align 8
  %204 = load i32, ptr %203, align 4
  %sub176 = sub nsw i32 %202, %204
  %205 = load i32, ptr %i__, align 4
  %sub177 = sub nsw i32 %sub176, %205
  store i32 %sub177, ptr %i__3, align 4
  %206 = load ptr, ptr %x21.addr, align 8
  %207 = load i32, ptr %i__, align 4
  %add178 = add nsw i32 %207, 1
  %208 = load i32, ptr %i__, align 4
  %209 = load i32, ptr %x21_dim1, align 4
  %mul179 = mul nsw i32 %208, %209
  %add180 = add nsw i32 %add178, %mul179
  %idxprom181 = sext i32 %add180 to i64
  %arrayidx182 = getelementptr inbounds double, ptr %206, i64 %idxprom181
  %210 = load ptr, ptr %x21.addr, align 8
  %211 = load i32, ptr %i__, align 4
  %add183 = add nsw i32 %211, 1
  %212 = load i32, ptr %i__, align 4
  %213 = load i32, ptr %x21_dim1, align 4
  %mul184 = mul nsw i32 %212, %213
  %add185 = add nsw i32 %add183, %mul184
  %idxprom186 = sext i32 %add185 to i64
  %arrayidx187 = getelementptr inbounds double, ptr %210, i64 %idxprom186
  %call188 = call double @dnrm2_(ptr noundef %i__3, ptr noundef %arrayidx182, ptr noundef @c__1, ptr noundef %arrayidx187, ptr noundef @c__1)
  store double %call188, ptr %d__2, align 8
  %214 = load double, ptr %d__1, align 8
  %215 = load double, ptr %d__1, align 8
  %216 = load double, ptr %d__2, align 8
  %217 = load double, ptr %d__2, align 8
  %mul190 = fmul double %216, %217
  %218 = call double @llvm.fmuladd.f64(double %214, double %215, double %mul190)
  %call191 = call double @sqrt(double noundef %218) #4
  store double %call191, ptr %c__, align 8
  %219 = load double, ptr %s, align 8
  %220 = load double, ptr %c__, align 8
  %call192 = call double @atan2(double noundef %219, double noundef %220) #4
  %221 = load ptr, ptr %theta.addr, align 8
  %222 = load i32, ptr %i__, align 4
  %idxprom193 = sext i32 %222 to i64
  %arrayidx194 = getelementptr inbounds double, ptr %221, i64 %idxprom193
  store double %call192, ptr %arrayidx194, align 8
  %223 = load ptr, ptr %p.addr, align 8
  %224 = load i32, ptr %223, align 4
  %225 = load i32, ptr %i__, align 4
  %sub195 = sub nsw i32 %224, %225
  %add196 = add nsw i32 %sub195, 1
  store i32 %add196, ptr %i__2, align 4
  %226 = load ptr, ptr %m.addr, align 8
  %227 = load i32, ptr %226, align 4
  %228 = load ptr, ptr %p.addr, align 8
  %229 = load i32, ptr %228, align 4
  %sub197 = sub nsw i32 %227, %229
  %230 = load i32, ptr %i__, align 4
  %sub198 = sub nsw i32 %sub197, %230
  store i32 %sub198, ptr %i__3, align 4
  %231 = load ptr, ptr %q.addr, align 8
  %232 = load i32, ptr %231, align 4
  %233 = load i32, ptr %i__, align 4
  %sub199 = sub nsw i32 %232, %233
  store i32 %sub199, ptr %i__4, align 4
  %234 = load ptr, ptr %x11.addr, align 8
  %235 = load i32, ptr %i__, align 4
  %236 = load i32, ptr %i__, align 4
  %237 = load i32, ptr %x11_dim1, align 4
  %mul200 = mul nsw i32 %236, %237
  %add201 = add nsw i32 %235, %mul200
  %idxprom202 = sext i32 %add201 to i64
  %arrayidx203 = getelementptr inbounds double, ptr %234, i64 %idxprom202
  %238 = load ptr, ptr %x21.addr, align 8
  %239 = load i32, ptr %i__, align 4
  %add204 = add nsw i32 %239, 1
  %240 = load i32, ptr %i__, align 4
  %241 = load i32, ptr %x21_dim1, align 4
  %mul205 = mul nsw i32 %240, %241
  %add206 = add nsw i32 %add204, %mul205
  %idxprom207 = sext i32 %add206 to i64
  %arrayidx208 = getelementptr inbounds double, ptr %238, i64 %idxprom207
  %242 = load ptr, ptr %x11.addr, align 8
  %243 = load i32, ptr %i__, align 4
  %244 = load i32, ptr %i__, align 4
  %add209 = add nsw i32 %244, 1
  %245 = load i32, ptr %x11_dim1, align 4
  %mul210 = mul nsw i32 %add209, %245
  %add211 = add nsw i32 %243, %mul210
  %idxprom212 = sext i32 %add211 to i64
  %arrayidx213 = getelementptr inbounds double, ptr %242, i64 %idxprom212
  %246 = load ptr, ptr %ldx11.addr, align 8
  %247 = load ptr, ptr %x21.addr, align 8
  %248 = load i32, ptr %i__, align 4
  %add214 = add nsw i32 %248, 1
  %249 = load i32, ptr %i__, align 4
  %add215 = add nsw i32 %249, 1
  %250 = load i32, ptr %x21_dim1, align 4
  %mul216 = mul nsw i32 %add215, %250
  %add217 = add nsw i32 %add214, %mul216
  %idxprom218 = sext i32 %add217 to i64
  %arrayidx219 = getelementptr inbounds double, ptr %247, i64 %idxprom218
  %251 = load ptr, ptr %ldx21.addr, align 8
  %252 = load ptr, ptr %work.addr, align 8
  %253 = load i32, ptr %iorbdb5, align 4
  %idxprom220 = sext i32 %253 to i64
  %arrayidx221 = getelementptr inbounds double, ptr %252, i64 %idxprom220
  %call222 = call i32 @dorbdb5_(ptr noundef %i__2, ptr noundef %i__3, ptr noundef %i__4, ptr noundef %arrayidx203, ptr noundef @c__1, ptr noundef %arrayidx208, ptr noundef @c__1, ptr noundef %arrayidx213, ptr noundef %246, ptr noundef %arrayidx219, ptr noundef %251, ptr noundef %arrayidx221, ptr noundef %lorbdb5, ptr noundef %childinfo)
  %254 = load ptr, ptr %p.addr, align 8
  %255 = load i32, ptr %254, align 4
  %256 = load i32, ptr %i__, align 4
  %sub223 = sub nsw i32 %255, %256
  %add224 = add nsw i32 %sub223, 1
  store i32 %add224, ptr %i__2, align 4
  %257 = load ptr, ptr %x11.addr, align 8
  %258 = load i32, ptr %i__, align 4
  %259 = load i32, ptr %i__, align 4
  %260 = load i32, ptr %x11_dim1, align 4
  %mul225 = mul nsw i32 %259, %260
  %add226 = add nsw i32 %258, %mul225
  %idxprom227 = sext i32 %add226 to i64
  %arrayidx228 = getelementptr inbounds double, ptr %257, i64 %idxprom227
  %261 = load ptr, ptr %x11.addr, align 8
  %262 = load i32, ptr %i__, align 4
  %add229 = add nsw i32 %262, 1
  %263 = load i32, ptr %i__, align 4
  %264 = load i32, ptr %x11_dim1, align 4
  %mul230 = mul nsw i32 %263, %264
  %add231 = add nsw i32 %add229, %mul230
  %idxprom232 = sext i32 %add231 to i64
  %arrayidx233 = getelementptr inbounds double, ptr %261, i64 %idxprom232
  %265 = load ptr, ptr %taup1.addr, align 8
  %266 = load i32, ptr %i__, align 4
  %idxprom234 = sext i32 %266 to i64
  %arrayidx235 = getelementptr inbounds double, ptr %265, i64 %idxprom234
  %call236 = call i32 @dlarfgp_(ptr noundef %i__2, ptr noundef %arrayidx228, ptr noundef %arrayidx233, ptr noundef @c__1, ptr noundef %arrayidx235)
  %267 = load i32, ptr %i__, align 4
  %268 = load ptr, ptr %m.addr, align 8
  %269 = load i32, ptr %268, align 4
  %270 = load ptr, ptr %p.addr, align 8
  %271 = load i32, ptr %270, align 4
  %sub237 = sub nsw i32 %269, %271
  %cmp238 = icmp slt i32 %267, %sub237
  br i1 %cmp238, label %if.then240, label %if.end298

if.then240:                                       ; preds = %if.end107
  %272 = load ptr, ptr %m.addr, align 8
  %273 = load i32, ptr %272, align 4
  %274 = load ptr, ptr %p.addr, align 8
  %275 = load i32, ptr %274, align 4
  %sub241 = sub nsw i32 %273, %275
  %276 = load i32, ptr %i__, align 4
  %sub242 = sub nsw i32 %sub241, %276
  store i32 %sub242, ptr %i__2, align 4
  %277 = load ptr, ptr %x21.addr, align 8
  %278 = load i32, ptr %i__, align 4
  %add243 = add nsw i32 %278, 1
  %279 = load i32, ptr %i__, align 4
  %280 = load i32, ptr %x21_dim1, align 4
  %mul244 = mul nsw i32 %279, %280
  %add245 = add nsw i32 %add243, %mul244
  %idxprom246 = sext i32 %add245 to i64
  %arrayidx247 = getelementptr inbounds double, ptr %277, i64 %idxprom246
  %281 = load ptr, ptr %x21.addr, align 8
  %282 = load i32, ptr %i__, align 4
  %add248 = add nsw i32 %282, 2
  %283 = load i32, ptr %i__, align 4
  %284 = load i32, ptr %x21_dim1, align 4
  %mul249 = mul nsw i32 %283, %284
  %add250 = add nsw i32 %add248, %mul249
  %idxprom251 = sext i32 %add250 to i64
  %arrayidx252 = getelementptr inbounds double, ptr %281, i64 %idxprom251
  %285 = load ptr, ptr %taup2.addr, align 8
  %286 = load i32, ptr %i__, align 4
  %idxprom253 = sext i32 %286 to i64
  %arrayidx254 = getelementptr inbounds double, ptr %285, i64 %idxprom253
  %call255 = call i32 @dlarfgp_(ptr noundef %i__2, ptr noundef %arrayidx247, ptr noundef %arrayidx252, ptr noundef @c__1, ptr noundef %arrayidx254)
  %287 = load ptr, ptr %x21.addr, align 8
  %288 = load i32, ptr %i__, align 4
  %add256 = add nsw i32 %288, 1
  %289 = load i32, ptr %i__, align 4
  %290 = load i32, ptr %x21_dim1, align 4
  %mul257 = mul nsw i32 %289, %290
  %add258 = add nsw i32 %add256, %mul257
  %idxprom259 = sext i32 %add258 to i64
  %arrayidx260 = getelementptr inbounds double, ptr %287, i64 %idxprom259
  %291 = load double, ptr %arrayidx260, align 8
  %292 = load ptr, ptr %x11.addr, align 8
  %293 = load i32, ptr %i__, align 4
  %294 = load i32, ptr %i__, align 4
  %295 = load i32, ptr %x11_dim1, align 4
  %mul261 = mul nsw i32 %294, %295
  %add262 = add nsw i32 %293, %mul261
  %idxprom263 = sext i32 %add262 to i64
  %arrayidx264 = getelementptr inbounds double, ptr %292, i64 %idxprom263
  %296 = load double, ptr %arrayidx264, align 8
  %call265 = call double @atan2(double noundef %291, double noundef %296) #4
  %297 = load ptr, ptr %phi.addr, align 8
  %298 = load i32, ptr %i__, align 4
  %idxprom266 = sext i32 %298 to i64
  %arrayidx267 = getelementptr inbounds double, ptr %297, i64 %idxprom266
  store double %call265, ptr %arrayidx267, align 8
  %299 = load ptr, ptr %phi.addr, align 8
  %300 = load i32, ptr %i__, align 4
  %idxprom268 = sext i32 %300 to i64
  %arrayidx269 = getelementptr inbounds double, ptr %299, i64 %idxprom268
  %301 = load double, ptr %arrayidx269, align 8
  %call270 = call double @cos(double noundef %301) #4
  store double %call270, ptr %c__, align 8
  %302 = load ptr, ptr %phi.addr, align 8
  %303 = load i32, ptr %i__, align 4
  %idxprom271 = sext i32 %303 to i64
  %arrayidx272 = getelementptr inbounds double, ptr %302, i64 %idxprom271
  %304 = load double, ptr %arrayidx272, align 8
  %call273 = call double @sin(double noundef %304) #4
  store double %call273, ptr %s, align 8
  %305 = load ptr, ptr %x21.addr, align 8
  %306 = load i32, ptr %i__, align 4
  %add274 = add nsw i32 %306, 1
  %307 = load i32, ptr %i__, align 4
  %308 = load i32, ptr %x21_dim1, align 4
  %mul275 = mul nsw i32 %307, %308
  %add276 = add nsw i32 %add274, %mul275
  %idxprom277 = sext i32 %add276 to i64
  %arrayidx278 = getelementptr inbounds double, ptr %305, i64 %idxprom277
  store double 1.000000e+00, ptr %arrayidx278, align 8
  %309 = load ptr, ptr %m.addr, align 8
  %310 = load i32, ptr %309, align 4
  %311 = load ptr, ptr %p.addr, align 8
  %312 = load i32, ptr %311, align 4
  %sub279 = sub nsw i32 %310, %312
  %313 = load i32, ptr %i__, align 4
  %sub280 = sub nsw i32 %sub279, %313
  store i32 %sub280, ptr %i__2, align 4
  %314 = load ptr, ptr %q.addr, align 8
  %315 = load i32, ptr %314, align 4
  %316 = load i32, ptr %i__, align 4
  %sub281 = sub nsw i32 %315, %316
  store i32 %sub281, ptr %i__3, align 4
  %317 = load ptr, ptr %x21.addr, align 8
  %318 = load i32, ptr %i__, align 4
  %add282 = add nsw i32 %318, 1
  %319 = load i32, ptr %i__, align 4
  %320 = load i32, ptr %x21_dim1, align 4
  %mul283 = mul nsw i32 %319, %320
  %add284 = add nsw i32 %add282, %mul283
  %idxprom285 = sext i32 %add284 to i64
  %arrayidx286 = getelementptr inbounds double, ptr %317, i64 %idxprom285
  %321 = load ptr, ptr %taup2.addr, align 8
  %322 = load i32, ptr %i__, align 4
  %idxprom287 = sext i32 %322 to i64
  %arrayidx288 = getelementptr inbounds double, ptr %321, i64 %idxprom287
  %323 = load ptr, ptr %x21.addr, align 8
  %324 = load i32, ptr %i__, align 4
  %add289 = add nsw i32 %324, 1
  %325 = load i32, ptr %i__, align 4
  %add290 = add nsw i32 %325, 1
  %326 = load i32, ptr %x21_dim1, align 4
  %mul291 = mul nsw i32 %add290, %326
  %add292 = add nsw i32 %add289, %mul291
  %idxprom293 = sext i32 %add292 to i64
  %arrayidx294 = getelementptr inbounds double, ptr %323, i64 %idxprom293
  %327 = load ptr, ptr %ldx21.addr, align 8
  %328 = load ptr, ptr %work.addr, align 8
  %329 = load i32, ptr %ilarf, align 4
  %idxprom295 = sext i32 %329 to i64
  %arrayidx296 = getelementptr inbounds double, ptr %328, i64 %idxprom295
  %call297 = call i32 @dlarf_(ptr noundef @.str.2, ptr noundef %i__2, ptr noundef %i__3, ptr noundef %arrayidx286, ptr noundef @c__1, ptr noundef %arrayidx288, ptr noundef %arrayidx294, ptr noundef %327, ptr noundef %arrayidx296)
  br label %if.end298

if.end298:                                        ; preds = %if.then240, %if.end107
  %330 = load ptr, ptr %x11.addr, align 8
  %331 = load i32, ptr %i__, align 4
  %332 = load i32, ptr %i__, align 4
  %333 = load i32, ptr %x11_dim1, align 4
  %mul299 = mul nsw i32 %332, %333
  %add300 = add nsw i32 %331, %mul299
  %idxprom301 = sext i32 %add300 to i64
  %arrayidx302 = getelementptr inbounds double, ptr %330, i64 %idxprom301
  store double 1.000000e+00, ptr %arrayidx302, align 8
  %334 = load ptr, ptr %p.addr, align 8
  %335 = load i32, ptr %334, align 4
  %336 = load i32, ptr %i__, align 4
  %sub303 = sub nsw i32 %335, %336
  %add304 = add nsw i32 %sub303, 1
  store i32 %add304, ptr %i__2, align 4
  %337 = load ptr, ptr %q.addr, align 8
  %338 = load i32, ptr %337, align 4
  %339 = load i32, ptr %i__, align 4
  %sub305 = sub nsw i32 %338, %339
  store i32 %sub305, ptr %i__3, align 4
  %340 = load ptr, ptr %x11.addr, align 8
  %341 = load i32, ptr %i__, align 4
  %342 = load i32, ptr %i__, align 4
  %343 = load i32, ptr %x11_dim1, align 4
  %mul306 = mul nsw i32 %342, %343
  %add307 = add nsw i32 %341, %mul306
  %idxprom308 = sext i32 %add307 to i64
  %arrayidx309 = getelementptr inbounds double, ptr %340, i64 %idxprom308
  %344 = load ptr, ptr %taup1.addr, align 8
  %345 = load i32, ptr %i__, align 4
  %idxprom310 = sext i32 %345 to i64
  %arrayidx311 = getelementptr inbounds double, ptr %344, i64 %idxprom310
  %346 = load ptr, ptr %x11.addr, align 8
  %347 = load i32, ptr %i__, align 4
  %348 = load i32, ptr %i__, align 4
  %add312 = add nsw i32 %348, 1
  %349 = load i32, ptr %x11_dim1, align 4
  %mul313 = mul nsw i32 %add312, %349
  %add314 = add nsw i32 %347, %mul313
  %idxprom315 = sext i32 %add314 to i64
  %arrayidx316 = getelementptr inbounds double, ptr %346, i64 %idxprom315
  %350 = load ptr, ptr %ldx11.addr, align 8
  %351 = load ptr, ptr %work.addr, align 8
  %352 = load i32, ptr %ilarf, align 4
  %idxprom317 = sext i32 %352 to i64
  %arrayidx318 = getelementptr inbounds double, ptr %351, i64 %idxprom317
  %call319 = call i32 @dlarf_(ptr noundef @.str.2, ptr noundef %i__2, ptr noundef %i__3, ptr noundef %arrayidx309, ptr noundef @c__1, ptr noundef %arrayidx311, ptr noundef %arrayidx316, ptr noundef %350, ptr noundef %arrayidx318)
  br label %for.inc

for.inc:                                          ; preds = %if.end298
  %353 = load i32, ptr %i__, align 4
  %inc = add nsw i32 %353, 1
  store i32 %inc, ptr %i__, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %354 = load ptr, ptr %q.addr, align 8
  %355 = load i32, ptr %354, align 4
  store i32 %355, ptr %i__1, align 4
  %356 = load ptr, ptr %m.addr, align 8
  %357 = load i32, ptr %356, align 4
  %358 = load ptr, ptr %p.addr, align 8
  %359 = load i32, ptr %358, align 4
  %sub320 = sub nsw i32 %357, %359
  %add321 = add nsw i32 %sub320, 1
  store i32 %add321, ptr %i__, align 4
  br label %for.cond322

for.cond322:                                      ; preds = %for.inc361, %for.end
  %360 = load i32, ptr %i__, align 4
  %361 = load i32, ptr %i__1, align 4
  %cmp323 = icmp sle i32 %360, %361
  br i1 %cmp323, label %for.body325, label %for.end363

for.body325:                                      ; preds = %for.cond322
  %362 = load ptr, ptr %p.addr, align 8
  %363 = load i32, ptr %362, align 4
  %364 = load i32, ptr %i__, align 4
  %sub326 = sub nsw i32 %363, %364
  %add327 = add nsw i32 %sub326, 1
  store i32 %add327, ptr %i__2, align 4
  %365 = load ptr, ptr %x11.addr, align 8
  %366 = load i32, ptr %i__, align 4
  %367 = load i32, ptr %i__, align 4
  %368 = load i32, ptr %x11_dim1, align 4
  %mul328 = mul nsw i32 %367, %368
  %add329 = add nsw i32 %366, %mul328
  %idxprom330 = sext i32 %add329 to i64
  %arrayidx331 = getelementptr inbounds double, ptr %365, i64 %idxprom330
  %369 = load ptr, ptr %x11.addr, align 8
  %370 = load i32, ptr %i__, align 4
  %add332 = add nsw i32 %370, 1
  %371 = load i32, ptr %i__, align 4
  %372 = load i32, ptr %x11_dim1, align 4
  %mul333 = mul nsw i32 %371, %372
  %add334 = add nsw i32 %add332, %mul333
  %idxprom335 = sext i32 %add334 to i64
  %arrayidx336 = getelementptr inbounds double, ptr %369, i64 %idxprom335
  %373 = load ptr, ptr %taup1.addr, align 8
  %374 = load i32, ptr %i__, align 4
  %idxprom337 = sext i32 %374 to i64
  %arrayidx338 = getelementptr inbounds double, ptr %373, i64 %idxprom337
  %call339 = call i32 @dlarfgp_(ptr noundef %i__2, ptr noundef %arrayidx331, ptr noundef %arrayidx336, ptr noundef @c__1, ptr noundef %arrayidx338)
  %375 = load ptr, ptr %x11.addr, align 8
  %376 = load i32, ptr %i__, align 4
  %377 = load i32, ptr %i__, align 4
  %378 = load i32, ptr %x11_dim1, align 4
  %mul340 = mul nsw i32 %377, %378
  %add341 = add nsw i32 %376, %mul340
  %idxprom342 = sext i32 %add341 to i64
  %arrayidx343 = getelementptr inbounds double, ptr %375, i64 %idxprom342
  store double 1.000000e+00, ptr %arrayidx343, align 8
  %379 = load ptr, ptr %p.addr, align 8
  %380 = load i32, ptr %379, align 4
  %381 = load i32, ptr %i__, align 4
  %sub344 = sub nsw i32 %380, %381
  %add345 = add nsw i32 %sub344, 1
  store i32 %add345, ptr %i__2, align 4
  %382 = load ptr, ptr %q.addr, align 8
  %383 = load i32, ptr %382, align 4
  %384 = load i32, ptr %i__, align 4
  %sub346 = sub nsw i32 %383, %384
  store i32 %sub346, ptr %i__3, align 4
  %385 = load ptr, ptr %x11.addr, align 8
  %386 = load i32, ptr %i__, align 4
  %387 = load i32, ptr %i__, align 4
  %388 = load i32, ptr %x11_dim1, align 4
  %mul347 = mul nsw i32 %387, %388
  %add348 = add nsw i32 %386, %mul347
  %idxprom349 = sext i32 %add348 to i64
  %arrayidx350 = getelementptr inbounds double, ptr %385, i64 %idxprom349
  %389 = load ptr, ptr %taup1.addr, align 8
  %390 = load i32, ptr %i__, align 4
  %idxprom351 = sext i32 %390 to i64
  %arrayidx352 = getelementptr inbounds double, ptr %389, i64 %idxprom351
  %391 = load ptr, ptr %x11.addr, align 8
  %392 = load i32, ptr %i__, align 4
  %393 = load i32, ptr %i__, align 4
  %add353 = add nsw i32 %393, 1
  %394 = load i32, ptr %x11_dim1, align 4
  %mul354 = mul nsw i32 %add353, %394
  %add355 = add nsw i32 %392, %mul354
  %idxprom356 = sext i32 %add355 to i64
  %arrayidx357 = getelementptr inbounds double, ptr %391, i64 %idxprom356
  %395 = load ptr, ptr %ldx11.addr, align 8
  %396 = load ptr, ptr %work.addr, align 8
  %397 = load i32, ptr %ilarf, align 4
  %idxprom358 = sext i32 %397 to i64
  %arrayidx359 = getelementptr inbounds double, ptr %396, i64 %idxprom358
  %call360 = call i32 @dlarf_(ptr noundef @.str.2, ptr noundef %i__2, ptr noundef %i__3, ptr noundef %arrayidx350, ptr noundef @c__1, ptr noundef %arrayidx352, ptr noundef %arrayidx357, ptr noundef %395, ptr noundef %arrayidx359)
  br label %for.inc361

for.inc361:                                       ; preds = %for.body325
  %398 = load i32, ptr %i__, align 4
  %inc362 = add nsw i32 %398, 1
  store i32 %inc362, ptr %i__, align 4
  br label %for.cond322, !llvm.loop !7

for.end363:                                       ; preds = %for.cond322
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end363, %if.then88, %if.then84
  %399 = load i32, ptr %retval, align 4
  ret i32 %399
}

declare i32 @xerbla_(ptr noundef, ptr noundef) #1

declare i32 @drot_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @dlarfgp_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @dlarf_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare double @dnrm2_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
declare double @sqrt(double noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: nounwind
declare double @atan2(double noundef, double noundef) #2

declare i32 @dorbdb5_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
declare double @cos(double noundef) #2

; Function Attrs: nounwind
declare double @sin(double noundef) #2

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

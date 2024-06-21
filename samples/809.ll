; ModuleID = 'samples/809.bc'
source_filename = "/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/map/lapack2flamec/f2c/c/zunbdb1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.doublecomplex = type { double, double }

@.str = private unnamed_addr constant [8 x i8] c"ZUNBDB1\00", align 1
@c__1 = internal global i32 1, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"R\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @zunbdb1_(ptr noundef %m, ptr noundef %p, ptr noundef %q, ptr noundef %x11, ptr noundef %ldx11, ptr noundef %x21, ptr noundef %ldx21, ptr noundef %theta, ptr noundef %phi, ptr noundef %taup1, ptr noundef %taup2, ptr noundef %tauq1, ptr noundef %work, ptr noundef %lwork, ptr noundef %info) #0 {
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
  %z__1 = alloca %struct.doublecomplex, align 8
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
  %add.ptr = getelementptr inbounds %struct.doublecomplex, ptr %4, i64 %idx.neg
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
  %add.ptr4 = getelementptr inbounds %struct.doublecomplex, ptr %9, i64 %idx.neg3
  store ptr %add.ptr4, ptr %x21.addr, align 8
  %10 = load ptr, ptr %theta.addr, align 8
  %incdec.ptr = getelementptr inbounds double, ptr %10, i32 -1
  store ptr %incdec.ptr, ptr %theta.addr, align 8
  %11 = load ptr, ptr %phi.addr, align 8
  %incdec.ptr5 = getelementptr inbounds double, ptr %11, i32 -1
  store ptr %incdec.ptr5, ptr %phi.addr, align 8
  %12 = load ptr, ptr %taup1.addr, align 8
  %incdec.ptr6 = getelementptr inbounds %struct.doublecomplex, ptr %12, i32 -1
  store ptr %incdec.ptr6, ptr %taup1.addr, align 8
  %13 = load ptr, ptr %taup2.addr, align 8
  %incdec.ptr7 = getelementptr inbounds %struct.doublecomplex, ptr %13, i32 -1
  store ptr %incdec.ptr7, ptr %taup2.addr, align 8
  %14 = load ptr, ptr %tauq1.addr, align 8
  %incdec.ptr8 = getelementptr inbounds %struct.doublecomplex, ptr %14, i32 -1
  store ptr %incdec.ptr8, ptr %tauq1.addr, align 8
  %15 = load ptr, ptr %work.addr, align 8
  %incdec.ptr9 = getelementptr inbounds %struct.doublecomplex, ptr %15, i32 -1
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
  br label %if.end45

if.else:                                          ; preds = %entry
  %22 = load ptr, ptr %p.addr, align 8
  %23 = load i32, ptr %22, align 4
  %24 = load ptr, ptr %q.addr, align 8
  %25 = load i32, ptr %24, align 4
  %cmp12 = icmp slt i32 %23, %25
  br i1 %cmp12, label %if.then16, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %26 = load ptr, ptr %m.addr, align 8
  %27 = load i32, ptr %26, align 4
  %28 = load ptr, ptr %p.addr, align 8
  %29 = load i32, ptr %28, align 4
  %sub = sub nsw i32 %27, %29
  %30 = load ptr, ptr %q.addr, align 8
  %31 = load i32, ptr %30, align 4
  %cmp14 = icmp slt i32 %sub, %31
  br i1 %cmp14, label %if.then16, label %if.else17

if.then16:                                        ; preds = %lor.lhs.false, %if.else
  %32 = load ptr, ptr %info.addr, align 8
  store i32 -2, ptr %32, align 4
  br label %if.end44

if.else17:                                        ; preds = %lor.lhs.false
  %33 = load ptr, ptr %q.addr, align 8
  %34 = load i32, ptr %33, align 4
  %cmp18 = icmp slt i32 %34, 0
  br i1 %cmp18, label %if.then24, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %if.else17
  %35 = load ptr, ptr %m.addr, align 8
  %36 = load i32, ptr %35, align 4
  %37 = load ptr, ptr %q.addr, align 8
  %38 = load i32, ptr %37, align 4
  %sub21 = sub nsw i32 %36, %38
  %39 = load ptr, ptr %q.addr, align 8
  %40 = load i32, ptr %39, align 4
  %cmp22 = icmp slt i32 %sub21, %40
  br i1 %cmp22, label %if.then24, label %if.else25

if.then24:                                        ; preds = %lor.lhs.false20, %if.else17
  %41 = load ptr, ptr %info.addr, align 8
  store i32 -3, ptr %41, align 4
  br label %if.end43

if.else25:                                        ; preds = %lor.lhs.false20
  %42 = load ptr, ptr %ldx11.addr, align 8
  %43 = load i32, ptr %42, align 4
  %44 = load ptr, ptr %p.addr, align 8
  %45 = load i32, ptr %44, align 4
  %cmp26 = icmp sge i32 1, %45
  br i1 %cmp26, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else25
  br label %cond.end

cond.false:                                       ; preds = %if.else25
  %46 = load ptr, ptr %p.addr, align 8
  %47 = load i32, ptr %46, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %47, %cond.false ]
  %cmp28 = icmp slt i32 %43, %cond
  br i1 %cmp28, label %if.then30, label %if.else31

if.then30:                                        ; preds = %cond.end
  %48 = load ptr, ptr %info.addr, align 8
  store i32 -5, ptr %48, align 4
  br label %if.end42

if.else31:                                        ; preds = %cond.end
  store i32 1, ptr %i__1, align 4
  %49 = load ptr, ptr %m.addr, align 8
  %50 = load i32, ptr %49, align 4
  %51 = load ptr, ptr %p.addr, align 8
  %52 = load i32, ptr %51, align 4
  %sub32 = sub nsw i32 %50, %52
  store i32 %sub32, ptr %i__2, align 4
  %53 = load ptr, ptr %ldx21.addr, align 8
  %54 = load i32, ptr %53, align 4
  %55 = load i32, ptr %i__1, align 4
  %56 = load i32, ptr %i__2, align 4
  %cmp33 = icmp sge i32 %55, %56
  br i1 %cmp33, label %cond.true35, label %cond.false36

cond.true35:                                      ; preds = %if.else31
  %57 = load i32, ptr %i__1, align 4
  br label %cond.end37

cond.false36:                                     ; preds = %if.else31
  %58 = load i32, ptr %i__2, align 4
  br label %cond.end37

cond.end37:                                       ; preds = %cond.false36, %cond.true35
  %cond38 = phi i32 [ %57, %cond.true35 ], [ %58, %cond.false36 ]
  %cmp39 = icmp slt i32 %54, %cond38
  br i1 %cmp39, label %if.then41, label %if.end

if.then41:                                        ; preds = %cond.end37
  %59 = load ptr, ptr %info.addr, align 8
  store i32 -7, ptr %59, align 4
  br label %if.end

if.end:                                           ; preds = %if.then41, %cond.end37
  br label %if.end42

if.end42:                                         ; preds = %if.end, %if.then30
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %if.then24
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %if.then16
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %if.then
  %60 = load ptr, ptr %info.addr, align 8
  %61 = load i32, ptr %60, align 4
  %cmp46 = icmp eq i32 %61, 0
  br i1 %cmp46, label %if.then48, label %if.end82

if.then48:                                        ; preds = %if.end45
  store i32 2, ptr %ilarf, align 4
  %62 = load ptr, ptr %p.addr, align 8
  %63 = load i32, ptr %62, align 4
  %sub49 = sub nsw i32 %63, 1
  store i32 %sub49, ptr %i__1, align 4
  %64 = load ptr, ptr %m.addr, align 8
  %65 = load i32, ptr %64, align 4
  %66 = load ptr, ptr %p.addr, align 8
  %67 = load i32, ptr %66, align 4
  %sub50 = sub nsw i32 %65, %67
  %sub51 = sub nsw i32 %sub50, 1
  store i32 %sub51, ptr %i__2, align 4
  %68 = load i32, ptr %i__1, align 4
  %69 = load i32, ptr %i__2, align 4
  %cmp52 = icmp sge i32 %68, %69
  br i1 %cmp52, label %cond.true54, label %cond.false55

cond.true54:                                      ; preds = %if.then48
  %70 = load i32, ptr %i__1, align 4
  br label %cond.end56

cond.false55:                                     ; preds = %if.then48
  %71 = load i32, ptr %i__2, align 4
  br label %cond.end56

cond.end56:                                       ; preds = %cond.false55, %cond.true54
  %cond57 = phi i32 [ %70, %cond.true54 ], [ %71, %cond.false55 ]
  store i32 %cond57, ptr %i__1, align 4
  %72 = load ptr, ptr %q.addr, align 8
  %73 = load i32, ptr %72, align 4
  %sub58 = sub nsw i32 %73, 1
  store i32 %sub58, ptr %i__2, align 4
  %74 = load i32, ptr %i__1, align 4
  %75 = load i32, ptr %i__2, align 4
  %cmp59 = icmp sge i32 %74, %75
  br i1 %cmp59, label %cond.true61, label %cond.false62

cond.true61:                                      ; preds = %cond.end56
  %76 = load i32, ptr %i__1, align 4
  br label %cond.end63

cond.false62:                                     ; preds = %cond.end56
  %77 = load i32, ptr %i__2, align 4
  br label %cond.end63

cond.end63:                                       ; preds = %cond.false62, %cond.true61
  %cond64 = phi i32 [ %76, %cond.true61 ], [ %77, %cond.false62 ]
  store i32 %cond64, ptr %llarf, align 4
  store i32 2, ptr %iorbdb5, align 4
  %78 = load ptr, ptr %q.addr, align 8
  %79 = load i32, ptr %78, align 4
  %sub65 = sub nsw i32 %79, 2
  store i32 %sub65, ptr %lorbdb5, align 4
  %80 = load i32, ptr %ilarf, align 4
  %81 = load i32, ptr %llarf, align 4
  %add66 = add nsw i32 %80, %81
  %sub67 = sub nsw i32 %add66, 1
  store i32 %sub67, ptr %i__1, align 4
  %82 = load i32, ptr %iorbdb5, align 4
  %83 = load i32, ptr %lorbdb5, align 4
  %add68 = add nsw i32 %82, %83
  %sub69 = sub nsw i32 %add68, 1
  store i32 %sub69, ptr %i__2, align 4
  %84 = load i32, ptr %i__1, align 4
  %85 = load i32, ptr %i__2, align 4
  %cmp70 = icmp sge i32 %84, %85
  br i1 %cmp70, label %cond.true72, label %cond.false73

cond.true72:                                      ; preds = %cond.end63
  %86 = load i32, ptr %i__1, align 4
  br label %cond.end74

cond.false73:                                     ; preds = %cond.end63
  %87 = load i32, ptr %i__2, align 4
  br label %cond.end74

cond.end74:                                       ; preds = %cond.false73, %cond.true72
  %cond75 = phi i32 [ %86, %cond.true72 ], [ %87, %cond.false73 ]
  store i32 %cond75, ptr %lworkopt, align 4
  %88 = load i32, ptr %lworkopt, align 4
  store i32 %88, ptr %lworkmin, align 4
  %89 = load i32, ptr %lworkopt, align 4
  %conv76 = sitofp i32 %89 to double
  %90 = load ptr, ptr %work.addr, align 8
  %arrayidx = getelementptr inbounds %struct.doublecomplex, ptr %90, i64 1
  %r = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx, i32 0, i32 0
  store double %conv76, ptr %r, align 8
  %91 = load ptr, ptr %work.addr, align 8
  %arrayidx77 = getelementptr inbounds %struct.doublecomplex, ptr %91, i64 1
  %i = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx77, i32 0, i32 1
  store double 0.000000e+00, ptr %i, align 8
  %92 = load ptr, ptr %lwork.addr, align 8
  %93 = load i32, ptr %92, align 4
  %94 = load i32, ptr %lworkmin, align 4
  %cmp78 = icmp slt i32 %93, %94
  br i1 %cmp78, label %land.lhs.true, label %if.end81

land.lhs.true:                                    ; preds = %cond.end74
  %95 = load i32, ptr %lquery, align 4
  %tobool = icmp ne i32 %95, 0
  br i1 %tobool, label %if.end81, label %if.then80

if.then80:                                        ; preds = %land.lhs.true
  %96 = load ptr, ptr %info.addr, align 8
  store i32 -14, ptr %96, align 4
  br label %if.end81

if.end81:                                         ; preds = %if.then80, %land.lhs.true, %cond.end74
  br label %if.end82

if.end82:                                         ; preds = %if.end81, %if.end45
  %97 = load ptr, ptr %info.addr, align 8
  %98 = load i32, ptr %97, align 4
  %cmp83 = icmp ne i32 %98, 0
  br i1 %cmp83, label %if.then85, label %if.else87

if.then85:                                        ; preds = %if.end82
  %99 = load ptr, ptr %info.addr, align 8
  %100 = load i32, ptr %99, align 4
  %sub86 = sub nsw i32 0, %100
  store i32 %sub86, ptr %i__1, align 4
  %call = call i32 @xerbla_(ptr noundef @.str, ptr noundef %i__1)
  store i32 0, ptr %retval, align 4
  br label %return

if.else87:                                        ; preds = %if.end82
  %101 = load i32, ptr %lquery, align 4
  %tobool88 = icmp ne i32 %101, 0
  br i1 %tobool88, label %if.then89, label %if.end90

if.then89:                                        ; preds = %if.else87
  store i32 0, ptr %retval, align 4
  br label %return

if.end90:                                         ; preds = %if.else87
  br label %if.end91

if.end91:                                         ; preds = %if.end90
  %102 = load ptr, ptr %q.addr, align 8
  %103 = load i32, ptr %102, align 4
  store i32 %103, ptr %i__1, align 4
  store i32 1, ptr %i__, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end91
  %104 = load i32, ptr %i__, align 4
  %105 = load i32, ptr %i__1, align 4
  %cmp92 = icmp sle i32 %104, %105
  br i1 %cmp92, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %106 = load ptr, ptr %p.addr, align 8
  %107 = load i32, ptr %106, align 4
  %108 = load i32, ptr %i__, align 4
  %sub94 = sub nsw i32 %107, %108
  %add95 = add nsw i32 %sub94, 1
  store i32 %add95, ptr %i__2, align 4
  %109 = load ptr, ptr %x11.addr, align 8
  %110 = load i32, ptr %i__, align 4
  %111 = load i32, ptr %i__, align 4
  %112 = load i32, ptr %x11_dim1, align 4
  %mul = mul nsw i32 %111, %112
  %add96 = add nsw i32 %110, %mul
  %idxprom = sext i32 %add96 to i64
  %arrayidx97 = getelementptr inbounds %struct.doublecomplex, ptr %109, i64 %idxprom
  %113 = load ptr, ptr %x11.addr, align 8
  %114 = load i32, ptr %i__, align 4
  %add98 = add nsw i32 %114, 1
  %115 = load i32, ptr %i__, align 4
  %116 = load i32, ptr %x11_dim1, align 4
  %mul99 = mul nsw i32 %115, %116
  %add100 = add nsw i32 %add98, %mul99
  %idxprom101 = sext i32 %add100 to i64
  %arrayidx102 = getelementptr inbounds %struct.doublecomplex, ptr %113, i64 %idxprom101
  %117 = load ptr, ptr %taup1.addr, align 8
  %118 = load i32, ptr %i__, align 4
  %idxprom103 = sext i32 %118 to i64
  %arrayidx104 = getelementptr inbounds %struct.doublecomplex, ptr %117, i64 %idxprom103
  %call105 = call i32 @zlarfgp_(ptr noundef %i__2, ptr noundef %arrayidx97, ptr noundef %arrayidx102, ptr noundef @c__1, ptr noundef %arrayidx104)
  %119 = load ptr, ptr %m.addr, align 8
  %120 = load i32, ptr %119, align 4
  %121 = load ptr, ptr %p.addr, align 8
  %122 = load i32, ptr %121, align 4
  %sub106 = sub nsw i32 %120, %122
  %123 = load i32, ptr %i__, align 4
  %sub107 = sub nsw i32 %sub106, %123
  %add108 = add nsw i32 %sub107, 1
  store i32 %add108, ptr %i__2, align 4
  %124 = load ptr, ptr %x21.addr, align 8
  %125 = load i32, ptr %i__, align 4
  %126 = load i32, ptr %i__, align 4
  %127 = load i32, ptr %x21_dim1, align 4
  %mul109 = mul nsw i32 %126, %127
  %add110 = add nsw i32 %125, %mul109
  %idxprom111 = sext i32 %add110 to i64
  %arrayidx112 = getelementptr inbounds %struct.doublecomplex, ptr %124, i64 %idxprom111
  %128 = load ptr, ptr %x21.addr, align 8
  %129 = load i32, ptr %i__, align 4
  %add113 = add nsw i32 %129, 1
  %130 = load i32, ptr %i__, align 4
  %131 = load i32, ptr %x21_dim1, align 4
  %mul114 = mul nsw i32 %130, %131
  %add115 = add nsw i32 %add113, %mul114
  %idxprom116 = sext i32 %add115 to i64
  %arrayidx117 = getelementptr inbounds %struct.doublecomplex, ptr %128, i64 %idxprom116
  %132 = load ptr, ptr %taup2.addr, align 8
  %133 = load i32, ptr %i__, align 4
  %idxprom118 = sext i32 %133 to i64
  %arrayidx119 = getelementptr inbounds %struct.doublecomplex, ptr %132, i64 %idxprom118
  %call120 = call i32 @zlarfgp_(ptr noundef %i__2, ptr noundef %arrayidx112, ptr noundef %arrayidx117, ptr noundef @c__1, ptr noundef %arrayidx119)
  %134 = load ptr, ptr %x21.addr, align 8
  %135 = load i32, ptr %i__, align 4
  %136 = load i32, ptr %i__, align 4
  %137 = load i32, ptr %x21_dim1, align 4
  %mul121 = mul nsw i32 %136, %137
  %add122 = add nsw i32 %135, %mul121
  %idxprom123 = sext i32 %add122 to i64
  %arrayidx124 = getelementptr inbounds %struct.doublecomplex, ptr %134, i64 %idxprom123
  %r125 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx124, i32 0, i32 0
  %138 = load double, ptr %r125, align 8
  %139 = load ptr, ptr %x11.addr, align 8
  %140 = load i32, ptr %i__, align 4
  %141 = load i32, ptr %i__, align 4
  %142 = load i32, ptr %x11_dim1, align 4
  %mul126 = mul nsw i32 %141, %142
  %add127 = add nsw i32 %140, %mul126
  %idxprom128 = sext i32 %add127 to i64
  %arrayidx129 = getelementptr inbounds %struct.doublecomplex, ptr %139, i64 %idxprom128
  %r130 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx129, i32 0, i32 0
  %143 = load double, ptr %r130, align 8
  %call131 = call double @atan2(double noundef %138, double noundef %143) #4
  %144 = load ptr, ptr %theta.addr, align 8
  %145 = load i32, ptr %i__, align 4
  %idxprom132 = sext i32 %145 to i64
  %arrayidx133 = getelementptr inbounds double, ptr %144, i64 %idxprom132
  store double %call131, ptr %arrayidx133, align 8
  %146 = load ptr, ptr %theta.addr, align 8
  %147 = load i32, ptr %i__, align 4
  %idxprom134 = sext i32 %147 to i64
  %arrayidx135 = getelementptr inbounds double, ptr %146, i64 %idxprom134
  %148 = load double, ptr %arrayidx135, align 8
  %call136 = call double @cos(double noundef %148) #4
  store double %call136, ptr %c__, align 8
  %149 = load ptr, ptr %theta.addr, align 8
  %150 = load i32, ptr %i__, align 4
  %idxprom137 = sext i32 %150 to i64
  %arrayidx138 = getelementptr inbounds double, ptr %149, i64 %idxprom137
  %151 = load double, ptr %arrayidx138, align 8
  %call139 = call double @sin(double noundef %151) #4
  store double %call139, ptr %s, align 8
  %152 = load i32, ptr %i__, align 4
  %153 = load i32, ptr %i__, align 4
  %154 = load i32, ptr %x11_dim1, align 4
  %mul140 = mul nsw i32 %153, %154
  %add141 = add nsw i32 %152, %mul140
  store i32 %add141, ptr %i__2, align 4
  %155 = load ptr, ptr %x11.addr, align 8
  %156 = load i32, ptr %i__2, align 4
  %idxprom142 = sext i32 %156 to i64
  %arrayidx143 = getelementptr inbounds %struct.doublecomplex, ptr %155, i64 %idxprom142
  %r144 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx143, i32 0, i32 0
  store double 1.000000e+00, ptr %r144, align 8
  %157 = load ptr, ptr %x11.addr, align 8
  %158 = load i32, ptr %i__2, align 4
  %idxprom145 = sext i32 %158 to i64
  %arrayidx146 = getelementptr inbounds %struct.doublecomplex, ptr %157, i64 %idxprom145
  %i147 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx146, i32 0, i32 1
  store double 0.000000e+00, ptr %i147, align 8
  %159 = load i32, ptr %i__, align 4
  %160 = load i32, ptr %i__, align 4
  %161 = load i32, ptr %x21_dim1, align 4
  %mul148 = mul nsw i32 %160, %161
  %add149 = add nsw i32 %159, %mul148
  store i32 %add149, ptr %i__2, align 4
  %162 = load ptr, ptr %x21.addr, align 8
  %163 = load i32, ptr %i__2, align 4
  %idxprom150 = sext i32 %163 to i64
  %arrayidx151 = getelementptr inbounds %struct.doublecomplex, ptr %162, i64 %idxprom150
  %r152 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx151, i32 0, i32 0
  store double 1.000000e+00, ptr %r152, align 8
  %164 = load ptr, ptr %x21.addr, align 8
  %165 = load i32, ptr %i__2, align 4
  %idxprom153 = sext i32 %165 to i64
  %arrayidx154 = getelementptr inbounds %struct.doublecomplex, ptr %164, i64 %idxprom153
  %i155 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx154, i32 0, i32 1
  store double 0.000000e+00, ptr %i155, align 8
  %166 = load ptr, ptr %p.addr, align 8
  %167 = load i32, ptr %166, align 4
  %168 = load i32, ptr %i__, align 4
  %sub156 = sub nsw i32 %167, %168
  %add157 = add nsw i32 %sub156, 1
  store i32 %add157, ptr %i__2, align 4
  %169 = load ptr, ptr %q.addr, align 8
  %170 = load i32, ptr %169, align 4
  %171 = load i32, ptr %i__, align 4
  %sub158 = sub nsw i32 %170, %171
  store i32 %sub158, ptr %i__3, align 4
  %172 = load ptr, ptr %taup1.addr, align 8
  %173 = load i32, ptr %i__, align 4
  %idxprom159 = sext i32 %173 to i64
  %arrayidx160 = getelementptr inbounds %struct.doublecomplex, ptr %172, i64 %idxprom159
  call void @d_cnjg(ptr noundef %z__1, ptr noundef %arrayidx160)
  %174 = load ptr, ptr %x11.addr, align 8
  %175 = load i32, ptr %i__, align 4
  %176 = load i32, ptr %i__, align 4
  %177 = load i32, ptr %x11_dim1, align 4
  %mul161 = mul nsw i32 %176, %177
  %add162 = add nsw i32 %175, %mul161
  %idxprom163 = sext i32 %add162 to i64
  %arrayidx164 = getelementptr inbounds %struct.doublecomplex, ptr %174, i64 %idxprom163
  %178 = load ptr, ptr %x11.addr, align 8
  %179 = load i32, ptr %i__, align 4
  %180 = load i32, ptr %i__, align 4
  %add165 = add nsw i32 %180, 1
  %181 = load i32, ptr %x11_dim1, align 4
  %mul166 = mul nsw i32 %add165, %181
  %add167 = add nsw i32 %179, %mul166
  %idxprom168 = sext i32 %add167 to i64
  %arrayidx169 = getelementptr inbounds %struct.doublecomplex, ptr %178, i64 %idxprom168
  %182 = load ptr, ptr %ldx11.addr, align 8
  %183 = load ptr, ptr %work.addr, align 8
  %184 = load i32, ptr %ilarf, align 4
  %idxprom170 = sext i32 %184 to i64
  %arrayidx171 = getelementptr inbounds %struct.doublecomplex, ptr %183, i64 %idxprom170
  %call172 = call i32 @zlarf_(ptr noundef @.str.1, ptr noundef %i__2, ptr noundef %i__3, ptr noundef %arrayidx164, ptr noundef @c__1, ptr noundef %z__1, ptr noundef %arrayidx169, ptr noundef %182, ptr noundef %arrayidx171)
  %185 = load ptr, ptr %m.addr, align 8
  %186 = load i32, ptr %185, align 4
  %187 = load ptr, ptr %p.addr, align 8
  %188 = load i32, ptr %187, align 4
  %sub173 = sub nsw i32 %186, %188
  %189 = load i32, ptr %i__, align 4
  %sub174 = sub nsw i32 %sub173, %189
  %add175 = add nsw i32 %sub174, 1
  store i32 %add175, ptr %i__2, align 4
  %190 = load ptr, ptr %q.addr, align 8
  %191 = load i32, ptr %190, align 4
  %192 = load i32, ptr %i__, align 4
  %sub176 = sub nsw i32 %191, %192
  store i32 %sub176, ptr %i__3, align 4
  %193 = load ptr, ptr %taup2.addr, align 8
  %194 = load i32, ptr %i__, align 4
  %idxprom177 = sext i32 %194 to i64
  %arrayidx178 = getelementptr inbounds %struct.doublecomplex, ptr %193, i64 %idxprom177
  call void @d_cnjg(ptr noundef %z__1, ptr noundef %arrayidx178)
  %195 = load ptr, ptr %x21.addr, align 8
  %196 = load i32, ptr %i__, align 4
  %197 = load i32, ptr %i__, align 4
  %198 = load i32, ptr %x21_dim1, align 4
  %mul179 = mul nsw i32 %197, %198
  %add180 = add nsw i32 %196, %mul179
  %idxprom181 = sext i32 %add180 to i64
  %arrayidx182 = getelementptr inbounds %struct.doublecomplex, ptr %195, i64 %idxprom181
  %199 = load ptr, ptr %x21.addr, align 8
  %200 = load i32, ptr %i__, align 4
  %201 = load i32, ptr %i__, align 4
  %add183 = add nsw i32 %201, 1
  %202 = load i32, ptr %x21_dim1, align 4
  %mul184 = mul nsw i32 %add183, %202
  %add185 = add nsw i32 %200, %mul184
  %idxprom186 = sext i32 %add185 to i64
  %arrayidx187 = getelementptr inbounds %struct.doublecomplex, ptr %199, i64 %idxprom186
  %203 = load ptr, ptr %ldx21.addr, align 8
  %204 = load ptr, ptr %work.addr, align 8
  %205 = load i32, ptr %ilarf, align 4
  %idxprom188 = sext i32 %205 to i64
  %arrayidx189 = getelementptr inbounds %struct.doublecomplex, ptr %204, i64 %idxprom188
  %call190 = call i32 @zlarf_(ptr noundef @.str.1, ptr noundef %i__2, ptr noundef %i__3, ptr noundef %arrayidx182, ptr noundef @c__1, ptr noundef %z__1, ptr noundef %arrayidx187, ptr noundef %203, ptr noundef %arrayidx189)
  %206 = load i32, ptr %i__, align 4
  %207 = load ptr, ptr %q.addr, align 8
  %208 = load i32, ptr %207, align 4
  %cmp191 = icmp slt i32 %206, %208
  br i1 %cmp191, label %if.then193, label %if.end353

if.then193:                                       ; preds = %for.body
  %209 = load ptr, ptr %q.addr, align 8
  %210 = load i32, ptr %209, align 4
  %211 = load i32, ptr %i__, align 4
  %sub194 = sub nsw i32 %210, %211
  store i32 %sub194, ptr %i__2, align 4
  %212 = load ptr, ptr %x11.addr, align 8
  %213 = load i32, ptr %i__, align 4
  %214 = load i32, ptr %i__, align 4
  %add195 = add nsw i32 %214, 1
  %215 = load i32, ptr %x11_dim1, align 4
  %mul196 = mul nsw i32 %add195, %215
  %add197 = add nsw i32 %213, %mul196
  %idxprom198 = sext i32 %add197 to i64
  %arrayidx199 = getelementptr inbounds %struct.doublecomplex, ptr %212, i64 %idxprom198
  %216 = load ptr, ptr %ldx11.addr, align 8
  %217 = load ptr, ptr %x21.addr, align 8
  %218 = load i32, ptr %i__, align 4
  %219 = load i32, ptr %i__, align 4
  %add200 = add nsw i32 %219, 1
  %220 = load i32, ptr %x21_dim1, align 4
  %mul201 = mul nsw i32 %add200, %220
  %add202 = add nsw i32 %218, %mul201
  %idxprom203 = sext i32 %add202 to i64
  %arrayidx204 = getelementptr inbounds %struct.doublecomplex, ptr %217, i64 %idxprom203
  %221 = load ptr, ptr %ldx21.addr, align 8
  %call205 = call i32 @zdrot_(ptr noundef %i__2, ptr noundef %arrayidx199, ptr noundef %216, ptr noundef %arrayidx204, ptr noundef %221, ptr noundef %c__, ptr noundef %s)
  %222 = load ptr, ptr %q.addr, align 8
  %223 = load i32, ptr %222, align 4
  %224 = load i32, ptr %i__, align 4
  %sub206 = sub nsw i32 %223, %224
  store i32 %sub206, ptr %i__2, align 4
  %225 = load ptr, ptr %x21.addr, align 8
  %226 = load i32, ptr %i__, align 4
  %227 = load i32, ptr %i__, align 4
  %add207 = add nsw i32 %227, 1
  %228 = load i32, ptr %x21_dim1, align 4
  %mul208 = mul nsw i32 %add207, %228
  %add209 = add nsw i32 %226, %mul208
  %idxprom210 = sext i32 %add209 to i64
  %arrayidx211 = getelementptr inbounds %struct.doublecomplex, ptr %225, i64 %idxprom210
  %229 = load ptr, ptr %ldx21.addr, align 8
  %call212 = call i32 @zlacgv_(ptr noundef %i__2, ptr noundef %arrayidx211, ptr noundef %229)
  %230 = load ptr, ptr %q.addr, align 8
  %231 = load i32, ptr %230, align 4
  %232 = load i32, ptr %i__, align 4
  %sub213 = sub nsw i32 %231, %232
  store i32 %sub213, ptr %i__2, align 4
  %233 = load ptr, ptr %x21.addr, align 8
  %234 = load i32, ptr %i__, align 4
  %235 = load i32, ptr %i__, align 4
  %add214 = add nsw i32 %235, 1
  %236 = load i32, ptr %x21_dim1, align 4
  %mul215 = mul nsw i32 %add214, %236
  %add216 = add nsw i32 %234, %mul215
  %idxprom217 = sext i32 %add216 to i64
  %arrayidx218 = getelementptr inbounds %struct.doublecomplex, ptr %233, i64 %idxprom217
  %237 = load ptr, ptr %x21.addr, align 8
  %238 = load i32, ptr %i__, align 4
  %239 = load i32, ptr %i__, align 4
  %add219 = add nsw i32 %239, 2
  %240 = load i32, ptr %x21_dim1, align 4
  %mul220 = mul nsw i32 %add219, %240
  %add221 = add nsw i32 %238, %mul220
  %idxprom222 = sext i32 %add221 to i64
  %arrayidx223 = getelementptr inbounds %struct.doublecomplex, ptr %237, i64 %idxprom222
  %241 = load ptr, ptr %ldx21.addr, align 8
  %242 = load ptr, ptr %tauq1.addr, align 8
  %243 = load i32, ptr %i__, align 4
  %idxprom224 = sext i32 %243 to i64
  %arrayidx225 = getelementptr inbounds %struct.doublecomplex, ptr %242, i64 %idxprom224
  %call226 = call i32 @zlarfgp_(ptr noundef %i__2, ptr noundef %arrayidx218, ptr noundef %arrayidx223, ptr noundef %241, ptr noundef %arrayidx225)
  %244 = load i32, ptr %i__, align 4
  %245 = load i32, ptr %i__, align 4
  %add227 = add nsw i32 %245, 1
  %246 = load i32, ptr %x21_dim1, align 4
  %mul228 = mul nsw i32 %add227, %246
  %add229 = add nsw i32 %244, %mul228
  store i32 %add229, ptr %i__2, align 4
  %247 = load ptr, ptr %x21.addr, align 8
  %248 = load i32, ptr %i__2, align 4
  %idxprom230 = sext i32 %248 to i64
  %arrayidx231 = getelementptr inbounds %struct.doublecomplex, ptr %247, i64 %idxprom230
  %r232 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx231, i32 0, i32 0
  %249 = load double, ptr %r232, align 8
  store double %249, ptr %s, align 8
  %250 = load i32, ptr %i__, align 4
  %251 = load i32, ptr %i__, align 4
  %add233 = add nsw i32 %251, 1
  %252 = load i32, ptr %x21_dim1, align 4
  %mul234 = mul nsw i32 %add233, %252
  %add235 = add nsw i32 %250, %mul234
  store i32 %add235, ptr %i__2, align 4
  %253 = load ptr, ptr %x21.addr, align 8
  %254 = load i32, ptr %i__2, align 4
  %idxprom236 = sext i32 %254 to i64
  %arrayidx237 = getelementptr inbounds %struct.doublecomplex, ptr %253, i64 %idxprom236
  %r238 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx237, i32 0, i32 0
  store double 1.000000e+00, ptr %r238, align 8
  %255 = load ptr, ptr %x21.addr, align 8
  %256 = load i32, ptr %i__2, align 4
  %idxprom239 = sext i32 %256 to i64
  %arrayidx240 = getelementptr inbounds %struct.doublecomplex, ptr %255, i64 %idxprom239
  %i241 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx240, i32 0, i32 1
  store double 0.000000e+00, ptr %i241, align 8
  %257 = load ptr, ptr %p.addr, align 8
  %258 = load i32, ptr %257, align 4
  %259 = load i32, ptr %i__, align 4
  %sub242 = sub nsw i32 %258, %259
  store i32 %sub242, ptr %i__2, align 4
  %260 = load ptr, ptr %q.addr, align 8
  %261 = load i32, ptr %260, align 4
  %262 = load i32, ptr %i__, align 4
  %sub243 = sub nsw i32 %261, %262
  store i32 %sub243, ptr %i__3, align 4
  %263 = load ptr, ptr %x21.addr, align 8
  %264 = load i32, ptr %i__, align 4
  %265 = load i32, ptr %i__, align 4
  %add244 = add nsw i32 %265, 1
  %266 = load i32, ptr %x21_dim1, align 4
  %mul245 = mul nsw i32 %add244, %266
  %add246 = add nsw i32 %264, %mul245
  %idxprom247 = sext i32 %add246 to i64
  %arrayidx248 = getelementptr inbounds %struct.doublecomplex, ptr %263, i64 %idxprom247
  %267 = load ptr, ptr %ldx21.addr, align 8
  %268 = load ptr, ptr %tauq1.addr, align 8
  %269 = load i32, ptr %i__, align 4
  %idxprom249 = sext i32 %269 to i64
  %arrayidx250 = getelementptr inbounds %struct.doublecomplex, ptr %268, i64 %idxprom249
  %270 = load ptr, ptr %x11.addr, align 8
  %271 = load i32, ptr %i__, align 4
  %add251 = add nsw i32 %271, 1
  %272 = load i32, ptr %i__, align 4
  %add252 = add nsw i32 %272, 1
  %273 = load i32, ptr %x11_dim1, align 4
  %mul253 = mul nsw i32 %add252, %273
  %add254 = add nsw i32 %add251, %mul253
  %idxprom255 = sext i32 %add254 to i64
  %arrayidx256 = getelementptr inbounds %struct.doublecomplex, ptr %270, i64 %idxprom255
  %274 = load ptr, ptr %ldx11.addr, align 8
  %275 = load ptr, ptr %work.addr, align 8
  %276 = load i32, ptr %ilarf, align 4
  %idxprom257 = sext i32 %276 to i64
  %arrayidx258 = getelementptr inbounds %struct.doublecomplex, ptr %275, i64 %idxprom257
  %call259 = call i32 @zlarf_(ptr noundef @.str.2, ptr noundef %i__2, ptr noundef %i__3, ptr noundef %arrayidx248, ptr noundef %267, ptr noundef %arrayidx250, ptr noundef %arrayidx256, ptr noundef %274, ptr noundef %arrayidx258)
  %277 = load ptr, ptr %m.addr, align 8
  %278 = load i32, ptr %277, align 4
  %279 = load ptr, ptr %p.addr, align 8
  %280 = load i32, ptr %279, align 4
  %sub260 = sub nsw i32 %278, %280
  %281 = load i32, ptr %i__, align 4
  %sub261 = sub nsw i32 %sub260, %281
  store i32 %sub261, ptr %i__2, align 4
  %282 = load ptr, ptr %q.addr, align 8
  %283 = load i32, ptr %282, align 4
  %284 = load i32, ptr %i__, align 4
  %sub262 = sub nsw i32 %283, %284
  store i32 %sub262, ptr %i__3, align 4
  %285 = load ptr, ptr %x21.addr, align 8
  %286 = load i32, ptr %i__, align 4
  %287 = load i32, ptr %i__, align 4
  %add263 = add nsw i32 %287, 1
  %288 = load i32, ptr %x21_dim1, align 4
  %mul264 = mul nsw i32 %add263, %288
  %add265 = add nsw i32 %286, %mul264
  %idxprom266 = sext i32 %add265 to i64
  %arrayidx267 = getelementptr inbounds %struct.doublecomplex, ptr %285, i64 %idxprom266
  %289 = load ptr, ptr %ldx21.addr, align 8
  %290 = load ptr, ptr %tauq1.addr, align 8
  %291 = load i32, ptr %i__, align 4
  %idxprom268 = sext i32 %291 to i64
  %arrayidx269 = getelementptr inbounds %struct.doublecomplex, ptr %290, i64 %idxprom268
  %292 = load ptr, ptr %x21.addr, align 8
  %293 = load i32, ptr %i__, align 4
  %add270 = add nsw i32 %293, 1
  %294 = load i32, ptr %i__, align 4
  %add271 = add nsw i32 %294, 1
  %295 = load i32, ptr %x21_dim1, align 4
  %mul272 = mul nsw i32 %add271, %295
  %add273 = add nsw i32 %add270, %mul272
  %idxprom274 = sext i32 %add273 to i64
  %arrayidx275 = getelementptr inbounds %struct.doublecomplex, ptr %292, i64 %idxprom274
  %296 = load ptr, ptr %ldx21.addr, align 8
  %297 = load ptr, ptr %work.addr, align 8
  %298 = load i32, ptr %ilarf, align 4
  %idxprom276 = sext i32 %298 to i64
  %arrayidx277 = getelementptr inbounds %struct.doublecomplex, ptr %297, i64 %idxprom276
  %call278 = call i32 @zlarf_(ptr noundef @.str.2, ptr noundef %i__2, ptr noundef %i__3, ptr noundef %arrayidx267, ptr noundef %289, ptr noundef %arrayidx269, ptr noundef %arrayidx275, ptr noundef %296, ptr noundef %arrayidx277)
  %299 = load ptr, ptr %q.addr, align 8
  %300 = load i32, ptr %299, align 4
  %301 = load i32, ptr %i__, align 4
  %sub279 = sub nsw i32 %300, %301
  store i32 %sub279, ptr %i__2, align 4
  %302 = load ptr, ptr %x21.addr, align 8
  %303 = load i32, ptr %i__, align 4
  %304 = load i32, ptr %i__, align 4
  %add280 = add nsw i32 %304, 1
  %305 = load i32, ptr %x21_dim1, align 4
  %mul281 = mul nsw i32 %add280, %305
  %add282 = add nsw i32 %303, %mul281
  %idxprom283 = sext i32 %add282 to i64
  %arrayidx284 = getelementptr inbounds %struct.doublecomplex, ptr %302, i64 %idxprom283
  %306 = load ptr, ptr %ldx21.addr, align 8
  %call285 = call i32 @zlacgv_(ptr noundef %i__2, ptr noundef %arrayidx284, ptr noundef %306)
  %307 = load ptr, ptr %p.addr, align 8
  %308 = load i32, ptr %307, align 4
  %309 = load i32, ptr %i__, align 4
  %sub286 = sub nsw i32 %308, %309
  store i32 %sub286, ptr %i__2, align 4
  %310 = load ptr, ptr %x11.addr, align 8
  %311 = load i32, ptr %i__, align 4
  %add287 = add nsw i32 %311, 1
  %312 = load i32, ptr %i__, align 4
  %add288 = add nsw i32 %312, 1
  %313 = load i32, ptr %x11_dim1, align 4
  %mul289 = mul nsw i32 %add288, %313
  %add290 = add nsw i32 %add287, %mul289
  %idxprom291 = sext i32 %add290 to i64
  %arrayidx292 = getelementptr inbounds %struct.doublecomplex, ptr %310, i64 %idxprom291
  %314 = load ptr, ptr %x11.addr, align 8
  %315 = load i32, ptr %i__, align 4
  %add293 = add nsw i32 %315, 1
  %316 = load i32, ptr %i__, align 4
  %add294 = add nsw i32 %316, 1
  %317 = load i32, ptr %x11_dim1, align 4
  %mul295 = mul nsw i32 %add294, %317
  %add296 = add nsw i32 %add293, %mul295
  %idxprom297 = sext i32 %add296 to i64
  %arrayidx298 = getelementptr inbounds %struct.doublecomplex, ptr %314, i64 %idxprom297
  %call299 = call double @dznrm2_(ptr noundef %i__2, ptr noundef %arrayidx292, ptr noundef @c__1, ptr noundef %arrayidx298, ptr noundef @c__1)
  store double %call299, ptr %d__1, align 8
  %318 = load ptr, ptr %m.addr, align 8
  %319 = load i32, ptr %318, align 4
  %320 = load ptr, ptr %p.addr, align 8
  %321 = load i32, ptr %320, align 4
  %sub300 = sub nsw i32 %319, %321
  %322 = load i32, ptr %i__, align 4
  %sub301 = sub nsw i32 %sub300, %322
  store i32 %sub301, ptr %i__3, align 4
  %323 = load ptr, ptr %x21.addr, align 8
  %324 = load i32, ptr %i__, align 4
  %add302 = add nsw i32 %324, 1
  %325 = load i32, ptr %i__, align 4
  %add303 = add nsw i32 %325, 1
  %326 = load i32, ptr %x21_dim1, align 4
  %mul304 = mul nsw i32 %add303, %326
  %add305 = add nsw i32 %add302, %mul304
  %idxprom306 = sext i32 %add305 to i64
  %arrayidx307 = getelementptr inbounds %struct.doublecomplex, ptr %323, i64 %idxprom306
  %327 = load ptr, ptr %x21.addr, align 8
  %328 = load i32, ptr %i__, align 4
  %add308 = add nsw i32 %328, 1
  %329 = load i32, ptr %i__, align 4
  %add309 = add nsw i32 %329, 1
  %330 = load i32, ptr %x21_dim1, align 4
  %mul310 = mul nsw i32 %add309, %330
  %add311 = add nsw i32 %add308, %mul310
  %idxprom312 = sext i32 %add311 to i64
  %arrayidx313 = getelementptr inbounds %struct.doublecomplex, ptr %327, i64 %idxprom312
  %call314 = call double @dznrm2_(ptr noundef %i__3, ptr noundef %arrayidx307, ptr noundef @c__1, ptr noundef %arrayidx313, ptr noundef @c__1)
  store double %call314, ptr %d__2, align 8
  %331 = load double, ptr %d__1, align 8
  %332 = load double, ptr %d__1, align 8
  %333 = load double, ptr %d__2, align 8
  %334 = load double, ptr %d__2, align 8
  %mul316 = fmul double %333, %334
  %335 = call double @llvm.fmuladd.f64(double %331, double %332, double %mul316)
  %call317 = call double @sqrt(double noundef %335) #4
  store double %call317, ptr %c__, align 8
  %336 = load double, ptr %s, align 8
  %337 = load double, ptr %c__, align 8
  %call318 = call double @atan2(double noundef %336, double noundef %337) #4
  %338 = load ptr, ptr %phi.addr, align 8
  %339 = load i32, ptr %i__, align 4
  %idxprom319 = sext i32 %339 to i64
  %arrayidx320 = getelementptr inbounds double, ptr %338, i64 %idxprom319
  store double %call318, ptr %arrayidx320, align 8
  %340 = load ptr, ptr %p.addr, align 8
  %341 = load i32, ptr %340, align 4
  %342 = load i32, ptr %i__, align 4
  %sub321 = sub nsw i32 %341, %342
  store i32 %sub321, ptr %i__2, align 4
  %343 = load ptr, ptr %m.addr, align 8
  %344 = load i32, ptr %343, align 4
  %345 = load ptr, ptr %p.addr, align 8
  %346 = load i32, ptr %345, align 4
  %sub322 = sub nsw i32 %344, %346
  %347 = load i32, ptr %i__, align 4
  %sub323 = sub nsw i32 %sub322, %347
  store i32 %sub323, ptr %i__3, align 4
  %348 = load ptr, ptr %q.addr, align 8
  %349 = load i32, ptr %348, align 4
  %350 = load i32, ptr %i__, align 4
  %sub324 = sub nsw i32 %349, %350
  %sub325 = sub nsw i32 %sub324, 1
  store i32 %sub325, ptr %i__4, align 4
  %351 = load ptr, ptr %x11.addr, align 8
  %352 = load i32, ptr %i__, align 4
  %add326 = add nsw i32 %352, 1
  %353 = load i32, ptr %i__, align 4
  %add327 = add nsw i32 %353, 1
  %354 = load i32, ptr %x11_dim1, align 4
  %mul328 = mul nsw i32 %add327, %354
  %add329 = add nsw i32 %add326, %mul328
  %idxprom330 = sext i32 %add329 to i64
  %arrayidx331 = getelementptr inbounds %struct.doublecomplex, ptr %351, i64 %idxprom330
  %355 = load ptr, ptr %x21.addr, align 8
  %356 = load i32, ptr %i__, align 4
  %add332 = add nsw i32 %356, 1
  %357 = load i32, ptr %i__, align 4
  %add333 = add nsw i32 %357, 1
  %358 = load i32, ptr %x21_dim1, align 4
  %mul334 = mul nsw i32 %add333, %358
  %add335 = add nsw i32 %add332, %mul334
  %idxprom336 = sext i32 %add335 to i64
  %arrayidx337 = getelementptr inbounds %struct.doublecomplex, ptr %355, i64 %idxprom336
  %359 = load ptr, ptr %x11.addr, align 8
  %360 = load i32, ptr %i__, align 4
  %add338 = add nsw i32 %360, 1
  %361 = load i32, ptr %i__, align 4
  %add339 = add nsw i32 %361, 2
  %362 = load i32, ptr %x11_dim1, align 4
  %mul340 = mul nsw i32 %add339, %362
  %add341 = add nsw i32 %add338, %mul340
  %idxprom342 = sext i32 %add341 to i64
  %arrayidx343 = getelementptr inbounds %struct.doublecomplex, ptr %359, i64 %idxprom342
  %363 = load ptr, ptr %ldx11.addr, align 8
  %364 = load ptr, ptr %x21.addr, align 8
  %365 = load i32, ptr %i__, align 4
  %add344 = add nsw i32 %365, 1
  %366 = load i32, ptr %i__, align 4
  %add345 = add nsw i32 %366, 2
  %367 = load i32, ptr %x21_dim1, align 4
  %mul346 = mul nsw i32 %add345, %367
  %add347 = add nsw i32 %add344, %mul346
  %idxprom348 = sext i32 %add347 to i64
  %arrayidx349 = getelementptr inbounds %struct.doublecomplex, ptr %364, i64 %idxprom348
  %368 = load ptr, ptr %ldx21.addr, align 8
  %369 = load ptr, ptr %work.addr, align 8
  %370 = load i32, ptr %iorbdb5, align 4
  %idxprom350 = sext i32 %370 to i64
  %arrayidx351 = getelementptr inbounds %struct.doublecomplex, ptr %369, i64 %idxprom350
  %call352 = call i32 @zunbdb5_(ptr noundef %i__2, ptr noundef %i__3, ptr noundef %i__4, ptr noundef %arrayidx331, ptr noundef @c__1, ptr noundef %arrayidx337, ptr noundef @c__1, ptr noundef %arrayidx343, ptr noundef %363, ptr noundef %arrayidx349, ptr noundef %368, ptr noundef %arrayidx351, ptr noundef %lorbdb5, ptr noundef %childinfo)
  br label %if.end353

if.end353:                                        ; preds = %if.then193, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end353
  %371 = load i32, ptr %i__, align 4
  %inc = add nsw i32 %371, 1
  store i32 %inc, ptr %i__, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then89, %if.then85
  %372 = load i32, ptr %retval, align 4
  ret i32 %372
}

declare i32 @xerbla_(ptr noundef, ptr noundef) #1

declare i32 @zlarfgp_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
declare double @atan2(double noundef, double noundef) #2

; Function Attrs: nounwind
declare double @cos(double noundef) #2

; Function Attrs: nounwind
declare double @sin(double noundef) #2

declare void @d_cnjg(ptr noundef, ptr noundef) #1

declare i32 @zlarf_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @zdrot_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @zlacgv_(ptr noundef, ptr noundef, ptr noundef) #1

declare double @dznrm2_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
declare double @sqrt(double noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

declare i32 @zunbdb5_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

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

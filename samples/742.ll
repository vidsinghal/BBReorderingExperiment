; ModuleID = 'samples/742.bc'
source_filename = "/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/map/lapack2flamec/f2c/c/cunbdb2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.complex = type { float, float }

@.str = private unnamed_addr constant [8 x i8] c"CUNBDB2\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@c__1 = internal global i32 1, align 4
@c_b1 = internal global %struct.complex { float -1.000000e+00, float 0.000000e+00 }, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"L\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @cunbdb2_(ptr noundef %m, ptr noundef %p, ptr noundef %q, ptr noundef %x11, ptr noundef %ldx11, ptr noundef %x21, ptr noundef %ldx21, ptr noundef %theta, ptr noundef %phi, ptr noundef %taup1, ptr noundef %taup2, ptr noundef %tauq1, ptr noundef %work, ptr noundef %lwork, ptr noundef %info) #0 {
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
  %r__1 = alloca float, align 4
  %r__2 = alloca float, align 4
  %q__1 = alloca %struct.complex, align 4
  %lworkmin = alloca i32, align 4
  %lworkopt = alloca i32, align 4
  %c__ = alloca float, align 4
  %i__ = alloca i32, align 4
  %s = alloca float, align 4
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
  %add.ptr = getelementptr inbounds %struct.complex, ptr %4, i64 %idx.neg
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
  %add.ptr4 = getelementptr inbounds %struct.complex, ptr %9, i64 %idx.neg3
  store ptr %add.ptr4, ptr %x21.addr, align 8
  %10 = load ptr, ptr %theta.addr, align 8
  %incdec.ptr = getelementptr inbounds float, ptr %10, i32 -1
  store ptr %incdec.ptr, ptr %theta.addr, align 8
  %11 = load ptr, ptr %phi.addr, align 8
  %incdec.ptr5 = getelementptr inbounds float, ptr %11, i32 -1
  store ptr %incdec.ptr5, ptr %phi.addr, align 8
  %12 = load ptr, ptr %taup1.addr, align 8
  %incdec.ptr6 = getelementptr inbounds %struct.complex, ptr %12, i32 -1
  store ptr %incdec.ptr6, ptr %taup1.addr, align 8
  %13 = load ptr, ptr %taup2.addr, align 8
  %incdec.ptr7 = getelementptr inbounds %struct.complex, ptr %13, i32 -1
  store ptr %incdec.ptr7, ptr %taup2.addr, align 8
  %14 = load ptr, ptr %tauq1.addr, align 8
  %incdec.ptr8 = getelementptr inbounds %struct.complex, ptr %14, i32 -1
  store ptr %incdec.ptr8, ptr %tauq1.addr, align 8
  %15 = load ptr, ptr %work.addr, align 8
  %incdec.ptr9 = getelementptr inbounds %struct.complex, ptr %15, i32 -1
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
  br label %if.end48

if.else:                                          ; preds = %entry
  %22 = load ptr, ptr %p.addr, align 8
  %23 = load i32, ptr %22, align 4
  %cmp12 = icmp slt i32 %23, 0
  br i1 %cmp12, label %if.then16, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %24 = load ptr, ptr %p.addr, align 8
  %25 = load i32, ptr %24, align 4
  %26 = load ptr, ptr %m.addr, align 8
  %27 = load i32, ptr %26, align 4
  %28 = load ptr, ptr %p.addr, align 8
  %29 = load i32, ptr %28, align 4
  %sub = sub nsw i32 %27, %29
  %cmp14 = icmp sgt i32 %25, %sub
  br i1 %cmp14, label %if.then16, label %if.else17

if.then16:                                        ; preds = %lor.lhs.false, %if.else
  %30 = load ptr, ptr %info.addr, align 8
  store i32 -2, ptr %30, align 4
  br label %if.end47

if.else17:                                        ; preds = %lor.lhs.false
  %31 = load ptr, ptr %q.addr, align 8
  %32 = load i32, ptr %31, align 4
  %cmp18 = icmp slt i32 %32, 0
  br i1 %cmp18, label %if.then27, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %if.else17
  %33 = load ptr, ptr %q.addr, align 8
  %34 = load i32, ptr %33, align 4
  %35 = load ptr, ptr %p.addr, align 8
  %36 = load i32, ptr %35, align 4
  %cmp21 = icmp slt i32 %34, %36
  br i1 %cmp21, label %if.then27, label %lor.lhs.false23

lor.lhs.false23:                                  ; preds = %lor.lhs.false20
  %37 = load ptr, ptr %m.addr, align 8
  %38 = load i32, ptr %37, align 4
  %39 = load ptr, ptr %q.addr, align 8
  %40 = load i32, ptr %39, align 4
  %sub24 = sub nsw i32 %38, %40
  %41 = load ptr, ptr %p.addr, align 8
  %42 = load i32, ptr %41, align 4
  %cmp25 = icmp slt i32 %sub24, %42
  br i1 %cmp25, label %if.then27, label %if.else28

if.then27:                                        ; preds = %lor.lhs.false23, %lor.lhs.false20, %if.else17
  %43 = load ptr, ptr %info.addr, align 8
  store i32 -3, ptr %43, align 4
  br label %if.end46

if.else28:                                        ; preds = %lor.lhs.false23
  %44 = load ptr, ptr %ldx11.addr, align 8
  %45 = load i32, ptr %44, align 4
  %46 = load ptr, ptr %p.addr, align 8
  %47 = load i32, ptr %46, align 4
  %cmp29 = icmp sge i32 1, %47
  br i1 %cmp29, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else28
  br label %cond.end

cond.false:                                       ; preds = %if.else28
  %48 = load ptr, ptr %p.addr, align 8
  %49 = load i32, ptr %48, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %49, %cond.false ]
  %cmp31 = icmp slt i32 %45, %cond
  br i1 %cmp31, label %if.then33, label %if.else34

if.then33:                                        ; preds = %cond.end
  %50 = load ptr, ptr %info.addr, align 8
  store i32 -5, ptr %50, align 4
  br label %if.end45

if.else34:                                        ; preds = %cond.end
  store i32 1, ptr %i__1, align 4
  %51 = load ptr, ptr %m.addr, align 8
  %52 = load i32, ptr %51, align 4
  %53 = load ptr, ptr %p.addr, align 8
  %54 = load i32, ptr %53, align 4
  %sub35 = sub nsw i32 %52, %54
  store i32 %sub35, ptr %i__2, align 4
  %55 = load ptr, ptr %ldx21.addr, align 8
  %56 = load i32, ptr %55, align 4
  %57 = load i32, ptr %i__1, align 4
  %58 = load i32, ptr %i__2, align 4
  %cmp36 = icmp sge i32 %57, %58
  br i1 %cmp36, label %cond.true38, label %cond.false39

cond.true38:                                      ; preds = %if.else34
  %59 = load i32, ptr %i__1, align 4
  br label %cond.end40

cond.false39:                                     ; preds = %if.else34
  %60 = load i32, ptr %i__2, align 4
  br label %cond.end40

cond.end40:                                       ; preds = %cond.false39, %cond.true38
  %cond41 = phi i32 [ %59, %cond.true38 ], [ %60, %cond.false39 ]
  %cmp42 = icmp slt i32 %56, %cond41
  br i1 %cmp42, label %if.then44, label %if.end

if.then44:                                        ; preds = %cond.end40
  %61 = load ptr, ptr %info.addr, align 8
  store i32 -7, ptr %61, align 4
  br label %if.end

if.end:                                           ; preds = %if.then44, %cond.end40
  br label %if.end45

if.end45:                                         ; preds = %if.end, %if.then33
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %if.then27
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %if.then16
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %if.then
  %62 = load ptr, ptr %info.addr, align 8
  %63 = load i32, ptr %62, align 4
  %cmp49 = icmp eq i32 %63, 0
  br i1 %cmp49, label %if.then51, label %if.end84

if.then51:                                        ; preds = %if.end48
  store i32 2, ptr %ilarf, align 4
  %64 = load ptr, ptr %p.addr, align 8
  %65 = load i32, ptr %64, align 4
  %sub52 = sub nsw i32 %65, 1
  store i32 %sub52, ptr %i__1, align 4
  %66 = load ptr, ptr %m.addr, align 8
  %67 = load i32, ptr %66, align 4
  %68 = load ptr, ptr %p.addr, align 8
  %69 = load i32, ptr %68, align 4
  %sub53 = sub nsw i32 %67, %69
  store i32 %sub53, ptr %i__2, align 4
  %70 = load i32, ptr %i__1, align 4
  %71 = load i32, ptr %i__2, align 4
  %cmp54 = icmp sge i32 %70, %71
  br i1 %cmp54, label %cond.true56, label %cond.false57

cond.true56:                                      ; preds = %if.then51
  %72 = load i32, ptr %i__1, align 4
  br label %cond.end58

cond.false57:                                     ; preds = %if.then51
  %73 = load i32, ptr %i__2, align 4
  br label %cond.end58

cond.end58:                                       ; preds = %cond.false57, %cond.true56
  %cond59 = phi i32 [ %72, %cond.true56 ], [ %73, %cond.false57 ]
  store i32 %cond59, ptr %i__1, align 4
  %74 = load ptr, ptr %q.addr, align 8
  %75 = load i32, ptr %74, align 4
  %sub60 = sub nsw i32 %75, 1
  store i32 %sub60, ptr %i__2, align 4
  %76 = load i32, ptr %i__1, align 4
  %77 = load i32, ptr %i__2, align 4
  %cmp61 = icmp sge i32 %76, %77
  br i1 %cmp61, label %cond.true63, label %cond.false64

cond.true63:                                      ; preds = %cond.end58
  %78 = load i32, ptr %i__1, align 4
  br label %cond.end65

cond.false64:                                     ; preds = %cond.end58
  %79 = load i32, ptr %i__2, align 4
  br label %cond.end65

cond.end65:                                       ; preds = %cond.false64, %cond.true63
  %cond66 = phi i32 [ %78, %cond.true63 ], [ %79, %cond.false64 ]
  store i32 %cond66, ptr %llarf, align 4
  store i32 2, ptr %iorbdb5, align 4
  %80 = load ptr, ptr %q.addr, align 8
  %81 = load i32, ptr %80, align 4
  %sub67 = sub nsw i32 %81, 1
  store i32 %sub67, ptr %lorbdb5, align 4
  %82 = load i32, ptr %ilarf, align 4
  %83 = load i32, ptr %llarf, align 4
  %add68 = add nsw i32 %82, %83
  %sub69 = sub nsw i32 %add68, 1
  store i32 %sub69, ptr %i__1, align 4
  %84 = load i32, ptr %iorbdb5, align 4
  %85 = load i32, ptr %lorbdb5, align 4
  %add70 = add nsw i32 %84, %85
  %sub71 = sub nsw i32 %add70, 1
  store i32 %sub71, ptr %i__2, align 4
  %86 = load i32, ptr %i__1, align 4
  %87 = load i32, ptr %i__2, align 4
  %cmp72 = icmp sge i32 %86, %87
  br i1 %cmp72, label %cond.true74, label %cond.false75

cond.true74:                                      ; preds = %cond.end65
  %88 = load i32, ptr %i__1, align 4
  br label %cond.end76

cond.false75:                                     ; preds = %cond.end65
  %89 = load i32, ptr %i__2, align 4
  br label %cond.end76

cond.end76:                                       ; preds = %cond.false75, %cond.true74
  %cond77 = phi i32 [ %88, %cond.true74 ], [ %89, %cond.false75 ]
  store i32 %cond77, ptr %lworkopt, align 4
  %90 = load i32, ptr %lworkopt, align 4
  store i32 %90, ptr %lworkmin, align 4
  %91 = load i32, ptr %lworkopt, align 4
  %conv78 = sitofp i32 %91 to float
  %92 = load ptr, ptr %work.addr, align 8
  %arrayidx = getelementptr inbounds %struct.complex, ptr %92, i64 1
  %r = getelementptr inbounds %struct.complex, ptr %arrayidx, i32 0, i32 0
  store float %conv78, ptr %r, align 4
  %93 = load ptr, ptr %work.addr, align 8
  %arrayidx79 = getelementptr inbounds %struct.complex, ptr %93, i64 1
  %i = getelementptr inbounds %struct.complex, ptr %arrayidx79, i32 0, i32 1
  store float 0.000000e+00, ptr %i, align 4
  %94 = load ptr, ptr %lwork.addr, align 8
  %95 = load i32, ptr %94, align 4
  %96 = load i32, ptr %lworkmin, align 4
  %cmp80 = icmp slt i32 %95, %96
  br i1 %cmp80, label %land.lhs.true, label %if.end83

land.lhs.true:                                    ; preds = %cond.end76
  %97 = load i32, ptr %lquery, align 4
  %tobool = icmp ne i32 %97, 0
  br i1 %tobool, label %if.end83, label %if.then82

if.then82:                                        ; preds = %land.lhs.true
  %98 = load ptr, ptr %info.addr, align 8
  store i32 -14, ptr %98, align 4
  br label %if.end83

if.end83:                                         ; preds = %if.then82, %land.lhs.true, %cond.end76
  br label %if.end84

if.end84:                                         ; preds = %if.end83, %if.end48
  %99 = load ptr, ptr %info.addr, align 8
  %100 = load i32, ptr %99, align 4
  %cmp85 = icmp ne i32 %100, 0
  br i1 %cmp85, label %if.then87, label %if.else89

if.then87:                                        ; preds = %if.end84
  %101 = load ptr, ptr %info.addr, align 8
  %102 = load i32, ptr %101, align 4
  %sub88 = sub nsw i32 0, %102
  store i32 %sub88, ptr %i__1, align 4
  %call = call i32 @xerbla_(ptr noundef @.str, ptr noundef %i__1)
  store i32 0, ptr %retval, align 4
  br label %return

if.else89:                                        ; preds = %if.end84
  %103 = load i32, ptr %lquery, align 4
  %tobool90 = icmp ne i32 %103, 0
  br i1 %tobool90, label %if.then91, label %if.end92

if.then91:                                        ; preds = %if.else89
  store i32 0, ptr %retval, align 4
  br label %return

if.end92:                                         ; preds = %if.else89
  br label %if.end93

if.end93:                                         ; preds = %if.end92
  %104 = load ptr, ptr %p.addr, align 8
  %105 = load i32, ptr %104, align 4
  store i32 %105, ptr %i__1, align 4
  store i32 1, ptr %i__, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end93
  %106 = load i32, ptr %i__, align 4
  %107 = load i32, ptr %i__1, align 4
  %cmp94 = icmp sle i32 %106, %107
  br i1 %cmp94, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %108 = load i32, ptr %i__, align 4
  %cmp96 = icmp sgt i32 %108, 1
  br i1 %cmp96, label %if.then98, label %if.end109

if.then98:                                        ; preds = %for.body
  %109 = load ptr, ptr %q.addr, align 8
  %110 = load i32, ptr %109, align 4
  %111 = load i32, ptr %i__, align 4
  %sub99 = sub nsw i32 %110, %111
  %add100 = add nsw i32 %sub99, 1
  store i32 %add100, ptr %i__2, align 4
  %112 = load ptr, ptr %x11.addr, align 8
  %113 = load i32, ptr %i__, align 4
  %114 = load i32, ptr %i__, align 4
  %115 = load i32, ptr %x11_dim1, align 4
  %mul = mul nsw i32 %114, %115
  %add101 = add nsw i32 %113, %mul
  %idxprom = sext i32 %add101 to i64
  %arrayidx102 = getelementptr inbounds %struct.complex, ptr %112, i64 %idxprom
  %116 = load ptr, ptr %ldx11.addr, align 8
  %117 = load ptr, ptr %x21.addr, align 8
  %118 = load i32, ptr %i__, align 4
  %sub103 = sub nsw i32 %118, 1
  %119 = load i32, ptr %i__, align 4
  %120 = load i32, ptr %x21_dim1, align 4
  %mul104 = mul nsw i32 %119, %120
  %add105 = add nsw i32 %sub103, %mul104
  %idxprom106 = sext i32 %add105 to i64
  %arrayidx107 = getelementptr inbounds %struct.complex, ptr %117, i64 %idxprom106
  %121 = load ptr, ptr %ldx21.addr, align 8
  %call108 = call i32 @csrot_(ptr noundef %i__2, ptr noundef %arrayidx102, ptr noundef %116, ptr noundef %arrayidx107, ptr noundef %121, ptr noundef %c__, ptr noundef %s)
  br label %if.end109

if.end109:                                        ; preds = %if.then98, %for.body
  %122 = load ptr, ptr %q.addr, align 8
  %123 = load i32, ptr %122, align 4
  %124 = load i32, ptr %i__, align 4
  %sub110 = sub nsw i32 %123, %124
  %add111 = add nsw i32 %sub110, 1
  store i32 %add111, ptr %i__2, align 4
  %125 = load ptr, ptr %x11.addr, align 8
  %126 = load i32, ptr %i__, align 4
  %127 = load i32, ptr %i__, align 4
  %128 = load i32, ptr %x11_dim1, align 4
  %mul112 = mul nsw i32 %127, %128
  %add113 = add nsw i32 %126, %mul112
  %idxprom114 = sext i32 %add113 to i64
  %arrayidx115 = getelementptr inbounds %struct.complex, ptr %125, i64 %idxprom114
  %129 = load ptr, ptr %ldx11.addr, align 8
  %call116 = call i32 @clacgv_(ptr noundef %i__2, ptr noundef %arrayidx115, ptr noundef %129)
  %130 = load ptr, ptr %q.addr, align 8
  %131 = load i32, ptr %130, align 4
  %132 = load i32, ptr %i__, align 4
  %sub117 = sub nsw i32 %131, %132
  %add118 = add nsw i32 %sub117, 1
  store i32 %add118, ptr %i__2, align 4
  %133 = load ptr, ptr %x11.addr, align 8
  %134 = load i32, ptr %i__, align 4
  %135 = load i32, ptr %i__, align 4
  %136 = load i32, ptr %x11_dim1, align 4
  %mul119 = mul nsw i32 %135, %136
  %add120 = add nsw i32 %134, %mul119
  %idxprom121 = sext i32 %add120 to i64
  %arrayidx122 = getelementptr inbounds %struct.complex, ptr %133, i64 %idxprom121
  %137 = load ptr, ptr %x11.addr, align 8
  %138 = load i32, ptr %i__, align 4
  %139 = load i32, ptr %i__, align 4
  %add123 = add nsw i32 %139, 1
  %140 = load i32, ptr %x11_dim1, align 4
  %mul124 = mul nsw i32 %add123, %140
  %add125 = add nsw i32 %138, %mul124
  %idxprom126 = sext i32 %add125 to i64
  %arrayidx127 = getelementptr inbounds %struct.complex, ptr %137, i64 %idxprom126
  %141 = load ptr, ptr %ldx11.addr, align 8
  %142 = load ptr, ptr %tauq1.addr, align 8
  %143 = load i32, ptr %i__, align 4
  %idxprom128 = sext i32 %143 to i64
  %arrayidx129 = getelementptr inbounds %struct.complex, ptr %142, i64 %idxprom128
  %call130 = call i32 @clarfgp_(ptr noundef %i__2, ptr noundef %arrayidx122, ptr noundef %arrayidx127, ptr noundef %141, ptr noundef %arrayidx129)
  %144 = load i32, ptr %i__, align 4
  %145 = load i32, ptr %i__, align 4
  %146 = load i32, ptr %x11_dim1, align 4
  %mul131 = mul nsw i32 %145, %146
  %add132 = add nsw i32 %144, %mul131
  store i32 %add132, ptr %i__2, align 4
  %147 = load ptr, ptr %x11.addr, align 8
  %148 = load i32, ptr %i__2, align 4
  %idxprom133 = sext i32 %148 to i64
  %arrayidx134 = getelementptr inbounds %struct.complex, ptr %147, i64 %idxprom133
  %r135 = getelementptr inbounds %struct.complex, ptr %arrayidx134, i32 0, i32 0
  %149 = load float, ptr %r135, align 4
  store float %149, ptr %c__, align 4
  %150 = load i32, ptr %i__, align 4
  %151 = load i32, ptr %i__, align 4
  %152 = load i32, ptr %x11_dim1, align 4
  %mul136 = mul nsw i32 %151, %152
  %add137 = add nsw i32 %150, %mul136
  store i32 %add137, ptr %i__2, align 4
  %153 = load ptr, ptr %x11.addr, align 8
  %154 = load i32, ptr %i__2, align 4
  %idxprom138 = sext i32 %154 to i64
  %arrayidx139 = getelementptr inbounds %struct.complex, ptr %153, i64 %idxprom138
  %r140 = getelementptr inbounds %struct.complex, ptr %arrayidx139, i32 0, i32 0
  store float 1.000000e+00, ptr %r140, align 4
  %155 = load ptr, ptr %x11.addr, align 8
  %156 = load i32, ptr %i__2, align 4
  %idxprom141 = sext i32 %156 to i64
  %arrayidx142 = getelementptr inbounds %struct.complex, ptr %155, i64 %idxprom141
  %i143 = getelementptr inbounds %struct.complex, ptr %arrayidx142, i32 0, i32 1
  store float 0.000000e+00, ptr %i143, align 4
  %157 = load ptr, ptr %p.addr, align 8
  %158 = load i32, ptr %157, align 4
  %159 = load i32, ptr %i__, align 4
  %sub144 = sub nsw i32 %158, %159
  store i32 %sub144, ptr %i__2, align 4
  %160 = load ptr, ptr %q.addr, align 8
  %161 = load i32, ptr %160, align 4
  %162 = load i32, ptr %i__, align 4
  %sub145 = sub nsw i32 %161, %162
  %add146 = add nsw i32 %sub145, 1
  store i32 %add146, ptr %i__3, align 4
  %163 = load ptr, ptr %x11.addr, align 8
  %164 = load i32, ptr %i__, align 4
  %165 = load i32, ptr %i__, align 4
  %166 = load i32, ptr %x11_dim1, align 4
  %mul147 = mul nsw i32 %165, %166
  %add148 = add nsw i32 %164, %mul147
  %idxprom149 = sext i32 %add148 to i64
  %arrayidx150 = getelementptr inbounds %struct.complex, ptr %163, i64 %idxprom149
  %167 = load ptr, ptr %ldx11.addr, align 8
  %168 = load ptr, ptr %tauq1.addr, align 8
  %169 = load i32, ptr %i__, align 4
  %idxprom151 = sext i32 %169 to i64
  %arrayidx152 = getelementptr inbounds %struct.complex, ptr %168, i64 %idxprom151
  %170 = load ptr, ptr %x11.addr, align 8
  %171 = load i32, ptr %i__, align 4
  %add153 = add nsw i32 %171, 1
  %172 = load i32, ptr %i__, align 4
  %173 = load i32, ptr %x11_dim1, align 4
  %mul154 = mul nsw i32 %172, %173
  %add155 = add nsw i32 %add153, %mul154
  %idxprom156 = sext i32 %add155 to i64
  %arrayidx157 = getelementptr inbounds %struct.complex, ptr %170, i64 %idxprom156
  %174 = load ptr, ptr %ldx11.addr, align 8
  %175 = load ptr, ptr %work.addr, align 8
  %176 = load i32, ptr %ilarf, align 4
  %idxprom158 = sext i32 %176 to i64
  %arrayidx159 = getelementptr inbounds %struct.complex, ptr %175, i64 %idxprom158
  %call160 = call i32 @clarf_(ptr noundef @.str.1, ptr noundef %i__2, ptr noundef %i__3, ptr noundef %arrayidx150, ptr noundef %167, ptr noundef %arrayidx152, ptr noundef %arrayidx157, ptr noundef %174, ptr noundef %arrayidx159)
  %177 = load ptr, ptr %m.addr, align 8
  %178 = load i32, ptr %177, align 4
  %179 = load ptr, ptr %p.addr, align 8
  %180 = load i32, ptr %179, align 4
  %sub161 = sub nsw i32 %178, %180
  %181 = load i32, ptr %i__, align 4
  %sub162 = sub nsw i32 %sub161, %181
  %add163 = add nsw i32 %sub162, 1
  store i32 %add163, ptr %i__2, align 4
  %182 = load ptr, ptr %q.addr, align 8
  %183 = load i32, ptr %182, align 4
  %184 = load i32, ptr %i__, align 4
  %sub164 = sub nsw i32 %183, %184
  %add165 = add nsw i32 %sub164, 1
  store i32 %add165, ptr %i__3, align 4
  %185 = load ptr, ptr %x11.addr, align 8
  %186 = load i32, ptr %i__, align 4
  %187 = load i32, ptr %i__, align 4
  %188 = load i32, ptr %x11_dim1, align 4
  %mul166 = mul nsw i32 %187, %188
  %add167 = add nsw i32 %186, %mul166
  %idxprom168 = sext i32 %add167 to i64
  %arrayidx169 = getelementptr inbounds %struct.complex, ptr %185, i64 %idxprom168
  %189 = load ptr, ptr %ldx11.addr, align 8
  %190 = load ptr, ptr %tauq1.addr, align 8
  %191 = load i32, ptr %i__, align 4
  %idxprom170 = sext i32 %191 to i64
  %arrayidx171 = getelementptr inbounds %struct.complex, ptr %190, i64 %idxprom170
  %192 = load ptr, ptr %x21.addr, align 8
  %193 = load i32, ptr %i__, align 4
  %194 = load i32, ptr %i__, align 4
  %195 = load i32, ptr %x21_dim1, align 4
  %mul172 = mul nsw i32 %194, %195
  %add173 = add nsw i32 %193, %mul172
  %idxprom174 = sext i32 %add173 to i64
  %arrayidx175 = getelementptr inbounds %struct.complex, ptr %192, i64 %idxprom174
  %196 = load ptr, ptr %ldx21.addr, align 8
  %197 = load ptr, ptr %work.addr, align 8
  %198 = load i32, ptr %ilarf, align 4
  %idxprom176 = sext i32 %198 to i64
  %arrayidx177 = getelementptr inbounds %struct.complex, ptr %197, i64 %idxprom176
  %call178 = call i32 @clarf_(ptr noundef @.str.1, ptr noundef %i__2, ptr noundef %i__3, ptr noundef %arrayidx169, ptr noundef %189, ptr noundef %arrayidx171, ptr noundef %arrayidx175, ptr noundef %196, ptr noundef %arrayidx177)
  %199 = load ptr, ptr %q.addr, align 8
  %200 = load i32, ptr %199, align 4
  %201 = load i32, ptr %i__, align 4
  %sub179 = sub nsw i32 %200, %201
  %add180 = add nsw i32 %sub179, 1
  store i32 %add180, ptr %i__2, align 4
  %202 = load ptr, ptr %x11.addr, align 8
  %203 = load i32, ptr %i__, align 4
  %204 = load i32, ptr %i__, align 4
  %205 = load i32, ptr %x11_dim1, align 4
  %mul181 = mul nsw i32 %204, %205
  %add182 = add nsw i32 %203, %mul181
  %idxprom183 = sext i32 %add182 to i64
  %arrayidx184 = getelementptr inbounds %struct.complex, ptr %202, i64 %idxprom183
  %206 = load ptr, ptr %ldx11.addr, align 8
  %call185 = call i32 @clacgv_(ptr noundef %i__2, ptr noundef %arrayidx184, ptr noundef %206)
  %207 = load ptr, ptr %p.addr, align 8
  %208 = load i32, ptr %207, align 4
  %209 = load i32, ptr %i__, align 4
  %sub186 = sub nsw i32 %208, %209
  store i32 %sub186, ptr %i__2, align 4
  %210 = load ptr, ptr %x11.addr, align 8
  %211 = load i32, ptr %i__, align 4
  %add187 = add nsw i32 %211, 1
  %212 = load i32, ptr %i__, align 4
  %213 = load i32, ptr %x11_dim1, align 4
  %mul188 = mul nsw i32 %212, %213
  %add189 = add nsw i32 %add187, %mul188
  %idxprom190 = sext i32 %add189 to i64
  %arrayidx191 = getelementptr inbounds %struct.complex, ptr %210, i64 %idxprom190
  %214 = load ptr, ptr %x11.addr, align 8
  %215 = load i32, ptr %i__, align 4
  %add192 = add nsw i32 %215, 1
  %216 = load i32, ptr %i__, align 4
  %217 = load i32, ptr %x11_dim1, align 4
  %mul193 = mul nsw i32 %216, %217
  %add194 = add nsw i32 %add192, %mul193
  %idxprom195 = sext i32 %add194 to i64
  %arrayidx196 = getelementptr inbounds %struct.complex, ptr %214, i64 %idxprom195
  %call197 = call float @scnrm2_(ptr noundef %i__2, ptr noundef %arrayidx191, ptr noundef @c__1, ptr noundef %arrayidx196, ptr noundef @c__1)
  store float %call197, ptr %r__1, align 4
  %218 = load ptr, ptr %m.addr, align 8
  %219 = load i32, ptr %218, align 4
  %220 = load ptr, ptr %p.addr, align 8
  %221 = load i32, ptr %220, align 4
  %sub198 = sub nsw i32 %219, %221
  %222 = load i32, ptr %i__, align 4
  %sub199 = sub nsw i32 %sub198, %222
  %add200 = add nsw i32 %sub199, 1
  store i32 %add200, ptr %i__3, align 4
  %223 = load ptr, ptr %x21.addr, align 8
  %224 = load i32, ptr %i__, align 4
  %225 = load i32, ptr %i__, align 4
  %226 = load i32, ptr %x21_dim1, align 4
  %mul201 = mul nsw i32 %225, %226
  %add202 = add nsw i32 %224, %mul201
  %idxprom203 = sext i32 %add202 to i64
  %arrayidx204 = getelementptr inbounds %struct.complex, ptr %223, i64 %idxprom203
  %227 = load ptr, ptr %x21.addr, align 8
  %228 = load i32, ptr %i__, align 4
  %229 = load i32, ptr %i__, align 4
  %230 = load i32, ptr %x21_dim1, align 4
  %mul205 = mul nsw i32 %229, %230
  %add206 = add nsw i32 %228, %mul205
  %idxprom207 = sext i32 %add206 to i64
  %arrayidx208 = getelementptr inbounds %struct.complex, ptr %227, i64 %idxprom207
  %call209 = call float @scnrm2_(ptr noundef %i__3, ptr noundef %arrayidx204, ptr noundef @c__1, ptr noundef %arrayidx208, ptr noundef @c__1)
  store float %call209, ptr %r__2, align 4
  %231 = load float, ptr %r__1, align 4
  %232 = load float, ptr %r__1, align 4
  %233 = load float, ptr %r__2, align 4
  %234 = load float, ptr %r__2, align 4
  %mul211 = fmul float %233, %234
  %235 = call float @llvm.fmuladd.f32(float %231, float %232, float %mul211)
  %conv212 = fpext float %235 to double
  %call213 = call double @sqrt(double noundef %conv212) #4
  %conv214 = fptrunc double %call213 to float
  store float %conv214, ptr %s, align 4
  %236 = load float, ptr %s, align 4
  %conv215 = fpext float %236 to double
  %237 = load float, ptr %c__, align 4
  %conv216 = fpext float %237 to double
  %call217 = call double @atan2(double noundef %conv215, double noundef %conv216) #4
  %conv218 = fptrunc double %call217 to float
  %238 = load ptr, ptr %theta.addr, align 8
  %239 = load i32, ptr %i__, align 4
  %idxprom219 = sext i32 %239 to i64
  %arrayidx220 = getelementptr inbounds float, ptr %238, i64 %idxprom219
  store float %conv218, ptr %arrayidx220, align 4
  %240 = load ptr, ptr %p.addr, align 8
  %241 = load i32, ptr %240, align 4
  %242 = load i32, ptr %i__, align 4
  %sub221 = sub nsw i32 %241, %242
  store i32 %sub221, ptr %i__2, align 4
  %243 = load ptr, ptr %m.addr, align 8
  %244 = load i32, ptr %243, align 4
  %245 = load ptr, ptr %p.addr, align 8
  %246 = load i32, ptr %245, align 4
  %sub222 = sub nsw i32 %244, %246
  %247 = load i32, ptr %i__, align 4
  %sub223 = sub nsw i32 %sub222, %247
  %add224 = add nsw i32 %sub223, 1
  store i32 %add224, ptr %i__3, align 4
  %248 = load ptr, ptr %q.addr, align 8
  %249 = load i32, ptr %248, align 4
  %250 = load i32, ptr %i__, align 4
  %sub225 = sub nsw i32 %249, %250
  store i32 %sub225, ptr %i__4, align 4
  %251 = load ptr, ptr %x11.addr, align 8
  %252 = load i32, ptr %i__, align 4
  %add226 = add nsw i32 %252, 1
  %253 = load i32, ptr %i__, align 4
  %254 = load i32, ptr %x11_dim1, align 4
  %mul227 = mul nsw i32 %253, %254
  %add228 = add nsw i32 %add226, %mul227
  %idxprom229 = sext i32 %add228 to i64
  %arrayidx230 = getelementptr inbounds %struct.complex, ptr %251, i64 %idxprom229
  %255 = load ptr, ptr %x21.addr, align 8
  %256 = load i32, ptr %i__, align 4
  %257 = load i32, ptr %i__, align 4
  %258 = load i32, ptr %x21_dim1, align 4
  %mul231 = mul nsw i32 %257, %258
  %add232 = add nsw i32 %256, %mul231
  %idxprom233 = sext i32 %add232 to i64
  %arrayidx234 = getelementptr inbounds %struct.complex, ptr %255, i64 %idxprom233
  %259 = load ptr, ptr %x11.addr, align 8
  %260 = load i32, ptr %i__, align 4
  %add235 = add nsw i32 %260, 1
  %261 = load i32, ptr %i__, align 4
  %add236 = add nsw i32 %261, 1
  %262 = load i32, ptr %x11_dim1, align 4
  %mul237 = mul nsw i32 %add236, %262
  %add238 = add nsw i32 %add235, %mul237
  %idxprom239 = sext i32 %add238 to i64
  %arrayidx240 = getelementptr inbounds %struct.complex, ptr %259, i64 %idxprom239
  %263 = load ptr, ptr %ldx11.addr, align 8
  %264 = load ptr, ptr %x21.addr, align 8
  %265 = load i32, ptr %i__, align 4
  %266 = load i32, ptr %i__, align 4
  %add241 = add nsw i32 %266, 1
  %267 = load i32, ptr %x21_dim1, align 4
  %mul242 = mul nsw i32 %add241, %267
  %add243 = add nsw i32 %265, %mul242
  %idxprom244 = sext i32 %add243 to i64
  %arrayidx245 = getelementptr inbounds %struct.complex, ptr %264, i64 %idxprom244
  %268 = load ptr, ptr %ldx21.addr, align 8
  %269 = load ptr, ptr %work.addr, align 8
  %270 = load i32, ptr %iorbdb5, align 4
  %idxprom246 = sext i32 %270 to i64
  %arrayidx247 = getelementptr inbounds %struct.complex, ptr %269, i64 %idxprom246
  %call248 = call i32 @cunbdb5_(ptr noundef %i__2, ptr noundef %i__3, ptr noundef %i__4, ptr noundef %arrayidx230, ptr noundef @c__1, ptr noundef %arrayidx234, ptr noundef @c__1, ptr noundef %arrayidx240, ptr noundef %263, ptr noundef %arrayidx245, ptr noundef %268, ptr noundef %arrayidx247, ptr noundef %lorbdb5, ptr noundef %childinfo)
  %271 = load ptr, ptr %p.addr, align 8
  %272 = load i32, ptr %271, align 4
  %273 = load i32, ptr %i__, align 4
  %sub249 = sub nsw i32 %272, %273
  store i32 %sub249, ptr %i__2, align 4
  %274 = load ptr, ptr %x11.addr, align 8
  %275 = load i32, ptr %i__, align 4
  %add250 = add nsw i32 %275, 1
  %276 = load i32, ptr %i__, align 4
  %277 = load i32, ptr %x11_dim1, align 4
  %mul251 = mul nsw i32 %276, %277
  %add252 = add nsw i32 %add250, %mul251
  %idxprom253 = sext i32 %add252 to i64
  %arrayidx254 = getelementptr inbounds %struct.complex, ptr %274, i64 %idxprom253
  %call255 = call i32 @cscal_(ptr noundef %i__2, ptr noundef @c_b1, ptr noundef %arrayidx254, ptr noundef @c__1)
  %278 = load ptr, ptr %m.addr, align 8
  %279 = load i32, ptr %278, align 4
  %280 = load ptr, ptr %p.addr, align 8
  %281 = load i32, ptr %280, align 4
  %sub256 = sub nsw i32 %279, %281
  %282 = load i32, ptr %i__, align 4
  %sub257 = sub nsw i32 %sub256, %282
  %add258 = add nsw i32 %sub257, 1
  store i32 %add258, ptr %i__2, align 4
  %283 = load ptr, ptr %x21.addr, align 8
  %284 = load i32, ptr %i__, align 4
  %285 = load i32, ptr %i__, align 4
  %286 = load i32, ptr %x21_dim1, align 4
  %mul259 = mul nsw i32 %285, %286
  %add260 = add nsw i32 %284, %mul259
  %idxprom261 = sext i32 %add260 to i64
  %arrayidx262 = getelementptr inbounds %struct.complex, ptr %283, i64 %idxprom261
  %287 = load ptr, ptr %x21.addr, align 8
  %288 = load i32, ptr %i__, align 4
  %add263 = add nsw i32 %288, 1
  %289 = load i32, ptr %i__, align 4
  %290 = load i32, ptr %x21_dim1, align 4
  %mul264 = mul nsw i32 %289, %290
  %add265 = add nsw i32 %add263, %mul264
  %idxprom266 = sext i32 %add265 to i64
  %arrayidx267 = getelementptr inbounds %struct.complex, ptr %287, i64 %idxprom266
  %291 = load ptr, ptr %taup2.addr, align 8
  %292 = load i32, ptr %i__, align 4
  %idxprom268 = sext i32 %292 to i64
  %arrayidx269 = getelementptr inbounds %struct.complex, ptr %291, i64 %idxprom268
  %call270 = call i32 @clarfgp_(ptr noundef %i__2, ptr noundef %arrayidx262, ptr noundef %arrayidx267, ptr noundef @c__1, ptr noundef %arrayidx269)
  %293 = load i32, ptr %i__, align 4
  %294 = load ptr, ptr %p.addr, align 8
  %295 = load i32, ptr %294, align 4
  %cmp271 = icmp slt i32 %293, %295
  br i1 %cmp271, label %if.then273, label %if.end342

if.then273:                                       ; preds = %if.end109
  %296 = load ptr, ptr %p.addr, align 8
  %297 = load i32, ptr %296, align 4
  %298 = load i32, ptr %i__, align 4
  %sub274 = sub nsw i32 %297, %298
  store i32 %sub274, ptr %i__2, align 4
  %299 = load ptr, ptr %x11.addr, align 8
  %300 = load i32, ptr %i__, align 4
  %add275 = add nsw i32 %300, 1
  %301 = load i32, ptr %i__, align 4
  %302 = load i32, ptr %x11_dim1, align 4
  %mul276 = mul nsw i32 %301, %302
  %add277 = add nsw i32 %add275, %mul276
  %idxprom278 = sext i32 %add277 to i64
  %arrayidx279 = getelementptr inbounds %struct.complex, ptr %299, i64 %idxprom278
  %303 = load ptr, ptr %x11.addr, align 8
  %304 = load i32, ptr %i__, align 4
  %add280 = add nsw i32 %304, 2
  %305 = load i32, ptr %i__, align 4
  %306 = load i32, ptr %x11_dim1, align 4
  %mul281 = mul nsw i32 %305, %306
  %add282 = add nsw i32 %add280, %mul281
  %idxprom283 = sext i32 %add282 to i64
  %arrayidx284 = getelementptr inbounds %struct.complex, ptr %303, i64 %idxprom283
  %307 = load ptr, ptr %taup1.addr, align 8
  %308 = load i32, ptr %i__, align 4
  %idxprom285 = sext i32 %308 to i64
  %arrayidx286 = getelementptr inbounds %struct.complex, ptr %307, i64 %idxprom285
  %call287 = call i32 @clarfgp_(ptr noundef %i__2, ptr noundef %arrayidx279, ptr noundef %arrayidx284, ptr noundef @c__1, ptr noundef %arrayidx286)
  %309 = load ptr, ptr %x11.addr, align 8
  %310 = load i32, ptr %i__, align 4
  %add288 = add nsw i32 %310, 1
  %311 = load i32, ptr %i__, align 4
  %312 = load i32, ptr %x11_dim1, align 4
  %mul289 = mul nsw i32 %311, %312
  %add290 = add nsw i32 %add288, %mul289
  %idxprom291 = sext i32 %add290 to i64
  %arrayidx292 = getelementptr inbounds %struct.complex, ptr %309, i64 %idxprom291
  %r293 = getelementptr inbounds %struct.complex, ptr %arrayidx292, i32 0, i32 0
  %313 = load float, ptr %r293, align 4
  %conv294 = fpext float %313 to double
  %314 = load ptr, ptr %x21.addr, align 8
  %315 = load i32, ptr %i__, align 4
  %316 = load i32, ptr %i__, align 4
  %317 = load i32, ptr %x21_dim1, align 4
  %mul295 = mul nsw i32 %316, %317
  %add296 = add nsw i32 %315, %mul295
  %idxprom297 = sext i32 %add296 to i64
  %arrayidx298 = getelementptr inbounds %struct.complex, ptr %314, i64 %idxprom297
  %r299 = getelementptr inbounds %struct.complex, ptr %arrayidx298, i32 0, i32 0
  %318 = load float, ptr %r299, align 4
  %conv300 = fpext float %318 to double
  %call301 = call double @atan2(double noundef %conv294, double noundef %conv300) #4
  %conv302 = fptrunc double %call301 to float
  %319 = load ptr, ptr %phi.addr, align 8
  %320 = load i32, ptr %i__, align 4
  %idxprom303 = sext i32 %320 to i64
  %arrayidx304 = getelementptr inbounds float, ptr %319, i64 %idxprom303
  store float %conv302, ptr %arrayidx304, align 4
  %321 = load ptr, ptr %phi.addr, align 8
  %322 = load i32, ptr %i__, align 4
  %idxprom305 = sext i32 %322 to i64
  %arrayidx306 = getelementptr inbounds float, ptr %321, i64 %idxprom305
  %323 = load float, ptr %arrayidx306, align 4
  %conv307 = fpext float %323 to double
  %call308 = call double @cos(double noundef %conv307) #4
  %conv309 = fptrunc double %call308 to float
  store float %conv309, ptr %c__, align 4
  %324 = load ptr, ptr %phi.addr, align 8
  %325 = load i32, ptr %i__, align 4
  %idxprom310 = sext i32 %325 to i64
  %arrayidx311 = getelementptr inbounds float, ptr %324, i64 %idxprom310
  %326 = load float, ptr %arrayidx311, align 4
  %conv312 = fpext float %326 to double
  %call313 = call double @sin(double noundef %conv312) #4
  %conv314 = fptrunc double %call313 to float
  store float %conv314, ptr %s, align 4
  %327 = load i32, ptr %i__, align 4
  %add315 = add nsw i32 %327, 1
  %328 = load i32, ptr %i__, align 4
  %329 = load i32, ptr %x11_dim1, align 4
  %mul316 = mul nsw i32 %328, %329
  %add317 = add nsw i32 %add315, %mul316
  store i32 %add317, ptr %i__2, align 4
  %330 = load ptr, ptr %x11.addr, align 8
  %331 = load i32, ptr %i__2, align 4
  %idxprom318 = sext i32 %331 to i64
  %arrayidx319 = getelementptr inbounds %struct.complex, ptr %330, i64 %idxprom318
  %r320 = getelementptr inbounds %struct.complex, ptr %arrayidx319, i32 0, i32 0
  store float 1.000000e+00, ptr %r320, align 4
  %332 = load ptr, ptr %x11.addr, align 8
  %333 = load i32, ptr %i__2, align 4
  %idxprom321 = sext i32 %333 to i64
  %arrayidx322 = getelementptr inbounds %struct.complex, ptr %332, i64 %idxprom321
  %i323 = getelementptr inbounds %struct.complex, ptr %arrayidx322, i32 0, i32 1
  store float 0.000000e+00, ptr %i323, align 4
  %334 = load ptr, ptr %p.addr, align 8
  %335 = load i32, ptr %334, align 4
  %336 = load i32, ptr %i__, align 4
  %sub324 = sub nsw i32 %335, %336
  store i32 %sub324, ptr %i__2, align 4
  %337 = load ptr, ptr %q.addr, align 8
  %338 = load i32, ptr %337, align 4
  %339 = load i32, ptr %i__, align 4
  %sub325 = sub nsw i32 %338, %339
  store i32 %sub325, ptr %i__3, align 4
  %340 = load ptr, ptr %taup1.addr, align 8
  %341 = load i32, ptr %i__, align 4
  %idxprom326 = sext i32 %341 to i64
  %arrayidx327 = getelementptr inbounds %struct.complex, ptr %340, i64 %idxprom326
  call void @r_cnjg(ptr noundef %q__1, ptr noundef %arrayidx327)
  %342 = load ptr, ptr %x11.addr, align 8
  %343 = load i32, ptr %i__, align 4
  %add328 = add nsw i32 %343, 1
  %344 = load i32, ptr %i__, align 4
  %345 = load i32, ptr %x11_dim1, align 4
  %mul329 = mul nsw i32 %344, %345
  %add330 = add nsw i32 %add328, %mul329
  %idxprom331 = sext i32 %add330 to i64
  %arrayidx332 = getelementptr inbounds %struct.complex, ptr %342, i64 %idxprom331
  %346 = load ptr, ptr %x11.addr, align 8
  %347 = load i32, ptr %i__, align 4
  %add333 = add nsw i32 %347, 1
  %348 = load i32, ptr %i__, align 4
  %add334 = add nsw i32 %348, 1
  %349 = load i32, ptr %x11_dim1, align 4
  %mul335 = mul nsw i32 %add334, %349
  %add336 = add nsw i32 %add333, %mul335
  %idxprom337 = sext i32 %add336 to i64
  %arrayidx338 = getelementptr inbounds %struct.complex, ptr %346, i64 %idxprom337
  %350 = load ptr, ptr %ldx11.addr, align 8
  %351 = load ptr, ptr %work.addr, align 8
  %352 = load i32, ptr %ilarf, align 4
  %idxprom339 = sext i32 %352 to i64
  %arrayidx340 = getelementptr inbounds %struct.complex, ptr %351, i64 %idxprom339
  %call341 = call i32 @clarf_(ptr noundef @.str.2, ptr noundef %i__2, ptr noundef %i__3, ptr noundef %arrayidx332, ptr noundef @c__1, ptr noundef %q__1, ptr noundef %arrayidx338, ptr noundef %350, ptr noundef %arrayidx340)
  br label %if.end342

if.end342:                                        ; preds = %if.then273, %if.end109
  %353 = load i32, ptr %i__, align 4
  %354 = load i32, ptr %i__, align 4
  %355 = load i32, ptr %x21_dim1, align 4
  %mul343 = mul nsw i32 %354, %355
  %add344 = add nsw i32 %353, %mul343
  store i32 %add344, ptr %i__2, align 4
  %356 = load ptr, ptr %x21.addr, align 8
  %357 = load i32, ptr %i__2, align 4
  %idxprom345 = sext i32 %357 to i64
  %arrayidx346 = getelementptr inbounds %struct.complex, ptr %356, i64 %idxprom345
  %r347 = getelementptr inbounds %struct.complex, ptr %arrayidx346, i32 0, i32 0
  store float 1.000000e+00, ptr %r347, align 4
  %358 = load ptr, ptr %x21.addr, align 8
  %359 = load i32, ptr %i__2, align 4
  %idxprom348 = sext i32 %359 to i64
  %arrayidx349 = getelementptr inbounds %struct.complex, ptr %358, i64 %idxprom348
  %i350 = getelementptr inbounds %struct.complex, ptr %arrayidx349, i32 0, i32 1
  store float 0.000000e+00, ptr %i350, align 4
  %360 = load ptr, ptr %m.addr, align 8
  %361 = load i32, ptr %360, align 4
  %362 = load ptr, ptr %p.addr, align 8
  %363 = load i32, ptr %362, align 4
  %sub351 = sub nsw i32 %361, %363
  %364 = load i32, ptr %i__, align 4
  %sub352 = sub nsw i32 %sub351, %364
  %add353 = add nsw i32 %sub352, 1
  store i32 %add353, ptr %i__2, align 4
  %365 = load ptr, ptr %q.addr, align 8
  %366 = load i32, ptr %365, align 4
  %367 = load i32, ptr %i__, align 4
  %sub354 = sub nsw i32 %366, %367
  store i32 %sub354, ptr %i__3, align 4
  %368 = load ptr, ptr %taup2.addr, align 8
  %369 = load i32, ptr %i__, align 4
  %idxprom355 = sext i32 %369 to i64
  %arrayidx356 = getelementptr inbounds %struct.complex, ptr %368, i64 %idxprom355
  call void @r_cnjg(ptr noundef %q__1, ptr noundef %arrayidx356)
  %370 = load ptr, ptr %x21.addr, align 8
  %371 = load i32, ptr %i__, align 4
  %372 = load i32, ptr %i__, align 4
  %373 = load i32, ptr %x21_dim1, align 4
  %mul357 = mul nsw i32 %372, %373
  %add358 = add nsw i32 %371, %mul357
  %idxprom359 = sext i32 %add358 to i64
  %arrayidx360 = getelementptr inbounds %struct.complex, ptr %370, i64 %idxprom359
  %374 = load ptr, ptr %x21.addr, align 8
  %375 = load i32, ptr %i__, align 4
  %376 = load i32, ptr %i__, align 4
  %add361 = add nsw i32 %376, 1
  %377 = load i32, ptr %x21_dim1, align 4
  %mul362 = mul nsw i32 %add361, %377
  %add363 = add nsw i32 %375, %mul362
  %idxprom364 = sext i32 %add363 to i64
  %arrayidx365 = getelementptr inbounds %struct.complex, ptr %374, i64 %idxprom364
  %378 = load ptr, ptr %ldx21.addr, align 8
  %379 = load ptr, ptr %work.addr, align 8
  %380 = load i32, ptr %ilarf, align 4
  %idxprom366 = sext i32 %380 to i64
  %arrayidx367 = getelementptr inbounds %struct.complex, ptr %379, i64 %idxprom366
  %call368 = call i32 @clarf_(ptr noundef @.str.2, ptr noundef %i__2, ptr noundef %i__3, ptr noundef %arrayidx360, ptr noundef @c__1, ptr noundef %q__1, ptr noundef %arrayidx365, ptr noundef %378, ptr noundef %arrayidx367)
  br label %for.inc

for.inc:                                          ; preds = %if.end342
  %381 = load i32, ptr %i__, align 4
  %inc = add nsw i32 %381, 1
  store i32 %inc, ptr %i__, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %382 = load ptr, ptr %q.addr, align 8
  %383 = load i32, ptr %382, align 4
  store i32 %383, ptr %i__1, align 4
  %384 = load ptr, ptr %p.addr, align 8
  %385 = load i32, ptr %384, align 4
  %add369 = add nsw i32 %385, 1
  store i32 %add369, ptr %i__, align 4
  br label %for.cond370

for.cond370:                                      ; preds = %for.inc415, %for.end
  %386 = load i32, ptr %i__, align 4
  %387 = load i32, ptr %i__1, align 4
  %cmp371 = icmp sle i32 %386, %387
  br i1 %cmp371, label %for.body373, label %for.end417

for.body373:                                      ; preds = %for.cond370
  %388 = load ptr, ptr %m.addr, align 8
  %389 = load i32, ptr %388, align 4
  %390 = load ptr, ptr %p.addr, align 8
  %391 = load i32, ptr %390, align 4
  %sub374 = sub nsw i32 %389, %391
  %392 = load i32, ptr %i__, align 4
  %sub375 = sub nsw i32 %sub374, %392
  %add376 = add nsw i32 %sub375, 1
  store i32 %add376, ptr %i__2, align 4
  %393 = load ptr, ptr %x21.addr, align 8
  %394 = load i32, ptr %i__, align 4
  %395 = load i32, ptr %i__, align 4
  %396 = load i32, ptr %x21_dim1, align 4
  %mul377 = mul nsw i32 %395, %396
  %add378 = add nsw i32 %394, %mul377
  %idxprom379 = sext i32 %add378 to i64
  %arrayidx380 = getelementptr inbounds %struct.complex, ptr %393, i64 %idxprom379
  %397 = load ptr, ptr %x21.addr, align 8
  %398 = load i32, ptr %i__, align 4
  %add381 = add nsw i32 %398, 1
  %399 = load i32, ptr %i__, align 4
  %400 = load i32, ptr %x21_dim1, align 4
  %mul382 = mul nsw i32 %399, %400
  %add383 = add nsw i32 %add381, %mul382
  %idxprom384 = sext i32 %add383 to i64
  %arrayidx385 = getelementptr inbounds %struct.complex, ptr %397, i64 %idxprom384
  %401 = load ptr, ptr %taup2.addr, align 8
  %402 = load i32, ptr %i__, align 4
  %idxprom386 = sext i32 %402 to i64
  %arrayidx387 = getelementptr inbounds %struct.complex, ptr %401, i64 %idxprom386
  %call388 = call i32 @clarfgp_(ptr noundef %i__2, ptr noundef %arrayidx380, ptr noundef %arrayidx385, ptr noundef @c__1, ptr noundef %arrayidx387)
  %403 = load i32, ptr %i__, align 4
  %404 = load i32, ptr %i__, align 4
  %405 = load i32, ptr %x21_dim1, align 4
  %mul389 = mul nsw i32 %404, %405
  %add390 = add nsw i32 %403, %mul389
  store i32 %add390, ptr %i__2, align 4
  %406 = load ptr, ptr %x21.addr, align 8
  %407 = load i32, ptr %i__2, align 4
  %idxprom391 = sext i32 %407 to i64
  %arrayidx392 = getelementptr inbounds %struct.complex, ptr %406, i64 %idxprom391
  %r393 = getelementptr inbounds %struct.complex, ptr %arrayidx392, i32 0, i32 0
  store float 1.000000e+00, ptr %r393, align 4
  %408 = load ptr, ptr %x21.addr, align 8
  %409 = load i32, ptr %i__2, align 4
  %idxprom394 = sext i32 %409 to i64
  %arrayidx395 = getelementptr inbounds %struct.complex, ptr %408, i64 %idxprom394
  %i396 = getelementptr inbounds %struct.complex, ptr %arrayidx395, i32 0, i32 1
  store float 0.000000e+00, ptr %i396, align 4
  %410 = load ptr, ptr %m.addr, align 8
  %411 = load i32, ptr %410, align 4
  %412 = load ptr, ptr %p.addr, align 8
  %413 = load i32, ptr %412, align 4
  %sub397 = sub nsw i32 %411, %413
  %414 = load i32, ptr %i__, align 4
  %sub398 = sub nsw i32 %sub397, %414
  %add399 = add nsw i32 %sub398, 1
  store i32 %add399, ptr %i__2, align 4
  %415 = load ptr, ptr %q.addr, align 8
  %416 = load i32, ptr %415, align 4
  %417 = load i32, ptr %i__, align 4
  %sub400 = sub nsw i32 %416, %417
  store i32 %sub400, ptr %i__3, align 4
  %418 = load ptr, ptr %taup2.addr, align 8
  %419 = load i32, ptr %i__, align 4
  %idxprom401 = sext i32 %419 to i64
  %arrayidx402 = getelementptr inbounds %struct.complex, ptr %418, i64 %idxprom401
  call void @r_cnjg(ptr noundef %q__1, ptr noundef %arrayidx402)
  %420 = load ptr, ptr %x21.addr, align 8
  %421 = load i32, ptr %i__, align 4
  %422 = load i32, ptr %i__, align 4
  %423 = load i32, ptr %x21_dim1, align 4
  %mul403 = mul nsw i32 %422, %423
  %add404 = add nsw i32 %421, %mul403
  %idxprom405 = sext i32 %add404 to i64
  %arrayidx406 = getelementptr inbounds %struct.complex, ptr %420, i64 %idxprom405
  %424 = load ptr, ptr %x21.addr, align 8
  %425 = load i32, ptr %i__, align 4
  %426 = load i32, ptr %i__, align 4
  %add407 = add nsw i32 %426, 1
  %427 = load i32, ptr %x21_dim1, align 4
  %mul408 = mul nsw i32 %add407, %427
  %add409 = add nsw i32 %425, %mul408
  %idxprom410 = sext i32 %add409 to i64
  %arrayidx411 = getelementptr inbounds %struct.complex, ptr %424, i64 %idxprom410
  %428 = load ptr, ptr %ldx21.addr, align 8
  %429 = load ptr, ptr %work.addr, align 8
  %430 = load i32, ptr %ilarf, align 4
  %idxprom412 = sext i32 %430 to i64
  %arrayidx413 = getelementptr inbounds %struct.complex, ptr %429, i64 %idxprom412
  %call414 = call i32 @clarf_(ptr noundef @.str.2, ptr noundef %i__2, ptr noundef %i__3, ptr noundef %arrayidx406, ptr noundef @c__1, ptr noundef %q__1, ptr noundef %arrayidx411, ptr noundef %428, ptr noundef %arrayidx413)
  br label %for.inc415

for.inc415:                                       ; preds = %for.body373
  %431 = load i32, ptr %i__, align 4
  %inc416 = add nsw i32 %431, 1
  store i32 %inc416, ptr %i__, align 4
  br label %for.cond370, !llvm.loop !7

for.end417:                                       ; preds = %for.cond370
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end417, %if.then91, %if.then87
  %432 = load i32, ptr %retval, align 4
  ret i32 %432
}

declare i32 @xerbla_(ptr noundef, ptr noundef) #1

declare i32 @csrot_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @clacgv_(ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @clarfgp_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @clarf_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare float @scnrm2_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
declare double @sqrt(double noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: nounwind
declare double @atan2(double noundef, double noundef) #2

declare i32 @cunbdb5_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @cscal_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
declare double @cos(double noundef) #2

; Function Attrs: nounwind
declare double @sin(double noundef) #2

declare void @r_cnjg(ptr noundef, ptr noundef) #1

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

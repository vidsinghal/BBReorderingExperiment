; ModuleID = 'samples/238.bc'
source_filename = "/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/map/lapack2flamec/f2c/c/stgsyl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"STGSYL\00", align 1
@c__2 = internal global i32 2, align 4
@c_n1 = internal global i32 -1, align 4
@c__5 = internal global i32 5, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"F\00", align 1
@c_b14 = internal global float 0.000000e+00, align 4
@c__1 = internal global i32 1, align 4
@c_b51 = internal global float -1.000000e+00, align 4
@c_b52 = internal global float 1.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define i32 @stgsyl_(ptr noundef %trans, ptr noundef %ijob, ptr noundef %m, ptr noundef %n, ptr noundef %a, ptr noundef %lda, ptr noundef %b, ptr noundef %ldb, ptr noundef %c__, ptr noundef %ldc, ptr noundef %d__, ptr noundef %ldd, ptr noundef %e, ptr noundef %lde, ptr noundef %f, ptr noundef %ldf, ptr noundef %scale, ptr noundef %dif, ptr noundef %work, ptr noundef %lwork, ptr noundef %iwork, ptr noundef %info) #0 {
entry:
  %retval = alloca i32, align 4
  %trans.addr = alloca ptr, align 8
  %ijob.addr = alloca ptr, align 8
  %m.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %lda.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %ldb.addr = alloca ptr, align 8
  %c__.addr = alloca ptr, align 8
  %ldc.addr = alloca ptr, align 8
  %d__.addr = alloca ptr, align 8
  %ldd.addr = alloca ptr, align 8
  %e.addr = alloca ptr, align 8
  %lde.addr = alloca ptr, align 8
  %f.addr = alloca ptr, align 8
  %ldf.addr = alloca ptr, align 8
  %scale.addr = alloca ptr, align 8
  %dif.addr = alloca ptr, align 8
  %work.addr = alloca ptr, align 8
  %lwork.addr = alloca ptr, align 8
  %iwork.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %a_dim1 = alloca i32, align 4
  %a_offset = alloca i32, align 4
  %b_dim1 = alloca i32, align 4
  %b_offset = alloca i32, align 4
  %c_dim1 = alloca i32, align 4
  %c_offset = alloca i32, align 4
  %d_dim1 = alloca i32, align 4
  %d_offset = alloca i32, align 4
  %e_dim1 = alloca i32, align 4
  %e_offset = alloca i32, align 4
  %f_dim1 = alloca i32, align 4
  %f_offset = alloca i32, align 4
  %i__1 = alloca i32, align 4
  %i__2 = alloca i32, align 4
  %i__3 = alloca i32, align 4
  %i__4 = alloca i32, align 4
  %i__ = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %p = alloca i32, align 4
  %q = alloca i32, align 4
  %ie = alloca i32, align 4
  %je = alloca i32, align 4
  %mb = alloca i32, align 4
  %nb = alloca i32, align 4
  %is = alloca i32, align 4
  %js = alloca i32, align 4
  %pq = alloca i32, align 4
  %dsum = alloca float, align 4
  %ppqq = alloca i32, align 4
  %ifunc = alloca i32, align 4
  %linfo = alloca i32, align 4
  %lwmin = alloca i32, align 4
  %scale2 = alloca float, align 4
  %dscale = alloca float, align 4
  %scaloc = alloca float, align 4
  %iround = alloca i32, align 4
  %notran = alloca i32, align 4
  %isolve = alloca i32, align 4
  %lquery = alloca i32, align 4
  store ptr %trans, ptr %trans.addr, align 8
  store ptr %ijob, ptr %ijob.addr, align 8
  store ptr %m, ptr %m.addr, align 8
  store ptr %n, ptr %n.addr, align 8
  store ptr %a, ptr %a.addr, align 8
  store ptr %lda, ptr %lda.addr, align 8
  store ptr %b, ptr %b.addr, align 8
  store ptr %ldb, ptr %ldb.addr, align 8
  store ptr %c__, ptr %c__.addr, align 8
  store ptr %ldc, ptr %ldc.addr, align 8
  store ptr %d__, ptr %d__.addr, align 8
  store ptr %ldd, ptr %ldd.addr, align 8
  store ptr %e, ptr %e.addr, align 8
  store ptr %lde, ptr %lde.addr, align 8
  store ptr %f, ptr %f.addr, align 8
  store ptr %ldf, ptr %ldf.addr, align 8
  store ptr %scale, ptr %scale.addr, align 8
  store ptr %dif, ptr %dif.addr, align 8
  store ptr %work, ptr %work.addr, align 8
  store ptr %lwork, ptr %lwork.addr, align 8
  store ptr %iwork, ptr %iwork.addr, align 8
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
  %5 = load ptr, ptr %ldb.addr, align 8
  %6 = load i32, ptr %5, align 4
  store i32 %6, ptr %b_dim1, align 4
  %7 = load i32, ptr %b_dim1, align 4
  %add1 = add nsw i32 1, %7
  store i32 %add1, ptr %b_offset, align 4
  %8 = load i32, ptr %b_offset, align 4
  %9 = load ptr, ptr %b.addr, align 8
  %idx.ext2 = sext i32 %8 to i64
  %idx.neg3 = sub i64 0, %idx.ext2
  %add.ptr4 = getelementptr inbounds float, ptr %9, i64 %idx.neg3
  store ptr %add.ptr4, ptr %b.addr, align 8
  %10 = load ptr, ptr %ldc.addr, align 8
  %11 = load i32, ptr %10, align 4
  store i32 %11, ptr %c_dim1, align 4
  %12 = load i32, ptr %c_dim1, align 4
  %add5 = add nsw i32 1, %12
  store i32 %add5, ptr %c_offset, align 4
  %13 = load i32, ptr %c_offset, align 4
  %14 = load ptr, ptr %c__.addr, align 8
  %idx.ext6 = sext i32 %13 to i64
  %idx.neg7 = sub i64 0, %idx.ext6
  %add.ptr8 = getelementptr inbounds float, ptr %14, i64 %idx.neg7
  store ptr %add.ptr8, ptr %c__.addr, align 8
  %15 = load ptr, ptr %ldd.addr, align 8
  %16 = load i32, ptr %15, align 4
  store i32 %16, ptr %d_dim1, align 4
  %17 = load i32, ptr %d_dim1, align 4
  %add9 = add nsw i32 1, %17
  store i32 %add9, ptr %d_offset, align 4
  %18 = load i32, ptr %d_offset, align 4
  %19 = load ptr, ptr %d__.addr, align 8
  %idx.ext10 = sext i32 %18 to i64
  %idx.neg11 = sub i64 0, %idx.ext10
  %add.ptr12 = getelementptr inbounds float, ptr %19, i64 %idx.neg11
  store ptr %add.ptr12, ptr %d__.addr, align 8
  %20 = load ptr, ptr %lde.addr, align 8
  %21 = load i32, ptr %20, align 4
  store i32 %21, ptr %e_dim1, align 4
  %22 = load i32, ptr %e_dim1, align 4
  %add13 = add nsw i32 1, %22
  store i32 %add13, ptr %e_offset, align 4
  %23 = load i32, ptr %e_offset, align 4
  %24 = load ptr, ptr %e.addr, align 8
  %idx.ext14 = sext i32 %23 to i64
  %idx.neg15 = sub i64 0, %idx.ext14
  %add.ptr16 = getelementptr inbounds float, ptr %24, i64 %idx.neg15
  store ptr %add.ptr16, ptr %e.addr, align 8
  %25 = load ptr, ptr %ldf.addr, align 8
  %26 = load i32, ptr %25, align 4
  store i32 %26, ptr %f_dim1, align 4
  %27 = load i32, ptr %f_dim1, align 4
  %add17 = add nsw i32 1, %27
  store i32 %add17, ptr %f_offset, align 4
  %28 = load i32, ptr %f_offset, align 4
  %29 = load ptr, ptr %f.addr, align 8
  %idx.ext18 = sext i32 %28 to i64
  %idx.neg19 = sub i64 0, %idx.ext18
  %add.ptr20 = getelementptr inbounds float, ptr %29, i64 %idx.neg19
  store ptr %add.ptr20, ptr %f.addr, align 8
  %30 = load ptr, ptr %work.addr, align 8
  %incdec.ptr = getelementptr inbounds float, ptr %30, i32 -1
  store ptr %incdec.ptr, ptr %work.addr, align 8
  %31 = load ptr, ptr %iwork.addr, align 8
  %incdec.ptr21 = getelementptr inbounds i32, ptr %31, i32 -1
  store ptr %incdec.ptr21, ptr %iwork.addr, align 8
  %32 = load ptr, ptr %info.addr, align 8
  store i32 0, ptr %32, align 4
  %33 = load ptr, ptr %trans.addr, align 8
  %call = call i32 @lsame_(ptr noundef %33, ptr noundef @.str)
  store i32 %call, ptr %notran, align 4
  %34 = load ptr, ptr %lwork.addr, align 8
  %35 = load i32, ptr %34, align 4
  %cmp = icmp eq i32 %35, -1
  %conv = zext i1 %cmp to i32
  store i32 %conv, ptr %lquery, align 4
  %36 = load i32, ptr %notran, align 4
  %tobool = icmp ne i32 %36, 0
  br i1 %tobool, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %37 = load ptr, ptr %trans.addr, align 8
  %call22 = call i32 @lsame_(ptr noundef %37, ptr noundef @.str.1)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %38 = load ptr, ptr %info.addr, align 8
  store i32 -1, ptr %38, align 4
  br label %if.end32

if.else:                                          ; preds = %land.lhs.true, %entry
  %39 = load i32, ptr %notran, align 4
  %tobool24 = icmp ne i32 %39, 0
  br i1 %tobool24, label %if.then25, label %if.end31

if.then25:                                        ; preds = %if.else
  %40 = load ptr, ptr %ijob.addr, align 8
  %41 = load i32, ptr %40, align 4
  %cmp26 = icmp slt i32 %41, 0
  br i1 %cmp26, label %if.then30, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then25
  %42 = load ptr, ptr %ijob.addr, align 8
  %43 = load i32, ptr %42, align 4
  %cmp28 = icmp sgt i32 %43, 4
  br i1 %cmp28, label %if.then30, label %if.end

if.then30:                                        ; preds = %lor.lhs.false, %if.then25
  %44 = load ptr, ptr %info.addr, align 8
  store i32 -2, ptr %44, align 4
  br label %if.end

if.end:                                           ; preds = %if.then30, %lor.lhs.false
  br label %if.end31

if.end31:                                         ; preds = %if.end, %if.else
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %if.then
  %45 = load ptr, ptr %info.addr, align 8
  %46 = load i32, ptr %45, align 4
  %cmp33 = icmp eq i32 %46, 0
  br i1 %cmp33, label %if.then35, label %if.end107

if.then35:                                        ; preds = %if.end32
  %47 = load ptr, ptr %m.addr, align 8
  %48 = load i32, ptr %47, align 4
  %cmp36 = icmp sle i32 %48, 0
  br i1 %cmp36, label %if.then38, label %if.else39

if.then38:                                        ; preds = %if.then35
  %49 = load ptr, ptr %info.addr, align 8
  store i32 -3, ptr %49, align 4
  br label %if.end106

if.else39:                                        ; preds = %if.then35
  %50 = load ptr, ptr %n.addr, align 8
  %51 = load i32, ptr %50, align 4
  %cmp40 = icmp sle i32 %51, 0
  br i1 %cmp40, label %if.then42, label %if.else43

if.then42:                                        ; preds = %if.else39
  %52 = load ptr, ptr %info.addr, align 8
  store i32 -4, ptr %52, align 4
  br label %if.end105

if.else43:                                        ; preds = %if.else39
  %53 = load ptr, ptr %lda.addr, align 8
  %54 = load i32, ptr %53, align 4
  %55 = load ptr, ptr %m.addr, align 8
  %56 = load i32, ptr %55, align 4
  %cmp44 = icmp sge i32 1, %56
  br i1 %cmp44, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else43
  br label %cond.end

cond.false:                                       ; preds = %if.else43
  %57 = load ptr, ptr %m.addr, align 8
  %58 = load i32, ptr %57, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %58, %cond.false ]
  %cmp46 = icmp slt i32 %54, %cond
  br i1 %cmp46, label %if.then48, label %if.else49

if.then48:                                        ; preds = %cond.end
  %59 = load ptr, ptr %info.addr, align 8
  store i32 -6, ptr %59, align 4
  br label %if.end104

if.else49:                                        ; preds = %cond.end
  %60 = load ptr, ptr %ldb.addr, align 8
  %61 = load i32, ptr %60, align 4
  %62 = load ptr, ptr %n.addr, align 8
  %63 = load i32, ptr %62, align 4
  %cmp50 = icmp sge i32 1, %63
  br i1 %cmp50, label %cond.true52, label %cond.false53

cond.true52:                                      ; preds = %if.else49
  br label %cond.end54

cond.false53:                                     ; preds = %if.else49
  %64 = load ptr, ptr %n.addr, align 8
  %65 = load i32, ptr %64, align 4
  br label %cond.end54

cond.end54:                                       ; preds = %cond.false53, %cond.true52
  %cond55 = phi i32 [ 1, %cond.true52 ], [ %65, %cond.false53 ]
  %cmp56 = icmp slt i32 %61, %cond55
  br i1 %cmp56, label %if.then58, label %if.else59

if.then58:                                        ; preds = %cond.end54
  %66 = load ptr, ptr %info.addr, align 8
  store i32 -8, ptr %66, align 4
  br label %if.end103

if.else59:                                        ; preds = %cond.end54
  %67 = load ptr, ptr %ldc.addr, align 8
  %68 = load i32, ptr %67, align 4
  %69 = load ptr, ptr %m.addr, align 8
  %70 = load i32, ptr %69, align 4
  %cmp60 = icmp sge i32 1, %70
  br i1 %cmp60, label %cond.true62, label %cond.false63

cond.true62:                                      ; preds = %if.else59
  br label %cond.end64

cond.false63:                                     ; preds = %if.else59
  %71 = load ptr, ptr %m.addr, align 8
  %72 = load i32, ptr %71, align 4
  br label %cond.end64

cond.end64:                                       ; preds = %cond.false63, %cond.true62
  %cond65 = phi i32 [ 1, %cond.true62 ], [ %72, %cond.false63 ]
  %cmp66 = icmp slt i32 %68, %cond65
  br i1 %cmp66, label %if.then68, label %if.else69

if.then68:                                        ; preds = %cond.end64
  %73 = load ptr, ptr %info.addr, align 8
  store i32 -10, ptr %73, align 4
  br label %if.end102

if.else69:                                        ; preds = %cond.end64
  %74 = load ptr, ptr %ldd.addr, align 8
  %75 = load i32, ptr %74, align 4
  %76 = load ptr, ptr %m.addr, align 8
  %77 = load i32, ptr %76, align 4
  %cmp70 = icmp sge i32 1, %77
  br i1 %cmp70, label %cond.true72, label %cond.false73

cond.true72:                                      ; preds = %if.else69
  br label %cond.end74

cond.false73:                                     ; preds = %if.else69
  %78 = load ptr, ptr %m.addr, align 8
  %79 = load i32, ptr %78, align 4
  br label %cond.end74

cond.end74:                                       ; preds = %cond.false73, %cond.true72
  %cond75 = phi i32 [ 1, %cond.true72 ], [ %79, %cond.false73 ]
  %cmp76 = icmp slt i32 %75, %cond75
  br i1 %cmp76, label %if.then78, label %if.else79

if.then78:                                        ; preds = %cond.end74
  %80 = load ptr, ptr %info.addr, align 8
  store i32 -12, ptr %80, align 4
  br label %if.end101

if.else79:                                        ; preds = %cond.end74
  %81 = load ptr, ptr %lde.addr, align 8
  %82 = load i32, ptr %81, align 4
  %83 = load ptr, ptr %n.addr, align 8
  %84 = load i32, ptr %83, align 4
  %cmp80 = icmp sge i32 1, %84
  br i1 %cmp80, label %cond.true82, label %cond.false83

cond.true82:                                      ; preds = %if.else79
  br label %cond.end84

cond.false83:                                     ; preds = %if.else79
  %85 = load ptr, ptr %n.addr, align 8
  %86 = load i32, ptr %85, align 4
  br label %cond.end84

cond.end84:                                       ; preds = %cond.false83, %cond.true82
  %cond85 = phi i32 [ 1, %cond.true82 ], [ %86, %cond.false83 ]
  %cmp86 = icmp slt i32 %82, %cond85
  br i1 %cmp86, label %if.then88, label %if.else89

if.then88:                                        ; preds = %cond.end84
  %87 = load ptr, ptr %info.addr, align 8
  store i32 -14, ptr %87, align 4
  br label %if.end100

if.else89:                                        ; preds = %cond.end84
  %88 = load ptr, ptr %ldf.addr, align 8
  %89 = load i32, ptr %88, align 4
  %90 = load ptr, ptr %m.addr, align 8
  %91 = load i32, ptr %90, align 4
  %cmp90 = icmp sge i32 1, %91
  br i1 %cmp90, label %cond.true92, label %cond.false93

cond.true92:                                      ; preds = %if.else89
  br label %cond.end94

cond.false93:                                     ; preds = %if.else89
  %92 = load ptr, ptr %m.addr, align 8
  %93 = load i32, ptr %92, align 4
  br label %cond.end94

cond.end94:                                       ; preds = %cond.false93, %cond.true92
  %cond95 = phi i32 [ 1, %cond.true92 ], [ %93, %cond.false93 ]
  %cmp96 = icmp slt i32 %89, %cond95
  br i1 %cmp96, label %if.then98, label %if.end99

if.then98:                                        ; preds = %cond.end94
  %94 = load ptr, ptr %info.addr, align 8
  store i32 -16, ptr %94, align 4
  br label %if.end99

if.end99:                                         ; preds = %if.then98, %cond.end94
  br label %if.end100

if.end100:                                        ; preds = %if.end99, %if.then88
  br label %if.end101

if.end101:                                        ; preds = %if.end100, %if.then78
  br label %if.end102

if.end102:                                        ; preds = %if.end101, %if.then68
  br label %if.end103

if.end103:                                        ; preds = %if.end102, %if.then58
  br label %if.end104

if.end104:                                        ; preds = %if.end103, %if.then48
  br label %if.end105

if.end105:                                        ; preds = %if.end104, %if.then42
  br label %if.end106

if.end106:                                        ; preds = %if.end105, %if.then38
  br label %if.end107

if.end107:                                        ; preds = %if.end106, %if.end32
  %95 = load ptr, ptr %info.addr, align 8
  %96 = load i32, ptr %95, align 4
  %cmp108 = icmp eq i32 %96, 0
  br i1 %cmp108, label %if.then110, label %if.end136

if.then110:                                       ; preds = %if.end107
  %97 = load i32, ptr %notran, align 4
  %tobool111 = icmp ne i32 %97, 0
  br i1 %tobool111, label %if.then112, label %if.else127

if.then112:                                       ; preds = %if.then110
  %98 = load ptr, ptr %ijob.addr, align 8
  %99 = load i32, ptr %98, align 4
  %cmp113 = icmp eq i32 %99, 1
  br i1 %cmp113, label %if.then118, label %lor.lhs.false115

lor.lhs.false115:                                 ; preds = %if.then112
  %100 = load ptr, ptr %ijob.addr, align 8
  %101 = load i32, ptr %100, align 4
  %cmp116 = icmp eq i32 %101, 2
  br i1 %cmp116, label %if.then118, label %if.else125

if.then118:                                       ; preds = %lor.lhs.false115, %if.then112
  store i32 1, ptr %i__1, align 4
  %102 = load ptr, ptr %m.addr, align 8
  %103 = load i32, ptr %102, align 4
  %shl = shl i32 %103, 1
  %104 = load ptr, ptr %n.addr, align 8
  %105 = load i32, ptr %104, align 4
  %mul = mul nsw i32 %shl, %105
  store i32 %mul, ptr %i__2, align 4
  %106 = load i32, ptr %i__1, align 4
  %107 = load i32, ptr %i__2, align 4
  %cmp119 = icmp sge i32 %106, %107
  br i1 %cmp119, label %cond.true121, label %cond.false122

cond.true121:                                     ; preds = %if.then118
  %108 = load i32, ptr %i__1, align 4
  br label %cond.end123

cond.false122:                                    ; preds = %if.then118
  %109 = load i32, ptr %i__2, align 4
  br label %cond.end123

cond.end123:                                      ; preds = %cond.false122, %cond.true121
  %cond124 = phi i32 [ %108, %cond.true121 ], [ %109, %cond.false122 ]
  store i32 %cond124, ptr %lwmin, align 4
  br label %if.end126

if.else125:                                       ; preds = %lor.lhs.false115
  store i32 1, ptr %lwmin, align 4
  br label %if.end126

if.end126:                                        ; preds = %if.else125, %cond.end123
  br label %if.end128

if.else127:                                       ; preds = %if.then110
  store i32 1, ptr %lwmin, align 4
  br label %if.end128

if.end128:                                        ; preds = %if.else127, %if.end126
  %110 = load i32, ptr %lwmin, align 4
  %conv129 = sitofp i32 %110 to float
  %111 = load ptr, ptr %work.addr, align 8
  %arrayidx = getelementptr inbounds float, ptr %111, i64 1
  store float %conv129, ptr %arrayidx, align 4
  %112 = load ptr, ptr %lwork.addr, align 8
  %113 = load i32, ptr %112, align 4
  %114 = load i32, ptr %lwmin, align 4
  %cmp130 = icmp slt i32 %113, %114
  br i1 %cmp130, label %land.lhs.true132, label %if.end135

land.lhs.true132:                                 ; preds = %if.end128
  %115 = load i32, ptr %lquery, align 4
  %tobool133 = icmp ne i32 %115, 0
  br i1 %tobool133, label %if.end135, label %if.then134

if.then134:                                       ; preds = %land.lhs.true132
  %116 = load ptr, ptr %info.addr, align 8
  store i32 -20, ptr %116, align 4
  br label %if.end135

if.end135:                                        ; preds = %if.then134, %land.lhs.true132, %if.end128
  br label %if.end136

if.end136:                                        ; preds = %if.end135, %if.end107
  %117 = load ptr, ptr %info.addr, align 8
  %118 = load i32, ptr %117, align 4
  %cmp137 = icmp ne i32 %118, 0
  br i1 %cmp137, label %if.then139, label %if.else141

if.then139:                                       ; preds = %if.end136
  %119 = load ptr, ptr %info.addr, align 8
  %120 = load i32, ptr %119, align 4
  %sub = sub nsw i32 0, %120
  store i32 %sub, ptr %i__1, align 4
  %call140 = call i32 @xerbla_(ptr noundef @.str.2, ptr noundef %i__1)
  store i32 0, ptr %retval, align 4
  br label %return

if.else141:                                       ; preds = %if.end136
  %121 = load i32, ptr %lquery, align 4
  %tobool142 = icmp ne i32 %121, 0
  br i1 %tobool142, label %if.then143, label %if.end144

if.then143:                                       ; preds = %if.else141
  store i32 0, ptr %retval, align 4
  br label %return

if.end144:                                        ; preds = %if.else141
  br label %if.end145

if.end145:                                        ; preds = %if.end144
  %122 = load ptr, ptr %m.addr, align 8
  %123 = load i32, ptr %122, align 4
  %cmp146 = icmp eq i32 %123, 0
  br i1 %cmp146, label %if.then151, label %lor.lhs.false148

lor.lhs.false148:                                 ; preds = %if.end145
  %124 = load ptr, ptr %n.addr, align 8
  %125 = load i32, ptr %124, align 4
  %cmp149 = icmp eq i32 %125, 0
  br i1 %cmp149, label %if.then151, label %if.end159

if.then151:                                       ; preds = %lor.lhs.false148, %if.end145
  %126 = load ptr, ptr %scale.addr, align 8
  store float 1.000000e+00, ptr %126, align 4
  %127 = load i32, ptr %notran, align 4
  %tobool152 = icmp ne i32 %127, 0
  br i1 %tobool152, label %if.then153, label %if.end158

if.then153:                                       ; preds = %if.then151
  %128 = load ptr, ptr %ijob.addr, align 8
  %129 = load i32, ptr %128, align 4
  %cmp154 = icmp ne i32 %129, 0
  br i1 %cmp154, label %if.then156, label %if.end157

if.then156:                                       ; preds = %if.then153
  %130 = load ptr, ptr %dif.addr, align 8
  store float 0.000000e+00, ptr %130, align 4
  br label %if.end157

if.end157:                                        ; preds = %if.then156, %if.then153
  br label %if.end158

if.end158:                                        ; preds = %if.end157, %if.then151
  store i32 0, ptr %retval, align 4
  br label %return

if.end159:                                        ; preds = %lor.lhs.false148
  %131 = load ptr, ptr %trans.addr, align 8
  %132 = load ptr, ptr %m.addr, align 8
  %133 = load ptr, ptr %n.addr, align 8
  %call160 = call i32 @ilaenv_(ptr noundef @c__2, ptr noundef @.str.2, ptr noundef %131, ptr noundef %132, ptr noundef %133, ptr noundef @c_n1, ptr noundef @c_n1)
  store i32 %call160, ptr %mb, align 4
  %134 = load ptr, ptr %trans.addr, align 8
  %135 = load ptr, ptr %m.addr, align 8
  %136 = load ptr, ptr %n.addr, align 8
  %call161 = call i32 @ilaenv_(ptr noundef @c__5, ptr noundef @.str.2, ptr noundef %134, ptr noundef %135, ptr noundef %136, ptr noundef @c_n1, ptr noundef @c_n1)
  store i32 %call161, ptr %nb, align 4
  store i32 1, ptr %isolve, align 4
  store i32 0, ptr %ifunc, align 4
  %137 = load i32, ptr %notran, align 4
  %tobool162 = icmp ne i32 %137, 0
  br i1 %tobool162, label %if.then163, label %if.end181

if.then163:                                       ; preds = %if.end159
  %138 = load ptr, ptr %ijob.addr, align 8
  %139 = load i32, ptr %138, align 4
  %cmp164 = icmp sge i32 %139, 3
  br i1 %cmp164, label %if.then166, label %if.else173

if.then166:                                       ; preds = %if.then163
  %140 = load ptr, ptr %ijob.addr, align 8
  %141 = load i32, ptr %140, align 4
  %sub167 = sub nsw i32 %141, 2
  store i32 %sub167, ptr %ifunc, align 4
  %142 = load ptr, ptr %m.addr, align 8
  %143 = load ptr, ptr %n.addr, align 8
  %144 = load ptr, ptr %c__.addr, align 8
  %145 = load i32, ptr %c_offset, align 4
  %idxprom = sext i32 %145 to i64
  %arrayidx168 = getelementptr inbounds float, ptr %144, i64 %idxprom
  %146 = load ptr, ptr %ldc.addr, align 8
  %call169 = call i32 @slaset_(ptr noundef @.str.3, ptr noundef %142, ptr noundef %143, ptr noundef @c_b14, ptr noundef @c_b14, ptr noundef %arrayidx168, ptr noundef %146)
  %147 = load ptr, ptr %m.addr, align 8
  %148 = load ptr, ptr %n.addr, align 8
  %149 = load ptr, ptr %f.addr, align 8
  %150 = load i32, ptr %f_offset, align 4
  %idxprom170 = sext i32 %150 to i64
  %arrayidx171 = getelementptr inbounds float, ptr %149, i64 %idxprom170
  %151 = load ptr, ptr %ldf.addr, align 8
  %call172 = call i32 @slaset_(ptr noundef @.str.3, ptr noundef %147, ptr noundef %148, ptr noundef @c_b14, ptr noundef @c_b14, ptr noundef %arrayidx171, ptr noundef %151)
  br label %if.end180

if.else173:                                       ; preds = %if.then163
  %152 = load ptr, ptr %ijob.addr, align 8
  %153 = load i32, ptr %152, align 4
  %cmp174 = icmp sge i32 %153, 1
  br i1 %cmp174, label %land.lhs.true176, label %if.end179

land.lhs.true176:                                 ; preds = %if.else173
  %154 = load i32, ptr %notran, align 4
  %tobool177 = icmp ne i32 %154, 0
  br i1 %tobool177, label %if.then178, label %if.end179

if.then178:                                       ; preds = %land.lhs.true176
  store i32 2, ptr %isolve, align 4
  br label %if.end179

if.end179:                                        ; preds = %if.then178, %land.lhs.true176, %if.else173
  br label %if.end180

if.end180:                                        ; preds = %if.end179, %if.then166
  br label %if.end181

if.end181:                                        ; preds = %if.end180, %if.end159
  %155 = load i32, ptr %mb, align 4
  %cmp182 = icmp sle i32 %155, 1
  br i1 %cmp182, label %land.lhs.true184, label %lor.lhs.false187

land.lhs.true184:                                 ; preds = %if.end181
  %156 = load i32, ptr %nb, align 4
  %cmp185 = icmp sle i32 %156, 1
  br i1 %cmp185, label %if.then193, label %lor.lhs.false187

lor.lhs.false187:                                 ; preds = %land.lhs.true184, %if.end181
  %157 = load i32, ptr %mb, align 4
  %158 = load ptr, ptr %m.addr, align 8
  %159 = load i32, ptr %158, align 4
  %cmp188 = icmp sge i32 %157, %159
  br i1 %cmp188, label %land.lhs.true190, label %if.end287

land.lhs.true190:                                 ; preds = %lor.lhs.false187
  %160 = load i32, ptr %nb, align 4
  %161 = load ptr, ptr %n.addr, align 8
  %162 = load i32, ptr %161, align 4
  %cmp191 = icmp sge i32 %160, %162
  br i1 %cmp191, label %if.then193, label %if.end287

if.then193:                                       ; preds = %land.lhs.true190, %land.lhs.true184
  %163 = load i32, ptr %isolve, align 4
  store i32 %163, ptr %i__1, align 4
  store i32 1, ptr %iround, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then193
  %164 = load i32, ptr %iround, align 4
  %165 = load i32, ptr %i__1, align 4
  %cmp194 = icmp sle i32 %164, %165
  br i1 %cmp194, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store float 0.000000e+00, ptr %dscale, align 4
  store float 1.000000e+00, ptr %dsum, align 4
  store i32 0, ptr %pq, align 4
  %166 = load ptr, ptr %trans.addr, align 8
  %167 = load ptr, ptr %m.addr, align 8
  %168 = load ptr, ptr %n.addr, align 8
  %169 = load ptr, ptr %a.addr, align 8
  %170 = load i32, ptr %a_offset, align 4
  %idxprom196 = sext i32 %170 to i64
  %arrayidx197 = getelementptr inbounds float, ptr %169, i64 %idxprom196
  %171 = load ptr, ptr %lda.addr, align 8
  %172 = load ptr, ptr %b.addr, align 8
  %173 = load i32, ptr %b_offset, align 4
  %idxprom198 = sext i32 %173 to i64
  %arrayidx199 = getelementptr inbounds float, ptr %172, i64 %idxprom198
  %174 = load ptr, ptr %ldb.addr, align 8
  %175 = load ptr, ptr %c__.addr, align 8
  %176 = load i32, ptr %c_offset, align 4
  %idxprom200 = sext i32 %176 to i64
  %arrayidx201 = getelementptr inbounds float, ptr %175, i64 %idxprom200
  %177 = load ptr, ptr %ldc.addr, align 8
  %178 = load ptr, ptr %d__.addr, align 8
  %179 = load i32, ptr %d_offset, align 4
  %idxprom202 = sext i32 %179 to i64
  %arrayidx203 = getelementptr inbounds float, ptr %178, i64 %idxprom202
  %180 = load ptr, ptr %ldd.addr, align 8
  %181 = load ptr, ptr %e.addr, align 8
  %182 = load i32, ptr %e_offset, align 4
  %idxprom204 = sext i32 %182 to i64
  %arrayidx205 = getelementptr inbounds float, ptr %181, i64 %idxprom204
  %183 = load ptr, ptr %lde.addr, align 8
  %184 = load ptr, ptr %f.addr, align 8
  %185 = load i32, ptr %f_offset, align 4
  %idxprom206 = sext i32 %185 to i64
  %arrayidx207 = getelementptr inbounds float, ptr %184, i64 %idxprom206
  %186 = load ptr, ptr %ldf.addr, align 8
  %187 = load ptr, ptr %scale.addr, align 8
  %188 = load ptr, ptr %iwork.addr, align 8
  %arrayidx208 = getelementptr inbounds i32, ptr %188, i64 1
  %189 = load ptr, ptr %info.addr, align 8
  %call209 = call i32 @stgsy2_(ptr noundef %166, ptr noundef %ifunc, ptr noundef %167, ptr noundef %168, ptr noundef %arrayidx197, ptr noundef %171, ptr noundef %arrayidx199, ptr noundef %174, ptr noundef %arrayidx201, ptr noundef %177, ptr noundef %arrayidx203, ptr noundef %180, ptr noundef %arrayidx205, ptr noundef %183, ptr noundef %arrayidx207, ptr noundef %186, ptr noundef %187, ptr noundef %dsum, ptr noundef %dscale, ptr noundef %arrayidx208, ptr noundef %pq, ptr noundef %189)
  %190 = load float, ptr %dscale, align 4
  %cmp210 = fcmp une float %190, 0.000000e+00
  br i1 %cmp210, label %if.then212, label %if.end240

if.then212:                                       ; preds = %for.body
  %191 = load ptr, ptr %ijob.addr, align 8
  %192 = load i32, ptr %191, align 4
  %cmp213 = icmp eq i32 %192, 1
  br i1 %cmp213, label %if.then218, label %lor.lhs.false215

lor.lhs.false215:                                 ; preds = %if.then212
  %193 = load ptr, ptr %ijob.addr, align 8
  %194 = load i32, ptr %193, align 4
  %cmp216 = icmp eq i32 %194, 3
  br i1 %cmp216, label %if.then218, label %if.else229

if.then218:                                       ; preds = %lor.lhs.false215, %if.then212
  %195 = load ptr, ptr %m.addr, align 8
  %196 = load i32, ptr %195, align 4
  %shl219 = shl i32 %196, 1
  %197 = load ptr, ptr %n.addr, align 8
  %198 = load i32, ptr %197, align 4
  %mul220 = mul nsw i32 %shl219, %198
  %conv221 = sitofp i32 %mul220 to float
  %conv222 = fpext float %conv221 to double
  %call223 = call double @sqrt(double noundef %conv222) #3
  %199 = load float, ptr %dscale, align 4
  %conv224 = fpext float %199 to double
  %200 = load float, ptr %dsum, align 4
  %conv225 = fpext float %200 to double
  %call226 = call double @sqrt(double noundef %conv225) #3
  %mul227 = fmul double %conv224, %call226
  %div = fdiv double %call223, %mul227
  %conv228 = fptrunc double %div to float
  %201 = load ptr, ptr %dif.addr, align 8
  store float %conv228, ptr %201, align 4
  br label %if.end239

if.else229:                                       ; preds = %lor.lhs.false215
  %202 = load i32, ptr %pq, align 4
  %conv230 = sitofp i32 %202 to float
  %conv231 = fpext float %conv230 to double
  %call232 = call double @sqrt(double noundef %conv231) #3
  %203 = load float, ptr %dscale, align 4
  %conv233 = fpext float %203 to double
  %204 = load float, ptr %dsum, align 4
  %conv234 = fpext float %204 to double
  %call235 = call double @sqrt(double noundef %conv234) #3
  %mul236 = fmul double %conv233, %call235
  %div237 = fdiv double %call232, %mul236
  %conv238 = fptrunc double %div237 to float
  %205 = load ptr, ptr %dif.addr, align 8
  store float %conv238, ptr %205, align 4
  br label %if.end239

if.end239:                                        ; preds = %if.else229, %if.then218
  br label %if.end240

if.end240:                                        ; preds = %if.end239, %for.body
  %206 = load i32, ptr %isolve, align 4
  %cmp241 = icmp eq i32 %206, 2
  br i1 %cmp241, label %land.lhs.true243, label %if.else267

land.lhs.true243:                                 ; preds = %if.end240
  %207 = load i32, ptr %iround, align 4
  %cmp244 = icmp eq i32 %207, 1
  br i1 %cmp244, label %if.then246, label %if.else267

if.then246:                                       ; preds = %land.lhs.true243
  %208 = load i32, ptr %notran, align 4
  %tobool247 = icmp ne i32 %208, 0
  br i1 %tobool247, label %if.then248, label %if.end249

if.then248:                                       ; preds = %if.then246
  %209 = load ptr, ptr %ijob.addr, align 8
  %210 = load i32, ptr %209, align 4
  store i32 %210, ptr %ifunc, align 4
  br label %if.end249

if.end249:                                        ; preds = %if.then248, %if.then246
  %211 = load ptr, ptr %scale.addr, align 8
  %212 = load float, ptr %211, align 4
  store float %212, ptr %scale2, align 4
  %213 = load ptr, ptr %m.addr, align 8
  %214 = load ptr, ptr %n.addr, align 8
  %215 = load ptr, ptr %c__.addr, align 8
  %216 = load i32, ptr %c_offset, align 4
  %idxprom250 = sext i32 %216 to i64
  %arrayidx251 = getelementptr inbounds float, ptr %215, i64 %idxprom250
  %217 = load ptr, ptr %ldc.addr, align 8
  %218 = load ptr, ptr %work.addr, align 8
  %arrayidx252 = getelementptr inbounds float, ptr %218, i64 1
  %219 = load ptr, ptr %m.addr, align 8
  %call253 = call i32 @slacpy_(ptr noundef @.str.3, ptr noundef %213, ptr noundef %214, ptr noundef %arrayidx251, ptr noundef %217, ptr noundef %arrayidx252, ptr noundef %219)
  %220 = load ptr, ptr %m.addr, align 8
  %221 = load ptr, ptr %n.addr, align 8
  %222 = load ptr, ptr %f.addr, align 8
  %223 = load i32, ptr %f_offset, align 4
  %idxprom254 = sext i32 %223 to i64
  %arrayidx255 = getelementptr inbounds float, ptr %222, i64 %idxprom254
  %224 = load ptr, ptr %ldf.addr, align 8
  %225 = load ptr, ptr %work.addr, align 8
  %226 = load ptr, ptr %m.addr, align 8
  %227 = load i32, ptr %226, align 4
  %228 = load ptr, ptr %n.addr, align 8
  %229 = load i32, ptr %228, align 4
  %mul256 = mul nsw i32 %227, %229
  %add257 = add nsw i32 %mul256, 1
  %idxprom258 = sext i32 %add257 to i64
  %arrayidx259 = getelementptr inbounds float, ptr %225, i64 %idxprom258
  %230 = load ptr, ptr %m.addr, align 8
  %call260 = call i32 @slacpy_(ptr noundef @.str.3, ptr noundef %220, ptr noundef %221, ptr noundef %arrayidx255, ptr noundef %224, ptr noundef %arrayidx259, ptr noundef %230)
  %231 = load ptr, ptr %m.addr, align 8
  %232 = load ptr, ptr %n.addr, align 8
  %233 = load ptr, ptr %c__.addr, align 8
  %234 = load i32, ptr %c_offset, align 4
  %idxprom261 = sext i32 %234 to i64
  %arrayidx262 = getelementptr inbounds float, ptr %233, i64 %idxprom261
  %235 = load ptr, ptr %ldc.addr, align 8
  %call263 = call i32 @slaset_(ptr noundef @.str.3, ptr noundef %231, ptr noundef %232, ptr noundef @c_b14, ptr noundef @c_b14, ptr noundef %arrayidx262, ptr noundef %235)
  %236 = load ptr, ptr %m.addr, align 8
  %237 = load ptr, ptr %n.addr, align 8
  %238 = load ptr, ptr %f.addr, align 8
  %239 = load i32, ptr %f_offset, align 4
  %idxprom264 = sext i32 %239 to i64
  %arrayidx265 = getelementptr inbounds float, ptr %238, i64 %idxprom264
  %240 = load ptr, ptr %ldf.addr, align 8
  %call266 = call i32 @slaset_(ptr noundef @.str.3, ptr noundef %236, ptr noundef %237, ptr noundef @c_b14, ptr noundef @c_b14, ptr noundef %arrayidx265, ptr noundef %240)
  br label %if.end286

if.else267:                                       ; preds = %land.lhs.true243, %if.end240
  %241 = load i32, ptr %isolve, align 4
  %cmp268 = icmp eq i32 %241, 2
  br i1 %cmp268, label %land.lhs.true270, label %if.end285

land.lhs.true270:                                 ; preds = %if.else267
  %242 = load i32, ptr %iround, align 4
  %cmp271 = icmp eq i32 %242, 2
  br i1 %cmp271, label %if.then273, label %if.end285

if.then273:                                       ; preds = %land.lhs.true270
  %243 = load ptr, ptr %m.addr, align 8
  %244 = load ptr, ptr %n.addr, align 8
  %245 = load ptr, ptr %work.addr, align 8
  %arrayidx274 = getelementptr inbounds float, ptr %245, i64 1
  %246 = load ptr, ptr %m.addr, align 8
  %247 = load ptr, ptr %c__.addr, align 8
  %248 = load i32, ptr %c_offset, align 4
  %idxprom275 = sext i32 %248 to i64
  %arrayidx276 = getelementptr inbounds float, ptr %247, i64 %idxprom275
  %249 = load ptr, ptr %ldc.addr, align 8
  %call277 = call i32 @slacpy_(ptr noundef @.str.3, ptr noundef %243, ptr noundef %244, ptr noundef %arrayidx274, ptr noundef %246, ptr noundef %arrayidx276, ptr noundef %249)
  %250 = load ptr, ptr %m.addr, align 8
  %251 = load ptr, ptr %n.addr, align 8
  %252 = load ptr, ptr %work.addr, align 8
  %253 = load ptr, ptr %m.addr, align 8
  %254 = load i32, ptr %253, align 4
  %255 = load ptr, ptr %n.addr, align 8
  %256 = load i32, ptr %255, align 4
  %mul278 = mul nsw i32 %254, %256
  %add279 = add nsw i32 %mul278, 1
  %idxprom280 = sext i32 %add279 to i64
  %arrayidx281 = getelementptr inbounds float, ptr %252, i64 %idxprom280
  %257 = load ptr, ptr %m.addr, align 8
  %258 = load ptr, ptr %f.addr, align 8
  %259 = load i32, ptr %f_offset, align 4
  %idxprom282 = sext i32 %259 to i64
  %arrayidx283 = getelementptr inbounds float, ptr %258, i64 %idxprom282
  %260 = load ptr, ptr %ldf.addr, align 8
  %call284 = call i32 @slacpy_(ptr noundef @.str.3, ptr noundef %250, ptr noundef %251, ptr noundef %arrayidx281, ptr noundef %257, ptr noundef %arrayidx283, ptr noundef %260)
  %261 = load float, ptr %scale2, align 4
  %262 = load ptr, ptr %scale.addr, align 8
  store float %261, ptr %262, align 4
  br label %if.end285

if.end285:                                        ; preds = %if.then273, %land.lhs.true270, %if.else267
  br label %if.end286

if.end286:                                        ; preds = %if.end285, %if.end249
  br label %for.inc

for.inc:                                          ; preds = %if.end286
  %263 = load i32, ptr %iround, align 4
  %inc = add nsw i32 %263, 1
  store i32 %inc, ptr %iround, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4
  br label %return

if.end287:                                        ; preds = %land.lhs.true190, %lor.lhs.false187
  store i32 0, ptr %p, align 4
  store i32 1, ptr %i__, align 4
  br label %L40

L40:                                              ; preds = %if.end309, %if.end287
  %264 = load i32, ptr %i__, align 4
  %265 = load ptr, ptr %m.addr, align 8
  %266 = load i32, ptr %265, align 4
  %cmp288 = icmp sgt i32 %264, %266
  br i1 %cmp288, label %if.then290, label %if.end291

if.then290:                                       ; preds = %L40
  br label %L50

if.end291:                                        ; preds = %L40
  %267 = load i32, ptr %p, align 4
  %inc292 = add nsw i32 %267, 1
  store i32 %inc292, ptr %p, align 4
  %268 = load i32, ptr %i__, align 4
  %269 = load ptr, ptr %iwork.addr, align 8
  %270 = load i32, ptr %p, align 4
  %idxprom293 = sext i32 %270 to i64
  %arrayidx294 = getelementptr inbounds i32, ptr %269, i64 %idxprom293
  store i32 %268, ptr %arrayidx294, align 4
  %271 = load i32, ptr %mb, align 4
  %272 = load i32, ptr %i__, align 4
  %add295 = add nsw i32 %272, %271
  store i32 %add295, ptr %i__, align 4
  %273 = load i32, ptr %i__, align 4
  %274 = load ptr, ptr %m.addr, align 8
  %275 = load i32, ptr %274, align 4
  %cmp296 = icmp sge i32 %273, %275
  br i1 %cmp296, label %if.then298, label %if.end299

if.then298:                                       ; preds = %if.end291
  br label %L50

if.end299:                                        ; preds = %if.end291
  %276 = load ptr, ptr %a.addr, align 8
  %277 = load i32, ptr %i__, align 4
  %278 = load i32, ptr %i__, align 4
  %sub300 = sub nsw i32 %278, 1
  %279 = load i32, ptr %a_dim1, align 4
  %mul301 = mul nsw i32 %sub300, %279
  %add302 = add nsw i32 %277, %mul301
  %idxprom303 = sext i32 %add302 to i64
  %arrayidx304 = getelementptr inbounds float, ptr %276, i64 %idxprom303
  %280 = load float, ptr %arrayidx304, align 4
  %cmp305 = fcmp une float %280, 0.000000e+00
  br i1 %cmp305, label %if.then307, label %if.end309

if.then307:                                       ; preds = %if.end299
  %281 = load i32, ptr %i__, align 4
  %inc308 = add nsw i32 %281, 1
  store i32 %inc308, ptr %i__, align 4
  br label %if.end309

if.end309:                                        ; preds = %if.then307, %if.end299
  br label %L40

L50:                                              ; preds = %if.then298, %if.then290
  %282 = load ptr, ptr %m.addr, align 8
  %283 = load i32, ptr %282, align 4
  %add310 = add nsw i32 %283, 1
  %284 = load ptr, ptr %iwork.addr, align 8
  %285 = load i32, ptr %p, align 4
  %add311 = add nsw i32 %285, 1
  %idxprom312 = sext i32 %add311 to i64
  %arrayidx313 = getelementptr inbounds i32, ptr %284, i64 %idxprom312
  store i32 %add310, ptr %arrayidx313, align 4
  %286 = load ptr, ptr %iwork.addr, align 8
  %287 = load i32, ptr %p, align 4
  %idxprom314 = sext i32 %287 to i64
  %arrayidx315 = getelementptr inbounds i32, ptr %286, i64 %idxprom314
  %288 = load i32, ptr %arrayidx315, align 4
  %289 = load ptr, ptr %iwork.addr, align 8
  %290 = load i32, ptr %p, align 4
  %add316 = add nsw i32 %290, 1
  %idxprom317 = sext i32 %add316 to i64
  %arrayidx318 = getelementptr inbounds i32, ptr %289, i64 %idxprom317
  %291 = load i32, ptr %arrayidx318, align 4
  %cmp319 = icmp eq i32 %288, %291
  br i1 %cmp319, label %if.then321, label %if.end322

if.then321:                                       ; preds = %L50
  %292 = load i32, ptr %p, align 4
  %dec = add nsw i32 %292, -1
  store i32 %dec, ptr %p, align 4
  br label %if.end322

if.end322:                                        ; preds = %if.then321, %L50
  %293 = load i32, ptr %p, align 4
  %add323 = add nsw i32 %293, 1
  store i32 %add323, ptr %q, align 4
  store i32 1, ptr %j, align 4
  br label %L60

L60:                                              ; preds = %if.end345, %if.end322
  %294 = load i32, ptr %j, align 4
  %295 = load ptr, ptr %n.addr, align 8
  %296 = load i32, ptr %295, align 4
  %cmp324 = icmp sgt i32 %294, %296
  br i1 %cmp324, label %if.then326, label %if.end327

if.then326:                                       ; preds = %L60
  br label %L70

if.end327:                                        ; preds = %L60
  %297 = load i32, ptr %q, align 4
  %inc328 = add nsw i32 %297, 1
  store i32 %inc328, ptr %q, align 4
  %298 = load i32, ptr %j, align 4
  %299 = load ptr, ptr %iwork.addr, align 8
  %300 = load i32, ptr %q, align 4
  %idxprom329 = sext i32 %300 to i64
  %arrayidx330 = getelementptr inbounds i32, ptr %299, i64 %idxprom329
  store i32 %298, ptr %arrayidx330, align 4
  %301 = load i32, ptr %nb, align 4
  %302 = load i32, ptr %j, align 4
  %add331 = add nsw i32 %302, %301
  store i32 %add331, ptr %j, align 4
  %303 = load i32, ptr %j, align 4
  %304 = load ptr, ptr %n.addr, align 8
  %305 = load i32, ptr %304, align 4
  %cmp332 = icmp sge i32 %303, %305
  br i1 %cmp332, label %if.then334, label %if.end335

if.then334:                                       ; preds = %if.end327
  br label %L70

if.end335:                                        ; preds = %if.end327
  %306 = load ptr, ptr %b.addr, align 8
  %307 = load i32, ptr %j, align 4
  %308 = load i32, ptr %j, align 4
  %sub336 = sub nsw i32 %308, 1
  %309 = load i32, ptr %b_dim1, align 4
  %mul337 = mul nsw i32 %sub336, %309
  %add338 = add nsw i32 %307, %mul337
  %idxprom339 = sext i32 %add338 to i64
  %arrayidx340 = getelementptr inbounds float, ptr %306, i64 %idxprom339
  %310 = load float, ptr %arrayidx340, align 4
  %cmp341 = fcmp une float %310, 0.000000e+00
  br i1 %cmp341, label %if.then343, label %if.end345

if.then343:                                       ; preds = %if.end335
  %311 = load i32, ptr %j, align 4
  %inc344 = add nsw i32 %311, 1
  store i32 %inc344, ptr %j, align 4
  br label %if.end345

if.end345:                                        ; preds = %if.then343, %if.end335
  br label %L60

L70:                                              ; preds = %if.then334, %if.then326
  %312 = load ptr, ptr %n.addr, align 8
  %313 = load i32, ptr %312, align 4
  %add346 = add nsw i32 %313, 1
  %314 = load ptr, ptr %iwork.addr, align 8
  %315 = load i32, ptr %q, align 4
  %add347 = add nsw i32 %315, 1
  %idxprom348 = sext i32 %add347 to i64
  %arrayidx349 = getelementptr inbounds i32, ptr %314, i64 %idxprom348
  store i32 %add346, ptr %arrayidx349, align 4
  %316 = load ptr, ptr %iwork.addr, align 8
  %317 = load i32, ptr %q, align 4
  %idxprom350 = sext i32 %317 to i64
  %arrayidx351 = getelementptr inbounds i32, ptr %316, i64 %idxprom350
  %318 = load i32, ptr %arrayidx351, align 4
  %319 = load ptr, ptr %iwork.addr, align 8
  %320 = load i32, ptr %q, align 4
  %add352 = add nsw i32 %320, 1
  %idxprom353 = sext i32 %add352 to i64
  %arrayidx354 = getelementptr inbounds i32, ptr %319, i64 %idxprom353
  %321 = load i32, ptr %arrayidx354, align 4
  %cmp355 = icmp eq i32 %318, %321
  br i1 %cmp355, label %if.then357, label %if.end359

if.then357:                                       ; preds = %L70
  %322 = load i32, ptr %q, align 4
  %dec358 = add nsw i32 %322, -1
  store i32 %dec358, ptr %q, align 4
  br label %if.end359

if.end359:                                        ; preds = %if.then357, %L70
  %323 = load i32, ptr %notran, align 4
  %tobool360 = icmp ne i32 %323, 0
  br i1 %tobool360, label %if.then361, label %if.else660

if.then361:                                       ; preds = %if.end359
  %324 = load i32, ptr %isolve, align 4
  store i32 %324, ptr %i__1, align 4
  store i32 1, ptr %iround, align 4
  br label %for.cond362

for.cond362:                                      ; preds = %for.inc657, %if.then361
  %325 = load i32, ptr %iround, align 4
  %326 = load i32, ptr %i__1, align 4
  %cmp363 = icmp sle i32 %325, %326
  br i1 %cmp363, label %for.body365, label %for.end659

for.body365:                                      ; preds = %for.cond362
  store float 0.000000e+00, ptr %dscale, align 4
  store float 1.000000e+00, ptr %dsum, align 4
  store i32 0, ptr %pq, align 4
  %327 = load ptr, ptr %scale.addr, align 8
  store float 1.000000e+00, ptr %327, align 4
  %328 = load i32, ptr %q, align 4
  store i32 %328, ptr %i__2, align 4
  %329 = load i32, ptr %p, align 4
  %add366 = add nsw i32 %329, 2
  store i32 %add366, ptr %j, align 4
  br label %for.cond367

for.cond367:                                      ; preds = %for.inc576, %for.body365
  %330 = load i32, ptr %j, align 4
  %331 = load i32, ptr %i__2, align 4
  %cmp368 = icmp sle i32 %330, %331
  br i1 %cmp368, label %for.body370, label %for.end578

for.body370:                                      ; preds = %for.cond367
  %332 = load ptr, ptr %iwork.addr, align 8
  %333 = load i32, ptr %j, align 4
  %idxprom371 = sext i32 %333 to i64
  %arrayidx372 = getelementptr inbounds i32, ptr %332, i64 %idxprom371
  %334 = load i32, ptr %arrayidx372, align 4
  store i32 %334, ptr %js, align 4
  %335 = load ptr, ptr %iwork.addr, align 8
  %336 = load i32, ptr %j, align 4
  %add373 = add nsw i32 %336, 1
  %idxprom374 = sext i32 %add373 to i64
  %arrayidx375 = getelementptr inbounds i32, ptr %335, i64 %idxprom374
  %337 = load i32, ptr %arrayidx375, align 4
  %sub376 = sub nsw i32 %337, 1
  store i32 %sub376, ptr %je, align 4
  %338 = load i32, ptr %je, align 4
  %339 = load i32, ptr %js, align 4
  %sub377 = sub nsw i32 %338, %339
  %add378 = add nsw i32 %sub377, 1
  store i32 %add378, ptr %nb, align 4
  %340 = load i32, ptr %p, align 4
  store i32 %340, ptr %i__, align 4
  br label %for.cond379

for.cond379:                                      ; preds = %for.inc573, %for.body370
  %341 = load i32, ptr %i__, align 4
  %cmp380 = icmp sge i32 %341, 1
  br i1 %cmp380, label %for.body382, label %for.end575

for.body382:                                      ; preds = %for.cond379
  %342 = load ptr, ptr %iwork.addr, align 8
  %343 = load i32, ptr %i__, align 4
  %idxprom383 = sext i32 %343 to i64
  %arrayidx384 = getelementptr inbounds i32, ptr %342, i64 %idxprom383
  %344 = load i32, ptr %arrayidx384, align 4
  store i32 %344, ptr %is, align 4
  %345 = load ptr, ptr %iwork.addr, align 8
  %346 = load i32, ptr %i__, align 4
  %add385 = add nsw i32 %346, 1
  %idxprom386 = sext i32 %add385 to i64
  %arrayidx387 = getelementptr inbounds i32, ptr %345, i64 %idxprom386
  %347 = load i32, ptr %arrayidx387, align 4
  %sub388 = sub nsw i32 %347, 1
  store i32 %sub388, ptr %ie, align 4
  %348 = load i32, ptr %ie, align 4
  %349 = load i32, ptr %is, align 4
  %sub389 = sub nsw i32 %348, %349
  %add390 = add nsw i32 %sub389, 1
  store i32 %add390, ptr %mb, align 4
  store i32 0, ptr %ppqq, align 4
  %350 = load ptr, ptr %trans.addr, align 8
  %351 = load ptr, ptr %a.addr, align 8
  %352 = load i32, ptr %is, align 4
  %353 = load i32, ptr %is, align 4
  %354 = load i32, ptr %a_dim1, align 4
  %mul391 = mul nsw i32 %353, %354
  %add392 = add nsw i32 %352, %mul391
  %idxprom393 = sext i32 %add392 to i64
  %arrayidx394 = getelementptr inbounds float, ptr %351, i64 %idxprom393
  %355 = load ptr, ptr %lda.addr, align 8
  %356 = load ptr, ptr %b.addr, align 8
  %357 = load i32, ptr %js, align 4
  %358 = load i32, ptr %js, align 4
  %359 = load i32, ptr %b_dim1, align 4
  %mul395 = mul nsw i32 %358, %359
  %add396 = add nsw i32 %357, %mul395
  %idxprom397 = sext i32 %add396 to i64
  %arrayidx398 = getelementptr inbounds float, ptr %356, i64 %idxprom397
  %360 = load ptr, ptr %ldb.addr, align 8
  %361 = load ptr, ptr %c__.addr, align 8
  %362 = load i32, ptr %is, align 4
  %363 = load i32, ptr %js, align 4
  %364 = load i32, ptr %c_dim1, align 4
  %mul399 = mul nsw i32 %363, %364
  %add400 = add nsw i32 %362, %mul399
  %idxprom401 = sext i32 %add400 to i64
  %arrayidx402 = getelementptr inbounds float, ptr %361, i64 %idxprom401
  %365 = load ptr, ptr %ldc.addr, align 8
  %366 = load ptr, ptr %d__.addr, align 8
  %367 = load i32, ptr %is, align 4
  %368 = load i32, ptr %is, align 4
  %369 = load i32, ptr %d_dim1, align 4
  %mul403 = mul nsw i32 %368, %369
  %add404 = add nsw i32 %367, %mul403
  %idxprom405 = sext i32 %add404 to i64
  %arrayidx406 = getelementptr inbounds float, ptr %366, i64 %idxprom405
  %370 = load ptr, ptr %ldd.addr, align 8
  %371 = load ptr, ptr %e.addr, align 8
  %372 = load i32, ptr %js, align 4
  %373 = load i32, ptr %js, align 4
  %374 = load i32, ptr %e_dim1, align 4
  %mul407 = mul nsw i32 %373, %374
  %add408 = add nsw i32 %372, %mul407
  %idxprom409 = sext i32 %add408 to i64
  %arrayidx410 = getelementptr inbounds float, ptr %371, i64 %idxprom409
  %375 = load ptr, ptr %lde.addr, align 8
  %376 = load ptr, ptr %f.addr, align 8
  %377 = load i32, ptr %is, align 4
  %378 = load i32, ptr %js, align 4
  %379 = load i32, ptr %f_dim1, align 4
  %mul411 = mul nsw i32 %378, %379
  %add412 = add nsw i32 %377, %mul411
  %idxprom413 = sext i32 %add412 to i64
  %arrayidx414 = getelementptr inbounds float, ptr %376, i64 %idxprom413
  %380 = load ptr, ptr %ldf.addr, align 8
  %381 = load ptr, ptr %iwork.addr, align 8
  %382 = load i32, ptr %q, align 4
  %add415 = add nsw i32 %382, 2
  %idxprom416 = sext i32 %add415 to i64
  %arrayidx417 = getelementptr inbounds i32, ptr %381, i64 %idxprom416
  %call418 = call i32 @stgsy2_(ptr noundef %350, ptr noundef %ifunc, ptr noundef %mb, ptr noundef %nb, ptr noundef %arrayidx394, ptr noundef %355, ptr noundef %arrayidx398, ptr noundef %360, ptr noundef %arrayidx402, ptr noundef %365, ptr noundef %arrayidx406, ptr noundef %370, ptr noundef %arrayidx410, ptr noundef %375, ptr noundef %arrayidx414, ptr noundef %380, ptr noundef %scaloc, ptr noundef %dsum, ptr noundef %dscale, ptr noundef %arrayidx417, ptr noundef %ppqq, ptr noundef %linfo)
  %383 = load i32, ptr %linfo, align 4
  %cmp419 = icmp sgt i32 %383, 0
  br i1 %cmp419, label %if.then421, label %if.end422

if.then421:                                       ; preds = %for.body382
  %384 = load i32, ptr %linfo, align 4
  %385 = load ptr, ptr %info.addr, align 8
  store i32 %384, ptr %385, align 4
  br label %if.end422

if.end422:                                        ; preds = %if.then421, %for.body382
  %386 = load i32, ptr %ppqq, align 4
  %387 = load i32, ptr %pq, align 4
  %add423 = add nsw i32 %387, %386
  store i32 %add423, ptr %pq, align 4
  %388 = load float, ptr %scaloc, align 4
  %cmp424 = fcmp une float %388, 1.000000e+00
  br i1 %cmp424, label %if.then426, label %if.end504

if.then426:                                       ; preds = %if.end422
  %389 = load i32, ptr %js, align 4
  %sub427 = sub nsw i32 %389, 1
  store i32 %sub427, ptr %i__3, align 4
  store i32 1, ptr %k, align 4
  br label %for.cond428

for.cond428:                                      ; preds = %for.inc442, %if.then426
  %390 = load i32, ptr %k, align 4
  %391 = load i32, ptr %i__3, align 4
  %cmp429 = icmp sle i32 %390, %391
  br i1 %cmp429, label %for.body431, label %for.end444

for.body431:                                      ; preds = %for.cond428
  %392 = load ptr, ptr %m.addr, align 8
  %393 = load ptr, ptr %c__.addr, align 8
  %394 = load i32, ptr %k, align 4
  %395 = load i32, ptr %c_dim1, align 4
  %mul432 = mul nsw i32 %394, %395
  %add433 = add nsw i32 %mul432, 1
  %idxprom434 = sext i32 %add433 to i64
  %arrayidx435 = getelementptr inbounds float, ptr %393, i64 %idxprom434
  %call436 = call i32 @sscal_(ptr noundef %392, ptr noundef %scaloc, ptr noundef %arrayidx435, ptr noundef @c__1)
  %396 = load ptr, ptr %m.addr, align 8
  %397 = load ptr, ptr %f.addr, align 8
  %398 = load i32, ptr %k, align 4
  %399 = load i32, ptr %f_dim1, align 4
  %mul437 = mul nsw i32 %398, %399
  %add438 = add nsw i32 %mul437, 1
  %idxprom439 = sext i32 %add438 to i64
  %arrayidx440 = getelementptr inbounds float, ptr %397, i64 %idxprom439
  %call441 = call i32 @sscal_(ptr noundef %396, ptr noundef %scaloc, ptr noundef %arrayidx440, ptr noundef @c__1)
  br label %for.inc442

for.inc442:                                       ; preds = %for.body431
  %400 = load i32, ptr %k, align 4
  %inc443 = add nsw i32 %400, 1
  store i32 %inc443, ptr %k, align 4
  br label %for.cond428, !llvm.loop !7

for.end444:                                       ; preds = %for.cond428
  %401 = load i32, ptr %je, align 4
  store i32 %401, ptr %i__3, align 4
  %402 = load i32, ptr %js, align 4
  store i32 %402, ptr %k, align 4
  br label %for.cond445

for.cond445:                                      ; preds = %for.inc461, %for.end444
  %403 = load i32, ptr %k, align 4
  %404 = load i32, ptr %i__3, align 4
  %cmp446 = icmp sle i32 %403, %404
  br i1 %cmp446, label %for.body448, label %for.end463

for.body448:                                      ; preds = %for.cond445
  %405 = load i32, ptr %is, align 4
  %sub449 = sub nsw i32 %405, 1
  store i32 %sub449, ptr %i__4, align 4
  %406 = load ptr, ptr %c__.addr, align 8
  %407 = load i32, ptr %k, align 4
  %408 = load i32, ptr %c_dim1, align 4
  %mul450 = mul nsw i32 %407, %408
  %add451 = add nsw i32 %mul450, 1
  %idxprom452 = sext i32 %add451 to i64
  %arrayidx453 = getelementptr inbounds float, ptr %406, i64 %idxprom452
  %call454 = call i32 @sscal_(ptr noundef %i__4, ptr noundef %scaloc, ptr noundef %arrayidx453, ptr noundef @c__1)
  %409 = load i32, ptr %is, align 4
  %sub455 = sub nsw i32 %409, 1
  store i32 %sub455, ptr %i__4, align 4
  %410 = load ptr, ptr %f.addr, align 8
  %411 = load i32, ptr %k, align 4
  %412 = load i32, ptr %f_dim1, align 4
  %mul456 = mul nsw i32 %411, %412
  %add457 = add nsw i32 %mul456, 1
  %idxprom458 = sext i32 %add457 to i64
  %arrayidx459 = getelementptr inbounds float, ptr %410, i64 %idxprom458
  %call460 = call i32 @sscal_(ptr noundef %i__4, ptr noundef %scaloc, ptr noundef %arrayidx459, ptr noundef @c__1)
  br label %for.inc461

for.inc461:                                       ; preds = %for.body448
  %413 = load i32, ptr %k, align 4
  %inc462 = add nsw i32 %413, 1
  store i32 %inc462, ptr %k, align 4
  br label %for.cond445, !llvm.loop !8

for.end463:                                       ; preds = %for.cond445
  %414 = load i32, ptr %je, align 4
  store i32 %414, ptr %i__3, align 4
  %415 = load i32, ptr %js, align 4
  store i32 %415, ptr %k, align 4
  br label %for.cond464

for.cond464:                                      ; preds = %for.inc482, %for.end463
  %416 = load i32, ptr %k, align 4
  %417 = load i32, ptr %i__3, align 4
  %cmp465 = icmp sle i32 %416, %417
  br i1 %cmp465, label %for.body467, label %for.end484

for.body467:                                      ; preds = %for.cond464
  %418 = load ptr, ptr %m.addr, align 8
  %419 = load i32, ptr %418, align 4
  %420 = load i32, ptr %ie, align 4
  %sub468 = sub nsw i32 %419, %420
  store i32 %sub468, ptr %i__4, align 4
  %421 = load ptr, ptr %c__.addr, align 8
  %422 = load i32, ptr %ie, align 4
  %add469 = add nsw i32 %422, 1
  %423 = load i32, ptr %k, align 4
  %424 = load i32, ptr %c_dim1, align 4
  %mul470 = mul nsw i32 %423, %424
  %add471 = add nsw i32 %add469, %mul470
  %idxprom472 = sext i32 %add471 to i64
  %arrayidx473 = getelementptr inbounds float, ptr %421, i64 %idxprom472
  %call474 = call i32 @sscal_(ptr noundef %i__4, ptr noundef %scaloc, ptr noundef %arrayidx473, ptr noundef @c__1)
  %425 = load ptr, ptr %m.addr, align 8
  %426 = load i32, ptr %425, align 4
  %427 = load i32, ptr %ie, align 4
  %sub475 = sub nsw i32 %426, %427
  store i32 %sub475, ptr %i__4, align 4
  %428 = load ptr, ptr %f.addr, align 8
  %429 = load i32, ptr %ie, align 4
  %add476 = add nsw i32 %429, 1
  %430 = load i32, ptr %k, align 4
  %431 = load i32, ptr %f_dim1, align 4
  %mul477 = mul nsw i32 %430, %431
  %add478 = add nsw i32 %add476, %mul477
  %idxprom479 = sext i32 %add478 to i64
  %arrayidx480 = getelementptr inbounds float, ptr %428, i64 %idxprom479
  %call481 = call i32 @sscal_(ptr noundef %i__4, ptr noundef %scaloc, ptr noundef %arrayidx480, ptr noundef @c__1)
  br label %for.inc482

for.inc482:                                       ; preds = %for.body467
  %432 = load i32, ptr %k, align 4
  %inc483 = add nsw i32 %432, 1
  store i32 %inc483, ptr %k, align 4
  br label %for.cond464, !llvm.loop !9

for.end484:                                       ; preds = %for.cond464
  %433 = load ptr, ptr %n.addr, align 8
  %434 = load i32, ptr %433, align 4
  store i32 %434, ptr %i__3, align 4
  %435 = load i32, ptr %je, align 4
  %add485 = add nsw i32 %435, 1
  store i32 %add485, ptr %k, align 4
  br label %for.cond486

for.cond486:                                      ; preds = %for.inc500, %for.end484
  %436 = load i32, ptr %k, align 4
  %437 = load i32, ptr %i__3, align 4
  %cmp487 = icmp sle i32 %436, %437
  br i1 %cmp487, label %for.body489, label %for.end502

for.body489:                                      ; preds = %for.cond486
  %438 = load ptr, ptr %m.addr, align 8
  %439 = load ptr, ptr %c__.addr, align 8
  %440 = load i32, ptr %k, align 4
  %441 = load i32, ptr %c_dim1, align 4
  %mul490 = mul nsw i32 %440, %441
  %add491 = add nsw i32 %mul490, 1
  %idxprom492 = sext i32 %add491 to i64
  %arrayidx493 = getelementptr inbounds float, ptr %439, i64 %idxprom492
  %call494 = call i32 @sscal_(ptr noundef %438, ptr noundef %scaloc, ptr noundef %arrayidx493, ptr noundef @c__1)
  %442 = load ptr, ptr %m.addr, align 8
  %443 = load ptr, ptr %f.addr, align 8
  %444 = load i32, ptr %k, align 4
  %445 = load i32, ptr %f_dim1, align 4
  %mul495 = mul nsw i32 %444, %445
  %add496 = add nsw i32 %mul495, 1
  %idxprom497 = sext i32 %add496 to i64
  %arrayidx498 = getelementptr inbounds float, ptr %443, i64 %idxprom497
  %call499 = call i32 @sscal_(ptr noundef %442, ptr noundef %scaloc, ptr noundef %arrayidx498, ptr noundef @c__1)
  br label %for.inc500

for.inc500:                                       ; preds = %for.body489
  %446 = load i32, ptr %k, align 4
  %inc501 = add nsw i32 %446, 1
  store i32 %inc501, ptr %k, align 4
  br label %for.cond486, !llvm.loop !10

for.end502:                                       ; preds = %for.cond486
  %447 = load float, ptr %scaloc, align 4
  %448 = load ptr, ptr %scale.addr, align 8
  %449 = load float, ptr %448, align 4
  %mul503 = fmul float %449, %447
  store float %mul503, ptr %448, align 4
  br label %if.end504

if.end504:                                        ; preds = %for.end502, %if.end422
  %450 = load i32, ptr %i__, align 4
  %cmp505 = icmp sgt i32 %450, 1
  br i1 %cmp505, label %if.then507, label %if.end536

if.then507:                                       ; preds = %if.end504
  %451 = load i32, ptr %is, align 4
  %sub508 = sub nsw i32 %451, 1
  store i32 %sub508, ptr %i__3, align 4
  %452 = load ptr, ptr %a.addr, align 8
  %453 = load i32, ptr %is, align 4
  %454 = load i32, ptr %a_dim1, align 4
  %mul509 = mul nsw i32 %453, %454
  %add510 = add nsw i32 %mul509, 1
  %idxprom511 = sext i32 %add510 to i64
  %arrayidx512 = getelementptr inbounds float, ptr %452, i64 %idxprom511
  %455 = load ptr, ptr %lda.addr, align 8
  %456 = load ptr, ptr %c__.addr, align 8
  %457 = load i32, ptr %is, align 4
  %458 = load i32, ptr %js, align 4
  %459 = load i32, ptr %c_dim1, align 4
  %mul513 = mul nsw i32 %458, %459
  %add514 = add nsw i32 %457, %mul513
  %idxprom515 = sext i32 %add514 to i64
  %arrayidx516 = getelementptr inbounds float, ptr %456, i64 %idxprom515
  %460 = load ptr, ptr %ldc.addr, align 8
  %461 = load ptr, ptr %c__.addr, align 8
  %462 = load i32, ptr %js, align 4
  %463 = load i32, ptr %c_dim1, align 4
  %mul517 = mul nsw i32 %462, %463
  %add518 = add nsw i32 %mul517, 1
  %idxprom519 = sext i32 %add518 to i64
  %arrayidx520 = getelementptr inbounds float, ptr %461, i64 %idxprom519
  %464 = load ptr, ptr %ldc.addr, align 8
  %call521 = call i32 @sgemm_(ptr noundef @.str, ptr noundef @.str, ptr noundef %i__3, ptr noundef %nb, ptr noundef %mb, ptr noundef @c_b51, ptr noundef %arrayidx512, ptr noundef %455, ptr noundef %arrayidx516, ptr noundef %460, ptr noundef @c_b52, ptr noundef %arrayidx520, ptr noundef %464)
  %465 = load i32, ptr %is, align 4
  %sub522 = sub nsw i32 %465, 1
  store i32 %sub522, ptr %i__3, align 4
  %466 = load ptr, ptr %d__.addr, align 8
  %467 = load i32, ptr %is, align 4
  %468 = load i32, ptr %d_dim1, align 4
  %mul523 = mul nsw i32 %467, %468
  %add524 = add nsw i32 %mul523, 1
  %idxprom525 = sext i32 %add524 to i64
  %arrayidx526 = getelementptr inbounds float, ptr %466, i64 %idxprom525
  %469 = load ptr, ptr %ldd.addr, align 8
  %470 = load ptr, ptr %c__.addr, align 8
  %471 = load i32, ptr %is, align 4
  %472 = load i32, ptr %js, align 4
  %473 = load i32, ptr %c_dim1, align 4
  %mul527 = mul nsw i32 %472, %473
  %add528 = add nsw i32 %471, %mul527
  %idxprom529 = sext i32 %add528 to i64
  %arrayidx530 = getelementptr inbounds float, ptr %470, i64 %idxprom529
  %474 = load ptr, ptr %ldc.addr, align 8
  %475 = load ptr, ptr %f.addr, align 8
  %476 = load i32, ptr %js, align 4
  %477 = load i32, ptr %f_dim1, align 4
  %mul531 = mul nsw i32 %476, %477
  %add532 = add nsw i32 %mul531, 1
  %idxprom533 = sext i32 %add532 to i64
  %arrayidx534 = getelementptr inbounds float, ptr %475, i64 %idxprom533
  %478 = load ptr, ptr %ldf.addr, align 8
  %call535 = call i32 @sgemm_(ptr noundef @.str, ptr noundef @.str, ptr noundef %i__3, ptr noundef %nb, ptr noundef %mb, ptr noundef @c_b51, ptr noundef %arrayidx526, ptr noundef %469, ptr noundef %arrayidx530, ptr noundef %474, ptr noundef @c_b52, ptr noundef %arrayidx534, ptr noundef %478)
  br label %if.end536

if.end536:                                        ; preds = %if.then507, %if.end504
  %479 = load i32, ptr %j, align 4
  %480 = load i32, ptr %q, align 4
  %cmp537 = icmp slt i32 %479, %480
  br i1 %cmp537, label %if.then539, label %if.end572

if.then539:                                       ; preds = %if.end536
  %481 = load ptr, ptr %n.addr, align 8
  %482 = load i32, ptr %481, align 4
  %483 = load i32, ptr %je, align 4
  %sub540 = sub nsw i32 %482, %483
  store i32 %sub540, ptr %i__3, align 4
  %484 = load ptr, ptr %f.addr, align 8
  %485 = load i32, ptr %is, align 4
  %486 = load i32, ptr %js, align 4
  %487 = load i32, ptr %f_dim1, align 4
  %mul541 = mul nsw i32 %486, %487
  %add542 = add nsw i32 %485, %mul541
  %idxprom543 = sext i32 %add542 to i64
  %arrayidx544 = getelementptr inbounds float, ptr %484, i64 %idxprom543
  %488 = load ptr, ptr %ldf.addr, align 8
  %489 = load ptr, ptr %b.addr, align 8
  %490 = load i32, ptr %js, align 4
  %491 = load i32, ptr %je, align 4
  %add545 = add nsw i32 %491, 1
  %492 = load i32, ptr %b_dim1, align 4
  %mul546 = mul nsw i32 %add545, %492
  %add547 = add nsw i32 %490, %mul546
  %idxprom548 = sext i32 %add547 to i64
  %arrayidx549 = getelementptr inbounds float, ptr %489, i64 %idxprom548
  %493 = load ptr, ptr %ldb.addr, align 8
  %494 = load ptr, ptr %c__.addr, align 8
  %495 = load i32, ptr %is, align 4
  %496 = load i32, ptr %je, align 4
  %add550 = add nsw i32 %496, 1
  %497 = load i32, ptr %c_dim1, align 4
  %mul551 = mul nsw i32 %add550, %497
  %add552 = add nsw i32 %495, %mul551
  %idxprom553 = sext i32 %add552 to i64
  %arrayidx554 = getelementptr inbounds float, ptr %494, i64 %idxprom553
  %498 = load ptr, ptr %ldc.addr, align 8
  %call555 = call i32 @sgemm_(ptr noundef @.str, ptr noundef @.str, ptr noundef %mb, ptr noundef %i__3, ptr noundef %nb, ptr noundef @c_b52, ptr noundef %arrayidx544, ptr noundef %488, ptr noundef %arrayidx549, ptr noundef %493, ptr noundef @c_b52, ptr noundef %arrayidx554, ptr noundef %498)
  %499 = load ptr, ptr %n.addr, align 8
  %500 = load i32, ptr %499, align 4
  %501 = load i32, ptr %je, align 4
  %sub556 = sub nsw i32 %500, %501
  store i32 %sub556, ptr %i__3, align 4
  %502 = load ptr, ptr %f.addr, align 8
  %503 = load i32, ptr %is, align 4
  %504 = load i32, ptr %js, align 4
  %505 = load i32, ptr %f_dim1, align 4
  %mul557 = mul nsw i32 %504, %505
  %add558 = add nsw i32 %503, %mul557
  %idxprom559 = sext i32 %add558 to i64
  %arrayidx560 = getelementptr inbounds float, ptr %502, i64 %idxprom559
  %506 = load ptr, ptr %ldf.addr, align 8
  %507 = load ptr, ptr %e.addr, align 8
  %508 = load i32, ptr %js, align 4
  %509 = load i32, ptr %je, align 4
  %add561 = add nsw i32 %509, 1
  %510 = load i32, ptr %e_dim1, align 4
  %mul562 = mul nsw i32 %add561, %510
  %add563 = add nsw i32 %508, %mul562
  %idxprom564 = sext i32 %add563 to i64
  %arrayidx565 = getelementptr inbounds float, ptr %507, i64 %idxprom564
  %511 = load ptr, ptr %lde.addr, align 8
  %512 = load ptr, ptr %f.addr, align 8
  %513 = load i32, ptr %is, align 4
  %514 = load i32, ptr %je, align 4
  %add566 = add nsw i32 %514, 1
  %515 = load i32, ptr %f_dim1, align 4
  %mul567 = mul nsw i32 %add566, %515
  %add568 = add nsw i32 %513, %mul567
  %idxprom569 = sext i32 %add568 to i64
  %arrayidx570 = getelementptr inbounds float, ptr %512, i64 %idxprom569
  %516 = load ptr, ptr %ldf.addr, align 8
  %call571 = call i32 @sgemm_(ptr noundef @.str, ptr noundef @.str, ptr noundef %mb, ptr noundef %i__3, ptr noundef %nb, ptr noundef @c_b52, ptr noundef %arrayidx560, ptr noundef %506, ptr noundef %arrayidx565, ptr noundef %511, ptr noundef @c_b52, ptr noundef %arrayidx570, ptr noundef %516)
  br label %if.end572

if.end572:                                        ; preds = %if.then539, %if.end536
  br label %for.inc573

for.inc573:                                       ; preds = %if.end572
  %517 = load i32, ptr %i__, align 4
  %dec574 = add nsw i32 %517, -1
  store i32 %dec574, ptr %i__, align 4
  br label %for.cond379, !llvm.loop !11

for.end575:                                       ; preds = %for.cond379
  br label %for.inc576

for.inc576:                                       ; preds = %for.end575
  %518 = load i32, ptr %j, align 4
  %inc577 = add nsw i32 %518, 1
  store i32 %inc577, ptr %j, align 4
  br label %for.cond367, !llvm.loop !12

for.end578:                                       ; preds = %for.cond367
  %519 = load float, ptr %dscale, align 4
  %cmp579 = fcmp une float %519, 0.000000e+00
  br i1 %cmp579, label %if.then581, label %if.end610

if.then581:                                       ; preds = %for.end578
  %520 = load ptr, ptr %ijob.addr, align 8
  %521 = load i32, ptr %520, align 4
  %cmp582 = icmp eq i32 %521, 1
  br i1 %cmp582, label %if.then587, label %lor.lhs.false584

lor.lhs.false584:                                 ; preds = %if.then581
  %522 = load ptr, ptr %ijob.addr, align 8
  %523 = load i32, ptr %522, align 4
  %cmp585 = icmp eq i32 %523, 3
  br i1 %cmp585, label %if.then587, label %if.else599

if.then587:                                       ; preds = %lor.lhs.false584, %if.then581
  %524 = load ptr, ptr %m.addr, align 8
  %525 = load i32, ptr %524, align 4
  %shl588 = shl i32 %525, 1
  %526 = load ptr, ptr %n.addr, align 8
  %527 = load i32, ptr %526, align 4
  %mul589 = mul nsw i32 %shl588, %527
  %conv590 = sitofp i32 %mul589 to float
  %conv591 = fpext float %conv590 to double
  %call592 = call double @sqrt(double noundef %conv591) #3
  %528 = load float, ptr %dscale, align 4
  %conv593 = fpext float %528 to double
  %529 = load float, ptr %dsum, align 4
  %conv594 = fpext float %529 to double
  %call595 = call double @sqrt(double noundef %conv594) #3
  %mul596 = fmul double %conv593, %call595
  %div597 = fdiv double %call592, %mul596
  %conv598 = fptrunc double %div597 to float
  %530 = load ptr, ptr %dif.addr, align 8
  store float %conv598, ptr %530, align 4
  br label %if.end609

if.else599:                                       ; preds = %lor.lhs.false584
  %531 = load i32, ptr %pq, align 4
  %conv600 = sitofp i32 %531 to float
  %conv601 = fpext float %conv600 to double
  %call602 = call double @sqrt(double noundef %conv601) #3
  %532 = load float, ptr %dscale, align 4
  %conv603 = fpext float %532 to double
  %533 = load float, ptr %dsum, align 4
  %conv604 = fpext float %533 to double
  %call605 = call double @sqrt(double noundef %conv604) #3
  %mul606 = fmul double %conv603, %call605
  %div607 = fdiv double %call602, %mul606
  %conv608 = fptrunc double %div607 to float
  %534 = load ptr, ptr %dif.addr, align 8
  store float %conv608, ptr %534, align 4
  br label %if.end609

if.end609:                                        ; preds = %if.else599, %if.then587
  br label %if.end610

if.end610:                                        ; preds = %if.end609, %for.end578
  %535 = load i32, ptr %isolve, align 4
  %cmp611 = icmp eq i32 %535, 2
  br i1 %cmp611, label %land.lhs.true613, label %if.else637

land.lhs.true613:                                 ; preds = %if.end610
  %536 = load i32, ptr %iround, align 4
  %cmp614 = icmp eq i32 %536, 1
  br i1 %cmp614, label %if.then616, label %if.else637

if.then616:                                       ; preds = %land.lhs.true613
  %537 = load i32, ptr %notran, align 4
  %tobool617 = icmp ne i32 %537, 0
  br i1 %tobool617, label %if.then618, label %if.end619

if.then618:                                       ; preds = %if.then616
  %538 = load ptr, ptr %ijob.addr, align 8
  %539 = load i32, ptr %538, align 4
  store i32 %539, ptr %ifunc, align 4
  br label %if.end619

if.end619:                                        ; preds = %if.then618, %if.then616
  %540 = load ptr, ptr %scale.addr, align 8
  %541 = load float, ptr %540, align 4
  store float %541, ptr %scale2, align 4
  %542 = load ptr, ptr %m.addr, align 8
  %543 = load ptr, ptr %n.addr, align 8
  %544 = load ptr, ptr %c__.addr, align 8
  %545 = load i32, ptr %c_offset, align 4
  %idxprom620 = sext i32 %545 to i64
  %arrayidx621 = getelementptr inbounds float, ptr %544, i64 %idxprom620
  %546 = load ptr, ptr %ldc.addr, align 8
  %547 = load ptr, ptr %work.addr, align 8
  %arrayidx622 = getelementptr inbounds float, ptr %547, i64 1
  %548 = load ptr, ptr %m.addr, align 8
  %call623 = call i32 @slacpy_(ptr noundef @.str.3, ptr noundef %542, ptr noundef %543, ptr noundef %arrayidx621, ptr noundef %546, ptr noundef %arrayidx622, ptr noundef %548)
  %549 = load ptr, ptr %m.addr, align 8
  %550 = load ptr, ptr %n.addr, align 8
  %551 = load ptr, ptr %f.addr, align 8
  %552 = load i32, ptr %f_offset, align 4
  %idxprom624 = sext i32 %552 to i64
  %arrayidx625 = getelementptr inbounds float, ptr %551, i64 %idxprom624
  %553 = load ptr, ptr %ldf.addr, align 8
  %554 = load ptr, ptr %work.addr, align 8
  %555 = load ptr, ptr %m.addr, align 8
  %556 = load i32, ptr %555, align 4
  %557 = load ptr, ptr %n.addr, align 8
  %558 = load i32, ptr %557, align 4
  %mul626 = mul nsw i32 %556, %558
  %add627 = add nsw i32 %mul626, 1
  %idxprom628 = sext i32 %add627 to i64
  %arrayidx629 = getelementptr inbounds float, ptr %554, i64 %idxprom628
  %559 = load ptr, ptr %m.addr, align 8
  %call630 = call i32 @slacpy_(ptr noundef @.str.3, ptr noundef %549, ptr noundef %550, ptr noundef %arrayidx625, ptr noundef %553, ptr noundef %arrayidx629, ptr noundef %559)
  %560 = load ptr, ptr %m.addr, align 8
  %561 = load ptr, ptr %n.addr, align 8
  %562 = load ptr, ptr %c__.addr, align 8
  %563 = load i32, ptr %c_offset, align 4
  %idxprom631 = sext i32 %563 to i64
  %arrayidx632 = getelementptr inbounds float, ptr %562, i64 %idxprom631
  %564 = load ptr, ptr %ldc.addr, align 8
  %call633 = call i32 @slaset_(ptr noundef @.str.3, ptr noundef %560, ptr noundef %561, ptr noundef @c_b14, ptr noundef @c_b14, ptr noundef %arrayidx632, ptr noundef %564)
  %565 = load ptr, ptr %m.addr, align 8
  %566 = load ptr, ptr %n.addr, align 8
  %567 = load ptr, ptr %f.addr, align 8
  %568 = load i32, ptr %f_offset, align 4
  %idxprom634 = sext i32 %568 to i64
  %arrayidx635 = getelementptr inbounds float, ptr %567, i64 %idxprom634
  %569 = load ptr, ptr %ldf.addr, align 8
  %call636 = call i32 @slaset_(ptr noundef @.str.3, ptr noundef %565, ptr noundef %566, ptr noundef @c_b14, ptr noundef @c_b14, ptr noundef %arrayidx635, ptr noundef %569)
  br label %if.end656

if.else637:                                       ; preds = %land.lhs.true613, %if.end610
  %570 = load i32, ptr %isolve, align 4
  %cmp638 = icmp eq i32 %570, 2
  br i1 %cmp638, label %land.lhs.true640, label %if.end655

land.lhs.true640:                                 ; preds = %if.else637
  %571 = load i32, ptr %iround, align 4
  %cmp641 = icmp eq i32 %571, 2
  br i1 %cmp641, label %if.then643, label %if.end655

if.then643:                                       ; preds = %land.lhs.true640
  %572 = load ptr, ptr %m.addr, align 8
  %573 = load ptr, ptr %n.addr, align 8
  %574 = load ptr, ptr %work.addr, align 8
  %arrayidx644 = getelementptr inbounds float, ptr %574, i64 1
  %575 = load ptr, ptr %m.addr, align 8
  %576 = load ptr, ptr %c__.addr, align 8
  %577 = load i32, ptr %c_offset, align 4
  %idxprom645 = sext i32 %577 to i64
  %arrayidx646 = getelementptr inbounds float, ptr %576, i64 %idxprom645
  %578 = load ptr, ptr %ldc.addr, align 8
  %call647 = call i32 @slacpy_(ptr noundef @.str.3, ptr noundef %572, ptr noundef %573, ptr noundef %arrayidx644, ptr noundef %575, ptr noundef %arrayidx646, ptr noundef %578)
  %579 = load ptr, ptr %m.addr, align 8
  %580 = load ptr, ptr %n.addr, align 8
  %581 = load ptr, ptr %work.addr, align 8
  %582 = load ptr, ptr %m.addr, align 8
  %583 = load i32, ptr %582, align 4
  %584 = load ptr, ptr %n.addr, align 8
  %585 = load i32, ptr %584, align 4
  %mul648 = mul nsw i32 %583, %585
  %add649 = add nsw i32 %mul648, 1
  %idxprom650 = sext i32 %add649 to i64
  %arrayidx651 = getelementptr inbounds float, ptr %581, i64 %idxprom650
  %586 = load ptr, ptr %m.addr, align 8
  %587 = load ptr, ptr %f.addr, align 8
  %588 = load i32, ptr %f_offset, align 4
  %idxprom652 = sext i32 %588 to i64
  %arrayidx653 = getelementptr inbounds float, ptr %587, i64 %idxprom652
  %589 = load ptr, ptr %ldf.addr, align 8
  %call654 = call i32 @slacpy_(ptr noundef @.str.3, ptr noundef %579, ptr noundef %580, ptr noundef %arrayidx651, ptr noundef %586, ptr noundef %arrayidx653, ptr noundef %589)
  %590 = load float, ptr %scale2, align 4
  %591 = load ptr, ptr %scale.addr, align 8
  store float %590, ptr %591, align 4
  br label %if.end655

if.end655:                                        ; preds = %if.then643, %land.lhs.true640, %if.else637
  br label %if.end656

if.end656:                                        ; preds = %if.end655, %if.end619
  br label %for.inc657

for.inc657:                                       ; preds = %if.end656
  %592 = load i32, ptr %iround, align 4
  %inc658 = add nsw i32 %592, 1
  store i32 %inc658, ptr %iround, align 4
  br label %for.cond362, !llvm.loop !13

for.end659:                                       ; preds = %for.cond362
  br label %if.end872

if.else660:                                       ; preds = %if.end359
  %593 = load ptr, ptr %scale.addr, align 8
  store float 1.000000e+00, ptr %593, align 4
  %594 = load i32, ptr %p, align 4
  store i32 %594, ptr %i__1, align 4
  store i32 1, ptr %i__, align 4
  br label %for.cond661

for.cond661:                                      ; preds = %for.inc869, %if.else660
  %595 = load i32, ptr %i__, align 4
  %596 = load i32, ptr %i__1, align 4
  %cmp662 = icmp sle i32 %595, %596
  br i1 %cmp662, label %for.body664, label %for.end871

for.body664:                                      ; preds = %for.cond661
  %597 = load ptr, ptr %iwork.addr, align 8
  %598 = load i32, ptr %i__, align 4
  %idxprom665 = sext i32 %598 to i64
  %arrayidx666 = getelementptr inbounds i32, ptr %597, i64 %idxprom665
  %599 = load i32, ptr %arrayidx666, align 4
  store i32 %599, ptr %is, align 4
  %600 = load ptr, ptr %iwork.addr, align 8
  %601 = load i32, ptr %i__, align 4
  %add667 = add nsw i32 %601, 1
  %idxprom668 = sext i32 %add667 to i64
  %arrayidx669 = getelementptr inbounds i32, ptr %600, i64 %idxprom668
  %602 = load i32, ptr %arrayidx669, align 4
  %sub670 = sub nsw i32 %602, 1
  store i32 %sub670, ptr %ie, align 4
  %603 = load i32, ptr %ie, align 4
  %604 = load i32, ptr %is, align 4
  %sub671 = sub nsw i32 %603, %604
  %add672 = add nsw i32 %sub671, 1
  store i32 %add672, ptr %mb, align 4
  %605 = load i32, ptr %p, align 4
  %add673 = add nsw i32 %605, 2
  store i32 %add673, ptr %i__2, align 4
  %606 = load i32, ptr %q, align 4
  store i32 %606, ptr %j, align 4
  br label %for.cond674

for.cond674:                                      ; preds = %for.inc866, %for.body664
  %607 = load i32, ptr %j, align 4
  %608 = load i32, ptr %i__2, align 4
  %cmp675 = icmp sge i32 %607, %608
  br i1 %cmp675, label %for.body677, label %for.end868

for.body677:                                      ; preds = %for.cond674
  %609 = load ptr, ptr %iwork.addr, align 8
  %610 = load i32, ptr %j, align 4
  %idxprom678 = sext i32 %610 to i64
  %arrayidx679 = getelementptr inbounds i32, ptr %609, i64 %idxprom678
  %611 = load i32, ptr %arrayidx679, align 4
  store i32 %611, ptr %js, align 4
  %612 = load ptr, ptr %iwork.addr, align 8
  %613 = load i32, ptr %j, align 4
  %add680 = add nsw i32 %613, 1
  %idxprom681 = sext i32 %add680 to i64
  %arrayidx682 = getelementptr inbounds i32, ptr %612, i64 %idxprom681
  %614 = load i32, ptr %arrayidx682, align 4
  %sub683 = sub nsw i32 %614, 1
  store i32 %sub683, ptr %je, align 4
  %615 = load i32, ptr %je, align 4
  %616 = load i32, ptr %js, align 4
  %sub684 = sub nsw i32 %615, %616
  %add685 = add nsw i32 %sub684, 1
  store i32 %add685, ptr %nb, align 4
  %617 = load ptr, ptr %trans.addr, align 8
  %618 = load ptr, ptr %a.addr, align 8
  %619 = load i32, ptr %is, align 4
  %620 = load i32, ptr %is, align 4
  %621 = load i32, ptr %a_dim1, align 4
  %mul686 = mul nsw i32 %620, %621
  %add687 = add nsw i32 %619, %mul686
  %idxprom688 = sext i32 %add687 to i64
  %arrayidx689 = getelementptr inbounds float, ptr %618, i64 %idxprom688
  %622 = load ptr, ptr %lda.addr, align 8
  %623 = load ptr, ptr %b.addr, align 8
  %624 = load i32, ptr %js, align 4
  %625 = load i32, ptr %js, align 4
  %626 = load i32, ptr %b_dim1, align 4
  %mul690 = mul nsw i32 %625, %626
  %add691 = add nsw i32 %624, %mul690
  %idxprom692 = sext i32 %add691 to i64
  %arrayidx693 = getelementptr inbounds float, ptr %623, i64 %idxprom692
  %627 = load ptr, ptr %ldb.addr, align 8
  %628 = load ptr, ptr %c__.addr, align 8
  %629 = load i32, ptr %is, align 4
  %630 = load i32, ptr %js, align 4
  %631 = load i32, ptr %c_dim1, align 4
  %mul694 = mul nsw i32 %630, %631
  %add695 = add nsw i32 %629, %mul694
  %idxprom696 = sext i32 %add695 to i64
  %arrayidx697 = getelementptr inbounds float, ptr %628, i64 %idxprom696
  %632 = load ptr, ptr %ldc.addr, align 8
  %633 = load ptr, ptr %d__.addr, align 8
  %634 = load i32, ptr %is, align 4
  %635 = load i32, ptr %is, align 4
  %636 = load i32, ptr %d_dim1, align 4
  %mul698 = mul nsw i32 %635, %636
  %add699 = add nsw i32 %634, %mul698
  %idxprom700 = sext i32 %add699 to i64
  %arrayidx701 = getelementptr inbounds float, ptr %633, i64 %idxprom700
  %637 = load ptr, ptr %ldd.addr, align 8
  %638 = load ptr, ptr %e.addr, align 8
  %639 = load i32, ptr %js, align 4
  %640 = load i32, ptr %js, align 4
  %641 = load i32, ptr %e_dim1, align 4
  %mul702 = mul nsw i32 %640, %641
  %add703 = add nsw i32 %639, %mul702
  %idxprom704 = sext i32 %add703 to i64
  %arrayidx705 = getelementptr inbounds float, ptr %638, i64 %idxprom704
  %642 = load ptr, ptr %lde.addr, align 8
  %643 = load ptr, ptr %f.addr, align 8
  %644 = load i32, ptr %is, align 4
  %645 = load i32, ptr %js, align 4
  %646 = load i32, ptr %f_dim1, align 4
  %mul706 = mul nsw i32 %645, %646
  %add707 = add nsw i32 %644, %mul706
  %idxprom708 = sext i32 %add707 to i64
  %arrayidx709 = getelementptr inbounds float, ptr %643, i64 %idxprom708
  %647 = load ptr, ptr %ldf.addr, align 8
  %648 = load ptr, ptr %iwork.addr, align 8
  %649 = load i32, ptr %q, align 4
  %add710 = add nsw i32 %649, 2
  %idxprom711 = sext i32 %add710 to i64
  %arrayidx712 = getelementptr inbounds i32, ptr %648, i64 %idxprom711
  %call713 = call i32 @stgsy2_(ptr noundef %617, ptr noundef %ifunc, ptr noundef %mb, ptr noundef %nb, ptr noundef %arrayidx689, ptr noundef %622, ptr noundef %arrayidx693, ptr noundef %627, ptr noundef %arrayidx697, ptr noundef %632, ptr noundef %arrayidx701, ptr noundef %637, ptr noundef %arrayidx705, ptr noundef %642, ptr noundef %arrayidx709, ptr noundef %647, ptr noundef %scaloc, ptr noundef %dsum, ptr noundef %dscale, ptr noundef %arrayidx712, ptr noundef %ppqq, ptr noundef %linfo)
  %650 = load i32, ptr %linfo, align 4
  %cmp714 = icmp sgt i32 %650, 0
  br i1 %cmp714, label %if.then716, label %if.end717

if.then716:                                       ; preds = %for.body677
  %651 = load i32, ptr %linfo, align 4
  %652 = load ptr, ptr %info.addr, align 8
  store i32 %651, ptr %652, align 4
  br label %if.end717

if.end717:                                        ; preds = %if.then716, %for.body677
  %653 = load float, ptr %scaloc, align 4
  %cmp718 = fcmp une float %653, 1.000000e+00
  br i1 %cmp718, label %if.then720, label %if.end798

if.then720:                                       ; preds = %if.end717
  %654 = load i32, ptr %js, align 4
  %sub721 = sub nsw i32 %654, 1
  store i32 %sub721, ptr %i__3, align 4
  store i32 1, ptr %k, align 4
  br label %for.cond722

for.cond722:                                      ; preds = %for.inc736, %if.then720
  %655 = load i32, ptr %k, align 4
  %656 = load i32, ptr %i__3, align 4
  %cmp723 = icmp sle i32 %655, %656
  br i1 %cmp723, label %for.body725, label %for.end738

for.body725:                                      ; preds = %for.cond722
  %657 = load ptr, ptr %m.addr, align 8
  %658 = load ptr, ptr %c__.addr, align 8
  %659 = load i32, ptr %k, align 4
  %660 = load i32, ptr %c_dim1, align 4
  %mul726 = mul nsw i32 %659, %660
  %add727 = add nsw i32 %mul726, 1
  %idxprom728 = sext i32 %add727 to i64
  %arrayidx729 = getelementptr inbounds float, ptr %658, i64 %idxprom728
  %call730 = call i32 @sscal_(ptr noundef %657, ptr noundef %scaloc, ptr noundef %arrayidx729, ptr noundef @c__1)
  %661 = load ptr, ptr %m.addr, align 8
  %662 = load ptr, ptr %f.addr, align 8
  %663 = load i32, ptr %k, align 4
  %664 = load i32, ptr %f_dim1, align 4
  %mul731 = mul nsw i32 %663, %664
  %add732 = add nsw i32 %mul731, 1
  %idxprom733 = sext i32 %add732 to i64
  %arrayidx734 = getelementptr inbounds float, ptr %662, i64 %idxprom733
  %call735 = call i32 @sscal_(ptr noundef %661, ptr noundef %scaloc, ptr noundef %arrayidx734, ptr noundef @c__1)
  br label %for.inc736

for.inc736:                                       ; preds = %for.body725
  %665 = load i32, ptr %k, align 4
  %inc737 = add nsw i32 %665, 1
  store i32 %inc737, ptr %k, align 4
  br label %for.cond722, !llvm.loop !14

for.end738:                                       ; preds = %for.cond722
  %666 = load i32, ptr %je, align 4
  store i32 %666, ptr %i__3, align 4
  %667 = load i32, ptr %js, align 4
  store i32 %667, ptr %k, align 4
  br label %for.cond739

for.cond739:                                      ; preds = %for.inc755, %for.end738
  %668 = load i32, ptr %k, align 4
  %669 = load i32, ptr %i__3, align 4
  %cmp740 = icmp sle i32 %668, %669
  br i1 %cmp740, label %for.body742, label %for.end757

for.body742:                                      ; preds = %for.cond739
  %670 = load i32, ptr %is, align 4
  %sub743 = sub nsw i32 %670, 1
  store i32 %sub743, ptr %i__4, align 4
  %671 = load ptr, ptr %c__.addr, align 8
  %672 = load i32, ptr %k, align 4
  %673 = load i32, ptr %c_dim1, align 4
  %mul744 = mul nsw i32 %672, %673
  %add745 = add nsw i32 %mul744, 1
  %idxprom746 = sext i32 %add745 to i64
  %arrayidx747 = getelementptr inbounds float, ptr %671, i64 %idxprom746
  %call748 = call i32 @sscal_(ptr noundef %i__4, ptr noundef %scaloc, ptr noundef %arrayidx747, ptr noundef @c__1)
  %674 = load i32, ptr %is, align 4
  %sub749 = sub nsw i32 %674, 1
  store i32 %sub749, ptr %i__4, align 4
  %675 = load ptr, ptr %f.addr, align 8
  %676 = load i32, ptr %k, align 4
  %677 = load i32, ptr %f_dim1, align 4
  %mul750 = mul nsw i32 %676, %677
  %add751 = add nsw i32 %mul750, 1
  %idxprom752 = sext i32 %add751 to i64
  %arrayidx753 = getelementptr inbounds float, ptr %675, i64 %idxprom752
  %call754 = call i32 @sscal_(ptr noundef %i__4, ptr noundef %scaloc, ptr noundef %arrayidx753, ptr noundef @c__1)
  br label %for.inc755

for.inc755:                                       ; preds = %for.body742
  %678 = load i32, ptr %k, align 4
  %inc756 = add nsw i32 %678, 1
  store i32 %inc756, ptr %k, align 4
  br label %for.cond739, !llvm.loop !15

for.end757:                                       ; preds = %for.cond739
  %679 = load i32, ptr %je, align 4
  store i32 %679, ptr %i__3, align 4
  %680 = load i32, ptr %js, align 4
  store i32 %680, ptr %k, align 4
  br label %for.cond758

for.cond758:                                      ; preds = %for.inc776, %for.end757
  %681 = load i32, ptr %k, align 4
  %682 = load i32, ptr %i__3, align 4
  %cmp759 = icmp sle i32 %681, %682
  br i1 %cmp759, label %for.body761, label %for.end778

for.body761:                                      ; preds = %for.cond758
  %683 = load ptr, ptr %m.addr, align 8
  %684 = load i32, ptr %683, align 4
  %685 = load i32, ptr %ie, align 4
  %sub762 = sub nsw i32 %684, %685
  store i32 %sub762, ptr %i__4, align 4
  %686 = load ptr, ptr %c__.addr, align 8
  %687 = load i32, ptr %ie, align 4
  %add763 = add nsw i32 %687, 1
  %688 = load i32, ptr %k, align 4
  %689 = load i32, ptr %c_dim1, align 4
  %mul764 = mul nsw i32 %688, %689
  %add765 = add nsw i32 %add763, %mul764
  %idxprom766 = sext i32 %add765 to i64
  %arrayidx767 = getelementptr inbounds float, ptr %686, i64 %idxprom766
  %call768 = call i32 @sscal_(ptr noundef %i__4, ptr noundef %scaloc, ptr noundef %arrayidx767, ptr noundef @c__1)
  %690 = load ptr, ptr %m.addr, align 8
  %691 = load i32, ptr %690, align 4
  %692 = load i32, ptr %ie, align 4
  %sub769 = sub nsw i32 %691, %692
  store i32 %sub769, ptr %i__4, align 4
  %693 = load ptr, ptr %f.addr, align 8
  %694 = load i32, ptr %ie, align 4
  %add770 = add nsw i32 %694, 1
  %695 = load i32, ptr %k, align 4
  %696 = load i32, ptr %f_dim1, align 4
  %mul771 = mul nsw i32 %695, %696
  %add772 = add nsw i32 %add770, %mul771
  %idxprom773 = sext i32 %add772 to i64
  %arrayidx774 = getelementptr inbounds float, ptr %693, i64 %idxprom773
  %call775 = call i32 @sscal_(ptr noundef %i__4, ptr noundef %scaloc, ptr noundef %arrayidx774, ptr noundef @c__1)
  br label %for.inc776

for.inc776:                                       ; preds = %for.body761
  %697 = load i32, ptr %k, align 4
  %inc777 = add nsw i32 %697, 1
  store i32 %inc777, ptr %k, align 4
  br label %for.cond758, !llvm.loop !16

for.end778:                                       ; preds = %for.cond758
  %698 = load ptr, ptr %n.addr, align 8
  %699 = load i32, ptr %698, align 4
  store i32 %699, ptr %i__3, align 4
  %700 = load i32, ptr %je, align 4
  %add779 = add nsw i32 %700, 1
  store i32 %add779, ptr %k, align 4
  br label %for.cond780

for.cond780:                                      ; preds = %for.inc794, %for.end778
  %701 = load i32, ptr %k, align 4
  %702 = load i32, ptr %i__3, align 4
  %cmp781 = icmp sle i32 %701, %702
  br i1 %cmp781, label %for.body783, label %for.end796

for.body783:                                      ; preds = %for.cond780
  %703 = load ptr, ptr %m.addr, align 8
  %704 = load ptr, ptr %c__.addr, align 8
  %705 = load i32, ptr %k, align 4
  %706 = load i32, ptr %c_dim1, align 4
  %mul784 = mul nsw i32 %705, %706
  %add785 = add nsw i32 %mul784, 1
  %idxprom786 = sext i32 %add785 to i64
  %arrayidx787 = getelementptr inbounds float, ptr %704, i64 %idxprom786
  %call788 = call i32 @sscal_(ptr noundef %703, ptr noundef %scaloc, ptr noundef %arrayidx787, ptr noundef @c__1)
  %707 = load ptr, ptr %m.addr, align 8
  %708 = load ptr, ptr %f.addr, align 8
  %709 = load i32, ptr %k, align 4
  %710 = load i32, ptr %f_dim1, align 4
  %mul789 = mul nsw i32 %709, %710
  %add790 = add nsw i32 %mul789, 1
  %idxprom791 = sext i32 %add790 to i64
  %arrayidx792 = getelementptr inbounds float, ptr %708, i64 %idxprom791
  %call793 = call i32 @sscal_(ptr noundef %707, ptr noundef %scaloc, ptr noundef %arrayidx792, ptr noundef @c__1)
  br label %for.inc794

for.inc794:                                       ; preds = %for.body783
  %711 = load i32, ptr %k, align 4
  %inc795 = add nsw i32 %711, 1
  store i32 %inc795, ptr %k, align 4
  br label %for.cond780, !llvm.loop !17

for.end796:                                       ; preds = %for.cond780
  %712 = load float, ptr %scaloc, align 4
  %713 = load ptr, ptr %scale.addr, align 8
  %714 = load float, ptr %713, align 4
  %mul797 = fmul float %714, %712
  store float %mul797, ptr %713, align 4
  br label %if.end798

if.end798:                                        ; preds = %for.end796, %if.end717
  %715 = load i32, ptr %j, align 4
  %716 = load i32, ptr %p, align 4
  %add799 = add nsw i32 %716, 2
  %cmp800 = icmp sgt i32 %715, %add799
  br i1 %cmp800, label %if.then802, label %if.end829

if.then802:                                       ; preds = %if.end798
  %717 = load i32, ptr %js, align 4
  %sub803 = sub nsw i32 %717, 1
  store i32 %sub803, ptr %i__3, align 4
  %718 = load ptr, ptr %c__.addr, align 8
  %719 = load i32, ptr %is, align 4
  %720 = load i32, ptr %js, align 4
  %721 = load i32, ptr %c_dim1, align 4
  %mul804 = mul nsw i32 %720, %721
  %add805 = add nsw i32 %719, %mul804
  %idxprom806 = sext i32 %add805 to i64
  %arrayidx807 = getelementptr inbounds float, ptr %718, i64 %idxprom806
  %722 = load ptr, ptr %ldc.addr, align 8
  %723 = load ptr, ptr %b.addr, align 8
  %724 = load i32, ptr %js, align 4
  %725 = load i32, ptr %b_dim1, align 4
  %mul808 = mul nsw i32 %724, %725
  %add809 = add nsw i32 %mul808, 1
  %idxprom810 = sext i32 %add809 to i64
  %arrayidx811 = getelementptr inbounds float, ptr %723, i64 %idxprom810
  %726 = load ptr, ptr %ldb.addr, align 8
  %727 = load ptr, ptr %f.addr, align 8
  %728 = load i32, ptr %is, align 4
  %729 = load i32, ptr %f_dim1, align 4
  %add812 = add nsw i32 %728, %729
  %idxprom813 = sext i32 %add812 to i64
  %arrayidx814 = getelementptr inbounds float, ptr %727, i64 %idxprom813
  %730 = load ptr, ptr %ldf.addr, align 8
  %call815 = call i32 @sgemm_(ptr noundef @.str, ptr noundef @.str.1, ptr noundef %mb, ptr noundef %i__3, ptr noundef %nb, ptr noundef @c_b52, ptr noundef %arrayidx807, ptr noundef %722, ptr noundef %arrayidx811, ptr noundef %726, ptr noundef @c_b52, ptr noundef %arrayidx814, ptr noundef %730)
  %731 = load i32, ptr %js, align 4
  %sub816 = sub nsw i32 %731, 1
  store i32 %sub816, ptr %i__3, align 4
  %732 = load ptr, ptr %f.addr, align 8
  %733 = load i32, ptr %is, align 4
  %734 = load i32, ptr %js, align 4
  %735 = load i32, ptr %f_dim1, align 4
  %mul817 = mul nsw i32 %734, %735
  %add818 = add nsw i32 %733, %mul817
  %idxprom819 = sext i32 %add818 to i64
  %arrayidx820 = getelementptr inbounds float, ptr %732, i64 %idxprom819
  %736 = load ptr, ptr %ldf.addr, align 8
  %737 = load ptr, ptr %e.addr, align 8
  %738 = load i32, ptr %js, align 4
  %739 = load i32, ptr %e_dim1, align 4
  %mul821 = mul nsw i32 %738, %739
  %add822 = add nsw i32 %mul821, 1
  %idxprom823 = sext i32 %add822 to i64
  %arrayidx824 = getelementptr inbounds float, ptr %737, i64 %idxprom823
  %740 = load ptr, ptr %lde.addr, align 8
  %741 = load ptr, ptr %f.addr, align 8
  %742 = load i32, ptr %is, align 4
  %743 = load i32, ptr %f_dim1, align 4
  %add825 = add nsw i32 %742, %743
  %idxprom826 = sext i32 %add825 to i64
  %arrayidx827 = getelementptr inbounds float, ptr %741, i64 %idxprom826
  %744 = load ptr, ptr %ldf.addr, align 8
  %call828 = call i32 @sgemm_(ptr noundef @.str, ptr noundef @.str.1, ptr noundef %mb, ptr noundef %i__3, ptr noundef %nb, ptr noundef @c_b52, ptr noundef %arrayidx820, ptr noundef %736, ptr noundef %arrayidx824, ptr noundef %740, ptr noundef @c_b52, ptr noundef %arrayidx827, ptr noundef %744)
  br label %if.end829

if.end829:                                        ; preds = %if.then802, %if.end798
  %745 = load i32, ptr %i__, align 4
  %746 = load i32, ptr %p, align 4
  %cmp830 = icmp slt i32 %745, %746
  br i1 %cmp830, label %if.then832, label %if.end865

if.then832:                                       ; preds = %if.end829
  %747 = load ptr, ptr %m.addr, align 8
  %748 = load i32, ptr %747, align 4
  %749 = load i32, ptr %ie, align 4
  %sub833 = sub nsw i32 %748, %749
  store i32 %sub833, ptr %i__3, align 4
  %750 = load ptr, ptr %a.addr, align 8
  %751 = load i32, ptr %is, align 4
  %752 = load i32, ptr %ie, align 4
  %add834 = add nsw i32 %752, 1
  %753 = load i32, ptr %a_dim1, align 4
  %mul835 = mul nsw i32 %add834, %753
  %add836 = add nsw i32 %751, %mul835
  %idxprom837 = sext i32 %add836 to i64
  %arrayidx838 = getelementptr inbounds float, ptr %750, i64 %idxprom837
  %754 = load ptr, ptr %lda.addr, align 8
  %755 = load ptr, ptr %c__.addr, align 8
  %756 = load i32, ptr %is, align 4
  %757 = load i32, ptr %js, align 4
  %758 = load i32, ptr %c_dim1, align 4
  %mul839 = mul nsw i32 %757, %758
  %add840 = add nsw i32 %756, %mul839
  %idxprom841 = sext i32 %add840 to i64
  %arrayidx842 = getelementptr inbounds float, ptr %755, i64 %idxprom841
  %759 = load ptr, ptr %ldc.addr, align 8
  %760 = load ptr, ptr %c__.addr, align 8
  %761 = load i32, ptr %ie, align 4
  %add843 = add nsw i32 %761, 1
  %762 = load i32, ptr %js, align 4
  %763 = load i32, ptr %c_dim1, align 4
  %mul844 = mul nsw i32 %762, %763
  %add845 = add nsw i32 %add843, %mul844
  %idxprom846 = sext i32 %add845 to i64
  %arrayidx847 = getelementptr inbounds float, ptr %760, i64 %idxprom846
  %764 = load ptr, ptr %ldc.addr, align 8
  %call848 = call i32 @sgemm_(ptr noundef @.str.1, ptr noundef @.str, ptr noundef %i__3, ptr noundef %nb, ptr noundef %mb, ptr noundef @c_b51, ptr noundef %arrayidx838, ptr noundef %754, ptr noundef %arrayidx842, ptr noundef %759, ptr noundef @c_b52, ptr noundef %arrayidx847, ptr noundef %764)
  %765 = load ptr, ptr %m.addr, align 8
  %766 = load i32, ptr %765, align 4
  %767 = load i32, ptr %ie, align 4
  %sub849 = sub nsw i32 %766, %767
  store i32 %sub849, ptr %i__3, align 4
  %768 = load ptr, ptr %d__.addr, align 8
  %769 = load i32, ptr %is, align 4
  %770 = load i32, ptr %ie, align 4
  %add850 = add nsw i32 %770, 1
  %771 = load i32, ptr %d_dim1, align 4
  %mul851 = mul nsw i32 %add850, %771
  %add852 = add nsw i32 %769, %mul851
  %idxprom853 = sext i32 %add852 to i64
  %arrayidx854 = getelementptr inbounds float, ptr %768, i64 %idxprom853
  %772 = load ptr, ptr %ldd.addr, align 8
  %773 = load ptr, ptr %f.addr, align 8
  %774 = load i32, ptr %is, align 4
  %775 = load i32, ptr %js, align 4
  %776 = load i32, ptr %f_dim1, align 4
  %mul855 = mul nsw i32 %775, %776
  %add856 = add nsw i32 %774, %mul855
  %idxprom857 = sext i32 %add856 to i64
  %arrayidx858 = getelementptr inbounds float, ptr %773, i64 %idxprom857
  %777 = load ptr, ptr %ldf.addr, align 8
  %778 = load ptr, ptr %c__.addr, align 8
  %779 = load i32, ptr %ie, align 4
  %add859 = add nsw i32 %779, 1
  %780 = load i32, ptr %js, align 4
  %781 = load i32, ptr %c_dim1, align 4
  %mul860 = mul nsw i32 %780, %781
  %add861 = add nsw i32 %add859, %mul860
  %idxprom862 = sext i32 %add861 to i64
  %arrayidx863 = getelementptr inbounds float, ptr %778, i64 %idxprom862
  %782 = load ptr, ptr %ldc.addr, align 8
  %call864 = call i32 @sgemm_(ptr noundef @.str.1, ptr noundef @.str, ptr noundef %i__3, ptr noundef %nb, ptr noundef %mb, ptr noundef @c_b51, ptr noundef %arrayidx854, ptr noundef %772, ptr noundef %arrayidx858, ptr noundef %777, ptr noundef @c_b52, ptr noundef %arrayidx863, ptr noundef %782)
  br label %if.end865

if.end865:                                        ; preds = %if.then832, %if.end829
  br label %for.inc866

for.inc866:                                       ; preds = %if.end865
  %783 = load i32, ptr %j, align 4
  %dec867 = add nsw i32 %783, -1
  store i32 %dec867, ptr %j, align 4
  br label %for.cond674, !llvm.loop !18

for.end868:                                       ; preds = %for.cond674
  br label %for.inc869

for.inc869:                                       ; preds = %for.end868
  %784 = load i32, ptr %i__, align 4
  %inc870 = add nsw i32 %784, 1
  store i32 %inc870, ptr %i__, align 4
  br label %for.cond661, !llvm.loop !19

for.end871:                                       ; preds = %for.cond661
  br label %if.end872

if.end872:                                        ; preds = %for.end871, %for.end659
  %785 = load i32, ptr %lwmin, align 4
  %conv873 = sitofp i32 %785 to float
  %786 = load ptr, ptr %work.addr, align 8
  %arrayidx874 = getelementptr inbounds float, ptr %786, i64 1
  store float %conv873, ptr %arrayidx874, align 4
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end872, %for.end, %if.end158, %if.then143, %if.then139
  %787 = load i32, ptr %retval, align 4
  ret i32 %787
}

declare i32 @lsame_(ptr noundef, ptr noundef) #1

declare i32 @xerbla_(ptr noundef, ptr noundef) #1

declare i32 @ilaenv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @slaset_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @stgsy2_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
declare double @sqrt(double noundef) #2

declare i32 @slacpy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @sscal_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @sgemm_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

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
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6}
!14 = distinct !{!14, !6}
!15 = distinct !{!15, !6}
!16 = distinct !{!16, !6}
!17 = distinct !{!17, !6}
!18 = distinct !{!18, !6}
!19 = distinct !{!19, !6}

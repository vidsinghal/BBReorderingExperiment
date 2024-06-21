; ModuleID = 'samples/53.bc'
source_filename = "/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/map/lapack2flamec/f2c/c/sggsvd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"V\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"Q\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"SGGSVD\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"Precision\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"Safe Minimum\00", align 1
@c__1 = internal global i32 1, align 4

; Function Attrs: noinline nounwind optnone uwtable
define i32 @sggsvd_(ptr noundef %jobu, ptr noundef %jobv, ptr noundef %jobq, ptr noundef %m, ptr noundef %n, ptr noundef %p, ptr noundef %k, ptr noundef %l, ptr noundef %a, ptr noundef %lda, ptr noundef %b, ptr noundef %ldb, ptr noundef %alpha, ptr noundef %beta, ptr noundef %u, ptr noundef %ldu, ptr noundef %v, ptr noundef %ldv, ptr noundef %q, ptr noundef %ldq, ptr noundef %work, ptr noundef %iwork, ptr noundef %info) #0 {
entry:
  %retval = alloca i32, align 4
  %jobu.addr = alloca ptr, align 8
  %jobv.addr = alloca ptr, align 8
  %jobq.addr = alloca ptr, align 8
  %m.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %k.addr = alloca ptr, align 8
  %l.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %lda.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %ldb.addr = alloca ptr, align 8
  %alpha.addr = alloca ptr, align 8
  %beta.addr = alloca ptr, align 8
  %u.addr = alloca ptr, align 8
  %ldu.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %ldv.addr = alloca ptr, align 8
  %q.addr = alloca ptr, align 8
  %ldq.addr = alloca ptr, align 8
  %work.addr = alloca ptr, align 8
  %iwork.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %a_dim1 = alloca i32, align 4
  %a_offset = alloca i32, align 4
  %b_dim1 = alloca i32, align 4
  %b_offset = alloca i32, align 4
  %q_dim1 = alloca i32, align 4
  %q_offset = alloca i32, align 4
  %u_dim1 = alloca i32, align 4
  %u_offset = alloca i32, align 4
  %v_dim1 = alloca i32, align 4
  %v_offset = alloca i32, align 4
  %i__1 = alloca i32, align 4
  %i__2 = alloca i32, align 4
  %i__ = alloca i32, align 4
  %j = alloca i32, align 4
  %ulp = alloca float, align 4
  %ibnd = alloca i32, align 4
  %tola = alloca float, align 4
  %isub = alloca i32, align 4
  %tolb = alloca float, align 4
  %unfl = alloca float, align 4
  %temp = alloca float, align 4
  %smax = alloca float, align 4
  %anorm = alloca float, align 4
  %bnorm = alloca float, align 4
  %wantq = alloca i32, align 4
  %wantu = alloca i32, align 4
  %wantv = alloca i32, align 4
  %ncycle = alloca i32, align 4
  store ptr %jobu, ptr %jobu.addr, align 8
  store ptr %jobv, ptr %jobv.addr, align 8
  store ptr %jobq, ptr %jobq.addr, align 8
  store ptr %m, ptr %m.addr, align 8
  store ptr %n, ptr %n.addr, align 8
  store ptr %p, ptr %p.addr, align 8
  store ptr %k, ptr %k.addr, align 8
  store ptr %l, ptr %l.addr, align 8
  store ptr %a, ptr %a.addr, align 8
  store ptr %lda, ptr %lda.addr, align 8
  store ptr %b, ptr %b.addr, align 8
  store ptr %ldb, ptr %ldb.addr, align 8
  store ptr %alpha, ptr %alpha.addr, align 8
  store ptr %beta, ptr %beta.addr, align 8
  store ptr %u, ptr %u.addr, align 8
  store ptr %ldu, ptr %ldu.addr, align 8
  store ptr %v, ptr %v.addr, align 8
  store ptr %ldv, ptr %ldv.addr, align 8
  store ptr %q, ptr %q.addr, align 8
  store ptr %ldq, ptr %ldq.addr, align 8
  store ptr %work, ptr %work.addr, align 8
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
  %10 = load ptr, ptr %alpha.addr, align 8
  %incdec.ptr = getelementptr inbounds float, ptr %10, i32 -1
  store ptr %incdec.ptr, ptr %alpha.addr, align 8
  %11 = load ptr, ptr %beta.addr, align 8
  %incdec.ptr5 = getelementptr inbounds float, ptr %11, i32 -1
  store ptr %incdec.ptr5, ptr %beta.addr, align 8
  %12 = load ptr, ptr %ldu.addr, align 8
  %13 = load i32, ptr %12, align 4
  store i32 %13, ptr %u_dim1, align 4
  %14 = load i32, ptr %u_dim1, align 4
  %add6 = add nsw i32 1, %14
  store i32 %add6, ptr %u_offset, align 4
  %15 = load i32, ptr %u_offset, align 4
  %16 = load ptr, ptr %u.addr, align 8
  %idx.ext7 = sext i32 %15 to i64
  %idx.neg8 = sub i64 0, %idx.ext7
  %add.ptr9 = getelementptr inbounds float, ptr %16, i64 %idx.neg8
  store ptr %add.ptr9, ptr %u.addr, align 8
  %17 = load ptr, ptr %ldv.addr, align 8
  %18 = load i32, ptr %17, align 4
  store i32 %18, ptr %v_dim1, align 4
  %19 = load i32, ptr %v_dim1, align 4
  %add10 = add nsw i32 1, %19
  store i32 %add10, ptr %v_offset, align 4
  %20 = load i32, ptr %v_offset, align 4
  %21 = load ptr, ptr %v.addr, align 8
  %idx.ext11 = sext i32 %20 to i64
  %idx.neg12 = sub i64 0, %idx.ext11
  %add.ptr13 = getelementptr inbounds float, ptr %21, i64 %idx.neg12
  store ptr %add.ptr13, ptr %v.addr, align 8
  %22 = load ptr, ptr %ldq.addr, align 8
  %23 = load i32, ptr %22, align 4
  store i32 %23, ptr %q_dim1, align 4
  %24 = load i32, ptr %q_dim1, align 4
  %add14 = add nsw i32 1, %24
  store i32 %add14, ptr %q_offset, align 4
  %25 = load i32, ptr %q_offset, align 4
  %26 = load ptr, ptr %q.addr, align 8
  %idx.ext15 = sext i32 %25 to i64
  %idx.neg16 = sub i64 0, %idx.ext15
  %add.ptr17 = getelementptr inbounds float, ptr %26, i64 %idx.neg16
  store ptr %add.ptr17, ptr %q.addr, align 8
  %27 = load ptr, ptr %work.addr, align 8
  %incdec.ptr18 = getelementptr inbounds float, ptr %27, i32 -1
  store ptr %incdec.ptr18, ptr %work.addr, align 8
  %28 = load ptr, ptr %iwork.addr, align 8
  %incdec.ptr19 = getelementptr inbounds i32, ptr %28, i32 -1
  store ptr %incdec.ptr19, ptr %iwork.addr, align 8
  %29 = load ptr, ptr %jobu.addr, align 8
  %call = call i32 @lsame_(ptr noundef %29, ptr noundef @.str)
  store i32 %call, ptr %wantu, align 4
  %30 = load ptr, ptr %jobv.addr, align 8
  %call20 = call i32 @lsame_(ptr noundef %30, ptr noundef @.str.1)
  store i32 %call20, ptr %wantv, align 4
  %31 = load ptr, ptr %jobq.addr, align 8
  %call21 = call i32 @lsame_(ptr noundef %31, ptr noundef @.str.2)
  store i32 %call21, ptr %wantq, align 4
  %32 = load ptr, ptr %info.addr, align 8
  store i32 0, ptr %32, align 4
  %33 = load i32, ptr %wantu, align 4
  %tobool = icmp ne i32 %33, 0
  br i1 %tobool, label %if.else, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %34 = load ptr, ptr %jobu.addr, align 8
  %call22 = call i32 @lsame_(ptr noundef %34, ptr noundef @.str.3)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.else, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  %35 = load ptr, ptr %info.addr, align 8
  store i32 -1, ptr %35, align 4
  br label %if.end84

if.else:                                          ; preds = %lor.lhs.false, %entry
  %36 = load i32, ptr %wantv, align 4
  %tobool24 = icmp ne i32 %36, 0
  br i1 %tobool24, label %if.else29, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %if.else
  %37 = load ptr, ptr %jobv.addr, align 8
  %call26 = call i32 @lsame_(ptr noundef %37, ptr noundef @.str.3)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.else29, label %if.then28

if.then28:                                        ; preds = %lor.lhs.false25
  %38 = load ptr, ptr %info.addr, align 8
  store i32 -2, ptr %38, align 4
  br label %if.end83

if.else29:                                        ; preds = %lor.lhs.false25, %if.else
  %39 = load i32, ptr %wantq, align 4
  %tobool30 = icmp ne i32 %39, 0
  br i1 %tobool30, label %if.else35, label %lor.lhs.false31

lor.lhs.false31:                                  ; preds = %if.else29
  %40 = load ptr, ptr %jobq.addr, align 8
  %call32 = call i32 @lsame_(ptr noundef %40, ptr noundef @.str.3)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.else35, label %if.then34

if.then34:                                        ; preds = %lor.lhs.false31
  %41 = load ptr, ptr %info.addr, align 8
  store i32 -3, ptr %41, align 4
  br label %if.end82

if.else35:                                        ; preds = %lor.lhs.false31, %if.else29
  %42 = load ptr, ptr %m.addr, align 8
  %43 = load i32, ptr %42, align 4
  %cmp = icmp slt i32 %43, 0
  br i1 %cmp, label %if.then36, label %if.else37

if.then36:                                        ; preds = %if.else35
  %44 = load ptr, ptr %info.addr, align 8
  store i32 -4, ptr %44, align 4
  br label %if.end81

if.else37:                                        ; preds = %if.else35
  %45 = load ptr, ptr %n.addr, align 8
  %46 = load i32, ptr %45, align 4
  %cmp38 = icmp slt i32 %46, 0
  br i1 %cmp38, label %if.then39, label %if.else40

if.then39:                                        ; preds = %if.else37
  %47 = load ptr, ptr %info.addr, align 8
  store i32 -5, ptr %47, align 4
  br label %if.end80

if.else40:                                        ; preds = %if.else37
  %48 = load ptr, ptr %p.addr, align 8
  %49 = load i32, ptr %48, align 4
  %cmp41 = icmp slt i32 %49, 0
  br i1 %cmp41, label %if.then42, label %if.else43

if.then42:                                        ; preds = %if.else40
  %50 = load ptr, ptr %info.addr, align 8
  store i32 -6, ptr %50, align 4
  br label %if.end79

if.else43:                                        ; preds = %if.else40
  %51 = load ptr, ptr %lda.addr, align 8
  %52 = load i32, ptr %51, align 4
  %53 = load ptr, ptr %m.addr, align 8
  %54 = load i32, ptr %53, align 4
  %cmp44 = icmp sge i32 1, %54
  br i1 %cmp44, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else43
  br label %cond.end

cond.false:                                       ; preds = %if.else43
  %55 = load ptr, ptr %m.addr, align 8
  %56 = load i32, ptr %55, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %56, %cond.false ]
  %cmp45 = icmp slt i32 %52, %cond
  br i1 %cmp45, label %if.then46, label %if.else47

if.then46:                                        ; preds = %cond.end
  %57 = load ptr, ptr %info.addr, align 8
  store i32 -10, ptr %57, align 4
  br label %if.end78

if.else47:                                        ; preds = %cond.end
  %58 = load ptr, ptr %ldb.addr, align 8
  %59 = load i32, ptr %58, align 4
  %60 = load ptr, ptr %p.addr, align 8
  %61 = load i32, ptr %60, align 4
  %cmp48 = icmp sge i32 1, %61
  br i1 %cmp48, label %cond.true49, label %cond.false50

cond.true49:                                      ; preds = %if.else47
  br label %cond.end51

cond.false50:                                     ; preds = %if.else47
  %62 = load ptr, ptr %p.addr, align 8
  %63 = load i32, ptr %62, align 4
  br label %cond.end51

cond.end51:                                       ; preds = %cond.false50, %cond.true49
  %cond52 = phi i32 [ 1, %cond.true49 ], [ %63, %cond.false50 ]
  %cmp53 = icmp slt i32 %59, %cond52
  br i1 %cmp53, label %if.then54, label %if.else55

if.then54:                                        ; preds = %cond.end51
  %64 = load ptr, ptr %info.addr, align 8
  store i32 -12, ptr %64, align 4
  br label %if.end77

if.else55:                                        ; preds = %cond.end51
  %65 = load ptr, ptr %ldu.addr, align 8
  %66 = load i32, ptr %65, align 4
  %cmp56 = icmp slt i32 %66, 1
  br i1 %cmp56, label %if.then60, label %lor.lhs.false57

lor.lhs.false57:                                  ; preds = %if.else55
  %67 = load i32, ptr %wantu, align 4
  %tobool58 = icmp ne i32 %67, 0
  br i1 %tobool58, label %land.lhs.true, label %if.else61

land.lhs.true:                                    ; preds = %lor.lhs.false57
  %68 = load ptr, ptr %ldu.addr, align 8
  %69 = load i32, ptr %68, align 4
  %70 = load ptr, ptr %m.addr, align 8
  %71 = load i32, ptr %70, align 4
  %cmp59 = icmp slt i32 %69, %71
  br i1 %cmp59, label %if.then60, label %if.else61

if.then60:                                        ; preds = %land.lhs.true, %if.else55
  %72 = load ptr, ptr %info.addr, align 8
  store i32 -16, ptr %72, align 4
  br label %if.end76

if.else61:                                        ; preds = %land.lhs.true, %lor.lhs.false57
  %73 = load ptr, ptr %ldv.addr, align 8
  %74 = load i32, ptr %73, align 4
  %cmp62 = icmp slt i32 %74, 1
  br i1 %cmp62, label %if.then67, label %lor.lhs.false63

lor.lhs.false63:                                  ; preds = %if.else61
  %75 = load i32, ptr %wantv, align 4
  %tobool64 = icmp ne i32 %75, 0
  br i1 %tobool64, label %land.lhs.true65, label %if.else68

land.lhs.true65:                                  ; preds = %lor.lhs.false63
  %76 = load ptr, ptr %ldv.addr, align 8
  %77 = load i32, ptr %76, align 4
  %78 = load ptr, ptr %p.addr, align 8
  %79 = load i32, ptr %78, align 4
  %cmp66 = icmp slt i32 %77, %79
  br i1 %cmp66, label %if.then67, label %if.else68

if.then67:                                        ; preds = %land.lhs.true65, %if.else61
  %80 = load ptr, ptr %info.addr, align 8
  store i32 -18, ptr %80, align 4
  br label %if.end75

if.else68:                                        ; preds = %land.lhs.true65, %lor.lhs.false63
  %81 = load ptr, ptr %ldq.addr, align 8
  %82 = load i32, ptr %81, align 4
  %cmp69 = icmp slt i32 %82, 1
  br i1 %cmp69, label %if.then74, label %lor.lhs.false70

lor.lhs.false70:                                  ; preds = %if.else68
  %83 = load i32, ptr %wantq, align 4
  %tobool71 = icmp ne i32 %83, 0
  br i1 %tobool71, label %land.lhs.true72, label %if.end

land.lhs.true72:                                  ; preds = %lor.lhs.false70
  %84 = load ptr, ptr %ldq.addr, align 8
  %85 = load i32, ptr %84, align 4
  %86 = load ptr, ptr %n.addr, align 8
  %87 = load i32, ptr %86, align 4
  %cmp73 = icmp slt i32 %85, %87
  br i1 %cmp73, label %if.then74, label %if.end

if.then74:                                        ; preds = %land.lhs.true72, %if.else68
  %88 = load ptr, ptr %info.addr, align 8
  store i32 -20, ptr %88, align 4
  br label %if.end

if.end:                                           ; preds = %if.then74, %land.lhs.true72, %lor.lhs.false70
  br label %if.end75

if.end75:                                         ; preds = %if.end, %if.then67
  br label %if.end76

if.end76:                                         ; preds = %if.end75, %if.then60
  br label %if.end77

if.end77:                                         ; preds = %if.end76, %if.then54
  br label %if.end78

if.end78:                                         ; preds = %if.end77, %if.then46
  br label %if.end79

if.end79:                                         ; preds = %if.end78, %if.then42
  br label %if.end80

if.end80:                                         ; preds = %if.end79, %if.then39
  br label %if.end81

if.end81:                                         ; preds = %if.end80, %if.then36
  br label %if.end82

if.end82:                                         ; preds = %if.end81, %if.then34
  br label %if.end83

if.end83:                                         ; preds = %if.end82, %if.then28
  br label %if.end84

if.end84:                                         ; preds = %if.end83, %if.then
  %89 = load ptr, ptr %info.addr, align 8
  %90 = load i32, ptr %89, align 4
  %cmp85 = icmp ne i32 %90, 0
  br i1 %cmp85, label %if.then86, label %if.end88

if.then86:                                        ; preds = %if.end84
  %91 = load ptr, ptr %info.addr, align 8
  %92 = load i32, ptr %91, align 4
  %sub = sub nsw i32 0, %92
  store i32 %sub, ptr %i__1, align 4
  %call87 = call i32 @xerbla_(ptr noundef @.str.4, ptr noundef %i__1)
  store i32 0, ptr %retval, align 4
  br label %return

if.end88:                                         ; preds = %if.end84
  %93 = load ptr, ptr %m.addr, align 8
  %94 = load ptr, ptr %n.addr, align 8
  %95 = load ptr, ptr %a.addr, align 8
  %96 = load i32, ptr %a_offset, align 4
  %idxprom = sext i32 %96 to i64
  %arrayidx = getelementptr inbounds float, ptr %95, i64 %idxprom
  %97 = load ptr, ptr %lda.addr, align 8
  %98 = load ptr, ptr %work.addr, align 8
  %arrayidx89 = getelementptr inbounds float, ptr %98, i64 1
  %call90 = call float @slange_(ptr noundef @.str.5, ptr noundef %93, ptr noundef %94, ptr noundef %arrayidx, ptr noundef %97, ptr noundef %arrayidx89)
  store float %call90, ptr %anorm, align 4
  %99 = load ptr, ptr %p.addr, align 8
  %100 = load ptr, ptr %n.addr, align 8
  %101 = load ptr, ptr %b.addr, align 8
  %102 = load i32, ptr %b_offset, align 4
  %idxprom91 = sext i32 %102 to i64
  %arrayidx92 = getelementptr inbounds float, ptr %101, i64 %idxprom91
  %103 = load ptr, ptr %ldb.addr, align 8
  %104 = load ptr, ptr %work.addr, align 8
  %arrayidx93 = getelementptr inbounds float, ptr %104, i64 1
  %call94 = call float @slange_(ptr noundef @.str.5, ptr noundef %99, ptr noundef %100, ptr noundef %arrayidx92, ptr noundef %103, ptr noundef %arrayidx93)
  store float %call94, ptr %bnorm, align 4
  %call95 = call float @slamch_(ptr noundef @.str.6)
  store float %call95, ptr %ulp, align 4
  %call96 = call float @slamch_(ptr noundef @.str.7)
  store float %call96, ptr %unfl, align 4
  %105 = load ptr, ptr %m.addr, align 8
  %106 = load i32, ptr %105, align 4
  %107 = load ptr, ptr %n.addr, align 8
  %108 = load i32, ptr %107, align 4
  %cmp97 = icmp sge i32 %106, %108
  br i1 %cmp97, label %cond.true98, label %cond.false99

cond.true98:                                      ; preds = %if.end88
  %109 = load ptr, ptr %m.addr, align 8
  %110 = load i32, ptr %109, align 4
  br label %cond.end100

cond.false99:                                     ; preds = %if.end88
  %111 = load ptr, ptr %n.addr, align 8
  %112 = load i32, ptr %111, align 4
  br label %cond.end100

cond.end100:                                      ; preds = %cond.false99, %cond.true98
  %cond101 = phi i32 [ %110, %cond.true98 ], [ %112, %cond.false99 ]
  %conv = sitofp i32 %cond101 to float
  %113 = load float, ptr %anorm, align 4
  %114 = load float, ptr %unfl, align 4
  %cmp102 = fcmp oge float %113, %114
  br i1 %cmp102, label %cond.true104, label %cond.false105

cond.true104:                                     ; preds = %cond.end100
  %115 = load float, ptr %anorm, align 4
  br label %cond.end106

cond.false105:                                    ; preds = %cond.end100
  %116 = load float, ptr %unfl, align 4
  br label %cond.end106

cond.end106:                                      ; preds = %cond.false105, %cond.true104
  %cond107 = phi float [ %115, %cond.true104 ], [ %116, %cond.false105 ]
  %mul = fmul float %conv, %cond107
  %117 = load float, ptr %ulp, align 4
  %mul108 = fmul float %mul, %117
  store float %mul108, ptr %tola, align 4
  %118 = load ptr, ptr %p.addr, align 8
  %119 = load i32, ptr %118, align 4
  %120 = load ptr, ptr %n.addr, align 8
  %121 = load i32, ptr %120, align 4
  %cmp109 = icmp sge i32 %119, %121
  br i1 %cmp109, label %cond.true111, label %cond.false112

cond.true111:                                     ; preds = %cond.end106
  %122 = load ptr, ptr %p.addr, align 8
  %123 = load i32, ptr %122, align 4
  br label %cond.end113

cond.false112:                                    ; preds = %cond.end106
  %124 = load ptr, ptr %n.addr, align 8
  %125 = load i32, ptr %124, align 4
  br label %cond.end113

cond.end113:                                      ; preds = %cond.false112, %cond.true111
  %cond114 = phi i32 [ %123, %cond.true111 ], [ %125, %cond.false112 ]
  %conv115 = sitofp i32 %cond114 to float
  %126 = load float, ptr %bnorm, align 4
  %127 = load float, ptr %unfl, align 4
  %cmp116 = fcmp oge float %126, %127
  br i1 %cmp116, label %cond.true118, label %cond.false119

cond.true118:                                     ; preds = %cond.end113
  %128 = load float, ptr %bnorm, align 4
  br label %cond.end120

cond.false119:                                    ; preds = %cond.end113
  %129 = load float, ptr %unfl, align 4
  br label %cond.end120

cond.end120:                                      ; preds = %cond.false119, %cond.true118
  %cond121 = phi float [ %128, %cond.true118 ], [ %129, %cond.false119 ]
  %mul122 = fmul float %conv115, %cond121
  %130 = load float, ptr %ulp, align 4
  %mul123 = fmul float %mul122, %130
  store float %mul123, ptr %tolb, align 4
  %131 = load ptr, ptr %jobu.addr, align 8
  %132 = load ptr, ptr %jobv.addr, align 8
  %133 = load ptr, ptr %jobq.addr, align 8
  %134 = load ptr, ptr %m.addr, align 8
  %135 = load ptr, ptr %p.addr, align 8
  %136 = load ptr, ptr %n.addr, align 8
  %137 = load ptr, ptr %a.addr, align 8
  %138 = load i32, ptr %a_offset, align 4
  %idxprom124 = sext i32 %138 to i64
  %arrayidx125 = getelementptr inbounds float, ptr %137, i64 %idxprom124
  %139 = load ptr, ptr %lda.addr, align 8
  %140 = load ptr, ptr %b.addr, align 8
  %141 = load i32, ptr %b_offset, align 4
  %idxprom126 = sext i32 %141 to i64
  %arrayidx127 = getelementptr inbounds float, ptr %140, i64 %idxprom126
  %142 = load ptr, ptr %ldb.addr, align 8
  %143 = load ptr, ptr %k.addr, align 8
  %144 = load ptr, ptr %l.addr, align 8
  %145 = load ptr, ptr %u.addr, align 8
  %146 = load i32, ptr %u_offset, align 4
  %idxprom128 = sext i32 %146 to i64
  %arrayidx129 = getelementptr inbounds float, ptr %145, i64 %idxprom128
  %147 = load ptr, ptr %ldu.addr, align 8
  %148 = load ptr, ptr %v.addr, align 8
  %149 = load i32, ptr %v_offset, align 4
  %idxprom130 = sext i32 %149 to i64
  %arrayidx131 = getelementptr inbounds float, ptr %148, i64 %idxprom130
  %150 = load ptr, ptr %ldv.addr, align 8
  %151 = load ptr, ptr %q.addr, align 8
  %152 = load i32, ptr %q_offset, align 4
  %idxprom132 = sext i32 %152 to i64
  %arrayidx133 = getelementptr inbounds float, ptr %151, i64 %idxprom132
  %153 = load ptr, ptr %ldq.addr, align 8
  %154 = load ptr, ptr %iwork.addr, align 8
  %arrayidx134 = getelementptr inbounds i32, ptr %154, i64 1
  %155 = load ptr, ptr %work.addr, align 8
  %arrayidx135 = getelementptr inbounds float, ptr %155, i64 1
  %156 = load ptr, ptr %work.addr, align 8
  %157 = load ptr, ptr %n.addr, align 8
  %158 = load i32, ptr %157, align 4
  %add136 = add nsw i32 %158, 1
  %idxprom137 = sext i32 %add136 to i64
  %arrayidx138 = getelementptr inbounds float, ptr %156, i64 %idxprom137
  %159 = load ptr, ptr %info.addr, align 8
  %call139 = call i32 @sggsvp_(ptr noundef %131, ptr noundef %132, ptr noundef %133, ptr noundef %134, ptr noundef %135, ptr noundef %136, ptr noundef %arrayidx125, ptr noundef %139, ptr noundef %arrayidx127, ptr noundef %142, ptr noundef %tola, ptr noundef %tolb, ptr noundef %143, ptr noundef %144, ptr noundef %arrayidx129, ptr noundef %147, ptr noundef %arrayidx131, ptr noundef %150, ptr noundef %arrayidx133, ptr noundef %153, ptr noundef %arrayidx134, ptr noundef %arrayidx135, ptr noundef %arrayidx138, ptr noundef %159)
  %160 = load ptr, ptr %jobu.addr, align 8
  %161 = load ptr, ptr %jobv.addr, align 8
  %162 = load ptr, ptr %jobq.addr, align 8
  %163 = load ptr, ptr %m.addr, align 8
  %164 = load ptr, ptr %p.addr, align 8
  %165 = load ptr, ptr %n.addr, align 8
  %166 = load ptr, ptr %k.addr, align 8
  %167 = load ptr, ptr %l.addr, align 8
  %168 = load ptr, ptr %a.addr, align 8
  %169 = load i32, ptr %a_offset, align 4
  %idxprom140 = sext i32 %169 to i64
  %arrayidx141 = getelementptr inbounds float, ptr %168, i64 %idxprom140
  %170 = load ptr, ptr %lda.addr, align 8
  %171 = load ptr, ptr %b.addr, align 8
  %172 = load i32, ptr %b_offset, align 4
  %idxprom142 = sext i32 %172 to i64
  %arrayidx143 = getelementptr inbounds float, ptr %171, i64 %idxprom142
  %173 = load ptr, ptr %ldb.addr, align 8
  %174 = load ptr, ptr %alpha.addr, align 8
  %arrayidx144 = getelementptr inbounds float, ptr %174, i64 1
  %175 = load ptr, ptr %beta.addr, align 8
  %arrayidx145 = getelementptr inbounds float, ptr %175, i64 1
  %176 = load ptr, ptr %u.addr, align 8
  %177 = load i32, ptr %u_offset, align 4
  %idxprom146 = sext i32 %177 to i64
  %arrayidx147 = getelementptr inbounds float, ptr %176, i64 %idxprom146
  %178 = load ptr, ptr %ldu.addr, align 8
  %179 = load ptr, ptr %v.addr, align 8
  %180 = load i32, ptr %v_offset, align 4
  %idxprom148 = sext i32 %180 to i64
  %arrayidx149 = getelementptr inbounds float, ptr %179, i64 %idxprom148
  %181 = load ptr, ptr %ldv.addr, align 8
  %182 = load ptr, ptr %q.addr, align 8
  %183 = load i32, ptr %q_offset, align 4
  %idxprom150 = sext i32 %183 to i64
  %arrayidx151 = getelementptr inbounds float, ptr %182, i64 %idxprom150
  %184 = load ptr, ptr %ldq.addr, align 8
  %185 = load ptr, ptr %work.addr, align 8
  %arrayidx152 = getelementptr inbounds float, ptr %185, i64 1
  %186 = load ptr, ptr %info.addr, align 8
  %call153 = call i32 @stgsja_(ptr noundef %160, ptr noundef %161, ptr noundef %162, ptr noundef %163, ptr noundef %164, ptr noundef %165, ptr noundef %166, ptr noundef %167, ptr noundef %arrayidx141, ptr noundef %170, ptr noundef %arrayidx143, ptr noundef %173, ptr noundef %tola, ptr noundef %tolb, ptr noundef %arrayidx144, ptr noundef %arrayidx145, ptr noundef %arrayidx147, ptr noundef %178, ptr noundef %arrayidx149, ptr noundef %181, ptr noundef %arrayidx151, ptr noundef %184, ptr noundef %arrayidx152, ptr noundef %ncycle, ptr noundef %186)
  %187 = load ptr, ptr %n.addr, align 8
  %188 = load ptr, ptr %alpha.addr, align 8
  %arrayidx154 = getelementptr inbounds float, ptr %188, i64 1
  %189 = load ptr, ptr %work.addr, align 8
  %arrayidx155 = getelementptr inbounds float, ptr %189, i64 1
  %call156 = call i32 @scopy_(ptr noundef %187, ptr noundef %arrayidx154, ptr noundef @c__1, ptr noundef %arrayidx155, ptr noundef @c__1)
  %190 = load ptr, ptr %l.addr, align 8
  %191 = load i32, ptr %190, align 4
  store i32 %191, ptr %i__1, align 4
  %192 = load ptr, ptr %m.addr, align 8
  %193 = load i32, ptr %192, align 4
  %194 = load ptr, ptr %k.addr, align 8
  %195 = load i32, ptr %194, align 4
  %sub157 = sub nsw i32 %193, %195
  store i32 %sub157, ptr %i__2, align 4
  %196 = load i32, ptr %i__1, align 4
  %197 = load i32, ptr %i__2, align 4
  %cmp158 = icmp sle i32 %196, %197
  br i1 %cmp158, label %cond.true160, label %cond.false161

cond.true160:                                     ; preds = %cond.end120
  %198 = load i32, ptr %i__1, align 4
  br label %cond.end162

cond.false161:                                    ; preds = %cond.end120
  %199 = load i32, ptr %i__2, align 4
  br label %cond.end162

cond.end162:                                      ; preds = %cond.false161, %cond.true160
  %cond163 = phi i32 [ %198, %cond.true160 ], [ %199, %cond.false161 ]
  store i32 %cond163, ptr %ibnd, align 4
  %200 = load i32, ptr %ibnd, align 4
  store i32 %200, ptr %i__1, align 4
  store i32 1, ptr %i__, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc203, %cond.end162
  %201 = load i32, ptr %i__, align 4
  %202 = load i32, ptr %i__1, align 4
  %cmp164 = icmp sle i32 %201, %202
  br i1 %cmp164, label %for.body, label %for.end205

for.body:                                         ; preds = %for.cond
  %203 = load i32, ptr %i__, align 4
  store i32 %203, ptr %isub, align 4
  %204 = load ptr, ptr %work.addr, align 8
  %205 = load ptr, ptr %k.addr, align 8
  %206 = load i32, ptr %205, align 4
  %207 = load i32, ptr %i__, align 4
  %add166 = add nsw i32 %206, %207
  %idxprom167 = sext i32 %add166 to i64
  %arrayidx168 = getelementptr inbounds float, ptr %204, i64 %idxprom167
  %208 = load float, ptr %arrayidx168, align 4
  store float %208, ptr %smax, align 4
  %209 = load i32, ptr %ibnd, align 4
  store i32 %209, ptr %i__2, align 4
  %210 = load i32, ptr %i__, align 4
  %add169 = add nsw i32 %210, 1
  store i32 %add169, ptr %j, align 4
  br label %for.cond170

for.cond170:                                      ; preds = %for.inc, %for.body
  %211 = load i32, ptr %j, align 4
  %212 = load i32, ptr %i__2, align 4
  %cmp171 = icmp sle i32 %211, %212
  br i1 %cmp171, label %for.body173, label %for.end

for.body173:                                      ; preds = %for.cond170
  %213 = load ptr, ptr %work.addr, align 8
  %214 = load ptr, ptr %k.addr, align 8
  %215 = load i32, ptr %214, align 4
  %216 = load i32, ptr %j, align 4
  %add174 = add nsw i32 %215, %216
  %idxprom175 = sext i32 %add174 to i64
  %arrayidx176 = getelementptr inbounds float, ptr %213, i64 %idxprom175
  %217 = load float, ptr %arrayidx176, align 4
  store float %217, ptr %temp, align 4
  %218 = load float, ptr %temp, align 4
  %219 = load float, ptr %smax, align 4
  %cmp177 = fcmp ogt float %218, %219
  br i1 %cmp177, label %if.then179, label %if.end180

if.then179:                                       ; preds = %for.body173
  %220 = load i32, ptr %j, align 4
  store i32 %220, ptr %isub, align 4
  %221 = load float, ptr %temp, align 4
  store float %221, ptr %smax, align 4
  br label %if.end180

if.end180:                                        ; preds = %if.then179, %for.body173
  br label %for.inc

for.inc:                                          ; preds = %if.end180
  %222 = load i32, ptr %j, align 4
  %inc = add nsw i32 %222, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond170, !llvm.loop !5

for.end:                                          ; preds = %for.cond170
  %223 = load i32, ptr %isub, align 4
  %224 = load i32, ptr %i__, align 4
  %cmp181 = icmp ne i32 %223, %224
  br i1 %cmp181, label %if.then183, label %if.else197

if.then183:                                       ; preds = %for.end
  %225 = load ptr, ptr %work.addr, align 8
  %226 = load ptr, ptr %k.addr, align 8
  %227 = load i32, ptr %226, align 4
  %228 = load i32, ptr %i__, align 4
  %add184 = add nsw i32 %227, %228
  %idxprom185 = sext i32 %add184 to i64
  %arrayidx186 = getelementptr inbounds float, ptr %225, i64 %idxprom185
  %229 = load float, ptr %arrayidx186, align 4
  %230 = load ptr, ptr %work.addr, align 8
  %231 = load ptr, ptr %k.addr, align 8
  %232 = load i32, ptr %231, align 4
  %233 = load i32, ptr %isub, align 4
  %add187 = add nsw i32 %232, %233
  %idxprom188 = sext i32 %add187 to i64
  %arrayidx189 = getelementptr inbounds float, ptr %230, i64 %idxprom188
  store float %229, ptr %arrayidx189, align 4
  %234 = load float, ptr %smax, align 4
  %235 = load ptr, ptr %work.addr, align 8
  %236 = load ptr, ptr %k.addr, align 8
  %237 = load i32, ptr %236, align 4
  %238 = load i32, ptr %i__, align 4
  %add190 = add nsw i32 %237, %238
  %idxprom191 = sext i32 %add190 to i64
  %arrayidx192 = getelementptr inbounds float, ptr %235, i64 %idxprom191
  store float %234, ptr %arrayidx192, align 4
  %239 = load ptr, ptr %k.addr, align 8
  %240 = load i32, ptr %239, align 4
  %241 = load i32, ptr %isub, align 4
  %add193 = add nsw i32 %240, %241
  %242 = load ptr, ptr %iwork.addr, align 8
  %243 = load ptr, ptr %k.addr, align 8
  %244 = load i32, ptr %243, align 4
  %245 = load i32, ptr %i__, align 4
  %add194 = add nsw i32 %244, %245
  %idxprom195 = sext i32 %add194 to i64
  %arrayidx196 = getelementptr inbounds i32, ptr %242, i64 %idxprom195
  store i32 %add193, ptr %arrayidx196, align 4
  br label %if.end202

if.else197:                                       ; preds = %for.end
  %246 = load ptr, ptr %k.addr, align 8
  %247 = load i32, ptr %246, align 4
  %248 = load i32, ptr %i__, align 4
  %add198 = add nsw i32 %247, %248
  %249 = load ptr, ptr %iwork.addr, align 8
  %250 = load ptr, ptr %k.addr, align 8
  %251 = load i32, ptr %250, align 4
  %252 = load i32, ptr %i__, align 4
  %add199 = add nsw i32 %251, %252
  %idxprom200 = sext i32 %add199 to i64
  %arrayidx201 = getelementptr inbounds i32, ptr %249, i64 %idxprom200
  store i32 %add198, ptr %arrayidx201, align 4
  br label %if.end202

if.end202:                                        ; preds = %if.else197, %if.then183
  br label %for.inc203

for.inc203:                                       ; preds = %if.end202
  %253 = load i32, ptr %i__, align 4
  %inc204 = add nsw i32 %253, 1
  store i32 %inc204, ptr %i__, align 4
  br label %for.cond, !llvm.loop !7

for.end205:                                       ; preds = %for.cond
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end205, %if.then86
  %254 = load i32, ptr %retval, align 4
  ret i32 %254
}

declare i32 @lsame_(ptr noundef, ptr noundef) #1

declare i32 @xerbla_(ptr noundef, ptr noundef) #1

declare float @slange_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare float @slamch_(ptr noundef) #1

declare i32 @sggsvp_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @stgsja_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @scopy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

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

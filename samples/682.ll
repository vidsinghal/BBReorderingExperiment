; ModuleID = 'samples/682.bc'
source_filename = "crypto/bn/bn_x931p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bignum_st = type { ptr, i32, i32, i32, i32 }

; Function Attrs: nounwind uwtable
define i32 @BN_X931_derive_prime_ex(ptr noundef %p, ptr noundef %p1, ptr noundef %p2, ptr noundef %Xp, ptr noundef %Xp1, ptr noundef %Xp2, ptr noundef %e, ptr noundef %ctx, ptr noundef %cb) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %p1.addr = alloca ptr, align 8
  %p2.addr = alloca ptr, align 8
  %Xp.addr = alloca ptr, align 8
  %Xp1.addr = alloca ptr, align 8
  %Xp2.addr = alloca ptr, align 8
  %e.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  %cb.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %t = alloca ptr, align 8
  %p1p2 = alloca ptr, align 8
  %pm1 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %i = alloca i32, align 4
  %r = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8, !tbaa !4
  store ptr %p1, ptr %p1.addr, align 8, !tbaa !4
  store ptr %p2, ptr %p2.addr, align 8, !tbaa !4
  store ptr %Xp, ptr %Xp.addr, align 8, !tbaa !4
  store ptr %Xp1, ptr %Xp1.addr, align 8, !tbaa !4
  store ptr %Xp2, ptr %Xp2.addr, align 8, !tbaa !4
  store ptr %e, ptr %e.addr, align 8, !tbaa !4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  store ptr %cb, ptr %cb.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #3
  store i32 0, ptr %ret, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %t) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %p1p2) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %pm1) #3
  %0 = load ptr, ptr %e.addr, align 8, !tbaa !4
  %call = call i32 @BN_is_odd(ptr noundef %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup91

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  call void @BN_CTX_start(ptr noundef %1)
  %2 = load ptr, ptr %p1.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then1, label %if.end3

if.then1:                                         ; preds = %if.end
  %3 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %call2 = call ptr @BN_CTX_get(ptr noundef %3)
  store ptr %call2, ptr %p1.addr, align 8, !tbaa !4
  br label %if.end3

if.end3:                                          ; preds = %if.then1, %if.end
  %4 = load ptr, ptr %p2.addr, align 8, !tbaa !4
  %cmp4 = icmp eq ptr %4, null
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end3
  %5 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %call6 = call ptr @BN_CTX_get(ptr noundef %5)
  store ptr %call6, ptr %p2.addr, align 8, !tbaa !4
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end3
  %6 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %call8 = call ptr @BN_CTX_get(ptr noundef %6)
  store ptr %call8, ptr %t, align 8, !tbaa !4
  %7 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %call9 = call ptr @BN_CTX_get(ptr noundef %7)
  store ptr %call9, ptr %p1p2, align 8, !tbaa !4
  %8 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %call10 = call ptr @BN_CTX_get(ptr noundef %8)
  store ptr %call10, ptr %pm1, align 8, !tbaa !4
  %9 = load ptr, ptr %pm1, align 8, !tbaa !4
  %cmp11 = icmp eq ptr %9, null
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end7
  br label %err

if.end13:                                         ; preds = %if.end7
  %10 = load ptr, ptr %p1.addr, align 8, !tbaa !4
  %11 = load ptr, ptr %Xp1.addr, align 8, !tbaa !4
  %12 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %13 = load ptr, ptr %cb.addr, align 8, !tbaa !4
  %call14 = call i32 @bn_x931_derive_pi(ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %13)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.end17, label %if.then16

if.then16:                                        ; preds = %if.end13
  br label %err

if.end17:                                         ; preds = %if.end13
  %14 = load ptr, ptr %p2.addr, align 8, !tbaa !4
  %15 = load ptr, ptr %Xp2.addr, align 8, !tbaa !4
  %16 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %17 = load ptr, ptr %cb.addr, align 8, !tbaa !4
  %call18 = call i32 @bn_x931_derive_pi(ptr noundef %14, ptr noundef %15, ptr noundef %16, ptr noundef %17)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.end21, label %if.then20

if.then20:                                        ; preds = %if.end17
  br label %err

if.end21:                                         ; preds = %if.end17
  %18 = load ptr, ptr %p1p2, align 8, !tbaa !4
  %19 = load ptr, ptr %p1.addr, align 8, !tbaa !4
  %20 = load ptr, ptr %p2.addr, align 8, !tbaa !4
  %21 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %call22 = call i32 @BN_mul(ptr noundef %18, ptr noundef %19, ptr noundef %20, ptr noundef %21)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.end25, label %if.then24

if.then24:                                        ; preds = %if.end21
  br label %err

if.end25:                                         ; preds = %if.end21
  %22 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %23 = load ptr, ptr %p2.addr, align 8, !tbaa !4
  %24 = load ptr, ptr %p1.addr, align 8, !tbaa !4
  %25 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %call26 = call ptr @BN_mod_inverse(ptr noundef %22, ptr noundef %23, ptr noundef %24, ptr noundef %25)
  %tobool27 = icmp ne ptr %call26, null
  br i1 %tobool27, label %if.end29, label %if.then28

if.then28:                                        ; preds = %if.end25
  br label %err

if.end29:                                         ; preds = %if.end25
  %26 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %27 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %28 = load ptr, ptr %p2.addr, align 8, !tbaa !4
  %29 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %call30 = call i32 @BN_mul(ptr noundef %26, ptr noundef %27, ptr noundef %28, ptr noundef %29)
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.end33, label %if.then32

if.then32:                                        ; preds = %if.end29
  br label %err

if.end33:                                         ; preds = %if.end29
  %30 = load ptr, ptr %t, align 8, !tbaa !4
  %31 = load ptr, ptr %p1.addr, align 8, !tbaa !4
  %32 = load ptr, ptr %p2.addr, align 8, !tbaa !4
  %33 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %call34 = call ptr @BN_mod_inverse(ptr noundef %30, ptr noundef %31, ptr noundef %32, ptr noundef %33)
  %tobool35 = icmp ne ptr %call34, null
  br i1 %tobool35, label %if.end37, label %if.then36

if.then36:                                        ; preds = %if.end33
  br label %err

if.end37:                                         ; preds = %if.end33
  %34 = load ptr, ptr %t, align 8, !tbaa !4
  %35 = load ptr, ptr %t, align 8, !tbaa !4
  %36 = load ptr, ptr %p1.addr, align 8, !tbaa !4
  %37 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %call38 = call i32 @BN_mul(ptr noundef %34, ptr noundef %35, ptr noundef %36, ptr noundef %37)
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.end41, label %if.then40

if.then40:                                        ; preds = %if.end37
  br label %err

if.end41:                                         ; preds = %if.end37
  %38 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %39 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %40 = load ptr, ptr %t, align 8, !tbaa !4
  %call42 = call i32 @BN_sub(ptr noundef %38, ptr noundef %39, ptr noundef %40)
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.end45, label %if.then44

if.then44:                                        ; preds = %if.end41
  br label %err

if.end45:                                         ; preds = %if.end41
  %41 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %neg = getelementptr inbounds %struct.bignum_st, ptr %41, i32 0, i32 3
  %42 = load i32, ptr %neg, align 8, !tbaa !10
  %tobool46 = icmp ne i32 %42, 0
  br i1 %tobool46, label %land.lhs.true, label %if.end50

land.lhs.true:                                    ; preds = %if.end45
  %43 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %44 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %45 = load ptr, ptr %p1p2, align 8, !tbaa !4
  %call47 = call i32 @BN_add(ptr noundef %43, ptr noundef %44, ptr noundef %45)
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %if.end50, label %if.then49

if.then49:                                        ; preds = %land.lhs.true
  br label %err

if.end50:                                         ; preds = %land.lhs.true, %if.end45
  %46 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %47 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %48 = load ptr, ptr %Xp.addr, align 8, !tbaa !4
  %49 = load ptr, ptr %p1p2, align 8, !tbaa !4
  %50 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %call51 = call i32 @BN_mod_sub(ptr noundef %46, ptr noundef %47, ptr noundef %48, ptr noundef %49, ptr noundef %50)
  %tobool52 = icmp ne i32 %call51, 0
  br i1 %tobool52, label %if.end54, label %if.then53

if.then53:                                        ; preds = %if.end50
  br label %err

if.end54:                                         ; preds = %if.end50
  %51 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %52 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %53 = load ptr, ptr %Xp.addr, align 8, !tbaa !4
  %call55 = call i32 @BN_add(ptr noundef %51, ptr noundef %52, ptr noundef %53)
  %tobool56 = icmp ne i32 %call55, 0
  br i1 %tobool56, label %if.end58, label %if.then57

if.then57:                                        ; preds = %if.end54
  br label %err

if.end58:                                         ; preds = %if.end54
  br label %for.cond

for.cond:                                         ; preds = %cleanup.cont89, %if.end58
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  store i32 1, ptr %i, align 4, !tbaa !8
  %54 = load ptr, ptr %cb.addr, align 8, !tbaa !4
  %55 = load i32, ptr %i, align 4, !tbaa !8
  %inc = add nsw i32 %55, 1
  store i32 %inc, ptr %i, align 4, !tbaa !8
  %call59 = call i32 @BN_GENCB_call(ptr noundef %54, i32 noundef 0, i32 noundef %55)
  %56 = load ptr, ptr %pm1, align 8, !tbaa !4
  %57 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %call60 = call ptr @BN_copy(ptr noundef %56, ptr noundef %57)
  %tobool61 = icmp ne ptr %call60, null
  br i1 %tobool61, label %if.end63, label %if.then62

if.then62:                                        ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup87

if.end63:                                         ; preds = %for.cond
  %58 = load ptr, ptr %pm1, align 8, !tbaa !4
  %call64 = call i32 @BN_sub_word(ptr noundef %58, i64 noundef 1)
  %tobool65 = icmp ne i32 %call64, 0
  br i1 %tobool65, label %if.end67, label %if.then66

if.then66:                                        ; preds = %if.end63
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup87

if.end67:                                         ; preds = %if.end63
  %59 = load ptr, ptr %t, align 8, !tbaa !4
  %60 = load ptr, ptr %pm1, align 8, !tbaa !4
  %61 = load ptr, ptr %e.addr, align 8, !tbaa !4
  %62 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %call68 = call i32 @BN_gcd(ptr noundef %59, ptr noundef %60, ptr noundef %61, ptr noundef %62)
  %tobool69 = icmp ne i32 %call68, 0
  br i1 %tobool69, label %if.end71, label %if.then70

if.then70:                                        ; preds = %if.end67
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup87

if.end71:                                         ; preds = %if.end67
  %63 = load ptr, ptr %t, align 8, !tbaa !4
  %call72 = call i32 @BN_is_one(ptr noundef %63)
  %tobool73 = icmp ne i32 %call72, 0
  br i1 %tobool73, label %if.then74, label %if.end82

if.then74:                                        ; preds = %if.end71
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #3
  %64 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %65 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %66 = load ptr, ptr %cb.addr, align 8, !tbaa !4
  %call75 = call i32 @BN_check_prime(ptr noundef %64, ptr noundef %65, ptr noundef %66)
  store i32 %call75, ptr %r, align 4, !tbaa !8
  %67 = load i32, ptr %r, align 4, !tbaa !8
  %cmp76 = icmp slt i32 %67, 0
  br i1 %cmp76, label %if.then77, label %if.end78

if.then77:                                        ; preds = %if.then74
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end78:                                         ; preds = %if.then74
  %68 = load i32, ptr %r, align 4, !tbaa !8
  %tobool79 = icmp ne i32 %68, 0
  br i1 %tobool79, label %if.then80, label %if.end81

if.then80:                                        ; preds = %if.end78
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end81:                                         ; preds = %if.end78
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then77, %if.end81, %if.then80
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #3
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup87 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end82

if.end82:                                         ; preds = %cleanup.cont, %if.end71
  %69 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %70 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %71 = load ptr, ptr %p1p2, align 8, !tbaa !4
  %call83 = call i32 @BN_add(ptr noundef %69, ptr noundef %70, ptr noundef %71)
  %tobool84 = icmp ne i32 %call83, 0
  br i1 %tobool84, label %if.end86, label %if.then85

if.then85:                                        ; preds = %if.end82
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup87

if.end86:                                         ; preds = %if.end82
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup87

cleanup87:                                        ; preds = %if.then85, %if.then70, %if.then66, %if.then62, %if.end86, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  %cleanup.dest88 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest88, label %cleanup91 [
    i32 0, label %cleanup.cont89
    i32 3, label %for.end
    i32 2, label %err
  ]

cleanup.cont89:                                   ; preds = %cleanup87
  br label %for.cond

for.end:                                          ; preds = %cleanup87
  %72 = load ptr, ptr %cb.addr, align 8, !tbaa !4
  %call90 = call i32 @BN_GENCB_call(ptr noundef %72, i32 noundef 3, i32 noundef 0)
  store i32 1, ptr %ret, align 4, !tbaa !8
  br label %err

err:                                              ; preds = %for.end, %cleanup87, %if.then57, %if.then53, %if.then49, %if.then44, %if.then40, %if.then36, %if.then32, %if.then28, %if.then24, %if.then20, %if.then16, %if.then12
  %73 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  call void @BN_CTX_end(ptr noundef %73)
  %74 = load i32, ptr %ret, align 4, !tbaa !8
  store i32 %74, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup91

cleanup91:                                        ; preds = %err, %cleanup87, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %pm1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %p1p2) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %t) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #3
  %75 = load i32, ptr %retval, align 4
  ret i32 %75
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @BN_is_odd(ptr noundef) #2

declare void @BN_CTX_start(ptr noundef) #2

declare ptr @BN_CTX_get(ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @bn_x931_derive_pi(ptr noundef %pi, ptr noundef %Xpi, ptr noundef %ctx, ptr noundef %cb) #0 {
entry:
  %retval = alloca i32, align 4
  %pi.addr = alloca ptr, align 8
  %Xpi.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  %cb.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %is_prime = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pi, ptr %pi.addr, align 8, !tbaa !4
  store ptr %Xpi, ptr %Xpi.addr, align 8, !tbaa !4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  store ptr %cb, ptr %cb.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  store i32 0, ptr %i, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %is_prime) #3
  %0 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %Xpi.addr, align 8, !tbaa !4
  %call = call ptr @BN_copy(ptr noundef %0, ptr noundef %1)
  %tobool = icmp ne ptr %call, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %call1 = call i32 @BN_is_odd(ptr noundef %2)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end6, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %3 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %call3 = call i32 @BN_add_word(ptr noundef %3, i64 noundef 1)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end6, label %if.then5

if.then5:                                         ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end6:                                          ; preds = %land.lhs.true, %if.end
  br label %for.cond

for.cond:                                         ; preds = %if.end17, %if.end6
  %4 = load i32, ptr %i, align 4, !tbaa !8
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %i, align 4, !tbaa !8
  %5 = load ptr, ptr %cb.addr, align 8, !tbaa !4
  %6 = load i32, ptr %i, align 4, !tbaa !8
  %call7 = call i32 @BN_GENCB_call(ptr noundef %5, i32 noundef 0, i32 noundef %6)
  %7 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %8 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %9 = load ptr, ptr %cb.addr, align 8, !tbaa !4
  %call8 = call i32 @BN_check_prime(ptr noundef %7, ptr noundef %8, ptr noundef %9)
  store i32 %call8, ptr %is_prime, align 4, !tbaa !8
  %10 = load i32, ptr %is_prime, align 4, !tbaa !8
  %cmp = icmp slt i32 %10, 0
  br i1 %cmp, label %if.then9, label %if.end10

if.then9:                                         ; preds = %for.cond
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end10:                                         ; preds = %for.cond
  %11 = load i32, ptr %is_prime, align 4, !tbaa !8
  %tobool11 = icmp ne i32 %11, 0
  br i1 %tobool11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end10
  br label %for.end

if.end13:                                         ; preds = %if.end10
  %12 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %call14 = call i32 @BN_add_word(ptr noundef %12, i64 noundef 2)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.end17, label %if.then16

if.then16:                                        ; preds = %if.end13
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  br label %for.cond

for.end:                                          ; preds = %if.then12
  %13 = load ptr, ptr %cb.addr, align 8, !tbaa !4
  %14 = load i32, ptr %i, align 4, !tbaa !8
  %call18 = call i32 @BN_GENCB_call(ptr noundef %13, i32 noundef 2, i32 noundef %14)
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then16, %if.then9, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %is_prime) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  %15 = load i32, ptr %retval, align 4
  ret i32 %15
}

declare i32 @BN_mul(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare ptr @BN_mod_inverse(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @BN_sub(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @BN_add(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @BN_mod_sub(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @BN_GENCB_call(ptr noundef, i32 noundef, i32 noundef) #2

declare ptr @BN_copy(ptr noundef, ptr noundef) #2

declare i32 @BN_sub_word(ptr noundef, i64 noundef) #2

declare i32 @BN_gcd(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @BN_is_one(ptr noundef) #2

declare i32 @BN_check_prime(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @BN_CTX_end(ptr noundef) #2

; Function Attrs: nounwind uwtable
define i32 @BN_X931_generate_Xpq(ptr noundef %Xp, ptr noundef %Xq, i32 noundef %nbits, ptr noundef %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %Xp.addr = alloca ptr, align 8
  %Xq.addr = alloca ptr, align 8
  %nbits.addr = alloca i32, align 4
  %ctx.addr = alloca ptr, align 8
  %t = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %Xp, ptr %Xp.addr, align 8, !tbaa !4
  store ptr %Xq, ptr %Xq.addr, align 8, !tbaa !4
  store i32 %nbits, ptr %nbits.addr, align 4, !tbaa !8
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %t) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  %0 = load i32, ptr %nbits.addr, align 4, !tbaa !8
  %cmp = icmp slt i32 %0, 1024
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %nbits.addr, align 4, !tbaa !8
  %and = and i32 %1, 255
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i32, ptr %nbits.addr, align 4, !tbaa !8
  %shr = ashr i32 %2, 1
  store i32 %shr, ptr %nbits.addr, align 4, !tbaa !8
  %3 = load ptr, ptr %Xp.addr, align 8, !tbaa !4
  %4 = load i32, ptr %nbits.addr, align 4, !tbaa !8
  %5 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %call = call i32 @BN_priv_rand_ex(ptr noundef %3, i32 noundef %4, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef %5)
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %6 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  call void @BN_CTX_start(ptr noundef %6)
  %7 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %call4 = call ptr @BN_CTX_get(ptr noundef %7)
  store ptr %call4, ptr %t, align 8, !tbaa !4
  %8 = load ptr, ptr %t, align 8, !tbaa !4
  %cmp5 = icmp eq ptr %8, null
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end3
  br label %err

if.end7:                                          ; preds = %if.end3
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end7
  %9 = load i32, ptr %i, align 4, !tbaa !8
  %cmp8 = icmp slt i32 %9, 1000
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %Xq.addr, align 8, !tbaa !4
  %11 = load i32, ptr %nbits.addr, align 4, !tbaa !8
  %12 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %call9 = call i32 @BN_priv_rand_ex(ptr noundef %10, i32 noundef %11, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef %12)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.end12, label %if.then11

if.then11:                                        ; preds = %for.body
  br label %err

if.end12:                                         ; preds = %for.body
  %13 = load ptr, ptr %t, align 8, !tbaa !4
  %14 = load ptr, ptr %Xp.addr, align 8, !tbaa !4
  %15 = load ptr, ptr %Xq.addr, align 8, !tbaa !4
  %call13 = call i32 @BN_sub(ptr noundef %13, ptr noundef %14, ptr noundef %15)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end16, label %if.then15

if.then15:                                        ; preds = %if.end12
  br label %err

if.end16:                                         ; preds = %if.end12
  %16 = load ptr, ptr %t, align 8, !tbaa !4
  %call17 = call i32 @BN_num_bits(ptr noundef %16)
  %17 = load i32, ptr %nbits.addr, align 4, !tbaa !8
  %sub = sub nsw i32 %17, 100
  %cmp18 = icmp sgt i32 %call17, %sub
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end16
  br label %for.end

if.end20:                                         ; preds = %if.end16
  br label %for.inc

for.inc:                                          ; preds = %if.end20
  %18 = load i32, ptr %i, align 4, !tbaa !8
  %inc = add nsw i32 %18, 1
  store i32 %inc, ptr %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %if.then19, %for.cond
  %19 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  call void @BN_CTX_end(ptr noundef %19)
  %20 = load i32, ptr %i, align 4, !tbaa !8
  %cmp21 = icmp slt i32 %20, 1000
  br i1 %cmp21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %for.end
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end23:                                         ; preds = %for.end
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

err:                                              ; preds = %if.then15, %if.then11, %if.then6
  %21 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  call void @BN_CTX_end(ptr noundef %21)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end23, %if.then22, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %t) #3
  %22 = load i32, ptr %retval, align 4
  ret i32 %22
}

declare i32 @BN_priv_rand_ex(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #2

declare i32 @BN_num_bits(ptr noundef) #2

; Function Attrs: nounwind uwtable
define i32 @BN_X931_generate_prime_ex(ptr noundef %p, ptr noundef %p1, ptr noundef %p2, ptr noundef %Xp1, ptr noundef %Xp2, ptr noundef %Xp, ptr noundef %e, ptr noundef %ctx, ptr noundef %cb) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %p1.addr = alloca ptr, align 8
  %p2.addr = alloca ptr, align 8
  %Xp1.addr = alloca ptr, align 8
  %Xp2.addr = alloca ptr, align 8
  %Xp.addr = alloca ptr, align 8
  %e.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  %cb.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8, !tbaa !4
  store ptr %p1, ptr %p1.addr, align 8, !tbaa !4
  store ptr %p2, ptr %p2.addr, align 8, !tbaa !4
  store ptr %Xp1, ptr %Xp1.addr, align 8, !tbaa !4
  store ptr %Xp2, ptr %Xp2.addr, align 8, !tbaa !4
  store ptr %Xp, ptr %Xp.addr, align 8, !tbaa !4
  store ptr %e, ptr %e.addr, align 8, !tbaa !4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  store ptr %cb, ptr %cb.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #3
  store i32 0, ptr %ret, align 4, !tbaa !8
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  call void @BN_CTX_start(ptr noundef %0)
  %1 = load ptr, ptr %Xp1.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %call = call ptr @BN_CTX_get(ptr noundef %2)
  store ptr %call, ptr %Xp1.addr, align 8, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %Xp2.addr, align 8, !tbaa !4
  %cmp1 = icmp eq ptr %3, null
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %4 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %call3 = call ptr @BN_CTX_get(ptr noundef %4)
  store ptr %call3, ptr %Xp2.addr, align 8, !tbaa !4
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end
  %5 = load ptr, ptr %Xp1.addr, align 8, !tbaa !4
  %cmp5 = icmp eq ptr %5, null
  br i1 %cmp5, label %if.then7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end4
  %6 = load ptr, ptr %Xp2.addr, align 8, !tbaa !4
  %cmp6 = icmp eq ptr %6, null
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %lor.lhs.false, %if.end4
  br label %error

if.end8:                                          ; preds = %lor.lhs.false
  %7 = load ptr, ptr %Xp1.addr, align 8, !tbaa !4
  %8 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %call9 = call i32 @BN_priv_rand_ex(ptr noundef %7, i32 noundef 101, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %8)
  %tobool = icmp ne i32 %call9, 0
  br i1 %tobool, label %if.end11, label %if.then10

if.then10:                                        ; preds = %if.end8
  br label %error

if.end11:                                         ; preds = %if.end8
  %9 = load ptr, ptr %Xp2.addr, align 8, !tbaa !4
  %10 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %call12 = call i32 @BN_priv_rand_ex(ptr noundef %9, i32 noundef 101, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %10)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.end15, label %if.then14

if.then14:                                        ; preds = %if.end11
  br label %error

if.end15:                                         ; preds = %if.end11
  %11 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %12 = load ptr, ptr %p1.addr, align 8, !tbaa !4
  %13 = load ptr, ptr %p2.addr, align 8, !tbaa !4
  %14 = load ptr, ptr %Xp.addr, align 8, !tbaa !4
  %15 = load ptr, ptr %Xp1.addr, align 8, !tbaa !4
  %16 = load ptr, ptr %Xp2.addr, align 8, !tbaa !4
  %17 = load ptr, ptr %e.addr, align 8, !tbaa !4
  %18 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %19 = load ptr, ptr %cb.addr, align 8, !tbaa !4
  %call16 = call i32 @BN_X931_derive_prime_ex(ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef %15, ptr noundef %16, ptr noundef %17, ptr noundef %18, ptr noundef %19)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.end19, label %if.then18

if.then18:                                        ; preds = %if.end15
  br label %error

if.end19:                                         ; preds = %if.end15
  store i32 1, ptr %ret, align 4, !tbaa !8
  br label %error

error:                                            ; preds = %if.end19, %if.then18, %if.then14, %if.then10, %if.then7
  %20 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  call void @BN_CTX_end(ptr noundef %20)
  %21 = load i32, ptr %ret, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #3
  ret i32 %21
}

declare i32 @BN_add_word(ptr noundef, i64 noundef) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
!10 = !{!11, !9, i64 16}
!11 = !{!"bignum_st", !5, i64 0, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}

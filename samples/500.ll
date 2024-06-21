; ModuleID = 'samples/500.bc'
source_filename = "/local-ssd/amdlibflame-otrkevhm552xspevawtkllysqp2goz3p-build/aidengro/spack-stage-amdlibflame-4.1-otrkevhm552xspevawtkllysqp2goz3p/spack-src/src/base/flamec/blis/2/bl1_trmv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define void @bl1_strmv(i32 noundef %uplo, i32 noundef %trans, i32 noundef %diag, i32 noundef %m, ptr noundef %a, i32 noundef %a_rs, i32 noundef %a_cs, ptr noundef %x, i32 noundef %incx) #0 {
entry:
  %uplo.addr = alloca i32, align 4
  %trans.addr = alloca i32, align 4
  %diag.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %a.addr = alloca ptr, align 8
  %a_rs.addr = alloca i32, align 4
  %a_cs.addr = alloca i32, align 4
  %x.addr = alloca ptr, align 8
  %incx.addr = alloca i32, align 4
  %a_save = alloca ptr, align 8
  %a_rs_save = alloca i32, align 4
  %a_cs_save = alloca i32, align 4
  %lda = alloca i32, align 4
  %inca = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %temp = alloca i32, align 4
  store i32 %uplo, ptr %uplo.addr, align 4, !tbaa !4
  store i32 %trans, ptr %trans.addr, align 4, !tbaa !4
  store i32 %diag, ptr %diag.addr, align 4, !tbaa !4
  store i32 %m, ptr %m.addr, align 4, !tbaa !7
  store ptr %a, ptr %a.addr, align 8, !tbaa !9
  store i32 %a_rs, ptr %a_rs.addr, align 4, !tbaa !7
  store i32 %a_cs, ptr %a_cs.addr, align 4, !tbaa !7
  store ptr %x, ptr %x.addr, align 8, !tbaa !9
  store i32 %incx, ptr %incx.addr, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 8, ptr %a_save) #3
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !9
  store ptr %0, ptr %a_save, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %a_rs_save) #3
  %1 = load i32, ptr %a_rs.addr, align 4, !tbaa !7
  store i32 %1, ptr %a_rs_save, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 4, ptr %a_cs_save) #3
  %2 = load i32, ptr %a_cs.addr, align 4, !tbaa !7
  store i32 %2, ptr %a_cs_save, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 4, ptr %lda) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %inca) #3
  %3 = load i32, ptr %m.addr, align 4, !tbaa !7
  %call = call i32 @bl1_zero_dim1(i32 noundef %3)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load i32, ptr %uplo.addr, align 4, !tbaa !4
  %5 = load i32, ptr %m.addr, align 4, !tbaa !7
  %6 = load i32, ptr %m.addr, align 4, !tbaa !7
  %7 = load ptr, ptr %a_save, align 8, !tbaa !9
  %8 = load i32, ptr %a_rs_save, align 4, !tbaa !7
  %9 = load i32, ptr %a_cs_save, align 4, !tbaa !7
  call void @bl1_screate_contigmr(i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, i32 noundef %9, ptr noundef %a.addr, ptr noundef %a_rs.addr, ptr noundef %a_cs.addr)
  %10 = load i32, ptr %a_cs.addr, align 4, !tbaa !7
  store i32 %10, ptr %lda, align 4, !tbaa !7
  %11 = load i32, ptr %a_rs.addr, align 4, !tbaa !7
  store i32 %11, ptr %inca, align 4, !tbaa !7
  %12 = load i32, ptr %a_rs.addr, align 4, !tbaa !7
  %13 = load i32, ptr %a_cs.addr, align 4, !tbaa !7
  %call1 = call i32 @bl1_is_row_storage(i32 noundef %12, i32 noundef %13)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then3, label %if.end23

if.then3:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %temp) #3
  %14 = load i32, ptr %lda, align 4, !tbaa !7
  store i32 %14, ptr %temp, align 4, !tbaa !7
  %15 = load i32, ptr %inca, align 4, !tbaa !7
  store i32 %15, ptr %lda, align 4, !tbaa !7
  %16 = load i32, ptr %temp, align 4, !tbaa !7
  store i32 %16, ptr %inca, align 4, !tbaa !7
  call void @llvm.lifetime.end.p0(i64 4, ptr %temp) #3
  %17 = load i32, ptr %uplo.addr, align 4, !tbaa !4
  %call4 = call i32 @bl1_is_lower(i32 noundef %17)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then3
  store i32 201, ptr %uplo.addr, align 4, !tbaa !4
  br label %if.end7

if.else:                                          ; preds = %if.then3
  store i32 200, ptr %uplo.addr, align 4, !tbaa !4
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then6
  %18 = load i32, ptr %trans.addr, align 4, !tbaa !4
  %call8 = call i32 @bl1_is_notrans(i32 noundef %18)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then10, label %if.else11

if.then10:                                        ; preds = %if.end7
  store i32 101, ptr %trans.addr, align 4, !tbaa !4
  br label %if.end22

if.else11:                                        ; preds = %if.end7
  %19 = load i32, ptr %trans.addr, align 4, !tbaa !4
  %call12 = call i32 @bl1_is_trans(i32 noundef %19)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then14, label %if.else15

if.then14:                                        ; preds = %if.else11
  store i32 100, ptr %trans.addr, align 4, !tbaa !4
  br label %if.end21

if.else15:                                        ; preds = %if.else11
  %20 = load i32, ptr %trans.addr, align 4, !tbaa !4
  %call16 = call i32 @bl1_is_conjnotrans(i32 noundef %20)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then18, label %if.else19

if.then18:                                        ; preds = %if.else15
  store i32 103, ptr %trans.addr, align 4, !tbaa !4
  br label %if.end20

if.else19:                                        ; preds = %if.else15
  store i32 102, ptr %trans.addr, align 4, !tbaa !4
  br label %if.end20

if.end20:                                         ; preds = %if.else19, %if.then18
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %if.then14
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.then10
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %if.end
  %21 = load i32, ptr %uplo.addr, align 4, !tbaa !4
  %22 = load i32, ptr %trans.addr, align 4, !tbaa !4
  %23 = load i32, ptr %diag.addr, align 4, !tbaa !4
  %24 = load i32, ptr %m.addr, align 4, !tbaa !7
  %25 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %26 = load i32, ptr %lda, align 4, !tbaa !7
  %27 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %28 = load i32, ptr %incx.addr, align 4, !tbaa !7
  call void @bl1_strmv_blas(i32 noundef %21, i32 noundef %22, i32 noundef %23, i32 noundef %24, ptr noundef %25, i32 noundef %26, ptr noundef %27, i32 noundef %28)
  %29 = load ptr, ptr %a_save, align 8, !tbaa !9
  %30 = load i32, ptr %a_rs_save, align 4, !tbaa !7
  %31 = load i32, ptr %a_cs_save, align 4, !tbaa !7
  call void @bl1_sfree_contigm(ptr noundef %29, i32 noundef %30, i32 noundef %31, ptr noundef %a.addr, ptr noundef %a_rs.addr, ptr noundef %a_cs.addr)
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %inca) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %lda) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %a_cs_save) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %a_rs_save) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %a_save) #3
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @bl1_zero_dim1(i32 noundef) #2

declare void @bl1_screate_contigmr(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @bl1_is_row_storage(i32 noundef, i32 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @bl1_is_lower(i32 noundef) #2

declare i32 @bl1_is_notrans(i32 noundef) #2

declare i32 @bl1_is_trans(i32 noundef) #2

declare i32 @bl1_is_conjnotrans(i32 noundef) #2

; Function Attrs: nounwind uwtable
define void @bl1_strmv_blas(i32 noundef %uplo, i32 noundef %trans, i32 noundef %diag, i32 noundef %m, ptr noundef %a, i32 noundef %lda, ptr noundef %x, i32 noundef %incx) #0 {
entry:
  %uplo.addr = alloca i32, align 4
  %trans.addr = alloca i32, align 4
  %diag.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %a.addr = alloca ptr, align 8
  %lda.addr = alloca i32, align 4
  %x.addr = alloca ptr, align 8
  %incx.addr = alloca i32, align 4
  %blas_uplo = alloca i8, align 1
  %blas_trans = alloca i8, align 1
  %blas_diag = alloca i8, align 1
  store i32 %uplo, ptr %uplo.addr, align 4, !tbaa !4
  store i32 %trans, ptr %trans.addr, align 4, !tbaa !4
  store i32 %diag, ptr %diag.addr, align 4, !tbaa !4
  store i32 %m, ptr %m.addr, align 4, !tbaa !7
  store ptr %a, ptr %a.addr, align 8, !tbaa !9
  store i32 %lda, ptr %lda.addr, align 4, !tbaa !7
  store ptr %x, ptr %x.addr, align 8, !tbaa !9
  store i32 %incx, ptr %incx.addr, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 1, ptr %blas_uplo) #3
  call void @llvm.lifetime.start.p0(i64 1, ptr %blas_trans) #3
  call void @llvm.lifetime.start.p0(i64 1, ptr %blas_diag) #3
  %0 = load i32, ptr %uplo.addr, align 4, !tbaa !4
  call void @bl1_param_map_to_netlib_uplo(i32 noundef %0, ptr noundef %blas_uplo)
  %1 = load i32, ptr %trans.addr, align 4, !tbaa !4
  call void @bl1_param_map_to_netlib_trans(i32 noundef %1, ptr noundef %blas_trans)
  %2 = load i32, ptr %diag.addr, align 4, !tbaa !4
  call void @bl1_param_map_to_netlib_diag(i32 noundef %2, ptr noundef %blas_diag)
  %3 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %4 = load ptr, ptr %x.addr, align 8, !tbaa !9
  call void @strmv_(ptr noundef %blas_uplo, ptr noundef %blas_trans, ptr noundef %blas_diag, ptr noundef %m.addr, ptr noundef %3, ptr noundef %lda.addr, ptr noundef %4, ptr noundef %incx.addr)
  call void @llvm.lifetime.end.p0(i64 1, ptr %blas_diag) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr %blas_trans) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr %blas_uplo) #3
  ret void
}

declare void @bl1_sfree_contigm(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define void @bl1_dtrmv(i32 noundef %uplo, i32 noundef %trans, i32 noundef %diag, i32 noundef %m, ptr noundef %a, i32 noundef %a_rs, i32 noundef %a_cs, ptr noundef %x, i32 noundef %incx) #0 {
entry:
  %uplo.addr = alloca i32, align 4
  %trans.addr = alloca i32, align 4
  %diag.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %a.addr = alloca ptr, align 8
  %a_rs.addr = alloca i32, align 4
  %a_cs.addr = alloca i32, align 4
  %x.addr = alloca ptr, align 8
  %incx.addr = alloca i32, align 4
  %a_save = alloca ptr, align 8
  %a_rs_save = alloca i32, align 4
  %a_cs_save = alloca i32, align 4
  %lda = alloca i32, align 4
  %inca = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %temp = alloca i32, align 4
  store i32 %uplo, ptr %uplo.addr, align 4, !tbaa !4
  store i32 %trans, ptr %trans.addr, align 4, !tbaa !4
  store i32 %diag, ptr %diag.addr, align 4, !tbaa !4
  store i32 %m, ptr %m.addr, align 4, !tbaa !7
  store ptr %a, ptr %a.addr, align 8, !tbaa !9
  store i32 %a_rs, ptr %a_rs.addr, align 4, !tbaa !7
  store i32 %a_cs, ptr %a_cs.addr, align 4, !tbaa !7
  store ptr %x, ptr %x.addr, align 8, !tbaa !9
  store i32 %incx, ptr %incx.addr, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 8, ptr %a_save) #3
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !9
  store ptr %0, ptr %a_save, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %a_rs_save) #3
  %1 = load i32, ptr %a_rs.addr, align 4, !tbaa !7
  store i32 %1, ptr %a_rs_save, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 4, ptr %a_cs_save) #3
  %2 = load i32, ptr %a_cs.addr, align 4, !tbaa !7
  store i32 %2, ptr %a_cs_save, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 4, ptr %lda) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %inca) #3
  %3 = load i32, ptr %m.addr, align 4, !tbaa !7
  %call = call i32 @bl1_zero_dim1(i32 noundef %3)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load i32, ptr %uplo.addr, align 4, !tbaa !4
  %5 = load i32, ptr %m.addr, align 4, !tbaa !7
  %6 = load i32, ptr %m.addr, align 4, !tbaa !7
  %7 = load ptr, ptr %a_save, align 8, !tbaa !9
  %8 = load i32, ptr %a_rs_save, align 4, !tbaa !7
  %9 = load i32, ptr %a_cs_save, align 4, !tbaa !7
  call void @bl1_dcreate_contigmr(i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, i32 noundef %9, ptr noundef %a.addr, ptr noundef %a_rs.addr, ptr noundef %a_cs.addr)
  %10 = load i32, ptr %a_cs.addr, align 4, !tbaa !7
  store i32 %10, ptr %lda, align 4, !tbaa !7
  %11 = load i32, ptr %a_rs.addr, align 4, !tbaa !7
  store i32 %11, ptr %inca, align 4, !tbaa !7
  %12 = load i32, ptr %a_rs.addr, align 4, !tbaa !7
  %13 = load i32, ptr %a_cs.addr, align 4, !tbaa !7
  %call1 = call i32 @bl1_is_row_storage(i32 noundef %12, i32 noundef %13)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then3, label %if.end23

if.then3:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %temp) #3
  %14 = load i32, ptr %lda, align 4, !tbaa !7
  store i32 %14, ptr %temp, align 4, !tbaa !7
  %15 = load i32, ptr %inca, align 4, !tbaa !7
  store i32 %15, ptr %lda, align 4, !tbaa !7
  %16 = load i32, ptr %temp, align 4, !tbaa !7
  store i32 %16, ptr %inca, align 4, !tbaa !7
  call void @llvm.lifetime.end.p0(i64 4, ptr %temp) #3
  %17 = load i32, ptr %uplo.addr, align 4, !tbaa !4
  %call4 = call i32 @bl1_is_lower(i32 noundef %17)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then3
  store i32 201, ptr %uplo.addr, align 4, !tbaa !4
  br label %if.end7

if.else:                                          ; preds = %if.then3
  store i32 200, ptr %uplo.addr, align 4, !tbaa !4
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then6
  %18 = load i32, ptr %trans.addr, align 4, !tbaa !4
  %call8 = call i32 @bl1_is_notrans(i32 noundef %18)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then10, label %if.else11

if.then10:                                        ; preds = %if.end7
  store i32 101, ptr %trans.addr, align 4, !tbaa !4
  br label %if.end22

if.else11:                                        ; preds = %if.end7
  %19 = load i32, ptr %trans.addr, align 4, !tbaa !4
  %call12 = call i32 @bl1_is_trans(i32 noundef %19)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then14, label %if.else15

if.then14:                                        ; preds = %if.else11
  store i32 100, ptr %trans.addr, align 4, !tbaa !4
  br label %if.end21

if.else15:                                        ; preds = %if.else11
  %20 = load i32, ptr %trans.addr, align 4, !tbaa !4
  %call16 = call i32 @bl1_is_conjnotrans(i32 noundef %20)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then18, label %if.else19

if.then18:                                        ; preds = %if.else15
  store i32 103, ptr %trans.addr, align 4, !tbaa !4
  br label %if.end20

if.else19:                                        ; preds = %if.else15
  store i32 102, ptr %trans.addr, align 4, !tbaa !4
  br label %if.end20

if.end20:                                         ; preds = %if.else19, %if.then18
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %if.then14
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.then10
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %if.end
  %21 = load i32, ptr %uplo.addr, align 4, !tbaa !4
  %22 = load i32, ptr %trans.addr, align 4, !tbaa !4
  %23 = load i32, ptr %diag.addr, align 4, !tbaa !4
  %24 = load i32, ptr %m.addr, align 4, !tbaa !7
  %25 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %26 = load i32, ptr %lda, align 4, !tbaa !7
  %27 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %28 = load i32, ptr %incx.addr, align 4, !tbaa !7
  call void @bl1_dtrmv_blas(i32 noundef %21, i32 noundef %22, i32 noundef %23, i32 noundef %24, ptr noundef %25, i32 noundef %26, ptr noundef %27, i32 noundef %28)
  %29 = load ptr, ptr %a_save, align 8, !tbaa !9
  %30 = load i32, ptr %a_rs_save, align 4, !tbaa !7
  %31 = load i32, ptr %a_cs_save, align 4, !tbaa !7
  call void @bl1_dfree_contigm(ptr noundef %29, i32 noundef %30, i32 noundef %31, ptr noundef %a.addr, ptr noundef %a_rs.addr, ptr noundef %a_cs.addr)
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %inca) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %lda) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %a_cs_save) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %a_rs_save) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %a_save) #3
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare void @bl1_dcreate_contigmr(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define void @bl1_dtrmv_blas(i32 noundef %uplo, i32 noundef %trans, i32 noundef %diag, i32 noundef %m, ptr noundef %a, i32 noundef %lda, ptr noundef %x, i32 noundef %incx) #0 {
entry:
  %uplo.addr = alloca i32, align 4
  %trans.addr = alloca i32, align 4
  %diag.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %a.addr = alloca ptr, align 8
  %lda.addr = alloca i32, align 4
  %x.addr = alloca ptr, align 8
  %incx.addr = alloca i32, align 4
  %blas_uplo = alloca i8, align 1
  %blas_trans = alloca i8, align 1
  %blas_diag = alloca i8, align 1
  store i32 %uplo, ptr %uplo.addr, align 4, !tbaa !4
  store i32 %trans, ptr %trans.addr, align 4, !tbaa !4
  store i32 %diag, ptr %diag.addr, align 4, !tbaa !4
  store i32 %m, ptr %m.addr, align 4, !tbaa !7
  store ptr %a, ptr %a.addr, align 8, !tbaa !9
  store i32 %lda, ptr %lda.addr, align 4, !tbaa !7
  store ptr %x, ptr %x.addr, align 8, !tbaa !9
  store i32 %incx, ptr %incx.addr, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 1, ptr %blas_uplo) #3
  call void @llvm.lifetime.start.p0(i64 1, ptr %blas_trans) #3
  call void @llvm.lifetime.start.p0(i64 1, ptr %blas_diag) #3
  %0 = load i32, ptr %uplo.addr, align 4, !tbaa !4
  call void @bl1_param_map_to_netlib_uplo(i32 noundef %0, ptr noundef %blas_uplo)
  %1 = load i32, ptr %trans.addr, align 4, !tbaa !4
  call void @bl1_param_map_to_netlib_trans(i32 noundef %1, ptr noundef %blas_trans)
  %2 = load i32, ptr %diag.addr, align 4, !tbaa !4
  call void @bl1_param_map_to_netlib_diag(i32 noundef %2, ptr noundef %blas_diag)
  %3 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %4 = load ptr, ptr %x.addr, align 8, !tbaa !9
  call void @dtrmv_(ptr noundef %blas_uplo, ptr noundef %blas_trans, ptr noundef %blas_diag, ptr noundef %m.addr, ptr noundef %3, ptr noundef %lda.addr, ptr noundef %4, ptr noundef %incx.addr)
  call void @llvm.lifetime.end.p0(i64 1, ptr %blas_diag) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr %blas_trans) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr %blas_uplo) #3
  ret void
}

declare void @bl1_dfree_contigm(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define void @bl1_ctrmv(i32 noundef %uplo, i32 noundef %trans, i32 noundef %diag, i32 noundef %m, ptr noundef %a, i32 noundef %a_rs, i32 noundef %a_cs, ptr noundef %x, i32 noundef %incx) #0 {
entry:
  %uplo.addr = alloca i32, align 4
  %trans.addr = alloca i32, align 4
  %diag.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %a.addr = alloca ptr, align 8
  %a_rs.addr = alloca i32, align 4
  %a_cs.addr = alloca i32, align 4
  %x.addr = alloca ptr, align 8
  %incx.addr = alloca i32, align 4
  %a_save = alloca ptr, align 8
  %a_rs_save = alloca i32, align 4
  %a_cs_save = alloca i32, align 4
  %x_conj = alloca ptr, align 8
  %incx_conj = alloca i32, align 4
  %lda = alloca i32, align 4
  %inca = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %temp = alloca i32, align 4
  store i32 %uplo, ptr %uplo.addr, align 4, !tbaa !4
  store i32 %trans, ptr %trans.addr, align 4, !tbaa !4
  store i32 %diag, ptr %diag.addr, align 4, !tbaa !4
  store i32 %m, ptr %m.addr, align 4, !tbaa !7
  store ptr %a, ptr %a.addr, align 8, !tbaa !9
  store i32 %a_rs, ptr %a_rs.addr, align 4, !tbaa !7
  store i32 %a_cs, ptr %a_cs.addr, align 4, !tbaa !7
  store ptr %x, ptr %x.addr, align 8, !tbaa !9
  store i32 %incx, ptr %incx.addr, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 8, ptr %a_save) #3
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !9
  store ptr %0, ptr %a_save, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %a_rs_save) #3
  %1 = load i32, ptr %a_rs.addr, align 4, !tbaa !7
  store i32 %1, ptr %a_rs_save, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 4, ptr %a_cs_save) #3
  %2 = load i32, ptr %a_cs.addr, align 4, !tbaa !7
  store i32 %2, ptr %a_cs_save, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 8, ptr %x_conj) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %incx_conj) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %lda) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %inca) #3
  %3 = load i32, ptr %m.addr, align 4, !tbaa !7
  %call = call i32 @bl1_zero_dim1(i32 noundef %3)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load i32, ptr %uplo.addr, align 4, !tbaa !4
  %5 = load i32, ptr %m.addr, align 4, !tbaa !7
  %6 = load i32, ptr %m.addr, align 4, !tbaa !7
  %7 = load ptr, ptr %a_save, align 8, !tbaa !9
  %8 = load i32, ptr %a_rs_save, align 4, !tbaa !7
  %9 = load i32, ptr %a_cs_save, align 4, !tbaa !7
  call void @bl1_ccreate_contigmr(i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, i32 noundef %9, ptr noundef %a.addr, ptr noundef %a_rs.addr, ptr noundef %a_cs.addr)
  %10 = load i32, ptr %a_cs.addr, align 4, !tbaa !7
  store i32 %10, ptr %lda, align 4, !tbaa !7
  %11 = load i32, ptr %a_rs.addr, align 4, !tbaa !7
  store i32 %11, ptr %inca, align 4, !tbaa !7
  %12 = load i32, ptr %a_rs.addr, align 4, !tbaa !7
  %13 = load i32, ptr %a_cs.addr, align 4, !tbaa !7
  %call1 = call i32 @bl1_is_row_storage(i32 noundef %12, i32 noundef %13)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then3, label %if.end23

if.then3:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %temp) #3
  %14 = load i32, ptr %lda, align 4, !tbaa !7
  store i32 %14, ptr %temp, align 4, !tbaa !7
  %15 = load i32, ptr %inca, align 4, !tbaa !7
  store i32 %15, ptr %lda, align 4, !tbaa !7
  %16 = load i32, ptr %temp, align 4, !tbaa !7
  store i32 %16, ptr %inca, align 4, !tbaa !7
  call void @llvm.lifetime.end.p0(i64 4, ptr %temp) #3
  %17 = load i32, ptr %uplo.addr, align 4, !tbaa !4
  %call4 = call i32 @bl1_is_lower(i32 noundef %17)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then3
  store i32 201, ptr %uplo.addr, align 4, !tbaa !4
  br label %if.end7

if.else:                                          ; preds = %if.then3
  store i32 200, ptr %uplo.addr, align 4, !tbaa !4
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then6
  %18 = load i32, ptr %trans.addr, align 4, !tbaa !4
  %call8 = call i32 @bl1_is_notrans(i32 noundef %18)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then10, label %if.else11

if.then10:                                        ; preds = %if.end7
  store i32 101, ptr %trans.addr, align 4, !tbaa !4
  br label %if.end22

if.else11:                                        ; preds = %if.end7
  %19 = load i32, ptr %trans.addr, align 4, !tbaa !4
  %call12 = call i32 @bl1_is_trans(i32 noundef %19)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then14, label %if.else15

if.then14:                                        ; preds = %if.else11
  store i32 100, ptr %trans.addr, align 4, !tbaa !4
  br label %if.end21

if.else15:                                        ; preds = %if.else11
  %20 = load i32, ptr %trans.addr, align 4, !tbaa !4
  %call16 = call i32 @bl1_is_conjnotrans(i32 noundef %20)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then18, label %if.else19

if.then18:                                        ; preds = %if.else15
  store i32 103, ptr %trans.addr, align 4, !tbaa !4
  br label %if.end20

if.else19:                                        ; preds = %if.else15
  store i32 102, ptr %trans.addr, align 4, !tbaa !4
  br label %if.end20

if.end20:                                         ; preds = %if.else19, %if.then18
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %if.then14
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.then10
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %if.end
  %21 = load ptr, ptr %x.addr, align 8, !tbaa !9
  store ptr %21, ptr %x_conj, align 8, !tbaa !9
  %22 = load i32, ptr %incx.addr, align 4, !tbaa !7
  store i32 %22, ptr %incx_conj, align 4, !tbaa !7
  %23 = load i32, ptr %trans.addr, align 4, !tbaa !4
  %call24 = call i32 @bl1_is_conjnotrans(i32 noundef %23)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.then26, label %if.end28

if.then26:                                        ; preds = %if.end23
  %24 = load i32, ptr %m.addr, align 4, !tbaa !7
  %conv = sext i32 %24 to i64
  %call27 = call ptr @bl1_callocv(i64 noundef %conv)
  store ptr %call27, ptr %x_conj, align 8, !tbaa !9
  store i32 1, ptr %incx_conj, align 4, !tbaa !7
  %25 = load i32, ptr %m.addr, align 4, !tbaa !7
  %26 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %27 = load i32, ptr %incx.addr, align 4, !tbaa !7
  %28 = load ptr, ptr %x_conj, align 8, !tbaa !9
  %29 = load i32, ptr %incx_conj, align 4, !tbaa !7
  call void @bl1_ccopyv(i32 noundef 501, i32 noundef %25, ptr noundef %26, i32 noundef %27, ptr noundef %28, i32 noundef %29)
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end23
  %30 = load i32, ptr %uplo.addr, align 4, !tbaa !4
  %31 = load i32, ptr %trans.addr, align 4, !tbaa !4
  %32 = load i32, ptr %diag.addr, align 4, !tbaa !4
  %33 = load i32, ptr %m.addr, align 4, !tbaa !7
  %34 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %35 = load i32, ptr %lda, align 4, !tbaa !7
  %36 = load ptr, ptr %x_conj, align 8, !tbaa !9
  %37 = load i32, ptr %incx_conj, align 4, !tbaa !7
  call void @bl1_ctrmv_blas(i32 noundef %30, i32 noundef %31, i32 noundef %32, i32 noundef %33, ptr noundef %34, i32 noundef %35, ptr noundef %36, i32 noundef %37)
  %38 = load i32, ptr %trans.addr, align 4, !tbaa !4
  %call29 = call i32 @bl1_is_conjnotrans(i32 noundef %38)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.end28
  %39 = load i32, ptr %m.addr, align 4, !tbaa !7
  %40 = load ptr, ptr %x_conj, align 8, !tbaa !9
  %41 = load i32, ptr %incx_conj, align 4, !tbaa !7
  %42 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %43 = load i32, ptr %incx.addr, align 4, !tbaa !7
  call void @bl1_ccopyv(i32 noundef 501, i32 noundef %39, ptr noundef %40, i32 noundef %41, ptr noundef %42, i32 noundef %43)
  %44 = load ptr, ptr %x_conj, align 8, !tbaa !9
  call void @bl1_cfree(ptr noundef %44)
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.end28
  %45 = load ptr, ptr %a_save, align 8, !tbaa !9
  %46 = load i32, ptr %a_rs_save, align 4, !tbaa !7
  %47 = load i32, ptr %a_cs_save, align 4, !tbaa !7
  call void @bl1_cfree_contigm(ptr noundef %45, i32 noundef %46, i32 noundef %47, ptr noundef %a.addr, ptr noundef %a_rs.addr, ptr noundef %a_cs.addr)
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %inca) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %lda) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %incx_conj) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %x_conj) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %a_cs_save) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %a_rs_save) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %a_save) #3
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare void @bl1_ccreate_contigmr(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare ptr @bl1_callocv(i64 noundef) #2

declare void @bl1_ccopyv(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define void @bl1_ctrmv_blas(i32 noundef %uplo, i32 noundef %trans, i32 noundef %diag, i32 noundef %m, ptr noundef %a, i32 noundef %lda, ptr noundef %x, i32 noundef %incx) #0 {
entry:
  %uplo.addr = alloca i32, align 4
  %trans.addr = alloca i32, align 4
  %diag.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %a.addr = alloca ptr, align 8
  %lda.addr = alloca i32, align 4
  %x.addr = alloca ptr, align 8
  %incx.addr = alloca i32, align 4
  %blas_uplo = alloca i8, align 1
  %blas_trans = alloca i8, align 1
  %blas_diag = alloca i8, align 1
  store i32 %uplo, ptr %uplo.addr, align 4, !tbaa !4
  store i32 %trans, ptr %trans.addr, align 4, !tbaa !4
  store i32 %diag, ptr %diag.addr, align 4, !tbaa !4
  store i32 %m, ptr %m.addr, align 4, !tbaa !7
  store ptr %a, ptr %a.addr, align 8, !tbaa !9
  store i32 %lda, ptr %lda.addr, align 4, !tbaa !7
  store ptr %x, ptr %x.addr, align 8, !tbaa !9
  store i32 %incx, ptr %incx.addr, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 1, ptr %blas_uplo) #3
  call void @llvm.lifetime.start.p0(i64 1, ptr %blas_trans) #3
  call void @llvm.lifetime.start.p0(i64 1, ptr %blas_diag) #3
  %0 = load i32, ptr %uplo.addr, align 4, !tbaa !4
  call void @bl1_param_map_to_netlib_uplo(i32 noundef %0, ptr noundef %blas_uplo)
  %1 = load i32, ptr %trans.addr, align 4, !tbaa !4
  call void @bl1_param_map_to_netlib_trans(i32 noundef %1, ptr noundef %blas_trans)
  %2 = load i32, ptr %diag.addr, align 4, !tbaa !4
  call void @bl1_param_map_to_netlib_diag(i32 noundef %2, ptr noundef %blas_diag)
  %3 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %4 = load ptr, ptr %x.addr, align 8, !tbaa !9
  call void @ctrmv_(ptr noundef %blas_uplo, ptr noundef %blas_trans, ptr noundef %blas_diag, ptr noundef %m.addr, ptr noundef %3, ptr noundef %lda.addr, ptr noundef %4, ptr noundef %incx.addr)
  call void @llvm.lifetime.end.p0(i64 1, ptr %blas_diag) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr %blas_trans) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr %blas_uplo) #3
  ret void
}

declare void @bl1_cfree(ptr noundef) #2

declare void @bl1_cfree_contigm(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define void @bl1_ztrmv(i32 noundef %uplo, i32 noundef %trans, i32 noundef %diag, i32 noundef %m, ptr noundef %a, i32 noundef %a_rs, i32 noundef %a_cs, ptr noundef %x, i32 noundef %incx) #0 {
entry:
  %uplo.addr = alloca i32, align 4
  %trans.addr = alloca i32, align 4
  %diag.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %a.addr = alloca ptr, align 8
  %a_rs.addr = alloca i32, align 4
  %a_cs.addr = alloca i32, align 4
  %x.addr = alloca ptr, align 8
  %incx.addr = alloca i32, align 4
  %a_save = alloca ptr, align 8
  %a_rs_save = alloca i32, align 4
  %a_cs_save = alloca i32, align 4
  %x_conj = alloca ptr, align 8
  %incx_conj = alloca i32, align 4
  %lda = alloca i32, align 4
  %inca = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %temp = alloca i32, align 4
  store i32 %uplo, ptr %uplo.addr, align 4, !tbaa !4
  store i32 %trans, ptr %trans.addr, align 4, !tbaa !4
  store i32 %diag, ptr %diag.addr, align 4, !tbaa !4
  store i32 %m, ptr %m.addr, align 4, !tbaa !7
  store ptr %a, ptr %a.addr, align 8, !tbaa !9
  store i32 %a_rs, ptr %a_rs.addr, align 4, !tbaa !7
  store i32 %a_cs, ptr %a_cs.addr, align 4, !tbaa !7
  store ptr %x, ptr %x.addr, align 8, !tbaa !9
  store i32 %incx, ptr %incx.addr, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 8, ptr %a_save) #3
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !9
  store ptr %0, ptr %a_save, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %a_rs_save) #3
  %1 = load i32, ptr %a_rs.addr, align 4, !tbaa !7
  store i32 %1, ptr %a_rs_save, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 4, ptr %a_cs_save) #3
  %2 = load i32, ptr %a_cs.addr, align 4, !tbaa !7
  store i32 %2, ptr %a_cs_save, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 8, ptr %x_conj) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %incx_conj) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %lda) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %inca) #3
  %3 = load i32, ptr %m.addr, align 4, !tbaa !7
  %call = call i32 @bl1_zero_dim1(i32 noundef %3)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load i32, ptr %uplo.addr, align 4, !tbaa !4
  %5 = load i32, ptr %m.addr, align 4, !tbaa !7
  %6 = load i32, ptr %m.addr, align 4, !tbaa !7
  %7 = load ptr, ptr %a_save, align 8, !tbaa !9
  %8 = load i32, ptr %a_rs_save, align 4, !tbaa !7
  %9 = load i32, ptr %a_cs_save, align 4, !tbaa !7
  call void @bl1_zcreate_contigmr(i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, i32 noundef %9, ptr noundef %a.addr, ptr noundef %a_rs.addr, ptr noundef %a_cs.addr)
  %10 = load i32, ptr %a_cs.addr, align 4, !tbaa !7
  store i32 %10, ptr %lda, align 4, !tbaa !7
  %11 = load i32, ptr %a_rs.addr, align 4, !tbaa !7
  store i32 %11, ptr %inca, align 4, !tbaa !7
  %12 = load i32, ptr %a_rs.addr, align 4, !tbaa !7
  %13 = load i32, ptr %a_cs.addr, align 4, !tbaa !7
  %call1 = call i32 @bl1_is_row_storage(i32 noundef %12, i32 noundef %13)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then3, label %if.end23

if.then3:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %temp) #3
  %14 = load i32, ptr %lda, align 4, !tbaa !7
  store i32 %14, ptr %temp, align 4, !tbaa !7
  %15 = load i32, ptr %inca, align 4, !tbaa !7
  store i32 %15, ptr %lda, align 4, !tbaa !7
  %16 = load i32, ptr %temp, align 4, !tbaa !7
  store i32 %16, ptr %inca, align 4, !tbaa !7
  call void @llvm.lifetime.end.p0(i64 4, ptr %temp) #3
  %17 = load i32, ptr %uplo.addr, align 4, !tbaa !4
  %call4 = call i32 @bl1_is_lower(i32 noundef %17)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then3
  store i32 201, ptr %uplo.addr, align 4, !tbaa !4
  br label %if.end7

if.else:                                          ; preds = %if.then3
  store i32 200, ptr %uplo.addr, align 4, !tbaa !4
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then6
  %18 = load i32, ptr %trans.addr, align 4, !tbaa !4
  %call8 = call i32 @bl1_is_notrans(i32 noundef %18)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then10, label %if.else11

if.then10:                                        ; preds = %if.end7
  store i32 101, ptr %trans.addr, align 4, !tbaa !4
  br label %if.end22

if.else11:                                        ; preds = %if.end7
  %19 = load i32, ptr %trans.addr, align 4, !tbaa !4
  %call12 = call i32 @bl1_is_trans(i32 noundef %19)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then14, label %if.else15

if.then14:                                        ; preds = %if.else11
  store i32 100, ptr %trans.addr, align 4, !tbaa !4
  br label %if.end21

if.else15:                                        ; preds = %if.else11
  %20 = load i32, ptr %trans.addr, align 4, !tbaa !4
  %call16 = call i32 @bl1_is_conjnotrans(i32 noundef %20)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then18, label %if.else19

if.then18:                                        ; preds = %if.else15
  store i32 103, ptr %trans.addr, align 4, !tbaa !4
  br label %if.end20

if.else19:                                        ; preds = %if.else15
  store i32 102, ptr %trans.addr, align 4, !tbaa !4
  br label %if.end20

if.end20:                                         ; preds = %if.else19, %if.then18
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %if.then14
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.then10
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %if.end
  %21 = load ptr, ptr %x.addr, align 8, !tbaa !9
  store ptr %21, ptr %x_conj, align 8, !tbaa !9
  %22 = load i32, ptr %incx.addr, align 4, !tbaa !7
  store i32 %22, ptr %incx_conj, align 4, !tbaa !7
  %23 = load i32, ptr %trans.addr, align 4, !tbaa !4
  %call24 = call i32 @bl1_is_conjnotrans(i32 noundef %23)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.then26, label %if.end28

if.then26:                                        ; preds = %if.end23
  %24 = load i32, ptr %m.addr, align 4, !tbaa !7
  %conv = sext i32 %24 to i64
  %call27 = call ptr @bl1_zallocv(i64 noundef %conv)
  store ptr %call27, ptr %x_conj, align 8, !tbaa !9
  store i32 1, ptr %incx_conj, align 4, !tbaa !7
  %25 = load i32, ptr %m.addr, align 4, !tbaa !7
  %26 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %27 = load i32, ptr %incx.addr, align 4, !tbaa !7
  %28 = load ptr, ptr %x_conj, align 8, !tbaa !9
  %29 = load i32, ptr %incx_conj, align 4, !tbaa !7
  call void @bl1_zcopyv(i32 noundef 501, i32 noundef %25, ptr noundef %26, i32 noundef %27, ptr noundef %28, i32 noundef %29)
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end23
  %30 = load i32, ptr %uplo.addr, align 4, !tbaa !4
  %31 = load i32, ptr %trans.addr, align 4, !tbaa !4
  %32 = load i32, ptr %diag.addr, align 4, !tbaa !4
  %33 = load i32, ptr %m.addr, align 4, !tbaa !7
  %34 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %35 = load i32, ptr %lda, align 4, !tbaa !7
  %36 = load ptr, ptr %x_conj, align 8, !tbaa !9
  %37 = load i32, ptr %incx_conj, align 4, !tbaa !7
  call void @bl1_ztrmv_blas(i32 noundef %30, i32 noundef %31, i32 noundef %32, i32 noundef %33, ptr noundef %34, i32 noundef %35, ptr noundef %36, i32 noundef %37)
  %38 = load i32, ptr %trans.addr, align 4, !tbaa !4
  %call29 = call i32 @bl1_is_conjnotrans(i32 noundef %38)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.end28
  %39 = load i32, ptr %m.addr, align 4, !tbaa !7
  %40 = load ptr, ptr %x_conj, align 8, !tbaa !9
  %41 = load i32, ptr %incx_conj, align 4, !tbaa !7
  %42 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %43 = load i32, ptr %incx.addr, align 4, !tbaa !7
  call void @bl1_zcopyv(i32 noundef 501, i32 noundef %39, ptr noundef %40, i32 noundef %41, ptr noundef %42, i32 noundef %43)
  %44 = load ptr, ptr %x_conj, align 8, !tbaa !9
  call void @bl1_zfree(ptr noundef %44)
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.end28
  %45 = load ptr, ptr %a_save, align 8, !tbaa !9
  %46 = load i32, ptr %a_rs_save, align 4, !tbaa !7
  %47 = load i32, ptr %a_cs_save, align 4, !tbaa !7
  call void @bl1_zfree_contigm(ptr noundef %45, i32 noundef %46, i32 noundef %47, ptr noundef %a.addr, ptr noundef %a_rs.addr, ptr noundef %a_cs.addr)
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %inca) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %lda) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %incx_conj) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %x_conj) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %a_cs_save) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %a_rs_save) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %a_save) #3
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare void @bl1_zcreate_contigmr(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare ptr @bl1_zallocv(i64 noundef) #2

declare void @bl1_zcopyv(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define void @bl1_ztrmv_blas(i32 noundef %uplo, i32 noundef %trans, i32 noundef %diag, i32 noundef %m, ptr noundef %a, i32 noundef %lda, ptr noundef %x, i32 noundef %incx) #0 {
entry:
  %uplo.addr = alloca i32, align 4
  %trans.addr = alloca i32, align 4
  %diag.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %a.addr = alloca ptr, align 8
  %lda.addr = alloca i32, align 4
  %x.addr = alloca ptr, align 8
  %incx.addr = alloca i32, align 4
  %blas_uplo = alloca i8, align 1
  %blas_trans = alloca i8, align 1
  %blas_diag = alloca i8, align 1
  store i32 %uplo, ptr %uplo.addr, align 4, !tbaa !4
  store i32 %trans, ptr %trans.addr, align 4, !tbaa !4
  store i32 %diag, ptr %diag.addr, align 4, !tbaa !4
  store i32 %m, ptr %m.addr, align 4, !tbaa !7
  store ptr %a, ptr %a.addr, align 8, !tbaa !9
  store i32 %lda, ptr %lda.addr, align 4, !tbaa !7
  store ptr %x, ptr %x.addr, align 8, !tbaa !9
  store i32 %incx, ptr %incx.addr, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 1, ptr %blas_uplo) #3
  call void @llvm.lifetime.start.p0(i64 1, ptr %blas_trans) #3
  call void @llvm.lifetime.start.p0(i64 1, ptr %blas_diag) #3
  %0 = load i32, ptr %uplo.addr, align 4, !tbaa !4
  call void @bl1_param_map_to_netlib_uplo(i32 noundef %0, ptr noundef %blas_uplo)
  %1 = load i32, ptr %trans.addr, align 4, !tbaa !4
  call void @bl1_param_map_to_netlib_trans(i32 noundef %1, ptr noundef %blas_trans)
  %2 = load i32, ptr %diag.addr, align 4, !tbaa !4
  call void @bl1_param_map_to_netlib_diag(i32 noundef %2, ptr noundef %blas_diag)
  %3 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %4 = load ptr, ptr %x.addr, align 8, !tbaa !9
  call void @ztrmv_(ptr noundef %blas_uplo, ptr noundef %blas_trans, ptr noundef %blas_diag, ptr noundef %m.addr, ptr noundef %3, ptr noundef %lda.addr, ptr noundef %4, ptr noundef %incx.addr)
  call void @llvm.lifetime.end.p0(i64 1, ptr %blas_diag) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr %blas_trans) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr %blas_uplo) #3
  ret void
}

declare void @bl1_zfree(ptr noundef) #2

declare void @bl1_zfree_contigm(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare void @bl1_param_map_to_netlib_uplo(i32 noundef, ptr noundef) #2

declare void @bl1_param_map_to_netlib_trans(i32 noundef, ptr noundef) #2

declare void @bl1_param_map_to_netlib_diag(i32 noundef, ptr noundef) #2

declare void @strmv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare void @dtrmv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare void @ctrmv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare void @ztrmv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="znver2" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="znver2" }
attributes #3 = { nounwind }

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

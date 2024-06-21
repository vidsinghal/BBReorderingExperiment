; ModuleID = 'samples/253.bc'
source_filename = "/local-ssd/amdlibflame-otrkevhm552xspevawtkllysqp2goz3p-build/aidengro/spack-stage-amdlibflame-4.1-otrkevhm552xspevawtkllysqp2goz3p/spack-src/src/lapack/sol/sylv/nn/flamec/FLA_Sylv_nn_blk_var6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FLA_Obj_view = type { i64, i64, i64, i64, i64, i64, ptr }
%struct.fla_sylv_s = type { i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@FLA_MINUS_ONE = external global %struct.FLA_Obj_view, align 8
@FLA_ONE = external global %struct.FLA_Obj_view, align 8

; Function Attrs: nounwind uwtable
define i32 @FLA_Sylv_nn_blk_var6(ptr noundef byval(%struct.FLA_Obj_view) align 8 %isgn, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C, ptr noundef byval(%struct.FLA_Obj_view) align 8 %scale, ptr noundef %cntl) #0 {
entry:
  %cntl.addr = alloca ptr, align 8
  %ATL = alloca %struct.FLA_Obj_view, align 8
  %ATR = alloca %struct.FLA_Obj_view, align 8
  %A00 = alloca %struct.FLA_Obj_view, align 8
  %A01 = alloca %struct.FLA_Obj_view, align 8
  %A02 = alloca %struct.FLA_Obj_view, align 8
  %ABL = alloca %struct.FLA_Obj_view, align 8
  %ABR = alloca %struct.FLA_Obj_view, align 8
  %A10 = alloca %struct.FLA_Obj_view, align 8
  %A11 = alloca %struct.FLA_Obj_view, align 8
  %A12 = alloca %struct.FLA_Obj_view, align 8
  %A20 = alloca %struct.FLA_Obj_view, align 8
  %A21 = alloca %struct.FLA_Obj_view, align 8
  %A22 = alloca %struct.FLA_Obj_view, align 8
  %BTL = alloca %struct.FLA_Obj_view, align 8
  %BTR = alloca %struct.FLA_Obj_view, align 8
  %B00 = alloca %struct.FLA_Obj_view, align 8
  %B01 = alloca %struct.FLA_Obj_view, align 8
  %B02 = alloca %struct.FLA_Obj_view, align 8
  %BBL = alloca %struct.FLA_Obj_view, align 8
  %BBR = alloca %struct.FLA_Obj_view, align 8
  %B10 = alloca %struct.FLA_Obj_view, align 8
  %B11 = alloca %struct.FLA_Obj_view, align 8
  %B12 = alloca %struct.FLA_Obj_view, align 8
  %B20 = alloca %struct.FLA_Obj_view, align 8
  %B21 = alloca %struct.FLA_Obj_view, align 8
  %B22 = alloca %struct.FLA_Obj_view, align 8
  %CTL = alloca %struct.FLA_Obj_view, align 8
  %CTR = alloca %struct.FLA_Obj_view, align 8
  %C00 = alloca %struct.FLA_Obj_view, align 8
  %C01 = alloca %struct.FLA_Obj_view, align 8
  %C02 = alloca %struct.FLA_Obj_view, align 8
  %CBL = alloca %struct.FLA_Obj_view, align 8
  %CBR = alloca %struct.FLA_Obj_view, align 8
  %C10 = alloca %struct.FLA_Obj_view, align 8
  %C11 = alloca %struct.FLA_Obj_view, align 8
  %C12 = alloca %struct.FLA_Obj_view, align 8
  %C20 = alloca %struct.FLA_Obj_view, align 8
  %C21 = alloca %struct.FLA_Obj_view, align 8
  %C22 = alloca %struct.FLA_Obj_view, align 8
  %b = alloca i64, align 8
  %agg.tmp = alloca %struct.FLA_Obj_view, align 8
  %agg.tmp18 = alloca %struct.FLA_Obj_view, align 8
  %agg.tmp25 = alloca %struct.FLA_Obj_view, align 8
  %agg.tmp32 = alloca %struct.FLA_Obj_view, align 8
  store ptr %cntl, ptr %cntl.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 56, ptr %ATL) #4
  call void @llvm.lifetime.start.p0(i64 56, ptr %ATR) #4
  call void @llvm.lifetime.start.p0(i64 56, ptr %A00) #4
  call void @llvm.lifetime.start.p0(i64 56, ptr %A01) #4
  call void @llvm.lifetime.start.p0(i64 56, ptr %A02) #4
  call void @llvm.lifetime.start.p0(i64 56, ptr %ABL) #4
  call void @llvm.lifetime.start.p0(i64 56, ptr %ABR) #4
  call void @llvm.lifetime.start.p0(i64 56, ptr %A10) #4
  call void @llvm.lifetime.start.p0(i64 56, ptr %A11) #4
  call void @llvm.lifetime.start.p0(i64 56, ptr %A12) #4
  call void @llvm.lifetime.start.p0(i64 56, ptr %A20) #4
  call void @llvm.lifetime.start.p0(i64 56, ptr %A21) #4
  call void @llvm.lifetime.start.p0(i64 56, ptr %A22) #4
  call void @llvm.lifetime.start.p0(i64 56, ptr %BTL) #4
  call void @llvm.lifetime.start.p0(i64 56, ptr %BTR) #4
  call void @llvm.lifetime.start.p0(i64 56, ptr %B00) #4
  call void @llvm.lifetime.start.p0(i64 56, ptr %B01) #4
  call void @llvm.lifetime.start.p0(i64 56, ptr %B02) #4
  call void @llvm.lifetime.start.p0(i64 56, ptr %BBL) #4
  call void @llvm.lifetime.start.p0(i64 56, ptr %BBR) #4
  call void @llvm.lifetime.start.p0(i64 56, ptr %B10) #4
  call void @llvm.lifetime.start.p0(i64 56, ptr %B11) #4
  call void @llvm.lifetime.start.p0(i64 56, ptr %B12) #4
  call void @llvm.lifetime.start.p0(i64 56, ptr %B20) #4
  call void @llvm.lifetime.start.p0(i64 56, ptr %B21) #4
  call void @llvm.lifetime.start.p0(i64 56, ptr %B22) #4
  call void @llvm.lifetime.start.p0(i64 56, ptr %CTL) #4
  call void @llvm.lifetime.start.p0(i64 56, ptr %CTR) #4
  call void @llvm.lifetime.start.p0(i64 56, ptr %C00) #4
  call void @llvm.lifetime.start.p0(i64 56, ptr %C01) #4
  call void @llvm.lifetime.start.p0(i64 56, ptr %C02) #4
  call void @llvm.lifetime.start.p0(i64 56, ptr %CBL) #4
  call void @llvm.lifetime.start.p0(i64 56, ptr %CBR) #4
  call void @llvm.lifetime.start.p0(i64 56, ptr %C10) #4
  call void @llvm.lifetime.start.p0(i64 56, ptr %C11) #4
  call void @llvm.lifetime.start.p0(i64 56, ptr %C12) #4
  call void @llvm.lifetime.start.p0(i64 56, ptr %C20) #4
  call void @llvm.lifetime.start.p0(i64 56, ptr %C21) #4
  call void @llvm.lifetime.start.p0(i64 56, ptr %C22) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #4
  %call = call i32 @FLA_Part_2x2(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef %ATL, ptr noundef %ATR, ptr noundef %ABL, ptr noundef %ABR, i64 noundef 0, i64 noundef 0, i32 noundef 22)
  %call1 = call i32 @FLA_Part_2x2(ptr noundef byval(%struct.FLA_Obj_view) align 8 %B, ptr noundef %BTL, ptr noundef %BTR, ptr noundef %BBL, ptr noundef %BBR, i64 noundef 0, i64 noundef 0, i32 noundef 11)
  %call2 = call i32 @FLA_Part_2x2(ptr noundef byval(%struct.FLA_Obj_view) align 8 %C, ptr noundef %CTL, ptr noundef %CTR, ptr noundef %CBL, ptr noundef %CBR, i64 noundef 0, i64 noundef 0, i32 noundef 21)
  br label %while.cond

while.cond:                                       ; preds = %cond.end37, %entry
  %call3 = call i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8 %ABR)
  %call4 = call i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %cmp = icmp ult i64 %call3, %call4
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %0 = load ptr, ptr %cntl.addr, align 8, !tbaa !4
  %blocksize = getelementptr inbounds %struct.fla_sylv_s, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %blocksize, align 8, !tbaa !8
  %call5 = call i64 @FLA_Determine_blocksize(ptr noundef byval(%struct.FLA_Obj_view) align 8 %CTR, i32 noundef 12, ptr noundef %1)
  store i64 %call5, ptr %b, align 8, !tbaa !11
  %2 = load i64, ptr %b, align 8, !tbaa !11
  %3 = load i64, ptr %b, align 8, !tbaa !11
  %call6 = call i32 @FLA_Repart_2x2_to_3x3(ptr noundef byval(%struct.FLA_Obj_view) align 8 %ATL, ptr noundef byval(%struct.FLA_Obj_view) align 8 %ATR, ptr noundef %A00, ptr noundef %A01, ptr noundef %A02, ptr noundef %A10, ptr noundef %A11, ptr noundef %A12, ptr noundef byval(%struct.FLA_Obj_view) align 8 %ABL, ptr noundef byval(%struct.FLA_Obj_view) align 8 %ABR, ptr noundef %A20, ptr noundef %A21, ptr noundef %A22, i64 noundef %2, i64 noundef %3, i32 noundef 11)
  %4 = load i64, ptr %b, align 8, !tbaa !11
  %5 = load i64, ptr %b, align 8, !tbaa !11
  %call7 = call i32 @FLA_Repart_2x2_to_3x3(ptr noundef byval(%struct.FLA_Obj_view) align 8 %BTL, ptr noundef byval(%struct.FLA_Obj_view) align 8 %BTR, ptr noundef %B00, ptr noundef %B01, ptr noundef %B02, ptr noundef %B10, ptr noundef %B11, ptr noundef %B12, ptr noundef byval(%struct.FLA_Obj_view) align 8 %BBL, ptr noundef byval(%struct.FLA_Obj_view) align 8 %BBR, ptr noundef %B20, ptr noundef %B21, ptr noundef %B22, i64 noundef %4, i64 noundef %5, i32 noundef 22)
  %6 = load i64, ptr %b, align 8, !tbaa !11
  %7 = load i64, ptr %b, align 8, !tbaa !11
  %call8 = call i32 @FLA_Repart_2x2_to_3x3(ptr noundef byval(%struct.FLA_Obj_view) align 8 %CTL, ptr noundef byval(%struct.FLA_Obj_view) align 8 %CTR, ptr noundef %C00, ptr noundef %C01, ptr noundef %C02, ptr noundef %C10, ptr noundef %C11, ptr noundef %C12, ptr noundef byval(%struct.FLA_Obj_view) align 8 %CBL, ptr noundef byval(%struct.FLA_Obj_view) align 8 %CBR, ptr noundef %C20, ptr noundef %C21, ptr noundef %C22, i64 noundef %6, i64 noundef %7, i32 noundef 12)
  %8 = load ptr, ptr %cntl.addr, align 8, !tbaa !4
  %sub_sylv1 = getelementptr inbounds %struct.fla_sylv_s, ptr %8, i32 0, i32 3
  %9 = load ptr, ptr %sub_sylv1, align 8, !tbaa !13
  %call9 = call i32 @FLA_Sylv_internal(i32 noundef 400, i32 noundef 400, ptr noundef byval(%struct.FLA_Obj_view) align 8 %isgn, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A11, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B00, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C10, ptr noundef byval(%struct.FLA_Obj_view) align 8 %scale, ptr noundef %9)
  %10 = load ptr, ptr %cntl.addr, align 8, !tbaa !4
  %sub_gemm1 = getelementptr inbounds %struct.fla_sylv_s, ptr %10, i32 0, i32 6
  %11 = load ptr, ptr %sub_gemm1, align 8, !tbaa !14
  %call10 = call i32 @FLA_Gemm_internal(i32 noundef 400, i32 noundef 400, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_MINUS_ONE, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A01, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C10, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_ONE, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C00, ptr noundef %11)
  %12 = load ptr, ptr %cntl.addr, align 8, !tbaa !4
  %sub_sylv2 = getelementptr inbounds %struct.fla_sylv_s, ptr %12, i32 0, i32 4
  %13 = load ptr, ptr %sub_sylv2, align 8, !tbaa !15
  %call11 = call i32 @FLA_Sylv_internal(i32 noundef 400, i32 noundef 400, ptr noundef byval(%struct.FLA_Obj_view) align 8 %isgn, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A22, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B11, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C21, ptr noundef byval(%struct.FLA_Obj_view) align 8 %scale, ptr noundef %13)
  call void @llvm.lifetime.start.p0(i64 56, ptr %agg.tmp) #4
  %base = getelementptr inbounds %struct.FLA_Obj_view, ptr %isgn, i32 0, i32 6
  %14 = load ptr, ptr %base, align 8, !tbaa !16
  %15 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8, !tbaa !16
  %cmp12 = icmp eq ptr %14, %15
  br i1 %cmp12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.tmp, ptr align 8 @FLA_MINUS_ONE, i64 56, i1 false), !tbaa.struct !18
  br label %cond.end

cond.false:                                       ; preds = %while.body
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.tmp, ptr align 8 @FLA_ONE, i64 56, i1 false), !tbaa.struct !18
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %16 = load ptr, ptr %cntl.addr, align 8, !tbaa !4
  %sub_gemm2 = getelementptr inbounds %struct.fla_sylv_s, ptr %16, i32 0, i32 7
  %17 = load ptr, ptr %sub_gemm2, align 8, !tbaa !19
  %call13 = call i32 @FLA_Gemm_internal(i32 noundef 400, i32 noundef 400, ptr noundef byval(%struct.FLA_Obj_view) align 8 %agg.tmp, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C10, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B01, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_ONE, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C11, ptr noundef %17)
  call void @llvm.lifetime.end.p0(i64 56, ptr %agg.tmp) #4
  %18 = load ptr, ptr %cntl.addr, align 8, !tbaa !4
  %sub_gemm3 = getelementptr inbounds %struct.fla_sylv_s, ptr %18, i32 0, i32 8
  %19 = load ptr, ptr %sub_gemm3, align 8, !tbaa !20
  %call14 = call i32 @FLA_Gemm_internal(i32 noundef 400, i32 noundef 400, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_MINUS_ONE, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A12, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C21, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_ONE, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C11, ptr noundef %19)
  %20 = load ptr, ptr %cntl.addr, align 8, !tbaa !4
  %sub_sylv3 = getelementptr inbounds %struct.fla_sylv_s, ptr %20, i32 0, i32 5
  %21 = load ptr, ptr %sub_sylv3, align 8, !tbaa !21
  %call15 = call i32 @FLA_Sylv_internal(i32 noundef 400, i32 noundef 400, ptr noundef byval(%struct.FLA_Obj_view) align 8 %isgn, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A11, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B11, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C11, ptr noundef byval(%struct.FLA_Obj_view) align 8 %scale, ptr noundef %21)
  %22 = load ptr, ptr %cntl.addr, align 8, !tbaa !4
  %sub_gemm4 = getelementptr inbounds %struct.fla_sylv_s, ptr %22, i32 0, i32 9
  %23 = load ptr, ptr %sub_gemm4, align 8, !tbaa !22
  %call16 = call i32 @FLA_Gemm_internal(i32 noundef 400, i32 noundef 400, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_MINUS_ONE, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A02, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C21, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_ONE, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C01, ptr noundef %23)
  %24 = load ptr, ptr %cntl.addr, align 8, !tbaa !4
  %sub_gemm5 = getelementptr inbounds %struct.fla_sylv_s, ptr %24, i32 0, i32 10
  %25 = load ptr, ptr %sub_gemm5, align 8, !tbaa !23
  %call17 = call i32 @FLA_Gemm_internal(i32 noundef 400, i32 noundef 400, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_MINUS_ONE, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A01, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C11, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_ONE, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C01, ptr noundef %25)
  call void @llvm.lifetime.start.p0(i64 56, ptr %agg.tmp18) #4
  %base19 = getelementptr inbounds %struct.FLA_Obj_view, ptr %isgn, i32 0, i32 6
  %26 = load ptr, ptr %base19, align 8, !tbaa !16
  %27 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8, !tbaa !16
  %cmp20 = icmp eq ptr %26, %27
  br i1 %cmp20, label %cond.true21, label %cond.false22

cond.true21:                                      ; preds = %cond.end
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.tmp18, ptr align 8 @FLA_MINUS_ONE, i64 56, i1 false), !tbaa.struct !18
  br label %cond.end23

cond.false22:                                     ; preds = %cond.end
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.tmp18, ptr align 8 @FLA_ONE, i64 56, i1 false), !tbaa.struct !18
  br label %cond.end23

cond.end23:                                       ; preds = %cond.false22, %cond.true21
  %28 = load ptr, ptr %cntl.addr, align 8, !tbaa !4
  %sub_gemm6 = getelementptr inbounds %struct.fla_sylv_s, ptr %28, i32 0, i32 11
  %29 = load ptr, ptr %sub_gemm6, align 8, !tbaa !24
  %call24 = call i32 @FLA_Gemm_internal(i32 noundef 400, i32 noundef 400, ptr noundef byval(%struct.FLA_Obj_view) align 8 %agg.tmp18, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C11, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B12, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_ONE, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C12, ptr noundef %29)
  call void @llvm.lifetime.end.p0(i64 56, ptr %agg.tmp18) #4
  call void @llvm.lifetime.start.p0(i64 56, ptr %agg.tmp25) #4
  %base26 = getelementptr inbounds %struct.FLA_Obj_view, ptr %isgn, i32 0, i32 6
  %30 = load ptr, ptr %base26, align 8, !tbaa !16
  %31 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8, !tbaa !16
  %cmp27 = icmp eq ptr %30, %31
  br i1 %cmp27, label %cond.true28, label %cond.false29

cond.true28:                                      ; preds = %cond.end23
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.tmp25, ptr align 8 @FLA_MINUS_ONE, i64 56, i1 false), !tbaa.struct !18
  br label %cond.end30

cond.false29:                                     ; preds = %cond.end23
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.tmp25, ptr align 8 @FLA_ONE, i64 56, i1 false), !tbaa.struct !18
  br label %cond.end30

cond.end30:                                       ; preds = %cond.false29, %cond.true28
  %32 = load ptr, ptr %cntl.addr, align 8, !tbaa !4
  %sub_gemm7 = getelementptr inbounds %struct.fla_sylv_s, ptr %32, i32 0, i32 12
  %33 = load ptr, ptr %sub_gemm7, align 8, !tbaa !25
  %call31 = call i32 @FLA_Gemm_internal(i32 noundef 400, i32 noundef 400, ptr noundef byval(%struct.FLA_Obj_view) align 8 %agg.tmp25, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C10, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B02, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_ONE, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C12, ptr noundef %33)
  call void @llvm.lifetime.end.p0(i64 56, ptr %agg.tmp25) #4
  call void @llvm.lifetime.start.p0(i64 56, ptr %agg.tmp32) #4
  %base33 = getelementptr inbounds %struct.FLA_Obj_view, ptr %isgn, i32 0, i32 6
  %34 = load ptr, ptr %base33, align 8, !tbaa !16
  %35 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8, !tbaa !16
  %cmp34 = icmp eq ptr %34, %35
  br i1 %cmp34, label %cond.true35, label %cond.false36

cond.true35:                                      ; preds = %cond.end30
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.tmp32, ptr align 8 @FLA_MINUS_ONE, i64 56, i1 false), !tbaa.struct !18
  br label %cond.end37

cond.false36:                                     ; preds = %cond.end30
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.tmp32, ptr align 8 @FLA_ONE, i64 56, i1 false), !tbaa.struct !18
  br label %cond.end37

cond.end37:                                       ; preds = %cond.false36, %cond.true35
  %36 = load ptr, ptr %cntl.addr, align 8, !tbaa !4
  %sub_gemm8 = getelementptr inbounds %struct.fla_sylv_s, ptr %36, i32 0, i32 13
  %37 = load ptr, ptr %sub_gemm8, align 8, !tbaa !26
  %call38 = call i32 @FLA_Gemm_internal(i32 noundef 400, i32 noundef 400, ptr noundef byval(%struct.FLA_Obj_view) align 8 %agg.tmp32, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C21, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B12, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_ONE, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C22, ptr noundef %37)
  call void @llvm.lifetime.end.p0(i64 56, ptr %agg.tmp32) #4
  %call39 = call i32 @FLA_Cont_with_3x3_to_2x2(ptr noundef %ATL, ptr noundef %ATR, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A00, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A01, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A02, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A10, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A11, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A12, ptr noundef %ABL, ptr noundef %ABR, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A20, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A21, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A22, i32 noundef 22)
  %call40 = call i32 @FLA_Cont_with_3x3_to_2x2(ptr noundef %BTL, ptr noundef %BTR, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B00, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B01, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B02, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B10, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B11, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B12, ptr noundef %BBL, ptr noundef %BBR, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B20, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B21, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B22, i32 noundef 11)
  %call41 = call i32 @FLA_Cont_with_3x3_to_2x2(ptr noundef %CTL, ptr noundef %CTR, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C00, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C01, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C02, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C10, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C11, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C12, ptr noundef %CBL, ptr noundef %CBR, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C20, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C21, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C22, i32 noundef 21)
  br label %while.cond, !llvm.loop !27

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr %C22) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr %C21) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr %C20) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr %C12) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr %C11) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr %C10) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr %CBR) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr %CBL) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr %C02) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr %C01) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr %C00) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr %CTR) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr %CTL) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr %B22) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr %B21) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr %B20) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr %B12) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr %B11) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr %B10) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr %BBR) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr %BBL) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr %B02) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr %B01) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr %B00) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr %BTR) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr %BTL) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr %A22) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr %A21) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr %A20) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr %A12) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr %A11) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr %A10) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr %ABR) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr %ABL) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr %A02) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr %A01) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr %A00) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr %ATR) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr %ATL) #4
  ret i32 -1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @FLA_Part_2x2(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef) #2

declare i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i64 @FLA_Determine_blocksize(ptr noundef byval(%struct.FLA_Obj_view) align 8, i32 noundef, ptr noundef) #2

declare i32 @FLA_Repart_2x2_to_3x3(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef) #2

declare i32 @FLA_Sylv_internal(i32 noundef, i32 noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef) #2

declare i32 @FLA_Gemm_internal(i32 noundef, i32 noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @FLA_Cont_with_3x3_to_2x2(ptr noundef, ptr noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef, ptr noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, i32 noundef) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="znver2" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="znver2" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind }

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
!8 = !{!9, !5, i64 8}
!9 = !{!"fla_sylv_s", !10, i64 0, !10, i64 4, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !5, i64 88, !5, i64 96}
!10 = !{!"int", !6, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"long", !6, i64 0}
!13 = !{!9, !5, i64 16}
!14 = !{!9, !5, i64 40}
!15 = !{!9, !5, i64 24}
!16 = !{!17, !5, i64 48}
!17 = !{!"FLA_Obj_view", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !5, i64 48}
!18 = !{i64 0, i64 8, !11, i64 8, i64 8, !11, i64 16, i64 8, !11, i64 24, i64 8, !11, i64 32, i64 8, !11, i64 40, i64 8, !11, i64 48, i64 8, !4}
!19 = !{!9, !5, i64 48}
!20 = !{!9, !5, i64 56}
!21 = !{!9, !5, i64 32}
!22 = !{!9, !5, i64 64}
!23 = !{!9, !5, i64 72}
!24 = !{!9, !5, i64 80}
!25 = !{!9, !5, i64 88}
!26 = !{!9, !5, i64 96}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.mustprogress"}

; ModuleID = 'samples/39.bc'
source_filename = "/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/lapack/sol/sylv/nn/flamec/FLA_Sylv_nn_blk_var2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FLA_Obj_view = type { i64, i64, i64, i64, i64, i64, ptr }
%struct.fla_sylv_s = type { i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@FLA_MINUS_ONE = external global %struct.FLA_Obj_view, align 8
@FLA_ONE = external global %struct.FLA_Obj_view, align 8

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Sylv_nn_blk_var2(ptr noundef byval(%struct.FLA_Obj_view) align 8 %isgn, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C, ptr noundef byval(%struct.FLA_Obj_view) align 8 %scale, ptr noundef %cntl) #0 {
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
  %agg.tmp14 = alloca %struct.FLA_Obj_view, align 8
  store ptr %cntl, ptr %cntl.addr, align 8
  %call = call i32 @FLA_Part_2x2(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef %ATL, ptr noundef %ATR, ptr noundef %ABL, ptr noundef %ABR, i64 noundef 0, i64 noundef 0, i32 noundef 22)
  %call1 = call i32 @FLA_Part_2x2(ptr noundef byval(%struct.FLA_Obj_view) align 8 %B, ptr noundef %BTL, ptr noundef %BTR, ptr noundef %BBL, ptr noundef %BBR, i64 noundef 0, i64 noundef 0, i32 noundef 11)
  %call2 = call i32 @FLA_Part_2x2(ptr noundef byval(%struct.FLA_Obj_view) align 8 %C, ptr noundef %CTL, ptr noundef %CTR, ptr noundef %CBL, ptr noundef %CBR, i64 noundef 0, i64 noundef 0, i32 noundef 21)
  br label %while.cond

while.cond:                                       ; preds = %cond.end19, %entry
  %call3 = call i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8 %ABR)
  %call4 = call i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %cmp = icmp ult i64 %call3, %call4
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %0 = load ptr, ptr %cntl.addr, align 8
  %blocksize = getelementptr inbounds %struct.fla_sylv_s, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %blocksize, align 8
  %call5 = call i64 @FLA_Determine_blocksize(ptr noundef byval(%struct.FLA_Obj_view) align 8 %CTR, i32 noundef 12, ptr noundef %1)
  store i64 %call5, ptr %b, align 8
  %2 = load i64, ptr %b, align 8
  %3 = load i64, ptr %b, align 8
  %call6 = call i32 @FLA_Repart_2x2_to_3x3(ptr noundef byval(%struct.FLA_Obj_view) align 8 %ATL, ptr noundef byval(%struct.FLA_Obj_view) align 8 %ATR, ptr noundef %A00, ptr noundef %A01, ptr noundef %A02, ptr noundef %A10, ptr noundef %A11, ptr noundef %A12, ptr noundef byval(%struct.FLA_Obj_view) align 8 %ABL, ptr noundef byval(%struct.FLA_Obj_view) align 8 %ABR, ptr noundef %A20, ptr noundef %A21, ptr noundef %A22, i64 noundef %2, i64 noundef %3, i32 noundef 11)
  %4 = load i64, ptr %b, align 8
  %5 = load i64, ptr %b, align 8
  %call7 = call i32 @FLA_Repart_2x2_to_3x3(ptr noundef byval(%struct.FLA_Obj_view) align 8 %BTL, ptr noundef byval(%struct.FLA_Obj_view) align 8 %BTR, ptr noundef %B00, ptr noundef %B01, ptr noundef %B02, ptr noundef %B10, ptr noundef %B11, ptr noundef %B12, ptr noundef byval(%struct.FLA_Obj_view) align 8 %BBL, ptr noundef byval(%struct.FLA_Obj_view) align 8 %BBR, ptr noundef %B20, ptr noundef %B21, ptr noundef %B22, i64 noundef %4, i64 noundef %5, i32 noundef 22)
  %6 = load i64, ptr %b, align 8
  %7 = load i64, ptr %b, align 8
  %call8 = call i32 @FLA_Repart_2x2_to_3x3(ptr noundef byval(%struct.FLA_Obj_view) align 8 %CTL, ptr noundef byval(%struct.FLA_Obj_view) align 8 %CTR, ptr noundef %C00, ptr noundef %C01, ptr noundef %C02, ptr noundef %C10, ptr noundef %C11, ptr noundef %C12, ptr noundef byval(%struct.FLA_Obj_view) align 8 %CBL, ptr noundef byval(%struct.FLA_Obj_view) align 8 %CBR, ptr noundef %C20, ptr noundef %C21, ptr noundef %C22, i64 noundef %6, i64 noundef %7, i32 noundef 12)
  %8 = load ptr, ptr %cntl.addr, align 8
  %sub_sylv1 = getelementptr inbounds %struct.fla_sylv_s, ptr %8, i32 0, i32 3
  %9 = load ptr, ptr %sub_sylv1, align 8
  %call9 = call i32 @FLA_Sylv_internal(i32 noundef 400, i32 noundef 400, ptr noundef byval(%struct.FLA_Obj_view) align 8 %isgn, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A11, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B00, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C10, ptr noundef byval(%struct.FLA_Obj_view) align 8 %scale, ptr noundef %9)
  %10 = load ptr, ptr %cntl.addr, align 8
  %sub_gemm1 = getelementptr inbounds %struct.fla_sylv_s, ptr %10, i32 0, i32 6
  %11 = load ptr, ptr %sub_gemm1, align 8
  %call10 = call i32 @FLA_Gemm_internal(i32 noundef 400, i32 noundef 400, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_MINUS_ONE, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A01, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C10, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_ONE, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C00, ptr noundef %11)
  %base = getelementptr inbounds %struct.FLA_Obj_view, ptr %isgn, i32 0, i32 6
  %12 = load ptr, ptr %base, align 8
  %13 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8
  %cmp11 = icmp eq ptr %12, %13
  br i1 %cmp11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.tmp, ptr align 8 @FLA_MINUS_ONE, i64 56, i1 false)
  br label %cond.end

cond.false:                                       ; preds = %while.body
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.tmp, ptr align 8 @FLA_ONE, i64 56, i1 false)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %14 = load ptr, ptr %cntl.addr, align 8
  %sub_gemm2 = getelementptr inbounds %struct.fla_sylv_s, ptr %14, i32 0, i32 7
  %15 = load ptr, ptr %sub_gemm2, align 8
  %call12 = call i32 @FLA_Gemm_internal(i32 noundef 400, i32 noundef 400, ptr noundef byval(%struct.FLA_Obj_view) align 8 %agg.tmp, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C20, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B01, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_ONE, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C21, ptr noundef %15)
  %16 = load ptr, ptr %cntl.addr, align 8
  %sub_sylv2 = getelementptr inbounds %struct.fla_sylv_s, ptr %16, i32 0, i32 4
  %17 = load ptr, ptr %sub_sylv2, align 8
  %call13 = call i32 @FLA_Sylv_internal(i32 noundef 400, i32 noundef 400, ptr noundef byval(%struct.FLA_Obj_view) align 8 %isgn, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A22, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B11, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C21, ptr noundef byval(%struct.FLA_Obj_view) align 8 %scale, ptr noundef %17)
  %base15 = getelementptr inbounds %struct.FLA_Obj_view, ptr %isgn, i32 0, i32 6
  %18 = load ptr, ptr %base15, align 8
  %19 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8
  %cmp16 = icmp eq ptr %18, %19
  br i1 %cmp16, label %cond.true17, label %cond.false18

cond.true17:                                      ; preds = %cond.end
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.tmp14, ptr align 8 @FLA_MINUS_ONE, i64 56, i1 false)
  br label %cond.end19

cond.false18:                                     ; preds = %cond.end
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.tmp14, ptr align 8 @FLA_ONE, i64 56, i1 false)
  br label %cond.end19

cond.end19:                                       ; preds = %cond.false18, %cond.true17
  %20 = load ptr, ptr %cntl.addr, align 8
  %sub_gemm3 = getelementptr inbounds %struct.fla_sylv_s, ptr %20, i32 0, i32 8
  %21 = load ptr, ptr %sub_gemm3, align 8
  %call20 = call i32 @FLA_Gemm_internal(i32 noundef 400, i32 noundef 400, ptr noundef byval(%struct.FLA_Obj_view) align 8 %agg.tmp14, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C10, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B01, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_ONE, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C11, ptr noundef %21)
  %22 = load ptr, ptr %cntl.addr, align 8
  %sub_gemm4 = getelementptr inbounds %struct.fla_sylv_s, ptr %22, i32 0, i32 9
  %23 = load ptr, ptr %sub_gemm4, align 8
  %call21 = call i32 @FLA_Gemm_internal(i32 noundef 400, i32 noundef 400, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_MINUS_ONE, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A12, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C21, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_ONE, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C11, ptr noundef %23)
  %24 = load ptr, ptr %cntl.addr, align 8
  %sub_sylv3 = getelementptr inbounds %struct.fla_sylv_s, ptr %24, i32 0, i32 5
  %25 = load ptr, ptr %sub_sylv3, align 8
  %call22 = call i32 @FLA_Sylv_internal(i32 noundef 400, i32 noundef 400, ptr noundef byval(%struct.FLA_Obj_view) align 8 %isgn, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A11, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B11, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C11, ptr noundef byval(%struct.FLA_Obj_view) align 8 %scale, ptr noundef %25)
  %26 = load ptr, ptr %cntl.addr, align 8
  %sub_gemm5 = getelementptr inbounds %struct.fla_sylv_s, ptr %26, i32 0, i32 10
  %27 = load ptr, ptr %sub_gemm5, align 8
  %call23 = call i32 @FLA_Gemm_internal(i32 noundef 400, i32 noundef 400, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_MINUS_ONE, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A02, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C21, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_ONE, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C01, ptr noundef %27)
  %28 = load ptr, ptr %cntl.addr, align 8
  %sub_gemm6 = getelementptr inbounds %struct.fla_sylv_s, ptr %28, i32 0, i32 11
  %29 = load ptr, ptr %sub_gemm6, align 8
  %call24 = call i32 @FLA_Gemm_internal(i32 noundef 400, i32 noundef 400, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_MINUS_ONE, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A01, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C11, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_ONE, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C01, ptr noundef %29)
  %call25 = call i32 @FLA_Cont_with_3x3_to_2x2(ptr noundef %ATL, ptr noundef %ATR, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A00, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A01, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A02, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A10, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A11, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A12, ptr noundef %ABL, ptr noundef %ABR, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A20, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A21, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A22, i32 noundef 22)
  %call26 = call i32 @FLA_Cont_with_3x3_to_2x2(ptr noundef %BTL, ptr noundef %BTR, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B00, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B01, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B02, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B10, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B11, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B12, ptr noundef %BBL, ptr noundef %BBR, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B20, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B21, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B22, i32 noundef 11)
  %call27 = call i32 @FLA_Cont_with_3x3_to_2x2(ptr noundef %CTL, ptr noundef %CTR, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C00, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C01, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C02, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C10, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C11, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C12, ptr noundef %CBL, ptr noundef %CBR, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C20, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C21, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C22, i32 noundef 21)
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  ret i32 -1
}

declare i32 @FLA_Part_2x2(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef) #1

declare i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i64 @FLA_Determine_blocksize(ptr noundef byval(%struct.FLA_Obj_view) align 8, i32 noundef, ptr noundef) #1

declare i32 @FLA_Repart_2x2_to_3x3(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef) #1

declare i32 @FLA_Sylv_internal(i32 noundef, i32 noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef) #1

declare i32 @FLA_Gemm_internal(i32 noundef, i32 noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

declare i32 @FLA_Cont_with_3x3_to_2x2(ptr noundef, ptr noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef, ptr noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, i32 noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}

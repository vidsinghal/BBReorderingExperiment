; ModuleID = 'samples/449.bc'
source_filename = "../Source/SLIP_matrix_nnz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SLIP_matrix = type { i64, i64, i64, i64, i32, i32, ptr, i8, ptr, i8, ptr, i8, %union.anon, i8, [1 x %struct.__mpq_struct] }
%union.anon = type { ptr }
%struct.__mpq_struct = type { %struct.__mpz_struct, %struct.__mpz_struct }
%struct.__mpz_struct = type { i32, i32, ptr }

; Function Attrs: uwtable
define i64 @SLIP_matrix_nnz(ptr noundef %A, ptr noundef %option) #0 {
entry:
  %retval = alloca i64, align 8
  %A.addr = alloca ptr, align 8
  %option.addr = alloca ptr, align 8
  store ptr %A, ptr %A.addr, align 8, !tbaa !4
  store ptr %option, ptr %option.addr, align 8, !tbaa !4
  %call = call zeroext i1 @slip_initialized()
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i64 -1, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  store i64 -1, ptr %retval, align 8
  br label %return

if.end2:                                          ; preds = %if.end
  %1 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %kind = getelementptr inbounds %struct.SLIP_matrix, ptr %1, i32 0, i32 4
  %2 = load i32, ptr %kind, align 8, !tbaa !8
  switch i32 %2, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb7
    i32 2, label %sw.bb8
  ]

sw.bb:                                            ; preds = %if.end2
  %3 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %p = getelementptr inbounds %struct.SLIP_matrix, ptr %3, i32 0, i32 6
  %4 = load ptr, ptr %p, align 8, !tbaa !12
  %cmp3 = icmp eq ptr %4, null
  br i1 %cmp3, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb
  %5 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %n = getelementptr inbounds %struct.SLIP_matrix, ptr %5, i32 0, i32 1
  %6 = load i64, ptr %n, align 8, !tbaa !13
  %cmp4 = icmp slt i64 %6, 0
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %sw.bb
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %7 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %p5 = getelementptr inbounds %struct.SLIP_matrix, ptr %7, i32 0, i32 6
  %8 = load ptr, ptr %p5, align 8, !tbaa !12
  %9 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %n6 = getelementptr inbounds %struct.SLIP_matrix, ptr %9, i32 0, i32 1
  %10 = load i64, ptr %n6, align 8, !tbaa !13
  %arrayidx = getelementptr inbounds i64, ptr %8, i64 %10
  %11 = load i64, ptr %arrayidx, align 8, !tbaa !14
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ -1, %cond.true ], [ %11, %cond.false ]
  store i64 %cond, ptr %retval, align 8
  br label %return

sw.bb7:                                           ; preds = %if.end2
  %12 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %nz = getelementptr inbounds %struct.SLIP_matrix, ptr %12, i32 0, i32 3
  %13 = load i64, ptr %nz, align 8, !tbaa !15
  store i64 %13, ptr %retval, align 8
  br label %return

sw.bb8:                                           ; preds = %if.end2
  %14 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %m = getelementptr inbounds %struct.SLIP_matrix, ptr %14, i32 0, i32 0
  %15 = load i64, ptr %m, align 8, !tbaa !16
  %cmp9 = icmp slt i64 %15, 0
  br i1 %cmp9, label %cond.true13, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %sw.bb8
  %16 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %n11 = getelementptr inbounds %struct.SLIP_matrix, ptr %16, i32 0, i32 1
  %17 = load i64, ptr %n11, align 8, !tbaa !13
  %cmp12 = icmp slt i64 %17, 0
  br i1 %cmp12, label %cond.true13, label %cond.false14

cond.true13:                                      ; preds = %lor.lhs.false10, %sw.bb8
  br label %cond.end17

cond.false14:                                     ; preds = %lor.lhs.false10
  %18 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %m15 = getelementptr inbounds %struct.SLIP_matrix, ptr %18, i32 0, i32 0
  %19 = load i64, ptr %m15, align 8, !tbaa !16
  %20 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %n16 = getelementptr inbounds %struct.SLIP_matrix, ptr %20, i32 0, i32 1
  %21 = load i64, ptr %n16, align 8, !tbaa !13
  %mul = mul nsw i64 %19, %21
  br label %cond.end17

cond.end17:                                       ; preds = %cond.false14, %cond.true13
  %cond18 = phi i64 [ -1, %cond.true13 ], [ %mul, %cond.false14 ]
  store i64 %cond18, ptr %retval, align 8
  br label %return

sw.default:                                       ; preds = %if.end2
  store i64 -1, ptr %retval, align 8
  br label %return

return:                                           ; preds = %sw.default, %cond.end17, %sw.bb7, %cond.end, %if.then1, %if.then
  %22 = load i64, ptr %retval, align 8
  ret i64 %22
}

declare zeroext i1 @slip_initialized() #1

attributes #0 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!8 = !{!9, !6, i64 32}
!9 = !{!"", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !6, i64 32, !6, i64 36, !5, i64 40, !11, i64 48, !5, i64 56, !11, i64 64, !5, i64 72, !11, i64 80, !6, i64 88, !11, i64 96, !6, i64 104}
!10 = !{!"long", !6, i64 0}
!11 = !{!"_Bool", !6, i64 0}
!12 = !{!9, !5, i64 40}
!13 = !{!9, !10, i64 8}
!14 = !{!10, !10, i64 0}
!15 = !{!9, !10, i64 24}
!16 = !{!9, !10, i64 0}

; ModuleID = 'samples/475.bc'
source_filename = "frame/3/gemm/bli_gemm_md.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddm_s = type { i32, i32 }
%struct.func_s = type { [4 x ptr] }
%struct.obj_s = type { ptr, [2 x i64], [2 x i64], i64, i32, i32, i64, ptr, i64, i64, i64, %struct.dcomplex, i64, i64, i64, i64, i64, i64 }
%struct.dcomplex = type { double, double }
%struct.blksz_s = type { [4 x i64], [4 x i64] }
%struct.cntx_s = type { [11 x %struct.blksz_s], [11 x i32], [11 x %struct.blksz_s], [6 x %struct.func_s], [6 x %struct.func_s], [6 x %struct.mbool_s], [12 x ptr], [3 x %struct.blksz_s], [12 x ptr], [11 x %struct.blksz_s], [9 x %struct.func_s], [9 x %struct.mbool_s], [5 x %struct.func_s], [15 x %struct.func_s], [33 x %struct.func_s], [32 x %struct.func_s], i32, i32, i32, i32 }
%struct.mbool_s = type { [4 x i8] }

; Function Attrs: nounwind uwtable
define hidden void @bli_gemm_md(ptr noundef %a, ptr noundef %b, ptr noundef %beta, ptr noundef %c, ptr noundef %cntx_local, ptr noundef %cntx) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %beta.addr = alloca ptr, align 8
  %c.addr = alloca ptr, align 8
  %cntx_local.addr = alloca ptr, align 8
  %cntx.addr = alloca ptr, align 8
  %doms = alloca %struct.mddm_s, align 4
  %a_is_real = alloca i8, align 1
  %a_is_comp = alloca i8, align 1
  %b_is_real = alloca i8, align 1
  %b_is_comp = alloca i8, align 1
  %c_is_real = alloca i8, align 1
  %c_is_comp = alloca i8, align 1
  %tmp = alloca %struct.mddm_s, align 4
  %tmp21 = alloca %struct.mddm_s, align 4
  %tmp30 = alloca %struct.mddm_s, align 4
  %tmp39 = alloca %struct.mddm_s, align 4
  %tmp48 = alloca %struct.mddm_s, align 4
  %tmp57 = alloca %struct.mddm_s, align 4
  %tmp66 = alloca %struct.mddm_s, align 4
  %tmp75 = alloca %struct.mddm_s, align 4
  %dom_comp = alloca i32, align 4
  %dom_exec = alloca i32, align 4
  %prec_comp = alloca i32, align 4
  %dt_exec = alloca i32, align 4
  %dt_comp = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store ptr %b, ptr %b.addr, align 8, !tbaa !4
  store ptr %beta, ptr %beta.addr, align 8, !tbaa !4
  store ptr %c, ptr %c.addr, align 8, !tbaa !4
  store ptr %cntx_local, ptr %cntx_local.addr, align 8, !tbaa !4
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %doms) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr %a_is_real) #4
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %call = call zeroext i1 @bli_obj_is_real(ptr noundef %0)
  %frombool = zext i1 %call to i8
  store i8 %frombool, ptr %a_is_real, align 1, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 1, ptr %a_is_comp) #4
  %1 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %call1 = call zeroext i1 @bli_obj_is_complex(ptr noundef %1)
  %frombool2 = zext i1 %call1 to i8
  store i8 %frombool2, ptr %a_is_comp, align 1, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 1, ptr %b_is_real) #4
  %2 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %call3 = call zeroext i1 @bli_obj_is_real(ptr noundef %2)
  %frombool4 = zext i1 %call3 to i8
  store i8 %frombool4, ptr %b_is_real, align 1, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 1, ptr %b_is_comp) #4
  %3 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %call5 = call zeroext i1 @bli_obj_is_complex(ptr noundef %3)
  %frombool6 = zext i1 %call5 to i8
  store i8 %frombool6, ptr %b_is_comp, align 1, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 1, ptr %c_is_real) #4
  %4 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %call7 = call zeroext i1 @bli_obj_is_real(ptr noundef %4)
  %frombool8 = zext i1 %call7 to i8
  store i8 %frombool8, ptr %c_is_real, align 1, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 1, ptr %c_is_comp) #4
  %5 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %call9 = call zeroext i1 @bli_obj_is_complex(ptr noundef %5)
  %frombool10 = zext i1 %call9 to i8
  store i8 %frombool10, ptr %c_is_comp, align 1, !tbaa !8
  %6 = load i8, ptr %c_is_real, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool = trunc i8 %6 to i1
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %7 = load i8, ptr %a_is_real, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool11 = trunc i8 %7 to i1
  br i1 %tobool11, label %land.lhs.true12, label %if.else

land.lhs.true12:                                  ; preds = %land.lhs.true
  %8 = load i8, ptr %b_is_real, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool13 = trunc i8 %8 to i1
  br i1 %tobool13, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true12
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #4
  %9 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %10 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %11 = load ptr, ptr %beta.addr, align 8, !tbaa !4
  %12 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %13 = load ptr, ptr %cntx_local.addr, align 8, !tbaa !4
  %14 = load ptr, ptr %cntx.addr, align 8, !tbaa !4
  %call14 = call i64 @bli_gemm_md_rrr(ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef %14)
  store i64 %call14, ptr %tmp, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %doms, ptr align 4 %tmp, i64 8, i1 false), !tbaa.struct !12
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #4
  br label %if.end84

if.else:                                          ; preds = %land.lhs.true12, %land.lhs.true, %entry
  %15 = load i8, ptr %c_is_comp, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool15 = trunc i8 %15 to i1
  br i1 %tobool15, label %land.lhs.true16, label %if.else23

land.lhs.true16:                                  ; preds = %if.else
  %16 = load i8, ptr %a_is_comp, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool17 = trunc i8 %16 to i1
  br i1 %tobool17, label %land.lhs.true18, label %if.else23

land.lhs.true18:                                  ; preds = %land.lhs.true16
  %17 = load i8, ptr %b_is_comp, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool19 = trunc i8 %17 to i1
  br i1 %tobool19, label %if.then20, label %if.else23

if.then20:                                        ; preds = %land.lhs.true18
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp21) #4
  %18 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %19 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %20 = load ptr, ptr %beta.addr, align 8, !tbaa !4
  %21 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %22 = load ptr, ptr %cntx_local.addr, align 8, !tbaa !4
  %23 = load ptr, ptr %cntx.addr, align 8, !tbaa !4
  %call22 = call i64 @bli_gemm_md_ccc(ptr noundef %18, ptr noundef %19, ptr noundef %20, ptr noundef %21, ptr noundef %22, ptr noundef %23)
  store i64 %call22, ptr %tmp21, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %doms, ptr align 4 %tmp21, i64 8, i1 false), !tbaa.struct !12
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp21) #4
  br label %if.end83

if.else23:                                        ; preds = %land.lhs.true18, %land.lhs.true16, %if.else
  %24 = load i8, ptr %c_is_comp, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool24 = trunc i8 %24 to i1
  br i1 %tobool24, label %land.lhs.true25, label %if.else32

land.lhs.true25:                                  ; preds = %if.else23
  %25 = load i8, ptr %a_is_comp, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool26 = trunc i8 %25 to i1
  br i1 %tobool26, label %land.lhs.true27, label %if.else32

land.lhs.true27:                                  ; preds = %land.lhs.true25
  %26 = load i8, ptr %b_is_real, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool28 = trunc i8 %26 to i1
  br i1 %tobool28, label %if.then29, label %if.else32

if.then29:                                        ; preds = %land.lhs.true27
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp30) #4
  %27 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %28 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %29 = load ptr, ptr %beta.addr, align 8, !tbaa !4
  %30 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %31 = load ptr, ptr %cntx_local.addr, align 8, !tbaa !4
  %32 = load ptr, ptr %cntx.addr, align 8, !tbaa !4
  %call31 = call i64 @bli_gemm_md_ccr(ptr noundef %27, ptr noundef %28, ptr noundef %29, ptr noundef %30, ptr noundef %31, ptr noundef %32)
  store i64 %call31, ptr %tmp30, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %doms, ptr align 4 %tmp30, i64 8, i1 false), !tbaa.struct !12
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp30) #4
  br label %if.end82

if.else32:                                        ; preds = %land.lhs.true27, %land.lhs.true25, %if.else23
  %33 = load i8, ptr %c_is_comp, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool33 = trunc i8 %33 to i1
  br i1 %tobool33, label %land.lhs.true34, label %if.else41

land.lhs.true34:                                  ; preds = %if.else32
  %34 = load i8, ptr %a_is_real, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool35 = trunc i8 %34 to i1
  br i1 %tobool35, label %land.lhs.true36, label %if.else41

land.lhs.true36:                                  ; preds = %land.lhs.true34
  %35 = load i8, ptr %b_is_comp, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool37 = trunc i8 %35 to i1
  br i1 %tobool37, label %if.then38, label %if.else41

if.then38:                                        ; preds = %land.lhs.true36
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp39) #4
  %36 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %37 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %38 = load ptr, ptr %beta.addr, align 8, !tbaa !4
  %39 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %40 = load ptr, ptr %cntx_local.addr, align 8, !tbaa !4
  %41 = load ptr, ptr %cntx.addr, align 8, !tbaa !4
  %call40 = call i64 @bli_gemm_md_crc(ptr noundef %36, ptr noundef %37, ptr noundef %38, ptr noundef %39, ptr noundef %40, ptr noundef %41)
  store i64 %call40, ptr %tmp39, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %doms, ptr align 4 %tmp39, i64 8, i1 false), !tbaa.struct !12
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp39) #4
  br label %if.end81

if.else41:                                        ; preds = %land.lhs.true36, %land.lhs.true34, %if.else32
  %42 = load i8, ptr %c_is_real, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool42 = trunc i8 %42 to i1
  br i1 %tobool42, label %land.lhs.true43, label %if.else50

land.lhs.true43:                                  ; preds = %if.else41
  %43 = load i8, ptr %a_is_comp, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool44 = trunc i8 %43 to i1
  br i1 %tobool44, label %land.lhs.true45, label %if.else50

land.lhs.true45:                                  ; preds = %land.lhs.true43
  %44 = load i8, ptr %b_is_comp, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool46 = trunc i8 %44 to i1
  br i1 %tobool46, label %if.then47, label %if.else50

if.then47:                                        ; preds = %land.lhs.true45
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp48) #4
  %45 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %46 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %47 = load ptr, ptr %beta.addr, align 8, !tbaa !4
  %48 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %49 = load ptr, ptr %cntx_local.addr, align 8, !tbaa !4
  %50 = load ptr, ptr %cntx.addr, align 8, !tbaa !4
  %call49 = call i64 @bli_gemm_md_rcc(ptr noundef %45, ptr noundef %46, ptr noundef %47, ptr noundef %48, ptr noundef %49, ptr noundef %50)
  store i64 %call49, ptr %tmp48, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %doms, ptr align 4 %tmp48, i64 8, i1 false), !tbaa.struct !12
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp48) #4
  br label %if.end80

if.else50:                                        ; preds = %land.lhs.true45, %land.lhs.true43, %if.else41
  %51 = load i8, ptr %c_is_comp, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool51 = trunc i8 %51 to i1
  br i1 %tobool51, label %land.lhs.true52, label %if.else59

land.lhs.true52:                                  ; preds = %if.else50
  %52 = load i8, ptr %a_is_real, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool53 = trunc i8 %52 to i1
  br i1 %tobool53, label %land.lhs.true54, label %if.else59

land.lhs.true54:                                  ; preds = %land.lhs.true52
  %53 = load i8, ptr %b_is_real, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool55 = trunc i8 %53 to i1
  br i1 %tobool55, label %if.then56, label %if.else59

if.then56:                                        ; preds = %land.lhs.true54
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp57) #4
  %54 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %55 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %56 = load ptr, ptr %beta.addr, align 8, !tbaa !4
  %57 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %58 = load ptr, ptr %cntx_local.addr, align 8, !tbaa !4
  %59 = load ptr, ptr %cntx.addr, align 8, !tbaa !4
  %call58 = call i64 @bli_gemm_md_crr(ptr noundef %54, ptr noundef %55, ptr noundef %56, ptr noundef %57, ptr noundef %58, ptr noundef %59)
  store i64 %call58, ptr %tmp57, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %doms, ptr align 4 %tmp57, i64 8, i1 false), !tbaa.struct !12
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp57) #4
  br label %if.end79

if.else59:                                        ; preds = %land.lhs.true54, %land.lhs.true52, %if.else50
  %60 = load i8, ptr %c_is_real, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool60 = trunc i8 %60 to i1
  br i1 %tobool60, label %land.lhs.true61, label %if.else68

land.lhs.true61:                                  ; preds = %if.else59
  %61 = load i8, ptr %a_is_comp, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool62 = trunc i8 %61 to i1
  br i1 %tobool62, label %land.lhs.true63, label %if.else68

land.lhs.true63:                                  ; preds = %land.lhs.true61
  %62 = load i8, ptr %b_is_real, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool64 = trunc i8 %62 to i1
  br i1 %tobool64, label %if.then65, label %if.else68

if.then65:                                        ; preds = %land.lhs.true63
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp66) #4
  %63 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %64 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %65 = load ptr, ptr %beta.addr, align 8, !tbaa !4
  %66 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %67 = load ptr, ptr %cntx_local.addr, align 8, !tbaa !4
  %68 = load ptr, ptr %cntx.addr, align 8, !tbaa !4
  %call67 = call i64 @bli_gemm_md_rcr(ptr noundef %63, ptr noundef %64, ptr noundef %65, ptr noundef %66, ptr noundef %67, ptr noundef %68)
  store i64 %call67, ptr %tmp66, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %doms, ptr align 4 %tmp66, i64 8, i1 false), !tbaa.struct !12
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp66) #4
  br label %if.end78

if.else68:                                        ; preds = %land.lhs.true63, %land.lhs.true61, %if.else59
  %69 = load i8, ptr %c_is_real, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool69 = trunc i8 %69 to i1
  br i1 %tobool69, label %land.lhs.true70, label %if.else77

land.lhs.true70:                                  ; preds = %if.else68
  %70 = load i8, ptr %a_is_real, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool71 = trunc i8 %70 to i1
  br i1 %tobool71, label %land.lhs.true72, label %if.else77

land.lhs.true72:                                  ; preds = %land.lhs.true70
  %71 = load i8, ptr %b_is_comp, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool73 = trunc i8 %71 to i1
  br i1 %tobool73, label %if.then74, label %if.else77

if.then74:                                        ; preds = %land.lhs.true72
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp75) #4
  %72 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %73 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %74 = load ptr, ptr %beta.addr, align 8, !tbaa !4
  %75 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %76 = load ptr, ptr %cntx_local.addr, align 8, !tbaa !4
  %77 = load ptr, ptr %cntx.addr, align 8, !tbaa !4
  %call76 = call i64 @bli_gemm_md_rrc(ptr noundef %72, ptr noundef %73, ptr noundef %74, ptr noundef %75, ptr noundef %76, ptr noundef %77)
  store i64 %call76, ptr %tmp75, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %doms, ptr align 4 %tmp75, i64 8, i1 false), !tbaa.struct !12
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp75) #4
  br label %if.end

if.else77:                                        ; preds = %land.lhs.true72, %land.lhs.true70, %if.else68
  %comp = getelementptr inbounds %struct.mddm_s, ptr %doms, i32 0, i32 0
  store i32 0, ptr %comp, align 4, !tbaa !14
  %exec = getelementptr inbounds %struct.mddm_s, ptr %doms, i32 0, i32 1
  store i32 0, ptr %exec, align 4, !tbaa !16
  call void @bli_abort()
  br label %if.end

if.end:                                           ; preds = %if.else77, %if.then74
  br label %if.end78

if.end78:                                         ; preds = %if.end, %if.then65
  br label %if.end79

if.end79:                                         ; preds = %if.end78, %if.then56
  br label %if.end80

if.end80:                                         ; preds = %if.end79, %if.then47
  br label %if.end81

if.end81:                                         ; preds = %if.end80, %if.then38
  br label %if.end82

if.end82:                                         ; preds = %if.end81, %if.then29
  br label %if.end83

if.end83:                                         ; preds = %if.end82, %if.then20
  br label %if.end84

if.end84:                                         ; preds = %if.end83, %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %dom_comp) #4
  %comp85 = getelementptr inbounds %struct.mddm_s, ptr %doms, i32 0, i32 0
  %78 = load i32, ptr %comp85, align 4, !tbaa !14
  store i32 %78, ptr %dom_comp, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 4, ptr %dom_exec) #4
  %exec86 = getelementptr inbounds %struct.mddm_s, ptr %doms, i32 0, i32 1
  %79 = load i32, ptr %exec86, align 4, !tbaa !16
  store i32 %79, ptr %dom_exec, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 4, ptr %prec_comp) #4
  %80 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %call87 = call i32 @bli_obj_comp_prec(ptr noundef %80)
  store i32 %call87, ptr %prec_comp, align 4, !tbaa !13
  %81 = load i32, ptr %prec_comp, align 4, !tbaa !13
  %82 = load ptr, ptr %a.addr, align 8, !tbaa !4
  call void @bli_obj_set_target_prec(i32 noundef %81, ptr noundef %82)
  %83 = load i32, ptr %prec_comp, align 4, !tbaa !13
  %84 = load ptr, ptr %b.addr, align 8, !tbaa !4
  call void @bli_obj_set_target_prec(i32 noundef %83, ptr noundef %84)
  call void @llvm.lifetime.start.p0(i64 4, ptr %dt_exec) #4
  %85 = load i32, ptr %dom_exec, align 4, !tbaa !13
  %86 = load i32, ptr %prec_comp, align 4, !tbaa !13
  %or = or i32 %85, %86
  store i32 %or, ptr %dt_exec, align 4, !tbaa !13
  %87 = load i32, ptr %dt_exec, align 4, !tbaa !13
  %88 = load ptr, ptr %a.addr, align 8, !tbaa !4
  call void @bli_obj_set_exec_dt(i32 noundef %87, ptr noundef %88)
  %89 = load i32, ptr %dt_exec, align 4, !tbaa !13
  %90 = load ptr, ptr %b.addr, align 8, !tbaa !4
  call void @bli_obj_set_exec_dt(i32 noundef %89, ptr noundef %90)
  %91 = load i32, ptr %dt_exec, align 4, !tbaa !13
  %92 = load ptr, ptr %c.addr, align 8, !tbaa !4
  call void @bli_obj_set_exec_dt(i32 noundef %91, ptr noundef %92)
  call void @llvm.lifetime.start.p0(i64 4, ptr %dt_comp) #4
  %93 = load i32, ptr %dom_comp, align 4, !tbaa !13
  %94 = load i32, ptr %prec_comp, align 4, !tbaa !13
  %or88 = or i32 %93, %94
  store i32 %or88, ptr %dt_comp, align 4, !tbaa !13
  %95 = load i32, ptr %dt_comp, align 4, !tbaa !13
  %96 = load ptr, ptr %a.addr, align 8, !tbaa !4
  call void @bli_obj_set_comp_dt(i32 noundef %95, ptr noundef %96)
  %97 = load i32, ptr %dt_comp, align 4, !tbaa !13
  %98 = load ptr, ptr %b.addr, align 8, !tbaa !4
  call void @bli_obj_set_comp_dt(i32 noundef %97, ptr noundef %98)
  %99 = load i32, ptr %dt_comp, align 4, !tbaa !13
  %100 = load ptr, ptr %c.addr, align 8, !tbaa !4
  call void @bli_obj_set_comp_dt(i32 noundef %99, ptr noundef %100)
  call void @llvm.lifetime.end.p0(i64 4, ptr %dt_comp) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %dt_exec) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %prec_comp) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %dom_exec) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %dom_comp) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr %c_is_comp) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr %c_is_real) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr %b_is_comp) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr %b_is_real) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr %a_is_comp) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr %a_is_real) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %doms) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal zeroext i1 @bli_obj_is_real(ptr noundef %obj) #0 {
entry:
  %obj.addr = alloca ptr, align 8
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %call = call i32 @bli_obj_domain(ptr noundef %0)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %call1 = call zeroext i1 @bli_obj_is_const(ptr noundef %1)
  %lnot = xor i1 %call1, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %lnot, %land.rhs ]
  ret i1 %2
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @bli_obj_is_complex(ptr noundef %obj) #0 {
entry:
  %obj.addr = alloca ptr, align 8
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %call = call i32 @bli_obj_domain(ptr noundef %0)
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %call1 = call zeroext i1 @bli_obj_is_const(ptr noundef %1)
  %lnot = xor i1 %call1, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %lnot, %land.rhs ]
  ret i1 %2
}

; Function Attrs: nounwind uwtable
define hidden i64 @bli_gemm_md_rrr(ptr noundef %a, ptr noundef %b, ptr noundef %beta, ptr noundef %c, ptr noundef %cntx_local, ptr noundef %cntx) #0 {
entry:
  %retval = alloca %struct.mddm_s, align 4
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %beta.addr = alloca ptr, align 8
  %c.addr = alloca ptr, align 8
  %cntx_local.addr = alloca ptr, align 8
  %cntx.addr = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store ptr %b, ptr %b.addr, align 8, !tbaa !4
  store ptr %beta, ptr %beta.addr, align 8, !tbaa !4
  store ptr %c, ptr %c.addr, align 8, !tbaa !4
  store ptr %cntx_local, ptr %cntx_local.addr, align 8, !tbaa !4
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !4
  %comp = getelementptr inbounds %struct.mddm_s, ptr %retval, i32 0, i32 0
  store i32 0, ptr %comp, align 4, !tbaa !14
  %exec = getelementptr inbounds %struct.mddm_s, ptr %retval, i32 0, i32 1
  store i32 0, ptr %exec, align 4, !tbaa !16
  %0 = load i64, ptr %retval, align 4
  ret i64 %0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define hidden i64 @bli_gemm_md_ccc(ptr noundef %a, ptr noundef %b, ptr noundef %beta, ptr noundef %c, ptr noundef %cntx_local, ptr noundef %cntx) #0 {
entry:
  %retval = alloca %struct.mddm_s, align 4
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %beta.addr = alloca ptr, align 8
  %c.addr = alloca ptr, align 8
  %cntx_local.addr = alloca ptr, align 8
  %cntx.addr = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store ptr %b, ptr %b.addr, align 8, !tbaa !4
  store ptr %beta, ptr %beta.addr, align 8, !tbaa !4
  store ptr %c, ptr %c.addr, align 8, !tbaa !4
  store ptr %cntx_local, ptr %cntx_local.addr, align 8, !tbaa !4
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !4
  %comp = getelementptr inbounds %struct.mddm_s, ptr %retval, i32 0, i32 0
  store i32 1, ptr %comp, align 4, !tbaa !14
  %exec = getelementptr inbounds %struct.mddm_s, ptr %retval, i32 0, i32 1
  store i32 1, ptr %exec, align 4, !tbaa !16
  %0 = load i64, ptr %retval, align 4
  ret i64 %0
}

; Function Attrs: nounwind uwtable
define hidden i64 @bli_gemm_md_ccr(ptr noundef %a, ptr noundef %b, ptr noundef %beta, ptr noundef %c, ptr noundef %cntx_local, ptr noundef %cntx) #0 {
entry:
  %retval = alloca %struct.mddm_s, align 4
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %beta.addr = alloca ptr, align 8
  %c.addr = alloca ptr, align 8
  %cntx_local.addr = alloca ptr, align 8
  %cntx.addr = alloca ptr, align 8
  %doms = alloca %struct.mddm_s, align 4
  %dt = alloca i32, align 4
  %row_pref = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  %blksz_mr = alloca ptr, align 8
  %blksz_nr = alloca ptr, align 8
  %blksz_mc = alloca ptr, align 8
  %blksz_nc = alloca ptr, align 8
  %blksz_kc = alloca ptr, align 8
  %l3_vir_ukrs = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store ptr %b, ptr %b.addr, align 8, !tbaa !4
  store ptr %beta, ptr %beta.addr, align 8, !tbaa !4
  store ptr %c, ptr %c.addr, align 8, !tbaa !4
  store ptr %cntx_local, ptr %cntx_local.addr, align 8, !tbaa !4
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %doms) #4
  %comp = getelementptr inbounds %struct.mddm_s, ptr %doms, i32 0, i32 0
  store i32 0, ptr %comp, align 4, !tbaa !14
  %exec = getelementptr inbounds %struct.mddm_s, ptr %doms, i32 0, i32 1
  store i32 1, ptr %exec, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 4, ptr %dt) #4
  %0 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %call = call i32 @bli_obj_comp_prec(ptr noundef %0)
  %or = or i32 0, %call
  store i32 %or, ptr %dt, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 1, ptr %row_pref) #4
  %1 = load i32, ptr %dt, align 4, !tbaa !13
  %2 = load ptr, ptr %cntx.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %2, align 8, !tbaa !4
  %call1 = call zeroext i1 @bli_cntx_l3_nat_ukr_prefers_rows_dt(i32 noundef %1, i32 noundef 0, ptr noundef %3)
  %frombool = zext i1 %call1 to i8
  store i8 %frombool, ptr %row_pref, align 1, !tbaa !8
  %4 = load i8, ptr %row_pref, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool = trunc i8 %4 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %b.addr, align 8, !tbaa !4
  call void @bli_obj_swap(ptr noundef %5, ptr noundef %6)
  %7 = load ptr, ptr %a.addr, align 8, !tbaa !4
  call void @bli_obj_induce_trans(ptr noundef %7)
  %8 = load ptr, ptr %b.addr, align 8, !tbaa !4
  call void @bli_obj_induce_trans(ptr noundef %8)
  %9 = load ptr, ptr %c.addr, align 8, !tbaa !4
  call void @bli_obj_induce_trans(ptr noundef %9)
  %10 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %11 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %12 = load ptr, ptr %beta.addr, align 8, !tbaa !4
  %13 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %14 = load ptr, ptr %cntx_local.addr, align 8, !tbaa !4
  %15 = load ptr, ptr %cntx.addr, align 8, !tbaa !4
  %call2 = call i64 @bli_gemm_md_crc(ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef %15)
  store i64 %call2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %16 = load ptr, ptr %cntx_local.addr, align 8, !tbaa !4
  %17 = load ptr, ptr %cntx.addr, align 8, !tbaa !4
  %18 = load ptr, ptr %17, align 8, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %16, ptr align 8 %18, i64 6016, i1 false), !tbaa.struct !17
  %19 = load ptr, ptr %cntx_local.addr, align 8, !tbaa !4
  %20 = load ptr, ptr %cntx.addr, align 8, !tbaa !4
  store ptr %19, ptr %20, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %blksz_mr) #4
  %21 = load ptr, ptr %cntx.addr, align 8, !tbaa !4
  %22 = load ptr, ptr %21, align 8, !tbaa !4
  %call3 = call ptr @bli_cntx_get_blksz(i32 noundef 1, ptr noundef %22)
  store ptr %call3, ptr %blksz_mr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %blksz_nr) #4
  %23 = load ptr, ptr %cntx.addr, align 8, !tbaa !4
  %24 = load ptr, ptr %23, align 8, !tbaa !4
  %call4 = call ptr @bli_cntx_get_blksz(i32 noundef 2, ptr noundef %24)
  store ptr %call4, ptr %blksz_nr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %blksz_mc) #4
  %25 = load ptr, ptr %cntx.addr, align 8, !tbaa !4
  %26 = load ptr, ptr %25, align 8, !tbaa !4
  %call5 = call ptr @bli_cntx_get_blksz(i32 noundef 3, ptr noundef %26)
  store ptr %call5, ptr %blksz_mc, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %blksz_nc) #4
  %27 = load ptr, ptr %cntx.addr, align 8, !tbaa !4
  %28 = load ptr, ptr %27, align 8, !tbaa !4
  %call6 = call ptr @bli_cntx_get_blksz(i32 noundef 5, ptr noundef %28)
  store ptr %call6, ptr %blksz_nc, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %blksz_kc) #4
  %29 = load ptr, ptr %cntx.addr, align 8, !tbaa !4
  %30 = load ptr, ptr %29, align 8, !tbaa !4
  %call7 = call ptr @bli_cntx_get_blksz(i32 noundef 4, ptr noundef %30)
  store ptr %call7, ptr %blksz_kc, align 8, !tbaa !4
  %31 = load ptr, ptr %blksz_mr, align 8, !tbaa !4
  %32 = load ptr, ptr %blksz_mr, align 8, !tbaa !4
  call void @bli_blksz_copy_dt(i32 noundef 0, ptr noundef %31, i32 noundef 1, ptr noundef %32)
  %33 = load ptr, ptr %blksz_mr, align 8, !tbaa !4
  %34 = load ptr, ptr %blksz_mr, align 8, !tbaa !4
  call void @bli_blksz_copy_dt(i32 noundef 2, ptr noundef %33, i32 noundef 3, ptr noundef %34)
  %35 = load ptr, ptr %blksz_nr, align 8, !tbaa !4
  %36 = load ptr, ptr %blksz_nr, align 8, !tbaa !4
  call void @bli_blksz_copy_dt(i32 noundef 0, ptr noundef %35, i32 noundef 1, ptr noundef %36)
  %37 = load ptr, ptr %blksz_nr, align 8, !tbaa !4
  %38 = load ptr, ptr %blksz_nr, align 8, !tbaa !4
  call void @bli_blksz_copy_dt(i32 noundef 2, ptr noundef %37, i32 noundef 3, ptr noundef %38)
  %39 = load ptr, ptr %blksz_mc, align 8, !tbaa !4
  %40 = load ptr, ptr %blksz_mc, align 8, !tbaa !4
  call void @bli_blksz_copy_dt(i32 noundef 0, ptr noundef %39, i32 noundef 1, ptr noundef %40)
  %41 = load ptr, ptr %blksz_mc, align 8, !tbaa !4
  %42 = load ptr, ptr %blksz_mc, align 8, !tbaa !4
  call void @bli_blksz_copy_dt(i32 noundef 2, ptr noundef %41, i32 noundef 3, ptr noundef %42)
  %43 = load ptr, ptr %blksz_nc, align 8, !tbaa !4
  %44 = load ptr, ptr %blksz_nc, align 8, !tbaa !4
  call void @bli_blksz_copy_dt(i32 noundef 0, ptr noundef %43, i32 noundef 1, ptr noundef %44)
  %45 = load ptr, ptr %blksz_nc, align 8, !tbaa !4
  %46 = load ptr, ptr %blksz_nc, align 8, !tbaa !4
  call void @bli_blksz_copy_dt(i32 noundef 2, ptr noundef %45, i32 noundef 3, ptr noundef %46)
  %47 = load ptr, ptr %blksz_kc, align 8, !tbaa !4
  %48 = load ptr, ptr %blksz_kc, align 8, !tbaa !4
  call void @bli_blksz_copy_dt(i32 noundef 0, ptr noundef %47, i32 noundef 1, ptr noundef %48)
  %49 = load ptr, ptr %blksz_kc, align 8, !tbaa !4
  %50 = load ptr, ptr %blksz_kc, align 8, !tbaa !4
  call void @bli_blksz_copy_dt(i32 noundef 2, ptr noundef %49, i32 noundef 3, ptr noundef %50)
  %51 = load ptr, ptr %blksz_mr, align 8, !tbaa !4
  call void @bli_blksz_scale_def_max(i64 noundef 1, i64 noundef 2, i32 noundef 0, ptr noundef %51)
  %52 = load ptr, ptr %blksz_mr, align 8, !tbaa !4
  call void @bli_blksz_scale_def_max(i64 noundef 1, i64 noundef 2, i32 noundef 2, ptr noundef %52)
  %53 = load ptr, ptr %blksz_mr, align 8, !tbaa !4
  call void @bli_blksz_scale_def_max(i64 noundef 1, i64 noundef 2, i32 noundef 1, ptr noundef %53)
  %54 = load ptr, ptr %blksz_mr, align 8, !tbaa !4
  call void @bli_blksz_scale_def_max(i64 noundef 1, i64 noundef 2, i32 noundef 3, ptr noundef %54)
  %55 = load ptr, ptr %blksz_mc, align 8, !tbaa !4
  call void @bli_blksz_scale_def_max(i64 noundef 1, i64 noundef 2, i32 noundef 0, ptr noundef %55)
  %56 = load ptr, ptr %blksz_mc, align 8, !tbaa !4
  call void @bli_blksz_scale_def_max(i64 noundef 1, i64 noundef 2, i32 noundef 2, ptr noundef %56)
  %57 = load ptr, ptr %blksz_mc, align 8, !tbaa !4
  call void @bli_blksz_scale_def_max(i64 noundef 1, i64 noundef 2, i32 noundef 1, ptr noundef %57)
  %58 = load ptr, ptr %blksz_mc, align 8, !tbaa !4
  call void @bli_blksz_scale_def_max(i64 noundef 1, i64 noundef 2, i32 noundef 3, ptr noundef %58)
  call void @llvm.lifetime.start.p0(i64 8, ptr %l3_vir_ukrs) #4
  %59 = load ptr, ptr %cntx.addr, align 8, !tbaa !4
  %60 = load ptr, ptr %59, align 8, !tbaa !4
  %call8 = call ptr @bli_cntx_get_l3_vir_ukrs(i32 noundef 0, ptr noundef %60)
  store ptr %call8, ptr %l3_vir_ukrs, align 8, !tbaa !4
  %61 = load ptr, ptr %l3_vir_ukrs, align 8, !tbaa !4
  call void @bli_func_set_dt(ptr noundef @bli_cgemm_md_c2r_ref, i32 noundef 1, ptr noundef %61)
  %62 = load ptr, ptr %l3_vir_ukrs, align 8, !tbaa !4
  call void @bli_func_set_dt(ptr noundef @bli_zgemm_md_c2r_ref, i32 noundef 3, ptr noundef %62)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %retval, ptr align 4 %doms, i64 8, i1 false), !tbaa.struct !12
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %l3_vir_ukrs) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %blksz_kc) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %blksz_nc) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %blksz_mc) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %blksz_nr) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %blksz_mr) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %row_pref) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %dt) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %doms) #4
  %63 = load i64, ptr %retval, align 4
  ret i64 %63
}

; Function Attrs: nounwind uwtable
define hidden i64 @bli_gemm_md_crc(ptr noundef %a, ptr noundef %b, ptr noundef %beta, ptr noundef %c, ptr noundef %cntx_local, ptr noundef %cntx) #0 {
entry:
  %retval = alloca %struct.mddm_s, align 4
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %beta.addr = alloca ptr, align 8
  %c.addr = alloca ptr, align 8
  %cntx_local.addr = alloca ptr, align 8
  %cntx.addr = alloca ptr, align 8
  %doms = alloca %struct.mddm_s, align 4
  %dt = alloca i32, align 4
  %col_pref = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  %blksz_mr = alloca ptr, align 8
  %blksz_nr = alloca ptr, align 8
  %blksz_mc = alloca ptr, align 8
  %blksz_nc = alloca ptr, align 8
  %blksz_kc = alloca ptr, align 8
  %l3_vir_ukrs = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store ptr %b, ptr %b.addr, align 8, !tbaa !4
  store ptr %beta, ptr %beta.addr, align 8, !tbaa !4
  store ptr %c, ptr %c.addr, align 8, !tbaa !4
  store ptr %cntx_local, ptr %cntx_local.addr, align 8, !tbaa !4
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %doms) #4
  %comp = getelementptr inbounds %struct.mddm_s, ptr %doms, i32 0, i32 0
  store i32 0, ptr %comp, align 4, !tbaa !14
  %exec = getelementptr inbounds %struct.mddm_s, ptr %doms, i32 0, i32 1
  store i32 1, ptr %exec, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 4, ptr %dt) #4
  %0 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %call = call i32 @bli_obj_comp_prec(ptr noundef %0)
  %or = or i32 0, %call
  store i32 %or, ptr %dt, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 1, ptr %col_pref) #4
  %1 = load i32, ptr %dt, align 4, !tbaa !13
  %2 = load ptr, ptr %cntx.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %2, align 8, !tbaa !4
  %call1 = call zeroext i1 @bli_cntx_l3_nat_ukr_prefers_cols_dt(i32 noundef %1, i32 noundef 0, ptr noundef %3)
  %frombool = zext i1 %call1 to i8
  store i8 %frombool, ptr %col_pref, align 1, !tbaa !8
  %4 = load i8, ptr %col_pref, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool = trunc i8 %4 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %b.addr, align 8, !tbaa !4
  call void @bli_obj_swap(ptr noundef %5, ptr noundef %6)
  %7 = load ptr, ptr %a.addr, align 8, !tbaa !4
  call void @bli_obj_induce_trans(ptr noundef %7)
  %8 = load ptr, ptr %b.addr, align 8, !tbaa !4
  call void @bli_obj_induce_trans(ptr noundef %8)
  %9 = load ptr, ptr %c.addr, align 8, !tbaa !4
  call void @bli_obj_induce_trans(ptr noundef %9)
  %10 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %11 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %12 = load ptr, ptr %beta.addr, align 8, !tbaa !4
  %13 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %14 = load ptr, ptr %cntx_local.addr, align 8, !tbaa !4
  %15 = load ptr, ptr %cntx.addr, align 8, !tbaa !4
  %call2 = call i64 @bli_gemm_md_ccr(ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef %15)
  store i64 %call2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %16 = load ptr, ptr %cntx_local.addr, align 8, !tbaa !4
  %17 = load ptr, ptr %cntx.addr, align 8, !tbaa !4
  %18 = load ptr, ptr %17, align 8, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %16, ptr align 8 %18, i64 6016, i1 false), !tbaa.struct !17
  %19 = load ptr, ptr %cntx_local.addr, align 8, !tbaa !4
  %20 = load ptr, ptr %cntx.addr, align 8, !tbaa !4
  store ptr %19, ptr %20, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %blksz_mr) #4
  %21 = load ptr, ptr %cntx.addr, align 8, !tbaa !4
  %22 = load ptr, ptr %21, align 8, !tbaa !4
  %call3 = call ptr @bli_cntx_get_blksz(i32 noundef 1, ptr noundef %22)
  store ptr %call3, ptr %blksz_mr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %blksz_nr) #4
  %23 = load ptr, ptr %cntx.addr, align 8, !tbaa !4
  %24 = load ptr, ptr %23, align 8, !tbaa !4
  %call4 = call ptr @bli_cntx_get_blksz(i32 noundef 2, ptr noundef %24)
  store ptr %call4, ptr %blksz_nr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %blksz_mc) #4
  %25 = load ptr, ptr %cntx.addr, align 8, !tbaa !4
  %26 = load ptr, ptr %25, align 8, !tbaa !4
  %call5 = call ptr @bli_cntx_get_blksz(i32 noundef 3, ptr noundef %26)
  store ptr %call5, ptr %blksz_mc, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %blksz_nc) #4
  %27 = load ptr, ptr %cntx.addr, align 8, !tbaa !4
  %28 = load ptr, ptr %27, align 8, !tbaa !4
  %call6 = call ptr @bli_cntx_get_blksz(i32 noundef 5, ptr noundef %28)
  store ptr %call6, ptr %blksz_nc, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %blksz_kc) #4
  %29 = load ptr, ptr %cntx.addr, align 8, !tbaa !4
  %30 = load ptr, ptr %29, align 8, !tbaa !4
  %call7 = call ptr @bli_cntx_get_blksz(i32 noundef 4, ptr noundef %30)
  store ptr %call7, ptr %blksz_kc, align 8, !tbaa !4
  %31 = load ptr, ptr %blksz_mr, align 8, !tbaa !4
  %32 = load ptr, ptr %blksz_mr, align 8, !tbaa !4
  call void @bli_blksz_copy_dt(i32 noundef 0, ptr noundef %31, i32 noundef 1, ptr noundef %32)
  %33 = load ptr, ptr %blksz_mr, align 8, !tbaa !4
  %34 = load ptr, ptr %blksz_mr, align 8, !tbaa !4
  call void @bli_blksz_copy_dt(i32 noundef 2, ptr noundef %33, i32 noundef 3, ptr noundef %34)
  %35 = load ptr, ptr %blksz_nr, align 8, !tbaa !4
  %36 = load ptr, ptr %blksz_nr, align 8, !tbaa !4
  call void @bli_blksz_copy_dt(i32 noundef 0, ptr noundef %35, i32 noundef 1, ptr noundef %36)
  %37 = load ptr, ptr %blksz_nr, align 8, !tbaa !4
  %38 = load ptr, ptr %blksz_nr, align 8, !tbaa !4
  call void @bli_blksz_copy_dt(i32 noundef 2, ptr noundef %37, i32 noundef 3, ptr noundef %38)
  %39 = load ptr, ptr %blksz_mc, align 8, !tbaa !4
  %40 = load ptr, ptr %blksz_mc, align 8, !tbaa !4
  call void @bli_blksz_copy_dt(i32 noundef 0, ptr noundef %39, i32 noundef 1, ptr noundef %40)
  %41 = load ptr, ptr %blksz_mc, align 8, !tbaa !4
  %42 = load ptr, ptr %blksz_mc, align 8, !tbaa !4
  call void @bli_blksz_copy_dt(i32 noundef 2, ptr noundef %41, i32 noundef 3, ptr noundef %42)
  %43 = load ptr, ptr %blksz_nc, align 8, !tbaa !4
  %44 = load ptr, ptr %blksz_nc, align 8, !tbaa !4
  call void @bli_blksz_copy_dt(i32 noundef 0, ptr noundef %43, i32 noundef 1, ptr noundef %44)
  %45 = load ptr, ptr %blksz_nc, align 8, !tbaa !4
  %46 = load ptr, ptr %blksz_nc, align 8, !tbaa !4
  call void @bli_blksz_copy_dt(i32 noundef 2, ptr noundef %45, i32 noundef 3, ptr noundef %46)
  %47 = load ptr, ptr %blksz_kc, align 8, !tbaa !4
  %48 = load ptr, ptr %blksz_kc, align 8, !tbaa !4
  call void @bli_blksz_copy_dt(i32 noundef 0, ptr noundef %47, i32 noundef 1, ptr noundef %48)
  %49 = load ptr, ptr %blksz_kc, align 8, !tbaa !4
  %50 = load ptr, ptr %blksz_kc, align 8, !tbaa !4
  call void @bli_blksz_copy_dt(i32 noundef 2, ptr noundef %49, i32 noundef 3, ptr noundef %50)
  %51 = load ptr, ptr %blksz_nr, align 8, !tbaa !4
  call void @bli_blksz_scale_def_max(i64 noundef 1, i64 noundef 2, i32 noundef 0, ptr noundef %51)
  %52 = load ptr, ptr %blksz_nr, align 8, !tbaa !4
  call void @bli_blksz_scale_def_max(i64 noundef 1, i64 noundef 2, i32 noundef 2, ptr noundef %52)
  %53 = load ptr, ptr %blksz_nr, align 8, !tbaa !4
  call void @bli_blksz_scale_def_max(i64 noundef 1, i64 noundef 2, i32 noundef 1, ptr noundef %53)
  %54 = load ptr, ptr %blksz_nr, align 8, !tbaa !4
  call void @bli_blksz_scale_def_max(i64 noundef 1, i64 noundef 2, i32 noundef 3, ptr noundef %54)
  %55 = load ptr, ptr %blksz_nc, align 8, !tbaa !4
  call void @bli_blksz_scale_def_max(i64 noundef 1, i64 noundef 2, i32 noundef 0, ptr noundef %55)
  %56 = load ptr, ptr %blksz_nc, align 8, !tbaa !4
  call void @bli_blksz_scale_def_max(i64 noundef 1, i64 noundef 2, i32 noundef 2, ptr noundef %56)
  %57 = load ptr, ptr %blksz_nc, align 8, !tbaa !4
  call void @bli_blksz_scale_def_max(i64 noundef 1, i64 noundef 2, i32 noundef 1, ptr noundef %57)
  %58 = load ptr, ptr %blksz_nc, align 8, !tbaa !4
  call void @bli_blksz_scale_def_max(i64 noundef 1, i64 noundef 2, i32 noundef 3, ptr noundef %58)
  call void @llvm.lifetime.start.p0(i64 8, ptr %l3_vir_ukrs) #4
  %59 = load ptr, ptr %cntx.addr, align 8, !tbaa !4
  %60 = load ptr, ptr %59, align 8, !tbaa !4
  %call8 = call ptr @bli_cntx_get_l3_vir_ukrs(i32 noundef 0, ptr noundef %60)
  store ptr %call8, ptr %l3_vir_ukrs, align 8, !tbaa !4
  %61 = load ptr, ptr %l3_vir_ukrs, align 8, !tbaa !4
  call void @bli_func_set_dt(ptr noundef @bli_cgemm_md_c2r_ref, i32 noundef 1, ptr noundef %61)
  %62 = load ptr, ptr %l3_vir_ukrs, align 8, !tbaa !4
  call void @bli_func_set_dt(ptr noundef @bli_zgemm_md_c2r_ref, i32 noundef 3, ptr noundef %62)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %retval, ptr align 4 %doms, i64 8, i1 false), !tbaa.struct !12
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %l3_vir_ukrs) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %blksz_kc) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %blksz_nc) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %blksz_mc) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %blksz_nr) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %blksz_mr) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %col_pref) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %dt) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %doms) #4
  %63 = load i64, ptr %retval, align 4
  ret i64 %63
}

; Function Attrs: nounwind uwtable
define hidden i64 @bli_gemm_md_rcc(ptr noundef %a, ptr noundef %b, ptr noundef %beta, ptr noundef %c, ptr noundef %cntx_local, ptr noundef %cntx) #0 {
entry:
  %retval = alloca %struct.mddm_s, align 4
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %beta.addr = alloca ptr, align 8
  %c.addr = alloca ptr, align 8
  %cntx_local.addr = alloca ptr, align 8
  %cntx.addr = alloca ptr, align 8
  %blksz_mr = alloca ptr, align 8
  %blksz_nr = alloca ptr, align 8
  %blksz_mc = alloca ptr, align 8
  %blksz_nc = alloca ptr, align 8
  %blksz_kc = alloca ptr, align 8
  %dt_complex = alloca i32, align 4
  %cntx_1m = alloca ptr, align 8
  %cntx_funcs = alloca ptr, align 8
  %cntx_1m_funcs = alloca ptr, align 8
  %i = alloca i64, align 8
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store ptr %b, ptr %b.addr, align 8, !tbaa !4
  store ptr %beta, ptr %beta.addr, align 8, !tbaa !4
  store ptr %c, ptr %c.addr, align 8, !tbaa !4
  store ptr %cntx_local, ptr %cntx_local.addr, align 8, !tbaa !4
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !4
  %comp = getelementptr inbounds %struct.mddm_s, ptr %retval, i32 0, i32 0
  store i32 0, ptr %comp, align 4, !tbaa !14
  %exec = getelementptr inbounds %struct.mddm_s, ptr %retval, i32 0, i32 1
  store i32 0, ptr %exec, align 4, !tbaa !16
  %0 = load ptr, ptr %cntx_local.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %cntx.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %1, align 8, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr align 8 %2, i64 6016, i1 false), !tbaa.struct !17
  %3 = load ptr, ptr %cntx_local.addr, align 8, !tbaa !4
  %4 = load ptr, ptr %cntx.addr, align 8, !tbaa !4
  store ptr %3, ptr %4, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %blksz_mr) #4
  %5 = load ptr, ptr %cntx.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %5, align 8, !tbaa !4
  %call = call ptr @bli_cntx_get_blksz(i32 noundef 1, ptr noundef %6)
  store ptr %call, ptr %blksz_mr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %blksz_nr) #4
  %7 = load ptr, ptr %cntx.addr, align 8, !tbaa !4
  %8 = load ptr, ptr %7, align 8, !tbaa !4
  %call1 = call ptr @bli_cntx_get_blksz(i32 noundef 2, ptr noundef %8)
  store ptr %call1, ptr %blksz_nr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %blksz_mc) #4
  %9 = load ptr, ptr %cntx.addr, align 8, !tbaa !4
  %10 = load ptr, ptr %9, align 8, !tbaa !4
  %call2 = call ptr @bli_cntx_get_blksz(i32 noundef 3, ptr noundef %10)
  store ptr %call2, ptr %blksz_mc, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %blksz_nc) #4
  %11 = load ptr, ptr %cntx.addr, align 8, !tbaa !4
  %12 = load ptr, ptr %11, align 8, !tbaa !4
  %call3 = call ptr @bli_cntx_get_blksz(i32 noundef 5, ptr noundef %12)
  store ptr %call3, ptr %blksz_nc, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %blksz_kc) #4
  %13 = load ptr, ptr %cntx.addr, align 8, !tbaa !4
  %14 = load ptr, ptr %13, align 8, !tbaa !4
  %call4 = call ptr @bli_cntx_get_blksz(i32 noundef 4, ptr noundef %14)
  store ptr %call4, ptr %blksz_kc, align 8, !tbaa !4
  %15 = load ptr, ptr %blksz_mr, align 8, !tbaa !4
  %16 = load ptr, ptr %blksz_mr, align 8, !tbaa !4
  call void @bli_blksz_copy_dt(i32 noundef 0, ptr noundef %15, i32 noundef 1, ptr noundef %16)
  %17 = load ptr, ptr %blksz_mr, align 8, !tbaa !4
  %18 = load ptr, ptr %blksz_mr, align 8, !tbaa !4
  call void @bli_blksz_copy_dt(i32 noundef 2, ptr noundef %17, i32 noundef 3, ptr noundef %18)
  %19 = load ptr, ptr %blksz_nr, align 8, !tbaa !4
  %20 = load ptr, ptr %blksz_nr, align 8, !tbaa !4
  call void @bli_blksz_copy_dt(i32 noundef 0, ptr noundef %19, i32 noundef 1, ptr noundef %20)
  %21 = load ptr, ptr %blksz_nr, align 8, !tbaa !4
  %22 = load ptr, ptr %blksz_nr, align 8, !tbaa !4
  call void @bli_blksz_copy_dt(i32 noundef 2, ptr noundef %21, i32 noundef 3, ptr noundef %22)
  %23 = load ptr, ptr %blksz_mc, align 8, !tbaa !4
  %24 = load ptr, ptr %blksz_mc, align 8, !tbaa !4
  call void @bli_blksz_copy_dt(i32 noundef 0, ptr noundef %23, i32 noundef 1, ptr noundef %24)
  %25 = load ptr, ptr %blksz_mc, align 8, !tbaa !4
  %26 = load ptr, ptr %blksz_mc, align 8, !tbaa !4
  call void @bli_blksz_copy_dt(i32 noundef 2, ptr noundef %25, i32 noundef 3, ptr noundef %26)
  %27 = load ptr, ptr %blksz_nc, align 8, !tbaa !4
  %28 = load ptr, ptr %blksz_nc, align 8, !tbaa !4
  call void @bli_blksz_copy_dt(i32 noundef 0, ptr noundef %27, i32 noundef 1, ptr noundef %28)
  %29 = load ptr, ptr %blksz_nc, align 8, !tbaa !4
  %30 = load ptr, ptr %blksz_nc, align 8, !tbaa !4
  call void @bli_blksz_copy_dt(i32 noundef 2, ptr noundef %29, i32 noundef 3, ptr noundef %30)
  %31 = load ptr, ptr %blksz_kc, align 8, !tbaa !4
  %32 = load ptr, ptr %blksz_kc, align 8, !tbaa !4
  call void @bli_blksz_copy_dt(i32 noundef 0, ptr noundef %31, i32 noundef 1, ptr noundef %32)
  %33 = load ptr, ptr %blksz_kc, align 8, !tbaa !4
  %34 = load ptr, ptr %blksz_kc, align 8, !tbaa !4
  call void @bli_blksz_copy_dt(i32 noundef 2, ptr noundef %33, i32 noundef 3, ptr noundef %34)
  %35 = load ptr, ptr %blksz_kc, align 8, !tbaa !4
  call void @bli_blksz_scale_def_max(i64 noundef 1, i64 noundef 2, i32 noundef 0, ptr noundef %35)
  %36 = load ptr, ptr %blksz_kc, align 8, !tbaa !4
  call void @bli_blksz_scale_def_max(i64 noundef 1, i64 noundef 2, i32 noundef 2, ptr noundef %36)
  %37 = load ptr, ptr %blksz_kc, align 8, !tbaa !4
  call void @bli_blksz_scale_def_max(i64 noundef 1, i64 noundef 2, i32 noundef 1, ptr noundef %37)
  %38 = load ptr, ptr %blksz_kc, align 8, !tbaa !4
  call void @bli_blksz_scale_def_max(i64 noundef 1, i64 noundef 2, i32 noundef 3, ptr noundef %38)
  %39 = load ptr, ptr %cntx.addr, align 8, !tbaa !4
  %40 = load ptr, ptr %39, align 8, !tbaa !4
  call void @bli_cntx_set_schema_a_block(i32 noundef 6684672, ptr noundef %40)
  %41 = load ptr, ptr %cntx.addr, align 8, !tbaa !4
  %42 = load ptr, ptr %41, align 8, !tbaa !4
  call void @bli_cntx_set_schema_b_panel(i32 noundef 6750208, ptr noundef %42)
  %43 = load ptr, ptr %b.addr, align 8, !tbaa !4
  call void @bli_obj_toggle_conj(ptr noundef %43)
  call void @llvm.lifetime.start.p0(i64 4, ptr %dt_complex) #4
  %44 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %call5 = call i32 @bli_obj_dt(ptr noundef %44)
  store i32 %call5, ptr %dt_complex, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 8, ptr %cntx_1m) #4
  %45 = load i32, ptr %dt_complex, align 4, !tbaa !13
  %call6 = call ptr @bli_gks_query_ind_cntx(i32 noundef 5, i32 noundef %45)
  store ptr %call6, ptr %cntx_1m, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %cntx_funcs) #4
  %46 = load ptr, ptr %cntx.addr, align 8, !tbaa !4
  %47 = load ptr, ptr %46, align 8, !tbaa !4
  %call7 = call ptr @bli_cntx_packm_kers_buf(ptr noundef %47)
  store ptr %call7, ptr %cntx_funcs, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %cntx_1m_funcs) #4
  %48 = load ptr, ptr %cntx_1m, align 8, !tbaa !4
  %call8 = call ptr @bli_cntx_packm_kers_buf(ptr noundef %48)
  store ptr %call8, ptr %cntx_1m_funcs, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #4
  store i64 0, ptr %i, align 8, !tbaa !18
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %49 = load i64, ptr %i, align 8, !tbaa !18
  %cmp = icmp sle i64 %49, 31
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #4
  br label %for.end

for.body:                                         ; preds = %for.cond
  %50 = load ptr, ptr %cntx_funcs, align 8, !tbaa !4
  %51 = load i64, ptr %i, align 8, !tbaa !18
  %arrayidx = getelementptr inbounds %struct.func_s, ptr %50, i64 %51
  %52 = load ptr, ptr %cntx_1m_funcs, align 8, !tbaa !4
  %53 = load i64, ptr %i, align 8, !tbaa !18
  %arrayidx9 = getelementptr inbounds %struct.func_s, ptr %52, i64 %53
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx, ptr align 8 %arrayidx9, i64 32, i1 false), !tbaa.struct !20
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %54 = load i64, ptr %i, align 8, !tbaa !18
  %inc = add nsw i64 %54, 1
  store i64 %inc, ptr %i, align 8, !tbaa !18
  br label %for.cond

for.end:                                          ; preds = %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %cntx_1m_funcs) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %cntx_funcs) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %cntx_1m) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %dt_complex) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %blksz_kc) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %blksz_nc) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %blksz_mc) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %blksz_nr) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %blksz_mr) #4
  %55 = load i64, ptr %retval, align 4
  ret i64 %55
}

; Function Attrs: nounwind uwtable
define hidden i64 @bli_gemm_md_crr(ptr noundef %a, ptr noundef %b, ptr noundef %beta, ptr noundef %c, ptr noundef %cntx_local, ptr noundef %cntx) #0 {
entry:
  %retval = alloca %struct.mddm_s, align 4
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %beta.addr = alloca ptr, align 8
  %c.addr = alloca ptr, align 8
  %cntx_local.addr = alloca ptr, align 8
  %cntx.addr = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store ptr %b, ptr %b.addr, align 8, !tbaa !4
  store ptr %beta, ptr %beta.addr, align 8, !tbaa !4
  store ptr %c, ptr %c.addr, align 8, !tbaa !4
  store ptr %cntx_local, ptr %cntx_local.addr, align 8, !tbaa !4
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !4
  %comp = getelementptr inbounds %struct.mddm_s, ptr %retval, i32 0, i32 0
  store i32 0, ptr %comp, align 4, !tbaa !14
  %exec = getelementptr inbounds %struct.mddm_s, ptr %retval, i32 0, i32 1
  store i32 0, ptr %exec, align 4, !tbaa !16
  %0 = load i64, ptr %retval, align 4
  ret i64 %0
}

; Function Attrs: nounwind uwtable
define hidden i64 @bli_gemm_md_rcr(ptr noundef %a, ptr noundef %b, ptr noundef %beta, ptr noundef %c, ptr noundef %cntx_local, ptr noundef %cntx) #0 {
entry:
  %retval = alloca %struct.mddm_s, align 4
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %beta.addr = alloca ptr, align 8
  %c.addr = alloca ptr, align 8
  %cntx_local.addr = alloca ptr, align 8
  %cntx.addr = alloca ptr, align 8
  %a_real = alloca %struct.obj_s, align 8
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store ptr %b, ptr %b.addr, align 8, !tbaa !4
  store ptr %beta, ptr %beta.addr, align 8, !tbaa !4
  store ptr %c, ptr %c.addr, align 8, !tbaa !4
  store ptr %cntx_local, ptr %cntx_local.addr, align 8, !tbaa !4
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 160, ptr %a_real) #4
  %comp = getelementptr inbounds %struct.mddm_s, ptr %retval, i32 0, i32 0
  store i32 0, ptr %comp, align 4, !tbaa !14
  %exec = getelementptr inbounds %struct.mddm_s, ptr %retval, i32 0, i32 1
  store i32 0, ptr %exec, align 4, !tbaa !16
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !4
  call void @bli_obj_real_part(ptr noundef %0, ptr noundef %a_real)
  %1 = load ptr, ptr %a.addr, align 8, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %1, ptr align 8 %a_real, i64 160, i1 false), !tbaa.struct !21
  call void @llvm.lifetime.end.p0(i64 160, ptr %a_real) #4
  %2 = load i64, ptr %retval, align 4
  ret i64 %2
}

; Function Attrs: nounwind uwtable
define hidden i64 @bli_gemm_md_rrc(ptr noundef %a, ptr noundef %b, ptr noundef %beta, ptr noundef %c, ptr noundef %cntx_local, ptr noundef %cntx) #0 {
entry:
  %retval = alloca %struct.mddm_s, align 4
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %beta.addr = alloca ptr, align 8
  %c.addr = alloca ptr, align 8
  %cntx_local.addr = alloca ptr, align 8
  %cntx.addr = alloca ptr, align 8
  %b_real = alloca %struct.obj_s, align 8
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store ptr %b, ptr %b.addr, align 8, !tbaa !4
  store ptr %beta, ptr %beta.addr, align 8, !tbaa !4
  store ptr %c, ptr %c.addr, align 8, !tbaa !4
  store ptr %cntx_local, ptr %cntx_local.addr, align 8, !tbaa !4
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 160, ptr %b_real) #4
  %comp = getelementptr inbounds %struct.mddm_s, ptr %retval, i32 0, i32 0
  store i32 0, ptr %comp, align 4, !tbaa !14
  %exec = getelementptr inbounds %struct.mddm_s, ptr %retval, i32 0, i32 1
  store i32 0, ptr %exec, align 4, !tbaa !16
  %0 = load ptr, ptr %b.addr, align 8, !tbaa !4
  call void @bli_obj_real_part(ptr noundef %0, ptr noundef %b_real)
  %1 = load ptr, ptr %b.addr, align 8, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %1, ptr align 8 %b_real, i64 160, i1 false), !tbaa.struct !21
  call void @llvm.lifetime.end.p0(i64 160, ptr %b_real) #4
  %2 = load i64, ptr %retval, align 4
  ret i64 %2
}

declare void @bli_abort() #3

; Function Attrs: nounwind uwtable
define internal i32 @bli_obj_comp_prec(ptr noundef %obj) #0 {
entry:
  %obj.addr = alloca ptr, align 8
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %info = getelementptr inbounds %struct.obj_s, ptr %0, i32 0, i32 4
  %1 = load i32, ptr %info, align 8, !tbaa !26
  %and = and i32 %1, 1073741824
  %shr = lshr i32 %and, 29
  ret i32 %shr
}

; Function Attrs: nounwind uwtable
define internal void @bli_obj_set_target_prec(i32 noundef %dt, ptr noundef %obj) #0 {
entry:
  %dt.addr = alloca i32, align 4
  %obj.addr = alloca ptr, align 8
  store i32 %dt, ptr %dt.addr, align 4, !tbaa !13
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %info = getelementptr inbounds %struct.obj_s, ptr %0, i32 0, i32 4
  %1 = load i32, ptr %info, align 8, !tbaa !26
  %and = and i32 %1, -2049
  %2 = load i32, ptr %dt.addr, align 4, !tbaa !13
  %shl = shl i32 %2, 10
  %or = or i32 %and, %shl
  %3 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %info1 = getelementptr inbounds %struct.obj_s, ptr %3, i32 0, i32 4
  store i32 %or, ptr %info1, align 8, !tbaa !26
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @bli_obj_set_exec_dt(i32 noundef %dt, ptr noundef %obj) #0 {
entry:
  %dt.addr = alloca i32, align 4
  %obj.addr = alloca ptr, align 8
  store i32 %dt, ptr %dt.addr, align 4, !tbaa !13
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %info = getelementptr inbounds %struct.obj_s, ptr %0, i32 0, i32 4
  %1 = load i32, ptr %info, align 8, !tbaa !26
  %and = and i32 %1, -57345
  %2 = load i32, ptr %dt.addr, align 4, !tbaa !13
  %shl = shl i32 %2, 13
  %or = or i32 %and, %shl
  %3 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %info1 = getelementptr inbounds %struct.obj_s, ptr %3, i32 0, i32 4
  store i32 %or, ptr %info1, align 8, !tbaa !26
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @bli_obj_set_comp_dt(i32 noundef %dt, ptr noundef %obj) #0 {
entry:
  %dt.addr = alloca i32, align 4
  %obj.addr = alloca ptr, align 8
  store i32 %dt, ptr %dt.addr, align 4, !tbaa !13
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %info = getelementptr inbounds %struct.obj_s, ptr %0, i32 0, i32 4
  %1 = load i32, ptr %info, align 8, !tbaa !26
  %and = and i32 %1, 536870911
  %2 = load i32, ptr %dt.addr, align 4, !tbaa !13
  %shl = shl i32 %2, 29
  %or = or i32 %and, %shl
  %3 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %info1 = getelementptr inbounds %struct.obj_s, ptr %3, i32 0, i32 4
  store i32 %or, ptr %info1, align 8, !tbaa !26
  ret void
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @bli_cntx_l3_nat_ukr_prefers_rows_dt(i32 noundef %dt, i32 noundef %ukr_id, ptr noundef %cntx) #0 {
entry:
  %dt.addr = alloca i32, align 4
  %ukr_id.addr = alloca i32, align 4
  %cntx.addr = alloca ptr, align 8
  %prefs = alloca i8, align 1
  store i32 %dt, ptr %dt.addr, align 4, !tbaa !13
  store i32 %ukr_id, ptr %ukr_id.addr, align 4, !tbaa !13
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 1, ptr %prefs) #4
  %0 = load i32, ptr %dt.addr, align 4, !tbaa !13
  %1 = load i32, ptr %ukr_id.addr, align 4, !tbaa !13
  %2 = load ptr, ptr %cntx.addr, align 8, !tbaa !4
  %call = call zeroext i1 @bli_cntx_get_l3_nat_ukr_prefs_dt(i32 noundef %0, i32 noundef %1, ptr noundef %2)
  %frombool = zext i1 %call to i8
  store i8 %frombool, ptr %prefs, align 1, !tbaa !8
  %3 = load i8, ptr %prefs, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool = trunc i8 %3 to i1
  %conv = zext i1 %tobool to i32
  %cmp = icmp eq i32 %conv, 1
  call void @llvm.lifetime.end.p0(i64 1, ptr %prefs) #4
  ret i1 %cmp
}

; Function Attrs: nounwind uwtable
define internal void @bli_obj_swap(ptr noundef %a, ptr noundef %b) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %t = alloca %struct.obj_s, align 8
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store ptr %b, ptr %b.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 160, ptr %t) #4
  %0 = load ptr, ptr %b.addr, align 8, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %t, ptr align 8 %0, i64 160, i1 false), !tbaa.struct !21
  %1 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %a.addr, align 8, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %1, ptr align 8 %2, i64 160, i1 false), !tbaa.struct !21
  %3 = load ptr, ptr %a.addr, align 8, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %3, ptr align 8 %t, i64 160, i1 false), !tbaa.struct !21
  call void @llvm.lifetime.end.p0(i64 160, ptr %t) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @bli_obj_induce_trans(ptr noundef %obj) #0 {
entry:
  %obj.addr = alloca ptr, align 8
  %m = alloca i64, align 8
  %n = alloca i64, align 8
  %rs = alloca i64, align 8
  %cs = alloca i64, align 8
  %offm = alloca i64, align 8
  %offn = alloca i64, align 8
  %diag_off = alloca i64, align 8
  %m_padded = alloca i64, align 8
  %n_padded = alloca i64, align 8
  %m_panel = alloca i64, align 8
  %n_panel = alloca i64, align 8
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %m) #4
  %0 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %call = call i64 @bli_obj_length(ptr noundef %0)
  store i64 %call, ptr %m, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #4
  %1 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %call1 = call i64 @bli_obj_width(ptr noundef %1)
  store i64 %call1, ptr %n, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 8, ptr %rs) #4
  %2 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %call2 = call i64 @bli_obj_row_stride(ptr noundef %2)
  store i64 %call2, ptr %rs, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 8, ptr %cs) #4
  %3 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %call3 = call i64 @bli_obj_col_stride(ptr noundef %3)
  store i64 %call3, ptr %cs, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 8, ptr %offm) #4
  %4 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %call4 = call i64 @bli_obj_row_off(ptr noundef %4)
  store i64 %call4, ptr %offm, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 8, ptr %offn) #4
  %5 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %call5 = call i64 @bli_obj_col_off(ptr noundef %5)
  store i64 %call5, ptr %offn, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 8, ptr %diag_off) #4
  %6 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %call6 = call i64 @bli_obj_diag_offset(ptr noundef %6)
  store i64 %call6, ptr %diag_off, align 8, !tbaa !18
  %7 = load i64, ptr %n, align 8, !tbaa !18
  %8 = load i64, ptr %m, align 8, !tbaa !18
  %9 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  call void @bli_obj_set_dims(i64 noundef %7, i64 noundef %8, ptr noundef %9)
  %10 = load i64, ptr %cs, align 8, !tbaa !18
  %11 = load i64, ptr %rs, align 8, !tbaa !18
  %12 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  call void @bli_obj_set_strides(i64 noundef %10, i64 noundef %11, ptr noundef %12)
  %13 = load i64, ptr %offn, align 8, !tbaa !18
  %14 = load i64, ptr %offm, align 8, !tbaa !18
  %15 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  call void @bli_obj_set_offs(i64 noundef %13, i64 noundef %14, ptr noundef %15)
  %16 = load i64, ptr %diag_off, align 8, !tbaa !18
  %sub = sub nsw i64 0, %16
  %17 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  call void @bli_obj_set_diag_offset(i64 noundef %sub, ptr noundef %17)
  %18 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %call7 = call zeroext i1 @bli_obj_is_upper_or_lower(ptr noundef %18)
  br i1 %call7, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %19 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  call void @bli_obj_toggle_uplo(ptr noundef %19)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %m_padded) #4
  %20 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %call8 = call i64 @bli_obj_padded_length(ptr noundef %20)
  store i64 %call8, ptr %m_padded, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_padded) #4
  %21 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %call9 = call i64 @bli_obj_padded_width(ptr noundef %21)
  store i64 %call9, ptr %n_padded, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 8, ptr %m_panel) #4
  %22 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %call10 = call i64 @bli_obj_panel_length(ptr noundef %22)
  store i64 %call10, ptr %m_panel, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_panel) #4
  %23 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %call11 = call i64 @bli_obj_panel_width(ptr noundef %23)
  store i64 %call11, ptr %n_panel, align 8, !tbaa !18
  %24 = load i64, ptr %n_padded, align 8, !tbaa !18
  %25 = load i64, ptr %m_padded, align 8, !tbaa !18
  %26 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  call void @bli_obj_set_padded_dims(i64 noundef %24, i64 noundef %25, ptr noundef %26)
  %27 = load i64, ptr %n_panel, align 8, !tbaa !18
  %28 = load i64, ptr %m_panel, align 8, !tbaa !18
  %29 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  call void @bli_obj_set_panel_dims(i64 noundef %27, i64 noundef %28, ptr noundef %29)
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_panel) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %m_panel) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_padded) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %m_padded) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %diag_off) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %offn) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %offm) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %cs) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %rs) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %m) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @bli_cntx_get_blksz(i32 noundef %bs_id, ptr noundef %cntx) #0 {
entry:
  %bs_id.addr = alloca i32, align 4
  %cntx.addr = alloca ptr, align 8
  %blkszs = alloca ptr, align 8
  %blksz = alloca ptr, align 8
  store i32 %bs_id, ptr %bs_id.addr, align 4, !tbaa !13
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %blkszs) #4
  %0 = load ptr, ptr %cntx.addr, align 8, !tbaa !4
  %call = call ptr @bli_cntx_blkszs_buf(ptr noundef %0)
  store ptr %call, ptr %blkszs, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %blksz) #4
  %1 = load ptr, ptr %blkszs, align 8, !tbaa !4
  %2 = load i32, ptr %bs_id.addr, align 4, !tbaa !13
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds %struct.blksz_s, ptr %1, i64 %idxprom
  store ptr %arrayidx, ptr %blksz, align 8, !tbaa !4
  %3 = load ptr, ptr %blksz, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %blksz) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %blkszs) #4
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define internal void @bli_blksz_copy_dt(i32 noundef %dt_src, ptr noundef %b_src, i32 noundef %dt_dst, ptr noundef %b_dst) #0 {
entry:
  %dt_src.addr = alloca i32, align 4
  %b_src.addr = alloca ptr, align 8
  %dt_dst.addr = alloca i32, align 4
  %b_dst.addr = alloca ptr, align 8
  store i32 %dt_src, ptr %dt_src.addr, align 4, !tbaa !13
  store ptr %b_src, ptr %b_src.addr, align 8, !tbaa !4
  store i32 %dt_dst, ptr %dt_dst.addr, align 4, !tbaa !13
  store ptr %b_dst, ptr %b_dst.addr, align 8, !tbaa !4
  %0 = load i32, ptr %dt_src.addr, align 4, !tbaa !13
  %1 = load ptr, ptr %b_src.addr, align 8, !tbaa !4
  %2 = load i32, ptr %dt_dst.addr, align 4, !tbaa !13
  %3 = load ptr, ptr %b_dst.addr, align 8, !tbaa !4
  call void @bli_blksz_copy_def_dt(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3)
  %4 = load i32, ptr %dt_src.addr, align 4, !tbaa !13
  %5 = load ptr, ptr %b_src.addr, align 8, !tbaa !4
  %6 = load i32, ptr %dt_dst.addr, align 4, !tbaa !13
  %7 = load ptr, ptr %b_dst.addr, align 8, !tbaa !4
  call void @bli_blksz_copy_max_dt(i32 noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @bli_blksz_scale_def_max(i64 noundef %num, i64 noundef %den, i32 noundef %dt, ptr noundef %b) #0 {
entry:
  %num.addr = alloca i64, align 8
  %den.addr = alloca i64, align 8
  %dt.addr = alloca i32, align 4
  %b.addr = alloca ptr, align 8
  store i64 %num, ptr %num.addr, align 8, !tbaa !18
  store i64 %den, ptr %den.addr, align 8, !tbaa !18
  store i32 %dt, ptr %dt.addr, align 4, !tbaa !13
  store ptr %b, ptr %b.addr, align 8, !tbaa !4
  %0 = load i64, ptr %num.addr, align 8, !tbaa !18
  %1 = load i64, ptr %den.addr, align 8, !tbaa !18
  %2 = load i32, ptr %dt.addr, align 4, !tbaa !13
  %3 = load ptr, ptr %b.addr, align 8, !tbaa !4
  call void @bli_blksz_scale_def(i64 noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3)
  %4 = load i64, ptr %num.addr, align 8, !tbaa !18
  %5 = load i64, ptr %den.addr, align 8, !tbaa !18
  %6 = load i32, ptr %dt.addr, align 4, !tbaa !13
  %7 = load ptr, ptr %b.addr, align 8, !tbaa !4
  call void @bli_blksz_scale_max(i64 noundef %4, i64 noundef %5, i32 noundef %6, ptr noundef %7)
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @bli_cntx_get_l3_vir_ukrs(i32 noundef %ukr_id, ptr noundef %cntx) #0 {
entry:
  %ukr_id.addr = alloca i32, align 4
  %cntx.addr = alloca ptr, align 8
  %funcs = alloca ptr, align 8
  %func = alloca ptr, align 8
  store i32 %ukr_id, ptr %ukr_id.addr, align 4, !tbaa !13
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %funcs) #4
  %0 = load ptr, ptr %cntx.addr, align 8, !tbaa !4
  %call = call ptr @bli_cntx_l3_vir_ukrs_buf(ptr noundef %0)
  store ptr %call, ptr %funcs, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %func) #4
  %1 = load ptr, ptr %funcs, align 8, !tbaa !4
  %2 = load i32, ptr %ukr_id.addr, align 4, !tbaa !13
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds %struct.func_s, ptr %1, i64 %idxprom
  store ptr %arrayidx, ptr %func, align 8, !tbaa !4
  %3 = load ptr, ptr %func, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %func) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %funcs) #4
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define internal void @bli_func_set_dt(ptr noundef %fp, i32 noundef %dt, ptr noundef %func) #0 {
entry:
  %fp.addr = alloca ptr, align 8
  %dt.addr = alloca i32, align 4
  %func.addr = alloca ptr, align 8
  store ptr %fp, ptr %fp.addr, align 8, !tbaa !4
  store i32 %dt, ptr %dt.addr, align 4, !tbaa !13
  store ptr %func, ptr %func.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %fp.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %func.addr, align 8, !tbaa !4
  %ptr = getelementptr inbounds %struct.func_s, ptr %1, i32 0, i32 0
  %2 = load i32, ptr %dt.addr, align 4, !tbaa !13
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds [4 x ptr], ptr %ptr, i64 0, i64 %idxprom
  store ptr %0, ptr %arrayidx, align 8, !tbaa !4
  ret void
}

declare void @bli_cgemm_md_c2r_ref(i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) #3

declare void @bli_zgemm_md_c2r_ref(i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal zeroext i1 @bli_cntx_l3_nat_ukr_prefers_cols_dt(i32 noundef %dt, i32 noundef %ukr_id, ptr noundef %cntx) #0 {
entry:
  %dt.addr = alloca i32, align 4
  %ukr_id.addr = alloca i32, align 4
  %cntx.addr = alloca ptr, align 8
  %prefs = alloca i8, align 1
  store i32 %dt, ptr %dt.addr, align 4, !tbaa !13
  store i32 %ukr_id, ptr %ukr_id.addr, align 4, !tbaa !13
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 1, ptr %prefs) #4
  %0 = load i32, ptr %dt.addr, align 4, !tbaa !13
  %1 = load i32, ptr %ukr_id.addr, align 4, !tbaa !13
  %2 = load ptr, ptr %cntx.addr, align 8, !tbaa !4
  %call = call zeroext i1 @bli_cntx_get_l3_nat_ukr_prefs_dt(i32 noundef %0, i32 noundef %1, ptr noundef %2)
  %frombool = zext i1 %call to i8
  store i8 %frombool, ptr %prefs, align 1, !tbaa !8
  %3 = load i8, ptr %prefs, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool = trunc i8 %3 to i1
  %conv = zext i1 %tobool to i32
  %cmp = icmp eq i32 %conv, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr %prefs) #4
  ret i1 %cmp
}

; Function Attrs: nounwind uwtable
define internal void @bli_cntx_set_schema_a_block(i32 noundef %schema, ptr noundef %cntx) #0 {
entry:
  %schema.addr = alloca i32, align 4
  %cntx.addr = alloca ptr, align 8
  store i32 %schema, ptr %schema.addr, align 4, !tbaa !13
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !4
  %0 = load i32, ptr %schema.addr, align 4, !tbaa !13
  %1 = load ptr, ptr %cntx.addr, align 8, !tbaa !4
  %schema_a_block = getelementptr inbounds %struct.cntx_s, ptr %1, i32 0, i32 17
  store i32 %0, ptr %schema_a_block, align 4, !tbaa !29
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @bli_cntx_set_schema_b_panel(i32 noundef %schema, ptr noundef %cntx) #0 {
entry:
  %schema.addr = alloca i32, align 4
  %cntx.addr = alloca ptr, align 8
  store i32 %schema, ptr %schema.addr, align 4, !tbaa !13
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !4
  %0 = load i32, ptr %schema.addr, align 4, !tbaa !13
  %1 = load ptr, ptr %cntx.addr, align 8, !tbaa !4
  %schema_b_panel = getelementptr inbounds %struct.cntx_s, ptr %1, i32 0, i32 18
  store i32 %0, ptr %schema_b_panel, align 8, !tbaa !31
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @bli_obj_toggle_conj(ptr noundef %obj) #0 {
entry:
  %obj.addr = alloca ptr, align 8
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  call void @bli_obj_apply_conj(i32 noundef 16, ptr noundef %0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @bli_obj_dt(ptr noundef %obj) #0 {
entry:
  %obj.addr = alloca ptr, align 8
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %info = getelementptr inbounds %struct.obj_s, ptr %0, i32 0, i32 4
  %1 = load i32, ptr %info, align 8, !tbaa !26
  %and = and i32 %1, 7
  ret i32 %and
}

declare ptr @bli_gks_query_ind_cntx(i32 noundef, i32 noundef) #3

; Function Attrs: nounwind uwtable
define internal ptr @bli_cntx_packm_kers_buf(ptr noundef %cntx) #0 {
entry:
  %cntx.addr = alloca ptr, align 8
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %cntx.addr, align 8, !tbaa !4
  %packm_kers = getelementptr inbounds %struct.cntx_s, ptr %0, i32 0, i32 14
  %arraydecay = getelementptr inbounds [33 x %struct.func_s], ptr %packm_kers, i64 0, i64 0
  ret ptr %arraydecay
}

; Function Attrs: nounwind uwtable
define internal void @bli_obj_real_part(ptr noundef %c, ptr noundef %r) #0 {
entry:
  %c.addr = alloca ptr, align 8
  %r.addr = alloca ptr, align 8
  %dt_stor_r = alloca i32, align 4
  %dt_targ_r = alloca i32, align 4
  %dt_exec_r = alloca i32, align 4
  %dt_comp_r = alloca i32, align 4
  %es_c = alloca i64, align 8
  %rs_c = alloca i64, align 8
  %cs_c = alloca i64, align 8
  store ptr %c, ptr %c.addr, align 8, !tbaa !4
  store ptr %r, ptr %r.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %r.addr, align 8, !tbaa !4
  call void @bli_obj_alias_to(ptr noundef %0, ptr noundef %1)
  %2 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %call = call zeroext i1 @bli_obj_is_complex(ptr noundef %2)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %dt_stor_r) #4
  %3 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %call1 = call i32 @bli_obj_dt(ptr noundef %3)
  %call2 = call i32 @bli_dt_proj_to_real(i32 noundef %call1)
  store i32 %call2, ptr %dt_stor_r, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 4, ptr %dt_targ_r) #4
  %4 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %call3 = call i32 @bli_obj_target_dt(ptr noundef %4)
  %call4 = call i32 @bli_dt_proj_to_real(i32 noundef %call3)
  store i32 %call4, ptr %dt_targ_r, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 4, ptr %dt_exec_r) #4
  %5 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %call5 = call i32 @bli_obj_exec_dt(ptr noundef %5)
  %call6 = call i32 @bli_dt_proj_to_real(i32 noundef %call5)
  store i32 %call6, ptr %dt_exec_r, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 4, ptr %dt_comp_r) #4
  %6 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %call7 = call i32 @bli_obj_comp_dt(ptr noundef %6)
  %call8 = call i32 @bli_dt_proj_to_real(i32 noundef %call7)
  store i32 %call8, ptr %dt_comp_r, align 4, !tbaa !13
  %7 = load i32, ptr %dt_stor_r, align 4, !tbaa !13
  %8 = load ptr, ptr %r.addr, align 8, !tbaa !4
  call void @bli_obj_set_dt(i32 noundef %7, ptr noundef %8)
  %9 = load i32, ptr %dt_targ_r, align 4, !tbaa !13
  %10 = load ptr, ptr %r.addr, align 8, !tbaa !4
  call void @bli_obj_set_target_dt(i32 noundef %9, ptr noundef %10)
  %11 = load i32, ptr %dt_exec_r, align 4, !tbaa !13
  %12 = load ptr, ptr %r.addr, align 8, !tbaa !4
  call void @bli_obj_set_exec_dt(i32 noundef %11, ptr noundef %12)
  %13 = load i32, ptr %dt_comp_r, align 4, !tbaa !13
  %14 = load ptr, ptr %r.addr, align 8, !tbaa !4
  call void @bli_obj_set_comp_dt(i32 noundef %13, ptr noundef %14)
  call void @llvm.lifetime.start.p0(i64 8, ptr %es_c) #4
  %15 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %call9 = call i64 @bli_obj_elem_size(ptr noundef %15)
  store i64 %call9, ptr %es_c, align 8, !tbaa !18
  %16 = load i64, ptr %es_c, align 8, !tbaa !18
  %div = udiv i64 %16, 2
  %17 = load ptr, ptr %r.addr, align 8, !tbaa !4
  call void @bli_obj_set_elem_size(i64 noundef %div, ptr noundef %17)
  call void @llvm.lifetime.start.p0(i64 8, ptr %rs_c) #4
  %18 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %call10 = call i64 @bli_obj_row_stride(ptr noundef %18)
  store i64 %call10, ptr %rs_c, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 8, ptr %cs_c) #4
  %19 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %call11 = call i64 @bli_obj_col_stride(ptr noundef %19)
  store i64 %call11, ptr %cs_c, align 8, !tbaa !18
  %20 = load i64, ptr %rs_c, align 8, !tbaa !18
  %mul = mul nsw i64 2, %20
  %21 = load i64, ptr %cs_c, align 8, !tbaa !18
  %mul12 = mul nsw i64 2, %21
  %22 = load ptr, ptr %r.addr, align 8, !tbaa !4
  call void @bli_obj_set_strides(i64 noundef %mul, i64 noundef %mul12, ptr noundef %22)
  call void @llvm.lifetime.end.p0(i64 8, ptr %cs_c) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %rs_c) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %es_c) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %dt_comp_r) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %dt_exec_r) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %dt_targ_r) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %dt_stor_r) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @bli_obj_domain(ptr noundef %obj) #0 {
entry:
  %obj.addr = alloca ptr, align 8
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %info = getelementptr inbounds %struct.obj_s, ptr %0, i32 0, i32 4
  %1 = load i32, ptr %info, align 8, !tbaa !26
  %and = and i32 %1, 1
  ret i32 %and
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @bli_obj_is_const(ptr noundef %obj) #0 {
entry:
  %obj.addr = alloca ptr, align 8
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %call = call i32 @bli_obj_dt(ptr noundef %0)
  %cmp = icmp eq i32 %call, 5
  ret i1 %cmp
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @bli_cntx_get_l3_nat_ukr_prefs_dt(i32 noundef %dt, i32 noundef %ukr_id, ptr noundef %cntx) #0 {
entry:
  %dt.addr = alloca i32, align 4
  %ukr_id.addr = alloca i32, align 4
  %cntx.addr = alloca ptr, align 8
  %mbool = alloca ptr, align 8
  store i32 %dt, ptr %dt.addr, align 4, !tbaa !13
  store i32 %ukr_id, ptr %ukr_id.addr, align 4, !tbaa !13
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %mbool) #4
  %0 = load i32, ptr %ukr_id.addr, align 4, !tbaa !13
  %1 = load ptr, ptr %cntx.addr, align 8, !tbaa !4
  %call = call ptr @bli_cntx_get_l3_nat_ukr_prefs(i32 noundef %0, ptr noundef %1)
  store ptr %call, ptr %mbool, align 8, !tbaa !4
  %2 = load i32, ptr %dt.addr, align 4, !tbaa !13
  %3 = load ptr, ptr %mbool, align 8, !tbaa !4
  %call1 = call zeroext i1 @bli_mbool_get_dt(i32 noundef %2, ptr noundef %3)
  call void @llvm.lifetime.end.p0(i64 8, ptr %mbool) #4
  ret i1 %call1
}

; Function Attrs: nounwind uwtable
define internal ptr @bli_cntx_get_l3_nat_ukr_prefs(i32 noundef %ukr_id, ptr noundef %cntx) #0 {
entry:
  %ukr_id.addr = alloca i32, align 4
  %cntx.addr = alloca ptr, align 8
  %mbools = alloca ptr, align 8
  %mbool = alloca ptr, align 8
  store i32 %ukr_id, ptr %ukr_id.addr, align 4, !tbaa !13
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %mbools) #4
  %0 = load ptr, ptr %cntx.addr, align 8, !tbaa !4
  %call = call ptr @bli_cntx_l3_nat_ukrs_prefs_buf(ptr noundef %0)
  store ptr %call, ptr %mbools, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %mbool) #4
  %1 = load ptr, ptr %mbools, align 8, !tbaa !4
  %2 = load i32, ptr %ukr_id.addr, align 4, !tbaa !13
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds %struct.mbool_s, ptr %1, i64 %idxprom
  store ptr %arrayidx, ptr %mbool, align 8, !tbaa !4
  %3 = load ptr, ptr %mbool, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %mbool) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %mbools) #4
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @bli_mbool_get_dt(i32 noundef %dt, ptr noundef %mb) #0 {
entry:
  %dt.addr = alloca i32, align 4
  %mb.addr = alloca ptr, align 8
  store i32 %dt, ptr %dt.addr, align 4, !tbaa !13
  store ptr %mb, ptr %mb.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %mb.addr, align 8, !tbaa !4
  %v = getelementptr inbounds %struct.mbool_s, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %dt.addr, align 4, !tbaa !13
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr inbounds [4 x i8], ptr %v, i64 0, i64 %idxprom
  %2 = load i8, ptr %arrayidx, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool = trunc i8 %2 to i1
  ret i1 %tobool
}

; Function Attrs: nounwind uwtable
define internal ptr @bli_cntx_l3_nat_ukrs_prefs_buf(ptr noundef %cntx) #0 {
entry:
  %cntx.addr = alloca ptr, align 8
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %cntx.addr, align 8, !tbaa !4
  %l3_nat_ukrs_prefs = getelementptr inbounds %struct.cntx_s, ptr %0, i32 0, i32 5
  %arraydecay = getelementptr inbounds [6 x %struct.mbool_s], ptr %l3_nat_ukrs_prefs, i64 0, i64 0
  ret ptr %arraydecay
}

; Function Attrs: nounwind uwtable
define internal i64 @bli_obj_length(ptr noundef %obj) #0 {
entry:
  %obj.addr = alloca ptr, align 8
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %dim = getelementptr inbounds %struct.obj_s, ptr %0, i32 0, i32 2
  %arrayidx = getelementptr inbounds [2 x i64], ptr %dim, i64 0, i64 0
  %1 = load i64, ptr %arrayidx, align 8, !tbaa !18
  ret i64 %1
}

; Function Attrs: nounwind uwtable
define internal i64 @bli_obj_width(ptr noundef %obj) #0 {
entry:
  %obj.addr = alloca ptr, align 8
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %dim = getelementptr inbounds %struct.obj_s, ptr %0, i32 0, i32 2
  %arrayidx = getelementptr inbounds [2 x i64], ptr %dim, i64 0, i64 1
  %1 = load i64, ptr %arrayidx, align 8, !tbaa !18
  ret i64 %1
}

; Function Attrs: nounwind uwtable
define internal i64 @bli_obj_row_stride(ptr noundef %obj) #0 {
entry:
  %obj.addr = alloca ptr, align 8
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %rs = getelementptr inbounds %struct.obj_s, ptr %0, i32 0, i32 8
  %1 = load i64, ptr %rs, align 8, !tbaa !32
  ret i64 %1
}

; Function Attrs: nounwind uwtable
define internal i64 @bli_obj_col_stride(ptr noundef %obj) #0 {
entry:
  %obj.addr = alloca ptr, align 8
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %cs = getelementptr inbounds %struct.obj_s, ptr %0, i32 0, i32 9
  %1 = load i64, ptr %cs, align 8, !tbaa !33
  ret i64 %1
}

; Function Attrs: nounwind uwtable
define internal i64 @bli_obj_row_off(ptr noundef %obj) #0 {
entry:
  %obj.addr = alloca ptr, align 8
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %off = getelementptr inbounds %struct.obj_s, ptr %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x i64], ptr %off, i64 0, i64 0
  %1 = load i64, ptr %arrayidx, align 8, !tbaa !18
  ret i64 %1
}

; Function Attrs: nounwind uwtable
define internal i64 @bli_obj_col_off(ptr noundef %obj) #0 {
entry:
  %obj.addr = alloca ptr, align 8
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %off = getelementptr inbounds %struct.obj_s, ptr %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x i64], ptr %off, i64 0, i64 1
  %1 = load i64, ptr %arrayidx, align 8, !tbaa !18
  ret i64 %1
}

; Function Attrs: nounwind uwtable
define internal i64 @bli_obj_diag_offset(ptr noundef %obj) #0 {
entry:
  %obj.addr = alloca ptr, align 8
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %diag_off = getelementptr inbounds %struct.obj_s, ptr %0, i32 0, i32 3
  %1 = load i64, ptr %diag_off, align 8, !tbaa !34
  ret i64 %1
}

; Function Attrs: nounwind uwtable
define internal void @bli_obj_set_dims(i64 noundef %m, i64 noundef %n, ptr noundef %obj) #0 {
entry:
  %m.addr = alloca i64, align 8
  %n.addr = alloca i64, align 8
  %obj.addr = alloca ptr, align 8
  store i64 %m, ptr %m.addr, align 8, !tbaa !18
  store i64 %n, ptr %n.addr, align 8, !tbaa !18
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !4
  %0 = load i64, ptr %m.addr, align 8, !tbaa !18
  %1 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  call void @bli_obj_set_length(i64 noundef %0, ptr noundef %1)
  %2 = load i64, ptr %n.addr, align 8, !tbaa !18
  %3 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  call void @bli_obj_set_width(i64 noundef %2, ptr noundef %3)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @bli_obj_set_strides(i64 noundef %rs, i64 noundef %cs, ptr noundef %obj) #0 {
entry:
  %rs.addr = alloca i64, align 8
  %cs.addr = alloca i64, align 8
  %obj.addr = alloca ptr, align 8
  store i64 %rs, ptr %rs.addr, align 8, !tbaa !18
  store i64 %cs, ptr %cs.addr, align 8, !tbaa !18
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !4
  %0 = load i64, ptr %rs.addr, align 8, !tbaa !18
  %1 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  call void @bli_obj_set_row_stride(i64 noundef %0, ptr noundef %1)
  %2 = load i64, ptr %cs.addr, align 8, !tbaa !18
  %3 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  call void @bli_obj_set_col_stride(i64 noundef %2, ptr noundef %3)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @bli_obj_set_offs(i64 noundef %offm, i64 noundef %offn, ptr noundef %obj) #0 {
entry:
  %offm.addr = alloca i64, align 8
  %offn.addr = alloca i64, align 8
  %obj.addr = alloca ptr, align 8
  store i64 %offm, ptr %offm.addr, align 8, !tbaa !18
  store i64 %offn, ptr %offn.addr, align 8, !tbaa !18
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !4
  %0 = load i64, ptr %offm.addr, align 8, !tbaa !18
  %1 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  call void @bli_obj_set_off(i32 noundef 0, i64 noundef %0, ptr noundef %1)
  %2 = load i64, ptr %offn.addr, align 8, !tbaa !18
  %3 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  call void @bli_obj_set_off(i32 noundef 1, i64 noundef %2, ptr noundef %3)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @bli_obj_set_diag_offset(i64 noundef %offset, ptr noundef %obj) #0 {
entry:
  %offset.addr = alloca i64, align 8
  %obj.addr = alloca ptr, align 8
  store i64 %offset, ptr %offset.addr, align 8, !tbaa !18
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !4
  %0 = load i64, ptr %offset.addr, align 8, !tbaa !18
  %1 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %diag_off = getelementptr inbounds %struct.obj_s, ptr %1, i32 0, i32 3
  store i64 %0, ptr %diag_off, align 8, !tbaa !34
  ret void
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @bli_obj_is_upper_or_lower(ptr noundef %obj) #0 {
entry:
  %obj.addr = alloca ptr, align 8
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %call = call zeroext i1 @bli_obj_is_upper(ptr noundef %0)
  br i1 %call, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %1 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %call1 = call zeroext i1 @bli_obj_is_lower(ptr noundef %1)
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %call1, %lor.rhs ]
  ret i1 %2
}

; Function Attrs: nounwind uwtable
define internal void @bli_obj_toggle_uplo(ptr noundef %obj) #0 {
entry:
  %obj.addr = alloca ptr, align 8
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %info = getelementptr inbounds %struct.obj_s, ptr %0, i32 0, i32 4
  %1 = load i32, ptr %info, align 8, !tbaa !26
  %xor = xor i32 %1, 128
  %xor1 = xor i32 %xor, 32
  %2 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %info2 = getelementptr inbounds %struct.obj_s, ptr %2, i32 0, i32 4
  store i32 %xor1, ptr %info2, align 8, !tbaa !26
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @bli_obj_padded_length(ptr noundef %obj) #0 {
entry:
  %obj.addr = alloca ptr, align 8
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %m_padded = getelementptr inbounds %struct.obj_s, ptr %0, i32 0, i32 12
  %1 = load i64, ptr %m_padded, align 8, !tbaa !35
  ret i64 %1
}

; Function Attrs: nounwind uwtable
define internal i64 @bli_obj_padded_width(ptr noundef %obj) #0 {
entry:
  %obj.addr = alloca ptr, align 8
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %n_padded = getelementptr inbounds %struct.obj_s, ptr %0, i32 0, i32 13
  %1 = load i64, ptr %n_padded, align 8, !tbaa !36
  ret i64 %1
}

; Function Attrs: nounwind uwtable
define internal i64 @bli_obj_panel_length(ptr noundef %obj) #0 {
entry:
  %obj.addr = alloca ptr, align 8
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %m_panel = getelementptr inbounds %struct.obj_s, ptr %0, i32 0, i32 16
  %1 = load i64, ptr %m_panel, align 8, !tbaa !37
  ret i64 %1
}

; Function Attrs: nounwind uwtable
define internal i64 @bli_obj_panel_width(ptr noundef %obj) #0 {
entry:
  %obj.addr = alloca ptr, align 8
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %n_panel = getelementptr inbounds %struct.obj_s, ptr %0, i32 0, i32 17
  %1 = load i64, ptr %n_panel, align 8, !tbaa !38
  ret i64 %1
}

; Function Attrs: nounwind uwtable
define internal void @bli_obj_set_padded_dims(i64 noundef %m, i64 noundef %n, ptr noundef %obj) #0 {
entry:
  %m.addr = alloca i64, align 8
  %n.addr = alloca i64, align 8
  %obj.addr = alloca ptr, align 8
  store i64 %m, ptr %m.addr, align 8, !tbaa !18
  store i64 %n, ptr %n.addr, align 8, !tbaa !18
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !4
  %0 = load i64, ptr %m.addr, align 8, !tbaa !18
  %1 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  call void @bli_obj_set_padded_length(i64 noundef %0, ptr noundef %1)
  %2 = load i64, ptr %n.addr, align 8, !tbaa !18
  %3 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  call void @bli_obj_set_padded_width(i64 noundef %2, ptr noundef %3)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @bli_obj_set_panel_dims(i64 noundef %m, i64 noundef %n, ptr noundef %obj) #0 {
entry:
  %m.addr = alloca i64, align 8
  %n.addr = alloca i64, align 8
  %obj.addr = alloca ptr, align 8
  store i64 %m, ptr %m.addr, align 8, !tbaa !18
  store i64 %n, ptr %n.addr, align 8, !tbaa !18
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !4
  %0 = load i64, ptr %m.addr, align 8, !tbaa !18
  %1 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  call void @bli_obj_set_panel_length(i64 noundef %0, ptr noundef %1)
  %2 = load i64, ptr %n.addr, align 8, !tbaa !18
  %3 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  call void @bli_obj_set_panel_width(i64 noundef %2, ptr noundef %3)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @bli_obj_set_length(i64 noundef %m, ptr noundef %obj) #0 {
entry:
  %m.addr = alloca i64, align 8
  %obj.addr = alloca ptr, align 8
  store i64 %m, ptr %m.addr, align 8, !tbaa !18
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !4
  %0 = load i64, ptr %m.addr, align 8, !tbaa !18
  %1 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %dim = getelementptr inbounds %struct.obj_s, ptr %1, i32 0, i32 2
  %arrayidx = getelementptr inbounds [2 x i64], ptr %dim, i64 0, i64 0
  store i64 %0, ptr %arrayidx, align 8, !tbaa !18
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @bli_obj_set_width(i64 noundef %n, ptr noundef %obj) #0 {
entry:
  %n.addr = alloca i64, align 8
  %obj.addr = alloca ptr, align 8
  store i64 %n, ptr %n.addr, align 8, !tbaa !18
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !4
  %0 = load i64, ptr %n.addr, align 8, !tbaa !18
  %1 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %dim = getelementptr inbounds %struct.obj_s, ptr %1, i32 0, i32 2
  %arrayidx = getelementptr inbounds [2 x i64], ptr %dim, i64 0, i64 1
  store i64 %0, ptr %arrayidx, align 8, !tbaa !18
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @bli_obj_set_row_stride(i64 noundef %rs, ptr noundef %obj) #0 {
entry:
  %rs.addr = alloca i64, align 8
  %obj.addr = alloca ptr, align 8
  store i64 %rs, ptr %rs.addr, align 8, !tbaa !18
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !4
  %0 = load i64, ptr %rs.addr, align 8, !tbaa !18
  %1 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %rs1 = getelementptr inbounds %struct.obj_s, ptr %1, i32 0, i32 8
  store i64 %0, ptr %rs1, align 8, !tbaa !32
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @bli_obj_set_col_stride(i64 noundef %cs, ptr noundef %obj) #0 {
entry:
  %cs.addr = alloca i64, align 8
  %obj.addr = alloca ptr, align 8
  store i64 %cs, ptr %cs.addr, align 8, !tbaa !18
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !4
  %0 = load i64, ptr %cs.addr, align 8, !tbaa !18
  %1 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %cs1 = getelementptr inbounds %struct.obj_s, ptr %1, i32 0, i32 9
  store i64 %0, ptr %cs1, align 8, !tbaa !33
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @bli_obj_set_off(i32 noundef %mdim, i64 noundef %offset, ptr noundef %obj) #0 {
entry:
  %mdim.addr = alloca i32, align 4
  %offset.addr = alloca i64, align 8
  %obj.addr = alloca ptr, align 8
  store i32 %mdim, ptr %mdim.addr, align 4, !tbaa !13
  store i64 %offset, ptr %offset.addr, align 8, !tbaa !18
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !4
  %0 = load i64, ptr %offset.addr, align 8, !tbaa !18
  %1 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %off = getelementptr inbounds %struct.obj_s, ptr %1, i32 0, i32 1
  %2 = load i32, ptr %mdim.addr, align 4, !tbaa !13
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds [2 x i64], ptr %off, i64 0, i64 %idxprom
  store i64 %0, ptr %arrayidx, align 8, !tbaa !18
  ret void
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @bli_obj_is_upper(ptr noundef %obj) #0 {
entry:
  %obj.addr = alloca ptr, align 8
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %call = call i32 @bli_obj_uplo(ptr noundef %0)
  %cmp = icmp eq i32 %call, 96
  ret i1 %cmp
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @bli_obj_is_lower(ptr noundef %obj) #0 {
entry:
  %obj.addr = alloca ptr, align 8
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %call = call i32 @bli_obj_uplo(ptr noundef %0)
  %cmp = icmp eq i32 %call, 192
  ret i1 %cmp
}

; Function Attrs: nounwind uwtable
define internal i32 @bli_obj_uplo(ptr noundef %obj) #0 {
entry:
  %obj.addr = alloca ptr, align 8
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %info = getelementptr inbounds %struct.obj_s, ptr %0, i32 0, i32 4
  %1 = load i32, ptr %info, align 8, !tbaa !26
  %and = and i32 %1, 224
  ret i32 %and
}

; Function Attrs: nounwind uwtable
define internal void @bli_obj_set_padded_length(i64 noundef %m, ptr noundef %obj) #0 {
entry:
  %m.addr = alloca i64, align 8
  %obj.addr = alloca ptr, align 8
  store i64 %m, ptr %m.addr, align 8, !tbaa !18
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !4
  %0 = load i64, ptr %m.addr, align 8, !tbaa !18
  %1 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %m_padded = getelementptr inbounds %struct.obj_s, ptr %1, i32 0, i32 12
  store i64 %0, ptr %m_padded, align 8, !tbaa !35
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @bli_obj_set_padded_width(i64 noundef %n, ptr noundef %obj) #0 {
entry:
  %n.addr = alloca i64, align 8
  %obj.addr = alloca ptr, align 8
  store i64 %n, ptr %n.addr, align 8, !tbaa !18
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !4
  %0 = load i64, ptr %n.addr, align 8, !tbaa !18
  %1 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %n_padded = getelementptr inbounds %struct.obj_s, ptr %1, i32 0, i32 13
  store i64 %0, ptr %n_padded, align 8, !tbaa !36
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @bli_obj_set_panel_length(i64 noundef %m, ptr noundef %obj) #0 {
entry:
  %m.addr = alloca i64, align 8
  %obj.addr = alloca ptr, align 8
  store i64 %m, ptr %m.addr, align 8, !tbaa !18
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !4
  %0 = load i64, ptr %m.addr, align 8, !tbaa !18
  %1 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %m_panel = getelementptr inbounds %struct.obj_s, ptr %1, i32 0, i32 16
  store i64 %0, ptr %m_panel, align 8, !tbaa !37
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @bli_obj_set_panel_width(i64 noundef %n, ptr noundef %obj) #0 {
entry:
  %n.addr = alloca i64, align 8
  %obj.addr = alloca ptr, align 8
  store i64 %n, ptr %n.addr, align 8, !tbaa !18
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !4
  %0 = load i64, ptr %n.addr, align 8, !tbaa !18
  %1 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %n_panel = getelementptr inbounds %struct.obj_s, ptr %1, i32 0, i32 17
  store i64 %0, ptr %n_panel, align 8, !tbaa !38
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @bli_cntx_blkszs_buf(ptr noundef %cntx) #0 {
entry:
  %cntx.addr = alloca ptr, align 8
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %cntx.addr, align 8, !tbaa !4
  %blkszs = getelementptr inbounds %struct.cntx_s, ptr %0, i32 0, i32 0
  %arraydecay = getelementptr inbounds [11 x %struct.blksz_s], ptr %blkszs, i64 0, i64 0
  ret ptr %arraydecay
}

; Function Attrs: nounwind uwtable
define internal void @bli_blksz_copy_def_dt(i32 noundef %dt_src, ptr noundef %b_src, i32 noundef %dt_dst, ptr noundef %b_dst) #0 {
entry:
  %dt_src.addr = alloca i32, align 4
  %b_src.addr = alloca ptr, align 8
  %dt_dst.addr = alloca i32, align 4
  %b_dst.addr = alloca ptr, align 8
  %val = alloca i64, align 8
  store i32 %dt_src, ptr %dt_src.addr, align 4, !tbaa !13
  store ptr %b_src, ptr %b_src.addr, align 8, !tbaa !4
  store i32 %dt_dst, ptr %dt_dst.addr, align 4, !tbaa !13
  store ptr %b_dst, ptr %b_dst.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #4
  %0 = load i32, ptr %dt_src.addr, align 4, !tbaa !13
  %1 = load ptr, ptr %b_src.addr, align 8, !tbaa !4
  %call = call i64 @bli_blksz_get_def(i32 noundef %0, ptr noundef %1)
  store i64 %call, ptr %val, align 8, !tbaa !18
  %2 = load i64, ptr %val, align 8, !tbaa !18
  %3 = load i32, ptr %dt_dst.addr, align 4, !tbaa !13
  %4 = load ptr, ptr %b_dst.addr, align 8, !tbaa !4
  call void @bli_blksz_set_def(i64 noundef %2, i32 noundef %3, ptr noundef %4)
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @bli_blksz_copy_max_dt(i32 noundef %dt_src, ptr noundef %b_src, i32 noundef %dt_dst, ptr noundef %b_dst) #0 {
entry:
  %dt_src.addr = alloca i32, align 4
  %b_src.addr = alloca ptr, align 8
  %dt_dst.addr = alloca i32, align 4
  %b_dst.addr = alloca ptr, align 8
  %val = alloca i64, align 8
  store i32 %dt_src, ptr %dt_src.addr, align 4, !tbaa !13
  store ptr %b_src, ptr %b_src.addr, align 8, !tbaa !4
  store i32 %dt_dst, ptr %dt_dst.addr, align 4, !tbaa !13
  store ptr %b_dst, ptr %b_dst.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #4
  %0 = load i32, ptr %dt_src.addr, align 4, !tbaa !13
  %1 = load ptr, ptr %b_src.addr, align 8, !tbaa !4
  %call = call i64 @bli_blksz_get_max(i32 noundef %0, ptr noundef %1)
  store i64 %call, ptr %val, align 8, !tbaa !18
  %2 = load i64, ptr %val, align 8, !tbaa !18
  %3 = load i32, ptr %dt_dst.addr, align 4, !tbaa !13
  %4 = load ptr, ptr %b_dst.addr, align 8, !tbaa !4
  call void @bli_blksz_set_max(i64 noundef %2, i32 noundef %3, ptr noundef %4)
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @bli_blksz_get_def(i32 noundef %dt, ptr noundef %b) #0 {
entry:
  %dt.addr = alloca i32, align 4
  %b.addr = alloca ptr, align 8
  store i32 %dt, ptr %dt.addr, align 4, !tbaa !13
  store ptr %b, ptr %b.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %v = getelementptr inbounds %struct.blksz_s, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %dt.addr, align 4, !tbaa !13
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr inbounds [4 x i64], ptr %v, i64 0, i64 %idxprom
  %2 = load i64, ptr %arrayidx, align 8, !tbaa !18
  ret i64 %2
}

; Function Attrs: nounwind uwtable
define internal void @bli_blksz_set_def(i64 noundef %val, i32 noundef %dt, ptr noundef %b) #0 {
entry:
  %val.addr = alloca i64, align 8
  %dt.addr = alloca i32, align 4
  %b.addr = alloca ptr, align 8
  store i64 %val, ptr %val.addr, align 8, !tbaa !18
  store i32 %dt, ptr %dt.addr, align 4, !tbaa !13
  store ptr %b, ptr %b.addr, align 8, !tbaa !4
  %0 = load i64, ptr %val.addr, align 8, !tbaa !18
  %1 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %v = getelementptr inbounds %struct.blksz_s, ptr %1, i32 0, i32 0
  %2 = load i32, ptr %dt.addr, align 4, !tbaa !13
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds [4 x i64], ptr %v, i64 0, i64 %idxprom
  store i64 %0, ptr %arrayidx, align 8, !tbaa !18
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @bli_blksz_get_max(i32 noundef %dt, ptr noundef %b) #0 {
entry:
  %dt.addr = alloca i32, align 4
  %b.addr = alloca ptr, align 8
  store i32 %dt, ptr %dt.addr, align 4, !tbaa !13
  store ptr %b, ptr %b.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %e = getelementptr inbounds %struct.blksz_s, ptr %0, i32 0, i32 1
  %1 = load i32, ptr %dt.addr, align 4, !tbaa !13
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr inbounds [4 x i64], ptr %e, i64 0, i64 %idxprom
  %2 = load i64, ptr %arrayidx, align 8, !tbaa !18
  ret i64 %2
}

; Function Attrs: nounwind uwtable
define internal void @bli_blksz_set_max(i64 noundef %val, i32 noundef %dt, ptr noundef %b) #0 {
entry:
  %val.addr = alloca i64, align 8
  %dt.addr = alloca i32, align 4
  %b.addr = alloca ptr, align 8
  store i64 %val, ptr %val.addr, align 8, !tbaa !18
  store i32 %dt, ptr %dt.addr, align 4, !tbaa !13
  store ptr %b, ptr %b.addr, align 8, !tbaa !4
  %0 = load i64, ptr %val.addr, align 8, !tbaa !18
  %1 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %e = getelementptr inbounds %struct.blksz_s, ptr %1, i32 0, i32 1
  %2 = load i32, ptr %dt.addr, align 4, !tbaa !13
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds [4 x i64], ptr %e, i64 0, i64 %idxprom
  store i64 %0, ptr %arrayidx, align 8, !tbaa !18
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @bli_blksz_scale_def(i64 noundef %num, i64 noundef %den, i32 noundef %dt, ptr noundef %b) #0 {
entry:
  %num.addr = alloca i64, align 8
  %den.addr = alloca i64, align 8
  %dt.addr = alloca i32, align 4
  %b.addr = alloca ptr, align 8
  %val = alloca i64, align 8
  store i64 %num, ptr %num.addr, align 8, !tbaa !18
  store i64 %den, ptr %den.addr, align 8, !tbaa !18
  store i32 %dt, ptr %dt.addr, align 4, !tbaa !13
  store ptr %b, ptr %b.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #4
  %0 = load i32, ptr %dt.addr, align 4, !tbaa !13
  %1 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %call = call i64 @bli_blksz_get_def(i32 noundef %0, ptr noundef %1)
  store i64 %call, ptr %val, align 8, !tbaa !18
  %2 = load i64, ptr %val, align 8, !tbaa !18
  %3 = load i64, ptr %num.addr, align 8, !tbaa !18
  %mul = mul nsw i64 %2, %3
  %4 = load i64, ptr %den.addr, align 8, !tbaa !18
  %div = sdiv i64 %mul, %4
  %5 = load i32, ptr %dt.addr, align 4, !tbaa !13
  %6 = load ptr, ptr %b.addr, align 8, !tbaa !4
  call void @bli_blksz_set_def(i64 noundef %div, i32 noundef %5, ptr noundef %6)
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @bli_blksz_scale_max(i64 noundef %num, i64 noundef %den, i32 noundef %dt, ptr noundef %b) #0 {
entry:
  %num.addr = alloca i64, align 8
  %den.addr = alloca i64, align 8
  %dt.addr = alloca i32, align 4
  %b.addr = alloca ptr, align 8
  %val = alloca i64, align 8
  store i64 %num, ptr %num.addr, align 8, !tbaa !18
  store i64 %den, ptr %den.addr, align 8, !tbaa !18
  store i32 %dt, ptr %dt.addr, align 4, !tbaa !13
  store ptr %b, ptr %b.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #4
  %0 = load i32, ptr %dt.addr, align 4, !tbaa !13
  %1 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %call = call i64 @bli_blksz_get_max(i32 noundef %0, ptr noundef %1)
  store i64 %call, ptr %val, align 8, !tbaa !18
  %2 = load i64, ptr %val, align 8, !tbaa !18
  %3 = load i64, ptr %num.addr, align 8, !tbaa !18
  %mul = mul nsw i64 %2, %3
  %4 = load i64, ptr %den.addr, align 8, !tbaa !18
  %div = sdiv i64 %mul, %4
  %5 = load i32, ptr %dt.addr, align 4, !tbaa !13
  %6 = load ptr, ptr %b.addr, align 8, !tbaa !4
  call void @bli_blksz_set_max(i64 noundef %div, i32 noundef %5, ptr noundef %6)
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @bli_cntx_l3_vir_ukrs_buf(ptr noundef %cntx) #0 {
entry:
  %cntx.addr = alloca ptr, align 8
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %cntx.addr, align 8, !tbaa !4
  %l3_vir_ukrs = getelementptr inbounds %struct.cntx_s, ptr %0, i32 0, i32 3
  %arraydecay = getelementptr inbounds [6 x %struct.func_s], ptr %l3_vir_ukrs, i64 0, i64 0
  ret ptr %arraydecay
}

; Function Attrs: nounwind uwtable
define internal void @bli_obj_apply_conj(i32 noundef %conj, ptr noundef %obj) #0 {
entry:
  %conj.addr = alloca i32, align 4
  %obj.addr = alloca ptr, align 8
  store i32 %conj, ptr %conj.addr, align 4, !tbaa !13
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %info = getelementptr inbounds %struct.obj_s, ptr %0, i32 0, i32 4
  %1 = load i32, ptr %info, align 8, !tbaa !26
  %2 = load i32, ptr %conj.addr, align 4, !tbaa !13
  %xor = xor i32 %1, %2
  %3 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %info1 = getelementptr inbounds %struct.obj_s, ptr %3, i32 0, i32 4
  store i32 %xor, ptr %info1, align 8, !tbaa !26
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @bli_obj_alias_to(ptr noundef %a, ptr noundef %b) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store ptr %b, ptr %b.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %b.addr, align 8, !tbaa !4
  call void @bli_obj_init_full_shallow_copy_of(ptr noundef %0, ptr noundef %1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @bli_dt_proj_to_real(i32 noundef %dt) #0 {
entry:
  %dt.addr = alloca i32, align 4
  store i32 %dt, ptr %dt.addr, align 4, !tbaa !13
  %0 = load i32, ptr %dt.addr, align 4, !tbaa !13
  %and = and i32 %0, -2
  ret i32 %and
}

; Function Attrs: nounwind uwtable
define internal i32 @bli_obj_target_dt(ptr noundef %obj) #0 {
entry:
  %obj.addr = alloca ptr, align 8
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %info = getelementptr inbounds %struct.obj_s, ptr %0, i32 0, i32 4
  %1 = load i32, ptr %info, align 8, !tbaa !26
  %and = and i32 %1, 7168
  %shr = lshr i32 %and, 10
  ret i32 %shr
}

; Function Attrs: nounwind uwtable
define internal i32 @bli_obj_exec_dt(ptr noundef %obj) #0 {
entry:
  %obj.addr = alloca ptr, align 8
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %info = getelementptr inbounds %struct.obj_s, ptr %0, i32 0, i32 4
  %1 = load i32, ptr %info, align 8, !tbaa !26
  %and = and i32 %1, 57344
  %shr = lshr i32 %and, 13
  ret i32 %shr
}

; Function Attrs: nounwind uwtable
define internal i32 @bli_obj_comp_dt(ptr noundef %obj) #0 {
entry:
  %obj.addr = alloca ptr, align 8
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %info = getelementptr inbounds %struct.obj_s, ptr %0, i32 0, i32 4
  %1 = load i32, ptr %info, align 8, !tbaa !26
  %and = and i32 %1, -536870912
  %shr = lshr i32 %and, 29
  ret i32 %shr
}

; Function Attrs: nounwind uwtable
define internal void @bli_obj_set_dt(i32 noundef %dt, ptr noundef %obj) #0 {
entry:
  %dt.addr = alloca i32, align 4
  %obj.addr = alloca ptr, align 8
  store i32 %dt, ptr %dt.addr, align 4, !tbaa !13
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %info = getelementptr inbounds %struct.obj_s, ptr %0, i32 0, i32 4
  %1 = load i32, ptr %info, align 8, !tbaa !26
  %and = and i32 %1, -8
  %2 = load i32, ptr %dt.addr, align 4, !tbaa !13
  %or = or i32 %and, %2
  %3 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %info1 = getelementptr inbounds %struct.obj_s, ptr %3, i32 0, i32 4
  store i32 %or, ptr %info1, align 8, !tbaa !26
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @bli_obj_set_target_dt(i32 noundef %dt, ptr noundef %obj) #0 {
entry:
  %dt.addr = alloca i32, align 4
  %obj.addr = alloca ptr, align 8
  store i32 %dt, ptr %dt.addr, align 4, !tbaa !13
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %info = getelementptr inbounds %struct.obj_s, ptr %0, i32 0, i32 4
  %1 = load i32, ptr %info, align 8, !tbaa !26
  %and = and i32 %1, -7169
  %2 = load i32, ptr %dt.addr, align 4, !tbaa !13
  %shl = shl i32 %2, 10
  %or = or i32 %and, %shl
  %3 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %info1 = getelementptr inbounds %struct.obj_s, ptr %3, i32 0, i32 4
  store i32 %or, ptr %info1, align 8, !tbaa !26
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @bli_obj_elem_size(ptr noundef %obj) #0 {
entry:
  %obj.addr = alloca ptr, align 8
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %elem_size = getelementptr inbounds %struct.obj_s, ptr %0, i32 0, i32 6
  %1 = load i64, ptr %elem_size, align 8, !tbaa !39
  ret i64 %1
}

; Function Attrs: nounwind uwtable
define internal void @bli_obj_set_elem_size(i64 noundef %size, ptr noundef %obj) #0 {
entry:
  %size.addr = alloca i64, align 8
  %obj.addr = alloca ptr, align 8
  store i64 %size, ptr %size.addr, align 8, !tbaa !18
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !4
  %0 = load i64, ptr %size.addr, align 8, !tbaa !18
  %1 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %elem_size = getelementptr inbounds %struct.obj_s, ptr %1, i32 0, i32 6
  store i64 %0, ptr %elem_size, align 8, !tbaa !39
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @bli_obj_init_full_shallow_copy_of(ptr noundef %a, ptr noundef %b) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store ptr %b, ptr %b.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %root = getelementptr inbounds %struct.obj_s, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %root, align 8, !tbaa !40
  %2 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %root1 = getelementptr inbounds %struct.obj_s, ptr %2, i32 0, i32 0
  store ptr %1, ptr %root1, align 8, !tbaa !40
  %3 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %off = getelementptr inbounds %struct.obj_s, ptr %3, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x i64], ptr %off, i64 0, i64 0
  %4 = load i64, ptr %arrayidx, align 8, !tbaa !18
  %5 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %off2 = getelementptr inbounds %struct.obj_s, ptr %5, i32 0, i32 1
  %arrayidx3 = getelementptr inbounds [2 x i64], ptr %off2, i64 0, i64 0
  store i64 %4, ptr %arrayidx3, align 8, !tbaa !18
  %6 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %off4 = getelementptr inbounds %struct.obj_s, ptr %6, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [2 x i64], ptr %off4, i64 0, i64 1
  %7 = load i64, ptr %arrayidx5, align 8, !tbaa !18
  %8 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %off6 = getelementptr inbounds %struct.obj_s, ptr %8, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [2 x i64], ptr %off6, i64 0, i64 1
  store i64 %7, ptr %arrayidx7, align 8, !tbaa !18
  %9 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %dim = getelementptr inbounds %struct.obj_s, ptr %9, i32 0, i32 2
  %arrayidx8 = getelementptr inbounds [2 x i64], ptr %dim, i64 0, i64 0
  %10 = load i64, ptr %arrayidx8, align 8, !tbaa !18
  %11 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %dim9 = getelementptr inbounds %struct.obj_s, ptr %11, i32 0, i32 2
  %arrayidx10 = getelementptr inbounds [2 x i64], ptr %dim9, i64 0, i64 0
  store i64 %10, ptr %arrayidx10, align 8, !tbaa !18
  %12 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %dim11 = getelementptr inbounds %struct.obj_s, ptr %12, i32 0, i32 2
  %arrayidx12 = getelementptr inbounds [2 x i64], ptr %dim11, i64 0, i64 1
  %13 = load i64, ptr %arrayidx12, align 8, !tbaa !18
  %14 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %dim13 = getelementptr inbounds %struct.obj_s, ptr %14, i32 0, i32 2
  %arrayidx14 = getelementptr inbounds [2 x i64], ptr %dim13, i64 0, i64 1
  store i64 %13, ptr %arrayidx14, align 8, !tbaa !18
  %15 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %diag_off = getelementptr inbounds %struct.obj_s, ptr %15, i32 0, i32 3
  %16 = load i64, ptr %diag_off, align 8, !tbaa !34
  %17 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %diag_off15 = getelementptr inbounds %struct.obj_s, ptr %17, i32 0, i32 3
  store i64 %16, ptr %diag_off15, align 8, !tbaa !34
  %18 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %info = getelementptr inbounds %struct.obj_s, ptr %18, i32 0, i32 4
  %19 = load i32, ptr %info, align 8, !tbaa !26
  %20 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %info16 = getelementptr inbounds %struct.obj_s, ptr %20, i32 0, i32 4
  store i32 %19, ptr %info16, align 8, !tbaa !26
  %21 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %info2 = getelementptr inbounds %struct.obj_s, ptr %21, i32 0, i32 5
  %22 = load i32, ptr %info2, align 4, !tbaa !41
  %23 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %info217 = getelementptr inbounds %struct.obj_s, ptr %23, i32 0, i32 5
  store i32 %22, ptr %info217, align 4, !tbaa !41
  %24 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %elem_size = getelementptr inbounds %struct.obj_s, ptr %24, i32 0, i32 6
  %25 = load i64, ptr %elem_size, align 8, !tbaa !39
  %26 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %elem_size18 = getelementptr inbounds %struct.obj_s, ptr %26, i32 0, i32 6
  store i64 %25, ptr %elem_size18, align 8, !tbaa !39
  %27 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %buffer = getelementptr inbounds %struct.obj_s, ptr %27, i32 0, i32 7
  %28 = load ptr, ptr %buffer, align 8, !tbaa !42
  %29 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %buffer19 = getelementptr inbounds %struct.obj_s, ptr %29, i32 0, i32 7
  store ptr %28, ptr %buffer19, align 8, !tbaa !42
  %30 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %rs = getelementptr inbounds %struct.obj_s, ptr %30, i32 0, i32 8
  %31 = load i64, ptr %rs, align 8, !tbaa !32
  %32 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %rs20 = getelementptr inbounds %struct.obj_s, ptr %32, i32 0, i32 8
  store i64 %31, ptr %rs20, align 8, !tbaa !32
  %33 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %cs = getelementptr inbounds %struct.obj_s, ptr %33, i32 0, i32 9
  %34 = load i64, ptr %cs, align 8, !tbaa !33
  %35 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %cs21 = getelementptr inbounds %struct.obj_s, ptr %35, i32 0, i32 9
  store i64 %34, ptr %cs21, align 8, !tbaa !33
  %36 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %is = getelementptr inbounds %struct.obj_s, ptr %36, i32 0, i32 10
  %37 = load i64, ptr %is, align 8, !tbaa !43
  %38 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %is22 = getelementptr inbounds %struct.obj_s, ptr %38, i32 0, i32 10
  store i64 %37, ptr %is22, align 8, !tbaa !43
  %39 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %scalar = getelementptr inbounds %struct.obj_s, ptr %39, i32 0, i32 11
  %40 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %scalar23 = getelementptr inbounds %struct.obj_s, ptr %40, i32 0, i32 11
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %scalar, ptr align 8 %scalar23, i64 16, i1 false), !tbaa.struct !44
  %41 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %m_padded = getelementptr inbounds %struct.obj_s, ptr %41, i32 0, i32 12
  %42 = load i64, ptr %m_padded, align 8, !tbaa !35
  %43 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %m_padded24 = getelementptr inbounds %struct.obj_s, ptr %43, i32 0, i32 12
  store i64 %42, ptr %m_padded24, align 8, !tbaa !35
  %44 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %n_padded = getelementptr inbounds %struct.obj_s, ptr %44, i32 0, i32 13
  %45 = load i64, ptr %n_padded, align 8, !tbaa !36
  %46 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %n_padded25 = getelementptr inbounds %struct.obj_s, ptr %46, i32 0, i32 13
  store i64 %45, ptr %n_padded25, align 8, !tbaa !36
  %47 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %ps = getelementptr inbounds %struct.obj_s, ptr %47, i32 0, i32 14
  %48 = load i64, ptr %ps, align 8, !tbaa !45
  %49 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %ps26 = getelementptr inbounds %struct.obj_s, ptr %49, i32 0, i32 14
  store i64 %48, ptr %ps26, align 8, !tbaa !45
  %50 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %pd = getelementptr inbounds %struct.obj_s, ptr %50, i32 0, i32 15
  %51 = load i64, ptr %pd, align 8, !tbaa !46
  %52 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %pd27 = getelementptr inbounds %struct.obj_s, ptr %52, i32 0, i32 15
  store i64 %51, ptr %pd27, align 8, !tbaa !46
  %53 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %m_panel = getelementptr inbounds %struct.obj_s, ptr %53, i32 0, i32 16
  %54 = load i64, ptr %m_panel, align 8, !tbaa !37
  %55 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %m_panel28 = getelementptr inbounds %struct.obj_s, ptr %55, i32 0, i32 16
  store i64 %54, ptr %m_panel28, align 8, !tbaa !37
  %56 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %n_panel = getelementptr inbounds %struct.obj_s, ptr %56, i32 0, i32 17
  %57 = load i64, ptr %n_panel, align 8, !tbaa !38
  %58 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %n_panel29 = getelementptr inbounds %struct.obj_s, ptr %58, i32 0, i32 17
  store i64 %57, ptr %n_panel29, align 8, !tbaa !38
  ret void
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!8 = !{!9, !9, i64 0}
!9 = !{!"_Bool", !6, i64 0}
!10 = !{i8 0, i8 2}
!11 = !{}
!12 = !{i64 0, i64 4, !13, i64 4, i64 4, !13}
!13 = !{!6, !6, i64 0}
!14 = !{!15, !6, i64 0}
!15 = !{!"mddm_s", !6, i64 0, !6, i64 4}
!16 = !{!15, !6, i64 4}
!17 = !{i64 0, i64 704, !13, i64 704, i64 44, !13, i64 752, i64 704, !13, i64 1456, i64 192, !13, i64 1648, i64 192, !13, i64 1840, i64 24, !13, i64 1864, i64 96, !13, i64 1960, i64 192, !13, i64 2152, i64 96, !13, i64 2248, i64 704, !13, i64 2952, i64 288, !13, i64 3240, i64 36, !13, i64 3280, i64 160, !13, i64 3440, i64 480, !13, i64 3920, i64 1056, !13, i64 4976, i64 1024, !13, i64 6000, i64 4, !13, i64 6004, i64 4, !13, i64 6008, i64 4, !13, i64 6012, i64 4, !13}
!18 = !{!19, !19, i64 0}
!19 = !{!"long", !6, i64 0}
!20 = !{i64 0, i64 32, !13}
!21 = !{i64 0, i64 8, !4, i64 8, i64 16, !13, i64 24, i64 16, !13, i64 40, i64 8, !18, i64 48, i64 4, !22, i64 52, i64 4, !22, i64 56, i64 8, !18, i64 64, i64 8, !4, i64 72, i64 8, !18, i64 80, i64 8, !18, i64 88, i64 8, !18, i64 96, i64 8, !24, i64 104, i64 8, !24, i64 112, i64 8, !18, i64 120, i64 8, !18, i64 128, i64 8, !18, i64 136, i64 8, !18, i64 144, i64 8, !18, i64 152, i64 8, !18}
!22 = !{!23, !23, i64 0}
!23 = !{!"int", !6, i64 0}
!24 = !{!25, !25, i64 0}
!25 = !{!"double", !6, i64 0}
!26 = !{!27, !23, i64 48}
!27 = !{!"obj_s", !5, i64 0, !6, i64 8, !6, i64 24, !19, i64 40, !23, i64 48, !23, i64 52, !19, i64 56, !5, i64 64, !19, i64 72, !19, i64 80, !19, i64 88, !28, i64 96, !19, i64 112, !19, i64 120, !19, i64 128, !19, i64 136, !19, i64 144, !19, i64 152}
!28 = !{!"", !25, i64 0, !25, i64 8}
!29 = !{!30, !6, i64 6004}
!30 = !{!"cntx_s", !6, i64 0, !6, i64 704, !6, i64 752, !6, i64 1456, !6, i64 1648, !6, i64 1840, !6, i64 1864, !6, i64 1960, !6, i64 2152, !6, i64 2248, !6, i64 2952, !6, i64 3240, !6, i64 3280, !6, i64 3440, !6, i64 3920, !6, i64 4976, !6, i64 6000, !6, i64 6004, !6, i64 6008, !6, i64 6012}
!31 = !{!30, !6, i64 6008}
!32 = !{!27, !19, i64 72}
!33 = !{!27, !19, i64 80}
!34 = !{!27, !19, i64 40}
!35 = !{!27, !19, i64 112}
!36 = !{!27, !19, i64 120}
!37 = !{!27, !19, i64 144}
!38 = !{!27, !19, i64 152}
!39 = !{!27, !19, i64 56}
!40 = !{!27, !5, i64 0}
!41 = !{!27, !23, i64 52}
!42 = !{!27, !5, i64 64}
!43 = !{!27, !19, i64 88}
!44 = !{i64 0, i64 8, !24, i64 8, i64 8, !24}
!45 = !{!27, !19, i64 128}
!46 = !{!27, !19, i64 136}

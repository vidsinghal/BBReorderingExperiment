; ModuleID = 'samples/40.bc'
source_filename = "/local-ssd/amdlibflame-otrkevhm552xspevawtkllysqp2goz3p-build/aidengro/spack-stage-amdlibflame-4.1-otrkevhm552xspevawtkllysqp2goz3p/spack-src/src/lapack/red/tridiagut/l/flamec/FLA_Tridiag_UT_l_opt_var2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FLA_Obj_view = type { i64, i64, i64, i64, i64, i64, ptr }
%struct.FLA_Obj_struct = type { i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr, i32, i32 }
%struct.scomplex = type { float, float }
%struct.dcomplex = type { double, double }

@FLA_TWO = external global %struct.FLA_Obj_view, align 8
@FLA_ONE = external global %struct.FLA_Obj_view, align 8
@FLA_ZERO = external global %struct.FLA_Obj_view, align 8
@FLA_MINUS_ONE = external global %struct.FLA_Obj_view, align 8

; Function Attrs: nounwind uwtable
define i32 @FLA_Tridiag_UT_l_opt_var2(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T) #0 {
entry:
  %call = call i32 @FLA_Tridiag_UT_l_step_opt_var2(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @FLA_Tridiag_UT_l_step_opt_var2(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T) #0 {
entry:
  %datatype = alloca i32, align 4
  %m_A = alloca i32, align 4
  %m_T = alloca i32, align 4
  %rs_A = alloca i32, align 4
  %cs_A = alloca i32, align 4
  %rs_T = alloca i32, align 4
  %cs_T = alloca i32, align 4
  %buff_A = alloca ptr, align 8
  %buff_T = alloca ptr, align 8
  %buff_A47 = alloca ptr, align 8
  %buff_T71 = alloca ptr, align 8
  %buff_A97 = alloca ptr, align 8
  %buff_T121 = alloca ptr, align 8
  %buff_A147 = alloca ptr, align 8
  %buff_T171 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %datatype) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %m_A) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %m_T) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %rs_A) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %cs_A) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %rs_T) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %cs_T) #5
  %call = call i32 @FLA_Obj_datatype(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  store i32 %call, ptr %datatype, align 4, !tbaa !4
  %call1 = call i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %conv = trunc i64 %call1 to i32
  store i32 %conv, ptr %m_A, align 4, !tbaa !4
  %call2 = call i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8 %T)
  %conv3 = trunc i64 %call2 to i32
  store i32 %conv3, ptr %m_T, align 4, !tbaa !4
  %call4 = call i64 @FLA_Obj_row_stride(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %conv5 = trunc i64 %call4 to i32
  store i32 %conv5, ptr %rs_A, align 4, !tbaa !4
  %call6 = call i64 @FLA_Obj_col_stride(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %conv7 = trunc i64 %call6 to i32
  store i32 %conv7, ptr %cs_A, align 4, !tbaa !4
  %call8 = call i64 @FLA_Obj_row_stride(ptr noundef byval(%struct.FLA_Obj_view) align 8 %T)
  %conv9 = trunc i64 %call8 to i32
  store i32 %conv9, ptr %rs_T, align 4, !tbaa !4
  %call10 = call i64 @FLA_Obj_col_stride(ptr noundef byval(%struct.FLA_Obj_view) align 8 %T)
  %conv11 = trunc i64 %call10 to i32
  store i32 %conv11, ptr %cs_T, align 4, !tbaa !4
  %0 = load i32, ptr %datatype, align 4, !tbaa !4
  switch i32 %0, label %sw.epilog [
    i32 100, label %sw.bb
    i32 101, label %sw.bb46
    i32 102, label %sw.bb96
    i32 103, label %sw.bb146
  ]

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_A) #5
  %base = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %1 = load ptr, ptr %base, align 8, !tbaa !8
  %datatype12 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %1, i32 0, i32 0
  %2 = load i32, ptr %datatype12, align 8, !tbaa !12
  %cmp = icmp eq i32 %2, 105
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb
  %base14 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %3 = load ptr, ptr %base14, align 8, !tbaa !8
  %buffer = getelementptr inbounds %struct.FLA_Obj_struct, ptr %3, i32 0, i32 12
  %4 = load ptr, ptr %buffer, align 8, !tbaa !14
  %add.ptr = getelementptr inbounds i8, ptr %4, i64 8
  br label %cond.end

cond.false:                                       ; preds = %sw.bb
  %base15 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %5 = load ptr, ptr %base15, align 8, !tbaa !8
  %buffer16 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %5, i32 0, i32 12
  %6 = load ptr, ptr %buffer16, align 8, !tbaa !14
  %offn = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 1
  %7 = load i64, ptr %offn, align 8, !tbaa !15
  %base17 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %8 = load ptr, ptr %base17, align 8, !tbaa !8
  %cs = getelementptr inbounds %struct.FLA_Obj_struct, ptr %8, i32 0, i32 5
  %9 = load i64, ptr %cs, align 8, !tbaa !16
  %mul = mul i64 %7, %9
  %add.ptr18 = getelementptr inbounds float, ptr %6, i64 %mul
  %offm = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 0
  %10 = load i64, ptr %offm, align 8, !tbaa !17
  %base19 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %11 = load ptr, ptr %base19, align 8, !tbaa !8
  %rs = getelementptr inbounds %struct.FLA_Obj_struct, ptr %11, i32 0, i32 4
  %12 = load i64, ptr %rs, align 8, !tbaa !18
  %mul20 = mul i64 %10, %12
  %add.ptr21 = getelementptr inbounds float, ptr %add.ptr18, i64 %mul20
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %add.ptr, %cond.true ], [ %add.ptr21, %cond.false ]
  store ptr %cond, ptr %buff_A, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_T) #5
  %base22 = getelementptr inbounds %struct.FLA_Obj_view, ptr %T, i32 0, i32 6
  %13 = load ptr, ptr %base22, align 8, !tbaa !8
  %datatype23 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %13, i32 0, i32 0
  %14 = load i32, ptr %datatype23, align 8, !tbaa !12
  %cmp24 = icmp eq i32 %14, 105
  br i1 %cmp24, label %cond.true26, label %cond.false30

cond.true26:                                      ; preds = %cond.end
  %base27 = getelementptr inbounds %struct.FLA_Obj_view, ptr %T, i32 0, i32 6
  %15 = load ptr, ptr %base27, align 8, !tbaa !8
  %buffer28 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %15, i32 0, i32 12
  %16 = load ptr, ptr %buffer28, align 8, !tbaa !14
  %add.ptr29 = getelementptr inbounds i8, ptr %16, i64 8
  br label %cond.end43

cond.false30:                                     ; preds = %cond.end
  %base31 = getelementptr inbounds %struct.FLA_Obj_view, ptr %T, i32 0, i32 6
  %17 = load ptr, ptr %base31, align 8, !tbaa !8
  %buffer32 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %17, i32 0, i32 12
  %18 = load ptr, ptr %buffer32, align 8, !tbaa !14
  %offn33 = getelementptr inbounds %struct.FLA_Obj_view, ptr %T, i32 0, i32 1
  %19 = load i64, ptr %offn33, align 8, !tbaa !15
  %base34 = getelementptr inbounds %struct.FLA_Obj_view, ptr %T, i32 0, i32 6
  %20 = load ptr, ptr %base34, align 8, !tbaa !8
  %cs35 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %20, i32 0, i32 5
  %21 = load i64, ptr %cs35, align 8, !tbaa !16
  %mul36 = mul i64 %19, %21
  %add.ptr37 = getelementptr inbounds float, ptr %18, i64 %mul36
  %offm38 = getelementptr inbounds %struct.FLA_Obj_view, ptr %T, i32 0, i32 0
  %22 = load i64, ptr %offm38, align 8, !tbaa !17
  %base39 = getelementptr inbounds %struct.FLA_Obj_view, ptr %T, i32 0, i32 6
  %23 = load ptr, ptr %base39, align 8, !tbaa !8
  %rs40 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %23, i32 0, i32 4
  %24 = load i64, ptr %rs40, align 8, !tbaa !18
  %mul41 = mul i64 %22, %24
  %add.ptr42 = getelementptr inbounds float, ptr %add.ptr37, i64 %mul41
  br label %cond.end43

cond.end43:                                       ; preds = %cond.false30, %cond.true26
  %cond44 = phi ptr [ %add.ptr29, %cond.true26 ], [ %add.ptr42, %cond.false30 ]
  store ptr %cond44, ptr %buff_T, align 8, !tbaa !19
  %25 = load i32, ptr %m_A, align 4, !tbaa !4
  %26 = load i32, ptr %m_T, align 4, !tbaa !4
  %27 = load ptr, ptr %buff_A, align 8, !tbaa !19
  %28 = load i32, ptr %rs_A, align 4, !tbaa !4
  %29 = load i32, ptr %cs_A, align 4, !tbaa !4
  %30 = load ptr, ptr %buff_T, align 8, !tbaa !19
  %31 = load i32, ptr %rs_T, align 4, !tbaa !4
  %32 = load i32, ptr %cs_T, align 4, !tbaa !4
  %call45 = call i32 @FLA_Tridiag_UT_l_step_ops_var2(i32 noundef %25, i32 noundef %26, ptr noundef %27, i32 noundef %28, i32 noundef %29, ptr noundef %30, i32 noundef %31, i32 noundef %32)
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_T) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_A) #5
  br label %sw.epilog

sw.bb46:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_A47) #5
  %base48 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %33 = load ptr, ptr %base48, align 8, !tbaa !8
  %datatype49 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %33, i32 0, i32 0
  %34 = load i32, ptr %datatype49, align 8, !tbaa !12
  %cmp50 = icmp eq i32 %34, 105
  br i1 %cmp50, label %cond.true52, label %cond.false56

cond.true52:                                      ; preds = %sw.bb46
  %base53 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %35 = load ptr, ptr %base53, align 8, !tbaa !8
  %buffer54 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %35, i32 0, i32 12
  %36 = load ptr, ptr %buffer54, align 8, !tbaa !14
  %add.ptr55 = getelementptr inbounds i8, ptr %36, i64 16
  br label %cond.end69

cond.false56:                                     ; preds = %sw.bb46
  %base57 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %37 = load ptr, ptr %base57, align 8, !tbaa !8
  %buffer58 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %37, i32 0, i32 12
  %38 = load ptr, ptr %buffer58, align 8, !tbaa !14
  %offn59 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 1
  %39 = load i64, ptr %offn59, align 8, !tbaa !15
  %base60 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %40 = load ptr, ptr %base60, align 8, !tbaa !8
  %cs61 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %40, i32 0, i32 5
  %41 = load i64, ptr %cs61, align 8, !tbaa !16
  %mul62 = mul i64 %39, %41
  %add.ptr63 = getelementptr inbounds double, ptr %38, i64 %mul62
  %offm64 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 0
  %42 = load i64, ptr %offm64, align 8, !tbaa !17
  %base65 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %43 = load ptr, ptr %base65, align 8, !tbaa !8
  %rs66 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %43, i32 0, i32 4
  %44 = load i64, ptr %rs66, align 8, !tbaa !18
  %mul67 = mul i64 %42, %44
  %add.ptr68 = getelementptr inbounds double, ptr %add.ptr63, i64 %mul67
  br label %cond.end69

cond.end69:                                       ; preds = %cond.false56, %cond.true52
  %cond70 = phi ptr [ %add.ptr55, %cond.true52 ], [ %add.ptr68, %cond.false56 ]
  store ptr %cond70, ptr %buff_A47, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_T71) #5
  %base72 = getelementptr inbounds %struct.FLA_Obj_view, ptr %T, i32 0, i32 6
  %45 = load ptr, ptr %base72, align 8, !tbaa !8
  %datatype73 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %45, i32 0, i32 0
  %46 = load i32, ptr %datatype73, align 8, !tbaa !12
  %cmp74 = icmp eq i32 %46, 105
  br i1 %cmp74, label %cond.true76, label %cond.false80

cond.true76:                                      ; preds = %cond.end69
  %base77 = getelementptr inbounds %struct.FLA_Obj_view, ptr %T, i32 0, i32 6
  %47 = load ptr, ptr %base77, align 8, !tbaa !8
  %buffer78 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %47, i32 0, i32 12
  %48 = load ptr, ptr %buffer78, align 8, !tbaa !14
  %add.ptr79 = getelementptr inbounds i8, ptr %48, i64 16
  br label %cond.end93

cond.false80:                                     ; preds = %cond.end69
  %base81 = getelementptr inbounds %struct.FLA_Obj_view, ptr %T, i32 0, i32 6
  %49 = load ptr, ptr %base81, align 8, !tbaa !8
  %buffer82 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %49, i32 0, i32 12
  %50 = load ptr, ptr %buffer82, align 8, !tbaa !14
  %offn83 = getelementptr inbounds %struct.FLA_Obj_view, ptr %T, i32 0, i32 1
  %51 = load i64, ptr %offn83, align 8, !tbaa !15
  %base84 = getelementptr inbounds %struct.FLA_Obj_view, ptr %T, i32 0, i32 6
  %52 = load ptr, ptr %base84, align 8, !tbaa !8
  %cs85 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %52, i32 0, i32 5
  %53 = load i64, ptr %cs85, align 8, !tbaa !16
  %mul86 = mul i64 %51, %53
  %add.ptr87 = getelementptr inbounds double, ptr %50, i64 %mul86
  %offm88 = getelementptr inbounds %struct.FLA_Obj_view, ptr %T, i32 0, i32 0
  %54 = load i64, ptr %offm88, align 8, !tbaa !17
  %base89 = getelementptr inbounds %struct.FLA_Obj_view, ptr %T, i32 0, i32 6
  %55 = load ptr, ptr %base89, align 8, !tbaa !8
  %rs90 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %55, i32 0, i32 4
  %56 = load i64, ptr %rs90, align 8, !tbaa !18
  %mul91 = mul i64 %54, %56
  %add.ptr92 = getelementptr inbounds double, ptr %add.ptr87, i64 %mul91
  br label %cond.end93

cond.end93:                                       ; preds = %cond.false80, %cond.true76
  %cond94 = phi ptr [ %add.ptr79, %cond.true76 ], [ %add.ptr92, %cond.false80 ]
  store ptr %cond94, ptr %buff_T71, align 8, !tbaa !19
  %57 = load i32, ptr %m_A, align 4, !tbaa !4
  %58 = load i32, ptr %m_T, align 4, !tbaa !4
  %59 = load ptr, ptr %buff_A47, align 8, !tbaa !19
  %60 = load i32, ptr %rs_A, align 4, !tbaa !4
  %61 = load i32, ptr %cs_A, align 4, !tbaa !4
  %62 = load ptr, ptr %buff_T71, align 8, !tbaa !19
  %63 = load i32, ptr %rs_T, align 4, !tbaa !4
  %64 = load i32, ptr %cs_T, align 4, !tbaa !4
  %call95 = call i32 @FLA_Tridiag_UT_l_step_opd_var2(i32 noundef %57, i32 noundef %58, ptr noundef %59, i32 noundef %60, i32 noundef %61, ptr noundef %62, i32 noundef %63, i32 noundef %64)
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_T71) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_A47) #5
  br label %sw.epilog

sw.bb96:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_A97) #5
  %base98 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %65 = load ptr, ptr %base98, align 8, !tbaa !8
  %datatype99 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %65, i32 0, i32 0
  %66 = load i32, ptr %datatype99, align 8, !tbaa !12
  %cmp100 = icmp eq i32 %66, 105
  br i1 %cmp100, label %cond.true102, label %cond.false106

cond.true102:                                     ; preds = %sw.bb96
  %base103 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %67 = load ptr, ptr %base103, align 8, !tbaa !8
  %buffer104 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %67, i32 0, i32 12
  %68 = load ptr, ptr %buffer104, align 8, !tbaa !14
  %add.ptr105 = getelementptr inbounds i8, ptr %68, i64 24
  br label %cond.end119

cond.false106:                                    ; preds = %sw.bb96
  %base107 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %69 = load ptr, ptr %base107, align 8, !tbaa !8
  %buffer108 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %69, i32 0, i32 12
  %70 = load ptr, ptr %buffer108, align 8, !tbaa !14
  %offn109 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 1
  %71 = load i64, ptr %offn109, align 8, !tbaa !15
  %base110 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %72 = load ptr, ptr %base110, align 8, !tbaa !8
  %cs111 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %72, i32 0, i32 5
  %73 = load i64, ptr %cs111, align 8, !tbaa !16
  %mul112 = mul i64 %71, %73
  %add.ptr113 = getelementptr inbounds %struct.scomplex, ptr %70, i64 %mul112
  %offm114 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 0
  %74 = load i64, ptr %offm114, align 8, !tbaa !17
  %base115 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %75 = load ptr, ptr %base115, align 8, !tbaa !8
  %rs116 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %75, i32 0, i32 4
  %76 = load i64, ptr %rs116, align 8, !tbaa !18
  %mul117 = mul i64 %74, %76
  %add.ptr118 = getelementptr inbounds %struct.scomplex, ptr %add.ptr113, i64 %mul117
  br label %cond.end119

cond.end119:                                      ; preds = %cond.false106, %cond.true102
  %cond120 = phi ptr [ %add.ptr105, %cond.true102 ], [ %add.ptr118, %cond.false106 ]
  store ptr %cond120, ptr %buff_A97, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_T121) #5
  %base122 = getelementptr inbounds %struct.FLA_Obj_view, ptr %T, i32 0, i32 6
  %77 = load ptr, ptr %base122, align 8, !tbaa !8
  %datatype123 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %77, i32 0, i32 0
  %78 = load i32, ptr %datatype123, align 8, !tbaa !12
  %cmp124 = icmp eq i32 %78, 105
  br i1 %cmp124, label %cond.true126, label %cond.false130

cond.true126:                                     ; preds = %cond.end119
  %base127 = getelementptr inbounds %struct.FLA_Obj_view, ptr %T, i32 0, i32 6
  %79 = load ptr, ptr %base127, align 8, !tbaa !8
  %buffer128 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %79, i32 0, i32 12
  %80 = load ptr, ptr %buffer128, align 8, !tbaa !14
  %add.ptr129 = getelementptr inbounds i8, ptr %80, i64 24
  br label %cond.end143

cond.false130:                                    ; preds = %cond.end119
  %base131 = getelementptr inbounds %struct.FLA_Obj_view, ptr %T, i32 0, i32 6
  %81 = load ptr, ptr %base131, align 8, !tbaa !8
  %buffer132 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %81, i32 0, i32 12
  %82 = load ptr, ptr %buffer132, align 8, !tbaa !14
  %offn133 = getelementptr inbounds %struct.FLA_Obj_view, ptr %T, i32 0, i32 1
  %83 = load i64, ptr %offn133, align 8, !tbaa !15
  %base134 = getelementptr inbounds %struct.FLA_Obj_view, ptr %T, i32 0, i32 6
  %84 = load ptr, ptr %base134, align 8, !tbaa !8
  %cs135 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %84, i32 0, i32 5
  %85 = load i64, ptr %cs135, align 8, !tbaa !16
  %mul136 = mul i64 %83, %85
  %add.ptr137 = getelementptr inbounds %struct.scomplex, ptr %82, i64 %mul136
  %offm138 = getelementptr inbounds %struct.FLA_Obj_view, ptr %T, i32 0, i32 0
  %86 = load i64, ptr %offm138, align 8, !tbaa !17
  %base139 = getelementptr inbounds %struct.FLA_Obj_view, ptr %T, i32 0, i32 6
  %87 = load ptr, ptr %base139, align 8, !tbaa !8
  %rs140 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %87, i32 0, i32 4
  %88 = load i64, ptr %rs140, align 8, !tbaa !18
  %mul141 = mul i64 %86, %88
  %add.ptr142 = getelementptr inbounds %struct.scomplex, ptr %add.ptr137, i64 %mul141
  br label %cond.end143

cond.end143:                                      ; preds = %cond.false130, %cond.true126
  %cond144 = phi ptr [ %add.ptr129, %cond.true126 ], [ %add.ptr142, %cond.false130 ]
  store ptr %cond144, ptr %buff_T121, align 8, !tbaa !19
  %89 = load i32, ptr %m_A, align 4, !tbaa !4
  %90 = load i32, ptr %m_T, align 4, !tbaa !4
  %91 = load ptr, ptr %buff_A97, align 8, !tbaa !19
  %92 = load i32, ptr %rs_A, align 4, !tbaa !4
  %93 = load i32, ptr %cs_A, align 4, !tbaa !4
  %94 = load ptr, ptr %buff_T121, align 8, !tbaa !19
  %95 = load i32, ptr %rs_T, align 4, !tbaa !4
  %96 = load i32, ptr %cs_T, align 4, !tbaa !4
  %call145 = call i32 @FLA_Tridiag_UT_l_step_opc_var2(i32 noundef %89, i32 noundef %90, ptr noundef %91, i32 noundef %92, i32 noundef %93, ptr noundef %94, i32 noundef %95, i32 noundef %96)
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_T121) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_A97) #5
  br label %sw.epilog

sw.bb146:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_A147) #5
  %base148 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %97 = load ptr, ptr %base148, align 8, !tbaa !8
  %datatype149 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %97, i32 0, i32 0
  %98 = load i32, ptr %datatype149, align 8, !tbaa !12
  %cmp150 = icmp eq i32 %98, 105
  br i1 %cmp150, label %cond.true152, label %cond.false156

cond.true152:                                     ; preds = %sw.bb146
  %base153 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %99 = load ptr, ptr %base153, align 8, !tbaa !8
  %buffer154 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %99, i32 0, i32 12
  %100 = load ptr, ptr %buffer154, align 8, !tbaa !14
  %add.ptr155 = getelementptr inbounds i8, ptr %100, i64 32
  br label %cond.end169

cond.false156:                                    ; preds = %sw.bb146
  %base157 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %101 = load ptr, ptr %base157, align 8, !tbaa !8
  %buffer158 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %101, i32 0, i32 12
  %102 = load ptr, ptr %buffer158, align 8, !tbaa !14
  %offn159 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 1
  %103 = load i64, ptr %offn159, align 8, !tbaa !15
  %base160 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %104 = load ptr, ptr %base160, align 8, !tbaa !8
  %cs161 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %104, i32 0, i32 5
  %105 = load i64, ptr %cs161, align 8, !tbaa !16
  %mul162 = mul i64 %103, %105
  %add.ptr163 = getelementptr inbounds %struct.dcomplex, ptr %102, i64 %mul162
  %offm164 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 0
  %106 = load i64, ptr %offm164, align 8, !tbaa !17
  %base165 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %107 = load ptr, ptr %base165, align 8, !tbaa !8
  %rs166 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %107, i32 0, i32 4
  %108 = load i64, ptr %rs166, align 8, !tbaa !18
  %mul167 = mul i64 %106, %108
  %add.ptr168 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr163, i64 %mul167
  br label %cond.end169

cond.end169:                                      ; preds = %cond.false156, %cond.true152
  %cond170 = phi ptr [ %add.ptr155, %cond.true152 ], [ %add.ptr168, %cond.false156 ]
  store ptr %cond170, ptr %buff_A147, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_T171) #5
  %base172 = getelementptr inbounds %struct.FLA_Obj_view, ptr %T, i32 0, i32 6
  %109 = load ptr, ptr %base172, align 8, !tbaa !8
  %datatype173 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %109, i32 0, i32 0
  %110 = load i32, ptr %datatype173, align 8, !tbaa !12
  %cmp174 = icmp eq i32 %110, 105
  br i1 %cmp174, label %cond.true176, label %cond.false180

cond.true176:                                     ; preds = %cond.end169
  %base177 = getelementptr inbounds %struct.FLA_Obj_view, ptr %T, i32 0, i32 6
  %111 = load ptr, ptr %base177, align 8, !tbaa !8
  %buffer178 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %111, i32 0, i32 12
  %112 = load ptr, ptr %buffer178, align 8, !tbaa !14
  %add.ptr179 = getelementptr inbounds i8, ptr %112, i64 32
  br label %cond.end193

cond.false180:                                    ; preds = %cond.end169
  %base181 = getelementptr inbounds %struct.FLA_Obj_view, ptr %T, i32 0, i32 6
  %113 = load ptr, ptr %base181, align 8, !tbaa !8
  %buffer182 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %113, i32 0, i32 12
  %114 = load ptr, ptr %buffer182, align 8, !tbaa !14
  %offn183 = getelementptr inbounds %struct.FLA_Obj_view, ptr %T, i32 0, i32 1
  %115 = load i64, ptr %offn183, align 8, !tbaa !15
  %base184 = getelementptr inbounds %struct.FLA_Obj_view, ptr %T, i32 0, i32 6
  %116 = load ptr, ptr %base184, align 8, !tbaa !8
  %cs185 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %116, i32 0, i32 5
  %117 = load i64, ptr %cs185, align 8, !tbaa !16
  %mul186 = mul i64 %115, %117
  %add.ptr187 = getelementptr inbounds %struct.dcomplex, ptr %114, i64 %mul186
  %offm188 = getelementptr inbounds %struct.FLA_Obj_view, ptr %T, i32 0, i32 0
  %118 = load i64, ptr %offm188, align 8, !tbaa !17
  %base189 = getelementptr inbounds %struct.FLA_Obj_view, ptr %T, i32 0, i32 6
  %119 = load ptr, ptr %base189, align 8, !tbaa !8
  %rs190 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %119, i32 0, i32 4
  %120 = load i64, ptr %rs190, align 8, !tbaa !18
  %mul191 = mul i64 %118, %120
  %add.ptr192 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr187, i64 %mul191
  br label %cond.end193

cond.end193:                                      ; preds = %cond.false180, %cond.true176
  %cond194 = phi ptr [ %add.ptr179, %cond.true176 ], [ %add.ptr192, %cond.false180 ]
  store ptr %cond194, ptr %buff_T171, align 8, !tbaa !19
  %121 = load i32, ptr %m_A, align 4, !tbaa !4
  %122 = load i32, ptr %m_T, align 4, !tbaa !4
  %123 = load ptr, ptr %buff_A147, align 8, !tbaa !19
  %124 = load i32, ptr %rs_A, align 4, !tbaa !4
  %125 = load i32, ptr %cs_A, align 4, !tbaa !4
  %126 = load ptr, ptr %buff_T171, align 8, !tbaa !19
  %127 = load i32, ptr %rs_T, align 4, !tbaa !4
  %128 = load i32, ptr %cs_T, align 4, !tbaa !4
  %call195 = call i32 @FLA_Tridiag_UT_l_step_opz_var2(i32 noundef %121, i32 noundef %122, ptr noundef %123, i32 noundef %124, i32 noundef %125, ptr noundef %126, i32 noundef %127, i32 noundef %128)
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_T171) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_A147) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %cond.end193, %cond.end143, %cond.end93, %cond.end43
  call void @llvm.lifetime.end.p0(i64 4, ptr %cs_T) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %rs_T) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %cs_A) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %rs_A) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %m_T) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %m_A) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %datatype) #5
  ret i32 -1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @FLA_Obj_datatype(ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i64 @FLA_Obj_row_stride(ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i64 @FLA_Obj_col_stride(ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

; Function Attrs: nounwind uwtable
define i32 @FLA_Tridiag_UT_l_step_ops_var2(i32 noundef %m_A, i32 noundef %m_T, ptr noundef %buff_A, i32 noundef %rs_A, i32 noundef %cs_A, ptr noundef %buff_T, i32 noundef %rs_T, i32 noundef %cs_T) #0 {
entry:
  %m_A.addr = alloca i32, align 4
  %m_T.addr = alloca i32, align 4
  %buff_A.addr = alloca ptr, align 8
  %rs_A.addr = alloca i32, align 4
  %cs_A.addr = alloca i32, align 4
  %buff_T.addr = alloca ptr, align 8
  %rs_T.addr = alloca i32, align 4
  %cs_T.addr = alloca i32, align 4
  %buff_2 = alloca ptr, align 8
  %buff_1 = alloca ptr, align 8
  %buff_0 = alloca ptr, align 8
  %buff_m1 = alloca ptr, align 8
  %first_elem = alloca float, align 4
  %beta = alloca float, align 4
  %inv_tau11 = alloca float, align 4
  %minus_inv_tau11 = alloca float, align 4
  %minus_upsilon11 = alloca float, align 4
  %minus_conj_upsilon11 = alloca float, align 4
  %minus_zeta11 = alloca float, align 4
  %minus_conj_zeta11 = alloca float, align 4
  %i = alloca i32, align 4
  %b_alg = alloca i32, align 4
  %buff_u = alloca ptr, align 8
  %buff_z = alloca ptr, align 8
  %buff_w = alloca ptr, align 8
  %inc_u = alloca i32, align 4
  %inc_z = alloca i32, align 4
  %inc_w = alloca i32, align 4
  %A20 = alloca ptr, align 8
  %alpha11 = alloca ptr, align 8
  %a21 = alloca ptr, align 8
  %A22 = alloca ptr, align 8
  %t01 = alloca ptr, align 8
  %tau11 = alloca ptr, align 8
  %upsilon11 = alloca ptr, align 8
  %u21 = alloca ptr, align 8
  %zeta11 = alloca ptr, align 8
  %z21 = alloca ptr, align 8
  %w21 = alloca ptr, align 8
  %a21_t = alloca ptr, align 8
  %a21_b = alloca ptr, align 8
  %m_ahead = alloca i32, align 4
  %m_behind = alloca i32, align 4
  %n_behind = alloca i32, align 4
  store i32 %m_A, ptr %m_A.addr, align 4, !tbaa !4
  store i32 %m_T, ptr %m_T.addr, align 4, !tbaa !4
  store ptr %buff_A, ptr %buff_A.addr, align 8, !tbaa !19
  store i32 %rs_A, ptr %rs_A.addr, align 4, !tbaa !4
  store i32 %cs_A, ptr %cs_A.addr, align 4, !tbaa !4
  store ptr %buff_T, ptr %buff_T.addr, align 8, !tbaa !19
  store i32 %rs_T, ptr %rs_T.addr, align 4, !tbaa !4
  store i32 %cs_T, ptr %cs_T.addr, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_2) #5
  %0 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_TWO, i32 0, i32 6), align 8, !tbaa !8
  %datatype = getelementptr inbounds %struct.FLA_Obj_struct, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %datatype, align 8, !tbaa !12
  %cmp = icmp eq i32 %1, 105
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_TWO, i32 0, i32 6), align 8, !tbaa !8
  %buffer = getelementptr inbounds %struct.FLA_Obj_struct, ptr %2, i32 0, i32 12
  %3 = load ptr, ptr %buffer, align 8, !tbaa !14
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_TWO, i32 0, i32 6), align 8, !tbaa !8
  %buffer1 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %4, i32 0, i32 12
  %5 = load ptr, ptr %buffer1, align 8, !tbaa !14
  %6 = load i64, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_TWO, i32 0, i32 1), align 8, !tbaa !15
  %7 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_TWO, i32 0, i32 6), align 8, !tbaa !8
  %cs = getelementptr inbounds %struct.FLA_Obj_struct, ptr %7, i32 0, i32 5
  %8 = load i64, ptr %cs, align 8, !tbaa !16
  %mul = mul i64 %6, %8
  %add.ptr2 = getelementptr inbounds float, ptr %5, i64 %mul
  %9 = load i64, ptr @FLA_TWO, align 8, !tbaa !17
  %10 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_TWO, i32 0, i32 6), align 8, !tbaa !8
  %rs = getelementptr inbounds %struct.FLA_Obj_struct, ptr %10, i32 0, i32 4
  %11 = load i64, ptr %rs, align 8, !tbaa !18
  %mul3 = mul i64 %9, %11
  %add.ptr4 = getelementptr inbounds float, ptr %add.ptr2, i64 %mul3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %add.ptr, %cond.true ], [ %add.ptr4, %cond.false ]
  store ptr %cond, ptr %buff_2, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_1) #5
  %12 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8, !tbaa !8
  %datatype5 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %12, i32 0, i32 0
  %13 = load i32, ptr %datatype5, align 8, !tbaa !12
  %cmp6 = icmp eq i32 %13, 105
  br i1 %cmp6, label %cond.true7, label %cond.false10

cond.true7:                                       ; preds = %cond.end
  %14 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8, !tbaa !8
  %buffer8 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %14, i32 0, i32 12
  %15 = load ptr, ptr %buffer8, align 8, !tbaa !14
  %add.ptr9 = getelementptr inbounds i8, ptr %15, i64 8
  br label %cond.end18

cond.false10:                                     ; preds = %cond.end
  %16 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8, !tbaa !8
  %buffer11 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %16, i32 0, i32 12
  %17 = load ptr, ptr %buffer11, align 8, !tbaa !14
  %18 = load i64, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 1), align 8, !tbaa !15
  %19 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8, !tbaa !8
  %cs12 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %19, i32 0, i32 5
  %20 = load i64, ptr %cs12, align 8, !tbaa !16
  %mul13 = mul i64 %18, %20
  %add.ptr14 = getelementptr inbounds float, ptr %17, i64 %mul13
  %21 = load i64, ptr @FLA_ONE, align 8, !tbaa !17
  %22 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8, !tbaa !8
  %rs15 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %22, i32 0, i32 4
  %23 = load i64, ptr %rs15, align 8, !tbaa !18
  %mul16 = mul i64 %21, %23
  %add.ptr17 = getelementptr inbounds float, ptr %add.ptr14, i64 %mul16
  br label %cond.end18

cond.end18:                                       ; preds = %cond.false10, %cond.true7
  %cond19 = phi ptr [ %add.ptr9, %cond.true7 ], [ %add.ptr17, %cond.false10 ]
  store ptr %cond19, ptr %buff_1, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_0) #5
  %24 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8, !tbaa !8
  %datatype20 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %24, i32 0, i32 0
  %25 = load i32, ptr %datatype20, align 8, !tbaa !12
  %cmp21 = icmp eq i32 %25, 105
  br i1 %cmp21, label %cond.true22, label %cond.false25

cond.true22:                                      ; preds = %cond.end18
  %26 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8, !tbaa !8
  %buffer23 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %26, i32 0, i32 12
  %27 = load ptr, ptr %buffer23, align 8, !tbaa !14
  %add.ptr24 = getelementptr inbounds i8, ptr %27, i64 8
  br label %cond.end33

cond.false25:                                     ; preds = %cond.end18
  %28 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8, !tbaa !8
  %buffer26 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %28, i32 0, i32 12
  %29 = load ptr, ptr %buffer26, align 8, !tbaa !14
  %30 = load i64, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 1), align 8, !tbaa !15
  %31 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8, !tbaa !8
  %cs27 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %31, i32 0, i32 5
  %32 = load i64, ptr %cs27, align 8, !tbaa !16
  %mul28 = mul i64 %30, %32
  %add.ptr29 = getelementptr inbounds float, ptr %29, i64 %mul28
  %33 = load i64, ptr @FLA_ZERO, align 8, !tbaa !17
  %34 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8, !tbaa !8
  %rs30 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %34, i32 0, i32 4
  %35 = load i64, ptr %rs30, align 8, !tbaa !18
  %mul31 = mul i64 %33, %35
  %add.ptr32 = getelementptr inbounds float, ptr %add.ptr29, i64 %mul31
  br label %cond.end33

cond.end33:                                       ; preds = %cond.false25, %cond.true22
  %cond34 = phi ptr [ %add.ptr24, %cond.true22 ], [ %add.ptr32, %cond.false25 ]
  store ptr %cond34, ptr %buff_0, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_m1) #5
  %36 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8, !tbaa !8
  %datatype35 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %36, i32 0, i32 0
  %37 = load i32, ptr %datatype35, align 8, !tbaa !12
  %cmp36 = icmp eq i32 %37, 105
  br i1 %cmp36, label %cond.true37, label %cond.false40

cond.true37:                                      ; preds = %cond.end33
  %38 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8, !tbaa !8
  %buffer38 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %38, i32 0, i32 12
  %39 = load ptr, ptr %buffer38, align 8, !tbaa !14
  %add.ptr39 = getelementptr inbounds i8, ptr %39, i64 8
  br label %cond.end48

cond.false40:                                     ; preds = %cond.end33
  %40 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8, !tbaa !8
  %buffer41 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %40, i32 0, i32 12
  %41 = load ptr, ptr %buffer41, align 8, !tbaa !14
  %42 = load i64, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 1), align 8, !tbaa !15
  %43 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8, !tbaa !8
  %cs42 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %43, i32 0, i32 5
  %44 = load i64, ptr %cs42, align 8, !tbaa !16
  %mul43 = mul i64 %42, %44
  %add.ptr44 = getelementptr inbounds float, ptr %41, i64 %mul43
  %45 = load i64, ptr @FLA_MINUS_ONE, align 8, !tbaa !17
  %46 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8, !tbaa !8
  %rs45 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %46, i32 0, i32 4
  %47 = load i64, ptr %rs45, align 8, !tbaa !18
  %mul46 = mul i64 %45, %47
  %add.ptr47 = getelementptr inbounds float, ptr %add.ptr44, i64 %mul46
  br label %cond.end48

cond.end48:                                       ; preds = %cond.false40, %cond.true37
  %cond49 = phi ptr [ %add.ptr39, %cond.true37 ], [ %add.ptr47, %cond.false40 ]
  store ptr %cond49, ptr %buff_m1, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 4, ptr %first_elem) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %beta) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %inv_tau11) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %minus_inv_tau11) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %minus_upsilon11) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %minus_conj_upsilon11) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %minus_zeta11) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %minus_conj_zeta11) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %b_alg) #5
  %48 = load i32, ptr %m_T.addr, align 4, !tbaa !4
  store i32 %48, ptr %b_alg, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_u) #5
  %49 = load i32, ptr %m_A.addr, align 4, !tbaa !4
  %conv = sext i32 %49 to i64
  %mul50 = mul i64 %conv, 4
  %call = call ptr @FLA_malloc(i64 noundef %mul50)
  store ptr %call, ptr %buff_u, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_z) #5
  %50 = load i32, ptr %m_A.addr, align 4, !tbaa !4
  %conv51 = sext i32 %50 to i64
  %mul52 = mul i64 %conv51, 4
  %call53 = call ptr @FLA_malloc(i64 noundef %mul52)
  store ptr %call53, ptr %buff_z, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_w) #5
  %51 = load i32, ptr %m_A.addr, align 4, !tbaa !4
  %conv54 = sext i32 %51 to i64
  %mul55 = mul i64 %conv54, 4
  %call56 = call ptr @FLA_malloc(i64 noundef %mul55)
  store ptr %call56, ptr %buff_w, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 4, ptr %inc_u) #5
  store i32 1, ptr %inc_u, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %inc_z) #5
  store i32 1, ptr %inc_z, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %inc_w) #5
  store i32 1, ptr %inc_w, align 4, !tbaa !4
  %52 = load ptr, ptr %buff_0, align 8, !tbaa !19
  %53 = load float, ptr %52, align 4, !tbaa !20
  store float %53, ptr %first_elem, align 4, !tbaa !20
  %54 = load ptr, ptr %buff_0, align 8, !tbaa !19
  %55 = load float, ptr %54, align 4, !tbaa !20
  store float %55, ptr %minus_inv_tau11, align 4, !tbaa !20
  store i32 0, ptr %i, align 4, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end48
  %56 = load i32, ptr %i, align 4, !tbaa !4
  %57 = load i32, ptr %b_alg, align 4, !tbaa !4
  %cmp57 = icmp slt i32 %56, %57
  br i1 %cmp57, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %A20) #5
  %58 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %59 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul59 = mul nsw i32 0, %59
  %idx.ext = sext i32 %mul59 to i64
  %add.ptr60 = getelementptr inbounds float, ptr %58, i64 %idx.ext
  %60 = load i32, ptr %i, align 4, !tbaa !4
  %add = add nsw i32 %60, 1
  %61 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul61 = mul nsw i32 %add, %61
  %idx.ext62 = sext i32 %mul61 to i64
  %add.ptr63 = getelementptr inbounds float, ptr %add.ptr60, i64 %idx.ext62
  store ptr %add.ptr63, ptr %A20, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %alpha11) #5
  %62 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %63 = load i32, ptr %i, align 4, !tbaa !4
  %64 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul64 = mul nsw i32 %63, %64
  %idx.ext65 = sext i32 %mul64 to i64
  %add.ptr66 = getelementptr inbounds float, ptr %62, i64 %idx.ext65
  %65 = load i32, ptr %i, align 4, !tbaa !4
  %66 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul67 = mul nsw i32 %65, %66
  %idx.ext68 = sext i32 %mul67 to i64
  %add.ptr69 = getelementptr inbounds float, ptr %add.ptr66, i64 %idx.ext68
  store ptr %add.ptr69, ptr %alpha11, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %a21) #5
  %67 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %68 = load i32, ptr %i, align 4, !tbaa !4
  %69 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul70 = mul nsw i32 %68, %69
  %idx.ext71 = sext i32 %mul70 to i64
  %add.ptr72 = getelementptr inbounds float, ptr %67, i64 %idx.ext71
  %70 = load i32, ptr %i, align 4, !tbaa !4
  %add73 = add nsw i32 %70, 1
  %71 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul74 = mul nsw i32 %add73, %71
  %idx.ext75 = sext i32 %mul74 to i64
  %add.ptr76 = getelementptr inbounds float, ptr %add.ptr72, i64 %idx.ext75
  store ptr %add.ptr76, ptr %a21, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %A22) #5
  %72 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %73 = load i32, ptr %i, align 4, !tbaa !4
  %add77 = add nsw i32 %73, 1
  %74 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul78 = mul nsw i32 %add77, %74
  %idx.ext79 = sext i32 %mul78 to i64
  %add.ptr80 = getelementptr inbounds float, ptr %72, i64 %idx.ext79
  %75 = load i32, ptr %i, align 4, !tbaa !4
  %add81 = add nsw i32 %75, 1
  %76 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul82 = mul nsw i32 %add81, %76
  %idx.ext83 = sext i32 %mul82 to i64
  %add.ptr84 = getelementptr inbounds float, ptr %add.ptr80, i64 %idx.ext83
  store ptr %add.ptr84, ptr %A22, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %t01) #5
  %77 = load ptr, ptr %buff_T.addr, align 8, !tbaa !19
  %78 = load i32, ptr %i, align 4, !tbaa !4
  %79 = load i32, ptr %cs_T.addr, align 4, !tbaa !4
  %mul85 = mul nsw i32 %78, %79
  %idx.ext86 = sext i32 %mul85 to i64
  %add.ptr87 = getelementptr inbounds float, ptr %77, i64 %idx.ext86
  %80 = load i32, ptr %rs_T.addr, align 4, !tbaa !4
  %mul88 = mul nsw i32 0, %80
  %idx.ext89 = sext i32 %mul88 to i64
  %add.ptr90 = getelementptr inbounds float, ptr %add.ptr87, i64 %idx.ext89
  store ptr %add.ptr90, ptr %t01, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %tau11) #5
  %81 = load ptr, ptr %buff_T.addr, align 8, !tbaa !19
  %82 = load i32, ptr %i, align 4, !tbaa !4
  %83 = load i32, ptr %cs_T.addr, align 4, !tbaa !4
  %mul91 = mul nsw i32 %82, %83
  %idx.ext92 = sext i32 %mul91 to i64
  %add.ptr93 = getelementptr inbounds float, ptr %81, i64 %idx.ext92
  %84 = load i32, ptr %i, align 4, !tbaa !4
  %85 = load i32, ptr %rs_T.addr, align 4, !tbaa !4
  %mul94 = mul nsw i32 %84, %85
  %idx.ext95 = sext i32 %mul94 to i64
  %add.ptr96 = getelementptr inbounds float, ptr %add.ptr93, i64 %idx.ext95
  store ptr %add.ptr96, ptr %tau11, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %upsilon11) #5
  %86 = load ptr, ptr %buff_u, align 8, !tbaa !19
  %87 = load i32, ptr %i, align 4, !tbaa !4
  %88 = load i32, ptr %inc_u, align 4, !tbaa !4
  %mul97 = mul nsw i32 %87, %88
  %idx.ext98 = sext i32 %mul97 to i64
  %add.ptr99 = getelementptr inbounds float, ptr %86, i64 %idx.ext98
  store ptr %add.ptr99, ptr %upsilon11, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %u21) #5
  %89 = load ptr, ptr %buff_u, align 8, !tbaa !19
  %90 = load i32, ptr %i, align 4, !tbaa !4
  %add100 = add nsw i32 %90, 1
  %91 = load i32, ptr %inc_u, align 4, !tbaa !4
  %mul101 = mul nsw i32 %add100, %91
  %idx.ext102 = sext i32 %mul101 to i64
  %add.ptr103 = getelementptr inbounds float, ptr %89, i64 %idx.ext102
  store ptr %add.ptr103, ptr %u21, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %zeta11) #5
  %92 = load ptr, ptr %buff_z, align 8, !tbaa !19
  %93 = load i32, ptr %i, align 4, !tbaa !4
  %94 = load i32, ptr %inc_z, align 4, !tbaa !4
  %mul104 = mul nsw i32 %93, %94
  %idx.ext105 = sext i32 %mul104 to i64
  %add.ptr106 = getelementptr inbounds float, ptr %92, i64 %idx.ext105
  store ptr %add.ptr106, ptr %zeta11, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %z21) #5
  %95 = load ptr, ptr %buff_z, align 8, !tbaa !19
  %96 = load i32, ptr %i, align 4, !tbaa !4
  %add107 = add nsw i32 %96, 1
  %97 = load i32, ptr %inc_z, align 4, !tbaa !4
  %mul108 = mul nsw i32 %add107, %97
  %idx.ext109 = sext i32 %mul108 to i64
  %add.ptr110 = getelementptr inbounds float, ptr %95, i64 %idx.ext109
  store ptr %add.ptr110, ptr %z21, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %w21) #5
  %98 = load ptr, ptr %buff_w, align 8, !tbaa !19
  %99 = load i32, ptr %i, align 4, !tbaa !4
  %add111 = add nsw i32 %99, 1
  %100 = load i32, ptr %inc_w, align 4, !tbaa !4
  %mul112 = mul nsw i32 %add111, %100
  %idx.ext113 = sext i32 %mul112 to i64
  %add.ptr114 = getelementptr inbounds float, ptr %98, i64 %idx.ext113
  store ptr %add.ptr114, ptr %w21, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %a21_t) #5
  %101 = load ptr, ptr %a21, align 8, !tbaa !19
  %102 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul115 = mul nsw i32 0, %102
  %idx.ext116 = sext i32 %mul115 to i64
  %add.ptr117 = getelementptr inbounds float, ptr %101, i64 %idx.ext116
  %103 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul118 = mul nsw i32 0, %103
  %idx.ext119 = sext i32 %mul118 to i64
  %add.ptr120 = getelementptr inbounds float, ptr %add.ptr117, i64 %idx.ext119
  store ptr %add.ptr120, ptr %a21_t, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %a21_b) #5
  %104 = load ptr, ptr %a21, align 8, !tbaa !19
  %105 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul121 = mul nsw i32 0, %105
  %idx.ext122 = sext i32 %mul121 to i64
  %add.ptr123 = getelementptr inbounds float, ptr %104, i64 %idx.ext122
  %106 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul124 = mul nsw i32 1, %106
  %idx.ext125 = sext i32 %mul124 to i64
  %add.ptr126 = getelementptr inbounds float, ptr %add.ptr123, i64 %idx.ext125
  store ptr %add.ptr126, ptr %a21_b, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 4, ptr %m_ahead) #5
  %107 = load i32, ptr %m_A.addr, align 4, !tbaa !4
  %108 = load i32, ptr %i, align 4, !tbaa !4
  %sub = sub nsw i32 %107, %108
  %sub127 = sub nsw i32 %sub, 1
  store i32 %sub127, ptr %m_ahead, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %m_behind) #5
  %109 = load i32, ptr %i, align 4, !tbaa !4
  store i32 %109, ptr %m_behind, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n_behind) #5
  %110 = load i32, ptr %i, align 4, !tbaa !4
  store i32 %110, ptr %n_behind, align 4, !tbaa !4
  %111 = load i32, ptr %m_behind, align 4, !tbaa !4
  %cmp128 = icmp sgt i32 %111, 0
  br i1 %cmp128, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %112 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %113 = load float, ptr %112, align 4, !tbaa !20
  %114 = load ptr, ptr %upsilon11, align 8, !tbaa !19
  %115 = load float, ptr %114, align 4, !tbaa !20
  %mul130 = fmul float %113, %115
  store float %mul130, ptr %minus_upsilon11, align 4, !tbaa !20
  %116 = load float, ptr %minus_upsilon11, align 4, !tbaa !20
  store float %116, ptr %minus_conj_upsilon11, align 4, !tbaa !20
  %117 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %118 = load float, ptr %117, align 4, !tbaa !20
  %119 = load ptr, ptr %zeta11, align 8, !tbaa !19
  %120 = load float, ptr %119, align 4, !tbaa !20
  %mul131 = fmul float %118, %120
  store float %mul131, ptr %minus_zeta11, align 4, !tbaa !20
  %121 = load float, ptr %minus_zeta11, align 4, !tbaa !20
  store float %121, ptr %minus_conj_zeta11, align 4, !tbaa !20
  %122 = load ptr, ptr %zeta11, align 8, !tbaa !19
  %123 = load ptr, ptr %alpha11, align 8, !tbaa !19
  call void @bl1_saxpyv(i32 noundef 501, i32 noundef 1, ptr noundef %minus_upsilon11, ptr noundef %122, i32 noundef 1, ptr noundef %123, i32 noundef 1)
  %124 = load ptr, ptr %upsilon11, align 8, !tbaa !19
  %125 = load ptr, ptr %alpha11, align 8, !tbaa !19
  call void @bl1_saxpyv(i32 noundef 501, i32 noundef 1, ptr noundef %minus_zeta11, ptr noundef %124, i32 noundef 1, ptr noundef %125, i32 noundef 1)
  %126 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %127 = load ptr, ptr %u21, align 8, !tbaa !19
  %128 = load i32, ptr %inc_u, align 4, !tbaa !4
  %129 = load ptr, ptr %a21, align 8, !tbaa !19
  %130 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  call void @bl1_saxpyv(i32 noundef 500, i32 noundef %126, ptr noundef %minus_conj_zeta11, ptr noundef %127, i32 noundef %128, ptr noundef %129, i32 noundef %130)
  %131 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %132 = load ptr, ptr %z21, align 8, !tbaa !19
  %133 = load i32, ptr %inc_z, align 4, !tbaa !4
  %134 = load ptr, ptr %a21, align 8, !tbaa !19
  %135 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  call void @bl1_saxpyv(i32 noundef 500, i32 noundef %131, ptr noundef %minus_conj_upsilon11, ptr noundef %132, i32 noundef %133, ptr noundef %134, i32 noundef %135)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %136 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %cmp132 = icmp sgt i32 %136, 0
  br i1 %cmp132, label %if.then134, label %if.end138

if.then134:                                       ; preds = %if.end
  %137 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %sub135 = sub nsw i32 %137, 1
  %138 = load ptr, ptr %a21_t, align 8, !tbaa !19
  %139 = load ptr, ptr %a21_b, align 8, !tbaa !19
  %140 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %141 = load ptr, ptr %tau11, align 8, !tbaa !19
  %call136 = call i32 @FLA_Househ2_UT_l_ops(i32 noundef %sub135, ptr noundef %138, ptr noundef %139, i32 noundef %140, ptr noundef %141)
  %142 = load ptr, ptr %buff_1, align 8, !tbaa !19
  %143 = load float, ptr %142, align 4, !tbaa !20
  %144 = load ptr, ptr %tau11, align 8, !tbaa !19
  %145 = load float, ptr %144, align 4, !tbaa !20
  %div = fdiv float %143, %145
  store float %div, ptr %inv_tau11, align 4, !tbaa !20
  %146 = load float, ptr %inv_tau11, align 4, !tbaa !20
  %mul137 = fmul float -1.000000e+00, %146
  store float %mul137, ptr %minus_inv_tau11, align 4, !tbaa !20
  %147 = load ptr, ptr %a21_t, align 8, !tbaa !19
  %148 = load float, ptr %147, align 4, !tbaa !20
  store float %148, ptr %first_elem, align 4, !tbaa !20
  %149 = load ptr, ptr %buff_1, align 8, !tbaa !19
  %150 = load float, ptr %149, align 4, !tbaa !20
  %151 = load ptr, ptr %a21_t, align 8, !tbaa !19
  store float %150, ptr %151, align 4, !tbaa !20
  br label %if.end138

if.end138:                                        ; preds = %if.then134, %if.end
  %152 = load i32, ptr %m_behind, align 4, !tbaa !4
  %cmp139 = icmp sgt i32 %152, 0
  br i1 %cmp139, label %if.then141, label %if.end142

if.then141:                                       ; preds = %if.end138
  %153 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %154 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %155 = load ptr, ptr %u21, align 8, !tbaa !19
  %156 = load i32, ptr %inc_u, align 4, !tbaa !4
  %157 = load ptr, ptr %z21, align 8, !tbaa !19
  %158 = load i32, ptr %inc_z, align 4, !tbaa !4
  %159 = load ptr, ptr %A22, align 8, !tbaa !19
  %160 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %161 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  call void @bl1_ssyr2(i32 noundef 200, i32 noundef %153, ptr noundef %154, ptr noundef %155, i32 noundef %156, ptr noundef %157, i32 noundef %158, ptr noundef %159, i32 noundef %160, i32 noundef %161)
  br label %if.end142

if.end142:                                        ; preds = %if.then141, %if.end138
  %162 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %cmp143 = icmp sgt i32 %162, 0
  br i1 %cmp143, label %if.then145, label %if.end148

if.then145:                                       ; preds = %if.end142
  %163 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %164 = load ptr, ptr %buff_1, align 8, !tbaa !19
  %165 = load ptr, ptr %A22, align 8, !tbaa !19
  %166 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %167 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %168 = load ptr, ptr %a21, align 8, !tbaa !19
  %169 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %170 = load ptr, ptr %buff_0, align 8, !tbaa !19
  %171 = load ptr, ptr %w21, align 8, !tbaa !19
  %172 = load i32, ptr %inc_w, align 4, !tbaa !4
  call void @bl1_ssymv(i32 noundef 200, i32 noundef %163, ptr noundef %164, ptr noundef %165, i32 noundef %166, i32 noundef %167, ptr noundef %168, i32 noundef %169, ptr noundef %170, ptr noundef %171, i32 noundef %172)
  %173 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %174 = load ptr, ptr %a21, align 8, !tbaa !19
  %175 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %176 = load ptr, ptr %u21, align 8, !tbaa !19
  %177 = load i32, ptr %inc_u, align 4, !tbaa !4
  call void @bl1_scopyv(i32 noundef 500, i32 noundef %173, ptr noundef %174, i32 noundef %175, ptr noundef %176, i32 noundef %177)
  %178 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %179 = load ptr, ptr %w21, align 8, !tbaa !19
  %180 = load i32, ptr %inc_w, align 4, !tbaa !4
  %181 = load ptr, ptr %z21, align 8, !tbaa !19
  %182 = load i32, ptr %inc_z, align 4, !tbaa !4
  call void @bl1_scopyv(i32 noundef 500, i32 noundef %178, ptr noundef %179, i32 noundef %180, ptr noundef %181, i32 noundef %182)
  %183 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %184 = load ptr, ptr %a21, align 8, !tbaa !19
  %185 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %186 = load ptr, ptr %z21, align 8, !tbaa !19
  %187 = load i32, ptr %inc_z, align 4, !tbaa !4
  call void @bl1_sdot(i32 noundef 501, i32 noundef %183, ptr noundef %184, i32 noundef %185, ptr noundef %186, i32 noundef %187, ptr noundef %beta)
  %188 = load float, ptr %beta, align 4, !tbaa !20
  %189 = load ptr, ptr %buff_2, align 8, !tbaa !19
  %190 = load float, ptr %189, align 4, !tbaa !20
  %div146 = fdiv float %188, %190
  store float %div146, ptr %beta, align 4, !tbaa !20
  %191 = load float, ptr %minus_inv_tau11, align 4, !tbaa !20
  %192 = load float, ptr %beta, align 4, !tbaa !20
  %mul147 = fmul float %191, %192
  store float %mul147, ptr %beta, align 4, !tbaa !20
  %193 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %194 = load ptr, ptr %a21, align 8, !tbaa !19
  %195 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %196 = load ptr, ptr %z21, align 8, !tbaa !19
  %197 = load i32, ptr %inc_z, align 4, !tbaa !4
  call void @bl1_saxpyv(i32 noundef 500, i32 noundef %193, ptr noundef %beta, ptr noundef %194, i32 noundef %195, ptr noundef %196, i32 noundef %197)
  %198 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %199 = load ptr, ptr %z21, align 8, !tbaa !19
  %200 = load i32, ptr %inc_z, align 4, !tbaa !4
  call void @bl1_sscalv(i32 noundef 500, i32 noundef %198, ptr noundef %inv_tau11, ptr noundef %199, i32 noundef %200)
  %201 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %202 = load i32, ptr %n_behind, align 4, !tbaa !4
  %203 = load ptr, ptr %buff_1, align 8, !tbaa !19
  %204 = load ptr, ptr %A20, align 8, !tbaa !19
  %205 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %206 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %207 = load ptr, ptr %a21, align 8, !tbaa !19
  %208 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %209 = load ptr, ptr %buff_0, align 8, !tbaa !19
  %210 = load ptr, ptr %t01, align 8, !tbaa !19
  %211 = load i32, ptr %rs_T.addr, align 4, !tbaa !4
  call void @bl1_sgemv(i32 noundef 103, i32 noundef 500, i32 noundef %201, i32 noundef %202, ptr noundef %203, ptr noundef %204, i32 noundef %205, i32 noundef %206, ptr noundef %207, i32 noundef %208, ptr noundef %209, ptr noundef %210, i32 noundef %211)
  %212 = load float, ptr %first_elem, align 4, !tbaa !20
  %213 = load ptr, ptr %a21_t, align 8, !tbaa !19
  store float %212, ptr %213, align 4, !tbaa !20
  br label %if.end148

if.end148:                                        ; preds = %if.then145, %if.end142
  %214 = load i32, ptr %m_behind, align 4, !tbaa !4
  %add149 = add nsw i32 %214, 1
  %215 = load i32, ptr %b_alg, align 4, !tbaa !4
  %cmp150 = icmp eq i32 %add149, %215
  br i1 %cmp150, label %land.lhs.true, label %if.end155

land.lhs.true:                                    ; preds = %if.end148
  %216 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %cmp152 = icmp sgt i32 %216, 0
  br i1 %cmp152, label %if.then154, label %if.end155

if.then154:                                       ; preds = %land.lhs.true
  %217 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %218 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %219 = load ptr, ptr %u21, align 8, !tbaa !19
  %220 = load i32, ptr %inc_u, align 4, !tbaa !4
  %221 = load ptr, ptr %z21, align 8, !tbaa !19
  %222 = load i32, ptr %inc_z, align 4, !tbaa !4
  %223 = load ptr, ptr %A22, align 8, !tbaa !19
  %224 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %225 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  call void @bl1_ssyr2(i32 noundef 200, i32 noundef %217, ptr noundef %218, ptr noundef %219, i32 noundef %220, ptr noundef %221, i32 noundef %222, ptr noundef %223, i32 noundef %224, i32 noundef %225)
  br label %if.end155

if.end155:                                        ; preds = %if.then154, %land.lhs.true, %if.end148
  call void @llvm.lifetime.end.p0(i64 4, ptr %n_behind) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %m_behind) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %m_ahead) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %a21_b) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %a21_t) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %w21) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %z21) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %zeta11) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %u21) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %upsilon11) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %tau11) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %t01) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %A22) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %a21) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %alpha11) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %A20) #5
  br label %for.inc

for.inc:                                          ; preds = %if.end155
  %226 = load i32, ptr %i, align 4, !tbaa !4
  %inc = add nsw i32 %226, 1
  store i32 %inc, ptr %i, align 4, !tbaa !4
  br label %for.cond, !llvm.loop !22

for.end:                                          ; preds = %for.cond
  %227 = load ptr, ptr %buff_u, align 8, !tbaa !19
  call void @FLA_free(ptr noundef %227)
  %228 = load ptr, ptr %buff_z, align 8, !tbaa !19
  call void @FLA_free(ptr noundef %228)
  %229 = load ptr, ptr %buff_w, align 8, !tbaa !19
  call void @FLA_free(ptr noundef %229)
  call void @llvm.lifetime.end.p0(i64 4, ptr %inc_w) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %inc_z) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %inc_u) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_w) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_z) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_u) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %b_alg) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %minus_conj_zeta11) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %minus_zeta11) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %minus_conj_upsilon11) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %minus_upsilon11) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %minus_inv_tau11) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %inv_tau11) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %beta) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %first_elem) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_m1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_0) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_2) #5
  ret i32 -1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @FLA_Tridiag_UT_l_step_opd_var2(i32 noundef %m_A, i32 noundef %m_T, ptr noundef %buff_A, i32 noundef %rs_A, i32 noundef %cs_A, ptr noundef %buff_T, i32 noundef %rs_T, i32 noundef %cs_T) #0 {
entry:
  %m_A.addr = alloca i32, align 4
  %m_T.addr = alloca i32, align 4
  %buff_A.addr = alloca ptr, align 8
  %rs_A.addr = alloca i32, align 4
  %cs_A.addr = alloca i32, align 4
  %buff_T.addr = alloca ptr, align 8
  %rs_T.addr = alloca i32, align 4
  %cs_T.addr = alloca i32, align 4
  %buff_2 = alloca ptr, align 8
  %buff_1 = alloca ptr, align 8
  %buff_0 = alloca ptr, align 8
  %buff_m1 = alloca ptr, align 8
  %first_elem = alloca double, align 8
  %beta = alloca double, align 8
  %inv_tau11 = alloca double, align 8
  %minus_inv_tau11 = alloca double, align 8
  %minus_upsilon11 = alloca double, align 8
  %minus_conj_upsilon11 = alloca double, align 8
  %minus_zeta11 = alloca double, align 8
  %minus_conj_zeta11 = alloca double, align 8
  %i = alloca i32, align 4
  %b_alg = alloca i32, align 4
  %buff_u = alloca ptr, align 8
  %buff_z = alloca ptr, align 8
  %buff_w = alloca ptr, align 8
  %inc_u = alloca i32, align 4
  %inc_z = alloca i32, align 4
  %inc_w = alloca i32, align 4
  %A20 = alloca ptr, align 8
  %alpha11 = alloca ptr, align 8
  %a21 = alloca ptr, align 8
  %A22 = alloca ptr, align 8
  %t01 = alloca ptr, align 8
  %tau11 = alloca ptr, align 8
  %upsilon11 = alloca ptr, align 8
  %u21 = alloca ptr, align 8
  %zeta11 = alloca ptr, align 8
  %z21 = alloca ptr, align 8
  %w21 = alloca ptr, align 8
  %a21_t = alloca ptr, align 8
  %a21_b = alloca ptr, align 8
  %m_ahead = alloca i32, align 4
  %m_behind = alloca i32, align 4
  %n_behind = alloca i32, align 4
  store i32 %m_A, ptr %m_A.addr, align 4, !tbaa !4
  store i32 %m_T, ptr %m_T.addr, align 4, !tbaa !4
  store ptr %buff_A, ptr %buff_A.addr, align 8, !tbaa !19
  store i32 %rs_A, ptr %rs_A.addr, align 4, !tbaa !4
  store i32 %cs_A, ptr %cs_A.addr, align 4, !tbaa !4
  store ptr %buff_T, ptr %buff_T.addr, align 8, !tbaa !19
  store i32 %rs_T, ptr %rs_T.addr, align 4, !tbaa !4
  store i32 %cs_T, ptr %cs_T.addr, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_2) #5
  %0 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_TWO, i32 0, i32 6), align 8, !tbaa !8
  %datatype = getelementptr inbounds %struct.FLA_Obj_struct, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %datatype, align 8, !tbaa !12
  %cmp = icmp eq i32 %1, 105
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_TWO, i32 0, i32 6), align 8, !tbaa !8
  %buffer = getelementptr inbounds %struct.FLA_Obj_struct, ptr %2, i32 0, i32 12
  %3 = load ptr, ptr %buffer, align 8, !tbaa !14
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 16
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_TWO, i32 0, i32 6), align 8, !tbaa !8
  %buffer1 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %4, i32 0, i32 12
  %5 = load ptr, ptr %buffer1, align 8, !tbaa !14
  %6 = load i64, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_TWO, i32 0, i32 1), align 8, !tbaa !15
  %7 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_TWO, i32 0, i32 6), align 8, !tbaa !8
  %cs = getelementptr inbounds %struct.FLA_Obj_struct, ptr %7, i32 0, i32 5
  %8 = load i64, ptr %cs, align 8, !tbaa !16
  %mul = mul i64 %6, %8
  %add.ptr2 = getelementptr inbounds double, ptr %5, i64 %mul
  %9 = load i64, ptr @FLA_TWO, align 8, !tbaa !17
  %10 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_TWO, i32 0, i32 6), align 8, !tbaa !8
  %rs = getelementptr inbounds %struct.FLA_Obj_struct, ptr %10, i32 0, i32 4
  %11 = load i64, ptr %rs, align 8, !tbaa !18
  %mul3 = mul i64 %9, %11
  %add.ptr4 = getelementptr inbounds double, ptr %add.ptr2, i64 %mul3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %add.ptr, %cond.true ], [ %add.ptr4, %cond.false ]
  store ptr %cond, ptr %buff_2, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_1) #5
  %12 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8, !tbaa !8
  %datatype5 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %12, i32 0, i32 0
  %13 = load i32, ptr %datatype5, align 8, !tbaa !12
  %cmp6 = icmp eq i32 %13, 105
  br i1 %cmp6, label %cond.true7, label %cond.false10

cond.true7:                                       ; preds = %cond.end
  %14 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8, !tbaa !8
  %buffer8 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %14, i32 0, i32 12
  %15 = load ptr, ptr %buffer8, align 8, !tbaa !14
  %add.ptr9 = getelementptr inbounds i8, ptr %15, i64 16
  br label %cond.end18

cond.false10:                                     ; preds = %cond.end
  %16 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8, !tbaa !8
  %buffer11 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %16, i32 0, i32 12
  %17 = load ptr, ptr %buffer11, align 8, !tbaa !14
  %18 = load i64, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 1), align 8, !tbaa !15
  %19 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8, !tbaa !8
  %cs12 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %19, i32 0, i32 5
  %20 = load i64, ptr %cs12, align 8, !tbaa !16
  %mul13 = mul i64 %18, %20
  %add.ptr14 = getelementptr inbounds double, ptr %17, i64 %mul13
  %21 = load i64, ptr @FLA_ONE, align 8, !tbaa !17
  %22 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8, !tbaa !8
  %rs15 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %22, i32 0, i32 4
  %23 = load i64, ptr %rs15, align 8, !tbaa !18
  %mul16 = mul i64 %21, %23
  %add.ptr17 = getelementptr inbounds double, ptr %add.ptr14, i64 %mul16
  br label %cond.end18

cond.end18:                                       ; preds = %cond.false10, %cond.true7
  %cond19 = phi ptr [ %add.ptr9, %cond.true7 ], [ %add.ptr17, %cond.false10 ]
  store ptr %cond19, ptr %buff_1, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_0) #5
  %24 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8, !tbaa !8
  %datatype20 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %24, i32 0, i32 0
  %25 = load i32, ptr %datatype20, align 8, !tbaa !12
  %cmp21 = icmp eq i32 %25, 105
  br i1 %cmp21, label %cond.true22, label %cond.false25

cond.true22:                                      ; preds = %cond.end18
  %26 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8, !tbaa !8
  %buffer23 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %26, i32 0, i32 12
  %27 = load ptr, ptr %buffer23, align 8, !tbaa !14
  %add.ptr24 = getelementptr inbounds i8, ptr %27, i64 16
  br label %cond.end33

cond.false25:                                     ; preds = %cond.end18
  %28 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8, !tbaa !8
  %buffer26 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %28, i32 0, i32 12
  %29 = load ptr, ptr %buffer26, align 8, !tbaa !14
  %30 = load i64, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 1), align 8, !tbaa !15
  %31 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8, !tbaa !8
  %cs27 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %31, i32 0, i32 5
  %32 = load i64, ptr %cs27, align 8, !tbaa !16
  %mul28 = mul i64 %30, %32
  %add.ptr29 = getelementptr inbounds double, ptr %29, i64 %mul28
  %33 = load i64, ptr @FLA_ZERO, align 8, !tbaa !17
  %34 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8, !tbaa !8
  %rs30 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %34, i32 0, i32 4
  %35 = load i64, ptr %rs30, align 8, !tbaa !18
  %mul31 = mul i64 %33, %35
  %add.ptr32 = getelementptr inbounds double, ptr %add.ptr29, i64 %mul31
  br label %cond.end33

cond.end33:                                       ; preds = %cond.false25, %cond.true22
  %cond34 = phi ptr [ %add.ptr24, %cond.true22 ], [ %add.ptr32, %cond.false25 ]
  store ptr %cond34, ptr %buff_0, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_m1) #5
  %36 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8, !tbaa !8
  %datatype35 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %36, i32 0, i32 0
  %37 = load i32, ptr %datatype35, align 8, !tbaa !12
  %cmp36 = icmp eq i32 %37, 105
  br i1 %cmp36, label %cond.true37, label %cond.false40

cond.true37:                                      ; preds = %cond.end33
  %38 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8, !tbaa !8
  %buffer38 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %38, i32 0, i32 12
  %39 = load ptr, ptr %buffer38, align 8, !tbaa !14
  %add.ptr39 = getelementptr inbounds i8, ptr %39, i64 16
  br label %cond.end48

cond.false40:                                     ; preds = %cond.end33
  %40 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8, !tbaa !8
  %buffer41 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %40, i32 0, i32 12
  %41 = load ptr, ptr %buffer41, align 8, !tbaa !14
  %42 = load i64, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 1), align 8, !tbaa !15
  %43 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8, !tbaa !8
  %cs42 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %43, i32 0, i32 5
  %44 = load i64, ptr %cs42, align 8, !tbaa !16
  %mul43 = mul i64 %42, %44
  %add.ptr44 = getelementptr inbounds double, ptr %41, i64 %mul43
  %45 = load i64, ptr @FLA_MINUS_ONE, align 8, !tbaa !17
  %46 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8, !tbaa !8
  %rs45 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %46, i32 0, i32 4
  %47 = load i64, ptr %rs45, align 8, !tbaa !18
  %mul46 = mul i64 %45, %47
  %add.ptr47 = getelementptr inbounds double, ptr %add.ptr44, i64 %mul46
  br label %cond.end48

cond.end48:                                       ; preds = %cond.false40, %cond.true37
  %cond49 = phi ptr [ %add.ptr39, %cond.true37 ], [ %add.ptr47, %cond.false40 ]
  store ptr %cond49, ptr %buff_m1, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %first_elem) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %beta) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %inv_tau11) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %minus_inv_tau11) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %minus_upsilon11) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %minus_conj_upsilon11) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %minus_zeta11) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %minus_conj_zeta11) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %b_alg) #5
  %48 = load i32, ptr %m_T.addr, align 4, !tbaa !4
  store i32 %48, ptr %b_alg, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_u) #5
  %49 = load i32, ptr %m_A.addr, align 4, !tbaa !4
  %conv = sext i32 %49 to i64
  %mul50 = mul i64 %conv, 8
  %call = call ptr @FLA_malloc(i64 noundef %mul50)
  store ptr %call, ptr %buff_u, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_z) #5
  %50 = load i32, ptr %m_A.addr, align 4, !tbaa !4
  %conv51 = sext i32 %50 to i64
  %mul52 = mul i64 %conv51, 8
  %call53 = call ptr @FLA_malloc(i64 noundef %mul52)
  store ptr %call53, ptr %buff_z, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_w) #5
  %51 = load i32, ptr %m_A.addr, align 4, !tbaa !4
  %conv54 = sext i32 %51 to i64
  %mul55 = mul i64 %conv54, 8
  %call56 = call ptr @FLA_malloc(i64 noundef %mul55)
  store ptr %call56, ptr %buff_w, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 4, ptr %inc_u) #5
  store i32 1, ptr %inc_u, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %inc_z) #5
  store i32 1, ptr %inc_z, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %inc_w) #5
  store i32 1, ptr %inc_w, align 4, !tbaa !4
  %52 = load ptr, ptr %buff_0, align 8, !tbaa !19
  %53 = load double, ptr %52, align 8, !tbaa !24
  store double %53, ptr %first_elem, align 8, !tbaa !24
  %54 = load ptr, ptr %buff_0, align 8, !tbaa !19
  %55 = load double, ptr %54, align 8, !tbaa !24
  store double %55, ptr %minus_inv_tau11, align 8, !tbaa !24
  store i32 0, ptr %i, align 4, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end48
  %56 = load i32, ptr %i, align 4, !tbaa !4
  %57 = load i32, ptr %b_alg, align 4, !tbaa !4
  %cmp57 = icmp slt i32 %56, %57
  br i1 %cmp57, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %A20) #5
  %58 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %59 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul59 = mul nsw i32 0, %59
  %idx.ext = sext i32 %mul59 to i64
  %add.ptr60 = getelementptr inbounds double, ptr %58, i64 %idx.ext
  %60 = load i32, ptr %i, align 4, !tbaa !4
  %add = add nsw i32 %60, 1
  %61 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul61 = mul nsw i32 %add, %61
  %idx.ext62 = sext i32 %mul61 to i64
  %add.ptr63 = getelementptr inbounds double, ptr %add.ptr60, i64 %idx.ext62
  store ptr %add.ptr63, ptr %A20, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %alpha11) #5
  %62 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %63 = load i32, ptr %i, align 4, !tbaa !4
  %64 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul64 = mul nsw i32 %63, %64
  %idx.ext65 = sext i32 %mul64 to i64
  %add.ptr66 = getelementptr inbounds double, ptr %62, i64 %idx.ext65
  %65 = load i32, ptr %i, align 4, !tbaa !4
  %66 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul67 = mul nsw i32 %65, %66
  %idx.ext68 = sext i32 %mul67 to i64
  %add.ptr69 = getelementptr inbounds double, ptr %add.ptr66, i64 %idx.ext68
  store ptr %add.ptr69, ptr %alpha11, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %a21) #5
  %67 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %68 = load i32, ptr %i, align 4, !tbaa !4
  %69 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul70 = mul nsw i32 %68, %69
  %idx.ext71 = sext i32 %mul70 to i64
  %add.ptr72 = getelementptr inbounds double, ptr %67, i64 %idx.ext71
  %70 = load i32, ptr %i, align 4, !tbaa !4
  %add73 = add nsw i32 %70, 1
  %71 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul74 = mul nsw i32 %add73, %71
  %idx.ext75 = sext i32 %mul74 to i64
  %add.ptr76 = getelementptr inbounds double, ptr %add.ptr72, i64 %idx.ext75
  store ptr %add.ptr76, ptr %a21, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %A22) #5
  %72 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %73 = load i32, ptr %i, align 4, !tbaa !4
  %add77 = add nsw i32 %73, 1
  %74 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul78 = mul nsw i32 %add77, %74
  %idx.ext79 = sext i32 %mul78 to i64
  %add.ptr80 = getelementptr inbounds double, ptr %72, i64 %idx.ext79
  %75 = load i32, ptr %i, align 4, !tbaa !4
  %add81 = add nsw i32 %75, 1
  %76 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul82 = mul nsw i32 %add81, %76
  %idx.ext83 = sext i32 %mul82 to i64
  %add.ptr84 = getelementptr inbounds double, ptr %add.ptr80, i64 %idx.ext83
  store ptr %add.ptr84, ptr %A22, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %t01) #5
  %77 = load ptr, ptr %buff_T.addr, align 8, !tbaa !19
  %78 = load i32, ptr %i, align 4, !tbaa !4
  %79 = load i32, ptr %cs_T.addr, align 4, !tbaa !4
  %mul85 = mul nsw i32 %78, %79
  %idx.ext86 = sext i32 %mul85 to i64
  %add.ptr87 = getelementptr inbounds double, ptr %77, i64 %idx.ext86
  %80 = load i32, ptr %rs_T.addr, align 4, !tbaa !4
  %mul88 = mul nsw i32 0, %80
  %idx.ext89 = sext i32 %mul88 to i64
  %add.ptr90 = getelementptr inbounds double, ptr %add.ptr87, i64 %idx.ext89
  store ptr %add.ptr90, ptr %t01, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %tau11) #5
  %81 = load ptr, ptr %buff_T.addr, align 8, !tbaa !19
  %82 = load i32, ptr %i, align 4, !tbaa !4
  %83 = load i32, ptr %cs_T.addr, align 4, !tbaa !4
  %mul91 = mul nsw i32 %82, %83
  %idx.ext92 = sext i32 %mul91 to i64
  %add.ptr93 = getelementptr inbounds double, ptr %81, i64 %idx.ext92
  %84 = load i32, ptr %i, align 4, !tbaa !4
  %85 = load i32, ptr %rs_T.addr, align 4, !tbaa !4
  %mul94 = mul nsw i32 %84, %85
  %idx.ext95 = sext i32 %mul94 to i64
  %add.ptr96 = getelementptr inbounds double, ptr %add.ptr93, i64 %idx.ext95
  store ptr %add.ptr96, ptr %tau11, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %upsilon11) #5
  %86 = load ptr, ptr %buff_u, align 8, !tbaa !19
  %87 = load i32, ptr %i, align 4, !tbaa !4
  %88 = load i32, ptr %inc_u, align 4, !tbaa !4
  %mul97 = mul nsw i32 %87, %88
  %idx.ext98 = sext i32 %mul97 to i64
  %add.ptr99 = getelementptr inbounds double, ptr %86, i64 %idx.ext98
  store ptr %add.ptr99, ptr %upsilon11, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %u21) #5
  %89 = load ptr, ptr %buff_u, align 8, !tbaa !19
  %90 = load i32, ptr %i, align 4, !tbaa !4
  %add100 = add nsw i32 %90, 1
  %91 = load i32, ptr %inc_u, align 4, !tbaa !4
  %mul101 = mul nsw i32 %add100, %91
  %idx.ext102 = sext i32 %mul101 to i64
  %add.ptr103 = getelementptr inbounds double, ptr %89, i64 %idx.ext102
  store ptr %add.ptr103, ptr %u21, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %zeta11) #5
  %92 = load ptr, ptr %buff_z, align 8, !tbaa !19
  %93 = load i32, ptr %i, align 4, !tbaa !4
  %94 = load i32, ptr %inc_z, align 4, !tbaa !4
  %mul104 = mul nsw i32 %93, %94
  %idx.ext105 = sext i32 %mul104 to i64
  %add.ptr106 = getelementptr inbounds double, ptr %92, i64 %idx.ext105
  store ptr %add.ptr106, ptr %zeta11, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %z21) #5
  %95 = load ptr, ptr %buff_z, align 8, !tbaa !19
  %96 = load i32, ptr %i, align 4, !tbaa !4
  %add107 = add nsw i32 %96, 1
  %97 = load i32, ptr %inc_z, align 4, !tbaa !4
  %mul108 = mul nsw i32 %add107, %97
  %idx.ext109 = sext i32 %mul108 to i64
  %add.ptr110 = getelementptr inbounds double, ptr %95, i64 %idx.ext109
  store ptr %add.ptr110, ptr %z21, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %w21) #5
  %98 = load ptr, ptr %buff_w, align 8, !tbaa !19
  %99 = load i32, ptr %i, align 4, !tbaa !4
  %add111 = add nsw i32 %99, 1
  %100 = load i32, ptr %inc_w, align 4, !tbaa !4
  %mul112 = mul nsw i32 %add111, %100
  %idx.ext113 = sext i32 %mul112 to i64
  %add.ptr114 = getelementptr inbounds double, ptr %98, i64 %idx.ext113
  store ptr %add.ptr114, ptr %w21, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %a21_t) #5
  %101 = load ptr, ptr %a21, align 8, !tbaa !19
  %102 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul115 = mul nsw i32 0, %102
  %idx.ext116 = sext i32 %mul115 to i64
  %add.ptr117 = getelementptr inbounds double, ptr %101, i64 %idx.ext116
  %103 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul118 = mul nsw i32 0, %103
  %idx.ext119 = sext i32 %mul118 to i64
  %add.ptr120 = getelementptr inbounds double, ptr %add.ptr117, i64 %idx.ext119
  store ptr %add.ptr120, ptr %a21_t, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %a21_b) #5
  %104 = load ptr, ptr %a21, align 8, !tbaa !19
  %105 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul121 = mul nsw i32 0, %105
  %idx.ext122 = sext i32 %mul121 to i64
  %add.ptr123 = getelementptr inbounds double, ptr %104, i64 %idx.ext122
  %106 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul124 = mul nsw i32 1, %106
  %idx.ext125 = sext i32 %mul124 to i64
  %add.ptr126 = getelementptr inbounds double, ptr %add.ptr123, i64 %idx.ext125
  store ptr %add.ptr126, ptr %a21_b, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 4, ptr %m_ahead) #5
  %107 = load i32, ptr %m_A.addr, align 4, !tbaa !4
  %108 = load i32, ptr %i, align 4, !tbaa !4
  %sub = sub nsw i32 %107, %108
  %sub127 = sub nsw i32 %sub, 1
  store i32 %sub127, ptr %m_ahead, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %m_behind) #5
  %109 = load i32, ptr %i, align 4, !tbaa !4
  store i32 %109, ptr %m_behind, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n_behind) #5
  %110 = load i32, ptr %i, align 4, !tbaa !4
  store i32 %110, ptr %n_behind, align 4, !tbaa !4
  %111 = load i32, ptr %m_behind, align 4, !tbaa !4
  %cmp128 = icmp sgt i32 %111, 0
  br i1 %cmp128, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %112 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %113 = load double, ptr %112, align 8, !tbaa !24
  %114 = load ptr, ptr %upsilon11, align 8, !tbaa !19
  %115 = load double, ptr %114, align 8, !tbaa !24
  %mul130 = fmul double %113, %115
  store double %mul130, ptr %minus_upsilon11, align 8, !tbaa !24
  %116 = load double, ptr %minus_upsilon11, align 8, !tbaa !24
  store double %116, ptr %minus_conj_upsilon11, align 8, !tbaa !24
  %117 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %118 = load double, ptr %117, align 8, !tbaa !24
  %119 = load ptr, ptr %zeta11, align 8, !tbaa !19
  %120 = load double, ptr %119, align 8, !tbaa !24
  %mul131 = fmul double %118, %120
  store double %mul131, ptr %minus_zeta11, align 8, !tbaa !24
  %121 = load double, ptr %minus_zeta11, align 8, !tbaa !24
  store double %121, ptr %minus_conj_zeta11, align 8, !tbaa !24
  %122 = load ptr, ptr %zeta11, align 8, !tbaa !19
  %123 = load ptr, ptr %alpha11, align 8, !tbaa !19
  call void @bl1_daxpyv(i32 noundef 501, i32 noundef 1, ptr noundef %minus_upsilon11, ptr noundef %122, i32 noundef 1, ptr noundef %123, i32 noundef 1)
  %124 = load ptr, ptr %upsilon11, align 8, !tbaa !19
  %125 = load ptr, ptr %alpha11, align 8, !tbaa !19
  call void @bl1_daxpyv(i32 noundef 501, i32 noundef 1, ptr noundef %minus_zeta11, ptr noundef %124, i32 noundef 1, ptr noundef %125, i32 noundef 1)
  %126 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %127 = load ptr, ptr %u21, align 8, !tbaa !19
  %128 = load i32, ptr %inc_u, align 4, !tbaa !4
  %129 = load ptr, ptr %a21, align 8, !tbaa !19
  %130 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  call void @bl1_daxpyv(i32 noundef 500, i32 noundef %126, ptr noundef %minus_conj_zeta11, ptr noundef %127, i32 noundef %128, ptr noundef %129, i32 noundef %130)
  %131 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %132 = load ptr, ptr %z21, align 8, !tbaa !19
  %133 = load i32, ptr %inc_z, align 4, !tbaa !4
  %134 = load ptr, ptr %a21, align 8, !tbaa !19
  %135 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  call void @bl1_daxpyv(i32 noundef 500, i32 noundef %131, ptr noundef %minus_conj_upsilon11, ptr noundef %132, i32 noundef %133, ptr noundef %134, i32 noundef %135)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %136 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %cmp132 = icmp sgt i32 %136, 0
  br i1 %cmp132, label %if.then134, label %if.end138

if.then134:                                       ; preds = %if.end
  %137 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %sub135 = sub nsw i32 %137, 1
  %138 = load ptr, ptr %a21_t, align 8, !tbaa !19
  %139 = load ptr, ptr %a21_b, align 8, !tbaa !19
  %140 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %141 = load ptr, ptr %tau11, align 8, !tbaa !19
  %call136 = call i32 @FLA_Househ2_UT_l_opd(i32 noundef %sub135, ptr noundef %138, ptr noundef %139, i32 noundef %140, ptr noundef %141)
  %142 = load ptr, ptr %buff_1, align 8, !tbaa !19
  %143 = load double, ptr %142, align 8, !tbaa !24
  %144 = load ptr, ptr %tau11, align 8, !tbaa !19
  %145 = load double, ptr %144, align 8, !tbaa !24
  %div = fdiv double %143, %145
  store double %div, ptr %inv_tau11, align 8, !tbaa !24
  %146 = load double, ptr %inv_tau11, align 8, !tbaa !24
  %mul137 = fmul double -1.000000e+00, %146
  store double %mul137, ptr %minus_inv_tau11, align 8, !tbaa !24
  %147 = load ptr, ptr %a21_t, align 8, !tbaa !19
  %148 = load double, ptr %147, align 8, !tbaa !24
  store double %148, ptr %first_elem, align 8, !tbaa !24
  %149 = load ptr, ptr %buff_1, align 8, !tbaa !19
  %150 = load double, ptr %149, align 8, !tbaa !24
  %151 = load ptr, ptr %a21_t, align 8, !tbaa !19
  store double %150, ptr %151, align 8, !tbaa !24
  br label %if.end138

if.end138:                                        ; preds = %if.then134, %if.end
  %152 = load i32, ptr %m_behind, align 4, !tbaa !4
  %cmp139 = icmp sgt i32 %152, 0
  br i1 %cmp139, label %if.then141, label %if.end142

if.then141:                                       ; preds = %if.end138
  %153 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %154 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %155 = load ptr, ptr %u21, align 8, !tbaa !19
  %156 = load i32, ptr %inc_u, align 4, !tbaa !4
  %157 = load ptr, ptr %z21, align 8, !tbaa !19
  %158 = load i32, ptr %inc_z, align 4, !tbaa !4
  %159 = load ptr, ptr %A22, align 8, !tbaa !19
  %160 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %161 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  call void @bl1_dsyr2(i32 noundef 200, i32 noundef %153, ptr noundef %154, ptr noundef %155, i32 noundef %156, ptr noundef %157, i32 noundef %158, ptr noundef %159, i32 noundef %160, i32 noundef %161)
  br label %if.end142

if.end142:                                        ; preds = %if.then141, %if.end138
  %162 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %cmp143 = icmp sgt i32 %162, 0
  br i1 %cmp143, label %if.then145, label %if.end148

if.then145:                                       ; preds = %if.end142
  %163 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %164 = load ptr, ptr %buff_1, align 8, !tbaa !19
  %165 = load ptr, ptr %A22, align 8, !tbaa !19
  %166 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %167 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %168 = load ptr, ptr %a21, align 8, !tbaa !19
  %169 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %170 = load ptr, ptr %buff_0, align 8, !tbaa !19
  %171 = load ptr, ptr %w21, align 8, !tbaa !19
  %172 = load i32, ptr %inc_w, align 4, !tbaa !4
  call void @bl1_dsymv(i32 noundef 200, i32 noundef %163, ptr noundef %164, ptr noundef %165, i32 noundef %166, i32 noundef %167, ptr noundef %168, i32 noundef %169, ptr noundef %170, ptr noundef %171, i32 noundef %172)
  %173 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %174 = load ptr, ptr %a21, align 8, !tbaa !19
  %175 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %176 = load ptr, ptr %u21, align 8, !tbaa !19
  %177 = load i32, ptr %inc_u, align 4, !tbaa !4
  call void @bl1_dcopyv(i32 noundef 500, i32 noundef %173, ptr noundef %174, i32 noundef %175, ptr noundef %176, i32 noundef %177)
  %178 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %179 = load ptr, ptr %w21, align 8, !tbaa !19
  %180 = load i32, ptr %inc_w, align 4, !tbaa !4
  %181 = load ptr, ptr %z21, align 8, !tbaa !19
  %182 = load i32, ptr %inc_z, align 4, !tbaa !4
  call void @bl1_dcopyv(i32 noundef 500, i32 noundef %178, ptr noundef %179, i32 noundef %180, ptr noundef %181, i32 noundef %182)
  %183 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %184 = load ptr, ptr %a21, align 8, !tbaa !19
  %185 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %186 = load ptr, ptr %z21, align 8, !tbaa !19
  %187 = load i32, ptr %inc_z, align 4, !tbaa !4
  call void @bl1_ddot(i32 noundef 501, i32 noundef %183, ptr noundef %184, i32 noundef %185, ptr noundef %186, i32 noundef %187, ptr noundef %beta)
  %188 = load double, ptr %beta, align 8, !tbaa !24
  %189 = load ptr, ptr %buff_2, align 8, !tbaa !19
  %190 = load double, ptr %189, align 8, !tbaa !24
  %div146 = fdiv double %188, %190
  store double %div146, ptr %beta, align 8, !tbaa !24
  %191 = load double, ptr %minus_inv_tau11, align 8, !tbaa !24
  %192 = load double, ptr %beta, align 8, !tbaa !24
  %mul147 = fmul double %191, %192
  store double %mul147, ptr %beta, align 8, !tbaa !24
  %193 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %194 = load ptr, ptr %a21, align 8, !tbaa !19
  %195 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %196 = load ptr, ptr %z21, align 8, !tbaa !19
  %197 = load i32, ptr %inc_z, align 4, !tbaa !4
  call void @bl1_daxpyv(i32 noundef 500, i32 noundef %193, ptr noundef %beta, ptr noundef %194, i32 noundef %195, ptr noundef %196, i32 noundef %197)
  %198 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %199 = load ptr, ptr %z21, align 8, !tbaa !19
  %200 = load i32, ptr %inc_z, align 4, !tbaa !4
  call void @bl1_dscalv(i32 noundef 500, i32 noundef %198, ptr noundef %inv_tau11, ptr noundef %199, i32 noundef %200)
  %201 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %202 = load i32, ptr %n_behind, align 4, !tbaa !4
  %203 = load ptr, ptr %buff_1, align 8, !tbaa !19
  %204 = load ptr, ptr %A20, align 8, !tbaa !19
  %205 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %206 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %207 = load ptr, ptr %a21, align 8, !tbaa !19
  %208 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %209 = load ptr, ptr %buff_0, align 8, !tbaa !19
  %210 = load ptr, ptr %t01, align 8, !tbaa !19
  %211 = load i32, ptr %rs_T.addr, align 4, !tbaa !4
  call void @bl1_dgemv(i32 noundef 103, i32 noundef 500, i32 noundef %201, i32 noundef %202, ptr noundef %203, ptr noundef %204, i32 noundef %205, i32 noundef %206, ptr noundef %207, i32 noundef %208, ptr noundef %209, ptr noundef %210, i32 noundef %211)
  %212 = load double, ptr %first_elem, align 8, !tbaa !24
  %213 = load ptr, ptr %a21_t, align 8, !tbaa !19
  store double %212, ptr %213, align 8, !tbaa !24
  br label %if.end148

if.end148:                                        ; preds = %if.then145, %if.end142
  %214 = load i32, ptr %m_behind, align 4, !tbaa !4
  %add149 = add nsw i32 %214, 1
  %215 = load i32, ptr %b_alg, align 4, !tbaa !4
  %cmp150 = icmp eq i32 %add149, %215
  br i1 %cmp150, label %land.lhs.true, label %if.end155

land.lhs.true:                                    ; preds = %if.end148
  %216 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %cmp152 = icmp sgt i32 %216, 0
  br i1 %cmp152, label %if.then154, label %if.end155

if.then154:                                       ; preds = %land.lhs.true
  %217 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %218 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %219 = load ptr, ptr %u21, align 8, !tbaa !19
  %220 = load i32, ptr %inc_u, align 4, !tbaa !4
  %221 = load ptr, ptr %z21, align 8, !tbaa !19
  %222 = load i32, ptr %inc_z, align 4, !tbaa !4
  %223 = load ptr, ptr %A22, align 8, !tbaa !19
  %224 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %225 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  call void @bl1_dsyr2(i32 noundef 200, i32 noundef %217, ptr noundef %218, ptr noundef %219, i32 noundef %220, ptr noundef %221, i32 noundef %222, ptr noundef %223, i32 noundef %224, i32 noundef %225)
  br label %if.end155

if.end155:                                        ; preds = %if.then154, %land.lhs.true, %if.end148
  call void @llvm.lifetime.end.p0(i64 4, ptr %n_behind) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %m_behind) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %m_ahead) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %a21_b) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %a21_t) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %w21) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %z21) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %zeta11) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %u21) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %upsilon11) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %tau11) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %t01) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %A22) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %a21) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %alpha11) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %A20) #5
  br label %for.inc

for.inc:                                          ; preds = %if.end155
  %226 = load i32, ptr %i, align 4, !tbaa !4
  %inc = add nsw i32 %226, 1
  store i32 %inc, ptr %i, align 4, !tbaa !4
  br label %for.cond, !llvm.loop !26

for.end:                                          ; preds = %for.cond
  %227 = load ptr, ptr %buff_u, align 8, !tbaa !19
  call void @FLA_free(ptr noundef %227)
  %228 = load ptr, ptr %buff_z, align 8, !tbaa !19
  call void @FLA_free(ptr noundef %228)
  %229 = load ptr, ptr %buff_w, align 8, !tbaa !19
  call void @FLA_free(ptr noundef %229)
  call void @llvm.lifetime.end.p0(i64 4, ptr %inc_w) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %inc_z) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %inc_u) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_w) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_z) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_u) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %b_alg) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %minus_conj_zeta11) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %minus_zeta11) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %minus_conj_upsilon11) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %minus_upsilon11) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %minus_inv_tau11) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %inv_tau11) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %beta) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %first_elem) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_m1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_0) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_2) #5
  ret i32 -1
}

; Function Attrs: nounwind uwtable
define i32 @FLA_Tridiag_UT_l_step_opc_var2(i32 noundef %m_A, i32 noundef %m_T, ptr noundef %buff_A, i32 noundef %rs_A, i32 noundef %cs_A, ptr noundef %buff_T, i32 noundef %rs_T, i32 noundef %cs_T) #0 {
entry:
  %m_A.addr = alloca i32, align 4
  %m_T.addr = alloca i32, align 4
  %buff_A.addr = alloca ptr, align 8
  %rs_A.addr = alloca i32, align 4
  %cs_A.addr = alloca i32, align 4
  %buff_T.addr = alloca ptr, align 8
  %rs_T.addr = alloca i32, align 4
  %cs_T.addr = alloca i32, align 4
  %buff_2 = alloca ptr, align 8
  %buff_1 = alloca ptr, align 8
  %buff_0 = alloca ptr, align 8
  %buff_m1 = alloca ptr, align 8
  %first_elem = alloca %struct.scomplex, align 4
  %beta = alloca %struct.scomplex, align 4
  %inv_tau11 = alloca %struct.scomplex, align 4
  %minus_inv_tau11 = alloca %struct.scomplex, align 4
  %minus_upsilon11 = alloca %struct.scomplex, align 4
  %minus_conj_upsilon11 = alloca %struct.scomplex, align 4
  %minus_zeta11 = alloca %struct.scomplex, align 4
  %minus_conj_zeta11 = alloca %struct.scomplex, align 4
  %i = alloca i32, align 4
  %b_alg = alloca i32, align 4
  %buff_u = alloca ptr, align 8
  %buff_z = alloca ptr, align 8
  %buff_w = alloca ptr, align 8
  %inc_u = alloca i32, align 4
  %inc_z = alloca i32, align 4
  %inc_w = alloca i32, align 4
  %A20 = alloca ptr, align 8
  %alpha11 = alloca ptr, align 8
  %a21 = alloca ptr, align 8
  %A22 = alloca ptr, align 8
  %t01 = alloca ptr, align 8
  %tau11 = alloca ptr, align 8
  %upsilon11 = alloca ptr, align 8
  %u21 = alloca ptr, align 8
  %zeta11 = alloca ptr, align 8
  %z21 = alloca ptr, align 8
  %w21 = alloca ptr, align 8
  %a21_t = alloca ptr, align 8
  %a21_b = alloca ptr, align 8
  %m_ahead = alloca i32, align 4
  %m_behind = alloca i32, align 4
  %n_behind = alloca i32, align 4
  %tempr = alloca float, align 4
  %tempi = alloca float, align 4
  %tempr147 = alloca float, align 4
  %tempi155 = alloca float, align 4
  %s = alloca float, align 4
  %ar_s = alloca float, align 4
  %ai_s = alloca float, align 4
  %yrt = alloca float, align 4
  %temp = alloca float, align 4
  %s256 = alloca float, align 4
  %ar_s307 = alloca float, align 4
  %ai_s310 = alloca float, align 4
  %yrt313 = alloca float, align 4
  %temp315 = alloca float, align 4
  %tempr331 = alloca float, align 4
  %tempi339 = alloca float, align 4
  store i32 %m_A, ptr %m_A.addr, align 4, !tbaa !4
  store i32 %m_T, ptr %m_T.addr, align 4, !tbaa !4
  store ptr %buff_A, ptr %buff_A.addr, align 8, !tbaa !19
  store i32 %rs_A, ptr %rs_A.addr, align 4, !tbaa !4
  store i32 %cs_A, ptr %cs_A.addr, align 4, !tbaa !4
  store ptr %buff_T, ptr %buff_T.addr, align 8, !tbaa !19
  store i32 %rs_T, ptr %rs_T.addr, align 4, !tbaa !4
  store i32 %cs_T, ptr %cs_T.addr, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_2) #5
  %0 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_TWO, i32 0, i32 6), align 8, !tbaa !8
  %datatype = getelementptr inbounds %struct.FLA_Obj_struct, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %datatype, align 8, !tbaa !12
  %cmp = icmp eq i32 %1, 105
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_TWO, i32 0, i32 6), align 8, !tbaa !8
  %buffer = getelementptr inbounds %struct.FLA_Obj_struct, ptr %2, i32 0, i32 12
  %3 = load ptr, ptr %buffer, align 8, !tbaa !14
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 24
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_TWO, i32 0, i32 6), align 8, !tbaa !8
  %buffer1 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %4, i32 0, i32 12
  %5 = load ptr, ptr %buffer1, align 8, !tbaa !14
  %6 = load i64, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_TWO, i32 0, i32 1), align 8, !tbaa !15
  %7 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_TWO, i32 0, i32 6), align 8, !tbaa !8
  %cs = getelementptr inbounds %struct.FLA_Obj_struct, ptr %7, i32 0, i32 5
  %8 = load i64, ptr %cs, align 8, !tbaa !16
  %mul = mul i64 %6, %8
  %add.ptr2 = getelementptr inbounds %struct.scomplex, ptr %5, i64 %mul
  %9 = load i64, ptr @FLA_TWO, align 8, !tbaa !17
  %10 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_TWO, i32 0, i32 6), align 8, !tbaa !8
  %rs = getelementptr inbounds %struct.FLA_Obj_struct, ptr %10, i32 0, i32 4
  %11 = load i64, ptr %rs, align 8, !tbaa !18
  %mul3 = mul i64 %9, %11
  %add.ptr4 = getelementptr inbounds %struct.scomplex, ptr %add.ptr2, i64 %mul3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %add.ptr, %cond.true ], [ %add.ptr4, %cond.false ]
  store ptr %cond, ptr %buff_2, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_1) #5
  %12 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8, !tbaa !8
  %datatype5 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %12, i32 0, i32 0
  %13 = load i32, ptr %datatype5, align 8, !tbaa !12
  %cmp6 = icmp eq i32 %13, 105
  br i1 %cmp6, label %cond.true7, label %cond.false10

cond.true7:                                       ; preds = %cond.end
  %14 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8, !tbaa !8
  %buffer8 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %14, i32 0, i32 12
  %15 = load ptr, ptr %buffer8, align 8, !tbaa !14
  %add.ptr9 = getelementptr inbounds i8, ptr %15, i64 24
  br label %cond.end18

cond.false10:                                     ; preds = %cond.end
  %16 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8, !tbaa !8
  %buffer11 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %16, i32 0, i32 12
  %17 = load ptr, ptr %buffer11, align 8, !tbaa !14
  %18 = load i64, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 1), align 8, !tbaa !15
  %19 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8, !tbaa !8
  %cs12 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %19, i32 0, i32 5
  %20 = load i64, ptr %cs12, align 8, !tbaa !16
  %mul13 = mul i64 %18, %20
  %add.ptr14 = getelementptr inbounds %struct.scomplex, ptr %17, i64 %mul13
  %21 = load i64, ptr @FLA_ONE, align 8, !tbaa !17
  %22 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8, !tbaa !8
  %rs15 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %22, i32 0, i32 4
  %23 = load i64, ptr %rs15, align 8, !tbaa !18
  %mul16 = mul i64 %21, %23
  %add.ptr17 = getelementptr inbounds %struct.scomplex, ptr %add.ptr14, i64 %mul16
  br label %cond.end18

cond.end18:                                       ; preds = %cond.false10, %cond.true7
  %cond19 = phi ptr [ %add.ptr9, %cond.true7 ], [ %add.ptr17, %cond.false10 ]
  store ptr %cond19, ptr %buff_1, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_0) #5
  %24 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8, !tbaa !8
  %datatype20 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %24, i32 0, i32 0
  %25 = load i32, ptr %datatype20, align 8, !tbaa !12
  %cmp21 = icmp eq i32 %25, 105
  br i1 %cmp21, label %cond.true22, label %cond.false25

cond.true22:                                      ; preds = %cond.end18
  %26 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8, !tbaa !8
  %buffer23 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %26, i32 0, i32 12
  %27 = load ptr, ptr %buffer23, align 8, !tbaa !14
  %add.ptr24 = getelementptr inbounds i8, ptr %27, i64 24
  br label %cond.end33

cond.false25:                                     ; preds = %cond.end18
  %28 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8, !tbaa !8
  %buffer26 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %28, i32 0, i32 12
  %29 = load ptr, ptr %buffer26, align 8, !tbaa !14
  %30 = load i64, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 1), align 8, !tbaa !15
  %31 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8, !tbaa !8
  %cs27 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %31, i32 0, i32 5
  %32 = load i64, ptr %cs27, align 8, !tbaa !16
  %mul28 = mul i64 %30, %32
  %add.ptr29 = getelementptr inbounds %struct.scomplex, ptr %29, i64 %mul28
  %33 = load i64, ptr @FLA_ZERO, align 8, !tbaa !17
  %34 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8, !tbaa !8
  %rs30 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %34, i32 0, i32 4
  %35 = load i64, ptr %rs30, align 8, !tbaa !18
  %mul31 = mul i64 %33, %35
  %add.ptr32 = getelementptr inbounds %struct.scomplex, ptr %add.ptr29, i64 %mul31
  br label %cond.end33

cond.end33:                                       ; preds = %cond.false25, %cond.true22
  %cond34 = phi ptr [ %add.ptr24, %cond.true22 ], [ %add.ptr32, %cond.false25 ]
  store ptr %cond34, ptr %buff_0, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_m1) #5
  %36 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8, !tbaa !8
  %datatype35 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %36, i32 0, i32 0
  %37 = load i32, ptr %datatype35, align 8, !tbaa !12
  %cmp36 = icmp eq i32 %37, 105
  br i1 %cmp36, label %cond.true37, label %cond.false40

cond.true37:                                      ; preds = %cond.end33
  %38 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8, !tbaa !8
  %buffer38 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %38, i32 0, i32 12
  %39 = load ptr, ptr %buffer38, align 8, !tbaa !14
  %add.ptr39 = getelementptr inbounds i8, ptr %39, i64 24
  br label %cond.end48

cond.false40:                                     ; preds = %cond.end33
  %40 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8, !tbaa !8
  %buffer41 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %40, i32 0, i32 12
  %41 = load ptr, ptr %buffer41, align 8, !tbaa !14
  %42 = load i64, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 1), align 8, !tbaa !15
  %43 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8, !tbaa !8
  %cs42 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %43, i32 0, i32 5
  %44 = load i64, ptr %cs42, align 8, !tbaa !16
  %mul43 = mul i64 %42, %44
  %add.ptr44 = getelementptr inbounds %struct.scomplex, ptr %41, i64 %mul43
  %45 = load i64, ptr @FLA_MINUS_ONE, align 8, !tbaa !17
  %46 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8, !tbaa !8
  %rs45 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %46, i32 0, i32 4
  %47 = load i64, ptr %rs45, align 8, !tbaa !18
  %mul46 = mul i64 %45, %47
  %add.ptr47 = getelementptr inbounds %struct.scomplex, ptr %add.ptr44, i64 %mul46
  br label %cond.end48

cond.end48:                                       ; preds = %cond.false40, %cond.true37
  %cond49 = phi ptr [ %add.ptr39, %cond.true37 ], [ %add.ptr47, %cond.false40 ]
  store ptr %cond49, ptr %buff_m1, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %first_elem) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %beta) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %inv_tau11) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %minus_inv_tau11) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %minus_upsilon11) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %minus_conj_upsilon11) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %minus_zeta11) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %minus_conj_zeta11) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %b_alg) #5
  %48 = load i32, ptr %m_T.addr, align 4, !tbaa !4
  store i32 %48, ptr %b_alg, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_u) #5
  %49 = load i32, ptr %m_A.addr, align 4, !tbaa !4
  %conv = sext i32 %49 to i64
  %mul50 = mul i64 %conv, 8
  %call = call ptr @FLA_malloc(i64 noundef %mul50)
  store ptr %call, ptr %buff_u, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_z) #5
  %50 = load i32, ptr %m_A.addr, align 4, !tbaa !4
  %conv51 = sext i32 %50 to i64
  %mul52 = mul i64 %conv51, 8
  %call53 = call ptr @FLA_malloc(i64 noundef %mul52)
  store ptr %call53, ptr %buff_z, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_w) #5
  %51 = load i32, ptr %m_A.addr, align 4, !tbaa !4
  %conv54 = sext i32 %51 to i64
  %mul55 = mul i64 %conv54, 8
  %call56 = call ptr @FLA_malloc(i64 noundef %mul55)
  store ptr %call56, ptr %buff_w, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 4, ptr %inc_u) #5
  store i32 1, ptr %inc_u, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %inc_z) #5
  store i32 1, ptr %inc_z, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %inc_w) #5
  store i32 1, ptr %inc_w, align 4, !tbaa !4
  %52 = load ptr, ptr %buff_0, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %first_elem, ptr align 4 %52, i64 8, i1 false), !tbaa.struct !27
  %53 = load ptr, ptr %buff_0, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %minus_inv_tau11, ptr align 4 %53, i64 8, i1 false), !tbaa.struct !27
  store i32 0, ptr %i, align 4, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end48
  %54 = load i32, ptr %i, align 4, !tbaa !4
  %55 = load i32, ptr %b_alg, align 4, !tbaa !4
  %cmp57 = icmp slt i32 %54, %55
  br i1 %cmp57, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %A20) #5
  %56 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %57 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul59 = mul nsw i32 0, %57
  %idx.ext = sext i32 %mul59 to i64
  %add.ptr60 = getelementptr inbounds %struct.scomplex, ptr %56, i64 %idx.ext
  %58 = load i32, ptr %i, align 4, !tbaa !4
  %add = add nsw i32 %58, 1
  %59 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul61 = mul nsw i32 %add, %59
  %idx.ext62 = sext i32 %mul61 to i64
  %add.ptr63 = getelementptr inbounds %struct.scomplex, ptr %add.ptr60, i64 %idx.ext62
  store ptr %add.ptr63, ptr %A20, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %alpha11) #5
  %60 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %61 = load i32, ptr %i, align 4, !tbaa !4
  %62 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul64 = mul nsw i32 %61, %62
  %idx.ext65 = sext i32 %mul64 to i64
  %add.ptr66 = getelementptr inbounds %struct.scomplex, ptr %60, i64 %idx.ext65
  %63 = load i32, ptr %i, align 4, !tbaa !4
  %64 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul67 = mul nsw i32 %63, %64
  %idx.ext68 = sext i32 %mul67 to i64
  %add.ptr69 = getelementptr inbounds %struct.scomplex, ptr %add.ptr66, i64 %idx.ext68
  store ptr %add.ptr69, ptr %alpha11, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %a21) #5
  %65 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %66 = load i32, ptr %i, align 4, !tbaa !4
  %67 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul70 = mul nsw i32 %66, %67
  %idx.ext71 = sext i32 %mul70 to i64
  %add.ptr72 = getelementptr inbounds %struct.scomplex, ptr %65, i64 %idx.ext71
  %68 = load i32, ptr %i, align 4, !tbaa !4
  %add73 = add nsw i32 %68, 1
  %69 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul74 = mul nsw i32 %add73, %69
  %idx.ext75 = sext i32 %mul74 to i64
  %add.ptr76 = getelementptr inbounds %struct.scomplex, ptr %add.ptr72, i64 %idx.ext75
  store ptr %add.ptr76, ptr %a21, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %A22) #5
  %70 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %71 = load i32, ptr %i, align 4, !tbaa !4
  %add77 = add nsw i32 %71, 1
  %72 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul78 = mul nsw i32 %add77, %72
  %idx.ext79 = sext i32 %mul78 to i64
  %add.ptr80 = getelementptr inbounds %struct.scomplex, ptr %70, i64 %idx.ext79
  %73 = load i32, ptr %i, align 4, !tbaa !4
  %add81 = add nsw i32 %73, 1
  %74 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul82 = mul nsw i32 %add81, %74
  %idx.ext83 = sext i32 %mul82 to i64
  %add.ptr84 = getelementptr inbounds %struct.scomplex, ptr %add.ptr80, i64 %idx.ext83
  store ptr %add.ptr84, ptr %A22, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %t01) #5
  %75 = load ptr, ptr %buff_T.addr, align 8, !tbaa !19
  %76 = load i32, ptr %i, align 4, !tbaa !4
  %77 = load i32, ptr %cs_T.addr, align 4, !tbaa !4
  %mul85 = mul nsw i32 %76, %77
  %idx.ext86 = sext i32 %mul85 to i64
  %add.ptr87 = getelementptr inbounds %struct.scomplex, ptr %75, i64 %idx.ext86
  %78 = load i32, ptr %rs_T.addr, align 4, !tbaa !4
  %mul88 = mul nsw i32 0, %78
  %idx.ext89 = sext i32 %mul88 to i64
  %add.ptr90 = getelementptr inbounds %struct.scomplex, ptr %add.ptr87, i64 %idx.ext89
  store ptr %add.ptr90, ptr %t01, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %tau11) #5
  %79 = load ptr, ptr %buff_T.addr, align 8, !tbaa !19
  %80 = load i32, ptr %i, align 4, !tbaa !4
  %81 = load i32, ptr %cs_T.addr, align 4, !tbaa !4
  %mul91 = mul nsw i32 %80, %81
  %idx.ext92 = sext i32 %mul91 to i64
  %add.ptr93 = getelementptr inbounds %struct.scomplex, ptr %79, i64 %idx.ext92
  %82 = load i32, ptr %i, align 4, !tbaa !4
  %83 = load i32, ptr %rs_T.addr, align 4, !tbaa !4
  %mul94 = mul nsw i32 %82, %83
  %idx.ext95 = sext i32 %mul94 to i64
  %add.ptr96 = getelementptr inbounds %struct.scomplex, ptr %add.ptr93, i64 %idx.ext95
  store ptr %add.ptr96, ptr %tau11, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %upsilon11) #5
  %84 = load ptr, ptr %buff_u, align 8, !tbaa !19
  %85 = load i32, ptr %i, align 4, !tbaa !4
  %86 = load i32, ptr %inc_u, align 4, !tbaa !4
  %mul97 = mul nsw i32 %85, %86
  %idx.ext98 = sext i32 %mul97 to i64
  %add.ptr99 = getelementptr inbounds %struct.scomplex, ptr %84, i64 %idx.ext98
  store ptr %add.ptr99, ptr %upsilon11, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %u21) #5
  %87 = load ptr, ptr %buff_u, align 8, !tbaa !19
  %88 = load i32, ptr %i, align 4, !tbaa !4
  %add100 = add nsw i32 %88, 1
  %89 = load i32, ptr %inc_u, align 4, !tbaa !4
  %mul101 = mul nsw i32 %add100, %89
  %idx.ext102 = sext i32 %mul101 to i64
  %add.ptr103 = getelementptr inbounds %struct.scomplex, ptr %87, i64 %idx.ext102
  store ptr %add.ptr103, ptr %u21, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %zeta11) #5
  %90 = load ptr, ptr %buff_z, align 8, !tbaa !19
  %91 = load i32, ptr %i, align 4, !tbaa !4
  %92 = load i32, ptr %inc_z, align 4, !tbaa !4
  %mul104 = mul nsw i32 %91, %92
  %idx.ext105 = sext i32 %mul104 to i64
  %add.ptr106 = getelementptr inbounds %struct.scomplex, ptr %90, i64 %idx.ext105
  store ptr %add.ptr106, ptr %zeta11, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %z21) #5
  %93 = load ptr, ptr %buff_z, align 8, !tbaa !19
  %94 = load i32, ptr %i, align 4, !tbaa !4
  %add107 = add nsw i32 %94, 1
  %95 = load i32, ptr %inc_z, align 4, !tbaa !4
  %mul108 = mul nsw i32 %add107, %95
  %idx.ext109 = sext i32 %mul108 to i64
  %add.ptr110 = getelementptr inbounds %struct.scomplex, ptr %93, i64 %idx.ext109
  store ptr %add.ptr110, ptr %z21, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %w21) #5
  %96 = load ptr, ptr %buff_w, align 8, !tbaa !19
  %97 = load i32, ptr %i, align 4, !tbaa !4
  %add111 = add nsw i32 %97, 1
  %98 = load i32, ptr %inc_w, align 4, !tbaa !4
  %mul112 = mul nsw i32 %add111, %98
  %idx.ext113 = sext i32 %mul112 to i64
  %add.ptr114 = getelementptr inbounds %struct.scomplex, ptr %96, i64 %idx.ext113
  store ptr %add.ptr114, ptr %w21, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %a21_t) #5
  %99 = load ptr, ptr %a21, align 8, !tbaa !19
  %100 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul115 = mul nsw i32 0, %100
  %idx.ext116 = sext i32 %mul115 to i64
  %add.ptr117 = getelementptr inbounds %struct.scomplex, ptr %99, i64 %idx.ext116
  %101 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul118 = mul nsw i32 0, %101
  %idx.ext119 = sext i32 %mul118 to i64
  %add.ptr120 = getelementptr inbounds %struct.scomplex, ptr %add.ptr117, i64 %idx.ext119
  store ptr %add.ptr120, ptr %a21_t, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %a21_b) #5
  %102 = load ptr, ptr %a21, align 8, !tbaa !19
  %103 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul121 = mul nsw i32 0, %103
  %idx.ext122 = sext i32 %mul121 to i64
  %add.ptr123 = getelementptr inbounds %struct.scomplex, ptr %102, i64 %idx.ext122
  %104 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul124 = mul nsw i32 1, %104
  %idx.ext125 = sext i32 %mul124 to i64
  %add.ptr126 = getelementptr inbounds %struct.scomplex, ptr %add.ptr123, i64 %idx.ext125
  store ptr %add.ptr126, ptr %a21_b, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 4, ptr %m_ahead) #5
  %105 = load i32, ptr %m_A.addr, align 4, !tbaa !4
  %106 = load i32, ptr %i, align 4, !tbaa !4
  %sub = sub nsw i32 %105, %106
  %sub127 = sub nsw i32 %sub, 1
  store i32 %sub127, ptr %m_ahead, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %m_behind) #5
  %107 = load i32, ptr %i, align 4, !tbaa !4
  store i32 %107, ptr %m_behind, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n_behind) #5
  %108 = load i32, ptr %i, align 4, !tbaa !4
  store i32 %108, ptr %n_behind, align 4, !tbaa !4
  %109 = load i32, ptr %m_behind, align 4, !tbaa !4
  %cmp128 = icmp sgt i32 %109, 0
  br i1 %cmp128, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 4, ptr %tempr) #5
  %110 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %real = getelementptr inbounds %struct.scomplex, ptr %110, i32 0, i32 0
  %111 = load float, ptr %real, align 4, !tbaa !28
  %112 = load ptr, ptr %upsilon11, align 8, !tbaa !19
  %real130 = getelementptr inbounds %struct.scomplex, ptr %112, i32 0, i32 0
  %113 = load float, ptr %real130, align 4, !tbaa !28
  %114 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %imag = getelementptr inbounds %struct.scomplex, ptr %114, i32 0, i32 1
  %115 = load float, ptr %imag, align 4, !tbaa !30
  %116 = load ptr, ptr %upsilon11, align 8, !tbaa !19
  %imag132 = getelementptr inbounds %struct.scomplex, ptr %116, i32 0, i32 1
  %117 = load float, ptr %imag132, align 4, !tbaa !30
  %mul133 = fmul float %115, %117
  %neg = fneg float %mul133
  %118 = call float @llvm.fmuladd.f32(float %111, float %113, float %neg)
  store float %118, ptr %tempr, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 4, ptr %tempi) #5
  %119 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %imag134 = getelementptr inbounds %struct.scomplex, ptr %119, i32 0, i32 1
  %120 = load float, ptr %imag134, align 4, !tbaa !30
  %121 = load ptr, ptr %upsilon11, align 8, !tbaa !19
  %real135 = getelementptr inbounds %struct.scomplex, ptr %121, i32 0, i32 0
  %122 = load float, ptr %real135, align 4, !tbaa !28
  %123 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %real137 = getelementptr inbounds %struct.scomplex, ptr %123, i32 0, i32 0
  %124 = load float, ptr %real137, align 4, !tbaa !28
  %125 = load ptr, ptr %upsilon11, align 8, !tbaa !19
  %imag138 = getelementptr inbounds %struct.scomplex, ptr %125, i32 0, i32 1
  %126 = load float, ptr %imag138, align 4, !tbaa !30
  %mul139 = fmul float %124, %126
  %127 = call float @llvm.fmuladd.f32(float %120, float %122, float %mul139)
  store float %127, ptr %tempi, align 4, !tbaa !20
  %128 = load float, ptr %tempr, align 4, !tbaa !20
  %real140 = getelementptr inbounds %struct.scomplex, ptr %minus_upsilon11, i32 0, i32 0
  store float %128, ptr %real140, align 4, !tbaa !28
  %129 = load float, ptr %tempi, align 4, !tbaa !20
  %imag141 = getelementptr inbounds %struct.scomplex, ptr %minus_upsilon11, i32 0, i32 1
  store float %129, ptr %imag141, align 4, !tbaa !30
  call void @llvm.lifetime.end.p0(i64 4, ptr %tempi) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %tempr) #5
  %real142 = getelementptr inbounds %struct.scomplex, ptr %minus_upsilon11, i32 0, i32 0
  %130 = load float, ptr %real142, align 4, !tbaa !28
  %real143 = getelementptr inbounds %struct.scomplex, ptr %minus_conj_upsilon11, i32 0, i32 0
  store float %130, ptr %real143, align 4, !tbaa !28
  %imag144 = getelementptr inbounds %struct.scomplex, ptr %minus_upsilon11, i32 0, i32 1
  %131 = load float, ptr %imag144, align 4, !tbaa !30
  %mul145 = fmul float -1.000000e+00, %131
  %imag146 = getelementptr inbounds %struct.scomplex, ptr %minus_conj_upsilon11, i32 0, i32 1
  store float %mul145, ptr %imag146, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(i64 4, ptr %tempr147) #5
  %132 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %real148 = getelementptr inbounds %struct.scomplex, ptr %132, i32 0, i32 0
  %133 = load float, ptr %real148, align 4, !tbaa !28
  %134 = load ptr, ptr %zeta11, align 8, !tbaa !19
  %real149 = getelementptr inbounds %struct.scomplex, ptr %134, i32 0, i32 0
  %135 = load float, ptr %real149, align 4, !tbaa !28
  %136 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %imag151 = getelementptr inbounds %struct.scomplex, ptr %136, i32 0, i32 1
  %137 = load float, ptr %imag151, align 4, !tbaa !30
  %138 = load ptr, ptr %zeta11, align 8, !tbaa !19
  %imag152 = getelementptr inbounds %struct.scomplex, ptr %138, i32 0, i32 1
  %139 = load float, ptr %imag152, align 4, !tbaa !30
  %mul153 = fmul float %137, %139
  %neg154 = fneg float %mul153
  %140 = call float @llvm.fmuladd.f32(float %133, float %135, float %neg154)
  store float %140, ptr %tempr147, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 4, ptr %tempi155) #5
  %141 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %imag156 = getelementptr inbounds %struct.scomplex, ptr %141, i32 0, i32 1
  %142 = load float, ptr %imag156, align 4, !tbaa !30
  %143 = load ptr, ptr %zeta11, align 8, !tbaa !19
  %real157 = getelementptr inbounds %struct.scomplex, ptr %143, i32 0, i32 0
  %144 = load float, ptr %real157, align 4, !tbaa !28
  %145 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %real159 = getelementptr inbounds %struct.scomplex, ptr %145, i32 0, i32 0
  %146 = load float, ptr %real159, align 4, !tbaa !28
  %147 = load ptr, ptr %zeta11, align 8, !tbaa !19
  %imag160 = getelementptr inbounds %struct.scomplex, ptr %147, i32 0, i32 1
  %148 = load float, ptr %imag160, align 4, !tbaa !30
  %mul161 = fmul float %146, %148
  %149 = call float @llvm.fmuladd.f32(float %142, float %144, float %mul161)
  store float %149, ptr %tempi155, align 4, !tbaa !20
  %150 = load float, ptr %tempr147, align 4, !tbaa !20
  %real162 = getelementptr inbounds %struct.scomplex, ptr %minus_zeta11, i32 0, i32 0
  store float %150, ptr %real162, align 4, !tbaa !28
  %151 = load float, ptr %tempi155, align 4, !tbaa !20
  %imag163 = getelementptr inbounds %struct.scomplex, ptr %minus_zeta11, i32 0, i32 1
  store float %151, ptr %imag163, align 4, !tbaa !30
  call void @llvm.lifetime.end.p0(i64 4, ptr %tempi155) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %tempr147) #5
  %real164 = getelementptr inbounds %struct.scomplex, ptr %minus_zeta11, i32 0, i32 0
  %152 = load float, ptr %real164, align 4, !tbaa !28
  %real165 = getelementptr inbounds %struct.scomplex, ptr %minus_conj_zeta11, i32 0, i32 0
  store float %152, ptr %real165, align 4, !tbaa !28
  %imag166 = getelementptr inbounds %struct.scomplex, ptr %minus_zeta11, i32 0, i32 1
  %153 = load float, ptr %imag166, align 4, !tbaa !30
  %mul167 = fmul float -1.000000e+00, %153
  %imag168 = getelementptr inbounds %struct.scomplex, ptr %minus_conj_zeta11, i32 0, i32 1
  store float %mul167, ptr %imag168, align 4, !tbaa !30
  %154 = load ptr, ptr %zeta11, align 8, !tbaa !19
  %155 = load ptr, ptr %alpha11, align 8, !tbaa !19
  call void @bl1_caxpyv(i32 noundef 501, i32 noundef 1, ptr noundef %minus_upsilon11, ptr noundef %154, i32 noundef 1, ptr noundef %155, i32 noundef 1)
  %156 = load ptr, ptr %upsilon11, align 8, !tbaa !19
  %157 = load ptr, ptr %alpha11, align 8, !tbaa !19
  call void @bl1_caxpyv(i32 noundef 501, i32 noundef 1, ptr noundef %minus_zeta11, ptr noundef %156, i32 noundef 1, ptr noundef %157, i32 noundef 1)
  %158 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %159 = load ptr, ptr %u21, align 8, !tbaa !19
  %160 = load i32, ptr %inc_u, align 4, !tbaa !4
  %161 = load ptr, ptr %a21, align 8, !tbaa !19
  %162 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  call void @bl1_caxpyv(i32 noundef 500, i32 noundef %158, ptr noundef %minus_conj_zeta11, ptr noundef %159, i32 noundef %160, ptr noundef %161, i32 noundef %162)
  %163 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %164 = load ptr, ptr %z21, align 8, !tbaa !19
  %165 = load i32, ptr %inc_z, align 4, !tbaa !4
  %166 = load ptr, ptr %a21, align 8, !tbaa !19
  %167 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  call void @bl1_caxpyv(i32 noundef 500, i32 noundef %163, ptr noundef %minus_conj_upsilon11, ptr noundef %164, i32 noundef %165, ptr noundef %166, i32 noundef %167)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %168 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %cmp169 = icmp sgt i32 %168, 0
  br i1 %cmp169, label %if.then171, label %if.end248

if.then171:                                       ; preds = %if.end
  %169 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %sub172 = sub nsw i32 %169, 1
  %170 = load ptr, ptr %a21_t, align 8, !tbaa !19
  %171 = load ptr, ptr %a21_b, align 8, !tbaa !19
  %172 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %173 = load ptr, ptr %tau11, align 8, !tbaa !19
  %call173 = call i32 @FLA_Househ2_UT_l_opc(i32 noundef %sub172, ptr noundef %170, ptr noundef %171, i32 noundef %172, ptr noundef %173)
  %174 = load ptr, ptr %buff_1, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %inv_tau11, ptr align 4 %174, i64 8, i1 false), !tbaa.struct !27
  call void @llvm.lifetime.start.p0(i64 4, ptr %s) #5
  %175 = load ptr, ptr %tau11, align 8, !tbaa !19
  %real174 = getelementptr inbounds %struct.scomplex, ptr %175, i32 0, i32 0
  %176 = load float, ptr %real174, align 4, !tbaa !28
  %conv175 = fpext float %176 to double
  %cmp176 = fcmp ole double %conv175, 0.000000e+00
  br i1 %cmp176, label %cond.true178, label %cond.false180

cond.true178:                                     ; preds = %if.then171
  %177 = load ptr, ptr %tau11, align 8, !tbaa !19
  %real179 = getelementptr inbounds %struct.scomplex, ptr %177, i32 0, i32 0
  %178 = load float, ptr %real179, align 4, !tbaa !28
  %fneg = fneg float %178
  br label %cond.end182

cond.false180:                                    ; preds = %if.then171
  %179 = load ptr, ptr %tau11, align 8, !tbaa !19
  %real181 = getelementptr inbounds %struct.scomplex, ptr %179, i32 0, i32 0
  %180 = load float, ptr %real181, align 4, !tbaa !28
  br label %cond.end182

cond.end182:                                      ; preds = %cond.false180, %cond.true178
  %cond183 = phi float [ %fneg, %cond.true178 ], [ %180, %cond.false180 ]
  %181 = load ptr, ptr %tau11, align 8, !tbaa !19
  %imag184 = getelementptr inbounds %struct.scomplex, ptr %181, i32 0, i32 1
  %182 = load float, ptr %imag184, align 4, !tbaa !30
  %conv185 = fpext float %182 to double
  %cmp186 = fcmp ole double %conv185, 0.000000e+00
  br i1 %cmp186, label %cond.true188, label %cond.false191

cond.true188:                                     ; preds = %cond.end182
  %183 = load ptr, ptr %tau11, align 8, !tbaa !19
  %imag189 = getelementptr inbounds %struct.scomplex, ptr %183, i32 0, i32 1
  %184 = load float, ptr %imag189, align 4, !tbaa !30
  %fneg190 = fneg float %184
  br label %cond.end193

cond.false191:                                    ; preds = %cond.end182
  %185 = load ptr, ptr %tau11, align 8, !tbaa !19
  %imag192 = getelementptr inbounds %struct.scomplex, ptr %185, i32 0, i32 1
  %186 = load float, ptr %imag192, align 4, !tbaa !30
  br label %cond.end193

cond.end193:                                      ; preds = %cond.false191, %cond.true188
  %cond194 = phi float [ %fneg190, %cond.true188 ], [ %186, %cond.false191 ]
  %cmp195 = fcmp ogt float %cond183, %cond194
  br i1 %cmp195, label %cond.true197, label %cond.false209

cond.true197:                                     ; preds = %cond.end193
  %187 = load ptr, ptr %tau11, align 8, !tbaa !19
  %real198 = getelementptr inbounds %struct.scomplex, ptr %187, i32 0, i32 0
  %188 = load float, ptr %real198, align 4, !tbaa !28
  %conv199 = fpext float %188 to double
  %cmp200 = fcmp ole double %conv199, 0.000000e+00
  br i1 %cmp200, label %cond.true202, label %cond.false205

cond.true202:                                     ; preds = %cond.true197
  %189 = load ptr, ptr %tau11, align 8, !tbaa !19
  %real203 = getelementptr inbounds %struct.scomplex, ptr %189, i32 0, i32 0
  %190 = load float, ptr %real203, align 4, !tbaa !28
  %fneg204 = fneg float %190
  br label %cond.end207

cond.false205:                                    ; preds = %cond.true197
  %191 = load ptr, ptr %tau11, align 8, !tbaa !19
  %real206 = getelementptr inbounds %struct.scomplex, ptr %191, i32 0, i32 0
  %192 = load float, ptr %real206, align 4, !tbaa !28
  br label %cond.end207

cond.end207:                                      ; preds = %cond.false205, %cond.true202
  %cond208 = phi float [ %fneg204, %cond.true202 ], [ %192, %cond.false205 ]
  br label %cond.end221

cond.false209:                                    ; preds = %cond.end193
  %193 = load ptr, ptr %tau11, align 8, !tbaa !19
  %imag210 = getelementptr inbounds %struct.scomplex, ptr %193, i32 0, i32 1
  %194 = load float, ptr %imag210, align 4, !tbaa !30
  %conv211 = fpext float %194 to double
  %cmp212 = fcmp ole double %conv211, 0.000000e+00
  br i1 %cmp212, label %cond.true214, label %cond.false217

cond.true214:                                     ; preds = %cond.false209
  %195 = load ptr, ptr %tau11, align 8, !tbaa !19
  %imag215 = getelementptr inbounds %struct.scomplex, ptr %195, i32 0, i32 1
  %196 = load float, ptr %imag215, align 4, !tbaa !30
  %fneg216 = fneg float %196
  br label %cond.end219

cond.false217:                                    ; preds = %cond.false209
  %197 = load ptr, ptr %tau11, align 8, !tbaa !19
  %imag218 = getelementptr inbounds %struct.scomplex, ptr %197, i32 0, i32 1
  %198 = load float, ptr %imag218, align 4, !tbaa !30
  br label %cond.end219

cond.end219:                                      ; preds = %cond.false217, %cond.true214
  %cond220 = phi float [ %fneg216, %cond.true214 ], [ %198, %cond.false217 ]
  br label %cond.end221

cond.end221:                                      ; preds = %cond.end219, %cond.end207
  %cond222 = phi float [ %cond208, %cond.end207 ], [ %cond220, %cond.end219 ]
  store float %cond222, ptr %s, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 4, ptr %ar_s) #5
  %199 = load ptr, ptr %tau11, align 8, !tbaa !19
  %real223 = getelementptr inbounds %struct.scomplex, ptr %199, i32 0, i32 0
  %200 = load float, ptr %real223, align 4, !tbaa !28
  %201 = load float, ptr %s, align 4, !tbaa !20
  %div = fdiv float %200, %201
  store float %div, ptr %ar_s, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 4, ptr %ai_s) #5
  %202 = load ptr, ptr %tau11, align 8, !tbaa !19
  %imag224 = getelementptr inbounds %struct.scomplex, ptr %202, i32 0, i32 1
  %203 = load float, ptr %imag224, align 4, !tbaa !30
  %204 = load float, ptr %s, align 4, !tbaa !20
  %div225 = fdiv float %203, %204
  store float %div225, ptr %ai_s, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 4, ptr %yrt) #5
  %real226 = getelementptr inbounds %struct.scomplex, ptr %inv_tau11, i32 0, i32 0
  %205 = load float, ptr %real226, align 4, !tbaa !28
  store float %205, ptr %yrt, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 4, ptr %temp) #5
  %206 = load float, ptr %ar_s, align 4, !tbaa !20
  %207 = load ptr, ptr %tau11, align 8, !tbaa !19
  %real227 = getelementptr inbounds %struct.scomplex, ptr %207, i32 0, i32 0
  %208 = load float, ptr %real227, align 4, !tbaa !28
  %209 = load float, ptr %ai_s, align 4, !tbaa !20
  %210 = load ptr, ptr %tau11, align 8, !tbaa !19
  %imag229 = getelementptr inbounds %struct.scomplex, ptr %210, i32 0, i32 1
  %211 = load float, ptr %imag229, align 4, !tbaa !30
  %mul230 = fmul float %209, %211
  %212 = call float @llvm.fmuladd.f32(float %206, float %208, float %mul230)
  store float %212, ptr %temp, align 4, !tbaa !20
  %213 = load float, ptr %yrt, align 4, !tbaa !20
  %214 = load float, ptr %ar_s, align 4, !tbaa !20
  %imag232 = getelementptr inbounds %struct.scomplex, ptr %inv_tau11, i32 0, i32 1
  %215 = load float, ptr %imag232, align 4, !tbaa !30
  %216 = load float, ptr %ai_s, align 4, !tbaa !20
  %mul233 = fmul float %215, %216
  %217 = call float @llvm.fmuladd.f32(float %213, float %214, float %mul233)
  %218 = load float, ptr %temp, align 4, !tbaa !20
  %div234 = fdiv float %217, %218
  %real235 = getelementptr inbounds %struct.scomplex, ptr %inv_tau11, i32 0, i32 0
  store float %div234, ptr %real235, align 4, !tbaa !28
  %imag236 = getelementptr inbounds %struct.scomplex, ptr %inv_tau11, i32 0, i32 1
  %219 = load float, ptr %imag236, align 4, !tbaa !30
  %220 = load float, ptr %ar_s, align 4, !tbaa !20
  %221 = load float, ptr %yrt, align 4, !tbaa !20
  %222 = load float, ptr %ai_s, align 4, !tbaa !20
  %mul238 = fmul float %221, %222
  %neg239 = fneg float %mul238
  %223 = call float @llvm.fmuladd.f32(float %219, float %220, float %neg239)
  %224 = load float, ptr %temp, align 4, !tbaa !20
  %div240 = fdiv float %223, %224
  %imag241 = getelementptr inbounds %struct.scomplex, ptr %inv_tau11, i32 0, i32 1
  store float %div240, ptr %imag241, align 4, !tbaa !30
  call void @llvm.lifetime.end.p0(i64 4, ptr %temp) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %yrt) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %ai_s) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %ar_s) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %s) #5
  %real242 = getelementptr inbounds %struct.scomplex, ptr %inv_tau11, i32 0, i32 0
  %225 = load float, ptr %real242, align 4, !tbaa !28
  %mul243 = fmul float -1.000000e+00, %225
  %real244 = getelementptr inbounds %struct.scomplex, ptr %minus_inv_tau11, i32 0, i32 0
  store float %mul243, ptr %real244, align 4, !tbaa !28
  %imag245 = getelementptr inbounds %struct.scomplex, ptr %inv_tau11, i32 0, i32 1
  %226 = load float, ptr %imag245, align 4, !tbaa !30
  %mul246 = fmul float -1.000000e+00, %226
  %imag247 = getelementptr inbounds %struct.scomplex, ptr %minus_inv_tau11, i32 0, i32 1
  store float %mul246, ptr %imag247, align 4, !tbaa !30
  %227 = load ptr, ptr %a21_t, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %first_elem, ptr align 4 %227, i64 8, i1 false), !tbaa.struct !27
  %228 = load ptr, ptr %a21_t, align 8, !tbaa !19
  %229 = load ptr, ptr %buff_1, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %228, ptr align 4 %229, i64 8, i1 false), !tbaa.struct !27
  br label %if.end248

if.end248:                                        ; preds = %cond.end221, %if.end
  %230 = load i32, ptr %m_behind, align 4, !tbaa !4
  %cmp249 = icmp sgt i32 %230, 0
  br i1 %cmp249, label %if.then251, label %if.end252

if.then251:                                       ; preds = %if.end248
  %231 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %232 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %233 = load ptr, ptr %u21, align 8, !tbaa !19
  %234 = load i32, ptr %inc_u, align 4, !tbaa !4
  %235 = load ptr, ptr %z21, align 8, !tbaa !19
  %236 = load i32, ptr %inc_z, align 4, !tbaa !4
  %237 = load ptr, ptr %A22, align 8, !tbaa !19
  %238 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %239 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  call void @bl1_cher2(i32 noundef 200, i32 noundef 500, i32 noundef %231, ptr noundef %232, ptr noundef %233, i32 noundef %234, ptr noundef %235, i32 noundef %236, ptr noundef %237, i32 noundef %238, i32 noundef %239)
  br label %if.end252

if.end252:                                        ; preds = %if.then251, %if.end248
  %240 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %cmp253 = icmp sgt i32 %240, 0
  br i1 %cmp253, label %if.then255, label %if.end348

if.then255:                                       ; preds = %if.end252
  %241 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %242 = load ptr, ptr %buff_1, align 8, !tbaa !19
  %243 = load ptr, ptr %A22, align 8, !tbaa !19
  %244 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %245 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %246 = load ptr, ptr %a21, align 8, !tbaa !19
  %247 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %248 = load ptr, ptr %buff_0, align 8, !tbaa !19
  %249 = load ptr, ptr %w21, align 8, !tbaa !19
  %250 = load i32, ptr %inc_w, align 4, !tbaa !4
  call void @bl1_chemv(i32 noundef 200, i32 noundef 500, i32 noundef %241, ptr noundef %242, ptr noundef %243, i32 noundef %244, i32 noundef %245, ptr noundef %246, i32 noundef %247, ptr noundef %248, ptr noundef %249, i32 noundef %250)
  %251 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %252 = load ptr, ptr %a21, align 8, !tbaa !19
  %253 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %254 = load ptr, ptr %u21, align 8, !tbaa !19
  %255 = load i32, ptr %inc_u, align 4, !tbaa !4
  call void @bl1_ccopyv(i32 noundef 500, i32 noundef %251, ptr noundef %252, i32 noundef %253, ptr noundef %254, i32 noundef %255)
  %256 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %257 = load ptr, ptr %w21, align 8, !tbaa !19
  %258 = load i32, ptr %inc_w, align 4, !tbaa !4
  %259 = load ptr, ptr %z21, align 8, !tbaa !19
  %260 = load i32, ptr %inc_z, align 4, !tbaa !4
  call void @bl1_ccopyv(i32 noundef 500, i32 noundef %256, ptr noundef %257, i32 noundef %258, ptr noundef %259, i32 noundef %260)
  %261 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %262 = load ptr, ptr %a21, align 8, !tbaa !19
  %263 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %264 = load ptr, ptr %z21, align 8, !tbaa !19
  %265 = load i32, ptr %inc_z, align 4, !tbaa !4
  call void @bl1_cdot(i32 noundef 501, i32 noundef %261, ptr noundef %262, i32 noundef %263, ptr noundef %264, i32 noundef %265, ptr noundef %beta)
  call void @llvm.lifetime.start.p0(i64 4, ptr %s256) #5
  %266 = load ptr, ptr %buff_2, align 8, !tbaa !19
  %real257 = getelementptr inbounds %struct.scomplex, ptr %266, i32 0, i32 0
  %267 = load float, ptr %real257, align 4, !tbaa !28
  %conv258 = fpext float %267 to double
  %cmp259 = fcmp ole double %conv258, 0.000000e+00
  br i1 %cmp259, label %cond.true261, label %cond.false264

cond.true261:                                     ; preds = %if.then255
  %268 = load ptr, ptr %buff_2, align 8, !tbaa !19
  %real262 = getelementptr inbounds %struct.scomplex, ptr %268, i32 0, i32 0
  %269 = load float, ptr %real262, align 4, !tbaa !28
  %fneg263 = fneg float %269
  br label %cond.end266

cond.false264:                                    ; preds = %if.then255
  %270 = load ptr, ptr %buff_2, align 8, !tbaa !19
  %real265 = getelementptr inbounds %struct.scomplex, ptr %270, i32 0, i32 0
  %271 = load float, ptr %real265, align 4, !tbaa !28
  br label %cond.end266

cond.end266:                                      ; preds = %cond.false264, %cond.true261
  %cond267 = phi float [ %fneg263, %cond.true261 ], [ %271, %cond.false264 ]
  %272 = load ptr, ptr %buff_2, align 8, !tbaa !19
  %imag268 = getelementptr inbounds %struct.scomplex, ptr %272, i32 0, i32 1
  %273 = load float, ptr %imag268, align 4, !tbaa !30
  %conv269 = fpext float %273 to double
  %cmp270 = fcmp ole double %conv269, 0.000000e+00
  br i1 %cmp270, label %cond.true272, label %cond.false275

cond.true272:                                     ; preds = %cond.end266
  %274 = load ptr, ptr %buff_2, align 8, !tbaa !19
  %imag273 = getelementptr inbounds %struct.scomplex, ptr %274, i32 0, i32 1
  %275 = load float, ptr %imag273, align 4, !tbaa !30
  %fneg274 = fneg float %275
  br label %cond.end277

cond.false275:                                    ; preds = %cond.end266
  %276 = load ptr, ptr %buff_2, align 8, !tbaa !19
  %imag276 = getelementptr inbounds %struct.scomplex, ptr %276, i32 0, i32 1
  %277 = load float, ptr %imag276, align 4, !tbaa !30
  br label %cond.end277

cond.end277:                                      ; preds = %cond.false275, %cond.true272
  %cond278 = phi float [ %fneg274, %cond.true272 ], [ %277, %cond.false275 ]
  %cmp279 = fcmp ogt float %cond267, %cond278
  br i1 %cmp279, label %cond.true281, label %cond.false293

cond.true281:                                     ; preds = %cond.end277
  %278 = load ptr, ptr %buff_2, align 8, !tbaa !19
  %real282 = getelementptr inbounds %struct.scomplex, ptr %278, i32 0, i32 0
  %279 = load float, ptr %real282, align 4, !tbaa !28
  %conv283 = fpext float %279 to double
  %cmp284 = fcmp ole double %conv283, 0.000000e+00
  br i1 %cmp284, label %cond.true286, label %cond.false289

cond.true286:                                     ; preds = %cond.true281
  %280 = load ptr, ptr %buff_2, align 8, !tbaa !19
  %real287 = getelementptr inbounds %struct.scomplex, ptr %280, i32 0, i32 0
  %281 = load float, ptr %real287, align 4, !tbaa !28
  %fneg288 = fneg float %281
  br label %cond.end291

cond.false289:                                    ; preds = %cond.true281
  %282 = load ptr, ptr %buff_2, align 8, !tbaa !19
  %real290 = getelementptr inbounds %struct.scomplex, ptr %282, i32 0, i32 0
  %283 = load float, ptr %real290, align 4, !tbaa !28
  br label %cond.end291

cond.end291:                                      ; preds = %cond.false289, %cond.true286
  %cond292 = phi float [ %fneg288, %cond.true286 ], [ %283, %cond.false289 ]
  br label %cond.end305

cond.false293:                                    ; preds = %cond.end277
  %284 = load ptr, ptr %buff_2, align 8, !tbaa !19
  %imag294 = getelementptr inbounds %struct.scomplex, ptr %284, i32 0, i32 1
  %285 = load float, ptr %imag294, align 4, !tbaa !30
  %conv295 = fpext float %285 to double
  %cmp296 = fcmp ole double %conv295, 0.000000e+00
  br i1 %cmp296, label %cond.true298, label %cond.false301

cond.true298:                                     ; preds = %cond.false293
  %286 = load ptr, ptr %buff_2, align 8, !tbaa !19
  %imag299 = getelementptr inbounds %struct.scomplex, ptr %286, i32 0, i32 1
  %287 = load float, ptr %imag299, align 4, !tbaa !30
  %fneg300 = fneg float %287
  br label %cond.end303

cond.false301:                                    ; preds = %cond.false293
  %288 = load ptr, ptr %buff_2, align 8, !tbaa !19
  %imag302 = getelementptr inbounds %struct.scomplex, ptr %288, i32 0, i32 1
  %289 = load float, ptr %imag302, align 4, !tbaa !30
  br label %cond.end303

cond.end303:                                      ; preds = %cond.false301, %cond.true298
  %cond304 = phi float [ %fneg300, %cond.true298 ], [ %289, %cond.false301 ]
  br label %cond.end305

cond.end305:                                      ; preds = %cond.end303, %cond.end291
  %cond306 = phi float [ %cond292, %cond.end291 ], [ %cond304, %cond.end303 ]
  store float %cond306, ptr %s256, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 4, ptr %ar_s307) #5
  %290 = load ptr, ptr %buff_2, align 8, !tbaa !19
  %real308 = getelementptr inbounds %struct.scomplex, ptr %290, i32 0, i32 0
  %291 = load float, ptr %real308, align 4, !tbaa !28
  %292 = load float, ptr %s256, align 4, !tbaa !20
  %div309 = fdiv float %291, %292
  store float %div309, ptr %ar_s307, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 4, ptr %ai_s310) #5
  %293 = load ptr, ptr %buff_2, align 8, !tbaa !19
  %imag311 = getelementptr inbounds %struct.scomplex, ptr %293, i32 0, i32 1
  %294 = load float, ptr %imag311, align 4, !tbaa !30
  %295 = load float, ptr %s256, align 4, !tbaa !20
  %div312 = fdiv float %294, %295
  store float %div312, ptr %ai_s310, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 4, ptr %yrt313) #5
  %real314 = getelementptr inbounds %struct.scomplex, ptr %beta, i32 0, i32 0
  %296 = load float, ptr %real314, align 4, !tbaa !28
  store float %296, ptr %yrt313, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 4, ptr %temp315) #5
  %297 = load float, ptr %ar_s307, align 4, !tbaa !20
  %298 = load ptr, ptr %buff_2, align 8, !tbaa !19
  %real316 = getelementptr inbounds %struct.scomplex, ptr %298, i32 0, i32 0
  %299 = load float, ptr %real316, align 4, !tbaa !28
  %300 = load float, ptr %ai_s310, align 4, !tbaa !20
  %301 = load ptr, ptr %buff_2, align 8, !tbaa !19
  %imag318 = getelementptr inbounds %struct.scomplex, ptr %301, i32 0, i32 1
  %302 = load float, ptr %imag318, align 4, !tbaa !30
  %mul319 = fmul float %300, %302
  %303 = call float @llvm.fmuladd.f32(float %297, float %299, float %mul319)
  store float %303, ptr %temp315, align 4, !tbaa !20
  %304 = load float, ptr %yrt313, align 4, !tbaa !20
  %305 = load float, ptr %ar_s307, align 4, !tbaa !20
  %imag321 = getelementptr inbounds %struct.scomplex, ptr %beta, i32 0, i32 1
  %306 = load float, ptr %imag321, align 4, !tbaa !30
  %307 = load float, ptr %ai_s310, align 4, !tbaa !20
  %mul322 = fmul float %306, %307
  %308 = call float @llvm.fmuladd.f32(float %304, float %305, float %mul322)
  %309 = load float, ptr %temp315, align 4, !tbaa !20
  %div323 = fdiv float %308, %309
  %real324 = getelementptr inbounds %struct.scomplex, ptr %beta, i32 0, i32 0
  store float %div323, ptr %real324, align 4, !tbaa !28
  %imag325 = getelementptr inbounds %struct.scomplex, ptr %beta, i32 0, i32 1
  %310 = load float, ptr %imag325, align 4, !tbaa !30
  %311 = load float, ptr %ar_s307, align 4, !tbaa !20
  %312 = load float, ptr %yrt313, align 4, !tbaa !20
  %313 = load float, ptr %ai_s310, align 4, !tbaa !20
  %mul327 = fmul float %312, %313
  %neg328 = fneg float %mul327
  %314 = call float @llvm.fmuladd.f32(float %310, float %311, float %neg328)
  %315 = load float, ptr %temp315, align 4, !tbaa !20
  %div329 = fdiv float %314, %315
  %imag330 = getelementptr inbounds %struct.scomplex, ptr %beta, i32 0, i32 1
  store float %div329, ptr %imag330, align 4, !tbaa !30
  call void @llvm.lifetime.end.p0(i64 4, ptr %temp315) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %yrt313) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %ai_s310) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %ar_s307) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %s256) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %tempr331) #5
  %real332 = getelementptr inbounds %struct.scomplex, ptr %minus_inv_tau11, i32 0, i32 0
  %316 = load float, ptr %real332, align 4, !tbaa !28
  %real333 = getelementptr inbounds %struct.scomplex, ptr %beta, i32 0, i32 0
  %317 = load float, ptr %real333, align 4, !tbaa !28
  %imag335 = getelementptr inbounds %struct.scomplex, ptr %minus_inv_tau11, i32 0, i32 1
  %318 = load float, ptr %imag335, align 4, !tbaa !30
  %imag336 = getelementptr inbounds %struct.scomplex, ptr %beta, i32 0, i32 1
  %319 = load float, ptr %imag336, align 4, !tbaa !30
  %mul337 = fmul float %318, %319
  %neg338 = fneg float %mul337
  %320 = call float @llvm.fmuladd.f32(float %316, float %317, float %neg338)
  store float %320, ptr %tempr331, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 4, ptr %tempi339) #5
  %imag340 = getelementptr inbounds %struct.scomplex, ptr %minus_inv_tau11, i32 0, i32 1
  %321 = load float, ptr %imag340, align 4, !tbaa !30
  %real341 = getelementptr inbounds %struct.scomplex, ptr %beta, i32 0, i32 0
  %322 = load float, ptr %real341, align 4, !tbaa !28
  %real343 = getelementptr inbounds %struct.scomplex, ptr %minus_inv_tau11, i32 0, i32 0
  %323 = load float, ptr %real343, align 4, !tbaa !28
  %imag344 = getelementptr inbounds %struct.scomplex, ptr %beta, i32 0, i32 1
  %324 = load float, ptr %imag344, align 4, !tbaa !30
  %mul345 = fmul float %323, %324
  %325 = call float @llvm.fmuladd.f32(float %321, float %322, float %mul345)
  store float %325, ptr %tempi339, align 4, !tbaa !20
  %326 = load float, ptr %tempr331, align 4, !tbaa !20
  %real346 = getelementptr inbounds %struct.scomplex, ptr %beta, i32 0, i32 0
  store float %326, ptr %real346, align 4, !tbaa !28
  %327 = load float, ptr %tempi339, align 4, !tbaa !20
  %imag347 = getelementptr inbounds %struct.scomplex, ptr %beta, i32 0, i32 1
  store float %327, ptr %imag347, align 4, !tbaa !30
  call void @llvm.lifetime.end.p0(i64 4, ptr %tempi339) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %tempr331) #5
  %328 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %329 = load ptr, ptr %a21, align 8, !tbaa !19
  %330 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %331 = load ptr, ptr %z21, align 8, !tbaa !19
  %332 = load i32, ptr %inc_z, align 4, !tbaa !4
  call void @bl1_caxpyv(i32 noundef 500, i32 noundef %328, ptr noundef %beta, ptr noundef %329, i32 noundef %330, ptr noundef %331, i32 noundef %332)
  %333 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %334 = load ptr, ptr %z21, align 8, !tbaa !19
  %335 = load i32, ptr %inc_z, align 4, !tbaa !4
  call void @bl1_cscalv(i32 noundef 500, i32 noundef %333, ptr noundef %inv_tau11, ptr noundef %334, i32 noundef %335)
  %336 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %337 = load i32, ptr %n_behind, align 4, !tbaa !4
  %338 = load ptr, ptr %buff_1, align 8, !tbaa !19
  %339 = load ptr, ptr %A20, align 8, !tbaa !19
  %340 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %341 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %342 = load ptr, ptr %a21, align 8, !tbaa !19
  %343 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %344 = load ptr, ptr %buff_0, align 8, !tbaa !19
  %345 = load ptr, ptr %t01, align 8, !tbaa !19
  %346 = load i32, ptr %rs_T.addr, align 4, !tbaa !4
  call void @bl1_cgemv(i32 noundef 103, i32 noundef 500, i32 noundef %336, i32 noundef %337, ptr noundef %338, ptr noundef %339, i32 noundef %340, i32 noundef %341, ptr noundef %342, i32 noundef %343, ptr noundef %344, ptr noundef %345, i32 noundef %346)
  %347 = load ptr, ptr %a21_t, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %347, ptr align 4 %first_elem, i64 8, i1 false), !tbaa.struct !27
  br label %if.end348

if.end348:                                        ; preds = %cond.end305, %if.end252
  %348 = load i32, ptr %m_behind, align 4, !tbaa !4
  %add349 = add nsw i32 %348, 1
  %349 = load i32, ptr %b_alg, align 4, !tbaa !4
  %cmp350 = icmp eq i32 %add349, %349
  br i1 %cmp350, label %land.lhs.true, label %if.end355

land.lhs.true:                                    ; preds = %if.end348
  %350 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %cmp352 = icmp sgt i32 %350, 0
  br i1 %cmp352, label %if.then354, label %if.end355

if.then354:                                       ; preds = %land.lhs.true
  %351 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %352 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %353 = load ptr, ptr %u21, align 8, !tbaa !19
  %354 = load i32, ptr %inc_u, align 4, !tbaa !4
  %355 = load ptr, ptr %z21, align 8, !tbaa !19
  %356 = load i32, ptr %inc_z, align 4, !tbaa !4
  %357 = load ptr, ptr %A22, align 8, !tbaa !19
  %358 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %359 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  call void @bl1_cher2(i32 noundef 200, i32 noundef 500, i32 noundef %351, ptr noundef %352, ptr noundef %353, i32 noundef %354, ptr noundef %355, i32 noundef %356, ptr noundef %357, i32 noundef %358, i32 noundef %359)
  br label %if.end355

if.end355:                                        ; preds = %if.then354, %land.lhs.true, %if.end348
  call void @llvm.lifetime.end.p0(i64 4, ptr %n_behind) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %m_behind) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %m_ahead) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %a21_b) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %a21_t) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %w21) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %z21) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %zeta11) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %u21) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %upsilon11) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %tau11) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %t01) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %A22) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %a21) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %alpha11) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %A20) #5
  br label %for.inc

for.inc:                                          ; preds = %if.end355
  %360 = load i32, ptr %i, align 4, !tbaa !4
  %inc = add nsw i32 %360, 1
  store i32 %inc, ptr %i, align 4, !tbaa !4
  br label %for.cond, !llvm.loop !31

for.end:                                          ; preds = %for.cond
  %361 = load ptr, ptr %buff_u, align 8, !tbaa !19
  call void @FLA_free(ptr noundef %361)
  %362 = load ptr, ptr %buff_z, align 8, !tbaa !19
  call void @FLA_free(ptr noundef %362)
  %363 = load ptr, ptr %buff_w, align 8, !tbaa !19
  call void @FLA_free(ptr noundef %363)
  call void @llvm.lifetime.end.p0(i64 4, ptr %inc_w) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %inc_z) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %inc_u) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_w) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_z) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_u) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %b_alg) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %minus_conj_zeta11) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %minus_zeta11) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %minus_conj_upsilon11) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %minus_upsilon11) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %minus_inv_tau11) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %inv_tau11) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %beta) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %first_elem) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_m1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_0) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_2) #5
  ret i32 -1
}

; Function Attrs: nounwind uwtable
define i32 @FLA_Tridiag_UT_l_step_opz_var2(i32 noundef %m_A, i32 noundef %m_T, ptr noundef %buff_A, i32 noundef %rs_A, i32 noundef %cs_A, ptr noundef %buff_T, i32 noundef %rs_T, i32 noundef %cs_T) #0 {
entry:
  %m_A.addr = alloca i32, align 4
  %m_T.addr = alloca i32, align 4
  %buff_A.addr = alloca ptr, align 8
  %rs_A.addr = alloca i32, align 4
  %cs_A.addr = alloca i32, align 4
  %buff_T.addr = alloca ptr, align 8
  %rs_T.addr = alloca i32, align 4
  %cs_T.addr = alloca i32, align 4
  %buff_2 = alloca ptr, align 8
  %buff_1 = alloca ptr, align 8
  %buff_0 = alloca ptr, align 8
  %buff_m1 = alloca ptr, align 8
  %first_elem = alloca %struct.dcomplex, align 8
  %beta = alloca %struct.dcomplex, align 8
  %inv_tau11 = alloca %struct.dcomplex, align 8
  %minus_inv_tau11 = alloca %struct.dcomplex, align 8
  %minus_upsilon11 = alloca %struct.dcomplex, align 8
  %minus_conj_upsilon11 = alloca %struct.dcomplex, align 8
  %minus_zeta11 = alloca %struct.dcomplex, align 8
  %minus_conj_zeta11 = alloca %struct.dcomplex, align 8
  %i = alloca i32, align 4
  %b_alg = alloca i32, align 4
  %buff_u = alloca ptr, align 8
  %buff_z = alloca ptr, align 8
  %buff_w = alloca ptr, align 8
  %inc_u = alloca i32, align 4
  %inc_z = alloca i32, align 4
  %inc_w = alloca i32, align 4
  %A20 = alloca ptr, align 8
  %alpha11 = alloca ptr, align 8
  %a21 = alloca ptr, align 8
  %A22 = alloca ptr, align 8
  %t01 = alloca ptr, align 8
  %tau11 = alloca ptr, align 8
  %upsilon11 = alloca ptr, align 8
  %u21 = alloca ptr, align 8
  %zeta11 = alloca ptr, align 8
  %z21 = alloca ptr, align 8
  %w21 = alloca ptr, align 8
  %a21_t = alloca ptr, align 8
  %a21_b = alloca ptr, align 8
  %m_ahead = alloca i32, align 4
  %m_behind = alloca i32, align 4
  %n_behind = alloca i32, align 4
  %tempr = alloca double, align 8
  %tempi = alloca double, align 8
  %tempr147 = alloca double, align 8
  %tempi155 = alloca double, align 8
  %s = alloca double, align 8
  %ar_s = alloca double, align 8
  %ai_s = alloca double, align 8
  %yrt = alloca double, align 8
  %temp = alloca double, align 8
  %s252 = alloca double, align 8
  %ar_s299 = alloca double, align 8
  %ai_s302 = alloca double, align 8
  %yrt305 = alloca double, align 8
  %temp307 = alloca double, align 8
  %tempr323 = alloca double, align 8
  %tempi331 = alloca double, align 8
  store i32 %m_A, ptr %m_A.addr, align 4, !tbaa !4
  store i32 %m_T, ptr %m_T.addr, align 4, !tbaa !4
  store ptr %buff_A, ptr %buff_A.addr, align 8, !tbaa !19
  store i32 %rs_A, ptr %rs_A.addr, align 4, !tbaa !4
  store i32 %cs_A, ptr %cs_A.addr, align 4, !tbaa !4
  store ptr %buff_T, ptr %buff_T.addr, align 8, !tbaa !19
  store i32 %rs_T, ptr %rs_T.addr, align 4, !tbaa !4
  store i32 %cs_T, ptr %cs_T.addr, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_2) #5
  %0 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_TWO, i32 0, i32 6), align 8, !tbaa !8
  %datatype = getelementptr inbounds %struct.FLA_Obj_struct, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %datatype, align 8, !tbaa !12
  %cmp = icmp eq i32 %1, 105
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_TWO, i32 0, i32 6), align 8, !tbaa !8
  %buffer = getelementptr inbounds %struct.FLA_Obj_struct, ptr %2, i32 0, i32 12
  %3 = load ptr, ptr %buffer, align 8, !tbaa !14
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 32
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_TWO, i32 0, i32 6), align 8, !tbaa !8
  %buffer1 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %4, i32 0, i32 12
  %5 = load ptr, ptr %buffer1, align 8, !tbaa !14
  %6 = load i64, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_TWO, i32 0, i32 1), align 8, !tbaa !15
  %7 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_TWO, i32 0, i32 6), align 8, !tbaa !8
  %cs = getelementptr inbounds %struct.FLA_Obj_struct, ptr %7, i32 0, i32 5
  %8 = load i64, ptr %cs, align 8, !tbaa !16
  %mul = mul i64 %6, %8
  %add.ptr2 = getelementptr inbounds %struct.dcomplex, ptr %5, i64 %mul
  %9 = load i64, ptr @FLA_TWO, align 8, !tbaa !17
  %10 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_TWO, i32 0, i32 6), align 8, !tbaa !8
  %rs = getelementptr inbounds %struct.FLA_Obj_struct, ptr %10, i32 0, i32 4
  %11 = load i64, ptr %rs, align 8, !tbaa !18
  %mul3 = mul i64 %9, %11
  %add.ptr4 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr2, i64 %mul3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %add.ptr, %cond.true ], [ %add.ptr4, %cond.false ]
  store ptr %cond, ptr %buff_2, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_1) #5
  %12 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8, !tbaa !8
  %datatype5 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %12, i32 0, i32 0
  %13 = load i32, ptr %datatype5, align 8, !tbaa !12
  %cmp6 = icmp eq i32 %13, 105
  br i1 %cmp6, label %cond.true7, label %cond.false10

cond.true7:                                       ; preds = %cond.end
  %14 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8, !tbaa !8
  %buffer8 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %14, i32 0, i32 12
  %15 = load ptr, ptr %buffer8, align 8, !tbaa !14
  %add.ptr9 = getelementptr inbounds i8, ptr %15, i64 32
  br label %cond.end18

cond.false10:                                     ; preds = %cond.end
  %16 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8, !tbaa !8
  %buffer11 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %16, i32 0, i32 12
  %17 = load ptr, ptr %buffer11, align 8, !tbaa !14
  %18 = load i64, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 1), align 8, !tbaa !15
  %19 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8, !tbaa !8
  %cs12 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %19, i32 0, i32 5
  %20 = load i64, ptr %cs12, align 8, !tbaa !16
  %mul13 = mul i64 %18, %20
  %add.ptr14 = getelementptr inbounds %struct.dcomplex, ptr %17, i64 %mul13
  %21 = load i64, ptr @FLA_ONE, align 8, !tbaa !17
  %22 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8, !tbaa !8
  %rs15 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %22, i32 0, i32 4
  %23 = load i64, ptr %rs15, align 8, !tbaa !18
  %mul16 = mul i64 %21, %23
  %add.ptr17 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr14, i64 %mul16
  br label %cond.end18

cond.end18:                                       ; preds = %cond.false10, %cond.true7
  %cond19 = phi ptr [ %add.ptr9, %cond.true7 ], [ %add.ptr17, %cond.false10 ]
  store ptr %cond19, ptr %buff_1, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_0) #5
  %24 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8, !tbaa !8
  %datatype20 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %24, i32 0, i32 0
  %25 = load i32, ptr %datatype20, align 8, !tbaa !12
  %cmp21 = icmp eq i32 %25, 105
  br i1 %cmp21, label %cond.true22, label %cond.false25

cond.true22:                                      ; preds = %cond.end18
  %26 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8, !tbaa !8
  %buffer23 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %26, i32 0, i32 12
  %27 = load ptr, ptr %buffer23, align 8, !tbaa !14
  %add.ptr24 = getelementptr inbounds i8, ptr %27, i64 32
  br label %cond.end33

cond.false25:                                     ; preds = %cond.end18
  %28 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8, !tbaa !8
  %buffer26 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %28, i32 0, i32 12
  %29 = load ptr, ptr %buffer26, align 8, !tbaa !14
  %30 = load i64, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 1), align 8, !tbaa !15
  %31 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8, !tbaa !8
  %cs27 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %31, i32 0, i32 5
  %32 = load i64, ptr %cs27, align 8, !tbaa !16
  %mul28 = mul i64 %30, %32
  %add.ptr29 = getelementptr inbounds %struct.dcomplex, ptr %29, i64 %mul28
  %33 = load i64, ptr @FLA_ZERO, align 8, !tbaa !17
  %34 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8, !tbaa !8
  %rs30 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %34, i32 0, i32 4
  %35 = load i64, ptr %rs30, align 8, !tbaa !18
  %mul31 = mul i64 %33, %35
  %add.ptr32 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr29, i64 %mul31
  br label %cond.end33

cond.end33:                                       ; preds = %cond.false25, %cond.true22
  %cond34 = phi ptr [ %add.ptr24, %cond.true22 ], [ %add.ptr32, %cond.false25 ]
  store ptr %cond34, ptr %buff_0, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_m1) #5
  %36 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8, !tbaa !8
  %datatype35 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %36, i32 0, i32 0
  %37 = load i32, ptr %datatype35, align 8, !tbaa !12
  %cmp36 = icmp eq i32 %37, 105
  br i1 %cmp36, label %cond.true37, label %cond.false40

cond.true37:                                      ; preds = %cond.end33
  %38 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8, !tbaa !8
  %buffer38 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %38, i32 0, i32 12
  %39 = load ptr, ptr %buffer38, align 8, !tbaa !14
  %add.ptr39 = getelementptr inbounds i8, ptr %39, i64 32
  br label %cond.end48

cond.false40:                                     ; preds = %cond.end33
  %40 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8, !tbaa !8
  %buffer41 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %40, i32 0, i32 12
  %41 = load ptr, ptr %buffer41, align 8, !tbaa !14
  %42 = load i64, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 1), align 8, !tbaa !15
  %43 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8, !tbaa !8
  %cs42 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %43, i32 0, i32 5
  %44 = load i64, ptr %cs42, align 8, !tbaa !16
  %mul43 = mul i64 %42, %44
  %add.ptr44 = getelementptr inbounds %struct.dcomplex, ptr %41, i64 %mul43
  %45 = load i64, ptr @FLA_MINUS_ONE, align 8, !tbaa !17
  %46 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8, !tbaa !8
  %rs45 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %46, i32 0, i32 4
  %47 = load i64, ptr %rs45, align 8, !tbaa !18
  %mul46 = mul i64 %45, %47
  %add.ptr47 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr44, i64 %mul46
  br label %cond.end48

cond.end48:                                       ; preds = %cond.false40, %cond.true37
  %cond49 = phi ptr [ %add.ptr39, %cond.true37 ], [ %add.ptr47, %cond.false40 ]
  store ptr %cond49, ptr %buff_m1, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 16, ptr %first_elem) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr %beta) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr %inv_tau11) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr %minus_inv_tau11) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr %minus_upsilon11) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr %minus_conj_upsilon11) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr %minus_zeta11) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr %minus_conj_zeta11) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %b_alg) #5
  %48 = load i32, ptr %m_T.addr, align 4, !tbaa !4
  store i32 %48, ptr %b_alg, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_u) #5
  %49 = load i32, ptr %m_A.addr, align 4, !tbaa !4
  %conv = sext i32 %49 to i64
  %mul50 = mul i64 %conv, 16
  %call = call ptr @FLA_malloc(i64 noundef %mul50)
  store ptr %call, ptr %buff_u, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_z) #5
  %50 = load i32, ptr %m_A.addr, align 4, !tbaa !4
  %conv51 = sext i32 %50 to i64
  %mul52 = mul i64 %conv51, 16
  %call53 = call ptr @FLA_malloc(i64 noundef %mul52)
  store ptr %call53, ptr %buff_z, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_w) #5
  %51 = load i32, ptr %m_A.addr, align 4, !tbaa !4
  %conv54 = sext i32 %51 to i64
  %mul55 = mul i64 %conv54, 16
  %call56 = call ptr @FLA_malloc(i64 noundef %mul55)
  store ptr %call56, ptr %buff_w, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 4, ptr %inc_u) #5
  store i32 1, ptr %inc_u, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %inc_z) #5
  store i32 1, ptr %inc_z, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %inc_w) #5
  store i32 1, ptr %inc_w, align 4, !tbaa !4
  %52 = load ptr, ptr %buff_0, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %first_elem, ptr align 8 %52, i64 16, i1 false), !tbaa.struct !32
  %53 = load ptr, ptr %buff_0, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %minus_inv_tau11, ptr align 8 %53, i64 16, i1 false), !tbaa.struct !32
  store i32 0, ptr %i, align 4, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end48
  %54 = load i32, ptr %i, align 4, !tbaa !4
  %55 = load i32, ptr %b_alg, align 4, !tbaa !4
  %cmp57 = icmp slt i32 %54, %55
  br i1 %cmp57, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %A20) #5
  %56 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %57 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul59 = mul nsw i32 0, %57
  %idx.ext = sext i32 %mul59 to i64
  %add.ptr60 = getelementptr inbounds %struct.dcomplex, ptr %56, i64 %idx.ext
  %58 = load i32, ptr %i, align 4, !tbaa !4
  %add = add nsw i32 %58, 1
  %59 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul61 = mul nsw i32 %add, %59
  %idx.ext62 = sext i32 %mul61 to i64
  %add.ptr63 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr60, i64 %idx.ext62
  store ptr %add.ptr63, ptr %A20, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %alpha11) #5
  %60 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %61 = load i32, ptr %i, align 4, !tbaa !4
  %62 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul64 = mul nsw i32 %61, %62
  %idx.ext65 = sext i32 %mul64 to i64
  %add.ptr66 = getelementptr inbounds %struct.dcomplex, ptr %60, i64 %idx.ext65
  %63 = load i32, ptr %i, align 4, !tbaa !4
  %64 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul67 = mul nsw i32 %63, %64
  %idx.ext68 = sext i32 %mul67 to i64
  %add.ptr69 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr66, i64 %idx.ext68
  store ptr %add.ptr69, ptr %alpha11, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %a21) #5
  %65 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %66 = load i32, ptr %i, align 4, !tbaa !4
  %67 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul70 = mul nsw i32 %66, %67
  %idx.ext71 = sext i32 %mul70 to i64
  %add.ptr72 = getelementptr inbounds %struct.dcomplex, ptr %65, i64 %idx.ext71
  %68 = load i32, ptr %i, align 4, !tbaa !4
  %add73 = add nsw i32 %68, 1
  %69 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul74 = mul nsw i32 %add73, %69
  %idx.ext75 = sext i32 %mul74 to i64
  %add.ptr76 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr72, i64 %idx.ext75
  store ptr %add.ptr76, ptr %a21, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %A22) #5
  %70 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %71 = load i32, ptr %i, align 4, !tbaa !4
  %add77 = add nsw i32 %71, 1
  %72 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul78 = mul nsw i32 %add77, %72
  %idx.ext79 = sext i32 %mul78 to i64
  %add.ptr80 = getelementptr inbounds %struct.dcomplex, ptr %70, i64 %idx.ext79
  %73 = load i32, ptr %i, align 4, !tbaa !4
  %add81 = add nsw i32 %73, 1
  %74 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul82 = mul nsw i32 %add81, %74
  %idx.ext83 = sext i32 %mul82 to i64
  %add.ptr84 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr80, i64 %idx.ext83
  store ptr %add.ptr84, ptr %A22, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %t01) #5
  %75 = load ptr, ptr %buff_T.addr, align 8, !tbaa !19
  %76 = load i32, ptr %i, align 4, !tbaa !4
  %77 = load i32, ptr %cs_T.addr, align 4, !tbaa !4
  %mul85 = mul nsw i32 %76, %77
  %idx.ext86 = sext i32 %mul85 to i64
  %add.ptr87 = getelementptr inbounds %struct.dcomplex, ptr %75, i64 %idx.ext86
  %78 = load i32, ptr %rs_T.addr, align 4, !tbaa !4
  %mul88 = mul nsw i32 0, %78
  %idx.ext89 = sext i32 %mul88 to i64
  %add.ptr90 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr87, i64 %idx.ext89
  store ptr %add.ptr90, ptr %t01, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %tau11) #5
  %79 = load ptr, ptr %buff_T.addr, align 8, !tbaa !19
  %80 = load i32, ptr %i, align 4, !tbaa !4
  %81 = load i32, ptr %cs_T.addr, align 4, !tbaa !4
  %mul91 = mul nsw i32 %80, %81
  %idx.ext92 = sext i32 %mul91 to i64
  %add.ptr93 = getelementptr inbounds %struct.dcomplex, ptr %79, i64 %idx.ext92
  %82 = load i32, ptr %i, align 4, !tbaa !4
  %83 = load i32, ptr %rs_T.addr, align 4, !tbaa !4
  %mul94 = mul nsw i32 %82, %83
  %idx.ext95 = sext i32 %mul94 to i64
  %add.ptr96 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr93, i64 %idx.ext95
  store ptr %add.ptr96, ptr %tau11, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %upsilon11) #5
  %84 = load ptr, ptr %buff_u, align 8, !tbaa !19
  %85 = load i32, ptr %i, align 4, !tbaa !4
  %86 = load i32, ptr %inc_u, align 4, !tbaa !4
  %mul97 = mul nsw i32 %85, %86
  %idx.ext98 = sext i32 %mul97 to i64
  %add.ptr99 = getelementptr inbounds %struct.dcomplex, ptr %84, i64 %idx.ext98
  store ptr %add.ptr99, ptr %upsilon11, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %u21) #5
  %87 = load ptr, ptr %buff_u, align 8, !tbaa !19
  %88 = load i32, ptr %i, align 4, !tbaa !4
  %add100 = add nsw i32 %88, 1
  %89 = load i32, ptr %inc_u, align 4, !tbaa !4
  %mul101 = mul nsw i32 %add100, %89
  %idx.ext102 = sext i32 %mul101 to i64
  %add.ptr103 = getelementptr inbounds %struct.dcomplex, ptr %87, i64 %idx.ext102
  store ptr %add.ptr103, ptr %u21, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %zeta11) #5
  %90 = load ptr, ptr %buff_z, align 8, !tbaa !19
  %91 = load i32, ptr %i, align 4, !tbaa !4
  %92 = load i32, ptr %inc_z, align 4, !tbaa !4
  %mul104 = mul nsw i32 %91, %92
  %idx.ext105 = sext i32 %mul104 to i64
  %add.ptr106 = getelementptr inbounds %struct.dcomplex, ptr %90, i64 %idx.ext105
  store ptr %add.ptr106, ptr %zeta11, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %z21) #5
  %93 = load ptr, ptr %buff_z, align 8, !tbaa !19
  %94 = load i32, ptr %i, align 4, !tbaa !4
  %add107 = add nsw i32 %94, 1
  %95 = load i32, ptr %inc_z, align 4, !tbaa !4
  %mul108 = mul nsw i32 %add107, %95
  %idx.ext109 = sext i32 %mul108 to i64
  %add.ptr110 = getelementptr inbounds %struct.dcomplex, ptr %93, i64 %idx.ext109
  store ptr %add.ptr110, ptr %z21, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %w21) #5
  %96 = load ptr, ptr %buff_w, align 8, !tbaa !19
  %97 = load i32, ptr %i, align 4, !tbaa !4
  %add111 = add nsw i32 %97, 1
  %98 = load i32, ptr %inc_w, align 4, !tbaa !4
  %mul112 = mul nsw i32 %add111, %98
  %idx.ext113 = sext i32 %mul112 to i64
  %add.ptr114 = getelementptr inbounds %struct.dcomplex, ptr %96, i64 %idx.ext113
  store ptr %add.ptr114, ptr %w21, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %a21_t) #5
  %99 = load ptr, ptr %a21, align 8, !tbaa !19
  %100 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul115 = mul nsw i32 0, %100
  %idx.ext116 = sext i32 %mul115 to i64
  %add.ptr117 = getelementptr inbounds %struct.dcomplex, ptr %99, i64 %idx.ext116
  %101 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul118 = mul nsw i32 0, %101
  %idx.ext119 = sext i32 %mul118 to i64
  %add.ptr120 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr117, i64 %idx.ext119
  store ptr %add.ptr120, ptr %a21_t, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %a21_b) #5
  %102 = load ptr, ptr %a21, align 8, !tbaa !19
  %103 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul121 = mul nsw i32 0, %103
  %idx.ext122 = sext i32 %mul121 to i64
  %add.ptr123 = getelementptr inbounds %struct.dcomplex, ptr %102, i64 %idx.ext122
  %104 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul124 = mul nsw i32 1, %104
  %idx.ext125 = sext i32 %mul124 to i64
  %add.ptr126 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr123, i64 %idx.ext125
  store ptr %add.ptr126, ptr %a21_b, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 4, ptr %m_ahead) #5
  %105 = load i32, ptr %m_A.addr, align 4, !tbaa !4
  %106 = load i32, ptr %i, align 4, !tbaa !4
  %sub = sub nsw i32 %105, %106
  %sub127 = sub nsw i32 %sub, 1
  store i32 %sub127, ptr %m_ahead, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %m_behind) #5
  %107 = load i32, ptr %i, align 4, !tbaa !4
  store i32 %107, ptr %m_behind, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n_behind) #5
  %108 = load i32, ptr %i, align 4, !tbaa !4
  store i32 %108, ptr %n_behind, align 4, !tbaa !4
  %109 = load i32, ptr %m_behind, align 4, !tbaa !4
  %cmp128 = icmp sgt i32 %109, 0
  br i1 %cmp128, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %tempr) #5
  %110 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %real = getelementptr inbounds %struct.dcomplex, ptr %110, i32 0, i32 0
  %111 = load double, ptr %real, align 8, !tbaa !33
  %112 = load ptr, ptr %upsilon11, align 8, !tbaa !19
  %real130 = getelementptr inbounds %struct.dcomplex, ptr %112, i32 0, i32 0
  %113 = load double, ptr %real130, align 8, !tbaa !33
  %114 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %imag = getelementptr inbounds %struct.dcomplex, ptr %114, i32 0, i32 1
  %115 = load double, ptr %imag, align 8, !tbaa !35
  %116 = load ptr, ptr %upsilon11, align 8, !tbaa !19
  %imag132 = getelementptr inbounds %struct.dcomplex, ptr %116, i32 0, i32 1
  %117 = load double, ptr %imag132, align 8, !tbaa !35
  %mul133 = fmul double %115, %117
  %neg = fneg double %mul133
  %118 = call double @llvm.fmuladd.f64(double %111, double %113, double %neg)
  store double %118, ptr %tempr, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(i64 8, ptr %tempi) #5
  %119 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %imag134 = getelementptr inbounds %struct.dcomplex, ptr %119, i32 0, i32 1
  %120 = load double, ptr %imag134, align 8, !tbaa !35
  %121 = load ptr, ptr %upsilon11, align 8, !tbaa !19
  %real135 = getelementptr inbounds %struct.dcomplex, ptr %121, i32 0, i32 0
  %122 = load double, ptr %real135, align 8, !tbaa !33
  %123 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %real137 = getelementptr inbounds %struct.dcomplex, ptr %123, i32 0, i32 0
  %124 = load double, ptr %real137, align 8, !tbaa !33
  %125 = load ptr, ptr %upsilon11, align 8, !tbaa !19
  %imag138 = getelementptr inbounds %struct.dcomplex, ptr %125, i32 0, i32 1
  %126 = load double, ptr %imag138, align 8, !tbaa !35
  %mul139 = fmul double %124, %126
  %127 = call double @llvm.fmuladd.f64(double %120, double %122, double %mul139)
  store double %127, ptr %tempi, align 8, !tbaa !24
  %128 = load double, ptr %tempr, align 8, !tbaa !24
  %real140 = getelementptr inbounds %struct.dcomplex, ptr %minus_upsilon11, i32 0, i32 0
  store double %128, ptr %real140, align 8, !tbaa !33
  %129 = load double, ptr %tempi, align 8, !tbaa !24
  %imag141 = getelementptr inbounds %struct.dcomplex, ptr %minus_upsilon11, i32 0, i32 1
  store double %129, ptr %imag141, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(i64 8, ptr %tempi) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %tempr) #5
  %real142 = getelementptr inbounds %struct.dcomplex, ptr %minus_upsilon11, i32 0, i32 0
  %130 = load double, ptr %real142, align 8, !tbaa !33
  %real143 = getelementptr inbounds %struct.dcomplex, ptr %minus_conj_upsilon11, i32 0, i32 0
  store double %130, ptr %real143, align 8, !tbaa !33
  %imag144 = getelementptr inbounds %struct.dcomplex, ptr %minus_upsilon11, i32 0, i32 1
  %131 = load double, ptr %imag144, align 8, !tbaa !35
  %mul145 = fmul double -1.000000e+00, %131
  %imag146 = getelementptr inbounds %struct.dcomplex, ptr %minus_conj_upsilon11, i32 0, i32 1
  store double %mul145, ptr %imag146, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 8, ptr %tempr147) #5
  %132 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %real148 = getelementptr inbounds %struct.dcomplex, ptr %132, i32 0, i32 0
  %133 = load double, ptr %real148, align 8, !tbaa !33
  %134 = load ptr, ptr %zeta11, align 8, !tbaa !19
  %real149 = getelementptr inbounds %struct.dcomplex, ptr %134, i32 0, i32 0
  %135 = load double, ptr %real149, align 8, !tbaa !33
  %136 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %imag151 = getelementptr inbounds %struct.dcomplex, ptr %136, i32 0, i32 1
  %137 = load double, ptr %imag151, align 8, !tbaa !35
  %138 = load ptr, ptr %zeta11, align 8, !tbaa !19
  %imag152 = getelementptr inbounds %struct.dcomplex, ptr %138, i32 0, i32 1
  %139 = load double, ptr %imag152, align 8, !tbaa !35
  %mul153 = fmul double %137, %139
  %neg154 = fneg double %mul153
  %140 = call double @llvm.fmuladd.f64(double %133, double %135, double %neg154)
  store double %140, ptr %tempr147, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(i64 8, ptr %tempi155) #5
  %141 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %imag156 = getelementptr inbounds %struct.dcomplex, ptr %141, i32 0, i32 1
  %142 = load double, ptr %imag156, align 8, !tbaa !35
  %143 = load ptr, ptr %zeta11, align 8, !tbaa !19
  %real157 = getelementptr inbounds %struct.dcomplex, ptr %143, i32 0, i32 0
  %144 = load double, ptr %real157, align 8, !tbaa !33
  %145 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %real159 = getelementptr inbounds %struct.dcomplex, ptr %145, i32 0, i32 0
  %146 = load double, ptr %real159, align 8, !tbaa !33
  %147 = load ptr, ptr %zeta11, align 8, !tbaa !19
  %imag160 = getelementptr inbounds %struct.dcomplex, ptr %147, i32 0, i32 1
  %148 = load double, ptr %imag160, align 8, !tbaa !35
  %mul161 = fmul double %146, %148
  %149 = call double @llvm.fmuladd.f64(double %142, double %144, double %mul161)
  store double %149, ptr %tempi155, align 8, !tbaa !24
  %150 = load double, ptr %tempr147, align 8, !tbaa !24
  %real162 = getelementptr inbounds %struct.dcomplex, ptr %minus_zeta11, i32 0, i32 0
  store double %150, ptr %real162, align 8, !tbaa !33
  %151 = load double, ptr %tempi155, align 8, !tbaa !24
  %imag163 = getelementptr inbounds %struct.dcomplex, ptr %minus_zeta11, i32 0, i32 1
  store double %151, ptr %imag163, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(i64 8, ptr %tempi155) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %tempr147) #5
  %real164 = getelementptr inbounds %struct.dcomplex, ptr %minus_zeta11, i32 0, i32 0
  %152 = load double, ptr %real164, align 8, !tbaa !33
  %real165 = getelementptr inbounds %struct.dcomplex, ptr %minus_conj_zeta11, i32 0, i32 0
  store double %152, ptr %real165, align 8, !tbaa !33
  %imag166 = getelementptr inbounds %struct.dcomplex, ptr %minus_zeta11, i32 0, i32 1
  %153 = load double, ptr %imag166, align 8, !tbaa !35
  %mul167 = fmul double -1.000000e+00, %153
  %imag168 = getelementptr inbounds %struct.dcomplex, ptr %minus_conj_zeta11, i32 0, i32 1
  store double %mul167, ptr %imag168, align 8, !tbaa !35
  %154 = load ptr, ptr %zeta11, align 8, !tbaa !19
  %155 = load ptr, ptr %alpha11, align 8, !tbaa !19
  call void @bl1_zaxpyv(i32 noundef 501, i32 noundef 1, ptr noundef %minus_upsilon11, ptr noundef %154, i32 noundef 1, ptr noundef %155, i32 noundef 1)
  %156 = load ptr, ptr %upsilon11, align 8, !tbaa !19
  %157 = load ptr, ptr %alpha11, align 8, !tbaa !19
  call void @bl1_zaxpyv(i32 noundef 501, i32 noundef 1, ptr noundef %minus_zeta11, ptr noundef %156, i32 noundef 1, ptr noundef %157, i32 noundef 1)
  %158 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %159 = load ptr, ptr %u21, align 8, !tbaa !19
  %160 = load i32, ptr %inc_u, align 4, !tbaa !4
  %161 = load ptr, ptr %a21, align 8, !tbaa !19
  %162 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  call void @bl1_zaxpyv(i32 noundef 500, i32 noundef %158, ptr noundef %minus_conj_zeta11, ptr noundef %159, i32 noundef %160, ptr noundef %161, i32 noundef %162)
  %163 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %164 = load ptr, ptr %z21, align 8, !tbaa !19
  %165 = load i32, ptr %inc_z, align 4, !tbaa !4
  %166 = load ptr, ptr %a21, align 8, !tbaa !19
  %167 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  call void @bl1_zaxpyv(i32 noundef 500, i32 noundef %163, ptr noundef %minus_conj_upsilon11, ptr noundef %164, i32 noundef %165, ptr noundef %166, i32 noundef %167)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %168 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %cmp169 = icmp sgt i32 %168, 0
  br i1 %cmp169, label %if.then171, label %if.end244

if.then171:                                       ; preds = %if.end
  %169 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %sub172 = sub nsw i32 %169, 1
  %170 = load ptr, ptr %a21_t, align 8, !tbaa !19
  %171 = load ptr, ptr %a21_b, align 8, !tbaa !19
  %172 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %173 = load ptr, ptr %tau11, align 8, !tbaa !19
  %call173 = call i32 @FLA_Househ2_UT_l_opz(i32 noundef %sub172, ptr noundef %170, ptr noundef %171, i32 noundef %172, ptr noundef %173)
  %174 = load ptr, ptr %buff_1, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %inv_tau11, ptr align 8 %174, i64 16, i1 false), !tbaa.struct !32
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #5
  %175 = load ptr, ptr %tau11, align 8, !tbaa !19
  %real174 = getelementptr inbounds %struct.dcomplex, ptr %175, i32 0, i32 0
  %176 = load double, ptr %real174, align 8, !tbaa !33
  %cmp175 = fcmp ole double %176, 0.000000e+00
  br i1 %cmp175, label %cond.true177, label %cond.false179

cond.true177:                                     ; preds = %if.then171
  %177 = load ptr, ptr %tau11, align 8, !tbaa !19
  %real178 = getelementptr inbounds %struct.dcomplex, ptr %177, i32 0, i32 0
  %178 = load double, ptr %real178, align 8, !tbaa !33
  %fneg = fneg double %178
  br label %cond.end181

cond.false179:                                    ; preds = %if.then171
  %179 = load ptr, ptr %tau11, align 8, !tbaa !19
  %real180 = getelementptr inbounds %struct.dcomplex, ptr %179, i32 0, i32 0
  %180 = load double, ptr %real180, align 8, !tbaa !33
  br label %cond.end181

cond.end181:                                      ; preds = %cond.false179, %cond.true177
  %cond182 = phi double [ %fneg, %cond.true177 ], [ %180, %cond.false179 ]
  %181 = load ptr, ptr %tau11, align 8, !tbaa !19
  %imag183 = getelementptr inbounds %struct.dcomplex, ptr %181, i32 0, i32 1
  %182 = load double, ptr %imag183, align 8, !tbaa !35
  %cmp184 = fcmp ole double %182, 0.000000e+00
  br i1 %cmp184, label %cond.true186, label %cond.false189

cond.true186:                                     ; preds = %cond.end181
  %183 = load ptr, ptr %tau11, align 8, !tbaa !19
  %imag187 = getelementptr inbounds %struct.dcomplex, ptr %183, i32 0, i32 1
  %184 = load double, ptr %imag187, align 8, !tbaa !35
  %fneg188 = fneg double %184
  br label %cond.end191

cond.false189:                                    ; preds = %cond.end181
  %185 = load ptr, ptr %tau11, align 8, !tbaa !19
  %imag190 = getelementptr inbounds %struct.dcomplex, ptr %185, i32 0, i32 1
  %186 = load double, ptr %imag190, align 8, !tbaa !35
  br label %cond.end191

cond.end191:                                      ; preds = %cond.false189, %cond.true186
  %cond192 = phi double [ %fneg188, %cond.true186 ], [ %186, %cond.false189 ]
  %cmp193 = fcmp ogt double %cond182, %cond192
  br i1 %cmp193, label %cond.true195, label %cond.false206

cond.true195:                                     ; preds = %cond.end191
  %187 = load ptr, ptr %tau11, align 8, !tbaa !19
  %real196 = getelementptr inbounds %struct.dcomplex, ptr %187, i32 0, i32 0
  %188 = load double, ptr %real196, align 8, !tbaa !33
  %cmp197 = fcmp ole double %188, 0.000000e+00
  br i1 %cmp197, label %cond.true199, label %cond.false202

cond.true199:                                     ; preds = %cond.true195
  %189 = load ptr, ptr %tau11, align 8, !tbaa !19
  %real200 = getelementptr inbounds %struct.dcomplex, ptr %189, i32 0, i32 0
  %190 = load double, ptr %real200, align 8, !tbaa !33
  %fneg201 = fneg double %190
  br label %cond.end204

cond.false202:                                    ; preds = %cond.true195
  %191 = load ptr, ptr %tau11, align 8, !tbaa !19
  %real203 = getelementptr inbounds %struct.dcomplex, ptr %191, i32 0, i32 0
  %192 = load double, ptr %real203, align 8, !tbaa !33
  br label %cond.end204

cond.end204:                                      ; preds = %cond.false202, %cond.true199
  %cond205 = phi double [ %fneg201, %cond.true199 ], [ %192, %cond.false202 ]
  br label %cond.end217

cond.false206:                                    ; preds = %cond.end191
  %193 = load ptr, ptr %tau11, align 8, !tbaa !19
  %imag207 = getelementptr inbounds %struct.dcomplex, ptr %193, i32 0, i32 1
  %194 = load double, ptr %imag207, align 8, !tbaa !35
  %cmp208 = fcmp ole double %194, 0.000000e+00
  br i1 %cmp208, label %cond.true210, label %cond.false213

cond.true210:                                     ; preds = %cond.false206
  %195 = load ptr, ptr %tau11, align 8, !tbaa !19
  %imag211 = getelementptr inbounds %struct.dcomplex, ptr %195, i32 0, i32 1
  %196 = load double, ptr %imag211, align 8, !tbaa !35
  %fneg212 = fneg double %196
  br label %cond.end215

cond.false213:                                    ; preds = %cond.false206
  %197 = load ptr, ptr %tau11, align 8, !tbaa !19
  %imag214 = getelementptr inbounds %struct.dcomplex, ptr %197, i32 0, i32 1
  %198 = load double, ptr %imag214, align 8, !tbaa !35
  br label %cond.end215

cond.end215:                                      ; preds = %cond.false213, %cond.true210
  %cond216 = phi double [ %fneg212, %cond.true210 ], [ %198, %cond.false213 ]
  br label %cond.end217

cond.end217:                                      ; preds = %cond.end215, %cond.end204
  %cond218 = phi double [ %cond205, %cond.end204 ], [ %cond216, %cond.end215 ]
  store double %cond218, ptr %s, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(i64 8, ptr %ar_s) #5
  %199 = load ptr, ptr %tau11, align 8, !tbaa !19
  %real219 = getelementptr inbounds %struct.dcomplex, ptr %199, i32 0, i32 0
  %200 = load double, ptr %real219, align 8, !tbaa !33
  %201 = load double, ptr %s, align 8, !tbaa !24
  %div = fdiv double %200, %201
  store double %div, ptr %ar_s, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(i64 8, ptr %ai_s) #5
  %202 = load ptr, ptr %tau11, align 8, !tbaa !19
  %imag220 = getelementptr inbounds %struct.dcomplex, ptr %202, i32 0, i32 1
  %203 = load double, ptr %imag220, align 8, !tbaa !35
  %204 = load double, ptr %s, align 8, !tbaa !24
  %div221 = fdiv double %203, %204
  store double %div221, ptr %ai_s, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(i64 8, ptr %yrt) #5
  %real222 = getelementptr inbounds %struct.dcomplex, ptr %inv_tau11, i32 0, i32 0
  %205 = load double, ptr %real222, align 8, !tbaa !33
  store double %205, ptr %yrt, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(i64 8, ptr %temp) #5
  %206 = load double, ptr %ar_s, align 8, !tbaa !24
  %207 = load ptr, ptr %tau11, align 8, !tbaa !19
  %real223 = getelementptr inbounds %struct.dcomplex, ptr %207, i32 0, i32 0
  %208 = load double, ptr %real223, align 8, !tbaa !33
  %209 = load double, ptr %ai_s, align 8, !tbaa !24
  %210 = load ptr, ptr %tau11, align 8, !tbaa !19
  %imag225 = getelementptr inbounds %struct.dcomplex, ptr %210, i32 0, i32 1
  %211 = load double, ptr %imag225, align 8, !tbaa !35
  %mul226 = fmul double %209, %211
  %212 = call double @llvm.fmuladd.f64(double %206, double %208, double %mul226)
  store double %212, ptr %temp, align 8, !tbaa !24
  %213 = load double, ptr %yrt, align 8, !tbaa !24
  %214 = load double, ptr %ar_s, align 8, !tbaa !24
  %imag228 = getelementptr inbounds %struct.dcomplex, ptr %inv_tau11, i32 0, i32 1
  %215 = load double, ptr %imag228, align 8, !tbaa !35
  %216 = load double, ptr %ai_s, align 8, !tbaa !24
  %mul229 = fmul double %215, %216
  %217 = call double @llvm.fmuladd.f64(double %213, double %214, double %mul229)
  %218 = load double, ptr %temp, align 8, !tbaa !24
  %div230 = fdiv double %217, %218
  %real231 = getelementptr inbounds %struct.dcomplex, ptr %inv_tau11, i32 0, i32 0
  store double %div230, ptr %real231, align 8, !tbaa !33
  %imag232 = getelementptr inbounds %struct.dcomplex, ptr %inv_tau11, i32 0, i32 1
  %219 = load double, ptr %imag232, align 8, !tbaa !35
  %220 = load double, ptr %ar_s, align 8, !tbaa !24
  %221 = load double, ptr %yrt, align 8, !tbaa !24
  %222 = load double, ptr %ai_s, align 8, !tbaa !24
  %mul234 = fmul double %221, %222
  %neg235 = fneg double %mul234
  %223 = call double @llvm.fmuladd.f64(double %219, double %220, double %neg235)
  %224 = load double, ptr %temp, align 8, !tbaa !24
  %div236 = fdiv double %223, %224
  %imag237 = getelementptr inbounds %struct.dcomplex, ptr %inv_tau11, i32 0, i32 1
  store double %div236, ptr %imag237, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(i64 8, ptr %temp) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %yrt) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %ai_s) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %ar_s) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #5
  %real238 = getelementptr inbounds %struct.dcomplex, ptr %inv_tau11, i32 0, i32 0
  %225 = load double, ptr %real238, align 8, !tbaa !33
  %mul239 = fmul double -1.000000e+00, %225
  %real240 = getelementptr inbounds %struct.dcomplex, ptr %minus_inv_tau11, i32 0, i32 0
  store double %mul239, ptr %real240, align 8, !tbaa !33
  %imag241 = getelementptr inbounds %struct.dcomplex, ptr %inv_tau11, i32 0, i32 1
  %226 = load double, ptr %imag241, align 8, !tbaa !35
  %mul242 = fmul double -1.000000e+00, %226
  %imag243 = getelementptr inbounds %struct.dcomplex, ptr %minus_inv_tau11, i32 0, i32 1
  store double %mul242, ptr %imag243, align 8, !tbaa !35
  %227 = load ptr, ptr %a21_t, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %first_elem, ptr align 8 %227, i64 16, i1 false), !tbaa.struct !32
  %228 = load ptr, ptr %a21_t, align 8, !tbaa !19
  %229 = load ptr, ptr %buff_1, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %228, ptr align 8 %229, i64 16, i1 false), !tbaa.struct !32
  br label %if.end244

if.end244:                                        ; preds = %cond.end217, %if.end
  %230 = load i32, ptr %m_behind, align 4, !tbaa !4
  %cmp245 = icmp sgt i32 %230, 0
  br i1 %cmp245, label %if.then247, label %if.end248

if.then247:                                       ; preds = %if.end244
  %231 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %232 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %233 = load ptr, ptr %u21, align 8, !tbaa !19
  %234 = load i32, ptr %inc_u, align 4, !tbaa !4
  %235 = load ptr, ptr %z21, align 8, !tbaa !19
  %236 = load i32, ptr %inc_z, align 4, !tbaa !4
  %237 = load ptr, ptr %A22, align 8, !tbaa !19
  %238 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %239 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  call void @bl1_zher2(i32 noundef 200, i32 noundef 500, i32 noundef %231, ptr noundef %232, ptr noundef %233, i32 noundef %234, ptr noundef %235, i32 noundef %236, ptr noundef %237, i32 noundef %238, i32 noundef %239)
  br label %if.end248

if.end248:                                        ; preds = %if.then247, %if.end244
  %240 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %cmp249 = icmp sgt i32 %240, 0
  br i1 %cmp249, label %if.then251, label %if.end340

if.then251:                                       ; preds = %if.end248
  %241 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %242 = load ptr, ptr %buff_1, align 8, !tbaa !19
  %243 = load ptr, ptr %A22, align 8, !tbaa !19
  %244 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %245 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %246 = load ptr, ptr %a21, align 8, !tbaa !19
  %247 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %248 = load ptr, ptr %buff_0, align 8, !tbaa !19
  %249 = load ptr, ptr %w21, align 8, !tbaa !19
  %250 = load i32, ptr %inc_w, align 4, !tbaa !4
  call void @bl1_zhemv(i32 noundef 200, i32 noundef 500, i32 noundef %241, ptr noundef %242, ptr noundef %243, i32 noundef %244, i32 noundef %245, ptr noundef %246, i32 noundef %247, ptr noundef %248, ptr noundef %249, i32 noundef %250)
  %251 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %252 = load ptr, ptr %a21, align 8, !tbaa !19
  %253 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %254 = load ptr, ptr %u21, align 8, !tbaa !19
  %255 = load i32, ptr %inc_u, align 4, !tbaa !4
  call void @bl1_zcopyv(i32 noundef 500, i32 noundef %251, ptr noundef %252, i32 noundef %253, ptr noundef %254, i32 noundef %255)
  %256 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %257 = load ptr, ptr %w21, align 8, !tbaa !19
  %258 = load i32, ptr %inc_w, align 4, !tbaa !4
  %259 = load ptr, ptr %z21, align 8, !tbaa !19
  %260 = load i32, ptr %inc_z, align 4, !tbaa !4
  call void @bl1_zcopyv(i32 noundef 500, i32 noundef %256, ptr noundef %257, i32 noundef %258, ptr noundef %259, i32 noundef %260)
  %261 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %262 = load ptr, ptr %a21, align 8, !tbaa !19
  %263 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %264 = load ptr, ptr %z21, align 8, !tbaa !19
  %265 = load i32, ptr %inc_z, align 4, !tbaa !4
  call void @bl1_zdot(i32 noundef 501, i32 noundef %261, ptr noundef %262, i32 noundef %263, ptr noundef %264, i32 noundef %265, ptr noundef %beta)
  call void @llvm.lifetime.start.p0(i64 8, ptr %s252) #5
  %266 = load ptr, ptr %buff_2, align 8, !tbaa !19
  %real253 = getelementptr inbounds %struct.dcomplex, ptr %266, i32 0, i32 0
  %267 = load double, ptr %real253, align 8, !tbaa !33
  %cmp254 = fcmp ole double %267, 0.000000e+00
  br i1 %cmp254, label %cond.true256, label %cond.false259

cond.true256:                                     ; preds = %if.then251
  %268 = load ptr, ptr %buff_2, align 8, !tbaa !19
  %real257 = getelementptr inbounds %struct.dcomplex, ptr %268, i32 0, i32 0
  %269 = load double, ptr %real257, align 8, !tbaa !33
  %fneg258 = fneg double %269
  br label %cond.end261

cond.false259:                                    ; preds = %if.then251
  %270 = load ptr, ptr %buff_2, align 8, !tbaa !19
  %real260 = getelementptr inbounds %struct.dcomplex, ptr %270, i32 0, i32 0
  %271 = load double, ptr %real260, align 8, !tbaa !33
  br label %cond.end261

cond.end261:                                      ; preds = %cond.false259, %cond.true256
  %cond262 = phi double [ %fneg258, %cond.true256 ], [ %271, %cond.false259 ]
  %272 = load ptr, ptr %buff_2, align 8, !tbaa !19
  %imag263 = getelementptr inbounds %struct.dcomplex, ptr %272, i32 0, i32 1
  %273 = load double, ptr %imag263, align 8, !tbaa !35
  %cmp264 = fcmp ole double %273, 0.000000e+00
  br i1 %cmp264, label %cond.true266, label %cond.false269

cond.true266:                                     ; preds = %cond.end261
  %274 = load ptr, ptr %buff_2, align 8, !tbaa !19
  %imag267 = getelementptr inbounds %struct.dcomplex, ptr %274, i32 0, i32 1
  %275 = load double, ptr %imag267, align 8, !tbaa !35
  %fneg268 = fneg double %275
  br label %cond.end271

cond.false269:                                    ; preds = %cond.end261
  %276 = load ptr, ptr %buff_2, align 8, !tbaa !19
  %imag270 = getelementptr inbounds %struct.dcomplex, ptr %276, i32 0, i32 1
  %277 = load double, ptr %imag270, align 8, !tbaa !35
  br label %cond.end271

cond.end271:                                      ; preds = %cond.false269, %cond.true266
  %cond272 = phi double [ %fneg268, %cond.true266 ], [ %277, %cond.false269 ]
  %cmp273 = fcmp ogt double %cond262, %cond272
  br i1 %cmp273, label %cond.true275, label %cond.false286

cond.true275:                                     ; preds = %cond.end271
  %278 = load ptr, ptr %buff_2, align 8, !tbaa !19
  %real276 = getelementptr inbounds %struct.dcomplex, ptr %278, i32 0, i32 0
  %279 = load double, ptr %real276, align 8, !tbaa !33
  %cmp277 = fcmp ole double %279, 0.000000e+00
  br i1 %cmp277, label %cond.true279, label %cond.false282

cond.true279:                                     ; preds = %cond.true275
  %280 = load ptr, ptr %buff_2, align 8, !tbaa !19
  %real280 = getelementptr inbounds %struct.dcomplex, ptr %280, i32 0, i32 0
  %281 = load double, ptr %real280, align 8, !tbaa !33
  %fneg281 = fneg double %281
  br label %cond.end284

cond.false282:                                    ; preds = %cond.true275
  %282 = load ptr, ptr %buff_2, align 8, !tbaa !19
  %real283 = getelementptr inbounds %struct.dcomplex, ptr %282, i32 0, i32 0
  %283 = load double, ptr %real283, align 8, !tbaa !33
  br label %cond.end284

cond.end284:                                      ; preds = %cond.false282, %cond.true279
  %cond285 = phi double [ %fneg281, %cond.true279 ], [ %283, %cond.false282 ]
  br label %cond.end297

cond.false286:                                    ; preds = %cond.end271
  %284 = load ptr, ptr %buff_2, align 8, !tbaa !19
  %imag287 = getelementptr inbounds %struct.dcomplex, ptr %284, i32 0, i32 1
  %285 = load double, ptr %imag287, align 8, !tbaa !35
  %cmp288 = fcmp ole double %285, 0.000000e+00
  br i1 %cmp288, label %cond.true290, label %cond.false293

cond.true290:                                     ; preds = %cond.false286
  %286 = load ptr, ptr %buff_2, align 8, !tbaa !19
  %imag291 = getelementptr inbounds %struct.dcomplex, ptr %286, i32 0, i32 1
  %287 = load double, ptr %imag291, align 8, !tbaa !35
  %fneg292 = fneg double %287
  br label %cond.end295

cond.false293:                                    ; preds = %cond.false286
  %288 = load ptr, ptr %buff_2, align 8, !tbaa !19
  %imag294 = getelementptr inbounds %struct.dcomplex, ptr %288, i32 0, i32 1
  %289 = load double, ptr %imag294, align 8, !tbaa !35
  br label %cond.end295

cond.end295:                                      ; preds = %cond.false293, %cond.true290
  %cond296 = phi double [ %fneg292, %cond.true290 ], [ %289, %cond.false293 ]
  br label %cond.end297

cond.end297:                                      ; preds = %cond.end295, %cond.end284
  %cond298 = phi double [ %cond285, %cond.end284 ], [ %cond296, %cond.end295 ]
  store double %cond298, ptr %s252, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(i64 8, ptr %ar_s299) #5
  %290 = load ptr, ptr %buff_2, align 8, !tbaa !19
  %real300 = getelementptr inbounds %struct.dcomplex, ptr %290, i32 0, i32 0
  %291 = load double, ptr %real300, align 8, !tbaa !33
  %292 = load double, ptr %s252, align 8, !tbaa !24
  %div301 = fdiv double %291, %292
  store double %div301, ptr %ar_s299, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(i64 8, ptr %ai_s302) #5
  %293 = load ptr, ptr %buff_2, align 8, !tbaa !19
  %imag303 = getelementptr inbounds %struct.dcomplex, ptr %293, i32 0, i32 1
  %294 = load double, ptr %imag303, align 8, !tbaa !35
  %295 = load double, ptr %s252, align 8, !tbaa !24
  %div304 = fdiv double %294, %295
  store double %div304, ptr %ai_s302, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(i64 8, ptr %yrt305) #5
  %real306 = getelementptr inbounds %struct.dcomplex, ptr %beta, i32 0, i32 0
  %296 = load double, ptr %real306, align 8, !tbaa !33
  store double %296, ptr %yrt305, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(i64 8, ptr %temp307) #5
  %297 = load double, ptr %ar_s299, align 8, !tbaa !24
  %298 = load ptr, ptr %buff_2, align 8, !tbaa !19
  %real308 = getelementptr inbounds %struct.dcomplex, ptr %298, i32 0, i32 0
  %299 = load double, ptr %real308, align 8, !tbaa !33
  %300 = load double, ptr %ai_s302, align 8, !tbaa !24
  %301 = load ptr, ptr %buff_2, align 8, !tbaa !19
  %imag310 = getelementptr inbounds %struct.dcomplex, ptr %301, i32 0, i32 1
  %302 = load double, ptr %imag310, align 8, !tbaa !35
  %mul311 = fmul double %300, %302
  %303 = call double @llvm.fmuladd.f64(double %297, double %299, double %mul311)
  store double %303, ptr %temp307, align 8, !tbaa !24
  %304 = load double, ptr %yrt305, align 8, !tbaa !24
  %305 = load double, ptr %ar_s299, align 8, !tbaa !24
  %imag313 = getelementptr inbounds %struct.dcomplex, ptr %beta, i32 0, i32 1
  %306 = load double, ptr %imag313, align 8, !tbaa !35
  %307 = load double, ptr %ai_s302, align 8, !tbaa !24
  %mul314 = fmul double %306, %307
  %308 = call double @llvm.fmuladd.f64(double %304, double %305, double %mul314)
  %309 = load double, ptr %temp307, align 8, !tbaa !24
  %div315 = fdiv double %308, %309
  %real316 = getelementptr inbounds %struct.dcomplex, ptr %beta, i32 0, i32 0
  store double %div315, ptr %real316, align 8, !tbaa !33
  %imag317 = getelementptr inbounds %struct.dcomplex, ptr %beta, i32 0, i32 1
  %310 = load double, ptr %imag317, align 8, !tbaa !35
  %311 = load double, ptr %ar_s299, align 8, !tbaa !24
  %312 = load double, ptr %yrt305, align 8, !tbaa !24
  %313 = load double, ptr %ai_s302, align 8, !tbaa !24
  %mul319 = fmul double %312, %313
  %neg320 = fneg double %mul319
  %314 = call double @llvm.fmuladd.f64(double %310, double %311, double %neg320)
  %315 = load double, ptr %temp307, align 8, !tbaa !24
  %div321 = fdiv double %314, %315
  %imag322 = getelementptr inbounds %struct.dcomplex, ptr %beta, i32 0, i32 1
  store double %div321, ptr %imag322, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(i64 8, ptr %temp307) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %yrt305) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %ai_s302) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %ar_s299) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %s252) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %tempr323) #5
  %real324 = getelementptr inbounds %struct.dcomplex, ptr %minus_inv_tau11, i32 0, i32 0
  %316 = load double, ptr %real324, align 8, !tbaa !33
  %real325 = getelementptr inbounds %struct.dcomplex, ptr %beta, i32 0, i32 0
  %317 = load double, ptr %real325, align 8, !tbaa !33
  %imag327 = getelementptr inbounds %struct.dcomplex, ptr %minus_inv_tau11, i32 0, i32 1
  %318 = load double, ptr %imag327, align 8, !tbaa !35
  %imag328 = getelementptr inbounds %struct.dcomplex, ptr %beta, i32 0, i32 1
  %319 = load double, ptr %imag328, align 8, !tbaa !35
  %mul329 = fmul double %318, %319
  %neg330 = fneg double %mul329
  %320 = call double @llvm.fmuladd.f64(double %316, double %317, double %neg330)
  store double %320, ptr %tempr323, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(i64 8, ptr %tempi331) #5
  %imag332 = getelementptr inbounds %struct.dcomplex, ptr %minus_inv_tau11, i32 0, i32 1
  %321 = load double, ptr %imag332, align 8, !tbaa !35
  %real333 = getelementptr inbounds %struct.dcomplex, ptr %beta, i32 0, i32 0
  %322 = load double, ptr %real333, align 8, !tbaa !33
  %real335 = getelementptr inbounds %struct.dcomplex, ptr %minus_inv_tau11, i32 0, i32 0
  %323 = load double, ptr %real335, align 8, !tbaa !33
  %imag336 = getelementptr inbounds %struct.dcomplex, ptr %beta, i32 0, i32 1
  %324 = load double, ptr %imag336, align 8, !tbaa !35
  %mul337 = fmul double %323, %324
  %325 = call double @llvm.fmuladd.f64(double %321, double %322, double %mul337)
  store double %325, ptr %tempi331, align 8, !tbaa !24
  %326 = load double, ptr %tempr323, align 8, !tbaa !24
  %real338 = getelementptr inbounds %struct.dcomplex, ptr %beta, i32 0, i32 0
  store double %326, ptr %real338, align 8, !tbaa !33
  %327 = load double, ptr %tempi331, align 8, !tbaa !24
  %imag339 = getelementptr inbounds %struct.dcomplex, ptr %beta, i32 0, i32 1
  store double %327, ptr %imag339, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(i64 8, ptr %tempi331) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %tempr323) #5
  %328 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %329 = load ptr, ptr %a21, align 8, !tbaa !19
  %330 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %331 = load ptr, ptr %z21, align 8, !tbaa !19
  %332 = load i32, ptr %inc_z, align 4, !tbaa !4
  call void @bl1_zaxpyv(i32 noundef 500, i32 noundef %328, ptr noundef %beta, ptr noundef %329, i32 noundef %330, ptr noundef %331, i32 noundef %332)
  %333 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %334 = load ptr, ptr %z21, align 8, !tbaa !19
  %335 = load i32, ptr %inc_z, align 4, !tbaa !4
  call void @bl1_zscalv(i32 noundef 500, i32 noundef %333, ptr noundef %inv_tau11, ptr noundef %334, i32 noundef %335)
  %336 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %337 = load i32, ptr %n_behind, align 4, !tbaa !4
  %338 = load ptr, ptr %buff_1, align 8, !tbaa !19
  %339 = load ptr, ptr %A20, align 8, !tbaa !19
  %340 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %341 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %342 = load ptr, ptr %a21, align 8, !tbaa !19
  %343 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %344 = load ptr, ptr %buff_0, align 8, !tbaa !19
  %345 = load ptr, ptr %t01, align 8, !tbaa !19
  %346 = load i32, ptr %rs_T.addr, align 4, !tbaa !4
  call void @bl1_zgemv(i32 noundef 103, i32 noundef 500, i32 noundef %336, i32 noundef %337, ptr noundef %338, ptr noundef %339, i32 noundef %340, i32 noundef %341, ptr noundef %342, i32 noundef %343, ptr noundef %344, ptr noundef %345, i32 noundef %346)
  %347 = load ptr, ptr %a21_t, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %347, ptr align 8 %first_elem, i64 16, i1 false), !tbaa.struct !32
  br label %if.end340

if.end340:                                        ; preds = %cond.end297, %if.end248
  %348 = load i32, ptr %m_behind, align 4, !tbaa !4
  %add341 = add nsw i32 %348, 1
  %349 = load i32, ptr %b_alg, align 4, !tbaa !4
  %cmp342 = icmp eq i32 %add341, %349
  br i1 %cmp342, label %land.lhs.true, label %if.end347

land.lhs.true:                                    ; preds = %if.end340
  %350 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %cmp344 = icmp sgt i32 %350, 0
  br i1 %cmp344, label %if.then346, label %if.end347

if.then346:                                       ; preds = %land.lhs.true
  %351 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %352 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %353 = load ptr, ptr %u21, align 8, !tbaa !19
  %354 = load i32, ptr %inc_u, align 4, !tbaa !4
  %355 = load ptr, ptr %z21, align 8, !tbaa !19
  %356 = load i32, ptr %inc_z, align 4, !tbaa !4
  %357 = load ptr, ptr %A22, align 8, !tbaa !19
  %358 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %359 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  call void @bl1_zher2(i32 noundef 200, i32 noundef 500, i32 noundef %351, ptr noundef %352, ptr noundef %353, i32 noundef %354, ptr noundef %355, i32 noundef %356, ptr noundef %357, i32 noundef %358, i32 noundef %359)
  br label %if.end347

if.end347:                                        ; preds = %if.then346, %land.lhs.true, %if.end340
  call void @llvm.lifetime.end.p0(i64 4, ptr %n_behind) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %m_behind) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %m_ahead) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %a21_b) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %a21_t) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %w21) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %z21) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %zeta11) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %u21) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %upsilon11) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %tau11) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %t01) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %A22) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %a21) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %alpha11) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %A20) #5
  br label %for.inc

for.inc:                                          ; preds = %if.end347
  %360 = load i32, ptr %i, align 4, !tbaa !4
  %inc = add nsw i32 %360, 1
  store i32 %inc, ptr %i, align 4, !tbaa !4
  br label %for.cond, !llvm.loop !36

for.end:                                          ; preds = %for.cond
  %361 = load ptr, ptr %buff_u, align 8, !tbaa !19
  call void @FLA_free(ptr noundef %361)
  %362 = load ptr, ptr %buff_z, align 8, !tbaa !19
  call void @FLA_free(ptr noundef %362)
  %363 = load ptr, ptr %buff_w, align 8, !tbaa !19
  call void @FLA_free(ptr noundef %363)
  call void @llvm.lifetime.end.p0(i64 4, ptr %inc_w) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %inc_z) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %inc_u) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_w) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_z) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_u) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %b_alg) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %minus_conj_zeta11) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %minus_zeta11) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %minus_conj_upsilon11) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %minus_upsilon11) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %minus_inv_tau11) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %inv_tau11) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %beta) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %first_elem) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_m1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_0) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_2) #5
  ret i32 -1
}

declare ptr @FLA_malloc(i64 noundef) #2

declare void @bl1_saxpyv(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #2

declare i32 @FLA_Househ2_UT_l_ops(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

declare void @bl1_ssyr2(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #2

declare void @bl1_ssymv(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare void @bl1_scopyv(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #2

declare void @bl1_sdot(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) #2

declare void @bl1_sscalv(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare void @bl1_sgemv(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare void @FLA_free(ptr noundef) #2

declare void @bl1_daxpyv(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #2

declare i32 @FLA_Househ2_UT_l_opd(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

declare void @bl1_dsyr2(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #2

declare void @bl1_dsymv(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare void @bl1_dcopyv(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #2

declare void @bl1_ddot(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) #2

declare void @bl1_dscalv(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare void @bl1_dgemv(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

declare void @bl1_caxpyv(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #2

declare i32 @FLA_Househ2_UT_l_opc(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

declare void @bl1_cher2(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #2

declare void @bl1_chemv(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare void @bl1_ccopyv(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #2

declare void @bl1_cdot(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) #2

declare void @bl1_cscalv(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare void @bl1_cgemv(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

declare void @bl1_zaxpyv(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #2

declare i32 @FLA_Househ2_UT_l_opz(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

declare void @bl1_zher2(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #2

declare void @bl1_zhemv(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare void @bl1_zcopyv(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #2

declare void @bl1_zdot(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) #2

declare void @bl1_zscalv(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare void @bl1_zgemv(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="znver2" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="znver2" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !11, i64 48}
!9 = !{!"FLA_Obj_view", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !11, i64 48}
!10 = !{!"long", !6, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!13, !5, i64 0}
!13 = !{!"FLA_Obj_struct", !5, i64 0, !5, i64 4, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !11, i64 88, !5, i64 96, !5, i64 100}
!14 = !{!13, !11, i64 88}
!15 = !{!9, !10, i64 8}
!16 = !{!13, !10, i64 32}
!17 = !{!9, !10, i64 0}
!18 = !{!13, !10, i64 24}
!19 = !{!11, !11, i64 0}
!20 = !{!21, !21, i64 0}
!21 = !{!"float", !6, i64 0}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!25, !25, i64 0}
!25 = !{!"double", !6, i64 0}
!26 = distinct !{!26, !23}
!27 = !{i64 0, i64 4, !20, i64 4, i64 4, !20}
!28 = !{!29, !21, i64 0}
!29 = !{!"scomplex", !21, i64 0, !21, i64 4}
!30 = !{!29, !21, i64 4}
!31 = distinct !{!31, !23}
!32 = !{i64 0, i64 8, !24, i64 8, i64 8, !24}
!33 = !{!34, !25, i64 0}
!34 = !{!"dcomplex", !25, i64 0, !25, i64 8}
!35 = !{!34, !25, i64 8}
!36 = distinct !{!36, !23}

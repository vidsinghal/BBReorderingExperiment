; ModuleID = 'samples/545.bc'
source_filename = "/local-ssd/amdlibflame-otrkevhm552xspevawtkllysqp2goz3p-build/aidengro/spack-stage-amdlibflame-4.1-otrkevhm552xspevawtkllysqp2goz3p/spack-src/src/lapack/dec/q/lqut/vars/flamec/FLA_LQ_UT_opt_var2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FLA_Obj_view = type { i64, i64, i64, i64, i64, i64, ptr }
%struct.FLA_Obj_struct = type { i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr, i32, i32 }
%struct.scomplex = type { float, float }
%struct.dcomplex = type { double, double }

@FLA_ONE = external global %struct.FLA_Obj_view, align 8

; Function Attrs: nounwind uwtable
define i32 @FLA_LQ_UT_opt_var2(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T) #0 {
entry:
  %datatype = alloca i32, align 4
  %m_A = alloca i32, align 4
  %n_A = alloca i32, align 4
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
  call void @llvm.lifetime.start.p0(i64 4, ptr %datatype) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %m_A) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %n_A) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %rs_A) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %cs_A) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %rs_T) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %cs_T) #3
  %call = call i32 @FLA_Obj_datatype(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  store i32 %call, ptr %datatype, align 4, !tbaa !4
  %call1 = call i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %conv = trunc i64 %call1 to i32
  store i32 %conv, ptr %m_A, align 4, !tbaa !4
  %call2 = call i64 @FLA_Obj_width(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %conv3 = trunc i64 %call2 to i32
  store i32 %conv3, ptr %n_A, align 4, !tbaa !4
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_A) #3
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_T) #3
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
  %26 = load i32, ptr %n_A, align 4, !tbaa !4
  %27 = load ptr, ptr %buff_A, align 8, !tbaa !19
  %28 = load i32, ptr %rs_A, align 4, !tbaa !4
  %29 = load i32, ptr %cs_A, align 4, !tbaa !4
  %30 = load ptr, ptr %buff_T, align 8, !tbaa !19
  %31 = load i32, ptr %rs_T, align 4, !tbaa !4
  %32 = load i32, ptr %cs_T, align 4, !tbaa !4
  %call45 = call i32 @FLA_LQ_UT_ops_var2(i32 noundef %25, i32 noundef %26, ptr noundef %27, i32 noundef %28, i32 noundef %29, ptr noundef %30, i32 noundef %31, i32 noundef %32)
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_T) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_A) #3
  br label %sw.epilog

sw.bb46:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_A47) #3
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_T71) #3
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
  %58 = load i32, ptr %n_A, align 4, !tbaa !4
  %59 = load ptr, ptr %buff_A47, align 8, !tbaa !19
  %60 = load i32, ptr %rs_A, align 4, !tbaa !4
  %61 = load i32, ptr %cs_A, align 4, !tbaa !4
  %62 = load ptr, ptr %buff_T71, align 8, !tbaa !19
  %63 = load i32, ptr %rs_T, align 4, !tbaa !4
  %64 = load i32, ptr %cs_T, align 4, !tbaa !4
  %call95 = call i32 @FLA_LQ_UT_opd_var2(i32 noundef %57, i32 noundef %58, ptr noundef %59, i32 noundef %60, i32 noundef %61, ptr noundef %62, i32 noundef %63, i32 noundef %64)
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_T71) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_A47) #3
  br label %sw.epilog

sw.bb96:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_A97) #3
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_T121) #3
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
  %90 = load i32, ptr %n_A, align 4, !tbaa !4
  %91 = load ptr, ptr %buff_A97, align 8, !tbaa !19
  %92 = load i32, ptr %rs_A, align 4, !tbaa !4
  %93 = load i32, ptr %cs_A, align 4, !tbaa !4
  %94 = load ptr, ptr %buff_T121, align 8, !tbaa !19
  %95 = load i32, ptr %rs_T, align 4, !tbaa !4
  %96 = load i32, ptr %cs_T, align 4, !tbaa !4
  %call145 = call i32 @FLA_LQ_UT_opc_var2(i32 noundef %89, i32 noundef %90, ptr noundef %91, i32 noundef %92, i32 noundef %93, ptr noundef %94, i32 noundef %95, i32 noundef %96)
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_T121) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_A97) #3
  br label %sw.epilog

sw.bb146:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_A147) #3
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_T171) #3
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
  %122 = load i32, ptr %n_A, align 4, !tbaa !4
  %123 = load ptr, ptr %buff_A147, align 8, !tbaa !19
  %124 = load i32, ptr %rs_A, align 4, !tbaa !4
  %125 = load i32, ptr %cs_A, align 4, !tbaa !4
  %126 = load ptr, ptr %buff_T171, align 8, !tbaa !19
  %127 = load i32, ptr %rs_T, align 4, !tbaa !4
  %128 = load i32, ptr %cs_T, align 4, !tbaa !4
  %call195 = call i32 @FLA_LQ_UT_opz_var2(i32 noundef %121, i32 noundef %122, ptr noundef %123, i32 noundef %124, i32 noundef %125, ptr noundef %126, i32 noundef %127, i32 noundef %128)
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_T171) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_A147) #3
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %cond.end193, %cond.end143, %cond.end93, %cond.end43
  call void @llvm.lifetime.end.p0(i64 4, ptr %cs_T) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %rs_T) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %cs_A) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %rs_A) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %n_A) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %m_A) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %datatype) #3
  ret i32 -1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @FLA_Obj_datatype(ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i64 @FLA_Obj_width(ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i64 @FLA_Obj_row_stride(ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i64 @FLA_Obj_col_stride(ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

; Function Attrs: nounwind uwtable
define i32 @FLA_LQ_UT_ops_var2(i32 noundef %m_A, i32 noundef %n_A, ptr noundef %buff_A, i32 noundef %rs_A, i32 noundef %cs_A, ptr noundef %buff_T, i32 noundef %rs_T, i32 noundef %cs_T) #0 {
entry:
  %m_A.addr = alloca i32, align 4
  %n_A.addr = alloca i32, align 4
  %buff_A.addr = alloca ptr, align 8
  %rs_A.addr = alloca i32, align 4
  %cs_A.addr = alloca i32, align 4
  %buff_T.addr = alloca ptr, align 8
  %rs_T.addr = alloca i32, align 4
  %cs_T.addr = alloca i32, align 4
  %buff_1 = alloca ptr, align 8
  %min_m_n = alloca i32, align 4
  %_x = alloca i32, align 4
  %_y = alloca i32, align 4
  %tmp = alloca i32, align 4
  %i = alloca i32, align 4
  %a01 = alloca ptr, align 8
  %alpha11 = alloca ptr, align 8
  %a21 = alloca ptr, align 8
  %A02 = alloca ptr, align 8
  %a12t = alloca ptr, align 8
  %A22 = alloca ptr, align 8
  %tau11 = alloca ptr, align 8
  %t01 = alloca ptr, align 8
  %m_ahead = alloca i32, align 4
  %n_ahead = alloca i32, align 4
  %m_behind = alloca i32, align 4
  store i32 %m_A, ptr %m_A.addr, align 4, !tbaa !4
  store i32 %n_A, ptr %n_A.addr, align 4, !tbaa !4
  store ptr %buff_A, ptr %buff_A.addr, align 8, !tbaa !19
  store i32 %rs_A, ptr %rs_A.addr, align 4, !tbaa !4
  store i32 %cs_A, ptr %cs_A.addr, align 4, !tbaa !4
  store ptr %buff_T, ptr %buff_T.addr, align 8, !tbaa !19
  store i32 %rs_T, ptr %rs_T.addr, align 4, !tbaa !4
  store i32 %cs_T, ptr %cs_T.addr, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_1) #3
  %0 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8, !tbaa !8
  %datatype = getelementptr inbounds %struct.FLA_Obj_struct, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %datatype, align 8, !tbaa !12
  %cmp = icmp eq i32 %1, 105
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8, !tbaa !8
  %buffer = getelementptr inbounds %struct.FLA_Obj_struct, ptr %2, i32 0, i32 12
  %3 = load ptr, ptr %buffer, align 8, !tbaa !14
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8, !tbaa !8
  %buffer1 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %4, i32 0, i32 12
  %5 = load ptr, ptr %buffer1, align 8, !tbaa !14
  %6 = load i64, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 1), align 8, !tbaa !15
  %7 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8, !tbaa !8
  %cs = getelementptr inbounds %struct.FLA_Obj_struct, ptr %7, i32 0, i32 5
  %8 = load i64, ptr %cs, align 8, !tbaa !16
  %mul = mul i64 %6, %8
  %add.ptr2 = getelementptr inbounds float, ptr %5, i64 %mul
  %9 = load i64, ptr @FLA_ONE, align 8, !tbaa !17
  %10 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8, !tbaa !8
  %rs = getelementptr inbounds %struct.FLA_Obj_struct, ptr %10, i32 0, i32 4
  %11 = load i64, ptr %rs, align 8, !tbaa !18
  %mul3 = mul i64 %9, %11
  %add.ptr4 = getelementptr inbounds float, ptr %add.ptr2, i64 %mul3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %add.ptr, %cond.true ], [ %add.ptr4, %cond.false ]
  store ptr %cond, ptr %buff_1, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 4, ptr %min_m_n) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x) #3
  %12 = load i32, ptr %m_A.addr, align 4, !tbaa !4
  store i32 %12, ptr %_x, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y) #3
  %13 = load i32, ptr %n_A.addr, align 4, !tbaa !4
  store i32 %13, ptr %_y, align 4, !tbaa !4
  %14 = load i32, ptr %_x, align 4, !tbaa !4
  %15 = load i32, ptr %_y, align 4, !tbaa !4
  %cmp5 = icmp slt i32 %14, %15
  br i1 %cmp5, label %cond.true6, label %cond.false7

cond.true6:                                       ; preds = %cond.end
  %16 = load i32, ptr %_x, align 4, !tbaa !4
  br label %cond.end8

cond.false7:                                      ; preds = %cond.end
  %17 = load i32, ptr %_y, align 4, !tbaa !4
  br label %cond.end8

cond.end8:                                        ; preds = %cond.false7, %cond.true6
  %cond9 = phi i32 [ %16, %cond.true6 ], [ %17, %cond.false7 ]
  store i32 %cond9, ptr %tmp, align 4, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x) #3
  %18 = load i32, ptr %tmp, align 4, !tbaa !4
  store i32 %18, ptr %min_m_n, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  store i32 0, ptr %i, align 4, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end8
  %19 = load i32, ptr %i, align 4, !tbaa !4
  %20 = load i32, ptr %min_m_n, align 4, !tbaa !4
  %cmp10 = icmp slt i32 %19, %20
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %a01) #3
  %21 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %22 = load i32, ptr %i, align 4, !tbaa !4
  %23 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul11 = mul nsw i32 %22, %23
  %idx.ext = sext i32 %mul11 to i64
  %add.ptr12 = getelementptr inbounds float, ptr %21, i64 %idx.ext
  %24 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul13 = mul nsw i32 0, %24
  %idx.ext14 = sext i32 %mul13 to i64
  %add.ptr15 = getelementptr inbounds float, ptr %add.ptr12, i64 %idx.ext14
  store ptr %add.ptr15, ptr %a01, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %alpha11) #3
  %25 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %26 = load i32, ptr %i, align 4, !tbaa !4
  %27 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul16 = mul nsw i32 %26, %27
  %idx.ext17 = sext i32 %mul16 to i64
  %add.ptr18 = getelementptr inbounds float, ptr %25, i64 %idx.ext17
  %28 = load i32, ptr %i, align 4, !tbaa !4
  %29 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul19 = mul nsw i32 %28, %29
  %idx.ext20 = sext i32 %mul19 to i64
  %add.ptr21 = getelementptr inbounds float, ptr %add.ptr18, i64 %idx.ext20
  store ptr %add.ptr21, ptr %alpha11, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %a21) #3
  %30 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %31 = load i32, ptr %i, align 4, !tbaa !4
  %32 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul22 = mul nsw i32 %31, %32
  %idx.ext23 = sext i32 %mul22 to i64
  %add.ptr24 = getelementptr inbounds float, ptr %30, i64 %idx.ext23
  %33 = load i32, ptr %i, align 4, !tbaa !4
  %add = add nsw i32 %33, 1
  %34 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul25 = mul nsw i32 %add, %34
  %idx.ext26 = sext i32 %mul25 to i64
  %add.ptr27 = getelementptr inbounds float, ptr %add.ptr24, i64 %idx.ext26
  store ptr %add.ptr27, ptr %a21, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %A02) #3
  %35 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %36 = load i32, ptr %i, align 4, !tbaa !4
  %add28 = add nsw i32 %36, 1
  %37 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul29 = mul nsw i32 %add28, %37
  %idx.ext30 = sext i32 %mul29 to i64
  %add.ptr31 = getelementptr inbounds float, ptr %35, i64 %idx.ext30
  %38 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul32 = mul nsw i32 0, %38
  %idx.ext33 = sext i32 %mul32 to i64
  %add.ptr34 = getelementptr inbounds float, ptr %add.ptr31, i64 %idx.ext33
  store ptr %add.ptr34, ptr %A02, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %a12t) #3
  %39 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %40 = load i32, ptr %i, align 4, !tbaa !4
  %add35 = add nsw i32 %40, 1
  %41 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul36 = mul nsw i32 %add35, %41
  %idx.ext37 = sext i32 %mul36 to i64
  %add.ptr38 = getelementptr inbounds float, ptr %39, i64 %idx.ext37
  %42 = load i32, ptr %i, align 4, !tbaa !4
  %43 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul39 = mul nsw i32 %42, %43
  %idx.ext40 = sext i32 %mul39 to i64
  %add.ptr41 = getelementptr inbounds float, ptr %add.ptr38, i64 %idx.ext40
  store ptr %add.ptr41, ptr %a12t, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %A22) #3
  %44 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %45 = load i32, ptr %i, align 4, !tbaa !4
  %add42 = add nsw i32 %45, 1
  %46 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul43 = mul nsw i32 %add42, %46
  %idx.ext44 = sext i32 %mul43 to i64
  %add.ptr45 = getelementptr inbounds float, ptr %44, i64 %idx.ext44
  %47 = load i32, ptr %i, align 4, !tbaa !4
  %add46 = add nsw i32 %47, 1
  %48 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul47 = mul nsw i32 %add46, %48
  %idx.ext48 = sext i32 %mul47 to i64
  %add.ptr49 = getelementptr inbounds float, ptr %add.ptr45, i64 %idx.ext48
  store ptr %add.ptr49, ptr %A22, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %tau11) #3
  %49 = load ptr, ptr %buff_T.addr, align 8, !tbaa !19
  %50 = load i32, ptr %i, align 4, !tbaa !4
  %51 = load i32, ptr %cs_T.addr, align 4, !tbaa !4
  %mul50 = mul nsw i32 %50, %51
  %idx.ext51 = sext i32 %mul50 to i64
  %add.ptr52 = getelementptr inbounds float, ptr %49, i64 %idx.ext51
  %52 = load i32, ptr %i, align 4, !tbaa !4
  %53 = load i32, ptr %rs_T.addr, align 4, !tbaa !4
  %mul53 = mul nsw i32 %52, %53
  %idx.ext54 = sext i32 %mul53 to i64
  %add.ptr55 = getelementptr inbounds float, ptr %add.ptr52, i64 %idx.ext54
  store ptr %add.ptr55, ptr %tau11, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %t01) #3
  %54 = load ptr, ptr %buff_T.addr, align 8, !tbaa !19
  %55 = load i32, ptr %i, align 4, !tbaa !4
  %56 = load i32, ptr %cs_T.addr, align 4, !tbaa !4
  %mul56 = mul nsw i32 %55, %56
  %idx.ext57 = sext i32 %mul56 to i64
  %add.ptr58 = getelementptr inbounds float, ptr %54, i64 %idx.ext57
  %57 = load i32, ptr %rs_T.addr, align 4, !tbaa !4
  %mul59 = mul nsw i32 0, %57
  %idx.ext60 = sext i32 %mul59 to i64
  %add.ptr61 = getelementptr inbounds float, ptr %add.ptr58, i64 %idx.ext60
  store ptr %add.ptr61, ptr %t01, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 4, ptr %m_ahead) #3
  %58 = load i32, ptr %m_A.addr, align 4, !tbaa !4
  %59 = load i32, ptr %i, align 4, !tbaa !4
  %sub = sub nsw i32 %58, %59
  %sub62 = sub nsw i32 %sub, 1
  store i32 %sub62, ptr %m_ahead, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n_ahead) #3
  %60 = load i32, ptr %n_A.addr, align 4, !tbaa !4
  %61 = load i32, ptr %i, align 4, !tbaa !4
  %sub63 = sub nsw i32 %60, %61
  %sub64 = sub nsw i32 %sub63, 1
  store i32 %sub64, ptr %n_ahead, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %m_behind) #3
  %62 = load i32, ptr %i, align 4, !tbaa !4
  store i32 %62, ptr %m_behind, align 4, !tbaa !4
  %63 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %64 = load ptr, ptr %alpha11, align 8, !tbaa !19
  %65 = load ptr, ptr %a12t, align 8, !tbaa !19
  %66 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %67 = load ptr, ptr %tau11, align 8, !tbaa !19
  %call = call i32 @FLA_Househ2_UT_r_ops(i32 noundef %63, ptr noundef %64, ptr noundef %65, i32 noundef %66, ptr noundef %67)
  %68 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %69 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %70 = load ptr, ptr %tau11, align 8, !tbaa !19
  %71 = load ptr, ptr %a12t, align 8, !tbaa !19
  %72 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %73 = load ptr, ptr %a21, align 8, !tbaa !19
  %74 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %75 = load ptr, ptr %A22, align 8, !tbaa !19
  %76 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %77 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %call65 = call i32 @FLA_Apply_H2_UT_r_ops_var1(i32 noundef %68, i32 noundef %69, ptr noundef %70, ptr noundef %71, i32 noundef %72, ptr noundef %73, i32 noundef %74, ptr noundef %75, i32 noundef %76, i32 noundef %77)
  %78 = load i32, ptr %m_behind, align 4, !tbaa !4
  %79 = load ptr, ptr %a01, align 8, !tbaa !19
  %80 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %81 = load ptr, ptr %t01, align 8, !tbaa !19
  %82 = load i32, ptr %rs_T.addr, align 4, !tbaa !4
  call void @bl1_scopyv(i32 noundef 501, i32 noundef %78, ptr noundef %79, i32 noundef %80, ptr noundef %81, i32 noundef %82)
  %83 = load i32, ptr %m_behind, align 4, !tbaa !4
  %84 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %85 = load ptr, ptr %buff_1, align 8, !tbaa !19
  %86 = load ptr, ptr %A02, align 8, !tbaa !19
  %87 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %88 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %89 = load ptr, ptr %a12t, align 8, !tbaa !19
  %90 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %91 = load ptr, ptr %buff_1, align 8, !tbaa !19
  %92 = load ptr, ptr %t01, align 8, !tbaa !19
  %93 = load i32, ptr %rs_T.addr, align 4, !tbaa !4
  call void @bl1_sgemv(i32 noundef 102, i32 noundef 500, i32 noundef %83, i32 noundef %84, ptr noundef %85, ptr noundef %86, i32 noundef %87, i32 noundef %88, ptr noundef %89, i32 noundef %90, ptr noundef %91, ptr noundef %92, i32 noundef %93)
  call void @llvm.lifetime.end.p0(i64 4, ptr %m_behind) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %n_ahead) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %m_ahead) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %t01) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %tau11) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %A22) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %a12t) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %A02) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %a21) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %alpha11) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %a01) #3
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %94 = load i32, ptr %i, align 4, !tbaa !4
  %inc = add nsw i32 %94, 1
  store i32 %inc, ptr %i, align 4, !tbaa !4
  br label %for.cond, !llvm.loop !20

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %min_m_n) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_1) #3
  ret i32 -1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @FLA_LQ_UT_opd_var2(i32 noundef %m_A, i32 noundef %n_A, ptr noundef %buff_A, i32 noundef %rs_A, i32 noundef %cs_A, ptr noundef %buff_T, i32 noundef %rs_T, i32 noundef %cs_T) #0 {
entry:
  %m_A.addr = alloca i32, align 4
  %n_A.addr = alloca i32, align 4
  %buff_A.addr = alloca ptr, align 8
  %rs_A.addr = alloca i32, align 4
  %cs_A.addr = alloca i32, align 4
  %buff_T.addr = alloca ptr, align 8
  %rs_T.addr = alloca i32, align 4
  %cs_T.addr = alloca i32, align 4
  %buff_1 = alloca ptr, align 8
  %min_m_n = alloca i32, align 4
  %_x = alloca i32, align 4
  %_y = alloca i32, align 4
  %tmp = alloca i32, align 4
  %i = alloca i32, align 4
  %a01 = alloca ptr, align 8
  %alpha11 = alloca ptr, align 8
  %a21 = alloca ptr, align 8
  %A02 = alloca ptr, align 8
  %a12t = alloca ptr, align 8
  %A22 = alloca ptr, align 8
  %tau11 = alloca ptr, align 8
  %t01 = alloca ptr, align 8
  %m_ahead = alloca i32, align 4
  %n_ahead = alloca i32, align 4
  %m_behind = alloca i32, align 4
  store i32 %m_A, ptr %m_A.addr, align 4, !tbaa !4
  store i32 %n_A, ptr %n_A.addr, align 4, !tbaa !4
  store ptr %buff_A, ptr %buff_A.addr, align 8, !tbaa !19
  store i32 %rs_A, ptr %rs_A.addr, align 4, !tbaa !4
  store i32 %cs_A, ptr %cs_A.addr, align 4, !tbaa !4
  store ptr %buff_T, ptr %buff_T.addr, align 8, !tbaa !19
  store i32 %rs_T, ptr %rs_T.addr, align 4, !tbaa !4
  store i32 %cs_T, ptr %cs_T.addr, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_1) #3
  %0 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8, !tbaa !8
  %datatype = getelementptr inbounds %struct.FLA_Obj_struct, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %datatype, align 8, !tbaa !12
  %cmp = icmp eq i32 %1, 105
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8, !tbaa !8
  %buffer = getelementptr inbounds %struct.FLA_Obj_struct, ptr %2, i32 0, i32 12
  %3 = load ptr, ptr %buffer, align 8, !tbaa !14
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 16
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8, !tbaa !8
  %buffer1 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %4, i32 0, i32 12
  %5 = load ptr, ptr %buffer1, align 8, !tbaa !14
  %6 = load i64, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 1), align 8, !tbaa !15
  %7 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8, !tbaa !8
  %cs = getelementptr inbounds %struct.FLA_Obj_struct, ptr %7, i32 0, i32 5
  %8 = load i64, ptr %cs, align 8, !tbaa !16
  %mul = mul i64 %6, %8
  %add.ptr2 = getelementptr inbounds double, ptr %5, i64 %mul
  %9 = load i64, ptr @FLA_ONE, align 8, !tbaa !17
  %10 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8, !tbaa !8
  %rs = getelementptr inbounds %struct.FLA_Obj_struct, ptr %10, i32 0, i32 4
  %11 = load i64, ptr %rs, align 8, !tbaa !18
  %mul3 = mul i64 %9, %11
  %add.ptr4 = getelementptr inbounds double, ptr %add.ptr2, i64 %mul3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %add.ptr, %cond.true ], [ %add.ptr4, %cond.false ]
  store ptr %cond, ptr %buff_1, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 4, ptr %min_m_n) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x) #3
  %12 = load i32, ptr %m_A.addr, align 4, !tbaa !4
  store i32 %12, ptr %_x, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y) #3
  %13 = load i32, ptr %n_A.addr, align 4, !tbaa !4
  store i32 %13, ptr %_y, align 4, !tbaa !4
  %14 = load i32, ptr %_x, align 4, !tbaa !4
  %15 = load i32, ptr %_y, align 4, !tbaa !4
  %cmp5 = icmp slt i32 %14, %15
  br i1 %cmp5, label %cond.true6, label %cond.false7

cond.true6:                                       ; preds = %cond.end
  %16 = load i32, ptr %_x, align 4, !tbaa !4
  br label %cond.end8

cond.false7:                                      ; preds = %cond.end
  %17 = load i32, ptr %_y, align 4, !tbaa !4
  br label %cond.end8

cond.end8:                                        ; preds = %cond.false7, %cond.true6
  %cond9 = phi i32 [ %16, %cond.true6 ], [ %17, %cond.false7 ]
  store i32 %cond9, ptr %tmp, align 4, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x) #3
  %18 = load i32, ptr %tmp, align 4, !tbaa !4
  store i32 %18, ptr %min_m_n, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  store i32 0, ptr %i, align 4, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end8
  %19 = load i32, ptr %i, align 4, !tbaa !4
  %20 = load i32, ptr %min_m_n, align 4, !tbaa !4
  %cmp10 = icmp slt i32 %19, %20
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %a01) #3
  %21 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %22 = load i32, ptr %i, align 4, !tbaa !4
  %23 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul11 = mul nsw i32 %22, %23
  %idx.ext = sext i32 %mul11 to i64
  %add.ptr12 = getelementptr inbounds double, ptr %21, i64 %idx.ext
  %24 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul13 = mul nsw i32 0, %24
  %idx.ext14 = sext i32 %mul13 to i64
  %add.ptr15 = getelementptr inbounds double, ptr %add.ptr12, i64 %idx.ext14
  store ptr %add.ptr15, ptr %a01, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %alpha11) #3
  %25 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %26 = load i32, ptr %i, align 4, !tbaa !4
  %27 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul16 = mul nsw i32 %26, %27
  %idx.ext17 = sext i32 %mul16 to i64
  %add.ptr18 = getelementptr inbounds double, ptr %25, i64 %idx.ext17
  %28 = load i32, ptr %i, align 4, !tbaa !4
  %29 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul19 = mul nsw i32 %28, %29
  %idx.ext20 = sext i32 %mul19 to i64
  %add.ptr21 = getelementptr inbounds double, ptr %add.ptr18, i64 %idx.ext20
  store ptr %add.ptr21, ptr %alpha11, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %a21) #3
  %30 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %31 = load i32, ptr %i, align 4, !tbaa !4
  %32 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul22 = mul nsw i32 %31, %32
  %idx.ext23 = sext i32 %mul22 to i64
  %add.ptr24 = getelementptr inbounds double, ptr %30, i64 %idx.ext23
  %33 = load i32, ptr %i, align 4, !tbaa !4
  %add = add nsw i32 %33, 1
  %34 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul25 = mul nsw i32 %add, %34
  %idx.ext26 = sext i32 %mul25 to i64
  %add.ptr27 = getelementptr inbounds double, ptr %add.ptr24, i64 %idx.ext26
  store ptr %add.ptr27, ptr %a21, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %A02) #3
  %35 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %36 = load i32, ptr %i, align 4, !tbaa !4
  %add28 = add nsw i32 %36, 1
  %37 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul29 = mul nsw i32 %add28, %37
  %idx.ext30 = sext i32 %mul29 to i64
  %add.ptr31 = getelementptr inbounds double, ptr %35, i64 %idx.ext30
  %38 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul32 = mul nsw i32 0, %38
  %idx.ext33 = sext i32 %mul32 to i64
  %add.ptr34 = getelementptr inbounds double, ptr %add.ptr31, i64 %idx.ext33
  store ptr %add.ptr34, ptr %A02, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %a12t) #3
  %39 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %40 = load i32, ptr %i, align 4, !tbaa !4
  %add35 = add nsw i32 %40, 1
  %41 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul36 = mul nsw i32 %add35, %41
  %idx.ext37 = sext i32 %mul36 to i64
  %add.ptr38 = getelementptr inbounds double, ptr %39, i64 %idx.ext37
  %42 = load i32, ptr %i, align 4, !tbaa !4
  %43 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul39 = mul nsw i32 %42, %43
  %idx.ext40 = sext i32 %mul39 to i64
  %add.ptr41 = getelementptr inbounds double, ptr %add.ptr38, i64 %idx.ext40
  store ptr %add.ptr41, ptr %a12t, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %A22) #3
  %44 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %45 = load i32, ptr %i, align 4, !tbaa !4
  %add42 = add nsw i32 %45, 1
  %46 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul43 = mul nsw i32 %add42, %46
  %idx.ext44 = sext i32 %mul43 to i64
  %add.ptr45 = getelementptr inbounds double, ptr %44, i64 %idx.ext44
  %47 = load i32, ptr %i, align 4, !tbaa !4
  %add46 = add nsw i32 %47, 1
  %48 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul47 = mul nsw i32 %add46, %48
  %idx.ext48 = sext i32 %mul47 to i64
  %add.ptr49 = getelementptr inbounds double, ptr %add.ptr45, i64 %idx.ext48
  store ptr %add.ptr49, ptr %A22, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %tau11) #3
  %49 = load ptr, ptr %buff_T.addr, align 8, !tbaa !19
  %50 = load i32, ptr %i, align 4, !tbaa !4
  %51 = load i32, ptr %cs_T.addr, align 4, !tbaa !4
  %mul50 = mul nsw i32 %50, %51
  %idx.ext51 = sext i32 %mul50 to i64
  %add.ptr52 = getelementptr inbounds double, ptr %49, i64 %idx.ext51
  %52 = load i32, ptr %i, align 4, !tbaa !4
  %53 = load i32, ptr %rs_T.addr, align 4, !tbaa !4
  %mul53 = mul nsw i32 %52, %53
  %idx.ext54 = sext i32 %mul53 to i64
  %add.ptr55 = getelementptr inbounds double, ptr %add.ptr52, i64 %idx.ext54
  store ptr %add.ptr55, ptr %tau11, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %t01) #3
  %54 = load ptr, ptr %buff_T.addr, align 8, !tbaa !19
  %55 = load i32, ptr %i, align 4, !tbaa !4
  %56 = load i32, ptr %cs_T.addr, align 4, !tbaa !4
  %mul56 = mul nsw i32 %55, %56
  %idx.ext57 = sext i32 %mul56 to i64
  %add.ptr58 = getelementptr inbounds double, ptr %54, i64 %idx.ext57
  %57 = load i32, ptr %rs_T.addr, align 4, !tbaa !4
  %mul59 = mul nsw i32 0, %57
  %idx.ext60 = sext i32 %mul59 to i64
  %add.ptr61 = getelementptr inbounds double, ptr %add.ptr58, i64 %idx.ext60
  store ptr %add.ptr61, ptr %t01, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 4, ptr %m_ahead) #3
  %58 = load i32, ptr %m_A.addr, align 4, !tbaa !4
  %59 = load i32, ptr %i, align 4, !tbaa !4
  %sub = sub nsw i32 %58, %59
  %sub62 = sub nsw i32 %sub, 1
  store i32 %sub62, ptr %m_ahead, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n_ahead) #3
  %60 = load i32, ptr %n_A.addr, align 4, !tbaa !4
  %61 = load i32, ptr %i, align 4, !tbaa !4
  %sub63 = sub nsw i32 %60, %61
  %sub64 = sub nsw i32 %sub63, 1
  store i32 %sub64, ptr %n_ahead, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %m_behind) #3
  %62 = load i32, ptr %i, align 4, !tbaa !4
  store i32 %62, ptr %m_behind, align 4, !tbaa !4
  %63 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %64 = load ptr, ptr %alpha11, align 8, !tbaa !19
  %65 = load ptr, ptr %a12t, align 8, !tbaa !19
  %66 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %67 = load ptr, ptr %tau11, align 8, !tbaa !19
  %call = call i32 @FLA_Househ2_UT_r_opd(i32 noundef %63, ptr noundef %64, ptr noundef %65, i32 noundef %66, ptr noundef %67)
  %68 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %69 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %70 = load ptr, ptr %tau11, align 8, !tbaa !19
  %71 = load ptr, ptr %a12t, align 8, !tbaa !19
  %72 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %73 = load ptr, ptr %a21, align 8, !tbaa !19
  %74 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %75 = load ptr, ptr %A22, align 8, !tbaa !19
  %76 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %77 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %call65 = call i32 @FLA_Apply_H2_UT_r_opd_var1(i32 noundef %68, i32 noundef %69, ptr noundef %70, ptr noundef %71, i32 noundef %72, ptr noundef %73, i32 noundef %74, ptr noundef %75, i32 noundef %76, i32 noundef %77)
  %78 = load i32, ptr %m_behind, align 4, !tbaa !4
  %79 = load ptr, ptr %a01, align 8, !tbaa !19
  %80 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %81 = load ptr, ptr %t01, align 8, !tbaa !19
  %82 = load i32, ptr %rs_T.addr, align 4, !tbaa !4
  call void @bl1_dcopyv(i32 noundef 501, i32 noundef %78, ptr noundef %79, i32 noundef %80, ptr noundef %81, i32 noundef %82)
  %83 = load i32, ptr %m_behind, align 4, !tbaa !4
  %84 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %85 = load ptr, ptr %buff_1, align 8, !tbaa !19
  %86 = load ptr, ptr %A02, align 8, !tbaa !19
  %87 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %88 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %89 = load ptr, ptr %a12t, align 8, !tbaa !19
  %90 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %91 = load ptr, ptr %buff_1, align 8, !tbaa !19
  %92 = load ptr, ptr %t01, align 8, !tbaa !19
  %93 = load i32, ptr %rs_T.addr, align 4, !tbaa !4
  call void @bl1_dgemv(i32 noundef 102, i32 noundef 500, i32 noundef %83, i32 noundef %84, ptr noundef %85, ptr noundef %86, i32 noundef %87, i32 noundef %88, ptr noundef %89, i32 noundef %90, ptr noundef %91, ptr noundef %92, i32 noundef %93)
  call void @llvm.lifetime.end.p0(i64 4, ptr %m_behind) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %n_ahead) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %m_ahead) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %t01) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %tau11) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %A22) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %a12t) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %A02) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %a21) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %alpha11) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %a01) #3
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %94 = load i32, ptr %i, align 4, !tbaa !4
  %inc = add nsw i32 %94, 1
  store i32 %inc, ptr %i, align 4, !tbaa !4
  br label %for.cond, !llvm.loop !22

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %min_m_n) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_1) #3
  ret i32 -1
}

; Function Attrs: nounwind uwtable
define i32 @FLA_LQ_UT_opc_var2(i32 noundef %m_A, i32 noundef %n_A, ptr noundef %buff_A, i32 noundef %rs_A, i32 noundef %cs_A, ptr noundef %buff_T, i32 noundef %rs_T, i32 noundef %cs_T) #0 {
entry:
  %m_A.addr = alloca i32, align 4
  %n_A.addr = alloca i32, align 4
  %buff_A.addr = alloca ptr, align 8
  %rs_A.addr = alloca i32, align 4
  %cs_A.addr = alloca i32, align 4
  %buff_T.addr = alloca ptr, align 8
  %rs_T.addr = alloca i32, align 4
  %cs_T.addr = alloca i32, align 4
  %buff_1 = alloca ptr, align 8
  %min_m_n = alloca i32, align 4
  %_x = alloca i32, align 4
  %_y = alloca i32, align 4
  %tmp = alloca i32, align 4
  %i = alloca i32, align 4
  %a01 = alloca ptr, align 8
  %alpha11 = alloca ptr, align 8
  %a21 = alloca ptr, align 8
  %A02 = alloca ptr, align 8
  %a12t = alloca ptr, align 8
  %A22 = alloca ptr, align 8
  %tau11 = alloca ptr, align 8
  %t01 = alloca ptr, align 8
  %m_ahead = alloca i32, align 4
  %n_ahead = alloca i32, align 4
  %m_behind = alloca i32, align 4
  store i32 %m_A, ptr %m_A.addr, align 4, !tbaa !4
  store i32 %n_A, ptr %n_A.addr, align 4, !tbaa !4
  store ptr %buff_A, ptr %buff_A.addr, align 8, !tbaa !19
  store i32 %rs_A, ptr %rs_A.addr, align 4, !tbaa !4
  store i32 %cs_A, ptr %cs_A.addr, align 4, !tbaa !4
  store ptr %buff_T, ptr %buff_T.addr, align 8, !tbaa !19
  store i32 %rs_T, ptr %rs_T.addr, align 4, !tbaa !4
  store i32 %cs_T, ptr %cs_T.addr, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_1) #3
  %0 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8, !tbaa !8
  %datatype = getelementptr inbounds %struct.FLA_Obj_struct, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %datatype, align 8, !tbaa !12
  %cmp = icmp eq i32 %1, 105
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8, !tbaa !8
  %buffer = getelementptr inbounds %struct.FLA_Obj_struct, ptr %2, i32 0, i32 12
  %3 = load ptr, ptr %buffer, align 8, !tbaa !14
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 24
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8, !tbaa !8
  %buffer1 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %4, i32 0, i32 12
  %5 = load ptr, ptr %buffer1, align 8, !tbaa !14
  %6 = load i64, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 1), align 8, !tbaa !15
  %7 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8, !tbaa !8
  %cs = getelementptr inbounds %struct.FLA_Obj_struct, ptr %7, i32 0, i32 5
  %8 = load i64, ptr %cs, align 8, !tbaa !16
  %mul = mul i64 %6, %8
  %add.ptr2 = getelementptr inbounds %struct.scomplex, ptr %5, i64 %mul
  %9 = load i64, ptr @FLA_ONE, align 8, !tbaa !17
  %10 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8, !tbaa !8
  %rs = getelementptr inbounds %struct.FLA_Obj_struct, ptr %10, i32 0, i32 4
  %11 = load i64, ptr %rs, align 8, !tbaa !18
  %mul3 = mul i64 %9, %11
  %add.ptr4 = getelementptr inbounds %struct.scomplex, ptr %add.ptr2, i64 %mul3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %add.ptr, %cond.true ], [ %add.ptr4, %cond.false ]
  store ptr %cond, ptr %buff_1, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 4, ptr %min_m_n) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x) #3
  %12 = load i32, ptr %m_A.addr, align 4, !tbaa !4
  store i32 %12, ptr %_x, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y) #3
  %13 = load i32, ptr %n_A.addr, align 4, !tbaa !4
  store i32 %13, ptr %_y, align 4, !tbaa !4
  %14 = load i32, ptr %_x, align 4, !tbaa !4
  %15 = load i32, ptr %_y, align 4, !tbaa !4
  %cmp5 = icmp slt i32 %14, %15
  br i1 %cmp5, label %cond.true6, label %cond.false7

cond.true6:                                       ; preds = %cond.end
  %16 = load i32, ptr %_x, align 4, !tbaa !4
  br label %cond.end8

cond.false7:                                      ; preds = %cond.end
  %17 = load i32, ptr %_y, align 4, !tbaa !4
  br label %cond.end8

cond.end8:                                        ; preds = %cond.false7, %cond.true6
  %cond9 = phi i32 [ %16, %cond.true6 ], [ %17, %cond.false7 ]
  store i32 %cond9, ptr %tmp, align 4, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x) #3
  %18 = load i32, ptr %tmp, align 4, !tbaa !4
  store i32 %18, ptr %min_m_n, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  store i32 0, ptr %i, align 4, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end8
  %19 = load i32, ptr %i, align 4, !tbaa !4
  %20 = load i32, ptr %min_m_n, align 4, !tbaa !4
  %cmp10 = icmp slt i32 %19, %20
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %a01) #3
  %21 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %22 = load i32, ptr %i, align 4, !tbaa !4
  %23 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul11 = mul nsw i32 %22, %23
  %idx.ext = sext i32 %mul11 to i64
  %add.ptr12 = getelementptr inbounds %struct.scomplex, ptr %21, i64 %idx.ext
  %24 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul13 = mul nsw i32 0, %24
  %idx.ext14 = sext i32 %mul13 to i64
  %add.ptr15 = getelementptr inbounds %struct.scomplex, ptr %add.ptr12, i64 %idx.ext14
  store ptr %add.ptr15, ptr %a01, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %alpha11) #3
  %25 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %26 = load i32, ptr %i, align 4, !tbaa !4
  %27 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul16 = mul nsw i32 %26, %27
  %idx.ext17 = sext i32 %mul16 to i64
  %add.ptr18 = getelementptr inbounds %struct.scomplex, ptr %25, i64 %idx.ext17
  %28 = load i32, ptr %i, align 4, !tbaa !4
  %29 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul19 = mul nsw i32 %28, %29
  %idx.ext20 = sext i32 %mul19 to i64
  %add.ptr21 = getelementptr inbounds %struct.scomplex, ptr %add.ptr18, i64 %idx.ext20
  store ptr %add.ptr21, ptr %alpha11, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %a21) #3
  %30 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %31 = load i32, ptr %i, align 4, !tbaa !4
  %32 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul22 = mul nsw i32 %31, %32
  %idx.ext23 = sext i32 %mul22 to i64
  %add.ptr24 = getelementptr inbounds %struct.scomplex, ptr %30, i64 %idx.ext23
  %33 = load i32, ptr %i, align 4, !tbaa !4
  %add = add nsw i32 %33, 1
  %34 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul25 = mul nsw i32 %add, %34
  %idx.ext26 = sext i32 %mul25 to i64
  %add.ptr27 = getelementptr inbounds %struct.scomplex, ptr %add.ptr24, i64 %idx.ext26
  store ptr %add.ptr27, ptr %a21, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %A02) #3
  %35 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %36 = load i32, ptr %i, align 4, !tbaa !4
  %add28 = add nsw i32 %36, 1
  %37 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul29 = mul nsw i32 %add28, %37
  %idx.ext30 = sext i32 %mul29 to i64
  %add.ptr31 = getelementptr inbounds %struct.scomplex, ptr %35, i64 %idx.ext30
  %38 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul32 = mul nsw i32 0, %38
  %idx.ext33 = sext i32 %mul32 to i64
  %add.ptr34 = getelementptr inbounds %struct.scomplex, ptr %add.ptr31, i64 %idx.ext33
  store ptr %add.ptr34, ptr %A02, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %a12t) #3
  %39 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %40 = load i32, ptr %i, align 4, !tbaa !4
  %add35 = add nsw i32 %40, 1
  %41 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul36 = mul nsw i32 %add35, %41
  %idx.ext37 = sext i32 %mul36 to i64
  %add.ptr38 = getelementptr inbounds %struct.scomplex, ptr %39, i64 %idx.ext37
  %42 = load i32, ptr %i, align 4, !tbaa !4
  %43 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul39 = mul nsw i32 %42, %43
  %idx.ext40 = sext i32 %mul39 to i64
  %add.ptr41 = getelementptr inbounds %struct.scomplex, ptr %add.ptr38, i64 %idx.ext40
  store ptr %add.ptr41, ptr %a12t, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %A22) #3
  %44 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %45 = load i32, ptr %i, align 4, !tbaa !4
  %add42 = add nsw i32 %45, 1
  %46 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul43 = mul nsw i32 %add42, %46
  %idx.ext44 = sext i32 %mul43 to i64
  %add.ptr45 = getelementptr inbounds %struct.scomplex, ptr %44, i64 %idx.ext44
  %47 = load i32, ptr %i, align 4, !tbaa !4
  %add46 = add nsw i32 %47, 1
  %48 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul47 = mul nsw i32 %add46, %48
  %idx.ext48 = sext i32 %mul47 to i64
  %add.ptr49 = getelementptr inbounds %struct.scomplex, ptr %add.ptr45, i64 %idx.ext48
  store ptr %add.ptr49, ptr %A22, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %tau11) #3
  %49 = load ptr, ptr %buff_T.addr, align 8, !tbaa !19
  %50 = load i32, ptr %i, align 4, !tbaa !4
  %51 = load i32, ptr %cs_T.addr, align 4, !tbaa !4
  %mul50 = mul nsw i32 %50, %51
  %idx.ext51 = sext i32 %mul50 to i64
  %add.ptr52 = getelementptr inbounds %struct.scomplex, ptr %49, i64 %idx.ext51
  %52 = load i32, ptr %i, align 4, !tbaa !4
  %53 = load i32, ptr %rs_T.addr, align 4, !tbaa !4
  %mul53 = mul nsw i32 %52, %53
  %idx.ext54 = sext i32 %mul53 to i64
  %add.ptr55 = getelementptr inbounds %struct.scomplex, ptr %add.ptr52, i64 %idx.ext54
  store ptr %add.ptr55, ptr %tau11, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %t01) #3
  %54 = load ptr, ptr %buff_T.addr, align 8, !tbaa !19
  %55 = load i32, ptr %i, align 4, !tbaa !4
  %56 = load i32, ptr %cs_T.addr, align 4, !tbaa !4
  %mul56 = mul nsw i32 %55, %56
  %idx.ext57 = sext i32 %mul56 to i64
  %add.ptr58 = getelementptr inbounds %struct.scomplex, ptr %54, i64 %idx.ext57
  %57 = load i32, ptr %rs_T.addr, align 4, !tbaa !4
  %mul59 = mul nsw i32 0, %57
  %idx.ext60 = sext i32 %mul59 to i64
  %add.ptr61 = getelementptr inbounds %struct.scomplex, ptr %add.ptr58, i64 %idx.ext60
  store ptr %add.ptr61, ptr %t01, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 4, ptr %m_ahead) #3
  %58 = load i32, ptr %m_A.addr, align 4, !tbaa !4
  %59 = load i32, ptr %i, align 4, !tbaa !4
  %sub = sub nsw i32 %58, %59
  %sub62 = sub nsw i32 %sub, 1
  store i32 %sub62, ptr %m_ahead, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n_ahead) #3
  %60 = load i32, ptr %n_A.addr, align 4, !tbaa !4
  %61 = load i32, ptr %i, align 4, !tbaa !4
  %sub63 = sub nsw i32 %60, %61
  %sub64 = sub nsw i32 %sub63, 1
  store i32 %sub64, ptr %n_ahead, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %m_behind) #3
  %62 = load i32, ptr %i, align 4, !tbaa !4
  store i32 %62, ptr %m_behind, align 4, !tbaa !4
  %63 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %64 = load ptr, ptr %alpha11, align 8, !tbaa !19
  %65 = load ptr, ptr %a12t, align 8, !tbaa !19
  %66 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %67 = load ptr, ptr %tau11, align 8, !tbaa !19
  %call = call i32 @FLA_Househ2_UT_r_opc(i32 noundef %63, ptr noundef %64, ptr noundef %65, i32 noundef %66, ptr noundef %67)
  %68 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %69 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %70 = load ptr, ptr %tau11, align 8, !tbaa !19
  %71 = load ptr, ptr %a12t, align 8, !tbaa !19
  %72 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %73 = load ptr, ptr %a21, align 8, !tbaa !19
  %74 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %75 = load ptr, ptr %A22, align 8, !tbaa !19
  %76 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %77 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %call65 = call i32 @FLA_Apply_H2_UT_r_opc_var1(i32 noundef %68, i32 noundef %69, ptr noundef %70, ptr noundef %71, i32 noundef %72, ptr noundef %73, i32 noundef %74, ptr noundef %75, i32 noundef %76, i32 noundef %77)
  %78 = load i32, ptr %m_behind, align 4, !tbaa !4
  %79 = load ptr, ptr %a01, align 8, !tbaa !19
  %80 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %81 = load ptr, ptr %t01, align 8, !tbaa !19
  %82 = load i32, ptr %rs_T.addr, align 4, !tbaa !4
  call void @bl1_ccopyv(i32 noundef 501, i32 noundef %78, ptr noundef %79, i32 noundef %80, ptr noundef %81, i32 noundef %82)
  %83 = load i32, ptr %m_behind, align 4, !tbaa !4
  %84 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %85 = load ptr, ptr %buff_1, align 8, !tbaa !19
  %86 = load ptr, ptr %A02, align 8, !tbaa !19
  %87 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %88 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %89 = load ptr, ptr %a12t, align 8, !tbaa !19
  %90 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %91 = load ptr, ptr %buff_1, align 8, !tbaa !19
  %92 = load ptr, ptr %t01, align 8, !tbaa !19
  %93 = load i32, ptr %rs_T.addr, align 4, !tbaa !4
  call void @bl1_cgemv(i32 noundef 102, i32 noundef 500, i32 noundef %83, i32 noundef %84, ptr noundef %85, ptr noundef %86, i32 noundef %87, i32 noundef %88, ptr noundef %89, i32 noundef %90, ptr noundef %91, ptr noundef %92, i32 noundef %93)
  call void @llvm.lifetime.end.p0(i64 4, ptr %m_behind) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %n_ahead) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %m_ahead) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %t01) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %tau11) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %A22) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %a12t) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %A02) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %a21) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %alpha11) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %a01) #3
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %94 = load i32, ptr %i, align 4, !tbaa !4
  %inc = add nsw i32 %94, 1
  store i32 %inc, ptr %i, align 4, !tbaa !4
  br label %for.cond, !llvm.loop !23

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %min_m_n) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_1) #3
  ret i32 -1
}

; Function Attrs: nounwind uwtable
define i32 @FLA_LQ_UT_opz_var2(i32 noundef %m_A, i32 noundef %n_A, ptr noundef %buff_A, i32 noundef %rs_A, i32 noundef %cs_A, ptr noundef %buff_T, i32 noundef %rs_T, i32 noundef %cs_T) #0 {
entry:
  %m_A.addr = alloca i32, align 4
  %n_A.addr = alloca i32, align 4
  %buff_A.addr = alloca ptr, align 8
  %rs_A.addr = alloca i32, align 4
  %cs_A.addr = alloca i32, align 4
  %buff_T.addr = alloca ptr, align 8
  %rs_T.addr = alloca i32, align 4
  %cs_T.addr = alloca i32, align 4
  %buff_1 = alloca ptr, align 8
  %min_m_n = alloca i32, align 4
  %_x = alloca i32, align 4
  %_y = alloca i32, align 4
  %tmp = alloca i32, align 4
  %i = alloca i32, align 4
  %a01 = alloca ptr, align 8
  %alpha11 = alloca ptr, align 8
  %a21 = alloca ptr, align 8
  %A02 = alloca ptr, align 8
  %a12t = alloca ptr, align 8
  %A22 = alloca ptr, align 8
  %tau11 = alloca ptr, align 8
  %t01 = alloca ptr, align 8
  %m_ahead = alloca i32, align 4
  %n_ahead = alloca i32, align 4
  %m_behind = alloca i32, align 4
  store i32 %m_A, ptr %m_A.addr, align 4, !tbaa !4
  store i32 %n_A, ptr %n_A.addr, align 4, !tbaa !4
  store ptr %buff_A, ptr %buff_A.addr, align 8, !tbaa !19
  store i32 %rs_A, ptr %rs_A.addr, align 4, !tbaa !4
  store i32 %cs_A, ptr %cs_A.addr, align 4, !tbaa !4
  store ptr %buff_T, ptr %buff_T.addr, align 8, !tbaa !19
  store i32 %rs_T, ptr %rs_T.addr, align 4, !tbaa !4
  store i32 %cs_T, ptr %cs_T.addr, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_1) #3
  %0 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8, !tbaa !8
  %datatype = getelementptr inbounds %struct.FLA_Obj_struct, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %datatype, align 8, !tbaa !12
  %cmp = icmp eq i32 %1, 105
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8, !tbaa !8
  %buffer = getelementptr inbounds %struct.FLA_Obj_struct, ptr %2, i32 0, i32 12
  %3 = load ptr, ptr %buffer, align 8, !tbaa !14
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 32
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8, !tbaa !8
  %buffer1 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %4, i32 0, i32 12
  %5 = load ptr, ptr %buffer1, align 8, !tbaa !14
  %6 = load i64, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 1), align 8, !tbaa !15
  %7 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8, !tbaa !8
  %cs = getelementptr inbounds %struct.FLA_Obj_struct, ptr %7, i32 0, i32 5
  %8 = load i64, ptr %cs, align 8, !tbaa !16
  %mul = mul i64 %6, %8
  %add.ptr2 = getelementptr inbounds %struct.dcomplex, ptr %5, i64 %mul
  %9 = load i64, ptr @FLA_ONE, align 8, !tbaa !17
  %10 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8, !tbaa !8
  %rs = getelementptr inbounds %struct.FLA_Obj_struct, ptr %10, i32 0, i32 4
  %11 = load i64, ptr %rs, align 8, !tbaa !18
  %mul3 = mul i64 %9, %11
  %add.ptr4 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr2, i64 %mul3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %add.ptr, %cond.true ], [ %add.ptr4, %cond.false ]
  store ptr %cond, ptr %buff_1, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 4, ptr %min_m_n) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x) #3
  %12 = load i32, ptr %m_A.addr, align 4, !tbaa !4
  store i32 %12, ptr %_x, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y) #3
  %13 = load i32, ptr %n_A.addr, align 4, !tbaa !4
  store i32 %13, ptr %_y, align 4, !tbaa !4
  %14 = load i32, ptr %_x, align 4, !tbaa !4
  %15 = load i32, ptr %_y, align 4, !tbaa !4
  %cmp5 = icmp slt i32 %14, %15
  br i1 %cmp5, label %cond.true6, label %cond.false7

cond.true6:                                       ; preds = %cond.end
  %16 = load i32, ptr %_x, align 4, !tbaa !4
  br label %cond.end8

cond.false7:                                      ; preds = %cond.end
  %17 = load i32, ptr %_y, align 4, !tbaa !4
  br label %cond.end8

cond.end8:                                        ; preds = %cond.false7, %cond.true6
  %cond9 = phi i32 [ %16, %cond.true6 ], [ %17, %cond.false7 ]
  store i32 %cond9, ptr %tmp, align 4, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x) #3
  %18 = load i32, ptr %tmp, align 4, !tbaa !4
  store i32 %18, ptr %min_m_n, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  store i32 0, ptr %i, align 4, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end8
  %19 = load i32, ptr %i, align 4, !tbaa !4
  %20 = load i32, ptr %min_m_n, align 4, !tbaa !4
  %cmp10 = icmp slt i32 %19, %20
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %a01) #3
  %21 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %22 = load i32, ptr %i, align 4, !tbaa !4
  %23 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul11 = mul nsw i32 %22, %23
  %idx.ext = sext i32 %mul11 to i64
  %add.ptr12 = getelementptr inbounds %struct.dcomplex, ptr %21, i64 %idx.ext
  %24 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul13 = mul nsw i32 0, %24
  %idx.ext14 = sext i32 %mul13 to i64
  %add.ptr15 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr12, i64 %idx.ext14
  store ptr %add.ptr15, ptr %a01, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %alpha11) #3
  %25 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %26 = load i32, ptr %i, align 4, !tbaa !4
  %27 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul16 = mul nsw i32 %26, %27
  %idx.ext17 = sext i32 %mul16 to i64
  %add.ptr18 = getelementptr inbounds %struct.dcomplex, ptr %25, i64 %idx.ext17
  %28 = load i32, ptr %i, align 4, !tbaa !4
  %29 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul19 = mul nsw i32 %28, %29
  %idx.ext20 = sext i32 %mul19 to i64
  %add.ptr21 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr18, i64 %idx.ext20
  store ptr %add.ptr21, ptr %alpha11, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %a21) #3
  %30 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %31 = load i32, ptr %i, align 4, !tbaa !4
  %32 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul22 = mul nsw i32 %31, %32
  %idx.ext23 = sext i32 %mul22 to i64
  %add.ptr24 = getelementptr inbounds %struct.dcomplex, ptr %30, i64 %idx.ext23
  %33 = load i32, ptr %i, align 4, !tbaa !4
  %add = add nsw i32 %33, 1
  %34 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul25 = mul nsw i32 %add, %34
  %idx.ext26 = sext i32 %mul25 to i64
  %add.ptr27 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr24, i64 %idx.ext26
  store ptr %add.ptr27, ptr %a21, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %A02) #3
  %35 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %36 = load i32, ptr %i, align 4, !tbaa !4
  %add28 = add nsw i32 %36, 1
  %37 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul29 = mul nsw i32 %add28, %37
  %idx.ext30 = sext i32 %mul29 to i64
  %add.ptr31 = getelementptr inbounds %struct.dcomplex, ptr %35, i64 %idx.ext30
  %38 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul32 = mul nsw i32 0, %38
  %idx.ext33 = sext i32 %mul32 to i64
  %add.ptr34 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr31, i64 %idx.ext33
  store ptr %add.ptr34, ptr %A02, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %a12t) #3
  %39 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %40 = load i32, ptr %i, align 4, !tbaa !4
  %add35 = add nsw i32 %40, 1
  %41 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul36 = mul nsw i32 %add35, %41
  %idx.ext37 = sext i32 %mul36 to i64
  %add.ptr38 = getelementptr inbounds %struct.dcomplex, ptr %39, i64 %idx.ext37
  %42 = load i32, ptr %i, align 4, !tbaa !4
  %43 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul39 = mul nsw i32 %42, %43
  %idx.ext40 = sext i32 %mul39 to i64
  %add.ptr41 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr38, i64 %idx.ext40
  store ptr %add.ptr41, ptr %a12t, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %A22) #3
  %44 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %45 = load i32, ptr %i, align 4, !tbaa !4
  %add42 = add nsw i32 %45, 1
  %46 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul43 = mul nsw i32 %add42, %46
  %idx.ext44 = sext i32 %mul43 to i64
  %add.ptr45 = getelementptr inbounds %struct.dcomplex, ptr %44, i64 %idx.ext44
  %47 = load i32, ptr %i, align 4, !tbaa !4
  %add46 = add nsw i32 %47, 1
  %48 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul47 = mul nsw i32 %add46, %48
  %idx.ext48 = sext i32 %mul47 to i64
  %add.ptr49 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr45, i64 %idx.ext48
  store ptr %add.ptr49, ptr %A22, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %tau11) #3
  %49 = load ptr, ptr %buff_T.addr, align 8, !tbaa !19
  %50 = load i32, ptr %i, align 4, !tbaa !4
  %51 = load i32, ptr %cs_T.addr, align 4, !tbaa !4
  %mul50 = mul nsw i32 %50, %51
  %idx.ext51 = sext i32 %mul50 to i64
  %add.ptr52 = getelementptr inbounds %struct.dcomplex, ptr %49, i64 %idx.ext51
  %52 = load i32, ptr %i, align 4, !tbaa !4
  %53 = load i32, ptr %rs_T.addr, align 4, !tbaa !4
  %mul53 = mul nsw i32 %52, %53
  %idx.ext54 = sext i32 %mul53 to i64
  %add.ptr55 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr52, i64 %idx.ext54
  store ptr %add.ptr55, ptr %tau11, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %t01) #3
  %54 = load ptr, ptr %buff_T.addr, align 8, !tbaa !19
  %55 = load i32, ptr %i, align 4, !tbaa !4
  %56 = load i32, ptr %cs_T.addr, align 4, !tbaa !4
  %mul56 = mul nsw i32 %55, %56
  %idx.ext57 = sext i32 %mul56 to i64
  %add.ptr58 = getelementptr inbounds %struct.dcomplex, ptr %54, i64 %idx.ext57
  %57 = load i32, ptr %rs_T.addr, align 4, !tbaa !4
  %mul59 = mul nsw i32 0, %57
  %idx.ext60 = sext i32 %mul59 to i64
  %add.ptr61 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr58, i64 %idx.ext60
  store ptr %add.ptr61, ptr %t01, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 4, ptr %m_ahead) #3
  %58 = load i32, ptr %m_A.addr, align 4, !tbaa !4
  %59 = load i32, ptr %i, align 4, !tbaa !4
  %sub = sub nsw i32 %58, %59
  %sub62 = sub nsw i32 %sub, 1
  store i32 %sub62, ptr %m_ahead, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n_ahead) #3
  %60 = load i32, ptr %n_A.addr, align 4, !tbaa !4
  %61 = load i32, ptr %i, align 4, !tbaa !4
  %sub63 = sub nsw i32 %60, %61
  %sub64 = sub nsw i32 %sub63, 1
  store i32 %sub64, ptr %n_ahead, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %m_behind) #3
  %62 = load i32, ptr %i, align 4, !tbaa !4
  store i32 %62, ptr %m_behind, align 4, !tbaa !4
  %63 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %64 = load ptr, ptr %alpha11, align 8, !tbaa !19
  %65 = load ptr, ptr %a12t, align 8, !tbaa !19
  %66 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %67 = load ptr, ptr %tau11, align 8, !tbaa !19
  %call = call i32 @FLA_Househ2_UT_r_opz(i32 noundef %63, ptr noundef %64, ptr noundef %65, i32 noundef %66, ptr noundef %67)
  %68 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %69 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %70 = load ptr, ptr %tau11, align 8, !tbaa !19
  %71 = load ptr, ptr %a12t, align 8, !tbaa !19
  %72 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %73 = load ptr, ptr %a21, align 8, !tbaa !19
  %74 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %75 = load ptr, ptr %A22, align 8, !tbaa !19
  %76 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %77 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %call65 = call i32 @FLA_Apply_H2_UT_r_opz_var1(i32 noundef %68, i32 noundef %69, ptr noundef %70, ptr noundef %71, i32 noundef %72, ptr noundef %73, i32 noundef %74, ptr noundef %75, i32 noundef %76, i32 noundef %77)
  %78 = load i32, ptr %m_behind, align 4, !tbaa !4
  %79 = load ptr, ptr %a01, align 8, !tbaa !19
  %80 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %81 = load ptr, ptr %t01, align 8, !tbaa !19
  %82 = load i32, ptr %rs_T.addr, align 4, !tbaa !4
  call void @bl1_zcopyv(i32 noundef 501, i32 noundef %78, ptr noundef %79, i32 noundef %80, ptr noundef %81, i32 noundef %82)
  %83 = load i32, ptr %m_behind, align 4, !tbaa !4
  %84 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %85 = load ptr, ptr %buff_1, align 8, !tbaa !19
  %86 = load ptr, ptr %A02, align 8, !tbaa !19
  %87 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %88 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %89 = load ptr, ptr %a12t, align 8, !tbaa !19
  %90 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %91 = load ptr, ptr %buff_1, align 8, !tbaa !19
  %92 = load ptr, ptr %t01, align 8, !tbaa !19
  %93 = load i32, ptr %rs_T.addr, align 4, !tbaa !4
  call void @bl1_zgemv(i32 noundef 102, i32 noundef 500, i32 noundef %83, i32 noundef %84, ptr noundef %85, ptr noundef %86, i32 noundef %87, i32 noundef %88, ptr noundef %89, i32 noundef %90, ptr noundef %91, ptr noundef %92, i32 noundef %93)
  call void @llvm.lifetime.end.p0(i64 4, ptr %m_behind) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %n_ahead) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %m_ahead) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %t01) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %tau11) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %A22) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %a12t) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %A02) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %a21) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %alpha11) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %a01) #3
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %94 = load i32, ptr %i, align 4, !tbaa !4
  %inc = add nsw i32 %94, 1
  store i32 %inc, ptr %i, align 4, !tbaa !4
  br label %for.cond, !llvm.loop !24

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %min_m_n) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_1) #3
  ret i32 -1
}

declare i32 @FLA_Househ2_UT_r_ops(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

declare i32 @FLA_Apply_H2_UT_r_ops_var1(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #2

declare void @bl1_scopyv(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #2

declare void @bl1_sgemv(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare i32 @FLA_Househ2_UT_r_opd(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

declare i32 @FLA_Apply_H2_UT_r_opd_var1(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #2

declare void @bl1_dcopyv(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #2

declare void @bl1_dgemv(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare i32 @FLA_Househ2_UT_r_opc(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

declare i32 @FLA_Apply_H2_UT_r_opc_var1(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #2

declare void @bl1_ccopyv(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #2

declare void @bl1_cgemv(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare i32 @FLA_Househ2_UT_r_opz(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

declare i32 @FLA_Apply_H2_UT_r_opz_var1(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #2

declare void @bl1_zcopyv(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #2

declare void @bl1_zgemv(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #2

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
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.mustprogress"}
!22 = distinct !{!22, !21}
!23 = distinct !{!23, !21}
!24 = distinct !{!24, !21}

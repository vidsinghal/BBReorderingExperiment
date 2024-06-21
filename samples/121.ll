; ModuleID = 'samples/121.bc'
source_filename = "/local-ssd/amdlibflame-otrkevhm552xspevawtkllysqp2goz3p-build/aidengro/spack-stage-amdlibflame-4.1-otrkevhm552xspevawtkllysqp2goz3p/spack-src/src/lapack/red/eig/gest/il/flamec/FLA_Eig_gest_il_opt_var1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FLA_Obj_view = type { i64, i64, i64, i64, i64, i64, ptr }
%struct.FLA_Obj_struct = type { i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr, i32, i32 }
%struct.scomplex = type { float, float }
%struct.dcomplex = type { double, double }

@FLA_ONE = external global %struct.FLA_Obj_view, align 8
@FLA_ZERO = external global %struct.FLA_Obj_view, align 8
@FLA_MINUS_ONE = external global %struct.FLA_Obj_view, align 8
@FLA_MINUS_ONE_HALF = external global %struct.FLA_Obj_view, align 8

; Function Attrs: nounwind uwtable
define i32 @FLA_Eig_gest_il_opt_var1(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %Y, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B) #0 {
entry:
  %datatype = alloca i32, align 4
  %m_AB = alloca i32, align 4
  %rs_A = alloca i32, align 4
  %cs_A = alloca i32, align 4
  %rs_B = alloca i32, align 4
  %cs_B = alloca i32, align 4
  %inc_y = alloca i32, align 4
  %yT = alloca %struct.FLA_Obj_view, align 8
  %yB = alloca %struct.FLA_Obj_view, align 8
  %buff_A = alloca ptr, align 8
  %buff_y = alloca ptr, align 8
  %buff_B = alloca ptr, align 8
  %buff_A71 = alloca ptr, align 8
  %buff_y95 = alloca ptr, align 8
  %buff_B119 = alloca ptr, align 8
  %buff_A145 = alloca ptr, align 8
  %buff_y169 = alloca ptr, align 8
  %buff_B193 = alloca ptr, align 8
  %buff_A219 = alloca ptr, align 8
  %buff_y243 = alloca ptr, align 8
  %buff_B267 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %datatype) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %m_AB) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %rs_A) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %cs_A) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %rs_B) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %cs_B) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %inc_y) #4
  call void @llvm.lifetime.start.p0(i64 56, ptr %yT) #4
  call void @llvm.lifetime.start.p0(i64 56, ptr %yB) #4
  %call = call i32 @FLA_Obj_datatype(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  store i32 %call, ptr %datatype, align 4, !tbaa !4
  %call1 = call i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %conv = trunc i64 %call1 to i32
  store i32 %conv, ptr %m_AB, align 4, !tbaa !4
  %call2 = call i64 @FLA_Obj_row_stride(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %conv3 = trunc i64 %call2 to i32
  store i32 %conv3, ptr %rs_A, align 4, !tbaa !4
  %call4 = call i64 @FLA_Obj_col_stride(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %conv5 = trunc i64 %call4 to i32
  store i32 %conv5, ptr %cs_A, align 4, !tbaa !4
  %call6 = call i64 @FLA_Obj_row_stride(ptr noundef byval(%struct.FLA_Obj_view) align 8 %B)
  %conv7 = trunc i64 %call6 to i32
  store i32 %conv7, ptr %rs_B, align 4, !tbaa !4
  %call8 = call i64 @FLA_Obj_col_stride(ptr noundef byval(%struct.FLA_Obj_view) align 8 %B)
  %conv9 = trunc i64 %call8 to i32
  store i32 %conv9, ptr %cs_B, align 4, !tbaa !4
  %call10 = call i32 @FLA_Part_2x1(ptr noundef byval(%struct.FLA_Obj_view) align 8 %Y, ptr noundef %yT, ptr noundef %yB, i64 noundef 1, i32 noundef 200)
  %call11 = call i64 @FLA_Obj_vector_inc(ptr noundef byval(%struct.FLA_Obj_view) align 8 %yT)
  %conv12 = trunc i64 %call11 to i32
  store i32 %conv12, ptr %inc_y, align 4, !tbaa !4
  %0 = load i32, ptr %datatype, align 4, !tbaa !4
  switch i32 %0, label %sw.epilog [
    i32 100, label %sw.bb
    i32 101, label %sw.bb70
    i32 102, label %sw.bb144
    i32 103, label %sw.bb218
  ]

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_A) #4
  %base = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %1 = load ptr, ptr %base, align 8, !tbaa !8
  %datatype13 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %1, i32 0, i32 0
  %2 = load i32, ptr %datatype13, align 8, !tbaa !12
  %cmp = icmp eq i32 %2, 105
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb
  %base15 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %3 = load ptr, ptr %base15, align 8, !tbaa !8
  %buffer = getelementptr inbounds %struct.FLA_Obj_struct, ptr %3, i32 0, i32 12
  %4 = load ptr, ptr %buffer, align 8, !tbaa !14
  %add.ptr = getelementptr inbounds i8, ptr %4, i64 8
  br label %cond.end

cond.false:                                       ; preds = %sw.bb
  %base16 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %5 = load ptr, ptr %base16, align 8, !tbaa !8
  %buffer17 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %5, i32 0, i32 12
  %6 = load ptr, ptr %buffer17, align 8, !tbaa !14
  %offn = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 1
  %7 = load i64, ptr %offn, align 8, !tbaa !15
  %base18 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %8 = load ptr, ptr %base18, align 8, !tbaa !8
  %cs = getelementptr inbounds %struct.FLA_Obj_struct, ptr %8, i32 0, i32 5
  %9 = load i64, ptr %cs, align 8, !tbaa !16
  %mul = mul i64 %7, %9
  %add.ptr19 = getelementptr inbounds float, ptr %6, i64 %mul
  %offm = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 0
  %10 = load i64, ptr %offm, align 8, !tbaa !17
  %base20 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %11 = load ptr, ptr %base20, align 8, !tbaa !8
  %rs = getelementptr inbounds %struct.FLA_Obj_struct, ptr %11, i32 0, i32 4
  %12 = load i64, ptr %rs, align 8, !tbaa !18
  %mul21 = mul i64 %10, %12
  %add.ptr22 = getelementptr inbounds float, ptr %add.ptr19, i64 %mul21
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %add.ptr, %cond.true ], [ %add.ptr22, %cond.false ]
  store ptr %cond, ptr %buff_A, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_y) #4
  %base23 = getelementptr inbounds %struct.FLA_Obj_view, ptr %yT, i32 0, i32 6
  %13 = load ptr, ptr %base23, align 8, !tbaa !8
  %datatype24 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %13, i32 0, i32 0
  %14 = load i32, ptr %datatype24, align 8, !tbaa !12
  %cmp25 = icmp eq i32 %14, 105
  br i1 %cmp25, label %cond.true27, label %cond.false31

cond.true27:                                      ; preds = %cond.end
  %base28 = getelementptr inbounds %struct.FLA_Obj_view, ptr %yT, i32 0, i32 6
  %15 = load ptr, ptr %base28, align 8, !tbaa !8
  %buffer29 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %15, i32 0, i32 12
  %16 = load ptr, ptr %buffer29, align 8, !tbaa !14
  %add.ptr30 = getelementptr inbounds i8, ptr %16, i64 8
  br label %cond.end44

cond.false31:                                     ; preds = %cond.end
  %base32 = getelementptr inbounds %struct.FLA_Obj_view, ptr %yT, i32 0, i32 6
  %17 = load ptr, ptr %base32, align 8, !tbaa !8
  %buffer33 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %17, i32 0, i32 12
  %18 = load ptr, ptr %buffer33, align 8, !tbaa !14
  %offn34 = getelementptr inbounds %struct.FLA_Obj_view, ptr %yT, i32 0, i32 1
  %19 = load i64, ptr %offn34, align 8, !tbaa !15
  %base35 = getelementptr inbounds %struct.FLA_Obj_view, ptr %yT, i32 0, i32 6
  %20 = load ptr, ptr %base35, align 8, !tbaa !8
  %cs36 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %20, i32 0, i32 5
  %21 = load i64, ptr %cs36, align 8, !tbaa !16
  %mul37 = mul i64 %19, %21
  %add.ptr38 = getelementptr inbounds float, ptr %18, i64 %mul37
  %offm39 = getelementptr inbounds %struct.FLA_Obj_view, ptr %yT, i32 0, i32 0
  %22 = load i64, ptr %offm39, align 8, !tbaa !17
  %base40 = getelementptr inbounds %struct.FLA_Obj_view, ptr %yT, i32 0, i32 6
  %23 = load ptr, ptr %base40, align 8, !tbaa !8
  %rs41 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %23, i32 0, i32 4
  %24 = load i64, ptr %rs41, align 8, !tbaa !18
  %mul42 = mul i64 %22, %24
  %add.ptr43 = getelementptr inbounds float, ptr %add.ptr38, i64 %mul42
  br label %cond.end44

cond.end44:                                       ; preds = %cond.false31, %cond.true27
  %cond45 = phi ptr [ %add.ptr30, %cond.true27 ], [ %add.ptr43, %cond.false31 ]
  store ptr %cond45, ptr %buff_y, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_B) #4
  %base46 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 6
  %25 = load ptr, ptr %base46, align 8, !tbaa !8
  %datatype47 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %25, i32 0, i32 0
  %26 = load i32, ptr %datatype47, align 8, !tbaa !12
  %cmp48 = icmp eq i32 %26, 105
  br i1 %cmp48, label %cond.true50, label %cond.false54

cond.true50:                                      ; preds = %cond.end44
  %base51 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 6
  %27 = load ptr, ptr %base51, align 8, !tbaa !8
  %buffer52 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %27, i32 0, i32 12
  %28 = load ptr, ptr %buffer52, align 8, !tbaa !14
  %add.ptr53 = getelementptr inbounds i8, ptr %28, i64 8
  br label %cond.end67

cond.false54:                                     ; preds = %cond.end44
  %base55 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 6
  %29 = load ptr, ptr %base55, align 8, !tbaa !8
  %buffer56 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %29, i32 0, i32 12
  %30 = load ptr, ptr %buffer56, align 8, !tbaa !14
  %offn57 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 1
  %31 = load i64, ptr %offn57, align 8, !tbaa !15
  %base58 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 6
  %32 = load ptr, ptr %base58, align 8, !tbaa !8
  %cs59 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %32, i32 0, i32 5
  %33 = load i64, ptr %cs59, align 8, !tbaa !16
  %mul60 = mul i64 %31, %33
  %add.ptr61 = getelementptr inbounds float, ptr %30, i64 %mul60
  %offm62 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 0
  %34 = load i64, ptr %offm62, align 8, !tbaa !17
  %base63 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 6
  %35 = load ptr, ptr %base63, align 8, !tbaa !8
  %rs64 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %35, i32 0, i32 4
  %36 = load i64, ptr %rs64, align 8, !tbaa !18
  %mul65 = mul i64 %34, %36
  %add.ptr66 = getelementptr inbounds float, ptr %add.ptr61, i64 %mul65
  br label %cond.end67

cond.end67:                                       ; preds = %cond.false54, %cond.true50
  %cond68 = phi ptr [ %add.ptr53, %cond.true50 ], [ %add.ptr66, %cond.false54 ]
  store ptr %cond68, ptr %buff_B, align 8, !tbaa !19
  %37 = load i32, ptr %m_AB, align 4, !tbaa !4
  %38 = load ptr, ptr %buff_A, align 8, !tbaa !19
  %39 = load i32, ptr %rs_A, align 4, !tbaa !4
  %40 = load i32, ptr %cs_A, align 4, !tbaa !4
  %41 = load ptr, ptr %buff_y, align 8, !tbaa !19
  %42 = load i32, ptr %inc_y, align 4, !tbaa !4
  %43 = load ptr, ptr %buff_B, align 8, !tbaa !19
  %44 = load i32, ptr %rs_B, align 4, !tbaa !4
  %45 = load i32, ptr %cs_B, align 4, !tbaa !4
  %call69 = call i32 @FLA_Eig_gest_il_ops_var1(i32 noundef %37, ptr noundef %38, i32 noundef %39, i32 noundef %40, ptr noundef %41, i32 noundef %42, ptr noundef %43, i32 noundef %44, i32 noundef %45)
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_B) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_y) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_A) #4
  br label %sw.epilog

sw.bb70:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_A71) #4
  %base72 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %46 = load ptr, ptr %base72, align 8, !tbaa !8
  %datatype73 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %46, i32 0, i32 0
  %47 = load i32, ptr %datatype73, align 8, !tbaa !12
  %cmp74 = icmp eq i32 %47, 105
  br i1 %cmp74, label %cond.true76, label %cond.false80

cond.true76:                                      ; preds = %sw.bb70
  %base77 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %48 = load ptr, ptr %base77, align 8, !tbaa !8
  %buffer78 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %48, i32 0, i32 12
  %49 = load ptr, ptr %buffer78, align 8, !tbaa !14
  %add.ptr79 = getelementptr inbounds i8, ptr %49, i64 16
  br label %cond.end93

cond.false80:                                     ; preds = %sw.bb70
  %base81 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %50 = load ptr, ptr %base81, align 8, !tbaa !8
  %buffer82 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %50, i32 0, i32 12
  %51 = load ptr, ptr %buffer82, align 8, !tbaa !14
  %offn83 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 1
  %52 = load i64, ptr %offn83, align 8, !tbaa !15
  %base84 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %53 = load ptr, ptr %base84, align 8, !tbaa !8
  %cs85 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %53, i32 0, i32 5
  %54 = load i64, ptr %cs85, align 8, !tbaa !16
  %mul86 = mul i64 %52, %54
  %add.ptr87 = getelementptr inbounds double, ptr %51, i64 %mul86
  %offm88 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 0
  %55 = load i64, ptr %offm88, align 8, !tbaa !17
  %base89 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %56 = load ptr, ptr %base89, align 8, !tbaa !8
  %rs90 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %56, i32 0, i32 4
  %57 = load i64, ptr %rs90, align 8, !tbaa !18
  %mul91 = mul i64 %55, %57
  %add.ptr92 = getelementptr inbounds double, ptr %add.ptr87, i64 %mul91
  br label %cond.end93

cond.end93:                                       ; preds = %cond.false80, %cond.true76
  %cond94 = phi ptr [ %add.ptr79, %cond.true76 ], [ %add.ptr92, %cond.false80 ]
  store ptr %cond94, ptr %buff_A71, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_y95) #4
  %base96 = getelementptr inbounds %struct.FLA_Obj_view, ptr %yT, i32 0, i32 6
  %58 = load ptr, ptr %base96, align 8, !tbaa !8
  %datatype97 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %58, i32 0, i32 0
  %59 = load i32, ptr %datatype97, align 8, !tbaa !12
  %cmp98 = icmp eq i32 %59, 105
  br i1 %cmp98, label %cond.true100, label %cond.false104

cond.true100:                                     ; preds = %cond.end93
  %base101 = getelementptr inbounds %struct.FLA_Obj_view, ptr %yT, i32 0, i32 6
  %60 = load ptr, ptr %base101, align 8, !tbaa !8
  %buffer102 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %60, i32 0, i32 12
  %61 = load ptr, ptr %buffer102, align 8, !tbaa !14
  %add.ptr103 = getelementptr inbounds i8, ptr %61, i64 16
  br label %cond.end117

cond.false104:                                    ; preds = %cond.end93
  %base105 = getelementptr inbounds %struct.FLA_Obj_view, ptr %yT, i32 0, i32 6
  %62 = load ptr, ptr %base105, align 8, !tbaa !8
  %buffer106 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %62, i32 0, i32 12
  %63 = load ptr, ptr %buffer106, align 8, !tbaa !14
  %offn107 = getelementptr inbounds %struct.FLA_Obj_view, ptr %yT, i32 0, i32 1
  %64 = load i64, ptr %offn107, align 8, !tbaa !15
  %base108 = getelementptr inbounds %struct.FLA_Obj_view, ptr %yT, i32 0, i32 6
  %65 = load ptr, ptr %base108, align 8, !tbaa !8
  %cs109 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %65, i32 0, i32 5
  %66 = load i64, ptr %cs109, align 8, !tbaa !16
  %mul110 = mul i64 %64, %66
  %add.ptr111 = getelementptr inbounds double, ptr %63, i64 %mul110
  %offm112 = getelementptr inbounds %struct.FLA_Obj_view, ptr %yT, i32 0, i32 0
  %67 = load i64, ptr %offm112, align 8, !tbaa !17
  %base113 = getelementptr inbounds %struct.FLA_Obj_view, ptr %yT, i32 0, i32 6
  %68 = load ptr, ptr %base113, align 8, !tbaa !8
  %rs114 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %68, i32 0, i32 4
  %69 = load i64, ptr %rs114, align 8, !tbaa !18
  %mul115 = mul i64 %67, %69
  %add.ptr116 = getelementptr inbounds double, ptr %add.ptr111, i64 %mul115
  br label %cond.end117

cond.end117:                                      ; preds = %cond.false104, %cond.true100
  %cond118 = phi ptr [ %add.ptr103, %cond.true100 ], [ %add.ptr116, %cond.false104 ]
  store ptr %cond118, ptr %buff_y95, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_B119) #4
  %base120 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 6
  %70 = load ptr, ptr %base120, align 8, !tbaa !8
  %datatype121 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %70, i32 0, i32 0
  %71 = load i32, ptr %datatype121, align 8, !tbaa !12
  %cmp122 = icmp eq i32 %71, 105
  br i1 %cmp122, label %cond.true124, label %cond.false128

cond.true124:                                     ; preds = %cond.end117
  %base125 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 6
  %72 = load ptr, ptr %base125, align 8, !tbaa !8
  %buffer126 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %72, i32 0, i32 12
  %73 = load ptr, ptr %buffer126, align 8, !tbaa !14
  %add.ptr127 = getelementptr inbounds i8, ptr %73, i64 16
  br label %cond.end141

cond.false128:                                    ; preds = %cond.end117
  %base129 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 6
  %74 = load ptr, ptr %base129, align 8, !tbaa !8
  %buffer130 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %74, i32 0, i32 12
  %75 = load ptr, ptr %buffer130, align 8, !tbaa !14
  %offn131 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 1
  %76 = load i64, ptr %offn131, align 8, !tbaa !15
  %base132 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 6
  %77 = load ptr, ptr %base132, align 8, !tbaa !8
  %cs133 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %77, i32 0, i32 5
  %78 = load i64, ptr %cs133, align 8, !tbaa !16
  %mul134 = mul i64 %76, %78
  %add.ptr135 = getelementptr inbounds double, ptr %75, i64 %mul134
  %offm136 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 0
  %79 = load i64, ptr %offm136, align 8, !tbaa !17
  %base137 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 6
  %80 = load ptr, ptr %base137, align 8, !tbaa !8
  %rs138 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %80, i32 0, i32 4
  %81 = load i64, ptr %rs138, align 8, !tbaa !18
  %mul139 = mul i64 %79, %81
  %add.ptr140 = getelementptr inbounds double, ptr %add.ptr135, i64 %mul139
  br label %cond.end141

cond.end141:                                      ; preds = %cond.false128, %cond.true124
  %cond142 = phi ptr [ %add.ptr127, %cond.true124 ], [ %add.ptr140, %cond.false128 ]
  store ptr %cond142, ptr %buff_B119, align 8, !tbaa !19
  %82 = load i32, ptr %m_AB, align 4, !tbaa !4
  %83 = load ptr, ptr %buff_A71, align 8, !tbaa !19
  %84 = load i32, ptr %rs_A, align 4, !tbaa !4
  %85 = load i32, ptr %cs_A, align 4, !tbaa !4
  %86 = load ptr, ptr %buff_y95, align 8, !tbaa !19
  %87 = load i32, ptr %inc_y, align 4, !tbaa !4
  %88 = load ptr, ptr %buff_B119, align 8, !tbaa !19
  %89 = load i32, ptr %rs_B, align 4, !tbaa !4
  %90 = load i32, ptr %cs_B, align 4, !tbaa !4
  %call143 = call i32 @FLA_Eig_gest_il_opd_var1(i32 noundef %82, ptr noundef %83, i32 noundef %84, i32 noundef %85, ptr noundef %86, i32 noundef %87, ptr noundef %88, i32 noundef %89, i32 noundef %90)
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_B119) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_y95) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_A71) #4
  br label %sw.epilog

sw.bb144:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_A145) #4
  %base146 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %91 = load ptr, ptr %base146, align 8, !tbaa !8
  %datatype147 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %91, i32 0, i32 0
  %92 = load i32, ptr %datatype147, align 8, !tbaa !12
  %cmp148 = icmp eq i32 %92, 105
  br i1 %cmp148, label %cond.true150, label %cond.false154

cond.true150:                                     ; preds = %sw.bb144
  %base151 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %93 = load ptr, ptr %base151, align 8, !tbaa !8
  %buffer152 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %93, i32 0, i32 12
  %94 = load ptr, ptr %buffer152, align 8, !tbaa !14
  %add.ptr153 = getelementptr inbounds i8, ptr %94, i64 24
  br label %cond.end167

cond.false154:                                    ; preds = %sw.bb144
  %base155 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %95 = load ptr, ptr %base155, align 8, !tbaa !8
  %buffer156 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %95, i32 0, i32 12
  %96 = load ptr, ptr %buffer156, align 8, !tbaa !14
  %offn157 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 1
  %97 = load i64, ptr %offn157, align 8, !tbaa !15
  %base158 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %98 = load ptr, ptr %base158, align 8, !tbaa !8
  %cs159 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %98, i32 0, i32 5
  %99 = load i64, ptr %cs159, align 8, !tbaa !16
  %mul160 = mul i64 %97, %99
  %add.ptr161 = getelementptr inbounds %struct.scomplex, ptr %96, i64 %mul160
  %offm162 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 0
  %100 = load i64, ptr %offm162, align 8, !tbaa !17
  %base163 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %101 = load ptr, ptr %base163, align 8, !tbaa !8
  %rs164 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %101, i32 0, i32 4
  %102 = load i64, ptr %rs164, align 8, !tbaa !18
  %mul165 = mul i64 %100, %102
  %add.ptr166 = getelementptr inbounds %struct.scomplex, ptr %add.ptr161, i64 %mul165
  br label %cond.end167

cond.end167:                                      ; preds = %cond.false154, %cond.true150
  %cond168 = phi ptr [ %add.ptr153, %cond.true150 ], [ %add.ptr166, %cond.false154 ]
  store ptr %cond168, ptr %buff_A145, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_y169) #4
  %base170 = getelementptr inbounds %struct.FLA_Obj_view, ptr %yT, i32 0, i32 6
  %103 = load ptr, ptr %base170, align 8, !tbaa !8
  %datatype171 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %103, i32 0, i32 0
  %104 = load i32, ptr %datatype171, align 8, !tbaa !12
  %cmp172 = icmp eq i32 %104, 105
  br i1 %cmp172, label %cond.true174, label %cond.false178

cond.true174:                                     ; preds = %cond.end167
  %base175 = getelementptr inbounds %struct.FLA_Obj_view, ptr %yT, i32 0, i32 6
  %105 = load ptr, ptr %base175, align 8, !tbaa !8
  %buffer176 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %105, i32 0, i32 12
  %106 = load ptr, ptr %buffer176, align 8, !tbaa !14
  %add.ptr177 = getelementptr inbounds i8, ptr %106, i64 24
  br label %cond.end191

cond.false178:                                    ; preds = %cond.end167
  %base179 = getelementptr inbounds %struct.FLA_Obj_view, ptr %yT, i32 0, i32 6
  %107 = load ptr, ptr %base179, align 8, !tbaa !8
  %buffer180 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %107, i32 0, i32 12
  %108 = load ptr, ptr %buffer180, align 8, !tbaa !14
  %offn181 = getelementptr inbounds %struct.FLA_Obj_view, ptr %yT, i32 0, i32 1
  %109 = load i64, ptr %offn181, align 8, !tbaa !15
  %base182 = getelementptr inbounds %struct.FLA_Obj_view, ptr %yT, i32 0, i32 6
  %110 = load ptr, ptr %base182, align 8, !tbaa !8
  %cs183 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %110, i32 0, i32 5
  %111 = load i64, ptr %cs183, align 8, !tbaa !16
  %mul184 = mul i64 %109, %111
  %add.ptr185 = getelementptr inbounds %struct.scomplex, ptr %108, i64 %mul184
  %offm186 = getelementptr inbounds %struct.FLA_Obj_view, ptr %yT, i32 0, i32 0
  %112 = load i64, ptr %offm186, align 8, !tbaa !17
  %base187 = getelementptr inbounds %struct.FLA_Obj_view, ptr %yT, i32 0, i32 6
  %113 = load ptr, ptr %base187, align 8, !tbaa !8
  %rs188 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %113, i32 0, i32 4
  %114 = load i64, ptr %rs188, align 8, !tbaa !18
  %mul189 = mul i64 %112, %114
  %add.ptr190 = getelementptr inbounds %struct.scomplex, ptr %add.ptr185, i64 %mul189
  br label %cond.end191

cond.end191:                                      ; preds = %cond.false178, %cond.true174
  %cond192 = phi ptr [ %add.ptr177, %cond.true174 ], [ %add.ptr190, %cond.false178 ]
  store ptr %cond192, ptr %buff_y169, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_B193) #4
  %base194 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 6
  %115 = load ptr, ptr %base194, align 8, !tbaa !8
  %datatype195 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %115, i32 0, i32 0
  %116 = load i32, ptr %datatype195, align 8, !tbaa !12
  %cmp196 = icmp eq i32 %116, 105
  br i1 %cmp196, label %cond.true198, label %cond.false202

cond.true198:                                     ; preds = %cond.end191
  %base199 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 6
  %117 = load ptr, ptr %base199, align 8, !tbaa !8
  %buffer200 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %117, i32 0, i32 12
  %118 = load ptr, ptr %buffer200, align 8, !tbaa !14
  %add.ptr201 = getelementptr inbounds i8, ptr %118, i64 24
  br label %cond.end215

cond.false202:                                    ; preds = %cond.end191
  %base203 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 6
  %119 = load ptr, ptr %base203, align 8, !tbaa !8
  %buffer204 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %119, i32 0, i32 12
  %120 = load ptr, ptr %buffer204, align 8, !tbaa !14
  %offn205 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 1
  %121 = load i64, ptr %offn205, align 8, !tbaa !15
  %base206 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 6
  %122 = load ptr, ptr %base206, align 8, !tbaa !8
  %cs207 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %122, i32 0, i32 5
  %123 = load i64, ptr %cs207, align 8, !tbaa !16
  %mul208 = mul i64 %121, %123
  %add.ptr209 = getelementptr inbounds %struct.scomplex, ptr %120, i64 %mul208
  %offm210 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 0
  %124 = load i64, ptr %offm210, align 8, !tbaa !17
  %base211 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 6
  %125 = load ptr, ptr %base211, align 8, !tbaa !8
  %rs212 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %125, i32 0, i32 4
  %126 = load i64, ptr %rs212, align 8, !tbaa !18
  %mul213 = mul i64 %124, %126
  %add.ptr214 = getelementptr inbounds %struct.scomplex, ptr %add.ptr209, i64 %mul213
  br label %cond.end215

cond.end215:                                      ; preds = %cond.false202, %cond.true198
  %cond216 = phi ptr [ %add.ptr201, %cond.true198 ], [ %add.ptr214, %cond.false202 ]
  store ptr %cond216, ptr %buff_B193, align 8, !tbaa !19
  %127 = load i32, ptr %m_AB, align 4, !tbaa !4
  %128 = load ptr, ptr %buff_A145, align 8, !tbaa !19
  %129 = load i32, ptr %rs_A, align 4, !tbaa !4
  %130 = load i32, ptr %cs_A, align 4, !tbaa !4
  %131 = load ptr, ptr %buff_y169, align 8, !tbaa !19
  %132 = load i32, ptr %inc_y, align 4, !tbaa !4
  %133 = load ptr, ptr %buff_B193, align 8, !tbaa !19
  %134 = load i32, ptr %rs_B, align 4, !tbaa !4
  %135 = load i32, ptr %cs_B, align 4, !tbaa !4
  %call217 = call i32 @FLA_Eig_gest_il_opc_var1(i32 noundef %127, ptr noundef %128, i32 noundef %129, i32 noundef %130, ptr noundef %131, i32 noundef %132, ptr noundef %133, i32 noundef %134, i32 noundef %135)
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_B193) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_y169) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_A145) #4
  br label %sw.epilog

sw.bb218:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_A219) #4
  %base220 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %136 = load ptr, ptr %base220, align 8, !tbaa !8
  %datatype221 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %136, i32 0, i32 0
  %137 = load i32, ptr %datatype221, align 8, !tbaa !12
  %cmp222 = icmp eq i32 %137, 105
  br i1 %cmp222, label %cond.true224, label %cond.false228

cond.true224:                                     ; preds = %sw.bb218
  %base225 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %138 = load ptr, ptr %base225, align 8, !tbaa !8
  %buffer226 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %138, i32 0, i32 12
  %139 = load ptr, ptr %buffer226, align 8, !tbaa !14
  %add.ptr227 = getelementptr inbounds i8, ptr %139, i64 32
  br label %cond.end241

cond.false228:                                    ; preds = %sw.bb218
  %base229 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %140 = load ptr, ptr %base229, align 8, !tbaa !8
  %buffer230 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %140, i32 0, i32 12
  %141 = load ptr, ptr %buffer230, align 8, !tbaa !14
  %offn231 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 1
  %142 = load i64, ptr %offn231, align 8, !tbaa !15
  %base232 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %143 = load ptr, ptr %base232, align 8, !tbaa !8
  %cs233 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %143, i32 0, i32 5
  %144 = load i64, ptr %cs233, align 8, !tbaa !16
  %mul234 = mul i64 %142, %144
  %add.ptr235 = getelementptr inbounds %struct.dcomplex, ptr %141, i64 %mul234
  %offm236 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 0
  %145 = load i64, ptr %offm236, align 8, !tbaa !17
  %base237 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %146 = load ptr, ptr %base237, align 8, !tbaa !8
  %rs238 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %146, i32 0, i32 4
  %147 = load i64, ptr %rs238, align 8, !tbaa !18
  %mul239 = mul i64 %145, %147
  %add.ptr240 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr235, i64 %mul239
  br label %cond.end241

cond.end241:                                      ; preds = %cond.false228, %cond.true224
  %cond242 = phi ptr [ %add.ptr227, %cond.true224 ], [ %add.ptr240, %cond.false228 ]
  store ptr %cond242, ptr %buff_A219, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_y243) #4
  %base244 = getelementptr inbounds %struct.FLA_Obj_view, ptr %yT, i32 0, i32 6
  %148 = load ptr, ptr %base244, align 8, !tbaa !8
  %datatype245 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %148, i32 0, i32 0
  %149 = load i32, ptr %datatype245, align 8, !tbaa !12
  %cmp246 = icmp eq i32 %149, 105
  br i1 %cmp246, label %cond.true248, label %cond.false252

cond.true248:                                     ; preds = %cond.end241
  %base249 = getelementptr inbounds %struct.FLA_Obj_view, ptr %yT, i32 0, i32 6
  %150 = load ptr, ptr %base249, align 8, !tbaa !8
  %buffer250 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %150, i32 0, i32 12
  %151 = load ptr, ptr %buffer250, align 8, !tbaa !14
  %add.ptr251 = getelementptr inbounds i8, ptr %151, i64 32
  br label %cond.end265

cond.false252:                                    ; preds = %cond.end241
  %base253 = getelementptr inbounds %struct.FLA_Obj_view, ptr %yT, i32 0, i32 6
  %152 = load ptr, ptr %base253, align 8, !tbaa !8
  %buffer254 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %152, i32 0, i32 12
  %153 = load ptr, ptr %buffer254, align 8, !tbaa !14
  %offn255 = getelementptr inbounds %struct.FLA_Obj_view, ptr %yT, i32 0, i32 1
  %154 = load i64, ptr %offn255, align 8, !tbaa !15
  %base256 = getelementptr inbounds %struct.FLA_Obj_view, ptr %yT, i32 0, i32 6
  %155 = load ptr, ptr %base256, align 8, !tbaa !8
  %cs257 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %155, i32 0, i32 5
  %156 = load i64, ptr %cs257, align 8, !tbaa !16
  %mul258 = mul i64 %154, %156
  %add.ptr259 = getelementptr inbounds %struct.dcomplex, ptr %153, i64 %mul258
  %offm260 = getelementptr inbounds %struct.FLA_Obj_view, ptr %yT, i32 0, i32 0
  %157 = load i64, ptr %offm260, align 8, !tbaa !17
  %base261 = getelementptr inbounds %struct.FLA_Obj_view, ptr %yT, i32 0, i32 6
  %158 = load ptr, ptr %base261, align 8, !tbaa !8
  %rs262 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %158, i32 0, i32 4
  %159 = load i64, ptr %rs262, align 8, !tbaa !18
  %mul263 = mul i64 %157, %159
  %add.ptr264 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr259, i64 %mul263
  br label %cond.end265

cond.end265:                                      ; preds = %cond.false252, %cond.true248
  %cond266 = phi ptr [ %add.ptr251, %cond.true248 ], [ %add.ptr264, %cond.false252 ]
  store ptr %cond266, ptr %buff_y243, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_B267) #4
  %base268 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 6
  %160 = load ptr, ptr %base268, align 8, !tbaa !8
  %datatype269 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %160, i32 0, i32 0
  %161 = load i32, ptr %datatype269, align 8, !tbaa !12
  %cmp270 = icmp eq i32 %161, 105
  br i1 %cmp270, label %cond.true272, label %cond.false276

cond.true272:                                     ; preds = %cond.end265
  %base273 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 6
  %162 = load ptr, ptr %base273, align 8, !tbaa !8
  %buffer274 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %162, i32 0, i32 12
  %163 = load ptr, ptr %buffer274, align 8, !tbaa !14
  %add.ptr275 = getelementptr inbounds i8, ptr %163, i64 32
  br label %cond.end289

cond.false276:                                    ; preds = %cond.end265
  %base277 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 6
  %164 = load ptr, ptr %base277, align 8, !tbaa !8
  %buffer278 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %164, i32 0, i32 12
  %165 = load ptr, ptr %buffer278, align 8, !tbaa !14
  %offn279 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 1
  %166 = load i64, ptr %offn279, align 8, !tbaa !15
  %base280 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 6
  %167 = load ptr, ptr %base280, align 8, !tbaa !8
  %cs281 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %167, i32 0, i32 5
  %168 = load i64, ptr %cs281, align 8, !tbaa !16
  %mul282 = mul i64 %166, %168
  %add.ptr283 = getelementptr inbounds %struct.dcomplex, ptr %165, i64 %mul282
  %offm284 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 0
  %169 = load i64, ptr %offm284, align 8, !tbaa !17
  %base285 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 6
  %170 = load ptr, ptr %base285, align 8, !tbaa !8
  %rs286 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %170, i32 0, i32 4
  %171 = load i64, ptr %rs286, align 8, !tbaa !18
  %mul287 = mul i64 %169, %171
  %add.ptr288 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr283, i64 %mul287
  br label %cond.end289

cond.end289:                                      ; preds = %cond.false276, %cond.true272
  %cond290 = phi ptr [ %add.ptr275, %cond.true272 ], [ %add.ptr288, %cond.false276 ]
  store ptr %cond290, ptr %buff_B267, align 8, !tbaa !19
  %172 = load i32, ptr %m_AB, align 4, !tbaa !4
  %173 = load ptr, ptr %buff_A219, align 8, !tbaa !19
  %174 = load i32, ptr %rs_A, align 4, !tbaa !4
  %175 = load i32, ptr %cs_A, align 4, !tbaa !4
  %176 = load ptr, ptr %buff_y243, align 8, !tbaa !19
  %177 = load i32, ptr %inc_y, align 4, !tbaa !4
  %178 = load ptr, ptr %buff_B267, align 8, !tbaa !19
  %179 = load i32, ptr %rs_B, align 4, !tbaa !4
  %180 = load i32, ptr %cs_B, align 4, !tbaa !4
  %call291 = call i32 @FLA_Eig_gest_il_opz_var1(i32 noundef %172, ptr noundef %173, i32 noundef %174, i32 noundef %175, ptr noundef %176, i32 noundef %177, ptr noundef %178, i32 noundef %179, i32 noundef %180)
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_B267) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_y243) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_A219) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %cond.end289, %cond.end215, %cond.end141, %cond.end67
  call void @llvm.lifetime.end.p0(i64 56, ptr %yB) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr %yT) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %inc_y) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %cs_B) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %rs_B) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %cs_A) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %rs_A) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %m_AB) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %datatype) #4
  ret i32 -1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @FLA_Obj_datatype(ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i64 @FLA_Obj_row_stride(ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i64 @FLA_Obj_col_stride(ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i32 @FLA_Part_2x1(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef, ptr noundef, i64 noundef, i32 noundef) #2

declare i64 @FLA_Obj_vector_inc(ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

; Function Attrs: nounwind uwtable
define i32 @FLA_Eig_gest_il_ops_var1(i32 noundef %m_AB, ptr noundef %buff_A, i32 noundef %rs_A, i32 noundef %cs_A, ptr noundef %buff_y, i32 noundef %inc_y, ptr noundef %buff_B, i32 noundef %rs_B, i32 noundef %cs_B) #0 {
entry:
  %m_AB.addr = alloca i32, align 4
  %buff_A.addr = alloca ptr, align 8
  %rs_A.addr = alloca i32, align 4
  %cs_A.addr = alloca i32, align 4
  %buff_y.addr = alloca ptr, align 8
  %inc_y.addr = alloca i32, align 4
  %buff_B.addr = alloca ptr, align 8
  %rs_B.addr = alloca i32, align 4
  %cs_B.addr = alloca i32, align 4
  %buff_1 = alloca ptr, align 8
  %buff_0 = alloca ptr, align 8
  %buff_m1 = alloca ptr, align 8
  %buff_m1h = alloca ptr, align 8
  %i = alloca i32, align 4
  %A00 = alloca ptr, align 8
  %a10t = alloca ptr, align 8
  %alpha11 = alloca ptr, align 8
  %y10t = alloca ptr, align 8
  %B00 = alloca ptr, align 8
  %b10t = alloca ptr, align 8
  %beta11 = alloca ptr, align 8
  %m_behind = alloca i32, align 4
  store i32 %m_AB, ptr %m_AB.addr, align 4, !tbaa !4
  store ptr %buff_A, ptr %buff_A.addr, align 8, !tbaa !19
  store i32 %rs_A, ptr %rs_A.addr, align 4, !tbaa !4
  store i32 %cs_A, ptr %cs_A.addr, align 4, !tbaa !4
  store ptr %buff_y, ptr %buff_y.addr, align 8, !tbaa !19
  store i32 %inc_y, ptr %inc_y.addr, align 4, !tbaa !4
  store ptr %buff_B, ptr %buff_B.addr, align 8, !tbaa !19
  store i32 %rs_B, ptr %rs_B.addr, align 4, !tbaa !4
  store i32 %cs_B, ptr %cs_B.addr, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_1) #4
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_0) #4
  %12 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8, !tbaa !8
  %datatype5 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %12, i32 0, i32 0
  %13 = load i32, ptr %datatype5, align 8, !tbaa !12
  %cmp6 = icmp eq i32 %13, 105
  br i1 %cmp6, label %cond.true7, label %cond.false10

cond.true7:                                       ; preds = %cond.end
  %14 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8, !tbaa !8
  %buffer8 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %14, i32 0, i32 12
  %15 = load ptr, ptr %buffer8, align 8, !tbaa !14
  %add.ptr9 = getelementptr inbounds i8, ptr %15, i64 8
  br label %cond.end18

cond.false10:                                     ; preds = %cond.end
  %16 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8, !tbaa !8
  %buffer11 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %16, i32 0, i32 12
  %17 = load ptr, ptr %buffer11, align 8, !tbaa !14
  %18 = load i64, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 1), align 8, !tbaa !15
  %19 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8, !tbaa !8
  %cs12 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %19, i32 0, i32 5
  %20 = load i64, ptr %cs12, align 8, !tbaa !16
  %mul13 = mul i64 %18, %20
  %add.ptr14 = getelementptr inbounds float, ptr %17, i64 %mul13
  %21 = load i64, ptr @FLA_ZERO, align 8, !tbaa !17
  %22 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8, !tbaa !8
  %rs15 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %22, i32 0, i32 4
  %23 = load i64, ptr %rs15, align 8, !tbaa !18
  %mul16 = mul i64 %21, %23
  %add.ptr17 = getelementptr inbounds float, ptr %add.ptr14, i64 %mul16
  br label %cond.end18

cond.end18:                                       ; preds = %cond.false10, %cond.true7
  %cond19 = phi ptr [ %add.ptr9, %cond.true7 ], [ %add.ptr17, %cond.false10 ]
  store ptr %cond19, ptr %buff_0, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_m1) #4
  %24 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8, !tbaa !8
  %datatype20 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %24, i32 0, i32 0
  %25 = load i32, ptr %datatype20, align 8, !tbaa !12
  %cmp21 = icmp eq i32 %25, 105
  br i1 %cmp21, label %cond.true22, label %cond.false25

cond.true22:                                      ; preds = %cond.end18
  %26 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8, !tbaa !8
  %buffer23 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %26, i32 0, i32 12
  %27 = load ptr, ptr %buffer23, align 8, !tbaa !14
  %add.ptr24 = getelementptr inbounds i8, ptr %27, i64 8
  br label %cond.end33

cond.false25:                                     ; preds = %cond.end18
  %28 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8, !tbaa !8
  %buffer26 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %28, i32 0, i32 12
  %29 = load ptr, ptr %buffer26, align 8, !tbaa !14
  %30 = load i64, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 1), align 8, !tbaa !15
  %31 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8, !tbaa !8
  %cs27 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %31, i32 0, i32 5
  %32 = load i64, ptr %cs27, align 8, !tbaa !16
  %mul28 = mul i64 %30, %32
  %add.ptr29 = getelementptr inbounds float, ptr %29, i64 %mul28
  %33 = load i64, ptr @FLA_MINUS_ONE, align 8, !tbaa !17
  %34 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8, !tbaa !8
  %rs30 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %34, i32 0, i32 4
  %35 = load i64, ptr %rs30, align 8, !tbaa !18
  %mul31 = mul i64 %33, %35
  %add.ptr32 = getelementptr inbounds float, ptr %add.ptr29, i64 %mul31
  br label %cond.end33

cond.end33:                                       ; preds = %cond.false25, %cond.true22
  %cond34 = phi ptr [ %add.ptr24, %cond.true22 ], [ %add.ptr32, %cond.false25 ]
  store ptr %cond34, ptr %buff_m1, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_m1h) #4
  %36 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE_HALF, i32 0, i32 6), align 8, !tbaa !8
  %datatype35 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %36, i32 0, i32 0
  %37 = load i32, ptr %datatype35, align 8, !tbaa !12
  %cmp36 = icmp eq i32 %37, 105
  br i1 %cmp36, label %cond.true37, label %cond.false40

cond.true37:                                      ; preds = %cond.end33
  %38 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE_HALF, i32 0, i32 6), align 8, !tbaa !8
  %buffer38 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %38, i32 0, i32 12
  %39 = load ptr, ptr %buffer38, align 8, !tbaa !14
  %add.ptr39 = getelementptr inbounds i8, ptr %39, i64 8
  br label %cond.end48

cond.false40:                                     ; preds = %cond.end33
  %40 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE_HALF, i32 0, i32 6), align 8, !tbaa !8
  %buffer41 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %40, i32 0, i32 12
  %41 = load ptr, ptr %buffer41, align 8, !tbaa !14
  %42 = load i64, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE_HALF, i32 0, i32 1), align 8, !tbaa !15
  %43 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE_HALF, i32 0, i32 6), align 8, !tbaa !8
  %cs42 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %43, i32 0, i32 5
  %44 = load i64, ptr %cs42, align 8, !tbaa !16
  %mul43 = mul i64 %42, %44
  %add.ptr44 = getelementptr inbounds float, ptr %41, i64 %mul43
  %45 = load i64, ptr @FLA_MINUS_ONE_HALF, align 8, !tbaa !17
  %46 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE_HALF, i32 0, i32 6), align 8, !tbaa !8
  %rs45 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %46, i32 0, i32 4
  %47 = load i64, ptr %rs45, align 8, !tbaa !18
  %mul46 = mul i64 %45, %47
  %add.ptr47 = getelementptr inbounds float, ptr %add.ptr44, i64 %mul46
  br label %cond.end48

cond.end48:                                       ; preds = %cond.false40, %cond.true37
  %cond49 = phi ptr [ %add.ptr39, %cond.true37 ], [ %add.ptr47, %cond.false40 ]
  store ptr %cond49, ptr %buff_m1h, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  store i32 0, ptr %i, align 4, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end48
  %48 = load i32, ptr %i, align 4, !tbaa !4
  %49 = load i32, ptr %m_AB.addr, align 4, !tbaa !4
  %cmp50 = icmp slt i32 %48, %49
  br i1 %cmp50, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %A00) #4
  %50 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %51 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul51 = mul nsw i32 0, %51
  %idx.ext = sext i32 %mul51 to i64
  %add.ptr52 = getelementptr inbounds float, ptr %50, i64 %idx.ext
  %52 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul53 = mul nsw i32 0, %52
  %idx.ext54 = sext i32 %mul53 to i64
  %add.ptr55 = getelementptr inbounds float, ptr %add.ptr52, i64 %idx.ext54
  store ptr %add.ptr55, ptr %A00, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %a10t) #4
  %53 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %54 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul56 = mul nsw i32 0, %54
  %idx.ext57 = sext i32 %mul56 to i64
  %add.ptr58 = getelementptr inbounds float, ptr %53, i64 %idx.ext57
  %55 = load i32, ptr %i, align 4, !tbaa !4
  %56 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul59 = mul nsw i32 %55, %56
  %idx.ext60 = sext i32 %mul59 to i64
  %add.ptr61 = getelementptr inbounds float, ptr %add.ptr58, i64 %idx.ext60
  store ptr %add.ptr61, ptr %a10t, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %alpha11) #4
  %57 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %58 = load i32, ptr %i, align 4, !tbaa !4
  %59 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul62 = mul nsw i32 %58, %59
  %idx.ext63 = sext i32 %mul62 to i64
  %add.ptr64 = getelementptr inbounds float, ptr %57, i64 %idx.ext63
  %60 = load i32, ptr %i, align 4, !tbaa !4
  %61 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul65 = mul nsw i32 %60, %61
  %idx.ext66 = sext i32 %mul65 to i64
  %add.ptr67 = getelementptr inbounds float, ptr %add.ptr64, i64 %idx.ext66
  store ptr %add.ptr67, ptr %alpha11, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %y10t) #4
  %62 = load ptr, ptr %buff_y.addr, align 8, !tbaa !19
  %63 = load i32, ptr %inc_y.addr, align 4, !tbaa !4
  %mul68 = mul nsw i32 0, %63
  %idx.ext69 = sext i32 %mul68 to i64
  %add.ptr70 = getelementptr inbounds float, ptr %62, i64 %idx.ext69
  store ptr %add.ptr70, ptr %y10t, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %B00) #4
  %64 = load ptr, ptr %buff_B.addr, align 8, !tbaa !19
  %65 = load i32, ptr %cs_B.addr, align 4, !tbaa !4
  %mul71 = mul nsw i32 0, %65
  %idx.ext72 = sext i32 %mul71 to i64
  %add.ptr73 = getelementptr inbounds float, ptr %64, i64 %idx.ext72
  %66 = load i32, ptr %rs_B.addr, align 4, !tbaa !4
  %mul74 = mul nsw i32 0, %66
  %idx.ext75 = sext i32 %mul74 to i64
  %add.ptr76 = getelementptr inbounds float, ptr %add.ptr73, i64 %idx.ext75
  store ptr %add.ptr76, ptr %B00, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %b10t) #4
  %67 = load ptr, ptr %buff_B.addr, align 8, !tbaa !19
  %68 = load i32, ptr %cs_B.addr, align 4, !tbaa !4
  %mul77 = mul nsw i32 0, %68
  %idx.ext78 = sext i32 %mul77 to i64
  %add.ptr79 = getelementptr inbounds float, ptr %67, i64 %idx.ext78
  %69 = load i32, ptr %i, align 4, !tbaa !4
  %70 = load i32, ptr %rs_B.addr, align 4, !tbaa !4
  %mul80 = mul nsw i32 %69, %70
  %idx.ext81 = sext i32 %mul80 to i64
  %add.ptr82 = getelementptr inbounds float, ptr %add.ptr79, i64 %idx.ext81
  store ptr %add.ptr82, ptr %b10t, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %beta11) #4
  %71 = load ptr, ptr %buff_B.addr, align 8, !tbaa !19
  %72 = load i32, ptr %i, align 4, !tbaa !4
  %73 = load i32, ptr %cs_B.addr, align 4, !tbaa !4
  %mul83 = mul nsw i32 %72, %73
  %idx.ext84 = sext i32 %mul83 to i64
  %add.ptr85 = getelementptr inbounds float, ptr %71, i64 %idx.ext84
  %74 = load i32, ptr %i, align 4, !tbaa !4
  %75 = load i32, ptr %rs_B.addr, align 4, !tbaa !4
  %mul86 = mul nsw i32 %74, %75
  %idx.ext87 = sext i32 %mul86 to i64
  %add.ptr88 = getelementptr inbounds float, ptr %add.ptr85, i64 %idx.ext87
  store ptr %add.ptr88, ptr %beta11, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 4, ptr %m_behind) #4
  %76 = load i32, ptr %i, align 4, !tbaa !4
  store i32 %76, ptr %m_behind, align 4, !tbaa !4
  %77 = load i32, ptr %m_behind, align 4, !tbaa !4
  %78 = load ptr, ptr %buff_1, align 8, !tbaa !19
  %79 = load ptr, ptr %A00, align 8, !tbaa !19
  %80 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %81 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %82 = load ptr, ptr %b10t, align 8, !tbaa !19
  %83 = load i32, ptr %cs_B.addr, align 4, !tbaa !4
  %84 = load ptr, ptr %buff_0, align 8, !tbaa !19
  %85 = load ptr, ptr %y10t, align 8, !tbaa !19
  %86 = load i32, ptr %inc_y.addr, align 4, !tbaa !4
  call void @bl1_shemv(i32 noundef 200, i32 noundef 501, i32 noundef %77, ptr noundef %78, ptr noundef %79, i32 noundef %80, i32 noundef %81, ptr noundef %82, i32 noundef %83, ptr noundef %84, ptr noundef %85, i32 noundef %86)
  %87 = load i32, ptr %m_behind, align 4, !tbaa !4
  %88 = load ptr, ptr %B00, align 8, !tbaa !19
  %89 = load i32, ptr %rs_B.addr, align 4, !tbaa !4
  %90 = load i32, ptr %cs_B.addr, align 4, !tbaa !4
  %91 = load ptr, ptr %a10t, align 8, !tbaa !19
  %92 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  call void @bl1_strsv(i32 noundef 200, i32 noundef 102, i32 noundef 400, i32 noundef %87, ptr noundef %88, i32 noundef %89, i32 noundef %90, ptr noundef %91, i32 noundef %92)
  %93 = load i32, ptr %m_behind, align 4, !tbaa !4
  %94 = load ptr, ptr %buff_m1h, align 8, !tbaa !19
  %95 = load ptr, ptr %y10t, align 8, !tbaa !19
  %96 = load i32, ptr %inc_y.addr, align 4, !tbaa !4
  %97 = load ptr, ptr %a10t, align 8, !tbaa !19
  %98 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  call void @bl1_saxpyv(i32 noundef 500, i32 noundef %93, ptr noundef %94, ptr noundef %95, i32 noundef %96, ptr noundef %97, i32 noundef %98)
  %99 = load i32, ptr %m_behind, align 4, !tbaa !4
  %100 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %101 = load ptr, ptr %a10t, align 8, !tbaa !19
  %102 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %103 = load ptr, ptr %b10t, align 8, !tbaa !19
  %104 = load i32, ptr %cs_B.addr, align 4, !tbaa !4
  %105 = load ptr, ptr %buff_1, align 8, !tbaa !19
  %106 = load ptr, ptr %alpha11, align 8, !tbaa !19
  call void @bl1_sdot2s(i32 noundef 501, i32 noundef %99, ptr noundef %100, ptr noundef %101, i32 noundef %102, ptr noundef %103, i32 noundef %104, ptr noundef %105, ptr noundef %106)
  %107 = load ptr, ptr %alpha11, align 8, !tbaa !19
  %108 = load float, ptr %107, align 4, !tbaa !20
  %109 = load ptr, ptr %beta11, align 8, !tbaa !19
  %110 = load float, ptr %109, align 4, !tbaa !20
  %div = fdiv float %108, %110
  %111 = load ptr, ptr %alpha11, align 8, !tbaa !19
  store float %div, ptr %111, align 4, !tbaa !20
  %112 = load ptr, ptr %alpha11, align 8, !tbaa !19
  %113 = load float, ptr %112, align 4, !tbaa !20
  %114 = load ptr, ptr %beta11, align 8, !tbaa !19
  %115 = load float, ptr %114, align 4, !tbaa !20
  %div89 = fdiv float %113, %115
  %116 = load ptr, ptr %alpha11, align 8, !tbaa !19
  store float %div89, ptr %116, align 4, !tbaa !20
  %117 = load i32, ptr %m_behind, align 4, !tbaa !4
  %118 = load ptr, ptr %buff_m1h, align 8, !tbaa !19
  %119 = load ptr, ptr %y10t, align 8, !tbaa !19
  %120 = load i32, ptr %inc_y.addr, align 4, !tbaa !4
  %121 = load ptr, ptr %a10t, align 8, !tbaa !19
  %122 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  call void @bl1_saxpyv(i32 noundef 500, i32 noundef %117, ptr noundef %118, ptr noundef %119, i32 noundef %120, ptr noundef %121, i32 noundef %122)
  %123 = load i32, ptr %m_behind, align 4, !tbaa !4
  %124 = load ptr, ptr %beta11, align 8, !tbaa !19
  %125 = load ptr, ptr %a10t, align 8, !tbaa !19
  %126 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  call void @bl1_sinvscalv(i32 noundef 500, i32 noundef %123, ptr noundef %124, ptr noundef %125, i32 noundef %126)
  call void @llvm.lifetime.end.p0(i64 4, ptr %m_behind) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %beta11) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %b10t) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %B00) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %y10t) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %alpha11) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %a10t) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %A00) #4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %127 = load i32, ptr %i, align 4, !tbaa !4
  %inc = add nsw i32 %127, 1
  store i32 %inc, ptr %i, align 4, !tbaa !4
  br label %for.cond, !llvm.loop !22

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_m1h) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_m1) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_0) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_1) #4
  ret i32 -1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @FLA_Eig_gest_il_opd_var1(i32 noundef %m_AB, ptr noundef %buff_A, i32 noundef %rs_A, i32 noundef %cs_A, ptr noundef %buff_y, i32 noundef %inc_y, ptr noundef %buff_B, i32 noundef %rs_B, i32 noundef %cs_B) #0 {
entry:
  %m_AB.addr = alloca i32, align 4
  %buff_A.addr = alloca ptr, align 8
  %rs_A.addr = alloca i32, align 4
  %cs_A.addr = alloca i32, align 4
  %buff_y.addr = alloca ptr, align 8
  %inc_y.addr = alloca i32, align 4
  %buff_B.addr = alloca ptr, align 8
  %rs_B.addr = alloca i32, align 4
  %cs_B.addr = alloca i32, align 4
  %buff_1 = alloca ptr, align 8
  %buff_0 = alloca ptr, align 8
  %buff_m1 = alloca ptr, align 8
  %buff_m1h = alloca ptr, align 8
  %i = alloca i32, align 4
  %A00 = alloca ptr, align 8
  %a10t = alloca ptr, align 8
  %alpha11 = alloca ptr, align 8
  %y10t = alloca ptr, align 8
  %B00 = alloca ptr, align 8
  %b10t = alloca ptr, align 8
  %beta11 = alloca ptr, align 8
  %m_behind = alloca i32, align 4
  store i32 %m_AB, ptr %m_AB.addr, align 4, !tbaa !4
  store ptr %buff_A, ptr %buff_A.addr, align 8, !tbaa !19
  store i32 %rs_A, ptr %rs_A.addr, align 4, !tbaa !4
  store i32 %cs_A, ptr %cs_A.addr, align 4, !tbaa !4
  store ptr %buff_y, ptr %buff_y.addr, align 8, !tbaa !19
  store i32 %inc_y, ptr %inc_y.addr, align 4, !tbaa !4
  store ptr %buff_B, ptr %buff_B.addr, align 8, !tbaa !19
  store i32 %rs_B, ptr %rs_B.addr, align 4, !tbaa !4
  store i32 %cs_B, ptr %cs_B.addr, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_1) #4
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_0) #4
  %12 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8, !tbaa !8
  %datatype5 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %12, i32 0, i32 0
  %13 = load i32, ptr %datatype5, align 8, !tbaa !12
  %cmp6 = icmp eq i32 %13, 105
  br i1 %cmp6, label %cond.true7, label %cond.false10

cond.true7:                                       ; preds = %cond.end
  %14 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8, !tbaa !8
  %buffer8 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %14, i32 0, i32 12
  %15 = load ptr, ptr %buffer8, align 8, !tbaa !14
  %add.ptr9 = getelementptr inbounds i8, ptr %15, i64 16
  br label %cond.end18

cond.false10:                                     ; preds = %cond.end
  %16 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8, !tbaa !8
  %buffer11 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %16, i32 0, i32 12
  %17 = load ptr, ptr %buffer11, align 8, !tbaa !14
  %18 = load i64, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 1), align 8, !tbaa !15
  %19 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8, !tbaa !8
  %cs12 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %19, i32 0, i32 5
  %20 = load i64, ptr %cs12, align 8, !tbaa !16
  %mul13 = mul i64 %18, %20
  %add.ptr14 = getelementptr inbounds double, ptr %17, i64 %mul13
  %21 = load i64, ptr @FLA_ZERO, align 8, !tbaa !17
  %22 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8, !tbaa !8
  %rs15 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %22, i32 0, i32 4
  %23 = load i64, ptr %rs15, align 8, !tbaa !18
  %mul16 = mul i64 %21, %23
  %add.ptr17 = getelementptr inbounds double, ptr %add.ptr14, i64 %mul16
  br label %cond.end18

cond.end18:                                       ; preds = %cond.false10, %cond.true7
  %cond19 = phi ptr [ %add.ptr9, %cond.true7 ], [ %add.ptr17, %cond.false10 ]
  store ptr %cond19, ptr %buff_0, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_m1) #4
  %24 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8, !tbaa !8
  %datatype20 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %24, i32 0, i32 0
  %25 = load i32, ptr %datatype20, align 8, !tbaa !12
  %cmp21 = icmp eq i32 %25, 105
  br i1 %cmp21, label %cond.true22, label %cond.false25

cond.true22:                                      ; preds = %cond.end18
  %26 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8, !tbaa !8
  %buffer23 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %26, i32 0, i32 12
  %27 = load ptr, ptr %buffer23, align 8, !tbaa !14
  %add.ptr24 = getelementptr inbounds i8, ptr %27, i64 16
  br label %cond.end33

cond.false25:                                     ; preds = %cond.end18
  %28 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8, !tbaa !8
  %buffer26 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %28, i32 0, i32 12
  %29 = load ptr, ptr %buffer26, align 8, !tbaa !14
  %30 = load i64, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 1), align 8, !tbaa !15
  %31 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8, !tbaa !8
  %cs27 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %31, i32 0, i32 5
  %32 = load i64, ptr %cs27, align 8, !tbaa !16
  %mul28 = mul i64 %30, %32
  %add.ptr29 = getelementptr inbounds double, ptr %29, i64 %mul28
  %33 = load i64, ptr @FLA_MINUS_ONE, align 8, !tbaa !17
  %34 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8, !tbaa !8
  %rs30 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %34, i32 0, i32 4
  %35 = load i64, ptr %rs30, align 8, !tbaa !18
  %mul31 = mul i64 %33, %35
  %add.ptr32 = getelementptr inbounds double, ptr %add.ptr29, i64 %mul31
  br label %cond.end33

cond.end33:                                       ; preds = %cond.false25, %cond.true22
  %cond34 = phi ptr [ %add.ptr24, %cond.true22 ], [ %add.ptr32, %cond.false25 ]
  store ptr %cond34, ptr %buff_m1, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_m1h) #4
  %36 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE_HALF, i32 0, i32 6), align 8, !tbaa !8
  %datatype35 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %36, i32 0, i32 0
  %37 = load i32, ptr %datatype35, align 8, !tbaa !12
  %cmp36 = icmp eq i32 %37, 105
  br i1 %cmp36, label %cond.true37, label %cond.false40

cond.true37:                                      ; preds = %cond.end33
  %38 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE_HALF, i32 0, i32 6), align 8, !tbaa !8
  %buffer38 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %38, i32 0, i32 12
  %39 = load ptr, ptr %buffer38, align 8, !tbaa !14
  %add.ptr39 = getelementptr inbounds i8, ptr %39, i64 16
  br label %cond.end48

cond.false40:                                     ; preds = %cond.end33
  %40 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE_HALF, i32 0, i32 6), align 8, !tbaa !8
  %buffer41 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %40, i32 0, i32 12
  %41 = load ptr, ptr %buffer41, align 8, !tbaa !14
  %42 = load i64, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE_HALF, i32 0, i32 1), align 8, !tbaa !15
  %43 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE_HALF, i32 0, i32 6), align 8, !tbaa !8
  %cs42 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %43, i32 0, i32 5
  %44 = load i64, ptr %cs42, align 8, !tbaa !16
  %mul43 = mul i64 %42, %44
  %add.ptr44 = getelementptr inbounds double, ptr %41, i64 %mul43
  %45 = load i64, ptr @FLA_MINUS_ONE_HALF, align 8, !tbaa !17
  %46 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE_HALF, i32 0, i32 6), align 8, !tbaa !8
  %rs45 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %46, i32 0, i32 4
  %47 = load i64, ptr %rs45, align 8, !tbaa !18
  %mul46 = mul i64 %45, %47
  %add.ptr47 = getelementptr inbounds double, ptr %add.ptr44, i64 %mul46
  br label %cond.end48

cond.end48:                                       ; preds = %cond.false40, %cond.true37
  %cond49 = phi ptr [ %add.ptr39, %cond.true37 ], [ %add.ptr47, %cond.false40 ]
  store ptr %cond49, ptr %buff_m1h, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  store i32 0, ptr %i, align 4, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end48
  %48 = load i32, ptr %i, align 4, !tbaa !4
  %49 = load i32, ptr %m_AB.addr, align 4, !tbaa !4
  %cmp50 = icmp slt i32 %48, %49
  br i1 %cmp50, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %A00) #4
  %50 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %51 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul51 = mul nsw i32 0, %51
  %idx.ext = sext i32 %mul51 to i64
  %add.ptr52 = getelementptr inbounds double, ptr %50, i64 %idx.ext
  %52 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul53 = mul nsw i32 0, %52
  %idx.ext54 = sext i32 %mul53 to i64
  %add.ptr55 = getelementptr inbounds double, ptr %add.ptr52, i64 %idx.ext54
  store ptr %add.ptr55, ptr %A00, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %a10t) #4
  %53 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %54 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul56 = mul nsw i32 0, %54
  %idx.ext57 = sext i32 %mul56 to i64
  %add.ptr58 = getelementptr inbounds double, ptr %53, i64 %idx.ext57
  %55 = load i32, ptr %i, align 4, !tbaa !4
  %56 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul59 = mul nsw i32 %55, %56
  %idx.ext60 = sext i32 %mul59 to i64
  %add.ptr61 = getelementptr inbounds double, ptr %add.ptr58, i64 %idx.ext60
  store ptr %add.ptr61, ptr %a10t, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %alpha11) #4
  %57 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %58 = load i32, ptr %i, align 4, !tbaa !4
  %59 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul62 = mul nsw i32 %58, %59
  %idx.ext63 = sext i32 %mul62 to i64
  %add.ptr64 = getelementptr inbounds double, ptr %57, i64 %idx.ext63
  %60 = load i32, ptr %i, align 4, !tbaa !4
  %61 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul65 = mul nsw i32 %60, %61
  %idx.ext66 = sext i32 %mul65 to i64
  %add.ptr67 = getelementptr inbounds double, ptr %add.ptr64, i64 %idx.ext66
  store ptr %add.ptr67, ptr %alpha11, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %y10t) #4
  %62 = load ptr, ptr %buff_y.addr, align 8, !tbaa !19
  %63 = load i32, ptr %inc_y.addr, align 4, !tbaa !4
  %mul68 = mul nsw i32 0, %63
  %idx.ext69 = sext i32 %mul68 to i64
  %add.ptr70 = getelementptr inbounds double, ptr %62, i64 %idx.ext69
  store ptr %add.ptr70, ptr %y10t, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %B00) #4
  %64 = load ptr, ptr %buff_B.addr, align 8, !tbaa !19
  %65 = load i32, ptr %cs_B.addr, align 4, !tbaa !4
  %mul71 = mul nsw i32 0, %65
  %idx.ext72 = sext i32 %mul71 to i64
  %add.ptr73 = getelementptr inbounds double, ptr %64, i64 %idx.ext72
  %66 = load i32, ptr %rs_B.addr, align 4, !tbaa !4
  %mul74 = mul nsw i32 0, %66
  %idx.ext75 = sext i32 %mul74 to i64
  %add.ptr76 = getelementptr inbounds double, ptr %add.ptr73, i64 %idx.ext75
  store ptr %add.ptr76, ptr %B00, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %b10t) #4
  %67 = load ptr, ptr %buff_B.addr, align 8, !tbaa !19
  %68 = load i32, ptr %cs_B.addr, align 4, !tbaa !4
  %mul77 = mul nsw i32 0, %68
  %idx.ext78 = sext i32 %mul77 to i64
  %add.ptr79 = getelementptr inbounds double, ptr %67, i64 %idx.ext78
  %69 = load i32, ptr %i, align 4, !tbaa !4
  %70 = load i32, ptr %rs_B.addr, align 4, !tbaa !4
  %mul80 = mul nsw i32 %69, %70
  %idx.ext81 = sext i32 %mul80 to i64
  %add.ptr82 = getelementptr inbounds double, ptr %add.ptr79, i64 %idx.ext81
  store ptr %add.ptr82, ptr %b10t, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %beta11) #4
  %71 = load ptr, ptr %buff_B.addr, align 8, !tbaa !19
  %72 = load i32, ptr %i, align 4, !tbaa !4
  %73 = load i32, ptr %cs_B.addr, align 4, !tbaa !4
  %mul83 = mul nsw i32 %72, %73
  %idx.ext84 = sext i32 %mul83 to i64
  %add.ptr85 = getelementptr inbounds double, ptr %71, i64 %idx.ext84
  %74 = load i32, ptr %i, align 4, !tbaa !4
  %75 = load i32, ptr %rs_B.addr, align 4, !tbaa !4
  %mul86 = mul nsw i32 %74, %75
  %idx.ext87 = sext i32 %mul86 to i64
  %add.ptr88 = getelementptr inbounds double, ptr %add.ptr85, i64 %idx.ext87
  store ptr %add.ptr88, ptr %beta11, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 4, ptr %m_behind) #4
  %76 = load i32, ptr %i, align 4, !tbaa !4
  store i32 %76, ptr %m_behind, align 4, !tbaa !4
  %77 = load i32, ptr %m_behind, align 4, !tbaa !4
  %78 = load ptr, ptr %buff_1, align 8, !tbaa !19
  %79 = load ptr, ptr %A00, align 8, !tbaa !19
  %80 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %81 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %82 = load ptr, ptr %b10t, align 8, !tbaa !19
  %83 = load i32, ptr %cs_B.addr, align 4, !tbaa !4
  %84 = load ptr, ptr %buff_0, align 8, !tbaa !19
  %85 = load ptr, ptr %y10t, align 8, !tbaa !19
  %86 = load i32, ptr %inc_y.addr, align 4, !tbaa !4
  call void @bl1_dhemv(i32 noundef 200, i32 noundef 501, i32 noundef %77, ptr noundef %78, ptr noundef %79, i32 noundef %80, i32 noundef %81, ptr noundef %82, i32 noundef %83, ptr noundef %84, ptr noundef %85, i32 noundef %86)
  %87 = load i32, ptr %m_behind, align 4, !tbaa !4
  %88 = load ptr, ptr %B00, align 8, !tbaa !19
  %89 = load i32, ptr %rs_B.addr, align 4, !tbaa !4
  %90 = load i32, ptr %cs_B.addr, align 4, !tbaa !4
  %91 = load ptr, ptr %a10t, align 8, !tbaa !19
  %92 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  call void @bl1_dtrsv(i32 noundef 200, i32 noundef 102, i32 noundef 400, i32 noundef %87, ptr noundef %88, i32 noundef %89, i32 noundef %90, ptr noundef %91, i32 noundef %92)
  %93 = load i32, ptr %m_behind, align 4, !tbaa !4
  %94 = load ptr, ptr %buff_m1h, align 8, !tbaa !19
  %95 = load ptr, ptr %y10t, align 8, !tbaa !19
  %96 = load i32, ptr %inc_y.addr, align 4, !tbaa !4
  %97 = load ptr, ptr %a10t, align 8, !tbaa !19
  %98 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  call void @bl1_daxpyv(i32 noundef 500, i32 noundef %93, ptr noundef %94, ptr noundef %95, i32 noundef %96, ptr noundef %97, i32 noundef %98)
  %99 = load i32, ptr %m_behind, align 4, !tbaa !4
  %100 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %101 = load ptr, ptr %a10t, align 8, !tbaa !19
  %102 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %103 = load ptr, ptr %b10t, align 8, !tbaa !19
  %104 = load i32, ptr %cs_B.addr, align 4, !tbaa !4
  %105 = load ptr, ptr %buff_1, align 8, !tbaa !19
  %106 = load ptr, ptr %alpha11, align 8, !tbaa !19
  call void @bl1_ddot2s(i32 noundef 501, i32 noundef %99, ptr noundef %100, ptr noundef %101, i32 noundef %102, ptr noundef %103, i32 noundef %104, ptr noundef %105, ptr noundef %106)
  %107 = load ptr, ptr %alpha11, align 8, !tbaa !19
  %108 = load double, ptr %107, align 8, !tbaa !24
  %109 = load ptr, ptr %beta11, align 8, !tbaa !19
  %110 = load double, ptr %109, align 8, !tbaa !24
  %div = fdiv double %108, %110
  %111 = load ptr, ptr %alpha11, align 8, !tbaa !19
  store double %div, ptr %111, align 8, !tbaa !24
  %112 = load ptr, ptr %alpha11, align 8, !tbaa !19
  %113 = load double, ptr %112, align 8, !tbaa !24
  %114 = load ptr, ptr %beta11, align 8, !tbaa !19
  %115 = load double, ptr %114, align 8, !tbaa !24
  %div89 = fdiv double %113, %115
  %116 = load ptr, ptr %alpha11, align 8, !tbaa !19
  store double %div89, ptr %116, align 8, !tbaa !24
  %117 = load i32, ptr %m_behind, align 4, !tbaa !4
  %118 = load ptr, ptr %buff_m1h, align 8, !tbaa !19
  %119 = load ptr, ptr %y10t, align 8, !tbaa !19
  %120 = load i32, ptr %inc_y.addr, align 4, !tbaa !4
  %121 = load ptr, ptr %a10t, align 8, !tbaa !19
  %122 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  call void @bl1_daxpyv(i32 noundef 500, i32 noundef %117, ptr noundef %118, ptr noundef %119, i32 noundef %120, ptr noundef %121, i32 noundef %122)
  %123 = load i32, ptr %m_behind, align 4, !tbaa !4
  %124 = load ptr, ptr %beta11, align 8, !tbaa !19
  %125 = load ptr, ptr %a10t, align 8, !tbaa !19
  %126 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  call void @bl1_dinvscalv(i32 noundef 500, i32 noundef %123, ptr noundef %124, ptr noundef %125, i32 noundef %126)
  call void @llvm.lifetime.end.p0(i64 4, ptr %m_behind) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %beta11) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %b10t) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %B00) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %y10t) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %alpha11) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %a10t) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %A00) #4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %127 = load i32, ptr %i, align 4, !tbaa !4
  %inc = add nsw i32 %127, 1
  store i32 %inc, ptr %i, align 4, !tbaa !4
  br label %for.cond, !llvm.loop !26

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_m1h) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_m1) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_0) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_1) #4
  ret i32 -1
}

; Function Attrs: nounwind uwtable
define i32 @FLA_Eig_gest_il_opc_var1(i32 noundef %m_AB, ptr noundef %buff_A, i32 noundef %rs_A, i32 noundef %cs_A, ptr noundef %buff_y, i32 noundef %inc_y, ptr noundef %buff_B, i32 noundef %rs_B, i32 noundef %cs_B) #0 {
entry:
  %m_AB.addr = alloca i32, align 4
  %buff_A.addr = alloca ptr, align 8
  %rs_A.addr = alloca i32, align 4
  %cs_A.addr = alloca i32, align 4
  %buff_y.addr = alloca ptr, align 8
  %inc_y.addr = alloca i32, align 4
  %buff_B.addr = alloca ptr, align 8
  %rs_B.addr = alloca i32, align 4
  %cs_B.addr = alloca i32, align 4
  %buff_1 = alloca ptr, align 8
  %buff_0 = alloca ptr, align 8
  %buff_m1 = alloca ptr, align 8
  %buff_m1h = alloca ptr, align 8
  %i = alloca i32, align 4
  %A00 = alloca ptr, align 8
  %a10t = alloca ptr, align 8
  %alpha11 = alloca ptr, align 8
  %y10t = alloca ptr, align 8
  %B00 = alloca ptr, align 8
  %b10t = alloca ptr, align 8
  %beta11 = alloca ptr, align 8
  %m_behind = alloca i32, align 4
  %s = alloca float, align 4
  %ar_s = alloca float, align 4
  %ai_s = alloca float, align 4
  %yrt = alloca float, align 4
  %temp = alloca float, align 4
  %s153 = alloca float, align 4
  %ar_s204 = alloca float, align 4
  %ai_s207 = alloca float, align 4
  %yrt210 = alloca float, align 4
  %temp212 = alloca float, align 4
  store i32 %m_AB, ptr %m_AB.addr, align 4, !tbaa !4
  store ptr %buff_A, ptr %buff_A.addr, align 8, !tbaa !19
  store i32 %rs_A, ptr %rs_A.addr, align 4, !tbaa !4
  store i32 %cs_A, ptr %cs_A.addr, align 4, !tbaa !4
  store ptr %buff_y, ptr %buff_y.addr, align 8, !tbaa !19
  store i32 %inc_y, ptr %inc_y.addr, align 4, !tbaa !4
  store ptr %buff_B, ptr %buff_B.addr, align 8, !tbaa !19
  store i32 %rs_B, ptr %rs_B.addr, align 4, !tbaa !4
  store i32 %cs_B, ptr %cs_B.addr, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_1) #4
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_0) #4
  %12 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8, !tbaa !8
  %datatype5 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %12, i32 0, i32 0
  %13 = load i32, ptr %datatype5, align 8, !tbaa !12
  %cmp6 = icmp eq i32 %13, 105
  br i1 %cmp6, label %cond.true7, label %cond.false10

cond.true7:                                       ; preds = %cond.end
  %14 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8, !tbaa !8
  %buffer8 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %14, i32 0, i32 12
  %15 = load ptr, ptr %buffer8, align 8, !tbaa !14
  %add.ptr9 = getelementptr inbounds i8, ptr %15, i64 24
  br label %cond.end18

cond.false10:                                     ; preds = %cond.end
  %16 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8, !tbaa !8
  %buffer11 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %16, i32 0, i32 12
  %17 = load ptr, ptr %buffer11, align 8, !tbaa !14
  %18 = load i64, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 1), align 8, !tbaa !15
  %19 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8, !tbaa !8
  %cs12 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %19, i32 0, i32 5
  %20 = load i64, ptr %cs12, align 8, !tbaa !16
  %mul13 = mul i64 %18, %20
  %add.ptr14 = getelementptr inbounds %struct.scomplex, ptr %17, i64 %mul13
  %21 = load i64, ptr @FLA_ZERO, align 8, !tbaa !17
  %22 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8, !tbaa !8
  %rs15 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %22, i32 0, i32 4
  %23 = load i64, ptr %rs15, align 8, !tbaa !18
  %mul16 = mul i64 %21, %23
  %add.ptr17 = getelementptr inbounds %struct.scomplex, ptr %add.ptr14, i64 %mul16
  br label %cond.end18

cond.end18:                                       ; preds = %cond.false10, %cond.true7
  %cond19 = phi ptr [ %add.ptr9, %cond.true7 ], [ %add.ptr17, %cond.false10 ]
  store ptr %cond19, ptr %buff_0, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_m1) #4
  %24 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8, !tbaa !8
  %datatype20 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %24, i32 0, i32 0
  %25 = load i32, ptr %datatype20, align 8, !tbaa !12
  %cmp21 = icmp eq i32 %25, 105
  br i1 %cmp21, label %cond.true22, label %cond.false25

cond.true22:                                      ; preds = %cond.end18
  %26 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8, !tbaa !8
  %buffer23 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %26, i32 0, i32 12
  %27 = load ptr, ptr %buffer23, align 8, !tbaa !14
  %add.ptr24 = getelementptr inbounds i8, ptr %27, i64 24
  br label %cond.end33

cond.false25:                                     ; preds = %cond.end18
  %28 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8, !tbaa !8
  %buffer26 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %28, i32 0, i32 12
  %29 = load ptr, ptr %buffer26, align 8, !tbaa !14
  %30 = load i64, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 1), align 8, !tbaa !15
  %31 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8, !tbaa !8
  %cs27 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %31, i32 0, i32 5
  %32 = load i64, ptr %cs27, align 8, !tbaa !16
  %mul28 = mul i64 %30, %32
  %add.ptr29 = getelementptr inbounds %struct.scomplex, ptr %29, i64 %mul28
  %33 = load i64, ptr @FLA_MINUS_ONE, align 8, !tbaa !17
  %34 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8, !tbaa !8
  %rs30 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %34, i32 0, i32 4
  %35 = load i64, ptr %rs30, align 8, !tbaa !18
  %mul31 = mul i64 %33, %35
  %add.ptr32 = getelementptr inbounds %struct.scomplex, ptr %add.ptr29, i64 %mul31
  br label %cond.end33

cond.end33:                                       ; preds = %cond.false25, %cond.true22
  %cond34 = phi ptr [ %add.ptr24, %cond.true22 ], [ %add.ptr32, %cond.false25 ]
  store ptr %cond34, ptr %buff_m1, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_m1h) #4
  %36 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE_HALF, i32 0, i32 6), align 8, !tbaa !8
  %datatype35 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %36, i32 0, i32 0
  %37 = load i32, ptr %datatype35, align 8, !tbaa !12
  %cmp36 = icmp eq i32 %37, 105
  br i1 %cmp36, label %cond.true37, label %cond.false40

cond.true37:                                      ; preds = %cond.end33
  %38 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE_HALF, i32 0, i32 6), align 8, !tbaa !8
  %buffer38 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %38, i32 0, i32 12
  %39 = load ptr, ptr %buffer38, align 8, !tbaa !14
  %add.ptr39 = getelementptr inbounds i8, ptr %39, i64 24
  br label %cond.end48

cond.false40:                                     ; preds = %cond.end33
  %40 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE_HALF, i32 0, i32 6), align 8, !tbaa !8
  %buffer41 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %40, i32 0, i32 12
  %41 = load ptr, ptr %buffer41, align 8, !tbaa !14
  %42 = load i64, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE_HALF, i32 0, i32 1), align 8, !tbaa !15
  %43 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE_HALF, i32 0, i32 6), align 8, !tbaa !8
  %cs42 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %43, i32 0, i32 5
  %44 = load i64, ptr %cs42, align 8, !tbaa !16
  %mul43 = mul i64 %42, %44
  %add.ptr44 = getelementptr inbounds %struct.scomplex, ptr %41, i64 %mul43
  %45 = load i64, ptr @FLA_MINUS_ONE_HALF, align 8, !tbaa !17
  %46 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE_HALF, i32 0, i32 6), align 8, !tbaa !8
  %rs45 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %46, i32 0, i32 4
  %47 = load i64, ptr %rs45, align 8, !tbaa !18
  %mul46 = mul i64 %45, %47
  %add.ptr47 = getelementptr inbounds %struct.scomplex, ptr %add.ptr44, i64 %mul46
  br label %cond.end48

cond.end48:                                       ; preds = %cond.false40, %cond.true37
  %cond49 = phi ptr [ %add.ptr39, %cond.true37 ], [ %add.ptr47, %cond.false40 ]
  store ptr %cond49, ptr %buff_m1h, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  store i32 0, ptr %i, align 4, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end48
  %48 = load i32, ptr %i, align 4, !tbaa !4
  %49 = load i32, ptr %m_AB.addr, align 4, !tbaa !4
  %cmp50 = icmp slt i32 %48, %49
  br i1 %cmp50, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %A00) #4
  %50 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %51 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul51 = mul nsw i32 0, %51
  %idx.ext = sext i32 %mul51 to i64
  %add.ptr52 = getelementptr inbounds %struct.scomplex, ptr %50, i64 %idx.ext
  %52 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul53 = mul nsw i32 0, %52
  %idx.ext54 = sext i32 %mul53 to i64
  %add.ptr55 = getelementptr inbounds %struct.scomplex, ptr %add.ptr52, i64 %idx.ext54
  store ptr %add.ptr55, ptr %A00, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %a10t) #4
  %53 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %54 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul56 = mul nsw i32 0, %54
  %idx.ext57 = sext i32 %mul56 to i64
  %add.ptr58 = getelementptr inbounds %struct.scomplex, ptr %53, i64 %idx.ext57
  %55 = load i32, ptr %i, align 4, !tbaa !4
  %56 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul59 = mul nsw i32 %55, %56
  %idx.ext60 = sext i32 %mul59 to i64
  %add.ptr61 = getelementptr inbounds %struct.scomplex, ptr %add.ptr58, i64 %idx.ext60
  store ptr %add.ptr61, ptr %a10t, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %alpha11) #4
  %57 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %58 = load i32, ptr %i, align 4, !tbaa !4
  %59 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul62 = mul nsw i32 %58, %59
  %idx.ext63 = sext i32 %mul62 to i64
  %add.ptr64 = getelementptr inbounds %struct.scomplex, ptr %57, i64 %idx.ext63
  %60 = load i32, ptr %i, align 4, !tbaa !4
  %61 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul65 = mul nsw i32 %60, %61
  %idx.ext66 = sext i32 %mul65 to i64
  %add.ptr67 = getelementptr inbounds %struct.scomplex, ptr %add.ptr64, i64 %idx.ext66
  store ptr %add.ptr67, ptr %alpha11, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %y10t) #4
  %62 = load ptr, ptr %buff_y.addr, align 8, !tbaa !19
  %63 = load i32, ptr %inc_y.addr, align 4, !tbaa !4
  %mul68 = mul nsw i32 0, %63
  %idx.ext69 = sext i32 %mul68 to i64
  %add.ptr70 = getelementptr inbounds %struct.scomplex, ptr %62, i64 %idx.ext69
  store ptr %add.ptr70, ptr %y10t, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %B00) #4
  %64 = load ptr, ptr %buff_B.addr, align 8, !tbaa !19
  %65 = load i32, ptr %cs_B.addr, align 4, !tbaa !4
  %mul71 = mul nsw i32 0, %65
  %idx.ext72 = sext i32 %mul71 to i64
  %add.ptr73 = getelementptr inbounds %struct.scomplex, ptr %64, i64 %idx.ext72
  %66 = load i32, ptr %rs_B.addr, align 4, !tbaa !4
  %mul74 = mul nsw i32 0, %66
  %idx.ext75 = sext i32 %mul74 to i64
  %add.ptr76 = getelementptr inbounds %struct.scomplex, ptr %add.ptr73, i64 %idx.ext75
  store ptr %add.ptr76, ptr %B00, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %b10t) #4
  %67 = load ptr, ptr %buff_B.addr, align 8, !tbaa !19
  %68 = load i32, ptr %cs_B.addr, align 4, !tbaa !4
  %mul77 = mul nsw i32 0, %68
  %idx.ext78 = sext i32 %mul77 to i64
  %add.ptr79 = getelementptr inbounds %struct.scomplex, ptr %67, i64 %idx.ext78
  %69 = load i32, ptr %i, align 4, !tbaa !4
  %70 = load i32, ptr %rs_B.addr, align 4, !tbaa !4
  %mul80 = mul nsw i32 %69, %70
  %idx.ext81 = sext i32 %mul80 to i64
  %add.ptr82 = getelementptr inbounds %struct.scomplex, ptr %add.ptr79, i64 %idx.ext81
  store ptr %add.ptr82, ptr %b10t, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %beta11) #4
  %71 = load ptr, ptr %buff_B.addr, align 8, !tbaa !19
  %72 = load i32, ptr %i, align 4, !tbaa !4
  %73 = load i32, ptr %cs_B.addr, align 4, !tbaa !4
  %mul83 = mul nsw i32 %72, %73
  %idx.ext84 = sext i32 %mul83 to i64
  %add.ptr85 = getelementptr inbounds %struct.scomplex, ptr %71, i64 %idx.ext84
  %74 = load i32, ptr %i, align 4, !tbaa !4
  %75 = load i32, ptr %rs_B.addr, align 4, !tbaa !4
  %mul86 = mul nsw i32 %74, %75
  %idx.ext87 = sext i32 %mul86 to i64
  %add.ptr88 = getelementptr inbounds %struct.scomplex, ptr %add.ptr85, i64 %idx.ext87
  store ptr %add.ptr88, ptr %beta11, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 4, ptr %m_behind) #4
  %76 = load i32, ptr %i, align 4, !tbaa !4
  store i32 %76, ptr %m_behind, align 4, !tbaa !4
  %77 = load i32, ptr %m_behind, align 4, !tbaa !4
  %78 = load ptr, ptr %buff_1, align 8, !tbaa !19
  %79 = load ptr, ptr %A00, align 8, !tbaa !19
  %80 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %81 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %82 = load ptr, ptr %b10t, align 8, !tbaa !19
  %83 = load i32, ptr %cs_B.addr, align 4, !tbaa !4
  %84 = load ptr, ptr %buff_0, align 8, !tbaa !19
  %85 = load ptr, ptr %y10t, align 8, !tbaa !19
  %86 = load i32, ptr %inc_y.addr, align 4, !tbaa !4
  call void @bl1_chemv(i32 noundef 200, i32 noundef 501, i32 noundef %77, ptr noundef %78, ptr noundef %79, i32 noundef %80, i32 noundef %81, ptr noundef %82, i32 noundef %83, ptr noundef %84, ptr noundef %85, i32 noundef %86)
  %87 = load i32, ptr %m_behind, align 4, !tbaa !4
  %88 = load ptr, ptr %B00, align 8, !tbaa !19
  %89 = load i32, ptr %rs_B.addr, align 4, !tbaa !4
  %90 = load i32, ptr %cs_B.addr, align 4, !tbaa !4
  %91 = load ptr, ptr %a10t, align 8, !tbaa !19
  %92 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  call void @bl1_ctrsv(i32 noundef 200, i32 noundef 102, i32 noundef 400, i32 noundef %87, ptr noundef %88, i32 noundef %89, i32 noundef %90, ptr noundef %91, i32 noundef %92)
  %93 = load i32, ptr %m_behind, align 4, !tbaa !4
  %94 = load ptr, ptr %buff_m1h, align 8, !tbaa !19
  %95 = load ptr, ptr %y10t, align 8, !tbaa !19
  %96 = load i32, ptr %inc_y.addr, align 4, !tbaa !4
  %97 = load ptr, ptr %a10t, align 8, !tbaa !19
  %98 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  call void @bl1_caxpyv(i32 noundef 500, i32 noundef %93, ptr noundef %94, ptr noundef %95, i32 noundef %96, ptr noundef %97, i32 noundef %98)
  %99 = load i32, ptr %m_behind, align 4, !tbaa !4
  %100 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %101 = load ptr, ptr %a10t, align 8, !tbaa !19
  %102 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %103 = load ptr, ptr %b10t, align 8, !tbaa !19
  %104 = load i32, ptr %cs_B.addr, align 4, !tbaa !4
  %105 = load ptr, ptr %buff_1, align 8, !tbaa !19
  %106 = load ptr, ptr %alpha11, align 8, !tbaa !19
  call void @bl1_cdot2s(i32 noundef 501, i32 noundef %99, ptr noundef %100, ptr noundef %101, i32 noundef %102, ptr noundef %103, i32 noundef %104, ptr noundef %105, ptr noundef %106)
  call void @llvm.lifetime.start.p0(i64 4, ptr %s) #4
  %107 = load ptr, ptr %beta11, align 8, !tbaa !19
  %real = getelementptr inbounds %struct.scomplex, ptr %107, i32 0, i32 0
  %108 = load float, ptr %real, align 4, !tbaa !27
  %conv = fpext float %108 to double
  %cmp89 = fcmp ole double %conv, 0.000000e+00
  br i1 %cmp89, label %cond.true91, label %cond.false93

cond.true91:                                      ; preds = %for.body
  %109 = load ptr, ptr %beta11, align 8, !tbaa !19
  %real92 = getelementptr inbounds %struct.scomplex, ptr %109, i32 0, i32 0
  %110 = load float, ptr %real92, align 4, !tbaa !27
  %fneg = fneg float %110
  br label %cond.end95

cond.false93:                                     ; preds = %for.body
  %111 = load ptr, ptr %beta11, align 8, !tbaa !19
  %real94 = getelementptr inbounds %struct.scomplex, ptr %111, i32 0, i32 0
  %112 = load float, ptr %real94, align 4, !tbaa !27
  br label %cond.end95

cond.end95:                                       ; preds = %cond.false93, %cond.true91
  %cond96 = phi float [ %fneg, %cond.true91 ], [ %112, %cond.false93 ]
  %113 = load ptr, ptr %beta11, align 8, !tbaa !19
  %imag = getelementptr inbounds %struct.scomplex, ptr %113, i32 0, i32 1
  %114 = load float, ptr %imag, align 4, !tbaa !29
  %conv97 = fpext float %114 to double
  %cmp98 = fcmp ole double %conv97, 0.000000e+00
  br i1 %cmp98, label %cond.true100, label %cond.false103

cond.true100:                                     ; preds = %cond.end95
  %115 = load ptr, ptr %beta11, align 8, !tbaa !19
  %imag101 = getelementptr inbounds %struct.scomplex, ptr %115, i32 0, i32 1
  %116 = load float, ptr %imag101, align 4, !tbaa !29
  %fneg102 = fneg float %116
  br label %cond.end105

cond.false103:                                    ; preds = %cond.end95
  %117 = load ptr, ptr %beta11, align 8, !tbaa !19
  %imag104 = getelementptr inbounds %struct.scomplex, ptr %117, i32 0, i32 1
  %118 = load float, ptr %imag104, align 4, !tbaa !29
  br label %cond.end105

cond.end105:                                      ; preds = %cond.false103, %cond.true100
  %cond106 = phi float [ %fneg102, %cond.true100 ], [ %118, %cond.false103 ]
  %cmp107 = fcmp ogt float %cond96, %cond106
  br i1 %cmp107, label %cond.true109, label %cond.false121

cond.true109:                                     ; preds = %cond.end105
  %119 = load ptr, ptr %beta11, align 8, !tbaa !19
  %real110 = getelementptr inbounds %struct.scomplex, ptr %119, i32 0, i32 0
  %120 = load float, ptr %real110, align 4, !tbaa !27
  %conv111 = fpext float %120 to double
  %cmp112 = fcmp ole double %conv111, 0.000000e+00
  br i1 %cmp112, label %cond.true114, label %cond.false117

cond.true114:                                     ; preds = %cond.true109
  %121 = load ptr, ptr %beta11, align 8, !tbaa !19
  %real115 = getelementptr inbounds %struct.scomplex, ptr %121, i32 0, i32 0
  %122 = load float, ptr %real115, align 4, !tbaa !27
  %fneg116 = fneg float %122
  br label %cond.end119

cond.false117:                                    ; preds = %cond.true109
  %123 = load ptr, ptr %beta11, align 8, !tbaa !19
  %real118 = getelementptr inbounds %struct.scomplex, ptr %123, i32 0, i32 0
  %124 = load float, ptr %real118, align 4, !tbaa !27
  br label %cond.end119

cond.end119:                                      ; preds = %cond.false117, %cond.true114
  %cond120 = phi float [ %fneg116, %cond.true114 ], [ %124, %cond.false117 ]
  br label %cond.end133

cond.false121:                                    ; preds = %cond.end105
  %125 = load ptr, ptr %beta11, align 8, !tbaa !19
  %imag122 = getelementptr inbounds %struct.scomplex, ptr %125, i32 0, i32 1
  %126 = load float, ptr %imag122, align 4, !tbaa !29
  %conv123 = fpext float %126 to double
  %cmp124 = fcmp ole double %conv123, 0.000000e+00
  br i1 %cmp124, label %cond.true126, label %cond.false129

cond.true126:                                     ; preds = %cond.false121
  %127 = load ptr, ptr %beta11, align 8, !tbaa !19
  %imag127 = getelementptr inbounds %struct.scomplex, ptr %127, i32 0, i32 1
  %128 = load float, ptr %imag127, align 4, !tbaa !29
  %fneg128 = fneg float %128
  br label %cond.end131

cond.false129:                                    ; preds = %cond.false121
  %129 = load ptr, ptr %beta11, align 8, !tbaa !19
  %imag130 = getelementptr inbounds %struct.scomplex, ptr %129, i32 0, i32 1
  %130 = load float, ptr %imag130, align 4, !tbaa !29
  br label %cond.end131

cond.end131:                                      ; preds = %cond.false129, %cond.true126
  %cond132 = phi float [ %fneg128, %cond.true126 ], [ %130, %cond.false129 ]
  br label %cond.end133

cond.end133:                                      ; preds = %cond.end131, %cond.end119
  %cond134 = phi float [ %cond120, %cond.end119 ], [ %cond132, %cond.end131 ]
  store float %cond134, ptr %s, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 4, ptr %ar_s) #4
  %131 = load ptr, ptr %beta11, align 8, !tbaa !19
  %real135 = getelementptr inbounds %struct.scomplex, ptr %131, i32 0, i32 0
  %132 = load float, ptr %real135, align 4, !tbaa !27
  %133 = load float, ptr %s, align 4, !tbaa !20
  %div = fdiv float %132, %133
  store float %div, ptr %ar_s, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 4, ptr %ai_s) #4
  %134 = load ptr, ptr %beta11, align 8, !tbaa !19
  %imag136 = getelementptr inbounds %struct.scomplex, ptr %134, i32 0, i32 1
  %135 = load float, ptr %imag136, align 4, !tbaa !29
  %136 = load float, ptr %s, align 4, !tbaa !20
  %div137 = fdiv float %135, %136
  store float %div137, ptr %ai_s, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 4, ptr %yrt) #4
  %137 = load ptr, ptr %alpha11, align 8, !tbaa !19
  %real138 = getelementptr inbounds %struct.scomplex, ptr %137, i32 0, i32 0
  %138 = load float, ptr %real138, align 4, !tbaa !27
  store float %138, ptr %yrt, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 4, ptr %temp) #4
  %139 = load float, ptr %ar_s, align 4, !tbaa !20
  %140 = load ptr, ptr %beta11, align 8, !tbaa !19
  %real139 = getelementptr inbounds %struct.scomplex, ptr %140, i32 0, i32 0
  %141 = load float, ptr %real139, align 4, !tbaa !27
  %142 = load float, ptr %ai_s, align 4, !tbaa !20
  %143 = load ptr, ptr %beta11, align 8, !tbaa !19
  %imag141 = getelementptr inbounds %struct.scomplex, ptr %143, i32 0, i32 1
  %144 = load float, ptr %imag141, align 4, !tbaa !29
  %mul142 = fmul float %142, %144
  %145 = call float @llvm.fmuladd.f32(float %139, float %141, float %mul142)
  store float %145, ptr %temp, align 4, !tbaa !20
  %146 = load float, ptr %yrt, align 4, !tbaa !20
  %147 = load float, ptr %ar_s, align 4, !tbaa !20
  %148 = load ptr, ptr %alpha11, align 8, !tbaa !19
  %imag144 = getelementptr inbounds %struct.scomplex, ptr %148, i32 0, i32 1
  %149 = load float, ptr %imag144, align 4, !tbaa !29
  %150 = load float, ptr %ai_s, align 4, !tbaa !20
  %mul145 = fmul float %149, %150
  %151 = call float @llvm.fmuladd.f32(float %146, float %147, float %mul145)
  %152 = load float, ptr %temp, align 4, !tbaa !20
  %div146 = fdiv float %151, %152
  %153 = load ptr, ptr %alpha11, align 8, !tbaa !19
  %real147 = getelementptr inbounds %struct.scomplex, ptr %153, i32 0, i32 0
  store float %div146, ptr %real147, align 4, !tbaa !27
  %154 = load ptr, ptr %alpha11, align 8, !tbaa !19
  %imag148 = getelementptr inbounds %struct.scomplex, ptr %154, i32 0, i32 1
  %155 = load float, ptr %imag148, align 4, !tbaa !29
  %156 = load float, ptr %ar_s, align 4, !tbaa !20
  %157 = load float, ptr %yrt, align 4, !tbaa !20
  %158 = load float, ptr %ai_s, align 4, !tbaa !20
  %mul150 = fmul float %157, %158
  %neg = fneg float %mul150
  %159 = call float @llvm.fmuladd.f32(float %155, float %156, float %neg)
  %160 = load float, ptr %temp, align 4, !tbaa !20
  %div151 = fdiv float %159, %160
  %161 = load ptr, ptr %alpha11, align 8, !tbaa !19
  %imag152 = getelementptr inbounds %struct.scomplex, ptr %161, i32 0, i32 1
  store float %div151, ptr %imag152, align 4, !tbaa !29
  call void @llvm.lifetime.end.p0(i64 4, ptr %temp) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %yrt) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %ai_s) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %ar_s) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %s) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %s153) #4
  %162 = load ptr, ptr %beta11, align 8, !tbaa !19
  %real154 = getelementptr inbounds %struct.scomplex, ptr %162, i32 0, i32 0
  %163 = load float, ptr %real154, align 4, !tbaa !27
  %conv155 = fpext float %163 to double
  %cmp156 = fcmp ole double %conv155, 0.000000e+00
  br i1 %cmp156, label %cond.true158, label %cond.false161

cond.true158:                                     ; preds = %cond.end133
  %164 = load ptr, ptr %beta11, align 8, !tbaa !19
  %real159 = getelementptr inbounds %struct.scomplex, ptr %164, i32 0, i32 0
  %165 = load float, ptr %real159, align 4, !tbaa !27
  %fneg160 = fneg float %165
  br label %cond.end163

cond.false161:                                    ; preds = %cond.end133
  %166 = load ptr, ptr %beta11, align 8, !tbaa !19
  %real162 = getelementptr inbounds %struct.scomplex, ptr %166, i32 0, i32 0
  %167 = load float, ptr %real162, align 4, !tbaa !27
  br label %cond.end163

cond.end163:                                      ; preds = %cond.false161, %cond.true158
  %cond164 = phi float [ %fneg160, %cond.true158 ], [ %167, %cond.false161 ]
  %168 = load ptr, ptr %beta11, align 8, !tbaa !19
  %imag165 = getelementptr inbounds %struct.scomplex, ptr %168, i32 0, i32 1
  %169 = load float, ptr %imag165, align 4, !tbaa !29
  %conv166 = fpext float %169 to double
  %cmp167 = fcmp ole double %conv166, 0.000000e+00
  br i1 %cmp167, label %cond.true169, label %cond.false172

cond.true169:                                     ; preds = %cond.end163
  %170 = load ptr, ptr %beta11, align 8, !tbaa !19
  %imag170 = getelementptr inbounds %struct.scomplex, ptr %170, i32 0, i32 1
  %171 = load float, ptr %imag170, align 4, !tbaa !29
  %fneg171 = fneg float %171
  br label %cond.end174

cond.false172:                                    ; preds = %cond.end163
  %172 = load ptr, ptr %beta11, align 8, !tbaa !19
  %imag173 = getelementptr inbounds %struct.scomplex, ptr %172, i32 0, i32 1
  %173 = load float, ptr %imag173, align 4, !tbaa !29
  br label %cond.end174

cond.end174:                                      ; preds = %cond.false172, %cond.true169
  %cond175 = phi float [ %fneg171, %cond.true169 ], [ %173, %cond.false172 ]
  %cmp176 = fcmp ogt float %cond164, %cond175
  br i1 %cmp176, label %cond.true178, label %cond.false190

cond.true178:                                     ; preds = %cond.end174
  %174 = load ptr, ptr %beta11, align 8, !tbaa !19
  %real179 = getelementptr inbounds %struct.scomplex, ptr %174, i32 0, i32 0
  %175 = load float, ptr %real179, align 4, !tbaa !27
  %conv180 = fpext float %175 to double
  %cmp181 = fcmp ole double %conv180, 0.000000e+00
  br i1 %cmp181, label %cond.true183, label %cond.false186

cond.true183:                                     ; preds = %cond.true178
  %176 = load ptr, ptr %beta11, align 8, !tbaa !19
  %real184 = getelementptr inbounds %struct.scomplex, ptr %176, i32 0, i32 0
  %177 = load float, ptr %real184, align 4, !tbaa !27
  %fneg185 = fneg float %177
  br label %cond.end188

cond.false186:                                    ; preds = %cond.true178
  %178 = load ptr, ptr %beta11, align 8, !tbaa !19
  %real187 = getelementptr inbounds %struct.scomplex, ptr %178, i32 0, i32 0
  %179 = load float, ptr %real187, align 4, !tbaa !27
  br label %cond.end188

cond.end188:                                      ; preds = %cond.false186, %cond.true183
  %cond189 = phi float [ %fneg185, %cond.true183 ], [ %179, %cond.false186 ]
  br label %cond.end202

cond.false190:                                    ; preds = %cond.end174
  %180 = load ptr, ptr %beta11, align 8, !tbaa !19
  %imag191 = getelementptr inbounds %struct.scomplex, ptr %180, i32 0, i32 1
  %181 = load float, ptr %imag191, align 4, !tbaa !29
  %conv192 = fpext float %181 to double
  %cmp193 = fcmp ole double %conv192, 0.000000e+00
  br i1 %cmp193, label %cond.true195, label %cond.false198

cond.true195:                                     ; preds = %cond.false190
  %182 = load ptr, ptr %beta11, align 8, !tbaa !19
  %imag196 = getelementptr inbounds %struct.scomplex, ptr %182, i32 0, i32 1
  %183 = load float, ptr %imag196, align 4, !tbaa !29
  %fneg197 = fneg float %183
  br label %cond.end200

cond.false198:                                    ; preds = %cond.false190
  %184 = load ptr, ptr %beta11, align 8, !tbaa !19
  %imag199 = getelementptr inbounds %struct.scomplex, ptr %184, i32 0, i32 1
  %185 = load float, ptr %imag199, align 4, !tbaa !29
  br label %cond.end200

cond.end200:                                      ; preds = %cond.false198, %cond.true195
  %cond201 = phi float [ %fneg197, %cond.true195 ], [ %185, %cond.false198 ]
  br label %cond.end202

cond.end202:                                      ; preds = %cond.end200, %cond.end188
  %cond203 = phi float [ %cond189, %cond.end188 ], [ %cond201, %cond.end200 ]
  store float %cond203, ptr %s153, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 4, ptr %ar_s204) #4
  %186 = load ptr, ptr %beta11, align 8, !tbaa !19
  %real205 = getelementptr inbounds %struct.scomplex, ptr %186, i32 0, i32 0
  %187 = load float, ptr %real205, align 4, !tbaa !27
  %188 = load float, ptr %s153, align 4, !tbaa !20
  %div206 = fdiv float %187, %188
  store float %div206, ptr %ar_s204, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 4, ptr %ai_s207) #4
  %189 = load ptr, ptr %beta11, align 8, !tbaa !19
  %imag208 = getelementptr inbounds %struct.scomplex, ptr %189, i32 0, i32 1
  %190 = load float, ptr %imag208, align 4, !tbaa !29
  %191 = load float, ptr %s153, align 4, !tbaa !20
  %div209 = fdiv float %190, %191
  store float %div209, ptr %ai_s207, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 4, ptr %yrt210) #4
  %192 = load ptr, ptr %alpha11, align 8, !tbaa !19
  %real211 = getelementptr inbounds %struct.scomplex, ptr %192, i32 0, i32 0
  %193 = load float, ptr %real211, align 4, !tbaa !27
  store float %193, ptr %yrt210, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 4, ptr %temp212) #4
  %194 = load float, ptr %ar_s204, align 4, !tbaa !20
  %195 = load ptr, ptr %beta11, align 8, !tbaa !19
  %real213 = getelementptr inbounds %struct.scomplex, ptr %195, i32 0, i32 0
  %196 = load float, ptr %real213, align 4, !tbaa !27
  %197 = load float, ptr %ai_s207, align 4, !tbaa !20
  %198 = load ptr, ptr %beta11, align 8, !tbaa !19
  %imag215 = getelementptr inbounds %struct.scomplex, ptr %198, i32 0, i32 1
  %199 = load float, ptr %imag215, align 4, !tbaa !29
  %mul216 = fmul float %197, %199
  %200 = call float @llvm.fmuladd.f32(float %194, float %196, float %mul216)
  store float %200, ptr %temp212, align 4, !tbaa !20
  %201 = load float, ptr %yrt210, align 4, !tbaa !20
  %202 = load float, ptr %ar_s204, align 4, !tbaa !20
  %203 = load ptr, ptr %alpha11, align 8, !tbaa !19
  %imag218 = getelementptr inbounds %struct.scomplex, ptr %203, i32 0, i32 1
  %204 = load float, ptr %imag218, align 4, !tbaa !29
  %205 = load float, ptr %ai_s207, align 4, !tbaa !20
  %mul219 = fmul float %204, %205
  %206 = call float @llvm.fmuladd.f32(float %201, float %202, float %mul219)
  %207 = load float, ptr %temp212, align 4, !tbaa !20
  %div220 = fdiv float %206, %207
  %208 = load ptr, ptr %alpha11, align 8, !tbaa !19
  %real221 = getelementptr inbounds %struct.scomplex, ptr %208, i32 0, i32 0
  store float %div220, ptr %real221, align 4, !tbaa !27
  %209 = load ptr, ptr %alpha11, align 8, !tbaa !19
  %imag222 = getelementptr inbounds %struct.scomplex, ptr %209, i32 0, i32 1
  %210 = load float, ptr %imag222, align 4, !tbaa !29
  %211 = load float, ptr %ar_s204, align 4, !tbaa !20
  %212 = load float, ptr %yrt210, align 4, !tbaa !20
  %213 = load float, ptr %ai_s207, align 4, !tbaa !20
  %mul224 = fmul float %212, %213
  %neg225 = fneg float %mul224
  %214 = call float @llvm.fmuladd.f32(float %210, float %211, float %neg225)
  %215 = load float, ptr %temp212, align 4, !tbaa !20
  %div226 = fdiv float %214, %215
  %216 = load ptr, ptr %alpha11, align 8, !tbaa !19
  %imag227 = getelementptr inbounds %struct.scomplex, ptr %216, i32 0, i32 1
  store float %div226, ptr %imag227, align 4, !tbaa !29
  call void @llvm.lifetime.end.p0(i64 4, ptr %temp212) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %yrt210) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %ai_s207) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %ar_s204) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %s153) #4
  %217 = load i32, ptr %m_behind, align 4, !tbaa !4
  %218 = load ptr, ptr %buff_m1h, align 8, !tbaa !19
  %219 = load ptr, ptr %y10t, align 8, !tbaa !19
  %220 = load i32, ptr %inc_y.addr, align 4, !tbaa !4
  %221 = load ptr, ptr %a10t, align 8, !tbaa !19
  %222 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  call void @bl1_caxpyv(i32 noundef 500, i32 noundef %217, ptr noundef %218, ptr noundef %219, i32 noundef %220, ptr noundef %221, i32 noundef %222)
  %223 = load i32, ptr %m_behind, align 4, !tbaa !4
  %224 = load ptr, ptr %beta11, align 8, !tbaa !19
  %225 = load ptr, ptr %a10t, align 8, !tbaa !19
  %226 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  call void @bl1_cinvscalv(i32 noundef 500, i32 noundef %223, ptr noundef %224, ptr noundef %225, i32 noundef %226)
  call void @llvm.lifetime.end.p0(i64 4, ptr %m_behind) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %beta11) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %b10t) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %B00) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %y10t) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %alpha11) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %a10t) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %A00) #4
  br label %for.inc

for.inc:                                          ; preds = %cond.end202
  %227 = load i32, ptr %i, align 4, !tbaa !4
  %inc = add nsw i32 %227, 1
  store i32 %inc, ptr %i, align 4, !tbaa !4
  br label %for.cond, !llvm.loop !30

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_m1h) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_m1) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_0) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_1) #4
  ret i32 -1
}

; Function Attrs: nounwind uwtable
define i32 @FLA_Eig_gest_il_opz_var1(i32 noundef %m_AB, ptr noundef %buff_A, i32 noundef %rs_A, i32 noundef %cs_A, ptr noundef %buff_y, i32 noundef %inc_y, ptr noundef %buff_B, i32 noundef %rs_B, i32 noundef %cs_B) #0 {
entry:
  %m_AB.addr = alloca i32, align 4
  %buff_A.addr = alloca ptr, align 8
  %rs_A.addr = alloca i32, align 4
  %cs_A.addr = alloca i32, align 4
  %buff_y.addr = alloca ptr, align 8
  %inc_y.addr = alloca i32, align 4
  %buff_B.addr = alloca ptr, align 8
  %rs_B.addr = alloca i32, align 4
  %cs_B.addr = alloca i32, align 4
  %buff_1 = alloca ptr, align 8
  %buff_0 = alloca ptr, align 8
  %buff_m1 = alloca ptr, align 8
  %buff_m1h = alloca ptr, align 8
  %i = alloca i32, align 4
  %A00 = alloca ptr, align 8
  %a10t = alloca ptr, align 8
  %alpha11 = alloca ptr, align 8
  %y10t = alloca ptr, align 8
  %B00 = alloca ptr, align 8
  %b10t = alloca ptr, align 8
  %beta11 = alloca ptr, align 8
  %m_behind = alloca i32, align 4
  %s = alloca double, align 8
  %ar_s = alloca double, align 8
  %ai_s = alloca double, align 8
  %yrt = alloca double, align 8
  %temp = alloca double, align 8
  %s145 = alloca double, align 8
  %ar_s187 = alloca double, align 8
  %ai_s190 = alloca double, align 8
  %yrt193 = alloca double, align 8
  %temp195 = alloca double, align 8
  store i32 %m_AB, ptr %m_AB.addr, align 4, !tbaa !4
  store ptr %buff_A, ptr %buff_A.addr, align 8, !tbaa !19
  store i32 %rs_A, ptr %rs_A.addr, align 4, !tbaa !4
  store i32 %cs_A, ptr %cs_A.addr, align 4, !tbaa !4
  store ptr %buff_y, ptr %buff_y.addr, align 8, !tbaa !19
  store i32 %inc_y, ptr %inc_y.addr, align 4, !tbaa !4
  store ptr %buff_B, ptr %buff_B.addr, align 8, !tbaa !19
  store i32 %rs_B, ptr %rs_B.addr, align 4, !tbaa !4
  store i32 %cs_B, ptr %cs_B.addr, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_1) #4
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_0) #4
  %12 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8, !tbaa !8
  %datatype5 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %12, i32 0, i32 0
  %13 = load i32, ptr %datatype5, align 8, !tbaa !12
  %cmp6 = icmp eq i32 %13, 105
  br i1 %cmp6, label %cond.true7, label %cond.false10

cond.true7:                                       ; preds = %cond.end
  %14 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8, !tbaa !8
  %buffer8 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %14, i32 0, i32 12
  %15 = load ptr, ptr %buffer8, align 8, !tbaa !14
  %add.ptr9 = getelementptr inbounds i8, ptr %15, i64 32
  br label %cond.end18

cond.false10:                                     ; preds = %cond.end
  %16 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8, !tbaa !8
  %buffer11 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %16, i32 0, i32 12
  %17 = load ptr, ptr %buffer11, align 8, !tbaa !14
  %18 = load i64, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 1), align 8, !tbaa !15
  %19 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8, !tbaa !8
  %cs12 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %19, i32 0, i32 5
  %20 = load i64, ptr %cs12, align 8, !tbaa !16
  %mul13 = mul i64 %18, %20
  %add.ptr14 = getelementptr inbounds %struct.dcomplex, ptr %17, i64 %mul13
  %21 = load i64, ptr @FLA_ZERO, align 8, !tbaa !17
  %22 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8, !tbaa !8
  %rs15 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %22, i32 0, i32 4
  %23 = load i64, ptr %rs15, align 8, !tbaa !18
  %mul16 = mul i64 %21, %23
  %add.ptr17 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr14, i64 %mul16
  br label %cond.end18

cond.end18:                                       ; preds = %cond.false10, %cond.true7
  %cond19 = phi ptr [ %add.ptr9, %cond.true7 ], [ %add.ptr17, %cond.false10 ]
  store ptr %cond19, ptr %buff_0, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_m1) #4
  %24 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8, !tbaa !8
  %datatype20 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %24, i32 0, i32 0
  %25 = load i32, ptr %datatype20, align 8, !tbaa !12
  %cmp21 = icmp eq i32 %25, 105
  br i1 %cmp21, label %cond.true22, label %cond.false25

cond.true22:                                      ; preds = %cond.end18
  %26 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8, !tbaa !8
  %buffer23 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %26, i32 0, i32 12
  %27 = load ptr, ptr %buffer23, align 8, !tbaa !14
  %add.ptr24 = getelementptr inbounds i8, ptr %27, i64 32
  br label %cond.end33

cond.false25:                                     ; preds = %cond.end18
  %28 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8, !tbaa !8
  %buffer26 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %28, i32 0, i32 12
  %29 = load ptr, ptr %buffer26, align 8, !tbaa !14
  %30 = load i64, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 1), align 8, !tbaa !15
  %31 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8, !tbaa !8
  %cs27 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %31, i32 0, i32 5
  %32 = load i64, ptr %cs27, align 8, !tbaa !16
  %mul28 = mul i64 %30, %32
  %add.ptr29 = getelementptr inbounds %struct.dcomplex, ptr %29, i64 %mul28
  %33 = load i64, ptr @FLA_MINUS_ONE, align 8, !tbaa !17
  %34 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8, !tbaa !8
  %rs30 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %34, i32 0, i32 4
  %35 = load i64, ptr %rs30, align 8, !tbaa !18
  %mul31 = mul i64 %33, %35
  %add.ptr32 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr29, i64 %mul31
  br label %cond.end33

cond.end33:                                       ; preds = %cond.false25, %cond.true22
  %cond34 = phi ptr [ %add.ptr24, %cond.true22 ], [ %add.ptr32, %cond.false25 ]
  store ptr %cond34, ptr %buff_m1, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_m1h) #4
  %36 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE_HALF, i32 0, i32 6), align 8, !tbaa !8
  %datatype35 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %36, i32 0, i32 0
  %37 = load i32, ptr %datatype35, align 8, !tbaa !12
  %cmp36 = icmp eq i32 %37, 105
  br i1 %cmp36, label %cond.true37, label %cond.false40

cond.true37:                                      ; preds = %cond.end33
  %38 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE_HALF, i32 0, i32 6), align 8, !tbaa !8
  %buffer38 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %38, i32 0, i32 12
  %39 = load ptr, ptr %buffer38, align 8, !tbaa !14
  %add.ptr39 = getelementptr inbounds i8, ptr %39, i64 32
  br label %cond.end48

cond.false40:                                     ; preds = %cond.end33
  %40 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE_HALF, i32 0, i32 6), align 8, !tbaa !8
  %buffer41 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %40, i32 0, i32 12
  %41 = load ptr, ptr %buffer41, align 8, !tbaa !14
  %42 = load i64, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE_HALF, i32 0, i32 1), align 8, !tbaa !15
  %43 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE_HALF, i32 0, i32 6), align 8, !tbaa !8
  %cs42 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %43, i32 0, i32 5
  %44 = load i64, ptr %cs42, align 8, !tbaa !16
  %mul43 = mul i64 %42, %44
  %add.ptr44 = getelementptr inbounds %struct.dcomplex, ptr %41, i64 %mul43
  %45 = load i64, ptr @FLA_MINUS_ONE_HALF, align 8, !tbaa !17
  %46 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE_HALF, i32 0, i32 6), align 8, !tbaa !8
  %rs45 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %46, i32 0, i32 4
  %47 = load i64, ptr %rs45, align 8, !tbaa !18
  %mul46 = mul i64 %45, %47
  %add.ptr47 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr44, i64 %mul46
  br label %cond.end48

cond.end48:                                       ; preds = %cond.false40, %cond.true37
  %cond49 = phi ptr [ %add.ptr39, %cond.true37 ], [ %add.ptr47, %cond.false40 ]
  store ptr %cond49, ptr %buff_m1h, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  store i32 0, ptr %i, align 4, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end48
  %48 = load i32, ptr %i, align 4, !tbaa !4
  %49 = load i32, ptr %m_AB.addr, align 4, !tbaa !4
  %cmp50 = icmp slt i32 %48, %49
  br i1 %cmp50, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %A00) #4
  %50 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %51 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul51 = mul nsw i32 0, %51
  %idx.ext = sext i32 %mul51 to i64
  %add.ptr52 = getelementptr inbounds %struct.dcomplex, ptr %50, i64 %idx.ext
  %52 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul53 = mul nsw i32 0, %52
  %idx.ext54 = sext i32 %mul53 to i64
  %add.ptr55 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr52, i64 %idx.ext54
  store ptr %add.ptr55, ptr %A00, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %a10t) #4
  %53 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %54 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul56 = mul nsw i32 0, %54
  %idx.ext57 = sext i32 %mul56 to i64
  %add.ptr58 = getelementptr inbounds %struct.dcomplex, ptr %53, i64 %idx.ext57
  %55 = load i32, ptr %i, align 4, !tbaa !4
  %56 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul59 = mul nsw i32 %55, %56
  %idx.ext60 = sext i32 %mul59 to i64
  %add.ptr61 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr58, i64 %idx.ext60
  store ptr %add.ptr61, ptr %a10t, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %alpha11) #4
  %57 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %58 = load i32, ptr %i, align 4, !tbaa !4
  %59 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul62 = mul nsw i32 %58, %59
  %idx.ext63 = sext i32 %mul62 to i64
  %add.ptr64 = getelementptr inbounds %struct.dcomplex, ptr %57, i64 %idx.ext63
  %60 = load i32, ptr %i, align 4, !tbaa !4
  %61 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul65 = mul nsw i32 %60, %61
  %idx.ext66 = sext i32 %mul65 to i64
  %add.ptr67 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr64, i64 %idx.ext66
  store ptr %add.ptr67, ptr %alpha11, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %y10t) #4
  %62 = load ptr, ptr %buff_y.addr, align 8, !tbaa !19
  %63 = load i32, ptr %inc_y.addr, align 4, !tbaa !4
  %mul68 = mul nsw i32 0, %63
  %idx.ext69 = sext i32 %mul68 to i64
  %add.ptr70 = getelementptr inbounds %struct.dcomplex, ptr %62, i64 %idx.ext69
  store ptr %add.ptr70, ptr %y10t, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %B00) #4
  %64 = load ptr, ptr %buff_B.addr, align 8, !tbaa !19
  %65 = load i32, ptr %cs_B.addr, align 4, !tbaa !4
  %mul71 = mul nsw i32 0, %65
  %idx.ext72 = sext i32 %mul71 to i64
  %add.ptr73 = getelementptr inbounds %struct.dcomplex, ptr %64, i64 %idx.ext72
  %66 = load i32, ptr %rs_B.addr, align 4, !tbaa !4
  %mul74 = mul nsw i32 0, %66
  %idx.ext75 = sext i32 %mul74 to i64
  %add.ptr76 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr73, i64 %idx.ext75
  store ptr %add.ptr76, ptr %B00, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %b10t) #4
  %67 = load ptr, ptr %buff_B.addr, align 8, !tbaa !19
  %68 = load i32, ptr %cs_B.addr, align 4, !tbaa !4
  %mul77 = mul nsw i32 0, %68
  %idx.ext78 = sext i32 %mul77 to i64
  %add.ptr79 = getelementptr inbounds %struct.dcomplex, ptr %67, i64 %idx.ext78
  %69 = load i32, ptr %i, align 4, !tbaa !4
  %70 = load i32, ptr %rs_B.addr, align 4, !tbaa !4
  %mul80 = mul nsw i32 %69, %70
  %idx.ext81 = sext i32 %mul80 to i64
  %add.ptr82 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr79, i64 %idx.ext81
  store ptr %add.ptr82, ptr %b10t, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %beta11) #4
  %71 = load ptr, ptr %buff_B.addr, align 8, !tbaa !19
  %72 = load i32, ptr %i, align 4, !tbaa !4
  %73 = load i32, ptr %cs_B.addr, align 4, !tbaa !4
  %mul83 = mul nsw i32 %72, %73
  %idx.ext84 = sext i32 %mul83 to i64
  %add.ptr85 = getelementptr inbounds %struct.dcomplex, ptr %71, i64 %idx.ext84
  %74 = load i32, ptr %i, align 4, !tbaa !4
  %75 = load i32, ptr %rs_B.addr, align 4, !tbaa !4
  %mul86 = mul nsw i32 %74, %75
  %idx.ext87 = sext i32 %mul86 to i64
  %add.ptr88 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr85, i64 %idx.ext87
  store ptr %add.ptr88, ptr %beta11, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 4, ptr %m_behind) #4
  %76 = load i32, ptr %i, align 4, !tbaa !4
  store i32 %76, ptr %m_behind, align 4, !tbaa !4
  %77 = load i32, ptr %m_behind, align 4, !tbaa !4
  %78 = load ptr, ptr %buff_1, align 8, !tbaa !19
  %79 = load ptr, ptr %A00, align 8, !tbaa !19
  %80 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %81 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %82 = load ptr, ptr %b10t, align 8, !tbaa !19
  %83 = load i32, ptr %cs_B.addr, align 4, !tbaa !4
  %84 = load ptr, ptr %buff_0, align 8, !tbaa !19
  %85 = load ptr, ptr %y10t, align 8, !tbaa !19
  %86 = load i32, ptr %inc_y.addr, align 4, !tbaa !4
  call void @bl1_zhemv(i32 noundef 200, i32 noundef 501, i32 noundef %77, ptr noundef %78, ptr noundef %79, i32 noundef %80, i32 noundef %81, ptr noundef %82, i32 noundef %83, ptr noundef %84, ptr noundef %85, i32 noundef %86)
  %87 = load i32, ptr %m_behind, align 4, !tbaa !4
  %88 = load ptr, ptr %B00, align 8, !tbaa !19
  %89 = load i32, ptr %rs_B.addr, align 4, !tbaa !4
  %90 = load i32, ptr %cs_B.addr, align 4, !tbaa !4
  %91 = load ptr, ptr %a10t, align 8, !tbaa !19
  %92 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  call void @bl1_ztrsv(i32 noundef 200, i32 noundef 102, i32 noundef 400, i32 noundef %87, ptr noundef %88, i32 noundef %89, i32 noundef %90, ptr noundef %91, i32 noundef %92)
  %93 = load i32, ptr %m_behind, align 4, !tbaa !4
  %94 = load ptr, ptr %buff_m1h, align 8, !tbaa !19
  %95 = load ptr, ptr %y10t, align 8, !tbaa !19
  %96 = load i32, ptr %inc_y.addr, align 4, !tbaa !4
  %97 = load ptr, ptr %a10t, align 8, !tbaa !19
  %98 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  call void @bl1_zaxpyv(i32 noundef 500, i32 noundef %93, ptr noundef %94, ptr noundef %95, i32 noundef %96, ptr noundef %97, i32 noundef %98)
  %99 = load i32, ptr %m_behind, align 4, !tbaa !4
  %100 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %101 = load ptr, ptr %a10t, align 8, !tbaa !19
  %102 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %103 = load ptr, ptr %b10t, align 8, !tbaa !19
  %104 = load i32, ptr %cs_B.addr, align 4, !tbaa !4
  %105 = load ptr, ptr %buff_1, align 8, !tbaa !19
  %106 = load ptr, ptr %alpha11, align 8, !tbaa !19
  call void @bl1_zdot2s(i32 noundef 501, i32 noundef %99, ptr noundef %100, ptr noundef %101, i32 noundef %102, ptr noundef %103, i32 noundef %104, ptr noundef %105, ptr noundef %106)
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #4
  %107 = load ptr, ptr %beta11, align 8, !tbaa !19
  %real = getelementptr inbounds %struct.dcomplex, ptr %107, i32 0, i32 0
  %108 = load double, ptr %real, align 8, !tbaa !31
  %cmp89 = fcmp ole double %108, 0.000000e+00
  br i1 %cmp89, label %cond.true90, label %cond.false92

cond.true90:                                      ; preds = %for.body
  %109 = load ptr, ptr %beta11, align 8, !tbaa !19
  %real91 = getelementptr inbounds %struct.dcomplex, ptr %109, i32 0, i32 0
  %110 = load double, ptr %real91, align 8, !tbaa !31
  %fneg = fneg double %110
  br label %cond.end94

cond.false92:                                     ; preds = %for.body
  %111 = load ptr, ptr %beta11, align 8, !tbaa !19
  %real93 = getelementptr inbounds %struct.dcomplex, ptr %111, i32 0, i32 0
  %112 = load double, ptr %real93, align 8, !tbaa !31
  br label %cond.end94

cond.end94:                                       ; preds = %cond.false92, %cond.true90
  %cond95 = phi double [ %fneg, %cond.true90 ], [ %112, %cond.false92 ]
  %113 = load ptr, ptr %beta11, align 8, !tbaa !19
  %imag = getelementptr inbounds %struct.dcomplex, ptr %113, i32 0, i32 1
  %114 = load double, ptr %imag, align 8, !tbaa !33
  %cmp96 = fcmp ole double %114, 0.000000e+00
  br i1 %cmp96, label %cond.true97, label %cond.false100

cond.true97:                                      ; preds = %cond.end94
  %115 = load ptr, ptr %beta11, align 8, !tbaa !19
  %imag98 = getelementptr inbounds %struct.dcomplex, ptr %115, i32 0, i32 1
  %116 = load double, ptr %imag98, align 8, !tbaa !33
  %fneg99 = fneg double %116
  br label %cond.end102

cond.false100:                                    ; preds = %cond.end94
  %117 = load ptr, ptr %beta11, align 8, !tbaa !19
  %imag101 = getelementptr inbounds %struct.dcomplex, ptr %117, i32 0, i32 1
  %118 = load double, ptr %imag101, align 8, !tbaa !33
  br label %cond.end102

cond.end102:                                      ; preds = %cond.false100, %cond.true97
  %cond103 = phi double [ %fneg99, %cond.true97 ], [ %118, %cond.false100 ]
  %cmp104 = fcmp ogt double %cond95, %cond103
  br i1 %cmp104, label %cond.true105, label %cond.false115

cond.true105:                                     ; preds = %cond.end102
  %119 = load ptr, ptr %beta11, align 8, !tbaa !19
  %real106 = getelementptr inbounds %struct.dcomplex, ptr %119, i32 0, i32 0
  %120 = load double, ptr %real106, align 8, !tbaa !31
  %cmp107 = fcmp ole double %120, 0.000000e+00
  br i1 %cmp107, label %cond.true108, label %cond.false111

cond.true108:                                     ; preds = %cond.true105
  %121 = load ptr, ptr %beta11, align 8, !tbaa !19
  %real109 = getelementptr inbounds %struct.dcomplex, ptr %121, i32 0, i32 0
  %122 = load double, ptr %real109, align 8, !tbaa !31
  %fneg110 = fneg double %122
  br label %cond.end113

cond.false111:                                    ; preds = %cond.true105
  %123 = load ptr, ptr %beta11, align 8, !tbaa !19
  %real112 = getelementptr inbounds %struct.dcomplex, ptr %123, i32 0, i32 0
  %124 = load double, ptr %real112, align 8, !tbaa !31
  br label %cond.end113

cond.end113:                                      ; preds = %cond.false111, %cond.true108
  %cond114 = phi double [ %fneg110, %cond.true108 ], [ %124, %cond.false111 ]
  br label %cond.end125

cond.false115:                                    ; preds = %cond.end102
  %125 = load ptr, ptr %beta11, align 8, !tbaa !19
  %imag116 = getelementptr inbounds %struct.dcomplex, ptr %125, i32 0, i32 1
  %126 = load double, ptr %imag116, align 8, !tbaa !33
  %cmp117 = fcmp ole double %126, 0.000000e+00
  br i1 %cmp117, label %cond.true118, label %cond.false121

cond.true118:                                     ; preds = %cond.false115
  %127 = load ptr, ptr %beta11, align 8, !tbaa !19
  %imag119 = getelementptr inbounds %struct.dcomplex, ptr %127, i32 0, i32 1
  %128 = load double, ptr %imag119, align 8, !tbaa !33
  %fneg120 = fneg double %128
  br label %cond.end123

cond.false121:                                    ; preds = %cond.false115
  %129 = load ptr, ptr %beta11, align 8, !tbaa !19
  %imag122 = getelementptr inbounds %struct.dcomplex, ptr %129, i32 0, i32 1
  %130 = load double, ptr %imag122, align 8, !tbaa !33
  br label %cond.end123

cond.end123:                                      ; preds = %cond.false121, %cond.true118
  %cond124 = phi double [ %fneg120, %cond.true118 ], [ %130, %cond.false121 ]
  br label %cond.end125

cond.end125:                                      ; preds = %cond.end123, %cond.end113
  %cond126 = phi double [ %cond114, %cond.end113 ], [ %cond124, %cond.end123 ]
  store double %cond126, ptr %s, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(i64 8, ptr %ar_s) #4
  %131 = load ptr, ptr %beta11, align 8, !tbaa !19
  %real127 = getelementptr inbounds %struct.dcomplex, ptr %131, i32 0, i32 0
  %132 = load double, ptr %real127, align 8, !tbaa !31
  %133 = load double, ptr %s, align 8, !tbaa !24
  %div = fdiv double %132, %133
  store double %div, ptr %ar_s, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(i64 8, ptr %ai_s) #4
  %134 = load ptr, ptr %beta11, align 8, !tbaa !19
  %imag128 = getelementptr inbounds %struct.dcomplex, ptr %134, i32 0, i32 1
  %135 = load double, ptr %imag128, align 8, !tbaa !33
  %136 = load double, ptr %s, align 8, !tbaa !24
  %div129 = fdiv double %135, %136
  store double %div129, ptr %ai_s, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(i64 8, ptr %yrt) #4
  %137 = load ptr, ptr %alpha11, align 8, !tbaa !19
  %real130 = getelementptr inbounds %struct.dcomplex, ptr %137, i32 0, i32 0
  %138 = load double, ptr %real130, align 8, !tbaa !31
  store double %138, ptr %yrt, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(i64 8, ptr %temp) #4
  %139 = load double, ptr %ar_s, align 8, !tbaa !24
  %140 = load ptr, ptr %beta11, align 8, !tbaa !19
  %real131 = getelementptr inbounds %struct.dcomplex, ptr %140, i32 0, i32 0
  %141 = load double, ptr %real131, align 8, !tbaa !31
  %142 = load double, ptr %ai_s, align 8, !tbaa !24
  %143 = load ptr, ptr %beta11, align 8, !tbaa !19
  %imag133 = getelementptr inbounds %struct.dcomplex, ptr %143, i32 0, i32 1
  %144 = load double, ptr %imag133, align 8, !tbaa !33
  %mul134 = fmul double %142, %144
  %145 = call double @llvm.fmuladd.f64(double %139, double %141, double %mul134)
  store double %145, ptr %temp, align 8, !tbaa !24
  %146 = load double, ptr %yrt, align 8, !tbaa !24
  %147 = load double, ptr %ar_s, align 8, !tbaa !24
  %148 = load ptr, ptr %alpha11, align 8, !tbaa !19
  %imag136 = getelementptr inbounds %struct.dcomplex, ptr %148, i32 0, i32 1
  %149 = load double, ptr %imag136, align 8, !tbaa !33
  %150 = load double, ptr %ai_s, align 8, !tbaa !24
  %mul137 = fmul double %149, %150
  %151 = call double @llvm.fmuladd.f64(double %146, double %147, double %mul137)
  %152 = load double, ptr %temp, align 8, !tbaa !24
  %div138 = fdiv double %151, %152
  %153 = load ptr, ptr %alpha11, align 8, !tbaa !19
  %real139 = getelementptr inbounds %struct.dcomplex, ptr %153, i32 0, i32 0
  store double %div138, ptr %real139, align 8, !tbaa !31
  %154 = load ptr, ptr %alpha11, align 8, !tbaa !19
  %imag140 = getelementptr inbounds %struct.dcomplex, ptr %154, i32 0, i32 1
  %155 = load double, ptr %imag140, align 8, !tbaa !33
  %156 = load double, ptr %ar_s, align 8, !tbaa !24
  %157 = load double, ptr %yrt, align 8, !tbaa !24
  %158 = load double, ptr %ai_s, align 8, !tbaa !24
  %mul142 = fmul double %157, %158
  %neg = fneg double %mul142
  %159 = call double @llvm.fmuladd.f64(double %155, double %156, double %neg)
  %160 = load double, ptr %temp, align 8, !tbaa !24
  %div143 = fdiv double %159, %160
  %161 = load ptr, ptr %alpha11, align 8, !tbaa !19
  %imag144 = getelementptr inbounds %struct.dcomplex, ptr %161, i32 0, i32 1
  store double %div143, ptr %imag144, align 8, !tbaa !33
  call void @llvm.lifetime.end.p0(i64 8, ptr %temp) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %yrt) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %ai_s) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %ar_s) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %s145) #4
  %162 = load ptr, ptr %beta11, align 8, !tbaa !19
  %real146 = getelementptr inbounds %struct.dcomplex, ptr %162, i32 0, i32 0
  %163 = load double, ptr %real146, align 8, !tbaa !31
  %cmp147 = fcmp ole double %163, 0.000000e+00
  br i1 %cmp147, label %cond.true148, label %cond.false151

cond.true148:                                     ; preds = %cond.end125
  %164 = load ptr, ptr %beta11, align 8, !tbaa !19
  %real149 = getelementptr inbounds %struct.dcomplex, ptr %164, i32 0, i32 0
  %165 = load double, ptr %real149, align 8, !tbaa !31
  %fneg150 = fneg double %165
  br label %cond.end153

cond.false151:                                    ; preds = %cond.end125
  %166 = load ptr, ptr %beta11, align 8, !tbaa !19
  %real152 = getelementptr inbounds %struct.dcomplex, ptr %166, i32 0, i32 0
  %167 = load double, ptr %real152, align 8, !tbaa !31
  br label %cond.end153

cond.end153:                                      ; preds = %cond.false151, %cond.true148
  %cond154 = phi double [ %fneg150, %cond.true148 ], [ %167, %cond.false151 ]
  %168 = load ptr, ptr %beta11, align 8, !tbaa !19
  %imag155 = getelementptr inbounds %struct.dcomplex, ptr %168, i32 0, i32 1
  %169 = load double, ptr %imag155, align 8, !tbaa !33
  %cmp156 = fcmp ole double %169, 0.000000e+00
  br i1 %cmp156, label %cond.true157, label %cond.false160

cond.true157:                                     ; preds = %cond.end153
  %170 = load ptr, ptr %beta11, align 8, !tbaa !19
  %imag158 = getelementptr inbounds %struct.dcomplex, ptr %170, i32 0, i32 1
  %171 = load double, ptr %imag158, align 8, !tbaa !33
  %fneg159 = fneg double %171
  br label %cond.end162

cond.false160:                                    ; preds = %cond.end153
  %172 = load ptr, ptr %beta11, align 8, !tbaa !19
  %imag161 = getelementptr inbounds %struct.dcomplex, ptr %172, i32 0, i32 1
  %173 = load double, ptr %imag161, align 8, !tbaa !33
  br label %cond.end162

cond.end162:                                      ; preds = %cond.false160, %cond.true157
  %cond163 = phi double [ %fneg159, %cond.true157 ], [ %173, %cond.false160 ]
  %cmp164 = fcmp ogt double %cond154, %cond163
  br i1 %cmp164, label %cond.true165, label %cond.false175

cond.true165:                                     ; preds = %cond.end162
  %174 = load ptr, ptr %beta11, align 8, !tbaa !19
  %real166 = getelementptr inbounds %struct.dcomplex, ptr %174, i32 0, i32 0
  %175 = load double, ptr %real166, align 8, !tbaa !31
  %cmp167 = fcmp ole double %175, 0.000000e+00
  br i1 %cmp167, label %cond.true168, label %cond.false171

cond.true168:                                     ; preds = %cond.true165
  %176 = load ptr, ptr %beta11, align 8, !tbaa !19
  %real169 = getelementptr inbounds %struct.dcomplex, ptr %176, i32 0, i32 0
  %177 = load double, ptr %real169, align 8, !tbaa !31
  %fneg170 = fneg double %177
  br label %cond.end173

cond.false171:                                    ; preds = %cond.true165
  %178 = load ptr, ptr %beta11, align 8, !tbaa !19
  %real172 = getelementptr inbounds %struct.dcomplex, ptr %178, i32 0, i32 0
  %179 = load double, ptr %real172, align 8, !tbaa !31
  br label %cond.end173

cond.end173:                                      ; preds = %cond.false171, %cond.true168
  %cond174 = phi double [ %fneg170, %cond.true168 ], [ %179, %cond.false171 ]
  br label %cond.end185

cond.false175:                                    ; preds = %cond.end162
  %180 = load ptr, ptr %beta11, align 8, !tbaa !19
  %imag176 = getelementptr inbounds %struct.dcomplex, ptr %180, i32 0, i32 1
  %181 = load double, ptr %imag176, align 8, !tbaa !33
  %cmp177 = fcmp ole double %181, 0.000000e+00
  br i1 %cmp177, label %cond.true178, label %cond.false181

cond.true178:                                     ; preds = %cond.false175
  %182 = load ptr, ptr %beta11, align 8, !tbaa !19
  %imag179 = getelementptr inbounds %struct.dcomplex, ptr %182, i32 0, i32 1
  %183 = load double, ptr %imag179, align 8, !tbaa !33
  %fneg180 = fneg double %183
  br label %cond.end183

cond.false181:                                    ; preds = %cond.false175
  %184 = load ptr, ptr %beta11, align 8, !tbaa !19
  %imag182 = getelementptr inbounds %struct.dcomplex, ptr %184, i32 0, i32 1
  %185 = load double, ptr %imag182, align 8, !tbaa !33
  br label %cond.end183

cond.end183:                                      ; preds = %cond.false181, %cond.true178
  %cond184 = phi double [ %fneg180, %cond.true178 ], [ %185, %cond.false181 ]
  br label %cond.end185

cond.end185:                                      ; preds = %cond.end183, %cond.end173
  %cond186 = phi double [ %cond174, %cond.end173 ], [ %cond184, %cond.end183 ]
  store double %cond186, ptr %s145, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(i64 8, ptr %ar_s187) #4
  %186 = load ptr, ptr %beta11, align 8, !tbaa !19
  %real188 = getelementptr inbounds %struct.dcomplex, ptr %186, i32 0, i32 0
  %187 = load double, ptr %real188, align 8, !tbaa !31
  %188 = load double, ptr %s145, align 8, !tbaa !24
  %div189 = fdiv double %187, %188
  store double %div189, ptr %ar_s187, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(i64 8, ptr %ai_s190) #4
  %189 = load ptr, ptr %beta11, align 8, !tbaa !19
  %imag191 = getelementptr inbounds %struct.dcomplex, ptr %189, i32 0, i32 1
  %190 = load double, ptr %imag191, align 8, !tbaa !33
  %191 = load double, ptr %s145, align 8, !tbaa !24
  %div192 = fdiv double %190, %191
  store double %div192, ptr %ai_s190, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(i64 8, ptr %yrt193) #4
  %192 = load ptr, ptr %alpha11, align 8, !tbaa !19
  %real194 = getelementptr inbounds %struct.dcomplex, ptr %192, i32 0, i32 0
  %193 = load double, ptr %real194, align 8, !tbaa !31
  store double %193, ptr %yrt193, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(i64 8, ptr %temp195) #4
  %194 = load double, ptr %ar_s187, align 8, !tbaa !24
  %195 = load ptr, ptr %beta11, align 8, !tbaa !19
  %real196 = getelementptr inbounds %struct.dcomplex, ptr %195, i32 0, i32 0
  %196 = load double, ptr %real196, align 8, !tbaa !31
  %197 = load double, ptr %ai_s190, align 8, !tbaa !24
  %198 = load ptr, ptr %beta11, align 8, !tbaa !19
  %imag198 = getelementptr inbounds %struct.dcomplex, ptr %198, i32 0, i32 1
  %199 = load double, ptr %imag198, align 8, !tbaa !33
  %mul199 = fmul double %197, %199
  %200 = call double @llvm.fmuladd.f64(double %194, double %196, double %mul199)
  store double %200, ptr %temp195, align 8, !tbaa !24
  %201 = load double, ptr %yrt193, align 8, !tbaa !24
  %202 = load double, ptr %ar_s187, align 8, !tbaa !24
  %203 = load ptr, ptr %alpha11, align 8, !tbaa !19
  %imag201 = getelementptr inbounds %struct.dcomplex, ptr %203, i32 0, i32 1
  %204 = load double, ptr %imag201, align 8, !tbaa !33
  %205 = load double, ptr %ai_s190, align 8, !tbaa !24
  %mul202 = fmul double %204, %205
  %206 = call double @llvm.fmuladd.f64(double %201, double %202, double %mul202)
  %207 = load double, ptr %temp195, align 8, !tbaa !24
  %div203 = fdiv double %206, %207
  %208 = load ptr, ptr %alpha11, align 8, !tbaa !19
  %real204 = getelementptr inbounds %struct.dcomplex, ptr %208, i32 0, i32 0
  store double %div203, ptr %real204, align 8, !tbaa !31
  %209 = load ptr, ptr %alpha11, align 8, !tbaa !19
  %imag205 = getelementptr inbounds %struct.dcomplex, ptr %209, i32 0, i32 1
  %210 = load double, ptr %imag205, align 8, !tbaa !33
  %211 = load double, ptr %ar_s187, align 8, !tbaa !24
  %212 = load double, ptr %yrt193, align 8, !tbaa !24
  %213 = load double, ptr %ai_s190, align 8, !tbaa !24
  %mul207 = fmul double %212, %213
  %neg208 = fneg double %mul207
  %214 = call double @llvm.fmuladd.f64(double %210, double %211, double %neg208)
  %215 = load double, ptr %temp195, align 8, !tbaa !24
  %div209 = fdiv double %214, %215
  %216 = load ptr, ptr %alpha11, align 8, !tbaa !19
  %imag210 = getelementptr inbounds %struct.dcomplex, ptr %216, i32 0, i32 1
  store double %div209, ptr %imag210, align 8, !tbaa !33
  call void @llvm.lifetime.end.p0(i64 8, ptr %temp195) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %yrt193) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %ai_s190) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %ar_s187) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %s145) #4
  %217 = load i32, ptr %m_behind, align 4, !tbaa !4
  %218 = load ptr, ptr %buff_m1h, align 8, !tbaa !19
  %219 = load ptr, ptr %y10t, align 8, !tbaa !19
  %220 = load i32, ptr %inc_y.addr, align 4, !tbaa !4
  %221 = load ptr, ptr %a10t, align 8, !tbaa !19
  %222 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  call void @bl1_zaxpyv(i32 noundef 500, i32 noundef %217, ptr noundef %218, ptr noundef %219, i32 noundef %220, ptr noundef %221, i32 noundef %222)
  %223 = load i32, ptr %m_behind, align 4, !tbaa !4
  %224 = load ptr, ptr %beta11, align 8, !tbaa !19
  %225 = load ptr, ptr %a10t, align 8, !tbaa !19
  %226 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  call void @bl1_zinvscalv(i32 noundef 500, i32 noundef %223, ptr noundef %224, ptr noundef %225, i32 noundef %226)
  call void @llvm.lifetime.end.p0(i64 4, ptr %m_behind) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %beta11) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %b10t) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %B00) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %y10t) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %alpha11) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %a10t) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %A00) #4
  br label %for.inc

for.inc:                                          ; preds = %cond.end185
  %227 = load i32, ptr %i, align 4, !tbaa !4
  %inc = add nsw i32 %227, 1
  store i32 %inc, ptr %i, align 4, !tbaa !4
  br label %for.cond, !llvm.loop !34

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_m1h) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_m1) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_0) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_1) #4
  ret i32 -1
}

declare void @bl1_shemv(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare void @bl1_strsv(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #2

declare void @bl1_saxpyv(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #2

declare void @bl1_sdot2s(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

declare void @bl1_sinvscalv(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare void @bl1_dhemv(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare void @bl1_dtrsv(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #2

declare void @bl1_daxpyv(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #2

declare void @bl1_ddot2s(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

declare void @bl1_dinvscalv(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare void @bl1_chemv(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare void @bl1_ctrsv(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #2

declare void @bl1_caxpyv(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #2

declare void @bl1_cdot2s(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

declare void @bl1_cinvscalv(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare void @bl1_zhemv(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare void @bl1_ztrsv(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #2

declare void @bl1_zaxpyv(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #2

declare void @bl1_zdot2s(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

declare void @bl1_zinvscalv(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="znver2" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="znver2" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

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
!27 = !{!28, !21, i64 0}
!28 = !{!"scomplex", !21, i64 0, !21, i64 4}
!29 = !{!28, !21, i64 4}
!30 = distinct !{!30, !23}
!31 = !{!32, !25, i64 0}
!32 = !{!"dcomplex", !25, i64 0, !25, i64 8}
!33 = !{!32, !25, i64 8}
!34 = distinct !{!34, !23}

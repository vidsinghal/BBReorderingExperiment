; ModuleID = 'samples/43.bc'
source_filename = "/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/lapack/dec/bsvd/v/flamec/FLA_Bsvd_sinval_v_opt_var1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FLA_Obj_view = type { i64, i64, i64, i64, i64, i64, ptr }
%struct.FLA_Obj_struct = type { i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr, i32, i32 }
%struct.scomplex = type { float, float }
%struct.dcomplex = type { double, double }

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Bsvd_sinval_v_opt_var1(ptr noundef byval(%struct.FLA_Obj_view) align 8 %tol, ptr noundef byval(%struct.FLA_Obj_view) align 8 %thresh, ptr noundef byval(%struct.FLA_Obj_view) align 8 %G, ptr noundef byval(%struct.FLA_Obj_view) align 8 %H, ptr noundef byval(%struct.FLA_Obj_view) align 8 %d, ptr noundef byval(%struct.FLA_Obj_view) align 8 %e, ptr noundef byval(%struct.FLA_Obj_view) align 8 %k) #0 {
entry:
  %datatype = alloca i32, align 4
  %m_A = alloca i32, align 4
  %n_GH = alloca i32, align 4
  %rs_G = alloca i32, align 4
  %cs_G = alloca i32, align 4
  %rs_H = alloca i32, align 4
  %cs_H = alloca i32, align 4
  %inc_d = alloca i32, align 4
  %inc_e = alloca i32, align 4
  %buff_tol = alloca ptr, align 8
  %buff_thresh = alloca ptr, align 8
  %buff_G = alloca ptr, align 8
  %buff_H = alloca ptr, align 8
  %buff_d = alloca ptr, align 8
  %buff_e = alloca ptr, align 8
  %buff_k = alloca ptr, align 8
  %buff_tol166 = alloca ptr, align 8
  %buff_thresh190 = alloca ptr, align 8
  %buff_G214 = alloca ptr, align 8
  %buff_H238 = alloca ptr, align 8
  %buff_d262 = alloca ptr, align 8
  %buff_e286 = alloca ptr, align 8
  %buff_k310 = alloca ptr, align 8
  %call = call i32 @FLA_Obj_datatype(ptr noundef byval(%struct.FLA_Obj_view) align 8 %d)
  store i32 %call, ptr %datatype, align 4
  %call1 = call i64 @FLA_Obj_vector_dim(ptr noundef byval(%struct.FLA_Obj_view) align 8 %d)
  %conv = trunc i64 %call1 to i32
  store i32 %conv, ptr %m_A, align 4
  %call2 = call i64 @FLA_Obj_width(ptr noundef byval(%struct.FLA_Obj_view) align 8 %G)
  %conv3 = trunc i64 %call2 to i32
  store i32 %conv3, ptr %n_GH, align 4
  %call4 = call i64 @FLA_Obj_row_stride(ptr noundef byval(%struct.FLA_Obj_view) align 8 %G)
  %conv5 = trunc i64 %call4 to i32
  store i32 %conv5, ptr %rs_G, align 4
  %call6 = call i64 @FLA_Obj_col_stride(ptr noundef byval(%struct.FLA_Obj_view) align 8 %G)
  %conv7 = trunc i64 %call6 to i32
  store i32 %conv7, ptr %cs_G, align 4
  %call8 = call i64 @FLA_Obj_row_stride(ptr noundef byval(%struct.FLA_Obj_view) align 8 %H)
  %conv9 = trunc i64 %call8 to i32
  store i32 %conv9, ptr %rs_H, align 4
  %call10 = call i64 @FLA_Obj_col_stride(ptr noundef byval(%struct.FLA_Obj_view) align 8 %H)
  %conv11 = trunc i64 %call10 to i32
  store i32 %conv11, ptr %cs_H, align 4
  %call12 = call i64 @FLA_Obj_vector_inc(ptr noundef byval(%struct.FLA_Obj_view) align 8 %d)
  %conv13 = trunc i64 %call12 to i32
  store i32 %conv13, ptr %inc_d, align 4
  %call14 = call i64 @FLA_Obj_vector_inc(ptr noundef byval(%struct.FLA_Obj_view) align 8 %e)
  %conv15 = trunc i64 %call14 to i32
  store i32 %conv15, ptr %inc_e, align 4
  %0 = load i32, ptr %datatype, align 4
  switch i32 %0, label %sw.epilog [
    i32 100, label %sw.bb
    i32 101, label %sw.bb165
  ]

sw.bb:                                            ; preds = %entry
  %base = getelementptr inbounds %struct.FLA_Obj_view, ptr %tol, i32 0, i32 6
  %1 = load ptr, ptr %base, align 8
  %datatype16 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %1, i32 0, i32 0
  %2 = load i32, ptr %datatype16, align 8
  %cmp = icmp eq i32 %2, 105
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb
  %base18 = getelementptr inbounds %struct.FLA_Obj_view, ptr %tol, i32 0, i32 6
  %3 = load ptr, ptr %base18, align 8
  %buffer = getelementptr inbounds %struct.FLA_Obj_struct, ptr %3, i32 0, i32 12
  %4 = load ptr, ptr %buffer, align 8
  %add.ptr = getelementptr inbounds i8, ptr %4, i64 8
  br label %cond.end

cond.false:                                       ; preds = %sw.bb
  %base19 = getelementptr inbounds %struct.FLA_Obj_view, ptr %tol, i32 0, i32 6
  %5 = load ptr, ptr %base19, align 8
  %buffer20 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %5, i32 0, i32 12
  %6 = load ptr, ptr %buffer20, align 8
  %offn = getelementptr inbounds %struct.FLA_Obj_view, ptr %tol, i32 0, i32 1
  %7 = load i64, ptr %offn, align 8
  %base21 = getelementptr inbounds %struct.FLA_Obj_view, ptr %tol, i32 0, i32 6
  %8 = load ptr, ptr %base21, align 8
  %cs = getelementptr inbounds %struct.FLA_Obj_struct, ptr %8, i32 0, i32 5
  %9 = load i64, ptr %cs, align 8
  %mul = mul i64 %7, %9
  %add.ptr22 = getelementptr inbounds float, ptr %6, i64 %mul
  %offm = getelementptr inbounds %struct.FLA_Obj_view, ptr %tol, i32 0, i32 0
  %10 = load i64, ptr %offm, align 8
  %base23 = getelementptr inbounds %struct.FLA_Obj_view, ptr %tol, i32 0, i32 6
  %11 = load ptr, ptr %base23, align 8
  %rs = getelementptr inbounds %struct.FLA_Obj_struct, ptr %11, i32 0, i32 4
  %12 = load i64, ptr %rs, align 8
  %mul24 = mul i64 %10, %12
  %add.ptr25 = getelementptr inbounds float, ptr %add.ptr22, i64 %mul24
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %add.ptr, %cond.true ], [ %add.ptr25, %cond.false ]
  store ptr %cond, ptr %buff_tol, align 8
  %base26 = getelementptr inbounds %struct.FLA_Obj_view, ptr %thresh, i32 0, i32 6
  %13 = load ptr, ptr %base26, align 8
  %datatype27 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %13, i32 0, i32 0
  %14 = load i32, ptr %datatype27, align 8
  %cmp28 = icmp eq i32 %14, 105
  br i1 %cmp28, label %cond.true30, label %cond.false34

cond.true30:                                      ; preds = %cond.end
  %base31 = getelementptr inbounds %struct.FLA_Obj_view, ptr %thresh, i32 0, i32 6
  %15 = load ptr, ptr %base31, align 8
  %buffer32 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %15, i32 0, i32 12
  %16 = load ptr, ptr %buffer32, align 8
  %add.ptr33 = getelementptr inbounds i8, ptr %16, i64 8
  br label %cond.end47

cond.false34:                                     ; preds = %cond.end
  %base35 = getelementptr inbounds %struct.FLA_Obj_view, ptr %thresh, i32 0, i32 6
  %17 = load ptr, ptr %base35, align 8
  %buffer36 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %17, i32 0, i32 12
  %18 = load ptr, ptr %buffer36, align 8
  %offn37 = getelementptr inbounds %struct.FLA_Obj_view, ptr %thresh, i32 0, i32 1
  %19 = load i64, ptr %offn37, align 8
  %base38 = getelementptr inbounds %struct.FLA_Obj_view, ptr %thresh, i32 0, i32 6
  %20 = load ptr, ptr %base38, align 8
  %cs39 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %20, i32 0, i32 5
  %21 = load i64, ptr %cs39, align 8
  %mul40 = mul i64 %19, %21
  %add.ptr41 = getelementptr inbounds float, ptr %18, i64 %mul40
  %offm42 = getelementptr inbounds %struct.FLA_Obj_view, ptr %thresh, i32 0, i32 0
  %22 = load i64, ptr %offm42, align 8
  %base43 = getelementptr inbounds %struct.FLA_Obj_view, ptr %thresh, i32 0, i32 6
  %23 = load ptr, ptr %base43, align 8
  %rs44 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %23, i32 0, i32 4
  %24 = load i64, ptr %rs44, align 8
  %mul45 = mul i64 %22, %24
  %add.ptr46 = getelementptr inbounds float, ptr %add.ptr41, i64 %mul45
  br label %cond.end47

cond.end47:                                       ; preds = %cond.false34, %cond.true30
  %cond48 = phi ptr [ %add.ptr33, %cond.true30 ], [ %add.ptr46, %cond.false34 ]
  store ptr %cond48, ptr %buff_thresh, align 8
  %base49 = getelementptr inbounds %struct.FLA_Obj_view, ptr %G, i32 0, i32 6
  %25 = load ptr, ptr %base49, align 8
  %datatype50 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %25, i32 0, i32 0
  %26 = load i32, ptr %datatype50, align 8
  %cmp51 = icmp eq i32 %26, 105
  br i1 %cmp51, label %cond.true53, label %cond.false57

cond.true53:                                      ; preds = %cond.end47
  %base54 = getelementptr inbounds %struct.FLA_Obj_view, ptr %G, i32 0, i32 6
  %27 = load ptr, ptr %base54, align 8
  %buffer55 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %27, i32 0, i32 12
  %28 = load ptr, ptr %buffer55, align 8
  %add.ptr56 = getelementptr inbounds i8, ptr %28, i64 24
  br label %cond.end70

cond.false57:                                     ; preds = %cond.end47
  %base58 = getelementptr inbounds %struct.FLA_Obj_view, ptr %G, i32 0, i32 6
  %29 = load ptr, ptr %base58, align 8
  %buffer59 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %29, i32 0, i32 12
  %30 = load ptr, ptr %buffer59, align 8
  %offn60 = getelementptr inbounds %struct.FLA_Obj_view, ptr %G, i32 0, i32 1
  %31 = load i64, ptr %offn60, align 8
  %base61 = getelementptr inbounds %struct.FLA_Obj_view, ptr %G, i32 0, i32 6
  %32 = load ptr, ptr %base61, align 8
  %cs62 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %32, i32 0, i32 5
  %33 = load i64, ptr %cs62, align 8
  %mul63 = mul i64 %31, %33
  %add.ptr64 = getelementptr inbounds %struct.scomplex, ptr %30, i64 %mul63
  %offm65 = getelementptr inbounds %struct.FLA_Obj_view, ptr %G, i32 0, i32 0
  %34 = load i64, ptr %offm65, align 8
  %base66 = getelementptr inbounds %struct.FLA_Obj_view, ptr %G, i32 0, i32 6
  %35 = load ptr, ptr %base66, align 8
  %rs67 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %35, i32 0, i32 4
  %36 = load i64, ptr %rs67, align 8
  %mul68 = mul i64 %34, %36
  %add.ptr69 = getelementptr inbounds %struct.scomplex, ptr %add.ptr64, i64 %mul68
  br label %cond.end70

cond.end70:                                       ; preds = %cond.false57, %cond.true53
  %cond71 = phi ptr [ %add.ptr56, %cond.true53 ], [ %add.ptr69, %cond.false57 ]
  store ptr %cond71, ptr %buff_G, align 8
  %base72 = getelementptr inbounds %struct.FLA_Obj_view, ptr %H, i32 0, i32 6
  %37 = load ptr, ptr %base72, align 8
  %datatype73 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %37, i32 0, i32 0
  %38 = load i32, ptr %datatype73, align 8
  %cmp74 = icmp eq i32 %38, 105
  br i1 %cmp74, label %cond.true76, label %cond.false80

cond.true76:                                      ; preds = %cond.end70
  %base77 = getelementptr inbounds %struct.FLA_Obj_view, ptr %H, i32 0, i32 6
  %39 = load ptr, ptr %base77, align 8
  %buffer78 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %39, i32 0, i32 12
  %40 = load ptr, ptr %buffer78, align 8
  %add.ptr79 = getelementptr inbounds i8, ptr %40, i64 24
  br label %cond.end93

cond.false80:                                     ; preds = %cond.end70
  %base81 = getelementptr inbounds %struct.FLA_Obj_view, ptr %H, i32 0, i32 6
  %41 = load ptr, ptr %base81, align 8
  %buffer82 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %41, i32 0, i32 12
  %42 = load ptr, ptr %buffer82, align 8
  %offn83 = getelementptr inbounds %struct.FLA_Obj_view, ptr %H, i32 0, i32 1
  %43 = load i64, ptr %offn83, align 8
  %base84 = getelementptr inbounds %struct.FLA_Obj_view, ptr %H, i32 0, i32 6
  %44 = load ptr, ptr %base84, align 8
  %cs85 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %44, i32 0, i32 5
  %45 = load i64, ptr %cs85, align 8
  %mul86 = mul i64 %43, %45
  %add.ptr87 = getelementptr inbounds %struct.scomplex, ptr %42, i64 %mul86
  %offm88 = getelementptr inbounds %struct.FLA_Obj_view, ptr %H, i32 0, i32 0
  %46 = load i64, ptr %offm88, align 8
  %base89 = getelementptr inbounds %struct.FLA_Obj_view, ptr %H, i32 0, i32 6
  %47 = load ptr, ptr %base89, align 8
  %rs90 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %47, i32 0, i32 4
  %48 = load i64, ptr %rs90, align 8
  %mul91 = mul i64 %46, %48
  %add.ptr92 = getelementptr inbounds %struct.scomplex, ptr %add.ptr87, i64 %mul91
  br label %cond.end93

cond.end93:                                       ; preds = %cond.false80, %cond.true76
  %cond94 = phi ptr [ %add.ptr79, %cond.true76 ], [ %add.ptr92, %cond.false80 ]
  store ptr %cond94, ptr %buff_H, align 8
  %base95 = getelementptr inbounds %struct.FLA_Obj_view, ptr %d, i32 0, i32 6
  %49 = load ptr, ptr %base95, align 8
  %datatype96 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %49, i32 0, i32 0
  %50 = load i32, ptr %datatype96, align 8
  %cmp97 = icmp eq i32 %50, 105
  br i1 %cmp97, label %cond.true99, label %cond.false103

cond.true99:                                      ; preds = %cond.end93
  %base100 = getelementptr inbounds %struct.FLA_Obj_view, ptr %d, i32 0, i32 6
  %51 = load ptr, ptr %base100, align 8
  %buffer101 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %51, i32 0, i32 12
  %52 = load ptr, ptr %buffer101, align 8
  %add.ptr102 = getelementptr inbounds i8, ptr %52, i64 8
  br label %cond.end116

cond.false103:                                    ; preds = %cond.end93
  %base104 = getelementptr inbounds %struct.FLA_Obj_view, ptr %d, i32 0, i32 6
  %53 = load ptr, ptr %base104, align 8
  %buffer105 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %53, i32 0, i32 12
  %54 = load ptr, ptr %buffer105, align 8
  %offn106 = getelementptr inbounds %struct.FLA_Obj_view, ptr %d, i32 0, i32 1
  %55 = load i64, ptr %offn106, align 8
  %base107 = getelementptr inbounds %struct.FLA_Obj_view, ptr %d, i32 0, i32 6
  %56 = load ptr, ptr %base107, align 8
  %cs108 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %56, i32 0, i32 5
  %57 = load i64, ptr %cs108, align 8
  %mul109 = mul i64 %55, %57
  %add.ptr110 = getelementptr inbounds float, ptr %54, i64 %mul109
  %offm111 = getelementptr inbounds %struct.FLA_Obj_view, ptr %d, i32 0, i32 0
  %58 = load i64, ptr %offm111, align 8
  %base112 = getelementptr inbounds %struct.FLA_Obj_view, ptr %d, i32 0, i32 6
  %59 = load ptr, ptr %base112, align 8
  %rs113 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %59, i32 0, i32 4
  %60 = load i64, ptr %rs113, align 8
  %mul114 = mul i64 %58, %60
  %add.ptr115 = getelementptr inbounds float, ptr %add.ptr110, i64 %mul114
  br label %cond.end116

cond.end116:                                      ; preds = %cond.false103, %cond.true99
  %cond117 = phi ptr [ %add.ptr102, %cond.true99 ], [ %add.ptr115, %cond.false103 ]
  store ptr %cond117, ptr %buff_d, align 8
  %base118 = getelementptr inbounds %struct.FLA_Obj_view, ptr %e, i32 0, i32 6
  %61 = load ptr, ptr %base118, align 8
  %datatype119 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %61, i32 0, i32 0
  %62 = load i32, ptr %datatype119, align 8
  %cmp120 = icmp eq i32 %62, 105
  br i1 %cmp120, label %cond.true122, label %cond.false126

cond.true122:                                     ; preds = %cond.end116
  %base123 = getelementptr inbounds %struct.FLA_Obj_view, ptr %e, i32 0, i32 6
  %63 = load ptr, ptr %base123, align 8
  %buffer124 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %63, i32 0, i32 12
  %64 = load ptr, ptr %buffer124, align 8
  %add.ptr125 = getelementptr inbounds i8, ptr %64, i64 8
  br label %cond.end139

cond.false126:                                    ; preds = %cond.end116
  %base127 = getelementptr inbounds %struct.FLA_Obj_view, ptr %e, i32 0, i32 6
  %65 = load ptr, ptr %base127, align 8
  %buffer128 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %65, i32 0, i32 12
  %66 = load ptr, ptr %buffer128, align 8
  %offn129 = getelementptr inbounds %struct.FLA_Obj_view, ptr %e, i32 0, i32 1
  %67 = load i64, ptr %offn129, align 8
  %base130 = getelementptr inbounds %struct.FLA_Obj_view, ptr %e, i32 0, i32 6
  %68 = load ptr, ptr %base130, align 8
  %cs131 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %68, i32 0, i32 5
  %69 = load i64, ptr %cs131, align 8
  %mul132 = mul i64 %67, %69
  %add.ptr133 = getelementptr inbounds float, ptr %66, i64 %mul132
  %offm134 = getelementptr inbounds %struct.FLA_Obj_view, ptr %e, i32 0, i32 0
  %70 = load i64, ptr %offm134, align 8
  %base135 = getelementptr inbounds %struct.FLA_Obj_view, ptr %e, i32 0, i32 6
  %71 = load ptr, ptr %base135, align 8
  %rs136 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %71, i32 0, i32 4
  %72 = load i64, ptr %rs136, align 8
  %mul137 = mul i64 %70, %72
  %add.ptr138 = getelementptr inbounds float, ptr %add.ptr133, i64 %mul137
  br label %cond.end139

cond.end139:                                      ; preds = %cond.false126, %cond.true122
  %cond140 = phi ptr [ %add.ptr125, %cond.true122 ], [ %add.ptr138, %cond.false126 ]
  store ptr %cond140, ptr %buff_e, align 8
  %base141 = getelementptr inbounds %struct.FLA_Obj_view, ptr %k, i32 0, i32 6
  %73 = load ptr, ptr %base141, align 8
  %datatype142 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %73, i32 0, i32 0
  %74 = load i32, ptr %datatype142, align 8
  %cmp143 = icmp eq i32 %74, 105
  br i1 %cmp143, label %cond.true145, label %cond.false149

cond.true145:                                     ; preds = %cond.end139
  %base146 = getelementptr inbounds %struct.FLA_Obj_view, ptr %k, i32 0, i32 6
  %75 = load ptr, ptr %base146, align 8
  %buffer147 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %75, i32 0, i32 12
  %76 = load ptr, ptr %buffer147, align 8
  %add.ptr148 = getelementptr inbounds i8, ptr %76, i64 0
  br label %cond.end162

cond.false149:                                    ; preds = %cond.end139
  %base150 = getelementptr inbounds %struct.FLA_Obj_view, ptr %k, i32 0, i32 6
  %77 = load ptr, ptr %base150, align 8
  %buffer151 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %77, i32 0, i32 12
  %78 = load ptr, ptr %buffer151, align 8
  %offn152 = getelementptr inbounds %struct.FLA_Obj_view, ptr %k, i32 0, i32 1
  %79 = load i64, ptr %offn152, align 8
  %base153 = getelementptr inbounds %struct.FLA_Obj_view, ptr %k, i32 0, i32 6
  %80 = load ptr, ptr %base153, align 8
  %cs154 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %80, i32 0, i32 5
  %81 = load i64, ptr %cs154, align 8
  %mul155 = mul i64 %79, %81
  %add.ptr156 = getelementptr inbounds i32, ptr %78, i64 %mul155
  %offm157 = getelementptr inbounds %struct.FLA_Obj_view, ptr %k, i32 0, i32 0
  %82 = load i64, ptr %offm157, align 8
  %base158 = getelementptr inbounds %struct.FLA_Obj_view, ptr %k, i32 0, i32 6
  %83 = load ptr, ptr %base158, align 8
  %rs159 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %83, i32 0, i32 4
  %84 = load i64, ptr %rs159, align 8
  %mul160 = mul i64 %82, %84
  %add.ptr161 = getelementptr inbounds i32, ptr %add.ptr156, i64 %mul160
  br label %cond.end162

cond.end162:                                      ; preds = %cond.false149, %cond.true145
  %cond163 = phi ptr [ %add.ptr148, %cond.true145 ], [ %add.ptr161, %cond.false149 ]
  store ptr %cond163, ptr %buff_k, align 8
  %85 = load i32, ptr %m_A, align 4
  %86 = load i32, ptr %n_GH, align 4
  %87 = load ptr, ptr %buff_tol, align 8
  %88 = load float, ptr %87, align 4
  %89 = load ptr, ptr %buff_thresh, align 8
  %90 = load float, ptr %89, align 4
  %91 = load ptr, ptr %buff_G, align 8
  %92 = load i32, ptr %rs_G, align 4
  %93 = load i32, ptr %cs_G, align 4
  %94 = load ptr, ptr %buff_H, align 8
  %95 = load i32, ptr %rs_H, align 4
  %96 = load i32, ptr %cs_H, align 4
  %97 = load ptr, ptr %buff_d, align 8
  %98 = load i32, ptr %inc_d, align 4
  %99 = load ptr, ptr %buff_e, align 8
  %100 = load i32, ptr %inc_e, align 4
  %101 = load ptr, ptr %buff_k, align 8
  %call164 = call i32 @FLA_Bsvd_sinval_v_ops_var1(i32 noundef %85, i32 noundef %86, i32 noundef 9, float noundef %88, float noundef %90, ptr noundef %91, i32 noundef %92, i32 noundef %93, ptr noundef %94, i32 noundef %95, i32 noundef %96, ptr noundef %97, i32 noundef %98, ptr noundef %99, i32 noundef %100, ptr noundef %101)
  br label %sw.epilog

sw.bb165:                                         ; preds = %entry
  %base167 = getelementptr inbounds %struct.FLA_Obj_view, ptr %tol, i32 0, i32 6
  %102 = load ptr, ptr %base167, align 8
  %datatype168 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %102, i32 0, i32 0
  %103 = load i32, ptr %datatype168, align 8
  %cmp169 = icmp eq i32 %103, 105
  br i1 %cmp169, label %cond.true171, label %cond.false175

cond.true171:                                     ; preds = %sw.bb165
  %base172 = getelementptr inbounds %struct.FLA_Obj_view, ptr %tol, i32 0, i32 6
  %104 = load ptr, ptr %base172, align 8
  %buffer173 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %104, i32 0, i32 12
  %105 = load ptr, ptr %buffer173, align 8
  %add.ptr174 = getelementptr inbounds i8, ptr %105, i64 16
  br label %cond.end188

cond.false175:                                    ; preds = %sw.bb165
  %base176 = getelementptr inbounds %struct.FLA_Obj_view, ptr %tol, i32 0, i32 6
  %106 = load ptr, ptr %base176, align 8
  %buffer177 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %106, i32 0, i32 12
  %107 = load ptr, ptr %buffer177, align 8
  %offn178 = getelementptr inbounds %struct.FLA_Obj_view, ptr %tol, i32 0, i32 1
  %108 = load i64, ptr %offn178, align 8
  %base179 = getelementptr inbounds %struct.FLA_Obj_view, ptr %tol, i32 0, i32 6
  %109 = load ptr, ptr %base179, align 8
  %cs180 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %109, i32 0, i32 5
  %110 = load i64, ptr %cs180, align 8
  %mul181 = mul i64 %108, %110
  %add.ptr182 = getelementptr inbounds double, ptr %107, i64 %mul181
  %offm183 = getelementptr inbounds %struct.FLA_Obj_view, ptr %tol, i32 0, i32 0
  %111 = load i64, ptr %offm183, align 8
  %base184 = getelementptr inbounds %struct.FLA_Obj_view, ptr %tol, i32 0, i32 6
  %112 = load ptr, ptr %base184, align 8
  %rs185 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %112, i32 0, i32 4
  %113 = load i64, ptr %rs185, align 8
  %mul186 = mul i64 %111, %113
  %add.ptr187 = getelementptr inbounds double, ptr %add.ptr182, i64 %mul186
  br label %cond.end188

cond.end188:                                      ; preds = %cond.false175, %cond.true171
  %cond189 = phi ptr [ %add.ptr174, %cond.true171 ], [ %add.ptr187, %cond.false175 ]
  store ptr %cond189, ptr %buff_tol166, align 8
  %base191 = getelementptr inbounds %struct.FLA_Obj_view, ptr %thresh, i32 0, i32 6
  %114 = load ptr, ptr %base191, align 8
  %datatype192 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %114, i32 0, i32 0
  %115 = load i32, ptr %datatype192, align 8
  %cmp193 = icmp eq i32 %115, 105
  br i1 %cmp193, label %cond.true195, label %cond.false199

cond.true195:                                     ; preds = %cond.end188
  %base196 = getelementptr inbounds %struct.FLA_Obj_view, ptr %thresh, i32 0, i32 6
  %116 = load ptr, ptr %base196, align 8
  %buffer197 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %116, i32 0, i32 12
  %117 = load ptr, ptr %buffer197, align 8
  %add.ptr198 = getelementptr inbounds i8, ptr %117, i64 16
  br label %cond.end212

cond.false199:                                    ; preds = %cond.end188
  %base200 = getelementptr inbounds %struct.FLA_Obj_view, ptr %thresh, i32 0, i32 6
  %118 = load ptr, ptr %base200, align 8
  %buffer201 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %118, i32 0, i32 12
  %119 = load ptr, ptr %buffer201, align 8
  %offn202 = getelementptr inbounds %struct.FLA_Obj_view, ptr %thresh, i32 0, i32 1
  %120 = load i64, ptr %offn202, align 8
  %base203 = getelementptr inbounds %struct.FLA_Obj_view, ptr %thresh, i32 0, i32 6
  %121 = load ptr, ptr %base203, align 8
  %cs204 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %121, i32 0, i32 5
  %122 = load i64, ptr %cs204, align 8
  %mul205 = mul i64 %120, %122
  %add.ptr206 = getelementptr inbounds double, ptr %119, i64 %mul205
  %offm207 = getelementptr inbounds %struct.FLA_Obj_view, ptr %thresh, i32 0, i32 0
  %123 = load i64, ptr %offm207, align 8
  %base208 = getelementptr inbounds %struct.FLA_Obj_view, ptr %thresh, i32 0, i32 6
  %124 = load ptr, ptr %base208, align 8
  %rs209 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %124, i32 0, i32 4
  %125 = load i64, ptr %rs209, align 8
  %mul210 = mul i64 %123, %125
  %add.ptr211 = getelementptr inbounds double, ptr %add.ptr206, i64 %mul210
  br label %cond.end212

cond.end212:                                      ; preds = %cond.false199, %cond.true195
  %cond213 = phi ptr [ %add.ptr198, %cond.true195 ], [ %add.ptr211, %cond.false199 ]
  store ptr %cond213, ptr %buff_thresh190, align 8
  %base215 = getelementptr inbounds %struct.FLA_Obj_view, ptr %G, i32 0, i32 6
  %126 = load ptr, ptr %base215, align 8
  %datatype216 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %126, i32 0, i32 0
  %127 = load i32, ptr %datatype216, align 8
  %cmp217 = icmp eq i32 %127, 105
  br i1 %cmp217, label %cond.true219, label %cond.false223

cond.true219:                                     ; preds = %cond.end212
  %base220 = getelementptr inbounds %struct.FLA_Obj_view, ptr %G, i32 0, i32 6
  %128 = load ptr, ptr %base220, align 8
  %buffer221 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %128, i32 0, i32 12
  %129 = load ptr, ptr %buffer221, align 8
  %add.ptr222 = getelementptr inbounds i8, ptr %129, i64 32
  br label %cond.end236

cond.false223:                                    ; preds = %cond.end212
  %base224 = getelementptr inbounds %struct.FLA_Obj_view, ptr %G, i32 0, i32 6
  %130 = load ptr, ptr %base224, align 8
  %buffer225 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %130, i32 0, i32 12
  %131 = load ptr, ptr %buffer225, align 8
  %offn226 = getelementptr inbounds %struct.FLA_Obj_view, ptr %G, i32 0, i32 1
  %132 = load i64, ptr %offn226, align 8
  %base227 = getelementptr inbounds %struct.FLA_Obj_view, ptr %G, i32 0, i32 6
  %133 = load ptr, ptr %base227, align 8
  %cs228 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %133, i32 0, i32 5
  %134 = load i64, ptr %cs228, align 8
  %mul229 = mul i64 %132, %134
  %add.ptr230 = getelementptr inbounds %struct.dcomplex, ptr %131, i64 %mul229
  %offm231 = getelementptr inbounds %struct.FLA_Obj_view, ptr %G, i32 0, i32 0
  %135 = load i64, ptr %offm231, align 8
  %base232 = getelementptr inbounds %struct.FLA_Obj_view, ptr %G, i32 0, i32 6
  %136 = load ptr, ptr %base232, align 8
  %rs233 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %136, i32 0, i32 4
  %137 = load i64, ptr %rs233, align 8
  %mul234 = mul i64 %135, %137
  %add.ptr235 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr230, i64 %mul234
  br label %cond.end236

cond.end236:                                      ; preds = %cond.false223, %cond.true219
  %cond237 = phi ptr [ %add.ptr222, %cond.true219 ], [ %add.ptr235, %cond.false223 ]
  store ptr %cond237, ptr %buff_G214, align 8
  %base239 = getelementptr inbounds %struct.FLA_Obj_view, ptr %H, i32 0, i32 6
  %138 = load ptr, ptr %base239, align 8
  %datatype240 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %138, i32 0, i32 0
  %139 = load i32, ptr %datatype240, align 8
  %cmp241 = icmp eq i32 %139, 105
  br i1 %cmp241, label %cond.true243, label %cond.false247

cond.true243:                                     ; preds = %cond.end236
  %base244 = getelementptr inbounds %struct.FLA_Obj_view, ptr %H, i32 0, i32 6
  %140 = load ptr, ptr %base244, align 8
  %buffer245 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %140, i32 0, i32 12
  %141 = load ptr, ptr %buffer245, align 8
  %add.ptr246 = getelementptr inbounds i8, ptr %141, i64 32
  br label %cond.end260

cond.false247:                                    ; preds = %cond.end236
  %base248 = getelementptr inbounds %struct.FLA_Obj_view, ptr %H, i32 0, i32 6
  %142 = load ptr, ptr %base248, align 8
  %buffer249 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %142, i32 0, i32 12
  %143 = load ptr, ptr %buffer249, align 8
  %offn250 = getelementptr inbounds %struct.FLA_Obj_view, ptr %H, i32 0, i32 1
  %144 = load i64, ptr %offn250, align 8
  %base251 = getelementptr inbounds %struct.FLA_Obj_view, ptr %H, i32 0, i32 6
  %145 = load ptr, ptr %base251, align 8
  %cs252 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %145, i32 0, i32 5
  %146 = load i64, ptr %cs252, align 8
  %mul253 = mul i64 %144, %146
  %add.ptr254 = getelementptr inbounds %struct.dcomplex, ptr %143, i64 %mul253
  %offm255 = getelementptr inbounds %struct.FLA_Obj_view, ptr %H, i32 0, i32 0
  %147 = load i64, ptr %offm255, align 8
  %base256 = getelementptr inbounds %struct.FLA_Obj_view, ptr %H, i32 0, i32 6
  %148 = load ptr, ptr %base256, align 8
  %rs257 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %148, i32 0, i32 4
  %149 = load i64, ptr %rs257, align 8
  %mul258 = mul i64 %147, %149
  %add.ptr259 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr254, i64 %mul258
  br label %cond.end260

cond.end260:                                      ; preds = %cond.false247, %cond.true243
  %cond261 = phi ptr [ %add.ptr246, %cond.true243 ], [ %add.ptr259, %cond.false247 ]
  store ptr %cond261, ptr %buff_H238, align 8
  %base263 = getelementptr inbounds %struct.FLA_Obj_view, ptr %d, i32 0, i32 6
  %150 = load ptr, ptr %base263, align 8
  %datatype264 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %150, i32 0, i32 0
  %151 = load i32, ptr %datatype264, align 8
  %cmp265 = icmp eq i32 %151, 105
  br i1 %cmp265, label %cond.true267, label %cond.false271

cond.true267:                                     ; preds = %cond.end260
  %base268 = getelementptr inbounds %struct.FLA_Obj_view, ptr %d, i32 0, i32 6
  %152 = load ptr, ptr %base268, align 8
  %buffer269 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %152, i32 0, i32 12
  %153 = load ptr, ptr %buffer269, align 8
  %add.ptr270 = getelementptr inbounds i8, ptr %153, i64 16
  br label %cond.end284

cond.false271:                                    ; preds = %cond.end260
  %base272 = getelementptr inbounds %struct.FLA_Obj_view, ptr %d, i32 0, i32 6
  %154 = load ptr, ptr %base272, align 8
  %buffer273 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %154, i32 0, i32 12
  %155 = load ptr, ptr %buffer273, align 8
  %offn274 = getelementptr inbounds %struct.FLA_Obj_view, ptr %d, i32 0, i32 1
  %156 = load i64, ptr %offn274, align 8
  %base275 = getelementptr inbounds %struct.FLA_Obj_view, ptr %d, i32 0, i32 6
  %157 = load ptr, ptr %base275, align 8
  %cs276 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %157, i32 0, i32 5
  %158 = load i64, ptr %cs276, align 8
  %mul277 = mul i64 %156, %158
  %add.ptr278 = getelementptr inbounds double, ptr %155, i64 %mul277
  %offm279 = getelementptr inbounds %struct.FLA_Obj_view, ptr %d, i32 0, i32 0
  %159 = load i64, ptr %offm279, align 8
  %base280 = getelementptr inbounds %struct.FLA_Obj_view, ptr %d, i32 0, i32 6
  %160 = load ptr, ptr %base280, align 8
  %rs281 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %160, i32 0, i32 4
  %161 = load i64, ptr %rs281, align 8
  %mul282 = mul i64 %159, %161
  %add.ptr283 = getelementptr inbounds double, ptr %add.ptr278, i64 %mul282
  br label %cond.end284

cond.end284:                                      ; preds = %cond.false271, %cond.true267
  %cond285 = phi ptr [ %add.ptr270, %cond.true267 ], [ %add.ptr283, %cond.false271 ]
  store ptr %cond285, ptr %buff_d262, align 8
  %base287 = getelementptr inbounds %struct.FLA_Obj_view, ptr %e, i32 0, i32 6
  %162 = load ptr, ptr %base287, align 8
  %datatype288 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %162, i32 0, i32 0
  %163 = load i32, ptr %datatype288, align 8
  %cmp289 = icmp eq i32 %163, 105
  br i1 %cmp289, label %cond.true291, label %cond.false295

cond.true291:                                     ; preds = %cond.end284
  %base292 = getelementptr inbounds %struct.FLA_Obj_view, ptr %e, i32 0, i32 6
  %164 = load ptr, ptr %base292, align 8
  %buffer293 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %164, i32 0, i32 12
  %165 = load ptr, ptr %buffer293, align 8
  %add.ptr294 = getelementptr inbounds i8, ptr %165, i64 16
  br label %cond.end308

cond.false295:                                    ; preds = %cond.end284
  %base296 = getelementptr inbounds %struct.FLA_Obj_view, ptr %e, i32 0, i32 6
  %166 = load ptr, ptr %base296, align 8
  %buffer297 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %166, i32 0, i32 12
  %167 = load ptr, ptr %buffer297, align 8
  %offn298 = getelementptr inbounds %struct.FLA_Obj_view, ptr %e, i32 0, i32 1
  %168 = load i64, ptr %offn298, align 8
  %base299 = getelementptr inbounds %struct.FLA_Obj_view, ptr %e, i32 0, i32 6
  %169 = load ptr, ptr %base299, align 8
  %cs300 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %169, i32 0, i32 5
  %170 = load i64, ptr %cs300, align 8
  %mul301 = mul i64 %168, %170
  %add.ptr302 = getelementptr inbounds double, ptr %167, i64 %mul301
  %offm303 = getelementptr inbounds %struct.FLA_Obj_view, ptr %e, i32 0, i32 0
  %171 = load i64, ptr %offm303, align 8
  %base304 = getelementptr inbounds %struct.FLA_Obj_view, ptr %e, i32 0, i32 6
  %172 = load ptr, ptr %base304, align 8
  %rs305 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %172, i32 0, i32 4
  %173 = load i64, ptr %rs305, align 8
  %mul306 = mul i64 %171, %173
  %add.ptr307 = getelementptr inbounds double, ptr %add.ptr302, i64 %mul306
  br label %cond.end308

cond.end308:                                      ; preds = %cond.false295, %cond.true291
  %cond309 = phi ptr [ %add.ptr294, %cond.true291 ], [ %add.ptr307, %cond.false295 ]
  store ptr %cond309, ptr %buff_e286, align 8
  %base311 = getelementptr inbounds %struct.FLA_Obj_view, ptr %k, i32 0, i32 6
  %174 = load ptr, ptr %base311, align 8
  %datatype312 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %174, i32 0, i32 0
  %175 = load i32, ptr %datatype312, align 8
  %cmp313 = icmp eq i32 %175, 105
  br i1 %cmp313, label %cond.true315, label %cond.false319

cond.true315:                                     ; preds = %cond.end308
  %base316 = getelementptr inbounds %struct.FLA_Obj_view, ptr %k, i32 0, i32 6
  %176 = load ptr, ptr %base316, align 8
  %buffer317 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %176, i32 0, i32 12
  %177 = load ptr, ptr %buffer317, align 8
  %add.ptr318 = getelementptr inbounds i8, ptr %177, i64 0
  br label %cond.end332

cond.false319:                                    ; preds = %cond.end308
  %base320 = getelementptr inbounds %struct.FLA_Obj_view, ptr %k, i32 0, i32 6
  %178 = load ptr, ptr %base320, align 8
  %buffer321 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %178, i32 0, i32 12
  %179 = load ptr, ptr %buffer321, align 8
  %offn322 = getelementptr inbounds %struct.FLA_Obj_view, ptr %k, i32 0, i32 1
  %180 = load i64, ptr %offn322, align 8
  %base323 = getelementptr inbounds %struct.FLA_Obj_view, ptr %k, i32 0, i32 6
  %181 = load ptr, ptr %base323, align 8
  %cs324 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %181, i32 0, i32 5
  %182 = load i64, ptr %cs324, align 8
  %mul325 = mul i64 %180, %182
  %add.ptr326 = getelementptr inbounds i32, ptr %179, i64 %mul325
  %offm327 = getelementptr inbounds %struct.FLA_Obj_view, ptr %k, i32 0, i32 0
  %183 = load i64, ptr %offm327, align 8
  %base328 = getelementptr inbounds %struct.FLA_Obj_view, ptr %k, i32 0, i32 6
  %184 = load ptr, ptr %base328, align 8
  %rs329 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %184, i32 0, i32 4
  %185 = load i64, ptr %rs329, align 8
  %mul330 = mul i64 %183, %185
  %add.ptr331 = getelementptr inbounds i32, ptr %add.ptr326, i64 %mul330
  br label %cond.end332

cond.end332:                                      ; preds = %cond.false319, %cond.true315
  %cond333 = phi ptr [ %add.ptr318, %cond.true315 ], [ %add.ptr331, %cond.false319 ]
  store ptr %cond333, ptr %buff_k310, align 8
  %186 = load i32, ptr %m_A, align 4
  %187 = load i32, ptr %n_GH, align 4
  %188 = load ptr, ptr %buff_tol166, align 8
  %189 = load double, ptr %188, align 8
  %190 = load ptr, ptr %buff_thresh190, align 8
  %191 = load double, ptr %190, align 8
  %192 = load ptr, ptr %buff_G214, align 8
  %193 = load i32, ptr %rs_G, align 4
  %194 = load i32, ptr %cs_G, align 4
  %195 = load ptr, ptr %buff_H238, align 8
  %196 = load i32, ptr %rs_H, align 4
  %197 = load i32, ptr %cs_H, align 4
  %198 = load ptr, ptr %buff_d262, align 8
  %199 = load i32, ptr %inc_d, align 4
  %200 = load ptr, ptr %buff_e286, align 8
  %201 = load i32, ptr %inc_e, align 4
  %202 = load ptr, ptr %buff_k310, align 8
  %call334 = call i32 @FLA_Bsvd_sinval_v_opd_var1(i32 noundef %186, i32 noundef %187, i32 noundef 9, double noundef %189, double noundef %191, ptr noundef %192, i32 noundef %193, i32 noundef %194, ptr noundef %195, i32 noundef %196, i32 noundef %197, ptr noundef %198, i32 noundef %199, ptr noundef %200, i32 noundef %201, ptr noundef %202)
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %cond.end332, %cond.end162
  ret i32 -1
}

declare i32 @FLA_Obj_datatype(ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i64 @FLA_Obj_vector_dim(ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i64 @FLA_Obj_width(ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i64 @FLA_Obj_row_stride(ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i64 @FLA_Obj_col_stride(ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i64 @FLA_Obj_vector_inc(ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Bsvd_sinval_v_ops_var1(i32 noundef %m_A, i32 noundef %n_GH, i32 noundef %n_iter_allowed, float noundef %tol, float noundef %thresh, ptr noundef %buff_G, i32 noundef %rs_G, i32 noundef %cs_G, ptr noundef %buff_H, i32 noundef %rs_H, i32 noundef %cs_H, ptr noundef %buff_d, i32 noundef %inc_d, ptr noundef %buff_e, i32 noundef %inc_e, ptr noundef %n_iter) #0 {
entry:
  %retval = alloca i32, align 4
  %m_A.addr = alloca i32, align 4
  %n_GH.addr = alloca i32, align 4
  %n_iter_allowed.addr = alloca i32, align 4
  %tol.addr = alloca float, align 4
  %thresh.addr = alloca float, align 4
  %buff_G.addr = alloca ptr, align 8
  %rs_G.addr = alloca i32, align 4
  %cs_G.addr = alloca i32, align 4
  %buff_H.addr = alloca ptr, align 8
  %rs_H.addr = alloca i32, align 4
  %cs_H.addr = alloca i32, align 4
  %buff_d.addr = alloca ptr, align 8
  %inc_d.addr = alloca i32, align 4
  %buff_e.addr = alloca ptr, align 8
  %inc_e.addr = alloca i32, align 4
  %n_iter.addr = alloca ptr, align 8
  %r_val = alloca i32, align 4
  %one = alloca float, align 4
  %e_last = alloca ptr, align 8
  %smax = alloca float, align 4
  %smin = alloca float, align 4
  %sminl = alloca float, align 4
  %shift = alloca float, align 4
  %k = alloca i32, align 4
  %g1 = alloca ptr, align 8
  %h1 = alloca ptr, align 8
  store i32 %m_A, ptr %m_A.addr, align 4
  store i32 %n_GH, ptr %n_GH.addr, align 4
  store i32 %n_iter_allowed, ptr %n_iter_allowed.addr, align 4
  store float %tol, ptr %tol.addr, align 4
  store float %thresh, ptr %thresh.addr, align 4
  store ptr %buff_G, ptr %buff_G.addr, align 8
  store i32 %rs_G, ptr %rs_G.addr, align 4
  store i32 %cs_G, ptr %cs_G.addr, align 4
  store ptr %buff_H, ptr %buff_H.addr, align 8
  store i32 %rs_H, ptr %rs_H.addr, align 4
  store i32 %cs_H, ptr %cs_H.addr, align 4
  store ptr %buff_d, ptr %buff_d.addr, align 8
  store i32 %inc_d, ptr %inc_d.addr, align 4
  store ptr %buff_e, ptr %buff_e.addr, align 8
  store i32 %inc_e, ptr %inc_e.addr, align 4
  store ptr %n_iter, ptr %n_iter.addr, align 8
  %call = call float @bl1_s1()
  store float %call, ptr %one, align 4
  %0 = load ptr, ptr %buff_e.addr, align 8
  %1 = load i32, ptr %m_A.addr, align 4
  %sub = sub nsw i32 %1, 2
  %2 = load i32, ptr %inc_e.addr, align 4
  %mul = mul nsw i32 %sub, %2
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds float, ptr %0, i64 %idx.ext
  store ptr %add.ptr, ptr %e_last, align 8
  %3 = load i32, ptr %m_A.addr, align 4
  %4 = load ptr, ptr %buff_d.addr, align 8
  %5 = load i32, ptr %inc_d.addr, align 4
  %6 = load ptr, ptr %buff_e.addr, align 8
  %7 = load i32, ptr %inc_e.addr, align 4
  %call1 = call i32 @FLA_Bsvd_find_max_min_ops(i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, i32 noundef %7, ptr noundef %smax, ptr noundef %smin)
  store i32 0, ptr %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, ptr %k, align 4
  %9 = load i32, ptr %n_iter_allowed.addr, align 4
  %cmp = icmp slt i32 %8, %9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %buff_G.addr, align 8
  %11 = load i32, ptr %k, align 4
  %12 = load i32, ptr %cs_G.addr, align 4
  %mul2 = mul nsw i32 %11, %12
  %idx.ext3 = sext i32 %mul2 to i64
  %add.ptr4 = getelementptr inbounds %struct.scomplex, ptr %10, i64 %idx.ext3
  store ptr %add.ptr4, ptr %g1, align 8
  %13 = load ptr, ptr %buff_H.addr, align 8
  %14 = load i32, ptr %k, align 4
  %15 = load i32, ptr %cs_H.addr, align 4
  %mul5 = mul nsw i32 %14, %15
  %idx.ext6 = sext i32 %mul5 to i64
  %add.ptr7 = getelementptr inbounds %struct.scomplex, ptr %13, i64 %idx.ext6
  store ptr %add.ptr7, ptr %h1, align 8
  %16 = load i32, ptr %m_A.addr, align 4
  %17 = load float, ptr %tol.addr, align 4
  %18 = load ptr, ptr %buff_d.addr, align 8
  %19 = load i32, ptr %inc_d.addr, align 4
  %20 = load ptr, ptr %buff_e.addr, align 8
  %21 = load i32, ptr %inc_e.addr, align 4
  %call8 = call i32 @FLA_Bsvd_find_converged_ops(i32 noundef %16, float noundef %17, ptr noundef %18, i32 noundef %19, ptr noundef %20, i32 noundef %21, ptr noundef %sminl)
  store i32 %call8, ptr %r_val, align 4
  %22 = load i32, ptr %r_val, align 4
  %cmp9 = icmp sle i32 0, %22
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %23 = load ptr, ptr %buff_e.addr, align 8
  %24 = load i32, ptr %r_val, align 4
  %25 = load i32, ptr %inc_e.addr, align 4
  %mul10 = mul nsw i32 %24, %25
  %idxprom = sext i32 %mul10 to i64
  %arrayidx = getelementptr inbounds float, ptr %23, i64 %idxprom
  store float 0.000000e+00, ptr %arrayidx, align 4
  %26 = load i32, ptr %k, align 4
  %27 = load ptr, ptr %n_iter.addr, align 8
  store i32 %26, ptr %27, align 4
  %28 = load i32, ptr %r_val, align 4
  store i32 %28, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body
  %29 = load i32, ptr %m_A.addr, align 4
  %30 = load float, ptr %tol.addr, align 4
  %31 = load float, ptr %sminl, align 4
  %32 = load float, ptr %smax, align 4
  %33 = load ptr, ptr %buff_d.addr, align 8
  %34 = load i32, ptr %inc_d.addr, align 4
  %35 = load ptr, ptr %buff_e.addr, align 8
  %36 = load i32, ptr %inc_e.addr, align 4
  %call11 = call i32 @FLA_Bsvd_compute_shift_ops(i32 noundef %29, float noundef %30, float noundef %31, float noundef %32, ptr noundef %33, i32 noundef %34, ptr noundef %35, i32 noundef %36, ptr noundef %shift)
  %37 = load i32, ptr %m_A.addr, align 4
  %38 = load float, ptr %shift, align 4
  %39 = load ptr, ptr %g1, align 8
  %40 = load i32, ptr %rs_G.addr, align 4
  %41 = load ptr, ptr %h1, align 8
  %42 = load i32, ptr %rs_H.addr, align 4
  %43 = load ptr, ptr %buff_d.addr, align 8
  %44 = load i32, ptr %inc_d.addr, align 4
  %45 = load ptr, ptr %buff_e.addr, align 8
  %46 = load i32, ptr %inc_e.addr, align 4
  %call12 = call i32 @FLA_Bsvd_francis_v_ops_var1(i32 noundef %37, float noundef %38, ptr noundef %39, i32 noundef %40, ptr noundef %41, i32 noundef %42, ptr noundef %43, i32 noundef %44, ptr noundef %45, i32 noundef %46)
  store i32 %call12, ptr %r_val, align 4
  %47 = load ptr, ptr %e_last, align 8
  %48 = load float, ptr %47, align 4
  %49 = call float @llvm.fabs.f32(float %48)
  %50 = load float, ptr %thresh.addr, align 4
  %51 = load float, ptr %one, align 4
  %mul13 = fmul float %50, %51
  %52 = call float @llvm.fabs.f32(float %mul13)
  %cmp14 = fcmp ole float %49, %52
  br i1 %cmp14, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.end
  %53 = load ptr, ptr %e_last, align 8
  store float 0.000000e+00, ptr %53, align 4
  %54 = load i32, ptr %k, align 4
  %add = add nsw i32 %54, 1
  %55 = load ptr, ptr %n_iter.addr, align 8
  store i32 %add, ptr %55, align 4
  %56 = load i32, ptr %m_A.addr, align 4
  %sub16 = sub nsw i32 %56, 1
  store i32 %sub16, ptr %retval, align 4
  br label %return

if.end17:                                         ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end17
  %57 = load i32, ptr %k, align 4
  %inc = add nsw i32 %57, 1
  store i32 %inc, ptr %k, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %58 = load i32, ptr %n_iter_allowed.addr, align 4
  %59 = load ptr, ptr %n_iter.addr, align 8
  store i32 %58, ptr %59, align 4
  store i32 -1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then15, %if.then
  %60 = load i32, ptr %retval, align 4
  ret i32 %60
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Bsvd_sinval_v_opd_var1(i32 noundef %m_A, i32 noundef %n_GH, i32 noundef %n_iter_allowed, double noundef %tol, double noundef %thresh, ptr noundef %buff_G, i32 noundef %rs_G, i32 noundef %cs_G, ptr noundef %buff_H, i32 noundef %rs_H, i32 noundef %cs_H, ptr noundef %buff_d, i32 noundef %inc_d, ptr noundef %buff_e, i32 noundef %inc_e, ptr noundef %n_iter) #0 {
entry:
  %retval = alloca i32, align 4
  %m_A.addr = alloca i32, align 4
  %n_GH.addr = alloca i32, align 4
  %n_iter_allowed.addr = alloca i32, align 4
  %tol.addr = alloca double, align 8
  %thresh.addr = alloca double, align 8
  %buff_G.addr = alloca ptr, align 8
  %rs_G.addr = alloca i32, align 4
  %cs_G.addr = alloca i32, align 4
  %buff_H.addr = alloca ptr, align 8
  %rs_H.addr = alloca i32, align 4
  %cs_H.addr = alloca i32, align 4
  %buff_d.addr = alloca ptr, align 8
  %inc_d.addr = alloca i32, align 4
  %buff_e.addr = alloca ptr, align 8
  %inc_e.addr = alloca i32, align 4
  %n_iter.addr = alloca ptr, align 8
  %r_val = alloca i32, align 4
  %one = alloca double, align 8
  %e_last = alloca ptr, align 8
  %smax = alloca double, align 8
  %smin = alloca double, align 8
  %sminl = alloca double, align 8
  %shift = alloca double, align 8
  %k = alloca i32, align 4
  %g1 = alloca ptr, align 8
  %h1 = alloca ptr, align 8
  store i32 %m_A, ptr %m_A.addr, align 4
  store i32 %n_GH, ptr %n_GH.addr, align 4
  store i32 %n_iter_allowed, ptr %n_iter_allowed.addr, align 4
  store double %tol, ptr %tol.addr, align 8
  store double %thresh, ptr %thresh.addr, align 8
  store ptr %buff_G, ptr %buff_G.addr, align 8
  store i32 %rs_G, ptr %rs_G.addr, align 4
  store i32 %cs_G, ptr %cs_G.addr, align 4
  store ptr %buff_H, ptr %buff_H.addr, align 8
  store i32 %rs_H, ptr %rs_H.addr, align 4
  store i32 %cs_H, ptr %cs_H.addr, align 4
  store ptr %buff_d, ptr %buff_d.addr, align 8
  store i32 %inc_d, ptr %inc_d.addr, align 4
  store ptr %buff_e, ptr %buff_e.addr, align 8
  store i32 %inc_e, ptr %inc_e.addr, align 4
  store ptr %n_iter, ptr %n_iter.addr, align 8
  %call = call double @bl1_d1()
  store double %call, ptr %one, align 8
  %0 = load ptr, ptr %buff_e.addr, align 8
  %1 = load i32, ptr %m_A.addr, align 4
  %sub = sub nsw i32 %1, 2
  %2 = load i32, ptr %inc_e.addr, align 4
  %mul = mul nsw i32 %sub, %2
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds double, ptr %0, i64 %idx.ext
  store ptr %add.ptr, ptr %e_last, align 8
  %3 = load i32, ptr %m_A.addr, align 4
  %4 = load ptr, ptr %buff_d.addr, align 8
  %5 = load i32, ptr %inc_d.addr, align 4
  %6 = load ptr, ptr %buff_e.addr, align 8
  %7 = load i32, ptr %inc_e.addr, align 4
  %call1 = call i32 @FLA_Bsvd_find_max_min_opd(i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, i32 noundef %7, ptr noundef %smax, ptr noundef %smin)
  store i32 0, ptr %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, ptr %k, align 4
  %9 = load i32, ptr %n_iter_allowed.addr, align 4
  %cmp = icmp slt i32 %8, %9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %buff_G.addr, align 8
  %11 = load i32, ptr %k, align 4
  %12 = load i32, ptr %cs_G.addr, align 4
  %mul2 = mul nsw i32 %11, %12
  %idx.ext3 = sext i32 %mul2 to i64
  %add.ptr4 = getelementptr inbounds %struct.dcomplex, ptr %10, i64 %idx.ext3
  store ptr %add.ptr4, ptr %g1, align 8
  %13 = load ptr, ptr %buff_H.addr, align 8
  %14 = load i32, ptr %k, align 4
  %15 = load i32, ptr %cs_H.addr, align 4
  %mul5 = mul nsw i32 %14, %15
  %idx.ext6 = sext i32 %mul5 to i64
  %add.ptr7 = getelementptr inbounds %struct.dcomplex, ptr %13, i64 %idx.ext6
  store ptr %add.ptr7, ptr %h1, align 8
  %16 = load i32, ptr %m_A.addr, align 4
  %17 = load double, ptr %tol.addr, align 8
  %18 = load ptr, ptr %buff_d.addr, align 8
  %19 = load i32, ptr %inc_d.addr, align 4
  %20 = load ptr, ptr %buff_e.addr, align 8
  %21 = load i32, ptr %inc_e.addr, align 4
  %call8 = call i32 @FLA_Bsvd_find_converged_opd(i32 noundef %16, double noundef %17, ptr noundef %18, i32 noundef %19, ptr noundef %20, i32 noundef %21, ptr noundef %sminl)
  store i32 %call8, ptr %r_val, align 4
  %22 = load i32, ptr %r_val, align 4
  %cmp9 = icmp sle i32 0, %22
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %23 = load ptr, ptr %buff_e.addr, align 8
  %24 = load i32, ptr %r_val, align 4
  %25 = load i32, ptr %inc_e.addr, align 4
  %mul10 = mul nsw i32 %24, %25
  %idxprom = sext i32 %mul10 to i64
  %arrayidx = getelementptr inbounds double, ptr %23, i64 %idxprom
  store double 0.000000e+00, ptr %arrayidx, align 8
  %26 = load i32, ptr %k, align 4
  %27 = load ptr, ptr %n_iter.addr, align 8
  store i32 %26, ptr %27, align 4
  %28 = load i32, ptr %r_val, align 4
  store i32 %28, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body
  %29 = load i32, ptr %m_A.addr, align 4
  %30 = load double, ptr %tol.addr, align 8
  %31 = load double, ptr %sminl, align 8
  %32 = load double, ptr %smax, align 8
  %33 = load ptr, ptr %buff_d.addr, align 8
  %34 = load i32, ptr %inc_d.addr, align 4
  %35 = load ptr, ptr %buff_e.addr, align 8
  %36 = load i32, ptr %inc_e.addr, align 4
  %call11 = call i32 @FLA_Bsvd_compute_shift_opd(i32 noundef %29, double noundef %30, double noundef %31, double noundef %32, ptr noundef %33, i32 noundef %34, ptr noundef %35, i32 noundef %36, ptr noundef %shift)
  %37 = load i32, ptr %m_A.addr, align 4
  %38 = load double, ptr %shift, align 8
  %39 = load ptr, ptr %g1, align 8
  %40 = load i32, ptr %rs_G.addr, align 4
  %41 = load ptr, ptr %h1, align 8
  %42 = load i32, ptr %rs_H.addr, align 4
  %43 = load ptr, ptr %buff_d.addr, align 8
  %44 = load i32, ptr %inc_d.addr, align 4
  %45 = load ptr, ptr %buff_e.addr, align 8
  %46 = load i32, ptr %inc_e.addr, align 4
  %call12 = call i32 @FLA_Bsvd_francis_v_opd_var1(i32 noundef %37, double noundef %38, ptr noundef %39, i32 noundef %40, ptr noundef %41, i32 noundef %42, ptr noundef %43, i32 noundef %44, ptr noundef %45, i32 noundef %46)
  store i32 %call12, ptr %r_val, align 4
  %47 = load ptr, ptr %e_last, align 8
  %48 = load double, ptr %47, align 8
  %49 = call double @llvm.fabs.f64(double %48)
  %50 = load double, ptr %thresh.addr, align 8
  %51 = load double, ptr %one, align 8
  %mul13 = fmul double %50, %51
  %52 = call double @llvm.fabs.f64(double %mul13)
  %cmp14 = fcmp ole double %49, %52
  br i1 %cmp14, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.end
  %53 = load ptr, ptr %e_last, align 8
  store double 0.000000e+00, ptr %53, align 8
  %54 = load i32, ptr %k, align 4
  %add = add nsw i32 %54, 1
  %55 = load ptr, ptr %n_iter.addr, align 8
  store i32 %add, ptr %55, align 4
  %56 = load i32, ptr %m_A.addr, align 4
  %sub16 = sub nsw i32 %56, 1
  store i32 %sub16, ptr %retval, align 4
  br label %return

if.end17:                                         ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end17
  %57 = load i32, ptr %k, align 4
  %inc = add nsw i32 %57, 1
  store i32 %inc, ptr %k, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %58 = load i32, ptr %n_iter_allowed.addr, align 4
  %59 = load ptr, ptr %n_iter.addr, align 8
  store i32 %58, ptr %59, align 4
  store i32 -2, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then15, %if.then
  %60 = load i32, ptr %retval, align 4
  ret i32 %60
}

declare float @bl1_s1() #1

declare i32 @FLA_Bsvd_find_max_min_ops(i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

declare i32 @FLA_Bsvd_find_converged_ops(i32 noundef, float noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) #1

declare i32 @FLA_Bsvd_compute_shift_ops(i32 noundef, float noundef, float noundef, float noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) #1

declare i32 @FLA_Bsvd_francis_v_ops_var1(i32 noundef, float noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #2

declare double @bl1_d1() #1

declare i32 @FLA_Bsvd_find_max_min_opd(i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

declare i32 @FLA_Bsvd_find_converged_opd(i32 noundef, double noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) #1

declare i32 @FLA_Bsvd_compute_shift_opd(i32 noundef, double noundef, double noundef, double noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) #1

declare i32 @FLA_Bsvd_francis_v_opd_var1(i32 noundef, double noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

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

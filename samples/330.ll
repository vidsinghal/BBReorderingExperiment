; ModuleID = 'samples/330.bc'
source_filename = "bam_aux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bam1_t = type { %struct.bam1_core_t, i64, ptr, i32, i32, i32 }
%struct.bam1_core_t = type { i64, i32, i16, i8, i8, i16, i16, i32, i32, i32, i64, i64 }

; Function Attrs: nounwind uwtable
define dso_local i32 @bam_aux_drop_other(ptr noundef %b, ptr noundef %s) #0 !dbg !16 {
entry:
  %b.addr = alloca ptr, align 8
  %s.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %aux = alloca ptr, align 8
  %type = alloca i32, align 4
  %__res = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %b, ptr %b.addr, align 8, !tbaa !75
  tail call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !65, metadata !DIExpression()), !dbg !79
  store ptr %s, ptr %s.addr, align 8, !tbaa !75
  tail call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !66, metadata !DIExpression()), !dbg !80
  %0 = load ptr, ptr %s.addr, align 8, !dbg !81, !tbaa !75
  %tobool = icmp ne ptr %0, null, !dbg !81
  br i1 %tobool, label %if.then, label %if.else58, !dbg !82

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #7, !dbg !83
  tail call void @llvm.dbg.declare(metadata ptr %p, metadata !67, metadata !DIExpression()), !dbg !84
  call void @llvm.lifetime.start.p0(i64 8, ptr %aux) #7, !dbg !83
  tail call void @llvm.dbg.declare(metadata ptr %aux, metadata !70, metadata !DIExpression()), !dbg !85
  %1 = load ptr, ptr %b.addr, align 8, !dbg !86, !tbaa !75
  %data = getelementptr inbounds %struct.bam1_t, ptr %1, i32 0, i32 2, !dbg !86
  %2 = load ptr, ptr %data, align 8, !dbg !86, !tbaa !87
  %3 = load ptr, ptr %b.addr, align 8, !dbg !86, !tbaa !75
  %core = getelementptr inbounds %struct.bam1_t, ptr %3, i32 0, i32 0, !dbg !86
  %n_cigar = getelementptr inbounds %struct.bam1_core_t, ptr %core, i32 0, i32 7, !dbg !86
  %4 = load i32, ptr %n_cigar, align 4, !dbg !86, !tbaa !93
  %shl = shl i32 %4, 2, !dbg !86
  %idx.ext = zext i32 %shl to i64, !dbg !86
  %add.ptr = getelementptr inbounds i8, ptr %2, i64 %idx.ext, !dbg !86
  %5 = load ptr, ptr %b.addr, align 8, !dbg !86, !tbaa !75
  %core1 = getelementptr inbounds %struct.bam1_t, ptr %5, i32 0, i32 0, !dbg !86
  %l_qname = getelementptr inbounds %struct.bam1_core_t, ptr %core1, i32 0, i32 6, !dbg !86
  %6 = load i16, ptr %l_qname, align 2, !dbg !86, !tbaa !94
  %conv = zext i16 %6 to i32, !dbg !86
  %idx.ext2 = sext i32 %conv to i64, !dbg !86
  %add.ptr3 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext2, !dbg !86
  %7 = load ptr, ptr %b.addr, align 8, !dbg !86, !tbaa !75
  %core4 = getelementptr inbounds %struct.bam1_t, ptr %7, i32 0, i32 0, !dbg !86
  %l_qseq = getelementptr inbounds %struct.bam1_core_t, ptr %core4, i32 0, i32 8, !dbg !86
  %8 = load i32, ptr %l_qseq, align 8, !dbg !86, !tbaa !95
  %add = add nsw i32 %8, 1, !dbg !86
  %shr = ashr i32 %add, 1, !dbg !86
  %idx.ext5 = sext i32 %shr to i64, !dbg !86
  %add.ptr6 = getelementptr inbounds i8, ptr %add.ptr3, i64 %idx.ext5, !dbg !86
  %9 = load ptr, ptr %b.addr, align 8, !dbg !86, !tbaa !75
  %core7 = getelementptr inbounds %struct.bam1_t, ptr %9, i32 0, i32 0, !dbg !86
  %l_qseq8 = getelementptr inbounds %struct.bam1_core_t, ptr %core7, i32 0, i32 8, !dbg !86
  %10 = load i32, ptr %l_qseq8, align 8, !dbg !86, !tbaa !95
  %idx.ext9 = sext i32 %10 to i64, !dbg !86
  %add.ptr10 = getelementptr inbounds i8, ptr %add.ptr6, i64 %idx.ext9, !dbg !86
  store ptr %add.ptr10, ptr %aux, align 8, !dbg !96, !tbaa !75
  %11 = load ptr, ptr %s.addr, align 8, !dbg !97, !tbaa !75
  %add.ptr11 = getelementptr inbounds i8, ptr %11, i64 -2, !dbg !98
  store ptr %add.ptr11, ptr %p, align 8, !dbg !99, !tbaa !75
  br label %do.body, !dbg !100

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %type) #7, !dbg !101
  tail call void @llvm.dbg.declare(metadata ptr %type, metadata !71, metadata !DIExpression()), !dbg !101
  call void @llvm.lifetime.start.p0(i64 4, ptr %__res) #7, !dbg !102
  tail call void @llvm.dbg.declare(metadata ptr %__res, metadata !73, metadata !DIExpression()), !dbg !102
  %call = call ptr @__ctype_toupper_loc() #8, !dbg !103
  %12 = load ptr, ptr %call, align 8, !dbg !103, !tbaa !75
  %13 = load ptr, ptr %s.addr, align 8, !dbg !103, !tbaa !75
  %14 = load i8, ptr %13, align 1, !dbg !103, !tbaa !105
  %conv12 = zext i8 %14 to i32, !dbg !103
  %idxprom = sext i32 %conv12 to i64, !dbg !103
  %arrayidx = getelementptr inbounds i32, ptr %12, i64 %idxprom, !dbg !103
  %15 = load i32, ptr %arrayidx, align 4, !dbg !103, !tbaa !106
  store i32 %15, ptr %__res, align 4, !dbg !103, !tbaa !106
  %16 = load i32, ptr %__res, align 4, !dbg !102, !tbaa !106
  store i32 %16, ptr %tmp, align 4, !dbg !103, !tbaa !106
  call void @llvm.lifetime.end.p0(i64 4, ptr %__res) #7, !dbg !101
  %17 = load i32, ptr %tmp, align 4, !dbg !102, !tbaa !106
  store i32 %17, ptr %type, align 4, !dbg !101, !tbaa !106
  %18 = load ptr, ptr %s.addr, align 8, !dbg !101, !tbaa !75
  %incdec.ptr = getelementptr inbounds i8, ptr %18, i32 1, !dbg !101
  store ptr %incdec.ptr, ptr %s.addr, align 8, !dbg !101, !tbaa !75
  %19 = load i32, ptr %type, align 4, !dbg !107, !tbaa !106
  %cmp = icmp eq i32 %19, 90, !dbg !107
  br i1 %cmp, label %if.then16, label %lor.lhs.false, !dbg !107

lor.lhs.false:                                    ; preds = %do.body
  %20 = load i32, ptr %type, align 4, !dbg !107, !tbaa !106
  %cmp14 = icmp eq i32 %20, 72, !dbg !107
  br i1 %cmp14, label %if.then16, label %if.else, !dbg !101

if.then16:                                        ; preds = %lor.lhs.false, %do.body
  br label %while.cond, !dbg !109

while.cond:                                       ; preds = %while.body, %if.then16
  %21 = load ptr, ptr %s.addr, align 8, !dbg !109, !tbaa !75
  %22 = load i8, ptr %21, align 1, !dbg !109, !tbaa !105
  %tobool17 = icmp ne i8 %22, 0, !dbg !109
  br i1 %tobool17, label %while.body, label %while.end, !dbg !109

while.body:                                       ; preds = %while.cond
  %23 = load ptr, ptr %s.addr, align 8, !dbg !109, !tbaa !75
  %incdec.ptr18 = getelementptr inbounds i8, ptr %23, i32 1, !dbg !109
  store ptr %incdec.ptr18, ptr %s.addr, align 8, !dbg !109, !tbaa !75
  br label %while.cond, !dbg !109, !llvm.loop !111

while.end:                                        ; preds = %while.cond
  %24 = load ptr, ptr %s.addr, align 8, !dbg !109, !tbaa !75
  %incdec.ptr19 = getelementptr inbounds i8, ptr %24, i32 1, !dbg !109
  store ptr %incdec.ptr19, ptr %s.addr, align 8, !dbg !109, !tbaa !75
  br label %if.end33, !dbg !109

if.else:                                          ; preds = %lor.lhs.false
  %25 = load i32, ptr %type, align 4, !dbg !113, !tbaa !106
  %cmp20 = icmp eq i32 %25, 66, !dbg !113
  br i1 %cmp20, label %if.then22, label %if.else29, !dbg !107

if.then22:                                        ; preds = %if.else
  %26 = load ptr, ptr %s.addr, align 8, !dbg !113, !tbaa !75
  %27 = load i8, ptr %26, align 1, !dbg !113, !tbaa !105
  %conv23 = zext i8 %27 to i32, !dbg !113
  %call24 = call i32 @bam_aux_type2size(i32 noundef %conv23), !dbg !113
  %28 = load ptr, ptr %s.addr, align 8, !dbg !113, !tbaa !75
  %add.ptr25 = getelementptr inbounds i8, ptr %28, i64 1, !dbg !113
  %29 = load i32, ptr %add.ptr25, align 4, !dbg !113, !tbaa !106
  %mul = mul nsw i32 %call24, %29, !dbg !113
  %add26 = add nsw i32 5, %mul, !dbg !113
  %30 = load ptr, ptr %s.addr, align 8, !dbg !113, !tbaa !75
  %idx.ext27 = sext i32 %add26 to i64, !dbg !113
  %add.ptr28 = getelementptr inbounds i8, ptr %30, i64 %idx.ext27, !dbg !113
  store ptr %add.ptr28, ptr %s.addr, align 8, !dbg !113, !tbaa !75
  br label %if.end, !dbg !113

if.else29:                                        ; preds = %if.else
  %31 = load i32, ptr %type, align 4, !dbg !113, !tbaa !106
  %call30 = call i32 @bam_aux_type2size(i32 noundef %31), !dbg !113
  %32 = load ptr, ptr %s.addr, align 8, !dbg !113, !tbaa !75
  %idx.ext31 = sext i32 %call30 to i64, !dbg !113
  %add.ptr32 = getelementptr inbounds i8, ptr %32, i64 %idx.ext31, !dbg !113
  store ptr %add.ptr32, ptr %s.addr, align 8, !dbg !113, !tbaa !75
  br label %if.end

if.end:                                           ; preds = %if.else29, %if.then22
  br label %if.end33

if.end33:                                         ; preds = %if.end, %while.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %type) #7, !dbg !100
  br label %do.cond, !dbg !101

do.cond:                                          ; preds = %if.end33
  br label %do.end, !dbg !101

do.end:                                           ; preds = %do.cond
  %33 = load ptr, ptr %aux, align 8, !dbg !115, !tbaa !75
  %34 = load ptr, ptr %p, align 8, !dbg !116, !tbaa !75
  %35 = load ptr, ptr %s.addr, align 8, !dbg !117, !tbaa !75
  %36 = load ptr, ptr %p, align 8, !dbg !118, !tbaa !75
  %sub.ptr.lhs.cast = ptrtoint ptr %35 to i64, !dbg !119
  %sub.ptr.rhs.cast = ptrtoint ptr %36 to i64, !dbg !119
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !119
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %33, ptr align 1 %34, i64 %sub.ptr.sub, i1 false), !dbg !120
  %37 = load ptr, ptr %b.addr, align 8, !dbg !121, !tbaa !75
  %l_data = getelementptr inbounds %struct.bam1_t, ptr %37, i32 0, i32 3, !dbg !121
  %38 = load i32, ptr %l_data, align 8, !dbg !121, !tbaa !122
  %39 = load ptr, ptr %b.addr, align 8, !dbg !121, !tbaa !75
  %core34 = getelementptr inbounds %struct.bam1_t, ptr %39, i32 0, i32 0, !dbg !121
  %n_cigar35 = getelementptr inbounds %struct.bam1_core_t, ptr %core34, i32 0, i32 7, !dbg !121
  %40 = load i32, ptr %n_cigar35, align 4, !dbg !121, !tbaa !93
  %shl36 = shl i32 %40, 2, !dbg !121
  %sub = sub i32 %38, %shl36, !dbg !121
  %41 = load ptr, ptr %b.addr, align 8, !dbg !121, !tbaa !75
  %core37 = getelementptr inbounds %struct.bam1_t, ptr %41, i32 0, i32 0, !dbg !121
  %l_qname38 = getelementptr inbounds %struct.bam1_core_t, ptr %core37, i32 0, i32 6, !dbg !121
  %42 = load i16, ptr %l_qname38, align 2, !dbg !121, !tbaa !94
  %conv39 = zext i16 %42 to i32, !dbg !121
  %sub40 = sub i32 %sub, %conv39, !dbg !121
  %43 = load ptr, ptr %b.addr, align 8, !dbg !121, !tbaa !75
  %core41 = getelementptr inbounds %struct.bam1_t, ptr %43, i32 0, i32 0, !dbg !121
  %l_qseq42 = getelementptr inbounds %struct.bam1_core_t, ptr %core41, i32 0, i32 8, !dbg !121
  %44 = load i32, ptr %l_qseq42, align 8, !dbg !121, !tbaa !95
  %sub43 = sub i32 %sub40, %44, !dbg !121
  %45 = load ptr, ptr %b.addr, align 8, !dbg !121, !tbaa !75
  %core44 = getelementptr inbounds %struct.bam1_t, ptr %45, i32 0, i32 0, !dbg !121
  %l_qseq45 = getelementptr inbounds %struct.bam1_core_t, ptr %core44, i32 0, i32 8, !dbg !121
  %46 = load i32, ptr %l_qseq45, align 8, !dbg !121, !tbaa !95
  %add46 = add nsw i32 %46, 1, !dbg !121
  %shr47 = ashr i32 %add46, 1, !dbg !121
  %sub48 = sub i32 %sub43, %shr47, !dbg !121
  %conv49 = zext i32 %sub48 to i64, !dbg !121
  %47 = load ptr, ptr %s.addr, align 8, !dbg !123, !tbaa !75
  %48 = load ptr, ptr %p, align 8, !dbg !124, !tbaa !75
  %sub.ptr.lhs.cast50 = ptrtoint ptr %47 to i64, !dbg !125
  %sub.ptr.rhs.cast51 = ptrtoint ptr %48 to i64, !dbg !125
  %sub.ptr.sub52 = sub i64 %sub.ptr.lhs.cast50, %sub.ptr.rhs.cast51, !dbg !125
  %sub53 = sub nsw i64 %conv49, %sub.ptr.sub52, !dbg !126
  %49 = load ptr, ptr %b.addr, align 8, !dbg !127, !tbaa !75
  %l_data54 = getelementptr inbounds %struct.bam1_t, ptr %49, i32 0, i32 3, !dbg !128
  %50 = load i32, ptr %l_data54, align 8, !dbg !129, !tbaa !122
  %conv55 = sext i32 %50 to i64, !dbg !129
  %sub56 = sub nsw i64 %conv55, %sub53, !dbg !129
  %conv57 = trunc i64 %sub56 to i32, !dbg !129
  store i32 %conv57, ptr %l_data54, align 8, !dbg !129, !tbaa !122
  call void @llvm.lifetime.end.p0(i64 8, ptr %aux) #7, !dbg !130
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #7, !dbg !130
  br label %if.end78, !dbg !131

if.else58:                                        ; preds = %entry
  %51 = load ptr, ptr %b.addr, align 8, !dbg !132, !tbaa !75
  %l_data59 = getelementptr inbounds %struct.bam1_t, ptr %51, i32 0, i32 3, !dbg !132
  %52 = load i32, ptr %l_data59, align 8, !dbg !132, !tbaa !122
  %53 = load ptr, ptr %b.addr, align 8, !dbg !132, !tbaa !75
  %core60 = getelementptr inbounds %struct.bam1_t, ptr %53, i32 0, i32 0, !dbg !132
  %n_cigar61 = getelementptr inbounds %struct.bam1_core_t, ptr %core60, i32 0, i32 7, !dbg !132
  %54 = load i32, ptr %n_cigar61, align 4, !dbg !132, !tbaa !93
  %shl62 = shl i32 %54, 2, !dbg !132
  %sub63 = sub i32 %52, %shl62, !dbg !132
  %55 = load ptr, ptr %b.addr, align 8, !dbg !132, !tbaa !75
  %core64 = getelementptr inbounds %struct.bam1_t, ptr %55, i32 0, i32 0, !dbg !132
  %l_qname65 = getelementptr inbounds %struct.bam1_core_t, ptr %core64, i32 0, i32 6, !dbg !132
  %56 = load i16, ptr %l_qname65, align 2, !dbg !132, !tbaa !94
  %conv66 = zext i16 %56 to i32, !dbg !132
  %sub67 = sub i32 %sub63, %conv66, !dbg !132
  %57 = load ptr, ptr %b.addr, align 8, !dbg !132, !tbaa !75
  %core68 = getelementptr inbounds %struct.bam1_t, ptr %57, i32 0, i32 0, !dbg !132
  %l_qseq69 = getelementptr inbounds %struct.bam1_core_t, ptr %core68, i32 0, i32 8, !dbg !132
  %58 = load i32, ptr %l_qseq69, align 8, !dbg !132, !tbaa !95
  %sub70 = sub i32 %sub67, %58, !dbg !132
  %59 = load ptr, ptr %b.addr, align 8, !dbg !132, !tbaa !75
  %core71 = getelementptr inbounds %struct.bam1_t, ptr %59, i32 0, i32 0, !dbg !132
  %l_qseq72 = getelementptr inbounds %struct.bam1_core_t, ptr %core71, i32 0, i32 8, !dbg !132
  %60 = load i32, ptr %l_qseq72, align 8, !dbg !132, !tbaa !95
  %add73 = add nsw i32 %60, 1, !dbg !132
  %shr74 = ashr i32 %add73, 1, !dbg !132
  %sub75 = sub i32 %sub70, %shr74, !dbg !132
  %61 = load ptr, ptr %b.addr, align 8, !dbg !134, !tbaa !75
  %l_data76 = getelementptr inbounds %struct.bam1_t, ptr %61, i32 0, i32 3, !dbg !135
  %62 = load i32, ptr %l_data76, align 8, !dbg !136, !tbaa !122
  %sub77 = sub i32 %62, %sub75, !dbg !136
  store i32 %sub77, ptr %l_data76, align 8, !dbg !136, !tbaa !122
  br label %if.end78

if.end78:                                         ; preds = %if.else58, %do.end
  ret i32 0, !dbg !137
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind willreturn memory(none)
declare !dbg !138 ptr @__ctype_toupper_loc() #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @bam_aux_type2size(i32 noundef %x) #3 !dbg !145 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4, !tbaa !106
  tail call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !149, metadata !DIExpression()), !dbg !150
  %0 = load i32, ptr %x.addr, align 4, !dbg !151, !tbaa !106
  %cmp = icmp eq i32 %0, 67, !dbg !153
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !154

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %x.addr, align 4, !dbg !155, !tbaa !106
  %cmp1 = icmp eq i32 %1, 99, !dbg !156
  br i1 %cmp1, label %if.then, label %lor.lhs.false2, !dbg !157

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load i32, ptr %x.addr, align 4, !dbg !158, !tbaa !106
  %cmp3 = icmp eq i32 %2, 65, !dbg !159
  br i1 %cmp3, label %if.then, label %if.else, !dbg !160

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 1, ptr %retval, align 4, !dbg !161
  br label %return, !dbg !161

if.else:                                          ; preds = %lor.lhs.false2
  %3 = load i32, ptr %x.addr, align 4, !dbg !162, !tbaa !106
  %cmp4 = icmp eq i32 %3, 83, !dbg !164
  br i1 %cmp4, label %if.then7, label %lor.lhs.false5, !dbg !165

lor.lhs.false5:                                   ; preds = %if.else
  %4 = load i32, ptr %x.addr, align 4, !dbg !166, !tbaa !106
  %cmp6 = icmp eq i32 %4, 115, !dbg !167
  br i1 %cmp6, label %if.then7, label %if.else8, !dbg !168

if.then7:                                         ; preds = %lor.lhs.false5, %if.else
  store i32 2, ptr %retval, align 4, !dbg !169
  br label %return, !dbg !169

if.else8:                                         ; preds = %lor.lhs.false5
  %5 = load i32, ptr %x.addr, align 4, !dbg !170, !tbaa !106
  %cmp9 = icmp eq i32 %5, 73, !dbg !172
  br i1 %cmp9, label %if.then16, label %lor.lhs.false10, !dbg !173

lor.lhs.false10:                                  ; preds = %if.else8
  %6 = load i32, ptr %x.addr, align 4, !dbg !174, !tbaa !106
  %cmp11 = icmp eq i32 %6, 105, !dbg !175
  br i1 %cmp11, label %if.then16, label %lor.lhs.false12, !dbg !176

lor.lhs.false12:                                  ; preds = %lor.lhs.false10
  %7 = load i32, ptr %x.addr, align 4, !dbg !177, !tbaa !106
  %cmp13 = icmp eq i32 %7, 102, !dbg !178
  br i1 %cmp13, label %if.then16, label %lor.lhs.false14, !dbg !179

lor.lhs.false14:                                  ; preds = %lor.lhs.false12
  %8 = load i32, ptr %x.addr, align 4, !dbg !180, !tbaa !106
  %cmp15 = icmp eq i32 %8, 70, !dbg !181
  br i1 %cmp15, label %if.then16, label %if.else17, !dbg !182

if.then16:                                        ; preds = %lor.lhs.false14, %lor.lhs.false12, %lor.lhs.false10, %if.else8
  store i32 4, ptr %retval, align 4, !dbg !183
  br label %return, !dbg !183

if.else17:                                        ; preds = %lor.lhs.false14
  store i32 0, ptr %retval, align 4, !dbg !184
  br label %return, !dbg !184

return:                                           ; preds = %if.else17, %if.then16, %if.then7, %if.then
  %9 = load i32, ptr %retval, align 4, !dbg !185
  ret i32 %9, !dbg !185
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define dso_local i32 @bam_parse_region(ptr noundef %header, ptr noundef %str, ptr noundef %ref_id, ptr noundef %beg, ptr noundef %end) #0 !dbg !186 {
entry:
  %retval = alloca i32, align 4
  %header.addr = alloca ptr, align 8
  %str.addr = alloca ptr, align 8
  %ref_id.addr = alloca ptr, align 8
  %beg.addr = alloca ptr, align 8
  %end.addr = alloca ptr, align 8
  %beg64 = alloca i64, align 8
  %end64 = alloca i64, align 8
  %r = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %header, ptr %header.addr, align 8, !tbaa !75
  tail call void @llvm.dbg.declare(metadata ptr %header.addr, metadata !225, metadata !DIExpression()), !dbg !233
  store ptr %str, ptr %str.addr, align 8, !tbaa !75
  tail call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !226, metadata !DIExpression()), !dbg !234
  store ptr %ref_id, ptr %ref_id.addr, align 8, !tbaa !75
  tail call void @llvm.dbg.declare(metadata ptr %ref_id.addr, metadata !227, metadata !DIExpression()), !dbg !235
  store ptr %beg, ptr %beg.addr, align 8, !tbaa !75
  tail call void @llvm.dbg.declare(metadata ptr %beg.addr, metadata !228, metadata !DIExpression()), !dbg !236
  store ptr %end, ptr %end.addr, align 8, !tbaa !75
  tail call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !229, metadata !DIExpression()), !dbg !237
  call void @llvm.lifetime.start.p0(i64 8, ptr %beg64) #7, !dbg !238
  tail call void @llvm.dbg.declare(metadata ptr %beg64, metadata !230, metadata !DIExpression()), !dbg !239
  call void @llvm.lifetime.start.p0(i64 8, ptr %end64) #7, !dbg !238
  tail call void @llvm.dbg.declare(metadata ptr %end64, metadata !231, metadata !DIExpression()), !dbg !240
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #7, !dbg !241
  tail call void @llvm.dbg.declare(metadata ptr %r, metadata !232, metadata !DIExpression()), !dbg !242
  %0 = load ptr, ptr %header.addr, align 8, !dbg !243, !tbaa !75
  %1 = load ptr, ptr %str.addr, align 8, !dbg !244, !tbaa !75
  %2 = load ptr, ptr %ref_id.addr, align 8, !dbg !245, !tbaa !75
  %call = call ptr @sam_parse_region(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %beg64, ptr noundef %end64, i32 noundef 0), !dbg !246
  %tobool = icmp ne ptr %call, null, !dbg !246
  %3 = zext i1 %tobool to i64, !dbg !246
  %cond = select i1 %tobool, i32 0, i32 -1, !dbg !246
  store i32 %cond, ptr %r, align 4, !dbg !247, !tbaa !106
  %4 = load i64, ptr %beg64, align 8, !dbg !248, !tbaa !250
  %cmp = icmp sgt i64 %4, 2147483647, !dbg !251
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !252

lor.lhs.false:                                    ; preds = %entry
  %5 = load i64, ptr %end64, align 8, !dbg !253, !tbaa !250
  %cmp1 = icmp sgt i64 %5, 2147483647, !dbg !254
  br i1 %cmp1, label %if.then, label %if.end, !dbg !255

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -1, ptr %retval, align 4, !dbg !256
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !256

if.end:                                           ; preds = %lor.lhs.false
  %6 = load i64, ptr %beg64, align 8, !dbg !257, !tbaa !250
  %conv = trunc i64 %6 to i32, !dbg !257
  %7 = load ptr, ptr %beg.addr, align 8, !dbg !258, !tbaa !75
  store i32 %conv, ptr %7, align 4, !dbg !259, !tbaa !106
  %8 = load i64, ptr %end64, align 8, !dbg !260, !tbaa !250
  %conv2 = trunc i64 %8 to i32, !dbg !260
  %9 = load ptr, ptr %end.addr, align 8, !dbg !261, !tbaa !75
  store i32 %conv2, ptr %9, align 4, !dbg !262, !tbaa !106
  %10 = load i32, ptr %r, align 4, !dbg !263, !tbaa !106
  store i32 %10, ptr %retval, align 4, !dbg !264
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !264

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #7, !dbg !265
  call void @llvm.lifetime.end.p0(i64 8, ptr %end64) #7, !dbg !265
  call void @llvm.lifetime.end.p0(i64 8, ptr %beg64) #7, !dbg !265
  %11 = load i32, ptr %retval, align 4, !dbg !265
  ret i32 %11, !dbg !265
}

declare !dbg !266 ptr @sam_parse_region(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(none) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "bam_aux.c", directory: "/local-ssd/samtools-i7lpfd7rznpn2jrnaklwe67pg7qot4ru-build/aidengro/spack-stage-samtools-1.13-i7lpfd7rznpn2jrnaklwe67pg7qot4ru/spack-src", checksumkind: CSK_MD5, checksum: "2cdaa4adbeb14b4a71c91dffc0d1b168")
!2 = !{!3, !4}
!3 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !6, line: 26, baseType: !7)
!6 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !8, line: 41, baseType: !3)
!8 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!9 = !{i32 7, !"Dwarf Version", i32 5}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 1, !"wchar_size", i32 4}
!12 = !{i32 8, !"PIC Level", i32 2}
!13 = !{i32 7, !"PIE Level", i32 2}
!14 = !{i32 7, !"uwtable", i32 2}
!15 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!16 = distinct !DISubprogram(name: "bam_aux_drop_other", scope: !1, file: !1, line: 49, type: !17, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !64)
!17 = !DISubroutineType(types: !18)
!18 = !{!3, !19, !60}
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "bam1_t", file: !21, line: 252, baseType: !22)
!21 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spac/linux-ubuntu22.04-zen2/clang-18.0.0/htslib-1.13-3cptg6go643q7k5o3lqa333klizp6eek/include/htslib/sam.h", directory: "/local-ssd/samtools-i7lpfd7rznpn2jrnaklwe67pg7qot4ru-build", checksumkind: CSK_MD5, checksum: "b64ad94d97c3b81ccf06052d1de39653")
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bam1_t", file: !21, line: 245, size: 640, elements: !23)
!23 = !{!24, !55, !59, !61, !62, !63}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "core", scope: !22, file: !21, line: 246, baseType: !25, size: 384)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "bam1_core_t", file: !21, line: 219, baseType: !26)
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bam1_core_t", file: !21, line: 206, size: 384, elements: !27)
!27 = !{!28, !34, !35, !40, !44, !45, !46, !47, !51, !52, !53, !54}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !26, file: !21, line: 207, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "hts_pos_t", file: !30, line: 753, baseType: !31)
!30 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spac/linux-ubuntu22.04-zen2/clang-18.0.0/htslib-1.13-3cptg6go643q7k5o3lqa333klizp6eek/include/htslib/hts.h", directory: "/local-ssd/samtools-i7lpfd7rznpn2jrnaklwe67pg7qot4ru-build", checksumkind: CSK_MD5, checksum: "ae37cf66fde41139f9a837bd3fe09912")
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !6, line: 27, baseType: !32)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !8, line: 44, baseType: !33)
!33 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !26, file: !21, line: 208, baseType: !5, size: 32, offset: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "bin", scope: !26, file: !21, line: 209, baseType: !36, size: 16, offset: 96)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !37, line: 25, baseType: !38)
!37 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !8, line: 40, baseType: !39)
!39 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "qual", scope: !26, file: !21, line: 210, baseType: !41, size: 8, offset: 112)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !37, line: 24, baseType: !42)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !8, line: 38, baseType: !43)
!43 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "l_extranul", scope: !26, file: !21, line: 211, baseType: !41, size: 8, offset: 120)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !26, file: !21, line: 212, baseType: !36, size: 16, offset: 128)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "l_qname", scope: !26, file: !21, line: 213, baseType: !36, size: 16, offset: 144)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "n_cigar", scope: !26, file: !21, line: 214, baseType: !48, size: 32, offset: 160)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !37, line: 26, baseType: !49)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !8, line: 42, baseType: !50)
!50 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "l_qseq", scope: !26, file: !21, line: 215, baseType: !5, size: 32, offset: 192)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "mtid", scope: !26, file: !21, line: 216, baseType: !5, size: 32, offset: 224)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "mpos", scope: !26, file: !21, line: 217, baseType: !29, size: 64, offset: 256)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "isize", scope: !26, file: !21, line: 218, baseType: !29, size: 64, offset: 320)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !22, file: !21, line: 247, baseType: !56, size: 64, offset: 384)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !37, line: 27, baseType: !57)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !8, line: 45, baseType: !58)
!58 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !22, file: !21, line: 248, baseType: !60, size: 64, offset: 448)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "l_data", scope: !22, file: !21, line: 249, baseType: !3, size: 32, offset: 512)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "m_data", scope: !22, file: !21, line: 250, baseType: !48, size: 32, offset: 544)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !22, file: !21, line: 251, baseType: !48, size: 2, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!64 = !{!65, !66, !67, !70, !71, !73}
!65 = !DILocalVariable(name: "b", arg: 1, scope: !16, file: !1, line: 49, type: !19)
!66 = !DILocalVariable(name: "s", arg: 2, scope: !16, file: !1, line: 49, type: !60)
!67 = !DILocalVariable(name: "p", scope: !68, file: !1, line: 52, type: !60)
!68 = distinct !DILexicalBlock(scope: !69, file: !1, line: 51, column: 12)
!69 = distinct !DILexicalBlock(scope: !16, file: !1, line: 51, column: 9)
!70 = !DILocalVariable(name: "aux", scope: !68, file: !1, line: 52, type: !60)
!71 = !DILocalVariable(name: "type", scope: !72, file: !1, line: 55, type: !3)
!72 = distinct !DILexicalBlock(scope: !68, file: !1, line: 55, column: 9)
!73 = !DILocalVariable(name: "__res", scope: !74, file: !1, line: 55, type: !3)
!74 = distinct !DILexicalBlock(scope: !72, file: !1, line: 55, column: 9)
!75 = !{!76, !76, i64 0}
!76 = !{!"any pointer", !77, i64 0}
!77 = !{!"omnipotent char", !78, i64 0}
!78 = !{!"Simple C/C++ TBAA"}
!79 = !DILocation(line: 49, column: 32, scope: !16)
!80 = !DILocation(line: 49, column: 44, scope: !16)
!81 = !DILocation(line: 51, column: 9, scope: !69)
!82 = !DILocation(line: 51, column: 9, scope: !16)
!83 = !DILocation(line: 52, column: 9, scope: !68)
!84 = !DILocation(line: 52, column: 18, scope: !68)
!85 = !DILocation(line: 52, column: 22, scope: !68)
!86 = !DILocation(line: 53, column: 15, scope: !68)
!87 = !{!88, !76, i64 56}
!88 = !{!"bam1_t", !89, i64 0, !90, i64 48, !76, i64 56, !91, i64 64, !91, i64 68, !91, i64 72}
!89 = !{!"bam1_core_t", !90, i64 0, !91, i64 8, !92, i64 12, !77, i64 14, !77, i64 15, !92, i64 16, !92, i64 18, !91, i64 20, !91, i64 24, !91, i64 28, !90, i64 32, !90, i64 40}
!90 = !{!"long", !77, i64 0}
!91 = !{!"int", !77, i64 0}
!92 = !{!"short", !77, i64 0}
!93 = !{!88, !91, i64 20}
!94 = !{!88, !92, i64 18}
!95 = !{!88, !91, i64 24}
!96 = !DILocation(line: 53, column: 13, scope: !68)
!97 = !DILocation(line: 54, column: 13, scope: !68)
!98 = !DILocation(line: 54, column: 15, scope: !68)
!99 = !DILocation(line: 54, column: 11, scope: !68)
!100 = !DILocation(line: 55, column: 9, scope: !68)
!101 = !DILocation(line: 55, column: 9, scope: !72)
!102 = !DILocation(line: 55, column: 9, scope: !74)
!103 = !DILocation(line: 55, column: 9, scope: !104)
!104 = distinct !DILexicalBlock(scope: !74, file: !1, line: 55, column: 9)
!105 = !{!77, !77, i64 0}
!106 = !{!91, !91, i64 0}
!107 = !DILocation(line: 55, column: 9, scope: !108)
!108 = distinct !DILexicalBlock(scope: !72, file: !1, line: 55, column: 9)
!109 = !DILocation(line: 55, column: 9, scope: !110)
!110 = distinct !DILexicalBlock(scope: !108, file: !1, line: 55, column: 9)
!111 = distinct !{!111, !109, !109, !112}
!112 = !{!"llvm.loop.mustprogress"}
!113 = !DILocation(line: 55, column: 9, scope: !114)
!114 = distinct !DILexicalBlock(scope: !108, file: !1, line: 55, column: 9)
!115 = !DILocation(line: 56, column: 17, scope: !68)
!116 = !DILocation(line: 56, column: 22, scope: !68)
!117 = !DILocation(line: 56, column: 25, scope: !68)
!118 = !DILocation(line: 56, column: 29, scope: !68)
!119 = !DILocation(line: 56, column: 27, scope: !68)
!120 = !DILocation(line: 56, column: 9, scope: !68)
!121 = !DILocation(line: 57, column: 22, scope: !68)
!122 = !{!88, !91, i64 64}
!123 = !DILocation(line: 57, column: 42, scope: !68)
!124 = !DILocation(line: 57, column: 46, scope: !68)
!125 = !DILocation(line: 57, column: 44, scope: !68)
!126 = !DILocation(line: 57, column: 39, scope: !68)
!127 = !DILocation(line: 57, column: 9, scope: !68)
!128 = !DILocation(line: 57, column: 12, scope: !68)
!129 = !DILocation(line: 57, column: 19, scope: !68)
!130 = !DILocation(line: 58, column: 5, scope: !69)
!131 = !DILocation(line: 58, column: 5, scope: !68)
!132 = !DILocation(line: 59, column: 22, scope: !133)
!133 = distinct !DILexicalBlock(scope: !69, file: !1, line: 58, column: 12)
!134 = !DILocation(line: 59, column: 9, scope: !133)
!135 = !DILocation(line: 59, column: 12, scope: !133)
!136 = !DILocation(line: 59, column: 19, scope: !133)
!137 = !DILocation(line: 61, column: 5, scope: !16)
!138 = !DISubprogram(name: "__ctype_toupper_loc", scope: !139, file: !139, line: 83, type: !140, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!139 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!140 = !DISubroutineType(types: !141)
!141 = !{!142}
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!145 = distinct !DISubprogram(name: "bam_aux_type2size", scope: !1, file: !1, line: 32, type: !146, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !148)
!146 = !DISubroutineType(types: !147)
!147 = !{!3, !3}
!148 = !{!149}
!149 = !DILocalVariable(name: "x", arg: 1, scope: !145, file: !1, line: 32, type: !3)
!150 = !DILocation(line: 32, column: 41, scope: !145)
!151 = !DILocation(line: 34, column: 9, scope: !152)
!152 = distinct !DILexicalBlock(scope: !145, file: !1, line: 34, column: 9)
!153 = !DILocation(line: 34, column: 11, scope: !152)
!154 = !DILocation(line: 34, column: 18, scope: !152)
!155 = !DILocation(line: 34, column: 21, scope: !152)
!156 = !DILocation(line: 34, column: 23, scope: !152)
!157 = !DILocation(line: 34, column: 30, scope: !152)
!158 = !DILocation(line: 34, column: 33, scope: !152)
!159 = !DILocation(line: 34, column: 35, scope: !152)
!160 = !DILocation(line: 34, column: 9, scope: !145)
!161 = !DILocation(line: 34, column: 43, scope: !152)
!162 = !DILocation(line: 35, column: 14, scope: !163)
!163 = distinct !DILexicalBlock(scope: !152, file: !1, line: 35, column: 14)
!164 = !DILocation(line: 35, column: 16, scope: !163)
!165 = !DILocation(line: 35, column: 23, scope: !163)
!166 = !DILocation(line: 35, column: 26, scope: !163)
!167 = !DILocation(line: 35, column: 28, scope: !163)
!168 = !DILocation(line: 35, column: 14, scope: !152)
!169 = !DILocation(line: 35, column: 36, scope: !163)
!170 = !DILocation(line: 36, column: 14, scope: !171)
!171 = distinct !DILexicalBlock(scope: !163, file: !1, line: 36, column: 14)
!172 = !DILocation(line: 36, column: 16, scope: !171)
!173 = !DILocation(line: 36, column: 23, scope: !171)
!174 = !DILocation(line: 36, column: 26, scope: !171)
!175 = !DILocation(line: 36, column: 28, scope: !171)
!176 = !DILocation(line: 36, column: 35, scope: !171)
!177 = !DILocation(line: 36, column: 38, scope: !171)
!178 = !DILocation(line: 36, column: 40, scope: !171)
!179 = !DILocation(line: 36, column: 47, scope: !171)
!180 = !DILocation(line: 36, column: 50, scope: !171)
!181 = !DILocation(line: 36, column: 52, scope: !171)
!182 = !DILocation(line: 36, column: 14, scope: !163)
!183 = !DILocation(line: 36, column: 60, scope: !171)
!184 = !DILocation(line: 37, column: 10, scope: !171)
!185 = !DILocation(line: 38, column: 1, scope: !145)
!186 = distinct !DISubprogram(name: "bam_parse_region", scope: !1, file: !1, line: 65, type: !187, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !224)
!187 = !DISubroutineType(types: !188)
!188 = !{!3, !189, !221, !223, !223, !223}
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "bam_header_t", file: !191, line: 73, baseType: !192)
!191 = !DIFile(filename: "./bam.h", directory: "/local-ssd/samtools-i7lpfd7rznpn2jrnaklwe67pg7qot4ru-build/aidengro/spack-stage-samtools-1.13-i7lpfd7rznpn2jrnaklwe67pg7qot4ru/spack-src", checksumkind: CSK_MD5, checksum: "b25aae1e697679aae4bff10658175bdb")
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "bam_hdr_t", file: !21, line: 88, baseType: !193)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "sam_hdr_t", file: !21, line: 83, baseType: !194)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sam_hdr_t", file: !21, line: 73, size: 576, elements: !195)
!195 = !{!196, !197, !198, !201, !203, !209, !213, !214, !216, !220}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "n_targets", scope: !194, file: !21, line: 74, baseType: !5, size: 32)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_sam_err", scope: !194, file: !21, line: 74, baseType: !5, size: 32, offset: 32)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "l_text", scope: !194, file: !21, line: 75, baseType: !199, size: 64, offset: 64)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !200, line: 70, baseType: !58)
!200 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!201 = !DIDerivedType(tag: DW_TAG_member, name: "target_len", scope: !194, file: !21, line: 76, baseType: !202, size: 64, offset: 128)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "cigar_tab", scope: !194, file: !21, line: 77, baseType: !204, size: 64, offset: 192)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !206)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !6, line: 24, baseType: !207)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !8, line: 37, baseType: !208)
!208 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "target_name", scope: !194, file: !21, line: 78, baseType: !210, size: 64, offset: 256)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !194, file: !21, line: 79, baseType: !211, size: 64, offset: 320)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "sdict", scope: !194, file: !21, line: 80, baseType: !215, size: 64, offset: 384)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "hrecs", scope: !194, file: !21, line: 81, baseType: !217, size: 64, offset: 448)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "sam_hrecs_t", file: !21, line: 52, baseType: !219)
!219 = !DICompositeType(tag: DW_TAG_structure_type, name: "sam_hrecs_t", file: !21, line: 52, flags: DIFlagFwdDecl)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !194, file: !21, line: 82, baseType: !48, size: 32, offset: 512)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !212)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3, size: 64)
!224 = !{!225, !226, !227, !228, !229, !230, !231, !232}
!225 = !DILocalVariable(name: "header", arg: 1, scope: !186, file: !1, line: 65, type: !189)
!226 = !DILocalVariable(name: "str", arg: 2, scope: !186, file: !1, line: 65, type: !221)
!227 = !DILocalVariable(name: "ref_id", arg: 3, scope: !186, file: !1, line: 65, type: !223)
!228 = !DILocalVariable(name: "beg", arg: 4, scope: !186, file: !1, line: 65, type: !223)
!229 = !DILocalVariable(name: "end", arg: 5, scope: !186, file: !1, line: 65, type: !223)
!230 = !DILocalVariable(name: "beg64", scope: !186, file: !1, line: 67, type: !29)
!231 = !DILocalVariable(name: "end64", scope: !186, file: !1, line: 67, type: !29)
!232 = !DILocalVariable(name: "r", scope: !186, file: !1, line: 68, type: !3)
!233 = !DILocation(line: 65, column: 36, scope: !186)
!234 = !DILocation(line: 65, column: 56, scope: !186)
!235 = !DILocation(line: 65, column: 66, scope: !186)
!236 = !DILocation(line: 65, column: 79, scope: !186)
!237 = !DILocation(line: 65, column: 89, scope: !186)
!238 = !DILocation(line: 67, column: 5, scope: !186)
!239 = !DILocation(line: 67, column: 15, scope: !186)
!240 = !DILocation(line: 67, column: 22, scope: !186)
!241 = !DILocation(line: 68, column: 5, scope: !186)
!242 = !DILocation(line: 68, column: 9, scope: !186)
!243 = !DILocation(line: 69, column: 26, scope: !186)
!244 = !DILocation(line: 69, column: 34, scope: !186)
!245 = !DILocation(line: 69, column: 39, scope: !186)
!246 = !DILocation(line: 69, column: 9, scope: !186)
!247 = !DILocation(line: 69, column: 7, scope: !186)
!248 = !DILocation(line: 70, column: 9, scope: !249)
!249 = distinct !DILexicalBlock(scope: !186, file: !1, line: 70, column: 9)
!250 = !{!90, !90, i64 0}
!251 = !DILocation(line: 70, column: 15, scope: !249)
!252 = !DILocation(line: 70, column: 25, scope: !249)
!253 = !DILocation(line: 70, column: 28, scope: !249)
!254 = !DILocation(line: 70, column: 34, scope: !249)
!255 = !DILocation(line: 70, column: 9, scope: !186)
!256 = !DILocation(line: 71, column: 9, scope: !249)
!257 = !DILocation(line: 72, column: 12, scope: !186)
!258 = !DILocation(line: 72, column: 6, scope: !186)
!259 = !DILocation(line: 72, column: 10, scope: !186)
!260 = !DILocation(line: 73, column: 12, scope: !186)
!261 = !DILocation(line: 73, column: 6, scope: !186)
!262 = !DILocation(line: 73, column: 10, scope: !186)
!263 = !DILocation(line: 74, column: 12, scope: !186)
!264 = !DILocation(line: 74, column: 5, scope: !186)
!265 = !DILocation(line: 75, column: 1, scope: !186)
!266 = !DISubprogram(name: "sam_parse_region", scope: !21, file: !21, line: 1364, type: !267, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!267 = !DISubroutineType(types: !268)
!268 = !{!221, !269, !221, !223, !270, !270, !3}
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)

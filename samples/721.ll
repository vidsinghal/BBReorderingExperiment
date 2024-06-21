; ModuleID = 'samples/721.bc'
source_filename = ".././../src/trpath-solve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.List_T = type { ptr, ptr }
%struct.Trdiag_T = type { i32, i32, i32, i32 }
%struct.Trpath_T = type { i8, i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.Path_T = type { float, i32, i32, i32, i32, double, double, i32, i32, ptr, i8, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i8, i8, i32, i32, double, double, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, double, ptr, ptr, ptr, ptr, i32 }
%struct.Intlist_T = type { i32, ptr }
%struct.Uintlist_T = type { i32, ptr }

@transcriptomebits = internal global ptr null, align 8
@chromosome_ef64 = internal global ptr null, align 8
@transcriptome = internal global ptr null, align 8
@.str = private unnamed_addr constant [19 x i8] c".././../src/list.h\00", align 1

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @List_push_keep(ptr noundef %list, ptr noundef %x) #0 {
entry:
  %list.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %new = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8, !tbaa !5
  store ptr %x, ptr %x.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %new) #4
  %call = call ptr @Mem_alloc(i64 noundef 16, ptr noundef @.str, i32 noundef 66)
  store ptr %call, ptr %new, align 8, !tbaa !5
  %0 = load ptr, ptr %x.addr, align 8, !tbaa !5
  %1 = load ptr, ptr %new, align 8, !tbaa !5
  %first = getelementptr inbounds %struct.List_T, ptr %1, i32 0, i32 0
  store ptr %0, ptr %first, align 8, !tbaa !9
  %2 = load ptr, ptr %list.addr, align 8, !tbaa !5
  %3 = load ptr, ptr %new, align 8, !tbaa !5
  %rest = getelementptr inbounds %struct.List_T, ptr %3, i32 0, i32 1
  store ptr %2, ptr %rest, align 8, !tbaa !11
  %4 = load ptr, ptr %new, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 8, ptr %new) #4
  ret ptr %4
}

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @List_push_out(ptr noundef %list, ptr noundef %x) #0 {
entry:
  %list.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %new = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8, !tbaa !5
  store ptr %x, ptr %x.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %new) #4
  %call = call ptr @Mem_alloc(i64 noundef 16, ptr noundef @.str, i32 noundef 75)
  store ptr %call, ptr %new, align 8, !tbaa !5
  %0 = load ptr, ptr %x.addr, align 8, !tbaa !5
  %1 = load ptr, ptr %new, align 8, !tbaa !5
  %first = getelementptr inbounds %struct.List_T, ptr %1, i32 0, i32 0
  store ptr %0, ptr %first, align 8, !tbaa !9
  %2 = load ptr, ptr %list.addr, align 8, !tbaa !5
  %3 = load ptr, ptr %new, align 8, !tbaa !5
  %rest = getelementptr inbounds %struct.List_T, ptr %3, i32 0, i32 1
  store ptr %2, ptr %rest, align 8, !tbaa !11
  %4 = load ptr, ptr %new, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 8, ptr %new) #4
  ret ptr %4
}

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @List_pop_keep(ptr noundef %list, ptr noundef %x) #0 {
entry:
  %retval = alloca ptr, align 8
  %list.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %head = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %list, ptr %list.addr, align 8, !tbaa !5
  store ptr %x, ptr %x.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %head) #4
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !5
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %list.addr, align 8, !tbaa !5
  %rest = getelementptr inbounds %struct.List_T, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %rest, align 8, !tbaa !11
  store ptr %2, ptr %head, align 8, !tbaa !5
  %3 = load ptr, ptr %list.addr, align 8, !tbaa !5
  %first = getelementptr inbounds %struct.List_T, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %first, align 8, !tbaa !9
  %5 = load ptr, ptr %x.addr, align 8, !tbaa !5
  store ptr %4, ptr %5, align 8, !tbaa !5
  %6 = load ptr, ptr %list.addr, align 8, !tbaa !5
  call void @Mem_free(ptr noundef %6, ptr noundef @.str, i32 noundef 137)
  store ptr null, ptr %list.addr, align 8, !tbaa !5
  %7 = load ptr, ptr %head, align 8, !tbaa !5
  store ptr %7, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %entry
  %8 = load ptr, ptr %list.addr, align 8, !tbaa !5
  store ptr %8, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %head) #4
  %9 = load ptr, ptr %retval, align 8
  ret ptr %9
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Trpath_solve_from_diagonals(ptr noundef %found_score, ptr noundef %found_transcriptp, i32 noundef %middle_trdiagonal, i32 noundef %middle_trdiagonal_qstart, i32 noundef %middle_trdiagonal_qend, i32 noundef %middle_nmismatches, ptr noundef %qstart_trdiag, ptr noundef %qend_trdiag, i8 noundef zeroext %tplusp, ptr noundef %queryseq, i32 noundef %querylength, ptr noundef %query_compress_tr, ptr noundef %query_compress_fwd, ptr noundef %query_compress_rev, ptr noundef %mismatch_positions_alloc, i32 noundef %trnum, i32 noundef %troffset, i32 noundef %trhigh, i32 noundef %chrnum, i8 noundef zeroext %geneplusp, i8 noundef zeroext %want_lowest_coordinate_p, ptr noundef %indelinfo, i32 noundef %nmismatches_allowed, i32 noundef %max_insertionlen, i32 noundef %max_deletionlen, ptr noundef %intlistpool, ptr noundef %uintlistpool, ptr noundef %univcoordlistpool, ptr noundef %listpool, ptr noundef %trpathpool, ptr noundef %pathpool, ptr noundef %vectorpool, ptr noundef %transcriptpool, i32 noundef %method) #1 {
entry:
  %retval = alloca ptr, align 8
  %found_score.addr = alloca ptr, align 8
  %found_transcriptp.addr = alloca ptr, align 8
  %middle_trdiagonal.addr = alloca i32, align 4
  %middle_trdiagonal_qstart.addr = alloca i32, align 4
  %middle_trdiagonal_qend.addr = alloca i32, align 4
  %middle_nmismatches.addr = alloca i32, align 4
  %qstart_trdiag.addr = alloca ptr, align 8
  %qend_trdiag.addr = alloca ptr, align 8
  %tplusp.addr = alloca i8, align 1
  %queryseq.addr = alloca ptr, align 8
  %querylength.addr = alloca i32, align 4
  %query_compress_tr.addr = alloca ptr, align 8
  %query_compress_fwd.addr = alloca ptr, align 8
  %query_compress_rev.addr = alloca ptr, align 8
  %mismatch_positions_alloc.addr = alloca ptr, align 8
  %trnum.addr = alloca i32, align 4
  %troffset.addr = alloca i32, align 4
  %trhigh.addr = alloca i32, align 4
  %chrnum.addr = alloca i32, align 4
  %geneplusp.addr = alloca i8, align 1
  %want_lowest_coordinate_p.addr = alloca i8, align 1
  %indelinfo.addr = alloca ptr, align 8
  %nmismatches_allowed.addr = alloca i32, align 4
  %max_insertionlen.addr = alloca i32, align 4
  %max_deletionlen.addr = alloca i32, align 4
  %intlistpool.addr = alloca ptr, align 8
  %uintlistpool.addr = alloca ptr, align 8
  %univcoordlistpool.addr = alloca ptr, align 8
  %listpool.addr = alloca ptr, align 8
  %trpathpool.addr = alloca ptr, align 8
  %pathpool.addr = alloca ptr, align 8
  %vectorpool.addr = alloca ptr, align 8
  %transcriptpool.addr = alloca ptr, align 8
  %method.addr = alloca i32, align 4
  %path = alloca ptr, align 8
  %invalid_transcripts = alloca ptr, align 8
  %trpath = alloca ptr, align 8
  %tstart_path = alloca ptr, align 8
  %tend_path = alloca ptr, align 8
  %nmismatches_to_trimpos = alloca i32, align 4
  %total_nmismatches = alloca i32, align 4
  %tstart = alloca i32, align 4
  %tend = alloca i32, align 4
  %trimpos = alloca i32, align 4
  %adj = alloca i32, align 4
  %nexons = alloca i32, align 4
  %exonbounds = alloca ptr, align 8
  %exonstarts = alloca ptr, align 8
  %chroffset = alloca i32, align 4
  %chrhigh = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %found_score, ptr %found_score.addr, align 8, !tbaa !5
  store ptr %found_transcriptp, ptr %found_transcriptp.addr, align 8, !tbaa !5
  store i32 %middle_trdiagonal, ptr %middle_trdiagonal.addr, align 4, !tbaa !12
  store i32 %middle_trdiagonal_qstart, ptr %middle_trdiagonal_qstart.addr, align 4, !tbaa !12
  store i32 %middle_trdiagonal_qend, ptr %middle_trdiagonal_qend.addr, align 4, !tbaa !12
  store i32 %middle_nmismatches, ptr %middle_nmismatches.addr, align 4, !tbaa !12
  store ptr %qstart_trdiag, ptr %qstart_trdiag.addr, align 8, !tbaa !5
  store ptr %qend_trdiag, ptr %qend_trdiag.addr, align 8, !tbaa !5
  store i8 %tplusp, ptr %tplusp.addr, align 1, !tbaa !14
  store ptr %queryseq, ptr %queryseq.addr, align 8, !tbaa !5
  store i32 %querylength, ptr %querylength.addr, align 4, !tbaa !12
  store ptr %query_compress_tr, ptr %query_compress_tr.addr, align 8, !tbaa !5
  store ptr %query_compress_fwd, ptr %query_compress_fwd.addr, align 8, !tbaa !5
  store ptr %query_compress_rev, ptr %query_compress_rev.addr, align 8, !tbaa !5
  store ptr %mismatch_positions_alloc, ptr %mismatch_positions_alloc.addr, align 8, !tbaa !5
  store i32 %trnum, ptr %trnum.addr, align 4, !tbaa !12
  store i32 %troffset, ptr %troffset.addr, align 4, !tbaa !12
  store i32 %trhigh, ptr %trhigh.addr, align 4, !tbaa !12
  store i32 %chrnum, ptr %chrnum.addr, align 4, !tbaa !12
  store i8 %geneplusp, ptr %geneplusp.addr, align 1, !tbaa !14
  store i8 %want_lowest_coordinate_p, ptr %want_lowest_coordinate_p.addr, align 1, !tbaa !14
  store ptr %indelinfo, ptr %indelinfo.addr, align 8, !tbaa !5
  store i32 %nmismatches_allowed, ptr %nmismatches_allowed.addr, align 4, !tbaa !12
  store i32 %max_insertionlen, ptr %max_insertionlen.addr, align 4, !tbaa !12
  store i32 %max_deletionlen, ptr %max_deletionlen.addr, align 4, !tbaa !12
  store ptr %intlistpool, ptr %intlistpool.addr, align 8, !tbaa !5
  store ptr %uintlistpool, ptr %uintlistpool.addr, align 8, !tbaa !5
  store ptr %univcoordlistpool, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  store ptr %listpool, ptr %listpool.addr, align 8, !tbaa !5
  store ptr %trpathpool, ptr %trpathpool.addr, align 8, !tbaa !5
  store ptr %pathpool, ptr %pathpool.addr, align 8, !tbaa !5
  store ptr %vectorpool, ptr %vectorpool.addr, align 8, !tbaa !5
  store ptr %transcriptpool, ptr %transcriptpool.addr, align 8, !tbaa !5
  store i32 %method, ptr %method.addr, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 8, ptr %path) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %invalid_transcripts) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %trpath) #4
  store ptr null, ptr %trpath, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %tstart_path) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %tend_path) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %nmismatches_to_trimpos) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %total_nmismatches) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %tstart) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %tend) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %trimpos) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %adj) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %nexons) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %exonbounds) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %exonstarts) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %chroffset) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %chrhigh) #4
  %0 = load ptr, ptr %qstart_trdiag.addr, align 8, !tbaa !5
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %middle_trdiagonal.addr, align 4, !tbaa !12
  %2 = load i32, ptr %middle_trdiagonal_qstart.addr, align 4, !tbaa !12
  %3 = load i32, ptr %middle_trdiagonal_qend.addr, align 4, !tbaa !12
  %4 = load i32, ptr %middle_nmismatches.addr, align 4, !tbaa !12
  %5 = load i8, ptr %tplusp.addr, align 1, !tbaa !14
  %6 = load i32, ptr %trnum.addr, align 4, !tbaa !12
  %7 = load i32, ptr %troffset.addr, align 4, !tbaa !12
  %8 = load i32, ptr %trhigh.addr, align 4, !tbaa !12
  %9 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %10 = load ptr, ptr %uintlistpool.addr, align 8, !tbaa !5
  %11 = load ptr, ptr %trpathpool.addr, align 8, !tbaa !5
  %call = call ptr @Trpath_new_for_tstart_extension(i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i8 noundef zeroext %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11)
  store ptr %call, ptr %tstart_path, align 8, !tbaa !5
  %12 = load ptr, ptr %tstart_path, align 8, !tbaa !5
  %13 = load ptr, ptr %qstart_trdiag.addr, align 8, !tbaa !5
  %trdiagonal = getelementptr inbounds %struct.Trdiag_T, ptr %13, i32 0, i32 0
  %14 = load i32, ptr %trdiagonal, align 4, !tbaa !15
  %15 = load ptr, ptr %qstart_trdiag.addr, align 8, !tbaa !5
  %qstart = getelementptr inbounds %struct.Trdiag_T, ptr %15, i32 0, i32 1
  %16 = load i32, ptr %qstart, align 4, !tbaa !17
  %17 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %18 = load ptr, ptr %indelinfo.addr, align 8, !tbaa !5
  %19 = load ptr, ptr %query_compress_tr.addr, align 8, !tbaa !5
  %20 = load i32, ptr %nmismatches_allowed.addr, align 4, !tbaa !12
  %21 = load i32, ptr %max_insertionlen.addr, align 4, !tbaa !12
  %22 = load i32, ptr %max_deletionlen.addr, align 4, !tbaa !12
  %23 = load i8, ptr %want_lowest_coordinate_p.addr, align 1, !tbaa !14
  %24 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %25 = load ptr, ptr %uintlistpool.addr, align 8, !tbaa !5
  %26 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %27 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  call void @attach_indel_tstart(ptr noundef %12, i32 noundef %14, i32 noundef %16, i32 noundef %17, ptr noundef %18, ptr noundef %19, i32 noundef %20, i32 noundef %21, i32 noundef %22, i8 noundef zeroext %23, ptr noundef %24, ptr noundef %25, ptr noundef %26, ptr noundef %27)
  br label %if.end14

if.else:                                          ; preds = %entry
  %28 = load ptr, ptr %mismatch_positions_alloc.addr, align 8, !tbaa !5
  %29 = load ptr, ptr %query_compress_tr.addr, align 8, !tbaa !5
  %30 = load ptr, ptr @transcriptomebits, align 8, !tbaa !5
  %31 = load i32, ptr %middle_trdiagonal.addr, align 4, !tbaa !12
  %32 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %33 = load i32, ptr %middle_trdiagonal_qend.addr, align 4, !tbaa !12
  %34 = load i8, ptr %tplusp.addr, align 1, !tbaa !14
  %call1 = call i32 @Spliceends_trim_qstart_nosplice(ptr noundef %nmismatches_to_trimpos, ptr noundef %total_nmismatches, ptr noundef %28, ptr noundef %29, ptr noundef %30, ptr noundef null, i32 noundef %31, i32 noundef %32, i32 noundef 0, i32 noundef %33, i8 noundef zeroext %34, i32 noundef 0)
  store i32 %call1, ptr %tstart, align 4, !tbaa !12
  %35 = load i32, ptr %middle_trdiagonal_qend.addr, align 4, !tbaa !12
  %cmp2 = icmp slt i32 %call1, %35
  br i1 %cmp2, label %if.then3, label %if.else12

if.then3:                                         ; preds = %if.else
  %36 = load i32, ptr %middle_trdiagonal.addr, align 4, !tbaa !12
  %37 = load i32, ptr %tstart, align 4, !tbaa !12
  %38 = load i32, ptr %middle_trdiagonal_qend.addr, align 4, !tbaa !12
  %39 = load i32, ptr %nmismatches_to_trimpos, align 4, !tbaa !12
  %40 = load i8, ptr %tplusp.addr, align 1, !tbaa !14
  %41 = load i32, ptr %trnum.addr, align 4, !tbaa !12
  %42 = load i32, ptr %troffset.addr, align 4, !tbaa !12
  %43 = load i32, ptr %trhigh.addr, align 4, !tbaa !12
  %44 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %45 = load ptr, ptr %uintlistpool.addr, align 8, !tbaa !5
  %46 = load ptr, ptr %trpathpool.addr, align 8, !tbaa !5
  %call4 = call ptr @Trpath_new_for_tstart_extension(i32 noundef %36, i32 noundef %37, i32 noundef %38, i32 noundef %39, i8 noundef zeroext %40, i32 noundef %41, i32 noundef %42, i32 noundef %43, ptr noundef %44, ptr noundef %45, ptr noundef %46)
  store ptr %call4, ptr %tstart_path, align 8, !tbaa !5
  %47 = load i32, ptr %tstart, align 4, !tbaa !12
  %cmp5 = icmp eq i32 %47, 0
  br i1 %cmp5, label %if.then6, label %if.else7

if.then6:                                         ; preds = %if.then3
  br label %if.end11

if.else7:                                         ; preds = %if.then3
  %48 = load i32, ptr %middle_trdiagonal.addr, align 4, !tbaa !12
  %49 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %50 = load i32, ptr %tstart, align 4, !tbaa !12
  %51 = load ptr, ptr %query_compress_tr.addr, align 8, !tbaa !5
  %52 = load ptr, ptr %mismatch_positions_alloc.addr, align 8, !tbaa !5
  %53 = load ptr, ptr @transcriptomebits, align 8, !tbaa !5
  %54 = load i8, ptr %tplusp.addr, align 1, !tbaa !14
  %call8 = call i32 @Genomebits_indel_solve_low(ptr noundef %trimpos, ptr noundef %nmismatches_to_trimpos, i32 noundef %48, i32 noundef %49, i32 noundef 0, i32 noundef %50, ptr noundef %51, ptr noundef %52, ptr noundef %53, ptr noundef null, i8 noundef zeroext %54, i32 noundef 0)
  store i32 %call8, ptr %adj, align 4, !tbaa !12
  %cmp9 = icmp ne i32 %call8, 0
  br i1 %cmp9, label %if.then10, label %if.end

if.then10:                                        ; preds = %if.else7
  %55 = load ptr, ptr %tstart_path, align 8, !tbaa !5
  %56 = load i32, ptr %middle_trdiagonal.addr, align 4, !tbaa !12
  %57 = load i32, ptr %adj, align 4, !tbaa !12
  %sub = sub i32 %56, %57
  %58 = load i32, ptr %trimpos, align 4, !tbaa !12
  %59 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %60 = load ptr, ptr %indelinfo.addr, align 8, !tbaa !5
  %61 = load ptr, ptr %query_compress_tr.addr, align 8, !tbaa !5
  %62 = load i32, ptr %nmismatches_allowed.addr, align 4, !tbaa !12
  %63 = load i32, ptr %max_insertionlen.addr, align 4, !tbaa !12
  %64 = load i32, ptr %max_deletionlen.addr, align 4, !tbaa !12
  %65 = load i8, ptr %want_lowest_coordinate_p.addr, align 1, !tbaa !14
  %66 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %67 = load ptr, ptr %uintlistpool.addr, align 8, !tbaa !5
  %68 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %69 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  call void @attach_indel_tstart(ptr noundef %55, i32 noundef %sub, i32 noundef %58, i32 noundef %59, ptr noundef %60, ptr noundef %61, i32 noundef %62, i32 noundef %63, i32 noundef %64, i8 noundef zeroext %65, ptr noundef %66, ptr noundef %67, ptr noundef %68, ptr noundef %69)
  br label %if.end

if.end:                                           ; preds = %if.then10, %if.else7
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then6
  br label %if.end13

if.else12:                                        ; preds = %if.else
  store ptr null, ptr %tstart_path, align 8, !tbaa !5
  br label %if.end13

if.end13:                                         ; preds = %if.else12, %if.end11
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.then
  %70 = load ptr, ptr %qend_trdiag.addr, align 8, !tbaa !5
  %cmp15 = icmp ne ptr %70, null
  br i1 %cmp15, label %if.then16, label %if.else19

if.then16:                                        ; preds = %if.end14
  %71 = load i32, ptr %middle_trdiagonal.addr, align 4, !tbaa !12
  %72 = load i32, ptr %middle_trdiagonal_qstart.addr, align 4, !tbaa !12
  %73 = load i32, ptr %middle_trdiagonal_qend.addr, align 4, !tbaa !12
  %74 = load i32, ptr %middle_nmismatches.addr, align 4, !tbaa !12
  %75 = load i8, ptr %tplusp.addr, align 1, !tbaa !14
  %76 = load i32, ptr %trnum.addr, align 4, !tbaa !12
  %77 = load i32, ptr %troffset.addr, align 4, !tbaa !12
  %78 = load i32, ptr %trhigh.addr, align 4, !tbaa !12
  %79 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %80 = load ptr, ptr %uintlistpool.addr, align 8, !tbaa !5
  %81 = load ptr, ptr %trpathpool.addr, align 8, !tbaa !5
  %call17 = call ptr @Trpath_new_for_tend_extension(i32 noundef %71, i32 noundef %72, i32 noundef %73, i32 noundef %74, i8 noundef zeroext %75, i32 noundef %76, i32 noundef %77, i32 noundef %78, ptr noundef %79, ptr noundef %80, ptr noundef %81)
  store ptr %call17, ptr %tend_path, align 8, !tbaa !5
  %82 = load ptr, ptr %tend_path, align 8, !tbaa !5
  %83 = load ptr, ptr %qend_trdiag.addr, align 8, !tbaa !5
  %trdiagonal18 = getelementptr inbounds %struct.Trdiag_T, ptr %83, i32 0, i32 0
  %84 = load i32, ptr %trdiagonal18, align 4, !tbaa !15
  %85 = load ptr, ptr %qend_trdiag.addr, align 8, !tbaa !5
  %qend = getelementptr inbounds %struct.Trdiag_T, ptr %85, i32 0, i32 2
  %86 = load i32, ptr %qend, align 4, !tbaa !18
  %87 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %88 = load ptr, ptr %indelinfo.addr, align 8, !tbaa !5
  %89 = load ptr, ptr %query_compress_tr.addr, align 8, !tbaa !5
  %90 = load i32, ptr %nmismatches_allowed.addr, align 4, !tbaa !12
  %91 = load i32, ptr %max_insertionlen.addr, align 4, !tbaa !12
  %92 = load i32, ptr %max_deletionlen.addr, align 4, !tbaa !12
  %93 = load i8, ptr %want_lowest_coordinate_p.addr, align 1, !tbaa !14
  %94 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %95 = load ptr, ptr %uintlistpool.addr, align 8, !tbaa !5
  %96 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %97 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  call void @attach_indel_tend(ptr noundef %82, i32 noundef %84, i32 noundef %86, i32 noundef %87, ptr noundef %88, ptr noundef %89, i32 noundef %90, i32 noundef %91, i32 noundef %92, i8 noundef zeroext %93, ptr noundef %94, ptr noundef %95, ptr noundef %96, ptr noundef %97)
  br label %if.end34

if.else19:                                        ; preds = %if.end14
  %98 = load ptr, ptr %mismatch_positions_alloc.addr, align 8, !tbaa !5
  %99 = load ptr, ptr %query_compress_tr.addr, align 8, !tbaa !5
  %100 = load ptr, ptr @transcriptomebits, align 8, !tbaa !5
  %101 = load i32, ptr %middle_trdiagonal.addr, align 4, !tbaa !12
  %102 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %103 = load i32, ptr %middle_trdiagonal_qstart.addr, align 4, !tbaa !12
  %104 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %105 = load i8, ptr %tplusp.addr, align 1, !tbaa !14
  %call20 = call i32 @Spliceends_trim_qend_nosplice(ptr noundef %nmismatches_to_trimpos, ptr noundef %total_nmismatches, ptr noundef %98, ptr noundef %99, ptr noundef %100, ptr noundef null, i32 noundef %101, i32 noundef %102, i32 noundef %103, i32 noundef %104, i8 noundef zeroext %105, i32 noundef 0)
  store i32 %call20, ptr %tend, align 4, !tbaa !12
  %106 = load i32, ptr %middle_trdiagonal_qstart.addr, align 4, !tbaa !12
  %cmp21 = icmp sgt i32 %call20, %106
  br i1 %cmp21, label %if.then22, label %if.else32

if.then22:                                        ; preds = %if.else19
  %107 = load i32, ptr %middle_trdiagonal.addr, align 4, !tbaa !12
  %108 = load i32, ptr %middle_trdiagonal_qstart.addr, align 4, !tbaa !12
  %109 = load i32, ptr %tend, align 4, !tbaa !12
  %110 = load i32, ptr %nmismatches_to_trimpos, align 4, !tbaa !12
  %111 = load i8, ptr %tplusp.addr, align 1, !tbaa !14
  %112 = load i32, ptr %trnum.addr, align 4, !tbaa !12
  %113 = load i32, ptr %troffset.addr, align 4, !tbaa !12
  %114 = load i32, ptr %trhigh.addr, align 4, !tbaa !12
  %115 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %116 = load ptr, ptr %uintlistpool.addr, align 8, !tbaa !5
  %117 = load ptr, ptr %trpathpool.addr, align 8, !tbaa !5
  %call23 = call ptr @Trpath_new_for_tend_extension(i32 noundef %107, i32 noundef %108, i32 noundef %109, i32 noundef %110, i8 noundef zeroext %111, i32 noundef %112, i32 noundef %113, i32 noundef %114, ptr noundef %115, ptr noundef %116, ptr noundef %117)
  store ptr %call23, ptr %tend_path, align 8, !tbaa !5
  %118 = load i32, ptr %tend, align 4, !tbaa !12
  %119 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %cmp24 = icmp eq i32 %118, %119
  br i1 %cmp24, label %if.then25, label %if.else26

if.then25:                                        ; preds = %if.then22
  br label %if.end31

if.else26:                                        ; preds = %if.then22
  %120 = load i32, ptr %middle_trdiagonal.addr, align 4, !tbaa !12
  %121 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %122 = load i32, ptr %tend, align 4, !tbaa !12
  %123 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %124 = load ptr, ptr %query_compress_tr.addr, align 8, !tbaa !5
  %125 = load ptr, ptr %mismatch_positions_alloc.addr, align 8, !tbaa !5
  %126 = load ptr, ptr @transcriptomebits, align 8, !tbaa !5
  %127 = load i8, ptr %tplusp.addr, align 1, !tbaa !14
  %call27 = call i32 @Genomebits_indel_solve_high(ptr noundef %trimpos, ptr noundef %nmismatches_to_trimpos, i32 noundef %120, i32 noundef %121, i32 noundef %122, i32 noundef %123, ptr noundef %124, ptr noundef %125, ptr noundef %126, ptr noundef null, i8 noundef zeroext %127, i32 noundef 0)
  store i32 %call27, ptr %adj, align 4, !tbaa !12
  %cmp28 = icmp ne i32 %call27, 0
  br i1 %cmp28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.else26
  %128 = load ptr, ptr %tend_path, align 8, !tbaa !5
  %129 = load i32, ptr %middle_trdiagonal.addr, align 4, !tbaa !12
  %130 = load i32, ptr %adj, align 4, !tbaa !12
  %add = add i32 %129, %130
  %131 = load i32, ptr %trimpos, align 4, !tbaa !12
  %132 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %133 = load ptr, ptr %indelinfo.addr, align 8, !tbaa !5
  %134 = load ptr, ptr %query_compress_tr.addr, align 8, !tbaa !5
  %135 = load i32, ptr %nmismatches_allowed.addr, align 4, !tbaa !12
  %136 = load i32, ptr %max_insertionlen.addr, align 4, !tbaa !12
  %137 = load i32, ptr %max_deletionlen.addr, align 4, !tbaa !12
  %138 = load i8, ptr %want_lowest_coordinate_p.addr, align 1, !tbaa !14
  %139 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %140 = load ptr, ptr %uintlistpool.addr, align 8, !tbaa !5
  %141 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %142 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  call void @attach_indel_tend(ptr noundef %128, i32 noundef %add, i32 noundef %131, i32 noundef %132, ptr noundef %133, ptr noundef %134, i32 noundef %135, i32 noundef %136, i32 noundef %137, i8 noundef zeroext %138, ptr noundef %139, ptr noundef %140, ptr noundef %141, ptr noundef %142)
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.else26
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %if.then25
  br label %if.end33

if.else32:                                        ; preds = %if.else19
  store ptr null, ptr %tend_path, align 8, !tbaa !5
  br label %if.end33

if.end33:                                         ; preds = %if.else32, %if.end31
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.then16
  %143 = load ptr, ptr %tstart_path, align 8, !tbaa !5
  %cmp35 = icmp eq ptr %143, null
  br i1 %cmp35, label %land.lhs.true, label %if.else38

land.lhs.true:                                    ; preds = %if.end34
  %144 = load ptr, ptr %tend_path, align 8, !tbaa !5
  %cmp36 = icmp eq ptr %144, null
  br i1 %cmp36, label %if.then37, label %if.else38

if.then37:                                        ; preds = %land.lhs.true
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else38:                                        ; preds = %land.lhs.true, %if.end34
  %145 = load ptr, ptr %tstart_path, align 8, !tbaa !5
  %cmp39 = icmp ne ptr %145, null
  br i1 %cmp39, label %land.lhs.true40, label %if.else43

land.lhs.true40:                                  ; preds = %if.else38
  %146 = load ptr, ptr %tend_path, align 8, !tbaa !5
  %cmp41 = icmp eq ptr %146, null
  br i1 %cmp41, label %if.then42, label %if.else43

if.then42:                                        ; preds = %land.lhs.true40
  %147 = load ptr, ptr %tstart_path, align 8, !tbaa !5
  store ptr %147, ptr %trpath, align 8, !tbaa !5
  br label %if.end54

if.else43:                                        ; preds = %land.lhs.true40, %if.else38
  %148 = load ptr, ptr %tstart_path, align 8, !tbaa !5
  %cmp44 = icmp eq ptr %148, null
  br i1 %cmp44, label %land.lhs.true45, label %if.else48

land.lhs.true45:                                  ; preds = %if.else43
  %149 = load ptr, ptr %tend_path, align 8, !tbaa !5
  %cmp46 = icmp ne ptr %149, null
  br i1 %cmp46, label %if.then47, label %if.else48

if.then47:                                        ; preds = %land.lhs.true45
  %150 = load ptr, ptr %tend_path, align 8, !tbaa !5
  store ptr %150, ptr %trpath, align 8, !tbaa !5
  br label %if.end53

if.else48:                                        ; preds = %land.lhs.true45, %if.else43
  %151 = load ptr, ptr %tstart_path, align 8, !tbaa !5
  %152 = load ptr, ptr %tend_path, align 8, !tbaa !5
  %153 = load i8, ptr %tplusp.addr, align 1, !tbaa !14
  %154 = load i32, ptr %nmismatches_allowed.addr, align 4, !tbaa !12
  %155 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %156 = load ptr, ptr %uintlistpool.addr, align 8, !tbaa !5
  %157 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %158 = load ptr, ptr %trpathpool.addr, align 8, !tbaa !5
  %159 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %call49 = call ptr @combine_leftright_trpaths(ptr noundef %151, ptr noundef %152, i8 noundef zeroext %153, i32 noundef %154, ptr noundef %155, ptr noundef %156, ptr noundef %157, ptr noundef %158, ptr noundef %159)
  store ptr %call49, ptr %trpath, align 8, !tbaa !5
  %cmp50 = icmp eq ptr %call49, null
  br i1 %cmp50, label %if.then51, label %if.end52

if.then51:                                        ; preds = %if.else48
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end52:                                         ; preds = %if.else48
  br label %if.end53

if.end53:                                         ; preds = %if.end52, %if.then47
  br label %if.end54

if.end54:                                         ; preds = %if.end53, %if.then42
  br label %if.end55

if.end55:                                         ; preds = %if.end54
  %160 = load ptr, ptr %trpath, align 8, !tbaa !5
  %endpoints = getelementptr inbounds %struct.Trpath_T, ptr %160, i32 0, i32 5
  %161 = load ptr, ptr %endpoints, align 8, !tbaa !19
  %call56 = call i32 @Intlist_head(ptr noundef %161)
  %cmp57 = icmp ne i32 %call56, 0
  br i1 %cmp57, label %if.then58, label %if.else59

if.then58:                                        ; preds = %if.end55
  %162 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %163 = load ptr, ptr %uintlistpool.addr, align 8, !tbaa !5
  %164 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %165 = load ptr, ptr %trpathpool.addr, align 8, !tbaa !5
  %166 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  call void @Trpath_free(ptr noundef %trpath, ptr noundef %162, ptr noundef %163, ptr noundef %164, ptr noundef %165, ptr noundef %166)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else59:                                        ; preds = %if.end55
  %167 = load ptr, ptr %trpath, align 8, !tbaa !5
  %endpoints60 = getelementptr inbounds %struct.Trpath_T, ptr %167, i32 0, i32 5
  %168 = load ptr, ptr %endpoints60, align 8, !tbaa !19
  %call61 = call i32 @Intlist_last_value(ptr noundef %168)
  %169 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %cmp62 = icmp ne i32 %call61, %169
  br i1 %cmp62, label %if.then63, label %if.else64

if.then63:                                        ; preds = %if.else59
  %170 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %171 = load ptr, ptr %uintlistpool.addr, align 8, !tbaa !5
  %172 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %173 = load ptr, ptr %trpathpool.addr, align 8, !tbaa !5
  %174 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  call void @Trpath_free(ptr noundef %trpath, ptr noundef %170, ptr noundef %171, ptr noundef %172, ptr noundef %173, ptr noundef %174)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else64:                                        ; preds = %if.else59
  %175 = load ptr, ptr @chromosome_ef64, align 8, !tbaa !5
  %176 = load i32, ptr %chrnum.addr, align 4, !tbaa !12
  call void @EF64_chrbounds(ptr noundef %chroffset, ptr noundef %chrhigh, ptr noundef %175, i32 noundef %176)
  %177 = load ptr, ptr @transcriptome, align 8, !tbaa !5
  %178 = load i32, ptr %trnum.addr, align 4, !tbaa !12
  %call65 = call i32 @Transcriptome_exons(ptr noundef %exonbounds, ptr noundef %exonstarts, ptr noundef %177, i32 noundef %178)
  store i32 %call65, ptr %nexons, align 4, !tbaa !12
  %179 = load i8, ptr %geneplusp.addr, align 1, !tbaa !14
  %conv = zext i8 %179 to i32
  %cmp66 = icmp eq i32 %conv, 1
  br i1 %cmp66, label %if.then68, label %if.else93

if.then68:                                        ; preds = %if.else64
  %180 = load ptr, ptr %trpath, align 8, !tbaa !5
  %181 = load ptr, ptr %exonbounds, align 8, !tbaa !5
  %182 = load ptr, ptr %exonstarts, align 8, !tbaa !5
  %183 = load i32, ptr %nexons, align 4, !tbaa !12
  %184 = load i32, ptr %chrnum.addr, align 4, !tbaa !12
  %185 = load i32, ptr %chroffset, align 4, !tbaa !12
  %186 = load i32, ptr %chrhigh, align 4, !tbaa !12
  %187 = load i8, ptr %tplusp.addr, align 1, !tbaa !14
  %188 = load i8, ptr %tplusp.addr, align 1, !tbaa !14
  %conv69 = zext i8 %188 to i32
  %cmp70 = icmp eq i32 %conv69, 1
  %189 = zext i1 %cmp70 to i64
  %cond = select i1 %cmp70, i32 2, i32 1
  %190 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %191 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %192 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %193 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %194 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %195 = load i32, ptr %method.addr, align 4, !tbaa !14
  %call72 = call ptr @Trpath_convert_to_path_geneplus(ptr noundef %180, ptr noundef %181, ptr noundef %182, i32 noundef %183, i32 noundef %184, i32 noundef %185, i32 noundef %186, i8 noundef zeroext %187, i32 noundef %cond, i32 noundef %190, ptr noundef %191, ptr noundef %192, ptr noundef %193, ptr noundef %194, i32 noundef %195)
  store ptr %call72, ptr %path, align 8, !tbaa !5
  %cmp73 = icmp eq ptr %call72, null
  br i1 %cmp73, label %if.then75, label %if.else76

if.then75:                                        ; preds = %if.then68
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else76:                                        ; preds = %if.then68
  %196 = load ptr, ptr %found_score.addr, align 8, !tbaa !5
  %197 = load ptr, ptr %path, align 8, !tbaa !5
  %198 = load ptr, ptr %query_compress_fwd.addr, align 8, !tbaa !5
  %199 = load ptr, ptr %query_compress_rev.addr, align 8, !tbaa !5
  %call77 = call i32 @Path_eval_nmatches(ptr noundef %196, ptr noundef %197, ptr noundef %198, ptr noundef %199)
  %cmp78 = icmp eq i32 %call77, 0
  br i1 %cmp78, label %if.then80, label %if.else81

if.then80:                                        ; preds = %if.else76
  %200 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %201 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %202 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %203 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %204 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  call void @Path_free(ptr noundef %path, ptr noundef %200, ptr noundef %201, ptr noundef %202, ptr noundef %203, ptr noundef %204)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else81:                                        ; preds = %if.else76
  %205 = load ptr, ptr %path, align 8, !tbaa !5
  %score_within_trims = getelementptr inbounds %struct.Path_T, ptr %205, i32 0, i32 8
  %206 = load i32, ptr %score_within_trims, align 4, !tbaa !21
  %207 = load i32, ptr %nmismatches_allowed.addr, align 4, !tbaa !12
  %cmp82 = icmp sgt i32 %206, %207
  br i1 %cmp82, label %if.then84, label %if.else85

if.then84:                                        ; preds = %if.else81
  %208 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %209 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %210 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %211 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %212 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  call void @Path_free(ptr noundef %path, ptr noundef %208, ptr noundef %209, ptr noundef %210, ptr noundef %211, ptr noundef %212)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else85:                                        ; preds = %if.else81
  %213 = load ptr, ptr %found_transcriptp.addr, align 8, !tbaa !5
  %214 = load ptr, ptr %path, align 8, !tbaa !5
  %transcripts = getelementptr inbounds %struct.Path_T, ptr %214, i32 0, i32 51
  %215 = load ptr, ptr %path, align 8, !tbaa !5
  %invalid_transcripts86 = getelementptr inbounds %struct.Path_T, ptr %215, i32 0, i32 52
  %216 = load ptr, ptr %path, align 8, !tbaa !5
  %endpoints87 = getelementptr inbounds %struct.Path_T, ptr %216, i32 0, i32 17
  %217 = load ptr, ptr %endpoints87, align 8, !tbaa !25
  %218 = load ptr, ptr %path, align 8, !tbaa !5
  %univdiagonals = getelementptr inbounds %struct.Path_T, ptr %218, i32 0, i32 18
  %219 = load ptr, ptr %univdiagonals, align 8, !tbaa !26
  %220 = load ptr, ptr %path, align 8, !tbaa !5
  %junctions = getelementptr inbounds %struct.Path_T, ptr %220, i32 0, i32 21
  %221 = load ptr, ptr %junctions, align 8, !tbaa !27
  %222 = load ptr, ptr %queryseq.addr, align 8, !tbaa !5
  %223 = load ptr, ptr %path, align 8, !tbaa !5
  %querylength88 = getelementptr inbounds %struct.Path_T, ptr %223, i32 0, i32 13
  %224 = load i32, ptr %querylength88, align 4, !tbaa !28
  %225 = load ptr, ptr %path, align 8, !tbaa !5
  %plusp = getelementptr inbounds %struct.Path_T, ptr %225, i32 0, i32 10
  %226 = load i8, ptr %plusp, align 8, !tbaa !29
  %227 = load ptr, ptr %path, align 8, !tbaa !5
  %chrnum89 = getelementptr inbounds %struct.Path_T, ptr %227, i32 0, i32 14
  %228 = load i32, ptr %chrnum89, align 8, !tbaa !30
  %229 = load ptr, ptr %path, align 8, !tbaa !5
  %chroffset90 = getelementptr inbounds %struct.Path_T, ptr %229, i32 0, i32 15
  %230 = load i32, ptr %chroffset90, align 4, !tbaa !31
  %231 = load ptr, ptr %path, align 8, !tbaa !5
  %chrhigh91 = getelementptr inbounds %struct.Path_T, ptr %231, i32 0, i32 16
  %232 = load i32, ptr %chrhigh91, align 8, !tbaa !32
  %233 = load ptr, ptr %uintlistpool.addr, align 8, !tbaa !5
  %234 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %235 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  %236 = load ptr, ptr %vectorpool.addr, align 8, !tbaa !5
  %call92 = call ptr @Transcript_remap(ptr noundef %213, ptr noundef %transcripts, ptr noundef %invalid_transcripts86, ptr noundef %217, ptr noundef %219, ptr noundef %221, ptr noundef %222, i32 noundef %224, i8 noundef zeroext %226, i32 noundef %228, i32 noundef %230, i32 noundef %232, ptr noundef %233, ptr noundef %234, ptr noundef %235, ptr noundef %236, i32 noundef 0, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 0)
  %237 = load ptr, ptr %path, align 8, !tbaa !5
  store ptr %237, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else93:                                        ; preds = %if.else64
  %238 = load ptr, ptr %trpath, align 8, !tbaa !5
  %239 = load ptr, ptr %exonbounds, align 8, !tbaa !5
  %240 = load ptr, ptr %exonstarts, align 8, !tbaa !5
  %241 = load i32, ptr %nexons, align 4, !tbaa !12
  %242 = load i32, ptr %chrnum.addr, align 4, !tbaa !12
  %243 = load i32, ptr %chroffset, align 4, !tbaa !12
  %244 = load i32, ptr %chrhigh, align 4, !tbaa !12
  %245 = load i8, ptr %tplusp.addr, align 1, !tbaa !14
  %246 = load i8, ptr %tplusp.addr, align 1, !tbaa !14
  %conv94 = zext i8 %246 to i32
  %cmp95 = icmp eq i32 %conv94, 1
  %247 = zext i1 %cmp95 to i64
  %cond97 = select i1 %cmp95, i32 2, i32 1
  %248 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %249 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %250 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %251 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %252 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %253 = load i32, ptr %method.addr, align 4, !tbaa !14
  %call98 = call ptr @Trpath_convert_to_path_geneminus(ptr noundef %238, ptr noundef %239, ptr noundef %240, i32 noundef %241, i32 noundef %242, i32 noundef %243, i32 noundef %244, i8 noundef zeroext %245, i32 noundef %cond97, i32 noundef %248, ptr noundef %249, ptr noundef %250, ptr noundef %251, ptr noundef %252, i32 noundef %253)
  store ptr %call98, ptr %path, align 8, !tbaa !5
  %cmp99 = icmp eq ptr %call98, null
  br i1 %cmp99, label %if.then101, label %if.else102

if.then101:                                       ; preds = %if.else93
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else102:                                       ; preds = %if.else93
  %254 = load ptr, ptr %found_score.addr, align 8, !tbaa !5
  %255 = load ptr, ptr %path, align 8, !tbaa !5
  %256 = load ptr, ptr %query_compress_fwd.addr, align 8, !tbaa !5
  %257 = load ptr, ptr %query_compress_rev.addr, align 8, !tbaa !5
  %call103 = call i32 @Path_eval_nmatches(ptr noundef %254, ptr noundef %255, ptr noundef %256, ptr noundef %257)
  %cmp104 = icmp eq i32 %call103, 0
  br i1 %cmp104, label %if.then106, label %if.else107

if.then106:                                       ; preds = %if.else102
  %258 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %259 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %260 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %261 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %262 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  call void @Path_free(ptr noundef %path, ptr noundef %258, ptr noundef %259, ptr noundef %260, ptr noundef %261, ptr noundef %262)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else107:                                       ; preds = %if.else102
  %263 = load ptr, ptr %path, align 8, !tbaa !5
  %score_within_trims108 = getelementptr inbounds %struct.Path_T, ptr %263, i32 0, i32 8
  %264 = load i32, ptr %score_within_trims108, align 4, !tbaa !21
  %265 = load i32, ptr %nmismatches_allowed.addr, align 4, !tbaa !12
  %cmp109 = icmp sgt i32 %264, %265
  br i1 %cmp109, label %if.then111, label %if.else112

if.then111:                                       ; preds = %if.else107
  %266 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %267 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %268 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %269 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %270 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  call void @Path_free(ptr noundef %path, ptr noundef %266, ptr noundef %267, ptr noundef %268, ptr noundef %269, ptr noundef %270)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else112:                                       ; preds = %if.else107
  %271 = load ptr, ptr %found_transcriptp.addr, align 8, !tbaa !5
  %272 = load ptr, ptr %path, align 8, !tbaa !5
  %transcripts113 = getelementptr inbounds %struct.Path_T, ptr %272, i32 0, i32 51
  %273 = load ptr, ptr %path, align 8, !tbaa !5
  %invalid_transcripts114 = getelementptr inbounds %struct.Path_T, ptr %273, i32 0, i32 52
  %274 = load ptr, ptr %path, align 8, !tbaa !5
  %endpoints115 = getelementptr inbounds %struct.Path_T, ptr %274, i32 0, i32 17
  %275 = load ptr, ptr %endpoints115, align 8, !tbaa !25
  %276 = load ptr, ptr %path, align 8, !tbaa !5
  %univdiagonals116 = getelementptr inbounds %struct.Path_T, ptr %276, i32 0, i32 18
  %277 = load ptr, ptr %univdiagonals116, align 8, !tbaa !26
  %278 = load ptr, ptr %path, align 8, !tbaa !5
  %junctions117 = getelementptr inbounds %struct.Path_T, ptr %278, i32 0, i32 21
  %279 = load ptr, ptr %junctions117, align 8, !tbaa !27
  %280 = load ptr, ptr %queryseq.addr, align 8, !tbaa !5
  %281 = load ptr, ptr %path, align 8, !tbaa !5
  %querylength118 = getelementptr inbounds %struct.Path_T, ptr %281, i32 0, i32 13
  %282 = load i32, ptr %querylength118, align 4, !tbaa !28
  %283 = load ptr, ptr %path, align 8, !tbaa !5
  %plusp119 = getelementptr inbounds %struct.Path_T, ptr %283, i32 0, i32 10
  %284 = load i8, ptr %plusp119, align 8, !tbaa !29
  %285 = load ptr, ptr %path, align 8, !tbaa !5
  %chrnum120 = getelementptr inbounds %struct.Path_T, ptr %285, i32 0, i32 14
  %286 = load i32, ptr %chrnum120, align 8, !tbaa !30
  %287 = load ptr, ptr %path, align 8, !tbaa !5
  %chroffset121 = getelementptr inbounds %struct.Path_T, ptr %287, i32 0, i32 15
  %288 = load i32, ptr %chroffset121, align 4, !tbaa !31
  %289 = load ptr, ptr %path, align 8, !tbaa !5
  %chrhigh122 = getelementptr inbounds %struct.Path_T, ptr %289, i32 0, i32 16
  %290 = load i32, ptr %chrhigh122, align 8, !tbaa !32
  %291 = load ptr, ptr %uintlistpool.addr, align 8, !tbaa !5
  %292 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %293 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  %294 = load ptr, ptr %vectorpool.addr, align 8, !tbaa !5
  %call123 = call ptr @Transcript_remap(ptr noundef %271, ptr noundef %transcripts113, ptr noundef %invalid_transcripts114, ptr noundef %275, ptr noundef %277, ptr noundef %279, ptr noundef %280, i32 noundef %282, i8 noundef zeroext %284, i32 noundef %286, i32 noundef %288, i32 noundef %290, ptr noundef %291, ptr noundef %292, ptr noundef %293, ptr noundef %294, i32 noundef 0, i32 noundef -1, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 0)
  %295 = load ptr, ptr %path, align 8, !tbaa !5
  store ptr %295, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else112, %if.then111, %if.then106, %if.then101, %if.else85, %if.then84, %if.then80, %if.then75, %if.then63, %if.then58, %if.then51, %if.then37
  call void @llvm.lifetime.end.p0(i64 4, ptr %chrhigh) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %chroffset) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %exonstarts) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %exonbounds) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %nexons) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %adj) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %trimpos) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %tend) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %tstart) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %total_nmismatches) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %nmismatches_to_trimpos) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %tend_path) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %tstart_path) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %trpath) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %invalid_transcripts) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %path) #4
  %296 = load ptr, ptr %retval, align 8
  ret ptr %296
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare ptr @Trpath_new_for_tstart_extension(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal void @attach_indel_tstart(ptr noundef %trpath, i32 noundef %low_trdiagonal, i32 noundef %low_tstart, i32 noundef %querylength, ptr noundef %indelinfo, ptr noundef %query_compress_tr, i32 noundef %nmismatches_allowed, i32 noundef %max_insertionlen, i32 noundef %max_deletionlen, i8 noundef zeroext %want_lowest_coordinate_p, ptr noundef %intlistpool, ptr noundef %uintlistpool, ptr noundef %listpool, ptr noundef %pathpool) #1 {
entry:
  %trpath.addr = alloca ptr, align 8
  %low_trdiagonal.addr = alloca i32, align 4
  %low_tstart.addr = alloca i32, align 4
  %querylength.addr = alloca i32, align 4
  %indelinfo.addr = alloca ptr, align 8
  %query_compress_tr.addr = alloca ptr, align 8
  %nmismatches_allowed.addr = alloca i32, align 4
  %max_insertionlen.addr = alloca i32, align 4
  %max_deletionlen.addr = alloca i32, align 4
  %want_lowest_coordinate_p.addr = alloca i8, align 1
  %intlistpool.addr = alloca ptr, align 8
  %uintlistpool.addr = alloca ptr, align 8
  %listpool.addr = alloca ptr, align 8
  %pathpool.addr = alloca ptr, align 8
  %trdiagonal = alloca i32, align 4
  %tend = alloca i32, align 4
  %nindels = alloca i32, align 4
  %indel_pos = alloca i32, align 4
  %deletionpos = alloca i32, align 4
  %nmismatches_i = alloca i32, align 4
  %nmismatches_j = alloca i32, align 4
  %ref_nmismatches_i = alloca i32, align 4
  %ref_nmismatches_j = alloca i32, align 4
  %nmismatches = alloca i32, align 4
  %ref_nmismatches = alloca i32, align 4
  store ptr %trpath, ptr %trpath.addr, align 8, !tbaa !5
  store i32 %low_trdiagonal, ptr %low_trdiagonal.addr, align 4, !tbaa !12
  store i32 %low_tstart, ptr %low_tstart.addr, align 4, !tbaa !12
  store i32 %querylength, ptr %querylength.addr, align 4, !tbaa !12
  store ptr %indelinfo, ptr %indelinfo.addr, align 8, !tbaa !5
  store ptr %query_compress_tr, ptr %query_compress_tr.addr, align 8, !tbaa !5
  store i32 %nmismatches_allowed, ptr %nmismatches_allowed.addr, align 4, !tbaa !12
  store i32 %max_insertionlen, ptr %max_insertionlen.addr, align 4, !tbaa !12
  store i32 %max_deletionlen, ptr %max_deletionlen.addr, align 4, !tbaa !12
  store i8 %want_lowest_coordinate_p, ptr %want_lowest_coordinate_p.addr, align 1, !tbaa !14
  store ptr %intlistpool, ptr %intlistpool.addr, align 8, !tbaa !5
  store ptr %uintlistpool, ptr %uintlistpool.addr, align 8, !tbaa !5
  store ptr %listpool, ptr %listpool.addr, align 8, !tbaa !5
  store ptr %pathpool, ptr %pathpool.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %trdiagonal) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %tend) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %nindels) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %indel_pos) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %deletionpos) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %nmismatches_i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %nmismatches_j) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ref_nmismatches_i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ref_nmismatches_j) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %nmismatches) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ref_nmismatches) #4
  %0 = load ptr, ptr %trpath.addr, align 8, !tbaa !5
  %trdiagonals = getelementptr inbounds %struct.Trpath_T, ptr %0, i32 0, i32 4
  %1 = load ptr, ptr %trdiagonals, align 8, !tbaa !33
  %call = call i32 @Uintlist_head(ptr noundef %1)
  store i32 %call, ptr %trdiagonal, align 4, !tbaa !12
  %2 = load ptr, ptr %trpath.addr, align 8, !tbaa !5
  %endpoints = getelementptr inbounds %struct.Trpath_T, ptr %2, i32 0, i32 5
  %3 = load ptr, ptr %endpoints, align 8, !tbaa !19
  %call1 = call ptr @Intlist_next(ptr noundef %3)
  %call2 = call i32 @Intlist_head(ptr noundef %call1)
  store i32 %call2, ptr %tend, align 4, !tbaa !12
  %4 = load i32, ptr %low_tstart.addr, align 4, !tbaa !12
  %5 = load i32, ptr %tend, align 4, !tbaa !12
  %cmp = icmp sge i32 %4, %5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end72

if.else:                                          ; preds = %entry
  %6 = load i32, ptr %low_trdiagonal.addr, align 4, !tbaa !12
  %7 = load i32, ptr %trdiagonal, align 4, !tbaa !12
  %cmp3 = icmp eq i32 %6, %7
  br i1 %cmp3, label %if.then4, label %if.else13

if.then4:                                         ; preds = %if.else
  %8 = load i32, ptr %low_tstart.addr, align 4, !tbaa !12
  %9 = load ptr, ptr %trpath.addr, align 8, !tbaa !5
  %endpoints5 = getelementptr inbounds %struct.Trpath_T, ptr %9, i32 0, i32 5
  %10 = load ptr, ptr %endpoints5, align 8, !tbaa !19
  %call6 = call i32 @Intlist_head(ptr noundef %10)
  %cmp7 = icmp sge i32 %8, %call6
  br i1 %cmp7, label %if.then8, label %if.else9

if.then8:                                         ; preds = %if.then4
  br label %if.end

if.else9:                                         ; preds = %if.then4
  %11 = load ptr, ptr @transcriptomebits, align 8, !tbaa !5
  %12 = load ptr, ptr @transcriptomebits, align 8, !tbaa !5
  %13 = load ptr, ptr %query_compress_tr.addr, align 8, !tbaa !5
  %14 = load i32, ptr %trdiagonal, align 4, !tbaa !12
  %15 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %16 = load i32, ptr %low_tstart.addr, align 4, !tbaa !12
  %17 = load i32, ptr %tend, align 4, !tbaa !12
  %18 = load ptr, ptr %trpath.addr, align 8, !tbaa !5
  %tplusp = getelementptr inbounds %struct.Trpath_T, ptr %18, i32 0, i32 0
  %19 = load i8, ptr %tplusp, align 8, !tbaa !34
  %call10 = call i32 @Genomebits_count_mismatches_substring(ptr noundef %ref_nmismatches, ptr noundef %11, ptr noundef %12, ptr noundef %13, i32 noundef %14, i32 noundef %15, i32 noundef %16, i32 noundef %17, i8 noundef zeroext %19, i32 noundef 0)
  store i32 %call10, ptr %nmismatches, align 4, !tbaa !12
  %20 = load ptr, ptr %trpath.addr, align 8, !tbaa !5
  %nmismatches11 = getelementptr inbounds %struct.Trpath_T, ptr %20, i32 0, i32 6
  %21 = load ptr, ptr %nmismatches11, align 8, !tbaa !35
  %22 = load i32, ptr %nmismatches, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %21, i32 noundef %22)
  %23 = load ptr, ptr %trpath.addr, align 8, !tbaa !5
  %endpoints12 = getelementptr inbounds %struct.Trpath_T, ptr %23, i32 0, i32 5
  %24 = load ptr, ptr %endpoints12, align 8, !tbaa !19
  %25 = load i32, ptr %low_tstart.addr, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %24, i32 noundef %25)
  br label %if.end

if.end:                                           ; preds = %if.else9, %if.then8
  br label %if.end71

if.else13:                                        ; preds = %if.else
  %26 = load i32, ptr %low_trdiagonal.addr, align 4, !tbaa !12
  %27 = load i32, ptr %trdiagonal, align 4, !tbaa !12
  %28 = load i32, ptr %max_insertionlen.addr, align 4, !tbaa !12
  %add = add i32 %27, %28
  %cmp14 = icmp ugt i32 %26, %add
  br i1 %cmp14, label %if.then15, label %if.else16

if.then15:                                        ; preds = %if.else13
  br label %if.end70

if.else16:                                        ; preds = %if.else13
  %29 = load i32, ptr %low_trdiagonal.addr, align 4, !tbaa !12
  %30 = load i32, ptr %trdiagonal, align 4, !tbaa !12
  %cmp17 = icmp ugt i32 %29, %30
  br i1 %cmp17, label %if.then18, label %if.else39

if.then18:                                        ; preds = %if.else16
  %31 = load i32, ptr %low_trdiagonal.addr, align 4, !tbaa !12
  %32 = load i32, ptr %trdiagonal, align 4, !tbaa !12
  %sub = sub i32 %31, %32
  store i32 %sub, ptr %nindels, align 4, !tbaa !12
  %33 = load i32, ptr %low_trdiagonal.addr, align 4, !tbaa !12
  %34 = load i32, ptr %nindels, align 4, !tbaa !12
  %35 = load ptr, ptr @transcriptomebits, align 8, !tbaa !5
  %36 = load ptr, ptr %query_compress_tr.addr, align 8, !tbaa !5
  %37 = load i32, ptr %low_tstart.addr, align 4, !tbaa !12
  %38 = load i32, ptr %tend, align 4, !tbaa !12
  %39 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %40 = load ptr, ptr %indelinfo.addr, align 8, !tbaa !5
  %41 = load ptr, ptr %trpath.addr, align 8, !tbaa !5
  %tplusp19 = getelementptr inbounds %struct.Trpath_T, ptr %41, i32 0, i32 0
  %42 = load i8, ptr %tplusp19, align 8, !tbaa !34
  %43 = load i8, ptr %want_lowest_coordinate_p.addr, align 1, !tbaa !14
  %call20 = call i32 @Indel_resolve_middle_insertion(ptr noundef %nmismatches_i, ptr noundef %nmismatches_j, ptr noundef %ref_nmismatches_i, ptr noundef %ref_nmismatches_j, i32 noundef %33, i32 noundef %34, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef %35, ptr noundef null, ptr noundef %36, i32 noundef %37, i32 noundef %38, i32 noundef %39, ptr noundef %40, i8 noundef zeroext %42, i32 noundef 0, i8 noundef zeroext %43)
  store i32 %call20, ptr %indel_pos, align 4, !tbaa !12
  %cmp21 = icmp sle i32 %call20, 0
  br i1 %cmp21, label %if.then22, label %if.else23

if.then22:                                        ; preds = %if.then18
  br label %if.end38

if.else23:                                        ; preds = %if.then18
  %44 = load ptr, ptr %trpath.addr, align 8, !tbaa !5
  %endpoints24 = getelementptr inbounds %struct.Trpath_T, ptr %44, i32 0, i32 5
  %45 = load ptr, ptr %endpoints24, align 8, !tbaa !19
  %46 = load i32, ptr %indel_pos, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %45, i32 noundef %46)
  %47 = load ptr, ptr %trpath.addr, align 8, !tbaa !5
  %endpoints25 = getelementptr inbounds %struct.Trpath_T, ptr %47, i32 0, i32 5
  %48 = load ptr, ptr %endpoints25, align 8, !tbaa !19
  %49 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %50 = load i32, ptr %low_tstart.addr, align 4, !tbaa !12
  %call26 = call ptr @Intlistpool_push(ptr noundef %48, ptr noundef %49, i32 noundef %50)
  %51 = load ptr, ptr %trpath.addr, align 8, !tbaa !5
  %endpoints27 = getelementptr inbounds %struct.Trpath_T, ptr %51, i32 0, i32 5
  store ptr %call26, ptr %endpoints27, align 8, !tbaa !19
  %52 = load ptr, ptr %trpath.addr, align 8, !tbaa !5
  %junctions = getelementptr inbounds %struct.Trpath_T, ptr %52, i32 0, i32 7
  %53 = load ptr, ptr %junctions, align 8, !tbaa !36
  %54 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %55 = load i32, ptr %nindels, align 4, !tbaa !12
  %56 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %call28 = call ptr @Junction_new_insertion(i32 noundef %55, ptr noundef %56)
  %call29 = call ptr @Listpool_push(ptr noundef %53, ptr noundef %54, ptr noundef %call28)
  %57 = load ptr, ptr %trpath.addr, align 8, !tbaa !5
  %junctions30 = getelementptr inbounds %struct.Trpath_T, ptr %57, i32 0, i32 7
  store ptr %call29, ptr %junctions30, align 8, !tbaa !36
  %58 = load ptr, ptr %trpath.addr, align 8, !tbaa !5
  %nmismatches31 = getelementptr inbounds %struct.Trpath_T, ptr %58, i32 0, i32 6
  %59 = load ptr, ptr %nmismatches31, align 8, !tbaa !35
  %60 = load i32, ptr %nmismatches_j, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %59, i32 noundef %60)
  %61 = load ptr, ptr %trpath.addr, align 8, !tbaa !5
  %nmismatches32 = getelementptr inbounds %struct.Trpath_T, ptr %61, i32 0, i32 6
  %62 = load ptr, ptr %nmismatches32, align 8, !tbaa !35
  %63 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %64 = load i32, ptr %nmismatches_i, align 4, !tbaa !12
  %call33 = call ptr @Intlistpool_push(ptr noundef %62, ptr noundef %63, i32 noundef %64)
  %65 = load ptr, ptr %trpath.addr, align 8, !tbaa !5
  %nmismatches34 = getelementptr inbounds %struct.Trpath_T, ptr %65, i32 0, i32 6
  store ptr %call33, ptr %nmismatches34, align 8, !tbaa !35
  %66 = load ptr, ptr %trpath.addr, align 8, !tbaa !5
  %trdiagonals35 = getelementptr inbounds %struct.Trpath_T, ptr %66, i32 0, i32 4
  %67 = load ptr, ptr %trdiagonals35, align 8, !tbaa !33
  %68 = load ptr, ptr %uintlistpool.addr, align 8, !tbaa !5
  %69 = load i32, ptr %low_trdiagonal.addr, align 4, !tbaa !12
  %call36 = call ptr @Uintlistpool_push(ptr noundef %67, ptr noundef %68, i32 noundef %69)
  %70 = load ptr, ptr %trpath.addr, align 8, !tbaa !5
  %trdiagonals37 = getelementptr inbounds %struct.Trpath_T, ptr %70, i32 0, i32 4
  store ptr %call36, ptr %trdiagonals37, align 8, !tbaa !33
  br label %if.end38

if.end38:                                         ; preds = %if.else23, %if.then22
  br label %if.end69

if.else39:                                        ; preds = %if.else16
  %71 = load i32, ptr %low_trdiagonal.addr, align 4, !tbaa !12
  %72 = load i32, ptr %max_deletionlen.addr, align 4, !tbaa !12
  %add40 = add i32 %71, %72
  %73 = load i32, ptr %trdiagonal, align 4, !tbaa !12
  %cmp41 = icmp uge i32 %add40, %73
  br i1 %cmp41, label %if.then42, label %if.end68

if.then42:                                        ; preds = %if.else39
  %74 = load i32, ptr %trdiagonal, align 4, !tbaa !12
  %75 = load i32, ptr %low_trdiagonal.addr, align 4, !tbaa !12
  %sub43 = sub i32 %74, %75
  store i32 %sub43, ptr %nindels, align 4, !tbaa !12
  %76 = load i32, ptr %low_trdiagonal.addr, align 4, !tbaa !12
  %77 = load i32, ptr %nindels, align 4, !tbaa !12
  %sub44 = sub nsw i32 0, %77
  %78 = load ptr, ptr @transcriptomebits, align 8, !tbaa !5
  %79 = load ptr, ptr %query_compress_tr.addr, align 8, !tbaa !5
  %80 = load i32, ptr %low_tstart.addr, align 4, !tbaa !12
  %81 = load i32, ptr %tend, align 4, !tbaa !12
  %82 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %83 = load ptr, ptr %indelinfo.addr, align 8, !tbaa !5
  %84 = load ptr, ptr %trpath.addr, align 8, !tbaa !5
  %tplusp45 = getelementptr inbounds %struct.Trpath_T, ptr %84, i32 0, i32 0
  %85 = load i8, ptr %tplusp45, align 8, !tbaa !34
  %86 = load i8, ptr %want_lowest_coordinate_p.addr, align 1, !tbaa !14
  %call46 = call i32 @Indel_resolve_middle_deletion(ptr noundef %nmismatches_i, ptr noundef %nmismatches_j, ptr noundef %ref_nmismatches_i, ptr noundef %ref_nmismatches_j, i32 noundef %76, i32 noundef %sub44, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef %78, ptr noundef null, ptr noundef %79, i32 noundef %80, i32 noundef %81, i32 noundef %82, ptr noundef %83, i8 noundef zeroext %85, i32 noundef 0, i8 noundef zeroext %86)
  store i32 %call46, ptr %indel_pos, align 4, !tbaa !12
  %cmp47 = icmp sle i32 %call46, 0
  br i1 %cmp47, label %if.then48, label %if.else49

if.then48:                                        ; preds = %if.then42
  br label %if.end67

if.else49:                                        ; preds = %if.then42
  %87 = load i32, ptr %low_trdiagonal.addr, align 4, !tbaa !12
  %88 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %sub50 = sub i32 %87, %88
  %89 = load i32, ptr %indel_pos, align 4, !tbaa !12
  %add51 = add i32 %sub50, %89
  store i32 %add51, ptr %deletionpos, align 4, !tbaa !12
  %90 = load ptr, ptr %trpath.addr, align 8, !tbaa !5
  %junctions52 = getelementptr inbounds %struct.Trpath_T, ptr %90, i32 0, i32 7
  %91 = load ptr, ptr %junctions52, align 8, !tbaa !36
  %92 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %93 = load i32, ptr %nindels, align 4, !tbaa !12
  %94 = load i32, ptr %deletionpos, align 4, !tbaa !12
  %95 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %call53 = call ptr @Junction_new_deletion(i32 noundef %93, i32 noundef %94, ptr noundef %95)
  %call54 = call ptr @Listpool_push(ptr noundef %91, ptr noundef %92, ptr noundef %call53)
  %96 = load ptr, ptr %trpath.addr, align 8, !tbaa !5
  %junctions55 = getelementptr inbounds %struct.Trpath_T, ptr %96, i32 0, i32 7
  store ptr %call54, ptr %junctions55, align 8, !tbaa !36
  %97 = load ptr, ptr %trpath.addr, align 8, !tbaa !5
  %endpoints56 = getelementptr inbounds %struct.Trpath_T, ptr %97, i32 0, i32 5
  %98 = load ptr, ptr %endpoints56, align 8, !tbaa !19
  %99 = load i32, ptr %indel_pos, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %98, i32 noundef %99)
  %100 = load ptr, ptr %trpath.addr, align 8, !tbaa !5
  %endpoints57 = getelementptr inbounds %struct.Trpath_T, ptr %100, i32 0, i32 5
  %101 = load ptr, ptr %endpoints57, align 8, !tbaa !19
  %102 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %103 = load i32, ptr %low_tstart.addr, align 4, !tbaa !12
  %call58 = call ptr @Intlistpool_push(ptr noundef %101, ptr noundef %102, i32 noundef %103)
  %104 = load ptr, ptr %trpath.addr, align 8, !tbaa !5
  %endpoints59 = getelementptr inbounds %struct.Trpath_T, ptr %104, i32 0, i32 5
  store ptr %call58, ptr %endpoints59, align 8, !tbaa !19
  %105 = load ptr, ptr %trpath.addr, align 8, !tbaa !5
  %nmismatches60 = getelementptr inbounds %struct.Trpath_T, ptr %105, i32 0, i32 6
  %106 = load ptr, ptr %nmismatches60, align 8, !tbaa !35
  %107 = load i32, ptr %nmismatches_j, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %106, i32 noundef %107)
  %108 = load ptr, ptr %trpath.addr, align 8, !tbaa !5
  %nmismatches61 = getelementptr inbounds %struct.Trpath_T, ptr %108, i32 0, i32 6
  %109 = load ptr, ptr %nmismatches61, align 8, !tbaa !35
  %110 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %111 = load i32, ptr %nmismatches_i, align 4, !tbaa !12
  %call62 = call ptr @Intlistpool_push(ptr noundef %109, ptr noundef %110, i32 noundef %111)
  %112 = load ptr, ptr %trpath.addr, align 8, !tbaa !5
  %nmismatches63 = getelementptr inbounds %struct.Trpath_T, ptr %112, i32 0, i32 6
  store ptr %call62, ptr %nmismatches63, align 8, !tbaa !35
  %113 = load ptr, ptr %trpath.addr, align 8, !tbaa !5
  %trdiagonals64 = getelementptr inbounds %struct.Trpath_T, ptr %113, i32 0, i32 4
  %114 = load ptr, ptr %trdiagonals64, align 8, !tbaa !33
  %115 = load ptr, ptr %uintlistpool.addr, align 8, !tbaa !5
  %116 = load i32, ptr %low_trdiagonal.addr, align 4, !tbaa !12
  %call65 = call ptr @Uintlistpool_push(ptr noundef %114, ptr noundef %115, i32 noundef %116)
  %117 = load ptr, ptr %trpath.addr, align 8, !tbaa !5
  %trdiagonals66 = getelementptr inbounds %struct.Trpath_T, ptr %117, i32 0, i32 4
  store ptr %call65, ptr %trdiagonals66, align 8, !tbaa !33
  br label %if.end67

if.end67:                                         ; preds = %if.else49, %if.then48
  br label %if.end68

if.end68:                                         ; preds = %if.end67, %if.else39
  br label %if.end69

if.end69:                                         ; preds = %if.end68, %if.end38
  br label %if.end70

if.end70:                                         ; preds = %if.end69, %if.then15
  br label %if.end71

if.end71:                                         ; preds = %if.end70, %if.end
  br label %if.end72

if.end72:                                         ; preds = %if.end71, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ref_nmismatches) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %nmismatches) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %ref_nmismatches_j) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %ref_nmismatches_i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %nmismatches_j) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %nmismatches_i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %deletionpos) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %indel_pos) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %nindels) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %tend) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %trdiagonal) #4
  ret void
}

declare i32 @Spliceends_trim_qstart_nosplice(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef) #3

declare i32 @Genomebits_indel_solve_low(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) #3

declare ptr @Trpath_new_for_tend_extension(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal void @attach_indel_tend(ptr noundef %trpath, i32 noundef %high_trdiagonal, i32 noundef %high_tend, i32 noundef %querylength, ptr noundef %indelinfo, ptr noundef %query_compress_tr, i32 noundef %nmismatches_allowed, i32 noundef %max_insertionlen, i32 noundef %max_deletionlen, i8 noundef zeroext %want_lowest_coordinate_p, ptr noundef %intlistpool, ptr noundef %uintlistpool, ptr noundef %listpool, ptr noundef %pathpool) #1 {
entry:
  %trpath.addr = alloca ptr, align 8
  %high_trdiagonal.addr = alloca i32, align 4
  %high_tend.addr = alloca i32, align 4
  %querylength.addr = alloca i32, align 4
  %indelinfo.addr = alloca ptr, align 8
  %query_compress_tr.addr = alloca ptr, align 8
  %nmismatches_allowed.addr = alloca i32, align 4
  %max_insertionlen.addr = alloca i32, align 4
  %max_deletionlen.addr = alloca i32, align 4
  %want_lowest_coordinate_p.addr = alloca i8, align 1
  %intlistpool.addr = alloca ptr, align 8
  %uintlistpool.addr = alloca ptr, align 8
  %listpool.addr = alloca ptr, align 8
  %pathpool.addr = alloca ptr, align 8
  %trdiagonal = alloca i32, align 4
  %tstart = alloca i32, align 4
  %ninserts = alloca i32, align 4
  %nindels = alloca i32, align 4
  %indel_pos = alloca i32, align 4
  %deletionpos = alloca i32, align 4
  %nmismatches_i = alloca i32, align 4
  %nmismatches_j = alloca i32, align 4
  %ref_nmismatches_i = alloca i32, align 4
  %ref_nmismatches_j = alloca i32, align 4
  %nmismatches = alloca i32, align 4
  %ref_nmismatches = alloca i32, align 4
  store ptr %trpath, ptr %trpath.addr, align 8, !tbaa !5
  store i32 %high_trdiagonal, ptr %high_trdiagonal.addr, align 4, !tbaa !12
  store i32 %high_tend, ptr %high_tend.addr, align 4, !tbaa !12
  store i32 %querylength, ptr %querylength.addr, align 4, !tbaa !12
  store ptr %indelinfo, ptr %indelinfo.addr, align 8, !tbaa !5
  store ptr %query_compress_tr, ptr %query_compress_tr.addr, align 8, !tbaa !5
  store i32 %nmismatches_allowed, ptr %nmismatches_allowed.addr, align 4, !tbaa !12
  store i32 %max_insertionlen, ptr %max_insertionlen.addr, align 4, !tbaa !12
  store i32 %max_deletionlen, ptr %max_deletionlen.addr, align 4, !tbaa !12
  store i8 %want_lowest_coordinate_p, ptr %want_lowest_coordinate_p.addr, align 1, !tbaa !14
  store ptr %intlistpool, ptr %intlistpool.addr, align 8, !tbaa !5
  store ptr %uintlistpool, ptr %uintlistpool.addr, align 8, !tbaa !5
  store ptr %listpool, ptr %listpool.addr, align 8, !tbaa !5
  store ptr %pathpool, ptr %pathpool.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %trdiagonal) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %tstart) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ninserts) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %nindels) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %indel_pos) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %deletionpos) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %nmismatches_i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %nmismatches_j) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ref_nmismatches_i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ref_nmismatches_j) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %nmismatches) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ref_nmismatches) #4
  %0 = load ptr, ptr %trpath.addr, align 8, !tbaa !5
  %trdiagonals = getelementptr inbounds %struct.Trpath_T, ptr %0, i32 0, i32 4
  %1 = load ptr, ptr %trdiagonals, align 8, !tbaa !33
  %call = call i32 @Uintlist_head(ptr noundef %1)
  store i32 %call, ptr %trdiagonal, align 4, !tbaa !12
  %2 = load ptr, ptr %trpath.addr, align 8, !tbaa !5
  %junctions = getelementptr inbounds %struct.Trpath_T, ptr %2, i32 0, i32 7
  %3 = load ptr, ptr %junctions, align 8, !tbaa !36
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, ptr %ninserts, align 4, !tbaa !12
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load ptr, ptr %trpath.addr, align 8, !tbaa !5
  %junctions1 = getelementptr inbounds %struct.Trpath_T, ptr %4, i32 0, i32 7
  %5 = load ptr, ptr %junctions1, align 8, !tbaa !36
  %call2 = call ptr @List_head(ptr noundef %5)
  %call3 = call i32 @Junction_ninserts(ptr noundef %call2)
  store i32 %call3, ptr %ninserts, align 4, !tbaa !12
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load ptr, ptr %trpath.addr, align 8, !tbaa !5
  %endpoints = getelementptr inbounds %struct.Trpath_T, ptr %6, i32 0, i32 5
  %7 = load ptr, ptr %endpoints, align 8, !tbaa !19
  %call4 = call ptr @Intlist_next(ptr noundef %7)
  %call5 = call i32 @Intlist_head(ptr noundef %call4)
  %8 = load i32, ptr %ninserts, align 4, !tbaa !12
  %add = add nsw i32 %call5, %8
  store i32 %add, ptr %tstart, align 4, !tbaa !12
  %9 = load i32, ptr %tstart, align 4, !tbaa !12
  %10 = load i32, ptr %high_tend.addr, align 4, !tbaa !12
  %cmp6 = icmp sge i32 %9, %10
  br i1 %cmp6, label %if.then7, label %if.else8

if.then7:                                         ; preds = %if.end
  br label %if.end85

if.else8:                                         ; preds = %if.end
  %11 = load i32, ptr %high_trdiagonal.addr, align 4, !tbaa !12
  %12 = load i32, ptr %trdiagonal, align 4, !tbaa !12
  %cmp9 = icmp eq i32 %11, %12
  br i1 %cmp9, label %if.then10, label %if.else24

if.then10:                                        ; preds = %if.else8
  %13 = load i32, ptr %high_tend.addr, align 4, !tbaa !12
  %14 = load ptr, ptr %trpath.addr, align 8, !tbaa !5
  %endpoints11 = getelementptr inbounds %struct.Trpath_T, ptr %14, i32 0, i32 5
  %15 = load ptr, ptr %endpoints11, align 8, !tbaa !19
  %call12 = call i32 @Intlist_head(ptr noundef %15)
  %cmp13 = icmp sle i32 %13, %call12
  br i1 %cmp13, label %if.then14, label %if.else15

if.then14:                                        ; preds = %if.then10
  br label %if.end23

if.else15:                                        ; preds = %if.then10
  %16 = load ptr, ptr @transcriptomebits, align 8, !tbaa !5
  %17 = load ptr, ptr @transcriptomebits, align 8, !tbaa !5
  %18 = load ptr, ptr %query_compress_tr.addr, align 8, !tbaa !5
  %19 = load i32, ptr %trdiagonal, align 4, !tbaa !12
  %20 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %21 = load ptr, ptr %trpath.addr, align 8, !tbaa !5
  %endpoints16 = getelementptr inbounds %struct.Trpath_T, ptr %21, i32 0, i32 5
  %22 = load ptr, ptr %endpoints16, align 8, !tbaa !19
  %call17 = call ptr @Intlist_next(ptr noundef %22)
  %call18 = call i32 @Intlist_head(ptr noundef %call17)
  %23 = load i32, ptr %ninserts, align 4, !tbaa !12
  %add19 = add nsw i32 %call18, %23
  %24 = load i32, ptr %high_tend.addr, align 4, !tbaa !12
  %25 = load ptr, ptr %trpath.addr, align 8, !tbaa !5
  %tplusp = getelementptr inbounds %struct.Trpath_T, ptr %25, i32 0, i32 0
  %26 = load i8, ptr %tplusp, align 8, !tbaa !34
  %call20 = call i32 @Genomebits_count_mismatches_substring(ptr noundef %ref_nmismatches, ptr noundef %16, ptr noundef %17, ptr noundef %18, i32 noundef %19, i32 noundef %20, i32 noundef %add19, i32 noundef %24, i8 noundef zeroext %26, i32 noundef 0)
  store i32 %call20, ptr %nmismatches, align 4, !tbaa !12
  %27 = load ptr, ptr %trpath.addr, align 8, !tbaa !5
  %nmismatches21 = getelementptr inbounds %struct.Trpath_T, ptr %27, i32 0, i32 6
  %28 = load ptr, ptr %nmismatches21, align 8, !tbaa !35
  %29 = load i32, ptr %nmismatches, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %28, i32 noundef %29)
  %30 = load ptr, ptr %trpath.addr, align 8, !tbaa !5
  %endpoints22 = getelementptr inbounds %struct.Trpath_T, ptr %30, i32 0, i32 5
  %31 = load ptr, ptr %endpoints22, align 8, !tbaa !19
  %32 = load i32, ptr %high_tend.addr, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %31, i32 noundef %32)
  br label %if.end23

if.end23:                                         ; preds = %if.else15, %if.then14
  br label %if.end84

if.else24:                                        ; preds = %if.else8
  %33 = load i32, ptr %high_trdiagonal.addr, align 4, !tbaa !12
  %34 = load i32, ptr %max_insertionlen.addr, align 4, !tbaa !12
  %add25 = add i32 %33, %34
  %35 = load i32, ptr %trdiagonal, align 4, !tbaa !12
  %cmp26 = icmp ult i32 %add25, %35
  br i1 %cmp26, label %if.then27, label %if.else28

if.then27:                                        ; preds = %if.else24
  br label %if.end83

if.else28:                                        ; preds = %if.else24
  %36 = load i32, ptr %high_trdiagonal.addr, align 4, !tbaa !12
  %37 = load i32, ptr %trdiagonal, align 4, !tbaa !12
  %cmp29 = icmp ult i32 %36, %37
  br i1 %cmp29, label %if.then30, label %if.else52

if.then30:                                        ; preds = %if.else28
  %38 = load i32, ptr %trdiagonal, align 4, !tbaa !12
  %39 = load i32, ptr %high_trdiagonal.addr, align 4, !tbaa !12
  %sub = sub i32 %38, %39
  store i32 %sub, ptr %nindels, align 4, !tbaa !12
  %40 = load i32, ptr %trdiagonal, align 4, !tbaa !12
  %41 = load i32, ptr %nindels, align 4, !tbaa !12
  %42 = load ptr, ptr @transcriptomebits, align 8, !tbaa !5
  %43 = load ptr, ptr %query_compress_tr.addr, align 8, !tbaa !5
  %44 = load i32, ptr %tstart, align 4, !tbaa !12
  %45 = load i32, ptr %high_tend.addr, align 4, !tbaa !12
  %46 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %47 = load ptr, ptr %indelinfo.addr, align 8, !tbaa !5
  %48 = load ptr, ptr %trpath.addr, align 8, !tbaa !5
  %tplusp31 = getelementptr inbounds %struct.Trpath_T, ptr %48, i32 0, i32 0
  %49 = load i8, ptr %tplusp31, align 8, !tbaa !34
  %50 = load i8, ptr %want_lowest_coordinate_p.addr, align 1, !tbaa !14
  %call32 = call i32 @Indel_resolve_middle_insertion(ptr noundef %nmismatches_i, ptr noundef %nmismatches_j, ptr noundef %ref_nmismatches_i, ptr noundef %ref_nmismatches_j, i32 noundef %40, i32 noundef %41, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef %42, ptr noundef null, ptr noundef %43, i32 noundef %44, i32 noundef %45, i32 noundef %46, ptr noundef %47, i8 noundef zeroext %49, i32 noundef 0, i8 noundef zeroext %50)
  store i32 %call32, ptr %indel_pos, align 4, !tbaa !12
  %cmp33 = icmp sle i32 %call32, 0
  br i1 %cmp33, label %if.then34, label %if.else35

if.then34:                                        ; preds = %if.then30
  br label %if.end51

if.else35:                                        ; preds = %if.then30
  %51 = load ptr, ptr %trpath.addr, align 8, !tbaa !5
  %endpoints36 = getelementptr inbounds %struct.Trpath_T, ptr %51, i32 0, i32 5
  %52 = load ptr, ptr %endpoints36, align 8, !tbaa !19
  %53 = load i32, ptr %indel_pos, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %52, i32 noundef %53)
  %54 = load ptr, ptr %trpath.addr, align 8, !tbaa !5
  %endpoints37 = getelementptr inbounds %struct.Trpath_T, ptr %54, i32 0, i32 5
  %55 = load ptr, ptr %endpoints37, align 8, !tbaa !19
  %56 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %57 = load i32, ptr %high_tend.addr, align 4, !tbaa !12
  %call38 = call ptr @Intlistpool_push(ptr noundef %55, ptr noundef %56, i32 noundef %57)
  %58 = load ptr, ptr %trpath.addr, align 8, !tbaa !5
  %endpoints39 = getelementptr inbounds %struct.Trpath_T, ptr %58, i32 0, i32 5
  store ptr %call38, ptr %endpoints39, align 8, !tbaa !19
  %59 = load ptr, ptr %trpath.addr, align 8, !tbaa !5
  %junctions40 = getelementptr inbounds %struct.Trpath_T, ptr %59, i32 0, i32 7
  %60 = load ptr, ptr %junctions40, align 8, !tbaa !36
  %61 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %62 = load i32, ptr %nindels, align 4, !tbaa !12
  %63 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %call41 = call ptr @Junction_new_insertion(i32 noundef %62, ptr noundef %63)
  %call42 = call ptr @Listpool_push(ptr noundef %60, ptr noundef %61, ptr noundef %call41)
  %64 = load ptr, ptr %trpath.addr, align 8, !tbaa !5
  %junctions43 = getelementptr inbounds %struct.Trpath_T, ptr %64, i32 0, i32 7
  store ptr %call42, ptr %junctions43, align 8, !tbaa !36
  %65 = load ptr, ptr %trpath.addr, align 8, !tbaa !5
  %nmismatches44 = getelementptr inbounds %struct.Trpath_T, ptr %65, i32 0, i32 6
  %66 = load ptr, ptr %nmismatches44, align 8, !tbaa !35
  %67 = load i32, ptr %nmismatches_i, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %66, i32 noundef %67)
  %68 = load ptr, ptr %trpath.addr, align 8, !tbaa !5
  %nmismatches45 = getelementptr inbounds %struct.Trpath_T, ptr %68, i32 0, i32 6
  %69 = load ptr, ptr %nmismatches45, align 8, !tbaa !35
  %70 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %71 = load i32, ptr %nmismatches_j, align 4, !tbaa !12
  %call46 = call ptr @Intlistpool_push(ptr noundef %69, ptr noundef %70, i32 noundef %71)
  %72 = load ptr, ptr %trpath.addr, align 8, !tbaa !5
  %nmismatches47 = getelementptr inbounds %struct.Trpath_T, ptr %72, i32 0, i32 6
  store ptr %call46, ptr %nmismatches47, align 8, !tbaa !35
  %73 = load ptr, ptr %trpath.addr, align 8, !tbaa !5
  %trdiagonals48 = getelementptr inbounds %struct.Trpath_T, ptr %73, i32 0, i32 4
  %74 = load ptr, ptr %trdiagonals48, align 8, !tbaa !33
  %75 = load ptr, ptr %uintlistpool.addr, align 8, !tbaa !5
  %76 = load i32, ptr %high_trdiagonal.addr, align 4, !tbaa !12
  %call49 = call ptr @Uintlistpool_push(ptr noundef %74, ptr noundef %75, i32 noundef %76)
  %77 = load ptr, ptr %trpath.addr, align 8, !tbaa !5
  %trdiagonals50 = getelementptr inbounds %struct.Trpath_T, ptr %77, i32 0, i32 4
  store ptr %call49, ptr %trdiagonals50, align 8, !tbaa !33
  br label %if.end51

if.end51:                                         ; preds = %if.else35, %if.then34
  br label %if.end82

if.else52:                                        ; preds = %if.else28
  %78 = load i32, ptr %high_trdiagonal.addr, align 4, !tbaa !12
  %79 = load i32, ptr %trdiagonal, align 4, !tbaa !12
  %80 = load i32, ptr %max_deletionlen.addr, align 4, !tbaa !12
  %add53 = add i32 %79, %80
  %cmp54 = icmp ule i32 %78, %add53
  br i1 %cmp54, label %if.then55, label %if.end81

if.then55:                                        ; preds = %if.else52
  %81 = load i32, ptr %high_trdiagonal.addr, align 4, !tbaa !12
  %82 = load i32, ptr %trdiagonal, align 4, !tbaa !12
  %sub56 = sub i32 %81, %82
  store i32 %sub56, ptr %nindels, align 4, !tbaa !12
  %83 = load i32, ptr %trdiagonal, align 4, !tbaa !12
  %84 = load i32, ptr %nindels, align 4, !tbaa !12
  %sub57 = sub nsw i32 0, %84
  %85 = load ptr, ptr @transcriptomebits, align 8, !tbaa !5
  %86 = load ptr, ptr %query_compress_tr.addr, align 8, !tbaa !5
  %87 = load i32, ptr %tstart, align 4, !tbaa !12
  %88 = load i32, ptr %high_tend.addr, align 4, !tbaa !12
  %89 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %90 = load ptr, ptr %indelinfo.addr, align 8, !tbaa !5
  %91 = load ptr, ptr %trpath.addr, align 8, !tbaa !5
  %tplusp58 = getelementptr inbounds %struct.Trpath_T, ptr %91, i32 0, i32 0
  %92 = load i8, ptr %tplusp58, align 8, !tbaa !34
  %93 = load i8, ptr %want_lowest_coordinate_p.addr, align 1, !tbaa !14
  %call59 = call i32 @Indel_resolve_middle_deletion(ptr noundef %nmismatches_i, ptr noundef %nmismatches_j, ptr noundef %ref_nmismatches_i, ptr noundef %ref_nmismatches_j, i32 noundef %83, i32 noundef %sub57, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef %85, ptr noundef null, ptr noundef %86, i32 noundef %87, i32 noundef %88, i32 noundef %89, ptr noundef %90, i8 noundef zeroext %92, i32 noundef 0, i8 noundef zeroext %93)
  store i32 %call59, ptr %indel_pos, align 4, !tbaa !12
  %cmp60 = icmp sle i32 %call59, 0
  br i1 %cmp60, label %if.then61, label %if.else62

if.then61:                                        ; preds = %if.then55
  br label %if.end80

if.else62:                                        ; preds = %if.then55
  %94 = load i32, ptr %trdiagonal, align 4, !tbaa !12
  %95 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %sub63 = sub i32 %94, %95
  %96 = load i32, ptr %indel_pos, align 4, !tbaa !12
  %add64 = add i32 %sub63, %96
  store i32 %add64, ptr %deletionpos, align 4, !tbaa !12
  %97 = load ptr, ptr %trpath.addr, align 8, !tbaa !5
  %junctions65 = getelementptr inbounds %struct.Trpath_T, ptr %97, i32 0, i32 7
  %98 = load ptr, ptr %junctions65, align 8, !tbaa !36
  %99 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %100 = load i32, ptr %nindels, align 4, !tbaa !12
  %101 = load i32, ptr %deletionpos, align 4, !tbaa !12
  %102 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %call66 = call ptr @Junction_new_deletion(i32 noundef %100, i32 noundef %101, ptr noundef %102)
  %call67 = call ptr @Listpool_push(ptr noundef %98, ptr noundef %99, ptr noundef %call66)
  %103 = load ptr, ptr %trpath.addr, align 8, !tbaa !5
  %junctions68 = getelementptr inbounds %struct.Trpath_T, ptr %103, i32 0, i32 7
  store ptr %call67, ptr %junctions68, align 8, !tbaa !36
  %104 = load ptr, ptr %trpath.addr, align 8, !tbaa !5
  %endpoints69 = getelementptr inbounds %struct.Trpath_T, ptr %104, i32 0, i32 5
  %105 = load ptr, ptr %endpoints69, align 8, !tbaa !19
  %106 = load i32, ptr %indel_pos, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %105, i32 noundef %106)
  %107 = load ptr, ptr %trpath.addr, align 8, !tbaa !5
  %endpoints70 = getelementptr inbounds %struct.Trpath_T, ptr %107, i32 0, i32 5
  %108 = load ptr, ptr %endpoints70, align 8, !tbaa !19
  %109 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %110 = load i32, ptr %high_tend.addr, align 4, !tbaa !12
  %call71 = call ptr @Intlistpool_push(ptr noundef %108, ptr noundef %109, i32 noundef %110)
  %111 = load ptr, ptr %trpath.addr, align 8, !tbaa !5
  %endpoints72 = getelementptr inbounds %struct.Trpath_T, ptr %111, i32 0, i32 5
  store ptr %call71, ptr %endpoints72, align 8, !tbaa !19
  %112 = load ptr, ptr %trpath.addr, align 8, !tbaa !5
  %nmismatches73 = getelementptr inbounds %struct.Trpath_T, ptr %112, i32 0, i32 6
  %113 = load ptr, ptr %nmismatches73, align 8, !tbaa !35
  %114 = load i32, ptr %nmismatches_i, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %113, i32 noundef %114)
  %115 = load ptr, ptr %trpath.addr, align 8, !tbaa !5
  %nmismatches74 = getelementptr inbounds %struct.Trpath_T, ptr %115, i32 0, i32 6
  %116 = load ptr, ptr %nmismatches74, align 8, !tbaa !35
  %117 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %118 = load i32, ptr %nmismatches_j, align 4, !tbaa !12
  %call75 = call ptr @Intlistpool_push(ptr noundef %116, ptr noundef %117, i32 noundef %118)
  %119 = load ptr, ptr %trpath.addr, align 8, !tbaa !5
  %nmismatches76 = getelementptr inbounds %struct.Trpath_T, ptr %119, i32 0, i32 6
  store ptr %call75, ptr %nmismatches76, align 8, !tbaa !35
  %120 = load ptr, ptr %trpath.addr, align 8, !tbaa !5
  %trdiagonals77 = getelementptr inbounds %struct.Trpath_T, ptr %120, i32 0, i32 4
  %121 = load ptr, ptr %trdiagonals77, align 8, !tbaa !33
  %122 = load ptr, ptr %uintlistpool.addr, align 8, !tbaa !5
  %123 = load i32, ptr %high_trdiagonal.addr, align 4, !tbaa !12
  %call78 = call ptr @Uintlistpool_push(ptr noundef %121, ptr noundef %122, i32 noundef %123)
  %124 = load ptr, ptr %trpath.addr, align 8, !tbaa !5
  %trdiagonals79 = getelementptr inbounds %struct.Trpath_T, ptr %124, i32 0, i32 4
  store ptr %call78, ptr %trdiagonals79, align 8, !tbaa !33
  br label %if.end80

if.end80:                                         ; preds = %if.else62, %if.then61
  br label %if.end81

if.end81:                                         ; preds = %if.end80, %if.else52
  br label %if.end82

if.end82:                                         ; preds = %if.end81, %if.end51
  br label %if.end83

if.end83:                                         ; preds = %if.end82, %if.then27
  br label %if.end84

if.end84:                                         ; preds = %if.end83, %if.end23
  br label %if.end85

if.end85:                                         ; preds = %if.end84, %if.then7
  call void @llvm.lifetime.end.p0(i64 4, ptr %ref_nmismatches) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %nmismatches) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %ref_nmismatches_j) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %ref_nmismatches_i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %nmismatches_j) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %nmismatches_i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %deletionpos) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %indel_pos) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %nindels) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %ninserts) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %tstart) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %trdiagonal) #4
  ret void
}

declare i32 @Spliceends_trim_qend_nosplice(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef) #3

declare i32 @Genomebits_indel_solve_high(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) #3

; Function Attrs: nounwind uwtable
define internal ptr @combine_leftright_trpaths(ptr noundef %tstart_trpath, ptr noundef %tend_trpath, i8 noundef zeroext %tplusp, i32 noundef %nmismatches_allowed, ptr noundef %intlistpool, ptr noundef %uintlistpool, ptr noundef %listpool, ptr noundef %trpathpool, ptr noundef %pathpool) #1 {
entry:
  %tstart_trpath.addr = alloca ptr, align 8
  %tend_trpath.addr = alloca ptr, align 8
  %tplusp.addr = alloca i8, align 1
  %nmismatches_allowed.addr = alloca i32, align 4
  %intlistpool.addr = alloca ptr, align 8
  %uintlistpool.addr = alloca ptr, align 8
  %listpool.addr = alloca ptr, align 8
  %trpathpool.addr = alloca ptr, align 8
  %pathpool.addr = alloca ptr, align 8
  %trpath = alloca ptr, align 8
  %tr_endpoints = alloca ptr, align 8
  %q = alloca ptr, align 8
  %trdiagonals = alloca ptr, align 8
  %u = alloca ptr, align 8
  %nmismatches = alloca ptr, align 8
  %s = alloca ptr, align 8
  %junctions = alloca ptr, align 8
  %j = alloca ptr, align 8
  %tstart1 = alloca i32, align 4
  %tend1 = alloca i32, align 4
  %tstart2 = alloca i32, align 4
  %tend2 = alloca i32, align 4
  %middle_nmismatches = alloca i32, align 4
  store ptr %tstart_trpath, ptr %tstart_trpath.addr, align 8, !tbaa !5
  store ptr %tend_trpath, ptr %tend_trpath.addr, align 8, !tbaa !5
  store i8 %tplusp, ptr %tplusp.addr, align 1, !tbaa !14
  store i32 %nmismatches_allowed, ptr %nmismatches_allowed.addr, align 4, !tbaa !12
  store ptr %intlistpool, ptr %intlistpool.addr, align 8, !tbaa !5
  store ptr %uintlistpool, ptr %uintlistpool.addr, align 8, !tbaa !5
  store ptr %listpool, ptr %listpool.addr, align 8, !tbaa !5
  store ptr %trpathpool, ptr %trpathpool.addr, align 8, !tbaa !5
  store ptr %pathpool, ptr %pathpool.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %trpath) #4
  store ptr null, ptr %trpath, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %tr_endpoints) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %q) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %trdiagonals) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %u) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %nmismatches) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %junctions) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %tstart1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %tend1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %tstart2) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %tend2) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %middle_nmismatches) #4
  store ptr null, ptr %trdiagonals, align 8, !tbaa !5
  store ptr null, ptr %nmismatches, align 8, !tbaa !5
  store ptr null, ptr %junctions, align 8, !tbaa !5
  %0 = load ptr, ptr %tstart_trpath.addr, align 8, !tbaa !5
  %endpoints = getelementptr inbounds %struct.Trpath_T, ptr %0, i32 0, i32 5
  %1 = load ptr, ptr %endpoints, align 8, !tbaa !19
  %call = call i32 @Intlist_last_value(ptr noundef %1)
  store i32 %call, ptr %tend1, align 4, !tbaa !12
  %2 = load ptr, ptr %tstart_trpath.addr, align 8, !tbaa !5
  %endpoints1 = getelementptr inbounds %struct.Trpath_T, ptr %2, i32 0, i32 5
  %3 = load ptr, ptr %endpoints1, align 8, !tbaa !19
  %call2 = call i32 @Intlist_penultimate_value(ptr noundef %3)
  store i32 %call2, ptr %tstart1, align 4, !tbaa !12
  %4 = load ptr, ptr %tend_trpath.addr, align 8, !tbaa !5
  %endpoints3 = getelementptr inbounds %struct.Trpath_T, ptr %4, i32 0, i32 5
  %5 = load ptr, ptr %endpoints3, align 8, !tbaa !19
  %call4 = call i32 @Intlist_last_value(ptr noundef %5)
  store i32 %call4, ptr %tstart2, align 4, !tbaa !12
  %6 = load ptr, ptr %tend_trpath.addr, align 8, !tbaa !5
  %endpoints5 = getelementptr inbounds %struct.Trpath_T, ptr %6, i32 0, i32 5
  %7 = load ptr, ptr %endpoints5, align 8, !tbaa !19
  %call6 = call i32 @Intlist_penultimate_value(ptr noundef %7)
  store i32 %call6, ptr %tend2, align 4, !tbaa !12
  %8 = load ptr, ptr %tstart_trpath.addr, align 8, !tbaa !5
  %endpoints7 = getelementptr inbounds %struct.Trpath_T, ptr %8, i32 0, i32 5
  %9 = load ptr, ptr %endpoints7, align 8, !tbaa !19
  store ptr %9, ptr %q, align 8, !tbaa !5
  %10 = load ptr, ptr %tstart_trpath.addr, align 8, !tbaa !5
  %trdiagonals8 = getelementptr inbounds %struct.Trpath_T, ptr %10, i32 0, i32 4
  %11 = load ptr, ptr %trdiagonals8, align 8, !tbaa !33
  store ptr %11, ptr %u, align 8, !tbaa !5
  %12 = load ptr, ptr %tstart_trpath.addr, align 8, !tbaa !5
  %nmismatches9 = getelementptr inbounds %struct.Trpath_T, ptr %12, i32 0, i32 6
  %13 = load ptr, ptr %nmismatches9, align 8, !tbaa !35
  store ptr %13, ptr %s, align 8, !tbaa !5
  %14 = load ptr, ptr %tstart_trpath.addr, align 8, !tbaa !5
  %junctions10 = getelementptr inbounds %struct.Trpath_T, ptr %14, i32 0, i32 7
  %15 = load ptr, ptr %junctions10, align 8, !tbaa !36
  store ptr %15, ptr %j, align 8, !tbaa !5
  %16 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %17 = load ptr, ptr %q, align 8, !tbaa !5
  %call11 = call i32 @Intlist_head(ptr noundef %17)
  %call12 = call ptr @Intlistpool_push(ptr noundef null, ptr noundef %16, i32 noundef %call11)
  store ptr %call12, ptr %tr_endpoints, align 8, !tbaa !5
  %18 = load ptr, ptr %q, align 8, !tbaa !5
  %call13 = call ptr @Intlist_next(ptr noundef %18)
  store ptr %call13, ptr %q, align 8, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %19 = load ptr, ptr %j, align 8, !tbaa !5
  %cmp = icmp ne ptr %19, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %20 = load ptr, ptr %tr_endpoints, align 8, !tbaa !5
  %21 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %22 = load ptr, ptr %q, align 8, !tbaa !5
  %call14 = call i32 @Intlist_head(ptr noundef %22)
  %call15 = call ptr @Intlistpool_push(ptr noundef %20, ptr noundef %21, i32 noundef %call14)
  store ptr %call15, ptr %tr_endpoints, align 8, !tbaa !5
  %23 = load ptr, ptr %trdiagonals, align 8, !tbaa !5
  %24 = load ptr, ptr %uintlistpool.addr, align 8, !tbaa !5
  %25 = load ptr, ptr %u, align 8, !tbaa !5
  %call16 = call i32 @Uintlist_head(ptr noundef %25)
  %call17 = call ptr @Uintlistpool_push(ptr noundef %23, ptr noundef %24, i32 noundef %call16)
  store ptr %call17, ptr %trdiagonals, align 8, !tbaa !5
  %26 = load ptr, ptr %nmismatches, align 8, !tbaa !5
  %27 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %28 = load ptr, ptr %s, align 8, !tbaa !5
  %call18 = call i32 @Intlist_head(ptr noundef %28)
  %call19 = call ptr @Intlistpool_push(ptr noundef %26, ptr noundef %27, i32 noundef %call18)
  store ptr %call19, ptr %nmismatches, align 8, !tbaa !5
  %29 = load ptr, ptr %junctions, align 8, !tbaa !5
  %30 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %31 = load ptr, ptr %j, align 8, !tbaa !5
  %call20 = call ptr @List_head(ptr noundef %31)
  %32 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %call21 = call ptr @Junction_copy(ptr noundef %call20, ptr noundef %32)
  %call22 = call ptr @Listpool_push(ptr noundef %29, ptr noundef %30, ptr noundef %call21)
  store ptr %call22, ptr %junctions, align 8, !tbaa !5
  %33 = load ptr, ptr %q, align 8, !tbaa !5
  %call23 = call ptr @Intlist_next(ptr noundef %33)
  store ptr %call23, ptr %q, align 8, !tbaa !5
  %34 = load ptr, ptr %u, align 8, !tbaa !5
  %call24 = call ptr @Uintlist_next(ptr noundef %34)
  store ptr %call24, ptr %u, align 8, !tbaa !5
  %35 = load ptr, ptr %s, align 8, !tbaa !5
  %call25 = call ptr @Intlist_next(ptr noundef %35)
  store ptr %call25, ptr %s, align 8, !tbaa !5
  %36 = load ptr, ptr %j, align 8, !tbaa !5
  %call26 = call ptr @List_next(ptr noundef %36)
  store ptr %call26, ptr %j, align 8, !tbaa !5
  br label %while.cond, !llvm.loop !37

while.end:                                        ; preds = %while.cond
  %37 = load ptr, ptr %tr_endpoints, align 8, !tbaa !5
  %call27 = call i32 @Intlist_head(ptr noundef %37)
  store i32 %call27, ptr %tstart1, align 4, !tbaa !12
  %38 = load ptr, ptr %q, align 8, !tbaa !5
  %call28 = call i32 @Intlist_head(ptr noundef %38)
  store i32 %call28, ptr %tend1, align 4, !tbaa !12
  %39 = load ptr, ptr %tend_trpath.addr, align 8, !tbaa !5
  %call29 = call ptr @Trpath_reverse(ptr noundef %39, i8 noundef zeroext 1)
  %40 = load ptr, ptr %tend_trpath.addr, align 8, !tbaa !5
  %endpoints30 = getelementptr inbounds %struct.Trpath_T, ptr %40, i32 0, i32 5
  %41 = load ptr, ptr %endpoints30, align 8, !tbaa !19
  %call31 = call i32 @Intlist_head(ptr noundef %41)
  store i32 %call31, ptr %tstart2, align 4, !tbaa !12
  %42 = load ptr, ptr %tend_trpath.addr, align 8, !tbaa !5
  %endpoints32 = getelementptr inbounds %struct.Trpath_T, ptr %42, i32 0, i32 5
  %43 = load ptr, ptr %endpoints32, align 8, !tbaa !19
  %call33 = call ptr @Intlist_next(ptr noundef %43)
  %call34 = call i32 @Intlist_head(ptr noundef %call33)
  store i32 %call34, ptr %tend2, align 4, !tbaa !12
  %44 = load i32, ptr %tend2, align 4, !tbaa !12
  %45 = load i32, ptr %tstart1, align 4, !tbaa !12
  %cmp35 = icmp sle i32 %44, %45
  br i1 %cmp35, label %if.then, label %if.else

if.then:                                          ; preds = %while.end
  %46 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %47 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  call void @Junction_list_gc(ptr noundef %junctions, ptr noundef %46, ptr noundef %47)
  br label %if.end100

if.else:                                          ; preds = %while.end
  %48 = load ptr, ptr %tr_endpoints, align 8, !tbaa !5
  %49 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %50 = load i32, ptr %tend2, align 4, !tbaa !12
  %call36 = call ptr @Intlistpool_push(ptr noundef %48, ptr noundef %49, i32 noundef %50)
  store ptr %call36, ptr %tr_endpoints, align 8, !tbaa !5
  %51 = load ptr, ptr %trdiagonals, align 8, !tbaa !5
  %52 = load ptr, ptr %uintlistpool.addr, align 8, !tbaa !5
  %53 = load ptr, ptr %u, align 8, !tbaa !5
  %call37 = call i32 @Uintlist_head(ptr noundef %53)
  %call38 = call ptr @Uintlistpool_push(ptr noundef %51, ptr noundef %52, i32 noundef %call37)
  store ptr %call38, ptr %trdiagonals, align 8, !tbaa !5
  %54 = load i32, ptr %tstart1, align 4, !tbaa !12
  %55 = load i32, ptr %tstart2, align 4, !tbaa !12
  %cmp39 = icmp eq i32 %54, %55
  br i1 %cmp39, label %land.lhs.true, label %if.else47

land.lhs.true:                                    ; preds = %if.else
  %56 = load i32, ptr %tend1, align 4, !tbaa !12
  %57 = load i32, ptr %tend2, align 4, !tbaa !12
  %cmp40 = icmp eq i32 %56, %57
  br i1 %cmp40, label %if.then41, label %if.else47

if.then41:                                        ; preds = %land.lhs.true
  %58 = load ptr, ptr %s, align 8, !tbaa !5
  %call42 = call i32 @Intlist_head(ptr noundef %58)
  store i32 %call42, ptr %middle_nmismatches, align 4, !tbaa !12
  %cmp43 = icmp eq i32 %call42, -1
  br i1 %cmp43, label %if.then44, label %if.end

if.then44:                                        ; preds = %if.then41
  %59 = load ptr, ptr %tend_trpath.addr, align 8, !tbaa !5
  %nmismatches45 = getelementptr inbounds %struct.Trpath_T, ptr %59, i32 0, i32 6
  %60 = load ptr, ptr %nmismatches45, align 8, !tbaa !35
  %call46 = call i32 @Intlist_head(ptr noundef %60)
  store i32 %call46, ptr %middle_nmismatches, align 4, !tbaa !12
  br label %if.end

if.end:                                           ; preds = %if.then44, %if.then41
  br label %if.end59

if.else47:                                        ; preds = %land.lhs.true, %if.else
  %61 = load i32, ptr %tstart1, align 4, !tbaa !12
  %62 = load i32, ptr %tstart2, align 4, !tbaa !12
  %cmp48 = icmp eq i32 %61, %62
  br i1 %cmp48, label %if.then49, label %if.else52

if.then49:                                        ; preds = %if.else47
  %63 = load ptr, ptr %tend_trpath.addr, align 8, !tbaa !5
  %nmismatches50 = getelementptr inbounds %struct.Trpath_T, ptr %63, i32 0, i32 6
  %64 = load ptr, ptr %nmismatches50, align 8, !tbaa !35
  %call51 = call i32 @Intlist_head(ptr noundef %64)
  store i32 %call51, ptr %middle_nmismatches, align 4, !tbaa !12
  br label %if.end58

if.else52:                                        ; preds = %if.else47
  %65 = load i32, ptr %tend1, align 4, !tbaa !12
  %66 = load i32, ptr %tend2, align 4, !tbaa !12
  %cmp53 = icmp eq i32 %65, %66
  br i1 %cmp53, label %if.then54, label %if.else56

if.then54:                                        ; preds = %if.else52
  %67 = load ptr, ptr %s, align 8, !tbaa !5
  %call55 = call i32 @Intlist_head(ptr noundef %67)
  store i32 %call55, ptr %middle_nmismatches, align 4, !tbaa !12
  br label %if.end57

if.else56:                                        ; preds = %if.else52
  store i32 -1, ptr %middle_nmismatches, align 4, !tbaa !12
  br label %if.end57

if.end57:                                         ; preds = %if.else56, %if.then54
  br label %if.end58

if.end58:                                         ; preds = %if.end57, %if.then49
  br label %if.end59

if.end59:                                         ; preds = %if.end58, %if.end
  %68 = load ptr, ptr %nmismatches, align 8, !tbaa !5
  %69 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %70 = load i32, ptr %middle_nmismatches, align 4, !tbaa !12
  %call60 = call ptr @Intlistpool_push(ptr noundef %68, ptr noundef %69, i32 noundef %70)
  store ptr %call60, ptr %nmismatches, align 8, !tbaa !5
  %71 = load ptr, ptr %tend_trpath.addr, align 8, !tbaa !5
  %endpoints61 = getelementptr inbounds %struct.Trpath_T, ptr %71, i32 0, i32 5
  %72 = load ptr, ptr %endpoints61, align 8, !tbaa !19
  %call62 = call ptr @Intlist_next(ptr noundef %72)
  store ptr %call62, ptr %q, align 8, !tbaa !5
  %73 = load ptr, ptr %tend_trpath.addr, align 8, !tbaa !5
  %trdiagonals63 = getelementptr inbounds %struct.Trpath_T, ptr %73, i32 0, i32 4
  %74 = load ptr, ptr %trdiagonals63, align 8, !tbaa !33
  store ptr %74, ptr %u, align 8, !tbaa !5
  %75 = load ptr, ptr %tend_trpath.addr, align 8, !tbaa !5
  %nmismatches64 = getelementptr inbounds %struct.Trpath_T, ptr %75, i32 0, i32 6
  %76 = load ptr, ptr %nmismatches64, align 8, !tbaa !35
  store ptr %76, ptr %s, align 8, !tbaa !5
  %77 = load ptr, ptr %tend_trpath.addr, align 8, !tbaa !5
  %junctions65 = getelementptr inbounds %struct.Trpath_T, ptr %77, i32 0, i32 7
  %78 = load ptr, ptr %junctions65, align 8, !tbaa !36
  store ptr %78, ptr %j, align 8, !tbaa !5
  br label %while.cond66

while.cond66:                                     ; preds = %while.body68, %if.end59
  %79 = load ptr, ptr %j, align 8, !tbaa !5
  %cmp67 = icmp ne ptr %79, null
  br i1 %cmp67, label %while.body68, label %while.end82

while.body68:                                     ; preds = %while.cond66
  %80 = load ptr, ptr %junctions, align 8, !tbaa !5
  %81 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %82 = load ptr, ptr %j, align 8, !tbaa !5
  %call69 = call ptr @List_head(ptr noundef %82)
  %83 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %call70 = call ptr @Junction_copy(ptr noundef %call69, ptr noundef %83)
  %call71 = call ptr @Listpool_push(ptr noundef %80, ptr noundef %81, ptr noundef %call70)
  store ptr %call71, ptr %junctions, align 8, !tbaa !5
  %84 = load ptr, ptr %q, align 8, !tbaa !5
  %call72 = call ptr @Intlist_next(ptr noundef %84)
  store ptr %call72, ptr %q, align 8, !tbaa !5
  %85 = load ptr, ptr %u, align 8, !tbaa !5
  %call73 = call ptr @Uintlist_next(ptr noundef %85)
  store ptr %call73, ptr %u, align 8, !tbaa !5
  %86 = load ptr, ptr %s, align 8, !tbaa !5
  %call74 = call ptr @Intlist_next(ptr noundef %86)
  store ptr %call74, ptr %s, align 8, !tbaa !5
  %87 = load ptr, ptr %tr_endpoints, align 8, !tbaa !5
  %88 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %89 = load ptr, ptr %q, align 8, !tbaa !5
  %call75 = call i32 @Intlist_head(ptr noundef %89)
  %call76 = call ptr @Intlistpool_push(ptr noundef %87, ptr noundef %88, i32 noundef %call75)
  store ptr %call76, ptr %tr_endpoints, align 8, !tbaa !5
  %90 = load ptr, ptr %trdiagonals, align 8, !tbaa !5
  %91 = load ptr, ptr %uintlistpool.addr, align 8, !tbaa !5
  %92 = load ptr, ptr %u, align 8, !tbaa !5
  %call77 = call i32 @Uintlist_head(ptr noundef %92)
  %call78 = call ptr @Uintlistpool_push(ptr noundef %90, ptr noundef %91, i32 noundef %call77)
  store ptr %call78, ptr %trdiagonals, align 8, !tbaa !5
  %93 = load ptr, ptr %nmismatches, align 8, !tbaa !5
  %94 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %95 = load ptr, ptr %s, align 8, !tbaa !5
  %call79 = call i32 @Intlist_head(ptr noundef %95)
  %call80 = call ptr @Intlistpool_push(ptr noundef %93, ptr noundef %94, i32 noundef %call79)
  store ptr %call80, ptr %nmismatches, align 8, !tbaa !5
  %96 = load ptr, ptr %j, align 8, !tbaa !5
  %call81 = call ptr @List_next(ptr noundef %96)
  store ptr %call81, ptr %j, align 8, !tbaa !5
  br label %while.cond66, !llvm.loop !39

while.end82:                                      ; preds = %while.cond66
  %97 = load ptr, ptr %tr_endpoints, align 8, !tbaa !5
  %call83 = call ptr @Intlist_reverse(ptr noundef %97)
  store ptr %call83, ptr %tr_endpoints, align 8, !tbaa !5
  %98 = load ptr, ptr %junctions, align 8, !tbaa !5
  %call84 = call ptr @List_reverse(ptr noundef %98)
  store ptr %call84, ptr %junctions, align 8, !tbaa !5
  %99 = load ptr, ptr %tr_endpoints, align 8, !tbaa !5
  %100 = load ptr, ptr %junctions, align 8, !tbaa !5
  %call85 = call zeroext i8 @Trpath_endpoints_acceptable_p(ptr noundef %99, ptr noundef %100)
  %conv = zext i8 %call85 to i32
  %cmp86 = icmp eq i32 %conv, 0
  br i1 %cmp86, label %if.then88, label %if.else89

if.then88:                                        ; preds = %while.end82
  %101 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %102 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  call void @Junction_list_gc(ptr noundef %junctions, ptr noundef %101, ptr noundef %102)
  br label %if.end99

if.else89:                                        ; preds = %while.end82
  %103 = load ptr, ptr %trdiagonals, align 8, !tbaa !5
  %call90 = call ptr @Uintlist_reverse(ptr noundef %103)
  store ptr %call90, ptr %trdiagonals, align 8, !tbaa !5
  %104 = load ptr, ptr %nmismatches, align 8, !tbaa !5
  %call91 = call ptr @Intlist_reverse(ptr noundef %104)
  store ptr %call91, ptr %nmismatches, align 8, !tbaa !5
  %105 = load ptr, ptr %nmismatches, align 8, !tbaa !5
  %call92 = call i32 @preliminary_score_within_trims(ptr noundef %105)
  %106 = load i32, ptr %nmismatches_allowed.addr, align 4, !tbaa !12
  %cmp93 = icmp sgt i32 %call92, %106
  br i1 %cmp93, label %if.then95, label %if.else96

if.then95:                                        ; preds = %if.else89
  %107 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %108 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  call void @Junction_list_gc(ptr noundef %junctions, ptr noundef %107, ptr noundef %108)
  br label %if.end98

if.else96:                                        ; preds = %if.else89
  %109 = load ptr, ptr %tr_endpoints, align 8, !tbaa !5
  %110 = load ptr, ptr %trdiagonals, align 8, !tbaa !5
  %111 = load ptr, ptr %nmismatches, align 8, !tbaa !5
  %112 = load ptr, ptr %junctions, align 8, !tbaa !5
  %113 = load i8, ptr %tplusp.addr, align 1, !tbaa !14
  %114 = load ptr, ptr %tstart_trpath.addr, align 8, !tbaa !5
  %trnum = getelementptr inbounds %struct.Trpath_T, ptr %114, i32 0, i32 1
  %115 = load i32, ptr %trnum, align 4, !tbaa !40
  %116 = load ptr, ptr %tstart_trpath.addr, align 8, !tbaa !5
  %troffset = getelementptr inbounds %struct.Trpath_T, ptr %116, i32 0, i32 2
  %117 = load i32, ptr %troffset, align 8, !tbaa !41
  %118 = load ptr, ptr %tstart_trpath.addr, align 8, !tbaa !5
  %trhigh = getelementptr inbounds %struct.Trpath_T, ptr %118, i32 0, i32 3
  %119 = load i32, ptr %trhigh, align 4, !tbaa !42
  %120 = load ptr, ptr %trpathpool.addr, align 8, !tbaa !5
  %call97 = call ptr @Trpath_create(ptr noundef %109, ptr noundef %110, ptr noundef %111, ptr noundef %112, i8 noundef zeroext %113, i32 noundef %115, i32 noundef %117, i32 noundef %119, ptr noundef %120)
  store ptr %call97, ptr %trpath, align 8, !tbaa !5
  br label %if.end98

if.end98:                                         ; preds = %if.else96, %if.then95
  br label %if.end99

if.end99:                                         ; preds = %if.end98, %if.then88
  br label %if.end100

if.end100:                                        ; preds = %if.end99, %if.then
  %121 = load ptr, ptr %tend_trpath.addr, align 8, !tbaa !5
  %call101 = call ptr @Trpath_reverse(ptr noundef %121, i8 noundef zeroext 0)
  %122 = load ptr, ptr %trpath, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 4, ptr %middle_nmismatches) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %tend2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %tstart2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %tend1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %tstart1) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %junctions) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %nmismatches) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %u) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %trdiagonals) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %q) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %tr_endpoints) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %trpath) #4
  ret ptr %122
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @Intlist_head(ptr noundef %list) #0 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !5
  %first = getelementptr inbounds %struct.Intlist_T, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %first, align 8, !tbaa !43
  ret i32 %1
}

declare void @Trpath_free(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

declare i32 @Intlist_last_value(ptr noundef) #3

declare void @EF64_chrbounds(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

declare i32 @Transcriptome_exons(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

declare ptr @Trpath_convert_to_path_geneplus(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

declare i32 @Path_eval_nmatches(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

declare void @Path_free(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

declare ptr @Transcript_remap(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) #3

declare ptr @Trpath_convert_to_path_geneminus(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local ptr @Trpath_solve_from_ends(ptr noundef %found_score, ptr noundef %found_transcriptp, i32 noundef %trdiagonal_i, i32 noundef %pos5_0, i32 noundef %pos3_0, i32 noundef %trdiagonal_j, i32 noundef %pos5_1, i32 noundef %pos3_1, i8 noundef zeroext %tplusp, ptr noundef %queryseq, i32 noundef %querylength, ptr noundef %query_compress_tr, ptr noundef %query_compress_fwd, ptr noundef %query_compress_rev, i32 noundef %trnum, i32 noundef %troffset, i32 noundef %trhigh, i32 noundef %chrnum, i8 noundef zeroext %geneplusp, i8 noundef zeroext %want_lowest_coordinate_p, ptr noundef %indelinfo, i32 noundef %nmismatches_allowed, i32 noundef %max_insertionlen, i32 noundef %max_deletionlen, ptr noundef %intlistpool, ptr noundef %uintlistpool, ptr noundef %univcoordlistpool, ptr noundef %listpool, ptr noundef %trpathpool, ptr noundef %pathpool, ptr noundef %vectorpool, ptr noundef %transcriptpool, i32 noundef %method) #1 {
entry:
  %retval = alloca ptr, align 8
  %found_score.addr = alloca ptr, align 8
  %found_transcriptp.addr = alloca ptr, align 8
  %trdiagonal_i.addr = alloca i32, align 4
  %pos5_0.addr = alloca i32, align 4
  %pos3_0.addr = alloca i32, align 4
  %trdiagonal_j.addr = alloca i32, align 4
  %pos5_1.addr = alloca i32, align 4
  %pos3_1.addr = alloca i32, align 4
  %tplusp.addr = alloca i8, align 1
  %queryseq.addr = alloca ptr, align 8
  %querylength.addr = alloca i32, align 4
  %query_compress_tr.addr = alloca ptr, align 8
  %query_compress_fwd.addr = alloca ptr, align 8
  %query_compress_rev.addr = alloca ptr, align 8
  %trnum.addr = alloca i32, align 4
  %troffset.addr = alloca i32, align 4
  %trhigh.addr = alloca i32, align 4
  %chrnum.addr = alloca i32, align 4
  %geneplusp.addr = alloca i8, align 1
  %want_lowest_coordinate_p.addr = alloca i8, align 1
  %indelinfo.addr = alloca ptr, align 8
  %nmismatches_allowed.addr = alloca i32, align 4
  %max_insertionlen.addr = alloca i32, align 4
  %max_deletionlen.addr = alloca i32, align 4
  %intlistpool.addr = alloca ptr, align 8
  %uintlistpool.addr = alloca ptr, align 8
  %univcoordlistpool.addr = alloca ptr, align 8
  %listpool.addr = alloca ptr, align 8
  %trpathpool.addr = alloca ptr, align 8
  %pathpool.addr = alloca ptr, align 8
  %vectorpool.addr = alloca ptr, align 8
  %transcriptpool.addr = alloca ptr, align 8
  %method.addr = alloca i32, align 4
  %path = alloca ptr, align 8
  %invalid_transcripts = alloca ptr, align 8
  %trpath = alloca ptr, align 8
  %nmismatches_i = alloca i32, align 4
  %nmismatches_j = alloca i32, align 4
  %ref_nmismatches_i = alloca i32, align 4
  %ref_nmismatches_j = alloca i32, align 4
  %nindels = alloca i32, align 4
  %supporti = alloca i32, align 4
  %supportj = alloca i32, align 4
  %indel_pos = alloca i32, align 4
  %tstart = alloca i32, align 4
  %tend = alloca i32, align 4
  %segmenti_left = alloca i32, align 4
  %deletionpos = alloca i32, align 4
  %j = alloca ptr, align 8
  %q = alloca ptr, align 8
  %s = alloca ptr, align 8
  %nexons = alloca i32, align 4
  %exonbounds = alloca ptr, align 8
  %exonstarts = alloca ptr, align 8
  %chroffset = alloca i32, align 4
  %chrhigh = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %found_score, ptr %found_score.addr, align 8, !tbaa !5
  store ptr %found_transcriptp, ptr %found_transcriptp.addr, align 8, !tbaa !5
  store i32 %trdiagonal_i, ptr %trdiagonal_i.addr, align 4, !tbaa !12
  store i32 %pos5_0, ptr %pos5_0.addr, align 4, !tbaa !12
  store i32 %pos3_0, ptr %pos3_0.addr, align 4, !tbaa !12
  store i32 %trdiagonal_j, ptr %trdiagonal_j.addr, align 4, !tbaa !12
  store i32 %pos5_1, ptr %pos5_1.addr, align 4, !tbaa !12
  store i32 %pos3_1, ptr %pos3_1.addr, align 4, !tbaa !12
  store i8 %tplusp, ptr %tplusp.addr, align 1, !tbaa !14
  store ptr %queryseq, ptr %queryseq.addr, align 8, !tbaa !5
  store i32 %querylength, ptr %querylength.addr, align 4, !tbaa !12
  store ptr %query_compress_tr, ptr %query_compress_tr.addr, align 8, !tbaa !5
  store ptr %query_compress_fwd, ptr %query_compress_fwd.addr, align 8, !tbaa !5
  store ptr %query_compress_rev, ptr %query_compress_rev.addr, align 8, !tbaa !5
  store i32 %trnum, ptr %trnum.addr, align 4, !tbaa !12
  store i32 %troffset, ptr %troffset.addr, align 4, !tbaa !12
  store i32 %trhigh, ptr %trhigh.addr, align 4, !tbaa !12
  store i32 %chrnum, ptr %chrnum.addr, align 4, !tbaa !12
  store i8 %geneplusp, ptr %geneplusp.addr, align 1, !tbaa !14
  store i8 %want_lowest_coordinate_p, ptr %want_lowest_coordinate_p.addr, align 1, !tbaa !14
  store ptr %indelinfo, ptr %indelinfo.addr, align 8, !tbaa !5
  store i32 %nmismatches_allowed, ptr %nmismatches_allowed.addr, align 4, !tbaa !12
  store i32 %max_insertionlen, ptr %max_insertionlen.addr, align 4, !tbaa !12
  store i32 %max_deletionlen, ptr %max_deletionlen.addr, align 4, !tbaa !12
  store ptr %intlistpool, ptr %intlistpool.addr, align 8, !tbaa !5
  store ptr %uintlistpool, ptr %uintlistpool.addr, align 8, !tbaa !5
  store ptr %univcoordlistpool, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  store ptr %listpool, ptr %listpool.addr, align 8, !tbaa !5
  store ptr %trpathpool, ptr %trpathpool.addr, align 8, !tbaa !5
  store ptr %pathpool, ptr %pathpool.addr, align 8, !tbaa !5
  store ptr %vectorpool, ptr %vectorpool.addr, align 8, !tbaa !5
  store ptr %transcriptpool, ptr %transcriptpool.addr, align 8, !tbaa !5
  store i32 %method, ptr %method.addr, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 8, ptr %path) #4
  store ptr null, ptr %path, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %invalid_transcripts) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %trpath) #4
  store ptr null, ptr %trpath, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %nmismatches_i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %nmismatches_j) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ref_nmismatches_i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ref_nmismatches_j) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %nindels) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %supporti) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %supportj) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %indel_pos) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %tstart) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %tend) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %segmenti_left) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %deletionpos) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %q) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %nexons) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %exonbounds) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %exonstarts) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %chroffset) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %chrhigh) #4
  %0 = load i32, ptr %trdiagonal_i.addr, align 4, !tbaa !12
  %1 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %sub = sub i32 %0, %1
  store i32 %sub, ptr %segmenti_left, align 4, !tbaa !12
  %2 = load i32, ptr %pos5_0.addr, align 4, !tbaa !12
  store i32 %2, ptr %tstart, align 4, !tbaa !12
  %3 = load i32, ptr %pos3_1.addr, align 4, !tbaa !12
  store i32 %3, ptr %tend, align 4, !tbaa !12
  %4 = load i32, ptr %trdiagonal_i.addr, align 4, !tbaa !12
  %5 = load i32, ptr %trdiagonal_j.addr, align 4, !tbaa !12
  %6 = load i32, ptr %max_insertionlen.addr, align 4, !tbaa !12
  %add = add i32 %5, %6
  %cmp = icmp ugt i32 %4, %add
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end59

if.else:                                          ; preds = %entry
  %7 = load i32, ptr %trdiagonal_i.addr, align 4, !tbaa !12
  %8 = load i32, ptr %trdiagonal_j.addr, align 4, !tbaa !12
  %cmp1 = icmp ugt i32 %7, %8
  br i1 %cmp1, label %if.then2, label %if.else24

if.then2:                                         ; preds = %if.else
  %9 = load i32, ptr %trdiagonal_i.addr, align 4, !tbaa !12
  %10 = load i32, ptr %trdiagonal_j.addr, align 4, !tbaa !12
  %sub3 = sub i32 %9, %10
  store i32 %sub3, ptr %nindels, align 4, !tbaa !12
  %11 = load i32, ptr %trdiagonal_i.addr, align 4, !tbaa !12
  %12 = load i32, ptr %nindels, align 4, !tbaa !12
  %13 = load ptr, ptr @transcriptomebits, align 8, !tbaa !5
  %14 = load ptr, ptr %query_compress_tr.addr, align 8, !tbaa !5
  %15 = load i32, ptr %tstart, align 4, !tbaa !12
  %16 = load i32, ptr %tend, align 4, !tbaa !12
  %17 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %18 = load ptr, ptr %indelinfo.addr, align 8, !tbaa !5
  %19 = load i8, ptr %tplusp.addr, align 1, !tbaa !14
  %20 = load i8, ptr %want_lowest_coordinate_p.addr, align 1, !tbaa !14
  %call = call i32 @Indel_resolve_middle_insertion(ptr noundef %nmismatches_i, ptr noundef %nmismatches_j, ptr noundef %ref_nmismatches_i, ptr noundef %ref_nmismatches_j, i32 noundef %11, i32 noundef %12, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef %13, ptr noundef null, ptr noundef %14, i32 noundef %15, i32 noundef %16, i32 noundef %17, ptr noundef %18, i8 noundef zeroext %19, i32 noundef 0, i8 noundef zeroext %20)
  store i32 %call, ptr %indel_pos, align 4, !tbaa !12
  %cmp4 = icmp sle i32 %call, 0
  br i1 %cmp4, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.then2
  br label %if.end23

if.else6:                                         ; preds = %if.then2
  %21 = load i32, ptr %indel_pos, align 4, !tbaa !12
  %22 = load i32, ptr %tstart, align 4, !tbaa !12
  %sub7 = sub nsw i32 %21, %22
  store i32 %sub7, ptr %supporti, align 4, !tbaa !12
  %23 = load i32, ptr %tend, align 4, !tbaa !12
  %24 = load i32, ptr %indel_pos, align 4, !tbaa !12
  %25 = load i32, ptr %nindels, align 4, !tbaa !12
  %add8 = add nsw i32 %24, %25
  %sub9 = sub nsw i32 %23, %add8
  store i32 %sub9, ptr %supportj, align 4, !tbaa !12
  %26 = load i32, ptr %supporti, align 4, !tbaa !12
  %27 = load i32, ptr %nmismatches_i, align 4, !tbaa !12
  %mul = mul nsw i32 3, %27
  %sub10 = sub nsw i32 %26, %mul
  %cmp11 = icmp slt i32 %sub10, 6
  br i1 %cmp11, label %if.then12, label %if.else13

if.then12:                                        ; preds = %if.else6
  br label %if.end22

if.else13:                                        ; preds = %if.else6
  %28 = load i32, ptr %supportj, align 4, !tbaa !12
  %29 = load i32, ptr %nmismatches_j, align 4, !tbaa !12
  %mul14 = mul nsw i32 3, %29
  %sub15 = sub nsw i32 %28, %mul14
  %cmp16 = icmp slt i32 %sub15, 6
  br i1 %cmp16, label %if.then17, label %if.else18

if.then17:                                        ; preds = %if.else13
  br label %if.end

if.else18:                                        ; preds = %if.else13
  %30 = load i32, ptr %trdiagonal_i.addr, align 4, !tbaa !12
  %31 = load i32, ptr %pos5_0.addr, align 4, !tbaa !12
  %32 = load i32, ptr %pos3_0.addr, align 4, !tbaa !12
  %33 = load i32, ptr %trdiagonal_j.addr, align 4, !tbaa !12
  %34 = load i32, ptr %pos5_1.addr, align 4, !tbaa !12
  %35 = load i32, ptr %pos3_1.addr, align 4, !tbaa !12
  %36 = load i8, ptr %tplusp.addr, align 1, !tbaa !14
  %37 = load i32, ptr %trnum.addr, align 4, !tbaa !12
  %38 = load i32, ptr %troffset.addr, align 4, !tbaa !12
  %39 = load i32, ptr %trhigh.addr, align 4, !tbaa !12
  %40 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %41 = load ptr, ptr %uintlistpool.addr, align 8, !tbaa !5
  %42 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %43 = load ptr, ptr %trpathpool.addr, align 8, !tbaa !5
  %call19 = call ptr @Trpath_new_from_ends(i32 noundef %30, i32 noundef %31, i32 noundef %32, i32 noundef %33, i32 noundef %34, i32 noundef %35, i8 noundef zeroext %36, i32 noundef %37, i32 noundef %38, i32 noundef %39, ptr noundef %40, ptr noundef %41, ptr noundef %42, ptr noundef %43)
  store ptr %call19, ptr %trpath, align 8, !tbaa !5
  %44 = load ptr, ptr %trpath, align 8, !tbaa !5
  %junctions = getelementptr inbounds %struct.Trpath_T, ptr %44, i32 0, i32 7
  %45 = load ptr, ptr %junctions, align 8, !tbaa !36
  store ptr %45, ptr %j, align 8, !tbaa !5
  %46 = load ptr, ptr %trpath, align 8, !tbaa !5
  %endpoints = getelementptr inbounds %struct.Trpath_T, ptr %46, i32 0, i32 5
  %47 = load ptr, ptr %endpoints, align 8, !tbaa !19
  store ptr %47, ptr %q, align 8, !tbaa !5
  %48 = load ptr, ptr %trpath, align 8, !tbaa !5
  %nmismatches = getelementptr inbounds %struct.Trpath_T, ptr %48, i32 0, i32 6
  %49 = load ptr, ptr %nmismatches, align 8, !tbaa !35
  store ptr %49, ptr %s, align 8, !tbaa !5
  %50 = load ptr, ptr %j, align 8, !tbaa !5
  %51 = load i32, ptr %nindels, align 4, !tbaa !12
  %52 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %call20 = call ptr @Junction_new_insertion(i32 noundef %51, ptr noundef %52)
  call void @List_head_set(ptr noundef %50, ptr noundef %call20)
  %53 = load ptr, ptr %q, align 8, !tbaa !5
  %rest = getelementptr inbounds %struct.Intlist_T, ptr %53, i32 0, i32 1
  %54 = load ptr, ptr %rest, align 8, !tbaa !45
  %55 = load i32, ptr %indel_pos, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %54, i32 noundef %55)
  %56 = load ptr, ptr %s, align 8, !tbaa !5
  %rest21 = getelementptr inbounds %struct.Intlist_T, ptr %56, i32 0, i32 1
  %57 = load ptr, ptr %rest21, align 8, !tbaa !45
  %58 = load i32, ptr %nmismatches_j, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %57, i32 noundef %58)
  %59 = load ptr, ptr %s, align 8, !tbaa !5
  %60 = load i32, ptr %nmismatches_i, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %59, i32 noundef %60)
  br label %if.end

if.end:                                           ; preds = %if.else18, %if.then17
  br label %if.end22

if.end22:                                         ; preds = %if.end, %if.then12
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %if.then5
  br label %if.end58

if.else24:                                        ; preds = %if.else
  %61 = load i32, ptr %trdiagonal_i.addr, align 4, !tbaa !12
  %62 = load i32, ptr %max_deletionlen.addr, align 4, !tbaa !12
  %add25 = add i32 %61, %62
  %63 = load i32, ptr %trdiagonal_j.addr, align 4, !tbaa !12
  %cmp26 = icmp uge i32 %add25, %63
  br i1 %cmp26, label %if.then27, label %if.end57

if.then27:                                        ; preds = %if.else24
  %64 = load i32, ptr %trdiagonal_j.addr, align 4, !tbaa !12
  %65 = load i32, ptr %trdiagonal_i.addr, align 4, !tbaa !12
  %sub28 = sub i32 %64, %65
  store i32 %sub28, ptr %nindels, align 4, !tbaa !12
  %66 = load i32, ptr %trdiagonal_i.addr, align 4, !tbaa !12
  %67 = load i32, ptr %nindels, align 4, !tbaa !12
  %sub29 = sub nsw i32 0, %67
  %68 = load ptr, ptr @transcriptomebits, align 8, !tbaa !5
  %69 = load ptr, ptr %query_compress_tr.addr, align 8, !tbaa !5
  %70 = load i32, ptr %tstart, align 4, !tbaa !12
  %71 = load i32, ptr %tend, align 4, !tbaa !12
  %72 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %73 = load ptr, ptr %indelinfo.addr, align 8, !tbaa !5
  %74 = load i8, ptr %tplusp.addr, align 1, !tbaa !14
  %75 = load i8, ptr %want_lowest_coordinate_p.addr, align 1, !tbaa !14
  %call30 = call i32 @Indel_resolve_middle_deletion(ptr noundef %nmismatches_i, ptr noundef %nmismatches_j, ptr noundef %ref_nmismatches_i, ptr noundef %ref_nmismatches_j, i32 noundef %66, i32 noundef %sub29, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef %68, ptr noundef null, ptr noundef %69, i32 noundef %70, i32 noundef %71, i32 noundef %72, ptr noundef %73, i8 noundef zeroext %74, i32 noundef 0, i8 noundef zeroext %75)
  store i32 %call30, ptr %indel_pos, align 4, !tbaa !12
  %cmp31 = icmp sle i32 %call30, 0
  br i1 %cmp31, label %if.then32, label %if.else33

if.then32:                                        ; preds = %if.then27
  br label %if.end56

if.else33:                                        ; preds = %if.then27
  %76 = load i32, ptr %indel_pos, align 4, !tbaa !12
  %77 = load i32, ptr %tstart, align 4, !tbaa !12
  %sub34 = sub nsw i32 %76, %77
  store i32 %sub34, ptr %supporti, align 4, !tbaa !12
  %78 = load i32, ptr %tend, align 4, !tbaa !12
  %79 = load i32, ptr %indel_pos, align 4, !tbaa !12
  %sub35 = sub nsw i32 %78, %79
  store i32 %sub35, ptr %supportj, align 4, !tbaa !12
  %80 = load i32, ptr %supporti, align 4, !tbaa !12
  %81 = load i32, ptr %nmismatches_i, align 4, !tbaa !12
  %mul36 = mul nsw i32 3, %81
  %sub37 = sub nsw i32 %80, %mul36
  %cmp38 = icmp slt i32 %sub37, 6
  br i1 %cmp38, label %if.then39, label %if.else40

if.then39:                                        ; preds = %if.else33
  br label %if.end55

if.else40:                                        ; preds = %if.else33
  %82 = load i32, ptr %supportj, align 4, !tbaa !12
  %83 = load i32, ptr %nmismatches_j, align 4, !tbaa !12
  %mul41 = mul nsw i32 3, %83
  %sub42 = sub nsw i32 %82, %mul41
  %cmp43 = icmp slt i32 %sub42, 6
  br i1 %cmp43, label %if.then44, label %if.else45

if.then44:                                        ; preds = %if.else40
  br label %if.end54

if.else45:                                        ; preds = %if.else40
  %84 = load i32, ptr %trdiagonal_i.addr, align 4, !tbaa !12
  %85 = load i32, ptr %pos5_0.addr, align 4, !tbaa !12
  %86 = load i32, ptr %pos3_0.addr, align 4, !tbaa !12
  %87 = load i32, ptr %trdiagonal_j.addr, align 4, !tbaa !12
  %88 = load i32, ptr %pos5_1.addr, align 4, !tbaa !12
  %89 = load i32, ptr %pos3_1.addr, align 4, !tbaa !12
  %90 = load i8, ptr %tplusp.addr, align 1, !tbaa !14
  %91 = load i32, ptr %trnum.addr, align 4, !tbaa !12
  %92 = load i32, ptr %troffset.addr, align 4, !tbaa !12
  %93 = load i32, ptr %trhigh.addr, align 4, !tbaa !12
  %94 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %95 = load ptr, ptr %uintlistpool.addr, align 8, !tbaa !5
  %96 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %97 = load ptr, ptr %trpathpool.addr, align 8, !tbaa !5
  %call46 = call ptr @Trpath_new_from_ends(i32 noundef %84, i32 noundef %85, i32 noundef %86, i32 noundef %87, i32 noundef %88, i32 noundef %89, i8 noundef zeroext %90, i32 noundef %91, i32 noundef %92, i32 noundef %93, ptr noundef %94, ptr noundef %95, ptr noundef %96, ptr noundef %97)
  store ptr %call46, ptr %trpath, align 8, !tbaa !5
  %98 = load ptr, ptr %trpath, align 8, !tbaa !5
  %junctions47 = getelementptr inbounds %struct.Trpath_T, ptr %98, i32 0, i32 7
  %99 = load ptr, ptr %junctions47, align 8, !tbaa !36
  store ptr %99, ptr %j, align 8, !tbaa !5
  %100 = load ptr, ptr %trpath, align 8, !tbaa !5
  %endpoints48 = getelementptr inbounds %struct.Trpath_T, ptr %100, i32 0, i32 5
  %101 = load ptr, ptr %endpoints48, align 8, !tbaa !19
  store ptr %101, ptr %q, align 8, !tbaa !5
  %102 = load ptr, ptr %trpath, align 8, !tbaa !5
  %nmismatches49 = getelementptr inbounds %struct.Trpath_T, ptr %102, i32 0, i32 6
  %103 = load ptr, ptr %nmismatches49, align 8, !tbaa !35
  store ptr %103, ptr %s, align 8, !tbaa !5
  %104 = load i32, ptr %segmenti_left, align 4, !tbaa !12
  %105 = load i32, ptr %indel_pos, align 4, !tbaa !12
  %add50 = add i32 %104, %105
  store i32 %add50, ptr %deletionpos, align 4, !tbaa !12
  %106 = load ptr, ptr %j, align 8, !tbaa !5
  %107 = load i32, ptr %nindels, align 4, !tbaa !12
  %108 = load i32, ptr %deletionpos, align 4, !tbaa !12
  %109 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %call51 = call ptr @Junction_new_deletion(i32 noundef %107, i32 noundef %108, ptr noundef %109)
  call void @List_head_set(ptr noundef %106, ptr noundef %call51)
  %110 = load ptr, ptr %q, align 8, !tbaa !5
  %rest52 = getelementptr inbounds %struct.Intlist_T, ptr %110, i32 0, i32 1
  %111 = load ptr, ptr %rest52, align 8, !tbaa !45
  %112 = load i32, ptr %indel_pos, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %111, i32 noundef %112)
  %113 = load ptr, ptr %s, align 8, !tbaa !5
  %rest53 = getelementptr inbounds %struct.Intlist_T, ptr %113, i32 0, i32 1
  %114 = load ptr, ptr %rest53, align 8, !tbaa !45
  %115 = load i32, ptr %nmismatches_j, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %114, i32 noundef %115)
  %116 = load ptr, ptr %s, align 8, !tbaa !5
  %117 = load i32, ptr %nmismatches_i, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %116, i32 noundef %117)
  br label %if.end54

if.end54:                                         ; preds = %if.else45, %if.then44
  br label %if.end55

if.end55:                                         ; preds = %if.end54, %if.then39
  br label %if.end56

if.end56:                                         ; preds = %if.end55, %if.then32
  br label %if.end57

if.end57:                                         ; preds = %if.end56, %if.else24
  br label %if.end58

if.end58:                                         ; preds = %if.end57, %if.end23
  br label %if.end59

if.end59:                                         ; preds = %if.end58, %if.then
  %118 = load ptr, ptr %trpath, align 8, !tbaa !5
  %cmp60 = icmp eq ptr %118, null
  br i1 %cmp60, label %if.then61, label %if.else62

if.then61:                                        ; preds = %if.end59
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else62:                                        ; preds = %if.end59
  %119 = load ptr, ptr %trpath, align 8, !tbaa !5
  %endpoints63 = getelementptr inbounds %struct.Trpath_T, ptr %119, i32 0, i32 5
  %120 = load ptr, ptr %endpoints63, align 8, !tbaa !19
  %121 = load ptr, ptr %trpath, align 8, !tbaa !5
  %junctions64 = getelementptr inbounds %struct.Trpath_T, ptr %121, i32 0, i32 7
  %122 = load ptr, ptr %junctions64, align 8, !tbaa !36
  %call65 = call zeroext i8 @Trpath_endpoints_acceptable_p(ptr noundef %120, ptr noundef %122)
  %conv = zext i8 %call65 to i32
  %cmp66 = icmp eq i32 %conv, 0
  br i1 %cmp66, label %if.then68, label %if.else69

if.then68:                                        ; preds = %if.else62
  %123 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %124 = load ptr, ptr %uintlistpool.addr, align 8, !tbaa !5
  %125 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %126 = load ptr, ptr %trpathpool.addr, align 8, !tbaa !5
  %127 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  call void @Trpath_free(ptr noundef %trpath, ptr noundef %123, ptr noundef %124, ptr noundef %125, ptr noundef %126, ptr noundef %127)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else69:                                        ; preds = %if.else62
  %128 = load ptr, ptr %trpath, align 8, !tbaa !5
  %nmismatches70 = getelementptr inbounds %struct.Trpath_T, ptr %128, i32 0, i32 6
  %129 = load ptr, ptr %nmismatches70, align 8, !tbaa !35
  %call71 = call i32 @preliminary_score_within_trims(ptr noundef %129)
  %130 = load i32, ptr %nmismatches_allowed.addr, align 4, !tbaa !12
  %cmp72 = icmp sgt i32 %call71, %130
  br i1 %cmp72, label %if.then74, label %if.end75

if.then74:                                        ; preds = %if.else69
  %131 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %132 = load ptr, ptr %uintlistpool.addr, align 8, !tbaa !5
  %133 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %134 = load ptr, ptr %trpathpool.addr, align 8, !tbaa !5
  %135 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  call void @Trpath_free(ptr noundef %trpath, ptr noundef %131, ptr noundef %132, ptr noundef %133, ptr noundef %134, ptr noundef %135)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end75:                                         ; preds = %if.else69
  %136 = load ptr, ptr @chromosome_ef64, align 8, !tbaa !5
  %137 = load i32, ptr %chrnum.addr, align 4, !tbaa !12
  call void @EF64_chrbounds(ptr noundef %chroffset, ptr noundef %chrhigh, ptr noundef %136, i32 noundef %137)
  %138 = load ptr, ptr @transcriptome, align 8, !tbaa !5
  %139 = load i32, ptr %trnum.addr, align 4, !tbaa !12
  %call76 = call i32 @Transcriptome_exons(ptr noundef %exonbounds, ptr noundef %exonstarts, ptr noundef %138, i32 noundef %139)
  store i32 %call76, ptr %nexons, align 4, !tbaa !12
  %140 = load i8, ptr %geneplusp.addr, align 1, !tbaa !14
  %conv77 = zext i8 %140 to i32
  %cmp78 = icmp eq i32 %conv77, 1
  br i1 %cmp78, label %if.then80, label %if.else106

if.then80:                                        ; preds = %if.end75
  %141 = load ptr, ptr %trpath, align 8, !tbaa !5
  %142 = load ptr, ptr %exonbounds, align 8, !tbaa !5
  %143 = load ptr, ptr %exonstarts, align 8, !tbaa !5
  %144 = load i32, ptr %nexons, align 4, !tbaa !12
  %145 = load i32, ptr %chrnum.addr, align 4, !tbaa !12
  %146 = load i32, ptr %chroffset, align 4, !tbaa !12
  %147 = load i32, ptr %chrhigh, align 4, !tbaa !12
  %148 = load i8, ptr %tplusp.addr, align 1, !tbaa !14
  %149 = load i8, ptr %tplusp.addr, align 1, !tbaa !14
  %conv81 = zext i8 %149 to i32
  %cmp82 = icmp eq i32 %conv81, 1
  %150 = zext i1 %cmp82 to i64
  %cond = select i1 %cmp82, i32 2, i32 1
  %151 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %152 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %153 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %154 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %155 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %156 = load i32, ptr %method.addr, align 4, !tbaa !14
  %call84 = call ptr @Trpath_convert_to_path_geneplus(ptr noundef %141, ptr noundef %142, ptr noundef %143, i32 noundef %144, i32 noundef %145, i32 noundef %146, i32 noundef %147, i8 noundef zeroext %148, i32 noundef %cond, i32 noundef %151, ptr noundef %152, ptr noundef %153, ptr noundef %154, ptr noundef %155, i32 noundef %156)
  store ptr %call84, ptr %path, align 8, !tbaa !5
  %cmp85 = icmp eq ptr %call84, null
  br i1 %cmp85, label %if.then87, label %if.else88

if.then87:                                        ; preds = %if.then80
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else88:                                        ; preds = %if.then80
  %157 = load ptr, ptr %found_score.addr, align 8, !tbaa !5
  %158 = load ptr, ptr %path, align 8, !tbaa !5
  %159 = load ptr, ptr %query_compress_fwd.addr, align 8, !tbaa !5
  %160 = load ptr, ptr %query_compress_rev.addr, align 8, !tbaa !5
  %call89 = call i32 @Path_eval_nmatches(ptr noundef %157, ptr noundef %158, ptr noundef %159, ptr noundef %160)
  %cmp90 = icmp eq i32 %call89, 0
  br i1 %cmp90, label %if.then92, label %if.else93

if.then92:                                        ; preds = %if.else88
  %161 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %162 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %163 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %164 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %165 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  call void @Path_free(ptr noundef %path, ptr noundef %161, ptr noundef %162, ptr noundef %163, ptr noundef %164, ptr noundef %165)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else93:                                        ; preds = %if.else88
  %166 = load ptr, ptr %path, align 8, !tbaa !5
  %score_within_trims = getelementptr inbounds %struct.Path_T, ptr %166, i32 0, i32 8
  %167 = load i32, ptr %score_within_trims, align 4, !tbaa !21
  %168 = load i32, ptr %nmismatches_allowed.addr, align 4, !tbaa !12
  %cmp94 = icmp sgt i32 %167, %168
  br i1 %cmp94, label %if.then96, label %if.else97

if.then96:                                        ; preds = %if.else93
  %169 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %170 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %171 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %172 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %173 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  call void @Path_free(ptr noundef %path, ptr noundef %169, ptr noundef %170, ptr noundef %171, ptr noundef %172, ptr noundef %173)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else97:                                        ; preds = %if.else93
  %174 = load ptr, ptr %found_transcriptp.addr, align 8, !tbaa !5
  %175 = load ptr, ptr %path, align 8, !tbaa !5
  %transcripts = getelementptr inbounds %struct.Path_T, ptr %175, i32 0, i32 51
  %176 = load ptr, ptr %path, align 8, !tbaa !5
  %invalid_transcripts98 = getelementptr inbounds %struct.Path_T, ptr %176, i32 0, i32 52
  %177 = load ptr, ptr %path, align 8, !tbaa !5
  %endpoints99 = getelementptr inbounds %struct.Path_T, ptr %177, i32 0, i32 17
  %178 = load ptr, ptr %endpoints99, align 8, !tbaa !25
  %179 = load ptr, ptr %path, align 8, !tbaa !5
  %univdiagonals = getelementptr inbounds %struct.Path_T, ptr %179, i32 0, i32 18
  %180 = load ptr, ptr %univdiagonals, align 8, !tbaa !26
  %181 = load ptr, ptr %path, align 8, !tbaa !5
  %junctions100 = getelementptr inbounds %struct.Path_T, ptr %181, i32 0, i32 21
  %182 = load ptr, ptr %junctions100, align 8, !tbaa !27
  %183 = load ptr, ptr %queryseq.addr, align 8, !tbaa !5
  %184 = load ptr, ptr %path, align 8, !tbaa !5
  %querylength101 = getelementptr inbounds %struct.Path_T, ptr %184, i32 0, i32 13
  %185 = load i32, ptr %querylength101, align 4, !tbaa !28
  %186 = load ptr, ptr %path, align 8, !tbaa !5
  %plusp = getelementptr inbounds %struct.Path_T, ptr %186, i32 0, i32 10
  %187 = load i8, ptr %plusp, align 8, !tbaa !29
  %188 = load ptr, ptr %path, align 8, !tbaa !5
  %chrnum102 = getelementptr inbounds %struct.Path_T, ptr %188, i32 0, i32 14
  %189 = load i32, ptr %chrnum102, align 8, !tbaa !30
  %190 = load ptr, ptr %path, align 8, !tbaa !5
  %chroffset103 = getelementptr inbounds %struct.Path_T, ptr %190, i32 0, i32 15
  %191 = load i32, ptr %chroffset103, align 4, !tbaa !31
  %192 = load ptr, ptr %path, align 8, !tbaa !5
  %chrhigh104 = getelementptr inbounds %struct.Path_T, ptr %192, i32 0, i32 16
  %193 = load i32, ptr %chrhigh104, align 8, !tbaa !32
  %194 = load ptr, ptr %uintlistpool.addr, align 8, !tbaa !5
  %195 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %196 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  %197 = load ptr, ptr %vectorpool.addr, align 8, !tbaa !5
  %call105 = call ptr @Transcript_remap(ptr noundef %174, ptr noundef %transcripts, ptr noundef %invalid_transcripts98, ptr noundef %178, ptr noundef %180, ptr noundef %182, ptr noundef %183, i32 noundef %185, i8 noundef zeroext %187, i32 noundef %189, i32 noundef %191, i32 noundef %193, ptr noundef %194, ptr noundef %195, ptr noundef %196, ptr noundef %197, i32 noundef 0, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 0)
  %198 = load ptr, ptr %path, align 8, !tbaa !5
  store ptr %198, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else106:                                       ; preds = %if.end75
  %199 = load ptr, ptr %trpath, align 8, !tbaa !5
  %200 = load ptr, ptr %exonbounds, align 8, !tbaa !5
  %201 = load ptr, ptr %exonstarts, align 8, !tbaa !5
  %202 = load i32, ptr %nexons, align 4, !tbaa !12
  %203 = load i32, ptr %chrnum.addr, align 4, !tbaa !12
  %204 = load i32, ptr %chroffset, align 4, !tbaa !12
  %205 = load i32, ptr %chrhigh, align 4, !tbaa !12
  %206 = load i8, ptr %tplusp.addr, align 1, !tbaa !14
  %207 = load i8, ptr %tplusp.addr, align 1, !tbaa !14
  %conv107 = zext i8 %207 to i32
  %cmp108 = icmp eq i32 %conv107, 1
  %208 = zext i1 %cmp108 to i64
  %cond110 = select i1 %cmp108, i32 2, i32 1
  %209 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %210 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %211 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %212 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %213 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %214 = load i32, ptr %method.addr, align 4, !tbaa !14
  %call111 = call ptr @Trpath_convert_to_path_geneminus(ptr noundef %199, ptr noundef %200, ptr noundef %201, i32 noundef %202, i32 noundef %203, i32 noundef %204, i32 noundef %205, i8 noundef zeroext %206, i32 noundef %cond110, i32 noundef %209, ptr noundef %210, ptr noundef %211, ptr noundef %212, ptr noundef %213, i32 noundef %214)
  store ptr %call111, ptr %path, align 8, !tbaa !5
  %cmp112 = icmp eq ptr %call111, null
  br i1 %cmp112, label %if.then114, label %if.else115

if.then114:                                       ; preds = %if.else106
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else115:                                       ; preds = %if.else106
  %215 = load ptr, ptr %found_score.addr, align 8, !tbaa !5
  %216 = load ptr, ptr %path, align 8, !tbaa !5
  %217 = load ptr, ptr %query_compress_fwd.addr, align 8, !tbaa !5
  %218 = load ptr, ptr %query_compress_rev.addr, align 8, !tbaa !5
  %call116 = call i32 @Path_eval_nmatches(ptr noundef %215, ptr noundef %216, ptr noundef %217, ptr noundef %218)
  %cmp117 = icmp eq i32 %call116, 0
  br i1 %cmp117, label %if.then119, label %if.else120

if.then119:                                       ; preds = %if.else115
  %219 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %220 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %221 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %222 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %223 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  call void @Path_free(ptr noundef %path, ptr noundef %219, ptr noundef %220, ptr noundef %221, ptr noundef %222, ptr noundef %223)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else120:                                       ; preds = %if.else115
  %224 = load ptr, ptr %path, align 8, !tbaa !5
  %score_within_trims121 = getelementptr inbounds %struct.Path_T, ptr %224, i32 0, i32 8
  %225 = load i32, ptr %score_within_trims121, align 4, !tbaa !21
  %226 = load i32, ptr %nmismatches_allowed.addr, align 4, !tbaa !12
  %cmp122 = icmp sgt i32 %225, %226
  br i1 %cmp122, label %if.then124, label %if.else125

if.then124:                                       ; preds = %if.else120
  %227 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %228 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %229 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %230 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %231 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  call void @Path_free(ptr noundef %path, ptr noundef %227, ptr noundef %228, ptr noundef %229, ptr noundef %230, ptr noundef %231)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else125:                                       ; preds = %if.else120
  %232 = load ptr, ptr %found_transcriptp.addr, align 8, !tbaa !5
  %233 = load ptr, ptr %path, align 8, !tbaa !5
  %transcripts126 = getelementptr inbounds %struct.Path_T, ptr %233, i32 0, i32 51
  %234 = load ptr, ptr %path, align 8, !tbaa !5
  %invalid_transcripts127 = getelementptr inbounds %struct.Path_T, ptr %234, i32 0, i32 52
  %235 = load ptr, ptr %path, align 8, !tbaa !5
  %endpoints128 = getelementptr inbounds %struct.Path_T, ptr %235, i32 0, i32 17
  %236 = load ptr, ptr %endpoints128, align 8, !tbaa !25
  %237 = load ptr, ptr %path, align 8, !tbaa !5
  %univdiagonals129 = getelementptr inbounds %struct.Path_T, ptr %237, i32 0, i32 18
  %238 = load ptr, ptr %univdiagonals129, align 8, !tbaa !26
  %239 = load ptr, ptr %path, align 8, !tbaa !5
  %junctions130 = getelementptr inbounds %struct.Path_T, ptr %239, i32 0, i32 21
  %240 = load ptr, ptr %junctions130, align 8, !tbaa !27
  %241 = load ptr, ptr %queryseq.addr, align 8, !tbaa !5
  %242 = load ptr, ptr %path, align 8, !tbaa !5
  %querylength131 = getelementptr inbounds %struct.Path_T, ptr %242, i32 0, i32 13
  %243 = load i32, ptr %querylength131, align 4, !tbaa !28
  %244 = load ptr, ptr %path, align 8, !tbaa !5
  %plusp132 = getelementptr inbounds %struct.Path_T, ptr %244, i32 0, i32 10
  %245 = load i8, ptr %plusp132, align 8, !tbaa !29
  %246 = load ptr, ptr %path, align 8, !tbaa !5
  %chrnum133 = getelementptr inbounds %struct.Path_T, ptr %246, i32 0, i32 14
  %247 = load i32, ptr %chrnum133, align 8, !tbaa !30
  %248 = load ptr, ptr %path, align 8, !tbaa !5
  %chroffset134 = getelementptr inbounds %struct.Path_T, ptr %248, i32 0, i32 15
  %249 = load i32, ptr %chroffset134, align 4, !tbaa !31
  %250 = load ptr, ptr %path, align 8, !tbaa !5
  %chrhigh135 = getelementptr inbounds %struct.Path_T, ptr %250, i32 0, i32 16
  %251 = load i32, ptr %chrhigh135, align 8, !tbaa !32
  %252 = load ptr, ptr %uintlistpool.addr, align 8, !tbaa !5
  %253 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %254 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  %255 = load ptr, ptr %vectorpool.addr, align 8, !tbaa !5
  %call136 = call ptr @Transcript_remap(ptr noundef %232, ptr noundef %transcripts126, ptr noundef %invalid_transcripts127, ptr noundef %236, ptr noundef %238, ptr noundef %240, ptr noundef %241, i32 noundef %243, i8 noundef zeroext %245, i32 noundef %247, i32 noundef %249, i32 noundef %251, ptr noundef %252, ptr noundef %253, ptr noundef %254, ptr noundef %255, i32 noundef 0, i32 noundef -1, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 0)
  %256 = load ptr, ptr %path, align 8, !tbaa !5
  store ptr %256, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else125, %if.then124, %if.then119, %if.then114, %if.else97, %if.then96, %if.then92, %if.then87, %if.then74, %if.then68, %if.then61
  call void @llvm.lifetime.end.p0(i64 4, ptr %chrhigh) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %chroffset) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %exonstarts) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %exonbounds) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %nexons) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %q) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %deletionpos) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %segmenti_left) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %tend) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %tstart) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %indel_pos) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %supportj) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %supporti) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %nindels) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %ref_nmismatches_j) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %ref_nmismatches_i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %nmismatches_j) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %nmismatches_i) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %trpath) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %invalid_transcripts) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %path) #4
  %257 = load ptr, ptr %retval, align 8
  ret ptr %257
}

declare i32 @Indel_resolve_middle_insertion(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext) #3

declare ptr @Trpath_new_from_ends(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

declare void @List_head_set(ptr noundef, ptr noundef) #3

declare ptr @Junction_new_insertion(i32 noundef, ptr noundef) #3

declare void @Intlist_head_set(ptr noundef, i32 noundef) #3

declare i32 @Indel_resolve_middle_deletion(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext) #3

declare ptr @Junction_new_deletion(i32 noundef, i32 noundef, ptr noundef) #3

declare zeroext i8 @Trpath_endpoints_acceptable_p(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal i32 @preliminary_score_within_trims(ptr noundef %nmismatches) #1 {
entry:
  %nmismatches.addr = alloca ptr, align 8
  %score = alloca i32, align 4
  %p = alloca ptr, align 8
  store ptr %nmismatches, ptr %nmismatches.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %score) #4
  store i32 0, ptr %score, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #4
  %0 = load ptr, ptr %nmismatches.addr, align 8, !tbaa !5
  store ptr %0, ptr %p, align 8, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load ptr, ptr %p, align 8, !tbaa !5
  %cmp = icmp ne ptr %1, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %p, align 8, !tbaa !5
  %call = call i32 @Intlist_head(ptr noundef %2)
  %cmp1 = icmp sge i32 %call, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %3 = load ptr, ptr %p, align 8, !tbaa !5
  %call2 = call i32 @Intlist_head(ptr noundef %3)
  %4 = load i32, ptr %score, align 4, !tbaa !12
  %add = add nsw i32 %4, %call2
  store i32 %add, ptr %score, align 4, !tbaa !12
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load ptr, ptr %p, align 8, !tbaa !5
  %call3 = call ptr @Intlist_next(ptr noundef %5)
  store ptr %call3, ptr %p, align 8, !tbaa !5
  br label %for.cond, !llvm.loop !46

for.end:                                          ; preds = %for.cond
  %6 = load i32, ptr %score, align 4, !tbaa !12
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %score) #4
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Trpath_solve_exact(ptr noundef %found_score, ptr noundef %found_transcriptp, i32 noundef %trdiagonal, i32 noundef %pos5, i32 noundef %pos3, i8 noundef zeroext %tplusp, ptr noundef %queryseq, i32 noundef %querylength, ptr noundef %query_compress_tr, ptr noundef %query_compress_fwd, ptr noundef %query_compress_rev, i32 noundef %trnum, i32 noundef %troffset, i32 noundef %trhigh, i32 noundef %chrnum, i8 noundef zeroext %geneplusp, i32 noundef %nmismatches_allowed, ptr noundef %intlistpool, ptr noundef %uintlistpool, ptr noundef %univcoordlistpool, ptr noundef %listpool, ptr noundef %trpathpool, ptr noundef %pathpool, ptr noundef %vectorpool, ptr noundef %transcriptpool, i32 noundef %method) #1 {
entry:
  %retval = alloca ptr, align 8
  %found_score.addr = alloca ptr, align 8
  %found_transcriptp.addr = alloca ptr, align 8
  %trdiagonal.addr = alloca i32, align 4
  %pos5.addr = alloca i32, align 4
  %pos3.addr = alloca i32, align 4
  %tplusp.addr = alloca i8, align 1
  %queryseq.addr = alloca ptr, align 8
  %querylength.addr = alloca i32, align 4
  %query_compress_tr.addr = alloca ptr, align 8
  %query_compress_fwd.addr = alloca ptr, align 8
  %query_compress_rev.addr = alloca ptr, align 8
  %trnum.addr = alloca i32, align 4
  %troffset.addr = alloca i32, align 4
  %trhigh.addr = alloca i32, align 4
  %chrnum.addr = alloca i32, align 4
  %geneplusp.addr = alloca i8, align 1
  %nmismatches_allowed.addr = alloca i32, align 4
  %intlistpool.addr = alloca ptr, align 8
  %uintlistpool.addr = alloca ptr, align 8
  %univcoordlistpool.addr = alloca ptr, align 8
  %listpool.addr = alloca ptr, align 8
  %trpathpool.addr = alloca ptr, align 8
  %pathpool.addr = alloca ptr, align 8
  %vectorpool.addr = alloca ptr, align 8
  %transcriptpool.addr = alloca ptr, align 8
  %method.addr = alloca i32, align 4
  %path = alloca ptr, align 8
  %invalid_transcripts = alloca ptr, align 8
  %trpath = alloca ptr, align 8
  %nmismatches = alloca i32, align 4
  %ref_nmismatches = alloca i32, align 4
  %nexons = alloca i32, align 4
  %exonbounds = alloca ptr, align 8
  %exonstarts = alloca ptr, align 8
  %chroffset = alloca i32, align 4
  %chrhigh = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %found_score, ptr %found_score.addr, align 8, !tbaa !5
  store ptr %found_transcriptp, ptr %found_transcriptp.addr, align 8, !tbaa !5
  store i32 %trdiagonal, ptr %trdiagonal.addr, align 4, !tbaa !12
  store i32 %pos5, ptr %pos5.addr, align 4, !tbaa !12
  store i32 %pos3, ptr %pos3.addr, align 4, !tbaa !12
  store i8 %tplusp, ptr %tplusp.addr, align 1, !tbaa !14
  store ptr %queryseq, ptr %queryseq.addr, align 8, !tbaa !5
  store i32 %querylength, ptr %querylength.addr, align 4, !tbaa !12
  store ptr %query_compress_tr, ptr %query_compress_tr.addr, align 8, !tbaa !5
  store ptr %query_compress_fwd, ptr %query_compress_fwd.addr, align 8, !tbaa !5
  store ptr %query_compress_rev, ptr %query_compress_rev.addr, align 8, !tbaa !5
  store i32 %trnum, ptr %trnum.addr, align 4, !tbaa !12
  store i32 %troffset, ptr %troffset.addr, align 4, !tbaa !12
  store i32 %trhigh, ptr %trhigh.addr, align 4, !tbaa !12
  store i32 %chrnum, ptr %chrnum.addr, align 4, !tbaa !12
  store i8 %geneplusp, ptr %geneplusp.addr, align 1, !tbaa !14
  store i32 %nmismatches_allowed, ptr %nmismatches_allowed.addr, align 4, !tbaa !12
  store ptr %intlistpool, ptr %intlistpool.addr, align 8, !tbaa !5
  store ptr %uintlistpool, ptr %uintlistpool.addr, align 8, !tbaa !5
  store ptr %univcoordlistpool, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  store ptr %listpool, ptr %listpool.addr, align 8, !tbaa !5
  store ptr %trpathpool, ptr %trpathpool.addr, align 8, !tbaa !5
  store ptr %pathpool, ptr %pathpool.addr, align 8, !tbaa !5
  store ptr %vectorpool, ptr %vectorpool.addr, align 8, !tbaa !5
  store ptr %transcriptpool, ptr %transcriptpool.addr, align 8, !tbaa !5
  store i32 %method, ptr %method.addr, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 8, ptr %path) #4
  store ptr null, ptr %path, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %invalid_transcripts) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %trpath) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %nmismatches) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ref_nmismatches) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %nexons) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %exonbounds) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %exonstarts) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %chroffset) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %chrhigh) #4
  %0 = load ptr, ptr @transcriptomebits, align 8, !tbaa !5
  %1 = load ptr, ptr %query_compress_tr.addr, align 8, !tbaa !5
  %2 = load i32, ptr %trdiagonal.addr, align 4, !tbaa !12
  %3 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %4 = load i32, ptr %pos5.addr, align 4, !tbaa !12
  %5 = load i32, ptr %pos3.addr, align 4, !tbaa !12
  %6 = load i8, ptr %tplusp.addr, align 1, !tbaa !14
  %call = call i32 @Genomebits_count_mismatches_substring(ptr noundef %ref_nmismatches, ptr noundef %0, ptr noundef null, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i8 noundef zeroext %6, i32 noundef 0)
  store i32 %call, ptr %nmismatches, align 4, !tbaa !12
  %7 = load i32, ptr %nmismatches, align 4, !tbaa !12
  %8 = load i32, ptr %nmismatches_allowed.addr, align 4, !tbaa !12
  %cmp = icmp sgt i32 %7, %8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %entry
  %9 = load i32, ptr %trdiagonal.addr, align 4, !tbaa !12
  %10 = load i32, ptr %pos5.addr, align 4, !tbaa !12
  %11 = load i32, ptr %pos3.addr, align 4, !tbaa !12
  %12 = load i32, ptr %nmismatches, align 4, !tbaa !12
  %13 = load i8, ptr %tplusp.addr, align 1, !tbaa !14
  %14 = load i32, ptr %trnum.addr, align 4, !tbaa !12
  %15 = load i32, ptr %troffset.addr, align 4, !tbaa !12
  %16 = load i32, ptr %trhigh.addr, align 4, !tbaa !12
  %17 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %18 = load ptr, ptr %uintlistpool.addr, align 8, !tbaa !5
  %19 = load ptr, ptr %trpathpool.addr, align 8, !tbaa !5
  %call1 = call ptr @Trpath_new_exact(i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i8 noundef zeroext %13, i32 noundef %14, i32 noundef %15, i32 noundef %16, ptr noundef %17, ptr noundef %18, ptr noundef %19)
  store ptr %call1, ptr %trpath, align 8, !tbaa !5
  %20 = load ptr, ptr @chromosome_ef64, align 8, !tbaa !5
  %21 = load i32, ptr %chrnum.addr, align 4, !tbaa !12
  call void @EF64_chrbounds(ptr noundef %chroffset, ptr noundef %chrhigh, ptr noundef %20, i32 noundef %21)
  %22 = load ptr, ptr @transcriptome, align 8, !tbaa !5
  %23 = load i32, ptr %trnum.addr, align 4, !tbaa !12
  %call2 = call i32 @Transcriptome_exons(ptr noundef %exonbounds, ptr noundef %exonstarts, ptr noundef %22, i32 noundef %23)
  store i32 %call2, ptr %nexons, align 4, !tbaa !12
  %24 = load i8, ptr %geneplusp.addr, align 1, !tbaa !14
  %conv = zext i8 %24 to i32
  %cmp3 = icmp eq i32 %conv, 1
  br i1 %cmp3, label %if.then5, label %if.else29

if.then5:                                         ; preds = %if.else
  %25 = load ptr, ptr %trpath, align 8, !tbaa !5
  %26 = load ptr, ptr %exonbounds, align 8, !tbaa !5
  %27 = load ptr, ptr %exonstarts, align 8, !tbaa !5
  %28 = load i32, ptr %nexons, align 4, !tbaa !12
  %29 = load i32, ptr %chrnum.addr, align 4, !tbaa !12
  %30 = load i32, ptr %chroffset, align 4, !tbaa !12
  %31 = load i32, ptr %chrhigh, align 4, !tbaa !12
  %32 = load i8, ptr %tplusp.addr, align 1, !tbaa !14
  %33 = load i8, ptr %tplusp.addr, align 1, !tbaa !14
  %conv6 = zext i8 %33 to i32
  %cmp7 = icmp eq i32 %conv6, 1
  %34 = zext i1 %cmp7 to i64
  %cond = select i1 %cmp7, i32 2, i32 1
  %35 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %36 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %37 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %38 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %39 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %40 = load i32, ptr %method.addr, align 4, !tbaa !14
  %call9 = call ptr @Trpath_convert_to_path_geneplus(ptr noundef %25, ptr noundef %26, ptr noundef %27, i32 noundef %28, i32 noundef %29, i32 noundef %30, i32 noundef %31, i8 noundef zeroext %32, i32 noundef %cond, i32 noundef %35, ptr noundef %36, ptr noundef %37, ptr noundef %38, ptr noundef %39, i32 noundef %40)
  store ptr %call9, ptr %path, align 8, !tbaa !5
  %cmp10 = icmp eq ptr %call9, null
  br i1 %cmp10, label %if.then12, label %if.else13

if.then12:                                        ; preds = %if.then5
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else13:                                        ; preds = %if.then5
  %41 = load ptr, ptr %found_score.addr, align 8, !tbaa !5
  %42 = load ptr, ptr %path, align 8, !tbaa !5
  %43 = load ptr, ptr %query_compress_fwd.addr, align 8, !tbaa !5
  %44 = load ptr, ptr %query_compress_rev.addr, align 8, !tbaa !5
  %call14 = call i32 @Path_eval_nmatches(ptr noundef %41, ptr noundef %42, ptr noundef %43, ptr noundef %44)
  %cmp15 = icmp eq i32 %call14, 0
  br i1 %cmp15, label %if.then17, label %if.else18

if.then17:                                        ; preds = %if.else13
  %45 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %46 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %47 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %48 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %49 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  call void @Path_free(ptr noundef %path, ptr noundef %45, ptr noundef %46, ptr noundef %47, ptr noundef %48, ptr noundef %49)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else18:                                        ; preds = %if.else13
  %50 = load ptr, ptr %path, align 8, !tbaa !5
  %score_within_trims = getelementptr inbounds %struct.Path_T, ptr %50, i32 0, i32 8
  %51 = load i32, ptr %score_within_trims, align 4, !tbaa !21
  %52 = load i32, ptr %nmismatches_allowed.addr, align 4, !tbaa !12
  %cmp19 = icmp sgt i32 %51, %52
  br i1 %cmp19, label %if.then21, label %if.else22

if.then21:                                        ; preds = %if.else18
  %53 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %54 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %55 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %56 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %57 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  call void @Path_free(ptr noundef %path, ptr noundef %53, ptr noundef %54, ptr noundef %55, ptr noundef %56, ptr noundef %57)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else22:                                        ; preds = %if.else18
  %58 = load ptr, ptr %found_transcriptp.addr, align 8, !tbaa !5
  %59 = load ptr, ptr %path, align 8, !tbaa !5
  %transcripts = getelementptr inbounds %struct.Path_T, ptr %59, i32 0, i32 51
  %60 = load ptr, ptr %path, align 8, !tbaa !5
  %invalid_transcripts23 = getelementptr inbounds %struct.Path_T, ptr %60, i32 0, i32 52
  %61 = load ptr, ptr %path, align 8, !tbaa !5
  %endpoints = getelementptr inbounds %struct.Path_T, ptr %61, i32 0, i32 17
  %62 = load ptr, ptr %endpoints, align 8, !tbaa !25
  %63 = load ptr, ptr %path, align 8, !tbaa !5
  %univdiagonals = getelementptr inbounds %struct.Path_T, ptr %63, i32 0, i32 18
  %64 = load ptr, ptr %univdiagonals, align 8, !tbaa !26
  %65 = load ptr, ptr %path, align 8, !tbaa !5
  %junctions = getelementptr inbounds %struct.Path_T, ptr %65, i32 0, i32 21
  %66 = load ptr, ptr %junctions, align 8, !tbaa !27
  %67 = load ptr, ptr %queryseq.addr, align 8, !tbaa !5
  %68 = load ptr, ptr %path, align 8, !tbaa !5
  %querylength24 = getelementptr inbounds %struct.Path_T, ptr %68, i32 0, i32 13
  %69 = load i32, ptr %querylength24, align 4, !tbaa !28
  %70 = load ptr, ptr %path, align 8, !tbaa !5
  %plusp = getelementptr inbounds %struct.Path_T, ptr %70, i32 0, i32 10
  %71 = load i8, ptr %plusp, align 8, !tbaa !29
  %72 = load ptr, ptr %path, align 8, !tbaa !5
  %chrnum25 = getelementptr inbounds %struct.Path_T, ptr %72, i32 0, i32 14
  %73 = load i32, ptr %chrnum25, align 8, !tbaa !30
  %74 = load ptr, ptr %path, align 8, !tbaa !5
  %chroffset26 = getelementptr inbounds %struct.Path_T, ptr %74, i32 0, i32 15
  %75 = load i32, ptr %chroffset26, align 4, !tbaa !31
  %76 = load ptr, ptr %path, align 8, !tbaa !5
  %chrhigh27 = getelementptr inbounds %struct.Path_T, ptr %76, i32 0, i32 16
  %77 = load i32, ptr %chrhigh27, align 8, !tbaa !32
  %78 = load ptr, ptr %uintlistpool.addr, align 8, !tbaa !5
  %79 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %80 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  %81 = load ptr, ptr %vectorpool.addr, align 8, !tbaa !5
  %call28 = call ptr @Transcript_remap(ptr noundef %58, ptr noundef %transcripts, ptr noundef %invalid_transcripts23, ptr noundef %62, ptr noundef %64, ptr noundef %66, ptr noundef %67, i32 noundef %69, i8 noundef zeroext %71, i32 noundef %73, i32 noundef %75, i32 noundef %77, ptr noundef %78, ptr noundef %79, ptr noundef %80, ptr noundef %81, i32 noundef 0, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 0)
  %82 = load ptr, ptr %path, align 8, !tbaa !5
  store ptr %82, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else29:                                        ; preds = %if.else
  %83 = load ptr, ptr %trpath, align 8, !tbaa !5
  %84 = load ptr, ptr %exonbounds, align 8, !tbaa !5
  %85 = load ptr, ptr %exonstarts, align 8, !tbaa !5
  %86 = load i32, ptr %nexons, align 4, !tbaa !12
  %87 = load i32, ptr %chrnum.addr, align 4, !tbaa !12
  %88 = load i32, ptr %chroffset, align 4, !tbaa !12
  %89 = load i32, ptr %chrhigh, align 4, !tbaa !12
  %90 = load i8, ptr %tplusp.addr, align 1, !tbaa !14
  %91 = load i8, ptr %tplusp.addr, align 1, !tbaa !14
  %conv30 = zext i8 %91 to i32
  %cmp31 = icmp eq i32 %conv30, 1
  %92 = zext i1 %cmp31 to i64
  %cond33 = select i1 %cmp31, i32 2, i32 1
  %93 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %94 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %95 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %96 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %97 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %98 = load i32, ptr %method.addr, align 4, !tbaa !14
  %call34 = call ptr @Trpath_convert_to_path_geneminus(ptr noundef %83, ptr noundef %84, ptr noundef %85, i32 noundef %86, i32 noundef %87, i32 noundef %88, i32 noundef %89, i8 noundef zeroext %90, i32 noundef %cond33, i32 noundef %93, ptr noundef %94, ptr noundef %95, ptr noundef %96, ptr noundef %97, i32 noundef %98)
  store ptr %call34, ptr %path, align 8, !tbaa !5
  %cmp35 = icmp eq ptr %call34, null
  br i1 %cmp35, label %if.then37, label %if.else38

if.then37:                                        ; preds = %if.else29
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else38:                                        ; preds = %if.else29
  %99 = load ptr, ptr %found_score.addr, align 8, !tbaa !5
  %100 = load ptr, ptr %path, align 8, !tbaa !5
  %101 = load ptr, ptr %query_compress_fwd.addr, align 8, !tbaa !5
  %102 = load ptr, ptr %query_compress_rev.addr, align 8, !tbaa !5
  %call39 = call i32 @Path_eval_nmatches(ptr noundef %99, ptr noundef %100, ptr noundef %101, ptr noundef %102)
  %cmp40 = icmp eq i32 %call39, 0
  br i1 %cmp40, label %if.then42, label %if.else43

if.then42:                                        ; preds = %if.else38
  %103 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %104 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %105 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %106 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %107 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  call void @Path_free(ptr noundef %path, ptr noundef %103, ptr noundef %104, ptr noundef %105, ptr noundef %106, ptr noundef %107)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else43:                                        ; preds = %if.else38
  %108 = load ptr, ptr %path, align 8, !tbaa !5
  %score_within_trims44 = getelementptr inbounds %struct.Path_T, ptr %108, i32 0, i32 8
  %109 = load i32, ptr %score_within_trims44, align 4, !tbaa !21
  %110 = load i32, ptr %nmismatches_allowed.addr, align 4, !tbaa !12
  %cmp45 = icmp sgt i32 %109, %110
  br i1 %cmp45, label %if.then47, label %if.else48

if.then47:                                        ; preds = %if.else43
  %111 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %112 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %113 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %114 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %115 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  call void @Path_free(ptr noundef %path, ptr noundef %111, ptr noundef %112, ptr noundef %113, ptr noundef %114, ptr noundef %115)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else48:                                        ; preds = %if.else43
  %116 = load ptr, ptr %found_transcriptp.addr, align 8, !tbaa !5
  %117 = load ptr, ptr %path, align 8, !tbaa !5
  %transcripts49 = getelementptr inbounds %struct.Path_T, ptr %117, i32 0, i32 51
  %118 = load ptr, ptr %path, align 8, !tbaa !5
  %invalid_transcripts50 = getelementptr inbounds %struct.Path_T, ptr %118, i32 0, i32 52
  %119 = load ptr, ptr %path, align 8, !tbaa !5
  %endpoints51 = getelementptr inbounds %struct.Path_T, ptr %119, i32 0, i32 17
  %120 = load ptr, ptr %endpoints51, align 8, !tbaa !25
  %121 = load ptr, ptr %path, align 8, !tbaa !5
  %univdiagonals52 = getelementptr inbounds %struct.Path_T, ptr %121, i32 0, i32 18
  %122 = load ptr, ptr %univdiagonals52, align 8, !tbaa !26
  %123 = load ptr, ptr %path, align 8, !tbaa !5
  %junctions53 = getelementptr inbounds %struct.Path_T, ptr %123, i32 0, i32 21
  %124 = load ptr, ptr %junctions53, align 8, !tbaa !27
  %125 = load ptr, ptr %queryseq.addr, align 8, !tbaa !5
  %126 = load ptr, ptr %path, align 8, !tbaa !5
  %querylength54 = getelementptr inbounds %struct.Path_T, ptr %126, i32 0, i32 13
  %127 = load i32, ptr %querylength54, align 4, !tbaa !28
  %128 = load ptr, ptr %path, align 8, !tbaa !5
  %plusp55 = getelementptr inbounds %struct.Path_T, ptr %128, i32 0, i32 10
  %129 = load i8, ptr %plusp55, align 8, !tbaa !29
  %130 = load ptr, ptr %path, align 8, !tbaa !5
  %chrnum56 = getelementptr inbounds %struct.Path_T, ptr %130, i32 0, i32 14
  %131 = load i32, ptr %chrnum56, align 8, !tbaa !30
  %132 = load ptr, ptr %path, align 8, !tbaa !5
  %chroffset57 = getelementptr inbounds %struct.Path_T, ptr %132, i32 0, i32 15
  %133 = load i32, ptr %chroffset57, align 4, !tbaa !31
  %134 = load ptr, ptr %path, align 8, !tbaa !5
  %chrhigh58 = getelementptr inbounds %struct.Path_T, ptr %134, i32 0, i32 16
  %135 = load i32, ptr %chrhigh58, align 8, !tbaa !32
  %136 = load ptr, ptr %uintlistpool.addr, align 8, !tbaa !5
  %137 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %138 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  %139 = load ptr, ptr %vectorpool.addr, align 8, !tbaa !5
  %call59 = call ptr @Transcript_remap(ptr noundef %116, ptr noundef %transcripts49, ptr noundef %invalid_transcripts50, ptr noundef %120, ptr noundef %122, ptr noundef %124, ptr noundef %125, i32 noundef %127, i8 noundef zeroext %129, i32 noundef %131, i32 noundef %133, i32 noundef %135, ptr noundef %136, ptr noundef %137, ptr noundef %138, ptr noundef %139, i32 noundef 0, i32 noundef -1, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 0)
  %140 = load ptr, ptr %path, align 8, !tbaa !5
  store ptr %140, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else48, %if.then47, %if.then42, %if.then37, %if.else22, %if.then21, %if.then17, %if.then12, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %chrhigh) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %chroffset) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %exonstarts) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %exonbounds) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %nexons) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %ref_nmismatches) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %nmismatches) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %trpath) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %invalid_transcripts) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %path) #4
  %141 = load ptr, ptr %retval, align 8
  ret ptr %141
}

declare i32 @Genomebits_count_mismatches_substring(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef) #3

declare ptr @Trpath_new_exact(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define dso_local void @Trpath_solve_setup(ptr noundef %transcriptomebits_in, ptr noundef %transcriptome_in, ptr noundef %chromosome_ef64_in) #1 {
entry:
  %transcriptomebits_in.addr = alloca ptr, align 8
  %transcriptome_in.addr = alloca ptr, align 8
  %chromosome_ef64_in.addr = alloca ptr, align 8
  store ptr %transcriptomebits_in, ptr %transcriptomebits_in.addr, align 8, !tbaa !5
  store ptr %transcriptome_in, ptr %transcriptome_in.addr, align 8, !tbaa !5
  store ptr %chromosome_ef64_in, ptr %chromosome_ef64_in.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %transcriptomebits_in.addr, align 8, !tbaa !5
  store ptr %0, ptr @transcriptomebits, align 8, !tbaa !5
  %1 = load ptr, ptr %transcriptome_in.addr, align 8, !tbaa !5
  store ptr %1, ptr @transcriptome, align 8, !tbaa !5
  %2 = load ptr, ptr %chromosome_ef64_in.addr, align 8, !tbaa !5
  store ptr %2, ptr @chromosome_ef64, align 8, !tbaa !5
  ret void
}

declare ptr @Mem_alloc(i64 noundef, ptr noundef, i32 noundef) #3

declare void @Mem_free(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @Uintlist_head(ptr noundef %list) #0 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !5
  %first = getelementptr inbounds %struct.Uintlist_T, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %first, align 8, !tbaa !47
  ret i32 %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @Intlist_next(ptr noundef %list) #0 {
entry:
  %retval = alloca ptr, align 8
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !5
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %list.addr, align 8, !tbaa !5
  %rest = getelementptr inbounds %struct.Intlist_T, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %rest, align 8, !tbaa !45
  store ptr %2, ptr %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then
  %3 = load ptr, ptr %retval, align 8
  ret ptr %3
}

declare ptr @Intlistpool_push(ptr noundef, ptr noundef, i32 noundef) #3

declare ptr @Listpool_push(ptr noundef, ptr noundef, ptr noundef) #3

declare ptr @Uintlistpool_push(ptr noundef, ptr noundef, i32 noundef) #3

declare i32 @Junction_ninserts(ptr noundef) #3

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @List_head(ptr noundef %list) #0 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !5
  %first = getelementptr inbounds %struct.List_T, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %first, align 8, !tbaa !9
  ret ptr %1
}

declare i32 @Intlist_penultimate_value(ptr noundef) #3

declare ptr @Junction_copy(ptr noundef, ptr noundef) #3

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @Uintlist_next(ptr noundef %list) #0 {
entry:
  %retval = alloca ptr, align 8
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !5
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %list.addr, align 8, !tbaa !5
  %rest = getelementptr inbounds %struct.Uintlist_T, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %rest, align 8, !tbaa !49
  store ptr %2, ptr %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then
  %3 = load ptr, ptr %retval, align 8
  ret ptr %3
}

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @List_next(ptr noundef %list) #0 {
entry:
  %retval = alloca ptr, align 8
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !5
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %list.addr, align 8, !tbaa !5
  %rest = getelementptr inbounds %struct.List_T, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %rest, align 8, !tbaa !11
  store ptr %2, ptr %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then
  %3 = load ptr, ptr %retval, align 8
  ret ptr %3
}

declare ptr @Trpath_reverse(ptr noundef, i8 noundef zeroext) #3

declare void @Junction_list_gc(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @Intlist_reverse(ptr noundef %list) #0 {
entry:
  %list.addr = alloca ptr, align 8
  %head = alloca ptr, align 8
  %next = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %head) #4
  store ptr null, ptr %head, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !5
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %list.addr, align 8, !tbaa !5
  %rest = getelementptr inbounds %struct.Intlist_T, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %rest, align 8, !tbaa !45
  store ptr %2, ptr %next, align 8, !tbaa !5
  %3 = load ptr, ptr %head, align 8, !tbaa !5
  %4 = load ptr, ptr %list.addr, align 8, !tbaa !5
  %rest1 = getelementptr inbounds %struct.Intlist_T, ptr %4, i32 0, i32 1
  store ptr %3, ptr %rest1, align 8, !tbaa !45
  %5 = load ptr, ptr %list.addr, align 8, !tbaa !5
  store ptr %5, ptr %head, align 8, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load ptr, ptr %next, align 8, !tbaa !5
  store ptr %6, ptr %list.addr, align 8, !tbaa !5
  br label %for.cond, !llvm.loop !50

for.end:                                          ; preds = %for.cond
  %7 = load ptr, ptr %head, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %head) #4
  ret ptr %7
}

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @List_reverse(ptr noundef %list) #0 {
entry:
  %list.addr = alloca ptr, align 8
  %head = alloca ptr, align 8
  %next = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %head) #4
  store ptr null, ptr %head, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !5
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %list.addr, align 8, !tbaa !5
  %rest = getelementptr inbounds %struct.List_T, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %rest, align 8, !tbaa !11
  store ptr %2, ptr %next, align 8, !tbaa !5
  %3 = load ptr, ptr %head, align 8, !tbaa !5
  %4 = load ptr, ptr %list.addr, align 8, !tbaa !5
  %rest1 = getelementptr inbounds %struct.List_T, ptr %4, i32 0, i32 1
  store ptr %3, ptr %rest1, align 8, !tbaa !11
  %5 = load ptr, ptr %list.addr, align 8, !tbaa !5
  store ptr %5, ptr %head, align 8, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load ptr, ptr %next, align 8, !tbaa !5
  store ptr %6, ptr %list.addr, align 8, !tbaa !5
  br label %for.cond, !llvm.loop !51

for.end:                                          ; preds = %for.cond
  %7 = load ptr, ptr %head, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %head) #4
  ret ptr %7
}

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @Uintlist_reverse(ptr noundef %list) #0 {
entry:
  %list.addr = alloca ptr, align 8
  %head = alloca ptr, align 8
  %next = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %head) #4
  store ptr null, ptr %head, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !5
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %list.addr, align 8, !tbaa !5
  %rest = getelementptr inbounds %struct.Uintlist_T, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %rest, align 8, !tbaa !49
  store ptr %2, ptr %next, align 8, !tbaa !5
  %3 = load ptr, ptr %head, align 8, !tbaa !5
  %4 = load ptr, ptr %list.addr, align 8, !tbaa !5
  %rest1 = getelementptr inbounds %struct.Uintlist_T, ptr %4, i32 0, i32 1
  store ptr %3, ptr %rest1, align 8, !tbaa !49
  %5 = load ptr, ptr %list.addr, align 8, !tbaa !5
  store ptr %5, ptr %head, align 8, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load ptr, ptr %next, align 8, !tbaa !5
  store ptr %6, ptr %list.addr, align 8, !tbaa !5
  br label %for.cond, !llvm.loop !52

for.end:                                          ; preds = %for.cond
  %7 = load ptr, ptr %head, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %head) #4
  ret ptr %7
}

declare ptr @Trpath_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #3

attributes #0 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !6, i64 0}
!10 = !{!"List_T", !6, i64 0, !6, i64 8}
!11 = !{!10, !6, i64 8}
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !7, i64 0}
!14 = !{!7, !7, i64 0}
!15 = !{!16, !13, i64 0}
!16 = !{!"Trdiag_T", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12}
!17 = !{!16, !13, i64 4}
!18 = !{!16, !13, i64 8}
!19 = !{!20, !6, i64 24}
!20 = !{!"Trpath_T", !7, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40}
!21 = !{!22, !13, i64 44}
!22 = !{!"Path_T", !23, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !24, i64 24, !24, i64 32, !13, i64 40, !13, i64 44, !6, i64 48, !7, i64 56, !13, i64 60, !13, i64 64, !13, i64 68, !13, i64 72, !13, i64 76, !13, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !7, i64 128, !7, i64 129, !7, i64 132, !7, i64 136, !24, i64 144, !24, i64 152, !6, i64 160, !6, i64 168, !7, i64 176, !6, i64 184, !6, i64 192, !6, i64 200, !6, i64 208, !6, i64 216, !6, i64 224, !6, i64 232, !13, i64 240, !13, i64 244, !13, i64 248, !7, i64 252, !6, i64 256, !6, i64 264, !6, i64 272, !6, i64 280, !6, i64 288, !6, i64 296, !7, i64 304, !7, i64 308, !24, i64 312, !6, i64 320, !6, i64 328, !6, i64 336, !6, i64 344, !7, i64 352}
!23 = !{!"float", !7, i64 0}
!24 = !{!"double", !7, i64 0}
!25 = !{!22, !6, i64 88}
!26 = !{!22, !6, i64 96}
!27 = !{!22, !6, i64 120}
!28 = !{!22, !13, i64 68}
!29 = !{!22, !7, i64 56}
!30 = !{!22, !13, i64 72}
!31 = !{!22, !13, i64 76}
!32 = !{!22, !13, i64 80}
!33 = !{!20, !6, i64 16}
!34 = !{!20, !7, i64 0}
!35 = !{!20, !6, i64 32}
!36 = !{!20, !6, i64 40}
!37 = distinct !{!37, !38}
!38 = !{!"llvm.loop.mustprogress"}
!39 = distinct !{!39, !38}
!40 = !{!20, !13, i64 4}
!41 = !{!20, !13, i64 8}
!42 = !{!20, !13, i64 12}
!43 = !{!44, !13, i64 0}
!44 = !{!"Intlist_T", !13, i64 0, !6, i64 8}
!45 = !{!44, !6, i64 8}
!46 = distinct !{!46, !38}
!47 = !{!48, !13, i64 0}
!48 = !{!"Uintlist_T", !13, i64 0, !6, i64 8}
!49 = !{!48, !6, i64 8}
!50 = distinct !{!50, !38}
!51 = distinct !{!51, !38}
!52 = distinct !{!52, !38}

; ModuleID = 'samples/913.bc'
source_filename = ".././../src/path-solve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.List_T = type { ptr, ptr }
%struct.Univdiag_T = type { i32, i32, i32, i32 }
%struct.Path_T = type { float, i32, i32, i32, i32, double, double, i32, i32, ptr, i8, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i8, i8, i32, i32, double, double, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, double, ptr, ptr, ptr, ptr, i32 }
%struct.Spliceends_T = type { i32, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Intlist_T = type { i32, ptr }
%struct.Uintlist_T = type { i32, ptr }

@splicingp = internal global i8 0, align 1
@transcriptome = internal global ptr null, align 8
@genomebits = internal global ptr null, align 8
@genomebits_alt = internal global ptr null, align 8
@circularp = internal global ptr null, align 8
@genomelength = internal global i32 0, align 4
@localdb = internal global ptr null, align 8
@min_intronlength = internal global i32 0, align 4
@novelsplicingp = internal global i8 0, align 1
@.str = private unnamed_addr constant [19 x i8] c".././../src/list.h\00", align 1
@stderr = external global ptr, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"Unexpected sensedir %d\0A\00", align 1

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @List_push_keep(ptr noundef %list, ptr noundef %x) #0 {
entry:
  %list.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %new = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8, !tbaa !5
  store ptr %x, ptr %x.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %new) #5
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
  call void @llvm.lifetime.end.p0(i64 8, ptr %new) #5
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %new) #5
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
  call void @llvm.lifetime.end.p0(i64 8, ptr %new) #5
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %head) #5
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
  call void @llvm.lifetime.end.p0(i64 8, ptr %head) #5
  %9 = load ptr, ptr %retval, align 8
  ret ptr %9
}

; Function Attrs: nounwind uwtable
define dso_local void @Path_solve_from_diagonals(ptr noundef %found_score, ptr noundef %found_transcriptp, ptr noundef %unsolved_sense_paths, ptr noundef %unsolved_antisense_paths, ptr noundef %unextended_sense_paths, ptr noundef %unextended_antisense_paths, ptr noundef %sense_paths, ptr noundef %antisense_paths, i32 noundef %middle_diagonal_univdiagonal, i32 noundef %middle_diagonal_qstart, i32 noundef %middle_diagonal_qend, i32 noundef %middle_nmismatches, ptr noundef %qend_univdiags, ptr noundef %qstart_univdiags, ptr noundef %queryseq, ptr noundef %queryptr, i32 noundef %querylength, ptr noundef %mismatch_positions_alloc, ptr noundef %novel_diagonals_alloc, ptr noundef %localdb_alloc, i32 noundef %streamspace_max_alloc, ptr noundef %streamspace_alloc, ptr noundef %streamptr_alloc, ptr noundef %streamsize_alloc, ptr noundef %mergeinfo, ptr noundef %indelinfo, ptr noundef %spliceinfo, ptr noundef %knownsplicing, ptr noundef %knownindels, ptr noundef %query_compress, ptr noundef %query_compress_fwd, ptr noundef %query_compress_rev, i32 noundef %chrnum, i32 noundef %chroffset, i32 noundef %chrhigh, i8 noundef zeroext %plusp, i32 noundef %genestrand, i32 noundef %max_insertionlen, i32 noundef %max_deletionlen, i32 noundef %nmismatches_allowed, i32 noundef %overall_end_distance, i8 noundef zeroext %paired_end_p, i8 noundef zeroext %first_read_p, ptr noundef %intlistpool, ptr noundef %uintlistpool, ptr noundef %univcoordlistpool, ptr noundef %listpool, ptr noundef %pathpool, ptr noundef %transcriptpool, ptr noundef %vectorpool, ptr noundef %hitlistpool, ptr noundef %spliceendsgen, i32 noundef %method, i32 noundef %pass) #1 {
entry:
  %found_score.addr = alloca ptr, align 8
  %found_transcriptp.addr = alloca ptr, align 8
  %unsolved_sense_paths.addr = alloca ptr, align 8
  %unsolved_antisense_paths.addr = alloca ptr, align 8
  %unextended_sense_paths.addr = alloca ptr, align 8
  %unextended_antisense_paths.addr = alloca ptr, align 8
  %sense_paths.addr = alloca ptr, align 8
  %antisense_paths.addr = alloca ptr, align 8
  %middle_diagonal_univdiagonal.addr = alloca i32, align 4
  %middle_diagonal_qstart.addr = alloca i32, align 4
  %middle_diagonal_qend.addr = alloca i32, align 4
  %middle_nmismatches.addr = alloca i32, align 4
  %qend_univdiags.addr = alloca ptr, align 8
  %qstart_univdiags.addr = alloca ptr, align 8
  %queryseq.addr = alloca ptr, align 8
  %queryptr.addr = alloca ptr, align 8
  %querylength.addr = alloca i32, align 4
  %mismatch_positions_alloc.addr = alloca ptr, align 8
  %novel_diagonals_alloc.addr = alloca ptr, align 8
  %localdb_alloc.addr = alloca ptr, align 8
  %streamspace_max_alloc.addr = alloca i32, align 4
  %streamspace_alloc.addr = alloca ptr, align 8
  %streamptr_alloc.addr = alloca ptr, align 8
  %streamsize_alloc.addr = alloca ptr, align 8
  %mergeinfo.addr = alloca ptr, align 8
  %indelinfo.addr = alloca ptr, align 8
  %spliceinfo.addr = alloca ptr, align 8
  %knownsplicing.addr = alloca ptr, align 8
  %knownindels.addr = alloca ptr, align 8
  %query_compress.addr = alloca ptr, align 8
  %query_compress_fwd.addr = alloca ptr, align 8
  %query_compress_rev.addr = alloca ptr, align 8
  %chrnum.addr = alloca i32, align 4
  %chroffset.addr = alloca i32, align 4
  %chrhigh.addr = alloca i32, align 4
  %plusp.addr = alloca i8, align 1
  %genestrand.addr = alloca i32, align 4
  %max_insertionlen.addr = alloca i32, align 4
  %max_deletionlen.addr = alloca i32, align 4
  %nmismatches_allowed.addr = alloca i32, align 4
  %overall_end_distance.addr = alloca i32, align 4
  %paired_end_p.addr = alloca i8, align 1
  %first_read_p.addr = alloca i8, align 1
  %intlistpool.addr = alloca ptr, align 8
  %uintlistpool.addr = alloca ptr, align 8
  %univcoordlistpool.addr = alloca ptr, align 8
  %listpool.addr = alloca ptr, align 8
  %pathpool.addr = alloca ptr, align 8
  %transcriptpool.addr = alloca ptr, align 8
  %vectorpool.addr = alloca ptr, align 8
  %hitlistpool.addr = alloca ptr, align 8
  %spliceendsgen.addr = alloca ptr, align 8
  %method.addr = alloca i32, align 4
  %pass.addr = alloca i32, align 4
  %path = alloca ptr, align 8
  %newpath = alloca ptr, align 8
  %qstart_sense_paths = alloca ptr, align 8
  %qstart_antisense_paths = alloca ptr, align 8
  %qend_sense_paths = alloca ptr, align 8
  %qend_antisense_paths = alloca ptr, align 8
  %combined_sense_paths = alloca ptr, align 8
  %combined_antisense_paths = alloca ptr, align 8
  %p = alloca ptr, align 8
  %univdiag = alloca ptr, align 8
  %qstart_innerp = alloca i8, align 1
  %qend_innerp = alloca i8, align 1
  %sense_completep = alloca i8, align 1
  %antisense_completep = alloca i8, align 1
  store ptr %found_score, ptr %found_score.addr, align 8, !tbaa !5
  store ptr %found_transcriptp, ptr %found_transcriptp.addr, align 8, !tbaa !5
  store ptr %unsolved_sense_paths, ptr %unsolved_sense_paths.addr, align 8, !tbaa !5
  store ptr %unsolved_antisense_paths, ptr %unsolved_antisense_paths.addr, align 8, !tbaa !5
  store ptr %unextended_sense_paths, ptr %unextended_sense_paths.addr, align 8, !tbaa !5
  store ptr %unextended_antisense_paths, ptr %unextended_antisense_paths.addr, align 8, !tbaa !5
  store ptr %sense_paths, ptr %sense_paths.addr, align 8, !tbaa !5
  store ptr %antisense_paths, ptr %antisense_paths.addr, align 8, !tbaa !5
  store i32 %middle_diagonal_univdiagonal, ptr %middle_diagonal_univdiagonal.addr, align 4, !tbaa !12
  store i32 %middle_diagonal_qstart, ptr %middle_diagonal_qstart.addr, align 4, !tbaa !12
  store i32 %middle_diagonal_qend, ptr %middle_diagonal_qend.addr, align 4, !tbaa !12
  store i32 %middle_nmismatches, ptr %middle_nmismatches.addr, align 4, !tbaa !12
  store ptr %qend_univdiags, ptr %qend_univdiags.addr, align 8, !tbaa !5
  store ptr %qstart_univdiags, ptr %qstart_univdiags.addr, align 8, !tbaa !5
  store ptr %queryseq, ptr %queryseq.addr, align 8, !tbaa !5
  store ptr %queryptr, ptr %queryptr.addr, align 8, !tbaa !5
  store i32 %querylength, ptr %querylength.addr, align 4, !tbaa !12
  store ptr %mismatch_positions_alloc, ptr %mismatch_positions_alloc.addr, align 8, !tbaa !5
  store ptr %novel_diagonals_alloc, ptr %novel_diagonals_alloc.addr, align 8, !tbaa !5
  store ptr %localdb_alloc, ptr %localdb_alloc.addr, align 8, !tbaa !5
  store i32 %streamspace_max_alloc, ptr %streamspace_max_alloc.addr, align 4, !tbaa !12
  store ptr %streamspace_alloc, ptr %streamspace_alloc.addr, align 8, !tbaa !5
  store ptr %streamptr_alloc, ptr %streamptr_alloc.addr, align 8, !tbaa !5
  store ptr %streamsize_alloc, ptr %streamsize_alloc.addr, align 8, !tbaa !5
  store ptr %mergeinfo, ptr %mergeinfo.addr, align 8, !tbaa !5
  store ptr %indelinfo, ptr %indelinfo.addr, align 8, !tbaa !5
  store ptr %spliceinfo, ptr %spliceinfo.addr, align 8, !tbaa !5
  store ptr %knownsplicing, ptr %knownsplicing.addr, align 8, !tbaa !5
  store ptr %knownindels, ptr %knownindels.addr, align 8, !tbaa !5
  store ptr %query_compress, ptr %query_compress.addr, align 8, !tbaa !5
  store ptr %query_compress_fwd, ptr %query_compress_fwd.addr, align 8, !tbaa !5
  store ptr %query_compress_rev, ptr %query_compress_rev.addr, align 8, !tbaa !5
  store i32 %chrnum, ptr %chrnum.addr, align 4, !tbaa !12
  store i32 %chroffset, ptr %chroffset.addr, align 4, !tbaa !12
  store i32 %chrhigh, ptr %chrhigh.addr, align 4, !tbaa !12
  store i8 %plusp, ptr %plusp.addr, align 1, !tbaa !14
  store i32 %genestrand, ptr %genestrand.addr, align 4, !tbaa !12
  store i32 %max_insertionlen, ptr %max_insertionlen.addr, align 4, !tbaa !12
  store i32 %max_deletionlen, ptr %max_deletionlen.addr, align 4, !tbaa !12
  store i32 %nmismatches_allowed, ptr %nmismatches_allowed.addr, align 4, !tbaa !12
  store i32 %overall_end_distance, ptr %overall_end_distance.addr, align 4, !tbaa !12
  store i8 %paired_end_p, ptr %paired_end_p.addr, align 1, !tbaa !14
  store i8 %first_read_p, ptr %first_read_p.addr, align 1, !tbaa !14
  store ptr %intlistpool, ptr %intlistpool.addr, align 8, !tbaa !5
  store ptr %uintlistpool, ptr %uintlistpool.addr, align 8, !tbaa !5
  store ptr %univcoordlistpool, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  store ptr %listpool, ptr %listpool.addr, align 8, !tbaa !5
  store ptr %pathpool, ptr %pathpool.addr, align 8, !tbaa !5
  store ptr %transcriptpool, ptr %transcriptpool.addr, align 8, !tbaa !5
  store ptr %vectorpool, ptr %vectorpool.addr, align 8, !tbaa !5
  store ptr %hitlistpool, ptr %hitlistpool.addr, align 8, !tbaa !5
  store ptr %spliceendsgen, ptr %spliceendsgen.addr, align 8, !tbaa !5
  store i32 %method, ptr %method.addr, align 4, !tbaa !14
  store i32 %pass, ptr %pass.addr, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 8, ptr %path) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %newpath) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %qstart_sense_paths) #5
  store ptr null, ptr %qstart_sense_paths, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %qstart_antisense_paths) #5
  store ptr null, ptr %qstart_antisense_paths, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %qend_sense_paths) #5
  store ptr null, ptr %qend_sense_paths, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %qend_antisense_paths) #5
  store ptr null, ptr %qend_antisense_paths, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %combined_sense_paths) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %combined_antisense_paths) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %univdiag) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr %qstart_innerp) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr %qend_innerp) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr %sense_completep) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr %antisense_completep) #5
  %0 = load i8, ptr %paired_end_p.addr, align 1, !tbaa !14
  %conv = zext i8 %0 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i8 0, ptr %qend_innerp, align 1, !tbaa !14
  store i8 0, ptr %qstart_innerp, align 1, !tbaa !14
  br label %if.end8

if.else:                                          ; preds = %entry
  %1 = load i8, ptr %first_read_p.addr, align 1, !tbaa !14
  %conv2 = zext i8 %1 to i32
  %2 = load i8, ptr %plusp.addr, align 1, !tbaa !14
  %conv3 = zext i8 %2 to i32
  %cmp4 = icmp eq i32 %conv2, %conv3
  br i1 %cmp4, label %if.then6, label %if.else7

if.then6:                                         ; preds = %if.else
  store i8 0, ptr %qstart_innerp, align 1, !tbaa !14
  store i8 1, ptr %qend_innerp, align 1, !tbaa !14
  br label %if.end

if.else7:                                         ; preds = %if.else
  store i8 1, ptr %qstart_innerp, align 1, !tbaa !14
  store i8 0, ptr %qend_innerp, align 1, !tbaa !14
  br label %if.end

if.end:                                           ; preds = %if.else7, %if.then6
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  %3 = load i32, ptr %middle_diagonal_univdiagonal.addr, align 4, !tbaa !12
  %4 = load i32, ptr %middle_diagonal_qstart.addr, align 4, !tbaa !12
  %5 = load i32, ptr %middle_diagonal_qend.addr, align 4, !tbaa !12
  %6 = load i32, ptr %middle_nmismatches.addr, align 4, !tbaa !12
  %7 = load i8, ptr %plusp.addr, align 1, !tbaa !14
  %8 = load i32, ptr %genestrand.addr, align 4, !tbaa !12
  %9 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %10 = load i32, ptr %method.addr, align 4, !tbaa !14
  %11 = load i32, ptr %chrnum.addr, align 4, !tbaa !12
  %12 = load i32, ptr %chroffset.addr, align 4, !tbaa !12
  %13 = load i32, ptr %chrhigh.addr, align 4, !tbaa !12
  %14 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %15 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %16 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %call = call ptr @Path_new_for_qstart_extension(i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i8 noundef zeroext %7, i32 noundef %8, i32 noundef 2, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %13, i8 noundef zeroext 0, i32 noundef 0, double noundef 0.000000e+00, ptr noundef %14, ptr noundef %15, ptr noundef %16)
  store ptr %call, ptr %path, align 8, !tbaa !5
  %17 = load ptr, ptr %qstart_univdiags.addr, align 8, !tbaa !5
  store ptr %17, ptr %p, align 8, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end8
  %18 = load ptr, ptr %p, align 8, !tbaa !5
  %cmp9 = icmp ne ptr %18, null
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load ptr, ptr %p, align 8, !tbaa !5
  %call11 = call ptr @List_head(ptr noundef %19)
  store ptr %call11, ptr %univdiag, align 8, !tbaa !5
  %20 = load ptr, ptr %univdiag, align 8, !tbaa !5
  %univdiagonal = getelementptr inbounds %struct.Univdiag_T, ptr %20, i32 0, i32 0
  %21 = load i32, ptr %univdiagonal, align 4, !tbaa !15
  %22 = load i32, ptr %chroffset.addr, align 4, !tbaa !12
  %23 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %add = add i32 %22, %23
  %cmp12 = icmp ult i32 %21, %add
  br i1 %cmp12, label %if.then14, label %if.else15

if.then14:                                        ; preds = %for.body
  br label %if.end22

if.else15:                                        ; preds = %for.body
  %24 = load ptr, ptr %path, align 8, !tbaa !5
  %25 = load ptr, ptr %univdiag, align 8, !tbaa !5
  %univdiagonal16 = getelementptr inbounds %struct.Univdiag_T, ptr %25, i32 0, i32 0
  %26 = load i32, ptr %univdiagonal16, align 4, !tbaa !15
  %27 = load ptr, ptr %univdiag, align 8, !tbaa !5
  %qstart = getelementptr inbounds %struct.Univdiag_T, ptr %27, i32 0, i32 1
  %28 = load i32, ptr %qstart, align 4, !tbaa !17
  %29 = load i32, ptr %chrnum.addr, align 4, !tbaa !12
  %30 = load i32, ptr %chroffset.addr, align 4, !tbaa !12
  %31 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %32 = load ptr, ptr %indelinfo.addr, align 8, !tbaa !5
  %33 = load ptr, ptr %spliceinfo.addr, align 8, !tbaa !5
  %34 = load ptr, ptr %knownsplicing.addr, align 8, !tbaa !5
  %35 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %36 = load i8, ptr %plusp.addr, align 1, !tbaa !14
  %37 = load i32, ptr %genestrand.addr, align 4, !tbaa !12
  %38 = load i32, ptr %max_insertionlen.addr, align 4, !tbaa !12
  %39 = load i32, ptr %max_deletionlen.addr, align 4, !tbaa !12
  %40 = load i32, ptr %nmismatches_allowed.addr, align 4, !tbaa !12
  %41 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %42 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %43 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %44 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %45 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  %46 = load ptr, ptr %vectorpool.addr, align 8, !tbaa !5
  %call17 = call ptr @attach_unknown_qstart(ptr noundef %24, i32 noundef %26, i32 noundef %28, i32 noundef %29, i32 noundef %30, i32 noundef %31, ptr noundef %32, ptr noundef %33, ptr noundef %34, ptr noundef %35, i8 noundef zeroext %36, i32 noundef %37, i32 noundef %38, i32 noundef %39, i32 noundef %40, ptr noundef %41, ptr noundef %42, ptr noundef %43, ptr noundef %44, ptr noundef %45, ptr noundef %46, i32 noundef 2, i8 noundef zeroext 0)
  store ptr %call17, ptr %newpath, align 8, !tbaa !5
  %cmp18 = icmp ne ptr %call17, null
  br i1 %cmp18, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.else15
  %47 = load ptr, ptr %unextended_sense_paths.addr, align 8, !tbaa !5
  %48 = load ptr, ptr %newpath, align 8, !tbaa !5
  %49 = load ptr, ptr %queryptr.addr, align 8, !tbaa !5
  %50 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %51 = load ptr, ptr %mismatch_positions_alloc.addr, align 8, !tbaa !5
  %52 = load ptr, ptr %novel_diagonals_alloc.addr, align 8, !tbaa !5
  %53 = load ptr, ptr %localdb_alloc.addr, align 8, !tbaa !5
  %54 = load i32, ptr %streamspace_max_alloc.addr, align 4, !tbaa !12
  %55 = load ptr, ptr %streamspace_alloc.addr, align 8, !tbaa !5
  %56 = load ptr, ptr %streamptr_alloc.addr, align 8, !tbaa !5
  %57 = load ptr, ptr %streamsize_alloc.addr, align 8, !tbaa !5
  %58 = load ptr, ptr %mergeinfo.addr, align 8, !tbaa !5
  %59 = load ptr, ptr %indelinfo.addr, align 8, !tbaa !5
  %60 = load ptr, ptr %spliceinfo.addr, align 8, !tbaa !5
  %61 = load ptr, ptr %knownsplicing.addr, align 8, !tbaa !5
  %62 = load ptr, ptr %knownindels.addr, align 8, !tbaa !5
  %63 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %64 = load i32, ptr %chrnum.addr, align 4, !tbaa !12
  %65 = load i32, ptr %chroffset.addr, align 4, !tbaa !12
  %66 = load i32, ptr %chrhigh.addr, align 4, !tbaa !12
  %67 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %68 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %69 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %70 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %71 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  %72 = load ptr, ptr %vectorpool.addr, align 8, !tbaa !5
  %73 = load ptr, ptr %hitlistpool.addr, align 8, !tbaa !5
  %74 = load ptr, ptr %spliceendsgen.addr, align 8, !tbaa !5
  %75 = load i32, ptr %max_insertionlen.addr, align 4, !tbaa !12
  %76 = load i32, ptr %max_deletionlen.addr, align 4, !tbaa !12
  %77 = load i32, ptr %nmismatches_allowed.addr, align 4, !tbaa !12
  %78 = load i32, ptr %overall_end_distance.addr, align 4, !tbaa !12
  %79 = load i8, ptr %plusp.addr, align 1, !tbaa !14
  %80 = load i32, ptr %genestrand.addr, align 4, !tbaa !12
  %81 = load i8, ptr %qstart_innerp, align 1, !tbaa !14
  %82 = load i32, ptr %pass.addr, align 4, !tbaa !14
  call void @compute_qstart_local(ptr noundef %47, ptr noundef %qstart_sense_paths, i32 noundef 0, ptr noundef %48, ptr noundef %49, i32 noundef %50, ptr noundef %51, ptr noundef %52, ptr noundef %53, i32 noundef %54, ptr noundef %55, ptr noundef %56, ptr noundef %57, ptr noundef %58, ptr noundef %59, ptr noundef %60, ptr noundef %61, ptr noundef %62, ptr noundef %63, i32 noundef %64, i32 noundef %65, i32 noundef %66, ptr noundef %67, ptr noundef %68, ptr noundef %69, ptr noundef %70, ptr noundef %71, ptr noundef %72, ptr noundef %73, ptr noundef %74, i32 noundef %75, i32 noundef %76, i32 noundef %77, i32 noundef %78, i8 noundef zeroext %79, i32 noundef %80, i32 noundef 2, i8 noundef zeroext %81, i8 noundef zeroext 0, i32 noundef %82)
  %83 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %84 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %85 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %86 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %87 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  call void @Path_free(ptr noundef %newpath, ptr noundef %83, ptr noundef %84, ptr noundef %85, ptr noundef %86, ptr noundef %87)
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.else15
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.then14
  br label %for.inc

for.inc:                                          ; preds = %if.end22
  %88 = load ptr, ptr %p, align 8, !tbaa !5
  %call23 = call ptr @List_next(ptr noundef %88)
  store ptr %call23, ptr %p, align 8, !tbaa !5
  br label %for.cond, !llvm.loop !18

for.end:                                          ; preds = %for.cond
  %89 = load ptr, ptr %qstart_sense_paths, align 8, !tbaa !5
  %cmp24 = icmp eq ptr %89, null
  br i1 %cmp24, label %if.then26, label %if.end27

if.then26:                                        ; preds = %for.end
  %90 = load ptr, ptr %unextended_sense_paths.addr, align 8, !tbaa !5
  %91 = load ptr, ptr %path, align 8, !tbaa !5
  %92 = load ptr, ptr %queryptr.addr, align 8, !tbaa !5
  %93 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %94 = load ptr, ptr %mismatch_positions_alloc.addr, align 8, !tbaa !5
  %95 = load ptr, ptr %novel_diagonals_alloc.addr, align 8, !tbaa !5
  %96 = load ptr, ptr %localdb_alloc.addr, align 8, !tbaa !5
  %97 = load i32, ptr %streamspace_max_alloc.addr, align 4, !tbaa !12
  %98 = load ptr, ptr %streamspace_alloc.addr, align 8, !tbaa !5
  %99 = load ptr, ptr %streamptr_alloc.addr, align 8, !tbaa !5
  %100 = load ptr, ptr %streamsize_alloc.addr, align 8, !tbaa !5
  %101 = load ptr, ptr %mergeinfo.addr, align 8, !tbaa !5
  %102 = load ptr, ptr %indelinfo.addr, align 8, !tbaa !5
  %103 = load ptr, ptr %spliceinfo.addr, align 8, !tbaa !5
  %104 = load ptr, ptr %knownsplicing.addr, align 8, !tbaa !5
  %105 = load ptr, ptr %knownindels.addr, align 8, !tbaa !5
  %106 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %107 = load i32, ptr %chrnum.addr, align 4, !tbaa !12
  %108 = load i32, ptr %chroffset.addr, align 4, !tbaa !12
  %109 = load i32, ptr %chrhigh.addr, align 4, !tbaa !12
  %110 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %111 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %112 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %113 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %114 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  %115 = load ptr, ptr %vectorpool.addr, align 8, !tbaa !5
  %116 = load ptr, ptr %hitlistpool.addr, align 8, !tbaa !5
  %117 = load ptr, ptr %spliceendsgen.addr, align 8, !tbaa !5
  %118 = load i32, ptr %max_insertionlen.addr, align 4, !tbaa !12
  %119 = load i32, ptr %max_deletionlen.addr, align 4, !tbaa !12
  %120 = load i32, ptr %nmismatches_allowed.addr, align 4, !tbaa !12
  %121 = load i32, ptr %overall_end_distance.addr, align 4, !tbaa !12
  %122 = load i8, ptr %plusp.addr, align 1, !tbaa !14
  %123 = load i32, ptr %genestrand.addr, align 4, !tbaa !12
  %124 = load i8, ptr %qstart_innerp, align 1, !tbaa !14
  %125 = load i32, ptr %pass.addr, align 4, !tbaa !14
  call void @compute_qstart_local(ptr noundef %90, ptr noundef %qstart_sense_paths, i32 noundef 0, ptr noundef %91, ptr noundef %92, i32 noundef %93, ptr noundef %94, ptr noundef %95, ptr noundef %96, i32 noundef %97, ptr noundef %98, ptr noundef %99, ptr noundef %100, ptr noundef %101, ptr noundef %102, ptr noundef %103, ptr noundef %104, ptr noundef %105, ptr noundef %106, i32 noundef %107, i32 noundef %108, i32 noundef %109, ptr noundef %110, ptr noundef %111, ptr noundef %112, ptr noundef %113, ptr noundef %114, ptr noundef %115, ptr noundef %116, ptr noundef %117, i32 noundef %118, i32 noundef %119, i32 noundef %120, i32 noundef %121, i8 noundef zeroext %122, i32 noundef %123, i32 noundef 2, i8 noundef zeroext %124, i8 noundef zeroext 0, i32 noundef %125)
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %for.end
  %126 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %127 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %128 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %129 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %130 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  call void @Path_free(ptr noundef %path, ptr noundef %126, ptr noundef %127, ptr noundef %128, ptr noundef %129, ptr noundef %130)
  %131 = load i8, ptr @splicingp, align 1, !tbaa !14
  %conv28 = zext i8 %131 to i32
  %cmp29 = icmp eq i32 %conv28, 1
  br i1 %cmp29, label %if.then31, label %if.end59

if.then31:                                        ; preds = %if.end27
  %132 = load i32, ptr %middle_diagonal_univdiagonal.addr, align 4, !tbaa !12
  %133 = load i32, ptr %middle_diagonal_qstart.addr, align 4, !tbaa !12
  %134 = load i32, ptr %middle_diagonal_qend.addr, align 4, !tbaa !12
  %135 = load i32, ptr %middle_nmismatches.addr, align 4, !tbaa !12
  %136 = load i8, ptr %plusp.addr, align 1, !tbaa !14
  %137 = load i32, ptr %genestrand.addr, align 4, !tbaa !12
  %138 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %139 = load i32, ptr %method.addr, align 4, !tbaa !14
  %140 = load i32, ptr %chrnum.addr, align 4, !tbaa !12
  %141 = load i32, ptr %chroffset.addr, align 4, !tbaa !12
  %142 = load i32, ptr %chrhigh.addr, align 4, !tbaa !12
  %143 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %144 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %145 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %call32 = call ptr @Path_new_for_qstart_extension(i32 noundef %132, i32 noundef %133, i32 noundef %134, i32 noundef %135, i8 noundef zeroext %136, i32 noundef %137, i32 noundef 1, i32 noundef %138, i32 noundef %139, i32 noundef %140, i32 noundef %141, i32 noundef %142, i8 noundef zeroext 0, i32 noundef 0, double noundef 0.000000e+00, ptr noundef %143, ptr noundef %144, ptr noundef %145)
  store ptr %call32, ptr %path, align 8, !tbaa !5
  %146 = load ptr, ptr %qstart_univdiags.addr, align 8, !tbaa !5
  store ptr %146, ptr %p, align 8, !tbaa !5
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc52, %if.then31
  %147 = load ptr, ptr %p, align 8, !tbaa !5
  %cmp34 = icmp ne ptr %147, null
  br i1 %cmp34, label %for.body36, label %for.end54

for.body36:                                       ; preds = %for.cond33
  %148 = load ptr, ptr %p, align 8, !tbaa !5
  %call37 = call ptr @List_head(ptr noundef %148)
  store ptr %call37, ptr %univdiag, align 8, !tbaa !5
  %149 = load ptr, ptr %univdiag, align 8, !tbaa !5
  %univdiagonal38 = getelementptr inbounds %struct.Univdiag_T, ptr %149, i32 0, i32 0
  %150 = load i32, ptr %univdiagonal38, align 4, !tbaa !15
  %151 = load i32, ptr %chroffset.addr, align 4, !tbaa !12
  %152 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %add39 = add i32 %151, %152
  %cmp40 = icmp ult i32 %150, %add39
  br i1 %cmp40, label %if.then42, label %if.else43

if.then42:                                        ; preds = %for.body36
  br label %if.end51

if.else43:                                        ; preds = %for.body36
  %153 = load ptr, ptr %path, align 8, !tbaa !5
  %154 = load ptr, ptr %univdiag, align 8, !tbaa !5
  %univdiagonal44 = getelementptr inbounds %struct.Univdiag_T, ptr %154, i32 0, i32 0
  %155 = load i32, ptr %univdiagonal44, align 4, !tbaa !15
  %156 = load ptr, ptr %univdiag, align 8, !tbaa !5
  %qstart45 = getelementptr inbounds %struct.Univdiag_T, ptr %156, i32 0, i32 1
  %157 = load i32, ptr %qstart45, align 4, !tbaa !17
  %158 = load i32, ptr %chrnum.addr, align 4, !tbaa !12
  %159 = load i32, ptr %chroffset.addr, align 4, !tbaa !12
  %160 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %161 = load ptr, ptr %indelinfo.addr, align 8, !tbaa !5
  %162 = load ptr, ptr %spliceinfo.addr, align 8, !tbaa !5
  %163 = load ptr, ptr %knownsplicing.addr, align 8, !tbaa !5
  %164 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %165 = load i8, ptr %plusp.addr, align 1, !tbaa !14
  %166 = load i32, ptr %genestrand.addr, align 4, !tbaa !12
  %167 = load i32, ptr %max_insertionlen.addr, align 4, !tbaa !12
  %168 = load i32, ptr %max_deletionlen.addr, align 4, !tbaa !12
  %169 = load i32, ptr %nmismatches_allowed.addr, align 4, !tbaa !12
  %170 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %171 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %172 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %173 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %174 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  %175 = load ptr, ptr %vectorpool.addr, align 8, !tbaa !5
  %call46 = call ptr @attach_unknown_qstart(ptr noundef %153, i32 noundef %155, i32 noundef %157, i32 noundef %158, i32 noundef %159, i32 noundef %160, ptr noundef %161, ptr noundef %162, ptr noundef %163, ptr noundef %164, i8 noundef zeroext %165, i32 noundef %166, i32 noundef %167, i32 noundef %168, i32 noundef %169, ptr noundef %170, ptr noundef %171, ptr noundef %172, ptr noundef %173, ptr noundef %174, ptr noundef %175, i32 noundef 1, i8 noundef zeroext 0)
  store ptr %call46, ptr %newpath, align 8, !tbaa !5
  %cmp47 = icmp ne ptr %call46, null
  br i1 %cmp47, label %if.then49, label %if.end50

if.then49:                                        ; preds = %if.else43
  %176 = load ptr, ptr %unextended_antisense_paths.addr, align 8, !tbaa !5
  %177 = load ptr, ptr %newpath, align 8, !tbaa !5
  %178 = load ptr, ptr %queryptr.addr, align 8, !tbaa !5
  %179 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %180 = load ptr, ptr %mismatch_positions_alloc.addr, align 8, !tbaa !5
  %181 = load ptr, ptr %novel_diagonals_alloc.addr, align 8, !tbaa !5
  %182 = load ptr, ptr %localdb_alloc.addr, align 8, !tbaa !5
  %183 = load i32, ptr %streamspace_max_alloc.addr, align 4, !tbaa !12
  %184 = load ptr, ptr %streamspace_alloc.addr, align 8, !tbaa !5
  %185 = load ptr, ptr %streamptr_alloc.addr, align 8, !tbaa !5
  %186 = load ptr, ptr %streamsize_alloc.addr, align 8, !tbaa !5
  %187 = load ptr, ptr %mergeinfo.addr, align 8, !tbaa !5
  %188 = load ptr, ptr %indelinfo.addr, align 8, !tbaa !5
  %189 = load ptr, ptr %spliceinfo.addr, align 8, !tbaa !5
  %190 = load ptr, ptr %knownsplicing.addr, align 8, !tbaa !5
  %191 = load ptr, ptr %knownindels.addr, align 8, !tbaa !5
  %192 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %193 = load i32, ptr %chrnum.addr, align 4, !tbaa !12
  %194 = load i32, ptr %chroffset.addr, align 4, !tbaa !12
  %195 = load i32, ptr %chrhigh.addr, align 4, !tbaa !12
  %196 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %197 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %198 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %199 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %200 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  %201 = load ptr, ptr %vectorpool.addr, align 8, !tbaa !5
  %202 = load ptr, ptr %hitlistpool.addr, align 8, !tbaa !5
  %203 = load ptr, ptr %spliceendsgen.addr, align 8, !tbaa !5
  %204 = load i32, ptr %max_insertionlen.addr, align 4, !tbaa !12
  %205 = load i32, ptr %max_deletionlen.addr, align 4, !tbaa !12
  %206 = load i32, ptr %nmismatches_allowed.addr, align 4, !tbaa !12
  %207 = load i32, ptr %overall_end_distance.addr, align 4, !tbaa !12
  %208 = load i8, ptr %plusp.addr, align 1, !tbaa !14
  %209 = load i32, ptr %genestrand.addr, align 4, !tbaa !12
  %210 = load i8, ptr %qstart_innerp, align 1, !tbaa !14
  %211 = load i32, ptr %pass.addr, align 4, !tbaa !14
  call void @compute_qstart_local(ptr noundef %176, ptr noundef %qstart_antisense_paths, i32 noundef 0, ptr noundef %177, ptr noundef %178, i32 noundef %179, ptr noundef %180, ptr noundef %181, ptr noundef %182, i32 noundef %183, ptr noundef %184, ptr noundef %185, ptr noundef %186, ptr noundef %187, ptr noundef %188, ptr noundef %189, ptr noundef %190, ptr noundef %191, ptr noundef %192, i32 noundef %193, i32 noundef %194, i32 noundef %195, ptr noundef %196, ptr noundef %197, ptr noundef %198, ptr noundef %199, ptr noundef %200, ptr noundef %201, ptr noundef %202, ptr noundef %203, i32 noundef %204, i32 noundef %205, i32 noundef %206, i32 noundef %207, i8 noundef zeroext %208, i32 noundef %209, i32 noundef 1, i8 noundef zeroext %210, i8 noundef zeroext 0, i32 noundef %211)
  %212 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %213 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %214 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %215 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %216 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  call void @Path_free(ptr noundef %newpath, ptr noundef %212, ptr noundef %213, ptr noundef %214, ptr noundef %215, ptr noundef %216)
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %if.else43
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %if.then42
  br label %for.inc52

for.inc52:                                        ; preds = %if.end51
  %217 = load ptr, ptr %p, align 8, !tbaa !5
  %call53 = call ptr @List_next(ptr noundef %217)
  store ptr %call53, ptr %p, align 8, !tbaa !5
  br label %for.cond33, !llvm.loop !20

for.end54:                                        ; preds = %for.cond33
  %218 = load ptr, ptr %qstart_antisense_paths, align 8, !tbaa !5
  %cmp55 = icmp eq ptr %218, null
  br i1 %cmp55, label %if.then57, label %if.end58

if.then57:                                        ; preds = %for.end54
  %219 = load ptr, ptr %unextended_antisense_paths.addr, align 8, !tbaa !5
  %220 = load ptr, ptr %path, align 8, !tbaa !5
  %221 = load ptr, ptr %queryptr.addr, align 8, !tbaa !5
  %222 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %223 = load ptr, ptr %mismatch_positions_alloc.addr, align 8, !tbaa !5
  %224 = load ptr, ptr %novel_diagonals_alloc.addr, align 8, !tbaa !5
  %225 = load ptr, ptr %localdb_alloc.addr, align 8, !tbaa !5
  %226 = load i32, ptr %streamspace_max_alloc.addr, align 4, !tbaa !12
  %227 = load ptr, ptr %streamspace_alloc.addr, align 8, !tbaa !5
  %228 = load ptr, ptr %streamptr_alloc.addr, align 8, !tbaa !5
  %229 = load ptr, ptr %streamsize_alloc.addr, align 8, !tbaa !5
  %230 = load ptr, ptr %mergeinfo.addr, align 8, !tbaa !5
  %231 = load ptr, ptr %indelinfo.addr, align 8, !tbaa !5
  %232 = load ptr, ptr %spliceinfo.addr, align 8, !tbaa !5
  %233 = load ptr, ptr %knownsplicing.addr, align 8, !tbaa !5
  %234 = load ptr, ptr %knownindels.addr, align 8, !tbaa !5
  %235 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %236 = load i32, ptr %chrnum.addr, align 4, !tbaa !12
  %237 = load i32, ptr %chroffset.addr, align 4, !tbaa !12
  %238 = load i32, ptr %chrhigh.addr, align 4, !tbaa !12
  %239 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %240 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %241 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %242 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %243 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  %244 = load ptr, ptr %vectorpool.addr, align 8, !tbaa !5
  %245 = load ptr, ptr %hitlistpool.addr, align 8, !tbaa !5
  %246 = load ptr, ptr %spliceendsgen.addr, align 8, !tbaa !5
  %247 = load i32, ptr %max_insertionlen.addr, align 4, !tbaa !12
  %248 = load i32, ptr %max_deletionlen.addr, align 4, !tbaa !12
  %249 = load i32, ptr %nmismatches_allowed.addr, align 4, !tbaa !12
  %250 = load i32, ptr %overall_end_distance.addr, align 4, !tbaa !12
  %251 = load i8, ptr %plusp.addr, align 1, !tbaa !14
  %252 = load i32, ptr %genestrand.addr, align 4, !tbaa !12
  %253 = load i8, ptr %qstart_innerp, align 1, !tbaa !14
  %254 = load i32, ptr %pass.addr, align 4, !tbaa !14
  call void @compute_qstart_local(ptr noundef %219, ptr noundef %qstart_antisense_paths, i32 noundef 0, ptr noundef %220, ptr noundef %221, i32 noundef %222, ptr noundef %223, ptr noundef %224, ptr noundef %225, i32 noundef %226, ptr noundef %227, ptr noundef %228, ptr noundef %229, ptr noundef %230, ptr noundef %231, ptr noundef %232, ptr noundef %233, ptr noundef %234, ptr noundef %235, i32 noundef %236, i32 noundef %237, i32 noundef %238, ptr noundef %239, ptr noundef %240, ptr noundef %241, ptr noundef %242, ptr noundef %243, ptr noundef %244, ptr noundef %245, ptr noundef %246, i32 noundef %247, i32 noundef %248, i32 noundef %249, i32 noundef %250, i8 noundef zeroext %251, i32 noundef %252, i32 noundef 1, i8 noundef zeroext %253, i8 noundef zeroext 0, i32 noundef %254)
  br label %if.end58

if.end58:                                         ; preds = %if.then57, %for.end54
  %255 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %256 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %257 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %258 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %259 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  call void @Path_free(ptr noundef %path, ptr noundef %255, ptr noundef %256, ptr noundef %257, ptr noundef %258, ptr noundef %259)
  br label %if.end59

if.end59:                                         ; preds = %if.end58, %if.end27
  %260 = load i32, ptr %middle_diagonal_univdiagonal.addr, align 4, !tbaa !12
  %261 = load i32, ptr %middle_diagonal_qstart.addr, align 4, !tbaa !12
  %262 = load i32, ptr %middle_diagonal_qend.addr, align 4, !tbaa !12
  %263 = load i32, ptr %middle_nmismatches.addr, align 4, !tbaa !12
  %264 = load i8, ptr %plusp.addr, align 1, !tbaa !14
  %265 = load i32, ptr %genestrand.addr, align 4, !tbaa !12
  %266 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %267 = load i32, ptr %method.addr, align 4, !tbaa !14
  %268 = load i32, ptr %chrnum.addr, align 4, !tbaa !12
  %269 = load i32, ptr %chroffset.addr, align 4, !tbaa !12
  %270 = load i32, ptr %chrhigh.addr, align 4, !tbaa !12
  %271 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %272 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %273 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %call60 = call ptr @Path_new_for_qend_extension(i32 noundef %260, i32 noundef %261, i32 noundef %262, i32 noundef %263, i8 noundef zeroext %264, i32 noundef %265, i32 noundef 2, i32 noundef %266, i32 noundef %267, i32 noundef %268, i32 noundef %269, i32 noundef %270, i8 noundef zeroext 0, i32 noundef 0, double noundef 0.000000e+00, ptr noundef %271, ptr noundef %272, ptr noundef %273)
  store ptr %call60, ptr %path, align 8, !tbaa !5
  %274 = load ptr, ptr %qend_univdiags.addr, align 8, !tbaa !5
  store ptr %274, ptr %p, align 8, !tbaa !5
  br label %for.cond61

for.cond61:                                       ; preds = %for.inc79, %if.end59
  %275 = load ptr, ptr %p, align 8, !tbaa !5
  %cmp62 = icmp ne ptr %275, null
  br i1 %cmp62, label %for.body64, label %for.end81

for.body64:                                       ; preds = %for.cond61
  %276 = load ptr, ptr %p, align 8, !tbaa !5
  %call65 = call ptr @List_head(ptr noundef %276)
  store ptr %call65, ptr %univdiag, align 8, !tbaa !5
  %277 = load ptr, ptr %univdiag, align 8, !tbaa !5
  %univdiagonal66 = getelementptr inbounds %struct.Univdiag_T, ptr %277, i32 0, i32 0
  %278 = load i32, ptr %univdiagonal66, align 4, !tbaa !15
  %279 = load i32, ptr %chrhigh.addr, align 4, !tbaa !12
  %cmp67 = icmp uge i32 %278, %279
  br i1 %cmp67, label %if.then69, label %if.else70

if.then69:                                        ; preds = %for.body64
  br label %if.end78

if.else70:                                        ; preds = %for.body64
  %280 = load ptr, ptr %path, align 8, !tbaa !5
  %281 = load ptr, ptr %univdiag, align 8, !tbaa !5
  %univdiagonal71 = getelementptr inbounds %struct.Univdiag_T, ptr %281, i32 0, i32 0
  %282 = load i32, ptr %univdiagonal71, align 4, !tbaa !15
  %283 = load ptr, ptr %univdiag, align 8, !tbaa !5
  %qstart72 = getelementptr inbounds %struct.Univdiag_T, ptr %283, i32 0, i32 1
  %284 = load i32, ptr %qstart72, align 4, !tbaa !17
  %285 = load ptr, ptr %univdiag, align 8, !tbaa !5
  %qend = getelementptr inbounds %struct.Univdiag_T, ptr %285, i32 0, i32 2
  %286 = load i32, ptr %qend, align 4, !tbaa !21
  %287 = load i32, ptr %chrnum.addr, align 4, !tbaa !12
  %288 = load i32, ptr %chroffset.addr, align 4, !tbaa !12
  %289 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %290 = load ptr, ptr %indelinfo.addr, align 8, !tbaa !5
  %291 = load ptr, ptr %spliceinfo.addr, align 8, !tbaa !5
  %292 = load ptr, ptr %knownsplicing.addr, align 8, !tbaa !5
  %293 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %294 = load i8, ptr %plusp.addr, align 1, !tbaa !14
  %295 = load i32, ptr %genestrand.addr, align 4, !tbaa !12
  %296 = load i32, ptr %max_insertionlen.addr, align 4, !tbaa !12
  %297 = load i32, ptr %max_deletionlen.addr, align 4, !tbaa !12
  %298 = load i32, ptr %nmismatches_allowed.addr, align 4, !tbaa !12
  %299 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %300 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %301 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %302 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %303 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  %304 = load ptr, ptr %vectorpool.addr, align 8, !tbaa !5
  %call73 = call ptr @attach_unknown_qend(ptr noundef %280, i32 noundef %282, i32 noundef %284, i32 noundef %286, i32 noundef %287, i32 noundef %288, i32 noundef %289, ptr noundef %290, ptr noundef %291, ptr noundef %292, ptr noundef %293, i8 noundef zeroext %294, i32 noundef %295, i32 noundef %296, i32 noundef %297, i32 noundef %298, ptr noundef %299, ptr noundef %300, ptr noundef %301, ptr noundef %302, ptr noundef %303, ptr noundef %304, i32 noundef 2, i8 noundef zeroext 0)
  store ptr %call73, ptr %newpath, align 8, !tbaa !5
  %cmp74 = icmp ne ptr %call73, null
  br i1 %cmp74, label %if.then76, label %if.end77

if.then76:                                        ; preds = %if.else70
  %305 = load ptr, ptr %unextended_sense_paths.addr, align 8, !tbaa !5
  %306 = load ptr, ptr %newpath, align 8, !tbaa !5
  %307 = load ptr, ptr %queryptr.addr, align 8, !tbaa !5
  %308 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %309 = load ptr, ptr %mismatch_positions_alloc.addr, align 8, !tbaa !5
  %310 = load ptr, ptr %novel_diagonals_alloc.addr, align 8, !tbaa !5
  %311 = load ptr, ptr %localdb_alloc.addr, align 8, !tbaa !5
  %312 = load i32, ptr %streamspace_max_alloc.addr, align 4, !tbaa !12
  %313 = load ptr, ptr %streamspace_alloc.addr, align 8, !tbaa !5
  %314 = load ptr, ptr %streamptr_alloc.addr, align 8, !tbaa !5
  %315 = load ptr, ptr %streamsize_alloc.addr, align 8, !tbaa !5
  %316 = load ptr, ptr %mergeinfo.addr, align 8, !tbaa !5
  %317 = load ptr, ptr %indelinfo.addr, align 8, !tbaa !5
  %318 = load ptr, ptr %spliceinfo.addr, align 8, !tbaa !5
  %319 = load ptr, ptr %knownsplicing.addr, align 8, !tbaa !5
  %320 = load ptr, ptr %knownindels.addr, align 8, !tbaa !5
  %321 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %322 = load i32, ptr %chrnum.addr, align 4, !tbaa !12
  %323 = load i32, ptr %chroffset.addr, align 4, !tbaa !12
  %324 = load i32, ptr %chrhigh.addr, align 4, !tbaa !12
  %325 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %326 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %327 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %328 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %329 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  %330 = load ptr, ptr %vectorpool.addr, align 8, !tbaa !5
  %331 = load ptr, ptr %hitlistpool.addr, align 8, !tbaa !5
  %332 = load ptr, ptr %spliceendsgen.addr, align 8, !tbaa !5
  %333 = load i32, ptr %max_insertionlen.addr, align 4, !tbaa !12
  %334 = load i32, ptr %max_deletionlen.addr, align 4, !tbaa !12
  %335 = load i32, ptr %nmismatches_allowed.addr, align 4, !tbaa !12
  %336 = load i32, ptr %overall_end_distance.addr, align 4, !tbaa !12
  %337 = load i8, ptr %plusp.addr, align 1, !tbaa !14
  %338 = load i32, ptr %genestrand.addr, align 4, !tbaa !12
  %339 = load i8, ptr %qend_innerp, align 1, !tbaa !14
  %340 = load i32, ptr %pass.addr, align 4, !tbaa !14
  call void @compute_qend_local(ptr noundef %305, ptr noundef %qend_sense_paths, i32 noundef 0, ptr noundef %306, ptr noundef %307, i32 noundef %308, ptr noundef %309, ptr noundef %310, ptr noundef %311, i32 noundef %312, ptr noundef %313, ptr noundef %314, ptr noundef %315, ptr noundef %316, ptr noundef %317, ptr noundef %318, ptr noundef %319, ptr noundef %320, ptr noundef %321, i32 noundef %322, i32 noundef %323, i32 noundef %324, ptr noundef %325, ptr noundef %326, ptr noundef %327, ptr noundef %328, ptr noundef %329, ptr noundef %330, ptr noundef %331, ptr noundef %332, i32 noundef %333, i32 noundef %334, i32 noundef %335, i32 noundef %336, i8 noundef zeroext %337, i32 noundef %338, i32 noundef 2, i8 noundef zeroext %339, i8 noundef zeroext 0, i32 noundef %340)
  %341 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %342 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %343 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %344 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %345 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  call void @Path_free(ptr noundef %newpath, ptr noundef %341, ptr noundef %342, ptr noundef %343, ptr noundef %344, ptr noundef %345)
  br label %if.end77

if.end77:                                         ; preds = %if.then76, %if.else70
  br label %if.end78

if.end78:                                         ; preds = %if.end77, %if.then69
  br label %for.inc79

for.inc79:                                        ; preds = %if.end78
  %346 = load ptr, ptr %p, align 8, !tbaa !5
  %call80 = call ptr @List_next(ptr noundef %346)
  store ptr %call80, ptr %p, align 8, !tbaa !5
  br label %for.cond61, !llvm.loop !22

for.end81:                                        ; preds = %for.cond61
  %347 = load ptr, ptr %qend_sense_paths, align 8, !tbaa !5
  %cmp82 = icmp eq ptr %347, null
  br i1 %cmp82, label %if.then84, label %if.end85

if.then84:                                        ; preds = %for.end81
  %348 = load ptr, ptr %unextended_sense_paths.addr, align 8, !tbaa !5
  %349 = load ptr, ptr %path, align 8, !tbaa !5
  %350 = load ptr, ptr %queryptr.addr, align 8, !tbaa !5
  %351 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %352 = load ptr, ptr %mismatch_positions_alloc.addr, align 8, !tbaa !5
  %353 = load ptr, ptr %novel_diagonals_alloc.addr, align 8, !tbaa !5
  %354 = load ptr, ptr %localdb_alloc.addr, align 8, !tbaa !5
  %355 = load i32, ptr %streamspace_max_alloc.addr, align 4, !tbaa !12
  %356 = load ptr, ptr %streamspace_alloc.addr, align 8, !tbaa !5
  %357 = load ptr, ptr %streamptr_alloc.addr, align 8, !tbaa !5
  %358 = load ptr, ptr %streamsize_alloc.addr, align 8, !tbaa !5
  %359 = load ptr, ptr %mergeinfo.addr, align 8, !tbaa !5
  %360 = load ptr, ptr %indelinfo.addr, align 8, !tbaa !5
  %361 = load ptr, ptr %spliceinfo.addr, align 8, !tbaa !5
  %362 = load ptr, ptr %knownsplicing.addr, align 8, !tbaa !5
  %363 = load ptr, ptr %knownindels.addr, align 8, !tbaa !5
  %364 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %365 = load i32, ptr %chrnum.addr, align 4, !tbaa !12
  %366 = load i32, ptr %chroffset.addr, align 4, !tbaa !12
  %367 = load i32, ptr %chrhigh.addr, align 4, !tbaa !12
  %368 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %369 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %370 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %371 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %372 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  %373 = load ptr, ptr %vectorpool.addr, align 8, !tbaa !5
  %374 = load ptr, ptr %hitlistpool.addr, align 8, !tbaa !5
  %375 = load ptr, ptr %spliceendsgen.addr, align 8, !tbaa !5
  %376 = load i32, ptr %max_insertionlen.addr, align 4, !tbaa !12
  %377 = load i32, ptr %max_deletionlen.addr, align 4, !tbaa !12
  %378 = load i32, ptr %nmismatches_allowed.addr, align 4, !tbaa !12
  %379 = load i32, ptr %overall_end_distance.addr, align 4, !tbaa !12
  %380 = load i8, ptr %plusp.addr, align 1, !tbaa !14
  %381 = load i32, ptr %genestrand.addr, align 4, !tbaa !12
  %382 = load i8, ptr %qend_innerp, align 1, !tbaa !14
  %383 = load i32, ptr %pass.addr, align 4, !tbaa !14
  call void @compute_qend_local(ptr noundef %348, ptr noundef %qend_sense_paths, i32 noundef 0, ptr noundef %349, ptr noundef %350, i32 noundef %351, ptr noundef %352, ptr noundef %353, ptr noundef %354, i32 noundef %355, ptr noundef %356, ptr noundef %357, ptr noundef %358, ptr noundef %359, ptr noundef %360, ptr noundef %361, ptr noundef %362, ptr noundef %363, ptr noundef %364, i32 noundef %365, i32 noundef %366, i32 noundef %367, ptr noundef %368, ptr noundef %369, ptr noundef %370, ptr noundef %371, ptr noundef %372, ptr noundef %373, ptr noundef %374, ptr noundef %375, i32 noundef %376, i32 noundef %377, i32 noundef %378, i32 noundef %379, i8 noundef zeroext %380, i32 noundef %381, i32 noundef 2, i8 noundef zeroext %382, i8 noundef zeroext 0, i32 noundef %383)
  br label %if.end85

if.end85:                                         ; preds = %if.then84, %for.end81
  %384 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %385 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %386 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %387 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %388 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  call void @Path_free(ptr noundef %path, ptr noundef %384, ptr noundef %385, ptr noundef %386, ptr noundef %387, ptr noundef %388)
  %389 = load i8, ptr @splicingp, align 1, !tbaa !14
  %conv86 = zext i8 %389 to i32
  %cmp87 = icmp eq i32 %conv86, 1
  br i1 %cmp87, label %if.then89, label %if.end117

if.then89:                                        ; preds = %if.end85
  %390 = load i32, ptr %middle_diagonal_univdiagonal.addr, align 4, !tbaa !12
  %391 = load i32, ptr %middle_diagonal_qstart.addr, align 4, !tbaa !12
  %392 = load i32, ptr %middle_diagonal_qend.addr, align 4, !tbaa !12
  %393 = load i32, ptr %middle_nmismatches.addr, align 4, !tbaa !12
  %394 = load i8, ptr %plusp.addr, align 1, !tbaa !14
  %395 = load i32, ptr %genestrand.addr, align 4, !tbaa !12
  %396 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %397 = load i32, ptr %method.addr, align 4, !tbaa !14
  %398 = load i32, ptr %chrnum.addr, align 4, !tbaa !12
  %399 = load i32, ptr %chroffset.addr, align 4, !tbaa !12
  %400 = load i32, ptr %chrhigh.addr, align 4, !tbaa !12
  %401 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %402 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %403 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %call90 = call ptr @Path_new_for_qend_extension(i32 noundef %390, i32 noundef %391, i32 noundef %392, i32 noundef %393, i8 noundef zeroext %394, i32 noundef %395, i32 noundef 1, i32 noundef %396, i32 noundef %397, i32 noundef %398, i32 noundef %399, i32 noundef %400, i8 noundef zeroext 0, i32 noundef 0, double noundef 0.000000e+00, ptr noundef %401, ptr noundef %402, ptr noundef %403)
  store ptr %call90, ptr %path, align 8, !tbaa !5
  %404 = load ptr, ptr %qend_univdiags.addr, align 8, !tbaa !5
  store ptr %404, ptr %p, align 8, !tbaa !5
  br label %for.cond91

for.cond91:                                       ; preds = %for.inc110, %if.then89
  %405 = load ptr, ptr %p, align 8, !tbaa !5
  %cmp92 = icmp ne ptr %405, null
  br i1 %cmp92, label %for.body94, label %for.end112

for.body94:                                       ; preds = %for.cond91
  %406 = load ptr, ptr %p, align 8, !tbaa !5
  %call95 = call ptr @List_head(ptr noundef %406)
  store ptr %call95, ptr %univdiag, align 8, !tbaa !5
  %407 = load ptr, ptr %univdiag, align 8, !tbaa !5
  %univdiagonal96 = getelementptr inbounds %struct.Univdiag_T, ptr %407, i32 0, i32 0
  %408 = load i32, ptr %univdiagonal96, align 4, !tbaa !15
  %409 = load i32, ptr %chrhigh.addr, align 4, !tbaa !12
  %cmp97 = icmp uge i32 %408, %409
  br i1 %cmp97, label %if.then99, label %if.else100

if.then99:                                        ; preds = %for.body94
  br label %if.end109

if.else100:                                       ; preds = %for.body94
  %410 = load ptr, ptr %path, align 8, !tbaa !5
  %411 = load ptr, ptr %univdiag, align 8, !tbaa !5
  %univdiagonal101 = getelementptr inbounds %struct.Univdiag_T, ptr %411, i32 0, i32 0
  %412 = load i32, ptr %univdiagonal101, align 4, !tbaa !15
  %413 = load ptr, ptr %univdiag, align 8, !tbaa !5
  %qstart102 = getelementptr inbounds %struct.Univdiag_T, ptr %413, i32 0, i32 1
  %414 = load i32, ptr %qstart102, align 4, !tbaa !17
  %415 = load ptr, ptr %univdiag, align 8, !tbaa !5
  %qend103 = getelementptr inbounds %struct.Univdiag_T, ptr %415, i32 0, i32 2
  %416 = load i32, ptr %qend103, align 4, !tbaa !21
  %417 = load i32, ptr %chrnum.addr, align 4, !tbaa !12
  %418 = load i32, ptr %chroffset.addr, align 4, !tbaa !12
  %419 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %420 = load ptr, ptr %indelinfo.addr, align 8, !tbaa !5
  %421 = load ptr, ptr %spliceinfo.addr, align 8, !tbaa !5
  %422 = load ptr, ptr %knownsplicing.addr, align 8, !tbaa !5
  %423 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %424 = load i8, ptr %plusp.addr, align 1, !tbaa !14
  %425 = load i32, ptr %genestrand.addr, align 4, !tbaa !12
  %426 = load i32, ptr %max_insertionlen.addr, align 4, !tbaa !12
  %427 = load i32, ptr %max_deletionlen.addr, align 4, !tbaa !12
  %428 = load i32, ptr %nmismatches_allowed.addr, align 4, !tbaa !12
  %429 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %430 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %431 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %432 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %433 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  %434 = load ptr, ptr %vectorpool.addr, align 8, !tbaa !5
  %call104 = call ptr @attach_unknown_qend(ptr noundef %410, i32 noundef %412, i32 noundef %414, i32 noundef %416, i32 noundef %417, i32 noundef %418, i32 noundef %419, ptr noundef %420, ptr noundef %421, ptr noundef %422, ptr noundef %423, i8 noundef zeroext %424, i32 noundef %425, i32 noundef %426, i32 noundef %427, i32 noundef %428, ptr noundef %429, ptr noundef %430, ptr noundef %431, ptr noundef %432, ptr noundef %433, ptr noundef %434, i32 noundef 1, i8 noundef zeroext 0)
  store ptr %call104, ptr %newpath, align 8, !tbaa !5
  %cmp105 = icmp ne ptr %call104, null
  br i1 %cmp105, label %if.then107, label %if.end108

if.then107:                                       ; preds = %if.else100
  %435 = load ptr, ptr %unextended_antisense_paths.addr, align 8, !tbaa !5
  %436 = load ptr, ptr %newpath, align 8, !tbaa !5
  %437 = load ptr, ptr %queryptr.addr, align 8, !tbaa !5
  %438 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %439 = load ptr, ptr %mismatch_positions_alloc.addr, align 8, !tbaa !5
  %440 = load ptr, ptr %novel_diagonals_alloc.addr, align 8, !tbaa !5
  %441 = load ptr, ptr %localdb_alloc.addr, align 8, !tbaa !5
  %442 = load i32, ptr %streamspace_max_alloc.addr, align 4, !tbaa !12
  %443 = load ptr, ptr %streamspace_alloc.addr, align 8, !tbaa !5
  %444 = load ptr, ptr %streamptr_alloc.addr, align 8, !tbaa !5
  %445 = load ptr, ptr %streamsize_alloc.addr, align 8, !tbaa !5
  %446 = load ptr, ptr %mergeinfo.addr, align 8, !tbaa !5
  %447 = load ptr, ptr %indelinfo.addr, align 8, !tbaa !5
  %448 = load ptr, ptr %spliceinfo.addr, align 8, !tbaa !5
  %449 = load ptr, ptr %knownsplicing.addr, align 8, !tbaa !5
  %450 = load ptr, ptr %knownindels.addr, align 8, !tbaa !5
  %451 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %452 = load i32, ptr %chrnum.addr, align 4, !tbaa !12
  %453 = load i32, ptr %chroffset.addr, align 4, !tbaa !12
  %454 = load i32, ptr %chrhigh.addr, align 4, !tbaa !12
  %455 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %456 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %457 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %458 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %459 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  %460 = load ptr, ptr %vectorpool.addr, align 8, !tbaa !5
  %461 = load ptr, ptr %hitlistpool.addr, align 8, !tbaa !5
  %462 = load ptr, ptr %spliceendsgen.addr, align 8, !tbaa !5
  %463 = load i32, ptr %max_insertionlen.addr, align 4, !tbaa !12
  %464 = load i32, ptr %max_deletionlen.addr, align 4, !tbaa !12
  %465 = load i32, ptr %nmismatches_allowed.addr, align 4, !tbaa !12
  %466 = load i32, ptr %overall_end_distance.addr, align 4, !tbaa !12
  %467 = load i8, ptr %plusp.addr, align 1, !tbaa !14
  %468 = load i32, ptr %genestrand.addr, align 4, !tbaa !12
  %469 = load i8, ptr %qend_innerp, align 1, !tbaa !14
  %470 = load i32, ptr %pass.addr, align 4, !tbaa !14
  call void @compute_qend_local(ptr noundef %435, ptr noundef %qend_antisense_paths, i32 noundef 0, ptr noundef %436, ptr noundef %437, i32 noundef %438, ptr noundef %439, ptr noundef %440, ptr noundef %441, i32 noundef %442, ptr noundef %443, ptr noundef %444, ptr noundef %445, ptr noundef %446, ptr noundef %447, ptr noundef %448, ptr noundef %449, ptr noundef %450, ptr noundef %451, i32 noundef %452, i32 noundef %453, i32 noundef %454, ptr noundef %455, ptr noundef %456, ptr noundef %457, ptr noundef %458, ptr noundef %459, ptr noundef %460, ptr noundef %461, ptr noundef %462, i32 noundef %463, i32 noundef %464, i32 noundef %465, i32 noundef %466, i8 noundef zeroext %467, i32 noundef %468, i32 noundef 1, i8 noundef zeroext %469, i8 noundef zeroext 0, i32 noundef %470)
  %471 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %472 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %473 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %474 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %475 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  call void @Path_free(ptr noundef %newpath, ptr noundef %471, ptr noundef %472, ptr noundef %473, ptr noundef %474, ptr noundef %475)
  br label %if.end108

if.end108:                                        ; preds = %if.then107, %if.else100
  br label %if.end109

if.end109:                                        ; preds = %if.end108, %if.then99
  br label %for.inc110

for.inc110:                                       ; preds = %if.end109
  %476 = load ptr, ptr %p, align 8, !tbaa !5
  %call111 = call ptr @List_next(ptr noundef %476)
  store ptr %call111, ptr %p, align 8, !tbaa !5
  br label %for.cond91, !llvm.loop !23

for.end112:                                       ; preds = %for.cond91
  %477 = load ptr, ptr %qend_antisense_paths, align 8, !tbaa !5
  %cmp113 = icmp eq ptr %477, null
  br i1 %cmp113, label %if.then115, label %if.end116

if.then115:                                       ; preds = %for.end112
  %478 = load ptr, ptr %unextended_antisense_paths.addr, align 8, !tbaa !5
  %479 = load ptr, ptr %path, align 8, !tbaa !5
  %480 = load ptr, ptr %queryptr.addr, align 8, !tbaa !5
  %481 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %482 = load ptr, ptr %mismatch_positions_alloc.addr, align 8, !tbaa !5
  %483 = load ptr, ptr %novel_diagonals_alloc.addr, align 8, !tbaa !5
  %484 = load ptr, ptr %localdb_alloc.addr, align 8, !tbaa !5
  %485 = load i32, ptr %streamspace_max_alloc.addr, align 4, !tbaa !12
  %486 = load ptr, ptr %streamspace_alloc.addr, align 8, !tbaa !5
  %487 = load ptr, ptr %streamptr_alloc.addr, align 8, !tbaa !5
  %488 = load ptr, ptr %streamsize_alloc.addr, align 8, !tbaa !5
  %489 = load ptr, ptr %mergeinfo.addr, align 8, !tbaa !5
  %490 = load ptr, ptr %indelinfo.addr, align 8, !tbaa !5
  %491 = load ptr, ptr %spliceinfo.addr, align 8, !tbaa !5
  %492 = load ptr, ptr %knownsplicing.addr, align 8, !tbaa !5
  %493 = load ptr, ptr %knownindels.addr, align 8, !tbaa !5
  %494 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %495 = load i32, ptr %chrnum.addr, align 4, !tbaa !12
  %496 = load i32, ptr %chroffset.addr, align 4, !tbaa !12
  %497 = load i32, ptr %chrhigh.addr, align 4, !tbaa !12
  %498 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %499 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %500 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %501 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %502 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  %503 = load ptr, ptr %vectorpool.addr, align 8, !tbaa !5
  %504 = load ptr, ptr %hitlistpool.addr, align 8, !tbaa !5
  %505 = load ptr, ptr %spliceendsgen.addr, align 8, !tbaa !5
  %506 = load i32, ptr %max_insertionlen.addr, align 4, !tbaa !12
  %507 = load i32, ptr %max_deletionlen.addr, align 4, !tbaa !12
  %508 = load i32, ptr %nmismatches_allowed.addr, align 4, !tbaa !12
  %509 = load i32, ptr %overall_end_distance.addr, align 4, !tbaa !12
  %510 = load i8, ptr %plusp.addr, align 1, !tbaa !14
  %511 = load i32, ptr %genestrand.addr, align 4, !tbaa !12
  %512 = load i8, ptr %qend_innerp, align 1, !tbaa !14
  %513 = load i32, ptr %pass.addr, align 4, !tbaa !14
  call void @compute_qend_local(ptr noundef %478, ptr noundef %qend_antisense_paths, i32 noundef 0, ptr noundef %479, ptr noundef %480, i32 noundef %481, ptr noundef %482, ptr noundef %483, ptr noundef %484, i32 noundef %485, ptr noundef %486, ptr noundef %487, ptr noundef %488, ptr noundef %489, ptr noundef %490, ptr noundef %491, ptr noundef %492, ptr noundef %493, ptr noundef %494, i32 noundef %495, i32 noundef %496, i32 noundef %497, ptr noundef %498, ptr noundef %499, ptr noundef %500, ptr noundef %501, ptr noundef %502, ptr noundef %503, ptr noundef %504, ptr noundef %505, i32 noundef %506, i32 noundef %507, i32 noundef %508, i32 noundef %509, i8 noundef zeroext %510, i32 noundef %511, i32 noundef 1, i8 noundef zeroext %512, i8 noundef zeroext 0, i32 noundef %513)
  br label %if.end116

if.end116:                                        ; preds = %if.then115, %for.end112
  %514 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %515 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %516 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %517 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %518 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  call void @Path_free(ptr noundef %path, ptr noundef %514, ptr noundef %515, ptr noundef %516, ptr noundef %517, ptr noundef %518)
  br label %if.end117

if.end117:                                        ; preds = %if.end116, %if.end85
  %519 = load ptr, ptr %qstart_sense_paths, align 8, !tbaa !5
  %cmp118 = icmp ne ptr %519, null
  br i1 %cmp118, label %land.lhs.true, label %if.else124

land.lhs.true:                                    ; preds = %if.end117
  %520 = load ptr, ptr %qend_sense_paths, align 8, !tbaa !5
  %cmp120 = icmp ne ptr %520, null
  br i1 %cmp120, label %if.then122, label %if.else124

if.then122:                                       ; preds = %land.lhs.true
  %521 = load ptr, ptr %found_score.addr, align 8, !tbaa !5
  %522 = load ptr, ptr %qstart_sense_paths, align 8, !tbaa !5
  %523 = load ptr, ptr %qend_sense_paths, align 8, !tbaa !5
  %524 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %525 = load ptr, ptr %query_compress_fwd.addr, align 8, !tbaa !5
  %526 = load ptr, ptr %query_compress_rev.addr, align 8, !tbaa !5
  %527 = load ptr, ptr %queryptr.addr, align 8, !tbaa !5
  %528 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %529 = load i8, ptr %plusp.addr, align 1, !tbaa !14
  %530 = load i32, ptr %genestrand.addr, align 4, !tbaa !12
  %531 = load i32, ptr %chrnum.addr, align 4, !tbaa !12
  %532 = load i32, ptr %chroffset.addr, align 4, !tbaa !12
  %533 = load i32, ptr %chrhigh.addr, align 4, !tbaa !12
  %534 = load ptr, ptr %mismatch_positions_alloc.addr, align 8, !tbaa !5
  %535 = load ptr, ptr %knownsplicing.addr, align 8, !tbaa !5
  %536 = load ptr, ptr %spliceendsgen.addr, align 8, !tbaa !5
  %537 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %538 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %539 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %540 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %541 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  %542 = load ptr, ptr %vectorpool.addr, align 8, !tbaa !5
  %543 = load ptr, ptr %hitlistpool.addr, align 8, !tbaa !5
  %544 = load i32, ptr %method.addr, align 4, !tbaa !14
  %545 = load i32, ptr %nmismatches_allowed.addr, align 4, !tbaa !12
  %call123 = call ptr @combine_leftright_paths(ptr noundef %521, ptr noundef %522, ptr noundef %523, ptr noundef %524, ptr noundef %525, ptr noundef %526, ptr noundef %527, i32 noundef %528, i8 noundef zeroext %529, i32 noundef %530, i32 noundef 2, i32 noundef %531, i32 noundef %532, i32 noundef %533, ptr noundef %534, ptr noundef %535, ptr noundef %536, ptr noundef %537, ptr noundef %538, ptr noundef %539, ptr noundef %540, ptr noundef %541, ptr noundef %542, ptr noundef %543, i32 noundef %544, i32 noundef %545)
  store ptr %call123, ptr %combined_sense_paths, align 8, !tbaa !5
  %546 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %547 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %548 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %549 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %550 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  %551 = load ptr, ptr %hitlistpool.addr, align 8, !tbaa !5
  call void @Path_gc(ptr noundef %qstart_sense_paths, ptr noundef %546, ptr noundef %547, ptr noundef %548, ptr noundef %549, ptr noundef %550, ptr noundef %551)
  %552 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %553 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %554 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %555 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %556 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  %557 = load ptr, ptr %hitlistpool.addr, align 8, !tbaa !5
  call void @Path_gc(ptr noundef %qend_sense_paths, ptr noundef %552, ptr noundef %553, ptr noundef %554, ptr noundef %555, ptr noundef %556, ptr noundef %557)
  br label %if.end144

if.else124:                                       ; preds = %land.lhs.true, %if.end117
  %558 = load ptr, ptr %qstart_sense_paths, align 8, !tbaa !5
  %cmp125 = icmp ne ptr %558, null
  br i1 %cmp125, label %if.then127, label %if.else128

if.then127:                                       ; preds = %if.else124
  %559 = load ptr, ptr %qstart_sense_paths, align 8, !tbaa !5
  store ptr %559, ptr %combined_sense_paths, align 8, !tbaa !5
  br label %if.end143

if.else128:                                       ; preds = %if.else124
  %560 = load ptr, ptr %qend_sense_paths, align 8, !tbaa !5
  %cmp129 = icmp ne ptr %560, null
  br i1 %cmp129, label %if.then131, label %if.else141

if.then131:                                       ; preds = %if.else128
  %561 = load ptr, ptr %qend_sense_paths, align 8, !tbaa !5
  store ptr %561, ptr %combined_sense_paths, align 8, !tbaa !5
  %562 = load ptr, ptr %combined_sense_paths, align 8, !tbaa !5
  store ptr %562, ptr %p, align 8, !tbaa !5
  br label %for.cond132

for.cond132:                                      ; preds = %for.inc138, %if.then131
  %563 = load ptr, ptr %p, align 8, !tbaa !5
  %cmp133 = icmp ne ptr %563, null
  br i1 %cmp133, label %for.body135, label %for.end140

for.body135:                                      ; preds = %for.cond132
  %564 = load ptr, ptr %p, align 8, !tbaa !5
  %call136 = call ptr @List_head(ptr noundef %564)
  %call137 = call ptr @Path_reverse(ptr noundef %call136, i8 noundef zeroext 1)
  br label %for.inc138

for.inc138:                                       ; preds = %for.body135
  %565 = load ptr, ptr %p, align 8, !tbaa !5
  %call139 = call ptr @List_next(ptr noundef %565)
  store ptr %call139, ptr %p, align 8, !tbaa !5
  br label %for.cond132, !llvm.loop !24

for.end140:                                       ; preds = %for.cond132
  br label %if.end142

if.else141:                                       ; preds = %if.else128
  store ptr null, ptr %combined_sense_paths, align 8, !tbaa !5
  br label %if.end142

if.end142:                                        ; preds = %if.else141, %for.end140
  br label %if.end143

if.end143:                                        ; preds = %if.end142, %if.then127
  br label %if.end144

if.end144:                                        ; preds = %if.end143, %if.then122
  %566 = load ptr, ptr %qstart_antisense_paths, align 8, !tbaa !5
  %cmp145 = icmp ne ptr %566, null
  br i1 %cmp145, label %land.lhs.true147, label %if.else152

land.lhs.true147:                                 ; preds = %if.end144
  %567 = load ptr, ptr %qend_antisense_paths, align 8, !tbaa !5
  %cmp148 = icmp ne ptr %567, null
  br i1 %cmp148, label %if.then150, label %if.else152

if.then150:                                       ; preds = %land.lhs.true147
  %568 = load ptr, ptr %found_score.addr, align 8, !tbaa !5
  %569 = load ptr, ptr %qstart_antisense_paths, align 8, !tbaa !5
  %570 = load ptr, ptr %qend_antisense_paths, align 8, !tbaa !5
  %571 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %572 = load ptr, ptr %query_compress_fwd.addr, align 8, !tbaa !5
  %573 = load ptr, ptr %query_compress_rev.addr, align 8, !tbaa !5
  %574 = load ptr, ptr %queryptr.addr, align 8, !tbaa !5
  %575 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %576 = load i8, ptr %plusp.addr, align 1, !tbaa !14
  %577 = load i32, ptr %genestrand.addr, align 4, !tbaa !12
  %578 = load i32, ptr %chrnum.addr, align 4, !tbaa !12
  %579 = load i32, ptr %chroffset.addr, align 4, !tbaa !12
  %580 = load i32, ptr %chrhigh.addr, align 4, !tbaa !12
  %581 = load ptr, ptr %mismatch_positions_alloc.addr, align 8, !tbaa !5
  %582 = load ptr, ptr %knownsplicing.addr, align 8, !tbaa !5
  %583 = load ptr, ptr %spliceendsgen.addr, align 8, !tbaa !5
  %584 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %585 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %586 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %587 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %588 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  %589 = load ptr, ptr %vectorpool.addr, align 8, !tbaa !5
  %590 = load ptr, ptr %hitlistpool.addr, align 8, !tbaa !5
  %591 = load i32, ptr %method.addr, align 4, !tbaa !14
  %592 = load i32, ptr %nmismatches_allowed.addr, align 4, !tbaa !12
  %call151 = call ptr @combine_leftright_paths(ptr noundef %568, ptr noundef %569, ptr noundef %570, ptr noundef %571, ptr noundef %572, ptr noundef %573, ptr noundef %574, i32 noundef %575, i8 noundef zeroext %576, i32 noundef %577, i32 noundef 1, i32 noundef %578, i32 noundef %579, i32 noundef %580, ptr noundef %581, ptr noundef %582, ptr noundef %583, ptr noundef %584, ptr noundef %585, ptr noundef %586, ptr noundef %587, ptr noundef %588, ptr noundef %589, ptr noundef %590, i32 noundef %591, i32 noundef %592)
  store ptr %call151, ptr %combined_antisense_paths, align 8, !tbaa !5
  %593 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %594 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %595 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %596 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %597 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  %598 = load ptr, ptr %hitlistpool.addr, align 8, !tbaa !5
  call void @Path_gc(ptr noundef %qstart_antisense_paths, ptr noundef %593, ptr noundef %594, ptr noundef %595, ptr noundef %596, ptr noundef %597, ptr noundef %598)
  %599 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %600 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %601 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %602 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %603 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  %604 = load ptr, ptr %hitlistpool.addr, align 8, !tbaa !5
  call void @Path_gc(ptr noundef %qend_antisense_paths, ptr noundef %599, ptr noundef %600, ptr noundef %601, ptr noundef %602, ptr noundef %603, ptr noundef %604)
  br label %if.end172

if.else152:                                       ; preds = %land.lhs.true147, %if.end144
  %605 = load ptr, ptr %qstart_antisense_paths, align 8, !tbaa !5
  %cmp153 = icmp ne ptr %605, null
  br i1 %cmp153, label %if.then155, label %if.else156

if.then155:                                       ; preds = %if.else152
  %606 = load ptr, ptr %qstart_antisense_paths, align 8, !tbaa !5
  store ptr %606, ptr %combined_antisense_paths, align 8, !tbaa !5
  br label %if.end171

if.else156:                                       ; preds = %if.else152
  %607 = load ptr, ptr %qend_antisense_paths, align 8, !tbaa !5
  %cmp157 = icmp ne ptr %607, null
  br i1 %cmp157, label %if.then159, label %if.else169

if.then159:                                       ; preds = %if.else156
  %608 = load ptr, ptr %qend_antisense_paths, align 8, !tbaa !5
  store ptr %608, ptr %combined_antisense_paths, align 8, !tbaa !5
  %609 = load ptr, ptr %combined_antisense_paths, align 8, !tbaa !5
  store ptr %609, ptr %p, align 8, !tbaa !5
  br label %for.cond160

for.cond160:                                      ; preds = %for.inc166, %if.then159
  %610 = load ptr, ptr %p, align 8, !tbaa !5
  %cmp161 = icmp ne ptr %610, null
  br i1 %cmp161, label %for.body163, label %for.end168

for.body163:                                      ; preds = %for.cond160
  %611 = load ptr, ptr %p, align 8, !tbaa !5
  %call164 = call ptr @List_head(ptr noundef %611)
  %call165 = call ptr @Path_reverse(ptr noundef %call164, i8 noundef zeroext 1)
  br label %for.inc166

for.inc166:                                       ; preds = %for.body163
  %612 = load ptr, ptr %p, align 8, !tbaa !5
  %call167 = call ptr @List_next(ptr noundef %612)
  store ptr %call167, ptr %p, align 8, !tbaa !5
  br label %for.cond160, !llvm.loop !25

for.end168:                                       ; preds = %for.cond160
  br label %if.end170

if.else169:                                       ; preds = %if.else156
  store ptr null, ptr %combined_antisense_paths, align 8, !tbaa !5
  br label %if.end170

if.end170:                                        ; preds = %if.else169, %for.end168
  br label %if.end171

if.end171:                                        ; preds = %if.end170, %if.then155
  br label %if.end172

if.end172:                                        ; preds = %if.end171, %if.then150
  store i8 0, ptr %sense_completep, align 1, !tbaa !14
  %613 = load ptr, ptr %combined_sense_paths, align 8, !tbaa !5
  store ptr %613, ptr %p, align 8, !tbaa !5
  br label %for.cond173

for.cond173:                                      ; preds = %for.inc184, %if.end172
  %614 = load ptr, ptr %p, align 8, !tbaa !5
  %cmp174 = icmp ne ptr %614, null
  br i1 %cmp174, label %for.body176, label %for.end186

for.body176:                                      ; preds = %for.cond173
  %615 = load ptr, ptr %p, align 8, !tbaa !5
  %call177 = call ptr @List_head(ptr noundef %615)
  store ptr %call177, ptr %path, align 8, !tbaa !5
  %616 = load ptr, ptr %path, align 8, !tbaa !5
  %call178 = call zeroext i8 @Path_unextendedp(ptr noundef %616, i32 noundef 0, i8 noundef zeroext 1)
  %conv179 = zext i8 %call178 to i32
  %cmp180 = icmp eq i32 %conv179, 0
  br i1 %cmp180, label %if.then182, label %if.end183

if.then182:                                       ; preds = %for.body176
  store i8 1, ptr %sense_completep, align 1, !tbaa !14
  br label %if.end183

if.end183:                                        ; preds = %if.then182, %for.body176
  br label %for.inc184

for.inc184:                                       ; preds = %if.end183
  %617 = load ptr, ptr %p, align 8, !tbaa !5
  %call185 = call ptr @List_next(ptr noundef %617)
  store ptr %call185, ptr %p, align 8, !tbaa !5
  br label %for.cond173, !llvm.loop !26

for.end186:                                       ; preds = %for.cond173
  store i8 0, ptr %antisense_completep, align 1, !tbaa !14
  %618 = load ptr, ptr %combined_antisense_paths, align 8, !tbaa !5
  store ptr %618, ptr %p, align 8, !tbaa !5
  br label %for.cond187

for.cond187:                                      ; preds = %for.inc198, %for.end186
  %619 = load ptr, ptr %p, align 8, !tbaa !5
  %cmp188 = icmp ne ptr %619, null
  br i1 %cmp188, label %for.body190, label %for.end200

for.body190:                                      ; preds = %for.cond187
  %620 = load ptr, ptr %p, align 8, !tbaa !5
  %call191 = call ptr @List_head(ptr noundef %620)
  store ptr %call191, ptr %path, align 8, !tbaa !5
  %621 = load ptr, ptr %path, align 8, !tbaa !5
  %call192 = call zeroext i8 @Path_unextendedp(ptr noundef %621, i32 noundef 0, i8 noundef zeroext 1)
  %conv193 = zext i8 %call192 to i32
  %cmp194 = icmp eq i32 %conv193, 0
  br i1 %cmp194, label %if.then196, label %if.end197

if.then196:                                       ; preds = %for.body190
  store i8 1, ptr %antisense_completep, align 1, !tbaa !14
  br label %if.end197

if.end197:                                        ; preds = %if.then196, %for.body190
  br label %for.inc198

for.inc198:                                       ; preds = %if.end197
  %622 = load ptr, ptr %p, align 8, !tbaa !5
  %call199 = call ptr @List_next(ptr noundef %622)
  store ptr %call199, ptr %p, align 8, !tbaa !5
  br label %for.cond187, !llvm.loop !27

for.end200:                                       ; preds = %for.cond187
  %623 = load i8, ptr %sense_completep, align 1, !tbaa !14
  %conv201 = zext i8 %623 to i32
  %cmp202 = icmp eq i32 %conv201, 1
  br i1 %cmp202, label %land.lhs.true204, label %if.else239

land.lhs.true204:                                 ; preds = %for.end200
  %624 = load i8, ptr %antisense_completep, align 1, !tbaa !14
  %conv205 = zext i8 %624 to i32
  %cmp206 = icmp eq i32 %conv205, 1
  br i1 %cmp206, label %if.then208, label %if.else239

if.then208:                                       ; preds = %land.lhs.true204
  %625 = load ptr, ptr %combined_sense_paths, align 8, !tbaa !5
  store ptr %625, ptr %p, align 8, !tbaa !5
  br label %for.cond209

for.cond209:                                      ; preds = %for.inc221, %if.then208
  %626 = load ptr, ptr %p, align 8, !tbaa !5
  %cmp210 = icmp ne ptr %626, null
  br i1 %cmp210, label %for.body212, label %for.end223

for.body212:                                      ; preds = %for.cond209
  %627 = load ptr, ptr %p, align 8, !tbaa !5
  %call213 = call ptr @List_head(ptr noundef %627)
  store ptr %call213, ptr %path, align 8, !tbaa !5
  %628 = load ptr, ptr %sense_paths.addr, align 8, !tbaa !5
  %629 = load ptr, ptr %628, align 8, !tbaa !5
  %630 = load ptr, ptr %hitlistpool.addr, align 8, !tbaa !5
  %631 = load ptr, ptr %path, align 8, !tbaa !5
  %call214 = call ptr @Path_expect_fwd(ptr noundef %631)
  %call215 = call ptr @Hitlist_push(ptr noundef %629, ptr noundef %630, ptr noundef %call214)
  %632 = load ptr, ptr %sense_paths.addr, align 8, !tbaa !5
  store ptr %call215, ptr %632, align 8, !tbaa !5
  %633 = load ptr, ptr @transcriptome, align 8, !tbaa !5
  %cmp216 = icmp ne ptr %633, null
  br i1 %cmp216, label %if.then218, label %if.end220

if.then218:                                       ; preds = %for.body212
  %634 = load ptr, ptr %found_score.addr, align 8, !tbaa !5
  %635 = load ptr, ptr %found_transcriptp.addr, align 8, !tbaa !5
  %636 = load ptr, ptr %sense_paths.addr, align 8, !tbaa !5
  %637 = load ptr, ptr %636, align 8, !tbaa !5
  %638 = load ptr, ptr %path, align 8, !tbaa !5
  %639 = load ptr, ptr %query_compress_fwd.addr, align 8, !tbaa !5
  %640 = load ptr, ptr %query_compress_rev.addr, align 8, !tbaa !5
  %641 = load ptr, ptr %queryseq.addr, align 8, !tbaa !5
  %642 = load i32, ptr %nmismatches_allowed.addr, align 4, !tbaa !12
  %643 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %644 = load ptr, ptr %uintlistpool.addr, align 8, !tbaa !5
  %645 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %646 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %647 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  %648 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %649 = load ptr, ptr %vectorpool.addr, align 8, !tbaa !5
  %650 = load ptr, ptr %hitlistpool.addr, align 8, !tbaa !5
  %call219 = call ptr @try_repairs(ptr noundef %634, ptr noundef %635, ptr noundef %637, ptr noundef %638, ptr noundef %639, ptr noundef %640, ptr noundef %641, i32 noundef %642, ptr noundef %643, ptr noundef %644, ptr noundef %645, ptr noundef %646, ptr noundef %647, ptr noundef %648, ptr noundef %649, ptr noundef %650)
  %651 = load ptr, ptr %sense_paths.addr, align 8, !tbaa !5
  store ptr %call219, ptr %651, align 8, !tbaa !5
  br label %if.end220

if.end220:                                        ; preds = %if.then218, %for.body212
  br label %for.inc221

for.inc221:                                       ; preds = %if.end220
  %652 = load ptr, ptr %p, align 8, !tbaa !5
  %call222 = call ptr @List_next(ptr noundef %652)
  store ptr %call222, ptr %p, align 8, !tbaa !5
  br label %for.cond209, !llvm.loop !28

for.end223:                                       ; preds = %for.cond209
  %653 = load ptr, ptr %combined_antisense_paths, align 8, !tbaa !5
  store ptr %653, ptr %p, align 8, !tbaa !5
  br label %for.cond224

for.cond224:                                      ; preds = %for.inc236, %for.end223
  %654 = load ptr, ptr %p, align 8, !tbaa !5
  %cmp225 = icmp ne ptr %654, null
  br i1 %cmp225, label %for.body227, label %for.end238

for.body227:                                      ; preds = %for.cond224
  %655 = load ptr, ptr %p, align 8, !tbaa !5
  %call228 = call ptr @List_head(ptr noundef %655)
  store ptr %call228, ptr %path, align 8, !tbaa !5
  %656 = load ptr, ptr %antisense_paths.addr, align 8, !tbaa !5
  %657 = load ptr, ptr %656, align 8, !tbaa !5
  %658 = load ptr, ptr %hitlistpool.addr, align 8, !tbaa !5
  %659 = load ptr, ptr %path, align 8, !tbaa !5
  %call229 = call ptr @Path_expect_fwd(ptr noundef %659)
  %call230 = call ptr @Hitlist_push(ptr noundef %657, ptr noundef %658, ptr noundef %call229)
  %660 = load ptr, ptr %antisense_paths.addr, align 8, !tbaa !5
  store ptr %call230, ptr %660, align 8, !tbaa !5
  %661 = load ptr, ptr @transcriptome, align 8, !tbaa !5
  %cmp231 = icmp ne ptr %661, null
  br i1 %cmp231, label %if.then233, label %if.end235

if.then233:                                       ; preds = %for.body227
  %662 = load ptr, ptr %found_score.addr, align 8, !tbaa !5
  %663 = load ptr, ptr %found_transcriptp.addr, align 8, !tbaa !5
  %664 = load ptr, ptr %antisense_paths.addr, align 8, !tbaa !5
  %665 = load ptr, ptr %664, align 8, !tbaa !5
  %666 = load ptr, ptr %path, align 8, !tbaa !5
  %667 = load ptr, ptr %query_compress_fwd.addr, align 8, !tbaa !5
  %668 = load ptr, ptr %query_compress_rev.addr, align 8, !tbaa !5
  %669 = load ptr, ptr %queryseq.addr, align 8, !tbaa !5
  %670 = load i32, ptr %nmismatches_allowed.addr, align 4, !tbaa !12
  %671 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %672 = load ptr, ptr %uintlistpool.addr, align 8, !tbaa !5
  %673 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %674 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %675 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  %676 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %677 = load ptr, ptr %vectorpool.addr, align 8, !tbaa !5
  %678 = load ptr, ptr %hitlistpool.addr, align 8, !tbaa !5
  %call234 = call ptr @try_repairs(ptr noundef %662, ptr noundef %663, ptr noundef %665, ptr noundef %666, ptr noundef %667, ptr noundef %668, ptr noundef %669, i32 noundef %670, ptr noundef %671, ptr noundef %672, ptr noundef %673, ptr noundef %674, ptr noundef %675, ptr noundef %676, ptr noundef %677, ptr noundef %678)
  %679 = load ptr, ptr %antisense_paths.addr, align 8, !tbaa !5
  store ptr %call234, ptr %679, align 8, !tbaa !5
  br label %if.end235

if.end235:                                        ; preds = %if.then233, %for.body227
  br label %for.inc236

for.inc236:                                       ; preds = %if.end235
  %680 = load ptr, ptr %p, align 8, !tbaa !5
  %call237 = call ptr @List_next(ptr noundef %680)
  store ptr %call237, ptr %p, align 8, !tbaa !5
  br label %for.cond224, !llvm.loop !29

for.end238:                                       ; preds = %for.cond224
  br label %if.end322

if.else239:                                       ; preds = %land.lhs.true204, %for.end200
  %681 = load i8, ptr %sense_completep, align 1, !tbaa !14
  %conv240 = zext i8 %681 to i32
  %cmp241 = icmp eq i32 %conv240, 1
  br i1 %cmp241, label %if.then243, label %if.else269

if.then243:                                       ; preds = %if.else239
  %682 = load ptr, ptr %combined_sense_paths, align 8, !tbaa !5
  store ptr %682, ptr %p, align 8, !tbaa !5
  br label %for.cond244

for.cond244:                                      ; preds = %for.inc256, %if.then243
  %683 = load ptr, ptr %p, align 8, !tbaa !5
  %cmp245 = icmp ne ptr %683, null
  br i1 %cmp245, label %for.body247, label %for.end258

for.body247:                                      ; preds = %for.cond244
  %684 = load ptr, ptr %p, align 8, !tbaa !5
  %call248 = call ptr @List_head(ptr noundef %684)
  store ptr %call248, ptr %path, align 8, !tbaa !5
  %685 = load ptr, ptr %sense_paths.addr, align 8, !tbaa !5
  %686 = load ptr, ptr %685, align 8, !tbaa !5
  %687 = load ptr, ptr %hitlistpool.addr, align 8, !tbaa !5
  %688 = load ptr, ptr %path, align 8, !tbaa !5
  %call249 = call ptr @Path_expect_fwd(ptr noundef %688)
  %call250 = call ptr @Hitlist_push(ptr noundef %686, ptr noundef %687, ptr noundef %call249)
  %689 = load ptr, ptr %sense_paths.addr, align 8, !tbaa !5
  store ptr %call250, ptr %689, align 8, !tbaa !5
  %690 = load ptr, ptr @transcriptome, align 8, !tbaa !5
  %cmp251 = icmp ne ptr %690, null
  br i1 %cmp251, label %if.then253, label %if.end255

if.then253:                                       ; preds = %for.body247
  %691 = load ptr, ptr %found_score.addr, align 8, !tbaa !5
  %692 = load ptr, ptr %found_transcriptp.addr, align 8, !tbaa !5
  %693 = load ptr, ptr %sense_paths.addr, align 8, !tbaa !5
  %694 = load ptr, ptr %693, align 8, !tbaa !5
  %695 = load ptr, ptr %path, align 8, !tbaa !5
  %696 = load ptr, ptr %query_compress_fwd.addr, align 8, !tbaa !5
  %697 = load ptr, ptr %query_compress_rev.addr, align 8, !tbaa !5
  %698 = load ptr, ptr %queryseq.addr, align 8, !tbaa !5
  %699 = load i32, ptr %nmismatches_allowed.addr, align 4, !tbaa !12
  %700 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %701 = load ptr, ptr %uintlistpool.addr, align 8, !tbaa !5
  %702 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %703 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %704 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  %705 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %706 = load ptr, ptr %vectorpool.addr, align 8, !tbaa !5
  %707 = load ptr, ptr %hitlistpool.addr, align 8, !tbaa !5
  %call254 = call ptr @try_repairs(ptr noundef %691, ptr noundef %692, ptr noundef %694, ptr noundef %695, ptr noundef %696, ptr noundef %697, ptr noundef %698, i32 noundef %699, ptr noundef %700, ptr noundef %701, ptr noundef %702, ptr noundef %703, ptr noundef %704, ptr noundef %705, ptr noundef %706, ptr noundef %707)
  %708 = load ptr, ptr %sense_paths.addr, align 8, !tbaa !5
  store ptr %call254, ptr %708, align 8, !tbaa !5
  br label %if.end255

if.end255:                                        ; preds = %if.then253, %for.body247
  br label %for.inc256

for.inc256:                                       ; preds = %if.end255
  %709 = load ptr, ptr %p, align 8, !tbaa !5
  %call257 = call ptr @List_next(ptr noundef %709)
  store ptr %call257, ptr %p, align 8, !tbaa !5
  br label %for.cond244, !llvm.loop !30

for.end258:                                       ; preds = %for.cond244
  %710 = load ptr, ptr %combined_antisense_paths, align 8, !tbaa !5
  store ptr %710, ptr %p, align 8, !tbaa !5
  br label %for.cond259

for.cond259:                                      ; preds = %for.inc266, %for.end258
  %711 = load ptr, ptr %p, align 8, !tbaa !5
  %cmp260 = icmp ne ptr %711, null
  br i1 %cmp260, label %for.body262, label %for.end268

for.body262:                                      ; preds = %for.cond259
  %712 = load ptr, ptr %p, align 8, !tbaa !5
  %call263 = call ptr @List_head(ptr noundef %712)
  store ptr %call263, ptr %path, align 8, !tbaa !5
  %713 = load ptr, ptr %unextended_antisense_paths.addr, align 8, !tbaa !5
  %714 = load ptr, ptr %713, align 8, !tbaa !5
  %715 = load ptr, ptr %hitlistpool.addr, align 8, !tbaa !5
  %716 = load ptr, ptr %path, align 8, !tbaa !5
  %call264 = call ptr @Path_expect_fwd(ptr noundef %716)
  %call265 = call ptr @Hitlist_push(ptr noundef %714, ptr noundef %715, ptr noundef %call264)
  %717 = load ptr, ptr %unextended_antisense_paths.addr, align 8, !tbaa !5
  store ptr %call265, ptr %717, align 8, !tbaa !5
  br label %for.inc266

for.inc266:                                       ; preds = %for.body262
  %718 = load ptr, ptr %p, align 8, !tbaa !5
  %call267 = call ptr @List_next(ptr noundef %718)
  store ptr %call267, ptr %p, align 8, !tbaa !5
  br label %for.cond259, !llvm.loop !31

for.end268:                                       ; preds = %for.cond259
  br label %if.end321

if.else269:                                       ; preds = %if.else239
  %719 = load i8, ptr %antisense_completep, align 1, !tbaa !14
  %conv270 = zext i8 %719 to i32
  %cmp271 = icmp eq i32 %conv270, 1
  br i1 %cmp271, label %if.then273, label %if.else299

if.then273:                                       ; preds = %if.else269
  %720 = load ptr, ptr %combined_sense_paths, align 8, !tbaa !5
  store ptr %720, ptr %p, align 8, !tbaa !5
  br label %for.cond274

for.cond274:                                      ; preds = %for.inc281, %if.then273
  %721 = load ptr, ptr %p, align 8, !tbaa !5
  %cmp275 = icmp ne ptr %721, null
  br i1 %cmp275, label %for.body277, label %for.end283

for.body277:                                      ; preds = %for.cond274
  %722 = load ptr, ptr %p, align 8, !tbaa !5
  %call278 = call ptr @List_head(ptr noundef %722)
  store ptr %call278, ptr %path, align 8, !tbaa !5
  %723 = load ptr, ptr %unextended_sense_paths.addr, align 8, !tbaa !5
  %724 = load ptr, ptr %723, align 8, !tbaa !5
  %725 = load ptr, ptr %hitlistpool.addr, align 8, !tbaa !5
  %726 = load ptr, ptr %path, align 8, !tbaa !5
  %call279 = call ptr @Path_expect_fwd(ptr noundef %726)
  %call280 = call ptr @Hitlist_push(ptr noundef %724, ptr noundef %725, ptr noundef %call279)
  %727 = load ptr, ptr %unextended_sense_paths.addr, align 8, !tbaa !5
  store ptr %call280, ptr %727, align 8, !tbaa !5
  br label %for.inc281

for.inc281:                                       ; preds = %for.body277
  %728 = load ptr, ptr %p, align 8, !tbaa !5
  %call282 = call ptr @List_next(ptr noundef %728)
  store ptr %call282, ptr %p, align 8, !tbaa !5
  br label %for.cond274, !llvm.loop !32

for.end283:                                       ; preds = %for.cond274
  %729 = load ptr, ptr %combined_antisense_paths, align 8, !tbaa !5
  store ptr %729, ptr %p, align 8, !tbaa !5
  br label %for.cond284

for.cond284:                                      ; preds = %for.inc296, %for.end283
  %730 = load ptr, ptr %p, align 8, !tbaa !5
  %cmp285 = icmp ne ptr %730, null
  br i1 %cmp285, label %for.body287, label %for.end298

for.body287:                                      ; preds = %for.cond284
  %731 = load ptr, ptr %p, align 8, !tbaa !5
  %call288 = call ptr @List_head(ptr noundef %731)
  store ptr %call288, ptr %path, align 8, !tbaa !5
  %732 = load ptr, ptr %antisense_paths.addr, align 8, !tbaa !5
  %733 = load ptr, ptr %732, align 8, !tbaa !5
  %734 = load ptr, ptr %hitlistpool.addr, align 8, !tbaa !5
  %735 = load ptr, ptr %path, align 8, !tbaa !5
  %call289 = call ptr @Path_expect_fwd(ptr noundef %735)
  %call290 = call ptr @Hitlist_push(ptr noundef %733, ptr noundef %734, ptr noundef %call289)
  %736 = load ptr, ptr %antisense_paths.addr, align 8, !tbaa !5
  store ptr %call290, ptr %736, align 8, !tbaa !5
  %737 = load ptr, ptr @transcriptome, align 8, !tbaa !5
  %cmp291 = icmp ne ptr %737, null
  br i1 %cmp291, label %if.then293, label %if.end295

if.then293:                                       ; preds = %for.body287
  %738 = load ptr, ptr %found_score.addr, align 8, !tbaa !5
  %739 = load ptr, ptr %found_transcriptp.addr, align 8, !tbaa !5
  %740 = load ptr, ptr %antisense_paths.addr, align 8, !tbaa !5
  %741 = load ptr, ptr %740, align 8, !tbaa !5
  %742 = load ptr, ptr %path, align 8, !tbaa !5
  %743 = load ptr, ptr %query_compress_fwd.addr, align 8, !tbaa !5
  %744 = load ptr, ptr %query_compress_rev.addr, align 8, !tbaa !5
  %745 = load ptr, ptr %queryseq.addr, align 8, !tbaa !5
  %746 = load i32, ptr %nmismatches_allowed.addr, align 4, !tbaa !12
  %747 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %748 = load ptr, ptr %uintlistpool.addr, align 8, !tbaa !5
  %749 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %750 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %751 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  %752 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %753 = load ptr, ptr %vectorpool.addr, align 8, !tbaa !5
  %754 = load ptr, ptr %hitlistpool.addr, align 8, !tbaa !5
  %call294 = call ptr @try_repairs(ptr noundef %738, ptr noundef %739, ptr noundef %741, ptr noundef %742, ptr noundef %743, ptr noundef %744, ptr noundef %745, i32 noundef %746, ptr noundef %747, ptr noundef %748, ptr noundef %749, ptr noundef %750, ptr noundef %751, ptr noundef %752, ptr noundef %753, ptr noundef %754)
  %755 = load ptr, ptr %antisense_paths.addr, align 8, !tbaa !5
  store ptr %call294, ptr %755, align 8, !tbaa !5
  br label %if.end295

if.end295:                                        ; preds = %if.then293, %for.body287
  br label %for.inc296

for.inc296:                                       ; preds = %if.end295
  %756 = load ptr, ptr %p, align 8, !tbaa !5
  %call297 = call ptr @List_next(ptr noundef %756)
  store ptr %call297, ptr %p, align 8, !tbaa !5
  br label %for.cond284, !llvm.loop !33

for.end298:                                       ; preds = %for.cond284
  br label %if.end320

if.else299:                                       ; preds = %if.else269
  %757 = load ptr, ptr %combined_sense_paths, align 8, !tbaa !5
  store ptr %757, ptr %p, align 8, !tbaa !5
  br label %for.cond300

for.cond300:                                      ; preds = %for.inc307, %if.else299
  %758 = load ptr, ptr %p, align 8, !tbaa !5
  %cmp301 = icmp ne ptr %758, null
  br i1 %cmp301, label %for.body303, label %for.end309

for.body303:                                      ; preds = %for.cond300
  %759 = load ptr, ptr %p, align 8, !tbaa !5
  %call304 = call ptr @List_head(ptr noundef %759)
  store ptr %call304, ptr %path, align 8, !tbaa !5
  %760 = load ptr, ptr %unextended_sense_paths.addr, align 8, !tbaa !5
  %761 = load ptr, ptr %760, align 8, !tbaa !5
  %762 = load ptr, ptr %hitlistpool.addr, align 8, !tbaa !5
  %763 = load ptr, ptr %path, align 8, !tbaa !5
  %call305 = call ptr @Path_expect_fwd(ptr noundef %763)
  %call306 = call ptr @Hitlist_push(ptr noundef %761, ptr noundef %762, ptr noundef %call305)
  %764 = load ptr, ptr %unextended_sense_paths.addr, align 8, !tbaa !5
  store ptr %call306, ptr %764, align 8, !tbaa !5
  br label %for.inc307

for.inc307:                                       ; preds = %for.body303
  %765 = load ptr, ptr %p, align 8, !tbaa !5
  %call308 = call ptr @List_next(ptr noundef %765)
  store ptr %call308, ptr %p, align 8, !tbaa !5
  br label %for.cond300, !llvm.loop !34

for.end309:                                       ; preds = %for.cond300
  %766 = load ptr, ptr %combined_antisense_paths, align 8, !tbaa !5
  store ptr %766, ptr %p, align 8, !tbaa !5
  br label %for.cond310

for.cond310:                                      ; preds = %for.inc317, %for.end309
  %767 = load ptr, ptr %p, align 8, !tbaa !5
  %cmp311 = icmp ne ptr %767, null
  br i1 %cmp311, label %for.body313, label %for.end319

for.body313:                                      ; preds = %for.cond310
  %768 = load ptr, ptr %p, align 8, !tbaa !5
  %call314 = call ptr @List_head(ptr noundef %768)
  store ptr %call314, ptr %path, align 8, !tbaa !5
  %769 = load ptr, ptr %unextended_antisense_paths.addr, align 8, !tbaa !5
  %770 = load ptr, ptr %769, align 8, !tbaa !5
  %771 = load ptr, ptr %hitlistpool.addr, align 8, !tbaa !5
  %772 = load ptr, ptr %path, align 8, !tbaa !5
  %call315 = call ptr @Path_expect_fwd(ptr noundef %772)
  %call316 = call ptr @Hitlist_push(ptr noundef %770, ptr noundef %771, ptr noundef %call315)
  %773 = load ptr, ptr %unextended_antisense_paths.addr, align 8, !tbaa !5
  store ptr %call316, ptr %773, align 8, !tbaa !5
  br label %for.inc317

for.inc317:                                       ; preds = %for.body313
  %774 = load ptr, ptr %p, align 8, !tbaa !5
  %call318 = call ptr @List_next(ptr noundef %774)
  store ptr %call318, ptr %p, align 8, !tbaa !5
  br label %for.cond310, !llvm.loop !35

for.end319:                                       ; preds = %for.cond310
  br label %if.end320

if.end320:                                        ; preds = %for.end319, %for.end298
  br label %if.end321

if.end321:                                        ; preds = %if.end320, %for.end268
  br label %if.end322

if.end322:                                        ; preds = %if.end321, %for.end238
  %775 = load ptr, ptr %hitlistpool.addr, align 8, !tbaa !5
  call void @Hitlistpool_free_list(ptr noundef %combined_antisense_paths, ptr noundef %775)
  %776 = load ptr, ptr %hitlistpool.addr, align 8, !tbaa !5
  call void @Hitlistpool_free_list(ptr noundef %combined_sense_paths, ptr noundef %776)
  call void @llvm.lifetime.end.p0(i64 1, ptr %antisense_completep) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr %sense_completep) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr %qend_innerp) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr %qstart_innerp) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %univdiag) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %combined_antisense_paths) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %combined_sense_paths) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %qend_antisense_paths) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %qend_sense_paths) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %qstart_antisense_paths) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %qstart_sense_paths) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %newpath) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %path) #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare ptr @Path_new_for_qstart_extension(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef, double noundef, ptr noundef, ptr noundef, ptr noundef) #3

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

; Function Attrs: nounwind uwtable
define internal ptr @attach_unknown_qstart(ptr noundef %path, i32 noundef %low_univdiagonal, i32 noundef %low_qstart, i32 noundef %chrnum, i32 noundef %chroffset, i32 noundef %querylength, ptr noundef %indelinfo, ptr noundef %spliceinfo, ptr noundef %knownsplicing, ptr noundef %query_compress, i8 noundef zeroext %plusp, i32 noundef %genestrand, i32 noundef %max_insertionlen, i32 noundef %max_deletionlen, i32 noundef %nmismatches_allowed, ptr noundef %intlistpool, ptr noundef %univcoordlistpool, ptr noundef %listpool, ptr noundef %pathpool, ptr noundef %transcriptpool, ptr noundef %vectorpool, i32 noundef %try_sensedir, i8 noundef zeroext %salvagep) #1 {
entry:
  %retval = alloca ptr, align 8
  %path.addr = alloca ptr, align 8
  %low_univdiagonal.addr = alloca i32, align 4
  %low_qstart.addr = alloca i32, align 4
  %chrnum.addr = alloca i32, align 4
  %chroffset.addr = alloca i32, align 4
  %querylength.addr = alloca i32, align 4
  %indelinfo.addr = alloca ptr, align 8
  %spliceinfo.addr = alloca ptr, align 8
  %knownsplicing.addr = alloca ptr, align 8
  %query_compress.addr = alloca ptr, align 8
  %plusp.addr = alloca i8, align 1
  %genestrand.addr = alloca i32, align 4
  %max_insertionlen.addr = alloca i32, align 4
  %max_deletionlen.addr = alloca i32, align 4
  %nmismatches_allowed.addr = alloca i32, align 4
  %intlistpool.addr = alloca ptr, align 8
  %univcoordlistpool.addr = alloca ptr, align 8
  %listpool.addr = alloca ptr, align 8
  %pathpool.addr = alloca ptr, align 8
  %transcriptpool.addr = alloca ptr, align 8
  %vectorpool.addr = alloca ptr, align 8
  %try_sensedir.addr = alloca i32, align 4
  %salvagep.addr = alloca i8, align 1
  %newpath = alloca ptr, align 8
  %univdiagonal = alloca i32, align 4
  %low_left = alloca i32, align 4
  %qend = alloca i32, align 4
  %nindels = alloca i32, align 4
  %indel_pos = alloca i32, align 4
  %splice_qpos = alloca i32, align 4
  %splice_qpos_i = alloca i32, align 4
  %splice_qpos_j = alloca i32, align 4
  %middle_univdiagonal = alloca i32, align 4
  %deletionpos = alloca i32, align 4
  %splice_distance = alloca i32, align 4
  %splice_distance_i = alloca i32, align 4
  %splice_distance_j = alloca i32, align 4
  %donor_prob = alloca double, align 8
  %acceptor_prob = alloca double, align 8
  %supporti = alloca i32, align 4
  %supportj = alloca i32, align 4
  %nmismatches_i = alloca i32, align 4
  %nmismatches_j = alloca i32, align 4
  %ref_nmismatches_i = alloca i32, align 4
  %ref_nmismatches_j = alloca i32, align 4
  %nmismatches = alloca i32, align 4
  %ref_nmismatches = alloca i32, align 4
  %nmismatches_middle = alloca i32, align 4
  %ref_nmismatches_middle = alloca i32, align 4
  %nmismatches_indel = alloca i32, align 4
  %ref_nmismatches_indel = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %path, ptr %path.addr, align 8, !tbaa !5
  store i32 %low_univdiagonal, ptr %low_univdiagonal.addr, align 4, !tbaa !12
  store i32 %low_qstart, ptr %low_qstart.addr, align 4, !tbaa !12
  store i32 %chrnum, ptr %chrnum.addr, align 4, !tbaa !12
  store i32 %chroffset, ptr %chroffset.addr, align 4, !tbaa !12
  store i32 %querylength, ptr %querylength.addr, align 4, !tbaa !12
  store ptr %indelinfo, ptr %indelinfo.addr, align 8, !tbaa !5
  store ptr %spliceinfo, ptr %spliceinfo.addr, align 8, !tbaa !5
  store ptr %knownsplicing, ptr %knownsplicing.addr, align 8, !tbaa !5
  store ptr %query_compress, ptr %query_compress.addr, align 8, !tbaa !5
  store i8 %plusp, ptr %plusp.addr, align 1, !tbaa !14
  store i32 %genestrand, ptr %genestrand.addr, align 4, !tbaa !12
  store i32 %max_insertionlen, ptr %max_insertionlen.addr, align 4, !tbaa !12
  store i32 %max_deletionlen, ptr %max_deletionlen.addr, align 4, !tbaa !12
  store i32 %nmismatches_allowed, ptr %nmismatches_allowed.addr, align 4, !tbaa !12
  store ptr %intlistpool, ptr %intlistpool.addr, align 8, !tbaa !5
  store ptr %univcoordlistpool, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  store ptr %listpool, ptr %listpool.addr, align 8, !tbaa !5
  store ptr %pathpool, ptr %pathpool.addr, align 8, !tbaa !5
  store ptr %transcriptpool, ptr %transcriptpool.addr, align 8, !tbaa !5
  store ptr %vectorpool, ptr %vectorpool.addr, align 8, !tbaa !5
  store i32 %try_sensedir, ptr %try_sensedir.addr, align 4, !tbaa !12
  store i8 %salvagep, ptr %salvagep.addr, align 1, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 8, ptr %newpath) #5
  store ptr null, ptr %newpath, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %univdiagonal) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %low_left) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %qend) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %nindels) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %indel_pos) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %splice_qpos) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %splice_qpos_i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %splice_qpos_j) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %middle_univdiagonal) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %deletionpos) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %splice_distance) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %splice_distance_i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %splice_distance_j) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %donor_prob) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %acceptor_prob) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %supporti) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %supportj) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %nmismatches_i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %nmismatches_j) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %ref_nmismatches_i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %ref_nmismatches_j) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %nmismatches) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %ref_nmismatches) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %nmismatches_middle) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %ref_nmismatches_middle) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %nmismatches_indel) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %ref_nmismatches_indel) #5
  %0 = load i32, ptr %low_univdiagonal.addr, align 4, !tbaa !12
  %1 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %2 = load i32, ptr %low_qstart.addr, align 4, !tbaa !12
  %sub = sub nsw i32 %1, %2
  %cmp = icmp ult i32 %0, %sub
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %entry
  %3 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %univdiagonals = getelementptr inbounds %struct.Path_T, ptr %3, i32 0, i32 18
  %4 = load ptr, ptr %univdiagonals, align 8, !tbaa !36
  %call = call i32 @Uintlist_head(ptr noundef %4)
  store i32 %call, ptr %univdiagonal, align 4, !tbaa !12
  br label %if.end

if.end:                                           ; preds = %if.else
  %5 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %endpoints = getelementptr inbounds %struct.Path_T, ptr %5, i32 0, i32 17
  %6 = load ptr, ptr %endpoints, align 8, !tbaa !40
  %call1 = call ptr @Intlist_next(ptr noundef %6)
  %call2 = call i32 @Intlist_head(ptr noundef %call1)
  store i32 %call2, ptr %qend, align 4, !tbaa !12
  %7 = load i32, ptr %low_qstart.addr, align 4, !tbaa !12
  %8 = load i32, ptr %qend, align 4, !tbaa !12
  %cmp3 = icmp sge i32 %7, %8
  br i1 %cmp3, label %if.then4, label %if.else5

if.then4:                                         ; preds = %if.end
  br label %if.end459

if.else5:                                         ; preds = %if.end
  %9 = load i32, ptr %low_univdiagonal.addr, align 4, !tbaa !12
  %10 = load i32, ptr %univdiagonal, align 4, !tbaa !12
  %cmp6 = icmp eq i32 %9, %10
  br i1 %cmp6, label %if.then7, label %if.else19

if.then7:                                         ; preds = %if.else5
  %11 = load i32, ptr %low_qstart.addr, align 4, !tbaa !12
  %12 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %endpoints8 = getelementptr inbounds %struct.Path_T, ptr %12, i32 0, i32 17
  %13 = load ptr, ptr %endpoints8, align 8, !tbaa !40
  %call9 = call i32 @Intlist_head(ptr noundef %13)
  %cmp10 = icmp sge i32 %11, %call9
  br i1 %cmp10, label %if.then11, label %if.else12

if.then11:                                        ; preds = %if.then7
  br label %if.end18

if.else12:                                        ; preds = %if.then7
  %14 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %15 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %16 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %17 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %18 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %19 = load ptr, ptr %vectorpool.addr, align 8, !tbaa !5
  %call13 = call ptr @Path_copy_5(ptr noundef %14, i8 noundef zeroext 0, i32 noundef 0, double noundef 0.000000e+00, ptr noundef %15, ptr noundef %16, ptr noundef %17, ptr noundef %18, ptr noundef %19)
  store ptr %call13, ptr %newpath, align 8, !tbaa !5
  %20 = load ptr, ptr @genomebits, align 8, !tbaa !5
  %21 = load ptr, ptr @genomebits_alt, align 8, !tbaa !5
  %22 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %23 = load i32, ptr %univdiagonal, align 4, !tbaa !12
  %24 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %25 = load i32, ptr %low_qstart.addr, align 4, !tbaa !12
  %26 = load i32, ptr %qend, align 4, !tbaa !12
  %27 = load i8, ptr %plusp.addr, align 1, !tbaa !14
  %28 = load i32, ptr %genestrand.addr, align 4, !tbaa !12
  %call14 = call i32 @Genomebits_count_mismatches_substring(ptr noundef %ref_nmismatches, ptr noundef %20, ptr noundef %21, ptr noundef %22, i32 noundef %23, i32 noundef %24, i32 noundef %25, i32 noundef %26, i8 noundef zeroext %27, i32 noundef %28)
  store i32 %call14, ptr %nmismatches, align 4, !tbaa !12
  %29 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches15 = getelementptr inbounds %struct.Path_T, ptr %29, i32 0, i32 19
  %30 = load ptr, ptr %nmismatches15, align 8, !tbaa !41
  %31 = load i32, ptr %nmismatches, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %30, i32 noundef %31)
  %32 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches16 = getelementptr inbounds %struct.Path_T, ptr %32, i32 0, i32 20
  %33 = load ptr, ptr %ref_nmismatches16, align 8, !tbaa !42
  %34 = load i32, ptr %nmismatches, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %33, i32 noundef %34)
  %35 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints17 = getelementptr inbounds %struct.Path_T, ptr %35, i32 0, i32 17
  %36 = load ptr, ptr %endpoints17, align 8, !tbaa !40
  %37 = load i32, ptr %low_qstart.addr, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %36, i32 noundef %37)
  br label %if.end18

if.end18:                                         ; preds = %if.else12, %if.then11
  br label %if.end458

if.else19:                                        ; preds = %if.else5
  %38 = load i32, ptr %low_univdiagonal.addr, align 4, !tbaa !12
  %39 = load i32, ptr %univdiagonal, align 4, !tbaa !12
  %40 = load i32, ptr %max_insertionlen.addr, align 4, !tbaa !12
  %add = add i32 %39, %40
  %cmp20 = icmp ugt i32 %38, %add
  br i1 %cmp20, label %if.then21, label %if.else22

if.then21:                                        ; preds = %if.else19
  br label %if.end457

if.else22:                                        ; preds = %if.else19
  %41 = load i32, ptr %low_univdiagonal.addr, align 4, !tbaa !12
  %42 = load i32, ptr %univdiagonal, align 4, !tbaa !12
  %cmp23 = icmp ugt i32 %41, %42
  br i1 %cmp23, label %if.then24, label %if.else64

if.then24:                                        ; preds = %if.else22
  %43 = load i32, ptr %low_univdiagonal.addr, align 4, !tbaa !12
  %44 = load i32, ptr %univdiagonal, align 4, !tbaa !12
  %sub25 = sub i32 %43, %44
  store i32 %sub25, ptr %nindels, align 4, !tbaa !12
  %45 = load i32, ptr %low_univdiagonal.addr, align 4, !tbaa !12
  %46 = load i32, ptr %nindels, align 4, !tbaa !12
  %47 = load ptr, ptr @genomebits, align 8, !tbaa !5
  %48 = load ptr, ptr @genomebits_alt, align 8, !tbaa !5
  %49 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %50 = load i32, ptr %low_qstart.addr, align 4, !tbaa !12
  %51 = load i32, ptr %qend, align 4, !tbaa !12
  %52 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %53 = load ptr, ptr %indelinfo.addr, align 8, !tbaa !5
  %54 = load i8, ptr %plusp.addr, align 1, !tbaa !14
  %55 = load i32, ptr %genestrand.addr, align 4, !tbaa !12
  %call26 = call i32 @Indel_resolve_middle_insertion(ptr noundef %nmismatches_i, ptr noundef %nmismatches_j, ptr noundef %ref_nmismatches_i, ptr noundef %ref_nmismatches_j, i32 noundef %45, i32 noundef %46, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef %47, ptr noundef %48, ptr noundef %49, i32 noundef %50, i32 noundef %51, i32 noundef %52, ptr noundef %53, i8 noundef zeroext %54, i32 noundef %55, i8 noundef zeroext 1)
  store i32 %call26, ptr %indel_pos, align 4, !tbaa !12
  %cmp27 = icmp sle i32 %call26, 0
  br i1 %cmp27, label %if.then28, label %if.else29

if.then28:                                        ; preds = %if.then24
  br label %if.end63

if.else29:                                        ; preds = %if.then24
  %56 = load i32, ptr %indel_pos, align 4, !tbaa !12
  %57 = load i32, ptr %low_qstart.addr, align 4, !tbaa !12
  %sub30 = sub nsw i32 %56, %57
  store i32 %sub30, ptr %supporti, align 4, !tbaa !12
  %58 = load i32, ptr %qend, align 4, !tbaa !12
  %59 = load i32, ptr %indel_pos, align 4, !tbaa !12
  %60 = load i32, ptr %nindels, align 4, !tbaa !12
  %add31 = add nsw i32 %59, %60
  %sub32 = sub nsw i32 %58, %add31
  store i32 %sub32, ptr %supportj, align 4, !tbaa !12
  %61 = load i32, ptr %supporti, align 4, !tbaa !12
  %62 = load i32, ptr %nmismatches_i, align 4, !tbaa !12
  %mul = mul nsw i32 3, %62
  %sub33 = sub nsw i32 %61, %mul
  %cmp34 = icmp slt i32 %sub33, 6
  br i1 %cmp34, label %if.then35, label %if.else36

if.then35:                                        ; preds = %if.else29
  br label %if.end62

if.else36:                                        ; preds = %if.else29
  %63 = load i32, ptr %supportj, align 4, !tbaa !12
  %64 = load i32, ptr %nmismatches_j, align 4, !tbaa !12
  %mul37 = mul nsw i32 3, %64
  %sub38 = sub nsw i32 %63, %mul37
  %cmp39 = icmp slt i32 %sub38, 6
  br i1 %cmp39, label %if.then40, label %if.else41

if.then40:                                        ; preds = %if.else36
  br label %if.end61

if.else41:                                        ; preds = %if.else36
  %65 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %66 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %67 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %68 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %69 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %70 = load ptr, ptr %vectorpool.addr, align 8, !tbaa !5
  %call42 = call ptr @Path_copy_5(ptr noundef %65, i8 noundef zeroext 0, i32 noundef 0, double noundef 0.000000e+00, ptr noundef %66, ptr noundef %67, ptr noundef %68, ptr noundef %69, ptr noundef %70)
  store ptr %call42, ptr %newpath, align 8, !tbaa !5
  %71 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints43 = getelementptr inbounds %struct.Path_T, ptr %71, i32 0, i32 17
  %72 = load ptr, ptr %endpoints43, align 8, !tbaa !40
  %73 = load i32, ptr %indel_pos, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %72, i32 noundef %73)
  %74 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints44 = getelementptr inbounds %struct.Path_T, ptr %74, i32 0, i32 17
  %75 = load ptr, ptr %endpoints44, align 8, !tbaa !40
  %76 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %77 = load i32, ptr %low_qstart.addr, align 4, !tbaa !12
  %call45 = call ptr @Intlistpool_push(ptr noundef %75, ptr noundef %76, i32 noundef %77)
  %78 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints46 = getelementptr inbounds %struct.Path_T, ptr %78, i32 0, i32 17
  store ptr %call45, ptr %endpoints46, align 8, !tbaa !40
  %79 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions = getelementptr inbounds %struct.Path_T, ptr %79, i32 0, i32 21
  %80 = load ptr, ptr %junctions, align 8, !tbaa !43
  %81 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %82 = load i32, ptr %nindels, align 4, !tbaa !12
  %83 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %call47 = call ptr @Junction_new_insertion(i32 noundef %82, ptr noundef %83)
  %call48 = call ptr @Listpool_push(ptr noundef %80, ptr noundef %81, ptr noundef %call47)
  %84 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions49 = getelementptr inbounds %struct.Path_T, ptr %84, i32 0, i32 21
  store ptr %call48, ptr %junctions49, align 8, !tbaa !43
  %85 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches50 = getelementptr inbounds %struct.Path_T, ptr %85, i32 0, i32 19
  %86 = load ptr, ptr %nmismatches50, align 8, !tbaa !41
  %87 = load i32, ptr %nmismatches_j, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %86, i32 noundef %87)
  %88 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches51 = getelementptr inbounds %struct.Path_T, ptr %88, i32 0, i32 20
  %89 = load ptr, ptr %ref_nmismatches51, align 8, !tbaa !42
  %90 = load i32, ptr %nmismatches_j, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %89, i32 noundef %90)
  %91 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches52 = getelementptr inbounds %struct.Path_T, ptr %91, i32 0, i32 19
  %92 = load ptr, ptr %nmismatches52, align 8, !tbaa !41
  %93 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %94 = load i32, ptr %nmismatches_i, align 4, !tbaa !12
  %call53 = call ptr @Intlistpool_push(ptr noundef %92, ptr noundef %93, i32 noundef %94)
  %95 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches54 = getelementptr inbounds %struct.Path_T, ptr %95, i32 0, i32 19
  store ptr %call53, ptr %nmismatches54, align 8, !tbaa !41
  %96 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches55 = getelementptr inbounds %struct.Path_T, ptr %96, i32 0, i32 20
  %97 = load ptr, ptr %ref_nmismatches55, align 8, !tbaa !42
  %98 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %99 = load i32, ptr %nmismatches_i, align 4, !tbaa !12
  %call56 = call ptr @Intlistpool_push(ptr noundef %97, ptr noundef %98, i32 noundef %99)
  %100 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches57 = getelementptr inbounds %struct.Path_T, ptr %100, i32 0, i32 20
  store ptr %call56, ptr %ref_nmismatches57, align 8, !tbaa !42
  %101 = load ptr, ptr %newpath, align 8, !tbaa !5
  %univdiagonals58 = getelementptr inbounds %struct.Path_T, ptr %101, i32 0, i32 18
  %102 = load ptr, ptr %univdiagonals58, align 8, !tbaa !36
  %103 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %104 = load i32, ptr %low_univdiagonal.addr, align 4, !tbaa !12
  %call59 = call ptr @Uintlistpool_push(ptr noundef %102, ptr noundef %103, i32 noundef %104)
  %105 = load ptr, ptr %newpath, align 8, !tbaa !5
  %univdiagonals60 = getelementptr inbounds %struct.Path_T, ptr %105, i32 0, i32 18
  store ptr %call59, ptr %univdiagonals60, align 8, !tbaa !36
  br label %if.end61

if.end61:                                         ; preds = %if.else41, %if.then40
  br label %if.end62

if.end62:                                         ; preds = %if.end61, %if.then35
  br label %if.end63

if.end63:                                         ; preds = %if.end62, %if.then28
  br label %if.end456

if.else64:                                        ; preds = %if.else22
  %106 = load i32, ptr %low_univdiagonal.addr, align 4, !tbaa !12
  %107 = load i32, ptr %max_deletionlen.addr, align 4, !tbaa !12
  %add65 = add i32 %106, %107
  %108 = load i32, ptr %univdiagonal, align 4, !tbaa !12
  %cmp66 = icmp uge i32 %add65, %108
  br i1 %cmp66, label %if.then67, label %if.else111

if.then67:                                        ; preds = %if.else64
  %109 = load i32, ptr %univdiagonal, align 4, !tbaa !12
  %110 = load i32, ptr %low_univdiagonal.addr, align 4, !tbaa !12
  %sub68 = sub i32 %109, %110
  store i32 %sub68, ptr %nindels, align 4, !tbaa !12
  %111 = load i32, ptr %low_univdiagonal.addr, align 4, !tbaa !12
  %112 = load i32, ptr %nindels, align 4, !tbaa !12
  %sub69 = sub nsw i32 0, %112
  %113 = load ptr, ptr @genomebits, align 8, !tbaa !5
  %114 = load ptr, ptr @genomebits_alt, align 8, !tbaa !5
  %115 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %116 = load i32, ptr %low_qstart.addr, align 4, !tbaa !12
  %117 = load i32, ptr %qend, align 4, !tbaa !12
  %118 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %119 = load ptr, ptr %indelinfo.addr, align 8, !tbaa !5
  %120 = load i8, ptr %plusp.addr, align 1, !tbaa !14
  %121 = load i32, ptr %genestrand.addr, align 4, !tbaa !12
  %call70 = call i32 @Indel_resolve_middle_deletion(ptr noundef %nmismatches_i, ptr noundef %nmismatches_j, ptr noundef %ref_nmismatches_i, ptr noundef %ref_nmismatches_j, i32 noundef %111, i32 noundef %sub69, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef %113, ptr noundef %114, ptr noundef %115, i32 noundef %116, i32 noundef %117, i32 noundef %118, ptr noundef %119, i8 noundef zeroext %120, i32 noundef %121, i8 noundef zeroext 1)
  store i32 %call70, ptr %indel_pos, align 4, !tbaa !12
  %cmp71 = icmp sle i32 %call70, 0
  br i1 %cmp71, label %if.then72, label %if.else73

if.then72:                                        ; preds = %if.then67
  br label %if.end110

if.else73:                                        ; preds = %if.then67
  %122 = load i32, ptr %indel_pos, align 4, !tbaa !12
  %123 = load i32, ptr %low_qstart.addr, align 4, !tbaa !12
  %sub74 = sub nsw i32 %122, %123
  store i32 %sub74, ptr %supporti, align 4, !tbaa !12
  %124 = load i32, ptr %qend, align 4, !tbaa !12
  %125 = load i32, ptr %indel_pos, align 4, !tbaa !12
  %sub75 = sub nsw i32 %124, %125
  store i32 %sub75, ptr %supportj, align 4, !tbaa !12
  %126 = load i32, ptr %supporti, align 4, !tbaa !12
  %127 = load i32, ptr %nmismatches_i, align 4, !tbaa !12
  %mul76 = mul nsw i32 3, %127
  %sub77 = sub nsw i32 %126, %mul76
  %cmp78 = icmp slt i32 %sub77, 6
  br i1 %cmp78, label %if.then79, label %if.else80

if.then79:                                        ; preds = %if.else73
  br label %if.end109

if.else80:                                        ; preds = %if.else73
  %128 = load i32, ptr %supportj, align 4, !tbaa !12
  %129 = load i32, ptr %nmismatches_j, align 4, !tbaa !12
  %mul81 = mul nsw i32 3, %129
  %sub82 = sub nsw i32 %128, %mul81
  %cmp83 = icmp slt i32 %sub82, 6
  br i1 %cmp83, label %if.then84, label %if.else85

if.then84:                                        ; preds = %if.else80
  br label %if.end108

if.else85:                                        ; preds = %if.else80
  %130 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %131 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %132 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %133 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %134 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %135 = load ptr, ptr %vectorpool.addr, align 8, !tbaa !5
  %call86 = call ptr @Path_copy_5(ptr noundef %130, i8 noundef zeroext 0, i32 noundef 0, double noundef 0.000000e+00, ptr noundef %131, ptr noundef %132, ptr noundef %133, ptr noundef %134, ptr noundef %135)
  store ptr %call86, ptr %newpath, align 8, !tbaa !5
  %136 = load i32, ptr %low_univdiagonal.addr, align 4, !tbaa !12
  %137 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %sub87 = sub i32 %136, %137
  %138 = load i32, ptr %indel_pos, align 4, !tbaa !12
  %add88 = add i32 %sub87, %138
  store i32 %add88, ptr %deletionpos, align 4, !tbaa !12
  %139 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions89 = getelementptr inbounds %struct.Path_T, ptr %139, i32 0, i32 21
  %140 = load ptr, ptr %junctions89, align 8, !tbaa !43
  %141 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %142 = load i32, ptr %nindels, align 4, !tbaa !12
  %143 = load i32, ptr %deletionpos, align 4, !tbaa !12
  %144 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %call90 = call ptr @Junction_new_deletion(i32 noundef %142, i32 noundef %143, ptr noundef %144)
  %call91 = call ptr @Listpool_push(ptr noundef %140, ptr noundef %141, ptr noundef %call90)
  %145 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions92 = getelementptr inbounds %struct.Path_T, ptr %145, i32 0, i32 21
  store ptr %call91, ptr %junctions92, align 8, !tbaa !43
  %146 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints93 = getelementptr inbounds %struct.Path_T, ptr %146, i32 0, i32 17
  %147 = load ptr, ptr %endpoints93, align 8, !tbaa !40
  %148 = load i32, ptr %indel_pos, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %147, i32 noundef %148)
  %149 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints94 = getelementptr inbounds %struct.Path_T, ptr %149, i32 0, i32 17
  %150 = load ptr, ptr %endpoints94, align 8, !tbaa !40
  %151 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %152 = load i32, ptr %low_qstart.addr, align 4, !tbaa !12
  %call95 = call ptr @Intlistpool_push(ptr noundef %150, ptr noundef %151, i32 noundef %152)
  %153 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints96 = getelementptr inbounds %struct.Path_T, ptr %153, i32 0, i32 17
  store ptr %call95, ptr %endpoints96, align 8, !tbaa !40
  %154 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches97 = getelementptr inbounds %struct.Path_T, ptr %154, i32 0, i32 19
  %155 = load ptr, ptr %nmismatches97, align 8, !tbaa !41
  %156 = load i32, ptr %nmismatches_j, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %155, i32 noundef %156)
  %157 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches98 = getelementptr inbounds %struct.Path_T, ptr %157, i32 0, i32 20
  %158 = load ptr, ptr %ref_nmismatches98, align 8, !tbaa !42
  %159 = load i32, ptr %nmismatches_j, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %158, i32 noundef %159)
  %160 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches99 = getelementptr inbounds %struct.Path_T, ptr %160, i32 0, i32 19
  %161 = load ptr, ptr %nmismatches99, align 8, !tbaa !41
  %162 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %163 = load i32, ptr %nmismatches_i, align 4, !tbaa !12
  %call100 = call ptr @Intlistpool_push(ptr noundef %161, ptr noundef %162, i32 noundef %163)
  %164 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches101 = getelementptr inbounds %struct.Path_T, ptr %164, i32 0, i32 19
  store ptr %call100, ptr %nmismatches101, align 8, !tbaa !41
  %165 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches102 = getelementptr inbounds %struct.Path_T, ptr %165, i32 0, i32 20
  %166 = load ptr, ptr %ref_nmismatches102, align 8, !tbaa !42
  %167 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %168 = load i32, ptr %nmismatches_i, align 4, !tbaa !12
  %call103 = call ptr @Intlistpool_push(ptr noundef %166, ptr noundef %167, i32 noundef %168)
  %169 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches104 = getelementptr inbounds %struct.Path_T, ptr %169, i32 0, i32 20
  store ptr %call103, ptr %ref_nmismatches104, align 8, !tbaa !42
  %170 = load ptr, ptr %newpath, align 8, !tbaa !5
  %univdiagonals105 = getelementptr inbounds %struct.Path_T, ptr %170, i32 0, i32 18
  %171 = load ptr, ptr %univdiagonals105, align 8, !tbaa !36
  %172 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %173 = load i32, ptr %low_univdiagonal.addr, align 4, !tbaa !12
  %call106 = call ptr @Uintlistpool_push(ptr noundef %171, ptr noundef %172, i32 noundef %173)
  %174 = load ptr, ptr %newpath, align 8, !tbaa !5
  %univdiagonals107 = getelementptr inbounds %struct.Path_T, ptr %174, i32 0, i32 18
  store ptr %call106, ptr %univdiagonals107, align 8, !tbaa !36
  br label %if.end108

if.end108:                                        ; preds = %if.else85, %if.then84
  br label %if.end109

if.end109:                                        ; preds = %if.end108, %if.then79
  br label %if.end110

if.end110:                                        ; preds = %if.end109, %if.then72
  br label %if.end455

if.else111:                                       ; preds = %if.else64
  %175 = load i32, ptr %low_univdiagonal.addr, align 4, !tbaa !12
  %176 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %sub112 = sub i32 %175, %176
  store i32 %sub112, ptr %low_left, align 4, !tbaa !12
  %177 = load i32, ptr %try_sensedir.addr, align 4, !tbaa !12
  %cmp113 = icmp eq i32 %177, 2
  br i1 %cmp113, label %if.then114, label %if.else284

if.then114:                                       ; preds = %if.else111
  %178 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %179 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %180 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %181 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %182 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %183 = load ptr, ptr %vectorpool.addr, align 8, !tbaa !5
  %call115 = call ptr @Path_copy_5(ptr noundef %178, i8 noundef zeroext 0, i32 noundef 0, double noundef 0.000000e+00, ptr noundef %179, ptr noundef %180, ptr noundef %181, ptr noundef %182, ptr noundef %183)
  store ptr %call115, ptr %newpath, align 8, !tbaa !5
  %184 = load i32, ptr %low_univdiagonal.addr, align 4, !tbaa !12
  %185 = load i32, ptr %univdiagonal, align 4, !tbaa !12
  %186 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %187 = load i8, ptr %plusp.addr, align 1, !tbaa !14
  %188 = load i32, ptr %chroffset.addr, align 4, !tbaa !12
  %189 = load i32, ptr %low_qstart.addr, align 4, !tbaa !12
  %190 = load i32, ptr %qend, align 4, !tbaa !12
  %191 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %192 = load ptr, ptr %indelinfo.addr, align 8, !tbaa !5
  %193 = load ptr, ptr %spliceinfo.addr, align 8, !tbaa !5
  %194 = load ptr, ptr %knownsplicing.addr, align 8, !tbaa !5
  %195 = load i32, ptr %genestrand.addr, align 4, !tbaa !12
  %196 = load i32, ptr %nmismatches_allowed.addr, align 4, !tbaa !12
  %197 = load i32, ptr %max_insertionlen.addr, align 4, !tbaa !12
  %198 = load i32, ptr %max_deletionlen.addr, align 4, !tbaa !12
  %199 = load i8, ptr %salvagep.addr, align 1, !tbaa !14
  %call116 = call i32 @Splice_resolve(ptr noundef %middle_univdiagonal, ptr noundef %splice_qpos_i, ptr noundef %splice_qpos_j, ptr noundef %nindels, ptr noundef %indel_pos, ptr noundef %nmismatches_i, ptr noundef %nmismatches_middle, ptr noundef %nmismatches_j, ptr noundef %nmismatches_indel, ptr noundef %ref_nmismatches_i, ptr noundef %ref_nmismatches_middle, ptr noundef %ref_nmismatches_j, ptr noundef %ref_nmismatches_indel, ptr noundef %donor_prob, ptr noundef %acceptor_prob, i32 noundef %184, i32 noundef %185, ptr noundef %186, i8 noundef zeroext %187, i32 noundef %188, i32 noundef %189, i32 noundef %190, i32 noundef %191, ptr noundef %192, ptr noundef %193, ptr noundef %194, i8 noundef zeroext 1, i32 noundef %195, i32 noundef %196, i32 noundef %197, i32 noundef %198, i8 noundef zeroext %199, i8 noundef zeroext 1)
  store i32 %call116, ptr %splice_qpos, align 4, !tbaa !12
  %cmp117 = icmp slt i32 %call116, 0
  br i1 %cmp117, label %if.then118, label %if.else160

if.then118:                                       ; preds = %if.then114
  %200 = load i32, ptr %middle_univdiagonal, align 4, !tbaa !12
  %cmp119 = icmp ne i32 %200, 0
  br i1 %cmp119, label %if.then120, label %if.else158

if.then120:                                       ; preds = %if.then118
  %201 = load i32, ptr %univdiagonal, align 4, !tbaa !12
  %202 = load i32, ptr %middle_univdiagonal, align 4, !tbaa !12
  %sub121 = sub i32 %201, %202
  store i32 %sub121, ptr %splice_distance_j, align 4, !tbaa !12
  %203 = load i32, ptr %middle_univdiagonal, align 4, !tbaa !12
  %204 = load i32, ptr %low_univdiagonal.addr, align 4, !tbaa !12
  %sub122 = sub i32 %203, %204
  store i32 %sub122, ptr %splice_distance_i, align 4, !tbaa !12
  %205 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints123 = getelementptr inbounds %struct.Path_T, ptr %205, i32 0, i32 17
  %206 = load ptr, ptr %endpoints123, align 8, !tbaa !40
  %207 = load i32, ptr %splice_qpos_j, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %206, i32 noundef %207)
  %208 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints124 = getelementptr inbounds %struct.Path_T, ptr %208, i32 0, i32 17
  %209 = load ptr, ptr %endpoints124, align 8, !tbaa !40
  %210 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %211 = load i32, ptr %splice_qpos_i, align 4, !tbaa !12
  %call125 = call ptr @Intlistpool_push(ptr noundef %209, ptr noundef %210, i32 noundef %211)
  %212 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints126 = getelementptr inbounds %struct.Path_T, ptr %212, i32 0, i32 17
  store ptr %call125, ptr %endpoints126, align 8, !tbaa !40
  %213 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints127 = getelementptr inbounds %struct.Path_T, ptr %213, i32 0, i32 17
  %214 = load ptr, ptr %endpoints127, align 8, !tbaa !40
  %215 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %216 = load i32, ptr %low_qstart.addr, align 4, !tbaa !12
  %call128 = call ptr @Intlistpool_push(ptr noundef %214, ptr noundef %215, i32 noundef %216)
  %217 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints129 = getelementptr inbounds %struct.Path_T, ptr %217, i32 0, i32 17
  store ptr %call128, ptr %endpoints129, align 8, !tbaa !40
  %218 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions130 = getelementptr inbounds %struct.Path_T, ptr %218, i32 0, i32 21
  %219 = load ptr, ptr %junctions130, align 8, !tbaa !43
  %220 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %221 = load i32, ptr %splice_distance_j, align 4, !tbaa !12
  %222 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %call131 = call ptr @Junction_new_splice(i32 noundef %221, i32 noundef 2, double noundef 1.000000e+00, double noundef 1.000000e+00, ptr noundef %222)
  %call132 = call ptr @Listpool_push(ptr noundef %219, ptr noundef %220, ptr noundef %call131)
  %223 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions133 = getelementptr inbounds %struct.Path_T, ptr %223, i32 0, i32 21
  store ptr %call132, ptr %junctions133, align 8, !tbaa !43
  %224 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions134 = getelementptr inbounds %struct.Path_T, ptr %224, i32 0, i32 21
  %225 = load ptr, ptr %junctions134, align 8, !tbaa !43
  %226 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %227 = load i32, ptr %splice_distance_i, align 4, !tbaa !12
  %228 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %call135 = call ptr @Junction_new_splice(i32 noundef %227, i32 noundef 2, double noundef 1.000000e+00, double noundef 1.000000e+00, ptr noundef %228)
  %call136 = call ptr @Listpool_push(ptr noundef %225, ptr noundef %226, ptr noundef %call135)
  %229 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions137 = getelementptr inbounds %struct.Path_T, ptr %229, i32 0, i32 21
  store ptr %call136, ptr %junctions137, align 8, !tbaa !43
  %230 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches138 = getelementptr inbounds %struct.Path_T, ptr %230, i32 0, i32 19
  %231 = load ptr, ptr %nmismatches138, align 8, !tbaa !41
  %232 = load i32, ptr %nmismatches_j, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %231, i32 noundef %232)
  %233 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches139 = getelementptr inbounds %struct.Path_T, ptr %233, i32 0, i32 20
  %234 = load ptr, ptr %ref_nmismatches139, align 8, !tbaa !42
  %235 = load i32, ptr %ref_nmismatches_j, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %234, i32 noundef %235)
  %236 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches140 = getelementptr inbounds %struct.Path_T, ptr %236, i32 0, i32 19
  %237 = load ptr, ptr %nmismatches140, align 8, !tbaa !41
  %238 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %239 = load i32, ptr %nmismatches_middle, align 4, !tbaa !12
  %call141 = call ptr @Intlistpool_push(ptr noundef %237, ptr noundef %238, i32 noundef %239)
  %240 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches142 = getelementptr inbounds %struct.Path_T, ptr %240, i32 0, i32 19
  store ptr %call141, ptr %nmismatches142, align 8, !tbaa !41
  %241 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches143 = getelementptr inbounds %struct.Path_T, ptr %241, i32 0, i32 20
  %242 = load ptr, ptr %ref_nmismatches143, align 8, !tbaa !42
  %243 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %244 = load i32, ptr %ref_nmismatches_middle, align 4, !tbaa !12
  %call144 = call ptr @Intlistpool_push(ptr noundef %242, ptr noundef %243, i32 noundef %244)
  %245 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches145 = getelementptr inbounds %struct.Path_T, ptr %245, i32 0, i32 20
  store ptr %call144, ptr %ref_nmismatches145, align 8, !tbaa !42
  %246 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches146 = getelementptr inbounds %struct.Path_T, ptr %246, i32 0, i32 19
  %247 = load ptr, ptr %nmismatches146, align 8, !tbaa !41
  %248 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %249 = load i32, ptr %nmismatches_i, align 4, !tbaa !12
  %call147 = call ptr @Intlistpool_push(ptr noundef %247, ptr noundef %248, i32 noundef %249)
  %250 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches148 = getelementptr inbounds %struct.Path_T, ptr %250, i32 0, i32 19
  store ptr %call147, ptr %nmismatches148, align 8, !tbaa !41
  %251 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches149 = getelementptr inbounds %struct.Path_T, ptr %251, i32 0, i32 20
  %252 = load ptr, ptr %ref_nmismatches149, align 8, !tbaa !42
  %253 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %254 = load i32, ptr %ref_nmismatches_i, align 4, !tbaa !12
  %call150 = call ptr @Intlistpool_push(ptr noundef %252, ptr noundef %253, i32 noundef %254)
  %255 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches151 = getelementptr inbounds %struct.Path_T, ptr %255, i32 0, i32 20
  store ptr %call150, ptr %ref_nmismatches151, align 8, !tbaa !42
  %256 = load ptr, ptr %newpath, align 8, !tbaa !5
  %univdiagonals152 = getelementptr inbounds %struct.Path_T, ptr %256, i32 0, i32 18
  %257 = load ptr, ptr %univdiagonals152, align 8, !tbaa !36
  %258 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %259 = load i32, ptr %middle_univdiagonal, align 4, !tbaa !12
  %call153 = call ptr @Uintlistpool_push(ptr noundef %257, ptr noundef %258, i32 noundef %259)
  %260 = load ptr, ptr %newpath, align 8, !tbaa !5
  %univdiagonals154 = getelementptr inbounds %struct.Path_T, ptr %260, i32 0, i32 18
  store ptr %call153, ptr %univdiagonals154, align 8, !tbaa !36
  %261 = load ptr, ptr %newpath, align 8, !tbaa !5
  %univdiagonals155 = getelementptr inbounds %struct.Path_T, ptr %261, i32 0, i32 18
  %262 = load ptr, ptr %univdiagonals155, align 8, !tbaa !36
  %263 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %264 = load i32, ptr %low_univdiagonal.addr, align 4, !tbaa !12
  %call156 = call ptr @Uintlistpool_push(ptr noundef %262, ptr noundef %263, i32 noundef %264)
  %265 = load ptr, ptr %newpath, align 8, !tbaa !5
  %univdiagonals157 = getelementptr inbounds %struct.Path_T, ptr %265, i32 0, i32 18
  store ptr %call156, ptr %univdiagonals157, align 8, !tbaa !36
  br label %if.end159

if.else158:                                       ; preds = %if.then118
  %266 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %267 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %268 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %269 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %270 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  call void @Path_free(ptr noundef %newpath, ptr noundef %266, ptr noundef %267, ptr noundef %268, ptr noundef %269, ptr noundef %270)
  store ptr null, ptr %newpath, align 8, !tbaa !5
  br label %if.end159

if.end159:                                        ; preds = %if.else158, %if.then120
  br label %if.end283

if.else160:                                       ; preds = %if.then114
  %271 = load i32, ptr %nindels, align 4, !tbaa !12
  %cmp161 = icmp eq i32 %271, 0
  br i1 %cmp161, label %if.then162, label %if.else183

if.then162:                                       ; preds = %if.else160
  %272 = load i32, ptr %univdiagonal, align 4, !tbaa !12
  %273 = load i32, ptr %low_univdiagonal.addr, align 4, !tbaa !12
  %sub163 = sub i32 %272, %273
  store i32 %sub163, ptr %splice_distance, align 4, !tbaa !12
  %274 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints164 = getelementptr inbounds %struct.Path_T, ptr %274, i32 0, i32 17
  %275 = load ptr, ptr %endpoints164, align 8, !tbaa !40
  %276 = load i32, ptr %splice_qpos, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %275, i32 noundef %276)
  %277 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints165 = getelementptr inbounds %struct.Path_T, ptr %277, i32 0, i32 17
  %278 = load ptr, ptr %endpoints165, align 8, !tbaa !40
  %279 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %280 = load i32, ptr %low_qstart.addr, align 4, !tbaa !12
  %call166 = call ptr @Intlistpool_push(ptr noundef %278, ptr noundef %279, i32 noundef %280)
  %281 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints167 = getelementptr inbounds %struct.Path_T, ptr %281, i32 0, i32 17
  store ptr %call166, ptr %endpoints167, align 8, !tbaa !40
  %282 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions168 = getelementptr inbounds %struct.Path_T, ptr %282, i32 0, i32 21
  %283 = load ptr, ptr %junctions168, align 8, !tbaa !43
  %284 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %285 = load i32, ptr %splice_distance, align 4, !tbaa !12
  %286 = load double, ptr %donor_prob, align 8, !tbaa !44
  %287 = load double, ptr %acceptor_prob, align 8, !tbaa !44
  %288 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %call169 = call ptr @Junction_new_splice(i32 noundef %285, i32 noundef 2, double noundef %286, double noundef %287, ptr noundef %288)
  %call170 = call ptr @Listpool_push(ptr noundef %283, ptr noundef %284, ptr noundef %call169)
  %289 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions171 = getelementptr inbounds %struct.Path_T, ptr %289, i32 0, i32 21
  store ptr %call170, ptr %junctions171, align 8, !tbaa !43
  %290 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches172 = getelementptr inbounds %struct.Path_T, ptr %290, i32 0, i32 19
  %291 = load ptr, ptr %nmismatches172, align 8, !tbaa !41
  %292 = load i32, ptr %nmismatches_j, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %291, i32 noundef %292)
  %293 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches173 = getelementptr inbounds %struct.Path_T, ptr %293, i32 0, i32 20
  %294 = load ptr, ptr %ref_nmismatches173, align 8, !tbaa !42
  %295 = load i32, ptr %ref_nmismatches_j, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %294, i32 noundef %295)
  %296 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches174 = getelementptr inbounds %struct.Path_T, ptr %296, i32 0, i32 19
  %297 = load ptr, ptr %nmismatches174, align 8, !tbaa !41
  %298 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %299 = load i32, ptr %nmismatches_i, align 4, !tbaa !12
  %call175 = call ptr @Intlistpool_push(ptr noundef %297, ptr noundef %298, i32 noundef %299)
  %300 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches176 = getelementptr inbounds %struct.Path_T, ptr %300, i32 0, i32 19
  store ptr %call175, ptr %nmismatches176, align 8, !tbaa !41
  %301 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches177 = getelementptr inbounds %struct.Path_T, ptr %301, i32 0, i32 20
  %302 = load ptr, ptr %ref_nmismatches177, align 8, !tbaa !42
  %303 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %304 = load i32, ptr %ref_nmismatches_i, align 4, !tbaa !12
  %call178 = call ptr @Intlistpool_push(ptr noundef %302, ptr noundef %303, i32 noundef %304)
  %305 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches179 = getelementptr inbounds %struct.Path_T, ptr %305, i32 0, i32 20
  store ptr %call178, ptr %ref_nmismatches179, align 8, !tbaa !42
  %306 = load ptr, ptr %newpath, align 8, !tbaa !5
  %univdiagonals180 = getelementptr inbounds %struct.Path_T, ptr %306, i32 0, i32 18
  %307 = load ptr, ptr %univdiagonals180, align 8, !tbaa !36
  %308 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %309 = load i32, ptr %low_univdiagonal.addr, align 4, !tbaa !12
  %call181 = call ptr @Uintlistpool_push(ptr noundef %307, ptr noundef %308, i32 noundef %309)
  %310 = load ptr, ptr %newpath, align 8, !tbaa !5
  %univdiagonals182 = getelementptr inbounds %struct.Path_T, ptr %310, i32 0, i32 18
  store ptr %call181, ptr %univdiagonals182, align 8, !tbaa !36
  br label %if.end282

if.else183:                                       ; preds = %if.else160
  %311 = load i32, ptr %splice_qpos, align 4, !tbaa !12
  %312 = load i32, ptr %indel_pos, align 4, !tbaa !12
  %cmp184 = icmp slt i32 %311, %312
  br i1 %cmp184, label %if.then185, label %if.else233

if.then185:                                       ; preds = %if.else183
  %313 = load i32, ptr %univdiagonal, align 4, !tbaa !12
  %314 = load i32, ptr %nindels, align 4, !tbaa !12
  %sub186 = sub i32 %313, %314
  store i32 %sub186, ptr %middle_univdiagonal, align 4, !tbaa !12
  %315 = load i32, ptr %middle_univdiagonal, align 4, !tbaa !12
  %316 = load i32, ptr %low_univdiagonal.addr, align 4, !tbaa !12
  %sub187 = sub i32 %315, %316
  store i32 %sub187, ptr %splice_distance, align 4, !tbaa !12
  %317 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints188 = getelementptr inbounds %struct.Path_T, ptr %317, i32 0, i32 17
  %318 = load ptr, ptr %endpoints188, align 8, !tbaa !40
  %319 = load i32, ptr %indel_pos, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %318, i32 noundef %319)
  %320 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints189 = getelementptr inbounds %struct.Path_T, ptr %320, i32 0, i32 17
  %321 = load ptr, ptr %endpoints189, align 8, !tbaa !40
  %322 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %323 = load i32, ptr %splice_qpos, align 4, !tbaa !12
  %call190 = call ptr @Intlistpool_push(ptr noundef %321, ptr noundef %322, i32 noundef %323)
  %324 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints191 = getelementptr inbounds %struct.Path_T, ptr %324, i32 0, i32 17
  store ptr %call190, ptr %endpoints191, align 8, !tbaa !40
  %325 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints192 = getelementptr inbounds %struct.Path_T, ptr %325, i32 0, i32 17
  %326 = load ptr, ptr %endpoints192, align 8, !tbaa !40
  %327 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %328 = load i32, ptr %low_qstart.addr, align 4, !tbaa !12
  %call193 = call ptr @Intlistpool_push(ptr noundef %326, ptr noundef %327, i32 noundef %328)
  %329 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints194 = getelementptr inbounds %struct.Path_T, ptr %329, i32 0, i32 17
  store ptr %call193, ptr %endpoints194, align 8, !tbaa !40
  %330 = load i32, ptr %nindels, align 4, !tbaa !12
  %cmp195 = icmp slt i32 %330, 0
  br i1 %cmp195, label %if.then196, label %if.else202

if.then196:                                       ; preds = %if.then185
  %331 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions197 = getelementptr inbounds %struct.Path_T, ptr %331, i32 0, i32 21
  %332 = load ptr, ptr %junctions197, align 8, !tbaa !43
  %333 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %334 = load i32, ptr %nindels, align 4, !tbaa !12
  %sub198 = sub nsw i32 0, %334
  %335 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %call199 = call ptr @Junction_new_insertion(i32 noundef %sub198, ptr noundef %335)
  %call200 = call ptr @Listpool_push(ptr noundef %332, ptr noundef %333, ptr noundef %call199)
  %336 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions201 = getelementptr inbounds %struct.Path_T, ptr %336, i32 0, i32 21
  store ptr %call200, ptr %junctions201, align 8, !tbaa !43
  br label %if.end208

if.else202:                                       ; preds = %if.then185
  %337 = load i32, ptr %low_left, align 4, !tbaa !12
  %338 = load i32, ptr %indel_pos, align 4, !tbaa !12
  %add203 = add i32 %337, %338
  store i32 %add203, ptr %deletionpos, align 4, !tbaa !12
  %339 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions204 = getelementptr inbounds %struct.Path_T, ptr %339, i32 0, i32 21
  %340 = load ptr, ptr %junctions204, align 8, !tbaa !43
  %341 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %342 = load i32, ptr %nindels, align 4, !tbaa !12
  %343 = load i32, ptr %deletionpos, align 4, !tbaa !12
  %344 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %call205 = call ptr @Junction_new_deletion(i32 noundef %342, i32 noundef %343, ptr noundef %344)
  %call206 = call ptr @Listpool_push(ptr noundef %340, ptr noundef %341, ptr noundef %call205)
  %345 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions207 = getelementptr inbounds %struct.Path_T, ptr %345, i32 0, i32 21
  store ptr %call206, ptr %junctions207, align 8, !tbaa !43
  br label %if.end208

if.end208:                                        ; preds = %if.else202, %if.then196
  %346 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions209 = getelementptr inbounds %struct.Path_T, ptr %346, i32 0, i32 21
  %347 = load ptr, ptr %junctions209, align 8, !tbaa !43
  %348 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %349 = load i32, ptr %splice_distance, align 4, !tbaa !12
  %350 = load double, ptr %donor_prob, align 8, !tbaa !44
  %351 = load double, ptr %acceptor_prob, align 8, !tbaa !44
  %352 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %call210 = call ptr @Junction_new_splice(i32 noundef %349, i32 noundef 2, double noundef %350, double noundef %351, ptr noundef %352)
  %call211 = call ptr @Listpool_push(ptr noundef %347, ptr noundef %348, ptr noundef %call210)
  %353 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions212 = getelementptr inbounds %struct.Path_T, ptr %353, i32 0, i32 21
  store ptr %call211, ptr %junctions212, align 8, !tbaa !43
  %354 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches213 = getelementptr inbounds %struct.Path_T, ptr %354, i32 0, i32 19
  %355 = load ptr, ptr %nmismatches213, align 8, !tbaa !41
  %356 = load i32, ptr %nmismatches_j, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %355, i32 noundef %356)
  %357 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches214 = getelementptr inbounds %struct.Path_T, ptr %357, i32 0, i32 20
  %358 = load ptr, ptr %ref_nmismatches214, align 8, !tbaa !42
  %359 = load i32, ptr %nmismatches_j, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %358, i32 noundef %359)
  %360 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches215 = getelementptr inbounds %struct.Path_T, ptr %360, i32 0, i32 19
  %361 = load ptr, ptr %nmismatches215, align 8, !tbaa !41
  %362 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %363 = load i32, ptr %nmismatches_indel, align 4, !tbaa !12
  %call216 = call ptr @Intlistpool_push(ptr noundef %361, ptr noundef %362, i32 noundef %363)
  %364 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches217 = getelementptr inbounds %struct.Path_T, ptr %364, i32 0, i32 19
  store ptr %call216, ptr %nmismatches217, align 8, !tbaa !41
  %365 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches218 = getelementptr inbounds %struct.Path_T, ptr %365, i32 0, i32 20
  %366 = load ptr, ptr %ref_nmismatches218, align 8, !tbaa !42
  %367 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %368 = load i32, ptr %ref_nmismatches_indel, align 4, !tbaa !12
  %call219 = call ptr @Intlistpool_push(ptr noundef %366, ptr noundef %367, i32 noundef %368)
  %369 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches220 = getelementptr inbounds %struct.Path_T, ptr %369, i32 0, i32 20
  store ptr %call219, ptr %ref_nmismatches220, align 8, !tbaa !42
  %370 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches221 = getelementptr inbounds %struct.Path_T, ptr %370, i32 0, i32 19
  %371 = load ptr, ptr %nmismatches221, align 8, !tbaa !41
  %372 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %373 = load i32, ptr %nmismatches_i, align 4, !tbaa !12
  %call222 = call ptr @Intlistpool_push(ptr noundef %371, ptr noundef %372, i32 noundef %373)
  %374 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches223 = getelementptr inbounds %struct.Path_T, ptr %374, i32 0, i32 19
  store ptr %call222, ptr %nmismatches223, align 8, !tbaa !41
  %375 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches224 = getelementptr inbounds %struct.Path_T, ptr %375, i32 0, i32 20
  %376 = load ptr, ptr %ref_nmismatches224, align 8, !tbaa !42
  %377 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %378 = load i32, ptr %ref_nmismatches_i, align 4, !tbaa !12
  %call225 = call ptr @Intlistpool_push(ptr noundef %376, ptr noundef %377, i32 noundef %378)
  %379 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches226 = getelementptr inbounds %struct.Path_T, ptr %379, i32 0, i32 20
  store ptr %call225, ptr %ref_nmismatches226, align 8, !tbaa !42
  %380 = load ptr, ptr %newpath, align 8, !tbaa !5
  %univdiagonals227 = getelementptr inbounds %struct.Path_T, ptr %380, i32 0, i32 18
  %381 = load ptr, ptr %univdiagonals227, align 8, !tbaa !36
  %382 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %383 = load i32, ptr %middle_univdiagonal, align 4, !tbaa !12
  %call228 = call ptr @Uintlistpool_push(ptr noundef %381, ptr noundef %382, i32 noundef %383)
  %384 = load ptr, ptr %newpath, align 8, !tbaa !5
  %univdiagonals229 = getelementptr inbounds %struct.Path_T, ptr %384, i32 0, i32 18
  store ptr %call228, ptr %univdiagonals229, align 8, !tbaa !36
  %385 = load ptr, ptr %newpath, align 8, !tbaa !5
  %univdiagonals230 = getelementptr inbounds %struct.Path_T, ptr %385, i32 0, i32 18
  %386 = load ptr, ptr %univdiagonals230, align 8, !tbaa !36
  %387 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %388 = load i32, ptr %low_univdiagonal.addr, align 4, !tbaa !12
  %call231 = call ptr @Uintlistpool_push(ptr noundef %386, ptr noundef %387, i32 noundef %388)
  %389 = load ptr, ptr %newpath, align 8, !tbaa !5
  %univdiagonals232 = getelementptr inbounds %struct.Path_T, ptr %389, i32 0, i32 18
  store ptr %call231, ptr %univdiagonals232, align 8, !tbaa !36
  br label %if.end281

if.else233:                                       ; preds = %if.else183
  %390 = load i32, ptr %low_univdiagonal.addr, align 4, !tbaa !12
  %391 = load i32, ptr %nindels, align 4, !tbaa !12
  %add234 = add i32 %390, %391
  store i32 %add234, ptr %middle_univdiagonal, align 4, !tbaa !12
  %392 = load i32, ptr %univdiagonal, align 4, !tbaa !12
  %393 = load i32, ptr %middle_univdiagonal, align 4, !tbaa !12
  %sub235 = sub i32 %392, %393
  store i32 %sub235, ptr %splice_distance, align 4, !tbaa !12
  %394 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints236 = getelementptr inbounds %struct.Path_T, ptr %394, i32 0, i32 17
  %395 = load ptr, ptr %endpoints236, align 8, !tbaa !40
  %396 = load i32, ptr %splice_qpos, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %395, i32 noundef %396)
  %397 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints237 = getelementptr inbounds %struct.Path_T, ptr %397, i32 0, i32 17
  %398 = load ptr, ptr %endpoints237, align 8, !tbaa !40
  %399 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %400 = load i32, ptr %indel_pos, align 4, !tbaa !12
  %call238 = call ptr @Intlistpool_push(ptr noundef %398, ptr noundef %399, i32 noundef %400)
  %401 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints239 = getelementptr inbounds %struct.Path_T, ptr %401, i32 0, i32 17
  store ptr %call238, ptr %endpoints239, align 8, !tbaa !40
  %402 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints240 = getelementptr inbounds %struct.Path_T, ptr %402, i32 0, i32 17
  %403 = load ptr, ptr %endpoints240, align 8, !tbaa !40
  %404 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %405 = load i32, ptr %low_qstart.addr, align 4, !tbaa !12
  %call241 = call ptr @Intlistpool_push(ptr noundef %403, ptr noundef %404, i32 noundef %405)
  %406 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints242 = getelementptr inbounds %struct.Path_T, ptr %406, i32 0, i32 17
  store ptr %call241, ptr %endpoints242, align 8, !tbaa !40
  %407 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions243 = getelementptr inbounds %struct.Path_T, ptr %407, i32 0, i32 21
  %408 = load ptr, ptr %junctions243, align 8, !tbaa !43
  %409 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %410 = load i32, ptr %splice_distance, align 4, !tbaa !12
  %411 = load double, ptr %donor_prob, align 8, !tbaa !44
  %412 = load double, ptr %acceptor_prob, align 8, !tbaa !44
  %413 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %call244 = call ptr @Junction_new_splice(i32 noundef %410, i32 noundef 2, double noundef %411, double noundef %412, ptr noundef %413)
  %call245 = call ptr @Listpool_push(ptr noundef %408, ptr noundef %409, ptr noundef %call244)
  %414 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions246 = getelementptr inbounds %struct.Path_T, ptr %414, i32 0, i32 21
  store ptr %call245, ptr %junctions246, align 8, !tbaa !43
  %415 = load i32, ptr %nindels, align 4, !tbaa !12
  %cmp247 = icmp slt i32 %415, 0
  br i1 %cmp247, label %if.then248, label %if.else254

if.then248:                                       ; preds = %if.else233
  %416 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions249 = getelementptr inbounds %struct.Path_T, ptr %416, i32 0, i32 21
  %417 = load ptr, ptr %junctions249, align 8, !tbaa !43
  %418 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %419 = load i32, ptr %nindels, align 4, !tbaa !12
  %sub250 = sub nsw i32 0, %419
  %420 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %call251 = call ptr @Junction_new_insertion(i32 noundef %sub250, ptr noundef %420)
  %call252 = call ptr @Listpool_push(ptr noundef %417, ptr noundef %418, ptr noundef %call251)
  %421 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions253 = getelementptr inbounds %struct.Path_T, ptr %421, i32 0, i32 21
  store ptr %call252, ptr %junctions253, align 8, !tbaa !43
  br label %if.end260

if.else254:                                       ; preds = %if.else233
  %422 = load i32, ptr %low_left, align 4, !tbaa !12
  %423 = load i32, ptr %indel_pos, align 4, !tbaa !12
  %add255 = add i32 %422, %423
  store i32 %add255, ptr %deletionpos, align 4, !tbaa !12
  %424 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions256 = getelementptr inbounds %struct.Path_T, ptr %424, i32 0, i32 21
  %425 = load ptr, ptr %junctions256, align 8, !tbaa !43
  %426 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %427 = load i32, ptr %nindels, align 4, !tbaa !12
  %428 = load i32, ptr %deletionpos, align 4, !tbaa !12
  %429 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %call257 = call ptr @Junction_new_deletion(i32 noundef %427, i32 noundef %428, ptr noundef %429)
  %call258 = call ptr @Listpool_push(ptr noundef %425, ptr noundef %426, ptr noundef %call257)
  %430 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions259 = getelementptr inbounds %struct.Path_T, ptr %430, i32 0, i32 21
  store ptr %call258, ptr %junctions259, align 8, !tbaa !43
  br label %if.end260

if.end260:                                        ; preds = %if.else254, %if.then248
  %431 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches261 = getelementptr inbounds %struct.Path_T, ptr %431, i32 0, i32 19
  %432 = load ptr, ptr %nmismatches261, align 8, !tbaa !41
  %433 = load i32, ptr %nmismatches_j, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %432, i32 noundef %433)
  %434 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches262 = getelementptr inbounds %struct.Path_T, ptr %434, i32 0, i32 20
  %435 = load ptr, ptr %ref_nmismatches262, align 8, !tbaa !42
  %436 = load i32, ptr %ref_nmismatches_j, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %435, i32 noundef %436)
  %437 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches263 = getelementptr inbounds %struct.Path_T, ptr %437, i32 0, i32 19
  %438 = load ptr, ptr %nmismatches263, align 8, !tbaa !41
  %439 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %440 = load i32, ptr %nmismatches_indel, align 4, !tbaa !12
  %call264 = call ptr @Intlistpool_push(ptr noundef %438, ptr noundef %439, i32 noundef %440)
  %441 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches265 = getelementptr inbounds %struct.Path_T, ptr %441, i32 0, i32 19
  store ptr %call264, ptr %nmismatches265, align 8, !tbaa !41
  %442 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches266 = getelementptr inbounds %struct.Path_T, ptr %442, i32 0, i32 20
  %443 = load ptr, ptr %ref_nmismatches266, align 8, !tbaa !42
  %444 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %445 = load i32, ptr %ref_nmismatches_indel, align 4, !tbaa !12
  %call267 = call ptr @Intlistpool_push(ptr noundef %443, ptr noundef %444, i32 noundef %445)
  %446 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches268 = getelementptr inbounds %struct.Path_T, ptr %446, i32 0, i32 20
  store ptr %call267, ptr %ref_nmismatches268, align 8, !tbaa !42
  %447 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches269 = getelementptr inbounds %struct.Path_T, ptr %447, i32 0, i32 19
  %448 = load ptr, ptr %nmismatches269, align 8, !tbaa !41
  %449 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %450 = load i32, ptr %nmismatches_i, align 4, !tbaa !12
  %call270 = call ptr @Intlistpool_push(ptr noundef %448, ptr noundef %449, i32 noundef %450)
  %451 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches271 = getelementptr inbounds %struct.Path_T, ptr %451, i32 0, i32 19
  store ptr %call270, ptr %nmismatches271, align 8, !tbaa !41
  %452 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches272 = getelementptr inbounds %struct.Path_T, ptr %452, i32 0, i32 20
  %453 = load ptr, ptr %ref_nmismatches272, align 8, !tbaa !42
  %454 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %455 = load i32, ptr %nmismatches_i, align 4, !tbaa !12
  %call273 = call ptr @Intlistpool_push(ptr noundef %453, ptr noundef %454, i32 noundef %455)
  %456 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches274 = getelementptr inbounds %struct.Path_T, ptr %456, i32 0, i32 20
  store ptr %call273, ptr %ref_nmismatches274, align 8, !tbaa !42
  %457 = load ptr, ptr %newpath, align 8, !tbaa !5
  %univdiagonals275 = getelementptr inbounds %struct.Path_T, ptr %457, i32 0, i32 18
  %458 = load ptr, ptr %univdiagonals275, align 8, !tbaa !36
  %459 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %460 = load i32, ptr %middle_univdiagonal, align 4, !tbaa !12
  %call276 = call ptr @Uintlistpool_push(ptr noundef %458, ptr noundef %459, i32 noundef %460)
  %461 = load ptr, ptr %newpath, align 8, !tbaa !5
  %univdiagonals277 = getelementptr inbounds %struct.Path_T, ptr %461, i32 0, i32 18
  store ptr %call276, ptr %univdiagonals277, align 8, !tbaa !36
  %462 = load ptr, ptr %newpath, align 8, !tbaa !5
  %univdiagonals278 = getelementptr inbounds %struct.Path_T, ptr %462, i32 0, i32 18
  %463 = load ptr, ptr %univdiagonals278, align 8, !tbaa !36
  %464 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %465 = load i32, ptr %low_univdiagonal.addr, align 4, !tbaa !12
  %call279 = call ptr @Uintlistpool_push(ptr noundef %463, ptr noundef %464, i32 noundef %465)
  %466 = load ptr, ptr %newpath, align 8, !tbaa !5
  %univdiagonals280 = getelementptr inbounds %struct.Path_T, ptr %466, i32 0, i32 18
  store ptr %call279, ptr %univdiagonals280, align 8, !tbaa !36
  br label %if.end281

if.end281:                                        ; preds = %if.end260, %if.end208
  br label %if.end282

if.end282:                                        ; preds = %if.end281, %if.then162
  br label %if.end283

if.end283:                                        ; preds = %if.end282, %if.end159
  br label %if.end454

if.else284:                                       ; preds = %if.else111
  %467 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %468 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %469 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %470 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %471 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %472 = load ptr, ptr %vectorpool.addr, align 8, !tbaa !5
  %call285 = call ptr @Path_copy_5(ptr noundef %467, i8 noundef zeroext 0, i32 noundef 0, double noundef 0.000000e+00, ptr noundef %468, ptr noundef %469, ptr noundef %470, ptr noundef %471, ptr noundef %472)
  store ptr %call285, ptr %newpath, align 8, !tbaa !5
  %473 = load i32, ptr %low_univdiagonal.addr, align 4, !tbaa !12
  %474 = load i32, ptr %univdiagonal, align 4, !tbaa !12
  %475 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %476 = load i8, ptr %plusp.addr, align 1, !tbaa !14
  %477 = load i32, ptr %chroffset.addr, align 4, !tbaa !12
  %478 = load i32, ptr %low_qstart.addr, align 4, !tbaa !12
  %479 = load i32, ptr %qend, align 4, !tbaa !12
  %480 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %481 = load ptr, ptr %indelinfo.addr, align 8, !tbaa !5
  %482 = load ptr, ptr %spliceinfo.addr, align 8, !tbaa !5
  %483 = load ptr, ptr %knownsplicing.addr, align 8, !tbaa !5
  %484 = load i32, ptr %genestrand.addr, align 4, !tbaa !12
  %485 = load i32, ptr %nmismatches_allowed.addr, align 4, !tbaa !12
  %486 = load i32, ptr %max_insertionlen.addr, align 4, !tbaa !12
  %487 = load i32, ptr %max_deletionlen.addr, align 4, !tbaa !12
  %488 = load i8, ptr %salvagep.addr, align 1, !tbaa !14
  %call286 = call i32 @Splice_resolve(ptr noundef %middle_univdiagonal, ptr noundef %splice_qpos_i, ptr noundef %splice_qpos_j, ptr noundef %nindels, ptr noundef %indel_pos, ptr noundef %nmismatches_i, ptr noundef %nmismatches_middle, ptr noundef %nmismatches_j, ptr noundef %nmismatches_indel, ptr noundef %ref_nmismatches_i, ptr noundef %ref_nmismatches_middle, ptr noundef %ref_nmismatches_j, ptr noundef %ref_nmismatches_indel, ptr noundef %donor_prob, ptr noundef %acceptor_prob, i32 noundef %473, i32 noundef %474, ptr noundef %475, i8 noundef zeroext %476, i32 noundef %477, i32 noundef %478, i32 noundef %479, i32 noundef %480, ptr noundef %481, ptr noundef %482, ptr noundef %483, i8 noundef zeroext 0, i32 noundef %484, i32 noundef %485, i32 noundef %486, i32 noundef %487, i8 noundef zeroext %488, i8 noundef zeroext 1)
  store i32 %call286, ptr %splice_qpos, align 4, !tbaa !12
  %cmp287 = icmp slt i32 %call286, 0
  br i1 %cmp287, label %if.then288, label %if.else330

if.then288:                                       ; preds = %if.else284
  %489 = load i32, ptr %middle_univdiagonal, align 4, !tbaa !12
  %cmp289 = icmp ne i32 %489, 0
  br i1 %cmp289, label %if.then290, label %if.else328

if.then290:                                       ; preds = %if.then288
  %490 = load i32, ptr %univdiagonal, align 4, !tbaa !12
  %491 = load i32, ptr %middle_univdiagonal, align 4, !tbaa !12
  %sub291 = sub i32 %490, %491
  store i32 %sub291, ptr %splice_distance_j, align 4, !tbaa !12
  %492 = load i32, ptr %middle_univdiagonal, align 4, !tbaa !12
  %493 = load i32, ptr %low_univdiagonal.addr, align 4, !tbaa !12
  %sub292 = sub i32 %492, %493
  store i32 %sub292, ptr %splice_distance_i, align 4, !tbaa !12
  %494 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints293 = getelementptr inbounds %struct.Path_T, ptr %494, i32 0, i32 17
  %495 = load ptr, ptr %endpoints293, align 8, !tbaa !40
  %496 = load i32, ptr %splice_qpos_j, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %495, i32 noundef %496)
  %497 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints294 = getelementptr inbounds %struct.Path_T, ptr %497, i32 0, i32 17
  %498 = load ptr, ptr %endpoints294, align 8, !tbaa !40
  %499 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %500 = load i32, ptr %splice_qpos_i, align 4, !tbaa !12
  %call295 = call ptr @Intlistpool_push(ptr noundef %498, ptr noundef %499, i32 noundef %500)
  %501 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints296 = getelementptr inbounds %struct.Path_T, ptr %501, i32 0, i32 17
  store ptr %call295, ptr %endpoints296, align 8, !tbaa !40
  %502 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints297 = getelementptr inbounds %struct.Path_T, ptr %502, i32 0, i32 17
  %503 = load ptr, ptr %endpoints297, align 8, !tbaa !40
  %504 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %505 = load i32, ptr %low_qstart.addr, align 4, !tbaa !12
  %call298 = call ptr @Intlistpool_push(ptr noundef %503, ptr noundef %504, i32 noundef %505)
  %506 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints299 = getelementptr inbounds %struct.Path_T, ptr %506, i32 0, i32 17
  store ptr %call298, ptr %endpoints299, align 8, !tbaa !40
  %507 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions300 = getelementptr inbounds %struct.Path_T, ptr %507, i32 0, i32 21
  %508 = load ptr, ptr %junctions300, align 8, !tbaa !43
  %509 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %510 = load i32, ptr %splice_distance_j, align 4, !tbaa !12
  %511 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %call301 = call ptr @Junction_new_splice(i32 noundef %510, i32 noundef 1, double noundef 1.000000e+00, double noundef 1.000000e+00, ptr noundef %511)
  %call302 = call ptr @Listpool_push(ptr noundef %508, ptr noundef %509, ptr noundef %call301)
  %512 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions303 = getelementptr inbounds %struct.Path_T, ptr %512, i32 0, i32 21
  store ptr %call302, ptr %junctions303, align 8, !tbaa !43
  %513 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions304 = getelementptr inbounds %struct.Path_T, ptr %513, i32 0, i32 21
  %514 = load ptr, ptr %junctions304, align 8, !tbaa !43
  %515 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %516 = load i32, ptr %splice_distance_i, align 4, !tbaa !12
  %517 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %call305 = call ptr @Junction_new_splice(i32 noundef %516, i32 noundef 1, double noundef 1.000000e+00, double noundef 1.000000e+00, ptr noundef %517)
  %call306 = call ptr @Listpool_push(ptr noundef %514, ptr noundef %515, ptr noundef %call305)
  %518 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions307 = getelementptr inbounds %struct.Path_T, ptr %518, i32 0, i32 21
  store ptr %call306, ptr %junctions307, align 8, !tbaa !43
  %519 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches308 = getelementptr inbounds %struct.Path_T, ptr %519, i32 0, i32 19
  %520 = load ptr, ptr %nmismatches308, align 8, !tbaa !41
  %521 = load i32, ptr %nmismatches_j, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %520, i32 noundef %521)
  %522 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches309 = getelementptr inbounds %struct.Path_T, ptr %522, i32 0, i32 20
  %523 = load ptr, ptr %ref_nmismatches309, align 8, !tbaa !42
  %524 = load i32, ptr %ref_nmismatches_j, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %523, i32 noundef %524)
  %525 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches310 = getelementptr inbounds %struct.Path_T, ptr %525, i32 0, i32 19
  %526 = load ptr, ptr %nmismatches310, align 8, !tbaa !41
  %527 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %528 = load i32, ptr %nmismatches_middle, align 4, !tbaa !12
  %call311 = call ptr @Intlistpool_push(ptr noundef %526, ptr noundef %527, i32 noundef %528)
  %529 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches312 = getelementptr inbounds %struct.Path_T, ptr %529, i32 0, i32 19
  store ptr %call311, ptr %nmismatches312, align 8, !tbaa !41
  %530 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches313 = getelementptr inbounds %struct.Path_T, ptr %530, i32 0, i32 20
  %531 = load ptr, ptr %ref_nmismatches313, align 8, !tbaa !42
  %532 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %533 = load i32, ptr %ref_nmismatches_middle, align 4, !tbaa !12
  %call314 = call ptr @Intlistpool_push(ptr noundef %531, ptr noundef %532, i32 noundef %533)
  %534 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches315 = getelementptr inbounds %struct.Path_T, ptr %534, i32 0, i32 20
  store ptr %call314, ptr %ref_nmismatches315, align 8, !tbaa !42
  %535 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches316 = getelementptr inbounds %struct.Path_T, ptr %535, i32 0, i32 19
  %536 = load ptr, ptr %nmismatches316, align 8, !tbaa !41
  %537 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %538 = load i32, ptr %nmismatches_i, align 4, !tbaa !12
  %call317 = call ptr @Intlistpool_push(ptr noundef %536, ptr noundef %537, i32 noundef %538)
  %539 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches318 = getelementptr inbounds %struct.Path_T, ptr %539, i32 0, i32 19
  store ptr %call317, ptr %nmismatches318, align 8, !tbaa !41
  %540 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches319 = getelementptr inbounds %struct.Path_T, ptr %540, i32 0, i32 20
  %541 = load ptr, ptr %ref_nmismatches319, align 8, !tbaa !42
  %542 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %543 = load i32, ptr %ref_nmismatches_i, align 4, !tbaa !12
  %call320 = call ptr @Intlistpool_push(ptr noundef %541, ptr noundef %542, i32 noundef %543)
  %544 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches321 = getelementptr inbounds %struct.Path_T, ptr %544, i32 0, i32 20
  store ptr %call320, ptr %ref_nmismatches321, align 8, !tbaa !42
  %545 = load ptr, ptr %newpath, align 8, !tbaa !5
  %univdiagonals322 = getelementptr inbounds %struct.Path_T, ptr %545, i32 0, i32 18
  %546 = load ptr, ptr %univdiagonals322, align 8, !tbaa !36
  %547 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %548 = load i32, ptr %middle_univdiagonal, align 4, !tbaa !12
  %call323 = call ptr @Uintlistpool_push(ptr noundef %546, ptr noundef %547, i32 noundef %548)
  %549 = load ptr, ptr %newpath, align 8, !tbaa !5
  %univdiagonals324 = getelementptr inbounds %struct.Path_T, ptr %549, i32 0, i32 18
  store ptr %call323, ptr %univdiagonals324, align 8, !tbaa !36
  %550 = load ptr, ptr %newpath, align 8, !tbaa !5
  %univdiagonals325 = getelementptr inbounds %struct.Path_T, ptr %550, i32 0, i32 18
  %551 = load ptr, ptr %univdiagonals325, align 8, !tbaa !36
  %552 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %553 = load i32, ptr %low_univdiagonal.addr, align 4, !tbaa !12
  %call326 = call ptr @Uintlistpool_push(ptr noundef %551, ptr noundef %552, i32 noundef %553)
  %554 = load ptr, ptr %newpath, align 8, !tbaa !5
  %univdiagonals327 = getelementptr inbounds %struct.Path_T, ptr %554, i32 0, i32 18
  store ptr %call326, ptr %univdiagonals327, align 8, !tbaa !36
  br label %if.end329

if.else328:                                       ; preds = %if.then288
  %555 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %556 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %557 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %558 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %559 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  call void @Path_free(ptr noundef %newpath, ptr noundef %555, ptr noundef %556, ptr noundef %557, ptr noundef %558, ptr noundef %559)
  store ptr null, ptr %newpath, align 8, !tbaa !5
  br label %if.end329

if.end329:                                        ; preds = %if.else328, %if.then290
  br label %if.end453

if.else330:                                       ; preds = %if.else284
  %560 = load i32, ptr %nindels, align 4, !tbaa !12
  %cmp331 = icmp eq i32 %560, 0
  br i1 %cmp331, label %if.then332, label %if.else353

if.then332:                                       ; preds = %if.else330
  %561 = load i32, ptr %univdiagonal, align 4, !tbaa !12
  %562 = load i32, ptr %low_univdiagonal.addr, align 4, !tbaa !12
  %sub333 = sub i32 %561, %562
  store i32 %sub333, ptr %splice_distance, align 4, !tbaa !12
  %563 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints334 = getelementptr inbounds %struct.Path_T, ptr %563, i32 0, i32 17
  %564 = load ptr, ptr %endpoints334, align 8, !tbaa !40
  %565 = load i32, ptr %splice_qpos, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %564, i32 noundef %565)
  %566 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints335 = getelementptr inbounds %struct.Path_T, ptr %566, i32 0, i32 17
  %567 = load ptr, ptr %endpoints335, align 8, !tbaa !40
  %568 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %569 = load i32, ptr %low_qstart.addr, align 4, !tbaa !12
  %call336 = call ptr @Intlistpool_push(ptr noundef %567, ptr noundef %568, i32 noundef %569)
  %570 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints337 = getelementptr inbounds %struct.Path_T, ptr %570, i32 0, i32 17
  store ptr %call336, ptr %endpoints337, align 8, !tbaa !40
  %571 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions338 = getelementptr inbounds %struct.Path_T, ptr %571, i32 0, i32 21
  %572 = load ptr, ptr %junctions338, align 8, !tbaa !43
  %573 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %574 = load i32, ptr %splice_distance, align 4, !tbaa !12
  %575 = load double, ptr %donor_prob, align 8, !tbaa !44
  %576 = load double, ptr %acceptor_prob, align 8, !tbaa !44
  %577 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %call339 = call ptr @Junction_new_splice(i32 noundef %574, i32 noundef 1, double noundef %575, double noundef %576, ptr noundef %577)
  %call340 = call ptr @Listpool_push(ptr noundef %572, ptr noundef %573, ptr noundef %call339)
  %578 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions341 = getelementptr inbounds %struct.Path_T, ptr %578, i32 0, i32 21
  store ptr %call340, ptr %junctions341, align 8, !tbaa !43
  %579 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches342 = getelementptr inbounds %struct.Path_T, ptr %579, i32 0, i32 19
  %580 = load ptr, ptr %nmismatches342, align 8, !tbaa !41
  %581 = load i32, ptr %nmismatches_j, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %580, i32 noundef %581)
  %582 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches343 = getelementptr inbounds %struct.Path_T, ptr %582, i32 0, i32 20
  %583 = load ptr, ptr %ref_nmismatches343, align 8, !tbaa !42
  %584 = load i32, ptr %ref_nmismatches_j, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %583, i32 noundef %584)
  %585 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches344 = getelementptr inbounds %struct.Path_T, ptr %585, i32 0, i32 19
  %586 = load ptr, ptr %nmismatches344, align 8, !tbaa !41
  %587 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %588 = load i32, ptr %nmismatches_i, align 4, !tbaa !12
  %call345 = call ptr @Intlistpool_push(ptr noundef %586, ptr noundef %587, i32 noundef %588)
  %589 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches346 = getelementptr inbounds %struct.Path_T, ptr %589, i32 0, i32 19
  store ptr %call345, ptr %nmismatches346, align 8, !tbaa !41
  %590 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches347 = getelementptr inbounds %struct.Path_T, ptr %590, i32 0, i32 20
  %591 = load ptr, ptr %ref_nmismatches347, align 8, !tbaa !42
  %592 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %593 = load i32, ptr %ref_nmismatches_i, align 4, !tbaa !12
  %call348 = call ptr @Intlistpool_push(ptr noundef %591, ptr noundef %592, i32 noundef %593)
  %594 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches349 = getelementptr inbounds %struct.Path_T, ptr %594, i32 0, i32 20
  store ptr %call348, ptr %ref_nmismatches349, align 8, !tbaa !42
  %595 = load ptr, ptr %newpath, align 8, !tbaa !5
  %univdiagonals350 = getelementptr inbounds %struct.Path_T, ptr %595, i32 0, i32 18
  %596 = load ptr, ptr %univdiagonals350, align 8, !tbaa !36
  %597 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %598 = load i32, ptr %low_univdiagonal.addr, align 4, !tbaa !12
  %call351 = call ptr @Uintlistpool_push(ptr noundef %596, ptr noundef %597, i32 noundef %598)
  %599 = load ptr, ptr %newpath, align 8, !tbaa !5
  %univdiagonals352 = getelementptr inbounds %struct.Path_T, ptr %599, i32 0, i32 18
  store ptr %call351, ptr %univdiagonals352, align 8, !tbaa !36
  br label %if.end452

if.else353:                                       ; preds = %if.else330
  %600 = load i32, ptr %splice_qpos, align 4, !tbaa !12
  %601 = load i32, ptr %indel_pos, align 4, !tbaa !12
  %cmp354 = icmp slt i32 %600, %601
  br i1 %cmp354, label %if.then355, label %if.else403

if.then355:                                       ; preds = %if.else353
  %602 = load i32, ptr %univdiagonal, align 4, !tbaa !12
  %603 = load i32, ptr %nindels, align 4, !tbaa !12
  %sub356 = sub i32 %602, %603
  store i32 %sub356, ptr %middle_univdiagonal, align 4, !tbaa !12
  %604 = load i32, ptr %middle_univdiagonal, align 4, !tbaa !12
  %605 = load i32, ptr %low_univdiagonal.addr, align 4, !tbaa !12
  %sub357 = sub i32 %604, %605
  store i32 %sub357, ptr %splice_distance, align 4, !tbaa !12
  %606 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints358 = getelementptr inbounds %struct.Path_T, ptr %606, i32 0, i32 17
  %607 = load ptr, ptr %endpoints358, align 8, !tbaa !40
  %608 = load i32, ptr %indel_pos, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %607, i32 noundef %608)
  %609 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints359 = getelementptr inbounds %struct.Path_T, ptr %609, i32 0, i32 17
  %610 = load ptr, ptr %endpoints359, align 8, !tbaa !40
  %611 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %612 = load i32, ptr %splice_qpos, align 4, !tbaa !12
  %call360 = call ptr @Intlistpool_push(ptr noundef %610, ptr noundef %611, i32 noundef %612)
  %613 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints361 = getelementptr inbounds %struct.Path_T, ptr %613, i32 0, i32 17
  store ptr %call360, ptr %endpoints361, align 8, !tbaa !40
  %614 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints362 = getelementptr inbounds %struct.Path_T, ptr %614, i32 0, i32 17
  %615 = load ptr, ptr %endpoints362, align 8, !tbaa !40
  %616 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %617 = load i32, ptr %low_qstart.addr, align 4, !tbaa !12
  %call363 = call ptr @Intlistpool_push(ptr noundef %615, ptr noundef %616, i32 noundef %617)
  %618 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints364 = getelementptr inbounds %struct.Path_T, ptr %618, i32 0, i32 17
  store ptr %call363, ptr %endpoints364, align 8, !tbaa !40
  %619 = load i32, ptr %nindels, align 4, !tbaa !12
  %cmp365 = icmp slt i32 %619, 0
  br i1 %cmp365, label %if.then366, label %if.else372

if.then366:                                       ; preds = %if.then355
  %620 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions367 = getelementptr inbounds %struct.Path_T, ptr %620, i32 0, i32 21
  %621 = load ptr, ptr %junctions367, align 8, !tbaa !43
  %622 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %623 = load i32, ptr %nindels, align 4, !tbaa !12
  %sub368 = sub nsw i32 0, %623
  %624 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %call369 = call ptr @Junction_new_insertion(i32 noundef %sub368, ptr noundef %624)
  %call370 = call ptr @Listpool_push(ptr noundef %621, ptr noundef %622, ptr noundef %call369)
  %625 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions371 = getelementptr inbounds %struct.Path_T, ptr %625, i32 0, i32 21
  store ptr %call370, ptr %junctions371, align 8, !tbaa !43
  br label %if.end378

if.else372:                                       ; preds = %if.then355
  %626 = load i32, ptr %low_left, align 4, !tbaa !12
  %627 = load i32, ptr %indel_pos, align 4, !tbaa !12
  %add373 = add i32 %626, %627
  store i32 %add373, ptr %deletionpos, align 4, !tbaa !12
  %628 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions374 = getelementptr inbounds %struct.Path_T, ptr %628, i32 0, i32 21
  %629 = load ptr, ptr %junctions374, align 8, !tbaa !43
  %630 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %631 = load i32, ptr %nindels, align 4, !tbaa !12
  %632 = load i32, ptr %deletionpos, align 4, !tbaa !12
  %633 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %call375 = call ptr @Junction_new_deletion(i32 noundef %631, i32 noundef %632, ptr noundef %633)
  %call376 = call ptr @Listpool_push(ptr noundef %629, ptr noundef %630, ptr noundef %call375)
  %634 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions377 = getelementptr inbounds %struct.Path_T, ptr %634, i32 0, i32 21
  store ptr %call376, ptr %junctions377, align 8, !tbaa !43
  br label %if.end378

if.end378:                                        ; preds = %if.else372, %if.then366
  %635 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions379 = getelementptr inbounds %struct.Path_T, ptr %635, i32 0, i32 21
  %636 = load ptr, ptr %junctions379, align 8, !tbaa !43
  %637 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %638 = load i32, ptr %splice_distance, align 4, !tbaa !12
  %639 = load double, ptr %donor_prob, align 8, !tbaa !44
  %640 = load double, ptr %acceptor_prob, align 8, !tbaa !44
  %641 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %call380 = call ptr @Junction_new_splice(i32 noundef %638, i32 noundef 1, double noundef %639, double noundef %640, ptr noundef %641)
  %call381 = call ptr @Listpool_push(ptr noundef %636, ptr noundef %637, ptr noundef %call380)
  %642 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions382 = getelementptr inbounds %struct.Path_T, ptr %642, i32 0, i32 21
  store ptr %call381, ptr %junctions382, align 8, !tbaa !43
  %643 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches383 = getelementptr inbounds %struct.Path_T, ptr %643, i32 0, i32 19
  %644 = load ptr, ptr %nmismatches383, align 8, !tbaa !41
  %645 = load i32, ptr %nmismatches_j, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %644, i32 noundef %645)
  %646 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches384 = getelementptr inbounds %struct.Path_T, ptr %646, i32 0, i32 20
  %647 = load ptr, ptr %ref_nmismatches384, align 8, !tbaa !42
  %648 = load i32, ptr %nmismatches_j, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %647, i32 noundef %648)
  %649 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches385 = getelementptr inbounds %struct.Path_T, ptr %649, i32 0, i32 19
  %650 = load ptr, ptr %nmismatches385, align 8, !tbaa !41
  %651 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %652 = load i32, ptr %nmismatches_indel, align 4, !tbaa !12
  %call386 = call ptr @Intlistpool_push(ptr noundef %650, ptr noundef %651, i32 noundef %652)
  %653 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches387 = getelementptr inbounds %struct.Path_T, ptr %653, i32 0, i32 19
  store ptr %call386, ptr %nmismatches387, align 8, !tbaa !41
  %654 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches388 = getelementptr inbounds %struct.Path_T, ptr %654, i32 0, i32 20
  %655 = load ptr, ptr %ref_nmismatches388, align 8, !tbaa !42
  %656 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %657 = load i32, ptr %ref_nmismatches_indel, align 4, !tbaa !12
  %call389 = call ptr @Intlistpool_push(ptr noundef %655, ptr noundef %656, i32 noundef %657)
  %658 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches390 = getelementptr inbounds %struct.Path_T, ptr %658, i32 0, i32 20
  store ptr %call389, ptr %ref_nmismatches390, align 8, !tbaa !42
  %659 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches391 = getelementptr inbounds %struct.Path_T, ptr %659, i32 0, i32 19
  %660 = load ptr, ptr %nmismatches391, align 8, !tbaa !41
  %661 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %662 = load i32, ptr %nmismatches_i, align 4, !tbaa !12
  %call392 = call ptr @Intlistpool_push(ptr noundef %660, ptr noundef %661, i32 noundef %662)
  %663 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches393 = getelementptr inbounds %struct.Path_T, ptr %663, i32 0, i32 19
  store ptr %call392, ptr %nmismatches393, align 8, !tbaa !41
  %664 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches394 = getelementptr inbounds %struct.Path_T, ptr %664, i32 0, i32 20
  %665 = load ptr, ptr %ref_nmismatches394, align 8, !tbaa !42
  %666 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %667 = load i32, ptr %ref_nmismatches_i, align 4, !tbaa !12
  %call395 = call ptr @Intlistpool_push(ptr noundef %665, ptr noundef %666, i32 noundef %667)
  %668 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches396 = getelementptr inbounds %struct.Path_T, ptr %668, i32 0, i32 20
  store ptr %call395, ptr %ref_nmismatches396, align 8, !tbaa !42
  %669 = load ptr, ptr %newpath, align 8, !tbaa !5
  %univdiagonals397 = getelementptr inbounds %struct.Path_T, ptr %669, i32 0, i32 18
  %670 = load ptr, ptr %univdiagonals397, align 8, !tbaa !36
  %671 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %672 = load i32, ptr %middle_univdiagonal, align 4, !tbaa !12
  %call398 = call ptr @Uintlistpool_push(ptr noundef %670, ptr noundef %671, i32 noundef %672)
  %673 = load ptr, ptr %newpath, align 8, !tbaa !5
  %univdiagonals399 = getelementptr inbounds %struct.Path_T, ptr %673, i32 0, i32 18
  store ptr %call398, ptr %univdiagonals399, align 8, !tbaa !36
  %674 = load ptr, ptr %newpath, align 8, !tbaa !5
  %univdiagonals400 = getelementptr inbounds %struct.Path_T, ptr %674, i32 0, i32 18
  %675 = load ptr, ptr %univdiagonals400, align 8, !tbaa !36
  %676 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %677 = load i32, ptr %low_univdiagonal.addr, align 4, !tbaa !12
  %call401 = call ptr @Uintlistpool_push(ptr noundef %675, ptr noundef %676, i32 noundef %677)
  %678 = load ptr, ptr %newpath, align 8, !tbaa !5
  %univdiagonals402 = getelementptr inbounds %struct.Path_T, ptr %678, i32 0, i32 18
  store ptr %call401, ptr %univdiagonals402, align 8, !tbaa !36
  br label %if.end451

if.else403:                                       ; preds = %if.else353
  %679 = load i32, ptr %low_univdiagonal.addr, align 4, !tbaa !12
  %680 = load i32, ptr %nindels, align 4, !tbaa !12
  %add404 = add i32 %679, %680
  store i32 %add404, ptr %middle_univdiagonal, align 4, !tbaa !12
  %681 = load i32, ptr %univdiagonal, align 4, !tbaa !12
  %682 = load i32, ptr %middle_univdiagonal, align 4, !tbaa !12
  %sub405 = sub i32 %681, %682
  store i32 %sub405, ptr %splice_distance, align 4, !tbaa !12
  %683 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints406 = getelementptr inbounds %struct.Path_T, ptr %683, i32 0, i32 17
  %684 = load ptr, ptr %endpoints406, align 8, !tbaa !40
  %685 = load i32, ptr %splice_qpos, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %684, i32 noundef %685)
  %686 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints407 = getelementptr inbounds %struct.Path_T, ptr %686, i32 0, i32 17
  %687 = load ptr, ptr %endpoints407, align 8, !tbaa !40
  %688 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %689 = load i32, ptr %indel_pos, align 4, !tbaa !12
  %call408 = call ptr @Intlistpool_push(ptr noundef %687, ptr noundef %688, i32 noundef %689)
  %690 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints409 = getelementptr inbounds %struct.Path_T, ptr %690, i32 0, i32 17
  store ptr %call408, ptr %endpoints409, align 8, !tbaa !40
  %691 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints410 = getelementptr inbounds %struct.Path_T, ptr %691, i32 0, i32 17
  %692 = load ptr, ptr %endpoints410, align 8, !tbaa !40
  %693 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %694 = load i32, ptr %low_qstart.addr, align 4, !tbaa !12
  %call411 = call ptr @Intlistpool_push(ptr noundef %692, ptr noundef %693, i32 noundef %694)
  %695 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints412 = getelementptr inbounds %struct.Path_T, ptr %695, i32 0, i32 17
  store ptr %call411, ptr %endpoints412, align 8, !tbaa !40
  %696 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions413 = getelementptr inbounds %struct.Path_T, ptr %696, i32 0, i32 21
  %697 = load ptr, ptr %junctions413, align 8, !tbaa !43
  %698 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %699 = load i32, ptr %splice_distance, align 4, !tbaa !12
  %700 = load double, ptr %donor_prob, align 8, !tbaa !44
  %701 = load double, ptr %acceptor_prob, align 8, !tbaa !44
  %702 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %call414 = call ptr @Junction_new_splice(i32 noundef %699, i32 noundef 1, double noundef %700, double noundef %701, ptr noundef %702)
  %call415 = call ptr @Listpool_push(ptr noundef %697, ptr noundef %698, ptr noundef %call414)
  %703 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions416 = getelementptr inbounds %struct.Path_T, ptr %703, i32 0, i32 21
  store ptr %call415, ptr %junctions416, align 8, !tbaa !43
  %704 = load i32, ptr %nindels, align 4, !tbaa !12
  %cmp417 = icmp slt i32 %704, 0
  br i1 %cmp417, label %if.then418, label %if.else424

if.then418:                                       ; preds = %if.else403
  %705 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions419 = getelementptr inbounds %struct.Path_T, ptr %705, i32 0, i32 21
  %706 = load ptr, ptr %junctions419, align 8, !tbaa !43
  %707 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %708 = load i32, ptr %nindels, align 4, !tbaa !12
  %sub420 = sub nsw i32 0, %708
  %709 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %call421 = call ptr @Junction_new_insertion(i32 noundef %sub420, ptr noundef %709)
  %call422 = call ptr @Listpool_push(ptr noundef %706, ptr noundef %707, ptr noundef %call421)
  %710 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions423 = getelementptr inbounds %struct.Path_T, ptr %710, i32 0, i32 21
  store ptr %call422, ptr %junctions423, align 8, !tbaa !43
  br label %if.end430

if.else424:                                       ; preds = %if.else403
  %711 = load i32, ptr %low_left, align 4, !tbaa !12
  %712 = load i32, ptr %indel_pos, align 4, !tbaa !12
  %add425 = add i32 %711, %712
  store i32 %add425, ptr %deletionpos, align 4, !tbaa !12
  %713 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions426 = getelementptr inbounds %struct.Path_T, ptr %713, i32 0, i32 21
  %714 = load ptr, ptr %junctions426, align 8, !tbaa !43
  %715 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %716 = load i32, ptr %nindels, align 4, !tbaa !12
  %717 = load i32, ptr %deletionpos, align 4, !tbaa !12
  %718 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %call427 = call ptr @Junction_new_deletion(i32 noundef %716, i32 noundef %717, ptr noundef %718)
  %call428 = call ptr @Listpool_push(ptr noundef %714, ptr noundef %715, ptr noundef %call427)
  %719 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions429 = getelementptr inbounds %struct.Path_T, ptr %719, i32 0, i32 21
  store ptr %call428, ptr %junctions429, align 8, !tbaa !43
  br label %if.end430

if.end430:                                        ; preds = %if.else424, %if.then418
  %720 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches431 = getelementptr inbounds %struct.Path_T, ptr %720, i32 0, i32 19
  %721 = load ptr, ptr %nmismatches431, align 8, !tbaa !41
  %722 = load i32, ptr %nmismatches_j, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %721, i32 noundef %722)
  %723 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches432 = getelementptr inbounds %struct.Path_T, ptr %723, i32 0, i32 20
  %724 = load ptr, ptr %ref_nmismatches432, align 8, !tbaa !42
  %725 = load i32, ptr %ref_nmismatches_j, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %724, i32 noundef %725)
  %726 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches433 = getelementptr inbounds %struct.Path_T, ptr %726, i32 0, i32 19
  %727 = load ptr, ptr %nmismatches433, align 8, !tbaa !41
  %728 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %729 = load i32, ptr %nmismatches_indel, align 4, !tbaa !12
  %call434 = call ptr @Intlistpool_push(ptr noundef %727, ptr noundef %728, i32 noundef %729)
  %730 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches435 = getelementptr inbounds %struct.Path_T, ptr %730, i32 0, i32 19
  store ptr %call434, ptr %nmismatches435, align 8, !tbaa !41
  %731 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches436 = getelementptr inbounds %struct.Path_T, ptr %731, i32 0, i32 20
  %732 = load ptr, ptr %ref_nmismatches436, align 8, !tbaa !42
  %733 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %734 = load i32, ptr %ref_nmismatches_indel, align 4, !tbaa !12
  %call437 = call ptr @Intlistpool_push(ptr noundef %732, ptr noundef %733, i32 noundef %734)
  %735 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches438 = getelementptr inbounds %struct.Path_T, ptr %735, i32 0, i32 20
  store ptr %call437, ptr %ref_nmismatches438, align 8, !tbaa !42
  %736 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches439 = getelementptr inbounds %struct.Path_T, ptr %736, i32 0, i32 19
  %737 = load ptr, ptr %nmismatches439, align 8, !tbaa !41
  %738 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %739 = load i32, ptr %nmismatches_i, align 4, !tbaa !12
  %call440 = call ptr @Intlistpool_push(ptr noundef %737, ptr noundef %738, i32 noundef %739)
  %740 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches441 = getelementptr inbounds %struct.Path_T, ptr %740, i32 0, i32 19
  store ptr %call440, ptr %nmismatches441, align 8, !tbaa !41
  %741 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches442 = getelementptr inbounds %struct.Path_T, ptr %741, i32 0, i32 20
  %742 = load ptr, ptr %ref_nmismatches442, align 8, !tbaa !42
  %743 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %744 = load i32, ptr %nmismatches_i, align 4, !tbaa !12
  %call443 = call ptr @Intlistpool_push(ptr noundef %742, ptr noundef %743, i32 noundef %744)
  %745 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches444 = getelementptr inbounds %struct.Path_T, ptr %745, i32 0, i32 20
  store ptr %call443, ptr %ref_nmismatches444, align 8, !tbaa !42
  %746 = load ptr, ptr %newpath, align 8, !tbaa !5
  %univdiagonals445 = getelementptr inbounds %struct.Path_T, ptr %746, i32 0, i32 18
  %747 = load ptr, ptr %univdiagonals445, align 8, !tbaa !36
  %748 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %749 = load i32, ptr %middle_univdiagonal, align 4, !tbaa !12
  %call446 = call ptr @Uintlistpool_push(ptr noundef %747, ptr noundef %748, i32 noundef %749)
  %750 = load ptr, ptr %newpath, align 8, !tbaa !5
  %univdiagonals447 = getelementptr inbounds %struct.Path_T, ptr %750, i32 0, i32 18
  store ptr %call446, ptr %univdiagonals447, align 8, !tbaa !36
  %751 = load ptr, ptr %newpath, align 8, !tbaa !5
  %univdiagonals448 = getelementptr inbounds %struct.Path_T, ptr %751, i32 0, i32 18
  %752 = load ptr, ptr %univdiagonals448, align 8, !tbaa !36
  %753 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %754 = load i32, ptr %low_univdiagonal.addr, align 4, !tbaa !12
  %call449 = call ptr @Uintlistpool_push(ptr noundef %752, ptr noundef %753, i32 noundef %754)
  %755 = load ptr, ptr %newpath, align 8, !tbaa !5
  %univdiagonals450 = getelementptr inbounds %struct.Path_T, ptr %755, i32 0, i32 18
  store ptr %call449, ptr %univdiagonals450, align 8, !tbaa !36
  br label %if.end451

if.end451:                                        ; preds = %if.end430, %if.end378
  br label %if.end452

if.end452:                                        ; preds = %if.end451, %if.then332
  br label %if.end453

if.end453:                                        ; preds = %if.end452, %if.end329
  br label %if.end454

if.end454:                                        ; preds = %if.end453, %if.end283
  br label %if.end455

if.end455:                                        ; preds = %if.end454, %if.end110
  br label %if.end456

if.end456:                                        ; preds = %if.end455, %if.end63
  br label %if.end457

if.end457:                                        ; preds = %if.end456, %if.then21
  br label %if.end458

if.end458:                                        ; preds = %if.end457, %if.end18
  br label %if.end459

if.end459:                                        ; preds = %if.end458, %if.then4
  %756 = load ptr, ptr %newpath, align 8, !tbaa !5
  store ptr %756, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end459, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ref_nmismatches_indel) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %nmismatches_indel) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %ref_nmismatches_middle) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %nmismatches_middle) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %ref_nmismatches) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %nmismatches) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %ref_nmismatches_j) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %ref_nmismatches_i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %nmismatches_j) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %nmismatches_i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %supportj) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %supporti) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %acceptor_prob) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %donor_prob) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %splice_distance_j) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %splice_distance_i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %splice_distance) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %deletionpos) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %middle_univdiagonal) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %splice_qpos_j) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %splice_qpos_i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %splice_qpos) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %indel_pos) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %nindels) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %qend) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %low_left) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %univdiagonal) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %newpath) #5
  %757 = load ptr, ptr %retval, align 8
  ret ptr %757
}

; Function Attrs: nounwind uwtable
define internal void @compute_qstart_local(ptr noundef %unextended_paths, ptr noundef %complete_paths, i32 noundef %depth, ptr noundef %path, ptr noundef %queryptr, i32 noundef %querylength, ptr noundef %mismatch_positions_alloc, ptr noundef %novel_diagonals_alloc, ptr noundef %localdb_alloc, i32 noundef %streamspace_max_alloc, ptr noundef %streamspace_alloc, ptr noundef %streamptr_alloc, ptr noundef %streamsize_alloc, ptr noundef %mergeinfo, ptr noundef %indelinfo, ptr noundef %spliceinfo, ptr noundef %knownsplicing, ptr noundef %knownindels, ptr noundef %query_compress, i32 noundef %chrnum, i32 noundef %chroffset, i32 noundef %chrhigh, ptr noundef %intlistpool, ptr noundef %univcoordlistpool, ptr noundef %listpool, ptr noundef %pathpool, ptr noundef %transcriptpool, ptr noundef %vectorpool, ptr noundef %hitlistpool, ptr noundef %spliceendsgen, i32 noundef %max_insertionlen, i32 noundef %max_deletionlen, i32 noundef %nmismatches_allowed, i32 noundef %overall_end_distance, i8 noundef zeroext %plusp, i32 noundef %genestrand, i32 noundef %try_sensedir, i8 noundef zeroext %innerp, i8 noundef zeroext %salvagep, i32 noundef %pass) #1 {
entry:
  %unextended_paths.addr = alloca ptr, align 8
  %complete_paths.addr = alloca ptr, align 8
  %depth.addr = alloca i32, align 4
  %path.addr = alloca ptr, align 8
  %queryptr.addr = alloca ptr, align 8
  %querylength.addr = alloca i32, align 4
  %mismatch_positions_alloc.addr = alloca ptr, align 8
  %novel_diagonals_alloc.addr = alloca ptr, align 8
  %localdb_alloc.addr = alloca ptr, align 8
  %streamspace_max_alloc.addr = alloca i32, align 4
  %streamspace_alloc.addr = alloca ptr, align 8
  %streamptr_alloc.addr = alloca ptr, align 8
  %streamsize_alloc.addr = alloca ptr, align 8
  %mergeinfo.addr = alloca ptr, align 8
  %indelinfo.addr = alloca ptr, align 8
  %spliceinfo.addr = alloca ptr, align 8
  %knownsplicing.addr = alloca ptr, align 8
  %knownindels.addr = alloca ptr, align 8
  %query_compress.addr = alloca ptr, align 8
  %chrnum.addr = alloca i32, align 4
  %chroffset.addr = alloca i32, align 4
  %chrhigh.addr = alloca i32, align 4
  %intlistpool.addr = alloca ptr, align 8
  %univcoordlistpool.addr = alloca ptr, align 8
  %listpool.addr = alloca ptr, align 8
  %pathpool.addr = alloca ptr, align 8
  %transcriptpool.addr = alloca ptr, align 8
  %vectorpool.addr = alloca ptr, align 8
  %hitlistpool.addr = alloca ptr, align 8
  %spliceendsgen.addr = alloca ptr, align 8
  %max_insertionlen.addr = alloca i32, align 4
  %max_deletionlen.addr = alloca i32, align 4
  %nmismatches_allowed.addr = alloca i32, align 4
  %overall_end_distance.addr = alloca i32, align 4
  %plusp.addr = alloca i8, align 1
  %genestrand.addr = alloca i32, align 4
  %try_sensedir.addr = alloca i32, align 4
  %innerp.addr = alloca i8, align 1
  %salvagep.addr = alloca i8, align 1
  %pass.addr = alloca i32, align 4
  %newpaths = alloca ptr, align 8
  %p = alloca ptr, align 8
  %newpath = alloca ptr, align 8
  %parent = alloca ptr, align 8
  %univdiagonal = alloca i32, align 4
  %qstart = alloca i32, align 4
  %pos3 = alloca i32, align 4
  %exon_origin = alloca i32, align 4
  %indel_pos = alloca i32, align 4
  %trimpos = alloca i32, align 4
  %adj = alloca i32, align 4
  %nmismatches_i = alloca i32, align 4
  %splice5p = alloca i8, align 1
  %splicetype5 = alloca i32, align 4
  %nspliceends = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %spliceends = alloca ptr, align 8
  %trim_qstarts = alloca ptr, align 8
  %nosplice_trimpos = alloca i32, align 4
  %medial_splice_trimpos_0 = alloca i32, align 4
  %ambig_probs_5 = alloca ptr, align 8
  %ambig_prob_5 = alloca double, align 8
  %distal_probs = alloca ptr, align 8
  %distal_splice_positions = alloca ptr, align 8
  %distal_nmismatches = alloca ptr, align 8
  %nosplice_nmismatches = alloca i32, align 4
  %medial_splice_nmismatches_0 = alloca i32, align 4
  %pos5_nmismatches = alloca i32, align 4
  %found_sensedir = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %unextended_paths, ptr %unextended_paths.addr, align 8, !tbaa !5
  store ptr %complete_paths, ptr %complete_paths.addr, align 8, !tbaa !5
  store i32 %depth, ptr %depth.addr, align 4, !tbaa !12
  store ptr %path, ptr %path.addr, align 8, !tbaa !5
  store ptr %queryptr, ptr %queryptr.addr, align 8, !tbaa !5
  store i32 %querylength, ptr %querylength.addr, align 4, !tbaa !12
  store ptr %mismatch_positions_alloc, ptr %mismatch_positions_alloc.addr, align 8, !tbaa !5
  store ptr %novel_diagonals_alloc, ptr %novel_diagonals_alloc.addr, align 8, !tbaa !5
  store ptr %localdb_alloc, ptr %localdb_alloc.addr, align 8, !tbaa !5
  store i32 %streamspace_max_alloc, ptr %streamspace_max_alloc.addr, align 4, !tbaa !12
  store ptr %streamspace_alloc, ptr %streamspace_alloc.addr, align 8, !tbaa !5
  store ptr %streamptr_alloc, ptr %streamptr_alloc.addr, align 8, !tbaa !5
  store ptr %streamsize_alloc, ptr %streamsize_alloc.addr, align 8, !tbaa !5
  store ptr %mergeinfo, ptr %mergeinfo.addr, align 8, !tbaa !5
  store ptr %indelinfo, ptr %indelinfo.addr, align 8, !tbaa !5
  store ptr %spliceinfo, ptr %spliceinfo.addr, align 8, !tbaa !5
  store ptr %knownsplicing, ptr %knownsplicing.addr, align 8, !tbaa !5
  store ptr %knownindels, ptr %knownindels.addr, align 8, !tbaa !5
  store ptr %query_compress, ptr %query_compress.addr, align 8, !tbaa !5
  store i32 %chrnum, ptr %chrnum.addr, align 4, !tbaa !12
  store i32 %chroffset, ptr %chroffset.addr, align 4, !tbaa !12
  store i32 %chrhigh, ptr %chrhigh.addr, align 4, !tbaa !12
  store ptr %intlistpool, ptr %intlistpool.addr, align 8, !tbaa !5
  store ptr %univcoordlistpool, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  store ptr %listpool, ptr %listpool.addr, align 8, !tbaa !5
  store ptr %pathpool, ptr %pathpool.addr, align 8, !tbaa !5
  store ptr %transcriptpool, ptr %transcriptpool.addr, align 8, !tbaa !5
  store ptr %vectorpool, ptr %vectorpool.addr, align 8, !tbaa !5
  store ptr %hitlistpool, ptr %hitlistpool.addr, align 8, !tbaa !5
  store ptr %spliceendsgen, ptr %spliceendsgen.addr, align 8, !tbaa !5
  store i32 %max_insertionlen, ptr %max_insertionlen.addr, align 4, !tbaa !12
  store i32 %max_deletionlen, ptr %max_deletionlen.addr, align 4, !tbaa !12
  store i32 %nmismatches_allowed, ptr %nmismatches_allowed.addr, align 4, !tbaa !12
  store i32 %overall_end_distance, ptr %overall_end_distance.addr, align 4, !tbaa !12
  store i8 %plusp, ptr %plusp.addr, align 1, !tbaa !14
  store i32 %genestrand, ptr %genestrand.addr, align 4, !tbaa !12
  store i32 %try_sensedir, ptr %try_sensedir.addr, align 4, !tbaa !12
  store i8 %innerp, ptr %innerp.addr, align 1, !tbaa !14
  store i8 %salvagep, ptr %salvagep.addr, align 1, !tbaa !14
  store i32 %pass, ptr %pass.addr, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 8, ptr %newpaths) #5
  store ptr null, ptr %newpaths, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %newpath) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %univdiagonal) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %qstart) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %pos3) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %exon_origin) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %indel_pos) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %trimpos) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %adj) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %nmismatches_i) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr %splice5p) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %splicetype5) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %nspliceends) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %spliceends) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %trim_qstarts) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %nosplice_trimpos) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %medial_splice_trimpos_0) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %ambig_probs_5) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %ambig_prob_5) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %distal_probs) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %distal_splice_positions) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %distal_nmismatches) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %nosplice_nmismatches) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %medial_splice_nmismatches_0) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %pos5_nmismatches) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %found_sensedir) #5
  %0 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %call = call ptr @Path_expect_fwd(ptr noundef %0)
  %1 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %qstart_alts = getelementptr inbounds %struct.Path_T, ptr %1, i32 0, i32 28
  %2 = load ptr, ptr %qstart_alts, align 8, !tbaa !45
  %cmp = icmp ne ptr %2, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %4 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %5 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %6 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %7 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %8 = load ptr, ptr %vectorpool.addr, align 8, !tbaa !5
  %9 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  %call1 = call ptr @Path_copy(ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9)
  store ptr %call1, ptr %newpath, align 8, !tbaa !5
  %10 = load ptr, ptr %complete_paths.addr, align 8, !tbaa !5
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  %12 = load ptr, ptr %hitlistpool.addr, align 8, !tbaa !5
  %13 = load ptr, ptr %newpath, align 8, !tbaa !5
  %call2 = call ptr @Path_expect_fwd(ptr noundef %13)
  %call3 = call ptr @Hitlist_push(ptr noundef %11, ptr noundef %12, ptr noundef %call2)
  %14 = load ptr, ptr %complete_paths.addr, align 8, !tbaa !5
  store ptr %call3, ptr %14, align 8, !tbaa !5
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %entry
  %15 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %endpoints = getelementptr inbounds %struct.Path_T, ptr %15, i32 0, i32 17
  %16 = load ptr, ptr %endpoints, align 8, !tbaa !40
  %call4 = call i32 @Intlist_head(ptr noundef %16)
  store i32 %call4, ptr %qstart, align 4, !tbaa !12
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %if.then6, label %if.else10

if.then6:                                         ; preds = %if.else
  %17 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %18 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %19 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %20 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %21 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %22 = load ptr, ptr %vectorpool.addr, align 8, !tbaa !5
  %23 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  %call7 = call ptr @Path_copy(ptr noundef %17, ptr noundef %18, ptr noundef %19, ptr noundef %20, ptr noundef %21, ptr noundef %22, ptr noundef %23)
  store ptr %call7, ptr %newpath, align 8, !tbaa !5
  %24 = load ptr, ptr %complete_paths.addr, align 8, !tbaa !5
  %25 = load ptr, ptr %24, align 8, !tbaa !5
  %26 = load ptr, ptr %hitlistpool.addr, align 8, !tbaa !5
  %27 = load ptr, ptr %newpath, align 8, !tbaa !5
  %call8 = call ptr @Path_expect_fwd(ptr noundef %27)
  %call9 = call ptr @Hitlist_push(ptr noundef %25, ptr noundef %26, ptr noundef %call8)
  %28 = load ptr, ptr %complete_paths.addr, align 8, !tbaa !5
  store ptr %call9, ptr %28, align 8, !tbaa !5
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else10:                                        ; preds = %if.else
  %29 = load i32, ptr %depth.addr, align 4, !tbaa !12
  %cmp11 = icmp sgt i32 %29, 2
  br i1 %cmp11, label %if.then12, label %if.else16

if.then12:                                        ; preds = %if.else10
  %30 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %31 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %32 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %33 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %34 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %35 = load ptr, ptr %vectorpool.addr, align 8, !tbaa !5
  %36 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  %call13 = call ptr @Path_copy(ptr noundef %30, ptr noundef %31, ptr noundef %32, ptr noundef %33, ptr noundef %34, ptr noundef %35, ptr noundef %36)
  store ptr %call13, ptr %newpath, align 8, !tbaa !5
  %37 = load ptr, ptr %unextended_paths.addr, align 8, !tbaa !5
  %38 = load ptr, ptr %37, align 8, !tbaa !5
  %39 = load ptr, ptr %hitlistpool.addr, align 8, !tbaa !5
  %40 = load ptr, ptr %newpath, align 8, !tbaa !5
  %call14 = call ptr @Path_expect_fwd(ptr noundef %40)
  %call15 = call ptr @Hitlist_push(ptr noundef %38, ptr noundef %39, ptr noundef %call14)
  %41 = load ptr, ptr %unextended_paths.addr, align 8, !tbaa !5
  store ptr %call15, ptr %41, align 8, !tbaa !5
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else16:                                        ; preds = %if.else10
  %42 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %endpoints17 = getelementptr inbounds %struct.Path_T, ptr %42, i32 0, i32 17
  %43 = load ptr, ptr %endpoints17, align 8, !tbaa !40
  %call18 = call ptr @Intlist_next(ptr noundef %43)
  %call19 = call i32 @Intlist_head(ptr noundef %call18)
  store i32 %call19, ptr %pos3, align 4, !tbaa !12
  %44 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %univdiagonals = getelementptr inbounds %struct.Path_T, ptr %44, i32 0, i32 18
  %45 = load ptr, ptr %univdiagonals, align 8, !tbaa !36
  %call20 = call i32 @Uintlist_head(ptr noundef %45)
  store i32 %call20, ptr %univdiagonal, align 4, !tbaa !12
  %46 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %call21 = call i32 @Path_exon_origin(ptr noundef %46)
  store i32 %call21, ptr %exon_origin, align 4, !tbaa !12
  %47 = load i32, ptr %try_sensedir.addr, align 4, !tbaa !12
  %48 = load i32, ptr %univdiagonal, align 4, !tbaa !12
  %49 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %50 = load i32, ptr %pos3, align 4, !tbaa !12
  %51 = load i32, ptr %exon_origin, align 4, !tbaa !12
  %52 = load i32, ptr %chrnum.addr, align 4, !tbaa !12
  %53 = load i32, ptr %chroffset.addr, align 4, !tbaa !12
  %54 = load i8, ptr %plusp.addr, align 1, !tbaa !14
  %55 = load i32, ptr %genestrand.addr, align 4, !tbaa !12
  %56 = load i32, ptr %nmismatches_allowed.addr, align 4, !tbaa !12
  %57 = load i8, ptr %innerp.addr, align 1, !tbaa !14
  %58 = load i8, ptr %salvagep.addr, align 1, !tbaa !14
  %59 = load ptr, ptr %mismatch_positions_alloc.addr, align 8, !tbaa !5
  %60 = load ptr, ptr %novel_diagonals_alloc.addr, align 8, !tbaa !5
  %61 = load ptr, ptr %localdb_alloc.addr, align 8, !tbaa !5
  %62 = load i32, ptr %streamspace_max_alloc.addr, align 4, !tbaa !12
  %63 = load ptr, ptr %streamspace_alloc.addr, align 8, !tbaa !5
  %64 = load ptr, ptr %streamptr_alloc.addr, align 8, !tbaa !5
  %65 = load ptr, ptr %streamsize_alloc.addr, align 8, !tbaa !5
  %66 = load ptr, ptr %mergeinfo.addr, align 8, !tbaa !5
  %67 = load ptr, ptr %knownsplicing.addr, align 8, !tbaa !5
  %68 = load ptr, ptr %spliceendsgen.addr, align 8, !tbaa !5
  %69 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %70 = load ptr, ptr %queryptr.addr, align 8, !tbaa !5
  %71 = load ptr, ptr @genomebits, align 8, !tbaa !5
  %72 = load ptr, ptr @genomebits_alt, align 8, !tbaa !5
  %73 = load i8, ptr @novelsplicingp, align 1, !tbaa !14
  %call22 = call i32 @Spliceends_trimmed_qstarts(ptr noundef %spliceends, ptr noundef %nosplice_trimpos, ptr noundef %medial_splice_trimpos_0, ptr noundef %pos5_nmismatches, ptr noundef %nosplice_nmismatches, ptr noundef %medial_splice_nmismatches_0, ptr noundef %splice5p, ptr noundef %splicetype5, ptr noundef %ambig_prob_5, i32 noundef %47, i32 noundef %48, i32 noundef %49, i32 noundef %50, i32 noundef %51, i32 noundef %52, i32 noundef %53, i8 noundef zeroext %54, i32 noundef %55, i32 noundef %56, i8 noundef zeroext %57, i8 noundef zeroext %58, ptr noundef %59, ptr noundef %60, ptr noundef %61, i32 noundef %62, ptr noundef %63, ptr noundef %64, ptr noundef %65, ptr noundef %66, ptr noundef %67, ptr noundef %68, ptr noundef %69, ptr noundef %70, ptr noundef %71, ptr noundef %72, i8 noundef zeroext %73)
  store i32 %call22, ptr %nspliceends, align 4, !tbaa !12
  %74 = load i32, ptr %nspliceends, align 4, !tbaa !12
  %cmp23 = icmp eq i32 %74, 0
  br i1 %cmp23, label %if.then24, label %if.else25

if.then24:                                        ; preds = %if.else16
  br label %if.end48

if.else25:                                        ; preds = %if.else16
  %75 = load ptr, ptr %spliceends, align 8, !tbaa !5
  %cmp26 = icmp ne ptr %75, null
  br i1 %cmp26, label %if.then27, label %if.end

if.then27:                                        ; preds = %if.else25
  %76 = load ptr, ptr %spliceends, align 8, !tbaa !5
  %sensedir = getelementptr inbounds %struct.Spliceends_T, ptr %76, i32 0, i32 4
  %77 = load i32, ptr %sensedir, align 8, !tbaa !46
  store i32 %77, ptr %found_sensedir, align 4, !tbaa !12
  %78 = load ptr, ptr %spliceends, align 8, !tbaa !5
  %trimends = getelementptr inbounds %struct.Spliceends_T, ptr %78, i32 0, i32 8
  %79 = load ptr, ptr %trimends, align 8, !tbaa !48
  store ptr %79, ptr %trim_qstarts, align 8, !tbaa !5
  %80 = load ptr, ptr %spliceends, align 8, !tbaa !5
  %ambig_probs = getelementptr inbounds %struct.Spliceends_T, ptr %80, i32 0, i32 12
  %81 = load ptr, ptr %ambig_probs, align 8, !tbaa !49
  store ptr %81, ptr %ambig_probs_5, align 8, !tbaa !5
  %82 = load ptr, ptr %spliceends, align 8, !tbaa !5
  %distal_nmismatches28 = getelementptr inbounds %struct.Spliceends_T, ptr %82, i32 0, i32 11
  %83 = load ptr, ptr %distal_nmismatches28, align 8, !tbaa !50
  store ptr %83, ptr %distal_nmismatches, align 8, !tbaa !5
  %84 = load ptr, ptr %spliceends, align 8, !tbaa !5
  %partners = getelementptr inbounds %struct.Spliceends_T, ptr %84, i32 0, i32 9
  %85 = load ptr, ptr %partners, align 8, !tbaa !51
  store ptr %85, ptr %distal_splice_positions, align 8, !tbaa !5
  %86 = load ptr, ptr %spliceends, align 8, !tbaa !5
  %distal_probs29 = getelementptr inbounds %struct.Spliceends_T, ptr %86, i32 0, i32 13
  %87 = load ptr, ptr %distal_probs29, align 8, !tbaa !52
  store ptr %87, ptr %distal_probs, align 8, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !12
  br label %while.cond

while.cond:                                       ; preds = %while.end, %if.then27
  %88 = load i32, ptr %i, align 4, !tbaa !12
  %89 = load i32, ptr %nspliceends, align 4, !tbaa !12
  %cmp30 = icmp slt i32 %88, %89
  br i1 %cmp30, label %while.body, label %while.end47

while.body:                                       ; preds = %while.cond
  %90 = load ptr, ptr %ambig_probs_5, align 8, !tbaa !5
  %91 = load i32, ptr %i, align 4, !tbaa !12
  %idxprom = sext i32 %91 to i64
  %arrayidx = getelementptr inbounds double, ptr %90, i64 %idxprom
  %92 = load double, ptr %arrayidx, align 8, !tbaa !44
  store double %92, ptr %ambig_prob_5, align 8, !tbaa !44
  %93 = load ptr, ptr %trim_qstarts, align 8, !tbaa !5
  %94 = load i32, ptr %i, align 4, !tbaa !12
  %idxprom31 = sext i32 %94 to i64
  %arrayidx32 = getelementptr inbounds i32, ptr %93, i64 %idxprom31
  %95 = load i32, ptr %arrayidx32, align 4, !tbaa !12
  store i32 %95, ptr %qstart, align 4, !tbaa !12
  %96 = load i32, ptr %i, align 4, !tbaa !12
  %add = add nsw i32 %96, 1
  store i32 %add, ptr %j, align 4, !tbaa !12
  br label %while.cond33

while.cond33:                                     ; preds = %while.body38, %while.body
  %97 = load i32, ptr %j, align 4, !tbaa !12
  %98 = load i32, ptr %nspliceends, align 4, !tbaa !12
  %cmp34 = icmp slt i32 %97, %98
  br i1 %cmp34, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond33
  %99 = load ptr, ptr %trim_qstarts, align 8, !tbaa !5
  %100 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom35 = sext i32 %100 to i64
  %arrayidx36 = getelementptr inbounds i32, ptr %99, i64 %idxprom35
  %101 = load i32, ptr %arrayidx36, align 4, !tbaa !12
  %102 = load i32, ptr %qstart, align 4, !tbaa !12
  %cmp37 = icmp eq i32 %101, %102
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond33
  %103 = phi i1 [ false, %while.cond33 ], [ %cmp37, %land.rhs ]
  br i1 %103, label %while.body38, label %while.end

while.body38:                                     ; preds = %land.end
  %104 = load i32, ptr %j, align 4, !tbaa !12
  %inc = add nsw i32 %104, 1
  store i32 %inc, ptr %j, align 4, !tbaa !12
  br label %while.cond33, !llvm.loop !53

while.end:                                        ; preds = %land.end
  %105 = load ptr, ptr %newpaths, align 8, !tbaa !5
  %106 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %107 = load i32, ptr %univdiagonal, align 4, !tbaa !12
  %108 = load i32, ptr %qstart, align 4, !tbaa !12
  %109 = load double, ptr %ambig_prob_5, align 8, !tbaa !44
  %110 = load ptr, ptr %distal_splice_positions, align 8, !tbaa !5
  %111 = load i32, ptr %i, align 4, !tbaa !12
  %idxprom39 = sext i32 %111 to i64
  %arrayidx40 = getelementptr inbounds i32, ptr %110, i64 %idxprom39
  %112 = load ptr, ptr %distal_nmismatches, align 8, !tbaa !5
  %113 = load i32, ptr %i, align 4, !tbaa !12
  %idxprom41 = sext i32 %113 to i64
  %arrayidx42 = getelementptr inbounds i32, ptr %112, i64 %idxprom41
  %114 = load ptr, ptr %distal_probs, align 8, !tbaa !5
  %115 = load i32, ptr %i, align 4, !tbaa !12
  %idxprom43 = sext i32 %115 to i64
  %arrayidx44 = getelementptr inbounds double, ptr %114, i64 %idxprom43
  %116 = load i32, ptr %j, align 4, !tbaa !12
  %117 = load i32, ptr %i, align 4, !tbaa !12
  %sub = sub nsw i32 %116, %117
  %118 = load i32, ptr %chrnum.addr, align 4, !tbaa !12
  %119 = load i32, ptr %chroffset.addr, align 4, !tbaa !12
  %120 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %121 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %122 = load ptr, ptr %queryptr.addr, align 8, !tbaa !5
  %123 = load i8, ptr %plusp.addr, align 1, !tbaa !14
  %124 = load i32, ptr %genestrand.addr, align 4, !tbaa !12
  %125 = load ptr, ptr %knownsplicing.addr, align 8, !tbaa !5
  %126 = load ptr, ptr %spliceendsgen.addr, align 8, !tbaa !5
  %127 = load ptr, ptr %mismatch_positions_alloc.addr, align 8, !tbaa !5
  %128 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %129 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %130 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %131 = load ptr, ptr %hitlistpool.addr, align 8, !tbaa !5
  %132 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %133 = load ptr, ptr %vectorpool.addr, align 8, !tbaa !5
  %134 = load i32, ptr %found_sensedir, align 4, !tbaa !12
  %call45 = call ptr @multiadd_splice_qstarts(ptr noundef %106, i32 noundef %107, i32 noundef %108, double noundef %109, ptr noundef %arrayidx40, ptr noundef %arrayidx42, ptr noundef %arrayidx44, i32 noundef %sub, i32 noundef %118, i32 noundef %119, i32 noundef %120, ptr noundef %121, ptr noundef %122, i8 noundef zeroext %123, i32 noundef %124, ptr noundef %125, ptr noundef %126, ptr noundef %127, ptr noundef %128, ptr noundef %129, ptr noundef %130, ptr noundef %131, ptr noundef %132, ptr noundef %133, i32 noundef %134)
  %call46 = call ptr @List_append(ptr noundef %105, ptr noundef %call45)
  store ptr %call46, ptr %newpaths, align 8, !tbaa !5
  %135 = load i32, ptr %j, align 4, !tbaa !12
  store i32 %135, ptr %i, align 4, !tbaa !12
  br label %while.cond, !llvm.loop !54

while.end47:                                      ; preds = %while.cond
  %136 = load ptr, ptr %spliceendsgen.addr, align 8, !tbaa !5
  call void @Spliceendsgen_return(ptr noundef %136, ptr noundef %spliceends)
  br label %if.end

if.end:                                           ; preds = %while.end47, %if.else25
  br label %if.end48

if.end48:                                         ; preds = %if.end, %if.then24
  %137 = load ptr, ptr %newpaths, align 8, !tbaa !5
  %cmp49 = icmp eq ptr %137, null
  br i1 %cmp49, label %if.then50, label %if.end77

if.then50:                                        ; preds = %if.end48
  %138 = load i32, ptr %nosplice_trimpos, align 4, !tbaa !12
  %cmp51 = icmp eq i32 %138, 0
  br i1 %cmp51, label %if.then52, label %if.else53

if.then52:                                        ; preds = %if.then50
  br label %if.end76

if.else53:                                        ; preds = %if.then50
  %139 = load ptr, ptr %knownindels.addr, align 8, !tbaa !5
  %cmp54 = icmp ne ptr %139, null
  br i1 %cmp54, label %land.lhs.true, label %if.else62

land.lhs.true:                                    ; preds = %if.else53
  %140 = load ptr, ptr %knownindels.addr, align 8, !tbaa !5
  %141 = load i32, ptr %univdiagonal, align 4, !tbaa !12
  %142 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %143 = load i32, ptr %nosplice_trimpos, align 4, !tbaa !12
  %add55 = add nsw i32 %143, 1
  %call56 = call i32 @Knownindels_find_highest(ptr noundef %indel_pos, ptr noundef %140, i32 noundef %141, i32 noundef %142, i32 noundef 0, i32 noundef %add55)
  store i32 %call56, ptr %adj, align 4, !tbaa !12
  %cmp57 = icmp ne i32 %call56, 0
  br i1 %cmp57, label %if.then58, label %if.else62

if.then58:                                        ; preds = %land.lhs.true
  %144 = load i32, ptr %adj, align 4, !tbaa !12
  %145 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %146 = load i32, ptr %indel_pos, align 4, !tbaa !12
  %147 = load i32, ptr %univdiagonal, align 4, !tbaa !12
  %148 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %149 = load i32, ptr %try_sensedir.addr, align 4, !tbaa !12
  %150 = load i8, ptr %plusp.addr, align 1, !tbaa !14
  %151 = load i32, ptr %genestrand.addr, align 4, !tbaa !12
  %152 = load ptr, ptr %mismatch_positions_alloc.addr, align 8, !tbaa !5
  %153 = load ptr, ptr %knownsplicing.addr, align 8, !tbaa !5
  %154 = load ptr, ptr %spliceendsgen.addr, align 8, !tbaa !5
  %155 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %156 = load ptr, ptr %queryptr.addr, align 8, !tbaa !5
  %157 = load ptr, ptr @genomebits, align 8, !tbaa !5
  %158 = load ptr, ptr @genomebits_alt, align 8, !tbaa !5
  %159 = load i32, ptr %chrnum.addr, align 4, !tbaa !12
  %160 = load i32, ptr %chroffset.addr, align 4, !tbaa !12
  %161 = load i8, ptr @novelsplicingp, align 1, !tbaa !14
  %162 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %163 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %164 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %165 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %166 = load ptr, ptr %vectorpool.addr, align 8, !tbaa !5
  %call59 = call ptr @attach_indel_qstart_simple(i32 noundef %144, ptr noundef %145, i32 noundef %146, i32 noundef %147, i32 noundef %148, i32 noundef %149, i8 noundef zeroext %150, i32 noundef %151, ptr noundef %152, ptr noundef %153, ptr noundef %154, ptr noundef %155, ptr noundef %156, ptr noundef %157, ptr noundef %158, i32 noundef %159, i32 noundef %160, i8 noundef zeroext %161, ptr noundef %162, ptr noundef %163, ptr noundef %164, ptr noundef %165, ptr noundef %166)
  store ptr %call59, ptr %newpath, align 8, !tbaa !5
  %167 = load ptr, ptr %newpaths, align 8, !tbaa !5
  %168 = load ptr, ptr %hitlistpool.addr, align 8, !tbaa !5
  %169 = load ptr, ptr %newpath, align 8, !tbaa !5
  %call60 = call ptr @Path_expect_fwd(ptr noundef %169)
  %call61 = call ptr @Hitlist_push(ptr noundef %167, ptr noundef %168, ptr noundef %call60)
  store ptr %call61, ptr %newpaths, align 8, !tbaa !5
  br label %if.end75

if.else62:                                        ; preds = %land.lhs.true, %if.else53
  %170 = load i32, ptr %univdiagonal, align 4, !tbaa !12
  %171 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %172 = load i32, ptr %nosplice_trimpos, align 4, !tbaa !12
  %173 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %174 = load ptr, ptr %mismatch_positions_alloc.addr, align 8, !tbaa !5
  %175 = load ptr, ptr @genomebits, align 8, !tbaa !5
  %176 = load ptr, ptr @genomebits_alt, align 8, !tbaa !5
  %177 = load i8, ptr %plusp.addr, align 1, !tbaa !14
  %178 = load i32, ptr %genestrand.addr, align 4, !tbaa !12
  %call63 = call i32 @Genomebits_indel_solve_low(ptr noundef %trimpos, ptr noundef %nmismatches_i, i32 noundef %170, i32 noundef %171, i32 noundef 0, i32 noundef %172, ptr noundef %173, ptr noundef %174, ptr noundef %175, ptr noundef %176, i8 noundef zeroext %177, i32 noundef %178)
  store i32 %call63, ptr %adj, align 4, !tbaa !12
  %cmp64 = icmp ne i32 %call63, 0
  br i1 %cmp64, label %if.then65, label %if.else73

if.then65:                                        ; preds = %if.else62
  %179 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %180 = load i32, ptr %univdiagonal, align 4, !tbaa !12
  %181 = load i32, ptr %adj, align 4, !tbaa !12
  %sub66 = sub i32 %180, %181
  %182 = load i32, ptr %trimpos, align 4, !tbaa !12
  %183 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %184 = load ptr, ptr %indelinfo.addr, align 8, !tbaa !5
  %185 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %186 = load i8, ptr %plusp.addr, align 1, !tbaa !14
  %187 = load i32, ptr %genestrand.addr, align 4, !tbaa !12
  %188 = load i32, ptr %nmismatches_allowed.addr, align 4, !tbaa !12
  %189 = load i32, ptr %max_insertionlen.addr, align 4, !tbaa !12
  %190 = load i32, ptr %max_deletionlen.addr, align 4, !tbaa !12
  %191 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %192 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %193 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %194 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %195 = load ptr, ptr %vectorpool.addr, align 8, !tbaa !5
  %call67 = call ptr @attach_indel_qstart(ptr noundef %179, i32 noundef %sub66, i32 noundef %182, i32 noundef %183, ptr noundef %184, ptr noundef %185, i8 noundef zeroext %186, i32 noundef %187, i32 noundef %188, i32 noundef %189, i32 noundef %190, ptr noundef %191, ptr noundef %192, ptr noundef %193, ptr noundef %194, ptr noundef %195)
  store ptr %call67, ptr %newpath, align 8, !tbaa !5
  %cmp68 = icmp ne ptr %call67, null
  br i1 %cmp68, label %if.then69, label %if.end72

if.then69:                                        ; preds = %if.then65
  %196 = load ptr, ptr %newpaths, align 8, !tbaa !5
  %197 = load ptr, ptr %hitlistpool.addr, align 8, !tbaa !5
  %198 = load ptr, ptr %newpath, align 8, !tbaa !5
  %call70 = call ptr @Path_expect_fwd(ptr noundef %198)
  %call71 = call ptr @Hitlist_push(ptr noundef %196, ptr noundef %197, ptr noundef %call70)
  store ptr %call71, ptr %newpaths, align 8, !tbaa !5
  br label %if.end72

if.end72:                                         ; preds = %if.then69, %if.then65
  br label %if.end74

if.else73:                                        ; preds = %if.else62
  br label %if.end74

if.end74:                                         ; preds = %if.else73, %if.end72
  br label %if.end75

if.end75:                                         ; preds = %if.end74, %if.then58
  br label %if.end76

if.end76:                                         ; preds = %if.end75, %if.then52
  br label %if.end77

if.end77:                                         ; preds = %if.end76, %if.end48
  %199 = load ptr, ptr %newpaths, align 8, !tbaa !5
  %cmp78 = icmp eq ptr %199, null
  br i1 %cmp78, label %if.then79, label %if.else152

if.then79:                                        ; preds = %if.end77
  %200 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %201 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %202 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %203 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %204 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %205 = load ptr, ptr %vectorpool.addr, align 8, !tbaa !5
  %206 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  %call80 = call ptr @Path_copy(ptr noundef %200, ptr noundef %201, ptr noundef %202, ptr noundef %203, ptr noundef %204, ptr noundef %205, ptr noundef %206)
  store ptr %call80, ptr %newpath, align 8, !tbaa !5
  %207 = load i32, ptr %medial_splice_trimpos_0, align 4, !tbaa !12
  %cmp81 = icmp ne i32 %207, -1
  br i1 %cmp81, label %if.then82, label %if.else104

if.then82:                                        ; preds = %if.then79
  %208 = load i32, ptr %medial_splice_trimpos_0, align 4, !tbaa !12
  %209 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints83 = getelementptr inbounds %struct.Path_T, ptr %209, i32 0, i32 17
  %210 = load ptr, ptr %endpoints83, align 8, !tbaa !40
  %call84 = call i32 @Intlist_head(ptr noundef %210)
  %cmp85 = icmp eq i32 %208, %call84
  br i1 %cmp85, label %if.then86, label %if.else87

if.then86:                                        ; preds = %if.then82
  br label %if.end100

if.else87:                                        ; preds = %if.then82
  %211 = load i32, ptr %medial_splice_trimpos_0, align 4, !tbaa !12
  %212 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints88 = getelementptr inbounds %struct.Path_T, ptr %212, i32 0, i32 17
  %213 = load ptr, ptr %endpoints88, align 8, !tbaa !40
  %call89 = call i32 @Intlist_head(ptr noundef %213)
  %cmp90 = icmp sgt i32 %211, %call89
  br i1 %cmp90, label %land.lhs.true91, label %if.else96

land.lhs.true91:                                  ; preds = %if.else87
  %214 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches = getelementptr inbounds %struct.Path_T, ptr %214, i32 0, i32 19
  %215 = load ptr, ptr %nmismatches, align 8, !tbaa !41
  %call92 = call i32 @Intlist_head(ptr noundef %215)
  %cmp93 = icmp eq i32 %call92, 0
  br i1 %cmp93, label %if.then94, label %if.else96

if.then94:                                        ; preds = %land.lhs.true91
  %216 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints95 = getelementptr inbounds %struct.Path_T, ptr %216, i32 0, i32 17
  %217 = load ptr, ptr %endpoints95, align 8, !tbaa !40
  %218 = load i32, ptr %medial_splice_trimpos_0, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %217, i32 noundef %218)
  br label %if.end99

if.else96:                                        ; preds = %land.lhs.true91, %if.else87
  %219 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints97 = getelementptr inbounds %struct.Path_T, ptr %219, i32 0, i32 17
  %220 = load ptr, ptr %endpoints97, align 8, !tbaa !40
  %221 = load i32, ptr %medial_splice_trimpos_0, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %220, i32 noundef %221)
  %222 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches98 = getelementptr inbounds %struct.Path_T, ptr %222, i32 0, i32 19
  %223 = load ptr, ptr %nmismatches98, align 8, !tbaa !41
  %224 = load i32, ptr %medial_splice_nmismatches_0, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %223, i32 noundef %224)
  %225 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches = getelementptr inbounds %struct.Path_T, ptr %225, i32 0, i32 20
  %226 = load ptr, ptr %ref_nmismatches, align 8, !tbaa !42
  %227 = load i32, ptr %medial_splice_nmismatches_0, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %226, i32 noundef %227)
  br label %if.end99

if.end99:                                         ; preds = %if.else96, %if.then94
  br label %if.end100

if.end100:                                        ; preds = %if.end99, %if.then86
  %228 = load i8, ptr %splice5p, align 1, !tbaa !14
  %229 = load ptr, ptr %newpath, align 8, !tbaa !5
  %splice5p101 = getelementptr inbounds %struct.Path_T, ptr %229, i32 0, i32 22
  store i8 %228, ptr %splice5p101, align 8, !tbaa !55
  %230 = load i32, ptr %splicetype5, align 4, !tbaa !14
  %231 = load ptr, ptr %newpath, align 8, !tbaa !5
  %splicetype5102 = getelementptr inbounds %struct.Path_T, ptr %231, i32 0, i32 24
  store i32 %230, ptr %splicetype5102, align 4, !tbaa !56
  %232 = load double, ptr %ambig_prob_5, align 8, !tbaa !44
  %233 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ambig_prob_5103 = getelementptr inbounds %struct.Path_T, ptr %233, i32 0, i32 26
  store double %232, ptr %ambig_prob_5103, align 8, !tbaa !57
  br label %if.end142

if.else104:                                       ; preds = %if.then79
  %234 = load i32, ptr %nosplice_trimpos, align 4, !tbaa !12
  %235 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints105 = getelementptr inbounds %struct.Path_T, ptr %235, i32 0, i32 17
  %236 = load ptr, ptr %endpoints105, align 8, !tbaa !40
  %call106 = call i32 @Intlist_second_value(ptr noundef %236)
  %cmp107 = icmp eq i32 %234, %call106
  br i1 %cmp107, label %if.then108, label %if.else109

if.then108:                                       ; preds = %if.else104
  br label %if.end141

if.else109:                                       ; preds = %if.else104
  %237 = load ptr, ptr %newpath, align 8, !tbaa !5
  %univdiagonals110 = getelementptr inbounds %struct.Path_T, ptr %237, i32 0, i32 18
  %238 = load ptr, ptr %univdiagonals110, align 8, !tbaa !36
  %call111 = call i32 @Uintlist_head(ptr noundef %238)
  %239 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %sub112 = sub i32 %call111, %239
  %240 = load i32, ptr %nosplice_trimpos, align 4, !tbaa !12
  %add113 = add i32 %sub112, %240
  %241 = load i32, ptr %chrhigh.addr, align 4, !tbaa !12
  %cmp114 = icmp uge i32 %add113, %241
  br i1 %cmp114, label %if.then115, label %if.else116

if.then115:                                       ; preds = %if.else109
  br label %if.end140

if.else116:                                       ; preds = %if.else109
  %242 = load i32, ptr %nosplice_trimpos, align 4, !tbaa !12
  %243 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints117 = getelementptr inbounds %struct.Path_T, ptr %243, i32 0, i32 17
  %244 = load ptr, ptr %endpoints117, align 8, !tbaa !40
  %call118 = call i32 @Intlist_head(ptr noundef %244)
  %cmp119 = icmp eq i32 %242, %call118
  br i1 %cmp119, label %if.then120, label %if.else121

if.then120:                                       ; preds = %if.else116
  br label %if.end136

if.else121:                                       ; preds = %if.else116
  %245 = load i32, ptr %nosplice_trimpos, align 4, !tbaa !12
  %246 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints122 = getelementptr inbounds %struct.Path_T, ptr %246, i32 0, i32 17
  %247 = load ptr, ptr %endpoints122, align 8, !tbaa !40
  %call123 = call i32 @Intlist_head(ptr noundef %247)
  %cmp124 = icmp sgt i32 %245, %call123
  br i1 %cmp124, label %land.lhs.true125, label %if.else131

land.lhs.true125:                                 ; preds = %if.else121
  %248 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches126 = getelementptr inbounds %struct.Path_T, ptr %248, i32 0, i32 19
  %249 = load ptr, ptr %nmismatches126, align 8, !tbaa !41
  %call127 = call i32 @Intlist_head(ptr noundef %249)
  %cmp128 = icmp eq i32 %call127, 0
  br i1 %cmp128, label %if.then129, label %if.else131

if.then129:                                       ; preds = %land.lhs.true125
  %250 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints130 = getelementptr inbounds %struct.Path_T, ptr %250, i32 0, i32 17
  %251 = load ptr, ptr %endpoints130, align 8, !tbaa !40
  %252 = load i32, ptr %nosplice_trimpos, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %251, i32 noundef %252)
  br label %if.end135

if.else131:                                       ; preds = %land.lhs.true125, %if.else121
  %253 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints132 = getelementptr inbounds %struct.Path_T, ptr %253, i32 0, i32 17
  %254 = load ptr, ptr %endpoints132, align 8, !tbaa !40
  %255 = load i32, ptr %nosplice_trimpos, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %254, i32 noundef %255)
  %256 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches133 = getelementptr inbounds %struct.Path_T, ptr %256, i32 0, i32 19
  %257 = load ptr, ptr %nmismatches133, align 8, !tbaa !41
  %258 = load i32, ptr %nosplice_nmismatches, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %257, i32 noundef %258)
  %259 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches134 = getelementptr inbounds %struct.Path_T, ptr %259, i32 0, i32 20
  %260 = load ptr, ptr %ref_nmismatches134, align 8, !tbaa !42
  %261 = load i32, ptr %nosplice_nmismatches, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %260, i32 noundef %261)
  br label %if.end135

if.end135:                                        ; preds = %if.else131, %if.then129
  br label %if.end136

if.end136:                                        ; preds = %if.end135, %if.then120
  %262 = load ptr, ptr %newpath, align 8, !tbaa !5
  %splice5p137 = getelementptr inbounds %struct.Path_T, ptr %262, i32 0, i32 22
  store i8 0, ptr %splice5p137, align 8, !tbaa !55
  %263 = load ptr, ptr %newpath, align 8, !tbaa !5
  %splicetype5138 = getelementptr inbounds %struct.Path_T, ptr %263, i32 0, i32 24
  store i32 0, ptr %splicetype5138, align 4, !tbaa !56
  %264 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ambig_prob_5139 = getelementptr inbounds %struct.Path_T, ptr %264, i32 0, i32 26
  store double 0.000000e+00, ptr %ambig_prob_5139, align 8, !tbaa !57
  br label %if.end140

if.end140:                                        ; preds = %if.end136, %if.then115
  br label %if.end141

if.end141:                                        ; preds = %if.end140, %if.then108
  br label %if.end142

if.end142:                                        ; preds = %if.end141, %if.end100
  %265 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints143 = getelementptr inbounds %struct.Path_T, ptr %265, i32 0, i32 17
  %266 = load ptr, ptr %endpoints143, align 8, !tbaa !40
  %call144 = call i32 @Intlist_head(ptr noundef %266)
  %cmp145 = icmp sle i32 %call144, 8
  br i1 %cmp145, label %if.then146, label %if.else149

if.then146:                                       ; preds = %if.end142
  %267 = load ptr, ptr %complete_paths.addr, align 8, !tbaa !5
  %268 = load ptr, ptr %267, align 8, !tbaa !5
  %269 = load ptr, ptr %hitlistpool.addr, align 8, !tbaa !5
  %270 = load ptr, ptr %newpath, align 8, !tbaa !5
  %call147 = call ptr @Path_expect_fwd(ptr noundef %270)
  %call148 = call ptr @Hitlist_push(ptr noundef %268, ptr noundef %269, ptr noundef %call147)
  %271 = load ptr, ptr %complete_paths.addr, align 8, !tbaa !5
  store ptr %call148, ptr %271, align 8, !tbaa !5
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else149:                                       ; preds = %if.end142
  %272 = load ptr, ptr %unextended_paths.addr, align 8, !tbaa !5
  %273 = load ptr, ptr %272, align 8, !tbaa !5
  %274 = load ptr, ptr %hitlistpool.addr, align 8, !tbaa !5
  %275 = load ptr, ptr %newpath, align 8, !tbaa !5
  %call150 = call ptr @Path_expect_fwd(ptr noundef %275)
  %call151 = call ptr @Hitlist_push(ptr noundef %273, ptr noundef %274, ptr noundef %call150)
  %276 = load ptr, ptr %unextended_paths.addr, align 8, !tbaa !5
  store ptr %call151, ptr %276, align 8, !tbaa !5
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else152:                                       ; preds = %if.end77
  %277 = load ptr, ptr %newpaths, align 8, !tbaa !5
  store ptr %277, ptr %p, align 8, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else152
  %278 = load ptr, ptr %p, align 8, !tbaa !5
  %cmp153 = icmp ne ptr %278, null
  br i1 %cmp153, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %279 = load ptr, ptr %p, align 8, !tbaa !5
  %call154 = call ptr @List_head(ptr noundef %279)
  store ptr %call154, ptr %parent, align 8, !tbaa !5
  %280 = load ptr, ptr %unextended_paths.addr, align 8, !tbaa !5
  %281 = load ptr, ptr %complete_paths.addr, align 8, !tbaa !5
  %282 = load i32, ptr %depth.addr, align 4, !tbaa !12
  %add155 = add nsw i32 %282, 1
  %283 = load ptr, ptr %parent, align 8, !tbaa !5
  %284 = load ptr, ptr %queryptr.addr, align 8, !tbaa !5
  %285 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %286 = load ptr, ptr %mismatch_positions_alloc.addr, align 8, !tbaa !5
  %287 = load ptr, ptr %novel_diagonals_alloc.addr, align 8, !tbaa !5
  %288 = load ptr, ptr %localdb_alloc.addr, align 8, !tbaa !5
  %289 = load i32, ptr %streamspace_max_alloc.addr, align 4, !tbaa !12
  %290 = load ptr, ptr %streamspace_alloc.addr, align 8, !tbaa !5
  %291 = load ptr, ptr %streamptr_alloc.addr, align 8, !tbaa !5
  %292 = load ptr, ptr %streamsize_alloc.addr, align 8, !tbaa !5
  %293 = load ptr, ptr %mergeinfo.addr, align 8, !tbaa !5
  %294 = load ptr, ptr %indelinfo.addr, align 8, !tbaa !5
  %295 = load ptr, ptr %spliceinfo.addr, align 8, !tbaa !5
  %296 = load ptr, ptr %knownsplicing.addr, align 8, !tbaa !5
  %297 = load ptr, ptr %knownindels.addr, align 8, !tbaa !5
  %298 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %299 = load i32, ptr %chrnum.addr, align 4, !tbaa !12
  %300 = load i32, ptr %chroffset.addr, align 4, !tbaa !12
  %301 = load i32, ptr %chrhigh.addr, align 4, !tbaa !12
  %302 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %303 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %304 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %305 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %306 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  %307 = load ptr, ptr %vectorpool.addr, align 8, !tbaa !5
  %308 = load ptr, ptr %hitlistpool.addr, align 8, !tbaa !5
  %309 = load ptr, ptr %spliceendsgen.addr, align 8, !tbaa !5
  %310 = load i32, ptr %max_insertionlen.addr, align 4, !tbaa !12
  %311 = load i32, ptr %max_deletionlen.addr, align 4, !tbaa !12
  %312 = load i32, ptr %nmismatches_allowed.addr, align 4, !tbaa !12
  %313 = load i32, ptr %overall_end_distance.addr, align 4, !tbaa !12
  %314 = load i8, ptr %plusp.addr, align 1, !tbaa !14
  %315 = load i32, ptr %genestrand.addr, align 4, !tbaa !12
  %316 = load i32, ptr %try_sensedir.addr, align 4, !tbaa !12
  %317 = load i8, ptr %innerp.addr, align 1, !tbaa !14
  %318 = load i8, ptr %salvagep.addr, align 1, !tbaa !14
  %319 = load i32, ptr %pass.addr, align 4, !tbaa !14
  call void @compute_qstart_local(ptr noundef %280, ptr noundef %281, i32 noundef %add155, ptr noundef %283, ptr noundef %284, i32 noundef %285, ptr noundef %286, ptr noundef %287, ptr noundef %288, i32 noundef %289, ptr noundef %290, ptr noundef %291, ptr noundef %292, ptr noundef %293, ptr noundef %294, ptr noundef %295, ptr noundef %296, ptr noundef %297, ptr noundef %298, i32 noundef %299, i32 noundef %300, i32 noundef %301, ptr noundef %302, ptr noundef %303, ptr noundef %304, ptr noundef %305, ptr noundef %306, ptr noundef %307, ptr noundef %308, ptr noundef %309, i32 noundef %310, i32 noundef %311, i32 noundef %312, i32 noundef %313, i8 noundef zeroext %314, i32 noundef %315, i32 noundef %316, i8 noundef zeroext %317, i8 noundef zeroext %318, i32 noundef %319)
  %320 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %321 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %322 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %323 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %324 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  call void @Path_free(ptr noundef %parent, ptr noundef %320, ptr noundef %321, ptr noundef %322, ptr noundef %323, ptr noundef %324)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %325 = load ptr, ptr %p, align 8, !tbaa !5
  %call156 = call ptr @List_next(ptr noundef %325)
  store ptr %call156, ptr %p, align 8, !tbaa !5
  br label %for.cond, !llvm.loop !58

for.end:                                          ; preds = %for.cond
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.else149, %if.then146, %if.then12, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %found_sensedir) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %pos5_nmismatches) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %medial_splice_nmismatches_0) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %nosplice_nmismatches) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %distal_nmismatches) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %distal_splice_positions) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %distal_probs) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %ambig_prob_5) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %ambig_probs_5) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %medial_splice_trimpos_0) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %nosplice_trimpos) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %trim_qstarts) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %spliceends) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %nspliceends) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %splicetype5) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr %splice5p) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %nmismatches_i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %adj) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %trimpos) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %indel_pos) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %exon_origin) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %pos3) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %qstart) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %univdiagonal) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %newpath) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %newpaths) #5
  ret void
}

declare void @Path_free(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

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

declare ptr @Path_new_for_qend_extension(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef, double noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal ptr @attach_unknown_qend(ptr noundef %path, i32 noundef %high_univdiagonal, i32 noundef %high_qstart, i32 noundef %high_qend, i32 noundef %chrnum, i32 noundef %chroffset, i32 noundef %querylength, ptr noundef %indelinfo, ptr noundef %spliceinfo, ptr noundef %knownsplicing, ptr noundef %query_compress, i8 noundef zeroext %plusp, i32 noundef %genestrand, i32 noundef %max_insertionlen, i32 noundef %max_deletionlen, i32 noundef %nmismatches_allowed, ptr noundef %intlistpool, ptr noundef %univcoordlistpool, ptr noundef %listpool, ptr noundef %pathpool, ptr noundef %transcriptpool, ptr noundef %vectorpool, i32 noundef %try_sensedir, i8 noundef zeroext %salvagep) #1 {
entry:
  %retval = alloca ptr, align 8
  %path.addr = alloca ptr, align 8
  %high_univdiagonal.addr = alloca i32, align 4
  %high_qstart.addr = alloca i32, align 4
  %high_qend.addr = alloca i32, align 4
  %chrnum.addr = alloca i32, align 4
  %chroffset.addr = alloca i32, align 4
  %querylength.addr = alloca i32, align 4
  %indelinfo.addr = alloca ptr, align 8
  %spliceinfo.addr = alloca ptr, align 8
  %knownsplicing.addr = alloca ptr, align 8
  %query_compress.addr = alloca ptr, align 8
  %plusp.addr = alloca i8, align 1
  %genestrand.addr = alloca i32, align 4
  %max_insertionlen.addr = alloca i32, align 4
  %max_deletionlen.addr = alloca i32, align 4
  %nmismatches_allowed.addr = alloca i32, align 4
  %intlistpool.addr = alloca ptr, align 8
  %univcoordlistpool.addr = alloca ptr, align 8
  %listpool.addr = alloca ptr, align 8
  %pathpool.addr = alloca ptr, align 8
  %transcriptpool.addr = alloca ptr, align 8
  %vectorpool.addr = alloca ptr, align 8
  %try_sensedir.addr = alloca i32, align 4
  %salvagep.addr = alloca i8, align 1
  %newpath = alloca ptr, align 8
  %univdiagonal = alloca i32, align 4
  %left = alloca i32, align 4
  %qstart = alloca i32, align 4
  %ninserts = alloca i32, align 4
  %nindels = alloca i32, align 4
  %indel_pos = alloca i32, align 4
  %splice_qpos = alloca i32, align 4
  %splice_qpos_i = alloca i32, align 4
  %splice_qpos_j = alloca i32, align 4
  %middle_univdiagonal = alloca i32, align 4
  %deletionpos = alloca i32, align 4
  %splice_distance = alloca i32, align 4
  %splice_distance_i = alloca i32, align 4
  %splice_distance_j = alloca i32, align 4
  %donor_prob = alloca double, align 8
  %acceptor_prob = alloca double, align 8
  %supporti = alloca i32, align 4
  %supportj = alloca i32, align 4
  %nmismatches_i = alloca i32, align 4
  %nmismatches_j = alloca i32, align 4
  %nmismatches_indel = alloca i32, align 4
  %ref_nmismatches_i = alloca i32, align 4
  %ref_nmismatches_j = alloca i32, align 4
  %ref_nmismatches_indel = alloca i32, align 4
  %nmismatches = alloca i32, align 4
  %ref_nmismatches = alloca i32, align 4
  %nmismatches_middle = alloca i32, align 4
  %ref_nmismatches_middle = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %path, ptr %path.addr, align 8, !tbaa !5
  store i32 %high_univdiagonal, ptr %high_univdiagonal.addr, align 4, !tbaa !12
  store i32 %high_qstart, ptr %high_qstart.addr, align 4, !tbaa !12
  store i32 %high_qend, ptr %high_qend.addr, align 4, !tbaa !12
  store i32 %chrnum, ptr %chrnum.addr, align 4, !tbaa !12
  store i32 %chroffset, ptr %chroffset.addr, align 4, !tbaa !12
  store i32 %querylength, ptr %querylength.addr, align 4, !tbaa !12
  store ptr %indelinfo, ptr %indelinfo.addr, align 8, !tbaa !5
  store ptr %spliceinfo, ptr %spliceinfo.addr, align 8, !tbaa !5
  store ptr %knownsplicing, ptr %knownsplicing.addr, align 8, !tbaa !5
  store ptr %query_compress, ptr %query_compress.addr, align 8, !tbaa !5
  store i8 %plusp, ptr %plusp.addr, align 1, !tbaa !14
  store i32 %genestrand, ptr %genestrand.addr, align 4, !tbaa !12
  store i32 %max_insertionlen, ptr %max_insertionlen.addr, align 4, !tbaa !12
  store i32 %max_deletionlen, ptr %max_deletionlen.addr, align 4, !tbaa !12
  store i32 %nmismatches_allowed, ptr %nmismatches_allowed.addr, align 4, !tbaa !12
  store ptr %intlistpool, ptr %intlistpool.addr, align 8, !tbaa !5
  store ptr %univcoordlistpool, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  store ptr %listpool, ptr %listpool.addr, align 8, !tbaa !5
  store ptr %pathpool, ptr %pathpool.addr, align 8, !tbaa !5
  store ptr %transcriptpool, ptr %transcriptpool.addr, align 8, !tbaa !5
  store ptr %vectorpool, ptr %vectorpool.addr, align 8, !tbaa !5
  store i32 %try_sensedir, ptr %try_sensedir.addr, align 4, !tbaa !12
  store i8 %salvagep, ptr %salvagep.addr, align 1, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 8, ptr %newpath) #5
  store ptr null, ptr %newpath, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %univdiagonal) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %left) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %qstart) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %ninserts) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %nindels) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %indel_pos) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %splice_qpos) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %splice_qpos_i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %splice_qpos_j) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %middle_univdiagonal) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %deletionpos) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %splice_distance) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %splice_distance_i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %splice_distance_j) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %donor_prob) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %acceptor_prob) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %supporti) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %supportj) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %nmismatches_i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %nmismatches_j) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %nmismatches_indel) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %ref_nmismatches_i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %ref_nmismatches_j) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %ref_nmismatches_indel) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %nmismatches) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %ref_nmismatches) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %nmismatches_middle) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %ref_nmismatches_middle) #5
  %0 = load i32, ptr %high_univdiagonal.addr, align 4, !tbaa !12
  %1 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %2 = load i32, ptr %high_qstart.addr, align 4, !tbaa !12
  %sub = sub nsw i32 %1, %2
  %cmp = icmp ult i32 %0, %sub
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %entry
  %3 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %univdiagonals = getelementptr inbounds %struct.Path_T, ptr %3, i32 0, i32 18
  %4 = load ptr, ptr %univdiagonals, align 8, !tbaa !36
  %call = call i32 @Uintlist_head(ptr noundef %4)
  store i32 %call, ptr %univdiagonal, align 4, !tbaa !12
  br label %if.end

if.end:                                           ; preds = %if.else
  %5 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %junctions = getelementptr inbounds %struct.Path_T, ptr %5, i32 0, i32 21
  %6 = load ptr, ptr %junctions, align 8, !tbaa !43
  %cmp1 = icmp eq ptr %6, null
  br i1 %cmp1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.end
  store i32 0, ptr %ninserts, align 4, !tbaa !12
  br label %if.end7

if.else3:                                         ; preds = %if.end
  %7 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %junctions4 = getelementptr inbounds %struct.Path_T, ptr %7, i32 0, i32 21
  %8 = load ptr, ptr %junctions4, align 8, !tbaa !43
  %call5 = call ptr @List_head(ptr noundef %8)
  %call6 = call i32 @Junction_ninserts(ptr noundef %call5)
  store i32 %call6, ptr %ninserts, align 4, !tbaa !12
  br label %if.end7

if.end7:                                          ; preds = %if.else3, %if.then2
  %9 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %endpoints = getelementptr inbounds %struct.Path_T, ptr %9, i32 0, i32 17
  %10 = load ptr, ptr %endpoints, align 8, !tbaa !40
  %call8 = call ptr @Intlist_next(ptr noundef %10)
  %call9 = call i32 @Intlist_head(ptr noundef %call8)
  %11 = load i32, ptr %ninserts, align 4, !tbaa !12
  %add = add nsw i32 %call9, %11
  store i32 %add, ptr %qstart, align 4, !tbaa !12
  %12 = load i32, ptr %qstart, align 4, !tbaa !12
  %13 = load i32, ptr %high_qend.addr, align 4, !tbaa !12
  %cmp10 = icmp sge i32 %12, %13
  br i1 %cmp10, label %if.then11, label %if.else12

if.then11:                                        ; preds = %if.end7
  br label %if.end480

if.else12:                                        ; preds = %if.end7
  %14 = load i32, ptr %high_univdiagonal.addr, align 4, !tbaa !12
  %15 = load i32, ptr %univdiagonal, align 4, !tbaa !12
  %cmp13 = icmp eq i32 %14, %15
  br i1 %cmp13, label %if.then14, label %if.else38

if.then14:                                        ; preds = %if.else12
  %16 = load i32, ptr %high_qend.addr, align 4, !tbaa !12
  %17 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %endpoints15 = getelementptr inbounds %struct.Path_T, ptr %17, i32 0, i32 17
  %18 = load ptr, ptr %endpoints15, align 8, !tbaa !40
  %call16 = call i32 @Intlist_head(ptr noundef %18)
  %cmp17 = icmp sle i32 %16, %call16
  br i1 %cmp17, label %if.then18, label %if.else19

if.then18:                                        ; preds = %if.then14
  br label %if.end37

if.else19:                                        ; preds = %if.then14
  %19 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %20 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %21 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %22 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %23 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %24 = load ptr, ptr %vectorpool.addr, align 8, !tbaa !5
  %call20 = call ptr @Path_copy_3(ptr noundef %19, i8 noundef zeroext 0, i32 noundef 0, double noundef 0.000000e+00, ptr noundef %20, ptr noundef %21, ptr noundef %22, ptr noundef %23, ptr noundef %24)
  store ptr %call20, ptr %newpath, align 8, !tbaa !5
  %25 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %junctions21 = getelementptr inbounds %struct.Path_T, ptr %25, i32 0, i32 21
  %26 = load ptr, ptr %junctions21, align 8, !tbaa !43
  %cmp22 = icmp eq ptr %26, null
  br i1 %cmp22, label %if.then23, label %if.else24

if.then23:                                        ; preds = %if.else19
  store i32 0, ptr %ninserts, align 4, !tbaa !12
  br label %if.end28

if.else24:                                        ; preds = %if.else19
  %27 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %junctions25 = getelementptr inbounds %struct.Path_T, ptr %27, i32 0, i32 21
  %28 = load ptr, ptr %junctions25, align 8, !tbaa !43
  %call26 = call ptr @List_head(ptr noundef %28)
  %call27 = call i32 @Junction_ninserts(ptr noundef %call26)
  store i32 %call27, ptr %ninserts, align 4, !tbaa !12
  br label %if.end28

if.end28:                                         ; preds = %if.else24, %if.then23
  %29 = load ptr, ptr @genomebits, align 8, !tbaa !5
  %30 = load ptr, ptr @genomebits_alt, align 8, !tbaa !5
  %31 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %32 = load i32, ptr %univdiagonal, align 4, !tbaa !12
  %33 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %34 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints29 = getelementptr inbounds %struct.Path_T, ptr %34, i32 0, i32 17
  %35 = load ptr, ptr %endpoints29, align 8, !tbaa !40
  %call30 = call ptr @Intlist_next(ptr noundef %35)
  %call31 = call i32 @Intlist_head(ptr noundef %call30)
  %36 = load i32, ptr %ninserts, align 4, !tbaa !12
  %add32 = add nsw i32 %call31, %36
  %37 = load i32, ptr %high_qend.addr, align 4, !tbaa !12
  %38 = load i8, ptr %plusp.addr, align 1, !tbaa !14
  %39 = load i32, ptr %genestrand.addr, align 4, !tbaa !12
  %call33 = call i32 @Genomebits_count_mismatches_substring(ptr noundef %ref_nmismatches, ptr noundef %29, ptr noundef %30, ptr noundef %31, i32 noundef %32, i32 noundef %33, i32 noundef %add32, i32 noundef %37, i8 noundef zeroext %38, i32 noundef %39)
  store i32 %call33, ptr %nmismatches, align 4, !tbaa !12
  %40 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches34 = getelementptr inbounds %struct.Path_T, ptr %40, i32 0, i32 19
  %41 = load ptr, ptr %nmismatches34, align 8, !tbaa !41
  %42 = load i32, ptr %nmismatches, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %41, i32 noundef %42)
  %43 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches35 = getelementptr inbounds %struct.Path_T, ptr %43, i32 0, i32 20
  %44 = load ptr, ptr %ref_nmismatches35, align 8, !tbaa !42
  %45 = load i32, ptr %nmismatches, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %44, i32 noundef %45)
  %46 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints36 = getelementptr inbounds %struct.Path_T, ptr %46, i32 0, i32 17
  %47 = load ptr, ptr %endpoints36, align 8, !tbaa !40
  %48 = load i32, ptr %high_qend.addr, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %47, i32 noundef %48)
  br label %if.end37

if.end37:                                         ; preds = %if.end28, %if.then18
  br label %if.end479

if.else38:                                        ; preds = %if.else12
  %49 = load i32, ptr %high_univdiagonal.addr, align 4, !tbaa !12
  %50 = load i32, ptr %max_insertionlen.addr, align 4, !tbaa !12
  %add39 = add i32 %49, %50
  %51 = load i32, ptr %univdiagonal, align 4, !tbaa !12
  %cmp40 = icmp ult i32 %add39, %51
  br i1 %cmp40, label %if.then41, label %if.else42

if.then41:                                        ; preds = %if.else38
  br label %if.end478

if.else42:                                        ; preds = %if.else38
  %52 = load i32, ptr %high_univdiagonal.addr, align 4, !tbaa !12
  %53 = load i32, ptr %univdiagonal, align 4, !tbaa !12
  %cmp43 = icmp ult i32 %52, %53
  br i1 %cmp43, label %if.then44, label %if.else85

if.then44:                                        ; preds = %if.else42
  %54 = load i32, ptr %univdiagonal, align 4, !tbaa !12
  %55 = load i32, ptr %high_univdiagonal.addr, align 4, !tbaa !12
  %sub45 = sub i32 %54, %55
  store i32 %sub45, ptr %nindels, align 4, !tbaa !12
  %56 = load i32, ptr %univdiagonal, align 4, !tbaa !12
  %57 = load i32, ptr %nindels, align 4, !tbaa !12
  %58 = load ptr, ptr @genomebits, align 8, !tbaa !5
  %59 = load ptr, ptr @genomebits_alt, align 8, !tbaa !5
  %60 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %61 = load i32, ptr %qstart, align 4, !tbaa !12
  %62 = load i32, ptr %high_qend.addr, align 4, !tbaa !12
  %63 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %64 = load ptr, ptr %indelinfo.addr, align 8, !tbaa !5
  %65 = load i8, ptr %plusp.addr, align 1, !tbaa !14
  %66 = load i32, ptr %genestrand.addr, align 4, !tbaa !12
  %call46 = call i32 @Indel_resolve_middle_insertion(ptr noundef %nmismatches_i, ptr noundef %nmismatches_j, ptr noundef %ref_nmismatches_i, ptr noundef %ref_nmismatches_j, i32 noundef %56, i32 noundef %57, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef %58, ptr noundef %59, ptr noundef %60, i32 noundef %61, i32 noundef %62, i32 noundef %63, ptr noundef %64, i8 noundef zeroext %65, i32 noundef %66, i8 noundef zeroext 1)
  store i32 %call46, ptr %indel_pos, align 4, !tbaa !12
  %cmp47 = icmp sle i32 %call46, 0
  br i1 %cmp47, label %if.then48, label %if.else49

if.then48:                                        ; preds = %if.then44
  br label %if.end84

if.else49:                                        ; preds = %if.then44
  %67 = load i32, ptr %indel_pos, align 4, !tbaa !12
  %68 = load i32, ptr %qstart, align 4, !tbaa !12
  %sub50 = sub nsw i32 %67, %68
  store i32 %sub50, ptr %supporti, align 4, !tbaa !12
  %69 = load i32, ptr %high_qend.addr, align 4, !tbaa !12
  %70 = load i32, ptr %indel_pos, align 4, !tbaa !12
  %71 = load i32, ptr %nindels, align 4, !tbaa !12
  %add51 = add nsw i32 %70, %71
  %sub52 = sub nsw i32 %69, %add51
  store i32 %sub52, ptr %supportj, align 4, !tbaa !12
  %72 = load i32, ptr %supporti, align 4, !tbaa !12
  %73 = load i32, ptr %nmismatches_i, align 4, !tbaa !12
  %mul = mul nsw i32 3, %73
  %sub53 = sub nsw i32 %72, %mul
  %cmp54 = icmp slt i32 %sub53, 6
  br i1 %cmp54, label %if.then55, label %if.else56

if.then55:                                        ; preds = %if.else49
  br label %if.end83

if.else56:                                        ; preds = %if.else49
  %74 = load i32, ptr %supportj, align 4, !tbaa !12
  %75 = load i32, ptr %nmismatches_j, align 4, !tbaa !12
  %mul57 = mul nsw i32 3, %75
  %sub58 = sub nsw i32 %74, %mul57
  %cmp59 = icmp slt i32 %sub58, 6
  br i1 %cmp59, label %if.then60, label %if.else61

if.then60:                                        ; preds = %if.else56
  br label %if.end82

if.else61:                                        ; preds = %if.else56
  %76 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %77 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %78 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %79 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %80 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %81 = load ptr, ptr %vectorpool.addr, align 8, !tbaa !5
  %call62 = call ptr @Path_copy_3(ptr noundef %76, i8 noundef zeroext 0, i32 noundef 0, double noundef 0.000000e+00, ptr noundef %77, ptr noundef %78, ptr noundef %79, ptr noundef %80, ptr noundef %81)
  store ptr %call62, ptr %newpath, align 8, !tbaa !5
  %82 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints63 = getelementptr inbounds %struct.Path_T, ptr %82, i32 0, i32 17
  %83 = load ptr, ptr %endpoints63, align 8, !tbaa !40
  %84 = load i32, ptr %indel_pos, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %83, i32 noundef %84)
  %85 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints64 = getelementptr inbounds %struct.Path_T, ptr %85, i32 0, i32 17
  %86 = load ptr, ptr %endpoints64, align 8, !tbaa !40
  %87 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %88 = load i32, ptr %high_qend.addr, align 4, !tbaa !12
  %call65 = call ptr @Intlistpool_push(ptr noundef %86, ptr noundef %87, i32 noundef %88)
  %89 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints66 = getelementptr inbounds %struct.Path_T, ptr %89, i32 0, i32 17
  store ptr %call65, ptr %endpoints66, align 8, !tbaa !40
  %90 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions67 = getelementptr inbounds %struct.Path_T, ptr %90, i32 0, i32 21
  %91 = load ptr, ptr %junctions67, align 8, !tbaa !43
  %92 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %93 = load i32, ptr %nindels, align 4, !tbaa !12
  %94 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %call68 = call ptr @Junction_new_insertion(i32 noundef %93, ptr noundef %94)
  %call69 = call ptr @Listpool_push(ptr noundef %91, ptr noundef %92, ptr noundef %call68)
  %95 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions70 = getelementptr inbounds %struct.Path_T, ptr %95, i32 0, i32 21
  store ptr %call69, ptr %junctions70, align 8, !tbaa !43
  %96 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches71 = getelementptr inbounds %struct.Path_T, ptr %96, i32 0, i32 19
  %97 = load ptr, ptr %nmismatches71, align 8, !tbaa !41
  %98 = load i32, ptr %nmismatches_i, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %97, i32 noundef %98)
  %99 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches72 = getelementptr inbounds %struct.Path_T, ptr %99, i32 0, i32 20
  %100 = load ptr, ptr %ref_nmismatches72, align 8, !tbaa !42
  %101 = load i32, ptr %nmismatches_i, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %100, i32 noundef %101)
  %102 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches73 = getelementptr inbounds %struct.Path_T, ptr %102, i32 0, i32 19
  %103 = load ptr, ptr %nmismatches73, align 8, !tbaa !41
  %104 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %105 = load i32, ptr %nmismatches_j, align 4, !tbaa !12
  %call74 = call ptr @Intlistpool_push(ptr noundef %103, ptr noundef %104, i32 noundef %105)
  %106 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches75 = getelementptr inbounds %struct.Path_T, ptr %106, i32 0, i32 19
  store ptr %call74, ptr %nmismatches75, align 8, !tbaa !41
  %107 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches76 = getelementptr inbounds %struct.Path_T, ptr %107, i32 0, i32 20
  %108 = load ptr, ptr %ref_nmismatches76, align 8, !tbaa !42
  %109 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %110 = load i32, ptr %nmismatches_j, align 4, !tbaa !12
  %call77 = call ptr @Intlistpool_push(ptr noundef %108, ptr noundef %109, i32 noundef %110)
  %111 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches78 = getelementptr inbounds %struct.Path_T, ptr %111, i32 0, i32 20
  store ptr %call77, ptr %ref_nmismatches78, align 8, !tbaa !42
  %112 = load ptr, ptr %newpath, align 8, !tbaa !5
  %univdiagonals79 = getelementptr inbounds %struct.Path_T, ptr %112, i32 0, i32 18
  %113 = load ptr, ptr %univdiagonals79, align 8, !tbaa !36
  %114 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %115 = load i32, ptr %high_univdiagonal.addr, align 4, !tbaa !12
  %call80 = call ptr @Uintlistpool_push(ptr noundef %113, ptr noundef %114, i32 noundef %115)
  %116 = load ptr, ptr %newpath, align 8, !tbaa !5
  %univdiagonals81 = getelementptr inbounds %struct.Path_T, ptr %116, i32 0, i32 18
  store ptr %call80, ptr %univdiagonals81, align 8, !tbaa !36
  br label %if.end82

if.end82:                                         ; preds = %if.else61, %if.then60
  br label %if.end83

if.end83:                                         ; preds = %if.end82, %if.then55
  br label %if.end84

if.end84:                                         ; preds = %if.end83, %if.then48
  br label %if.end477

if.else85:                                        ; preds = %if.else42
  %117 = load i32, ptr %high_univdiagonal.addr, align 4, !tbaa !12
  %118 = load i32, ptr %univdiagonal, align 4, !tbaa !12
  %119 = load i32, ptr %max_deletionlen.addr, align 4, !tbaa !12
  %add86 = add i32 %118, %119
  %cmp87 = icmp ule i32 %117, %add86
  br i1 %cmp87, label %if.then88, label %if.else132

if.then88:                                        ; preds = %if.else85
  %120 = load i32, ptr %high_univdiagonal.addr, align 4, !tbaa !12
  %121 = load i32, ptr %univdiagonal, align 4, !tbaa !12
  %sub89 = sub i32 %120, %121
  store i32 %sub89, ptr %nindels, align 4, !tbaa !12
  %122 = load i32, ptr %univdiagonal, align 4, !tbaa !12
  %123 = load i32, ptr %nindels, align 4, !tbaa !12
  %sub90 = sub nsw i32 0, %123
  %124 = load ptr, ptr @genomebits, align 8, !tbaa !5
  %125 = load ptr, ptr @genomebits_alt, align 8, !tbaa !5
  %126 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %127 = load i32, ptr %qstart, align 4, !tbaa !12
  %128 = load i32, ptr %high_qend.addr, align 4, !tbaa !12
  %129 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %130 = load ptr, ptr %indelinfo.addr, align 8, !tbaa !5
  %131 = load i8, ptr %plusp.addr, align 1, !tbaa !14
  %132 = load i32, ptr %genestrand.addr, align 4, !tbaa !12
  %call91 = call i32 @Indel_resolve_middle_deletion(ptr noundef %nmismatches_i, ptr noundef %nmismatches_j, ptr noundef %ref_nmismatches_i, ptr noundef %ref_nmismatches_j, i32 noundef %122, i32 noundef %sub90, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef %124, ptr noundef %125, ptr noundef %126, i32 noundef %127, i32 noundef %128, i32 noundef %129, ptr noundef %130, i8 noundef zeroext %131, i32 noundef %132, i8 noundef zeroext 1)
  store i32 %call91, ptr %indel_pos, align 4, !tbaa !12
  %cmp92 = icmp sle i32 %call91, 0
  br i1 %cmp92, label %if.then93, label %if.else94

if.then93:                                        ; preds = %if.then88
  br label %if.end131

if.else94:                                        ; preds = %if.then88
  %133 = load i32, ptr %indel_pos, align 4, !tbaa !12
  %134 = load i32, ptr %qstart, align 4, !tbaa !12
  %sub95 = sub nsw i32 %133, %134
  store i32 %sub95, ptr %supporti, align 4, !tbaa !12
  %135 = load i32, ptr %high_qend.addr, align 4, !tbaa !12
  %136 = load i32, ptr %indel_pos, align 4, !tbaa !12
  %sub96 = sub nsw i32 %135, %136
  store i32 %sub96, ptr %supportj, align 4, !tbaa !12
  %137 = load i32, ptr %supporti, align 4, !tbaa !12
  %138 = load i32, ptr %nmismatches_i, align 4, !tbaa !12
  %mul97 = mul nsw i32 3, %138
  %sub98 = sub nsw i32 %137, %mul97
  %cmp99 = icmp slt i32 %sub98, 6
  br i1 %cmp99, label %if.then100, label %if.else101

if.then100:                                       ; preds = %if.else94
  br label %if.end130

if.else101:                                       ; preds = %if.else94
  %139 = load i32, ptr %supportj, align 4, !tbaa !12
  %140 = load i32, ptr %nmismatches_j, align 4, !tbaa !12
  %mul102 = mul nsw i32 3, %140
  %sub103 = sub nsw i32 %139, %mul102
  %cmp104 = icmp slt i32 %sub103, 6
  br i1 %cmp104, label %if.then105, label %if.else106

if.then105:                                       ; preds = %if.else101
  br label %if.end129

if.else106:                                       ; preds = %if.else101
  %141 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %142 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %143 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %144 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %145 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %146 = load ptr, ptr %vectorpool.addr, align 8, !tbaa !5
  %call107 = call ptr @Path_copy_3(ptr noundef %141, i8 noundef zeroext 0, i32 noundef 0, double noundef 0.000000e+00, ptr noundef %142, ptr noundef %143, ptr noundef %144, ptr noundef %145, ptr noundef %146)
  store ptr %call107, ptr %newpath, align 8, !tbaa !5
  %147 = load i32, ptr %univdiagonal, align 4, !tbaa !12
  %148 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %sub108 = sub i32 %147, %148
  %149 = load i32, ptr %indel_pos, align 4, !tbaa !12
  %add109 = add i32 %sub108, %149
  store i32 %add109, ptr %deletionpos, align 4, !tbaa !12
  %150 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions110 = getelementptr inbounds %struct.Path_T, ptr %150, i32 0, i32 21
  %151 = load ptr, ptr %junctions110, align 8, !tbaa !43
  %152 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %153 = load i32, ptr %nindels, align 4, !tbaa !12
  %154 = load i32, ptr %deletionpos, align 4, !tbaa !12
  %155 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %call111 = call ptr @Junction_new_deletion(i32 noundef %153, i32 noundef %154, ptr noundef %155)
  %call112 = call ptr @Listpool_push(ptr noundef %151, ptr noundef %152, ptr noundef %call111)
  %156 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions113 = getelementptr inbounds %struct.Path_T, ptr %156, i32 0, i32 21
  store ptr %call112, ptr %junctions113, align 8, !tbaa !43
  %157 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints114 = getelementptr inbounds %struct.Path_T, ptr %157, i32 0, i32 17
  %158 = load ptr, ptr %endpoints114, align 8, !tbaa !40
  %159 = load i32, ptr %indel_pos, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %158, i32 noundef %159)
  %160 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints115 = getelementptr inbounds %struct.Path_T, ptr %160, i32 0, i32 17
  %161 = load ptr, ptr %endpoints115, align 8, !tbaa !40
  %162 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %163 = load i32, ptr %high_qend.addr, align 4, !tbaa !12
  %call116 = call ptr @Intlistpool_push(ptr noundef %161, ptr noundef %162, i32 noundef %163)
  %164 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints117 = getelementptr inbounds %struct.Path_T, ptr %164, i32 0, i32 17
  store ptr %call116, ptr %endpoints117, align 8, !tbaa !40
  %165 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches118 = getelementptr inbounds %struct.Path_T, ptr %165, i32 0, i32 19
  %166 = load ptr, ptr %nmismatches118, align 8, !tbaa !41
  %167 = load i32, ptr %nmismatches_i, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %166, i32 noundef %167)
  %168 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches119 = getelementptr inbounds %struct.Path_T, ptr %168, i32 0, i32 20
  %169 = load ptr, ptr %ref_nmismatches119, align 8, !tbaa !42
  %170 = load i32, ptr %nmismatches_i, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %169, i32 noundef %170)
  %171 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches120 = getelementptr inbounds %struct.Path_T, ptr %171, i32 0, i32 19
  %172 = load ptr, ptr %nmismatches120, align 8, !tbaa !41
  %173 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %174 = load i32, ptr %nmismatches_j, align 4, !tbaa !12
  %call121 = call ptr @Intlistpool_push(ptr noundef %172, ptr noundef %173, i32 noundef %174)
  %175 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches122 = getelementptr inbounds %struct.Path_T, ptr %175, i32 0, i32 19
  store ptr %call121, ptr %nmismatches122, align 8, !tbaa !41
  %176 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches123 = getelementptr inbounds %struct.Path_T, ptr %176, i32 0, i32 20
  %177 = load ptr, ptr %ref_nmismatches123, align 8, !tbaa !42
  %178 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %179 = load i32, ptr %nmismatches_j, align 4, !tbaa !12
  %call124 = call ptr @Intlistpool_push(ptr noundef %177, ptr noundef %178, i32 noundef %179)
  %180 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches125 = getelementptr inbounds %struct.Path_T, ptr %180, i32 0, i32 20
  store ptr %call124, ptr %ref_nmismatches125, align 8, !tbaa !42
  %181 = load ptr, ptr %newpath, align 8, !tbaa !5
  %univdiagonals126 = getelementptr inbounds %struct.Path_T, ptr %181, i32 0, i32 18
  %182 = load ptr, ptr %univdiagonals126, align 8, !tbaa !36
  %183 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %184 = load i32, ptr %high_univdiagonal.addr, align 4, !tbaa !12
  %call127 = call ptr @Uintlistpool_push(ptr noundef %182, ptr noundef %183, i32 noundef %184)
  %185 = load ptr, ptr %newpath, align 8, !tbaa !5
  %univdiagonals128 = getelementptr inbounds %struct.Path_T, ptr %185, i32 0, i32 18
  store ptr %call127, ptr %univdiagonals128, align 8, !tbaa !36
  br label %if.end129

if.end129:                                        ; preds = %if.else106, %if.then105
  br label %if.end130

if.end130:                                        ; preds = %if.end129, %if.then100
  br label %if.end131

if.end131:                                        ; preds = %if.end130, %if.then93
  br label %if.end476

if.else132:                                       ; preds = %if.else85
  %186 = load i32, ptr %univdiagonal, align 4, !tbaa !12
  %187 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %sub133 = sub i32 %186, %187
  store i32 %sub133, ptr %left, align 4, !tbaa !12
  %188 = load i32, ptr %try_sensedir.addr, align 4, !tbaa !12
  %cmp134 = icmp eq i32 %188, 2
  br i1 %cmp134, label %if.then135, label %if.else305

if.then135:                                       ; preds = %if.else132
  %189 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %190 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %191 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %192 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %193 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %194 = load ptr, ptr %vectorpool.addr, align 8, !tbaa !5
  %call136 = call ptr @Path_copy_3(ptr noundef %189, i8 noundef zeroext 0, i32 noundef 0, double noundef 0.000000e+00, ptr noundef %190, ptr noundef %191, ptr noundef %192, ptr noundef %193, ptr noundef %194)
  store ptr %call136, ptr %newpath, align 8, !tbaa !5
  %195 = load i32, ptr %univdiagonal, align 4, !tbaa !12
  %196 = load i32, ptr %high_univdiagonal.addr, align 4, !tbaa !12
  %197 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %198 = load i8, ptr %plusp.addr, align 1, !tbaa !14
  %199 = load i32, ptr %chroffset.addr, align 4, !tbaa !12
  %200 = load i32, ptr %qstart, align 4, !tbaa !12
  %201 = load i32, ptr %high_qend.addr, align 4, !tbaa !12
  %202 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %203 = load ptr, ptr %indelinfo.addr, align 8, !tbaa !5
  %204 = load ptr, ptr %spliceinfo.addr, align 8, !tbaa !5
  %205 = load ptr, ptr %knownsplicing.addr, align 8, !tbaa !5
  %206 = load i32, ptr %genestrand.addr, align 4, !tbaa !12
  %207 = load i32, ptr %nmismatches_allowed.addr, align 4, !tbaa !12
  %208 = load i32, ptr %max_insertionlen.addr, align 4, !tbaa !12
  %209 = load i32, ptr %max_deletionlen.addr, align 4, !tbaa !12
  %210 = load i8, ptr %salvagep.addr, align 1, !tbaa !14
  %call137 = call i32 @Splice_resolve(ptr noundef %middle_univdiagonal, ptr noundef %splice_qpos_i, ptr noundef %splice_qpos_j, ptr noundef %nindels, ptr noundef %indel_pos, ptr noundef %nmismatches_i, ptr noundef %nmismatches_middle, ptr noundef %nmismatches_j, ptr noundef %nmismatches_indel, ptr noundef %ref_nmismatches_i, ptr noundef %ref_nmismatches_middle, ptr noundef %ref_nmismatches_j, ptr noundef %ref_nmismatches_indel, ptr noundef %donor_prob, ptr noundef %acceptor_prob, i32 noundef %195, i32 noundef %196, ptr noundef %197, i8 noundef zeroext %198, i32 noundef %199, i32 noundef %200, i32 noundef %201, i32 noundef %202, ptr noundef %203, ptr noundef %204, ptr noundef %205, i8 noundef zeroext 1, i32 noundef %206, i32 noundef %207, i32 noundef %208, i32 noundef %209, i8 noundef zeroext %210, i8 noundef zeroext 1)
  store i32 %call137, ptr %splice_qpos, align 4, !tbaa !12
  %cmp138 = icmp slt i32 %call137, 0
  br i1 %cmp138, label %if.then139, label %if.else181

if.then139:                                       ; preds = %if.then135
  %211 = load i32, ptr %middle_univdiagonal, align 4, !tbaa !12
  %cmp140 = icmp ne i32 %211, 0
  br i1 %cmp140, label %if.then141, label %if.else179

if.then141:                                       ; preds = %if.then139
  %212 = load i32, ptr %high_univdiagonal.addr, align 4, !tbaa !12
  %213 = load i32, ptr %middle_univdiagonal, align 4, !tbaa !12
  %sub142 = sub i32 %212, %213
  store i32 %sub142, ptr %splice_distance_j, align 4, !tbaa !12
  %214 = load i32, ptr %middle_univdiagonal, align 4, !tbaa !12
  %215 = load i32, ptr %univdiagonal, align 4, !tbaa !12
  %sub143 = sub i32 %214, %215
  store i32 %sub143, ptr %splice_distance_i, align 4, !tbaa !12
  %216 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints144 = getelementptr inbounds %struct.Path_T, ptr %216, i32 0, i32 17
  %217 = load ptr, ptr %endpoints144, align 8, !tbaa !40
  %218 = load i32, ptr %splice_qpos_i, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %217, i32 noundef %218)
  %219 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints145 = getelementptr inbounds %struct.Path_T, ptr %219, i32 0, i32 17
  %220 = load ptr, ptr %endpoints145, align 8, !tbaa !40
  %221 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %222 = load i32, ptr %splice_qpos_j, align 4, !tbaa !12
  %call146 = call ptr @Intlistpool_push(ptr noundef %220, ptr noundef %221, i32 noundef %222)
  %223 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints147 = getelementptr inbounds %struct.Path_T, ptr %223, i32 0, i32 17
  store ptr %call146, ptr %endpoints147, align 8, !tbaa !40
  %224 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints148 = getelementptr inbounds %struct.Path_T, ptr %224, i32 0, i32 17
  %225 = load ptr, ptr %endpoints148, align 8, !tbaa !40
  %226 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %227 = load i32, ptr %high_qend.addr, align 4, !tbaa !12
  %call149 = call ptr @Intlistpool_push(ptr noundef %225, ptr noundef %226, i32 noundef %227)
  %228 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints150 = getelementptr inbounds %struct.Path_T, ptr %228, i32 0, i32 17
  store ptr %call149, ptr %endpoints150, align 8, !tbaa !40
  %229 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions151 = getelementptr inbounds %struct.Path_T, ptr %229, i32 0, i32 21
  %230 = load ptr, ptr %junctions151, align 8, !tbaa !43
  %231 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %232 = load i32, ptr %splice_distance_i, align 4, !tbaa !12
  %233 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %call152 = call ptr @Junction_new_splice(i32 noundef %232, i32 noundef 2, double noundef 1.000000e+00, double noundef 1.000000e+00, ptr noundef %233)
  %call153 = call ptr @Listpool_push(ptr noundef %230, ptr noundef %231, ptr noundef %call152)
  %234 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions154 = getelementptr inbounds %struct.Path_T, ptr %234, i32 0, i32 21
  store ptr %call153, ptr %junctions154, align 8, !tbaa !43
  %235 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions155 = getelementptr inbounds %struct.Path_T, ptr %235, i32 0, i32 21
  %236 = load ptr, ptr %junctions155, align 8, !tbaa !43
  %237 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %238 = load i32, ptr %splice_distance_j, align 4, !tbaa !12
  %239 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %call156 = call ptr @Junction_new_splice(i32 noundef %238, i32 noundef 2, double noundef 1.000000e+00, double noundef 1.000000e+00, ptr noundef %239)
  %call157 = call ptr @Listpool_push(ptr noundef %236, ptr noundef %237, ptr noundef %call156)
  %240 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions158 = getelementptr inbounds %struct.Path_T, ptr %240, i32 0, i32 21
  store ptr %call157, ptr %junctions158, align 8, !tbaa !43
  %241 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches159 = getelementptr inbounds %struct.Path_T, ptr %241, i32 0, i32 19
  %242 = load ptr, ptr %nmismatches159, align 8, !tbaa !41
  %243 = load i32, ptr %nmismatches_i, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %242, i32 noundef %243)
  %244 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches160 = getelementptr inbounds %struct.Path_T, ptr %244, i32 0, i32 20
  %245 = load ptr, ptr %ref_nmismatches160, align 8, !tbaa !42
  %246 = load i32, ptr %ref_nmismatches_i, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %245, i32 noundef %246)
  %247 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches161 = getelementptr inbounds %struct.Path_T, ptr %247, i32 0, i32 19
  %248 = load ptr, ptr %nmismatches161, align 8, !tbaa !41
  %249 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %250 = load i32, ptr %nmismatches_middle, align 4, !tbaa !12
  %call162 = call ptr @Intlistpool_push(ptr noundef %248, ptr noundef %249, i32 noundef %250)
  %251 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches163 = getelementptr inbounds %struct.Path_T, ptr %251, i32 0, i32 19
  store ptr %call162, ptr %nmismatches163, align 8, !tbaa !41
  %252 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches164 = getelementptr inbounds %struct.Path_T, ptr %252, i32 0, i32 20
  %253 = load ptr, ptr %ref_nmismatches164, align 8, !tbaa !42
  %254 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %255 = load i32, ptr %ref_nmismatches_middle, align 4, !tbaa !12
  %call165 = call ptr @Intlistpool_push(ptr noundef %253, ptr noundef %254, i32 noundef %255)
  %256 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches166 = getelementptr inbounds %struct.Path_T, ptr %256, i32 0, i32 20
  store ptr %call165, ptr %ref_nmismatches166, align 8, !tbaa !42
  %257 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches167 = getelementptr inbounds %struct.Path_T, ptr %257, i32 0, i32 19
  %258 = load ptr, ptr %nmismatches167, align 8, !tbaa !41
  %259 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %260 = load i32, ptr %nmismatches_j, align 4, !tbaa !12
  %call168 = call ptr @Intlistpool_push(ptr noundef %258, ptr noundef %259, i32 noundef %260)
  %261 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches169 = getelementptr inbounds %struct.Path_T, ptr %261, i32 0, i32 19
  store ptr %call168, ptr %nmismatches169, align 8, !tbaa !41
  %262 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches170 = getelementptr inbounds %struct.Path_T, ptr %262, i32 0, i32 20
  %263 = load ptr, ptr %ref_nmismatches170, align 8, !tbaa !42
  %264 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %265 = load i32, ptr %ref_nmismatches_j, align 4, !tbaa !12
  %call171 = call ptr @Intlistpool_push(ptr noundef %263, ptr noundef %264, i32 noundef %265)
  %266 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches172 = getelementptr inbounds %struct.Path_T, ptr %266, i32 0, i32 20
  store ptr %call171, ptr %ref_nmismatches172, align 8, !tbaa !42
  %267 = load ptr, ptr %newpath, align 8, !tbaa !5
  %univdiagonals173 = getelementptr inbounds %struct.Path_T, ptr %267, i32 0, i32 18
  %268 = load ptr, ptr %univdiagonals173, align 8, !tbaa !36
  %269 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %270 = load i32, ptr %middle_univdiagonal, align 4, !tbaa !12
  %call174 = call ptr @Uintlistpool_push(ptr noundef %268, ptr noundef %269, i32 noundef %270)
  %271 = load ptr, ptr %newpath, align 8, !tbaa !5
  %univdiagonals175 = getelementptr inbounds %struct.Path_T, ptr %271, i32 0, i32 18
  store ptr %call174, ptr %univdiagonals175, align 8, !tbaa !36
  %272 = load ptr, ptr %newpath, align 8, !tbaa !5
  %univdiagonals176 = getelementptr inbounds %struct.Path_T, ptr %272, i32 0, i32 18
  %273 = load ptr, ptr %univdiagonals176, align 8, !tbaa !36
  %274 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %275 = load i32, ptr %high_univdiagonal.addr, align 4, !tbaa !12
  %call177 = call ptr @Uintlistpool_push(ptr noundef %273, ptr noundef %274, i32 noundef %275)
  %276 = load ptr, ptr %newpath, align 8, !tbaa !5
  %univdiagonals178 = getelementptr inbounds %struct.Path_T, ptr %276, i32 0, i32 18
  store ptr %call177, ptr %univdiagonals178, align 8, !tbaa !36
  br label %if.end180

if.else179:                                       ; preds = %if.then139
  %277 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %278 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %279 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %280 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %281 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  call void @Path_free(ptr noundef %newpath, ptr noundef %277, ptr noundef %278, ptr noundef %279, ptr noundef %280, ptr noundef %281)
  store ptr null, ptr %newpath, align 8, !tbaa !5
  br label %if.end180

if.end180:                                        ; preds = %if.else179, %if.then141
  br label %if.end304

if.else181:                                       ; preds = %if.then135
  %282 = load i32, ptr %nindels, align 4, !tbaa !12
  %cmp182 = icmp eq i32 %282, 0
  br i1 %cmp182, label %if.then183, label %if.else204

if.then183:                                       ; preds = %if.else181
  %283 = load i32, ptr %high_univdiagonal.addr, align 4, !tbaa !12
  %284 = load i32, ptr %univdiagonal, align 4, !tbaa !12
  %sub184 = sub i32 %283, %284
  store i32 %sub184, ptr %splice_distance, align 4, !tbaa !12
  %285 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints185 = getelementptr inbounds %struct.Path_T, ptr %285, i32 0, i32 17
  %286 = load ptr, ptr %endpoints185, align 8, !tbaa !40
  %287 = load i32, ptr %splice_qpos, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %286, i32 noundef %287)
  %288 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints186 = getelementptr inbounds %struct.Path_T, ptr %288, i32 0, i32 17
  %289 = load ptr, ptr %endpoints186, align 8, !tbaa !40
  %290 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %291 = load i32, ptr %high_qend.addr, align 4, !tbaa !12
  %call187 = call ptr @Intlistpool_push(ptr noundef %289, ptr noundef %290, i32 noundef %291)
  %292 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints188 = getelementptr inbounds %struct.Path_T, ptr %292, i32 0, i32 17
  store ptr %call187, ptr %endpoints188, align 8, !tbaa !40
  %293 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions189 = getelementptr inbounds %struct.Path_T, ptr %293, i32 0, i32 21
  %294 = load ptr, ptr %junctions189, align 8, !tbaa !43
  %295 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %296 = load i32, ptr %splice_distance, align 4, !tbaa !12
  %297 = load double, ptr %donor_prob, align 8, !tbaa !44
  %298 = load double, ptr %acceptor_prob, align 8, !tbaa !44
  %299 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %call190 = call ptr @Junction_new_splice(i32 noundef %296, i32 noundef 2, double noundef %297, double noundef %298, ptr noundef %299)
  %call191 = call ptr @Listpool_push(ptr noundef %294, ptr noundef %295, ptr noundef %call190)
  %300 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions192 = getelementptr inbounds %struct.Path_T, ptr %300, i32 0, i32 21
  store ptr %call191, ptr %junctions192, align 8, !tbaa !43
  %301 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches193 = getelementptr inbounds %struct.Path_T, ptr %301, i32 0, i32 19
  %302 = load ptr, ptr %nmismatches193, align 8, !tbaa !41
  %303 = load i32, ptr %nmismatches_i, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %302, i32 noundef %303)
  %304 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches194 = getelementptr inbounds %struct.Path_T, ptr %304, i32 0, i32 20
  %305 = load ptr, ptr %ref_nmismatches194, align 8, !tbaa !42
  %306 = load i32, ptr %ref_nmismatches_i, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %305, i32 noundef %306)
  %307 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches195 = getelementptr inbounds %struct.Path_T, ptr %307, i32 0, i32 19
  %308 = load ptr, ptr %nmismatches195, align 8, !tbaa !41
  %309 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %310 = load i32, ptr %nmismatches_j, align 4, !tbaa !12
  %call196 = call ptr @Intlistpool_push(ptr noundef %308, ptr noundef %309, i32 noundef %310)
  %311 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches197 = getelementptr inbounds %struct.Path_T, ptr %311, i32 0, i32 19
  store ptr %call196, ptr %nmismatches197, align 8, !tbaa !41
  %312 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches198 = getelementptr inbounds %struct.Path_T, ptr %312, i32 0, i32 20
  %313 = load ptr, ptr %ref_nmismatches198, align 8, !tbaa !42
  %314 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %315 = load i32, ptr %ref_nmismatches_j, align 4, !tbaa !12
  %call199 = call ptr @Intlistpool_push(ptr noundef %313, ptr noundef %314, i32 noundef %315)
  %316 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches200 = getelementptr inbounds %struct.Path_T, ptr %316, i32 0, i32 20
  store ptr %call199, ptr %ref_nmismatches200, align 8, !tbaa !42
  %317 = load ptr, ptr %newpath, align 8, !tbaa !5
  %univdiagonals201 = getelementptr inbounds %struct.Path_T, ptr %317, i32 0, i32 18
  %318 = load ptr, ptr %univdiagonals201, align 8, !tbaa !36
  %319 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %320 = load i32, ptr %high_univdiagonal.addr, align 4, !tbaa !12
  %call202 = call ptr @Uintlistpool_push(ptr noundef %318, ptr noundef %319, i32 noundef %320)
  %321 = load ptr, ptr %newpath, align 8, !tbaa !5
  %univdiagonals203 = getelementptr inbounds %struct.Path_T, ptr %321, i32 0, i32 18
  store ptr %call202, ptr %univdiagonals203, align 8, !tbaa !36
  br label %if.end303

if.else204:                                       ; preds = %if.else181
  %322 = load i32, ptr %indel_pos, align 4, !tbaa !12
  %323 = load i32, ptr %splice_qpos, align 4, !tbaa !12
  %cmp205 = icmp slt i32 %322, %323
  br i1 %cmp205, label %if.then206, label %if.else254

if.then206:                                       ; preds = %if.else204
  %324 = load i32, ptr %univdiagonal, align 4, !tbaa !12
  %325 = load i32, ptr %nindels, align 4, !tbaa !12
  %add207 = add i32 %324, %325
  store i32 %add207, ptr %middle_univdiagonal, align 4, !tbaa !12
  %326 = load i32, ptr %high_univdiagonal.addr, align 4, !tbaa !12
  %327 = load i32, ptr %middle_univdiagonal, align 4, !tbaa !12
  %sub208 = sub i32 %326, %327
  store i32 %sub208, ptr %splice_distance, align 4, !tbaa !12
  %328 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints209 = getelementptr inbounds %struct.Path_T, ptr %328, i32 0, i32 17
  %329 = load ptr, ptr %endpoints209, align 8, !tbaa !40
  %330 = load i32, ptr %indel_pos, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %329, i32 noundef %330)
  %331 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints210 = getelementptr inbounds %struct.Path_T, ptr %331, i32 0, i32 17
  %332 = load ptr, ptr %endpoints210, align 8, !tbaa !40
  %333 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %334 = load i32, ptr %splice_qpos, align 4, !tbaa !12
  %call211 = call ptr @Intlistpool_push(ptr noundef %332, ptr noundef %333, i32 noundef %334)
  %335 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints212 = getelementptr inbounds %struct.Path_T, ptr %335, i32 0, i32 17
  store ptr %call211, ptr %endpoints212, align 8, !tbaa !40
  %336 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints213 = getelementptr inbounds %struct.Path_T, ptr %336, i32 0, i32 17
  %337 = load ptr, ptr %endpoints213, align 8, !tbaa !40
  %338 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %339 = load i32, ptr %high_qend.addr, align 4, !tbaa !12
  %call214 = call ptr @Intlistpool_push(ptr noundef %337, ptr noundef %338, i32 noundef %339)
  %340 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints215 = getelementptr inbounds %struct.Path_T, ptr %340, i32 0, i32 17
  store ptr %call214, ptr %endpoints215, align 8, !tbaa !40
  %341 = load i32, ptr %nindels, align 4, !tbaa !12
  %cmp216 = icmp slt i32 %341, 0
  br i1 %cmp216, label %if.then217, label %if.else223

if.then217:                                       ; preds = %if.then206
  %342 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions218 = getelementptr inbounds %struct.Path_T, ptr %342, i32 0, i32 21
  %343 = load ptr, ptr %junctions218, align 8, !tbaa !43
  %344 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %345 = load i32, ptr %nindels, align 4, !tbaa !12
  %sub219 = sub nsw i32 0, %345
  %346 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %call220 = call ptr @Junction_new_insertion(i32 noundef %sub219, ptr noundef %346)
  %call221 = call ptr @Listpool_push(ptr noundef %343, ptr noundef %344, ptr noundef %call220)
  %347 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions222 = getelementptr inbounds %struct.Path_T, ptr %347, i32 0, i32 21
  store ptr %call221, ptr %junctions222, align 8, !tbaa !43
  br label %if.end229

if.else223:                                       ; preds = %if.then206
  %348 = load i32, ptr %left, align 4, !tbaa !12
  %349 = load i32, ptr %indel_pos, align 4, !tbaa !12
  %add224 = add i32 %348, %349
  store i32 %add224, ptr %deletionpos, align 4, !tbaa !12
  %350 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions225 = getelementptr inbounds %struct.Path_T, ptr %350, i32 0, i32 21
  %351 = load ptr, ptr %junctions225, align 8, !tbaa !43
  %352 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %353 = load i32, ptr %nindels, align 4, !tbaa !12
  %354 = load i32, ptr %deletionpos, align 4, !tbaa !12
  %355 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %call226 = call ptr @Junction_new_deletion(i32 noundef %353, i32 noundef %354, ptr noundef %355)
  %call227 = call ptr @Listpool_push(ptr noundef %351, ptr noundef %352, ptr noundef %call226)
  %356 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions228 = getelementptr inbounds %struct.Path_T, ptr %356, i32 0, i32 21
  store ptr %call227, ptr %junctions228, align 8, !tbaa !43
  br label %if.end229

if.end229:                                        ; preds = %if.else223, %if.then217
  %357 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions230 = getelementptr inbounds %struct.Path_T, ptr %357, i32 0, i32 21
  %358 = load ptr, ptr %junctions230, align 8, !tbaa !43
  %359 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %360 = load i32, ptr %splice_distance, align 4, !tbaa !12
  %361 = load double, ptr %donor_prob, align 8, !tbaa !44
  %362 = load double, ptr %acceptor_prob, align 8, !tbaa !44
  %363 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %call231 = call ptr @Junction_new_splice(i32 noundef %360, i32 noundef 2, double noundef %361, double noundef %362, ptr noundef %363)
  %call232 = call ptr @Listpool_push(ptr noundef %358, ptr noundef %359, ptr noundef %call231)
  %364 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions233 = getelementptr inbounds %struct.Path_T, ptr %364, i32 0, i32 21
  store ptr %call232, ptr %junctions233, align 8, !tbaa !43
  %365 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches234 = getelementptr inbounds %struct.Path_T, ptr %365, i32 0, i32 19
  %366 = load ptr, ptr %nmismatches234, align 8, !tbaa !41
  %367 = load i32, ptr %nmismatches_i, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %366, i32 noundef %367)
  %368 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches235 = getelementptr inbounds %struct.Path_T, ptr %368, i32 0, i32 20
  %369 = load ptr, ptr %ref_nmismatches235, align 8, !tbaa !42
  %370 = load i32, ptr %nmismatches_i, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %369, i32 noundef %370)
  %371 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches236 = getelementptr inbounds %struct.Path_T, ptr %371, i32 0, i32 19
  %372 = load ptr, ptr %nmismatches236, align 8, !tbaa !41
  %373 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %374 = load i32, ptr %nmismatches_indel, align 4, !tbaa !12
  %call237 = call ptr @Intlistpool_push(ptr noundef %372, ptr noundef %373, i32 noundef %374)
  %375 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches238 = getelementptr inbounds %struct.Path_T, ptr %375, i32 0, i32 19
  store ptr %call237, ptr %nmismatches238, align 8, !tbaa !41
  %376 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches239 = getelementptr inbounds %struct.Path_T, ptr %376, i32 0, i32 20
  %377 = load ptr, ptr %ref_nmismatches239, align 8, !tbaa !42
  %378 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %379 = load i32, ptr %ref_nmismatches_indel, align 4, !tbaa !12
  %call240 = call ptr @Intlistpool_push(ptr noundef %377, ptr noundef %378, i32 noundef %379)
  %380 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches241 = getelementptr inbounds %struct.Path_T, ptr %380, i32 0, i32 20
  store ptr %call240, ptr %ref_nmismatches241, align 8, !tbaa !42
  %381 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches242 = getelementptr inbounds %struct.Path_T, ptr %381, i32 0, i32 19
  %382 = load ptr, ptr %nmismatches242, align 8, !tbaa !41
  %383 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %384 = load i32, ptr %nmismatches_j, align 4, !tbaa !12
  %call243 = call ptr @Intlistpool_push(ptr noundef %382, ptr noundef %383, i32 noundef %384)
  %385 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches244 = getelementptr inbounds %struct.Path_T, ptr %385, i32 0, i32 19
  store ptr %call243, ptr %nmismatches244, align 8, !tbaa !41
  %386 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches245 = getelementptr inbounds %struct.Path_T, ptr %386, i32 0, i32 20
  %387 = load ptr, ptr %ref_nmismatches245, align 8, !tbaa !42
  %388 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %389 = load i32, ptr %ref_nmismatches_j, align 4, !tbaa !12
  %call246 = call ptr @Intlistpool_push(ptr noundef %387, ptr noundef %388, i32 noundef %389)
  %390 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches247 = getelementptr inbounds %struct.Path_T, ptr %390, i32 0, i32 20
  store ptr %call246, ptr %ref_nmismatches247, align 8, !tbaa !42
  %391 = load ptr, ptr %newpath, align 8, !tbaa !5
  %univdiagonals248 = getelementptr inbounds %struct.Path_T, ptr %391, i32 0, i32 18
  %392 = load ptr, ptr %univdiagonals248, align 8, !tbaa !36
  %393 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %394 = load i32, ptr %middle_univdiagonal, align 4, !tbaa !12
  %call249 = call ptr @Uintlistpool_push(ptr noundef %392, ptr noundef %393, i32 noundef %394)
  %395 = load ptr, ptr %newpath, align 8, !tbaa !5
  %univdiagonals250 = getelementptr inbounds %struct.Path_T, ptr %395, i32 0, i32 18
  store ptr %call249, ptr %univdiagonals250, align 8, !tbaa !36
  %396 = load ptr, ptr %newpath, align 8, !tbaa !5
  %univdiagonals251 = getelementptr inbounds %struct.Path_T, ptr %396, i32 0, i32 18
  %397 = load ptr, ptr %univdiagonals251, align 8, !tbaa !36
  %398 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %399 = load i32, ptr %high_univdiagonal.addr, align 4, !tbaa !12
  %call252 = call ptr @Uintlistpool_push(ptr noundef %397, ptr noundef %398, i32 noundef %399)
  %400 = load ptr, ptr %newpath, align 8, !tbaa !5
  %univdiagonals253 = getelementptr inbounds %struct.Path_T, ptr %400, i32 0, i32 18
  store ptr %call252, ptr %univdiagonals253, align 8, !tbaa !36
  br label %if.end302

if.else254:                                       ; preds = %if.else204
  %401 = load i32, ptr %high_univdiagonal.addr, align 4, !tbaa !12
  %402 = load i32, ptr %nindels, align 4, !tbaa !12
  %sub255 = sub i32 %401, %402
  store i32 %sub255, ptr %middle_univdiagonal, align 4, !tbaa !12
  %403 = load i32, ptr %middle_univdiagonal, align 4, !tbaa !12
  %404 = load i32, ptr %univdiagonal, align 4, !tbaa !12
  %sub256 = sub i32 %403, %404
  store i32 %sub256, ptr %splice_distance, align 4, !tbaa !12
  %405 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints257 = getelementptr inbounds %struct.Path_T, ptr %405, i32 0, i32 17
  %406 = load ptr, ptr %endpoints257, align 8, !tbaa !40
  %407 = load i32, ptr %splice_qpos, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %406, i32 noundef %407)
  %408 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints258 = getelementptr inbounds %struct.Path_T, ptr %408, i32 0, i32 17
  %409 = load ptr, ptr %endpoints258, align 8, !tbaa !40
  %410 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %411 = load i32, ptr %indel_pos, align 4, !tbaa !12
  %call259 = call ptr @Intlistpool_push(ptr noundef %409, ptr noundef %410, i32 noundef %411)
  %412 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints260 = getelementptr inbounds %struct.Path_T, ptr %412, i32 0, i32 17
  store ptr %call259, ptr %endpoints260, align 8, !tbaa !40
  %413 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints261 = getelementptr inbounds %struct.Path_T, ptr %413, i32 0, i32 17
  %414 = load ptr, ptr %endpoints261, align 8, !tbaa !40
  %415 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %416 = load i32, ptr %high_qend.addr, align 4, !tbaa !12
  %call262 = call ptr @Intlistpool_push(ptr noundef %414, ptr noundef %415, i32 noundef %416)
  %417 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints263 = getelementptr inbounds %struct.Path_T, ptr %417, i32 0, i32 17
  store ptr %call262, ptr %endpoints263, align 8, !tbaa !40
  %418 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions264 = getelementptr inbounds %struct.Path_T, ptr %418, i32 0, i32 21
  %419 = load ptr, ptr %junctions264, align 8, !tbaa !43
  %420 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %421 = load i32, ptr %splice_distance, align 4, !tbaa !12
  %422 = load double, ptr %donor_prob, align 8, !tbaa !44
  %423 = load double, ptr %acceptor_prob, align 8, !tbaa !44
  %424 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %call265 = call ptr @Junction_new_splice(i32 noundef %421, i32 noundef 2, double noundef %422, double noundef %423, ptr noundef %424)
  %call266 = call ptr @Listpool_push(ptr noundef %419, ptr noundef %420, ptr noundef %call265)
  %425 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions267 = getelementptr inbounds %struct.Path_T, ptr %425, i32 0, i32 21
  store ptr %call266, ptr %junctions267, align 8, !tbaa !43
  %426 = load i32, ptr %nindels, align 4, !tbaa !12
  %cmp268 = icmp slt i32 %426, 0
  br i1 %cmp268, label %if.then269, label %if.else275

if.then269:                                       ; preds = %if.else254
  %427 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions270 = getelementptr inbounds %struct.Path_T, ptr %427, i32 0, i32 21
  %428 = load ptr, ptr %junctions270, align 8, !tbaa !43
  %429 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %430 = load i32, ptr %nindels, align 4, !tbaa !12
  %sub271 = sub nsw i32 0, %430
  %431 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %call272 = call ptr @Junction_new_insertion(i32 noundef %sub271, ptr noundef %431)
  %call273 = call ptr @Listpool_push(ptr noundef %428, ptr noundef %429, ptr noundef %call272)
  %432 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions274 = getelementptr inbounds %struct.Path_T, ptr %432, i32 0, i32 21
  store ptr %call273, ptr %junctions274, align 8, !tbaa !43
  br label %if.end281

if.else275:                                       ; preds = %if.else254
  %433 = load i32, ptr %left, align 4, !tbaa !12
  %434 = load i32, ptr %indel_pos, align 4, !tbaa !12
  %add276 = add i32 %433, %434
  store i32 %add276, ptr %deletionpos, align 4, !tbaa !12
  %435 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions277 = getelementptr inbounds %struct.Path_T, ptr %435, i32 0, i32 21
  %436 = load ptr, ptr %junctions277, align 8, !tbaa !43
  %437 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %438 = load i32, ptr %nindels, align 4, !tbaa !12
  %439 = load i32, ptr %deletionpos, align 4, !tbaa !12
  %440 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %call278 = call ptr @Junction_new_deletion(i32 noundef %438, i32 noundef %439, ptr noundef %440)
  %call279 = call ptr @Listpool_push(ptr noundef %436, ptr noundef %437, ptr noundef %call278)
  %441 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions280 = getelementptr inbounds %struct.Path_T, ptr %441, i32 0, i32 21
  store ptr %call279, ptr %junctions280, align 8, !tbaa !43
  br label %if.end281

if.end281:                                        ; preds = %if.else275, %if.then269
  %442 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches282 = getelementptr inbounds %struct.Path_T, ptr %442, i32 0, i32 19
  %443 = load ptr, ptr %nmismatches282, align 8, !tbaa !41
  %444 = load i32, ptr %nmismatches_i, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %443, i32 noundef %444)
  %445 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches283 = getelementptr inbounds %struct.Path_T, ptr %445, i32 0, i32 20
  %446 = load ptr, ptr %ref_nmismatches283, align 8, !tbaa !42
  %447 = load i32, ptr %ref_nmismatches_i, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %446, i32 noundef %447)
  %448 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches284 = getelementptr inbounds %struct.Path_T, ptr %448, i32 0, i32 19
  %449 = load ptr, ptr %nmismatches284, align 8, !tbaa !41
  %450 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %451 = load i32, ptr %nmismatches_indel, align 4, !tbaa !12
  %call285 = call ptr @Intlistpool_push(ptr noundef %449, ptr noundef %450, i32 noundef %451)
  %452 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches286 = getelementptr inbounds %struct.Path_T, ptr %452, i32 0, i32 19
  store ptr %call285, ptr %nmismatches286, align 8, !tbaa !41
  %453 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches287 = getelementptr inbounds %struct.Path_T, ptr %453, i32 0, i32 20
  %454 = load ptr, ptr %ref_nmismatches287, align 8, !tbaa !42
  %455 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %456 = load i32, ptr %nmismatches_indel, align 4, !tbaa !12
  %call288 = call ptr @Intlistpool_push(ptr noundef %454, ptr noundef %455, i32 noundef %456)
  %457 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches289 = getelementptr inbounds %struct.Path_T, ptr %457, i32 0, i32 20
  store ptr %call288, ptr %ref_nmismatches289, align 8, !tbaa !42
  %458 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches290 = getelementptr inbounds %struct.Path_T, ptr %458, i32 0, i32 19
  %459 = load ptr, ptr %nmismatches290, align 8, !tbaa !41
  %460 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %461 = load i32, ptr %nmismatches_j, align 4, !tbaa !12
  %call291 = call ptr @Intlistpool_push(ptr noundef %459, ptr noundef %460, i32 noundef %461)
  %462 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches292 = getelementptr inbounds %struct.Path_T, ptr %462, i32 0, i32 19
  store ptr %call291, ptr %nmismatches292, align 8, !tbaa !41
  %463 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches293 = getelementptr inbounds %struct.Path_T, ptr %463, i32 0, i32 20
  %464 = load ptr, ptr %ref_nmismatches293, align 8, !tbaa !42
  %465 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %466 = load i32, ptr %ref_nmismatches_j, align 4, !tbaa !12
  %call294 = call ptr @Intlistpool_push(ptr noundef %464, ptr noundef %465, i32 noundef %466)
  %467 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches295 = getelementptr inbounds %struct.Path_T, ptr %467, i32 0, i32 20
  store ptr %call294, ptr %ref_nmismatches295, align 8, !tbaa !42
  %468 = load ptr, ptr %newpath, align 8, !tbaa !5
  %univdiagonals296 = getelementptr inbounds %struct.Path_T, ptr %468, i32 0, i32 18
  %469 = load ptr, ptr %univdiagonals296, align 8, !tbaa !36
  %470 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %471 = load i32, ptr %middle_univdiagonal, align 4, !tbaa !12
  %call297 = call ptr @Uintlistpool_push(ptr noundef %469, ptr noundef %470, i32 noundef %471)
  %472 = load ptr, ptr %newpath, align 8, !tbaa !5
  %univdiagonals298 = getelementptr inbounds %struct.Path_T, ptr %472, i32 0, i32 18
  store ptr %call297, ptr %univdiagonals298, align 8, !tbaa !36
  %473 = load ptr, ptr %newpath, align 8, !tbaa !5
  %univdiagonals299 = getelementptr inbounds %struct.Path_T, ptr %473, i32 0, i32 18
  %474 = load ptr, ptr %univdiagonals299, align 8, !tbaa !36
  %475 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %476 = load i32, ptr %high_univdiagonal.addr, align 4, !tbaa !12
  %call300 = call ptr @Uintlistpool_push(ptr noundef %474, ptr noundef %475, i32 noundef %476)
  %477 = load ptr, ptr %newpath, align 8, !tbaa !5
  %univdiagonals301 = getelementptr inbounds %struct.Path_T, ptr %477, i32 0, i32 18
  store ptr %call300, ptr %univdiagonals301, align 8, !tbaa !36
  br label %if.end302

if.end302:                                        ; preds = %if.end281, %if.end229
  br label %if.end303

if.end303:                                        ; preds = %if.end302, %if.then183
  br label %if.end304

if.end304:                                        ; preds = %if.end303, %if.end180
  br label %if.end475

if.else305:                                       ; preds = %if.else132
  %478 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %479 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %480 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %481 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %482 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %483 = load ptr, ptr %vectorpool.addr, align 8, !tbaa !5
  %call306 = call ptr @Path_copy_3(ptr noundef %478, i8 noundef zeroext 0, i32 noundef 0, double noundef 0.000000e+00, ptr noundef %479, ptr noundef %480, ptr noundef %481, ptr noundef %482, ptr noundef %483)
  store ptr %call306, ptr %newpath, align 8, !tbaa !5
  %484 = load i32, ptr %univdiagonal, align 4, !tbaa !12
  %485 = load i32, ptr %high_univdiagonal.addr, align 4, !tbaa !12
  %486 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %487 = load i8, ptr %plusp.addr, align 1, !tbaa !14
  %488 = load i32, ptr %chroffset.addr, align 4, !tbaa !12
  %489 = load i32, ptr %qstart, align 4, !tbaa !12
  %490 = load i32, ptr %high_qend.addr, align 4, !tbaa !12
  %491 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %492 = load ptr, ptr %indelinfo.addr, align 8, !tbaa !5
  %493 = load ptr, ptr %spliceinfo.addr, align 8, !tbaa !5
  %494 = load ptr, ptr %knownsplicing.addr, align 8, !tbaa !5
  %495 = load i32, ptr %genestrand.addr, align 4, !tbaa !12
  %496 = load i32, ptr %nmismatches_allowed.addr, align 4, !tbaa !12
  %497 = load i32, ptr %max_insertionlen.addr, align 4, !tbaa !12
  %498 = load i32, ptr %max_deletionlen.addr, align 4, !tbaa !12
  %499 = load i8, ptr %salvagep.addr, align 1, !tbaa !14
  %call307 = call i32 @Splice_resolve(ptr noundef %middle_univdiagonal, ptr noundef %splice_qpos_i, ptr noundef %splice_qpos_j, ptr noundef %nindels, ptr noundef %indel_pos, ptr noundef %nmismatches_i, ptr noundef %nmismatches_middle, ptr noundef %nmismatches_j, ptr noundef %nmismatches_indel, ptr noundef %ref_nmismatches_i, ptr noundef %ref_nmismatches_middle, ptr noundef %ref_nmismatches_j, ptr noundef %ref_nmismatches_indel, ptr noundef %donor_prob, ptr noundef %acceptor_prob, i32 noundef %484, i32 noundef %485, ptr noundef %486, i8 noundef zeroext %487, i32 noundef %488, i32 noundef %489, i32 noundef %490, i32 noundef %491, ptr noundef %492, ptr noundef %493, ptr noundef %494, i8 noundef zeroext 0, i32 noundef %495, i32 noundef %496, i32 noundef %497, i32 noundef %498, i8 noundef zeroext %499, i8 noundef zeroext 1)
  store i32 %call307, ptr %splice_qpos, align 4, !tbaa !12
  %cmp308 = icmp slt i32 %call307, 0
  br i1 %cmp308, label %if.then309, label %if.else351

if.then309:                                       ; preds = %if.else305
  %500 = load i32, ptr %middle_univdiagonal, align 4, !tbaa !12
  %cmp310 = icmp ne i32 %500, 0
  br i1 %cmp310, label %if.then311, label %if.else349

if.then311:                                       ; preds = %if.then309
  %501 = load i32, ptr %high_univdiagonal.addr, align 4, !tbaa !12
  %502 = load i32, ptr %middle_univdiagonal, align 4, !tbaa !12
  %sub312 = sub i32 %501, %502
  store i32 %sub312, ptr %splice_distance_j, align 4, !tbaa !12
  %503 = load i32, ptr %middle_univdiagonal, align 4, !tbaa !12
  %504 = load i32, ptr %univdiagonal, align 4, !tbaa !12
  %sub313 = sub i32 %503, %504
  store i32 %sub313, ptr %splice_distance_i, align 4, !tbaa !12
  %505 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints314 = getelementptr inbounds %struct.Path_T, ptr %505, i32 0, i32 17
  %506 = load ptr, ptr %endpoints314, align 8, !tbaa !40
  %507 = load i32, ptr %splice_qpos_i, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %506, i32 noundef %507)
  %508 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints315 = getelementptr inbounds %struct.Path_T, ptr %508, i32 0, i32 17
  %509 = load ptr, ptr %endpoints315, align 8, !tbaa !40
  %510 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %511 = load i32, ptr %splice_qpos_j, align 4, !tbaa !12
  %call316 = call ptr @Intlistpool_push(ptr noundef %509, ptr noundef %510, i32 noundef %511)
  %512 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints317 = getelementptr inbounds %struct.Path_T, ptr %512, i32 0, i32 17
  store ptr %call316, ptr %endpoints317, align 8, !tbaa !40
  %513 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints318 = getelementptr inbounds %struct.Path_T, ptr %513, i32 0, i32 17
  %514 = load ptr, ptr %endpoints318, align 8, !tbaa !40
  %515 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %516 = load i32, ptr %high_qend.addr, align 4, !tbaa !12
  %call319 = call ptr @Intlistpool_push(ptr noundef %514, ptr noundef %515, i32 noundef %516)
  %517 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints320 = getelementptr inbounds %struct.Path_T, ptr %517, i32 0, i32 17
  store ptr %call319, ptr %endpoints320, align 8, !tbaa !40
  %518 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions321 = getelementptr inbounds %struct.Path_T, ptr %518, i32 0, i32 21
  %519 = load ptr, ptr %junctions321, align 8, !tbaa !43
  %520 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %521 = load i32, ptr %splice_distance_i, align 4, !tbaa !12
  %522 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %call322 = call ptr @Junction_new_splice(i32 noundef %521, i32 noundef 1, double noundef 1.000000e+00, double noundef 1.000000e+00, ptr noundef %522)
  %call323 = call ptr @Listpool_push(ptr noundef %519, ptr noundef %520, ptr noundef %call322)
  %523 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions324 = getelementptr inbounds %struct.Path_T, ptr %523, i32 0, i32 21
  store ptr %call323, ptr %junctions324, align 8, !tbaa !43
  %524 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions325 = getelementptr inbounds %struct.Path_T, ptr %524, i32 0, i32 21
  %525 = load ptr, ptr %junctions325, align 8, !tbaa !43
  %526 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %527 = load i32, ptr %splice_distance_j, align 4, !tbaa !12
  %528 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %call326 = call ptr @Junction_new_splice(i32 noundef %527, i32 noundef 1, double noundef 1.000000e+00, double noundef 1.000000e+00, ptr noundef %528)
  %call327 = call ptr @Listpool_push(ptr noundef %525, ptr noundef %526, ptr noundef %call326)
  %529 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions328 = getelementptr inbounds %struct.Path_T, ptr %529, i32 0, i32 21
  store ptr %call327, ptr %junctions328, align 8, !tbaa !43
  %530 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches329 = getelementptr inbounds %struct.Path_T, ptr %530, i32 0, i32 19
  %531 = load ptr, ptr %nmismatches329, align 8, !tbaa !41
  %532 = load i32, ptr %nmismatches_i, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %531, i32 noundef %532)
  %533 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches330 = getelementptr inbounds %struct.Path_T, ptr %533, i32 0, i32 20
  %534 = load ptr, ptr %ref_nmismatches330, align 8, !tbaa !42
  %535 = load i32, ptr %ref_nmismatches_i, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %534, i32 noundef %535)
  %536 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches331 = getelementptr inbounds %struct.Path_T, ptr %536, i32 0, i32 19
  %537 = load ptr, ptr %nmismatches331, align 8, !tbaa !41
  %538 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %539 = load i32, ptr %nmismatches_middle, align 4, !tbaa !12
  %call332 = call ptr @Intlistpool_push(ptr noundef %537, ptr noundef %538, i32 noundef %539)
  %540 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches333 = getelementptr inbounds %struct.Path_T, ptr %540, i32 0, i32 19
  store ptr %call332, ptr %nmismatches333, align 8, !tbaa !41
  %541 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches334 = getelementptr inbounds %struct.Path_T, ptr %541, i32 0, i32 20
  %542 = load ptr, ptr %ref_nmismatches334, align 8, !tbaa !42
  %543 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %544 = load i32, ptr %ref_nmismatches_middle, align 4, !tbaa !12
  %call335 = call ptr @Intlistpool_push(ptr noundef %542, ptr noundef %543, i32 noundef %544)
  %545 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches336 = getelementptr inbounds %struct.Path_T, ptr %545, i32 0, i32 20
  store ptr %call335, ptr %ref_nmismatches336, align 8, !tbaa !42
  %546 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches337 = getelementptr inbounds %struct.Path_T, ptr %546, i32 0, i32 19
  %547 = load ptr, ptr %nmismatches337, align 8, !tbaa !41
  %548 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %549 = load i32, ptr %nmismatches_j, align 4, !tbaa !12
  %call338 = call ptr @Intlistpool_push(ptr noundef %547, ptr noundef %548, i32 noundef %549)
  %550 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches339 = getelementptr inbounds %struct.Path_T, ptr %550, i32 0, i32 19
  store ptr %call338, ptr %nmismatches339, align 8, !tbaa !41
  %551 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches340 = getelementptr inbounds %struct.Path_T, ptr %551, i32 0, i32 20
  %552 = load ptr, ptr %ref_nmismatches340, align 8, !tbaa !42
  %553 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %554 = load i32, ptr %ref_nmismatches_j, align 4, !tbaa !12
  %call341 = call ptr @Intlistpool_push(ptr noundef %552, ptr noundef %553, i32 noundef %554)
  %555 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches342 = getelementptr inbounds %struct.Path_T, ptr %555, i32 0, i32 20
  store ptr %call341, ptr %ref_nmismatches342, align 8, !tbaa !42
  %556 = load ptr, ptr %newpath, align 8, !tbaa !5
  %univdiagonals343 = getelementptr inbounds %struct.Path_T, ptr %556, i32 0, i32 18
  %557 = load ptr, ptr %univdiagonals343, align 8, !tbaa !36
  %558 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %559 = load i32, ptr %middle_univdiagonal, align 4, !tbaa !12
  %call344 = call ptr @Uintlistpool_push(ptr noundef %557, ptr noundef %558, i32 noundef %559)
  %560 = load ptr, ptr %newpath, align 8, !tbaa !5
  %univdiagonals345 = getelementptr inbounds %struct.Path_T, ptr %560, i32 0, i32 18
  store ptr %call344, ptr %univdiagonals345, align 8, !tbaa !36
  %561 = load ptr, ptr %newpath, align 8, !tbaa !5
  %univdiagonals346 = getelementptr inbounds %struct.Path_T, ptr %561, i32 0, i32 18
  %562 = load ptr, ptr %univdiagonals346, align 8, !tbaa !36
  %563 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %564 = load i32, ptr %high_univdiagonal.addr, align 4, !tbaa !12
  %call347 = call ptr @Uintlistpool_push(ptr noundef %562, ptr noundef %563, i32 noundef %564)
  %565 = load ptr, ptr %newpath, align 8, !tbaa !5
  %univdiagonals348 = getelementptr inbounds %struct.Path_T, ptr %565, i32 0, i32 18
  store ptr %call347, ptr %univdiagonals348, align 8, !tbaa !36
  br label %if.end350

if.else349:                                       ; preds = %if.then309
  %566 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %567 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %568 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %569 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %570 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  call void @Path_free(ptr noundef %newpath, ptr noundef %566, ptr noundef %567, ptr noundef %568, ptr noundef %569, ptr noundef %570)
  store ptr null, ptr %newpath, align 8, !tbaa !5
  br label %if.end350

if.end350:                                        ; preds = %if.else349, %if.then311
  br label %if.end474

if.else351:                                       ; preds = %if.else305
  %571 = load i32, ptr %nindels, align 4, !tbaa !12
  %cmp352 = icmp eq i32 %571, 0
  br i1 %cmp352, label %if.then353, label %if.else374

if.then353:                                       ; preds = %if.else351
  %572 = load i32, ptr %high_univdiagonal.addr, align 4, !tbaa !12
  %573 = load i32, ptr %univdiagonal, align 4, !tbaa !12
  %sub354 = sub i32 %572, %573
  store i32 %sub354, ptr %splice_distance, align 4, !tbaa !12
  %574 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints355 = getelementptr inbounds %struct.Path_T, ptr %574, i32 0, i32 17
  %575 = load ptr, ptr %endpoints355, align 8, !tbaa !40
  %576 = load i32, ptr %splice_qpos, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %575, i32 noundef %576)
  %577 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints356 = getelementptr inbounds %struct.Path_T, ptr %577, i32 0, i32 17
  %578 = load ptr, ptr %endpoints356, align 8, !tbaa !40
  %579 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %580 = load i32, ptr %high_qend.addr, align 4, !tbaa !12
  %call357 = call ptr @Intlistpool_push(ptr noundef %578, ptr noundef %579, i32 noundef %580)
  %581 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints358 = getelementptr inbounds %struct.Path_T, ptr %581, i32 0, i32 17
  store ptr %call357, ptr %endpoints358, align 8, !tbaa !40
  %582 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions359 = getelementptr inbounds %struct.Path_T, ptr %582, i32 0, i32 21
  %583 = load ptr, ptr %junctions359, align 8, !tbaa !43
  %584 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %585 = load i32, ptr %splice_distance, align 4, !tbaa !12
  %586 = load double, ptr %donor_prob, align 8, !tbaa !44
  %587 = load double, ptr %acceptor_prob, align 8, !tbaa !44
  %588 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %call360 = call ptr @Junction_new_splice(i32 noundef %585, i32 noundef 1, double noundef %586, double noundef %587, ptr noundef %588)
  %call361 = call ptr @Listpool_push(ptr noundef %583, ptr noundef %584, ptr noundef %call360)
  %589 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions362 = getelementptr inbounds %struct.Path_T, ptr %589, i32 0, i32 21
  store ptr %call361, ptr %junctions362, align 8, !tbaa !43
  %590 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches363 = getelementptr inbounds %struct.Path_T, ptr %590, i32 0, i32 19
  %591 = load ptr, ptr %nmismatches363, align 8, !tbaa !41
  %592 = load i32, ptr %nmismatches_i, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %591, i32 noundef %592)
  %593 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches364 = getelementptr inbounds %struct.Path_T, ptr %593, i32 0, i32 20
  %594 = load ptr, ptr %ref_nmismatches364, align 8, !tbaa !42
  %595 = load i32, ptr %ref_nmismatches_i, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %594, i32 noundef %595)
  %596 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches365 = getelementptr inbounds %struct.Path_T, ptr %596, i32 0, i32 19
  %597 = load ptr, ptr %nmismatches365, align 8, !tbaa !41
  %598 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %599 = load i32, ptr %nmismatches_j, align 4, !tbaa !12
  %call366 = call ptr @Intlistpool_push(ptr noundef %597, ptr noundef %598, i32 noundef %599)
  %600 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches367 = getelementptr inbounds %struct.Path_T, ptr %600, i32 0, i32 19
  store ptr %call366, ptr %nmismatches367, align 8, !tbaa !41
  %601 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches368 = getelementptr inbounds %struct.Path_T, ptr %601, i32 0, i32 20
  %602 = load ptr, ptr %ref_nmismatches368, align 8, !tbaa !42
  %603 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %604 = load i32, ptr %ref_nmismatches_j, align 4, !tbaa !12
  %call369 = call ptr @Intlistpool_push(ptr noundef %602, ptr noundef %603, i32 noundef %604)
  %605 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches370 = getelementptr inbounds %struct.Path_T, ptr %605, i32 0, i32 20
  store ptr %call369, ptr %ref_nmismatches370, align 8, !tbaa !42
  %606 = load ptr, ptr %newpath, align 8, !tbaa !5
  %univdiagonals371 = getelementptr inbounds %struct.Path_T, ptr %606, i32 0, i32 18
  %607 = load ptr, ptr %univdiagonals371, align 8, !tbaa !36
  %608 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %609 = load i32, ptr %high_univdiagonal.addr, align 4, !tbaa !12
  %call372 = call ptr @Uintlistpool_push(ptr noundef %607, ptr noundef %608, i32 noundef %609)
  %610 = load ptr, ptr %newpath, align 8, !tbaa !5
  %univdiagonals373 = getelementptr inbounds %struct.Path_T, ptr %610, i32 0, i32 18
  store ptr %call372, ptr %univdiagonals373, align 8, !tbaa !36
  br label %if.end473

if.else374:                                       ; preds = %if.else351
  %611 = load i32, ptr %indel_pos, align 4, !tbaa !12
  %612 = load i32, ptr %splice_qpos, align 4, !tbaa !12
  %cmp375 = icmp slt i32 %611, %612
  br i1 %cmp375, label %if.then376, label %if.else424

if.then376:                                       ; preds = %if.else374
  %613 = load i32, ptr %univdiagonal, align 4, !tbaa !12
  %614 = load i32, ptr %nindels, align 4, !tbaa !12
  %add377 = add i32 %613, %614
  store i32 %add377, ptr %middle_univdiagonal, align 4, !tbaa !12
  %615 = load i32, ptr %high_univdiagonal.addr, align 4, !tbaa !12
  %616 = load i32, ptr %middle_univdiagonal, align 4, !tbaa !12
  %sub378 = sub i32 %615, %616
  store i32 %sub378, ptr %splice_distance, align 4, !tbaa !12
  %617 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints379 = getelementptr inbounds %struct.Path_T, ptr %617, i32 0, i32 17
  %618 = load ptr, ptr %endpoints379, align 8, !tbaa !40
  %619 = load i32, ptr %indel_pos, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %618, i32 noundef %619)
  %620 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints380 = getelementptr inbounds %struct.Path_T, ptr %620, i32 0, i32 17
  %621 = load ptr, ptr %endpoints380, align 8, !tbaa !40
  %622 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %623 = load i32, ptr %splice_qpos, align 4, !tbaa !12
  %call381 = call ptr @Intlistpool_push(ptr noundef %621, ptr noundef %622, i32 noundef %623)
  %624 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints382 = getelementptr inbounds %struct.Path_T, ptr %624, i32 0, i32 17
  store ptr %call381, ptr %endpoints382, align 8, !tbaa !40
  %625 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints383 = getelementptr inbounds %struct.Path_T, ptr %625, i32 0, i32 17
  %626 = load ptr, ptr %endpoints383, align 8, !tbaa !40
  %627 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %628 = load i32, ptr %high_qend.addr, align 4, !tbaa !12
  %call384 = call ptr @Intlistpool_push(ptr noundef %626, ptr noundef %627, i32 noundef %628)
  %629 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints385 = getelementptr inbounds %struct.Path_T, ptr %629, i32 0, i32 17
  store ptr %call384, ptr %endpoints385, align 8, !tbaa !40
  %630 = load i32, ptr %nindels, align 4, !tbaa !12
  %cmp386 = icmp slt i32 %630, 0
  br i1 %cmp386, label %if.then387, label %if.else393

if.then387:                                       ; preds = %if.then376
  %631 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions388 = getelementptr inbounds %struct.Path_T, ptr %631, i32 0, i32 21
  %632 = load ptr, ptr %junctions388, align 8, !tbaa !43
  %633 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %634 = load i32, ptr %nindels, align 4, !tbaa !12
  %sub389 = sub nsw i32 0, %634
  %635 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %call390 = call ptr @Junction_new_insertion(i32 noundef %sub389, ptr noundef %635)
  %call391 = call ptr @Listpool_push(ptr noundef %632, ptr noundef %633, ptr noundef %call390)
  %636 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions392 = getelementptr inbounds %struct.Path_T, ptr %636, i32 0, i32 21
  store ptr %call391, ptr %junctions392, align 8, !tbaa !43
  br label %if.end399

if.else393:                                       ; preds = %if.then376
  %637 = load i32, ptr %left, align 4, !tbaa !12
  %638 = load i32, ptr %indel_pos, align 4, !tbaa !12
  %add394 = add i32 %637, %638
  store i32 %add394, ptr %deletionpos, align 4, !tbaa !12
  %639 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions395 = getelementptr inbounds %struct.Path_T, ptr %639, i32 0, i32 21
  %640 = load ptr, ptr %junctions395, align 8, !tbaa !43
  %641 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %642 = load i32, ptr %nindels, align 4, !tbaa !12
  %643 = load i32, ptr %deletionpos, align 4, !tbaa !12
  %644 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %call396 = call ptr @Junction_new_deletion(i32 noundef %642, i32 noundef %643, ptr noundef %644)
  %call397 = call ptr @Listpool_push(ptr noundef %640, ptr noundef %641, ptr noundef %call396)
  %645 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions398 = getelementptr inbounds %struct.Path_T, ptr %645, i32 0, i32 21
  store ptr %call397, ptr %junctions398, align 8, !tbaa !43
  br label %if.end399

if.end399:                                        ; preds = %if.else393, %if.then387
  %646 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions400 = getelementptr inbounds %struct.Path_T, ptr %646, i32 0, i32 21
  %647 = load ptr, ptr %junctions400, align 8, !tbaa !43
  %648 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %649 = load i32, ptr %splice_distance, align 4, !tbaa !12
  %650 = load double, ptr %donor_prob, align 8, !tbaa !44
  %651 = load double, ptr %acceptor_prob, align 8, !tbaa !44
  %652 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %call401 = call ptr @Junction_new_splice(i32 noundef %649, i32 noundef 1, double noundef %650, double noundef %651, ptr noundef %652)
  %call402 = call ptr @Listpool_push(ptr noundef %647, ptr noundef %648, ptr noundef %call401)
  %653 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions403 = getelementptr inbounds %struct.Path_T, ptr %653, i32 0, i32 21
  store ptr %call402, ptr %junctions403, align 8, !tbaa !43
  %654 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches404 = getelementptr inbounds %struct.Path_T, ptr %654, i32 0, i32 19
  %655 = load ptr, ptr %nmismatches404, align 8, !tbaa !41
  %656 = load i32, ptr %nmismatches_i, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %655, i32 noundef %656)
  %657 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches405 = getelementptr inbounds %struct.Path_T, ptr %657, i32 0, i32 20
  %658 = load ptr, ptr %ref_nmismatches405, align 8, !tbaa !42
  %659 = load i32, ptr %nmismatches_i, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %658, i32 noundef %659)
  %660 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches406 = getelementptr inbounds %struct.Path_T, ptr %660, i32 0, i32 19
  %661 = load ptr, ptr %nmismatches406, align 8, !tbaa !41
  %662 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %663 = load i32, ptr %nmismatches_indel, align 4, !tbaa !12
  %call407 = call ptr @Intlistpool_push(ptr noundef %661, ptr noundef %662, i32 noundef %663)
  %664 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches408 = getelementptr inbounds %struct.Path_T, ptr %664, i32 0, i32 19
  store ptr %call407, ptr %nmismatches408, align 8, !tbaa !41
  %665 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches409 = getelementptr inbounds %struct.Path_T, ptr %665, i32 0, i32 20
  %666 = load ptr, ptr %ref_nmismatches409, align 8, !tbaa !42
  %667 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %668 = load i32, ptr %ref_nmismatches_indel, align 4, !tbaa !12
  %call410 = call ptr @Intlistpool_push(ptr noundef %666, ptr noundef %667, i32 noundef %668)
  %669 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches411 = getelementptr inbounds %struct.Path_T, ptr %669, i32 0, i32 20
  store ptr %call410, ptr %ref_nmismatches411, align 8, !tbaa !42
  %670 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches412 = getelementptr inbounds %struct.Path_T, ptr %670, i32 0, i32 19
  %671 = load ptr, ptr %nmismatches412, align 8, !tbaa !41
  %672 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %673 = load i32, ptr %nmismatches_j, align 4, !tbaa !12
  %call413 = call ptr @Intlistpool_push(ptr noundef %671, ptr noundef %672, i32 noundef %673)
  %674 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches414 = getelementptr inbounds %struct.Path_T, ptr %674, i32 0, i32 19
  store ptr %call413, ptr %nmismatches414, align 8, !tbaa !41
  %675 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches415 = getelementptr inbounds %struct.Path_T, ptr %675, i32 0, i32 20
  %676 = load ptr, ptr %ref_nmismatches415, align 8, !tbaa !42
  %677 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %678 = load i32, ptr %ref_nmismatches_j, align 4, !tbaa !12
  %call416 = call ptr @Intlistpool_push(ptr noundef %676, ptr noundef %677, i32 noundef %678)
  %679 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches417 = getelementptr inbounds %struct.Path_T, ptr %679, i32 0, i32 20
  store ptr %call416, ptr %ref_nmismatches417, align 8, !tbaa !42
  %680 = load ptr, ptr %newpath, align 8, !tbaa !5
  %univdiagonals418 = getelementptr inbounds %struct.Path_T, ptr %680, i32 0, i32 18
  %681 = load ptr, ptr %univdiagonals418, align 8, !tbaa !36
  %682 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %683 = load i32, ptr %middle_univdiagonal, align 4, !tbaa !12
  %call419 = call ptr @Uintlistpool_push(ptr noundef %681, ptr noundef %682, i32 noundef %683)
  %684 = load ptr, ptr %newpath, align 8, !tbaa !5
  %univdiagonals420 = getelementptr inbounds %struct.Path_T, ptr %684, i32 0, i32 18
  store ptr %call419, ptr %univdiagonals420, align 8, !tbaa !36
  %685 = load ptr, ptr %newpath, align 8, !tbaa !5
  %univdiagonals421 = getelementptr inbounds %struct.Path_T, ptr %685, i32 0, i32 18
  %686 = load ptr, ptr %univdiagonals421, align 8, !tbaa !36
  %687 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %688 = load i32, ptr %high_univdiagonal.addr, align 4, !tbaa !12
  %call422 = call ptr @Uintlistpool_push(ptr noundef %686, ptr noundef %687, i32 noundef %688)
  %689 = load ptr, ptr %newpath, align 8, !tbaa !5
  %univdiagonals423 = getelementptr inbounds %struct.Path_T, ptr %689, i32 0, i32 18
  store ptr %call422, ptr %univdiagonals423, align 8, !tbaa !36
  br label %if.end472

if.else424:                                       ; preds = %if.else374
  %690 = load i32, ptr %high_univdiagonal.addr, align 4, !tbaa !12
  %691 = load i32, ptr %nindels, align 4, !tbaa !12
  %sub425 = sub i32 %690, %691
  store i32 %sub425, ptr %middle_univdiagonal, align 4, !tbaa !12
  %692 = load i32, ptr %middle_univdiagonal, align 4, !tbaa !12
  %693 = load i32, ptr %univdiagonal, align 4, !tbaa !12
  %sub426 = sub i32 %692, %693
  store i32 %sub426, ptr %splice_distance, align 4, !tbaa !12
  %694 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints427 = getelementptr inbounds %struct.Path_T, ptr %694, i32 0, i32 17
  %695 = load ptr, ptr %endpoints427, align 8, !tbaa !40
  %696 = load i32, ptr %splice_qpos, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %695, i32 noundef %696)
  %697 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints428 = getelementptr inbounds %struct.Path_T, ptr %697, i32 0, i32 17
  %698 = load ptr, ptr %endpoints428, align 8, !tbaa !40
  %699 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %700 = load i32, ptr %indel_pos, align 4, !tbaa !12
  %call429 = call ptr @Intlistpool_push(ptr noundef %698, ptr noundef %699, i32 noundef %700)
  %701 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints430 = getelementptr inbounds %struct.Path_T, ptr %701, i32 0, i32 17
  store ptr %call429, ptr %endpoints430, align 8, !tbaa !40
  %702 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints431 = getelementptr inbounds %struct.Path_T, ptr %702, i32 0, i32 17
  %703 = load ptr, ptr %endpoints431, align 8, !tbaa !40
  %704 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %705 = load i32, ptr %high_qend.addr, align 4, !tbaa !12
  %call432 = call ptr @Intlistpool_push(ptr noundef %703, ptr noundef %704, i32 noundef %705)
  %706 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints433 = getelementptr inbounds %struct.Path_T, ptr %706, i32 0, i32 17
  store ptr %call432, ptr %endpoints433, align 8, !tbaa !40
  %707 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions434 = getelementptr inbounds %struct.Path_T, ptr %707, i32 0, i32 21
  %708 = load ptr, ptr %junctions434, align 8, !tbaa !43
  %709 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %710 = load i32, ptr %splice_distance, align 4, !tbaa !12
  %711 = load double, ptr %donor_prob, align 8, !tbaa !44
  %712 = load double, ptr %acceptor_prob, align 8, !tbaa !44
  %713 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %call435 = call ptr @Junction_new_splice(i32 noundef %710, i32 noundef 1, double noundef %711, double noundef %712, ptr noundef %713)
  %call436 = call ptr @Listpool_push(ptr noundef %708, ptr noundef %709, ptr noundef %call435)
  %714 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions437 = getelementptr inbounds %struct.Path_T, ptr %714, i32 0, i32 21
  store ptr %call436, ptr %junctions437, align 8, !tbaa !43
  %715 = load i32, ptr %nindels, align 4, !tbaa !12
  %cmp438 = icmp slt i32 %715, 0
  br i1 %cmp438, label %if.then439, label %if.else445

if.then439:                                       ; preds = %if.else424
  %716 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions440 = getelementptr inbounds %struct.Path_T, ptr %716, i32 0, i32 21
  %717 = load ptr, ptr %junctions440, align 8, !tbaa !43
  %718 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %719 = load i32, ptr %nindels, align 4, !tbaa !12
  %sub441 = sub nsw i32 0, %719
  %720 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %call442 = call ptr @Junction_new_insertion(i32 noundef %sub441, ptr noundef %720)
  %call443 = call ptr @Listpool_push(ptr noundef %717, ptr noundef %718, ptr noundef %call442)
  %721 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions444 = getelementptr inbounds %struct.Path_T, ptr %721, i32 0, i32 21
  store ptr %call443, ptr %junctions444, align 8, !tbaa !43
  br label %if.end451

if.else445:                                       ; preds = %if.else424
  %722 = load i32, ptr %left, align 4, !tbaa !12
  %723 = load i32, ptr %indel_pos, align 4, !tbaa !12
  %add446 = add i32 %722, %723
  store i32 %add446, ptr %deletionpos, align 4, !tbaa !12
  %724 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions447 = getelementptr inbounds %struct.Path_T, ptr %724, i32 0, i32 21
  %725 = load ptr, ptr %junctions447, align 8, !tbaa !43
  %726 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %727 = load i32, ptr %nindels, align 4, !tbaa !12
  %728 = load i32, ptr %deletionpos, align 4, !tbaa !12
  %729 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %call448 = call ptr @Junction_new_deletion(i32 noundef %727, i32 noundef %728, ptr noundef %729)
  %call449 = call ptr @Listpool_push(ptr noundef %725, ptr noundef %726, ptr noundef %call448)
  %730 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions450 = getelementptr inbounds %struct.Path_T, ptr %730, i32 0, i32 21
  store ptr %call449, ptr %junctions450, align 8, !tbaa !43
  br label %if.end451

if.end451:                                        ; preds = %if.else445, %if.then439
  %731 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches452 = getelementptr inbounds %struct.Path_T, ptr %731, i32 0, i32 19
  %732 = load ptr, ptr %nmismatches452, align 8, !tbaa !41
  %733 = load i32, ptr %nmismatches_i, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %732, i32 noundef %733)
  %734 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches453 = getelementptr inbounds %struct.Path_T, ptr %734, i32 0, i32 20
  %735 = load ptr, ptr %ref_nmismatches453, align 8, !tbaa !42
  %736 = load i32, ptr %ref_nmismatches_i, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %735, i32 noundef %736)
  %737 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches454 = getelementptr inbounds %struct.Path_T, ptr %737, i32 0, i32 19
  %738 = load ptr, ptr %nmismatches454, align 8, !tbaa !41
  %739 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %740 = load i32, ptr %nmismatches_indel, align 4, !tbaa !12
  %call455 = call ptr @Intlistpool_push(ptr noundef %738, ptr noundef %739, i32 noundef %740)
  %741 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches456 = getelementptr inbounds %struct.Path_T, ptr %741, i32 0, i32 19
  store ptr %call455, ptr %nmismatches456, align 8, !tbaa !41
  %742 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches457 = getelementptr inbounds %struct.Path_T, ptr %742, i32 0, i32 20
  %743 = load ptr, ptr %ref_nmismatches457, align 8, !tbaa !42
  %744 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %745 = load i32, ptr %nmismatches_indel, align 4, !tbaa !12
  %call458 = call ptr @Intlistpool_push(ptr noundef %743, ptr noundef %744, i32 noundef %745)
  %746 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches459 = getelementptr inbounds %struct.Path_T, ptr %746, i32 0, i32 20
  store ptr %call458, ptr %ref_nmismatches459, align 8, !tbaa !42
  %747 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches460 = getelementptr inbounds %struct.Path_T, ptr %747, i32 0, i32 19
  %748 = load ptr, ptr %nmismatches460, align 8, !tbaa !41
  %749 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %750 = load i32, ptr %nmismatches_j, align 4, !tbaa !12
  %call461 = call ptr @Intlistpool_push(ptr noundef %748, ptr noundef %749, i32 noundef %750)
  %751 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches462 = getelementptr inbounds %struct.Path_T, ptr %751, i32 0, i32 19
  store ptr %call461, ptr %nmismatches462, align 8, !tbaa !41
  %752 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches463 = getelementptr inbounds %struct.Path_T, ptr %752, i32 0, i32 20
  %753 = load ptr, ptr %ref_nmismatches463, align 8, !tbaa !42
  %754 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %755 = load i32, ptr %ref_nmismatches_j, align 4, !tbaa !12
  %call464 = call ptr @Intlistpool_push(ptr noundef %753, ptr noundef %754, i32 noundef %755)
  %756 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches465 = getelementptr inbounds %struct.Path_T, ptr %756, i32 0, i32 20
  store ptr %call464, ptr %ref_nmismatches465, align 8, !tbaa !42
  %757 = load ptr, ptr %newpath, align 8, !tbaa !5
  %univdiagonals466 = getelementptr inbounds %struct.Path_T, ptr %757, i32 0, i32 18
  %758 = load ptr, ptr %univdiagonals466, align 8, !tbaa !36
  %759 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %760 = load i32, ptr %middle_univdiagonal, align 4, !tbaa !12
  %call467 = call ptr @Uintlistpool_push(ptr noundef %758, ptr noundef %759, i32 noundef %760)
  %761 = load ptr, ptr %newpath, align 8, !tbaa !5
  %univdiagonals468 = getelementptr inbounds %struct.Path_T, ptr %761, i32 0, i32 18
  store ptr %call467, ptr %univdiagonals468, align 8, !tbaa !36
  %762 = load ptr, ptr %newpath, align 8, !tbaa !5
  %univdiagonals469 = getelementptr inbounds %struct.Path_T, ptr %762, i32 0, i32 18
  %763 = load ptr, ptr %univdiagonals469, align 8, !tbaa !36
  %764 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %765 = load i32, ptr %high_univdiagonal.addr, align 4, !tbaa !12
  %call470 = call ptr @Uintlistpool_push(ptr noundef %763, ptr noundef %764, i32 noundef %765)
  %766 = load ptr, ptr %newpath, align 8, !tbaa !5
  %univdiagonals471 = getelementptr inbounds %struct.Path_T, ptr %766, i32 0, i32 18
  store ptr %call470, ptr %univdiagonals471, align 8, !tbaa !36
  br label %if.end472

if.end472:                                        ; preds = %if.end451, %if.end399
  br label %if.end473

if.end473:                                        ; preds = %if.end472, %if.then353
  br label %if.end474

if.end474:                                        ; preds = %if.end473, %if.end350
  br label %if.end475

if.end475:                                        ; preds = %if.end474, %if.end304
  br label %if.end476

if.end476:                                        ; preds = %if.end475, %if.end131
  br label %if.end477

if.end477:                                        ; preds = %if.end476, %if.end84
  br label %if.end478

if.end478:                                        ; preds = %if.end477, %if.then41
  br label %if.end479

if.end479:                                        ; preds = %if.end478, %if.end37
  br label %if.end480

if.end480:                                        ; preds = %if.end479, %if.then11
  %767 = load ptr, ptr %newpath, align 8, !tbaa !5
  store ptr %767, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end480, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ref_nmismatches_middle) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %nmismatches_middle) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %ref_nmismatches) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %nmismatches) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %ref_nmismatches_indel) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %ref_nmismatches_j) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %ref_nmismatches_i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %nmismatches_indel) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %nmismatches_j) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %nmismatches_i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %supportj) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %supporti) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %acceptor_prob) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %donor_prob) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %splice_distance_j) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %splice_distance_i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %splice_distance) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %deletionpos) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %middle_univdiagonal) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %splice_qpos_j) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %splice_qpos_i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %splice_qpos) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %indel_pos) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %nindels) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %ninserts) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %qstart) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %left) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %univdiagonal) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %newpath) #5
  %768 = load ptr, ptr %retval, align 8
  ret ptr %768
}

; Function Attrs: nounwind uwtable
define internal void @compute_qend_local(ptr noundef %unextended_paths, ptr noundef %complete_paths, i32 noundef %depth, ptr noundef %path, ptr noundef %queryptr, i32 noundef %querylength, ptr noundef %mismatch_positions_alloc, ptr noundef %novel_diagonals_alloc, ptr noundef %localdb_alloc, i32 noundef %streamspace_max_alloc, ptr noundef %streamspace_alloc, ptr noundef %streamptr_alloc, ptr noundef %streamsize_alloc, ptr noundef %mergeinfo, ptr noundef %indelinfo, ptr noundef %spliceinfo, ptr noundef %knownsplicing, ptr noundef %knownindels, ptr noundef %query_compress, i32 noundef %chrnum, i32 noundef %chroffset, i32 noundef %chrhigh, ptr noundef %intlistpool, ptr noundef %univcoordlistpool, ptr noundef %listpool, ptr noundef %pathpool, ptr noundef %transcriptpool, ptr noundef %vectorpool, ptr noundef %hitlistpool, ptr noundef %spliceendsgen, i32 noundef %max_insertionlen, i32 noundef %max_deletionlen, i32 noundef %nmismatches_allowed, i32 noundef %overall_end_distance, i8 noundef zeroext %plusp, i32 noundef %genestrand, i32 noundef %try_sensedir, i8 noundef zeroext %innerp, i8 noundef zeroext %salvagep, i32 noundef %pass) #1 {
entry:
  %unextended_paths.addr = alloca ptr, align 8
  %complete_paths.addr = alloca ptr, align 8
  %depth.addr = alloca i32, align 4
  %path.addr = alloca ptr, align 8
  %queryptr.addr = alloca ptr, align 8
  %querylength.addr = alloca i32, align 4
  %mismatch_positions_alloc.addr = alloca ptr, align 8
  %novel_diagonals_alloc.addr = alloca ptr, align 8
  %localdb_alloc.addr = alloca ptr, align 8
  %streamspace_max_alloc.addr = alloca i32, align 4
  %streamspace_alloc.addr = alloca ptr, align 8
  %streamptr_alloc.addr = alloca ptr, align 8
  %streamsize_alloc.addr = alloca ptr, align 8
  %mergeinfo.addr = alloca ptr, align 8
  %indelinfo.addr = alloca ptr, align 8
  %spliceinfo.addr = alloca ptr, align 8
  %knownsplicing.addr = alloca ptr, align 8
  %knownindels.addr = alloca ptr, align 8
  %query_compress.addr = alloca ptr, align 8
  %chrnum.addr = alloca i32, align 4
  %chroffset.addr = alloca i32, align 4
  %chrhigh.addr = alloca i32, align 4
  %intlistpool.addr = alloca ptr, align 8
  %univcoordlistpool.addr = alloca ptr, align 8
  %listpool.addr = alloca ptr, align 8
  %pathpool.addr = alloca ptr, align 8
  %transcriptpool.addr = alloca ptr, align 8
  %vectorpool.addr = alloca ptr, align 8
  %hitlistpool.addr = alloca ptr, align 8
  %spliceendsgen.addr = alloca ptr, align 8
  %max_insertionlen.addr = alloca i32, align 4
  %max_deletionlen.addr = alloca i32, align 4
  %nmismatches_allowed.addr = alloca i32, align 4
  %overall_end_distance.addr = alloca i32, align 4
  %plusp.addr = alloca i8, align 1
  %genestrand.addr = alloca i32, align 4
  %try_sensedir.addr = alloca i32, align 4
  %innerp.addr = alloca i8, align 1
  %salvagep.addr = alloca i8, align 1
  %pass.addr = alloca i32, align 4
  %newpaths = alloca ptr, align 8
  %p = alloca ptr, align 8
  %newpath = alloca ptr, align 8
  %parent = alloca ptr, align 8
  %univdiagonal = alloca i32, align 4
  %qend = alloca i32, align 4
  %pos5 = alloca i32, align 4
  %exon_origin = alloca i32, align 4
  %indel_pos = alloca i32, align 4
  %trimpos = alloca i32, align 4
  %adj = alloca i32, align 4
  %nmismatches_j = alloca i32, align 4
  %splice3p = alloca i8, align 1
  %splicetype3 = alloca i32, align 4
  %nspliceends = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %spliceends = alloca ptr, align 8
  %trim_qends = alloca ptr, align 8
  %nosplice_trimpos = alloca i32, align 4
  %medial_splice_trimpos_0 = alloca i32, align 4
  %ambig_probs_3 = alloca ptr, align 8
  %ambig_prob_3 = alloca double, align 8
  %distal_probs = alloca ptr, align 8
  %distal_splice_positions = alloca ptr, align 8
  %distal_nmismatches = alloca ptr, align 8
  %nosplice_nmismatches = alloca i32, align 4
  %medial_splice_nmismatches_0 = alloca i32, align 4
  %pos3_nmismatches = alloca i32, align 4
  %found_sensedir = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %unextended_paths, ptr %unextended_paths.addr, align 8, !tbaa !5
  store ptr %complete_paths, ptr %complete_paths.addr, align 8, !tbaa !5
  store i32 %depth, ptr %depth.addr, align 4, !tbaa !12
  store ptr %path, ptr %path.addr, align 8, !tbaa !5
  store ptr %queryptr, ptr %queryptr.addr, align 8, !tbaa !5
  store i32 %querylength, ptr %querylength.addr, align 4, !tbaa !12
  store ptr %mismatch_positions_alloc, ptr %mismatch_positions_alloc.addr, align 8, !tbaa !5
  store ptr %novel_diagonals_alloc, ptr %novel_diagonals_alloc.addr, align 8, !tbaa !5
  store ptr %localdb_alloc, ptr %localdb_alloc.addr, align 8, !tbaa !5
  store i32 %streamspace_max_alloc, ptr %streamspace_max_alloc.addr, align 4, !tbaa !12
  store ptr %streamspace_alloc, ptr %streamspace_alloc.addr, align 8, !tbaa !5
  store ptr %streamptr_alloc, ptr %streamptr_alloc.addr, align 8, !tbaa !5
  store ptr %streamsize_alloc, ptr %streamsize_alloc.addr, align 8, !tbaa !5
  store ptr %mergeinfo, ptr %mergeinfo.addr, align 8, !tbaa !5
  store ptr %indelinfo, ptr %indelinfo.addr, align 8, !tbaa !5
  store ptr %spliceinfo, ptr %spliceinfo.addr, align 8, !tbaa !5
  store ptr %knownsplicing, ptr %knownsplicing.addr, align 8, !tbaa !5
  store ptr %knownindels, ptr %knownindels.addr, align 8, !tbaa !5
  store ptr %query_compress, ptr %query_compress.addr, align 8, !tbaa !5
  store i32 %chrnum, ptr %chrnum.addr, align 4, !tbaa !12
  store i32 %chroffset, ptr %chroffset.addr, align 4, !tbaa !12
  store i32 %chrhigh, ptr %chrhigh.addr, align 4, !tbaa !12
  store ptr %intlistpool, ptr %intlistpool.addr, align 8, !tbaa !5
  store ptr %univcoordlistpool, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  store ptr %listpool, ptr %listpool.addr, align 8, !tbaa !5
  store ptr %pathpool, ptr %pathpool.addr, align 8, !tbaa !5
  store ptr %transcriptpool, ptr %transcriptpool.addr, align 8, !tbaa !5
  store ptr %vectorpool, ptr %vectorpool.addr, align 8, !tbaa !5
  store ptr %hitlistpool, ptr %hitlistpool.addr, align 8, !tbaa !5
  store ptr %spliceendsgen, ptr %spliceendsgen.addr, align 8, !tbaa !5
  store i32 %max_insertionlen, ptr %max_insertionlen.addr, align 4, !tbaa !12
  store i32 %max_deletionlen, ptr %max_deletionlen.addr, align 4, !tbaa !12
  store i32 %nmismatches_allowed, ptr %nmismatches_allowed.addr, align 4, !tbaa !12
  store i32 %overall_end_distance, ptr %overall_end_distance.addr, align 4, !tbaa !12
  store i8 %plusp, ptr %plusp.addr, align 1, !tbaa !14
  store i32 %genestrand, ptr %genestrand.addr, align 4, !tbaa !12
  store i32 %try_sensedir, ptr %try_sensedir.addr, align 4, !tbaa !12
  store i8 %innerp, ptr %innerp.addr, align 1, !tbaa !14
  store i8 %salvagep, ptr %salvagep.addr, align 1, !tbaa !14
  store i32 %pass, ptr %pass.addr, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 8, ptr %newpaths) #5
  store ptr null, ptr %newpaths, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %newpath) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %univdiagonal) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %qend) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %pos5) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %exon_origin) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %indel_pos) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %trimpos) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %adj) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %nmismatches_j) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr %splice3p) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %splicetype3) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %nspliceends) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %spliceends) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %trim_qends) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %nosplice_trimpos) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %medial_splice_trimpos_0) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %ambig_probs_3) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %ambig_prob_3) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %distal_probs) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %distal_splice_positions) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %distal_nmismatches) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %nosplice_nmismatches) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %medial_splice_nmismatches_0) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %pos3_nmismatches) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %found_sensedir) #5
  %0 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %call = call ptr @Path_expect_rev(ptr noundef %0)
  %1 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %qend_alts = getelementptr inbounds %struct.Path_T, ptr %1, i32 0, i32 29
  %2 = load ptr, ptr %qend_alts, align 8, !tbaa !59
  %cmp = icmp ne ptr %2, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %4 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %5 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %6 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %7 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %8 = load ptr, ptr %vectorpool.addr, align 8, !tbaa !5
  %9 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  %call1 = call ptr @Path_copy(ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9)
  store ptr %call1, ptr %newpath, align 8, !tbaa !5
  %10 = load ptr, ptr %complete_paths.addr, align 8, !tbaa !5
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  %12 = load ptr, ptr %hitlistpool.addr, align 8, !tbaa !5
  %13 = load ptr, ptr %newpath, align 8, !tbaa !5
  %call2 = call ptr @Path_expect_rev(ptr noundef %13)
  %call3 = call ptr @Hitlist_push(ptr noundef %11, ptr noundef %12, ptr noundef %call2)
  %14 = load ptr, ptr %complete_paths.addr, align 8, !tbaa !5
  store ptr %call3, ptr %14, align 8, !tbaa !5
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %entry
  %15 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %endpoints = getelementptr inbounds %struct.Path_T, ptr %15, i32 0, i32 17
  %16 = load ptr, ptr %endpoints, align 8, !tbaa !40
  %call4 = call i32 @Intlist_head(ptr noundef %16)
  store i32 %call4, ptr %qend, align 4, !tbaa !12
  %17 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %cmp5 = icmp eq i32 %call4, %17
  br i1 %cmp5, label %if.then6, label %if.else10

if.then6:                                         ; preds = %if.else
  %18 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %19 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %20 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %21 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %22 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %23 = load ptr, ptr %vectorpool.addr, align 8, !tbaa !5
  %24 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  %call7 = call ptr @Path_copy(ptr noundef %18, ptr noundef %19, ptr noundef %20, ptr noundef %21, ptr noundef %22, ptr noundef %23, ptr noundef %24)
  store ptr %call7, ptr %newpath, align 8, !tbaa !5
  %25 = load ptr, ptr %complete_paths.addr, align 8, !tbaa !5
  %26 = load ptr, ptr %25, align 8, !tbaa !5
  %27 = load ptr, ptr %hitlistpool.addr, align 8, !tbaa !5
  %28 = load ptr, ptr %newpath, align 8, !tbaa !5
  %call8 = call ptr @Path_expect_rev(ptr noundef %28)
  %call9 = call ptr @Hitlist_push(ptr noundef %26, ptr noundef %27, ptr noundef %call8)
  %29 = load ptr, ptr %complete_paths.addr, align 8, !tbaa !5
  store ptr %call9, ptr %29, align 8, !tbaa !5
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else10:                                        ; preds = %if.else
  %30 = load i32, ptr %depth.addr, align 4, !tbaa !12
  %cmp11 = icmp sgt i32 %30, 2
  br i1 %cmp11, label %if.then12, label %if.else16

if.then12:                                        ; preds = %if.else10
  %31 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %32 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %33 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %34 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %35 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %36 = load ptr, ptr %vectorpool.addr, align 8, !tbaa !5
  %37 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  %call13 = call ptr @Path_copy(ptr noundef %31, ptr noundef %32, ptr noundef %33, ptr noundef %34, ptr noundef %35, ptr noundef %36, ptr noundef %37)
  store ptr %call13, ptr %newpath, align 8, !tbaa !5
  %38 = load ptr, ptr %unextended_paths.addr, align 8, !tbaa !5
  %39 = load ptr, ptr %38, align 8, !tbaa !5
  %40 = load ptr, ptr %hitlistpool.addr, align 8, !tbaa !5
  %41 = load ptr, ptr %newpath, align 8, !tbaa !5
  %call14 = call ptr @Path_reverse(ptr noundef %41, i8 noundef zeroext 1)
  %call15 = call ptr @Hitlist_push(ptr noundef %39, ptr noundef %40, ptr noundef %call14)
  %42 = load ptr, ptr %unextended_paths.addr, align 8, !tbaa !5
  store ptr %call15, ptr %42, align 8, !tbaa !5
  br label %if.end194

if.else16:                                        ; preds = %if.else10
  %43 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %endpoints17 = getelementptr inbounds %struct.Path_T, ptr %43, i32 0, i32 17
  %44 = load ptr, ptr %endpoints17, align 8, !tbaa !40
  %call18 = call ptr @Intlist_next(ptr noundef %44)
  %call19 = call i32 @Intlist_head(ptr noundef %call18)
  store i32 %call19, ptr %pos5, align 4, !tbaa !12
  %45 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %junctions = getelementptr inbounds %struct.Path_T, ptr %45, i32 0, i32 21
  %46 = load ptr, ptr %junctions, align 8, !tbaa !43
  %cmp20 = icmp ne ptr %46, null
  br i1 %cmp20, label %if.then21, label %if.end

if.then21:                                        ; preds = %if.else16
  %47 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %junctions22 = getelementptr inbounds %struct.Path_T, ptr %47, i32 0, i32 21
  %48 = load ptr, ptr %junctions22, align 8, !tbaa !43
  %call23 = call ptr @List_head(ptr noundef %48)
  %call24 = call i32 @Junction_ninserts(ptr noundef %call23)
  %49 = load i32, ptr %pos5, align 4, !tbaa !12
  %add = add nsw i32 %49, %call24
  store i32 %add, ptr %pos5, align 4, !tbaa !12
  br label %if.end

if.end:                                           ; preds = %if.then21, %if.else16
  %50 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %univdiagonals = getelementptr inbounds %struct.Path_T, ptr %50, i32 0, i32 18
  %51 = load ptr, ptr %univdiagonals, align 8, !tbaa !36
  %call25 = call i32 @Uintlist_head(ptr noundef %51)
  store i32 %call25, ptr %univdiagonal, align 4, !tbaa !12
  %52 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %call26 = call i32 @Path_exon_origin(ptr noundef %52)
  store i32 %call26, ptr %exon_origin, align 4, !tbaa !12
  %53 = load i32, ptr %try_sensedir.addr, align 4, !tbaa !12
  %54 = load i32, ptr %univdiagonal, align 4, !tbaa !12
  %55 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %56 = load i32, ptr %pos5, align 4, !tbaa !12
  %57 = load i32, ptr %exon_origin, align 4, !tbaa !12
  %58 = load i32, ptr %chrnum.addr, align 4, !tbaa !12
  %59 = load i32, ptr %chroffset.addr, align 4, !tbaa !12
  %60 = load i32, ptr %chrhigh.addr, align 4, !tbaa !12
  %61 = load i8, ptr %plusp.addr, align 1, !tbaa !14
  %62 = load i32, ptr %genestrand.addr, align 4, !tbaa !12
  %63 = load i32, ptr %nmismatches_allowed.addr, align 4, !tbaa !12
  %64 = load i8, ptr %innerp.addr, align 1, !tbaa !14
  %65 = load i8, ptr %salvagep.addr, align 1, !tbaa !14
  %66 = load ptr, ptr %mismatch_positions_alloc.addr, align 8, !tbaa !5
  %67 = load ptr, ptr %novel_diagonals_alloc.addr, align 8, !tbaa !5
  %68 = load ptr, ptr %localdb_alloc.addr, align 8, !tbaa !5
  %69 = load i32, ptr %streamspace_max_alloc.addr, align 4, !tbaa !12
  %70 = load ptr, ptr %streamspace_alloc.addr, align 8, !tbaa !5
  %71 = load ptr, ptr %streamptr_alloc.addr, align 8, !tbaa !5
  %72 = load ptr, ptr %streamsize_alloc.addr, align 8, !tbaa !5
  %73 = load ptr, ptr %mergeinfo.addr, align 8, !tbaa !5
  %74 = load ptr, ptr %knownsplicing.addr, align 8, !tbaa !5
  %75 = load ptr, ptr %spliceendsgen.addr, align 8, !tbaa !5
  %76 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %77 = load ptr, ptr %queryptr.addr, align 8, !tbaa !5
  %78 = load ptr, ptr @genomebits, align 8, !tbaa !5
  %79 = load ptr, ptr @genomebits_alt, align 8, !tbaa !5
  %80 = load i8, ptr @novelsplicingp, align 1, !tbaa !14
  %call27 = call i32 @Spliceends_trimmed_qends(ptr noundef %spliceends, ptr noundef %nosplice_trimpos, ptr noundef %medial_splice_trimpos_0, ptr noundef %pos3_nmismatches, ptr noundef %nosplice_nmismatches, ptr noundef %medial_splice_nmismatches_0, ptr noundef %splice3p, ptr noundef %splicetype3, ptr noundef %ambig_prob_3, i32 noundef %53, i32 noundef %54, i32 noundef %55, i32 noundef %56, i32 noundef %57, i32 noundef %58, i32 noundef %59, i32 noundef %60, i8 noundef zeroext %61, i32 noundef %62, i32 noundef %63, i8 noundef zeroext %64, i8 noundef zeroext %65, ptr noundef %66, ptr noundef %67, ptr noundef %68, i32 noundef %69, ptr noundef %70, ptr noundef %71, ptr noundef %72, ptr noundef %73, ptr noundef %74, ptr noundef %75, ptr noundef %76, ptr noundef %77, ptr noundef %78, ptr noundef %79, i8 noundef zeroext %80)
  store i32 %call27, ptr %nspliceends, align 4, !tbaa !12
  %81 = load i32, ptr %nspliceends, align 4, !tbaa !12
  %cmp28 = icmp eq i32 %81, 0
  br i1 %cmp28, label %if.then29, label %if.else30

if.then29:                                        ; preds = %if.end
  br label %if.end56

if.else30:                                        ; preds = %if.end
  %82 = load ptr, ptr %spliceends, align 8, !tbaa !5
  %cmp31 = icmp eq ptr %82, null
  br i1 %cmp31, label %if.then32, label %if.else33

if.then32:                                        ; preds = %if.else30
  br label %if.end55

if.else33:                                        ; preds = %if.else30
  %83 = load ptr, ptr %spliceends, align 8, !tbaa !5
  %sensedir = getelementptr inbounds %struct.Spliceends_T, ptr %83, i32 0, i32 4
  %84 = load i32, ptr %sensedir, align 8, !tbaa !46
  store i32 %84, ptr %found_sensedir, align 4, !tbaa !12
  %85 = load ptr, ptr %spliceends, align 8, !tbaa !5
  %trimends = getelementptr inbounds %struct.Spliceends_T, ptr %85, i32 0, i32 8
  %86 = load ptr, ptr %trimends, align 8, !tbaa !48
  store ptr %86, ptr %trim_qends, align 8, !tbaa !5
  %87 = load ptr, ptr %spliceends, align 8, !tbaa !5
  %ambig_probs = getelementptr inbounds %struct.Spliceends_T, ptr %87, i32 0, i32 12
  %88 = load ptr, ptr %ambig_probs, align 8, !tbaa !49
  store ptr %88, ptr %ambig_probs_3, align 8, !tbaa !5
  %89 = load ptr, ptr %spliceends, align 8, !tbaa !5
  %distal_nmismatches34 = getelementptr inbounds %struct.Spliceends_T, ptr %89, i32 0, i32 11
  %90 = load ptr, ptr %distal_nmismatches34, align 8, !tbaa !50
  store ptr %90, ptr %distal_nmismatches, align 8, !tbaa !5
  %91 = load ptr, ptr %spliceends, align 8, !tbaa !5
  %partners = getelementptr inbounds %struct.Spliceends_T, ptr %91, i32 0, i32 9
  %92 = load ptr, ptr %partners, align 8, !tbaa !51
  store ptr %92, ptr %distal_splice_positions, align 8, !tbaa !5
  %93 = load ptr, ptr %spliceends, align 8, !tbaa !5
  %distal_probs35 = getelementptr inbounds %struct.Spliceends_T, ptr %93, i32 0, i32 13
  %94 = load ptr, ptr %distal_probs35, align 8, !tbaa !52
  store ptr %94, ptr %distal_probs, align 8, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !12
  br label %while.cond

while.cond:                                       ; preds = %while.end, %if.else33
  %95 = load i32, ptr %i, align 4, !tbaa !12
  %96 = load i32, ptr %nspliceends, align 4, !tbaa !12
  %cmp36 = icmp slt i32 %95, %96
  br i1 %cmp36, label %while.body, label %while.end54

while.body:                                       ; preds = %while.cond
  %97 = load ptr, ptr %ambig_probs_3, align 8, !tbaa !5
  %98 = load i32, ptr %i, align 4, !tbaa !12
  %idxprom = sext i32 %98 to i64
  %arrayidx = getelementptr inbounds double, ptr %97, i64 %idxprom
  %99 = load double, ptr %arrayidx, align 8, !tbaa !44
  store double %99, ptr %ambig_prob_3, align 8, !tbaa !44
  %100 = load ptr, ptr %trim_qends, align 8, !tbaa !5
  %101 = load i32, ptr %i, align 4, !tbaa !12
  %idxprom37 = sext i32 %101 to i64
  %arrayidx38 = getelementptr inbounds i32, ptr %100, i64 %idxprom37
  %102 = load i32, ptr %arrayidx38, align 4, !tbaa !12
  store i32 %102, ptr %qend, align 4, !tbaa !12
  %103 = load i32, ptr %i, align 4, !tbaa !12
  %add39 = add nsw i32 %103, 1
  store i32 %add39, ptr %j, align 4, !tbaa !12
  br label %while.cond40

while.cond40:                                     ; preds = %while.body45, %while.body
  %104 = load i32, ptr %j, align 4, !tbaa !12
  %105 = load i32, ptr %nspliceends, align 4, !tbaa !12
  %cmp41 = icmp slt i32 %104, %105
  br i1 %cmp41, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond40
  %106 = load ptr, ptr %trim_qends, align 8, !tbaa !5
  %107 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom42 = sext i32 %107 to i64
  %arrayidx43 = getelementptr inbounds i32, ptr %106, i64 %idxprom42
  %108 = load i32, ptr %arrayidx43, align 4, !tbaa !12
  %109 = load i32, ptr %qend, align 4, !tbaa !12
  %cmp44 = icmp eq i32 %108, %109
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond40
  %110 = phi i1 [ false, %while.cond40 ], [ %cmp44, %land.rhs ]
  br i1 %110, label %while.body45, label %while.end

while.body45:                                     ; preds = %land.end
  %111 = load i32, ptr %j, align 4, !tbaa !12
  %inc = add nsw i32 %111, 1
  store i32 %inc, ptr %j, align 4, !tbaa !12
  br label %while.cond40, !llvm.loop !60

while.end:                                        ; preds = %land.end
  %112 = load ptr, ptr %newpaths, align 8, !tbaa !5
  %113 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %114 = load i32, ptr %univdiagonal, align 4, !tbaa !12
  %115 = load i32, ptr %qend, align 4, !tbaa !12
  %116 = load double, ptr %ambig_prob_3, align 8, !tbaa !44
  %117 = load ptr, ptr %distal_splice_positions, align 8, !tbaa !5
  %118 = load i32, ptr %i, align 4, !tbaa !12
  %idxprom46 = sext i32 %118 to i64
  %arrayidx47 = getelementptr inbounds i32, ptr %117, i64 %idxprom46
  %119 = load ptr, ptr %distal_nmismatches, align 8, !tbaa !5
  %120 = load i32, ptr %i, align 4, !tbaa !12
  %idxprom48 = sext i32 %120 to i64
  %arrayidx49 = getelementptr inbounds i32, ptr %119, i64 %idxprom48
  %121 = load ptr, ptr %distal_probs, align 8, !tbaa !5
  %122 = load i32, ptr %i, align 4, !tbaa !12
  %idxprom50 = sext i32 %122 to i64
  %arrayidx51 = getelementptr inbounds double, ptr %121, i64 %idxprom50
  %123 = load i32, ptr %j, align 4, !tbaa !12
  %124 = load i32, ptr %i, align 4, !tbaa !12
  %sub = sub nsw i32 %123, %124
  %125 = load i32, ptr %chrnum.addr, align 4, !tbaa !12
  %126 = load i32, ptr %chroffset.addr, align 4, !tbaa !12
  %127 = load i32, ptr %chrhigh.addr, align 4, !tbaa !12
  %128 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %129 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %130 = load ptr, ptr %queryptr.addr, align 8, !tbaa !5
  %131 = load i8, ptr %plusp.addr, align 1, !tbaa !14
  %132 = load i32, ptr %genestrand.addr, align 4, !tbaa !12
  %133 = load ptr, ptr %knownsplicing.addr, align 8, !tbaa !5
  %134 = load ptr, ptr %spliceendsgen.addr, align 8, !tbaa !5
  %135 = load ptr, ptr %mismatch_positions_alloc.addr, align 8, !tbaa !5
  %136 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %137 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %138 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %139 = load ptr, ptr %hitlistpool.addr, align 8, !tbaa !5
  %140 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %141 = load ptr, ptr %vectorpool.addr, align 8, !tbaa !5
  %142 = load i32, ptr %found_sensedir, align 4, !tbaa !12
  %call52 = call ptr @multiadd_splice_qends(ptr noundef %113, i32 noundef %114, i32 noundef %115, double noundef %116, ptr noundef %arrayidx47, ptr noundef %arrayidx49, ptr noundef %arrayidx51, i32 noundef %sub, i32 noundef %125, i32 noundef %126, i32 noundef %127, i32 noundef %128, ptr noundef %129, ptr noundef %130, i8 noundef zeroext %131, i32 noundef %132, ptr noundef %133, ptr noundef %134, ptr noundef %135, ptr noundef %136, ptr noundef %137, ptr noundef %138, ptr noundef %139, ptr noundef %140, ptr noundef %141, i32 noundef %142)
  %call53 = call ptr @List_append(ptr noundef %112, ptr noundef %call52)
  store ptr %call53, ptr %newpaths, align 8, !tbaa !5
  %143 = load i32, ptr %j, align 4, !tbaa !12
  store i32 %143, ptr %i, align 4, !tbaa !12
  br label %while.cond, !llvm.loop !61

while.end54:                                      ; preds = %while.cond
  %144 = load ptr, ptr %spliceendsgen.addr, align 8, !tbaa !5
  call void @Spliceendsgen_return(ptr noundef %144, ptr noundef %spliceends)
  br label %if.end55

if.end55:                                         ; preds = %while.end54, %if.then32
  br label %if.end56

if.end56:                                         ; preds = %if.end55, %if.then29
  %145 = load ptr, ptr %newpaths, align 8, !tbaa !5
  %cmp57 = icmp eq ptr %145, null
  br i1 %cmp57, label %if.then58, label %if.end85

if.then58:                                        ; preds = %if.end56
  %146 = load i32, ptr %nosplice_trimpos, align 4, !tbaa !12
  %147 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %cmp59 = icmp eq i32 %146, %147
  br i1 %cmp59, label %if.then60, label %if.else61

if.then60:                                        ; preds = %if.then58
  br label %if.end84

if.else61:                                        ; preds = %if.then58
  %148 = load ptr, ptr %knownindels.addr, align 8, !tbaa !5
  %cmp62 = icmp ne ptr %148, null
  br i1 %cmp62, label %land.lhs.true, label %if.else70

land.lhs.true:                                    ; preds = %if.else61
  %149 = load ptr, ptr %knownindels.addr, align 8, !tbaa !5
  %150 = load i32, ptr %univdiagonal, align 4, !tbaa !12
  %151 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %152 = load i32, ptr %nosplice_trimpos, align 4, !tbaa !12
  %sub63 = sub nsw i32 %152, 1
  %153 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %call64 = call i32 @Knownindels_find_lowest(ptr noundef %indel_pos, ptr noundef %149, i32 noundef %150, i32 noundef %151, i32 noundef %sub63, i32 noundef %153)
  store i32 %call64, ptr %adj, align 4, !tbaa !12
  %cmp65 = icmp ne i32 %call64, 0
  br i1 %cmp65, label %if.then66, label %if.else70

if.then66:                                        ; preds = %land.lhs.true
  %154 = load i32, ptr %adj, align 4, !tbaa !12
  %155 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %156 = load i32, ptr %indel_pos, align 4, !tbaa !12
  %157 = load i32, ptr %univdiagonal, align 4, !tbaa !12
  %158 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %159 = load i32, ptr %try_sensedir.addr, align 4, !tbaa !12
  %160 = load i8, ptr %plusp.addr, align 1, !tbaa !14
  %161 = load i32, ptr %genestrand.addr, align 4, !tbaa !12
  %162 = load ptr, ptr %mismatch_positions_alloc.addr, align 8, !tbaa !5
  %163 = load ptr, ptr %knownsplicing.addr, align 8, !tbaa !5
  %164 = load ptr, ptr %spliceendsgen.addr, align 8, !tbaa !5
  %165 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %166 = load ptr, ptr %queryptr.addr, align 8, !tbaa !5
  %167 = load ptr, ptr @genomebits, align 8, !tbaa !5
  %168 = load ptr, ptr @genomebits_alt, align 8, !tbaa !5
  %169 = load i32, ptr %chrnum.addr, align 4, !tbaa !12
  %170 = load i32, ptr %chroffset.addr, align 4, !tbaa !12
  %171 = load i32, ptr %chrhigh.addr, align 4, !tbaa !12
  %172 = load i8, ptr @novelsplicingp, align 1, !tbaa !14
  %173 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %174 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %175 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %176 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %177 = load ptr, ptr %vectorpool.addr, align 8, !tbaa !5
  %call67 = call ptr @attach_indel_qend_simple(i32 noundef %154, ptr noundef %155, i32 noundef %156, i32 noundef %157, i32 noundef %158, i32 noundef %159, i8 noundef zeroext %160, i32 noundef %161, ptr noundef %162, ptr noundef %163, ptr noundef %164, ptr noundef %165, ptr noundef %166, ptr noundef %167, ptr noundef %168, i32 noundef %169, i32 noundef %170, i32 noundef %171, i8 noundef zeroext %172, ptr noundef %173, ptr noundef %174, ptr noundef %175, ptr noundef %176, ptr noundef %177)
  store ptr %call67, ptr %newpath, align 8, !tbaa !5
  %178 = load ptr, ptr %newpaths, align 8, !tbaa !5
  %179 = load ptr, ptr %hitlistpool.addr, align 8, !tbaa !5
  %180 = load ptr, ptr %newpath, align 8, !tbaa !5
  %call68 = call ptr @Path_expect_rev(ptr noundef %180)
  %call69 = call ptr @Hitlist_push(ptr noundef %178, ptr noundef %179, ptr noundef %call68)
  store ptr %call69, ptr %newpaths, align 8, !tbaa !5
  br label %if.end83

if.else70:                                        ; preds = %land.lhs.true, %if.else61
  %181 = load i32, ptr %univdiagonal, align 4, !tbaa !12
  %182 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %183 = load i32, ptr %nosplice_trimpos, align 4, !tbaa !12
  %184 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %185 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %186 = load ptr, ptr %mismatch_positions_alloc.addr, align 8, !tbaa !5
  %187 = load ptr, ptr @genomebits, align 8, !tbaa !5
  %188 = load ptr, ptr @genomebits_alt, align 8, !tbaa !5
  %189 = load i8, ptr %plusp.addr, align 1, !tbaa !14
  %190 = load i32, ptr %genestrand.addr, align 4, !tbaa !12
  %call71 = call i32 @Genomebits_indel_solve_high(ptr noundef %trimpos, ptr noundef %nmismatches_j, i32 noundef %181, i32 noundef %182, i32 noundef %183, i32 noundef %184, ptr noundef %185, ptr noundef %186, ptr noundef %187, ptr noundef %188, i8 noundef zeroext %189, i32 noundef %190)
  store i32 %call71, ptr %adj, align 4, !tbaa !12
  %cmp72 = icmp ne i32 %call71, 0
  br i1 %cmp72, label %if.then73, label %if.else81

if.then73:                                        ; preds = %if.else70
  %191 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %192 = load i32, ptr %univdiagonal, align 4, !tbaa !12
  %193 = load i32, ptr %adj, align 4, !tbaa !12
  %add74 = add i32 %192, %193
  %194 = load i32, ptr %trimpos, align 4, !tbaa !12
  %195 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %196 = load ptr, ptr %indelinfo.addr, align 8, !tbaa !5
  %197 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %198 = load i8, ptr %plusp.addr, align 1, !tbaa !14
  %199 = load i32, ptr %genestrand.addr, align 4, !tbaa !12
  %200 = load i32, ptr %nmismatches_allowed.addr, align 4, !tbaa !12
  %201 = load i32, ptr %max_insertionlen.addr, align 4, !tbaa !12
  %202 = load i32, ptr %max_deletionlen.addr, align 4, !tbaa !12
  %203 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %204 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %205 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %206 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %207 = load ptr, ptr %vectorpool.addr, align 8, !tbaa !5
  %call75 = call ptr @attach_indel_qend(ptr noundef %191, i32 noundef %add74, i32 noundef %194, i32 noundef %195, ptr noundef %196, ptr noundef %197, i8 noundef zeroext %198, i32 noundef %199, i32 noundef %200, i32 noundef %201, i32 noundef %202, ptr noundef %203, ptr noundef %204, ptr noundef %205, ptr noundef %206, ptr noundef %207)
  store ptr %call75, ptr %newpath, align 8, !tbaa !5
  %cmp76 = icmp ne ptr %call75, null
  br i1 %cmp76, label %if.then77, label %if.end80

if.then77:                                        ; preds = %if.then73
  %208 = load ptr, ptr %newpaths, align 8, !tbaa !5
  %209 = load ptr, ptr %hitlistpool.addr, align 8, !tbaa !5
  %210 = load ptr, ptr %newpath, align 8, !tbaa !5
  %call78 = call ptr @Path_expect_rev(ptr noundef %210)
  %call79 = call ptr @Hitlist_push(ptr noundef %208, ptr noundef %209, ptr noundef %call78)
  store ptr %call79, ptr %newpaths, align 8, !tbaa !5
  br label %if.end80

if.end80:                                         ; preds = %if.then77, %if.then73
  br label %if.end82

if.else81:                                        ; preds = %if.else70
  br label %if.end82

if.end82:                                         ; preds = %if.else81, %if.end80
  br label %if.end83

if.end83:                                         ; preds = %if.end82, %if.then66
  br label %if.end84

if.end84:                                         ; preds = %if.end83, %if.then60
  br label %if.end85

if.end85:                                         ; preds = %if.end84, %if.end56
  %211 = load ptr, ptr %newpaths, align 8, !tbaa !5
  %cmp86 = icmp eq ptr %211, null
  br i1 %cmp86, label %if.then87, label %if.else189

if.then87:                                        ; preds = %if.end85
  %212 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %213 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %214 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %215 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %216 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %217 = load ptr, ptr %vectorpool.addr, align 8, !tbaa !5
  %218 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  %call88 = call ptr @Path_copy(ptr noundef %212, ptr noundef %213, ptr noundef %214, ptr noundef %215, ptr noundef %216, ptr noundef %217, ptr noundef %218)
  store ptr %call88, ptr %newpath, align 8, !tbaa !5
  %219 = load i32, ptr %medial_splice_trimpos_0, align 4, !tbaa !12
  %cmp89 = icmp ne i32 %219, -1
  br i1 %cmp89, label %if.then90, label %if.else126

if.then90:                                        ; preds = %if.then87
  %220 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions91 = getelementptr inbounds %struct.Path_T, ptr %220, i32 0, i32 21
  %221 = load ptr, ptr %junctions91, align 8, !tbaa !43
  %cmp92 = icmp ne ptr %221, null
  br i1 %cmp92, label %land.lhs.true93, label %if.else103

land.lhs.true93:                                  ; preds = %if.then90
  %222 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints94 = getelementptr inbounds %struct.Path_T, ptr %222, i32 0, i32 17
  %223 = load ptr, ptr %endpoints94, align 8, !tbaa !40
  %call95 = call ptr @Intlist_next(ptr noundef %223)
  %call96 = call i32 @Intlist_head(ptr noundef %call95)
  %224 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions97 = getelementptr inbounds %struct.Path_T, ptr %224, i32 0, i32 21
  %225 = load ptr, ptr %junctions97, align 8, !tbaa !43
  %call98 = call ptr @List_head(ptr noundef %225)
  %call99 = call i32 @Junction_ninserts(ptr noundef %call98)
  %add100 = add nsw i32 %call96, %call99
  %226 = load i32, ptr %medial_splice_trimpos_0, align 4, !tbaa !12
  %cmp101 = icmp sge i32 %add100, %226
  br i1 %cmp101, label %if.then102, label %if.else103

if.then102:                                       ; preds = %land.lhs.true93
  br label %if.end125

if.else103:                                       ; preds = %land.lhs.true93, %if.then90
  %227 = load i32, ptr %medial_splice_trimpos_0, align 4, !tbaa !12
  %228 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints104 = getelementptr inbounds %struct.Path_T, ptr %228, i32 0, i32 17
  %229 = load ptr, ptr %endpoints104, align 8, !tbaa !40
  %call105 = call i32 @Intlist_head(ptr noundef %229)
  %cmp106 = icmp eq i32 %227, %call105
  br i1 %cmp106, label %if.then107, label %if.else108

if.then107:                                       ; preds = %if.else103
  br label %if.end121

if.else108:                                       ; preds = %if.else103
  %230 = load i32, ptr %medial_splice_trimpos_0, align 4, !tbaa !12
  %231 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints109 = getelementptr inbounds %struct.Path_T, ptr %231, i32 0, i32 17
  %232 = load ptr, ptr %endpoints109, align 8, !tbaa !40
  %call110 = call i32 @Intlist_head(ptr noundef %232)
  %cmp111 = icmp slt i32 %230, %call110
  br i1 %cmp111, label %land.lhs.true112, label %if.else117

land.lhs.true112:                                 ; preds = %if.else108
  %233 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches = getelementptr inbounds %struct.Path_T, ptr %233, i32 0, i32 19
  %234 = load ptr, ptr %nmismatches, align 8, !tbaa !41
  %call113 = call i32 @Intlist_head(ptr noundef %234)
  %cmp114 = icmp eq i32 %call113, 0
  br i1 %cmp114, label %if.then115, label %if.else117

if.then115:                                       ; preds = %land.lhs.true112
  %235 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints116 = getelementptr inbounds %struct.Path_T, ptr %235, i32 0, i32 17
  %236 = load ptr, ptr %endpoints116, align 8, !tbaa !40
  %237 = load i32, ptr %medial_splice_trimpos_0, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %236, i32 noundef %237)
  br label %if.end120

if.else117:                                       ; preds = %land.lhs.true112, %if.else108
  %238 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints118 = getelementptr inbounds %struct.Path_T, ptr %238, i32 0, i32 17
  %239 = load ptr, ptr %endpoints118, align 8, !tbaa !40
  %240 = load i32, ptr %medial_splice_trimpos_0, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %239, i32 noundef %240)
  %241 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches119 = getelementptr inbounds %struct.Path_T, ptr %241, i32 0, i32 19
  %242 = load ptr, ptr %nmismatches119, align 8, !tbaa !41
  %243 = load i32, ptr %medial_splice_nmismatches_0, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %242, i32 noundef %243)
  %244 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches = getelementptr inbounds %struct.Path_T, ptr %244, i32 0, i32 20
  %245 = load ptr, ptr %ref_nmismatches, align 8, !tbaa !42
  %246 = load i32, ptr %medial_splice_nmismatches_0, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %245, i32 noundef %246)
  br label %if.end120

if.end120:                                        ; preds = %if.else117, %if.then115
  br label %if.end121

if.end121:                                        ; preds = %if.end120, %if.then107
  %247 = load i8, ptr %splice3p, align 1, !tbaa !14
  %248 = load ptr, ptr %newpath, align 8, !tbaa !5
  %splice3p122 = getelementptr inbounds %struct.Path_T, ptr %248, i32 0, i32 23
  store i8 %247, ptr %splice3p122, align 1, !tbaa !62
  %249 = load i32, ptr %splicetype3, align 4, !tbaa !14
  %250 = load ptr, ptr %newpath, align 8, !tbaa !5
  %splicetype3123 = getelementptr inbounds %struct.Path_T, ptr %250, i32 0, i32 25
  store i32 %249, ptr %splicetype3123, align 8, !tbaa !63
  %251 = load double, ptr %ambig_prob_3, align 8, !tbaa !44
  %252 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ambig_prob_3124 = getelementptr inbounds %struct.Path_T, ptr %252, i32 0, i32 27
  store double %251, ptr %ambig_prob_3124, align 8, !tbaa !64
  br label %if.end125

if.end125:                                        ; preds = %if.end121, %if.then102
  br label %if.end178

if.else126:                                       ; preds = %if.then87
  %253 = load i32, ptr %nosplice_trimpos, align 4, !tbaa !12
  %254 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints127 = getelementptr inbounds %struct.Path_T, ptr %254, i32 0, i32 17
  %255 = load ptr, ptr %endpoints127, align 8, !tbaa !40
  %call128 = call i32 @Intlist_second_value(ptr noundef %255)
  %cmp129 = icmp eq i32 %253, %call128
  br i1 %cmp129, label %if.then130, label %if.else131

if.then130:                                       ; preds = %if.else126
  br label %if.end177

if.else131:                                       ; preds = %if.else126
  %256 = load ptr, ptr %newpath, align 8, !tbaa !5
  %univdiagonals132 = getelementptr inbounds %struct.Path_T, ptr %256, i32 0, i32 18
  %257 = load ptr, ptr %univdiagonals132, align 8, !tbaa !36
  %call133 = call i32 @Uintlist_head(ptr noundef %257)
  %258 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %sub134 = sub i32 %call133, %258
  %259 = load i32, ptr %nosplice_trimpos, align 4, !tbaa !12
  %add135 = add i32 %sub134, %259
  %260 = load i32, ptr %chroffset.addr, align 4, !tbaa !12
  %cmp136 = icmp ult i32 %add135, %260
  br i1 %cmp136, label %if.then137, label %if.else138

if.then137:                                       ; preds = %if.else131
  br label %if.end176

if.else138:                                       ; preds = %if.else131
  %261 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions139 = getelementptr inbounds %struct.Path_T, ptr %261, i32 0, i32 21
  %262 = load ptr, ptr %junctions139, align 8, !tbaa !43
  %cmp140 = icmp ne ptr %262, null
  br i1 %cmp140, label %land.lhs.true141, label %if.else151

land.lhs.true141:                                 ; preds = %if.else138
  %263 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints142 = getelementptr inbounds %struct.Path_T, ptr %263, i32 0, i32 17
  %264 = load ptr, ptr %endpoints142, align 8, !tbaa !40
  %call143 = call ptr @Intlist_next(ptr noundef %264)
  %call144 = call i32 @Intlist_head(ptr noundef %call143)
  %265 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions145 = getelementptr inbounds %struct.Path_T, ptr %265, i32 0, i32 21
  %266 = load ptr, ptr %junctions145, align 8, !tbaa !43
  %call146 = call ptr @List_head(ptr noundef %266)
  %call147 = call i32 @Junction_ninserts(ptr noundef %call146)
  %add148 = add nsw i32 %call144, %call147
  %267 = load i32, ptr %nosplice_trimpos, align 4, !tbaa !12
  %cmp149 = icmp sge i32 %add148, %267
  br i1 %cmp149, label %if.then150, label %if.else151

if.then150:                                       ; preds = %land.lhs.true141
  br label %if.end175

if.else151:                                       ; preds = %land.lhs.true141, %if.else138
  %268 = load i32, ptr %nosplice_trimpos, align 4, !tbaa !12
  %269 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints152 = getelementptr inbounds %struct.Path_T, ptr %269, i32 0, i32 17
  %270 = load ptr, ptr %endpoints152, align 8, !tbaa !40
  %call153 = call i32 @Intlist_head(ptr noundef %270)
  %cmp154 = icmp eq i32 %268, %call153
  br i1 %cmp154, label %if.then155, label %if.else156

if.then155:                                       ; preds = %if.else151
  br label %if.end171

if.else156:                                       ; preds = %if.else151
  %271 = load i32, ptr %nosplice_trimpos, align 4, !tbaa !12
  %272 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints157 = getelementptr inbounds %struct.Path_T, ptr %272, i32 0, i32 17
  %273 = load ptr, ptr %endpoints157, align 8, !tbaa !40
  %call158 = call i32 @Intlist_head(ptr noundef %273)
  %cmp159 = icmp slt i32 %271, %call158
  br i1 %cmp159, label %land.lhs.true160, label %if.else166

land.lhs.true160:                                 ; preds = %if.else156
  %274 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches161 = getelementptr inbounds %struct.Path_T, ptr %274, i32 0, i32 19
  %275 = load ptr, ptr %nmismatches161, align 8, !tbaa !41
  %call162 = call i32 @Intlist_head(ptr noundef %275)
  %cmp163 = icmp eq i32 %call162, 0
  br i1 %cmp163, label %if.then164, label %if.else166

if.then164:                                       ; preds = %land.lhs.true160
  %276 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints165 = getelementptr inbounds %struct.Path_T, ptr %276, i32 0, i32 17
  %277 = load ptr, ptr %endpoints165, align 8, !tbaa !40
  %278 = load i32, ptr %nosplice_trimpos, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %277, i32 noundef %278)
  br label %if.end170

if.else166:                                       ; preds = %land.lhs.true160, %if.else156
  %279 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints167 = getelementptr inbounds %struct.Path_T, ptr %279, i32 0, i32 17
  %280 = load ptr, ptr %endpoints167, align 8, !tbaa !40
  %281 = load i32, ptr %nosplice_trimpos, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %280, i32 noundef %281)
  %282 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches168 = getelementptr inbounds %struct.Path_T, ptr %282, i32 0, i32 19
  %283 = load ptr, ptr %nmismatches168, align 8, !tbaa !41
  %284 = load i32, ptr %nosplice_nmismatches, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %283, i32 noundef %284)
  %285 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches169 = getelementptr inbounds %struct.Path_T, ptr %285, i32 0, i32 20
  %286 = load ptr, ptr %ref_nmismatches169, align 8, !tbaa !42
  %287 = load i32, ptr %nosplice_nmismatches, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %286, i32 noundef %287)
  br label %if.end170

if.end170:                                        ; preds = %if.else166, %if.then164
  br label %if.end171

if.end171:                                        ; preds = %if.end170, %if.then155
  %288 = load ptr, ptr %newpath, align 8, !tbaa !5
  %splice3p172 = getelementptr inbounds %struct.Path_T, ptr %288, i32 0, i32 23
  store i8 0, ptr %splice3p172, align 1, !tbaa !62
  %289 = load ptr, ptr %newpath, align 8, !tbaa !5
  %splicetype3173 = getelementptr inbounds %struct.Path_T, ptr %289, i32 0, i32 25
  store i32 0, ptr %splicetype3173, align 8, !tbaa !63
  %290 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ambig_prob_3174 = getelementptr inbounds %struct.Path_T, ptr %290, i32 0, i32 27
  store double 0.000000e+00, ptr %ambig_prob_3174, align 8, !tbaa !64
  br label %if.end175

if.end175:                                        ; preds = %if.end171, %if.then150
  br label %if.end176

if.end176:                                        ; preds = %if.end175, %if.then137
  br label %if.end177

if.end177:                                        ; preds = %if.end176, %if.then130
  br label %if.end178

if.end178:                                        ; preds = %if.end177, %if.end125
  %291 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %292 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints179 = getelementptr inbounds %struct.Path_T, ptr %292, i32 0, i32 17
  %293 = load ptr, ptr %endpoints179, align 8, !tbaa !40
  %call180 = call i32 @Intlist_head(ptr noundef %293)
  %sub181 = sub nsw i32 %291, %call180
  %cmp182 = icmp sle i32 %sub181, 8
  br i1 %cmp182, label %if.then183, label %if.else186

if.then183:                                       ; preds = %if.end178
  %294 = load ptr, ptr %complete_paths.addr, align 8, !tbaa !5
  %295 = load ptr, ptr %294, align 8, !tbaa !5
  %296 = load ptr, ptr %hitlistpool.addr, align 8, !tbaa !5
  %297 = load ptr, ptr %newpath, align 8, !tbaa !5
  %call184 = call ptr @Path_expect_rev(ptr noundef %297)
  %call185 = call ptr @Hitlist_push(ptr noundef %295, ptr noundef %296, ptr noundef %call184)
  %298 = load ptr, ptr %complete_paths.addr, align 8, !tbaa !5
  store ptr %call185, ptr %298, align 8, !tbaa !5
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else186:                                       ; preds = %if.end178
  %299 = load ptr, ptr %unextended_paths.addr, align 8, !tbaa !5
  %300 = load ptr, ptr %299, align 8, !tbaa !5
  %301 = load ptr, ptr %hitlistpool.addr, align 8, !tbaa !5
  %302 = load ptr, ptr %newpath, align 8, !tbaa !5
  %call187 = call ptr @Path_reverse(ptr noundef %302, i8 noundef zeroext 1)
  %call188 = call ptr @Hitlist_push(ptr noundef %300, ptr noundef %301, ptr noundef %call187)
  %303 = load ptr, ptr %unextended_paths.addr, align 8, !tbaa !5
  store ptr %call188, ptr %303, align 8, !tbaa !5
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else189:                                       ; preds = %if.end85
  %304 = load ptr, ptr %newpaths, align 8, !tbaa !5
  store ptr %304, ptr %p, align 8, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else189
  %305 = load ptr, ptr %p, align 8, !tbaa !5
  %cmp190 = icmp ne ptr %305, null
  br i1 %cmp190, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %306 = load ptr, ptr %p, align 8, !tbaa !5
  %call191 = call ptr @List_head(ptr noundef %306)
  store ptr %call191, ptr %parent, align 8, !tbaa !5
  %307 = load ptr, ptr %unextended_paths.addr, align 8, !tbaa !5
  %308 = load ptr, ptr %complete_paths.addr, align 8, !tbaa !5
  %309 = load i32, ptr %depth.addr, align 4, !tbaa !12
  %add192 = add nsw i32 %309, 1
  %310 = load ptr, ptr %parent, align 8, !tbaa !5
  %311 = load ptr, ptr %queryptr.addr, align 8, !tbaa !5
  %312 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %313 = load ptr, ptr %mismatch_positions_alloc.addr, align 8, !tbaa !5
  %314 = load ptr, ptr %novel_diagonals_alloc.addr, align 8, !tbaa !5
  %315 = load ptr, ptr %localdb_alloc.addr, align 8, !tbaa !5
  %316 = load i32, ptr %streamspace_max_alloc.addr, align 4, !tbaa !12
  %317 = load ptr, ptr %streamspace_alloc.addr, align 8, !tbaa !5
  %318 = load ptr, ptr %streamptr_alloc.addr, align 8, !tbaa !5
  %319 = load ptr, ptr %streamsize_alloc.addr, align 8, !tbaa !5
  %320 = load ptr, ptr %mergeinfo.addr, align 8, !tbaa !5
  %321 = load ptr, ptr %indelinfo.addr, align 8, !tbaa !5
  %322 = load ptr, ptr %spliceinfo.addr, align 8, !tbaa !5
  %323 = load ptr, ptr %knownsplicing.addr, align 8, !tbaa !5
  %324 = load ptr, ptr %knownindels.addr, align 8, !tbaa !5
  %325 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %326 = load i32, ptr %chrnum.addr, align 4, !tbaa !12
  %327 = load i32, ptr %chroffset.addr, align 4, !tbaa !12
  %328 = load i32, ptr %chrhigh.addr, align 4, !tbaa !12
  %329 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %330 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %331 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %332 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %333 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  %334 = load ptr, ptr %vectorpool.addr, align 8, !tbaa !5
  %335 = load ptr, ptr %hitlistpool.addr, align 8, !tbaa !5
  %336 = load ptr, ptr %spliceendsgen.addr, align 8, !tbaa !5
  %337 = load i32, ptr %max_insertionlen.addr, align 4, !tbaa !12
  %338 = load i32, ptr %max_deletionlen.addr, align 4, !tbaa !12
  %339 = load i32, ptr %nmismatches_allowed.addr, align 4, !tbaa !12
  %340 = load i32, ptr %overall_end_distance.addr, align 4, !tbaa !12
  %341 = load i8, ptr %plusp.addr, align 1, !tbaa !14
  %342 = load i32, ptr %genestrand.addr, align 4, !tbaa !12
  %343 = load i32, ptr %try_sensedir.addr, align 4, !tbaa !12
  %344 = load i8, ptr %innerp.addr, align 1, !tbaa !14
  %345 = load i8, ptr %salvagep.addr, align 1, !tbaa !14
  %346 = load i32, ptr %pass.addr, align 4, !tbaa !14
  call void @compute_qend_local(ptr noundef %307, ptr noundef %308, i32 noundef %add192, ptr noundef %310, ptr noundef %311, i32 noundef %312, ptr noundef %313, ptr noundef %314, ptr noundef %315, i32 noundef %316, ptr noundef %317, ptr noundef %318, ptr noundef %319, ptr noundef %320, ptr noundef %321, ptr noundef %322, ptr noundef %323, ptr noundef %324, ptr noundef %325, i32 noundef %326, i32 noundef %327, i32 noundef %328, ptr noundef %329, ptr noundef %330, ptr noundef %331, ptr noundef %332, ptr noundef %333, ptr noundef %334, ptr noundef %335, ptr noundef %336, i32 noundef %337, i32 noundef %338, i32 noundef %339, i32 noundef %340, i8 noundef zeroext %341, i32 noundef %342, i32 noundef %343, i8 noundef zeroext %344, i8 noundef zeroext %345, i32 noundef %346)
  %347 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %348 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %349 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %350 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %351 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  call void @Path_free(ptr noundef %parent, ptr noundef %347, ptr noundef %348, ptr noundef %349, ptr noundef %350, ptr noundef %351)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %352 = load ptr, ptr %p, align 8, !tbaa !5
  %call193 = call ptr @List_next(ptr noundef %352)
  store ptr %call193, ptr %p, align 8, !tbaa !5
  br label %for.cond, !llvm.loop !65

for.end:                                          ; preds = %for.cond
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end194:                                        ; preds = %if.then12
  br label %if.end195

if.end195:                                        ; preds = %if.end194
  br label %if.end196

if.end196:                                        ; preds = %if.end195
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end196, %for.end, %if.else186, %if.then183, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %found_sensedir) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %pos3_nmismatches) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %medial_splice_nmismatches_0) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %nosplice_nmismatches) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %distal_nmismatches) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %distal_splice_positions) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %distal_probs) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %ambig_prob_3) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %ambig_probs_3) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %medial_splice_trimpos_0) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %nosplice_trimpos) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %trim_qends) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %spliceends) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %nspliceends) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %splicetype3) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr %splice3p) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %nmismatches_j) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %adj) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %trimpos) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %indel_pos) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %exon_origin) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %pos5) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %qend) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %univdiagonal) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %newpath) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %newpaths) #5
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal ptr @combine_leftright_paths(ptr noundef %found_score, ptr noundef %qstart_paths, ptr noundef %qend_paths, ptr noundef %query_compress, ptr noundef %query_compress_fwd, ptr noundef %query_compress_rev, ptr noundef %queryptr, i32 noundef %querylength, i8 noundef zeroext %plusp, i32 noundef %genestrand, i32 noundef %sensedir, i32 noundef %chrnum, i32 noundef %chroffset, i32 noundef %chrhigh, ptr noundef %mismatch_positions_alloc, ptr noundef %knownsplicing, ptr noundef %spliceendsgen, ptr noundef %intlistpool, ptr noundef %univcoordlistpool, ptr noundef %listpool, ptr noundef %pathpool, ptr noundef %transcriptpool, ptr noundef %vectorpool, ptr noundef %hitlistpool, i32 noundef %method, i32 noundef %nmismatches_allowed) #1 {
entry:
  %found_score.addr = alloca ptr, align 8
  %qstart_paths.addr = alloca ptr, align 8
  %qend_paths.addr = alloca ptr, align 8
  %query_compress.addr = alloca ptr, align 8
  %query_compress_fwd.addr = alloca ptr, align 8
  %query_compress_rev.addr = alloca ptr, align 8
  %queryptr.addr = alloca ptr, align 8
  %querylength.addr = alloca i32, align 4
  %plusp.addr = alloca i8, align 1
  %genestrand.addr = alloca i32, align 4
  %sensedir.addr = alloca i32, align 4
  %chrnum.addr = alloca i32, align 4
  %chroffset.addr = alloca i32, align 4
  %chrhigh.addr = alloca i32, align 4
  %mismatch_positions_alloc.addr = alloca ptr, align 8
  %knownsplicing.addr = alloca ptr, align 8
  %spliceendsgen.addr = alloca ptr, align 8
  %intlistpool.addr = alloca ptr, align 8
  %univcoordlistpool.addr = alloca ptr, align 8
  %listpool.addr = alloca ptr, align 8
  %pathpool.addr = alloca ptr, align 8
  %transcriptpool.addr = alloca ptr, align 8
  %vectorpool.addr = alloca ptr, align 8
  %hitlistpool.addr = alloca ptr, align 8
  %method.addr = alloca i32, align 4
  %nmismatches_allowed.addr = alloca i32, align 4
  %paths = alloca ptr, align 8
  %best_qstart_paths = alloca ptr, align 8
  %best_qend_paths = alloca ptr, align 8
  %a = alloca ptr, align 8
  %b = alloca ptr, align 8
  %path = alloca ptr, align 8
  %qstart_path = alloca ptr, align 8
  %qend_path = alloca ptr, align 8
  %best_nmatches = alloca i32, align 4
  %best_ref_nmatches = alloca i32, align 4
  %nmatches = alloca i32, align 4
  %best_splice_prob = alloca double, align 8
  %endpoints = alloca ptr, align 8
  %q = alloca ptr, align 8
  %univdiagonals = alloca ptr, align 8
  %u = alloca ptr, align 8
  %nmismatches = alloca ptr, align 8
  %ref_nmismatches = alloca ptr, align 8
  %s = alloca ptr, align 8
  %r = alloca ptr, align 8
  %junctions = alloca ptr, align 8
  %j = alloca ptr, align 8
  %junction = alloca ptr, align 8
  %qstart1 = alloca i32, align 4
  %qend1 = alloca i32, align 4
  %qstart2 = alloca i32, align 4
  %qend2 = alloca i32, align 4
  %middle_nmismatches = alloca i32, align 4
  %middle_ref_nmismatches = alloca i32, align 4
  %ignore_found_score = alloca i32, align 4
  %found_sensedir = alloca i32, align 4
  %trimpos = alloca i32, align 4
  %ninserts = alloca i32, align 4
  %exon_origin = alloca i32, align 4
  %qstart = alloca i32, align 4
  %qend = alloca i32, align 4
  %nmismatches_to_trimpos = alloca i32, align 4
  %splice5p = alloca i8, align 1
  %splice3p = alloca i8, align 1
  %splicetype5 = alloca i32, align 4
  %splicetype3 = alloca i32, align 4
  %ambig_prob_5 = alloca double, align 8
  %ambig_prob_3 = alloca double, align 8
  store ptr %found_score, ptr %found_score.addr, align 8, !tbaa !5
  store ptr %qstart_paths, ptr %qstart_paths.addr, align 8, !tbaa !5
  store ptr %qend_paths, ptr %qend_paths.addr, align 8, !tbaa !5
  store ptr %query_compress, ptr %query_compress.addr, align 8, !tbaa !5
  store ptr %query_compress_fwd, ptr %query_compress_fwd.addr, align 8, !tbaa !5
  store ptr %query_compress_rev, ptr %query_compress_rev.addr, align 8, !tbaa !5
  store ptr %queryptr, ptr %queryptr.addr, align 8, !tbaa !5
  store i32 %querylength, ptr %querylength.addr, align 4, !tbaa !12
  store i8 %plusp, ptr %plusp.addr, align 1, !tbaa !14
  store i32 %genestrand, ptr %genestrand.addr, align 4, !tbaa !12
  store i32 %sensedir, ptr %sensedir.addr, align 4, !tbaa !12
  store i32 %chrnum, ptr %chrnum.addr, align 4, !tbaa !12
  store i32 %chroffset, ptr %chroffset.addr, align 4, !tbaa !12
  store i32 %chrhigh, ptr %chrhigh.addr, align 4, !tbaa !12
  store ptr %mismatch_positions_alloc, ptr %mismatch_positions_alloc.addr, align 8, !tbaa !5
  store ptr %knownsplicing, ptr %knownsplicing.addr, align 8, !tbaa !5
  store ptr %spliceendsgen, ptr %spliceendsgen.addr, align 8, !tbaa !5
  store ptr %intlistpool, ptr %intlistpool.addr, align 8, !tbaa !5
  store ptr %univcoordlistpool, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  store ptr %listpool, ptr %listpool.addr, align 8, !tbaa !5
  store ptr %pathpool, ptr %pathpool.addr, align 8, !tbaa !5
  store ptr %transcriptpool, ptr %transcriptpool.addr, align 8, !tbaa !5
  store ptr %vectorpool, ptr %vectorpool.addr, align 8, !tbaa !5
  store ptr %hitlistpool, ptr %hitlistpool.addr, align 8, !tbaa !5
  store i32 %method, ptr %method.addr, align 4, !tbaa !14
  store i32 %nmismatches_allowed, ptr %nmismatches_allowed.addr, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 8, ptr %paths) #5
  store ptr null, ptr %paths, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %best_qstart_paths) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %best_qend_paths) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %a) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %path) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %qstart_path) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %qend_path) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %best_nmatches) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %best_ref_nmatches) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %nmatches) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %best_splice_prob) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %endpoints) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %q) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %univdiagonals) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %u) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %nmismatches) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %ref_nmismatches) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %junctions) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %junction) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %qstart1) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %qend1) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %qstart2) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %qend2) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %middle_nmismatches) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %middle_ref_nmismatches) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %ignore_found_score) #5
  %0 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  store i32 %0, ptr %ignore_found_score, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %found_sensedir) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %trimpos) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %ninserts) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %exon_origin) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %qstart) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %qend) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %nmismatches_to_trimpos) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr %splice5p) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr %splice3p) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %splicetype5) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %splicetype3) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %ambig_prob_5) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %ambig_prob_3) #5
  %1 = load ptr, ptr %qstart_paths.addr, align 8, !tbaa !5
  %call = call i32 @List_length(ptr noundef %1)
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %qstart_paths.addr, align 8, !tbaa !5
  %3 = load ptr, ptr %hitlistpool.addr, align 8, !tbaa !5
  %call1 = call ptr @Hitlist_copy(ptr noundef %2, ptr noundef %3)
  store ptr %call1, ptr %best_qstart_paths, align 8, !tbaa !5
  br label %if.end44

if.else:                                          ; preds = %entry
  store ptr null, ptr %best_qstart_paths, align 8, !tbaa !5
  store i32 0, ptr %best_nmatches, align 4, !tbaa !12
  store i32 0, ptr %best_ref_nmatches, align 4, !tbaa !12
  store double 0.000000e+00, ptr %best_splice_prob, align 8, !tbaa !44
  %4 = load ptr, ptr %qstart_paths.addr, align 8, !tbaa !5
  store ptr %4, ptr %a, align 8, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %5 = load ptr, ptr %a, align 8, !tbaa !5
  %cmp2 = icmp ne ptr %5, null
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %a, align 8, !tbaa !5
  %call3 = call ptr @List_head(ptr noundef %6)
  store ptr %call3, ptr %qstart_path, align 8, !tbaa !5
  %7 = load ptr, ptr %qstart_path, align 8, !tbaa !5
  %8 = load ptr, ptr %query_compress_fwd.addr, align 8, !tbaa !5
  %9 = load ptr, ptr %query_compress_rev.addr, align 8, !tbaa !5
  %call4 = call i32 @Path_eval_nmatches(ptr noundef %ignore_found_score, ptr noundef %7, ptr noundef %8, ptr noundef %9)
  store i32 %call4, ptr %nmatches, align 4, !tbaa !12
  %10 = load i32, ptr %nmatches, align 4, !tbaa !12
  %11 = load i32, ptr %best_nmatches, align 4, !tbaa !12
  %cmp5 = icmp slt i32 %10, %11
  br i1 %cmp5, label %if.then6, label %if.else7

if.then6:                                         ; preds = %for.body
  br label %if.end42

if.else7:                                         ; preds = %for.body
  %12 = load i32, ptr %nmatches, align 4, !tbaa !12
  %13 = load i32, ptr %best_nmatches, align 4, !tbaa !12
  %cmp8 = icmp sgt i32 %12, %13
  br i1 %cmp8, label %if.then9, label %if.else12

if.then9:                                         ; preds = %if.else7
  %14 = load ptr, ptr %hitlistpool.addr, align 8, !tbaa !5
  call void @Hitlistpool_free_list(ptr noundef %best_qstart_paths, ptr noundef %14)
  %15 = load ptr, ptr %hitlistpool.addr, align 8, !tbaa !5
  %16 = load ptr, ptr %qstart_path, align 8, !tbaa !5
  %call10 = call ptr @Path_expect_fwd(ptr noundef %16)
  %call11 = call ptr @Hitlist_push(ptr noundef null, ptr noundef %15, ptr noundef %call10)
  store ptr %call11, ptr %best_qstart_paths, align 8, !tbaa !5
  %17 = load i32, ptr %nmatches, align 4, !tbaa !12
  store i32 %17, ptr %best_nmatches, align 4, !tbaa !12
  %18 = load ptr, ptr %qstart_path, align 8, !tbaa !5
  %ref_nmatches = getelementptr inbounds %struct.Path_T, ptr %18, i32 0, i32 4
  %19 = load i32, ptr %ref_nmatches, align 8, !tbaa !66
  store i32 %19, ptr %best_ref_nmatches, align 4, !tbaa !12
  %20 = load ptr, ptr %qstart_path, align 8, !tbaa !5
  %junction_splice_prob = getelementptr inbounds %struct.Path_T, ptr %20, i32 0, i32 5
  %21 = load double, ptr %junction_splice_prob, align 8, !tbaa !67
  store double %21, ptr %best_splice_prob, align 8, !tbaa !44
  br label %if.end41

if.else12:                                        ; preds = %if.else7
  %22 = load ptr, ptr %qstart_path, align 8, !tbaa !5
  %ref_nmatches13 = getelementptr inbounds %struct.Path_T, ptr %22, i32 0, i32 4
  %23 = load i32, ptr %ref_nmatches13, align 8, !tbaa !66
  %24 = load i32, ptr %best_ref_nmatches, align 4, !tbaa !12
  %cmp14 = icmp slt i32 %23, %24
  br i1 %cmp14, label %if.then15, label %if.else16

if.then15:                                        ; preds = %if.else12
  br label %if.end40

if.else16:                                        ; preds = %if.else12
  %25 = load ptr, ptr %qstart_path, align 8, !tbaa !5
  %ref_nmatches17 = getelementptr inbounds %struct.Path_T, ptr %25, i32 0, i32 4
  %26 = load i32, ptr %ref_nmatches17, align 8, !tbaa !66
  %27 = load i32, ptr %best_ref_nmatches, align 4, !tbaa !12
  %cmp18 = icmp sgt i32 %26, %27
  br i1 %cmp18, label %if.then19, label %if.else24

if.then19:                                        ; preds = %if.else16
  %28 = load ptr, ptr %hitlistpool.addr, align 8, !tbaa !5
  call void @Hitlistpool_free_list(ptr noundef %best_qstart_paths, ptr noundef %28)
  %29 = load ptr, ptr %hitlistpool.addr, align 8, !tbaa !5
  %30 = load ptr, ptr %qstart_path, align 8, !tbaa !5
  %call20 = call ptr @Path_expect_fwd(ptr noundef %30)
  %call21 = call ptr @Hitlist_push(ptr noundef null, ptr noundef %29, ptr noundef %call20)
  store ptr %call21, ptr %best_qstart_paths, align 8, !tbaa !5
  %31 = load ptr, ptr %qstart_path, align 8, !tbaa !5
  %ref_nmatches22 = getelementptr inbounds %struct.Path_T, ptr %31, i32 0, i32 4
  %32 = load i32, ptr %ref_nmatches22, align 8, !tbaa !66
  store i32 %32, ptr %best_ref_nmatches, align 4, !tbaa !12
  %33 = load ptr, ptr %qstart_path, align 8, !tbaa !5
  %junction_splice_prob23 = getelementptr inbounds %struct.Path_T, ptr %33, i32 0, i32 5
  %34 = load double, ptr %junction_splice_prob23, align 8, !tbaa !67
  store double %34, ptr %best_splice_prob, align 8, !tbaa !44
  br label %if.end39

if.else24:                                        ; preds = %if.else16
  %35 = load ptr, ptr %qstart_path, align 8, !tbaa !5
  %junction_splice_prob25 = getelementptr inbounds %struct.Path_T, ptr %35, i32 0, i32 5
  %36 = load double, ptr %junction_splice_prob25, align 8, !tbaa !67
  %37 = load double, ptr %best_splice_prob, align 8, !tbaa !44
  %cmp26 = fcmp olt double %36, %37
  br i1 %cmp26, label %if.then27, label %if.else28

if.then27:                                        ; preds = %if.else24
  br label %if.end38

if.else28:                                        ; preds = %if.else24
  %38 = load ptr, ptr %qstart_path, align 8, !tbaa !5
  %junction_splice_prob29 = getelementptr inbounds %struct.Path_T, ptr %38, i32 0, i32 5
  %39 = load double, ptr %junction_splice_prob29, align 8, !tbaa !67
  %40 = load double, ptr %best_splice_prob, align 8, !tbaa !44
  %cmp30 = fcmp ogt double %39, %40
  br i1 %cmp30, label %if.then31, label %if.else35

if.then31:                                        ; preds = %if.else28
  %41 = load ptr, ptr %hitlistpool.addr, align 8, !tbaa !5
  call void @Hitlistpool_free_list(ptr noundef %best_qstart_paths, ptr noundef %41)
  %42 = load ptr, ptr %hitlistpool.addr, align 8, !tbaa !5
  %43 = load ptr, ptr %qstart_path, align 8, !tbaa !5
  %call32 = call ptr @Path_expect_fwd(ptr noundef %43)
  %call33 = call ptr @Hitlist_push(ptr noundef null, ptr noundef %42, ptr noundef %call32)
  store ptr %call33, ptr %best_qstart_paths, align 8, !tbaa !5
  %44 = load ptr, ptr %qstart_path, align 8, !tbaa !5
  %junction_splice_prob34 = getelementptr inbounds %struct.Path_T, ptr %44, i32 0, i32 5
  %45 = load double, ptr %junction_splice_prob34, align 8, !tbaa !67
  store double %45, ptr %best_splice_prob, align 8, !tbaa !44
  br label %if.end

if.else35:                                        ; preds = %if.else28
  %46 = load ptr, ptr %best_qstart_paths, align 8, !tbaa !5
  %47 = load ptr, ptr %hitlistpool.addr, align 8, !tbaa !5
  %48 = load ptr, ptr %qstart_path, align 8, !tbaa !5
  %call36 = call ptr @Path_expect_fwd(ptr noundef %48)
  %call37 = call ptr @Hitlist_push(ptr noundef %46, ptr noundef %47, ptr noundef %call36)
  store ptr %call37, ptr %best_qstart_paths, align 8, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else35, %if.then31
  br label %if.end38

if.end38:                                         ; preds = %if.end, %if.then27
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %if.then19
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.then15
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.then9
  br label %if.end42

if.end42:                                         ; preds = %if.end41, %if.then6
  br label %for.inc

for.inc:                                          ; preds = %if.end42
  %49 = load ptr, ptr %a, align 8, !tbaa !5
  %call43 = call ptr @List_next(ptr noundef %49)
  store ptr %call43, ptr %a, align 8, !tbaa !5
  br label %for.cond, !llvm.loop !68

for.end:                                          ; preds = %for.cond
  br label %if.end44

if.end44:                                         ; preds = %for.end, %if.then
  %50 = load ptr, ptr %qend_paths.addr, align 8, !tbaa !5
  %call45 = call i32 @List_length(ptr noundef %50)
  %cmp46 = icmp eq i32 %call45, 1
  br i1 %cmp46, label %if.then47, label %if.else49

if.then47:                                        ; preds = %if.end44
  %51 = load ptr, ptr %qend_paths.addr, align 8, !tbaa !5
  %52 = load ptr, ptr %hitlistpool.addr, align 8, !tbaa !5
  %call48 = call ptr @Hitlist_copy(ptr noundef %51, ptr noundef %52)
  store ptr %call48, ptr %best_qend_paths, align 8, !tbaa !5
  br label %if.end101

if.else49:                                        ; preds = %if.end44
  store ptr null, ptr %best_qend_paths, align 8, !tbaa !5
  store i32 0, ptr %best_nmatches, align 4, !tbaa !12
  store i32 0, ptr %best_ref_nmatches, align 4, !tbaa !12
  store double 0.000000e+00, ptr %best_splice_prob, align 8, !tbaa !44
  %53 = load ptr, ptr %qend_paths.addr, align 8, !tbaa !5
  store ptr %53, ptr %b, align 8, !tbaa !5
  br label %for.cond50

for.cond50:                                       ; preds = %for.inc98, %if.else49
  %54 = load ptr, ptr %b, align 8, !tbaa !5
  %cmp51 = icmp ne ptr %54, null
  br i1 %cmp51, label %for.body52, label %for.end100

for.body52:                                       ; preds = %for.cond50
  %55 = load ptr, ptr %b, align 8, !tbaa !5
  %call53 = call ptr @List_head(ptr noundef %55)
  store ptr %call53, ptr %qend_path, align 8, !tbaa !5
  %56 = load ptr, ptr %qend_path, align 8, !tbaa !5
  %call54 = call ptr @Path_reverse(ptr noundef %56, i8 noundef zeroext 1)
  %57 = load ptr, ptr %qend_path, align 8, !tbaa !5
  %58 = load ptr, ptr %query_compress_fwd.addr, align 8, !tbaa !5
  %59 = load ptr, ptr %query_compress_rev.addr, align 8, !tbaa !5
  %call55 = call i32 @Path_eval_nmatches(ptr noundef %ignore_found_score, ptr noundef %57, ptr noundef %58, ptr noundef %59)
  store i32 %call55, ptr %nmatches, align 4, !tbaa !12
  %60 = load ptr, ptr %qend_path, align 8, !tbaa !5
  %call56 = call ptr @Path_reverse(ptr noundef %60, i8 noundef zeroext 0)
  %61 = load i32, ptr %nmatches, align 4, !tbaa !12
  %62 = load i32, ptr %best_nmatches, align 4, !tbaa !12
  %cmp57 = icmp slt i32 %61, %62
  br i1 %cmp57, label %if.then58, label %if.else59

if.then58:                                        ; preds = %for.body52
  br label %if.end97

if.else59:                                        ; preds = %for.body52
  %63 = load i32, ptr %nmatches, align 4, !tbaa !12
  %64 = load i32, ptr %best_nmatches, align 4, !tbaa !12
  %cmp60 = icmp sgt i32 %63, %64
  br i1 %cmp60, label %if.then61, label %if.else66

if.then61:                                        ; preds = %if.else59
  %65 = load ptr, ptr %hitlistpool.addr, align 8, !tbaa !5
  call void @Hitlistpool_free_list(ptr noundef %best_qend_paths, ptr noundef %65)
  %66 = load ptr, ptr %hitlistpool.addr, align 8, !tbaa !5
  %67 = load ptr, ptr %qend_path, align 8, !tbaa !5
  %call62 = call ptr @Path_expect_rev(ptr noundef %67)
  %call63 = call ptr @Hitlist_push(ptr noundef null, ptr noundef %66, ptr noundef %call62)
  store ptr %call63, ptr %best_qend_paths, align 8, !tbaa !5
  %68 = load i32, ptr %nmatches, align 4, !tbaa !12
  store i32 %68, ptr %best_nmatches, align 4, !tbaa !12
  %69 = load ptr, ptr %qend_path, align 8, !tbaa !5
  %ref_nmatches64 = getelementptr inbounds %struct.Path_T, ptr %69, i32 0, i32 4
  %70 = load i32, ptr %ref_nmatches64, align 8, !tbaa !66
  store i32 %70, ptr %best_ref_nmatches, align 4, !tbaa !12
  %71 = load ptr, ptr %qend_path, align 8, !tbaa !5
  %junction_splice_prob65 = getelementptr inbounds %struct.Path_T, ptr %71, i32 0, i32 5
  %72 = load double, ptr %junction_splice_prob65, align 8, !tbaa !67
  store double %72, ptr %best_splice_prob, align 8, !tbaa !44
  br label %if.end96

if.else66:                                        ; preds = %if.else59
  %73 = load ptr, ptr %qend_path, align 8, !tbaa !5
  %ref_nmatches67 = getelementptr inbounds %struct.Path_T, ptr %73, i32 0, i32 4
  %74 = load i32, ptr %ref_nmatches67, align 8, !tbaa !66
  %75 = load i32, ptr %best_ref_nmatches, align 4, !tbaa !12
  %cmp68 = icmp slt i32 %74, %75
  br i1 %cmp68, label %if.then69, label %if.else70

if.then69:                                        ; preds = %if.else66
  br label %if.end95

if.else70:                                        ; preds = %if.else66
  %76 = load ptr, ptr %qend_path, align 8, !tbaa !5
  %ref_nmatches71 = getelementptr inbounds %struct.Path_T, ptr %76, i32 0, i32 4
  %77 = load i32, ptr %ref_nmatches71, align 8, !tbaa !66
  %78 = load i32, ptr %best_ref_nmatches, align 4, !tbaa !12
  %cmp72 = icmp sgt i32 %77, %78
  br i1 %cmp72, label %if.then73, label %if.else78

if.then73:                                        ; preds = %if.else70
  %79 = load ptr, ptr %hitlistpool.addr, align 8, !tbaa !5
  call void @Hitlistpool_free_list(ptr noundef %best_qend_paths, ptr noundef %79)
  %80 = load ptr, ptr %hitlistpool.addr, align 8, !tbaa !5
  %81 = load ptr, ptr %qend_path, align 8, !tbaa !5
  %call74 = call ptr @Path_expect_rev(ptr noundef %81)
  %call75 = call ptr @Hitlist_push(ptr noundef null, ptr noundef %80, ptr noundef %call74)
  store ptr %call75, ptr %best_qend_paths, align 8, !tbaa !5
  %82 = load ptr, ptr %qend_path, align 8, !tbaa !5
  %ref_nmatches76 = getelementptr inbounds %struct.Path_T, ptr %82, i32 0, i32 4
  %83 = load i32, ptr %ref_nmatches76, align 8, !tbaa !66
  store i32 %83, ptr %best_ref_nmatches, align 4, !tbaa !12
  %84 = load ptr, ptr %qend_path, align 8, !tbaa !5
  %junction_splice_prob77 = getelementptr inbounds %struct.Path_T, ptr %84, i32 0, i32 5
  %85 = load double, ptr %junction_splice_prob77, align 8, !tbaa !67
  store double %85, ptr %best_splice_prob, align 8, !tbaa !44
  br label %if.end94

if.else78:                                        ; preds = %if.else70
  %86 = load ptr, ptr %qend_path, align 8, !tbaa !5
  %junction_splice_prob79 = getelementptr inbounds %struct.Path_T, ptr %86, i32 0, i32 5
  %87 = load double, ptr %junction_splice_prob79, align 8, !tbaa !67
  %88 = load double, ptr %best_splice_prob, align 8, !tbaa !44
  %cmp80 = fcmp olt double %87, %88
  br i1 %cmp80, label %if.then81, label %if.else82

if.then81:                                        ; preds = %if.else78
  br label %if.end93

if.else82:                                        ; preds = %if.else78
  %89 = load ptr, ptr %qend_path, align 8, !tbaa !5
  %junction_splice_prob83 = getelementptr inbounds %struct.Path_T, ptr %89, i32 0, i32 5
  %90 = load double, ptr %junction_splice_prob83, align 8, !tbaa !67
  %91 = load double, ptr %best_splice_prob, align 8, !tbaa !44
  %cmp84 = fcmp ogt double %90, %91
  br i1 %cmp84, label %if.then85, label %if.else89

if.then85:                                        ; preds = %if.else82
  %92 = load ptr, ptr %hitlistpool.addr, align 8, !tbaa !5
  call void @Hitlistpool_free_list(ptr noundef %best_qend_paths, ptr noundef %92)
  %93 = load ptr, ptr %hitlistpool.addr, align 8, !tbaa !5
  %94 = load ptr, ptr %qend_path, align 8, !tbaa !5
  %call86 = call ptr @Path_expect_rev(ptr noundef %94)
  %call87 = call ptr @Hitlist_push(ptr noundef null, ptr noundef %93, ptr noundef %call86)
  store ptr %call87, ptr %best_qend_paths, align 8, !tbaa !5
  %95 = load ptr, ptr %qend_path, align 8, !tbaa !5
  %junction_splice_prob88 = getelementptr inbounds %struct.Path_T, ptr %95, i32 0, i32 5
  %96 = load double, ptr %junction_splice_prob88, align 8, !tbaa !67
  store double %96, ptr %best_splice_prob, align 8, !tbaa !44
  br label %if.end92

if.else89:                                        ; preds = %if.else82
  %97 = load ptr, ptr %best_qend_paths, align 8, !tbaa !5
  %98 = load ptr, ptr %hitlistpool.addr, align 8, !tbaa !5
  %99 = load ptr, ptr %qend_path, align 8, !tbaa !5
  %call90 = call ptr @Path_expect_rev(ptr noundef %99)
  %call91 = call ptr @Hitlist_push(ptr noundef %97, ptr noundef %98, ptr noundef %call90)
  store ptr %call91, ptr %best_qend_paths, align 8, !tbaa !5
  br label %if.end92

if.end92:                                         ; preds = %if.else89, %if.then85
  br label %if.end93

if.end93:                                         ; preds = %if.end92, %if.then81
  br label %if.end94

if.end94:                                         ; preds = %if.end93, %if.then73
  br label %if.end95

if.end95:                                         ; preds = %if.end94, %if.then69
  br label %if.end96

if.end96:                                         ; preds = %if.end95, %if.then61
  br label %if.end97

if.end97:                                         ; preds = %if.end96, %if.then58
  br label %for.inc98

for.inc98:                                        ; preds = %if.end97
  %100 = load ptr, ptr %b, align 8, !tbaa !5
  %call99 = call ptr @List_next(ptr noundef %100)
  store ptr %call99, ptr %b, align 8, !tbaa !5
  br label %for.cond50, !llvm.loop !69

for.end100:                                       ; preds = %for.cond50
  br label %if.end101

if.end101:                                        ; preds = %for.end100, %if.then47
  %101 = load ptr, ptr %best_qstart_paths, align 8, !tbaa !5
  store ptr %101, ptr %a, align 8, !tbaa !5
  br label %for.cond102

for.cond102:                                      ; preds = %for.inc359, %if.end101
  %102 = load ptr, ptr %a, align 8, !tbaa !5
  %cmp103 = icmp ne ptr %102, null
  br i1 %cmp103, label %for.body104, label %for.end361

for.body104:                                      ; preds = %for.cond102
  %103 = load ptr, ptr %a, align 8, !tbaa !5
  %call105 = call ptr @List_head(ptr noundef %103)
  store ptr %call105, ptr %qstart_path, align 8, !tbaa !5
  %104 = load ptr, ptr %best_qend_paths, align 8, !tbaa !5
  store ptr %104, ptr %b, align 8, !tbaa !5
  br label %for.cond106

for.cond106:                                      ; preds = %for.inc356, %for.body104
  %105 = load ptr, ptr %b, align 8, !tbaa !5
  %cmp107 = icmp ne ptr %105, null
  br i1 %cmp107, label %for.body108, label %for.end358

for.body108:                                      ; preds = %for.cond106
  %106 = load ptr, ptr %b, align 8, !tbaa !5
  %call109 = call ptr @List_head(ptr noundef %106)
  store ptr %call109, ptr %qend_path, align 8, !tbaa !5
  store ptr null, ptr %univdiagonals, align 8, !tbaa !5
  store ptr null, ptr %nmismatches, align 8, !tbaa !5
  store ptr null, ptr %ref_nmismatches, align 8, !tbaa !5
  store ptr null, ptr %junctions, align 8, !tbaa !5
  %107 = load ptr, ptr %qstart_path, align 8, !tbaa !5
  %endpoints110 = getelementptr inbounds %struct.Path_T, ptr %107, i32 0, i32 17
  %108 = load ptr, ptr %endpoints110, align 8, !tbaa !40
  %call111 = call i32 @Intlist_last_value(ptr noundef %108)
  store i32 %call111, ptr %qend1, align 4, !tbaa !12
  %109 = load ptr, ptr %qstart_path, align 8, !tbaa !5
  %endpoints112 = getelementptr inbounds %struct.Path_T, ptr %109, i32 0, i32 17
  %110 = load ptr, ptr %endpoints112, align 8, !tbaa !40
  %call113 = call i32 @Intlist_penultimate_value(ptr noundef %110)
  store i32 %call113, ptr %qstart1, align 4, !tbaa !12
  %111 = load ptr, ptr %qend_path, align 8, !tbaa !5
  %endpoints114 = getelementptr inbounds %struct.Path_T, ptr %111, i32 0, i32 17
  %112 = load ptr, ptr %endpoints114, align 8, !tbaa !40
  %call115 = call i32 @Intlist_last_value(ptr noundef %112)
  store i32 %call115, ptr %qstart2, align 4, !tbaa !12
  %113 = load ptr, ptr %qend_path, align 8, !tbaa !5
  %endpoints116 = getelementptr inbounds %struct.Path_T, ptr %113, i32 0, i32 17
  %114 = load ptr, ptr %endpoints116, align 8, !tbaa !40
  %call117 = call i32 @Intlist_penultimate_value(ptr noundef %114)
  store i32 %call117, ptr %qend2, align 4, !tbaa !12
  %115 = load ptr, ptr %qstart_path, align 8, !tbaa !5
  %endpoints118 = getelementptr inbounds %struct.Path_T, ptr %115, i32 0, i32 17
  %116 = load ptr, ptr %endpoints118, align 8, !tbaa !40
  store ptr %116, ptr %q, align 8, !tbaa !5
  %117 = load ptr, ptr %qstart_path, align 8, !tbaa !5
  %univdiagonals119 = getelementptr inbounds %struct.Path_T, ptr %117, i32 0, i32 18
  %118 = load ptr, ptr %univdiagonals119, align 8, !tbaa !36
  store ptr %118, ptr %u, align 8, !tbaa !5
  %119 = load ptr, ptr %qstart_path, align 8, !tbaa !5
  %nmismatches120 = getelementptr inbounds %struct.Path_T, ptr %119, i32 0, i32 19
  %120 = load ptr, ptr %nmismatches120, align 8, !tbaa !41
  store ptr %120, ptr %s, align 8, !tbaa !5
  %121 = load ptr, ptr %qstart_path, align 8, !tbaa !5
  %ref_nmismatches121 = getelementptr inbounds %struct.Path_T, ptr %121, i32 0, i32 20
  %122 = load ptr, ptr %ref_nmismatches121, align 8, !tbaa !42
  store ptr %122, ptr %r, align 8, !tbaa !5
  %123 = load ptr, ptr %qstart_path, align 8, !tbaa !5
  %junctions122 = getelementptr inbounds %struct.Path_T, ptr %123, i32 0, i32 21
  %124 = load ptr, ptr %junctions122, align 8, !tbaa !43
  store ptr %124, ptr %j, align 8, !tbaa !5
  store ptr null, ptr %junction, align 8, !tbaa !5
  %125 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %126 = load ptr, ptr %q, align 8, !tbaa !5
  %call123 = call i32 @Intlist_head(ptr noundef %126)
  %call124 = call ptr @Intlistpool_push(ptr noundef null, ptr noundef %125, i32 noundef %call123)
  store ptr %call124, ptr %endpoints, align 8, !tbaa !5
  %127 = load ptr, ptr %q, align 8, !tbaa !5
  %call125 = call ptr @Intlist_next(ptr noundef %127)
  store ptr %call125, ptr %q, align 8, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body108
  %128 = load ptr, ptr %j, align 8, !tbaa !5
  %cmp126 = icmp ne ptr %128, null
  br i1 %cmp126, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %129 = load ptr, ptr %endpoints, align 8, !tbaa !5
  %130 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %131 = load ptr, ptr %q, align 8, !tbaa !5
  %call127 = call i32 @Intlist_head(ptr noundef %131)
  %call128 = call ptr @Intlistpool_push(ptr noundef %129, ptr noundef %130, i32 noundef %call127)
  store ptr %call128, ptr %endpoints, align 8, !tbaa !5
  %132 = load ptr, ptr %univdiagonals, align 8, !tbaa !5
  %133 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %134 = load ptr, ptr %u, align 8, !tbaa !5
  %call129 = call i32 @Uintlist_head(ptr noundef %134)
  %call130 = call ptr @Uintlistpool_push(ptr noundef %132, ptr noundef %133, i32 noundef %call129)
  store ptr %call130, ptr %univdiagonals, align 8, !tbaa !5
  %135 = load ptr, ptr %nmismatches, align 8, !tbaa !5
  %136 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %137 = load ptr, ptr %s, align 8, !tbaa !5
  %call131 = call i32 @Intlist_head(ptr noundef %137)
  %call132 = call ptr @Intlistpool_push(ptr noundef %135, ptr noundef %136, i32 noundef %call131)
  store ptr %call132, ptr %nmismatches, align 8, !tbaa !5
  %138 = load ptr, ptr %ref_nmismatches, align 8, !tbaa !5
  %139 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %140 = load ptr, ptr %r, align 8, !tbaa !5
  %call133 = call i32 @Intlist_head(ptr noundef %140)
  %call134 = call ptr @Intlistpool_push(ptr noundef %138, ptr noundef %139, i32 noundef %call133)
  store ptr %call134, ptr %ref_nmismatches, align 8, !tbaa !5
  %141 = load ptr, ptr %junctions, align 8, !tbaa !5
  %142 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %143 = load ptr, ptr %j, align 8, !tbaa !5
  %call135 = call ptr @List_head(ptr noundef %143)
  %144 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %call136 = call ptr @Junction_copy(ptr noundef %call135, ptr noundef %144)
  %call137 = call ptr @Listpool_push(ptr noundef %141, ptr noundef %142, ptr noundef %call136)
  store ptr %call137, ptr %junctions, align 8, !tbaa !5
  %145 = load ptr, ptr %q, align 8, !tbaa !5
  %call138 = call ptr @Intlist_next(ptr noundef %145)
  store ptr %call138, ptr %q, align 8, !tbaa !5
  %146 = load ptr, ptr %u, align 8, !tbaa !5
  %call139 = call ptr @Uintlist_next(ptr noundef %146)
  store ptr %call139, ptr %u, align 8, !tbaa !5
  %147 = load ptr, ptr %s, align 8, !tbaa !5
  %call140 = call ptr @Intlist_next(ptr noundef %147)
  store ptr %call140, ptr %s, align 8, !tbaa !5
  %148 = load ptr, ptr %r, align 8, !tbaa !5
  %call141 = call ptr @Intlist_next(ptr noundef %148)
  store ptr %call141, ptr %r, align 8, !tbaa !5
  %149 = load ptr, ptr %j, align 8, !tbaa !5
  %call142 = call ptr @List_head(ptr noundef %149)
  store ptr %call142, ptr %junction, align 8, !tbaa !5
  %150 = load ptr, ptr %j, align 8, !tbaa !5
  %call143 = call ptr @List_next(ptr noundef %150)
  store ptr %call143, ptr %j, align 8, !tbaa !5
  br label %while.cond, !llvm.loop !70

while.end:                                        ; preds = %while.cond
  %151 = load ptr, ptr %endpoints, align 8, !tbaa !5
  %call144 = call i32 @Intlist_head(ptr noundef %151)
  store i32 %call144, ptr %qstart1, align 4, !tbaa !12
  %152 = load ptr, ptr %junction, align 8, !tbaa !5
  %cmp145 = icmp ne ptr %152, null
  br i1 %cmp145, label %if.then146, label %if.end148

if.then146:                                       ; preds = %while.end
  %153 = load ptr, ptr %junction, align 8, !tbaa !5
  %call147 = call i32 @Junction_ninserts(ptr noundef %153)
  %154 = load i32, ptr %qstart1, align 4, !tbaa !12
  %add = add nsw i32 %154, %call147
  store i32 %add, ptr %qstart1, align 4, !tbaa !12
  br label %if.end148

if.end148:                                        ; preds = %if.then146, %while.end
  %155 = load ptr, ptr %q, align 8, !tbaa !5
  %call149 = call i32 @Intlist_head(ptr noundef %155)
  store i32 %call149, ptr %qend1, align 4, !tbaa !12
  %156 = load ptr, ptr %qend_path, align 8, !tbaa !5
  %call150 = call ptr @Path_reverse(ptr noundef %156, i8 noundef zeroext 1)
  %157 = load ptr, ptr %qend_path, align 8, !tbaa !5
  %endpoints151 = getelementptr inbounds %struct.Path_T, ptr %157, i32 0, i32 17
  %158 = load ptr, ptr %endpoints151, align 8, !tbaa !40
  %call152 = call i32 @Intlist_head(ptr noundef %158)
  store i32 %call152, ptr %qstart2, align 4, !tbaa !12
  %159 = load ptr, ptr %qend_path, align 8, !tbaa !5
  %endpoints153 = getelementptr inbounds %struct.Path_T, ptr %159, i32 0, i32 17
  %160 = load ptr, ptr %endpoints153, align 8, !tbaa !40
  %call154 = call ptr @Intlist_next(ptr noundef %160)
  %call155 = call i32 @Intlist_head(ptr noundef %call154)
  store i32 %call155, ptr %qend2, align 4, !tbaa !12
  %161 = load i32, ptr %qend2, align 4, !tbaa !12
  %162 = load i32, ptr %qstart1, align 4, !tbaa !12
  %cmp156 = icmp sle i32 %161, %162
  br i1 %cmp156, label %if.then157, label %if.else158

if.then157:                                       ; preds = %if.end148
  %163 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  call void @Intlistpool_free_list(ptr noundef %endpoints, ptr noundef %163)
  %164 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  call void @Uintlistpool_free_list(ptr noundef %univdiagonals, ptr noundef %164)
  %165 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  call void @Intlistpool_free_list(ptr noundef %nmismatches, ptr noundef %165)
  %166 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  call void @Intlistpool_free_list(ptr noundef %ref_nmismatches, ptr noundef %166)
  %167 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %168 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  call void @Junction_list_gc(ptr noundef %junctions, ptr noundef %167, ptr noundef %168)
  br label %if.end354

if.else158:                                       ; preds = %if.end148
  %169 = load ptr, ptr %endpoints, align 8, !tbaa !5
  %170 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %171 = load i32, ptr %qend2, align 4, !tbaa !12
  %call159 = call ptr @Intlistpool_push(ptr noundef %169, ptr noundef %170, i32 noundef %171)
  store ptr %call159, ptr %endpoints, align 8, !tbaa !5
  %172 = load ptr, ptr %univdiagonals, align 8, !tbaa !5
  %173 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %174 = load ptr, ptr %u, align 8, !tbaa !5
  %call160 = call i32 @Uintlist_head(ptr noundef %174)
  %call161 = call ptr @Uintlistpool_push(ptr noundef %172, ptr noundef %173, i32 noundef %call160)
  store ptr %call161, ptr %univdiagonals, align 8, !tbaa !5
  %175 = load i32, ptr %qstart1, align 4, !tbaa !12
  %176 = load i32, ptr %qstart2, align 4, !tbaa !12
  %cmp162 = icmp eq i32 %175, %176
  br i1 %cmp162, label %land.lhs.true, label %if.else177

land.lhs.true:                                    ; preds = %if.else158
  %177 = load i32, ptr %qend1, align 4, !tbaa !12
  %178 = load i32, ptr %qend2, align 4, !tbaa !12
  %cmp163 = icmp eq i32 %177, %178
  br i1 %cmp163, label %if.then164, label %if.else177

if.then164:                                       ; preds = %land.lhs.true
  %179 = load ptr, ptr %s, align 8, !tbaa !5
  %call165 = call i32 @Intlist_head(ptr noundef %179)
  store i32 %call165, ptr %middle_nmismatches, align 4, !tbaa !12
  %cmp166 = icmp eq i32 %call165, -1
  br i1 %cmp166, label %if.then167, label %if.end170

if.then167:                                       ; preds = %if.then164
  %180 = load ptr, ptr %qend_path, align 8, !tbaa !5
  %nmismatches168 = getelementptr inbounds %struct.Path_T, ptr %180, i32 0, i32 19
  %181 = load ptr, ptr %nmismatches168, align 8, !tbaa !41
  %call169 = call i32 @Intlist_head(ptr noundef %181)
  store i32 %call169, ptr %middle_nmismatches, align 4, !tbaa !12
  br label %if.end170

if.end170:                                        ; preds = %if.then167, %if.then164
  %182 = load ptr, ptr %r, align 8, !tbaa !5
  %call171 = call i32 @Intlist_head(ptr noundef %182)
  store i32 %call171, ptr %middle_ref_nmismatches, align 4, !tbaa !12
  %cmp172 = icmp eq i32 %call171, -1
  br i1 %cmp172, label %if.then173, label %if.end176

if.then173:                                       ; preds = %if.end170
  %183 = load ptr, ptr %qend_path, align 8, !tbaa !5
  %ref_nmismatches174 = getelementptr inbounds %struct.Path_T, ptr %183, i32 0, i32 20
  %184 = load ptr, ptr %ref_nmismatches174, align 8, !tbaa !42
  %call175 = call i32 @Intlist_head(ptr noundef %184)
  store i32 %call175, ptr %middle_ref_nmismatches, align 4, !tbaa !12
  br label %if.end176

if.end176:                                        ; preds = %if.then173, %if.end170
  br label %if.end192

if.else177:                                       ; preds = %land.lhs.true, %if.else158
  %185 = load i32, ptr %qstart1, align 4, !tbaa !12
  %186 = load i32, ptr %qstart2, align 4, !tbaa !12
  %cmp178 = icmp eq i32 %185, %186
  br i1 %cmp178, label %if.then179, label %if.else184

if.then179:                                       ; preds = %if.else177
  %187 = load ptr, ptr %qend_path, align 8, !tbaa !5
  %nmismatches180 = getelementptr inbounds %struct.Path_T, ptr %187, i32 0, i32 19
  %188 = load ptr, ptr %nmismatches180, align 8, !tbaa !41
  %call181 = call i32 @Intlist_head(ptr noundef %188)
  store i32 %call181, ptr %middle_nmismatches, align 4, !tbaa !12
  %189 = load ptr, ptr %qend_path, align 8, !tbaa !5
  %ref_nmismatches182 = getelementptr inbounds %struct.Path_T, ptr %189, i32 0, i32 20
  %190 = load ptr, ptr %ref_nmismatches182, align 8, !tbaa !42
  %call183 = call i32 @Intlist_head(ptr noundef %190)
  store i32 %call183, ptr %middle_ref_nmismatches, align 4, !tbaa !12
  br label %if.end191

if.else184:                                       ; preds = %if.else177
  %191 = load i32, ptr %qend1, align 4, !tbaa !12
  %192 = load i32, ptr %qend2, align 4, !tbaa !12
  %cmp185 = icmp eq i32 %191, %192
  br i1 %cmp185, label %if.then186, label %if.else189

if.then186:                                       ; preds = %if.else184
  %193 = load ptr, ptr %s, align 8, !tbaa !5
  %call187 = call i32 @Intlist_head(ptr noundef %193)
  store i32 %call187, ptr %middle_nmismatches, align 4, !tbaa !12
  %194 = load ptr, ptr %r, align 8, !tbaa !5
  %call188 = call i32 @Intlist_head(ptr noundef %194)
  store i32 %call188, ptr %middle_ref_nmismatches, align 4, !tbaa !12
  br label %if.end190

if.else189:                                       ; preds = %if.else184
  store i32 -1, ptr %middle_nmismatches, align 4, !tbaa !12
  store i32 -1, ptr %middle_ref_nmismatches, align 4, !tbaa !12
  br label %if.end190

if.end190:                                        ; preds = %if.else189, %if.then186
  br label %if.end191

if.end191:                                        ; preds = %if.end190, %if.then179
  br label %if.end192

if.end192:                                        ; preds = %if.end191, %if.end176
  %195 = load ptr, ptr %nmismatches, align 8, !tbaa !5
  %196 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %197 = load i32, ptr %middle_nmismatches, align 4, !tbaa !12
  %call193 = call ptr @Intlistpool_push(ptr noundef %195, ptr noundef %196, i32 noundef %197)
  store ptr %call193, ptr %nmismatches, align 8, !tbaa !5
  %198 = load ptr, ptr %ref_nmismatches, align 8, !tbaa !5
  %199 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %200 = load i32, ptr %middle_ref_nmismatches, align 4, !tbaa !12
  %call194 = call ptr @Intlistpool_push(ptr noundef %198, ptr noundef %199, i32 noundef %200)
  store ptr %call194, ptr %ref_nmismatches, align 8, !tbaa !5
  %201 = load ptr, ptr %qend_path, align 8, !tbaa !5
  %endpoints195 = getelementptr inbounds %struct.Path_T, ptr %201, i32 0, i32 17
  %202 = load ptr, ptr %endpoints195, align 8, !tbaa !40
  %call196 = call ptr @Intlist_next(ptr noundef %202)
  store ptr %call196, ptr %q, align 8, !tbaa !5
  %203 = load ptr, ptr %qend_path, align 8, !tbaa !5
  %univdiagonals197 = getelementptr inbounds %struct.Path_T, ptr %203, i32 0, i32 18
  %204 = load ptr, ptr %univdiagonals197, align 8, !tbaa !36
  store ptr %204, ptr %u, align 8, !tbaa !5
  %205 = load ptr, ptr %qend_path, align 8, !tbaa !5
  %nmismatches198 = getelementptr inbounds %struct.Path_T, ptr %205, i32 0, i32 19
  %206 = load ptr, ptr %nmismatches198, align 8, !tbaa !41
  store ptr %206, ptr %s, align 8, !tbaa !5
  %207 = load ptr, ptr %qend_path, align 8, !tbaa !5
  %ref_nmismatches199 = getelementptr inbounds %struct.Path_T, ptr %207, i32 0, i32 20
  %208 = load ptr, ptr %ref_nmismatches199, align 8, !tbaa !42
  store ptr %208, ptr %r, align 8, !tbaa !5
  %209 = load ptr, ptr %qend_path, align 8, !tbaa !5
  %junctions200 = getelementptr inbounds %struct.Path_T, ptr %209, i32 0, i32 21
  %210 = load ptr, ptr %junctions200, align 8, !tbaa !43
  store ptr %210, ptr %j, align 8, !tbaa !5
  br label %while.cond201

while.cond201:                                    ; preds = %while.body203, %if.end192
  %211 = load ptr, ptr %j, align 8, !tbaa !5
  %cmp202 = icmp ne ptr %211, null
  br i1 %cmp202, label %while.body203, label %while.end220

while.body203:                                    ; preds = %while.cond201
  %212 = load ptr, ptr %junctions, align 8, !tbaa !5
  %213 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %214 = load ptr, ptr %j, align 8, !tbaa !5
  %call204 = call ptr @List_head(ptr noundef %214)
  %215 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %call205 = call ptr @Junction_copy(ptr noundef %call204, ptr noundef %215)
  %call206 = call ptr @Listpool_push(ptr noundef %212, ptr noundef %213, ptr noundef %call205)
  store ptr %call206, ptr %junctions, align 8, !tbaa !5
  %216 = load ptr, ptr %q, align 8, !tbaa !5
  %call207 = call ptr @Intlist_next(ptr noundef %216)
  store ptr %call207, ptr %q, align 8, !tbaa !5
  %217 = load ptr, ptr %u, align 8, !tbaa !5
  %call208 = call ptr @Uintlist_next(ptr noundef %217)
  store ptr %call208, ptr %u, align 8, !tbaa !5
  %218 = load ptr, ptr %s, align 8, !tbaa !5
  %call209 = call ptr @Intlist_next(ptr noundef %218)
  store ptr %call209, ptr %s, align 8, !tbaa !5
  %219 = load ptr, ptr %r, align 8, !tbaa !5
  %call210 = call ptr @Intlist_next(ptr noundef %219)
  store ptr %call210, ptr %r, align 8, !tbaa !5
  %220 = load ptr, ptr %endpoints, align 8, !tbaa !5
  %221 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %222 = load ptr, ptr %q, align 8, !tbaa !5
  %call211 = call i32 @Intlist_head(ptr noundef %222)
  %call212 = call ptr @Intlistpool_push(ptr noundef %220, ptr noundef %221, i32 noundef %call211)
  store ptr %call212, ptr %endpoints, align 8, !tbaa !5
  %223 = load ptr, ptr %univdiagonals, align 8, !tbaa !5
  %224 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %225 = load ptr, ptr %u, align 8, !tbaa !5
  %call213 = call i32 @Uintlist_head(ptr noundef %225)
  %call214 = call ptr @Uintlistpool_push(ptr noundef %223, ptr noundef %224, i32 noundef %call213)
  store ptr %call214, ptr %univdiagonals, align 8, !tbaa !5
  %226 = load ptr, ptr %nmismatches, align 8, !tbaa !5
  %227 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %228 = load ptr, ptr %s, align 8, !tbaa !5
  %call215 = call i32 @Intlist_head(ptr noundef %228)
  %call216 = call ptr @Intlistpool_push(ptr noundef %226, ptr noundef %227, i32 noundef %call215)
  store ptr %call216, ptr %nmismatches, align 8, !tbaa !5
  %229 = load ptr, ptr %ref_nmismatches, align 8, !tbaa !5
  %230 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %231 = load ptr, ptr %r, align 8, !tbaa !5
  %call217 = call i32 @Intlist_head(ptr noundef %231)
  %call218 = call ptr @Intlistpool_push(ptr noundef %229, ptr noundef %230, i32 noundef %call217)
  store ptr %call218, ptr %ref_nmismatches, align 8, !tbaa !5
  %232 = load ptr, ptr %j, align 8, !tbaa !5
  %call219 = call ptr @List_next(ptr noundef %232)
  store ptr %call219, ptr %j, align 8, !tbaa !5
  br label %while.cond201, !llvm.loop !71

while.end220:                                     ; preds = %while.cond201
  %233 = load ptr, ptr %endpoints, align 8, !tbaa !5
  %call221 = call ptr @Intlist_reverse(ptr noundef %233)
  store ptr %call221, ptr %endpoints, align 8, !tbaa !5
  %234 = load ptr, ptr %junctions, align 8, !tbaa !5
  %call222 = call ptr @List_reverse(ptr noundef %234)
  store ptr %call222, ptr %junctions, align 8, !tbaa !5
  %235 = load ptr, ptr %endpoints, align 8, !tbaa !5
  %236 = load ptr, ptr %junctions, align 8, !tbaa !5
  %call223 = call zeroext i8 @endpoints_acceptable_p(ptr noundef %235, ptr noundef %236)
  %conv = zext i8 %call223 to i32
  %cmp224 = icmp eq i32 %conv, 0
  br i1 %cmp224, label %if.then226, label %if.else227

if.then226:                                       ; preds = %while.end220
  %237 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  call void @Intlistpool_free_list(ptr noundef %endpoints, ptr noundef %237)
  %238 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  call void @Uintlistpool_free_list(ptr noundef %univdiagonals, ptr noundef %238)
  %239 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  call void @Intlistpool_free_list(ptr noundef %nmismatches, ptr noundef %239)
  %240 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  call void @Intlistpool_free_list(ptr noundef %ref_nmismatches, ptr noundef %240)
  %241 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %242 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  call void @Junction_list_gc(ptr noundef %junctions, ptr noundef %241, ptr noundef %242)
  br label %if.end353

if.else227:                                       ; preds = %while.end220
  %243 = load ptr, ptr %univdiagonals, align 8, !tbaa !5
  %call228 = call ptr @Uintlist_reverse(ptr noundef %243)
  store ptr %call228, ptr %univdiagonals, align 8, !tbaa !5
  %244 = load ptr, ptr %nmismatches, align 8, !tbaa !5
  %call229 = call ptr @Intlist_reverse(ptr noundef %244)
  store ptr %call229, ptr %nmismatches, align 8, !tbaa !5
  %245 = load ptr, ptr %ref_nmismatches, align 8, !tbaa !5
  %call230 = call ptr @Intlist_reverse(ptr noundef %245)
  store ptr %call230, ptr %ref_nmismatches, align 8, !tbaa !5
  %246 = load ptr, ptr %nmismatches, align 8, !tbaa !5
  %call231 = call i32 @preliminary_score_within_trims(ptr noundef %246)
  %247 = load i32, ptr %nmismatches_allowed.addr, align 4, !tbaa !12
  %cmp232 = icmp sgt i32 %call231, %247
  br i1 %cmp232, label %if.then234, label %if.else235

if.then234:                                       ; preds = %if.else227
  %248 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  call void @Intlistpool_free_list(ptr noundef %endpoints, ptr noundef %248)
  %249 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  call void @Uintlistpool_free_list(ptr noundef %univdiagonals, ptr noundef %249)
  %250 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  call void @Intlistpool_free_list(ptr noundef %nmismatches, ptr noundef %250)
  %251 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  call void @Intlistpool_free_list(ptr noundef %ref_nmismatches, ptr noundef %251)
  %252 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %253 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  call void @Junction_list_gc(ptr noundef %junctions, ptr noundef %252, ptr noundef %253)
  br label %if.end352

if.else235:                                       ; preds = %if.else227
  %254 = load ptr, ptr %qend_path, align 8, !tbaa !5
  %splice3p236 = getelementptr inbounds %struct.Path_T, ptr %254, i32 0, i32 23
  %255 = load i8, ptr %splice3p236, align 1, !tbaa !62
  %conv237 = zext i8 %255 to i32
  %cmp238 = icmp eq i32 %conv237, 1
  br i1 %cmp238, label %if.then246, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else235
  %256 = load ptr, ptr %qend_path, align 8, !tbaa !5
  %qend_alts = getelementptr inbounds %struct.Path_T, ptr %256, i32 0, i32 29
  %257 = load ptr, ptr %qend_alts, align 8, !tbaa !59
  %cmp240 = icmp ne ptr %257, null
  br i1 %cmp240, label %if.then246, label %lor.lhs.false242

lor.lhs.false242:                                 ; preds = %lor.lhs.false
  %258 = load ptr, ptr %endpoints, align 8, !tbaa !5
  %call243 = call i32 @Intlist_last_value(ptr noundef %258)
  store i32 %call243, ptr %qend, align 4, !tbaa !12
  %259 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %cmp244 = icmp eq i32 %call243, %259
  br i1 %cmp244, label %if.then246, label %if.else250

if.then246:                                       ; preds = %lor.lhs.false242, %lor.lhs.false, %if.else235
  %260 = load ptr, ptr %qend_path, align 8, !tbaa !5
  %splice3p247 = getelementptr inbounds %struct.Path_T, ptr %260, i32 0, i32 23
  %261 = load i8, ptr %splice3p247, align 1, !tbaa !62
  store i8 %261, ptr %splice3p, align 1, !tbaa !14
  %262 = load ptr, ptr %qend_path, align 8, !tbaa !5
  %splicetype3248 = getelementptr inbounds %struct.Path_T, ptr %262, i32 0, i32 25
  %263 = load i32, ptr %splicetype3248, align 8, !tbaa !63
  store i32 %263, ptr %splicetype3, align 4, !tbaa !14
  %264 = load ptr, ptr %qend_path, align 8, !tbaa !5
  %ambig_prob_3249 = getelementptr inbounds %struct.Path_T, ptr %264, i32 0, i32 27
  %265 = load double, ptr %ambig_prob_3249, align 8, !tbaa !64
  store double %265, ptr %ambig_prob_3, align 8, !tbaa !44
  br label %if.end299

if.else250:                                       ; preds = %lor.lhs.false242
  %266 = load ptr, ptr %endpoints, align 8, !tbaa !5
  %call251 = call ptr @Intlist_reverse(ptr noundef %266)
  store ptr %call251, ptr %endpoints, align 8, !tbaa !5
  %267 = load ptr, ptr %univdiagonals, align 8, !tbaa !5
  %call252 = call ptr @Uintlist_reverse(ptr noundef %267)
  store ptr %call252, ptr %univdiagonals, align 8, !tbaa !5
  %268 = load ptr, ptr %junctions, align 8, !tbaa !5
  %call253 = call ptr @List_reverse(ptr noundef %268)
  store ptr %call253, ptr %junctions, align 8, !tbaa !5
  %269 = load ptr, ptr %junctions, align 8, !tbaa !5
  %cmp254 = icmp eq ptr %269, null
  br i1 %cmp254, label %if.then256, label %if.else257

if.then256:                                       ; preds = %if.else250
  store i32 0, ptr %ninserts, align 4, !tbaa !12
  br label %if.end260

if.else257:                                       ; preds = %if.else250
  %270 = load ptr, ptr %junctions, align 8, !tbaa !5
  %call258 = call ptr @List_head(ptr noundef %270)
  %call259 = call i32 @Junction_ninserts(ptr noundef %call258)
  store i32 %call259, ptr %ninserts, align 4, !tbaa !12
  br label %if.end260

if.end260:                                        ; preds = %if.else257, %if.then256
  %271 = load ptr, ptr %endpoints, align 8, !tbaa !5
  %272 = load ptr, ptr %junctions, align 8, !tbaa !5
  %call261 = call i32 @compute_exon_origin(ptr noundef %271, ptr noundef %272)
  store i32 %call261, ptr %exon_origin, align 4, !tbaa !12
  %273 = load ptr, ptr %knownsplicing.addr, align 8, !tbaa !5
  %274 = load i32, ptr %sensedir.addr, align 4, !tbaa !12
  %275 = load ptr, ptr %univdiagonals, align 8, !tbaa !5
  %call262 = call i32 @Uintlist_head(ptr noundef %275)
  %276 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %277 = load ptr, ptr %endpoints, align 8, !tbaa !5
  %call263 = call ptr @Intlist_next(ptr noundef %277)
  %call264 = call i32 @Intlist_head(ptr noundef %call263)
  %278 = load i32, ptr %ninserts, align 4, !tbaa !12
  %add265 = add nsw i32 %call264, %278
  %279 = load i32, ptr %exon_origin, align 4, !tbaa !12
  %280 = load i32, ptr %chrnum.addr, align 4, !tbaa !12
  %281 = load i32, ptr %chroffset.addr, align 4, !tbaa !12
  %282 = load i32, ptr %chrhigh.addr, align 4, !tbaa !12
  %283 = load i8, ptr %plusp.addr, align 1, !tbaa !14
  %284 = load i32, ptr %genestrand.addr, align 4, !tbaa !12
  %285 = load ptr, ptr %mismatch_positions_alloc.addr, align 8, !tbaa !5
  %286 = load ptr, ptr %spliceendsgen.addr, align 8, !tbaa !5
  %287 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %288 = load ptr, ptr %queryptr.addr, align 8, !tbaa !5
  %289 = load ptr, ptr @genomebits, align 8, !tbaa !5
  %290 = load ptr, ptr @genomebits_alt, align 8, !tbaa !5
  %291 = load i8, ptr @novelsplicingp, align 1, !tbaa !14
  %call266 = call zeroext i8 @Spliceends_qend_trim(ptr noundef %trimpos, ptr noundef %nmismatches_to_trimpos, ptr noundef %found_sensedir, ptr noundef %splicetype3, ptr noundef %ambig_prob_3, ptr noundef %273, i32 noundef %274, i32 noundef %call262, i32 noundef %276, i32 noundef %add265, i32 noundef %279, i32 noundef %280, i32 noundef %281, i32 noundef %282, i8 noundef zeroext %283, i32 noundef %284, ptr noundef %285, ptr noundef %286, ptr noundef %287, ptr noundef %288, ptr noundef %289, ptr noundef %290, i8 noundef zeroext %291)
  store i8 %call266, ptr %splice3p, align 1, !tbaa !14
  %292 = load i32, ptr %trimpos, align 4, !tbaa !12
  %293 = load ptr, ptr %endpoints, align 8, !tbaa !5
  %call267 = call i32 @Intlist_second_value(ptr noundef %293)
  %cmp268 = icmp eq i32 %292, %call267
  br i1 %cmp268, label %if.then270, label %if.else271

if.then270:                                       ; preds = %if.end260
  br label %if.end295

if.else271:                                       ; preds = %if.end260
  %294 = load i32, ptr %trimpos, align 4, !tbaa !12
  %295 = load i32, ptr %qend, align 4, !tbaa !12
  %cmp272 = icmp eq i32 %294, %295
  br i1 %cmp272, label %if.then274, label %if.else275

if.then274:                                       ; preds = %if.else271
  br label %if.end294

if.else275:                                       ; preds = %if.else271
  %296 = load ptr, ptr %univdiagonals, align 8, !tbaa !5
  %call276 = call i32 @Uintlist_head(ptr noundef %296)
  %297 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %sub = sub i32 %call276, %297
  %298 = load i32, ptr %trimpos, align 4, !tbaa !12
  %add277 = add i32 %sub, %298
  %299 = load i32, ptr %chroffset.addr, align 4, !tbaa !12
  %cmp278 = icmp ult i32 %add277, %299
  br i1 %cmp278, label %if.then280, label %if.else281

if.then280:                                       ; preds = %if.else275
  br label %if.end293

if.else281:                                       ; preds = %if.else275
  %300 = load i32, ptr %trimpos, align 4, !tbaa !12
  %301 = load ptr, ptr %endpoints, align 8, !tbaa !5
  %call282 = call i32 @Intlist_second_value(ptr noundef %301)
  %302 = load i32, ptr %ninserts, align 4, !tbaa !12
  %add283 = add nsw i32 %call282, %302
  %cmp284 = icmp sle i32 %300, %add283
  br i1 %cmp284, label %if.then286, label %if.else287

if.then286:                                       ; preds = %if.else281
  br label %if.end292

if.else287:                                       ; preds = %if.else281
  %303 = load ptr, ptr %endpoints, align 8, !tbaa !5
  %304 = load i32, ptr %trimpos, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %303, i32 noundef %304)
  %305 = load ptr, ptr %nmismatches, align 8, !tbaa !5
  %call288 = call ptr @Intlist_reverse(ptr noundef %305)
  store ptr %call288, ptr %nmismatches, align 8, !tbaa !5
  %306 = load ptr, ptr %ref_nmismatches, align 8, !tbaa !5
  %call289 = call ptr @Intlist_reverse(ptr noundef %306)
  store ptr %call289, ptr %ref_nmismatches, align 8, !tbaa !5
  %307 = load ptr, ptr %nmismatches, align 8, !tbaa !5
  %308 = load i32, ptr %nmismatches_to_trimpos, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %307, i32 noundef %308)
  %309 = load ptr, ptr %ref_nmismatches, align 8, !tbaa !5
  %310 = load i32, ptr %nmismatches_to_trimpos, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %309, i32 noundef %310)
  %311 = load ptr, ptr %nmismatches, align 8, !tbaa !5
  %call290 = call ptr @Intlist_reverse(ptr noundef %311)
  store ptr %call290, ptr %nmismatches, align 8, !tbaa !5
  %312 = load ptr, ptr %ref_nmismatches, align 8, !tbaa !5
  %call291 = call ptr @Intlist_reverse(ptr noundef %312)
  store ptr %call291, ptr %ref_nmismatches, align 8, !tbaa !5
  br label %if.end292

if.end292:                                        ; preds = %if.else287, %if.then286
  br label %if.end293

if.end293:                                        ; preds = %if.end292, %if.then280
  br label %if.end294

if.end294:                                        ; preds = %if.end293, %if.then274
  br label %if.end295

if.end295:                                        ; preds = %if.end294, %if.then270
  %313 = load ptr, ptr %endpoints, align 8, !tbaa !5
  %call296 = call ptr @Intlist_reverse(ptr noundef %313)
  store ptr %call296, ptr %endpoints, align 8, !tbaa !5
  %314 = load ptr, ptr %univdiagonals, align 8, !tbaa !5
  %call297 = call ptr @Uintlist_reverse(ptr noundef %314)
  store ptr %call297, ptr %univdiagonals, align 8, !tbaa !5
  %315 = load ptr, ptr %junctions, align 8, !tbaa !5
  %call298 = call ptr @List_reverse(ptr noundef %315)
  store ptr %call298, ptr %junctions, align 8, !tbaa !5
  br label %if.end299

if.end299:                                        ; preds = %if.end295, %if.then246
  %316 = load ptr, ptr %qstart_path, align 8, !tbaa !5
  %splice5p300 = getelementptr inbounds %struct.Path_T, ptr %316, i32 0, i32 22
  %317 = load i8, ptr %splice5p300, align 8, !tbaa !55
  %conv301 = zext i8 %317 to i32
  %cmp302 = icmp eq i32 %conv301, 1
  br i1 %cmp302, label %if.then311, label %lor.lhs.false304

lor.lhs.false304:                                 ; preds = %if.end299
  %318 = load ptr, ptr %qstart_path, align 8, !tbaa !5
  %qstart_alts = getelementptr inbounds %struct.Path_T, ptr %318, i32 0, i32 28
  %319 = load ptr, ptr %qstart_alts, align 8, !tbaa !45
  %cmp305 = icmp ne ptr %319, null
  br i1 %cmp305, label %if.then311, label %lor.lhs.false307

lor.lhs.false307:                                 ; preds = %lor.lhs.false304
  %320 = load ptr, ptr %endpoints, align 8, !tbaa !5
  %call308 = call i32 @Intlist_head(ptr noundef %320)
  store i32 %call308, ptr %qstart, align 4, !tbaa !12
  %cmp309 = icmp eq i32 %call308, 0
  br i1 %cmp309, label %if.then311, label %if.else315

if.then311:                                       ; preds = %lor.lhs.false307, %lor.lhs.false304, %if.end299
  %321 = load ptr, ptr %qstart_path, align 8, !tbaa !5
  %splice5p312 = getelementptr inbounds %struct.Path_T, ptr %321, i32 0, i32 22
  %322 = load i8, ptr %splice5p312, align 8, !tbaa !55
  store i8 %322, ptr %splice5p, align 1, !tbaa !14
  %323 = load ptr, ptr %qstart_path, align 8, !tbaa !5
  %splicetype5313 = getelementptr inbounds %struct.Path_T, ptr %323, i32 0, i32 24
  %324 = load i32, ptr %splicetype5313, align 4, !tbaa !56
  store i32 %324, ptr %splicetype5, align 4, !tbaa !14
  %325 = load ptr, ptr %qstart_path, align 8, !tbaa !5
  %ambig_prob_5314 = getelementptr inbounds %struct.Path_T, ptr %325, i32 0, i32 26
  %326 = load double, ptr %ambig_prob_5314, align 8, !tbaa !57
  store double %326, ptr %ambig_prob_5, align 8, !tbaa !44
  br label %if.end340

if.else315:                                       ; preds = %lor.lhs.false307
  %327 = load ptr, ptr %endpoints, align 8, !tbaa !5
  %328 = load ptr, ptr %junctions, align 8, !tbaa !5
  %call316 = call i32 @compute_exon_origin(ptr noundef %327, ptr noundef %328)
  store i32 %call316, ptr %exon_origin, align 4, !tbaa !12
  %329 = load ptr, ptr %knownsplicing.addr, align 8, !tbaa !5
  %330 = load i32, ptr %sensedir.addr, align 4, !tbaa !12
  %331 = load ptr, ptr %univdiagonals, align 8, !tbaa !5
  %call317 = call i32 @Uintlist_head(ptr noundef %331)
  %332 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %333 = load ptr, ptr %endpoints, align 8, !tbaa !5
  %call318 = call ptr @Intlist_next(ptr noundef %333)
  %call319 = call i32 @Intlist_head(ptr noundef %call318)
  %334 = load i32, ptr %exon_origin, align 4, !tbaa !12
  %335 = load i32, ptr %chrnum.addr, align 4, !tbaa !12
  %336 = load i32, ptr %chroffset.addr, align 4, !tbaa !12
  %337 = load i8, ptr %plusp.addr, align 1, !tbaa !14
  %338 = load i32, ptr %genestrand.addr, align 4, !tbaa !12
  %339 = load ptr, ptr %mismatch_positions_alloc.addr, align 8, !tbaa !5
  %340 = load ptr, ptr %spliceendsgen.addr, align 8, !tbaa !5
  %341 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %342 = load ptr, ptr %queryptr.addr, align 8, !tbaa !5
  %343 = load ptr, ptr @genomebits, align 8, !tbaa !5
  %344 = load ptr, ptr @genomebits_alt, align 8, !tbaa !5
  %345 = load i8, ptr @novelsplicingp, align 1, !tbaa !14
  %call320 = call zeroext i8 @Spliceends_qstart_trim(ptr noundef %trimpos, ptr noundef %nmismatches_to_trimpos, ptr noundef %found_sensedir, ptr noundef %splicetype5, ptr noundef %ambig_prob_5, ptr noundef %329, i32 noundef %330, i32 noundef %call317, i32 noundef %332, i32 noundef %call319, i32 noundef %334, i32 noundef %335, i32 noundef %336, i8 noundef zeroext %337, i32 noundef %338, ptr noundef %339, ptr noundef %340, ptr noundef %341, ptr noundef %342, ptr noundef %343, ptr noundef %344, i8 noundef zeroext %345)
  store i8 %call320, ptr %splice5p, align 1, !tbaa !14
  %346 = load i32, ptr %trimpos, align 4, !tbaa !12
  %347 = load ptr, ptr %endpoints, align 8, !tbaa !5
  %call321 = call i32 @Intlist_second_value(ptr noundef %347)
  %cmp322 = icmp eq i32 %346, %call321
  br i1 %cmp322, label %if.then324, label %if.else325

if.then324:                                       ; preds = %if.else315
  br label %if.end339

if.else325:                                       ; preds = %if.else315
  %348 = load i32, ptr %trimpos, align 4, !tbaa !12
  %349 = load i32, ptr %qstart, align 4, !tbaa !12
  %cmp326 = icmp eq i32 %348, %349
  br i1 %cmp326, label %if.then328, label %if.else329

if.then328:                                       ; preds = %if.else325
  br label %if.end338

if.else329:                                       ; preds = %if.else325
  %350 = load ptr, ptr %univdiagonals, align 8, !tbaa !5
  %call330 = call i32 @Uintlist_head(ptr noundef %350)
  %351 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %sub331 = sub i32 %call330, %351
  %352 = load i32, ptr %trimpos, align 4, !tbaa !12
  %add332 = add i32 %sub331, %352
  %353 = load i32, ptr %chrhigh.addr, align 4, !tbaa !12
  %cmp333 = icmp uge i32 %add332, %353
  br i1 %cmp333, label %if.then335, label %if.else336

if.then335:                                       ; preds = %if.else329
  br label %if.end337

if.else336:                                       ; preds = %if.else329
  %354 = load ptr, ptr %endpoints, align 8, !tbaa !5
  %355 = load i32, ptr %trimpos, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %354, i32 noundef %355)
  %356 = load ptr, ptr %nmismatches, align 8, !tbaa !5
  %357 = load i32, ptr %nmismatches_to_trimpos, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %356, i32 noundef %357)
  %358 = load ptr, ptr %ref_nmismatches, align 8, !tbaa !5
  %359 = load i32, ptr %nmismatches_to_trimpos, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %358, i32 noundef %359)
  br label %if.end337

if.end337:                                        ; preds = %if.else336, %if.then335
  br label %if.end338

if.end338:                                        ; preds = %if.end337, %if.then328
  br label %if.end339

if.end339:                                        ; preds = %if.end338, %if.then324
  br label %if.end340

if.end340:                                        ; preds = %if.end339, %if.then311
  %360 = load ptr, ptr %endpoints, align 8, !tbaa !5
  %361 = load ptr, ptr %univdiagonals, align 8, !tbaa !5
  %362 = load ptr, ptr %nmismatches, align 8, !tbaa !5
  %363 = load ptr, ptr %ref_nmismatches, align 8, !tbaa !5
  %364 = load ptr, ptr %junctions, align 8, !tbaa !5
  %365 = load i8, ptr %plusp.addr, align 1, !tbaa !14
  %366 = load i32, ptr %genestrand.addr, align 4, !tbaa !12
  %367 = load i32, ptr %sensedir.addr, align 4, !tbaa !12
  %368 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %369 = load i32, ptr %method.addr, align 4, !tbaa !14
  %370 = load i32, ptr %chrnum.addr, align 4, !tbaa !12
  %371 = load i32, ptr %chroffset.addr, align 4, !tbaa !12
  %372 = load i32, ptr %chrhigh.addr, align 4, !tbaa !12
  %373 = load i8, ptr %splice5p, align 1, !tbaa !14
  %374 = load i32, ptr %splicetype5, align 4, !tbaa !14
  %375 = load double, ptr %ambig_prob_5, align 8, !tbaa !44
  %376 = load i8, ptr %splice3p, align 1, !tbaa !14
  %377 = load i32, ptr %splicetype3, align 4, !tbaa !14
  %378 = load double, ptr %ambig_prob_3, align 8, !tbaa !44
  %379 = load ptr, ptr %qstart_path, align 8, !tbaa !5
  %qstart_alts341 = getelementptr inbounds %struct.Path_T, ptr %379, i32 0, i32 28
  %380 = load ptr, ptr %qstart_alts341, align 8, !tbaa !45
  %381 = load ptr, ptr %qend_path, align 8, !tbaa !5
  %qend_alts342 = getelementptr inbounds %struct.Path_T, ptr %381, i32 0, i32 29
  %382 = load ptr, ptr %qend_alts342, align 8, !tbaa !59
  %383 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %384 = load ptr, ptr %vectorpool.addr, align 8, !tbaa !5
  %call343 = call ptr @Path_create(ptr noundef %360, ptr noundef %361, ptr noundef %362, ptr noundef %363, ptr noundef %364, i8 noundef zeroext %365, i32 noundef %366, i32 noundef %367, i32 noundef %368, i32 noundef %369, i32 noundef %370, i32 noundef %371, i32 noundef %372, i8 noundef zeroext %373, i32 noundef %374, double noundef %375, i8 noundef zeroext %376, i32 noundef %377, double noundef %378, ptr noundef %380, ptr noundef %382, ptr noundef %383, ptr noundef %384)
  store ptr %call343, ptr %path, align 8, !tbaa !5
  %385 = load ptr, ptr %found_score.addr, align 8, !tbaa !5
  %386 = load ptr, ptr %path, align 8, !tbaa !5
  %387 = load ptr, ptr %query_compress_fwd.addr, align 8, !tbaa !5
  %388 = load ptr, ptr %query_compress_rev.addr, align 8, !tbaa !5
  %call344 = call i32 @Path_eval_nmatches(ptr noundef %385, ptr noundef %386, ptr noundef %387, ptr noundef %388)
  %389 = load ptr, ptr %path, align 8, !tbaa !5
  %score_within_trims = getelementptr inbounds %struct.Path_T, ptr %389, i32 0, i32 8
  %390 = load i32, ptr %score_within_trims, align 4, !tbaa !72
  %391 = load i32, ptr %nmismatches_allowed.addr, align 4, !tbaa !12
  %cmp345 = icmp sgt i32 %390, %391
  br i1 %cmp345, label %if.then347, label %if.else348

if.then347:                                       ; preds = %if.end340
  %392 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %393 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %394 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %395 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %396 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  call void @Path_free(ptr noundef %path, ptr noundef %392, ptr noundef %393, ptr noundef %394, ptr noundef %395, ptr noundef %396)
  br label %if.end351

if.else348:                                       ; preds = %if.end340
  %397 = load ptr, ptr %paths, align 8, !tbaa !5
  %398 = load ptr, ptr %hitlistpool.addr, align 8, !tbaa !5
  %399 = load ptr, ptr %path, align 8, !tbaa !5
  %call349 = call ptr @Path_expect_fwd(ptr noundef %399)
  %call350 = call ptr @Hitlist_push(ptr noundef %397, ptr noundef %398, ptr noundef %call349)
  store ptr %call350, ptr %paths, align 8, !tbaa !5
  br label %if.end351

if.end351:                                        ; preds = %if.else348, %if.then347
  br label %if.end352

if.end352:                                        ; preds = %if.end351, %if.then234
  br label %if.end353

if.end353:                                        ; preds = %if.end352, %if.then226
  br label %if.end354

if.end354:                                        ; preds = %if.end353, %if.then157
  %400 = load ptr, ptr %qend_path, align 8, !tbaa !5
  %call355 = call ptr @Path_reverse(ptr noundef %400, i8 noundef zeroext 0)
  br label %for.inc356

for.inc356:                                       ; preds = %if.end354
  %401 = load ptr, ptr %b, align 8, !tbaa !5
  %call357 = call ptr @List_next(ptr noundef %401)
  store ptr %call357, ptr %b, align 8, !tbaa !5
  br label %for.cond106, !llvm.loop !73

for.end358:                                       ; preds = %for.cond106
  br label %for.inc359

for.inc359:                                       ; preds = %for.end358
  %402 = load ptr, ptr %a, align 8, !tbaa !5
  %call360 = call ptr @List_next(ptr noundef %402)
  store ptr %call360, ptr %a, align 8, !tbaa !5
  br label %for.cond102, !llvm.loop !74

for.end361:                                       ; preds = %for.cond102
  %403 = load ptr, ptr %hitlistpool.addr, align 8, !tbaa !5
  call void @Hitlistpool_free_list(ptr noundef %best_qend_paths, ptr noundef %403)
  %404 = load ptr, ptr %hitlistpool.addr, align 8, !tbaa !5
  call void @Hitlistpool_free_list(ptr noundef %best_qstart_paths, ptr noundef %404)
  %405 = load ptr, ptr %paths, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 8, ptr %ambig_prob_3) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %ambig_prob_5) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %splicetype3) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %splicetype5) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr %splice3p) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr %splice5p) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %nmismatches_to_trimpos) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %qend) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %qstart) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %exon_origin) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %ninserts) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %trimpos) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %found_sensedir) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %ignore_found_score) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %middle_ref_nmismatches) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %middle_nmismatches) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %qend2) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %qstart2) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %qend1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %qstart1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %junction) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %junctions) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %ref_nmismatches) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %nmismatches) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %u) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %univdiagonals) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %q) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %endpoints) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %best_splice_prob) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %nmatches) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %best_ref_nmatches) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %best_nmatches) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %qend_path) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %qstart_path) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %path) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %a) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %best_qend_paths) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %best_qstart_paths) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %paths) #5
  ret ptr %405
}

declare void @Path_gc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

declare ptr @Path_reverse(ptr noundef, i8 noundef zeroext) #3

declare zeroext i8 @Path_unextendedp(ptr noundef, i32 noundef, i8 noundef zeroext) #3

declare ptr @Hitlist_push(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @Path_expect_fwd(ptr noundef %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %this.addr, align 8, !tbaa !5
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define internal ptr @try_repairs(ptr noundef %found_score, ptr noundef %found_transcriptp, ptr noundef %paths, ptr noundef %path, ptr noundef %query_compress_fwd, ptr noundef %query_compress_rev, ptr noundef %queryseq, i32 noundef %nmismatches_allowed, ptr noundef %intlistpool, ptr noundef %uintlistpool, ptr noundef %univcoordlistpool, ptr noundef %listpool, ptr noundef %transcriptpool, ptr noundef %pathpool, ptr noundef %vectorpool, ptr noundef %hitlistpool) #1 {
entry:
  %found_score.addr = alloca ptr, align 8
  %found_transcriptp.addr = alloca ptr, align 8
  %paths.addr = alloca ptr, align 8
  %path.addr = alloca ptr, align 8
  %query_compress_fwd.addr = alloca ptr, align 8
  %query_compress_rev.addr = alloca ptr, align 8
  %queryseq.addr = alloca ptr, align 8
  %nmismatches_allowed.addr = alloca i32, align 4
  %intlistpool.addr = alloca ptr, align 8
  %uintlistpool.addr = alloca ptr, align 8
  %univcoordlistpool.addr = alloca ptr, align 8
  %listpool.addr = alloca ptr, align 8
  %transcriptpool.addr = alloca ptr, align 8
  %pathpool.addr = alloca ptr, align 8
  %vectorpool.addr = alloca ptr, align 8
  %hitlistpool.addr = alloca ptr, align 8
  %newpath = alloca ptr, align 8
  %repairs = alloca ptr, align 8
  %r = alloca ptr, align 8
  %repair = alloca ptr, align 8
  %desired_genestrand = alloca i32, align 4
  store ptr %found_score, ptr %found_score.addr, align 8, !tbaa !5
  store ptr %found_transcriptp, ptr %found_transcriptp.addr, align 8, !tbaa !5
  store ptr %paths, ptr %paths.addr, align 8, !tbaa !5
  store ptr %path, ptr %path.addr, align 8, !tbaa !5
  store ptr %query_compress_fwd, ptr %query_compress_fwd.addr, align 8, !tbaa !5
  store ptr %query_compress_rev, ptr %query_compress_rev.addr, align 8, !tbaa !5
  store ptr %queryseq, ptr %queryseq.addr, align 8, !tbaa !5
  store i32 %nmismatches_allowed, ptr %nmismatches_allowed.addr, align 4, !tbaa !12
  store ptr %intlistpool, ptr %intlistpool.addr, align 8, !tbaa !5
  store ptr %uintlistpool, ptr %uintlistpool.addr, align 8, !tbaa !5
  store ptr %univcoordlistpool, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  store ptr %listpool, ptr %listpool.addr, align 8, !tbaa !5
  store ptr %transcriptpool, ptr %transcriptpool.addr, align 8, !tbaa !5
  store ptr %pathpool, ptr %pathpool.addr, align 8, !tbaa !5
  store ptr %vectorpool, ptr %vectorpool.addr, align 8, !tbaa !5
  store ptr %hitlistpool, ptr %hitlistpool.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %newpath) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %repairs) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %repair) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %desired_genestrand) #5
  %0 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %sensedir = getelementptr inbounds %struct.Path_T, ptr %0, i32 0, i32 12
  %1 = load i32, ptr %sensedir, align 8, !tbaa !75
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %plusp = getelementptr inbounds %struct.Path_T, ptr %2, i32 0, i32 10
  %3 = load i8, ptr %plusp, align 8, !tbaa !76
  %conv = zext i8 %3 to i32
  %cmp1 = icmp eq i32 %conv, 1
  %4 = zext i1 %cmp1 to i64
  %cond = select i1 %cmp1, i32 1, i32 -1
  store i32 %cond, ptr %desired_genestrand, align 4, !tbaa !12
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %plusp3 = getelementptr inbounds %struct.Path_T, ptr %5, i32 0, i32 10
  %6 = load i8, ptr %plusp3, align 8, !tbaa !76
  %conv4 = zext i8 %6 to i32
  %cmp5 = icmp eq i32 %conv4, 1
  %7 = zext i1 %cmp5 to i64
  %cond7 = select i1 %cmp5, i32 -1, i32 1
  store i32 %cond7, ptr %desired_genestrand, align 4, !tbaa !12
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load ptr, ptr %found_transcriptp.addr, align 8, !tbaa !5
  %9 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %transcripts = getelementptr inbounds %struct.Path_T, ptr %9, i32 0, i32 51
  %10 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %invalid_transcripts = getelementptr inbounds %struct.Path_T, ptr %10, i32 0, i32 52
  %11 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %endpoints = getelementptr inbounds %struct.Path_T, ptr %11, i32 0, i32 17
  %12 = load ptr, ptr %endpoints, align 8, !tbaa !40
  %13 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %univdiagonals = getelementptr inbounds %struct.Path_T, ptr %13, i32 0, i32 18
  %14 = load ptr, ptr %univdiagonals, align 8, !tbaa !36
  %15 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %junctions = getelementptr inbounds %struct.Path_T, ptr %15, i32 0, i32 21
  %16 = load ptr, ptr %junctions, align 8, !tbaa !43
  %17 = load ptr, ptr %queryseq.addr, align 8, !tbaa !5
  %18 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %querylength = getelementptr inbounds %struct.Path_T, ptr %18, i32 0, i32 13
  %19 = load i32, ptr %querylength, align 4, !tbaa !77
  %20 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %plusp8 = getelementptr inbounds %struct.Path_T, ptr %20, i32 0, i32 10
  %21 = load i8, ptr %plusp8, align 8, !tbaa !76
  %22 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %chrnum = getelementptr inbounds %struct.Path_T, ptr %22, i32 0, i32 14
  %23 = load i32, ptr %chrnum, align 8, !tbaa !78
  %24 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %chroffset = getelementptr inbounds %struct.Path_T, ptr %24, i32 0, i32 15
  %25 = load i32, ptr %chroffset, align 4, !tbaa !79
  %26 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %chrhigh = getelementptr inbounds %struct.Path_T, ptr %26, i32 0, i32 16
  %27 = load i32, ptr %chrhigh, align 8, !tbaa !80
  %28 = load ptr, ptr %uintlistpool.addr, align 8, !tbaa !5
  %29 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %30 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  %31 = load ptr, ptr %vectorpool.addr, align 8, !tbaa !5
  %32 = load i32, ptr %desired_genestrand, align 4, !tbaa !12
  %33 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %call = call i32 @Path_effective_sensedir(ptr noundef %33)
  %call9 = call ptr @Transcript_remap(ptr noundef %8, ptr noundef %transcripts, ptr noundef %invalid_transcripts, ptr noundef %12, ptr noundef %14, ptr noundef %16, ptr noundef %17, i32 noundef %19, i8 noundef zeroext %21, i32 noundef %23, i32 noundef %25, i32 noundef %27, ptr noundef %28, ptr noundef %29, ptr noundef %30, ptr noundef %31, i32 noundef %32, i32 noundef %call, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 1)
  store ptr %call9, ptr %repairs, align 8, !tbaa !5
  %34 = load ptr, ptr %paths.addr, align 8, !tbaa !5
  %35 = load ptr, ptr %hitlistpool.addr, align 8, !tbaa !5
  %36 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %call10 = call ptr @Hitlist_push(ptr noundef %34, ptr noundef %35, ptr noundef %36)
  store ptr %call10, ptr %paths.addr, align 8, !tbaa !5
  %37 = load ptr, ptr %repairs, align 8, !tbaa !5
  store ptr %37, ptr %r, align 8, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %38 = load ptr, ptr %r, align 8, !tbaa !5
  %cmp11 = icmp ne ptr %38, null
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %39 = load ptr, ptr %r, align 8, !tbaa !5
  %call13 = call ptr @List_head(ptr noundef %39)
  store ptr %call13, ptr %repair, align 8, !tbaa !5
  %40 = load ptr, ptr %found_score.addr, align 8, !tbaa !5
  %41 = load ptr, ptr %repair, align 8, !tbaa !5
  %42 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %43 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %sensedir14 = getelementptr inbounds %struct.Path_T, ptr %43, i32 0, i32 12
  %44 = load i32, ptr %sensedir14, align 8, !tbaa !75
  %45 = load ptr, ptr %query_compress_fwd.addr, align 8, !tbaa !5
  %46 = load ptr, ptr %query_compress_rev.addr, align 8, !tbaa !5
  %47 = load i32, ptr %nmismatches_allowed.addr, align 4, !tbaa !12
  %48 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %49 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %50 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %51 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %52 = load ptr, ptr %vectorpool.addr, align 8, !tbaa !5
  %53 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  %call15 = call ptr @Repair_path(ptr noundef %40, ptr noundef %41, ptr noundef %42, i32 noundef %44, ptr noundef %45, ptr noundef %46, i32 noundef %47, ptr noundef %48, ptr noundef %49, ptr noundef %50, ptr noundef %51, ptr noundef %52, ptr noundef %53)
  store ptr %call15, ptr %newpath, align 8, !tbaa !5
  %cmp16 = icmp ne ptr %call15, null
  br i1 %cmp16, label %if.then18, label %if.end20

if.then18:                                        ; preds = %for.body
  %54 = load ptr, ptr %paths.addr, align 8, !tbaa !5
  %55 = load ptr, ptr %hitlistpool.addr, align 8, !tbaa !5
  %56 = load ptr, ptr %newpath, align 8, !tbaa !5
  %call19 = call ptr @Hitlist_push(ptr noundef %54, ptr noundef %55, ptr noundef %56)
  store ptr %call19, ptr %paths.addr, align 8, !tbaa !5
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %for.body
  call void @Repair_free(ptr noundef %repair)
  br label %for.inc

for.inc:                                          ; preds = %if.end20
  %57 = load ptr, ptr %r, align 8, !tbaa !5
  %call21 = call ptr @List_next(ptr noundef %57)
  store ptr %call21, ptr %r, align 8, !tbaa !5
  br label %for.cond, !llvm.loop !81

for.end:                                          ; preds = %for.cond
  %58 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  call void @Listpool_free_list(ptr noundef %repairs, ptr noundef %58)
  %59 = load ptr, ptr %paths.addr, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 4, ptr %desired_genestrand) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %repair) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %repairs) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %newpath) #5
  ret ptr %59
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @Hitlistpool_free_list(ptr noundef %old, ptr noundef %this) #0 {
entry:
  %old.addr = alloca ptr, align 8
  %this.addr = alloca ptr, align 8
  store ptr %old, ptr %old.addr, align 8, !tbaa !5
  store ptr %this, ptr %this.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %old.addr, align 8, !tbaa !5
  %1 = load ptr, ptr %this.addr, align 8, !tbaa !5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local void @Path_solve_from_ends(ptr noundef %found_score, ptr noundef %found_transcriptp, ptr noundef %unsolved_paths, ptr noundef %paths, i32 noundef %univdiagonal_i, i32 noundef %pos5_0, i32 noundef %pos3_0, i32 noundef %univdiagonal_j, i32 noundef %pos5_1, i32 noundef %pos3_1, i8 noundef zeroext %plusp, i32 noundef %sensedir, i32 noundef %genestrand, ptr noundef %query_compress, ptr noundef %query_compress_fwd, ptr noundef %query_compress_rev, ptr noundef %queryseq, i32 noundef %querylength, i32 noundef %chrnum, i32 noundef %chroffset, i32 noundef %chrhigh, ptr noundef %indelinfo, ptr noundef %spliceinfo, ptr noundef %knownsplicing, ptr noundef %intlistpool, ptr noundef %uintlistpool, ptr noundef %univcoordlistpool, ptr noundef %listpool, ptr noundef %pathpool, ptr noundef %vectorpool, ptr noundef %transcriptpool, ptr noundef %hitlistpool, i32 noundef %max_insertionlen, i32 noundef %max_deletionlen, i32 noundef %nmismatches_allowed, i32 noundef %method) #1 {
entry:
  %found_score.addr = alloca ptr, align 8
  %found_transcriptp.addr = alloca ptr, align 8
  %unsolved_paths.addr = alloca ptr, align 8
  %paths.addr = alloca ptr, align 8
  %univdiagonal_i.addr = alloca i32, align 4
  %pos5_0.addr = alloca i32, align 4
  %pos3_0.addr = alloca i32, align 4
  %univdiagonal_j.addr = alloca i32, align 4
  %pos5_1.addr = alloca i32, align 4
  %pos3_1.addr = alloca i32, align 4
  %plusp.addr = alloca i8, align 1
  %sensedir.addr = alloca i32, align 4
  %genestrand.addr = alloca i32, align 4
  %query_compress.addr = alloca ptr, align 8
  %query_compress_fwd.addr = alloca ptr, align 8
  %query_compress_rev.addr = alloca ptr, align 8
  %queryseq.addr = alloca ptr, align 8
  %querylength.addr = alloca i32, align 4
  %chrnum.addr = alloca i32, align 4
  %chroffset.addr = alloca i32, align 4
  %chrhigh.addr = alloca i32, align 4
  %indelinfo.addr = alloca ptr, align 8
  %spliceinfo.addr = alloca ptr, align 8
  %knownsplicing.addr = alloca ptr, align 8
  %intlistpool.addr = alloca ptr, align 8
  %uintlistpool.addr = alloca ptr, align 8
  %univcoordlistpool.addr = alloca ptr, align 8
  %listpool.addr = alloca ptr, align 8
  %pathpool.addr = alloca ptr, align 8
  %vectorpool.addr = alloca ptr, align 8
  %transcriptpool.addr = alloca ptr, align 8
  %hitlistpool.addr = alloca ptr, align 8
  %max_insertionlen.addr = alloca i32, align 4
  %max_deletionlen.addr = alloca i32, align 4
  %nmismatches_allowed.addr = alloca i32, align 4
  %method.addr = alloca i32, align 4
  %path = alloca ptr, align 8
  %newpath = alloca ptr, align 8
  %nmismatches_i = alloca i32, align 4
  %nmismatches_j = alloca i32, align 4
  %nmismatches_indel = alloca i32, align 4
  %nmismatches_middle = alloca i32, align 4
  %ref_nmismatches_i = alloca i32, align 4
  %ref_nmismatches_j = alloca i32, align 4
  %ref_nmismatches_indel = alloca i32, align 4
  %ref_nmismatches_middle = alloca i32, align 4
  %nindels = alloca i32, align 4
  %supporti = alloca i32, align 4
  %supportj = alloca i32, align 4
  %donor_prob = alloca double, align 8
  %acceptor_prob = alloca double, align 8
  %splice_qpos = alloca i32, align 4
  %splice_qpos_i = alloca i32, align 4
  %splice_qpos_j = alloca i32, align 4
  %indel_pos = alloca i32, align 4
  %qstart = alloca i32, align 4
  %qend = alloca i32, align 4
  %middle_univdiagonal = alloca i32, align 4
  %segmenti_left = alloca i32, align 4
  %deletionpos = alloca i32, align 4
  %splice_distance = alloca i32, align 4
  %splice_distance_i = alloca i32, align 4
  %splice_distance_j = alloca i32, align 4
  %j = alloca ptr, align 8
  %q = alloca ptr, align 8
  %r = alloca ptr, align 8
  %s = alloca ptr, align 8
  %p = alloca ptr, align 8
  store ptr %found_score, ptr %found_score.addr, align 8, !tbaa !5
  store ptr %found_transcriptp, ptr %found_transcriptp.addr, align 8, !tbaa !5
  store ptr %unsolved_paths, ptr %unsolved_paths.addr, align 8, !tbaa !5
  store ptr %paths, ptr %paths.addr, align 8, !tbaa !5
  store i32 %univdiagonal_i, ptr %univdiagonal_i.addr, align 4, !tbaa !12
  store i32 %pos5_0, ptr %pos5_0.addr, align 4, !tbaa !12
  store i32 %pos3_0, ptr %pos3_0.addr, align 4, !tbaa !12
  store i32 %univdiagonal_j, ptr %univdiagonal_j.addr, align 4, !tbaa !12
  store i32 %pos5_1, ptr %pos5_1.addr, align 4, !tbaa !12
  store i32 %pos3_1, ptr %pos3_1.addr, align 4, !tbaa !12
  store i8 %plusp, ptr %plusp.addr, align 1, !tbaa !14
  store i32 %sensedir, ptr %sensedir.addr, align 4, !tbaa !12
  store i32 %genestrand, ptr %genestrand.addr, align 4, !tbaa !12
  store ptr %query_compress, ptr %query_compress.addr, align 8, !tbaa !5
  store ptr %query_compress_fwd, ptr %query_compress_fwd.addr, align 8, !tbaa !5
  store ptr %query_compress_rev, ptr %query_compress_rev.addr, align 8, !tbaa !5
  store ptr %queryseq, ptr %queryseq.addr, align 8, !tbaa !5
  store i32 %querylength, ptr %querylength.addr, align 4, !tbaa !12
  store i32 %chrnum, ptr %chrnum.addr, align 4, !tbaa !12
  store i32 %chroffset, ptr %chroffset.addr, align 4, !tbaa !12
  store i32 %chrhigh, ptr %chrhigh.addr, align 4, !tbaa !12
  store ptr %indelinfo, ptr %indelinfo.addr, align 8, !tbaa !5
  store ptr %spliceinfo, ptr %spliceinfo.addr, align 8, !tbaa !5
  store ptr %knownsplicing, ptr %knownsplicing.addr, align 8, !tbaa !5
  store ptr %intlistpool, ptr %intlistpool.addr, align 8, !tbaa !5
  store ptr %uintlistpool, ptr %uintlistpool.addr, align 8, !tbaa !5
  store ptr %univcoordlistpool, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  store ptr %listpool, ptr %listpool.addr, align 8, !tbaa !5
  store ptr %pathpool, ptr %pathpool.addr, align 8, !tbaa !5
  store ptr %vectorpool, ptr %vectorpool.addr, align 8, !tbaa !5
  store ptr %transcriptpool, ptr %transcriptpool.addr, align 8, !tbaa !5
  store ptr %hitlistpool, ptr %hitlistpool.addr, align 8, !tbaa !5
  store i32 %max_insertionlen, ptr %max_insertionlen.addr, align 4, !tbaa !12
  store i32 %max_deletionlen, ptr %max_deletionlen.addr, align 4, !tbaa !12
  store i32 %nmismatches_allowed, ptr %nmismatches_allowed.addr, align 4, !tbaa !12
  store i32 %method, ptr %method.addr, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 8, ptr %path) #5
  store ptr null, ptr %path, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %newpath) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %nmismatches_i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %nmismatches_j) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %nmismatches_indel) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %nmismatches_middle) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %ref_nmismatches_i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %ref_nmismatches_j) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %ref_nmismatches_indel) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %ref_nmismatches_middle) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %nindels) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %supporti) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %supportj) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %donor_prob) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %acceptor_prob) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %splice_qpos) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %splice_qpos_i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %splice_qpos_j) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %indel_pos) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %qstart) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %qend) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %middle_univdiagonal) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %segmenti_left) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %deletionpos) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %splice_distance) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %splice_distance_i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %splice_distance_j) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %q) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #5
  %0 = load i32, ptr %univdiagonal_i.addr, align 4, !tbaa !12
  %1 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %sub = sub i32 %0, %1
  store i32 %sub, ptr %segmenti_left, align 4, !tbaa !12
  %2 = load i32, ptr %pos5_0.addr, align 4, !tbaa !12
  store i32 %2, ptr %qstart, align 4, !tbaa !12
  %3 = load i32, ptr %pos3_1.addr, align 4, !tbaa !12
  store i32 %3, ptr %qend, align 4, !tbaa !12
  %4 = load i32, ptr %univdiagonal_i.addr, align 4, !tbaa !12
  %5 = load i32, ptr %univdiagonal_j.addr, align 4, !tbaa !12
  %6 = load i32, ptr %max_insertionlen.addr, align 4, !tbaa !12
  %add = add i32 %5, %6
  %cmp = icmp ugt i32 %4, %add
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end299

if.else:                                          ; preds = %entry
  %7 = load i32, ptr %univdiagonal_i.addr, align 4, !tbaa !12
  %8 = load i32, ptr %univdiagonal_j.addr, align 4, !tbaa !12
  %cmp1 = icmp ugt i32 %7, %8
  br i1 %cmp1, label %if.then2, label %if.else25

if.then2:                                         ; preds = %if.else
  %9 = load i32, ptr %univdiagonal_i.addr, align 4, !tbaa !12
  %10 = load i32, ptr %univdiagonal_j.addr, align 4, !tbaa !12
  %sub3 = sub i32 %9, %10
  store i32 %sub3, ptr %nindels, align 4, !tbaa !12
  %11 = load i32, ptr %univdiagonal_i.addr, align 4, !tbaa !12
  %12 = load i32, ptr %nindels, align 4, !tbaa !12
  %13 = load ptr, ptr @genomebits, align 8, !tbaa !5
  %14 = load ptr, ptr @genomebits_alt, align 8, !tbaa !5
  %15 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %16 = load i32, ptr %qstart, align 4, !tbaa !12
  %17 = load i32, ptr %qend, align 4, !tbaa !12
  %18 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %19 = load ptr, ptr %indelinfo.addr, align 8, !tbaa !5
  %20 = load i8, ptr %plusp.addr, align 1, !tbaa !14
  %21 = load i32, ptr %genestrand.addr, align 4, !tbaa !12
  %call = call i32 @Indel_resolve_middle_insertion(ptr noundef %nmismatches_i, ptr noundef %nmismatches_j, ptr noundef %ref_nmismatches_i, ptr noundef %ref_nmismatches_j, i32 noundef %11, i32 noundef %12, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef %13, ptr noundef %14, ptr noundef %15, i32 noundef %16, i32 noundef %17, i32 noundef %18, ptr noundef %19, i8 noundef zeroext %20, i32 noundef %21, i8 noundef zeroext 1)
  store i32 %call, ptr %indel_pos, align 4, !tbaa !12
  %cmp4 = icmp sle i32 %call, 0
  br i1 %cmp4, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.then2
  br label %if.end24

if.else6:                                         ; preds = %if.then2
  %22 = load i32, ptr %indel_pos, align 4, !tbaa !12
  %23 = load i32, ptr %qstart, align 4, !tbaa !12
  %sub7 = sub nsw i32 %22, %23
  store i32 %sub7, ptr %supporti, align 4, !tbaa !12
  %24 = load i32, ptr %qend, align 4, !tbaa !12
  %25 = load i32, ptr %indel_pos, align 4, !tbaa !12
  %26 = load i32, ptr %nindels, align 4, !tbaa !12
  %add8 = add nsw i32 %25, %26
  %sub9 = sub nsw i32 %24, %add8
  store i32 %sub9, ptr %supportj, align 4, !tbaa !12
  %27 = load i32, ptr %supporti, align 4, !tbaa !12
  %28 = load i32, ptr %nmismatches_i, align 4, !tbaa !12
  %mul = mul nsw i32 3, %28
  %sub10 = sub nsw i32 %27, %mul
  %cmp11 = icmp slt i32 %sub10, 6
  br i1 %cmp11, label %if.then12, label %if.else13

if.then12:                                        ; preds = %if.else6
  br label %if.end23

if.else13:                                        ; preds = %if.else6
  %29 = load i32, ptr %supportj, align 4, !tbaa !12
  %30 = load i32, ptr %nmismatches_j, align 4, !tbaa !12
  %mul14 = mul nsw i32 3, %30
  %sub15 = sub nsw i32 %29, %mul14
  %cmp16 = icmp slt i32 %sub15, 6
  br i1 %cmp16, label %if.then17, label %if.else18

if.then17:                                        ; preds = %if.else13
  br label %if.end

if.else18:                                        ; preds = %if.else13
  %31 = load i32, ptr %univdiagonal_i.addr, align 4, !tbaa !12
  %32 = load i32, ptr %pos5_0.addr, align 4, !tbaa !12
  %33 = load i32, ptr %pos3_0.addr, align 4, !tbaa !12
  %34 = load i32, ptr %univdiagonal_j.addr, align 4, !tbaa !12
  %35 = load i32, ptr %pos5_1.addr, align 4, !tbaa !12
  %36 = load i32, ptr %pos3_1.addr, align 4, !tbaa !12
  %37 = load i8, ptr %plusp.addr, align 1, !tbaa !14
  %38 = load i32, ptr %genestrand.addr, align 4, !tbaa !12
  %39 = load i32, ptr %sensedir.addr, align 4, !tbaa !12
  %40 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %41 = load i32, ptr %method.addr, align 4, !tbaa !14
  %42 = load i32, ptr %chrnum.addr, align 4, !tbaa !12
  %43 = load i32, ptr %chroffset.addr, align 4, !tbaa !12
  %44 = load i32, ptr %chrhigh.addr, align 4, !tbaa !12
  %45 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %46 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %47 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %48 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %call19 = call ptr @Path_new_from_ends(i32 noundef %31, i32 noundef %32, i32 noundef %33, i32 noundef %34, i32 noundef %35, i32 noundef %36, i8 noundef zeroext %37, i32 noundef %38, i32 noundef %39, i32 noundef %40, i32 noundef %41, i32 noundef %42, i32 noundef %43, i32 noundef %44, ptr noundef %45, ptr noundef %46, ptr noundef %47, ptr noundef %48)
  store ptr %call19, ptr %path, align 8, !tbaa !5
  %49 = load ptr, ptr %path, align 8, !tbaa !5
  %junctions = getelementptr inbounds %struct.Path_T, ptr %49, i32 0, i32 21
  %50 = load ptr, ptr %junctions, align 8, !tbaa !43
  store ptr %50, ptr %j, align 8, !tbaa !5
  %51 = load ptr, ptr %path, align 8, !tbaa !5
  %univdiagonals = getelementptr inbounds %struct.Path_T, ptr %51, i32 0, i32 18
  %52 = load ptr, ptr %univdiagonals, align 8, !tbaa !36
  store ptr %52, ptr %p, align 8, !tbaa !5
  %53 = load ptr, ptr %path, align 8, !tbaa !5
  %endpoints = getelementptr inbounds %struct.Path_T, ptr %53, i32 0, i32 17
  %54 = load ptr, ptr %endpoints, align 8, !tbaa !40
  store ptr %54, ptr %q, align 8, !tbaa !5
  %55 = load ptr, ptr %path, align 8, !tbaa !5
  %ref_nmismatches = getelementptr inbounds %struct.Path_T, ptr %55, i32 0, i32 20
  %56 = load ptr, ptr %ref_nmismatches, align 8, !tbaa !42
  store ptr %56, ptr %r, align 8, !tbaa !5
  %57 = load ptr, ptr %path, align 8, !tbaa !5
  %nmismatches = getelementptr inbounds %struct.Path_T, ptr %57, i32 0, i32 19
  %58 = load ptr, ptr %nmismatches, align 8, !tbaa !41
  store ptr %58, ptr %s, align 8, !tbaa !5
  %59 = load ptr, ptr %j, align 8, !tbaa !5
  %60 = load i32, ptr %nindels, align 4, !tbaa !12
  %61 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %call20 = call ptr @Junction_new_insertion(i32 noundef %60, ptr noundef %61)
  call void @List_head_set(ptr noundef %59, ptr noundef %call20)
  %62 = load ptr, ptr %q, align 8, !tbaa !5
  %rest = getelementptr inbounds %struct.Intlist_T, ptr %62, i32 0, i32 1
  %63 = load ptr, ptr %rest, align 8, !tbaa !82
  %64 = load i32, ptr %indel_pos, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %63, i32 noundef %64)
  %65 = load ptr, ptr %s, align 8, !tbaa !5
  %rest21 = getelementptr inbounds %struct.Intlist_T, ptr %65, i32 0, i32 1
  %66 = load ptr, ptr %rest21, align 8, !tbaa !82
  %67 = load i32, ptr %nmismatches_j, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %66, i32 noundef %67)
  %68 = load ptr, ptr %r, align 8, !tbaa !5
  %rest22 = getelementptr inbounds %struct.Intlist_T, ptr %68, i32 0, i32 1
  %69 = load ptr, ptr %rest22, align 8, !tbaa !82
  %70 = load i32, ptr %ref_nmismatches_j, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %69, i32 noundef %70)
  %71 = load ptr, ptr %s, align 8, !tbaa !5
  %72 = load i32, ptr %nmismatches_i, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %71, i32 noundef %72)
  %73 = load ptr, ptr %r, align 8, !tbaa !5
  %74 = load i32, ptr %ref_nmismatches_i, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %73, i32 noundef %74)
  br label %if.end

if.end:                                           ; preds = %if.else18, %if.then17
  br label %if.end23

if.end23:                                         ; preds = %if.end, %if.then12
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.then5
  br label %if.end298

if.else25:                                        ; preds = %if.else
  %75 = load i32, ptr %univdiagonal_i.addr, align 4, !tbaa !12
  %76 = load i32, ptr %max_deletionlen.addr, align 4, !tbaa !12
  %add26 = add i32 %75, %76
  %77 = load i32, ptr %univdiagonal_j.addr, align 4, !tbaa !12
  %cmp27 = icmp uge i32 %add26, %77
  br i1 %cmp27, label %if.then28, label %if.else61

if.then28:                                        ; preds = %if.else25
  %78 = load i32, ptr %univdiagonal_j.addr, align 4, !tbaa !12
  %79 = load i32, ptr %univdiagonal_i.addr, align 4, !tbaa !12
  %sub29 = sub i32 %78, %79
  store i32 %sub29, ptr %nindels, align 4, !tbaa !12
  %80 = load i32, ptr %univdiagonal_i.addr, align 4, !tbaa !12
  %81 = load i32, ptr %nindels, align 4, !tbaa !12
  %sub30 = sub nsw i32 0, %81
  %82 = load ptr, ptr @genomebits, align 8, !tbaa !5
  %83 = load ptr, ptr @genomebits_alt, align 8, !tbaa !5
  %84 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %85 = load i32, ptr %qstart, align 4, !tbaa !12
  %86 = load i32, ptr %qend, align 4, !tbaa !12
  %87 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %88 = load ptr, ptr %indelinfo.addr, align 8, !tbaa !5
  %89 = load i8, ptr %plusp.addr, align 1, !tbaa !14
  %90 = load i32, ptr %genestrand.addr, align 4, !tbaa !12
  %call31 = call i32 @Indel_resolve_middle_deletion(ptr noundef %nmismatches_i, ptr noundef %nmismatches_j, ptr noundef %ref_nmismatches_i, ptr noundef %ref_nmismatches_j, i32 noundef %80, i32 noundef %sub30, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef %82, ptr noundef %83, ptr noundef %84, i32 noundef %85, i32 noundef %86, i32 noundef %87, ptr noundef %88, i8 noundef zeroext %89, i32 noundef %90, i8 noundef zeroext 1)
  store i32 %call31, ptr %indel_pos, align 4, !tbaa !12
  %cmp32 = icmp sle i32 %call31, 0
  br i1 %cmp32, label %if.then33, label %if.else34

if.then33:                                        ; preds = %if.then28
  br label %if.end60

if.else34:                                        ; preds = %if.then28
  %91 = load i32, ptr %indel_pos, align 4, !tbaa !12
  %92 = load i32, ptr %qstart, align 4, !tbaa !12
  %sub35 = sub nsw i32 %91, %92
  store i32 %sub35, ptr %supporti, align 4, !tbaa !12
  %93 = load i32, ptr %qend, align 4, !tbaa !12
  %94 = load i32, ptr %indel_pos, align 4, !tbaa !12
  %sub36 = sub nsw i32 %93, %94
  store i32 %sub36, ptr %supportj, align 4, !tbaa !12
  %95 = load i32, ptr %supporti, align 4, !tbaa !12
  %96 = load i32, ptr %nmismatches_i, align 4, !tbaa !12
  %mul37 = mul nsw i32 3, %96
  %sub38 = sub nsw i32 %95, %mul37
  %cmp39 = icmp slt i32 %sub38, 6
  br i1 %cmp39, label %if.then40, label %if.else41

if.then40:                                        ; preds = %if.else34
  br label %if.end59

if.else41:                                        ; preds = %if.else34
  %97 = load i32, ptr %supportj, align 4, !tbaa !12
  %98 = load i32, ptr %nmismatches_j, align 4, !tbaa !12
  %mul42 = mul nsw i32 3, %98
  %sub43 = sub nsw i32 %97, %mul42
  %cmp44 = icmp slt i32 %sub43, 6
  br i1 %cmp44, label %if.then45, label %if.else46

if.then45:                                        ; preds = %if.else41
  br label %if.end58

if.else46:                                        ; preds = %if.else41
  %99 = load i32, ptr %univdiagonal_i.addr, align 4, !tbaa !12
  %100 = load i32, ptr %pos5_0.addr, align 4, !tbaa !12
  %101 = load i32, ptr %pos3_0.addr, align 4, !tbaa !12
  %102 = load i32, ptr %univdiagonal_j.addr, align 4, !tbaa !12
  %103 = load i32, ptr %pos5_1.addr, align 4, !tbaa !12
  %104 = load i32, ptr %pos3_1.addr, align 4, !tbaa !12
  %105 = load i8, ptr %plusp.addr, align 1, !tbaa !14
  %106 = load i32, ptr %genestrand.addr, align 4, !tbaa !12
  %107 = load i32, ptr %sensedir.addr, align 4, !tbaa !12
  %108 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %109 = load i32, ptr %method.addr, align 4, !tbaa !14
  %110 = load i32, ptr %chrnum.addr, align 4, !tbaa !12
  %111 = load i32, ptr %chroffset.addr, align 4, !tbaa !12
  %112 = load i32, ptr %chrhigh.addr, align 4, !tbaa !12
  %113 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %114 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %115 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %116 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %call47 = call ptr @Path_new_from_ends(i32 noundef %99, i32 noundef %100, i32 noundef %101, i32 noundef %102, i32 noundef %103, i32 noundef %104, i8 noundef zeroext %105, i32 noundef %106, i32 noundef %107, i32 noundef %108, i32 noundef %109, i32 noundef %110, i32 noundef %111, i32 noundef %112, ptr noundef %113, ptr noundef %114, ptr noundef %115, ptr noundef %116)
  store ptr %call47, ptr %path, align 8, !tbaa !5
  %117 = load ptr, ptr %path, align 8, !tbaa !5
  %junctions48 = getelementptr inbounds %struct.Path_T, ptr %117, i32 0, i32 21
  %118 = load ptr, ptr %junctions48, align 8, !tbaa !43
  store ptr %118, ptr %j, align 8, !tbaa !5
  %119 = load ptr, ptr %path, align 8, !tbaa !5
  %univdiagonals49 = getelementptr inbounds %struct.Path_T, ptr %119, i32 0, i32 18
  %120 = load ptr, ptr %univdiagonals49, align 8, !tbaa !36
  store ptr %120, ptr %p, align 8, !tbaa !5
  %121 = load ptr, ptr %path, align 8, !tbaa !5
  %endpoints50 = getelementptr inbounds %struct.Path_T, ptr %121, i32 0, i32 17
  %122 = load ptr, ptr %endpoints50, align 8, !tbaa !40
  store ptr %122, ptr %q, align 8, !tbaa !5
  %123 = load ptr, ptr %path, align 8, !tbaa !5
  %ref_nmismatches51 = getelementptr inbounds %struct.Path_T, ptr %123, i32 0, i32 20
  %124 = load ptr, ptr %ref_nmismatches51, align 8, !tbaa !42
  store ptr %124, ptr %r, align 8, !tbaa !5
  %125 = load ptr, ptr %path, align 8, !tbaa !5
  %nmismatches52 = getelementptr inbounds %struct.Path_T, ptr %125, i32 0, i32 19
  %126 = load ptr, ptr %nmismatches52, align 8, !tbaa !41
  store ptr %126, ptr %s, align 8, !tbaa !5
  %127 = load i32, ptr %segmenti_left, align 4, !tbaa !12
  %128 = load i32, ptr %indel_pos, align 4, !tbaa !12
  %add53 = add i32 %127, %128
  store i32 %add53, ptr %deletionpos, align 4, !tbaa !12
  %129 = load ptr, ptr %j, align 8, !tbaa !5
  %130 = load i32, ptr %nindels, align 4, !tbaa !12
  %131 = load i32, ptr %deletionpos, align 4, !tbaa !12
  %132 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %call54 = call ptr @Junction_new_deletion(i32 noundef %130, i32 noundef %131, ptr noundef %132)
  call void @List_head_set(ptr noundef %129, ptr noundef %call54)
  %133 = load ptr, ptr %q, align 8, !tbaa !5
  %rest55 = getelementptr inbounds %struct.Intlist_T, ptr %133, i32 0, i32 1
  %134 = load ptr, ptr %rest55, align 8, !tbaa !82
  %135 = load i32, ptr %indel_pos, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %134, i32 noundef %135)
  %136 = load ptr, ptr %s, align 8, !tbaa !5
  %rest56 = getelementptr inbounds %struct.Intlist_T, ptr %136, i32 0, i32 1
  %137 = load ptr, ptr %rest56, align 8, !tbaa !82
  %138 = load i32, ptr %nmismatches_j, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %137, i32 noundef %138)
  %139 = load ptr, ptr %r, align 8, !tbaa !5
  %rest57 = getelementptr inbounds %struct.Intlist_T, ptr %139, i32 0, i32 1
  %140 = load ptr, ptr %rest57, align 8, !tbaa !82
  %141 = load i32, ptr %ref_nmismatches_j, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %140, i32 noundef %141)
  %142 = load ptr, ptr %s, align 8, !tbaa !5
  %143 = load i32, ptr %nmismatches_i, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %142, i32 noundef %143)
  %144 = load ptr, ptr %r, align 8, !tbaa !5
  %145 = load i32, ptr %ref_nmismatches_i, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %144, i32 noundef %145)
  br label %if.end58

if.end58:                                         ; preds = %if.else46, %if.then45
  br label %if.end59

if.end59:                                         ; preds = %if.end58, %if.then40
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %if.then33
  br label %if.end297

if.else61:                                        ; preds = %if.else25
  %146 = load i32, ptr %sensedir.addr, align 4, !tbaa !12
  %cmp62 = icmp eq i32 %146, 2
  br i1 %cmp62, label %if.then63, label %if.else182

if.then63:                                        ; preds = %if.else61
  %147 = load i32, ptr %univdiagonal_i.addr, align 4, !tbaa !12
  %148 = load i32, ptr %pos5_0.addr, align 4, !tbaa !12
  %149 = load i32, ptr %pos3_0.addr, align 4, !tbaa !12
  %150 = load i32, ptr %univdiagonal_j.addr, align 4, !tbaa !12
  %151 = load i32, ptr %pos5_1.addr, align 4, !tbaa !12
  %152 = load i32, ptr %pos3_1.addr, align 4, !tbaa !12
  %153 = load i8, ptr %plusp.addr, align 1, !tbaa !14
  %154 = load i32, ptr %genestrand.addr, align 4, !tbaa !12
  %155 = load i32, ptr %sensedir.addr, align 4, !tbaa !12
  %156 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %157 = load i32, ptr %method.addr, align 4, !tbaa !14
  %158 = load i32, ptr %chrnum.addr, align 4, !tbaa !12
  %159 = load i32, ptr %chroffset.addr, align 4, !tbaa !12
  %160 = load i32, ptr %chrhigh.addr, align 4, !tbaa !12
  %161 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %162 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %163 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %164 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %call64 = call ptr @Path_new_from_ends(i32 noundef %147, i32 noundef %148, i32 noundef %149, i32 noundef %150, i32 noundef %151, i32 noundef %152, i8 noundef zeroext %153, i32 noundef %154, i32 noundef %155, i32 noundef %156, i32 noundef %157, i32 noundef %158, i32 noundef %159, i32 noundef %160, ptr noundef %161, ptr noundef %162, ptr noundef %163, ptr noundef %164)
  store ptr %call64, ptr %path, align 8, !tbaa !5
  %165 = load ptr, ptr %path, align 8, !tbaa !5
  %junctions65 = getelementptr inbounds %struct.Path_T, ptr %165, i32 0, i32 21
  %166 = load ptr, ptr %junctions65, align 8, !tbaa !43
  store ptr %166, ptr %j, align 8, !tbaa !5
  %167 = load ptr, ptr %path, align 8, !tbaa !5
  %univdiagonals66 = getelementptr inbounds %struct.Path_T, ptr %167, i32 0, i32 18
  %168 = load ptr, ptr %univdiagonals66, align 8, !tbaa !36
  store ptr %168, ptr %p, align 8, !tbaa !5
  %169 = load ptr, ptr %path, align 8, !tbaa !5
  %endpoints67 = getelementptr inbounds %struct.Path_T, ptr %169, i32 0, i32 17
  %170 = load ptr, ptr %endpoints67, align 8, !tbaa !40
  store ptr %170, ptr %q, align 8, !tbaa !5
  %171 = load ptr, ptr %path, align 8, !tbaa !5
  %ref_nmismatches68 = getelementptr inbounds %struct.Path_T, ptr %171, i32 0, i32 20
  %172 = load ptr, ptr %ref_nmismatches68, align 8, !tbaa !42
  store ptr %172, ptr %r, align 8, !tbaa !5
  %173 = load ptr, ptr %path, align 8, !tbaa !5
  %nmismatches69 = getelementptr inbounds %struct.Path_T, ptr %173, i32 0, i32 19
  %174 = load ptr, ptr %nmismatches69, align 8, !tbaa !41
  store ptr %174, ptr %s, align 8, !tbaa !5
  %175 = load i32, ptr %univdiagonal_i.addr, align 4, !tbaa !12
  %176 = load i32, ptr %univdiagonal_j.addr, align 4, !tbaa !12
  %177 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %178 = load i8, ptr %plusp.addr, align 1, !tbaa !14
  %179 = load i32, ptr %chroffset.addr, align 4, !tbaa !12
  %180 = load i32, ptr %qstart, align 4, !tbaa !12
  %181 = load i32, ptr %qend, align 4, !tbaa !12
  %182 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %183 = load ptr, ptr %indelinfo.addr, align 8, !tbaa !5
  %184 = load ptr, ptr %spliceinfo.addr, align 8, !tbaa !5
  %185 = load ptr, ptr %knownsplicing.addr, align 8, !tbaa !5
  %186 = load i32, ptr %genestrand.addr, align 4, !tbaa !12
  %187 = load i32, ptr %nmismatches_allowed.addr, align 4, !tbaa !12
  %188 = load i32, ptr %max_insertionlen.addr, align 4, !tbaa !12
  %189 = load i32, ptr %max_deletionlen.addr, align 4, !tbaa !12
  %call70 = call i32 @Splice_resolve(ptr noundef %middle_univdiagonal, ptr noundef %splice_qpos_i, ptr noundef %splice_qpos_j, ptr noundef %nindels, ptr noundef %indel_pos, ptr noundef %nmismatches_i, ptr noundef %nmismatches_middle, ptr noundef %nmismatches_j, ptr noundef %nmismatches_indel, ptr noundef %ref_nmismatches_i, ptr noundef %ref_nmismatches_middle, ptr noundef %ref_nmismatches_j, ptr noundef %ref_nmismatches_indel, ptr noundef %donor_prob, ptr noundef %acceptor_prob, i32 noundef %175, i32 noundef %176, ptr noundef %177, i8 noundef zeroext %178, i32 noundef %179, i32 noundef %180, i32 noundef %181, i32 noundef %182, ptr noundef %183, ptr noundef %184, ptr noundef %185, i8 noundef zeroext 1, i32 noundef %186, i32 noundef %187, i32 noundef %188, i32 noundef %189, i8 noundef zeroext 0, i8 noundef zeroext 1)
  store i32 %call70, ptr %splice_qpos, align 4, !tbaa !12
  %cmp71 = icmp slt i32 %call70, 0
  br i1 %cmp71, label %if.then72, label %if.else106

if.then72:                                        ; preds = %if.then63
  %190 = load i32, ptr %middle_univdiagonal, align 4, !tbaa !12
  %cmp73 = icmp ne i32 %190, 0
  br i1 %cmp73, label %if.then74, label %if.else102

if.then74:                                        ; preds = %if.then72
  %191 = load ptr, ptr %path, align 8, !tbaa !5
  %junctions75 = getelementptr inbounds %struct.Path_T, ptr %191, i32 0, i32 21
  %192 = load ptr, ptr %junctions75, align 8, !tbaa !43
  store ptr %192, ptr %j, align 8, !tbaa !5
  %193 = load ptr, ptr %path, align 8, !tbaa !5
  %univdiagonals76 = getelementptr inbounds %struct.Path_T, ptr %193, i32 0, i32 18
  %194 = load ptr, ptr %univdiagonals76, align 8, !tbaa !36
  store ptr %194, ptr %p, align 8, !tbaa !5
  %195 = load ptr, ptr %path, align 8, !tbaa !5
  %endpoints77 = getelementptr inbounds %struct.Path_T, ptr %195, i32 0, i32 17
  %196 = load ptr, ptr %endpoints77, align 8, !tbaa !40
  store ptr %196, ptr %q, align 8, !tbaa !5
  %197 = load ptr, ptr %path, align 8, !tbaa !5
  %ref_nmismatches78 = getelementptr inbounds %struct.Path_T, ptr %197, i32 0, i32 20
  %198 = load ptr, ptr %ref_nmismatches78, align 8, !tbaa !42
  store ptr %198, ptr %r, align 8, !tbaa !5
  %199 = load ptr, ptr %path, align 8, !tbaa !5
  %nmismatches79 = getelementptr inbounds %struct.Path_T, ptr %199, i32 0, i32 19
  %200 = load ptr, ptr %nmismatches79, align 8, !tbaa !41
  store ptr %200, ptr %s, align 8, !tbaa !5
  %201 = load i32, ptr %univdiagonal_j.addr, align 4, !tbaa !12
  %202 = load i32, ptr %middle_univdiagonal, align 4, !tbaa !12
  %sub80 = sub i32 %201, %202
  store i32 %sub80, ptr %splice_distance_j, align 4, !tbaa !12
  %203 = load i32, ptr %middle_univdiagonal, align 4, !tbaa !12
  %204 = load i32, ptr %univdiagonal_i.addr, align 4, !tbaa !12
  %sub81 = sub i32 %203, %204
  store i32 %sub81, ptr %splice_distance_i, align 4, !tbaa !12
  %205 = load ptr, ptr %q, align 8, !tbaa !5
  %rest82 = getelementptr inbounds %struct.Intlist_T, ptr %205, i32 0, i32 1
  %206 = load ptr, ptr %rest82, align 8, !tbaa !82
  %207 = load i32, ptr %splice_qpos_j, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %206, i32 noundef %207)
  %208 = load ptr, ptr %q, align 8, !tbaa !5
  %rest83 = getelementptr inbounds %struct.Intlist_T, ptr %208, i32 0, i32 1
  %209 = load ptr, ptr %rest83, align 8, !tbaa !82
  %210 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %211 = load i32, ptr %splice_qpos_i, align 4, !tbaa !12
  %call84 = call ptr @Intlistpool_push(ptr noundef %209, ptr noundef %210, i32 noundef %211)
  %212 = load ptr, ptr %q, align 8, !tbaa !5
  %rest85 = getelementptr inbounds %struct.Intlist_T, ptr %212, i32 0, i32 1
  store ptr %call84, ptr %rest85, align 8, !tbaa !82
  %213 = load ptr, ptr %j, align 8, !tbaa !5
  %rest86 = getelementptr inbounds %struct.List_T, ptr %213, i32 0, i32 1
  %214 = load ptr, ptr %rest86, align 8, !tbaa !11
  %215 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %216 = load i32, ptr %splice_distance_j, align 4, !tbaa !12
  %217 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %call87 = call ptr @Junction_new_splice(i32 noundef %216, i32 noundef 2, double noundef 1.000000e+00, double noundef 1.000000e+00, ptr noundef %217)
  %call88 = call ptr @Listpool_push(ptr noundef %214, ptr noundef %215, ptr noundef %call87)
  %218 = load ptr, ptr %j, align 8, !tbaa !5
  %rest89 = getelementptr inbounds %struct.List_T, ptr %218, i32 0, i32 1
  store ptr %call88, ptr %rest89, align 8, !tbaa !11
  %219 = load ptr, ptr %j, align 8, !tbaa !5
  %220 = load i32, ptr %splice_distance_i, align 4, !tbaa !12
  %221 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %call90 = call ptr @Junction_new_splice(i32 noundef %220, i32 noundef 2, double noundef 1.000000e+00, double noundef 1.000000e+00, ptr noundef %221)
  call void @List_head_set(ptr noundef %219, ptr noundef %call90)
  %222 = load ptr, ptr %s, align 8, !tbaa !5
  %rest91 = getelementptr inbounds %struct.Intlist_T, ptr %222, i32 0, i32 1
  %223 = load ptr, ptr %rest91, align 8, !tbaa !82
  %224 = load i32, ptr %nmismatches_j, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %223, i32 noundef %224)
  %225 = load ptr, ptr %r, align 8, !tbaa !5
  %rest92 = getelementptr inbounds %struct.Intlist_T, ptr %225, i32 0, i32 1
  %226 = load ptr, ptr %rest92, align 8, !tbaa !82
  %227 = load i32, ptr %ref_nmismatches_j, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %226, i32 noundef %227)
  %228 = load ptr, ptr %s, align 8, !tbaa !5
  %rest93 = getelementptr inbounds %struct.Intlist_T, ptr %228, i32 0, i32 1
  %229 = load ptr, ptr %rest93, align 8, !tbaa !82
  %230 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %231 = load i32, ptr %nmismatches_middle, align 4, !tbaa !12
  %call94 = call ptr @Intlistpool_push(ptr noundef %229, ptr noundef %230, i32 noundef %231)
  %232 = load ptr, ptr %s, align 8, !tbaa !5
  %rest95 = getelementptr inbounds %struct.Intlist_T, ptr %232, i32 0, i32 1
  store ptr %call94, ptr %rest95, align 8, !tbaa !82
  %233 = load ptr, ptr %r, align 8, !tbaa !5
  %rest96 = getelementptr inbounds %struct.Intlist_T, ptr %233, i32 0, i32 1
  %234 = load ptr, ptr %rest96, align 8, !tbaa !82
  %235 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %236 = load i32, ptr %ref_nmismatches_middle, align 4, !tbaa !12
  %call97 = call ptr @Intlistpool_push(ptr noundef %234, ptr noundef %235, i32 noundef %236)
  %237 = load ptr, ptr %r, align 8, !tbaa !5
  %rest98 = getelementptr inbounds %struct.Intlist_T, ptr %237, i32 0, i32 1
  store ptr %call97, ptr %rest98, align 8, !tbaa !82
  %238 = load ptr, ptr %s, align 8, !tbaa !5
  %239 = load i32, ptr %nmismatches_i, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %238, i32 noundef %239)
  %240 = load ptr, ptr %r, align 8, !tbaa !5
  %241 = load i32, ptr %ref_nmismatches_i, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %240, i32 noundef %241)
  %242 = load ptr, ptr %p, align 8, !tbaa !5
  %rest99 = getelementptr inbounds %struct.Uintlist_T, ptr %242, i32 0, i32 1
  %243 = load ptr, ptr %rest99, align 8, !tbaa !84
  %244 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %245 = load i32, ptr %middle_univdiagonal, align 4, !tbaa !12
  %call100 = call ptr @Uintlistpool_push(ptr noundef %243, ptr noundef %244, i32 noundef %245)
  %246 = load ptr, ptr %p, align 8, !tbaa !5
  %rest101 = getelementptr inbounds %struct.Uintlist_T, ptr %246, i32 0, i32 1
  store ptr %call100, ptr %rest101, align 8, !tbaa !84
  br label %if.end105

if.else102:                                       ; preds = %if.then72
  %247 = load ptr, ptr %unsolved_paths.addr, align 8, !tbaa !5
  %248 = load ptr, ptr %247, align 8, !tbaa !5
  %249 = load ptr, ptr %hitlistpool.addr, align 8, !tbaa !5
  %250 = load ptr, ptr %path, align 8, !tbaa !5
  %call103 = call ptr @Path_expect_fwd(ptr noundef %250)
  %call104 = call ptr @Hitlist_push(ptr noundef %248, ptr noundef %249, ptr noundef %call103)
  %251 = load ptr, ptr %unsolved_paths.addr, align 8, !tbaa !5
  store ptr %call104, ptr %251, align 8, !tbaa !5
  store ptr null, ptr %path, align 8, !tbaa !5
  br label %if.end105

if.end105:                                        ; preds = %if.else102, %if.then74
  br label %if.end181

if.else106:                                       ; preds = %if.then63
  %252 = load i32, ptr %nindels, align 4, !tbaa !12
  %cmp107 = icmp eq i32 %252, 0
  br i1 %cmp107, label %if.then108, label %if.else114

if.then108:                                       ; preds = %if.else106
  %253 = load i32, ptr %univdiagonal_j.addr, align 4, !tbaa !12
  %254 = load i32, ptr %univdiagonal_i.addr, align 4, !tbaa !12
  %sub109 = sub i32 %253, %254
  store i32 %sub109, ptr %splice_distance, align 4, !tbaa !12
  %255 = load ptr, ptr %q, align 8, !tbaa !5
  %rest110 = getelementptr inbounds %struct.Intlist_T, ptr %255, i32 0, i32 1
  %256 = load ptr, ptr %rest110, align 8, !tbaa !82
  %257 = load i32, ptr %splice_qpos, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %256, i32 noundef %257)
  %258 = load ptr, ptr %j, align 8, !tbaa !5
  %259 = load i32, ptr %splice_distance, align 4, !tbaa !12
  %260 = load double, ptr %donor_prob, align 8, !tbaa !44
  %261 = load double, ptr %acceptor_prob, align 8, !tbaa !44
  %262 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %call111 = call ptr @Junction_new_splice(i32 noundef %259, i32 noundef 2, double noundef %260, double noundef %261, ptr noundef %262)
  call void @List_head_set(ptr noundef %258, ptr noundef %call111)
  %263 = load ptr, ptr %s, align 8, !tbaa !5
  %rest112 = getelementptr inbounds %struct.Intlist_T, ptr %263, i32 0, i32 1
  %264 = load ptr, ptr %rest112, align 8, !tbaa !82
  %265 = load i32, ptr %nmismatches_j, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %264, i32 noundef %265)
  %266 = load ptr, ptr %r, align 8, !tbaa !5
  %rest113 = getelementptr inbounds %struct.Intlist_T, ptr %266, i32 0, i32 1
  %267 = load ptr, ptr %rest113, align 8, !tbaa !82
  %268 = load i32, ptr %ref_nmismatches_j, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %267, i32 noundef %268)
  %269 = load ptr, ptr %s, align 8, !tbaa !5
  %270 = load i32, ptr %nmismatches_i, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %269, i32 noundef %270)
  %271 = load ptr, ptr %r, align 8, !tbaa !5
  %272 = load i32, ptr %ref_nmismatches_i, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %271, i32 noundef %272)
  br label %if.end180

if.else114:                                       ; preds = %if.else106
  %273 = load i32, ptr %splice_qpos, align 4, !tbaa !12
  %274 = load i32, ptr %indel_pos, align 4, !tbaa !12
  %cmp115 = icmp slt i32 %273, %274
  br i1 %cmp115, label %if.then116, label %if.else149

if.then116:                                       ; preds = %if.else114
  %275 = load i32, ptr %univdiagonal_j.addr, align 4, !tbaa !12
  %276 = load i32, ptr %nindels, align 4, !tbaa !12
  %sub117 = sub i32 %275, %276
  store i32 %sub117, ptr %middle_univdiagonal, align 4, !tbaa !12
  %277 = load i32, ptr %middle_univdiagonal, align 4, !tbaa !12
  %278 = load i32, ptr %univdiagonal_i.addr, align 4, !tbaa !12
  %sub118 = sub i32 %277, %278
  store i32 %sub118, ptr %splice_distance, align 4, !tbaa !12
  %279 = load ptr, ptr %q, align 8, !tbaa !5
  %rest119 = getelementptr inbounds %struct.Intlist_T, ptr %279, i32 0, i32 1
  %280 = load ptr, ptr %rest119, align 8, !tbaa !82
  %281 = load i32, ptr %indel_pos, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %280, i32 noundef %281)
  %282 = load ptr, ptr %q, align 8, !tbaa !5
  %rest120 = getelementptr inbounds %struct.Intlist_T, ptr %282, i32 0, i32 1
  %283 = load ptr, ptr %rest120, align 8, !tbaa !82
  %284 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %285 = load i32, ptr %splice_qpos, align 4, !tbaa !12
  %call121 = call ptr @Intlistpool_push(ptr noundef %283, ptr noundef %284, i32 noundef %285)
  %286 = load ptr, ptr %q, align 8, !tbaa !5
  %rest122 = getelementptr inbounds %struct.Intlist_T, ptr %286, i32 0, i32 1
  store ptr %call121, ptr %rest122, align 8, !tbaa !82
  %287 = load i32, ptr %nindels, align 4, !tbaa !12
  %cmp123 = icmp slt i32 %287, 0
  br i1 %cmp123, label %if.then124, label %if.else130

if.then124:                                       ; preds = %if.then116
  %288 = load ptr, ptr %j, align 8, !tbaa !5
  %rest125 = getelementptr inbounds %struct.List_T, ptr %288, i32 0, i32 1
  %289 = load ptr, ptr %rest125, align 8, !tbaa !11
  %290 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %291 = load i32, ptr %nindels, align 4, !tbaa !12
  %sub126 = sub nsw i32 0, %291
  %292 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %call127 = call ptr @Junction_new_insertion(i32 noundef %sub126, ptr noundef %292)
  %call128 = call ptr @Listpool_push(ptr noundef %289, ptr noundef %290, ptr noundef %call127)
  %293 = load ptr, ptr %j, align 8, !tbaa !5
  %rest129 = getelementptr inbounds %struct.List_T, ptr %293, i32 0, i32 1
  store ptr %call128, ptr %rest129, align 8, !tbaa !11
  br label %if.end136

if.else130:                                       ; preds = %if.then116
  %294 = load i32, ptr %segmenti_left, align 4, !tbaa !12
  %295 = load i32, ptr %indel_pos, align 4, !tbaa !12
  %add131 = add i32 %294, %295
  store i32 %add131, ptr %deletionpos, align 4, !tbaa !12
  %296 = load ptr, ptr %j, align 8, !tbaa !5
  %rest132 = getelementptr inbounds %struct.List_T, ptr %296, i32 0, i32 1
  %297 = load ptr, ptr %rest132, align 8, !tbaa !11
  %298 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %299 = load i32, ptr %nindels, align 4, !tbaa !12
  %300 = load i32, ptr %deletionpos, align 4, !tbaa !12
  %301 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %call133 = call ptr @Junction_new_deletion(i32 noundef %299, i32 noundef %300, ptr noundef %301)
  %call134 = call ptr @Listpool_push(ptr noundef %297, ptr noundef %298, ptr noundef %call133)
  %302 = load ptr, ptr %j, align 8, !tbaa !5
  %rest135 = getelementptr inbounds %struct.List_T, ptr %302, i32 0, i32 1
  store ptr %call134, ptr %rest135, align 8, !tbaa !11
  br label %if.end136

if.end136:                                        ; preds = %if.else130, %if.then124
  %303 = load ptr, ptr %j, align 8, !tbaa !5
  %304 = load i32, ptr %splice_distance, align 4, !tbaa !12
  %305 = load double, ptr %donor_prob, align 8, !tbaa !44
  %306 = load double, ptr %acceptor_prob, align 8, !tbaa !44
  %307 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %call137 = call ptr @Junction_new_splice(i32 noundef %304, i32 noundef 2, double noundef %305, double noundef %306, ptr noundef %307)
  call void @List_head_set(ptr noundef %303, ptr noundef %call137)
  %308 = load ptr, ptr %s, align 8, !tbaa !5
  %rest138 = getelementptr inbounds %struct.Intlist_T, ptr %308, i32 0, i32 1
  %309 = load ptr, ptr %rest138, align 8, !tbaa !82
  %310 = load i32, ptr %nmismatches_j, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %309, i32 noundef %310)
  %311 = load ptr, ptr %r, align 8, !tbaa !5
  %rest139 = getelementptr inbounds %struct.Intlist_T, ptr %311, i32 0, i32 1
  %312 = load ptr, ptr %rest139, align 8, !tbaa !82
  %313 = load i32, ptr %ref_nmismatches_j, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %312, i32 noundef %313)
  %314 = load ptr, ptr %s, align 8, !tbaa !5
  %rest140 = getelementptr inbounds %struct.Intlist_T, ptr %314, i32 0, i32 1
  %315 = load ptr, ptr %rest140, align 8, !tbaa !82
  %316 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %317 = load i32, ptr %nmismatches_indel, align 4, !tbaa !12
  %call141 = call ptr @Intlistpool_push(ptr noundef %315, ptr noundef %316, i32 noundef %317)
  %318 = load ptr, ptr %s, align 8, !tbaa !5
  %rest142 = getelementptr inbounds %struct.Intlist_T, ptr %318, i32 0, i32 1
  store ptr %call141, ptr %rest142, align 8, !tbaa !82
  %319 = load ptr, ptr %r, align 8, !tbaa !5
  %rest143 = getelementptr inbounds %struct.Intlist_T, ptr %319, i32 0, i32 1
  %320 = load ptr, ptr %rest143, align 8, !tbaa !82
  %321 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %322 = load i32, ptr %ref_nmismatches_indel, align 4, !tbaa !12
  %call144 = call ptr @Intlistpool_push(ptr noundef %320, ptr noundef %321, i32 noundef %322)
  %323 = load ptr, ptr %r, align 8, !tbaa !5
  %rest145 = getelementptr inbounds %struct.Intlist_T, ptr %323, i32 0, i32 1
  store ptr %call144, ptr %rest145, align 8, !tbaa !82
  %324 = load ptr, ptr %s, align 8, !tbaa !5
  %325 = load i32, ptr %nmismatches_i, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %324, i32 noundef %325)
  %326 = load ptr, ptr %r, align 8, !tbaa !5
  %327 = load i32, ptr %ref_nmismatches_i, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %326, i32 noundef %327)
  %328 = load ptr, ptr %p, align 8, !tbaa !5
  %rest146 = getelementptr inbounds %struct.Uintlist_T, ptr %328, i32 0, i32 1
  %329 = load ptr, ptr %rest146, align 8, !tbaa !84
  %330 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %331 = load i32, ptr %middle_univdiagonal, align 4, !tbaa !12
  %call147 = call ptr @Uintlistpool_push(ptr noundef %329, ptr noundef %330, i32 noundef %331)
  %332 = load ptr, ptr %p, align 8, !tbaa !5
  %rest148 = getelementptr inbounds %struct.Uintlist_T, ptr %332, i32 0, i32 1
  store ptr %call147, ptr %rest148, align 8, !tbaa !84
  br label %if.end179

if.else149:                                       ; preds = %if.else114
  %333 = load i32, ptr %univdiagonal_i.addr, align 4, !tbaa !12
  %334 = load i32, ptr %nindels, align 4, !tbaa !12
  %add150 = add i32 %333, %334
  store i32 %add150, ptr %middle_univdiagonal, align 4, !tbaa !12
  %335 = load i32, ptr %univdiagonal_j.addr, align 4, !tbaa !12
  %336 = load i32, ptr %middle_univdiagonal, align 4, !tbaa !12
  %sub151 = sub i32 %335, %336
  store i32 %sub151, ptr %splice_distance, align 4, !tbaa !12
  %337 = load ptr, ptr %q, align 8, !tbaa !5
  %rest152 = getelementptr inbounds %struct.Intlist_T, ptr %337, i32 0, i32 1
  %338 = load ptr, ptr %rest152, align 8, !tbaa !82
  %339 = load i32, ptr %splice_qpos, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %338, i32 noundef %339)
  %340 = load ptr, ptr %q, align 8, !tbaa !5
  %rest153 = getelementptr inbounds %struct.Intlist_T, ptr %340, i32 0, i32 1
  %341 = load ptr, ptr %rest153, align 8, !tbaa !82
  %342 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %343 = load i32, ptr %indel_pos, align 4, !tbaa !12
  %call154 = call ptr @Intlistpool_push(ptr noundef %341, ptr noundef %342, i32 noundef %343)
  %344 = load ptr, ptr %q, align 8, !tbaa !5
  %rest155 = getelementptr inbounds %struct.Intlist_T, ptr %344, i32 0, i32 1
  store ptr %call154, ptr %rest155, align 8, !tbaa !82
  %345 = load ptr, ptr %j, align 8, !tbaa !5
  %rest156 = getelementptr inbounds %struct.List_T, ptr %345, i32 0, i32 1
  %346 = load ptr, ptr %rest156, align 8, !tbaa !11
  %347 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %348 = load i32, ptr %splice_distance, align 4, !tbaa !12
  %349 = load double, ptr %donor_prob, align 8, !tbaa !44
  %350 = load double, ptr %acceptor_prob, align 8, !tbaa !44
  %351 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %call157 = call ptr @Junction_new_splice(i32 noundef %348, i32 noundef 2, double noundef %349, double noundef %350, ptr noundef %351)
  %call158 = call ptr @Listpool_push(ptr noundef %346, ptr noundef %347, ptr noundef %call157)
  %352 = load ptr, ptr %j, align 8, !tbaa !5
  %rest159 = getelementptr inbounds %struct.List_T, ptr %352, i32 0, i32 1
  store ptr %call158, ptr %rest159, align 8, !tbaa !11
  %353 = load i32, ptr %nindels, align 4, !tbaa !12
  %cmp160 = icmp slt i32 %353, 0
  br i1 %cmp160, label %if.then161, label %if.else164

if.then161:                                       ; preds = %if.else149
  %354 = load ptr, ptr %j, align 8, !tbaa !5
  %355 = load i32, ptr %nindels, align 4, !tbaa !12
  %sub162 = sub nsw i32 0, %355
  %356 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %call163 = call ptr @Junction_new_insertion(i32 noundef %sub162, ptr noundef %356)
  call void @List_head_set(ptr noundef %354, ptr noundef %call163)
  br label %if.end167

if.else164:                                       ; preds = %if.else149
  %357 = load i32, ptr %segmenti_left, align 4, !tbaa !12
  %358 = load i32, ptr %indel_pos, align 4, !tbaa !12
  %add165 = add i32 %357, %358
  store i32 %add165, ptr %deletionpos, align 4, !tbaa !12
  %359 = load ptr, ptr %j, align 8, !tbaa !5
  %360 = load i32, ptr %nindels, align 4, !tbaa !12
  %361 = load i32, ptr %deletionpos, align 4, !tbaa !12
  %362 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %call166 = call ptr @Junction_new_deletion(i32 noundef %360, i32 noundef %361, ptr noundef %362)
  call void @List_head_set(ptr noundef %359, ptr noundef %call166)
  br label %if.end167

if.end167:                                        ; preds = %if.else164, %if.then161
  %363 = load ptr, ptr %s, align 8, !tbaa !5
  %rest168 = getelementptr inbounds %struct.Intlist_T, ptr %363, i32 0, i32 1
  %364 = load ptr, ptr %rest168, align 8, !tbaa !82
  %365 = load i32, ptr %nmismatches_j, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %364, i32 noundef %365)
  %366 = load ptr, ptr %r, align 8, !tbaa !5
  %rest169 = getelementptr inbounds %struct.Intlist_T, ptr %366, i32 0, i32 1
  %367 = load ptr, ptr %rest169, align 8, !tbaa !82
  %368 = load i32, ptr %ref_nmismatches_j, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %367, i32 noundef %368)
  %369 = load ptr, ptr %s, align 8, !tbaa !5
  %rest170 = getelementptr inbounds %struct.Intlist_T, ptr %369, i32 0, i32 1
  %370 = load ptr, ptr %rest170, align 8, !tbaa !82
  %371 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %372 = load i32, ptr %nmismatches_indel, align 4, !tbaa !12
  %call171 = call ptr @Intlistpool_push(ptr noundef %370, ptr noundef %371, i32 noundef %372)
  %373 = load ptr, ptr %s, align 8, !tbaa !5
  %rest172 = getelementptr inbounds %struct.Intlist_T, ptr %373, i32 0, i32 1
  store ptr %call171, ptr %rest172, align 8, !tbaa !82
  %374 = load ptr, ptr %r, align 8, !tbaa !5
  %rest173 = getelementptr inbounds %struct.Intlist_T, ptr %374, i32 0, i32 1
  %375 = load ptr, ptr %rest173, align 8, !tbaa !82
  %376 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %377 = load i32, ptr %ref_nmismatches_indel, align 4, !tbaa !12
  %call174 = call ptr @Intlistpool_push(ptr noundef %375, ptr noundef %376, i32 noundef %377)
  %378 = load ptr, ptr %r, align 8, !tbaa !5
  %rest175 = getelementptr inbounds %struct.Intlist_T, ptr %378, i32 0, i32 1
  store ptr %call174, ptr %rest175, align 8, !tbaa !82
  %379 = load ptr, ptr %s, align 8, !tbaa !5
  %380 = load i32, ptr %nmismatches_i, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %379, i32 noundef %380)
  %381 = load ptr, ptr %r, align 8, !tbaa !5
  %382 = load i32, ptr %ref_nmismatches_i, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %381, i32 noundef %382)
  %383 = load ptr, ptr %p, align 8, !tbaa !5
  %rest176 = getelementptr inbounds %struct.Uintlist_T, ptr %383, i32 0, i32 1
  %384 = load ptr, ptr %rest176, align 8, !tbaa !84
  %385 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %386 = load i32, ptr %middle_univdiagonal, align 4, !tbaa !12
  %call177 = call ptr @Uintlistpool_push(ptr noundef %384, ptr noundef %385, i32 noundef %386)
  %387 = load ptr, ptr %p, align 8, !tbaa !5
  %rest178 = getelementptr inbounds %struct.Uintlist_T, ptr %387, i32 0, i32 1
  store ptr %call177, ptr %rest178, align 8, !tbaa !84
  br label %if.end179

if.end179:                                        ; preds = %if.end167, %if.end136
  br label %if.end180

if.end180:                                        ; preds = %if.end179, %if.then108
  br label %if.end181

if.end181:                                        ; preds = %if.end180, %if.end105
  br label %if.end296

if.else182:                                       ; preds = %if.else61
  %388 = load i32, ptr %univdiagonal_i.addr, align 4, !tbaa !12
  %389 = load i32, ptr %pos5_0.addr, align 4, !tbaa !12
  %390 = load i32, ptr %pos3_0.addr, align 4, !tbaa !12
  %391 = load i32, ptr %univdiagonal_j.addr, align 4, !tbaa !12
  %392 = load i32, ptr %pos5_1.addr, align 4, !tbaa !12
  %393 = load i32, ptr %pos3_1.addr, align 4, !tbaa !12
  %394 = load i8, ptr %plusp.addr, align 1, !tbaa !14
  %395 = load i32, ptr %genestrand.addr, align 4, !tbaa !12
  %396 = load i32, ptr %sensedir.addr, align 4, !tbaa !12
  %397 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %398 = load i32, ptr %method.addr, align 4, !tbaa !14
  %399 = load i32, ptr %chrnum.addr, align 4, !tbaa !12
  %400 = load i32, ptr %chroffset.addr, align 4, !tbaa !12
  %401 = load i32, ptr %chrhigh.addr, align 4, !tbaa !12
  %402 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %403 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %404 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %405 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %call183 = call ptr @Path_new_from_ends(i32 noundef %388, i32 noundef %389, i32 noundef %390, i32 noundef %391, i32 noundef %392, i32 noundef %393, i8 noundef zeroext %394, i32 noundef %395, i32 noundef %396, i32 noundef %397, i32 noundef %398, i32 noundef %399, i32 noundef %400, i32 noundef %401, ptr noundef %402, ptr noundef %403, ptr noundef %404, ptr noundef %405)
  store ptr %call183, ptr %path, align 8, !tbaa !5
  %406 = load ptr, ptr %path, align 8, !tbaa !5
  %junctions184 = getelementptr inbounds %struct.Path_T, ptr %406, i32 0, i32 21
  %407 = load ptr, ptr %junctions184, align 8, !tbaa !43
  store ptr %407, ptr %j, align 8, !tbaa !5
  %408 = load ptr, ptr %path, align 8, !tbaa !5
  %univdiagonals185 = getelementptr inbounds %struct.Path_T, ptr %408, i32 0, i32 18
  %409 = load ptr, ptr %univdiagonals185, align 8, !tbaa !36
  store ptr %409, ptr %p, align 8, !tbaa !5
  %410 = load ptr, ptr %path, align 8, !tbaa !5
  %endpoints186 = getelementptr inbounds %struct.Path_T, ptr %410, i32 0, i32 17
  %411 = load ptr, ptr %endpoints186, align 8, !tbaa !40
  store ptr %411, ptr %q, align 8, !tbaa !5
  %412 = load ptr, ptr %path, align 8, !tbaa !5
  %ref_nmismatches187 = getelementptr inbounds %struct.Path_T, ptr %412, i32 0, i32 20
  %413 = load ptr, ptr %ref_nmismatches187, align 8, !tbaa !42
  store ptr %413, ptr %r, align 8, !tbaa !5
  %414 = load ptr, ptr %path, align 8, !tbaa !5
  %nmismatches188 = getelementptr inbounds %struct.Path_T, ptr %414, i32 0, i32 19
  %415 = load ptr, ptr %nmismatches188, align 8, !tbaa !41
  store ptr %415, ptr %s, align 8, !tbaa !5
  %416 = load i32, ptr %univdiagonal_i.addr, align 4, !tbaa !12
  %417 = load i32, ptr %univdiagonal_j.addr, align 4, !tbaa !12
  %418 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %419 = load i8, ptr %plusp.addr, align 1, !tbaa !14
  %420 = load i32, ptr %chroffset.addr, align 4, !tbaa !12
  %421 = load i32, ptr %qstart, align 4, !tbaa !12
  %422 = load i32, ptr %qend, align 4, !tbaa !12
  %423 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %424 = load ptr, ptr %indelinfo.addr, align 8, !tbaa !5
  %425 = load ptr, ptr %spliceinfo.addr, align 8, !tbaa !5
  %426 = load ptr, ptr %knownsplicing.addr, align 8, !tbaa !5
  %427 = load i32, ptr %genestrand.addr, align 4, !tbaa !12
  %428 = load i32, ptr %nmismatches_allowed.addr, align 4, !tbaa !12
  %429 = load i32, ptr %max_insertionlen.addr, align 4, !tbaa !12
  %430 = load i32, ptr %max_deletionlen.addr, align 4, !tbaa !12
  %call189 = call i32 @Splice_resolve(ptr noundef %middle_univdiagonal, ptr noundef %splice_qpos_i, ptr noundef %splice_qpos_j, ptr noundef %nindels, ptr noundef %indel_pos, ptr noundef %nmismatches_i, ptr noundef %nmismatches_middle, ptr noundef %nmismatches_j, ptr noundef %nmismatches_indel, ptr noundef %ref_nmismatches_i, ptr noundef %ref_nmismatches_middle, ptr noundef %ref_nmismatches_j, ptr noundef %ref_nmismatches_indel, ptr noundef %donor_prob, ptr noundef %acceptor_prob, i32 noundef %416, i32 noundef %417, ptr noundef %418, i8 noundef zeroext %419, i32 noundef %420, i32 noundef %421, i32 noundef %422, i32 noundef %423, ptr noundef %424, ptr noundef %425, ptr noundef %426, i8 noundef zeroext 0, i32 noundef %427, i32 noundef %428, i32 noundef %429, i32 noundef %430, i8 noundef zeroext 0, i8 noundef zeroext 1)
  store i32 %call189, ptr %splice_qpos, align 4, !tbaa !12
  %cmp190 = icmp slt i32 %call189, 0
  br i1 %cmp190, label %if.then191, label %if.else220

if.then191:                                       ; preds = %if.else182
  %431 = load i32, ptr %middle_univdiagonal, align 4, !tbaa !12
  %cmp192 = icmp ne i32 %431, 0
  br i1 %cmp192, label %if.then193, label %if.else216

if.then193:                                       ; preds = %if.then191
  %432 = load i32, ptr %univdiagonal_j.addr, align 4, !tbaa !12
  %433 = load i32, ptr %middle_univdiagonal, align 4, !tbaa !12
  %sub194 = sub i32 %432, %433
  store i32 %sub194, ptr %splice_distance_j, align 4, !tbaa !12
  %434 = load i32, ptr %middle_univdiagonal, align 4, !tbaa !12
  %435 = load i32, ptr %univdiagonal_i.addr, align 4, !tbaa !12
  %sub195 = sub i32 %434, %435
  store i32 %sub195, ptr %splice_distance_i, align 4, !tbaa !12
  %436 = load ptr, ptr %q, align 8, !tbaa !5
  %rest196 = getelementptr inbounds %struct.Intlist_T, ptr %436, i32 0, i32 1
  %437 = load ptr, ptr %rest196, align 8, !tbaa !82
  %438 = load i32, ptr %splice_qpos_j, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %437, i32 noundef %438)
  %439 = load ptr, ptr %q, align 8, !tbaa !5
  %rest197 = getelementptr inbounds %struct.Intlist_T, ptr %439, i32 0, i32 1
  %440 = load ptr, ptr %rest197, align 8, !tbaa !82
  %441 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %442 = load i32, ptr %splice_qpos_i, align 4, !tbaa !12
  %call198 = call ptr @Intlistpool_push(ptr noundef %440, ptr noundef %441, i32 noundef %442)
  %443 = load ptr, ptr %q, align 8, !tbaa !5
  %rest199 = getelementptr inbounds %struct.Intlist_T, ptr %443, i32 0, i32 1
  store ptr %call198, ptr %rest199, align 8, !tbaa !82
  %444 = load ptr, ptr %j, align 8, !tbaa !5
  %rest200 = getelementptr inbounds %struct.List_T, ptr %444, i32 0, i32 1
  %445 = load ptr, ptr %rest200, align 8, !tbaa !11
  %446 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %447 = load i32, ptr %splice_distance_j, align 4, !tbaa !12
  %448 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %call201 = call ptr @Junction_new_splice(i32 noundef %447, i32 noundef 1, double noundef 1.000000e+00, double noundef 1.000000e+00, ptr noundef %448)
  %call202 = call ptr @Listpool_push(ptr noundef %445, ptr noundef %446, ptr noundef %call201)
  %449 = load ptr, ptr %j, align 8, !tbaa !5
  %rest203 = getelementptr inbounds %struct.List_T, ptr %449, i32 0, i32 1
  store ptr %call202, ptr %rest203, align 8, !tbaa !11
  %450 = load ptr, ptr %j, align 8, !tbaa !5
  %451 = load i32, ptr %splice_distance_i, align 4, !tbaa !12
  %452 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %call204 = call ptr @Junction_new_splice(i32 noundef %451, i32 noundef 1, double noundef 1.000000e+00, double noundef 1.000000e+00, ptr noundef %452)
  call void @List_head_set(ptr noundef %450, ptr noundef %call204)
  %453 = load ptr, ptr %s, align 8, !tbaa !5
  %rest205 = getelementptr inbounds %struct.Intlist_T, ptr %453, i32 0, i32 1
  %454 = load ptr, ptr %rest205, align 8, !tbaa !82
  %455 = load i32, ptr %nmismatches_j, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %454, i32 noundef %455)
  %456 = load ptr, ptr %r, align 8, !tbaa !5
  %rest206 = getelementptr inbounds %struct.Intlist_T, ptr %456, i32 0, i32 1
  %457 = load ptr, ptr %rest206, align 8, !tbaa !82
  %458 = load i32, ptr %ref_nmismatches_j, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %457, i32 noundef %458)
  %459 = load ptr, ptr %s, align 8, !tbaa !5
  %rest207 = getelementptr inbounds %struct.Intlist_T, ptr %459, i32 0, i32 1
  %460 = load ptr, ptr %rest207, align 8, !tbaa !82
  %461 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %462 = load i32, ptr %nmismatches_middle, align 4, !tbaa !12
  %call208 = call ptr @Intlistpool_push(ptr noundef %460, ptr noundef %461, i32 noundef %462)
  %463 = load ptr, ptr %s, align 8, !tbaa !5
  %rest209 = getelementptr inbounds %struct.Intlist_T, ptr %463, i32 0, i32 1
  store ptr %call208, ptr %rest209, align 8, !tbaa !82
  %464 = load ptr, ptr %r, align 8, !tbaa !5
  %rest210 = getelementptr inbounds %struct.Intlist_T, ptr %464, i32 0, i32 1
  %465 = load ptr, ptr %rest210, align 8, !tbaa !82
  %466 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %467 = load i32, ptr %ref_nmismatches_middle, align 4, !tbaa !12
  %call211 = call ptr @Intlistpool_push(ptr noundef %465, ptr noundef %466, i32 noundef %467)
  %468 = load ptr, ptr %r, align 8, !tbaa !5
  %rest212 = getelementptr inbounds %struct.Intlist_T, ptr %468, i32 0, i32 1
  store ptr %call211, ptr %rest212, align 8, !tbaa !82
  %469 = load ptr, ptr %s, align 8, !tbaa !5
  %470 = load i32, ptr %nmismatches_i, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %469, i32 noundef %470)
  %471 = load ptr, ptr %r, align 8, !tbaa !5
  %472 = load i32, ptr %ref_nmismatches_i, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %471, i32 noundef %472)
  %473 = load ptr, ptr %p, align 8, !tbaa !5
  %rest213 = getelementptr inbounds %struct.Uintlist_T, ptr %473, i32 0, i32 1
  %474 = load ptr, ptr %rest213, align 8, !tbaa !84
  %475 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %476 = load i32, ptr %middle_univdiagonal, align 4, !tbaa !12
  %call214 = call ptr @Uintlistpool_push(ptr noundef %474, ptr noundef %475, i32 noundef %476)
  %477 = load ptr, ptr %p, align 8, !tbaa !5
  %rest215 = getelementptr inbounds %struct.Uintlist_T, ptr %477, i32 0, i32 1
  store ptr %call214, ptr %rest215, align 8, !tbaa !84
  br label %if.end219

if.else216:                                       ; preds = %if.then191
  %478 = load ptr, ptr %unsolved_paths.addr, align 8, !tbaa !5
  %479 = load ptr, ptr %478, align 8, !tbaa !5
  %480 = load ptr, ptr %hitlistpool.addr, align 8, !tbaa !5
  %481 = load ptr, ptr %path, align 8, !tbaa !5
  %call217 = call ptr @Path_expect_fwd(ptr noundef %481)
  %call218 = call ptr @Hitlist_push(ptr noundef %479, ptr noundef %480, ptr noundef %call217)
  %482 = load ptr, ptr %unsolved_paths.addr, align 8, !tbaa !5
  store ptr %call218, ptr %482, align 8, !tbaa !5
  store ptr null, ptr %path, align 8, !tbaa !5
  br label %if.end219

if.end219:                                        ; preds = %if.else216, %if.then193
  br label %if.end295

if.else220:                                       ; preds = %if.else182
  %483 = load i32, ptr %nindels, align 4, !tbaa !12
  %cmp221 = icmp eq i32 %483, 0
  br i1 %cmp221, label %if.then222, label %if.else228

if.then222:                                       ; preds = %if.else220
  %484 = load i32, ptr %univdiagonal_j.addr, align 4, !tbaa !12
  %485 = load i32, ptr %univdiagonal_i.addr, align 4, !tbaa !12
  %sub223 = sub i32 %484, %485
  store i32 %sub223, ptr %splice_distance, align 4, !tbaa !12
  %486 = load ptr, ptr %q, align 8, !tbaa !5
  %rest224 = getelementptr inbounds %struct.Intlist_T, ptr %486, i32 0, i32 1
  %487 = load ptr, ptr %rest224, align 8, !tbaa !82
  %488 = load i32, ptr %splice_qpos, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %487, i32 noundef %488)
  %489 = load ptr, ptr %j, align 8, !tbaa !5
  %490 = load i32, ptr %splice_distance, align 4, !tbaa !12
  %491 = load double, ptr %donor_prob, align 8, !tbaa !44
  %492 = load double, ptr %acceptor_prob, align 8, !tbaa !44
  %493 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %call225 = call ptr @Junction_new_splice(i32 noundef %490, i32 noundef 1, double noundef %491, double noundef %492, ptr noundef %493)
  call void @List_head_set(ptr noundef %489, ptr noundef %call225)
  %494 = load ptr, ptr %s, align 8, !tbaa !5
  %rest226 = getelementptr inbounds %struct.Intlist_T, ptr %494, i32 0, i32 1
  %495 = load ptr, ptr %rest226, align 8, !tbaa !82
  %496 = load i32, ptr %nmismatches_j, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %495, i32 noundef %496)
  %497 = load ptr, ptr %r, align 8, !tbaa !5
  %rest227 = getelementptr inbounds %struct.Intlist_T, ptr %497, i32 0, i32 1
  %498 = load ptr, ptr %rest227, align 8, !tbaa !82
  %499 = load i32, ptr %ref_nmismatches_j, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %498, i32 noundef %499)
  %500 = load ptr, ptr %s, align 8, !tbaa !5
  %501 = load i32, ptr %nmismatches_i, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %500, i32 noundef %501)
  %502 = load ptr, ptr %r, align 8, !tbaa !5
  %503 = load i32, ptr %ref_nmismatches_i, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %502, i32 noundef %503)
  br label %if.end294

if.else228:                                       ; preds = %if.else220
  %504 = load i32, ptr %splice_qpos, align 4, !tbaa !12
  %505 = load i32, ptr %indel_pos, align 4, !tbaa !12
  %cmp229 = icmp slt i32 %504, %505
  br i1 %cmp229, label %if.then230, label %if.else263

if.then230:                                       ; preds = %if.else228
  %506 = load i32, ptr %univdiagonal_j.addr, align 4, !tbaa !12
  %507 = load i32, ptr %nindels, align 4, !tbaa !12
  %sub231 = sub i32 %506, %507
  store i32 %sub231, ptr %middle_univdiagonal, align 4, !tbaa !12
  %508 = load i32, ptr %middle_univdiagonal, align 4, !tbaa !12
  %509 = load i32, ptr %univdiagonal_i.addr, align 4, !tbaa !12
  %sub232 = sub i32 %508, %509
  store i32 %sub232, ptr %splice_distance, align 4, !tbaa !12
  %510 = load ptr, ptr %q, align 8, !tbaa !5
  %rest233 = getelementptr inbounds %struct.Intlist_T, ptr %510, i32 0, i32 1
  %511 = load ptr, ptr %rest233, align 8, !tbaa !82
  %512 = load i32, ptr %indel_pos, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %511, i32 noundef %512)
  %513 = load ptr, ptr %q, align 8, !tbaa !5
  %rest234 = getelementptr inbounds %struct.Intlist_T, ptr %513, i32 0, i32 1
  %514 = load ptr, ptr %rest234, align 8, !tbaa !82
  %515 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %516 = load i32, ptr %splice_qpos, align 4, !tbaa !12
  %call235 = call ptr @Intlistpool_push(ptr noundef %514, ptr noundef %515, i32 noundef %516)
  %517 = load ptr, ptr %q, align 8, !tbaa !5
  %rest236 = getelementptr inbounds %struct.Intlist_T, ptr %517, i32 0, i32 1
  store ptr %call235, ptr %rest236, align 8, !tbaa !82
  %518 = load i32, ptr %nindels, align 4, !tbaa !12
  %cmp237 = icmp slt i32 %518, 0
  br i1 %cmp237, label %if.then238, label %if.else244

if.then238:                                       ; preds = %if.then230
  %519 = load ptr, ptr %j, align 8, !tbaa !5
  %rest239 = getelementptr inbounds %struct.List_T, ptr %519, i32 0, i32 1
  %520 = load ptr, ptr %rest239, align 8, !tbaa !11
  %521 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %522 = load i32, ptr %nindels, align 4, !tbaa !12
  %sub240 = sub nsw i32 0, %522
  %523 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %call241 = call ptr @Junction_new_insertion(i32 noundef %sub240, ptr noundef %523)
  %call242 = call ptr @Listpool_push(ptr noundef %520, ptr noundef %521, ptr noundef %call241)
  %524 = load ptr, ptr %j, align 8, !tbaa !5
  %rest243 = getelementptr inbounds %struct.List_T, ptr %524, i32 0, i32 1
  store ptr %call242, ptr %rest243, align 8, !tbaa !11
  br label %if.end250

if.else244:                                       ; preds = %if.then230
  %525 = load i32, ptr %segmenti_left, align 4, !tbaa !12
  %526 = load i32, ptr %indel_pos, align 4, !tbaa !12
  %add245 = add i32 %525, %526
  store i32 %add245, ptr %deletionpos, align 4, !tbaa !12
  %527 = load ptr, ptr %j, align 8, !tbaa !5
  %rest246 = getelementptr inbounds %struct.List_T, ptr %527, i32 0, i32 1
  %528 = load ptr, ptr %rest246, align 8, !tbaa !11
  %529 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %530 = load i32, ptr %nindels, align 4, !tbaa !12
  %531 = load i32, ptr %deletionpos, align 4, !tbaa !12
  %532 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %call247 = call ptr @Junction_new_deletion(i32 noundef %530, i32 noundef %531, ptr noundef %532)
  %call248 = call ptr @Listpool_push(ptr noundef %528, ptr noundef %529, ptr noundef %call247)
  %533 = load ptr, ptr %j, align 8, !tbaa !5
  %rest249 = getelementptr inbounds %struct.List_T, ptr %533, i32 0, i32 1
  store ptr %call248, ptr %rest249, align 8, !tbaa !11
  br label %if.end250

if.end250:                                        ; preds = %if.else244, %if.then238
  %534 = load ptr, ptr %j, align 8, !tbaa !5
  %535 = load i32, ptr %splice_distance, align 4, !tbaa !12
  %536 = load double, ptr %donor_prob, align 8, !tbaa !44
  %537 = load double, ptr %acceptor_prob, align 8, !tbaa !44
  %538 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %call251 = call ptr @Junction_new_splice(i32 noundef %535, i32 noundef 1, double noundef %536, double noundef %537, ptr noundef %538)
  call void @List_head_set(ptr noundef %534, ptr noundef %call251)
  %539 = load ptr, ptr %s, align 8, !tbaa !5
  %rest252 = getelementptr inbounds %struct.Intlist_T, ptr %539, i32 0, i32 1
  %540 = load ptr, ptr %rest252, align 8, !tbaa !82
  %541 = load i32, ptr %nmismatches_j, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %540, i32 noundef %541)
  %542 = load ptr, ptr %r, align 8, !tbaa !5
  %rest253 = getelementptr inbounds %struct.Intlist_T, ptr %542, i32 0, i32 1
  %543 = load ptr, ptr %rest253, align 8, !tbaa !82
  %544 = load i32, ptr %ref_nmismatches_j, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %543, i32 noundef %544)
  %545 = load ptr, ptr %s, align 8, !tbaa !5
  %rest254 = getelementptr inbounds %struct.Intlist_T, ptr %545, i32 0, i32 1
  %546 = load ptr, ptr %rest254, align 8, !tbaa !82
  %547 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %548 = load i32, ptr %nmismatches_indel, align 4, !tbaa !12
  %call255 = call ptr @Intlistpool_push(ptr noundef %546, ptr noundef %547, i32 noundef %548)
  %549 = load ptr, ptr %s, align 8, !tbaa !5
  %rest256 = getelementptr inbounds %struct.Intlist_T, ptr %549, i32 0, i32 1
  store ptr %call255, ptr %rest256, align 8, !tbaa !82
  %550 = load ptr, ptr %r, align 8, !tbaa !5
  %rest257 = getelementptr inbounds %struct.Intlist_T, ptr %550, i32 0, i32 1
  %551 = load ptr, ptr %rest257, align 8, !tbaa !82
  %552 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %553 = load i32, ptr %ref_nmismatches_indel, align 4, !tbaa !12
  %call258 = call ptr @Intlistpool_push(ptr noundef %551, ptr noundef %552, i32 noundef %553)
  %554 = load ptr, ptr %r, align 8, !tbaa !5
  %rest259 = getelementptr inbounds %struct.Intlist_T, ptr %554, i32 0, i32 1
  store ptr %call258, ptr %rest259, align 8, !tbaa !82
  %555 = load ptr, ptr %s, align 8, !tbaa !5
  %556 = load i32, ptr %nmismatches_i, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %555, i32 noundef %556)
  %557 = load ptr, ptr %r, align 8, !tbaa !5
  %558 = load i32, ptr %ref_nmismatches_i, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %557, i32 noundef %558)
  %559 = load ptr, ptr %p, align 8, !tbaa !5
  %rest260 = getelementptr inbounds %struct.Uintlist_T, ptr %559, i32 0, i32 1
  %560 = load ptr, ptr %rest260, align 8, !tbaa !84
  %561 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %562 = load i32, ptr %middle_univdiagonal, align 4, !tbaa !12
  %call261 = call ptr @Uintlistpool_push(ptr noundef %560, ptr noundef %561, i32 noundef %562)
  %563 = load ptr, ptr %p, align 8, !tbaa !5
  %rest262 = getelementptr inbounds %struct.Uintlist_T, ptr %563, i32 0, i32 1
  store ptr %call261, ptr %rest262, align 8, !tbaa !84
  br label %if.end293

if.else263:                                       ; preds = %if.else228
  %564 = load i32, ptr %univdiagonal_i.addr, align 4, !tbaa !12
  %565 = load i32, ptr %nindels, align 4, !tbaa !12
  %add264 = add i32 %564, %565
  store i32 %add264, ptr %middle_univdiagonal, align 4, !tbaa !12
  %566 = load i32, ptr %univdiagonal_j.addr, align 4, !tbaa !12
  %567 = load i32, ptr %middle_univdiagonal, align 4, !tbaa !12
  %sub265 = sub i32 %566, %567
  store i32 %sub265, ptr %splice_distance, align 4, !tbaa !12
  %568 = load ptr, ptr %q, align 8, !tbaa !5
  %rest266 = getelementptr inbounds %struct.Intlist_T, ptr %568, i32 0, i32 1
  %569 = load ptr, ptr %rest266, align 8, !tbaa !82
  %570 = load i32, ptr %splice_qpos, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %569, i32 noundef %570)
  %571 = load ptr, ptr %q, align 8, !tbaa !5
  %rest267 = getelementptr inbounds %struct.Intlist_T, ptr %571, i32 0, i32 1
  %572 = load ptr, ptr %rest267, align 8, !tbaa !82
  %573 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %574 = load i32, ptr %indel_pos, align 4, !tbaa !12
  %call268 = call ptr @Intlistpool_push(ptr noundef %572, ptr noundef %573, i32 noundef %574)
  %575 = load ptr, ptr %q, align 8, !tbaa !5
  %rest269 = getelementptr inbounds %struct.Intlist_T, ptr %575, i32 0, i32 1
  store ptr %call268, ptr %rest269, align 8, !tbaa !82
  %576 = load ptr, ptr %j, align 8, !tbaa !5
  %rest270 = getelementptr inbounds %struct.List_T, ptr %576, i32 0, i32 1
  %577 = load ptr, ptr %rest270, align 8, !tbaa !11
  %578 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %579 = load i32, ptr %splice_distance, align 4, !tbaa !12
  %580 = load double, ptr %donor_prob, align 8, !tbaa !44
  %581 = load double, ptr %acceptor_prob, align 8, !tbaa !44
  %582 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %call271 = call ptr @Junction_new_splice(i32 noundef %579, i32 noundef 1, double noundef %580, double noundef %581, ptr noundef %582)
  %call272 = call ptr @Listpool_push(ptr noundef %577, ptr noundef %578, ptr noundef %call271)
  %583 = load ptr, ptr %j, align 8, !tbaa !5
  %rest273 = getelementptr inbounds %struct.List_T, ptr %583, i32 0, i32 1
  store ptr %call272, ptr %rest273, align 8, !tbaa !11
  %584 = load i32, ptr %nindels, align 4, !tbaa !12
  %cmp274 = icmp slt i32 %584, 0
  br i1 %cmp274, label %if.then275, label %if.else278

if.then275:                                       ; preds = %if.else263
  %585 = load ptr, ptr %j, align 8, !tbaa !5
  %586 = load i32, ptr %nindels, align 4, !tbaa !12
  %sub276 = sub nsw i32 0, %586
  %587 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %call277 = call ptr @Junction_new_insertion(i32 noundef %sub276, ptr noundef %587)
  call void @List_head_set(ptr noundef %585, ptr noundef %call277)
  br label %if.end281

if.else278:                                       ; preds = %if.else263
  %588 = load i32, ptr %segmenti_left, align 4, !tbaa !12
  %589 = load i32, ptr %indel_pos, align 4, !tbaa !12
  %add279 = add i32 %588, %589
  store i32 %add279, ptr %deletionpos, align 4, !tbaa !12
  %590 = load ptr, ptr %j, align 8, !tbaa !5
  %591 = load i32, ptr %nindels, align 4, !tbaa !12
  %592 = load i32, ptr %deletionpos, align 4, !tbaa !12
  %593 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %call280 = call ptr @Junction_new_deletion(i32 noundef %591, i32 noundef %592, ptr noundef %593)
  call void @List_head_set(ptr noundef %590, ptr noundef %call280)
  br label %if.end281

if.end281:                                        ; preds = %if.else278, %if.then275
  %594 = load ptr, ptr %s, align 8, !tbaa !5
  %rest282 = getelementptr inbounds %struct.Intlist_T, ptr %594, i32 0, i32 1
  %595 = load ptr, ptr %rest282, align 8, !tbaa !82
  %596 = load i32, ptr %nmismatches_j, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %595, i32 noundef %596)
  %597 = load ptr, ptr %r, align 8, !tbaa !5
  %rest283 = getelementptr inbounds %struct.Intlist_T, ptr %597, i32 0, i32 1
  %598 = load ptr, ptr %rest283, align 8, !tbaa !82
  %599 = load i32, ptr %ref_nmismatches_j, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %598, i32 noundef %599)
  %600 = load ptr, ptr %s, align 8, !tbaa !5
  %rest284 = getelementptr inbounds %struct.Intlist_T, ptr %600, i32 0, i32 1
  %601 = load ptr, ptr %rest284, align 8, !tbaa !82
  %602 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %603 = load i32, ptr %nmismatches_indel, align 4, !tbaa !12
  %call285 = call ptr @Intlistpool_push(ptr noundef %601, ptr noundef %602, i32 noundef %603)
  %604 = load ptr, ptr %s, align 8, !tbaa !5
  %rest286 = getelementptr inbounds %struct.Intlist_T, ptr %604, i32 0, i32 1
  store ptr %call285, ptr %rest286, align 8, !tbaa !82
  %605 = load ptr, ptr %r, align 8, !tbaa !5
  %rest287 = getelementptr inbounds %struct.Intlist_T, ptr %605, i32 0, i32 1
  %606 = load ptr, ptr %rest287, align 8, !tbaa !82
  %607 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %608 = load i32, ptr %ref_nmismatches_indel, align 4, !tbaa !12
  %call288 = call ptr @Intlistpool_push(ptr noundef %606, ptr noundef %607, i32 noundef %608)
  %609 = load ptr, ptr %r, align 8, !tbaa !5
  %rest289 = getelementptr inbounds %struct.Intlist_T, ptr %609, i32 0, i32 1
  store ptr %call288, ptr %rest289, align 8, !tbaa !82
  %610 = load ptr, ptr %s, align 8, !tbaa !5
  %611 = load i32, ptr %nmismatches_i, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %610, i32 noundef %611)
  %612 = load ptr, ptr %r, align 8, !tbaa !5
  %613 = load i32, ptr %ref_nmismatches_i, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %612, i32 noundef %613)
  %614 = load ptr, ptr %p, align 8, !tbaa !5
  %rest290 = getelementptr inbounds %struct.Uintlist_T, ptr %614, i32 0, i32 1
  %615 = load ptr, ptr %rest290, align 8, !tbaa !84
  %616 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %617 = load i32, ptr %middle_univdiagonal, align 4, !tbaa !12
  %call291 = call ptr @Uintlistpool_push(ptr noundef %615, ptr noundef %616, i32 noundef %617)
  %618 = load ptr, ptr %p, align 8, !tbaa !5
  %rest292 = getelementptr inbounds %struct.Uintlist_T, ptr %618, i32 0, i32 1
  store ptr %call291, ptr %rest292, align 8, !tbaa !84
  br label %if.end293

if.end293:                                        ; preds = %if.end281, %if.end250
  br label %if.end294

if.end294:                                        ; preds = %if.end293, %if.then222
  br label %if.end295

if.end295:                                        ; preds = %if.end294, %if.end219
  br label %if.end296

if.end296:                                        ; preds = %if.end295, %if.end181
  br label %if.end297

if.end297:                                        ; preds = %if.end296, %if.end60
  br label %if.end298

if.end298:                                        ; preds = %if.end297, %if.end24
  br label %if.end299

if.end299:                                        ; preds = %if.end298, %if.then
  %619 = load ptr, ptr %path, align 8, !tbaa !5
  %cmp300 = icmp eq ptr %619, null
  br i1 %cmp300, label %if.then301, label %if.else302

if.then301:                                       ; preds = %if.end299
  br label %if.end348

if.else302:                                       ; preds = %if.end299
  %620 = load ptr, ptr %path, align 8, !tbaa !5
  %endpoints303 = getelementptr inbounds %struct.Path_T, ptr %620, i32 0, i32 17
  %621 = load ptr, ptr %endpoints303, align 8, !tbaa !40
  %622 = load ptr, ptr %path, align 8, !tbaa !5
  %junctions304 = getelementptr inbounds %struct.Path_T, ptr %622, i32 0, i32 21
  %623 = load ptr, ptr %junctions304, align 8, !tbaa !43
  %call305 = call zeroext i8 @endpoints_acceptable_p(ptr noundef %621, ptr noundef %623)
  %conv = zext i8 %call305 to i32
  %cmp306 = icmp eq i32 %conv, 0
  br i1 %cmp306, label %if.then308, label %if.else309

if.then308:                                       ; preds = %if.else302
  %624 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %625 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %626 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %627 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %628 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  call void @Path_free(ptr noundef %path, ptr noundef %624, ptr noundef %625, ptr noundef %626, ptr noundef %627, ptr noundef %628)
  br label %if.end347

if.else309:                                       ; preds = %if.else302
  %629 = load ptr, ptr %path, align 8, !tbaa !5
  %nmismatches310 = getelementptr inbounds %struct.Path_T, ptr %629, i32 0, i32 19
  %630 = load ptr, ptr %nmismatches310, align 8, !tbaa !41
  %call311 = call i32 @preliminary_score_within_trims(ptr noundef %630)
  %631 = load i32, ptr %nmismatches_allowed.addr, align 4, !tbaa !12
  %cmp312 = icmp sgt i32 %call311, %631
  br i1 %cmp312, label %if.then314, label %if.else315

if.then314:                                       ; preds = %if.else309
  %632 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %633 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %634 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %635 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %636 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  call void @Path_free(ptr noundef %path, ptr noundef %632, ptr noundef %633, ptr noundef %634, ptr noundef %635, ptr noundef %636)
  br label %if.end346

if.else315:                                       ; preds = %if.else309
  %637 = load i32, ptr %sensedir.addr, align 4, !tbaa !12
  %cmp316 = icmp eq i32 %637, 2
  br i1 %cmp316, label %if.then318, label %if.else331

if.then318:                                       ; preds = %if.else315
  %638 = load ptr, ptr %found_score.addr, align 8, !tbaa !5
  %639 = load ptr, ptr %path, align 8, !tbaa !5
  %640 = load ptr, ptr %query_compress_fwd.addr, align 8, !tbaa !5
  %641 = load ptr, ptr %query_compress_rev.addr, align 8, !tbaa !5
  %call319 = call i32 @Path_eval_nmatches(ptr noundef %638, ptr noundef %639, ptr noundef %640, ptr noundef %641)
  %642 = load ptr, ptr %path, align 8, !tbaa !5
  %score_within_trims = getelementptr inbounds %struct.Path_T, ptr %642, i32 0, i32 8
  %643 = load i32, ptr %score_within_trims, align 4, !tbaa !72
  %644 = load i32, ptr %nmismatches_allowed.addr, align 4, !tbaa !12
  %cmp320 = icmp sgt i32 %643, %644
  br i1 %cmp320, label %if.then322, label %if.else323

if.then322:                                       ; preds = %if.then318
  %645 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %646 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %647 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %648 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %649 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  call void @Path_free(ptr noundef %path, ptr noundef %645, ptr noundef %646, ptr noundef %647, ptr noundef %648, ptr noundef %649)
  br label %if.end330

if.else323:                                       ; preds = %if.then318
  %650 = load ptr, ptr %paths.addr, align 8, !tbaa !5
  %651 = load ptr, ptr %650, align 8, !tbaa !5
  %652 = load ptr, ptr %hitlistpool.addr, align 8, !tbaa !5
  %653 = load ptr, ptr %path, align 8, !tbaa !5
  %call324 = call ptr @Hitlist_push(ptr noundef %651, ptr noundef %652, ptr noundef %653)
  %654 = load ptr, ptr %paths.addr, align 8, !tbaa !5
  store ptr %call324, ptr %654, align 8, !tbaa !5
  %655 = load ptr, ptr @transcriptome, align 8, !tbaa !5
  %cmp325 = icmp ne ptr %655, null
  br i1 %cmp325, label %if.then327, label %if.end329

if.then327:                                       ; preds = %if.else323
  %656 = load ptr, ptr %found_score.addr, align 8, !tbaa !5
  %657 = load ptr, ptr %found_transcriptp.addr, align 8, !tbaa !5
  %658 = load ptr, ptr %paths.addr, align 8, !tbaa !5
  %659 = load ptr, ptr %658, align 8, !tbaa !5
  %660 = load ptr, ptr %path, align 8, !tbaa !5
  %661 = load ptr, ptr %query_compress_fwd.addr, align 8, !tbaa !5
  %662 = load ptr, ptr %query_compress_rev.addr, align 8, !tbaa !5
  %663 = load ptr, ptr %queryseq.addr, align 8, !tbaa !5
  %664 = load i32, ptr %nmismatches_allowed.addr, align 4, !tbaa !12
  %665 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %666 = load ptr, ptr %uintlistpool.addr, align 8, !tbaa !5
  %667 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %668 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %669 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  %670 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %671 = load ptr, ptr %vectorpool.addr, align 8, !tbaa !5
  %672 = load ptr, ptr %hitlistpool.addr, align 8, !tbaa !5
  %call328 = call ptr @try_repairs(ptr noundef %656, ptr noundef %657, ptr noundef %659, ptr noundef %660, ptr noundef %661, ptr noundef %662, ptr noundef %663, i32 noundef %664, ptr noundef %665, ptr noundef %666, ptr noundef %667, ptr noundef %668, ptr noundef %669, ptr noundef %670, ptr noundef %671, ptr noundef %672)
  %673 = load ptr, ptr %paths.addr, align 8, !tbaa !5
  store ptr %call328, ptr %673, align 8, !tbaa !5
  br label %if.end329

if.end329:                                        ; preds = %if.then327, %if.else323
  br label %if.end330

if.end330:                                        ; preds = %if.end329, %if.then322
  br label %if.end345

if.else331:                                       ; preds = %if.else315
  %674 = load ptr, ptr %found_score.addr, align 8, !tbaa !5
  %675 = load ptr, ptr %path, align 8, !tbaa !5
  %676 = load ptr, ptr %query_compress_fwd.addr, align 8, !tbaa !5
  %677 = load ptr, ptr %query_compress_rev.addr, align 8, !tbaa !5
  %call332 = call i32 @Path_eval_nmatches(ptr noundef %674, ptr noundef %675, ptr noundef %676, ptr noundef %677)
  %678 = load ptr, ptr %path, align 8, !tbaa !5
  %score_within_trims333 = getelementptr inbounds %struct.Path_T, ptr %678, i32 0, i32 8
  %679 = load i32, ptr %score_within_trims333, align 4, !tbaa !72
  %680 = load i32, ptr %nmismatches_allowed.addr, align 4, !tbaa !12
  %cmp334 = icmp sgt i32 %679, %680
  br i1 %cmp334, label %if.then336, label %if.else337

if.then336:                                       ; preds = %if.else331
  %681 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %682 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %683 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %684 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %685 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  call void @Path_free(ptr noundef %path, ptr noundef %681, ptr noundef %682, ptr noundef %683, ptr noundef %684, ptr noundef %685)
  br label %if.end344

if.else337:                                       ; preds = %if.else331
  %686 = load ptr, ptr %paths.addr, align 8, !tbaa !5
  %687 = load ptr, ptr %686, align 8, !tbaa !5
  %688 = load ptr, ptr %hitlistpool.addr, align 8, !tbaa !5
  %689 = load ptr, ptr %path, align 8, !tbaa !5
  %call338 = call ptr @Hitlist_push(ptr noundef %687, ptr noundef %688, ptr noundef %689)
  %690 = load ptr, ptr %paths.addr, align 8, !tbaa !5
  store ptr %call338, ptr %690, align 8, !tbaa !5
  %691 = load ptr, ptr @transcriptome, align 8, !tbaa !5
  %cmp339 = icmp ne ptr %691, null
  br i1 %cmp339, label %if.then341, label %if.end343

if.then341:                                       ; preds = %if.else337
  %692 = load ptr, ptr %found_score.addr, align 8, !tbaa !5
  %693 = load ptr, ptr %found_transcriptp.addr, align 8, !tbaa !5
  %694 = load ptr, ptr %paths.addr, align 8, !tbaa !5
  %695 = load ptr, ptr %694, align 8, !tbaa !5
  %696 = load ptr, ptr %path, align 8, !tbaa !5
  %697 = load ptr, ptr %query_compress_fwd.addr, align 8, !tbaa !5
  %698 = load ptr, ptr %query_compress_rev.addr, align 8, !tbaa !5
  %699 = load ptr, ptr %queryseq.addr, align 8, !tbaa !5
  %700 = load i32, ptr %nmismatches_allowed.addr, align 4, !tbaa !12
  %701 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %702 = load ptr, ptr %uintlistpool.addr, align 8, !tbaa !5
  %703 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %704 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %705 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  %706 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %707 = load ptr, ptr %vectorpool.addr, align 8, !tbaa !5
  %708 = load ptr, ptr %hitlistpool.addr, align 8, !tbaa !5
  %call342 = call ptr @try_repairs(ptr noundef %692, ptr noundef %693, ptr noundef %695, ptr noundef %696, ptr noundef %697, ptr noundef %698, ptr noundef %699, i32 noundef %700, ptr noundef %701, ptr noundef %702, ptr noundef %703, ptr noundef %704, ptr noundef %705, ptr noundef %706, ptr noundef %707, ptr noundef %708)
  %709 = load ptr, ptr %paths.addr, align 8, !tbaa !5
  store ptr %call342, ptr %709, align 8, !tbaa !5
  br label %if.end343

if.end343:                                        ; preds = %if.then341, %if.else337
  br label %if.end344

if.end344:                                        ; preds = %if.end343, %if.then336
  br label %if.end345

if.end345:                                        ; preds = %if.end344, %if.end330
  br label %if.end346

if.end346:                                        ; preds = %if.end345, %if.then314
  br label %if.end347

if.end347:                                        ; preds = %if.end346, %if.then308
  br label %if.end348

if.end348:                                        ; preds = %if.end347, %if.then301
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %q) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %splice_distance_j) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %splice_distance_i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %splice_distance) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %deletionpos) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %segmenti_left) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %middle_univdiagonal) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %qend) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %qstart) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %indel_pos) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %splice_qpos_j) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %splice_qpos_i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %splice_qpos) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %acceptor_prob) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %donor_prob) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %supportj) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %supporti) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %nindels) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %ref_nmismatches_middle) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %ref_nmismatches_indel) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %ref_nmismatches_j) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %ref_nmismatches_i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %nmismatches_middle) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %nmismatches_indel) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %nmismatches_j) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %nmismatches_i) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %newpath) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %path) #5
  ret void
}

declare i32 @Indel_resolve_middle_insertion(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext) #3

declare ptr @Path_new_from_ends(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

declare void @List_head_set(ptr noundef, ptr noundef) #3

declare ptr @Junction_new_insertion(i32 noundef, ptr noundef) #3

declare void @Intlist_head_set(ptr noundef, i32 noundef) #3

declare i32 @Indel_resolve_middle_deletion(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext) #3

declare ptr @Junction_new_deletion(i32 noundef, i32 noundef, ptr noundef) #3

declare i32 @Splice_resolve(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) #3

declare ptr @Intlistpool_push(ptr noundef, ptr noundef, i32 noundef) #3

declare ptr @Listpool_push(ptr noundef, ptr noundef, ptr noundef) #3

declare ptr @Junction_new_splice(i32 noundef, i32 noundef, double noundef, double noundef, ptr noundef) #3

declare ptr @Uintlistpool_push(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nounwind uwtable
define internal zeroext i8 @endpoints_acceptable_p(ptr noundef %endpoints, ptr noundef %junctions) #1 {
entry:
  %retval = alloca i8, align 1
  %endpoints.addr = alloca ptr, align 8
  %junctions.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %q = alloca ptr, align 8
  %junction = alloca ptr, align 8
  %last_endpoint = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %endpoints, ptr %endpoints.addr, align 8, !tbaa !5
  store ptr %junctions, ptr %junctions.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %q) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %junction) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %last_endpoint) #5
  %0 = load ptr, ptr %endpoints.addr, align 8, !tbaa !5
  %call = call ptr @Intlist_next(ptr noundef %0)
  store ptr %call, ptr %p, align 8, !tbaa !5
  %1 = load ptr, ptr %junctions.addr, align 8, !tbaa !5
  store ptr %1, ptr %q, align 8, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load ptr, ptr %p, align 8, !tbaa !5
  %call1 = call ptr @Intlist_next(ptr noundef %2)
  %cmp = icmp ne ptr %call1, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %p, align 8, !tbaa !5
  %call2 = call i32 @Intlist_head(ptr noundef %3)
  store i32 %call2, ptr %last_endpoint, align 4, !tbaa !12
  %4 = load ptr, ptr %q, align 8, !tbaa !5
  %call3 = call ptr @List_head(ptr noundef %4)
  store ptr %call3, ptr %junction, align 8, !tbaa !5
  %5 = load i32, ptr %last_endpoint, align 4, !tbaa !12
  %6 = load ptr, ptr %junction, align 8, !tbaa !5
  %call4 = call i32 @Junction_ninserts(ptr noundef %6)
  %add = add nsw i32 %5, %call4
  %7 = load ptr, ptr %p, align 8, !tbaa !5
  %call5 = call ptr @Intlist_next(ptr noundef %7)
  %call6 = call i32 @Intlist_head(ptr noundef %call5)
  %cmp7 = icmp sge i32 %add, %call6
  br i1 %cmp7, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  store i8 0, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %for.body
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load ptr, ptr %p, align 8, !tbaa !5
  %call8 = call ptr @Intlist_next(ptr noundef %8)
  store ptr %call8, ptr %p, align 8, !tbaa !5
  %9 = load ptr, ptr %q, align 8, !tbaa !5
  %call9 = call ptr @List_next(ptr noundef %9)
  store ptr %call9, ptr %q, align 8, !tbaa !5
  br label %for.cond, !llvm.loop !86

for.end:                                          ; preds = %for.cond
  store i8 1, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %last_endpoint) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %junction) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %q) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #5
  %10 = load i8, ptr %retval, align 1
  ret i8 %10
}

; Function Attrs: nounwind uwtable
define internal i32 @preliminary_score_within_trims(ptr noundef %nmismatches) #1 {
entry:
  %nmismatches.addr = alloca ptr, align 8
  %score = alloca i32, align 4
  %p = alloca ptr, align 8
  store ptr %nmismatches, ptr %nmismatches.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %score) #5
  store i32 0, ptr %score, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #5
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
  br label %for.cond, !llvm.loop !87

for.end:                                          ; preds = %for.cond
  %6 = load i32, ptr %score, align 4, !tbaa !12
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %score) #5
  ret i32 %6
}

declare i32 @Path_eval_nmatches(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @Path_solve_exact(ptr noundef %found_score, ptr noundef %found_transcriptp, ptr noundef %sense_paths, ptr noundef %antisense_paths, i32 noundef %univdiagonal, i32 noundef %pos5, i32 noundef %pos3, i8 noundef zeroext %plusp, i32 noundef %genestrand, ptr noundef %query_compress, ptr noundef %query_compress_fwd, ptr noundef %query_compress_rev, ptr noundef %queryseq, ptr noundef %queryuc_ptr, ptr noundef %queryrc, i32 noundef %querylength, i32 noundef %chrnum, i32 noundef %chroffset, i32 noundef %chrhigh, ptr noundef %intlistpool, ptr noundef %uintlistpool, ptr noundef %univcoordlistpool, ptr noundef %listpool, ptr noundef %pathpool, ptr noundef %vectorpool, ptr noundef %hitlistpool, ptr noundef %transcriptpool, i32 noundef %nmismatches_allowed, i32 noundef %method) #1 {
entry:
  %retval = alloca i8, align 1
  %found_score.addr = alloca ptr, align 8
  %found_transcriptp.addr = alloca ptr, align 8
  %sense_paths.addr = alloca ptr, align 8
  %antisense_paths.addr = alloca ptr, align 8
  %univdiagonal.addr = alloca i32, align 4
  %pos5.addr = alloca i32, align 4
  %pos3.addr = alloca i32, align 4
  %plusp.addr = alloca i8, align 1
  %genestrand.addr = alloca i32, align 4
  %query_compress.addr = alloca ptr, align 8
  %query_compress_fwd.addr = alloca ptr, align 8
  %query_compress_rev.addr = alloca ptr, align 8
  %queryseq.addr = alloca ptr, align 8
  %queryuc_ptr.addr = alloca ptr, align 8
  %queryrc.addr = alloca ptr, align 8
  %querylength.addr = alloca i32, align 4
  %chrnum.addr = alloca i32, align 4
  %chroffset.addr = alloca i32, align 4
  %chrhigh.addr = alloca i32, align 4
  %intlistpool.addr = alloca ptr, align 8
  %uintlistpool.addr = alloca ptr, align 8
  %univcoordlistpool.addr = alloca ptr, align 8
  %listpool.addr = alloca ptr, align 8
  %pathpool.addr = alloca ptr, align 8
  %vectorpool.addr = alloca ptr, align 8
  %hitlistpool.addr = alloca ptr, align 8
  %transcriptpool.addr = alloca ptr, align 8
  %nmismatches_allowed.addr = alloca i32, align 4
  %method.addr = alloca i32, align 4
  %sufficientp = alloca i8, align 1
  %sense_path = alloca ptr, align 8
  %antisense_path = alloca ptr, align 8
  %newpath = alloca ptr, align 8
  %nmismatches = alloca i32, align 4
  %ref_nmismatches = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %found_score, ptr %found_score.addr, align 8, !tbaa !5
  store ptr %found_transcriptp, ptr %found_transcriptp.addr, align 8, !tbaa !5
  store ptr %sense_paths, ptr %sense_paths.addr, align 8, !tbaa !5
  store ptr %antisense_paths, ptr %antisense_paths.addr, align 8, !tbaa !5
  store i32 %univdiagonal, ptr %univdiagonal.addr, align 4, !tbaa !12
  store i32 %pos5, ptr %pos5.addr, align 4, !tbaa !12
  store i32 %pos3, ptr %pos3.addr, align 4, !tbaa !12
  store i8 %plusp, ptr %plusp.addr, align 1, !tbaa !14
  store i32 %genestrand, ptr %genestrand.addr, align 4, !tbaa !12
  store ptr %query_compress, ptr %query_compress.addr, align 8, !tbaa !5
  store ptr %query_compress_fwd, ptr %query_compress_fwd.addr, align 8, !tbaa !5
  store ptr %query_compress_rev, ptr %query_compress_rev.addr, align 8, !tbaa !5
  store ptr %queryseq, ptr %queryseq.addr, align 8, !tbaa !5
  store ptr %queryuc_ptr, ptr %queryuc_ptr.addr, align 8, !tbaa !5
  store ptr %queryrc, ptr %queryrc.addr, align 8, !tbaa !5
  store i32 %querylength, ptr %querylength.addr, align 4, !tbaa !12
  store i32 %chrnum, ptr %chrnum.addr, align 4, !tbaa !12
  store i32 %chroffset, ptr %chroffset.addr, align 4, !tbaa !12
  store i32 %chrhigh, ptr %chrhigh.addr, align 4, !tbaa !12
  store ptr %intlistpool, ptr %intlistpool.addr, align 8, !tbaa !5
  store ptr %uintlistpool, ptr %uintlistpool.addr, align 8, !tbaa !5
  store ptr %univcoordlistpool, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  store ptr %listpool, ptr %listpool.addr, align 8, !tbaa !5
  store ptr %pathpool, ptr %pathpool.addr, align 8, !tbaa !5
  store ptr %vectorpool, ptr %vectorpool.addr, align 8, !tbaa !5
  store ptr %hitlistpool, ptr %hitlistpool.addr, align 8, !tbaa !5
  store ptr %transcriptpool, ptr %transcriptpool.addr, align 8, !tbaa !5
  store i32 %nmismatches_allowed, ptr %nmismatches_allowed.addr, align 4, !tbaa !12
  store i32 %method, ptr %method.addr, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 1, ptr %sufficientp) #5
  store i8 1, ptr %sufficientp, align 1, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 8, ptr %sense_path) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %antisense_path) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %newpath) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %nmismatches) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %ref_nmismatches) #5
  %0 = load ptr, ptr @genomebits, align 8, !tbaa !5
  %1 = load ptr, ptr @genomebits_alt, align 8, !tbaa !5
  %2 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %3 = load i32, ptr %univdiagonal.addr, align 4, !tbaa !12
  %4 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %5 = load i32, ptr %pos5.addr, align 4, !tbaa !12
  %6 = load i32, ptr %pos3.addr, align 4, !tbaa !12
  %7 = load i8, ptr %plusp.addr, align 1, !tbaa !14
  %8 = load i32, ptr %genestrand.addr, align 4, !tbaa !12
  %call = call i32 @Genomebits_count_mismatches_substring(ptr noundef %ref_nmismatches, ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i8 noundef zeroext %7, i32 noundef %8)
  store i32 %call, ptr %nmismatches, align 4, !tbaa !12
  %9 = load i32, ptr %nmismatches, align 4, !tbaa !12
  %10 = load i32, ptr %nmismatches_allowed.addr, align 4, !tbaa !12
  %cmp = icmp sgt i32 %9, %10
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i8 1, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %entry
  %11 = load i32, ptr %univdiagonal.addr, align 4, !tbaa !12
  %12 = load i32, ptr %pos5.addr, align 4, !tbaa !12
  %13 = load i32, ptr %pos3.addr, align 4, !tbaa !12
  %14 = load i32, ptr %nmismatches, align 4, !tbaa !12
  %15 = load i32, ptr %ref_nmismatches, align 4, !tbaa !12
  %16 = load i8, ptr %plusp.addr, align 1, !tbaa !14
  %17 = load i32, ptr %genestrand.addr, align 4, !tbaa !12
  %18 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %19 = load i32, ptr %method.addr, align 4, !tbaa !14
  %20 = load i32, ptr %chrnum.addr, align 4, !tbaa !12
  %21 = load i32, ptr %chroffset.addr, align 4, !tbaa !12
  %22 = load i32, ptr %chrhigh.addr, align 4, !tbaa !12
  %23 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %24 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %25 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %call1 = call ptr @Path_new_exact(i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %14, i32 noundef %15, i8 noundef zeroext %16, i32 noundef %17, i32 noundef %18, i32 noundef %19, i32 noundef %20, i32 noundef %21, i32 noundef %22, ptr noundef %23, ptr noundef %24, ptr noundef %25)
  store ptr %call1, ptr %sense_path, align 8, !tbaa !5
  %26 = load ptr, ptr %found_score.addr, align 8, !tbaa !5
  %27 = load ptr, ptr %sense_path, align 8, !tbaa !5
  %28 = load ptr, ptr %query_compress_fwd.addr, align 8, !tbaa !5
  %29 = load ptr, ptr %query_compress_rev.addr, align 8, !tbaa !5
  %call2 = call i32 @Path_eval_nmatches(ptr noundef %26, ptr noundef %27, ptr noundef %28, ptr noundef %29)
  %30 = load ptr, ptr %sense_path, align 8, !tbaa !5
  %31 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %32 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %33 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %34 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %35 = load ptr, ptr %vectorpool.addr, align 8, !tbaa !5
  %36 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  %call3 = call ptr @Path_copy(ptr noundef %30, ptr noundef %31, ptr noundef %32, ptr noundef %33, ptr noundef %34, ptr noundef %35, ptr noundef %36)
  store ptr %call3, ptr %antisense_path, align 8, !tbaa !5
  %37 = load ptr, ptr %antisense_path, align 8, !tbaa !5
  %sensedir = getelementptr inbounds %struct.Path_T, ptr %37, i32 0, i32 12
  store i32 1, ptr %sensedir, align 8, !tbaa !75
  %38 = load ptr, ptr %sense_paths.addr, align 8, !tbaa !5
  %39 = load ptr, ptr %38, align 8, !tbaa !5
  %40 = load ptr, ptr %hitlistpool.addr, align 8, !tbaa !5
  %41 = load ptr, ptr %sense_path, align 8, !tbaa !5
  %call4 = call ptr @Hitlist_push(ptr noundef %39, ptr noundef %40, ptr noundef %41)
  %42 = load ptr, ptr %sense_paths.addr, align 8, !tbaa !5
  store ptr %call4, ptr %42, align 8, !tbaa !5
  %43 = load ptr, ptr %antisense_paths.addr, align 8, !tbaa !5
  %44 = load ptr, ptr %43, align 8, !tbaa !5
  %45 = load ptr, ptr %hitlistpool.addr, align 8, !tbaa !5
  %46 = load ptr, ptr %antisense_path, align 8, !tbaa !5
  %call5 = call ptr @Hitlist_push(ptr noundef %44, ptr noundef %45, ptr noundef %46)
  %47 = load ptr, ptr %antisense_paths.addr, align 8, !tbaa !5
  store ptr %call5, ptr %47, align 8, !tbaa !5
  %48 = load ptr, ptr @transcriptome, align 8, !tbaa !5
  %cmp6 = icmp ne ptr %48, null
  br i1 %cmp6, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.else
  %49 = load ptr, ptr %found_score.addr, align 8, !tbaa !5
  %50 = load ptr, ptr %found_transcriptp.addr, align 8, !tbaa !5
  %51 = load ptr, ptr %sense_paths.addr, align 8, !tbaa !5
  %52 = load ptr, ptr %antisense_paths.addr, align 8, !tbaa !5
  %53 = load ptr, ptr %sense_path, align 8, !tbaa !5
  %54 = load ptr, ptr %query_compress_fwd.addr, align 8, !tbaa !5
  %55 = load ptr, ptr %query_compress_rev.addr, align 8, !tbaa !5
  %56 = load ptr, ptr %queryseq.addr, align 8, !tbaa !5
  %57 = load i32, ptr %nmismatches_allowed.addr, align 4, !tbaa !12
  %58 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %59 = load ptr, ptr %uintlistpool.addr, align 8, !tbaa !5
  %60 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %61 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %62 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  %63 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %64 = load ptr, ptr %vectorpool.addr, align 8, !tbaa !5
  %65 = load ptr, ptr %hitlistpool.addr, align 8, !tbaa !5
  call void @try_repairs_exact(ptr noundef %49, ptr noundef %50, ptr noundef %51, ptr noundef %52, ptr noundef %53, ptr noundef %54, ptr noundef %55, ptr noundef %56, i32 noundef %57, ptr noundef %58, ptr noundef %59, ptr noundef %60, ptr noundef %61, ptr noundef %62, ptr noundef %63, ptr noundef %64, ptr noundef %65)
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.else
  %66 = load ptr, ptr %sense_path, align 8, !tbaa !5
  %67 = load ptr, ptr %query_compress_fwd.addr, align 8, !tbaa !5
  %68 = load ptr, ptr %queryuc_ptr.addr, align 8, !tbaa !5
  %69 = load ptr, ptr %query_compress_rev.addr, align 8, !tbaa !5
  %70 = load ptr, ptr %queryrc.addr, align 8, !tbaa !5
  %71 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %call8 = call zeroext i8 @Path_eval_exact_sufficientp(ptr noundef %66, ptr noundef %67, ptr noundef %68, ptr noundef %69, ptr noundef %70, ptr noundef %71)
  store i8 %call8, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ref_nmismatches) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %nmismatches) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %newpath) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %antisense_path) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %sense_path) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr %sufficientp) #5
  %72 = load i8, ptr %retval, align 1
  ret i8 %72
}

declare i32 @Genomebits_count_mismatches_substring(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef) #3

declare ptr @Path_new_exact(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #3

declare ptr @Path_copy(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal void @try_repairs_exact(ptr noundef %found_score, ptr noundef %found_transcriptp, ptr noundef %sense_paths, ptr noundef %antisense_paths, ptr noundef %sense_path, ptr noundef %query_compress_fwd, ptr noundef %query_compress_rev, ptr noundef %queryseq, i32 noundef %nmismatches_allowed, ptr noundef %intlistpool, ptr noundef %uintlistpool, ptr noundef %univcoordlistpool, ptr noundef %listpool, ptr noundef %transcriptpool, ptr noundef %pathpool, ptr noundef %vectorpool, ptr noundef %hitlistpool) #1 {
entry:
  %found_score.addr = alloca ptr, align 8
  %found_transcriptp.addr = alloca ptr, align 8
  %sense_paths.addr = alloca ptr, align 8
  %antisense_paths.addr = alloca ptr, align 8
  %sense_path.addr = alloca ptr, align 8
  %query_compress_fwd.addr = alloca ptr, align 8
  %query_compress_rev.addr = alloca ptr, align 8
  %queryseq.addr = alloca ptr, align 8
  %nmismatches_allowed.addr = alloca i32, align 4
  %intlistpool.addr = alloca ptr, align 8
  %uintlistpool.addr = alloca ptr, align 8
  %univcoordlistpool.addr = alloca ptr, align 8
  %listpool.addr = alloca ptr, align 8
  %transcriptpool.addr = alloca ptr, align 8
  %pathpool.addr = alloca ptr, align 8
  %vectorpool.addr = alloca ptr, align 8
  %hitlistpool.addr = alloca ptr, align 8
  %newpath = alloca ptr, align 8
  %antisense_path = alloca ptr, align 8
  %repairs = alloca ptr, align 8
  %r = alloca ptr, align 8
  %repair = alloca ptr, align 8
  store ptr %found_score, ptr %found_score.addr, align 8, !tbaa !5
  store ptr %found_transcriptp, ptr %found_transcriptp.addr, align 8, !tbaa !5
  store ptr %sense_paths, ptr %sense_paths.addr, align 8, !tbaa !5
  store ptr %antisense_paths, ptr %antisense_paths.addr, align 8, !tbaa !5
  store ptr %sense_path, ptr %sense_path.addr, align 8, !tbaa !5
  store ptr %query_compress_fwd, ptr %query_compress_fwd.addr, align 8, !tbaa !5
  store ptr %query_compress_rev, ptr %query_compress_rev.addr, align 8, !tbaa !5
  store ptr %queryseq, ptr %queryseq.addr, align 8, !tbaa !5
  store i32 %nmismatches_allowed, ptr %nmismatches_allowed.addr, align 4, !tbaa !12
  store ptr %intlistpool, ptr %intlistpool.addr, align 8, !tbaa !5
  store ptr %uintlistpool, ptr %uintlistpool.addr, align 8, !tbaa !5
  store ptr %univcoordlistpool, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  store ptr %listpool, ptr %listpool.addr, align 8, !tbaa !5
  store ptr %transcriptpool, ptr %transcriptpool.addr, align 8, !tbaa !5
  store ptr %pathpool, ptr %pathpool.addr, align 8, !tbaa !5
  store ptr %vectorpool, ptr %vectorpool.addr, align 8, !tbaa !5
  store ptr %hitlistpool, ptr %hitlistpool.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %newpath) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %antisense_path) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %repairs) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %repair) #5
  %0 = load ptr, ptr %found_transcriptp.addr, align 8, !tbaa !5
  %1 = load ptr, ptr %sense_path.addr, align 8, !tbaa !5
  %transcripts = getelementptr inbounds %struct.Path_T, ptr %1, i32 0, i32 51
  %2 = load ptr, ptr %sense_path.addr, align 8, !tbaa !5
  %invalid_transcripts = getelementptr inbounds %struct.Path_T, ptr %2, i32 0, i32 52
  %3 = load ptr, ptr %sense_path.addr, align 8, !tbaa !5
  %endpoints = getelementptr inbounds %struct.Path_T, ptr %3, i32 0, i32 17
  %4 = load ptr, ptr %endpoints, align 8, !tbaa !40
  %5 = load ptr, ptr %sense_path.addr, align 8, !tbaa !5
  %univdiagonals = getelementptr inbounds %struct.Path_T, ptr %5, i32 0, i32 18
  %6 = load ptr, ptr %univdiagonals, align 8, !tbaa !36
  %7 = load ptr, ptr %sense_path.addr, align 8, !tbaa !5
  %junctions = getelementptr inbounds %struct.Path_T, ptr %7, i32 0, i32 21
  %8 = load ptr, ptr %junctions, align 8, !tbaa !43
  %9 = load ptr, ptr %queryseq.addr, align 8, !tbaa !5
  %10 = load ptr, ptr %sense_path.addr, align 8, !tbaa !5
  %querylength = getelementptr inbounds %struct.Path_T, ptr %10, i32 0, i32 13
  %11 = load i32, ptr %querylength, align 4, !tbaa !77
  %12 = load ptr, ptr %sense_path.addr, align 8, !tbaa !5
  %plusp = getelementptr inbounds %struct.Path_T, ptr %12, i32 0, i32 10
  %13 = load i8, ptr %plusp, align 8, !tbaa !76
  %14 = load ptr, ptr %sense_path.addr, align 8, !tbaa !5
  %chrnum = getelementptr inbounds %struct.Path_T, ptr %14, i32 0, i32 14
  %15 = load i32, ptr %chrnum, align 8, !tbaa !78
  %16 = load ptr, ptr %sense_path.addr, align 8, !tbaa !5
  %chroffset = getelementptr inbounds %struct.Path_T, ptr %16, i32 0, i32 15
  %17 = load i32, ptr %chroffset, align 4, !tbaa !79
  %18 = load ptr, ptr %sense_path.addr, align 8, !tbaa !5
  %chrhigh = getelementptr inbounds %struct.Path_T, ptr %18, i32 0, i32 16
  %19 = load i32, ptr %chrhigh, align 8, !tbaa !80
  %20 = load ptr, ptr %uintlistpool.addr, align 8, !tbaa !5
  %21 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %22 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  %23 = load ptr, ptr %vectorpool.addr, align 8, !tbaa !5
  %call = call ptr @Transcript_remap(ptr noundef %0, ptr noundef %transcripts, ptr noundef %invalid_transcripts, ptr noundef %4, ptr noundef %6, ptr noundef %8, ptr noundef %9, i32 noundef %11, i8 noundef zeroext %13, i32 noundef %15, i32 noundef %17, i32 noundef %19, ptr noundef %20, ptr noundef %21, ptr noundef %22, ptr noundef %23, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 1)
  store ptr %call, ptr %repairs, align 8, !tbaa !5
  %24 = load ptr, ptr %sense_path.addr, align 8, !tbaa !5
  %25 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %26 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %27 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %28 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %29 = load ptr, ptr %vectorpool.addr, align 8, !tbaa !5
  %30 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  %call1 = call ptr @Path_copy(ptr noundef %24, ptr noundef %25, ptr noundef %26, ptr noundef %27, ptr noundef %28, ptr noundef %29, ptr noundef %30)
  store ptr %call1, ptr %antisense_path, align 8, !tbaa !5
  %31 = load ptr, ptr %antisense_path, align 8, !tbaa !5
  %sensedir = getelementptr inbounds %struct.Path_T, ptr %31, i32 0, i32 12
  store i32 1, ptr %sensedir, align 8, !tbaa !75
  %32 = load ptr, ptr %sense_paths.addr, align 8, !tbaa !5
  %33 = load ptr, ptr %32, align 8, !tbaa !5
  %34 = load ptr, ptr %hitlistpool.addr, align 8, !tbaa !5
  %35 = load ptr, ptr %sense_path.addr, align 8, !tbaa !5
  %call2 = call ptr @Hitlist_push(ptr noundef %33, ptr noundef %34, ptr noundef %35)
  %36 = load ptr, ptr %sense_paths.addr, align 8, !tbaa !5
  store ptr %call2, ptr %36, align 8, !tbaa !5
  %37 = load ptr, ptr %antisense_paths.addr, align 8, !tbaa !5
  %38 = load ptr, ptr %37, align 8, !tbaa !5
  %39 = load ptr, ptr %hitlistpool.addr, align 8, !tbaa !5
  %40 = load ptr, ptr %antisense_path, align 8, !tbaa !5
  %call3 = call ptr @Hitlist_push(ptr noundef %38, ptr noundef %39, ptr noundef %40)
  %41 = load ptr, ptr %antisense_paths.addr, align 8, !tbaa !5
  store ptr %call3, ptr %41, align 8, !tbaa !5
  %42 = load ptr, ptr %repairs, align 8, !tbaa !5
  store ptr %42, ptr %r, align 8, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %43 = load ptr, ptr %r, align 8, !tbaa !5
  %cmp = icmp ne ptr %43, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %44 = load ptr, ptr %r, align 8, !tbaa !5
  %call4 = call ptr @List_head(ptr noundef %44)
  store ptr %call4, ptr %repair, align 8, !tbaa !5
  %45 = load ptr, ptr %found_score.addr, align 8, !tbaa !5
  %46 = load ptr, ptr %repair, align 8, !tbaa !5
  %47 = load ptr, ptr %sense_path.addr, align 8, !tbaa !5
  %48 = load ptr, ptr %query_compress_fwd.addr, align 8, !tbaa !5
  %49 = load ptr, ptr %query_compress_rev.addr, align 8, !tbaa !5
  %50 = load i32, ptr %nmismatches_allowed.addr, align 4, !tbaa !12
  %51 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %52 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %53 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %54 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %55 = load ptr, ptr %vectorpool.addr, align 8, !tbaa !5
  %56 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  %call5 = call ptr @Repair_path(ptr noundef %45, ptr noundef %46, ptr noundef %47, i32 noundef 2, ptr noundef %48, ptr noundef %49, i32 noundef %50, ptr noundef %51, ptr noundef %52, ptr noundef %53, ptr noundef %54, ptr noundef %55, ptr noundef %56)
  store ptr %call5, ptr %newpath, align 8, !tbaa !5
  %cmp6 = icmp ne ptr %call5, null
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %57 = load ptr, ptr %sense_paths.addr, align 8, !tbaa !5
  %58 = load ptr, ptr %57, align 8, !tbaa !5
  %59 = load ptr, ptr %hitlistpool.addr, align 8, !tbaa !5
  %60 = load ptr, ptr %newpath, align 8, !tbaa !5
  %call7 = call ptr @Hitlist_push(ptr noundef %58, ptr noundef %59, ptr noundef %60)
  %61 = load ptr, ptr %sense_paths.addr, align 8, !tbaa !5
  store ptr %call7, ptr %61, align 8, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %62 = load ptr, ptr %found_score.addr, align 8, !tbaa !5
  %63 = load ptr, ptr %repair, align 8, !tbaa !5
  %64 = load ptr, ptr %antisense_path, align 8, !tbaa !5
  %65 = load ptr, ptr %query_compress_fwd.addr, align 8, !tbaa !5
  %66 = load ptr, ptr %query_compress_rev.addr, align 8, !tbaa !5
  %67 = load i32, ptr %nmismatches_allowed.addr, align 4, !tbaa !12
  %68 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %69 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %70 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %71 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %72 = load ptr, ptr %vectorpool.addr, align 8, !tbaa !5
  %73 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  %call8 = call ptr @Repair_path(ptr noundef %62, ptr noundef %63, ptr noundef %64, i32 noundef 1, ptr noundef %65, ptr noundef %66, i32 noundef %67, ptr noundef %68, ptr noundef %69, ptr noundef %70, ptr noundef %71, ptr noundef %72, ptr noundef %73)
  store ptr %call8, ptr %newpath, align 8, !tbaa !5
  %cmp9 = icmp ne ptr %call8, null
  br i1 %cmp9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end
  %74 = load ptr, ptr %antisense_paths.addr, align 8, !tbaa !5
  %75 = load ptr, ptr %74, align 8, !tbaa !5
  %76 = load ptr, ptr %hitlistpool.addr, align 8, !tbaa !5
  %77 = load ptr, ptr %newpath, align 8, !tbaa !5
  %call11 = call ptr @Hitlist_push(ptr noundef %75, ptr noundef %76, ptr noundef %77)
  %78 = load ptr, ptr %antisense_paths.addr, align 8, !tbaa !5
  store ptr %call11, ptr %78, align 8, !tbaa !5
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end
  call void @Repair_free(ptr noundef %repair)
  br label %for.inc

for.inc:                                          ; preds = %if.end12
  %79 = load ptr, ptr %r, align 8, !tbaa !5
  %call13 = call ptr @List_next(ptr noundef %79)
  store ptr %call13, ptr %r, align 8, !tbaa !5
  br label %for.cond, !llvm.loop !88

for.end:                                          ; preds = %for.cond
  %80 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  call void @Listpool_free_list(ptr noundef %repairs, ptr noundef %80)
  call void @llvm.lifetime.end.p0(i64 8, ptr %repair) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %repairs) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %antisense_path) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %newpath) #5
  ret void
}

declare zeroext i8 @Path_eval_exact_sufficientp(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define dso_local ptr @Path_extend(ptr noundef %completep, ptr noundef %found_score, ptr noundef %found_transcriptp, ptr noundef %original_path, ptr noundef %queryseq, ptr noundef %queryptr, i32 noundef %querylength, ptr noundef %mismatch_positions_alloc, ptr noundef %novel_diagonals_alloc, ptr noundef %localdb_alloc, i32 noundef %streamspace_max_alloc, ptr noundef %streamspace_alloc, ptr noundef %streamptr_alloc, ptr noundef %streamsize_alloc, ptr noundef %mergeinfo, ptr noundef %indelinfo, ptr noundef %spliceinfo, ptr noundef %knownsplicing, ptr noundef %knownindels, ptr noundef %query_compress, ptr noundef %query_compress_fwd, ptr noundef %query_compress_rev, i32 noundef %genestrand, i32 noundef %max_insertionlen, i32 noundef %max_deletionlen, i32 noundef %overall_end_distance, i32 noundef %nmismatches_allowed, i8 noundef zeroext %paired_end_p, i8 noundef zeroext %lowp, ptr noundef %intlistpool, ptr noundef %uintlistpool, ptr noundef %univcoordlistpool, ptr noundef %listpool, ptr noundef %pathpool, ptr noundef %transcriptpool, ptr noundef %vectorpool, ptr noundef %hitlistpool, ptr noundef %spliceendsgen, i32 noundef %pass, i8 noundef zeroext %extend_qstart_p, i8 noundef zeroext %extend_qend_p) #1 {
entry:
  %retval = alloca ptr, align 8
  %completep.addr = alloca ptr, align 8
  %found_score.addr = alloca ptr, align 8
  %found_transcriptp.addr = alloca ptr, align 8
  %original_path.addr = alloca ptr, align 8
  %queryseq.addr = alloca ptr, align 8
  %queryptr.addr = alloca ptr, align 8
  %querylength.addr = alloca i32, align 4
  %mismatch_positions_alloc.addr = alloca ptr, align 8
  %novel_diagonals_alloc.addr = alloca ptr, align 8
  %localdb_alloc.addr = alloca ptr, align 8
  %streamspace_max_alloc.addr = alloca i32, align 4
  %streamspace_alloc.addr = alloca ptr, align 8
  %streamptr_alloc.addr = alloca ptr, align 8
  %streamsize_alloc.addr = alloca ptr, align 8
  %mergeinfo.addr = alloca ptr, align 8
  %indelinfo.addr = alloca ptr, align 8
  %spliceinfo.addr = alloca ptr, align 8
  %knownsplicing.addr = alloca ptr, align 8
  %knownindels.addr = alloca ptr, align 8
  %query_compress.addr = alloca ptr, align 8
  %query_compress_fwd.addr = alloca ptr, align 8
  %query_compress_rev.addr = alloca ptr, align 8
  %genestrand.addr = alloca i32, align 4
  %max_insertionlen.addr = alloca i32, align 4
  %max_deletionlen.addr = alloca i32, align 4
  %overall_end_distance.addr = alloca i32, align 4
  %nmismatches_allowed.addr = alloca i32, align 4
  %paired_end_p.addr = alloca i8, align 1
  %lowp.addr = alloca i8, align 1
  %intlistpool.addr = alloca ptr, align 8
  %uintlistpool.addr = alloca ptr, align 8
  %univcoordlistpool.addr = alloca ptr, align 8
  %listpool.addr = alloca ptr, align 8
  %pathpool.addr = alloca ptr, align 8
  %transcriptpool.addr = alloca ptr, align 8
  %vectorpool.addr = alloca ptr, align 8
  %hitlistpool.addr = alloca ptr, align 8
  %spliceendsgen.addr = alloca ptr, align 8
  %pass.addr = alloca i32, align 4
  %extend_qstart_p.addr = alloca i8, align 1
  %extend_qend_p.addr = alloca i8, align 1
  %complete_paths = alloca ptr, align 8
  %unextended_paths = alloca ptr, align 8
  %unextended_qstart_paths = alloca ptr, align 8
  %complete_qstart_paths = alloca ptr, align 8
  %complete_qend_paths = alloca ptr, align 8
  %rev_paths = alloca ptr, align 8
  %p = alloca ptr, align 8
  %path = alloca ptr, align 8
  %qstart_innerp = alloca i8, align 1
  %qend_innerp = alloca i8, align 1
  %chrnum = alloca i32, align 4
  %chroffset = alloca i32, align 4
  %chrhigh = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %completep, ptr %completep.addr, align 8, !tbaa !5
  store ptr %found_score, ptr %found_score.addr, align 8, !tbaa !5
  store ptr %found_transcriptp, ptr %found_transcriptp.addr, align 8, !tbaa !5
  store ptr %original_path, ptr %original_path.addr, align 8, !tbaa !5
  store ptr %queryseq, ptr %queryseq.addr, align 8, !tbaa !5
  store ptr %queryptr, ptr %queryptr.addr, align 8, !tbaa !5
  store i32 %querylength, ptr %querylength.addr, align 4, !tbaa !12
  store ptr %mismatch_positions_alloc, ptr %mismatch_positions_alloc.addr, align 8, !tbaa !5
  store ptr %novel_diagonals_alloc, ptr %novel_diagonals_alloc.addr, align 8, !tbaa !5
  store ptr %localdb_alloc, ptr %localdb_alloc.addr, align 8, !tbaa !5
  store i32 %streamspace_max_alloc, ptr %streamspace_max_alloc.addr, align 4, !tbaa !12
  store ptr %streamspace_alloc, ptr %streamspace_alloc.addr, align 8, !tbaa !5
  store ptr %streamptr_alloc, ptr %streamptr_alloc.addr, align 8, !tbaa !5
  store ptr %streamsize_alloc, ptr %streamsize_alloc.addr, align 8, !tbaa !5
  store ptr %mergeinfo, ptr %mergeinfo.addr, align 8, !tbaa !5
  store ptr %indelinfo, ptr %indelinfo.addr, align 8, !tbaa !5
  store ptr %spliceinfo, ptr %spliceinfo.addr, align 8, !tbaa !5
  store ptr %knownsplicing, ptr %knownsplicing.addr, align 8, !tbaa !5
  store ptr %knownindels, ptr %knownindels.addr, align 8, !tbaa !5
  store ptr %query_compress, ptr %query_compress.addr, align 8, !tbaa !5
  store ptr %query_compress_fwd, ptr %query_compress_fwd.addr, align 8, !tbaa !5
  store ptr %query_compress_rev, ptr %query_compress_rev.addr, align 8, !tbaa !5
  store i32 %genestrand, ptr %genestrand.addr, align 4, !tbaa !12
  store i32 %max_insertionlen, ptr %max_insertionlen.addr, align 4, !tbaa !12
  store i32 %max_deletionlen, ptr %max_deletionlen.addr, align 4, !tbaa !12
  store i32 %overall_end_distance, ptr %overall_end_distance.addr, align 4, !tbaa !12
  store i32 %nmismatches_allowed, ptr %nmismatches_allowed.addr, align 4, !tbaa !12
  store i8 %paired_end_p, ptr %paired_end_p.addr, align 1, !tbaa !14
  store i8 %lowp, ptr %lowp.addr, align 1, !tbaa !14
  store ptr %intlistpool, ptr %intlistpool.addr, align 8, !tbaa !5
  store ptr %uintlistpool, ptr %uintlistpool.addr, align 8, !tbaa !5
  store ptr %univcoordlistpool, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  store ptr %listpool, ptr %listpool.addr, align 8, !tbaa !5
  store ptr %pathpool, ptr %pathpool.addr, align 8, !tbaa !5
  store ptr %transcriptpool, ptr %transcriptpool.addr, align 8, !tbaa !5
  store ptr %vectorpool, ptr %vectorpool.addr, align 8, !tbaa !5
  store ptr %hitlistpool, ptr %hitlistpool.addr, align 8, !tbaa !5
  store ptr %spliceendsgen, ptr %spliceendsgen.addr, align 8, !tbaa !5
  store i32 %pass, ptr %pass.addr, align 4, !tbaa !14
  store i8 %extend_qstart_p, ptr %extend_qstart_p.addr, align 1, !tbaa !14
  store i8 %extend_qend_p, ptr %extend_qend_p.addr, align 1, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 8, ptr %complete_paths) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %unextended_paths) #5
  store ptr null, ptr %unextended_paths, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %unextended_qstart_paths) #5
  store ptr null, ptr %unextended_qstart_paths, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %complete_qstart_paths) #5
  store ptr null, ptr %complete_qstart_paths, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %complete_qend_paths) #5
  store ptr null, ptr %complete_qend_paths, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %rev_paths) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %path) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr %qstart_innerp) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr %qend_innerp) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %chrnum) #5
  %0 = load ptr, ptr %original_path.addr, align 8, !tbaa !5
  %chrnum1 = getelementptr inbounds %struct.Path_T, ptr %0, i32 0, i32 14
  %1 = load i32, ptr %chrnum1, align 8, !tbaa !78
  store i32 %1, ptr %chrnum, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %chroffset) #5
  %2 = load ptr, ptr %original_path.addr, align 8, !tbaa !5
  %chroffset2 = getelementptr inbounds %struct.Path_T, ptr %2, i32 0, i32 15
  %3 = load i32, ptr %chroffset2, align 4, !tbaa !79
  store i32 %3, ptr %chroffset, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %chrhigh) #5
  %4 = load ptr, ptr %original_path.addr, align 8, !tbaa !5
  %chrhigh3 = getelementptr inbounds %struct.Path_T, ptr %4, i32 0, i32 16
  %5 = load i32, ptr %chrhigh3, align 8, !tbaa !80
  store i32 %5, ptr %chrhigh, align 4, !tbaa !12
  %6 = load i8, ptr %paired_end_p.addr, align 1, !tbaa !14
  %conv = zext i8 %6 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i8 0, ptr %qend_innerp, align 1, !tbaa !14
  store i8 0, ptr %qstart_innerp, align 1, !tbaa !14
  br label %if.end7

if.else:                                          ; preds = %entry
  %7 = load i8, ptr %lowp.addr, align 1, !tbaa !14
  %tobool = icmp ne i8 %7, 0
  br i1 %tobool, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.else
  store i8 0, ptr %qstart_innerp, align 1, !tbaa !14
  store i8 1, ptr %qend_innerp, align 1, !tbaa !14
  br label %if.end

if.else6:                                         ; preds = %if.else
  store i8 1, ptr %qstart_innerp, align 1, !tbaa !14
  store i8 0, ptr %qend_innerp, align 1, !tbaa !14
  br label %if.end

if.end:                                           ; preds = %if.else6, %if.then5
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then
  %8 = load ptr, ptr %original_path.addr, align 8, !tbaa !5
  %9 = load ptr, ptr %queryptr.addr, align 8, !tbaa !5
  %10 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %11 = load ptr, ptr %mismatch_positions_alloc.addr, align 8, !tbaa !5
  %12 = load ptr, ptr %novel_diagonals_alloc.addr, align 8, !tbaa !5
  %13 = load ptr, ptr %localdb_alloc.addr, align 8, !tbaa !5
  %14 = load i32, ptr %streamspace_max_alloc.addr, align 4, !tbaa !12
  %15 = load ptr, ptr %streamspace_alloc.addr, align 8, !tbaa !5
  %16 = load ptr, ptr %streamptr_alloc.addr, align 8, !tbaa !5
  %17 = load ptr, ptr %streamsize_alloc.addr, align 8, !tbaa !5
  %18 = load ptr, ptr %mergeinfo.addr, align 8, !tbaa !5
  %19 = load ptr, ptr %indelinfo.addr, align 8, !tbaa !5
  %20 = load ptr, ptr %spliceinfo.addr, align 8, !tbaa !5
  %21 = load ptr, ptr %knownsplicing.addr, align 8, !tbaa !5
  %22 = load ptr, ptr %knownindels.addr, align 8, !tbaa !5
  %23 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %24 = load i32, ptr %chrnum, align 4, !tbaa !12
  %25 = load i32, ptr %chroffset, align 4, !tbaa !12
  %26 = load i32, ptr %chrhigh, align 4, !tbaa !12
  %27 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %28 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %29 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %30 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %31 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  %32 = load ptr, ptr %vectorpool.addr, align 8, !tbaa !5
  %33 = load ptr, ptr %hitlistpool.addr, align 8, !tbaa !5
  %34 = load ptr, ptr %spliceendsgen.addr, align 8, !tbaa !5
  %35 = load i32, ptr %max_insertionlen.addr, align 4, !tbaa !12
  %36 = load i32, ptr %max_deletionlen.addr, align 4, !tbaa !12
  %37 = load i32, ptr %nmismatches_allowed.addr, align 4, !tbaa !12
  %38 = load i32, ptr %overall_end_distance.addr, align 4, !tbaa !12
  %39 = load ptr, ptr %original_path.addr, align 8, !tbaa !5
  %plusp = getelementptr inbounds %struct.Path_T, ptr %39, i32 0, i32 10
  %40 = load i8, ptr %plusp, align 8, !tbaa !76
  %41 = load i32, ptr %genestrand.addr, align 4, !tbaa !12
  %42 = load ptr, ptr %original_path.addr, align 8, !tbaa !5
  %sensedir = getelementptr inbounds %struct.Path_T, ptr %42, i32 0, i32 12
  %43 = load i32, ptr %sensedir, align 8, !tbaa !75
  %44 = load i8, ptr %qstart_innerp, align 1, !tbaa !14
  %45 = load i32, ptr %pass.addr, align 4, !tbaa !14
  call void @compute_qstart_local(ptr noundef %unextended_qstart_paths, ptr noundef %complete_qstart_paths, i32 noundef 0, ptr noundef %8, ptr noundef %9, i32 noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %13, i32 noundef %14, ptr noundef %15, ptr noundef %16, ptr noundef %17, ptr noundef %18, ptr noundef %19, ptr noundef %20, ptr noundef %21, ptr noundef %22, ptr noundef %23, i32 noundef %24, i32 noundef %25, i32 noundef %26, ptr noundef %27, ptr noundef %28, ptr noundef %29, ptr noundef %30, ptr noundef %31, ptr noundef %32, ptr noundef %33, ptr noundef %34, i32 noundef %35, i32 noundef %36, i32 noundef %37, i32 noundef %38, i8 noundef zeroext %40, i32 noundef %41, i32 noundef %43, i8 noundef zeroext %44, i8 noundef zeroext 1, i32 noundef %45)
  %46 = load ptr, ptr %complete_qstart_paths, align 8, !tbaa !5
  %cmp8 = icmp ne ptr %46, null
  br i1 %cmp8, label %if.then10, label %if.else11

if.then10:                                        ; preds = %if.end7
  %47 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %48 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %49 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %50 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %51 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  %52 = load ptr, ptr %hitlistpool.addr, align 8, !tbaa !5
  call void @Path_gc(ptr noundef %unextended_qstart_paths, ptr noundef %47, ptr noundef %48, ptr noundef %49, ptr noundef %50, ptr noundef %51, ptr noundef %52)
  %53 = load ptr, ptr %complete_qstart_paths, align 8, !tbaa !5
  store ptr %53, ptr %rev_paths, align 8, !tbaa !5
  br label %if.end12

if.else11:                                        ; preds = %if.end7
  %54 = load ptr, ptr %unextended_qstart_paths, align 8, !tbaa !5
  store ptr %54, ptr %rev_paths, align 8, !tbaa !5
  br label %if.end12

if.end12:                                         ; preds = %if.else11, %if.then10
  %55 = load ptr, ptr %rev_paths, align 8, !tbaa !5
  store ptr %55, ptr %p, align 8, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end12
  %56 = load ptr, ptr %p, align 8, !tbaa !5
  %cmp13 = icmp ne ptr %56, null
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %57 = load ptr, ptr %p, align 8, !tbaa !5
  %call = call ptr @List_head(ptr noundef %57)
  %call15 = call ptr @Path_reverse(ptr noundef %call, i8 noundef zeroext 0)
  store ptr %call15, ptr %path, align 8, !tbaa !5
  %58 = load ptr, ptr %path, align 8, !tbaa !5
  %59 = load ptr, ptr %queryptr.addr, align 8, !tbaa !5
  %60 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %61 = load ptr, ptr %mismatch_positions_alloc.addr, align 8, !tbaa !5
  %62 = load ptr, ptr %novel_diagonals_alloc.addr, align 8, !tbaa !5
  %63 = load ptr, ptr %localdb_alloc.addr, align 8, !tbaa !5
  %64 = load i32, ptr %streamspace_max_alloc.addr, align 4, !tbaa !12
  %65 = load ptr, ptr %streamspace_alloc.addr, align 8, !tbaa !5
  %66 = load ptr, ptr %streamptr_alloc.addr, align 8, !tbaa !5
  %67 = load ptr, ptr %streamsize_alloc.addr, align 8, !tbaa !5
  %68 = load ptr, ptr %mergeinfo.addr, align 8, !tbaa !5
  %69 = load ptr, ptr %indelinfo.addr, align 8, !tbaa !5
  %70 = load ptr, ptr %spliceinfo.addr, align 8, !tbaa !5
  %71 = load ptr, ptr %knownsplicing.addr, align 8, !tbaa !5
  %72 = load ptr, ptr %knownindels.addr, align 8, !tbaa !5
  %73 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %74 = load i32, ptr %chrnum, align 4, !tbaa !12
  %75 = load i32, ptr %chroffset, align 4, !tbaa !12
  %76 = load i32, ptr %chrhigh, align 4, !tbaa !12
  %77 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %78 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %79 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %80 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %81 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  %82 = load ptr, ptr %vectorpool.addr, align 8, !tbaa !5
  %83 = load ptr, ptr %hitlistpool.addr, align 8, !tbaa !5
  %84 = load ptr, ptr %spliceendsgen.addr, align 8, !tbaa !5
  %85 = load i32, ptr %max_insertionlen.addr, align 4, !tbaa !12
  %86 = load i32, ptr %max_deletionlen.addr, align 4, !tbaa !12
  %87 = load i32, ptr %nmismatches_allowed.addr, align 4, !tbaa !12
  %88 = load i32, ptr %overall_end_distance.addr, align 4, !tbaa !12
  %89 = load ptr, ptr %original_path.addr, align 8, !tbaa !5
  %plusp16 = getelementptr inbounds %struct.Path_T, ptr %89, i32 0, i32 10
  %90 = load i8, ptr %plusp16, align 8, !tbaa !76
  %91 = load i32, ptr %genestrand.addr, align 4, !tbaa !12
  %92 = load ptr, ptr %original_path.addr, align 8, !tbaa !5
  %sensedir17 = getelementptr inbounds %struct.Path_T, ptr %92, i32 0, i32 12
  %93 = load i32, ptr %sensedir17, align 8, !tbaa !75
  %94 = load i8, ptr %qend_innerp, align 1, !tbaa !14
  %95 = load i32, ptr %pass.addr, align 4, !tbaa !14
  call void @compute_qend_local(ptr noundef %unextended_paths, ptr noundef %complete_qend_paths, i32 noundef 0, ptr noundef %58, ptr noundef %59, i32 noundef %60, ptr noundef %61, ptr noundef %62, ptr noundef %63, i32 noundef %64, ptr noundef %65, ptr noundef %66, ptr noundef %67, ptr noundef %68, ptr noundef %69, ptr noundef %70, ptr noundef %71, ptr noundef %72, ptr noundef %73, i32 noundef %74, i32 noundef %75, i32 noundef %76, ptr noundef %77, ptr noundef %78, ptr noundef %79, ptr noundef %80, ptr noundef %81, ptr noundef %82, ptr noundef %83, ptr noundef %84, i32 noundef %85, i32 noundef %86, i32 noundef %87, i32 noundef %88, i8 noundef zeroext %90, i32 noundef %91, i32 noundef %93, i8 noundef zeroext %94, i8 noundef zeroext 1, i32 noundef %95)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %96 = load ptr, ptr %p, align 8, !tbaa !5
  %call18 = call ptr @List_next(ptr noundef %96)
  store ptr %call18, ptr %p, align 8, !tbaa !5
  br label %for.cond, !llvm.loop !89

for.end:                                          ; preds = %for.cond
  %97 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %98 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %99 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %100 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %101 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  %102 = load ptr, ptr %hitlistpool.addr, align 8, !tbaa !5
  call void @Path_gc(ptr noundef %rev_paths, ptr noundef %97, ptr noundef %98, ptr noundef %99, ptr noundef %100, ptr noundef %101, ptr noundef %102)
  %103 = load ptr, ptr %complete_qend_paths, align 8, !tbaa !5
  %cmp19 = icmp eq ptr %103, null
  br i1 %cmp19, label %if.then21, label %if.else23

if.then21:                                        ; preds = %for.end
  %104 = load ptr, ptr %completep.addr, align 8, !tbaa !5
  store i8 0, ptr %104, align 1, !tbaa !14
  %105 = load ptr, ptr %found_score.addr, align 8, !tbaa !5
  %106 = load ptr, ptr %found_transcriptp.addr, align 8, !tbaa !5
  %107 = load ptr, ptr %unextended_paths, align 8, !tbaa !5
  %108 = load ptr, ptr %query_compress_fwd.addr, align 8, !tbaa !5
  %109 = load ptr, ptr %query_compress_rev.addr, align 8, !tbaa !5
  %110 = load ptr, ptr %queryseq.addr, align 8, !tbaa !5
  %111 = load i32, ptr %nmismatches_allowed.addr, align 4, !tbaa !12
  %112 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %113 = load ptr, ptr %uintlistpool.addr, align 8, !tbaa !5
  %114 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %115 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %116 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  %117 = load ptr, ptr %vectorpool.addr, align 8, !tbaa !5
  %118 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %119 = load ptr, ptr %hitlistpool.addr, align 8, !tbaa !5
  %call22 = call ptr @remap_paths(ptr noundef %105, ptr noundef %106, ptr noundef %107, ptr noundef %108, ptr noundef %109, ptr noundef %110, i32 noundef %111, ptr noundef %112, ptr noundef %113, ptr noundef %114, ptr noundef %115, ptr noundef %116, ptr noundef %117, ptr noundef %118, ptr noundef %119)
  store ptr %call22, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else23:                                        ; preds = %for.end
  store ptr null, ptr %complete_paths, align 8, !tbaa !5
  %120 = load ptr, ptr %complete_qend_paths, align 8, !tbaa !5
  store ptr %120, ptr %p, align 8, !tbaa !5
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc39, %if.else23
  %121 = load ptr, ptr %p, align 8, !tbaa !5
  %cmp25 = icmp ne ptr %121, null
  br i1 %cmp25, label %for.body27, label %for.end41

for.body27:                                       ; preds = %for.cond24
  %122 = load ptr, ptr %p, align 8, !tbaa !5
  %call28 = call ptr @List_head(ptr noundef %122)
  %call29 = call ptr @Path_reverse(ptr noundef %call28, i8 noundef zeroext 1)
  store ptr %call29, ptr %path, align 8, !tbaa !5
  %123 = load ptr, ptr %path, align 8, !tbaa !5
  %call30 = call zeroext i8 @Path_unextendedp(ptr noundef %123, i32 noundef 8, i8 noundef zeroext 0)
  %conv31 = zext i8 %call30 to i32
  %cmp32 = icmp eq i32 %conv31, 1
  br i1 %cmp32, label %if.then34, label %if.else36

if.then34:                                        ; preds = %for.body27
  %124 = load ptr, ptr %complete_paths, align 8, !tbaa !5
  %125 = load ptr, ptr %hitlistpool.addr, align 8, !tbaa !5
  %126 = load ptr, ptr %path, align 8, !tbaa !5
  %call35 = call ptr @Hitlist_push(ptr noundef %124, ptr noundef %125, ptr noundef %126)
  store ptr %call35, ptr %unextended_paths, align 8, !tbaa !5
  br label %if.end38

if.else36:                                        ; preds = %for.body27
  %127 = load ptr, ptr %complete_paths, align 8, !tbaa !5
  %128 = load ptr, ptr %hitlistpool.addr, align 8, !tbaa !5
  %129 = load ptr, ptr %path, align 8, !tbaa !5
  %call37 = call ptr @Hitlist_push(ptr noundef %127, ptr noundef %128, ptr noundef %129)
  store ptr %call37, ptr %complete_paths, align 8, !tbaa !5
  br label %if.end38

if.end38:                                         ; preds = %if.else36, %if.then34
  br label %for.inc39

for.inc39:                                        ; preds = %if.end38
  %130 = load ptr, ptr %p, align 8, !tbaa !5
  %call40 = call ptr @List_next(ptr noundef %130)
  store ptr %call40, ptr %p, align 8, !tbaa !5
  br label %for.cond24, !llvm.loop !90

for.end41:                                        ; preds = %for.cond24
  %131 = load ptr, ptr %complete_paths, align 8, !tbaa !5
  %cmp42 = icmp ne ptr %131, null
  br i1 %cmp42, label %if.then44, label %if.else46

if.then44:                                        ; preds = %for.end41
  %132 = load ptr, ptr %completep.addr, align 8, !tbaa !5
  store i8 1, ptr %132, align 1, !tbaa !14
  %133 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %134 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %135 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %136 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %137 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  %138 = load ptr, ptr %hitlistpool.addr, align 8, !tbaa !5
  call void @Path_gc(ptr noundef %unextended_paths, ptr noundef %133, ptr noundef %134, ptr noundef %135, ptr noundef %136, ptr noundef %137, ptr noundef %138)
  %139 = load ptr, ptr %found_score.addr, align 8, !tbaa !5
  %140 = load ptr, ptr %found_transcriptp.addr, align 8, !tbaa !5
  %141 = load ptr, ptr %complete_paths, align 8, !tbaa !5
  %142 = load ptr, ptr %query_compress_fwd.addr, align 8, !tbaa !5
  %143 = load ptr, ptr %query_compress_rev.addr, align 8, !tbaa !5
  %144 = load ptr, ptr %queryseq.addr, align 8, !tbaa !5
  %145 = load i32, ptr %nmismatches_allowed.addr, align 4, !tbaa !12
  %146 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %147 = load ptr, ptr %uintlistpool.addr, align 8, !tbaa !5
  %148 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %149 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %150 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  %151 = load ptr, ptr %vectorpool.addr, align 8, !tbaa !5
  %152 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %153 = load ptr, ptr %hitlistpool.addr, align 8, !tbaa !5
  %call45 = call ptr @remap_paths(ptr noundef %139, ptr noundef %140, ptr noundef %141, ptr noundef %142, ptr noundef %143, ptr noundef %144, i32 noundef %145, ptr noundef %146, ptr noundef %147, ptr noundef %148, ptr noundef %149, ptr noundef %150, ptr noundef %151, ptr noundef %152, ptr noundef %153)
  store ptr %call45, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else46:                                        ; preds = %for.end41
  %154 = load ptr, ptr %completep.addr, align 8, !tbaa !5
  store i8 0, ptr %154, align 1, !tbaa !14
  %155 = load ptr, ptr %found_score.addr, align 8, !tbaa !5
  %156 = load ptr, ptr %found_transcriptp.addr, align 8, !tbaa !5
  %157 = load ptr, ptr %unextended_paths, align 8, !tbaa !5
  %158 = load ptr, ptr %query_compress_fwd.addr, align 8, !tbaa !5
  %159 = load ptr, ptr %query_compress_rev.addr, align 8, !tbaa !5
  %160 = load ptr, ptr %queryseq.addr, align 8, !tbaa !5
  %161 = load i32, ptr %nmismatches_allowed.addr, align 4, !tbaa !12
  %162 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %163 = load ptr, ptr %uintlistpool.addr, align 8, !tbaa !5
  %164 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %165 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %166 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  %167 = load ptr, ptr %vectorpool.addr, align 8, !tbaa !5
  %168 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %169 = load ptr, ptr %hitlistpool.addr, align 8, !tbaa !5
  %call47 = call ptr @remap_paths(ptr noundef %155, ptr noundef %156, ptr noundef %157, ptr noundef %158, ptr noundef %159, ptr noundef %160, i32 noundef %161, ptr noundef %162, ptr noundef %163, ptr noundef %164, ptr noundef %165, ptr noundef %166, ptr noundef %167, ptr noundef %168, ptr noundef %169)
  store ptr %call47, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else46, %if.then44, %if.then21
  call void @llvm.lifetime.end.p0(i64 4, ptr %chrhigh) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %chroffset) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %chrnum) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr %qend_innerp) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr %qstart_innerp) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %path) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %rev_paths) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %complete_qend_paths) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %complete_qstart_paths) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %unextended_qstart_paths) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %unextended_paths) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %complete_paths) #5
  %170 = load ptr, ptr %retval, align 8
  ret ptr %170
}

; Function Attrs: nounwind uwtable
define internal ptr @remap_paths(ptr noundef %found_score, ptr noundef %found_transcriptp, ptr noundef %paths, ptr noundef %query_compress_fwd, ptr noundef %query_compress_rev, ptr noundef %queryseq, i32 noundef %nmismatches_allowed, ptr noundef %intlistpool, ptr noundef %uintlistpool, ptr noundef %univcoordlistpool, ptr noundef %listpool, ptr noundef %transcriptpool, ptr noundef %vectorpool, ptr noundef %pathpool, ptr noundef %hitlistpool) #1 {
entry:
  %found_score.addr = alloca ptr, align 8
  %found_transcriptp.addr = alloca ptr, align 8
  %paths.addr = alloca ptr, align 8
  %query_compress_fwd.addr = alloca ptr, align 8
  %query_compress_rev.addr = alloca ptr, align 8
  %queryseq.addr = alloca ptr, align 8
  %nmismatches_allowed.addr = alloca i32, align 4
  %intlistpool.addr = alloca ptr, align 8
  %uintlistpool.addr = alloca ptr, align 8
  %univcoordlistpool.addr = alloca ptr, align 8
  %listpool.addr = alloca ptr, align 8
  %transcriptpool.addr = alloca ptr, align 8
  %vectorpool.addr = alloca ptr, align 8
  %pathpool.addr = alloca ptr, align 8
  %hitlistpool.addr = alloca ptr, align 8
  %result_paths = alloca ptr, align 8
  %p = alloca ptr, align 8
  %path = alloca ptr, align 8
  store ptr %found_score, ptr %found_score.addr, align 8, !tbaa !5
  store ptr %found_transcriptp, ptr %found_transcriptp.addr, align 8, !tbaa !5
  store ptr %paths, ptr %paths.addr, align 8, !tbaa !5
  store ptr %query_compress_fwd, ptr %query_compress_fwd.addr, align 8, !tbaa !5
  store ptr %query_compress_rev, ptr %query_compress_rev.addr, align 8, !tbaa !5
  store ptr %queryseq, ptr %queryseq.addr, align 8, !tbaa !5
  store i32 %nmismatches_allowed, ptr %nmismatches_allowed.addr, align 4, !tbaa !12
  store ptr %intlistpool, ptr %intlistpool.addr, align 8, !tbaa !5
  store ptr %uintlistpool, ptr %uintlistpool.addr, align 8, !tbaa !5
  store ptr %univcoordlistpool, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  store ptr %listpool, ptr %listpool.addr, align 8, !tbaa !5
  store ptr %transcriptpool, ptr %transcriptpool.addr, align 8, !tbaa !5
  store ptr %vectorpool, ptr %vectorpool.addr, align 8, !tbaa !5
  store ptr %pathpool, ptr %pathpool.addr, align 8, !tbaa !5
  store ptr %hitlistpool, ptr %hitlistpool.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %result_paths) #5
  store ptr null, ptr %result_paths, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %path) #5
  %0 = load ptr, ptr %paths.addr, align 8, !tbaa !5
  store ptr %0, ptr %p, align 8, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load ptr, ptr %p, align 8, !tbaa !5
  %cmp = icmp ne ptr %1, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %p, align 8, !tbaa !5
  %call = call ptr @List_head(ptr noundef %2)
  store ptr %call, ptr %path, align 8, !tbaa !5
  %3 = load ptr, ptr %found_score.addr, align 8, !tbaa !5
  %4 = load ptr, ptr %path, align 8, !tbaa !5
  %5 = load ptr, ptr %query_compress_fwd.addr, align 8, !tbaa !5
  %6 = load ptr, ptr %query_compress_rev.addr, align 8, !tbaa !5
  %call1 = call i32 @Path_eval_nmatches(ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6)
  %7 = load ptr, ptr %result_paths, align 8, !tbaa !5
  %8 = load ptr, ptr %hitlistpool.addr, align 8, !tbaa !5
  %9 = load ptr, ptr %path, align 8, !tbaa !5
  %call2 = call ptr @Hitlist_push(ptr noundef %7, ptr noundef %8, ptr noundef %9)
  store ptr %call2, ptr %result_paths, align 8, !tbaa !5
  %10 = load ptr, ptr @transcriptome, align 8, !tbaa !5
  %cmp3 = icmp ne ptr %10, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %11 = load ptr, ptr %found_score.addr, align 8, !tbaa !5
  %12 = load ptr, ptr %found_transcriptp.addr, align 8, !tbaa !5
  %13 = load ptr, ptr %result_paths, align 8, !tbaa !5
  %14 = load ptr, ptr %path, align 8, !tbaa !5
  %15 = load ptr, ptr %query_compress_fwd.addr, align 8, !tbaa !5
  %16 = load ptr, ptr %query_compress_rev.addr, align 8, !tbaa !5
  %17 = load ptr, ptr %queryseq.addr, align 8, !tbaa !5
  %18 = load i32, ptr %nmismatches_allowed.addr, align 4, !tbaa !12
  %19 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %20 = load ptr, ptr %uintlistpool.addr, align 8, !tbaa !5
  %21 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %22 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %23 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  %24 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %25 = load ptr, ptr %vectorpool.addr, align 8, !tbaa !5
  %26 = load ptr, ptr %hitlistpool.addr, align 8, !tbaa !5
  %call4 = call ptr @try_repairs(ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef %15, ptr noundef %16, ptr noundef %17, i32 noundef %18, ptr noundef %19, ptr noundef %20, ptr noundef %21, ptr noundef %22, ptr noundef %23, ptr noundef %24, ptr noundef %25, ptr noundef %26)
  store ptr %call4, ptr %result_paths, align 8, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %27 = load ptr, ptr %p, align 8, !tbaa !5
  %call5 = call ptr @List_next(ptr noundef %27)
  store ptr %call5, ptr %p, align 8, !tbaa !5
  br label %for.cond, !llvm.loop !91

for.end:                                          ; preds = %for.cond
  %28 = load ptr, ptr %hitlistpool.addr, align 8, !tbaa !5
  call void @Hitlistpool_free_list(ptr noundef %paths.addr, ptr noundef %28)
  %29 = load ptr, ptr %result_paths, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 8, ptr %path) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %result_paths) #5
  ret ptr %29
}

; Function Attrs: nounwind uwtable
define dso_local void @Path_qstart_resolve(ptr noundef %found_score, ptr noundef %path, i32 noundef %low_univdiagonal, i32 noundef %high_univdiagonal, ptr noundef %queryptr, i32 noundef %querylength, ptr noundef %novel_diagonals_alloc, ptr noundef %localdb_alloc, i32 noundef %streamspace_max_alloc, ptr noundef %streamspace_alloc, ptr noundef %streamptr_alloc, ptr noundef %streamsize_alloc, ptr noundef %mergeinfo, ptr noundef %indelinfo, ptr noundef %spliceinfo, ptr noundef %knownsplicing, ptr noundef %query_compress, ptr noundef %query_compress_fwd, ptr noundef %query_compress_rev, i32 noundef %genestrand, i32 noundef %nmismatches_allowed, i32 noundef %max_insertionlen, i32 noundef %max_deletionlen, ptr noundef %intlistpool, ptr noundef %univcoordlistpool, ptr noundef %listpool, ptr noundef %pathpool) #1 {
entry:
  %found_score.addr = alloca ptr, align 8
  %path.addr = alloca ptr, align 8
  %low_univdiagonal.addr = alloca i32, align 4
  %high_univdiagonal.addr = alloca i32, align 4
  %queryptr.addr = alloca ptr, align 8
  %querylength.addr = alloca i32, align 4
  %novel_diagonals_alloc.addr = alloca ptr, align 8
  %localdb_alloc.addr = alloca ptr, align 8
  %streamspace_max_alloc.addr = alloca i32, align 4
  %streamspace_alloc.addr = alloca ptr, align 8
  %streamptr_alloc.addr = alloca ptr, align 8
  %streamsize_alloc.addr = alloca ptr, align 8
  %mergeinfo.addr = alloca ptr, align 8
  %indelinfo.addr = alloca ptr, align 8
  %spliceinfo.addr = alloca ptr, align 8
  %knownsplicing.addr = alloca ptr, align 8
  %query_compress.addr = alloca ptr, align 8
  %query_compress_fwd.addr = alloca ptr, align 8
  %query_compress_rev.addr = alloca ptr, align 8
  %genestrand.addr = alloca i32, align 4
  %nmismatches_allowed.addr = alloca i32, align 4
  %max_insertionlen.addr = alloca i32, align 4
  %max_deletionlen.addr = alloca i32, align 4
  %intlistpool.addr = alloca ptr, align 8
  %univcoordlistpool.addr = alloca ptr, align 8
  %listpool.addr = alloca ptr, align 8
  %pathpool.addr = alloca ptr, align 8
  %new_univdiagonal = alloca i32, align 4
  %univdiagonal = alloca i32, align 4
  %middle_univdiagonal = alloca i32, align 4
  %splice_distance = alloca i32, align 4
  %qstart = alloca i32, align 4
  %pos3 = alloca i32, align 4
  %splice_qpos = alloca i32, align 4
  %splice_qpos_i = alloca i32, align 4
  %splice_qpos_j = alloca i32, align 4
  %nindels = alloca i32, align 4
  %indel_pos = alloca i32, align 4
  %nmismatches_i = alloca i32, align 4
  %nmismatches_middle = alloca i32, align 4
  %nmismatches_j = alloca i32, align 4
  %nmismatches_indel = alloca i32, align 4
  %ref_nmismatches_i = alloca i32, align 4
  %ref_nmismatches_middle = alloca i32, align 4
  %ref_nmismatches_j = alloca i32, align 4
  %ref_nmismatches_indel = alloca i32, align 4
  %donor_prob = alloca double, align 8
  %acceptor_prob = alloca double, align 8
  store ptr %found_score, ptr %found_score.addr, align 8, !tbaa !5
  store ptr %path, ptr %path.addr, align 8, !tbaa !5
  store i32 %low_univdiagonal, ptr %low_univdiagonal.addr, align 4, !tbaa !12
  store i32 %high_univdiagonal, ptr %high_univdiagonal.addr, align 4, !tbaa !12
  store ptr %queryptr, ptr %queryptr.addr, align 8, !tbaa !5
  store i32 %querylength, ptr %querylength.addr, align 4, !tbaa !12
  store ptr %novel_diagonals_alloc, ptr %novel_diagonals_alloc.addr, align 8, !tbaa !5
  store ptr %localdb_alloc, ptr %localdb_alloc.addr, align 8, !tbaa !5
  store i32 %streamspace_max_alloc, ptr %streamspace_max_alloc.addr, align 4, !tbaa !12
  store ptr %streamspace_alloc, ptr %streamspace_alloc.addr, align 8, !tbaa !5
  store ptr %streamptr_alloc, ptr %streamptr_alloc.addr, align 8, !tbaa !5
  store ptr %streamsize_alloc, ptr %streamsize_alloc.addr, align 8, !tbaa !5
  store ptr %mergeinfo, ptr %mergeinfo.addr, align 8, !tbaa !5
  store ptr %indelinfo, ptr %indelinfo.addr, align 8, !tbaa !5
  store ptr %spliceinfo, ptr %spliceinfo.addr, align 8, !tbaa !5
  store ptr %knownsplicing, ptr %knownsplicing.addr, align 8, !tbaa !5
  store ptr %query_compress, ptr %query_compress.addr, align 8, !tbaa !5
  store ptr %query_compress_fwd, ptr %query_compress_fwd.addr, align 8, !tbaa !5
  store ptr %query_compress_rev, ptr %query_compress_rev.addr, align 8, !tbaa !5
  store i32 %genestrand, ptr %genestrand.addr, align 4, !tbaa !12
  store i32 %nmismatches_allowed, ptr %nmismatches_allowed.addr, align 4, !tbaa !12
  store i32 %max_insertionlen, ptr %max_insertionlen.addr, align 4, !tbaa !12
  store i32 %max_deletionlen, ptr %max_deletionlen.addr, align 4, !tbaa !12
  store ptr %intlistpool, ptr %intlistpool.addr, align 8, !tbaa !5
  store ptr %univcoordlistpool, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  store ptr %listpool, ptr %listpool.addr, align 8, !tbaa !5
  store ptr %pathpool, ptr %pathpool.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %new_univdiagonal) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %univdiagonal) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %middle_univdiagonal) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %splice_distance) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %qstart) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %pos3) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %splice_qpos) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %splice_qpos_i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %splice_qpos_j) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %nindels) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %indel_pos) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %nmismatches_i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %nmismatches_middle) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %nmismatches_j) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %nmismatches_indel) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %ref_nmismatches_i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %ref_nmismatches_middle) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %ref_nmismatches_j) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %ref_nmismatches_indel) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %donor_prob) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %acceptor_prob) #5
  %0 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %call = call ptr @Path_expect_fwd(ptr noundef %0)
  %1 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %univdiagonals = getelementptr inbounds %struct.Path_T, ptr %1, i32 0, i32 18
  %2 = load ptr, ptr %univdiagonals, align 8, !tbaa !36
  %call1 = call i32 @Uintlist_head(ptr noundef %2)
  store i32 %call1, ptr %univdiagonal, align 4, !tbaa !12
  %3 = load i32, ptr %high_univdiagonal.addr, align 4, !tbaa !12
  %4 = load i32, ptr %univdiagonal, align 4, !tbaa !12
  %cmp = icmp ugt i32 %3, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, ptr %univdiagonal, align 4, !tbaa !12
  store i32 %5, ptr %high_univdiagonal.addr, align 4, !tbaa !12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, ptr %high_univdiagonal.addr, align 4, !tbaa !12
  %7 = load i32, ptr %low_univdiagonal.addr, align 4, !tbaa !12
  %cmp2 = icmp ule i32 %6, %7
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  br label %if.end48

if.else:                                          ; preds = %if.end
  %8 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %endpoints = getelementptr inbounds %struct.Path_T, ptr %8, i32 0, i32 17
  %9 = load ptr, ptr %endpoints, align 8, !tbaa !40
  %call4 = call i32 @Intlist_head(ptr noundef %9)
  store i32 %call4, ptr %qstart, align 4, !tbaa !12
  %10 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %endpoints5 = getelementptr inbounds %struct.Path_T, ptr %10, i32 0, i32 17
  %11 = load ptr, ptr %endpoints5, align 8, !tbaa !40
  %call6 = call ptr @Intlist_next(ptr noundef %11)
  %call7 = call i32 @Intlist_head(ptr noundef %call6)
  store i32 %call7, ptr %pos3, align 4, !tbaa !12
  %12 = load i32, ptr %qstart, align 4, !tbaa !12
  %13 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %14 = load i32, ptr %low_univdiagonal.addr, align 4, !tbaa !12
  %15 = load i32, ptr %high_univdiagonal.addr, align 4, !tbaa !12
  %16 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %17 = load ptr, ptr %queryptr.addr, align 8, !tbaa !5
  %18 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %plusp = getelementptr inbounds %struct.Path_T, ptr %18, i32 0, i32 10
  %19 = load i8, ptr %plusp, align 8, !tbaa !76
  %20 = load i32, ptr %genestrand.addr, align 4, !tbaa !12
  %21 = load ptr, ptr %novel_diagonals_alloc.addr, align 8, !tbaa !5
  %22 = load ptr, ptr %localdb_alloc.addr, align 8, !tbaa !5
  %23 = load i32, ptr %streamspace_max_alloc.addr, align 4, !tbaa !12
  %24 = load ptr, ptr %streamspace_alloc.addr, align 8, !tbaa !5
  %25 = load ptr, ptr %streamptr_alloc.addr, align 8, !tbaa !5
  %26 = load ptr, ptr %streamsize_alloc.addr, align 8, !tbaa !5
  %27 = load ptr, ptr %mergeinfo.addr, align 8, !tbaa !5
  %28 = load i32, ptr %nmismatches_allowed.addr, align 4, !tbaa !12
  %call8 = call i32 @Spliceends_qstart_resolve(i32 noundef %12, i32 noundef %13, i32 noundef %14, i32 noundef %15, ptr noundef %16, ptr noundef %17, i8 noundef zeroext %19, i32 noundef %20, ptr noundef %21, ptr noundef %22, i32 noundef %23, ptr noundef %24, ptr noundef %25, ptr noundef %26, ptr noundef %27, i32 noundef %28)
  store i32 %call8, ptr %new_univdiagonal, align 4, !tbaa !12
  %cmp9 = icmp ne i32 %call8, 0
  br i1 %cmp9, label %land.lhs.true, label %if.end47

land.lhs.true:                                    ; preds = %if.else
  %29 = load i32, ptr %new_univdiagonal, align 4, !tbaa !12
  %30 = load i32, ptr %univdiagonal, align 4, !tbaa !12
  %31 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %32 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %plusp10 = getelementptr inbounds %struct.Path_T, ptr %32, i32 0, i32 10
  %33 = load i8, ptr %plusp10, align 8, !tbaa !76
  %34 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %call11 = call i32 @Path_chroffset(ptr noundef %34)
  %35 = load i32, ptr %pos3, align 4, !tbaa !12
  %36 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %37 = load ptr, ptr %indelinfo.addr, align 8, !tbaa !5
  %38 = load ptr, ptr %spliceinfo.addr, align 8, !tbaa !5
  %39 = load ptr, ptr %knownsplicing.addr, align 8, !tbaa !5
  %40 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %sensedir = getelementptr inbounds %struct.Path_T, ptr %40, i32 0, i32 12
  %41 = load i32, ptr %sensedir, align 8, !tbaa !75
  %cmp12 = icmp eq i32 %41, 2
  %42 = zext i1 %cmp12 to i64
  %cond = select i1 %cmp12, i32 1, i32 0
  %conv = trunc i32 %cond to i8
  %43 = load i32, ptr %genestrand.addr, align 4, !tbaa !12
  %44 = load i32, ptr %nmismatches_allowed.addr, align 4, !tbaa !12
  %45 = load i32, ptr %max_insertionlen.addr, align 4, !tbaa !12
  %46 = load i32, ptr %max_deletionlen.addr, align 4, !tbaa !12
  %call13 = call i32 @Splice_resolve(ptr noundef %middle_univdiagonal, ptr noundef %splice_qpos_i, ptr noundef %splice_qpos_j, ptr noundef %nindels, ptr noundef %indel_pos, ptr noundef %nmismatches_i, ptr noundef %nmismatches_middle, ptr noundef %nmismatches_j, ptr noundef %nmismatches_indel, ptr noundef %ref_nmismatches_i, ptr noundef %ref_nmismatches_middle, ptr noundef %ref_nmismatches_j, ptr noundef %ref_nmismatches_indel, ptr noundef %donor_prob, ptr noundef %acceptor_prob, i32 noundef %29, i32 noundef %30, ptr noundef %31, i8 noundef zeroext %33, i32 noundef %call11, i32 noundef 0, i32 noundef %35, i32 noundef %36, ptr noundef %37, ptr noundef %38, ptr noundef %39, i8 noundef zeroext %conv, i32 noundef %43, i32 noundef %44, i32 noundef %45, i32 noundef %46, i8 noundef zeroext 0, i8 noundef zeroext 0)
  store i32 %call13, ptr %splice_qpos, align 4, !tbaa !12
  %cmp14 = icmp sgt i32 %call13, 0
  br i1 %cmp14, label %land.lhs.true16, label %if.end47

land.lhs.true16:                                  ; preds = %land.lhs.true
  %47 = load i32, ptr %nindels, align 4, !tbaa !12
  %cmp17 = icmp eq i32 %47, 0
  br i1 %cmp17, label %if.then19, label %if.end47

if.then19:                                        ; preds = %land.lhs.true16
  %48 = load i32, ptr %univdiagonal, align 4, !tbaa !12
  %49 = load i32, ptr %new_univdiagonal, align 4, !tbaa !12
  %sub = sub i32 %48, %49
  store i32 %sub, ptr %splice_distance, align 4, !tbaa !12
  %cmp20 = icmp eq i32 %sub, 0
  br i1 %cmp20, label %if.then22, label %if.else25

if.then22:                                        ; preds = %if.then19
  %50 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %endpoints23 = getelementptr inbounds %struct.Path_T, ptr %50, i32 0, i32 17
  %51 = load ptr, ptr %endpoints23, align 8, !tbaa !40
  call void @Intlist_head_set(ptr noundef %51, i32 noundef 0)
  %52 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %nmismatches = getelementptr inbounds %struct.Path_T, ptr %52, i32 0, i32 19
  %53 = load ptr, ptr %nmismatches, align 8, !tbaa !41
  %54 = load i32, ptr %nmismatches_i, align 4, !tbaa !12
  %55 = load i32, ptr %nmismatches_j, align 4, !tbaa !12
  %add = add nsw i32 %54, %55
  call void @Intlist_head_set(ptr noundef %53, i32 noundef %add)
  %56 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %ref_nmismatches = getelementptr inbounds %struct.Path_T, ptr %56, i32 0, i32 20
  %57 = load ptr, ptr %ref_nmismatches, align 8, !tbaa !42
  %58 = load i32, ptr %ref_nmismatches_i, align 4, !tbaa !12
  %59 = load i32, ptr %ref_nmismatches_j, align 4, !tbaa !12
  %add24 = add nsw i32 %58, %59
  call void @Intlist_head_set(ptr noundef %57, i32 noundef %add24)
  br label %if.end45

if.else25:                                        ; preds = %if.then19
  %60 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %endpoints26 = getelementptr inbounds %struct.Path_T, ptr %60, i32 0, i32 17
  %61 = load ptr, ptr %endpoints26, align 8, !tbaa !40
  %62 = load i32, ptr %splice_qpos, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %61, i32 noundef %62)
  %63 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %endpoints27 = getelementptr inbounds %struct.Path_T, ptr %63, i32 0, i32 17
  %64 = load ptr, ptr %endpoints27, align 8, !tbaa !40
  %65 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %call28 = call ptr @Intlistpool_push(ptr noundef %64, ptr noundef %65, i32 noundef 0)
  %66 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %endpoints29 = getelementptr inbounds %struct.Path_T, ptr %66, i32 0, i32 17
  store ptr %call28, ptr %endpoints29, align 8, !tbaa !40
  %67 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %junctions = getelementptr inbounds %struct.Path_T, ptr %67, i32 0, i32 21
  %68 = load ptr, ptr %junctions, align 8, !tbaa !43
  %69 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %70 = load i32, ptr %splice_distance, align 4, !tbaa !12
  %71 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %sensedir30 = getelementptr inbounds %struct.Path_T, ptr %71, i32 0, i32 12
  %72 = load i32, ptr %sensedir30, align 8, !tbaa !75
  %73 = load double, ptr %donor_prob, align 8, !tbaa !44
  %74 = load double, ptr %acceptor_prob, align 8, !tbaa !44
  %75 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %call31 = call ptr @Junction_new_splice(i32 noundef %70, i32 noundef %72, double noundef %73, double noundef %74, ptr noundef %75)
  %call32 = call ptr @Listpool_push(ptr noundef %68, ptr noundef %69, ptr noundef %call31)
  %76 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %junctions33 = getelementptr inbounds %struct.Path_T, ptr %76, i32 0, i32 21
  store ptr %call32, ptr %junctions33, align 8, !tbaa !43
  %77 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %nmismatches34 = getelementptr inbounds %struct.Path_T, ptr %77, i32 0, i32 19
  %78 = load ptr, ptr %nmismatches34, align 8, !tbaa !41
  %79 = load i32, ptr %nmismatches_j, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %78, i32 noundef %79)
  %80 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %ref_nmismatches35 = getelementptr inbounds %struct.Path_T, ptr %80, i32 0, i32 20
  %81 = load ptr, ptr %ref_nmismatches35, align 8, !tbaa !42
  %82 = load i32, ptr %ref_nmismatches_j, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %81, i32 noundef %82)
  %83 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %nmismatches36 = getelementptr inbounds %struct.Path_T, ptr %83, i32 0, i32 19
  %84 = load ptr, ptr %nmismatches36, align 8, !tbaa !41
  %85 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %86 = load i32, ptr %nmismatches_i, align 4, !tbaa !12
  %call37 = call ptr @Intlistpool_push(ptr noundef %84, ptr noundef %85, i32 noundef %86)
  %87 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %nmismatches38 = getelementptr inbounds %struct.Path_T, ptr %87, i32 0, i32 19
  store ptr %call37, ptr %nmismatches38, align 8, !tbaa !41
  %88 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %ref_nmismatches39 = getelementptr inbounds %struct.Path_T, ptr %88, i32 0, i32 20
  %89 = load ptr, ptr %ref_nmismatches39, align 8, !tbaa !42
  %90 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %91 = load i32, ptr %ref_nmismatches_i, align 4, !tbaa !12
  %call40 = call ptr @Intlistpool_push(ptr noundef %89, ptr noundef %90, i32 noundef %91)
  %92 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %ref_nmismatches41 = getelementptr inbounds %struct.Path_T, ptr %92, i32 0, i32 20
  store ptr %call40, ptr %ref_nmismatches41, align 8, !tbaa !42
  %93 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %univdiagonals42 = getelementptr inbounds %struct.Path_T, ptr %93, i32 0, i32 18
  %94 = load ptr, ptr %univdiagonals42, align 8, !tbaa !36
  %95 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %96 = load i32, ptr %new_univdiagonal, align 4, !tbaa !12
  %call43 = call ptr @Uintlistpool_push(ptr noundef %94, ptr noundef %95, i32 noundef %96)
  %97 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %univdiagonals44 = getelementptr inbounds %struct.Path_T, ptr %97, i32 0, i32 18
  store ptr %call43, ptr %univdiagonals44, align 8, !tbaa !36
  br label %if.end45

if.end45:                                         ; preds = %if.else25, %if.then22
  %98 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %splice5p = getelementptr inbounds %struct.Path_T, ptr %98, i32 0, i32 22
  store i8 0, ptr %splice5p, align 8, !tbaa !55
  %99 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %splicetype5 = getelementptr inbounds %struct.Path_T, ptr %99, i32 0, i32 24
  store i32 0, ptr %splicetype5, align 4, !tbaa !56
  %100 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %ambig_prob_5 = getelementptr inbounds %struct.Path_T, ptr %100, i32 0, i32 26
  store double 0.000000e+00, ptr %ambig_prob_5, align 8, !tbaa !57
  %101 = load ptr, ptr %found_score.addr, align 8, !tbaa !5
  %102 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %103 = load ptr, ptr %query_compress_fwd.addr, align 8, !tbaa !5
  %104 = load ptr, ptr %query_compress_rev.addr, align 8, !tbaa !5
  %call46 = call i32 @Path_eval_nmatches(ptr noundef %101, ptr noundef %102, ptr noundef %103, ptr noundef %104)
  br label %if.end47

if.end47:                                         ; preds = %if.end45, %land.lhs.true16, %land.lhs.true, %if.else
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %if.then3
  call void @llvm.lifetime.end.p0(i64 8, ptr %acceptor_prob) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %donor_prob) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %ref_nmismatches_indel) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %ref_nmismatches_j) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %ref_nmismatches_middle) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %ref_nmismatches_i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %nmismatches_indel) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %nmismatches_j) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %nmismatches_middle) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %nmismatches_i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %indel_pos) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %nindels) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %splice_qpos_j) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %splice_qpos_i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %splice_qpos) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %pos3) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %qstart) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %splice_distance) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %middle_univdiagonal) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %univdiagonal) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %new_univdiagonal) #5
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @Uintlist_head(ptr noundef %list) #0 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !5
  %first = getelementptr inbounds %struct.Uintlist_T, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %first, align 8, !tbaa !92
  ret i32 %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @Intlist_head(ptr noundef %list) #0 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !5
  %first = getelementptr inbounds %struct.Intlist_T, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %first, align 8, !tbaa !93
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
  %2 = load ptr, ptr %rest, align 8, !tbaa !82
  store ptr %2, ptr %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then
  %3 = load ptr, ptr %retval, align 8
  ret ptr %3
}

declare i32 @Spliceends_qstart_resolve(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @Path_chroffset(ptr noundef %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %chroffset = getelementptr inbounds %struct.Path_T, ptr %0, i32 0, i32 15
  %1 = load i32, ptr %chroffset, align 4, !tbaa !79
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define dso_local void @Path_qend_resolve(ptr noundef %found_score, ptr noundef %path, i32 noundef %low_univdiagonal, i32 noundef %high_univdiagonal, ptr noundef %queryptr, i32 noundef %querylength, ptr noundef %novel_diagonals_alloc, ptr noundef %localdb_alloc, i32 noundef %streamspace_max_alloc, ptr noundef %streamspace_alloc, ptr noundef %streamptr_alloc, ptr noundef %streamsize_alloc, ptr noundef %mergeinfo, ptr noundef %indelinfo, ptr noundef %spliceinfo, ptr noundef %knownsplicing, ptr noundef %query_compress, ptr noundef %query_compress_fwd, ptr noundef %query_compress_rev, i32 noundef %genestrand, i32 noundef %nmismatches_allowed, i32 noundef %max_insertionlen, i32 noundef %max_deletionlen, ptr noundef %intlistpool, ptr noundef %univcoordlistpool, ptr noundef %listpool, ptr noundef %pathpool) #1 {
entry:
  %found_score.addr = alloca ptr, align 8
  %path.addr = alloca ptr, align 8
  %low_univdiagonal.addr = alloca i32, align 4
  %high_univdiagonal.addr = alloca i32, align 4
  %queryptr.addr = alloca ptr, align 8
  %querylength.addr = alloca i32, align 4
  %novel_diagonals_alloc.addr = alloca ptr, align 8
  %localdb_alloc.addr = alloca ptr, align 8
  %streamspace_max_alloc.addr = alloca i32, align 4
  %streamspace_alloc.addr = alloca ptr, align 8
  %streamptr_alloc.addr = alloca ptr, align 8
  %streamsize_alloc.addr = alloca ptr, align 8
  %mergeinfo.addr = alloca ptr, align 8
  %indelinfo.addr = alloca ptr, align 8
  %spliceinfo.addr = alloca ptr, align 8
  %knownsplicing.addr = alloca ptr, align 8
  %query_compress.addr = alloca ptr, align 8
  %query_compress_fwd.addr = alloca ptr, align 8
  %query_compress_rev.addr = alloca ptr, align 8
  %genestrand.addr = alloca i32, align 4
  %nmismatches_allowed.addr = alloca i32, align 4
  %max_insertionlen.addr = alloca i32, align 4
  %max_deletionlen.addr = alloca i32, align 4
  %intlistpool.addr = alloca ptr, align 8
  %univcoordlistpool.addr = alloca ptr, align 8
  %listpool.addr = alloca ptr, align 8
  %pathpool.addr = alloca ptr, align 8
  %new_univdiagonal = alloca i32, align 4
  %univdiagonal = alloca i32, align 4
  %middle_univdiagonal = alloca i32, align 4
  %splice_distance = alloca i32, align 4
  %qend = alloca i32, align 4
  %pos5 = alloca i32, align 4
  %splice_qpos = alloca i32, align 4
  %splice_qpos_i = alloca i32, align 4
  %splice_qpos_j = alloca i32, align 4
  %nindels = alloca i32, align 4
  %indel_pos = alloca i32, align 4
  %nmismatches_i = alloca i32, align 4
  %nmismatches_middle = alloca i32, align 4
  %nmismatches_j = alloca i32, align 4
  %nmismatches_indel = alloca i32, align 4
  %ref_nmismatches_i = alloca i32, align 4
  %ref_nmismatches_middle = alloca i32, align 4
  %ref_nmismatches_j = alloca i32, align 4
  %ref_nmismatches_indel = alloca i32, align 4
  %donor_prob = alloca double, align 8
  %acceptor_prob = alloca double, align 8
  store ptr %found_score, ptr %found_score.addr, align 8, !tbaa !5
  store ptr %path, ptr %path.addr, align 8, !tbaa !5
  store i32 %low_univdiagonal, ptr %low_univdiagonal.addr, align 4, !tbaa !12
  store i32 %high_univdiagonal, ptr %high_univdiagonal.addr, align 4, !tbaa !12
  store ptr %queryptr, ptr %queryptr.addr, align 8, !tbaa !5
  store i32 %querylength, ptr %querylength.addr, align 4, !tbaa !12
  store ptr %novel_diagonals_alloc, ptr %novel_diagonals_alloc.addr, align 8, !tbaa !5
  store ptr %localdb_alloc, ptr %localdb_alloc.addr, align 8, !tbaa !5
  store i32 %streamspace_max_alloc, ptr %streamspace_max_alloc.addr, align 4, !tbaa !12
  store ptr %streamspace_alloc, ptr %streamspace_alloc.addr, align 8, !tbaa !5
  store ptr %streamptr_alloc, ptr %streamptr_alloc.addr, align 8, !tbaa !5
  store ptr %streamsize_alloc, ptr %streamsize_alloc.addr, align 8, !tbaa !5
  store ptr %mergeinfo, ptr %mergeinfo.addr, align 8, !tbaa !5
  store ptr %indelinfo, ptr %indelinfo.addr, align 8, !tbaa !5
  store ptr %spliceinfo, ptr %spliceinfo.addr, align 8, !tbaa !5
  store ptr %knownsplicing, ptr %knownsplicing.addr, align 8, !tbaa !5
  store ptr %query_compress, ptr %query_compress.addr, align 8, !tbaa !5
  store ptr %query_compress_fwd, ptr %query_compress_fwd.addr, align 8, !tbaa !5
  store ptr %query_compress_rev, ptr %query_compress_rev.addr, align 8, !tbaa !5
  store i32 %genestrand, ptr %genestrand.addr, align 4, !tbaa !12
  store i32 %nmismatches_allowed, ptr %nmismatches_allowed.addr, align 4, !tbaa !12
  store i32 %max_insertionlen, ptr %max_insertionlen.addr, align 4, !tbaa !12
  store i32 %max_deletionlen, ptr %max_deletionlen.addr, align 4, !tbaa !12
  store ptr %intlistpool, ptr %intlistpool.addr, align 8, !tbaa !5
  store ptr %univcoordlistpool, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  store ptr %listpool, ptr %listpool.addr, align 8, !tbaa !5
  store ptr %pathpool, ptr %pathpool.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %new_univdiagonal) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %univdiagonal) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %middle_univdiagonal) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %splice_distance) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %qend) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %pos5) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %splice_qpos) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %splice_qpos_i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %splice_qpos_j) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %nindels) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %indel_pos) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %nmismatches_i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %nmismatches_middle) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %nmismatches_j) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %nmismatches_indel) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %ref_nmismatches_i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %ref_nmismatches_middle) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %ref_nmismatches_j) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %ref_nmismatches_indel) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %donor_prob) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %acceptor_prob) #5
  %0 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %call = call ptr @Path_expect_fwd(ptr noundef %0)
  %1 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %univdiagonals = getelementptr inbounds %struct.Path_T, ptr %1, i32 0, i32 18
  %2 = load ptr, ptr %univdiagonals, align 8, !tbaa !36
  %call1 = call i32 @Uintlist_last_value(ptr noundef %2)
  store i32 %call1, ptr %univdiagonal, align 4, !tbaa !12
  %3 = load i32, ptr %low_univdiagonal.addr, align 4, !tbaa !12
  %4 = load i32, ptr %univdiagonal, align 4, !tbaa !12
  %cmp = icmp ult i32 %3, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, ptr %univdiagonal, align 4, !tbaa !12
  store i32 %5, ptr %low_univdiagonal.addr, align 4, !tbaa !12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, ptr %high_univdiagonal.addr, align 4, !tbaa !12
  %7 = load i32, ptr %low_univdiagonal.addr, align 4, !tbaa !12
  %cmp2 = icmp ule i32 %6, %7
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  br label %if.end57

if.else:                                          ; preds = %if.end
  %8 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %endpoints = getelementptr inbounds %struct.Path_T, ptr %8, i32 0, i32 17
  %9 = load ptr, ptr %endpoints, align 8, !tbaa !40
  %call4 = call i32 @Intlist_last_value(ptr noundef %9)
  store i32 %call4, ptr %qend, align 4, !tbaa !12
  %10 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %endpoints5 = getelementptr inbounds %struct.Path_T, ptr %10, i32 0, i32 17
  %11 = load ptr, ptr %endpoints5, align 8, !tbaa !40
  %call6 = call i32 @Intlist_penultimate_value(ptr noundef %11)
  store i32 %call6, ptr %pos5, align 4, !tbaa !12
  %12 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %junctions = getelementptr inbounds %struct.Path_T, ptr %12, i32 0, i32 21
  %13 = load ptr, ptr %junctions, align 8, !tbaa !43
  %cmp7 = icmp ne ptr %13, null
  br i1 %cmp7, label %if.then8, label %if.end12

if.then8:                                         ; preds = %if.else
  %14 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %junctions9 = getelementptr inbounds %struct.Path_T, ptr %14, i32 0, i32 21
  %15 = load ptr, ptr %junctions9, align 8, !tbaa !43
  %call10 = call ptr @List_last_value(ptr noundef %15, ptr noundef null)
  %call11 = call i32 @Junction_ninserts(ptr noundef %call10)
  %16 = load i32, ptr %pos5, align 4, !tbaa !12
  %add = add nsw i32 %16, %call11
  store i32 %add, ptr %pos5, align 4, !tbaa !12
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %if.else
  %17 = load i32, ptr %qend, align 4, !tbaa !12
  %18 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %19 = load i32, ptr %low_univdiagonal.addr, align 4, !tbaa !12
  %20 = load i32, ptr %high_univdiagonal.addr, align 4, !tbaa !12
  %21 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %22 = load ptr, ptr %queryptr.addr, align 8, !tbaa !5
  %23 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %plusp = getelementptr inbounds %struct.Path_T, ptr %23, i32 0, i32 10
  %24 = load i8, ptr %plusp, align 8, !tbaa !76
  %25 = load i32, ptr %genestrand.addr, align 4, !tbaa !12
  %26 = load ptr, ptr %novel_diagonals_alloc.addr, align 8, !tbaa !5
  %27 = load ptr, ptr %localdb_alloc.addr, align 8, !tbaa !5
  %28 = load i32, ptr %streamspace_max_alloc.addr, align 4, !tbaa !12
  %29 = load ptr, ptr %streamspace_alloc.addr, align 8, !tbaa !5
  %30 = load ptr, ptr %streamptr_alloc.addr, align 8, !tbaa !5
  %31 = load ptr, ptr %streamsize_alloc.addr, align 8, !tbaa !5
  %32 = load ptr, ptr %mergeinfo.addr, align 8, !tbaa !5
  %33 = load i32, ptr %nmismatches_allowed.addr, align 4, !tbaa !12
  %call13 = call i32 @Spliceends_qend_resolve(i32 noundef %17, i32 noundef %18, i32 noundef %19, i32 noundef %20, ptr noundef %21, ptr noundef %22, i8 noundef zeroext %24, i32 noundef %25, ptr noundef %26, ptr noundef %27, i32 noundef %28, ptr noundef %29, ptr noundef %30, ptr noundef %31, ptr noundef %32, i32 noundef %33)
  store i32 %call13, ptr %new_univdiagonal, align 4, !tbaa !12
  %cmp14 = icmp ne i32 %call13, 0
  br i1 %cmp14, label %land.lhs.true, label %if.end56

land.lhs.true:                                    ; preds = %if.end12
  %34 = load i32, ptr %univdiagonal, align 4, !tbaa !12
  %35 = load i32, ptr %new_univdiagonal, align 4, !tbaa !12
  %36 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %37 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %plusp15 = getelementptr inbounds %struct.Path_T, ptr %37, i32 0, i32 10
  %38 = load i8, ptr %plusp15, align 8, !tbaa !76
  %39 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %call16 = call i32 @Path_chroffset(ptr noundef %39)
  %40 = load i32, ptr %pos5, align 4, !tbaa !12
  %41 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %42 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %43 = load ptr, ptr %indelinfo.addr, align 8, !tbaa !5
  %44 = load ptr, ptr %spliceinfo.addr, align 8, !tbaa !5
  %45 = load ptr, ptr %knownsplicing.addr, align 8, !tbaa !5
  %46 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %sensedir = getelementptr inbounds %struct.Path_T, ptr %46, i32 0, i32 12
  %47 = load i32, ptr %sensedir, align 8, !tbaa !75
  %cmp17 = icmp eq i32 %47, 2
  %48 = zext i1 %cmp17 to i64
  %cond = select i1 %cmp17, i32 1, i32 0
  %conv = trunc i32 %cond to i8
  %49 = load i32, ptr %genestrand.addr, align 4, !tbaa !12
  %50 = load i32, ptr %nmismatches_allowed.addr, align 4, !tbaa !12
  %51 = load i32, ptr %max_insertionlen.addr, align 4, !tbaa !12
  %52 = load i32, ptr %max_deletionlen.addr, align 4, !tbaa !12
  %call18 = call i32 @Splice_resolve(ptr noundef %middle_univdiagonal, ptr noundef %splice_qpos_i, ptr noundef %splice_qpos_j, ptr noundef %nindels, ptr noundef %indel_pos, ptr noundef %nmismatches_i, ptr noundef %nmismatches_middle, ptr noundef %nmismatches_j, ptr noundef %nmismatches_indel, ptr noundef %ref_nmismatches_i, ptr noundef %ref_nmismatches_middle, ptr noundef %ref_nmismatches_j, ptr noundef %ref_nmismatches_indel, ptr noundef %donor_prob, ptr noundef %acceptor_prob, i32 noundef %34, i32 noundef %35, ptr noundef %36, i8 noundef zeroext %38, i32 noundef %call16, i32 noundef %40, i32 noundef %41, i32 noundef %42, ptr noundef %43, ptr noundef %44, ptr noundef %45, i8 noundef zeroext %conv, i32 noundef %49, i32 noundef %50, i32 noundef %51, i32 noundef %52, i8 noundef zeroext 0, i8 noundef zeroext 0)
  store i32 %call18, ptr %splice_qpos, align 4, !tbaa !12
  %cmp19 = icmp sgt i32 %call18, 0
  br i1 %cmp19, label %land.lhs.true21, label %if.end56

land.lhs.true21:                                  ; preds = %land.lhs.true
  %53 = load i32, ptr %nindels, align 4, !tbaa !12
  %cmp22 = icmp eq i32 %53, 0
  br i1 %cmp22, label %if.then24, label %if.end56

if.then24:                                        ; preds = %land.lhs.true21
  %54 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %call25 = call ptr @Path_reverse(ptr noundef %54, i8 noundef zeroext 0)
  %55 = load i32, ptr %new_univdiagonal, align 4, !tbaa !12
  %56 = load i32, ptr %univdiagonal, align 4, !tbaa !12
  %sub = sub i32 %55, %56
  store i32 %sub, ptr %splice_distance, align 4, !tbaa !12
  %cmp26 = icmp eq i32 %sub, 0
  br i1 %cmp26, label %if.then28, label %if.else32

if.then28:                                        ; preds = %if.then24
  %57 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %endpoints29 = getelementptr inbounds %struct.Path_T, ptr %57, i32 0, i32 17
  %58 = load ptr, ptr %endpoints29, align 8, !tbaa !40
  %59 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %58, i32 noundef %59)
  %60 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %nmismatches = getelementptr inbounds %struct.Path_T, ptr %60, i32 0, i32 19
  %61 = load ptr, ptr %nmismatches, align 8, !tbaa !41
  %62 = load i32, ptr %nmismatches_i, align 4, !tbaa !12
  %63 = load i32, ptr %nmismatches_j, align 4, !tbaa !12
  %add30 = add nsw i32 %62, %63
  call void @Intlist_head_set(ptr noundef %61, i32 noundef %add30)
  %64 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %ref_nmismatches = getelementptr inbounds %struct.Path_T, ptr %64, i32 0, i32 20
  %65 = load ptr, ptr %ref_nmismatches, align 8, !tbaa !42
  %66 = load i32, ptr %ref_nmismatches_i, align 4, !tbaa !12
  %67 = load i32, ptr %ref_nmismatches_j, align 4, !tbaa !12
  %add31 = add nsw i32 %66, %67
  call void @Intlist_head_set(ptr noundef %65, i32 noundef %add31)
  br label %if.end53

if.else32:                                        ; preds = %if.then24
  %68 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %endpoints33 = getelementptr inbounds %struct.Path_T, ptr %68, i32 0, i32 17
  %69 = load ptr, ptr %endpoints33, align 8, !tbaa !40
  %70 = load i32, ptr %splice_qpos, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %69, i32 noundef %70)
  %71 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %endpoints34 = getelementptr inbounds %struct.Path_T, ptr %71, i32 0, i32 17
  %72 = load ptr, ptr %endpoints34, align 8, !tbaa !40
  %73 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %74 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %call35 = call ptr @Intlistpool_push(ptr noundef %72, ptr noundef %73, i32 noundef %74)
  %75 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %endpoints36 = getelementptr inbounds %struct.Path_T, ptr %75, i32 0, i32 17
  store ptr %call35, ptr %endpoints36, align 8, !tbaa !40
  %76 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %junctions37 = getelementptr inbounds %struct.Path_T, ptr %76, i32 0, i32 21
  %77 = load ptr, ptr %junctions37, align 8, !tbaa !43
  %78 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %79 = load i32, ptr %splice_distance, align 4, !tbaa !12
  %80 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %sensedir38 = getelementptr inbounds %struct.Path_T, ptr %80, i32 0, i32 12
  %81 = load i32, ptr %sensedir38, align 8, !tbaa !75
  %82 = load double, ptr %donor_prob, align 8, !tbaa !44
  %83 = load double, ptr %acceptor_prob, align 8, !tbaa !44
  %84 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %call39 = call ptr @Junction_new_splice(i32 noundef %79, i32 noundef %81, double noundef %82, double noundef %83, ptr noundef %84)
  %call40 = call ptr @Listpool_push(ptr noundef %77, ptr noundef %78, ptr noundef %call39)
  %85 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %junctions41 = getelementptr inbounds %struct.Path_T, ptr %85, i32 0, i32 21
  store ptr %call40, ptr %junctions41, align 8, !tbaa !43
  %86 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %nmismatches42 = getelementptr inbounds %struct.Path_T, ptr %86, i32 0, i32 19
  %87 = load ptr, ptr %nmismatches42, align 8, !tbaa !41
  %88 = load i32, ptr %nmismatches_i, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %87, i32 noundef %88)
  %89 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %ref_nmismatches43 = getelementptr inbounds %struct.Path_T, ptr %89, i32 0, i32 20
  %90 = load ptr, ptr %ref_nmismatches43, align 8, !tbaa !42
  %91 = load i32, ptr %ref_nmismatches_i, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %90, i32 noundef %91)
  %92 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %nmismatches44 = getelementptr inbounds %struct.Path_T, ptr %92, i32 0, i32 19
  %93 = load ptr, ptr %nmismatches44, align 8, !tbaa !41
  %94 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %95 = load i32, ptr %nmismatches_j, align 4, !tbaa !12
  %call45 = call ptr @Intlistpool_push(ptr noundef %93, ptr noundef %94, i32 noundef %95)
  %96 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %nmismatches46 = getelementptr inbounds %struct.Path_T, ptr %96, i32 0, i32 19
  store ptr %call45, ptr %nmismatches46, align 8, !tbaa !41
  %97 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %ref_nmismatches47 = getelementptr inbounds %struct.Path_T, ptr %97, i32 0, i32 20
  %98 = load ptr, ptr %ref_nmismatches47, align 8, !tbaa !42
  %99 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %100 = load i32, ptr %ref_nmismatches_j, align 4, !tbaa !12
  %call48 = call ptr @Intlistpool_push(ptr noundef %98, ptr noundef %99, i32 noundef %100)
  %101 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %ref_nmismatches49 = getelementptr inbounds %struct.Path_T, ptr %101, i32 0, i32 20
  store ptr %call48, ptr %ref_nmismatches49, align 8, !tbaa !42
  %102 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %univdiagonals50 = getelementptr inbounds %struct.Path_T, ptr %102, i32 0, i32 18
  %103 = load ptr, ptr %univdiagonals50, align 8, !tbaa !36
  %104 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %105 = load i32, ptr %new_univdiagonal, align 4, !tbaa !12
  %call51 = call ptr @Uintlistpool_push(ptr noundef %103, ptr noundef %104, i32 noundef %105)
  %106 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %univdiagonals52 = getelementptr inbounds %struct.Path_T, ptr %106, i32 0, i32 18
  store ptr %call51, ptr %univdiagonals52, align 8, !tbaa !36
  br label %if.end53

if.end53:                                         ; preds = %if.else32, %if.then28
  %107 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %call54 = call ptr @Path_reverse(ptr noundef %107, i8 noundef zeroext 1)
  %108 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %splice3p = getelementptr inbounds %struct.Path_T, ptr %108, i32 0, i32 23
  store i8 0, ptr %splice3p, align 1, !tbaa !62
  %109 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %splicetype3 = getelementptr inbounds %struct.Path_T, ptr %109, i32 0, i32 25
  store i32 0, ptr %splicetype3, align 8, !tbaa !63
  %110 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %ambig_prob_3 = getelementptr inbounds %struct.Path_T, ptr %110, i32 0, i32 27
  store double 0.000000e+00, ptr %ambig_prob_3, align 8, !tbaa !64
  %111 = load ptr, ptr %found_score.addr, align 8, !tbaa !5
  %112 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %113 = load ptr, ptr %query_compress_fwd.addr, align 8, !tbaa !5
  %114 = load ptr, ptr %query_compress_rev.addr, align 8, !tbaa !5
  %call55 = call i32 @Path_eval_nmatches(ptr noundef %111, ptr noundef %112, ptr noundef %113, ptr noundef %114)
  br label %if.end56

if.end56:                                         ; preds = %if.end53, %land.lhs.true21, %land.lhs.true, %if.end12
  br label %if.end57

if.end57:                                         ; preds = %if.end56, %if.then3
  call void @llvm.lifetime.end.p0(i64 8, ptr %acceptor_prob) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %donor_prob) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %ref_nmismatches_indel) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %ref_nmismatches_j) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %ref_nmismatches_middle) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %ref_nmismatches_i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %nmismatches_indel) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %nmismatches_j) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %nmismatches_middle) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %nmismatches_i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %indel_pos) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %nindels) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %splice_qpos_j) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %splice_qpos_i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %splice_qpos) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %pos5) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %qend) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %splice_distance) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %middle_univdiagonal) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %univdiagonal) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %new_univdiagonal) #5
  ret void
}

declare i32 @Uintlist_last_value(ptr noundef) #3

declare i32 @Intlist_last_value(ptr noundef) #3

declare i32 @Intlist_penultimate_value(ptr noundef) #3

declare i32 @Junction_ninserts(ptr noundef) #3

declare ptr @List_last_value(ptr noundef, ptr noundef) #3

declare i32 @Spliceends_qend_resolve(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nounwind uwtable
define dso_local void @Path_solve_setup(ptr noundef %circularp_in, ptr noundef %transcriptome_in, ptr noundef %genomebits_in, ptr noundef %genomebits_alt_in, i32 noundef %genomelength_in, ptr noundef %localdb_in, i32 noundef %min_intronlength_in, i8 noundef zeroext %novelsplicingp_in, i8 noundef zeroext %knownsplicingp_in) #1 {
entry:
  %circularp_in.addr = alloca ptr, align 8
  %transcriptome_in.addr = alloca ptr, align 8
  %genomebits_in.addr = alloca ptr, align 8
  %genomebits_alt_in.addr = alloca ptr, align 8
  %genomelength_in.addr = alloca i32, align 4
  %localdb_in.addr = alloca ptr, align 8
  %min_intronlength_in.addr = alloca i32, align 4
  %novelsplicingp_in.addr = alloca i8, align 1
  %knownsplicingp_in.addr = alloca i8, align 1
  store ptr %circularp_in, ptr %circularp_in.addr, align 8, !tbaa !5
  store ptr %transcriptome_in, ptr %transcriptome_in.addr, align 8, !tbaa !5
  store ptr %genomebits_in, ptr %genomebits_in.addr, align 8, !tbaa !5
  store ptr %genomebits_alt_in, ptr %genomebits_alt_in.addr, align 8, !tbaa !5
  store i32 %genomelength_in, ptr %genomelength_in.addr, align 4, !tbaa !12
  store ptr %localdb_in, ptr %localdb_in.addr, align 8, !tbaa !5
  store i32 %min_intronlength_in, ptr %min_intronlength_in.addr, align 4, !tbaa !12
  store i8 %novelsplicingp_in, ptr %novelsplicingp_in.addr, align 1, !tbaa !14
  store i8 %knownsplicingp_in, ptr %knownsplicingp_in.addr, align 1, !tbaa !14
  %0 = load ptr, ptr %circularp_in.addr, align 8, !tbaa !5
  store ptr %0, ptr @circularp, align 8, !tbaa !5
  %1 = load ptr, ptr %transcriptome_in.addr, align 8, !tbaa !5
  store ptr %1, ptr @transcriptome, align 8, !tbaa !5
  %2 = load ptr, ptr %genomebits_in.addr, align 8, !tbaa !5
  store ptr %2, ptr @genomebits, align 8, !tbaa !5
  %3 = load ptr, ptr %genomebits_alt_in.addr, align 8, !tbaa !5
  store ptr %3, ptr @genomebits_alt, align 8, !tbaa !5
  %4 = load i32, ptr %genomelength_in.addr, align 4, !tbaa !12
  store i32 %4, ptr @genomelength, align 4, !tbaa !12
  %5 = load ptr, ptr %localdb_in.addr, align 8, !tbaa !5
  store ptr %5, ptr @localdb, align 8, !tbaa !5
  %6 = load i32, ptr %min_intronlength_in.addr, align 4, !tbaa !12
  store i32 %6, ptr @min_intronlength, align 4, !tbaa !12
  %7 = load i8, ptr %novelsplicingp_in.addr, align 1, !tbaa !14
  store i8 %7, ptr @novelsplicingp, align 1, !tbaa !14
  %8 = load i8, ptr %novelsplicingp_in.addr, align 1, !tbaa !14
  %conv = zext i8 %8 to i32
  %cmp = icmp eq i32 %conv, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %9 = load i8, ptr %knownsplicingp_in.addr, align 1, !tbaa !14
  %conv2 = zext i8 %9 to i32
  %cmp3 = icmp eq i32 %conv2, 1
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i8 1, ptr @splicingp, align 1, !tbaa !14
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  store i8 0, ptr @splicingp, align 1, !tbaa !14
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare ptr @Mem_alloc(i64 noundef, ptr noundef, i32 noundef) #3

declare void @Mem_free(ptr noundef, ptr noundef, i32 noundef) #3

declare ptr @Path_copy_5(ptr noundef, i8 noundef zeroext, i32 noundef, double noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

declare i32 @Path_exon_origin(ptr noundef) #3

declare i32 @Spliceends_trimmed_qstarts(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) #3

declare ptr @List_append(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal ptr @multiadd_splice_qstarts(ptr noundef %path, i32 noundef %univdiagonal, i32 noundef %common_splice_qpos, double noundef %common_splice_prob, ptr noundef %distal_splice_positions, ptr noundef %distal_nmismatches, ptr noundef %distal_probs, i32 noundef %npartners, i32 noundef %chrnum, i32 noundef %chroffset, i32 noundef %querylength, ptr noundef %query_compress, ptr noundef %queryptr, i8 noundef zeroext %plusp, i32 noundef %genestrand, ptr noundef %knownsplicing, ptr noundef %spliceendsgen, ptr noundef %mismatch_positions_alloc, ptr noundef %intlistpool, ptr noundef %univcoordlistpool, ptr noundef %listpool, ptr noundef %hitlistpool, ptr noundef %pathpool, ptr noundef %vectorpool, i32 noundef %found_sensedir) #1 {
entry:
  %retval = alloca ptr, align 8
  %path.addr = alloca ptr, align 8
  %univdiagonal.addr = alloca i32, align 4
  %common_splice_qpos.addr = alloca i32, align 4
  %common_splice_prob.addr = alloca double, align 8
  %distal_splice_positions.addr = alloca ptr, align 8
  %distal_nmismatches.addr = alloca ptr, align 8
  %distal_probs.addr = alloca ptr, align 8
  %npartners.addr = alloca i32, align 4
  %chrnum.addr = alloca i32, align 4
  %chroffset.addr = alloca i32, align 4
  %querylength.addr = alloca i32, align 4
  %query_compress.addr = alloca ptr, align 8
  %queryptr.addr = alloca ptr, align 8
  %plusp.addr = alloca i8, align 1
  %genestrand.addr = alloca i32, align 4
  %knownsplicing.addr = alloca ptr, align 8
  %spliceendsgen.addr = alloca ptr, align 8
  %mismatch_positions_alloc.addr = alloca ptr, align 8
  %intlistpool.addr = alloca ptr, align 8
  %univcoordlistpool.addr = alloca ptr, align 8
  %listpool.addr = alloca ptr, align 8
  %hitlistpool.addr = alloca ptr, align 8
  %pathpool.addr = alloca ptr, align 8
  %vectorpool.addr = alloca ptr, align 8
  %found_sensedir.addr = alloca i32, align 4
  %newpath = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %path, ptr %path.addr, align 8, !tbaa !5
  store i32 %univdiagonal, ptr %univdiagonal.addr, align 4, !tbaa !12
  store i32 %common_splice_qpos, ptr %common_splice_qpos.addr, align 4, !tbaa !12
  store double %common_splice_prob, ptr %common_splice_prob.addr, align 8, !tbaa !44
  store ptr %distal_splice_positions, ptr %distal_splice_positions.addr, align 8, !tbaa !5
  store ptr %distal_nmismatches, ptr %distal_nmismatches.addr, align 8, !tbaa !5
  store ptr %distal_probs, ptr %distal_probs.addr, align 8, !tbaa !5
  store i32 %npartners, ptr %npartners.addr, align 4, !tbaa !12
  store i32 %chrnum, ptr %chrnum.addr, align 4, !tbaa !12
  store i32 %chroffset, ptr %chroffset.addr, align 4, !tbaa !12
  store i32 %querylength, ptr %querylength.addr, align 4, !tbaa !12
  store ptr %query_compress, ptr %query_compress.addr, align 8, !tbaa !5
  store ptr %queryptr, ptr %queryptr.addr, align 8, !tbaa !5
  store i8 %plusp, ptr %plusp.addr, align 1, !tbaa !14
  store i32 %genestrand, ptr %genestrand.addr, align 4, !tbaa !12
  store ptr %knownsplicing, ptr %knownsplicing.addr, align 8, !tbaa !5
  store ptr %spliceendsgen, ptr %spliceendsgen.addr, align 8, !tbaa !5
  store ptr %mismatch_positions_alloc, ptr %mismatch_positions_alloc.addr, align 8, !tbaa !5
  store ptr %intlistpool, ptr %intlistpool.addr, align 8, !tbaa !5
  store ptr %univcoordlistpool, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  store ptr %listpool, ptr %listpool.addr, align 8, !tbaa !5
  store ptr %hitlistpool, ptr %hitlistpool.addr, align 8, !tbaa !5
  store ptr %pathpool, ptr %pathpool.addr, align 8, !tbaa !5
  store ptr %vectorpool, ptr %vectorpool.addr, align 8, !tbaa !5
  store i32 %found_sensedir, ptr %found_sensedir.addr, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 8, ptr %newpath) #5
  %0 = load i32, ptr %npartners.addr, align 4, !tbaa !12
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.else6

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %2 = load i32, ptr %common_splice_qpos.addr, align 4, !tbaa !12
  %3 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %4 = load i8, ptr %plusp.addr, align 1, !tbaa !14
  %5 = load i32, ptr %genestrand.addr, align 4, !tbaa !12
  %6 = load i32, ptr %found_sensedir.addr, align 4, !tbaa !12
  %7 = load double, ptr %common_splice_prob.addr, align 8, !tbaa !44
  %8 = load ptr, ptr %distal_probs.addr, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds double, ptr %8, i64 0
  %9 = load double, ptr %arrayidx, align 8, !tbaa !44
  %10 = load i32, ptr %univdiagonal.addr, align 4, !tbaa !12
  %11 = load ptr, ptr %distal_splice_positions.addr, align 8, !tbaa !5
  %arrayidx1 = getelementptr inbounds i32, ptr %11, i64 0
  %12 = load i32, ptr %arrayidx1, align 4, !tbaa !12
  %13 = load i32, ptr %common_splice_qpos.addr, align 4, !tbaa !12
  %sub = sub i32 %12, %13
  %14 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %add = add i32 %sub, %14
  %15 = load i32, ptr %chrnum.addr, align 4, !tbaa !12
  %16 = load i32, ptr %chroffset.addr, align 4, !tbaa !12
  %17 = load ptr, ptr %knownsplicing.addr, align 8, !tbaa !5
  %18 = load ptr, ptr %spliceendsgen.addr, align 8, !tbaa !5
  %19 = load ptr, ptr %mismatch_positions_alloc.addr, align 8, !tbaa !5
  %20 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %21 = load ptr, ptr %queryptr.addr, align 8, !tbaa !5
  %22 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %23 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %24 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %25 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %26 = load ptr, ptr %vectorpool.addr, align 8, !tbaa !5
  %call = call ptr @attach_splice_qstart(ptr noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef zeroext %4, i32 noundef %5, i32 noundef %6, double noundef %7, double noundef %9, i32 noundef %10, i32 noundef %add, i32 noundef %15, i32 noundef %16, ptr noundef %17, ptr noundef %18, ptr noundef %19, ptr noundef %20, ptr noundef %21, ptr noundef %22, ptr noundef %23, ptr noundef %24, ptr noundef %25, ptr noundef %26)
  store ptr %call, ptr %newpath, align 8, !tbaa !5
  %cmp2 = icmp eq ptr %call, null
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %if.then
  %27 = load ptr, ptr %hitlistpool.addr, align 8, !tbaa !5
  %28 = load ptr, ptr %newpath, align 8, !tbaa !5
  %call4 = call ptr @Path_expect_fwd(ptr noundef %28)
  %call5 = call ptr @Hitlist_push(ptr noundef null, ptr noundef %27, ptr noundef %call4)
  store ptr %call5, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else6:                                         ; preds = %entry
  %29 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %30 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %31 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %32 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %33 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %34 = load ptr, ptr %vectorpool.addr, align 8, !tbaa !5
  %call7 = call ptr @Path_copy_5(ptr noundef %29, i8 noundef zeroext 0, i32 noundef 0, double noundef 0.000000e+00, ptr noundef %30, ptr noundef %31, ptr noundef %32, ptr noundef %33, ptr noundef %34)
  store ptr %call7, ptr %newpath, align 8, !tbaa !5
  %35 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints = getelementptr inbounds %struct.Path_T, ptr %35, i32 0, i32 17
  %36 = load ptr, ptr %endpoints, align 8, !tbaa !40
  %37 = load i32, ptr %common_splice_qpos.addr, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %36, i32 noundef %37)
  %38 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches = getelementptr inbounds %struct.Path_T, ptr %38, i32 0, i32 19
  %39 = load ptr, ptr %nmismatches, align 8, !tbaa !41
  call void @Intlist_head_set(ptr noundef %39, i32 noundef -1)
  %40 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches = getelementptr inbounds %struct.Path_T, ptr %40, i32 0, i32 20
  %41 = load ptr, ptr %ref_nmismatches, align 8, !tbaa !42
  call void @Intlist_head_set(ptr noundef %41, i32 noundef -1)
  %42 = load i32, ptr %common_splice_qpos.addr, align 4, !tbaa !12
  %43 = load double, ptr %common_splice_prob.addr, align 8, !tbaa !44
  %44 = load ptr, ptr %distal_splice_positions.addr, align 8, !tbaa !5
  %45 = load ptr, ptr %distal_nmismatches.addr, align 8, !tbaa !5
  %46 = load ptr, ptr %distal_probs.addr, align 8, !tbaa !5
  %47 = load i32, ptr %npartners.addr, align 4, !tbaa !12
  %48 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %49 = load ptr, ptr %vectorpool.addr, align 8, !tbaa !5
  %call8 = call ptr @Altsplice_new(i32 noundef %42, double noundef %43, ptr noundef %44, ptr noundef %45, ptr noundef %46, i32 noundef %47, ptr noundef %48, ptr noundef %49)
  %50 = load ptr, ptr %newpath, align 8, !tbaa !5
  %qstart_alts = getelementptr inbounds %struct.Path_T, ptr %50, i32 0, i32 28
  store ptr %call8, ptr %qstart_alts, align 8, !tbaa !45
  %51 = load ptr, ptr %hitlistpool.addr, align 8, !tbaa !5
  %52 = load ptr, ptr %newpath, align 8, !tbaa !5
  %call9 = call ptr @Path_expect_fwd(ptr noundef %52)
  %call10 = call ptr @Hitlist_push(ptr noundef null, ptr noundef %51, ptr noundef %call9)
  store ptr %call10, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else6, %if.else, %if.then3
  call void @llvm.lifetime.end.p0(i64 8, ptr %newpath) #5
  %53 = load ptr, ptr %retval, align 8
  ret ptr %53
}

declare void @Spliceendsgen_return(ptr noundef, ptr noundef) #3

declare i32 @Knownindels_find_highest(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #3

; Function Attrs: nounwind uwtable
define internal ptr @attach_indel_qstart_simple(i32 noundef %adj, ptr noundef %path, i32 noundef %indel_pos, i32 noundef %univdiagonal, i32 noundef %querylength, i32 noundef %try_sensedir, i8 noundef zeroext %plusp, i32 noundef %genestrand, ptr noundef %mismatch_positions_alloc, ptr noundef %knownsplicing, ptr noundef %spliceendsgen, ptr noundef %query_compress, ptr noundef %queryptr, ptr noundef %genomebits, ptr noundef %genomebits_alt, i32 noundef %chrnum, i32 noundef %chroffset, i8 noundef zeroext %novelsplicingp, ptr noundef %intlistpool, ptr noundef %univcoordlistpool, ptr noundef %listpool, ptr noundef %pathpool, ptr noundef %vectorpool) #1 {
entry:
  %retval = alloca ptr, align 8
  %adj.addr = alloca i32, align 4
  %path.addr = alloca ptr, align 8
  %indel_pos.addr = alloca i32, align 4
  %univdiagonal.addr = alloca i32, align 4
  %querylength.addr = alloca i32, align 4
  %try_sensedir.addr = alloca i32, align 4
  %plusp.addr = alloca i8, align 1
  %genestrand.addr = alloca i32, align 4
  %mismatch_positions_alloc.addr = alloca ptr, align 8
  %knownsplicing.addr = alloca ptr, align 8
  %spliceendsgen.addr = alloca ptr, align 8
  %query_compress.addr = alloca ptr, align 8
  %queryptr.addr = alloca ptr, align 8
  %genomebits.addr = alloca ptr, align 8
  %genomebits_alt.addr = alloca ptr, align 8
  %chrnum.addr = alloca i32, align 4
  %chroffset.addr = alloca i32, align 4
  %novelsplicingp.addr = alloca i8, align 1
  %intlistpool.addr = alloca ptr, align 8
  %univcoordlistpool.addr = alloca ptr, align 8
  %listpool.addr = alloca ptr, align 8
  %pathpool.addr = alloca ptr, align 8
  %vectorpool.addr = alloca ptr, align 8
  %newpath = alloca ptr, align 8
  %deletionpos = alloca i32, align 4
  %distal_univdiagonal = alloca i32, align 4
  %trimpos = alloca i32, align 4
  %nmismatches_to_trimpos = alloca i32, align 4
  %exon_origin = alloca i32, align 4
  %found_sensedir = alloca i32, align 4
  %splice5p = alloca i8, align 1
  %splicetype5 = alloca i32, align 4
  %ambig_prob_5 = alloca double, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %adj, ptr %adj.addr, align 4, !tbaa !12
  store ptr %path, ptr %path.addr, align 8, !tbaa !5
  store i32 %indel_pos, ptr %indel_pos.addr, align 4, !tbaa !12
  store i32 %univdiagonal, ptr %univdiagonal.addr, align 4, !tbaa !12
  store i32 %querylength, ptr %querylength.addr, align 4, !tbaa !12
  store i32 %try_sensedir, ptr %try_sensedir.addr, align 4, !tbaa !12
  store i8 %plusp, ptr %plusp.addr, align 1, !tbaa !14
  store i32 %genestrand, ptr %genestrand.addr, align 4, !tbaa !12
  store ptr %mismatch_positions_alloc, ptr %mismatch_positions_alloc.addr, align 8, !tbaa !5
  store ptr %knownsplicing, ptr %knownsplicing.addr, align 8, !tbaa !5
  store ptr %spliceendsgen, ptr %spliceendsgen.addr, align 8, !tbaa !5
  store ptr %query_compress, ptr %query_compress.addr, align 8, !tbaa !5
  store ptr %queryptr, ptr %queryptr.addr, align 8, !tbaa !5
  store ptr %genomebits, ptr %genomebits.addr, align 8, !tbaa !5
  store ptr %genomebits_alt, ptr %genomebits_alt.addr, align 8, !tbaa !5
  store i32 %chrnum, ptr %chrnum.addr, align 4, !tbaa !12
  store i32 %chroffset, ptr %chroffset.addr, align 4, !tbaa !12
  store i8 %novelsplicingp, ptr %novelsplicingp.addr, align 1, !tbaa !14
  store ptr %intlistpool, ptr %intlistpool.addr, align 8, !tbaa !5
  store ptr %univcoordlistpool, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  store ptr %listpool, ptr %listpool.addr, align 8, !tbaa !5
  store ptr %pathpool, ptr %pathpool.addr, align 8, !tbaa !5
  store ptr %vectorpool, ptr %vectorpool.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %newpath) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %deletionpos) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %distal_univdiagonal) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %trimpos) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %nmismatches_to_trimpos) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %exon_origin) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %found_sensedir) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr %splice5p) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %splicetype5) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %ambig_prob_5) #5
  %0 = load i32, ptr %univdiagonal.addr, align 4, !tbaa !12
  %1 = load i32, ptr %adj.addr, align 4, !tbaa !12
  %sub = sub i32 %0, %1
  store i32 %sub, ptr %distal_univdiagonal, align 4, !tbaa !12
  %2 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %call = call i32 @Path_exon_origin(ptr noundef %2)
  store i32 %call, ptr %exon_origin, align 4, !tbaa !12
  %3 = load ptr, ptr %knownsplicing.addr, align 8, !tbaa !5
  %4 = load i32, ptr %try_sensedir.addr, align 4, !tbaa !12
  %5 = load i32, ptr %distal_univdiagonal, align 4, !tbaa !12
  %6 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %7 = load i32, ptr %indel_pos.addr, align 4, !tbaa !12
  %8 = load i32, ptr %exon_origin, align 4, !tbaa !12
  %9 = load i32, ptr %chrnum.addr, align 4, !tbaa !12
  %10 = load i32, ptr %chroffset.addr, align 4, !tbaa !12
  %11 = load i8, ptr %plusp.addr, align 1, !tbaa !14
  %12 = load i32, ptr %genestrand.addr, align 4, !tbaa !12
  %13 = load ptr, ptr %mismatch_positions_alloc.addr, align 8, !tbaa !5
  %14 = load ptr, ptr %spliceendsgen.addr, align 8, !tbaa !5
  %15 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %16 = load ptr, ptr %queryptr.addr, align 8, !tbaa !5
  %17 = load ptr, ptr %genomebits.addr, align 8, !tbaa !5
  %18 = load ptr, ptr %genomebits_alt.addr, align 8, !tbaa !5
  %19 = load i8, ptr %novelsplicingp.addr, align 1, !tbaa !14
  %call1 = call zeroext i8 @Spliceends_qstart_trim(ptr noundef %trimpos, ptr noundef %nmismatches_to_trimpos, ptr noundef %found_sensedir, ptr noundef %splicetype5, ptr noundef %ambig_prob_5, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i8 noundef zeroext %11, i32 noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef %15, ptr noundef %16, ptr noundef %17, ptr noundef %18, i8 noundef zeroext %19)
  store i8 %call1, ptr %splice5p, align 1, !tbaa !14
  %20 = load i32, ptr %trimpos, align 4, !tbaa !12
  %21 = load i32, ptr %indel_pos.addr, align 4, !tbaa !12
  %cmp = icmp eq i32 %20, %21
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %entry
  %22 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %23 = load i8, ptr %splice5p, align 1, !tbaa !14
  %24 = load i32, ptr %splicetype5, align 4, !tbaa !14
  %25 = load double, ptr %ambig_prob_5, align 8, !tbaa !44
  %26 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %27 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %28 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %29 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %30 = load ptr, ptr %vectorpool.addr, align 8, !tbaa !5
  %call2 = call ptr @Path_copy_5(ptr noundef %22, i8 noundef zeroext %23, i32 noundef %24, double noundef %25, ptr noundef %26, ptr noundef %27, ptr noundef %28, ptr noundef %29, ptr noundef %30)
  store ptr %call2, ptr %newpath, align 8, !tbaa !5
  %31 = load i32, ptr %indel_pos.addr, align 4, !tbaa !12
  %32 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints = getelementptr inbounds %struct.Path_T, ptr %32, i32 0, i32 17
  %33 = load ptr, ptr %endpoints, align 8, !tbaa !40
  %call3 = call i32 @Intlist_head(ptr noundef %33)
  %cmp4 = icmp eq i32 %31, %call3
  br i1 %cmp4, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.else
  br label %if.end17

if.else6:                                         ; preds = %if.else
  %34 = load i32, ptr %indel_pos.addr, align 4, !tbaa !12
  %35 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints7 = getelementptr inbounds %struct.Path_T, ptr %35, i32 0, i32 17
  %36 = load ptr, ptr %endpoints7, align 8, !tbaa !40
  %call8 = call i32 @Intlist_head(ptr noundef %36)
  %cmp9 = icmp sgt i32 %34, %call8
  br i1 %cmp9, label %land.lhs.true, label %if.else14

land.lhs.true:                                    ; preds = %if.else6
  %37 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches = getelementptr inbounds %struct.Path_T, ptr %37, i32 0, i32 19
  %38 = load ptr, ptr %nmismatches, align 8, !tbaa !41
  %call10 = call i32 @Intlist_head(ptr noundef %38)
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %if.then12, label %if.else14

if.then12:                                        ; preds = %land.lhs.true
  %39 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints13 = getelementptr inbounds %struct.Path_T, ptr %39, i32 0, i32 17
  %40 = load ptr, ptr %endpoints13, align 8, !tbaa !40
  %41 = load i32, ptr %indel_pos.addr, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %40, i32 noundef %41)
  br label %if.end

if.else14:                                        ; preds = %land.lhs.true, %if.else6
  %42 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints15 = getelementptr inbounds %struct.Path_T, ptr %42, i32 0, i32 17
  %43 = load ptr, ptr %endpoints15, align 8, !tbaa !40
  %44 = load i32, ptr %indel_pos.addr, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %43, i32 noundef %44)
  %45 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches16 = getelementptr inbounds %struct.Path_T, ptr %45, i32 0, i32 19
  %46 = load ptr, ptr %nmismatches16, align 8, !tbaa !41
  call void @Intlist_head_set(ptr noundef %46, i32 noundef -1)
  %47 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches = getelementptr inbounds %struct.Path_T, ptr %47, i32 0, i32 20
  %48 = load ptr, ptr %ref_nmismatches, align 8, !tbaa !42
  call void @Intlist_head_set(ptr noundef %48, i32 noundef -1)
  br label %if.end

if.end:                                           ; preds = %if.else14, %if.then12
  br label %if.end17

if.end17:                                         ; preds = %if.end, %if.then5
  %49 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints18 = getelementptr inbounds %struct.Path_T, ptr %49, i32 0, i32 17
  %50 = load ptr, ptr %endpoints18, align 8, !tbaa !40
  %51 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %52 = load i32, ptr %trimpos, align 4, !tbaa !12
  %call19 = call ptr @Intlistpool_push(ptr noundef %50, ptr noundef %51, i32 noundef %52)
  %53 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints20 = getelementptr inbounds %struct.Path_T, ptr %53, i32 0, i32 17
  store ptr %call19, ptr %endpoints20, align 8, !tbaa !40
  %54 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches21 = getelementptr inbounds %struct.Path_T, ptr %54, i32 0, i32 19
  %55 = load ptr, ptr %nmismatches21, align 8, !tbaa !41
  %56 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %57 = load i32, ptr %nmismatches_to_trimpos, align 4, !tbaa !12
  %call22 = call ptr @Intlistpool_push(ptr noundef %55, ptr noundef %56, i32 noundef %57)
  %58 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches23 = getelementptr inbounds %struct.Path_T, ptr %58, i32 0, i32 19
  store ptr %call22, ptr %nmismatches23, align 8, !tbaa !41
  %59 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches24 = getelementptr inbounds %struct.Path_T, ptr %59, i32 0, i32 20
  %60 = load ptr, ptr %ref_nmismatches24, align 8, !tbaa !42
  %61 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %62 = load i32, ptr %nmismatches_to_trimpos, align 4, !tbaa !12
  %call25 = call ptr @Intlistpool_push(ptr noundef %60, ptr noundef %61, i32 noundef %62)
  %63 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches26 = getelementptr inbounds %struct.Path_T, ptr %63, i32 0, i32 20
  store ptr %call25, ptr %ref_nmismatches26, align 8, !tbaa !42
  %64 = load ptr, ptr %newpath, align 8, !tbaa !5
  %univdiagonals = getelementptr inbounds %struct.Path_T, ptr %64, i32 0, i32 18
  %65 = load ptr, ptr %univdiagonals, align 8, !tbaa !36
  %66 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %67 = load i32, ptr %distal_univdiagonal, align 4, !tbaa !12
  %call27 = call ptr @Uintlistpool_push(ptr noundef %65, ptr noundef %66, i32 noundef %67)
  %68 = load ptr, ptr %newpath, align 8, !tbaa !5
  %univdiagonals28 = getelementptr inbounds %struct.Path_T, ptr %68, i32 0, i32 18
  store ptr %call27, ptr %univdiagonals28, align 8, !tbaa !36
  %69 = load i32, ptr %adj.addr, align 4, !tbaa !12
  %cmp29 = icmp slt i32 %69, 0
  br i1 %cmp29, label %if.then30, label %if.else35

if.then30:                                        ; preds = %if.end17
  %70 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions = getelementptr inbounds %struct.Path_T, ptr %70, i32 0, i32 21
  %71 = load ptr, ptr %junctions, align 8, !tbaa !43
  %72 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %73 = load i32, ptr %adj.addr, align 4, !tbaa !12
  %sub31 = sub nsw i32 0, %73
  %74 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %call32 = call ptr @Junction_new_insertion(i32 noundef %sub31, ptr noundef %74)
  %call33 = call ptr @Listpool_push(ptr noundef %71, ptr noundef %72, ptr noundef %call32)
  %75 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions34 = getelementptr inbounds %struct.Path_T, ptr %75, i32 0, i32 21
  store ptr %call33, ptr %junctions34, align 8, !tbaa !43
  br label %if.end41

if.else35:                                        ; preds = %if.end17
  %76 = load i32, ptr %univdiagonal.addr, align 4, !tbaa !12
  %77 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %sub36 = sub i32 %76, %77
  %78 = load i32, ptr %indel_pos.addr, align 4, !tbaa !12
  %add = add i32 %sub36, %78
  store i32 %add, ptr %deletionpos, align 4, !tbaa !12
  %79 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions37 = getelementptr inbounds %struct.Path_T, ptr %79, i32 0, i32 21
  %80 = load ptr, ptr %junctions37, align 8, !tbaa !43
  %81 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %82 = load i32, ptr %adj.addr, align 4, !tbaa !12
  %83 = load i32, ptr %deletionpos, align 4, !tbaa !12
  %84 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %call38 = call ptr @Junction_new_deletion(i32 noundef %82, i32 noundef %83, ptr noundef %84)
  %call39 = call ptr @Listpool_push(ptr noundef %80, ptr noundef %81, ptr noundef %call38)
  %85 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions40 = getelementptr inbounds %struct.Path_T, ptr %85, i32 0, i32 21
  store ptr %call39, ptr %junctions40, align 8, !tbaa !43
  br label %if.end41

if.end41:                                         ; preds = %if.else35, %if.then30
  %86 = load ptr, ptr %newpath, align 8, !tbaa !5
  store ptr %86, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ambig_prob_5) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %splicetype5) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr %splice5p) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %found_sensedir) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %exon_origin) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %nmismatches_to_trimpos) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %trimpos) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %distal_univdiagonal) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %deletionpos) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %newpath) #5
  %87 = load ptr, ptr %retval, align 8
  ret ptr %87
}

declare i32 @Genomebits_indel_solve_low(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) #3

; Function Attrs: nounwind uwtable
define internal ptr @attach_indel_qstart(ptr noundef %path, i32 noundef %low_univdiagonal, i32 noundef %low_qstart, i32 noundef %querylength, ptr noundef %indelinfo, ptr noundef %query_compress, i8 noundef zeroext %plusp, i32 noundef %genestrand, i32 noundef %nmismatches_allowed, i32 noundef %max_insertionlen, i32 noundef %max_deletionlen, ptr noundef %intlistpool, ptr noundef %univcoordlistpool, ptr noundef %listpool, ptr noundef %pathpool, ptr noundef %vectorpool) #1 {
entry:
  %path.addr = alloca ptr, align 8
  %low_univdiagonal.addr = alloca i32, align 4
  %low_qstart.addr = alloca i32, align 4
  %querylength.addr = alloca i32, align 4
  %indelinfo.addr = alloca ptr, align 8
  %query_compress.addr = alloca ptr, align 8
  %plusp.addr = alloca i8, align 1
  %genestrand.addr = alloca i32, align 4
  %nmismatches_allowed.addr = alloca i32, align 4
  %max_insertionlen.addr = alloca i32, align 4
  %max_deletionlen.addr = alloca i32, align 4
  %intlistpool.addr = alloca ptr, align 8
  %univcoordlistpool.addr = alloca ptr, align 8
  %listpool.addr = alloca ptr, align 8
  %pathpool.addr = alloca ptr, align 8
  %vectorpool.addr = alloca ptr, align 8
  %newpath = alloca ptr, align 8
  %univdiagonal = alloca i32, align 4
  %qend = alloca i32, align 4
  %nindels = alloca i32, align 4
  %indel_pos = alloca i32, align 4
  %deletionpos = alloca i32, align 4
  %nmismatches_i = alloca i32, align 4
  %nmismatches_j = alloca i32, align 4
  %ref_nmismatches_i = alloca i32, align 4
  %ref_nmismatches_j = alloca i32, align 4
  store ptr %path, ptr %path.addr, align 8, !tbaa !5
  store i32 %low_univdiagonal, ptr %low_univdiagonal.addr, align 4, !tbaa !12
  store i32 %low_qstart, ptr %low_qstart.addr, align 4, !tbaa !12
  store i32 %querylength, ptr %querylength.addr, align 4, !tbaa !12
  store ptr %indelinfo, ptr %indelinfo.addr, align 8, !tbaa !5
  store ptr %query_compress, ptr %query_compress.addr, align 8, !tbaa !5
  store i8 %plusp, ptr %plusp.addr, align 1, !tbaa !14
  store i32 %genestrand, ptr %genestrand.addr, align 4, !tbaa !12
  store i32 %nmismatches_allowed, ptr %nmismatches_allowed.addr, align 4, !tbaa !12
  store i32 %max_insertionlen, ptr %max_insertionlen.addr, align 4, !tbaa !12
  store i32 %max_deletionlen, ptr %max_deletionlen.addr, align 4, !tbaa !12
  store ptr %intlistpool, ptr %intlistpool.addr, align 8, !tbaa !5
  store ptr %univcoordlistpool, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  store ptr %listpool, ptr %listpool.addr, align 8, !tbaa !5
  store ptr %pathpool, ptr %pathpool.addr, align 8, !tbaa !5
  store ptr %vectorpool, ptr %vectorpool.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %newpath) #5
  store ptr null, ptr %newpath, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %univdiagonal) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %qend) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %nindels) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %indel_pos) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %deletionpos) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %nmismatches_i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %nmismatches_j) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %ref_nmismatches_i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %ref_nmismatches_j) #5
  %0 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %univdiagonals = getelementptr inbounds %struct.Path_T, ptr %0, i32 0, i32 18
  %1 = load ptr, ptr %univdiagonals, align 8, !tbaa !36
  %call = call i32 @Uintlist_head(ptr noundef %1)
  store i32 %call, ptr %univdiagonal, align 4, !tbaa !12
  %2 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %endpoints = getelementptr inbounds %struct.Path_T, ptr %2, i32 0, i32 17
  %3 = load ptr, ptr %endpoints, align 8, !tbaa !40
  %call1 = call ptr @Intlist_next(ptr noundef %3)
  %call2 = call i32 @Intlist_head(ptr noundef %call1)
  store i32 %call2, ptr %qend, align 4, !tbaa !12
  %4 = load i32, ptr %low_univdiagonal.addr, align 4, !tbaa !12
  %5 = load i32, ptr %univdiagonal, align 4, !tbaa !12
  %6 = load i32, ptr %max_insertionlen.addr, align 4, !tbaa !12
  %add = add i32 %5, %6
  %cmp = icmp ugt i32 %4, %add
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end61

if.else:                                          ; preds = %entry
  %7 = load i32, ptr %low_univdiagonal.addr, align 4, !tbaa !12
  %8 = load i32, ptr %univdiagonal, align 4, !tbaa !12
  %cmp3 = icmp ugt i32 %7, %8
  br i1 %cmp3, label %if.then4, label %if.else26

if.then4:                                         ; preds = %if.else
  %9 = load i32, ptr %low_univdiagonal.addr, align 4, !tbaa !12
  %10 = load i32, ptr %univdiagonal, align 4, !tbaa !12
  %sub = sub i32 %9, %10
  store i32 %sub, ptr %nindels, align 4, !tbaa !12
  %11 = load i32, ptr %low_univdiagonal.addr, align 4, !tbaa !12
  %12 = load i32, ptr %nindels, align 4, !tbaa !12
  %13 = load ptr, ptr @genomebits, align 8, !tbaa !5
  %14 = load ptr, ptr @genomebits_alt, align 8, !tbaa !5
  %15 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %16 = load i32, ptr %low_qstart.addr, align 4, !tbaa !12
  %17 = load i32, ptr %qend, align 4, !tbaa !12
  %18 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %19 = load ptr, ptr %indelinfo.addr, align 8, !tbaa !5
  %20 = load i8, ptr %plusp.addr, align 1, !tbaa !14
  %21 = load i32, ptr %genestrand.addr, align 4, !tbaa !12
  %call5 = call i32 @Indel_resolve_middle_insertion(ptr noundef %nmismatches_i, ptr noundef %nmismatches_j, ptr noundef %ref_nmismatches_i, ptr noundef %ref_nmismatches_j, i32 noundef %11, i32 noundef %12, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef %13, ptr noundef %14, ptr noundef %15, i32 noundef %16, i32 noundef %17, i32 noundef %18, ptr noundef %19, i8 noundef zeroext %20, i32 noundef %21, i8 noundef zeroext 1)
  store i32 %call5, ptr %indel_pos, align 4, !tbaa !12
  %cmp6 = icmp sle i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.else8

if.then7:                                         ; preds = %if.then4
  br label %if.end

if.else8:                                         ; preds = %if.then4
  %22 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %23 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %24 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %25 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %26 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %27 = load ptr, ptr %vectorpool.addr, align 8, !tbaa !5
  %call9 = call ptr @Path_copy_5(ptr noundef %22, i8 noundef zeroext 0, i32 noundef 0, double noundef 0.000000e+00, ptr noundef %23, ptr noundef %24, ptr noundef %25, ptr noundef %26, ptr noundef %27)
  store ptr %call9, ptr %newpath, align 8, !tbaa !5
  %28 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints10 = getelementptr inbounds %struct.Path_T, ptr %28, i32 0, i32 17
  %29 = load ptr, ptr %endpoints10, align 8, !tbaa !40
  %30 = load i32, ptr %indel_pos, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %29, i32 noundef %30)
  %31 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints11 = getelementptr inbounds %struct.Path_T, ptr %31, i32 0, i32 17
  %32 = load ptr, ptr %endpoints11, align 8, !tbaa !40
  %33 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %34 = load i32, ptr %low_qstart.addr, align 4, !tbaa !12
  %call12 = call ptr @Intlistpool_push(ptr noundef %32, ptr noundef %33, i32 noundef %34)
  %35 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints13 = getelementptr inbounds %struct.Path_T, ptr %35, i32 0, i32 17
  store ptr %call12, ptr %endpoints13, align 8, !tbaa !40
  %36 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions = getelementptr inbounds %struct.Path_T, ptr %36, i32 0, i32 21
  %37 = load ptr, ptr %junctions, align 8, !tbaa !43
  %38 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %39 = load i32, ptr %nindels, align 4, !tbaa !12
  %40 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %call14 = call ptr @Junction_new_insertion(i32 noundef %39, ptr noundef %40)
  %call15 = call ptr @Listpool_push(ptr noundef %37, ptr noundef %38, ptr noundef %call14)
  %41 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions16 = getelementptr inbounds %struct.Path_T, ptr %41, i32 0, i32 21
  store ptr %call15, ptr %junctions16, align 8, !tbaa !43
  %42 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches = getelementptr inbounds %struct.Path_T, ptr %42, i32 0, i32 19
  %43 = load ptr, ptr %nmismatches, align 8, !tbaa !41
  %44 = load i32, ptr %nmismatches_j, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %43, i32 noundef %44)
  %45 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches = getelementptr inbounds %struct.Path_T, ptr %45, i32 0, i32 20
  %46 = load ptr, ptr %ref_nmismatches, align 8, !tbaa !42
  %47 = load i32, ptr %nmismatches_j, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %46, i32 noundef %47)
  %48 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches17 = getelementptr inbounds %struct.Path_T, ptr %48, i32 0, i32 19
  %49 = load ptr, ptr %nmismatches17, align 8, !tbaa !41
  %50 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %51 = load i32, ptr %nmismatches_i, align 4, !tbaa !12
  %call18 = call ptr @Intlistpool_push(ptr noundef %49, ptr noundef %50, i32 noundef %51)
  %52 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches19 = getelementptr inbounds %struct.Path_T, ptr %52, i32 0, i32 19
  store ptr %call18, ptr %nmismatches19, align 8, !tbaa !41
  %53 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches20 = getelementptr inbounds %struct.Path_T, ptr %53, i32 0, i32 20
  %54 = load ptr, ptr %ref_nmismatches20, align 8, !tbaa !42
  %55 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %56 = load i32, ptr %nmismatches_i, align 4, !tbaa !12
  %call21 = call ptr @Intlistpool_push(ptr noundef %54, ptr noundef %55, i32 noundef %56)
  %57 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches22 = getelementptr inbounds %struct.Path_T, ptr %57, i32 0, i32 20
  store ptr %call21, ptr %ref_nmismatches22, align 8, !tbaa !42
  %58 = load ptr, ptr %newpath, align 8, !tbaa !5
  %univdiagonals23 = getelementptr inbounds %struct.Path_T, ptr %58, i32 0, i32 18
  %59 = load ptr, ptr %univdiagonals23, align 8, !tbaa !36
  %60 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %61 = load i32, ptr %low_univdiagonal.addr, align 4, !tbaa !12
  %call24 = call ptr @Uintlistpool_push(ptr noundef %59, ptr noundef %60, i32 noundef %61)
  %62 = load ptr, ptr %newpath, align 8, !tbaa !5
  %univdiagonals25 = getelementptr inbounds %struct.Path_T, ptr %62, i32 0, i32 18
  store ptr %call24, ptr %univdiagonals25, align 8, !tbaa !36
  br label %if.end

if.end:                                           ; preds = %if.else8, %if.then7
  br label %if.end60

if.else26:                                        ; preds = %if.else
  %63 = load i32, ptr %low_univdiagonal.addr, align 4, !tbaa !12
  %64 = load i32, ptr %max_deletionlen.addr, align 4, !tbaa !12
  %add27 = add i32 %63, %64
  %65 = load i32, ptr %univdiagonal, align 4, !tbaa !12
  %cmp28 = icmp uge i32 %add27, %65
  br i1 %cmp28, label %if.then29, label %if.end59

if.then29:                                        ; preds = %if.else26
  %66 = load i32, ptr %univdiagonal, align 4, !tbaa !12
  %67 = load i32, ptr %low_univdiagonal.addr, align 4, !tbaa !12
  %sub30 = sub i32 %66, %67
  store i32 %sub30, ptr %nindels, align 4, !tbaa !12
  %68 = load i32, ptr %low_univdiagonal.addr, align 4, !tbaa !12
  %69 = load i32, ptr %nindels, align 4, !tbaa !12
  %sub31 = sub nsw i32 0, %69
  %70 = load ptr, ptr @genomebits, align 8, !tbaa !5
  %71 = load ptr, ptr @genomebits_alt, align 8, !tbaa !5
  %72 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %73 = load i32, ptr %low_qstart.addr, align 4, !tbaa !12
  %74 = load i32, ptr %qend, align 4, !tbaa !12
  %75 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %76 = load ptr, ptr %indelinfo.addr, align 8, !tbaa !5
  %77 = load i8, ptr %plusp.addr, align 1, !tbaa !14
  %78 = load i32, ptr %genestrand.addr, align 4, !tbaa !12
  %call32 = call i32 @Indel_resolve_middle_deletion(ptr noundef %nmismatches_i, ptr noundef %nmismatches_j, ptr noundef %ref_nmismatches_i, ptr noundef %ref_nmismatches_j, i32 noundef %68, i32 noundef %sub31, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef %70, ptr noundef %71, ptr noundef %72, i32 noundef %73, i32 noundef %74, i32 noundef %75, ptr noundef %76, i8 noundef zeroext %77, i32 noundef %78, i8 noundef zeroext 1)
  store i32 %call32, ptr %indel_pos, align 4, !tbaa !12
  %cmp33 = icmp sle i32 %call32, 0
  br i1 %cmp33, label %if.then34, label %if.else35

if.then34:                                        ; preds = %if.then29
  br label %if.end58

if.else35:                                        ; preds = %if.then29
  %79 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %80 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %81 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %82 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %83 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %84 = load ptr, ptr %vectorpool.addr, align 8, !tbaa !5
  %call36 = call ptr @Path_copy_5(ptr noundef %79, i8 noundef zeroext 0, i32 noundef 0, double noundef 0.000000e+00, ptr noundef %80, ptr noundef %81, ptr noundef %82, ptr noundef %83, ptr noundef %84)
  store ptr %call36, ptr %newpath, align 8, !tbaa !5
  %85 = load i32, ptr %low_univdiagonal.addr, align 4, !tbaa !12
  %86 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %sub37 = sub i32 %85, %86
  %87 = load i32, ptr %indel_pos, align 4, !tbaa !12
  %add38 = add i32 %sub37, %87
  store i32 %add38, ptr %deletionpos, align 4, !tbaa !12
  %88 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions39 = getelementptr inbounds %struct.Path_T, ptr %88, i32 0, i32 21
  %89 = load ptr, ptr %junctions39, align 8, !tbaa !43
  %90 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %91 = load i32, ptr %nindels, align 4, !tbaa !12
  %92 = load i32, ptr %deletionpos, align 4, !tbaa !12
  %93 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %call40 = call ptr @Junction_new_deletion(i32 noundef %91, i32 noundef %92, ptr noundef %93)
  %call41 = call ptr @Listpool_push(ptr noundef %89, ptr noundef %90, ptr noundef %call40)
  %94 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions42 = getelementptr inbounds %struct.Path_T, ptr %94, i32 0, i32 21
  store ptr %call41, ptr %junctions42, align 8, !tbaa !43
  %95 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints43 = getelementptr inbounds %struct.Path_T, ptr %95, i32 0, i32 17
  %96 = load ptr, ptr %endpoints43, align 8, !tbaa !40
  %97 = load i32, ptr %indel_pos, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %96, i32 noundef %97)
  %98 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints44 = getelementptr inbounds %struct.Path_T, ptr %98, i32 0, i32 17
  %99 = load ptr, ptr %endpoints44, align 8, !tbaa !40
  %100 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %101 = load i32, ptr %low_qstart.addr, align 4, !tbaa !12
  %call45 = call ptr @Intlistpool_push(ptr noundef %99, ptr noundef %100, i32 noundef %101)
  %102 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints46 = getelementptr inbounds %struct.Path_T, ptr %102, i32 0, i32 17
  store ptr %call45, ptr %endpoints46, align 8, !tbaa !40
  %103 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches47 = getelementptr inbounds %struct.Path_T, ptr %103, i32 0, i32 19
  %104 = load ptr, ptr %nmismatches47, align 8, !tbaa !41
  %105 = load i32, ptr %nmismatches_j, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %104, i32 noundef %105)
  %106 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches48 = getelementptr inbounds %struct.Path_T, ptr %106, i32 0, i32 20
  %107 = load ptr, ptr %ref_nmismatches48, align 8, !tbaa !42
  %108 = load i32, ptr %nmismatches_j, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %107, i32 noundef %108)
  %109 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches49 = getelementptr inbounds %struct.Path_T, ptr %109, i32 0, i32 19
  %110 = load ptr, ptr %nmismatches49, align 8, !tbaa !41
  %111 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %112 = load i32, ptr %nmismatches_i, align 4, !tbaa !12
  %call50 = call ptr @Intlistpool_push(ptr noundef %110, ptr noundef %111, i32 noundef %112)
  %113 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches51 = getelementptr inbounds %struct.Path_T, ptr %113, i32 0, i32 19
  store ptr %call50, ptr %nmismatches51, align 8, !tbaa !41
  %114 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches52 = getelementptr inbounds %struct.Path_T, ptr %114, i32 0, i32 20
  %115 = load ptr, ptr %ref_nmismatches52, align 8, !tbaa !42
  %116 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %117 = load i32, ptr %nmismatches_i, align 4, !tbaa !12
  %call53 = call ptr @Intlistpool_push(ptr noundef %115, ptr noundef %116, i32 noundef %117)
  %118 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches54 = getelementptr inbounds %struct.Path_T, ptr %118, i32 0, i32 20
  store ptr %call53, ptr %ref_nmismatches54, align 8, !tbaa !42
  %119 = load ptr, ptr %newpath, align 8, !tbaa !5
  %univdiagonals55 = getelementptr inbounds %struct.Path_T, ptr %119, i32 0, i32 18
  %120 = load ptr, ptr %univdiagonals55, align 8, !tbaa !36
  %121 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %122 = load i32, ptr %low_univdiagonal.addr, align 4, !tbaa !12
  %call56 = call ptr @Uintlistpool_push(ptr noundef %120, ptr noundef %121, i32 noundef %122)
  %123 = load ptr, ptr %newpath, align 8, !tbaa !5
  %univdiagonals57 = getelementptr inbounds %struct.Path_T, ptr %123, i32 0, i32 18
  store ptr %call56, ptr %univdiagonals57, align 8, !tbaa !36
  br label %if.end58

if.end58:                                         ; preds = %if.else35, %if.then34
  br label %if.end59

if.end59:                                         ; preds = %if.end58, %if.else26
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %if.end
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %if.then
  %124 = load ptr, ptr %newpath, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 4, ptr %ref_nmismatches_j) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %ref_nmismatches_i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %nmismatches_j) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %nmismatches_i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %deletionpos) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %indel_pos) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %nindels) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %qend) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %univdiagonal) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %newpath) #5
  ret ptr %124
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @Intlist_second_value(ptr noundef %list) #0 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !5
  %rest = getelementptr inbounds %struct.Intlist_T, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %rest, align 8, !tbaa !82
  %first = getelementptr inbounds %struct.Intlist_T, ptr %1, i32 0, i32 0
  %2 = load i32, ptr %first, align 8, !tbaa !93
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define internal ptr @attach_splice_qstart(ptr noundef %path, i32 noundef %splice_qpos, i32 noundef %querylength, i8 noundef zeroext %plusp, i32 noundef %genestrand, i32 noundef %try_sensedir, double noundef %medial_prob, double noundef %distal_prob, i32 noundef %medial_univdiagonal, i32 noundef %distal_univdiagonal, i32 noundef %chrnum, i32 noundef %chroffset, ptr noundef %knownsplicing, ptr noundef %spliceendsgen, ptr noundef %mismatch_positions_alloc, ptr noundef %query_compress, ptr noundef %queryptr, ptr noundef %intlistpool, ptr noundef %univcoordlistpool, ptr noundef %listpool, ptr noundef %pathpool, ptr noundef %vectorpool) #1 {
entry:
  %retval = alloca ptr, align 8
  %path.addr = alloca ptr, align 8
  %splice_qpos.addr = alloca i32, align 4
  %querylength.addr = alloca i32, align 4
  %plusp.addr = alloca i8, align 1
  %genestrand.addr = alloca i32, align 4
  %try_sensedir.addr = alloca i32, align 4
  %medial_prob.addr = alloca double, align 8
  %distal_prob.addr = alloca double, align 8
  %medial_univdiagonal.addr = alloca i32, align 4
  %distal_univdiagonal.addr = alloca i32, align 4
  %chrnum.addr = alloca i32, align 4
  %chroffset.addr = alloca i32, align 4
  %knownsplicing.addr = alloca ptr, align 8
  %spliceendsgen.addr = alloca ptr, align 8
  %mismatch_positions_alloc.addr = alloca ptr, align 8
  %query_compress.addr = alloca ptr, align 8
  %queryptr.addr = alloca ptr, align 8
  %intlistpool.addr = alloca ptr, align 8
  %univcoordlistpool.addr = alloca ptr, align 8
  %listpool.addr = alloca ptr, align 8
  %pathpool.addr = alloca ptr, align 8
  %vectorpool.addr = alloca ptr, align 8
  %newpath = alloca ptr, align 8
  %trimpos = alloca i32, align 4
  %nmismatches_to_trimpos = alloca i32, align 4
  %exon_origin = alloca i32, align 4
  %found_sensedir = alloca i32, align 4
  %splice5p = alloca i8, align 1
  %splicetype5 = alloca i32, align 4
  %ambig_prob_5 = alloca double, align 8
  %splice_distance = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %path, ptr %path.addr, align 8, !tbaa !5
  store i32 %splice_qpos, ptr %splice_qpos.addr, align 4, !tbaa !12
  store i32 %querylength, ptr %querylength.addr, align 4, !tbaa !12
  store i8 %plusp, ptr %plusp.addr, align 1, !tbaa !14
  store i32 %genestrand, ptr %genestrand.addr, align 4, !tbaa !12
  store i32 %try_sensedir, ptr %try_sensedir.addr, align 4, !tbaa !12
  store double %medial_prob, ptr %medial_prob.addr, align 8, !tbaa !44
  store double %distal_prob, ptr %distal_prob.addr, align 8, !tbaa !44
  store i32 %medial_univdiagonal, ptr %medial_univdiagonal.addr, align 4, !tbaa !12
  store i32 %distal_univdiagonal, ptr %distal_univdiagonal.addr, align 4, !tbaa !12
  store i32 %chrnum, ptr %chrnum.addr, align 4, !tbaa !12
  store i32 %chroffset, ptr %chroffset.addr, align 4, !tbaa !12
  store ptr %knownsplicing, ptr %knownsplicing.addr, align 8, !tbaa !5
  store ptr %spliceendsgen, ptr %spliceendsgen.addr, align 8, !tbaa !5
  store ptr %mismatch_positions_alloc, ptr %mismatch_positions_alloc.addr, align 8, !tbaa !5
  store ptr %query_compress, ptr %query_compress.addr, align 8, !tbaa !5
  store ptr %queryptr, ptr %queryptr.addr, align 8, !tbaa !5
  store ptr %intlistpool, ptr %intlistpool.addr, align 8, !tbaa !5
  store ptr %univcoordlistpool, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  store ptr %listpool, ptr %listpool.addr, align 8, !tbaa !5
  store ptr %pathpool, ptr %pathpool.addr, align 8, !tbaa !5
  store ptr %vectorpool, ptr %vectorpool.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %newpath) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %trimpos) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %nmismatches_to_trimpos) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %exon_origin) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %found_sensedir) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr %splice5p) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %splicetype5) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %ambig_prob_5) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %splice_distance) #5
  %0 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %call = call i32 @Path_exon_origin(ptr noundef %0)
  store i32 %call, ptr %exon_origin, align 4, !tbaa !12
  %1 = load ptr, ptr %knownsplicing.addr, align 8, !tbaa !5
  %2 = load i32, ptr %try_sensedir.addr, align 4, !tbaa !12
  %3 = load i32, ptr %distal_univdiagonal.addr, align 4, !tbaa !12
  %4 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %5 = load i32, ptr %splice_qpos.addr, align 4, !tbaa !12
  %6 = load i32, ptr %exon_origin, align 4, !tbaa !12
  %7 = load i32, ptr %chrnum.addr, align 4, !tbaa !12
  %8 = load i32, ptr %chroffset.addr, align 4, !tbaa !12
  %9 = load i8, ptr %plusp.addr, align 1, !tbaa !14
  %10 = load i32, ptr %genestrand.addr, align 4, !tbaa !12
  %11 = load ptr, ptr %mismatch_positions_alloc.addr, align 8, !tbaa !5
  %12 = load ptr, ptr %spliceendsgen.addr, align 8, !tbaa !5
  %13 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %14 = load ptr, ptr %queryptr.addr, align 8, !tbaa !5
  %15 = load ptr, ptr @genomebits, align 8, !tbaa !5
  %16 = load ptr, ptr @genomebits_alt, align 8, !tbaa !5
  %17 = load i8, ptr @novelsplicingp, align 1, !tbaa !14
  %call1 = call zeroext i8 @Spliceends_qstart_trim(ptr noundef %trimpos, ptr noundef %nmismatches_to_trimpos, ptr noundef %found_sensedir, ptr noundef %splicetype5, ptr noundef %ambig_prob_5, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i8 noundef zeroext %9, i32 noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef %15, ptr noundef %16, i8 noundef zeroext %17)
  store i8 %call1, ptr %splice5p, align 1, !tbaa !14
  %18 = load i32, ptr %trimpos, align 4, !tbaa !12
  %19 = load i32, ptr %splice_qpos.addr, align 4, !tbaa !12
  %cmp = icmp eq i32 %18, %19
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %entry
  %20 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %21 = load i8, ptr %splice5p, align 1, !tbaa !14
  %22 = load i32, ptr %splicetype5, align 4, !tbaa !14
  %23 = load double, ptr %ambig_prob_5, align 8, !tbaa !44
  %24 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %25 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %26 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %27 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %28 = load ptr, ptr %vectorpool.addr, align 8, !tbaa !5
  %call2 = call ptr @Path_copy_5(ptr noundef %20, i8 noundef zeroext %21, i32 noundef %22, double noundef %23, ptr noundef %24, ptr noundef %25, ptr noundef %26, ptr noundef %27, ptr noundef %28)
  store ptr %call2, ptr %newpath, align 8, !tbaa !5
  %29 = load i32, ptr %splice_qpos.addr, align 4, !tbaa !12
  %30 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints = getelementptr inbounds %struct.Path_T, ptr %30, i32 0, i32 17
  %31 = load ptr, ptr %endpoints, align 8, !tbaa !40
  %call3 = call i32 @Intlist_head(ptr noundef %31)
  %cmp4 = icmp eq i32 %29, %call3
  br i1 %cmp4, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.else
  br label %if.end17

if.else6:                                         ; preds = %if.else
  %32 = load i32, ptr %splice_qpos.addr, align 4, !tbaa !12
  %33 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints7 = getelementptr inbounds %struct.Path_T, ptr %33, i32 0, i32 17
  %34 = load ptr, ptr %endpoints7, align 8, !tbaa !40
  %call8 = call i32 @Intlist_head(ptr noundef %34)
  %cmp9 = icmp sgt i32 %32, %call8
  br i1 %cmp9, label %land.lhs.true, label %if.else14

land.lhs.true:                                    ; preds = %if.else6
  %35 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches = getelementptr inbounds %struct.Path_T, ptr %35, i32 0, i32 19
  %36 = load ptr, ptr %nmismatches, align 8, !tbaa !41
  %call10 = call i32 @Intlist_head(ptr noundef %36)
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %if.then12, label %if.else14

if.then12:                                        ; preds = %land.lhs.true
  %37 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints13 = getelementptr inbounds %struct.Path_T, ptr %37, i32 0, i32 17
  %38 = load ptr, ptr %endpoints13, align 8, !tbaa !40
  %39 = load i32, ptr %splice_qpos.addr, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %38, i32 noundef %39)
  br label %if.end

if.else14:                                        ; preds = %land.lhs.true, %if.else6
  %40 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints15 = getelementptr inbounds %struct.Path_T, ptr %40, i32 0, i32 17
  %41 = load ptr, ptr %endpoints15, align 8, !tbaa !40
  %42 = load i32, ptr %splice_qpos.addr, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %41, i32 noundef %42)
  %43 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches16 = getelementptr inbounds %struct.Path_T, ptr %43, i32 0, i32 19
  %44 = load ptr, ptr %nmismatches16, align 8, !tbaa !41
  call void @Intlist_head_set(ptr noundef %44, i32 noundef -1)
  %45 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches = getelementptr inbounds %struct.Path_T, ptr %45, i32 0, i32 20
  %46 = load ptr, ptr %ref_nmismatches, align 8, !tbaa !42
  call void @Intlist_head_set(ptr noundef %46, i32 noundef -1)
  br label %if.end

if.end:                                           ; preds = %if.else14, %if.then12
  br label %if.end17

if.end17:                                         ; preds = %if.end, %if.then5
  %47 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints18 = getelementptr inbounds %struct.Path_T, ptr %47, i32 0, i32 17
  %48 = load ptr, ptr %endpoints18, align 8, !tbaa !40
  %49 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %50 = load i32, ptr %trimpos, align 4, !tbaa !12
  %call19 = call ptr @Intlistpool_push(ptr noundef %48, ptr noundef %49, i32 noundef %50)
  %51 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints20 = getelementptr inbounds %struct.Path_T, ptr %51, i32 0, i32 17
  store ptr %call19, ptr %endpoints20, align 8, !tbaa !40
  %52 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches21 = getelementptr inbounds %struct.Path_T, ptr %52, i32 0, i32 19
  %53 = load ptr, ptr %nmismatches21, align 8, !tbaa !41
  %54 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %55 = load i32, ptr %nmismatches_to_trimpos, align 4, !tbaa !12
  %call22 = call ptr @Intlistpool_push(ptr noundef %53, ptr noundef %54, i32 noundef %55)
  %56 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches23 = getelementptr inbounds %struct.Path_T, ptr %56, i32 0, i32 19
  store ptr %call22, ptr %nmismatches23, align 8, !tbaa !41
  %57 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches24 = getelementptr inbounds %struct.Path_T, ptr %57, i32 0, i32 20
  %58 = load ptr, ptr %ref_nmismatches24, align 8, !tbaa !42
  %59 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %60 = load i32, ptr %nmismatches_to_trimpos, align 4, !tbaa !12
  %call25 = call ptr @Intlistpool_push(ptr noundef %58, ptr noundef %59, i32 noundef %60)
  %61 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches26 = getelementptr inbounds %struct.Path_T, ptr %61, i32 0, i32 20
  store ptr %call25, ptr %ref_nmismatches26, align 8, !tbaa !42
  %62 = load ptr, ptr %newpath, align 8, !tbaa !5
  %univdiagonals = getelementptr inbounds %struct.Path_T, ptr %62, i32 0, i32 18
  %63 = load ptr, ptr %univdiagonals, align 8, !tbaa !36
  %64 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %65 = load i32, ptr %distal_univdiagonal.addr, align 4, !tbaa !12
  %call27 = call ptr @Uintlistpool_push(ptr noundef %63, ptr noundef %64, i32 noundef %65)
  %66 = load ptr, ptr %newpath, align 8, !tbaa !5
  %univdiagonals28 = getelementptr inbounds %struct.Path_T, ptr %66, i32 0, i32 18
  store ptr %call27, ptr %univdiagonals28, align 8, !tbaa !36
  %67 = load i32, ptr %medial_univdiagonal.addr, align 4, !tbaa !12
  %68 = load i32, ptr %distal_univdiagonal.addr, align 4, !tbaa !12
  %sub = sub i32 %67, %68
  store i32 %sub, ptr %splice_distance, align 4, !tbaa !12
  %69 = load i8, ptr %plusp.addr, align 1, !tbaa !14
  %tobool = icmp ne i8 %69, 0
  br i1 %tobool, label %if.then29, label %if.else46

if.then29:                                        ; preds = %if.end17
  %70 = load i32, ptr %found_sensedir, align 4, !tbaa !12
  %cmp30 = icmp eq i32 %70, 2
  br i1 %cmp30, label %if.then31, label %if.else35

if.then31:                                        ; preds = %if.then29
  %71 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions = getelementptr inbounds %struct.Path_T, ptr %71, i32 0, i32 21
  %72 = load ptr, ptr %junctions, align 8, !tbaa !43
  %73 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %74 = load i32, ptr %splice_distance, align 4, !tbaa !12
  %75 = load double, ptr %distal_prob.addr, align 8, !tbaa !44
  %76 = load double, ptr %medial_prob.addr, align 8, !tbaa !44
  %77 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %call32 = call ptr @Junction_new_splice(i32 noundef %74, i32 noundef 2, double noundef %75, double noundef %76, ptr noundef %77)
  %call33 = call ptr @Listpool_push(ptr noundef %72, ptr noundef %73, ptr noundef %call32)
  %78 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions34 = getelementptr inbounds %struct.Path_T, ptr %78, i32 0, i32 21
  store ptr %call33, ptr %junctions34, align 8, !tbaa !43
  br label %if.end45

if.else35:                                        ; preds = %if.then29
  %79 = load i32, ptr %found_sensedir, align 4, !tbaa !12
  %cmp36 = icmp eq i32 %79, 1
  br i1 %cmp36, label %if.then37, label %if.else42

if.then37:                                        ; preds = %if.else35
  %80 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions38 = getelementptr inbounds %struct.Path_T, ptr %80, i32 0, i32 21
  %81 = load ptr, ptr %junctions38, align 8, !tbaa !43
  %82 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %83 = load i32, ptr %splice_distance, align 4, !tbaa !12
  %84 = load double, ptr %medial_prob.addr, align 8, !tbaa !44
  %85 = load double, ptr %distal_prob.addr, align 8, !tbaa !44
  %86 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %call39 = call ptr @Junction_new_splice(i32 noundef %83, i32 noundef 1, double noundef %84, double noundef %85, ptr noundef %86)
  %call40 = call ptr @Listpool_push(ptr noundef %81, ptr noundef %82, ptr noundef %call39)
  %87 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions41 = getelementptr inbounds %struct.Path_T, ptr %87, i32 0, i32 21
  store ptr %call40, ptr %junctions41, align 8, !tbaa !43
  br label %if.end44

if.else42:                                        ; preds = %if.else35
  %88 = load ptr, ptr @stderr, align 8, !tbaa !5
  %89 = load i32, ptr %found_sensedir, align 4, !tbaa !12
  %call43 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %88, ptr noundef @.str.1, i32 noundef %89)
  call void @abort() #6
  unreachable

if.end44:                                         ; preds = %if.then37
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %if.then31
  br label %if.end64

if.else46:                                        ; preds = %if.end17
  %90 = load i32, ptr %found_sensedir, align 4, !tbaa !12
  %cmp47 = icmp eq i32 %90, 1
  br i1 %cmp47, label %if.then48, label %if.else53

if.then48:                                        ; preds = %if.else46
  %91 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions49 = getelementptr inbounds %struct.Path_T, ptr %91, i32 0, i32 21
  %92 = load ptr, ptr %junctions49, align 8, !tbaa !43
  %93 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %94 = load i32, ptr %splice_distance, align 4, !tbaa !12
  %95 = load double, ptr %distal_prob.addr, align 8, !tbaa !44
  %96 = load double, ptr %medial_prob.addr, align 8, !tbaa !44
  %97 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %call50 = call ptr @Junction_new_splice(i32 noundef %94, i32 noundef 1, double noundef %95, double noundef %96, ptr noundef %97)
  %call51 = call ptr @Listpool_push(ptr noundef %92, ptr noundef %93, ptr noundef %call50)
  %98 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions52 = getelementptr inbounds %struct.Path_T, ptr %98, i32 0, i32 21
  store ptr %call51, ptr %junctions52, align 8, !tbaa !43
  br label %if.end63

if.else53:                                        ; preds = %if.else46
  %99 = load i32, ptr %found_sensedir, align 4, !tbaa !12
  %cmp54 = icmp eq i32 %99, 2
  br i1 %cmp54, label %if.then55, label %if.else60

if.then55:                                        ; preds = %if.else53
  %100 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions56 = getelementptr inbounds %struct.Path_T, ptr %100, i32 0, i32 21
  %101 = load ptr, ptr %junctions56, align 8, !tbaa !43
  %102 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %103 = load i32, ptr %splice_distance, align 4, !tbaa !12
  %104 = load double, ptr %medial_prob.addr, align 8, !tbaa !44
  %105 = load double, ptr %distal_prob.addr, align 8, !tbaa !44
  %106 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %call57 = call ptr @Junction_new_splice(i32 noundef %103, i32 noundef 2, double noundef %104, double noundef %105, ptr noundef %106)
  %call58 = call ptr @Listpool_push(ptr noundef %101, ptr noundef %102, ptr noundef %call57)
  %107 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions59 = getelementptr inbounds %struct.Path_T, ptr %107, i32 0, i32 21
  store ptr %call58, ptr %junctions59, align 8, !tbaa !43
  br label %if.end62

if.else60:                                        ; preds = %if.else53
  %108 = load ptr, ptr @stderr, align 8, !tbaa !5
  %109 = load i32, ptr %found_sensedir, align 4, !tbaa !12
  %call61 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %108, ptr noundef @.str.1, i32 noundef %109)
  call void @abort() #6
  unreachable

if.end62:                                         ; preds = %if.then55
  br label %if.end63

if.end63:                                         ; preds = %if.end62, %if.then48
  br label %if.end64

if.end64:                                         ; preds = %if.end63, %if.end45
  %110 = load ptr, ptr %newpath, align 8, !tbaa !5
  %splice5p65 = getelementptr inbounds %struct.Path_T, ptr %110, i32 0, i32 22
  store i8 0, ptr %splice5p65, align 8, !tbaa !55
  %111 = load ptr, ptr %newpath, align 8, !tbaa !5
  %splicetype566 = getelementptr inbounds %struct.Path_T, ptr %111, i32 0, i32 24
  store i32 0, ptr %splicetype566, align 4, !tbaa !56
  %112 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ambig_prob_567 = getelementptr inbounds %struct.Path_T, ptr %112, i32 0, i32 26
  store double 0.000000e+00, ptr %ambig_prob_567, align 8, !tbaa !57
  %113 = load ptr, ptr %newpath, align 8, !tbaa !5
  store ptr %113, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end64, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %splice_distance) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %ambig_prob_5) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %splicetype5) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr %splice5p) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %found_sensedir) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %exon_origin) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %nmismatches_to_trimpos) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %trimpos) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %newpath) #5
  %114 = load ptr, ptr %retval, align 8
  ret ptr %114
}

declare ptr @Altsplice_new(i32 noundef, double noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #3

declare zeroext i8 @Spliceends_qstart_trim(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) #3

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #3

; Function Attrs: noreturn nounwind
declare void @abort() #4

declare ptr @Path_copy_3(ptr noundef, i8 noundef zeroext, i32 noundef, double noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @Path_expect_rev(ptr noundef %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %this.addr, align 8, !tbaa !5
  ret ptr %0
}

declare i32 @Spliceends_trimmed_qends(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) #3

; Function Attrs: nounwind uwtable
define internal ptr @multiadd_splice_qends(ptr noundef %path, i32 noundef %univdiagonal, i32 noundef %common_splice_qpos, double noundef %common_splice_prob, ptr noundef %distal_splice_positions, ptr noundef %distal_nmismatches, ptr noundef %distal_probs, i32 noundef %npartners, i32 noundef %chrnum, i32 noundef %chroffset, i32 noundef %chrhigh, i32 noundef %querylength, ptr noundef %query_compress, ptr noundef %queryptr, i8 noundef zeroext %plusp, i32 noundef %genestrand, ptr noundef %knownsplicing, ptr noundef %spliceendsgen, ptr noundef %mismatch_positions_alloc, ptr noundef %intlistpool, ptr noundef %univcoordlistpool, ptr noundef %listpool, ptr noundef %hitlistpool, ptr noundef %pathpool, ptr noundef %vectorpool, i32 noundef %found_sensedir) #1 {
entry:
  %retval = alloca ptr, align 8
  %path.addr = alloca ptr, align 8
  %univdiagonal.addr = alloca i32, align 4
  %common_splice_qpos.addr = alloca i32, align 4
  %common_splice_prob.addr = alloca double, align 8
  %distal_splice_positions.addr = alloca ptr, align 8
  %distal_nmismatches.addr = alloca ptr, align 8
  %distal_probs.addr = alloca ptr, align 8
  %npartners.addr = alloca i32, align 4
  %chrnum.addr = alloca i32, align 4
  %chroffset.addr = alloca i32, align 4
  %chrhigh.addr = alloca i32, align 4
  %querylength.addr = alloca i32, align 4
  %query_compress.addr = alloca ptr, align 8
  %queryptr.addr = alloca ptr, align 8
  %plusp.addr = alloca i8, align 1
  %genestrand.addr = alloca i32, align 4
  %knownsplicing.addr = alloca ptr, align 8
  %spliceendsgen.addr = alloca ptr, align 8
  %mismatch_positions_alloc.addr = alloca ptr, align 8
  %intlistpool.addr = alloca ptr, align 8
  %univcoordlistpool.addr = alloca ptr, align 8
  %listpool.addr = alloca ptr, align 8
  %hitlistpool.addr = alloca ptr, align 8
  %pathpool.addr = alloca ptr, align 8
  %vectorpool.addr = alloca ptr, align 8
  %found_sensedir.addr = alloca i32, align 4
  %newpath = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %path, ptr %path.addr, align 8, !tbaa !5
  store i32 %univdiagonal, ptr %univdiagonal.addr, align 4, !tbaa !12
  store i32 %common_splice_qpos, ptr %common_splice_qpos.addr, align 4, !tbaa !12
  store double %common_splice_prob, ptr %common_splice_prob.addr, align 8, !tbaa !44
  store ptr %distal_splice_positions, ptr %distal_splice_positions.addr, align 8, !tbaa !5
  store ptr %distal_nmismatches, ptr %distal_nmismatches.addr, align 8, !tbaa !5
  store ptr %distal_probs, ptr %distal_probs.addr, align 8, !tbaa !5
  store i32 %npartners, ptr %npartners.addr, align 4, !tbaa !12
  store i32 %chrnum, ptr %chrnum.addr, align 4, !tbaa !12
  store i32 %chroffset, ptr %chroffset.addr, align 4, !tbaa !12
  store i32 %chrhigh, ptr %chrhigh.addr, align 4, !tbaa !12
  store i32 %querylength, ptr %querylength.addr, align 4, !tbaa !12
  store ptr %query_compress, ptr %query_compress.addr, align 8, !tbaa !5
  store ptr %queryptr, ptr %queryptr.addr, align 8, !tbaa !5
  store i8 %plusp, ptr %plusp.addr, align 1, !tbaa !14
  store i32 %genestrand, ptr %genestrand.addr, align 4, !tbaa !12
  store ptr %knownsplicing, ptr %knownsplicing.addr, align 8, !tbaa !5
  store ptr %spliceendsgen, ptr %spliceendsgen.addr, align 8, !tbaa !5
  store ptr %mismatch_positions_alloc, ptr %mismatch_positions_alloc.addr, align 8, !tbaa !5
  store ptr %intlistpool, ptr %intlistpool.addr, align 8, !tbaa !5
  store ptr %univcoordlistpool, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  store ptr %listpool, ptr %listpool.addr, align 8, !tbaa !5
  store ptr %hitlistpool, ptr %hitlistpool.addr, align 8, !tbaa !5
  store ptr %pathpool, ptr %pathpool.addr, align 8, !tbaa !5
  store ptr %vectorpool, ptr %vectorpool.addr, align 8, !tbaa !5
  store i32 %found_sensedir, ptr %found_sensedir.addr, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 8, ptr %newpath) #5
  %0 = load i32, ptr %npartners.addr, align 4, !tbaa !12
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.else6

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %2 = load i32, ptr %common_splice_qpos.addr, align 4, !tbaa !12
  %3 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %4 = load i8, ptr %plusp.addr, align 1, !tbaa !14
  %5 = load i32, ptr %genestrand.addr, align 4, !tbaa !12
  %6 = load i32, ptr %found_sensedir.addr, align 4, !tbaa !12
  %7 = load double, ptr %common_splice_prob.addr, align 8, !tbaa !44
  %8 = load ptr, ptr %distal_probs.addr, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds double, ptr %8, i64 0
  %9 = load double, ptr %arrayidx, align 8, !tbaa !44
  %10 = load i32, ptr %univdiagonal.addr, align 4, !tbaa !12
  %11 = load ptr, ptr %distal_splice_positions.addr, align 8, !tbaa !5
  %arrayidx1 = getelementptr inbounds i32, ptr %11, i64 0
  %12 = load i32, ptr %arrayidx1, align 4, !tbaa !12
  %13 = load i32, ptr %common_splice_qpos.addr, align 4, !tbaa !12
  %sub = sub i32 %12, %13
  %14 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %add = add i32 %sub, %14
  %15 = load i32, ptr %chrnum.addr, align 4, !tbaa !12
  %16 = load i32, ptr %chroffset.addr, align 4, !tbaa !12
  %17 = load i32, ptr %chrhigh.addr, align 4, !tbaa !12
  %18 = load ptr, ptr %knownsplicing.addr, align 8, !tbaa !5
  %19 = load ptr, ptr %spliceendsgen.addr, align 8, !tbaa !5
  %20 = load ptr, ptr %mismatch_positions_alloc.addr, align 8, !tbaa !5
  %21 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %22 = load ptr, ptr %queryptr.addr, align 8, !tbaa !5
  %23 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %24 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %25 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %26 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %27 = load ptr, ptr %vectorpool.addr, align 8, !tbaa !5
  %call = call ptr @attach_splice_qend(ptr noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef zeroext %4, i32 noundef %5, i32 noundef %6, double noundef %7, double noundef %9, i32 noundef %10, i32 noundef %add, i32 noundef %15, i32 noundef %16, i32 noundef %17, ptr noundef %18, ptr noundef %19, ptr noundef %20, ptr noundef %21, ptr noundef %22, ptr noundef %23, ptr noundef %24, ptr noundef %25, ptr noundef %26, ptr noundef %27)
  store ptr %call, ptr %newpath, align 8, !tbaa !5
  %cmp2 = icmp eq ptr %call, null
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %if.then
  %28 = load ptr, ptr %hitlistpool.addr, align 8, !tbaa !5
  %29 = load ptr, ptr %newpath, align 8, !tbaa !5
  %call4 = call ptr @Path_expect_rev(ptr noundef %29)
  %call5 = call ptr @Hitlist_push(ptr noundef null, ptr noundef %28, ptr noundef %call4)
  store ptr %call5, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else6:                                         ; preds = %entry
  %30 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %31 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %32 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %33 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %34 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %35 = load ptr, ptr %vectorpool.addr, align 8, !tbaa !5
  %call7 = call ptr @Path_copy_3(ptr noundef %30, i8 noundef zeroext 0, i32 noundef 0, double noundef 0.000000e+00, ptr noundef %31, ptr noundef %32, ptr noundef %33, ptr noundef %34, ptr noundef %35)
  store ptr %call7, ptr %newpath, align 8, !tbaa !5
  %36 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints = getelementptr inbounds %struct.Path_T, ptr %36, i32 0, i32 17
  %37 = load ptr, ptr %endpoints, align 8, !tbaa !40
  %38 = load i32, ptr %common_splice_qpos.addr, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %37, i32 noundef %38)
  %39 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches = getelementptr inbounds %struct.Path_T, ptr %39, i32 0, i32 19
  %40 = load ptr, ptr %nmismatches, align 8, !tbaa !41
  call void @Intlist_head_set(ptr noundef %40, i32 noundef -1)
  %41 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches = getelementptr inbounds %struct.Path_T, ptr %41, i32 0, i32 20
  %42 = load ptr, ptr %ref_nmismatches, align 8, !tbaa !42
  call void @Intlist_head_set(ptr noundef %42, i32 noundef -1)
  %43 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %44 = load i32, ptr %common_splice_qpos.addr, align 4, !tbaa !12
  %sub8 = sub nsw i32 %43, %44
  %45 = load double, ptr %common_splice_prob.addr, align 8, !tbaa !44
  %46 = load ptr, ptr %distal_splice_positions.addr, align 8, !tbaa !5
  %47 = load ptr, ptr %distal_nmismatches.addr, align 8, !tbaa !5
  %48 = load ptr, ptr %distal_probs.addr, align 8, !tbaa !5
  %49 = load i32, ptr %npartners.addr, align 4, !tbaa !12
  %50 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %51 = load ptr, ptr %vectorpool.addr, align 8, !tbaa !5
  %call9 = call ptr @Altsplice_new(i32 noundef %sub8, double noundef %45, ptr noundef %46, ptr noundef %47, ptr noundef %48, i32 noundef %49, ptr noundef %50, ptr noundef %51)
  %52 = load ptr, ptr %newpath, align 8, !tbaa !5
  %qend_alts = getelementptr inbounds %struct.Path_T, ptr %52, i32 0, i32 29
  store ptr %call9, ptr %qend_alts, align 8, !tbaa !59
  %53 = load ptr, ptr %hitlistpool.addr, align 8, !tbaa !5
  %54 = load ptr, ptr %newpath, align 8, !tbaa !5
  %call10 = call ptr @Path_expect_rev(ptr noundef %54)
  %call11 = call ptr @Hitlist_push(ptr noundef null, ptr noundef %53, ptr noundef %call10)
  store ptr %call11, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else6, %if.else, %if.then3
  call void @llvm.lifetime.end.p0(i64 8, ptr %newpath) #5
  %55 = load ptr, ptr %retval, align 8
  ret ptr %55
}

declare i32 @Knownindels_find_lowest(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #3

; Function Attrs: nounwind uwtable
define internal ptr @attach_indel_qend_simple(i32 noundef %adj, ptr noundef %path, i32 noundef %indel_pos, i32 noundef %univdiagonal, i32 noundef %querylength, i32 noundef %try_sensedir, i8 noundef zeroext %plusp, i32 noundef %genestrand, ptr noundef %mismatch_positions_alloc, ptr noundef %knownsplicing, ptr noundef %spliceendsgen, ptr noundef %query_compress, ptr noundef %queryptr, ptr noundef %genomebits, ptr noundef %genomebits_alt, i32 noundef %chrnum, i32 noundef %chroffset, i32 noundef %chrhigh, i8 noundef zeroext %novelsplicingp, ptr noundef %intlistpool, ptr noundef %univcoordlistpool, ptr noundef %listpool, ptr noundef %pathpool, ptr noundef %vectorpool) #1 {
entry:
  %retval = alloca ptr, align 8
  %adj.addr = alloca i32, align 4
  %path.addr = alloca ptr, align 8
  %indel_pos.addr = alloca i32, align 4
  %univdiagonal.addr = alloca i32, align 4
  %querylength.addr = alloca i32, align 4
  %try_sensedir.addr = alloca i32, align 4
  %plusp.addr = alloca i8, align 1
  %genestrand.addr = alloca i32, align 4
  %mismatch_positions_alloc.addr = alloca ptr, align 8
  %knownsplicing.addr = alloca ptr, align 8
  %spliceendsgen.addr = alloca ptr, align 8
  %query_compress.addr = alloca ptr, align 8
  %queryptr.addr = alloca ptr, align 8
  %genomebits.addr = alloca ptr, align 8
  %genomebits_alt.addr = alloca ptr, align 8
  %chrnum.addr = alloca i32, align 4
  %chroffset.addr = alloca i32, align 4
  %chrhigh.addr = alloca i32, align 4
  %novelsplicingp.addr = alloca i8, align 1
  %intlistpool.addr = alloca ptr, align 8
  %univcoordlistpool.addr = alloca ptr, align 8
  %listpool.addr = alloca ptr, align 8
  %pathpool.addr = alloca ptr, align 8
  %vectorpool.addr = alloca ptr, align 8
  %newpath = alloca ptr, align 8
  %deletionpos = alloca i32, align 4
  %distal_univdiagonal = alloca i32, align 4
  %trimpos = alloca i32, align 4
  %nmismatches_to_trimpos = alloca i32, align 4
  %exon_origin = alloca i32, align 4
  %found_sensedir = alloca i32, align 4
  %splice3p = alloca i8, align 1
  %splicetype3 = alloca i32, align 4
  %ambig_prob_3 = alloca double, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %adj, ptr %adj.addr, align 4, !tbaa !12
  store ptr %path, ptr %path.addr, align 8, !tbaa !5
  store i32 %indel_pos, ptr %indel_pos.addr, align 4, !tbaa !12
  store i32 %univdiagonal, ptr %univdiagonal.addr, align 4, !tbaa !12
  store i32 %querylength, ptr %querylength.addr, align 4, !tbaa !12
  store i32 %try_sensedir, ptr %try_sensedir.addr, align 4, !tbaa !12
  store i8 %plusp, ptr %plusp.addr, align 1, !tbaa !14
  store i32 %genestrand, ptr %genestrand.addr, align 4, !tbaa !12
  store ptr %mismatch_positions_alloc, ptr %mismatch_positions_alloc.addr, align 8, !tbaa !5
  store ptr %knownsplicing, ptr %knownsplicing.addr, align 8, !tbaa !5
  store ptr %spliceendsgen, ptr %spliceendsgen.addr, align 8, !tbaa !5
  store ptr %query_compress, ptr %query_compress.addr, align 8, !tbaa !5
  store ptr %queryptr, ptr %queryptr.addr, align 8, !tbaa !5
  store ptr %genomebits, ptr %genomebits.addr, align 8, !tbaa !5
  store ptr %genomebits_alt, ptr %genomebits_alt.addr, align 8, !tbaa !5
  store i32 %chrnum, ptr %chrnum.addr, align 4, !tbaa !12
  store i32 %chroffset, ptr %chroffset.addr, align 4, !tbaa !12
  store i32 %chrhigh, ptr %chrhigh.addr, align 4, !tbaa !12
  store i8 %novelsplicingp, ptr %novelsplicingp.addr, align 1, !tbaa !14
  store ptr %intlistpool, ptr %intlistpool.addr, align 8, !tbaa !5
  store ptr %univcoordlistpool, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  store ptr %listpool, ptr %listpool.addr, align 8, !tbaa !5
  store ptr %pathpool, ptr %pathpool.addr, align 8, !tbaa !5
  store ptr %vectorpool, ptr %vectorpool.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %newpath) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %deletionpos) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %distal_univdiagonal) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %trimpos) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %nmismatches_to_trimpos) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %exon_origin) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %found_sensedir) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr %splice3p) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %splicetype3) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %ambig_prob_3) #5
  %0 = load i32, ptr %univdiagonal.addr, align 4, !tbaa !12
  %1 = load i32, ptr %adj.addr, align 4, !tbaa !12
  %add = add i32 %0, %1
  store i32 %add, ptr %distal_univdiagonal, align 4, !tbaa !12
  %2 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %call = call i32 @Path_exon_origin(ptr noundef %2)
  store i32 %call, ptr %exon_origin, align 4, !tbaa !12
  %3 = load ptr, ptr %knownsplicing.addr, align 8, !tbaa !5
  %4 = load i32, ptr %try_sensedir.addr, align 4, !tbaa !12
  %5 = load i32, ptr %distal_univdiagonal, align 4, !tbaa !12
  %6 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %7 = load i32, ptr %indel_pos.addr, align 4, !tbaa !12
  %8 = load i32, ptr %exon_origin, align 4, !tbaa !12
  %9 = load i32, ptr %chrnum.addr, align 4, !tbaa !12
  %10 = load i32, ptr %chroffset.addr, align 4, !tbaa !12
  %11 = load i32, ptr %chrhigh.addr, align 4, !tbaa !12
  %12 = load i8, ptr %plusp.addr, align 1, !tbaa !14
  %13 = load i32, ptr %genestrand.addr, align 4, !tbaa !12
  %14 = load ptr, ptr %mismatch_positions_alloc.addr, align 8, !tbaa !5
  %15 = load ptr, ptr %spliceendsgen.addr, align 8, !tbaa !5
  %16 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %17 = load ptr, ptr %queryptr.addr, align 8, !tbaa !5
  %18 = load ptr, ptr %genomebits.addr, align 8, !tbaa !5
  %19 = load ptr, ptr %genomebits_alt.addr, align 8, !tbaa !5
  %20 = load i8, ptr %novelsplicingp.addr, align 1, !tbaa !14
  %call1 = call zeroext i8 @Spliceends_qend_trim(ptr noundef %trimpos, ptr noundef %nmismatches_to_trimpos, ptr noundef %found_sensedir, ptr noundef %splicetype3, ptr noundef %ambig_prob_3, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i8 noundef zeroext %12, i32 noundef %13, ptr noundef %14, ptr noundef %15, ptr noundef %16, ptr noundef %17, ptr noundef %18, ptr noundef %19, i8 noundef zeroext %20)
  store i8 %call1, ptr %splice3p, align 1, !tbaa !14
  %21 = load i32, ptr %trimpos, align 4, !tbaa !12
  %22 = load i32, ptr %indel_pos.addr, align 4, !tbaa !12
  %cmp = icmp eq i32 %21, %22
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %entry
  %23 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %24 = load i8, ptr %splice3p, align 1, !tbaa !14
  %25 = load i32, ptr %splicetype3, align 4, !tbaa !14
  %26 = load double, ptr %ambig_prob_3, align 8, !tbaa !44
  %27 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %28 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %29 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %30 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %31 = load ptr, ptr %vectorpool.addr, align 8, !tbaa !5
  %call2 = call ptr @Path_copy_3(ptr noundef %23, i8 noundef zeroext %24, i32 noundef %25, double noundef %26, ptr noundef %27, ptr noundef %28, ptr noundef %29, ptr noundef %30, ptr noundef %31)
  store ptr %call2, ptr %newpath, align 8, !tbaa !5
  %32 = load i32, ptr %indel_pos.addr, align 4, !tbaa !12
  %33 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints = getelementptr inbounds %struct.Path_T, ptr %33, i32 0, i32 17
  %34 = load ptr, ptr %endpoints, align 8, !tbaa !40
  %call3 = call i32 @Intlist_head(ptr noundef %34)
  %cmp4 = icmp eq i32 %32, %call3
  br i1 %cmp4, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.else
  br label %if.end17

if.else6:                                         ; preds = %if.else
  %35 = load i32, ptr %indel_pos.addr, align 4, !tbaa !12
  %36 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints7 = getelementptr inbounds %struct.Path_T, ptr %36, i32 0, i32 17
  %37 = load ptr, ptr %endpoints7, align 8, !tbaa !40
  %call8 = call i32 @Intlist_head(ptr noundef %37)
  %cmp9 = icmp sgt i32 %35, %call8
  br i1 %cmp9, label %land.lhs.true, label %if.else14

land.lhs.true:                                    ; preds = %if.else6
  %38 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches = getelementptr inbounds %struct.Path_T, ptr %38, i32 0, i32 19
  %39 = load ptr, ptr %nmismatches, align 8, !tbaa !41
  %call10 = call i32 @Intlist_head(ptr noundef %39)
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %if.then12, label %if.else14

if.then12:                                        ; preds = %land.lhs.true
  %40 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints13 = getelementptr inbounds %struct.Path_T, ptr %40, i32 0, i32 17
  %41 = load ptr, ptr %endpoints13, align 8, !tbaa !40
  %42 = load i32, ptr %indel_pos.addr, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %41, i32 noundef %42)
  br label %if.end

if.else14:                                        ; preds = %land.lhs.true, %if.else6
  %43 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints15 = getelementptr inbounds %struct.Path_T, ptr %43, i32 0, i32 17
  %44 = load ptr, ptr %endpoints15, align 8, !tbaa !40
  %45 = load i32, ptr %indel_pos.addr, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %44, i32 noundef %45)
  %46 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches16 = getelementptr inbounds %struct.Path_T, ptr %46, i32 0, i32 19
  %47 = load ptr, ptr %nmismatches16, align 8, !tbaa !41
  call void @Intlist_head_set(ptr noundef %47, i32 noundef -1)
  %48 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches = getelementptr inbounds %struct.Path_T, ptr %48, i32 0, i32 20
  %49 = load ptr, ptr %ref_nmismatches, align 8, !tbaa !42
  call void @Intlist_head_set(ptr noundef %49, i32 noundef -1)
  br label %if.end

if.end:                                           ; preds = %if.else14, %if.then12
  br label %if.end17

if.end17:                                         ; preds = %if.end, %if.then5
  %50 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints18 = getelementptr inbounds %struct.Path_T, ptr %50, i32 0, i32 17
  %51 = load ptr, ptr %endpoints18, align 8, !tbaa !40
  %52 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %53 = load i32, ptr %trimpos, align 4, !tbaa !12
  %call19 = call ptr @Intlistpool_push(ptr noundef %51, ptr noundef %52, i32 noundef %53)
  %54 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints20 = getelementptr inbounds %struct.Path_T, ptr %54, i32 0, i32 17
  store ptr %call19, ptr %endpoints20, align 8, !tbaa !40
  %55 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches21 = getelementptr inbounds %struct.Path_T, ptr %55, i32 0, i32 19
  %56 = load ptr, ptr %nmismatches21, align 8, !tbaa !41
  %57 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %58 = load i32, ptr %nmismatches_to_trimpos, align 4, !tbaa !12
  %call22 = call ptr @Intlistpool_push(ptr noundef %56, ptr noundef %57, i32 noundef %58)
  %59 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches23 = getelementptr inbounds %struct.Path_T, ptr %59, i32 0, i32 19
  store ptr %call22, ptr %nmismatches23, align 8, !tbaa !41
  %60 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches24 = getelementptr inbounds %struct.Path_T, ptr %60, i32 0, i32 20
  %61 = load ptr, ptr %ref_nmismatches24, align 8, !tbaa !42
  %62 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %63 = load i32, ptr %nmismatches_to_trimpos, align 4, !tbaa !12
  %call25 = call ptr @Intlistpool_push(ptr noundef %61, ptr noundef %62, i32 noundef %63)
  %64 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches26 = getelementptr inbounds %struct.Path_T, ptr %64, i32 0, i32 20
  store ptr %call25, ptr %ref_nmismatches26, align 8, !tbaa !42
  %65 = load ptr, ptr %newpath, align 8, !tbaa !5
  %univdiagonals = getelementptr inbounds %struct.Path_T, ptr %65, i32 0, i32 18
  %66 = load ptr, ptr %univdiagonals, align 8, !tbaa !36
  %67 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %68 = load i32, ptr %distal_univdiagonal, align 4, !tbaa !12
  %call27 = call ptr @Uintlistpool_push(ptr noundef %66, ptr noundef %67, i32 noundef %68)
  %69 = load ptr, ptr %newpath, align 8, !tbaa !5
  %univdiagonals28 = getelementptr inbounds %struct.Path_T, ptr %69, i32 0, i32 18
  store ptr %call27, ptr %univdiagonals28, align 8, !tbaa !36
  %70 = load i32, ptr %adj.addr, align 4, !tbaa !12
  %cmp29 = icmp slt i32 %70, 0
  br i1 %cmp29, label %if.then30, label %if.else34

if.then30:                                        ; preds = %if.end17
  %71 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions = getelementptr inbounds %struct.Path_T, ptr %71, i32 0, i32 21
  %72 = load ptr, ptr %junctions, align 8, !tbaa !43
  %73 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %74 = load i32, ptr %adj.addr, align 4, !tbaa !12
  %sub = sub nsw i32 0, %74
  %75 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %call31 = call ptr @Junction_new_insertion(i32 noundef %sub, ptr noundef %75)
  %call32 = call ptr @Listpool_push(ptr noundef %72, ptr noundef %73, ptr noundef %call31)
  %76 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions33 = getelementptr inbounds %struct.Path_T, ptr %76, i32 0, i32 21
  store ptr %call32, ptr %junctions33, align 8, !tbaa !43
  br label %if.end41

if.else34:                                        ; preds = %if.end17
  %77 = load i32, ptr %univdiagonal.addr, align 4, !tbaa !12
  %78 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %sub35 = sub i32 %77, %78
  %79 = load i32, ptr %indel_pos.addr, align 4, !tbaa !12
  %add36 = add i32 %sub35, %79
  store i32 %add36, ptr %deletionpos, align 4, !tbaa !12
  %80 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions37 = getelementptr inbounds %struct.Path_T, ptr %80, i32 0, i32 21
  %81 = load ptr, ptr %junctions37, align 8, !tbaa !43
  %82 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %83 = load i32, ptr %adj.addr, align 4, !tbaa !12
  %84 = load i32, ptr %deletionpos, align 4, !tbaa !12
  %85 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %call38 = call ptr @Junction_new_deletion(i32 noundef %83, i32 noundef %84, ptr noundef %85)
  %call39 = call ptr @Listpool_push(ptr noundef %81, ptr noundef %82, ptr noundef %call38)
  %86 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions40 = getelementptr inbounds %struct.Path_T, ptr %86, i32 0, i32 21
  store ptr %call39, ptr %junctions40, align 8, !tbaa !43
  br label %if.end41

if.end41:                                         ; preds = %if.else34, %if.then30
  %87 = load ptr, ptr %newpath, align 8, !tbaa !5
  store ptr %87, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ambig_prob_3) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %splicetype3) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr %splice3p) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %found_sensedir) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %exon_origin) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %nmismatches_to_trimpos) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %trimpos) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %distal_univdiagonal) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %deletionpos) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %newpath) #5
  %88 = load ptr, ptr %retval, align 8
  ret ptr %88
}

declare i32 @Genomebits_indel_solve_high(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) #3

; Function Attrs: nounwind uwtable
define internal ptr @attach_indel_qend(ptr noundef %path, i32 noundef %high_univdiagonal, i32 noundef %high_qend, i32 noundef %querylength, ptr noundef %indelinfo, ptr noundef %query_compress, i8 noundef zeroext %plusp, i32 noundef %genestrand, i32 noundef %nmismatches_allowed, i32 noundef %max_insertionlen, i32 noundef %max_deletionlen, ptr noundef %intlistpool, ptr noundef %univcoordlistpool, ptr noundef %listpool, ptr noundef %pathpool, ptr noundef %vectorpool) #1 {
entry:
  %path.addr = alloca ptr, align 8
  %high_univdiagonal.addr = alloca i32, align 4
  %high_qend.addr = alloca i32, align 4
  %querylength.addr = alloca i32, align 4
  %indelinfo.addr = alloca ptr, align 8
  %query_compress.addr = alloca ptr, align 8
  %plusp.addr = alloca i8, align 1
  %genestrand.addr = alloca i32, align 4
  %nmismatches_allowed.addr = alloca i32, align 4
  %max_insertionlen.addr = alloca i32, align 4
  %max_deletionlen.addr = alloca i32, align 4
  %intlistpool.addr = alloca ptr, align 8
  %univcoordlistpool.addr = alloca ptr, align 8
  %listpool.addr = alloca ptr, align 8
  %pathpool.addr = alloca ptr, align 8
  %vectorpool.addr = alloca ptr, align 8
  %newpath = alloca ptr, align 8
  %univdiagonal = alloca i32, align 4
  %qstart = alloca i32, align 4
  %ninserts = alloca i32, align 4
  %nindels = alloca i32, align 4
  %indel_pos = alloca i32, align 4
  %deletionpos = alloca i32, align 4
  %nmismatches_i = alloca i32, align 4
  %nmismatches_j = alloca i32, align 4
  %ref_nmismatches_i = alloca i32, align 4
  %ref_nmismatches_j = alloca i32, align 4
  store ptr %path, ptr %path.addr, align 8, !tbaa !5
  store i32 %high_univdiagonal, ptr %high_univdiagonal.addr, align 4, !tbaa !12
  store i32 %high_qend, ptr %high_qend.addr, align 4, !tbaa !12
  store i32 %querylength, ptr %querylength.addr, align 4, !tbaa !12
  store ptr %indelinfo, ptr %indelinfo.addr, align 8, !tbaa !5
  store ptr %query_compress, ptr %query_compress.addr, align 8, !tbaa !5
  store i8 %plusp, ptr %plusp.addr, align 1, !tbaa !14
  store i32 %genestrand, ptr %genestrand.addr, align 4, !tbaa !12
  store i32 %nmismatches_allowed, ptr %nmismatches_allowed.addr, align 4, !tbaa !12
  store i32 %max_insertionlen, ptr %max_insertionlen.addr, align 4, !tbaa !12
  store i32 %max_deletionlen, ptr %max_deletionlen.addr, align 4, !tbaa !12
  store ptr %intlistpool, ptr %intlistpool.addr, align 8, !tbaa !5
  store ptr %univcoordlistpool, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  store ptr %listpool, ptr %listpool.addr, align 8, !tbaa !5
  store ptr %pathpool, ptr %pathpool.addr, align 8, !tbaa !5
  store ptr %vectorpool, ptr %vectorpool.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %newpath) #5
  store ptr null, ptr %newpath, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %univdiagonal) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %qstart) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %ninserts) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %nindels) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %indel_pos) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %deletionpos) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %nmismatches_i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %nmismatches_j) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %ref_nmismatches_i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %ref_nmismatches_j) #5
  %0 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %univdiagonals = getelementptr inbounds %struct.Path_T, ptr %0, i32 0, i32 18
  %1 = load ptr, ptr %univdiagonals, align 8, !tbaa !36
  %call = call i32 @Uintlist_head(ptr noundef %1)
  store i32 %call, ptr %univdiagonal, align 4, !tbaa !12
  %2 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %junctions = getelementptr inbounds %struct.Path_T, ptr %2, i32 0, i32 21
  %3 = load ptr, ptr %junctions, align 8, !tbaa !43
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, ptr %ninserts, align 4, !tbaa !12
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %junctions1 = getelementptr inbounds %struct.Path_T, ptr %4, i32 0, i32 21
  %5 = load ptr, ptr %junctions1, align 8, !tbaa !43
  %call2 = call ptr @List_head(ptr noundef %5)
  %call3 = call i32 @Junction_ninserts(ptr noundef %call2)
  store i32 %call3, ptr %ninserts, align 4, !tbaa !12
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %endpoints = getelementptr inbounds %struct.Path_T, ptr %6, i32 0, i32 17
  %7 = load ptr, ptr %endpoints, align 8, !tbaa !40
  %call4 = call ptr @Intlist_next(ptr noundef %7)
  %call5 = call i32 @Intlist_head(ptr noundef %call4)
  %8 = load i32, ptr %ninserts, align 4, !tbaa !12
  %add = add nsw i32 %call5, %8
  store i32 %add, ptr %qstart, align 4, !tbaa !12
  %9 = load i32, ptr %high_univdiagonal.addr, align 4, !tbaa !12
  %10 = load i32, ptr %max_insertionlen.addr, align 4, !tbaa !12
  %add6 = add i32 %9, %10
  %11 = load i32, ptr %univdiagonal, align 4, !tbaa !12
  %cmp7 = icmp ult i32 %add6, %11
  br i1 %cmp7, label %if.then8, label %if.else9

if.then8:                                         ; preds = %if.end
  br label %if.end70

if.else9:                                         ; preds = %if.end
  %12 = load i32, ptr %high_univdiagonal.addr, align 4, !tbaa !12
  %13 = load i32, ptr %univdiagonal, align 4, !tbaa !12
  %cmp10 = icmp ult i32 %12, %13
  br i1 %cmp10, label %if.then11, label %if.else35

if.then11:                                        ; preds = %if.else9
  %14 = load i32, ptr %univdiagonal, align 4, !tbaa !12
  %15 = load i32, ptr %high_univdiagonal.addr, align 4, !tbaa !12
  %sub = sub i32 %14, %15
  store i32 %sub, ptr %nindels, align 4, !tbaa !12
  %16 = load i32, ptr %univdiagonal, align 4, !tbaa !12
  %17 = load i32, ptr %nindels, align 4, !tbaa !12
  %18 = load ptr, ptr @genomebits, align 8, !tbaa !5
  %19 = load ptr, ptr @genomebits_alt, align 8, !tbaa !5
  %20 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %21 = load i32, ptr %qstart, align 4, !tbaa !12
  %22 = load i32, ptr %high_qend.addr, align 4, !tbaa !12
  %23 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %24 = load ptr, ptr %indelinfo.addr, align 8, !tbaa !5
  %25 = load i8, ptr %plusp.addr, align 1, !tbaa !14
  %26 = load i32, ptr %genestrand.addr, align 4, !tbaa !12
  %call12 = call i32 @Indel_resolve_middle_insertion(ptr noundef %nmismatches_i, ptr noundef %nmismatches_j, ptr noundef %ref_nmismatches_i, ptr noundef %ref_nmismatches_j, i32 noundef %16, i32 noundef %17, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef %18, ptr noundef %19, ptr noundef %20, i32 noundef %21, i32 noundef %22, i32 noundef %23, ptr noundef %24, i8 noundef zeroext %25, i32 noundef %26, i8 noundef zeroext 1)
  store i32 %call12, ptr %indel_pos, align 4, !tbaa !12
  %cmp13 = icmp sle i32 %call12, 0
  br i1 %cmp13, label %if.then14, label %if.else15

if.then14:                                        ; preds = %if.then11
  br label %if.end34

if.else15:                                        ; preds = %if.then11
  %27 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %28 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %29 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %30 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %31 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %32 = load ptr, ptr %vectorpool.addr, align 8, !tbaa !5
  %call16 = call ptr @Path_copy_3(ptr noundef %27, i8 noundef zeroext 0, i32 noundef 0, double noundef 0.000000e+00, ptr noundef %28, ptr noundef %29, ptr noundef %30, ptr noundef %31, ptr noundef %32)
  store ptr %call16, ptr %newpath, align 8, !tbaa !5
  %33 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints17 = getelementptr inbounds %struct.Path_T, ptr %33, i32 0, i32 17
  %34 = load ptr, ptr %endpoints17, align 8, !tbaa !40
  %35 = load i32, ptr %indel_pos, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %34, i32 noundef %35)
  %36 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints18 = getelementptr inbounds %struct.Path_T, ptr %36, i32 0, i32 17
  %37 = load ptr, ptr %endpoints18, align 8, !tbaa !40
  %38 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %39 = load i32, ptr %high_qend.addr, align 4, !tbaa !12
  %call19 = call ptr @Intlistpool_push(ptr noundef %37, ptr noundef %38, i32 noundef %39)
  %40 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints20 = getelementptr inbounds %struct.Path_T, ptr %40, i32 0, i32 17
  store ptr %call19, ptr %endpoints20, align 8, !tbaa !40
  %41 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions21 = getelementptr inbounds %struct.Path_T, ptr %41, i32 0, i32 21
  %42 = load ptr, ptr %junctions21, align 8, !tbaa !43
  %43 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %44 = load i32, ptr %nindels, align 4, !tbaa !12
  %45 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %call22 = call ptr @Junction_new_insertion(i32 noundef %44, ptr noundef %45)
  %call23 = call ptr @Listpool_push(ptr noundef %42, ptr noundef %43, ptr noundef %call22)
  %46 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions24 = getelementptr inbounds %struct.Path_T, ptr %46, i32 0, i32 21
  store ptr %call23, ptr %junctions24, align 8, !tbaa !43
  %47 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches = getelementptr inbounds %struct.Path_T, ptr %47, i32 0, i32 19
  %48 = load ptr, ptr %nmismatches, align 8, !tbaa !41
  %49 = load i32, ptr %nmismatches_i, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %48, i32 noundef %49)
  %50 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches = getelementptr inbounds %struct.Path_T, ptr %50, i32 0, i32 20
  %51 = load ptr, ptr %ref_nmismatches, align 8, !tbaa !42
  %52 = load i32, ptr %nmismatches_i, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %51, i32 noundef %52)
  %53 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches25 = getelementptr inbounds %struct.Path_T, ptr %53, i32 0, i32 19
  %54 = load ptr, ptr %nmismatches25, align 8, !tbaa !41
  %55 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %56 = load i32, ptr %nmismatches_j, align 4, !tbaa !12
  %call26 = call ptr @Intlistpool_push(ptr noundef %54, ptr noundef %55, i32 noundef %56)
  %57 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches27 = getelementptr inbounds %struct.Path_T, ptr %57, i32 0, i32 19
  store ptr %call26, ptr %nmismatches27, align 8, !tbaa !41
  %58 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches28 = getelementptr inbounds %struct.Path_T, ptr %58, i32 0, i32 20
  %59 = load ptr, ptr %ref_nmismatches28, align 8, !tbaa !42
  %60 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %61 = load i32, ptr %nmismatches_j, align 4, !tbaa !12
  %call29 = call ptr @Intlistpool_push(ptr noundef %59, ptr noundef %60, i32 noundef %61)
  %62 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches30 = getelementptr inbounds %struct.Path_T, ptr %62, i32 0, i32 20
  store ptr %call29, ptr %ref_nmismatches30, align 8, !tbaa !42
  %63 = load ptr, ptr %newpath, align 8, !tbaa !5
  %univdiagonals31 = getelementptr inbounds %struct.Path_T, ptr %63, i32 0, i32 18
  %64 = load ptr, ptr %univdiagonals31, align 8, !tbaa !36
  %65 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %66 = load i32, ptr %high_univdiagonal.addr, align 4, !tbaa !12
  %call32 = call ptr @Uintlistpool_push(ptr noundef %64, ptr noundef %65, i32 noundef %66)
  %67 = load ptr, ptr %newpath, align 8, !tbaa !5
  %univdiagonals33 = getelementptr inbounds %struct.Path_T, ptr %67, i32 0, i32 18
  store ptr %call32, ptr %univdiagonals33, align 8, !tbaa !36
  br label %if.end34

if.end34:                                         ; preds = %if.else15, %if.then14
  br label %if.end69

if.else35:                                        ; preds = %if.else9
  %68 = load i32, ptr %high_univdiagonal.addr, align 4, !tbaa !12
  %69 = load i32, ptr %univdiagonal, align 4, !tbaa !12
  %70 = load i32, ptr %max_deletionlen.addr, align 4, !tbaa !12
  %add36 = add i32 %69, %70
  %cmp37 = icmp ule i32 %68, %add36
  br i1 %cmp37, label %if.then38, label %if.end68

if.then38:                                        ; preds = %if.else35
  %71 = load i32, ptr %high_univdiagonal.addr, align 4, !tbaa !12
  %72 = load i32, ptr %univdiagonal, align 4, !tbaa !12
  %sub39 = sub i32 %71, %72
  store i32 %sub39, ptr %nindels, align 4, !tbaa !12
  %73 = load i32, ptr %univdiagonal, align 4, !tbaa !12
  %74 = load i32, ptr %nindels, align 4, !tbaa !12
  %sub40 = sub nsw i32 0, %74
  %75 = load ptr, ptr @genomebits, align 8, !tbaa !5
  %76 = load ptr, ptr @genomebits_alt, align 8, !tbaa !5
  %77 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %78 = load i32, ptr %qstart, align 4, !tbaa !12
  %79 = load i32, ptr %high_qend.addr, align 4, !tbaa !12
  %80 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %81 = load ptr, ptr %indelinfo.addr, align 8, !tbaa !5
  %82 = load i8, ptr %plusp.addr, align 1, !tbaa !14
  %83 = load i32, ptr %genestrand.addr, align 4, !tbaa !12
  %call41 = call i32 @Indel_resolve_middle_deletion(ptr noundef %nmismatches_i, ptr noundef %nmismatches_j, ptr noundef %ref_nmismatches_i, ptr noundef %ref_nmismatches_j, i32 noundef %73, i32 noundef %sub40, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef %75, ptr noundef %76, ptr noundef %77, i32 noundef %78, i32 noundef %79, i32 noundef %80, ptr noundef %81, i8 noundef zeroext %82, i32 noundef %83, i8 noundef zeroext 1)
  store i32 %call41, ptr %indel_pos, align 4, !tbaa !12
  %cmp42 = icmp sle i32 %call41, 0
  br i1 %cmp42, label %if.then43, label %if.else44

if.then43:                                        ; preds = %if.then38
  br label %if.end67

if.else44:                                        ; preds = %if.then38
  %84 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %85 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %86 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %87 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %88 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %89 = load ptr, ptr %vectorpool.addr, align 8, !tbaa !5
  %call45 = call ptr @Path_copy_3(ptr noundef %84, i8 noundef zeroext 0, i32 noundef 0, double noundef 0.000000e+00, ptr noundef %85, ptr noundef %86, ptr noundef %87, ptr noundef %88, ptr noundef %89)
  store ptr %call45, ptr %newpath, align 8, !tbaa !5
  %90 = load i32, ptr %univdiagonal, align 4, !tbaa !12
  %91 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %sub46 = sub i32 %90, %91
  %92 = load i32, ptr %indel_pos, align 4, !tbaa !12
  %add47 = add i32 %sub46, %92
  store i32 %add47, ptr %deletionpos, align 4, !tbaa !12
  %93 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions48 = getelementptr inbounds %struct.Path_T, ptr %93, i32 0, i32 21
  %94 = load ptr, ptr %junctions48, align 8, !tbaa !43
  %95 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %96 = load i32, ptr %nindels, align 4, !tbaa !12
  %97 = load i32, ptr %deletionpos, align 4, !tbaa !12
  %98 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %call49 = call ptr @Junction_new_deletion(i32 noundef %96, i32 noundef %97, ptr noundef %98)
  %call50 = call ptr @Listpool_push(ptr noundef %94, ptr noundef %95, ptr noundef %call49)
  %99 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions51 = getelementptr inbounds %struct.Path_T, ptr %99, i32 0, i32 21
  store ptr %call50, ptr %junctions51, align 8, !tbaa !43
  %100 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints52 = getelementptr inbounds %struct.Path_T, ptr %100, i32 0, i32 17
  %101 = load ptr, ptr %endpoints52, align 8, !tbaa !40
  %102 = load i32, ptr %indel_pos, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %101, i32 noundef %102)
  %103 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints53 = getelementptr inbounds %struct.Path_T, ptr %103, i32 0, i32 17
  %104 = load ptr, ptr %endpoints53, align 8, !tbaa !40
  %105 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %106 = load i32, ptr %high_qend.addr, align 4, !tbaa !12
  %call54 = call ptr @Intlistpool_push(ptr noundef %104, ptr noundef %105, i32 noundef %106)
  %107 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints55 = getelementptr inbounds %struct.Path_T, ptr %107, i32 0, i32 17
  store ptr %call54, ptr %endpoints55, align 8, !tbaa !40
  %108 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches56 = getelementptr inbounds %struct.Path_T, ptr %108, i32 0, i32 19
  %109 = load ptr, ptr %nmismatches56, align 8, !tbaa !41
  %110 = load i32, ptr %nmismatches_i, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %109, i32 noundef %110)
  %111 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches57 = getelementptr inbounds %struct.Path_T, ptr %111, i32 0, i32 20
  %112 = load ptr, ptr %ref_nmismatches57, align 8, !tbaa !42
  %113 = load i32, ptr %nmismatches_i, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %112, i32 noundef %113)
  %114 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches58 = getelementptr inbounds %struct.Path_T, ptr %114, i32 0, i32 19
  %115 = load ptr, ptr %nmismatches58, align 8, !tbaa !41
  %116 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %117 = load i32, ptr %nmismatches_j, align 4, !tbaa !12
  %call59 = call ptr @Intlistpool_push(ptr noundef %115, ptr noundef %116, i32 noundef %117)
  %118 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches60 = getelementptr inbounds %struct.Path_T, ptr %118, i32 0, i32 19
  store ptr %call59, ptr %nmismatches60, align 8, !tbaa !41
  %119 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches61 = getelementptr inbounds %struct.Path_T, ptr %119, i32 0, i32 20
  %120 = load ptr, ptr %ref_nmismatches61, align 8, !tbaa !42
  %121 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %122 = load i32, ptr %nmismatches_j, align 4, !tbaa !12
  %call62 = call ptr @Intlistpool_push(ptr noundef %120, ptr noundef %121, i32 noundef %122)
  %123 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches63 = getelementptr inbounds %struct.Path_T, ptr %123, i32 0, i32 20
  store ptr %call62, ptr %ref_nmismatches63, align 8, !tbaa !42
  %124 = load ptr, ptr %newpath, align 8, !tbaa !5
  %univdiagonals64 = getelementptr inbounds %struct.Path_T, ptr %124, i32 0, i32 18
  %125 = load ptr, ptr %univdiagonals64, align 8, !tbaa !36
  %126 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %127 = load i32, ptr %high_univdiagonal.addr, align 4, !tbaa !12
  %call65 = call ptr @Uintlistpool_push(ptr noundef %125, ptr noundef %126, i32 noundef %127)
  %128 = load ptr, ptr %newpath, align 8, !tbaa !5
  %univdiagonals66 = getelementptr inbounds %struct.Path_T, ptr %128, i32 0, i32 18
  store ptr %call65, ptr %univdiagonals66, align 8, !tbaa !36
  br label %if.end67

if.end67:                                         ; preds = %if.else44, %if.then43
  br label %if.end68

if.end68:                                         ; preds = %if.end67, %if.else35
  br label %if.end69

if.end69:                                         ; preds = %if.end68, %if.end34
  br label %if.end70

if.end70:                                         ; preds = %if.end69, %if.then8
  %129 = load ptr, ptr %newpath, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 4, ptr %ref_nmismatches_j) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %ref_nmismatches_i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %nmismatches_j) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %nmismatches_i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %deletionpos) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %indel_pos) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %nindels) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %ninserts) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %qstart) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %univdiagonal) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %newpath) #5
  ret ptr %129
}

; Function Attrs: nounwind uwtable
define internal ptr @attach_splice_qend(ptr noundef %path, i32 noundef %splice_qpos, i32 noundef %querylength, i8 noundef zeroext %plusp, i32 noundef %genestrand, i32 noundef %try_sensedir, double noundef %medial_prob, double noundef %distal_prob, i32 noundef %medial_univdiagonal, i32 noundef %distal_univdiagonal, i32 noundef %chrnum, i32 noundef %chroffset, i32 noundef %chrhigh, ptr noundef %knownsplicing, ptr noundef %spliceendsgen, ptr noundef %mismatch_positions_alloc, ptr noundef %query_compress, ptr noundef %queryptr, ptr noundef %intlistpool, ptr noundef %univcoordlistpool, ptr noundef %listpool, ptr noundef %pathpool, ptr noundef %vectorpool) #1 {
entry:
  %retval = alloca ptr, align 8
  %path.addr = alloca ptr, align 8
  %splice_qpos.addr = alloca i32, align 4
  %querylength.addr = alloca i32, align 4
  %plusp.addr = alloca i8, align 1
  %genestrand.addr = alloca i32, align 4
  %try_sensedir.addr = alloca i32, align 4
  %medial_prob.addr = alloca double, align 8
  %distal_prob.addr = alloca double, align 8
  %medial_univdiagonal.addr = alloca i32, align 4
  %distal_univdiagonal.addr = alloca i32, align 4
  %chrnum.addr = alloca i32, align 4
  %chroffset.addr = alloca i32, align 4
  %chrhigh.addr = alloca i32, align 4
  %knownsplicing.addr = alloca ptr, align 8
  %spliceendsgen.addr = alloca ptr, align 8
  %mismatch_positions_alloc.addr = alloca ptr, align 8
  %query_compress.addr = alloca ptr, align 8
  %queryptr.addr = alloca ptr, align 8
  %intlistpool.addr = alloca ptr, align 8
  %univcoordlistpool.addr = alloca ptr, align 8
  %listpool.addr = alloca ptr, align 8
  %pathpool.addr = alloca ptr, align 8
  %vectorpool.addr = alloca ptr, align 8
  %newpath = alloca ptr, align 8
  %trimpos = alloca i32, align 4
  %nmismatches_to_trimpos = alloca i32, align 4
  %exon_origin = alloca i32, align 4
  %found_sensedir = alloca i32, align 4
  %splice3p = alloca i8, align 1
  %splicetype3 = alloca i32, align 4
  %ambig_prob_3 = alloca double, align 8
  %splice_distance = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %path, ptr %path.addr, align 8, !tbaa !5
  store i32 %splice_qpos, ptr %splice_qpos.addr, align 4, !tbaa !12
  store i32 %querylength, ptr %querylength.addr, align 4, !tbaa !12
  store i8 %plusp, ptr %plusp.addr, align 1, !tbaa !14
  store i32 %genestrand, ptr %genestrand.addr, align 4, !tbaa !12
  store i32 %try_sensedir, ptr %try_sensedir.addr, align 4, !tbaa !12
  store double %medial_prob, ptr %medial_prob.addr, align 8, !tbaa !44
  store double %distal_prob, ptr %distal_prob.addr, align 8, !tbaa !44
  store i32 %medial_univdiagonal, ptr %medial_univdiagonal.addr, align 4, !tbaa !12
  store i32 %distal_univdiagonal, ptr %distal_univdiagonal.addr, align 4, !tbaa !12
  store i32 %chrnum, ptr %chrnum.addr, align 4, !tbaa !12
  store i32 %chroffset, ptr %chroffset.addr, align 4, !tbaa !12
  store i32 %chrhigh, ptr %chrhigh.addr, align 4, !tbaa !12
  store ptr %knownsplicing, ptr %knownsplicing.addr, align 8, !tbaa !5
  store ptr %spliceendsgen, ptr %spliceendsgen.addr, align 8, !tbaa !5
  store ptr %mismatch_positions_alloc, ptr %mismatch_positions_alloc.addr, align 8, !tbaa !5
  store ptr %query_compress, ptr %query_compress.addr, align 8, !tbaa !5
  store ptr %queryptr, ptr %queryptr.addr, align 8, !tbaa !5
  store ptr %intlistpool, ptr %intlistpool.addr, align 8, !tbaa !5
  store ptr %univcoordlistpool, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  store ptr %listpool, ptr %listpool.addr, align 8, !tbaa !5
  store ptr %pathpool, ptr %pathpool.addr, align 8, !tbaa !5
  store ptr %vectorpool, ptr %vectorpool.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %newpath) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %trimpos) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %nmismatches_to_trimpos) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %exon_origin) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %found_sensedir) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr %splice3p) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %splicetype3) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %ambig_prob_3) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %splice_distance) #5
  %0 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %call = call i32 @Path_exon_origin(ptr noundef %0)
  store i32 %call, ptr %exon_origin, align 4, !tbaa !12
  %1 = load ptr, ptr %knownsplicing.addr, align 8, !tbaa !5
  %2 = load i32, ptr %try_sensedir.addr, align 4, !tbaa !12
  %3 = load i32, ptr %distal_univdiagonal.addr, align 4, !tbaa !12
  %4 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %5 = load i32, ptr %splice_qpos.addr, align 4, !tbaa !12
  %6 = load i32, ptr %exon_origin, align 4, !tbaa !12
  %7 = load i32, ptr %chrnum.addr, align 4, !tbaa !12
  %8 = load i32, ptr %chroffset.addr, align 4, !tbaa !12
  %9 = load i32, ptr %chrhigh.addr, align 4, !tbaa !12
  %10 = load i8, ptr %plusp.addr, align 1, !tbaa !14
  %11 = load i32, ptr %genestrand.addr, align 4, !tbaa !12
  %12 = load ptr, ptr %mismatch_positions_alloc.addr, align 8, !tbaa !5
  %13 = load ptr, ptr %spliceendsgen.addr, align 8, !tbaa !5
  %14 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %15 = load ptr, ptr %queryptr.addr, align 8, !tbaa !5
  %16 = load ptr, ptr @genomebits, align 8, !tbaa !5
  %17 = load ptr, ptr @genomebits_alt, align 8, !tbaa !5
  %18 = load i8, ptr @novelsplicingp, align 1, !tbaa !14
  %call1 = call zeroext i8 @Spliceends_qend_trim(ptr noundef %trimpos, ptr noundef %nmismatches_to_trimpos, ptr noundef %found_sensedir, ptr noundef %splicetype3, ptr noundef %ambig_prob_3, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i8 noundef zeroext %10, i32 noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef %15, ptr noundef %16, ptr noundef %17, i8 noundef zeroext %18)
  store i8 %call1, ptr %splice3p, align 1, !tbaa !14
  %19 = load i32, ptr %trimpos, align 4, !tbaa !12
  %20 = load i32, ptr %splice_qpos.addr, align 4, !tbaa !12
  %cmp = icmp eq i32 %19, %20
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %entry
  %21 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %22 = load i8, ptr %splice3p, align 1, !tbaa !14
  %23 = load i32, ptr %splicetype3, align 4, !tbaa !14
  %24 = load double, ptr %ambig_prob_3, align 8, !tbaa !44
  %25 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %26 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %27 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %28 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %29 = load ptr, ptr %vectorpool.addr, align 8, !tbaa !5
  %call2 = call ptr @Path_copy_3(ptr noundef %21, i8 noundef zeroext %22, i32 noundef %23, double noundef %24, ptr noundef %25, ptr noundef %26, ptr noundef %27, ptr noundef %28, ptr noundef %29)
  store ptr %call2, ptr %newpath, align 8, !tbaa !5
  %30 = load i32, ptr %splice_qpos.addr, align 4, !tbaa !12
  %31 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints = getelementptr inbounds %struct.Path_T, ptr %31, i32 0, i32 17
  %32 = load ptr, ptr %endpoints, align 8, !tbaa !40
  %call3 = call i32 @Intlist_head(ptr noundef %32)
  %cmp4 = icmp eq i32 %30, %call3
  br i1 %cmp4, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.else
  br label %if.end17

if.else6:                                         ; preds = %if.else
  %33 = load i32, ptr %splice_qpos.addr, align 4, !tbaa !12
  %34 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints7 = getelementptr inbounds %struct.Path_T, ptr %34, i32 0, i32 17
  %35 = load ptr, ptr %endpoints7, align 8, !tbaa !40
  %call8 = call i32 @Intlist_head(ptr noundef %35)
  %cmp9 = icmp slt i32 %33, %call8
  br i1 %cmp9, label %land.lhs.true, label %if.else14

land.lhs.true:                                    ; preds = %if.else6
  %36 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches = getelementptr inbounds %struct.Path_T, ptr %36, i32 0, i32 19
  %37 = load ptr, ptr %nmismatches, align 8, !tbaa !41
  %call10 = call i32 @Intlist_head(ptr noundef %37)
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %if.then12, label %if.else14

if.then12:                                        ; preds = %land.lhs.true
  %38 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints13 = getelementptr inbounds %struct.Path_T, ptr %38, i32 0, i32 17
  %39 = load ptr, ptr %endpoints13, align 8, !tbaa !40
  %40 = load i32, ptr %splice_qpos.addr, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %39, i32 noundef %40)
  br label %if.end

if.else14:                                        ; preds = %land.lhs.true, %if.else6
  %41 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints15 = getelementptr inbounds %struct.Path_T, ptr %41, i32 0, i32 17
  %42 = load ptr, ptr %endpoints15, align 8, !tbaa !40
  %43 = load i32, ptr %splice_qpos.addr, align 4, !tbaa !12
  call void @Intlist_head_set(ptr noundef %42, i32 noundef %43)
  %44 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches16 = getelementptr inbounds %struct.Path_T, ptr %44, i32 0, i32 19
  %45 = load ptr, ptr %nmismatches16, align 8, !tbaa !41
  call void @Intlist_head_set(ptr noundef %45, i32 noundef -1)
  %46 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches = getelementptr inbounds %struct.Path_T, ptr %46, i32 0, i32 20
  %47 = load ptr, ptr %ref_nmismatches, align 8, !tbaa !42
  call void @Intlist_head_set(ptr noundef %47, i32 noundef -1)
  br label %if.end

if.end:                                           ; preds = %if.else14, %if.then12
  br label %if.end17

if.end17:                                         ; preds = %if.end, %if.then5
  %48 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints18 = getelementptr inbounds %struct.Path_T, ptr %48, i32 0, i32 17
  %49 = load ptr, ptr %endpoints18, align 8, !tbaa !40
  %50 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %51 = load i32, ptr %trimpos, align 4, !tbaa !12
  %call19 = call ptr @Intlistpool_push(ptr noundef %49, ptr noundef %50, i32 noundef %51)
  %52 = load ptr, ptr %newpath, align 8, !tbaa !5
  %endpoints20 = getelementptr inbounds %struct.Path_T, ptr %52, i32 0, i32 17
  store ptr %call19, ptr %endpoints20, align 8, !tbaa !40
  %53 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches21 = getelementptr inbounds %struct.Path_T, ptr %53, i32 0, i32 19
  %54 = load ptr, ptr %nmismatches21, align 8, !tbaa !41
  %55 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %56 = load i32, ptr %nmismatches_to_trimpos, align 4, !tbaa !12
  %call22 = call ptr @Intlistpool_push(ptr noundef %54, ptr noundef %55, i32 noundef %56)
  %57 = load ptr, ptr %newpath, align 8, !tbaa !5
  %nmismatches23 = getelementptr inbounds %struct.Path_T, ptr %57, i32 0, i32 19
  store ptr %call22, ptr %nmismatches23, align 8, !tbaa !41
  %58 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches24 = getelementptr inbounds %struct.Path_T, ptr %58, i32 0, i32 20
  %59 = load ptr, ptr %ref_nmismatches24, align 8, !tbaa !42
  %60 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %61 = load i32, ptr %nmismatches_to_trimpos, align 4, !tbaa !12
  %call25 = call ptr @Intlistpool_push(ptr noundef %59, ptr noundef %60, i32 noundef %61)
  %62 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ref_nmismatches26 = getelementptr inbounds %struct.Path_T, ptr %62, i32 0, i32 20
  store ptr %call25, ptr %ref_nmismatches26, align 8, !tbaa !42
  %63 = load ptr, ptr %newpath, align 8, !tbaa !5
  %univdiagonals = getelementptr inbounds %struct.Path_T, ptr %63, i32 0, i32 18
  %64 = load ptr, ptr %univdiagonals, align 8, !tbaa !36
  %65 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %66 = load i32, ptr %distal_univdiagonal.addr, align 4, !tbaa !12
  %call27 = call ptr @Uintlistpool_push(ptr noundef %64, ptr noundef %65, i32 noundef %66)
  %67 = load ptr, ptr %newpath, align 8, !tbaa !5
  %univdiagonals28 = getelementptr inbounds %struct.Path_T, ptr %67, i32 0, i32 18
  store ptr %call27, ptr %univdiagonals28, align 8, !tbaa !36
  %68 = load i32, ptr %distal_univdiagonal.addr, align 4, !tbaa !12
  %69 = load i32, ptr %medial_univdiagonal.addr, align 4, !tbaa !12
  %sub = sub i32 %68, %69
  store i32 %sub, ptr %splice_distance, align 4, !tbaa !12
  %70 = load i8, ptr %plusp.addr, align 1, !tbaa !14
  %tobool = icmp ne i8 %70, 0
  br i1 %tobool, label %if.then29, label %if.else46

if.then29:                                        ; preds = %if.end17
  %71 = load i32, ptr %found_sensedir, align 4, !tbaa !12
  %cmp30 = icmp eq i32 %71, 2
  br i1 %cmp30, label %if.then31, label %if.else35

if.then31:                                        ; preds = %if.then29
  %72 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions = getelementptr inbounds %struct.Path_T, ptr %72, i32 0, i32 21
  %73 = load ptr, ptr %junctions, align 8, !tbaa !43
  %74 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %75 = load i32, ptr %splice_distance, align 4, !tbaa !12
  %76 = load double, ptr %medial_prob.addr, align 8, !tbaa !44
  %77 = load double, ptr %distal_prob.addr, align 8, !tbaa !44
  %78 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %call32 = call ptr @Junction_new_splice(i32 noundef %75, i32 noundef 2, double noundef %76, double noundef %77, ptr noundef %78)
  %call33 = call ptr @Listpool_push(ptr noundef %73, ptr noundef %74, ptr noundef %call32)
  %79 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions34 = getelementptr inbounds %struct.Path_T, ptr %79, i32 0, i32 21
  store ptr %call33, ptr %junctions34, align 8, !tbaa !43
  br label %if.end45

if.else35:                                        ; preds = %if.then29
  %80 = load i32, ptr %found_sensedir, align 4, !tbaa !12
  %cmp36 = icmp eq i32 %80, 1
  br i1 %cmp36, label %if.then37, label %if.else42

if.then37:                                        ; preds = %if.else35
  %81 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions38 = getelementptr inbounds %struct.Path_T, ptr %81, i32 0, i32 21
  %82 = load ptr, ptr %junctions38, align 8, !tbaa !43
  %83 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %84 = load i32, ptr %splice_distance, align 4, !tbaa !12
  %85 = load double, ptr %distal_prob.addr, align 8, !tbaa !44
  %86 = load double, ptr %medial_prob.addr, align 8, !tbaa !44
  %87 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %call39 = call ptr @Junction_new_splice(i32 noundef %84, i32 noundef 1, double noundef %85, double noundef %86, ptr noundef %87)
  %call40 = call ptr @Listpool_push(ptr noundef %82, ptr noundef %83, ptr noundef %call39)
  %88 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions41 = getelementptr inbounds %struct.Path_T, ptr %88, i32 0, i32 21
  store ptr %call40, ptr %junctions41, align 8, !tbaa !43
  br label %if.end44

if.else42:                                        ; preds = %if.else35
  %89 = load ptr, ptr @stderr, align 8, !tbaa !5
  %90 = load i32, ptr %found_sensedir, align 4, !tbaa !12
  %call43 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %89, ptr noundef @.str.1, i32 noundef %90)
  call void @abort() #6
  unreachable

if.end44:                                         ; preds = %if.then37
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %if.then31
  br label %if.end64

if.else46:                                        ; preds = %if.end17
  %91 = load i32, ptr %found_sensedir, align 4, !tbaa !12
  %cmp47 = icmp eq i32 %91, 1
  br i1 %cmp47, label %if.then48, label %if.else53

if.then48:                                        ; preds = %if.else46
  %92 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions49 = getelementptr inbounds %struct.Path_T, ptr %92, i32 0, i32 21
  %93 = load ptr, ptr %junctions49, align 8, !tbaa !43
  %94 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %95 = load i32, ptr %splice_distance, align 4, !tbaa !12
  %96 = load double, ptr %medial_prob.addr, align 8, !tbaa !44
  %97 = load double, ptr %distal_prob.addr, align 8, !tbaa !44
  %98 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %call50 = call ptr @Junction_new_splice(i32 noundef %95, i32 noundef 1, double noundef %96, double noundef %97, ptr noundef %98)
  %call51 = call ptr @Listpool_push(ptr noundef %93, ptr noundef %94, ptr noundef %call50)
  %99 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions52 = getelementptr inbounds %struct.Path_T, ptr %99, i32 0, i32 21
  store ptr %call51, ptr %junctions52, align 8, !tbaa !43
  br label %if.end63

if.else53:                                        ; preds = %if.else46
  %100 = load i32, ptr %found_sensedir, align 4, !tbaa !12
  %cmp54 = icmp eq i32 %100, 2
  br i1 %cmp54, label %if.then55, label %if.else60

if.then55:                                        ; preds = %if.else53
  %101 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions56 = getelementptr inbounds %struct.Path_T, ptr %101, i32 0, i32 21
  %102 = load ptr, ptr %junctions56, align 8, !tbaa !43
  %103 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %104 = load i32, ptr %splice_distance, align 4, !tbaa !12
  %105 = load double, ptr %distal_prob.addr, align 8, !tbaa !44
  %106 = load double, ptr %medial_prob.addr, align 8, !tbaa !44
  %107 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %call57 = call ptr @Junction_new_splice(i32 noundef %104, i32 noundef 2, double noundef %105, double noundef %106, ptr noundef %107)
  %call58 = call ptr @Listpool_push(ptr noundef %102, ptr noundef %103, ptr noundef %call57)
  %108 = load ptr, ptr %newpath, align 8, !tbaa !5
  %junctions59 = getelementptr inbounds %struct.Path_T, ptr %108, i32 0, i32 21
  store ptr %call58, ptr %junctions59, align 8, !tbaa !43
  br label %if.end62

if.else60:                                        ; preds = %if.else53
  %109 = load ptr, ptr @stderr, align 8, !tbaa !5
  %110 = load i32, ptr %found_sensedir, align 4, !tbaa !12
  %call61 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %109, ptr noundef @.str.1, i32 noundef %110)
  call void @abort() #6
  unreachable

if.end62:                                         ; preds = %if.then55
  br label %if.end63

if.end63:                                         ; preds = %if.end62, %if.then48
  br label %if.end64

if.end64:                                         ; preds = %if.end63, %if.end45
  %111 = load ptr, ptr %newpath, align 8, !tbaa !5
  %splice3p65 = getelementptr inbounds %struct.Path_T, ptr %111, i32 0, i32 23
  store i8 0, ptr %splice3p65, align 1, !tbaa !62
  %112 = load ptr, ptr %newpath, align 8, !tbaa !5
  %splicetype366 = getelementptr inbounds %struct.Path_T, ptr %112, i32 0, i32 25
  store i32 0, ptr %splicetype366, align 8, !tbaa !63
  %113 = load ptr, ptr %newpath, align 8, !tbaa !5
  %ambig_prob_367 = getelementptr inbounds %struct.Path_T, ptr %113, i32 0, i32 27
  store double 0.000000e+00, ptr %ambig_prob_367, align 8, !tbaa !64
  %114 = load ptr, ptr %newpath, align 8, !tbaa !5
  store ptr %114, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end64, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %splice_distance) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %ambig_prob_3) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %splicetype3) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr %splice3p) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %found_sensedir) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %exon_origin) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %nmismatches_to_trimpos) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %trimpos) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %newpath) #5
  %115 = load ptr, ptr %retval, align 8
  ret ptr %115
}

declare zeroext i8 @Spliceends_qend_trim(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) #3

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @List_length(ptr noundef %list) #0 {
entry:
  %list.addr = alloca ptr, align 8
  %n = alloca i32, align 4
  store ptr %list, ptr %list.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #5
  store i32 0, ptr %n, align 4, !tbaa !12
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !5
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %n, align 4, !tbaa !12
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr %n, align 4, !tbaa !12
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load ptr, ptr %list.addr, align 8, !tbaa !5
  %rest = getelementptr inbounds %struct.List_T, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %rest, align 8, !tbaa !11
  store ptr %3, ptr %list.addr, align 8, !tbaa !5
  br label %for.cond, !llvm.loop !94

for.end:                                          ; preds = %for.cond
  %4 = load i32, ptr %n, align 4, !tbaa !12
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #5
  ret i32 %4
}

declare ptr @Hitlist_copy(ptr noundef, ptr noundef) #3

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
  %2 = load ptr, ptr %rest, align 8, !tbaa !84
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
define internal void @Intlistpool_free_list(ptr noundef %old, ptr noundef %this) #0 {
entry:
  %old.addr = alloca ptr, align 8
  %this.addr = alloca ptr, align 8
  store ptr %old, ptr %old.addr, align 8, !tbaa !5
  store ptr %this, ptr %this.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %old.addr, align 8, !tbaa !5
  %1 = load ptr, ptr %this.addr, align 8, !tbaa !5
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @Uintlistpool_free_list(ptr noundef %old, ptr noundef %this) #0 {
entry:
  %old.addr = alloca ptr, align 8
  %this.addr = alloca ptr, align 8
  store ptr %old, ptr %old.addr, align 8, !tbaa !5
  store ptr %this, ptr %this.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %old.addr, align 8, !tbaa !5
  %1 = load ptr, ptr %this.addr, align 8, !tbaa !5
  ret void
}

declare void @Junction_list_gc(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @Intlist_reverse(ptr noundef %list) #0 {
entry:
  %list.addr = alloca ptr, align 8
  %head = alloca ptr, align 8
  %next = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %head) #5
  store ptr null, ptr %head, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !5
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %list.addr, align 8, !tbaa !5
  %rest = getelementptr inbounds %struct.Intlist_T, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %rest, align 8, !tbaa !82
  store ptr %2, ptr %next, align 8, !tbaa !5
  %3 = load ptr, ptr %head, align 8, !tbaa !5
  %4 = load ptr, ptr %list.addr, align 8, !tbaa !5
  %rest1 = getelementptr inbounds %struct.Intlist_T, ptr %4, i32 0, i32 1
  store ptr %3, ptr %rest1, align 8, !tbaa !82
  %5 = load ptr, ptr %list.addr, align 8, !tbaa !5
  store ptr %5, ptr %head, align 8, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load ptr, ptr %next, align 8, !tbaa !5
  store ptr %6, ptr %list.addr, align 8, !tbaa !5
  br label %for.cond, !llvm.loop !95

for.end:                                          ; preds = %for.cond
  %7 = load ptr, ptr %head, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %head) #5
  ret ptr %7
}

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @List_reverse(ptr noundef %list) #0 {
entry:
  %list.addr = alloca ptr, align 8
  %head = alloca ptr, align 8
  %next = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %head) #5
  store ptr null, ptr %head, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #5
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
  br label %for.cond, !llvm.loop !96

for.end:                                          ; preds = %for.cond
  %7 = load ptr, ptr %head, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %head) #5
  ret ptr %7
}

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @Uintlist_reverse(ptr noundef %list) #0 {
entry:
  %list.addr = alloca ptr, align 8
  %head = alloca ptr, align 8
  %next = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %head) #5
  store ptr null, ptr %head, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !5
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %list.addr, align 8, !tbaa !5
  %rest = getelementptr inbounds %struct.Uintlist_T, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %rest, align 8, !tbaa !84
  store ptr %2, ptr %next, align 8, !tbaa !5
  %3 = load ptr, ptr %head, align 8, !tbaa !5
  %4 = load ptr, ptr %list.addr, align 8, !tbaa !5
  %rest1 = getelementptr inbounds %struct.Uintlist_T, ptr %4, i32 0, i32 1
  store ptr %3, ptr %rest1, align 8, !tbaa !84
  %5 = load ptr, ptr %list.addr, align 8, !tbaa !5
  store ptr %5, ptr %head, align 8, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load ptr, ptr %next, align 8, !tbaa !5
  store ptr %6, ptr %list.addr, align 8, !tbaa !5
  br label %for.cond, !llvm.loop !97

for.end:                                          ; preds = %for.cond
  %7 = load ptr, ptr %head, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %head) #5
  ret ptr %7
}

; Function Attrs: nounwind uwtable
define internal i32 @compute_exon_origin(ptr noundef %endpoints, ptr noundef %junctions) #1 {
entry:
  %endpoints.addr = alloca ptr, align 8
  %junctions.addr = alloca ptr, align 8
  %exon_origin = alloca i32, align 4
  %p = alloca ptr, align 8
  %j = alloca ptr, align 8
  store ptr %endpoints, ptr %endpoints.addr, align 8, !tbaa !5
  store ptr %junctions, ptr %junctions.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %exon_origin) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #5
  %0 = load ptr, ptr %endpoints.addr, align 8, !tbaa !5
  store ptr %0, ptr %p, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #5
  %1 = load ptr, ptr %junctions.addr, align 8, !tbaa !5
  store ptr %1, ptr %j, align 8, !tbaa !5
  %2 = load ptr, ptr %p, align 8, !tbaa !5
  %call = call ptr @Intlist_next(ptr noundef %2)
  store ptr %call, ptr %p, align 8, !tbaa !5
  %3 = load ptr, ptr %p, align 8, !tbaa !5
  %call1 = call i32 @Intlist_head(ptr noundef %3)
  store i32 %call1, ptr %exon_origin, align 4, !tbaa !12
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %4 = load ptr, ptr %j, align 8, !tbaa !5
  %cmp = icmp ne ptr %4, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %5 = load ptr, ptr %j, align 8, !tbaa !5
  %call2 = call ptr @List_head(ptr noundef %5)
  %call3 = call i32 @Junction_type(ptr noundef %call2)
  %cmp4 = icmp ne i32 %call3, 3
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %cmp4, %land.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %7 = load ptr, ptr %p, align 8, !tbaa !5
  %call5 = call ptr @Intlist_next(ptr noundef %7)
  store ptr %call5, ptr %p, align 8, !tbaa !5
  %8 = load ptr, ptr %p, align 8, !tbaa !5
  %call6 = call i32 @Intlist_head(ptr noundef %8)
  store i32 %call6, ptr %exon_origin, align 4, !tbaa !12
  %9 = load ptr, ptr %j, align 8, !tbaa !5
  %call7 = call ptr @List_next(ptr noundef %9)
  store ptr %call7, ptr %j, align 8, !tbaa !5
  br label %while.cond, !llvm.loop !98

while.end:                                        ; preds = %land.end
  %10 = load i32, ptr %exon_origin, align 4, !tbaa !12
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %exon_origin) #5
  ret i32 %10
}

declare ptr @Path_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef, double noundef, i8 noundef zeroext, i32 noundef, double noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

declare i32 @Junction_type(ptr noundef) #3

declare ptr @Transcript_remap(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) #3

declare i32 @Path_effective_sensedir(ptr noundef) #3

declare ptr @Repair_path(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

declare void @Repair_free(ptr noundef) #3

; Function Attrs: inlinehint nounwind uwtable
define internal void @Listpool_free_list(ptr noundef %old, ptr noundef %this) #0 {
entry:
  %old.addr = alloca ptr, align 8
  %this.addr = alloca ptr, align 8
  store ptr %old, ptr %old.addr, align 8, !tbaa !5
  store ptr %this, ptr %this.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %old.addr, align 8, !tbaa !5
  %1 = load ptr, ptr %this.addr, align 8, !tbaa !5
  ret void
}

attributes #0 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

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
!16 = !{!"Univdiag_T", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12}
!17 = !{!16, !13, i64 4}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.mustprogress"}
!20 = distinct !{!20, !19}
!21 = !{!16, !13, i64 8}
!22 = distinct !{!22, !19}
!23 = distinct !{!23, !19}
!24 = distinct !{!24, !19}
!25 = distinct !{!25, !19}
!26 = distinct !{!26, !19}
!27 = distinct !{!27, !19}
!28 = distinct !{!28, !19}
!29 = distinct !{!29, !19}
!30 = distinct !{!30, !19}
!31 = distinct !{!31, !19}
!32 = distinct !{!32, !19}
!33 = distinct !{!33, !19}
!34 = distinct !{!34, !19}
!35 = distinct !{!35, !19}
!36 = !{!37, !6, i64 96}
!37 = !{!"Path_T", !38, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !39, i64 24, !39, i64 32, !13, i64 40, !13, i64 44, !6, i64 48, !7, i64 56, !13, i64 60, !13, i64 64, !13, i64 68, !13, i64 72, !13, i64 76, !13, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !7, i64 128, !7, i64 129, !7, i64 132, !7, i64 136, !39, i64 144, !39, i64 152, !6, i64 160, !6, i64 168, !7, i64 176, !6, i64 184, !6, i64 192, !6, i64 200, !6, i64 208, !6, i64 216, !6, i64 224, !6, i64 232, !13, i64 240, !13, i64 244, !13, i64 248, !7, i64 252, !6, i64 256, !6, i64 264, !6, i64 272, !6, i64 280, !6, i64 288, !6, i64 296, !7, i64 304, !7, i64 308, !39, i64 312, !6, i64 320, !6, i64 328, !6, i64 336, !6, i64 344, !7, i64 352}
!38 = !{!"float", !7, i64 0}
!39 = !{!"double", !7, i64 0}
!40 = !{!37, !6, i64 88}
!41 = !{!37, !6, i64 104}
!42 = !{!37, !6, i64 112}
!43 = !{!37, !6, i64 120}
!44 = !{!39, !39, i64 0}
!45 = !{!37, !6, i64 160}
!46 = !{!47, !13, i64 16}
!47 = !{!"Spliceends_T", !13, i64 0, !7, i64 4, !13, i64 8, !7, i64 12, !13, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88}
!48 = !{!47, !6, i64 48}
!49 = !{!47, !6, i64 80}
!50 = !{!47, !6, i64 72}
!51 = !{!47, !6, i64 56}
!52 = !{!47, !6, i64 88}
!53 = distinct !{!53, !19}
!54 = distinct !{!54, !19}
!55 = !{!37, !7, i64 128}
!56 = !{!37, !7, i64 132}
!57 = !{!37, !39, i64 144}
!58 = distinct !{!58, !19}
!59 = !{!37, !6, i64 168}
!60 = distinct !{!60, !19}
!61 = distinct !{!61, !19}
!62 = !{!37, !7, i64 129}
!63 = !{!37, !7, i64 136}
!64 = !{!37, !39, i64 152}
!65 = distinct !{!65, !19}
!66 = !{!37, !13, i64 16}
!67 = !{!37, !39, i64 24}
!68 = distinct !{!68, !19}
!69 = distinct !{!69, !19}
!70 = distinct !{!70, !19}
!71 = distinct !{!71, !19}
!72 = !{!37, !13, i64 44}
!73 = distinct !{!73, !19}
!74 = distinct !{!74, !19}
!75 = !{!37, !13, i64 64}
!76 = !{!37, !7, i64 56}
!77 = !{!37, !13, i64 68}
!78 = !{!37, !13, i64 72}
!79 = !{!37, !13, i64 76}
!80 = !{!37, !13, i64 80}
!81 = distinct !{!81, !19}
!82 = !{!83, !6, i64 8}
!83 = !{!"Intlist_T", !13, i64 0, !6, i64 8}
!84 = !{!85, !6, i64 8}
!85 = !{!"Uintlist_T", !13, i64 0, !6, i64 8}
!86 = distinct !{!86, !19}
!87 = distinct !{!87, !19}
!88 = distinct !{!88, !19}
!89 = distinct !{!89, !19}
!90 = distinct !{!90, !19}
!91 = distinct !{!91, !19}
!92 = !{!85, !13, i64 0}
!93 = !{!83, !13, i64 0}
!94 = distinct !{!94, !19}
!95 = distinct !{!95, !19}
!96 = distinct !{!96, !19}
!97 = distinct !{!97, !19}
!98 = distinct !{!98, !19}

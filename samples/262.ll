; ModuleID = 'samples/262.bc'
source_filename = ".././../src/spliceends.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.List_T = type { ptr, ptr }
%struct.Spliceends_T = type { i32, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@circularp = internal global ptr null, align 8
@genomebits = internal global ptr null, align 8
@genomebits_alt = internal global ptr null, align 8
@genomelength = internal global i64 0, align 8
@localdb = internal global ptr null, align 8
@shortsplicedist_novelend = internal global i32 0, align 4
@allow_soft_clips_p = internal global i8 0, align 1
@.str = private unnamed_addr constant [25 x i8] c".././../src/spliceends.c\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c".././../src/list.h\00", align 1
@distal_nmismatches_allowed = internal global i32 1, align 4

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @List_push_keep(ptr noundef %list, ptr noundef %x) #0 {
entry:
  %list.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %new = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8, !tbaa !5
  store ptr %x, ptr %x.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %new) #4
  %call = call ptr @Mem_alloc(i64 noundef 16, ptr noundef @.str.1, i32 noundef 66)
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
  %call = call ptr @Mem_alloc(i64 noundef 16, ptr noundef @.str.1, i32 noundef 75)
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
  call void @Mem_free(ptr noundef %6, ptr noundef @.str.1, i32 noundef 137)
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
define dso_local void @Spliceends_setup(ptr noundef %circularp_in, ptr noundef %genomebits_in, ptr noundef %genomebits_alt_in, i64 noundef %genomelength_in, ptr noundef %localdb_in, i32 noundef %shortsplicedist_novelend_in, i8 noundef zeroext %allow_soft_clips_p_in) #1 {
entry:
  %circularp_in.addr = alloca ptr, align 8
  %genomebits_in.addr = alloca ptr, align 8
  %genomebits_alt_in.addr = alloca ptr, align 8
  %genomelength_in.addr = alloca i64, align 8
  %localdb_in.addr = alloca ptr, align 8
  %shortsplicedist_novelend_in.addr = alloca i32, align 4
  %allow_soft_clips_p_in.addr = alloca i8, align 1
  store ptr %circularp_in, ptr %circularp_in.addr, align 8, !tbaa !5
  store ptr %genomebits_in, ptr %genomebits_in.addr, align 8, !tbaa !5
  store ptr %genomebits_alt_in, ptr %genomebits_alt_in.addr, align 8, !tbaa !5
  store i64 %genomelength_in, ptr %genomelength_in.addr, align 8, !tbaa !12
  store ptr %localdb_in, ptr %localdb_in.addr, align 8, !tbaa !5
  store i32 %shortsplicedist_novelend_in, ptr %shortsplicedist_novelend_in.addr, align 4, !tbaa !14
  store i8 %allow_soft_clips_p_in, ptr %allow_soft_clips_p_in.addr, align 1, !tbaa !16
  %0 = load ptr, ptr %circularp_in.addr, align 8, !tbaa !5
  store ptr %0, ptr @circularp, align 8, !tbaa !5
  %1 = load ptr, ptr %genomebits_in.addr, align 8, !tbaa !5
  store ptr %1, ptr @genomebits, align 8, !tbaa !5
  %2 = load ptr, ptr %genomebits_alt_in.addr, align 8, !tbaa !5
  store ptr %2, ptr @genomebits_alt, align 8, !tbaa !5
  %3 = load i64, ptr %genomelength_in.addr, align 8, !tbaa !12
  store i64 %3, ptr @genomelength, align 8, !tbaa !12
  %4 = load ptr, ptr %localdb_in.addr, align 8, !tbaa !5
  store ptr %4, ptr @localdb, align 8, !tbaa !5
  %5 = load i32, ptr %shortsplicedist_novelend_in.addr, align 4, !tbaa !14
  store i32 %5, ptr @shortsplicedist_novelend, align 4, !tbaa !14
  %6 = load i8, ptr %allow_soft_clips_p_in.addr, align 1, !tbaa !16
  store i8 %6, ptr @allow_soft_clips_p, align 1, !tbaa !16
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Spliceends_free(ptr noundef %old) #1 {
entry:
  %old.addr = alloca ptr, align 8
  store ptr %old, ptr %old.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %old.addr, align 8, !tbaa !5
  %1 = load ptr, ptr %0, align 8, !tbaa !5
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %old.addr, align 8, !tbaa !5
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %distal_probs = getelementptr inbounds %struct.Spliceends_T, ptr %3, i32 0, i32 13
  %4 = load ptr, ptr %distal_probs, align 8, !tbaa !17
  call void @Mem_free(ptr noundef %4, ptr noundef @.str, i32 noundef 121)
  %5 = load ptr, ptr %old.addr, align 8, !tbaa !5
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %distal_probs1 = getelementptr inbounds %struct.Spliceends_T, ptr %6, i32 0, i32 13
  store ptr null, ptr %distal_probs1, align 8, !tbaa !17
  %7 = load ptr, ptr %old.addr, align 8, !tbaa !5
  %8 = load ptr, ptr %7, align 8, !tbaa !5
  %ambig_probs = getelementptr inbounds %struct.Spliceends_T, ptr %8, i32 0, i32 12
  %9 = load ptr, ptr %ambig_probs, align 8, !tbaa !19
  call void @Mem_free(ptr noundef %9, ptr noundef @.str, i32 noundef 122)
  %10 = load ptr, ptr %old.addr, align 8, !tbaa !5
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  %ambig_probs2 = getelementptr inbounds %struct.Spliceends_T, ptr %11, i32 0, i32 12
  store ptr null, ptr %ambig_probs2, align 8, !tbaa !19
  %12 = load ptr, ptr %old.addr, align 8, !tbaa !5
  %13 = load ptr, ptr %12, align 8, !tbaa !5
  %distal_nmismatches = getelementptr inbounds %struct.Spliceends_T, ptr %13, i32 0, i32 11
  %14 = load ptr, ptr %distal_nmismatches, align 8, !tbaa !20
  call void @Mem_free(ptr noundef %14, ptr noundef @.str, i32 noundef 124)
  %15 = load ptr, ptr %old.addr, align 8, !tbaa !5
  %16 = load ptr, ptr %15, align 8, !tbaa !5
  %distal_nmismatches3 = getelementptr inbounds %struct.Spliceends_T, ptr %16, i32 0, i32 11
  store ptr null, ptr %distal_nmismatches3, align 8, !tbaa !20
  %17 = load ptr, ptr %old.addr, align 8, !tbaa !5
  %18 = load ptr, ptr %17, align 8, !tbaa !5
  %medial_nmismatches = getelementptr inbounds %struct.Spliceends_T, ptr %18, i32 0, i32 10
  %19 = load ptr, ptr %medial_nmismatches, align 8, !tbaa !21
  call void @Mem_free(ptr noundef %19, ptr noundef @.str, i32 noundef 125)
  %20 = load ptr, ptr %old.addr, align 8, !tbaa !5
  %21 = load ptr, ptr %20, align 8, !tbaa !5
  %medial_nmismatches4 = getelementptr inbounds %struct.Spliceends_T, ptr %21, i32 0, i32 10
  store ptr null, ptr %medial_nmismatches4, align 8, !tbaa !21
  %22 = load ptr, ptr %old.addr, align 8, !tbaa !5
  %23 = load ptr, ptr %22, align 8, !tbaa !5
  %partners = getelementptr inbounds %struct.Spliceends_T, ptr %23, i32 0, i32 9
  %24 = load ptr, ptr %partners, align 8, !tbaa !22
  call void @Mem_free(ptr noundef %24, ptr noundef @.str, i32 noundef 126)
  %25 = load ptr, ptr %old.addr, align 8, !tbaa !5
  %26 = load ptr, ptr %25, align 8, !tbaa !5
  %partners5 = getelementptr inbounds %struct.Spliceends_T, ptr %26, i32 0, i32 9
  store ptr null, ptr %partners5, align 8, !tbaa !22
  %27 = load ptr, ptr %old.addr, align 8, !tbaa !5
  %28 = load ptr, ptr %27, align 8, !tbaa !5
  %trimends = getelementptr inbounds %struct.Spliceends_T, ptr %28, i32 0, i32 8
  %29 = load ptr, ptr %trimends, align 8, !tbaa !23
  call void @Mem_free(ptr noundef %29, ptr noundef @.str, i32 noundef 127)
  %30 = load ptr, ptr %old.addr, align 8, !tbaa !5
  %31 = load ptr, ptr %30, align 8, !tbaa !5
  %trimends6 = getelementptr inbounds %struct.Spliceends_T, ptr %31, i32 0, i32 8
  store ptr null, ptr %trimends6, align 8, !tbaa !23
  %32 = load ptr, ptr %old.addr, align 8, !tbaa !5
  %33 = load ptr, ptr %32, align 8, !tbaa !5
  %matchlengths = getelementptr inbounds %struct.Spliceends_T, ptr %33, i32 0, i32 7
  %34 = load ptr, ptr %matchlengths, align 8, !tbaa !24
  call void @Mem_free(ptr noundef %34, ptr noundef @.str, i32 noundef 128)
  %35 = load ptr, ptr %old.addr, align 8, !tbaa !5
  %36 = load ptr, ptr %35, align 8, !tbaa !5
  %matchlengths7 = getelementptr inbounds %struct.Spliceends_T, ptr %36, i32 0, i32 7
  store ptr null, ptr %matchlengths7, align 8, !tbaa !24
  %37 = load ptr, ptr %old.addr, align 8, !tbaa !5
  %38 = load ptr, ptr %37, align 8, !tbaa !5
  %mismatch_positions_left = getelementptr inbounds %struct.Spliceends_T, ptr %38, i32 0, i32 5
  %39 = load ptr, ptr %mismatch_positions_left, align 8, !tbaa !25
  call void @Mem_free(ptr noundef %39, ptr noundef @.str, i32 noundef 130)
  %40 = load ptr, ptr %old.addr, align 8, !tbaa !5
  %41 = load ptr, ptr %40, align 8, !tbaa !5
  %mismatch_positions_left8 = getelementptr inbounds %struct.Spliceends_T, ptr %41, i32 0, i32 5
  store ptr null, ptr %mismatch_positions_left8, align 8, !tbaa !25
  %42 = load ptr, ptr %old.addr, align 8, !tbaa !5
  %43 = load ptr, ptr %42, align 8, !tbaa !5
  %mismatch_positions_right = getelementptr inbounds %struct.Spliceends_T, ptr %43, i32 0, i32 6
  %44 = load ptr, ptr %mismatch_positions_right, align 8, !tbaa !26
  call void @Mem_free(ptr noundef %44, ptr noundef @.str, i32 noundef 131)
  %45 = load ptr, ptr %old.addr, align 8, !tbaa !5
  %46 = load ptr, ptr %45, align 8, !tbaa !5
  %mismatch_positions_right9 = getelementptr inbounds %struct.Spliceends_T, ptr %46, i32 0, i32 6
  store ptr null, ptr %mismatch_positions_right9, align 8, !tbaa !26
  %47 = load ptr, ptr %old.addr, align 8, !tbaa !5
  %48 = load ptr, ptr %47, align 8, !tbaa !5
  call void @Mem_free(ptr noundef %48, ptr noundef @.str, i32 noundef 133)
  %49 = load ptr, ptr %old.addr, align 8, !tbaa !5
  store ptr null, ptr %49, align 8, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @Mem_free(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define dso_local ptr @Spliceends_new(i32 noundef %id, i32 noundef %querylength) #1 {
entry:
  %id.addr = alloca i32, align 4
  %querylength.addr = alloca i32, align 4
  %new = alloca ptr, align 8
  store i32 %id, ptr %id.addr, align 4, !tbaa !14
  store i32 %querylength, ptr %querylength.addr, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 8, ptr %new) #4
  %call = call ptr @Mem_alloc(i64 noundef 96, ptr noundef @.str, i32 noundef 142)
  store ptr %call, ptr %new, align 8, !tbaa !5
  %0 = load i32, ptr %id.addr, align 4, !tbaa !14
  %1 = load ptr, ptr %new, align 8, !tbaa !5
  %id1 = getelementptr inbounds %struct.Spliceends_T, ptr %1, i32 0, i32 0
  store i32 %0, ptr %id1, align 8, !tbaa !27
  %2 = load ptr, ptr %new, align 8, !tbaa !5
  %checkedout_p = getelementptr inbounds %struct.Spliceends_T, ptr %2, i32 0, i32 1
  store i8 1, ptr %checkedout_p, align 4, !tbaa !28
  %3 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %add = add nsw i32 %3, 8
  %conv = sext i32 %add to i64
  %mul = mul i64 %conv, 4
  %call2 = call ptr @Mem_alloc(i64 noundef %mul, ptr noundef @.str, i32 noundef 154)
  %4 = load ptr, ptr %new, align 8, !tbaa !5
  %mismatch_positions_left = getelementptr inbounds %struct.Spliceends_T, ptr %4, i32 0, i32 5
  store ptr %call2, ptr %mismatch_positions_left, align 8, !tbaa !25
  %5 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %add3 = add nsw i32 %5, 8
  %conv4 = sext i32 %add3 to i64
  %mul5 = mul i64 %conv4, 4
  %call6 = call ptr @Mem_alloc(i64 noundef %mul5, ptr noundef @.str, i32 noundef 155)
  %6 = load ptr, ptr %new, align 8, !tbaa !5
  %mismatch_positions_right = getelementptr inbounds %struct.Spliceends_T, ptr %6, i32 0, i32 6
  store ptr %call6, ptr %mismatch_positions_right, align 8, !tbaa !26
  %call7 = call ptr @Mem_alloc(i64 noundef 124, ptr noundef @.str, i32 noundef 157)
  %7 = load ptr, ptr %new, align 8, !tbaa !5
  %matchlengths = getelementptr inbounds %struct.Spliceends_T, ptr %7, i32 0, i32 7
  store ptr %call7, ptr %matchlengths, align 8, !tbaa !24
  %call8 = call ptr @Mem_alloc(i64 noundef 124, ptr noundef @.str, i32 noundef 158)
  %8 = load ptr, ptr %new, align 8, !tbaa !5
  %trimends = getelementptr inbounds %struct.Spliceends_T, ptr %8, i32 0, i32 8
  store ptr %call8, ptr %trimends, align 8, !tbaa !23
  %call9 = call ptr @Mem_alloc(i64 noundef 248, ptr noundef @.str, i32 noundef 159)
  %9 = load ptr, ptr %new, align 8, !tbaa !5
  %partners = getelementptr inbounds %struct.Spliceends_T, ptr %9, i32 0, i32 9
  store ptr %call9, ptr %partners, align 8, !tbaa !22
  %call10 = call ptr @Mem_alloc(i64 noundef 124, ptr noundef @.str, i32 noundef 161)
  %10 = load ptr, ptr %new, align 8, !tbaa !5
  %medial_nmismatches = getelementptr inbounds %struct.Spliceends_T, ptr %10, i32 0, i32 10
  store ptr %call10, ptr %medial_nmismatches, align 8, !tbaa !21
  %call11 = call ptr @Mem_alloc(i64 noundef 124, ptr noundef @.str, i32 noundef 162)
  %11 = load ptr, ptr %new, align 8, !tbaa !5
  %distal_nmismatches = getelementptr inbounds %struct.Spliceends_T, ptr %11, i32 0, i32 11
  store ptr %call11, ptr %distal_nmismatches, align 8, !tbaa !20
  %call12 = call ptr @Mem_alloc(i64 noundef 240, ptr noundef @.str, i32 noundef 164)
  %12 = load ptr, ptr %new, align 8, !tbaa !5
  %ambig_probs = getelementptr inbounds %struct.Spliceends_T, ptr %12, i32 0, i32 12
  store ptr %call12, ptr %ambig_probs, align 8, !tbaa !19
  %call13 = call ptr @Mem_alloc(i64 noundef 240, ptr noundef @.str, i32 noundef 165)
  %13 = load ptr, ptr %new, align 8, !tbaa !5
  %distal_probs = getelementptr inbounds %struct.Spliceends_T, ptr %13, i32 0, i32 13
  store ptr %call13, ptr %distal_probs, align 8, !tbaa !17
  %14 = load ptr, ptr %new, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 8, ptr %new) #4
  ret ptr %14
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare ptr @Mem_alloc(i64 noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define dso_local i32 @Spliceends_trim_qstart_nosplice(ptr noundef %nmismatches_to_trimpos, ptr noundef %total_nmismatches, ptr noundef %mismatch_positions_alloc, ptr noundef %query_compress, ptr noundef %bits, ptr noundef %bits_alt, i64 noundef %univdiagonal, i32 noundef %querylength, i32 noundef %pos5, i32 noundef %pos3, i8 noundef zeroext %plusp, i32 noundef %genestrand) #1 {
entry:
  %retval = alloca i32, align 4
  %nmismatches_to_trimpos.addr = alloca ptr, align 8
  %total_nmismatches.addr = alloca ptr, align 8
  %mismatch_positions_alloc.addr = alloca ptr, align 8
  %query_compress.addr = alloca ptr, align 8
  %bits.addr = alloca ptr, align 8
  %bits_alt.addr = alloca ptr, align 8
  %univdiagonal.addr = alloca i64, align 8
  %querylength.addr = alloca i32, align 4
  %pos5.addr = alloca i32, align 4
  %pos3.addr = alloca i32, align 4
  %plusp.addr = alloca i8, align 1
  %genestrand.addr = alloca i32, align 4
  %max_score = alloca i32, align 4
  %score = alloca i32, align 4
  %trimpos = alloca i32, align 4
  %pos = alloca i32, align 4
  %prevpos = alloca i32, align 4
  %i = alloca i32, align 4
  %mismatch_positions = alloca ptr, align 8
  %alignlength = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %nmismatches_to_trimpos, ptr %nmismatches_to_trimpos.addr, align 8, !tbaa !5
  store ptr %total_nmismatches, ptr %total_nmismatches.addr, align 8, !tbaa !5
  store ptr %mismatch_positions_alloc, ptr %mismatch_positions_alloc.addr, align 8, !tbaa !5
  store ptr %query_compress, ptr %query_compress.addr, align 8, !tbaa !5
  store ptr %bits, ptr %bits.addr, align 8, !tbaa !5
  store ptr %bits_alt, ptr %bits_alt.addr, align 8, !tbaa !5
  store i64 %univdiagonal, ptr %univdiagonal.addr, align 8, !tbaa !12
  store i32 %querylength, ptr %querylength.addr, align 4, !tbaa !14
  store i32 %pos5, ptr %pos5.addr, align 4, !tbaa !14
  store i32 %pos3, ptr %pos3.addr, align 4, !tbaa !14
  store i8 %plusp, ptr %plusp.addr, align 1, !tbaa !16
  store i32 %genestrand, ptr %genestrand.addr, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %max_score) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %score) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %trimpos) #4
  %0 = load i32, ptr %pos5.addr, align 4, !tbaa !14
  store i32 %0, ptr %trimpos, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %pos) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %prevpos) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %mismatch_positions) #4
  %1 = load ptr, ptr %mismatch_positions_alloc.addr, align 8, !tbaa !5
  store ptr %1, ptr %mismatch_positions, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %alignlength) #4
  %2 = load i32, ptr %pos3.addr, align 4, !tbaa !14
  %3 = load i32, ptr %pos5.addr, align 4, !tbaa !14
  %sub = sub nsw i32 %2, %3
  store i32 %sub, ptr %alignlength, align 4, !tbaa !14
  %4 = load ptr, ptr %mismatch_positions, align 8, !tbaa !5
  %5 = load i32, ptr %alignlength, align 4, !tbaa !14
  %6 = load ptr, ptr %bits.addr, align 8, !tbaa !5
  %7 = load ptr, ptr %bits_alt.addr, align 8, !tbaa !5
  %8 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %9 = load i64, ptr %univdiagonal.addr, align 8, !tbaa !12
  %10 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %11 = load i32, ptr %pos5.addr, align 4, !tbaa !14
  %12 = load i32, ptr %pos3.addr, align 4, !tbaa !14
  %13 = load i8, ptr %plusp.addr, align 1, !tbaa !16
  %14 = load i32, ptr %genestrand.addr, align 4, !tbaa !14
  %call = call i32 @Genomebits_mismatches_fromright_trim(ptr noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, i64 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i8 noundef zeroext %13, i32 noundef %14)
  %15 = load ptr, ptr %total_nmismatches.addr, align 8, !tbaa !5
  store i32 %call, ptr %15, align 4, !tbaa !14
  %16 = load i8, ptr @allow_soft_clips_p, align 1, !tbaa !16
  %conv = zext i8 %16 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %17 = load ptr, ptr %nmismatches_to_trimpos.addr, align 8, !tbaa !5
  store i32 -1, ptr %17, align 4, !tbaa !14
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %entry
  %18 = load ptr, ptr %total_nmismatches.addr, align 8, !tbaa !5
  %19 = load i32, ptr %18, align 4, !tbaa !14
  %cmp2 = icmp eq i32 %19, 0
  br i1 %cmp2, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.else
  %20 = load ptr, ptr %nmismatches_to_trimpos.addr, align 8, !tbaa !5
  store i32 0, ptr %20, align 4, !tbaa !14
  %21 = load i32, ptr %pos5.addr, align 4, !tbaa !14
  store i32 %21, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %if.else
  br label %if.end5

if.end5:                                          ; preds = %if.end
  %22 = load i32, ptr %pos3.addr, align 4, !tbaa !14
  store i32 %22, ptr %prevpos, align 4, !tbaa !14
  %23 = load ptr, ptr %mismatch_positions, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i32, ptr %23, i64 0
  %24 = load i32, ptr %arrayidx, align 4, !tbaa !14
  store i32 %24, ptr %pos, align 4, !tbaa !14
  store i32 %24, ptr %trimpos, align 4, !tbaa !14
  %25 = load i32, ptr %prevpos, align 4, !tbaa !14
  %26 = load i32, ptr %pos, align 4, !tbaa !14
  %sub6 = sub nsw i32 %25, %26
  %sub7 = sub nsw i32 %sub6, 1
  %mul = mul nsw i32 %sub7, 1
  store i32 %mul, ptr %score, align 4, !tbaa !14
  store i32 %mul, ptr %max_score, align 4, !tbaa !14
  %27 = load ptr, ptr %nmismatches_to_trimpos.addr, align 8, !tbaa !5
  store i32 0, ptr %27, align 4, !tbaa !14
  %28 = load i32, ptr %pos, align 4, !tbaa !14
  store i32 %28, ptr %prevpos, align 4, !tbaa !14
  store i32 1, ptr %i, align 4, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end5
  %29 = load i32, ptr %i, align 4, !tbaa !14
  %30 = load ptr, ptr %total_nmismatches.addr, align 8, !tbaa !5
  %31 = load i32, ptr %30, align 4, !tbaa !14
  %cmp8 = icmp slt i32 %29, %31
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %32 = load ptr, ptr %mismatch_positions, align 8, !tbaa !5
  %33 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom = sext i32 %33 to i64
  %arrayidx10 = getelementptr inbounds i32, ptr %32, i64 %idxprom
  %34 = load i32, ptr %arrayidx10, align 4, !tbaa !14
  store i32 %34, ptr %pos, align 4, !tbaa !14
  %35 = load i32, ptr %score, align 4, !tbaa !14
  %add = add nsw i32 %35, -4
  store i32 %add, ptr %score, align 4, !tbaa !14
  %36 = load i32, ptr %prevpos, align 4, !tbaa !14
  %37 = load i32, ptr %pos, align 4, !tbaa !14
  %sub11 = sub nsw i32 %36, %37
  %sub12 = sub nsw i32 %sub11, 1
  %mul13 = mul nsw i32 %sub12, 1
  %38 = load i32, ptr %score, align 4, !tbaa !14
  %add14 = add nsw i32 %38, %mul13
  store i32 %add14, ptr %score, align 4, !tbaa !14
  %39 = load i32, ptr %score, align 4, !tbaa !14
  %40 = load i32, ptr %max_score, align 4, !tbaa !14
  %cmp15 = icmp sge i32 %39, %40
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %for.body
  %41 = load i32, ptr %pos, align 4, !tbaa !14
  store i32 %41, ptr %trimpos, align 4, !tbaa !14
  %42 = load i32, ptr %i, align 4, !tbaa !14
  %43 = load ptr, ptr %nmismatches_to_trimpos.addr, align 8, !tbaa !5
  store i32 %42, ptr %43, align 4, !tbaa !14
  %44 = load i32, ptr %score, align 4, !tbaa !14
  store i32 %44, ptr %max_score, align 4, !tbaa !14
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %for.body
  %45 = load i32, ptr %pos, align 4, !tbaa !14
  store i32 %45, ptr %prevpos, align 4, !tbaa !14
  br label %for.inc

for.inc:                                          ; preds = %if.end18
  %46 = load i32, ptr %i, align 4, !tbaa !14
  %inc = add nsw i32 %46, 1
  store i32 %inc, ptr %i, align 4, !tbaa !14
  br label %for.cond, !llvm.loop !29

for.end:                                          ; preds = %for.cond
  %47 = load ptr, ptr %nmismatches_to_trimpos.addr, align 8, !tbaa !5
  %48 = load i32, ptr %47, align 4, !tbaa !14
  %49 = load ptr, ptr %total_nmismatches.addr, align 8, !tbaa !5
  %50 = load i32, ptr %49, align 4, !tbaa !14
  %sub19 = sub nsw i32 %50, 1
  %cmp20 = icmp eq i32 %48, %sub19
  br i1 %cmp20, label %if.then22, label %if.else25

if.then22:                                        ; preds = %for.end
  %51 = load i32, ptr %pos5.addr, align 4, !tbaa !14
  %sub23 = sub nsw i32 %51, 1
  store i32 %sub23, ptr %trimpos, align 4, !tbaa !14
  %52 = load ptr, ptr %nmismatches_to_trimpos.addr, align 8, !tbaa !5
  %53 = load i32, ptr %52, align 4, !tbaa !14
  %add24 = add nsw i32 %53, 1
  store i32 %add24, ptr %52, align 4, !tbaa !14
  br label %if.end36

if.else25:                                        ; preds = %for.end
  %54 = load i32, ptr %pos5.addr, align 4, !tbaa !14
  %sub26 = sub nsw i32 %54, 1
  store i32 %sub26, ptr %pos, align 4, !tbaa !14
  %55 = load i32, ptr %score, align 4, !tbaa !14
  %add27 = add nsw i32 %55, -4
  store i32 %add27, ptr %score, align 4, !tbaa !14
  %56 = load i32, ptr %prevpos, align 4, !tbaa !14
  %57 = load i32, ptr %pos, align 4, !tbaa !14
  %sub28 = sub nsw i32 %56, %57
  %sub29 = sub nsw i32 %sub28, 1
  %mul30 = mul nsw i32 %sub29, 1
  %58 = load i32, ptr %score, align 4, !tbaa !14
  %add31 = add nsw i32 %58, %mul30
  store i32 %add31, ptr %score, align 4, !tbaa !14
  %59 = load i32, ptr %score, align 4, !tbaa !14
  %60 = load i32, ptr %max_score, align 4, !tbaa !14
  %cmp32 = icmp sge i32 %59, %60
  br i1 %cmp32, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.else25
  %61 = load i32, ptr %pos, align 4, !tbaa !14
  store i32 %61, ptr %trimpos, align 4, !tbaa !14
  %62 = load i32, ptr %i, align 4, !tbaa !14
  %63 = load ptr, ptr %nmismatches_to_trimpos.addr, align 8, !tbaa !5
  store i32 %62, ptr %63, align 4, !tbaa !14
  %64 = load i32, ptr %score, align 4, !tbaa !14
  store i32 %64, ptr %max_score, align 4, !tbaa !14
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %if.else25
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.then22
  %65 = load i32, ptr %trimpos, align 4, !tbaa !14
  %add37 = add nsw i32 %65, 1
  store i32 %add37, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %alignlength) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %mismatch_positions) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %prevpos) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %pos) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %trimpos) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %score) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %max_score) #4
  %66 = load i32, ptr %retval, align 4
  ret i32 %66
}

declare i32 @Genomebits_mismatches_fromright_trim(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @Spliceends_trimmed_qstarts(ptr noundef %new, ptr noundef %nosplice_trimpos, ptr noundef %farsplice_trimpos, ptr noundef %pos5_nmismatches, ptr noundef %nosplice_nmismatches, ptr noundef %farsplice_nmismatches, ptr noundef %splice5p, ptr noundef %splicetype5, ptr noundef %ambig_prob_5, i32 noundef %try_sensedir, i64 noundef %univdiagonal, i32 noundef %querylength, i32 noundef %qend, i32 noundef %exon_origin, i32 noundef %chrnum, i64 noundef %chroffset, i8 noundef zeroext %plusp, i32 noundef %genestrand, i32 noundef %nmismatches_allowed, i8 noundef zeroext %innerp, i8 noundef zeroext %salvagep, ptr noundef %mismatch_positions_alloc, ptr noundef %novel_diagonals_alloc, ptr noundef %localdb_alloc, i32 noundef %streamspace_max_alloc, ptr noundef %streamspace_alloc, ptr noundef %streamptr_alloc, ptr noundef %streamsize_alloc, ptr noundef %mergeinfo, ptr noundef %knownsplicing, ptr noundef %spliceendsgen, ptr noundef %query_compress, ptr noundef %queryptr, ptr noundef %genomebits, ptr noundef %genomebits_alt, i8 noundef zeroext %novelsplicingp) #1 {
entry:
  %retval = alloca i32, align 4
  %new.addr = alloca ptr, align 8
  %nosplice_trimpos.addr = alloca ptr, align 8
  %farsplice_trimpos.addr = alloca ptr, align 8
  %pos5_nmismatches.addr = alloca ptr, align 8
  %nosplice_nmismatches.addr = alloca ptr, align 8
  %farsplice_nmismatches.addr = alloca ptr, align 8
  %splice5p.addr = alloca ptr, align 8
  %splicetype5.addr = alloca ptr, align 8
  %ambig_prob_5.addr = alloca ptr, align 8
  %try_sensedir.addr = alloca i32, align 4
  %univdiagonal.addr = alloca i64, align 8
  %querylength.addr = alloca i32, align 4
  %qend.addr = alloca i32, align 4
  %exon_origin.addr = alloca i32, align 4
  %chrnum.addr = alloca i32, align 4
  %chroffset.addr = alloca i64, align 8
  %plusp.addr = alloca i8, align 1
  %genestrand.addr = alloca i32, align 4
  %nmismatches_allowed.addr = alloca i32, align 4
  %innerp.addr = alloca i8, align 1
  %salvagep.addr = alloca i8, align 1
  %mismatch_positions_alloc.addr = alloca ptr, align 8
  %novel_diagonals_alloc.addr = alloca ptr, align 8
  %localdb_alloc.addr = alloca ptr, align 8
  %streamspace_max_alloc.addr = alloca i32, align 4
  %streamspace_alloc.addr = alloca ptr, align 8
  %streamptr_alloc.addr = alloca ptr, align 8
  %streamsize_alloc.addr = alloca ptr, align 8
  %mergeinfo.addr = alloca ptr, align 8
  %knownsplicing.addr = alloca ptr, align 8
  %spliceendsgen.addr = alloca ptr, align 8
  %query_compress.addr = alloca ptr, align 8
  %queryptr.addr = alloca ptr, align 8
  %genomebits.addr = alloca ptr, align 8
  %genomebits_alt.addr = alloca ptr, align 8
  %novelsplicingp.addr = alloca i8, align 1
  %pos5 = alloca i32, align 4
  %partnerp = alloca i8, align 1
  %search_localdb_p = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %new, ptr %new.addr, align 8, !tbaa !5
  store ptr %nosplice_trimpos, ptr %nosplice_trimpos.addr, align 8, !tbaa !5
  store ptr %farsplice_trimpos, ptr %farsplice_trimpos.addr, align 8, !tbaa !5
  store ptr %pos5_nmismatches, ptr %pos5_nmismatches.addr, align 8, !tbaa !5
  store ptr %nosplice_nmismatches, ptr %nosplice_nmismatches.addr, align 8, !tbaa !5
  store ptr %farsplice_nmismatches, ptr %farsplice_nmismatches.addr, align 8, !tbaa !5
  store ptr %splice5p, ptr %splice5p.addr, align 8, !tbaa !5
  store ptr %splicetype5, ptr %splicetype5.addr, align 8, !tbaa !5
  store ptr %ambig_prob_5, ptr %ambig_prob_5.addr, align 8, !tbaa !5
  store i32 %try_sensedir, ptr %try_sensedir.addr, align 4, !tbaa !14
  store i64 %univdiagonal, ptr %univdiagonal.addr, align 8, !tbaa !12
  store i32 %querylength, ptr %querylength.addr, align 4, !tbaa !14
  store i32 %qend, ptr %qend.addr, align 4, !tbaa !14
  store i32 %exon_origin, ptr %exon_origin.addr, align 4, !tbaa !14
  store i32 %chrnum, ptr %chrnum.addr, align 4, !tbaa !14
  store i64 %chroffset, ptr %chroffset.addr, align 8, !tbaa !12
  store i8 %plusp, ptr %plusp.addr, align 1, !tbaa !16
  store i32 %genestrand, ptr %genestrand.addr, align 4, !tbaa !14
  store i32 %nmismatches_allowed, ptr %nmismatches_allowed.addr, align 4, !tbaa !14
  store i8 %innerp, ptr %innerp.addr, align 1, !tbaa !16
  store i8 %salvagep, ptr %salvagep.addr, align 1, !tbaa !16
  store ptr %mismatch_positions_alloc, ptr %mismatch_positions_alloc.addr, align 8, !tbaa !5
  store ptr %novel_diagonals_alloc, ptr %novel_diagonals_alloc.addr, align 8, !tbaa !5
  store ptr %localdb_alloc, ptr %localdb_alloc.addr, align 8, !tbaa !5
  store i32 %streamspace_max_alloc, ptr %streamspace_max_alloc.addr, align 4, !tbaa !14
  store ptr %streamspace_alloc, ptr %streamspace_alloc.addr, align 8, !tbaa !5
  store ptr %streamptr_alloc, ptr %streamptr_alloc.addr, align 8, !tbaa !5
  store ptr %streamsize_alloc, ptr %streamsize_alloc.addr, align 8, !tbaa !5
  store ptr %mergeinfo, ptr %mergeinfo.addr, align 8, !tbaa !5
  store ptr %knownsplicing, ptr %knownsplicing.addr, align 8, !tbaa !5
  store ptr %spliceendsgen, ptr %spliceendsgen.addr, align 8, !tbaa !5
  store ptr %query_compress, ptr %query_compress.addr, align 8, !tbaa !5
  store ptr %queryptr, ptr %queryptr.addr, align 8, !tbaa !5
  store ptr %genomebits, ptr %genomebits.addr, align 8, !tbaa !5
  store ptr %genomebits_alt, ptr %genomebits_alt.addr, align 8, !tbaa !5
  store i8 %novelsplicingp, ptr %novelsplicingp.addr, align 1, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 4, ptr %pos5) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr %partnerp) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr %search_localdb_p) #4
  %0 = load ptr, ptr @localdb, align 8, !tbaa !5
  %cmp = icmp eq ptr %0, null
  %1 = zext i1 %cmp to i64
  %cond = select i1 %cmp, i32 0, i32 1
  %conv = trunc i32 %cond to i8
  store i8 %conv, ptr %search_localdb_p, align 1, !tbaa !16
  %2 = load ptr, ptr %farsplice_trimpos.addr, align 8, !tbaa !5
  store i32 -1, ptr %2, align 4, !tbaa !14
  %3 = load ptr, ptr %farsplice_nmismatches.addr, align 8, !tbaa !5
  store i32 0, ptr %3, align 4, !tbaa !14
  %4 = load ptr, ptr %splice5p.addr, align 8, !tbaa !5
  store i8 0, ptr %4, align 1, !tbaa !16
  %5 = load ptr, ptr %splicetype5.addr, align 8, !tbaa !5
  store i32 0, ptr %5, align 4, !tbaa !16
  %6 = load ptr, ptr %ambig_prob_5.addr, align 8, !tbaa !5
  store double 0.000000e+00, ptr %6, align 8, !tbaa !31
  store i32 0, ptr %pos5, align 4, !tbaa !14
  %7 = load i32, ptr %pos5, align 4, !tbaa !14
  %8 = load i32, ptr %qend.addr, align 4, !tbaa !14
  %cmp1 = icmp sge i32 %7, %8
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %9 = load i32, ptr %pos5, align 4, !tbaa !14
  %10 = load ptr, ptr %nosplice_trimpos.addr, align 8, !tbaa !5
  store i32 %9, ptr %10, align 4, !tbaa !14
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %entry
  %11 = load ptr, ptr %nosplice_nmismatches.addr, align 8, !tbaa !5
  %12 = load ptr, ptr %pos5_nmismatches.addr, align 8, !tbaa !5
  %13 = load ptr, ptr %mismatch_positions_alloc.addr, align 8, !tbaa !5
  %14 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %15 = load ptr, ptr %genomebits.addr, align 8, !tbaa !5
  %16 = load ptr, ptr %genomebits_alt.addr, align 8, !tbaa !5
  %17 = load i64, ptr %univdiagonal.addr, align 8, !tbaa !12
  %18 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %19 = load i32, ptr %pos5, align 4, !tbaa !14
  %20 = load i32, ptr %qend.addr, align 4, !tbaa !14
  %21 = load i8, ptr %plusp.addr, align 1, !tbaa !16
  %22 = load i32, ptr %genestrand.addr, align 4, !tbaa !14
  %call = call i32 @Spliceends_trim_qstart_nosplice(ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef %15, ptr noundef %16, i64 noundef %17, i32 noundef %18, i32 noundef %19, i32 noundef %20, i8 noundef zeroext %21, i32 noundef %22)
  %23 = load ptr, ptr %nosplice_trimpos.addr, align 8, !tbaa !5
  store i32 %call, ptr %23, align 4, !tbaa !14
  br label %if.end

if.end:                                           ; preds = %if.else
  %24 = load ptr, ptr %nosplice_trimpos.addr, align 8, !tbaa !5
  %25 = load i32, ptr %24, align 4, !tbaa !14
  %26 = load i32, ptr %qend.addr, align 4, !tbaa !14
  %cmp3 = icmp sge i32 %25, %26
  br i1 %cmp3, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else6:                                         ; preds = %if.end
  %27 = load ptr, ptr %knownsplicing.addr, align 8, !tbaa !5
  %cmp7 = icmp eq ptr %27, null
  br i1 %cmp7, label %land.lhs.true, label %if.else13

land.lhs.true:                                    ; preds = %if.else6
  %28 = load i8, ptr %novelsplicingp.addr, align 1, !tbaa !16
  %conv9 = zext i8 %28 to i32
  %cmp10 = icmp eq i32 %conv9, 0
  br i1 %cmp10, label %if.then12, label %if.else13

if.then12:                                        ; preds = %land.lhs.true
  %29 = load ptr, ptr %new.addr, align 8, !tbaa !5
  store ptr null, ptr %29, align 8, !tbaa !5
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else13:                                        ; preds = %land.lhs.true, %if.else6
  %30 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %31 = load ptr, ptr %queryptr.addr, align 8, !tbaa !5
  %32 = load ptr, ptr %knownsplicing.addr, align 8, !tbaa !5
  %33 = load i32, ptr %try_sensedir.addr, align 4, !tbaa !14
  %34 = load i64, ptr %univdiagonal.addr, align 8, !tbaa !12
  %35 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %36 = load i32, ptr %pos5, align 4, !tbaa !14
  %37 = load ptr, ptr %nosplice_trimpos.addr, align 8, !tbaa !5
  %38 = load i32, ptr %37, align 4, !tbaa !14
  %39 = load i32, ptr %qend.addr, align 4, !tbaa !14
  %40 = load i32, ptr %exon_origin.addr, align 4, !tbaa !14
  %41 = load i64, ptr %chroffset.addr, align 8, !tbaa !12
  %42 = load ptr, ptr %mismatch_positions_alloc.addr, align 8, !tbaa !5
  %43 = load ptr, ptr %pos5_nmismatches.addr, align 8, !tbaa !5
  %44 = load i32, ptr %43, align 4, !tbaa !14
  %45 = load ptr, ptr %novel_diagonals_alloc.addr, align 8, !tbaa !5
  %46 = load ptr, ptr %localdb_alloc.addr, align 8, !tbaa !5
  %47 = load i32, ptr %streamspace_max_alloc.addr, align 4, !tbaa !14
  %48 = load ptr, ptr %streamspace_alloc.addr, align 8, !tbaa !5
  %49 = load ptr, ptr %streamptr_alloc.addr, align 8, !tbaa !5
  %50 = load ptr, ptr %streamsize_alloc.addr, align 8, !tbaa !5
  %51 = load ptr, ptr %mergeinfo.addr, align 8, !tbaa !5
  %52 = load ptr, ptr %spliceendsgen.addr, align 8, !tbaa !5
  %53 = load i8, ptr %plusp.addr, align 1, !tbaa !16
  %54 = load i32, ptr %genestrand.addr, align 4, !tbaa !14
  %55 = load i32, ptr %nmismatches_allowed.addr, align 4, !tbaa !14
  %56 = load i8, ptr %search_localdb_p, align 1, !tbaa !16
  %57 = load i8, ptr %innerp.addr, align 1, !tbaa !16
  %58 = load i8, ptr %salvagep.addr, align 1, !tbaa !16
  %call14 = call ptr @trim_5(ptr noundef %partnerp, ptr noundef %30, ptr noundef %31, ptr noundef %32, i32 noundef %33, i64 noundef %34, i32 noundef %35, i32 noundef %36, i32 noundef %38, i32 noundef %39, i32 noundef %40, i64 noundef %41, ptr noundef %42, i32 noundef %44, ptr noundef %45, ptr noundef %46, i32 noundef %47, ptr noundef %48, ptr noundef %49, ptr noundef %50, ptr noundef %51, ptr noundef %52, i32 noundef 20, i8 noundef zeroext %53, i32 noundef %54, i32 noundef %55, i8 noundef zeroext %56, i8 noundef zeroext %57, i8 noundef zeroext %58)
  %59 = load ptr, ptr %new.addr, align 8, !tbaa !5
  store ptr %call14, ptr %59, align 8, !tbaa !5
  %cmp15 = icmp ne ptr %call14, null
  br i1 %cmp15, label %if.then17, label %if.else25

if.then17:                                        ; preds = %if.else13
  %60 = load ptr, ptr %new.addr, align 8, !tbaa !5
  %61 = load ptr, ptr %60, align 8, !tbaa !5
  %trimends = getelementptr inbounds %struct.Spliceends_T, ptr %61, i32 0, i32 8
  %62 = load ptr, ptr %trimends, align 8, !tbaa !23
  %arrayidx = getelementptr inbounds i32, ptr %62, i64 0
  %63 = load i32, ptr %arrayidx, align 4, !tbaa !14
  %64 = load ptr, ptr %farsplice_trimpos.addr, align 8, !tbaa !5
  store i32 %63, ptr %64, align 4, !tbaa !14
  %65 = load ptr, ptr %new.addr, align 8, !tbaa !5
  %66 = load ptr, ptr %65, align 8, !tbaa !5
  %medial_nmismatches = getelementptr inbounds %struct.Spliceends_T, ptr %66, i32 0, i32 10
  %67 = load ptr, ptr %medial_nmismatches, align 8, !tbaa !21
  %arrayidx18 = getelementptr inbounds i32, ptr %67, i64 0
  %68 = load i32, ptr %arrayidx18, align 4, !tbaa !14
  %69 = load ptr, ptr %farsplice_nmismatches.addr, align 8, !tbaa !5
  store i32 %68, ptr %69, align 4, !tbaa !14
  %70 = load ptr, ptr %splice5p.addr, align 8, !tbaa !5
  store i8 1, ptr %70, align 1, !tbaa !16
  %71 = load ptr, ptr %new.addr, align 8, !tbaa !5
  %72 = load ptr, ptr %71, align 8, !tbaa !5
  %splicetype = getelementptr inbounds %struct.Spliceends_T, ptr %72, i32 0, i32 3
  %73 = load i32, ptr %splicetype, align 4, !tbaa !33
  %74 = load ptr, ptr %splicetype5.addr, align 8, !tbaa !5
  store i32 %73, ptr %74, align 4, !tbaa !16
  %75 = load ptr, ptr %new.addr, align 8, !tbaa !5
  %76 = load ptr, ptr %75, align 8, !tbaa !5
  %ambig_probs = getelementptr inbounds %struct.Spliceends_T, ptr %76, i32 0, i32 12
  %77 = load ptr, ptr %ambig_probs, align 8, !tbaa !19
  %arrayidx19 = getelementptr inbounds double, ptr %77, i64 0
  %78 = load double, ptr %arrayidx19, align 8, !tbaa !31
  %79 = load ptr, ptr %ambig_prob_5.addr, align 8, !tbaa !5
  store double %78, ptr %79, align 8, !tbaa !31
  %80 = load i8, ptr %partnerp, align 1, !tbaa !16
  %conv20 = zext i8 %80 to i32
  %cmp21 = icmp eq i32 %conv20, 1
  br i1 %cmp21, label %if.then23, label %if.else24

if.then23:                                        ; preds = %if.then17
  %81 = load ptr, ptr %new.addr, align 8, !tbaa !5
  %82 = load ptr, ptr %81, align 8, !tbaa !5
  %nspliceends = getelementptr inbounds %struct.Spliceends_T, ptr %82, i32 0, i32 2
  %83 = load i32, ptr %nspliceends, align 8, !tbaa !34
  store i32 %83, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else24:                                        ; preds = %if.then17
  %84 = load ptr, ptr %spliceendsgen.addr, align 8, !tbaa !5
  %85 = load ptr, ptr %new.addr, align 8, !tbaa !5
  call void @Spliceendsgen_return(ptr noundef %84, ptr noundef %85)
  %86 = load ptr, ptr %new.addr, align 8, !tbaa !5
  store ptr null, ptr %86, align 8, !tbaa !5
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else25:                                        ; preds = %if.else13
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else25, %if.else24, %if.then23, %if.then12, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %search_localdb_p) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr %partnerp) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %pos5) #4
  %87 = load i32, ptr %retval, align 4
  ret i32 %87
}

; Function Attrs: nounwind uwtable
define internal ptr @trim_5(ptr noundef %partnerp, ptr noundef %query_compress, ptr noundef %queryptr, ptr noundef %knownsplicing, i32 noundef %try_sensedir, i64 noundef %univdiagonal, i32 noundef %querylength, i32 noundef %pos5, i32 noundef %qstart, i32 noundef %qend, i32 noundef %exon_origin, i64 noundef %chroffset, ptr noundef %mismatch_positions, i32 noundef %total_nmismatches, ptr noundef %novel_diagonals_alloc, ptr noundef %localdb_alloc, i32 noundef %streamspace_max_alloc, ptr noundef %streamspace_alloc, ptr noundef %streamptr_alloc, ptr noundef %streamsize_alloc, ptr noundef %mergeinfo, ptr noundef %spliceendsgen, i32 noundef %max_nconsecutive, i8 noundef zeroext %plusp, i32 noundef %genestrand, i32 noundef %nmismatches_allowed, i8 noundef zeroext %search_localdb_p, i8 noundef zeroext %innerp, i8 noundef zeroext %salvagep) #1 {
entry:
  %retval = alloca ptr, align 8
  %partnerp.addr = alloca ptr, align 8
  %query_compress.addr = alloca ptr, align 8
  %queryptr.addr = alloca ptr, align 8
  %knownsplicing.addr = alloca ptr, align 8
  %try_sensedir.addr = alloca i32, align 4
  %univdiagonal.addr = alloca i64, align 8
  %querylength.addr = alloca i32, align 4
  %pos5.addr = alloca i32, align 4
  %qstart.addr = alloca i32, align 4
  %qend.addr = alloca i32, align 4
  %exon_origin.addr = alloca i32, align 4
  %chroffset.addr = alloca i64, align 8
  %mismatch_positions.addr = alloca ptr, align 8
  %total_nmismatches.addr = alloca i32, align 4
  %novel_diagonals_alloc.addr = alloca ptr, align 8
  %localdb_alloc.addr = alloca ptr, align 8
  %streamspace_max_alloc.addr = alloca i32, align 4
  %streamspace_alloc.addr = alloca ptr, align 8
  %streamptr_alloc.addr = alloca ptr, align 8
  %streamsize_alloc.addr = alloca ptr, align 8
  %mergeinfo.addr = alloca ptr, align 8
  %spliceendsgen.addr = alloca ptr, align 8
  %max_nconsecutive.addr = alloca i32, align 4
  %plusp.addr = alloca i8, align 1
  %genestrand.addr = alloca i32, align 4
  %nmismatches_allowed.addr = alloca i32, align 4
  %search_localdb_p.addr = alloca i8, align 1
  %innerp.addr = alloca i8, align 1
  %salvagep.addr = alloca i8, align 1
  %new = alloca ptr, align 8
  %anti = alloca ptr, align 8
  %found_sensedir = alloca i32, align 4
  %qdistal = alloca i32, align 4
  %mismatchi = alloca i32, align 4
  %nspliceends = alloca i32, align 4
  %n_sense_spliceends = alloca i32, align 4
  %n_anti_spliceends = alloca i32, align 4
  %start_genomicpos = alloca i64, align 8
  %middle_genomicpos = alloca i64, align 8
  %end_genomicpos = alloca i64, align 8
  %max_sense_prob = alloca double, align 8
  %max_antisense_prob = alloca double, align 8
  %sense_partnerp = alloca i8, align 1
  %antisense_partnerp = alloca i8, align 1
  %medial_splicesite_prob = alloca double, align 8
  %distal_splicesite_prob = alloca double, align 8
  %left = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %partnerp, ptr %partnerp.addr, align 8, !tbaa !5
  store ptr %query_compress, ptr %query_compress.addr, align 8, !tbaa !5
  store ptr %queryptr, ptr %queryptr.addr, align 8, !tbaa !5
  store ptr %knownsplicing, ptr %knownsplicing.addr, align 8, !tbaa !5
  store i32 %try_sensedir, ptr %try_sensedir.addr, align 4, !tbaa !14
  store i64 %univdiagonal, ptr %univdiagonal.addr, align 8, !tbaa !12
  store i32 %querylength, ptr %querylength.addr, align 4, !tbaa !14
  store i32 %pos5, ptr %pos5.addr, align 4, !tbaa !14
  store i32 %qstart, ptr %qstart.addr, align 4, !tbaa !14
  store i32 %qend, ptr %qend.addr, align 4, !tbaa !14
  store i32 %exon_origin, ptr %exon_origin.addr, align 4, !tbaa !14
  store i64 %chroffset, ptr %chroffset.addr, align 8, !tbaa !12
  store ptr %mismatch_positions, ptr %mismatch_positions.addr, align 8, !tbaa !5
  store i32 %total_nmismatches, ptr %total_nmismatches.addr, align 4, !tbaa !14
  store ptr %novel_diagonals_alloc, ptr %novel_diagonals_alloc.addr, align 8, !tbaa !5
  store ptr %localdb_alloc, ptr %localdb_alloc.addr, align 8, !tbaa !5
  store i32 %streamspace_max_alloc, ptr %streamspace_max_alloc.addr, align 4, !tbaa !14
  store ptr %streamspace_alloc, ptr %streamspace_alloc.addr, align 8, !tbaa !5
  store ptr %streamptr_alloc, ptr %streamptr_alloc.addr, align 8, !tbaa !5
  store ptr %streamsize_alloc, ptr %streamsize_alloc.addr, align 8, !tbaa !5
  store ptr %mergeinfo, ptr %mergeinfo.addr, align 8, !tbaa !5
  store ptr %spliceendsgen, ptr %spliceendsgen.addr, align 8, !tbaa !5
  store i32 %max_nconsecutive, ptr %max_nconsecutive.addr, align 4, !tbaa !14
  store i8 %plusp, ptr %plusp.addr, align 1, !tbaa !16
  store i32 %genestrand, ptr %genestrand.addr, align 4, !tbaa !14
  store i32 %nmismatches_allowed, ptr %nmismatches_allowed.addr, align 4, !tbaa !14
  store i8 %search_localdb_p, ptr %search_localdb_p.addr, align 1, !tbaa !16
  store i8 %innerp, ptr %innerp.addr, align 1, !tbaa !16
  store i8 %salvagep, ptr %salvagep.addr, align 1, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr %new) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %anti) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %found_sensedir) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %qdistal) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %mismatchi) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %nspliceends) #4
  store i32 0, ptr %nspliceends, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %n_sense_spliceends) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n_anti_spliceends) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %start_genomicpos) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %middle_genomicpos) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %end_genomicpos) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %max_sense_prob) #4
  store double 0.000000e+00, ptr %max_sense_prob, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 8, ptr %max_antisense_prob) #4
  store double 0.000000e+00, ptr %max_antisense_prob, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 1, ptr %sense_partnerp) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr %antisense_partnerp) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %medial_splicesite_prob) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %distal_splicesite_prob) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %left) #4
  %0 = load i64, ptr %univdiagonal.addr, align 8, !tbaa !12
  %1 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %conv = sext i32 %1 to i64
  %sub = sub i64 %0, %conv
  store i64 %sub, ptr %left, align 8, !tbaa !12
  %2 = load i8, ptr %salvagep.addr, align 1, !tbaa !16
  %conv1 = zext i8 %2 to i32
  %cmp = icmp eq i32 %conv1, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store double 8.000000e-01, ptr %medial_splicesite_prob, align 8, !tbaa !31
  store double 8.000000e-01, ptr %distal_splicesite_prob, align 8, !tbaa !31
  br label %if.end

if.else:                                          ; preds = %entry
  store double 9.000000e-01, ptr %medial_splicesite_prob, align 8, !tbaa !31
  store double 9.000000e-01, ptr %distal_splicesite_prob, align 8, !tbaa !31
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i64, ptr %left, align 8, !tbaa !12
  %4 = load i32, ptr %qstart.addr, align 4, !tbaa !14
  %conv3 = sext i32 %4 to i64
  %add = add i64 %3, %conv3
  store i64 %add, ptr %middle_genomicpos, align 8, !tbaa !12
  store i32 0, ptr %mismatchi, align 4, !tbaa !14
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %5 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %6 = load i32, ptr %total_nmismatches.addr, align 4, !tbaa !14
  %cmp4 = icmp slt i32 %5, %6
  br i1 %cmp4, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %7 = load ptr, ptr %mismatch_positions.addr, align 8, !tbaa !5
  %8 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds i32, ptr %7, i64 %idxprom
  %9 = load i32, ptr %arrayidx, align 4, !tbaa !14
  %10 = load i32, ptr %qstart.addr, align 4, !tbaa !14
  %cmp6 = icmp sge i32 %9, %10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %11 = phi i1 [ false, %while.cond ], [ %cmp6, %land.rhs ]
  br i1 %11, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %12 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %inc = add nsw i32 %12, 1
  store i32 %inc, ptr %mismatchi, align 4, !tbaa !14
  br label %while.cond, !llvm.loop !35

while.end:                                        ; preds = %land.end
  %13 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %14 = load i32, ptr @distal_nmismatches_allowed, align 4, !tbaa !14
  %add8 = add nsw i32 %13, %14
  %15 = load i32, ptr %total_nmismatches.addr, align 4, !tbaa !14
  %cmp9 = icmp sge i32 %add8, %15
  br i1 %cmp9, label %if.then11, label %if.else12

if.then11:                                        ; preds = %while.end
  %16 = load i32, ptr %pos5.addr, align 4, !tbaa !14
  store i32 %16, ptr %qdistal, align 4, !tbaa !14
  br label %if.end16

if.else12:                                        ; preds = %while.end
  %17 = load ptr, ptr %mismatch_positions.addr, align 8, !tbaa !5
  %18 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %19 = load i32, ptr @distal_nmismatches_allowed, align 4, !tbaa !14
  %add13 = add nsw i32 %18, %19
  %idxprom14 = sext i32 %add13 to i64
  %arrayidx15 = getelementptr inbounds i32, ptr %17, i64 %idxprom14
  %20 = load i32, ptr %arrayidx15, align 4, !tbaa !14
  store i32 %20, ptr %qdistal, align 4, !tbaa !14
  br label %if.end16

if.end16:                                         ; preds = %if.else12, %if.then11
  %21 = load i64, ptr %left, align 8, !tbaa !12
  %22 = load i32, ptr %qdistal, align 4, !tbaa !14
  %conv17 = sext i32 %22 to i64
  %add18 = add i64 %21, %conv17
  store i64 %add18, ptr %start_genomicpos, align 8, !tbaa !12
  %23 = load i64, ptr %middle_genomicpos, align 8, !tbaa !12
  %add19 = add i64 %23, 10
  store i64 %add19, ptr %end_genomicpos, align 8, !tbaa !12
  %24 = load i64, ptr %left, align 8, !tbaa !12
  %25 = load i32, ptr %qend.addr, align 4, !tbaa !14
  %conv20 = sext i32 %25 to i64
  %add21 = add i64 %24, %conv20
  %cmp22 = icmp ugt i64 %add19, %add21
  br i1 %cmp22, label %if.then24, label %if.end27

if.then24:                                        ; preds = %if.end16
  %26 = load i64, ptr %left, align 8, !tbaa !12
  %27 = load i32, ptr %qend.addr, align 4, !tbaa !14
  %conv25 = sext i32 %27 to i64
  %add26 = add i64 %26, %conv25
  store i64 %add26, ptr %end_genomicpos, align 8, !tbaa !12
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %if.end16
  %28 = load i64, ptr %left, align 8, !tbaa !12
  %29 = load i32, ptr %exon_origin.addr, align 4, !tbaa !14
  %conv28 = sext i32 %29 to i64
  %add29 = add i64 %28, %conv28
  %cmp30 = icmp ult i64 %add29, 20
  br i1 %cmp30, label %if.then32, label %if.else33

if.then32:                                        ; preds = %if.end27
  br label %if.end44

if.else33:                                        ; preds = %if.end27
  %30 = load i64, ptr %end_genomicpos, align 8, !tbaa !12
  %31 = load i64, ptr %left, align 8, !tbaa !12
  %32 = load i32, ptr %exon_origin.addr, align 4, !tbaa !14
  %conv34 = sext i32 %32 to i64
  %add35 = add i64 %31, %conv34
  %sub36 = sub i64 %add35, 20
  %cmp37 = icmp ugt i64 %30, %sub36
  br i1 %cmp37, label %if.then39, label %if.end43

if.then39:                                        ; preds = %if.else33
  %33 = load i64, ptr %left, align 8, !tbaa !12
  %34 = load i32, ptr %exon_origin.addr, align 4, !tbaa !14
  %conv40 = sext i32 %34 to i64
  %add41 = add i64 %33, %conv40
  %sub42 = sub i64 %add41, 20
  store i64 %sub42, ptr %end_genomicpos, align 8, !tbaa !12
  br label %if.end43

if.end43:                                         ; preds = %if.then39, %if.else33
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %if.then32
  %35 = load i64, ptr %start_genomicpos, align 8, !tbaa !12
  %36 = load i64, ptr %end_genomicpos, align 8, !tbaa !12
  %cmp45 = icmp uge i64 %35, %36
  br i1 %cmp45, label %if.then47, label %if.else48

if.then47:                                        ; preds = %if.end44
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else48:                                        ; preds = %if.end44
  %37 = load ptr, ptr %spliceendsgen.addr, align 8, !tbaa !5
  %38 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %call = call ptr @Spliceendsgen_checkout(ptr noundef %37, i32 noundef %38)
  store ptr %call, ptr %new, align 8, !tbaa !5
  br label %if.end49

if.end49:                                         ; preds = %if.else48
  %39 = load i32, ptr %try_sensedir.addr, align 4, !tbaa !14
  %cmp50 = icmp eq i32 %39, 2
  br i1 %cmp50, label %if.then52, label %if.else62

if.then52:                                        ; preds = %if.end49
  %40 = load ptr, ptr %knownsplicing.addr, align 8, !tbaa !5
  %cmp53 = icmp ne ptr %40, null
  br i1 %cmp53, label %land.lhs.true, label %if.else59

land.lhs.true:                                    ; preds = %if.then52
  %41 = load ptr, ptr %new, align 8, !tbaa !5
  %42 = load i64, ptr %end_genomicpos, align 8, !tbaa !12
  %43 = load i64, ptr %start_genomicpos, align 8, !tbaa !12
  %44 = load i32, ptr %qstart.addr, align 4, !tbaa !14
  %45 = load i32, ptr %qend.addr, align 4, !tbaa !14
  %46 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %47 = load i64, ptr %univdiagonal.addr, align 8, !tbaa !12
  %48 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %49 = load ptr, ptr %knownsplicing.addr, align 8, !tbaa !5
  %50 = load i8, ptr %plusp.addr, align 1, !tbaa !16
  %51 = load i32, ptr %genestrand.addr, align 4, !tbaa !14
  %call55 = call i32 @known_spliceends_trim5_sense(ptr noundef %41, i64 noundef %42, i64 noundef %43, i32 noundef %44, i32 noundef %45, ptr noundef %46, i64 noundef %47, i32 noundef %48, ptr noundef %49, i8 noundef zeroext %50, i32 noundef %51)
  store i32 %call55, ptr %nspliceends, align 4, !tbaa !14
  %cmp56 = icmp sgt i32 %call55, 0
  br i1 %cmp56, label %if.then58, label %if.else59

if.then58:                                        ; preds = %land.lhs.true
  %52 = load ptr, ptr %partnerp.addr, align 8, !tbaa !5
  store i8 1, ptr %52, align 1, !tbaa !16
  store double 1.000000e+00, ptr %max_sense_prob, align 8, !tbaa !31
  br label %if.end61

if.else59:                                        ; preds = %land.lhs.true, %if.then52
  %53 = load ptr, ptr %partnerp.addr, align 8, !tbaa !5
  %54 = load ptr, ptr %new, align 8, !tbaa !5
  %55 = load i64, ptr %end_genomicpos, align 8, !tbaa !12
  %56 = load i64, ptr %start_genomicpos, align 8, !tbaa !12
  %57 = load i64, ptr %middle_genomicpos, align 8, !tbaa !12
  %58 = load ptr, ptr %mismatch_positions.addr, align 8, !tbaa !5
  %59 = load i32, ptr %total_nmismatches.addr, align 4, !tbaa !14
  %60 = load i64, ptr %univdiagonal.addr, align 8, !tbaa !12
  %61 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %62 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %63 = load ptr, ptr %queryptr.addr, align 8, !tbaa !5
  %64 = load i64, ptr %chroffset.addr, align 8, !tbaa !12
  %65 = load ptr, ptr %novel_diagonals_alloc.addr, align 8, !tbaa !5
  %66 = load ptr, ptr %localdb_alloc.addr, align 8, !tbaa !5
  %67 = load i32, ptr %streamspace_max_alloc.addr, align 4, !tbaa !14
  %68 = load ptr, ptr %streamspace_alloc.addr, align 8, !tbaa !5
  %69 = load ptr, ptr %streamptr_alloc.addr, align 8, !tbaa !5
  %70 = load ptr, ptr %streamsize_alloc.addr, align 8, !tbaa !5
  %71 = load ptr, ptr %mergeinfo.addr, align 8, !tbaa !5
  %72 = load double, ptr %medial_splicesite_prob, align 8, !tbaa !31
  %73 = load double, ptr %distal_splicesite_prob, align 8, !tbaa !31
  %74 = load i32, ptr %max_nconsecutive.addr, align 4, !tbaa !14
  %75 = load i8, ptr %plusp.addr, align 1, !tbaa !16
  %76 = load i32, ptr %genestrand.addr, align 4, !tbaa !14
  %77 = load i32, ptr %nmismatches_allowed.addr, align 4, !tbaa !14
  %78 = load i8, ptr %search_localdb_p.addr, align 1, !tbaa !16
  %79 = load i8, ptr %innerp.addr, align 1, !tbaa !16
  %80 = load i8, ptr %salvagep.addr, align 1, !tbaa !16
  %call60 = call i32 @novel_spliceends_trim5_sense(ptr noundef %max_sense_prob, ptr noundef %53, ptr noundef %54, i64 noundef %55, i64 noundef %56, i64 noundef %57, ptr noundef %58, i32 noundef %59, i64 noundef %60, i32 noundef %61, ptr noundef %62, ptr noundef %63, i64 noundef %64, ptr noundef %65, ptr noundef %66, i32 noundef %67, ptr noundef %68, ptr noundef %69, ptr noundef %70, ptr noundef %71, double noundef %72, double noundef %73, i32 noundef %74, i8 noundef zeroext %75, i32 noundef %76, i32 noundef %77, i8 noundef zeroext %78, i8 noundef zeroext %79, i8 noundef zeroext %80)
  store i32 %call60, ptr %nspliceends, align 4, !tbaa !14
  br label %if.end61

if.end61:                                         ; preds = %if.else59, %if.then58
  store i32 2, ptr %found_sensedir, align 4, !tbaa !14
  br label %if.end109

if.else62:                                        ; preds = %if.end49
  %81 = load i32, ptr %try_sensedir.addr, align 4, !tbaa !14
  %cmp63 = icmp eq i32 %81, 1
  br i1 %cmp63, label %if.then65, label %if.else76

if.then65:                                        ; preds = %if.else62
  %82 = load ptr, ptr %knownsplicing.addr, align 8, !tbaa !5
  %cmp66 = icmp ne ptr %82, null
  br i1 %cmp66, label %land.lhs.true68, label %if.else73

land.lhs.true68:                                  ; preds = %if.then65
  %83 = load ptr, ptr %new, align 8, !tbaa !5
  %84 = load i64, ptr %end_genomicpos, align 8, !tbaa !12
  %85 = load i64, ptr %start_genomicpos, align 8, !tbaa !12
  %86 = load i32, ptr %qstart.addr, align 4, !tbaa !14
  %87 = load i32, ptr %qend.addr, align 4, !tbaa !14
  %88 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %89 = load i64, ptr %univdiagonal.addr, align 8, !tbaa !12
  %90 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %91 = load ptr, ptr %knownsplicing.addr, align 8, !tbaa !5
  %92 = load i8, ptr %plusp.addr, align 1, !tbaa !16
  %93 = load i32, ptr %genestrand.addr, align 4, !tbaa !14
  %call69 = call i32 @known_spliceends_trim5_anti(ptr noundef %83, i64 noundef %84, i64 noundef %85, i32 noundef %86, i32 noundef %87, ptr noundef %88, i64 noundef %89, i32 noundef %90, ptr noundef %91, i8 noundef zeroext %92, i32 noundef %93)
  store i32 %call69, ptr %nspliceends, align 4, !tbaa !14
  %cmp70 = icmp sgt i32 %call69, 0
  br i1 %cmp70, label %if.then72, label %if.else73

if.then72:                                        ; preds = %land.lhs.true68
  %94 = load ptr, ptr %partnerp.addr, align 8, !tbaa !5
  store i8 1, ptr %94, align 1, !tbaa !16
  store double 1.000000e+00, ptr %max_antisense_prob, align 8, !tbaa !31
  br label %if.end75

if.else73:                                        ; preds = %land.lhs.true68, %if.then65
  %95 = load ptr, ptr %partnerp.addr, align 8, !tbaa !5
  %96 = load ptr, ptr %new, align 8, !tbaa !5
  %97 = load i64, ptr %end_genomicpos, align 8, !tbaa !12
  %98 = load i64, ptr %start_genomicpos, align 8, !tbaa !12
  %99 = load i64, ptr %middle_genomicpos, align 8, !tbaa !12
  %100 = load ptr, ptr %mismatch_positions.addr, align 8, !tbaa !5
  %101 = load i32, ptr %total_nmismatches.addr, align 4, !tbaa !14
  %102 = load i64, ptr %univdiagonal.addr, align 8, !tbaa !12
  %103 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %104 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %105 = load ptr, ptr %queryptr.addr, align 8, !tbaa !5
  %106 = load i64, ptr %chroffset.addr, align 8, !tbaa !12
  %107 = load ptr, ptr %novel_diagonals_alloc.addr, align 8, !tbaa !5
  %108 = load ptr, ptr %localdb_alloc.addr, align 8, !tbaa !5
  %109 = load i32, ptr %streamspace_max_alloc.addr, align 4, !tbaa !14
  %110 = load ptr, ptr %streamspace_alloc.addr, align 8, !tbaa !5
  %111 = load ptr, ptr %streamptr_alloc.addr, align 8, !tbaa !5
  %112 = load ptr, ptr %streamsize_alloc.addr, align 8, !tbaa !5
  %113 = load ptr, ptr %mergeinfo.addr, align 8, !tbaa !5
  %114 = load double, ptr %medial_splicesite_prob, align 8, !tbaa !31
  %115 = load double, ptr %distal_splicesite_prob, align 8, !tbaa !31
  %116 = load i32, ptr %max_nconsecutive.addr, align 4, !tbaa !14
  %117 = load i8, ptr %plusp.addr, align 1, !tbaa !16
  %118 = load i32, ptr %genestrand.addr, align 4, !tbaa !14
  %119 = load i32, ptr %nmismatches_allowed.addr, align 4, !tbaa !14
  %120 = load i8, ptr %search_localdb_p.addr, align 1, !tbaa !16
  %121 = load i8, ptr %innerp.addr, align 1, !tbaa !16
  %122 = load i8, ptr %salvagep.addr, align 1, !tbaa !16
  %call74 = call i32 @novel_spliceends_trim5_anti(ptr noundef %max_antisense_prob, ptr noundef %95, ptr noundef %96, i64 noundef %97, i64 noundef %98, i64 noundef %99, ptr noundef %100, i32 noundef %101, i64 noundef %102, i32 noundef %103, ptr noundef %104, ptr noundef %105, i64 noundef %106, ptr noundef %107, ptr noundef %108, i32 noundef %109, ptr noundef %110, ptr noundef %111, ptr noundef %112, ptr noundef %113, double noundef %114, double noundef %115, i32 noundef %116, i8 noundef zeroext %117, i32 noundef %118, i32 noundef %119, i8 noundef zeroext %120, i8 noundef zeroext %121, i8 noundef zeroext %122)
  store i32 %call74, ptr %nspliceends, align 4, !tbaa !14
  br label %if.end75

if.end75:                                         ; preds = %if.else73, %if.then72
  store i32 1, ptr %found_sensedir, align 4, !tbaa !14
  br label %if.end108

if.else76:                                        ; preds = %if.else62
  %123 = load ptr, ptr %spliceendsgen.addr, align 8, !tbaa !5
  %124 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %call77 = call ptr @Spliceendsgen_checkout(ptr noundef %123, i32 noundef %124)
  store ptr %call77, ptr %anti, align 8, !tbaa !5
  %125 = load ptr, ptr %knownsplicing.addr, align 8, !tbaa !5
  %cmp78 = icmp ne ptr %125, null
  br i1 %cmp78, label %land.lhs.true80, label %if.else85

land.lhs.true80:                                  ; preds = %if.else76
  %126 = load ptr, ptr %new, align 8, !tbaa !5
  %127 = load i64, ptr %end_genomicpos, align 8, !tbaa !12
  %128 = load i64, ptr %start_genomicpos, align 8, !tbaa !12
  %129 = load i32, ptr %qstart.addr, align 4, !tbaa !14
  %130 = load i32, ptr %qend.addr, align 4, !tbaa !14
  %131 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %132 = load i64, ptr %univdiagonal.addr, align 8, !tbaa !12
  %133 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %134 = load ptr, ptr %knownsplicing.addr, align 8, !tbaa !5
  %135 = load i8, ptr %plusp.addr, align 1, !tbaa !16
  %136 = load i32, ptr %genestrand.addr, align 4, !tbaa !14
  %call81 = call i32 @known_spliceends_trim5_sense(ptr noundef %126, i64 noundef %127, i64 noundef %128, i32 noundef %129, i32 noundef %130, ptr noundef %131, i64 noundef %132, i32 noundef %133, ptr noundef %134, i8 noundef zeroext %135, i32 noundef %136)
  store i32 %call81, ptr %n_sense_spliceends, align 4, !tbaa !14
  %cmp82 = icmp sgt i32 %call81, 0
  br i1 %cmp82, label %if.then84, label %if.else85

if.then84:                                        ; preds = %land.lhs.true80
  store i8 1, ptr %sense_partnerp, align 1, !tbaa !16
  store double 1.000000e+00, ptr %max_sense_prob, align 8, !tbaa !31
  br label %if.end87

if.else85:                                        ; preds = %land.lhs.true80, %if.else76
  %137 = load ptr, ptr %new, align 8, !tbaa !5
  %138 = load i64, ptr %end_genomicpos, align 8, !tbaa !12
  %139 = load i64, ptr %start_genomicpos, align 8, !tbaa !12
  %140 = load i64, ptr %middle_genomicpos, align 8, !tbaa !12
  %141 = load ptr, ptr %mismatch_positions.addr, align 8, !tbaa !5
  %142 = load i32, ptr %total_nmismatches.addr, align 4, !tbaa !14
  %143 = load i64, ptr %univdiagonal.addr, align 8, !tbaa !12
  %144 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %145 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %146 = load ptr, ptr %queryptr.addr, align 8, !tbaa !5
  %147 = load i64, ptr %chroffset.addr, align 8, !tbaa !12
  %148 = load ptr, ptr %novel_diagonals_alloc.addr, align 8, !tbaa !5
  %149 = load ptr, ptr %localdb_alloc.addr, align 8, !tbaa !5
  %150 = load i32, ptr %streamspace_max_alloc.addr, align 4, !tbaa !14
  %151 = load ptr, ptr %streamspace_alloc.addr, align 8, !tbaa !5
  %152 = load ptr, ptr %streamptr_alloc.addr, align 8, !tbaa !5
  %153 = load ptr, ptr %streamsize_alloc.addr, align 8, !tbaa !5
  %154 = load ptr, ptr %mergeinfo.addr, align 8, !tbaa !5
  %155 = load double, ptr %medial_splicesite_prob, align 8, !tbaa !31
  %156 = load double, ptr %distal_splicesite_prob, align 8, !tbaa !31
  %157 = load i32, ptr %max_nconsecutive.addr, align 4, !tbaa !14
  %158 = load i8, ptr %plusp.addr, align 1, !tbaa !16
  %159 = load i32, ptr %genestrand.addr, align 4, !tbaa !14
  %160 = load i32, ptr %nmismatches_allowed.addr, align 4, !tbaa !14
  %161 = load i8, ptr %search_localdb_p.addr, align 1, !tbaa !16
  %162 = load i8, ptr %innerp.addr, align 1, !tbaa !16
  %163 = load i8, ptr %salvagep.addr, align 1, !tbaa !16
  %call86 = call i32 @novel_spliceends_trim5_sense(ptr noundef %max_sense_prob, ptr noundef %sense_partnerp, ptr noundef %137, i64 noundef %138, i64 noundef %139, i64 noundef %140, ptr noundef %141, i32 noundef %142, i64 noundef %143, i32 noundef %144, ptr noundef %145, ptr noundef %146, i64 noundef %147, ptr noundef %148, ptr noundef %149, i32 noundef %150, ptr noundef %151, ptr noundef %152, ptr noundef %153, ptr noundef %154, double noundef %155, double noundef %156, i32 noundef %157, i8 noundef zeroext %158, i32 noundef %159, i32 noundef %160, i8 noundef zeroext %161, i8 noundef zeroext %162, i8 noundef zeroext %163)
  store i32 %call86, ptr %n_sense_spliceends, align 4, !tbaa !14
  br label %if.end87

if.end87:                                         ; preds = %if.else85, %if.then84
  %164 = load ptr, ptr %knownsplicing.addr, align 8, !tbaa !5
  %cmp88 = icmp ne ptr %164, null
  br i1 %cmp88, label %land.lhs.true90, label %if.else95

land.lhs.true90:                                  ; preds = %if.end87
  %165 = load ptr, ptr %anti, align 8, !tbaa !5
  %166 = load i64, ptr %end_genomicpos, align 8, !tbaa !12
  %167 = load i64, ptr %start_genomicpos, align 8, !tbaa !12
  %168 = load i32, ptr %qstart.addr, align 4, !tbaa !14
  %169 = load i32, ptr %qend.addr, align 4, !tbaa !14
  %170 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %171 = load i64, ptr %univdiagonal.addr, align 8, !tbaa !12
  %172 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %173 = load ptr, ptr %knownsplicing.addr, align 8, !tbaa !5
  %174 = load i8, ptr %plusp.addr, align 1, !tbaa !16
  %175 = load i32, ptr %genestrand.addr, align 4, !tbaa !14
  %call91 = call i32 @known_spliceends_trim5_anti(ptr noundef %165, i64 noundef %166, i64 noundef %167, i32 noundef %168, i32 noundef %169, ptr noundef %170, i64 noundef %171, i32 noundef %172, ptr noundef %173, i8 noundef zeroext %174, i32 noundef %175)
  store i32 %call91, ptr %n_anti_spliceends, align 4, !tbaa !14
  %cmp92 = icmp sgt i32 %call91, 0
  br i1 %cmp92, label %if.then94, label %if.else95

if.then94:                                        ; preds = %land.lhs.true90
  store i8 1, ptr %antisense_partnerp, align 1, !tbaa !16
  store double 1.000000e+00, ptr %max_antisense_prob, align 8, !tbaa !31
  br label %if.end97

if.else95:                                        ; preds = %land.lhs.true90, %if.end87
  %176 = load ptr, ptr %anti, align 8, !tbaa !5
  %177 = load i64, ptr %end_genomicpos, align 8, !tbaa !12
  %178 = load i64, ptr %start_genomicpos, align 8, !tbaa !12
  %179 = load i64, ptr %middle_genomicpos, align 8, !tbaa !12
  %180 = load ptr, ptr %mismatch_positions.addr, align 8, !tbaa !5
  %181 = load i32, ptr %total_nmismatches.addr, align 4, !tbaa !14
  %182 = load i64, ptr %univdiagonal.addr, align 8, !tbaa !12
  %183 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %184 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %185 = load ptr, ptr %queryptr.addr, align 8, !tbaa !5
  %186 = load i64, ptr %chroffset.addr, align 8, !tbaa !12
  %187 = load ptr, ptr %novel_diagonals_alloc.addr, align 8, !tbaa !5
  %188 = load ptr, ptr %localdb_alloc.addr, align 8, !tbaa !5
  %189 = load i32, ptr %streamspace_max_alloc.addr, align 4, !tbaa !14
  %190 = load ptr, ptr %streamspace_alloc.addr, align 8, !tbaa !5
  %191 = load ptr, ptr %streamptr_alloc.addr, align 8, !tbaa !5
  %192 = load ptr, ptr %streamsize_alloc.addr, align 8, !tbaa !5
  %193 = load ptr, ptr %mergeinfo.addr, align 8, !tbaa !5
  %194 = load double, ptr %medial_splicesite_prob, align 8, !tbaa !31
  %195 = load double, ptr %distal_splicesite_prob, align 8, !tbaa !31
  %196 = load i32, ptr %max_nconsecutive.addr, align 4, !tbaa !14
  %197 = load i8, ptr %plusp.addr, align 1, !tbaa !16
  %198 = load i32, ptr %genestrand.addr, align 4, !tbaa !14
  %199 = load i32, ptr %nmismatches_allowed.addr, align 4, !tbaa !14
  %200 = load i8, ptr %search_localdb_p.addr, align 1, !tbaa !16
  %201 = load i8, ptr %innerp.addr, align 1, !tbaa !16
  %202 = load i8, ptr %salvagep.addr, align 1, !tbaa !16
  %call96 = call i32 @novel_spliceends_trim5_anti(ptr noundef %max_antisense_prob, ptr noundef %antisense_partnerp, ptr noundef %176, i64 noundef %177, i64 noundef %178, i64 noundef %179, ptr noundef %180, i32 noundef %181, i64 noundef %182, i32 noundef %183, ptr noundef %184, ptr noundef %185, i64 noundef %186, ptr noundef %187, ptr noundef %188, i32 noundef %189, ptr noundef %190, ptr noundef %191, ptr noundef %192, ptr noundef %193, double noundef %194, double noundef %195, i32 noundef %196, i8 noundef zeroext %197, i32 noundef %198, i32 noundef %199, i8 noundef zeroext %200, i8 noundef zeroext %201, i8 noundef zeroext %202)
  store i32 %call96, ptr %n_anti_spliceends, align 4, !tbaa !14
  br label %if.end97

if.end97:                                         ; preds = %if.else95, %if.then94
  %203 = load double, ptr %max_sense_prob, align 8, !tbaa !31
  %204 = load double, ptr %max_antisense_prob, align 8, !tbaa !31
  %cmp98 = fcmp ogt double %203, %204
  br i1 %cmp98, label %if.then100, label %if.else101

if.then100:                                       ; preds = %if.end97
  %205 = load i8, ptr %sense_partnerp, align 1, !tbaa !16
  %206 = load ptr, ptr %partnerp.addr, align 8, !tbaa !5
  store i8 %205, ptr %206, align 1, !tbaa !16
  %207 = load i32, ptr %n_sense_spliceends, align 4, !tbaa !14
  store i32 %207, ptr %nspliceends, align 4, !tbaa !14
  store i32 2, ptr %found_sensedir, align 4, !tbaa !14
  %208 = load ptr, ptr %spliceendsgen.addr, align 8, !tbaa !5
  call void @Spliceendsgen_return(ptr noundef %208, ptr noundef %anti)
  br label %if.end107

if.else101:                                       ; preds = %if.end97
  %209 = load double, ptr %max_antisense_prob, align 8, !tbaa !31
  %210 = load double, ptr %max_sense_prob, align 8, !tbaa !31
  %cmp102 = fcmp ogt double %209, %210
  br i1 %cmp102, label %if.then104, label %if.else105

if.then104:                                       ; preds = %if.else101
  %211 = load i8, ptr %antisense_partnerp, align 1, !tbaa !16
  %212 = load ptr, ptr %partnerp.addr, align 8, !tbaa !5
  store i8 %211, ptr %212, align 1, !tbaa !16
  %213 = load i32, ptr %n_anti_spliceends, align 4, !tbaa !14
  store i32 %213, ptr %nspliceends, align 4, !tbaa !14
  store i32 1, ptr %found_sensedir, align 4, !tbaa !14
  %214 = load ptr, ptr %spliceendsgen.addr, align 8, !tbaa !5
  call void @Spliceendsgen_return(ptr noundef %214, ptr noundef %new)
  %215 = load ptr, ptr %anti, align 8, !tbaa !5
  store ptr %215, ptr %new, align 8, !tbaa !5
  br label %if.end106

if.else105:                                       ; preds = %if.else101
  %216 = load ptr, ptr %spliceendsgen.addr, align 8, !tbaa !5
  call void @Spliceendsgen_return(ptr noundef %216, ptr noundef %anti)
  %217 = load ptr, ptr %spliceendsgen.addr, align 8, !tbaa !5
  call void @Spliceendsgen_return(ptr noundef %217, ptr noundef %new)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end106:                                        ; preds = %if.then104
  br label %if.end107

if.end107:                                        ; preds = %if.end106, %if.then100
  br label %if.end108

if.end108:                                        ; preds = %if.end107, %if.end75
  br label %if.end109

if.end109:                                        ; preds = %if.end108, %if.end61
  %218 = load i32, ptr %nspliceends, align 4, !tbaa !14
  %cmp110 = icmp eq i32 %218, 0
  br i1 %cmp110, label %if.then112, label %if.else113

if.then112:                                       ; preds = %if.end109
  %219 = load ptr, ptr %spliceendsgen.addr, align 8, !tbaa !5
  call void @Spliceendsgen_return(ptr noundef %219, ptr noundef %new)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else113:                                       ; preds = %if.end109
  %220 = load i32, ptr %nspliceends, align 4, !tbaa !14
  %221 = load ptr, ptr %new, align 8, !tbaa !5
  %nspliceends114 = getelementptr inbounds %struct.Spliceends_T, ptr %221, i32 0, i32 2
  store i32 %220, ptr %nspliceends114, align 8, !tbaa !34
  %222 = load i32, ptr %found_sensedir, align 4, !tbaa !14
  %223 = load ptr, ptr %new, align 8, !tbaa !5
  %sensedir = getelementptr inbounds %struct.Spliceends_T, ptr %223, i32 0, i32 4
  store i32 %222, ptr %sensedir, align 8, !tbaa !36
  %224 = load i32, ptr %found_sensedir, align 4, !tbaa !14
  %cmp115 = icmp eq i32 %224, 2
  br i1 %cmp115, label %if.then117, label %if.else122

if.then117:                                       ; preds = %if.else113
  %225 = load i8, ptr %plusp.addr, align 1, !tbaa !16
  %tobool = icmp ne i8 %225, 0
  br i1 %tobool, label %if.then118, label %if.else119

if.then118:                                       ; preds = %if.then117
  %226 = load ptr, ptr %new, align 8, !tbaa !5
  %splicetype = getelementptr inbounds %struct.Spliceends_T, ptr %226, i32 0, i32 3
  store i32 3, ptr %splicetype, align 4, !tbaa !33
  br label %if.end121

if.else119:                                       ; preds = %if.then117
  %227 = load ptr, ptr %new, align 8, !tbaa !5
  %splicetype120 = getelementptr inbounds %struct.Spliceends_T, ptr %227, i32 0, i32 3
  store i32 2, ptr %splicetype120, align 4, !tbaa !33
  br label %if.end121

if.end121:                                        ; preds = %if.else119, %if.then118
  br label %if.end129

if.else122:                                       ; preds = %if.else113
  %228 = load i8, ptr %plusp.addr, align 1, !tbaa !16
  %tobool123 = icmp ne i8 %228, 0
  br i1 %tobool123, label %if.then124, label %if.else126

if.then124:                                       ; preds = %if.else122
  %229 = load ptr, ptr %new, align 8, !tbaa !5
  %splicetype125 = getelementptr inbounds %struct.Spliceends_T, ptr %229, i32 0, i32 3
  store i32 2, ptr %splicetype125, align 4, !tbaa !33
  br label %if.end128

if.else126:                                       ; preds = %if.else122
  %230 = load ptr, ptr %new, align 8, !tbaa !5
  %splicetype127 = getelementptr inbounds %struct.Spliceends_T, ptr %230, i32 0, i32 3
  store i32 3, ptr %splicetype127, align 4, !tbaa !33
  br label %if.end128

if.end128:                                        ; preds = %if.else126, %if.then124
  br label %if.end129

if.end129:                                        ; preds = %if.end128, %if.end121
  %231 = load ptr, ptr %new, align 8, !tbaa !5
  store ptr %231, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end129, %if.then112, %if.else105, %if.then47
  call void @llvm.lifetime.end.p0(i64 8, ptr %left) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %distal_splicesite_prob) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %medial_splicesite_prob) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr %antisense_partnerp) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr %sense_partnerp) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %max_antisense_prob) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %max_sense_prob) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %end_genomicpos) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %middle_genomicpos) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %start_genomicpos) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %n_anti_spliceends) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %n_sense_spliceends) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %nspliceends) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %mismatchi) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %qdistal) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %found_sensedir) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %anti) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %new) #4
  %232 = load ptr, ptr %retval, align 8
  ret ptr %232
}

declare void @Spliceendsgen_return(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @Spliceends_qstart_trim(ptr noundef %trimpos, ptr noundef %nmismatches_to_trimpos, ptr noundef %found_sensedir, ptr noundef %splicetype, ptr noundef %ambig_prob_qstart, ptr noundef %knownsplicing, i32 noundef %try_sensedir, i64 noundef %univdiagonal, i32 noundef %querylength, i32 noundef %pos3, i32 noundef %exon_origin, i32 noundef %chrnum, i64 noundef %chroffset, i8 noundef zeroext %plusp, i32 noundef %genestrand, ptr noundef %mismatch_positions_alloc, ptr noundef %spliceendsgen, ptr noundef %query_compress, ptr noundef %queryptr, ptr noundef %genomebits, ptr noundef %genomebits_alt, i8 noundef zeroext %novelsplicingp) #1 {
entry:
  %retval = alloca i8, align 1
  %trimpos.addr = alloca ptr, align 8
  %nmismatches_to_trimpos.addr = alloca ptr, align 8
  %found_sensedir.addr = alloca ptr, align 8
  %splicetype.addr = alloca ptr, align 8
  %ambig_prob_qstart.addr = alloca ptr, align 8
  %knownsplicing.addr = alloca ptr, align 8
  %try_sensedir.addr = alloca i32, align 4
  %univdiagonal.addr = alloca i64, align 8
  %querylength.addr = alloca i32, align 4
  %pos3.addr = alloca i32, align 4
  %exon_origin.addr = alloca i32, align 4
  %chrnum.addr = alloca i32, align 4
  %chroffset.addr = alloca i64, align 8
  %plusp.addr = alloca i8, align 1
  %genestrand.addr = alloca i32, align 4
  %mismatch_positions_alloc.addr = alloca ptr, align 8
  %spliceendsgen.addr = alloca ptr, align 8
  %query_compress.addr = alloca ptr, align 8
  %queryptr.addr = alloca ptr, align 8
  %genomebits.addr = alloca ptr, align 8
  %genomebits_alt.addr = alloca ptr, align 8
  %novelsplicingp.addr = alloca i8, align 1
  %spliceends = alloca ptr, align 8
  %pos5 = alloca i32, align 4
  %total_nmismatches = alloca i32, align 4
  %partnerp = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %trimpos, ptr %trimpos.addr, align 8, !tbaa !5
  store ptr %nmismatches_to_trimpos, ptr %nmismatches_to_trimpos.addr, align 8, !tbaa !5
  store ptr %found_sensedir, ptr %found_sensedir.addr, align 8, !tbaa !5
  store ptr %splicetype, ptr %splicetype.addr, align 8, !tbaa !5
  store ptr %ambig_prob_qstart, ptr %ambig_prob_qstart.addr, align 8, !tbaa !5
  store ptr %knownsplicing, ptr %knownsplicing.addr, align 8, !tbaa !5
  store i32 %try_sensedir, ptr %try_sensedir.addr, align 4, !tbaa !14
  store i64 %univdiagonal, ptr %univdiagonal.addr, align 8, !tbaa !12
  store i32 %querylength, ptr %querylength.addr, align 4, !tbaa !14
  store i32 %pos3, ptr %pos3.addr, align 4, !tbaa !14
  store i32 %exon_origin, ptr %exon_origin.addr, align 4, !tbaa !14
  store i32 %chrnum, ptr %chrnum.addr, align 4, !tbaa !14
  store i64 %chroffset, ptr %chroffset.addr, align 8, !tbaa !12
  store i8 %plusp, ptr %plusp.addr, align 1, !tbaa !16
  store i32 %genestrand, ptr %genestrand.addr, align 4, !tbaa !14
  store ptr %mismatch_positions_alloc, ptr %mismatch_positions_alloc.addr, align 8, !tbaa !5
  store ptr %spliceendsgen, ptr %spliceendsgen.addr, align 8, !tbaa !5
  store ptr %query_compress, ptr %query_compress.addr, align 8, !tbaa !5
  store ptr %queryptr, ptr %queryptr.addr, align 8, !tbaa !5
  store ptr %genomebits, ptr %genomebits.addr, align 8, !tbaa !5
  store ptr %genomebits_alt, ptr %genomebits_alt.addr, align 8, !tbaa !5
  store i8 %novelsplicingp, ptr %novelsplicingp.addr, align 1, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr %spliceends) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %pos5) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %total_nmismatches) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr %partnerp) #4
  %0 = load i32, ptr %try_sensedir.addr, align 4, !tbaa !14
  %1 = load ptr, ptr %found_sensedir.addr, align 8, !tbaa !5
  store i32 %0, ptr %1, align 4, !tbaa !14
  store i32 0, ptr %pos5, align 4, !tbaa !14
  %2 = load i32, ptr %pos5, align 4, !tbaa !14
  %3 = load i32, ptr %pos3.addr, align 4, !tbaa !14
  %cmp = icmp sge i32 %2, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %pos3.addr, align 4, !tbaa !14
  %5 = load ptr, ptr %trimpos.addr, align 8, !tbaa !5
  store i32 %4, ptr %5, align 4, !tbaa !14
  %6 = load ptr, ptr %splicetype.addr, align 8, !tbaa !5
  store i32 0, ptr %6, align 4, !tbaa !16
  %7 = load ptr, ptr %ambig_prob_qstart.addr, align 8, !tbaa !5
  store double 0.000000e+00, ptr %7, align 8, !tbaa !31
  store i8 0, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %entry
  %8 = load ptr, ptr %nmismatches_to_trimpos.addr, align 8, !tbaa !5
  %9 = load ptr, ptr %mismatch_positions_alloc.addr, align 8, !tbaa !5
  %10 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %11 = load ptr, ptr %genomebits.addr, align 8, !tbaa !5
  %12 = load ptr, ptr %genomebits_alt.addr, align 8, !tbaa !5
  %13 = load i64, ptr %univdiagonal.addr, align 8, !tbaa !12
  %14 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %15 = load i32, ptr %pos5, align 4, !tbaa !14
  %16 = load i32, ptr %pos3.addr, align 4, !tbaa !14
  %17 = load i8, ptr %plusp.addr, align 1, !tbaa !16
  %18 = load i32, ptr %genestrand.addr, align 4, !tbaa !14
  %call = call i32 @Spliceends_trim_qstart_nosplice(ptr noundef %8, ptr noundef %total_nmismatches, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, i64 noundef %13, i32 noundef %14, i32 noundef %15, i32 noundef %16, i8 noundef zeroext %17, i32 noundef %18)
  %19 = load ptr, ptr %trimpos.addr, align 8, !tbaa !5
  store i32 %call, ptr %19, align 4, !tbaa !14
  br label %if.end

if.end:                                           ; preds = %if.else
  %20 = load ptr, ptr %trimpos.addr, align 8, !tbaa !5
  %21 = load i32, ptr %20, align 4, !tbaa !14
  %22 = load i32, ptr %pos3.addr, align 4, !tbaa !14
  %cmp1 = icmp sge i32 %21, %22
  br i1 %cmp1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.end
  %23 = load i32, ptr %pos3.addr, align 4, !tbaa !14
  %24 = load ptr, ptr %trimpos.addr, align 8, !tbaa !5
  store i32 %23, ptr %24, align 4, !tbaa !14
  %25 = load ptr, ptr %splicetype.addr, align 8, !tbaa !5
  store i32 0, ptr %25, align 4, !tbaa !16
  %26 = load ptr, ptr %ambig_prob_qstart.addr, align 8, !tbaa !5
  store double 0.000000e+00, ptr %26, align 8, !tbaa !31
  store i8 0, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else3:                                         ; preds = %if.end
  %27 = load ptr, ptr %trimpos.addr, align 8, !tbaa !5
  %28 = load i32, ptr %27, align 4, !tbaa !14
  %29 = load i32, ptr %pos5, align 4, !tbaa !14
  %cmp4 = icmp eq i32 %28, %29
  br i1 %cmp4, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.else3
  %30 = load ptr, ptr %splicetype.addr, align 8, !tbaa !5
  store i32 0, ptr %30, align 4, !tbaa !16
  %31 = load ptr, ptr %ambig_prob_qstart.addr, align 8, !tbaa !5
  store double 0.000000e+00, ptr %31, align 8, !tbaa !31
  store i8 0, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else6:                                         ; preds = %if.else3
  %32 = load ptr, ptr %knownsplicing.addr, align 8, !tbaa !5
  %cmp7 = icmp eq ptr %32, null
  br i1 %cmp7, label %land.lhs.true, label %if.else11

land.lhs.true:                                    ; preds = %if.else6
  %33 = load i8, ptr %novelsplicingp.addr, align 1, !tbaa !16
  %conv = zext i8 %33 to i32
  %cmp8 = icmp eq i32 %conv, 0
  br i1 %cmp8, label %if.then10, label %if.else11

if.then10:                                        ; preds = %land.lhs.true
  %34 = load ptr, ptr %splicetype.addr, align 8, !tbaa !5
  store i32 0, ptr %34, align 4, !tbaa !16
  %35 = load ptr, ptr %ambig_prob_qstart.addr, align 8, !tbaa !5
  store double 0.000000e+00, ptr %35, align 8, !tbaa !31
  store i8 0, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else11:                                        ; preds = %land.lhs.true, %if.else6
  %36 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %37 = load ptr, ptr %queryptr.addr, align 8, !tbaa !5
  %38 = load ptr, ptr %knownsplicing.addr, align 8, !tbaa !5
  %39 = load i32, ptr %try_sensedir.addr, align 4, !tbaa !14
  %40 = load i64, ptr %univdiagonal.addr, align 8, !tbaa !12
  %41 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %42 = load i32, ptr %pos5, align 4, !tbaa !14
  %43 = load ptr, ptr %trimpos.addr, align 8, !tbaa !5
  %44 = load i32, ptr %43, align 4, !tbaa !14
  %45 = load i32, ptr %pos3.addr, align 4, !tbaa !14
  %46 = load i32, ptr %exon_origin.addr, align 4, !tbaa !14
  %47 = load i64, ptr %chroffset.addr, align 8, !tbaa !12
  %48 = load ptr, ptr %mismatch_positions_alloc.addr, align 8, !tbaa !5
  %49 = load i32, ptr %total_nmismatches, align 4, !tbaa !14
  %50 = load ptr, ptr %spliceendsgen.addr, align 8, !tbaa !5
  %51 = load i8, ptr %plusp.addr, align 1, !tbaa !16
  %52 = load i32, ptr %genestrand.addr, align 4, !tbaa !14
  %53 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %call12 = call ptr @trim_5(ptr noundef %partnerp, ptr noundef %36, ptr noundef %37, ptr noundef %38, i32 noundef %39, i64 noundef %40, i32 noundef %41, i32 noundef %42, i32 noundef %44, i32 noundef %45, i32 noundef %46, i64 noundef %47, ptr noundef %48, i32 noundef %49, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %50, i32 noundef 20, i8 noundef zeroext %51, i32 noundef %52, i32 noundef %53, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0)
  store ptr %call12, ptr %spliceends, align 8, !tbaa !5
  %cmp13 = icmp ne ptr %call12, null
  br i1 %cmp13, label %if.then15, label %if.else19

if.then15:                                        ; preds = %if.else11
  %54 = load ptr, ptr %spliceends, align 8, !tbaa !5
  %sensedir = getelementptr inbounds %struct.Spliceends_T, ptr %54, i32 0, i32 4
  %55 = load i32, ptr %sensedir, align 8, !tbaa !36
  %56 = load ptr, ptr %found_sensedir.addr, align 8, !tbaa !5
  store i32 %55, ptr %56, align 4, !tbaa !14
  %57 = load ptr, ptr %spliceends, align 8, !tbaa !5
  %trimends = getelementptr inbounds %struct.Spliceends_T, ptr %57, i32 0, i32 8
  %58 = load ptr, ptr %trimends, align 8, !tbaa !23
  %arrayidx = getelementptr inbounds i32, ptr %58, i64 0
  %59 = load i32, ptr %arrayidx, align 4, !tbaa !14
  %60 = load ptr, ptr %trimpos.addr, align 8, !tbaa !5
  store i32 %59, ptr %60, align 4, !tbaa !14
  %61 = load ptr, ptr %spliceends, align 8, !tbaa !5
  %medial_nmismatches = getelementptr inbounds %struct.Spliceends_T, ptr %61, i32 0, i32 10
  %62 = load ptr, ptr %medial_nmismatches, align 8, !tbaa !21
  %arrayidx16 = getelementptr inbounds i32, ptr %62, i64 0
  %63 = load i32, ptr %arrayidx16, align 4, !tbaa !14
  %64 = load ptr, ptr %nmismatches_to_trimpos.addr, align 8, !tbaa !5
  store i32 %63, ptr %64, align 4, !tbaa !14
  %65 = load ptr, ptr %spliceends, align 8, !tbaa !5
  %splicetype17 = getelementptr inbounds %struct.Spliceends_T, ptr %65, i32 0, i32 3
  %66 = load i32, ptr %splicetype17, align 4, !tbaa !33
  %67 = load ptr, ptr %splicetype.addr, align 8, !tbaa !5
  store i32 %66, ptr %67, align 4, !tbaa !16
  %68 = load ptr, ptr %spliceends, align 8, !tbaa !5
  %ambig_probs = getelementptr inbounds %struct.Spliceends_T, ptr %68, i32 0, i32 12
  %69 = load ptr, ptr %ambig_probs, align 8, !tbaa !19
  %arrayidx18 = getelementptr inbounds double, ptr %69, i64 0
  %70 = load double, ptr %arrayidx18, align 8, !tbaa !31
  %71 = load ptr, ptr %ambig_prob_qstart.addr, align 8, !tbaa !5
  store double %70, ptr %71, align 8, !tbaa !31
  %72 = load ptr, ptr %spliceendsgen.addr, align 8, !tbaa !5
  call void @Spliceendsgen_return(ptr noundef %72, ptr noundef %spliceends)
  store i8 1, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else19:                                        ; preds = %if.else11
  %73 = load ptr, ptr %splicetype.addr, align 8, !tbaa !5
  store i32 0, ptr %73, align 4, !tbaa !16
  %74 = load ptr, ptr %ambig_prob_qstart.addr, align 8, !tbaa !5
  store double 0.000000e+00, ptr %74, align 8, !tbaa !31
  store i8 0, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else19, %if.then15, %if.then10, %if.then5, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %partnerp) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %total_nmismatches) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %pos5) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %spliceends) #4
  %75 = load i8, ptr %retval, align 1
  ret i8 %75
}

; Function Attrs: nounwind uwtable
define dso_local i32 @Spliceends_trim_qend_nosplice(ptr noundef %nmismatches_to_trimpos, ptr noundef %total_nmismatches, ptr noundef %mismatch_positions_alloc, ptr noundef %query_compress, ptr noundef %bits, ptr noundef %bits_alt, i64 noundef %univdiagonal, i32 noundef %querylength, i32 noundef %pos5, i32 noundef %pos3, i8 noundef zeroext %plusp, i32 noundef %genestrand) #1 {
entry:
  %retval = alloca i32, align 4
  %nmismatches_to_trimpos.addr = alloca ptr, align 8
  %total_nmismatches.addr = alloca ptr, align 8
  %mismatch_positions_alloc.addr = alloca ptr, align 8
  %query_compress.addr = alloca ptr, align 8
  %bits.addr = alloca ptr, align 8
  %bits_alt.addr = alloca ptr, align 8
  %univdiagonal.addr = alloca i64, align 8
  %querylength.addr = alloca i32, align 4
  %pos5.addr = alloca i32, align 4
  %pos3.addr = alloca i32, align 4
  %plusp.addr = alloca i8, align 1
  %genestrand.addr = alloca i32, align 4
  %max_score = alloca i32, align 4
  %score = alloca i32, align 4
  %trimpos = alloca i32, align 4
  %pos = alloca i32, align 4
  %prevpos = alloca i32, align 4
  %i = alloca i32, align 4
  %mismatch_positions = alloca ptr, align 8
  %alignlength = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %nmismatches_to_trimpos, ptr %nmismatches_to_trimpos.addr, align 8, !tbaa !5
  store ptr %total_nmismatches, ptr %total_nmismatches.addr, align 8, !tbaa !5
  store ptr %mismatch_positions_alloc, ptr %mismatch_positions_alloc.addr, align 8, !tbaa !5
  store ptr %query_compress, ptr %query_compress.addr, align 8, !tbaa !5
  store ptr %bits, ptr %bits.addr, align 8, !tbaa !5
  store ptr %bits_alt, ptr %bits_alt.addr, align 8, !tbaa !5
  store i64 %univdiagonal, ptr %univdiagonal.addr, align 8, !tbaa !12
  store i32 %querylength, ptr %querylength.addr, align 4, !tbaa !14
  store i32 %pos5, ptr %pos5.addr, align 4, !tbaa !14
  store i32 %pos3, ptr %pos3.addr, align 4, !tbaa !14
  store i8 %plusp, ptr %plusp.addr, align 1, !tbaa !16
  store i32 %genestrand, ptr %genestrand.addr, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %max_score) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %score) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %trimpos) #4
  %0 = load i32, ptr %pos3.addr, align 4, !tbaa !14
  store i32 %0, ptr %trimpos, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %pos) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %prevpos) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %mismatch_positions) #4
  %1 = load ptr, ptr %mismatch_positions_alloc.addr, align 8, !tbaa !5
  store ptr %1, ptr %mismatch_positions, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %alignlength) #4
  %2 = load i32, ptr %pos3.addr, align 4, !tbaa !14
  %3 = load i32, ptr %pos5.addr, align 4, !tbaa !14
  %sub = sub nsw i32 %2, %3
  store i32 %sub, ptr %alignlength, align 4, !tbaa !14
  %4 = load ptr, ptr %mismatch_positions, align 8, !tbaa !5
  %5 = load i32, ptr %alignlength, align 4, !tbaa !14
  %6 = load ptr, ptr %bits.addr, align 8, !tbaa !5
  %7 = load ptr, ptr %bits_alt.addr, align 8, !tbaa !5
  %8 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %9 = load i64, ptr %univdiagonal.addr, align 8, !tbaa !12
  %10 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %11 = load i32, ptr %pos5.addr, align 4, !tbaa !14
  %12 = load i32, ptr %pos3.addr, align 4, !tbaa !14
  %13 = load i8, ptr %plusp.addr, align 1, !tbaa !16
  %14 = load i32, ptr %genestrand.addr, align 4, !tbaa !14
  %call = call i32 @Genomebits_mismatches_fromleft_trim(ptr noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, i64 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i8 noundef zeroext %13, i32 noundef %14)
  %15 = load ptr, ptr %total_nmismatches.addr, align 8, !tbaa !5
  store i32 %call, ptr %15, align 4, !tbaa !14
  %16 = load i8, ptr @allow_soft_clips_p, align 1, !tbaa !16
  %conv = zext i8 %16 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %17 = load ptr, ptr %nmismatches_to_trimpos.addr, align 8, !tbaa !5
  store i32 -1, ptr %17, align 4, !tbaa !14
  %18 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  store i32 %18, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %entry
  %19 = load ptr, ptr %total_nmismatches.addr, align 8, !tbaa !5
  %20 = load i32, ptr %19, align 4, !tbaa !14
  %cmp2 = icmp eq i32 %20, 0
  br i1 %cmp2, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.else
  %21 = load ptr, ptr %nmismatches_to_trimpos.addr, align 8, !tbaa !5
  store i32 0, ptr %21, align 4, !tbaa !14
  %22 = load i32, ptr %pos3.addr, align 4, !tbaa !14
  store i32 %22, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %if.else
  br label %if.end5

if.end5:                                          ; preds = %if.end
  %23 = load i32, ptr %pos5.addr, align 4, !tbaa !14
  %sub6 = sub nsw i32 %23, 1
  store i32 %sub6, ptr %prevpos, align 4, !tbaa !14
  %24 = load ptr, ptr %mismatch_positions, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i32, ptr %24, i64 0
  %25 = load i32, ptr %arrayidx, align 4, !tbaa !14
  store i32 %25, ptr %pos, align 4, !tbaa !14
  store i32 %25, ptr %trimpos, align 4, !tbaa !14
  %26 = load i32, ptr %pos, align 4, !tbaa !14
  %27 = load i32, ptr %prevpos, align 4, !tbaa !14
  %sub7 = sub nsw i32 %26, %27
  %sub8 = sub nsw i32 %sub7, 1
  %mul = mul nsw i32 %sub8, 1
  store i32 %mul, ptr %score, align 4, !tbaa !14
  store i32 %mul, ptr %max_score, align 4, !tbaa !14
  %28 = load ptr, ptr %nmismatches_to_trimpos.addr, align 8, !tbaa !5
  store i32 0, ptr %28, align 4, !tbaa !14
  %29 = load i32, ptr %pos, align 4, !tbaa !14
  store i32 %29, ptr %prevpos, align 4, !tbaa !14
  store i32 1, ptr %i, align 4, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end5
  %30 = load i32, ptr %i, align 4, !tbaa !14
  %31 = load ptr, ptr %total_nmismatches.addr, align 8, !tbaa !5
  %32 = load i32, ptr %31, align 4, !tbaa !14
  %cmp9 = icmp slt i32 %30, %32
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %33 = load ptr, ptr %mismatch_positions, align 8, !tbaa !5
  %34 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom = sext i32 %34 to i64
  %arrayidx11 = getelementptr inbounds i32, ptr %33, i64 %idxprom
  %35 = load i32, ptr %arrayidx11, align 4, !tbaa !14
  store i32 %35, ptr %pos, align 4, !tbaa !14
  %36 = load i32, ptr %score, align 4, !tbaa !14
  %add = add nsw i32 %36, -4
  store i32 %add, ptr %score, align 4, !tbaa !14
  %37 = load i32, ptr %pos, align 4, !tbaa !14
  %38 = load i32, ptr %prevpos, align 4, !tbaa !14
  %sub12 = sub nsw i32 %37, %38
  %sub13 = sub nsw i32 %sub12, 1
  %mul14 = mul nsw i32 %sub13, 1
  %39 = load i32, ptr %score, align 4, !tbaa !14
  %add15 = add nsw i32 %39, %mul14
  store i32 %add15, ptr %score, align 4, !tbaa !14
  %40 = load i32, ptr %score, align 4, !tbaa !14
  %41 = load i32, ptr %max_score, align 4, !tbaa !14
  %cmp16 = icmp sge i32 %40, %41
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %for.body
  %42 = load i32, ptr %pos, align 4, !tbaa !14
  store i32 %42, ptr %trimpos, align 4, !tbaa !14
  %43 = load i32, ptr %i, align 4, !tbaa !14
  %44 = load ptr, ptr %nmismatches_to_trimpos.addr, align 8, !tbaa !5
  store i32 %43, ptr %44, align 4, !tbaa !14
  %45 = load i32, ptr %score, align 4, !tbaa !14
  store i32 %45, ptr %max_score, align 4, !tbaa !14
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %for.body
  %46 = load i32, ptr %pos, align 4, !tbaa !14
  store i32 %46, ptr %prevpos, align 4, !tbaa !14
  br label %for.inc

for.inc:                                          ; preds = %if.end19
  %47 = load i32, ptr %i, align 4, !tbaa !14
  %inc = add nsw i32 %47, 1
  store i32 %inc, ptr %i, align 4, !tbaa !14
  br label %for.cond, !llvm.loop !37

for.end:                                          ; preds = %for.cond
  %48 = load ptr, ptr %nmismatches_to_trimpos.addr, align 8, !tbaa !5
  %49 = load i32, ptr %48, align 4, !tbaa !14
  %50 = load ptr, ptr %total_nmismatches.addr, align 8, !tbaa !5
  %51 = load i32, ptr %50, align 4, !tbaa !14
  %sub20 = sub nsw i32 %51, 1
  %cmp21 = icmp eq i32 %49, %sub20
  br i1 %cmp21, label %if.then23, label %if.else25

if.then23:                                        ; preds = %for.end
  %52 = load i32, ptr %pos3.addr, align 4, !tbaa !14
  store i32 %52, ptr %trimpos, align 4, !tbaa !14
  %53 = load ptr, ptr %nmismatches_to_trimpos.addr, align 8, !tbaa !5
  %54 = load i32, ptr %53, align 4, !tbaa !14
  %add24 = add nsw i32 %54, 1
  store i32 %add24, ptr %53, align 4, !tbaa !14
  br label %if.end35

if.else25:                                        ; preds = %for.end
  %55 = load i32, ptr %pos3.addr, align 4, !tbaa !14
  store i32 %55, ptr %pos, align 4, !tbaa !14
  %56 = load i32, ptr %score, align 4, !tbaa !14
  %add26 = add nsw i32 %56, -4
  store i32 %add26, ptr %score, align 4, !tbaa !14
  %57 = load i32, ptr %pos, align 4, !tbaa !14
  %58 = load i32, ptr %prevpos, align 4, !tbaa !14
  %sub27 = sub nsw i32 %57, %58
  %sub28 = sub nsw i32 %sub27, 1
  %mul29 = mul nsw i32 %sub28, 1
  %59 = load i32, ptr %score, align 4, !tbaa !14
  %add30 = add nsw i32 %59, %mul29
  store i32 %add30, ptr %score, align 4, !tbaa !14
  %60 = load i32, ptr %score, align 4, !tbaa !14
  %61 = load i32, ptr %max_score, align 4, !tbaa !14
  %cmp31 = icmp sge i32 %60, %61
  br i1 %cmp31, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.else25
  %62 = load i32, ptr %pos, align 4, !tbaa !14
  store i32 %62, ptr %trimpos, align 4, !tbaa !14
  %63 = load i32, ptr %i, align 4, !tbaa !14
  %64 = load ptr, ptr %nmismatches_to_trimpos.addr, align 8, !tbaa !5
  store i32 %63, ptr %64, align 4, !tbaa !14
  %65 = load i32, ptr %score, align 4, !tbaa !14
  store i32 %65, ptr %max_score, align 4, !tbaa !14
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %if.else25
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.then23
  %66 = load i32, ptr %trimpos, align 4, !tbaa !14
  store i32 %66, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %alignlength) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %mismatch_positions) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %prevpos) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %pos) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %trimpos) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %score) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %max_score) #4
  %67 = load i32, ptr %retval, align 4
  ret i32 %67
}

declare i32 @Genomebits_mismatches_fromleft_trim(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @Spliceends_trimmed_qends(ptr noundef %new, ptr noundef %nosplice_trimpos, ptr noundef %farsplice_trimpos, ptr noundef %pos3_nmismatches, ptr noundef %nosplice_nmismatches, ptr noundef %farsplice_nmismatches, ptr noundef %splice3p, ptr noundef %splicetype3, ptr noundef %ambig_prob_3, i32 noundef %try_sensedir, i64 noundef %univdiagonal, i32 noundef %querylength, i32 noundef %qstart, i32 noundef %exon_origin, i32 noundef %chrnum, i64 noundef %chroffset, i64 noundef %chrhigh, i8 noundef zeroext %plusp, i32 noundef %genestrand, i32 noundef %nmismatches_allowed, i8 noundef zeroext %innerp, i8 noundef zeroext %salvagep, ptr noundef %mismatch_positions_alloc, ptr noundef %novel_diagonals_alloc, ptr noundef %localdb_alloc, i32 noundef %streamspace_max_alloc, ptr noundef %streamspace_alloc, ptr noundef %streamptr_alloc, ptr noundef %streamsize_alloc, ptr noundef %mergeinfo, ptr noundef %knownsplicing, ptr noundef %spliceendsgen, ptr noundef %query_compress, ptr noundef %queryptr, ptr noundef %genomebits, ptr noundef %genomebits_alt, i8 noundef zeroext %novelsplicingp) #1 {
entry:
  %retval = alloca i32, align 4
  %new.addr = alloca ptr, align 8
  %nosplice_trimpos.addr = alloca ptr, align 8
  %farsplice_trimpos.addr = alloca ptr, align 8
  %pos3_nmismatches.addr = alloca ptr, align 8
  %nosplice_nmismatches.addr = alloca ptr, align 8
  %farsplice_nmismatches.addr = alloca ptr, align 8
  %splice3p.addr = alloca ptr, align 8
  %splicetype3.addr = alloca ptr, align 8
  %ambig_prob_3.addr = alloca ptr, align 8
  %try_sensedir.addr = alloca i32, align 4
  %univdiagonal.addr = alloca i64, align 8
  %querylength.addr = alloca i32, align 4
  %qstart.addr = alloca i32, align 4
  %exon_origin.addr = alloca i32, align 4
  %chrnum.addr = alloca i32, align 4
  %chroffset.addr = alloca i64, align 8
  %chrhigh.addr = alloca i64, align 8
  %plusp.addr = alloca i8, align 1
  %genestrand.addr = alloca i32, align 4
  %nmismatches_allowed.addr = alloca i32, align 4
  %innerp.addr = alloca i8, align 1
  %salvagep.addr = alloca i8, align 1
  %mismatch_positions_alloc.addr = alloca ptr, align 8
  %novel_diagonals_alloc.addr = alloca ptr, align 8
  %localdb_alloc.addr = alloca ptr, align 8
  %streamspace_max_alloc.addr = alloca i32, align 4
  %streamspace_alloc.addr = alloca ptr, align 8
  %streamptr_alloc.addr = alloca ptr, align 8
  %streamsize_alloc.addr = alloca ptr, align 8
  %mergeinfo.addr = alloca ptr, align 8
  %knownsplicing.addr = alloca ptr, align 8
  %spliceendsgen.addr = alloca ptr, align 8
  %query_compress.addr = alloca ptr, align 8
  %queryptr.addr = alloca ptr, align 8
  %genomebits.addr = alloca ptr, align 8
  %genomebits_alt.addr = alloca ptr, align 8
  %novelsplicingp.addr = alloca i8, align 1
  %pos3 = alloca i32, align 4
  %partnerp = alloca i8, align 1
  %search_localdb_p = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %new, ptr %new.addr, align 8, !tbaa !5
  store ptr %nosplice_trimpos, ptr %nosplice_trimpos.addr, align 8, !tbaa !5
  store ptr %farsplice_trimpos, ptr %farsplice_trimpos.addr, align 8, !tbaa !5
  store ptr %pos3_nmismatches, ptr %pos3_nmismatches.addr, align 8, !tbaa !5
  store ptr %nosplice_nmismatches, ptr %nosplice_nmismatches.addr, align 8, !tbaa !5
  store ptr %farsplice_nmismatches, ptr %farsplice_nmismatches.addr, align 8, !tbaa !5
  store ptr %splice3p, ptr %splice3p.addr, align 8, !tbaa !5
  store ptr %splicetype3, ptr %splicetype3.addr, align 8, !tbaa !5
  store ptr %ambig_prob_3, ptr %ambig_prob_3.addr, align 8, !tbaa !5
  store i32 %try_sensedir, ptr %try_sensedir.addr, align 4, !tbaa !14
  store i64 %univdiagonal, ptr %univdiagonal.addr, align 8, !tbaa !12
  store i32 %querylength, ptr %querylength.addr, align 4, !tbaa !14
  store i32 %qstart, ptr %qstart.addr, align 4, !tbaa !14
  store i32 %exon_origin, ptr %exon_origin.addr, align 4, !tbaa !14
  store i32 %chrnum, ptr %chrnum.addr, align 4, !tbaa !14
  store i64 %chroffset, ptr %chroffset.addr, align 8, !tbaa !12
  store i64 %chrhigh, ptr %chrhigh.addr, align 8, !tbaa !12
  store i8 %plusp, ptr %plusp.addr, align 1, !tbaa !16
  store i32 %genestrand, ptr %genestrand.addr, align 4, !tbaa !14
  store i32 %nmismatches_allowed, ptr %nmismatches_allowed.addr, align 4, !tbaa !14
  store i8 %innerp, ptr %innerp.addr, align 1, !tbaa !16
  store i8 %salvagep, ptr %salvagep.addr, align 1, !tbaa !16
  store ptr %mismatch_positions_alloc, ptr %mismatch_positions_alloc.addr, align 8, !tbaa !5
  store ptr %novel_diagonals_alloc, ptr %novel_diagonals_alloc.addr, align 8, !tbaa !5
  store ptr %localdb_alloc, ptr %localdb_alloc.addr, align 8, !tbaa !5
  store i32 %streamspace_max_alloc, ptr %streamspace_max_alloc.addr, align 4, !tbaa !14
  store ptr %streamspace_alloc, ptr %streamspace_alloc.addr, align 8, !tbaa !5
  store ptr %streamptr_alloc, ptr %streamptr_alloc.addr, align 8, !tbaa !5
  store ptr %streamsize_alloc, ptr %streamsize_alloc.addr, align 8, !tbaa !5
  store ptr %mergeinfo, ptr %mergeinfo.addr, align 8, !tbaa !5
  store ptr %knownsplicing, ptr %knownsplicing.addr, align 8, !tbaa !5
  store ptr %spliceendsgen, ptr %spliceendsgen.addr, align 8, !tbaa !5
  store ptr %query_compress, ptr %query_compress.addr, align 8, !tbaa !5
  store ptr %queryptr, ptr %queryptr.addr, align 8, !tbaa !5
  store ptr %genomebits, ptr %genomebits.addr, align 8, !tbaa !5
  store ptr %genomebits_alt, ptr %genomebits_alt.addr, align 8, !tbaa !5
  store i8 %novelsplicingp, ptr %novelsplicingp.addr, align 1, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 4, ptr %pos3) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr %partnerp) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr %search_localdb_p) #4
  %0 = load ptr, ptr @localdb, align 8, !tbaa !5
  %cmp = icmp eq ptr %0, null
  %1 = zext i1 %cmp to i64
  %cond = select i1 %cmp, i32 0, i32 1
  %conv = trunc i32 %cond to i8
  store i8 %conv, ptr %search_localdb_p, align 1, !tbaa !16
  %2 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  store i32 %2, ptr %pos3, align 4, !tbaa !14
  %3 = load ptr, ptr %farsplice_trimpos.addr, align 8, !tbaa !5
  store i32 -1, ptr %3, align 4, !tbaa !14
  %4 = load ptr, ptr %farsplice_nmismatches.addr, align 8, !tbaa !5
  store i32 0, ptr %4, align 4, !tbaa !14
  %5 = load ptr, ptr %splice3p.addr, align 8, !tbaa !5
  store i8 0, ptr %5, align 1, !tbaa !16
  %6 = load ptr, ptr %splicetype3.addr, align 8, !tbaa !5
  store i32 0, ptr %6, align 4, !tbaa !16
  %7 = load ptr, ptr %ambig_prob_3.addr, align 8, !tbaa !5
  store double 0.000000e+00, ptr %7, align 8, !tbaa !31
  %8 = load i32, ptr %pos3, align 4, !tbaa !14
  %9 = load i32, ptr %qstart.addr, align 4, !tbaa !14
  %cmp1 = icmp sle i32 %8, %9
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %10 = load i32, ptr %pos3, align 4, !tbaa !14
  %11 = load ptr, ptr %nosplice_trimpos.addr, align 8, !tbaa !5
  store i32 %10, ptr %11, align 4, !tbaa !14
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %entry
  %12 = load ptr, ptr %nosplice_nmismatches.addr, align 8, !tbaa !5
  %13 = load ptr, ptr %pos3_nmismatches.addr, align 8, !tbaa !5
  %14 = load ptr, ptr %mismatch_positions_alloc.addr, align 8, !tbaa !5
  %15 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %16 = load ptr, ptr %genomebits.addr, align 8, !tbaa !5
  %17 = load ptr, ptr %genomebits_alt.addr, align 8, !tbaa !5
  %18 = load i64, ptr %univdiagonal.addr, align 8, !tbaa !12
  %19 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %20 = load i32, ptr %qstart.addr, align 4, !tbaa !14
  %21 = load i32, ptr %pos3, align 4, !tbaa !14
  %22 = load i8, ptr %plusp.addr, align 1, !tbaa !16
  %23 = load i32, ptr %genestrand.addr, align 4, !tbaa !14
  %call = call i32 @Spliceends_trim_qend_nosplice(ptr noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef %15, ptr noundef %16, ptr noundef %17, i64 noundef %18, i32 noundef %19, i32 noundef %20, i32 noundef %21, i8 noundef zeroext %22, i32 noundef %23)
  %24 = load ptr, ptr %nosplice_trimpos.addr, align 8, !tbaa !5
  store i32 %call, ptr %24, align 4, !tbaa !14
  br label %if.end

if.end:                                           ; preds = %if.else
  %25 = load ptr, ptr %nosplice_trimpos.addr, align 8, !tbaa !5
  %26 = load i32, ptr %25, align 4, !tbaa !14
  %27 = load i32, ptr %qstart.addr, align 4, !tbaa !14
  %cmp3 = icmp sle i32 %26, %27
  br i1 %cmp3, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else6:                                         ; preds = %if.end
  %28 = load ptr, ptr %knownsplicing.addr, align 8, !tbaa !5
  %cmp7 = icmp eq ptr %28, null
  br i1 %cmp7, label %land.lhs.true, label %if.else13

land.lhs.true:                                    ; preds = %if.else6
  %29 = load i8, ptr %novelsplicingp.addr, align 1, !tbaa !16
  %conv9 = zext i8 %29 to i32
  %cmp10 = icmp eq i32 %conv9, 0
  br i1 %cmp10, label %if.then12, label %if.else13

if.then12:                                        ; preds = %land.lhs.true
  %30 = load ptr, ptr %new.addr, align 8, !tbaa !5
  store ptr null, ptr %30, align 8, !tbaa !5
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else13:                                        ; preds = %land.lhs.true, %if.else6
  %31 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %32 = load ptr, ptr %queryptr.addr, align 8, !tbaa !5
  %33 = load ptr, ptr %knownsplicing.addr, align 8, !tbaa !5
  %34 = load i32, ptr %try_sensedir.addr, align 4, !tbaa !14
  %35 = load i64, ptr %univdiagonal.addr, align 8, !tbaa !12
  %36 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %37 = load i32, ptr %qstart.addr, align 4, !tbaa !14
  %38 = load ptr, ptr %nosplice_trimpos.addr, align 8, !tbaa !5
  %39 = load i32, ptr %38, align 4, !tbaa !14
  %40 = load i32, ptr %pos3, align 4, !tbaa !14
  %41 = load i32, ptr %exon_origin.addr, align 4, !tbaa !14
  %42 = load i64, ptr %chroffset.addr, align 8, !tbaa !12
  %43 = load i64, ptr %chrhigh.addr, align 8, !tbaa !12
  %44 = load ptr, ptr %mismatch_positions_alloc.addr, align 8, !tbaa !5
  %45 = load ptr, ptr %pos3_nmismatches.addr, align 8, !tbaa !5
  %46 = load i32, ptr %45, align 4, !tbaa !14
  %47 = load ptr, ptr %novel_diagonals_alloc.addr, align 8, !tbaa !5
  %48 = load ptr, ptr %localdb_alloc.addr, align 8, !tbaa !5
  %49 = load i32, ptr %streamspace_max_alloc.addr, align 4, !tbaa !14
  %50 = load ptr, ptr %streamspace_alloc.addr, align 8, !tbaa !5
  %51 = load ptr, ptr %streamptr_alloc.addr, align 8, !tbaa !5
  %52 = load ptr, ptr %streamsize_alloc.addr, align 8, !tbaa !5
  %53 = load ptr, ptr %mergeinfo.addr, align 8, !tbaa !5
  %54 = load ptr, ptr %spliceendsgen.addr, align 8, !tbaa !5
  %55 = load i8, ptr %plusp.addr, align 1, !tbaa !16
  %56 = load i32, ptr %genestrand.addr, align 4, !tbaa !14
  %57 = load i32, ptr %nmismatches_allowed.addr, align 4, !tbaa !14
  %58 = load i8, ptr %search_localdb_p, align 1, !tbaa !16
  %59 = load i8, ptr %innerp.addr, align 1, !tbaa !16
  %60 = load i8, ptr %salvagep.addr, align 1, !tbaa !16
  %call14 = call ptr @trim_3(ptr noundef %partnerp, ptr noundef %31, ptr noundef %32, ptr noundef %33, i32 noundef %34, i64 noundef %35, i32 noundef %36, i32 noundef %37, i32 noundef %39, i32 noundef %40, i32 noundef %41, i64 noundef %42, i64 noundef %43, ptr noundef %44, i32 noundef %46, ptr noundef %47, ptr noundef %48, i32 noundef %49, ptr noundef %50, ptr noundef %51, ptr noundef %52, ptr noundef %53, ptr noundef %54, i32 noundef 20, i8 noundef zeroext %55, i32 noundef %56, i32 noundef %57, i8 noundef zeroext %58, i8 noundef zeroext %59, i8 noundef zeroext %60)
  %61 = load ptr, ptr %new.addr, align 8, !tbaa !5
  store ptr %call14, ptr %61, align 8, !tbaa !5
  %cmp15 = icmp ne ptr %call14, null
  br i1 %cmp15, label %if.then17, label %if.else25

if.then17:                                        ; preds = %if.else13
  %62 = load ptr, ptr %new.addr, align 8, !tbaa !5
  %63 = load ptr, ptr %62, align 8, !tbaa !5
  %trimends = getelementptr inbounds %struct.Spliceends_T, ptr %63, i32 0, i32 8
  %64 = load ptr, ptr %trimends, align 8, !tbaa !23
  %arrayidx = getelementptr inbounds i32, ptr %64, i64 0
  %65 = load i32, ptr %arrayidx, align 4, !tbaa !14
  %66 = load ptr, ptr %farsplice_trimpos.addr, align 8, !tbaa !5
  store i32 %65, ptr %66, align 4, !tbaa !14
  %67 = load ptr, ptr %new.addr, align 8, !tbaa !5
  %68 = load ptr, ptr %67, align 8, !tbaa !5
  %medial_nmismatches = getelementptr inbounds %struct.Spliceends_T, ptr %68, i32 0, i32 10
  %69 = load ptr, ptr %medial_nmismatches, align 8, !tbaa !21
  %arrayidx18 = getelementptr inbounds i32, ptr %69, i64 0
  %70 = load i32, ptr %arrayidx18, align 4, !tbaa !14
  %71 = load ptr, ptr %farsplice_nmismatches.addr, align 8, !tbaa !5
  store i32 %70, ptr %71, align 4, !tbaa !14
  %72 = load ptr, ptr %splice3p.addr, align 8, !tbaa !5
  store i8 1, ptr %72, align 1, !tbaa !16
  %73 = load ptr, ptr %new.addr, align 8, !tbaa !5
  %74 = load ptr, ptr %73, align 8, !tbaa !5
  %splicetype = getelementptr inbounds %struct.Spliceends_T, ptr %74, i32 0, i32 3
  %75 = load i32, ptr %splicetype, align 4, !tbaa !33
  %76 = load ptr, ptr %splicetype3.addr, align 8, !tbaa !5
  store i32 %75, ptr %76, align 4, !tbaa !16
  %77 = load ptr, ptr %new.addr, align 8, !tbaa !5
  %78 = load ptr, ptr %77, align 8, !tbaa !5
  %ambig_probs = getelementptr inbounds %struct.Spliceends_T, ptr %78, i32 0, i32 12
  %79 = load ptr, ptr %ambig_probs, align 8, !tbaa !19
  %arrayidx19 = getelementptr inbounds double, ptr %79, i64 0
  %80 = load double, ptr %arrayidx19, align 8, !tbaa !31
  %81 = load ptr, ptr %ambig_prob_3.addr, align 8, !tbaa !5
  store double %80, ptr %81, align 8, !tbaa !31
  %82 = load i8, ptr %partnerp, align 1, !tbaa !16
  %conv20 = zext i8 %82 to i32
  %cmp21 = icmp eq i32 %conv20, 1
  br i1 %cmp21, label %if.then23, label %if.else24

if.then23:                                        ; preds = %if.then17
  %83 = load ptr, ptr %new.addr, align 8, !tbaa !5
  %84 = load ptr, ptr %83, align 8, !tbaa !5
  %nspliceends = getelementptr inbounds %struct.Spliceends_T, ptr %84, i32 0, i32 2
  %85 = load i32, ptr %nspliceends, align 8, !tbaa !34
  store i32 %85, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else24:                                        ; preds = %if.then17
  %86 = load ptr, ptr %spliceendsgen.addr, align 8, !tbaa !5
  %87 = load ptr, ptr %new.addr, align 8, !tbaa !5
  call void @Spliceendsgen_return(ptr noundef %86, ptr noundef %87)
  %88 = load ptr, ptr %new.addr, align 8, !tbaa !5
  store ptr null, ptr %88, align 8, !tbaa !5
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else25:                                        ; preds = %if.else13
  %89 = load ptr, ptr %new.addr, align 8, !tbaa !5
  store ptr null, ptr %89, align 8, !tbaa !5
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else25, %if.else24, %if.then23, %if.then12, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %search_localdb_p) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr %partnerp) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %pos3) #4
  %90 = load i32, ptr %retval, align 4
  ret i32 %90
}

; Function Attrs: nounwind uwtable
define internal ptr @trim_3(ptr noundef %partnerp, ptr noundef %query_compress, ptr noundef %queryptr, ptr noundef %knownsplicing, i32 noundef %try_sensedir, i64 noundef %univdiagonal, i32 noundef %querylength, i32 noundef %qstart, i32 noundef %qend, i32 noundef %pos3, i32 noundef %exon_origin, i64 noundef %chroffset, i64 noundef %chrhigh, ptr noundef %mismatch_positions, i32 noundef %total_nmismatches, ptr noundef %novel_diagonals_alloc, ptr noundef %localdb_alloc, i32 noundef %streamspace_max_alloc, ptr noundef %streamspace_alloc, ptr noundef %streamptr_alloc, ptr noundef %streamsize_alloc, ptr noundef %mergeinfo, ptr noundef %spliceendsgen, i32 noundef %max_nconsecutive, i8 noundef zeroext %plusp, i32 noundef %genestrand, i32 noundef %nmismatches_allowed, i8 noundef zeroext %search_localdb_p, i8 noundef zeroext %innerp, i8 noundef zeroext %salvagep) #1 {
entry:
  %retval = alloca ptr, align 8
  %partnerp.addr = alloca ptr, align 8
  %query_compress.addr = alloca ptr, align 8
  %queryptr.addr = alloca ptr, align 8
  %knownsplicing.addr = alloca ptr, align 8
  %try_sensedir.addr = alloca i32, align 4
  %univdiagonal.addr = alloca i64, align 8
  %querylength.addr = alloca i32, align 4
  %qstart.addr = alloca i32, align 4
  %qend.addr = alloca i32, align 4
  %pos3.addr = alloca i32, align 4
  %exon_origin.addr = alloca i32, align 4
  %chroffset.addr = alloca i64, align 8
  %chrhigh.addr = alloca i64, align 8
  %mismatch_positions.addr = alloca ptr, align 8
  %total_nmismatches.addr = alloca i32, align 4
  %novel_diagonals_alloc.addr = alloca ptr, align 8
  %localdb_alloc.addr = alloca ptr, align 8
  %streamspace_max_alloc.addr = alloca i32, align 4
  %streamspace_alloc.addr = alloca ptr, align 8
  %streamptr_alloc.addr = alloca ptr, align 8
  %streamsize_alloc.addr = alloca ptr, align 8
  %mergeinfo.addr = alloca ptr, align 8
  %spliceendsgen.addr = alloca ptr, align 8
  %max_nconsecutive.addr = alloca i32, align 4
  %plusp.addr = alloca i8, align 1
  %genestrand.addr = alloca i32, align 4
  %nmismatches_allowed.addr = alloca i32, align 4
  %search_localdb_p.addr = alloca i8, align 1
  %innerp.addr = alloca i8, align 1
  %salvagep.addr = alloca i8, align 1
  %new = alloca ptr, align 8
  %anti = alloca ptr, align 8
  %found_sensedir = alloca i32, align 4
  %qdistal = alloca i32, align 4
  %mismatchi = alloca i32, align 4
  %nspliceends = alloca i32, align 4
  %n_sense_spliceends = alloca i32, align 4
  %n_anti_spliceends = alloca i32, align 4
  %start_genomicpos = alloca i64, align 8
  %middle_genomicpos = alloca i64, align 8
  %end_genomicpos = alloca i64, align 8
  %max_sense_prob = alloca double, align 8
  %max_antisense_prob = alloca double, align 8
  %sense_partnerp = alloca i8, align 1
  %antisense_partnerp = alloca i8, align 1
  %medial_splicesite_prob = alloca double, align 8
  %distal_splicesite_prob = alloca double, align 8
  %left = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %partnerp, ptr %partnerp.addr, align 8, !tbaa !5
  store ptr %query_compress, ptr %query_compress.addr, align 8, !tbaa !5
  store ptr %queryptr, ptr %queryptr.addr, align 8, !tbaa !5
  store ptr %knownsplicing, ptr %knownsplicing.addr, align 8, !tbaa !5
  store i32 %try_sensedir, ptr %try_sensedir.addr, align 4, !tbaa !14
  store i64 %univdiagonal, ptr %univdiagonal.addr, align 8, !tbaa !12
  store i32 %querylength, ptr %querylength.addr, align 4, !tbaa !14
  store i32 %qstart, ptr %qstart.addr, align 4, !tbaa !14
  store i32 %qend, ptr %qend.addr, align 4, !tbaa !14
  store i32 %pos3, ptr %pos3.addr, align 4, !tbaa !14
  store i32 %exon_origin, ptr %exon_origin.addr, align 4, !tbaa !14
  store i64 %chroffset, ptr %chroffset.addr, align 8, !tbaa !12
  store i64 %chrhigh, ptr %chrhigh.addr, align 8, !tbaa !12
  store ptr %mismatch_positions, ptr %mismatch_positions.addr, align 8, !tbaa !5
  store i32 %total_nmismatches, ptr %total_nmismatches.addr, align 4, !tbaa !14
  store ptr %novel_diagonals_alloc, ptr %novel_diagonals_alloc.addr, align 8, !tbaa !5
  store ptr %localdb_alloc, ptr %localdb_alloc.addr, align 8, !tbaa !5
  store i32 %streamspace_max_alloc, ptr %streamspace_max_alloc.addr, align 4, !tbaa !14
  store ptr %streamspace_alloc, ptr %streamspace_alloc.addr, align 8, !tbaa !5
  store ptr %streamptr_alloc, ptr %streamptr_alloc.addr, align 8, !tbaa !5
  store ptr %streamsize_alloc, ptr %streamsize_alloc.addr, align 8, !tbaa !5
  store ptr %mergeinfo, ptr %mergeinfo.addr, align 8, !tbaa !5
  store ptr %spliceendsgen, ptr %spliceendsgen.addr, align 8, !tbaa !5
  store i32 %max_nconsecutive, ptr %max_nconsecutive.addr, align 4, !tbaa !14
  store i8 %plusp, ptr %plusp.addr, align 1, !tbaa !16
  store i32 %genestrand, ptr %genestrand.addr, align 4, !tbaa !14
  store i32 %nmismatches_allowed, ptr %nmismatches_allowed.addr, align 4, !tbaa !14
  store i8 %search_localdb_p, ptr %search_localdb_p.addr, align 1, !tbaa !16
  store i8 %innerp, ptr %innerp.addr, align 1, !tbaa !16
  store i8 %salvagep, ptr %salvagep.addr, align 1, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr %new) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %anti) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %found_sensedir) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %qdistal) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %mismatchi) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %nspliceends) #4
  store i32 0, ptr %nspliceends, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %n_sense_spliceends) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n_anti_spliceends) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %start_genomicpos) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %middle_genomicpos) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %end_genomicpos) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %max_sense_prob) #4
  store double 0.000000e+00, ptr %max_sense_prob, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 8, ptr %max_antisense_prob) #4
  store double 0.000000e+00, ptr %max_antisense_prob, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 1, ptr %sense_partnerp) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr %antisense_partnerp) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %medial_splicesite_prob) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %distal_splicesite_prob) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %left) #4
  %0 = load i64, ptr %univdiagonal.addr, align 8, !tbaa !12
  %1 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %conv = sext i32 %1 to i64
  %sub = sub i64 %0, %conv
  store i64 %sub, ptr %left, align 8, !tbaa !12
  %2 = load i8, ptr %salvagep.addr, align 1, !tbaa !16
  %conv1 = zext i8 %2 to i32
  %cmp = icmp eq i32 %conv1, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store double 8.000000e-01, ptr %medial_splicesite_prob, align 8, !tbaa !31
  store double 8.000000e-01, ptr %distal_splicesite_prob, align 8, !tbaa !31
  br label %if.end

if.else:                                          ; preds = %entry
  store double 9.000000e-01, ptr %medial_splicesite_prob, align 8, !tbaa !31
  store double 9.000000e-01, ptr %distal_splicesite_prob, align 8, !tbaa !31
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i64, ptr %left, align 8, !tbaa !12
  %4 = load i32, ptr %qend.addr, align 4, !tbaa !14
  %conv3 = sext i32 %4 to i64
  %add = add i64 %3, %conv3
  store i64 %add, ptr %middle_genomicpos, align 8, !tbaa !12
  store i32 0, ptr %mismatchi, align 4, !tbaa !14
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %5 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %6 = load i32, ptr %total_nmismatches.addr, align 4, !tbaa !14
  %cmp4 = icmp slt i32 %5, %6
  br i1 %cmp4, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %7 = load ptr, ptr %mismatch_positions.addr, align 8, !tbaa !5
  %8 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds i32, ptr %7, i64 %idxprom
  %9 = load i32, ptr %arrayidx, align 4, !tbaa !14
  %10 = load i32, ptr %qend.addr, align 4, !tbaa !14
  %cmp6 = icmp slt i32 %9, %10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %11 = phi i1 [ false, %while.cond ], [ %cmp6, %land.rhs ]
  br i1 %11, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %12 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %inc = add nsw i32 %12, 1
  store i32 %inc, ptr %mismatchi, align 4, !tbaa !14
  br label %while.cond, !llvm.loop !38

while.end:                                        ; preds = %land.end
  %13 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %14 = load i32, ptr @distal_nmismatches_allowed, align 4, !tbaa !14
  %add8 = add nsw i32 %13, %14
  %15 = load i32, ptr %total_nmismatches.addr, align 4, !tbaa !14
  %cmp9 = icmp sge i32 %add8, %15
  br i1 %cmp9, label %if.then11, label %if.else12

if.then11:                                        ; preds = %while.end
  %16 = load i32, ptr %pos3.addr, align 4, !tbaa !14
  store i32 %16, ptr %qdistal, align 4, !tbaa !14
  br label %if.end16

if.else12:                                        ; preds = %while.end
  %17 = load ptr, ptr %mismatch_positions.addr, align 8, !tbaa !5
  %18 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %19 = load i32, ptr @distal_nmismatches_allowed, align 4, !tbaa !14
  %add13 = add nsw i32 %18, %19
  %idxprom14 = sext i32 %add13 to i64
  %arrayidx15 = getelementptr inbounds i32, ptr %17, i64 %idxprom14
  %20 = load i32, ptr %arrayidx15, align 4, !tbaa !14
  store i32 %20, ptr %qdistal, align 4, !tbaa !14
  br label %if.end16

if.end16:                                         ; preds = %if.else12, %if.then11
  %21 = load i64, ptr %left, align 8, !tbaa !12
  %22 = load i32, ptr %qdistal, align 4, !tbaa !14
  %conv17 = sext i32 %22 to i64
  %add18 = add i64 %21, %conv17
  store i64 %add18, ptr %start_genomicpos, align 8, !tbaa !12
  %23 = load i64, ptr %middle_genomicpos, align 8, !tbaa !12
  %24 = load i64, ptr %left, align 8, !tbaa !12
  %25 = load i32, ptr %qstart.addr, align 4, !tbaa !14
  %conv19 = sext i32 %25 to i64
  %add20 = add i64 %24, %conv19
  %add21 = add i64 %add20, 10
  %cmp22 = icmp ult i64 %23, %add21
  br i1 %cmp22, label %if.then24, label %if.else27

if.then24:                                        ; preds = %if.end16
  %26 = load i64, ptr %left, align 8, !tbaa !12
  %27 = load i32, ptr %qstart.addr, align 4, !tbaa !14
  %conv25 = sext i32 %27 to i64
  %add26 = add i64 %26, %conv25
  store i64 %add26, ptr %end_genomicpos, align 8, !tbaa !12
  br label %if.end29

if.else27:                                        ; preds = %if.end16
  %28 = load i64, ptr %middle_genomicpos, align 8, !tbaa !12
  %sub28 = sub i64 %28, 10
  store i64 %sub28, ptr %end_genomicpos, align 8, !tbaa !12
  br label %if.end29

if.end29:                                         ; preds = %if.else27, %if.then24
  %29 = load i64, ptr %end_genomicpos, align 8, !tbaa !12
  %30 = load i64, ptr %left, align 8, !tbaa !12
  %31 = load i32, ptr %exon_origin.addr, align 4, !tbaa !14
  %conv30 = sext i32 %31 to i64
  %add31 = add i64 %30, %conv30
  %add32 = add i64 %add31, 20
  %cmp33 = icmp ult i64 %29, %add32
  br i1 %cmp33, label %if.then35, label %if.end39

if.then35:                                        ; preds = %if.end29
  %32 = load i64, ptr %left, align 8, !tbaa !12
  %33 = load i32, ptr %exon_origin.addr, align 4, !tbaa !14
  %conv36 = sext i32 %33 to i64
  %add37 = add i64 %32, %conv36
  %add38 = add i64 %add37, 20
  store i64 %add38, ptr %end_genomicpos, align 8, !tbaa !12
  br label %if.end39

if.end39:                                         ; preds = %if.then35, %if.end29
  %34 = load i64, ptr %start_genomicpos, align 8, !tbaa !12
  %35 = load i64, ptr %end_genomicpos, align 8, !tbaa !12
  %cmp40 = icmp ule i64 %34, %35
  br i1 %cmp40, label %if.then42, label %if.else43

if.then42:                                        ; preds = %if.end39
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else43:                                        ; preds = %if.end39
  %36 = load ptr, ptr %spliceendsgen.addr, align 8, !tbaa !5
  %37 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %call = call ptr @Spliceendsgen_checkout(ptr noundef %36, i32 noundef %37)
  store ptr %call, ptr %new, align 8, !tbaa !5
  br label %if.end44

if.end44:                                         ; preds = %if.else43
  %38 = load i32, ptr %try_sensedir.addr, align 4, !tbaa !14
  %cmp45 = icmp eq i32 %38, 2
  br i1 %cmp45, label %if.then47, label %if.else57

if.then47:                                        ; preds = %if.end44
  %39 = load ptr, ptr %knownsplicing.addr, align 8, !tbaa !5
  %cmp48 = icmp ne ptr %39, null
  br i1 %cmp48, label %land.lhs.true, label %if.else54

land.lhs.true:                                    ; preds = %if.then47
  %40 = load ptr, ptr %new, align 8, !tbaa !5
  %41 = load i64, ptr %end_genomicpos, align 8, !tbaa !12
  %42 = load i64, ptr %start_genomicpos, align 8, !tbaa !12
  %43 = load i32, ptr %qstart.addr, align 4, !tbaa !14
  %44 = load i32, ptr %qend.addr, align 4, !tbaa !14
  %45 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %46 = load i64, ptr %univdiagonal.addr, align 8, !tbaa !12
  %47 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %48 = load ptr, ptr %knownsplicing.addr, align 8, !tbaa !5
  %49 = load i8, ptr %plusp.addr, align 1, !tbaa !16
  %50 = load i32, ptr %genestrand.addr, align 4, !tbaa !14
  %call50 = call i32 @known_spliceends_trim3_sense(ptr noundef %40, i64 noundef %41, i64 noundef %42, i32 noundef %43, i32 noundef %44, ptr noundef %45, i64 noundef %46, i32 noundef %47, ptr noundef %48, i8 noundef zeroext %49, i32 noundef %50)
  store i32 %call50, ptr %nspliceends, align 4, !tbaa !14
  %cmp51 = icmp sgt i32 %call50, 0
  br i1 %cmp51, label %if.then53, label %if.else54

if.then53:                                        ; preds = %land.lhs.true
  %51 = load ptr, ptr %partnerp.addr, align 8, !tbaa !5
  store i8 1, ptr %51, align 1, !tbaa !16
  store double 1.000000e+00, ptr %max_sense_prob, align 8, !tbaa !31
  br label %if.end56

if.else54:                                        ; preds = %land.lhs.true, %if.then47
  %52 = load ptr, ptr %partnerp.addr, align 8, !tbaa !5
  %53 = load ptr, ptr %new, align 8, !tbaa !5
  %54 = load i64, ptr %end_genomicpos, align 8, !tbaa !12
  %55 = load i64, ptr %start_genomicpos, align 8, !tbaa !12
  %56 = load i64, ptr %middle_genomicpos, align 8, !tbaa !12
  %57 = load ptr, ptr %mismatch_positions.addr, align 8, !tbaa !5
  %58 = load i32, ptr %total_nmismatches.addr, align 4, !tbaa !14
  %59 = load i64, ptr %univdiagonal.addr, align 8, !tbaa !12
  %60 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %61 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %62 = load ptr, ptr %queryptr.addr, align 8, !tbaa !5
  %63 = load i64, ptr %chroffset.addr, align 8, !tbaa !12
  %64 = load i64, ptr %chrhigh.addr, align 8, !tbaa !12
  %65 = load ptr, ptr %novel_diagonals_alloc.addr, align 8, !tbaa !5
  %66 = load ptr, ptr %localdb_alloc.addr, align 8, !tbaa !5
  %67 = load i32, ptr %streamspace_max_alloc.addr, align 4, !tbaa !14
  %68 = load ptr, ptr %streamspace_alloc.addr, align 8, !tbaa !5
  %69 = load ptr, ptr %streamptr_alloc.addr, align 8, !tbaa !5
  %70 = load ptr, ptr %streamsize_alloc.addr, align 8, !tbaa !5
  %71 = load ptr, ptr %mergeinfo.addr, align 8, !tbaa !5
  %72 = load double, ptr %medial_splicesite_prob, align 8, !tbaa !31
  %73 = load double, ptr %distal_splicesite_prob, align 8, !tbaa !31
  %74 = load i32, ptr %max_nconsecutive.addr, align 4, !tbaa !14
  %75 = load i8, ptr %plusp.addr, align 1, !tbaa !16
  %76 = load i32, ptr %genestrand.addr, align 4, !tbaa !14
  %77 = load i32, ptr %nmismatches_allowed.addr, align 4, !tbaa !14
  %78 = load i8, ptr %search_localdb_p.addr, align 1, !tbaa !16
  %79 = load i8, ptr %innerp.addr, align 1, !tbaa !16
  %80 = load i8, ptr %salvagep.addr, align 1, !tbaa !16
  %call55 = call i32 @novel_spliceends_trim3_sense(ptr noundef %max_sense_prob, ptr noundef %52, ptr noundef %53, i64 noundef %54, i64 noundef %55, i64 noundef %56, ptr noundef %57, i32 noundef %58, i64 noundef %59, i32 noundef %60, ptr noundef %61, ptr noundef %62, i64 noundef %63, i64 noundef %64, ptr noundef %65, ptr noundef %66, i32 noundef %67, ptr noundef %68, ptr noundef %69, ptr noundef %70, ptr noundef %71, double noundef %72, double noundef %73, i32 noundef %74, i8 noundef zeroext %75, i32 noundef %76, i32 noundef %77, i8 noundef zeroext %78, i8 noundef zeroext %79, i8 noundef zeroext %80)
  store i32 %call55, ptr %nspliceends, align 4, !tbaa !14
  br label %if.end56

if.end56:                                         ; preds = %if.else54, %if.then53
  store i32 2, ptr %found_sensedir, align 4, !tbaa !14
  br label %if.end104

if.else57:                                        ; preds = %if.end44
  %81 = load i32, ptr %try_sensedir.addr, align 4, !tbaa !14
  %cmp58 = icmp eq i32 %81, 1
  br i1 %cmp58, label %if.then60, label %if.else71

if.then60:                                        ; preds = %if.else57
  %82 = load ptr, ptr %knownsplicing.addr, align 8, !tbaa !5
  %cmp61 = icmp ne ptr %82, null
  br i1 %cmp61, label %land.lhs.true63, label %if.else68

land.lhs.true63:                                  ; preds = %if.then60
  %83 = load ptr, ptr %new, align 8, !tbaa !5
  %84 = load i64, ptr %end_genomicpos, align 8, !tbaa !12
  %85 = load i64, ptr %start_genomicpos, align 8, !tbaa !12
  %86 = load i32, ptr %qstart.addr, align 4, !tbaa !14
  %87 = load i32, ptr %qend.addr, align 4, !tbaa !14
  %88 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %89 = load i64, ptr %univdiagonal.addr, align 8, !tbaa !12
  %90 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %91 = load ptr, ptr %knownsplicing.addr, align 8, !tbaa !5
  %92 = load i8, ptr %plusp.addr, align 1, !tbaa !16
  %93 = load i32, ptr %genestrand.addr, align 4, !tbaa !14
  %call64 = call i32 @known_spliceends_trim3_anti(ptr noundef %83, i64 noundef %84, i64 noundef %85, i32 noundef %86, i32 noundef %87, ptr noundef %88, i64 noundef %89, i32 noundef %90, ptr noundef %91, i8 noundef zeroext %92, i32 noundef %93)
  store i32 %call64, ptr %nspliceends, align 4, !tbaa !14
  %cmp65 = icmp sgt i32 %call64, 0
  br i1 %cmp65, label %if.then67, label %if.else68

if.then67:                                        ; preds = %land.lhs.true63
  %94 = load ptr, ptr %partnerp.addr, align 8, !tbaa !5
  store i8 1, ptr %94, align 1, !tbaa !16
  store double 1.000000e+00, ptr %max_antisense_prob, align 8, !tbaa !31
  br label %if.end70

if.else68:                                        ; preds = %land.lhs.true63, %if.then60
  %95 = load ptr, ptr %partnerp.addr, align 8, !tbaa !5
  %96 = load ptr, ptr %new, align 8, !tbaa !5
  %97 = load i64, ptr %end_genomicpos, align 8, !tbaa !12
  %98 = load i64, ptr %start_genomicpos, align 8, !tbaa !12
  %99 = load i64, ptr %middle_genomicpos, align 8, !tbaa !12
  %100 = load ptr, ptr %mismatch_positions.addr, align 8, !tbaa !5
  %101 = load i32, ptr %total_nmismatches.addr, align 4, !tbaa !14
  %102 = load i64, ptr %univdiagonal.addr, align 8, !tbaa !12
  %103 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %104 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %105 = load ptr, ptr %queryptr.addr, align 8, !tbaa !5
  %106 = load i64, ptr %chroffset.addr, align 8, !tbaa !12
  %107 = load i64, ptr %chrhigh.addr, align 8, !tbaa !12
  %108 = load ptr, ptr %novel_diagonals_alloc.addr, align 8, !tbaa !5
  %109 = load ptr, ptr %localdb_alloc.addr, align 8, !tbaa !5
  %110 = load i32, ptr %streamspace_max_alloc.addr, align 4, !tbaa !14
  %111 = load ptr, ptr %streamspace_alloc.addr, align 8, !tbaa !5
  %112 = load ptr, ptr %streamptr_alloc.addr, align 8, !tbaa !5
  %113 = load ptr, ptr %streamsize_alloc.addr, align 8, !tbaa !5
  %114 = load ptr, ptr %mergeinfo.addr, align 8, !tbaa !5
  %115 = load double, ptr %medial_splicesite_prob, align 8, !tbaa !31
  %116 = load double, ptr %distal_splicesite_prob, align 8, !tbaa !31
  %117 = load i32, ptr %max_nconsecutive.addr, align 4, !tbaa !14
  %118 = load i8, ptr %plusp.addr, align 1, !tbaa !16
  %119 = load i32, ptr %genestrand.addr, align 4, !tbaa !14
  %120 = load i32, ptr %nmismatches_allowed.addr, align 4, !tbaa !14
  %121 = load i8, ptr %search_localdb_p.addr, align 1, !tbaa !16
  %122 = load i8, ptr %innerp.addr, align 1, !tbaa !16
  %123 = load i8, ptr %salvagep.addr, align 1, !tbaa !16
  %call69 = call i32 @novel_spliceends_trim3_anti(ptr noundef %max_antisense_prob, ptr noundef %95, ptr noundef %96, i64 noundef %97, i64 noundef %98, i64 noundef %99, ptr noundef %100, i32 noundef %101, i64 noundef %102, i32 noundef %103, ptr noundef %104, ptr noundef %105, i64 noundef %106, i64 noundef %107, ptr noundef %108, ptr noundef %109, i32 noundef %110, ptr noundef %111, ptr noundef %112, ptr noundef %113, ptr noundef %114, double noundef %115, double noundef %116, i32 noundef %117, i8 noundef zeroext %118, i32 noundef %119, i32 noundef %120, i8 noundef zeroext %121, i8 noundef zeroext %122, i8 noundef zeroext %123)
  store i32 %call69, ptr %nspliceends, align 4, !tbaa !14
  br label %if.end70

if.end70:                                         ; preds = %if.else68, %if.then67
  store i32 1, ptr %found_sensedir, align 4, !tbaa !14
  br label %if.end103

if.else71:                                        ; preds = %if.else57
  %124 = load ptr, ptr %spliceendsgen.addr, align 8, !tbaa !5
  %125 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %call72 = call ptr @Spliceendsgen_checkout(ptr noundef %124, i32 noundef %125)
  store ptr %call72, ptr %anti, align 8, !tbaa !5
  %126 = load ptr, ptr %knownsplicing.addr, align 8, !tbaa !5
  %cmp73 = icmp ne ptr %126, null
  br i1 %cmp73, label %land.lhs.true75, label %if.else80

land.lhs.true75:                                  ; preds = %if.else71
  %127 = load ptr, ptr %new, align 8, !tbaa !5
  %128 = load i64, ptr %end_genomicpos, align 8, !tbaa !12
  %129 = load i64, ptr %start_genomicpos, align 8, !tbaa !12
  %130 = load i32, ptr %qstart.addr, align 4, !tbaa !14
  %131 = load i32, ptr %qend.addr, align 4, !tbaa !14
  %132 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %133 = load i64, ptr %univdiagonal.addr, align 8, !tbaa !12
  %134 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %135 = load ptr, ptr %knownsplicing.addr, align 8, !tbaa !5
  %136 = load i8, ptr %plusp.addr, align 1, !tbaa !16
  %137 = load i32, ptr %genestrand.addr, align 4, !tbaa !14
  %call76 = call i32 @known_spliceends_trim3_sense(ptr noundef %127, i64 noundef %128, i64 noundef %129, i32 noundef %130, i32 noundef %131, ptr noundef %132, i64 noundef %133, i32 noundef %134, ptr noundef %135, i8 noundef zeroext %136, i32 noundef %137)
  store i32 %call76, ptr %n_sense_spliceends, align 4, !tbaa !14
  %cmp77 = icmp sgt i32 %call76, 0
  br i1 %cmp77, label %if.then79, label %if.else80

if.then79:                                        ; preds = %land.lhs.true75
  store i8 1, ptr %sense_partnerp, align 1, !tbaa !16
  store double 1.000000e+00, ptr %max_sense_prob, align 8, !tbaa !31
  br label %if.end82

if.else80:                                        ; preds = %land.lhs.true75, %if.else71
  %138 = load ptr, ptr %new, align 8, !tbaa !5
  %139 = load i64, ptr %end_genomicpos, align 8, !tbaa !12
  %140 = load i64, ptr %start_genomicpos, align 8, !tbaa !12
  %141 = load i64, ptr %middle_genomicpos, align 8, !tbaa !12
  %142 = load ptr, ptr %mismatch_positions.addr, align 8, !tbaa !5
  %143 = load i32, ptr %total_nmismatches.addr, align 4, !tbaa !14
  %144 = load i64, ptr %univdiagonal.addr, align 8, !tbaa !12
  %145 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %146 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %147 = load ptr, ptr %queryptr.addr, align 8, !tbaa !5
  %148 = load i64, ptr %chroffset.addr, align 8, !tbaa !12
  %149 = load i64, ptr %chrhigh.addr, align 8, !tbaa !12
  %150 = load ptr, ptr %novel_diagonals_alloc.addr, align 8, !tbaa !5
  %151 = load ptr, ptr %localdb_alloc.addr, align 8, !tbaa !5
  %152 = load i32, ptr %streamspace_max_alloc.addr, align 4, !tbaa !14
  %153 = load ptr, ptr %streamspace_alloc.addr, align 8, !tbaa !5
  %154 = load ptr, ptr %streamptr_alloc.addr, align 8, !tbaa !5
  %155 = load ptr, ptr %streamsize_alloc.addr, align 8, !tbaa !5
  %156 = load ptr, ptr %mergeinfo.addr, align 8, !tbaa !5
  %157 = load double, ptr %medial_splicesite_prob, align 8, !tbaa !31
  %158 = load double, ptr %distal_splicesite_prob, align 8, !tbaa !31
  %159 = load i32, ptr %max_nconsecutive.addr, align 4, !tbaa !14
  %160 = load i8, ptr %plusp.addr, align 1, !tbaa !16
  %161 = load i32, ptr %genestrand.addr, align 4, !tbaa !14
  %162 = load i32, ptr %nmismatches_allowed.addr, align 4, !tbaa !14
  %163 = load i8, ptr %search_localdb_p.addr, align 1, !tbaa !16
  %164 = load i8, ptr %innerp.addr, align 1, !tbaa !16
  %165 = load i8, ptr %salvagep.addr, align 1, !tbaa !16
  %call81 = call i32 @novel_spliceends_trim3_sense(ptr noundef %max_sense_prob, ptr noundef %sense_partnerp, ptr noundef %138, i64 noundef %139, i64 noundef %140, i64 noundef %141, ptr noundef %142, i32 noundef %143, i64 noundef %144, i32 noundef %145, ptr noundef %146, ptr noundef %147, i64 noundef %148, i64 noundef %149, ptr noundef %150, ptr noundef %151, i32 noundef %152, ptr noundef %153, ptr noundef %154, ptr noundef %155, ptr noundef %156, double noundef %157, double noundef %158, i32 noundef %159, i8 noundef zeroext %160, i32 noundef %161, i32 noundef %162, i8 noundef zeroext %163, i8 noundef zeroext %164, i8 noundef zeroext %165)
  store i32 %call81, ptr %n_sense_spliceends, align 4, !tbaa !14
  br label %if.end82

if.end82:                                         ; preds = %if.else80, %if.then79
  %166 = load ptr, ptr %knownsplicing.addr, align 8, !tbaa !5
  %cmp83 = icmp ne ptr %166, null
  br i1 %cmp83, label %land.lhs.true85, label %if.else90

land.lhs.true85:                                  ; preds = %if.end82
  %167 = load ptr, ptr %anti, align 8, !tbaa !5
  %168 = load i64, ptr %end_genomicpos, align 8, !tbaa !12
  %169 = load i64, ptr %start_genomicpos, align 8, !tbaa !12
  %170 = load i32, ptr %qstart.addr, align 4, !tbaa !14
  %171 = load i32, ptr %qend.addr, align 4, !tbaa !14
  %172 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %173 = load i64, ptr %univdiagonal.addr, align 8, !tbaa !12
  %174 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %175 = load ptr, ptr %knownsplicing.addr, align 8, !tbaa !5
  %176 = load i8, ptr %plusp.addr, align 1, !tbaa !16
  %177 = load i32, ptr %genestrand.addr, align 4, !tbaa !14
  %call86 = call i32 @known_spliceends_trim3_anti(ptr noundef %167, i64 noundef %168, i64 noundef %169, i32 noundef %170, i32 noundef %171, ptr noundef %172, i64 noundef %173, i32 noundef %174, ptr noundef %175, i8 noundef zeroext %176, i32 noundef %177)
  store i32 %call86, ptr %n_anti_spliceends, align 4, !tbaa !14
  %cmp87 = icmp sgt i32 %call86, 0
  br i1 %cmp87, label %if.then89, label %if.else90

if.then89:                                        ; preds = %land.lhs.true85
  store i8 1, ptr %antisense_partnerp, align 1, !tbaa !16
  store double 1.000000e+00, ptr %max_antisense_prob, align 8, !tbaa !31
  br label %if.end92

if.else90:                                        ; preds = %land.lhs.true85, %if.end82
  %178 = load ptr, ptr %anti, align 8, !tbaa !5
  %179 = load i64, ptr %end_genomicpos, align 8, !tbaa !12
  %180 = load i64, ptr %start_genomicpos, align 8, !tbaa !12
  %181 = load i64, ptr %middle_genomicpos, align 8, !tbaa !12
  %182 = load ptr, ptr %mismatch_positions.addr, align 8, !tbaa !5
  %183 = load i32, ptr %total_nmismatches.addr, align 4, !tbaa !14
  %184 = load i64, ptr %univdiagonal.addr, align 8, !tbaa !12
  %185 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %186 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %187 = load ptr, ptr %queryptr.addr, align 8, !tbaa !5
  %188 = load i64, ptr %chroffset.addr, align 8, !tbaa !12
  %189 = load i64, ptr %chrhigh.addr, align 8, !tbaa !12
  %190 = load ptr, ptr %novel_diagonals_alloc.addr, align 8, !tbaa !5
  %191 = load ptr, ptr %localdb_alloc.addr, align 8, !tbaa !5
  %192 = load i32, ptr %streamspace_max_alloc.addr, align 4, !tbaa !14
  %193 = load ptr, ptr %streamspace_alloc.addr, align 8, !tbaa !5
  %194 = load ptr, ptr %streamptr_alloc.addr, align 8, !tbaa !5
  %195 = load ptr, ptr %streamsize_alloc.addr, align 8, !tbaa !5
  %196 = load ptr, ptr %mergeinfo.addr, align 8, !tbaa !5
  %197 = load double, ptr %medial_splicesite_prob, align 8, !tbaa !31
  %198 = load double, ptr %distal_splicesite_prob, align 8, !tbaa !31
  %199 = load i32, ptr %max_nconsecutive.addr, align 4, !tbaa !14
  %200 = load i8, ptr %plusp.addr, align 1, !tbaa !16
  %201 = load i32, ptr %genestrand.addr, align 4, !tbaa !14
  %202 = load i32, ptr %nmismatches_allowed.addr, align 4, !tbaa !14
  %203 = load i8, ptr %search_localdb_p.addr, align 1, !tbaa !16
  %204 = load i8, ptr %innerp.addr, align 1, !tbaa !16
  %205 = load i8, ptr %salvagep.addr, align 1, !tbaa !16
  %call91 = call i32 @novel_spliceends_trim3_anti(ptr noundef %max_antisense_prob, ptr noundef %antisense_partnerp, ptr noundef %178, i64 noundef %179, i64 noundef %180, i64 noundef %181, ptr noundef %182, i32 noundef %183, i64 noundef %184, i32 noundef %185, ptr noundef %186, ptr noundef %187, i64 noundef %188, i64 noundef %189, ptr noundef %190, ptr noundef %191, i32 noundef %192, ptr noundef %193, ptr noundef %194, ptr noundef %195, ptr noundef %196, double noundef %197, double noundef %198, i32 noundef %199, i8 noundef zeroext %200, i32 noundef %201, i32 noundef %202, i8 noundef zeroext %203, i8 noundef zeroext %204, i8 noundef zeroext %205)
  store i32 %call91, ptr %nspliceends, align 4, !tbaa !14
  br label %if.end92

if.end92:                                         ; preds = %if.else90, %if.then89
  %206 = load double, ptr %max_sense_prob, align 8, !tbaa !31
  %207 = load double, ptr %max_antisense_prob, align 8, !tbaa !31
  %cmp93 = fcmp ogt double %206, %207
  br i1 %cmp93, label %if.then95, label %if.else96

if.then95:                                        ; preds = %if.end92
  %208 = load i8, ptr %sense_partnerp, align 1, !tbaa !16
  %209 = load ptr, ptr %partnerp.addr, align 8, !tbaa !5
  store i8 %208, ptr %209, align 1, !tbaa !16
  %210 = load i32, ptr %n_sense_spliceends, align 4, !tbaa !14
  store i32 %210, ptr %nspliceends, align 4, !tbaa !14
  store i32 2, ptr %found_sensedir, align 4, !tbaa !14
  %211 = load ptr, ptr %spliceendsgen.addr, align 8, !tbaa !5
  call void @Spliceendsgen_return(ptr noundef %211, ptr noundef %anti)
  br label %if.end102

if.else96:                                        ; preds = %if.end92
  %212 = load double, ptr %max_antisense_prob, align 8, !tbaa !31
  %213 = load double, ptr %max_sense_prob, align 8, !tbaa !31
  %cmp97 = fcmp ogt double %212, %213
  br i1 %cmp97, label %if.then99, label %if.else100

if.then99:                                        ; preds = %if.else96
  %214 = load i8, ptr %antisense_partnerp, align 1, !tbaa !16
  %215 = load ptr, ptr %partnerp.addr, align 8, !tbaa !5
  store i8 %214, ptr %215, align 1, !tbaa !16
  %216 = load i32, ptr %n_anti_spliceends, align 4, !tbaa !14
  store i32 %216, ptr %nspliceends, align 4, !tbaa !14
  store i32 1, ptr %found_sensedir, align 4, !tbaa !14
  %217 = load ptr, ptr %spliceendsgen.addr, align 8, !tbaa !5
  call void @Spliceendsgen_return(ptr noundef %217, ptr noundef %new)
  %218 = load ptr, ptr %anti, align 8, !tbaa !5
  store ptr %218, ptr %new, align 8, !tbaa !5
  br label %if.end101

if.else100:                                       ; preds = %if.else96
  %219 = load ptr, ptr %spliceendsgen.addr, align 8, !tbaa !5
  call void @Spliceendsgen_return(ptr noundef %219, ptr noundef %anti)
  %220 = load ptr, ptr %spliceendsgen.addr, align 8, !tbaa !5
  call void @Spliceendsgen_return(ptr noundef %220, ptr noundef %new)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end101:                                        ; preds = %if.then99
  br label %if.end102

if.end102:                                        ; preds = %if.end101, %if.then95
  br label %if.end103

if.end103:                                        ; preds = %if.end102, %if.end70
  br label %if.end104

if.end104:                                        ; preds = %if.end103, %if.end56
  %221 = load i32, ptr %nspliceends, align 4, !tbaa !14
  %cmp105 = icmp eq i32 %221, 0
  br i1 %cmp105, label %if.then107, label %if.else108

if.then107:                                       ; preds = %if.end104
  %222 = load ptr, ptr %spliceendsgen.addr, align 8, !tbaa !5
  call void @Spliceendsgen_return(ptr noundef %222, ptr noundef %new)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else108:                                       ; preds = %if.end104
  %223 = load i32, ptr %nspliceends, align 4, !tbaa !14
  %224 = load ptr, ptr %new, align 8, !tbaa !5
  %nspliceends109 = getelementptr inbounds %struct.Spliceends_T, ptr %224, i32 0, i32 2
  store i32 %223, ptr %nspliceends109, align 8, !tbaa !34
  %225 = load i32, ptr %found_sensedir, align 4, !tbaa !14
  %226 = load ptr, ptr %new, align 8, !tbaa !5
  %sensedir = getelementptr inbounds %struct.Spliceends_T, ptr %226, i32 0, i32 4
  store i32 %225, ptr %sensedir, align 8, !tbaa !36
  %227 = load i32, ptr %found_sensedir, align 4, !tbaa !14
  %cmp110 = icmp eq i32 %227, 2
  br i1 %cmp110, label %if.then112, label %if.else117

if.then112:                                       ; preds = %if.else108
  %228 = load i8, ptr %plusp.addr, align 1, !tbaa !16
  %tobool = icmp ne i8 %228, 0
  br i1 %tobool, label %if.then113, label %if.else114

if.then113:                                       ; preds = %if.then112
  %229 = load ptr, ptr %new, align 8, !tbaa !5
  %splicetype = getelementptr inbounds %struct.Spliceends_T, ptr %229, i32 0, i32 3
  store i32 1, ptr %splicetype, align 4, !tbaa !33
  br label %if.end116

if.else114:                                       ; preds = %if.then112
  %230 = load ptr, ptr %new, align 8, !tbaa !5
  %splicetype115 = getelementptr inbounds %struct.Spliceends_T, ptr %230, i32 0, i32 3
  store i32 4, ptr %splicetype115, align 4, !tbaa !33
  br label %if.end116

if.end116:                                        ; preds = %if.else114, %if.then113
  br label %if.end124

if.else117:                                       ; preds = %if.else108
  %231 = load i8, ptr %plusp.addr, align 1, !tbaa !16
  %tobool118 = icmp ne i8 %231, 0
  br i1 %tobool118, label %if.then119, label %if.else121

if.then119:                                       ; preds = %if.else117
  %232 = load ptr, ptr %new, align 8, !tbaa !5
  %splicetype120 = getelementptr inbounds %struct.Spliceends_T, ptr %232, i32 0, i32 3
  store i32 4, ptr %splicetype120, align 4, !tbaa !33
  br label %if.end123

if.else121:                                       ; preds = %if.else117
  %233 = load ptr, ptr %new, align 8, !tbaa !5
  %splicetype122 = getelementptr inbounds %struct.Spliceends_T, ptr %233, i32 0, i32 3
  store i32 1, ptr %splicetype122, align 4, !tbaa !33
  br label %if.end123

if.end123:                                        ; preds = %if.else121, %if.then119
  br label %if.end124

if.end124:                                        ; preds = %if.end123, %if.end116
  %234 = load ptr, ptr %new, align 8, !tbaa !5
  store ptr %234, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end124, %if.then107, %if.else100, %if.then42
  call void @llvm.lifetime.end.p0(i64 8, ptr %left) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %distal_splicesite_prob) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %medial_splicesite_prob) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr %antisense_partnerp) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr %sense_partnerp) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %max_antisense_prob) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %max_sense_prob) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %end_genomicpos) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %middle_genomicpos) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %start_genomicpos) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %n_anti_spliceends) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %n_sense_spliceends) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %nspliceends) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %mismatchi) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %qdistal) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %found_sensedir) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %anti) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %new) #4
  %235 = load ptr, ptr %retval, align 8
  ret ptr %235
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @Spliceends_qend_trim(ptr noundef %trimpos, ptr noundef %nmismatches_to_trimpos, ptr noundef %found_sensedir, ptr noundef %splicetype, ptr noundef %ambig_prob_qend, ptr noundef %knownsplicing, i32 noundef %try_sensedir, i64 noundef %univdiagonal, i32 noundef %querylength, i32 noundef %pos5, i32 noundef %exon_origin, i32 noundef %chrnum, i64 noundef %chroffset, i64 noundef %chrhigh, i8 noundef zeroext %plusp, i32 noundef %genestrand, ptr noundef %mismatch_positions_alloc, ptr noundef %spliceendsgen, ptr noundef %query_compress, ptr noundef %queryptr, ptr noundef %genomebits, ptr noundef %genomebits_alt, i8 noundef zeroext %novelsplicingp) #1 {
entry:
  %retval = alloca i8, align 1
  %trimpos.addr = alloca ptr, align 8
  %nmismatches_to_trimpos.addr = alloca ptr, align 8
  %found_sensedir.addr = alloca ptr, align 8
  %splicetype.addr = alloca ptr, align 8
  %ambig_prob_qend.addr = alloca ptr, align 8
  %knownsplicing.addr = alloca ptr, align 8
  %try_sensedir.addr = alloca i32, align 4
  %univdiagonal.addr = alloca i64, align 8
  %querylength.addr = alloca i32, align 4
  %pos5.addr = alloca i32, align 4
  %exon_origin.addr = alloca i32, align 4
  %chrnum.addr = alloca i32, align 4
  %chroffset.addr = alloca i64, align 8
  %chrhigh.addr = alloca i64, align 8
  %plusp.addr = alloca i8, align 1
  %genestrand.addr = alloca i32, align 4
  %mismatch_positions_alloc.addr = alloca ptr, align 8
  %spliceendsgen.addr = alloca ptr, align 8
  %query_compress.addr = alloca ptr, align 8
  %queryptr.addr = alloca ptr, align 8
  %genomebits.addr = alloca ptr, align 8
  %genomebits_alt.addr = alloca ptr, align 8
  %novelsplicingp.addr = alloca i8, align 1
  %spliceends = alloca ptr, align 8
  %pos3 = alloca i32, align 4
  %total_nmismatches = alloca i32, align 4
  %partnerp = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %trimpos, ptr %trimpos.addr, align 8, !tbaa !5
  store ptr %nmismatches_to_trimpos, ptr %nmismatches_to_trimpos.addr, align 8, !tbaa !5
  store ptr %found_sensedir, ptr %found_sensedir.addr, align 8, !tbaa !5
  store ptr %splicetype, ptr %splicetype.addr, align 8, !tbaa !5
  store ptr %ambig_prob_qend, ptr %ambig_prob_qend.addr, align 8, !tbaa !5
  store ptr %knownsplicing, ptr %knownsplicing.addr, align 8, !tbaa !5
  store i32 %try_sensedir, ptr %try_sensedir.addr, align 4, !tbaa !14
  store i64 %univdiagonal, ptr %univdiagonal.addr, align 8, !tbaa !12
  store i32 %querylength, ptr %querylength.addr, align 4, !tbaa !14
  store i32 %pos5, ptr %pos5.addr, align 4, !tbaa !14
  store i32 %exon_origin, ptr %exon_origin.addr, align 4, !tbaa !14
  store i32 %chrnum, ptr %chrnum.addr, align 4, !tbaa !14
  store i64 %chroffset, ptr %chroffset.addr, align 8, !tbaa !12
  store i64 %chrhigh, ptr %chrhigh.addr, align 8, !tbaa !12
  store i8 %plusp, ptr %plusp.addr, align 1, !tbaa !16
  store i32 %genestrand, ptr %genestrand.addr, align 4, !tbaa !14
  store ptr %mismatch_positions_alloc, ptr %mismatch_positions_alloc.addr, align 8, !tbaa !5
  store ptr %spliceendsgen, ptr %spliceendsgen.addr, align 8, !tbaa !5
  store ptr %query_compress, ptr %query_compress.addr, align 8, !tbaa !5
  store ptr %queryptr, ptr %queryptr.addr, align 8, !tbaa !5
  store ptr %genomebits, ptr %genomebits.addr, align 8, !tbaa !5
  store ptr %genomebits_alt, ptr %genomebits_alt.addr, align 8, !tbaa !5
  store i8 %novelsplicingp, ptr %novelsplicingp.addr, align 1, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr %spliceends) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %pos3) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %total_nmismatches) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr %partnerp) #4
  %0 = load i32, ptr %try_sensedir.addr, align 4, !tbaa !14
  %1 = load ptr, ptr %found_sensedir.addr, align 8, !tbaa !5
  store i32 %0, ptr %1, align 4, !tbaa !14
  %2 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  store i32 %2, ptr %pos3, align 4, !tbaa !14
  %3 = load i32, ptr %pos3, align 4, !tbaa !14
  %4 = load i32, ptr %pos5.addr, align 4, !tbaa !14
  %cmp = icmp sle i32 %3, %4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load i32, ptr %pos5.addr, align 4, !tbaa !14
  %6 = load ptr, ptr %trimpos.addr, align 8, !tbaa !5
  store i32 %5, ptr %6, align 4, !tbaa !14
  %7 = load ptr, ptr %splicetype.addr, align 8, !tbaa !5
  store i32 0, ptr %7, align 4, !tbaa !16
  %8 = load ptr, ptr %ambig_prob_qend.addr, align 8, !tbaa !5
  store double 0.000000e+00, ptr %8, align 8, !tbaa !31
  store i8 0, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %entry
  %9 = load ptr, ptr %nmismatches_to_trimpos.addr, align 8, !tbaa !5
  %10 = load ptr, ptr %mismatch_positions_alloc.addr, align 8, !tbaa !5
  %11 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %12 = load ptr, ptr %genomebits.addr, align 8, !tbaa !5
  %13 = load ptr, ptr %genomebits_alt.addr, align 8, !tbaa !5
  %14 = load i64, ptr %univdiagonal.addr, align 8, !tbaa !12
  %15 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %16 = load i32, ptr %pos5.addr, align 4, !tbaa !14
  %17 = load i32, ptr %pos3, align 4, !tbaa !14
  %18 = load i8, ptr %plusp.addr, align 1, !tbaa !16
  %19 = load i32, ptr %genestrand.addr, align 4, !tbaa !14
  %call = call i32 @Spliceends_trim_qend_nosplice(ptr noundef %9, ptr noundef %total_nmismatches, ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %13, i64 noundef %14, i32 noundef %15, i32 noundef %16, i32 noundef %17, i8 noundef zeroext %18, i32 noundef %19)
  %20 = load ptr, ptr %trimpos.addr, align 8, !tbaa !5
  store i32 %call, ptr %20, align 4, !tbaa !14
  br label %if.end

if.end:                                           ; preds = %if.else
  %21 = load ptr, ptr %trimpos.addr, align 8, !tbaa !5
  %22 = load i32, ptr %21, align 4, !tbaa !14
  %23 = load i32, ptr %pos5.addr, align 4, !tbaa !14
  %cmp1 = icmp sle i32 %22, %23
  br i1 %cmp1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.end
  %24 = load i32, ptr %pos5.addr, align 4, !tbaa !14
  %25 = load ptr, ptr %trimpos.addr, align 8, !tbaa !5
  store i32 %24, ptr %25, align 4, !tbaa !14
  %26 = load ptr, ptr %splicetype.addr, align 8, !tbaa !5
  store i32 0, ptr %26, align 4, !tbaa !16
  %27 = load ptr, ptr %ambig_prob_qend.addr, align 8, !tbaa !5
  store double 0.000000e+00, ptr %27, align 8, !tbaa !31
  store i8 0, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else3:                                         ; preds = %if.end
  %28 = load ptr, ptr %trimpos.addr, align 8, !tbaa !5
  %29 = load i32, ptr %28, align 4, !tbaa !14
  %30 = load i32, ptr %pos3, align 4, !tbaa !14
  %cmp4 = icmp eq i32 %29, %30
  br i1 %cmp4, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.else3
  %31 = load ptr, ptr %splicetype.addr, align 8, !tbaa !5
  store i32 0, ptr %31, align 4, !tbaa !16
  %32 = load ptr, ptr %ambig_prob_qend.addr, align 8, !tbaa !5
  store double 0.000000e+00, ptr %32, align 8, !tbaa !31
  store i8 0, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else6:                                         ; preds = %if.else3
  %33 = load ptr, ptr %knownsplicing.addr, align 8, !tbaa !5
  %cmp7 = icmp eq ptr %33, null
  br i1 %cmp7, label %land.lhs.true, label %if.else11

land.lhs.true:                                    ; preds = %if.else6
  %34 = load i8, ptr %novelsplicingp.addr, align 1, !tbaa !16
  %conv = zext i8 %34 to i32
  %cmp8 = icmp eq i32 %conv, 0
  br i1 %cmp8, label %if.then10, label %if.else11

if.then10:                                        ; preds = %land.lhs.true
  %35 = load ptr, ptr %splicetype.addr, align 8, !tbaa !5
  store i32 0, ptr %35, align 4, !tbaa !16
  %36 = load ptr, ptr %ambig_prob_qend.addr, align 8, !tbaa !5
  store double 0.000000e+00, ptr %36, align 8, !tbaa !31
  store i8 0, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else11:                                        ; preds = %land.lhs.true, %if.else6
  %37 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %38 = load ptr, ptr %queryptr.addr, align 8, !tbaa !5
  %39 = load ptr, ptr %knownsplicing.addr, align 8, !tbaa !5
  %40 = load i32, ptr %try_sensedir.addr, align 4, !tbaa !14
  %41 = load i64, ptr %univdiagonal.addr, align 8, !tbaa !12
  %42 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %43 = load i32, ptr %pos5.addr, align 4, !tbaa !14
  %44 = load ptr, ptr %trimpos.addr, align 8, !tbaa !5
  %45 = load i32, ptr %44, align 4, !tbaa !14
  %46 = load i32, ptr %pos3, align 4, !tbaa !14
  %47 = load i32, ptr %exon_origin.addr, align 4, !tbaa !14
  %48 = load i64, ptr %chroffset.addr, align 8, !tbaa !12
  %49 = load i64, ptr %chrhigh.addr, align 8, !tbaa !12
  %50 = load ptr, ptr %mismatch_positions_alloc.addr, align 8, !tbaa !5
  %51 = load i32, ptr %total_nmismatches, align 4, !tbaa !14
  %52 = load ptr, ptr %spliceendsgen.addr, align 8, !tbaa !5
  %53 = load i8, ptr %plusp.addr, align 1, !tbaa !16
  %54 = load i32, ptr %genestrand.addr, align 4, !tbaa !14
  %55 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %call12 = call ptr @trim_3(ptr noundef %partnerp, ptr noundef %37, ptr noundef %38, ptr noundef %39, i32 noundef %40, i64 noundef %41, i32 noundef %42, i32 noundef %43, i32 noundef %45, i32 noundef %46, i32 noundef %47, i64 noundef %48, i64 noundef %49, ptr noundef %50, i32 noundef %51, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %52, i32 noundef 20, i8 noundef zeroext %53, i32 noundef %54, i32 noundef %55, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0)
  store ptr %call12, ptr %spliceends, align 8, !tbaa !5
  %cmp13 = icmp ne ptr %call12, null
  br i1 %cmp13, label %if.then15, label %if.else19

if.then15:                                        ; preds = %if.else11
  %56 = load ptr, ptr %spliceends, align 8, !tbaa !5
  %sensedir = getelementptr inbounds %struct.Spliceends_T, ptr %56, i32 0, i32 4
  %57 = load i32, ptr %sensedir, align 8, !tbaa !36
  %58 = load ptr, ptr %found_sensedir.addr, align 8, !tbaa !5
  store i32 %57, ptr %58, align 4, !tbaa !14
  %59 = load ptr, ptr %spliceends, align 8, !tbaa !5
  %trimends = getelementptr inbounds %struct.Spliceends_T, ptr %59, i32 0, i32 8
  %60 = load ptr, ptr %trimends, align 8, !tbaa !23
  %arrayidx = getelementptr inbounds i32, ptr %60, i64 0
  %61 = load i32, ptr %arrayidx, align 4, !tbaa !14
  %62 = load ptr, ptr %trimpos.addr, align 8, !tbaa !5
  store i32 %61, ptr %62, align 4, !tbaa !14
  %63 = load ptr, ptr %spliceends, align 8, !tbaa !5
  %medial_nmismatches = getelementptr inbounds %struct.Spliceends_T, ptr %63, i32 0, i32 10
  %64 = load ptr, ptr %medial_nmismatches, align 8, !tbaa !21
  %arrayidx16 = getelementptr inbounds i32, ptr %64, i64 0
  %65 = load i32, ptr %arrayidx16, align 4, !tbaa !14
  %66 = load ptr, ptr %nmismatches_to_trimpos.addr, align 8, !tbaa !5
  store i32 %65, ptr %66, align 4, !tbaa !14
  %67 = load ptr, ptr %spliceends, align 8, !tbaa !5
  %splicetype17 = getelementptr inbounds %struct.Spliceends_T, ptr %67, i32 0, i32 3
  %68 = load i32, ptr %splicetype17, align 4, !tbaa !33
  %69 = load ptr, ptr %splicetype.addr, align 8, !tbaa !5
  store i32 %68, ptr %69, align 4, !tbaa !16
  %70 = load ptr, ptr %spliceends, align 8, !tbaa !5
  %ambig_probs = getelementptr inbounds %struct.Spliceends_T, ptr %70, i32 0, i32 12
  %71 = load ptr, ptr %ambig_probs, align 8, !tbaa !19
  %arrayidx18 = getelementptr inbounds double, ptr %71, i64 0
  %72 = load double, ptr %arrayidx18, align 8, !tbaa !31
  %73 = load ptr, ptr %ambig_prob_qend.addr, align 8, !tbaa !5
  store double %72, ptr %73, align 8, !tbaa !31
  %74 = load ptr, ptr %spliceendsgen.addr, align 8, !tbaa !5
  call void @Spliceendsgen_return(ptr noundef %74, ptr noundef %spliceends)
  store i8 1, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else19:                                        ; preds = %if.else11
  %75 = load ptr, ptr %splicetype.addr, align 8, !tbaa !5
  store i32 0, ptr %75, align 4, !tbaa !16
  %76 = load ptr, ptr %ambig_prob_qend.addr, align 8, !tbaa !5
  store double 0.000000e+00, ptr %76, align 8, !tbaa !31
  store i8 0, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else19, %if.then15, %if.then10, %if.then5, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %partnerp) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %total_nmismatches) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %pos3) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %spliceends) #4
  %77 = load i8, ptr %retval, align 1
  ret i8 %77
}

; Function Attrs: nounwind uwtable
define dso_local i64 @Spliceends_qstart_resolve(i32 noundef %pos3, i32 noundef %querylength, i64 noundef %low_univdiagonal, i64 noundef %high_univdiagonal, ptr noundef %query_compress, ptr noundef %queryptr, i8 noundef zeroext %plusp, i32 noundef %genestrand, ptr noundef %novel_diagonals_alloc, ptr noundef %localdb_alloc, i32 noundef %streamspace_max_alloc, ptr noundef %streamspace_alloc, ptr noundef %streamptr_alloc, ptr noundef %streamsize_alloc, ptr noundef %mergeinfo, i32 noundef %nmismatches_allowed) #1 {
entry:
  %retval = alloca i64, align 8
  %pos3.addr = alloca i32, align 4
  %querylength.addr = alloca i32, align 4
  %low_univdiagonal.addr = alloca i64, align 8
  %high_univdiagonal.addr = alloca i64, align 8
  %query_compress.addr = alloca ptr, align 8
  %queryptr.addr = alloca ptr, align 8
  %plusp.addr = alloca i8, align 1
  %genestrand.addr = alloca i32, align 4
  %novel_diagonals_alloc.addr = alloca ptr, align 8
  %localdb_alloc.addr = alloca ptr, align 8
  %streamspace_max_alloc.addr = alloca i32, align 4
  %streamspace_alloc.addr = alloca ptr, align 8
  %streamptr_alloc.addr = alloca ptr, align 8
  %streamsize_alloc.addr = alloca ptr, align 8
  %mergeinfo.addr = alloca ptr, align 8
  %nmismatches_allowed.addr = alloca i32, align 4
  %ndiagonals = alloca i32, align 4
  %matchlength = alloca i32, align 4
  %local_nmismatches = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %pos3, ptr %pos3.addr, align 4, !tbaa !14
  store i32 %querylength, ptr %querylength.addr, align 4, !tbaa !14
  store i64 %low_univdiagonal, ptr %low_univdiagonal.addr, align 8, !tbaa !12
  store i64 %high_univdiagonal, ptr %high_univdiagonal.addr, align 8, !tbaa !12
  store ptr %query_compress, ptr %query_compress.addr, align 8, !tbaa !5
  store ptr %queryptr, ptr %queryptr.addr, align 8, !tbaa !5
  store i8 %plusp, ptr %plusp.addr, align 1, !tbaa !16
  store i32 %genestrand, ptr %genestrand.addr, align 4, !tbaa !14
  store ptr %novel_diagonals_alloc, ptr %novel_diagonals_alloc.addr, align 8, !tbaa !5
  store ptr %localdb_alloc, ptr %localdb_alloc.addr, align 8, !tbaa !5
  store i32 %streamspace_max_alloc, ptr %streamspace_max_alloc.addr, align 4, !tbaa !14
  store ptr %streamspace_alloc, ptr %streamspace_alloc.addr, align 8, !tbaa !5
  store ptr %streamptr_alloc, ptr %streamptr_alloc.addr, align 8, !tbaa !5
  store ptr %streamsize_alloc, ptr %streamsize_alloc.addr, align 8, !tbaa !5
  store ptr %mergeinfo, ptr %mergeinfo.addr, align 8, !tbaa !5
  store i32 %nmismatches_allowed, ptr %nmismatches_allowed.addr, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %ndiagonals) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %matchlength) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %local_nmismatches) #4
  %0 = load ptr, ptr @localdb, align 8, !tbaa !5
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %entry
  %1 = load ptr, ptr %novel_diagonals_alloc.addr, align 8, !tbaa !5
  %2 = load ptr, ptr @localdb, align 8, !tbaa !5
  %3 = load ptr, ptr %localdb_alloc.addr, align 8, !tbaa !5
  %4 = load i32, ptr %streamspace_max_alloc.addr, align 4, !tbaa !14
  %5 = load ptr, ptr %streamspace_alloc.addr, align 8, !tbaa !5
  %6 = load ptr, ptr %streamptr_alloc.addr, align 8, !tbaa !5
  %7 = load ptr, ptr %streamsize_alloc.addr, align 8, !tbaa !5
  %8 = load ptr, ptr %mergeinfo.addr, align 8, !tbaa !5
  %9 = load ptr, ptr %queryptr.addr, align 8, !tbaa !5
  %10 = load i32, ptr %pos3.addr, align 4, !tbaa !14
  %11 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %12 = load i64, ptr %low_univdiagonal.addr, align 8, !tbaa !12
  %13 = load i64, ptr %high_univdiagonal.addr, align 8, !tbaa !12
  %14 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %15 = load i8, ptr %plusp.addr, align 1, !tbaa !16
  %16 = load i32, ptr %genestrand.addr, align 4, !tbaa !14
  %17 = load ptr, ptr @genomebits, align 8, !tbaa !5
  %call = call i32 @Localdb_get(ptr noundef %matchlength, ptr noundef %local_nmismatches, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, i32 noundef 0, i32 noundef %10, i32 noundef %11, i64 noundef %12, i64 noundef %13, ptr noundef %14, i8 noundef zeroext %15, i32 noundef %16, ptr noundef %17, i32 noundef 0, i8 noundef zeroext 0)
  store i32 %call, ptr %ndiagonals, align 4, !tbaa !14
  %cmp1 = icmp ne i32 %call, 1
  br i1 %cmp1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.else
  store i64 0, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else3:                                         ; preds = %if.else
  %18 = load ptr, ptr %novel_diagonals_alloc.addr, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i64, ptr %18, i64 0
  %19 = load i64, ptr %arrayidx, align 8, !tbaa !12
  store i64 %19, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else3, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %local_nmismatches) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %matchlength) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %ndiagonals) #4
  %20 = load i64, ptr %retval, align 8
  ret i64 %20
}

declare i32 @Localdb_get(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext) #2

; Function Attrs: nounwind uwtable
define dso_local i64 @Spliceends_qend_resolve(i32 noundef %pos5, i32 noundef %querylength, i64 noundef %low_univdiagonal, i64 noundef %high_univdiagonal, ptr noundef %query_compress, ptr noundef %queryptr, i8 noundef zeroext %plusp, i32 noundef %genestrand, ptr noundef %novel_diagonals_alloc, ptr noundef %localdb_alloc, i32 noundef %streamspace_max_alloc, ptr noundef %streamspace_alloc, ptr noundef %streamptr_alloc, ptr noundef %streamsize_alloc, ptr noundef %mergeinfo, i32 noundef %nmismatches_allowed) #1 {
entry:
  %retval = alloca i64, align 8
  %pos5.addr = alloca i32, align 4
  %querylength.addr = alloca i32, align 4
  %low_univdiagonal.addr = alloca i64, align 8
  %high_univdiagonal.addr = alloca i64, align 8
  %query_compress.addr = alloca ptr, align 8
  %queryptr.addr = alloca ptr, align 8
  %plusp.addr = alloca i8, align 1
  %genestrand.addr = alloca i32, align 4
  %novel_diagonals_alloc.addr = alloca ptr, align 8
  %localdb_alloc.addr = alloca ptr, align 8
  %streamspace_max_alloc.addr = alloca i32, align 4
  %streamspace_alloc.addr = alloca ptr, align 8
  %streamptr_alloc.addr = alloca ptr, align 8
  %streamsize_alloc.addr = alloca ptr, align 8
  %mergeinfo.addr = alloca ptr, align 8
  %nmismatches_allowed.addr = alloca i32, align 4
  %ndiagonals = alloca i32, align 4
  %matchlength = alloca i32, align 4
  %local_nmismatches = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %pos5, ptr %pos5.addr, align 4, !tbaa !14
  store i32 %querylength, ptr %querylength.addr, align 4, !tbaa !14
  store i64 %low_univdiagonal, ptr %low_univdiagonal.addr, align 8, !tbaa !12
  store i64 %high_univdiagonal, ptr %high_univdiagonal.addr, align 8, !tbaa !12
  store ptr %query_compress, ptr %query_compress.addr, align 8, !tbaa !5
  store ptr %queryptr, ptr %queryptr.addr, align 8, !tbaa !5
  store i8 %plusp, ptr %plusp.addr, align 1, !tbaa !16
  store i32 %genestrand, ptr %genestrand.addr, align 4, !tbaa !14
  store ptr %novel_diagonals_alloc, ptr %novel_diagonals_alloc.addr, align 8, !tbaa !5
  store ptr %localdb_alloc, ptr %localdb_alloc.addr, align 8, !tbaa !5
  store i32 %streamspace_max_alloc, ptr %streamspace_max_alloc.addr, align 4, !tbaa !14
  store ptr %streamspace_alloc, ptr %streamspace_alloc.addr, align 8, !tbaa !5
  store ptr %streamptr_alloc, ptr %streamptr_alloc.addr, align 8, !tbaa !5
  store ptr %streamsize_alloc, ptr %streamsize_alloc.addr, align 8, !tbaa !5
  store ptr %mergeinfo, ptr %mergeinfo.addr, align 8, !tbaa !5
  store i32 %nmismatches_allowed, ptr %nmismatches_allowed.addr, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %ndiagonals) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %matchlength) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %local_nmismatches) #4
  %0 = load ptr, ptr @localdb, align 8, !tbaa !5
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %entry
  %1 = load ptr, ptr %novel_diagonals_alloc.addr, align 8, !tbaa !5
  %2 = load ptr, ptr @localdb, align 8, !tbaa !5
  %3 = load ptr, ptr %localdb_alloc.addr, align 8, !tbaa !5
  %4 = load i32, ptr %streamspace_max_alloc.addr, align 4, !tbaa !14
  %5 = load ptr, ptr %streamspace_alloc.addr, align 8, !tbaa !5
  %6 = load ptr, ptr %streamptr_alloc.addr, align 8, !tbaa !5
  %7 = load ptr, ptr %streamsize_alloc.addr, align 8, !tbaa !5
  %8 = load ptr, ptr %mergeinfo.addr, align 8, !tbaa !5
  %9 = load ptr, ptr %queryptr.addr, align 8, !tbaa !5
  %10 = load i32, ptr %pos5.addr, align 4, !tbaa !14
  %11 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %12 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %13 = load i64, ptr %low_univdiagonal.addr, align 8, !tbaa !12
  %14 = load i64, ptr %high_univdiagonal.addr, align 8, !tbaa !12
  %15 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %16 = load i8, ptr %plusp.addr, align 1, !tbaa !16
  %17 = load i32, ptr %genestrand.addr, align 4, !tbaa !14
  %18 = load ptr, ptr @genomebits, align 8, !tbaa !5
  %call = call i32 @Localdb_get(ptr noundef %matchlength, ptr noundef %local_nmismatches, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i64 noundef %13, i64 noundef %14, ptr noundef %15, i8 noundef zeroext %16, i32 noundef %17, ptr noundef %18, i32 noundef 0, i8 noundef zeroext 0)
  store i32 %call, ptr %ndiagonals, align 4, !tbaa !14
  %cmp1 = icmp ne i32 %call, 1
  br i1 %cmp1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.else
  store i64 0, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else3:                                         ; preds = %if.else
  %19 = load ptr, ptr %novel_diagonals_alloc.addr, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i64, ptr %19, i64 0
  %20 = load i64, ptr %arrayidx, align 8, !tbaa !12
  store i64 %20, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else3, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %local_nmismatches) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %matchlength) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %ndiagonals) #4
  %21 = load i64, ptr %retval, align 8
  ret i64 %21
}

declare ptr @Spliceendsgen_checkout(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @known_spliceends_trim5_sense(ptr noundef %this, i64 noundef %end_genomicpos, i64 noundef %start_genomicpos, i32 noundef %qstart, i32 noundef %qend, ptr noundef %query_compress, i64 noundef %univdiagonal, i32 noundef %querylength, ptr noundef %knownsplicing, i8 noundef zeroext %plusp, i32 noundef %genestrand) #1 {
entry:
  %this.addr = alloca ptr, align 8
  %end_genomicpos.addr = alloca i64, align 8
  %start_genomicpos.addr = alloca i64, align 8
  %qstart.addr = alloca i32, align 4
  %qend.addr = alloca i32, align 4
  %query_compress.addr = alloca ptr, align 8
  %univdiagonal.addr = alloca i64, align 8
  %querylength.addr = alloca i32, align 4
  %knownsplicing.addr = alloca ptr, align 8
  %plusp.addr = alloca i8, align 1
  %genestrand.addr = alloca i32, align 4
  %nspliceends = alloca i32, align 4
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %endpoints = alloca ptr, align 8
  %low_rank = alloca i64, align 8
  %high_rank = alloca i64, align 8
  %rank = alloca i64, align 8
  %mismatch_positions_left = alloca ptr, align 8
  %pos5 = alloca i32, align 4
  %ref_distal_nmismatches = alloca i32, align 4
  %splice_qpos = alloca i32, align 4
  %nmismatches_left = alloca i32, align 4
  %lefti = alloca i32, align 4
  %best_adj_support = alloca i32, align 4
  %adj_support = alloca i32, align 4
  %left = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !5
  store i64 %end_genomicpos, ptr %end_genomicpos.addr, align 8, !tbaa !12
  store i64 %start_genomicpos, ptr %start_genomicpos.addr, align 8, !tbaa !12
  store i32 %qstart, ptr %qstart.addr, align 4, !tbaa !14
  store i32 %qend, ptr %qend.addr, align 4, !tbaa !14
  store ptr %query_compress, ptr %query_compress.addr, align 8, !tbaa !5
  store i64 %univdiagonal, ptr %univdiagonal.addr, align 8, !tbaa !12
  store i32 %querylength, ptr %querylength.addr, align 4, !tbaa !14
  store ptr %knownsplicing, ptr %knownsplicing.addr, align 8, !tbaa !5
  store i8 %plusp, ptr %plusp.addr, align 1, !tbaa !16
  store i32 %genestrand, ptr %genestrand.addr, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %nspliceends) #4
  store i32 0, ptr %nspliceends, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %endpoints) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %low_rank) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %high_rank) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %rank) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %mismatch_positions_left) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %pos5) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ref_distal_nmismatches) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %splice_qpos) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %nmismatches_left) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %lefti) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %best_adj_support) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %adj_support) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %left) #4
  %0 = load i64, ptr %univdiagonal.addr, align 8, !tbaa !12
  %1 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %conv = sext i32 %1 to i64
  %sub = sub i64 %0, %conv
  store i64 %sub, ptr %left, align 8, !tbaa !12
  %2 = load i8, ptr %plusp.addr, align 1, !tbaa !16
  %tobool = icmp ne i8 %2, 0
  br i1 %tobool, label %if.then, label %if.else18

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %knownsplicing.addr, align 8, !tbaa !5
  %4 = load i64, ptr %univdiagonal.addr, align 8, !tbaa !12
  %5 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %6 = load i64, ptr %start_genomicpos.addr, align 8, !tbaa !12
  %7 = load i64, ptr %left, align 8, !tbaa !12
  %sub1 = sub i64 %6, %7
  %conv2 = trunc i64 %sub1 to i32
  %8 = load i64, ptr %end_genomicpos.addr, align 8, !tbaa !12
  %9 = load i64, ptr %left, align 8, !tbaa !12
  %sub3 = sub i64 %8, %9
  %conv4 = trunc i64 %sub3 to i32
  %call = call ptr @Knownsplicing_acceptors(ptr noundef %low_rank, ptr noundef %high_rank, ptr noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %conv2, i32 noundef %conv4)
  store ptr %call, ptr %endpoints, align 8, !tbaa !5
  %10 = load i64, ptr %high_rank, align 8, !tbaa !12
  %11 = load i64, ptr %low_rank, align 8, !tbaa !12
  %sub5 = sub i64 %10, %11
  %cmp = icmp ugt i64 %sub5, 30
  br i1 %cmp, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.then
  br label %if.end

if.else:                                          ; preds = %if.then
  %12 = load i64, ptr %low_rank, align 8, !tbaa !12
  store i64 %12, ptr %rank, align 8, !tbaa !12
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %13 = load i64, ptr %rank, align 8, !tbaa !12
  %14 = load i64, ptr %high_rank, align 8, !tbaa !12
  %cmp8 = icmp ult i64 %13, %14
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load ptr, ptr %endpoints, align 8, !tbaa !5
  %16 = load i64, ptr %rank, align 8, !tbaa !12
  %mul = mul i64 2, %16
  %arrayidx = getelementptr inbounds i64, ptr %15, i64 %mul
  %17 = load i64, ptr %arrayidx, align 8, !tbaa !12
  %18 = load i64, ptr %left, align 8, !tbaa !12
  %sub10 = sub i64 %17, %18
  %conv11 = trunc i64 %sub10 to i32
  %19 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimends = getelementptr inbounds %struct.Spliceends_T, ptr %19, i32 0, i32 8
  %20 = load ptr, ptr %trimends, align 8, !tbaa !23
  %21 = load i32, ptr %nspliceends, align 4, !tbaa !14
  %idxprom = sext i32 %21 to i64
  %arrayidx12 = getelementptr inbounds i32, ptr %20, i64 %idxprom
  store i32 %conv11, ptr %arrayidx12, align 4, !tbaa !14
  %22 = load ptr, ptr %endpoints, align 8, !tbaa !5
  %23 = load i64, ptr %rank, align 8, !tbaa !12
  %mul13 = mul i64 2, %23
  %add = add i64 %mul13, 1
  %arrayidx14 = getelementptr inbounds i64, ptr %22, i64 %add
  %24 = load i64, ptr %arrayidx14, align 8, !tbaa !12
  %25 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %partners = getelementptr inbounds %struct.Spliceends_T, ptr %25, i32 0, i32 9
  %26 = load ptr, ptr %partners, align 8, !tbaa !22
  %27 = load i32, ptr %nspliceends, align 4, !tbaa !14
  %inc = add nsw i32 %27, 1
  store i32 %inc, ptr %nspliceends, align 4, !tbaa !14
  %idxprom15 = sext i32 %27 to i64
  %arrayidx16 = getelementptr inbounds i64, ptr %26, i64 %idxprom15
  store i64 %24, ptr %arrayidx16, align 8, !tbaa !12
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %28 = load i64, ptr %rank, align 8, !tbaa !12
  %inc17 = add i64 %28, 1
  store i64 %inc17, ptr %rank, align 8, !tbaa !12
  br label %for.cond, !llvm.loop !39

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then7
  br label %if.end51

if.else18:                                        ; preds = %entry
  %29 = load ptr, ptr %knownsplicing.addr, align 8, !tbaa !5
  %30 = load i64, ptr %univdiagonal.addr, align 8, !tbaa !12
  %31 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %32 = load i64, ptr %start_genomicpos.addr, align 8, !tbaa !12
  %33 = load i64, ptr %left, align 8, !tbaa !12
  %sub19 = sub i64 %32, %33
  %conv20 = trunc i64 %sub19 to i32
  %34 = load i64, ptr %end_genomicpos.addr, align 8, !tbaa !12
  %35 = load i64, ptr %left, align 8, !tbaa !12
  %sub21 = sub i64 %34, %35
  %conv22 = trunc i64 %sub21 to i32
  %call23 = call ptr @Knownsplicing_antidonors(ptr noundef %low_rank, ptr noundef %high_rank, ptr noundef %29, i64 noundef %30, i32 noundef %31, i32 noundef %conv20, i32 noundef %conv22)
  store ptr %call23, ptr %endpoints, align 8, !tbaa !5
  %36 = load i64, ptr %high_rank, align 8, !tbaa !12
  %37 = load i64, ptr %low_rank, align 8, !tbaa !12
  %sub24 = sub i64 %36, %37
  %cmp25 = icmp ugt i64 %sub24, 30
  br i1 %cmp25, label %if.then27, label %if.else28

if.then27:                                        ; preds = %if.else18
  br label %if.end50

if.else28:                                        ; preds = %if.else18
  %38 = load i64, ptr %low_rank, align 8, !tbaa !12
  store i64 %38, ptr %rank, align 8, !tbaa !12
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc47, %if.else28
  %39 = load i64, ptr %rank, align 8, !tbaa !12
  %40 = load i64, ptr %high_rank, align 8, !tbaa !12
  %cmp30 = icmp ult i64 %39, %40
  br i1 %cmp30, label %for.body32, label %for.end49

for.body32:                                       ; preds = %for.cond29
  %41 = load ptr, ptr %endpoints, align 8, !tbaa !5
  %42 = load i64, ptr %rank, align 8, !tbaa !12
  %mul33 = mul i64 2, %42
  %arrayidx34 = getelementptr inbounds i64, ptr %41, i64 %mul33
  %43 = load i64, ptr %arrayidx34, align 8, !tbaa !12
  %44 = load i64, ptr %left, align 8, !tbaa !12
  %sub35 = sub i64 %43, %44
  %conv36 = trunc i64 %sub35 to i32
  %45 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimends37 = getelementptr inbounds %struct.Spliceends_T, ptr %45, i32 0, i32 8
  %46 = load ptr, ptr %trimends37, align 8, !tbaa !23
  %47 = load i32, ptr %nspliceends, align 4, !tbaa !14
  %idxprom38 = sext i32 %47 to i64
  %arrayidx39 = getelementptr inbounds i32, ptr %46, i64 %idxprom38
  store i32 %conv36, ptr %arrayidx39, align 4, !tbaa !14
  %48 = load ptr, ptr %endpoints, align 8, !tbaa !5
  %49 = load i64, ptr %rank, align 8, !tbaa !12
  %mul40 = mul i64 2, %49
  %add41 = add i64 %mul40, 1
  %arrayidx42 = getelementptr inbounds i64, ptr %48, i64 %add41
  %50 = load i64, ptr %arrayidx42, align 8, !tbaa !12
  %51 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %partners43 = getelementptr inbounds %struct.Spliceends_T, ptr %51, i32 0, i32 9
  %52 = load ptr, ptr %partners43, align 8, !tbaa !22
  %53 = load i32, ptr %nspliceends, align 4, !tbaa !14
  %inc44 = add nsw i32 %53, 1
  store i32 %inc44, ptr %nspliceends, align 4, !tbaa !14
  %idxprom45 = sext i32 %53 to i64
  %arrayidx46 = getelementptr inbounds i64, ptr %52, i64 %idxprom45
  store i64 %50, ptr %arrayidx46, align 8, !tbaa !12
  br label %for.inc47

for.inc47:                                        ; preds = %for.body32
  %54 = load i64, ptr %rank, align 8, !tbaa !12
  %inc48 = add i64 %54, 1
  store i64 %inc48, ptr %rank, align 8, !tbaa !12
  br label %for.cond29, !llvm.loop !40

for.end49:                                        ; preds = %for.cond29
  br label %if.end50

if.end50:                                         ; preds = %for.end49, %if.then27
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %if.end
  %55 = load i32, ptr %nspliceends, align 4, !tbaa !14
  %cmp52 = icmp sgt i32 %55, 0
  br i1 %cmp52, label %if.then54, label %if.end145

if.then54:                                        ; preds = %if.end51
  %56 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimends55 = getelementptr inbounds %struct.Spliceends_T, ptr %56, i32 0, i32 8
  %57 = load ptr, ptr %trimends55, align 8, !tbaa !23
  %58 = load i32, ptr %nspliceends, align 4, !tbaa !14
  %call56 = call i32 @min_spliceend(ptr noundef %57, i32 noundef %58)
  store i32 %call56, ptr %pos5, align 4, !tbaa !14
  %59 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %mismatch_positions_left57 = getelementptr inbounds %struct.Spliceends_T, ptr %59, i32 0, i32 5
  %60 = load ptr, ptr %mismatch_positions_left57, align 8, !tbaa !25
  store ptr %60, ptr %mismatch_positions_left, align 8, !tbaa !5
  %61 = load ptr, ptr %mismatch_positions_left, align 8, !tbaa !5
  %62 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %63 = load ptr, ptr @genomebits, align 8, !tbaa !5
  %64 = load ptr, ptr @genomebits_alt, align 8, !tbaa !5
  %65 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %66 = load i64, ptr %univdiagonal.addr, align 8, !tbaa !12
  %67 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %68 = load i32, ptr %pos5, align 4, !tbaa !14
  %69 = load i32, ptr %qend.addr, align 4, !tbaa !14
  %70 = load i8, ptr %plusp.addr, align 1, !tbaa !16
  %71 = load i32, ptr %genestrand.addr, align 4, !tbaa !14
  %call58 = call i32 @Genomebits_mismatches_fromleft(ptr noundef %61, i32 noundef %62, ptr noundef %63, ptr noundef %64, ptr noundef %65, i64 noundef %66, i32 noundef %67, i32 noundef %68, i32 noundef %69, i8 noundef zeroext %70, i32 noundef %71)
  store i32 %call58, ptr %nmismatches_left, align 4, !tbaa !14
  store i32 0, ptr %best_adj_support, align 4, !tbaa !14
  store i32 0, ptr %i, align 4, !tbaa !14
  br label %for.cond59

for.cond59:                                       ; preds = %for.inc85, %if.then54
  %72 = load i32, ptr %i, align 4, !tbaa !14
  %73 = load i32, ptr %nspliceends, align 4, !tbaa !14
  %cmp60 = icmp slt i32 %72, %73
  br i1 %cmp60, label %for.body62, label %for.end87

for.body62:                                       ; preds = %for.cond59
  %74 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimends63 = getelementptr inbounds %struct.Spliceends_T, ptr %74, i32 0, i32 8
  %75 = load ptr, ptr %trimends63, align 8, !tbaa !23
  %76 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom64 = sext i32 %76 to i64
  %arrayidx65 = getelementptr inbounds i32, ptr %75, i64 %idxprom64
  %77 = load i32, ptr %arrayidx65, align 4, !tbaa !14
  store i32 %77, ptr %splice_qpos, align 4, !tbaa !14
  %78 = load ptr, ptr @genomebits, align 8, !tbaa !5
  %79 = load ptr, ptr @genomebits_alt, align 8, !tbaa !5
  %80 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %81 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %partners66 = getelementptr inbounds %struct.Spliceends_T, ptr %81, i32 0, i32 9
  %82 = load ptr, ptr %partners66, align 8, !tbaa !22
  %83 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom67 = sext i32 %83 to i64
  %arrayidx68 = getelementptr inbounds i64, ptr %82, i64 %idxprom67
  %84 = load i64, ptr %arrayidx68, align 8, !tbaa !12
  %85 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %conv69 = sext i32 %85 to i64
  %sub70 = sub i64 %84, %conv69
  %86 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %conv71 = sext i32 %86 to i64
  %add72 = add i64 %sub70, %conv71
  %87 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %88 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %89 = load i8, ptr %plusp.addr, align 1, !tbaa !16
  %90 = load i32, ptr %genestrand.addr, align 4, !tbaa !14
  %call73 = call i32 @Genomebits_count_mismatches_substring(ptr noundef %ref_distal_nmismatches, ptr noundef %78, ptr noundef %79, ptr noundef %80, i64 noundef %add72, i32 noundef %87, i32 noundef 0, i32 noundef %88, i8 noundef zeroext %89, i32 noundef %90)
  %91 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_nmismatches = getelementptr inbounds %struct.Spliceends_T, ptr %91, i32 0, i32 11
  %92 = load ptr, ptr %distal_nmismatches, align 8, !tbaa !20
  %93 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom74 = sext i32 %93 to i64
  %arrayidx75 = getelementptr inbounds i32, ptr %92, i64 %idxprom74
  store i32 %call73, ptr %arrayidx75, align 4, !tbaa !14
  %94 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %95 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_nmismatches76 = getelementptr inbounds %struct.Spliceends_T, ptr %95, i32 0, i32 11
  %96 = load ptr, ptr %distal_nmismatches76, align 8, !tbaa !20
  %97 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom77 = sext i32 %97 to i64
  %arrayidx78 = getelementptr inbounds i32, ptr %96, i64 %idxprom77
  %98 = load i32, ptr %arrayidx78, align 4, !tbaa !14
  %mul79 = mul nsw i32 3, %98
  %sub80 = sub nsw i32 %94, %mul79
  store i32 %sub80, ptr %adj_support, align 4, !tbaa !14
  %99 = load i32, ptr %best_adj_support, align 4, !tbaa !14
  %cmp81 = icmp sgt i32 %sub80, %99
  br i1 %cmp81, label %if.then83, label %if.end84

if.then83:                                        ; preds = %for.body62
  %100 = load i32, ptr %adj_support, align 4, !tbaa !14
  store i32 %100, ptr %best_adj_support, align 4, !tbaa !14
  br label %if.end84

if.end84:                                         ; preds = %if.then83, %for.body62
  br label %for.inc85

for.inc85:                                        ; preds = %if.end84
  %101 = load i32, ptr %i, align 4, !tbaa !14
  %inc86 = add nsw i32 %101, 1
  store i32 %inc86, ptr %i, align 4, !tbaa !14
  br label %for.cond59, !llvm.loop !41

for.end87:                                        ; preds = %for.cond59
  %102 = load i32, ptr %best_adj_support, align 4, !tbaa !14
  %cmp88 = icmp eq i32 %102, 0
  br i1 %cmp88, label %if.then90, label %if.else91

if.then90:                                        ; preds = %for.end87
  store i32 0, ptr %nspliceends, align 4, !tbaa !14
  br label %if.end144

if.else91:                                        ; preds = %for.end87
  store i32 0, ptr %k, align 4, !tbaa !14
  store i32 0, ptr %lefti, align 4, !tbaa !14
  store i32 0, ptr %i, align 4, !tbaa !14
  br label %for.cond92

for.cond92:                                       ; preds = %for.inc141, %if.else91
  %103 = load i32, ptr %i, align 4, !tbaa !14
  %104 = load i32, ptr %nspliceends, align 4, !tbaa !14
  %cmp93 = icmp slt i32 %103, %104
  br i1 %cmp93, label %for.body95, label %for.end143

for.body95:                                       ; preds = %for.cond92
  %105 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimends96 = getelementptr inbounds %struct.Spliceends_T, ptr %105, i32 0, i32 8
  %106 = load ptr, ptr %trimends96, align 8, !tbaa !23
  %107 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom97 = sext i32 %107 to i64
  %arrayidx98 = getelementptr inbounds i32, ptr %106, i64 %idxprom97
  %108 = load i32, ptr %arrayidx98, align 4, !tbaa !14
  store i32 %108, ptr %splice_qpos, align 4, !tbaa !14
  %109 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %110 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_nmismatches99 = getelementptr inbounds %struct.Spliceends_T, ptr %110, i32 0, i32 11
  %111 = load ptr, ptr %distal_nmismatches99, align 8, !tbaa !20
  %112 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom100 = sext i32 %112 to i64
  %arrayidx101 = getelementptr inbounds i32, ptr %111, i64 %idxprom100
  %113 = load i32, ptr %arrayidx101, align 4, !tbaa !14
  %mul102 = mul nsw i32 3, %113
  %sub103 = sub nsw i32 %109, %mul102
  %114 = load i32, ptr %best_adj_support, align 4, !tbaa !14
  %cmp104 = icmp slt i32 %sub103, %114
  br i1 %cmp104, label %if.then106, label %if.else107

if.then106:                                       ; preds = %for.body95
  br label %if.end140

if.else107:                                       ; preds = %for.body95
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else107
  %115 = load i32, ptr %lefti, align 4, !tbaa !14
  %116 = load i32, ptr %nmismatches_left, align 4, !tbaa !14
  %cmp108 = icmp slt i32 %115, %116
  br i1 %cmp108, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %117 = load ptr, ptr %mismatch_positions_left, align 8, !tbaa !5
  %118 = load i32, ptr %lefti, align 4, !tbaa !14
  %idxprom110 = sext i32 %118 to i64
  %arrayidx111 = getelementptr inbounds i32, ptr %117, i64 %idxprom110
  %119 = load i32, ptr %arrayidx111, align 4, !tbaa !14
  %120 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %cmp112 = icmp slt i32 %119, %120
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %121 = phi i1 [ false, %while.cond ], [ %cmp112, %land.rhs ]
  br i1 %121, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %122 = load i32, ptr %lefti, align 4, !tbaa !14
  %inc114 = add nsw i32 %122, 1
  store i32 %inc114, ptr %lefti, align 4, !tbaa !14
  br label %while.cond, !llvm.loop !42

while.end:                                        ; preds = %land.end
  %123 = load i32, ptr %nmismatches_left, align 4, !tbaa !14
  %124 = load i32, ptr %lefti, align 4, !tbaa !14
  %sub115 = sub nsw i32 %123, %124
  %125 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %medial_nmismatches = getelementptr inbounds %struct.Spliceends_T, ptr %125, i32 0, i32 10
  %126 = load ptr, ptr %medial_nmismatches, align 8, !tbaa !21
  %127 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom116 = sext i32 %127 to i64
  %arrayidx117 = getelementptr inbounds i32, ptr %126, i64 %idxprom116
  store i32 %sub115, ptr %arrayidx117, align 4, !tbaa !14
  %128 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %129 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %matchlengths = getelementptr inbounds %struct.Spliceends_T, ptr %129, i32 0, i32 7
  %130 = load ptr, ptr %matchlengths, align 8, !tbaa !24
  %131 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom118 = sext i32 %131 to i64
  %arrayidx119 = getelementptr inbounds i32, ptr %130, i64 %idxprom118
  store i32 %128, ptr %arrayidx119, align 4, !tbaa !14
  %132 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %133 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimends120 = getelementptr inbounds %struct.Spliceends_T, ptr %133, i32 0, i32 8
  %134 = load ptr, ptr %trimends120, align 8, !tbaa !23
  %135 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom121 = sext i32 %135 to i64
  %arrayidx122 = getelementptr inbounds i32, ptr %134, i64 %idxprom121
  store i32 %132, ptr %arrayidx122, align 4, !tbaa !14
  %136 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %partners123 = getelementptr inbounds %struct.Spliceends_T, ptr %136, i32 0, i32 9
  %137 = load ptr, ptr %partners123, align 8, !tbaa !22
  %138 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom124 = sext i32 %138 to i64
  %arrayidx125 = getelementptr inbounds i64, ptr %137, i64 %idxprom124
  %139 = load i64, ptr %arrayidx125, align 8, !tbaa !12
  %140 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %partners126 = getelementptr inbounds %struct.Spliceends_T, ptr %140, i32 0, i32 9
  %141 = load ptr, ptr %partners126, align 8, !tbaa !22
  %142 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom127 = sext i32 %142 to i64
  %arrayidx128 = getelementptr inbounds i64, ptr %141, i64 %idxprom127
  store i64 %139, ptr %arrayidx128, align 8, !tbaa !12
  %143 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_nmismatches129 = getelementptr inbounds %struct.Spliceends_T, ptr %143, i32 0, i32 11
  %144 = load ptr, ptr %distal_nmismatches129, align 8, !tbaa !20
  %145 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom130 = sext i32 %145 to i64
  %arrayidx131 = getelementptr inbounds i32, ptr %144, i64 %idxprom130
  %146 = load i32, ptr %arrayidx131, align 4, !tbaa !14
  %147 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_nmismatches132 = getelementptr inbounds %struct.Spliceends_T, ptr %147, i32 0, i32 11
  %148 = load ptr, ptr %distal_nmismatches132, align 8, !tbaa !20
  %149 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom133 = sext i32 %149 to i64
  %arrayidx134 = getelementptr inbounds i32, ptr %148, i64 %idxprom133
  store i32 %146, ptr %arrayidx134, align 4, !tbaa !14
  %150 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %ambig_probs = getelementptr inbounds %struct.Spliceends_T, ptr %150, i32 0, i32 12
  %151 = load ptr, ptr %ambig_probs, align 8, !tbaa !19
  %152 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom135 = sext i32 %152 to i64
  %arrayidx136 = getelementptr inbounds double, ptr %151, i64 %idxprom135
  store double 1.000000e+00, ptr %arrayidx136, align 8, !tbaa !31
  %153 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_probs = getelementptr inbounds %struct.Spliceends_T, ptr %153, i32 0, i32 13
  %154 = load ptr, ptr %distal_probs, align 8, !tbaa !17
  %155 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom137 = sext i32 %155 to i64
  %arrayidx138 = getelementptr inbounds double, ptr %154, i64 %idxprom137
  store double 1.000000e+00, ptr %arrayidx138, align 8, !tbaa !31
  %156 = load i32, ptr %k, align 4, !tbaa !14
  %inc139 = add nsw i32 %156, 1
  store i32 %inc139, ptr %k, align 4, !tbaa !14
  br label %if.end140

if.end140:                                        ; preds = %while.end, %if.then106
  br label %for.inc141

for.inc141:                                       ; preds = %if.end140
  %157 = load i32, ptr %i, align 4, !tbaa !14
  %inc142 = add nsw i32 %157, 1
  store i32 %inc142, ptr %i, align 4, !tbaa !14
  br label %for.cond92, !llvm.loop !43

for.end143:                                       ; preds = %for.cond92
  %158 = load i32, ptr %k, align 4, !tbaa !14
  store i32 %158, ptr %nspliceends, align 4, !tbaa !14
  br label %if.end144

if.end144:                                        ; preds = %for.end143, %if.then90
  br label %if.end145

if.end145:                                        ; preds = %if.end144, %if.end51
  %159 = load i32, ptr %nspliceends, align 4, !tbaa !14
  call void @llvm.lifetime.end.p0(i64 8, ptr %left) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %adj_support) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %best_adj_support) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %lefti) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %nmismatches_left) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %splice_qpos) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %ref_distal_nmismatches) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %pos5) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %mismatch_positions_left) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %rank) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %high_rank) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %low_rank) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %endpoints) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %nspliceends) #4
  ret i32 %159
}

; Function Attrs: nounwind uwtable
define internal i32 @novel_spliceends_trim5_sense(ptr noundef %max_prob, ptr noundef %partnerp, ptr noundef %this, i64 noundef %end_genomicpos, i64 noundef %start_genomicpos, i64 noundef %middle_genomicpos, ptr noundef %mismatch_positions, i32 noundef %total_nmismatches, i64 noundef %univdiagonal, i32 noundef %querylength, ptr noundef %query_compress, ptr noundef %queryptr, i64 noundef %chroffset, ptr noundef %novel_diagonals_alloc, ptr noundef %localdb_alloc, i32 noundef %streamspace_max_alloc, ptr noundef %streamspace_alloc, ptr noundef %streamptr_alloc, ptr noundef %streamsize_alloc, ptr noundef %mergeinfo, double noundef %medial_splicesite_prob, double noundef %distal_splicesite_prob, i32 noundef %max_nconsecutive, i8 noundef zeroext %plusp, i32 noundef %genestrand, i32 noundef %nmismatches_allowed, i8 noundef zeroext %search_localdb_p, i8 noundef zeroext %innerp, i8 noundef zeroext %salvagep) #1 {
entry:
  %max_prob.addr = alloca ptr, align 8
  %partnerp.addr = alloca ptr, align 8
  %this.addr = alloca ptr, align 8
  %end_genomicpos.addr = alloca i64, align 8
  %start_genomicpos.addr = alloca i64, align 8
  %middle_genomicpos.addr = alloca i64, align 8
  %mismatch_positions.addr = alloca ptr, align 8
  %total_nmismatches.addr = alloca i32, align 4
  %univdiagonal.addr = alloca i64, align 8
  %querylength.addr = alloca i32, align 4
  %query_compress.addr = alloca ptr, align 8
  %queryptr.addr = alloca ptr, align 8
  %chroffset.addr = alloca i64, align 8
  %novel_diagonals_alloc.addr = alloca ptr, align 8
  %localdb_alloc.addr = alloca ptr, align 8
  %streamspace_max_alloc.addr = alloca i32, align 4
  %streamspace_alloc.addr = alloca ptr, align 8
  %streamptr_alloc.addr = alloca ptr, align 8
  %streamsize_alloc.addr = alloca ptr, align 8
  %mergeinfo.addr = alloca ptr, align 8
  %medial_splicesite_prob.addr = alloca double, align 8
  %distal_splicesite_prob.addr = alloca double, align 8
  %max_nconsecutive.addr = alloca i32, align 4
  %plusp.addr = alloca i8, align 1
  %genestrand.addr = alloca i32, align 4
  %nmismatches_allowed.addr = alloca i32, align 4
  %search_localdb_p.addr = alloca i8, align 1
  %innerp.addr = alloca i8, align 1
  %salvagep.addr = alloca i8, align 1
  %nspliceends = alloca i32, align 4
  %k = alloca i32, align 4
  %genomicpos = alloca i64, align 8
  %distal_genomicpos = alloca i64, align 8
  %low_univdiagonal = alloca i64, align 8
  %high_univdiagonal = alloca i64, align 8
  %local_nmismatches = alloca i32, align 4
  %matchlength = alloca i32, align 4
  %donor_prob = alloca double, align 8
  %acceptor_prob = alloca double, align 8
  %querypos = alloca i32, align 4
  %pos5 = alloca i32, align 4
  %splice_qpos = alloca i32, align 4
  %mismatchi = alloca i32, align 4
  %nconsecutive = alloca i32, align 4
  %novel_ndiagonals = alloca i32, align 4
  %i = alloca i32, align 4
  %left = alloca i64, align 8
  store ptr %max_prob, ptr %max_prob.addr, align 8, !tbaa !5
  store ptr %partnerp, ptr %partnerp.addr, align 8, !tbaa !5
  store ptr %this, ptr %this.addr, align 8, !tbaa !5
  store i64 %end_genomicpos, ptr %end_genomicpos.addr, align 8, !tbaa !12
  store i64 %start_genomicpos, ptr %start_genomicpos.addr, align 8, !tbaa !12
  store i64 %middle_genomicpos, ptr %middle_genomicpos.addr, align 8, !tbaa !12
  store ptr %mismatch_positions, ptr %mismatch_positions.addr, align 8, !tbaa !5
  store i32 %total_nmismatches, ptr %total_nmismatches.addr, align 4, !tbaa !14
  store i64 %univdiagonal, ptr %univdiagonal.addr, align 8, !tbaa !12
  store i32 %querylength, ptr %querylength.addr, align 4, !tbaa !14
  store ptr %query_compress, ptr %query_compress.addr, align 8, !tbaa !5
  store ptr %queryptr, ptr %queryptr.addr, align 8, !tbaa !5
  store i64 %chroffset, ptr %chroffset.addr, align 8, !tbaa !12
  store ptr %novel_diagonals_alloc, ptr %novel_diagonals_alloc.addr, align 8, !tbaa !5
  store ptr %localdb_alloc, ptr %localdb_alloc.addr, align 8, !tbaa !5
  store i32 %streamspace_max_alloc, ptr %streamspace_max_alloc.addr, align 4, !tbaa !14
  store ptr %streamspace_alloc, ptr %streamspace_alloc.addr, align 8, !tbaa !5
  store ptr %streamptr_alloc, ptr %streamptr_alloc.addr, align 8, !tbaa !5
  store ptr %streamsize_alloc, ptr %streamsize_alloc.addr, align 8, !tbaa !5
  store ptr %mergeinfo, ptr %mergeinfo.addr, align 8, !tbaa !5
  store double %medial_splicesite_prob, ptr %medial_splicesite_prob.addr, align 8, !tbaa !31
  store double %distal_splicesite_prob, ptr %distal_splicesite_prob.addr, align 8, !tbaa !31
  store i32 %max_nconsecutive, ptr %max_nconsecutive.addr, align 4, !tbaa !14
  store i8 %plusp, ptr %plusp.addr, align 1, !tbaa !16
  store i32 %genestrand, ptr %genestrand.addr, align 4, !tbaa !14
  store i32 %nmismatches_allowed, ptr %nmismatches_allowed.addr, align 4, !tbaa !14
  store i8 %search_localdb_p, ptr %search_localdb_p.addr, align 1, !tbaa !16
  store i8 %innerp, ptr %innerp.addr, align 1, !tbaa !16
  store i8 %salvagep, ptr %salvagep.addr, align 1, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 4, ptr %nspliceends) #4
  store i32 0, ptr %nspliceends, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #4
  store i32 0, ptr %k, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 8, ptr %genomicpos) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %distal_genomicpos) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %low_univdiagonal) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %high_univdiagonal) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %local_nmismatches) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %matchlength) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %donor_prob) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %acceptor_prob) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %querypos) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %pos5) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %splice_qpos) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %mismatchi) #4
  %0 = load i32, ptr %total_nmismatches.addr, align 4, !tbaa !14
  store i32 %0, ptr %mismatchi, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %nconsecutive) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %novel_ndiagonals) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %left) #4
  %1 = load i64, ptr %univdiagonal.addr, align 8, !tbaa !12
  %2 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %conv = sext i32 %2 to i64
  %sub = sub i64 %1, %conv
  store i64 %sub, ptr %left, align 8, !tbaa !12
  %3 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  store double 0.000000e+00, ptr %3, align 8, !tbaa !31
  %4 = load ptr, ptr %partnerp.addr, align 8, !tbaa !5
  store i8 0, ptr %4, align 1, !tbaa !16
  %5 = load i64, ptr %univdiagonal.addr, align 8, !tbaa !12
  %sub1 = sub i64 %5, 9
  store i64 %sub1, ptr %high_univdiagonal, align 8, !tbaa !12
  store i32 0, ptr %pos5, align 4, !tbaa !14
  %6 = load i64, ptr %high_univdiagonal, align 8, !tbaa !12
  %7 = load i64, ptr %chroffset.addr, align 8, !tbaa !12
  %8 = load i32, ptr @shortsplicedist_novelend, align 4, !tbaa !14
  %conv2 = zext i32 %8 to i64
  %add = add i64 %7, %conv2
  %cmp = icmp ult i64 %6, %add
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %9 = load i64, ptr %chroffset.addr, align 8, !tbaa !12
  br label %cond.end

cond.false:                                       ; preds = %entry
  %10 = load i64, ptr %high_univdiagonal, align 8, !tbaa !12
  %11 = load i32, ptr @shortsplicedist_novelend, align 4, !tbaa !14
  %conv4 = zext i32 %11 to i64
  %sub5 = sub i64 %10, %conv4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %9, %cond.true ], [ %sub5, %cond.false ]
  store i64 %cond, ptr %low_univdiagonal, align 8, !tbaa !12
  %12 = load i64, ptr %start_genomicpos.addr, align 8, !tbaa !12
  store i64 %12, ptr %genomicpos, align 8, !tbaa !12
  %13 = load i64, ptr %genomicpos, align 8, !tbaa !12
  %14 = load i64, ptr %left, align 8, !tbaa !12
  %sub6 = sub i64 %13, %14
  %conv7 = trunc i64 %sub6 to i32
  store i32 %conv7, ptr %querypos, align 4, !tbaa !14
  br label %while.cond

while.cond:                                       ; preds = %while.body, %cond.end
  %15 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %sub8 = sub nsw i32 %15, 1
  %cmp9 = icmp sge i32 %sub8, 0
  br i1 %cmp9, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %16 = load ptr, ptr %mismatch_positions.addr, align 8, !tbaa !5
  %17 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %sub11 = sub nsw i32 %17, 1
  %idxprom = sext i32 %sub11 to i64
  %arrayidx = getelementptr inbounds i32, ptr %16, i64 %idxprom
  %18 = load i32, ptr %arrayidx, align 4, !tbaa !14
  %19 = load i32, ptr %querypos, align 4, !tbaa !14
  %cmp12 = icmp slt i32 %18, %19
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %20 = phi i1 [ false, %while.cond ], [ %cmp12, %land.rhs ]
  br i1 %20, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %21 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %dec = add nsw i32 %21, -1
  store i32 %dec, ptr %mismatchi, align 4, !tbaa !14
  br label %while.cond, !llvm.loop !44

while.end:                                        ; preds = %land.end
  %22 = load i8, ptr %plusp.addr, align 1, !tbaa !16
  %tobool = icmp ne i8 %22, 0
  br i1 %tobool, label %if.then, label %if.else329

if.then:                                          ; preds = %while.end
  br label %while.cond14

while.cond14:                                     ; preds = %if.end157, %if.then
  %23 = load i32, ptr %k, align 4, !tbaa !14
  %cmp15 = icmp slt i32 %23, 30
  br i1 %cmp15, label %land.rhs17, label %land.end20

land.rhs17:                                       ; preds = %while.cond14
  %24 = load i64, ptr %genomicpos, align 8, !tbaa !12
  %25 = load i64, ptr %middle_genomicpos.addr, align 8, !tbaa !12
  %cmp18 = icmp ult i64 %24, %25
  br label %land.end20

land.end20:                                       ; preds = %land.rhs17, %while.cond14
  %26 = phi i1 [ false, %while.cond14 ], [ %cmp18, %land.rhs17 ]
  br i1 %26, label %while.body21, label %while.end160

while.body21:                                     ; preds = %land.end20
  %27 = load i64, ptr %genomicpos, align 8, !tbaa !12
  %28 = load i64, ptr %chroffset.addr, align 8, !tbaa !12
  %call = call double @Maxent_hr_acceptor_prob(i64 noundef %27, i64 noundef %28)
  store double %call, ptr %acceptor_prob, align 8, !tbaa !31
  %29 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %30 = load double, ptr %medial_splicesite_prob.addr, align 8, !tbaa !31
  %cmp22 = fcmp oge double %29, %30
  br i1 %cmp22, label %if.then24, label %if.end146

if.then24:                                        ; preds = %while.body21
  %31 = load i64, ptr %genomicpos, align 8, !tbaa !12
  %32 = load i64, ptr %left, align 8, !tbaa !12
  %sub25 = sub i64 %31, %32
  %conv26 = trunc i64 %sub25 to i32
  store i32 %conv26, ptr %splice_qpos, align 4, !tbaa !14
  %33 = load i8, ptr %search_localdb_p.addr, align 1, !tbaa !16
  %conv27 = zext i8 %33 to i32
  %cmp28 = icmp eq i32 %conv27, 0
  br i1 %cmp28, label %if.then30, label %if.else

if.then30:                                        ; preds = %if.then24
  %34 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %35 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimends = getelementptr inbounds %struct.Spliceends_T, ptr %35, i32 0, i32 8
  %36 = load ptr, ptr %trimends, align 8, !tbaa !23
  %37 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom31 = sext i32 %37 to i64
  %arrayidx32 = getelementptr inbounds i32, ptr %36, i64 %idxprom31
  store i32 %34, ptr %arrayidx32, align 4, !tbaa !14
  %38 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %39 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %medial_nmismatches = getelementptr inbounds %struct.Spliceends_T, ptr %39, i32 0, i32 10
  %40 = load ptr, ptr %medial_nmismatches, align 8, !tbaa !21
  %41 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom33 = sext i32 %41 to i64
  %arrayidx34 = getelementptr inbounds i32, ptr %40, i64 %idxprom33
  store i32 %38, ptr %arrayidx34, align 4, !tbaa !14
  %42 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %43 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %ambig_probs = getelementptr inbounds %struct.Spliceends_T, ptr %43, i32 0, i32 12
  %44 = load ptr, ptr %ambig_probs, align 8, !tbaa !19
  %45 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom35 = sext i32 %45 to i64
  %arrayidx36 = getelementptr inbounds double, ptr %44, i64 %idxprom35
  store double %42, ptr %arrayidx36, align 8, !tbaa !31
  %46 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_probs = getelementptr inbounds %struct.Spliceends_T, ptr %46, i32 0, i32 13
  %47 = load ptr, ptr %distal_probs, align 8, !tbaa !17
  %48 = load i32, ptr %k, align 4, !tbaa !14
  %inc = add nsw i32 %48, 1
  store i32 %inc, ptr %k, align 4, !tbaa !14
  %idxprom37 = sext i32 %48 to i64
  %arrayidx38 = getelementptr inbounds double, ptr %47, i64 %idxprom37
  store double 0.000000e+00, ptr %arrayidx38, align 8, !tbaa !31
  %49 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %50 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  %51 = load double, ptr %50, align 8, !tbaa !31
  %cmp39 = fcmp ogt double %49, %51
  br i1 %cmp39, label %if.then41, label %if.end

if.then41:                                        ; preds = %if.then30
  %52 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %53 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  store double %52, ptr %53, align 8, !tbaa !31
  br label %if.end

if.end:                                           ; preds = %if.then41, %if.then30
  br label %if.end145

if.else:                                          ; preds = %if.then24
  %54 = load ptr, ptr %novel_diagonals_alloc.addr, align 8, !tbaa !5
  %55 = load ptr, ptr @localdb, align 8, !tbaa !5
  %56 = load ptr, ptr %localdb_alloc.addr, align 8, !tbaa !5
  %57 = load i32, ptr %streamspace_max_alloc.addr, align 4, !tbaa !14
  %58 = load ptr, ptr %streamspace_alloc.addr, align 8, !tbaa !5
  %59 = load ptr, ptr %streamptr_alloc.addr, align 8, !tbaa !5
  %60 = load ptr, ptr %streamsize_alloc.addr, align 8, !tbaa !5
  %61 = load ptr, ptr %mergeinfo.addr, align 8, !tbaa !5
  %62 = load ptr, ptr %queryptr.addr, align 8, !tbaa !5
  %63 = load i32, ptr %pos5, align 4, !tbaa !14
  %64 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %65 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %66 = load i64, ptr %low_univdiagonal, align 8, !tbaa !12
  %67 = load i64, ptr %high_univdiagonal, align 8, !tbaa !12
  %68 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %69 = load i8, ptr %plusp.addr, align 1, !tbaa !16
  %70 = load i32, ptr %genestrand.addr, align 4, !tbaa !14
  %71 = load ptr, ptr @genomebits, align 8, !tbaa !5
  %72 = load i32, ptr %nmismatches_allowed.addr, align 4, !tbaa !14
  %73 = load i8, ptr %salvagep.addr, align 1, !tbaa !16
  %call42 = call i32 @Localdb_get(ptr noundef %matchlength, ptr noundef %local_nmismatches, ptr noundef %54, ptr noundef %55, ptr noundef %56, i32 noundef %57, ptr noundef %58, ptr noundef %59, ptr noundef %60, ptr noundef %61, ptr noundef %62, i32 noundef %63, i32 noundef %64, i32 noundef %65, i64 noundef %66, i64 noundef %67, ptr noundef %68, i8 noundef zeroext %69, i32 noundef %70, ptr noundef %71, i32 noundef %72, i8 noundef zeroext %73)
  store i32 %call42, ptr %novel_ndiagonals, align 4, !tbaa !14
  %cmp43 = icmp eq i32 %call42, 0
  br i1 %cmp43, label %if.then45, label %if.else69

if.then45:                                        ; preds = %if.else
  %74 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %matchlengths = getelementptr inbounds %struct.Spliceends_T, ptr %74, i32 0, i32 7
  %75 = load ptr, ptr %matchlengths, align 8, !tbaa !24
  %76 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom46 = sext i32 %76 to i64
  %arrayidx47 = getelementptr inbounds i32, ptr %75, i64 %idxprom46
  store i32 0, ptr %arrayidx47, align 4, !tbaa !14
  %77 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %78 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimends48 = getelementptr inbounds %struct.Spliceends_T, ptr %78, i32 0, i32 8
  %79 = load ptr, ptr %trimends48, align 8, !tbaa !23
  %80 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom49 = sext i32 %80 to i64
  %arrayidx50 = getelementptr inbounds i32, ptr %79, i64 %idxprom49
  store i32 %77, ptr %arrayidx50, align 4, !tbaa !14
  %81 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %82 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %medial_nmismatches51 = getelementptr inbounds %struct.Spliceends_T, ptr %82, i32 0, i32 10
  %83 = load ptr, ptr %medial_nmismatches51, align 8, !tbaa !21
  %84 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom52 = sext i32 %84 to i64
  %arrayidx53 = getelementptr inbounds i32, ptr %83, i64 %idxprom52
  store i32 %81, ptr %arrayidx53, align 4, !tbaa !14
  %85 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %partners = getelementptr inbounds %struct.Spliceends_T, ptr %85, i32 0, i32 9
  %86 = load ptr, ptr %partners, align 8, !tbaa !22
  %87 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom54 = sext i32 %87 to i64
  %arrayidx55 = getelementptr inbounds i64, ptr %86, i64 %idxprom54
  store i64 0, ptr %arrayidx55, align 8, !tbaa !12
  %88 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_nmismatches = getelementptr inbounds %struct.Spliceends_T, ptr %88, i32 0, i32 11
  %89 = load ptr, ptr %distal_nmismatches, align 8, !tbaa !20
  %90 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom56 = sext i32 %90 to i64
  %arrayidx57 = getelementptr inbounds i32, ptr %89, i64 %idxprom56
  store i32 -1, ptr %arrayidx57, align 4, !tbaa !14
  %91 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %92 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %ambig_probs58 = getelementptr inbounds %struct.Spliceends_T, ptr %92, i32 0, i32 12
  %93 = load ptr, ptr %ambig_probs58, align 8, !tbaa !19
  %94 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom59 = sext i32 %94 to i64
  %arrayidx60 = getelementptr inbounds double, ptr %93, i64 %idxprom59
  store double %91, ptr %arrayidx60, align 8, !tbaa !31
  %95 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_probs61 = getelementptr inbounds %struct.Spliceends_T, ptr %95, i32 0, i32 13
  %96 = load ptr, ptr %distal_probs61, align 8, !tbaa !17
  %97 = load i32, ptr %k, align 4, !tbaa !14
  %inc62 = add nsw i32 %97, 1
  store i32 %inc62, ptr %k, align 4, !tbaa !14
  %idxprom63 = sext i32 %97 to i64
  %arrayidx64 = getelementptr inbounds double, ptr %96, i64 %idxprom63
  store double 0.000000e+00, ptr %arrayidx64, align 8, !tbaa !31
  %98 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %99 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  %100 = load double, ptr %99, align 8, !tbaa !31
  %cmp65 = fcmp ogt double %98, %100
  br i1 %cmp65, label %if.then67, label %if.end68

if.then67:                                        ; preds = %if.then45
  %101 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %102 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  store double %101, ptr %102, align 8, !tbaa !31
  br label %if.end68

if.end68:                                         ; preds = %if.then67, %if.then45
  br label %if.end144

if.else69:                                        ; preds = %if.else
  %103 = load i32, ptr %k, align 4, !tbaa !14
  %104 = load i32, ptr %novel_ndiagonals, align 4, !tbaa !14
  %add70 = add nsw i32 %103, %104
  %cmp71 = icmp sgt i32 %add70, 30
  br i1 %cmp71, label %if.then73, label %if.else100

if.then73:                                        ; preds = %if.else69
  %105 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %matchlengths74 = getelementptr inbounds %struct.Spliceends_T, ptr %105, i32 0, i32 7
  %106 = load ptr, ptr %matchlengths74, align 8, !tbaa !24
  %107 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom75 = sext i32 %107 to i64
  %arrayidx76 = getelementptr inbounds i32, ptr %106, i64 %idxprom75
  store i32 0, ptr %arrayidx76, align 4, !tbaa !14
  %108 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %109 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimends77 = getelementptr inbounds %struct.Spliceends_T, ptr %109, i32 0, i32 8
  %110 = load ptr, ptr %trimends77, align 8, !tbaa !23
  %111 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom78 = sext i32 %111 to i64
  %arrayidx79 = getelementptr inbounds i32, ptr %110, i64 %idxprom78
  store i32 %108, ptr %arrayidx79, align 4, !tbaa !14
  %112 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %113 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %medial_nmismatches80 = getelementptr inbounds %struct.Spliceends_T, ptr %113, i32 0, i32 10
  %114 = load ptr, ptr %medial_nmismatches80, align 8, !tbaa !21
  %115 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom81 = sext i32 %115 to i64
  %arrayidx82 = getelementptr inbounds i32, ptr %114, i64 %idxprom81
  store i32 %112, ptr %arrayidx82, align 4, !tbaa !14
  %116 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %partners83 = getelementptr inbounds %struct.Spliceends_T, ptr %116, i32 0, i32 9
  %117 = load ptr, ptr %partners83, align 8, !tbaa !22
  %118 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom84 = sext i32 %118 to i64
  %arrayidx85 = getelementptr inbounds i64, ptr %117, i64 %idxprom84
  store i64 0, ptr %arrayidx85, align 8, !tbaa !12
  %119 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_nmismatches86 = getelementptr inbounds %struct.Spliceends_T, ptr %119, i32 0, i32 11
  %120 = load ptr, ptr %distal_nmismatches86, align 8, !tbaa !20
  %121 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom87 = sext i32 %121 to i64
  %arrayidx88 = getelementptr inbounds i32, ptr %120, i64 %idxprom87
  store i32 -1, ptr %arrayidx88, align 4, !tbaa !14
  %122 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %123 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %ambig_probs89 = getelementptr inbounds %struct.Spliceends_T, ptr %123, i32 0, i32 12
  %124 = load ptr, ptr %ambig_probs89, align 8, !tbaa !19
  %125 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom90 = sext i32 %125 to i64
  %arrayidx91 = getelementptr inbounds double, ptr %124, i64 %idxprom90
  store double %122, ptr %arrayidx91, align 8, !tbaa !31
  %126 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_probs92 = getelementptr inbounds %struct.Spliceends_T, ptr %126, i32 0, i32 13
  %127 = load ptr, ptr %distal_probs92, align 8, !tbaa !17
  %128 = load i32, ptr %k, align 4, !tbaa !14
  %inc93 = add nsw i32 %128, 1
  store i32 %inc93, ptr %k, align 4, !tbaa !14
  %idxprom94 = sext i32 %128 to i64
  %arrayidx95 = getelementptr inbounds double, ptr %127, i64 %idxprom94
  store double 0.000000e+00, ptr %arrayidx95, align 8, !tbaa !31
  %129 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %130 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  %131 = load double, ptr %130, align 8, !tbaa !31
  %cmp96 = fcmp ogt double %129, %131
  br i1 %cmp96, label %if.then98, label %if.end99

if.then98:                                        ; preds = %if.then73
  %132 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %133 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  store double %132, ptr %133, align 8, !tbaa !31
  br label %if.end99

if.end99:                                         ; preds = %if.then98, %if.then73
  br label %if.end143

if.else100:                                       ; preds = %if.else69
  store i32 0, ptr %i, align 4, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else100
  %134 = load i32, ptr %i, align 4, !tbaa !14
  %135 = load i32, ptr %novel_ndiagonals, align 4, !tbaa !14
  %cmp101 = icmp slt i32 %134, %135
  br i1 %cmp101, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %136 = load ptr, ptr %novel_diagonals_alloc.addr, align 8, !tbaa !5
  %137 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom103 = sext i32 %137 to i64
  %arrayidx104 = getelementptr inbounds i64, ptr %136, i64 %idxprom103
  %138 = load i64, ptr %arrayidx104, align 8, !tbaa !12
  %139 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %conv105 = sext i32 %139 to i64
  %sub106 = sub i64 %138, %conv105
  %140 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %conv107 = sext i32 %140 to i64
  %add108 = add i64 %sub106, %conv107
  store i64 %add108, ptr %distal_genomicpos, align 8, !tbaa !12
  %141 = load i64, ptr %distal_genomicpos, align 8, !tbaa !12
  %142 = load i64, ptr %chroffset.addr, align 8, !tbaa !12
  %call109 = call double @Maxent_hr_donor_prob(i64 noundef %141, i64 noundef %142)
  store double %call109, ptr %donor_prob, align 8, !tbaa !31
  %143 = load double, ptr %donor_prob, align 8, !tbaa !31
  %144 = load double, ptr %distal_splicesite_prob.addr, align 8, !tbaa !31
  %cmp110 = fcmp oge double %143, %144
  br i1 %cmp110, label %if.then112, label %if.end141

if.then112:                                       ; preds = %for.body
  %145 = load i32, ptr %matchlength, align 4, !tbaa !14
  %146 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %matchlengths113 = getelementptr inbounds %struct.Spliceends_T, ptr %146, i32 0, i32 7
  %147 = load ptr, ptr %matchlengths113, align 8, !tbaa !24
  %148 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom114 = sext i32 %148 to i64
  %arrayidx115 = getelementptr inbounds i32, ptr %147, i64 %idxprom114
  store i32 %145, ptr %arrayidx115, align 4, !tbaa !14
  %149 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %150 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimends116 = getelementptr inbounds %struct.Spliceends_T, ptr %150, i32 0, i32 8
  %151 = load ptr, ptr %trimends116, align 8, !tbaa !23
  %152 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom117 = sext i32 %152 to i64
  %arrayidx118 = getelementptr inbounds i32, ptr %151, i64 %idxprom117
  store i32 %149, ptr %arrayidx118, align 4, !tbaa !14
  %153 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %154 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %medial_nmismatches119 = getelementptr inbounds %struct.Spliceends_T, ptr %154, i32 0, i32 10
  %155 = load ptr, ptr %medial_nmismatches119, align 8, !tbaa !21
  %156 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom120 = sext i32 %156 to i64
  %arrayidx121 = getelementptr inbounds i32, ptr %155, i64 %idxprom120
  store i32 %153, ptr %arrayidx121, align 4, !tbaa !14
  %157 = load i64, ptr %distal_genomicpos, align 8, !tbaa !12
  %158 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %partners122 = getelementptr inbounds %struct.Spliceends_T, ptr %158, i32 0, i32 9
  %159 = load ptr, ptr %partners122, align 8, !tbaa !22
  %160 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom123 = sext i32 %160 to i64
  %arrayidx124 = getelementptr inbounds i64, ptr %159, i64 %idxprom123
  store i64 %157, ptr %arrayidx124, align 8, !tbaa !12
  %161 = load i32, ptr %local_nmismatches, align 4, !tbaa !14
  %162 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_nmismatches125 = getelementptr inbounds %struct.Spliceends_T, ptr %162, i32 0, i32 11
  %163 = load ptr, ptr %distal_nmismatches125, align 8, !tbaa !20
  %164 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom126 = sext i32 %164 to i64
  %arrayidx127 = getelementptr inbounds i32, ptr %163, i64 %idxprom126
  store i32 %161, ptr %arrayidx127, align 4, !tbaa !14
  %165 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %166 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %ambig_probs128 = getelementptr inbounds %struct.Spliceends_T, ptr %166, i32 0, i32 12
  %167 = load ptr, ptr %ambig_probs128, align 8, !tbaa !19
  %168 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom129 = sext i32 %168 to i64
  %arrayidx130 = getelementptr inbounds double, ptr %167, i64 %idxprom129
  store double %165, ptr %arrayidx130, align 8, !tbaa !31
  %169 = load double, ptr %donor_prob, align 8, !tbaa !31
  %170 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_probs131 = getelementptr inbounds %struct.Spliceends_T, ptr %170, i32 0, i32 13
  %171 = load ptr, ptr %distal_probs131, align 8, !tbaa !17
  %172 = load i32, ptr %k, align 4, !tbaa !14
  %inc132 = add nsw i32 %172, 1
  store i32 %inc132, ptr %k, align 4, !tbaa !14
  %idxprom133 = sext i32 %172 to i64
  %arrayidx134 = getelementptr inbounds double, ptr %171, i64 %idxprom133
  store double %169, ptr %arrayidx134, align 8, !tbaa !31
  %173 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %174 = load double, ptr %donor_prob, align 8, !tbaa !31
  %add135 = fadd double %173, %174
  %175 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  %176 = load double, ptr %175, align 8, !tbaa !31
  %cmp136 = fcmp ogt double %add135, %176
  br i1 %cmp136, label %if.then138, label %if.end140

if.then138:                                       ; preds = %if.then112
  %177 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %178 = load double, ptr %donor_prob, align 8, !tbaa !31
  %add139 = fadd double %177, %178
  %179 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  store double %add139, ptr %179, align 8, !tbaa !31
  br label %if.end140

if.end140:                                        ; preds = %if.then138, %if.then112
  %180 = load ptr, ptr %partnerp.addr, align 8, !tbaa !5
  store i8 1, ptr %180, align 1, !tbaa !16
  br label %if.end141

if.end141:                                        ; preds = %if.end140, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end141
  %181 = load i32, ptr %i, align 4, !tbaa !14
  %inc142 = add nsw i32 %181, 1
  store i32 %inc142, ptr %i, align 4, !tbaa !14
  br label %for.cond, !llvm.loop !45

for.end:                                          ; preds = %for.cond
  br label %if.end143

if.end143:                                        ; preds = %for.end, %if.end99
  br label %if.end144

if.end144:                                        ; preds = %if.end143, %if.end68
  br label %if.end145

if.end145:                                        ; preds = %if.end144, %if.end
  br label %if.end146

if.end146:                                        ; preds = %if.end145, %while.body21
  %182 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %sub147 = sub nsw i32 %182, 1
  %cmp148 = icmp sge i32 %sub147, 0
  br i1 %cmp148, label %land.lhs.true, label %if.end157

land.lhs.true:                                    ; preds = %if.end146
  %183 = load ptr, ptr %mismatch_positions.addr, align 8, !tbaa !5
  %184 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %sub150 = sub nsw i32 %184, 1
  %idxprom151 = sext i32 %sub150 to i64
  %arrayidx152 = getelementptr inbounds i32, ptr %183, i64 %idxprom151
  %185 = load i32, ptr %arrayidx152, align 4, !tbaa !14
  %186 = load i32, ptr %querypos, align 4, !tbaa !14
  %cmp153 = icmp eq i32 %185, %186
  br i1 %cmp153, label %if.then155, label %if.end157

if.then155:                                       ; preds = %land.lhs.true
  %187 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %dec156 = add nsw i32 %187, -1
  store i32 %dec156, ptr %mismatchi, align 4, !tbaa !14
  br label %if.end157

if.end157:                                        ; preds = %if.then155, %land.lhs.true, %if.end146
  %188 = load i32, ptr %querypos, align 4, !tbaa !14
  %inc158 = add nsw i32 %188, 1
  store i32 %inc158, ptr %querypos, align 4, !tbaa !14
  %189 = load i64, ptr %genomicpos, align 8, !tbaa !12
  %inc159 = add i64 %189, 1
  store i64 %inc159, ptr %genomicpos, align 8, !tbaa !12
  br label %while.cond14, !llvm.loop !46

while.end160:                                     ; preds = %land.end20
  store i32 0, ptr %nconsecutive, align 4, !tbaa !14
  br label %while.cond161

while.cond161:                                    ; preds = %if.end325, %while.end160
  %190 = load i32, ptr %k, align 4, !tbaa !14
  %cmp162 = icmp slt i32 %190, 30
  br i1 %cmp162, label %land.lhs.true164, label %land.end170

land.lhs.true164:                                 ; preds = %while.cond161
  %191 = load i64, ptr %genomicpos, align 8, !tbaa !12
  %192 = load i64, ptr %end_genomicpos.addr, align 8, !tbaa !12
  %cmp165 = icmp ult i64 %191, %192
  br i1 %cmp165, label %land.rhs167, label %land.end170

land.rhs167:                                      ; preds = %land.lhs.true164
  %193 = load i32, ptr %nconsecutive, align 4, !tbaa !14
  %194 = load i32, ptr %max_nconsecutive.addr, align 4, !tbaa !14
  %cmp168 = icmp slt i32 %193, %194
  br label %land.end170

land.end170:                                      ; preds = %land.rhs167, %land.lhs.true164, %while.cond161
  %195 = phi i1 [ false, %land.lhs.true164 ], [ false, %while.cond161 ], [ %cmp168, %land.rhs167 ]
  br i1 %195, label %while.body171, label %while.end328

while.body171:                                    ; preds = %land.end170
  %196 = load i64, ptr %genomicpos, align 8, !tbaa !12
  %197 = load i64, ptr %chroffset.addr, align 8, !tbaa !12
  %call172 = call double @Maxent_hr_acceptor_prob(i64 noundef %196, i64 noundef %197)
  store double %call172, ptr %acceptor_prob, align 8, !tbaa !31
  %198 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %199 = load double, ptr %medial_splicesite_prob.addr, align 8, !tbaa !31
  %cmp173 = fcmp oge double %198, %199
  br i1 %cmp173, label %if.then175, label %if.end311

if.then175:                                       ; preds = %while.body171
  %200 = load i64, ptr %genomicpos, align 8, !tbaa !12
  %201 = load i64, ptr %left, align 8, !tbaa !12
  %sub176 = sub i64 %200, %201
  %conv177 = trunc i64 %sub176 to i32
  store i32 %conv177, ptr %splice_qpos, align 4, !tbaa !14
  %202 = load i8, ptr %search_localdb_p.addr, align 1, !tbaa !16
  %conv178 = zext i8 %202 to i32
  %cmp179 = icmp eq i32 %conv178, 0
  br i1 %cmp179, label %if.then181, label %if.else199

if.then181:                                       ; preds = %if.then175
  %203 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %204 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimends182 = getelementptr inbounds %struct.Spliceends_T, ptr %204, i32 0, i32 8
  %205 = load ptr, ptr %trimends182, align 8, !tbaa !23
  %206 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom183 = sext i32 %206 to i64
  %arrayidx184 = getelementptr inbounds i32, ptr %205, i64 %idxprom183
  store i32 %203, ptr %arrayidx184, align 4, !tbaa !14
  %207 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %208 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %medial_nmismatches185 = getelementptr inbounds %struct.Spliceends_T, ptr %208, i32 0, i32 10
  %209 = load ptr, ptr %medial_nmismatches185, align 8, !tbaa !21
  %210 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom186 = sext i32 %210 to i64
  %arrayidx187 = getelementptr inbounds i32, ptr %209, i64 %idxprom186
  store i32 %207, ptr %arrayidx187, align 4, !tbaa !14
  %211 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %212 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %ambig_probs188 = getelementptr inbounds %struct.Spliceends_T, ptr %212, i32 0, i32 12
  %213 = load ptr, ptr %ambig_probs188, align 8, !tbaa !19
  %214 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom189 = sext i32 %214 to i64
  %arrayidx190 = getelementptr inbounds double, ptr %213, i64 %idxprom189
  store double %211, ptr %arrayidx190, align 8, !tbaa !31
  %215 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_probs191 = getelementptr inbounds %struct.Spliceends_T, ptr %215, i32 0, i32 13
  %216 = load ptr, ptr %distal_probs191, align 8, !tbaa !17
  %217 = load i32, ptr %k, align 4, !tbaa !14
  %inc192 = add nsw i32 %217, 1
  store i32 %inc192, ptr %k, align 4, !tbaa !14
  %idxprom193 = sext i32 %217 to i64
  %arrayidx194 = getelementptr inbounds double, ptr %216, i64 %idxprom193
  store double 0.000000e+00, ptr %arrayidx194, align 8, !tbaa !31
  %218 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %219 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  %220 = load double, ptr %219, align 8, !tbaa !31
  %cmp195 = fcmp ogt double %218, %220
  br i1 %cmp195, label %if.then197, label %if.end198

if.then197:                                       ; preds = %if.then181
  %221 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %222 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  store double %221, ptr %222, align 8, !tbaa !31
  br label %if.end198

if.end198:                                        ; preds = %if.then197, %if.then181
  br label %if.end310

if.else199:                                       ; preds = %if.then175
  %223 = load ptr, ptr %novel_diagonals_alloc.addr, align 8, !tbaa !5
  %224 = load ptr, ptr @localdb, align 8, !tbaa !5
  %225 = load ptr, ptr %localdb_alloc.addr, align 8, !tbaa !5
  %226 = load i32, ptr %streamspace_max_alloc.addr, align 4, !tbaa !14
  %227 = load ptr, ptr %streamspace_alloc.addr, align 8, !tbaa !5
  %228 = load ptr, ptr %streamptr_alloc.addr, align 8, !tbaa !5
  %229 = load ptr, ptr %streamsize_alloc.addr, align 8, !tbaa !5
  %230 = load ptr, ptr %mergeinfo.addr, align 8, !tbaa !5
  %231 = load ptr, ptr %queryptr.addr, align 8, !tbaa !5
  %232 = load i32, ptr %pos5, align 4, !tbaa !14
  %233 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %234 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %235 = load i64, ptr %low_univdiagonal, align 8, !tbaa !12
  %236 = load i64, ptr %high_univdiagonal, align 8, !tbaa !12
  %237 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %238 = load i8, ptr %plusp.addr, align 1, !tbaa !16
  %239 = load i32, ptr %genestrand.addr, align 4, !tbaa !14
  %240 = load ptr, ptr @genomebits, align 8, !tbaa !5
  %241 = load i32, ptr %nmismatches_allowed.addr, align 4, !tbaa !14
  %242 = load i8, ptr %salvagep.addr, align 1, !tbaa !16
  %call200 = call i32 @Localdb_get(ptr noundef %matchlength, ptr noundef %local_nmismatches, ptr noundef %223, ptr noundef %224, ptr noundef %225, i32 noundef %226, ptr noundef %227, ptr noundef %228, ptr noundef %229, ptr noundef %230, ptr noundef %231, i32 noundef %232, i32 noundef %233, i32 noundef %234, i64 noundef %235, i64 noundef %236, ptr noundef %237, i8 noundef zeroext %238, i32 noundef %239, ptr noundef %240, i32 noundef %241, i8 noundef zeroext %242)
  store i32 %call200, ptr %novel_ndiagonals, align 4, !tbaa !14
  %cmp201 = icmp eq i32 %call200, 0
  br i1 %cmp201, label %if.then203, label %if.else230

if.then203:                                       ; preds = %if.else199
  %243 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %matchlengths204 = getelementptr inbounds %struct.Spliceends_T, ptr %243, i32 0, i32 7
  %244 = load ptr, ptr %matchlengths204, align 8, !tbaa !24
  %245 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom205 = sext i32 %245 to i64
  %arrayidx206 = getelementptr inbounds i32, ptr %244, i64 %idxprom205
  store i32 0, ptr %arrayidx206, align 4, !tbaa !14
  %246 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %247 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimends207 = getelementptr inbounds %struct.Spliceends_T, ptr %247, i32 0, i32 8
  %248 = load ptr, ptr %trimends207, align 8, !tbaa !23
  %249 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom208 = sext i32 %249 to i64
  %arrayidx209 = getelementptr inbounds i32, ptr %248, i64 %idxprom208
  store i32 %246, ptr %arrayidx209, align 4, !tbaa !14
  %250 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %251 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %medial_nmismatches210 = getelementptr inbounds %struct.Spliceends_T, ptr %251, i32 0, i32 10
  %252 = load ptr, ptr %medial_nmismatches210, align 8, !tbaa !21
  %253 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom211 = sext i32 %253 to i64
  %arrayidx212 = getelementptr inbounds i32, ptr %252, i64 %idxprom211
  store i32 %250, ptr %arrayidx212, align 4, !tbaa !14
  %254 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %partners213 = getelementptr inbounds %struct.Spliceends_T, ptr %254, i32 0, i32 9
  %255 = load ptr, ptr %partners213, align 8, !tbaa !22
  %256 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom214 = sext i32 %256 to i64
  %arrayidx215 = getelementptr inbounds i64, ptr %255, i64 %idxprom214
  store i64 0, ptr %arrayidx215, align 8, !tbaa !12
  %257 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_nmismatches216 = getelementptr inbounds %struct.Spliceends_T, ptr %257, i32 0, i32 11
  %258 = load ptr, ptr %distal_nmismatches216, align 8, !tbaa !20
  %259 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom217 = sext i32 %259 to i64
  %arrayidx218 = getelementptr inbounds i32, ptr %258, i64 %idxprom217
  store i32 -1, ptr %arrayidx218, align 4, !tbaa !14
  %260 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %261 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %ambig_probs219 = getelementptr inbounds %struct.Spliceends_T, ptr %261, i32 0, i32 12
  %262 = load ptr, ptr %ambig_probs219, align 8, !tbaa !19
  %263 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom220 = sext i32 %263 to i64
  %arrayidx221 = getelementptr inbounds double, ptr %262, i64 %idxprom220
  store double %260, ptr %arrayidx221, align 8, !tbaa !31
  %264 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_probs222 = getelementptr inbounds %struct.Spliceends_T, ptr %264, i32 0, i32 13
  %265 = load ptr, ptr %distal_probs222, align 8, !tbaa !17
  %266 = load i32, ptr %k, align 4, !tbaa !14
  %inc223 = add nsw i32 %266, 1
  store i32 %inc223, ptr %k, align 4, !tbaa !14
  %idxprom224 = sext i32 %266 to i64
  %arrayidx225 = getelementptr inbounds double, ptr %265, i64 %idxprom224
  store double 0.000000e+00, ptr %arrayidx225, align 8, !tbaa !31
  %267 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %268 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  %269 = load double, ptr %268, align 8, !tbaa !31
  %cmp226 = fcmp ogt double %267, %269
  br i1 %cmp226, label %if.then228, label %if.end229

if.then228:                                       ; preds = %if.then203
  %270 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %271 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  store double %270, ptr %271, align 8, !tbaa !31
  br label %if.end229

if.end229:                                        ; preds = %if.then228, %if.then203
  br label %if.end309

if.else230:                                       ; preds = %if.else199
  %272 = load i32, ptr %k, align 4, !tbaa !14
  %273 = load i32, ptr %novel_ndiagonals, align 4, !tbaa !14
  %add231 = add nsw i32 %272, %273
  %cmp232 = icmp sgt i32 %add231, 30
  br i1 %cmp232, label %if.then234, label %if.else261

if.then234:                                       ; preds = %if.else230
  %274 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %matchlengths235 = getelementptr inbounds %struct.Spliceends_T, ptr %274, i32 0, i32 7
  %275 = load ptr, ptr %matchlengths235, align 8, !tbaa !24
  %276 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom236 = sext i32 %276 to i64
  %arrayidx237 = getelementptr inbounds i32, ptr %275, i64 %idxprom236
  store i32 0, ptr %arrayidx237, align 4, !tbaa !14
  %277 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %278 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimends238 = getelementptr inbounds %struct.Spliceends_T, ptr %278, i32 0, i32 8
  %279 = load ptr, ptr %trimends238, align 8, !tbaa !23
  %280 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom239 = sext i32 %280 to i64
  %arrayidx240 = getelementptr inbounds i32, ptr %279, i64 %idxprom239
  store i32 %277, ptr %arrayidx240, align 4, !tbaa !14
  %281 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %282 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %medial_nmismatches241 = getelementptr inbounds %struct.Spliceends_T, ptr %282, i32 0, i32 10
  %283 = load ptr, ptr %medial_nmismatches241, align 8, !tbaa !21
  %284 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom242 = sext i32 %284 to i64
  %arrayidx243 = getelementptr inbounds i32, ptr %283, i64 %idxprom242
  store i32 %281, ptr %arrayidx243, align 4, !tbaa !14
  %285 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %partners244 = getelementptr inbounds %struct.Spliceends_T, ptr %285, i32 0, i32 9
  %286 = load ptr, ptr %partners244, align 8, !tbaa !22
  %287 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom245 = sext i32 %287 to i64
  %arrayidx246 = getelementptr inbounds i64, ptr %286, i64 %idxprom245
  store i64 0, ptr %arrayidx246, align 8, !tbaa !12
  %288 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_nmismatches247 = getelementptr inbounds %struct.Spliceends_T, ptr %288, i32 0, i32 11
  %289 = load ptr, ptr %distal_nmismatches247, align 8, !tbaa !20
  %290 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom248 = sext i32 %290 to i64
  %arrayidx249 = getelementptr inbounds i32, ptr %289, i64 %idxprom248
  store i32 -1, ptr %arrayidx249, align 4, !tbaa !14
  %291 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %292 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %ambig_probs250 = getelementptr inbounds %struct.Spliceends_T, ptr %292, i32 0, i32 12
  %293 = load ptr, ptr %ambig_probs250, align 8, !tbaa !19
  %294 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom251 = sext i32 %294 to i64
  %arrayidx252 = getelementptr inbounds double, ptr %293, i64 %idxprom251
  store double %291, ptr %arrayidx252, align 8, !tbaa !31
  %295 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_probs253 = getelementptr inbounds %struct.Spliceends_T, ptr %295, i32 0, i32 13
  %296 = load ptr, ptr %distal_probs253, align 8, !tbaa !17
  %297 = load i32, ptr %k, align 4, !tbaa !14
  %inc254 = add nsw i32 %297, 1
  store i32 %inc254, ptr %k, align 4, !tbaa !14
  %idxprom255 = sext i32 %297 to i64
  %arrayidx256 = getelementptr inbounds double, ptr %296, i64 %idxprom255
  store double 0.000000e+00, ptr %arrayidx256, align 8, !tbaa !31
  %298 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %299 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  %300 = load double, ptr %299, align 8, !tbaa !31
  %cmp257 = fcmp ogt double %298, %300
  br i1 %cmp257, label %if.then259, label %if.end260

if.then259:                                       ; preds = %if.then234
  %301 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %302 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  store double %301, ptr %302, align 8, !tbaa !31
  br label %if.end260

if.end260:                                        ; preds = %if.then259, %if.then234
  br label %if.end308

if.else261:                                       ; preds = %if.else230
  store i32 0, ptr %i, align 4, !tbaa !14
  br label %for.cond262

for.cond262:                                      ; preds = %for.inc305, %if.else261
  %303 = load i32, ptr %i, align 4, !tbaa !14
  %304 = load i32, ptr %novel_ndiagonals, align 4, !tbaa !14
  %cmp263 = icmp slt i32 %303, %304
  br i1 %cmp263, label %for.body265, label %for.end307

for.body265:                                      ; preds = %for.cond262
  %305 = load ptr, ptr %novel_diagonals_alloc.addr, align 8, !tbaa !5
  %306 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom266 = sext i32 %306 to i64
  %arrayidx267 = getelementptr inbounds i64, ptr %305, i64 %idxprom266
  %307 = load i64, ptr %arrayidx267, align 8, !tbaa !12
  %308 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %conv268 = sext i32 %308 to i64
  %sub269 = sub i64 %307, %conv268
  %309 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %conv270 = sext i32 %309 to i64
  %add271 = add i64 %sub269, %conv270
  store i64 %add271, ptr %distal_genomicpos, align 8, !tbaa !12
  %310 = load i64, ptr %distal_genomicpos, align 8, !tbaa !12
  %311 = load i64, ptr %chroffset.addr, align 8, !tbaa !12
  %call272 = call double @Maxent_hr_donor_prob(i64 noundef %310, i64 noundef %311)
  store double %call272, ptr %donor_prob, align 8, !tbaa !31
  %312 = load double, ptr %donor_prob, align 8, !tbaa !31
  %313 = load double, ptr %distal_splicesite_prob.addr, align 8, !tbaa !31
  %cmp273 = fcmp oge double %312, %313
  br i1 %cmp273, label %if.then275, label %if.end304

if.then275:                                       ; preds = %for.body265
  %314 = load i32, ptr %matchlength, align 4, !tbaa !14
  %315 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %matchlengths276 = getelementptr inbounds %struct.Spliceends_T, ptr %315, i32 0, i32 7
  %316 = load ptr, ptr %matchlengths276, align 8, !tbaa !24
  %317 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom277 = sext i32 %317 to i64
  %arrayidx278 = getelementptr inbounds i32, ptr %316, i64 %idxprom277
  store i32 %314, ptr %arrayidx278, align 4, !tbaa !14
  %318 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %319 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimends279 = getelementptr inbounds %struct.Spliceends_T, ptr %319, i32 0, i32 8
  %320 = load ptr, ptr %trimends279, align 8, !tbaa !23
  %321 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom280 = sext i32 %321 to i64
  %arrayidx281 = getelementptr inbounds i32, ptr %320, i64 %idxprom280
  store i32 %318, ptr %arrayidx281, align 4, !tbaa !14
  %322 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %323 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %medial_nmismatches282 = getelementptr inbounds %struct.Spliceends_T, ptr %323, i32 0, i32 10
  %324 = load ptr, ptr %medial_nmismatches282, align 8, !tbaa !21
  %325 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom283 = sext i32 %325 to i64
  %arrayidx284 = getelementptr inbounds i32, ptr %324, i64 %idxprom283
  store i32 %322, ptr %arrayidx284, align 4, !tbaa !14
  %326 = load i64, ptr %distal_genomicpos, align 8, !tbaa !12
  %327 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %partners285 = getelementptr inbounds %struct.Spliceends_T, ptr %327, i32 0, i32 9
  %328 = load ptr, ptr %partners285, align 8, !tbaa !22
  %329 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom286 = sext i32 %329 to i64
  %arrayidx287 = getelementptr inbounds i64, ptr %328, i64 %idxprom286
  store i64 %326, ptr %arrayidx287, align 8, !tbaa !12
  %330 = load i32, ptr %local_nmismatches, align 4, !tbaa !14
  %331 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_nmismatches288 = getelementptr inbounds %struct.Spliceends_T, ptr %331, i32 0, i32 11
  %332 = load ptr, ptr %distal_nmismatches288, align 8, !tbaa !20
  %333 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom289 = sext i32 %333 to i64
  %arrayidx290 = getelementptr inbounds i32, ptr %332, i64 %idxprom289
  store i32 %330, ptr %arrayidx290, align 4, !tbaa !14
  %334 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %335 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %ambig_probs291 = getelementptr inbounds %struct.Spliceends_T, ptr %335, i32 0, i32 12
  %336 = load ptr, ptr %ambig_probs291, align 8, !tbaa !19
  %337 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom292 = sext i32 %337 to i64
  %arrayidx293 = getelementptr inbounds double, ptr %336, i64 %idxprom292
  store double %334, ptr %arrayidx293, align 8, !tbaa !31
  %338 = load double, ptr %donor_prob, align 8, !tbaa !31
  %339 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_probs294 = getelementptr inbounds %struct.Spliceends_T, ptr %339, i32 0, i32 13
  %340 = load ptr, ptr %distal_probs294, align 8, !tbaa !17
  %341 = load i32, ptr %k, align 4, !tbaa !14
  %inc295 = add nsw i32 %341, 1
  store i32 %inc295, ptr %k, align 4, !tbaa !14
  %idxprom296 = sext i32 %341 to i64
  %arrayidx297 = getelementptr inbounds double, ptr %340, i64 %idxprom296
  store double %338, ptr %arrayidx297, align 8, !tbaa !31
  %342 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %343 = load double, ptr %donor_prob, align 8, !tbaa !31
  %add298 = fadd double %342, %343
  %344 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  %345 = load double, ptr %344, align 8, !tbaa !31
  %cmp299 = fcmp ogt double %add298, %345
  br i1 %cmp299, label %if.then301, label %if.end303

if.then301:                                       ; preds = %if.then275
  %346 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %347 = load double, ptr %donor_prob, align 8, !tbaa !31
  %add302 = fadd double %346, %347
  %348 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  store double %add302, ptr %348, align 8, !tbaa !31
  br label %if.end303

if.end303:                                        ; preds = %if.then301, %if.then275
  %349 = load ptr, ptr %partnerp.addr, align 8, !tbaa !5
  store i8 1, ptr %349, align 1, !tbaa !16
  br label %if.end304

if.end304:                                        ; preds = %if.end303, %for.body265
  br label %for.inc305

for.inc305:                                       ; preds = %if.end304
  %350 = load i32, ptr %i, align 4, !tbaa !14
  %inc306 = add nsw i32 %350, 1
  store i32 %inc306, ptr %i, align 4, !tbaa !14
  br label %for.cond262, !llvm.loop !47

for.end307:                                       ; preds = %for.cond262
  br label %if.end308

if.end308:                                        ; preds = %for.end307, %if.end260
  br label %if.end309

if.end309:                                        ; preds = %if.end308, %if.end229
  br label %if.end310

if.end310:                                        ; preds = %if.end309, %if.end198
  br label %if.end311

if.end311:                                        ; preds = %if.end310, %while.body171
  %351 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %sub312 = sub nsw i32 %351, 1
  %cmp313 = icmp sge i32 %sub312, 0
  br i1 %cmp313, label %land.lhs.true315, label %if.else323

land.lhs.true315:                                 ; preds = %if.end311
  %352 = load ptr, ptr %mismatch_positions.addr, align 8, !tbaa !5
  %353 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %sub316 = sub nsw i32 %353, 1
  %idxprom317 = sext i32 %sub316 to i64
  %arrayidx318 = getelementptr inbounds i32, ptr %352, i64 %idxprom317
  %354 = load i32, ptr %arrayidx318, align 4, !tbaa !14
  %355 = load i32, ptr %querypos, align 4, !tbaa !14
  %cmp319 = icmp eq i32 %354, %355
  br i1 %cmp319, label %if.then321, label %if.else323

if.then321:                                       ; preds = %land.lhs.true315
  store i32 0, ptr %nconsecutive, align 4, !tbaa !14
  %356 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %dec322 = add nsw i32 %356, -1
  store i32 %dec322, ptr %mismatchi, align 4, !tbaa !14
  br label %if.end325

if.else323:                                       ; preds = %land.lhs.true315, %if.end311
  %357 = load i32, ptr %nconsecutive, align 4, !tbaa !14
  %inc324 = add nsw i32 %357, 1
  store i32 %inc324, ptr %nconsecutive, align 4, !tbaa !14
  br label %if.end325

if.end325:                                        ; preds = %if.else323, %if.then321
  %358 = load i32, ptr %querypos, align 4, !tbaa !14
  %inc326 = add nsw i32 %358, 1
  store i32 %inc326, ptr %querypos, align 4, !tbaa !14
  %359 = load i64, ptr %genomicpos, align 8, !tbaa !12
  %inc327 = add i64 %359, 1
  store i64 %inc327, ptr %genomicpos, align 8, !tbaa !12
  br label %while.cond161, !llvm.loop !48

while.end328:                                     ; preds = %land.end170
  br label %if.end661

if.else329:                                       ; preds = %while.end
  br label %while.cond330

while.cond330:                                    ; preds = %if.end489, %if.else329
  %360 = load i32, ptr %k, align 4, !tbaa !14
  %cmp331 = icmp slt i32 %360, 30
  br i1 %cmp331, label %land.rhs333, label %land.end336

land.rhs333:                                      ; preds = %while.cond330
  %361 = load i64, ptr %genomicpos, align 8, !tbaa !12
  %362 = load i64, ptr %middle_genomicpos.addr, align 8, !tbaa !12
  %cmp334 = icmp ult i64 %361, %362
  br label %land.end336

land.end336:                                      ; preds = %land.rhs333, %while.cond330
  %363 = phi i1 [ false, %while.cond330 ], [ %cmp334, %land.rhs333 ]
  br i1 %363, label %while.body337, label %while.end492

while.body337:                                    ; preds = %land.end336
  %364 = load i64, ptr %genomicpos, align 8, !tbaa !12
  %365 = load i64, ptr %chroffset.addr, align 8, !tbaa !12
  %call338 = call double @Maxent_hr_antidonor_prob(i64 noundef %364, i64 noundef %365)
  store double %call338, ptr %donor_prob, align 8, !tbaa !31
  %366 = load double, ptr %donor_prob, align 8, !tbaa !31
  %367 = load double, ptr %medial_splicesite_prob.addr, align 8, !tbaa !31
  %cmp339 = fcmp oge double %366, %367
  br i1 %cmp339, label %if.then341, label %if.end477

if.then341:                                       ; preds = %while.body337
  %368 = load i64, ptr %genomicpos, align 8, !tbaa !12
  %369 = load i64, ptr %left, align 8, !tbaa !12
  %sub342 = sub i64 %368, %369
  %conv343 = trunc i64 %sub342 to i32
  store i32 %conv343, ptr %splice_qpos, align 4, !tbaa !14
  %370 = load i8, ptr %search_localdb_p.addr, align 1, !tbaa !16
  %conv344 = zext i8 %370 to i32
  %cmp345 = icmp eq i32 %conv344, 0
  br i1 %cmp345, label %if.then347, label %if.else365

if.then347:                                       ; preds = %if.then341
  %371 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %372 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimends348 = getelementptr inbounds %struct.Spliceends_T, ptr %372, i32 0, i32 8
  %373 = load ptr, ptr %trimends348, align 8, !tbaa !23
  %374 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom349 = sext i32 %374 to i64
  %arrayidx350 = getelementptr inbounds i32, ptr %373, i64 %idxprom349
  store i32 %371, ptr %arrayidx350, align 4, !tbaa !14
  %375 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %376 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %medial_nmismatches351 = getelementptr inbounds %struct.Spliceends_T, ptr %376, i32 0, i32 10
  %377 = load ptr, ptr %medial_nmismatches351, align 8, !tbaa !21
  %378 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom352 = sext i32 %378 to i64
  %arrayidx353 = getelementptr inbounds i32, ptr %377, i64 %idxprom352
  store i32 %375, ptr %arrayidx353, align 4, !tbaa !14
  %379 = load double, ptr %donor_prob, align 8, !tbaa !31
  %380 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %ambig_probs354 = getelementptr inbounds %struct.Spliceends_T, ptr %380, i32 0, i32 12
  %381 = load ptr, ptr %ambig_probs354, align 8, !tbaa !19
  %382 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom355 = sext i32 %382 to i64
  %arrayidx356 = getelementptr inbounds double, ptr %381, i64 %idxprom355
  store double %379, ptr %arrayidx356, align 8, !tbaa !31
  %383 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_probs357 = getelementptr inbounds %struct.Spliceends_T, ptr %383, i32 0, i32 13
  %384 = load ptr, ptr %distal_probs357, align 8, !tbaa !17
  %385 = load i32, ptr %k, align 4, !tbaa !14
  %inc358 = add nsw i32 %385, 1
  store i32 %inc358, ptr %k, align 4, !tbaa !14
  %idxprom359 = sext i32 %385 to i64
  %arrayidx360 = getelementptr inbounds double, ptr %384, i64 %idxprom359
  store double 0.000000e+00, ptr %arrayidx360, align 8, !tbaa !31
  %386 = load double, ptr %donor_prob, align 8, !tbaa !31
  %387 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  %388 = load double, ptr %387, align 8, !tbaa !31
  %cmp361 = fcmp ogt double %386, %388
  br i1 %cmp361, label %if.then363, label %if.end364

if.then363:                                       ; preds = %if.then347
  %389 = load double, ptr %donor_prob, align 8, !tbaa !31
  %390 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  store double %389, ptr %390, align 8, !tbaa !31
  br label %if.end364

if.end364:                                        ; preds = %if.then363, %if.then347
  br label %if.end476

if.else365:                                       ; preds = %if.then341
  %391 = load ptr, ptr %novel_diagonals_alloc.addr, align 8, !tbaa !5
  %392 = load ptr, ptr @localdb, align 8, !tbaa !5
  %393 = load ptr, ptr %localdb_alloc.addr, align 8, !tbaa !5
  %394 = load i32, ptr %streamspace_max_alloc.addr, align 4, !tbaa !14
  %395 = load ptr, ptr %streamspace_alloc.addr, align 8, !tbaa !5
  %396 = load ptr, ptr %streamptr_alloc.addr, align 8, !tbaa !5
  %397 = load ptr, ptr %streamsize_alloc.addr, align 8, !tbaa !5
  %398 = load ptr, ptr %mergeinfo.addr, align 8, !tbaa !5
  %399 = load ptr, ptr %queryptr.addr, align 8, !tbaa !5
  %400 = load i32, ptr %pos5, align 4, !tbaa !14
  %401 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %402 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %403 = load i64, ptr %low_univdiagonal, align 8, !tbaa !12
  %404 = load i64, ptr %high_univdiagonal, align 8, !tbaa !12
  %405 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %406 = load i8, ptr %plusp.addr, align 1, !tbaa !16
  %407 = load i32, ptr %genestrand.addr, align 4, !tbaa !14
  %408 = load ptr, ptr @genomebits, align 8, !tbaa !5
  %409 = load i32, ptr %nmismatches_allowed.addr, align 4, !tbaa !14
  %410 = load i8, ptr %salvagep.addr, align 1, !tbaa !16
  %call366 = call i32 @Localdb_get(ptr noundef %matchlength, ptr noundef %local_nmismatches, ptr noundef %391, ptr noundef %392, ptr noundef %393, i32 noundef %394, ptr noundef %395, ptr noundef %396, ptr noundef %397, ptr noundef %398, ptr noundef %399, i32 noundef %400, i32 noundef %401, i32 noundef %402, i64 noundef %403, i64 noundef %404, ptr noundef %405, i8 noundef zeroext %406, i32 noundef %407, ptr noundef %408, i32 noundef %409, i8 noundef zeroext %410)
  store i32 %call366, ptr %novel_ndiagonals, align 4, !tbaa !14
  %cmp367 = icmp eq i32 %call366, 0
  br i1 %cmp367, label %if.then369, label %if.else396

if.then369:                                       ; preds = %if.else365
  %411 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %matchlengths370 = getelementptr inbounds %struct.Spliceends_T, ptr %411, i32 0, i32 7
  %412 = load ptr, ptr %matchlengths370, align 8, !tbaa !24
  %413 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom371 = sext i32 %413 to i64
  %arrayidx372 = getelementptr inbounds i32, ptr %412, i64 %idxprom371
  store i32 0, ptr %arrayidx372, align 4, !tbaa !14
  %414 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %415 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimends373 = getelementptr inbounds %struct.Spliceends_T, ptr %415, i32 0, i32 8
  %416 = load ptr, ptr %trimends373, align 8, !tbaa !23
  %417 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom374 = sext i32 %417 to i64
  %arrayidx375 = getelementptr inbounds i32, ptr %416, i64 %idxprom374
  store i32 %414, ptr %arrayidx375, align 4, !tbaa !14
  %418 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %419 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %medial_nmismatches376 = getelementptr inbounds %struct.Spliceends_T, ptr %419, i32 0, i32 10
  %420 = load ptr, ptr %medial_nmismatches376, align 8, !tbaa !21
  %421 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom377 = sext i32 %421 to i64
  %arrayidx378 = getelementptr inbounds i32, ptr %420, i64 %idxprom377
  store i32 %418, ptr %arrayidx378, align 4, !tbaa !14
  %422 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %partners379 = getelementptr inbounds %struct.Spliceends_T, ptr %422, i32 0, i32 9
  %423 = load ptr, ptr %partners379, align 8, !tbaa !22
  %424 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom380 = sext i32 %424 to i64
  %arrayidx381 = getelementptr inbounds i64, ptr %423, i64 %idxprom380
  store i64 0, ptr %arrayidx381, align 8, !tbaa !12
  %425 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_nmismatches382 = getelementptr inbounds %struct.Spliceends_T, ptr %425, i32 0, i32 11
  %426 = load ptr, ptr %distal_nmismatches382, align 8, !tbaa !20
  %427 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom383 = sext i32 %427 to i64
  %arrayidx384 = getelementptr inbounds i32, ptr %426, i64 %idxprom383
  store i32 -1, ptr %arrayidx384, align 4, !tbaa !14
  %428 = load double, ptr %donor_prob, align 8, !tbaa !31
  %429 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %ambig_probs385 = getelementptr inbounds %struct.Spliceends_T, ptr %429, i32 0, i32 12
  %430 = load ptr, ptr %ambig_probs385, align 8, !tbaa !19
  %431 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom386 = sext i32 %431 to i64
  %arrayidx387 = getelementptr inbounds double, ptr %430, i64 %idxprom386
  store double %428, ptr %arrayidx387, align 8, !tbaa !31
  %432 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_probs388 = getelementptr inbounds %struct.Spliceends_T, ptr %432, i32 0, i32 13
  %433 = load ptr, ptr %distal_probs388, align 8, !tbaa !17
  %434 = load i32, ptr %k, align 4, !tbaa !14
  %inc389 = add nsw i32 %434, 1
  store i32 %inc389, ptr %k, align 4, !tbaa !14
  %idxprom390 = sext i32 %434 to i64
  %arrayidx391 = getelementptr inbounds double, ptr %433, i64 %idxprom390
  store double 0.000000e+00, ptr %arrayidx391, align 8, !tbaa !31
  %435 = load double, ptr %donor_prob, align 8, !tbaa !31
  %436 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  %437 = load double, ptr %436, align 8, !tbaa !31
  %cmp392 = fcmp ogt double %435, %437
  br i1 %cmp392, label %if.then394, label %if.end395

if.then394:                                       ; preds = %if.then369
  %438 = load double, ptr %donor_prob, align 8, !tbaa !31
  %439 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  store double %438, ptr %439, align 8, !tbaa !31
  br label %if.end395

if.end395:                                        ; preds = %if.then394, %if.then369
  br label %if.end475

if.else396:                                       ; preds = %if.else365
  %440 = load i32, ptr %k, align 4, !tbaa !14
  %441 = load i32, ptr %novel_ndiagonals, align 4, !tbaa !14
  %add397 = add nsw i32 %440, %441
  %cmp398 = icmp sgt i32 %add397, 30
  br i1 %cmp398, label %if.then400, label %if.else427

if.then400:                                       ; preds = %if.else396
  %442 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %matchlengths401 = getelementptr inbounds %struct.Spliceends_T, ptr %442, i32 0, i32 7
  %443 = load ptr, ptr %matchlengths401, align 8, !tbaa !24
  %444 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom402 = sext i32 %444 to i64
  %arrayidx403 = getelementptr inbounds i32, ptr %443, i64 %idxprom402
  store i32 0, ptr %arrayidx403, align 4, !tbaa !14
  %445 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %446 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimends404 = getelementptr inbounds %struct.Spliceends_T, ptr %446, i32 0, i32 8
  %447 = load ptr, ptr %trimends404, align 8, !tbaa !23
  %448 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom405 = sext i32 %448 to i64
  %arrayidx406 = getelementptr inbounds i32, ptr %447, i64 %idxprom405
  store i32 %445, ptr %arrayidx406, align 4, !tbaa !14
  %449 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %450 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %medial_nmismatches407 = getelementptr inbounds %struct.Spliceends_T, ptr %450, i32 0, i32 10
  %451 = load ptr, ptr %medial_nmismatches407, align 8, !tbaa !21
  %452 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom408 = sext i32 %452 to i64
  %arrayidx409 = getelementptr inbounds i32, ptr %451, i64 %idxprom408
  store i32 %449, ptr %arrayidx409, align 4, !tbaa !14
  %453 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %partners410 = getelementptr inbounds %struct.Spliceends_T, ptr %453, i32 0, i32 9
  %454 = load ptr, ptr %partners410, align 8, !tbaa !22
  %455 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom411 = sext i32 %455 to i64
  %arrayidx412 = getelementptr inbounds i64, ptr %454, i64 %idxprom411
  store i64 0, ptr %arrayidx412, align 8, !tbaa !12
  %456 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_nmismatches413 = getelementptr inbounds %struct.Spliceends_T, ptr %456, i32 0, i32 11
  %457 = load ptr, ptr %distal_nmismatches413, align 8, !tbaa !20
  %458 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom414 = sext i32 %458 to i64
  %arrayidx415 = getelementptr inbounds i32, ptr %457, i64 %idxprom414
  store i32 -1, ptr %arrayidx415, align 4, !tbaa !14
  %459 = load double, ptr %donor_prob, align 8, !tbaa !31
  %460 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %ambig_probs416 = getelementptr inbounds %struct.Spliceends_T, ptr %460, i32 0, i32 12
  %461 = load ptr, ptr %ambig_probs416, align 8, !tbaa !19
  %462 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom417 = sext i32 %462 to i64
  %arrayidx418 = getelementptr inbounds double, ptr %461, i64 %idxprom417
  store double %459, ptr %arrayidx418, align 8, !tbaa !31
  %463 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_probs419 = getelementptr inbounds %struct.Spliceends_T, ptr %463, i32 0, i32 13
  %464 = load ptr, ptr %distal_probs419, align 8, !tbaa !17
  %465 = load i32, ptr %k, align 4, !tbaa !14
  %inc420 = add nsw i32 %465, 1
  store i32 %inc420, ptr %k, align 4, !tbaa !14
  %idxprom421 = sext i32 %465 to i64
  %arrayidx422 = getelementptr inbounds double, ptr %464, i64 %idxprom421
  store double 0.000000e+00, ptr %arrayidx422, align 8, !tbaa !31
  %466 = load double, ptr %donor_prob, align 8, !tbaa !31
  %467 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  %468 = load double, ptr %467, align 8, !tbaa !31
  %cmp423 = fcmp ogt double %466, %468
  br i1 %cmp423, label %if.then425, label %if.end426

if.then425:                                       ; preds = %if.then400
  %469 = load double, ptr %donor_prob, align 8, !tbaa !31
  %470 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  store double %469, ptr %470, align 8, !tbaa !31
  br label %if.end426

if.end426:                                        ; preds = %if.then425, %if.then400
  br label %if.end474

if.else427:                                       ; preds = %if.else396
  store i32 0, ptr %i, align 4, !tbaa !14
  br label %for.cond428

for.cond428:                                      ; preds = %for.inc471, %if.else427
  %471 = load i32, ptr %i, align 4, !tbaa !14
  %472 = load i32, ptr %novel_ndiagonals, align 4, !tbaa !14
  %cmp429 = icmp slt i32 %471, %472
  br i1 %cmp429, label %for.body431, label %for.end473

for.body431:                                      ; preds = %for.cond428
  %473 = load ptr, ptr %novel_diagonals_alloc.addr, align 8, !tbaa !5
  %474 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom432 = sext i32 %474 to i64
  %arrayidx433 = getelementptr inbounds i64, ptr %473, i64 %idxprom432
  %475 = load i64, ptr %arrayidx433, align 8, !tbaa !12
  %476 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %conv434 = sext i32 %476 to i64
  %sub435 = sub i64 %475, %conv434
  %477 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %conv436 = sext i32 %477 to i64
  %add437 = add i64 %sub435, %conv436
  store i64 %add437, ptr %distal_genomicpos, align 8, !tbaa !12
  %478 = load i64, ptr %distal_genomicpos, align 8, !tbaa !12
  %479 = load i64, ptr %chroffset.addr, align 8, !tbaa !12
  %call438 = call double @Maxent_hr_antiacceptor_prob(i64 noundef %478, i64 noundef %479)
  store double %call438, ptr %acceptor_prob, align 8, !tbaa !31
  %480 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %481 = load double, ptr %distal_splicesite_prob.addr, align 8, !tbaa !31
  %cmp439 = fcmp oge double %480, %481
  br i1 %cmp439, label %if.then441, label %if.end470

if.then441:                                       ; preds = %for.body431
  %482 = load i32, ptr %matchlength, align 4, !tbaa !14
  %483 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %matchlengths442 = getelementptr inbounds %struct.Spliceends_T, ptr %483, i32 0, i32 7
  %484 = load ptr, ptr %matchlengths442, align 8, !tbaa !24
  %485 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom443 = sext i32 %485 to i64
  %arrayidx444 = getelementptr inbounds i32, ptr %484, i64 %idxprom443
  store i32 %482, ptr %arrayidx444, align 4, !tbaa !14
  %486 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %487 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimends445 = getelementptr inbounds %struct.Spliceends_T, ptr %487, i32 0, i32 8
  %488 = load ptr, ptr %trimends445, align 8, !tbaa !23
  %489 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom446 = sext i32 %489 to i64
  %arrayidx447 = getelementptr inbounds i32, ptr %488, i64 %idxprom446
  store i32 %486, ptr %arrayidx447, align 4, !tbaa !14
  %490 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %491 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %medial_nmismatches448 = getelementptr inbounds %struct.Spliceends_T, ptr %491, i32 0, i32 10
  %492 = load ptr, ptr %medial_nmismatches448, align 8, !tbaa !21
  %493 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom449 = sext i32 %493 to i64
  %arrayidx450 = getelementptr inbounds i32, ptr %492, i64 %idxprom449
  store i32 %490, ptr %arrayidx450, align 4, !tbaa !14
  %494 = load i64, ptr %distal_genomicpos, align 8, !tbaa !12
  %495 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %partners451 = getelementptr inbounds %struct.Spliceends_T, ptr %495, i32 0, i32 9
  %496 = load ptr, ptr %partners451, align 8, !tbaa !22
  %497 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom452 = sext i32 %497 to i64
  %arrayidx453 = getelementptr inbounds i64, ptr %496, i64 %idxprom452
  store i64 %494, ptr %arrayidx453, align 8, !tbaa !12
  %498 = load i32, ptr %local_nmismatches, align 4, !tbaa !14
  %499 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_nmismatches454 = getelementptr inbounds %struct.Spliceends_T, ptr %499, i32 0, i32 11
  %500 = load ptr, ptr %distal_nmismatches454, align 8, !tbaa !20
  %501 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom455 = sext i32 %501 to i64
  %arrayidx456 = getelementptr inbounds i32, ptr %500, i64 %idxprom455
  store i32 %498, ptr %arrayidx456, align 4, !tbaa !14
  %502 = load double, ptr %donor_prob, align 8, !tbaa !31
  %503 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %ambig_probs457 = getelementptr inbounds %struct.Spliceends_T, ptr %503, i32 0, i32 12
  %504 = load ptr, ptr %ambig_probs457, align 8, !tbaa !19
  %505 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom458 = sext i32 %505 to i64
  %arrayidx459 = getelementptr inbounds double, ptr %504, i64 %idxprom458
  store double %502, ptr %arrayidx459, align 8, !tbaa !31
  %506 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %507 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_probs460 = getelementptr inbounds %struct.Spliceends_T, ptr %507, i32 0, i32 13
  %508 = load ptr, ptr %distal_probs460, align 8, !tbaa !17
  %509 = load i32, ptr %k, align 4, !tbaa !14
  %inc461 = add nsw i32 %509, 1
  store i32 %inc461, ptr %k, align 4, !tbaa !14
  %idxprom462 = sext i32 %509 to i64
  %arrayidx463 = getelementptr inbounds double, ptr %508, i64 %idxprom462
  store double %506, ptr %arrayidx463, align 8, !tbaa !31
  %510 = load double, ptr %donor_prob, align 8, !tbaa !31
  %511 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %add464 = fadd double %510, %511
  %512 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  %513 = load double, ptr %512, align 8, !tbaa !31
  %cmp465 = fcmp ogt double %add464, %513
  br i1 %cmp465, label %if.then467, label %if.end469

if.then467:                                       ; preds = %if.then441
  %514 = load double, ptr %donor_prob, align 8, !tbaa !31
  %515 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %add468 = fadd double %514, %515
  %516 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  store double %add468, ptr %516, align 8, !tbaa !31
  br label %if.end469

if.end469:                                        ; preds = %if.then467, %if.then441
  %517 = load ptr, ptr %partnerp.addr, align 8, !tbaa !5
  store i8 1, ptr %517, align 1, !tbaa !16
  br label %if.end470

if.end470:                                        ; preds = %if.end469, %for.body431
  br label %for.inc471

for.inc471:                                       ; preds = %if.end470
  %518 = load i32, ptr %i, align 4, !tbaa !14
  %inc472 = add nsw i32 %518, 1
  store i32 %inc472, ptr %i, align 4, !tbaa !14
  br label %for.cond428, !llvm.loop !49

for.end473:                                       ; preds = %for.cond428
  br label %if.end474

if.end474:                                        ; preds = %for.end473, %if.end426
  br label %if.end475

if.end475:                                        ; preds = %if.end474, %if.end395
  br label %if.end476

if.end476:                                        ; preds = %if.end475, %if.end364
  br label %if.end477

if.end477:                                        ; preds = %if.end476, %while.body337
  %519 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %sub478 = sub nsw i32 %519, 1
  %cmp479 = icmp sge i32 %sub478, 0
  br i1 %cmp479, label %land.lhs.true481, label %if.end489

land.lhs.true481:                                 ; preds = %if.end477
  %520 = load ptr, ptr %mismatch_positions.addr, align 8, !tbaa !5
  %521 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %sub482 = sub nsw i32 %521, 1
  %idxprom483 = sext i32 %sub482 to i64
  %arrayidx484 = getelementptr inbounds i32, ptr %520, i64 %idxprom483
  %522 = load i32, ptr %arrayidx484, align 4, !tbaa !14
  %523 = load i32, ptr %querypos, align 4, !tbaa !14
  %cmp485 = icmp eq i32 %522, %523
  br i1 %cmp485, label %if.then487, label %if.end489

if.then487:                                       ; preds = %land.lhs.true481
  %524 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %dec488 = add nsw i32 %524, -1
  store i32 %dec488, ptr %mismatchi, align 4, !tbaa !14
  br label %if.end489

if.end489:                                        ; preds = %if.then487, %land.lhs.true481, %if.end477
  %525 = load i32, ptr %querypos, align 4, !tbaa !14
  %inc490 = add nsw i32 %525, 1
  store i32 %inc490, ptr %querypos, align 4, !tbaa !14
  %526 = load i64, ptr %genomicpos, align 8, !tbaa !12
  %inc491 = add i64 %526, 1
  store i64 %inc491, ptr %genomicpos, align 8, !tbaa !12
  br label %while.cond330, !llvm.loop !50

while.end492:                                     ; preds = %land.end336
  store i32 0, ptr %nconsecutive, align 4, !tbaa !14
  br label %while.cond493

while.cond493:                                    ; preds = %if.end657, %while.end492
  %527 = load i32, ptr %k, align 4, !tbaa !14
  %cmp494 = icmp slt i32 %527, 30
  br i1 %cmp494, label %land.lhs.true496, label %land.end502

land.lhs.true496:                                 ; preds = %while.cond493
  %528 = load i64, ptr %genomicpos, align 8, !tbaa !12
  %529 = load i64, ptr %end_genomicpos.addr, align 8, !tbaa !12
  %cmp497 = icmp ult i64 %528, %529
  br i1 %cmp497, label %land.rhs499, label %land.end502

land.rhs499:                                      ; preds = %land.lhs.true496
  %530 = load i32, ptr %nconsecutive, align 4, !tbaa !14
  %531 = load i32, ptr %max_nconsecutive.addr, align 4, !tbaa !14
  %cmp500 = icmp slt i32 %530, %531
  br label %land.end502

land.end502:                                      ; preds = %land.rhs499, %land.lhs.true496, %while.cond493
  %532 = phi i1 [ false, %land.lhs.true496 ], [ false, %while.cond493 ], [ %cmp500, %land.rhs499 ]
  br i1 %532, label %while.body503, label %while.end660

while.body503:                                    ; preds = %land.end502
  %533 = load i64, ptr %genomicpos, align 8, !tbaa !12
  %534 = load i64, ptr %chroffset.addr, align 8, !tbaa !12
  %call504 = call double @Maxent_hr_antidonor_prob(i64 noundef %533, i64 noundef %534)
  store double %call504, ptr %donor_prob, align 8, !tbaa !31
  %535 = load double, ptr %donor_prob, align 8, !tbaa !31
  %536 = load double, ptr %medial_splicesite_prob.addr, align 8, !tbaa !31
  %cmp505 = fcmp oge double %535, %536
  br i1 %cmp505, label %if.then507, label %if.end643

if.then507:                                       ; preds = %while.body503
  %537 = load i64, ptr %genomicpos, align 8, !tbaa !12
  %538 = load i64, ptr %left, align 8, !tbaa !12
  %sub508 = sub i64 %537, %538
  %conv509 = trunc i64 %sub508 to i32
  store i32 %conv509, ptr %splice_qpos, align 4, !tbaa !14
  %539 = load i8, ptr %search_localdb_p.addr, align 1, !tbaa !16
  %conv510 = zext i8 %539 to i32
  %cmp511 = icmp eq i32 %conv510, 0
  br i1 %cmp511, label %if.then513, label %if.else531

if.then513:                                       ; preds = %if.then507
  %540 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %541 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimends514 = getelementptr inbounds %struct.Spliceends_T, ptr %541, i32 0, i32 8
  %542 = load ptr, ptr %trimends514, align 8, !tbaa !23
  %543 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom515 = sext i32 %543 to i64
  %arrayidx516 = getelementptr inbounds i32, ptr %542, i64 %idxprom515
  store i32 %540, ptr %arrayidx516, align 4, !tbaa !14
  %544 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %545 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %medial_nmismatches517 = getelementptr inbounds %struct.Spliceends_T, ptr %545, i32 0, i32 10
  %546 = load ptr, ptr %medial_nmismatches517, align 8, !tbaa !21
  %547 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom518 = sext i32 %547 to i64
  %arrayidx519 = getelementptr inbounds i32, ptr %546, i64 %idxprom518
  store i32 %544, ptr %arrayidx519, align 4, !tbaa !14
  %548 = load double, ptr %donor_prob, align 8, !tbaa !31
  %549 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %ambig_probs520 = getelementptr inbounds %struct.Spliceends_T, ptr %549, i32 0, i32 12
  %550 = load ptr, ptr %ambig_probs520, align 8, !tbaa !19
  %551 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom521 = sext i32 %551 to i64
  %arrayidx522 = getelementptr inbounds double, ptr %550, i64 %idxprom521
  store double %548, ptr %arrayidx522, align 8, !tbaa !31
  %552 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_probs523 = getelementptr inbounds %struct.Spliceends_T, ptr %552, i32 0, i32 13
  %553 = load ptr, ptr %distal_probs523, align 8, !tbaa !17
  %554 = load i32, ptr %k, align 4, !tbaa !14
  %inc524 = add nsw i32 %554, 1
  store i32 %inc524, ptr %k, align 4, !tbaa !14
  %idxprom525 = sext i32 %554 to i64
  %arrayidx526 = getelementptr inbounds double, ptr %553, i64 %idxprom525
  store double 0.000000e+00, ptr %arrayidx526, align 8, !tbaa !31
  %555 = load double, ptr %donor_prob, align 8, !tbaa !31
  %556 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  %557 = load double, ptr %556, align 8, !tbaa !31
  %cmp527 = fcmp ogt double %555, %557
  br i1 %cmp527, label %if.then529, label %if.end530

if.then529:                                       ; preds = %if.then513
  %558 = load double, ptr %donor_prob, align 8, !tbaa !31
  %559 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  store double %558, ptr %559, align 8, !tbaa !31
  br label %if.end530

if.end530:                                        ; preds = %if.then529, %if.then513
  br label %if.end642

if.else531:                                       ; preds = %if.then507
  %560 = load ptr, ptr %novel_diagonals_alloc.addr, align 8, !tbaa !5
  %561 = load ptr, ptr @localdb, align 8, !tbaa !5
  %562 = load ptr, ptr %localdb_alloc.addr, align 8, !tbaa !5
  %563 = load i32, ptr %streamspace_max_alloc.addr, align 4, !tbaa !14
  %564 = load ptr, ptr %streamspace_alloc.addr, align 8, !tbaa !5
  %565 = load ptr, ptr %streamptr_alloc.addr, align 8, !tbaa !5
  %566 = load ptr, ptr %streamsize_alloc.addr, align 8, !tbaa !5
  %567 = load ptr, ptr %mergeinfo.addr, align 8, !tbaa !5
  %568 = load ptr, ptr %queryptr.addr, align 8, !tbaa !5
  %569 = load i32, ptr %pos5, align 4, !tbaa !14
  %570 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %571 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %572 = load i64, ptr %low_univdiagonal, align 8, !tbaa !12
  %573 = load i64, ptr %high_univdiagonal, align 8, !tbaa !12
  %574 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %575 = load i8, ptr %plusp.addr, align 1, !tbaa !16
  %576 = load i32, ptr %genestrand.addr, align 4, !tbaa !14
  %577 = load ptr, ptr @genomebits, align 8, !tbaa !5
  %578 = load i32, ptr %nmismatches_allowed.addr, align 4, !tbaa !14
  %579 = load i8, ptr %salvagep.addr, align 1, !tbaa !16
  %call532 = call i32 @Localdb_get(ptr noundef %matchlength, ptr noundef %local_nmismatches, ptr noundef %560, ptr noundef %561, ptr noundef %562, i32 noundef %563, ptr noundef %564, ptr noundef %565, ptr noundef %566, ptr noundef %567, ptr noundef %568, i32 noundef %569, i32 noundef %570, i32 noundef %571, i64 noundef %572, i64 noundef %573, ptr noundef %574, i8 noundef zeroext %575, i32 noundef %576, ptr noundef %577, i32 noundef %578, i8 noundef zeroext %579)
  store i32 %call532, ptr %novel_ndiagonals, align 4, !tbaa !14
  %cmp533 = icmp eq i32 %call532, 0
  br i1 %cmp533, label %if.then535, label %if.else562

if.then535:                                       ; preds = %if.else531
  %580 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %matchlengths536 = getelementptr inbounds %struct.Spliceends_T, ptr %580, i32 0, i32 7
  %581 = load ptr, ptr %matchlengths536, align 8, !tbaa !24
  %582 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom537 = sext i32 %582 to i64
  %arrayidx538 = getelementptr inbounds i32, ptr %581, i64 %idxprom537
  store i32 0, ptr %arrayidx538, align 4, !tbaa !14
  %583 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %584 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimends539 = getelementptr inbounds %struct.Spliceends_T, ptr %584, i32 0, i32 8
  %585 = load ptr, ptr %trimends539, align 8, !tbaa !23
  %586 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom540 = sext i32 %586 to i64
  %arrayidx541 = getelementptr inbounds i32, ptr %585, i64 %idxprom540
  store i32 %583, ptr %arrayidx541, align 4, !tbaa !14
  %587 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %588 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %medial_nmismatches542 = getelementptr inbounds %struct.Spliceends_T, ptr %588, i32 0, i32 10
  %589 = load ptr, ptr %medial_nmismatches542, align 8, !tbaa !21
  %590 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom543 = sext i32 %590 to i64
  %arrayidx544 = getelementptr inbounds i32, ptr %589, i64 %idxprom543
  store i32 %587, ptr %arrayidx544, align 4, !tbaa !14
  %591 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %partners545 = getelementptr inbounds %struct.Spliceends_T, ptr %591, i32 0, i32 9
  %592 = load ptr, ptr %partners545, align 8, !tbaa !22
  %593 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom546 = sext i32 %593 to i64
  %arrayidx547 = getelementptr inbounds i64, ptr %592, i64 %idxprom546
  store i64 0, ptr %arrayidx547, align 8, !tbaa !12
  %594 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_nmismatches548 = getelementptr inbounds %struct.Spliceends_T, ptr %594, i32 0, i32 11
  %595 = load ptr, ptr %distal_nmismatches548, align 8, !tbaa !20
  %596 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom549 = sext i32 %596 to i64
  %arrayidx550 = getelementptr inbounds i32, ptr %595, i64 %idxprom549
  store i32 -1, ptr %arrayidx550, align 4, !tbaa !14
  %597 = load double, ptr %donor_prob, align 8, !tbaa !31
  %598 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %ambig_probs551 = getelementptr inbounds %struct.Spliceends_T, ptr %598, i32 0, i32 12
  %599 = load ptr, ptr %ambig_probs551, align 8, !tbaa !19
  %600 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom552 = sext i32 %600 to i64
  %arrayidx553 = getelementptr inbounds double, ptr %599, i64 %idxprom552
  store double %597, ptr %arrayidx553, align 8, !tbaa !31
  %601 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_probs554 = getelementptr inbounds %struct.Spliceends_T, ptr %601, i32 0, i32 13
  %602 = load ptr, ptr %distal_probs554, align 8, !tbaa !17
  %603 = load i32, ptr %k, align 4, !tbaa !14
  %inc555 = add nsw i32 %603, 1
  store i32 %inc555, ptr %k, align 4, !tbaa !14
  %idxprom556 = sext i32 %603 to i64
  %arrayidx557 = getelementptr inbounds double, ptr %602, i64 %idxprom556
  store double 0.000000e+00, ptr %arrayidx557, align 8, !tbaa !31
  %604 = load double, ptr %donor_prob, align 8, !tbaa !31
  %605 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  %606 = load double, ptr %605, align 8, !tbaa !31
  %cmp558 = fcmp ogt double %604, %606
  br i1 %cmp558, label %if.then560, label %if.end561

if.then560:                                       ; preds = %if.then535
  %607 = load double, ptr %donor_prob, align 8, !tbaa !31
  %608 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  store double %607, ptr %608, align 8, !tbaa !31
  br label %if.end561

if.end561:                                        ; preds = %if.then560, %if.then535
  br label %if.end641

if.else562:                                       ; preds = %if.else531
  %609 = load i32, ptr %k, align 4, !tbaa !14
  %610 = load i32, ptr %novel_ndiagonals, align 4, !tbaa !14
  %add563 = add nsw i32 %609, %610
  %cmp564 = icmp sgt i32 %add563, 30
  br i1 %cmp564, label %if.then566, label %if.else593

if.then566:                                       ; preds = %if.else562
  %611 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %matchlengths567 = getelementptr inbounds %struct.Spliceends_T, ptr %611, i32 0, i32 7
  %612 = load ptr, ptr %matchlengths567, align 8, !tbaa !24
  %613 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom568 = sext i32 %613 to i64
  %arrayidx569 = getelementptr inbounds i32, ptr %612, i64 %idxprom568
  store i32 0, ptr %arrayidx569, align 4, !tbaa !14
  %614 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %615 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimends570 = getelementptr inbounds %struct.Spliceends_T, ptr %615, i32 0, i32 8
  %616 = load ptr, ptr %trimends570, align 8, !tbaa !23
  %617 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom571 = sext i32 %617 to i64
  %arrayidx572 = getelementptr inbounds i32, ptr %616, i64 %idxprom571
  store i32 %614, ptr %arrayidx572, align 4, !tbaa !14
  %618 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %619 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %medial_nmismatches573 = getelementptr inbounds %struct.Spliceends_T, ptr %619, i32 0, i32 10
  %620 = load ptr, ptr %medial_nmismatches573, align 8, !tbaa !21
  %621 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom574 = sext i32 %621 to i64
  %arrayidx575 = getelementptr inbounds i32, ptr %620, i64 %idxprom574
  store i32 %618, ptr %arrayidx575, align 4, !tbaa !14
  %622 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %partners576 = getelementptr inbounds %struct.Spliceends_T, ptr %622, i32 0, i32 9
  %623 = load ptr, ptr %partners576, align 8, !tbaa !22
  %624 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom577 = sext i32 %624 to i64
  %arrayidx578 = getelementptr inbounds i64, ptr %623, i64 %idxprom577
  store i64 0, ptr %arrayidx578, align 8, !tbaa !12
  %625 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_nmismatches579 = getelementptr inbounds %struct.Spliceends_T, ptr %625, i32 0, i32 11
  %626 = load ptr, ptr %distal_nmismatches579, align 8, !tbaa !20
  %627 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom580 = sext i32 %627 to i64
  %arrayidx581 = getelementptr inbounds i32, ptr %626, i64 %idxprom580
  store i32 -1, ptr %arrayidx581, align 4, !tbaa !14
  %628 = load double, ptr %donor_prob, align 8, !tbaa !31
  %629 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %ambig_probs582 = getelementptr inbounds %struct.Spliceends_T, ptr %629, i32 0, i32 12
  %630 = load ptr, ptr %ambig_probs582, align 8, !tbaa !19
  %631 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom583 = sext i32 %631 to i64
  %arrayidx584 = getelementptr inbounds double, ptr %630, i64 %idxprom583
  store double %628, ptr %arrayidx584, align 8, !tbaa !31
  %632 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_probs585 = getelementptr inbounds %struct.Spliceends_T, ptr %632, i32 0, i32 13
  %633 = load ptr, ptr %distal_probs585, align 8, !tbaa !17
  %634 = load i32, ptr %k, align 4, !tbaa !14
  %inc586 = add nsw i32 %634, 1
  store i32 %inc586, ptr %k, align 4, !tbaa !14
  %idxprom587 = sext i32 %634 to i64
  %arrayidx588 = getelementptr inbounds double, ptr %633, i64 %idxprom587
  store double 0.000000e+00, ptr %arrayidx588, align 8, !tbaa !31
  %635 = load double, ptr %donor_prob, align 8, !tbaa !31
  %636 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  %637 = load double, ptr %636, align 8, !tbaa !31
  %cmp589 = fcmp ogt double %635, %637
  br i1 %cmp589, label %if.then591, label %if.end592

if.then591:                                       ; preds = %if.then566
  %638 = load double, ptr %donor_prob, align 8, !tbaa !31
  %639 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  store double %638, ptr %639, align 8, !tbaa !31
  br label %if.end592

if.end592:                                        ; preds = %if.then591, %if.then566
  br label %if.end640

if.else593:                                       ; preds = %if.else562
  store i32 0, ptr %i, align 4, !tbaa !14
  br label %for.cond594

for.cond594:                                      ; preds = %for.inc637, %if.else593
  %640 = load i32, ptr %i, align 4, !tbaa !14
  %641 = load i32, ptr %novel_ndiagonals, align 4, !tbaa !14
  %cmp595 = icmp slt i32 %640, %641
  br i1 %cmp595, label %for.body597, label %for.end639

for.body597:                                      ; preds = %for.cond594
  %642 = load ptr, ptr %novel_diagonals_alloc.addr, align 8, !tbaa !5
  %643 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom598 = sext i32 %643 to i64
  %arrayidx599 = getelementptr inbounds i64, ptr %642, i64 %idxprom598
  %644 = load i64, ptr %arrayidx599, align 8, !tbaa !12
  %645 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %conv600 = sext i32 %645 to i64
  %sub601 = sub i64 %644, %conv600
  %646 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %conv602 = sext i32 %646 to i64
  %add603 = add i64 %sub601, %conv602
  store i64 %add603, ptr %distal_genomicpos, align 8, !tbaa !12
  %647 = load i64, ptr %distal_genomicpos, align 8, !tbaa !12
  %648 = load i64, ptr %chroffset.addr, align 8, !tbaa !12
  %call604 = call double @Maxent_hr_antiacceptor_prob(i64 noundef %647, i64 noundef %648)
  store double %call604, ptr %acceptor_prob, align 8, !tbaa !31
  %649 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %650 = load double, ptr %distal_splicesite_prob.addr, align 8, !tbaa !31
  %cmp605 = fcmp oge double %649, %650
  br i1 %cmp605, label %if.then607, label %if.end636

if.then607:                                       ; preds = %for.body597
  %651 = load i32, ptr %matchlength, align 4, !tbaa !14
  %652 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %matchlengths608 = getelementptr inbounds %struct.Spliceends_T, ptr %652, i32 0, i32 7
  %653 = load ptr, ptr %matchlengths608, align 8, !tbaa !24
  %654 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom609 = sext i32 %654 to i64
  %arrayidx610 = getelementptr inbounds i32, ptr %653, i64 %idxprom609
  store i32 %651, ptr %arrayidx610, align 4, !tbaa !14
  %655 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %656 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimends611 = getelementptr inbounds %struct.Spliceends_T, ptr %656, i32 0, i32 8
  %657 = load ptr, ptr %trimends611, align 8, !tbaa !23
  %658 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom612 = sext i32 %658 to i64
  %arrayidx613 = getelementptr inbounds i32, ptr %657, i64 %idxprom612
  store i32 %655, ptr %arrayidx613, align 4, !tbaa !14
  %659 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %660 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %medial_nmismatches614 = getelementptr inbounds %struct.Spliceends_T, ptr %660, i32 0, i32 10
  %661 = load ptr, ptr %medial_nmismatches614, align 8, !tbaa !21
  %662 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom615 = sext i32 %662 to i64
  %arrayidx616 = getelementptr inbounds i32, ptr %661, i64 %idxprom615
  store i32 %659, ptr %arrayidx616, align 4, !tbaa !14
  %663 = load i64, ptr %distal_genomicpos, align 8, !tbaa !12
  %664 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %partners617 = getelementptr inbounds %struct.Spliceends_T, ptr %664, i32 0, i32 9
  %665 = load ptr, ptr %partners617, align 8, !tbaa !22
  %666 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom618 = sext i32 %666 to i64
  %arrayidx619 = getelementptr inbounds i64, ptr %665, i64 %idxprom618
  store i64 %663, ptr %arrayidx619, align 8, !tbaa !12
  %667 = load i32, ptr %local_nmismatches, align 4, !tbaa !14
  %668 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_nmismatches620 = getelementptr inbounds %struct.Spliceends_T, ptr %668, i32 0, i32 11
  %669 = load ptr, ptr %distal_nmismatches620, align 8, !tbaa !20
  %670 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom621 = sext i32 %670 to i64
  %arrayidx622 = getelementptr inbounds i32, ptr %669, i64 %idxprom621
  store i32 %667, ptr %arrayidx622, align 4, !tbaa !14
  %671 = load double, ptr %donor_prob, align 8, !tbaa !31
  %672 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %ambig_probs623 = getelementptr inbounds %struct.Spliceends_T, ptr %672, i32 0, i32 12
  %673 = load ptr, ptr %ambig_probs623, align 8, !tbaa !19
  %674 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom624 = sext i32 %674 to i64
  %arrayidx625 = getelementptr inbounds double, ptr %673, i64 %idxprom624
  store double %671, ptr %arrayidx625, align 8, !tbaa !31
  %675 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %676 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_probs626 = getelementptr inbounds %struct.Spliceends_T, ptr %676, i32 0, i32 13
  %677 = load ptr, ptr %distal_probs626, align 8, !tbaa !17
  %678 = load i32, ptr %k, align 4, !tbaa !14
  %inc627 = add nsw i32 %678, 1
  store i32 %inc627, ptr %k, align 4, !tbaa !14
  %idxprom628 = sext i32 %678 to i64
  %arrayidx629 = getelementptr inbounds double, ptr %677, i64 %idxprom628
  store double %675, ptr %arrayidx629, align 8, !tbaa !31
  %679 = load double, ptr %donor_prob, align 8, !tbaa !31
  %680 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %add630 = fadd double %679, %680
  %681 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  %682 = load double, ptr %681, align 8, !tbaa !31
  %cmp631 = fcmp ogt double %add630, %682
  br i1 %cmp631, label %if.then633, label %if.end635

if.then633:                                       ; preds = %if.then607
  %683 = load double, ptr %donor_prob, align 8, !tbaa !31
  %684 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %add634 = fadd double %683, %684
  %685 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  store double %add634, ptr %685, align 8, !tbaa !31
  br label %if.end635

if.end635:                                        ; preds = %if.then633, %if.then607
  %686 = load ptr, ptr %partnerp.addr, align 8, !tbaa !5
  store i8 1, ptr %686, align 1, !tbaa !16
  br label %if.end636

if.end636:                                        ; preds = %if.end635, %for.body597
  br label %for.inc637

for.inc637:                                       ; preds = %if.end636
  %687 = load i32, ptr %i, align 4, !tbaa !14
  %inc638 = add nsw i32 %687, 1
  store i32 %inc638, ptr %i, align 4, !tbaa !14
  br label %for.cond594, !llvm.loop !51

for.end639:                                       ; preds = %for.cond594
  br label %if.end640

if.end640:                                        ; preds = %for.end639, %if.end592
  br label %if.end641

if.end641:                                        ; preds = %if.end640, %if.end561
  br label %if.end642

if.end642:                                        ; preds = %if.end641, %if.end530
  br label %if.end643

if.end643:                                        ; preds = %if.end642, %while.body503
  %688 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %sub644 = sub nsw i32 %688, 1
  %cmp645 = icmp sge i32 %sub644, 0
  br i1 %cmp645, label %land.lhs.true647, label %if.else655

land.lhs.true647:                                 ; preds = %if.end643
  %689 = load ptr, ptr %mismatch_positions.addr, align 8, !tbaa !5
  %690 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %sub648 = sub nsw i32 %690, 1
  %idxprom649 = sext i32 %sub648 to i64
  %arrayidx650 = getelementptr inbounds i32, ptr %689, i64 %idxprom649
  %691 = load i32, ptr %arrayidx650, align 4, !tbaa !14
  %692 = load i32, ptr %querypos, align 4, !tbaa !14
  %cmp651 = icmp eq i32 %691, %692
  br i1 %cmp651, label %if.then653, label %if.else655

if.then653:                                       ; preds = %land.lhs.true647
  store i32 0, ptr %nconsecutive, align 4, !tbaa !14
  %693 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %dec654 = add nsw i32 %693, -1
  store i32 %dec654, ptr %mismatchi, align 4, !tbaa !14
  br label %if.end657

if.else655:                                       ; preds = %land.lhs.true647, %if.end643
  %694 = load i32, ptr %nconsecutive, align 4, !tbaa !14
  %inc656 = add nsw i32 %694, 1
  store i32 %inc656, ptr %nconsecutive, align 4, !tbaa !14
  br label %if.end657

if.end657:                                        ; preds = %if.else655, %if.then653
  %695 = load i32, ptr %querypos, align 4, !tbaa !14
  %inc658 = add nsw i32 %695, 1
  store i32 %inc658, ptr %querypos, align 4, !tbaa !14
  %696 = load i64, ptr %genomicpos, align 8, !tbaa !12
  %inc659 = add i64 %696, 1
  store i64 %inc659, ptr %genomicpos, align 8, !tbaa !12
  br label %while.cond493, !llvm.loop !52

while.end660:                                     ; preds = %land.end502
  br label %if.end661

if.end661:                                        ; preds = %while.end660, %while.end328
  %697 = load i32, ptr %k, align 4, !tbaa !14
  %cmp662 = icmp eq i32 %697, 0
  br i1 %cmp662, label %if.then664, label %if.else665

if.then664:                                       ; preds = %if.end661
  store i32 0, ptr %nspliceends, align 4, !tbaa !14
  br label %if.end796

if.else665:                                       ; preds = %if.end661
  %698 = load i8, ptr %innerp.addr, align 1, !tbaa !16
  %conv666 = zext i8 %698 to i32
  %cmp667 = icmp eq i32 %conv666, 0
  br i1 %cmp667, label %if.then669, label %if.else731

if.then669:                                       ; preds = %if.else665
  store i32 0, ptr %i, align 4, !tbaa !14
  br label %for.cond670

for.cond670:                                      ; preds = %for.inc728, %if.then669
  %699 = load i32, ptr %i, align 4, !tbaa !14
  %700 = load i32, ptr %k, align 4, !tbaa !14
  %cmp671 = icmp slt i32 %699, %700
  br i1 %cmp671, label %for.body673, label %for.end730

for.body673:                                      ; preds = %for.cond670
  %701 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %ambig_probs674 = getelementptr inbounds %struct.Spliceends_T, ptr %701, i32 0, i32 12
  %702 = load ptr, ptr %ambig_probs674, align 8, !tbaa !19
  %703 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom675 = sext i32 %703 to i64
  %arrayidx676 = getelementptr inbounds double, ptr %702, i64 %idxprom675
  %704 = load double, ptr %arrayidx676, align 8, !tbaa !31
  %705 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_probs677 = getelementptr inbounds %struct.Spliceends_T, ptr %705, i32 0, i32 13
  %706 = load ptr, ptr %distal_probs677, align 8, !tbaa !17
  %707 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom678 = sext i32 %707 to i64
  %arrayidx679 = getelementptr inbounds double, ptr %706, i64 %idxprom678
  %708 = load double, ptr %arrayidx679, align 8, !tbaa !31
  %add680 = fadd double %704, %708
  %709 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  %710 = load double, ptr %709, align 8, !tbaa !31
  %cmp681 = fcmp oeq double %add680, %710
  br i1 %cmp681, label %if.then683, label %if.end727

if.then683:                                       ; preds = %for.body673
  %711 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %matchlengths684 = getelementptr inbounds %struct.Spliceends_T, ptr %711, i32 0, i32 7
  %712 = load ptr, ptr %matchlengths684, align 8, !tbaa !24
  %713 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom685 = sext i32 %713 to i64
  %arrayidx686 = getelementptr inbounds i32, ptr %712, i64 %idxprom685
  %714 = load i32, ptr %arrayidx686, align 4, !tbaa !14
  %715 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %matchlengths687 = getelementptr inbounds %struct.Spliceends_T, ptr %715, i32 0, i32 7
  %716 = load ptr, ptr %matchlengths687, align 8, !tbaa !24
  %717 = load i32, ptr %nspliceends, align 4, !tbaa !14
  %idxprom688 = sext i32 %717 to i64
  %arrayidx689 = getelementptr inbounds i32, ptr %716, i64 %idxprom688
  store i32 %714, ptr %arrayidx689, align 4, !tbaa !14
  %718 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimends690 = getelementptr inbounds %struct.Spliceends_T, ptr %718, i32 0, i32 8
  %719 = load ptr, ptr %trimends690, align 8, !tbaa !23
  %720 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom691 = sext i32 %720 to i64
  %arrayidx692 = getelementptr inbounds i32, ptr %719, i64 %idxprom691
  %721 = load i32, ptr %arrayidx692, align 4, !tbaa !14
  %722 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimends693 = getelementptr inbounds %struct.Spliceends_T, ptr %722, i32 0, i32 8
  %723 = load ptr, ptr %trimends693, align 8, !tbaa !23
  %724 = load i32, ptr %nspliceends, align 4, !tbaa !14
  %idxprom694 = sext i32 %724 to i64
  %arrayidx695 = getelementptr inbounds i32, ptr %723, i64 %idxprom694
  store i32 %721, ptr %arrayidx695, align 4, !tbaa !14
  %725 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %medial_nmismatches696 = getelementptr inbounds %struct.Spliceends_T, ptr %725, i32 0, i32 10
  %726 = load ptr, ptr %medial_nmismatches696, align 8, !tbaa !21
  %727 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom697 = sext i32 %727 to i64
  %arrayidx698 = getelementptr inbounds i32, ptr %726, i64 %idxprom697
  %728 = load i32, ptr %arrayidx698, align 4, !tbaa !14
  %729 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %medial_nmismatches699 = getelementptr inbounds %struct.Spliceends_T, ptr %729, i32 0, i32 10
  %730 = load ptr, ptr %medial_nmismatches699, align 8, !tbaa !21
  %731 = load i32, ptr %nspliceends, align 4, !tbaa !14
  %idxprom700 = sext i32 %731 to i64
  %arrayidx701 = getelementptr inbounds i32, ptr %730, i64 %idxprom700
  store i32 %728, ptr %arrayidx701, align 4, !tbaa !14
  %732 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %partners702 = getelementptr inbounds %struct.Spliceends_T, ptr %732, i32 0, i32 9
  %733 = load ptr, ptr %partners702, align 8, !tbaa !22
  %734 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom703 = sext i32 %734 to i64
  %arrayidx704 = getelementptr inbounds i64, ptr %733, i64 %idxprom703
  %735 = load i64, ptr %arrayidx704, align 8, !tbaa !12
  %736 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %partners705 = getelementptr inbounds %struct.Spliceends_T, ptr %736, i32 0, i32 9
  %737 = load ptr, ptr %partners705, align 8, !tbaa !22
  %738 = load i32, ptr %nspliceends, align 4, !tbaa !14
  %idxprom706 = sext i32 %738 to i64
  %arrayidx707 = getelementptr inbounds i64, ptr %737, i64 %idxprom706
  store i64 %735, ptr %arrayidx707, align 8, !tbaa !12
  %739 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_nmismatches708 = getelementptr inbounds %struct.Spliceends_T, ptr %739, i32 0, i32 11
  %740 = load ptr, ptr %distal_nmismatches708, align 8, !tbaa !20
  %741 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom709 = sext i32 %741 to i64
  %arrayidx710 = getelementptr inbounds i32, ptr %740, i64 %idxprom709
  %742 = load i32, ptr %arrayidx710, align 4, !tbaa !14
  %743 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_nmismatches711 = getelementptr inbounds %struct.Spliceends_T, ptr %743, i32 0, i32 11
  %744 = load ptr, ptr %distal_nmismatches711, align 8, !tbaa !20
  %745 = load i32, ptr %nspliceends, align 4, !tbaa !14
  %idxprom712 = sext i32 %745 to i64
  %arrayidx713 = getelementptr inbounds i32, ptr %744, i64 %idxprom712
  store i32 %742, ptr %arrayidx713, align 4, !tbaa !14
  %746 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %ambig_probs714 = getelementptr inbounds %struct.Spliceends_T, ptr %746, i32 0, i32 12
  %747 = load ptr, ptr %ambig_probs714, align 8, !tbaa !19
  %748 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom715 = sext i32 %748 to i64
  %arrayidx716 = getelementptr inbounds double, ptr %747, i64 %idxprom715
  %749 = load double, ptr %arrayidx716, align 8, !tbaa !31
  %750 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %ambig_probs717 = getelementptr inbounds %struct.Spliceends_T, ptr %750, i32 0, i32 12
  %751 = load ptr, ptr %ambig_probs717, align 8, !tbaa !19
  %752 = load i32, ptr %nspliceends, align 4, !tbaa !14
  %idxprom718 = sext i32 %752 to i64
  %arrayidx719 = getelementptr inbounds double, ptr %751, i64 %idxprom718
  store double %749, ptr %arrayidx719, align 8, !tbaa !31
  %753 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_probs720 = getelementptr inbounds %struct.Spliceends_T, ptr %753, i32 0, i32 13
  %754 = load ptr, ptr %distal_probs720, align 8, !tbaa !17
  %755 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom721 = sext i32 %755 to i64
  %arrayidx722 = getelementptr inbounds double, ptr %754, i64 %idxprom721
  %756 = load double, ptr %arrayidx722, align 8, !tbaa !31
  %757 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_probs723 = getelementptr inbounds %struct.Spliceends_T, ptr %757, i32 0, i32 13
  %758 = load ptr, ptr %distal_probs723, align 8, !tbaa !17
  %759 = load i32, ptr %nspliceends, align 4, !tbaa !14
  %inc724 = add nsw i32 %759, 1
  store i32 %inc724, ptr %nspliceends, align 4, !tbaa !14
  %idxprom725 = sext i32 %759 to i64
  %arrayidx726 = getelementptr inbounds double, ptr %758, i64 %idxprom725
  store double %756, ptr %arrayidx726, align 8, !tbaa !31
  br label %if.end727

if.end727:                                        ; preds = %if.then683, %for.body673
  br label %for.inc728

for.inc728:                                       ; preds = %if.end727
  %760 = load i32, ptr %i, align 4, !tbaa !14
  %inc729 = add nsw i32 %760, 1
  store i32 %inc729, ptr %i, align 4, !tbaa !14
  br label %for.cond670, !llvm.loop !53

for.end730:                                       ; preds = %for.cond670
  br label %if.end795

if.else731:                                       ; preds = %if.else665
  %761 = load ptr, ptr %partnerp.addr, align 8, !tbaa !5
  %762 = load i8, ptr %761, align 1, !tbaa !16
  %conv732 = zext i8 %762 to i32
  %cmp733 = icmp eq i32 %conv732, 1
  br i1 %cmp733, label %if.then735, label %if.else793

if.then735:                                       ; preds = %if.else731
  store i32 0, ptr %i, align 4, !tbaa !14
  br label %for.cond736

for.cond736:                                      ; preds = %for.inc790, %if.then735
  %763 = load i32, ptr %i, align 4, !tbaa !14
  %764 = load i32, ptr %k, align 4, !tbaa !14
  %cmp737 = icmp slt i32 %763, %764
  br i1 %cmp737, label %for.body739, label %for.end792

for.body739:                                      ; preds = %for.cond736
  %765 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %partners740 = getelementptr inbounds %struct.Spliceends_T, ptr %765, i32 0, i32 9
  %766 = load ptr, ptr %partners740, align 8, !tbaa !22
  %767 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom741 = sext i32 %767 to i64
  %arrayidx742 = getelementptr inbounds i64, ptr %766, i64 %idxprom741
  %768 = load i64, ptr %arrayidx742, align 8, !tbaa !12
  %cmp743 = icmp ne i64 %768, 0
  br i1 %cmp743, label %if.then745, label %if.end789

if.then745:                                       ; preds = %for.body739
  %769 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %matchlengths746 = getelementptr inbounds %struct.Spliceends_T, ptr %769, i32 0, i32 7
  %770 = load ptr, ptr %matchlengths746, align 8, !tbaa !24
  %771 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom747 = sext i32 %771 to i64
  %arrayidx748 = getelementptr inbounds i32, ptr %770, i64 %idxprom747
  %772 = load i32, ptr %arrayidx748, align 4, !tbaa !14
  %773 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %matchlengths749 = getelementptr inbounds %struct.Spliceends_T, ptr %773, i32 0, i32 7
  %774 = load ptr, ptr %matchlengths749, align 8, !tbaa !24
  %775 = load i32, ptr %nspliceends, align 4, !tbaa !14
  %idxprom750 = sext i32 %775 to i64
  %arrayidx751 = getelementptr inbounds i32, ptr %774, i64 %idxprom750
  store i32 %772, ptr %arrayidx751, align 4, !tbaa !14
  %776 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimends752 = getelementptr inbounds %struct.Spliceends_T, ptr %776, i32 0, i32 8
  %777 = load ptr, ptr %trimends752, align 8, !tbaa !23
  %778 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom753 = sext i32 %778 to i64
  %arrayidx754 = getelementptr inbounds i32, ptr %777, i64 %idxprom753
  %779 = load i32, ptr %arrayidx754, align 4, !tbaa !14
  %780 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimends755 = getelementptr inbounds %struct.Spliceends_T, ptr %780, i32 0, i32 8
  %781 = load ptr, ptr %trimends755, align 8, !tbaa !23
  %782 = load i32, ptr %nspliceends, align 4, !tbaa !14
  %idxprom756 = sext i32 %782 to i64
  %arrayidx757 = getelementptr inbounds i32, ptr %781, i64 %idxprom756
  store i32 %779, ptr %arrayidx757, align 4, !tbaa !14
  %783 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %medial_nmismatches758 = getelementptr inbounds %struct.Spliceends_T, ptr %783, i32 0, i32 10
  %784 = load ptr, ptr %medial_nmismatches758, align 8, !tbaa !21
  %785 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom759 = sext i32 %785 to i64
  %arrayidx760 = getelementptr inbounds i32, ptr %784, i64 %idxprom759
  %786 = load i32, ptr %arrayidx760, align 4, !tbaa !14
  %787 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %medial_nmismatches761 = getelementptr inbounds %struct.Spliceends_T, ptr %787, i32 0, i32 10
  %788 = load ptr, ptr %medial_nmismatches761, align 8, !tbaa !21
  %789 = load i32, ptr %nspliceends, align 4, !tbaa !14
  %idxprom762 = sext i32 %789 to i64
  %arrayidx763 = getelementptr inbounds i32, ptr %788, i64 %idxprom762
  store i32 %786, ptr %arrayidx763, align 4, !tbaa !14
  %790 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %partners764 = getelementptr inbounds %struct.Spliceends_T, ptr %790, i32 0, i32 9
  %791 = load ptr, ptr %partners764, align 8, !tbaa !22
  %792 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom765 = sext i32 %792 to i64
  %arrayidx766 = getelementptr inbounds i64, ptr %791, i64 %idxprom765
  %793 = load i64, ptr %arrayidx766, align 8, !tbaa !12
  %794 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %partners767 = getelementptr inbounds %struct.Spliceends_T, ptr %794, i32 0, i32 9
  %795 = load ptr, ptr %partners767, align 8, !tbaa !22
  %796 = load i32, ptr %nspliceends, align 4, !tbaa !14
  %idxprom768 = sext i32 %796 to i64
  %arrayidx769 = getelementptr inbounds i64, ptr %795, i64 %idxprom768
  store i64 %793, ptr %arrayidx769, align 8, !tbaa !12
  %797 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_nmismatches770 = getelementptr inbounds %struct.Spliceends_T, ptr %797, i32 0, i32 11
  %798 = load ptr, ptr %distal_nmismatches770, align 8, !tbaa !20
  %799 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom771 = sext i32 %799 to i64
  %arrayidx772 = getelementptr inbounds i32, ptr %798, i64 %idxprom771
  %800 = load i32, ptr %arrayidx772, align 4, !tbaa !14
  %801 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_nmismatches773 = getelementptr inbounds %struct.Spliceends_T, ptr %801, i32 0, i32 11
  %802 = load ptr, ptr %distal_nmismatches773, align 8, !tbaa !20
  %803 = load i32, ptr %nspliceends, align 4, !tbaa !14
  %idxprom774 = sext i32 %803 to i64
  %arrayidx775 = getelementptr inbounds i32, ptr %802, i64 %idxprom774
  store i32 %800, ptr %arrayidx775, align 4, !tbaa !14
  %804 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %ambig_probs776 = getelementptr inbounds %struct.Spliceends_T, ptr %804, i32 0, i32 12
  %805 = load ptr, ptr %ambig_probs776, align 8, !tbaa !19
  %806 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom777 = sext i32 %806 to i64
  %arrayidx778 = getelementptr inbounds double, ptr %805, i64 %idxprom777
  %807 = load double, ptr %arrayidx778, align 8, !tbaa !31
  %808 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %ambig_probs779 = getelementptr inbounds %struct.Spliceends_T, ptr %808, i32 0, i32 12
  %809 = load ptr, ptr %ambig_probs779, align 8, !tbaa !19
  %810 = load i32, ptr %nspliceends, align 4, !tbaa !14
  %idxprom780 = sext i32 %810 to i64
  %arrayidx781 = getelementptr inbounds double, ptr %809, i64 %idxprom780
  store double %807, ptr %arrayidx781, align 8, !tbaa !31
  %811 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_probs782 = getelementptr inbounds %struct.Spliceends_T, ptr %811, i32 0, i32 13
  %812 = load ptr, ptr %distal_probs782, align 8, !tbaa !17
  %813 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom783 = sext i32 %813 to i64
  %arrayidx784 = getelementptr inbounds double, ptr %812, i64 %idxprom783
  %814 = load double, ptr %arrayidx784, align 8, !tbaa !31
  %815 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_probs785 = getelementptr inbounds %struct.Spliceends_T, ptr %815, i32 0, i32 13
  %816 = load ptr, ptr %distal_probs785, align 8, !tbaa !17
  %817 = load i32, ptr %nspliceends, align 4, !tbaa !14
  %inc786 = add nsw i32 %817, 1
  store i32 %inc786, ptr %nspliceends, align 4, !tbaa !14
  %idxprom787 = sext i32 %817 to i64
  %arrayidx788 = getelementptr inbounds double, ptr %816, i64 %idxprom787
  store double %814, ptr %arrayidx788, align 8, !tbaa !31
  br label %if.end789

if.end789:                                        ; preds = %if.then745, %for.body739
  br label %for.inc790

for.inc790:                                       ; preds = %if.end789
  %818 = load i32, ptr %i, align 4, !tbaa !14
  %inc791 = add nsw i32 %818, 1
  store i32 %inc791, ptr %i, align 4, !tbaa !14
  br label %for.cond736, !llvm.loop !54

for.end792:                                       ; preds = %for.cond736
  br label %if.end794

if.else793:                                       ; preds = %if.else731
  store i32 1, ptr %nspliceends, align 4, !tbaa !14
  br label %if.end794

if.end794:                                        ; preds = %if.else793, %for.end792
  br label %if.end795

if.end795:                                        ; preds = %if.end794, %for.end730
  br label %if.end796

if.end796:                                        ; preds = %if.end795, %if.then664
  %819 = load i32, ptr %nspliceends, align 4, !tbaa !14
  call void @llvm.lifetime.end.p0(i64 8, ptr %left) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %novel_ndiagonals) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %nconsecutive) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %mismatchi) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %splice_qpos) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %pos5) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %querypos) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %acceptor_prob) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %donor_prob) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %matchlength) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %local_nmismatches) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %high_univdiagonal) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %low_univdiagonal) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %distal_genomicpos) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %genomicpos) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %nspliceends) #4
  ret i32 %819
}

; Function Attrs: nounwind uwtable
define internal i32 @known_spliceends_trim5_anti(ptr noundef %this, i64 noundef %end_genomicpos, i64 noundef %start_genomicpos, i32 noundef %qstart, i32 noundef %qend, ptr noundef %query_compress, i64 noundef %univdiagonal, i32 noundef %querylength, ptr noundef %knownsplicing, i8 noundef zeroext %plusp, i32 noundef %genestrand) #1 {
entry:
  %this.addr = alloca ptr, align 8
  %end_genomicpos.addr = alloca i64, align 8
  %start_genomicpos.addr = alloca i64, align 8
  %qstart.addr = alloca i32, align 4
  %qend.addr = alloca i32, align 4
  %query_compress.addr = alloca ptr, align 8
  %univdiagonal.addr = alloca i64, align 8
  %querylength.addr = alloca i32, align 4
  %knownsplicing.addr = alloca ptr, align 8
  %plusp.addr = alloca i8, align 1
  %genestrand.addr = alloca i32, align 4
  %nspliceends = alloca i32, align 4
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %endpoints = alloca ptr, align 8
  %low_rank = alloca i64, align 8
  %high_rank = alloca i64, align 8
  %rank = alloca i64, align 8
  %mismatch_positions_left = alloca ptr, align 8
  %pos5 = alloca i32, align 4
  %ref_distal_nmismatches = alloca i32, align 4
  %splice_qpos = alloca i32, align 4
  %nmismatches_left = alloca i32, align 4
  %lefti = alloca i32, align 4
  %best_adj_support = alloca i32, align 4
  %adj_support = alloca i32, align 4
  %left = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !5
  store i64 %end_genomicpos, ptr %end_genomicpos.addr, align 8, !tbaa !12
  store i64 %start_genomicpos, ptr %start_genomicpos.addr, align 8, !tbaa !12
  store i32 %qstart, ptr %qstart.addr, align 4, !tbaa !14
  store i32 %qend, ptr %qend.addr, align 4, !tbaa !14
  store ptr %query_compress, ptr %query_compress.addr, align 8, !tbaa !5
  store i64 %univdiagonal, ptr %univdiagonal.addr, align 8, !tbaa !12
  store i32 %querylength, ptr %querylength.addr, align 4, !tbaa !14
  store ptr %knownsplicing, ptr %knownsplicing.addr, align 8, !tbaa !5
  store i8 %plusp, ptr %plusp.addr, align 1, !tbaa !16
  store i32 %genestrand, ptr %genestrand.addr, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %nspliceends) #4
  store i32 0, ptr %nspliceends, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %endpoints) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %low_rank) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %high_rank) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %rank) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %mismatch_positions_left) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %pos5) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ref_distal_nmismatches) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %splice_qpos) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %nmismatches_left) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %lefti) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %best_adj_support) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %adj_support) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %left) #4
  %0 = load i64, ptr %univdiagonal.addr, align 8, !tbaa !12
  %1 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %conv = sext i32 %1 to i64
  %sub = sub i64 %0, %conv
  store i64 %sub, ptr %left, align 8, !tbaa !12
  %2 = load i8, ptr %plusp.addr, align 1, !tbaa !16
  %tobool = icmp ne i8 %2, 0
  br i1 %tobool, label %if.then, label %if.else18

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %knownsplicing.addr, align 8, !tbaa !5
  %4 = load i64, ptr %univdiagonal.addr, align 8, !tbaa !12
  %5 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %6 = load i64, ptr %start_genomicpos.addr, align 8, !tbaa !12
  %7 = load i64, ptr %left, align 8, !tbaa !12
  %sub1 = sub i64 %6, %7
  %conv2 = trunc i64 %sub1 to i32
  %8 = load i64, ptr %end_genomicpos.addr, align 8, !tbaa !12
  %9 = load i64, ptr %left, align 8, !tbaa !12
  %sub3 = sub i64 %8, %9
  %conv4 = trunc i64 %sub3 to i32
  %call = call ptr @Knownsplicing_antidonors(ptr noundef %low_rank, ptr noundef %high_rank, ptr noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %conv2, i32 noundef %conv4)
  store ptr %call, ptr %endpoints, align 8, !tbaa !5
  %10 = load i64, ptr %high_rank, align 8, !tbaa !12
  %11 = load i64, ptr %low_rank, align 8, !tbaa !12
  %sub5 = sub i64 %10, %11
  %cmp = icmp ugt i64 %sub5, 30
  br i1 %cmp, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.then
  br label %if.end

if.else:                                          ; preds = %if.then
  %12 = load i64, ptr %low_rank, align 8, !tbaa !12
  store i64 %12, ptr %rank, align 8, !tbaa !12
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %13 = load i64, ptr %rank, align 8, !tbaa !12
  %14 = load i64, ptr %high_rank, align 8, !tbaa !12
  %cmp8 = icmp ult i64 %13, %14
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load ptr, ptr %endpoints, align 8, !tbaa !5
  %16 = load i64, ptr %rank, align 8, !tbaa !12
  %mul = mul i64 2, %16
  %arrayidx = getelementptr inbounds i64, ptr %15, i64 %mul
  %17 = load i64, ptr %arrayidx, align 8, !tbaa !12
  %18 = load i64, ptr %left, align 8, !tbaa !12
  %sub10 = sub i64 %17, %18
  %conv11 = trunc i64 %sub10 to i32
  %19 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimends = getelementptr inbounds %struct.Spliceends_T, ptr %19, i32 0, i32 8
  %20 = load ptr, ptr %trimends, align 8, !tbaa !23
  %21 = load i32, ptr %nspliceends, align 4, !tbaa !14
  %idxprom = sext i32 %21 to i64
  %arrayidx12 = getelementptr inbounds i32, ptr %20, i64 %idxprom
  store i32 %conv11, ptr %arrayidx12, align 4, !tbaa !14
  %22 = load ptr, ptr %endpoints, align 8, !tbaa !5
  %23 = load i64, ptr %rank, align 8, !tbaa !12
  %mul13 = mul i64 2, %23
  %add = add i64 %mul13, 1
  %arrayidx14 = getelementptr inbounds i64, ptr %22, i64 %add
  %24 = load i64, ptr %arrayidx14, align 8, !tbaa !12
  %25 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %partners = getelementptr inbounds %struct.Spliceends_T, ptr %25, i32 0, i32 9
  %26 = load ptr, ptr %partners, align 8, !tbaa !22
  %27 = load i32, ptr %nspliceends, align 4, !tbaa !14
  %inc = add nsw i32 %27, 1
  store i32 %inc, ptr %nspliceends, align 4, !tbaa !14
  %idxprom15 = sext i32 %27 to i64
  %arrayidx16 = getelementptr inbounds i64, ptr %26, i64 %idxprom15
  store i64 %24, ptr %arrayidx16, align 8, !tbaa !12
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %28 = load i64, ptr %rank, align 8, !tbaa !12
  %inc17 = add i64 %28, 1
  store i64 %inc17, ptr %rank, align 8, !tbaa !12
  br label %for.cond, !llvm.loop !55

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then7
  br label %if.end51

if.else18:                                        ; preds = %entry
  %29 = load ptr, ptr %knownsplicing.addr, align 8, !tbaa !5
  %30 = load i64, ptr %univdiagonal.addr, align 8, !tbaa !12
  %31 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %32 = load i64, ptr %start_genomicpos.addr, align 8, !tbaa !12
  %33 = load i64, ptr %left, align 8, !tbaa !12
  %sub19 = sub i64 %32, %33
  %conv20 = trunc i64 %sub19 to i32
  %34 = load i64, ptr %end_genomicpos.addr, align 8, !tbaa !12
  %35 = load i64, ptr %left, align 8, !tbaa !12
  %sub21 = sub i64 %34, %35
  %conv22 = trunc i64 %sub21 to i32
  %call23 = call ptr @Knownsplicing_acceptors(ptr noundef %low_rank, ptr noundef %high_rank, ptr noundef %29, i64 noundef %30, i32 noundef %31, i32 noundef %conv20, i32 noundef %conv22)
  store ptr %call23, ptr %endpoints, align 8, !tbaa !5
  %36 = load i64, ptr %high_rank, align 8, !tbaa !12
  %37 = load i64, ptr %low_rank, align 8, !tbaa !12
  %sub24 = sub i64 %36, %37
  %cmp25 = icmp ugt i64 %sub24, 30
  br i1 %cmp25, label %if.then27, label %if.else28

if.then27:                                        ; preds = %if.else18
  br label %if.end50

if.else28:                                        ; preds = %if.else18
  %38 = load i64, ptr %low_rank, align 8, !tbaa !12
  store i64 %38, ptr %rank, align 8, !tbaa !12
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc47, %if.else28
  %39 = load i64, ptr %rank, align 8, !tbaa !12
  %40 = load i64, ptr %high_rank, align 8, !tbaa !12
  %cmp30 = icmp ult i64 %39, %40
  br i1 %cmp30, label %for.body32, label %for.end49

for.body32:                                       ; preds = %for.cond29
  %41 = load ptr, ptr %endpoints, align 8, !tbaa !5
  %42 = load i64, ptr %rank, align 8, !tbaa !12
  %mul33 = mul i64 2, %42
  %arrayidx34 = getelementptr inbounds i64, ptr %41, i64 %mul33
  %43 = load i64, ptr %arrayidx34, align 8, !tbaa !12
  %44 = load i64, ptr %left, align 8, !tbaa !12
  %sub35 = sub i64 %43, %44
  %conv36 = trunc i64 %sub35 to i32
  %45 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimends37 = getelementptr inbounds %struct.Spliceends_T, ptr %45, i32 0, i32 8
  %46 = load ptr, ptr %trimends37, align 8, !tbaa !23
  %47 = load i32, ptr %nspliceends, align 4, !tbaa !14
  %idxprom38 = sext i32 %47 to i64
  %arrayidx39 = getelementptr inbounds i32, ptr %46, i64 %idxprom38
  store i32 %conv36, ptr %arrayidx39, align 4, !tbaa !14
  %48 = load ptr, ptr %endpoints, align 8, !tbaa !5
  %49 = load i64, ptr %rank, align 8, !tbaa !12
  %mul40 = mul i64 2, %49
  %add41 = add i64 %mul40, 1
  %arrayidx42 = getelementptr inbounds i64, ptr %48, i64 %add41
  %50 = load i64, ptr %arrayidx42, align 8, !tbaa !12
  %51 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %partners43 = getelementptr inbounds %struct.Spliceends_T, ptr %51, i32 0, i32 9
  %52 = load ptr, ptr %partners43, align 8, !tbaa !22
  %53 = load i32, ptr %nspliceends, align 4, !tbaa !14
  %inc44 = add nsw i32 %53, 1
  store i32 %inc44, ptr %nspliceends, align 4, !tbaa !14
  %idxprom45 = sext i32 %53 to i64
  %arrayidx46 = getelementptr inbounds i64, ptr %52, i64 %idxprom45
  store i64 %50, ptr %arrayidx46, align 8, !tbaa !12
  br label %for.inc47

for.inc47:                                        ; preds = %for.body32
  %54 = load i64, ptr %rank, align 8, !tbaa !12
  %inc48 = add i64 %54, 1
  store i64 %inc48, ptr %rank, align 8, !tbaa !12
  br label %for.cond29, !llvm.loop !56

for.end49:                                        ; preds = %for.cond29
  br label %if.end50

if.end50:                                         ; preds = %for.end49, %if.then27
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %if.end
  %55 = load i32, ptr %nspliceends, align 4, !tbaa !14
  %cmp52 = icmp sgt i32 %55, 0
  br i1 %cmp52, label %if.then54, label %if.end145

if.then54:                                        ; preds = %if.end51
  %56 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimends55 = getelementptr inbounds %struct.Spliceends_T, ptr %56, i32 0, i32 8
  %57 = load ptr, ptr %trimends55, align 8, !tbaa !23
  %58 = load i32, ptr %nspliceends, align 4, !tbaa !14
  %call56 = call i32 @min_spliceend(ptr noundef %57, i32 noundef %58)
  store i32 %call56, ptr %pos5, align 4, !tbaa !14
  %59 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %mismatch_positions_left57 = getelementptr inbounds %struct.Spliceends_T, ptr %59, i32 0, i32 5
  %60 = load ptr, ptr %mismatch_positions_left57, align 8, !tbaa !25
  store ptr %60, ptr %mismatch_positions_left, align 8, !tbaa !5
  %61 = load ptr, ptr %mismatch_positions_left, align 8, !tbaa !5
  %62 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %63 = load ptr, ptr @genomebits, align 8, !tbaa !5
  %64 = load ptr, ptr @genomebits_alt, align 8, !tbaa !5
  %65 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %66 = load i64, ptr %univdiagonal.addr, align 8, !tbaa !12
  %67 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %68 = load i32, ptr %pos5, align 4, !tbaa !14
  %69 = load i32, ptr %qend.addr, align 4, !tbaa !14
  %70 = load i8, ptr %plusp.addr, align 1, !tbaa !16
  %71 = load i32, ptr %genestrand.addr, align 4, !tbaa !14
  %call58 = call i32 @Genomebits_mismatches_fromleft(ptr noundef %61, i32 noundef %62, ptr noundef %63, ptr noundef %64, ptr noundef %65, i64 noundef %66, i32 noundef %67, i32 noundef %68, i32 noundef %69, i8 noundef zeroext %70, i32 noundef %71)
  store i32 %call58, ptr %nmismatches_left, align 4, !tbaa !14
  store i32 0, ptr %best_adj_support, align 4, !tbaa !14
  store i32 0, ptr %i, align 4, !tbaa !14
  br label %for.cond59

for.cond59:                                       ; preds = %for.inc85, %if.then54
  %72 = load i32, ptr %i, align 4, !tbaa !14
  %73 = load i32, ptr %nspliceends, align 4, !tbaa !14
  %cmp60 = icmp slt i32 %72, %73
  br i1 %cmp60, label %for.body62, label %for.end87

for.body62:                                       ; preds = %for.cond59
  %74 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimends63 = getelementptr inbounds %struct.Spliceends_T, ptr %74, i32 0, i32 8
  %75 = load ptr, ptr %trimends63, align 8, !tbaa !23
  %76 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom64 = sext i32 %76 to i64
  %arrayidx65 = getelementptr inbounds i32, ptr %75, i64 %idxprom64
  %77 = load i32, ptr %arrayidx65, align 4, !tbaa !14
  store i32 %77, ptr %splice_qpos, align 4, !tbaa !14
  %78 = load ptr, ptr @genomebits, align 8, !tbaa !5
  %79 = load ptr, ptr @genomebits_alt, align 8, !tbaa !5
  %80 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %81 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %partners66 = getelementptr inbounds %struct.Spliceends_T, ptr %81, i32 0, i32 9
  %82 = load ptr, ptr %partners66, align 8, !tbaa !22
  %83 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom67 = sext i32 %83 to i64
  %arrayidx68 = getelementptr inbounds i64, ptr %82, i64 %idxprom67
  %84 = load i64, ptr %arrayidx68, align 8, !tbaa !12
  %85 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %conv69 = sext i32 %85 to i64
  %sub70 = sub i64 %84, %conv69
  %86 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %conv71 = sext i32 %86 to i64
  %add72 = add i64 %sub70, %conv71
  %87 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %88 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %89 = load i8, ptr %plusp.addr, align 1, !tbaa !16
  %90 = load i32, ptr %genestrand.addr, align 4, !tbaa !14
  %call73 = call i32 @Genomebits_count_mismatches_substring(ptr noundef %ref_distal_nmismatches, ptr noundef %78, ptr noundef %79, ptr noundef %80, i64 noundef %add72, i32 noundef %87, i32 noundef 0, i32 noundef %88, i8 noundef zeroext %89, i32 noundef %90)
  %91 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_nmismatches = getelementptr inbounds %struct.Spliceends_T, ptr %91, i32 0, i32 11
  %92 = load ptr, ptr %distal_nmismatches, align 8, !tbaa !20
  %93 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom74 = sext i32 %93 to i64
  %arrayidx75 = getelementptr inbounds i32, ptr %92, i64 %idxprom74
  store i32 %call73, ptr %arrayidx75, align 4, !tbaa !14
  %94 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %95 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_nmismatches76 = getelementptr inbounds %struct.Spliceends_T, ptr %95, i32 0, i32 11
  %96 = load ptr, ptr %distal_nmismatches76, align 8, !tbaa !20
  %97 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom77 = sext i32 %97 to i64
  %arrayidx78 = getelementptr inbounds i32, ptr %96, i64 %idxprom77
  %98 = load i32, ptr %arrayidx78, align 4, !tbaa !14
  %mul79 = mul nsw i32 3, %98
  %sub80 = sub nsw i32 %94, %mul79
  store i32 %sub80, ptr %adj_support, align 4, !tbaa !14
  %99 = load i32, ptr %best_adj_support, align 4, !tbaa !14
  %cmp81 = icmp sgt i32 %sub80, %99
  br i1 %cmp81, label %if.then83, label %if.end84

if.then83:                                        ; preds = %for.body62
  %100 = load i32, ptr %adj_support, align 4, !tbaa !14
  store i32 %100, ptr %best_adj_support, align 4, !tbaa !14
  br label %if.end84

if.end84:                                         ; preds = %if.then83, %for.body62
  br label %for.inc85

for.inc85:                                        ; preds = %if.end84
  %101 = load i32, ptr %i, align 4, !tbaa !14
  %inc86 = add nsw i32 %101, 1
  store i32 %inc86, ptr %i, align 4, !tbaa !14
  br label %for.cond59, !llvm.loop !57

for.end87:                                        ; preds = %for.cond59
  %102 = load i32, ptr %best_adj_support, align 4, !tbaa !14
  %cmp88 = icmp eq i32 %102, 0
  br i1 %cmp88, label %if.then90, label %if.else91

if.then90:                                        ; preds = %for.end87
  store i32 0, ptr %nspliceends, align 4, !tbaa !14
  br label %if.end144

if.else91:                                        ; preds = %for.end87
  store i32 0, ptr %k, align 4, !tbaa !14
  store i32 0, ptr %lefti, align 4, !tbaa !14
  store i32 0, ptr %i, align 4, !tbaa !14
  br label %for.cond92

for.cond92:                                       ; preds = %for.inc141, %if.else91
  %103 = load i32, ptr %i, align 4, !tbaa !14
  %104 = load i32, ptr %nspliceends, align 4, !tbaa !14
  %cmp93 = icmp slt i32 %103, %104
  br i1 %cmp93, label %for.body95, label %for.end143

for.body95:                                       ; preds = %for.cond92
  %105 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimends96 = getelementptr inbounds %struct.Spliceends_T, ptr %105, i32 0, i32 8
  %106 = load ptr, ptr %trimends96, align 8, !tbaa !23
  %107 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom97 = sext i32 %107 to i64
  %arrayidx98 = getelementptr inbounds i32, ptr %106, i64 %idxprom97
  %108 = load i32, ptr %arrayidx98, align 4, !tbaa !14
  store i32 %108, ptr %splice_qpos, align 4, !tbaa !14
  %109 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %110 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_nmismatches99 = getelementptr inbounds %struct.Spliceends_T, ptr %110, i32 0, i32 11
  %111 = load ptr, ptr %distal_nmismatches99, align 8, !tbaa !20
  %112 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom100 = sext i32 %112 to i64
  %arrayidx101 = getelementptr inbounds i32, ptr %111, i64 %idxprom100
  %113 = load i32, ptr %arrayidx101, align 4, !tbaa !14
  %mul102 = mul nsw i32 3, %113
  %sub103 = sub nsw i32 %109, %mul102
  %114 = load i32, ptr %best_adj_support, align 4, !tbaa !14
  %cmp104 = icmp slt i32 %sub103, %114
  br i1 %cmp104, label %if.then106, label %if.else107

if.then106:                                       ; preds = %for.body95
  br label %if.end140

if.else107:                                       ; preds = %for.body95
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else107
  %115 = load i32, ptr %lefti, align 4, !tbaa !14
  %116 = load i32, ptr %nmismatches_left, align 4, !tbaa !14
  %cmp108 = icmp slt i32 %115, %116
  br i1 %cmp108, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %117 = load ptr, ptr %mismatch_positions_left, align 8, !tbaa !5
  %118 = load i32, ptr %lefti, align 4, !tbaa !14
  %idxprom110 = sext i32 %118 to i64
  %arrayidx111 = getelementptr inbounds i32, ptr %117, i64 %idxprom110
  %119 = load i32, ptr %arrayidx111, align 4, !tbaa !14
  %120 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %cmp112 = icmp slt i32 %119, %120
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %121 = phi i1 [ false, %while.cond ], [ %cmp112, %land.rhs ]
  br i1 %121, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %122 = load i32, ptr %lefti, align 4, !tbaa !14
  %inc114 = add nsw i32 %122, 1
  store i32 %inc114, ptr %lefti, align 4, !tbaa !14
  br label %while.cond, !llvm.loop !58

while.end:                                        ; preds = %land.end
  %123 = load i32, ptr %nmismatches_left, align 4, !tbaa !14
  %124 = load i32, ptr %lefti, align 4, !tbaa !14
  %sub115 = sub nsw i32 %123, %124
  %125 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %medial_nmismatches = getelementptr inbounds %struct.Spliceends_T, ptr %125, i32 0, i32 10
  %126 = load ptr, ptr %medial_nmismatches, align 8, !tbaa !21
  %127 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom116 = sext i32 %127 to i64
  %arrayidx117 = getelementptr inbounds i32, ptr %126, i64 %idxprom116
  store i32 %sub115, ptr %arrayidx117, align 4, !tbaa !14
  %128 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %129 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %matchlengths = getelementptr inbounds %struct.Spliceends_T, ptr %129, i32 0, i32 7
  %130 = load ptr, ptr %matchlengths, align 8, !tbaa !24
  %131 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom118 = sext i32 %131 to i64
  %arrayidx119 = getelementptr inbounds i32, ptr %130, i64 %idxprom118
  store i32 %128, ptr %arrayidx119, align 4, !tbaa !14
  %132 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %133 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimends120 = getelementptr inbounds %struct.Spliceends_T, ptr %133, i32 0, i32 8
  %134 = load ptr, ptr %trimends120, align 8, !tbaa !23
  %135 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom121 = sext i32 %135 to i64
  %arrayidx122 = getelementptr inbounds i32, ptr %134, i64 %idxprom121
  store i32 %132, ptr %arrayidx122, align 4, !tbaa !14
  %136 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %partners123 = getelementptr inbounds %struct.Spliceends_T, ptr %136, i32 0, i32 9
  %137 = load ptr, ptr %partners123, align 8, !tbaa !22
  %138 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom124 = sext i32 %138 to i64
  %arrayidx125 = getelementptr inbounds i64, ptr %137, i64 %idxprom124
  %139 = load i64, ptr %arrayidx125, align 8, !tbaa !12
  %140 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %partners126 = getelementptr inbounds %struct.Spliceends_T, ptr %140, i32 0, i32 9
  %141 = load ptr, ptr %partners126, align 8, !tbaa !22
  %142 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom127 = sext i32 %142 to i64
  %arrayidx128 = getelementptr inbounds i64, ptr %141, i64 %idxprom127
  store i64 %139, ptr %arrayidx128, align 8, !tbaa !12
  %143 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_nmismatches129 = getelementptr inbounds %struct.Spliceends_T, ptr %143, i32 0, i32 11
  %144 = load ptr, ptr %distal_nmismatches129, align 8, !tbaa !20
  %145 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom130 = sext i32 %145 to i64
  %arrayidx131 = getelementptr inbounds i32, ptr %144, i64 %idxprom130
  %146 = load i32, ptr %arrayidx131, align 4, !tbaa !14
  %147 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_nmismatches132 = getelementptr inbounds %struct.Spliceends_T, ptr %147, i32 0, i32 11
  %148 = load ptr, ptr %distal_nmismatches132, align 8, !tbaa !20
  %149 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom133 = sext i32 %149 to i64
  %arrayidx134 = getelementptr inbounds i32, ptr %148, i64 %idxprom133
  store i32 %146, ptr %arrayidx134, align 4, !tbaa !14
  %150 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %ambig_probs = getelementptr inbounds %struct.Spliceends_T, ptr %150, i32 0, i32 12
  %151 = load ptr, ptr %ambig_probs, align 8, !tbaa !19
  %152 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom135 = sext i32 %152 to i64
  %arrayidx136 = getelementptr inbounds double, ptr %151, i64 %idxprom135
  store double 1.000000e+00, ptr %arrayidx136, align 8, !tbaa !31
  %153 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_probs = getelementptr inbounds %struct.Spliceends_T, ptr %153, i32 0, i32 13
  %154 = load ptr, ptr %distal_probs, align 8, !tbaa !17
  %155 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom137 = sext i32 %155 to i64
  %arrayidx138 = getelementptr inbounds double, ptr %154, i64 %idxprom137
  store double 1.000000e+00, ptr %arrayidx138, align 8, !tbaa !31
  %156 = load i32, ptr %k, align 4, !tbaa !14
  %inc139 = add nsw i32 %156, 1
  store i32 %inc139, ptr %k, align 4, !tbaa !14
  br label %if.end140

if.end140:                                        ; preds = %while.end, %if.then106
  br label %for.inc141

for.inc141:                                       ; preds = %if.end140
  %157 = load i32, ptr %i, align 4, !tbaa !14
  %inc142 = add nsw i32 %157, 1
  store i32 %inc142, ptr %i, align 4, !tbaa !14
  br label %for.cond92, !llvm.loop !59

for.end143:                                       ; preds = %for.cond92
  %158 = load i32, ptr %k, align 4, !tbaa !14
  store i32 %158, ptr %nspliceends, align 4, !tbaa !14
  br label %if.end144

if.end144:                                        ; preds = %for.end143, %if.then90
  br label %if.end145

if.end145:                                        ; preds = %if.end144, %if.end51
  %159 = load i32, ptr %nspliceends, align 4, !tbaa !14
  call void @llvm.lifetime.end.p0(i64 8, ptr %left) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %adj_support) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %best_adj_support) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %lefti) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %nmismatches_left) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %splice_qpos) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %ref_distal_nmismatches) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %pos5) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %mismatch_positions_left) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %rank) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %high_rank) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %low_rank) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %endpoints) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %nspliceends) #4
  ret i32 %159
}

; Function Attrs: nounwind uwtable
define internal i32 @novel_spliceends_trim5_anti(ptr noundef %max_prob, ptr noundef %partnerp, ptr noundef %this, i64 noundef %end_genomicpos, i64 noundef %start_genomicpos, i64 noundef %middle_genomicpos, ptr noundef %mismatch_positions, i32 noundef %total_nmismatches, i64 noundef %univdiagonal, i32 noundef %querylength, ptr noundef %query_compress, ptr noundef %queryptr, i64 noundef %chroffset, ptr noundef %novel_diagonals_alloc, ptr noundef %localdb_alloc, i32 noundef %streamspace_max_alloc, ptr noundef %streamspace_alloc, ptr noundef %streamptr_alloc, ptr noundef %streamsize_alloc, ptr noundef %mergeinfo, double noundef %medial_splicesite_prob, double noundef %distal_splicesite_prob, i32 noundef %max_nconsecutive, i8 noundef zeroext %plusp, i32 noundef %genestrand, i32 noundef %nmismatches_allowed, i8 noundef zeroext %search_localdb_p, i8 noundef zeroext %innerp, i8 noundef zeroext %salvagep) #1 {
entry:
  %max_prob.addr = alloca ptr, align 8
  %partnerp.addr = alloca ptr, align 8
  %this.addr = alloca ptr, align 8
  %end_genomicpos.addr = alloca i64, align 8
  %start_genomicpos.addr = alloca i64, align 8
  %middle_genomicpos.addr = alloca i64, align 8
  %mismatch_positions.addr = alloca ptr, align 8
  %total_nmismatches.addr = alloca i32, align 4
  %univdiagonal.addr = alloca i64, align 8
  %querylength.addr = alloca i32, align 4
  %query_compress.addr = alloca ptr, align 8
  %queryptr.addr = alloca ptr, align 8
  %chroffset.addr = alloca i64, align 8
  %novel_diagonals_alloc.addr = alloca ptr, align 8
  %localdb_alloc.addr = alloca ptr, align 8
  %streamspace_max_alloc.addr = alloca i32, align 4
  %streamspace_alloc.addr = alloca ptr, align 8
  %streamptr_alloc.addr = alloca ptr, align 8
  %streamsize_alloc.addr = alloca ptr, align 8
  %mergeinfo.addr = alloca ptr, align 8
  %medial_splicesite_prob.addr = alloca double, align 8
  %distal_splicesite_prob.addr = alloca double, align 8
  %max_nconsecutive.addr = alloca i32, align 4
  %plusp.addr = alloca i8, align 1
  %genestrand.addr = alloca i32, align 4
  %nmismatches_allowed.addr = alloca i32, align 4
  %search_localdb_p.addr = alloca i8, align 1
  %innerp.addr = alloca i8, align 1
  %salvagep.addr = alloca i8, align 1
  %nspliceends = alloca i32, align 4
  %k = alloca i32, align 4
  %genomicpos = alloca i64, align 8
  %distal_genomicpos = alloca i64, align 8
  %low_univdiagonal = alloca i64, align 8
  %high_univdiagonal = alloca i64, align 8
  %local_nmismatches = alloca i32, align 4
  %matchlength = alloca i32, align 4
  %donor_prob = alloca double, align 8
  %acceptor_prob = alloca double, align 8
  %querypos = alloca i32, align 4
  %pos5 = alloca i32, align 4
  %splice_qpos = alloca i32, align 4
  %mismatchi = alloca i32, align 4
  %nconsecutive = alloca i32, align 4
  %novel_ndiagonals = alloca i32, align 4
  %i = alloca i32, align 4
  %left = alloca i64, align 8
  store ptr %max_prob, ptr %max_prob.addr, align 8, !tbaa !5
  store ptr %partnerp, ptr %partnerp.addr, align 8, !tbaa !5
  store ptr %this, ptr %this.addr, align 8, !tbaa !5
  store i64 %end_genomicpos, ptr %end_genomicpos.addr, align 8, !tbaa !12
  store i64 %start_genomicpos, ptr %start_genomicpos.addr, align 8, !tbaa !12
  store i64 %middle_genomicpos, ptr %middle_genomicpos.addr, align 8, !tbaa !12
  store ptr %mismatch_positions, ptr %mismatch_positions.addr, align 8, !tbaa !5
  store i32 %total_nmismatches, ptr %total_nmismatches.addr, align 4, !tbaa !14
  store i64 %univdiagonal, ptr %univdiagonal.addr, align 8, !tbaa !12
  store i32 %querylength, ptr %querylength.addr, align 4, !tbaa !14
  store ptr %query_compress, ptr %query_compress.addr, align 8, !tbaa !5
  store ptr %queryptr, ptr %queryptr.addr, align 8, !tbaa !5
  store i64 %chroffset, ptr %chroffset.addr, align 8, !tbaa !12
  store ptr %novel_diagonals_alloc, ptr %novel_diagonals_alloc.addr, align 8, !tbaa !5
  store ptr %localdb_alloc, ptr %localdb_alloc.addr, align 8, !tbaa !5
  store i32 %streamspace_max_alloc, ptr %streamspace_max_alloc.addr, align 4, !tbaa !14
  store ptr %streamspace_alloc, ptr %streamspace_alloc.addr, align 8, !tbaa !5
  store ptr %streamptr_alloc, ptr %streamptr_alloc.addr, align 8, !tbaa !5
  store ptr %streamsize_alloc, ptr %streamsize_alloc.addr, align 8, !tbaa !5
  store ptr %mergeinfo, ptr %mergeinfo.addr, align 8, !tbaa !5
  store double %medial_splicesite_prob, ptr %medial_splicesite_prob.addr, align 8, !tbaa !31
  store double %distal_splicesite_prob, ptr %distal_splicesite_prob.addr, align 8, !tbaa !31
  store i32 %max_nconsecutive, ptr %max_nconsecutive.addr, align 4, !tbaa !14
  store i8 %plusp, ptr %plusp.addr, align 1, !tbaa !16
  store i32 %genestrand, ptr %genestrand.addr, align 4, !tbaa !14
  store i32 %nmismatches_allowed, ptr %nmismatches_allowed.addr, align 4, !tbaa !14
  store i8 %search_localdb_p, ptr %search_localdb_p.addr, align 1, !tbaa !16
  store i8 %innerp, ptr %innerp.addr, align 1, !tbaa !16
  store i8 %salvagep, ptr %salvagep.addr, align 1, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 4, ptr %nspliceends) #4
  store i32 0, ptr %nspliceends, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #4
  store i32 0, ptr %k, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 8, ptr %genomicpos) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %distal_genomicpos) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %low_univdiagonal) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %high_univdiagonal) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %local_nmismatches) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %matchlength) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %donor_prob) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %acceptor_prob) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %querypos) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %pos5) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %splice_qpos) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %mismatchi) #4
  %0 = load i32, ptr %total_nmismatches.addr, align 4, !tbaa !14
  store i32 %0, ptr %mismatchi, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %nconsecutive) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %novel_ndiagonals) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %left) #4
  %1 = load i64, ptr %univdiagonal.addr, align 8, !tbaa !12
  %2 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %conv = sext i32 %2 to i64
  %sub = sub i64 %1, %conv
  store i64 %sub, ptr %left, align 8, !tbaa !12
  %3 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  store double 0.000000e+00, ptr %3, align 8, !tbaa !31
  %4 = load ptr, ptr %partnerp.addr, align 8, !tbaa !5
  store i8 0, ptr %4, align 1, !tbaa !16
  %5 = load i64, ptr %univdiagonal.addr, align 8, !tbaa !12
  %sub1 = sub i64 %5, 9
  store i64 %sub1, ptr %high_univdiagonal, align 8, !tbaa !12
  store i32 0, ptr %pos5, align 4, !tbaa !14
  %6 = load i64, ptr %high_univdiagonal, align 8, !tbaa !12
  %7 = load i64, ptr %chroffset.addr, align 8, !tbaa !12
  %8 = load i32, ptr @shortsplicedist_novelend, align 4, !tbaa !14
  %conv2 = zext i32 %8 to i64
  %add = add i64 %7, %conv2
  %cmp = icmp ult i64 %6, %add
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %9 = load i64, ptr %chroffset.addr, align 8, !tbaa !12
  br label %cond.end

cond.false:                                       ; preds = %entry
  %10 = load i64, ptr %high_univdiagonal, align 8, !tbaa !12
  %11 = load i32, ptr @shortsplicedist_novelend, align 4, !tbaa !14
  %conv4 = zext i32 %11 to i64
  %sub5 = sub i64 %10, %conv4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %9, %cond.true ], [ %sub5, %cond.false ]
  store i64 %cond, ptr %low_univdiagonal, align 8, !tbaa !12
  %12 = load i64, ptr %start_genomicpos.addr, align 8, !tbaa !12
  store i64 %12, ptr %genomicpos, align 8, !tbaa !12
  %13 = load i64, ptr %genomicpos, align 8, !tbaa !12
  %14 = load i64, ptr %left, align 8, !tbaa !12
  %sub6 = sub i64 %13, %14
  %conv7 = trunc i64 %sub6 to i32
  store i32 %conv7, ptr %querypos, align 4, !tbaa !14
  br label %while.cond

while.cond:                                       ; preds = %while.body, %cond.end
  %15 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %sub8 = sub nsw i32 %15, 1
  %cmp9 = icmp sge i32 %sub8, 0
  br i1 %cmp9, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %16 = load ptr, ptr %mismatch_positions.addr, align 8, !tbaa !5
  %17 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %sub11 = sub nsw i32 %17, 1
  %idxprom = sext i32 %sub11 to i64
  %arrayidx = getelementptr inbounds i32, ptr %16, i64 %idxprom
  %18 = load i32, ptr %arrayidx, align 4, !tbaa !14
  %19 = load i32, ptr %querypos, align 4, !tbaa !14
  %cmp12 = icmp slt i32 %18, %19
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %20 = phi i1 [ false, %while.cond ], [ %cmp12, %land.rhs ]
  br i1 %20, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %21 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %dec = add nsw i32 %21, -1
  store i32 %dec, ptr %mismatchi, align 4, !tbaa !14
  br label %while.cond, !llvm.loop !60

while.end:                                        ; preds = %land.end
  %22 = load i8, ptr %plusp.addr, align 1, !tbaa !16
  %tobool = icmp ne i8 %22, 0
  br i1 %tobool, label %if.then, label %if.else329

if.then:                                          ; preds = %while.end
  br label %while.cond14

while.cond14:                                     ; preds = %if.end157, %if.then
  %23 = load i32, ptr %k, align 4, !tbaa !14
  %cmp15 = icmp slt i32 %23, 30
  br i1 %cmp15, label %land.rhs17, label %land.end20

land.rhs17:                                       ; preds = %while.cond14
  %24 = load i64, ptr %genomicpos, align 8, !tbaa !12
  %25 = load i64, ptr %middle_genomicpos.addr, align 8, !tbaa !12
  %cmp18 = icmp ult i64 %24, %25
  br label %land.end20

land.end20:                                       ; preds = %land.rhs17, %while.cond14
  %26 = phi i1 [ false, %while.cond14 ], [ %cmp18, %land.rhs17 ]
  br i1 %26, label %while.body21, label %while.end160

while.body21:                                     ; preds = %land.end20
  %27 = load i64, ptr %genomicpos, align 8, !tbaa !12
  %28 = load i64, ptr %chroffset.addr, align 8, !tbaa !12
  %call = call double @Maxent_hr_antidonor_prob(i64 noundef %27, i64 noundef %28)
  store double %call, ptr %donor_prob, align 8, !tbaa !31
  %29 = load double, ptr %donor_prob, align 8, !tbaa !31
  %30 = load double, ptr %medial_splicesite_prob.addr, align 8, !tbaa !31
  %cmp22 = fcmp oge double %29, %30
  br i1 %cmp22, label %if.then24, label %if.end146

if.then24:                                        ; preds = %while.body21
  %31 = load i64, ptr %genomicpos, align 8, !tbaa !12
  %32 = load i64, ptr %left, align 8, !tbaa !12
  %sub25 = sub i64 %31, %32
  %conv26 = trunc i64 %sub25 to i32
  store i32 %conv26, ptr %splice_qpos, align 4, !tbaa !14
  %33 = load i8, ptr %search_localdb_p.addr, align 1, !tbaa !16
  %conv27 = zext i8 %33 to i32
  %cmp28 = icmp eq i32 %conv27, 0
  br i1 %cmp28, label %if.then30, label %if.else

if.then30:                                        ; preds = %if.then24
  %34 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %35 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimends = getelementptr inbounds %struct.Spliceends_T, ptr %35, i32 0, i32 8
  %36 = load ptr, ptr %trimends, align 8, !tbaa !23
  %37 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom31 = sext i32 %37 to i64
  %arrayidx32 = getelementptr inbounds i32, ptr %36, i64 %idxprom31
  store i32 %34, ptr %arrayidx32, align 4, !tbaa !14
  %38 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %39 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %medial_nmismatches = getelementptr inbounds %struct.Spliceends_T, ptr %39, i32 0, i32 10
  %40 = load ptr, ptr %medial_nmismatches, align 8, !tbaa !21
  %41 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom33 = sext i32 %41 to i64
  %arrayidx34 = getelementptr inbounds i32, ptr %40, i64 %idxprom33
  store i32 %38, ptr %arrayidx34, align 4, !tbaa !14
  %42 = load double, ptr %donor_prob, align 8, !tbaa !31
  %43 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %ambig_probs = getelementptr inbounds %struct.Spliceends_T, ptr %43, i32 0, i32 12
  %44 = load ptr, ptr %ambig_probs, align 8, !tbaa !19
  %45 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom35 = sext i32 %45 to i64
  %arrayidx36 = getelementptr inbounds double, ptr %44, i64 %idxprom35
  store double %42, ptr %arrayidx36, align 8, !tbaa !31
  %46 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_probs = getelementptr inbounds %struct.Spliceends_T, ptr %46, i32 0, i32 13
  %47 = load ptr, ptr %distal_probs, align 8, !tbaa !17
  %48 = load i32, ptr %k, align 4, !tbaa !14
  %inc = add nsw i32 %48, 1
  store i32 %inc, ptr %k, align 4, !tbaa !14
  %idxprom37 = sext i32 %48 to i64
  %arrayidx38 = getelementptr inbounds double, ptr %47, i64 %idxprom37
  store double 0.000000e+00, ptr %arrayidx38, align 8, !tbaa !31
  %49 = load double, ptr %donor_prob, align 8, !tbaa !31
  %50 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  %51 = load double, ptr %50, align 8, !tbaa !31
  %cmp39 = fcmp ogt double %49, %51
  br i1 %cmp39, label %if.then41, label %if.end

if.then41:                                        ; preds = %if.then30
  %52 = load double, ptr %donor_prob, align 8, !tbaa !31
  %53 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  store double %52, ptr %53, align 8, !tbaa !31
  br label %if.end

if.end:                                           ; preds = %if.then41, %if.then30
  br label %if.end145

if.else:                                          ; preds = %if.then24
  %54 = load ptr, ptr %novel_diagonals_alloc.addr, align 8, !tbaa !5
  %55 = load ptr, ptr @localdb, align 8, !tbaa !5
  %56 = load ptr, ptr %localdb_alloc.addr, align 8, !tbaa !5
  %57 = load i32, ptr %streamspace_max_alloc.addr, align 4, !tbaa !14
  %58 = load ptr, ptr %streamspace_alloc.addr, align 8, !tbaa !5
  %59 = load ptr, ptr %streamptr_alloc.addr, align 8, !tbaa !5
  %60 = load ptr, ptr %streamsize_alloc.addr, align 8, !tbaa !5
  %61 = load ptr, ptr %mergeinfo.addr, align 8, !tbaa !5
  %62 = load ptr, ptr %queryptr.addr, align 8, !tbaa !5
  %63 = load i32, ptr %pos5, align 4, !tbaa !14
  %64 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %65 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %66 = load i64, ptr %low_univdiagonal, align 8, !tbaa !12
  %67 = load i64, ptr %high_univdiagonal, align 8, !tbaa !12
  %68 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %69 = load i8, ptr %plusp.addr, align 1, !tbaa !16
  %70 = load i32, ptr %genestrand.addr, align 4, !tbaa !14
  %71 = load ptr, ptr @genomebits, align 8, !tbaa !5
  %72 = load i32, ptr %nmismatches_allowed.addr, align 4, !tbaa !14
  %73 = load i8, ptr %salvagep.addr, align 1, !tbaa !16
  %call42 = call i32 @Localdb_get(ptr noundef %matchlength, ptr noundef %local_nmismatches, ptr noundef %54, ptr noundef %55, ptr noundef %56, i32 noundef %57, ptr noundef %58, ptr noundef %59, ptr noundef %60, ptr noundef %61, ptr noundef %62, i32 noundef %63, i32 noundef %64, i32 noundef %65, i64 noundef %66, i64 noundef %67, ptr noundef %68, i8 noundef zeroext %69, i32 noundef %70, ptr noundef %71, i32 noundef %72, i8 noundef zeroext %73)
  store i32 %call42, ptr %novel_ndiagonals, align 4, !tbaa !14
  %cmp43 = icmp eq i32 %call42, 0
  br i1 %cmp43, label %if.then45, label %if.else69

if.then45:                                        ; preds = %if.else
  %74 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %matchlengths = getelementptr inbounds %struct.Spliceends_T, ptr %74, i32 0, i32 7
  %75 = load ptr, ptr %matchlengths, align 8, !tbaa !24
  %76 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom46 = sext i32 %76 to i64
  %arrayidx47 = getelementptr inbounds i32, ptr %75, i64 %idxprom46
  store i32 0, ptr %arrayidx47, align 4, !tbaa !14
  %77 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %78 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimends48 = getelementptr inbounds %struct.Spliceends_T, ptr %78, i32 0, i32 8
  %79 = load ptr, ptr %trimends48, align 8, !tbaa !23
  %80 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom49 = sext i32 %80 to i64
  %arrayidx50 = getelementptr inbounds i32, ptr %79, i64 %idxprom49
  store i32 %77, ptr %arrayidx50, align 4, !tbaa !14
  %81 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %82 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %medial_nmismatches51 = getelementptr inbounds %struct.Spliceends_T, ptr %82, i32 0, i32 10
  %83 = load ptr, ptr %medial_nmismatches51, align 8, !tbaa !21
  %84 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom52 = sext i32 %84 to i64
  %arrayidx53 = getelementptr inbounds i32, ptr %83, i64 %idxprom52
  store i32 %81, ptr %arrayidx53, align 4, !tbaa !14
  %85 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %partners = getelementptr inbounds %struct.Spliceends_T, ptr %85, i32 0, i32 9
  %86 = load ptr, ptr %partners, align 8, !tbaa !22
  %87 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom54 = sext i32 %87 to i64
  %arrayidx55 = getelementptr inbounds i64, ptr %86, i64 %idxprom54
  store i64 0, ptr %arrayidx55, align 8, !tbaa !12
  %88 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_nmismatches = getelementptr inbounds %struct.Spliceends_T, ptr %88, i32 0, i32 11
  %89 = load ptr, ptr %distal_nmismatches, align 8, !tbaa !20
  %90 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom56 = sext i32 %90 to i64
  %arrayidx57 = getelementptr inbounds i32, ptr %89, i64 %idxprom56
  store i32 -1, ptr %arrayidx57, align 4, !tbaa !14
  %91 = load double, ptr %donor_prob, align 8, !tbaa !31
  %92 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %ambig_probs58 = getelementptr inbounds %struct.Spliceends_T, ptr %92, i32 0, i32 12
  %93 = load ptr, ptr %ambig_probs58, align 8, !tbaa !19
  %94 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom59 = sext i32 %94 to i64
  %arrayidx60 = getelementptr inbounds double, ptr %93, i64 %idxprom59
  store double %91, ptr %arrayidx60, align 8, !tbaa !31
  %95 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_probs61 = getelementptr inbounds %struct.Spliceends_T, ptr %95, i32 0, i32 13
  %96 = load ptr, ptr %distal_probs61, align 8, !tbaa !17
  %97 = load i32, ptr %k, align 4, !tbaa !14
  %inc62 = add nsw i32 %97, 1
  store i32 %inc62, ptr %k, align 4, !tbaa !14
  %idxprom63 = sext i32 %97 to i64
  %arrayidx64 = getelementptr inbounds double, ptr %96, i64 %idxprom63
  store double 0.000000e+00, ptr %arrayidx64, align 8, !tbaa !31
  %98 = load double, ptr %donor_prob, align 8, !tbaa !31
  %99 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  %100 = load double, ptr %99, align 8, !tbaa !31
  %cmp65 = fcmp ogt double %98, %100
  br i1 %cmp65, label %if.then67, label %if.end68

if.then67:                                        ; preds = %if.then45
  %101 = load double, ptr %donor_prob, align 8, !tbaa !31
  %102 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  store double %101, ptr %102, align 8, !tbaa !31
  br label %if.end68

if.end68:                                         ; preds = %if.then67, %if.then45
  br label %if.end144

if.else69:                                        ; preds = %if.else
  %103 = load i32, ptr %k, align 4, !tbaa !14
  %104 = load i32, ptr %novel_ndiagonals, align 4, !tbaa !14
  %add70 = add nsw i32 %103, %104
  %cmp71 = icmp sgt i32 %add70, 30
  br i1 %cmp71, label %if.then73, label %if.else100

if.then73:                                        ; preds = %if.else69
  %105 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %matchlengths74 = getelementptr inbounds %struct.Spliceends_T, ptr %105, i32 0, i32 7
  %106 = load ptr, ptr %matchlengths74, align 8, !tbaa !24
  %107 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom75 = sext i32 %107 to i64
  %arrayidx76 = getelementptr inbounds i32, ptr %106, i64 %idxprom75
  store i32 0, ptr %arrayidx76, align 4, !tbaa !14
  %108 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %109 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimends77 = getelementptr inbounds %struct.Spliceends_T, ptr %109, i32 0, i32 8
  %110 = load ptr, ptr %trimends77, align 8, !tbaa !23
  %111 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom78 = sext i32 %111 to i64
  %arrayidx79 = getelementptr inbounds i32, ptr %110, i64 %idxprom78
  store i32 %108, ptr %arrayidx79, align 4, !tbaa !14
  %112 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %113 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %medial_nmismatches80 = getelementptr inbounds %struct.Spliceends_T, ptr %113, i32 0, i32 10
  %114 = load ptr, ptr %medial_nmismatches80, align 8, !tbaa !21
  %115 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom81 = sext i32 %115 to i64
  %arrayidx82 = getelementptr inbounds i32, ptr %114, i64 %idxprom81
  store i32 %112, ptr %arrayidx82, align 4, !tbaa !14
  %116 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %partners83 = getelementptr inbounds %struct.Spliceends_T, ptr %116, i32 0, i32 9
  %117 = load ptr, ptr %partners83, align 8, !tbaa !22
  %118 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom84 = sext i32 %118 to i64
  %arrayidx85 = getelementptr inbounds i64, ptr %117, i64 %idxprom84
  store i64 0, ptr %arrayidx85, align 8, !tbaa !12
  %119 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_nmismatches86 = getelementptr inbounds %struct.Spliceends_T, ptr %119, i32 0, i32 11
  %120 = load ptr, ptr %distal_nmismatches86, align 8, !tbaa !20
  %121 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom87 = sext i32 %121 to i64
  %arrayidx88 = getelementptr inbounds i32, ptr %120, i64 %idxprom87
  store i32 -1, ptr %arrayidx88, align 4, !tbaa !14
  %122 = load double, ptr %donor_prob, align 8, !tbaa !31
  %123 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %ambig_probs89 = getelementptr inbounds %struct.Spliceends_T, ptr %123, i32 0, i32 12
  %124 = load ptr, ptr %ambig_probs89, align 8, !tbaa !19
  %125 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom90 = sext i32 %125 to i64
  %arrayidx91 = getelementptr inbounds double, ptr %124, i64 %idxprom90
  store double %122, ptr %arrayidx91, align 8, !tbaa !31
  %126 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_probs92 = getelementptr inbounds %struct.Spliceends_T, ptr %126, i32 0, i32 13
  %127 = load ptr, ptr %distal_probs92, align 8, !tbaa !17
  %128 = load i32, ptr %k, align 4, !tbaa !14
  %inc93 = add nsw i32 %128, 1
  store i32 %inc93, ptr %k, align 4, !tbaa !14
  %idxprom94 = sext i32 %128 to i64
  %arrayidx95 = getelementptr inbounds double, ptr %127, i64 %idxprom94
  store double 0.000000e+00, ptr %arrayidx95, align 8, !tbaa !31
  %129 = load double, ptr %donor_prob, align 8, !tbaa !31
  %130 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  %131 = load double, ptr %130, align 8, !tbaa !31
  %cmp96 = fcmp ogt double %129, %131
  br i1 %cmp96, label %if.then98, label %if.end99

if.then98:                                        ; preds = %if.then73
  %132 = load double, ptr %donor_prob, align 8, !tbaa !31
  %133 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  store double %132, ptr %133, align 8, !tbaa !31
  br label %if.end99

if.end99:                                         ; preds = %if.then98, %if.then73
  br label %if.end143

if.else100:                                       ; preds = %if.else69
  store i32 0, ptr %i, align 4, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else100
  %134 = load i32, ptr %i, align 4, !tbaa !14
  %135 = load i32, ptr %novel_ndiagonals, align 4, !tbaa !14
  %cmp101 = icmp slt i32 %134, %135
  br i1 %cmp101, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %136 = load ptr, ptr %novel_diagonals_alloc.addr, align 8, !tbaa !5
  %137 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom103 = sext i32 %137 to i64
  %arrayidx104 = getelementptr inbounds i64, ptr %136, i64 %idxprom103
  %138 = load i64, ptr %arrayidx104, align 8, !tbaa !12
  %139 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %conv105 = sext i32 %139 to i64
  %sub106 = sub i64 %138, %conv105
  %140 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %conv107 = sext i32 %140 to i64
  %add108 = add i64 %sub106, %conv107
  store i64 %add108, ptr %distal_genomicpos, align 8, !tbaa !12
  %141 = load i64, ptr %distal_genomicpos, align 8, !tbaa !12
  %142 = load i64, ptr %chroffset.addr, align 8, !tbaa !12
  %call109 = call double @Maxent_hr_antiacceptor_prob(i64 noundef %141, i64 noundef %142)
  store double %call109, ptr %acceptor_prob, align 8, !tbaa !31
  %143 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %144 = load double, ptr %distal_splicesite_prob.addr, align 8, !tbaa !31
  %cmp110 = fcmp oge double %143, %144
  br i1 %cmp110, label %if.then112, label %if.end141

if.then112:                                       ; preds = %for.body
  %145 = load i32, ptr %matchlength, align 4, !tbaa !14
  %146 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %matchlengths113 = getelementptr inbounds %struct.Spliceends_T, ptr %146, i32 0, i32 7
  %147 = load ptr, ptr %matchlengths113, align 8, !tbaa !24
  %148 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom114 = sext i32 %148 to i64
  %arrayidx115 = getelementptr inbounds i32, ptr %147, i64 %idxprom114
  store i32 %145, ptr %arrayidx115, align 4, !tbaa !14
  %149 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %150 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimends116 = getelementptr inbounds %struct.Spliceends_T, ptr %150, i32 0, i32 8
  %151 = load ptr, ptr %trimends116, align 8, !tbaa !23
  %152 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom117 = sext i32 %152 to i64
  %arrayidx118 = getelementptr inbounds i32, ptr %151, i64 %idxprom117
  store i32 %149, ptr %arrayidx118, align 4, !tbaa !14
  %153 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %154 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %medial_nmismatches119 = getelementptr inbounds %struct.Spliceends_T, ptr %154, i32 0, i32 10
  %155 = load ptr, ptr %medial_nmismatches119, align 8, !tbaa !21
  %156 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom120 = sext i32 %156 to i64
  %arrayidx121 = getelementptr inbounds i32, ptr %155, i64 %idxprom120
  store i32 %153, ptr %arrayidx121, align 4, !tbaa !14
  %157 = load i64, ptr %distal_genomicpos, align 8, !tbaa !12
  %158 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %partners122 = getelementptr inbounds %struct.Spliceends_T, ptr %158, i32 0, i32 9
  %159 = load ptr, ptr %partners122, align 8, !tbaa !22
  %160 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom123 = sext i32 %160 to i64
  %arrayidx124 = getelementptr inbounds i64, ptr %159, i64 %idxprom123
  store i64 %157, ptr %arrayidx124, align 8, !tbaa !12
  %161 = load i32, ptr %local_nmismatches, align 4, !tbaa !14
  %162 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_nmismatches125 = getelementptr inbounds %struct.Spliceends_T, ptr %162, i32 0, i32 11
  %163 = load ptr, ptr %distal_nmismatches125, align 8, !tbaa !20
  %164 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom126 = sext i32 %164 to i64
  %arrayidx127 = getelementptr inbounds i32, ptr %163, i64 %idxprom126
  store i32 %161, ptr %arrayidx127, align 4, !tbaa !14
  %165 = load double, ptr %donor_prob, align 8, !tbaa !31
  %166 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %ambig_probs128 = getelementptr inbounds %struct.Spliceends_T, ptr %166, i32 0, i32 12
  %167 = load ptr, ptr %ambig_probs128, align 8, !tbaa !19
  %168 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom129 = sext i32 %168 to i64
  %arrayidx130 = getelementptr inbounds double, ptr %167, i64 %idxprom129
  store double %165, ptr %arrayidx130, align 8, !tbaa !31
  %169 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %170 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_probs131 = getelementptr inbounds %struct.Spliceends_T, ptr %170, i32 0, i32 13
  %171 = load ptr, ptr %distal_probs131, align 8, !tbaa !17
  %172 = load i32, ptr %k, align 4, !tbaa !14
  %inc132 = add nsw i32 %172, 1
  store i32 %inc132, ptr %k, align 4, !tbaa !14
  %idxprom133 = sext i32 %172 to i64
  %arrayidx134 = getelementptr inbounds double, ptr %171, i64 %idxprom133
  store double %169, ptr %arrayidx134, align 8, !tbaa !31
  %173 = load double, ptr %donor_prob, align 8, !tbaa !31
  %174 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %add135 = fadd double %173, %174
  %175 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  %176 = load double, ptr %175, align 8, !tbaa !31
  %cmp136 = fcmp ogt double %add135, %176
  br i1 %cmp136, label %if.then138, label %if.end140

if.then138:                                       ; preds = %if.then112
  %177 = load double, ptr %donor_prob, align 8, !tbaa !31
  %178 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %add139 = fadd double %177, %178
  %179 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  store double %add139, ptr %179, align 8, !tbaa !31
  br label %if.end140

if.end140:                                        ; preds = %if.then138, %if.then112
  %180 = load ptr, ptr %partnerp.addr, align 8, !tbaa !5
  store i8 1, ptr %180, align 1, !tbaa !16
  br label %if.end141

if.end141:                                        ; preds = %if.end140, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end141
  %181 = load i32, ptr %i, align 4, !tbaa !14
  %inc142 = add nsw i32 %181, 1
  store i32 %inc142, ptr %i, align 4, !tbaa !14
  br label %for.cond, !llvm.loop !61

for.end:                                          ; preds = %for.cond
  br label %if.end143

if.end143:                                        ; preds = %for.end, %if.end99
  br label %if.end144

if.end144:                                        ; preds = %if.end143, %if.end68
  br label %if.end145

if.end145:                                        ; preds = %if.end144, %if.end
  br label %if.end146

if.end146:                                        ; preds = %if.end145, %while.body21
  %182 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %sub147 = sub nsw i32 %182, 1
  %cmp148 = icmp sge i32 %sub147, 0
  br i1 %cmp148, label %land.lhs.true, label %if.end157

land.lhs.true:                                    ; preds = %if.end146
  %183 = load ptr, ptr %mismatch_positions.addr, align 8, !tbaa !5
  %184 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %sub150 = sub nsw i32 %184, 1
  %idxprom151 = sext i32 %sub150 to i64
  %arrayidx152 = getelementptr inbounds i32, ptr %183, i64 %idxprom151
  %185 = load i32, ptr %arrayidx152, align 4, !tbaa !14
  %186 = load i32, ptr %querypos, align 4, !tbaa !14
  %cmp153 = icmp eq i32 %185, %186
  br i1 %cmp153, label %if.then155, label %if.end157

if.then155:                                       ; preds = %land.lhs.true
  %187 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %dec156 = add nsw i32 %187, -1
  store i32 %dec156, ptr %mismatchi, align 4, !tbaa !14
  br label %if.end157

if.end157:                                        ; preds = %if.then155, %land.lhs.true, %if.end146
  %188 = load i32, ptr %querypos, align 4, !tbaa !14
  %inc158 = add nsw i32 %188, 1
  store i32 %inc158, ptr %querypos, align 4, !tbaa !14
  %189 = load i64, ptr %genomicpos, align 8, !tbaa !12
  %inc159 = add i64 %189, 1
  store i64 %inc159, ptr %genomicpos, align 8, !tbaa !12
  br label %while.cond14, !llvm.loop !62

while.end160:                                     ; preds = %land.end20
  store i32 0, ptr %nconsecutive, align 4, !tbaa !14
  br label %while.cond161

while.cond161:                                    ; preds = %if.end325, %while.end160
  %190 = load i32, ptr %k, align 4, !tbaa !14
  %cmp162 = icmp slt i32 %190, 30
  br i1 %cmp162, label %land.lhs.true164, label %land.end170

land.lhs.true164:                                 ; preds = %while.cond161
  %191 = load i64, ptr %genomicpos, align 8, !tbaa !12
  %192 = load i64, ptr %end_genomicpos.addr, align 8, !tbaa !12
  %cmp165 = icmp ult i64 %191, %192
  br i1 %cmp165, label %land.rhs167, label %land.end170

land.rhs167:                                      ; preds = %land.lhs.true164
  %193 = load i32, ptr %nconsecutive, align 4, !tbaa !14
  %194 = load i32, ptr %max_nconsecutive.addr, align 4, !tbaa !14
  %cmp168 = icmp slt i32 %193, %194
  br label %land.end170

land.end170:                                      ; preds = %land.rhs167, %land.lhs.true164, %while.cond161
  %195 = phi i1 [ false, %land.lhs.true164 ], [ false, %while.cond161 ], [ %cmp168, %land.rhs167 ]
  br i1 %195, label %while.body171, label %while.end328

while.body171:                                    ; preds = %land.end170
  %196 = load i64, ptr %genomicpos, align 8, !tbaa !12
  %197 = load i64, ptr %chroffset.addr, align 8, !tbaa !12
  %call172 = call double @Maxent_hr_antidonor_prob(i64 noundef %196, i64 noundef %197)
  store double %call172, ptr %donor_prob, align 8, !tbaa !31
  %198 = load double, ptr %donor_prob, align 8, !tbaa !31
  %199 = load double, ptr %medial_splicesite_prob.addr, align 8, !tbaa !31
  %cmp173 = fcmp oge double %198, %199
  br i1 %cmp173, label %if.then175, label %if.end311

if.then175:                                       ; preds = %while.body171
  %200 = load i64, ptr %genomicpos, align 8, !tbaa !12
  %201 = load i64, ptr %left, align 8, !tbaa !12
  %sub176 = sub i64 %200, %201
  %conv177 = trunc i64 %sub176 to i32
  store i32 %conv177, ptr %splice_qpos, align 4, !tbaa !14
  %202 = load i8, ptr %search_localdb_p.addr, align 1, !tbaa !16
  %conv178 = zext i8 %202 to i32
  %cmp179 = icmp eq i32 %conv178, 0
  br i1 %cmp179, label %if.then181, label %if.else199

if.then181:                                       ; preds = %if.then175
  %203 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %204 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimends182 = getelementptr inbounds %struct.Spliceends_T, ptr %204, i32 0, i32 8
  %205 = load ptr, ptr %trimends182, align 8, !tbaa !23
  %206 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom183 = sext i32 %206 to i64
  %arrayidx184 = getelementptr inbounds i32, ptr %205, i64 %idxprom183
  store i32 %203, ptr %arrayidx184, align 4, !tbaa !14
  %207 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %208 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %medial_nmismatches185 = getelementptr inbounds %struct.Spliceends_T, ptr %208, i32 0, i32 10
  %209 = load ptr, ptr %medial_nmismatches185, align 8, !tbaa !21
  %210 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom186 = sext i32 %210 to i64
  %arrayidx187 = getelementptr inbounds i32, ptr %209, i64 %idxprom186
  store i32 %207, ptr %arrayidx187, align 4, !tbaa !14
  %211 = load double, ptr %donor_prob, align 8, !tbaa !31
  %212 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %ambig_probs188 = getelementptr inbounds %struct.Spliceends_T, ptr %212, i32 0, i32 12
  %213 = load ptr, ptr %ambig_probs188, align 8, !tbaa !19
  %214 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom189 = sext i32 %214 to i64
  %arrayidx190 = getelementptr inbounds double, ptr %213, i64 %idxprom189
  store double %211, ptr %arrayidx190, align 8, !tbaa !31
  %215 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_probs191 = getelementptr inbounds %struct.Spliceends_T, ptr %215, i32 0, i32 13
  %216 = load ptr, ptr %distal_probs191, align 8, !tbaa !17
  %217 = load i32, ptr %k, align 4, !tbaa !14
  %inc192 = add nsw i32 %217, 1
  store i32 %inc192, ptr %k, align 4, !tbaa !14
  %idxprom193 = sext i32 %217 to i64
  %arrayidx194 = getelementptr inbounds double, ptr %216, i64 %idxprom193
  store double 0.000000e+00, ptr %arrayidx194, align 8, !tbaa !31
  %218 = load double, ptr %donor_prob, align 8, !tbaa !31
  %219 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  %220 = load double, ptr %219, align 8, !tbaa !31
  %cmp195 = fcmp ogt double %218, %220
  br i1 %cmp195, label %if.then197, label %if.end198

if.then197:                                       ; preds = %if.then181
  %221 = load double, ptr %donor_prob, align 8, !tbaa !31
  %222 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  store double %221, ptr %222, align 8, !tbaa !31
  br label %if.end198

if.end198:                                        ; preds = %if.then197, %if.then181
  br label %if.end310

if.else199:                                       ; preds = %if.then175
  %223 = load ptr, ptr %novel_diagonals_alloc.addr, align 8, !tbaa !5
  %224 = load ptr, ptr @localdb, align 8, !tbaa !5
  %225 = load ptr, ptr %localdb_alloc.addr, align 8, !tbaa !5
  %226 = load i32, ptr %streamspace_max_alloc.addr, align 4, !tbaa !14
  %227 = load ptr, ptr %streamspace_alloc.addr, align 8, !tbaa !5
  %228 = load ptr, ptr %streamptr_alloc.addr, align 8, !tbaa !5
  %229 = load ptr, ptr %streamsize_alloc.addr, align 8, !tbaa !5
  %230 = load ptr, ptr %mergeinfo.addr, align 8, !tbaa !5
  %231 = load ptr, ptr %queryptr.addr, align 8, !tbaa !5
  %232 = load i32, ptr %pos5, align 4, !tbaa !14
  %233 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %234 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %235 = load i64, ptr %low_univdiagonal, align 8, !tbaa !12
  %236 = load i64, ptr %high_univdiagonal, align 8, !tbaa !12
  %237 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %238 = load i8, ptr %plusp.addr, align 1, !tbaa !16
  %239 = load i32, ptr %genestrand.addr, align 4, !tbaa !14
  %240 = load ptr, ptr @genomebits, align 8, !tbaa !5
  %241 = load i32, ptr %nmismatches_allowed.addr, align 4, !tbaa !14
  %242 = load i8, ptr %salvagep.addr, align 1, !tbaa !16
  %call200 = call i32 @Localdb_get(ptr noundef %matchlength, ptr noundef %local_nmismatches, ptr noundef %223, ptr noundef %224, ptr noundef %225, i32 noundef %226, ptr noundef %227, ptr noundef %228, ptr noundef %229, ptr noundef %230, ptr noundef %231, i32 noundef %232, i32 noundef %233, i32 noundef %234, i64 noundef %235, i64 noundef %236, ptr noundef %237, i8 noundef zeroext %238, i32 noundef %239, ptr noundef %240, i32 noundef %241, i8 noundef zeroext %242)
  store i32 %call200, ptr %novel_ndiagonals, align 4, !tbaa !14
  %cmp201 = icmp eq i32 %call200, 0
  br i1 %cmp201, label %if.then203, label %if.else230

if.then203:                                       ; preds = %if.else199
  %243 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %matchlengths204 = getelementptr inbounds %struct.Spliceends_T, ptr %243, i32 0, i32 7
  %244 = load ptr, ptr %matchlengths204, align 8, !tbaa !24
  %245 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom205 = sext i32 %245 to i64
  %arrayidx206 = getelementptr inbounds i32, ptr %244, i64 %idxprom205
  store i32 0, ptr %arrayidx206, align 4, !tbaa !14
  %246 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %247 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimends207 = getelementptr inbounds %struct.Spliceends_T, ptr %247, i32 0, i32 8
  %248 = load ptr, ptr %trimends207, align 8, !tbaa !23
  %249 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom208 = sext i32 %249 to i64
  %arrayidx209 = getelementptr inbounds i32, ptr %248, i64 %idxprom208
  store i32 %246, ptr %arrayidx209, align 4, !tbaa !14
  %250 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %251 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %medial_nmismatches210 = getelementptr inbounds %struct.Spliceends_T, ptr %251, i32 0, i32 10
  %252 = load ptr, ptr %medial_nmismatches210, align 8, !tbaa !21
  %253 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom211 = sext i32 %253 to i64
  %arrayidx212 = getelementptr inbounds i32, ptr %252, i64 %idxprom211
  store i32 %250, ptr %arrayidx212, align 4, !tbaa !14
  %254 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %partners213 = getelementptr inbounds %struct.Spliceends_T, ptr %254, i32 0, i32 9
  %255 = load ptr, ptr %partners213, align 8, !tbaa !22
  %256 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom214 = sext i32 %256 to i64
  %arrayidx215 = getelementptr inbounds i64, ptr %255, i64 %idxprom214
  store i64 0, ptr %arrayidx215, align 8, !tbaa !12
  %257 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_nmismatches216 = getelementptr inbounds %struct.Spliceends_T, ptr %257, i32 0, i32 11
  %258 = load ptr, ptr %distal_nmismatches216, align 8, !tbaa !20
  %259 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom217 = sext i32 %259 to i64
  %arrayidx218 = getelementptr inbounds i32, ptr %258, i64 %idxprom217
  store i32 -1, ptr %arrayidx218, align 4, !tbaa !14
  %260 = load double, ptr %donor_prob, align 8, !tbaa !31
  %261 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %ambig_probs219 = getelementptr inbounds %struct.Spliceends_T, ptr %261, i32 0, i32 12
  %262 = load ptr, ptr %ambig_probs219, align 8, !tbaa !19
  %263 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom220 = sext i32 %263 to i64
  %arrayidx221 = getelementptr inbounds double, ptr %262, i64 %idxprom220
  store double %260, ptr %arrayidx221, align 8, !tbaa !31
  %264 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_probs222 = getelementptr inbounds %struct.Spliceends_T, ptr %264, i32 0, i32 13
  %265 = load ptr, ptr %distal_probs222, align 8, !tbaa !17
  %266 = load i32, ptr %k, align 4, !tbaa !14
  %inc223 = add nsw i32 %266, 1
  store i32 %inc223, ptr %k, align 4, !tbaa !14
  %idxprom224 = sext i32 %266 to i64
  %arrayidx225 = getelementptr inbounds double, ptr %265, i64 %idxprom224
  store double 0.000000e+00, ptr %arrayidx225, align 8, !tbaa !31
  %267 = load double, ptr %donor_prob, align 8, !tbaa !31
  %268 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  %269 = load double, ptr %268, align 8, !tbaa !31
  %cmp226 = fcmp ogt double %267, %269
  br i1 %cmp226, label %if.then228, label %if.end229

if.then228:                                       ; preds = %if.then203
  %270 = load double, ptr %donor_prob, align 8, !tbaa !31
  %271 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  store double %270, ptr %271, align 8, !tbaa !31
  br label %if.end229

if.end229:                                        ; preds = %if.then228, %if.then203
  br label %if.end309

if.else230:                                       ; preds = %if.else199
  %272 = load i32, ptr %k, align 4, !tbaa !14
  %273 = load i32, ptr %novel_ndiagonals, align 4, !tbaa !14
  %add231 = add nsw i32 %272, %273
  %cmp232 = icmp sgt i32 %add231, 30
  br i1 %cmp232, label %if.then234, label %if.else261

if.then234:                                       ; preds = %if.else230
  %274 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %matchlengths235 = getelementptr inbounds %struct.Spliceends_T, ptr %274, i32 0, i32 7
  %275 = load ptr, ptr %matchlengths235, align 8, !tbaa !24
  %276 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom236 = sext i32 %276 to i64
  %arrayidx237 = getelementptr inbounds i32, ptr %275, i64 %idxprom236
  store i32 0, ptr %arrayidx237, align 4, !tbaa !14
  %277 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %278 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimends238 = getelementptr inbounds %struct.Spliceends_T, ptr %278, i32 0, i32 8
  %279 = load ptr, ptr %trimends238, align 8, !tbaa !23
  %280 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom239 = sext i32 %280 to i64
  %arrayidx240 = getelementptr inbounds i32, ptr %279, i64 %idxprom239
  store i32 %277, ptr %arrayidx240, align 4, !tbaa !14
  %281 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %282 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %medial_nmismatches241 = getelementptr inbounds %struct.Spliceends_T, ptr %282, i32 0, i32 10
  %283 = load ptr, ptr %medial_nmismatches241, align 8, !tbaa !21
  %284 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom242 = sext i32 %284 to i64
  %arrayidx243 = getelementptr inbounds i32, ptr %283, i64 %idxprom242
  store i32 %281, ptr %arrayidx243, align 4, !tbaa !14
  %285 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %partners244 = getelementptr inbounds %struct.Spliceends_T, ptr %285, i32 0, i32 9
  %286 = load ptr, ptr %partners244, align 8, !tbaa !22
  %287 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom245 = sext i32 %287 to i64
  %arrayidx246 = getelementptr inbounds i64, ptr %286, i64 %idxprom245
  store i64 0, ptr %arrayidx246, align 8, !tbaa !12
  %288 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_nmismatches247 = getelementptr inbounds %struct.Spliceends_T, ptr %288, i32 0, i32 11
  %289 = load ptr, ptr %distal_nmismatches247, align 8, !tbaa !20
  %290 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom248 = sext i32 %290 to i64
  %arrayidx249 = getelementptr inbounds i32, ptr %289, i64 %idxprom248
  store i32 -1, ptr %arrayidx249, align 4, !tbaa !14
  %291 = load double, ptr %donor_prob, align 8, !tbaa !31
  %292 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %ambig_probs250 = getelementptr inbounds %struct.Spliceends_T, ptr %292, i32 0, i32 12
  %293 = load ptr, ptr %ambig_probs250, align 8, !tbaa !19
  %294 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom251 = sext i32 %294 to i64
  %arrayidx252 = getelementptr inbounds double, ptr %293, i64 %idxprom251
  store double %291, ptr %arrayidx252, align 8, !tbaa !31
  %295 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_probs253 = getelementptr inbounds %struct.Spliceends_T, ptr %295, i32 0, i32 13
  %296 = load ptr, ptr %distal_probs253, align 8, !tbaa !17
  %297 = load i32, ptr %k, align 4, !tbaa !14
  %inc254 = add nsw i32 %297, 1
  store i32 %inc254, ptr %k, align 4, !tbaa !14
  %idxprom255 = sext i32 %297 to i64
  %arrayidx256 = getelementptr inbounds double, ptr %296, i64 %idxprom255
  store double 0.000000e+00, ptr %arrayidx256, align 8, !tbaa !31
  %298 = load double, ptr %donor_prob, align 8, !tbaa !31
  %299 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  %300 = load double, ptr %299, align 8, !tbaa !31
  %cmp257 = fcmp ogt double %298, %300
  br i1 %cmp257, label %if.then259, label %if.end260

if.then259:                                       ; preds = %if.then234
  %301 = load double, ptr %donor_prob, align 8, !tbaa !31
  %302 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  store double %301, ptr %302, align 8, !tbaa !31
  br label %if.end260

if.end260:                                        ; preds = %if.then259, %if.then234
  br label %if.end308

if.else261:                                       ; preds = %if.else230
  store i32 0, ptr %i, align 4, !tbaa !14
  br label %for.cond262

for.cond262:                                      ; preds = %for.inc305, %if.else261
  %303 = load i32, ptr %i, align 4, !tbaa !14
  %304 = load i32, ptr %novel_ndiagonals, align 4, !tbaa !14
  %cmp263 = icmp slt i32 %303, %304
  br i1 %cmp263, label %for.body265, label %for.end307

for.body265:                                      ; preds = %for.cond262
  %305 = load ptr, ptr %novel_diagonals_alloc.addr, align 8, !tbaa !5
  %306 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom266 = sext i32 %306 to i64
  %arrayidx267 = getelementptr inbounds i64, ptr %305, i64 %idxprom266
  %307 = load i64, ptr %arrayidx267, align 8, !tbaa !12
  %308 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %conv268 = sext i32 %308 to i64
  %sub269 = sub i64 %307, %conv268
  %309 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %conv270 = sext i32 %309 to i64
  %add271 = add i64 %sub269, %conv270
  store i64 %add271, ptr %distal_genomicpos, align 8, !tbaa !12
  %310 = load i64, ptr %distal_genomicpos, align 8, !tbaa !12
  %311 = load i64, ptr %chroffset.addr, align 8, !tbaa !12
  %call272 = call double @Maxent_hr_antiacceptor_prob(i64 noundef %310, i64 noundef %311)
  store double %call272, ptr %acceptor_prob, align 8, !tbaa !31
  %312 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %313 = load double, ptr %distal_splicesite_prob.addr, align 8, !tbaa !31
  %cmp273 = fcmp oge double %312, %313
  br i1 %cmp273, label %if.then275, label %if.end304

if.then275:                                       ; preds = %for.body265
  %314 = load i32, ptr %matchlength, align 4, !tbaa !14
  %315 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %matchlengths276 = getelementptr inbounds %struct.Spliceends_T, ptr %315, i32 0, i32 7
  %316 = load ptr, ptr %matchlengths276, align 8, !tbaa !24
  %317 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom277 = sext i32 %317 to i64
  %arrayidx278 = getelementptr inbounds i32, ptr %316, i64 %idxprom277
  store i32 %314, ptr %arrayidx278, align 4, !tbaa !14
  %318 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %319 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimends279 = getelementptr inbounds %struct.Spliceends_T, ptr %319, i32 0, i32 8
  %320 = load ptr, ptr %trimends279, align 8, !tbaa !23
  %321 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom280 = sext i32 %321 to i64
  %arrayidx281 = getelementptr inbounds i32, ptr %320, i64 %idxprom280
  store i32 %318, ptr %arrayidx281, align 4, !tbaa !14
  %322 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %323 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %medial_nmismatches282 = getelementptr inbounds %struct.Spliceends_T, ptr %323, i32 0, i32 10
  %324 = load ptr, ptr %medial_nmismatches282, align 8, !tbaa !21
  %325 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom283 = sext i32 %325 to i64
  %arrayidx284 = getelementptr inbounds i32, ptr %324, i64 %idxprom283
  store i32 %322, ptr %arrayidx284, align 4, !tbaa !14
  %326 = load i64, ptr %distal_genomicpos, align 8, !tbaa !12
  %327 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %partners285 = getelementptr inbounds %struct.Spliceends_T, ptr %327, i32 0, i32 9
  %328 = load ptr, ptr %partners285, align 8, !tbaa !22
  %329 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom286 = sext i32 %329 to i64
  %arrayidx287 = getelementptr inbounds i64, ptr %328, i64 %idxprom286
  store i64 %326, ptr %arrayidx287, align 8, !tbaa !12
  %330 = load i32, ptr %local_nmismatches, align 4, !tbaa !14
  %331 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_nmismatches288 = getelementptr inbounds %struct.Spliceends_T, ptr %331, i32 0, i32 11
  %332 = load ptr, ptr %distal_nmismatches288, align 8, !tbaa !20
  %333 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom289 = sext i32 %333 to i64
  %arrayidx290 = getelementptr inbounds i32, ptr %332, i64 %idxprom289
  store i32 %330, ptr %arrayidx290, align 4, !tbaa !14
  %334 = load double, ptr %donor_prob, align 8, !tbaa !31
  %335 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %ambig_probs291 = getelementptr inbounds %struct.Spliceends_T, ptr %335, i32 0, i32 12
  %336 = load ptr, ptr %ambig_probs291, align 8, !tbaa !19
  %337 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom292 = sext i32 %337 to i64
  %arrayidx293 = getelementptr inbounds double, ptr %336, i64 %idxprom292
  store double %334, ptr %arrayidx293, align 8, !tbaa !31
  %338 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %339 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_probs294 = getelementptr inbounds %struct.Spliceends_T, ptr %339, i32 0, i32 13
  %340 = load ptr, ptr %distal_probs294, align 8, !tbaa !17
  %341 = load i32, ptr %k, align 4, !tbaa !14
  %inc295 = add nsw i32 %341, 1
  store i32 %inc295, ptr %k, align 4, !tbaa !14
  %idxprom296 = sext i32 %341 to i64
  %arrayidx297 = getelementptr inbounds double, ptr %340, i64 %idxprom296
  store double %338, ptr %arrayidx297, align 8, !tbaa !31
  %342 = load double, ptr %donor_prob, align 8, !tbaa !31
  %343 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %add298 = fadd double %342, %343
  %344 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  %345 = load double, ptr %344, align 8, !tbaa !31
  %cmp299 = fcmp ogt double %add298, %345
  br i1 %cmp299, label %if.then301, label %if.end303

if.then301:                                       ; preds = %if.then275
  %346 = load double, ptr %donor_prob, align 8, !tbaa !31
  %347 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %add302 = fadd double %346, %347
  %348 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  store double %add302, ptr %348, align 8, !tbaa !31
  br label %if.end303

if.end303:                                        ; preds = %if.then301, %if.then275
  %349 = load ptr, ptr %partnerp.addr, align 8, !tbaa !5
  store i8 1, ptr %349, align 1, !tbaa !16
  br label %if.end304

if.end304:                                        ; preds = %if.end303, %for.body265
  br label %for.inc305

for.inc305:                                       ; preds = %if.end304
  %350 = load i32, ptr %i, align 4, !tbaa !14
  %inc306 = add nsw i32 %350, 1
  store i32 %inc306, ptr %i, align 4, !tbaa !14
  br label %for.cond262, !llvm.loop !63

for.end307:                                       ; preds = %for.cond262
  br label %if.end308

if.end308:                                        ; preds = %for.end307, %if.end260
  br label %if.end309

if.end309:                                        ; preds = %if.end308, %if.end229
  br label %if.end310

if.end310:                                        ; preds = %if.end309, %if.end198
  br label %if.end311

if.end311:                                        ; preds = %if.end310, %while.body171
  %351 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %sub312 = sub nsw i32 %351, 1
  %cmp313 = icmp sge i32 %sub312, 0
  br i1 %cmp313, label %land.lhs.true315, label %if.else323

land.lhs.true315:                                 ; preds = %if.end311
  %352 = load ptr, ptr %mismatch_positions.addr, align 8, !tbaa !5
  %353 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %sub316 = sub nsw i32 %353, 1
  %idxprom317 = sext i32 %sub316 to i64
  %arrayidx318 = getelementptr inbounds i32, ptr %352, i64 %idxprom317
  %354 = load i32, ptr %arrayidx318, align 4, !tbaa !14
  %355 = load i32, ptr %querypos, align 4, !tbaa !14
  %cmp319 = icmp eq i32 %354, %355
  br i1 %cmp319, label %if.then321, label %if.else323

if.then321:                                       ; preds = %land.lhs.true315
  store i32 0, ptr %nconsecutive, align 4, !tbaa !14
  %356 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %dec322 = add nsw i32 %356, -1
  store i32 %dec322, ptr %mismatchi, align 4, !tbaa !14
  br label %if.end325

if.else323:                                       ; preds = %land.lhs.true315, %if.end311
  %357 = load i32, ptr %nconsecutive, align 4, !tbaa !14
  %inc324 = add nsw i32 %357, 1
  store i32 %inc324, ptr %nconsecutive, align 4, !tbaa !14
  br label %if.end325

if.end325:                                        ; preds = %if.else323, %if.then321
  %358 = load i32, ptr %querypos, align 4, !tbaa !14
  %inc326 = add nsw i32 %358, 1
  store i32 %inc326, ptr %querypos, align 4, !tbaa !14
  %359 = load i64, ptr %genomicpos, align 8, !tbaa !12
  %inc327 = add i64 %359, 1
  store i64 %inc327, ptr %genomicpos, align 8, !tbaa !12
  br label %while.cond161, !llvm.loop !64

while.end328:                                     ; preds = %land.end170
  br label %if.end661

if.else329:                                       ; preds = %while.end
  br label %while.cond330

while.cond330:                                    ; preds = %if.end489, %if.else329
  %360 = load i32, ptr %k, align 4, !tbaa !14
  %cmp331 = icmp slt i32 %360, 30
  br i1 %cmp331, label %land.rhs333, label %land.end336

land.rhs333:                                      ; preds = %while.cond330
  %361 = load i64, ptr %genomicpos, align 8, !tbaa !12
  %362 = load i64, ptr %middle_genomicpos.addr, align 8, !tbaa !12
  %cmp334 = icmp ult i64 %361, %362
  br label %land.end336

land.end336:                                      ; preds = %land.rhs333, %while.cond330
  %363 = phi i1 [ false, %while.cond330 ], [ %cmp334, %land.rhs333 ]
  br i1 %363, label %while.body337, label %while.end492

while.body337:                                    ; preds = %land.end336
  %364 = load i64, ptr %genomicpos, align 8, !tbaa !12
  %365 = load i64, ptr %chroffset.addr, align 8, !tbaa !12
  %call338 = call double @Maxent_hr_acceptor_prob(i64 noundef %364, i64 noundef %365)
  store double %call338, ptr %acceptor_prob, align 8, !tbaa !31
  %366 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %367 = load double, ptr %medial_splicesite_prob.addr, align 8, !tbaa !31
  %cmp339 = fcmp oge double %366, %367
  br i1 %cmp339, label %if.then341, label %if.end477

if.then341:                                       ; preds = %while.body337
  %368 = load i64, ptr %genomicpos, align 8, !tbaa !12
  %369 = load i64, ptr %left, align 8, !tbaa !12
  %sub342 = sub i64 %368, %369
  %conv343 = trunc i64 %sub342 to i32
  store i32 %conv343, ptr %splice_qpos, align 4, !tbaa !14
  %370 = load i8, ptr %search_localdb_p.addr, align 1, !tbaa !16
  %conv344 = zext i8 %370 to i32
  %cmp345 = icmp eq i32 %conv344, 0
  br i1 %cmp345, label %if.then347, label %if.else365

if.then347:                                       ; preds = %if.then341
  %371 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %372 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimends348 = getelementptr inbounds %struct.Spliceends_T, ptr %372, i32 0, i32 8
  %373 = load ptr, ptr %trimends348, align 8, !tbaa !23
  %374 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom349 = sext i32 %374 to i64
  %arrayidx350 = getelementptr inbounds i32, ptr %373, i64 %idxprom349
  store i32 %371, ptr %arrayidx350, align 4, !tbaa !14
  %375 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %376 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %medial_nmismatches351 = getelementptr inbounds %struct.Spliceends_T, ptr %376, i32 0, i32 10
  %377 = load ptr, ptr %medial_nmismatches351, align 8, !tbaa !21
  %378 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom352 = sext i32 %378 to i64
  %arrayidx353 = getelementptr inbounds i32, ptr %377, i64 %idxprom352
  store i32 %375, ptr %arrayidx353, align 4, !tbaa !14
  %379 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %380 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %ambig_probs354 = getelementptr inbounds %struct.Spliceends_T, ptr %380, i32 0, i32 12
  %381 = load ptr, ptr %ambig_probs354, align 8, !tbaa !19
  %382 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom355 = sext i32 %382 to i64
  %arrayidx356 = getelementptr inbounds double, ptr %381, i64 %idxprom355
  store double %379, ptr %arrayidx356, align 8, !tbaa !31
  %383 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_probs357 = getelementptr inbounds %struct.Spliceends_T, ptr %383, i32 0, i32 13
  %384 = load ptr, ptr %distal_probs357, align 8, !tbaa !17
  %385 = load i32, ptr %k, align 4, !tbaa !14
  %inc358 = add nsw i32 %385, 1
  store i32 %inc358, ptr %k, align 4, !tbaa !14
  %idxprom359 = sext i32 %385 to i64
  %arrayidx360 = getelementptr inbounds double, ptr %384, i64 %idxprom359
  store double 0.000000e+00, ptr %arrayidx360, align 8, !tbaa !31
  %386 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %387 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  %388 = load double, ptr %387, align 8, !tbaa !31
  %cmp361 = fcmp ogt double %386, %388
  br i1 %cmp361, label %if.then363, label %if.end364

if.then363:                                       ; preds = %if.then347
  %389 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %390 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  store double %389, ptr %390, align 8, !tbaa !31
  br label %if.end364

if.end364:                                        ; preds = %if.then363, %if.then347
  br label %if.end476

if.else365:                                       ; preds = %if.then341
  %391 = load ptr, ptr %novel_diagonals_alloc.addr, align 8, !tbaa !5
  %392 = load ptr, ptr @localdb, align 8, !tbaa !5
  %393 = load ptr, ptr %localdb_alloc.addr, align 8, !tbaa !5
  %394 = load i32, ptr %streamspace_max_alloc.addr, align 4, !tbaa !14
  %395 = load ptr, ptr %streamspace_alloc.addr, align 8, !tbaa !5
  %396 = load ptr, ptr %streamptr_alloc.addr, align 8, !tbaa !5
  %397 = load ptr, ptr %streamsize_alloc.addr, align 8, !tbaa !5
  %398 = load ptr, ptr %mergeinfo.addr, align 8, !tbaa !5
  %399 = load ptr, ptr %queryptr.addr, align 8, !tbaa !5
  %400 = load i32, ptr %pos5, align 4, !tbaa !14
  %401 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %402 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %403 = load i64, ptr %low_univdiagonal, align 8, !tbaa !12
  %404 = load i64, ptr %high_univdiagonal, align 8, !tbaa !12
  %405 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %406 = load i8, ptr %plusp.addr, align 1, !tbaa !16
  %407 = load i32, ptr %genestrand.addr, align 4, !tbaa !14
  %408 = load ptr, ptr @genomebits, align 8, !tbaa !5
  %409 = load i32, ptr %nmismatches_allowed.addr, align 4, !tbaa !14
  %410 = load i8, ptr %salvagep.addr, align 1, !tbaa !16
  %call366 = call i32 @Localdb_get(ptr noundef %matchlength, ptr noundef %local_nmismatches, ptr noundef %391, ptr noundef %392, ptr noundef %393, i32 noundef %394, ptr noundef %395, ptr noundef %396, ptr noundef %397, ptr noundef %398, ptr noundef %399, i32 noundef %400, i32 noundef %401, i32 noundef %402, i64 noundef %403, i64 noundef %404, ptr noundef %405, i8 noundef zeroext %406, i32 noundef %407, ptr noundef %408, i32 noundef %409, i8 noundef zeroext %410)
  store i32 %call366, ptr %novel_ndiagonals, align 4, !tbaa !14
  %cmp367 = icmp eq i32 %call366, 0
  br i1 %cmp367, label %if.then369, label %if.else396

if.then369:                                       ; preds = %if.else365
  %411 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %matchlengths370 = getelementptr inbounds %struct.Spliceends_T, ptr %411, i32 0, i32 7
  %412 = load ptr, ptr %matchlengths370, align 8, !tbaa !24
  %413 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom371 = sext i32 %413 to i64
  %arrayidx372 = getelementptr inbounds i32, ptr %412, i64 %idxprom371
  store i32 0, ptr %arrayidx372, align 4, !tbaa !14
  %414 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %415 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimends373 = getelementptr inbounds %struct.Spliceends_T, ptr %415, i32 0, i32 8
  %416 = load ptr, ptr %trimends373, align 8, !tbaa !23
  %417 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom374 = sext i32 %417 to i64
  %arrayidx375 = getelementptr inbounds i32, ptr %416, i64 %idxprom374
  store i32 %414, ptr %arrayidx375, align 4, !tbaa !14
  %418 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %419 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %medial_nmismatches376 = getelementptr inbounds %struct.Spliceends_T, ptr %419, i32 0, i32 10
  %420 = load ptr, ptr %medial_nmismatches376, align 8, !tbaa !21
  %421 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom377 = sext i32 %421 to i64
  %arrayidx378 = getelementptr inbounds i32, ptr %420, i64 %idxprom377
  store i32 %418, ptr %arrayidx378, align 4, !tbaa !14
  %422 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %partners379 = getelementptr inbounds %struct.Spliceends_T, ptr %422, i32 0, i32 9
  %423 = load ptr, ptr %partners379, align 8, !tbaa !22
  %424 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom380 = sext i32 %424 to i64
  %arrayidx381 = getelementptr inbounds i64, ptr %423, i64 %idxprom380
  store i64 0, ptr %arrayidx381, align 8, !tbaa !12
  %425 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_nmismatches382 = getelementptr inbounds %struct.Spliceends_T, ptr %425, i32 0, i32 11
  %426 = load ptr, ptr %distal_nmismatches382, align 8, !tbaa !20
  %427 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom383 = sext i32 %427 to i64
  %arrayidx384 = getelementptr inbounds i32, ptr %426, i64 %idxprom383
  store i32 -1, ptr %arrayidx384, align 4, !tbaa !14
  %428 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %429 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %ambig_probs385 = getelementptr inbounds %struct.Spliceends_T, ptr %429, i32 0, i32 12
  %430 = load ptr, ptr %ambig_probs385, align 8, !tbaa !19
  %431 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom386 = sext i32 %431 to i64
  %arrayidx387 = getelementptr inbounds double, ptr %430, i64 %idxprom386
  store double %428, ptr %arrayidx387, align 8, !tbaa !31
  %432 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_probs388 = getelementptr inbounds %struct.Spliceends_T, ptr %432, i32 0, i32 13
  %433 = load ptr, ptr %distal_probs388, align 8, !tbaa !17
  %434 = load i32, ptr %k, align 4, !tbaa !14
  %inc389 = add nsw i32 %434, 1
  store i32 %inc389, ptr %k, align 4, !tbaa !14
  %idxprom390 = sext i32 %434 to i64
  %arrayidx391 = getelementptr inbounds double, ptr %433, i64 %idxprom390
  store double 0.000000e+00, ptr %arrayidx391, align 8, !tbaa !31
  %435 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %436 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  %437 = load double, ptr %436, align 8, !tbaa !31
  %cmp392 = fcmp ogt double %435, %437
  br i1 %cmp392, label %if.then394, label %if.end395

if.then394:                                       ; preds = %if.then369
  %438 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %439 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  store double %438, ptr %439, align 8, !tbaa !31
  br label %if.end395

if.end395:                                        ; preds = %if.then394, %if.then369
  br label %if.end475

if.else396:                                       ; preds = %if.else365
  %440 = load i32, ptr %k, align 4, !tbaa !14
  %441 = load i32, ptr %novel_ndiagonals, align 4, !tbaa !14
  %add397 = add nsw i32 %440, %441
  %cmp398 = icmp sgt i32 %add397, 30
  br i1 %cmp398, label %if.then400, label %if.else427

if.then400:                                       ; preds = %if.else396
  %442 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %matchlengths401 = getelementptr inbounds %struct.Spliceends_T, ptr %442, i32 0, i32 7
  %443 = load ptr, ptr %matchlengths401, align 8, !tbaa !24
  %444 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom402 = sext i32 %444 to i64
  %arrayidx403 = getelementptr inbounds i32, ptr %443, i64 %idxprom402
  store i32 0, ptr %arrayidx403, align 4, !tbaa !14
  %445 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %446 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimends404 = getelementptr inbounds %struct.Spliceends_T, ptr %446, i32 0, i32 8
  %447 = load ptr, ptr %trimends404, align 8, !tbaa !23
  %448 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom405 = sext i32 %448 to i64
  %arrayidx406 = getelementptr inbounds i32, ptr %447, i64 %idxprom405
  store i32 %445, ptr %arrayidx406, align 4, !tbaa !14
  %449 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %450 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %medial_nmismatches407 = getelementptr inbounds %struct.Spliceends_T, ptr %450, i32 0, i32 10
  %451 = load ptr, ptr %medial_nmismatches407, align 8, !tbaa !21
  %452 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom408 = sext i32 %452 to i64
  %arrayidx409 = getelementptr inbounds i32, ptr %451, i64 %idxprom408
  store i32 %449, ptr %arrayidx409, align 4, !tbaa !14
  %453 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %partners410 = getelementptr inbounds %struct.Spliceends_T, ptr %453, i32 0, i32 9
  %454 = load ptr, ptr %partners410, align 8, !tbaa !22
  %455 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom411 = sext i32 %455 to i64
  %arrayidx412 = getelementptr inbounds i64, ptr %454, i64 %idxprom411
  store i64 0, ptr %arrayidx412, align 8, !tbaa !12
  %456 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_nmismatches413 = getelementptr inbounds %struct.Spliceends_T, ptr %456, i32 0, i32 11
  %457 = load ptr, ptr %distal_nmismatches413, align 8, !tbaa !20
  %458 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom414 = sext i32 %458 to i64
  %arrayidx415 = getelementptr inbounds i32, ptr %457, i64 %idxprom414
  store i32 -1, ptr %arrayidx415, align 4, !tbaa !14
  %459 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %460 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %ambig_probs416 = getelementptr inbounds %struct.Spliceends_T, ptr %460, i32 0, i32 12
  %461 = load ptr, ptr %ambig_probs416, align 8, !tbaa !19
  %462 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom417 = sext i32 %462 to i64
  %arrayidx418 = getelementptr inbounds double, ptr %461, i64 %idxprom417
  store double %459, ptr %arrayidx418, align 8, !tbaa !31
  %463 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_probs419 = getelementptr inbounds %struct.Spliceends_T, ptr %463, i32 0, i32 13
  %464 = load ptr, ptr %distal_probs419, align 8, !tbaa !17
  %465 = load i32, ptr %k, align 4, !tbaa !14
  %inc420 = add nsw i32 %465, 1
  store i32 %inc420, ptr %k, align 4, !tbaa !14
  %idxprom421 = sext i32 %465 to i64
  %arrayidx422 = getelementptr inbounds double, ptr %464, i64 %idxprom421
  store double 0.000000e+00, ptr %arrayidx422, align 8, !tbaa !31
  %466 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %467 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  %468 = load double, ptr %467, align 8, !tbaa !31
  %cmp423 = fcmp ogt double %466, %468
  br i1 %cmp423, label %if.then425, label %if.end426

if.then425:                                       ; preds = %if.then400
  %469 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %470 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  store double %469, ptr %470, align 8, !tbaa !31
  br label %if.end426

if.end426:                                        ; preds = %if.then425, %if.then400
  br label %if.end474

if.else427:                                       ; preds = %if.else396
  store i32 0, ptr %i, align 4, !tbaa !14
  br label %for.cond428

for.cond428:                                      ; preds = %for.inc471, %if.else427
  %471 = load i32, ptr %i, align 4, !tbaa !14
  %472 = load i32, ptr %novel_ndiagonals, align 4, !tbaa !14
  %cmp429 = icmp slt i32 %471, %472
  br i1 %cmp429, label %for.body431, label %for.end473

for.body431:                                      ; preds = %for.cond428
  %473 = load ptr, ptr %novel_diagonals_alloc.addr, align 8, !tbaa !5
  %474 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom432 = sext i32 %474 to i64
  %arrayidx433 = getelementptr inbounds i64, ptr %473, i64 %idxprom432
  %475 = load i64, ptr %arrayidx433, align 8, !tbaa !12
  %476 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %conv434 = sext i32 %476 to i64
  %sub435 = sub i64 %475, %conv434
  %477 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %conv436 = sext i32 %477 to i64
  %add437 = add i64 %sub435, %conv436
  store i64 %add437, ptr %distal_genomicpos, align 8, !tbaa !12
  %478 = load i64, ptr %distal_genomicpos, align 8, !tbaa !12
  %479 = load i64, ptr %chroffset.addr, align 8, !tbaa !12
  %call438 = call double @Maxent_hr_donor_prob(i64 noundef %478, i64 noundef %479)
  store double %call438, ptr %donor_prob, align 8, !tbaa !31
  %480 = load double, ptr %donor_prob, align 8, !tbaa !31
  %481 = load double, ptr %distal_splicesite_prob.addr, align 8, !tbaa !31
  %cmp439 = fcmp oge double %480, %481
  br i1 %cmp439, label %if.then441, label %if.end470

if.then441:                                       ; preds = %for.body431
  %482 = load i32, ptr %matchlength, align 4, !tbaa !14
  %483 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %matchlengths442 = getelementptr inbounds %struct.Spliceends_T, ptr %483, i32 0, i32 7
  %484 = load ptr, ptr %matchlengths442, align 8, !tbaa !24
  %485 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom443 = sext i32 %485 to i64
  %arrayidx444 = getelementptr inbounds i32, ptr %484, i64 %idxprom443
  store i32 %482, ptr %arrayidx444, align 4, !tbaa !14
  %486 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %487 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimends445 = getelementptr inbounds %struct.Spliceends_T, ptr %487, i32 0, i32 8
  %488 = load ptr, ptr %trimends445, align 8, !tbaa !23
  %489 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom446 = sext i32 %489 to i64
  %arrayidx447 = getelementptr inbounds i32, ptr %488, i64 %idxprom446
  store i32 %486, ptr %arrayidx447, align 4, !tbaa !14
  %490 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %491 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %medial_nmismatches448 = getelementptr inbounds %struct.Spliceends_T, ptr %491, i32 0, i32 10
  %492 = load ptr, ptr %medial_nmismatches448, align 8, !tbaa !21
  %493 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom449 = sext i32 %493 to i64
  %arrayidx450 = getelementptr inbounds i32, ptr %492, i64 %idxprom449
  store i32 %490, ptr %arrayidx450, align 4, !tbaa !14
  %494 = load i64, ptr %distal_genomicpos, align 8, !tbaa !12
  %495 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %partners451 = getelementptr inbounds %struct.Spliceends_T, ptr %495, i32 0, i32 9
  %496 = load ptr, ptr %partners451, align 8, !tbaa !22
  %497 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom452 = sext i32 %497 to i64
  %arrayidx453 = getelementptr inbounds i64, ptr %496, i64 %idxprom452
  store i64 %494, ptr %arrayidx453, align 8, !tbaa !12
  %498 = load i32, ptr %local_nmismatches, align 4, !tbaa !14
  %499 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_nmismatches454 = getelementptr inbounds %struct.Spliceends_T, ptr %499, i32 0, i32 11
  %500 = load ptr, ptr %distal_nmismatches454, align 8, !tbaa !20
  %501 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom455 = sext i32 %501 to i64
  %arrayidx456 = getelementptr inbounds i32, ptr %500, i64 %idxprom455
  store i32 %498, ptr %arrayidx456, align 4, !tbaa !14
  %502 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %503 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %ambig_probs457 = getelementptr inbounds %struct.Spliceends_T, ptr %503, i32 0, i32 12
  %504 = load ptr, ptr %ambig_probs457, align 8, !tbaa !19
  %505 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom458 = sext i32 %505 to i64
  %arrayidx459 = getelementptr inbounds double, ptr %504, i64 %idxprom458
  store double %502, ptr %arrayidx459, align 8, !tbaa !31
  %506 = load double, ptr %donor_prob, align 8, !tbaa !31
  %507 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_probs460 = getelementptr inbounds %struct.Spliceends_T, ptr %507, i32 0, i32 13
  %508 = load ptr, ptr %distal_probs460, align 8, !tbaa !17
  %509 = load i32, ptr %k, align 4, !tbaa !14
  %inc461 = add nsw i32 %509, 1
  store i32 %inc461, ptr %k, align 4, !tbaa !14
  %idxprom462 = sext i32 %509 to i64
  %arrayidx463 = getelementptr inbounds double, ptr %508, i64 %idxprom462
  store double %506, ptr %arrayidx463, align 8, !tbaa !31
  %510 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %511 = load double, ptr %donor_prob, align 8, !tbaa !31
  %add464 = fadd double %510, %511
  %512 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  %513 = load double, ptr %512, align 8, !tbaa !31
  %cmp465 = fcmp ogt double %add464, %513
  br i1 %cmp465, label %if.then467, label %if.end469

if.then467:                                       ; preds = %if.then441
  %514 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %515 = load double, ptr %donor_prob, align 8, !tbaa !31
  %add468 = fadd double %514, %515
  %516 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  store double %add468, ptr %516, align 8, !tbaa !31
  br label %if.end469

if.end469:                                        ; preds = %if.then467, %if.then441
  %517 = load ptr, ptr %partnerp.addr, align 8, !tbaa !5
  store i8 1, ptr %517, align 1, !tbaa !16
  br label %if.end470

if.end470:                                        ; preds = %if.end469, %for.body431
  br label %for.inc471

for.inc471:                                       ; preds = %if.end470
  %518 = load i32, ptr %i, align 4, !tbaa !14
  %inc472 = add nsw i32 %518, 1
  store i32 %inc472, ptr %i, align 4, !tbaa !14
  br label %for.cond428, !llvm.loop !65

for.end473:                                       ; preds = %for.cond428
  br label %if.end474

if.end474:                                        ; preds = %for.end473, %if.end426
  br label %if.end475

if.end475:                                        ; preds = %if.end474, %if.end395
  br label %if.end476

if.end476:                                        ; preds = %if.end475, %if.end364
  br label %if.end477

if.end477:                                        ; preds = %if.end476, %while.body337
  %519 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %sub478 = sub nsw i32 %519, 1
  %cmp479 = icmp sge i32 %sub478, 0
  br i1 %cmp479, label %land.lhs.true481, label %if.end489

land.lhs.true481:                                 ; preds = %if.end477
  %520 = load ptr, ptr %mismatch_positions.addr, align 8, !tbaa !5
  %521 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %sub482 = sub nsw i32 %521, 1
  %idxprom483 = sext i32 %sub482 to i64
  %arrayidx484 = getelementptr inbounds i32, ptr %520, i64 %idxprom483
  %522 = load i32, ptr %arrayidx484, align 4, !tbaa !14
  %523 = load i32, ptr %querypos, align 4, !tbaa !14
  %cmp485 = icmp eq i32 %522, %523
  br i1 %cmp485, label %if.then487, label %if.end489

if.then487:                                       ; preds = %land.lhs.true481
  %524 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %dec488 = add nsw i32 %524, -1
  store i32 %dec488, ptr %mismatchi, align 4, !tbaa !14
  br label %if.end489

if.end489:                                        ; preds = %if.then487, %land.lhs.true481, %if.end477
  %525 = load i32, ptr %querypos, align 4, !tbaa !14
  %inc490 = add nsw i32 %525, 1
  store i32 %inc490, ptr %querypos, align 4, !tbaa !14
  %526 = load i64, ptr %genomicpos, align 8, !tbaa !12
  %inc491 = add i64 %526, 1
  store i64 %inc491, ptr %genomicpos, align 8, !tbaa !12
  br label %while.cond330, !llvm.loop !66

while.end492:                                     ; preds = %land.end336
  store i32 0, ptr %nconsecutive, align 4, !tbaa !14
  br label %while.cond493

while.cond493:                                    ; preds = %if.end657, %while.end492
  %527 = load i32, ptr %k, align 4, !tbaa !14
  %cmp494 = icmp slt i32 %527, 30
  br i1 %cmp494, label %land.lhs.true496, label %land.end502

land.lhs.true496:                                 ; preds = %while.cond493
  %528 = load i64, ptr %genomicpos, align 8, !tbaa !12
  %529 = load i64, ptr %end_genomicpos.addr, align 8, !tbaa !12
  %cmp497 = icmp ult i64 %528, %529
  br i1 %cmp497, label %land.rhs499, label %land.end502

land.rhs499:                                      ; preds = %land.lhs.true496
  %530 = load i32, ptr %nconsecutive, align 4, !tbaa !14
  %531 = load i32, ptr %max_nconsecutive.addr, align 4, !tbaa !14
  %cmp500 = icmp slt i32 %530, %531
  br label %land.end502

land.end502:                                      ; preds = %land.rhs499, %land.lhs.true496, %while.cond493
  %532 = phi i1 [ false, %land.lhs.true496 ], [ false, %while.cond493 ], [ %cmp500, %land.rhs499 ]
  br i1 %532, label %while.body503, label %while.end660

while.body503:                                    ; preds = %land.end502
  %533 = load i64, ptr %genomicpos, align 8, !tbaa !12
  %534 = load i64, ptr %chroffset.addr, align 8, !tbaa !12
  %call504 = call double @Maxent_hr_acceptor_prob(i64 noundef %533, i64 noundef %534)
  store double %call504, ptr %acceptor_prob, align 8, !tbaa !31
  %535 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %536 = load double, ptr %medial_splicesite_prob.addr, align 8, !tbaa !31
  %cmp505 = fcmp oge double %535, %536
  br i1 %cmp505, label %if.then507, label %if.end643

if.then507:                                       ; preds = %while.body503
  %537 = load i64, ptr %genomicpos, align 8, !tbaa !12
  %538 = load i64, ptr %left, align 8, !tbaa !12
  %sub508 = sub i64 %537, %538
  %conv509 = trunc i64 %sub508 to i32
  store i32 %conv509, ptr %splice_qpos, align 4, !tbaa !14
  %539 = load i8, ptr %search_localdb_p.addr, align 1, !tbaa !16
  %conv510 = zext i8 %539 to i32
  %cmp511 = icmp eq i32 %conv510, 0
  br i1 %cmp511, label %if.then513, label %if.else531

if.then513:                                       ; preds = %if.then507
  %540 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %541 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimends514 = getelementptr inbounds %struct.Spliceends_T, ptr %541, i32 0, i32 8
  %542 = load ptr, ptr %trimends514, align 8, !tbaa !23
  %543 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom515 = sext i32 %543 to i64
  %arrayidx516 = getelementptr inbounds i32, ptr %542, i64 %idxprom515
  store i32 %540, ptr %arrayidx516, align 4, !tbaa !14
  %544 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %545 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %medial_nmismatches517 = getelementptr inbounds %struct.Spliceends_T, ptr %545, i32 0, i32 10
  %546 = load ptr, ptr %medial_nmismatches517, align 8, !tbaa !21
  %547 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom518 = sext i32 %547 to i64
  %arrayidx519 = getelementptr inbounds i32, ptr %546, i64 %idxprom518
  store i32 %544, ptr %arrayidx519, align 4, !tbaa !14
  %548 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %549 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %ambig_probs520 = getelementptr inbounds %struct.Spliceends_T, ptr %549, i32 0, i32 12
  %550 = load ptr, ptr %ambig_probs520, align 8, !tbaa !19
  %551 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom521 = sext i32 %551 to i64
  %arrayidx522 = getelementptr inbounds double, ptr %550, i64 %idxprom521
  store double %548, ptr %arrayidx522, align 8, !tbaa !31
  %552 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_probs523 = getelementptr inbounds %struct.Spliceends_T, ptr %552, i32 0, i32 13
  %553 = load ptr, ptr %distal_probs523, align 8, !tbaa !17
  %554 = load i32, ptr %k, align 4, !tbaa !14
  %inc524 = add nsw i32 %554, 1
  store i32 %inc524, ptr %k, align 4, !tbaa !14
  %idxprom525 = sext i32 %554 to i64
  %arrayidx526 = getelementptr inbounds double, ptr %553, i64 %idxprom525
  store double 0.000000e+00, ptr %arrayidx526, align 8, !tbaa !31
  %555 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %556 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  %557 = load double, ptr %556, align 8, !tbaa !31
  %cmp527 = fcmp ogt double %555, %557
  br i1 %cmp527, label %if.then529, label %if.end530

if.then529:                                       ; preds = %if.then513
  %558 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %559 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  store double %558, ptr %559, align 8, !tbaa !31
  br label %if.end530

if.end530:                                        ; preds = %if.then529, %if.then513
  br label %if.end642

if.else531:                                       ; preds = %if.then507
  %560 = load ptr, ptr %novel_diagonals_alloc.addr, align 8, !tbaa !5
  %561 = load ptr, ptr @localdb, align 8, !tbaa !5
  %562 = load ptr, ptr %localdb_alloc.addr, align 8, !tbaa !5
  %563 = load i32, ptr %streamspace_max_alloc.addr, align 4, !tbaa !14
  %564 = load ptr, ptr %streamspace_alloc.addr, align 8, !tbaa !5
  %565 = load ptr, ptr %streamptr_alloc.addr, align 8, !tbaa !5
  %566 = load ptr, ptr %streamsize_alloc.addr, align 8, !tbaa !5
  %567 = load ptr, ptr %mergeinfo.addr, align 8, !tbaa !5
  %568 = load ptr, ptr %queryptr.addr, align 8, !tbaa !5
  %569 = load i32, ptr %pos5, align 4, !tbaa !14
  %570 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %571 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %572 = load i64, ptr %low_univdiagonal, align 8, !tbaa !12
  %573 = load i64, ptr %high_univdiagonal, align 8, !tbaa !12
  %574 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %575 = load i8, ptr %plusp.addr, align 1, !tbaa !16
  %576 = load i32, ptr %genestrand.addr, align 4, !tbaa !14
  %577 = load ptr, ptr @genomebits, align 8, !tbaa !5
  %578 = load i32, ptr %nmismatches_allowed.addr, align 4, !tbaa !14
  %579 = load i8, ptr %salvagep.addr, align 1, !tbaa !16
  %call532 = call i32 @Localdb_get(ptr noundef %matchlength, ptr noundef %local_nmismatches, ptr noundef %560, ptr noundef %561, ptr noundef %562, i32 noundef %563, ptr noundef %564, ptr noundef %565, ptr noundef %566, ptr noundef %567, ptr noundef %568, i32 noundef %569, i32 noundef %570, i32 noundef %571, i64 noundef %572, i64 noundef %573, ptr noundef %574, i8 noundef zeroext %575, i32 noundef %576, ptr noundef %577, i32 noundef %578, i8 noundef zeroext %579)
  store i32 %call532, ptr %novel_ndiagonals, align 4, !tbaa !14
  %cmp533 = icmp eq i32 %call532, 0
  br i1 %cmp533, label %if.then535, label %if.else562

if.then535:                                       ; preds = %if.else531
  %580 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %matchlengths536 = getelementptr inbounds %struct.Spliceends_T, ptr %580, i32 0, i32 7
  %581 = load ptr, ptr %matchlengths536, align 8, !tbaa !24
  %582 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom537 = sext i32 %582 to i64
  %arrayidx538 = getelementptr inbounds i32, ptr %581, i64 %idxprom537
  store i32 0, ptr %arrayidx538, align 4, !tbaa !14
  %583 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %584 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimends539 = getelementptr inbounds %struct.Spliceends_T, ptr %584, i32 0, i32 8
  %585 = load ptr, ptr %trimends539, align 8, !tbaa !23
  %586 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom540 = sext i32 %586 to i64
  %arrayidx541 = getelementptr inbounds i32, ptr %585, i64 %idxprom540
  store i32 %583, ptr %arrayidx541, align 4, !tbaa !14
  %587 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %588 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %medial_nmismatches542 = getelementptr inbounds %struct.Spliceends_T, ptr %588, i32 0, i32 10
  %589 = load ptr, ptr %medial_nmismatches542, align 8, !tbaa !21
  %590 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom543 = sext i32 %590 to i64
  %arrayidx544 = getelementptr inbounds i32, ptr %589, i64 %idxprom543
  store i32 %587, ptr %arrayidx544, align 4, !tbaa !14
  %591 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %partners545 = getelementptr inbounds %struct.Spliceends_T, ptr %591, i32 0, i32 9
  %592 = load ptr, ptr %partners545, align 8, !tbaa !22
  %593 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom546 = sext i32 %593 to i64
  %arrayidx547 = getelementptr inbounds i64, ptr %592, i64 %idxprom546
  store i64 0, ptr %arrayidx547, align 8, !tbaa !12
  %594 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_nmismatches548 = getelementptr inbounds %struct.Spliceends_T, ptr %594, i32 0, i32 11
  %595 = load ptr, ptr %distal_nmismatches548, align 8, !tbaa !20
  %596 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom549 = sext i32 %596 to i64
  %arrayidx550 = getelementptr inbounds i32, ptr %595, i64 %idxprom549
  store i32 -1, ptr %arrayidx550, align 4, !tbaa !14
  %597 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %598 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %ambig_probs551 = getelementptr inbounds %struct.Spliceends_T, ptr %598, i32 0, i32 12
  %599 = load ptr, ptr %ambig_probs551, align 8, !tbaa !19
  %600 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom552 = sext i32 %600 to i64
  %arrayidx553 = getelementptr inbounds double, ptr %599, i64 %idxprom552
  store double %597, ptr %arrayidx553, align 8, !tbaa !31
  %601 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_probs554 = getelementptr inbounds %struct.Spliceends_T, ptr %601, i32 0, i32 13
  %602 = load ptr, ptr %distal_probs554, align 8, !tbaa !17
  %603 = load i32, ptr %k, align 4, !tbaa !14
  %inc555 = add nsw i32 %603, 1
  store i32 %inc555, ptr %k, align 4, !tbaa !14
  %idxprom556 = sext i32 %603 to i64
  %arrayidx557 = getelementptr inbounds double, ptr %602, i64 %idxprom556
  store double 0.000000e+00, ptr %arrayidx557, align 8, !tbaa !31
  %604 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %605 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  %606 = load double, ptr %605, align 8, !tbaa !31
  %cmp558 = fcmp ogt double %604, %606
  br i1 %cmp558, label %if.then560, label %if.end561

if.then560:                                       ; preds = %if.then535
  %607 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %608 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  store double %607, ptr %608, align 8, !tbaa !31
  br label %if.end561

if.end561:                                        ; preds = %if.then560, %if.then535
  br label %if.end641

if.else562:                                       ; preds = %if.else531
  %609 = load i32, ptr %k, align 4, !tbaa !14
  %610 = load i32, ptr %novel_ndiagonals, align 4, !tbaa !14
  %add563 = add nsw i32 %609, %610
  %cmp564 = icmp sgt i32 %add563, 30
  br i1 %cmp564, label %if.then566, label %if.else593

if.then566:                                       ; preds = %if.else562
  %611 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %matchlengths567 = getelementptr inbounds %struct.Spliceends_T, ptr %611, i32 0, i32 7
  %612 = load ptr, ptr %matchlengths567, align 8, !tbaa !24
  %613 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom568 = sext i32 %613 to i64
  %arrayidx569 = getelementptr inbounds i32, ptr %612, i64 %idxprom568
  store i32 0, ptr %arrayidx569, align 4, !tbaa !14
  %614 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %615 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimends570 = getelementptr inbounds %struct.Spliceends_T, ptr %615, i32 0, i32 8
  %616 = load ptr, ptr %trimends570, align 8, !tbaa !23
  %617 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom571 = sext i32 %617 to i64
  %arrayidx572 = getelementptr inbounds i32, ptr %616, i64 %idxprom571
  store i32 %614, ptr %arrayidx572, align 4, !tbaa !14
  %618 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %619 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %medial_nmismatches573 = getelementptr inbounds %struct.Spliceends_T, ptr %619, i32 0, i32 10
  %620 = load ptr, ptr %medial_nmismatches573, align 8, !tbaa !21
  %621 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom574 = sext i32 %621 to i64
  %arrayidx575 = getelementptr inbounds i32, ptr %620, i64 %idxprom574
  store i32 %618, ptr %arrayidx575, align 4, !tbaa !14
  %622 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %partners576 = getelementptr inbounds %struct.Spliceends_T, ptr %622, i32 0, i32 9
  %623 = load ptr, ptr %partners576, align 8, !tbaa !22
  %624 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom577 = sext i32 %624 to i64
  %arrayidx578 = getelementptr inbounds i64, ptr %623, i64 %idxprom577
  store i64 0, ptr %arrayidx578, align 8, !tbaa !12
  %625 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_nmismatches579 = getelementptr inbounds %struct.Spliceends_T, ptr %625, i32 0, i32 11
  %626 = load ptr, ptr %distal_nmismatches579, align 8, !tbaa !20
  %627 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom580 = sext i32 %627 to i64
  %arrayidx581 = getelementptr inbounds i32, ptr %626, i64 %idxprom580
  store i32 -1, ptr %arrayidx581, align 4, !tbaa !14
  %628 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %629 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %ambig_probs582 = getelementptr inbounds %struct.Spliceends_T, ptr %629, i32 0, i32 12
  %630 = load ptr, ptr %ambig_probs582, align 8, !tbaa !19
  %631 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom583 = sext i32 %631 to i64
  %arrayidx584 = getelementptr inbounds double, ptr %630, i64 %idxprom583
  store double %628, ptr %arrayidx584, align 8, !tbaa !31
  %632 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_probs585 = getelementptr inbounds %struct.Spliceends_T, ptr %632, i32 0, i32 13
  %633 = load ptr, ptr %distal_probs585, align 8, !tbaa !17
  %634 = load i32, ptr %k, align 4, !tbaa !14
  %inc586 = add nsw i32 %634, 1
  store i32 %inc586, ptr %k, align 4, !tbaa !14
  %idxprom587 = sext i32 %634 to i64
  %arrayidx588 = getelementptr inbounds double, ptr %633, i64 %idxprom587
  store double 0.000000e+00, ptr %arrayidx588, align 8, !tbaa !31
  %635 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %636 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  %637 = load double, ptr %636, align 8, !tbaa !31
  %cmp589 = fcmp ogt double %635, %637
  br i1 %cmp589, label %if.then591, label %if.end592

if.then591:                                       ; preds = %if.then566
  %638 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %639 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  store double %638, ptr %639, align 8, !tbaa !31
  br label %if.end592

if.end592:                                        ; preds = %if.then591, %if.then566
  br label %if.end640

if.else593:                                       ; preds = %if.else562
  store i32 0, ptr %i, align 4, !tbaa !14
  br label %for.cond594

for.cond594:                                      ; preds = %for.inc637, %if.else593
  %640 = load i32, ptr %i, align 4, !tbaa !14
  %641 = load i32, ptr %novel_ndiagonals, align 4, !tbaa !14
  %cmp595 = icmp slt i32 %640, %641
  br i1 %cmp595, label %for.body597, label %for.end639

for.body597:                                      ; preds = %for.cond594
  %642 = load ptr, ptr %novel_diagonals_alloc.addr, align 8, !tbaa !5
  %643 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom598 = sext i32 %643 to i64
  %arrayidx599 = getelementptr inbounds i64, ptr %642, i64 %idxprom598
  %644 = load i64, ptr %arrayidx599, align 8, !tbaa !12
  %645 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %conv600 = sext i32 %645 to i64
  %sub601 = sub i64 %644, %conv600
  %646 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %conv602 = sext i32 %646 to i64
  %add603 = add i64 %sub601, %conv602
  store i64 %add603, ptr %distal_genomicpos, align 8, !tbaa !12
  %647 = load i64, ptr %distal_genomicpos, align 8, !tbaa !12
  %648 = load i64, ptr %chroffset.addr, align 8, !tbaa !12
  %call604 = call double @Maxent_hr_donor_prob(i64 noundef %647, i64 noundef %648)
  store double %call604, ptr %donor_prob, align 8, !tbaa !31
  %649 = load double, ptr %donor_prob, align 8, !tbaa !31
  %650 = load double, ptr %distal_splicesite_prob.addr, align 8, !tbaa !31
  %cmp605 = fcmp oge double %649, %650
  br i1 %cmp605, label %if.then607, label %if.end636

if.then607:                                       ; preds = %for.body597
  %651 = load i32, ptr %matchlength, align 4, !tbaa !14
  %652 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %matchlengths608 = getelementptr inbounds %struct.Spliceends_T, ptr %652, i32 0, i32 7
  %653 = load ptr, ptr %matchlengths608, align 8, !tbaa !24
  %654 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom609 = sext i32 %654 to i64
  %arrayidx610 = getelementptr inbounds i32, ptr %653, i64 %idxprom609
  store i32 %651, ptr %arrayidx610, align 4, !tbaa !14
  %655 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %656 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimends611 = getelementptr inbounds %struct.Spliceends_T, ptr %656, i32 0, i32 8
  %657 = load ptr, ptr %trimends611, align 8, !tbaa !23
  %658 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom612 = sext i32 %658 to i64
  %arrayidx613 = getelementptr inbounds i32, ptr %657, i64 %idxprom612
  store i32 %655, ptr %arrayidx613, align 4, !tbaa !14
  %659 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %660 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %medial_nmismatches614 = getelementptr inbounds %struct.Spliceends_T, ptr %660, i32 0, i32 10
  %661 = load ptr, ptr %medial_nmismatches614, align 8, !tbaa !21
  %662 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom615 = sext i32 %662 to i64
  %arrayidx616 = getelementptr inbounds i32, ptr %661, i64 %idxprom615
  store i32 %659, ptr %arrayidx616, align 4, !tbaa !14
  %663 = load i64, ptr %distal_genomicpos, align 8, !tbaa !12
  %664 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %partners617 = getelementptr inbounds %struct.Spliceends_T, ptr %664, i32 0, i32 9
  %665 = load ptr, ptr %partners617, align 8, !tbaa !22
  %666 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom618 = sext i32 %666 to i64
  %arrayidx619 = getelementptr inbounds i64, ptr %665, i64 %idxprom618
  store i64 %663, ptr %arrayidx619, align 8, !tbaa !12
  %667 = load i32, ptr %local_nmismatches, align 4, !tbaa !14
  %668 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_nmismatches620 = getelementptr inbounds %struct.Spliceends_T, ptr %668, i32 0, i32 11
  %669 = load ptr, ptr %distal_nmismatches620, align 8, !tbaa !20
  %670 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom621 = sext i32 %670 to i64
  %arrayidx622 = getelementptr inbounds i32, ptr %669, i64 %idxprom621
  store i32 %667, ptr %arrayidx622, align 4, !tbaa !14
  %671 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %672 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %ambig_probs623 = getelementptr inbounds %struct.Spliceends_T, ptr %672, i32 0, i32 12
  %673 = load ptr, ptr %ambig_probs623, align 8, !tbaa !19
  %674 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom624 = sext i32 %674 to i64
  %arrayidx625 = getelementptr inbounds double, ptr %673, i64 %idxprom624
  store double %671, ptr %arrayidx625, align 8, !tbaa !31
  %675 = load double, ptr %donor_prob, align 8, !tbaa !31
  %676 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_probs626 = getelementptr inbounds %struct.Spliceends_T, ptr %676, i32 0, i32 13
  %677 = load ptr, ptr %distal_probs626, align 8, !tbaa !17
  %678 = load i32, ptr %k, align 4, !tbaa !14
  %inc627 = add nsw i32 %678, 1
  store i32 %inc627, ptr %k, align 4, !tbaa !14
  %idxprom628 = sext i32 %678 to i64
  %arrayidx629 = getelementptr inbounds double, ptr %677, i64 %idxprom628
  store double %675, ptr %arrayidx629, align 8, !tbaa !31
  %679 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %680 = load double, ptr %donor_prob, align 8, !tbaa !31
  %add630 = fadd double %679, %680
  %681 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  %682 = load double, ptr %681, align 8, !tbaa !31
  %cmp631 = fcmp ogt double %add630, %682
  br i1 %cmp631, label %if.then633, label %if.end635

if.then633:                                       ; preds = %if.then607
  %683 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %684 = load double, ptr %donor_prob, align 8, !tbaa !31
  %add634 = fadd double %683, %684
  %685 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  store double %add634, ptr %685, align 8, !tbaa !31
  br label %if.end635

if.end635:                                        ; preds = %if.then633, %if.then607
  %686 = load ptr, ptr %partnerp.addr, align 8, !tbaa !5
  store i8 1, ptr %686, align 1, !tbaa !16
  br label %if.end636

if.end636:                                        ; preds = %if.end635, %for.body597
  br label %for.inc637

for.inc637:                                       ; preds = %if.end636
  %687 = load i32, ptr %i, align 4, !tbaa !14
  %inc638 = add nsw i32 %687, 1
  store i32 %inc638, ptr %i, align 4, !tbaa !14
  br label %for.cond594, !llvm.loop !67

for.end639:                                       ; preds = %for.cond594
  br label %if.end640

if.end640:                                        ; preds = %for.end639, %if.end592
  br label %if.end641

if.end641:                                        ; preds = %if.end640, %if.end561
  br label %if.end642

if.end642:                                        ; preds = %if.end641, %if.end530
  br label %if.end643

if.end643:                                        ; preds = %if.end642, %while.body503
  %688 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %sub644 = sub nsw i32 %688, 1
  %cmp645 = icmp sge i32 %sub644, 0
  br i1 %cmp645, label %land.lhs.true647, label %if.else655

land.lhs.true647:                                 ; preds = %if.end643
  %689 = load ptr, ptr %mismatch_positions.addr, align 8, !tbaa !5
  %690 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %sub648 = sub nsw i32 %690, 1
  %idxprom649 = sext i32 %sub648 to i64
  %arrayidx650 = getelementptr inbounds i32, ptr %689, i64 %idxprom649
  %691 = load i32, ptr %arrayidx650, align 4, !tbaa !14
  %692 = load i32, ptr %querypos, align 4, !tbaa !14
  %cmp651 = icmp eq i32 %691, %692
  br i1 %cmp651, label %if.then653, label %if.else655

if.then653:                                       ; preds = %land.lhs.true647
  store i32 0, ptr %nconsecutive, align 4, !tbaa !14
  %693 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %dec654 = add nsw i32 %693, -1
  store i32 %dec654, ptr %mismatchi, align 4, !tbaa !14
  br label %if.end657

if.else655:                                       ; preds = %land.lhs.true647, %if.end643
  %694 = load i32, ptr %nconsecutive, align 4, !tbaa !14
  %inc656 = add nsw i32 %694, 1
  store i32 %inc656, ptr %nconsecutive, align 4, !tbaa !14
  br label %if.end657

if.end657:                                        ; preds = %if.else655, %if.then653
  %695 = load i32, ptr %querypos, align 4, !tbaa !14
  %inc658 = add nsw i32 %695, 1
  store i32 %inc658, ptr %querypos, align 4, !tbaa !14
  %696 = load i64, ptr %genomicpos, align 8, !tbaa !12
  %inc659 = add i64 %696, 1
  store i64 %inc659, ptr %genomicpos, align 8, !tbaa !12
  br label %while.cond493, !llvm.loop !68

while.end660:                                     ; preds = %land.end502
  br label %if.end661

if.end661:                                        ; preds = %while.end660, %while.end328
  %697 = load i32, ptr %k, align 4, !tbaa !14
  %cmp662 = icmp eq i32 %697, 0
  br i1 %cmp662, label %if.then664, label %if.else665

if.then664:                                       ; preds = %if.end661
  store i32 0, ptr %nspliceends, align 4, !tbaa !14
  br label %if.end796

if.else665:                                       ; preds = %if.end661
  %698 = load i8, ptr %innerp.addr, align 1, !tbaa !16
  %conv666 = zext i8 %698 to i32
  %cmp667 = icmp eq i32 %conv666, 0
  br i1 %cmp667, label %if.then669, label %if.else731

if.then669:                                       ; preds = %if.else665
  store i32 0, ptr %i, align 4, !tbaa !14
  br label %for.cond670

for.cond670:                                      ; preds = %for.inc728, %if.then669
  %699 = load i32, ptr %i, align 4, !tbaa !14
  %700 = load i32, ptr %k, align 4, !tbaa !14
  %cmp671 = icmp slt i32 %699, %700
  br i1 %cmp671, label %for.body673, label %for.end730

for.body673:                                      ; preds = %for.cond670
  %701 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %ambig_probs674 = getelementptr inbounds %struct.Spliceends_T, ptr %701, i32 0, i32 12
  %702 = load ptr, ptr %ambig_probs674, align 8, !tbaa !19
  %703 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom675 = sext i32 %703 to i64
  %arrayidx676 = getelementptr inbounds double, ptr %702, i64 %idxprom675
  %704 = load double, ptr %arrayidx676, align 8, !tbaa !31
  %705 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_probs677 = getelementptr inbounds %struct.Spliceends_T, ptr %705, i32 0, i32 13
  %706 = load ptr, ptr %distal_probs677, align 8, !tbaa !17
  %707 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom678 = sext i32 %707 to i64
  %arrayidx679 = getelementptr inbounds double, ptr %706, i64 %idxprom678
  %708 = load double, ptr %arrayidx679, align 8, !tbaa !31
  %add680 = fadd double %704, %708
  %709 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  %710 = load double, ptr %709, align 8, !tbaa !31
  %cmp681 = fcmp oeq double %add680, %710
  br i1 %cmp681, label %if.then683, label %if.end727

if.then683:                                       ; preds = %for.body673
  %711 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %matchlengths684 = getelementptr inbounds %struct.Spliceends_T, ptr %711, i32 0, i32 7
  %712 = load ptr, ptr %matchlengths684, align 8, !tbaa !24
  %713 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom685 = sext i32 %713 to i64
  %arrayidx686 = getelementptr inbounds i32, ptr %712, i64 %idxprom685
  %714 = load i32, ptr %arrayidx686, align 4, !tbaa !14
  %715 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %matchlengths687 = getelementptr inbounds %struct.Spliceends_T, ptr %715, i32 0, i32 7
  %716 = load ptr, ptr %matchlengths687, align 8, !tbaa !24
  %717 = load i32, ptr %nspliceends, align 4, !tbaa !14
  %idxprom688 = sext i32 %717 to i64
  %arrayidx689 = getelementptr inbounds i32, ptr %716, i64 %idxprom688
  store i32 %714, ptr %arrayidx689, align 4, !tbaa !14
  %718 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimends690 = getelementptr inbounds %struct.Spliceends_T, ptr %718, i32 0, i32 8
  %719 = load ptr, ptr %trimends690, align 8, !tbaa !23
  %720 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom691 = sext i32 %720 to i64
  %arrayidx692 = getelementptr inbounds i32, ptr %719, i64 %idxprom691
  %721 = load i32, ptr %arrayidx692, align 4, !tbaa !14
  %722 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimends693 = getelementptr inbounds %struct.Spliceends_T, ptr %722, i32 0, i32 8
  %723 = load ptr, ptr %trimends693, align 8, !tbaa !23
  %724 = load i32, ptr %nspliceends, align 4, !tbaa !14
  %idxprom694 = sext i32 %724 to i64
  %arrayidx695 = getelementptr inbounds i32, ptr %723, i64 %idxprom694
  store i32 %721, ptr %arrayidx695, align 4, !tbaa !14
  %725 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %medial_nmismatches696 = getelementptr inbounds %struct.Spliceends_T, ptr %725, i32 0, i32 10
  %726 = load ptr, ptr %medial_nmismatches696, align 8, !tbaa !21
  %727 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom697 = sext i32 %727 to i64
  %arrayidx698 = getelementptr inbounds i32, ptr %726, i64 %idxprom697
  %728 = load i32, ptr %arrayidx698, align 4, !tbaa !14
  %729 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %medial_nmismatches699 = getelementptr inbounds %struct.Spliceends_T, ptr %729, i32 0, i32 10
  %730 = load ptr, ptr %medial_nmismatches699, align 8, !tbaa !21
  %731 = load i32, ptr %nspliceends, align 4, !tbaa !14
  %idxprom700 = sext i32 %731 to i64
  %arrayidx701 = getelementptr inbounds i32, ptr %730, i64 %idxprom700
  store i32 %728, ptr %arrayidx701, align 4, !tbaa !14
  %732 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %partners702 = getelementptr inbounds %struct.Spliceends_T, ptr %732, i32 0, i32 9
  %733 = load ptr, ptr %partners702, align 8, !tbaa !22
  %734 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom703 = sext i32 %734 to i64
  %arrayidx704 = getelementptr inbounds i64, ptr %733, i64 %idxprom703
  %735 = load i64, ptr %arrayidx704, align 8, !tbaa !12
  %736 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %partners705 = getelementptr inbounds %struct.Spliceends_T, ptr %736, i32 0, i32 9
  %737 = load ptr, ptr %partners705, align 8, !tbaa !22
  %738 = load i32, ptr %nspliceends, align 4, !tbaa !14
  %idxprom706 = sext i32 %738 to i64
  %arrayidx707 = getelementptr inbounds i64, ptr %737, i64 %idxprom706
  store i64 %735, ptr %arrayidx707, align 8, !tbaa !12
  %739 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_nmismatches708 = getelementptr inbounds %struct.Spliceends_T, ptr %739, i32 0, i32 11
  %740 = load ptr, ptr %distal_nmismatches708, align 8, !tbaa !20
  %741 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom709 = sext i32 %741 to i64
  %arrayidx710 = getelementptr inbounds i32, ptr %740, i64 %idxprom709
  %742 = load i32, ptr %arrayidx710, align 4, !tbaa !14
  %743 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_nmismatches711 = getelementptr inbounds %struct.Spliceends_T, ptr %743, i32 0, i32 11
  %744 = load ptr, ptr %distal_nmismatches711, align 8, !tbaa !20
  %745 = load i32, ptr %nspliceends, align 4, !tbaa !14
  %idxprom712 = sext i32 %745 to i64
  %arrayidx713 = getelementptr inbounds i32, ptr %744, i64 %idxprom712
  store i32 %742, ptr %arrayidx713, align 4, !tbaa !14
  %746 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %ambig_probs714 = getelementptr inbounds %struct.Spliceends_T, ptr %746, i32 0, i32 12
  %747 = load ptr, ptr %ambig_probs714, align 8, !tbaa !19
  %748 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom715 = sext i32 %748 to i64
  %arrayidx716 = getelementptr inbounds double, ptr %747, i64 %idxprom715
  %749 = load double, ptr %arrayidx716, align 8, !tbaa !31
  %750 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %ambig_probs717 = getelementptr inbounds %struct.Spliceends_T, ptr %750, i32 0, i32 12
  %751 = load ptr, ptr %ambig_probs717, align 8, !tbaa !19
  %752 = load i32, ptr %nspliceends, align 4, !tbaa !14
  %idxprom718 = sext i32 %752 to i64
  %arrayidx719 = getelementptr inbounds double, ptr %751, i64 %idxprom718
  store double %749, ptr %arrayidx719, align 8, !tbaa !31
  %753 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_probs720 = getelementptr inbounds %struct.Spliceends_T, ptr %753, i32 0, i32 13
  %754 = load ptr, ptr %distal_probs720, align 8, !tbaa !17
  %755 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom721 = sext i32 %755 to i64
  %arrayidx722 = getelementptr inbounds double, ptr %754, i64 %idxprom721
  %756 = load double, ptr %arrayidx722, align 8, !tbaa !31
  %757 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_probs723 = getelementptr inbounds %struct.Spliceends_T, ptr %757, i32 0, i32 13
  %758 = load ptr, ptr %distal_probs723, align 8, !tbaa !17
  %759 = load i32, ptr %nspliceends, align 4, !tbaa !14
  %inc724 = add nsw i32 %759, 1
  store i32 %inc724, ptr %nspliceends, align 4, !tbaa !14
  %idxprom725 = sext i32 %759 to i64
  %arrayidx726 = getelementptr inbounds double, ptr %758, i64 %idxprom725
  store double %756, ptr %arrayidx726, align 8, !tbaa !31
  br label %if.end727

if.end727:                                        ; preds = %if.then683, %for.body673
  br label %for.inc728

for.inc728:                                       ; preds = %if.end727
  %760 = load i32, ptr %i, align 4, !tbaa !14
  %inc729 = add nsw i32 %760, 1
  store i32 %inc729, ptr %i, align 4, !tbaa !14
  br label %for.cond670, !llvm.loop !69

for.end730:                                       ; preds = %for.cond670
  br label %if.end795

if.else731:                                       ; preds = %if.else665
  %761 = load ptr, ptr %partnerp.addr, align 8, !tbaa !5
  %762 = load i8, ptr %761, align 1, !tbaa !16
  %conv732 = zext i8 %762 to i32
  %cmp733 = icmp eq i32 %conv732, 1
  br i1 %cmp733, label %if.then735, label %if.else793

if.then735:                                       ; preds = %if.else731
  store i32 0, ptr %i, align 4, !tbaa !14
  br label %for.cond736

for.cond736:                                      ; preds = %for.inc790, %if.then735
  %763 = load i32, ptr %i, align 4, !tbaa !14
  %764 = load i32, ptr %k, align 4, !tbaa !14
  %cmp737 = icmp slt i32 %763, %764
  br i1 %cmp737, label %for.body739, label %for.end792

for.body739:                                      ; preds = %for.cond736
  %765 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %partners740 = getelementptr inbounds %struct.Spliceends_T, ptr %765, i32 0, i32 9
  %766 = load ptr, ptr %partners740, align 8, !tbaa !22
  %767 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom741 = sext i32 %767 to i64
  %arrayidx742 = getelementptr inbounds i64, ptr %766, i64 %idxprom741
  %768 = load i64, ptr %arrayidx742, align 8, !tbaa !12
  %cmp743 = icmp ne i64 %768, 0
  br i1 %cmp743, label %if.then745, label %if.end789

if.then745:                                       ; preds = %for.body739
  %769 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %matchlengths746 = getelementptr inbounds %struct.Spliceends_T, ptr %769, i32 0, i32 7
  %770 = load ptr, ptr %matchlengths746, align 8, !tbaa !24
  %771 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom747 = sext i32 %771 to i64
  %arrayidx748 = getelementptr inbounds i32, ptr %770, i64 %idxprom747
  %772 = load i32, ptr %arrayidx748, align 4, !tbaa !14
  %773 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %matchlengths749 = getelementptr inbounds %struct.Spliceends_T, ptr %773, i32 0, i32 7
  %774 = load ptr, ptr %matchlengths749, align 8, !tbaa !24
  %775 = load i32, ptr %nspliceends, align 4, !tbaa !14
  %idxprom750 = sext i32 %775 to i64
  %arrayidx751 = getelementptr inbounds i32, ptr %774, i64 %idxprom750
  store i32 %772, ptr %arrayidx751, align 4, !tbaa !14
  %776 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimends752 = getelementptr inbounds %struct.Spliceends_T, ptr %776, i32 0, i32 8
  %777 = load ptr, ptr %trimends752, align 8, !tbaa !23
  %778 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom753 = sext i32 %778 to i64
  %arrayidx754 = getelementptr inbounds i32, ptr %777, i64 %idxprom753
  %779 = load i32, ptr %arrayidx754, align 4, !tbaa !14
  %780 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimends755 = getelementptr inbounds %struct.Spliceends_T, ptr %780, i32 0, i32 8
  %781 = load ptr, ptr %trimends755, align 8, !tbaa !23
  %782 = load i32, ptr %nspliceends, align 4, !tbaa !14
  %idxprom756 = sext i32 %782 to i64
  %arrayidx757 = getelementptr inbounds i32, ptr %781, i64 %idxprom756
  store i32 %779, ptr %arrayidx757, align 4, !tbaa !14
  %783 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %medial_nmismatches758 = getelementptr inbounds %struct.Spliceends_T, ptr %783, i32 0, i32 10
  %784 = load ptr, ptr %medial_nmismatches758, align 8, !tbaa !21
  %785 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom759 = sext i32 %785 to i64
  %arrayidx760 = getelementptr inbounds i32, ptr %784, i64 %idxprom759
  %786 = load i32, ptr %arrayidx760, align 4, !tbaa !14
  %787 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %medial_nmismatches761 = getelementptr inbounds %struct.Spliceends_T, ptr %787, i32 0, i32 10
  %788 = load ptr, ptr %medial_nmismatches761, align 8, !tbaa !21
  %789 = load i32, ptr %nspliceends, align 4, !tbaa !14
  %idxprom762 = sext i32 %789 to i64
  %arrayidx763 = getelementptr inbounds i32, ptr %788, i64 %idxprom762
  store i32 %786, ptr %arrayidx763, align 4, !tbaa !14
  %790 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %partners764 = getelementptr inbounds %struct.Spliceends_T, ptr %790, i32 0, i32 9
  %791 = load ptr, ptr %partners764, align 8, !tbaa !22
  %792 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom765 = sext i32 %792 to i64
  %arrayidx766 = getelementptr inbounds i64, ptr %791, i64 %idxprom765
  %793 = load i64, ptr %arrayidx766, align 8, !tbaa !12
  %794 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %partners767 = getelementptr inbounds %struct.Spliceends_T, ptr %794, i32 0, i32 9
  %795 = load ptr, ptr %partners767, align 8, !tbaa !22
  %796 = load i32, ptr %nspliceends, align 4, !tbaa !14
  %idxprom768 = sext i32 %796 to i64
  %arrayidx769 = getelementptr inbounds i64, ptr %795, i64 %idxprom768
  store i64 %793, ptr %arrayidx769, align 8, !tbaa !12
  %797 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_nmismatches770 = getelementptr inbounds %struct.Spliceends_T, ptr %797, i32 0, i32 11
  %798 = load ptr, ptr %distal_nmismatches770, align 8, !tbaa !20
  %799 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom771 = sext i32 %799 to i64
  %arrayidx772 = getelementptr inbounds i32, ptr %798, i64 %idxprom771
  %800 = load i32, ptr %arrayidx772, align 4, !tbaa !14
  %801 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_nmismatches773 = getelementptr inbounds %struct.Spliceends_T, ptr %801, i32 0, i32 11
  %802 = load ptr, ptr %distal_nmismatches773, align 8, !tbaa !20
  %803 = load i32, ptr %nspliceends, align 4, !tbaa !14
  %idxprom774 = sext i32 %803 to i64
  %arrayidx775 = getelementptr inbounds i32, ptr %802, i64 %idxprom774
  store i32 %800, ptr %arrayidx775, align 4, !tbaa !14
  %804 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %ambig_probs776 = getelementptr inbounds %struct.Spliceends_T, ptr %804, i32 0, i32 12
  %805 = load ptr, ptr %ambig_probs776, align 8, !tbaa !19
  %806 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom777 = sext i32 %806 to i64
  %arrayidx778 = getelementptr inbounds double, ptr %805, i64 %idxprom777
  %807 = load double, ptr %arrayidx778, align 8, !tbaa !31
  %808 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %ambig_probs779 = getelementptr inbounds %struct.Spliceends_T, ptr %808, i32 0, i32 12
  %809 = load ptr, ptr %ambig_probs779, align 8, !tbaa !19
  %810 = load i32, ptr %nspliceends, align 4, !tbaa !14
  %idxprom780 = sext i32 %810 to i64
  %arrayidx781 = getelementptr inbounds double, ptr %809, i64 %idxprom780
  store double %807, ptr %arrayidx781, align 8, !tbaa !31
  %811 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_probs782 = getelementptr inbounds %struct.Spliceends_T, ptr %811, i32 0, i32 13
  %812 = load ptr, ptr %distal_probs782, align 8, !tbaa !17
  %813 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom783 = sext i32 %813 to i64
  %arrayidx784 = getelementptr inbounds double, ptr %812, i64 %idxprom783
  %814 = load double, ptr %arrayidx784, align 8, !tbaa !31
  %815 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_probs785 = getelementptr inbounds %struct.Spliceends_T, ptr %815, i32 0, i32 13
  %816 = load ptr, ptr %distal_probs785, align 8, !tbaa !17
  %817 = load i32, ptr %nspliceends, align 4, !tbaa !14
  %inc786 = add nsw i32 %817, 1
  store i32 %inc786, ptr %nspliceends, align 4, !tbaa !14
  %idxprom787 = sext i32 %817 to i64
  %arrayidx788 = getelementptr inbounds double, ptr %816, i64 %idxprom787
  store double %814, ptr %arrayidx788, align 8, !tbaa !31
  br label %if.end789

if.end789:                                        ; preds = %if.then745, %for.body739
  br label %for.inc790

for.inc790:                                       ; preds = %if.end789
  %818 = load i32, ptr %i, align 4, !tbaa !14
  %inc791 = add nsw i32 %818, 1
  store i32 %inc791, ptr %i, align 4, !tbaa !14
  br label %for.cond736, !llvm.loop !70

for.end792:                                       ; preds = %for.cond736
  br label %if.end794

if.else793:                                       ; preds = %if.else731
  store i32 1, ptr %nspliceends, align 4, !tbaa !14
  br label %if.end794

if.end794:                                        ; preds = %if.else793, %for.end792
  br label %if.end795

if.end795:                                        ; preds = %if.end794, %for.end730
  br label %if.end796

if.end796:                                        ; preds = %if.end795, %if.then664
  %819 = load i32, ptr %nspliceends, align 4, !tbaa !14
  call void @llvm.lifetime.end.p0(i64 8, ptr %left) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %novel_ndiagonals) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %nconsecutive) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %mismatchi) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %splice_qpos) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %pos5) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %querypos) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %acceptor_prob) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %donor_prob) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %matchlength) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %local_nmismatches) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %high_univdiagonal) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %low_univdiagonal) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %distal_genomicpos) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %genomicpos) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %nspliceends) #4
  ret i32 %819
}

declare ptr @Knownsplicing_acceptors(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef) #2

declare ptr @Knownsplicing_antidonors(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @min_spliceend(ptr noundef %trimends, i32 noundef %nspliceends) #0 {
entry:
  %trimends.addr = alloca ptr, align 8
  %nspliceends.addr = alloca i32, align 4
  %min = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %trimends, ptr %trimends.addr, align 8, !tbaa !5
  store i32 %nspliceends, ptr %nspliceends.addr, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %min) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  %0 = load ptr, ptr %trimends.addr, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 0
  %1 = load i32, ptr %arrayidx, align 4, !tbaa !14
  store i32 %1, ptr %min, align 4, !tbaa !14
  store i32 1, ptr %i, align 4, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4, !tbaa !14
  %3 = load i32, ptr %nspliceends.addr, align 4, !tbaa !14
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %trimends.addr, align 8, !tbaa !5
  %5 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom = sext i32 %5 to i64
  %arrayidx1 = getelementptr inbounds i32, ptr %4, i64 %idxprom
  %6 = load i32, ptr %arrayidx1, align 4, !tbaa !14
  %7 = load i32, ptr %min, align 4, !tbaa !14
  %cmp2 = icmp slt i32 %6, %7
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load ptr, ptr %trimends.addr, align 8, !tbaa !5
  %9 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom3 = sext i32 %9 to i64
  %arrayidx4 = getelementptr inbounds i32, ptr %8, i64 %idxprom3
  %10 = load i32, ptr %arrayidx4, align 4, !tbaa !14
  store i32 %10, ptr %min, align 4, !tbaa !14
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, ptr %i, align 4, !tbaa !14
  %inc = add nsw i32 %11, 1
  store i32 %inc, ptr %i, align 4, !tbaa !14
  br label %for.cond, !llvm.loop !71

for.end:                                          ; preds = %for.cond
  %12 = load i32, ptr %min, align 4, !tbaa !14
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %min) #4
  ret i32 %12
}

declare i32 @Genomebits_mismatches_fromleft(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef) #2

declare i32 @Genomebits_count_mismatches_substring(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef) #2

declare double @Maxent_hr_acceptor_prob(i64 noundef, i64 noundef) #2

declare double @Maxent_hr_donor_prob(i64 noundef, i64 noundef) #2

declare double @Maxent_hr_antidonor_prob(i64 noundef, i64 noundef) #2

declare double @Maxent_hr_antiacceptor_prob(i64 noundef, i64 noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @known_spliceends_trim3_sense(ptr noundef %this, i64 noundef %end_genomicpos, i64 noundef %start_genomicpos, i32 noundef %qstart, i32 noundef %qend, ptr noundef %query_compress, i64 noundef %univdiagonal, i32 noundef %querylength, ptr noundef %knownsplicing, i8 noundef zeroext %plusp, i32 noundef %genestrand) #1 {
entry:
  %this.addr = alloca ptr, align 8
  %end_genomicpos.addr = alloca i64, align 8
  %start_genomicpos.addr = alloca i64, align 8
  %qstart.addr = alloca i32, align 4
  %qend.addr = alloca i32, align 4
  %query_compress.addr = alloca ptr, align 8
  %univdiagonal.addr = alloca i64, align 8
  %querylength.addr = alloca i32, align 4
  %knownsplicing.addr = alloca ptr, align 8
  %plusp.addr = alloca i8, align 1
  %genestrand.addr = alloca i32, align 4
  %nspliceends = alloca i32, align 4
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %endpoints = alloca ptr, align 8
  %low_rank = alloca i64, align 8
  %high_rank = alloca i64, align 8
  %rank = alloca i64, align 8
  %mismatch_positions_right = alloca ptr, align 8
  %pos3 = alloca i32, align 4
  %ref_distal_nmismatches = alloca i32, align 4
  %splice_qpos = alloca i32, align 4
  %nmismatches_right = alloca i32, align 4
  %righti = alloca i32, align 4
  %best_adj_support = alloca i32, align 4
  %adj_support = alloca i32, align 4
  %left = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !5
  store i64 %end_genomicpos, ptr %end_genomicpos.addr, align 8, !tbaa !12
  store i64 %start_genomicpos, ptr %start_genomicpos.addr, align 8, !tbaa !12
  store i32 %qstart, ptr %qstart.addr, align 4, !tbaa !14
  store i32 %qend, ptr %qend.addr, align 4, !tbaa !14
  store ptr %query_compress, ptr %query_compress.addr, align 8, !tbaa !5
  store i64 %univdiagonal, ptr %univdiagonal.addr, align 8, !tbaa !12
  store i32 %querylength, ptr %querylength.addr, align 4, !tbaa !14
  store ptr %knownsplicing, ptr %knownsplicing.addr, align 8, !tbaa !5
  store i8 %plusp, ptr %plusp.addr, align 1, !tbaa !16
  store i32 %genestrand, ptr %genestrand.addr, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %nspliceends) #4
  store i32 0, ptr %nspliceends, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %endpoints) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %low_rank) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %high_rank) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %rank) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %mismatch_positions_right) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %pos3) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ref_distal_nmismatches) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %splice_qpos) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %nmismatches_right) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %righti) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %best_adj_support) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %adj_support) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %left) #4
  %0 = load i64, ptr %univdiagonal.addr, align 8, !tbaa !12
  %1 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %conv = sext i32 %1 to i64
  %sub = sub i64 %0, %conv
  store i64 %sub, ptr %left, align 8, !tbaa !12
  %2 = load i8, ptr %plusp.addr, align 1, !tbaa !16
  %tobool = icmp ne i8 %2, 0
  br i1 %tobool, label %if.then, label %if.else20

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %knownsplicing.addr, align 8, !tbaa !5
  %4 = load i64, ptr %univdiagonal.addr, align 8, !tbaa !12
  %5 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %6 = load i64, ptr %end_genomicpos.addr, align 8, !tbaa !12
  %7 = load i64, ptr %left, align 8, !tbaa !12
  %sub1 = sub i64 %6, %7
  %conv2 = trunc i64 %sub1 to i32
  %8 = load i64, ptr %start_genomicpos.addr, align 8, !tbaa !12
  %9 = load i64, ptr %left, align 8, !tbaa !12
  %sub3 = sub i64 %8, %9
  %conv4 = trunc i64 %sub3 to i32
  %call = call ptr @Knownsplicing_donors(ptr noundef %low_rank, ptr noundef %high_rank, ptr noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %conv2, i32 noundef %conv4)
  store ptr %call, ptr %endpoints, align 8, !tbaa !5
  %10 = load i64, ptr %high_rank, align 8, !tbaa !12
  %11 = load i64, ptr %low_rank, align 8, !tbaa !12
  %sub5 = sub i64 %10, %11
  %conv6 = trunc i64 %sub5 to i32
  store i32 %conv6, ptr %n, align 4, !tbaa !14
  %cmp = icmp sgt i32 %conv6, 30
  br i1 %cmp, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.then
  br label %if.end

if.else:                                          ; preds = %if.then
  %12 = load i64, ptr %high_rank, align 8, !tbaa !12
  %sub9 = sub i64 %12, 1
  store i64 %sub9, ptr %rank, align 8, !tbaa !12
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else
  %13 = load i32, ptr %n, align 4, !tbaa !14
  %dec = add nsw i32 %13, -1
  store i32 %dec, ptr %n, align 4, !tbaa !14
  %cmp10 = icmp sge i32 %dec, 0
  br i1 %cmp10, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %14 = load ptr, ptr %endpoints, align 8, !tbaa !5
  %15 = load i64, ptr %rank, align 8, !tbaa !12
  %mul = mul i64 2, %15
  %arrayidx = getelementptr inbounds i64, ptr %14, i64 %mul
  %16 = load i64, ptr %arrayidx, align 8, !tbaa !12
  %17 = load i64, ptr %left, align 8, !tbaa !12
  %sub12 = sub i64 %16, %17
  %conv13 = trunc i64 %sub12 to i32
  %18 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimends = getelementptr inbounds %struct.Spliceends_T, ptr %18, i32 0, i32 8
  %19 = load ptr, ptr %trimends, align 8, !tbaa !23
  %20 = load i32, ptr %nspliceends, align 4, !tbaa !14
  %idxprom = sext i32 %20 to i64
  %arrayidx14 = getelementptr inbounds i32, ptr %19, i64 %idxprom
  store i32 %conv13, ptr %arrayidx14, align 4, !tbaa !14
  %21 = load ptr, ptr %endpoints, align 8, !tbaa !5
  %22 = load i64, ptr %rank, align 8, !tbaa !12
  %mul15 = mul i64 2, %22
  %add = add i64 %mul15, 1
  %arrayidx16 = getelementptr inbounds i64, ptr %21, i64 %add
  %23 = load i64, ptr %arrayidx16, align 8, !tbaa !12
  %24 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %partners = getelementptr inbounds %struct.Spliceends_T, ptr %24, i32 0, i32 9
  %25 = load ptr, ptr %partners, align 8, !tbaa !22
  %26 = load i32, ptr %nspliceends, align 4, !tbaa !14
  %inc = add nsw i32 %26, 1
  store i32 %inc, ptr %nspliceends, align 4, !tbaa !14
  %idxprom17 = sext i32 %26 to i64
  %arrayidx18 = getelementptr inbounds i64, ptr %25, i64 %idxprom17
  store i64 %23, ptr %arrayidx18, align 8, !tbaa !12
  %27 = load i64, ptr %rank, align 8, !tbaa !12
  %dec19 = add i64 %27, -1
  store i64 %dec19, ptr %rank, align 8, !tbaa !12
  br label %while.cond, !llvm.loop !72

while.end:                                        ; preds = %while.cond
  br label %if.end

if.end:                                           ; preds = %while.end, %if.then8
  br label %if.end55

if.else20:                                        ; preds = %entry
  %28 = load ptr, ptr %knownsplicing.addr, align 8, !tbaa !5
  %29 = load i64, ptr %univdiagonal.addr, align 8, !tbaa !12
  %30 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %31 = load i64, ptr %end_genomicpos.addr, align 8, !tbaa !12
  %32 = load i64, ptr %left, align 8, !tbaa !12
  %sub21 = sub i64 %31, %32
  %conv22 = trunc i64 %sub21 to i32
  %33 = load i64, ptr %start_genomicpos.addr, align 8, !tbaa !12
  %34 = load i64, ptr %left, align 8, !tbaa !12
  %sub23 = sub i64 %33, %34
  %conv24 = trunc i64 %sub23 to i32
  %call25 = call ptr @Knownsplicing_antiacceptors(ptr noundef %low_rank, ptr noundef %high_rank, ptr noundef %28, i64 noundef %29, i32 noundef %30, i32 noundef %conv22, i32 noundef %conv24)
  store ptr %call25, ptr %endpoints, align 8, !tbaa !5
  %35 = load i64, ptr %high_rank, align 8, !tbaa !12
  %36 = load i64, ptr %low_rank, align 8, !tbaa !12
  %sub26 = sub i64 %35, %36
  %conv27 = trunc i64 %sub26 to i32
  store i32 %conv27, ptr %n, align 4, !tbaa !14
  %cmp28 = icmp sgt i32 %conv27, 30
  br i1 %cmp28, label %if.then30, label %if.else31

if.then30:                                        ; preds = %if.else20
  br label %if.end54

if.else31:                                        ; preds = %if.else20
  %37 = load i64, ptr %high_rank, align 8, !tbaa !12
  %sub32 = sub i64 %37, 1
  store i64 %sub32, ptr %rank, align 8, !tbaa !12
  br label %while.cond33

while.cond33:                                     ; preds = %while.body37, %if.else31
  %38 = load i32, ptr %n, align 4, !tbaa !14
  %dec34 = add nsw i32 %38, -1
  store i32 %dec34, ptr %n, align 4, !tbaa !14
  %cmp35 = icmp sge i32 %dec34, 0
  br i1 %cmp35, label %while.body37, label %while.end53

while.body37:                                     ; preds = %while.cond33
  %39 = load ptr, ptr %endpoints, align 8, !tbaa !5
  %40 = load i64, ptr %rank, align 8, !tbaa !12
  %mul38 = mul i64 2, %40
  %arrayidx39 = getelementptr inbounds i64, ptr %39, i64 %mul38
  %41 = load i64, ptr %arrayidx39, align 8, !tbaa !12
  %42 = load i64, ptr %left, align 8, !tbaa !12
  %sub40 = sub i64 %41, %42
  %conv41 = trunc i64 %sub40 to i32
  %43 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimends42 = getelementptr inbounds %struct.Spliceends_T, ptr %43, i32 0, i32 8
  %44 = load ptr, ptr %trimends42, align 8, !tbaa !23
  %45 = load i32, ptr %nspliceends, align 4, !tbaa !14
  %idxprom43 = sext i32 %45 to i64
  %arrayidx44 = getelementptr inbounds i32, ptr %44, i64 %idxprom43
  store i32 %conv41, ptr %arrayidx44, align 4, !tbaa !14
  %46 = load ptr, ptr %endpoints, align 8, !tbaa !5
  %47 = load i64, ptr %rank, align 8, !tbaa !12
  %mul45 = mul i64 2, %47
  %add46 = add i64 %mul45, 1
  %arrayidx47 = getelementptr inbounds i64, ptr %46, i64 %add46
  %48 = load i64, ptr %arrayidx47, align 8, !tbaa !12
  %49 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %partners48 = getelementptr inbounds %struct.Spliceends_T, ptr %49, i32 0, i32 9
  %50 = load ptr, ptr %partners48, align 8, !tbaa !22
  %51 = load i32, ptr %nspliceends, align 4, !tbaa !14
  %inc49 = add nsw i32 %51, 1
  store i32 %inc49, ptr %nspliceends, align 4, !tbaa !14
  %idxprom50 = sext i32 %51 to i64
  %arrayidx51 = getelementptr inbounds i64, ptr %50, i64 %idxprom50
  store i64 %48, ptr %arrayidx51, align 8, !tbaa !12
  %52 = load i64, ptr %rank, align 8, !tbaa !12
  %dec52 = add i64 %52, -1
  store i64 %dec52, ptr %rank, align 8, !tbaa !12
  br label %while.cond33, !llvm.loop !73

while.end53:                                      ; preds = %while.cond33
  br label %if.end54

if.end54:                                         ; preds = %while.end53, %if.then30
  br label %if.end55

if.end55:                                         ; preds = %if.end54, %if.end
  %53 = load i32, ptr %nspliceends, align 4, !tbaa !14
  %cmp56 = icmp sgt i32 %53, 0
  br i1 %cmp56, label %if.then58, label %if.end151

if.then58:                                        ; preds = %if.end55
  %54 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimends59 = getelementptr inbounds %struct.Spliceends_T, ptr %54, i32 0, i32 8
  %55 = load ptr, ptr %trimends59, align 8, !tbaa !23
  %56 = load i32, ptr %nspliceends, align 4, !tbaa !14
  %call60 = call i32 @max_spliceend(ptr noundef %55, i32 noundef %56)
  store i32 %call60, ptr %pos3, align 4, !tbaa !14
  %57 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %mismatch_positions_right61 = getelementptr inbounds %struct.Spliceends_T, ptr %57, i32 0, i32 6
  %58 = load ptr, ptr %mismatch_positions_right61, align 8, !tbaa !26
  store ptr %58, ptr %mismatch_positions_right, align 8, !tbaa !5
  %59 = load ptr, ptr %mismatch_positions_right, align 8, !tbaa !5
  %60 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %61 = load ptr, ptr @genomebits, align 8, !tbaa !5
  %62 = load ptr, ptr @genomebits_alt, align 8, !tbaa !5
  %63 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %64 = load i64, ptr %univdiagonal.addr, align 8, !tbaa !12
  %65 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %66 = load i32, ptr %qstart.addr, align 4, !tbaa !14
  %67 = load i32, ptr %pos3, align 4, !tbaa !14
  %68 = load i8, ptr %plusp.addr, align 1, !tbaa !16
  %69 = load i32, ptr %genestrand.addr, align 4, !tbaa !14
  %call62 = call i32 @Genomebits_mismatches_fromright(ptr noundef %59, i32 noundef %60, ptr noundef %61, ptr noundef %62, ptr noundef %63, i64 noundef %64, i32 noundef %65, i32 noundef %66, i32 noundef %67, i8 noundef zeroext %68, i32 noundef %69)
  store i32 %call62, ptr %nmismatches_right, align 4, !tbaa !14
  store i32 0, ptr %best_adj_support, align 4, !tbaa !14
  store i32 0, ptr %i, align 4, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then58
  %70 = load i32, ptr %i, align 4, !tbaa !14
  %71 = load i32, ptr %nspliceends, align 4, !tbaa !14
  %cmp63 = icmp slt i32 %70, %71
  br i1 %cmp63, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %72 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimends65 = getelementptr inbounds %struct.Spliceends_T, ptr %72, i32 0, i32 8
  %73 = load ptr, ptr %trimends65, align 8, !tbaa !23
  %74 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom66 = sext i32 %74 to i64
  %arrayidx67 = getelementptr inbounds i32, ptr %73, i64 %idxprom66
  %75 = load i32, ptr %arrayidx67, align 4, !tbaa !14
  store i32 %75, ptr %splice_qpos, align 4, !tbaa !14
  %76 = load ptr, ptr @genomebits, align 8, !tbaa !5
  %77 = load ptr, ptr @genomebits_alt, align 8, !tbaa !5
  %78 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %79 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %partners68 = getelementptr inbounds %struct.Spliceends_T, ptr %79, i32 0, i32 9
  %80 = load ptr, ptr %partners68, align 8, !tbaa !22
  %81 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom69 = sext i32 %81 to i64
  %arrayidx70 = getelementptr inbounds i64, ptr %80, i64 %idxprom69
  %82 = load i64, ptr %arrayidx70, align 8, !tbaa !12
  %83 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %conv71 = sext i32 %83 to i64
  %sub72 = sub i64 %82, %conv71
  %84 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %conv73 = sext i32 %84 to i64
  %add74 = add i64 %sub72, %conv73
  %85 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %86 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %87 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %88 = load i8, ptr %plusp.addr, align 1, !tbaa !16
  %89 = load i32, ptr %genestrand.addr, align 4, !tbaa !14
  %call75 = call i32 @Genomebits_count_mismatches_substring(ptr noundef %ref_distal_nmismatches, ptr noundef %76, ptr noundef %77, ptr noundef %78, i64 noundef %add74, i32 noundef %85, i32 noundef %86, i32 noundef %87, i8 noundef zeroext %88, i32 noundef %89)
  %90 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_nmismatches = getelementptr inbounds %struct.Spliceends_T, ptr %90, i32 0, i32 11
  %91 = load ptr, ptr %distal_nmismatches, align 8, !tbaa !20
  %92 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom76 = sext i32 %92 to i64
  %arrayidx77 = getelementptr inbounds i32, ptr %91, i64 %idxprom76
  store i32 %call75, ptr %arrayidx77, align 4, !tbaa !14
  %93 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %94 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %sub78 = sub nsw i32 %93, %94
  %95 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_nmismatches79 = getelementptr inbounds %struct.Spliceends_T, ptr %95, i32 0, i32 11
  %96 = load ptr, ptr %distal_nmismatches79, align 8, !tbaa !20
  %97 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom80 = sext i32 %97 to i64
  %arrayidx81 = getelementptr inbounds i32, ptr %96, i64 %idxprom80
  %98 = load i32, ptr %arrayidx81, align 4, !tbaa !14
  %mul82 = mul nsw i32 3, %98
  %sub83 = sub nsw i32 %sub78, %mul82
  store i32 %sub83, ptr %adj_support, align 4, !tbaa !14
  %99 = load i32, ptr %best_adj_support, align 4, !tbaa !14
  %cmp84 = icmp sgt i32 %sub83, %99
  br i1 %cmp84, label %if.then86, label %if.end87

if.then86:                                        ; preds = %for.body
  %100 = load i32, ptr %adj_support, align 4, !tbaa !14
  store i32 %100, ptr %best_adj_support, align 4, !tbaa !14
  br label %if.end87

if.end87:                                         ; preds = %if.then86, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end87
  %101 = load i32, ptr %i, align 4, !tbaa !14
  %inc88 = add nsw i32 %101, 1
  store i32 %inc88, ptr %i, align 4, !tbaa !14
  br label %for.cond, !llvm.loop !74

for.end:                                          ; preds = %for.cond
  %102 = load i32, ptr %best_adj_support, align 4, !tbaa !14
  %cmp89 = icmp eq i32 %102, 0
  br i1 %cmp89, label %if.then91, label %if.else92

if.then91:                                        ; preds = %for.end
  store i32 0, ptr %nspliceends, align 4, !tbaa !14
  br label %if.end150

if.else92:                                        ; preds = %for.end
  store i32 0, ptr %k, align 4, !tbaa !14
  store i32 0, ptr %righti, align 4, !tbaa !14
  store i32 0, ptr %i, align 4, !tbaa !14
  br label %for.cond93

for.cond93:                                       ; preds = %for.inc147, %if.else92
  %103 = load i32, ptr %i, align 4, !tbaa !14
  %104 = load i32, ptr %nspliceends, align 4, !tbaa !14
  %cmp94 = icmp slt i32 %103, %104
  br i1 %cmp94, label %for.body96, label %for.end149

for.body96:                                       ; preds = %for.cond93
  %105 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimends97 = getelementptr inbounds %struct.Spliceends_T, ptr %105, i32 0, i32 8
  %106 = load ptr, ptr %trimends97, align 8, !tbaa !23
  %107 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom98 = sext i32 %107 to i64
  %arrayidx99 = getelementptr inbounds i32, ptr %106, i64 %idxprom98
  %108 = load i32, ptr %arrayidx99, align 4, !tbaa !14
  store i32 %108, ptr %splice_qpos, align 4, !tbaa !14
  %109 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %110 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %sub100 = sub nsw i32 %109, %110
  %111 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_nmismatches101 = getelementptr inbounds %struct.Spliceends_T, ptr %111, i32 0, i32 11
  %112 = load ptr, ptr %distal_nmismatches101, align 8, !tbaa !20
  %113 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom102 = sext i32 %113 to i64
  %arrayidx103 = getelementptr inbounds i32, ptr %112, i64 %idxprom102
  %114 = load i32, ptr %arrayidx103, align 4, !tbaa !14
  %mul104 = mul nsw i32 3, %114
  %sub105 = sub nsw i32 %sub100, %mul104
  %115 = load i32, ptr %best_adj_support, align 4, !tbaa !14
  %cmp106 = icmp slt i32 %sub105, %115
  br i1 %cmp106, label %if.then108, label %if.else109

if.then108:                                       ; preds = %for.body96
  br label %if.end146

if.else109:                                       ; preds = %for.body96
  br label %while.cond110

while.cond110:                                    ; preds = %while.body117, %if.else109
  %116 = load i32, ptr %righti, align 4, !tbaa !14
  %117 = load i32, ptr %nmismatches_right, align 4, !tbaa !14
  %cmp111 = icmp slt i32 %116, %117
  br i1 %cmp111, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond110
  %118 = load ptr, ptr %mismatch_positions_right, align 8, !tbaa !5
  %119 = load i32, ptr %righti, align 4, !tbaa !14
  %idxprom113 = sext i32 %119 to i64
  %arrayidx114 = getelementptr inbounds i32, ptr %118, i64 %idxprom113
  %120 = load i32, ptr %arrayidx114, align 4, !tbaa !14
  %121 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %cmp115 = icmp sge i32 %120, %121
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond110
  %122 = phi i1 [ false, %while.cond110 ], [ %cmp115, %land.rhs ]
  br i1 %122, label %while.body117, label %while.end119

while.body117:                                    ; preds = %land.end
  %123 = load i32, ptr %righti, align 4, !tbaa !14
  %inc118 = add nsw i32 %123, 1
  store i32 %inc118, ptr %righti, align 4, !tbaa !14
  br label %while.cond110, !llvm.loop !75

while.end119:                                     ; preds = %land.end
  %124 = load i32, ptr %nmismatches_right, align 4, !tbaa !14
  %125 = load i32, ptr %righti, align 4, !tbaa !14
  %sub120 = sub nsw i32 %124, %125
  %126 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %medial_nmismatches = getelementptr inbounds %struct.Spliceends_T, ptr %126, i32 0, i32 10
  %127 = load ptr, ptr %medial_nmismatches, align 8, !tbaa !21
  %128 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom121 = sext i32 %128 to i64
  %arrayidx122 = getelementptr inbounds i32, ptr %127, i64 %idxprom121
  store i32 %sub120, ptr %arrayidx122, align 4, !tbaa !14
  %129 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %130 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %sub123 = sub nsw i32 %129, %130
  %131 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %matchlengths = getelementptr inbounds %struct.Spliceends_T, ptr %131, i32 0, i32 7
  %132 = load ptr, ptr %matchlengths, align 8, !tbaa !24
  %133 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom124 = sext i32 %133 to i64
  %arrayidx125 = getelementptr inbounds i32, ptr %132, i64 %idxprom124
  store i32 %sub123, ptr %arrayidx125, align 4, !tbaa !14
  %134 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %135 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimends126 = getelementptr inbounds %struct.Spliceends_T, ptr %135, i32 0, i32 8
  %136 = load ptr, ptr %trimends126, align 8, !tbaa !23
  %137 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom127 = sext i32 %137 to i64
  %arrayidx128 = getelementptr inbounds i32, ptr %136, i64 %idxprom127
  store i32 %134, ptr %arrayidx128, align 4, !tbaa !14
  %138 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %partners129 = getelementptr inbounds %struct.Spliceends_T, ptr %138, i32 0, i32 9
  %139 = load ptr, ptr %partners129, align 8, !tbaa !22
  %140 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom130 = sext i32 %140 to i64
  %arrayidx131 = getelementptr inbounds i64, ptr %139, i64 %idxprom130
  %141 = load i64, ptr %arrayidx131, align 8, !tbaa !12
  %142 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %partners132 = getelementptr inbounds %struct.Spliceends_T, ptr %142, i32 0, i32 9
  %143 = load ptr, ptr %partners132, align 8, !tbaa !22
  %144 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom133 = sext i32 %144 to i64
  %arrayidx134 = getelementptr inbounds i64, ptr %143, i64 %idxprom133
  store i64 %141, ptr %arrayidx134, align 8, !tbaa !12
  %145 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_nmismatches135 = getelementptr inbounds %struct.Spliceends_T, ptr %145, i32 0, i32 11
  %146 = load ptr, ptr %distal_nmismatches135, align 8, !tbaa !20
  %147 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom136 = sext i32 %147 to i64
  %arrayidx137 = getelementptr inbounds i32, ptr %146, i64 %idxprom136
  %148 = load i32, ptr %arrayidx137, align 4, !tbaa !14
  %149 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_nmismatches138 = getelementptr inbounds %struct.Spliceends_T, ptr %149, i32 0, i32 11
  %150 = load ptr, ptr %distal_nmismatches138, align 8, !tbaa !20
  %151 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom139 = sext i32 %151 to i64
  %arrayidx140 = getelementptr inbounds i32, ptr %150, i64 %idxprom139
  store i32 %148, ptr %arrayidx140, align 4, !tbaa !14
  %152 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %ambig_probs = getelementptr inbounds %struct.Spliceends_T, ptr %152, i32 0, i32 12
  %153 = load ptr, ptr %ambig_probs, align 8, !tbaa !19
  %154 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom141 = sext i32 %154 to i64
  %arrayidx142 = getelementptr inbounds double, ptr %153, i64 %idxprom141
  store double 1.000000e+00, ptr %arrayidx142, align 8, !tbaa !31
  %155 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_probs = getelementptr inbounds %struct.Spliceends_T, ptr %155, i32 0, i32 13
  %156 = load ptr, ptr %distal_probs, align 8, !tbaa !17
  %157 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom143 = sext i32 %157 to i64
  %arrayidx144 = getelementptr inbounds double, ptr %156, i64 %idxprom143
  store double 1.000000e+00, ptr %arrayidx144, align 8, !tbaa !31
  %158 = load i32, ptr %k, align 4, !tbaa !14
  %inc145 = add nsw i32 %158, 1
  store i32 %inc145, ptr %k, align 4, !tbaa !14
  br label %if.end146

if.end146:                                        ; preds = %while.end119, %if.then108
  br label %for.inc147

for.inc147:                                       ; preds = %if.end146
  %159 = load i32, ptr %i, align 4, !tbaa !14
  %inc148 = add nsw i32 %159, 1
  store i32 %inc148, ptr %i, align 4, !tbaa !14
  br label %for.cond93, !llvm.loop !76

for.end149:                                       ; preds = %for.cond93
  %160 = load i32, ptr %k, align 4, !tbaa !14
  store i32 %160, ptr %nspliceends, align 4, !tbaa !14
  br label %if.end150

if.end150:                                        ; preds = %for.end149, %if.then91
  br label %if.end151

if.end151:                                        ; preds = %if.end150, %if.end55
  %161 = load i32, ptr %nspliceends, align 4, !tbaa !14
  call void @llvm.lifetime.end.p0(i64 8, ptr %left) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %adj_support) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %best_adj_support) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %righti) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %nmismatches_right) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %splice_qpos) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %ref_distal_nmismatches) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %pos3) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %mismatch_positions_right) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %rank) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %high_rank) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %low_rank) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %endpoints) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %nspliceends) #4
  ret i32 %161
}

; Function Attrs: nounwind uwtable
define internal i32 @novel_spliceends_trim3_sense(ptr noundef %max_prob, ptr noundef %partnerp, ptr noundef %this, i64 noundef %end_genomicpos, i64 noundef %start_genomicpos, i64 noundef %middle_genomicpos, ptr noundef %mismatch_positions, i32 noundef %total_nmismatches, i64 noundef %univdiagonal, i32 noundef %querylength, ptr noundef %query_compress, ptr noundef %queryptr, i64 noundef %chroffset, i64 noundef %chrhigh, ptr noundef %novel_diagonals_alloc, ptr noundef %localdb_alloc, i32 noundef %streamspace_max_alloc, ptr noundef %streamspace_alloc, ptr noundef %streamptr_alloc, ptr noundef %streamsize_alloc, ptr noundef %mergeinfo, double noundef %medial_splicesite_prob, double noundef %distal_splicesite_prob, i32 noundef %max_nconsecutive, i8 noundef zeroext %plusp, i32 noundef %genestrand, i32 noundef %nmismatches_allowed, i8 noundef zeroext %search_localdb_p, i8 noundef zeroext %innerp, i8 noundef zeroext %salvagep) #1 {
entry:
  %max_prob.addr = alloca ptr, align 8
  %partnerp.addr = alloca ptr, align 8
  %this.addr = alloca ptr, align 8
  %end_genomicpos.addr = alloca i64, align 8
  %start_genomicpos.addr = alloca i64, align 8
  %middle_genomicpos.addr = alloca i64, align 8
  %mismatch_positions.addr = alloca ptr, align 8
  %total_nmismatches.addr = alloca i32, align 4
  %univdiagonal.addr = alloca i64, align 8
  %querylength.addr = alloca i32, align 4
  %query_compress.addr = alloca ptr, align 8
  %queryptr.addr = alloca ptr, align 8
  %chroffset.addr = alloca i64, align 8
  %chrhigh.addr = alloca i64, align 8
  %novel_diagonals_alloc.addr = alloca ptr, align 8
  %localdb_alloc.addr = alloca ptr, align 8
  %streamspace_max_alloc.addr = alloca i32, align 4
  %streamspace_alloc.addr = alloca ptr, align 8
  %streamptr_alloc.addr = alloca ptr, align 8
  %streamsize_alloc.addr = alloca ptr, align 8
  %mergeinfo.addr = alloca ptr, align 8
  %medial_splicesite_prob.addr = alloca double, align 8
  %distal_splicesite_prob.addr = alloca double, align 8
  %max_nconsecutive.addr = alloca i32, align 4
  %plusp.addr = alloca i8, align 1
  %genestrand.addr = alloca i32, align 4
  %nmismatches_allowed.addr = alloca i32, align 4
  %search_localdb_p.addr = alloca i8, align 1
  %innerp.addr = alloca i8, align 1
  %salvagep.addr = alloca i8, align 1
  %nspliceends = alloca i32, align 4
  %k = alloca i32, align 4
  %genomicpos = alloca i64, align 8
  %distal_genomicpos = alloca i64, align 8
  %low_univdiagonal = alloca i64, align 8
  %high_univdiagonal = alloca i64, align 8
  %local_nmismatches = alloca i32, align 4
  %matchlength = alloca i32, align 4
  %donor_prob = alloca double, align 8
  %acceptor_prob = alloca double, align 8
  %querypos = alloca i32, align 4
  %pos3 = alloca i32, align 4
  %splice_qpos = alloca i32, align 4
  %mismatchi = alloca i32, align 4
  %nconsecutive = alloca i32, align 4
  %novel_ndiagonals = alloca i32, align 4
  %i = alloca i32, align 4
  %left = alloca i64, align 8
  store ptr %max_prob, ptr %max_prob.addr, align 8, !tbaa !5
  store ptr %partnerp, ptr %partnerp.addr, align 8, !tbaa !5
  store ptr %this, ptr %this.addr, align 8, !tbaa !5
  store i64 %end_genomicpos, ptr %end_genomicpos.addr, align 8, !tbaa !12
  store i64 %start_genomicpos, ptr %start_genomicpos.addr, align 8, !tbaa !12
  store i64 %middle_genomicpos, ptr %middle_genomicpos.addr, align 8, !tbaa !12
  store ptr %mismatch_positions, ptr %mismatch_positions.addr, align 8, !tbaa !5
  store i32 %total_nmismatches, ptr %total_nmismatches.addr, align 4, !tbaa !14
  store i64 %univdiagonal, ptr %univdiagonal.addr, align 8, !tbaa !12
  store i32 %querylength, ptr %querylength.addr, align 4, !tbaa !14
  store ptr %query_compress, ptr %query_compress.addr, align 8, !tbaa !5
  store ptr %queryptr, ptr %queryptr.addr, align 8, !tbaa !5
  store i64 %chroffset, ptr %chroffset.addr, align 8, !tbaa !12
  store i64 %chrhigh, ptr %chrhigh.addr, align 8, !tbaa !12
  store ptr %novel_diagonals_alloc, ptr %novel_diagonals_alloc.addr, align 8, !tbaa !5
  store ptr %localdb_alloc, ptr %localdb_alloc.addr, align 8, !tbaa !5
  store i32 %streamspace_max_alloc, ptr %streamspace_max_alloc.addr, align 4, !tbaa !14
  store ptr %streamspace_alloc, ptr %streamspace_alloc.addr, align 8, !tbaa !5
  store ptr %streamptr_alloc, ptr %streamptr_alloc.addr, align 8, !tbaa !5
  store ptr %streamsize_alloc, ptr %streamsize_alloc.addr, align 8, !tbaa !5
  store ptr %mergeinfo, ptr %mergeinfo.addr, align 8, !tbaa !5
  store double %medial_splicesite_prob, ptr %medial_splicesite_prob.addr, align 8, !tbaa !31
  store double %distal_splicesite_prob, ptr %distal_splicesite_prob.addr, align 8, !tbaa !31
  store i32 %max_nconsecutive, ptr %max_nconsecutive.addr, align 4, !tbaa !14
  store i8 %plusp, ptr %plusp.addr, align 1, !tbaa !16
  store i32 %genestrand, ptr %genestrand.addr, align 4, !tbaa !14
  store i32 %nmismatches_allowed, ptr %nmismatches_allowed.addr, align 4, !tbaa !14
  store i8 %search_localdb_p, ptr %search_localdb_p.addr, align 1, !tbaa !16
  store i8 %innerp, ptr %innerp.addr, align 1, !tbaa !16
  store i8 %salvagep, ptr %salvagep.addr, align 1, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 4, ptr %nspliceends) #4
  store i32 0, ptr %nspliceends, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #4
  store i32 0, ptr %k, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 8, ptr %genomicpos) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %distal_genomicpos) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %low_univdiagonal) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %high_univdiagonal) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %local_nmismatches) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %matchlength) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %donor_prob) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %acceptor_prob) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %querypos) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %pos3) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %splice_qpos) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %mismatchi) #4
  %0 = load i32, ptr %total_nmismatches.addr, align 4, !tbaa !14
  store i32 %0, ptr %mismatchi, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %nconsecutive) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %novel_ndiagonals) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %left) #4
  %1 = load i64, ptr %univdiagonal.addr, align 8, !tbaa !12
  %2 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %conv = sext i32 %2 to i64
  %sub = sub i64 %1, %conv
  store i64 %sub, ptr %left, align 8, !tbaa !12
  %3 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  store double 0.000000e+00, ptr %3, align 8, !tbaa !31
  %4 = load ptr, ptr %partnerp.addr, align 8, !tbaa !5
  store i8 0, ptr %4, align 1, !tbaa !16
  %5 = load i64, ptr %univdiagonal.addr, align 8, !tbaa !12
  %add = add i64 %5, 9
  store i64 %add, ptr %low_univdiagonal, align 8, !tbaa !12
  %6 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  store i32 %6, ptr %pos3, align 4, !tbaa !14
  %7 = load i64, ptr %low_univdiagonal, align 8, !tbaa !12
  %8 = load i32, ptr @shortsplicedist_novelend, align 4, !tbaa !14
  %conv1 = zext i32 %8 to i64
  %add2 = add i64 %7, %conv1
  %9 = load i64, ptr %chrhigh.addr, align 8, !tbaa !12
  %cmp = icmp uge i64 %add2, %9
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %10 = load i64, ptr %chrhigh.addr, align 8, !tbaa !12
  %sub4 = sub i64 %10, 1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %11 = load i64, ptr %low_univdiagonal, align 8, !tbaa !12
  %12 = load i32, ptr @shortsplicedist_novelend, align 4, !tbaa !14
  %conv5 = zext i32 %12 to i64
  %add6 = add i64 %11, %conv5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub4, %cond.true ], [ %add6, %cond.false ]
  store i64 %cond, ptr %high_univdiagonal, align 8, !tbaa !12
  %13 = load i64, ptr %start_genomicpos.addr, align 8, !tbaa !12
  store i64 %13, ptr %genomicpos, align 8, !tbaa !12
  %14 = load i64, ptr %genomicpos, align 8, !tbaa !12
  %15 = load i64, ptr %left, align 8, !tbaa !12
  %sub7 = sub i64 %14, %15
  %conv8 = trunc i64 %sub7 to i32
  store i32 %conv8, ptr %querypos, align 4, !tbaa !14
  br label %while.cond

while.cond:                                       ; preds = %while.body, %cond.end
  %16 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %sub9 = sub nsw i32 %16, 1
  %cmp10 = icmp sge i32 %sub9, 0
  br i1 %cmp10, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %17 = load ptr, ptr %mismatch_positions.addr, align 8, !tbaa !5
  %18 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %sub12 = sub nsw i32 %18, 1
  %idxprom = sext i32 %sub12 to i64
  %arrayidx = getelementptr inbounds i32, ptr %17, i64 %idxprom
  %19 = load i32, ptr %arrayidx, align 4, !tbaa !14
  %20 = load i32, ptr %querypos, align 4, !tbaa !14
  %cmp13 = icmp sge i32 %19, %20
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %21 = phi i1 [ false, %while.cond ], [ %cmp13, %land.rhs ]
  br i1 %21, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %22 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %dec = add nsw i32 %22, -1
  store i32 %dec, ptr %mismatchi, align 4, !tbaa !14
  br label %while.cond, !llvm.loop !77

while.end:                                        ; preds = %land.end
  %23 = load i8, ptr %plusp.addr, align 1, !tbaa !16
  %tobool = icmp ne i8 %23, 0
  br i1 %tobool, label %if.then, label %if.else330

if.then:                                          ; preds = %while.end
  br label %while.cond15

while.cond15:                                     ; preds = %if.end160, %if.then
  %24 = load i32, ptr %k, align 4, !tbaa !14
  %cmp16 = icmp slt i32 %24, 30
  br i1 %cmp16, label %land.rhs18, label %land.end21

land.rhs18:                                       ; preds = %while.cond15
  %25 = load i64, ptr %genomicpos, align 8, !tbaa !12
  %26 = load i64, ptr %middle_genomicpos.addr, align 8, !tbaa !12
  %cmp19 = icmp ugt i64 %25, %26
  br label %land.end21

land.end21:                                       ; preds = %land.rhs18, %while.cond15
  %27 = phi i1 [ false, %while.cond15 ], [ %cmp19, %land.rhs18 ]
  br i1 %27, label %while.body22, label %while.end161

while.body22:                                     ; preds = %land.end21
  %28 = load i64, ptr %genomicpos, align 8, !tbaa !12
  %29 = load i64, ptr %chroffset.addr, align 8, !tbaa !12
  %call = call double @Maxent_hr_donor_prob(i64 noundef %28, i64 noundef %29)
  store double %call, ptr %donor_prob, align 8, !tbaa !31
  %30 = load double, ptr %donor_prob, align 8, !tbaa !31
  %31 = load double, ptr %medial_splicesite_prob.addr, align 8, !tbaa !31
  %cmp23 = fcmp oge double %30, %31
  br i1 %cmp23, label %if.then25, label %if.end147

if.then25:                                        ; preds = %while.body22
  %32 = load i64, ptr %genomicpos, align 8, !tbaa !12
  %33 = load i64, ptr %left, align 8, !tbaa !12
  %sub26 = sub i64 %32, %33
  %conv27 = trunc i64 %sub26 to i32
  store i32 %conv27, ptr %splice_qpos, align 4, !tbaa !14
  %34 = load i8, ptr %search_localdb_p.addr, align 1, !tbaa !16
  %conv28 = zext i8 %34 to i32
  %cmp29 = icmp eq i32 %conv28, 0
  br i1 %cmp29, label %if.then31, label %if.else

if.then31:                                        ; preds = %if.then25
  %35 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %36 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimends = getelementptr inbounds %struct.Spliceends_T, ptr %36, i32 0, i32 8
  %37 = load ptr, ptr %trimends, align 8, !tbaa !23
  %38 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom32 = sext i32 %38 to i64
  %arrayidx33 = getelementptr inbounds i32, ptr %37, i64 %idxprom32
  store i32 %35, ptr %arrayidx33, align 4, !tbaa !14
  %39 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %40 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %medial_nmismatches = getelementptr inbounds %struct.Spliceends_T, ptr %40, i32 0, i32 10
  %41 = load ptr, ptr %medial_nmismatches, align 8, !tbaa !21
  %42 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom34 = sext i32 %42 to i64
  %arrayidx35 = getelementptr inbounds i32, ptr %41, i64 %idxprom34
  store i32 %39, ptr %arrayidx35, align 4, !tbaa !14
  %43 = load double, ptr %donor_prob, align 8, !tbaa !31
  %44 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %ambig_probs = getelementptr inbounds %struct.Spliceends_T, ptr %44, i32 0, i32 12
  %45 = load ptr, ptr %ambig_probs, align 8, !tbaa !19
  %46 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom36 = sext i32 %46 to i64
  %arrayidx37 = getelementptr inbounds double, ptr %45, i64 %idxprom36
  store double %43, ptr %arrayidx37, align 8, !tbaa !31
  %47 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_probs = getelementptr inbounds %struct.Spliceends_T, ptr %47, i32 0, i32 13
  %48 = load ptr, ptr %distal_probs, align 8, !tbaa !17
  %49 = load i32, ptr %k, align 4, !tbaa !14
  %inc = add nsw i32 %49, 1
  store i32 %inc, ptr %k, align 4, !tbaa !14
  %idxprom38 = sext i32 %49 to i64
  %arrayidx39 = getelementptr inbounds double, ptr %48, i64 %idxprom38
  store double 0.000000e+00, ptr %arrayidx39, align 8, !tbaa !31
  %50 = load double, ptr %donor_prob, align 8, !tbaa !31
  %51 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  %52 = load double, ptr %51, align 8, !tbaa !31
  %cmp40 = fcmp ogt double %50, %52
  br i1 %cmp40, label %if.then42, label %if.end

if.then42:                                        ; preds = %if.then31
  %53 = load double, ptr %donor_prob, align 8, !tbaa !31
  %54 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  store double %53, ptr %54, align 8, !tbaa !31
  br label %if.end

if.end:                                           ; preds = %if.then42, %if.then31
  br label %if.end146

if.else:                                          ; preds = %if.then25
  %55 = load ptr, ptr %novel_diagonals_alloc.addr, align 8, !tbaa !5
  %56 = load ptr, ptr @localdb, align 8, !tbaa !5
  %57 = load ptr, ptr %localdb_alloc.addr, align 8, !tbaa !5
  %58 = load i32, ptr %streamspace_max_alloc.addr, align 4, !tbaa !14
  %59 = load ptr, ptr %streamspace_alloc.addr, align 8, !tbaa !5
  %60 = load ptr, ptr %streamptr_alloc.addr, align 8, !tbaa !5
  %61 = load ptr, ptr %streamsize_alloc.addr, align 8, !tbaa !5
  %62 = load ptr, ptr %mergeinfo.addr, align 8, !tbaa !5
  %63 = load ptr, ptr %queryptr.addr, align 8, !tbaa !5
  %64 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %65 = load i32, ptr %pos3, align 4, !tbaa !14
  %66 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %67 = load i64, ptr %low_univdiagonal, align 8, !tbaa !12
  %68 = load i64, ptr %high_univdiagonal, align 8, !tbaa !12
  %69 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %70 = load i8, ptr %plusp.addr, align 1, !tbaa !16
  %71 = load i32, ptr %genestrand.addr, align 4, !tbaa !14
  %72 = load ptr, ptr @genomebits, align 8, !tbaa !5
  %73 = load i32, ptr %nmismatches_allowed.addr, align 4, !tbaa !14
  %74 = load i8, ptr %salvagep.addr, align 1, !tbaa !16
  %call43 = call i32 @Localdb_get(ptr noundef %matchlength, ptr noundef %local_nmismatches, ptr noundef %55, ptr noundef %56, ptr noundef %57, i32 noundef %58, ptr noundef %59, ptr noundef %60, ptr noundef %61, ptr noundef %62, ptr noundef %63, i32 noundef %64, i32 noundef %65, i32 noundef %66, i64 noundef %67, i64 noundef %68, ptr noundef %69, i8 noundef zeroext %70, i32 noundef %71, ptr noundef %72, i32 noundef %73, i8 noundef zeroext %74)
  store i32 %call43, ptr %novel_ndiagonals, align 4, !tbaa !14
  %cmp44 = icmp eq i32 %call43, 0
  br i1 %cmp44, label %if.then46, label %if.else70

if.then46:                                        ; preds = %if.else
  %75 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %matchlengths = getelementptr inbounds %struct.Spliceends_T, ptr %75, i32 0, i32 7
  %76 = load ptr, ptr %matchlengths, align 8, !tbaa !24
  %77 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom47 = sext i32 %77 to i64
  %arrayidx48 = getelementptr inbounds i32, ptr %76, i64 %idxprom47
  store i32 0, ptr %arrayidx48, align 4, !tbaa !14
  %78 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %79 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimends49 = getelementptr inbounds %struct.Spliceends_T, ptr %79, i32 0, i32 8
  %80 = load ptr, ptr %trimends49, align 8, !tbaa !23
  %81 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom50 = sext i32 %81 to i64
  %arrayidx51 = getelementptr inbounds i32, ptr %80, i64 %idxprom50
  store i32 %78, ptr %arrayidx51, align 4, !tbaa !14
  %82 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %83 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %medial_nmismatches52 = getelementptr inbounds %struct.Spliceends_T, ptr %83, i32 0, i32 10
  %84 = load ptr, ptr %medial_nmismatches52, align 8, !tbaa !21
  %85 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom53 = sext i32 %85 to i64
  %arrayidx54 = getelementptr inbounds i32, ptr %84, i64 %idxprom53
  store i32 %82, ptr %arrayidx54, align 4, !tbaa !14
  %86 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %partners = getelementptr inbounds %struct.Spliceends_T, ptr %86, i32 0, i32 9
  %87 = load ptr, ptr %partners, align 8, !tbaa !22
  %88 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom55 = sext i32 %88 to i64
  %arrayidx56 = getelementptr inbounds i64, ptr %87, i64 %idxprom55
  store i64 0, ptr %arrayidx56, align 8, !tbaa !12
  %89 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_nmismatches = getelementptr inbounds %struct.Spliceends_T, ptr %89, i32 0, i32 11
  %90 = load ptr, ptr %distal_nmismatches, align 8, !tbaa !20
  %91 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom57 = sext i32 %91 to i64
  %arrayidx58 = getelementptr inbounds i32, ptr %90, i64 %idxprom57
  store i32 -1, ptr %arrayidx58, align 4, !tbaa !14
  %92 = load double, ptr %donor_prob, align 8, !tbaa !31
  %93 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %ambig_probs59 = getelementptr inbounds %struct.Spliceends_T, ptr %93, i32 0, i32 12
  %94 = load ptr, ptr %ambig_probs59, align 8, !tbaa !19
  %95 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom60 = sext i32 %95 to i64
  %arrayidx61 = getelementptr inbounds double, ptr %94, i64 %idxprom60
  store double %92, ptr %arrayidx61, align 8, !tbaa !31
  %96 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_probs62 = getelementptr inbounds %struct.Spliceends_T, ptr %96, i32 0, i32 13
  %97 = load ptr, ptr %distal_probs62, align 8, !tbaa !17
  %98 = load i32, ptr %k, align 4, !tbaa !14
  %inc63 = add nsw i32 %98, 1
  store i32 %inc63, ptr %k, align 4, !tbaa !14
  %idxprom64 = sext i32 %98 to i64
  %arrayidx65 = getelementptr inbounds double, ptr %97, i64 %idxprom64
  store double 0.000000e+00, ptr %arrayidx65, align 8, !tbaa !31
  %99 = load double, ptr %donor_prob, align 8, !tbaa !31
  %100 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  %101 = load double, ptr %100, align 8, !tbaa !31
  %cmp66 = fcmp ogt double %99, %101
  br i1 %cmp66, label %if.then68, label %if.end69

if.then68:                                        ; preds = %if.then46
  %102 = load double, ptr %donor_prob, align 8, !tbaa !31
  %103 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  store double %102, ptr %103, align 8, !tbaa !31
  br label %if.end69

if.end69:                                         ; preds = %if.then68, %if.then46
  br label %if.end145

if.else70:                                        ; preds = %if.else
  %104 = load i32, ptr %k, align 4, !tbaa !14
  %105 = load i32, ptr %novel_ndiagonals, align 4, !tbaa !14
  %add71 = add nsw i32 %104, %105
  %cmp72 = icmp sgt i32 %add71, 30
  br i1 %cmp72, label %if.then74, label %if.else101

if.then74:                                        ; preds = %if.else70
  %106 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %matchlengths75 = getelementptr inbounds %struct.Spliceends_T, ptr %106, i32 0, i32 7
  %107 = load ptr, ptr %matchlengths75, align 8, !tbaa !24
  %108 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom76 = sext i32 %108 to i64
  %arrayidx77 = getelementptr inbounds i32, ptr %107, i64 %idxprom76
  store i32 0, ptr %arrayidx77, align 4, !tbaa !14
  %109 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %110 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimends78 = getelementptr inbounds %struct.Spliceends_T, ptr %110, i32 0, i32 8
  %111 = load ptr, ptr %trimends78, align 8, !tbaa !23
  %112 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom79 = sext i32 %112 to i64
  %arrayidx80 = getelementptr inbounds i32, ptr %111, i64 %idxprom79
  store i32 %109, ptr %arrayidx80, align 4, !tbaa !14
  %113 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %114 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %medial_nmismatches81 = getelementptr inbounds %struct.Spliceends_T, ptr %114, i32 0, i32 10
  %115 = load ptr, ptr %medial_nmismatches81, align 8, !tbaa !21
  %116 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom82 = sext i32 %116 to i64
  %arrayidx83 = getelementptr inbounds i32, ptr %115, i64 %idxprom82
  store i32 %113, ptr %arrayidx83, align 4, !tbaa !14
  %117 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %partners84 = getelementptr inbounds %struct.Spliceends_T, ptr %117, i32 0, i32 9
  %118 = load ptr, ptr %partners84, align 8, !tbaa !22
  %119 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom85 = sext i32 %119 to i64
  %arrayidx86 = getelementptr inbounds i64, ptr %118, i64 %idxprom85
  store i64 0, ptr %arrayidx86, align 8, !tbaa !12
  %120 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_nmismatches87 = getelementptr inbounds %struct.Spliceends_T, ptr %120, i32 0, i32 11
  %121 = load ptr, ptr %distal_nmismatches87, align 8, !tbaa !20
  %122 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom88 = sext i32 %122 to i64
  %arrayidx89 = getelementptr inbounds i32, ptr %121, i64 %idxprom88
  store i32 -1, ptr %arrayidx89, align 4, !tbaa !14
  %123 = load double, ptr %donor_prob, align 8, !tbaa !31
  %124 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %ambig_probs90 = getelementptr inbounds %struct.Spliceends_T, ptr %124, i32 0, i32 12
  %125 = load ptr, ptr %ambig_probs90, align 8, !tbaa !19
  %126 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom91 = sext i32 %126 to i64
  %arrayidx92 = getelementptr inbounds double, ptr %125, i64 %idxprom91
  store double %123, ptr %arrayidx92, align 8, !tbaa !31
  %127 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_probs93 = getelementptr inbounds %struct.Spliceends_T, ptr %127, i32 0, i32 13
  %128 = load ptr, ptr %distal_probs93, align 8, !tbaa !17
  %129 = load i32, ptr %k, align 4, !tbaa !14
  %inc94 = add nsw i32 %129, 1
  store i32 %inc94, ptr %k, align 4, !tbaa !14
  %idxprom95 = sext i32 %129 to i64
  %arrayidx96 = getelementptr inbounds double, ptr %128, i64 %idxprom95
  store double 0.000000e+00, ptr %arrayidx96, align 8, !tbaa !31
  %130 = load double, ptr %donor_prob, align 8, !tbaa !31
  %131 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  %132 = load double, ptr %131, align 8, !tbaa !31
  %cmp97 = fcmp ogt double %130, %132
  br i1 %cmp97, label %if.then99, label %if.end100

if.then99:                                        ; preds = %if.then74
  %133 = load double, ptr %donor_prob, align 8, !tbaa !31
  %134 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  store double %133, ptr %134, align 8, !tbaa !31
  br label %if.end100

if.end100:                                        ; preds = %if.then99, %if.then74
  br label %if.end144

if.else101:                                       ; preds = %if.else70
  store i32 0, ptr %i, align 4, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else101
  %135 = load i32, ptr %i, align 4, !tbaa !14
  %136 = load i32, ptr %novel_ndiagonals, align 4, !tbaa !14
  %cmp102 = icmp slt i32 %135, %136
  br i1 %cmp102, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %137 = load ptr, ptr %novel_diagonals_alloc.addr, align 8, !tbaa !5
  %138 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom104 = sext i32 %138 to i64
  %arrayidx105 = getelementptr inbounds i64, ptr %137, i64 %idxprom104
  %139 = load i64, ptr %arrayidx105, align 8, !tbaa !12
  %140 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %conv106 = sext i32 %140 to i64
  %sub107 = sub i64 %139, %conv106
  %141 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %conv108 = sext i32 %141 to i64
  %add109 = add i64 %sub107, %conv108
  store i64 %add109, ptr %distal_genomicpos, align 8, !tbaa !12
  %142 = load i64, ptr %distal_genomicpos, align 8, !tbaa !12
  %143 = load i64, ptr %chroffset.addr, align 8, !tbaa !12
  %call110 = call double @Maxent_hr_acceptor_prob(i64 noundef %142, i64 noundef %143)
  store double %call110, ptr %acceptor_prob, align 8, !tbaa !31
  %144 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %145 = load double, ptr %distal_splicesite_prob.addr, align 8, !tbaa !31
  %cmp111 = fcmp oge double %144, %145
  br i1 %cmp111, label %if.then113, label %if.end142

if.then113:                                       ; preds = %for.body
  %146 = load i32, ptr %matchlength, align 4, !tbaa !14
  %147 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %matchlengths114 = getelementptr inbounds %struct.Spliceends_T, ptr %147, i32 0, i32 7
  %148 = load ptr, ptr %matchlengths114, align 8, !tbaa !24
  %149 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom115 = sext i32 %149 to i64
  %arrayidx116 = getelementptr inbounds i32, ptr %148, i64 %idxprom115
  store i32 %146, ptr %arrayidx116, align 4, !tbaa !14
  %150 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %151 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimends117 = getelementptr inbounds %struct.Spliceends_T, ptr %151, i32 0, i32 8
  %152 = load ptr, ptr %trimends117, align 8, !tbaa !23
  %153 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom118 = sext i32 %153 to i64
  %arrayidx119 = getelementptr inbounds i32, ptr %152, i64 %idxprom118
  store i32 %150, ptr %arrayidx119, align 4, !tbaa !14
  %154 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %155 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %medial_nmismatches120 = getelementptr inbounds %struct.Spliceends_T, ptr %155, i32 0, i32 10
  %156 = load ptr, ptr %medial_nmismatches120, align 8, !tbaa !21
  %157 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom121 = sext i32 %157 to i64
  %arrayidx122 = getelementptr inbounds i32, ptr %156, i64 %idxprom121
  store i32 %154, ptr %arrayidx122, align 4, !tbaa !14
  %158 = load i64, ptr %distal_genomicpos, align 8, !tbaa !12
  %159 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %partners123 = getelementptr inbounds %struct.Spliceends_T, ptr %159, i32 0, i32 9
  %160 = load ptr, ptr %partners123, align 8, !tbaa !22
  %161 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom124 = sext i32 %161 to i64
  %arrayidx125 = getelementptr inbounds i64, ptr %160, i64 %idxprom124
  store i64 %158, ptr %arrayidx125, align 8, !tbaa !12
  %162 = load i32, ptr %local_nmismatches, align 4, !tbaa !14
  %163 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_nmismatches126 = getelementptr inbounds %struct.Spliceends_T, ptr %163, i32 0, i32 11
  %164 = load ptr, ptr %distal_nmismatches126, align 8, !tbaa !20
  %165 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom127 = sext i32 %165 to i64
  %arrayidx128 = getelementptr inbounds i32, ptr %164, i64 %idxprom127
  store i32 %162, ptr %arrayidx128, align 4, !tbaa !14
  %166 = load double, ptr %donor_prob, align 8, !tbaa !31
  %167 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %ambig_probs129 = getelementptr inbounds %struct.Spliceends_T, ptr %167, i32 0, i32 12
  %168 = load ptr, ptr %ambig_probs129, align 8, !tbaa !19
  %169 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom130 = sext i32 %169 to i64
  %arrayidx131 = getelementptr inbounds double, ptr %168, i64 %idxprom130
  store double %166, ptr %arrayidx131, align 8, !tbaa !31
  %170 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %171 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_probs132 = getelementptr inbounds %struct.Spliceends_T, ptr %171, i32 0, i32 13
  %172 = load ptr, ptr %distal_probs132, align 8, !tbaa !17
  %173 = load i32, ptr %k, align 4, !tbaa !14
  %inc133 = add nsw i32 %173, 1
  store i32 %inc133, ptr %k, align 4, !tbaa !14
  %idxprom134 = sext i32 %173 to i64
  %arrayidx135 = getelementptr inbounds double, ptr %172, i64 %idxprom134
  store double %170, ptr %arrayidx135, align 8, !tbaa !31
  %174 = load double, ptr %donor_prob, align 8, !tbaa !31
  %175 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %add136 = fadd double %174, %175
  %176 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  %177 = load double, ptr %176, align 8, !tbaa !31
  %cmp137 = fcmp ogt double %add136, %177
  br i1 %cmp137, label %if.then139, label %if.end141

if.then139:                                       ; preds = %if.then113
  %178 = load double, ptr %donor_prob, align 8, !tbaa !31
  %179 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %add140 = fadd double %178, %179
  %180 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  store double %add140, ptr %180, align 8, !tbaa !31
  br label %if.end141

if.end141:                                        ; preds = %if.then139, %if.then113
  %181 = load ptr, ptr %partnerp.addr, align 8, !tbaa !5
  store i8 1, ptr %181, align 1, !tbaa !16
  br label %if.end142

if.end142:                                        ; preds = %if.end141, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end142
  %182 = load i32, ptr %i, align 4, !tbaa !14
  %inc143 = add nsw i32 %182, 1
  store i32 %inc143, ptr %i, align 4, !tbaa !14
  br label %for.cond, !llvm.loop !78

for.end:                                          ; preds = %for.cond
  br label %if.end144

if.end144:                                        ; preds = %for.end, %if.end100
  br label %if.end145

if.end145:                                        ; preds = %if.end144, %if.end69
  br label %if.end146

if.end146:                                        ; preds = %if.end145, %if.end
  br label %if.end147

if.end147:                                        ; preds = %if.end146, %while.body22
  %183 = load i32, ptr %querypos, align 4, !tbaa !14
  %dec148 = add nsw i32 %183, -1
  store i32 %dec148, ptr %querypos, align 4, !tbaa !14
  %184 = load i64, ptr %genomicpos, align 8, !tbaa !12
  %dec149 = add i64 %184, -1
  store i64 %dec149, ptr %genomicpos, align 8, !tbaa !12
  %185 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %sub150 = sub nsw i32 %185, 1
  %cmp151 = icmp sge i32 %sub150, 0
  br i1 %cmp151, label %land.lhs.true, label %if.end160

land.lhs.true:                                    ; preds = %if.end147
  %186 = load ptr, ptr %mismatch_positions.addr, align 8, !tbaa !5
  %187 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %sub153 = sub nsw i32 %187, 1
  %idxprom154 = sext i32 %sub153 to i64
  %arrayidx155 = getelementptr inbounds i32, ptr %186, i64 %idxprom154
  %188 = load i32, ptr %arrayidx155, align 4, !tbaa !14
  %189 = load i32, ptr %querypos, align 4, !tbaa !14
  %cmp156 = icmp eq i32 %188, %189
  br i1 %cmp156, label %if.then158, label %if.end160

if.then158:                                       ; preds = %land.lhs.true
  %190 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %dec159 = add nsw i32 %190, -1
  store i32 %dec159, ptr %mismatchi, align 4, !tbaa !14
  br label %if.end160

if.end160:                                        ; preds = %if.then158, %land.lhs.true, %if.end147
  br label %while.cond15, !llvm.loop !79

while.end161:                                     ; preds = %land.end21
  store i32 0, ptr %nconsecutive, align 4, !tbaa !14
  br label %while.cond162

while.cond162:                                    ; preds = %if.end328, %while.end161
  %191 = load i32, ptr %k, align 4, !tbaa !14
  %cmp163 = icmp slt i32 %191, 30
  br i1 %cmp163, label %land.lhs.true165, label %land.end171

land.lhs.true165:                                 ; preds = %while.cond162
  %192 = load i64, ptr %genomicpos, align 8, !tbaa !12
  %193 = load i64, ptr %end_genomicpos.addr, align 8, !tbaa !12
  %cmp166 = icmp ugt i64 %192, %193
  br i1 %cmp166, label %land.rhs168, label %land.end171

land.rhs168:                                      ; preds = %land.lhs.true165
  %194 = load i32, ptr %nconsecutive, align 4, !tbaa !14
  %195 = load i32, ptr %max_nconsecutive.addr, align 4, !tbaa !14
  %cmp169 = icmp slt i32 %194, %195
  br label %land.end171

land.end171:                                      ; preds = %land.rhs168, %land.lhs.true165, %while.cond162
  %196 = phi i1 [ false, %land.lhs.true165 ], [ false, %while.cond162 ], [ %cmp169, %land.rhs168 ]
  br i1 %196, label %while.body172, label %while.end329

while.body172:                                    ; preds = %land.end171
  %197 = load i64, ptr %genomicpos, align 8, !tbaa !12
  %198 = load i64, ptr %chroffset.addr, align 8, !tbaa !12
  %call173 = call double @Maxent_hr_donor_prob(i64 noundef %197, i64 noundef %198)
  store double %call173, ptr %donor_prob, align 8, !tbaa !31
  %199 = load double, ptr %donor_prob, align 8, !tbaa !31
  %200 = load double, ptr %medial_splicesite_prob.addr, align 8, !tbaa !31
  %cmp174 = fcmp oge double %199, %200
  br i1 %cmp174, label %if.then176, label %if.end312

if.then176:                                       ; preds = %while.body172
  %201 = load i64, ptr %genomicpos, align 8, !tbaa !12
  %202 = load i64, ptr %left, align 8, !tbaa !12
  %sub177 = sub i64 %201, %202
  %conv178 = trunc i64 %sub177 to i32
  store i32 %conv178, ptr %splice_qpos, align 4, !tbaa !14
  %203 = load i8, ptr %search_localdb_p.addr, align 1, !tbaa !16
  %conv179 = zext i8 %203 to i32
  %cmp180 = icmp eq i32 %conv179, 0
  br i1 %cmp180, label %if.then182, label %if.else200

if.then182:                                       ; preds = %if.then176
  %204 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %205 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimends183 = getelementptr inbounds %struct.Spliceends_T, ptr %205, i32 0, i32 8
  %206 = load ptr, ptr %trimends183, align 8, !tbaa !23
  %207 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom184 = sext i32 %207 to i64
  %arrayidx185 = getelementptr inbounds i32, ptr %206, i64 %idxprom184
  store i32 %204, ptr %arrayidx185, align 4, !tbaa !14
  %208 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %209 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %medial_nmismatches186 = getelementptr inbounds %struct.Spliceends_T, ptr %209, i32 0, i32 10
  %210 = load ptr, ptr %medial_nmismatches186, align 8, !tbaa !21
  %211 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom187 = sext i32 %211 to i64
  %arrayidx188 = getelementptr inbounds i32, ptr %210, i64 %idxprom187
  store i32 %208, ptr %arrayidx188, align 4, !tbaa !14
  %212 = load double, ptr %donor_prob, align 8, !tbaa !31
  %213 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %ambig_probs189 = getelementptr inbounds %struct.Spliceends_T, ptr %213, i32 0, i32 12
  %214 = load ptr, ptr %ambig_probs189, align 8, !tbaa !19
  %215 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom190 = sext i32 %215 to i64
  %arrayidx191 = getelementptr inbounds double, ptr %214, i64 %idxprom190
  store double %212, ptr %arrayidx191, align 8, !tbaa !31
  %216 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_probs192 = getelementptr inbounds %struct.Spliceends_T, ptr %216, i32 0, i32 13
  %217 = load ptr, ptr %distal_probs192, align 8, !tbaa !17
  %218 = load i32, ptr %k, align 4, !tbaa !14
  %inc193 = add nsw i32 %218, 1
  store i32 %inc193, ptr %k, align 4, !tbaa !14
  %idxprom194 = sext i32 %218 to i64
  %arrayidx195 = getelementptr inbounds double, ptr %217, i64 %idxprom194
  store double 0.000000e+00, ptr %arrayidx195, align 8, !tbaa !31
  %219 = load double, ptr %donor_prob, align 8, !tbaa !31
  %220 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  %221 = load double, ptr %220, align 8, !tbaa !31
  %cmp196 = fcmp ogt double %219, %221
  br i1 %cmp196, label %if.then198, label %if.end199

if.then198:                                       ; preds = %if.then182
  %222 = load double, ptr %donor_prob, align 8, !tbaa !31
  %223 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  store double %222, ptr %223, align 8, !tbaa !31
  br label %if.end199

if.end199:                                        ; preds = %if.then198, %if.then182
  br label %if.end311

if.else200:                                       ; preds = %if.then176
  %224 = load ptr, ptr %novel_diagonals_alloc.addr, align 8, !tbaa !5
  %225 = load ptr, ptr @localdb, align 8, !tbaa !5
  %226 = load ptr, ptr %localdb_alloc.addr, align 8, !tbaa !5
  %227 = load i32, ptr %streamspace_max_alloc.addr, align 4, !tbaa !14
  %228 = load ptr, ptr %streamspace_alloc.addr, align 8, !tbaa !5
  %229 = load ptr, ptr %streamptr_alloc.addr, align 8, !tbaa !5
  %230 = load ptr, ptr %streamsize_alloc.addr, align 8, !tbaa !5
  %231 = load ptr, ptr %mergeinfo.addr, align 8, !tbaa !5
  %232 = load ptr, ptr %queryptr.addr, align 8, !tbaa !5
  %233 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %234 = load i32, ptr %pos3, align 4, !tbaa !14
  %235 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %236 = load i64, ptr %low_univdiagonal, align 8, !tbaa !12
  %237 = load i64, ptr %high_univdiagonal, align 8, !tbaa !12
  %238 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %239 = load i8, ptr %plusp.addr, align 1, !tbaa !16
  %240 = load i32, ptr %genestrand.addr, align 4, !tbaa !14
  %241 = load ptr, ptr @genomebits, align 8, !tbaa !5
  %242 = load i32, ptr %nmismatches_allowed.addr, align 4, !tbaa !14
  %243 = load i8, ptr %salvagep.addr, align 1, !tbaa !16
  %call201 = call i32 @Localdb_get(ptr noundef %matchlength, ptr noundef %local_nmismatches, ptr noundef %224, ptr noundef %225, ptr noundef %226, i32 noundef %227, ptr noundef %228, ptr noundef %229, ptr noundef %230, ptr noundef %231, ptr noundef %232, i32 noundef %233, i32 noundef %234, i32 noundef %235, i64 noundef %236, i64 noundef %237, ptr noundef %238, i8 noundef zeroext %239, i32 noundef %240, ptr noundef %241, i32 noundef %242, i8 noundef zeroext %243)
  store i32 %call201, ptr %novel_ndiagonals, align 4, !tbaa !14
  %cmp202 = icmp eq i32 %call201, 0
  br i1 %cmp202, label %if.then204, label %if.else231

if.then204:                                       ; preds = %if.else200
  %244 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %matchlengths205 = getelementptr inbounds %struct.Spliceends_T, ptr %244, i32 0, i32 7
  %245 = load ptr, ptr %matchlengths205, align 8, !tbaa !24
  %246 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom206 = sext i32 %246 to i64
  %arrayidx207 = getelementptr inbounds i32, ptr %245, i64 %idxprom206
  store i32 0, ptr %arrayidx207, align 4, !tbaa !14
  %247 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %248 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimends208 = getelementptr inbounds %struct.Spliceends_T, ptr %248, i32 0, i32 8
  %249 = load ptr, ptr %trimends208, align 8, !tbaa !23
  %250 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom209 = sext i32 %250 to i64
  %arrayidx210 = getelementptr inbounds i32, ptr %249, i64 %idxprom209
  store i32 %247, ptr %arrayidx210, align 4, !tbaa !14
  %251 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %252 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %medial_nmismatches211 = getelementptr inbounds %struct.Spliceends_T, ptr %252, i32 0, i32 10
  %253 = load ptr, ptr %medial_nmismatches211, align 8, !tbaa !21
  %254 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom212 = sext i32 %254 to i64
  %arrayidx213 = getelementptr inbounds i32, ptr %253, i64 %idxprom212
  store i32 %251, ptr %arrayidx213, align 4, !tbaa !14
  %255 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %partners214 = getelementptr inbounds %struct.Spliceends_T, ptr %255, i32 0, i32 9
  %256 = load ptr, ptr %partners214, align 8, !tbaa !22
  %257 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom215 = sext i32 %257 to i64
  %arrayidx216 = getelementptr inbounds i64, ptr %256, i64 %idxprom215
  store i64 0, ptr %arrayidx216, align 8, !tbaa !12
  %258 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_nmismatches217 = getelementptr inbounds %struct.Spliceends_T, ptr %258, i32 0, i32 11
  %259 = load ptr, ptr %distal_nmismatches217, align 8, !tbaa !20
  %260 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom218 = sext i32 %260 to i64
  %arrayidx219 = getelementptr inbounds i32, ptr %259, i64 %idxprom218
  store i32 -1, ptr %arrayidx219, align 4, !tbaa !14
  %261 = load double, ptr %donor_prob, align 8, !tbaa !31
  %262 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %ambig_probs220 = getelementptr inbounds %struct.Spliceends_T, ptr %262, i32 0, i32 12
  %263 = load ptr, ptr %ambig_probs220, align 8, !tbaa !19
  %264 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom221 = sext i32 %264 to i64
  %arrayidx222 = getelementptr inbounds double, ptr %263, i64 %idxprom221
  store double %261, ptr %arrayidx222, align 8, !tbaa !31
  %265 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_probs223 = getelementptr inbounds %struct.Spliceends_T, ptr %265, i32 0, i32 13
  %266 = load ptr, ptr %distal_probs223, align 8, !tbaa !17
  %267 = load i32, ptr %k, align 4, !tbaa !14
  %inc224 = add nsw i32 %267, 1
  store i32 %inc224, ptr %k, align 4, !tbaa !14
  %idxprom225 = sext i32 %267 to i64
  %arrayidx226 = getelementptr inbounds double, ptr %266, i64 %idxprom225
  store double 0.000000e+00, ptr %arrayidx226, align 8, !tbaa !31
  %268 = load double, ptr %donor_prob, align 8, !tbaa !31
  %269 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  %270 = load double, ptr %269, align 8, !tbaa !31
  %cmp227 = fcmp ogt double %268, %270
  br i1 %cmp227, label %if.then229, label %if.end230

if.then229:                                       ; preds = %if.then204
  %271 = load double, ptr %donor_prob, align 8, !tbaa !31
  %272 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  store double %271, ptr %272, align 8, !tbaa !31
  br label %if.end230

if.end230:                                        ; preds = %if.then229, %if.then204
  br label %if.end310

if.else231:                                       ; preds = %if.else200
  %273 = load i32, ptr %k, align 4, !tbaa !14
  %274 = load i32, ptr %novel_ndiagonals, align 4, !tbaa !14
  %add232 = add nsw i32 %273, %274
  %cmp233 = icmp sgt i32 %add232, 30
  br i1 %cmp233, label %if.then235, label %if.else262

if.then235:                                       ; preds = %if.else231
  %275 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %matchlengths236 = getelementptr inbounds %struct.Spliceends_T, ptr %275, i32 0, i32 7
  %276 = load ptr, ptr %matchlengths236, align 8, !tbaa !24
  %277 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom237 = sext i32 %277 to i64
  %arrayidx238 = getelementptr inbounds i32, ptr %276, i64 %idxprom237
  store i32 0, ptr %arrayidx238, align 4, !tbaa !14
  %278 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %279 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimends239 = getelementptr inbounds %struct.Spliceends_T, ptr %279, i32 0, i32 8
  %280 = load ptr, ptr %trimends239, align 8, !tbaa !23
  %281 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom240 = sext i32 %281 to i64
  %arrayidx241 = getelementptr inbounds i32, ptr %280, i64 %idxprom240
  store i32 %278, ptr %arrayidx241, align 4, !tbaa !14
  %282 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %283 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %medial_nmismatches242 = getelementptr inbounds %struct.Spliceends_T, ptr %283, i32 0, i32 10
  %284 = load ptr, ptr %medial_nmismatches242, align 8, !tbaa !21
  %285 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom243 = sext i32 %285 to i64
  %arrayidx244 = getelementptr inbounds i32, ptr %284, i64 %idxprom243
  store i32 %282, ptr %arrayidx244, align 4, !tbaa !14
  %286 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %partners245 = getelementptr inbounds %struct.Spliceends_T, ptr %286, i32 0, i32 9
  %287 = load ptr, ptr %partners245, align 8, !tbaa !22
  %288 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom246 = sext i32 %288 to i64
  %arrayidx247 = getelementptr inbounds i64, ptr %287, i64 %idxprom246
  store i64 0, ptr %arrayidx247, align 8, !tbaa !12
  %289 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_nmismatches248 = getelementptr inbounds %struct.Spliceends_T, ptr %289, i32 0, i32 11
  %290 = load ptr, ptr %distal_nmismatches248, align 8, !tbaa !20
  %291 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom249 = sext i32 %291 to i64
  %arrayidx250 = getelementptr inbounds i32, ptr %290, i64 %idxprom249
  store i32 -1, ptr %arrayidx250, align 4, !tbaa !14
  %292 = load double, ptr %donor_prob, align 8, !tbaa !31
  %293 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %ambig_probs251 = getelementptr inbounds %struct.Spliceends_T, ptr %293, i32 0, i32 12
  %294 = load ptr, ptr %ambig_probs251, align 8, !tbaa !19
  %295 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom252 = sext i32 %295 to i64
  %arrayidx253 = getelementptr inbounds double, ptr %294, i64 %idxprom252
  store double %292, ptr %arrayidx253, align 8, !tbaa !31
  %296 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_probs254 = getelementptr inbounds %struct.Spliceends_T, ptr %296, i32 0, i32 13
  %297 = load ptr, ptr %distal_probs254, align 8, !tbaa !17
  %298 = load i32, ptr %k, align 4, !tbaa !14
  %inc255 = add nsw i32 %298, 1
  store i32 %inc255, ptr %k, align 4, !tbaa !14
  %idxprom256 = sext i32 %298 to i64
  %arrayidx257 = getelementptr inbounds double, ptr %297, i64 %idxprom256
  store double 0.000000e+00, ptr %arrayidx257, align 8, !tbaa !31
  %299 = load double, ptr %donor_prob, align 8, !tbaa !31
  %300 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  %301 = load double, ptr %300, align 8, !tbaa !31
  %cmp258 = fcmp ogt double %299, %301
  br i1 %cmp258, label %if.then260, label %if.end261

if.then260:                                       ; preds = %if.then235
  %302 = load double, ptr %donor_prob, align 8, !tbaa !31
  %303 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  store double %302, ptr %303, align 8, !tbaa !31
  br label %if.end261

if.end261:                                        ; preds = %if.then260, %if.then235
  br label %if.end309

if.else262:                                       ; preds = %if.else231
  store i32 0, ptr %i, align 4, !tbaa !14
  br label %for.cond263

for.cond263:                                      ; preds = %for.inc306, %if.else262
  %304 = load i32, ptr %i, align 4, !tbaa !14
  %305 = load i32, ptr %novel_ndiagonals, align 4, !tbaa !14
  %cmp264 = icmp slt i32 %304, %305
  br i1 %cmp264, label %for.body266, label %for.end308

for.body266:                                      ; preds = %for.cond263
  %306 = load ptr, ptr %novel_diagonals_alloc.addr, align 8, !tbaa !5
  %307 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom267 = sext i32 %307 to i64
  %arrayidx268 = getelementptr inbounds i64, ptr %306, i64 %idxprom267
  %308 = load i64, ptr %arrayidx268, align 8, !tbaa !12
  %309 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %conv269 = sext i32 %309 to i64
  %sub270 = sub i64 %308, %conv269
  %310 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %conv271 = sext i32 %310 to i64
  %add272 = add i64 %sub270, %conv271
  store i64 %add272, ptr %distal_genomicpos, align 8, !tbaa !12
  %311 = load i64, ptr %distal_genomicpos, align 8, !tbaa !12
  %312 = load i64, ptr %chroffset.addr, align 8, !tbaa !12
  %call273 = call double @Maxent_hr_acceptor_prob(i64 noundef %311, i64 noundef %312)
  store double %call273, ptr %acceptor_prob, align 8, !tbaa !31
  %313 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %314 = load double, ptr %distal_splicesite_prob.addr, align 8, !tbaa !31
  %cmp274 = fcmp oge double %313, %314
  br i1 %cmp274, label %if.then276, label %if.end305

if.then276:                                       ; preds = %for.body266
  %315 = load i32, ptr %matchlength, align 4, !tbaa !14
  %316 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %matchlengths277 = getelementptr inbounds %struct.Spliceends_T, ptr %316, i32 0, i32 7
  %317 = load ptr, ptr %matchlengths277, align 8, !tbaa !24
  %318 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom278 = sext i32 %318 to i64
  %arrayidx279 = getelementptr inbounds i32, ptr %317, i64 %idxprom278
  store i32 %315, ptr %arrayidx279, align 4, !tbaa !14
  %319 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %320 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimends280 = getelementptr inbounds %struct.Spliceends_T, ptr %320, i32 0, i32 8
  %321 = load ptr, ptr %trimends280, align 8, !tbaa !23
  %322 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom281 = sext i32 %322 to i64
  %arrayidx282 = getelementptr inbounds i32, ptr %321, i64 %idxprom281
  store i32 %319, ptr %arrayidx282, align 4, !tbaa !14
  %323 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %324 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %medial_nmismatches283 = getelementptr inbounds %struct.Spliceends_T, ptr %324, i32 0, i32 10
  %325 = load ptr, ptr %medial_nmismatches283, align 8, !tbaa !21
  %326 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom284 = sext i32 %326 to i64
  %arrayidx285 = getelementptr inbounds i32, ptr %325, i64 %idxprom284
  store i32 %323, ptr %arrayidx285, align 4, !tbaa !14
  %327 = load i64, ptr %distal_genomicpos, align 8, !tbaa !12
  %328 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %partners286 = getelementptr inbounds %struct.Spliceends_T, ptr %328, i32 0, i32 9
  %329 = load ptr, ptr %partners286, align 8, !tbaa !22
  %330 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom287 = sext i32 %330 to i64
  %arrayidx288 = getelementptr inbounds i64, ptr %329, i64 %idxprom287
  store i64 %327, ptr %arrayidx288, align 8, !tbaa !12
  %331 = load i32, ptr %local_nmismatches, align 4, !tbaa !14
  %332 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_nmismatches289 = getelementptr inbounds %struct.Spliceends_T, ptr %332, i32 0, i32 11
  %333 = load ptr, ptr %distal_nmismatches289, align 8, !tbaa !20
  %334 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom290 = sext i32 %334 to i64
  %arrayidx291 = getelementptr inbounds i32, ptr %333, i64 %idxprom290
  store i32 %331, ptr %arrayidx291, align 4, !tbaa !14
  %335 = load double, ptr %donor_prob, align 8, !tbaa !31
  %336 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %ambig_probs292 = getelementptr inbounds %struct.Spliceends_T, ptr %336, i32 0, i32 12
  %337 = load ptr, ptr %ambig_probs292, align 8, !tbaa !19
  %338 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom293 = sext i32 %338 to i64
  %arrayidx294 = getelementptr inbounds double, ptr %337, i64 %idxprom293
  store double %335, ptr %arrayidx294, align 8, !tbaa !31
  %339 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %340 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_probs295 = getelementptr inbounds %struct.Spliceends_T, ptr %340, i32 0, i32 13
  %341 = load ptr, ptr %distal_probs295, align 8, !tbaa !17
  %342 = load i32, ptr %k, align 4, !tbaa !14
  %inc296 = add nsw i32 %342, 1
  store i32 %inc296, ptr %k, align 4, !tbaa !14
  %idxprom297 = sext i32 %342 to i64
  %arrayidx298 = getelementptr inbounds double, ptr %341, i64 %idxprom297
  store double %339, ptr %arrayidx298, align 8, !tbaa !31
  %343 = load double, ptr %donor_prob, align 8, !tbaa !31
  %344 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %add299 = fadd double %343, %344
  %345 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  %346 = load double, ptr %345, align 8, !tbaa !31
  %cmp300 = fcmp ogt double %add299, %346
  br i1 %cmp300, label %if.then302, label %if.end304

if.then302:                                       ; preds = %if.then276
  %347 = load double, ptr %donor_prob, align 8, !tbaa !31
  %348 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %add303 = fadd double %347, %348
  %349 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  store double %add303, ptr %349, align 8, !tbaa !31
  br label %if.end304

if.end304:                                        ; preds = %if.then302, %if.then276
  %350 = load ptr, ptr %partnerp.addr, align 8, !tbaa !5
  store i8 1, ptr %350, align 1, !tbaa !16
  br label %if.end305

if.end305:                                        ; preds = %if.end304, %for.body266
  br label %for.inc306

for.inc306:                                       ; preds = %if.end305
  %351 = load i32, ptr %i, align 4, !tbaa !14
  %inc307 = add nsw i32 %351, 1
  store i32 %inc307, ptr %i, align 4, !tbaa !14
  br label %for.cond263, !llvm.loop !80

for.end308:                                       ; preds = %for.cond263
  br label %if.end309

if.end309:                                        ; preds = %for.end308, %if.end261
  br label %if.end310

if.end310:                                        ; preds = %if.end309, %if.end230
  br label %if.end311

if.end311:                                        ; preds = %if.end310, %if.end199
  br label %if.end312

if.end312:                                        ; preds = %if.end311, %while.body172
  %352 = load i32, ptr %querypos, align 4, !tbaa !14
  %dec313 = add nsw i32 %352, -1
  store i32 %dec313, ptr %querypos, align 4, !tbaa !14
  %353 = load i64, ptr %genomicpos, align 8, !tbaa !12
  %dec314 = add i64 %353, -1
  store i64 %dec314, ptr %genomicpos, align 8, !tbaa !12
  %354 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %sub315 = sub nsw i32 %354, 1
  %cmp316 = icmp sge i32 %sub315, 0
  br i1 %cmp316, label %land.lhs.true318, label %if.else326

land.lhs.true318:                                 ; preds = %if.end312
  %355 = load ptr, ptr %mismatch_positions.addr, align 8, !tbaa !5
  %356 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %sub319 = sub nsw i32 %356, 1
  %idxprom320 = sext i32 %sub319 to i64
  %arrayidx321 = getelementptr inbounds i32, ptr %355, i64 %idxprom320
  %357 = load i32, ptr %arrayidx321, align 4, !tbaa !14
  %358 = load i32, ptr %querypos, align 4, !tbaa !14
  %cmp322 = icmp eq i32 %357, %358
  br i1 %cmp322, label %if.then324, label %if.else326

if.then324:                                       ; preds = %land.lhs.true318
  store i32 0, ptr %nconsecutive, align 4, !tbaa !14
  %359 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %dec325 = add nsw i32 %359, -1
  store i32 %dec325, ptr %mismatchi, align 4, !tbaa !14
  br label %if.end328

if.else326:                                       ; preds = %land.lhs.true318, %if.end312
  %360 = load i32, ptr %nconsecutive, align 4, !tbaa !14
  %inc327 = add nsw i32 %360, 1
  store i32 %inc327, ptr %nconsecutive, align 4, !tbaa !14
  br label %if.end328

if.end328:                                        ; preds = %if.else326, %if.then324
  br label %while.cond162, !llvm.loop !81

while.end329:                                     ; preds = %land.end171
  br label %if.end662

if.else330:                                       ; preds = %while.end
  br label %while.cond331

while.cond331:                                    ; preds = %if.end492, %if.else330
  %361 = load i32, ptr %k, align 4, !tbaa !14
  %cmp332 = icmp slt i32 %361, 30
  br i1 %cmp332, label %land.rhs334, label %land.end337

land.rhs334:                                      ; preds = %while.cond331
  %362 = load i64, ptr %genomicpos, align 8, !tbaa !12
  %363 = load i64, ptr %middle_genomicpos.addr, align 8, !tbaa !12
  %cmp335 = icmp ugt i64 %362, %363
  br label %land.end337

land.end337:                                      ; preds = %land.rhs334, %while.cond331
  %364 = phi i1 [ false, %while.cond331 ], [ %cmp335, %land.rhs334 ]
  br i1 %364, label %while.body338, label %while.end493

while.body338:                                    ; preds = %land.end337
  %365 = load i64, ptr %genomicpos, align 8, !tbaa !12
  %366 = load i64, ptr %chroffset.addr, align 8, !tbaa !12
  %call339 = call double @Maxent_hr_antiacceptor_prob(i64 noundef %365, i64 noundef %366)
  store double %call339, ptr %acceptor_prob, align 8, !tbaa !31
  %367 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %368 = load double, ptr %medial_splicesite_prob.addr, align 8, !tbaa !31
  %cmp340 = fcmp oge double %367, %368
  br i1 %cmp340, label %if.then342, label %if.end478

if.then342:                                       ; preds = %while.body338
  %369 = load i64, ptr %genomicpos, align 8, !tbaa !12
  %370 = load i64, ptr %left, align 8, !tbaa !12
  %sub343 = sub i64 %369, %370
  %conv344 = trunc i64 %sub343 to i32
  store i32 %conv344, ptr %splice_qpos, align 4, !tbaa !14
  %371 = load i8, ptr %search_localdb_p.addr, align 1, !tbaa !16
  %conv345 = zext i8 %371 to i32
  %cmp346 = icmp eq i32 %conv345, 0
  br i1 %cmp346, label %if.then348, label %if.else366

if.then348:                                       ; preds = %if.then342
  %372 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %373 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimends349 = getelementptr inbounds %struct.Spliceends_T, ptr %373, i32 0, i32 8
  %374 = load ptr, ptr %trimends349, align 8, !tbaa !23
  %375 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom350 = sext i32 %375 to i64
  %arrayidx351 = getelementptr inbounds i32, ptr %374, i64 %idxprom350
  store i32 %372, ptr %arrayidx351, align 4, !tbaa !14
  %376 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %377 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %medial_nmismatches352 = getelementptr inbounds %struct.Spliceends_T, ptr %377, i32 0, i32 10
  %378 = load ptr, ptr %medial_nmismatches352, align 8, !tbaa !21
  %379 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom353 = sext i32 %379 to i64
  %arrayidx354 = getelementptr inbounds i32, ptr %378, i64 %idxprom353
  store i32 %376, ptr %arrayidx354, align 4, !tbaa !14
  %380 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %381 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %ambig_probs355 = getelementptr inbounds %struct.Spliceends_T, ptr %381, i32 0, i32 12
  %382 = load ptr, ptr %ambig_probs355, align 8, !tbaa !19
  %383 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom356 = sext i32 %383 to i64
  %arrayidx357 = getelementptr inbounds double, ptr %382, i64 %idxprom356
  store double %380, ptr %arrayidx357, align 8, !tbaa !31
  %384 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_probs358 = getelementptr inbounds %struct.Spliceends_T, ptr %384, i32 0, i32 13
  %385 = load ptr, ptr %distal_probs358, align 8, !tbaa !17
  %386 = load i32, ptr %k, align 4, !tbaa !14
  %inc359 = add nsw i32 %386, 1
  store i32 %inc359, ptr %k, align 4, !tbaa !14
  %idxprom360 = sext i32 %386 to i64
  %arrayidx361 = getelementptr inbounds double, ptr %385, i64 %idxprom360
  store double 0.000000e+00, ptr %arrayidx361, align 8, !tbaa !31
  %387 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %388 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  %389 = load double, ptr %388, align 8, !tbaa !31
  %cmp362 = fcmp ogt double %387, %389
  br i1 %cmp362, label %if.then364, label %if.end365

if.then364:                                       ; preds = %if.then348
  %390 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %391 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  store double %390, ptr %391, align 8, !tbaa !31
  br label %if.end365

if.end365:                                        ; preds = %if.then364, %if.then348
  br label %if.end477

if.else366:                                       ; preds = %if.then342
  %392 = load ptr, ptr %novel_diagonals_alloc.addr, align 8, !tbaa !5
  %393 = load ptr, ptr @localdb, align 8, !tbaa !5
  %394 = load ptr, ptr %localdb_alloc.addr, align 8, !tbaa !5
  %395 = load i32, ptr %streamspace_max_alloc.addr, align 4, !tbaa !14
  %396 = load ptr, ptr %streamspace_alloc.addr, align 8, !tbaa !5
  %397 = load ptr, ptr %streamptr_alloc.addr, align 8, !tbaa !5
  %398 = load ptr, ptr %streamsize_alloc.addr, align 8, !tbaa !5
  %399 = load ptr, ptr %mergeinfo.addr, align 8, !tbaa !5
  %400 = load ptr, ptr %queryptr.addr, align 8, !tbaa !5
  %401 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %402 = load i32, ptr %pos3, align 4, !tbaa !14
  %403 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %404 = load i64, ptr %low_univdiagonal, align 8, !tbaa !12
  %405 = load i64, ptr %high_univdiagonal, align 8, !tbaa !12
  %406 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %407 = load i8, ptr %plusp.addr, align 1, !tbaa !16
  %408 = load i32, ptr %genestrand.addr, align 4, !tbaa !14
  %409 = load ptr, ptr @genomebits, align 8, !tbaa !5
  %410 = load i32, ptr %nmismatches_allowed.addr, align 4, !tbaa !14
  %411 = load i8, ptr %salvagep.addr, align 1, !tbaa !16
  %call367 = call i32 @Localdb_get(ptr noundef %matchlength, ptr noundef %local_nmismatches, ptr noundef %392, ptr noundef %393, ptr noundef %394, i32 noundef %395, ptr noundef %396, ptr noundef %397, ptr noundef %398, ptr noundef %399, ptr noundef %400, i32 noundef %401, i32 noundef %402, i32 noundef %403, i64 noundef %404, i64 noundef %405, ptr noundef %406, i8 noundef zeroext %407, i32 noundef %408, ptr noundef %409, i32 noundef %410, i8 noundef zeroext %411)
  store i32 %call367, ptr %novel_ndiagonals, align 4, !tbaa !14
  %cmp368 = icmp eq i32 %call367, 0
  br i1 %cmp368, label %if.then370, label %if.else397

if.then370:                                       ; preds = %if.else366
  %412 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %matchlengths371 = getelementptr inbounds %struct.Spliceends_T, ptr %412, i32 0, i32 7
  %413 = load ptr, ptr %matchlengths371, align 8, !tbaa !24
  %414 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom372 = sext i32 %414 to i64
  %arrayidx373 = getelementptr inbounds i32, ptr %413, i64 %idxprom372
  store i32 0, ptr %arrayidx373, align 4, !tbaa !14
  %415 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %416 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimends374 = getelementptr inbounds %struct.Spliceends_T, ptr %416, i32 0, i32 8
  %417 = load ptr, ptr %trimends374, align 8, !tbaa !23
  %418 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom375 = sext i32 %418 to i64
  %arrayidx376 = getelementptr inbounds i32, ptr %417, i64 %idxprom375
  store i32 %415, ptr %arrayidx376, align 4, !tbaa !14
  %419 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %420 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %medial_nmismatches377 = getelementptr inbounds %struct.Spliceends_T, ptr %420, i32 0, i32 10
  %421 = load ptr, ptr %medial_nmismatches377, align 8, !tbaa !21
  %422 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom378 = sext i32 %422 to i64
  %arrayidx379 = getelementptr inbounds i32, ptr %421, i64 %idxprom378
  store i32 %419, ptr %arrayidx379, align 4, !tbaa !14
  %423 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %partners380 = getelementptr inbounds %struct.Spliceends_T, ptr %423, i32 0, i32 9
  %424 = load ptr, ptr %partners380, align 8, !tbaa !22
  %425 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom381 = sext i32 %425 to i64
  %arrayidx382 = getelementptr inbounds i64, ptr %424, i64 %idxprom381
  store i64 0, ptr %arrayidx382, align 8, !tbaa !12
  %426 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_nmismatches383 = getelementptr inbounds %struct.Spliceends_T, ptr %426, i32 0, i32 11
  %427 = load ptr, ptr %distal_nmismatches383, align 8, !tbaa !20
  %428 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom384 = sext i32 %428 to i64
  %arrayidx385 = getelementptr inbounds i32, ptr %427, i64 %idxprom384
  store i32 -1, ptr %arrayidx385, align 4, !tbaa !14
  %429 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %430 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %ambig_probs386 = getelementptr inbounds %struct.Spliceends_T, ptr %430, i32 0, i32 12
  %431 = load ptr, ptr %ambig_probs386, align 8, !tbaa !19
  %432 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom387 = sext i32 %432 to i64
  %arrayidx388 = getelementptr inbounds double, ptr %431, i64 %idxprom387
  store double %429, ptr %arrayidx388, align 8, !tbaa !31
  %433 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_probs389 = getelementptr inbounds %struct.Spliceends_T, ptr %433, i32 0, i32 13
  %434 = load ptr, ptr %distal_probs389, align 8, !tbaa !17
  %435 = load i32, ptr %k, align 4, !tbaa !14
  %inc390 = add nsw i32 %435, 1
  store i32 %inc390, ptr %k, align 4, !tbaa !14
  %idxprom391 = sext i32 %435 to i64
  %arrayidx392 = getelementptr inbounds double, ptr %434, i64 %idxprom391
  store double 0.000000e+00, ptr %arrayidx392, align 8, !tbaa !31
  %436 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %437 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  %438 = load double, ptr %437, align 8, !tbaa !31
  %cmp393 = fcmp ogt double %436, %438
  br i1 %cmp393, label %if.then395, label %if.end396

if.then395:                                       ; preds = %if.then370
  %439 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %440 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  store double %439, ptr %440, align 8, !tbaa !31
  br label %if.end396

if.end396:                                        ; preds = %if.then395, %if.then370
  br label %if.end476

if.else397:                                       ; preds = %if.else366
  %441 = load i32, ptr %k, align 4, !tbaa !14
  %442 = load i32, ptr %novel_ndiagonals, align 4, !tbaa !14
  %add398 = add nsw i32 %441, %442
  %cmp399 = icmp sgt i32 %add398, 30
  br i1 %cmp399, label %if.then401, label %if.else428

if.then401:                                       ; preds = %if.else397
  %443 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %matchlengths402 = getelementptr inbounds %struct.Spliceends_T, ptr %443, i32 0, i32 7
  %444 = load ptr, ptr %matchlengths402, align 8, !tbaa !24
  %445 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom403 = sext i32 %445 to i64
  %arrayidx404 = getelementptr inbounds i32, ptr %444, i64 %idxprom403
  store i32 0, ptr %arrayidx404, align 4, !tbaa !14
  %446 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %447 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimends405 = getelementptr inbounds %struct.Spliceends_T, ptr %447, i32 0, i32 8
  %448 = load ptr, ptr %trimends405, align 8, !tbaa !23
  %449 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom406 = sext i32 %449 to i64
  %arrayidx407 = getelementptr inbounds i32, ptr %448, i64 %idxprom406
  store i32 %446, ptr %arrayidx407, align 4, !tbaa !14
  %450 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %451 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %medial_nmismatches408 = getelementptr inbounds %struct.Spliceends_T, ptr %451, i32 0, i32 10
  %452 = load ptr, ptr %medial_nmismatches408, align 8, !tbaa !21
  %453 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom409 = sext i32 %453 to i64
  %arrayidx410 = getelementptr inbounds i32, ptr %452, i64 %idxprom409
  store i32 %450, ptr %arrayidx410, align 4, !tbaa !14
  %454 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %partners411 = getelementptr inbounds %struct.Spliceends_T, ptr %454, i32 0, i32 9
  %455 = load ptr, ptr %partners411, align 8, !tbaa !22
  %456 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom412 = sext i32 %456 to i64
  %arrayidx413 = getelementptr inbounds i64, ptr %455, i64 %idxprom412
  store i64 0, ptr %arrayidx413, align 8, !tbaa !12
  %457 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_nmismatches414 = getelementptr inbounds %struct.Spliceends_T, ptr %457, i32 0, i32 11
  %458 = load ptr, ptr %distal_nmismatches414, align 8, !tbaa !20
  %459 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom415 = sext i32 %459 to i64
  %arrayidx416 = getelementptr inbounds i32, ptr %458, i64 %idxprom415
  store i32 -1, ptr %arrayidx416, align 4, !tbaa !14
  %460 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %461 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %ambig_probs417 = getelementptr inbounds %struct.Spliceends_T, ptr %461, i32 0, i32 12
  %462 = load ptr, ptr %ambig_probs417, align 8, !tbaa !19
  %463 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom418 = sext i32 %463 to i64
  %arrayidx419 = getelementptr inbounds double, ptr %462, i64 %idxprom418
  store double %460, ptr %arrayidx419, align 8, !tbaa !31
  %464 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_probs420 = getelementptr inbounds %struct.Spliceends_T, ptr %464, i32 0, i32 13
  %465 = load ptr, ptr %distal_probs420, align 8, !tbaa !17
  %466 = load i32, ptr %k, align 4, !tbaa !14
  %inc421 = add nsw i32 %466, 1
  store i32 %inc421, ptr %k, align 4, !tbaa !14
  %idxprom422 = sext i32 %466 to i64
  %arrayidx423 = getelementptr inbounds double, ptr %465, i64 %idxprom422
  store double 0.000000e+00, ptr %arrayidx423, align 8, !tbaa !31
  %467 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %468 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  %469 = load double, ptr %468, align 8, !tbaa !31
  %cmp424 = fcmp ogt double %467, %469
  br i1 %cmp424, label %if.then426, label %if.end427

if.then426:                                       ; preds = %if.then401
  %470 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %471 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  store double %470, ptr %471, align 8, !tbaa !31
  br label %if.end427

if.end427:                                        ; preds = %if.then426, %if.then401
  br label %if.end475

if.else428:                                       ; preds = %if.else397
  store i32 0, ptr %i, align 4, !tbaa !14
  br label %for.cond429

for.cond429:                                      ; preds = %for.inc472, %if.else428
  %472 = load i32, ptr %i, align 4, !tbaa !14
  %473 = load i32, ptr %novel_ndiagonals, align 4, !tbaa !14
  %cmp430 = icmp slt i32 %472, %473
  br i1 %cmp430, label %for.body432, label %for.end474

for.body432:                                      ; preds = %for.cond429
  %474 = load ptr, ptr %novel_diagonals_alloc.addr, align 8, !tbaa !5
  %475 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom433 = sext i32 %475 to i64
  %arrayidx434 = getelementptr inbounds i64, ptr %474, i64 %idxprom433
  %476 = load i64, ptr %arrayidx434, align 8, !tbaa !12
  %477 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %conv435 = sext i32 %477 to i64
  %sub436 = sub i64 %476, %conv435
  %478 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %conv437 = sext i32 %478 to i64
  %add438 = add i64 %sub436, %conv437
  store i64 %add438, ptr %distal_genomicpos, align 8, !tbaa !12
  %479 = load i64, ptr %distal_genomicpos, align 8, !tbaa !12
  %480 = load i64, ptr %chroffset.addr, align 8, !tbaa !12
  %call439 = call double @Maxent_hr_antidonor_prob(i64 noundef %479, i64 noundef %480)
  store double %call439, ptr %donor_prob, align 8, !tbaa !31
  %481 = load double, ptr %donor_prob, align 8, !tbaa !31
  %482 = load double, ptr %distal_splicesite_prob.addr, align 8, !tbaa !31
  %cmp440 = fcmp oge double %481, %482
  br i1 %cmp440, label %if.then442, label %if.end471

if.then442:                                       ; preds = %for.body432
  %483 = load i32, ptr %matchlength, align 4, !tbaa !14
  %484 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %matchlengths443 = getelementptr inbounds %struct.Spliceends_T, ptr %484, i32 0, i32 7
  %485 = load ptr, ptr %matchlengths443, align 8, !tbaa !24
  %486 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom444 = sext i32 %486 to i64
  %arrayidx445 = getelementptr inbounds i32, ptr %485, i64 %idxprom444
  store i32 %483, ptr %arrayidx445, align 4, !tbaa !14
  %487 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %488 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimends446 = getelementptr inbounds %struct.Spliceends_T, ptr %488, i32 0, i32 8
  %489 = load ptr, ptr %trimends446, align 8, !tbaa !23
  %490 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom447 = sext i32 %490 to i64
  %arrayidx448 = getelementptr inbounds i32, ptr %489, i64 %idxprom447
  store i32 %487, ptr %arrayidx448, align 4, !tbaa !14
  %491 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %492 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %medial_nmismatches449 = getelementptr inbounds %struct.Spliceends_T, ptr %492, i32 0, i32 10
  %493 = load ptr, ptr %medial_nmismatches449, align 8, !tbaa !21
  %494 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom450 = sext i32 %494 to i64
  %arrayidx451 = getelementptr inbounds i32, ptr %493, i64 %idxprom450
  store i32 %491, ptr %arrayidx451, align 4, !tbaa !14
  %495 = load i64, ptr %distal_genomicpos, align 8, !tbaa !12
  %496 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %partners452 = getelementptr inbounds %struct.Spliceends_T, ptr %496, i32 0, i32 9
  %497 = load ptr, ptr %partners452, align 8, !tbaa !22
  %498 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom453 = sext i32 %498 to i64
  %arrayidx454 = getelementptr inbounds i64, ptr %497, i64 %idxprom453
  store i64 %495, ptr %arrayidx454, align 8, !tbaa !12
  %499 = load i32, ptr %local_nmismatches, align 4, !tbaa !14
  %500 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_nmismatches455 = getelementptr inbounds %struct.Spliceends_T, ptr %500, i32 0, i32 11
  %501 = load ptr, ptr %distal_nmismatches455, align 8, !tbaa !20
  %502 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom456 = sext i32 %502 to i64
  %arrayidx457 = getelementptr inbounds i32, ptr %501, i64 %idxprom456
  store i32 %499, ptr %arrayidx457, align 4, !tbaa !14
  %503 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %504 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %ambig_probs458 = getelementptr inbounds %struct.Spliceends_T, ptr %504, i32 0, i32 12
  %505 = load ptr, ptr %ambig_probs458, align 8, !tbaa !19
  %506 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom459 = sext i32 %506 to i64
  %arrayidx460 = getelementptr inbounds double, ptr %505, i64 %idxprom459
  store double %503, ptr %arrayidx460, align 8, !tbaa !31
  %507 = load double, ptr %donor_prob, align 8, !tbaa !31
  %508 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_probs461 = getelementptr inbounds %struct.Spliceends_T, ptr %508, i32 0, i32 13
  %509 = load ptr, ptr %distal_probs461, align 8, !tbaa !17
  %510 = load i32, ptr %k, align 4, !tbaa !14
  %inc462 = add nsw i32 %510, 1
  store i32 %inc462, ptr %k, align 4, !tbaa !14
  %idxprom463 = sext i32 %510 to i64
  %arrayidx464 = getelementptr inbounds double, ptr %509, i64 %idxprom463
  store double %507, ptr %arrayidx464, align 8, !tbaa !31
  %511 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %512 = load double, ptr %donor_prob, align 8, !tbaa !31
  %add465 = fadd double %511, %512
  %513 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  %514 = load double, ptr %513, align 8, !tbaa !31
  %cmp466 = fcmp ogt double %add465, %514
  br i1 %cmp466, label %if.then468, label %if.end470

if.then468:                                       ; preds = %if.then442
  %515 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %516 = load double, ptr %donor_prob, align 8, !tbaa !31
  %add469 = fadd double %515, %516
  %517 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  store double %add469, ptr %517, align 8, !tbaa !31
  br label %if.end470

if.end470:                                        ; preds = %if.then468, %if.then442
  %518 = load ptr, ptr %partnerp.addr, align 8, !tbaa !5
  store i8 1, ptr %518, align 1, !tbaa !16
  br label %if.end471

if.end471:                                        ; preds = %if.end470, %for.body432
  br label %for.inc472

for.inc472:                                       ; preds = %if.end471
  %519 = load i32, ptr %i, align 4, !tbaa !14
  %inc473 = add nsw i32 %519, 1
  store i32 %inc473, ptr %i, align 4, !tbaa !14
  br label %for.cond429, !llvm.loop !82

for.end474:                                       ; preds = %for.cond429
  br label %if.end475

if.end475:                                        ; preds = %for.end474, %if.end427
  br label %if.end476

if.end476:                                        ; preds = %if.end475, %if.end396
  br label %if.end477

if.end477:                                        ; preds = %if.end476, %if.end365
  br label %if.end478

if.end478:                                        ; preds = %if.end477, %while.body338
  %520 = load i32, ptr %querypos, align 4, !tbaa !14
  %dec479 = add nsw i32 %520, -1
  store i32 %dec479, ptr %querypos, align 4, !tbaa !14
  %521 = load i64, ptr %genomicpos, align 8, !tbaa !12
  %dec480 = add i64 %521, -1
  store i64 %dec480, ptr %genomicpos, align 8, !tbaa !12
  %522 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %sub481 = sub nsw i32 %522, 1
  %cmp482 = icmp sge i32 %sub481, 0
  br i1 %cmp482, label %land.lhs.true484, label %if.end492

land.lhs.true484:                                 ; preds = %if.end478
  %523 = load ptr, ptr %mismatch_positions.addr, align 8, !tbaa !5
  %524 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %sub485 = sub nsw i32 %524, 1
  %idxprom486 = sext i32 %sub485 to i64
  %arrayidx487 = getelementptr inbounds i32, ptr %523, i64 %idxprom486
  %525 = load i32, ptr %arrayidx487, align 4, !tbaa !14
  %526 = load i32, ptr %querypos, align 4, !tbaa !14
  %cmp488 = icmp eq i32 %525, %526
  br i1 %cmp488, label %if.then490, label %if.end492

if.then490:                                       ; preds = %land.lhs.true484
  %527 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %dec491 = add nsw i32 %527, -1
  store i32 %dec491, ptr %mismatchi, align 4, !tbaa !14
  br label %if.end492

if.end492:                                        ; preds = %if.then490, %land.lhs.true484, %if.end478
  br label %while.cond331, !llvm.loop !83

while.end493:                                     ; preds = %land.end337
  store i32 0, ptr %nconsecutive, align 4, !tbaa !14
  br label %while.cond494

while.cond494:                                    ; preds = %if.end660, %while.end493
  %528 = load i32, ptr %k, align 4, !tbaa !14
  %cmp495 = icmp slt i32 %528, 30
  br i1 %cmp495, label %land.lhs.true497, label %land.end503

land.lhs.true497:                                 ; preds = %while.cond494
  %529 = load i64, ptr %genomicpos, align 8, !tbaa !12
  %530 = load i64, ptr %end_genomicpos.addr, align 8, !tbaa !12
  %cmp498 = icmp ugt i64 %529, %530
  br i1 %cmp498, label %land.rhs500, label %land.end503

land.rhs500:                                      ; preds = %land.lhs.true497
  %531 = load i32, ptr %nconsecutive, align 4, !tbaa !14
  %532 = load i32, ptr %max_nconsecutive.addr, align 4, !tbaa !14
  %cmp501 = icmp slt i32 %531, %532
  br label %land.end503

land.end503:                                      ; preds = %land.rhs500, %land.lhs.true497, %while.cond494
  %533 = phi i1 [ false, %land.lhs.true497 ], [ false, %while.cond494 ], [ %cmp501, %land.rhs500 ]
  br i1 %533, label %while.body504, label %while.end661

while.body504:                                    ; preds = %land.end503
  %534 = load i64, ptr %genomicpos, align 8, !tbaa !12
  %535 = load i64, ptr %chroffset.addr, align 8, !tbaa !12
  %call505 = call double @Maxent_hr_antiacceptor_prob(i64 noundef %534, i64 noundef %535)
  store double %call505, ptr %acceptor_prob, align 8, !tbaa !31
  %536 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %537 = load double, ptr %medial_splicesite_prob.addr, align 8, !tbaa !31
  %cmp506 = fcmp oge double %536, %537
  br i1 %cmp506, label %if.then508, label %if.end644

if.then508:                                       ; preds = %while.body504
  %538 = load i64, ptr %genomicpos, align 8, !tbaa !12
  %539 = load i64, ptr %left, align 8, !tbaa !12
  %sub509 = sub i64 %538, %539
  %conv510 = trunc i64 %sub509 to i32
  store i32 %conv510, ptr %splice_qpos, align 4, !tbaa !14
  %540 = load i8, ptr %search_localdb_p.addr, align 1, !tbaa !16
  %conv511 = zext i8 %540 to i32
  %cmp512 = icmp eq i32 %conv511, 0
  br i1 %cmp512, label %if.then514, label %if.else532

if.then514:                                       ; preds = %if.then508
  %541 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %542 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimends515 = getelementptr inbounds %struct.Spliceends_T, ptr %542, i32 0, i32 8
  %543 = load ptr, ptr %trimends515, align 8, !tbaa !23
  %544 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom516 = sext i32 %544 to i64
  %arrayidx517 = getelementptr inbounds i32, ptr %543, i64 %idxprom516
  store i32 %541, ptr %arrayidx517, align 4, !tbaa !14
  %545 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %546 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %medial_nmismatches518 = getelementptr inbounds %struct.Spliceends_T, ptr %546, i32 0, i32 10
  %547 = load ptr, ptr %medial_nmismatches518, align 8, !tbaa !21
  %548 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom519 = sext i32 %548 to i64
  %arrayidx520 = getelementptr inbounds i32, ptr %547, i64 %idxprom519
  store i32 %545, ptr %arrayidx520, align 4, !tbaa !14
  %549 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %550 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %ambig_probs521 = getelementptr inbounds %struct.Spliceends_T, ptr %550, i32 0, i32 12
  %551 = load ptr, ptr %ambig_probs521, align 8, !tbaa !19
  %552 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom522 = sext i32 %552 to i64
  %arrayidx523 = getelementptr inbounds double, ptr %551, i64 %idxprom522
  store double %549, ptr %arrayidx523, align 8, !tbaa !31
  %553 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_probs524 = getelementptr inbounds %struct.Spliceends_T, ptr %553, i32 0, i32 13
  %554 = load ptr, ptr %distal_probs524, align 8, !tbaa !17
  %555 = load i32, ptr %k, align 4, !tbaa !14
  %inc525 = add nsw i32 %555, 1
  store i32 %inc525, ptr %k, align 4, !tbaa !14
  %idxprom526 = sext i32 %555 to i64
  %arrayidx527 = getelementptr inbounds double, ptr %554, i64 %idxprom526
  store double 0.000000e+00, ptr %arrayidx527, align 8, !tbaa !31
  %556 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %557 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  %558 = load double, ptr %557, align 8, !tbaa !31
  %cmp528 = fcmp ogt double %556, %558
  br i1 %cmp528, label %if.then530, label %if.end531

if.then530:                                       ; preds = %if.then514
  %559 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %560 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  store double %559, ptr %560, align 8, !tbaa !31
  br label %if.end531

if.end531:                                        ; preds = %if.then530, %if.then514
  br label %if.end643

if.else532:                                       ; preds = %if.then508
  %561 = load ptr, ptr %novel_diagonals_alloc.addr, align 8, !tbaa !5
  %562 = load ptr, ptr @localdb, align 8, !tbaa !5
  %563 = load ptr, ptr %localdb_alloc.addr, align 8, !tbaa !5
  %564 = load i32, ptr %streamspace_max_alloc.addr, align 4, !tbaa !14
  %565 = load ptr, ptr %streamspace_alloc.addr, align 8, !tbaa !5
  %566 = load ptr, ptr %streamptr_alloc.addr, align 8, !tbaa !5
  %567 = load ptr, ptr %streamsize_alloc.addr, align 8, !tbaa !5
  %568 = load ptr, ptr %mergeinfo.addr, align 8, !tbaa !5
  %569 = load ptr, ptr %queryptr.addr, align 8, !tbaa !5
  %570 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %571 = load i32, ptr %pos3, align 4, !tbaa !14
  %572 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %573 = load i64, ptr %low_univdiagonal, align 8, !tbaa !12
  %574 = load i64, ptr %high_univdiagonal, align 8, !tbaa !12
  %575 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %576 = load i8, ptr %plusp.addr, align 1, !tbaa !16
  %577 = load i32, ptr %genestrand.addr, align 4, !tbaa !14
  %578 = load ptr, ptr @genomebits, align 8, !tbaa !5
  %579 = load i32, ptr %nmismatches_allowed.addr, align 4, !tbaa !14
  %580 = load i8, ptr %salvagep.addr, align 1, !tbaa !16
  %call533 = call i32 @Localdb_get(ptr noundef %matchlength, ptr noundef %local_nmismatches, ptr noundef %561, ptr noundef %562, ptr noundef %563, i32 noundef %564, ptr noundef %565, ptr noundef %566, ptr noundef %567, ptr noundef %568, ptr noundef %569, i32 noundef %570, i32 noundef %571, i32 noundef %572, i64 noundef %573, i64 noundef %574, ptr noundef %575, i8 noundef zeroext %576, i32 noundef %577, ptr noundef %578, i32 noundef %579, i8 noundef zeroext %580)
  store i32 %call533, ptr %novel_ndiagonals, align 4, !tbaa !14
  %cmp534 = icmp eq i32 %call533, 0
  br i1 %cmp534, label %if.then536, label %if.else563

if.then536:                                       ; preds = %if.else532
  %581 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %matchlengths537 = getelementptr inbounds %struct.Spliceends_T, ptr %581, i32 0, i32 7
  %582 = load ptr, ptr %matchlengths537, align 8, !tbaa !24
  %583 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom538 = sext i32 %583 to i64
  %arrayidx539 = getelementptr inbounds i32, ptr %582, i64 %idxprom538
  store i32 0, ptr %arrayidx539, align 4, !tbaa !14
  %584 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %585 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimends540 = getelementptr inbounds %struct.Spliceends_T, ptr %585, i32 0, i32 8
  %586 = load ptr, ptr %trimends540, align 8, !tbaa !23
  %587 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom541 = sext i32 %587 to i64
  %arrayidx542 = getelementptr inbounds i32, ptr %586, i64 %idxprom541
  store i32 %584, ptr %arrayidx542, align 4, !tbaa !14
  %588 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %589 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %medial_nmismatches543 = getelementptr inbounds %struct.Spliceends_T, ptr %589, i32 0, i32 10
  %590 = load ptr, ptr %medial_nmismatches543, align 8, !tbaa !21
  %591 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom544 = sext i32 %591 to i64
  %arrayidx545 = getelementptr inbounds i32, ptr %590, i64 %idxprom544
  store i32 %588, ptr %arrayidx545, align 4, !tbaa !14
  %592 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %partners546 = getelementptr inbounds %struct.Spliceends_T, ptr %592, i32 0, i32 9
  %593 = load ptr, ptr %partners546, align 8, !tbaa !22
  %594 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom547 = sext i32 %594 to i64
  %arrayidx548 = getelementptr inbounds i64, ptr %593, i64 %idxprom547
  store i64 0, ptr %arrayidx548, align 8, !tbaa !12
  %595 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_nmismatches549 = getelementptr inbounds %struct.Spliceends_T, ptr %595, i32 0, i32 11
  %596 = load ptr, ptr %distal_nmismatches549, align 8, !tbaa !20
  %597 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom550 = sext i32 %597 to i64
  %arrayidx551 = getelementptr inbounds i32, ptr %596, i64 %idxprom550
  store i32 -1, ptr %arrayidx551, align 4, !tbaa !14
  %598 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %599 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %ambig_probs552 = getelementptr inbounds %struct.Spliceends_T, ptr %599, i32 0, i32 12
  %600 = load ptr, ptr %ambig_probs552, align 8, !tbaa !19
  %601 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom553 = sext i32 %601 to i64
  %arrayidx554 = getelementptr inbounds double, ptr %600, i64 %idxprom553
  store double %598, ptr %arrayidx554, align 8, !tbaa !31
  %602 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_probs555 = getelementptr inbounds %struct.Spliceends_T, ptr %602, i32 0, i32 13
  %603 = load ptr, ptr %distal_probs555, align 8, !tbaa !17
  %604 = load i32, ptr %k, align 4, !tbaa !14
  %inc556 = add nsw i32 %604, 1
  store i32 %inc556, ptr %k, align 4, !tbaa !14
  %idxprom557 = sext i32 %604 to i64
  %arrayidx558 = getelementptr inbounds double, ptr %603, i64 %idxprom557
  store double 0.000000e+00, ptr %arrayidx558, align 8, !tbaa !31
  %605 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %606 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  %607 = load double, ptr %606, align 8, !tbaa !31
  %cmp559 = fcmp ogt double %605, %607
  br i1 %cmp559, label %if.then561, label %if.end562

if.then561:                                       ; preds = %if.then536
  %608 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %609 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  store double %608, ptr %609, align 8, !tbaa !31
  br label %if.end562

if.end562:                                        ; preds = %if.then561, %if.then536
  br label %if.end642

if.else563:                                       ; preds = %if.else532
  %610 = load i32, ptr %k, align 4, !tbaa !14
  %611 = load i32, ptr %novel_ndiagonals, align 4, !tbaa !14
  %add564 = add nsw i32 %610, %611
  %cmp565 = icmp sgt i32 %add564, 30
  br i1 %cmp565, label %if.then567, label %if.else594

if.then567:                                       ; preds = %if.else563
  %612 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %matchlengths568 = getelementptr inbounds %struct.Spliceends_T, ptr %612, i32 0, i32 7
  %613 = load ptr, ptr %matchlengths568, align 8, !tbaa !24
  %614 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom569 = sext i32 %614 to i64
  %arrayidx570 = getelementptr inbounds i32, ptr %613, i64 %idxprom569
  store i32 0, ptr %arrayidx570, align 4, !tbaa !14
  %615 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %616 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimends571 = getelementptr inbounds %struct.Spliceends_T, ptr %616, i32 0, i32 8
  %617 = load ptr, ptr %trimends571, align 8, !tbaa !23
  %618 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom572 = sext i32 %618 to i64
  %arrayidx573 = getelementptr inbounds i32, ptr %617, i64 %idxprom572
  store i32 %615, ptr %arrayidx573, align 4, !tbaa !14
  %619 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %620 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %medial_nmismatches574 = getelementptr inbounds %struct.Spliceends_T, ptr %620, i32 0, i32 10
  %621 = load ptr, ptr %medial_nmismatches574, align 8, !tbaa !21
  %622 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom575 = sext i32 %622 to i64
  %arrayidx576 = getelementptr inbounds i32, ptr %621, i64 %idxprom575
  store i32 %619, ptr %arrayidx576, align 4, !tbaa !14
  %623 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %partners577 = getelementptr inbounds %struct.Spliceends_T, ptr %623, i32 0, i32 9
  %624 = load ptr, ptr %partners577, align 8, !tbaa !22
  %625 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom578 = sext i32 %625 to i64
  %arrayidx579 = getelementptr inbounds i64, ptr %624, i64 %idxprom578
  store i64 0, ptr %arrayidx579, align 8, !tbaa !12
  %626 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_nmismatches580 = getelementptr inbounds %struct.Spliceends_T, ptr %626, i32 0, i32 11
  %627 = load ptr, ptr %distal_nmismatches580, align 8, !tbaa !20
  %628 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom581 = sext i32 %628 to i64
  %arrayidx582 = getelementptr inbounds i32, ptr %627, i64 %idxprom581
  store i32 -1, ptr %arrayidx582, align 4, !tbaa !14
  %629 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %630 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %ambig_probs583 = getelementptr inbounds %struct.Spliceends_T, ptr %630, i32 0, i32 12
  %631 = load ptr, ptr %ambig_probs583, align 8, !tbaa !19
  %632 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom584 = sext i32 %632 to i64
  %arrayidx585 = getelementptr inbounds double, ptr %631, i64 %idxprom584
  store double %629, ptr %arrayidx585, align 8, !tbaa !31
  %633 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_probs586 = getelementptr inbounds %struct.Spliceends_T, ptr %633, i32 0, i32 13
  %634 = load ptr, ptr %distal_probs586, align 8, !tbaa !17
  %635 = load i32, ptr %k, align 4, !tbaa !14
  %inc587 = add nsw i32 %635, 1
  store i32 %inc587, ptr %k, align 4, !tbaa !14
  %idxprom588 = sext i32 %635 to i64
  %arrayidx589 = getelementptr inbounds double, ptr %634, i64 %idxprom588
  store double 0.000000e+00, ptr %arrayidx589, align 8, !tbaa !31
  %636 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %637 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  %638 = load double, ptr %637, align 8, !tbaa !31
  %cmp590 = fcmp ogt double %636, %638
  br i1 %cmp590, label %if.then592, label %if.end593

if.then592:                                       ; preds = %if.then567
  %639 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %640 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  store double %639, ptr %640, align 8, !tbaa !31
  br label %if.end593

if.end593:                                        ; preds = %if.then592, %if.then567
  br label %if.end641

if.else594:                                       ; preds = %if.else563
  store i32 0, ptr %i, align 4, !tbaa !14
  br label %for.cond595

for.cond595:                                      ; preds = %for.inc638, %if.else594
  %641 = load i32, ptr %i, align 4, !tbaa !14
  %642 = load i32, ptr %novel_ndiagonals, align 4, !tbaa !14
  %cmp596 = icmp slt i32 %641, %642
  br i1 %cmp596, label %for.body598, label %for.end640

for.body598:                                      ; preds = %for.cond595
  %643 = load ptr, ptr %novel_diagonals_alloc.addr, align 8, !tbaa !5
  %644 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom599 = sext i32 %644 to i64
  %arrayidx600 = getelementptr inbounds i64, ptr %643, i64 %idxprom599
  %645 = load i64, ptr %arrayidx600, align 8, !tbaa !12
  %646 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %conv601 = sext i32 %646 to i64
  %sub602 = sub i64 %645, %conv601
  %647 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %conv603 = sext i32 %647 to i64
  %add604 = add i64 %sub602, %conv603
  store i64 %add604, ptr %distal_genomicpos, align 8, !tbaa !12
  %648 = load i64, ptr %distal_genomicpos, align 8, !tbaa !12
  %649 = load i64, ptr %chroffset.addr, align 8, !tbaa !12
  %call605 = call double @Maxent_hr_antidonor_prob(i64 noundef %648, i64 noundef %649)
  store double %call605, ptr %donor_prob, align 8, !tbaa !31
  %650 = load double, ptr %donor_prob, align 8, !tbaa !31
  %651 = load double, ptr %distal_splicesite_prob.addr, align 8, !tbaa !31
  %cmp606 = fcmp oge double %650, %651
  br i1 %cmp606, label %if.then608, label %if.end637

if.then608:                                       ; preds = %for.body598
  %652 = load i32, ptr %matchlength, align 4, !tbaa !14
  %653 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %matchlengths609 = getelementptr inbounds %struct.Spliceends_T, ptr %653, i32 0, i32 7
  %654 = load ptr, ptr %matchlengths609, align 8, !tbaa !24
  %655 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom610 = sext i32 %655 to i64
  %arrayidx611 = getelementptr inbounds i32, ptr %654, i64 %idxprom610
  store i32 %652, ptr %arrayidx611, align 4, !tbaa !14
  %656 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %657 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimends612 = getelementptr inbounds %struct.Spliceends_T, ptr %657, i32 0, i32 8
  %658 = load ptr, ptr %trimends612, align 8, !tbaa !23
  %659 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom613 = sext i32 %659 to i64
  %arrayidx614 = getelementptr inbounds i32, ptr %658, i64 %idxprom613
  store i32 %656, ptr %arrayidx614, align 4, !tbaa !14
  %660 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %661 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %medial_nmismatches615 = getelementptr inbounds %struct.Spliceends_T, ptr %661, i32 0, i32 10
  %662 = load ptr, ptr %medial_nmismatches615, align 8, !tbaa !21
  %663 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom616 = sext i32 %663 to i64
  %arrayidx617 = getelementptr inbounds i32, ptr %662, i64 %idxprom616
  store i32 %660, ptr %arrayidx617, align 4, !tbaa !14
  %664 = load i64, ptr %distal_genomicpos, align 8, !tbaa !12
  %665 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %partners618 = getelementptr inbounds %struct.Spliceends_T, ptr %665, i32 0, i32 9
  %666 = load ptr, ptr %partners618, align 8, !tbaa !22
  %667 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom619 = sext i32 %667 to i64
  %arrayidx620 = getelementptr inbounds i64, ptr %666, i64 %idxprom619
  store i64 %664, ptr %arrayidx620, align 8, !tbaa !12
  %668 = load i32, ptr %local_nmismatches, align 4, !tbaa !14
  %669 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_nmismatches621 = getelementptr inbounds %struct.Spliceends_T, ptr %669, i32 0, i32 11
  %670 = load ptr, ptr %distal_nmismatches621, align 8, !tbaa !20
  %671 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom622 = sext i32 %671 to i64
  %arrayidx623 = getelementptr inbounds i32, ptr %670, i64 %idxprom622
  store i32 %668, ptr %arrayidx623, align 4, !tbaa !14
  %672 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %673 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %ambig_probs624 = getelementptr inbounds %struct.Spliceends_T, ptr %673, i32 0, i32 12
  %674 = load ptr, ptr %ambig_probs624, align 8, !tbaa !19
  %675 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom625 = sext i32 %675 to i64
  %arrayidx626 = getelementptr inbounds double, ptr %674, i64 %idxprom625
  store double %672, ptr %arrayidx626, align 8, !tbaa !31
  %676 = load double, ptr %donor_prob, align 8, !tbaa !31
  %677 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_probs627 = getelementptr inbounds %struct.Spliceends_T, ptr %677, i32 0, i32 13
  %678 = load ptr, ptr %distal_probs627, align 8, !tbaa !17
  %679 = load i32, ptr %k, align 4, !tbaa !14
  %inc628 = add nsw i32 %679, 1
  store i32 %inc628, ptr %k, align 4, !tbaa !14
  %idxprom629 = sext i32 %679 to i64
  %arrayidx630 = getelementptr inbounds double, ptr %678, i64 %idxprom629
  store double %676, ptr %arrayidx630, align 8, !tbaa !31
  %680 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %681 = load double, ptr %donor_prob, align 8, !tbaa !31
  %add631 = fadd double %680, %681
  %682 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  %683 = load double, ptr %682, align 8, !tbaa !31
  %cmp632 = fcmp ogt double %add631, %683
  br i1 %cmp632, label %if.then634, label %if.end636

if.then634:                                       ; preds = %if.then608
  %684 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %685 = load double, ptr %donor_prob, align 8, !tbaa !31
  %add635 = fadd double %684, %685
  %686 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  store double %add635, ptr %686, align 8, !tbaa !31
  br label %if.end636

if.end636:                                        ; preds = %if.then634, %if.then608
  %687 = load ptr, ptr %partnerp.addr, align 8, !tbaa !5
  store i8 1, ptr %687, align 1, !tbaa !16
  br label %if.end637

if.end637:                                        ; preds = %if.end636, %for.body598
  br label %for.inc638

for.inc638:                                       ; preds = %if.end637
  %688 = load i32, ptr %i, align 4, !tbaa !14
  %inc639 = add nsw i32 %688, 1
  store i32 %inc639, ptr %i, align 4, !tbaa !14
  br label %for.cond595, !llvm.loop !84

for.end640:                                       ; preds = %for.cond595
  br label %if.end641

if.end641:                                        ; preds = %for.end640, %if.end593
  br label %if.end642

if.end642:                                        ; preds = %if.end641, %if.end562
  br label %if.end643

if.end643:                                        ; preds = %if.end642, %if.end531
  br label %if.end644

if.end644:                                        ; preds = %if.end643, %while.body504
  %689 = load i32, ptr %querypos, align 4, !tbaa !14
  %dec645 = add nsw i32 %689, -1
  store i32 %dec645, ptr %querypos, align 4, !tbaa !14
  %690 = load i64, ptr %genomicpos, align 8, !tbaa !12
  %dec646 = add i64 %690, -1
  store i64 %dec646, ptr %genomicpos, align 8, !tbaa !12
  %691 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %sub647 = sub nsw i32 %691, 1
  %cmp648 = icmp sge i32 %sub647, 0
  br i1 %cmp648, label %land.lhs.true650, label %if.else658

land.lhs.true650:                                 ; preds = %if.end644
  %692 = load ptr, ptr %mismatch_positions.addr, align 8, !tbaa !5
  %693 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %sub651 = sub nsw i32 %693, 1
  %idxprom652 = sext i32 %sub651 to i64
  %arrayidx653 = getelementptr inbounds i32, ptr %692, i64 %idxprom652
  %694 = load i32, ptr %arrayidx653, align 4, !tbaa !14
  %695 = load i32, ptr %querypos, align 4, !tbaa !14
  %cmp654 = icmp eq i32 %694, %695
  br i1 %cmp654, label %if.then656, label %if.else658

if.then656:                                       ; preds = %land.lhs.true650
  store i32 0, ptr %nconsecutive, align 4, !tbaa !14
  %696 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %dec657 = add nsw i32 %696, -1
  store i32 %dec657, ptr %mismatchi, align 4, !tbaa !14
  br label %if.end660

if.else658:                                       ; preds = %land.lhs.true650, %if.end644
  %697 = load i32, ptr %nconsecutive, align 4, !tbaa !14
  %inc659 = add nsw i32 %697, 1
  store i32 %inc659, ptr %nconsecutive, align 4, !tbaa !14
  br label %if.end660

if.end660:                                        ; preds = %if.else658, %if.then656
  br label %while.cond494, !llvm.loop !85

while.end661:                                     ; preds = %land.end503
  br label %if.end662

if.end662:                                        ; preds = %while.end661, %while.end329
  %698 = load i32, ptr %k, align 4, !tbaa !14
  %cmp663 = icmp eq i32 %698, 0
  br i1 %cmp663, label %if.then665, label %if.else666

if.then665:                                       ; preds = %if.end662
  store i32 0, ptr %nspliceends, align 4, !tbaa !14
  br label %if.end797

if.else666:                                       ; preds = %if.end662
  %699 = load i8, ptr %innerp.addr, align 1, !tbaa !16
  %conv667 = zext i8 %699 to i32
  %cmp668 = icmp eq i32 %conv667, 0
  br i1 %cmp668, label %if.then670, label %if.else732

if.then670:                                       ; preds = %if.else666
  store i32 0, ptr %i, align 4, !tbaa !14
  br label %for.cond671

for.cond671:                                      ; preds = %for.inc729, %if.then670
  %700 = load i32, ptr %i, align 4, !tbaa !14
  %701 = load i32, ptr %k, align 4, !tbaa !14
  %cmp672 = icmp slt i32 %700, %701
  br i1 %cmp672, label %for.body674, label %for.end731

for.body674:                                      ; preds = %for.cond671
  %702 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %ambig_probs675 = getelementptr inbounds %struct.Spliceends_T, ptr %702, i32 0, i32 12
  %703 = load ptr, ptr %ambig_probs675, align 8, !tbaa !19
  %704 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom676 = sext i32 %704 to i64
  %arrayidx677 = getelementptr inbounds double, ptr %703, i64 %idxprom676
  %705 = load double, ptr %arrayidx677, align 8, !tbaa !31
  %706 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_probs678 = getelementptr inbounds %struct.Spliceends_T, ptr %706, i32 0, i32 13
  %707 = load ptr, ptr %distal_probs678, align 8, !tbaa !17
  %708 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom679 = sext i32 %708 to i64
  %arrayidx680 = getelementptr inbounds double, ptr %707, i64 %idxprom679
  %709 = load double, ptr %arrayidx680, align 8, !tbaa !31
  %add681 = fadd double %705, %709
  %710 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  %711 = load double, ptr %710, align 8, !tbaa !31
  %cmp682 = fcmp oeq double %add681, %711
  br i1 %cmp682, label %if.then684, label %if.end728

if.then684:                                       ; preds = %for.body674
  %712 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %matchlengths685 = getelementptr inbounds %struct.Spliceends_T, ptr %712, i32 0, i32 7
  %713 = load ptr, ptr %matchlengths685, align 8, !tbaa !24
  %714 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom686 = sext i32 %714 to i64
  %arrayidx687 = getelementptr inbounds i32, ptr %713, i64 %idxprom686
  %715 = load i32, ptr %arrayidx687, align 4, !tbaa !14
  %716 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %matchlengths688 = getelementptr inbounds %struct.Spliceends_T, ptr %716, i32 0, i32 7
  %717 = load ptr, ptr %matchlengths688, align 8, !tbaa !24
  %718 = load i32, ptr %nspliceends, align 4, !tbaa !14
  %idxprom689 = sext i32 %718 to i64
  %arrayidx690 = getelementptr inbounds i32, ptr %717, i64 %idxprom689
  store i32 %715, ptr %arrayidx690, align 4, !tbaa !14
  %719 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimends691 = getelementptr inbounds %struct.Spliceends_T, ptr %719, i32 0, i32 8
  %720 = load ptr, ptr %trimends691, align 8, !tbaa !23
  %721 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom692 = sext i32 %721 to i64
  %arrayidx693 = getelementptr inbounds i32, ptr %720, i64 %idxprom692
  %722 = load i32, ptr %arrayidx693, align 4, !tbaa !14
  %723 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimends694 = getelementptr inbounds %struct.Spliceends_T, ptr %723, i32 0, i32 8
  %724 = load ptr, ptr %trimends694, align 8, !tbaa !23
  %725 = load i32, ptr %nspliceends, align 4, !tbaa !14
  %idxprom695 = sext i32 %725 to i64
  %arrayidx696 = getelementptr inbounds i32, ptr %724, i64 %idxprom695
  store i32 %722, ptr %arrayidx696, align 4, !tbaa !14
  %726 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %medial_nmismatches697 = getelementptr inbounds %struct.Spliceends_T, ptr %726, i32 0, i32 10
  %727 = load ptr, ptr %medial_nmismatches697, align 8, !tbaa !21
  %728 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom698 = sext i32 %728 to i64
  %arrayidx699 = getelementptr inbounds i32, ptr %727, i64 %idxprom698
  %729 = load i32, ptr %arrayidx699, align 4, !tbaa !14
  %730 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %medial_nmismatches700 = getelementptr inbounds %struct.Spliceends_T, ptr %730, i32 0, i32 10
  %731 = load ptr, ptr %medial_nmismatches700, align 8, !tbaa !21
  %732 = load i32, ptr %nspliceends, align 4, !tbaa !14
  %idxprom701 = sext i32 %732 to i64
  %arrayidx702 = getelementptr inbounds i32, ptr %731, i64 %idxprom701
  store i32 %729, ptr %arrayidx702, align 4, !tbaa !14
  %733 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %partners703 = getelementptr inbounds %struct.Spliceends_T, ptr %733, i32 0, i32 9
  %734 = load ptr, ptr %partners703, align 8, !tbaa !22
  %735 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom704 = sext i32 %735 to i64
  %arrayidx705 = getelementptr inbounds i64, ptr %734, i64 %idxprom704
  %736 = load i64, ptr %arrayidx705, align 8, !tbaa !12
  %737 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %partners706 = getelementptr inbounds %struct.Spliceends_T, ptr %737, i32 0, i32 9
  %738 = load ptr, ptr %partners706, align 8, !tbaa !22
  %739 = load i32, ptr %nspliceends, align 4, !tbaa !14
  %idxprom707 = sext i32 %739 to i64
  %arrayidx708 = getelementptr inbounds i64, ptr %738, i64 %idxprom707
  store i64 %736, ptr %arrayidx708, align 8, !tbaa !12
  %740 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_nmismatches709 = getelementptr inbounds %struct.Spliceends_T, ptr %740, i32 0, i32 11
  %741 = load ptr, ptr %distal_nmismatches709, align 8, !tbaa !20
  %742 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom710 = sext i32 %742 to i64
  %arrayidx711 = getelementptr inbounds i32, ptr %741, i64 %idxprom710
  %743 = load i32, ptr %arrayidx711, align 4, !tbaa !14
  %744 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_nmismatches712 = getelementptr inbounds %struct.Spliceends_T, ptr %744, i32 0, i32 11
  %745 = load ptr, ptr %distal_nmismatches712, align 8, !tbaa !20
  %746 = load i32, ptr %nspliceends, align 4, !tbaa !14
  %idxprom713 = sext i32 %746 to i64
  %arrayidx714 = getelementptr inbounds i32, ptr %745, i64 %idxprom713
  store i32 %743, ptr %arrayidx714, align 4, !tbaa !14
  %747 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %ambig_probs715 = getelementptr inbounds %struct.Spliceends_T, ptr %747, i32 0, i32 12
  %748 = load ptr, ptr %ambig_probs715, align 8, !tbaa !19
  %749 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom716 = sext i32 %749 to i64
  %arrayidx717 = getelementptr inbounds double, ptr %748, i64 %idxprom716
  %750 = load double, ptr %arrayidx717, align 8, !tbaa !31
  %751 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %ambig_probs718 = getelementptr inbounds %struct.Spliceends_T, ptr %751, i32 0, i32 12
  %752 = load ptr, ptr %ambig_probs718, align 8, !tbaa !19
  %753 = load i32, ptr %nspliceends, align 4, !tbaa !14
  %idxprom719 = sext i32 %753 to i64
  %arrayidx720 = getelementptr inbounds double, ptr %752, i64 %idxprom719
  store double %750, ptr %arrayidx720, align 8, !tbaa !31
  %754 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_probs721 = getelementptr inbounds %struct.Spliceends_T, ptr %754, i32 0, i32 13
  %755 = load ptr, ptr %distal_probs721, align 8, !tbaa !17
  %756 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom722 = sext i32 %756 to i64
  %arrayidx723 = getelementptr inbounds double, ptr %755, i64 %idxprom722
  %757 = load double, ptr %arrayidx723, align 8, !tbaa !31
  %758 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_probs724 = getelementptr inbounds %struct.Spliceends_T, ptr %758, i32 0, i32 13
  %759 = load ptr, ptr %distal_probs724, align 8, !tbaa !17
  %760 = load i32, ptr %nspliceends, align 4, !tbaa !14
  %inc725 = add nsw i32 %760, 1
  store i32 %inc725, ptr %nspliceends, align 4, !tbaa !14
  %idxprom726 = sext i32 %760 to i64
  %arrayidx727 = getelementptr inbounds double, ptr %759, i64 %idxprom726
  store double %757, ptr %arrayidx727, align 8, !tbaa !31
  br label %if.end728

if.end728:                                        ; preds = %if.then684, %for.body674
  br label %for.inc729

for.inc729:                                       ; preds = %if.end728
  %761 = load i32, ptr %i, align 4, !tbaa !14
  %inc730 = add nsw i32 %761, 1
  store i32 %inc730, ptr %i, align 4, !tbaa !14
  br label %for.cond671, !llvm.loop !86

for.end731:                                       ; preds = %for.cond671
  br label %if.end796

if.else732:                                       ; preds = %if.else666
  %762 = load ptr, ptr %partnerp.addr, align 8, !tbaa !5
  %763 = load i8, ptr %762, align 1, !tbaa !16
  %conv733 = zext i8 %763 to i32
  %cmp734 = icmp eq i32 %conv733, 1
  br i1 %cmp734, label %if.then736, label %if.else794

if.then736:                                       ; preds = %if.else732
  store i32 0, ptr %i, align 4, !tbaa !14
  br label %for.cond737

for.cond737:                                      ; preds = %for.inc791, %if.then736
  %764 = load i32, ptr %i, align 4, !tbaa !14
  %765 = load i32, ptr %k, align 4, !tbaa !14
  %cmp738 = icmp slt i32 %764, %765
  br i1 %cmp738, label %for.body740, label %for.end793

for.body740:                                      ; preds = %for.cond737
  %766 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %partners741 = getelementptr inbounds %struct.Spliceends_T, ptr %766, i32 0, i32 9
  %767 = load ptr, ptr %partners741, align 8, !tbaa !22
  %768 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom742 = sext i32 %768 to i64
  %arrayidx743 = getelementptr inbounds i64, ptr %767, i64 %idxprom742
  %769 = load i64, ptr %arrayidx743, align 8, !tbaa !12
  %cmp744 = icmp ne i64 %769, 0
  br i1 %cmp744, label %if.then746, label %if.end790

if.then746:                                       ; preds = %for.body740
  %770 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %matchlengths747 = getelementptr inbounds %struct.Spliceends_T, ptr %770, i32 0, i32 7
  %771 = load ptr, ptr %matchlengths747, align 8, !tbaa !24
  %772 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom748 = sext i32 %772 to i64
  %arrayidx749 = getelementptr inbounds i32, ptr %771, i64 %idxprom748
  %773 = load i32, ptr %arrayidx749, align 4, !tbaa !14
  %774 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %matchlengths750 = getelementptr inbounds %struct.Spliceends_T, ptr %774, i32 0, i32 7
  %775 = load ptr, ptr %matchlengths750, align 8, !tbaa !24
  %776 = load i32, ptr %nspliceends, align 4, !tbaa !14
  %idxprom751 = sext i32 %776 to i64
  %arrayidx752 = getelementptr inbounds i32, ptr %775, i64 %idxprom751
  store i32 %773, ptr %arrayidx752, align 4, !tbaa !14
  %777 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimends753 = getelementptr inbounds %struct.Spliceends_T, ptr %777, i32 0, i32 8
  %778 = load ptr, ptr %trimends753, align 8, !tbaa !23
  %779 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom754 = sext i32 %779 to i64
  %arrayidx755 = getelementptr inbounds i32, ptr %778, i64 %idxprom754
  %780 = load i32, ptr %arrayidx755, align 4, !tbaa !14
  %781 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimends756 = getelementptr inbounds %struct.Spliceends_T, ptr %781, i32 0, i32 8
  %782 = load ptr, ptr %trimends756, align 8, !tbaa !23
  %783 = load i32, ptr %nspliceends, align 4, !tbaa !14
  %idxprom757 = sext i32 %783 to i64
  %arrayidx758 = getelementptr inbounds i32, ptr %782, i64 %idxprom757
  store i32 %780, ptr %arrayidx758, align 4, !tbaa !14
  %784 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %medial_nmismatches759 = getelementptr inbounds %struct.Spliceends_T, ptr %784, i32 0, i32 10
  %785 = load ptr, ptr %medial_nmismatches759, align 8, !tbaa !21
  %786 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom760 = sext i32 %786 to i64
  %arrayidx761 = getelementptr inbounds i32, ptr %785, i64 %idxprom760
  %787 = load i32, ptr %arrayidx761, align 4, !tbaa !14
  %788 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %medial_nmismatches762 = getelementptr inbounds %struct.Spliceends_T, ptr %788, i32 0, i32 10
  %789 = load ptr, ptr %medial_nmismatches762, align 8, !tbaa !21
  %790 = load i32, ptr %nspliceends, align 4, !tbaa !14
  %idxprom763 = sext i32 %790 to i64
  %arrayidx764 = getelementptr inbounds i32, ptr %789, i64 %idxprom763
  store i32 %787, ptr %arrayidx764, align 4, !tbaa !14
  %791 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %partners765 = getelementptr inbounds %struct.Spliceends_T, ptr %791, i32 0, i32 9
  %792 = load ptr, ptr %partners765, align 8, !tbaa !22
  %793 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom766 = sext i32 %793 to i64
  %arrayidx767 = getelementptr inbounds i64, ptr %792, i64 %idxprom766
  %794 = load i64, ptr %arrayidx767, align 8, !tbaa !12
  %795 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %partners768 = getelementptr inbounds %struct.Spliceends_T, ptr %795, i32 0, i32 9
  %796 = load ptr, ptr %partners768, align 8, !tbaa !22
  %797 = load i32, ptr %nspliceends, align 4, !tbaa !14
  %idxprom769 = sext i32 %797 to i64
  %arrayidx770 = getelementptr inbounds i64, ptr %796, i64 %idxprom769
  store i64 %794, ptr %arrayidx770, align 8, !tbaa !12
  %798 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_nmismatches771 = getelementptr inbounds %struct.Spliceends_T, ptr %798, i32 0, i32 11
  %799 = load ptr, ptr %distal_nmismatches771, align 8, !tbaa !20
  %800 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom772 = sext i32 %800 to i64
  %arrayidx773 = getelementptr inbounds i32, ptr %799, i64 %idxprom772
  %801 = load i32, ptr %arrayidx773, align 4, !tbaa !14
  %802 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_nmismatches774 = getelementptr inbounds %struct.Spliceends_T, ptr %802, i32 0, i32 11
  %803 = load ptr, ptr %distal_nmismatches774, align 8, !tbaa !20
  %804 = load i32, ptr %nspliceends, align 4, !tbaa !14
  %idxprom775 = sext i32 %804 to i64
  %arrayidx776 = getelementptr inbounds i32, ptr %803, i64 %idxprom775
  store i32 %801, ptr %arrayidx776, align 4, !tbaa !14
  %805 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %ambig_probs777 = getelementptr inbounds %struct.Spliceends_T, ptr %805, i32 0, i32 12
  %806 = load ptr, ptr %ambig_probs777, align 8, !tbaa !19
  %807 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom778 = sext i32 %807 to i64
  %arrayidx779 = getelementptr inbounds double, ptr %806, i64 %idxprom778
  %808 = load double, ptr %arrayidx779, align 8, !tbaa !31
  %809 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %ambig_probs780 = getelementptr inbounds %struct.Spliceends_T, ptr %809, i32 0, i32 12
  %810 = load ptr, ptr %ambig_probs780, align 8, !tbaa !19
  %811 = load i32, ptr %nspliceends, align 4, !tbaa !14
  %idxprom781 = sext i32 %811 to i64
  %arrayidx782 = getelementptr inbounds double, ptr %810, i64 %idxprom781
  store double %808, ptr %arrayidx782, align 8, !tbaa !31
  %812 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_probs783 = getelementptr inbounds %struct.Spliceends_T, ptr %812, i32 0, i32 13
  %813 = load ptr, ptr %distal_probs783, align 8, !tbaa !17
  %814 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom784 = sext i32 %814 to i64
  %arrayidx785 = getelementptr inbounds double, ptr %813, i64 %idxprom784
  %815 = load double, ptr %arrayidx785, align 8, !tbaa !31
  %816 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_probs786 = getelementptr inbounds %struct.Spliceends_T, ptr %816, i32 0, i32 13
  %817 = load ptr, ptr %distal_probs786, align 8, !tbaa !17
  %818 = load i32, ptr %nspliceends, align 4, !tbaa !14
  %inc787 = add nsw i32 %818, 1
  store i32 %inc787, ptr %nspliceends, align 4, !tbaa !14
  %idxprom788 = sext i32 %818 to i64
  %arrayidx789 = getelementptr inbounds double, ptr %817, i64 %idxprom788
  store double %815, ptr %arrayidx789, align 8, !tbaa !31
  br label %if.end790

if.end790:                                        ; preds = %if.then746, %for.body740
  br label %for.inc791

for.inc791:                                       ; preds = %if.end790
  %819 = load i32, ptr %i, align 4, !tbaa !14
  %inc792 = add nsw i32 %819, 1
  store i32 %inc792, ptr %i, align 4, !tbaa !14
  br label %for.cond737, !llvm.loop !87

for.end793:                                       ; preds = %for.cond737
  br label %if.end795

if.else794:                                       ; preds = %if.else732
  store i32 1, ptr %nspliceends, align 4, !tbaa !14
  br label %if.end795

if.end795:                                        ; preds = %if.else794, %for.end793
  br label %if.end796

if.end796:                                        ; preds = %if.end795, %for.end731
  br label %if.end797

if.end797:                                        ; preds = %if.end796, %if.then665
  %820 = load i32, ptr %nspliceends, align 4, !tbaa !14
  call void @llvm.lifetime.end.p0(i64 8, ptr %left) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %novel_ndiagonals) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %nconsecutive) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %mismatchi) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %splice_qpos) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %pos3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %querypos) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %acceptor_prob) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %donor_prob) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %matchlength) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %local_nmismatches) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %high_univdiagonal) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %low_univdiagonal) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %distal_genomicpos) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %genomicpos) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %nspliceends) #4
  ret i32 %820
}

; Function Attrs: nounwind uwtable
define internal i32 @known_spliceends_trim3_anti(ptr noundef %this, i64 noundef %end_genomicpos, i64 noundef %start_genomicpos, i32 noundef %qstart, i32 noundef %qend, ptr noundef %query_compress, i64 noundef %univdiagonal, i32 noundef %querylength, ptr noundef %knownsplicing, i8 noundef zeroext %plusp, i32 noundef %genestrand) #1 {
entry:
  %this.addr = alloca ptr, align 8
  %end_genomicpos.addr = alloca i64, align 8
  %start_genomicpos.addr = alloca i64, align 8
  %qstart.addr = alloca i32, align 4
  %qend.addr = alloca i32, align 4
  %query_compress.addr = alloca ptr, align 8
  %univdiagonal.addr = alloca i64, align 8
  %querylength.addr = alloca i32, align 4
  %knownsplicing.addr = alloca ptr, align 8
  %plusp.addr = alloca i8, align 1
  %genestrand.addr = alloca i32, align 4
  %nspliceends = alloca i32, align 4
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %endpoints = alloca ptr, align 8
  %low_rank = alloca i64, align 8
  %high_rank = alloca i64, align 8
  %rank = alloca i64, align 8
  %mismatch_positions_right = alloca ptr, align 8
  %pos3 = alloca i32, align 4
  %ref_distal_nmismatches = alloca i32, align 4
  %splice_qpos = alloca i32, align 4
  %nmismatches_right = alloca i32, align 4
  %righti = alloca i32, align 4
  %best_adj_support = alloca i32, align 4
  %adj_support = alloca i32, align 4
  %left = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !5
  store i64 %end_genomicpos, ptr %end_genomicpos.addr, align 8, !tbaa !12
  store i64 %start_genomicpos, ptr %start_genomicpos.addr, align 8, !tbaa !12
  store i32 %qstart, ptr %qstart.addr, align 4, !tbaa !14
  store i32 %qend, ptr %qend.addr, align 4, !tbaa !14
  store ptr %query_compress, ptr %query_compress.addr, align 8, !tbaa !5
  store i64 %univdiagonal, ptr %univdiagonal.addr, align 8, !tbaa !12
  store i32 %querylength, ptr %querylength.addr, align 4, !tbaa !14
  store ptr %knownsplicing, ptr %knownsplicing.addr, align 8, !tbaa !5
  store i8 %plusp, ptr %plusp.addr, align 1, !tbaa !16
  store i32 %genestrand, ptr %genestrand.addr, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %nspliceends) #4
  store i32 0, ptr %nspliceends, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %endpoints) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %low_rank) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %high_rank) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %rank) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %mismatch_positions_right) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %pos3) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ref_distal_nmismatches) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %splice_qpos) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %nmismatches_right) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %righti) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %best_adj_support) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %adj_support) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %left) #4
  %0 = load i64, ptr %univdiagonal.addr, align 8, !tbaa !12
  %1 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %conv = sext i32 %1 to i64
  %sub = sub i64 %0, %conv
  store i64 %sub, ptr %left, align 8, !tbaa !12
  %2 = load i8, ptr %plusp.addr, align 1, !tbaa !16
  %tobool = icmp ne i8 %2, 0
  br i1 %tobool, label %if.then, label %if.else20

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %knownsplicing.addr, align 8, !tbaa !5
  %4 = load i64, ptr %univdiagonal.addr, align 8, !tbaa !12
  %5 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %6 = load i64, ptr %end_genomicpos.addr, align 8, !tbaa !12
  %7 = load i64, ptr %left, align 8, !tbaa !12
  %sub1 = sub i64 %6, %7
  %conv2 = trunc i64 %sub1 to i32
  %8 = load i64, ptr %start_genomicpos.addr, align 8, !tbaa !12
  %9 = load i64, ptr %left, align 8, !tbaa !12
  %sub3 = sub i64 %8, %9
  %conv4 = trunc i64 %sub3 to i32
  %call = call ptr @Knownsplicing_antiacceptors(ptr noundef %low_rank, ptr noundef %high_rank, ptr noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %conv2, i32 noundef %conv4)
  store ptr %call, ptr %endpoints, align 8, !tbaa !5
  %10 = load i64, ptr %high_rank, align 8, !tbaa !12
  %11 = load i64, ptr %low_rank, align 8, !tbaa !12
  %sub5 = sub i64 %10, %11
  %conv6 = trunc i64 %sub5 to i32
  store i32 %conv6, ptr %n, align 4, !tbaa !14
  %cmp = icmp sgt i32 %conv6, 30
  br i1 %cmp, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.then
  br label %if.end

if.else:                                          ; preds = %if.then
  %12 = load i64, ptr %high_rank, align 8, !tbaa !12
  %sub9 = sub i64 %12, 1
  store i64 %sub9, ptr %rank, align 8, !tbaa !12
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else
  %13 = load i32, ptr %n, align 4, !tbaa !14
  %dec = add nsw i32 %13, -1
  store i32 %dec, ptr %n, align 4, !tbaa !14
  %cmp10 = icmp sge i32 %dec, 0
  br i1 %cmp10, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %14 = load ptr, ptr %endpoints, align 8, !tbaa !5
  %15 = load i64, ptr %rank, align 8, !tbaa !12
  %mul = mul i64 2, %15
  %arrayidx = getelementptr inbounds i64, ptr %14, i64 %mul
  %16 = load i64, ptr %arrayidx, align 8, !tbaa !12
  %17 = load i64, ptr %left, align 8, !tbaa !12
  %sub12 = sub i64 %16, %17
  %conv13 = trunc i64 %sub12 to i32
  %18 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimends = getelementptr inbounds %struct.Spliceends_T, ptr %18, i32 0, i32 8
  %19 = load ptr, ptr %trimends, align 8, !tbaa !23
  %20 = load i32, ptr %nspliceends, align 4, !tbaa !14
  %idxprom = sext i32 %20 to i64
  %arrayidx14 = getelementptr inbounds i32, ptr %19, i64 %idxprom
  store i32 %conv13, ptr %arrayidx14, align 4, !tbaa !14
  %21 = load ptr, ptr %endpoints, align 8, !tbaa !5
  %22 = load i64, ptr %rank, align 8, !tbaa !12
  %mul15 = mul i64 2, %22
  %add = add i64 %mul15, 1
  %arrayidx16 = getelementptr inbounds i64, ptr %21, i64 %add
  %23 = load i64, ptr %arrayidx16, align 8, !tbaa !12
  %24 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %partners = getelementptr inbounds %struct.Spliceends_T, ptr %24, i32 0, i32 9
  %25 = load ptr, ptr %partners, align 8, !tbaa !22
  %26 = load i32, ptr %nspliceends, align 4, !tbaa !14
  %inc = add nsw i32 %26, 1
  store i32 %inc, ptr %nspliceends, align 4, !tbaa !14
  %idxprom17 = sext i32 %26 to i64
  %arrayidx18 = getelementptr inbounds i64, ptr %25, i64 %idxprom17
  store i64 %23, ptr %arrayidx18, align 8, !tbaa !12
  %27 = load i64, ptr %rank, align 8, !tbaa !12
  %dec19 = add i64 %27, -1
  store i64 %dec19, ptr %rank, align 8, !tbaa !12
  br label %while.cond, !llvm.loop !88

while.end:                                        ; preds = %while.cond
  br label %if.end

if.end:                                           ; preds = %while.end, %if.then8
  br label %if.end55

if.else20:                                        ; preds = %entry
  %28 = load ptr, ptr %knownsplicing.addr, align 8, !tbaa !5
  %29 = load i64, ptr %univdiagonal.addr, align 8, !tbaa !12
  %30 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %31 = load i64, ptr %end_genomicpos.addr, align 8, !tbaa !12
  %32 = load i64, ptr %left, align 8, !tbaa !12
  %sub21 = sub i64 %31, %32
  %conv22 = trunc i64 %sub21 to i32
  %33 = load i64, ptr %start_genomicpos.addr, align 8, !tbaa !12
  %34 = load i64, ptr %left, align 8, !tbaa !12
  %sub23 = sub i64 %33, %34
  %conv24 = trunc i64 %sub23 to i32
  %call25 = call ptr @Knownsplicing_donors(ptr noundef %low_rank, ptr noundef %high_rank, ptr noundef %28, i64 noundef %29, i32 noundef %30, i32 noundef %conv22, i32 noundef %conv24)
  store ptr %call25, ptr %endpoints, align 8, !tbaa !5
  %35 = load i64, ptr %high_rank, align 8, !tbaa !12
  %36 = load i64, ptr %low_rank, align 8, !tbaa !12
  %sub26 = sub i64 %35, %36
  %conv27 = trunc i64 %sub26 to i32
  store i32 %conv27, ptr %n, align 4, !tbaa !14
  %cmp28 = icmp sgt i32 %conv27, 30
  br i1 %cmp28, label %if.then30, label %if.else31

if.then30:                                        ; preds = %if.else20
  br label %if.end54

if.else31:                                        ; preds = %if.else20
  %37 = load i64, ptr %high_rank, align 8, !tbaa !12
  %sub32 = sub i64 %37, 1
  store i64 %sub32, ptr %rank, align 8, !tbaa !12
  br label %while.cond33

while.cond33:                                     ; preds = %while.body37, %if.else31
  %38 = load i32, ptr %n, align 4, !tbaa !14
  %dec34 = add nsw i32 %38, -1
  store i32 %dec34, ptr %n, align 4, !tbaa !14
  %cmp35 = icmp sge i32 %dec34, 0
  br i1 %cmp35, label %while.body37, label %while.end53

while.body37:                                     ; preds = %while.cond33
  %39 = load ptr, ptr %endpoints, align 8, !tbaa !5
  %40 = load i64, ptr %rank, align 8, !tbaa !12
  %mul38 = mul i64 2, %40
  %arrayidx39 = getelementptr inbounds i64, ptr %39, i64 %mul38
  %41 = load i64, ptr %arrayidx39, align 8, !tbaa !12
  %42 = load i64, ptr %left, align 8, !tbaa !12
  %sub40 = sub i64 %41, %42
  %conv41 = trunc i64 %sub40 to i32
  %43 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimends42 = getelementptr inbounds %struct.Spliceends_T, ptr %43, i32 0, i32 8
  %44 = load ptr, ptr %trimends42, align 8, !tbaa !23
  %45 = load i32, ptr %nspliceends, align 4, !tbaa !14
  %idxprom43 = sext i32 %45 to i64
  %arrayidx44 = getelementptr inbounds i32, ptr %44, i64 %idxprom43
  store i32 %conv41, ptr %arrayidx44, align 4, !tbaa !14
  %46 = load ptr, ptr %endpoints, align 8, !tbaa !5
  %47 = load i64, ptr %rank, align 8, !tbaa !12
  %mul45 = mul i64 2, %47
  %add46 = add i64 %mul45, 1
  %arrayidx47 = getelementptr inbounds i64, ptr %46, i64 %add46
  %48 = load i64, ptr %arrayidx47, align 8, !tbaa !12
  %49 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %partners48 = getelementptr inbounds %struct.Spliceends_T, ptr %49, i32 0, i32 9
  %50 = load ptr, ptr %partners48, align 8, !tbaa !22
  %51 = load i32, ptr %nspliceends, align 4, !tbaa !14
  %inc49 = add nsw i32 %51, 1
  store i32 %inc49, ptr %nspliceends, align 4, !tbaa !14
  %idxprom50 = sext i32 %51 to i64
  %arrayidx51 = getelementptr inbounds i64, ptr %50, i64 %idxprom50
  store i64 %48, ptr %arrayidx51, align 8, !tbaa !12
  %52 = load i64, ptr %rank, align 8, !tbaa !12
  %dec52 = add i64 %52, -1
  store i64 %dec52, ptr %rank, align 8, !tbaa !12
  br label %while.cond33, !llvm.loop !89

while.end53:                                      ; preds = %while.cond33
  br label %if.end54

if.end54:                                         ; preds = %while.end53, %if.then30
  br label %if.end55

if.end55:                                         ; preds = %if.end54, %if.end
  %53 = load i32, ptr %nspliceends, align 4, !tbaa !14
  %cmp56 = icmp sgt i32 %53, 0
  br i1 %cmp56, label %if.then58, label %if.end151

if.then58:                                        ; preds = %if.end55
  %54 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimends59 = getelementptr inbounds %struct.Spliceends_T, ptr %54, i32 0, i32 8
  %55 = load ptr, ptr %trimends59, align 8, !tbaa !23
  %56 = load i32, ptr %nspliceends, align 4, !tbaa !14
  %call60 = call i32 @max_spliceend(ptr noundef %55, i32 noundef %56)
  store i32 %call60, ptr %pos3, align 4, !tbaa !14
  %57 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %mismatch_positions_right61 = getelementptr inbounds %struct.Spliceends_T, ptr %57, i32 0, i32 6
  %58 = load ptr, ptr %mismatch_positions_right61, align 8, !tbaa !26
  store ptr %58, ptr %mismatch_positions_right, align 8, !tbaa !5
  %59 = load ptr, ptr %mismatch_positions_right, align 8, !tbaa !5
  %60 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %61 = load ptr, ptr @genomebits, align 8, !tbaa !5
  %62 = load ptr, ptr @genomebits_alt, align 8, !tbaa !5
  %63 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %64 = load i64, ptr %univdiagonal.addr, align 8, !tbaa !12
  %65 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %66 = load i32, ptr %qstart.addr, align 4, !tbaa !14
  %67 = load i32, ptr %pos3, align 4, !tbaa !14
  %68 = load i8, ptr %plusp.addr, align 1, !tbaa !16
  %69 = load i32, ptr %genestrand.addr, align 4, !tbaa !14
  %call62 = call i32 @Genomebits_mismatches_fromright(ptr noundef %59, i32 noundef %60, ptr noundef %61, ptr noundef %62, ptr noundef %63, i64 noundef %64, i32 noundef %65, i32 noundef %66, i32 noundef %67, i8 noundef zeroext %68, i32 noundef %69)
  store i32 %call62, ptr %nmismatches_right, align 4, !tbaa !14
  store i32 0, ptr %best_adj_support, align 4, !tbaa !14
  store i32 0, ptr %i, align 4, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then58
  %70 = load i32, ptr %i, align 4, !tbaa !14
  %71 = load i32, ptr %nspliceends, align 4, !tbaa !14
  %cmp63 = icmp slt i32 %70, %71
  br i1 %cmp63, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %72 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimends65 = getelementptr inbounds %struct.Spliceends_T, ptr %72, i32 0, i32 8
  %73 = load ptr, ptr %trimends65, align 8, !tbaa !23
  %74 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom66 = sext i32 %74 to i64
  %arrayidx67 = getelementptr inbounds i32, ptr %73, i64 %idxprom66
  %75 = load i32, ptr %arrayidx67, align 4, !tbaa !14
  store i32 %75, ptr %splice_qpos, align 4, !tbaa !14
  %76 = load ptr, ptr @genomebits, align 8, !tbaa !5
  %77 = load ptr, ptr @genomebits_alt, align 8, !tbaa !5
  %78 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %79 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %partners68 = getelementptr inbounds %struct.Spliceends_T, ptr %79, i32 0, i32 9
  %80 = load ptr, ptr %partners68, align 8, !tbaa !22
  %81 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom69 = sext i32 %81 to i64
  %arrayidx70 = getelementptr inbounds i64, ptr %80, i64 %idxprom69
  %82 = load i64, ptr %arrayidx70, align 8, !tbaa !12
  %83 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %conv71 = sext i32 %83 to i64
  %sub72 = sub i64 %82, %conv71
  %84 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %conv73 = sext i32 %84 to i64
  %add74 = add i64 %sub72, %conv73
  %85 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %86 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %87 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %88 = load i8, ptr %plusp.addr, align 1, !tbaa !16
  %89 = load i32, ptr %genestrand.addr, align 4, !tbaa !14
  %call75 = call i32 @Genomebits_count_mismatches_substring(ptr noundef %ref_distal_nmismatches, ptr noundef %76, ptr noundef %77, ptr noundef %78, i64 noundef %add74, i32 noundef %85, i32 noundef %86, i32 noundef %87, i8 noundef zeroext %88, i32 noundef %89)
  %90 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_nmismatches = getelementptr inbounds %struct.Spliceends_T, ptr %90, i32 0, i32 11
  %91 = load ptr, ptr %distal_nmismatches, align 8, !tbaa !20
  %92 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom76 = sext i32 %92 to i64
  %arrayidx77 = getelementptr inbounds i32, ptr %91, i64 %idxprom76
  store i32 %call75, ptr %arrayidx77, align 4, !tbaa !14
  %93 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %94 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %sub78 = sub nsw i32 %93, %94
  %95 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_nmismatches79 = getelementptr inbounds %struct.Spliceends_T, ptr %95, i32 0, i32 11
  %96 = load ptr, ptr %distal_nmismatches79, align 8, !tbaa !20
  %97 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom80 = sext i32 %97 to i64
  %arrayidx81 = getelementptr inbounds i32, ptr %96, i64 %idxprom80
  %98 = load i32, ptr %arrayidx81, align 4, !tbaa !14
  %mul82 = mul nsw i32 3, %98
  %sub83 = sub nsw i32 %sub78, %mul82
  store i32 %sub83, ptr %adj_support, align 4, !tbaa !14
  %99 = load i32, ptr %best_adj_support, align 4, !tbaa !14
  %cmp84 = icmp sgt i32 %sub83, %99
  br i1 %cmp84, label %if.then86, label %if.end87

if.then86:                                        ; preds = %for.body
  %100 = load i32, ptr %adj_support, align 4, !tbaa !14
  store i32 %100, ptr %best_adj_support, align 4, !tbaa !14
  br label %if.end87

if.end87:                                         ; preds = %if.then86, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end87
  %101 = load i32, ptr %i, align 4, !tbaa !14
  %inc88 = add nsw i32 %101, 1
  store i32 %inc88, ptr %i, align 4, !tbaa !14
  br label %for.cond, !llvm.loop !90

for.end:                                          ; preds = %for.cond
  %102 = load i32, ptr %best_adj_support, align 4, !tbaa !14
  %cmp89 = icmp eq i32 %102, 0
  br i1 %cmp89, label %if.then91, label %if.else92

if.then91:                                        ; preds = %for.end
  store i32 0, ptr %nspliceends, align 4, !tbaa !14
  br label %if.end150

if.else92:                                        ; preds = %for.end
  store i32 0, ptr %k, align 4, !tbaa !14
  store i32 0, ptr %righti, align 4, !tbaa !14
  store i32 0, ptr %i, align 4, !tbaa !14
  br label %for.cond93

for.cond93:                                       ; preds = %for.inc147, %if.else92
  %103 = load i32, ptr %i, align 4, !tbaa !14
  %104 = load i32, ptr %nspliceends, align 4, !tbaa !14
  %cmp94 = icmp slt i32 %103, %104
  br i1 %cmp94, label %for.body96, label %for.end149

for.body96:                                       ; preds = %for.cond93
  %105 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimends97 = getelementptr inbounds %struct.Spliceends_T, ptr %105, i32 0, i32 8
  %106 = load ptr, ptr %trimends97, align 8, !tbaa !23
  %107 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom98 = sext i32 %107 to i64
  %arrayidx99 = getelementptr inbounds i32, ptr %106, i64 %idxprom98
  %108 = load i32, ptr %arrayidx99, align 4, !tbaa !14
  store i32 %108, ptr %splice_qpos, align 4, !tbaa !14
  %109 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %110 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %sub100 = sub nsw i32 %109, %110
  %111 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_nmismatches101 = getelementptr inbounds %struct.Spliceends_T, ptr %111, i32 0, i32 11
  %112 = load ptr, ptr %distal_nmismatches101, align 8, !tbaa !20
  %113 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom102 = sext i32 %113 to i64
  %arrayidx103 = getelementptr inbounds i32, ptr %112, i64 %idxprom102
  %114 = load i32, ptr %arrayidx103, align 4, !tbaa !14
  %mul104 = mul nsw i32 3, %114
  %sub105 = sub nsw i32 %sub100, %mul104
  %115 = load i32, ptr %best_adj_support, align 4, !tbaa !14
  %cmp106 = icmp slt i32 %sub105, %115
  br i1 %cmp106, label %if.then108, label %if.else109

if.then108:                                       ; preds = %for.body96
  br label %if.end146

if.else109:                                       ; preds = %for.body96
  br label %while.cond110

while.cond110:                                    ; preds = %while.body117, %if.else109
  %116 = load i32, ptr %righti, align 4, !tbaa !14
  %117 = load i32, ptr %nmismatches_right, align 4, !tbaa !14
  %cmp111 = icmp slt i32 %116, %117
  br i1 %cmp111, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond110
  %118 = load ptr, ptr %mismatch_positions_right, align 8, !tbaa !5
  %119 = load i32, ptr %righti, align 4, !tbaa !14
  %idxprom113 = sext i32 %119 to i64
  %arrayidx114 = getelementptr inbounds i32, ptr %118, i64 %idxprom113
  %120 = load i32, ptr %arrayidx114, align 4, !tbaa !14
  %121 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %cmp115 = icmp sge i32 %120, %121
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond110
  %122 = phi i1 [ false, %while.cond110 ], [ %cmp115, %land.rhs ]
  br i1 %122, label %while.body117, label %while.end119

while.body117:                                    ; preds = %land.end
  %123 = load i32, ptr %righti, align 4, !tbaa !14
  %inc118 = add nsw i32 %123, 1
  store i32 %inc118, ptr %righti, align 4, !tbaa !14
  br label %while.cond110, !llvm.loop !91

while.end119:                                     ; preds = %land.end
  %124 = load i32, ptr %nmismatches_right, align 4, !tbaa !14
  %125 = load i32, ptr %righti, align 4, !tbaa !14
  %sub120 = sub nsw i32 %124, %125
  %126 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %medial_nmismatches = getelementptr inbounds %struct.Spliceends_T, ptr %126, i32 0, i32 10
  %127 = load ptr, ptr %medial_nmismatches, align 8, !tbaa !21
  %128 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom121 = sext i32 %128 to i64
  %arrayidx122 = getelementptr inbounds i32, ptr %127, i64 %idxprom121
  store i32 %sub120, ptr %arrayidx122, align 4, !tbaa !14
  %129 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %130 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %sub123 = sub nsw i32 %129, %130
  %131 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %matchlengths = getelementptr inbounds %struct.Spliceends_T, ptr %131, i32 0, i32 7
  %132 = load ptr, ptr %matchlengths, align 8, !tbaa !24
  %133 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom124 = sext i32 %133 to i64
  %arrayidx125 = getelementptr inbounds i32, ptr %132, i64 %idxprom124
  store i32 %sub123, ptr %arrayidx125, align 4, !tbaa !14
  %134 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %135 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimends126 = getelementptr inbounds %struct.Spliceends_T, ptr %135, i32 0, i32 8
  %136 = load ptr, ptr %trimends126, align 8, !tbaa !23
  %137 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom127 = sext i32 %137 to i64
  %arrayidx128 = getelementptr inbounds i32, ptr %136, i64 %idxprom127
  store i32 %134, ptr %arrayidx128, align 4, !tbaa !14
  %138 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %partners129 = getelementptr inbounds %struct.Spliceends_T, ptr %138, i32 0, i32 9
  %139 = load ptr, ptr %partners129, align 8, !tbaa !22
  %140 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom130 = sext i32 %140 to i64
  %arrayidx131 = getelementptr inbounds i64, ptr %139, i64 %idxprom130
  %141 = load i64, ptr %arrayidx131, align 8, !tbaa !12
  %142 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %partners132 = getelementptr inbounds %struct.Spliceends_T, ptr %142, i32 0, i32 9
  %143 = load ptr, ptr %partners132, align 8, !tbaa !22
  %144 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom133 = sext i32 %144 to i64
  %arrayidx134 = getelementptr inbounds i64, ptr %143, i64 %idxprom133
  store i64 %141, ptr %arrayidx134, align 8, !tbaa !12
  %145 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_nmismatches135 = getelementptr inbounds %struct.Spliceends_T, ptr %145, i32 0, i32 11
  %146 = load ptr, ptr %distal_nmismatches135, align 8, !tbaa !20
  %147 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom136 = sext i32 %147 to i64
  %arrayidx137 = getelementptr inbounds i32, ptr %146, i64 %idxprom136
  %148 = load i32, ptr %arrayidx137, align 4, !tbaa !14
  %149 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_nmismatches138 = getelementptr inbounds %struct.Spliceends_T, ptr %149, i32 0, i32 11
  %150 = load ptr, ptr %distal_nmismatches138, align 8, !tbaa !20
  %151 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom139 = sext i32 %151 to i64
  %arrayidx140 = getelementptr inbounds i32, ptr %150, i64 %idxprom139
  store i32 %148, ptr %arrayidx140, align 4, !tbaa !14
  %152 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %ambig_probs = getelementptr inbounds %struct.Spliceends_T, ptr %152, i32 0, i32 12
  %153 = load ptr, ptr %ambig_probs, align 8, !tbaa !19
  %154 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom141 = sext i32 %154 to i64
  %arrayidx142 = getelementptr inbounds double, ptr %153, i64 %idxprom141
  store double 1.000000e+00, ptr %arrayidx142, align 8, !tbaa !31
  %155 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_probs = getelementptr inbounds %struct.Spliceends_T, ptr %155, i32 0, i32 13
  %156 = load ptr, ptr %distal_probs, align 8, !tbaa !17
  %157 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom143 = sext i32 %157 to i64
  %arrayidx144 = getelementptr inbounds double, ptr %156, i64 %idxprom143
  store double 1.000000e+00, ptr %arrayidx144, align 8, !tbaa !31
  %158 = load i32, ptr %k, align 4, !tbaa !14
  %inc145 = add nsw i32 %158, 1
  store i32 %inc145, ptr %k, align 4, !tbaa !14
  br label %if.end146

if.end146:                                        ; preds = %while.end119, %if.then108
  br label %for.inc147

for.inc147:                                       ; preds = %if.end146
  %159 = load i32, ptr %i, align 4, !tbaa !14
  %inc148 = add nsw i32 %159, 1
  store i32 %inc148, ptr %i, align 4, !tbaa !14
  br label %for.cond93, !llvm.loop !92

for.end149:                                       ; preds = %for.cond93
  %160 = load i32, ptr %k, align 4, !tbaa !14
  store i32 %160, ptr %nspliceends, align 4, !tbaa !14
  br label %if.end150

if.end150:                                        ; preds = %for.end149, %if.then91
  br label %if.end151

if.end151:                                        ; preds = %if.end150, %if.end55
  %161 = load i32, ptr %nspliceends, align 4, !tbaa !14
  call void @llvm.lifetime.end.p0(i64 8, ptr %left) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %adj_support) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %best_adj_support) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %righti) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %nmismatches_right) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %splice_qpos) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %ref_distal_nmismatches) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %pos3) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %mismatch_positions_right) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %rank) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %high_rank) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %low_rank) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %endpoints) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %nspliceends) #4
  ret i32 %161
}

; Function Attrs: nounwind uwtable
define internal i32 @novel_spliceends_trim3_anti(ptr noundef %max_prob, ptr noundef %partnerp, ptr noundef %this, i64 noundef %end_genomicpos, i64 noundef %start_genomicpos, i64 noundef %middle_genomicpos, ptr noundef %mismatch_positions, i32 noundef %total_nmismatches, i64 noundef %univdiagonal, i32 noundef %querylength, ptr noundef %query_compress, ptr noundef %queryptr, i64 noundef %chroffset, i64 noundef %chrhigh, ptr noundef %novel_diagonals_alloc, ptr noundef %localdb_alloc, i32 noundef %streamspace_max_alloc, ptr noundef %streamspace_alloc, ptr noundef %streamptr_alloc, ptr noundef %streamsize_alloc, ptr noundef %mergeinfo, double noundef %medial_splicesite_prob, double noundef %distal_splicesite_prob, i32 noundef %max_nconsecutive, i8 noundef zeroext %plusp, i32 noundef %genestrand, i32 noundef %nmismatches_allowed, i8 noundef zeroext %search_localdb_p, i8 noundef zeroext %innerp, i8 noundef zeroext %salvagep) #1 {
entry:
  %max_prob.addr = alloca ptr, align 8
  %partnerp.addr = alloca ptr, align 8
  %this.addr = alloca ptr, align 8
  %end_genomicpos.addr = alloca i64, align 8
  %start_genomicpos.addr = alloca i64, align 8
  %middle_genomicpos.addr = alloca i64, align 8
  %mismatch_positions.addr = alloca ptr, align 8
  %total_nmismatches.addr = alloca i32, align 4
  %univdiagonal.addr = alloca i64, align 8
  %querylength.addr = alloca i32, align 4
  %query_compress.addr = alloca ptr, align 8
  %queryptr.addr = alloca ptr, align 8
  %chroffset.addr = alloca i64, align 8
  %chrhigh.addr = alloca i64, align 8
  %novel_diagonals_alloc.addr = alloca ptr, align 8
  %localdb_alloc.addr = alloca ptr, align 8
  %streamspace_max_alloc.addr = alloca i32, align 4
  %streamspace_alloc.addr = alloca ptr, align 8
  %streamptr_alloc.addr = alloca ptr, align 8
  %streamsize_alloc.addr = alloca ptr, align 8
  %mergeinfo.addr = alloca ptr, align 8
  %medial_splicesite_prob.addr = alloca double, align 8
  %distal_splicesite_prob.addr = alloca double, align 8
  %max_nconsecutive.addr = alloca i32, align 4
  %plusp.addr = alloca i8, align 1
  %genestrand.addr = alloca i32, align 4
  %nmismatches_allowed.addr = alloca i32, align 4
  %search_localdb_p.addr = alloca i8, align 1
  %innerp.addr = alloca i8, align 1
  %salvagep.addr = alloca i8, align 1
  %nspliceends = alloca i32, align 4
  %k = alloca i32, align 4
  %genomicpos = alloca i64, align 8
  %distal_genomicpos = alloca i64, align 8
  %low_univdiagonal = alloca i64, align 8
  %high_univdiagonal = alloca i64, align 8
  %local_nmismatches = alloca i32, align 4
  %matchlength = alloca i32, align 4
  %donor_prob = alloca double, align 8
  %acceptor_prob = alloca double, align 8
  %querypos = alloca i32, align 4
  %pos3 = alloca i32, align 4
  %splice_qpos = alloca i32, align 4
  %mismatchi = alloca i32, align 4
  %nconsecutive = alloca i32, align 4
  %novel_ndiagonals = alloca i32, align 4
  %i = alloca i32, align 4
  %left = alloca i64, align 8
  store ptr %max_prob, ptr %max_prob.addr, align 8, !tbaa !5
  store ptr %partnerp, ptr %partnerp.addr, align 8, !tbaa !5
  store ptr %this, ptr %this.addr, align 8, !tbaa !5
  store i64 %end_genomicpos, ptr %end_genomicpos.addr, align 8, !tbaa !12
  store i64 %start_genomicpos, ptr %start_genomicpos.addr, align 8, !tbaa !12
  store i64 %middle_genomicpos, ptr %middle_genomicpos.addr, align 8, !tbaa !12
  store ptr %mismatch_positions, ptr %mismatch_positions.addr, align 8, !tbaa !5
  store i32 %total_nmismatches, ptr %total_nmismatches.addr, align 4, !tbaa !14
  store i64 %univdiagonal, ptr %univdiagonal.addr, align 8, !tbaa !12
  store i32 %querylength, ptr %querylength.addr, align 4, !tbaa !14
  store ptr %query_compress, ptr %query_compress.addr, align 8, !tbaa !5
  store ptr %queryptr, ptr %queryptr.addr, align 8, !tbaa !5
  store i64 %chroffset, ptr %chroffset.addr, align 8, !tbaa !12
  store i64 %chrhigh, ptr %chrhigh.addr, align 8, !tbaa !12
  store ptr %novel_diagonals_alloc, ptr %novel_diagonals_alloc.addr, align 8, !tbaa !5
  store ptr %localdb_alloc, ptr %localdb_alloc.addr, align 8, !tbaa !5
  store i32 %streamspace_max_alloc, ptr %streamspace_max_alloc.addr, align 4, !tbaa !14
  store ptr %streamspace_alloc, ptr %streamspace_alloc.addr, align 8, !tbaa !5
  store ptr %streamptr_alloc, ptr %streamptr_alloc.addr, align 8, !tbaa !5
  store ptr %streamsize_alloc, ptr %streamsize_alloc.addr, align 8, !tbaa !5
  store ptr %mergeinfo, ptr %mergeinfo.addr, align 8, !tbaa !5
  store double %medial_splicesite_prob, ptr %medial_splicesite_prob.addr, align 8, !tbaa !31
  store double %distal_splicesite_prob, ptr %distal_splicesite_prob.addr, align 8, !tbaa !31
  store i32 %max_nconsecutive, ptr %max_nconsecutive.addr, align 4, !tbaa !14
  store i8 %plusp, ptr %plusp.addr, align 1, !tbaa !16
  store i32 %genestrand, ptr %genestrand.addr, align 4, !tbaa !14
  store i32 %nmismatches_allowed, ptr %nmismatches_allowed.addr, align 4, !tbaa !14
  store i8 %search_localdb_p, ptr %search_localdb_p.addr, align 1, !tbaa !16
  store i8 %innerp, ptr %innerp.addr, align 1, !tbaa !16
  store i8 %salvagep, ptr %salvagep.addr, align 1, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 4, ptr %nspliceends) #4
  store i32 0, ptr %nspliceends, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #4
  store i32 0, ptr %k, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 8, ptr %genomicpos) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %distal_genomicpos) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %low_univdiagonal) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %high_univdiagonal) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %local_nmismatches) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %matchlength) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %donor_prob) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %acceptor_prob) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %querypos) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %pos3) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %splice_qpos) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %mismatchi) #4
  %0 = load i32, ptr %total_nmismatches.addr, align 4, !tbaa !14
  store i32 %0, ptr %mismatchi, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %nconsecutive) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %novel_ndiagonals) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %left) #4
  %1 = load i64, ptr %univdiagonal.addr, align 8, !tbaa !12
  %2 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %conv = sext i32 %2 to i64
  %sub = sub i64 %1, %conv
  store i64 %sub, ptr %left, align 8, !tbaa !12
  %3 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  store double 0.000000e+00, ptr %3, align 8, !tbaa !31
  %4 = load ptr, ptr %partnerp.addr, align 8, !tbaa !5
  store i8 0, ptr %4, align 1, !tbaa !16
  %5 = load i64, ptr %univdiagonal.addr, align 8, !tbaa !12
  %add = add i64 %5, 9
  store i64 %add, ptr %low_univdiagonal, align 8, !tbaa !12
  %6 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  store i32 %6, ptr %pos3, align 4, !tbaa !14
  %7 = load i64, ptr %low_univdiagonal, align 8, !tbaa !12
  %8 = load i32, ptr @shortsplicedist_novelend, align 4, !tbaa !14
  %conv1 = zext i32 %8 to i64
  %add2 = add i64 %7, %conv1
  %9 = load i64, ptr %chrhigh.addr, align 8, !tbaa !12
  %cmp = icmp uge i64 %add2, %9
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %10 = load i64, ptr %chrhigh.addr, align 8, !tbaa !12
  %sub4 = sub i64 %10, 1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %11 = load i64, ptr %low_univdiagonal, align 8, !tbaa !12
  %12 = load i32, ptr @shortsplicedist_novelend, align 4, !tbaa !14
  %conv5 = zext i32 %12 to i64
  %add6 = add i64 %11, %conv5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub4, %cond.true ], [ %add6, %cond.false ]
  store i64 %cond, ptr %high_univdiagonal, align 8, !tbaa !12
  %13 = load i64, ptr %start_genomicpos.addr, align 8, !tbaa !12
  store i64 %13, ptr %genomicpos, align 8, !tbaa !12
  %14 = load i64, ptr %genomicpos, align 8, !tbaa !12
  %15 = load i64, ptr %left, align 8, !tbaa !12
  %sub7 = sub i64 %14, %15
  %conv8 = trunc i64 %sub7 to i32
  store i32 %conv8, ptr %querypos, align 4, !tbaa !14
  br label %while.cond

while.cond:                                       ; preds = %while.body, %cond.end
  %16 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %sub9 = sub nsw i32 %16, 1
  %cmp10 = icmp sge i32 %sub9, 0
  br i1 %cmp10, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %17 = load ptr, ptr %mismatch_positions.addr, align 8, !tbaa !5
  %18 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %sub12 = sub nsw i32 %18, 1
  %idxprom = sext i32 %sub12 to i64
  %arrayidx = getelementptr inbounds i32, ptr %17, i64 %idxprom
  %19 = load i32, ptr %arrayidx, align 4, !tbaa !14
  %20 = load i32, ptr %querypos, align 4, !tbaa !14
  %cmp13 = icmp sge i32 %19, %20
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %21 = phi i1 [ false, %while.cond ], [ %cmp13, %land.rhs ]
  br i1 %21, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %22 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %dec = add nsw i32 %22, -1
  store i32 %dec, ptr %mismatchi, align 4, !tbaa !14
  br label %while.cond, !llvm.loop !93

while.end:                                        ; preds = %land.end
  %23 = load i8, ptr %plusp.addr, align 1, !tbaa !16
  %tobool = icmp ne i8 %23, 0
  br i1 %tobool, label %if.then, label %if.else330

if.then:                                          ; preds = %while.end
  br label %while.cond15

while.cond15:                                     ; preds = %if.end160, %if.then
  %24 = load i32, ptr %k, align 4, !tbaa !14
  %cmp16 = icmp slt i32 %24, 30
  br i1 %cmp16, label %land.rhs18, label %land.end21

land.rhs18:                                       ; preds = %while.cond15
  %25 = load i64, ptr %genomicpos, align 8, !tbaa !12
  %26 = load i64, ptr %middle_genomicpos.addr, align 8, !tbaa !12
  %cmp19 = icmp ugt i64 %25, %26
  br label %land.end21

land.end21:                                       ; preds = %land.rhs18, %while.cond15
  %27 = phi i1 [ false, %while.cond15 ], [ %cmp19, %land.rhs18 ]
  br i1 %27, label %while.body22, label %while.end161

while.body22:                                     ; preds = %land.end21
  %28 = load i64, ptr %genomicpos, align 8, !tbaa !12
  %29 = load i64, ptr %chroffset.addr, align 8, !tbaa !12
  %call = call double @Maxent_hr_antiacceptor_prob(i64 noundef %28, i64 noundef %29)
  store double %call, ptr %acceptor_prob, align 8, !tbaa !31
  %30 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %31 = load double, ptr %medial_splicesite_prob.addr, align 8, !tbaa !31
  %cmp23 = fcmp oge double %30, %31
  br i1 %cmp23, label %if.then25, label %if.end147

if.then25:                                        ; preds = %while.body22
  %32 = load i64, ptr %genomicpos, align 8, !tbaa !12
  %33 = load i64, ptr %left, align 8, !tbaa !12
  %sub26 = sub i64 %32, %33
  %conv27 = trunc i64 %sub26 to i32
  store i32 %conv27, ptr %splice_qpos, align 4, !tbaa !14
  %34 = load i8, ptr %search_localdb_p.addr, align 1, !tbaa !16
  %conv28 = zext i8 %34 to i32
  %cmp29 = icmp eq i32 %conv28, 0
  br i1 %cmp29, label %if.then31, label %if.else

if.then31:                                        ; preds = %if.then25
  %35 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %36 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimends = getelementptr inbounds %struct.Spliceends_T, ptr %36, i32 0, i32 8
  %37 = load ptr, ptr %trimends, align 8, !tbaa !23
  %38 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom32 = sext i32 %38 to i64
  %arrayidx33 = getelementptr inbounds i32, ptr %37, i64 %idxprom32
  store i32 %35, ptr %arrayidx33, align 4, !tbaa !14
  %39 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %40 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %medial_nmismatches = getelementptr inbounds %struct.Spliceends_T, ptr %40, i32 0, i32 10
  %41 = load ptr, ptr %medial_nmismatches, align 8, !tbaa !21
  %42 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom34 = sext i32 %42 to i64
  %arrayidx35 = getelementptr inbounds i32, ptr %41, i64 %idxprom34
  store i32 %39, ptr %arrayidx35, align 4, !tbaa !14
  %43 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %44 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %ambig_probs = getelementptr inbounds %struct.Spliceends_T, ptr %44, i32 0, i32 12
  %45 = load ptr, ptr %ambig_probs, align 8, !tbaa !19
  %46 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom36 = sext i32 %46 to i64
  %arrayidx37 = getelementptr inbounds double, ptr %45, i64 %idxprom36
  store double %43, ptr %arrayidx37, align 8, !tbaa !31
  %47 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_probs = getelementptr inbounds %struct.Spliceends_T, ptr %47, i32 0, i32 13
  %48 = load ptr, ptr %distal_probs, align 8, !tbaa !17
  %49 = load i32, ptr %k, align 4, !tbaa !14
  %inc = add nsw i32 %49, 1
  store i32 %inc, ptr %k, align 4, !tbaa !14
  %idxprom38 = sext i32 %49 to i64
  %arrayidx39 = getelementptr inbounds double, ptr %48, i64 %idxprom38
  store double 0.000000e+00, ptr %arrayidx39, align 8, !tbaa !31
  %50 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %51 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  %52 = load double, ptr %51, align 8, !tbaa !31
  %cmp40 = fcmp ogt double %50, %52
  br i1 %cmp40, label %if.then42, label %if.end

if.then42:                                        ; preds = %if.then31
  %53 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %54 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  store double %53, ptr %54, align 8, !tbaa !31
  br label %if.end

if.end:                                           ; preds = %if.then42, %if.then31
  br label %if.end146

if.else:                                          ; preds = %if.then25
  %55 = load ptr, ptr %novel_diagonals_alloc.addr, align 8, !tbaa !5
  %56 = load ptr, ptr @localdb, align 8, !tbaa !5
  %57 = load ptr, ptr %localdb_alloc.addr, align 8, !tbaa !5
  %58 = load i32, ptr %streamspace_max_alloc.addr, align 4, !tbaa !14
  %59 = load ptr, ptr %streamspace_alloc.addr, align 8, !tbaa !5
  %60 = load ptr, ptr %streamptr_alloc.addr, align 8, !tbaa !5
  %61 = load ptr, ptr %streamsize_alloc.addr, align 8, !tbaa !5
  %62 = load ptr, ptr %mergeinfo.addr, align 8, !tbaa !5
  %63 = load ptr, ptr %queryptr.addr, align 8, !tbaa !5
  %64 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %65 = load i32, ptr %pos3, align 4, !tbaa !14
  %66 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %67 = load i64, ptr %low_univdiagonal, align 8, !tbaa !12
  %68 = load i64, ptr %high_univdiagonal, align 8, !tbaa !12
  %69 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %70 = load i8, ptr %plusp.addr, align 1, !tbaa !16
  %71 = load i32, ptr %genestrand.addr, align 4, !tbaa !14
  %72 = load ptr, ptr @genomebits, align 8, !tbaa !5
  %73 = load i32, ptr %nmismatches_allowed.addr, align 4, !tbaa !14
  %74 = load i8, ptr %salvagep.addr, align 1, !tbaa !16
  %call43 = call i32 @Localdb_get(ptr noundef %matchlength, ptr noundef %local_nmismatches, ptr noundef %55, ptr noundef %56, ptr noundef %57, i32 noundef %58, ptr noundef %59, ptr noundef %60, ptr noundef %61, ptr noundef %62, ptr noundef %63, i32 noundef %64, i32 noundef %65, i32 noundef %66, i64 noundef %67, i64 noundef %68, ptr noundef %69, i8 noundef zeroext %70, i32 noundef %71, ptr noundef %72, i32 noundef %73, i8 noundef zeroext %74)
  store i32 %call43, ptr %novel_ndiagonals, align 4, !tbaa !14
  %cmp44 = icmp eq i32 %call43, 0
  br i1 %cmp44, label %if.then46, label %if.else70

if.then46:                                        ; preds = %if.else
  %75 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %matchlengths = getelementptr inbounds %struct.Spliceends_T, ptr %75, i32 0, i32 7
  %76 = load ptr, ptr %matchlengths, align 8, !tbaa !24
  %77 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom47 = sext i32 %77 to i64
  %arrayidx48 = getelementptr inbounds i32, ptr %76, i64 %idxprom47
  store i32 0, ptr %arrayidx48, align 4, !tbaa !14
  %78 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %79 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimends49 = getelementptr inbounds %struct.Spliceends_T, ptr %79, i32 0, i32 8
  %80 = load ptr, ptr %trimends49, align 8, !tbaa !23
  %81 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom50 = sext i32 %81 to i64
  %arrayidx51 = getelementptr inbounds i32, ptr %80, i64 %idxprom50
  store i32 %78, ptr %arrayidx51, align 4, !tbaa !14
  %82 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %83 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %medial_nmismatches52 = getelementptr inbounds %struct.Spliceends_T, ptr %83, i32 0, i32 10
  %84 = load ptr, ptr %medial_nmismatches52, align 8, !tbaa !21
  %85 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom53 = sext i32 %85 to i64
  %arrayidx54 = getelementptr inbounds i32, ptr %84, i64 %idxprom53
  store i32 %82, ptr %arrayidx54, align 4, !tbaa !14
  %86 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %partners = getelementptr inbounds %struct.Spliceends_T, ptr %86, i32 0, i32 9
  %87 = load ptr, ptr %partners, align 8, !tbaa !22
  %88 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom55 = sext i32 %88 to i64
  %arrayidx56 = getelementptr inbounds i64, ptr %87, i64 %idxprom55
  store i64 0, ptr %arrayidx56, align 8, !tbaa !12
  %89 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_nmismatches = getelementptr inbounds %struct.Spliceends_T, ptr %89, i32 0, i32 11
  %90 = load ptr, ptr %distal_nmismatches, align 8, !tbaa !20
  %91 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom57 = sext i32 %91 to i64
  %arrayidx58 = getelementptr inbounds i32, ptr %90, i64 %idxprom57
  store i32 -1, ptr %arrayidx58, align 4, !tbaa !14
  %92 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %93 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %ambig_probs59 = getelementptr inbounds %struct.Spliceends_T, ptr %93, i32 0, i32 12
  %94 = load ptr, ptr %ambig_probs59, align 8, !tbaa !19
  %95 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom60 = sext i32 %95 to i64
  %arrayidx61 = getelementptr inbounds double, ptr %94, i64 %idxprom60
  store double %92, ptr %arrayidx61, align 8, !tbaa !31
  %96 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_probs62 = getelementptr inbounds %struct.Spliceends_T, ptr %96, i32 0, i32 13
  %97 = load ptr, ptr %distal_probs62, align 8, !tbaa !17
  %98 = load i32, ptr %k, align 4, !tbaa !14
  %inc63 = add nsw i32 %98, 1
  store i32 %inc63, ptr %k, align 4, !tbaa !14
  %idxprom64 = sext i32 %98 to i64
  %arrayidx65 = getelementptr inbounds double, ptr %97, i64 %idxprom64
  store double 0.000000e+00, ptr %arrayidx65, align 8, !tbaa !31
  %99 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %100 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  %101 = load double, ptr %100, align 8, !tbaa !31
  %cmp66 = fcmp ogt double %99, %101
  br i1 %cmp66, label %if.then68, label %if.end69

if.then68:                                        ; preds = %if.then46
  %102 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %103 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  store double %102, ptr %103, align 8, !tbaa !31
  br label %if.end69

if.end69:                                         ; preds = %if.then68, %if.then46
  br label %if.end145

if.else70:                                        ; preds = %if.else
  %104 = load i32, ptr %k, align 4, !tbaa !14
  %105 = load i32, ptr %novel_ndiagonals, align 4, !tbaa !14
  %add71 = add nsw i32 %104, %105
  %cmp72 = icmp sgt i32 %add71, 30
  br i1 %cmp72, label %if.then74, label %if.else101

if.then74:                                        ; preds = %if.else70
  %106 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %matchlengths75 = getelementptr inbounds %struct.Spliceends_T, ptr %106, i32 0, i32 7
  %107 = load ptr, ptr %matchlengths75, align 8, !tbaa !24
  %108 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom76 = sext i32 %108 to i64
  %arrayidx77 = getelementptr inbounds i32, ptr %107, i64 %idxprom76
  store i32 0, ptr %arrayidx77, align 4, !tbaa !14
  %109 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %110 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimends78 = getelementptr inbounds %struct.Spliceends_T, ptr %110, i32 0, i32 8
  %111 = load ptr, ptr %trimends78, align 8, !tbaa !23
  %112 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom79 = sext i32 %112 to i64
  %arrayidx80 = getelementptr inbounds i32, ptr %111, i64 %idxprom79
  store i32 %109, ptr %arrayidx80, align 4, !tbaa !14
  %113 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %114 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %medial_nmismatches81 = getelementptr inbounds %struct.Spliceends_T, ptr %114, i32 0, i32 10
  %115 = load ptr, ptr %medial_nmismatches81, align 8, !tbaa !21
  %116 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom82 = sext i32 %116 to i64
  %arrayidx83 = getelementptr inbounds i32, ptr %115, i64 %idxprom82
  store i32 %113, ptr %arrayidx83, align 4, !tbaa !14
  %117 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %partners84 = getelementptr inbounds %struct.Spliceends_T, ptr %117, i32 0, i32 9
  %118 = load ptr, ptr %partners84, align 8, !tbaa !22
  %119 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom85 = sext i32 %119 to i64
  %arrayidx86 = getelementptr inbounds i64, ptr %118, i64 %idxprom85
  store i64 0, ptr %arrayidx86, align 8, !tbaa !12
  %120 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_nmismatches87 = getelementptr inbounds %struct.Spliceends_T, ptr %120, i32 0, i32 11
  %121 = load ptr, ptr %distal_nmismatches87, align 8, !tbaa !20
  %122 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom88 = sext i32 %122 to i64
  %arrayidx89 = getelementptr inbounds i32, ptr %121, i64 %idxprom88
  store i32 -1, ptr %arrayidx89, align 4, !tbaa !14
  %123 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %124 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %ambig_probs90 = getelementptr inbounds %struct.Spliceends_T, ptr %124, i32 0, i32 12
  %125 = load ptr, ptr %ambig_probs90, align 8, !tbaa !19
  %126 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom91 = sext i32 %126 to i64
  %arrayidx92 = getelementptr inbounds double, ptr %125, i64 %idxprom91
  store double %123, ptr %arrayidx92, align 8, !tbaa !31
  %127 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_probs93 = getelementptr inbounds %struct.Spliceends_T, ptr %127, i32 0, i32 13
  %128 = load ptr, ptr %distal_probs93, align 8, !tbaa !17
  %129 = load i32, ptr %k, align 4, !tbaa !14
  %inc94 = add nsw i32 %129, 1
  store i32 %inc94, ptr %k, align 4, !tbaa !14
  %idxprom95 = sext i32 %129 to i64
  %arrayidx96 = getelementptr inbounds double, ptr %128, i64 %idxprom95
  store double 0.000000e+00, ptr %arrayidx96, align 8, !tbaa !31
  %130 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %131 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  %132 = load double, ptr %131, align 8, !tbaa !31
  %cmp97 = fcmp ogt double %130, %132
  br i1 %cmp97, label %if.then99, label %if.end100

if.then99:                                        ; preds = %if.then74
  %133 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %134 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  store double %133, ptr %134, align 8, !tbaa !31
  br label %if.end100

if.end100:                                        ; preds = %if.then99, %if.then74
  br label %if.end144

if.else101:                                       ; preds = %if.else70
  store i32 0, ptr %i, align 4, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else101
  %135 = load i32, ptr %i, align 4, !tbaa !14
  %136 = load i32, ptr %novel_ndiagonals, align 4, !tbaa !14
  %cmp102 = icmp slt i32 %135, %136
  br i1 %cmp102, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %137 = load ptr, ptr %novel_diagonals_alloc.addr, align 8, !tbaa !5
  %138 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom104 = sext i32 %138 to i64
  %arrayidx105 = getelementptr inbounds i64, ptr %137, i64 %idxprom104
  %139 = load i64, ptr %arrayidx105, align 8, !tbaa !12
  %140 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %conv106 = sext i32 %140 to i64
  %sub107 = sub i64 %139, %conv106
  %141 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %conv108 = sext i32 %141 to i64
  %add109 = add i64 %sub107, %conv108
  store i64 %add109, ptr %distal_genomicpos, align 8, !tbaa !12
  %142 = load i64, ptr %distal_genomicpos, align 8, !tbaa !12
  %143 = load i64, ptr %chroffset.addr, align 8, !tbaa !12
  %call110 = call double @Maxent_hr_antidonor_prob(i64 noundef %142, i64 noundef %143)
  store double %call110, ptr %donor_prob, align 8, !tbaa !31
  %144 = load double, ptr %donor_prob, align 8, !tbaa !31
  %145 = load double, ptr %distal_splicesite_prob.addr, align 8, !tbaa !31
  %cmp111 = fcmp oge double %144, %145
  br i1 %cmp111, label %if.then113, label %if.end142

if.then113:                                       ; preds = %for.body
  %146 = load i32, ptr %matchlength, align 4, !tbaa !14
  %147 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %matchlengths114 = getelementptr inbounds %struct.Spliceends_T, ptr %147, i32 0, i32 7
  %148 = load ptr, ptr %matchlengths114, align 8, !tbaa !24
  %149 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom115 = sext i32 %149 to i64
  %arrayidx116 = getelementptr inbounds i32, ptr %148, i64 %idxprom115
  store i32 %146, ptr %arrayidx116, align 4, !tbaa !14
  %150 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %151 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimends117 = getelementptr inbounds %struct.Spliceends_T, ptr %151, i32 0, i32 8
  %152 = load ptr, ptr %trimends117, align 8, !tbaa !23
  %153 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom118 = sext i32 %153 to i64
  %arrayidx119 = getelementptr inbounds i32, ptr %152, i64 %idxprom118
  store i32 %150, ptr %arrayidx119, align 4, !tbaa !14
  %154 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %155 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %medial_nmismatches120 = getelementptr inbounds %struct.Spliceends_T, ptr %155, i32 0, i32 10
  %156 = load ptr, ptr %medial_nmismatches120, align 8, !tbaa !21
  %157 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom121 = sext i32 %157 to i64
  %arrayidx122 = getelementptr inbounds i32, ptr %156, i64 %idxprom121
  store i32 %154, ptr %arrayidx122, align 4, !tbaa !14
  %158 = load i64, ptr %distal_genomicpos, align 8, !tbaa !12
  %159 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %partners123 = getelementptr inbounds %struct.Spliceends_T, ptr %159, i32 0, i32 9
  %160 = load ptr, ptr %partners123, align 8, !tbaa !22
  %161 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom124 = sext i32 %161 to i64
  %arrayidx125 = getelementptr inbounds i64, ptr %160, i64 %idxprom124
  store i64 %158, ptr %arrayidx125, align 8, !tbaa !12
  %162 = load i32, ptr %local_nmismatches, align 4, !tbaa !14
  %163 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_nmismatches126 = getelementptr inbounds %struct.Spliceends_T, ptr %163, i32 0, i32 11
  %164 = load ptr, ptr %distal_nmismatches126, align 8, !tbaa !20
  %165 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom127 = sext i32 %165 to i64
  %arrayidx128 = getelementptr inbounds i32, ptr %164, i64 %idxprom127
  store i32 %162, ptr %arrayidx128, align 4, !tbaa !14
  %166 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %167 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %ambig_probs129 = getelementptr inbounds %struct.Spliceends_T, ptr %167, i32 0, i32 12
  %168 = load ptr, ptr %ambig_probs129, align 8, !tbaa !19
  %169 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom130 = sext i32 %169 to i64
  %arrayidx131 = getelementptr inbounds double, ptr %168, i64 %idxprom130
  store double %166, ptr %arrayidx131, align 8, !tbaa !31
  %170 = load double, ptr %donor_prob, align 8, !tbaa !31
  %171 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_probs132 = getelementptr inbounds %struct.Spliceends_T, ptr %171, i32 0, i32 13
  %172 = load ptr, ptr %distal_probs132, align 8, !tbaa !17
  %173 = load i32, ptr %k, align 4, !tbaa !14
  %inc133 = add nsw i32 %173, 1
  store i32 %inc133, ptr %k, align 4, !tbaa !14
  %idxprom134 = sext i32 %173 to i64
  %arrayidx135 = getelementptr inbounds double, ptr %172, i64 %idxprom134
  store double %170, ptr %arrayidx135, align 8, !tbaa !31
  %174 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %175 = load double, ptr %donor_prob, align 8, !tbaa !31
  %add136 = fadd double %174, %175
  %176 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  %177 = load double, ptr %176, align 8, !tbaa !31
  %cmp137 = fcmp ogt double %add136, %177
  br i1 %cmp137, label %if.then139, label %if.end141

if.then139:                                       ; preds = %if.then113
  %178 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %179 = load double, ptr %donor_prob, align 8, !tbaa !31
  %add140 = fadd double %178, %179
  %180 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  store double %add140, ptr %180, align 8, !tbaa !31
  br label %if.end141

if.end141:                                        ; preds = %if.then139, %if.then113
  %181 = load ptr, ptr %partnerp.addr, align 8, !tbaa !5
  store i8 1, ptr %181, align 1, !tbaa !16
  br label %if.end142

if.end142:                                        ; preds = %if.end141, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end142
  %182 = load i32, ptr %i, align 4, !tbaa !14
  %inc143 = add nsw i32 %182, 1
  store i32 %inc143, ptr %i, align 4, !tbaa !14
  br label %for.cond, !llvm.loop !94

for.end:                                          ; preds = %for.cond
  br label %if.end144

if.end144:                                        ; preds = %for.end, %if.end100
  br label %if.end145

if.end145:                                        ; preds = %if.end144, %if.end69
  br label %if.end146

if.end146:                                        ; preds = %if.end145, %if.end
  br label %if.end147

if.end147:                                        ; preds = %if.end146, %while.body22
  %183 = load i32, ptr %querypos, align 4, !tbaa !14
  %dec148 = add nsw i32 %183, -1
  store i32 %dec148, ptr %querypos, align 4, !tbaa !14
  %184 = load i64, ptr %genomicpos, align 8, !tbaa !12
  %dec149 = add i64 %184, -1
  store i64 %dec149, ptr %genomicpos, align 8, !tbaa !12
  %185 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %sub150 = sub nsw i32 %185, 1
  %cmp151 = icmp sge i32 %sub150, 0
  br i1 %cmp151, label %land.lhs.true, label %if.end160

land.lhs.true:                                    ; preds = %if.end147
  %186 = load ptr, ptr %mismatch_positions.addr, align 8, !tbaa !5
  %187 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %sub153 = sub nsw i32 %187, 1
  %idxprom154 = sext i32 %sub153 to i64
  %arrayidx155 = getelementptr inbounds i32, ptr %186, i64 %idxprom154
  %188 = load i32, ptr %arrayidx155, align 4, !tbaa !14
  %189 = load i32, ptr %querypos, align 4, !tbaa !14
  %cmp156 = icmp eq i32 %188, %189
  br i1 %cmp156, label %if.then158, label %if.end160

if.then158:                                       ; preds = %land.lhs.true
  %190 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %dec159 = add nsw i32 %190, -1
  store i32 %dec159, ptr %mismatchi, align 4, !tbaa !14
  br label %if.end160

if.end160:                                        ; preds = %if.then158, %land.lhs.true, %if.end147
  br label %while.cond15, !llvm.loop !95

while.end161:                                     ; preds = %land.end21
  store i32 0, ptr %nconsecutive, align 4, !tbaa !14
  br label %while.cond162

while.cond162:                                    ; preds = %if.end328, %while.end161
  %191 = load i32, ptr %k, align 4, !tbaa !14
  %cmp163 = icmp slt i32 %191, 30
  br i1 %cmp163, label %land.lhs.true165, label %land.end171

land.lhs.true165:                                 ; preds = %while.cond162
  %192 = load i64, ptr %genomicpos, align 8, !tbaa !12
  %193 = load i64, ptr %end_genomicpos.addr, align 8, !tbaa !12
  %cmp166 = icmp ugt i64 %192, %193
  br i1 %cmp166, label %land.rhs168, label %land.end171

land.rhs168:                                      ; preds = %land.lhs.true165
  %194 = load i32, ptr %nconsecutive, align 4, !tbaa !14
  %195 = load i32, ptr %max_nconsecutive.addr, align 4, !tbaa !14
  %cmp169 = icmp slt i32 %194, %195
  br label %land.end171

land.end171:                                      ; preds = %land.rhs168, %land.lhs.true165, %while.cond162
  %196 = phi i1 [ false, %land.lhs.true165 ], [ false, %while.cond162 ], [ %cmp169, %land.rhs168 ]
  br i1 %196, label %while.body172, label %while.end329

while.body172:                                    ; preds = %land.end171
  %197 = load i64, ptr %genomicpos, align 8, !tbaa !12
  %198 = load i64, ptr %chroffset.addr, align 8, !tbaa !12
  %call173 = call double @Maxent_hr_antiacceptor_prob(i64 noundef %197, i64 noundef %198)
  store double %call173, ptr %acceptor_prob, align 8, !tbaa !31
  %199 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %200 = load double, ptr %medial_splicesite_prob.addr, align 8, !tbaa !31
  %cmp174 = fcmp oge double %199, %200
  br i1 %cmp174, label %if.then176, label %if.end312

if.then176:                                       ; preds = %while.body172
  %201 = load i64, ptr %genomicpos, align 8, !tbaa !12
  %202 = load i64, ptr %left, align 8, !tbaa !12
  %sub177 = sub i64 %201, %202
  %conv178 = trunc i64 %sub177 to i32
  store i32 %conv178, ptr %splice_qpos, align 4, !tbaa !14
  %203 = load i8, ptr %search_localdb_p.addr, align 1, !tbaa !16
  %conv179 = zext i8 %203 to i32
  %cmp180 = icmp eq i32 %conv179, 0
  br i1 %cmp180, label %if.then182, label %if.else200

if.then182:                                       ; preds = %if.then176
  %204 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %205 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimends183 = getelementptr inbounds %struct.Spliceends_T, ptr %205, i32 0, i32 8
  %206 = load ptr, ptr %trimends183, align 8, !tbaa !23
  %207 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom184 = sext i32 %207 to i64
  %arrayidx185 = getelementptr inbounds i32, ptr %206, i64 %idxprom184
  store i32 %204, ptr %arrayidx185, align 4, !tbaa !14
  %208 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %209 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %medial_nmismatches186 = getelementptr inbounds %struct.Spliceends_T, ptr %209, i32 0, i32 10
  %210 = load ptr, ptr %medial_nmismatches186, align 8, !tbaa !21
  %211 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom187 = sext i32 %211 to i64
  %arrayidx188 = getelementptr inbounds i32, ptr %210, i64 %idxprom187
  store i32 %208, ptr %arrayidx188, align 4, !tbaa !14
  %212 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %213 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %ambig_probs189 = getelementptr inbounds %struct.Spliceends_T, ptr %213, i32 0, i32 12
  %214 = load ptr, ptr %ambig_probs189, align 8, !tbaa !19
  %215 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom190 = sext i32 %215 to i64
  %arrayidx191 = getelementptr inbounds double, ptr %214, i64 %idxprom190
  store double %212, ptr %arrayidx191, align 8, !tbaa !31
  %216 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_probs192 = getelementptr inbounds %struct.Spliceends_T, ptr %216, i32 0, i32 13
  %217 = load ptr, ptr %distal_probs192, align 8, !tbaa !17
  %218 = load i32, ptr %k, align 4, !tbaa !14
  %inc193 = add nsw i32 %218, 1
  store i32 %inc193, ptr %k, align 4, !tbaa !14
  %idxprom194 = sext i32 %218 to i64
  %arrayidx195 = getelementptr inbounds double, ptr %217, i64 %idxprom194
  store double 0.000000e+00, ptr %arrayidx195, align 8, !tbaa !31
  %219 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %220 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  %221 = load double, ptr %220, align 8, !tbaa !31
  %cmp196 = fcmp ogt double %219, %221
  br i1 %cmp196, label %if.then198, label %if.end199

if.then198:                                       ; preds = %if.then182
  %222 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %223 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  store double %222, ptr %223, align 8, !tbaa !31
  br label %if.end199

if.end199:                                        ; preds = %if.then198, %if.then182
  br label %if.end311

if.else200:                                       ; preds = %if.then176
  %224 = load ptr, ptr %novel_diagonals_alloc.addr, align 8, !tbaa !5
  %225 = load ptr, ptr @localdb, align 8, !tbaa !5
  %226 = load ptr, ptr %localdb_alloc.addr, align 8, !tbaa !5
  %227 = load i32, ptr %streamspace_max_alloc.addr, align 4, !tbaa !14
  %228 = load ptr, ptr %streamspace_alloc.addr, align 8, !tbaa !5
  %229 = load ptr, ptr %streamptr_alloc.addr, align 8, !tbaa !5
  %230 = load ptr, ptr %streamsize_alloc.addr, align 8, !tbaa !5
  %231 = load ptr, ptr %mergeinfo.addr, align 8, !tbaa !5
  %232 = load ptr, ptr %queryptr.addr, align 8, !tbaa !5
  %233 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %234 = load i32, ptr %pos3, align 4, !tbaa !14
  %235 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %236 = load i64, ptr %low_univdiagonal, align 8, !tbaa !12
  %237 = load i64, ptr %high_univdiagonal, align 8, !tbaa !12
  %238 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %239 = load i8, ptr %plusp.addr, align 1, !tbaa !16
  %240 = load i32, ptr %genestrand.addr, align 4, !tbaa !14
  %241 = load ptr, ptr @genomebits, align 8, !tbaa !5
  %242 = load i32, ptr %nmismatches_allowed.addr, align 4, !tbaa !14
  %243 = load i8, ptr %salvagep.addr, align 1, !tbaa !16
  %call201 = call i32 @Localdb_get(ptr noundef %matchlength, ptr noundef %local_nmismatches, ptr noundef %224, ptr noundef %225, ptr noundef %226, i32 noundef %227, ptr noundef %228, ptr noundef %229, ptr noundef %230, ptr noundef %231, ptr noundef %232, i32 noundef %233, i32 noundef %234, i32 noundef %235, i64 noundef %236, i64 noundef %237, ptr noundef %238, i8 noundef zeroext %239, i32 noundef %240, ptr noundef %241, i32 noundef %242, i8 noundef zeroext %243)
  store i32 %call201, ptr %novel_ndiagonals, align 4, !tbaa !14
  %cmp202 = icmp eq i32 %call201, 0
  br i1 %cmp202, label %if.then204, label %if.else231

if.then204:                                       ; preds = %if.else200
  %244 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %matchlengths205 = getelementptr inbounds %struct.Spliceends_T, ptr %244, i32 0, i32 7
  %245 = load ptr, ptr %matchlengths205, align 8, !tbaa !24
  %246 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom206 = sext i32 %246 to i64
  %arrayidx207 = getelementptr inbounds i32, ptr %245, i64 %idxprom206
  store i32 0, ptr %arrayidx207, align 4, !tbaa !14
  %247 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %248 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimends208 = getelementptr inbounds %struct.Spliceends_T, ptr %248, i32 0, i32 8
  %249 = load ptr, ptr %trimends208, align 8, !tbaa !23
  %250 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom209 = sext i32 %250 to i64
  %arrayidx210 = getelementptr inbounds i32, ptr %249, i64 %idxprom209
  store i32 %247, ptr %arrayidx210, align 4, !tbaa !14
  %251 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %252 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %medial_nmismatches211 = getelementptr inbounds %struct.Spliceends_T, ptr %252, i32 0, i32 10
  %253 = load ptr, ptr %medial_nmismatches211, align 8, !tbaa !21
  %254 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom212 = sext i32 %254 to i64
  %arrayidx213 = getelementptr inbounds i32, ptr %253, i64 %idxprom212
  store i32 %251, ptr %arrayidx213, align 4, !tbaa !14
  %255 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %partners214 = getelementptr inbounds %struct.Spliceends_T, ptr %255, i32 0, i32 9
  %256 = load ptr, ptr %partners214, align 8, !tbaa !22
  %257 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom215 = sext i32 %257 to i64
  %arrayidx216 = getelementptr inbounds i64, ptr %256, i64 %idxprom215
  store i64 0, ptr %arrayidx216, align 8, !tbaa !12
  %258 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_nmismatches217 = getelementptr inbounds %struct.Spliceends_T, ptr %258, i32 0, i32 11
  %259 = load ptr, ptr %distal_nmismatches217, align 8, !tbaa !20
  %260 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom218 = sext i32 %260 to i64
  %arrayidx219 = getelementptr inbounds i32, ptr %259, i64 %idxprom218
  store i32 -1, ptr %arrayidx219, align 4, !tbaa !14
  %261 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %262 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %ambig_probs220 = getelementptr inbounds %struct.Spliceends_T, ptr %262, i32 0, i32 12
  %263 = load ptr, ptr %ambig_probs220, align 8, !tbaa !19
  %264 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom221 = sext i32 %264 to i64
  %arrayidx222 = getelementptr inbounds double, ptr %263, i64 %idxprom221
  store double %261, ptr %arrayidx222, align 8, !tbaa !31
  %265 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_probs223 = getelementptr inbounds %struct.Spliceends_T, ptr %265, i32 0, i32 13
  %266 = load ptr, ptr %distal_probs223, align 8, !tbaa !17
  %267 = load i32, ptr %k, align 4, !tbaa !14
  %inc224 = add nsw i32 %267, 1
  store i32 %inc224, ptr %k, align 4, !tbaa !14
  %idxprom225 = sext i32 %267 to i64
  %arrayidx226 = getelementptr inbounds double, ptr %266, i64 %idxprom225
  store double 0.000000e+00, ptr %arrayidx226, align 8, !tbaa !31
  %268 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %269 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  %270 = load double, ptr %269, align 8, !tbaa !31
  %cmp227 = fcmp ogt double %268, %270
  br i1 %cmp227, label %if.then229, label %if.end230

if.then229:                                       ; preds = %if.then204
  %271 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %272 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  store double %271, ptr %272, align 8, !tbaa !31
  br label %if.end230

if.end230:                                        ; preds = %if.then229, %if.then204
  br label %if.end310

if.else231:                                       ; preds = %if.else200
  %273 = load i32, ptr %k, align 4, !tbaa !14
  %274 = load i32, ptr %novel_ndiagonals, align 4, !tbaa !14
  %add232 = add nsw i32 %273, %274
  %cmp233 = icmp sgt i32 %add232, 30
  br i1 %cmp233, label %if.then235, label %if.else262

if.then235:                                       ; preds = %if.else231
  %275 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %matchlengths236 = getelementptr inbounds %struct.Spliceends_T, ptr %275, i32 0, i32 7
  %276 = load ptr, ptr %matchlengths236, align 8, !tbaa !24
  %277 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom237 = sext i32 %277 to i64
  %arrayidx238 = getelementptr inbounds i32, ptr %276, i64 %idxprom237
  store i32 0, ptr %arrayidx238, align 4, !tbaa !14
  %278 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %279 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimends239 = getelementptr inbounds %struct.Spliceends_T, ptr %279, i32 0, i32 8
  %280 = load ptr, ptr %trimends239, align 8, !tbaa !23
  %281 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom240 = sext i32 %281 to i64
  %arrayidx241 = getelementptr inbounds i32, ptr %280, i64 %idxprom240
  store i32 %278, ptr %arrayidx241, align 4, !tbaa !14
  %282 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %283 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %medial_nmismatches242 = getelementptr inbounds %struct.Spliceends_T, ptr %283, i32 0, i32 10
  %284 = load ptr, ptr %medial_nmismatches242, align 8, !tbaa !21
  %285 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom243 = sext i32 %285 to i64
  %arrayidx244 = getelementptr inbounds i32, ptr %284, i64 %idxprom243
  store i32 %282, ptr %arrayidx244, align 4, !tbaa !14
  %286 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %partners245 = getelementptr inbounds %struct.Spliceends_T, ptr %286, i32 0, i32 9
  %287 = load ptr, ptr %partners245, align 8, !tbaa !22
  %288 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom246 = sext i32 %288 to i64
  %arrayidx247 = getelementptr inbounds i64, ptr %287, i64 %idxprom246
  store i64 0, ptr %arrayidx247, align 8, !tbaa !12
  %289 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_nmismatches248 = getelementptr inbounds %struct.Spliceends_T, ptr %289, i32 0, i32 11
  %290 = load ptr, ptr %distal_nmismatches248, align 8, !tbaa !20
  %291 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom249 = sext i32 %291 to i64
  %arrayidx250 = getelementptr inbounds i32, ptr %290, i64 %idxprom249
  store i32 -1, ptr %arrayidx250, align 4, !tbaa !14
  %292 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %293 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %ambig_probs251 = getelementptr inbounds %struct.Spliceends_T, ptr %293, i32 0, i32 12
  %294 = load ptr, ptr %ambig_probs251, align 8, !tbaa !19
  %295 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom252 = sext i32 %295 to i64
  %arrayidx253 = getelementptr inbounds double, ptr %294, i64 %idxprom252
  store double %292, ptr %arrayidx253, align 8, !tbaa !31
  %296 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_probs254 = getelementptr inbounds %struct.Spliceends_T, ptr %296, i32 0, i32 13
  %297 = load ptr, ptr %distal_probs254, align 8, !tbaa !17
  %298 = load i32, ptr %k, align 4, !tbaa !14
  %inc255 = add nsw i32 %298, 1
  store i32 %inc255, ptr %k, align 4, !tbaa !14
  %idxprom256 = sext i32 %298 to i64
  %arrayidx257 = getelementptr inbounds double, ptr %297, i64 %idxprom256
  store double 0.000000e+00, ptr %arrayidx257, align 8, !tbaa !31
  %299 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %300 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  %301 = load double, ptr %300, align 8, !tbaa !31
  %cmp258 = fcmp ogt double %299, %301
  br i1 %cmp258, label %if.then260, label %if.end261

if.then260:                                       ; preds = %if.then235
  %302 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %303 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  store double %302, ptr %303, align 8, !tbaa !31
  br label %if.end261

if.end261:                                        ; preds = %if.then260, %if.then235
  br label %if.end309

if.else262:                                       ; preds = %if.else231
  store i32 0, ptr %i, align 4, !tbaa !14
  br label %for.cond263

for.cond263:                                      ; preds = %for.inc306, %if.else262
  %304 = load i32, ptr %i, align 4, !tbaa !14
  %305 = load i32, ptr %novel_ndiagonals, align 4, !tbaa !14
  %cmp264 = icmp slt i32 %304, %305
  br i1 %cmp264, label %for.body266, label %for.end308

for.body266:                                      ; preds = %for.cond263
  %306 = load ptr, ptr %novel_diagonals_alloc.addr, align 8, !tbaa !5
  %307 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom267 = sext i32 %307 to i64
  %arrayidx268 = getelementptr inbounds i64, ptr %306, i64 %idxprom267
  %308 = load i64, ptr %arrayidx268, align 8, !tbaa !12
  %309 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %conv269 = sext i32 %309 to i64
  %sub270 = sub i64 %308, %conv269
  %310 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %conv271 = sext i32 %310 to i64
  %add272 = add i64 %sub270, %conv271
  store i64 %add272, ptr %distal_genomicpos, align 8, !tbaa !12
  %311 = load i64, ptr %distal_genomicpos, align 8, !tbaa !12
  %312 = load i64, ptr %chroffset.addr, align 8, !tbaa !12
  %call273 = call double @Maxent_hr_antidonor_prob(i64 noundef %311, i64 noundef %312)
  store double %call273, ptr %donor_prob, align 8, !tbaa !31
  %313 = load double, ptr %donor_prob, align 8, !tbaa !31
  %314 = load double, ptr %distal_splicesite_prob.addr, align 8, !tbaa !31
  %cmp274 = fcmp oge double %313, %314
  br i1 %cmp274, label %if.then276, label %if.end305

if.then276:                                       ; preds = %for.body266
  %315 = load i32, ptr %matchlength, align 4, !tbaa !14
  %316 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %matchlengths277 = getelementptr inbounds %struct.Spliceends_T, ptr %316, i32 0, i32 7
  %317 = load ptr, ptr %matchlengths277, align 8, !tbaa !24
  %318 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom278 = sext i32 %318 to i64
  %arrayidx279 = getelementptr inbounds i32, ptr %317, i64 %idxprom278
  store i32 %315, ptr %arrayidx279, align 4, !tbaa !14
  %319 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %320 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimends280 = getelementptr inbounds %struct.Spliceends_T, ptr %320, i32 0, i32 8
  %321 = load ptr, ptr %trimends280, align 8, !tbaa !23
  %322 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom281 = sext i32 %322 to i64
  %arrayidx282 = getelementptr inbounds i32, ptr %321, i64 %idxprom281
  store i32 %319, ptr %arrayidx282, align 4, !tbaa !14
  %323 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %324 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %medial_nmismatches283 = getelementptr inbounds %struct.Spliceends_T, ptr %324, i32 0, i32 10
  %325 = load ptr, ptr %medial_nmismatches283, align 8, !tbaa !21
  %326 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom284 = sext i32 %326 to i64
  %arrayidx285 = getelementptr inbounds i32, ptr %325, i64 %idxprom284
  store i32 %323, ptr %arrayidx285, align 4, !tbaa !14
  %327 = load i64, ptr %distal_genomicpos, align 8, !tbaa !12
  %328 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %partners286 = getelementptr inbounds %struct.Spliceends_T, ptr %328, i32 0, i32 9
  %329 = load ptr, ptr %partners286, align 8, !tbaa !22
  %330 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom287 = sext i32 %330 to i64
  %arrayidx288 = getelementptr inbounds i64, ptr %329, i64 %idxprom287
  store i64 %327, ptr %arrayidx288, align 8, !tbaa !12
  %331 = load i32, ptr %local_nmismatches, align 4, !tbaa !14
  %332 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_nmismatches289 = getelementptr inbounds %struct.Spliceends_T, ptr %332, i32 0, i32 11
  %333 = load ptr, ptr %distal_nmismatches289, align 8, !tbaa !20
  %334 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom290 = sext i32 %334 to i64
  %arrayidx291 = getelementptr inbounds i32, ptr %333, i64 %idxprom290
  store i32 %331, ptr %arrayidx291, align 4, !tbaa !14
  %335 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %336 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %ambig_probs292 = getelementptr inbounds %struct.Spliceends_T, ptr %336, i32 0, i32 12
  %337 = load ptr, ptr %ambig_probs292, align 8, !tbaa !19
  %338 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom293 = sext i32 %338 to i64
  %arrayidx294 = getelementptr inbounds double, ptr %337, i64 %idxprom293
  store double %335, ptr %arrayidx294, align 8, !tbaa !31
  %339 = load double, ptr %donor_prob, align 8, !tbaa !31
  %340 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_probs295 = getelementptr inbounds %struct.Spliceends_T, ptr %340, i32 0, i32 13
  %341 = load ptr, ptr %distal_probs295, align 8, !tbaa !17
  %342 = load i32, ptr %k, align 4, !tbaa !14
  %inc296 = add nsw i32 %342, 1
  store i32 %inc296, ptr %k, align 4, !tbaa !14
  %idxprom297 = sext i32 %342 to i64
  %arrayidx298 = getelementptr inbounds double, ptr %341, i64 %idxprom297
  store double %339, ptr %arrayidx298, align 8, !tbaa !31
  %343 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %344 = load double, ptr %donor_prob, align 8, !tbaa !31
  %add299 = fadd double %343, %344
  %345 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  %346 = load double, ptr %345, align 8, !tbaa !31
  %cmp300 = fcmp ogt double %add299, %346
  br i1 %cmp300, label %if.then302, label %if.end304

if.then302:                                       ; preds = %if.then276
  %347 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %348 = load double, ptr %donor_prob, align 8, !tbaa !31
  %add303 = fadd double %347, %348
  %349 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  store double %add303, ptr %349, align 8, !tbaa !31
  br label %if.end304

if.end304:                                        ; preds = %if.then302, %if.then276
  %350 = load ptr, ptr %partnerp.addr, align 8, !tbaa !5
  store i8 1, ptr %350, align 1, !tbaa !16
  br label %if.end305

if.end305:                                        ; preds = %if.end304, %for.body266
  br label %for.inc306

for.inc306:                                       ; preds = %if.end305
  %351 = load i32, ptr %i, align 4, !tbaa !14
  %inc307 = add nsw i32 %351, 1
  store i32 %inc307, ptr %i, align 4, !tbaa !14
  br label %for.cond263, !llvm.loop !96

for.end308:                                       ; preds = %for.cond263
  br label %if.end309

if.end309:                                        ; preds = %for.end308, %if.end261
  br label %if.end310

if.end310:                                        ; preds = %if.end309, %if.end230
  br label %if.end311

if.end311:                                        ; preds = %if.end310, %if.end199
  br label %if.end312

if.end312:                                        ; preds = %if.end311, %while.body172
  %352 = load i32, ptr %querypos, align 4, !tbaa !14
  %dec313 = add nsw i32 %352, -1
  store i32 %dec313, ptr %querypos, align 4, !tbaa !14
  %353 = load i64, ptr %genomicpos, align 8, !tbaa !12
  %dec314 = add i64 %353, -1
  store i64 %dec314, ptr %genomicpos, align 8, !tbaa !12
  %354 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %sub315 = sub nsw i32 %354, 1
  %cmp316 = icmp sge i32 %sub315, 0
  br i1 %cmp316, label %land.lhs.true318, label %if.else326

land.lhs.true318:                                 ; preds = %if.end312
  %355 = load ptr, ptr %mismatch_positions.addr, align 8, !tbaa !5
  %356 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %sub319 = sub nsw i32 %356, 1
  %idxprom320 = sext i32 %sub319 to i64
  %arrayidx321 = getelementptr inbounds i32, ptr %355, i64 %idxprom320
  %357 = load i32, ptr %arrayidx321, align 4, !tbaa !14
  %358 = load i32, ptr %querypos, align 4, !tbaa !14
  %cmp322 = icmp eq i32 %357, %358
  br i1 %cmp322, label %if.then324, label %if.else326

if.then324:                                       ; preds = %land.lhs.true318
  store i32 0, ptr %nconsecutive, align 4, !tbaa !14
  %359 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %dec325 = add nsw i32 %359, -1
  store i32 %dec325, ptr %mismatchi, align 4, !tbaa !14
  br label %if.end328

if.else326:                                       ; preds = %land.lhs.true318, %if.end312
  %360 = load i32, ptr %nconsecutive, align 4, !tbaa !14
  %inc327 = add nsw i32 %360, 1
  store i32 %inc327, ptr %nconsecutive, align 4, !tbaa !14
  br label %if.end328

if.end328:                                        ; preds = %if.else326, %if.then324
  br label %while.cond162, !llvm.loop !97

while.end329:                                     ; preds = %land.end171
  br label %if.end662

if.else330:                                       ; preds = %while.end
  br label %while.cond331

while.cond331:                                    ; preds = %if.end492, %if.else330
  %361 = load i32, ptr %k, align 4, !tbaa !14
  %cmp332 = icmp slt i32 %361, 30
  br i1 %cmp332, label %land.rhs334, label %land.end337

land.rhs334:                                      ; preds = %while.cond331
  %362 = load i64, ptr %genomicpos, align 8, !tbaa !12
  %363 = load i64, ptr %middle_genomicpos.addr, align 8, !tbaa !12
  %cmp335 = icmp ugt i64 %362, %363
  br label %land.end337

land.end337:                                      ; preds = %land.rhs334, %while.cond331
  %364 = phi i1 [ false, %while.cond331 ], [ %cmp335, %land.rhs334 ]
  br i1 %364, label %while.body338, label %while.end493

while.body338:                                    ; preds = %land.end337
  %365 = load i64, ptr %genomicpos, align 8, !tbaa !12
  %366 = load i64, ptr %chroffset.addr, align 8, !tbaa !12
  %call339 = call double @Maxent_hr_donor_prob(i64 noundef %365, i64 noundef %366)
  store double %call339, ptr %donor_prob, align 8, !tbaa !31
  %367 = load double, ptr %donor_prob, align 8, !tbaa !31
  %368 = load double, ptr %medial_splicesite_prob.addr, align 8, !tbaa !31
  %cmp340 = fcmp oge double %367, %368
  br i1 %cmp340, label %if.then342, label %if.end478

if.then342:                                       ; preds = %while.body338
  %369 = load i64, ptr %genomicpos, align 8, !tbaa !12
  %370 = load i64, ptr %left, align 8, !tbaa !12
  %sub343 = sub i64 %369, %370
  %conv344 = trunc i64 %sub343 to i32
  store i32 %conv344, ptr %splice_qpos, align 4, !tbaa !14
  %371 = load i8, ptr %search_localdb_p.addr, align 1, !tbaa !16
  %conv345 = zext i8 %371 to i32
  %cmp346 = icmp eq i32 %conv345, 0
  br i1 %cmp346, label %if.then348, label %if.else366

if.then348:                                       ; preds = %if.then342
  %372 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %373 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimends349 = getelementptr inbounds %struct.Spliceends_T, ptr %373, i32 0, i32 8
  %374 = load ptr, ptr %trimends349, align 8, !tbaa !23
  %375 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom350 = sext i32 %375 to i64
  %arrayidx351 = getelementptr inbounds i32, ptr %374, i64 %idxprom350
  store i32 %372, ptr %arrayidx351, align 4, !tbaa !14
  %376 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %377 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %medial_nmismatches352 = getelementptr inbounds %struct.Spliceends_T, ptr %377, i32 0, i32 10
  %378 = load ptr, ptr %medial_nmismatches352, align 8, !tbaa !21
  %379 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom353 = sext i32 %379 to i64
  %arrayidx354 = getelementptr inbounds i32, ptr %378, i64 %idxprom353
  store i32 %376, ptr %arrayidx354, align 4, !tbaa !14
  %380 = load double, ptr %donor_prob, align 8, !tbaa !31
  %381 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %ambig_probs355 = getelementptr inbounds %struct.Spliceends_T, ptr %381, i32 0, i32 12
  %382 = load ptr, ptr %ambig_probs355, align 8, !tbaa !19
  %383 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom356 = sext i32 %383 to i64
  %arrayidx357 = getelementptr inbounds double, ptr %382, i64 %idxprom356
  store double %380, ptr %arrayidx357, align 8, !tbaa !31
  %384 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_probs358 = getelementptr inbounds %struct.Spliceends_T, ptr %384, i32 0, i32 13
  %385 = load ptr, ptr %distal_probs358, align 8, !tbaa !17
  %386 = load i32, ptr %k, align 4, !tbaa !14
  %inc359 = add nsw i32 %386, 1
  store i32 %inc359, ptr %k, align 4, !tbaa !14
  %idxprom360 = sext i32 %386 to i64
  %arrayidx361 = getelementptr inbounds double, ptr %385, i64 %idxprom360
  store double 0.000000e+00, ptr %arrayidx361, align 8, !tbaa !31
  %387 = load double, ptr %donor_prob, align 8, !tbaa !31
  %388 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  %389 = load double, ptr %388, align 8, !tbaa !31
  %cmp362 = fcmp ogt double %387, %389
  br i1 %cmp362, label %if.then364, label %if.end365

if.then364:                                       ; preds = %if.then348
  %390 = load double, ptr %donor_prob, align 8, !tbaa !31
  %391 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  store double %390, ptr %391, align 8, !tbaa !31
  br label %if.end365

if.end365:                                        ; preds = %if.then364, %if.then348
  br label %if.end477

if.else366:                                       ; preds = %if.then342
  %392 = load ptr, ptr %novel_diagonals_alloc.addr, align 8, !tbaa !5
  %393 = load ptr, ptr @localdb, align 8, !tbaa !5
  %394 = load ptr, ptr %localdb_alloc.addr, align 8, !tbaa !5
  %395 = load i32, ptr %streamspace_max_alloc.addr, align 4, !tbaa !14
  %396 = load ptr, ptr %streamspace_alloc.addr, align 8, !tbaa !5
  %397 = load ptr, ptr %streamptr_alloc.addr, align 8, !tbaa !5
  %398 = load ptr, ptr %streamsize_alloc.addr, align 8, !tbaa !5
  %399 = load ptr, ptr %mergeinfo.addr, align 8, !tbaa !5
  %400 = load ptr, ptr %queryptr.addr, align 8, !tbaa !5
  %401 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %402 = load i32, ptr %pos3, align 4, !tbaa !14
  %403 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %404 = load i64, ptr %low_univdiagonal, align 8, !tbaa !12
  %405 = load i64, ptr %high_univdiagonal, align 8, !tbaa !12
  %406 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %407 = load i8, ptr %plusp.addr, align 1, !tbaa !16
  %408 = load i32, ptr %genestrand.addr, align 4, !tbaa !14
  %409 = load ptr, ptr @genomebits, align 8, !tbaa !5
  %410 = load i32, ptr %nmismatches_allowed.addr, align 4, !tbaa !14
  %411 = load i8, ptr %salvagep.addr, align 1, !tbaa !16
  %call367 = call i32 @Localdb_get(ptr noundef %matchlength, ptr noundef %local_nmismatches, ptr noundef %392, ptr noundef %393, ptr noundef %394, i32 noundef %395, ptr noundef %396, ptr noundef %397, ptr noundef %398, ptr noundef %399, ptr noundef %400, i32 noundef %401, i32 noundef %402, i32 noundef %403, i64 noundef %404, i64 noundef %405, ptr noundef %406, i8 noundef zeroext %407, i32 noundef %408, ptr noundef %409, i32 noundef %410, i8 noundef zeroext %411)
  store i32 %call367, ptr %novel_ndiagonals, align 4, !tbaa !14
  %cmp368 = icmp eq i32 %call367, 0
  br i1 %cmp368, label %if.then370, label %if.else397

if.then370:                                       ; preds = %if.else366
  %412 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %matchlengths371 = getelementptr inbounds %struct.Spliceends_T, ptr %412, i32 0, i32 7
  %413 = load ptr, ptr %matchlengths371, align 8, !tbaa !24
  %414 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom372 = sext i32 %414 to i64
  %arrayidx373 = getelementptr inbounds i32, ptr %413, i64 %idxprom372
  store i32 0, ptr %arrayidx373, align 4, !tbaa !14
  %415 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %416 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimends374 = getelementptr inbounds %struct.Spliceends_T, ptr %416, i32 0, i32 8
  %417 = load ptr, ptr %trimends374, align 8, !tbaa !23
  %418 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom375 = sext i32 %418 to i64
  %arrayidx376 = getelementptr inbounds i32, ptr %417, i64 %idxprom375
  store i32 %415, ptr %arrayidx376, align 4, !tbaa !14
  %419 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %420 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %medial_nmismatches377 = getelementptr inbounds %struct.Spliceends_T, ptr %420, i32 0, i32 10
  %421 = load ptr, ptr %medial_nmismatches377, align 8, !tbaa !21
  %422 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom378 = sext i32 %422 to i64
  %arrayidx379 = getelementptr inbounds i32, ptr %421, i64 %idxprom378
  store i32 %419, ptr %arrayidx379, align 4, !tbaa !14
  %423 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %partners380 = getelementptr inbounds %struct.Spliceends_T, ptr %423, i32 0, i32 9
  %424 = load ptr, ptr %partners380, align 8, !tbaa !22
  %425 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom381 = sext i32 %425 to i64
  %arrayidx382 = getelementptr inbounds i64, ptr %424, i64 %idxprom381
  store i64 0, ptr %arrayidx382, align 8, !tbaa !12
  %426 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_nmismatches383 = getelementptr inbounds %struct.Spliceends_T, ptr %426, i32 0, i32 11
  %427 = load ptr, ptr %distal_nmismatches383, align 8, !tbaa !20
  %428 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom384 = sext i32 %428 to i64
  %arrayidx385 = getelementptr inbounds i32, ptr %427, i64 %idxprom384
  store i32 -1, ptr %arrayidx385, align 4, !tbaa !14
  %429 = load double, ptr %donor_prob, align 8, !tbaa !31
  %430 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %ambig_probs386 = getelementptr inbounds %struct.Spliceends_T, ptr %430, i32 0, i32 12
  %431 = load ptr, ptr %ambig_probs386, align 8, !tbaa !19
  %432 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom387 = sext i32 %432 to i64
  %arrayidx388 = getelementptr inbounds double, ptr %431, i64 %idxprom387
  store double %429, ptr %arrayidx388, align 8, !tbaa !31
  %433 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_probs389 = getelementptr inbounds %struct.Spliceends_T, ptr %433, i32 0, i32 13
  %434 = load ptr, ptr %distal_probs389, align 8, !tbaa !17
  %435 = load i32, ptr %k, align 4, !tbaa !14
  %inc390 = add nsw i32 %435, 1
  store i32 %inc390, ptr %k, align 4, !tbaa !14
  %idxprom391 = sext i32 %435 to i64
  %arrayidx392 = getelementptr inbounds double, ptr %434, i64 %idxprom391
  store double 0.000000e+00, ptr %arrayidx392, align 8, !tbaa !31
  %436 = load double, ptr %donor_prob, align 8, !tbaa !31
  %437 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  %438 = load double, ptr %437, align 8, !tbaa !31
  %cmp393 = fcmp ogt double %436, %438
  br i1 %cmp393, label %if.then395, label %if.end396

if.then395:                                       ; preds = %if.then370
  %439 = load double, ptr %donor_prob, align 8, !tbaa !31
  %440 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  store double %439, ptr %440, align 8, !tbaa !31
  br label %if.end396

if.end396:                                        ; preds = %if.then395, %if.then370
  br label %if.end476

if.else397:                                       ; preds = %if.else366
  %441 = load i32, ptr %k, align 4, !tbaa !14
  %442 = load i32, ptr %novel_ndiagonals, align 4, !tbaa !14
  %add398 = add nsw i32 %441, %442
  %cmp399 = icmp sgt i32 %add398, 30
  br i1 %cmp399, label %if.then401, label %if.else428

if.then401:                                       ; preds = %if.else397
  %443 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %matchlengths402 = getelementptr inbounds %struct.Spliceends_T, ptr %443, i32 0, i32 7
  %444 = load ptr, ptr %matchlengths402, align 8, !tbaa !24
  %445 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom403 = sext i32 %445 to i64
  %arrayidx404 = getelementptr inbounds i32, ptr %444, i64 %idxprom403
  store i32 0, ptr %arrayidx404, align 4, !tbaa !14
  %446 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %447 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimends405 = getelementptr inbounds %struct.Spliceends_T, ptr %447, i32 0, i32 8
  %448 = load ptr, ptr %trimends405, align 8, !tbaa !23
  %449 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom406 = sext i32 %449 to i64
  %arrayidx407 = getelementptr inbounds i32, ptr %448, i64 %idxprom406
  store i32 %446, ptr %arrayidx407, align 4, !tbaa !14
  %450 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %451 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %medial_nmismatches408 = getelementptr inbounds %struct.Spliceends_T, ptr %451, i32 0, i32 10
  %452 = load ptr, ptr %medial_nmismatches408, align 8, !tbaa !21
  %453 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom409 = sext i32 %453 to i64
  %arrayidx410 = getelementptr inbounds i32, ptr %452, i64 %idxprom409
  store i32 %450, ptr %arrayidx410, align 4, !tbaa !14
  %454 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %partners411 = getelementptr inbounds %struct.Spliceends_T, ptr %454, i32 0, i32 9
  %455 = load ptr, ptr %partners411, align 8, !tbaa !22
  %456 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom412 = sext i32 %456 to i64
  %arrayidx413 = getelementptr inbounds i64, ptr %455, i64 %idxprom412
  store i64 0, ptr %arrayidx413, align 8, !tbaa !12
  %457 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_nmismatches414 = getelementptr inbounds %struct.Spliceends_T, ptr %457, i32 0, i32 11
  %458 = load ptr, ptr %distal_nmismatches414, align 8, !tbaa !20
  %459 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom415 = sext i32 %459 to i64
  %arrayidx416 = getelementptr inbounds i32, ptr %458, i64 %idxprom415
  store i32 -1, ptr %arrayidx416, align 4, !tbaa !14
  %460 = load double, ptr %donor_prob, align 8, !tbaa !31
  %461 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %ambig_probs417 = getelementptr inbounds %struct.Spliceends_T, ptr %461, i32 0, i32 12
  %462 = load ptr, ptr %ambig_probs417, align 8, !tbaa !19
  %463 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom418 = sext i32 %463 to i64
  %arrayidx419 = getelementptr inbounds double, ptr %462, i64 %idxprom418
  store double %460, ptr %arrayidx419, align 8, !tbaa !31
  %464 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_probs420 = getelementptr inbounds %struct.Spliceends_T, ptr %464, i32 0, i32 13
  %465 = load ptr, ptr %distal_probs420, align 8, !tbaa !17
  %466 = load i32, ptr %k, align 4, !tbaa !14
  %inc421 = add nsw i32 %466, 1
  store i32 %inc421, ptr %k, align 4, !tbaa !14
  %idxprom422 = sext i32 %466 to i64
  %arrayidx423 = getelementptr inbounds double, ptr %465, i64 %idxprom422
  store double 0.000000e+00, ptr %arrayidx423, align 8, !tbaa !31
  %467 = load double, ptr %donor_prob, align 8, !tbaa !31
  %468 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  %469 = load double, ptr %468, align 8, !tbaa !31
  %cmp424 = fcmp ogt double %467, %469
  br i1 %cmp424, label %if.then426, label %if.end427

if.then426:                                       ; preds = %if.then401
  %470 = load double, ptr %donor_prob, align 8, !tbaa !31
  %471 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  store double %470, ptr %471, align 8, !tbaa !31
  br label %if.end427

if.end427:                                        ; preds = %if.then426, %if.then401
  br label %if.end475

if.else428:                                       ; preds = %if.else397
  store i32 0, ptr %i, align 4, !tbaa !14
  br label %for.cond429

for.cond429:                                      ; preds = %for.inc472, %if.else428
  %472 = load i32, ptr %i, align 4, !tbaa !14
  %473 = load i32, ptr %novel_ndiagonals, align 4, !tbaa !14
  %cmp430 = icmp slt i32 %472, %473
  br i1 %cmp430, label %for.body432, label %for.end474

for.body432:                                      ; preds = %for.cond429
  %474 = load ptr, ptr %novel_diagonals_alloc.addr, align 8, !tbaa !5
  %475 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom433 = sext i32 %475 to i64
  %arrayidx434 = getelementptr inbounds i64, ptr %474, i64 %idxprom433
  %476 = load i64, ptr %arrayidx434, align 8, !tbaa !12
  %477 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %conv435 = sext i32 %477 to i64
  %sub436 = sub i64 %476, %conv435
  %478 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %conv437 = sext i32 %478 to i64
  %add438 = add i64 %sub436, %conv437
  store i64 %add438, ptr %distal_genomicpos, align 8, !tbaa !12
  %479 = load i64, ptr %distal_genomicpos, align 8, !tbaa !12
  %480 = load i64, ptr %chroffset.addr, align 8, !tbaa !12
  %call439 = call double @Maxent_hr_acceptor_prob(i64 noundef %479, i64 noundef %480)
  store double %call439, ptr %acceptor_prob, align 8, !tbaa !31
  %481 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %482 = load double, ptr %distal_splicesite_prob.addr, align 8, !tbaa !31
  %cmp440 = fcmp oge double %481, %482
  br i1 %cmp440, label %if.then442, label %if.end471

if.then442:                                       ; preds = %for.body432
  %483 = load i32, ptr %matchlength, align 4, !tbaa !14
  %484 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %matchlengths443 = getelementptr inbounds %struct.Spliceends_T, ptr %484, i32 0, i32 7
  %485 = load ptr, ptr %matchlengths443, align 8, !tbaa !24
  %486 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom444 = sext i32 %486 to i64
  %arrayidx445 = getelementptr inbounds i32, ptr %485, i64 %idxprom444
  store i32 %483, ptr %arrayidx445, align 4, !tbaa !14
  %487 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %488 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimends446 = getelementptr inbounds %struct.Spliceends_T, ptr %488, i32 0, i32 8
  %489 = load ptr, ptr %trimends446, align 8, !tbaa !23
  %490 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom447 = sext i32 %490 to i64
  %arrayidx448 = getelementptr inbounds i32, ptr %489, i64 %idxprom447
  store i32 %487, ptr %arrayidx448, align 4, !tbaa !14
  %491 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %492 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %medial_nmismatches449 = getelementptr inbounds %struct.Spliceends_T, ptr %492, i32 0, i32 10
  %493 = load ptr, ptr %medial_nmismatches449, align 8, !tbaa !21
  %494 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom450 = sext i32 %494 to i64
  %arrayidx451 = getelementptr inbounds i32, ptr %493, i64 %idxprom450
  store i32 %491, ptr %arrayidx451, align 4, !tbaa !14
  %495 = load i64, ptr %distal_genomicpos, align 8, !tbaa !12
  %496 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %partners452 = getelementptr inbounds %struct.Spliceends_T, ptr %496, i32 0, i32 9
  %497 = load ptr, ptr %partners452, align 8, !tbaa !22
  %498 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom453 = sext i32 %498 to i64
  %arrayidx454 = getelementptr inbounds i64, ptr %497, i64 %idxprom453
  store i64 %495, ptr %arrayidx454, align 8, !tbaa !12
  %499 = load i32, ptr %local_nmismatches, align 4, !tbaa !14
  %500 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_nmismatches455 = getelementptr inbounds %struct.Spliceends_T, ptr %500, i32 0, i32 11
  %501 = load ptr, ptr %distal_nmismatches455, align 8, !tbaa !20
  %502 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom456 = sext i32 %502 to i64
  %arrayidx457 = getelementptr inbounds i32, ptr %501, i64 %idxprom456
  store i32 %499, ptr %arrayidx457, align 4, !tbaa !14
  %503 = load double, ptr %donor_prob, align 8, !tbaa !31
  %504 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %ambig_probs458 = getelementptr inbounds %struct.Spliceends_T, ptr %504, i32 0, i32 12
  %505 = load ptr, ptr %ambig_probs458, align 8, !tbaa !19
  %506 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom459 = sext i32 %506 to i64
  %arrayidx460 = getelementptr inbounds double, ptr %505, i64 %idxprom459
  store double %503, ptr %arrayidx460, align 8, !tbaa !31
  %507 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %508 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_probs461 = getelementptr inbounds %struct.Spliceends_T, ptr %508, i32 0, i32 13
  %509 = load ptr, ptr %distal_probs461, align 8, !tbaa !17
  %510 = load i32, ptr %k, align 4, !tbaa !14
  %inc462 = add nsw i32 %510, 1
  store i32 %inc462, ptr %k, align 4, !tbaa !14
  %idxprom463 = sext i32 %510 to i64
  %arrayidx464 = getelementptr inbounds double, ptr %509, i64 %idxprom463
  store double %507, ptr %arrayidx464, align 8, !tbaa !31
  %511 = load double, ptr %donor_prob, align 8, !tbaa !31
  %512 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %add465 = fadd double %511, %512
  %513 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  %514 = load double, ptr %513, align 8, !tbaa !31
  %cmp466 = fcmp ogt double %add465, %514
  br i1 %cmp466, label %if.then468, label %if.end470

if.then468:                                       ; preds = %if.then442
  %515 = load double, ptr %donor_prob, align 8, !tbaa !31
  %516 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %add469 = fadd double %515, %516
  %517 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  store double %add469, ptr %517, align 8, !tbaa !31
  br label %if.end470

if.end470:                                        ; preds = %if.then468, %if.then442
  %518 = load ptr, ptr %partnerp.addr, align 8, !tbaa !5
  store i8 1, ptr %518, align 1, !tbaa !16
  br label %if.end471

if.end471:                                        ; preds = %if.end470, %for.body432
  br label %for.inc472

for.inc472:                                       ; preds = %if.end471
  %519 = load i32, ptr %i, align 4, !tbaa !14
  %inc473 = add nsw i32 %519, 1
  store i32 %inc473, ptr %i, align 4, !tbaa !14
  br label %for.cond429, !llvm.loop !98

for.end474:                                       ; preds = %for.cond429
  br label %if.end475

if.end475:                                        ; preds = %for.end474, %if.end427
  br label %if.end476

if.end476:                                        ; preds = %if.end475, %if.end396
  br label %if.end477

if.end477:                                        ; preds = %if.end476, %if.end365
  br label %if.end478

if.end478:                                        ; preds = %if.end477, %while.body338
  %520 = load i32, ptr %querypos, align 4, !tbaa !14
  %dec479 = add nsw i32 %520, -1
  store i32 %dec479, ptr %querypos, align 4, !tbaa !14
  %521 = load i64, ptr %genomicpos, align 8, !tbaa !12
  %dec480 = add i64 %521, -1
  store i64 %dec480, ptr %genomicpos, align 8, !tbaa !12
  %522 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %sub481 = sub nsw i32 %522, 1
  %cmp482 = icmp sge i32 %sub481, 0
  br i1 %cmp482, label %land.lhs.true484, label %if.end492

land.lhs.true484:                                 ; preds = %if.end478
  %523 = load ptr, ptr %mismatch_positions.addr, align 8, !tbaa !5
  %524 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %sub485 = sub nsw i32 %524, 1
  %idxprom486 = sext i32 %sub485 to i64
  %arrayidx487 = getelementptr inbounds i32, ptr %523, i64 %idxprom486
  %525 = load i32, ptr %arrayidx487, align 4, !tbaa !14
  %526 = load i32, ptr %querypos, align 4, !tbaa !14
  %cmp488 = icmp eq i32 %525, %526
  br i1 %cmp488, label %if.then490, label %if.end492

if.then490:                                       ; preds = %land.lhs.true484
  %527 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %dec491 = add nsw i32 %527, -1
  store i32 %dec491, ptr %mismatchi, align 4, !tbaa !14
  br label %if.end492

if.end492:                                        ; preds = %if.then490, %land.lhs.true484, %if.end478
  br label %while.cond331, !llvm.loop !99

while.end493:                                     ; preds = %land.end337
  store i32 0, ptr %nconsecutive, align 4, !tbaa !14
  br label %while.cond494

while.cond494:                                    ; preds = %if.end660, %while.end493
  %528 = load i32, ptr %k, align 4, !tbaa !14
  %cmp495 = icmp slt i32 %528, 30
  br i1 %cmp495, label %land.lhs.true497, label %land.end503

land.lhs.true497:                                 ; preds = %while.cond494
  %529 = load i64, ptr %genomicpos, align 8, !tbaa !12
  %530 = load i64, ptr %end_genomicpos.addr, align 8, !tbaa !12
  %cmp498 = icmp ugt i64 %529, %530
  br i1 %cmp498, label %land.rhs500, label %land.end503

land.rhs500:                                      ; preds = %land.lhs.true497
  %531 = load i32, ptr %nconsecutive, align 4, !tbaa !14
  %532 = load i32, ptr %max_nconsecutive.addr, align 4, !tbaa !14
  %cmp501 = icmp slt i32 %531, %532
  br label %land.end503

land.end503:                                      ; preds = %land.rhs500, %land.lhs.true497, %while.cond494
  %533 = phi i1 [ false, %land.lhs.true497 ], [ false, %while.cond494 ], [ %cmp501, %land.rhs500 ]
  br i1 %533, label %while.body504, label %while.end661

while.body504:                                    ; preds = %land.end503
  %534 = load i64, ptr %genomicpos, align 8, !tbaa !12
  %535 = load i64, ptr %chroffset.addr, align 8, !tbaa !12
  %call505 = call double @Maxent_hr_donor_prob(i64 noundef %534, i64 noundef %535)
  store double %call505, ptr %donor_prob, align 8, !tbaa !31
  %536 = load double, ptr %donor_prob, align 8, !tbaa !31
  %537 = load double, ptr %medial_splicesite_prob.addr, align 8, !tbaa !31
  %cmp506 = fcmp oge double %536, %537
  br i1 %cmp506, label %if.then508, label %if.end644

if.then508:                                       ; preds = %while.body504
  %538 = load i64, ptr %genomicpos, align 8, !tbaa !12
  %539 = load i64, ptr %left, align 8, !tbaa !12
  %sub509 = sub i64 %538, %539
  %conv510 = trunc i64 %sub509 to i32
  store i32 %conv510, ptr %splice_qpos, align 4, !tbaa !14
  %540 = load i8, ptr %search_localdb_p.addr, align 1, !tbaa !16
  %conv511 = zext i8 %540 to i32
  %cmp512 = icmp eq i32 %conv511, 0
  br i1 %cmp512, label %if.then514, label %if.else532

if.then514:                                       ; preds = %if.then508
  %541 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %542 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimends515 = getelementptr inbounds %struct.Spliceends_T, ptr %542, i32 0, i32 8
  %543 = load ptr, ptr %trimends515, align 8, !tbaa !23
  %544 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom516 = sext i32 %544 to i64
  %arrayidx517 = getelementptr inbounds i32, ptr %543, i64 %idxprom516
  store i32 %541, ptr %arrayidx517, align 4, !tbaa !14
  %545 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %546 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %medial_nmismatches518 = getelementptr inbounds %struct.Spliceends_T, ptr %546, i32 0, i32 10
  %547 = load ptr, ptr %medial_nmismatches518, align 8, !tbaa !21
  %548 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom519 = sext i32 %548 to i64
  %arrayidx520 = getelementptr inbounds i32, ptr %547, i64 %idxprom519
  store i32 %545, ptr %arrayidx520, align 4, !tbaa !14
  %549 = load double, ptr %donor_prob, align 8, !tbaa !31
  %550 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %ambig_probs521 = getelementptr inbounds %struct.Spliceends_T, ptr %550, i32 0, i32 12
  %551 = load ptr, ptr %ambig_probs521, align 8, !tbaa !19
  %552 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom522 = sext i32 %552 to i64
  %arrayidx523 = getelementptr inbounds double, ptr %551, i64 %idxprom522
  store double %549, ptr %arrayidx523, align 8, !tbaa !31
  %553 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_probs524 = getelementptr inbounds %struct.Spliceends_T, ptr %553, i32 0, i32 13
  %554 = load ptr, ptr %distal_probs524, align 8, !tbaa !17
  %555 = load i32, ptr %k, align 4, !tbaa !14
  %inc525 = add nsw i32 %555, 1
  store i32 %inc525, ptr %k, align 4, !tbaa !14
  %idxprom526 = sext i32 %555 to i64
  %arrayidx527 = getelementptr inbounds double, ptr %554, i64 %idxprom526
  store double 0.000000e+00, ptr %arrayidx527, align 8, !tbaa !31
  %556 = load double, ptr %donor_prob, align 8, !tbaa !31
  %557 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  %558 = load double, ptr %557, align 8, !tbaa !31
  %cmp528 = fcmp ogt double %556, %558
  br i1 %cmp528, label %if.then530, label %if.end531

if.then530:                                       ; preds = %if.then514
  %559 = load double, ptr %donor_prob, align 8, !tbaa !31
  %560 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  store double %559, ptr %560, align 8, !tbaa !31
  br label %if.end531

if.end531:                                        ; preds = %if.then530, %if.then514
  br label %if.end643

if.else532:                                       ; preds = %if.then508
  %561 = load ptr, ptr %novel_diagonals_alloc.addr, align 8, !tbaa !5
  %562 = load ptr, ptr @localdb, align 8, !tbaa !5
  %563 = load ptr, ptr %localdb_alloc.addr, align 8, !tbaa !5
  %564 = load i32, ptr %streamspace_max_alloc.addr, align 4, !tbaa !14
  %565 = load ptr, ptr %streamspace_alloc.addr, align 8, !tbaa !5
  %566 = load ptr, ptr %streamptr_alloc.addr, align 8, !tbaa !5
  %567 = load ptr, ptr %streamsize_alloc.addr, align 8, !tbaa !5
  %568 = load ptr, ptr %mergeinfo.addr, align 8, !tbaa !5
  %569 = load ptr, ptr %queryptr.addr, align 8, !tbaa !5
  %570 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %571 = load i32, ptr %pos3, align 4, !tbaa !14
  %572 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %573 = load i64, ptr %low_univdiagonal, align 8, !tbaa !12
  %574 = load i64, ptr %high_univdiagonal, align 8, !tbaa !12
  %575 = load ptr, ptr %query_compress.addr, align 8, !tbaa !5
  %576 = load i8, ptr %plusp.addr, align 1, !tbaa !16
  %577 = load i32, ptr %genestrand.addr, align 4, !tbaa !14
  %578 = load ptr, ptr @genomebits, align 8, !tbaa !5
  %579 = load i32, ptr %nmismatches_allowed.addr, align 4, !tbaa !14
  %580 = load i8, ptr %salvagep.addr, align 1, !tbaa !16
  %call533 = call i32 @Localdb_get(ptr noundef %matchlength, ptr noundef %local_nmismatches, ptr noundef %561, ptr noundef %562, ptr noundef %563, i32 noundef %564, ptr noundef %565, ptr noundef %566, ptr noundef %567, ptr noundef %568, ptr noundef %569, i32 noundef %570, i32 noundef %571, i32 noundef %572, i64 noundef %573, i64 noundef %574, ptr noundef %575, i8 noundef zeroext %576, i32 noundef %577, ptr noundef %578, i32 noundef %579, i8 noundef zeroext %580)
  store i32 %call533, ptr %novel_ndiagonals, align 4, !tbaa !14
  %cmp534 = icmp eq i32 %call533, 0
  br i1 %cmp534, label %if.then536, label %if.else563

if.then536:                                       ; preds = %if.else532
  %581 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %matchlengths537 = getelementptr inbounds %struct.Spliceends_T, ptr %581, i32 0, i32 7
  %582 = load ptr, ptr %matchlengths537, align 8, !tbaa !24
  %583 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom538 = sext i32 %583 to i64
  %arrayidx539 = getelementptr inbounds i32, ptr %582, i64 %idxprom538
  store i32 0, ptr %arrayidx539, align 4, !tbaa !14
  %584 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %585 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimends540 = getelementptr inbounds %struct.Spliceends_T, ptr %585, i32 0, i32 8
  %586 = load ptr, ptr %trimends540, align 8, !tbaa !23
  %587 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom541 = sext i32 %587 to i64
  %arrayidx542 = getelementptr inbounds i32, ptr %586, i64 %idxprom541
  store i32 %584, ptr %arrayidx542, align 4, !tbaa !14
  %588 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %589 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %medial_nmismatches543 = getelementptr inbounds %struct.Spliceends_T, ptr %589, i32 0, i32 10
  %590 = load ptr, ptr %medial_nmismatches543, align 8, !tbaa !21
  %591 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom544 = sext i32 %591 to i64
  %arrayidx545 = getelementptr inbounds i32, ptr %590, i64 %idxprom544
  store i32 %588, ptr %arrayidx545, align 4, !tbaa !14
  %592 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %partners546 = getelementptr inbounds %struct.Spliceends_T, ptr %592, i32 0, i32 9
  %593 = load ptr, ptr %partners546, align 8, !tbaa !22
  %594 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom547 = sext i32 %594 to i64
  %arrayidx548 = getelementptr inbounds i64, ptr %593, i64 %idxprom547
  store i64 0, ptr %arrayidx548, align 8, !tbaa !12
  %595 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_nmismatches549 = getelementptr inbounds %struct.Spliceends_T, ptr %595, i32 0, i32 11
  %596 = load ptr, ptr %distal_nmismatches549, align 8, !tbaa !20
  %597 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom550 = sext i32 %597 to i64
  %arrayidx551 = getelementptr inbounds i32, ptr %596, i64 %idxprom550
  store i32 -1, ptr %arrayidx551, align 4, !tbaa !14
  %598 = load double, ptr %donor_prob, align 8, !tbaa !31
  %599 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %ambig_probs552 = getelementptr inbounds %struct.Spliceends_T, ptr %599, i32 0, i32 12
  %600 = load ptr, ptr %ambig_probs552, align 8, !tbaa !19
  %601 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom553 = sext i32 %601 to i64
  %arrayidx554 = getelementptr inbounds double, ptr %600, i64 %idxprom553
  store double %598, ptr %arrayidx554, align 8, !tbaa !31
  %602 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_probs555 = getelementptr inbounds %struct.Spliceends_T, ptr %602, i32 0, i32 13
  %603 = load ptr, ptr %distal_probs555, align 8, !tbaa !17
  %604 = load i32, ptr %k, align 4, !tbaa !14
  %inc556 = add nsw i32 %604, 1
  store i32 %inc556, ptr %k, align 4, !tbaa !14
  %idxprom557 = sext i32 %604 to i64
  %arrayidx558 = getelementptr inbounds double, ptr %603, i64 %idxprom557
  store double 0.000000e+00, ptr %arrayidx558, align 8, !tbaa !31
  %605 = load double, ptr %donor_prob, align 8, !tbaa !31
  %606 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  %607 = load double, ptr %606, align 8, !tbaa !31
  %cmp559 = fcmp ogt double %605, %607
  br i1 %cmp559, label %if.then561, label %if.end562

if.then561:                                       ; preds = %if.then536
  %608 = load double, ptr %donor_prob, align 8, !tbaa !31
  %609 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  store double %608, ptr %609, align 8, !tbaa !31
  br label %if.end562

if.end562:                                        ; preds = %if.then561, %if.then536
  br label %if.end642

if.else563:                                       ; preds = %if.else532
  %610 = load i32, ptr %k, align 4, !tbaa !14
  %611 = load i32, ptr %novel_ndiagonals, align 4, !tbaa !14
  %add564 = add nsw i32 %610, %611
  %cmp565 = icmp sgt i32 %add564, 30
  br i1 %cmp565, label %if.then567, label %if.else594

if.then567:                                       ; preds = %if.else563
  %612 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %matchlengths568 = getelementptr inbounds %struct.Spliceends_T, ptr %612, i32 0, i32 7
  %613 = load ptr, ptr %matchlengths568, align 8, !tbaa !24
  %614 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom569 = sext i32 %614 to i64
  %arrayidx570 = getelementptr inbounds i32, ptr %613, i64 %idxprom569
  store i32 0, ptr %arrayidx570, align 4, !tbaa !14
  %615 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %616 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimends571 = getelementptr inbounds %struct.Spliceends_T, ptr %616, i32 0, i32 8
  %617 = load ptr, ptr %trimends571, align 8, !tbaa !23
  %618 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom572 = sext i32 %618 to i64
  %arrayidx573 = getelementptr inbounds i32, ptr %617, i64 %idxprom572
  store i32 %615, ptr %arrayidx573, align 4, !tbaa !14
  %619 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %620 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %medial_nmismatches574 = getelementptr inbounds %struct.Spliceends_T, ptr %620, i32 0, i32 10
  %621 = load ptr, ptr %medial_nmismatches574, align 8, !tbaa !21
  %622 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom575 = sext i32 %622 to i64
  %arrayidx576 = getelementptr inbounds i32, ptr %621, i64 %idxprom575
  store i32 %619, ptr %arrayidx576, align 4, !tbaa !14
  %623 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %partners577 = getelementptr inbounds %struct.Spliceends_T, ptr %623, i32 0, i32 9
  %624 = load ptr, ptr %partners577, align 8, !tbaa !22
  %625 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom578 = sext i32 %625 to i64
  %arrayidx579 = getelementptr inbounds i64, ptr %624, i64 %idxprom578
  store i64 0, ptr %arrayidx579, align 8, !tbaa !12
  %626 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_nmismatches580 = getelementptr inbounds %struct.Spliceends_T, ptr %626, i32 0, i32 11
  %627 = load ptr, ptr %distal_nmismatches580, align 8, !tbaa !20
  %628 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom581 = sext i32 %628 to i64
  %arrayidx582 = getelementptr inbounds i32, ptr %627, i64 %idxprom581
  store i32 -1, ptr %arrayidx582, align 4, !tbaa !14
  %629 = load double, ptr %donor_prob, align 8, !tbaa !31
  %630 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %ambig_probs583 = getelementptr inbounds %struct.Spliceends_T, ptr %630, i32 0, i32 12
  %631 = load ptr, ptr %ambig_probs583, align 8, !tbaa !19
  %632 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom584 = sext i32 %632 to i64
  %arrayidx585 = getelementptr inbounds double, ptr %631, i64 %idxprom584
  store double %629, ptr %arrayidx585, align 8, !tbaa !31
  %633 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_probs586 = getelementptr inbounds %struct.Spliceends_T, ptr %633, i32 0, i32 13
  %634 = load ptr, ptr %distal_probs586, align 8, !tbaa !17
  %635 = load i32, ptr %k, align 4, !tbaa !14
  %inc587 = add nsw i32 %635, 1
  store i32 %inc587, ptr %k, align 4, !tbaa !14
  %idxprom588 = sext i32 %635 to i64
  %arrayidx589 = getelementptr inbounds double, ptr %634, i64 %idxprom588
  store double 0.000000e+00, ptr %arrayidx589, align 8, !tbaa !31
  %636 = load double, ptr %donor_prob, align 8, !tbaa !31
  %637 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  %638 = load double, ptr %637, align 8, !tbaa !31
  %cmp590 = fcmp ogt double %636, %638
  br i1 %cmp590, label %if.then592, label %if.end593

if.then592:                                       ; preds = %if.then567
  %639 = load double, ptr %donor_prob, align 8, !tbaa !31
  %640 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  store double %639, ptr %640, align 8, !tbaa !31
  br label %if.end593

if.end593:                                        ; preds = %if.then592, %if.then567
  br label %if.end641

if.else594:                                       ; preds = %if.else563
  store i32 0, ptr %i, align 4, !tbaa !14
  br label %for.cond595

for.cond595:                                      ; preds = %for.inc638, %if.else594
  %641 = load i32, ptr %i, align 4, !tbaa !14
  %642 = load i32, ptr %novel_ndiagonals, align 4, !tbaa !14
  %cmp596 = icmp slt i32 %641, %642
  br i1 %cmp596, label %for.body598, label %for.end640

for.body598:                                      ; preds = %for.cond595
  %643 = load ptr, ptr %novel_diagonals_alloc.addr, align 8, !tbaa !5
  %644 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom599 = sext i32 %644 to i64
  %arrayidx600 = getelementptr inbounds i64, ptr %643, i64 %idxprom599
  %645 = load i64, ptr %arrayidx600, align 8, !tbaa !12
  %646 = load i32, ptr %querylength.addr, align 4, !tbaa !14
  %conv601 = sext i32 %646 to i64
  %sub602 = sub i64 %645, %conv601
  %647 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %conv603 = sext i32 %647 to i64
  %add604 = add i64 %sub602, %conv603
  store i64 %add604, ptr %distal_genomicpos, align 8, !tbaa !12
  %648 = load i64, ptr %distal_genomicpos, align 8, !tbaa !12
  %649 = load i64, ptr %chroffset.addr, align 8, !tbaa !12
  %call605 = call double @Maxent_hr_acceptor_prob(i64 noundef %648, i64 noundef %649)
  store double %call605, ptr %acceptor_prob, align 8, !tbaa !31
  %650 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %651 = load double, ptr %distal_splicesite_prob.addr, align 8, !tbaa !31
  %cmp606 = fcmp oge double %650, %651
  br i1 %cmp606, label %if.then608, label %if.end637

if.then608:                                       ; preds = %for.body598
  %652 = load i32, ptr %matchlength, align 4, !tbaa !14
  %653 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %matchlengths609 = getelementptr inbounds %struct.Spliceends_T, ptr %653, i32 0, i32 7
  %654 = load ptr, ptr %matchlengths609, align 8, !tbaa !24
  %655 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom610 = sext i32 %655 to i64
  %arrayidx611 = getelementptr inbounds i32, ptr %654, i64 %idxprom610
  store i32 %652, ptr %arrayidx611, align 4, !tbaa !14
  %656 = load i32, ptr %splice_qpos, align 4, !tbaa !14
  %657 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimends612 = getelementptr inbounds %struct.Spliceends_T, ptr %657, i32 0, i32 8
  %658 = load ptr, ptr %trimends612, align 8, !tbaa !23
  %659 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom613 = sext i32 %659 to i64
  %arrayidx614 = getelementptr inbounds i32, ptr %658, i64 %idxprom613
  store i32 %656, ptr %arrayidx614, align 4, !tbaa !14
  %660 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %661 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %medial_nmismatches615 = getelementptr inbounds %struct.Spliceends_T, ptr %661, i32 0, i32 10
  %662 = load ptr, ptr %medial_nmismatches615, align 8, !tbaa !21
  %663 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom616 = sext i32 %663 to i64
  %arrayidx617 = getelementptr inbounds i32, ptr %662, i64 %idxprom616
  store i32 %660, ptr %arrayidx617, align 4, !tbaa !14
  %664 = load i64, ptr %distal_genomicpos, align 8, !tbaa !12
  %665 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %partners618 = getelementptr inbounds %struct.Spliceends_T, ptr %665, i32 0, i32 9
  %666 = load ptr, ptr %partners618, align 8, !tbaa !22
  %667 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom619 = sext i32 %667 to i64
  %arrayidx620 = getelementptr inbounds i64, ptr %666, i64 %idxprom619
  store i64 %664, ptr %arrayidx620, align 8, !tbaa !12
  %668 = load i32, ptr %local_nmismatches, align 4, !tbaa !14
  %669 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_nmismatches621 = getelementptr inbounds %struct.Spliceends_T, ptr %669, i32 0, i32 11
  %670 = load ptr, ptr %distal_nmismatches621, align 8, !tbaa !20
  %671 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom622 = sext i32 %671 to i64
  %arrayidx623 = getelementptr inbounds i32, ptr %670, i64 %idxprom622
  store i32 %668, ptr %arrayidx623, align 4, !tbaa !14
  %672 = load double, ptr %donor_prob, align 8, !tbaa !31
  %673 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %ambig_probs624 = getelementptr inbounds %struct.Spliceends_T, ptr %673, i32 0, i32 12
  %674 = load ptr, ptr %ambig_probs624, align 8, !tbaa !19
  %675 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom625 = sext i32 %675 to i64
  %arrayidx626 = getelementptr inbounds double, ptr %674, i64 %idxprom625
  store double %672, ptr %arrayidx626, align 8, !tbaa !31
  %676 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %677 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_probs627 = getelementptr inbounds %struct.Spliceends_T, ptr %677, i32 0, i32 13
  %678 = load ptr, ptr %distal_probs627, align 8, !tbaa !17
  %679 = load i32, ptr %k, align 4, !tbaa !14
  %inc628 = add nsw i32 %679, 1
  store i32 %inc628, ptr %k, align 4, !tbaa !14
  %idxprom629 = sext i32 %679 to i64
  %arrayidx630 = getelementptr inbounds double, ptr %678, i64 %idxprom629
  store double %676, ptr %arrayidx630, align 8, !tbaa !31
  %680 = load double, ptr %donor_prob, align 8, !tbaa !31
  %681 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %add631 = fadd double %680, %681
  %682 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  %683 = load double, ptr %682, align 8, !tbaa !31
  %cmp632 = fcmp ogt double %add631, %683
  br i1 %cmp632, label %if.then634, label %if.end636

if.then634:                                       ; preds = %if.then608
  %684 = load double, ptr %donor_prob, align 8, !tbaa !31
  %685 = load double, ptr %acceptor_prob, align 8, !tbaa !31
  %add635 = fadd double %684, %685
  %686 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  store double %add635, ptr %686, align 8, !tbaa !31
  br label %if.end636

if.end636:                                        ; preds = %if.then634, %if.then608
  %687 = load ptr, ptr %partnerp.addr, align 8, !tbaa !5
  store i8 1, ptr %687, align 1, !tbaa !16
  br label %if.end637

if.end637:                                        ; preds = %if.end636, %for.body598
  br label %for.inc638

for.inc638:                                       ; preds = %if.end637
  %688 = load i32, ptr %i, align 4, !tbaa !14
  %inc639 = add nsw i32 %688, 1
  store i32 %inc639, ptr %i, align 4, !tbaa !14
  br label %for.cond595, !llvm.loop !100

for.end640:                                       ; preds = %for.cond595
  br label %if.end641

if.end641:                                        ; preds = %for.end640, %if.end593
  br label %if.end642

if.end642:                                        ; preds = %if.end641, %if.end562
  br label %if.end643

if.end643:                                        ; preds = %if.end642, %if.end531
  br label %if.end644

if.end644:                                        ; preds = %if.end643, %while.body504
  %689 = load i32, ptr %querypos, align 4, !tbaa !14
  %dec645 = add nsw i32 %689, -1
  store i32 %dec645, ptr %querypos, align 4, !tbaa !14
  %690 = load i64, ptr %genomicpos, align 8, !tbaa !12
  %dec646 = add i64 %690, -1
  store i64 %dec646, ptr %genomicpos, align 8, !tbaa !12
  %691 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %sub647 = sub nsw i32 %691, 1
  %cmp648 = icmp sge i32 %sub647, 0
  br i1 %cmp648, label %land.lhs.true650, label %if.else658

land.lhs.true650:                                 ; preds = %if.end644
  %692 = load ptr, ptr %mismatch_positions.addr, align 8, !tbaa !5
  %693 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %sub651 = sub nsw i32 %693, 1
  %idxprom652 = sext i32 %sub651 to i64
  %arrayidx653 = getelementptr inbounds i32, ptr %692, i64 %idxprom652
  %694 = load i32, ptr %arrayidx653, align 4, !tbaa !14
  %695 = load i32, ptr %querypos, align 4, !tbaa !14
  %cmp654 = icmp eq i32 %694, %695
  br i1 %cmp654, label %if.then656, label %if.else658

if.then656:                                       ; preds = %land.lhs.true650
  store i32 0, ptr %nconsecutive, align 4, !tbaa !14
  %696 = load i32, ptr %mismatchi, align 4, !tbaa !14
  %dec657 = add nsw i32 %696, -1
  store i32 %dec657, ptr %mismatchi, align 4, !tbaa !14
  br label %if.end660

if.else658:                                       ; preds = %land.lhs.true650, %if.end644
  %697 = load i32, ptr %nconsecutive, align 4, !tbaa !14
  %inc659 = add nsw i32 %697, 1
  store i32 %inc659, ptr %nconsecutive, align 4, !tbaa !14
  br label %if.end660

if.end660:                                        ; preds = %if.else658, %if.then656
  br label %while.cond494, !llvm.loop !101

while.end661:                                     ; preds = %land.end503
  br label %if.end662

if.end662:                                        ; preds = %while.end661, %while.end329
  %698 = load i32, ptr %k, align 4, !tbaa !14
  %cmp663 = icmp eq i32 %698, 0
  br i1 %cmp663, label %if.then665, label %if.else666

if.then665:                                       ; preds = %if.end662
  store i32 0, ptr %nspliceends, align 4, !tbaa !14
  br label %if.end797

if.else666:                                       ; preds = %if.end662
  %699 = load i8, ptr %innerp.addr, align 1, !tbaa !16
  %conv667 = zext i8 %699 to i32
  %cmp668 = icmp eq i32 %conv667, 0
  br i1 %cmp668, label %if.then670, label %if.else732

if.then670:                                       ; preds = %if.else666
  store i32 0, ptr %i, align 4, !tbaa !14
  br label %for.cond671

for.cond671:                                      ; preds = %for.inc729, %if.then670
  %700 = load i32, ptr %i, align 4, !tbaa !14
  %701 = load i32, ptr %k, align 4, !tbaa !14
  %cmp672 = icmp slt i32 %700, %701
  br i1 %cmp672, label %for.body674, label %for.end731

for.body674:                                      ; preds = %for.cond671
  %702 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %ambig_probs675 = getelementptr inbounds %struct.Spliceends_T, ptr %702, i32 0, i32 12
  %703 = load ptr, ptr %ambig_probs675, align 8, !tbaa !19
  %704 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom676 = sext i32 %704 to i64
  %arrayidx677 = getelementptr inbounds double, ptr %703, i64 %idxprom676
  %705 = load double, ptr %arrayidx677, align 8, !tbaa !31
  %706 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_probs678 = getelementptr inbounds %struct.Spliceends_T, ptr %706, i32 0, i32 13
  %707 = load ptr, ptr %distal_probs678, align 8, !tbaa !17
  %708 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom679 = sext i32 %708 to i64
  %arrayidx680 = getelementptr inbounds double, ptr %707, i64 %idxprom679
  %709 = load double, ptr %arrayidx680, align 8, !tbaa !31
  %add681 = fadd double %705, %709
  %710 = load ptr, ptr %max_prob.addr, align 8, !tbaa !5
  %711 = load double, ptr %710, align 8, !tbaa !31
  %cmp682 = fcmp oeq double %add681, %711
  br i1 %cmp682, label %if.then684, label %if.end728

if.then684:                                       ; preds = %for.body674
  %712 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %matchlengths685 = getelementptr inbounds %struct.Spliceends_T, ptr %712, i32 0, i32 7
  %713 = load ptr, ptr %matchlengths685, align 8, !tbaa !24
  %714 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom686 = sext i32 %714 to i64
  %arrayidx687 = getelementptr inbounds i32, ptr %713, i64 %idxprom686
  %715 = load i32, ptr %arrayidx687, align 4, !tbaa !14
  %716 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %matchlengths688 = getelementptr inbounds %struct.Spliceends_T, ptr %716, i32 0, i32 7
  %717 = load ptr, ptr %matchlengths688, align 8, !tbaa !24
  %718 = load i32, ptr %nspliceends, align 4, !tbaa !14
  %idxprom689 = sext i32 %718 to i64
  %arrayidx690 = getelementptr inbounds i32, ptr %717, i64 %idxprom689
  store i32 %715, ptr %arrayidx690, align 4, !tbaa !14
  %719 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimends691 = getelementptr inbounds %struct.Spliceends_T, ptr %719, i32 0, i32 8
  %720 = load ptr, ptr %trimends691, align 8, !tbaa !23
  %721 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom692 = sext i32 %721 to i64
  %arrayidx693 = getelementptr inbounds i32, ptr %720, i64 %idxprom692
  %722 = load i32, ptr %arrayidx693, align 4, !tbaa !14
  %723 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimends694 = getelementptr inbounds %struct.Spliceends_T, ptr %723, i32 0, i32 8
  %724 = load ptr, ptr %trimends694, align 8, !tbaa !23
  %725 = load i32, ptr %nspliceends, align 4, !tbaa !14
  %idxprom695 = sext i32 %725 to i64
  %arrayidx696 = getelementptr inbounds i32, ptr %724, i64 %idxprom695
  store i32 %722, ptr %arrayidx696, align 4, !tbaa !14
  %726 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %medial_nmismatches697 = getelementptr inbounds %struct.Spliceends_T, ptr %726, i32 0, i32 10
  %727 = load ptr, ptr %medial_nmismatches697, align 8, !tbaa !21
  %728 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom698 = sext i32 %728 to i64
  %arrayidx699 = getelementptr inbounds i32, ptr %727, i64 %idxprom698
  %729 = load i32, ptr %arrayidx699, align 4, !tbaa !14
  %730 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %medial_nmismatches700 = getelementptr inbounds %struct.Spliceends_T, ptr %730, i32 0, i32 10
  %731 = load ptr, ptr %medial_nmismatches700, align 8, !tbaa !21
  %732 = load i32, ptr %nspliceends, align 4, !tbaa !14
  %idxprom701 = sext i32 %732 to i64
  %arrayidx702 = getelementptr inbounds i32, ptr %731, i64 %idxprom701
  store i32 %729, ptr %arrayidx702, align 4, !tbaa !14
  %733 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %partners703 = getelementptr inbounds %struct.Spliceends_T, ptr %733, i32 0, i32 9
  %734 = load ptr, ptr %partners703, align 8, !tbaa !22
  %735 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom704 = sext i32 %735 to i64
  %arrayidx705 = getelementptr inbounds i64, ptr %734, i64 %idxprom704
  %736 = load i64, ptr %arrayidx705, align 8, !tbaa !12
  %737 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %partners706 = getelementptr inbounds %struct.Spliceends_T, ptr %737, i32 0, i32 9
  %738 = load ptr, ptr %partners706, align 8, !tbaa !22
  %739 = load i32, ptr %nspliceends, align 4, !tbaa !14
  %idxprom707 = sext i32 %739 to i64
  %arrayidx708 = getelementptr inbounds i64, ptr %738, i64 %idxprom707
  store i64 %736, ptr %arrayidx708, align 8, !tbaa !12
  %740 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_nmismatches709 = getelementptr inbounds %struct.Spliceends_T, ptr %740, i32 0, i32 11
  %741 = load ptr, ptr %distal_nmismatches709, align 8, !tbaa !20
  %742 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom710 = sext i32 %742 to i64
  %arrayidx711 = getelementptr inbounds i32, ptr %741, i64 %idxprom710
  %743 = load i32, ptr %arrayidx711, align 4, !tbaa !14
  %744 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_nmismatches712 = getelementptr inbounds %struct.Spliceends_T, ptr %744, i32 0, i32 11
  %745 = load ptr, ptr %distal_nmismatches712, align 8, !tbaa !20
  %746 = load i32, ptr %nspliceends, align 4, !tbaa !14
  %idxprom713 = sext i32 %746 to i64
  %arrayidx714 = getelementptr inbounds i32, ptr %745, i64 %idxprom713
  store i32 %743, ptr %arrayidx714, align 4, !tbaa !14
  %747 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %ambig_probs715 = getelementptr inbounds %struct.Spliceends_T, ptr %747, i32 0, i32 12
  %748 = load ptr, ptr %ambig_probs715, align 8, !tbaa !19
  %749 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom716 = sext i32 %749 to i64
  %arrayidx717 = getelementptr inbounds double, ptr %748, i64 %idxprom716
  %750 = load double, ptr %arrayidx717, align 8, !tbaa !31
  %751 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %ambig_probs718 = getelementptr inbounds %struct.Spliceends_T, ptr %751, i32 0, i32 12
  %752 = load ptr, ptr %ambig_probs718, align 8, !tbaa !19
  %753 = load i32, ptr %nspliceends, align 4, !tbaa !14
  %idxprom719 = sext i32 %753 to i64
  %arrayidx720 = getelementptr inbounds double, ptr %752, i64 %idxprom719
  store double %750, ptr %arrayidx720, align 8, !tbaa !31
  %754 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_probs721 = getelementptr inbounds %struct.Spliceends_T, ptr %754, i32 0, i32 13
  %755 = load ptr, ptr %distal_probs721, align 8, !tbaa !17
  %756 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom722 = sext i32 %756 to i64
  %arrayidx723 = getelementptr inbounds double, ptr %755, i64 %idxprom722
  %757 = load double, ptr %arrayidx723, align 8, !tbaa !31
  %758 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_probs724 = getelementptr inbounds %struct.Spliceends_T, ptr %758, i32 0, i32 13
  %759 = load ptr, ptr %distal_probs724, align 8, !tbaa !17
  %760 = load i32, ptr %nspliceends, align 4, !tbaa !14
  %inc725 = add nsw i32 %760, 1
  store i32 %inc725, ptr %nspliceends, align 4, !tbaa !14
  %idxprom726 = sext i32 %760 to i64
  %arrayidx727 = getelementptr inbounds double, ptr %759, i64 %idxprom726
  store double %757, ptr %arrayidx727, align 8, !tbaa !31
  br label %if.end728

if.end728:                                        ; preds = %if.then684, %for.body674
  br label %for.inc729

for.inc729:                                       ; preds = %if.end728
  %761 = load i32, ptr %i, align 4, !tbaa !14
  %inc730 = add nsw i32 %761, 1
  store i32 %inc730, ptr %i, align 4, !tbaa !14
  br label %for.cond671, !llvm.loop !102

for.end731:                                       ; preds = %for.cond671
  br label %if.end796

if.else732:                                       ; preds = %if.else666
  %762 = load ptr, ptr %partnerp.addr, align 8, !tbaa !5
  %763 = load i8, ptr %762, align 1, !tbaa !16
  %conv733 = zext i8 %763 to i32
  %cmp734 = icmp eq i32 %conv733, 1
  br i1 %cmp734, label %if.then736, label %if.else794

if.then736:                                       ; preds = %if.else732
  store i32 0, ptr %i, align 4, !tbaa !14
  br label %for.cond737

for.cond737:                                      ; preds = %for.inc791, %if.then736
  %764 = load i32, ptr %i, align 4, !tbaa !14
  %765 = load i32, ptr %k, align 4, !tbaa !14
  %cmp738 = icmp slt i32 %764, %765
  br i1 %cmp738, label %for.body740, label %for.end793

for.body740:                                      ; preds = %for.cond737
  %766 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %partners741 = getelementptr inbounds %struct.Spliceends_T, ptr %766, i32 0, i32 9
  %767 = load ptr, ptr %partners741, align 8, !tbaa !22
  %768 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom742 = sext i32 %768 to i64
  %arrayidx743 = getelementptr inbounds i64, ptr %767, i64 %idxprom742
  %769 = load i64, ptr %arrayidx743, align 8, !tbaa !12
  %cmp744 = icmp ne i64 %769, 0
  br i1 %cmp744, label %if.then746, label %if.end790

if.then746:                                       ; preds = %for.body740
  %770 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %matchlengths747 = getelementptr inbounds %struct.Spliceends_T, ptr %770, i32 0, i32 7
  %771 = load ptr, ptr %matchlengths747, align 8, !tbaa !24
  %772 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom748 = sext i32 %772 to i64
  %arrayidx749 = getelementptr inbounds i32, ptr %771, i64 %idxprom748
  %773 = load i32, ptr %arrayidx749, align 4, !tbaa !14
  %774 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %matchlengths750 = getelementptr inbounds %struct.Spliceends_T, ptr %774, i32 0, i32 7
  %775 = load ptr, ptr %matchlengths750, align 8, !tbaa !24
  %776 = load i32, ptr %nspliceends, align 4, !tbaa !14
  %idxprom751 = sext i32 %776 to i64
  %arrayidx752 = getelementptr inbounds i32, ptr %775, i64 %idxprom751
  store i32 %773, ptr %arrayidx752, align 4, !tbaa !14
  %777 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimends753 = getelementptr inbounds %struct.Spliceends_T, ptr %777, i32 0, i32 8
  %778 = load ptr, ptr %trimends753, align 8, !tbaa !23
  %779 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom754 = sext i32 %779 to i64
  %arrayidx755 = getelementptr inbounds i32, ptr %778, i64 %idxprom754
  %780 = load i32, ptr %arrayidx755, align 4, !tbaa !14
  %781 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimends756 = getelementptr inbounds %struct.Spliceends_T, ptr %781, i32 0, i32 8
  %782 = load ptr, ptr %trimends756, align 8, !tbaa !23
  %783 = load i32, ptr %nspliceends, align 4, !tbaa !14
  %idxprom757 = sext i32 %783 to i64
  %arrayidx758 = getelementptr inbounds i32, ptr %782, i64 %idxprom757
  store i32 %780, ptr %arrayidx758, align 4, !tbaa !14
  %784 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %medial_nmismatches759 = getelementptr inbounds %struct.Spliceends_T, ptr %784, i32 0, i32 10
  %785 = load ptr, ptr %medial_nmismatches759, align 8, !tbaa !21
  %786 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom760 = sext i32 %786 to i64
  %arrayidx761 = getelementptr inbounds i32, ptr %785, i64 %idxprom760
  %787 = load i32, ptr %arrayidx761, align 4, !tbaa !14
  %788 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %medial_nmismatches762 = getelementptr inbounds %struct.Spliceends_T, ptr %788, i32 0, i32 10
  %789 = load ptr, ptr %medial_nmismatches762, align 8, !tbaa !21
  %790 = load i32, ptr %nspliceends, align 4, !tbaa !14
  %idxprom763 = sext i32 %790 to i64
  %arrayidx764 = getelementptr inbounds i32, ptr %789, i64 %idxprom763
  store i32 %787, ptr %arrayidx764, align 4, !tbaa !14
  %791 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %partners765 = getelementptr inbounds %struct.Spliceends_T, ptr %791, i32 0, i32 9
  %792 = load ptr, ptr %partners765, align 8, !tbaa !22
  %793 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom766 = sext i32 %793 to i64
  %arrayidx767 = getelementptr inbounds i64, ptr %792, i64 %idxprom766
  %794 = load i64, ptr %arrayidx767, align 8, !tbaa !12
  %795 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %partners768 = getelementptr inbounds %struct.Spliceends_T, ptr %795, i32 0, i32 9
  %796 = load ptr, ptr %partners768, align 8, !tbaa !22
  %797 = load i32, ptr %nspliceends, align 4, !tbaa !14
  %idxprom769 = sext i32 %797 to i64
  %arrayidx770 = getelementptr inbounds i64, ptr %796, i64 %idxprom769
  store i64 %794, ptr %arrayidx770, align 8, !tbaa !12
  %798 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_nmismatches771 = getelementptr inbounds %struct.Spliceends_T, ptr %798, i32 0, i32 11
  %799 = load ptr, ptr %distal_nmismatches771, align 8, !tbaa !20
  %800 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom772 = sext i32 %800 to i64
  %arrayidx773 = getelementptr inbounds i32, ptr %799, i64 %idxprom772
  %801 = load i32, ptr %arrayidx773, align 4, !tbaa !14
  %802 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_nmismatches774 = getelementptr inbounds %struct.Spliceends_T, ptr %802, i32 0, i32 11
  %803 = load ptr, ptr %distal_nmismatches774, align 8, !tbaa !20
  %804 = load i32, ptr %nspliceends, align 4, !tbaa !14
  %idxprom775 = sext i32 %804 to i64
  %arrayidx776 = getelementptr inbounds i32, ptr %803, i64 %idxprom775
  store i32 %801, ptr %arrayidx776, align 4, !tbaa !14
  %805 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %ambig_probs777 = getelementptr inbounds %struct.Spliceends_T, ptr %805, i32 0, i32 12
  %806 = load ptr, ptr %ambig_probs777, align 8, !tbaa !19
  %807 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom778 = sext i32 %807 to i64
  %arrayidx779 = getelementptr inbounds double, ptr %806, i64 %idxprom778
  %808 = load double, ptr %arrayidx779, align 8, !tbaa !31
  %809 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %ambig_probs780 = getelementptr inbounds %struct.Spliceends_T, ptr %809, i32 0, i32 12
  %810 = load ptr, ptr %ambig_probs780, align 8, !tbaa !19
  %811 = load i32, ptr %nspliceends, align 4, !tbaa !14
  %idxprom781 = sext i32 %811 to i64
  %arrayidx782 = getelementptr inbounds double, ptr %810, i64 %idxprom781
  store double %808, ptr %arrayidx782, align 8, !tbaa !31
  %812 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_probs783 = getelementptr inbounds %struct.Spliceends_T, ptr %812, i32 0, i32 13
  %813 = load ptr, ptr %distal_probs783, align 8, !tbaa !17
  %814 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom784 = sext i32 %814 to i64
  %arrayidx785 = getelementptr inbounds double, ptr %813, i64 %idxprom784
  %815 = load double, ptr %arrayidx785, align 8, !tbaa !31
  %816 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %distal_probs786 = getelementptr inbounds %struct.Spliceends_T, ptr %816, i32 0, i32 13
  %817 = load ptr, ptr %distal_probs786, align 8, !tbaa !17
  %818 = load i32, ptr %nspliceends, align 4, !tbaa !14
  %inc787 = add nsw i32 %818, 1
  store i32 %inc787, ptr %nspliceends, align 4, !tbaa !14
  %idxprom788 = sext i32 %818 to i64
  %arrayidx789 = getelementptr inbounds double, ptr %817, i64 %idxprom788
  store double %815, ptr %arrayidx789, align 8, !tbaa !31
  br label %if.end790

if.end790:                                        ; preds = %if.then746, %for.body740
  br label %for.inc791

for.inc791:                                       ; preds = %if.end790
  %819 = load i32, ptr %i, align 4, !tbaa !14
  %inc792 = add nsw i32 %819, 1
  store i32 %inc792, ptr %i, align 4, !tbaa !14
  br label %for.cond737, !llvm.loop !103

for.end793:                                       ; preds = %for.cond737
  br label %if.end795

if.else794:                                       ; preds = %if.else732
  store i32 1, ptr %nspliceends, align 4, !tbaa !14
  br label %if.end795

if.end795:                                        ; preds = %if.else794, %for.end793
  br label %if.end796

if.end796:                                        ; preds = %if.end795, %for.end731
  br label %if.end797

if.end797:                                        ; preds = %if.end796, %if.then665
  %820 = load i32, ptr %nspliceends, align 4, !tbaa !14
  call void @llvm.lifetime.end.p0(i64 8, ptr %left) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %novel_ndiagonals) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %nconsecutive) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %mismatchi) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %splice_qpos) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %pos3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %querypos) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %acceptor_prob) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %donor_prob) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %matchlength) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %local_nmismatches) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %high_univdiagonal) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %low_univdiagonal) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %distal_genomicpos) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %genomicpos) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %nspliceends) #4
  ret i32 %820
}

declare ptr @Knownsplicing_donors(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef) #2

declare ptr @Knownsplicing_antiacceptors(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @max_spliceend(ptr noundef %trimends, i32 noundef %nspliceends) #0 {
entry:
  %trimends.addr = alloca ptr, align 8
  %nspliceends.addr = alloca i32, align 4
  %max = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %trimends, ptr %trimends.addr, align 8, !tbaa !5
  store i32 %nspliceends, ptr %nspliceends.addr, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %max) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  %0 = load ptr, ptr %trimends.addr, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 0
  %1 = load i32, ptr %arrayidx, align 4, !tbaa !14
  store i32 %1, ptr %max, align 4, !tbaa !14
  store i32 1, ptr %i, align 4, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4, !tbaa !14
  %3 = load i32, ptr %nspliceends.addr, align 4, !tbaa !14
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %trimends.addr, align 8, !tbaa !5
  %5 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom = sext i32 %5 to i64
  %arrayidx1 = getelementptr inbounds i32, ptr %4, i64 %idxprom
  %6 = load i32, ptr %arrayidx1, align 4, !tbaa !14
  %7 = load i32, ptr %max, align 4, !tbaa !14
  %cmp2 = icmp sgt i32 %6, %7
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load ptr, ptr %trimends.addr, align 8, !tbaa !5
  %9 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom3 = sext i32 %9 to i64
  %arrayidx4 = getelementptr inbounds i32, ptr %8, i64 %idxprom3
  %10 = load i32, ptr %arrayidx4, align 4, !tbaa !14
  store i32 %10, ptr %max, align 4, !tbaa !14
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, ptr %i, align 4, !tbaa !14
  %inc = add nsw i32 %11, 1
  store i32 %inc, ptr %i, align 4, !tbaa !14
  br label %for.cond, !llvm.loop !104

for.end:                                          ; preds = %for.cond
  %12 = load i32, ptr %max, align 4, !tbaa !14
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %max) #4
  ret i32 %12
}

declare i32 @Genomebits_mismatches_fromright(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef) #2

attributes #0 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
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
!13 = !{!"long", !7, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"int", !7, i64 0}
!16 = !{!7, !7, i64 0}
!17 = !{!18, !6, i64 88}
!18 = !{!"Spliceends_T", !15, i64 0, !7, i64 4, !15, i64 8, !7, i64 12, !15, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88}
!19 = !{!18, !6, i64 80}
!20 = !{!18, !6, i64 72}
!21 = !{!18, !6, i64 64}
!22 = !{!18, !6, i64 56}
!23 = !{!18, !6, i64 48}
!24 = !{!18, !6, i64 40}
!25 = !{!18, !6, i64 24}
!26 = !{!18, !6, i64 32}
!27 = !{!18, !15, i64 0}
!28 = !{!18, !7, i64 4}
!29 = distinct !{!29, !30}
!30 = !{!"llvm.loop.mustprogress"}
!31 = !{!32, !32, i64 0}
!32 = !{!"double", !7, i64 0}
!33 = !{!18, !7, i64 12}
!34 = !{!18, !15, i64 8}
!35 = distinct !{!35, !30}
!36 = !{!18, !15, i64 16}
!37 = distinct !{!37, !30}
!38 = distinct !{!38, !30}
!39 = distinct !{!39, !30}
!40 = distinct !{!40, !30}
!41 = distinct !{!41, !30}
!42 = distinct !{!42, !30}
!43 = distinct !{!43, !30}
!44 = distinct !{!44, !30}
!45 = distinct !{!45, !30}
!46 = distinct !{!46, !30}
!47 = distinct !{!47, !30}
!48 = distinct !{!48, !30}
!49 = distinct !{!49, !30}
!50 = distinct !{!50, !30}
!51 = distinct !{!51, !30}
!52 = distinct !{!52, !30}
!53 = distinct !{!53, !30}
!54 = distinct !{!54, !30}
!55 = distinct !{!55, !30}
!56 = distinct !{!56, !30}
!57 = distinct !{!57, !30}
!58 = distinct !{!58, !30}
!59 = distinct !{!59, !30}
!60 = distinct !{!60, !30}
!61 = distinct !{!61, !30}
!62 = distinct !{!62, !30}
!63 = distinct !{!63, !30}
!64 = distinct !{!64, !30}
!65 = distinct !{!65, !30}
!66 = distinct !{!66, !30}
!67 = distinct !{!67, !30}
!68 = distinct !{!68, !30}
!69 = distinct !{!69, !30}
!70 = distinct !{!70, !30}
!71 = distinct !{!71, !30}
!72 = distinct !{!72, !30}
!73 = distinct !{!73, !30}
!74 = distinct !{!74, !30}
!75 = distinct !{!75, !30}
!76 = distinct !{!76, !30}
!77 = distinct !{!77, !30}
!78 = distinct !{!78, !30}
!79 = distinct !{!79, !30}
!80 = distinct !{!80, !30}
!81 = distinct !{!81, !30}
!82 = distinct !{!82, !30}
!83 = distinct !{!83, !30}
!84 = distinct !{!84, !30}
!85 = distinct !{!85, !30}
!86 = distinct !{!86, !30}
!87 = distinct !{!87, !30}
!88 = distinct !{!88, !30}
!89 = distinct !{!89, !30}
!90 = distinct !{!90, !30}
!91 = distinct !{!91, !30}
!92 = distinct !{!92, !30}
!93 = distinct !{!93, !30}
!94 = distinct !{!94, !30}
!95 = distinct !{!95, !30}
!96 = distinct !{!96, !30}
!97 = distinct !{!97, !30}
!98 = distinct !{!98, !30}
!99 = distinct !{!99, !30}
!100 = distinct !{!100, !30}
!101 = distinct !{!101, !30}
!102 = distinct !{!102, !30}
!103 = distinct !{!103, !30}
!104 = distinct !{!104, !30}

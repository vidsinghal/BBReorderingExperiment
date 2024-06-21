; ModuleID = 'samples/380.bc'
source_filename = ".././../src/dynprog_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.List_T = type { ptr, ptr }
%struct.Dynprog_T = type { i32, i32, %union.anon, i32 }
%union.anon = type { %struct.Space_double_T }
%struct.Space_double_T = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Pair_T = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i32, i32, i32, i8, i8, double, double, i8 }

@splicesites = internal global ptr null, align 8
@splicetypes = internal global ptr null, align 8
@splicedists = internal global ptr null, align 8
@nsplicesites = internal global i32 0, align 4
@trieoffsets_obs = internal global ptr null, align 8
@triecontents_obs = internal global ptr null, align 8
@trieoffsets_max = internal global ptr null, align 8
@triecontents_max = internal global ptr null, align 8
@user_open = internal global i32 0, align 4
@user_extend = internal global i32 0, align 4
@user_dynprog_p = internal global i8 0, align 1
@.str = private unnamed_addr constant [26 x i8] c".././../src/dynprog_end.c\00", align 1
@use8p_size = external global [4 x i32], align 16
@stderr = external global ptr, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"Unexpected endalign value %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Unexpected far_splicetype value %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c".././../src/list.h\00", align 1
@complCode = internal global [128 x i8] c"???????????????????????????????? ??#$%&')(*+,-./0123456789:;>=<??TVGHEFCDIJMLKNOPQYSAABWXRZ]?[^_`tvghefcdijmlknopqysaabwxrz}|{~?", align 16
@.str.4 = private unnamed_addr constant [39 x i8] c"Unexpected anchor_splicetype value %d\0A\00", align 1

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @List_push_keep(ptr noundef %list, ptr noundef %x) #0 {
entry:
  %list.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %new = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8, !tbaa !5
  store ptr %x, ptr %x.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %new) #5
  %call = call ptr @Mem_alloc(i64 noundef 16, ptr noundef @.str.3, i32 noundef 66)
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
  %call = call ptr @Mem_alloc(i64 noundef 16, ptr noundef @.str.3, i32 noundef 75)
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
  call void @Mem_free(ptr noundef %6, ptr noundef @.str.3, i32 noundef 137)
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
define dso_local void @Dynprog_end_setup(ptr noundef %splicesites_in, ptr noundef %splicetypes_in, ptr noundef %splicedists_in, i32 noundef %nsplicesites_in, ptr noundef %trieoffsets_obs_in, ptr noundef %triecontents_obs_in, ptr noundef %trieoffsets_max_in, ptr noundef %triecontents_max_in, i32 noundef %user_open_in, i32 noundef %user_extend_in, i8 noundef zeroext %user_dynprog_p_in) #1 {
entry:
  %splicesites_in.addr = alloca ptr, align 8
  %splicetypes_in.addr = alloca ptr, align 8
  %splicedists_in.addr = alloca ptr, align 8
  %nsplicesites_in.addr = alloca i32, align 4
  %trieoffsets_obs_in.addr = alloca ptr, align 8
  %triecontents_obs_in.addr = alloca ptr, align 8
  %trieoffsets_max_in.addr = alloca ptr, align 8
  %triecontents_max_in.addr = alloca ptr, align 8
  %user_open_in.addr = alloca i32, align 4
  %user_extend_in.addr = alloca i32, align 4
  %user_dynprog_p_in.addr = alloca i8, align 1
  store ptr %splicesites_in, ptr %splicesites_in.addr, align 8, !tbaa !5
  store ptr %splicetypes_in, ptr %splicetypes_in.addr, align 8, !tbaa !5
  store ptr %splicedists_in, ptr %splicedists_in.addr, align 8, !tbaa !5
  store i32 %nsplicesites_in, ptr %nsplicesites_in.addr, align 4, !tbaa !12
  store ptr %trieoffsets_obs_in, ptr %trieoffsets_obs_in.addr, align 8, !tbaa !5
  store ptr %triecontents_obs_in, ptr %triecontents_obs_in.addr, align 8, !tbaa !5
  store ptr %trieoffsets_max_in, ptr %trieoffsets_max_in.addr, align 8, !tbaa !5
  store ptr %triecontents_max_in, ptr %triecontents_max_in.addr, align 8, !tbaa !5
  store i32 %user_open_in, ptr %user_open_in.addr, align 4, !tbaa !12
  store i32 %user_extend_in, ptr %user_extend_in.addr, align 4, !tbaa !12
  store i8 %user_dynprog_p_in, ptr %user_dynprog_p_in.addr, align 1, !tbaa !14
  %0 = load ptr, ptr %splicesites_in.addr, align 8, !tbaa !5
  store ptr %0, ptr @splicesites, align 8, !tbaa !5
  %1 = load ptr, ptr %splicetypes_in.addr, align 8, !tbaa !5
  store ptr %1, ptr @splicetypes, align 8, !tbaa !5
  %2 = load ptr, ptr %splicedists_in.addr, align 8, !tbaa !5
  store ptr %2, ptr @splicedists, align 8, !tbaa !5
  %3 = load i32, ptr %nsplicesites_in.addr, align 4, !tbaa !12
  store i32 %3, ptr @nsplicesites, align 4, !tbaa !12
  %4 = load ptr, ptr %trieoffsets_obs_in.addr, align 8, !tbaa !5
  store ptr %4, ptr @trieoffsets_obs, align 8, !tbaa !5
  %5 = load ptr, ptr %triecontents_obs_in.addr, align 8, !tbaa !5
  store ptr %5, ptr @triecontents_obs, align 8, !tbaa !5
  %6 = load ptr, ptr %trieoffsets_max_in.addr, align 8, !tbaa !5
  store ptr %6, ptr @trieoffsets_max, align 8, !tbaa !5
  %7 = load ptr, ptr %triecontents_max_in.addr, align 8, !tbaa !5
  store ptr %7, ptr @triecontents_max, align 8, !tbaa !5
  %8 = load i32, ptr %user_open_in.addr, align 4, !tbaa !12
  store i32 %8, ptr @user_open, align 4, !tbaa !12
  %9 = load i32, ptr %user_extend_in.addr, align 4, !tbaa !12
  store i32 %9, ptr @user_extend, align 4, !tbaa !12
  %10 = load i8, ptr %user_dynprog_p_in.addr, align 1, !tbaa !14
  store i8 %10, ptr @user_dynprog_p, align 1, !tbaa !14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Dynprog_end5_gap(ptr noundef %dynprogindex, ptr noundef %traceback_score, ptr noundef %nmatches, ptr noundef %nmismatches, ptr noundef %nopens, ptr noundef %nindels, ptr noundef %dynprog, ptr noundef %rev_rsequence, ptr noundef %rev_rsequenceuc, i32 noundef %rlength, i32 noundef %glength, i32 noundef %rev_roffset, i32 noundef %rev_goffset, i32 noundef %chroffset, i32 noundef %chrhigh, i8 noundef zeroext %watsonp, i32 noundef %genestrand, i8 noundef zeroext %jump_late_p, ptr noundef %genome, ptr noundef %genomealt, ptr noundef %pairpool, i32 noundef %extraband_end, double noundef %defect_rate, i32 noundef %endalign, i8 noundef zeroext %require_pos_score_p) #1 {
entry:
  %retval = alloca ptr, align 8
  %dynprogindex.addr = alloca ptr, align 8
  %traceback_score.addr = alloca ptr, align 8
  %nmatches.addr = alloca ptr, align 8
  %nmismatches.addr = alloca ptr, align 8
  %nopens.addr = alloca ptr, align 8
  %nindels.addr = alloca ptr, align 8
  %dynprog.addr = alloca ptr, align 8
  %rev_rsequence.addr = alloca ptr, align 8
  %rev_rsequenceuc.addr = alloca ptr, align 8
  %rlength.addr = alloca i32, align 4
  %glength.addr = alloca i32, align 4
  %rev_roffset.addr = alloca i32, align 4
  %rev_goffset.addr = alloca i32, align 4
  %chroffset.addr = alloca i32, align 4
  %chrhigh.addr = alloca i32, align 4
  %watsonp.addr = alloca i8, align 1
  %genestrand.addr = alloca i32, align 4
  %jump_late_p.addr = alloca i8, align 1
  %genome.addr = alloca ptr, align 8
  %genomealt.addr = alloca ptr, align 8
  %pairpool.addr = alloca ptr, align 8
  %extraband_end.addr = alloca i32, align 4
  %defect_rate.addr = alloca double, align 8
  %endalign.addr = alloca i32, align 4
  %require_pos_score_p.addr = alloca i8, align 1
  %pairs = alloca ptr, align 8
  %rev_gsequence = alloca ptr, align 8
  %rev_gsequence_alt = alloca ptr, align 8
  %pair = alloca ptr, align 8
  %mismatchtype = alloca i32, align 4
  %bestr = alloca i32, align 4
  %bestc = alloca i32, align 4
  %lband = alloca i32, align 4
  %uband = alloca i32, align 4
  %open = alloca i32, align 4
  %extend = alloca i32, align 4
  %finalscore = alloca i32, align 4
  %use8p = alloca i8, align 1
  %matrix8_upper = alloca ptr, align 8
  %matrix8_lower = alloca ptr, align 8
  %directions8_upper_nogap = alloca ptr, align 8
  %directions8_upper_Egap = alloca ptr, align 8
  %directions8_lower_nogap = alloca ptr, align 8
  %directions8_lower_Egap = alloca ptr, align 8
  %matrix16_upper = alloca ptr, align 8
  %matrix16_lower = alloca ptr, align 8
  %directions16_upper_nogap = alloca ptr, align 8
  %directions16_upper_Egap = alloca ptr, align 8
  %directions16_lower_nogap = alloca ptr, align 8
  %directions16_lower_Egap = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dynprogindex, ptr %dynprogindex.addr, align 8, !tbaa !5
  store ptr %traceback_score, ptr %traceback_score.addr, align 8, !tbaa !5
  store ptr %nmatches, ptr %nmatches.addr, align 8, !tbaa !5
  store ptr %nmismatches, ptr %nmismatches.addr, align 8, !tbaa !5
  store ptr %nopens, ptr %nopens.addr, align 8, !tbaa !5
  store ptr %nindels, ptr %nindels.addr, align 8, !tbaa !5
  store ptr %dynprog, ptr %dynprog.addr, align 8, !tbaa !5
  store ptr %rev_rsequence, ptr %rev_rsequence.addr, align 8, !tbaa !5
  store ptr %rev_rsequenceuc, ptr %rev_rsequenceuc.addr, align 8, !tbaa !5
  store i32 %rlength, ptr %rlength.addr, align 4, !tbaa !12
  store i32 %glength, ptr %glength.addr, align 4, !tbaa !12
  store i32 %rev_roffset, ptr %rev_roffset.addr, align 4, !tbaa !12
  store i32 %rev_goffset, ptr %rev_goffset.addr, align 4, !tbaa !12
  store i32 %chroffset, ptr %chroffset.addr, align 4, !tbaa !12
  store i32 %chrhigh, ptr %chrhigh.addr, align 4, !tbaa !12
  store i8 %watsonp, ptr %watsonp.addr, align 1, !tbaa !14
  store i32 %genestrand, ptr %genestrand.addr, align 4, !tbaa !12
  store i8 %jump_late_p, ptr %jump_late_p.addr, align 1, !tbaa !14
  store ptr %genome, ptr %genome.addr, align 8, !tbaa !5
  store ptr %genomealt, ptr %genomealt.addr, align 8, !tbaa !5
  store ptr %pairpool, ptr %pairpool.addr, align 8, !tbaa !5
  store i32 %extraband_end, ptr %extraband_end.addr, align 4, !tbaa !12
  store double %defect_rate, ptr %defect_rate.addr, align 8, !tbaa !15
  store i32 %endalign, ptr %endalign.addr, align 4, !tbaa !14
  store i8 %require_pos_score_p, ptr %require_pos_score_p.addr, align 1, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 8, ptr %pairs) #5
  store ptr null, ptr %pairs, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %rev_gsequence) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %rev_gsequence_alt) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %pair) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %mismatchtype) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %bestr) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %bestc) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %lband) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %uband) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %open) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %extend) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %finalscore) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr %use8p) #5
  store i8 0, ptr %use8p, align 1, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 8, ptr %matrix8_upper) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %matrix8_lower) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %directions8_upper_nogap) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %directions8_upper_Egap) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %directions8_lower_nogap) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %directions8_lower_Egap) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %matrix16_upper) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %matrix16_lower) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %directions16_upper_nogap) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %directions16_upper_Egap) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %directions16_lower_nogap) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %directions16_lower_Egap) #5
  store i32 3, ptr %mismatchtype, align 4, !tbaa !14
  %0 = load i8, ptr @user_dynprog_p, align 1, !tbaa !14
  %conv = zext i8 %0 to i32
  %cmp = icmp eq i32 %conv, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, ptr @user_open, align 4, !tbaa !12
  store i32 %1, ptr %open, align 4, !tbaa !12
  %2 = load i32, ptr @user_extend, align 4, !tbaa !12
  store i32 %2, ptr %extend, align 4, !tbaa !12
  br label %if.end11

if.else:                                          ; preds = %entry
  %3 = load double, ptr %defect_rate.addr, align 8, !tbaa !15
  %cmp2 = fcmp olt double %3, 3.000000e-03
  br i1 %cmp2, label %if.then4, label %if.else5

if.then4:                                         ; preds = %if.else
  store i32 -10, ptr %open, align 4, !tbaa !12
  store i32 -2, ptr %extend, align 4, !tbaa !12
  br label %if.end10

if.else5:                                         ; preds = %if.else
  %4 = load double, ptr %defect_rate.addr, align 8, !tbaa !15
  %cmp6 = fcmp olt double %4, 1.400000e-02
  br i1 %cmp6, label %if.then8, label %if.else9

if.then8:                                         ; preds = %if.else5
  store i32 -8, ptr %open, align 4, !tbaa !12
  store i32 -2, ptr %extend, align 4, !tbaa !12
  br label %if.end

if.else9:                                         ; preds = %if.else5
  store i32 -6, ptr %open, align 4, !tbaa !12
  store i32 -2, ptr %extend, align 4, !tbaa !12
  br label %if.end

if.end:                                           ; preds = %if.else9, %if.then8
  br label %if.end10

if.end10:                                         ; preds = %if.end, %if.then4
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %if.then
  %5 = load i32, ptr %rlength.addr, align 4, !tbaa !12
  %cmp12 = icmp sle i32 %5, 0
  br i1 %cmp12, label %if.then14, label %if.else15

if.then14:                                        ; preds = %if.end11
  %6 = load ptr, ptr %traceback_score.addr, align 8, !tbaa !5
  store i32 0, ptr %6, align 4, !tbaa !12
  %7 = load ptr, ptr %nindels.addr, align 8, !tbaa !5
  store i32 0, ptr %7, align 4, !tbaa !12
  %8 = load ptr, ptr %nopens.addr, align 8, !tbaa !5
  store i32 0, ptr %8, align 4, !tbaa !12
  %9 = load ptr, ptr %nmismatches.addr, align 8, !tbaa !5
  store i32 0, ptr %9, align 4, !tbaa !12
  %10 = load ptr, ptr %nmatches.addr, align 8, !tbaa !5
  store i32 0, ptr %10, align 4, !tbaa !12
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else15:                                        ; preds = %if.end11
  %11 = load i32, ptr %endalign.addr, align 4, !tbaa !14
  %cmp16 = icmp eq i32 %11, 2
  br i1 %cmp16, label %if.then18, label %if.else19

if.then18:                                        ; preds = %if.else15
  br label %if.end25

if.else19:                                        ; preds = %if.else15
  %12 = load i32, ptr %rlength.addr, align 4, !tbaa !12
  %13 = load ptr, ptr %dynprog.addr, align 8, !tbaa !5
  %max_rlength = getelementptr inbounds %struct.Dynprog_T, ptr %13, i32 0, i32 0
  %14 = load i32, ptr %max_rlength, align 8, !tbaa !17
  %cmp20 = icmp sgt i32 %12, %14
  br i1 %cmp20, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.else19
  %15 = load ptr, ptr %dynprog.addr, align 8, !tbaa !5
  %max_rlength23 = getelementptr inbounds %struct.Dynprog_T, ptr %15, i32 0, i32 0
  %16 = load i32, ptr %max_rlength23, align 8, !tbaa !17
  store i32 %16, ptr %rlength.addr, align 4, !tbaa !12
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.else19
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.then18
  br label %if.end26

if.end26:                                         ; preds = %if.end25
  %17 = load i32, ptr %rev_goffset.addr, align 4, !tbaa !12
  %cmp27 = icmp slt i32 %17, 0
  br i1 %cmp27, label %if.then29, label %if.else30

if.then29:                                        ; preds = %if.end26
  %18 = load ptr, ptr %traceback_score.addr, align 8, !tbaa !5
  store i32 0, ptr %18, align 4, !tbaa !12
  %19 = load ptr, ptr %nindels.addr, align 8, !tbaa !5
  store i32 0, ptr %19, align 4, !tbaa !12
  %20 = load ptr, ptr %nopens.addr, align 8, !tbaa !5
  store i32 0, ptr %20, align 4, !tbaa !12
  %21 = load ptr, ptr %nmismatches.addr, align 8, !tbaa !5
  store i32 0, ptr %21, align 4, !tbaa !12
  %22 = load ptr, ptr %nmatches.addr, align 8, !tbaa !5
  store i32 0, ptr %22, align 4, !tbaa !12
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else30:                                        ; preds = %if.end26
  %23 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %cmp31 = icmp sle i32 %23, 0
  br i1 %cmp31, label %if.then33, label %if.else34

if.then33:                                        ; preds = %if.else30
  %24 = load ptr, ptr %traceback_score.addr, align 8, !tbaa !5
  store i32 0, ptr %24, align 4, !tbaa !12
  %25 = load ptr, ptr %nindels.addr, align 8, !tbaa !5
  store i32 0, ptr %25, align 4, !tbaa !12
  %26 = load ptr, ptr %nopens.addr, align 8, !tbaa !5
  store i32 0, ptr %26, align 4, !tbaa !12
  %27 = load ptr, ptr %nmismatches.addr, align 8, !tbaa !5
  store i32 0, ptr %27, align 4, !tbaa !12
  %28 = load ptr, ptr %nmatches.addr, align 8, !tbaa !5
  store i32 0, ptr %28, align 4, !tbaa !12
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else34:                                        ; preds = %if.else30
  %29 = load i32, ptr %endalign.addr, align 4, !tbaa !14
  %cmp35 = icmp eq i32 %29, 2
  br i1 %cmp35, label %if.then37, label %if.else38

if.then37:                                        ; preds = %if.else34
  br label %if.end44

if.else38:                                        ; preds = %if.else34
  %30 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %31 = load ptr, ptr %dynprog.addr, align 8, !tbaa !5
  %max_glength = getelementptr inbounds %struct.Dynprog_T, ptr %31, i32 0, i32 1
  %32 = load i32, ptr %max_glength, align 4, !tbaa !19
  %cmp39 = icmp sgt i32 %30, %32
  br i1 %cmp39, label %if.then41, label %if.end43

if.then41:                                        ; preds = %if.else38
  %33 = load ptr, ptr %dynprog.addr, align 8, !tbaa !5
  %max_glength42 = getelementptr inbounds %struct.Dynprog_T, ptr %33, i32 0, i32 1
  %34 = load i32, ptr %max_glength42, align 4, !tbaa !19
  store i32 %34, ptr %glength.addr, align 4, !tbaa !12
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %if.else38
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %if.then37
  br label %if.end45

if.end45:                                         ; preds = %if.end44
  br label %if.end46

if.end46:                                         ; preds = %if.end45
  %35 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %add = add nsw i32 %35, 1
  %conv47 = sext i32 %add to i64
  %mul = mul i64 %conv47, 1
  %call = call ptr @Mem_alloc(i64 noundef %mul, ptr noundef @.str, i32 noundef 1392)
  store ptr %call, ptr %rev_gsequence, align 8, !tbaa !5
  %36 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %add48 = add nsw i32 %36, 1
  %conv49 = sext i32 %add48 to i64
  %mul50 = mul i64 %conv49, 1
  %call51 = call ptr @Mem_alloc(i64 noundef %mul50, ptr noundef @.str, i32 noundef 1393)
  store ptr %call51, ptr %rev_gsequence_alt, align 8, !tbaa !5
  %37 = load i8, ptr %watsonp.addr, align 1, !tbaa !14
  %tobool = icmp ne i8 %37, 0
  br i1 %tobool, label %if.then52, label %if.else55

if.then52:                                        ; preds = %if.end46
  %38 = load ptr, ptr %rev_gsequence, align 8, !tbaa !5
  %39 = load ptr, ptr %rev_gsequence_alt, align 8, !tbaa !5
  %40 = load ptr, ptr %genome.addr, align 8, !tbaa !5
  %41 = load ptr, ptr %genomealt.addr, align 8, !tbaa !5
  %42 = load i32, ptr %chroffset.addr, align 4, !tbaa !12
  %43 = load i32, ptr %rev_goffset.addr, align 4, !tbaa !12
  %add53 = add i32 %42, %43
  %add54 = add i32 %add53, 1
  %44 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %45 = load i32, ptr %chroffset.addr, align 4, !tbaa !12
  call void @Genome_get_segment_left(ptr noundef %38, ptr noundef %39, ptr noundef %40, ptr noundef %41, i32 noundef %add54, i32 noundef %44, i32 noundef %45, i8 noundef zeroext 0)
  br label %if.end56

if.else55:                                        ; preds = %if.end46
  %46 = load ptr, ptr %rev_gsequence, align 8, !tbaa !5
  %47 = load ptr, ptr %rev_gsequence_alt, align 8, !tbaa !5
  %48 = load ptr, ptr %genome.addr, align 8, !tbaa !5
  %49 = load ptr, ptr %genomealt.addr, align 8, !tbaa !5
  %50 = load i32, ptr %chrhigh.addr, align 4, !tbaa !12
  %51 = load i32, ptr %rev_goffset.addr, align 4, !tbaa !12
  %sub = sub i32 %50, %51
  %52 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %53 = load i32, ptr %chrhigh.addr, align 4, !tbaa !12
  call void @Genome_get_segment_right(ptr noundef %46, ptr noundef %47, ptr noundef %48, ptr noundef %49, i32 noundef %sub, i32 noundef %52, i32 noundef %53, i8 noundef zeroext 1)
  br label %if.end56

if.end56:                                         ; preds = %if.else55, %if.then52
  %54 = load ptr, ptr %rev_gsequence, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i8, ptr %54, i64 0
  %55 = load i8, ptr %arrayidx, align 1, !tbaa !14
  %conv57 = sext i8 %55 to i32
  %cmp58 = icmp eq i32 %conv57, 0
  br i1 %cmp58, label %if.then60, label %if.end61

if.then60:                                        ; preds = %if.end56
  %56 = load ptr, ptr %traceback_score.addr, align 8, !tbaa !5
  store i32 0, ptr %56, align 4, !tbaa !12
  %57 = load ptr, ptr %nindels.addr, align 8, !tbaa !5
  store i32 0, ptr %57, align 4, !tbaa !12
  %58 = load ptr, ptr %nopens.addr, align 8, !tbaa !5
  store i32 0, ptr %58, align 4, !tbaa !12
  %59 = load ptr, ptr %nmismatches.addr, align 8, !tbaa !5
  store i32 0, ptr %59, align 4, !tbaa !12
  %60 = load ptr, ptr %nmatches.addr, align 8, !tbaa !5
  store i32 0, ptr %60, align 4, !tbaa !12
  %61 = load ptr, ptr %rev_gsequence_alt, align 8, !tbaa !5
  call void @Mem_free(ptr noundef %61, ptr noundef @.str, i32 noundef 1405)
  store ptr null, ptr %rev_gsequence_alt, align 8, !tbaa !5
  %62 = load ptr, ptr %rev_gsequence, align 8, !tbaa !5
  call void @Mem_free(ptr noundef %62, ptr noundef @.str, i32 noundef 1406)
  store ptr null, ptr %rev_gsequence, align 8, !tbaa !5
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end61:                                         ; preds = %if.end56
  %63 = load i32, ptr %endalign.addr, align 4, !tbaa !14
  %cmp62 = icmp eq i32 %63, 0
  br i1 %cmp62, label %if.then66, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end61
  %64 = load i32, ptr %endalign.addr, align 4, !tbaa !14
  %cmp64 = icmp eq i32 %64, 3
  br i1 %cmp64, label %if.then66, label %if.else128

if.then66:                                        ; preds = %lor.lhs.false, %if.end61
  %65 = load i32, ptr %rlength.addr, align 4, !tbaa !12
  %66 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %67 = load i32, ptr %extraband_end.addr, align 4, !tbaa !12
  call void @Dynprog_compute_bands(ptr noundef %lband, ptr noundef %uband, i32 noundef %65, i32 noundef %66, i32 noundef %67, i8 noundef zeroext 1)
  %68 = load i32, ptr %rlength.addr, align 4, !tbaa !12
  %69 = load i32, ptr %mismatchtype, align 4, !tbaa !14
  %idxprom = zext i32 %69 to i64
  %arrayidx67 = getelementptr inbounds [4 x i32], ptr @use8p_size, i64 0, i64 %idxprom
  %70 = load i32, ptr %arrayidx67, align 4, !tbaa !12
  %cmp68 = icmp slt i32 %68, %70
  br i1 %cmp68, label %if.then75, label %lor.lhs.false70

lor.lhs.false70:                                  ; preds = %if.then66
  %71 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %72 = load i32, ptr %mismatchtype, align 4, !tbaa !14
  %idxprom71 = zext i32 %72 to i64
  %arrayidx72 = getelementptr inbounds [4 x i32], ptr @use8p_size, i64 0, i64 %idxprom71
  %73 = load i32, ptr %arrayidx72, align 4, !tbaa !12
  %cmp73 = icmp slt i32 %71, %73
  br i1 %cmp73, label %if.then75, label %if.else100

if.then75:                                        ; preds = %lor.lhs.false70, %if.then66
  store i8 1, ptr %use8p, align 1, !tbaa !14
  %74 = load ptr, ptr %dynprog.addr, align 8, !tbaa !5
  %75 = load ptr, ptr %rev_rsequence.addr, align 8, !tbaa !5
  %76 = load ptr, ptr %rev_gsequence, align 8, !tbaa !5
  %77 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %sub76 = sub nsw i32 %77, 1
  %idxprom77 = sext i32 %sub76 to i64
  %arrayidx78 = getelementptr inbounds i8, ptr %76, i64 %idxprom77
  %78 = load ptr, ptr %rev_gsequence_alt, align 8, !tbaa !5
  %79 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %sub79 = sub nsw i32 %79, 1
  %idxprom80 = sext i32 %sub79 to i64
  %arrayidx81 = getelementptr inbounds i8, ptr %78, i64 %idxprom80
  %80 = load i32, ptr %rlength.addr, align 4, !tbaa !12
  %81 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %82 = load i32, ptr %mismatchtype, align 4, !tbaa !14
  %83 = load i32, ptr %open, align 4, !tbaa !12
  %84 = load i32, ptr %extend, align 4, !tbaa !12
  %85 = load i32, ptr %uband, align 4, !tbaa !12
  %86 = load i8, ptr %jump_late_p.addr, align 1, !tbaa !14
  %tobool82 = icmp ne i8 %86, 0
  %lnot = xor i1 %tobool82, true
  %lnot.ext = zext i1 %lnot to i32
  %conv83 = trunc i32 %lnot.ext to i8
  %call84 = call ptr @Dynprog_simd_8_upper(ptr noundef %directions8_upper_nogap, ptr noundef %directions8_upper_Egap, ptr noundef %74, ptr noundef %75, ptr noundef %arrayidx78, ptr noundef %arrayidx81, i32 noundef %80, i32 noundef %81, i32 noundef %82, i32 noundef %83, i32 noundef %84, i32 noundef %85, i8 noundef zeroext %conv83, i8 noundef zeroext 1)
  store ptr %call84, ptr %matrix8_upper, align 8, !tbaa !5
  %87 = load ptr, ptr %dynprog.addr, align 8, !tbaa !5
  %88 = load ptr, ptr %rev_rsequence.addr, align 8, !tbaa !5
  %89 = load ptr, ptr %rev_gsequence, align 8, !tbaa !5
  %90 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %sub85 = sub nsw i32 %90, 1
  %idxprom86 = sext i32 %sub85 to i64
  %arrayidx87 = getelementptr inbounds i8, ptr %89, i64 %idxprom86
  %91 = load ptr, ptr %rev_gsequence_alt, align 8, !tbaa !5
  %92 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %sub88 = sub nsw i32 %92, 1
  %idxprom89 = sext i32 %sub88 to i64
  %arrayidx90 = getelementptr inbounds i8, ptr %91, i64 %idxprom89
  %93 = load i32, ptr %rlength.addr, align 4, !tbaa !12
  %94 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %95 = load i32, ptr %mismatchtype, align 4, !tbaa !14
  %96 = load i32, ptr %open, align 4, !tbaa !12
  %97 = load i32, ptr %extend, align 4, !tbaa !12
  %98 = load i32, ptr %lband, align 4, !tbaa !12
  %99 = load i8, ptr %jump_late_p.addr, align 1, !tbaa !14
  %tobool91 = icmp ne i8 %99, 0
  %lnot92 = xor i1 %tobool91, true
  %lnot.ext93 = zext i1 %lnot92 to i32
  %conv94 = trunc i32 %lnot.ext93 to i8
  %call95 = call ptr @Dynprog_simd_8_lower(ptr noundef %directions8_lower_nogap, ptr noundef %directions8_lower_Egap, ptr noundef %87, ptr noundef %88, ptr noundef %arrayidx87, ptr noundef %arrayidx90, i32 noundef %93, i32 noundef %94, i32 noundef %95, i32 noundef %96, i32 noundef %97, i32 noundef %98, i8 noundef zeroext %conv94, i8 noundef zeroext 1)
  store ptr %call95, ptr %matrix8_lower, align 8, !tbaa !5
  %100 = load ptr, ptr %matrix8_upper, align 8, !tbaa !5
  %101 = load ptr, ptr %matrix8_lower, align 8, !tbaa !5
  %102 = load i32, ptr %rlength.addr, align 4, !tbaa !12
  %103 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %104 = load i32, ptr %lband, align 4, !tbaa !12
  %105 = load i32, ptr %uband, align 4, !tbaa !12
  %106 = load i8, ptr %jump_late_p.addr, align 1, !tbaa !14
  %tobool96 = icmp ne i8 %106, 0
  %lnot97 = xor i1 %tobool96, true
  %lnot.ext98 = zext i1 %lnot97 to i32
  %conv99 = trunc i32 %lnot.ext98 to i8
  call void @find_best_endpoint_8(ptr noundef %finalscore, ptr noundef %bestr, ptr noundef %bestc, ptr noundef %100, ptr noundef %101, i32 noundef %102, i32 noundef %103, i32 noundef %104, i32 noundef %105, i8 noundef zeroext %conv99)
  br label %if.end127

if.else100:                                       ; preds = %lor.lhs.false70
  %107 = load ptr, ptr %dynprog.addr, align 8, !tbaa !5
  %108 = load ptr, ptr %rev_rsequence.addr, align 8, !tbaa !5
  %109 = load ptr, ptr %rev_gsequence, align 8, !tbaa !5
  %110 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %sub101 = sub nsw i32 %110, 1
  %idxprom102 = sext i32 %sub101 to i64
  %arrayidx103 = getelementptr inbounds i8, ptr %109, i64 %idxprom102
  %111 = load ptr, ptr %rev_gsequence_alt, align 8, !tbaa !5
  %112 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %sub104 = sub nsw i32 %112, 1
  %idxprom105 = sext i32 %sub104 to i64
  %arrayidx106 = getelementptr inbounds i8, ptr %111, i64 %idxprom105
  %113 = load i32, ptr %rlength.addr, align 4, !tbaa !12
  %114 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %115 = load i32, ptr %mismatchtype, align 4, !tbaa !14
  %116 = load i32, ptr %open, align 4, !tbaa !12
  %117 = load i32, ptr %extend, align 4, !tbaa !12
  %118 = load i32, ptr %uband, align 4, !tbaa !12
  %119 = load i8, ptr %jump_late_p.addr, align 1, !tbaa !14
  %tobool107 = icmp ne i8 %119, 0
  %lnot108 = xor i1 %tobool107, true
  %lnot.ext109 = zext i1 %lnot108 to i32
  %conv110 = trunc i32 %lnot.ext109 to i8
  %call111 = call ptr @Dynprog_simd_16_upper(ptr noundef %directions16_upper_nogap, ptr noundef %directions16_upper_Egap, ptr noundef %107, ptr noundef %108, ptr noundef %arrayidx103, ptr noundef %arrayidx106, i32 noundef %113, i32 noundef %114, i32 noundef %115, i32 noundef %116, i32 noundef %117, i32 noundef %118, i8 noundef zeroext %conv110, i8 noundef zeroext 1)
  store ptr %call111, ptr %matrix16_upper, align 8, !tbaa !5
  %120 = load ptr, ptr %dynprog.addr, align 8, !tbaa !5
  %121 = load ptr, ptr %rev_rsequence.addr, align 8, !tbaa !5
  %122 = load ptr, ptr %rev_gsequence, align 8, !tbaa !5
  %123 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %sub112 = sub nsw i32 %123, 1
  %idxprom113 = sext i32 %sub112 to i64
  %arrayidx114 = getelementptr inbounds i8, ptr %122, i64 %idxprom113
  %124 = load ptr, ptr %rev_gsequence_alt, align 8, !tbaa !5
  %125 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %sub115 = sub nsw i32 %125, 1
  %idxprom116 = sext i32 %sub115 to i64
  %arrayidx117 = getelementptr inbounds i8, ptr %124, i64 %idxprom116
  %126 = load i32, ptr %rlength.addr, align 4, !tbaa !12
  %127 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %128 = load i32, ptr %mismatchtype, align 4, !tbaa !14
  %129 = load i32, ptr %open, align 4, !tbaa !12
  %130 = load i32, ptr %extend, align 4, !tbaa !12
  %131 = load i32, ptr %lband, align 4, !tbaa !12
  %132 = load i8, ptr %jump_late_p.addr, align 1, !tbaa !14
  %tobool118 = icmp ne i8 %132, 0
  %lnot119 = xor i1 %tobool118, true
  %lnot.ext120 = zext i1 %lnot119 to i32
  %conv121 = trunc i32 %lnot.ext120 to i8
  %call122 = call ptr @Dynprog_simd_16_lower(ptr noundef %directions16_lower_nogap, ptr noundef %directions16_lower_Egap, ptr noundef %120, ptr noundef %121, ptr noundef %arrayidx114, ptr noundef %arrayidx117, i32 noundef %126, i32 noundef %127, i32 noundef %128, i32 noundef %129, i32 noundef %130, i32 noundef %131, i8 noundef zeroext %conv121, i8 noundef zeroext 1)
  store ptr %call122, ptr %matrix16_lower, align 8, !tbaa !5
  %133 = load ptr, ptr %matrix16_upper, align 8, !tbaa !5
  %134 = load ptr, ptr %matrix16_lower, align 8, !tbaa !5
  %135 = load i32, ptr %rlength.addr, align 4, !tbaa !12
  %136 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %137 = load i32, ptr %lband, align 4, !tbaa !12
  %138 = load i32, ptr %uband, align 4, !tbaa !12
  %139 = load i8, ptr %jump_late_p.addr, align 1, !tbaa !14
  %tobool123 = icmp ne i8 %139, 0
  %lnot124 = xor i1 %tobool123, true
  %lnot.ext125 = zext i1 %lnot124 to i32
  %conv126 = trunc i32 %lnot.ext125 to i8
  call void @find_best_endpoint_16(ptr noundef %finalscore, ptr noundef %bestr, ptr noundef %bestc, ptr noundef %133, ptr noundef %134, i32 noundef %135, i32 noundef %136, i32 noundef %137, i32 noundef %138, i8 noundef zeroext %conv126)
  br label %if.end127

if.end127:                                        ; preds = %if.else100, %if.then75
  br label %if.end204

if.else128:                                       ; preds = %lor.lhs.false
  %140 = load i32, ptr %endalign.addr, align 4, !tbaa !14
  %cmp129 = icmp eq i32 %140, 1
  br i1 %cmp129, label %if.then131, label %if.else196

if.then131:                                       ; preds = %if.else128
  %141 = load i32, ptr %rlength.addr, align 4, !tbaa !12
  %142 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %143 = load i32, ptr %extraband_end.addr, align 4, !tbaa !12
  call void @Dynprog_compute_bands(ptr noundef %lband, ptr noundef %uband, i32 noundef %141, i32 noundef %142, i32 noundef %143, i8 noundef zeroext 0)
  %144 = load i32, ptr %rlength.addr, align 4, !tbaa !12
  %145 = load i32, ptr %mismatchtype, align 4, !tbaa !14
  %idxprom132 = zext i32 %145 to i64
  %arrayidx133 = getelementptr inbounds [4 x i32], ptr @use8p_size, i64 0, i64 %idxprom132
  %146 = load i32, ptr %arrayidx133, align 4, !tbaa !12
  %cmp134 = icmp slt i32 %144, %146
  br i1 %cmp134, label %if.then141, label %lor.lhs.false136

lor.lhs.false136:                                 ; preds = %if.then131
  %147 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %148 = load i32, ptr %mismatchtype, align 4, !tbaa !14
  %idxprom137 = zext i32 %148 to i64
  %arrayidx138 = getelementptr inbounds [4 x i32], ptr @use8p_size, i64 0, i64 %idxprom137
  %149 = load i32, ptr %arrayidx138, align 4, !tbaa !12
  %cmp139 = icmp slt i32 %147, %149
  br i1 %cmp139, label %if.then141, label %if.else168

if.then141:                                       ; preds = %lor.lhs.false136, %if.then131
  store i8 1, ptr %use8p, align 1, !tbaa !14
  %150 = load ptr, ptr %dynprog.addr, align 8, !tbaa !5
  %151 = load ptr, ptr %rev_rsequence.addr, align 8, !tbaa !5
  %152 = load ptr, ptr %rev_gsequence, align 8, !tbaa !5
  %153 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %sub142 = sub nsw i32 %153, 1
  %idxprom143 = sext i32 %sub142 to i64
  %arrayidx144 = getelementptr inbounds i8, ptr %152, i64 %idxprom143
  %154 = load ptr, ptr %rev_gsequence_alt, align 8, !tbaa !5
  %155 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %sub145 = sub nsw i32 %155, 1
  %idxprom146 = sext i32 %sub145 to i64
  %arrayidx147 = getelementptr inbounds i8, ptr %154, i64 %idxprom146
  %156 = load i32, ptr %rlength.addr, align 4, !tbaa !12
  %157 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %158 = load i32, ptr %mismatchtype, align 4, !tbaa !14
  %159 = load i32, ptr %open, align 4, !tbaa !12
  %160 = load i32, ptr %extend, align 4, !tbaa !12
  %161 = load i32, ptr %uband, align 4, !tbaa !12
  %162 = load i8, ptr %jump_late_p.addr, align 1, !tbaa !14
  %tobool148 = icmp ne i8 %162, 0
  %lnot149 = xor i1 %tobool148, true
  %lnot.ext150 = zext i1 %lnot149 to i32
  %conv151 = trunc i32 %lnot.ext150 to i8
  %call152 = call ptr @Dynprog_simd_8_upper(ptr noundef %directions8_upper_nogap, ptr noundef %directions8_upper_Egap, ptr noundef %150, ptr noundef %151, ptr noundef %arrayidx144, ptr noundef %arrayidx147, i32 noundef %156, i32 noundef %157, i32 noundef %158, i32 noundef %159, i32 noundef %160, i32 noundef %161, i8 noundef zeroext %conv151, i8 noundef zeroext 1)
  store ptr %call152, ptr %matrix8_upper, align 8, !tbaa !5
  %163 = load ptr, ptr %dynprog.addr, align 8, !tbaa !5
  %164 = load ptr, ptr %rev_rsequence.addr, align 8, !tbaa !5
  %165 = load ptr, ptr %rev_gsequence, align 8, !tbaa !5
  %166 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %sub153 = sub nsw i32 %166, 1
  %idxprom154 = sext i32 %sub153 to i64
  %arrayidx155 = getelementptr inbounds i8, ptr %165, i64 %idxprom154
  %167 = load ptr, ptr %rev_gsequence_alt, align 8, !tbaa !5
  %168 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %sub156 = sub nsw i32 %168, 1
  %idxprom157 = sext i32 %sub156 to i64
  %arrayidx158 = getelementptr inbounds i8, ptr %167, i64 %idxprom157
  %169 = load i32, ptr %rlength.addr, align 4, !tbaa !12
  %170 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %171 = load i32, ptr %mismatchtype, align 4, !tbaa !14
  %172 = load i32, ptr %open, align 4, !tbaa !12
  %173 = load i32, ptr %extend, align 4, !tbaa !12
  %174 = load i32, ptr %lband, align 4, !tbaa !12
  %175 = load i8, ptr %jump_late_p.addr, align 1, !tbaa !14
  %tobool159 = icmp ne i8 %175, 0
  %lnot160 = xor i1 %tobool159, true
  %lnot.ext161 = zext i1 %lnot160 to i32
  %conv162 = trunc i32 %lnot.ext161 to i8
  %call163 = call ptr @Dynprog_simd_8_lower(ptr noundef %directions8_lower_nogap, ptr noundef %directions8_lower_Egap, ptr noundef %163, ptr noundef %164, ptr noundef %arrayidx155, ptr noundef %arrayidx158, i32 noundef %169, i32 noundef %170, i32 noundef %171, i32 noundef %172, i32 noundef %173, i32 noundef %174, i8 noundef zeroext %conv162, i8 noundef zeroext 1)
  store ptr %call163, ptr %matrix8_lower, align 8, !tbaa !5
  %176 = load ptr, ptr %matrix8_upper, align 8, !tbaa !5
  %177 = load ptr, ptr %matrix8_lower, align 8, !tbaa !5
  %178 = load i32, ptr %rlength.addr, align 4, !tbaa !12
  %179 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %180 = load i32, ptr %lband, align 4, !tbaa !12
  %181 = load i32, ptr %uband, align 4, !tbaa !12
  %182 = load i8, ptr %jump_late_p.addr, align 1, !tbaa !14
  %tobool164 = icmp ne i8 %182, 0
  %lnot165 = xor i1 %tobool164, true
  %lnot.ext166 = zext i1 %lnot165 to i32
  %conv167 = trunc i32 %lnot.ext166 to i8
  call void @find_best_endpoint_to_queryend_indels_8(ptr noundef %finalscore, ptr noundef %bestr, ptr noundef %bestc, ptr noundef %176, ptr noundef %177, i32 noundef %178, i32 noundef %179, i32 noundef %180, i32 noundef %181, i8 noundef zeroext %conv167)
  br label %if.end195

if.else168:                                       ; preds = %lor.lhs.false136
  %183 = load ptr, ptr %dynprog.addr, align 8, !tbaa !5
  %184 = load ptr, ptr %rev_rsequence.addr, align 8, !tbaa !5
  %185 = load ptr, ptr %rev_gsequence, align 8, !tbaa !5
  %186 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %sub169 = sub nsw i32 %186, 1
  %idxprom170 = sext i32 %sub169 to i64
  %arrayidx171 = getelementptr inbounds i8, ptr %185, i64 %idxprom170
  %187 = load ptr, ptr %rev_gsequence_alt, align 8, !tbaa !5
  %188 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %sub172 = sub nsw i32 %188, 1
  %idxprom173 = sext i32 %sub172 to i64
  %arrayidx174 = getelementptr inbounds i8, ptr %187, i64 %idxprom173
  %189 = load i32, ptr %rlength.addr, align 4, !tbaa !12
  %190 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %191 = load i32, ptr %mismatchtype, align 4, !tbaa !14
  %192 = load i32, ptr %open, align 4, !tbaa !12
  %193 = load i32, ptr %extend, align 4, !tbaa !12
  %194 = load i32, ptr %uband, align 4, !tbaa !12
  %195 = load i8, ptr %jump_late_p.addr, align 1, !tbaa !14
  %tobool175 = icmp ne i8 %195, 0
  %lnot176 = xor i1 %tobool175, true
  %lnot.ext177 = zext i1 %lnot176 to i32
  %conv178 = trunc i32 %lnot.ext177 to i8
  %call179 = call ptr @Dynprog_simd_16_upper(ptr noundef %directions16_upper_nogap, ptr noundef %directions16_upper_Egap, ptr noundef %183, ptr noundef %184, ptr noundef %arrayidx171, ptr noundef %arrayidx174, i32 noundef %189, i32 noundef %190, i32 noundef %191, i32 noundef %192, i32 noundef %193, i32 noundef %194, i8 noundef zeroext %conv178, i8 noundef zeroext 1)
  store ptr %call179, ptr %matrix16_upper, align 8, !tbaa !5
  %196 = load ptr, ptr %dynprog.addr, align 8, !tbaa !5
  %197 = load ptr, ptr %rev_rsequence.addr, align 8, !tbaa !5
  %198 = load ptr, ptr %rev_gsequence, align 8, !tbaa !5
  %199 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %sub180 = sub nsw i32 %199, 1
  %idxprom181 = sext i32 %sub180 to i64
  %arrayidx182 = getelementptr inbounds i8, ptr %198, i64 %idxprom181
  %200 = load ptr, ptr %rev_gsequence_alt, align 8, !tbaa !5
  %201 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %sub183 = sub nsw i32 %201, 1
  %idxprom184 = sext i32 %sub183 to i64
  %arrayidx185 = getelementptr inbounds i8, ptr %200, i64 %idxprom184
  %202 = load i32, ptr %rlength.addr, align 4, !tbaa !12
  %203 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %204 = load i32, ptr %mismatchtype, align 4, !tbaa !14
  %205 = load i32, ptr %open, align 4, !tbaa !12
  %206 = load i32, ptr %extend, align 4, !tbaa !12
  %207 = load i32, ptr %lband, align 4, !tbaa !12
  %208 = load i8, ptr %jump_late_p.addr, align 1, !tbaa !14
  %tobool186 = icmp ne i8 %208, 0
  %lnot187 = xor i1 %tobool186, true
  %lnot.ext188 = zext i1 %lnot187 to i32
  %conv189 = trunc i32 %lnot.ext188 to i8
  %call190 = call ptr @Dynprog_simd_16_lower(ptr noundef %directions16_lower_nogap, ptr noundef %directions16_lower_Egap, ptr noundef %196, ptr noundef %197, ptr noundef %arrayidx182, ptr noundef %arrayidx185, i32 noundef %202, i32 noundef %203, i32 noundef %204, i32 noundef %205, i32 noundef %206, i32 noundef %207, i8 noundef zeroext %conv189, i8 noundef zeroext 1)
  store ptr %call190, ptr %matrix16_lower, align 8, !tbaa !5
  %209 = load ptr, ptr %matrix16_upper, align 8, !tbaa !5
  %210 = load ptr, ptr %matrix16_lower, align 8, !tbaa !5
  %211 = load i32, ptr %rlength.addr, align 4, !tbaa !12
  %212 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %213 = load i32, ptr %lband, align 4, !tbaa !12
  %214 = load i32, ptr %uband, align 4, !tbaa !12
  %215 = load i8, ptr %jump_late_p.addr, align 1, !tbaa !14
  %tobool191 = icmp ne i8 %215, 0
  %lnot192 = xor i1 %tobool191, true
  %lnot.ext193 = zext i1 %lnot192 to i32
  %conv194 = trunc i32 %lnot.ext193 to i8
  call void @find_best_endpoint_to_queryend_indels_16(ptr noundef %finalscore, ptr noundef %bestr, ptr noundef %bestc, ptr noundef %209, ptr noundef %210, i32 noundef %211, i32 noundef %212, i32 noundef %213, i32 noundef %214, i8 noundef zeroext %conv194)
  br label %if.end195

if.end195:                                        ; preds = %if.else168, %if.then141
  br label %if.end203

if.else196:                                       ; preds = %if.else128
  %216 = load i32, ptr %endalign.addr, align 4, !tbaa !14
  %cmp197 = icmp eq i32 %216, 2
  br i1 %cmp197, label %if.then199, label %if.else200

if.then199:                                       ; preds = %if.else196
  %217 = load i32, ptr %rlength.addr, align 4, !tbaa !12
  %218 = load i32, ptr %glength.addr, align 4, !tbaa !12
  call void @find_best_endpoint_to_queryend_nogaps(ptr noundef %bestr, ptr noundef %bestc, i32 noundef %217, i32 noundef %218)
  br label %if.end202

if.else200:                                       ; preds = %if.else196
  %219 = load ptr, ptr @stderr, align 8, !tbaa !5
  %220 = load i32, ptr %endalign.addr, align 4, !tbaa !14
  %call201 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %219, ptr noundef @.str.1, i32 noundef %220)
  call void @abort() #6
  unreachable

if.end202:                                        ; preds = %if.then199
  br label %if.end203

if.end203:                                        ; preds = %if.end202, %if.end195
  br label %if.end204

if.end204:                                        ; preds = %if.end203, %if.end127
  %221 = load ptr, ptr %traceback_score.addr, align 8, !tbaa !5
  store i32 0, ptr %221, align 4, !tbaa !12
  %222 = load ptr, ptr %nindels.addr, align 8, !tbaa !5
  store i32 0, ptr %222, align 4, !tbaa !12
  %223 = load ptr, ptr %nopens.addr, align 8, !tbaa !5
  store i32 0, ptr %223, align 4, !tbaa !12
  %224 = load ptr, ptr %nmismatches.addr, align 8, !tbaa !5
  store i32 0, ptr %224, align 4, !tbaa !12
  %225 = load ptr, ptr %nmatches.addr, align 8, !tbaa !5
  store i32 0, ptr %225, align 4, !tbaa !12
  %226 = load i32, ptr %endalign.addr, align 4, !tbaa !14
  %cmp205 = icmp eq i32 %226, 2
  br i1 %cmp205, label %if.then207, label %if.else215

if.then207:                                       ; preds = %if.end204
  %227 = load ptr, ptr %traceback_score.addr, align 8, !tbaa !5
  %228 = load ptr, ptr %nmatches.addr, align 8, !tbaa !5
  %229 = load ptr, ptr %nmismatches.addr, align 8, !tbaa !5
  %230 = load i32, ptr %bestr, align 4, !tbaa !12
  %231 = load i32, ptr %bestc, align 4, !tbaa !12
  %232 = load ptr, ptr %rev_rsequence.addr, align 8, !tbaa !5
  %233 = load ptr, ptr %rev_rsequenceuc.addr, align 8, !tbaa !5
  %234 = load ptr, ptr %rev_gsequence, align 8, !tbaa !5
  %235 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %sub208 = sub nsw i32 %235, 1
  %idxprom209 = sext i32 %sub208 to i64
  %arrayidx210 = getelementptr inbounds i8, ptr %234, i64 %idxprom209
  %236 = load ptr, ptr %rev_gsequence_alt, align 8, !tbaa !5
  %237 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %sub211 = sub nsw i32 %237, 1
  %idxprom212 = sext i32 %sub211 to i64
  %arrayidx213 = getelementptr inbounds i8, ptr %236, i64 %idxprom212
  %238 = load i32, ptr %rev_roffset.addr, align 4, !tbaa !12
  %239 = load i32, ptr %rev_goffset.addr, align 4, !tbaa !12
  %240 = load ptr, ptr %pairpool.addr, align 8, !tbaa !5
  %241 = load i32, ptr %genestrand.addr, align 4, !tbaa !12
  %242 = load ptr, ptr %dynprogindex.addr, align 8, !tbaa !5
  %243 = load i32, ptr %242, align 4, !tbaa !12
  %call214 = call ptr @traceback_nogaps(ptr noundef null, ptr noundef %227, ptr noundef %228, ptr noundef %229, i32 noundef %230, i32 noundef %231, ptr noundef %232, ptr noundef %233, ptr noundef %arrayidx210, ptr noundef %arrayidx213, i32 noundef %238, i32 noundef %239, ptr noundef %240, i32 noundef %241, i8 noundef zeroext 1, i32 noundef %243)
  store ptr %call214, ptr %pairs, align 8, !tbaa !5
  br label %if.end268

if.else215:                                       ; preds = %if.end204
  %244 = load i8, ptr %require_pos_score_p.addr, align 1, !tbaa !14
  %conv216 = zext i8 %244 to i32
  %cmp217 = icmp eq i32 %conv216, 1
  br i1 %cmp217, label %land.lhs.true, label %if.else222

land.lhs.true:                                    ; preds = %if.else215
  %245 = load ptr, ptr %traceback_score.addr, align 8, !tbaa !5
  %246 = load i32, ptr %245, align 4, !tbaa !12
  %cmp219 = icmp sle i32 %246, 0
  br i1 %cmp219, label %if.then221, label %if.else222

if.then221:                                       ; preds = %land.lhs.true
  store ptr null, ptr %pairs, align 8, !tbaa !5
  br label %if.end267

if.else222:                                       ; preds = %land.lhs.true, %if.else215
  %247 = load i8, ptr %use8p, align 1, !tbaa !14
  %conv223 = zext i8 %247 to i32
  %cmp224 = icmp eq i32 %conv223, 1
  br i1 %cmp224, label %if.then226, label %if.else246

if.then226:                                       ; preds = %if.else222
  %248 = load i32, ptr %bestc, align 4, !tbaa !12
  %249 = load i32, ptr %bestr, align 4, !tbaa !12
  %cmp227 = icmp sge i32 %248, %249
  br i1 %cmp227, label %if.then229, label %if.else237

if.then229:                                       ; preds = %if.then226
  %250 = load ptr, ptr %traceback_score.addr, align 8, !tbaa !5
  %251 = load ptr, ptr %nmatches.addr, align 8, !tbaa !5
  %252 = load ptr, ptr %nmismatches.addr, align 8, !tbaa !5
  %253 = load ptr, ptr %nopens.addr, align 8, !tbaa !5
  %254 = load ptr, ptr %nindels.addr, align 8, !tbaa !5
  %255 = load ptr, ptr %directions8_upper_nogap, align 8, !tbaa !5
  %256 = load ptr, ptr %directions8_upper_Egap, align 8, !tbaa !5
  %257 = load i32, ptr %bestr, align 4, !tbaa !12
  %258 = load i32, ptr %bestc, align 4, !tbaa !12
  %259 = load ptr, ptr %rev_rsequence.addr, align 8, !tbaa !5
  %260 = load ptr, ptr %rev_rsequenceuc.addr, align 8, !tbaa !5
  %261 = load ptr, ptr %rev_gsequence, align 8, !tbaa !5
  %262 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %sub230 = sub nsw i32 %262, 1
  %idxprom231 = sext i32 %sub230 to i64
  %arrayidx232 = getelementptr inbounds i8, ptr %261, i64 %idxprom231
  %263 = load ptr, ptr %rev_gsequence_alt, align 8, !tbaa !5
  %264 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %sub233 = sub nsw i32 %264, 1
  %idxprom234 = sext i32 %sub233 to i64
  %arrayidx235 = getelementptr inbounds i8, ptr %263, i64 %idxprom234
  %265 = load i32, ptr %rev_roffset.addr, align 4, !tbaa !12
  %266 = load i32, ptr %rev_goffset.addr, align 4, !tbaa !12
  %267 = load ptr, ptr %genome.addr, align 8, !tbaa !5
  %268 = load ptr, ptr %genomealt.addr, align 8, !tbaa !5
  %269 = load ptr, ptr %pairpool.addr, align 8, !tbaa !5
  %270 = load i32, ptr %chroffset.addr, align 4, !tbaa !12
  %271 = load i32, ptr %chrhigh.addr, align 4, !tbaa !12
  %272 = load i8, ptr %watsonp.addr, align 1, !tbaa !14
  %273 = load i32, ptr %genestrand.addr, align 4, !tbaa !12
  %274 = load ptr, ptr %dynprogindex.addr, align 8, !tbaa !5
  %275 = load i32, ptr %274, align 4, !tbaa !12
  %call236 = call ptr @Dynprog_traceback_8_upper(ptr noundef null, ptr noundef %250, ptr noundef %251, ptr noundef %252, ptr noundef %253, ptr noundef %254, ptr noundef %255, ptr noundef %256, i32 noundef %257, i32 noundef %258, ptr noundef %259, ptr noundef %260, ptr noundef %arrayidx232, ptr noundef %arrayidx235, i32 noundef %265, i32 noundef %266, ptr noundef %267, ptr noundef %268, ptr noundef %269, i8 noundef zeroext 1, i32 noundef %270, i32 noundef %271, i8 noundef zeroext %272, i32 noundef %273, i32 noundef %275)
  store ptr %call236, ptr %pairs, align 8, !tbaa !5
  br label %if.end245

if.else237:                                       ; preds = %if.then226
  %276 = load ptr, ptr %traceback_score.addr, align 8, !tbaa !5
  %277 = load ptr, ptr %nmatches.addr, align 8, !tbaa !5
  %278 = load ptr, ptr %nmismatches.addr, align 8, !tbaa !5
  %279 = load ptr, ptr %nopens.addr, align 8, !tbaa !5
  %280 = load ptr, ptr %nindels.addr, align 8, !tbaa !5
  %281 = load ptr, ptr %directions8_lower_nogap, align 8, !tbaa !5
  %282 = load ptr, ptr %directions8_lower_Egap, align 8, !tbaa !5
  %283 = load i32, ptr %bestr, align 4, !tbaa !12
  %284 = load i32, ptr %bestc, align 4, !tbaa !12
  %285 = load ptr, ptr %rev_rsequence.addr, align 8, !tbaa !5
  %286 = load ptr, ptr %rev_rsequenceuc.addr, align 8, !tbaa !5
  %287 = load ptr, ptr %rev_gsequence, align 8, !tbaa !5
  %288 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %sub238 = sub nsw i32 %288, 1
  %idxprom239 = sext i32 %sub238 to i64
  %arrayidx240 = getelementptr inbounds i8, ptr %287, i64 %idxprom239
  %289 = load ptr, ptr %rev_gsequence_alt, align 8, !tbaa !5
  %290 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %sub241 = sub nsw i32 %290, 1
  %idxprom242 = sext i32 %sub241 to i64
  %arrayidx243 = getelementptr inbounds i8, ptr %289, i64 %idxprom242
  %291 = load i32, ptr %rev_roffset.addr, align 4, !tbaa !12
  %292 = load i32, ptr %rev_goffset.addr, align 4, !tbaa !12
  %293 = load ptr, ptr %pairpool.addr, align 8, !tbaa !5
  %294 = load i32, ptr %genestrand.addr, align 4, !tbaa !12
  %295 = load ptr, ptr %dynprogindex.addr, align 8, !tbaa !5
  %296 = load i32, ptr %295, align 4, !tbaa !12
  %call244 = call ptr @Dynprog_traceback_8_lower(ptr noundef null, ptr noundef %276, ptr noundef %277, ptr noundef %278, ptr noundef %279, ptr noundef %280, ptr noundef %281, ptr noundef %282, i32 noundef %283, i32 noundef %284, ptr noundef %285, ptr noundef %286, ptr noundef %arrayidx240, ptr noundef %arrayidx243, i32 noundef %291, i32 noundef %292, ptr noundef %293, i32 noundef %294, i8 noundef zeroext 1, i32 noundef %296)
  store ptr %call244, ptr %pairs, align 8, !tbaa !5
  br label %if.end245

if.end245:                                        ; preds = %if.else237, %if.then229
  br label %if.end266

if.else246:                                       ; preds = %if.else222
  %297 = load i32, ptr %bestc, align 4, !tbaa !12
  %298 = load i32, ptr %bestr, align 4, !tbaa !12
  %cmp247 = icmp sge i32 %297, %298
  br i1 %cmp247, label %if.then249, label %if.else257

if.then249:                                       ; preds = %if.else246
  %299 = load ptr, ptr %traceback_score.addr, align 8, !tbaa !5
  %300 = load ptr, ptr %nmatches.addr, align 8, !tbaa !5
  %301 = load ptr, ptr %nmismatches.addr, align 8, !tbaa !5
  %302 = load ptr, ptr %nopens.addr, align 8, !tbaa !5
  %303 = load ptr, ptr %nindels.addr, align 8, !tbaa !5
  %304 = load ptr, ptr %directions16_upper_nogap, align 8, !tbaa !5
  %305 = load ptr, ptr %directions16_upper_Egap, align 8, !tbaa !5
  %306 = load i32, ptr %bestr, align 4, !tbaa !12
  %307 = load i32, ptr %bestc, align 4, !tbaa !12
  %308 = load ptr, ptr %rev_rsequence.addr, align 8, !tbaa !5
  %309 = load ptr, ptr %rev_rsequenceuc.addr, align 8, !tbaa !5
  %310 = load ptr, ptr %rev_gsequence, align 8, !tbaa !5
  %311 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %sub250 = sub nsw i32 %311, 1
  %idxprom251 = sext i32 %sub250 to i64
  %arrayidx252 = getelementptr inbounds i8, ptr %310, i64 %idxprom251
  %312 = load ptr, ptr %rev_gsequence_alt, align 8, !tbaa !5
  %313 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %sub253 = sub nsw i32 %313, 1
  %idxprom254 = sext i32 %sub253 to i64
  %arrayidx255 = getelementptr inbounds i8, ptr %312, i64 %idxprom254
  %314 = load i32, ptr %rev_roffset.addr, align 4, !tbaa !12
  %315 = load i32, ptr %rev_goffset.addr, align 4, !tbaa !12
  %316 = load ptr, ptr %genome.addr, align 8, !tbaa !5
  %317 = load ptr, ptr %genomealt.addr, align 8, !tbaa !5
  %318 = load ptr, ptr %pairpool.addr, align 8, !tbaa !5
  %319 = load i32, ptr %chroffset.addr, align 4, !tbaa !12
  %320 = load i32, ptr %chrhigh.addr, align 4, !tbaa !12
  %321 = load i8, ptr %watsonp.addr, align 1, !tbaa !14
  %322 = load i32, ptr %genestrand.addr, align 4, !tbaa !12
  %323 = load ptr, ptr %dynprogindex.addr, align 8, !tbaa !5
  %324 = load i32, ptr %323, align 4, !tbaa !12
  %call256 = call ptr @Dynprog_traceback_16_upper(ptr noundef null, ptr noundef %299, ptr noundef %300, ptr noundef %301, ptr noundef %302, ptr noundef %303, ptr noundef %304, ptr noundef %305, i32 noundef %306, i32 noundef %307, ptr noundef %308, ptr noundef %309, ptr noundef %arrayidx252, ptr noundef %arrayidx255, i32 noundef %314, i32 noundef %315, ptr noundef %316, ptr noundef %317, ptr noundef %318, i8 noundef zeroext 1, i32 noundef %319, i32 noundef %320, i8 noundef zeroext %321, i32 noundef %322, i32 noundef %324)
  store ptr %call256, ptr %pairs, align 8, !tbaa !5
  br label %if.end265

if.else257:                                       ; preds = %if.else246
  %325 = load ptr, ptr %traceback_score.addr, align 8, !tbaa !5
  %326 = load ptr, ptr %nmatches.addr, align 8, !tbaa !5
  %327 = load ptr, ptr %nmismatches.addr, align 8, !tbaa !5
  %328 = load ptr, ptr %nopens.addr, align 8, !tbaa !5
  %329 = load ptr, ptr %nindels.addr, align 8, !tbaa !5
  %330 = load ptr, ptr %directions16_lower_nogap, align 8, !tbaa !5
  %331 = load ptr, ptr %directions16_lower_Egap, align 8, !tbaa !5
  %332 = load i32, ptr %bestr, align 4, !tbaa !12
  %333 = load i32, ptr %bestc, align 4, !tbaa !12
  %334 = load ptr, ptr %rev_rsequence.addr, align 8, !tbaa !5
  %335 = load ptr, ptr %rev_rsequenceuc.addr, align 8, !tbaa !5
  %336 = load ptr, ptr %rev_gsequence, align 8, !tbaa !5
  %337 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %sub258 = sub nsw i32 %337, 1
  %idxprom259 = sext i32 %sub258 to i64
  %arrayidx260 = getelementptr inbounds i8, ptr %336, i64 %idxprom259
  %338 = load ptr, ptr %rev_gsequence_alt, align 8, !tbaa !5
  %339 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %sub261 = sub nsw i32 %339, 1
  %idxprom262 = sext i32 %sub261 to i64
  %arrayidx263 = getelementptr inbounds i8, ptr %338, i64 %idxprom262
  %340 = load i32, ptr %rev_roffset.addr, align 4, !tbaa !12
  %341 = load i32, ptr %rev_goffset.addr, align 4, !tbaa !12
  %342 = load ptr, ptr %pairpool.addr, align 8, !tbaa !5
  %343 = load i32, ptr %genestrand.addr, align 4, !tbaa !12
  %344 = load ptr, ptr %dynprogindex.addr, align 8, !tbaa !5
  %345 = load i32, ptr %344, align 4, !tbaa !12
  %call264 = call ptr @Dynprog_traceback_16_lower(ptr noundef null, ptr noundef %325, ptr noundef %326, ptr noundef %327, ptr noundef %328, ptr noundef %329, ptr noundef %330, ptr noundef %331, i32 noundef %332, i32 noundef %333, ptr noundef %334, ptr noundef %335, ptr noundef %arrayidx260, ptr noundef %arrayidx263, i32 noundef %340, i32 noundef %341, ptr noundef %342, i32 noundef %343, i8 noundef zeroext 1, i32 noundef %345)
  store ptr %call264, ptr %pairs, align 8, !tbaa !5
  br label %if.end265

if.end265:                                        ; preds = %if.else257, %if.then249
  br label %if.end266

if.end266:                                        ; preds = %if.end265, %if.end245
  br label %if.end267

if.end267:                                        ; preds = %if.end266, %if.then221
  br label %if.end268

if.end268:                                        ; preds = %if.end267, %if.then207
  %346 = load i32, ptr %endalign.addr, align 4, !tbaa !14
  %cmp269 = icmp eq i32 %346, 0
  br i1 %cmp269, label %land.lhs.true274, label %lor.lhs.false271

lor.lhs.false271:                                 ; preds = %if.end268
  %347 = load i32, ptr %endalign.addr, align 4, !tbaa !14
  %cmp272 = icmp eq i32 %347, 3
  br i1 %cmp272, label %land.lhs.true274, label %if.else279

land.lhs.true274:                                 ; preds = %lor.lhs.false271, %if.end268
  %348 = load ptr, ptr %nmatches.addr, align 8, !tbaa !5
  %349 = load i32, ptr %348, align 4, !tbaa !12
  %add275 = add nsw i32 %349, 1
  %350 = load ptr, ptr %nmismatches.addr, align 8, !tbaa !5
  %351 = load i32, ptr %350, align 4, !tbaa !12
  %cmp276 = icmp slt i32 %add275, %351
  br i1 %cmp276, label %if.then278, label %if.else279

if.then278:                                       ; preds = %land.lhs.true274
  %352 = load ptr, ptr %traceback_score.addr, align 8, !tbaa !5
  store i32 0, ptr %352, align 4, !tbaa !12
  store ptr null, ptr %pairs, align 8, !tbaa !5
  br label %if.end290

if.else279:                                       ; preds = %land.lhs.true274, %lor.lhs.false271
  %353 = load ptr, ptr %pairs, align 8, !tbaa !5
  %call280 = call ptr @List_reverse(ptr noundef %353)
  store ptr %call280, ptr %pairs, align 8, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else279
  %354 = load ptr, ptr %pairs, align 8, !tbaa !5
  %cmp281 = icmp ne ptr %354, null
  br i1 %cmp281, label %land.lhs.true283, label %land.end

land.lhs.true283:                                 ; preds = %while.cond
  %355 = load ptr, ptr %pairs, align 8, !tbaa !5
  %call284 = call ptr @List_head(ptr noundef %355)
  store ptr %call284, ptr %pair, align 8, !tbaa !5
  %tobool285 = icmp ne ptr %call284, null
  br i1 %tobool285, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true283
  %356 = load ptr, ptr %pair, align 8, !tbaa !5
  %comp = getelementptr inbounds %struct.Pair_T, ptr %356, i32 0, i32 10
  %357 = load i8, ptr %comp, align 1, !tbaa !20
  %conv286 = sext i8 %357 to i32
  %cmp287 = icmp eq i32 %conv286, 45
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true283, %while.cond
  %358 = phi i1 [ false, %land.lhs.true283 ], [ false, %while.cond ], [ %cmp287, %land.rhs ]
  br i1 %358, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %359 = load ptr, ptr %pairs, align 8, !tbaa !5
  %call289 = call ptr @List_next(ptr noundef %359)
  store ptr %call289, ptr %pairs, align 8, !tbaa !5
  br label %while.cond, !llvm.loop !22

while.end:                                        ; preds = %land.end
  br label %if.end290

if.end290:                                        ; preds = %while.end, %if.then278
  %360 = load ptr, ptr %rev_gsequence_alt, align 8, !tbaa !5
  call void @Mem_free(ptr noundef %360, ptr noundef @.str, i32 noundef 1640)
  store ptr null, ptr %rev_gsequence_alt, align 8, !tbaa !5
  %361 = load ptr, ptr %rev_gsequence, align 8, !tbaa !5
  call void @Mem_free(ptr noundef %361, ptr noundef @.str, i32 noundef 1641)
  store ptr null, ptr %rev_gsequence, align 8, !tbaa !5
  %362 = load ptr, ptr %dynprogindex.addr, align 8, !tbaa !5
  %363 = load i32, ptr %362, align 4, !tbaa !12
  %cmp291 = icmp sgt i32 %363, 0
  %364 = zext i1 %cmp291 to i64
  %cond = select i1 %cmp291, i32 1, i32 -1
  %365 = load ptr, ptr %dynprogindex.addr, align 8, !tbaa !5
  %366 = load i32, ptr %365, align 4, !tbaa !12
  %add293 = add nsw i32 %366, %cond
  store i32 %add293, ptr %365, align 4, !tbaa !12
  %367 = load ptr, ptr %pairs, align 8, !tbaa !5
  %call294 = call ptr @List_reverse(ptr noundef %367)
  store ptr %call294, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end290, %if.then60, %if.then33, %if.then29, %if.then14
  call void @llvm.lifetime.end.p0(i64 8, ptr %directions16_lower_Egap) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %directions16_lower_nogap) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %directions16_upper_Egap) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %directions16_upper_nogap) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %matrix16_lower) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %matrix16_upper) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %directions8_lower_Egap) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %directions8_lower_nogap) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %directions8_upper_Egap) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %directions8_upper_nogap) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %matrix8_lower) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %matrix8_upper) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr %use8p) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %finalscore) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %extend) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %open) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %uband) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %lband) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %bestc) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %bestr) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %mismatchtype) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %pair) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %rev_gsequence_alt) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %rev_gsequence) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %pairs) #5
  %368 = load ptr, ptr %retval, align 8
  ret ptr %368
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare ptr @Mem_alloc(i64 noundef, ptr noundef, i32 noundef) #3

declare void @Genome_get_segment_left(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext) #3

declare void @Genome_get_segment_right(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext) #3

declare void @Mem_free(ptr noundef, ptr noundef, i32 noundef) #3

declare void @Dynprog_compute_bands(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext) #3

declare ptr @Dynprog_simd_8_upper(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) #3

declare ptr @Dynprog_simd_8_lower(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) #3

; Function Attrs: nounwind uwtable
define internal void @find_best_endpoint_8(ptr noundef %finalscore, ptr noundef %bestr, ptr noundef %bestc, ptr noundef %matrix_upper, ptr noundef %matrix_lower, i32 noundef %rlength, i32 noundef %glength, i32 noundef %lband, i32 noundef %uband, i8 noundef zeroext %jump_late_p) #1 {
entry:
  %finalscore.addr = alloca ptr, align 8
  %bestr.addr = alloca ptr, align 8
  %bestc.addr = alloca ptr, align 8
  %matrix_upper.addr = alloca ptr, align 8
  %matrix_lower.addr = alloca ptr, align 8
  %rlength.addr = alloca i32, align 4
  %glength.addr = alloca i32, align 4
  %lband.addr = alloca i32, align 4
  %uband.addr = alloca i32, align 4
  %jump_late_p.addr = alloca i8, align 1
  %bestscore = alloca i8, align 1
  %r = alloca i32, align 4
  %c = alloca i32, align 4
  %clo = alloca i32, align 4
  %chigh = alloca i32, align 4
  store ptr %finalscore, ptr %finalscore.addr, align 8, !tbaa !5
  store ptr %bestr, ptr %bestr.addr, align 8, !tbaa !5
  store ptr %bestc, ptr %bestc.addr, align 8, !tbaa !5
  store ptr %matrix_upper, ptr %matrix_upper.addr, align 8, !tbaa !5
  store ptr %matrix_lower, ptr %matrix_lower.addr, align 8, !tbaa !5
  store i32 %rlength, ptr %rlength.addr, align 4, !tbaa !12
  store i32 %glength, ptr %glength.addr, align 4, !tbaa !12
  store i32 %lband, ptr %lband.addr, align 4, !tbaa !12
  store i32 %uband, ptr %uband.addr, align 4, !tbaa !12
  store i8 %jump_late_p, ptr %jump_late_p.addr, align 1, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 1, ptr %bestscore) #5
  store i8 0, ptr %bestscore, align 1, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %clo) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %chigh) #5
  %0 = load ptr, ptr %bestc.addr, align 8, !tbaa !5
  store i32 0, ptr %0, align 4, !tbaa !12
  %1 = load ptr, ptr %bestr.addr, align 8, !tbaa !5
  store i32 0, ptr %1, align 4, !tbaa !12
  %2 = load i8, ptr %jump_late_p.addr, align 1, !tbaa !14
  %conv = zext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, ptr %r, align 4, !tbaa !12
  br label %for.cond

for.cond:                                         ; preds = %for.inc48, %if.then
  %3 = load i32, ptr %r, align 4, !tbaa !12
  %4 = load i32, ptr %rlength.addr, align 4, !tbaa !12
  %cmp2 = icmp sle i32 %3, %4
  br i1 %cmp2, label %for.body, label %for.end50

for.body:                                         ; preds = %for.cond
  %5 = load i32, ptr %r, align 4, !tbaa !12
  %6 = load i32, ptr %lband.addr, align 4, !tbaa !12
  %sub = sub nsw i32 %5, %6
  store i32 %sub, ptr %clo, align 4, !tbaa !12
  %cmp4 = icmp slt i32 %sub, 1
  br i1 %cmp4, label %if.then6, label %if.end

if.then6:                                         ; preds = %for.body
  store i32 1, ptr %clo, align 4, !tbaa !12
  br label %if.end

if.end:                                           ; preds = %if.then6, %for.body
  %7 = load i32, ptr %r, align 4, !tbaa !12
  %8 = load i32, ptr %uband.addr, align 4, !tbaa !12
  %add = add nsw i32 %7, %8
  store i32 %add, ptr %chigh, align 4, !tbaa !12
  %9 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %cmp7 = icmp sgt i32 %add, %9
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end
  %10 = load i32, ptr %glength.addr, align 4, !tbaa !12
  store i32 %10, ptr %chigh, align 4, !tbaa !12
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end
  %11 = load i32, ptr %clo, align 4, !tbaa !12
  store i32 %11, ptr %c, align 4, !tbaa !12
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc, %if.end10
  %12 = load i32, ptr %c, align 4, !tbaa !12
  %13 = load i32, ptr %r, align 4, !tbaa !12
  %cmp12 = icmp slt i32 %12, %13
  br i1 %cmp12, label %for.body14, label %for.end

for.body14:                                       ; preds = %for.cond11
  %14 = load ptr, ptr %matrix_lower.addr, align 8, !tbaa !5
  %15 = load i32, ptr %r, align 4, !tbaa !12
  %idxprom = sext i32 %15 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %14, i64 %idxprom
  %16 = load ptr, ptr %arrayidx, align 8, !tbaa !5
  %17 = load i32, ptr %c, align 4, !tbaa !12
  %idxprom15 = sext i32 %17 to i64
  %arrayidx16 = getelementptr inbounds i8, ptr %16, i64 %idxprom15
  %18 = load i8, ptr %arrayidx16, align 1, !tbaa !14
  %conv17 = sext i8 %18 to i32
  %19 = load i8, ptr %bestscore, align 1, !tbaa !14
  %conv18 = sext i8 %19 to i32
  %cmp19 = icmp sgt i32 %conv17, %conv18
  br i1 %cmp19, label %if.then21, label %if.end26

if.then21:                                        ; preds = %for.body14
  %20 = load i32, ptr %r, align 4, !tbaa !12
  %21 = load ptr, ptr %bestr.addr, align 8, !tbaa !5
  store i32 %20, ptr %21, align 4, !tbaa !12
  %22 = load i32, ptr %c, align 4, !tbaa !12
  %23 = load ptr, ptr %bestc.addr, align 8, !tbaa !5
  store i32 %22, ptr %23, align 4, !tbaa !12
  %24 = load ptr, ptr %matrix_lower.addr, align 8, !tbaa !5
  %25 = load i32, ptr %r, align 4, !tbaa !12
  %idxprom22 = sext i32 %25 to i64
  %arrayidx23 = getelementptr inbounds ptr, ptr %24, i64 %idxprom22
  %26 = load ptr, ptr %arrayidx23, align 8, !tbaa !5
  %27 = load i32, ptr %c, align 4, !tbaa !12
  %idxprom24 = sext i32 %27 to i64
  %arrayidx25 = getelementptr inbounds i8, ptr %26, i64 %idxprom24
  %28 = load i8, ptr %arrayidx25, align 1, !tbaa !14
  store i8 %28, ptr %bestscore, align 1, !tbaa !14
  br label %if.end26

if.end26:                                         ; preds = %if.then21, %for.body14
  br label %for.inc

for.inc:                                          ; preds = %if.end26
  %29 = load i32, ptr %c, align 4, !tbaa !12
  %inc = add nsw i32 %29, 1
  store i32 %inc, ptr %c, align 4, !tbaa !12
  br label %for.cond11, !llvm.loop !24

for.end:                                          ; preds = %for.cond11
  br label %for.cond27

for.cond27:                                       ; preds = %for.inc45, %for.end
  %30 = load i32, ptr %c, align 4, !tbaa !12
  %31 = load i32, ptr %chigh, align 4, !tbaa !12
  %cmp28 = icmp sle i32 %30, %31
  br i1 %cmp28, label %for.body30, label %for.end47

for.body30:                                       ; preds = %for.cond27
  %32 = load ptr, ptr %matrix_upper.addr, align 8, !tbaa !5
  %33 = load i32, ptr %c, align 4, !tbaa !12
  %idxprom31 = sext i32 %33 to i64
  %arrayidx32 = getelementptr inbounds ptr, ptr %32, i64 %idxprom31
  %34 = load ptr, ptr %arrayidx32, align 8, !tbaa !5
  %35 = load i32, ptr %r, align 4, !tbaa !12
  %idxprom33 = sext i32 %35 to i64
  %arrayidx34 = getelementptr inbounds i8, ptr %34, i64 %idxprom33
  %36 = load i8, ptr %arrayidx34, align 1, !tbaa !14
  %conv35 = sext i8 %36 to i32
  %37 = load i8, ptr %bestscore, align 1, !tbaa !14
  %conv36 = sext i8 %37 to i32
  %cmp37 = icmp sgt i32 %conv35, %conv36
  br i1 %cmp37, label %if.then39, label %if.end44

if.then39:                                        ; preds = %for.body30
  %38 = load i32, ptr %r, align 4, !tbaa !12
  %39 = load ptr, ptr %bestr.addr, align 8, !tbaa !5
  store i32 %38, ptr %39, align 4, !tbaa !12
  %40 = load i32, ptr %c, align 4, !tbaa !12
  %41 = load ptr, ptr %bestc.addr, align 8, !tbaa !5
  store i32 %40, ptr %41, align 4, !tbaa !12
  %42 = load ptr, ptr %matrix_upper.addr, align 8, !tbaa !5
  %43 = load i32, ptr %c, align 4, !tbaa !12
  %idxprom40 = sext i32 %43 to i64
  %arrayidx41 = getelementptr inbounds ptr, ptr %42, i64 %idxprom40
  %44 = load ptr, ptr %arrayidx41, align 8, !tbaa !5
  %45 = load i32, ptr %r, align 4, !tbaa !12
  %idxprom42 = sext i32 %45 to i64
  %arrayidx43 = getelementptr inbounds i8, ptr %44, i64 %idxprom42
  %46 = load i8, ptr %arrayidx43, align 1, !tbaa !14
  store i8 %46, ptr %bestscore, align 1, !tbaa !14
  br label %if.end44

if.end44:                                         ; preds = %if.then39, %for.body30
  br label %for.inc45

for.inc45:                                        ; preds = %if.end44
  %47 = load i32, ptr %c, align 4, !tbaa !12
  %inc46 = add nsw i32 %47, 1
  store i32 %inc46, ptr %c, align 4, !tbaa !12
  br label %for.cond27, !llvm.loop !25

for.end47:                                        ; preds = %for.cond27
  br label %for.inc48

for.inc48:                                        ; preds = %for.end47
  %48 = load i32, ptr %r, align 4, !tbaa !12
  %inc49 = add nsw i32 %48, 1
  store i32 %inc49, ptr %r, align 4, !tbaa !12
  br label %for.cond, !llvm.loop !26

for.end50:                                        ; preds = %for.cond
  br label %if.end110

if.else:                                          ; preds = %entry
  store i32 1, ptr %r, align 4, !tbaa !12
  br label %for.cond51

for.cond51:                                       ; preds = %for.inc107, %if.else
  %49 = load i32, ptr %r, align 4, !tbaa !12
  %50 = load i32, ptr %rlength.addr, align 4, !tbaa !12
  %cmp52 = icmp sle i32 %49, %50
  br i1 %cmp52, label %for.body54, label %for.end109

for.body54:                                       ; preds = %for.cond51
  %51 = load i32, ptr %r, align 4, !tbaa !12
  %52 = load i32, ptr %lband.addr, align 4, !tbaa !12
  %sub55 = sub nsw i32 %51, %52
  store i32 %sub55, ptr %clo, align 4, !tbaa !12
  %cmp56 = icmp slt i32 %sub55, 1
  br i1 %cmp56, label %if.then58, label %if.end59

if.then58:                                        ; preds = %for.body54
  store i32 1, ptr %clo, align 4, !tbaa !12
  br label %if.end59

if.end59:                                         ; preds = %if.then58, %for.body54
  %53 = load i32, ptr %r, align 4, !tbaa !12
  %54 = load i32, ptr %uband.addr, align 4, !tbaa !12
  %add60 = add nsw i32 %53, %54
  store i32 %add60, ptr %chigh, align 4, !tbaa !12
  %55 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %cmp61 = icmp sgt i32 %add60, %55
  br i1 %cmp61, label %if.then63, label %if.end64

if.then63:                                        ; preds = %if.end59
  %56 = load i32, ptr %glength.addr, align 4, !tbaa !12
  store i32 %56, ptr %chigh, align 4, !tbaa !12
  br label %if.end64

if.end64:                                         ; preds = %if.then63, %if.end59
  %57 = load i32, ptr %clo, align 4, !tbaa !12
  store i32 %57, ptr %c, align 4, !tbaa !12
  br label %for.cond65

for.cond65:                                       ; preds = %for.inc83, %if.end64
  %58 = load i32, ptr %c, align 4, !tbaa !12
  %59 = load i32, ptr %r, align 4, !tbaa !12
  %cmp66 = icmp slt i32 %58, %59
  br i1 %cmp66, label %for.body68, label %for.end85

for.body68:                                       ; preds = %for.cond65
  %60 = load ptr, ptr %matrix_lower.addr, align 8, !tbaa !5
  %61 = load i32, ptr %r, align 4, !tbaa !12
  %idxprom69 = sext i32 %61 to i64
  %arrayidx70 = getelementptr inbounds ptr, ptr %60, i64 %idxprom69
  %62 = load ptr, ptr %arrayidx70, align 8, !tbaa !5
  %63 = load i32, ptr %c, align 4, !tbaa !12
  %idxprom71 = sext i32 %63 to i64
  %arrayidx72 = getelementptr inbounds i8, ptr %62, i64 %idxprom71
  %64 = load i8, ptr %arrayidx72, align 1, !tbaa !14
  %conv73 = sext i8 %64 to i32
  %65 = load i8, ptr %bestscore, align 1, !tbaa !14
  %conv74 = sext i8 %65 to i32
  %cmp75 = icmp sge i32 %conv73, %conv74
  br i1 %cmp75, label %if.then77, label %if.end82

if.then77:                                        ; preds = %for.body68
  %66 = load i32, ptr %r, align 4, !tbaa !12
  %67 = load ptr, ptr %bestr.addr, align 8, !tbaa !5
  store i32 %66, ptr %67, align 4, !tbaa !12
  %68 = load i32, ptr %c, align 4, !tbaa !12
  %69 = load ptr, ptr %bestc.addr, align 8, !tbaa !5
  store i32 %68, ptr %69, align 4, !tbaa !12
  %70 = load ptr, ptr %matrix_lower.addr, align 8, !tbaa !5
  %71 = load i32, ptr %r, align 4, !tbaa !12
  %idxprom78 = sext i32 %71 to i64
  %arrayidx79 = getelementptr inbounds ptr, ptr %70, i64 %idxprom78
  %72 = load ptr, ptr %arrayidx79, align 8, !tbaa !5
  %73 = load i32, ptr %c, align 4, !tbaa !12
  %idxprom80 = sext i32 %73 to i64
  %arrayidx81 = getelementptr inbounds i8, ptr %72, i64 %idxprom80
  %74 = load i8, ptr %arrayidx81, align 1, !tbaa !14
  store i8 %74, ptr %bestscore, align 1, !tbaa !14
  br label %if.end82

if.end82:                                         ; preds = %if.then77, %for.body68
  br label %for.inc83

for.inc83:                                        ; preds = %if.end82
  %75 = load i32, ptr %c, align 4, !tbaa !12
  %inc84 = add nsw i32 %75, 1
  store i32 %inc84, ptr %c, align 4, !tbaa !12
  br label %for.cond65, !llvm.loop !27

for.end85:                                        ; preds = %for.cond65
  br label %for.cond86

for.cond86:                                       ; preds = %for.inc104, %for.end85
  %76 = load i32, ptr %c, align 4, !tbaa !12
  %77 = load i32, ptr %chigh, align 4, !tbaa !12
  %cmp87 = icmp sle i32 %76, %77
  br i1 %cmp87, label %for.body89, label %for.end106

for.body89:                                       ; preds = %for.cond86
  %78 = load ptr, ptr %matrix_upper.addr, align 8, !tbaa !5
  %79 = load i32, ptr %c, align 4, !tbaa !12
  %idxprom90 = sext i32 %79 to i64
  %arrayidx91 = getelementptr inbounds ptr, ptr %78, i64 %idxprom90
  %80 = load ptr, ptr %arrayidx91, align 8, !tbaa !5
  %81 = load i32, ptr %r, align 4, !tbaa !12
  %idxprom92 = sext i32 %81 to i64
  %arrayidx93 = getelementptr inbounds i8, ptr %80, i64 %idxprom92
  %82 = load i8, ptr %arrayidx93, align 1, !tbaa !14
  %conv94 = sext i8 %82 to i32
  %83 = load i8, ptr %bestscore, align 1, !tbaa !14
  %conv95 = sext i8 %83 to i32
  %cmp96 = icmp sge i32 %conv94, %conv95
  br i1 %cmp96, label %if.then98, label %if.end103

if.then98:                                        ; preds = %for.body89
  %84 = load i32, ptr %r, align 4, !tbaa !12
  %85 = load ptr, ptr %bestr.addr, align 8, !tbaa !5
  store i32 %84, ptr %85, align 4, !tbaa !12
  %86 = load i32, ptr %c, align 4, !tbaa !12
  %87 = load ptr, ptr %bestc.addr, align 8, !tbaa !5
  store i32 %86, ptr %87, align 4, !tbaa !12
  %88 = load ptr, ptr %matrix_upper.addr, align 8, !tbaa !5
  %89 = load i32, ptr %c, align 4, !tbaa !12
  %idxprom99 = sext i32 %89 to i64
  %arrayidx100 = getelementptr inbounds ptr, ptr %88, i64 %idxprom99
  %90 = load ptr, ptr %arrayidx100, align 8, !tbaa !5
  %91 = load i32, ptr %r, align 4, !tbaa !12
  %idxprom101 = sext i32 %91 to i64
  %arrayidx102 = getelementptr inbounds i8, ptr %90, i64 %idxprom101
  %92 = load i8, ptr %arrayidx102, align 1, !tbaa !14
  store i8 %92, ptr %bestscore, align 1, !tbaa !14
  br label %if.end103

if.end103:                                        ; preds = %if.then98, %for.body89
  br label %for.inc104

for.inc104:                                       ; preds = %if.end103
  %93 = load i32, ptr %c, align 4, !tbaa !12
  %inc105 = add nsw i32 %93, 1
  store i32 %inc105, ptr %c, align 4, !tbaa !12
  br label %for.cond86, !llvm.loop !28

for.end106:                                       ; preds = %for.cond86
  br label %for.inc107

for.inc107:                                       ; preds = %for.end106
  %94 = load i32, ptr %r, align 4, !tbaa !12
  %inc108 = add nsw i32 %94, 1
  store i32 %inc108, ptr %r, align 4, !tbaa !12
  br label %for.cond51, !llvm.loop !29

for.end109:                                       ; preds = %for.cond51
  br label %if.end110

if.end110:                                        ; preds = %for.end109, %for.end50
  %95 = load i8, ptr %bestscore, align 1, !tbaa !14
  %conv111 = sext i8 %95 to i32
  %96 = load ptr, ptr %finalscore.addr, align 8, !tbaa !5
  store i32 %conv111, ptr %96, align 4, !tbaa !12
  call void @llvm.lifetime.end.p0(i64 4, ptr %chigh) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %clo) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr %bestscore) #5
  ret void
}

declare ptr @Dynprog_simd_16_upper(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) #3

declare ptr @Dynprog_simd_16_lower(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) #3

; Function Attrs: nounwind uwtable
define internal void @find_best_endpoint_16(ptr noundef %finalscore, ptr noundef %bestr, ptr noundef %bestc, ptr noundef %matrix_upper, ptr noundef %matrix_lower, i32 noundef %rlength, i32 noundef %glength, i32 noundef %lband, i32 noundef %uband, i8 noundef zeroext %jump_late_p) #1 {
entry:
  %finalscore.addr = alloca ptr, align 8
  %bestr.addr = alloca ptr, align 8
  %bestc.addr = alloca ptr, align 8
  %matrix_upper.addr = alloca ptr, align 8
  %matrix_lower.addr = alloca ptr, align 8
  %rlength.addr = alloca i32, align 4
  %glength.addr = alloca i32, align 4
  %lband.addr = alloca i32, align 4
  %uband.addr = alloca i32, align 4
  %jump_late_p.addr = alloca i8, align 1
  %bestscore = alloca i16, align 2
  %r = alloca i32, align 4
  %c = alloca i32, align 4
  %clo = alloca i32, align 4
  %chigh = alloca i32, align 4
  store ptr %finalscore, ptr %finalscore.addr, align 8, !tbaa !5
  store ptr %bestr, ptr %bestr.addr, align 8, !tbaa !5
  store ptr %bestc, ptr %bestc.addr, align 8, !tbaa !5
  store ptr %matrix_upper, ptr %matrix_upper.addr, align 8, !tbaa !5
  store ptr %matrix_lower, ptr %matrix_lower.addr, align 8, !tbaa !5
  store i32 %rlength, ptr %rlength.addr, align 4, !tbaa !12
  store i32 %glength, ptr %glength.addr, align 4, !tbaa !12
  store i32 %lband, ptr %lband.addr, align 4, !tbaa !12
  store i32 %uband, ptr %uband.addr, align 4, !tbaa !12
  store i8 %jump_late_p, ptr %jump_late_p.addr, align 1, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 2, ptr %bestscore) #5
  store i16 0, ptr %bestscore, align 2, !tbaa !30
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %clo) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %chigh) #5
  %0 = load ptr, ptr %bestc.addr, align 8, !tbaa !5
  store i32 0, ptr %0, align 4, !tbaa !12
  %1 = load ptr, ptr %bestr.addr, align 8, !tbaa !5
  store i32 0, ptr %1, align 4, !tbaa !12
  %2 = load i8, ptr %jump_late_p.addr, align 1, !tbaa !14
  %conv = zext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, ptr %r, align 4, !tbaa !12
  br label %for.cond

for.cond:                                         ; preds = %for.inc48, %if.then
  %3 = load i32, ptr %r, align 4, !tbaa !12
  %4 = load i32, ptr %rlength.addr, align 4, !tbaa !12
  %cmp2 = icmp sle i32 %3, %4
  br i1 %cmp2, label %for.body, label %for.end50

for.body:                                         ; preds = %for.cond
  %5 = load i32, ptr %r, align 4, !tbaa !12
  %6 = load i32, ptr %lband.addr, align 4, !tbaa !12
  %sub = sub nsw i32 %5, %6
  store i32 %sub, ptr %clo, align 4, !tbaa !12
  %cmp4 = icmp slt i32 %sub, 1
  br i1 %cmp4, label %if.then6, label %if.end

if.then6:                                         ; preds = %for.body
  store i32 1, ptr %clo, align 4, !tbaa !12
  br label %if.end

if.end:                                           ; preds = %if.then6, %for.body
  %7 = load i32, ptr %r, align 4, !tbaa !12
  %8 = load i32, ptr %uband.addr, align 4, !tbaa !12
  %add = add nsw i32 %7, %8
  store i32 %add, ptr %chigh, align 4, !tbaa !12
  %9 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %cmp7 = icmp sgt i32 %add, %9
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end
  %10 = load i32, ptr %glength.addr, align 4, !tbaa !12
  store i32 %10, ptr %chigh, align 4, !tbaa !12
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end
  %11 = load i32, ptr %clo, align 4, !tbaa !12
  store i32 %11, ptr %c, align 4, !tbaa !12
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc, %if.end10
  %12 = load i32, ptr %c, align 4, !tbaa !12
  %13 = load i32, ptr %r, align 4, !tbaa !12
  %cmp12 = icmp slt i32 %12, %13
  br i1 %cmp12, label %for.body14, label %for.end

for.body14:                                       ; preds = %for.cond11
  %14 = load ptr, ptr %matrix_lower.addr, align 8, !tbaa !5
  %15 = load i32, ptr %r, align 4, !tbaa !12
  %idxprom = sext i32 %15 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %14, i64 %idxprom
  %16 = load ptr, ptr %arrayidx, align 8, !tbaa !5
  %17 = load i32, ptr %c, align 4, !tbaa !12
  %idxprom15 = sext i32 %17 to i64
  %arrayidx16 = getelementptr inbounds i16, ptr %16, i64 %idxprom15
  %18 = load i16, ptr %arrayidx16, align 2, !tbaa !30
  %conv17 = sext i16 %18 to i32
  %19 = load i16, ptr %bestscore, align 2, !tbaa !30
  %conv18 = sext i16 %19 to i32
  %cmp19 = icmp sgt i32 %conv17, %conv18
  br i1 %cmp19, label %if.then21, label %if.end26

if.then21:                                        ; preds = %for.body14
  %20 = load i32, ptr %r, align 4, !tbaa !12
  %21 = load ptr, ptr %bestr.addr, align 8, !tbaa !5
  store i32 %20, ptr %21, align 4, !tbaa !12
  %22 = load i32, ptr %c, align 4, !tbaa !12
  %23 = load ptr, ptr %bestc.addr, align 8, !tbaa !5
  store i32 %22, ptr %23, align 4, !tbaa !12
  %24 = load ptr, ptr %matrix_lower.addr, align 8, !tbaa !5
  %25 = load i32, ptr %r, align 4, !tbaa !12
  %idxprom22 = sext i32 %25 to i64
  %arrayidx23 = getelementptr inbounds ptr, ptr %24, i64 %idxprom22
  %26 = load ptr, ptr %arrayidx23, align 8, !tbaa !5
  %27 = load i32, ptr %c, align 4, !tbaa !12
  %idxprom24 = sext i32 %27 to i64
  %arrayidx25 = getelementptr inbounds i16, ptr %26, i64 %idxprom24
  %28 = load i16, ptr %arrayidx25, align 2, !tbaa !30
  store i16 %28, ptr %bestscore, align 2, !tbaa !30
  br label %if.end26

if.end26:                                         ; preds = %if.then21, %for.body14
  br label %for.inc

for.inc:                                          ; preds = %if.end26
  %29 = load i32, ptr %c, align 4, !tbaa !12
  %inc = add nsw i32 %29, 1
  store i32 %inc, ptr %c, align 4, !tbaa !12
  br label %for.cond11, !llvm.loop !32

for.end:                                          ; preds = %for.cond11
  br label %for.cond27

for.cond27:                                       ; preds = %for.inc45, %for.end
  %30 = load i32, ptr %c, align 4, !tbaa !12
  %31 = load i32, ptr %chigh, align 4, !tbaa !12
  %cmp28 = icmp sle i32 %30, %31
  br i1 %cmp28, label %for.body30, label %for.end47

for.body30:                                       ; preds = %for.cond27
  %32 = load ptr, ptr %matrix_upper.addr, align 8, !tbaa !5
  %33 = load i32, ptr %c, align 4, !tbaa !12
  %idxprom31 = sext i32 %33 to i64
  %arrayidx32 = getelementptr inbounds ptr, ptr %32, i64 %idxprom31
  %34 = load ptr, ptr %arrayidx32, align 8, !tbaa !5
  %35 = load i32, ptr %r, align 4, !tbaa !12
  %idxprom33 = sext i32 %35 to i64
  %arrayidx34 = getelementptr inbounds i16, ptr %34, i64 %idxprom33
  %36 = load i16, ptr %arrayidx34, align 2, !tbaa !30
  %conv35 = sext i16 %36 to i32
  %37 = load i16, ptr %bestscore, align 2, !tbaa !30
  %conv36 = sext i16 %37 to i32
  %cmp37 = icmp sgt i32 %conv35, %conv36
  br i1 %cmp37, label %if.then39, label %if.end44

if.then39:                                        ; preds = %for.body30
  %38 = load i32, ptr %r, align 4, !tbaa !12
  %39 = load ptr, ptr %bestr.addr, align 8, !tbaa !5
  store i32 %38, ptr %39, align 4, !tbaa !12
  %40 = load i32, ptr %c, align 4, !tbaa !12
  %41 = load ptr, ptr %bestc.addr, align 8, !tbaa !5
  store i32 %40, ptr %41, align 4, !tbaa !12
  %42 = load ptr, ptr %matrix_upper.addr, align 8, !tbaa !5
  %43 = load i32, ptr %c, align 4, !tbaa !12
  %idxprom40 = sext i32 %43 to i64
  %arrayidx41 = getelementptr inbounds ptr, ptr %42, i64 %idxprom40
  %44 = load ptr, ptr %arrayidx41, align 8, !tbaa !5
  %45 = load i32, ptr %r, align 4, !tbaa !12
  %idxprom42 = sext i32 %45 to i64
  %arrayidx43 = getelementptr inbounds i16, ptr %44, i64 %idxprom42
  %46 = load i16, ptr %arrayidx43, align 2, !tbaa !30
  store i16 %46, ptr %bestscore, align 2, !tbaa !30
  br label %if.end44

if.end44:                                         ; preds = %if.then39, %for.body30
  br label %for.inc45

for.inc45:                                        ; preds = %if.end44
  %47 = load i32, ptr %c, align 4, !tbaa !12
  %inc46 = add nsw i32 %47, 1
  store i32 %inc46, ptr %c, align 4, !tbaa !12
  br label %for.cond27, !llvm.loop !33

for.end47:                                        ; preds = %for.cond27
  br label %for.inc48

for.inc48:                                        ; preds = %for.end47
  %48 = load i32, ptr %r, align 4, !tbaa !12
  %inc49 = add nsw i32 %48, 1
  store i32 %inc49, ptr %r, align 4, !tbaa !12
  br label %for.cond, !llvm.loop !34

for.end50:                                        ; preds = %for.cond
  br label %if.end110

if.else:                                          ; preds = %entry
  store i32 1, ptr %r, align 4, !tbaa !12
  br label %for.cond51

for.cond51:                                       ; preds = %for.inc107, %if.else
  %49 = load i32, ptr %r, align 4, !tbaa !12
  %50 = load i32, ptr %rlength.addr, align 4, !tbaa !12
  %cmp52 = icmp sle i32 %49, %50
  br i1 %cmp52, label %for.body54, label %for.end109

for.body54:                                       ; preds = %for.cond51
  %51 = load i32, ptr %r, align 4, !tbaa !12
  %52 = load i32, ptr %lband.addr, align 4, !tbaa !12
  %sub55 = sub nsw i32 %51, %52
  store i32 %sub55, ptr %clo, align 4, !tbaa !12
  %cmp56 = icmp slt i32 %sub55, 1
  br i1 %cmp56, label %if.then58, label %if.end59

if.then58:                                        ; preds = %for.body54
  store i32 1, ptr %clo, align 4, !tbaa !12
  br label %if.end59

if.end59:                                         ; preds = %if.then58, %for.body54
  %53 = load i32, ptr %r, align 4, !tbaa !12
  %54 = load i32, ptr %uband.addr, align 4, !tbaa !12
  %add60 = add nsw i32 %53, %54
  store i32 %add60, ptr %chigh, align 4, !tbaa !12
  %55 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %cmp61 = icmp sgt i32 %add60, %55
  br i1 %cmp61, label %if.then63, label %if.end64

if.then63:                                        ; preds = %if.end59
  %56 = load i32, ptr %glength.addr, align 4, !tbaa !12
  store i32 %56, ptr %chigh, align 4, !tbaa !12
  br label %if.end64

if.end64:                                         ; preds = %if.then63, %if.end59
  %57 = load i32, ptr %clo, align 4, !tbaa !12
  store i32 %57, ptr %c, align 4, !tbaa !12
  br label %for.cond65

for.cond65:                                       ; preds = %for.inc83, %if.end64
  %58 = load i32, ptr %c, align 4, !tbaa !12
  %59 = load i32, ptr %r, align 4, !tbaa !12
  %cmp66 = icmp slt i32 %58, %59
  br i1 %cmp66, label %for.body68, label %for.end85

for.body68:                                       ; preds = %for.cond65
  %60 = load ptr, ptr %matrix_lower.addr, align 8, !tbaa !5
  %61 = load i32, ptr %r, align 4, !tbaa !12
  %idxprom69 = sext i32 %61 to i64
  %arrayidx70 = getelementptr inbounds ptr, ptr %60, i64 %idxprom69
  %62 = load ptr, ptr %arrayidx70, align 8, !tbaa !5
  %63 = load i32, ptr %c, align 4, !tbaa !12
  %idxprom71 = sext i32 %63 to i64
  %arrayidx72 = getelementptr inbounds i16, ptr %62, i64 %idxprom71
  %64 = load i16, ptr %arrayidx72, align 2, !tbaa !30
  %conv73 = sext i16 %64 to i32
  %65 = load i16, ptr %bestscore, align 2, !tbaa !30
  %conv74 = sext i16 %65 to i32
  %cmp75 = icmp sge i32 %conv73, %conv74
  br i1 %cmp75, label %if.then77, label %if.end82

if.then77:                                        ; preds = %for.body68
  %66 = load i32, ptr %r, align 4, !tbaa !12
  %67 = load ptr, ptr %bestr.addr, align 8, !tbaa !5
  store i32 %66, ptr %67, align 4, !tbaa !12
  %68 = load i32, ptr %c, align 4, !tbaa !12
  %69 = load ptr, ptr %bestc.addr, align 8, !tbaa !5
  store i32 %68, ptr %69, align 4, !tbaa !12
  %70 = load ptr, ptr %matrix_lower.addr, align 8, !tbaa !5
  %71 = load i32, ptr %r, align 4, !tbaa !12
  %idxprom78 = sext i32 %71 to i64
  %arrayidx79 = getelementptr inbounds ptr, ptr %70, i64 %idxprom78
  %72 = load ptr, ptr %arrayidx79, align 8, !tbaa !5
  %73 = load i32, ptr %c, align 4, !tbaa !12
  %idxprom80 = sext i32 %73 to i64
  %arrayidx81 = getelementptr inbounds i16, ptr %72, i64 %idxprom80
  %74 = load i16, ptr %arrayidx81, align 2, !tbaa !30
  store i16 %74, ptr %bestscore, align 2, !tbaa !30
  br label %if.end82

if.end82:                                         ; preds = %if.then77, %for.body68
  br label %for.inc83

for.inc83:                                        ; preds = %if.end82
  %75 = load i32, ptr %c, align 4, !tbaa !12
  %inc84 = add nsw i32 %75, 1
  store i32 %inc84, ptr %c, align 4, !tbaa !12
  br label %for.cond65, !llvm.loop !35

for.end85:                                        ; preds = %for.cond65
  br label %for.cond86

for.cond86:                                       ; preds = %for.inc104, %for.end85
  %76 = load i32, ptr %c, align 4, !tbaa !12
  %77 = load i32, ptr %chigh, align 4, !tbaa !12
  %cmp87 = icmp sle i32 %76, %77
  br i1 %cmp87, label %for.body89, label %for.end106

for.body89:                                       ; preds = %for.cond86
  %78 = load ptr, ptr %matrix_upper.addr, align 8, !tbaa !5
  %79 = load i32, ptr %c, align 4, !tbaa !12
  %idxprom90 = sext i32 %79 to i64
  %arrayidx91 = getelementptr inbounds ptr, ptr %78, i64 %idxprom90
  %80 = load ptr, ptr %arrayidx91, align 8, !tbaa !5
  %81 = load i32, ptr %r, align 4, !tbaa !12
  %idxprom92 = sext i32 %81 to i64
  %arrayidx93 = getelementptr inbounds i16, ptr %80, i64 %idxprom92
  %82 = load i16, ptr %arrayidx93, align 2, !tbaa !30
  %conv94 = sext i16 %82 to i32
  %83 = load i16, ptr %bestscore, align 2, !tbaa !30
  %conv95 = sext i16 %83 to i32
  %cmp96 = icmp sge i32 %conv94, %conv95
  br i1 %cmp96, label %if.then98, label %if.end103

if.then98:                                        ; preds = %for.body89
  %84 = load i32, ptr %r, align 4, !tbaa !12
  %85 = load ptr, ptr %bestr.addr, align 8, !tbaa !5
  store i32 %84, ptr %85, align 4, !tbaa !12
  %86 = load i32, ptr %c, align 4, !tbaa !12
  %87 = load ptr, ptr %bestc.addr, align 8, !tbaa !5
  store i32 %86, ptr %87, align 4, !tbaa !12
  %88 = load ptr, ptr %matrix_upper.addr, align 8, !tbaa !5
  %89 = load i32, ptr %c, align 4, !tbaa !12
  %idxprom99 = sext i32 %89 to i64
  %arrayidx100 = getelementptr inbounds ptr, ptr %88, i64 %idxprom99
  %90 = load ptr, ptr %arrayidx100, align 8, !tbaa !5
  %91 = load i32, ptr %r, align 4, !tbaa !12
  %idxprom101 = sext i32 %91 to i64
  %arrayidx102 = getelementptr inbounds i16, ptr %90, i64 %idxprom101
  %92 = load i16, ptr %arrayidx102, align 2, !tbaa !30
  store i16 %92, ptr %bestscore, align 2, !tbaa !30
  br label %if.end103

if.end103:                                        ; preds = %if.then98, %for.body89
  br label %for.inc104

for.inc104:                                       ; preds = %if.end103
  %93 = load i32, ptr %c, align 4, !tbaa !12
  %inc105 = add nsw i32 %93, 1
  store i32 %inc105, ptr %c, align 4, !tbaa !12
  br label %for.cond86, !llvm.loop !36

for.end106:                                       ; preds = %for.cond86
  br label %for.inc107

for.inc107:                                       ; preds = %for.end106
  %94 = load i32, ptr %r, align 4, !tbaa !12
  %inc108 = add nsw i32 %94, 1
  store i32 %inc108, ptr %r, align 4, !tbaa !12
  br label %for.cond51, !llvm.loop !37

for.end109:                                       ; preds = %for.cond51
  br label %if.end110

if.end110:                                        ; preds = %for.end109, %for.end50
  %95 = load i16, ptr %bestscore, align 2, !tbaa !30
  %conv111 = sext i16 %95 to i32
  %96 = load ptr, ptr %finalscore.addr, align 8, !tbaa !5
  store i32 %conv111, ptr %96, align 4, !tbaa !12
  call void @llvm.lifetime.end.p0(i64 4, ptr %chigh) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %clo) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr %bestscore) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @find_best_endpoint_to_queryend_indels_8(ptr noundef %finalscore, ptr noundef %bestr, ptr noundef %bestc, ptr noundef %matrix_upper, ptr noundef %matrix_lower, i32 noundef %rlength, i32 noundef %glength, i32 noundef %lband, i32 noundef %uband, i8 noundef zeroext %jump_late_p) #1 {
entry:
  %finalscore.addr = alloca ptr, align 8
  %bestr.addr = alloca ptr, align 8
  %bestc.addr = alloca ptr, align 8
  %matrix_upper.addr = alloca ptr, align 8
  %matrix_lower.addr = alloca ptr, align 8
  %rlength.addr = alloca i32, align 4
  %glength.addr = alloca i32, align 4
  %lband.addr = alloca i32, align 4
  %uband.addr = alloca i32, align 4
  %jump_late_p.addr = alloca i8, align 1
  %bestscore = alloca i8, align 1
  %r = alloca i32, align 4
  %c = alloca i32, align 4
  %clo = alloca i32, align 4
  %chigh = alloca i32, align 4
  store ptr %finalscore, ptr %finalscore.addr, align 8, !tbaa !5
  store ptr %bestr, ptr %bestr.addr, align 8, !tbaa !5
  store ptr %bestc, ptr %bestc.addr, align 8, !tbaa !5
  store ptr %matrix_upper, ptr %matrix_upper.addr, align 8, !tbaa !5
  store ptr %matrix_lower, ptr %matrix_lower.addr, align 8, !tbaa !5
  store i32 %rlength, ptr %rlength.addr, align 4, !tbaa !12
  store i32 %glength, ptr %glength.addr, align 4, !tbaa !12
  store i32 %lband, ptr %lband.addr, align 4, !tbaa !12
  store i32 %uband, ptr %uband.addr, align 4, !tbaa !12
  store i8 %jump_late_p, ptr %jump_late_p.addr, align 1, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 1, ptr %bestscore) #5
  store i8 -128, ptr %bestscore, align 1, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %clo) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %chigh) #5
  %0 = load i32, ptr %rlength.addr, align 4, !tbaa !12
  store i32 %0, ptr %r, align 4, !tbaa !12
  %1 = load ptr, ptr %bestr.addr, align 8, !tbaa !5
  store i32 %0, ptr %1, align 4, !tbaa !12
  %2 = load ptr, ptr %bestc.addr, align 8, !tbaa !5
  store i32 0, ptr %2, align 4, !tbaa !12
  %3 = load i8, ptr %jump_late_p.addr, align 1, !tbaa !14
  %conv = zext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %r, align 4, !tbaa !12
  %5 = load i32, ptr %lband.addr, align 4, !tbaa !12
  %sub = sub nsw i32 %4, %5
  store i32 %sub, ptr %clo, align 4, !tbaa !12
  %cmp2 = icmp slt i32 %sub, 1
  br i1 %cmp2, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  store i32 1, ptr %clo, align 4, !tbaa !12
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then
  %6 = load i32, ptr %r, align 4, !tbaa !12
  %7 = load i32, ptr %uband.addr, align 4, !tbaa !12
  %add = add nsw i32 %6, %7
  store i32 %add, ptr %chigh, align 4, !tbaa !12
  %8 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %cmp5 = icmp sgt i32 %add, %8
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  %9 = load i32, ptr %glength.addr, align 4, !tbaa !12
  store i32 %9, ptr %chigh, align 4, !tbaa !12
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end
  %10 = load i32, ptr %clo, align 4, !tbaa !12
  store i32 %10, ptr %c, align 4, !tbaa !12
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end8
  %11 = load i32, ptr %c, align 4, !tbaa !12
  %12 = load i32, ptr %r, align 4, !tbaa !12
  %cmp9 = icmp slt i32 %11, %12
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load ptr, ptr %matrix_lower.addr, align 8, !tbaa !5
  %14 = load i32, ptr %r, align 4, !tbaa !12
  %idxprom = sext i32 %14 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %13, i64 %idxprom
  %15 = load ptr, ptr %arrayidx, align 8, !tbaa !5
  %16 = load i32, ptr %c, align 4, !tbaa !12
  %idxprom11 = sext i32 %16 to i64
  %arrayidx12 = getelementptr inbounds i8, ptr %15, i64 %idxprom11
  %17 = load i8, ptr %arrayidx12, align 1, !tbaa !14
  %conv13 = sext i8 %17 to i32
  %18 = load i8, ptr %bestscore, align 1, !tbaa !14
  %conv14 = sext i8 %18 to i32
  %cmp15 = icmp sgt i32 %conv13, %conv14
  br i1 %cmp15, label %if.then17, label %if.end22

if.then17:                                        ; preds = %for.body
  %19 = load i32, ptr %r, align 4, !tbaa !12
  %20 = load ptr, ptr %bestr.addr, align 8, !tbaa !5
  store i32 %19, ptr %20, align 4, !tbaa !12
  %21 = load i32, ptr %c, align 4, !tbaa !12
  %22 = load ptr, ptr %bestc.addr, align 8, !tbaa !5
  store i32 %21, ptr %22, align 4, !tbaa !12
  %23 = load ptr, ptr %matrix_lower.addr, align 8, !tbaa !5
  %24 = load i32, ptr %r, align 4, !tbaa !12
  %idxprom18 = sext i32 %24 to i64
  %arrayidx19 = getelementptr inbounds ptr, ptr %23, i64 %idxprom18
  %25 = load ptr, ptr %arrayidx19, align 8, !tbaa !5
  %26 = load i32, ptr %c, align 4, !tbaa !12
  %idxprom20 = sext i32 %26 to i64
  %arrayidx21 = getelementptr inbounds i8, ptr %25, i64 %idxprom20
  %27 = load i8, ptr %arrayidx21, align 1, !tbaa !14
  store i8 %27, ptr %bestscore, align 1, !tbaa !14
  br label %if.end22

if.end22:                                         ; preds = %if.then17, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end22
  %28 = load i32, ptr %c, align 4, !tbaa !12
  %inc = add nsw i32 %28, 1
  store i32 %inc, ptr %c, align 4, !tbaa !12
  br label %for.cond, !llvm.loop !38

for.end:                                          ; preds = %for.cond
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc41, %for.end
  %29 = load i32, ptr %c, align 4, !tbaa !12
  %30 = load i32, ptr %chigh, align 4, !tbaa !12
  %cmp24 = icmp sle i32 %29, %30
  br i1 %cmp24, label %for.body26, label %for.end43

for.body26:                                       ; preds = %for.cond23
  %31 = load ptr, ptr %matrix_upper.addr, align 8, !tbaa !5
  %32 = load i32, ptr %c, align 4, !tbaa !12
  %idxprom27 = sext i32 %32 to i64
  %arrayidx28 = getelementptr inbounds ptr, ptr %31, i64 %idxprom27
  %33 = load ptr, ptr %arrayidx28, align 8, !tbaa !5
  %34 = load i32, ptr %r, align 4, !tbaa !12
  %idxprom29 = sext i32 %34 to i64
  %arrayidx30 = getelementptr inbounds i8, ptr %33, i64 %idxprom29
  %35 = load i8, ptr %arrayidx30, align 1, !tbaa !14
  %conv31 = sext i8 %35 to i32
  %36 = load i8, ptr %bestscore, align 1, !tbaa !14
  %conv32 = sext i8 %36 to i32
  %cmp33 = icmp sgt i32 %conv31, %conv32
  br i1 %cmp33, label %if.then35, label %if.end40

if.then35:                                        ; preds = %for.body26
  %37 = load i32, ptr %r, align 4, !tbaa !12
  %38 = load ptr, ptr %bestr.addr, align 8, !tbaa !5
  store i32 %37, ptr %38, align 4, !tbaa !12
  %39 = load i32, ptr %c, align 4, !tbaa !12
  %40 = load ptr, ptr %bestc.addr, align 8, !tbaa !5
  store i32 %39, ptr %40, align 4, !tbaa !12
  %41 = load ptr, ptr %matrix_upper.addr, align 8, !tbaa !5
  %42 = load i32, ptr %c, align 4, !tbaa !12
  %idxprom36 = sext i32 %42 to i64
  %arrayidx37 = getelementptr inbounds ptr, ptr %41, i64 %idxprom36
  %43 = load ptr, ptr %arrayidx37, align 8, !tbaa !5
  %44 = load i32, ptr %r, align 4, !tbaa !12
  %idxprom38 = sext i32 %44 to i64
  %arrayidx39 = getelementptr inbounds i8, ptr %43, i64 %idxprom38
  %45 = load i8, ptr %arrayidx39, align 1, !tbaa !14
  store i8 %45, ptr %bestscore, align 1, !tbaa !14
  br label %if.end40

if.end40:                                         ; preds = %if.then35, %for.body26
  br label %for.inc41

for.inc41:                                        ; preds = %if.end40
  %46 = load i32, ptr %c, align 4, !tbaa !12
  %inc42 = add nsw i32 %46, 1
  store i32 %inc42, ptr %c, align 4, !tbaa !12
  br label %for.cond23, !llvm.loop !39

for.end43:                                        ; preds = %for.cond23
  br label %if.end96

if.else:                                          ; preds = %entry
  %47 = load i32, ptr %r, align 4, !tbaa !12
  %48 = load i32, ptr %lband.addr, align 4, !tbaa !12
  %sub44 = sub nsw i32 %47, %48
  store i32 %sub44, ptr %clo, align 4, !tbaa !12
  %cmp45 = icmp slt i32 %sub44, 1
  br i1 %cmp45, label %if.then47, label %if.end48

if.then47:                                        ; preds = %if.else
  store i32 1, ptr %clo, align 4, !tbaa !12
  br label %if.end48

if.end48:                                         ; preds = %if.then47, %if.else
  %49 = load i32, ptr %r, align 4, !tbaa !12
  %50 = load i32, ptr %uband.addr, align 4, !tbaa !12
  %add49 = add nsw i32 %49, %50
  store i32 %add49, ptr %chigh, align 4, !tbaa !12
  %51 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %cmp50 = icmp sgt i32 %add49, %51
  br i1 %cmp50, label %if.then52, label %if.end53

if.then52:                                        ; preds = %if.end48
  %52 = load i32, ptr %glength.addr, align 4, !tbaa !12
  store i32 %52, ptr %chigh, align 4, !tbaa !12
  br label %if.end53

if.end53:                                         ; preds = %if.then52, %if.end48
  %53 = load i32, ptr %clo, align 4, !tbaa !12
  store i32 %53, ptr %c, align 4, !tbaa !12
  br label %for.cond54

for.cond54:                                       ; preds = %for.inc72, %if.end53
  %54 = load i32, ptr %c, align 4, !tbaa !12
  %55 = load i32, ptr %r, align 4, !tbaa !12
  %cmp55 = icmp slt i32 %54, %55
  br i1 %cmp55, label %for.body57, label %for.end74

for.body57:                                       ; preds = %for.cond54
  %56 = load ptr, ptr %matrix_lower.addr, align 8, !tbaa !5
  %57 = load i32, ptr %r, align 4, !tbaa !12
  %idxprom58 = sext i32 %57 to i64
  %arrayidx59 = getelementptr inbounds ptr, ptr %56, i64 %idxprom58
  %58 = load ptr, ptr %arrayidx59, align 8, !tbaa !5
  %59 = load i32, ptr %c, align 4, !tbaa !12
  %idxprom60 = sext i32 %59 to i64
  %arrayidx61 = getelementptr inbounds i8, ptr %58, i64 %idxprom60
  %60 = load i8, ptr %arrayidx61, align 1, !tbaa !14
  %conv62 = sext i8 %60 to i32
  %61 = load i8, ptr %bestscore, align 1, !tbaa !14
  %conv63 = sext i8 %61 to i32
  %cmp64 = icmp sge i32 %conv62, %conv63
  br i1 %cmp64, label %if.then66, label %if.end71

if.then66:                                        ; preds = %for.body57
  %62 = load i32, ptr %r, align 4, !tbaa !12
  %63 = load ptr, ptr %bestr.addr, align 8, !tbaa !5
  store i32 %62, ptr %63, align 4, !tbaa !12
  %64 = load i32, ptr %c, align 4, !tbaa !12
  %65 = load ptr, ptr %bestc.addr, align 8, !tbaa !5
  store i32 %64, ptr %65, align 4, !tbaa !12
  %66 = load ptr, ptr %matrix_lower.addr, align 8, !tbaa !5
  %67 = load i32, ptr %r, align 4, !tbaa !12
  %idxprom67 = sext i32 %67 to i64
  %arrayidx68 = getelementptr inbounds ptr, ptr %66, i64 %idxprom67
  %68 = load ptr, ptr %arrayidx68, align 8, !tbaa !5
  %69 = load i32, ptr %c, align 4, !tbaa !12
  %idxprom69 = sext i32 %69 to i64
  %arrayidx70 = getelementptr inbounds i8, ptr %68, i64 %idxprom69
  %70 = load i8, ptr %arrayidx70, align 1, !tbaa !14
  store i8 %70, ptr %bestscore, align 1, !tbaa !14
  br label %if.end71

if.end71:                                         ; preds = %if.then66, %for.body57
  br label %for.inc72

for.inc72:                                        ; preds = %if.end71
  %71 = load i32, ptr %c, align 4, !tbaa !12
  %inc73 = add nsw i32 %71, 1
  store i32 %inc73, ptr %c, align 4, !tbaa !12
  br label %for.cond54, !llvm.loop !40

for.end74:                                        ; preds = %for.cond54
  br label %for.cond75

for.cond75:                                       ; preds = %for.inc93, %for.end74
  %72 = load i32, ptr %c, align 4, !tbaa !12
  %73 = load i32, ptr %chigh, align 4, !tbaa !12
  %cmp76 = icmp sle i32 %72, %73
  br i1 %cmp76, label %for.body78, label %for.end95

for.body78:                                       ; preds = %for.cond75
  %74 = load ptr, ptr %matrix_upper.addr, align 8, !tbaa !5
  %75 = load i32, ptr %c, align 4, !tbaa !12
  %idxprom79 = sext i32 %75 to i64
  %arrayidx80 = getelementptr inbounds ptr, ptr %74, i64 %idxprom79
  %76 = load ptr, ptr %arrayidx80, align 8, !tbaa !5
  %77 = load i32, ptr %r, align 4, !tbaa !12
  %idxprom81 = sext i32 %77 to i64
  %arrayidx82 = getelementptr inbounds i8, ptr %76, i64 %idxprom81
  %78 = load i8, ptr %arrayidx82, align 1, !tbaa !14
  %conv83 = sext i8 %78 to i32
  %79 = load i8, ptr %bestscore, align 1, !tbaa !14
  %conv84 = sext i8 %79 to i32
  %cmp85 = icmp sge i32 %conv83, %conv84
  br i1 %cmp85, label %if.then87, label %if.end92

if.then87:                                        ; preds = %for.body78
  %80 = load i32, ptr %r, align 4, !tbaa !12
  %81 = load ptr, ptr %bestr.addr, align 8, !tbaa !5
  store i32 %80, ptr %81, align 4, !tbaa !12
  %82 = load i32, ptr %c, align 4, !tbaa !12
  %83 = load ptr, ptr %bestc.addr, align 8, !tbaa !5
  store i32 %82, ptr %83, align 4, !tbaa !12
  %84 = load ptr, ptr %matrix_upper.addr, align 8, !tbaa !5
  %85 = load i32, ptr %c, align 4, !tbaa !12
  %idxprom88 = sext i32 %85 to i64
  %arrayidx89 = getelementptr inbounds ptr, ptr %84, i64 %idxprom88
  %86 = load ptr, ptr %arrayidx89, align 8, !tbaa !5
  %87 = load i32, ptr %r, align 4, !tbaa !12
  %idxprom90 = sext i32 %87 to i64
  %arrayidx91 = getelementptr inbounds i8, ptr %86, i64 %idxprom90
  %88 = load i8, ptr %arrayidx91, align 1, !tbaa !14
  store i8 %88, ptr %bestscore, align 1, !tbaa !14
  br label %if.end92

if.end92:                                         ; preds = %if.then87, %for.body78
  br label %for.inc93

for.inc93:                                        ; preds = %if.end92
  %89 = load i32, ptr %c, align 4, !tbaa !12
  %inc94 = add nsw i32 %89, 1
  store i32 %inc94, ptr %c, align 4, !tbaa !12
  br label %for.cond75, !llvm.loop !41

for.end95:                                        ; preds = %for.cond75
  br label %if.end96

if.end96:                                         ; preds = %for.end95, %for.end43
  %90 = load i8, ptr %bestscore, align 1, !tbaa !14
  %conv97 = sext i8 %90 to i32
  %91 = load ptr, ptr %finalscore.addr, align 8, !tbaa !5
  store i32 %conv97, ptr %91, align 4, !tbaa !12
  call void @llvm.lifetime.end.p0(i64 4, ptr %chigh) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %clo) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr %bestscore) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @find_best_endpoint_to_queryend_indels_16(ptr noundef %finalscore, ptr noundef %bestr, ptr noundef %bestc, ptr noundef %matrix_upper, ptr noundef %matrix_lower, i32 noundef %rlength, i32 noundef %glength, i32 noundef %lband, i32 noundef %uband, i8 noundef zeroext %jump_late_p) #1 {
entry:
  %finalscore.addr = alloca ptr, align 8
  %bestr.addr = alloca ptr, align 8
  %bestc.addr = alloca ptr, align 8
  %matrix_upper.addr = alloca ptr, align 8
  %matrix_lower.addr = alloca ptr, align 8
  %rlength.addr = alloca i32, align 4
  %glength.addr = alloca i32, align 4
  %lband.addr = alloca i32, align 4
  %uband.addr = alloca i32, align 4
  %jump_late_p.addr = alloca i8, align 1
  %bestscore = alloca i16, align 2
  %r = alloca i32, align 4
  %c = alloca i32, align 4
  %clo = alloca i32, align 4
  %chigh = alloca i32, align 4
  store ptr %finalscore, ptr %finalscore.addr, align 8, !tbaa !5
  store ptr %bestr, ptr %bestr.addr, align 8, !tbaa !5
  store ptr %bestc, ptr %bestc.addr, align 8, !tbaa !5
  store ptr %matrix_upper, ptr %matrix_upper.addr, align 8, !tbaa !5
  store ptr %matrix_lower, ptr %matrix_lower.addr, align 8, !tbaa !5
  store i32 %rlength, ptr %rlength.addr, align 4, !tbaa !12
  store i32 %glength, ptr %glength.addr, align 4, !tbaa !12
  store i32 %lband, ptr %lband.addr, align 4, !tbaa !12
  store i32 %uband, ptr %uband.addr, align 4, !tbaa !12
  store i8 %jump_late_p, ptr %jump_late_p.addr, align 1, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 2, ptr %bestscore) #5
  store i16 -32768, ptr %bestscore, align 2, !tbaa !30
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %clo) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %chigh) #5
  %0 = load i32, ptr %rlength.addr, align 4, !tbaa !12
  store i32 %0, ptr %r, align 4, !tbaa !12
  %1 = load ptr, ptr %bestr.addr, align 8, !tbaa !5
  store i32 %0, ptr %1, align 4, !tbaa !12
  %2 = load ptr, ptr %bestc.addr, align 8, !tbaa !5
  store i32 0, ptr %2, align 4, !tbaa !12
  %3 = load i8, ptr %jump_late_p.addr, align 1, !tbaa !14
  %conv = zext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %r, align 4, !tbaa !12
  %5 = load i32, ptr %lband.addr, align 4, !tbaa !12
  %sub = sub nsw i32 %4, %5
  store i32 %sub, ptr %clo, align 4, !tbaa !12
  %cmp2 = icmp slt i32 %sub, 1
  br i1 %cmp2, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  store i32 1, ptr %clo, align 4, !tbaa !12
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then
  %6 = load i32, ptr %r, align 4, !tbaa !12
  %7 = load i32, ptr %uband.addr, align 4, !tbaa !12
  %add = add nsw i32 %6, %7
  store i32 %add, ptr %chigh, align 4, !tbaa !12
  %8 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %cmp5 = icmp sgt i32 %add, %8
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  %9 = load i32, ptr %glength.addr, align 4, !tbaa !12
  store i32 %9, ptr %chigh, align 4, !tbaa !12
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end
  %10 = load i32, ptr %clo, align 4, !tbaa !12
  store i32 %10, ptr %c, align 4, !tbaa !12
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end8
  %11 = load i32, ptr %c, align 4, !tbaa !12
  %12 = load i32, ptr %r, align 4, !tbaa !12
  %cmp9 = icmp slt i32 %11, %12
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load ptr, ptr %matrix_lower.addr, align 8, !tbaa !5
  %14 = load i32, ptr %r, align 4, !tbaa !12
  %idxprom = sext i32 %14 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %13, i64 %idxprom
  %15 = load ptr, ptr %arrayidx, align 8, !tbaa !5
  %16 = load i32, ptr %c, align 4, !tbaa !12
  %idxprom11 = sext i32 %16 to i64
  %arrayidx12 = getelementptr inbounds i16, ptr %15, i64 %idxprom11
  %17 = load i16, ptr %arrayidx12, align 2, !tbaa !30
  %conv13 = sext i16 %17 to i32
  %18 = load i16, ptr %bestscore, align 2, !tbaa !30
  %conv14 = sext i16 %18 to i32
  %cmp15 = icmp sgt i32 %conv13, %conv14
  br i1 %cmp15, label %if.then17, label %if.end22

if.then17:                                        ; preds = %for.body
  %19 = load i32, ptr %r, align 4, !tbaa !12
  %20 = load ptr, ptr %bestr.addr, align 8, !tbaa !5
  store i32 %19, ptr %20, align 4, !tbaa !12
  %21 = load i32, ptr %c, align 4, !tbaa !12
  %22 = load ptr, ptr %bestc.addr, align 8, !tbaa !5
  store i32 %21, ptr %22, align 4, !tbaa !12
  %23 = load ptr, ptr %matrix_lower.addr, align 8, !tbaa !5
  %24 = load i32, ptr %r, align 4, !tbaa !12
  %idxprom18 = sext i32 %24 to i64
  %arrayidx19 = getelementptr inbounds ptr, ptr %23, i64 %idxprom18
  %25 = load ptr, ptr %arrayidx19, align 8, !tbaa !5
  %26 = load i32, ptr %c, align 4, !tbaa !12
  %idxprom20 = sext i32 %26 to i64
  %arrayidx21 = getelementptr inbounds i16, ptr %25, i64 %idxprom20
  %27 = load i16, ptr %arrayidx21, align 2, !tbaa !30
  store i16 %27, ptr %bestscore, align 2, !tbaa !30
  br label %if.end22

if.end22:                                         ; preds = %if.then17, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end22
  %28 = load i32, ptr %c, align 4, !tbaa !12
  %inc = add nsw i32 %28, 1
  store i32 %inc, ptr %c, align 4, !tbaa !12
  br label %for.cond, !llvm.loop !42

for.end:                                          ; preds = %for.cond
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc41, %for.end
  %29 = load i32, ptr %c, align 4, !tbaa !12
  %30 = load i32, ptr %chigh, align 4, !tbaa !12
  %cmp24 = icmp sle i32 %29, %30
  br i1 %cmp24, label %for.body26, label %for.end43

for.body26:                                       ; preds = %for.cond23
  %31 = load ptr, ptr %matrix_upper.addr, align 8, !tbaa !5
  %32 = load i32, ptr %c, align 4, !tbaa !12
  %idxprom27 = sext i32 %32 to i64
  %arrayidx28 = getelementptr inbounds ptr, ptr %31, i64 %idxprom27
  %33 = load ptr, ptr %arrayidx28, align 8, !tbaa !5
  %34 = load i32, ptr %r, align 4, !tbaa !12
  %idxprom29 = sext i32 %34 to i64
  %arrayidx30 = getelementptr inbounds i16, ptr %33, i64 %idxprom29
  %35 = load i16, ptr %arrayidx30, align 2, !tbaa !30
  %conv31 = sext i16 %35 to i32
  %36 = load i16, ptr %bestscore, align 2, !tbaa !30
  %conv32 = sext i16 %36 to i32
  %cmp33 = icmp sgt i32 %conv31, %conv32
  br i1 %cmp33, label %if.then35, label %if.end40

if.then35:                                        ; preds = %for.body26
  %37 = load i32, ptr %r, align 4, !tbaa !12
  %38 = load ptr, ptr %bestr.addr, align 8, !tbaa !5
  store i32 %37, ptr %38, align 4, !tbaa !12
  %39 = load i32, ptr %c, align 4, !tbaa !12
  %40 = load ptr, ptr %bestc.addr, align 8, !tbaa !5
  store i32 %39, ptr %40, align 4, !tbaa !12
  %41 = load ptr, ptr %matrix_upper.addr, align 8, !tbaa !5
  %42 = load i32, ptr %c, align 4, !tbaa !12
  %idxprom36 = sext i32 %42 to i64
  %arrayidx37 = getelementptr inbounds ptr, ptr %41, i64 %idxprom36
  %43 = load ptr, ptr %arrayidx37, align 8, !tbaa !5
  %44 = load i32, ptr %r, align 4, !tbaa !12
  %idxprom38 = sext i32 %44 to i64
  %arrayidx39 = getelementptr inbounds i16, ptr %43, i64 %idxprom38
  %45 = load i16, ptr %arrayidx39, align 2, !tbaa !30
  store i16 %45, ptr %bestscore, align 2, !tbaa !30
  br label %if.end40

if.end40:                                         ; preds = %if.then35, %for.body26
  br label %for.inc41

for.inc41:                                        ; preds = %if.end40
  %46 = load i32, ptr %c, align 4, !tbaa !12
  %inc42 = add nsw i32 %46, 1
  store i32 %inc42, ptr %c, align 4, !tbaa !12
  br label %for.cond23, !llvm.loop !43

for.end43:                                        ; preds = %for.cond23
  br label %if.end96

if.else:                                          ; preds = %entry
  %47 = load i32, ptr %r, align 4, !tbaa !12
  %48 = load i32, ptr %lband.addr, align 4, !tbaa !12
  %sub44 = sub nsw i32 %47, %48
  store i32 %sub44, ptr %clo, align 4, !tbaa !12
  %cmp45 = icmp slt i32 %sub44, 1
  br i1 %cmp45, label %if.then47, label %if.end48

if.then47:                                        ; preds = %if.else
  store i32 1, ptr %clo, align 4, !tbaa !12
  br label %if.end48

if.end48:                                         ; preds = %if.then47, %if.else
  %49 = load i32, ptr %r, align 4, !tbaa !12
  %50 = load i32, ptr %uband.addr, align 4, !tbaa !12
  %add49 = add nsw i32 %49, %50
  store i32 %add49, ptr %chigh, align 4, !tbaa !12
  %51 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %cmp50 = icmp sgt i32 %add49, %51
  br i1 %cmp50, label %if.then52, label %if.end53

if.then52:                                        ; preds = %if.end48
  %52 = load i32, ptr %glength.addr, align 4, !tbaa !12
  store i32 %52, ptr %chigh, align 4, !tbaa !12
  br label %if.end53

if.end53:                                         ; preds = %if.then52, %if.end48
  %53 = load i32, ptr %clo, align 4, !tbaa !12
  store i32 %53, ptr %c, align 4, !tbaa !12
  br label %for.cond54

for.cond54:                                       ; preds = %for.inc72, %if.end53
  %54 = load i32, ptr %c, align 4, !tbaa !12
  %55 = load i32, ptr %r, align 4, !tbaa !12
  %cmp55 = icmp slt i32 %54, %55
  br i1 %cmp55, label %for.body57, label %for.end74

for.body57:                                       ; preds = %for.cond54
  %56 = load ptr, ptr %matrix_lower.addr, align 8, !tbaa !5
  %57 = load i32, ptr %r, align 4, !tbaa !12
  %idxprom58 = sext i32 %57 to i64
  %arrayidx59 = getelementptr inbounds ptr, ptr %56, i64 %idxprom58
  %58 = load ptr, ptr %arrayidx59, align 8, !tbaa !5
  %59 = load i32, ptr %c, align 4, !tbaa !12
  %idxprom60 = sext i32 %59 to i64
  %arrayidx61 = getelementptr inbounds i16, ptr %58, i64 %idxprom60
  %60 = load i16, ptr %arrayidx61, align 2, !tbaa !30
  %conv62 = sext i16 %60 to i32
  %61 = load i16, ptr %bestscore, align 2, !tbaa !30
  %conv63 = sext i16 %61 to i32
  %cmp64 = icmp sge i32 %conv62, %conv63
  br i1 %cmp64, label %if.then66, label %if.end71

if.then66:                                        ; preds = %for.body57
  %62 = load i32, ptr %r, align 4, !tbaa !12
  %63 = load ptr, ptr %bestr.addr, align 8, !tbaa !5
  store i32 %62, ptr %63, align 4, !tbaa !12
  %64 = load i32, ptr %c, align 4, !tbaa !12
  %65 = load ptr, ptr %bestc.addr, align 8, !tbaa !5
  store i32 %64, ptr %65, align 4, !tbaa !12
  %66 = load ptr, ptr %matrix_lower.addr, align 8, !tbaa !5
  %67 = load i32, ptr %r, align 4, !tbaa !12
  %idxprom67 = sext i32 %67 to i64
  %arrayidx68 = getelementptr inbounds ptr, ptr %66, i64 %idxprom67
  %68 = load ptr, ptr %arrayidx68, align 8, !tbaa !5
  %69 = load i32, ptr %c, align 4, !tbaa !12
  %idxprom69 = sext i32 %69 to i64
  %arrayidx70 = getelementptr inbounds i16, ptr %68, i64 %idxprom69
  %70 = load i16, ptr %arrayidx70, align 2, !tbaa !30
  store i16 %70, ptr %bestscore, align 2, !tbaa !30
  br label %if.end71

if.end71:                                         ; preds = %if.then66, %for.body57
  br label %for.inc72

for.inc72:                                        ; preds = %if.end71
  %71 = load i32, ptr %c, align 4, !tbaa !12
  %inc73 = add nsw i32 %71, 1
  store i32 %inc73, ptr %c, align 4, !tbaa !12
  br label %for.cond54, !llvm.loop !44

for.end74:                                        ; preds = %for.cond54
  br label %for.cond75

for.cond75:                                       ; preds = %for.inc93, %for.end74
  %72 = load i32, ptr %c, align 4, !tbaa !12
  %73 = load i32, ptr %chigh, align 4, !tbaa !12
  %cmp76 = icmp sle i32 %72, %73
  br i1 %cmp76, label %for.body78, label %for.end95

for.body78:                                       ; preds = %for.cond75
  %74 = load ptr, ptr %matrix_upper.addr, align 8, !tbaa !5
  %75 = load i32, ptr %c, align 4, !tbaa !12
  %idxprom79 = sext i32 %75 to i64
  %arrayidx80 = getelementptr inbounds ptr, ptr %74, i64 %idxprom79
  %76 = load ptr, ptr %arrayidx80, align 8, !tbaa !5
  %77 = load i32, ptr %r, align 4, !tbaa !12
  %idxprom81 = sext i32 %77 to i64
  %arrayidx82 = getelementptr inbounds i16, ptr %76, i64 %idxprom81
  %78 = load i16, ptr %arrayidx82, align 2, !tbaa !30
  %conv83 = sext i16 %78 to i32
  %79 = load i16, ptr %bestscore, align 2, !tbaa !30
  %conv84 = sext i16 %79 to i32
  %cmp85 = icmp sge i32 %conv83, %conv84
  br i1 %cmp85, label %if.then87, label %if.end92

if.then87:                                        ; preds = %for.body78
  %80 = load i32, ptr %r, align 4, !tbaa !12
  %81 = load ptr, ptr %bestr.addr, align 8, !tbaa !5
  store i32 %80, ptr %81, align 4, !tbaa !12
  %82 = load i32, ptr %c, align 4, !tbaa !12
  %83 = load ptr, ptr %bestc.addr, align 8, !tbaa !5
  store i32 %82, ptr %83, align 4, !tbaa !12
  %84 = load ptr, ptr %matrix_upper.addr, align 8, !tbaa !5
  %85 = load i32, ptr %c, align 4, !tbaa !12
  %idxprom88 = sext i32 %85 to i64
  %arrayidx89 = getelementptr inbounds ptr, ptr %84, i64 %idxprom88
  %86 = load ptr, ptr %arrayidx89, align 8, !tbaa !5
  %87 = load i32, ptr %r, align 4, !tbaa !12
  %idxprom90 = sext i32 %87 to i64
  %arrayidx91 = getelementptr inbounds i16, ptr %86, i64 %idxprom90
  %88 = load i16, ptr %arrayidx91, align 2, !tbaa !30
  store i16 %88, ptr %bestscore, align 2, !tbaa !30
  br label %if.end92

if.end92:                                         ; preds = %if.then87, %for.body78
  br label %for.inc93

for.inc93:                                        ; preds = %if.end92
  %89 = load i32, ptr %c, align 4, !tbaa !12
  %inc94 = add nsw i32 %89, 1
  store i32 %inc94, ptr %c, align 4, !tbaa !12
  br label %for.cond75, !llvm.loop !45

for.end95:                                        ; preds = %for.cond75
  br label %if.end96

if.end96:                                         ; preds = %for.end95, %for.end43
  %90 = load i16, ptr %bestscore, align 2, !tbaa !30
  %conv97 = sext i16 %90 to i32
  %91 = load ptr, ptr %finalscore.addr, align 8, !tbaa !5
  store i32 %conv97, ptr %91, align 4, !tbaa !12
  call void @llvm.lifetime.end.p0(i64 4, ptr %chigh) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %clo) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr %bestscore) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @find_best_endpoint_to_queryend_nogaps(ptr noundef %bestr, ptr noundef %bestc, i32 noundef %rlength, i32 noundef %glength) #1 {
entry:
  %bestr.addr = alloca ptr, align 8
  %bestc.addr = alloca ptr, align 8
  %rlength.addr = alloca i32, align 4
  %glength.addr = alloca i32, align 4
  store ptr %bestr, ptr %bestr.addr, align 8, !tbaa !5
  store ptr %bestc, ptr %bestc.addr, align 8, !tbaa !5
  store i32 %rlength, ptr %rlength.addr, align 4, !tbaa !12
  store i32 %glength, ptr %glength.addr, align 4, !tbaa !12
  %0 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %1 = load i32, ptr %rlength.addr, align 4, !tbaa !12
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %3 = load ptr, ptr %bestr.addr, align 8, !tbaa !5
  store i32 %2, ptr %3, align 4, !tbaa !12
  %4 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %5 = load ptr, ptr %bestc.addr, align 8, !tbaa !5
  store i32 %4, ptr %5, align 4, !tbaa !12
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load i32, ptr %rlength.addr, align 4, !tbaa !12
  %7 = load ptr, ptr %bestr.addr, align 8, !tbaa !5
  store i32 %6, ptr %7, align 4, !tbaa !12
  %8 = load i32, ptr %rlength.addr, align 4, !tbaa !12
  %9 = load ptr, ptr %bestc.addr, align 8, !tbaa !5
  store i32 %8, ptr %9, align 4, !tbaa !12
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #3

; Function Attrs: noreturn nounwind
declare void @abort() #4

; Function Attrs: nounwind uwtable
define internal ptr @traceback_nogaps(ptr noundef %pairs, ptr noundef %traceback_score, ptr noundef %nmatches, ptr noundef %nmismatches, i32 noundef %r, i32 noundef %c, ptr noundef %rsequence, ptr noundef %rsequenceuc, ptr noundef %gsequence, ptr noundef %gsequence_alt, i32 noundef %queryoffset, i32 noundef %genomeoffset, ptr noundef %pairpool, i32 noundef %genestrand, i8 noundef zeroext %revp, i32 noundef %dynprogindex) #1 {
entry:
  %pairs.addr = alloca ptr, align 8
  %traceback_score.addr = alloca ptr, align 8
  %nmatches.addr = alloca ptr, align 8
  %nmismatches.addr = alloca ptr, align 8
  %r.addr = alloca i32, align 4
  %c.addr = alloca i32, align 4
  %rsequence.addr = alloca ptr, align 8
  %rsequenceuc.addr = alloca ptr, align 8
  %gsequence.addr = alloca ptr, align 8
  %gsequence_alt.addr = alloca ptr, align 8
  %queryoffset.addr = alloca i32, align 4
  %genomeoffset.addr = alloca i32, align 4
  %pairpool.addr = alloca ptr, align 8
  %genestrand.addr = alloca i32, align 4
  %revp.addr = alloca i8, align 1
  %dynprogindex.addr = alloca i32, align 4
  %c1 = alloca i8, align 1
  %c1_uc = alloca i8, align 1
  %c2 = alloca i8, align 1
  %c2_alt = alloca i8, align 1
  %querycoord = alloca i32, align 4
  %genomecoord = alloca i32, align 4
  store ptr %pairs, ptr %pairs.addr, align 8, !tbaa !5
  store ptr %traceback_score, ptr %traceback_score.addr, align 8, !tbaa !5
  store ptr %nmatches, ptr %nmatches.addr, align 8, !tbaa !5
  store ptr %nmismatches, ptr %nmismatches.addr, align 8, !tbaa !5
  store i32 %r, ptr %r.addr, align 4, !tbaa !12
  store i32 %c, ptr %c.addr, align 4, !tbaa !12
  store ptr %rsequence, ptr %rsequence.addr, align 8, !tbaa !5
  store ptr %rsequenceuc, ptr %rsequenceuc.addr, align 8, !tbaa !5
  store ptr %gsequence, ptr %gsequence.addr, align 8, !tbaa !5
  store ptr %gsequence_alt, ptr %gsequence_alt.addr, align 8, !tbaa !5
  store i32 %queryoffset, ptr %queryoffset.addr, align 4, !tbaa !12
  store i32 %genomeoffset, ptr %genomeoffset.addr, align 4, !tbaa !12
  store ptr %pairpool, ptr %pairpool.addr, align 8, !tbaa !5
  store i32 %genestrand, ptr %genestrand.addr, align 4, !tbaa !12
  store i8 %revp, ptr %revp.addr, align 1, !tbaa !14
  store i32 %dynprogindex, ptr %dynprogindex.addr, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 1, ptr %c1) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr %c1_uc) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr %c2) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr %c2_alt) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %querycoord) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %genomecoord) #5
  br label %while.cond

while.cond:                                       ; preds = %if.end51, %entry
  %0 = load i32, ptr %r.addr, align 4, !tbaa !12
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %1 = load i32, ptr %c.addr, align 4, !tbaa !12
  %cmp1 = icmp sgt i32 %1, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %2 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %2, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %3 = load i32, ptr %r.addr, align 4, !tbaa !12
  %sub = sub nsw i32 %3, 1
  store i32 %sub, ptr %querycoord, align 4, !tbaa !12
  %4 = load i32, ptr %c.addr, align 4, !tbaa !12
  %sub2 = sub nsw i32 %4, 1
  store i32 %sub2, ptr %genomecoord, align 4, !tbaa !12
  %5 = load i8, ptr %revp.addr, align 1, !tbaa !14
  %conv = zext i8 %5 to i32
  %cmp3 = icmp eq i32 %conv, 1
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %6 = load i32, ptr %querycoord, align 4, !tbaa !12
  %sub5 = sub nsw i32 0, %6
  store i32 %sub5, ptr %querycoord, align 4, !tbaa !12
  %7 = load i32, ptr %genomecoord, align 4, !tbaa !12
  %sub6 = sub nsw i32 0, %7
  store i32 %sub6, ptr %genomecoord, align 4, !tbaa !12
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %8 = load ptr, ptr %rsequence.addr, align 8, !tbaa !5
  %9 = load i32, ptr %querycoord, align 4, !tbaa !12
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds i8, ptr %8, i64 %idxprom
  %10 = load i8, ptr %arrayidx, align 1, !tbaa !14
  store i8 %10, ptr %c1, align 1, !tbaa !14
  %11 = load ptr, ptr %rsequenceuc.addr, align 8, !tbaa !5
  %12 = load i32, ptr %querycoord, align 4, !tbaa !12
  %idxprom7 = sext i32 %12 to i64
  %arrayidx8 = getelementptr inbounds i8, ptr %11, i64 %idxprom7
  %13 = load i8, ptr %arrayidx8, align 1, !tbaa !14
  store i8 %13, ptr %c1_uc, align 1, !tbaa !14
  %14 = load ptr, ptr %gsequence.addr, align 8, !tbaa !5
  %15 = load i32, ptr %genomecoord, align 4, !tbaa !12
  %idxprom9 = sext i32 %15 to i64
  %arrayidx10 = getelementptr inbounds i8, ptr %14, i64 %idxprom9
  %16 = load i8, ptr %arrayidx10, align 1, !tbaa !14
  store i8 %16, ptr %c2, align 1, !tbaa !14
  %17 = load ptr, ptr %gsequence_alt.addr, align 8, !tbaa !5
  %18 = load i32, ptr %genomecoord, align 4, !tbaa !12
  %idxprom11 = sext i32 %18 to i64
  %arrayidx12 = getelementptr inbounds i8, ptr %17, i64 %idxprom11
  %19 = load i8, ptr %arrayidx12, align 1, !tbaa !14
  store i8 %19, ptr %c2_alt, align 1, !tbaa !14
  %20 = load i8, ptr %c2, align 1, !tbaa !14
  %conv13 = sext i8 %20 to i32
  %cmp14 = icmp eq i32 %conv13, 42
  br i1 %cmp14, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.end
  br label %if.end51

if.else:                                          ; preds = %if.end
  %21 = load i8, ptr %c1_uc, align 1, !tbaa !14
  %conv17 = sext i8 %21 to i32
  %22 = load i8, ptr %c2, align 1, !tbaa !14
  %conv18 = sext i8 %22 to i32
  %cmp19 = icmp eq i32 %conv17, %conv18
  br i1 %cmp19, label %if.then25, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %23 = load i8, ptr %c1_uc, align 1, !tbaa !14
  %conv21 = sext i8 %23 to i32
  %24 = load i8, ptr %c2_alt, align 1, !tbaa !14
  %conv22 = sext i8 %24 to i32
  %cmp23 = icmp eq i32 %conv21, %conv22
  br i1 %cmp23, label %if.then25, label %if.else29

if.then25:                                        ; preds = %lor.lhs.false, %if.else
  %25 = load ptr, ptr %traceback_score.addr, align 8, !tbaa !5
  %26 = load i32, ptr %25, align 4, !tbaa !12
  %add = add nsw i32 %26, 1
  store i32 %add, ptr %25, align 4, !tbaa !12
  %27 = load ptr, ptr %nmatches.addr, align 8, !tbaa !5
  %28 = load i32, ptr %27, align 4, !tbaa !12
  %add26 = add nsw i32 %28, 1
  store i32 %add26, ptr %27, align 4, !tbaa !12
  %29 = load ptr, ptr %pairs.addr, align 8, !tbaa !5
  %30 = load ptr, ptr %pairpool.addr, align 8, !tbaa !5
  %31 = load i32, ptr %queryoffset.addr, align 4, !tbaa !12
  %32 = load i32, ptr %querycoord, align 4, !tbaa !12
  %add27 = add nsw i32 %31, %32
  %33 = load i32, ptr %genomeoffset.addr, align 4, !tbaa !12
  %34 = load i32, ptr %genomecoord, align 4, !tbaa !12
  %add28 = add nsw i32 %33, %34
  %35 = load i8, ptr %c1, align 1, !tbaa !14
  %36 = load i8, ptr %c2, align 1, !tbaa !14
  %37 = load i8, ptr %c2_alt, align 1, !tbaa !14
  %38 = load i32, ptr %dynprogindex.addr, align 4, !tbaa !12
  %call = call ptr @Pairpool_push(ptr noundef %29, ptr noundef %30, i32 noundef %add27, i32 noundef %add28, i8 noundef signext %35, i8 noundef signext 42, i8 noundef signext %36, i8 noundef signext %37, i32 noundef %38)
  store ptr %call, ptr %pairs.addr, align 8, !tbaa !5
  br label %if.end50

if.else29:                                        ; preds = %lor.lhs.false
  %39 = load i8, ptr %c1_uc, align 1, !tbaa !14
  %conv30 = sext i8 %39 to i32
  %40 = load i8, ptr %c2, align 1, !tbaa !14
  %conv31 = sext i8 %40 to i32
  %41 = load i8, ptr %c2_alt, align 1, !tbaa !14
  %conv32 = sext i8 %41 to i32
  %42 = load i32, ptr %genestrand.addr, align 4, !tbaa !12
  %call33 = call zeroext i8 @Dynprog_consistent_p(i32 noundef %conv30, i32 noundef %conv31, i32 noundef %conv32, i32 noundef %42)
  %conv34 = zext i8 %call33 to i32
  %cmp35 = icmp eq i32 %conv34, 1
  br i1 %cmp35, label %if.then37, label %if.else43

if.then37:                                        ; preds = %if.else29
  %43 = load ptr, ptr %traceback_score.addr, align 8, !tbaa !5
  %44 = load i32, ptr %43, align 4, !tbaa !12
  %add38 = add nsw i32 %44, 1
  store i32 %add38, ptr %43, align 4, !tbaa !12
  %45 = load ptr, ptr %nmatches.addr, align 8, !tbaa !5
  %46 = load i32, ptr %45, align 4, !tbaa !12
  %add39 = add nsw i32 %46, 1
  store i32 %add39, ptr %45, align 4, !tbaa !12
  %47 = load ptr, ptr %pairs.addr, align 8, !tbaa !5
  %48 = load ptr, ptr %pairpool.addr, align 8, !tbaa !5
  %49 = load i32, ptr %queryoffset.addr, align 4, !tbaa !12
  %50 = load i32, ptr %querycoord, align 4, !tbaa !12
  %add40 = add nsw i32 %49, %50
  %51 = load i32, ptr %genomeoffset.addr, align 4, !tbaa !12
  %52 = load i32, ptr %genomecoord, align 4, !tbaa !12
  %add41 = add nsw i32 %51, %52
  %53 = load i8, ptr %c1, align 1, !tbaa !14
  %54 = load i8, ptr %c2, align 1, !tbaa !14
  %55 = load i8, ptr %c2_alt, align 1, !tbaa !14
  %56 = load i32, ptr %dynprogindex.addr, align 4, !tbaa !12
  %call42 = call ptr @Pairpool_push(ptr noundef %47, ptr noundef %48, i32 noundef %add40, i32 noundef %add41, i8 noundef signext %53, i8 noundef signext 58, i8 noundef signext %54, i8 noundef signext %55, i32 noundef %56)
  store ptr %call42, ptr %pairs.addr, align 8, !tbaa !5
  br label %if.end49

if.else43:                                        ; preds = %if.else29
  %57 = load ptr, ptr %traceback_score.addr, align 8, !tbaa !5
  %58 = load i32, ptr %57, align 4, !tbaa !12
  %add44 = add nsw i32 %58, -3
  store i32 %add44, ptr %57, align 4, !tbaa !12
  %59 = load ptr, ptr %nmismatches.addr, align 8, !tbaa !5
  %60 = load i32, ptr %59, align 4, !tbaa !12
  %add45 = add nsw i32 %60, 1
  store i32 %add45, ptr %59, align 4, !tbaa !12
  %61 = load ptr, ptr %pairs.addr, align 8, !tbaa !5
  %62 = load ptr, ptr %pairpool.addr, align 8, !tbaa !5
  %63 = load i32, ptr %queryoffset.addr, align 4, !tbaa !12
  %64 = load i32, ptr %querycoord, align 4, !tbaa !12
  %add46 = add nsw i32 %63, %64
  %65 = load i32, ptr %genomeoffset.addr, align 4, !tbaa !12
  %66 = load i32, ptr %genomecoord, align 4, !tbaa !12
  %add47 = add nsw i32 %65, %66
  %67 = load i8, ptr %c1, align 1, !tbaa !14
  %68 = load i8, ptr %c2, align 1, !tbaa !14
  %69 = load i8, ptr %c2_alt, align 1, !tbaa !14
  %70 = load i32, ptr %dynprogindex.addr, align 4, !tbaa !12
  %call48 = call ptr @Pairpool_push(ptr noundef %61, ptr noundef %62, i32 noundef %add46, i32 noundef %add47, i8 noundef signext %67, i8 noundef signext 32, i8 noundef signext %68, i8 noundef signext %69, i32 noundef %70)
  store ptr %call48, ptr %pairs.addr, align 8, !tbaa !5
  br label %if.end49

if.end49:                                         ; preds = %if.else43, %if.then37
  br label %if.end50

if.end50:                                         ; preds = %if.end49, %if.then25
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %if.then16
  %71 = load i32, ptr %r.addr, align 4, !tbaa !12
  %dec = add nsw i32 %71, -1
  store i32 %dec, ptr %r.addr, align 4, !tbaa !12
  %72 = load i32, ptr %c.addr, align 4, !tbaa !12
  %dec52 = add nsw i32 %72, -1
  store i32 %dec52, ptr %c.addr, align 4, !tbaa !12
  br label %while.cond, !llvm.loop !46

while.end:                                        ; preds = %land.end
  %73 = load ptr, ptr %pairs.addr, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 4, ptr %genomecoord) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %querycoord) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr %c2_alt) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr %c2) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr %c1_uc) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr %c1) #5
  ret ptr %73
}

declare ptr @Dynprog_traceback_8_upper(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i32 noundef) #3

declare ptr @Dynprog_traceback_8_lower(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef) #3

declare ptr @Dynprog_traceback_16_upper(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i32 noundef) #3

declare ptr @Dynprog_traceback_16_lower(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef) #3

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
  br label %for.cond, !llvm.loop !47

for.end:                                          ; preds = %for.cond
  %7 = load ptr, ptr %head, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %head) #5
  ret ptr %7
}

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

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local ptr @Dynprog_end5_splicejunction(ptr noundef %dynprogindex, ptr noundef %traceback_score, ptr noundef %missscore, ptr noundef %nmatches, ptr noundef %nmismatches, ptr noundef %nopens, ptr noundef %nindels, ptr noundef %dynprog, ptr noundef %rev_rsequence, ptr noundef %rev_rsequenceuc, ptr noundef %rev_gsequence, ptr noundef %rev_gsequence_alt, i32 noundef %rlength, i32 noundef %glength, i32 noundef %rev_roffset, i32 noundef %rev_goffset_anchor, i32 noundef %rev_goffset_far, i32 noundef %chroffset, i32 noundef %chrhigh, i8 noundef zeroext %watsonp, i32 noundef %genestrand, i8 noundef zeroext %jump_late_p, ptr noundef %genome, ptr noundef %genomealt, ptr noundef %pairpool, i32 noundef %extraband_end, double noundef %defect_rate, i32 noundef %contlength) #1 {
entry:
  %retval = alloca ptr, align 8
  %dynprogindex.addr = alloca ptr, align 8
  %traceback_score.addr = alloca ptr, align 8
  %missscore.addr = alloca ptr, align 8
  %nmatches.addr = alloca ptr, align 8
  %nmismatches.addr = alloca ptr, align 8
  %nopens.addr = alloca ptr, align 8
  %nindels.addr = alloca ptr, align 8
  %dynprog.addr = alloca ptr, align 8
  %rev_rsequence.addr = alloca ptr, align 8
  %rev_rsequenceuc.addr = alloca ptr, align 8
  %rev_gsequence.addr = alloca ptr, align 8
  %rev_gsequence_alt.addr = alloca ptr, align 8
  %rlength.addr = alloca i32, align 4
  %glength.addr = alloca i32, align 4
  %rev_roffset.addr = alloca i32, align 4
  %rev_goffset_anchor.addr = alloca i32, align 4
  %rev_goffset_far.addr = alloca i32, align 4
  %chroffset.addr = alloca i32, align 4
  %chrhigh.addr = alloca i32, align 4
  %watsonp.addr = alloca i8, align 1
  %genestrand.addr = alloca i32, align 4
  %jump_late_p.addr = alloca i8, align 1
  %genome.addr = alloca ptr, align 8
  %genomealt.addr = alloca ptr, align 8
  %pairpool.addr = alloca ptr, align 8
  %extraband_end.addr = alloca i32, align 4
  %defect_rate.addr = alloca double, align 8
  %contlength.addr = alloca i32, align 4
  %pairs = alloca ptr, align 8
  %pair = alloca ptr, align 8
  %mismatchtype = alloca i32, align 4
  %bestr = alloca i32, align 4
  %bestc = alloca i32, align 4
  %lband = alloca i32, align 4
  %uband = alloca i32, align 4
  %open = alloca i32, align 4
  %extend = alloca i32, align 4
  %finalscore = alloca i32, align 4
  %use8p = alloca i8, align 1
  %matrix8_upper = alloca ptr, align 8
  %matrix8_lower = alloca ptr, align 8
  %directions8_upper_nogap = alloca ptr, align 8
  %directions8_upper_Egap = alloca ptr, align 8
  %directions8_lower_nogap = alloca ptr, align 8
  %directions8_lower_Egap = alloca ptr, align 8
  %matrix16_upper = alloca ptr, align 8
  %matrix16_lower = alloca ptr, align 8
  %directions16_upper_nogap = alloca ptr, align 8
  %directions16_upper_Egap = alloca ptr, align 8
  %directions16_lower_nogap = alloca ptr, align 8
  %directions16_lower_Egap = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dynprogindex, ptr %dynprogindex.addr, align 8, !tbaa !5
  store ptr %traceback_score, ptr %traceback_score.addr, align 8, !tbaa !5
  store ptr %missscore, ptr %missscore.addr, align 8, !tbaa !5
  store ptr %nmatches, ptr %nmatches.addr, align 8, !tbaa !5
  store ptr %nmismatches, ptr %nmismatches.addr, align 8, !tbaa !5
  store ptr %nopens, ptr %nopens.addr, align 8, !tbaa !5
  store ptr %nindels, ptr %nindels.addr, align 8, !tbaa !5
  store ptr %dynprog, ptr %dynprog.addr, align 8, !tbaa !5
  store ptr %rev_rsequence, ptr %rev_rsequence.addr, align 8, !tbaa !5
  store ptr %rev_rsequenceuc, ptr %rev_rsequenceuc.addr, align 8, !tbaa !5
  store ptr %rev_gsequence, ptr %rev_gsequence.addr, align 8, !tbaa !5
  store ptr %rev_gsequence_alt, ptr %rev_gsequence_alt.addr, align 8, !tbaa !5
  store i32 %rlength, ptr %rlength.addr, align 4, !tbaa !12
  store i32 %glength, ptr %glength.addr, align 4, !tbaa !12
  store i32 %rev_roffset, ptr %rev_roffset.addr, align 4, !tbaa !12
  store i32 %rev_goffset_anchor, ptr %rev_goffset_anchor.addr, align 4, !tbaa !12
  store i32 %rev_goffset_far, ptr %rev_goffset_far.addr, align 4, !tbaa !12
  store i32 %chroffset, ptr %chroffset.addr, align 4, !tbaa !12
  store i32 %chrhigh, ptr %chrhigh.addr, align 4, !tbaa !12
  store i8 %watsonp, ptr %watsonp.addr, align 1, !tbaa !14
  store i32 %genestrand, ptr %genestrand.addr, align 4, !tbaa !12
  store i8 %jump_late_p, ptr %jump_late_p.addr, align 1, !tbaa !14
  store ptr %genome, ptr %genome.addr, align 8, !tbaa !5
  store ptr %genomealt, ptr %genomealt.addr, align 8, !tbaa !5
  store ptr %pairpool, ptr %pairpool.addr, align 8, !tbaa !5
  store i32 %extraband_end, ptr %extraband_end.addr, align 4, !tbaa !12
  store double %defect_rate, ptr %defect_rate.addr, align 8, !tbaa !15
  store i32 %contlength, ptr %contlength.addr, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 8, ptr %pairs) #5
  store ptr null, ptr %pairs, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %pair) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %mismatchtype) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %bestr) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %bestc) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %lband) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %uband) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %open) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %extend) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %finalscore) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr %use8p) #5
  store i8 0, ptr %use8p, align 1, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 8, ptr %matrix8_upper) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %matrix8_lower) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %directions8_upper_nogap) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %directions8_upper_Egap) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %directions8_lower_nogap) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %directions8_lower_Egap) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %matrix16_upper) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %matrix16_lower) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %directions16_upper_nogap) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %directions16_upper_Egap) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %directions16_lower_nogap) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %directions16_lower_Egap) #5
  store i32 3, ptr %mismatchtype, align 4, !tbaa !14
  %0 = load i8, ptr @user_dynprog_p, align 1, !tbaa !14
  %conv = zext i8 %0 to i32
  %cmp = icmp eq i32 %conv, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, ptr @user_open, align 4, !tbaa !12
  store i32 %1, ptr %open, align 4, !tbaa !12
  %2 = load i32, ptr @user_extend, align 4, !tbaa !12
  store i32 %2, ptr %extend, align 4, !tbaa !12
  br label %if.end11

if.else:                                          ; preds = %entry
  %3 = load double, ptr %defect_rate.addr, align 8, !tbaa !15
  %cmp2 = fcmp olt double %3, 3.000000e-03
  br i1 %cmp2, label %if.then4, label %if.else5

if.then4:                                         ; preds = %if.else
  store i32 -10, ptr %open, align 4, !tbaa !12
  store i32 -2, ptr %extend, align 4, !tbaa !12
  br label %if.end10

if.else5:                                         ; preds = %if.else
  %4 = load double, ptr %defect_rate.addr, align 8, !tbaa !15
  %cmp6 = fcmp olt double %4, 1.400000e-02
  br i1 %cmp6, label %if.then8, label %if.else9

if.then8:                                         ; preds = %if.else5
  store i32 -8, ptr %open, align 4, !tbaa !12
  store i32 -2, ptr %extend, align 4, !tbaa !12
  br label %if.end

if.else9:                                         ; preds = %if.else5
  store i32 -6, ptr %open, align 4, !tbaa !12
  store i32 -2, ptr %extend, align 4, !tbaa !12
  br label %if.end

if.end:                                           ; preds = %if.else9, %if.then8
  br label %if.end10

if.end10:                                         ; preds = %if.end, %if.then4
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %if.then
  %5 = load i32, ptr %rlength.addr, align 4, !tbaa !12
  %cmp12 = icmp sle i32 %5, 0
  br i1 %cmp12, label %if.then16, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end11
  %6 = load i32, ptr %rlength.addr, align 4, !tbaa !12
  %7 = load ptr, ptr %dynprog.addr, align 8, !tbaa !5
  %max_rlength = getelementptr inbounds %struct.Dynprog_T, ptr %7, i32 0, i32 0
  %8 = load i32, ptr %max_rlength, align 8, !tbaa !17
  %cmp14 = icmp sgt i32 %6, %8
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %lor.lhs.false, %if.end11
  %9 = load ptr, ptr %traceback_score.addr, align 8, !tbaa !5
  store i32 0, ptr %9, align 4, !tbaa !12
  %10 = load ptr, ptr %nindels.addr, align 8, !tbaa !5
  store i32 0, ptr %10, align 4, !tbaa !12
  %11 = load ptr, ptr %nopens.addr, align 8, !tbaa !5
  store i32 0, ptr %11, align 4, !tbaa !12
  %12 = load ptr, ptr %nmismatches.addr, align 8, !tbaa !5
  store i32 0, ptr %12, align 4, !tbaa !12
  %13 = load ptr, ptr %nmatches.addr, align 8, !tbaa !5
  store i32 0, ptr %13, align 4, !tbaa !12
  %14 = load ptr, ptr %missscore.addr, align 8, !tbaa !5
  store i32 -100, ptr %14, align 4, !tbaa !12
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end17:                                         ; preds = %lor.lhs.false
  %15 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %cmp18 = icmp sle i32 %15, 0
  br i1 %cmp18, label %if.then23, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %if.end17
  %16 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %17 = load ptr, ptr %dynprog.addr, align 8, !tbaa !5
  %max_glength = getelementptr inbounds %struct.Dynprog_T, ptr %17, i32 0, i32 1
  %18 = load i32, ptr %max_glength, align 4, !tbaa !19
  %cmp21 = icmp sgt i32 %16, %18
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %lor.lhs.false20, %if.end17
  %19 = load ptr, ptr %traceback_score.addr, align 8, !tbaa !5
  store i32 0, ptr %19, align 4, !tbaa !12
  %20 = load ptr, ptr %nindels.addr, align 8, !tbaa !5
  store i32 0, ptr %20, align 4, !tbaa !12
  %21 = load ptr, ptr %nopens.addr, align 8, !tbaa !5
  store i32 0, ptr %21, align 4, !tbaa !12
  %22 = load ptr, ptr %nmismatches.addr, align 8, !tbaa !5
  store i32 0, ptr %22, align 4, !tbaa !12
  %23 = load ptr, ptr %nmatches.addr, align 8, !tbaa !5
  store i32 0, ptr %23, align 4, !tbaa !12
  %24 = load ptr, ptr %missscore.addr, align 8, !tbaa !5
  store i32 -100, ptr %24, align 4, !tbaa !12
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end24:                                         ; preds = %lor.lhs.false20
  %25 = load i32, ptr %rlength.addr, align 4, !tbaa !12
  %26 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %27 = load i32, ptr %extraband_end.addr, align 4, !tbaa !12
  call void @Dynprog_compute_bands(ptr noundef %lband, ptr noundef %uband, i32 noundef %25, i32 noundef %26, i32 noundef %27, i8 noundef zeroext 1)
  %28 = load i32, ptr %rlength.addr, align 4, !tbaa !12
  %29 = load i32, ptr %mismatchtype, align 4, !tbaa !14
  %idxprom = zext i32 %29 to i64
  %arrayidx = getelementptr inbounds [4 x i32], ptr @use8p_size, i64 0, i64 %idxprom
  %30 = load i32, ptr %arrayidx, align 4, !tbaa !12
  %cmp25 = icmp slt i32 %28, %30
  br i1 %cmp25, label %if.then32, label %lor.lhs.false27

lor.lhs.false27:                                  ; preds = %if.end24
  %31 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %32 = load i32, ptr %mismatchtype, align 4, !tbaa !14
  %idxprom28 = zext i32 %32 to i64
  %arrayidx29 = getelementptr inbounds [4 x i32], ptr @use8p_size, i64 0, i64 %idxprom28
  %33 = load i32, ptr %arrayidx29, align 4, !tbaa !12
  %cmp30 = icmp slt i32 %31, %33
  br i1 %cmp30, label %if.then32, label %if.else43

if.then32:                                        ; preds = %lor.lhs.false27, %if.end24
  store i8 1, ptr %use8p, align 1, !tbaa !14
  %34 = load ptr, ptr %dynprog.addr, align 8, !tbaa !5
  %35 = load ptr, ptr %rev_rsequence.addr, align 8, !tbaa !5
  %36 = load ptr, ptr %rev_gsequence.addr, align 8, !tbaa !5
  %37 = load ptr, ptr %rev_gsequence_alt.addr, align 8, !tbaa !5
  %38 = load i32, ptr %rlength.addr, align 4, !tbaa !12
  %39 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %40 = load i32, ptr %mismatchtype, align 4, !tbaa !14
  %41 = load i32, ptr %open, align 4, !tbaa !12
  %42 = load i32, ptr %extend, align 4, !tbaa !12
  %43 = load i32, ptr %uband, align 4, !tbaa !12
  %44 = load i8, ptr %jump_late_p.addr, align 1, !tbaa !14
  %tobool = icmp ne i8 %44, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  %conv33 = trunc i32 %lnot.ext to i8
  %call = call ptr @Dynprog_simd_8_upper(ptr noundef %directions8_upper_nogap, ptr noundef %directions8_upper_Egap, ptr noundef %34, ptr noundef %35, ptr noundef %36, ptr noundef %37, i32 noundef %38, i32 noundef %39, i32 noundef %40, i32 noundef %41, i32 noundef %42, i32 noundef %43, i8 noundef zeroext %conv33, i8 noundef zeroext 1)
  store ptr %call, ptr %matrix8_upper, align 8, !tbaa !5
  %45 = load ptr, ptr %dynprog.addr, align 8, !tbaa !5
  %46 = load ptr, ptr %rev_rsequence.addr, align 8, !tbaa !5
  %47 = load ptr, ptr %rev_gsequence.addr, align 8, !tbaa !5
  %48 = load ptr, ptr %rev_gsequence_alt.addr, align 8, !tbaa !5
  %49 = load i32, ptr %rlength.addr, align 4, !tbaa !12
  %50 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %51 = load i32, ptr %mismatchtype, align 4, !tbaa !14
  %52 = load i32, ptr %open, align 4, !tbaa !12
  %53 = load i32, ptr %extend, align 4, !tbaa !12
  %54 = load i32, ptr %lband, align 4, !tbaa !12
  %55 = load i8, ptr %jump_late_p.addr, align 1, !tbaa !14
  %tobool34 = icmp ne i8 %55, 0
  %lnot35 = xor i1 %tobool34, true
  %lnot.ext36 = zext i1 %lnot35 to i32
  %conv37 = trunc i32 %lnot.ext36 to i8
  %call38 = call ptr @Dynprog_simd_8_lower(ptr noundef %directions8_lower_nogap, ptr noundef %directions8_lower_Egap, ptr noundef %45, ptr noundef %46, ptr noundef %47, ptr noundef %48, i32 noundef %49, i32 noundef %50, i32 noundef %51, i32 noundef %52, i32 noundef %53, i32 noundef %54, i8 noundef zeroext %conv37, i8 noundef zeroext 1)
  store ptr %call38, ptr %matrix8_lower, align 8, !tbaa !5
  %56 = load ptr, ptr %matrix8_upper, align 8, !tbaa !5
  %57 = load ptr, ptr %matrix8_lower, align 8, !tbaa !5
  %58 = load i32, ptr %rlength.addr, align 4, !tbaa !12
  %59 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %60 = load i32, ptr %lband, align 4, !tbaa !12
  %61 = load i32, ptr %uband, align 4, !tbaa !12
  %62 = load i8, ptr %jump_late_p.addr, align 1, !tbaa !14
  %tobool39 = icmp ne i8 %62, 0
  %lnot40 = xor i1 %tobool39, true
  %lnot.ext41 = zext i1 %lnot40 to i32
  %conv42 = trunc i32 %lnot.ext41 to i8
  call void @find_best_endpoint_to_queryend_indels_8(ptr noundef %finalscore, ptr noundef %bestr, ptr noundef %bestc, ptr noundef %56, ptr noundef %57, i32 noundef %58, i32 noundef %59, i32 noundef %60, i32 noundef %61, i8 noundef zeroext %conv42)
  br label %if.end58

if.else43:                                        ; preds = %lor.lhs.false27
  %63 = load ptr, ptr %dynprog.addr, align 8, !tbaa !5
  %64 = load ptr, ptr %rev_rsequence.addr, align 8, !tbaa !5
  %65 = load ptr, ptr %rev_gsequence.addr, align 8, !tbaa !5
  %66 = load ptr, ptr %rev_gsequence_alt.addr, align 8, !tbaa !5
  %67 = load i32, ptr %rlength.addr, align 4, !tbaa !12
  %68 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %69 = load i32, ptr %mismatchtype, align 4, !tbaa !14
  %70 = load i32, ptr %open, align 4, !tbaa !12
  %71 = load i32, ptr %extend, align 4, !tbaa !12
  %72 = load i32, ptr %uband, align 4, !tbaa !12
  %73 = load i8, ptr %jump_late_p.addr, align 1, !tbaa !14
  %tobool44 = icmp ne i8 %73, 0
  %lnot45 = xor i1 %tobool44, true
  %lnot.ext46 = zext i1 %lnot45 to i32
  %conv47 = trunc i32 %lnot.ext46 to i8
  %call48 = call ptr @Dynprog_simd_16_upper(ptr noundef %directions16_upper_nogap, ptr noundef %directions16_upper_Egap, ptr noundef %63, ptr noundef %64, ptr noundef %65, ptr noundef %66, i32 noundef %67, i32 noundef %68, i32 noundef %69, i32 noundef %70, i32 noundef %71, i32 noundef %72, i8 noundef zeroext %conv47, i8 noundef zeroext 1)
  store ptr %call48, ptr %matrix16_upper, align 8, !tbaa !5
  %74 = load ptr, ptr %dynprog.addr, align 8, !tbaa !5
  %75 = load ptr, ptr %rev_rsequence.addr, align 8, !tbaa !5
  %76 = load ptr, ptr %rev_gsequence.addr, align 8, !tbaa !5
  %77 = load ptr, ptr %rev_gsequence_alt.addr, align 8, !tbaa !5
  %78 = load i32, ptr %rlength.addr, align 4, !tbaa !12
  %79 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %80 = load i32, ptr %mismatchtype, align 4, !tbaa !14
  %81 = load i32, ptr %open, align 4, !tbaa !12
  %82 = load i32, ptr %extend, align 4, !tbaa !12
  %83 = load i32, ptr %lband, align 4, !tbaa !12
  %84 = load i8, ptr %jump_late_p.addr, align 1, !tbaa !14
  %tobool49 = icmp ne i8 %84, 0
  %lnot50 = xor i1 %tobool49, true
  %lnot.ext51 = zext i1 %lnot50 to i32
  %conv52 = trunc i32 %lnot.ext51 to i8
  %call53 = call ptr @Dynprog_simd_16_lower(ptr noundef %directions16_lower_nogap, ptr noundef %directions16_lower_Egap, ptr noundef %74, ptr noundef %75, ptr noundef %76, ptr noundef %77, i32 noundef %78, i32 noundef %79, i32 noundef %80, i32 noundef %81, i32 noundef %82, i32 noundef %83, i8 noundef zeroext %conv52, i8 noundef zeroext 1)
  store ptr %call53, ptr %matrix16_lower, align 8, !tbaa !5
  %85 = load ptr, ptr %matrix16_upper, align 8, !tbaa !5
  %86 = load ptr, ptr %matrix16_lower, align 8, !tbaa !5
  %87 = load i32, ptr %rlength.addr, align 4, !tbaa !12
  %88 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %89 = load i32, ptr %lband, align 4, !tbaa !12
  %90 = load i32, ptr %uband, align 4, !tbaa !12
  %91 = load i8, ptr %jump_late_p.addr, align 1, !tbaa !14
  %tobool54 = icmp ne i8 %91, 0
  %lnot55 = xor i1 %tobool54, true
  %lnot.ext56 = zext i1 %lnot55 to i32
  %conv57 = trunc i32 %lnot.ext56 to i8
  call void @find_best_endpoint_to_queryend_indels_16(ptr noundef %finalscore, ptr noundef %bestr, ptr noundef %bestc, ptr noundef %85, ptr noundef %86, i32 noundef %87, i32 noundef %88, i32 noundef %89, i32 noundef %90, i8 noundef zeroext %conv57)
  br label %if.end58

if.end58:                                         ; preds = %if.else43, %if.then32
  %92 = load i32, ptr %finalscore, align 4, !tbaa !12
  %cmp59 = icmp slt i32 %92, 0
  br i1 %cmp59, label %if.then61, label %if.else62

if.then61:                                        ; preds = %if.end58
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else62:                                        ; preds = %if.end58
  %93 = load ptr, ptr %traceback_score.addr, align 8, !tbaa !5
  store i32 0, ptr %93, align 4, !tbaa !12
  %94 = load ptr, ptr %nindels.addr, align 8, !tbaa !5
  store i32 0, ptr %94, align 4, !tbaa !12
  %95 = load ptr, ptr %nopens.addr, align 8, !tbaa !5
  store i32 0, ptr %95, align 4, !tbaa !12
  %96 = load ptr, ptr %nmismatches.addr, align 8, !tbaa !5
  store i32 0, ptr %96, align 4, !tbaa !12
  %97 = load ptr, ptr %nmatches.addr, align 8, !tbaa !5
  store i32 0, ptr %97, align 4, !tbaa !12
  %98 = load i8, ptr %use8p, align 1, !tbaa !14
  %conv63 = zext i8 %98 to i32
  %cmp64 = icmp eq i32 %conv63, 1
  br i1 %cmp64, label %if.then66, label %if.else82

if.then66:                                        ; preds = %if.else62
  %99 = load i32, ptr %bestc, align 4, !tbaa !12
  %100 = load i32, ptr %bestr, align 4, !tbaa !12
  %cmp67 = icmp sge i32 %99, %100
  br i1 %cmp67, label %if.then69, label %if.else71

if.then69:                                        ; preds = %if.then66
  %101 = load ptr, ptr %traceback_score.addr, align 8, !tbaa !5
  %102 = load ptr, ptr %nmatches.addr, align 8, !tbaa !5
  %103 = load ptr, ptr %nmismatches.addr, align 8, !tbaa !5
  %104 = load ptr, ptr %nopens.addr, align 8, !tbaa !5
  %105 = load ptr, ptr %nindels.addr, align 8, !tbaa !5
  %106 = load ptr, ptr %directions8_upper_nogap, align 8, !tbaa !5
  %107 = load ptr, ptr %directions8_upper_Egap, align 8, !tbaa !5
  %108 = load i32, ptr %contlength.addr, align 4, !tbaa !12
  %109 = load ptr, ptr %rev_rsequence.addr, align 8, !tbaa !5
  %110 = load ptr, ptr %rev_rsequenceuc.addr, align 8, !tbaa !5
  %111 = load ptr, ptr %rev_gsequence.addr, align 8, !tbaa !5
  %112 = load ptr, ptr %rev_gsequence_alt.addr, align 8, !tbaa !5
  %113 = load i32, ptr %rev_roffset.addr, align 4, !tbaa !12
  %114 = load i32, ptr %rev_goffset_far.addr, align 4, !tbaa !12
  %115 = load ptr, ptr %genome.addr, align 8, !tbaa !5
  %116 = load ptr, ptr %genomealt.addr, align 8, !tbaa !5
  %117 = load ptr, ptr %pairpool.addr, align 8, !tbaa !5
  %118 = load i32, ptr %chroffset.addr, align 4, !tbaa !12
  %119 = load i32, ptr %chrhigh.addr, align 4, !tbaa !12
  %120 = load i8, ptr %watsonp.addr, align 1, !tbaa !14
  %121 = load i32, ptr %genestrand.addr, align 4, !tbaa !12
  %122 = load ptr, ptr %dynprogindex.addr, align 8, !tbaa !5
  %123 = load i32, ptr %122, align 4, !tbaa !12
  %call70 = call ptr @traceback_local_8_upper(ptr noundef null, ptr noundef %101, ptr noundef %102, ptr noundef %103, ptr noundef %104, ptr noundef %105, ptr noundef %106, ptr noundef %107, ptr noundef %bestr, ptr noundef %bestc, i32 noundef %108, ptr noundef %109, ptr noundef %110, ptr noundef %111, ptr noundef %112, i32 noundef %113, i32 noundef %114, ptr noundef %115, ptr noundef %116, ptr noundef %117, i8 noundef zeroext 1, i32 noundef %118, i32 noundef %119, i8 noundef zeroext %120, i32 noundef %121, i32 noundef %123)
  store ptr %call70, ptr %pairs, align 8, !tbaa !5
  br label %if.end73

if.else71:                                        ; preds = %if.then66
  %124 = load ptr, ptr %traceback_score.addr, align 8, !tbaa !5
  %125 = load ptr, ptr %nmatches.addr, align 8, !tbaa !5
  %126 = load ptr, ptr %nmismatches.addr, align 8, !tbaa !5
  %127 = load ptr, ptr %nopens.addr, align 8, !tbaa !5
  %128 = load ptr, ptr %nindels.addr, align 8, !tbaa !5
  %129 = load ptr, ptr %directions8_lower_nogap, align 8, !tbaa !5
  %130 = load ptr, ptr %directions8_lower_Egap, align 8, !tbaa !5
  %131 = load i32, ptr %contlength.addr, align 4, !tbaa !12
  %132 = load ptr, ptr %rev_rsequence.addr, align 8, !tbaa !5
  %133 = load ptr, ptr %rev_rsequenceuc.addr, align 8, !tbaa !5
  %134 = load ptr, ptr %rev_gsequence.addr, align 8, !tbaa !5
  %135 = load ptr, ptr %rev_gsequence_alt.addr, align 8, !tbaa !5
  %136 = load i32, ptr %rev_roffset.addr, align 4, !tbaa !12
  %137 = load i32, ptr %rev_goffset_far.addr, align 4, !tbaa !12
  %138 = load ptr, ptr %pairpool.addr, align 8, !tbaa !5
  %139 = load i32, ptr %genestrand.addr, align 4, !tbaa !12
  %140 = load ptr, ptr %dynprogindex.addr, align 8, !tbaa !5
  %141 = load i32, ptr %140, align 4, !tbaa !12
  %call72 = call ptr @traceback_local_8_lower(ptr noundef null, ptr noundef %124, ptr noundef %125, ptr noundef %126, ptr noundef %127, ptr noundef %128, ptr noundef %129, ptr noundef %130, ptr noundef %bestr, ptr noundef %bestc, i32 noundef %131, ptr noundef %132, ptr noundef %133, ptr noundef %134, ptr noundef %135, i32 noundef %136, i32 noundef %137, ptr noundef %138, i32 noundef %139, i8 noundef zeroext 1, i32 noundef %141)
  store ptr %call72, ptr %pairs, align 8, !tbaa !5
  br label %if.end73

if.end73:                                         ; preds = %if.else71, %if.then69
  %142 = load ptr, ptr %pairs, align 8, !tbaa !5
  %143 = load ptr, ptr %pairpool.addr, align 8, !tbaa !5
  %144 = load i32, ptr %rev_goffset_anchor.addr, align 4, !tbaa !12
  %145 = load i32, ptr %rev_goffset_far.addr, align 4, !tbaa !12
  %sub = sub nsw i32 %144, %145
  %call74 = call ptr @Pairpool_push_gapholder(ptr noundef %142, ptr noundef %143, i32 noundef 0, i32 noundef %sub, ptr noundef null, ptr noundef null, i8 noundef zeroext 1)
  store ptr %call74, ptr %pairs, align 8, !tbaa !5
  %146 = load i32, ptr %bestc, align 4, !tbaa !12
  %147 = load i32, ptr %bestr, align 4, !tbaa !12
  %cmp75 = icmp sge i32 %146, %147
  br i1 %cmp75, label %if.then77, label %if.else79

if.then77:                                        ; preds = %if.end73
  %148 = load ptr, ptr %pairs, align 8, !tbaa !5
  %149 = load ptr, ptr %traceback_score.addr, align 8, !tbaa !5
  %150 = load ptr, ptr %nmatches.addr, align 8, !tbaa !5
  %151 = load ptr, ptr %nmismatches.addr, align 8, !tbaa !5
  %152 = load ptr, ptr %nopens.addr, align 8, !tbaa !5
  %153 = load ptr, ptr %nindels.addr, align 8, !tbaa !5
  %154 = load ptr, ptr %directions8_upper_nogap, align 8, !tbaa !5
  %155 = load ptr, ptr %directions8_upper_Egap, align 8, !tbaa !5
  %156 = load ptr, ptr %rev_rsequence.addr, align 8, !tbaa !5
  %157 = load ptr, ptr %rev_rsequenceuc.addr, align 8, !tbaa !5
  %158 = load ptr, ptr %rev_gsequence.addr, align 8, !tbaa !5
  %159 = load ptr, ptr %rev_gsequence_alt.addr, align 8, !tbaa !5
  %160 = load i32, ptr %rev_roffset.addr, align 4, !tbaa !12
  %161 = load i32, ptr %rev_goffset_anchor.addr, align 4, !tbaa !12
  %162 = load ptr, ptr %genome.addr, align 8, !tbaa !5
  %163 = load ptr, ptr %genomealt.addr, align 8, !tbaa !5
  %164 = load ptr, ptr %pairpool.addr, align 8, !tbaa !5
  %165 = load i32, ptr %chroffset.addr, align 4, !tbaa !12
  %166 = load i32, ptr %chrhigh.addr, align 4, !tbaa !12
  %167 = load i8, ptr %watsonp.addr, align 1, !tbaa !14
  %168 = load i32, ptr %genestrand.addr, align 4, !tbaa !12
  %169 = load ptr, ptr %dynprogindex.addr, align 8, !tbaa !5
  %170 = load i32, ptr %169, align 4, !tbaa !12
  %call78 = call ptr @traceback_local_8_upper(ptr noundef %148, ptr noundef %149, ptr noundef %150, ptr noundef %151, ptr noundef %152, ptr noundef %153, ptr noundef %154, ptr noundef %155, ptr noundef %bestr, ptr noundef %bestc, i32 noundef 0, ptr noundef %156, ptr noundef %157, ptr noundef %158, ptr noundef %159, i32 noundef %160, i32 noundef %161, ptr noundef %162, ptr noundef %163, ptr noundef %164, i8 noundef zeroext 1, i32 noundef %165, i32 noundef %166, i8 noundef zeroext %167, i32 noundef %168, i32 noundef %170)
  store ptr %call78, ptr %pairs, align 8, !tbaa !5
  br label %if.end81

if.else79:                                        ; preds = %if.end73
  %171 = load ptr, ptr %pairs, align 8, !tbaa !5
  %172 = load ptr, ptr %traceback_score.addr, align 8, !tbaa !5
  %173 = load ptr, ptr %nmatches.addr, align 8, !tbaa !5
  %174 = load ptr, ptr %nmismatches.addr, align 8, !tbaa !5
  %175 = load ptr, ptr %nopens.addr, align 8, !tbaa !5
  %176 = load ptr, ptr %nindels.addr, align 8, !tbaa !5
  %177 = load ptr, ptr %directions8_lower_nogap, align 8, !tbaa !5
  %178 = load ptr, ptr %directions8_lower_Egap, align 8, !tbaa !5
  %179 = load ptr, ptr %rev_rsequence.addr, align 8, !tbaa !5
  %180 = load ptr, ptr %rev_rsequenceuc.addr, align 8, !tbaa !5
  %181 = load ptr, ptr %rev_gsequence.addr, align 8, !tbaa !5
  %182 = load ptr, ptr %rev_gsequence_alt.addr, align 8, !tbaa !5
  %183 = load i32, ptr %rev_roffset.addr, align 4, !tbaa !12
  %184 = load i32, ptr %rev_goffset_anchor.addr, align 4, !tbaa !12
  %185 = load ptr, ptr %pairpool.addr, align 8, !tbaa !5
  %186 = load i32, ptr %genestrand.addr, align 4, !tbaa !12
  %187 = load ptr, ptr %dynprogindex.addr, align 8, !tbaa !5
  %188 = load i32, ptr %187, align 4, !tbaa !12
  %call80 = call ptr @traceback_local_8_lower(ptr noundef %171, ptr noundef %172, ptr noundef %173, ptr noundef %174, ptr noundef %175, ptr noundef %176, ptr noundef %177, ptr noundef %178, ptr noundef %bestr, ptr noundef %bestc, i32 noundef 0, ptr noundef %179, ptr noundef %180, ptr noundef %181, ptr noundef %182, i32 noundef %183, i32 noundef %184, ptr noundef %185, i32 noundef %186, i8 noundef zeroext 1, i32 noundef %188)
  store ptr %call80, ptr %pairs, align 8, !tbaa !5
  br label %if.end81

if.end81:                                         ; preds = %if.else79, %if.then77
  br label %if.end99

if.else82:                                        ; preds = %if.else62
  %189 = load i32, ptr %bestc, align 4, !tbaa !12
  %190 = load i32, ptr %bestr, align 4, !tbaa !12
  %cmp83 = icmp sge i32 %189, %190
  br i1 %cmp83, label %if.then85, label %if.else87

if.then85:                                        ; preds = %if.else82
  %191 = load ptr, ptr %traceback_score.addr, align 8, !tbaa !5
  %192 = load ptr, ptr %nmatches.addr, align 8, !tbaa !5
  %193 = load ptr, ptr %nmismatches.addr, align 8, !tbaa !5
  %194 = load ptr, ptr %nopens.addr, align 8, !tbaa !5
  %195 = load ptr, ptr %nindels.addr, align 8, !tbaa !5
  %196 = load ptr, ptr %directions16_upper_nogap, align 8, !tbaa !5
  %197 = load ptr, ptr %directions16_upper_Egap, align 8, !tbaa !5
  %198 = load i32, ptr %contlength.addr, align 4, !tbaa !12
  %199 = load ptr, ptr %rev_rsequence.addr, align 8, !tbaa !5
  %200 = load ptr, ptr %rev_rsequenceuc.addr, align 8, !tbaa !5
  %201 = load ptr, ptr %rev_gsequence.addr, align 8, !tbaa !5
  %202 = load ptr, ptr %rev_gsequence_alt.addr, align 8, !tbaa !5
  %203 = load i32, ptr %rev_roffset.addr, align 4, !tbaa !12
  %204 = load i32, ptr %rev_goffset_far.addr, align 4, !tbaa !12
  %205 = load ptr, ptr %genome.addr, align 8, !tbaa !5
  %206 = load ptr, ptr %genomealt.addr, align 8, !tbaa !5
  %207 = load ptr, ptr %pairpool.addr, align 8, !tbaa !5
  %208 = load i32, ptr %chroffset.addr, align 4, !tbaa !12
  %209 = load i32, ptr %chrhigh.addr, align 4, !tbaa !12
  %210 = load i8, ptr %watsonp.addr, align 1, !tbaa !14
  %211 = load i32, ptr %genestrand.addr, align 4, !tbaa !12
  %212 = load ptr, ptr %dynprogindex.addr, align 8, !tbaa !5
  %213 = load i32, ptr %212, align 4, !tbaa !12
  %call86 = call ptr @traceback_local_16_upper(ptr noundef null, ptr noundef %191, ptr noundef %192, ptr noundef %193, ptr noundef %194, ptr noundef %195, ptr noundef %196, ptr noundef %197, ptr noundef %bestr, ptr noundef %bestc, i32 noundef %198, ptr noundef %199, ptr noundef %200, ptr noundef %201, ptr noundef %202, i32 noundef %203, i32 noundef %204, ptr noundef %205, ptr noundef %206, ptr noundef %207, i8 noundef zeroext 1, i32 noundef %208, i32 noundef %209, i8 noundef zeroext %210, i32 noundef %211, i32 noundef %213)
  store ptr %call86, ptr %pairs, align 8, !tbaa !5
  br label %if.end89

if.else87:                                        ; preds = %if.else82
  %214 = load ptr, ptr %traceback_score.addr, align 8, !tbaa !5
  %215 = load ptr, ptr %nmatches.addr, align 8, !tbaa !5
  %216 = load ptr, ptr %nmismatches.addr, align 8, !tbaa !5
  %217 = load ptr, ptr %nopens.addr, align 8, !tbaa !5
  %218 = load ptr, ptr %nindels.addr, align 8, !tbaa !5
  %219 = load ptr, ptr %directions16_lower_nogap, align 8, !tbaa !5
  %220 = load ptr, ptr %directions16_lower_Egap, align 8, !tbaa !5
  %221 = load i32, ptr %contlength.addr, align 4, !tbaa !12
  %222 = load ptr, ptr %rev_rsequence.addr, align 8, !tbaa !5
  %223 = load ptr, ptr %rev_rsequenceuc.addr, align 8, !tbaa !5
  %224 = load ptr, ptr %rev_gsequence.addr, align 8, !tbaa !5
  %225 = load ptr, ptr %rev_gsequence_alt.addr, align 8, !tbaa !5
  %226 = load i32, ptr %rev_roffset.addr, align 4, !tbaa !12
  %227 = load i32, ptr %rev_goffset_far.addr, align 4, !tbaa !12
  %228 = load ptr, ptr %pairpool.addr, align 8, !tbaa !5
  %229 = load i32, ptr %genestrand.addr, align 4, !tbaa !12
  %230 = load ptr, ptr %dynprogindex.addr, align 8, !tbaa !5
  %231 = load i32, ptr %230, align 4, !tbaa !12
  %call88 = call ptr @traceback_local_16_lower(ptr noundef null, ptr noundef %214, ptr noundef %215, ptr noundef %216, ptr noundef %217, ptr noundef %218, ptr noundef %219, ptr noundef %220, ptr noundef %bestr, ptr noundef %bestc, i32 noundef %221, ptr noundef %222, ptr noundef %223, ptr noundef %224, ptr noundef %225, i32 noundef %226, i32 noundef %227, ptr noundef %228, i32 noundef %229, i8 noundef zeroext 1, i32 noundef %231)
  store ptr %call88, ptr %pairs, align 8, !tbaa !5
  br label %if.end89

if.end89:                                         ; preds = %if.else87, %if.then85
  %232 = load ptr, ptr %pairs, align 8, !tbaa !5
  %233 = load ptr, ptr %pairpool.addr, align 8, !tbaa !5
  %234 = load i32, ptr %rev_goffset_anchor.addr, align 4, !tbaa !12
  %235 = load i32, ptr %rev_goffset_far.addr, align 4, !tbaa !12
  %sub90 = sub nsw i32 %234, %235
  %call91 = call ptr @Pairpool_push_gapholder(ptr noundef %232, ptr noundef %233, i32 noundef 0, i32 noundef %sub90, ptr noundef null, ptr noundef null, i8 noundef zeroext 1)
  store ptr %call91, ptr %pairs, align 8, !tbaa !5
  %236 = load i32, ptr %bestc, align 4, !tbaa !12
  %237 = load i32, ptr %bestr, align 4, !tbaa !12
  %cmp92 = icmp sge i32 %236, %237
  br i1 %cmp92, label %if.then94, label %if.else96

if.then94:                                        ; preds = %if.end89
  %238 = load ptr, ptr %pairs, align 8, !tbaa !5
  %239 = load ptr, ptr %traceback_score.addr, align 8, !tbaa !5
  %240 = load ptr, ptr %nmatches.addr, align 8, !tbaa !5
  %241 = load ptr, ptr %nmismatches.addr, align 8, !tbaa !5
  %242 = load ptr, ptr %nopens.addr, align 8, !tbaa !5
  %243 = load ptr, ptr %nindels.addr, align 8, !tbaa !5
  %244 = load ptr, ptr %directions16_upper_nogap, align 8, !tbaa !5
  %245 = load ptr, ptr %directions16_upper_Egap, align 8, !tbaa !5
  %246 = load ptr, ptr %rev_rsequence.addr, align 8, !tbaa !5
  %247 = load ptr, ptr %rev_rsequenceuc.addr, align 8, !tbaa !5
  %248 = load ptr, ptr %rev_gsequence.addr, align 8, !tbaa !5
  %249 = load ptr, ptr %rev_gsequence_alt.addr, align 8, !tbaa !5
  %250 = load i32, ptr %rev_roffset.addr, align 4, !tbaa !12
  %251 = load i32, ptr %rev_goffset_anchor.addr, align 4, !tbaa !12
  %252 = load ptr, ptr %genome.addr, align 8, !tbaa !5
  %253 = load ptr, ptr %genomealt.addr, align 8, !tbaa !5
  %254 = load ptr, ptr %pairpool.addr, align 8, !tbaa !5
  %255 = load i32, ptr %chroffset.addr, align 4, !tbaa !12
  %256 = load i32, ptr %chrhigh.addr, align 4, !tbaa !12
  %257 = load i8, ptr %watsonp.addr, align 1, !tbaa !14
  %258 = load i32, ptr %genestrand.addr, align 4, !tbaa !12
  %259 = load ptr, ptr %dynprogindex.addr, align 8, !tbaa !5
  %260 = load i32, ptr %259, align 4, !tbaa !12
  %call95 = call ptr @traceback_local_16_upper(ptr noundef %238, ptr noundef %239, ptr noundef %240, ptr noundef %241, ptr noundef %242, ptr noundef %243, ptr noundef %244, ptr noundef %245, ptr noundef %bestr, ptr noundef %bestc, i32 noundef 0, ptr noundef %246, ptr noundef %247, ptr noundef %248, ptr noundef %249, i32 noundef %250, i32 noundef %251, ptr noundef %252, ptr noundef %253, ptr noundef %254, i8 noundef zeroext 1, i32 noundef %255, i32 noundef %256, i8 noundef zeroext %257, i32 noundef %258, i32 noundef %260)
  store ptr %call95, ptr %pairs, align 8, !tbaa !5
  br label %if.end98

if.else96:                                        ; preds = %if.end89
  %261 = load ptr, ptr %pairs, align 8, !tbaa !5
  %262 = load ptr, ptr %traceback_score.addr, align 8, !tbaa !5
  %263 = load ptr, ptr %nmatches.addr, align 8, !tbaa !5
  %264 = load ptr, ptr %nmismatches.addr, align 8, !tbaa !5
  %265 = load ptr, ptr %nopens.addr, align 8, !tbaa !5
  %266 = load ptr, ptr %nindels.addr, align 8, !tbaa !5
  %267 = load ptr, ptr %directions16_lower_nogap, align 8, !tbaa !5
  %268 = load ptr, ptr %directions16_lower_Egap, align 8, !tbaa !5
  %269 = load ptr, ptr %rev_rsequence.addr, align 8, !tbaa !5
  %270 = load ptr, ptr %rev_rsequenceuc.addr, align 8, !tbaa !5
  %271 = load ptr, ptr %rev_gsequence.addr, align 8, !tbaa !5
  %272 = load ptr, ptr %rev_gsequence_alt.addr, align 8, !tbaa !5
  %273 = load i32, ptr %rev_roffset.addr, align 4, !tbaa !12
  %274 = load i32, ptr %rev_goffset_anchor.addr, align 4, !tbaa !12
  %275 = load ptr, ptr %pairpool.addr, align 8, !tbaa !5
  %276 = load i32, ptr %genestrand.addr, align 4, !tbaa !12
  %277 = load ptr, ptr %dynprogindex.addr, align 8, !tbaa !5
  %278 = load i32, ptr %277, align 4, !tbaa !12
  %call97 = call ptr @traceback_local_16_lower(ptr noundef %261, ptr noundef %262, ptr noundef %263, ptr noundef %264, ptr noundef %265, ptr noundef %266, ptr noundef %267, ptr noundef %268, ptr noundef %bestr, ptr noundef %bestc, i32 noundef 0, ptr noundef %269, ptr noundef %270, ptr noundef %271, ptr noundef %272, i32 noundef %273, i32 noundef %274, ptr noundef %275, i32 noundef %276, i8 noundef zeroext 1, i32 noundef %278)
  store ptr %call97, ptr %pairs, align 8, !tbaa !5
  br label %if.end98

if.end98:                                         ; preds = %if.else96, %if.then94
  br label %if.end99

if.end99:                                         ; preds = %if.end98, %if.end81
  %279 = load ptr, ptr %traceback_score.addr, align 8, !tbaa !5
  %280 = load i32, ptr %279, align 4, !tbaa !12
  %281 = load i32, ptr %rlength.addr, align 4, !tbaa !12
  %mul = mul nsw i32 %281, 3
  %sub100 = sub nsw i32 %280, %mul
  %282 = load ptr, ptr %missscore.addr, align 8, !tbaa !5
  store i32 %sub100, ptr %282, align 4, !tbaa !12
  %283 = load ptr, ptr %pairs, align 8, !tbaa !5
  %call101 = call ptr @List_reverse(ptr noundef %283)
  store ptr %call101, ptr %pairs, align 8, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end99
  %284 = load ptr, ptr %pairs, align 8, !tbaa !5
  %cmp102 = icmp ne ptr %284, null
  br i1 %cmp102, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %285 = load ptr, ptr %pairs, align 8, !tbaa !5
  %call104 = call ptr @List_head(ptr noundef %285)
  store ptr %call104, ptr %pair, align 8, !tbaa !5
  %tobool105 = icmp ne ptr %call104, null
  br i1 %tobool105, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %286 = load ptr, ptr %pair, align 8, !tbaa !5
  %comp = getelementptr inbounds %struct.Pair_T, ptr %286, i32 0, i32 10
  %287 = load i8, ptr %comp, align 1, !tbaa !20
  %conv106 = sext i8 %287 to i32
  %cmp107 = icmp eq i32 %conv106, 45
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %288 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp107, %land.rhs ]
  br i1 %288, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %289 = load ptr, ptr %pairs, align 8, !tbaa !5
  %call109 = call ptr @List_next(ptr noundef %289)
  store ptr %call109, ptr %pairs, align 8, !tbaa !5
  br label %while.cond, !llvm.loop !48

while.end:                                        ; preds = %land.end
  %290 = load ptr, ptr %dynprogindex.addr, align 8, !tbaa !5
  %291 = load i32, ptr %290, align 4, !tbaa !12
  %cmp110 = icmp sgt i32 %291, 0
  %292 = zext i1 %cmp110 to i64
  %cond = select i1 %cmp110, i32 1, i32 -1
  %293 = load ptr, ptr %dynprogindex.addr, align 8, !tbaa !5
  %294 = load i32, ptr %293, align 4, !tbaa !12
  %add = add nsw i32 %294, %cond
  store i32 %add, ptr %293, align 4, !tbaa !12
  %295 = load ptr, ptr %pairs, align 8, !tbaa !5
  %call112 = call ptr @List_reverse(ptr noundef %295)
  store ptr %call112, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then61, %if.then23, %if.then16
  call void @llvm.lifetime.end.p0(i64 8, ptr %directions16_lower_Egap) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %directions16_lower_nogap) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %directions16_upper_Egap) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %directions16_upper_nogap) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %matrix16_lower) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %matrix16_upper) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %directions8_lower_Egap) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %directions8_lower_nogap) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %directions8_upper_Egap) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %directions8_upper_nogap) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %matrix8_lower) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %matrix8_upper) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr %use8p) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %finalscore) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %extend) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %open) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %uband) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %lband) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %bestc) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %bestr) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %mismatchtype) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %pair) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %pairs) #5
  %296 = load ptr, ptr %retval, align 8
  ret ptr %296
}

; Function Attrs: nounwind uwtable
define internal ptr @traceback_local_8_upper(ptr noundef %pairs, ptr noundef %traceback_score, ptr noundef %nmatches, ptr noundef %nmismatches, ptr noundef %nopens, ptr noundef %nindels, ptr noundef %directions_nogap, ptr noundef %directions_Egap, ptr noundef %r, ptr noundef %c, i32 noundef %endc, ptr noundef %rsequence, ptr noundef %rsequenceuc, ptr noundef %genomesequence, ptr noundef %genomesequencealt, i32 noundef %queryoffset, i32 noundef %genomeoffset, ptr noundef %genome, ptr noundef %genomealt, ptr noundef %pairpool, i8 noundef zeroext %revp, i32 noundef %chroffset, i32 noundef %chrhigh, i8 noundef zeroext %watsonp, i32 noundef %genestrand, i32 noundef %dynprogindex) #1 {
entry:
  %pairs.addr = alloca ptr, align 8
  %traceback_score.addr = alloca ptr, align 8
  %nmatches.addr = alloca ptr, align 8
  %nmismatches.addr = alloca ptr, align 8
  %nopens.addr = alloca ptr, align 8
  %nindels.addr = alloca ptr, align 8
  %directions_nogap.addr = alloca ptr, align 8
  %directions_Egap.addr = alloca ptr, align 8
  %r.addr = alloca ptr, align 8
  %c.addr = alloca ptr, align 8
  %endc.addr = alloca i32, align 4
  %rsequence.addr = alloca ptr, align 8
  %rsequenceuc.addr = alloca ptr, align 8
  %genomesequence.addr = alloca ptr, align 8
  %genomesequencealt.addr = alloca ptr, align 8
  %queryoffset.addr = alloca i32, align 4
  %genomeoffset.addr = alloca i32, align 4
  %genome.addr = alloca ptr, align 8
  %genomealt.addr = alloca ptr, align 8
  %pairpool.addr = alloca ptr, align 8
  %revp.addr = alloca i8, align 1
  %chroffset.addr = alloca i32, align 4
  %chrhigh.addr = alloca i32, align 4
  %watsonp.addr = alloca i8, align 1
  %genestrand.addr = alloca i32, align 4
  %dynprogindex.addr = alloca i32, align 4
  %c1 = alloca i8, align 1
  %c1_uc = alloca i8, align 1
  %c2 = alloca i8, align 1
  %c2_alt = alloca i8, align 1
  %dist = alloca i32, align 4
  %add_dashes_p = alloca i8, align 1
  %querycoord = alloca i32, align 4
  %genomecoord = alloca i32, align 4
  %dir = alloca i8, align 1
  store ptr %pairs, ptr %pairs.addr, align 8, !tbaa !5
  store ptr %traceback_score, ptr %traceback_score.addr, align 8, !tbaa !5
  store ptr %nmatches, ptr %nmatches.addr, align 8, !tbaa !5
  store ptr %nmismatches, ptr %nmismatches.addr, align 8, !tbaa !5
  store ptr %nopens, ptr %nopens.addr, align 8, !tbaa !5
  store ptr %nindels, ptr %nindels.addr, align 8, !tbaa !5
  store ptr %directions_nogap, ptr %directions_nogap.addr, align 8, !tbaa !5
  store ptr %directions_Egap, ptr %directions_Egap.addr, align 8, !tbaa !5
  store ptr %r, ptr %r.addr, align 8, !tbaa !5
  store ptr %c, ptr %c.addr, align 8, !tbaa !5
  store i32 %endc, ptr %endc.addr, align 4, !tbaa !12
  store ptr %rsequence, ptr %rsequence.addr, align 8, !tbaa !5
  store ptr %rsequenceuc, ptr %rsequenceuc.addr, align 8, !tbaa !5
  store ptr %genomesequence, ptr %genomesequence.addr, align 8, !tbaa !5
  store ptr %genomesequencealt, ptr %genomesequencealt.addr, align 8, !tbaa !5
  store i32 %queryoffset, ptr %queryoffset.addr, align 4, !tbaa !12
  store i32 %genomeoffset, ptr %genomeoffset.addr, align 4, !tbaa !12
  store ptr %genome, ptr %genome.addr, align 8, !tbaa !5
  store ptr %genomealt, ptr %genomealt.addr, align 8, !tbaa !5
  store ptr %pairpool, ptr %pairpool.addr, align 8, !tbaa !5
  store i8 %revp, ptr %revp.addr, align 1, !tbaa !14
  store i32 %chroffset, ptr %chroffset.addr, align 4, !tbaa !12
  store i32 %chrhigh, ptr %chrhigh.addr, align 4, !tbaa !12
  store i8 %watsonp, ptr %watsonp.addr, align 1, !tbaa !14
  store i32 %genestrand, ptr %genestrand.addr, align 4, !tbaa !12
  store i32 %dynprogindex, ptr %dynprogindex.addr, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 1, ptr %c1) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr %c1_uc) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr %c2) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr %c2_alt) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %dist) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr %add_dashes_p) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %querycoord) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %genomecoord) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr %dir) #5
  br label %while.cond

while.cond:                                       ; preds = %if.end81, %entry
  %0 = load ptr, ptr %r.addr, align 8, !tbaa !5
  %1 = load i32, ptr %0, align 4, !tbaa !12
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %2 = load ptr, ptr %c.addr, align 8, !tbaa !5
  %3 = load i32, ptr %2, align 4, !tbaa !12
  %4 = load i32, ptr %endc.addr, align 4, !tbaa !12
  %cmp1 = icmp sgt i32 %3, %4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %5 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %5, label %while.body, label %while.end82

while.body:                                       ; preds = %land.end
  %6 = load ptr, ptr %directions_nogap.addr, align 8, !tbaa !5
  %7 = load ptr, ptr %c.addr, align 8, !tbaa !5
  %8 = load i32, ptr %7, align 4, !tbaa !12
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %6, i64 %idxprom
  %9 = load ptr, ptr %arrayidx, align 8, !tbaa !5
  %10 = load ptr, ptr %r.addr, align 8, !tbaa !5
  %11 = load i32, ptr %10, align 4, !tbaa !12
  %idxprom2 = sext i32 %11 to i64
  %arrayidx3 = getelementptr inbounds i8, ptr %9, i64 %idxprom2
  %12 = load i8, ptr %arrayidx3, align 1, !tbaa !14
  store i8 %12, ptr %dir, align 1, !tbaa !14
  %conv = sext i8 %12 to i32
  %cmp4 = icmp ne i32 %conv, 0
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  store i32 1, ptr %dist, align 4, !tbaa !12
  br label %while.cond6

while.cond6:                                      ; preds = %while.body18, %if.then
  %13 = load ptr, ptr %c.addr, align 8, !tbaa !5
  %14 = load i32, ptr %13, align 4, !tbaa !12
  %15 = load i32, ptr %endc.addr, align 4, !tbaa !12
  %cmp7 = icmp sgt i32 %14, %15
  br i1 %cmp7, label %land.rhs9, label %land.end17

land.rhs9:                                        ; preds = %while.cond6
  %16 = load ptr, ptr %directions_Egap.addr, align 8, !tbaa !5
  %17 = load ptr, ptr %c.addr, align 8, !tbaa !5
  %18 = load i32, ptr %17, align 4, !tbaa !12
  %dec = add nsw i32 %18, -1
  store i32 %dec, ptr %17, align 4, !tbaa !12
  %idxprom10 = sext i32 %18 to i64
  %arrayidx11 = getelementptr inbounds ptr, ptr %16, i64 %idxprom10
  %19 = load ptr, ptr %arrayidx11, align 8, !tbaa !5
  %20 = load ptr, ptr %r.addr, align 8, !tbaa !5
  %21 = load i32, ptr %20, align 4, !tbaa !12
  %idxprom12 = sext i32 %21 to i64
  %arrayidx13 = getelementptr inbounds i8, ptr %19, i64 %idxprom12
  %22 = load i8, ptr %arrayidx13, align 1, !tbaa !14
  %conv14 = sext i8 %22 to i32
  %cmp15 = icmp ne i32 %conv14, 0
  br label %land.end17

land.end17:                                       ; preds = %land.rhs9, %while.cond6
  %23 = phi i1 [ false, %while.cond6 ], [ %cmp15, %land.rhs9 ]
  br i1 %23, label %while.body18, label %while.end

while.body18:                                     ; preds = %land.end17
  %24 = load i32, ptr %dist, align 4, !tbaa !12
  %inc = add nsw i32 %24, 1
  store i32 %inc, ptr %dist, align 4, !tbaa !12
  br label %while.cond6, !llvm.loop !49

while.end:                                        ; preds = %land.end17
  %25 = load ptr, ptr %pairs.addr, align 8, !tbaa !5
  %26 = load ptr, ptr %r.addr, align 8, !tbaa !5
  %27 = load i32, ptr %26, align 4, !tbaa !12
  %28 = load ptr, ptr %c.addr, align 8, !tbaa !5
  %29 = load i32, ptr %28, align 4, !tbaa !12
  %30 = load i32, ptr %dist, align 4, !tbaa !12
  %add = add nsw i32 %29, %30
  %31 = load i32, ptr %dist, align 4, !tbaa !12
  %32 = load ptr, ptr %genomesequence.addr, align 8, !tbaa !5
  %33 = load i32, ptr %queryoffset.addr, align 4, !tbaa !12
  %34 = load i32, ptr %genomeoffset.addr, align 4, !tbaa !12
  %35 = load ptr, ptr %genome.addr, align 8, !tbaa !5
  %36 = load ptr, ptr %genomealt.addr, align 8, !tbaa !5
  %37 = load ptr, ptr %pairpool.addr, align 8, !tbaa !5
  %38 = load i8, ptr %revp.addr, align 1, !tbaa !14
  %39 = load i32, ptr %chroffset.addr, align 4, !tbaa !12
  %40 = load i32, ptr %chrhigh.addr, align 4, !tbaa !12
  %41 = load i8, ptr %watsonp.addr, align 1, !tbaa !14
  %42 = load i32, ptr %dynprogindex.addr, align 4, !tbaa !12
  %call = call ptr @Pairpool_add_genomeskip(ptr noundef %add_dashes_p, ptr noundef %25, i32 noundef %27, i32 noundef %add, i32 noundef %31, ptr noundef %32, i32 noundef %33, i32 noundef %34, ptr noundef %35, ptr noundef %36, ptr noundef %37, i8 noundef zeroext %38, i32 noundef %39, i32 noundef %40, i8 noundef zeroext %41, i32 noundef %42)
  store ptr %call, ptr %pairs.addr, align 8, !tbaa !5
  %43 = load i8, ptr %add_dashes_p, align 1, !tbaa !14
  %conv19 = zext i8 %43 to i32
  %cmp20 = icmp eq i32 %conv19, 1
  br i1 %cmp20, label %if.then22, label %if.end

if.then22:                                        ; preds = %while.end
  %44 = load i32, ptr %dist, align 4, !tbaa !12
  %mul = mul nsw i32 %44, -1
  %add23 = add nsw i32 -3, %mul
  %45 = load ptr, ptr %traceback_score.addr, align 8, !tbaa !5
  %46 = load i32, ptr %45, align 4, !tbaa !12
  %add24 = add nsw i32 %46, %add23
  store i32 %add24, ptr %45, align 4, !tbaa !12
  %47 = load ptr, ptr %nopens.addr, align 8, !tbaa !5
  %48 = load i32, ptr %47, align 4, !tbaa !12
  %add25 = add nsw i32 %48, 1
  store i32 %add25, ptr %47, align 4, !tbaa !12
  %49 = load i32, ptr %dist, align 4, !tbaa !12
  %50 = load ptr, ptr %nindels.addr, align 8, !tbaa !5
  %51 = load i32, ptr %50, align 4, !tbaa !12
  %add26 = add nsw i32 %51, %49
  store i32 %add26, ptr %50, align 4, !tbaa !12
  br label %if.end

if.end:                                           ; preds = %if.then22, %while.end
  br label %if.end81

if.else:                                          ; preds = %while.body
  %52 = load ptr, ptr %r.addr, align 8, !tbaa !5
  %53 = load i32, ptr %52, align 4, !tbaa !12
  %sub = sub nsw i32 %53, 1
  store i32 %sub, ptr %querycoord, align 4, !tbaa !12
  %54 = load ptr, ptr %c.addr, align 8, !tbaa !5
  %55 = load i32, ptr %54, align 4, !tbaa !12
  %sub27 = sub nsw i32 %55, 1
  store i32 %sub27, ptr %genomecoord, align 4, !tbaa !12
  %56 = load i8, ptr %revp.addr, align 1, !tbaa !14
  %conv28 = zext i8 %56 to i32
  %cmp29 = icmp eq i32 %conv28, 1
  br i1 %cmp29, label %if.then31, label %if.end34

if.then31:                                        ; preds = %if.else
  %57 = load i32, ptr %querycoord, align 4, !tbaa !12
  %sub32 = sub nsw i32 0, %57
  store i32 %sub32, ptr %querycoord, align 4, !tbaa !12
  %58 = load i32, ptr %genomecoord, align 4, !tbaa !12
  %sub33 = sub nsw i32 0, %58
  store i32 %sub33, ptr %genomecoord, align 4, !tbaa !12
  br label %if.end34

if.end34:                                         ; preds = %if.then31, %if.else
  %59 = load ptr, ptr %rsequence.addr, align 8, !tbaa !5
  %60 = load i32, ptr %querycoord, align 4, !tbaa !12
  %idxprom35 = sext i32 %60 to i64
  %arrayidx36 = getelementptr inbounds i8, ptr %59, i64 %idxprom35
  %61 = load i8, ptr %arrayidx36, align 1, !tbaa !14
  store i8 %61, ptr %c1, align 1, !tbaa !14
  %62 = load ptr, ptr %rsequenceuc.addr, align 8, !tbaa !5
  %63 = load i32, ptr %querycoord, align 4, !tbaa !12
  %idxprom37 = sext i32 %63 to i64
  %arrayidx38 = getelementptr inbounds i8, ptr %62, i64 %idxprom37
  %64 = load i8, ptr %arrayidx38, align 1, !tbaa !14
  store i8 %64, ptr %c1_uc, align 1, !tbaa !14
  %65 = load ptr, ptr %genomesequence.addr, align 8, !tbaa !5
  %66 = load i32, ptr %genomecoord, align 4, !tbaa !12
  %idxprom39 = sext i32 %66 to i64
  %arrayidx40 = getelementptr inbounds i8, ptr %65, i64 %idxprom39
  %67 = load i8, ptr %arrayidx40, align 1, !tbaa !14
  store i8 %67, ptr %c2, align 1, !tbaa !14
  %68 = load ptr, ptr %genomesequencealt.addr, align 8, !tbaa !5
  %69 = load i32, ptr %genomecoord, align 4, !tbaa !12
  %idxprom41 = sext i32 %69 to i64
  %arrayidx42 = getelementptr inbounds i8, ptr %68, i64 %idxprom41
  %70 = load i8, ptr %arrayidx42, align 1, !tbaa !14
  store i8 %70, ptr %c2_alt, align 1, !tbaa !14
  %71 = load i8, ptr %c1_uc, align 1, !tbaa !14
  %conv43 = sext i8 %71 to i32
  %72 = load i8, ptr %c2, align 1, !tbaa !14
  %conv44 = sext i8 %72 to i32
  %cmp45 = icmp eq i32 %conv43, %conv44
  br i1 %cmp45, label %if.then51, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end34
  %73 = load i8, ptr %c1_uc, align 1, !tbaa !14
  %conv47 = sext i8 %73 to i32
  %74 = load i8, ptr %c2_alt, align 1, !tbaa !14
  %conv48 = sext i8 %74 to i32
  %cmp49 = icmp eq i32 %conv47, %conv48
  br i1 %cmp49, label %if.then51, label %if.else57

if.then51:                                        ; preds = %lor.lhs.false, %if.end34
  %75 = load ptr, ptr %traceback_score.addr, align 8, !tbaa !5
  %76 = load i32, ptr %75, align 4, !tbaa !12
  %add52 = add nsw i32 %76, 1
  store i32 %add52, ptr %75, align 4, !tbaa !12
  %77 = load ptr, ptr %nmatches.addr, align 8, !tbaa !5
  %78 = load i32, ptr %77, align 4, !tbaa !12
  %add53 = add nsw i32 %78, 1
  store i32 %add53, ptr %77, align 4, !tbaa !12
  %79 = load ptr, ptr %pairs.addr, align 8, !tbaa !5
  %80 = load ptr, ptr %pairpool.addr, align 8, !tbaa !5
  %81 = load i32, ptr %queryoffset.addr, align 4, !tbaa !12
  %82 = load i32, ptr %querycoord, align 4, !tbaa !12
  %add54 = add nsw i32 %81, %82
  %83 = load i32, ptr %genomeoffset.addr, align 4, !tbaa !12
  %84 = load i32, ptr %genomecoord, align 4, !tbaa !12
  %add55 = add nsw i32 %83, %84
  %85 = load i8, ptr %c1, align 1, !tbaa !14
  %86 = load i8, ptr %c2, align 1, !tbaa !14
  %87 = load i8, ptr %c2_alt, align 1, !tbaa !14
  %88 = load i32, ptr %dynprogindex.addr, align 4, !tbaa !12
  %call56 = call ptr @Pairpool_push(ptr noundef %79, ptr noundef %80, i32 noundef %add54, i32 noundef %add55, i8 noundef signext %85, i8 noundef signext 42, i8 noundef signext %86, i8 noundef signext %87, i32 noundef %88)
  store ptr %call56, ptr %pairs.addr, align 8, !tbaa !5
  br label %if.end78

if.else57:                                        ; preds = %lor.lhs.false
  %89 = load i8, ptr %c1_uc, align 1, !tbaa !14
  %conv58 = sext i8 %89 to i32
  %90 = load i8, ptr %c2, align 1, !tbaa !14
  %conv59 = sext i8 %90 to i32
  %91 = load i8, ptr %c2_alt, align 1, !tbaa !14
  %conv60 = sext i8 %91 to i32
  %92 = load i32, ptr %genestrand.addr, align 4, !tbaa !12
  %call61 = call zeroext i8 @Dynprog_consistent_p(i32 noundef %conv58, i32 noundef %conv59, i32 noundef %conv60, i32 noundef %92)
  %conv62 = zext i8 %call61 to i32
  %cmp63 = icmp eq i32 %conv62, 1
  br i1 %cmp63, label %if.then65, label %if.else71

if.then65:                                        ; preds = %if.else57
  %93 = load ptr, ptr %traceback_score.addr, align 8, !tbaa !5
  %94 = load i32, ptr %93, align 4, !tbaa !12
  %add66 = add nsw i32 %94, 1
  store i32 %add66, ptr %93, align 4, !tbaa !12
  %95 = load ptr, ptr %nmatches.addr, align 8, !tbaa !5
  %96 = load i32, ptr %95, align 4, !tbaa !12
  %add67 = add nsw i32 %96, 1
  store i32 %add67, ptr %95, align 4, !tbaa !12
  %97 = load ptr, ptr %pairs.addr, align 8, !tbaa !5
  %98 = load ptr, ptr %pairpool.addr, align 8, !tbaa !5
  %99 = load i32, ptr %queryoffset.addr, align 4, !tbaa !12
  %100 = load i32, ptr %querycoord, align 4, !tbaa !12
  %add68 = add nsw i32 %99, %100
  %101 = load i32, ptr %genomeoffset.addr, align 4, !tbaa !12
  %102 = load i32, ptr %genomecoord, align 4, !tbaa !12
  %add69 = add nsw i32 %101, %102
  %103 = load i8, ptr %c1, align 1, !tbaa !14
  %104 = load i8, ptr %c2, align 1, !tbaa !14
  %105 = load i8, ptr %c2_alt, align 1, !tbaa !14
  %106 = load i32, ptr %dynprogindex.addr, align 4, !tbaa !12
  %call70 = call ptr @Pairpool_push(ptr noundef %97, ptr noundef %98, i32 noundef %add68, i32 noundef %add69, i8 noundef signext %103, i8 noundef signext 58, i8 noundef signext %104, i8 noundef signext %105, i32 noundef %106)
  store ptr %call70, ptr %pairs.addr, align 8, !tbaa !5
  br label %if.end77

if.else71:                                        ; preds = %if.else57
  %107 = load ptr, ptr %traceback_score.addr, align 8, !tbaa !5
  %108 = load i32, ptr %107, align 4, !tbaa !12
  %add72 = add nsw i32 %108, -3
  store i32 %add72, ptr %107, align 4, !tbaa !12
  %109 = load ptr, ptr %nmismatches.addr, align 8, !tbaa !5
  %110 = load i32, ptr %109, align 4, !tbaa !12
  %add73 = add nsw i32 %110, 1
  store i32 %add73, ptr %109, align 4, !tbaa !12
  %111 = load ptr, ptr %pairs.addr, align 8, !tbaa !5
  %112 = load ptr, ptr %pairpool.addr, align 8, !tbaa !5
  %113 = load i32, ptr %queryoffset.addr, align 4, !tbaa !12
  %114 = load i32, ptr %querycoord, align 4, !tbaa !12
  %add74 = add nsw i32 %113, %114
  %115 = load i32, ptr %genomeoffset.addr, align 4, !tbaa !12
  %116 = load i32, ptr %genomecoord, align 4, !tbaa !12
  %add75 = add nsw i32 %115, %116
  %117 = load i8, ptr %c1, align 1, !tbaa !14
  %118 = load i8, ptr %c2, align 1, !tbaa !14
  %119 = load i8, ptr %c2_alt, align 1, !tbaa !14
  %120 = load i32, ptr %dynprogindex.addr, align 4, !tbaa !12
  %call76 = call ptr @Pairpool_push(ptr noundef %111, ptr noundef %112, i32 noundef %add74, i32 noundef %add75, i8 noundef signext %117, i8 noundef signext 32, i8 noundef signext %118, i8 noundef signext %119, i32 noundef %120)
  store ptr %call76, ptr %pairs.addr, align 8, !tbaa !5
  br label %if.end77

if.end77:                                         ; preds = %if.else71, %if.then65
  br label %if.end78

if.end78:                                         ; preds = %if.end77, %if.then51
  %121 = load ptr, ptr %r.addr, align 8, !tbaa !5
  %122 = load i32, ptr %121, align 4, !tbaa !12
  %dec79 = add nsw i32 %122, -1
  store i32 %dec79, ptr %121, align 4, !tbaa !12
  %123 = load ptr, ptr %c.addr, align 8, !tbaa !5
  %124 = load i32, ptr %123, align 4, !tbaa !12
  %dec80 = add nsw i32 %124, -1
  store i32 %dec80, ptr %123, align 4, !tbaa !12
  br label %if.end81

if.end81:                                         ; preds = %if.end78, %if.end
  br label %while.cond, !llvm.loop !50

while.end82:                                      ; preds = %land.end
  %125 = load ptr, ptr %c.addr, align 8, !tbaa !5
  %126 = load i32, ptr %125, align 4, !tbaa !12
  %127 = load i32, ptr %endc.addr, align 4, !tbaa !12
  %cmp83 = icmp eq i32 %126, %127
  br i1 %cmp83, label %if.then85, label %if.else86

if.then85:                                        ; preds = %while.end82
  br label %if.end99

if.else86:                                        ; preds = %while.end82
  %128 = load ptr, ptr %c.addr, align 8, !tbaa !5
  %129 = load i32, ptr %128, align 4, !tbaa !12
  %130 = load i32, ptr %endc.addr, align 4, !tbaa !12
  %sub87 = sub nsw i32 %129, %130
  store i32 %sub87, ptr %dist, align 4, !tbaa !12
  %131 = load ptr, ptr %pairs.addr, align 8, !tbaa !5
  %132 = load ptr, ptr %c.addr, align 8, !tbaa !5
  %133 = load i32, ptr %132, align 4, !tbaa !12
  %134 = load i32, ptr %dist, align 4, !tbaa !12
  %135 = load ptr, ptr %genomesequence.addr, align 8, !tbaa !5
  %136 = load i32, ptr %queryoffset.addr, align 4, !tbaa !12
  %137 = load i32, ptr %genomeoffset.addr, align 4, !tbaa !12
  %138 = load ptr, ptr %genome.addr, align 8, !tbaa !5
  %139 = load ptr, ptr %genomealt.addr, align 8, !tbaa !5
  %140 = load ptr, ptr %pairpool.addr, align 8, !tbaa !5
  %141 = load i8, ptr %revp.addr, align 1, !tbaa !14
  %142 = load i32, ptr %chroffset.addr, align 4, !tbaa !12
  %143 = load i32, ptr %chrhigh.addr, align 4, !tbaa !12
  %144 = load i8, ptr %watsonp.addr, align 1, !tbaa !14
  %145 = load i32, ptr %dynprogindex.addr, align 4, !tbaa !12
  %call88 = call ptr @Pairpool_add_genomeskip(ptr noundef %add_dashes_p, ptr noundef %131, i32 noundef 1, i32 noundef %133, i32 noundef %134, ptr noundef %135, i32 noundef %136, i32 noundef %137, ptr noundef %138, ptr noundef %139, ptr noundef %140, i8 noundef zeroext %141, i32 noundef %142, i32 noundef %143, i8 noundef zeroext %144, i32 noundef %145)
  store ptr %call88, ptr %pairs.addr, align 8, !tbaa !5
  %146 = load i8, ptr %add_dashes_p, align 1, !tbaa !14
  %conv89 = zext i8 %146 to i32
  %cmp90 = icmp eq i32 %conv89, 1
  br i1 %cmp90, label %if.then92, label %if.end98

if.then92:                                        ; preds = %if.else86
  %147 = load i32, ptr %dist, align 4, !tbaa !12
  %mul93 = mul nsw i32 %147, -1
  %add94 = add nsw i32 -3, %mul93
  %148 = load ptr, ptr %traceback_score.addr, align 8, !tbaa !5
  %149 = load i32, ptr %148, align 4, !tbaa !12
  %add95 = add nsw i32 %149, %add94
  store i32 %add95, ptr %148, align 4, !tbaa !12
  %150 = load ptr, ptr %nopens.addr, align 8, !tbaa !5
  %151 = load i32, ptr %150, align 4, !tbaa !12
  %add96 = add nsw i32 %151, 1
  store i32 %add96, ptr %150, align 4, !tbaa !12
  %152 = load i32, ptr %dist, align 4, !tbaa !12
  %153 = load ptr, ptr %nindels.addr, align 8, !tbaa !5
  %154 = load i32, ptr %153, align 4, !tbaa !12
  %add97 = add nsw i32 %154, %152
  store i32 %add97, ptr %153, align 4, !tbaa !12
  br label %if.end98

if.end98:                                         ; preds = %if.then92, %if.else86
  br label %if.end99

if.end99:                                         ; preds = %if.end98, %if.then85
  %155 = load ptr, ptr %pairs.addr, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 1, ptr %dir) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %genomecoord) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %querycoord) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr %add_dashes_p) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %dist) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr %c2_alt) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr %c2) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr %c1_uc) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr %c1) #5
  ret ptr %155
}

; Function Attrs: nounwind uwtable
define internal ptr @traceback_local_8_lower(ptr noundef %pairs, ptr noundef %traceback_score, ptr noundef %nmatches, ptr noundef %nmismatches, ptr noundef %nopens, ptr noundef %nindels, ptr noundef %directions_nogap, ptr noundef %directions_Egap, ptr noundef %r, ptr noundef %c, i32 noundef %endc, ptr noundef %rsequence, ptr noundef %rsequenceuc, ptr noundef %genomesequence, ptr noundef %genomesequencealt, i32 noundef %queryoffset, i32 noundef %genomeoffset, ptr noundef %pairpool, i32 noundef %genestrand, i8 noundef zeroext %revp, i32 noundef %dynprogindex) #1 {
entry:
  %pairs.addr = alloca ptr, align 8
  %traceback_score.addr = alloca ptr, align 8
  %nmatches.addr = alloca ptr, align 8
  %nmismatches.addr = alloca ptr, align 8
  %nopens.addr = alloca ptr, align 8
  %nindels.addr = alloca ptr, align 8
  %directions_nogap.addr = alloca ptr, align 8
  %directions_Egap.addr = alloca ptr, align 8
  %r.addr = alloca ptr, align 8
  %c.addr = alloca ptr, align 8
  %endc.addr = alloca i32, align 4
  %rsequence.addr = alloca ptr, align 8
  %rsequenceuc.addr = alloca ptr, align 8
  %genomesequence.addr = alloca ptr, align 8
  %genomesequencealt.addr = alloca ptr, align 8
  %queryoffset.addr = alloca i32, align 4
  %genomeoffset.addr = alloca i32, align 4
  %pairpool.addr = alloca ptr, align 8
  %genestrand.addr = alloca i32, align 4
  %revp.addr = alloca i8, align 1
  %dynprogindex.addr = alloca i32, align 4
  %c1 = alloca i8, align 1
  %c1_uc = alloca i8, align 1
  %c2 = alloca i8, align 1
  %c2_alt = alloca i8, align 1
  %dist = alloca i32, align 4
  %querycoord = alloca i32, align 4
  %genomecoord = alloca i32, align 4
  %dir = alloca i8, align 1
  store ptr %pairs, ptr %pairs.addr, align 8, !tbaa !5
  store ptr %traceback_score, ptr %traceback_score.addr, align 8, !tbaa !5
  store ptr %nmatches, ptr %nmatches.addr, align 8, !tbaa !5
  store ptr %nmismatches, ptr %nmismatches.addr, align 8, !tbaa !5
  store ptr %nopens, ptr %nopens.addr, align 8, !tbaa !5
  store ptr %nindels, ptr %nindels.addr, align 8, !tbaa !5
  store ptr %directions_nogap, ptr %directions_nogap.addr, align 8, !tbaa !5
  store ptr %directions_Egap, ptr %directions_Egap.addr, align 8, !tbaa !5
  store ptr %r, ptr %r.addr, align 8, !tbaa !5
  store ptr %c, ptr %c.addr, align 8, !tbaa !5
  store i32 %endc, ptr %endc.addr, align 4, !tbaa !12
  store ptr %rsequence, ptr %rsequence.addr, align 8, !tbaa !5
  store ptr %rsequenceuc, ptr %rsequenceuc.addr, align 8, !tbaa !5
  store ptr %genomesequence, ptr %genomesequence.addr, align 8, !tbaa !5
  store ptr %genomesequencealt, ptr %genomesequencealt.addr, align 8, !tbaa !5
  store i32 %queryoffset, ptr %queryoffset.addr, align 4, !tbaa !12
  store i32 %genomeoffset, ptr %genomeoffset.addr, align 4, !tbaa !12
  store ptr %pairpool, ptr %pairpool.addr, align 8, !tbaa !5
  store i32 %genestrand, ptr %genestrand.addr, align 4, !tbaa !12
  store i8 %revp, ptr %revp.addr, align 1, !tbaa !14
  store i32 %dynprogindex, ptr %dynprogindex.addr, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 1, ptr %c1) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr %c1_uc) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr %c2) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr %c2_alt) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %dist) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %querycoord) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %genomecoord) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr %dir) #5
  br label %while.cond

while.cond:                                       ; preds = %if.end72, %entry
  %0 = load ptr, ptr %r.addr, align 8, !tbaa !5
  %1 = load i32, ptr %0, align 4, !tbaa !12
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %2 = load ptr, ptr %c.addr, align 8, !tbaa !5
  %3 = load i32, ptr %2, align 4, !tbaa !12
  %4 = load i32, ptr %endc.addr, align 4, !tbaa !12
  %cmp1 = icmp sgt i32 %3, %4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %5 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %5, label %while.body, label %while.end73

while.body:                                       ; preds = %land.end
  %6 = load ptr, ptr %directions_nogap.addr, align 8, !tbaa !5
  %7 = load ptr, ptr %r.addr, align 8, !tbaa !5
  %8 = load i32, ptr %7, align 4, !tbaa !12
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %6, i64 %idxprom
  %9 = load ptr, ptr %arrayidx, align 8, !tbaa !5
  %10 = load ptr, ptr %c.addr, align 8, !tbaa !5
  %11 = load i32, ptr %10, align 4, !tbaa !12
  %idxprom2 = sext i32 %11 to i64
  %arrayidx3 = getelementptr inbounds i8, ptr %9, i64 %idxprom2
  %12 = load i8, ptr %arrayidx3, align 1, !tbaa !14
  store i8 %12, ptr %dir, align 1, !tbaa !14
  %conv = sext i8 %12 to i32
  %cmp4 = icmp ne i32 %conv, 0
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  store i32 1, ptr %dist, align 4, !tbaa !12
  br label %while.cond6

while.cond6:                                      ; preds = %while.body14, %if.then
  %13 = load ptr, ptr %directions_Egap.addr, align 8, !tbaa !5
  %14 = load ptr, ptr %r.addr, align 8, !tbaa !5
  %15 = load i32, ptr %14, align 4, !tbaa !12
  %dec = add nsw i32 %15, -1
  store i32 %dec, ptr %14, align 4, !tbaa !12
  %idxprom7 = sext i32 %15 to i64
  %arrayidx8 = getelementptr inbounds ptr, ptr %13, i64 %idxprom7
  %16 = load ptr, ptr %arrayidx8, align 8, !tbaa !5
  %17 = load ptr, ptr %c.addr, align 8, !tbaa !5
  %18 = load i32, ptr %17, align 4, !tbaa !12
  %idxprom9 = sext i32 %18 to i64
  %arrayidx10 = getelementptr inbounds i8, ptr %16, i64 %idxprom9
  %19 = load i8, ptr %arrayidx10, align 1, !tbaa !14
  %conv11 = sext i8 %19 to i32
  %cmp12 = icmp ne i32 %conv11, 0
  br i1 %cmp12, label %while.body14, label %while.end

while.body14:                                     ; preds = %while.cond6
  %20 = load i32, ptr %dist, align 4, !tbaa !12
  %inc = add nsw i32 %20, 1
  store i32 %inc, ptr %dist, align 4, !tbaa !12
  br label %while.cond6, !llvm.loop !51

while.end:                                        ; preds = %while.cond6
  %21 = load ptr, ptr %pairs.addr, align 8, !tbaa !5
  %22 = load ptr, ptr %r.addr, align 8, !tbaa !5
  %23 = load i32, ptr %22, align 4, !tbaa !12
  %24 = load i32, ptr %dist, align 4, !tbaa !12
  %add = add nsw i32 %23, %24
  %25 = load ptr, ptr %c.addr, align 8, !tbaa !5
  %26 = load i32, ptr %25, align 4, !tbaa !12
  %27 = load i32, ptr %dist, align 4, !tbaa !12
  %28 = load ptr, ptr %rsequence.addr, align 8, !tbaa !5
  %29 = load i32, ptr %queryoffset.addr, align 4, !tbaa !12
  %30 = load i32, ptr %genomeoffset.addr, align 4, !tbaa !12
  %31 = load ptr, ptr %pairpool.addr, align 8, !tbaa !5
  %32 = load i8, ptr %revp.addr, align 1, !tbaa !14
  %33 = load i32, ptr %dynprogindex.addr, align 4, !tbaa !12
  %call = call ptr @Pairpool_add_queryskip(ptr noundef %21, i32 noundef %add, i32 noundef %26, i32 noundef %27, ptr noundef %28, i32 noundef %29, i32 noundef %30, ptr noundef %31, i8 noundef zeroext %32, i32 noundef %33)
  store ptr %call, ptr %pairs.addr, align 8, !tbaa !5
  %34 = load i32, ptr %dist, align 4, !tbaa !12
  %mul = mul nsw i32 %34, -1
  %add15 = add nsw i32 -3, %mul
  %35 = load ptr, ptr %traceback_score.addr, align 8, !tbaa !5
  %36 = load i32, ptr %35, align 4, !tbaa !12
  %add16 = add nsw i32 %36, %add15
  store i32 %add16, ptr %35, align 4, !tbaa !12
  %37 = load ptr, ptr %nopens.addr, align 8, !tbaa !5
  %38 = load i32, ptr %37, align 4, !tbaa !12
  %add17 = add nsw i32 %38, 1
  store i32 %add17, ptr %37, align 4, !tbaa !12
  %39 = load i32, ptr %dist, align 4, !tbaa !12
  %40 = load ptr, ptr %nindels.addr, align 8, !tbaa !5
  %41 = load i32, ptr %40, align 4, !tbaa !12
  %add18 = add nsw i32 %41, %39
  store i32 %add18, ptr %40, align 4, !tbaa !12
  br label %if.end72

if.else:                                          ; preds = %while.body
  %42 = load ptr, ptr %r.addr, align 8, !tbaa !5
  %43 = load i32, ptr %42, align 4, !tbaa !12
  %sub = sub nsw i32 %43, 1
  store i32 %sub, ptr %querycoord, align 4, !tbaa !12
  %44 = load ptr, ptr %c.addr, align 8, !tbaa !5
  %45 = load i32, ptr %44, align 4, !tbaa !12
  %sub19 = sub nsw i32 %45, 1
  store i32 %sub19, ptr %genomecoord, align 4, !tbaa !12
  %46 = load i8, ptr %revp.addr, align 1, !tbaa !14
  %conv20 = zext i8 %46 to i32
  %cmp21 = icmp eq i32 %conv20, 1
  br i1 %cmp21, label %if.then23, label %if.end

if.then23:                                        ; preds = %if.else
  %47 = load i32, ptr %querycoord, align 4, !tbaa !12
  %sub24 = sub nsw i32 0, %47
  store i32 %sub24, ptr %querycoord, align 4, !tbaa !12
  %48 = load i32, ptr %genomecoord, align 4, !tbaa !12
  %sub25 = sub nsw i32 0, %48
  store i32 %sub25, ptr %genomecoord, align 4, !tbaa !12
  br label %if.end

if.end:                                           ; preds = %if.then23, %if.else
  %49 = load ptr, ptr %rsequence.addr, align 8, !tbaa !5
  %50 = load i32, ptr %querycoord, align 4, !tbaa !12
  %idxprom26 = sext i32 %50 to i64
  %arrayidx27 = getelementptr inbounds i8, ptr %49, i64 %idxprom26
  %51 = load i8, ptr %arrayidx27, align 1, !tbaa !14
  store i8 %51, ptr %c1, align 1, !tbaa !14
  %52 = load ptr, ptr %rsequenceuc.addr, align 8, !tbaa !5
  %53 = load i32, ptr %querycoord, align 4, !tbaa !12
  %idxprom28 = sext i32 %53 to i64
  %arrayidx29 = getelementptr inbounds i8, ptr %52, i64 %idxprom28
  %54 = load i8, ptr %arrayidx29, align 1, !tbaa !14
  store i8 %54, ptr %c1_uc, align 1, !tbaa !14
  %55 = load ptr, ptr %genomesequence.addr, align 8, !tbaa !5
  %56 = load i32, ptr %genomecoord, align 4, !tbaa !12
  %idxprom30 = sext i32 %56 to i64
  %arrayidx31 = getelementptr inbounds i8, ptr %55, i64 %idxprom30
  %57 = load i8, ptr %arrayidx31, align 1, !tbaa !14
  store i8 %57, ptr %c2, align 1, !tbaa !14
  %58 = load ptr, ptr %genomesequencealt.addr, align 8, !tbaa !5
  %59 = load i32, ptr %genomecoord, align 4, !tbaa !12
  %idxprom32 = sext i32 %59 to i64
  %arrayidx33 = getelementptr inbounds i8, ptr %58, i64 %idxprom32
  %60 = load i8, ptr %arrayidx33, align 1, !tbaa !14
  store i8 %60, ptr %c2_alt, align 1, !tbaa !14
  %61 = load i8, ptr %c1_uc, align 1, !tbaa !14
  %conv34 = sext i8 %61 to i32
  %62 = load i8, ptr %c2, align 1, !tbaa !14
  %conv35 = sext i8 %62 to i32
  %cmp36 = icmp eq i32 %conv34, %conv35
  br i1 %cmp36, label %if.then42, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %63 = load i8, ptr %c1_uc, align 1, !tbaa !14
  %conv38 = sext i8 %63 to i32
  %64 = load i8, ptr %c2_alt, align 1, !tbaa !14
  %conv39 = sext i8 %64 to i32
  %cmp40 = icmp eq i32 %conv38, %conv39
  br i1 %cmp40, label %if.then42, label %if.else48

if.then42:                                        ; preds = %lor.lhs.false, %if.end
  %65 = load ptr, ptr %traceback_score.addr, align 8, !tbaa !5
  %66 = load i32, ptr %65, align 4, !tbaa !12
  %add43 = add nsw i32 %66, 1
  store i32 %add43, ptr %65, align 4, !tbaa !12
  %67 = load ptr, ptr %nmatches.addr, align 8, !tbaa !5
  %68 = load i32, ptr %67, align 4, !tbaa !12
  %add44 = add nsw i32 %68, 1
  store i32 %add44, ptr %67, align 4, !tbaa !12
  %69 = load ptr, ptr %pairs.addr, align 8, !tbaa !5
  %70 = load ptr, ptr %pairpool.addr, align 8, !tbaa !5
  %71 = load i32, ptr %queryoffset.addr, align 4, !tbaa !12
  %72 = load i32, ptr %querycoord, align 4, !tbaa !12
  %add45 = add nsw i32 %71, %72
  %73 = load i32, ptr %genomeoffset.addr, align 4, !tbaa !12
  %74 = load i32, ptr %genomecoord, align 4, !tbaa !12
  %add46 = add nsw i32 %73, %74
  %75 = load i8, ptr %c1, align 1, !tbaa !14
  %76 = load i8, ptr %c2, align 1, !tbaa !14
  %77 = load i8, ptr %c2_alt, align 1, !tbaa !14
  %78 = load i32, ptr %dynprogindex.addr, align 4, !tbaa !12
  %call47 = call ptr @Pairpool_push(ptr noundef %69, ptr noundef %70, i32 noundef %add45, i32 noundef %add46, i8 noundef signext %75, i8 noundef signext 42, i8 noundef signext %76, i8 noundef signext %77, i32 noundef %78)
  store ptr %call47, ptr %pairs.addr, align 8, !tbaa !5
  br label %if.end69

if.else48:                                        ; preds = %lor.lhs.false
  %79 = load i8, ptr %c1_uc, align 1, !tbaa !14
  %conv49 = sext i8 %79 to i32
  %80 = load i8, ptr %c2, align 1, !tbaa !14
  %conv50 = sext i8 %80 to i32
  %81 = load i8, ptr %c2_alt, align 1, !tbaa !14
  %conv51 = sext i8 %81 to i32
  %82 = load i32, ptr %genestrand.addr, align 4, !tbaa !12
  %call52 = call zeroext i8 @Dynprog_consistent_p(i32 noundef %conv49, i32 noundef %conv50, i32 noundef %conv51, i32 noundef %82)
  %conv53 = zext i8 %call52 to i32
  %cmp54 = icmp eq i32 %conv53, 1
  br i1 %cmp54, label %if.then56, label %if.else62

if.then56:                                        ; preds = %if.else48
  %83 = load ptr, ptr %traceback_score.addr, align 8, !tbaa !5
  %84 = load i32, ptr %83, align 4, !tbaa !12
  %add57 = add nsw i32 %84, 1
  store i32 %add57, ptr %83, align 4, !tbaa !12
  %85 = load ptr, ptr %nmatches.addr, align 8, !tbaa !5
  %86 = load i32, ptr %85, align 4, !tbaa !12
  %add58 = add nsw i32 %86, 1
  store i32 %add58, ptr %85, align 4, !tbaa !12
  %87 = load ptr, ptr %pairs.addr, align 8, !tbaa !5
  %88 = load ptr, ptr %pairpool.addr, align 8, !tbaa !5
  %89 = load i32, ptr %queryoffset.addr, align 4, !tbaa !12
  %90 = load i32, ptr %querycoord, align 4, !tbaa !12
  %add59 = add nsw i32 %89, %90
  %91 = load i32, ptr %genomeoffset.addr, align 4, !tbaa !12
  %92 = load i32, ptr %genomecoord, align 4, !tbaa !12
  %add60 = add nsw i32 %91, %92
  %93 = load i8, ptr %c1, align 1, !tbaa !14
  %94 = load i8, ptr %c2, align 1, !tbaa !14
  %95 = load i8, ptr %c2_alt, align 1, !tbaa !14
  %96 = load i32, ptr %dynprogindex.addr, align 4, !tbaa !12
  %call61 = call ptr @Pairpool_push(ptr noundef %87, ptr noundef %88, i32 noundef %add59, i32 noundef %add60, i8 noundef signext %93, i8 noundef signext 58, i8 noundef signext %94, i8 noundef signext %95, i32 noundef %96)
  store ptr %call61, ptr %pairs.addr, align 8, !tbaa !5
  br label %if.end68

if.else62:                                        ; preds = %if.else48
  %97 = load ptr, ptr %traceback_score.addr, align 8, !tbaa !5
  %98 = load i32, ptr %97, align 4, !tbaa !12
  %add63 = add nsw i32 %98, -3
  store i32 %add63, ptr %97, align 4, !tbaa !12
  %99 = load ptr, ptr %nmismatches.addr, align 8, !tbaa !5
  %100 = load i32, ptr %99, align 4, !tbaa !12
  %add64 = add nsw i32 %100, 1
  store i32 %add64, ptr %99, align 4, !tbaa !12
  %101 = load ptr, ptr %pairs.addr, align 8, !tbaa !5
  %102 = load ptr, ptr %pairpool.addr, align 8, !tbaa !5
  %103 = load i32, ptr %queryoffset.addr, align 4, !tbaa !12
  %104 = load i32, ptr %querycoord, align 4, !tbaa !12
  %add65 = add nsw i32 %103, %104
  %105 = load i32, ptr %genomeoffset.addr, align 4, !tbaa !12
  %106 = load i32, ptr %genomecoord, align 4, !tbaa !12
  %add66 = add nsw i32 %105, %106
  %107 = load i8, ptr %c1, align 1, !tbaa !14
  %108 = load i8, ptr %c2, align 1, !tbaa !14
  %109 = load i8, ptr %c2_alt, align 1, !tbaa !14
  %110 = load i32, ptr %dynprogindex.addr, align 4, !tbaa !12
  %call67 = call ptr @Pairpool_push(ptr noundef %101, ptr noundef %102, i32 noundef %add65, i32 noundef %add66, i8 noundef signext %107, i8 noundef signext 32, i8 noundef signext %108, i8 noundef signext %109, i32 noundef %110)
  store ptr %call67, ptr %pairs.addr, align 8, !tbaa !5
  br label %if.end68

if.end68:                                         ; preds = %if.else62, %if.then56
  br label %if.end69

if.end69:                                         ; preds = %if.end68, %if.then42
  %111 = load ptr, ptr %r.addr, align 8, !tbaa !5
  %112 = load i32, ptr %111, align 4, !tbaa !12
  %dec70 = add nsw i32 %112, -1
  store i32 %dec70, ptr %111, align 4, !tbaa !12
  %113 = load ptr, ptr %c.addr, align 8, !tbaa !5
  %114 = load i32, ptr %113, align 4, !tbaa !12
  %dec71 = add nsw i32 %114, -1
  store i32 %dec71, ptr %113, align 4, !tbaa !12
  br label %if.end72

if.end72:                                         ; preds = %if.end69, %while.end
  br label %while.cond, !llvm.loop !52

while.end73:                                      ; preds = %land.end
  %115 = load ptr, ptr %r.addr, align 8, !tbaa !5
  %116 = load i32, ptr %115, align 4, !tbaa !12
  %cmp74 = icmp eq i32 %116, 0
  br i1 %cmp74, label %if.then76, label %if.else77

if.then76:                                        ; preds = %while.end73
  br label %if.end85

if.else77:                                        ; preds = %while.end73
  %117 = load ptr, ptr %r.addr, align 8, !tbaa !5
  %118 = load i32, ptr %117, align 4, !tbaa !12
  store i32 %118, ptr %dist, align 4, !tbaa !12
  %119 = load ptr, ptr %pairs.addr, align 8, !tbaa !5
  %120 = load ptr, ptr %r.addr, align 8, !tbaa !5
  %121 = load i32, ptr %120, align 4, !tbaa !12
  %122 = load i32, ptr %endc.addr, align 4, !tbaa !12
  %add78 = add nsw i32 %122, 1
  %123 = load i32, ptr %dist, align 4, !tbaa !12
  %124 = load ptr, ptr %rsequence.addr, align 8, !tbaa !5
  %125 = load i32, ptr %queryoffset.addr, align 4, !tbaa !12
  %126 = load i32, ptr %genomeoffset.addr, align 4, !tbaa !12
  %127 = load ptr, ptr %pairpool.addr, align 8, !tbaa !5
  %128 = load i8, ptr %revp.addr, align 1, !tbaa !14
  %129 = load i32, ptr %dynprogindex.addr, align 4, !tbaa !12
  %call79 = call ptr @Pairpool_add_queryskip(ptr noundef %119, i32 noundef %121, i32 noundef %add78, i32 noundef %123, ptr noundef %124, i32 noundef %125, i32 noundef %126, ptr noundef %127, i8 noundef zeroext %128, i32 noundef %129)
  store ptr %call79, ptr %pairs.addr, align 8, !tbaa !5
  %130 = load i32, ptr %dist, align 4, !tbaa !12
  %mul80 = mul nsw i32 %130, -1
  %add81 = add nsw i32 -3, %mul80
  %131 = load ptr, ptr %traceback_score.addr, align 8, !tbaa !5
  %132 = load i32, ptr %131, align 4, !tbaa !12
  %add82 = add nsw i32 %132, %add81
  store i32 %add82, ptr %131, align 4, !tbaa !12
  %133 = load ptr, ptr %nopens.addr, align 8, !tbaa !5
  %134 = load i32, ptr %133, align 4, !tbaa !12
  %add83 = add nsw i32 %134, 1
  store i32 %add83, ptr %133, align 4, !tbaa !12
  %135 = load i32, ptr %dist, align 4, !tbaa !12
  %136 = load ptr, ptr %nindels.addr, align 8, !tbaa !5
  %137 = load i32, ptr %136, align 4, !tbaa !12
  %add84 = add nsw i32 %137, %135
  store i32 %add84, ptr %136, align 4, !tbaa !12
  br label %if.end85

if.end85:                                         ; preds = %if.else77, %if.then76
  %138 = load ptr, ptr %pairs.addr, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 1, ptr %dir) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %genomecoord) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %querycoord) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %dist) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr %c2_alt) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr %c2) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr %c1_uc) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr %c1) #5
  ret ptr %138
}

declare ptr @Pairpool_push_gapholder(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i8 noundef zeroext) #3

; Function Attrs: nounwind uwtable
define internal ptr @traceback_local_16_upper(ptr noundef %pairs, ptr noundef %traceback_score, ptr noundef %nmatches, ptr noundef %nmismatches, ptr noundef %nopens, ptr noundef %nindels, ptr noundef %directions_nogap, ptr noundef %directions_Egap, ptr noundef %r, ptr noundef %c, i32 noundef %endc, ptr noundef %rsequence, ptr noundef %rsequenceuc, ptr noundef %genomesequence, ptr noundef %genomesequencealt, i32 noundef %queryoffset, i32 noundef %genomeoffset, ptr noundef %genome, ptr noundef %genomealt, ptr noundef %pairpool, i8 noundef zeroext %revp, i32 noundef %chroffset, i32 noundef %chrhigh, i8 noundef zeroext %watsonp, i32 noundef %genestrand, i32 noundef %dynprogindex) #1 {
entry:
  %pairs.addr = alloca ptr, align 8
  %traceback_score.addr = alloca ptr, align 8
  %nmatches.addr = alloca ptr, align 8
  %nmismatches.addr = alloca ptr, align 8
  %nopens.addr = alloca ptr, align 8
  %nindels.addr = alloca ptr, align 8
  %directions_nogap.addr = alloca ptr, align 8
  %directions_Egap.addr = alloca ptr, align 8
  %r.addr = alloca ptr, align 8
  %c.addr = alloca ptr, align 8
  %endc.addr = alloca i32, align 4
  %rsequence.addr = alloca ptr, align 8
  %rsequenceuc.addr = alloca ptr, align 8
  %genomesequence.addr = alloca ptr, align 8
  %genomesequencealt.addr = alloca ptr, align 8
  %queryoffset.addr = alloca i32, align 4
  %genomeoffset.addr = alloca i32, align 4
  %genome.addr = alloca ptr, align 8
  %genomealt.addr = alloca ptr, align 8
  %pairpool.addr = alloca ptr, align 8
  %revp.addr = alloca i8, align 1
  %chroffset.addr = alloca i32, align 4
  %chrhigh.addr = alloca i32, align 4
  %watsonp.addr = alloca i8, align 1
  %genestrand.addr = alloca i32, align 4
  %dynprogindex.addr = alloca i32, align 4
  %c1 = alloca i8, align 1
  %c1_uc = alloca i8, align 1
  %c2 = alloca i8, align 1
  %c2_alt = alloca i8, align 1
  %dist = alloca i32, align 4
  %add_dashes_p = alloca i8, align 1
  %querycoord = alloca i32, align 4
  %genomecoord = alloca i32, align 4
  %dir = alloca i16, align 2
  store ptr %pairs, ptr %pairs.addr, align 8, !tbaa !5
  store ptr %traceback_score, ptr %traceback_score.addr, align 8, !tbaa !5
  store ptr %nmatches, ptr %nmatches.addr, align 8, !tbaa !5
  store ptr %nmismatches, ptr %nmismatches.addr, align 8, !tbaa !5
  store ptr %nopens, ptr %nopens.addr, align 8, !tbaa !5
  store ptr %nindels, ptr %nindels.addr, align 8, !tbaa !5
  store ptr %directions_nogap, ptr %directions_nogap.addr, align 8, !tbaa !5
  store ptr %directions_Egap, ptr %directions_Egap.addr, align 8, !tbaa !5
  store ptr %r, ptr %r.addr, align 8, !tbaa !5
  store ptr %c, ptr %c.addr, align 8, !tbaa !5
  store i32 %endc, ptr %endc.addr, align 4, !tbaa !12
  store ptr %rsequence, ptr %rsequence.addr, align 8, !tbaa !5
  store ptr %rsequenceuc, ptr %rsequenceuc.addr, align 8, !tbaa !5
  store ptr %genomesequence, ptr %genomesequence.addr, align 8, !tbaa !5
  store ptr %genomesequencealt, ptr %genomesequencealt.addr, align 8, !tbaa !5
  store i32 %queryoffset, ptr %queryoffset.addr, align 4, !tbaa !12
  store i32 %genomeoffset, ptr %genomeoffset.addr, align 4, !tbaa !12
  store ptr %genome, ptr %genome.addr, align 8, !tbaa !5
  store ptr %genomealt, ptr %genomealt.addr, align 8, !tbaa !5
  store ptr %pairpool, ptr %pairpool.addr, align 8, !tbaa !5
  store i8 %revp, ptr %revp.addr, align 1, !tbaa !14
  store i32 %chroffset, ptr %chroffset.addr, align 4, !tbaa !12
  store i32 %chrhigh, ptr %chrhigh.addr, align 4, !tbaa !12
  store i8 %watsonp, ptr %watsonp.addr, align 1, !tbaa !14
  store i32 %genestrand, ptr %genestrand.addr, align 4, !tbaa !12
  store i32 %dynprogindex, ptr %dynprogindex.addr, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 1, ptr %c1) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr %c1_uc) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr %c2) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr %c2_alt) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %dist) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr %add_dashes_p) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %querycoord) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %genomecoord) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr %dir) #5
  br label %while.cond

while.cond:                                       ; preds = %if.end81, %entry
  %0 = load ptr, ptr %r.addr, align 8, !tbaa !5
  %1 = load i32, ptr %0, align 4, !tbaa !12
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %2 = load ptr, ptr %c.addr, align 8, !tbaa !5
  %3 = load i32, ptr %2, align 4, !tbaa !12
  %4 = load i32, ptr %endc.addr, align 4, !tbaa !12
  %cmp1 = icmp sgt i32 %3, %4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %5 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %5, label %while.body, label %while.end82

while.body:                                       ; preds = %land.end
  %6 = load ptr, ptr %directions_nogap.addr, align 8, !tbaa !5
  %7 = load ptr, ptr %c.addr, align 8, !tbaa !5
  %8 = load i32, ptr %7, align 4, !tbaa !12
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %6, i64 %idxprom
  %9 = load ptr, ptr %arrayidx, align 8, !tbaa !5
  %10 = load ptr, ptr %r.addr, align 8, !tbaa !5
  %11 = load i32, ptr %10, align 4, !tbaa !12
  %idxprom2 = sext i32 %11 to i64
  %arrayidx3 = getelementptr inbounds i16, ptr %9, i64 %idxprom2
  %12 = load i16, ptr %arrayidx3, align 2, !tbaa !30
  store i16 %12, ptr %dir, align 2, !tbaa !30
  %conv = sext i16 %12 to i32
  %cmp4 = icmp ne i32 %conv, 0
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  store i32 1, ptr %dist, align 4, !tbaa !12
  br label %while.cond6

while.cond6:                                      ; preds = %while.body18, %if.then
  %13 = load ptr, ptr %c.addr, align 8, !tbaa !5
  %14 = load i32, ptr %13, align 4, !tbaa !12
  %15 = load i32, ptr %endc.addr, align 4, !tbaa !12
  %cmp7 = icmp sgt i32 %14, %15
  br i1 %cmp7, label %land.rhs9, label %land.end17

land.rhs9:                                        ; preds = %while.cond6
  %16 = load ptr, ptr %directions_Egap.addr, align 8, !tbaa !5
  %17 = load ptr, ptr %c.addr, align 8, !tbaa !5
  %18 = load i32, ptr %17, align 4, !tbaa !12
  %dec = add nsw i32 %18, -1
  store i32 %dec, ptr %17, align 4, !tbaa !12
  %idxprom10 = sext i32 %18 to i64
  %arrayidx11 = getelementptr inbounds ptr, ptr %16, i64 %idxprom10
  %19 = load ptr, ptr %arrayidx11, align 8, !tbaa !5
  %20 = load ptr, ptr %r.addr, align 8, !tbaa !5
  %21 = load i32, ptr %20, align 4, !tbaa !12
  %idxprom12 = sext i32 %21 to i64
  %arrayidx13 = getelementptr inbounds i16, ptr %19, i64 %idxprom12
  %22 = load i16, ptr %arrayidx13, align 2, !tbaa !30
  %conv14 = sext i16 %22 to i32
  %cmp15 = icmp ne i32 %conv14, 0
  br label %land.end17

land.end17:                                       ; preds = %land.rhs9, %while.cond6
  %23 = phi i1 [ false, %while.cond6 ], [ %cmp15, %land.rhs9 ]
  br i1 %23, label %while.body18, label %while.end

while.body18:                                     ; preds = %land.end17
  %24 = load i32, ptr %dist, align 4, !tbaa !12
  %inc = add nsw i32 %24, 1
  store i32 %inc, ptr %dist, align 4, !tbaa !12
  br label %while.cond6, !llvm.loop !53

while.end:                                        ; preds = %land.end17
  %25 = load ptr, ptr %pairs.addr, align 8, !tbaa !5
  %26 = load ptr, ptr %r.addr, align 8, !tbaa !5
  %27 = load i32, ptr %26, align 4, !tbaa !12
  %28 = load ptr, ptr %c.addr, align 8, !tbaa !5
  %29 = load i32, ptr %28, align 4, !tbaa !12
  %30 = load i32, ptr %dist, align 4, !tbaa !12
  %add = add nsw i32 %29, %30
  %31 = load i32, ptr %dist, align 4, !tbaa !12
  %32 = load ptr, ptr %genomesequence.addr, align 8, !tbaa !5
  %33 = load i32, ptr %queryoffset.addr, align 4, !tbaa !12
  %34 = load i32, ptr %genomeoffset.addr, align 4, !tbaa !12
  %35 = load ptr, ptr %genome.addr, align 8, !tbaa !5
  %36 = load ptr, ptr %genomealt.addr, align 8, !tbaa !5
  %37 = load ptr, ptr %pairpool.addr, align 8, !tbaa !5
  %38 = load i8, ptr %revp.addr, align 1, !tbaa !14
  %39 = load i32, ptr %chroffset.addr, align 4, !tbaa !12
  %40 = load i32, ptr %chrhigh.addr, align 4, !tbaa !12
  %41 = load i8, ptr %watsonp.addr, align 1, !tbaa !14
  %42 = load i32, ptr %dynprogindex.addr, align 4, !tbaa !12
  %call = call ptr @Pairpool_add_genomeskip(ptr noundef %add_dashes_p, ptr noundef %25, i32 noundef %27, i32 noundef %add, i32 noundef %31, ptr noundef %32, i32 noundef %33, i32 noundef %34, ptr noundef %35, ptr noundef %36, ptr noundef %37, i8 noundef zeroext %38, i32 noundef %39, i32 noundef %40, i8 noundef zeroext %41, i32 noundef %42)
  store ptr %call, ptr %pairs.addr, align 8, !tbaa !5
  %43 = load i8, ptr %add_dashes_p, align 1, !tbaa !14
  %conv19 = zext i8 %43 to i32
  %cmp20 = icmp eq i32 %conv19, 1
  br i1 %cmp20, label %if.then22, label %if.end

if.then22:                                        ; preds = %while.end
  %44 = load i32, ptr %dist, align 4, !tbaa !12
  %mul = mul nsw i32 %44, -1
  %add23 = add nsw i32 -3, %mul
  %45 = load ptr, ptr %traceback_score.addr, align 8, !tbaa !5
  %46 = load i32, ptr %45, align 4, !tbaa !12
  %add24 = add nsw i32 %46, %add23
  store i32 %add24, ptr %45, align 4, !tbaa !12
  %47 = load ptr, ptr %nopens.addr, align 8, !tbaa !5
  %48 = load i32, ptr %47, align 4, !tbaa !12
  %add25 = add nsw i32 %48, 1
  store i32 %add25, ptr %47, align 4, !tbaa !12
  %49 = load i32, ptr %dist, align 4, !tbaa !12
  %50 = load ptr, ptr %nindels.addr, align 8, !tbaa !5
  %51 = load i32, ptr %50, align 4, !tbaa !12
  %add26 = add nsw i32 %51, %49
  store i32 %add26, ptr %50, align 4, !tbaa !12
  br label %if.end

if.end:                                           ; preds = %if.then22, %while.end
  br label %if.end81

if.else:                                          ; preds = %while.body
  %52 = load ptr, ptr %r.addr, align 8, !tbaa !5
  %53 = load i32, ptr %52, align 4, !tbaa !12
  %sub = sub nsw i32 %53, 1
  store i32 %sub, ptr %querycoord, align 4, !tbaa !12
  %54 = load ptr, ptr %c.addr, align 8, !tbaa !5
  %55 = load i32, ptr %54, align 4, !tbaa !12
  %sub27 = sub nsw i32 %55, 1
  store i32 %sub27, ptr %genomecoord, align 4, !tbaa !12
  %56 = load i8, ptr %revp.addr, align 1, !tbaa !14
  %conv28 = zext i8 %56 to i32
  %cmp29 = icmp eq i32 %conv28, 1
  br i1 %cmp29, label %if.then31, label %if.end34

if.then31:                                        ; preds = %if.else
  %57 = load i32, ptr %querycoord, align 4, !tbaa !12
  %sub32 = sub nsw i32 0, %57
  store i32 %sub32, ptr %querycoord, align 4, !tbaa !12
  %58 = load i32, ptr %genomecoord, align 4, !tbaa !12
  %sub33 = sub nsw i32 0, %58
  store i32 %sub33, ptr %genomecoord, align 4, !tbaa !12
  br label %if.end34

if.end34:                                         ; preds = %if.then31, %if.else
  %59 = load ptr, ptr %rsequence.addr, align 8, !tbaa !5
  %60 = load i32, ptr %querycoord, align 4, !tbaa !12
  %idxprom35 = sext i32 %60 to i64
  %arrayidx36 = getelementptr inbounds i8, ptr %59, i64 %idxprom35
  %61 = load i8, ptr %arrayidx36, align 1, !tbaa !14
  store i8 %61, ptr %c1, align 1, !tbaa !14
  %62 = load ptr, ptr %rsequenceuc.addr, align 8, !tbaa !5
  %63 = load i32, ptr %querycoord, align 4, !tbaa !12
  %idxprom37 = sext i32 %63 to i64
  %arrayidx38 = getelementptr inbounds i8, ptr %62, i64 %idxprom37
  %64 = load i8, ptr %arrayidx38, align 1, !tbaa !14
  store i8 %64, ptr %c1_uc, align 1, !tbaa !14
  %65 = load ptr, ptr %genomesequence.addr, align 8, !tbaa !5
  %66 = load i32, ptr %genomecoord, align 4, !tbaa !12
  %idxprom39 = sext i32 %66 to i64
  %arrayidx40 = getelementptr inbounds i8, ptr %65, i64 %idxprom39
  %67 = load i8, ptr %arrayidx40, align 1, !tbaa !14
  store i8 %67, ptr %c2, align 1, !tbaa !14
  %68 = load ptr, ptr %genomesequencealt.addr, align 8, !tbaa !5
  %69 = load i32, ptr %genomecoord, align 4, !tbaa !12
  %idxprom41 = sext i32 %69 to i64
  %arrayidx42 = getelementptr inbounds i8, ptr %68, i64 %idxprom41
  %70 = load i8, ptr %arrayidx42, align 1, !tbaa !14
  store i8 %70, ptr %c2_alt, align 1, !tbaa !14
  %71 = load i8, ptr %c1_uc, align 1, !tbaa !14
  %conv43 = sext i8 %71 to i32
  %72 = load i8, ptr %c2, align 1, !tbaa !14
  %conv44 = sext i8 %72 to i32
  %cmp45 = icmp eq i32 %conv43, %conv44
  br i1 %cmp45, label %if.then51, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end34
  %73 = load i8, ptr %c1_uc, align 1, !tbaa !14
  %conv47 = sext i8 %73 to i32
  %74 = load i8, ptr %c2_alt, align 1, !tbaa !14
  %conv48 = sext i8 %74 to i32
  %cmp49 = icmp eq i32 %conv47, %conv48
  br i1 %cmp49, label %if.then51, label %if.else57

if.then51:                                        ; preds = %lor.lhs.false, %if.end34
  %75 = load ptr, ptr %traceback_score.addr, align 8, !tbaa !5
  %76 = load i32, ptr %75, align 4, !tbaa !12
  %add52 = add nsw i32 %76, 1
  store i32 %add52, ptr %75, align 4, !tbaa !12
  %77 = load ptr, ptr %nmatches.addr, align 8, !tbaa !5
  %78 = load i32, ptr %77, align 4, !tbaa !12
  %add53 = add nsw i32 %78, 1
  store i32 %add53, ptr %77, align 4, !tbaa !12
  %79 = load ptr, ptr %pairs.addr, align 8, !tbaa !5
  %80 = load ptr, ptr %pairpool.addr, align 8, !tbaa !5
  %81 = load i32, ptr %queryoffset.addr, align 4, !tbaa !12
  %82 = load i32, ptr %querycoord, align 4, !tbaa !12
  %add54 = add nsw i32 %81, %82
  %83 = load i32, ptr %genomeoffset.addr, align 4, !tbaa !12
  %84 = load i32, ptr %genomecoord, align 4, !tbaa !12
  %add55 = add nsw i32 %83, %84
  %85 = load i8, ptr %c1, align 1, !tbaa !14
  %86 = load i8, ptr %c2, align 1, !tbaa !14
  %87 = load i8, ptr %c2_alt, align 1, !tbaa !14
  %88 = load i32, ptr %dynprogindex.addr, align 4, !tbaa !12
  %call56 = call ptr @Pairpool_push(ptr noundef %79, ptr noundef %80, i32 noundef %add54, i32 noundef %add55, i8 noundef signext %85, i8 noundef signext 42, i8 noundef signext %86, i8 noundef signext %87, i32 noundef %88)
  store ptr %call56, ptr %pairs.addr, align 8, !tbaa !5
  br label %if.end78

if.else57:                                        ; preds = %lor.lhs.false
  %89 = load i8, ptr %c1_uc, align 1, !tbaa !14
  %conv58 = sext i8 %89 to i32
  %90 = load i8, ptr %c2, align 1, !tbaa !14
  %conv59 = sext i8 %90 to i32
  %91 = load i8, ptr %c2_alt, align 1, !tbaa !14
  %conv60 = sext i8 %91 to i32
  %92 = load i32, ptr %genestrand.addr, align 4, !tbaa !12
  %call61 = call zeroext i8 @Dynprog_consistent_p(i32 noundef %conv58, i32 noundef %conv59, i32 noundef %conv60, i32 noundef %92)
  %conv62 = zext i8 %call61 to i32
  %cmp63 = icmp eq i32 %conv62, 1
  br i1 %cmp63, label %if.then65, label %if.else71

if.then65:                                        ; preds = %if.else57
  %93 = load ptr, ptr %traceback_score.addr, align 8, !tbaa !5
  %94 = load i32, ptr %93, align 4, !tbaa !12
  %add66 = add nsw i32 %94, 1
  store i32 %add66, ptr %93, align 4, !tbaa !12
  %95 = load ptr, ptr %nmatches.addr, align 8, !tbaa !5
  %96 = load i32, ptr %95, align 4, !tbaa !12
  %add67 = add nsw i32 %96, 1
  store i32 %add67, ptr %95, align 4, !tbaa !12
  %97 = load ptr, ptr %pairs.addr, align 8, !tbaa !5
  %98 = load ptr, ptr %pairpool.addr, align 8, !tbaa !5
  %99 = load i32, ptr %queryoffset.addr, align 4, !tbaa !12
  %100 = load i32, ptr %querycoord, align 4, !tbaa !12
  %add68 = add nsw i32 %99, %100
  %101 = load i32, ptr %genomeoffset.addr, align 4, !tbaa !12
  %102 = load i32, ptr %genomecoord, align 4, !tbaa !12
  %add69 = add nsw i32 %101, %102
  %103 = load i8, ptr %c1, align 1, !tbaa !14
  %104 = load i8, ptr %c2, align 1, !tbaa !14
  %105 = load i8, ptr %c2_alt, align 1, !tbaa !14
  %106 = load i32, ptr %dynprogindex.addr, align 4, !tbaa !12
  %call70 = call ptr @Pairpool_push(ptr noundef %97, ptr noundef %98, i32 noundef %add68, i32 noundef %add69, i8 noundef signext %103, i8 noundef signext 58, i8 noundef signext %104, i8 noundef signext %105, i32 noundef %106)
  store ptr %call70, ptr %pairs.addr, align 8, !tbaa !5
  br label %if.end77

if.else71:                                        ; preds = %if.else57
  %107 = load ptr, ptr %traceback_score.addr, align 8, !tbaa !5
  %108 = load i32, ptr %107, align 4, !tbaa !12
  %add72 = add nsw i32 %108, -3
  store i32 %add72, ptr %107, align 4, !tbaa !12
  %109 = load ptr, ptr %nmismatches.addr, align 8, !tbaa !5
  %110 = load i32, ptr %109, align 4, !tbaa !12
  %add73 = add nsw i32 %110, 1
  store i32 %add73, ptr %109, align 4, !tbaa !12
  %111 = load ptr, ptr %pairs.addr, align 8, !tbaa !5
  %112 = load ptr, ptr %pairpool.addr, align 8, !tbaa !5
  %113 = load i32, ptr %queryoffset.addr, align 4, !tbaa !12
  %114 = load i32, ptr %querycoord, align 4, !tbaa !12
  %add74 = add nsw i32 %113, %114
  %115 = load i32, ptr %genomeoffset.addr, align 4, !tbaa !12
  %116 = load i32, ptr %genomecoord, align 4, !tbaa !12
  %add75 = add nsw i32 %115, %116
  %117 = load i8, ptr %c1, align 1, !tbaa !14
  %118 = load i8, ptr %c2, align 1, !tbaa !14
  %119 = load i8, ptr %c2_alt, align 1, !tbaa !14
  %120 = load i32, ptr %dynprogindex.addr, align 4, !tbaa !12
  %call76 = call ptr @Pairpool_push(ptr noundef %111, ptr noundef %112, i32 noundef %add74, i32 noundef %add75, i8 noundef signext %117, i8 noundef signext 32, i8 noundef signext %118, i8 noundef signext %119, i32 noundef %120)
  store ptr %call76, ptr %pairs.addr, align 8, !tbaa !5
  br label %if.end77

if.end77:                                         ; preds = %if.else71, %if.then65
  br label %if.end78

if.end78:                                         ; preds = %if.end77, %if.then51
  %121 = load ptr, ptr %r.addr, align 8, !tbaa !5
  %122 = load i32, ptr %121, align 4, !tbaa !12
  %dec79 = add nsw i32 %122, -1
  store i32 %dec79, ptr %121, align 4, !tbaa !12
  %123 = load ptr, ptr %c.addr, align 8, !tbaa !5
  %124 = load i32, ptr %123, align 4, !tbaa !12
  %dec80 = add nsw i32 %124, -1
  store i32 %dec80, ptr %123, align 4, !tbaa !12
  br label %if.end81

if.end81:                                         ; preds = %if.end78, %if.end
  br label %while.cond, !llvm.loop !54

while.end82:                                      ; preds = %land.end
  %125 = load ptr, ptr %c.addr, align 8, !tbaa !5
  %126 = load i32, ptr %125, align 4, !tbaa !12
  %127 = load i32, ptr %endc.addr, align 4, !tbaa !12
  %cmp83 = icmp eq i32 %126, %127
  br i1 %cmp83, label %if.then85, label %if.else86

if.then85:                                        ; preds = %while.end82
  br label %if.end99

if.else86:                                        ; preds = %while.end82
  %128 = load ptr, ptr %c.addr, align 8, !tbaa !5
  %129 = load i32, ptr %128, align 4, !tbaa !12
  %130 = load i32, ptr %endc.addr, align 4, !tbaa !12
  %sub87 = sub nsw i32 %129, %130
  store i32 %sub87, ptr %dist, align 4, !tbaa !12
  %131 = load ptr, ptr %pairs.addr, align 8, !tbaa !5
  %132 = load ptr, ptr %c.addr, align 8, !tbaa !5
  %133 = load i32, ptr %132, align 4, !tbaa !12
  %134 = load i32, ptr %dist, align 4, !tbaa !12
  %135 = load ptr, ptr %genomesequence.addr, align 8, !tbaa !5
  %136 = load i32, ptr %queryoffset.addr, align 4, !tbaa !12
  %137 = load i32, ptr %genomeoffset.addr, align 4, !tbaa !12
  %138 = load ptr, ptr %genome.addr, align 8, !tbaa !5
  %139 = load ptr, ptr %genomealt.addr, align 8, !tbaa !5
  %140 = load ptr, ptr %pairpool.addr, align 8, !tbaa !5
  %141 = load i8, ptr %revp.addr, align 1, !tbaa !14
  %142 = load i32, ptr %chroffset.addr, align 4, !tbaa !12
  %143 = load i32, ptr %chrhigh.addr, align 4, !tbaa !12
  %144 = load i8, ptr %watsonp.addr, align 1, !tbaa !14
  %145 = load i32, ptr %dynprogindex.addr, align 4, !tbaa !12
  %call88 = call ptr @Pairpool_add_genomeskip(ptr noundef %add_dashes_p, ptr noundef %131, i32 noundef 1, i32 noundef %133, i32 noundef %134, ptr noundef %135, i32 noundef %136, i32 noundef %137, ptr noundef %138, ptr noundef %139, ptr noundef %140, i8 noundef zeroext %141, i32 noundef %142, i32 noundef %143, i8 noundef zeroext %144, i32 noundef %145)
  store ptr %call88, ptr %pairs.addr, align 8, !tbaa !5
  %146 = load i8, ptr %add_dashes_p, align 1, !tbaa !14
  %conv89 = zext i8 %146 to i32
  %cmp90 = icmp eq i32 %conv89, 1
  br i1 %cmp90, label %if.then92, label %if.end98

if.then92:                                        ; preds = %if.else86
  %147 = load i32, ptr %dist, align 4, !tbaa !12
  %mul93 = mul nsw i32 %147, -1
  %add94 = add nsw i32 -3, %mul93
  %148 = load ptr, ptr %traceback_score.addr, align 8, !tbaa !5
  %149 = load i32, ptr %148, align 4, !tbaa !12
  %add95 = add nsw i32 %149, %add94
  store i32 %add95, ptr %148, align 4, !tbaa !12
  %150 = load ptr, ptr %nopens.addr, align 8, !tbaa !5
  %151 = load i32, ptr %150, align 4, !tbaa !12
  %add96 = add nsw i32 %151, 1
  store i32 %add96, ptr %150, align 4, !tbaa !12
  %152 = load i32, ptr %dist, align 4, !tbaa !12
  %153 = load ptr, ptr %nindels.addr, align 8, !tbaa !5
  %154 = load i32, ptr %153, align 4, !tbaa !12
  %add97 = add nsw i32 %154, %152
  store i32 %add97, ptr %153, align 4, !tbaa !12
  br label %if.end98

if.end98:                                         ; preds = %if.then92, %if.else86
  br label %if.end99

if.end99:                                         ; preds = %if.end98, %if.then85
  %155 = load ptr, ptr %pairs.addr, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 2, ptr %dir) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %genomecoord) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %querycoord) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr %add_dashes_p) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %dist) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr %c2_alt) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr %c2) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr %c1_uc) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr %c1) #5
  ret ptr %155
}

; Function Attrs: nounwind uwtable
define internal ptr @traceback_local_16_lower(ptr noundef %pairs, ptr noundef %traceback_score, ptr noundef %nmatches, ptr noundef %nmismatches, ptr noundef %nopens, ptr noundef %nindels, ptr noundef %directions_nogap, ptr noundef %directions_Egap, ptr noundef %r, ptr noundef %c, i32 noundef %endc, ptr noundef %rsequence, ptr noundef %rsequenceuc, ptr noundef %genomesequence, ptr noundef %genomesequencealt, i32 noundef %queryoffset, i32 noundef %genomeoffset, ptr noundef %pairpool, i32 noundef %genestrand, i8 noundef zeroext %revp, i32 noundef %dynprogindex) #1 {
entry:
  %pairs.addr = alloca ptr, align 8
  %traceback_score.addr = alloca ptr, align 8
  %nmatches.addr = alloca ptr, align 8
  %nmismatches.addr = alloca ptr, align 8
  %nopens.addr = alloca ptr, align 8
  %nindels.addr = alloca ptr, align 8
  %directions_nogap.addr = alloca ptr, align 8
  %directions_Egap.addr = alloca ptr, align 8
  %r.addr = alloca ptr, align 8
  %c.addr = alloca ptr, align 8
  %endc.addr = alloca i32, align 4
  %rsequence.addr = alloca ptr, align 8
  %rsequenceuc.addr = alloca ptr, align 8
  %genomesequence.addr = alloca ptr, align 8
  %genomesequencealt.addr = alloca ptr, align 8
  %queryoffset.addr = alloca i32, align 4
  %genomeoffset.addr = alloca i32, align 4
  %pairpool.addr = alloca ptr, align 8
  %genestrand.addr = alloca i32, align 4
  %revp.addr = alloca i8, align 1
  %dynprogindex.addr = alloca i32, align 4
  %c1 = alloca i8, align 1
  %c1_uc = alloca i8, align 1
  %c2 = alloca i8, align 1
  %c2_alt = alloca i8, align 1
  %dist = alloca i32, align 4
  %querycoord = alloca i32, align 4
  %genomecoord = alloca i32, align 4
  %dir = alloca i16, align 2
  store ptr %pairs, ptr %pairs.addr, align 8, !tbaa !5
  store ptr %traceback_score, ptr %traceback_score.addr, align 8, !tbaa !5
  store ptr %nmatches, ptr %nmatches.addr, align 8, !tbaa !5
  store ptr %nmismatches, ptr %nmismatches.addr, align 8, !tbaa !5
  store ptr %nopens, ptr %nopens.addr, align 8, !tbaa !5
  store ptr %nindels, ptr %nindels.addr, align 8, !tbaa !5
  store ptr %directions_nogap, ptr %directions_nogap.addr, align 8, !tbaa !5
  store ptr %directions_Egap, ptr %directions_Egap.addr, align 8, !tbaa !5
  store ptr %r, ptr %r.addr, align 8, !tbaa !5
  store ptr %c, ptr %c.addr, align 8, !tbaa !5
  store i32 %endc, ptr %endc.addr, align 4, !tbaa !12
  store ptr %rsequence, ptr %rsequence.addr, align 8, !tbaa !5
  store ptr %rsequenceuc, ptr %rsequenceuc.addr, align 8, !tbaa !5
  store ptr %genomesequence, ptr %genomesequence.addr, align 8, !tbaa !5
  store ptr %genomesequencealt, ptr %genomesequencealt.addr, align 8, !tbaa !5
  store i32 %queryoffset, ptr %queryoffset.addr, align 4, !tbaa !12
  store i32 %genomeoffset, ptr %genomeoffset.addr, align 4, !tbaa !12
  store ptr %pairpool, ptr %pairpool.addr, align 8, !tbaa !5
  store i32 %genestrand, ptr %genestrand.addr, align 4, !tbaa !12
  store i8 %revp, ptr %revp.addr, align 1, !tbaa !14
  store i32 %dynprogindex, ptr %dynprogindex.addr, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 1, ptr %c1) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr %c1_uc) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr %c2) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr %c2_alt) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %dist) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %querycoord) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %genomecoord) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr %dir) #5
  br label %while.cond

while.cond:                                       ; preds = %if.end72, %entry
  %0 = load ptr, ptr %r.addr, align 8, !tbaa !5
  %1 = load i32, ptr %0, align 4, !tbaa !12
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %2 = load ptr, ptr %c.addr, align 8, !tbaa !5
  %3 = load i32, ptr %2, align 4, !tbaa !12
  %4 = load i32, ptr %endc.addr, align 4, !tbaa !12
  %cmp1 = icmp sgt i32 %3, %4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %5 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %5, label %while.body, label %while.end73

while.body:                                       ; preds = %land.end
  %6 = load ptr, ptr %directions_nogap.addr, align 8, !tbaa !5
  %7 = load ptr, ptr %r.addr, align 8, !tbaa !5
  %8 = load i32, ptr %7, align 4, !tbaa !12
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %6, i64 %idxprom
  %9 = load ptr, ptr %arrayidx, align 8, !tbaa !5
  %10 = load ptr, ptr %c.addr, align 8, !tbaa !5
  %11 = load i32, ptr %10, align 4, !tbaa !12
  %idxprom2 = sext i32 %11 to i64
  %arrayidx3 = getelementptr inbounds i16, ptr %9, i64 %idxprom2
  %12 = load i16, ptr %arrayidx3, align 2, !tbaa !30
  store i16 %12, ptr %dir, align 2, !tbaa !30
  %conv = sext i16 %12 to i32
  %cmp4 = icmp ne i32 %conv, 0
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  store i32 1, ptr %dist, align 4, !tbaa !12
  br label %while.cond6

while.cond6:                                      ; preds = %while.body14, %if.then
  %13 = load ptr, ptr %directions_Egap.addr, align 8, !tbaa !5
  %14 = load ptr, ptr %r.addr, align 8, !tbaa !5
  %15 = load i32, ptr %14, align 4, !tbaa !12
  %dec = add nsw i32 %15, -1
  store i32 %dec, ptr %14, align 4, !tbaa !12
  %idxprom7 = sext i32 %15 to i64
  %arrayidx8 = getelementptr inbounds ptr, ptr %13, i64 %idxprom7
  %16 = load ptr, ptr %arrayidx8, align 8, !tbaa !5
  %17 = load ptr, ptr %c.addr, align 8, !tbaa !5
  %18 = load i32, ptr %17, align 4, !tbaa !12
  %idxprom9 = sext i32 %18 to i64
  %arrayidx10 = getelementptr inbounds i16, ptr %16, i64 %idxprom9
  %19 = load i16, ptr %arrayidx10, align 2, !tbaa !30
  %conv11 = sext i16 %19 to i32
  %cmp12 = icmp ne i32 %conv11, 0
  br i1 %cmp12, label %while.body14, label %while.end

while.body14:                                     ; preds = %while.cond6
  %20 = load i32, ptr %dist, align 4, !tbaa !12
  %inc = add nsw i32 %20, 1
  store i32 %inc, ptr %dist, align 4, !tbaa !12
  br label %while.cond6, !llvm.loop !55

while.end:                                        ; preds = %while.cond6
  %21 = load ptr, ptr %pairs.addr, align 8, !tbaa !5
  %22 = load ptr, ptr %r.addr, align 8, !tbaa !5
  %23 = load i32, ptr %22, align 4, !tbaa !12
  %24 = load i32, ptr %dist, align 4, !tbaa !12
  %add = add nsw i32 %23, %24
  %25 = load ptr, ptr %c.addr, align 8, !tbaa !5
  %26 = load i32, ptr %25, align 4, !tbaa !12
  %27 = load i32, ptr %dist, align 4, !tbaa !12
  %28 = load ptr, ptr %rsequence.addr, align 8, !tbaa !5
  %29 = load i32, ptr %queryoffset.addr, align 4, !tbaa !12
  %30 = load i32, ptr %genomeoffset.addr, align 4, !tbaa !12
  %31 = load ptr, ptr %pairpool.addr, align 8, !tbaa !5
  %32 = load i8, ptr %revp.addr, align 1, !tbaa !14
  %33 = load i32, ptr %dynprogindex.addr, align 4, !tbaa !12
  %call = call ptr @Pairpool_add_queryskip(ptr noundef %21, i32 noundef %add, i32 noundef %26, i32 noundef %27, ptr noundef %28, i32 noundef %29, i32 noundef %30, ptr noundef %31, i8 noundef zeroext %32, i32 noundef %33)
  store ptr %call, ptr %pairs.addr, align 8, !tbaa !5
  %34 = load i32, ptr %dist, align 4, !tbaa !12
  %mul = mul nsw i32 %34, -1
  %add15 = add nsw i32 -3, %mul
  %35 = load ptr, ptr %traceback_score.addr, align 8, !tbaa !5
  %36 = load i32, ptr %35, align 4, !tbaa !12
  %add16 = add nsw i32 %36, %add15
  store i32 %add16, ptr %35, align 4, !tbaa !12
  %37 = load ptr, ptr %nopens.addr, align 8, !tbaa !5
  %38 = load i32, ptr %37, align 4, !tbaa !12
  %add17 = add nsw i32 %38, 1
  store i32 %add17, ptr %37, align 4, !tbaa !12
  %39 = load i32, ptr %dist, align 4, !tbaa !12
  %40 = load ptr, ptr %nindels.addr, align 8, !tbaa !5
  %41 = load i32, ptr %40, align 4, !tbaa !12
  %add18 = add nsw i32 %41, %39
  store i32 %add18, ptr %40, align 4, !tbaa !12
  br label %if.end72

if.else:                                          ; preds = %while.body
  %42 = load ptr, ptr %r.addr, align 8, !tbaa !5
  %43 = load i32, ptr %42, align 4, !tbaa !12
  %sub = sub nsw i32 %43, 1
  store i32 %sub, ptr %querycoord, align 4, !tbaa !12
  %44 = load ptr, ptr %c.addr, align 8, !tbaa !5
  %45 = load i32, ptr %44, align 4, !tbaa !12
  %sub19 = sub nsw i32 %45, 1
  store i32 %sub19, ptr %genomecoord, align 4, !tbaa !12
  %46 = load i8, ptr %revp.addr, align 1, !tbaa !14
  %conv20 = zext i8 %46 to i32
  %cmp21 = icmp eq i32 %conv20, 1
  br i1 %cmp21, label %if.then23, label %if.end

if.then23:                                        ; preds = %if.else
  %47 = load i32, ptr %querycoord, align 4, !tbaa !12
  %sub24 = sub nsw i32 0, %47
  store i32 %sub24, ptr %querycoord, align 4, !tbaa !12
  %48 = load i32, ptr %genomecoord, align 4, !tbaa !12
  %sub25 = sub nsw i32 0, %48
  store i32 %sub25, ptr %genomecoord, align 4, !tbaa !12
  br label %if.end

if.end:                                           ; preds = %if.then23, %if.else
  %49 = load ptr, ptr %rsequence.addr, align 8, !tbaa !5
  %50 = load i32, ptr %querycoord, align 4, !tbaa !12
  %idxprom26 = sext i32 %50 to i64
  %arrayidx27 = getelementptr inbounds i8, ptr %49, i64 %idxprom26
  %51 = load i8, ptr %arrayidx27, align 1, !tbaa !14
  store i8 %51, ptr %c1, align 1, !tbaa !14
  %52 = load ptr, ptr %rsequenceuc.addr, align 8, !tbaa !5
  %53 = load i32, ptr %querycoord, align 4, !tbaa !12
  %idxprom28 = sext i32 %53 to i64
  %arrayidx29 = getelementptr inbounds i8, ptr %52, i64 %idxprom28
  %54 = load i8, ptr %arrayidx29, align 1, !tbaa !14
  store i8 %54, ptr %c1_uc, align 1, !tbaa !14
  %55 = load ptr, ptr %genomesequence.addr, align 8, !tbaa !5
  %56 = load i32, ptr %genomecoord, align 4, !tbaa !12
  %idxprom30 = sext i32 %56 to i64
  %arrayidx31 = getelementptr inbounds i8, ptr %55, i64 %idxprom30
  %57 = load i8, ptr %arrayidx31, align 1, !tbaa !14
  store i8 %57, ptr %c2, align 1, !tbaa !14
  %58 = load ptr, ptr %genomesequencealt.addr, align 8, !tbaa !5
  %59 = load i32, ptr %genomecoord, align 4, !tbaa !12
  %idxprom32 = sext i32 %59 to i64
  %arrayidx33 = getelementptr inbounds i8, ptr %58, i64 %idxprom32
  %60 = load i8, ptr %arrayidx33, align 1, !tbaa !14
  store i8 %60, ptr %c2_alt, align 1, !tbaa !14
  %61 = load i8, ptr %c1_uc, align 1, !tbaa !14
  %conv34 = sext i8 %61 to i32
  %62 = load i8, ptr %c2, align 1, !tbaa !14
  %conv35 = sext i8 %62 to i32
  %cmp36 = icmp eq i32 %conv34, %conv35
  br i1 %cmp36, label %if.then42, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %63 = load i8, ptr %c1_uc, align 1, !tbaa !14
  %conv38 = sext i8 %63 to i32
  %64 = load i8, ptr %c2_alt, align 1, !tbaa !14
  %conv39 = sext i8 %64 to i32
  %cmp40 = icmp eq i32 %conv38, %conv39
  br i1 %cmp40, label %if.then42, label %if.else48

if.then42:                                        ; preds = %lor.lhs.false, %if.end
  %65 = load ptr, ptr %traceback_score.addr, align 8, !tbaa !5
  %66 = load i32, ptr %65, align 4, !tbaa !12
  %add43 = add nsw i32 %66, 1
  store i32 %add43, ptr %65, align 4, !tbaa !12
  %67 = load ptr, ptr %nmatches.addr, align 8, !tbaa !5
  %68 = load i32, ptr %67, align 4, !tbaa !12
  %add44 = add nsw i32 %68, 1
  store i32 %add44, ptr %67, align 4, !tbaa !12
  %69 = load ptr, ptr %pairs.addr, align 8, !tbaa !5
  %70 = load ptr, ptr %pairpool.addr, align 8, !tbaa !5
  %71 = load i32, ptr %queryoffset.addr, align 4, !tbaa !12
  %72 = load i32, ptr %querycoord, align 4, !tbaa !12
  %add45 = add nsw i32 %71, %72
  %73 = load i32, ptr %genomeoffset.addr, align 4, !tbaa !12
  %74 = load i32, ptr %genomecoord, align 4, !tbaa !12
  %add46 = add nsw i32 %73, %74
  %75 = load i8, ptr %c1, align 1, !tbaa !14
  %76 = load i8, ptr %c2, align 1, !tbaa !14
  %77 = load i8, ptr %c2_alt, align 1, !tbaa !14
  %78 = load i32, ptr %dynprogindex.addr, align 4, !tbaa !12
  %call47 = call ptr @Pairpool_push(ptr noundef %69, ptr noundef %70, i32 noundef %add45, i32 noundef %add46, i8 noundef signext %75, i8 noundef signext 42, i8 noundef signext %76, i8 noundef signext %77, i32 noundef %78)
  store ptr %call47, ptr %pairs.addr, align 8, !tbaa !5
  br label %if.end69

if.else48:                                        ; preds = %lor.lhs.false
  %79 = load i8, ptr %c1_uc, align 1, !tbaa !14
  %conv49 = sext i8 %79 to i32
  %80 = load i8, ptr %c2, align 1, !tbaa !14
  %conv50 = sext i8 %80 to i32
  %81 = load i8, ptr %c2_alt, align 1, !tbaa !14
  %conv51 = sext i8 %81 to i32
  %82 = load i32, ptr %genestrand.addr, align 4, !tbaa !12
  %call52 = call zeroext i8 @Dynprog_consistent_p(i32 noundef %conv49, i32 noundef %conv50, i32 noundef %conv51, i32 noundef %82)
  %conv53 = zext i8 %call52 to i32
  %cmp54 = icmp eq i32 %conv53, 1
  br i1 %cmp54, label %if.then56, label %if.else62

if.then56:                                        ; preds = %if.else48
  %83 = load ptr, ptr %traceback_score.addr, align 8, !tbaa !5
  %84 = load i32, ptr %83, align 4, !tbaa !12
  %add57 = add nsw i32 %84, 1
  store i32 %add57, ptr %83, align 4, !tbaa !12
  %85 = load ptr, ptr %nmatches.addr, align 8, !tbaa !5
  %86 = load i32, ptr %85, align 4, !tbaa !12
  %add58 = add nsw i32 %86, 1
  store i32 %add58, ptr %85, align 4, !tbaa !12
  %87 = load ptr, ptr %pairs.addr, align 8, !tbaa !5
  %88 = load ptr, ptr %pairpool.addr, align 8, !tbaa !5
  %89 = load i32, ptr %queryoffset.addr, align 4, !tbaa !12
  %90 = load i32, ptr %querycoord, align 4, !tbaa !12
  %add59 = add nsw i32 %89, %90
  %91 = load i32, ptr %genomeoffset.addr, align 4, !tbaa !12
  %92 = load i32, ptr %genomecoord, align 4, !tbaa !12
  %add60 = add nsw i32 %91, %92
  %93 = load i8, ptr %c1, align 1, !tbaa !14
  %94 = load i8, ptr %c2, align 1, !tbaa !14
  %95 = load i8, ptr %c2_alt, align 1, !tbaa !14
  %96 = load i32, ptr %dynprogindex.addr, align 4, !tbaa !12
  %call61 = call ptr @Pairpool_push(ptr noundef %87, ptr noundef %88, i32 noundef %add59, i32 noundef %add60, i8 noundef signext %93, i8 noundef signext 58, i8 noundef signext %94, i8 noundef signext %95, i32 noundef %96)
  store ptr %call61, ptr %pairs.addr, align 8, !tbaa !5
  br label %if.end68

if.else62:                                        ; preds = %if.else48
  %97 = load ptr, ptr %traceback_score.addr, align 8, !tbaa !5
  %98 = load i32, ptr %97, align 4, !tbaa !12
  %add63 = add nsw i32 %98, -3
  store i32 %add63, ptr %97, align 4, !tbaa !12
  %99 = load ptr, ptr %nmismatches.addr, align 8, !tbaa !5
  %100 = load i32, ptr %99, align 4, !tbaa !12
  %add64 = add nsw i32 %100, 1
  store i32 %add64, ptr %99, align 4, !tbaa !12
  %101 = load ptr, ptr %pairs.addr, align 8, !tbaa !5
  %102 = load ptr, ptr %pairpool.addr, align 8, !tbaa !5
  %103 = load i32, ptr %queryoffset.addr, align 4, !tbaa !12
  %104 = load i32, ptr %querycoord, align 4, !tbaa !12
  %add65 = add nsw i32 %103, %104
  %105 = load i32, ptr %genomeoffset.addr, align 4, !tbaa !12
  %106 = load i32, ptr %genomecoord, align 4, !tbaa !12
  %add66 = add nsw i32 %105, %106
  %107 = load i8, ptr %c1, align 1, !tbaa !14
  %108 = load i8, ptr %c2, align 1, !tbaa !14
  %109 = load i8, ptr %c2_alt, align 1, !tbaa !14
  %110 = load i32, ptr %dynprogindex.addr, align 4, !tbaa !12
  %call67 = call ptr @Pairpool_push(ptr noundef %101, ptr noundef %102, i32 noundef %add65, i32 noundef %add66, i8 noundef signext %107, i8 noundef signext 32, i8 noundef signext %108, i8 noundef signext %109, i32 noundef %110)
  store ptr %call67, ptr %pairs.addr, align 8, !tbaa !5
  br label %if.end68

if.end68:                                         ; preds = %if.else62, %if.then56
  br label %if.end69

if.end69:                                         ; preds = %if.end68, %if.then42
  %111 = load ptr, ptr %r.addr, align 8, !tbaa !5
  %112 = load i32, ptr %111, align 4, !tbaa !12
  %dec70 = add nsw i32 %112, -1
  store i32 %dec70, ptr %111, align 4, !tbaa !12
  %113 = load ptr, ptr %c.addr, align 8, !tbaa !5
  %114 = load i32, ptr %113, align 4, !tbaa !12
  %dec71 = add nsw i32 %114, -1
  store i32 %dec71, ptr %113, align 4, !tbaa !12
  br label %if.end72

if.end72:                                         ; preds = %if.end69, %while.end
  br label %while.cond, !llvm.loop !56

while.end73:                                      ; preds = %land.end
  %115 = load ptr, ptr %r.addr, align 8, !tbaa !5
  %116 = load i32, ptr %115, align 4, !tbaa !12
  %cmp74 = icmp eq i32 %116, 0
  br i1 %cmp74, label %if.then76, label %if.else77

if.then76:                                        ; preds = %while.end73
  br label %if.end85

if.else77:                                        ; preds = %while.end73
  %117 = load ptr, ptr %r.addr, align 8, !tbaa !5
  %118 = load i32, ptr %117, align 4, !tbaa !12
  store i32 %118, ptr %dist, align 4, !tbaa !12
  %119 = load ptr, ptr %pairs.addr, align 8, !tbaa !5
  %120 = load ptr, ptr %r.addr, align 8, !tbaa !5
  %121 = load i32, ptr %120, align 4, !tbaa !12
  %122 = load i32, ptr %endc.addr, align 4, !tbaa !12
  %add78 = add nsw i32 %122, 1
  %123 = load i32, ptr %dist, align 4, !tbaa !12
  %124 = load ptr, ptr %rsequence.addr, align 8, !tbaa !5
  %125 = load i32, ptr %queryoffset.addr, align 4, !tbaa !12
  %126 = load i32, ptr %genomeoffset.addr, align 4, !tbaa !12
  %127 = load ptr, ptr %pairpool.addr, align 8, !tbaa !5
  %128 = load i8, ptr %revp.addr, align 1, !tbaa !14
  %129 = load i32, ptr %dynprogindex.addr, align 4, !tbaa !12
  %call79 = call ptr @Pairpool_add_queryskip(ptr noundef %119, i32 noundef %121, i32 noundef %add78, i32 noundef %123, ptr noundef %124, i32 noundef %125, i32 noundef %126, ptr noundef %127, i8 noundef zeroext %128, i32 noundef %129)
  store ptr %call79, ptr %pairs.addr, align 8, !tbaa !5
  %130 = load i32, ptr %dist, align 4, !tbaa !12
  %mul80 = mul nsw i32 %130, -1
  %add81 = add nsw i32 -3, %mul80
  %131 = load ptr, ptr %traceback_score.addr, align 8, !tbaa !5
  %132 = load i32, ptr %131, align 4, !tbaa !12
  %add82 = add nsw i32 %132, %add81
  store i32 %add82, ptr %131, align 4, !tbaa !12
  %133 = load ptr, ptr %nopens.addr, align 8, !tbaa !5
  %134 = load i32, ptr %133, align 4, !tbaa !12
  %add83 = add nsw i32 %134, 1
  store i32 %add83, ptr %133, align 4, !tbaa !12
  %135 = load i32, ptr %dist, align 4, !tbaa !12
  %136 = load ptr, ptr %nindels.addr, align 8, !tbaa !5
  %137 = load i32, ptr %136, align 4, !tbaa !12
  %add84 = add nsw i32 %137, %135
  store i32 %add84, ptr %136, align 4, !tbaa !12
  br label %if.end85

if.end85:                                         ; preds = %if.else77, %if.then76
  %138 = load ptr, ptr %pairs.addr, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 2, ptr %dir) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %genomecoord) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %querycoord) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %dist) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr %c2_alt) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr %c2) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr %c1_uc) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr %c1) #5
  ret ptr %138
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Dynprog_end3_gap(ptr noundef %dynprogindex, ptr noundef %traceback_score, ptr noundef %nmatches, ptr noundef %nmismatches, ptr noundef %nopens, ptr noundef %nindels, ptr noundef %dynprog, ptr noundef %rsequence, ptr noundef %rsequenceuc, i32 noundef %rlength, i32 noundef %glength, i32 noundef %roffset, i32 noundef %goffset, i32 noundef %chroffset, i32 noundef %chrhigh, i8 noundef zeroext %watsonp, i32 noundef %genestrand, i8 noundef zeroext %jump_late_p, ptr noundef %genome, ptr noundef %genomealt, ptr noundef %pairpool, i32 noundef %extraband_end, double noundef %defect_rate, i32 noundef %endalign, i8 noundef zeroext %require_pos_score_p) #1 {
entry:
  %retval = alloca ptr, align 8
  %dynprogindex.addr = alloca ptr, align 8
  %traceback_score.addr = alloca ptr, align 8
  %nmatches.addr = alloca ptr, align 8
  %nmismatches.addr = alloca ptr, align 8
  %nopens.addr = alloca ptr, align 8
  %nindels.addr = alloca ptr, align 8
  %dynprog.addr = alloca ptr, align 8
  %rsequence.addr = alloca ptr, align 8
  %rsequenceuc.addr = alloca ptr, align 8
  %rlength.addr = alloca i32, align 4
  %glength.addr = alloca i32, align 4
  %roffset.addr = alloca i32, align 4
  %goffset.addr = alloca i32, align 4
  %chroffset.addr = alloca i32, align 4
  %chrhigh.addr = alloca i32, align 4
  %watsonp.addr = alloca i8, align 1
  %genestrand.addr = alloca i32, align 4
  %jump_late_p.addr = alloca i8, align 1
  %genome.addr = alloca ptr, align 8
  %genomealt.addr = alloca ptr, align 8
  %pairpool.addr = alloca ptr, align 8
  %extraband_end.addr = alloca i32, align 4
  %defect_rate.addr = alloca double, align 8
  %endalign.addr = alloca i32, align 4
  %require_pos_score_p.addr = alloca i8, align 1
  %pairs = alloca ptr, align 8
  %gsequence = alloca ptr, align 8
  %gsequence_alt = alloca ptr, align 8
  %pair = alloca ptr, align 8
  %mismatchtype = alloca i32, align 4
  %bestr = alloca i32, align 4
  %bestc = alloca i32, align 4
  %lband = alloca i32, align 4
  %uband = alloca i32, align 4
  %open = alloca i32, align 4
  %extend = alloca i32, align 4
  %finalscore = alloca i32, align 4
  %use8p = alloca i8, align 1
  %matrix8_upper = alloca ptr, align 8
  %matrix8_lower = alloca ptr, align 8
  %directions8_upper_nogap = alloca ptr, align 8
  %directions8_upper_Egap = alloca ptr, align 8
  %directions8_lower_nogap = alloca ptr, align 8
  %directions8_lower_Egap = alloca ptr, align 8
  %matrix16_upper = alloca ptr, align 8
  %matrix16_lower = alloca ptr, align 8
  %directions16_upper_nogap = alloca ptr, align 8
  %directions16_upper_Egap = alloca ptr, align 8
  %directions16_lower_nogap = alloca ptr, align 8
  %directions16_lower_Egap = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dynprogindex, ptr %dynprogindex.addr, align 8, !tbaa !5
  store ptr %traceback_score, ptr %traceback_score.addr, align 8, !tbaa !5
  store ptr %nmatches, ptr %nmatches.addr, align 8, !tbaa !5
  store ptr %nmismatches, ptr %nmismatches.addr, align 8, !tbaa !5
  store ptr %nopens, ptr %nopens.addr, align 8, !tbaa !5
  store ptr %nindels, ptr %nindels.addr, align 8, !tbaa !5
  store ptr %dynprog, ptr %dynprog.addr, align 8, !tbaa !5
  store ptr %rsequence, ptr %rsequence.addr, align 8, !tbaa !5
  store ptr %rsequenceuc, ptr %rsequenceuc.addr, align 8, !tbaa !5
  store i32 %rlength, ptr %rlength.addr, align 4, !tbaa !12
  store i32 %glength, ptr %glength.addr, align 4, !tbaa !12
  store i32 %roffset, ptr %roffset.addr, align 4, !tbaa !12
  store i32 %goffset, ptr %goffset.addr, align 4, !tbaa !12
  store i32 %chroffset, ptr %chroffset.addr, align 4, !tbaa !12
  store i32 %chrhigh, ptr %chrhigh.addr, align 4, !tbaa !12
  store i8 %watsonp, ptr %watsonp.addr, align 1, !tbaa !14
  store i32 %genestrand, ptr %genestrand.addr, align 4, !tbaa !12
  store i8 %jump_late_p, ptr %jump_late_p.addr, align 1, !tbaa !14
  store ptr %genome, ptr %genome.addr, align 8, !tbaa !5
  store ptr %genomealt, ptr %genomealt.addr, align 8, !tbaa !5
  store ptr %pairpool, ptr %pairpool.addr, align 8, !tbaa !5
  store i32 %extraband_end, ptr %extraband_end.addr, align 4, !tbaa !12
  store double %defect_rate, ptr %defect_rate.addr, align 8, !tbaa !15
  store i32 %endalign, ptr %endalign.addr, align 4, !tbaa !14
  store i8 %require_pos_score_p, ptr %require_pos_score_p.addr, align 1, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 8, ptr %pairs) #5
  store ptr null, ptr %pairs, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %gsequence) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %gsequence_alt) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %pair) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %mismatchtype) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %bestr) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %bestc) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %lband) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %uband) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %open) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %extend) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %finalscore) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr %use8p) #5
  store i8 0, ptr %use8p, align 1, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 8, ptr %matrix8_upper) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %matrix8_lower) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %directions8_upper_nogap) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %directions8_upper_Egap) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %directions8_lower_nogap) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %directions8_lower_Egap) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %matrix16_upper) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %matrix16_lower) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %directions16_upper_nogap) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %directions16_upper_Egap) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %directions16_lower_nogap) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %directions16_lower_Egap) #5
  store i32 3, ptr %mismatchtype, align 4, !tbaa !14
  %0 = load i8, ptr @user_dynprog_p, align 1, !tbaa !14
  %conv = zext i8 %0 to i32
  %cmp = icmp eq i32 %conv, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, ptr @user_open, align 4, !tbaa !12
  store i32 %1, ptr %open, align 4, !tbaa !12
  %2 = load i32, ptr @user_extend, align 4, !tbaa !12
  store i32 %2, ptr %extend, align 4, !tbaa !12
  br label %if.end11

if.else:                                          ; preds = %entry
  %3 = load double, ptr %defect_rate.addr, align 8, !tbaa !15
  %cmp2 = fcmp olt double %3, 3.000000e-03
  br i1 %cmp2, label %if.then4, label %if.else5

if.then4:                                         ; preds = %if.else
  store i32 -10, ptr %open, align 4, !tbaa !12
  store i32 -2, ptr %extend, align 4, !tbaa !12
  br label %if.end10

if.else5:                                         ; preds = %if.else
  %4 = load double, ptr %defect_rate.addr, align 8, !tbaa !15
  %cmp6 = fcmp olt double %4, 1.400000e-02
  br i1 %cmp6, label %if.then8, label %if.else9

if.then8:                                         ; preds = %if.else5
  store i32 -8, ptr %open, align 4, !tbaa !12
  store i32 -2, ptr %extend, align 4, !tbaa !12
  br label %if.end

if.else9:                                         ; preds = %if.else5
  store i32 -6, ptr %open, align 4, !tbaa !12
  store i32 -2, ptr %extend, align 4, !tbaa !12
  br label %if.end

if.end:                                           ; preds = %if.else9, %if.then8
  br label %if.end10

if.end10:                                         ; preds = %if.end, %if.then4
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %if.then
  %5 = load i32, ptr %rlength.addr, align 4, !tbaa !12
  %cmp12 = icmp sle i32 %5, 0
  br i1 %cmp12, label %if.then14, label %if.else15

if.then14:                                        ; preds = %if.end11
  %6 = load ptr, ptr %traceback_score.addr, align 8, !tbaa !5
  store i32 0, ptr %6, align 4, !tbaa !12
  %7 = load ptr, ptr %nindels.addr, align 8, !tbaa !5
  store i32 0, ptr %7, align 4, !tbaa !12
  %8 = load ptr, ptr %nopens.addr, align 8, !tbaa !5
  store i32 0, ptr %8, align 4, !tbaa !12
  %9 = load ptr, ptr %nmismatches.addr, align 8, !tbaa !5
  store i32 0, ptr %9, align 4, !tbaa !12
  %10 = load ptr, ptr %nmatches.addr, align 8, !tbaa !5
  store i32 0, ptr %10, align 4, !tbaa !12
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else15:                                        ; preds = %if.end11
  %11 = load i32, ptr %endalign.addr, align 4, !tbaa !14
  %cmp16 = icmp eq i32 %11, 2
  br i1 %cmp16, label %if.then18, label %if.else19

if.then18:                                        ; preds = %if.else15
  br label %if.end25

if.else19:                                        ; preds = %if.else15
  %12 = load i32, ptr %rlength.addr, align 4, !tbaa !12
  %13 = load ptr, ptr %dynprog.addr, align 8, !tbaa !5
  %max_rlength = getelementptr inbounds %struct.Dynprog_T, ptr %13, i32 0, i32 0
  %14 = load i32, ptr %max_rlength, align 8, !tbaa !17
  %cmp20 = icmp sgt i32 %12, %14
  br i1 %cmp20, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.else19
  %15 = load ptr, ptr %dynprog.addr, align 8, !tbaa !5
  %max_rlength23 = getelementptr inbounds %struct.Dynprog_T, ptr %15, i32 0, i32 0
  %16 = load i32, ptr %max_rlength23, align 8, !tbaa !17
  store i32 %16, ptr %rlength.addr, align 4, !tbaa !12
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.else19
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.then18
  br label %if.end26

if.end26:                                         ; preds = %if.end25
  %17 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %cmp27 = icmp sle i32 %17, 0
  br i1 %cmp27, label %if.then29, label %if.else30

if.then29:                                        ; preds = %if.end26
  %18 = load ptr, ptr %traceback_score.addr, align 8, !tbaa !5
  store i32 0, ptr %18, align 4, !tbaa !12
  %19 = load ptr, ptr %nindels.addr, align 8, !tbaa !5
  store i32 0, ptr %19, align 4, !tbaa !12
  %20 = load ptr, ptr %nopens.addr, align 8, !tbaa !5
  store i32 0, ptr %20, align 4, !tbaa !12
  %21 = load ptr, ptr %nmismatches.addr, align 8, !tbaa !5
  store i32 0, ptr %21, align 4, !tbaa !12
  %22 = load ptr, ptr %nmatches.addr, align 8, !tbaa !5
  store i32 0, ptr %22, align 4, !tbaa !12
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else30:                                        ; preds = %if.end26
  %23 = load i32, ptr %endalign.addr, align 4, !tbaa !14
  %cmp31 = icmp eq i32 %23, 2
  br i1 %cmp31, label %if.then33, label %if.else34

if.then33:                                        ; preds = %if.else30
  br label %if.end40

if.else34:                                        ; preds = %if.else30
  %24 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %25 = load ptr, ptr %dynprog.addr, align 8, !tbaa !5
  %max_glength = getelementptr inbounds %struct.Dynprog_T, ptr %25, i32 0, i32 1
  %26 = load i32, ptr %max_glength, align 4, !tbaa !19
  %cmp35 = icmp sgt i32 %24, %26
  br i1 %cmp35, label %if.then37, label %if.end39

if.then37:                                        ; preds = %if.else34
  %27 = load ptr, ptr %dynprog.addr, align 8, !tbaa !5
  %max_glength38 = getelementptr inbounds %struct.Dynprog_T, ptr %27, i32 0, i32 1
  %28 = load i32, ptr %max_glength38, align 4, !tbaa !19
  store i32 %28, ptr %glength.addr, align 4, !tbaa !12
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %if.else34
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.then33
  br label %if.end41

if.end41:                                         ; preds = %if.end40
  %29 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %add = add nsw i32 %29, 1
  %conv42 = sext i32 %add to i64
  %mul = mul i64 %conv42, 1
  %call = call ptr @Mem_alloc(i64 noundef %mul, ptr noundef @.str, i32 noundef 2009)
  store ptr %call, ptr %gsequence, align 8, !tbaa !5
  %30 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %add43 = add nsw i32 %30, 1
  %conv44 = sext i32 %add43 to i64
  %mul45 = mul i64 %conv44, 1
  %call46 = call ptr @Mem_alloc(i64 noundef %mul45, ptr noundef @.str, i32 noundef 2010)
  store ptr %call46, ptr %gsequence_alt, align 8, !tbaa !5
  %31 = load i8, ptr %watsonp.addr, align 1, !tbaa !14
  %tobool = icmp ne i8 %31, 0
  br i1 %tobool, label %if.then47, label %if.else49

if.then47:                                        ; preds = %if.end41
  %32 = load ptr, ptr %gsequence, align 8, !tbaa !5
  %33 = load ptr, ptr %gsequence_alt, align 8, !tbaa !5
  %34 = load ptr, ptr %genome.addr, align 8, !tbaa !5
  %35 = load ptr, ptr %genomealt.addr, align 8, !tbaa !5
  %36 = load i32, ptr %chroffset.addr, align 4, !tbaa !12
  %37 = load i32, ptr %goffset.addr, align 4, !tbaa !12
  %add48 = add i32 %36, %37
  %38 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %39 = load i32, ptr %chrhigh.addr, align 4, !tbaa !12
  call void @Genome_get_segment_right(ptr noundef %32, ptr noundef %33, ptr noundef %34, ptr noundef %35, i32 noundef %add48, i32 noundef %38, i32 noundef %39, i8 noundef zeroext 0)
  br label %if.end51

if.else49:                                        ; preds = %if.end41
  %40 = load ptr, ptr %gsequence, align 8, !tbaa !5
  %41 = load ptr, ptr %gsequence_alt, align 8, !tbaa !5
  %42 = load ptr, ptr %genome.addr, align 8, !tbaa !5
  %43 = load ptr, ptr %genomealt.addr, align 8, !tbaa !5
  %44 = load i32, ptr %chrhigh.addr, align 4, !tbaa !12
  %45 = load i32, ptr %goffset.addr, align 4, !tbaa !12
  %sub = sub i32 %44, %45
  %add50 = add i32 %sub, 1
  %46 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %47 = load i32, ptr %chroffset.addr, align 4, !tbaa !12
  call void @Genome_get_segment_left(ptr noundef %40, ptr noundef %41, ptr noundef %42, ptr noundef %43, i32 noundef %add50, i32 noundef %46, i32 noundef %47, i8 noundef zeroext 1)
  br label %if.end51

if.end51:                                         ; preds = %if.else49, %if.then47
  %48 = load ptr, ptr %gsequence, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i8, ptr %48, i64 0
  %49 = load i8, ptr %arrayidx, align 1, !tbaa !14
  %conv52 = sext i8 %49 to i32
  %cmp53 = icmp eq i32 %conv52, 0
  br i1 %cmp53, label %if.then55, label %if.end56

if.then55:                                        ; preds = %if.end51
  %50 = load ptr, ptr %traceback_score.addr, align 8, !tbaa !5
  store i32 0, ptr %50, align 4, !tbaa !12
  %51 = load ptr, ptr %nindels.addr, align 8, !tbaa !5
  store i32 0, ptr %51, align 4, !tbaa !12
  %52 = load ptr, ptr %nopens.addr, align 8, !tbaa !5
  store i32 0, ptr %52, align 4, !tbaa !12
  %53 = load ptr, ptr %nmismatches.addr, align 8, !tbaa !5
  store i32 0, ptr %53, align 4, !tbaa !12
  %54 = load ptr, ptr %nmatches.addr, align 8, !tbaa !5
  store i32 0, ptr %54, align 4, !tbaa !12
  %55 = load ptr, ptr %gsequence_alt, align 8, !tbaa !5
  call void @Mem_free(ptr noundef %55, ptr noundef @.str, i32 noundef 2022)
  store ptr null, ptr %gsequence_alt, align 8, !tbaa !5
  %56 = load ptr, ptr %gsequence, align 8, !tbaa !5
  call void @Mem_free(ptr noundef %56, ptr noundef @.str, i32 noundef 2023)
  store ptr null, ptr %gsequence, align 8, !tbaa !5
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end56:                                         ; preds = %if.end51
  %57 = load i32, ptr %endalign.addr, align 4, !tbaa !14
  %cmp57 = icmp eq i32 %57, 0
  br i1 %cmp57, label %if.then61, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end56
  %58 = load i32, ptr %endalign.addr, align 4, !tbaa !14
  %cmp59 = icmp eq i32 %58, 3
  br i1 %cmp59, label %if.then61, label %if.else77

if.then61:                                        ; preds = %lor.lhs.false, %if.end56
  %59 = load i32, ptr %rlength.addr, align 4, !tbaa !12
  %60 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %61 = load i32, ptr %extraband_end.addr, align 4, !tbaa !12
  call void @Dynprog_compute_bands(ptr noundef %lband, ptr noundef %uband, i32 noundef %59, i32 noundef %60, i32 noundef %61, i8 noundef zeroext 1)
  %62 = load i32, ptr %rlength.addr, align 4, !tbaa !12
  %63 = load i32, ptr %mismatchtype, align 4, !tbaa !14
  %idxprom = zext i32 %63 to i64
  %arrayidx62 = getelementptr inbounds [4 x i32], ptr @use8p_size, i64 0, i64 %idxprom
  %64 = load i32, ptr %arrayidx62, align 4, !tbaa !12
  %cmp63 = icmp slt i32 %62, %64
  br i1 %cmp63, label %if.then70, label %lor.lhs.false65

lor.lhs.false65:                                  ; preds = %if.then61
  %65 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %66 = load i32, ptr %mismatchtype, align 4, !tbaa !14
  %idxprom66 = zext i32 %66 to i64
  %arrayidx67 = getelementptr inbounds [4 x i32], ptr @use8p_size, i64 0, i64 %idxprom66
  %67 = load i32, ptr %arrayidx67, align 4, !tbaa !12
  %cmp68 = icmp slt i32 %65, %67
  br i1 %cmp68, label %if.then70, label %if.else73

if.then70:                                        ; preds = %lor.lhs.false65, %if.then61
  store i8 1, ptr %use8p, align 1, !tbaa !14
  %68 = load ptr, ptr %dynprog.addr, align 8, !tbaa !5
  %69 = load ptr, ptr %rsequenceuc.addr, align 8, !tbaa !5
  %70 = load ptr, ptr %gsequence, align 8, !tbaa !5
  %71 = load ptr, ptr %gsequence_alt, align 8, !tbaa !5
  %72 = load i32, ptr %rlength.addr, align 4, !tbaa !12
  %73 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %74 = load i32, ptr %mismatchtype, align 4, !tbaa !14
  %75 = load i32, ptr %open, align 4, !tbaa !12
  %76 = load i32, ptr %extend, align 4, !tbaa !12
  %77 = load i32, ptr %uband, align 4, !tbaa !12
  %78 = load i8, ptr %jump_late_p.addr, align 1, !tbaa !14
  %call71 = call ptr @Dynprog_simd_8_upper(ptr noundef %directions8_upper_nogap, ptr noundef %directions8_upper_Egap, ptr noundef %68, ptr noundef %69, ptr noundef %70, ptr noundef %71, i32 noundef %72, i32 noundef %73, i32 noundef %74, i32 noundef %75, i32 noundef %76, i32 noundef %77, i8 noundef zeroext %78, i8 noundef zeroext 0)
  store ptr %call71, ptr %matrix8_upper, align 8, !tbaa !5
  %79 = load ptr, ptr %dynprog.addr, align 8, !tbaa !5
  %80 = load ptr, ptr %rsequenceuc.addr, align 8, !tbaa !5
  %81 = load ptr, ptr %gsequence, align 8, !tbaa !5
  %82 = load ptr, ptr %gsequence_alt, align 8, !tbaa !5
  %83 = load i32, ptr %rlength.addr, align 4, !tbaa !12
  %84 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %85 = load i32, ptr %mismatchtype, align 4, !tbaa !14
  %86 = load i32, ptr %open, align 4, !tbaa !12
  %87 = load i32, ptr %extend, align 4, !tbaa !12
  %88 = load i32, ptr %lband, align 4, !tbaa !12
  %89 = load i8, ptr %jump_late_p.addr, align 1, !tbaa !14
  %call72 = call ptr @Dynprog_simd_8_lower(ptr noundef %directions8_lower_nogap, ptr noundef %directions8_lower_Egap, ptr noundef %79, ptr noundef %80, ptr noundef %81, ptr noundef %82, i32 noundef %83, i32 noundef %84, i32 noundef %85, i32 noundef %86, i32 noundef %87, i32 noundef %88, i8 noundef zeroext %89, i8 noundef zeroext 0)
  store ptr %call72, ptr %matrix8_lower, align 8, !tbaa !5
  %90 = load ptr, ptr %matrix8_upper, align 8, !tbaa !5
  %91 = load ptr, ptr %matrix8_lower, align 8, !tbaa !5
  %92 = load i32, ptr %rlength.addr, align 4, !tbaa !12
  %93 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %94 = load i32, ptr %lband, align 4, !tbaa !12
  %95 = load i32, ptr %uband, align 4, !tbaa !12
  %96 = load i8, ptr %jump_late_p.addr, align 1, !tbaa !14
  call void @find_best_endpoint_8(ptr noundef %finalscore, ptr noundef %bestr, ptr noundef %bestc, ptr noundef %90, ptr noundef %91, i32 noundef %92, i32 noundef %93, i32 noundef %94, i32 noundef %95, i8 noundef zeroext %96)
  br label %if.end76

if.else73:                                        ; preds = %lor.lhs.false65
  %97 = load ptr, ptr %dynprog.addr, align 8, !tbaa !5
  %98 = load ptr, ptr %rsequenceuc.addr, align 8, !tbaa !5
  %99 = load ptr, ptr %gsequence, align 8, !tbaa !5
  %100 = load ptr, ptr %gsequence_alt, align 8, !tbaa !5
  %101 = load i32, ptr %rlength.addr, align 4, !tbaa !12
  %102 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %103 = load i32, ptr %mismatchtype, align 4, !tbaa !14
  %104 = load i32, ptr %open, align 4, !tbaa !12
  %105 = load i32, ptr %extend, align 4, !tbaa !12
  %106 = load i32, ptr %uband, align 4, !tbaa !12
  %107 = load i8, ptr %jump_late_p.addr, align 1, !tbaa !14
  %call74 = call ptr @Dynprog_simd_16_upper(ptr noundef %directions16_upper_nogap, ptr noundef %directions16_upper_Egap, ptr noundef %97, ptr noundef %98, ptr noundef %99, ptr noundef %100, i32 noundef %101, i32 noundef %102, i32 noundef %103, i32 noundef %104, i32 noundef %105, i32 noundef %106, i8 noundef zeroext %107, i8 noundef zeroext 0)
  store ptr %call74, ptr %matrix16_upper, align 8, !tbaa !5
  %108 = load ptr, ptr %dynprog.addr, align 8, !tbaa !5
  %109 = load ptr, ptr %rsequenceuc.addr, align 8, !tbaa !5
  %110 = load ptr, ptr %gsequence, align 8, !tbaa !5
  %111 = load ptr, ptr %gsequence_alt, align 8, !tbaa !5
  %112 = load i32, ptr %rlength.addr, align 4, !tbaa !12
  %113 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %114 = load i32, ptr %mismatchtype, align 4, !tbaa !14
  %115 = load i32, ptr %open, align 4, !tbaa !12
  %116 = load i32, ptr %extend, align 4, !tbaa !12
  %117 = load i32, ptr %lband, align 4, !tbaa !12
  %118 = load i8, ptr %jump_late_p.addr, align 1, !tbaa !14
  %call75 = call ptr @Dynprog_simd_16_lower(ptr noundef %directions16_lower_nogap, ptr noundef %directions16_lower_Egap, ptr noundef %108, ptr noundef %109, ptr noundef %110, ptr noundef %111, i32 noundef %112, i32 noundef %113, i32 noundef %114, i32 noundef %115, i32 noundef %116, i32 noundef %117, i8 noundef zeroext %118, i8 noundef zeroext 0)
  store ptr %call75, ptr %matrix16_lower, align 8, !tbaa !5
  %119 = load ptr, ptr %matrix16_upper, align 8, !tbaa !5
  %120 = load ptr, ptr %matrix16_lower, align 8, !tbaa !5
  %121 = load i32, ptr %rlength.addr, align 4, !tbaa !12
  %122 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %123 = load i32, ptr %lband, align 4, !tbaa !12
  %124 = load i32, ptr %uband, align 4, !tbaa !12
  %125 = load i8, ptr %jump_late_p.addr, align 1, !tbaa !14
  call void @find_best_endpoint_16(ptr noundef %finalscore, ptr noundef %bestr, ptr noundef %bestc, ptr noundef %119, ptr noundef %120, i32 noundef %121, i32 noundef %122, i32 noundef %123, i32 noundef %124, i8 noundef zeroext %125)
  br label %if.end76

if.end76:                                         ; preds = %if.else73, %if.then70
  br label %if.end105

if.else77:                                        ; preds = %lor.lhs.false
  %126 = load i32, ptr %endalign.addr, align 4, !tbaa !14
  %cmp78 = icmp eq i32 %126, 1
  br i1 %cmp78, label %if.then80, label %if.else97

if.then80:                                        ; preds = %if.else77
  %127 = load i32, ptr %rlength.addr, align 4, !tbaa !12
  %128 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %129 = load i32, ptr %extraband_end.addr, align 4, !tbaa !12
  call void @Dynprog_compute_bands(ptr noundef %lband, ptr noundef %uband, i32 noundef %127, i32 noundef %128, i32 noundef %129, i8 noundef zeroext 0)
  %130 = load i32, ptr %rlength.addr, align 4, !tbaa !12
  %131 = load i32, ptr %mismatchtype, align 4, !tbaa !14
  %idxprom81 = zext i32 %131 to i64
  %arrayidx82 = getelementptr inbounds [4 x i32], ptr @use8p_size, i64 0, i64 %idxprom81
  %132 = load i32, ptr %arrayidx82, align 4, !tbaa !12
  %cmp83 = icmp slt i32 %130, %132
  br i1 %cmp83, label %if.then90, label %lor.lhs.false85

lor.lhs.false85:                                  ; preds = %if.then80
  %133 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %134 = load i32, ptr %mismatchtype, align 4, !tbaa !14
  %idxprom86 = zext i32 %134 to i64
  %arrayidx87 = getelementptr inbounds [4 x i32], ptr @use8p_size, i64 0, i64 %idxprom86
  %135 = load i32, ptr %arrayidx87, align 4, !tbaa !12
  %cmp88 = icmp slt i32 %133, %135
  br i1 %cmp88, label %if.then90, label %if.else93

if.then90:                                        ; preds = %lor.lhs.false85, %if.then80
  store i8 1, ptr %use8p, align 1, !tbaa !14
  %136 = load ptr, ptr %dynprog.addr, align 8, !tbaa !5
  %137 = load ptr, ptr %rsequenceuc.addr, align 8, !tbaa !5
  %138 = load ptr, ptr %gsequence, align 8, !tbaa !5
  %139 = load ptr, ptr %gsequence_alt, align 8, !tbaa !5
  %140 = load i32, ptr %rlength.addr, align 4, !tbaa !12
  %141 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %142 = load i32, ptr %mismatchtype, align 4, !tbaa !14
  %143 = load i32, ptr %open, align 4, !tbaa !12
  %144 = load i32, ptr %extend, align 4, !tbaa !12
  %145 = load i32, ptr %uband, align 4, !tbaa !12
  %146 = load i8, ptr %jump_late_p.addr, align 1, !tbaa !14
  %call91 = call ptr @Dynprog_simd_8_upper(ptr noundef %directions8_upper_nogap, ptr noundef %directions8_upper_Egap, ptr noundef %136, ptr noundef %137, ptr noundef %138, ptr noundef %139, i32 noundef %140, i32 noundef %141, i32 noundef %142, i32 noundef %143, i32 noundef %144, i32 noundef %145, i8 noundef zeroext %146, i8 noundef zeroext 0)
  store ptr %call91, ptr %matrix8_upper, align 8, !tbaa !5
  %147 = load ptr, ptr %dynprog.addr, align 8, !tbaa !5
  %148 = load ptr, ptr %rsequenceuc.addr, align 8, !tbaa !5
  %149 = load ptr, ptr %gsequence, align 8, !tbaa !5
  %150 = load ptr, ptr %gsequence_alt, align 8, !tbaa !5
  %151 = load i32, ptr %rlength.addr, align 4, !tbaa !12
  %152 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %153 = load i32, ptr %mismatchtype, align 4, !tbaa !14
  %154 = load i32, ptr %open, align 4, !tbaa !12
  %155 = load i32, ptr %extend, align 4, !tbaa !12
  %156 = load i32, ptr %lband, align 4, !tbaa !12
  %157 = load i8, ptr %jump_late_p.addr, align 1, !tbaa !14
  %call92 = call ptr @Dynprog_simd_8_lower(ptr noundef %directions8_lower_nogap, ptr noundef %directions8_lower_Egap, ptr noundef %147, ptr noundef %148, ptr noundef %149, ptr noundef %150, i32 noundef %151, i32 noundef %152, i32 noundef %153, i32 noundef %154, i32 noundef %155, i32 noundef %156, i8 noundef zeroext %157, i8 noundef zeroext 0)
  store ptr %call92, ptr %matrix8_lower, align 8, !tbaa !5
  %158 = load ptr, ptr %matrix8_upper, align 8, !tbaa !5
  %159 = load ptr, ptr %matrix8_lower, align 8, !tbaa !5
  %160 = load i32, ptr %rlength.addr, align 4, !tbaa !12
  %161 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %162 = load i32, ptr %lband, align 4, !tbaa !12
  %163 = load i32, ptr %uband, align 4, !tbaa !12
  %164 = load i8, ptr %jump_late_p.addr, align 1, !tbaa !14
  call void @find_best_endpoint_to_queryend_indels_8(ptr noundef %finalscore, ptr noundef %bestr, ptr noundef %bestc, ptr noundef %158, ptr noundef %159, i32 noundef %160, i32 noundef %161, i32 noundef %162, i32 noundef %163, i8 noundef zeroext %164)
  br label %if.end96

if.else93:                                        ; preds = %lor.lhs.false85
  %165 = load ptr, ptr %dynprog.addr, align 8, !tbaa !5
  %166 = load ptr, ptr %rsequenceuc.addr, align 8, !tbaa !5
  %167 = load ptr, ptr %gsequence, align 8, !tbaa !5
  %168 = load ptr, ptr %gsequence_alt, align 8, !tbaa !5
  %169 = load i32, ptr %rlength.addr, align 4, !tbaa !12
  %170 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %171 = load i32, ptr %mismatchtype, align 4, !tbaa !14
  %172 = load i32, ptr %open, align 4, !tbaa !12
  %173 = load i32, ptr %extend, align 4, !tbaa !12
  %174 = load i32, ptr %uband, align 4, !tbaa !12
  %175 = load i8, ptr %jump_late_p.addr, align 1, !tbaa !14
  %call94 = call ptr @Dynprog_simd_16_upper(ptr noundef %directions16_upper_nogap, ptr noundef %directions16_upper_Egap, ptr noundef %165, ptr noundef %166, ptr noundef %167, ptr noundef %168, i32 noundef %169, i32 noundef %170, i32 noundef %171, i32 noundef %172, i32 noundef %173, i32 noundef %174, i8 noundef zeroext %175, i8 noundef zeroext 0)
  store ptr %call94, ptr %matrix16_upper, align 8, !tbaa !5
  %176 = load ptr, ptr %dynprog.addr, align 8, !tbaa !5
  %177 = load ptr, ptr %rsequenceuc.addr, align 8, !tbaa !5
  %178 = load ptr, ptr %gsequence, align 8, !tbaa !5
  %179 = load ptr, ptr %gsequence_alt, align 8, !tbaa !5
  %180 = load i32, ptr %rlength.addr, align 4, !tbaa !12
  %181 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %182 = load i32, ptr %mismatchtype, align 4, !tbaa !14
  %183 = load i32, ptr %open, align 4, !tbaa !12
  %184 = load i32, ptr %extend, align 4, !tbaa !12
  %185 = load i32, ptr %lband, align 4, !tbaa !12
  %186 = load i8, ptr %jump_late_p.addr, align 1, !tbaa !14
  %call95 = call ptr @Dynprog_simd_16_lower(ptr noundef %directions16_lower_nogap, ptr noundef %directions16_lower_Egap, ptr noundef %176, ptr noundef %177, ptr noundef %178, ptr noundef %179, i32 noundef %180, i32 noundef %181, i32 noundef %182, i32 noundef %183, i32 noundef %184, i32 noundef %185, i8 noundef zeroext %186, i8 noundef zeroext 0)
  store ptr %call95, ptr %matrix16_lower, align 8, !tbaa !5
  %187 = load ptr, ptr %matrix16_upper, align 8, !tbaa !5
  %188 = load ptr, ptr %matrix16_lower, align 8, !tbaa !5
  %189 = load i32, ptr %rlength.addr, align 4, !tbaa !12
  %190 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %191 = load i32, ptr %lband, align 4, !tbaa !12
  %192 = load i32, ptr %uband, align 4, !tbaa !12
  %193 = load i8, ptr %jump_late_p.addr, align 1, !tbaa !14
  call void @find_best_endpoint_to_queryend_indels_16(ptr noundef %finalscore, ptr noundef %bestr, ptr noundef %bestc, ptr noundef %187, ptr noundef %188, i32 noundef %189, i32 noundef %190, i32 noundef %191, i32 noundef %192, i8 noundef zeroext %193)
  br label %if.end96

if.end96:                                         ; preds = %if.else93, %if.then90
  br label %if.end104

if.else97:                                        ; preds = %if.else77
  %194 = load i32, ptr %endalign.addr, align 4, !tbaa !14
  %cmp98 = icmp eq i32 %194, 2
  br i1 %cmp98, label %if.then100, label %if.else101

if.then100:                                       ; preds = %if.else97
  %195 = load i32, ptr %rlength.addr, align 4, !tbaa !12
  %196 = load i32, ptr %glength.addr, align 4, !tbaa !12
  call void @find_best_endpoint_to_queryend_nogaps(ptr noundef %bestr, ptr noundef %bestc, i32 noundef %195, i32 noundef %196)
  br label %if.end103

if.else101:                                       ; preds = %if.else97
  %197 = load ptr, ptr @stderr, align 8, !tbaa !5
  %198 = load i32, ptr %endalign.addr, align 4, !tbaa !14
  %call102 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %197, ptr noundef @.str.1, i32 noundef %198)
  call void @abort() #6
  unreachable

if.end103:                                        ; preds = %if.then100
  br label %if.end104

if.end104:                                        ; preds = %if.end103, %if.end96
  br label %if.end105

if.end105:                                        ; preds = %if.end104, %if.end76
  %199 = load ptr, ptr %traceback_score.addr, align 8, !tbaa !5
  store i32 0, ptr %199, align 4, !tbaa !12
  %200 = load ptr, ptr %nindels.addr, align 8, !tbaa !5
  store i32 0, ptr %200, align 4, !tbaa !12
  %201 = load ptr, ptr %nopens.addr, align 8, !tbaa !5
  store i32 0, ptr %201, align 4, !tbaa !12
  %202 = load ptr, ptr %nmismatches.addr, align 8, !tbaa !5
  store i32 0, ptr %202, align 4, !tbaa !12
  %203 = load ptr, ptr %nmatches.addr, align 8, !tbaa !5
  store i32 0, ptr %203, align 4, !tbaa !12
  %204 = load i32, ptr %endalign.addr, align 4, !tbaa !14
  %cmp106 = icmp eq i32 %204, 2
  br i1 %cmp106, label %if.then108, label %if.else110

if.then108:                                       ; preds = %if.end105
  %205 = load ptr, ptr %traceback_score.addr, align 8, !tbaa !5
  %206 = load ptr, ptr %nmatches.addr, align 8, !tbaa !5
  %207 = load ptr, ptr %nmismatches.addr, align 8, !tbaa !5
  %208 = load i32, ptr %bestr, align 4, !tbaa !12
  %209 = load i32, ptr %bestc, align 4, !tbaa !12
  %210 = load ptr, ptr %rsequence.addr, align 8, !tbaa !5
  %211 = load ptr, ptr %rsequenceuc.addr, align 8, !tbaa !5
  %212 = load ptr, ptr %gsequence, align 8, !tbaa !5
  %213 = load ptr, ptr %gsequence_alt, align 8, !tbaa !5
  %214 = load i32, ptr %roffset.addr, align 4, !tbaa !12
  %215 = load i32, ptr %goffset.addr, align 4, !tbaa !12
  %216 = load ptr, ptr %pairpool.addr, align 8, !tbaa !5
  %217 = load i32, ptr %genestrand.addr, align 4, !tbaa !12
  %218 = load ptr, ptr %dynprogindex.addr, align 8, !tbaa !5
  %219 = load i32, ptr %218, align 4, !tbaa !12
  %call109 = call ptr @traceback_nogaps(ptr noundef null, ptr noundef %205, ptr noundef %206, ptr noundef %207, i32 noundef %208, i32 noundef %209, ptr noundef %210, ptr noundef %211, ptr noundef %212, ptr noundef %213, i32 noundef %214, i32 noundef %215, ptr noundef %216, i32 noundef %217, i8 noundef zeroext 0, i32 noundef %219)
  store ptr %call109, ptr %pairs, align 8, !tbaa !5
  br label %if.end139

if.else110:                                       ; preds = %if.end105
  %220 = load i8, ptr %require_pos_score_p.addr, align 1, !tbaa !14
  %conv111 = zext i8 %220 to i32
  %cmp112 = icmp eq i32 %conv111, 1
  br i1 %cmp112, label %land.lhs.true, label %if.else117

land.lhs.true:                                    ; preds = %if.else110
  %221 = load ptr, ptr %traceback_score.addr, align 8, !tbaa !5
  %222 = load i32, ptr %221, align 4, !tbaa !12
  %cmp114 = icmp sle i32 %222, 0
  br i1 %cmp114, label %if.then116, label %if.else117

if.then116:                                       ; preds = %land.lhs.true
  store ptr null, ptr %pairs, align 8, !tbaa !5
  br label %if.end138

if.else117:                                       ; preds = %land.lhs.true, %if.else110
  %223 = load i8, ptr %use8p, align 1, !tbaa !14
  %conv118 = zext i8 %223 to i32
  %cmp119 = icmp eq i32 %conv118, 1
  br i1 %cmp119, label %if.then121, label %if.else129

if.then121:                                       ; preds = %if.else117
  %224 = load i32, ptr %bestc, align 4, !tbaa !12
  %225 = load i32, ptr %bestr, align 4, !tbaa !12
  %cmp122 = icmp sge i32 %224, %225
  br i1 %cmp122, label %if.then124, label %if.else126

if.then124:                                       ; preds = %if.then121
  %226 = load ptr, ptr %traceback_score.addr, align 8, !tbaa !5
  %227 = load ptr, ptr %nmatches.addr, align 8, !tbaa !5
  %228 = load ptr, ptr %nmismatches.addr, align 8, !tbaa !5
  %229 = load ptr, ptr %nopens.addr, align 8, !tbaa !5
  %230 = load ptr, ptr %nindels.addr, align 8, !tbaa !5
  %231 = load ptr, ptr %directions8_upper_nogap, align 8, !tbaa !5
  %232 = load ptr, ptr %directions8_upper_Egap, align 8, !tbaa !5
  %233 = load i32, ptr %bestr, align 4, !tbaa !12
  %234 = load i32, ptr %bestc, align 4, !tbaa !12
  %235 = load ptr, ptr %rsequence.addr, align 8, !tbaa !5
  %236 = load ptr, ptr %rsequenceuc.addr, align 8, !tbaa !5
  %237 = load ptr, ptr %gsequence, align 8, !tbaa !5
  %238 = load ptr, ptr %gsequence_alt, align 8, !tbaa !5
  %239 = load i32, ptr %roffset.addr, align 4, !tbaa !12
  %240 = load i32, ptr %goffset.addr, align 4, !tbaa !12
  %241 = load ptr, ptr %genome.addr, align 8, !tbaa !5
  %242 = load ptr, ptr %genomealt.addr, align 8, !tbaa !5
  %243 = load ptr, ptr %pairpool.addr, align 8, !tbaa !5
  %244 = load i32, ptr %chroffset.addr, align 4, !tbaa !12
  %245 = load i32, ptr %chrhigh.addr, align 4, !tbaa !12
  %246 = load i8, ptr %watsonp.addr, align 1, !tbaa !14
  %247 = load i32, ptr %genestrand.addr, align 4, !tbaa !12
  %248 = load ptr, ptr %dynprogindex.addr, align 8, !tbaa !5
  %249 = load i32, ptr %248, align 4, !tbaa !12
  %call125 = call ptr @Dynprog_traceback_8_upper(ptr noundef null, ptr noundef %226, ptr noundef %227, ptr noundef %228, ptr noundef %229, ptr noundef %230, ptr noundef %231, ptr noundef %232, i32 noundef %233, i32 noundef %234, ptr noundef %235, ptr noundef %236, ptr noundef %237, ptr noundef %238, i32 noundef %239, i32 noundef %240, ptr noundef %241, ptr noundef %242, ptr noundef %243, i8 noundef zeroext 0, i32 noundef %244, i32 noundef %245, i8 noundef zeroext %246, i32 noundef %247, i32 noundef %249)
  store ptr %call125, ptr %pairs, align 8, !tbaa !5
  br label %if.end128

if.else126:                                       ; preds = %if.then121
  %250 = load ptr, ptr %traceback_score.addr, align 8, !tbaa !5
  %251 = load ptr, ptr %nmatches.addr, align 8, !tbaa !5
  %252 = load ptr, ptr %nmismatches.addr, align 8, !tbaa !5
  %253 = load ptr, ptr %nopens.addr, align 8, !tbaa !5
  %254 = load ptr, ptr %nindels.addr, align 8, !tbaa !5
  %255 = load ptr, ptr %directions8_lower_nogap, align 8, !tbaa !5
  %256 = load ptr, ptr %directions8_lower_Egap, align 8, !tbaa !5
  %257 = load i32, ptr %bestr, align 4, !tbaa !12
  %258 = load i32, ptr %bestc, align 4, !tbaa !12
  %259 = load ptr, ptr %rsequence.addr, align 8, !tbaa !5
  %260 = load ptr, ptr %rsequenceuc.addr, align 8, !tbaa !5
  %261 = load ptr, ptr %gsequence, align 8, !tbaa !5
  %262 = load ptr, ptr %gsequence_alt, align 8, !tbaa !5
  %263 = load i32, ptr %roffset.addr, align 4, !tbaa !12
  %264 = load i32, ptr %goffset.addr, align 4, !tbaa !12
  %265 = load ptr, ptr %pairpool.addr, align 8, !tbaa !5
  %266 = load i32, ptr %genestrand.addr, align 4, !tbaa !12
  %267 = load ptr, ptr %dynprogindex.addr, align 8, !tbaa !5
  %268 = load i32, ptr %267, align 4, !tbaa !12
  %call127 = call ptr @Dynprog_traceback_8_lower(ptr noundef null, ptr noundef %250, ptr noundef %251, ptr noundef %252, ptr noundef %253, ptr noundef %254, ptr noundef %255, ptr noundef %256, i32 noundef %257, i32 noundef %258, ptr noundef %259, ptr noundef %260, ptr noundef %261, ptr noundef %262, i32 noundef %263, i32 noundef %264, ptr noundef %265, i32 noundef %266, i8 noundef zeroext 0, i32 noundef %268)
  store ptr %call127, ptr %pairs, align 8, !tbaa !5
  br label %if.end128

if.end128:                                        ; preds = %if.else126, %if.then124
  br label %if.end137

if.else129:                                       ; preds = %if.else117
  %269 = load i32, ptr %bestc, align 4, !tbaa !12
  %270 = load i32, ptr %bestr, align 4, !tbaa !12
  %cmp130 = icmp sge i32 %269, %270
  br i1 %cmp130, label %if.then132, label %if.else134

if.then132:                                       ; preds = %if.else129
  %271 = load ptr, ptr %traceback_score.addr, align 8, !tbaa !5
  %272 = load ptr, ptr %nmatches.addr, align 8, !tbaa !5
  %273 = load ptr, ptr %nmismatches.addr, align 8, !tbaa !5
  %274 = load ptr, ptr %nopens.addr, align 8, !tbaa !5
  %275 = load ptr, ptr %nindels.addr, align 8, !tbaa !5
  %276 = load ptr, ptr %directions16_upper_nogap, align 8, !tbaa !5
  %277 = load ptr, ptr %directions16_upper_Egap, align 8, !tbaa !5
  %278 = load i32, ptr %bestr, align 4, !tbaa !12
  %279 = load i32, ptr %bestc, align 4, !tbaa !12
  %280 = load ptr, ptr %rsequence.addr, align 8, !tbaa !5
  %281 = load ptr, ptr %rsequenceuc.addr, align 8, !tbaa !5
  %282 = load ptr, ptr %gsequence, align 8, !tbaa !5
  %283 = load ptr, ptr %gsequence_alt, align 8, !tbaa !5
  %284 = load i32, ptr %roffset.addr, align 4, !tbaa !12
  %285 = load i32, ptr %goffset.addr, align 4, !tbaa !12
  %286 = load ptr, ptr %genome.addr, align 8, !tbaa !5
  %287 = load ptr, ptr %genomealt.addr, align 8, !tbaa !5
  %288 = load ptr, ptr %pairpool.addr, align 8, !tbaa !5
  %289 = load i32, ptr %chroffset.addr, align 4, !tbaa !12
  %290 = load i32, ptr %chrhigh.addr, align 4, !tbaa !12
  %291 = load i8, ptr %watsonp.addr, align 1, !tbaa !14
  %292 = load i32, ptr %genestrand.addr, align 4, !tbaa !12
  %293 = load ptr, ptr %dynprogindex.addr, align 8, !tbaa !5
  %294 = load i32, ptr %293, align 4, !tbaa !12
  %call133 = call ptr @Dynprog_traceback_16_upper(ptr noundef null, ptr noundef %271, ptr noundef %272, ptr noundef %273, ptr noundef %274, ptr noundef %275, ptr noundef %276, ptr noundef %277, i32 noundef %278, i32 noundef %279, ptr noundef %280, ptr noundef %281, ptr noundef %282, ptr noundef %283, i32 noundef %284, i32 noundef %285, ptr noundef %286, ptr noundef %287, ptr noundef %288, i8 noundef zeroext 0, i32 noundef %289, i32 noundef %290, i8 noundef zeroext %291, i32 noundef %292, i32 noundef %294)
  store ptr %call133, ptr %pairs, align 8, !tbaa !5
  br label %if.end136

if.else134:                                       ; preds = %if.else129
  %295 = load ptr, ptr %traceback_score.addr, align 8, !tbaa !5
  %296 = load ptr, ptr %nmatches.addr, align 8, !tbaa !5
  %297 = load ptr, ptr %nmismatches.addr, align 8, !tbaa !5
  %298 = load ptr, ptr %nopens.addr, align 8, !tbaa !5
  %299 = load ptr, ptr %nindels.addr, align 8, !tbaa !5
  %300 = load ptr, ptr %directions16_lower_nogap, align 8, !tbaa !5
  %301 = load ptr, ptr %directions16_lower_Egap, align 8, !tbaa !5
  %302 = load i32, ptr %bestr, align 4, !tbaa !12
  %303 = load i32, ptr %bestc, align 4, !tbaa !12
  %304 = load ptr, ptr %rsequence.addr, align 8, !tbaa !5
  %305 = load ptr, ptr %rsequenceuc.addr, align 8, !tbaa !5
  %306 = load ptr, ptr %gsequence, align 8, !tbaa !5
  %307 = load ptr, ptr %gsequence_alt, align 8, !tbaa !5
  %308 = load i32, ptr %roffset.addr, align 4, !tbaa !12
  %309 = load i32, ptr %goffset.addr, align 4, !tbaa !12
  %310 = load ptr, ptr %pairpool.addr, align 8, !tbaa !5
  %311 = load i32, ptr %genestrand.addr, align 4, !tbaa !12
  %312 = load ptr, ptr %dynprogindex.addr, align 8, !tbaa !5
  %313 = load i32, ptr %312, align 4, !tbaa !12
  %call135 = call ptr @Dynprog_traceback_16_lower(ptr noundef null, ptr noundef %295, ptr noundef %296, ptr noundef %297, ptr noundef %298, ptr noundef %299, ptr noundef %300, ptr noundef %301, i32 noundef %302, i32 noundef %303, ptr noundef %304, ptr noundef %305, ptr noundef %306, ptr noundef %307, i32 noundef %308, i32 noundef %309, ptr noundef %310, i32 noundef %311, i8 noundef zeroext 0, i32 noundef %313)
  store ptr %call135, ptr %pairs, align 8, !tbaa !5
  br label %if.end136

if.end136:                                        ; preds = %if.else134, %if.then132
  br label %if.end137

if.end137:                                        ; preds = %if.end136, %if.end128
  br label %if.end138

if.end138:                                        ; preds = %if.end137, %if.then116
  br label %if.end139

if.end139:                                        ; preds = %if.end138, %if.then108
  %314 = load i32, ptr %endalign.addr, align 4, !tbaa !14
  %cmp140 = icmp eq i32 %314, 0
  br i1 %cmp140, label %land.lhs.true145, label %lor.lhs.false142

lor.lhs.false142:                                 ; preds = %if.end139
  %315 = load i32, ptr %endalign.addr, align 4, !tbaa !14
  %cmp143 = icmp eq i32 %315, 3
  br i1 %cmp143, label %land.lhs.true145, label %if.else150

land.lhs.true145:                                 ; preds = %lor.lhs.false142, %if.end139
  %316 = load ptr, ptr %nmatches.addr, align 8, !tbaa !5
  %317 = load i32, ptr %316, align 4, !tbaa !12
  %add146 = add nsw i32 %317, 1
  %318 = load ptr, ptr %nmismatches.addr, align 8, !tbaa !5
  %319 = load i32, ptr %318, align 4, !tbaa !12
  %cmp147 = icmp slt i32 %add146, %319
  br i1 %cmp147, label %if.then149, label %if.else150

if.then149:                                       ; preds = %land.lhs.true145
  %320 = load ptr, ptr %traceback_score.addr, align 8, !tbaa !5
  store i32 0, ptr %320, align 4, !tbaa !12
  store ptr null, ptr %pairs, align 8, !tbaa !5
  br label %if.end161

if.else150:                                       ; preds = %land.lhs.true145, %lor.lhs.false142
  %321 = load ptr, ptr %pairs, align 8, !tbaa !5
  %call151 = call ptr @List_reverse(ptr noundef %321)
  store ptr %call151, ptr %pairs, align 8, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else150
  %322 = load ptr, ptr %pairs, align 8, !tbaa !5
  %cmp152 = icmp ne ptr %322, null
  br i1 %cmp152, label %land.lhs.true154, label %land.end

land.lhs.true154:                                 ; preds = %while.cond
  %323 = load ptr, ptr %pairs, align 8, !tbaa !5
  %call155 = call ptr @List_head(ptr noundef %323)
  store ptr %call155, ptr %pair, align 8, !tbaa !5
  %tobool156 = icmp ne ptr %call155, null
  br i1 %tobool156, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true154
  %324 = load ptr, ptr %pair, align 8, !tbaa !5
  %comp = getelementptr inbounds %struct.Pair_T, ptr %324, i32 0, i32 10
  %325 = load i8, ptr %comp, align 1, !tbaa !20
  %conv157 = sext i8 %325 to i32
  %cmp158 = icmp eq i32 %conv157, 45
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true154, %while.cond
  %326 = phi i1 [ false, %land.lhs.true154 ], [ false, %while.cond ], [ %cmp158, %land.rhs ]
  br i1 %326, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %327 = load ptr, ptr %pairs, align 8, !tbaa !5
  %call160 = call ptr @List_next(ptr noundef %327)
  store ptr %call160, ptr %pairs, align 8, !tbaa !5
  br label %while.cond, !llvm.loop !57

while.end:                                        ; preds = %land.end
  br label %if.end161

if.end161:                                        ; preds = %while.end, %if.then149
  %328 = load ptr, ptr %gsequence_alt, align 8, !tbaa !5
  call void @Mem_free(ptr noundef %328, ptr noundef @.str, i32 noundef 2237)
  store ptr null, ptr %gsequence_alt, align 8, !tbaa !5
  %329 = load ptr, ptr %gsequence, align 8, !tbaa !5
  call void @Mem_free(ptr noundef %329, ptr noundef @.str, i32 noundef 2238)
  store ptr null, ptr %gsequence, align 8, !tbaa !5
  %330 = load ptr, ptr %dynprogindex.addr, align 8, !tbaa !5
  %331 = load i32, ptr %330, align 4, !tbaa !12
  %cmp162 = icmp sgt i32 %331, 0
  %332 = zext i1 %cmp162 to i64
  %cond = select i1 %cmp162, i32 1, i32 -1
  %333 = load ptr, ptr %dynprogindex.addr, align 8, !tbaa !5
  %334 = load i32, ptr %333, align 4, !tbaa !12
  %add164 = add nsw i32 %334, %cond
  store i32 %add164, ptr %333, align 4, !tbaa !12
  %335 = load ptr, ptr %pairs, align 8, !tbaa !5
  store ptr %335, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end161, %if.then55, %if.then29, %if.then14
  call void @llvm.lifetime.end.p0(i64 8, ptr %directions16_lower_Egap) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %directions16_lower_nogap) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %directions16_upper_Egap) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %directions16_upper_nogap) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %matrix16_lower) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %matrix16_upper) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %directions8_lower_Egap) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %directions8_lower_nogap) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %directions8_upper_Egap) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %directions8_upper_nogap) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %matrix8_lower) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %matrix8_upper) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr %use8p) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %finalscore) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %extend) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %open) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %uband) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %lband) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %bestc) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %bestr) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %mismatchtype) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %pair) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %gsequence_alt) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %gsequence) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %pairs) #5
  %336 = load ptr, ptr %retval, align 8
  ret ptr %336
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Dynprog_end3_splicejunction(ptr noundef %dynprogindex, ptr noundef %traceback_score, ptr noundef %missscore, ptr noundef %nmatches, ptr noundef %nmismatches, ptr noundef %nopens, ptr noundef %nindels, ptr noundef %dynprog, ptr noundef %rsequence, ptr noundef %rsequenceuc, ptr noundef %gsequence, ptr noundef %gsequence_alt, i32 noundef %rlength, i32 noundef %glength, i32 noundef %roffset, i32 noundef %goffset_anchor, i32 noundef %goffset_far, i32 noundef %chroffset, i32 noundef %chrhigh, i8 noundef zeroext %watsonp, i32 noundef %genestrand, i8 noundef zeroext %jump_late_p, ptr noundef %genome, ptr noundef %genomealt, ptr noundef %pairpool, i32 noundef %extraband_end, double noundef %defect_rate, i32 noundef %contlength) #1 {
entry:
  %retval = alloca ptr, align 8
  %dynprogindex.addr = alloca ptr, align 8
  %traceback_score.addr = alloca ptr, align 8
  %missscore.addr = alloca ptr, align 8
  %nmatches.addr = alloca ptr, align 8
  %nmismatches.addr = alloca ptr, align 8
  %nopens.addr = alloca ptr, align 8
  %nindels.addr = alloca ptr, align 8
  %dynprog.addr = alloca ptr, align 8
  %rsequence.addr = alloca ptr, align 8
  %rsequenceuc.addr = alloca ptr, align 8
  %gsequence.addr = alloca ptr, align 8
  %gsequence_alt.addr = alloca ptr, align 8
  %rlength.addr = alloca i32, align 4
  %glength.addr = alloca i32, align 4
  %roffset.addr = alloca i32, align 4
  %goffset_anchor.addr = alloca i32, align 4
  %goffset_far.addr = alloca i32, align 4
  %chroffset.addr = alloca i32, align 4
  %chrhigh.addr = alloca i32, align 4
  %watsonp.addr = alloca i8, align 1
  %genestrand.addr = alloca i32, align 4
  %jump_late_p.addr = alloca i8, align 1
  %genome.addr = alloca ptr, align 8
  %genomealt.addr = alloca ptr, align 8
  %pairpool.addr = alloca ptr, align 8
  %extraband_end.addr = alloca i32, align 4
  %defect_rate.addr = alloca double, align 8
  %contlength.addr = alloca i32, align 4
  %pairs = alloca ptr, align 8
  %pair = alloca ptr, align 8
  %mismatchtype = alloca i32, align 4
  %bestr = alloca i32, align 4
  %bestc = alloca i32, align 4
  %lband = alloca i32, align 4
  %uband = alloca i32, align 4
  %open = alloca i32, align 4
  %extend = alloca i32, align 4
  %finalscore = alloca i32, align 4
  %use8p = alloca i8, align 1
  %matrix8_upper = alloca ptr, align 8
  %matrix8_lower = alloca ptr, align 8
  %directions8_upper_nogap = alloca ptr, align 8
  %directions8_upper_Egap = alloca ptr, align 8
  %directions8_lower_nogap = alloca ptr, align 8
  %directions8_lower_Egap = alloca ptr, align 8
  %matrix16_upper = alloca ptr, align 8
  %matrix16_lower = alloca ptr, align 8
  %directions16_upper_nogap = alloca ptr, align 8
  %directions16_upper_Egap = alloca ptr, align 8
  %directions16_lower_nogap = alloca ptr, align 8
  %directions16_lower_Egap = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dynprogindex, ptr %dynprogindex.addr, align 8, !tbaa !5
  store ptr %traceback_score, ptr %traceback_score.addr, align 8, !tbaa !5
  store ptr %missscore, ptr %missscore.addr, align 8, !tbaa !5
  store ptr %nmatches, ptr %nmatches.addr, align 8, !tbaa !5
  store ptr %nmismatches, ptr %nmismatches.addr, align 8, !tbaa !5
  store ptr %nopens, ptr %nopens.addr, align 8, !tbaa !5
  store ptr %nindels, ptr %nindels.addr, align 8, !tbaa !5
  store ptr %dynprog, ptr %dynprog.addr, align 8, !tbaa !5
  store ptr %rsequence, ptr %rsequence.addr, align 8, !tbaa !5
  store ptr %rsequenceuc, ptr %rsequenceuc.addr, align 8, !tbaa !5
  store ptr %gsequence, ptr %gsequence.addr, align 8, !tbaa !5
  store ptr %gsequence_alt, ptr %gsequence_alt.addr, align 8, !tbaa !5
  store i32 %rlength, ptr %rlength.addr, align 4, !tbaa !12
  store i32 %glength, ptr %glength.addr, align 4, !tbaa !12
  store i32 %roffset, ptr %roffset.addr, align 4, !tbaa !12
  store i32 %goffset_anchor, ptr %goffset_anchor.addr, align 4, !tbaa !12
  store i32 %goffset_far, ptr %goffset_far.addr, align 4, !tbaa !12
  store i32 %chroffset, ptr %chroffset.addr, align 4, !tbaa !12
  store i32 %chrhigh, ptr %chrhigh.addr, align 4, !tbaa !12
  store i8 %watsonp, ptr %watsonp.addr, align 1, !tbaa !14
  store i32 %genestrand, ptr %genestrand.addr, align 4, !tbaa !12
  store i8 %jump_late_p, ptr %jump_late_p.addr, align 1, !tbaa !14
  store ptr %genome, ptr %genome.addr, align 8, !tbaa !5
  store ptr %genomealt, ptr %genomealt.addr, align 8, !tbaa !5
  store ptr %pairpool, ptr %pairpool.addr, align 8, !tbaa !5
  store i32 %extraband_end, ptr %extraband_end.addr, align 4, !tbaa !12
  store double %defect_rate, ptr %defect_rate.addr, align 8, !tbaa !15
  store i32 %contlength, ptr %contlength.addr, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 8, ptr %pairs) #5
  store ptr null, ptr %pairs, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %pair) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %mismatchtype) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %bestr) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %bestc) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %lband) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %uband) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %open) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %extend) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %finalscore) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr %use8p) #5
  store i8 0, ptr %use8p, align 1, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 8, ptr %matrix8_upper) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %matrix8_lower) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %directions8_upper_nogap) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %directions8_upper_Egap) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %directions8_lower_nogap) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %directions8_lower_Egap) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %matrix16_upper) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %matrix16_lower) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %directions16_upper_nogap) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %directions16_upper_Egap) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %directions16_lower_nogap) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %directions16_lower_Egap) #5
  store i32 3, ptr %mismatchtype, align 4, !tbaa !14
  %0 = load i8, ptr @user_dynprog_p, align 1, !tbaa !14
  %conv = zext i8 %0 to i32
  %cmp = icmp eq i32 %conv, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, ptr @user_open, align 4, !tbaa !12
  store i32 %1, ptr %open, align 4, !tbaa !12
  %2 = load i32, ptr @user_extend, align 4, !tbaa !12
  store i32 %2, ptr %extend, align 4, !tbaa !12
  br label %if.end11

if.else:                                          ; preds = %entry
  %3 = load double, ptr %defect_rate.addr, align 8, !tbaa !15
  %cmp2 = fcmp olt double %3, 3.000000e-03
  br i1 %cmp2, label %if.then4, label %if.else5

if.then4:                                         ; preds = %if.else
  store i32 -10, ptr %open, align 4, !tbaa !12
  store i32 -2, ptr %extend, align 4, !tbaa !12
  br label %if.end10

if.else5:                                         ; preds = %if.else
  %4 = load double, ptr %defect_rate.addr, align 8, !tbaa !15
  %cmp6 = fcmp olt double %4, 1.400000e-02
  br i1 %cmp6, label %if.then8, label %if.else9

if.then8:                                         ; preds = %if.else5
  store i32 -8, ptr %open, align 4, !tbaa !12
  store i32 -2, ptr %extend, align 4, !tbaa !12
  br label %if.end

if.else9:                                         ; preds = %if.else5
  store i32 -6, ptr %open, align 4, !tbaa !12
  store i32 -2, ptr %extend, align 4, !tbaa !12
  br label %if.end

if.end:                                           ; preds = %if.else9, %if.then8
  br label %if.end10

if.end10:                                         ; preds = %if.end, %if.then4
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %if.then
  %5 = load i32, ptr %rlength.addr, align 4, !tbaa !12
  %cmp12 = icmp sle i32 %5, 0
  br i1 %cmp12, label %if.then16, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end11
  %6 = load i32, ptr %rlength.addr, align 4, !tbaa !12
  %7 = load ptr, ptr %dynprog.addr, align 8, !tbaa !5
  %max_rlength = getelementptr inbounds %struct.Dynprog_T, ptr %7, i32 0, i32 0
  %8 = load i32, ptr %max_rlength, align 8, !tbaa !17
  %cmp14 = icmp sgt i32 %6, %8
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %lor.lhs.false, %if.end11
  %9 = load ptr, ptr %traceback_score.addr, align 8, !tbaa !5
  store i32 0, ptr %9, align 4, !tbaa !12
  %10 = load ptr, ptr %nindels.addr, align 8, !tbaa !5
  store i32 0, ptr %10, align 4, !tbaa !12
  %11 = load ptr, ptr %nopens.addr, align 8, !tbaa !5
  store i32 0, ptr %11, align 4, !tbaa !12
  %12 = load ptr, ptr %nmismatches.addr, align 8, !tbaa !5
  store i32 0, ptr %12, align 4, !tbaa !12
  %13 = load ptr, ptr %nmatches.addr, align 8, !tbaa !5
  store i32 0, ptr %13, align 4, !tbaa !12
  %14 = load ptr, ptr %missscore.addr, align 8, !tbaa !5
  store i32 -100, ptr %14, align 4, !tbaa !12
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end17:                                         ; preds = %lor.lhs.false
  %15 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %cmp18 = icmp sle i32 %15, 0
  br i1 %cmp18, label %if.then23, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %if.end17
  %16 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %17 = load ptr, ptr %dynprog.addr, align 8, !tbaa !5
  %max_glength = getelementptr inbounds %struct.Dynprog_T, ptr %17, i32 0, i32 1
  %18 = load i32, ptr %max_glength, align 4, !tbaa !19
  %cmp21 = icmp sgt i32 %16, %18
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %lor.lhs.false20, %if.end17
  %19 = load ptr, ptr %traceback_score.addr, align 8, !tbaa !5
  store i32 0, ptr %19, align 4, !tbaa !12
  %20 = load ptr, ptr %nindels.addr, align 8, !tbaa !5
  store i32 0, ptr %20, align 4, !tbaa !12
  %21 = load ptr, ptr %nopens.addr, align 8, !tbaa !5
  store i32 0, ptr %21, align 4, !tbaa !12
  %22 = load ptr, ptr %nmismatches.addr, align 8, !tbaa !5
  store i32 0, ptr %22, align 4, !tbaa !12
  %23 = load ptr, ptr %nmatches.addr, align 8, !tbaa !5
  store i32 0, ptr %23, align 4, !tbaa !12
  %24 = load ptr, ptr %missscore.addr, align 8, !tbaa !5
  store i32 -100, ptr %24, align 4, !tbaa !12
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end24:                                         ; preds = %lor.lhs.false20
  %25 = load i32, ptr %rlength.addr, align 4, !tbaa !12
  %26 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %27 = load i32, ptr %extraband_end.addr, align 4, !tbaa !12
  call void @Dynprog_compute_bands(ptr noundef %lband, ptr noundef %uband, i32 noundef %25, i32 noundef %26, i32 noundef %27, i8 noundef zeroext 1)
  %28 = load i32, ptr %rlength.addr, align 4, !tbaa !12
  %29 = load i32, ptr %mismatchtype, align 4, !tbaa !14
  %idxprom = zext i32 %29 to i64
  %arrayidx = getelementptr inbounds [4 x i32], ptr @use8p_size, i64 0, i64 %idxprom
  %30 = load i32, ptr %arrayidx, align 4, !tbaa !12
  %cmp25 = icmp slt i32 %28, %30
  br i1 %cmp25, label %if.then32, label %lor.lhs.false27

lor.lhs.false27:                                  ; preds = %if.end24
  %31 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %32 = load i32, ptr %mismatchtype, align 4, !tbaa !14
  %idxprom28 = zext i32 %32 to i64
  %arrayidx29 = getelementptr inbounds [4 x i32], ptr @use8p_size, i64 0, i64 %idxprom28
  %33 = load i32, ptr %arrayidx29, align 4, !tbaa !12
  %cmp30 = icmp slt i32 %31, %33
  br i1 %cmp30, label %if.then32, label %if.else34

if.then32:                                        ; preds = %lor.lhs.false27, %if.end24
  store i8 1, ptr %use8p, align 1, !tbaa !14
  %34 = load ptr, ptr %dynprog.addr, align 8, !tbaa !5
  %35 = load ptr, ptr %rsequenceuc.addr, align 8, !tbaa !5
  %36 = load ptr, ptr %gsequence.addr, align 8, !tbaa !5
  %37 = load ptr, ptr %gsequence_alt.addr, align 8, !tbaa !5
  %38 = load i32, ptr %rlength.addr, align 4, !tbaa !12
  %39 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %40 = load i32, ptr %mismatchtype, align 4, !tbaa !14
  %41 = load i32, ptr %open, align 4, !tbaa !12
  %42 = load i32, ptr %extend, align 4, !tbaa !12
  %43 = load i32, ptr %uband, align 4, !tbaa !12
  %44 = load i8, ptr %jump_late_p.addr, align 1, !tbaa !14
  %call = call ptr @Dynprog_simd_8_upper(ptr noundef %directions8_upper_nogap, ptr noundef %directions8_upper_Egap, ptr noundef %34, ptr noundef %35, ptr noundef %36, ptr noundef %37, i32 noundef %38, i32 noundef %39, i32 noundef %40, i32 noundef %41, i32 noundef %42, i32 noundef %43, i8 noundef zeroext %44, i8 noundef zeroext 0)
  store ptr %call, ptr %matrix8_upper, align 8, !tbaa !5
  %45 = load ptr, ptr %dynprog.addr, align 8, !tbaa !5
  %46 = load ptr, ptr %rsequenceuc.addr, align 8, !tbaa !5
  %47 = load ptr, ptr %gsequence.addr, align 8, !tbaa !5
  %48 = load ptr, ptr %gsequence_alt.addr, align 8, !tbaa !5
  %49 = load i32, ptr %rlength.addr, align 4, !tbaa !12
  %50 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %51 = load i32, ptr %mismatchtype, align 4, !tbaa !14
  %52 = load i32, ptr %open, align 4, !tbaa !12
  %53 = load i32, ptr %extend, align 4, !tbaa !12
  %54 = load i32, ptr %lband, align 4, !tbaa !12
  %55 = load i8, ptr %jump_late_p.addr, align 1, !tbaa !14
  %call33 = call ptr @Dynprog_simd_8_lower(ptr noundef %directions8_lower_nogap, ptr noundef %directions8_lower_Egap, ptr noundef %45, ptr noundef %46, ptr noundef %47, ptr noundef %48, i32 noundef %49, i32 noundef %50, i32 noundef %51, i32 noundef %52, i32 noundef %53, i32 noundef %54, i8 noundef zeroext %55, i8 noundef zeroext 0)
  store ptr %call33, ptr %matrix8_lower, align 8, !tbaa !5
  %56 = load ptr, ptr %matrix8_upper, align 8, !tbaa !5
  %57 = load ptr, ptr %matrix8_lower, align 8, !tbaa !5
  %58 = load i32, ptr %rlength.addr, align 4, !tbaa !12
  %59 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %60 = load i32, ptr %lband, align 4, !tbaa !12
  %61 = load i32, ptr %uband, align 4, !tbaa !12
  %62 = load i8, ptr %jump_late_p.addr, align 1, !tbaa !14
  call void @find_best_endpoint_to_queryend_indels_8(ptr noundef %finalscore, ptr noundef %bestr, ptr noundef %bestc, ptr noundef %56, ptr noundef %57, i32 noundef %58, i32 noundef %59, i32 noundef %60, i32 noundef %61, i8 noundef zeroext %62)
  br label %if.end37

if.else34:                                        ; preds = %lor.lhs.false27
  %63 = load ptr, ptr %dynprog.addr, align 8, !tbaa !5
  %64 = load ptr, ptr %rsequenceuc.addr, align 8, !tbaa !5
  %65 = load ptr, ptr %gsequence.addr, align 8, !tbaa !5
  %66 = load ptr, ptr %gsequence_alt.addr, align 8, !tbaa !5
  %67 = load i32, ptr %rlength.addr, align 4, !tbaa !12
  %68 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %69 = load i32, ptr %mismatchtype, align 4, !tbaa !14
  %70 = load i32, ptr %open, align 4, !tbaa !12
  %71 = load i32, ptr %extend, align 4, !tbaa !12
  %72 = load i32, ptr %uband, align 4, !tbaa !12
  %73 = load i8, ptr %jump_late_p.addr, align 1, !tbaa !14
  %call35 = call ptr @Dynprog_simd_16_upper(ptr noundef %directions16_upper_nogap, ptr noundef %directions16_upper_Egap, ptr noundef %63, ptr noundef %64, ptr noundef %65, ptr noundef %66, i32 noundef %67, i32 noundef %68, i32 noundef %69, i32 noundef %70, i32 noundef %71, i32 noundef %72, i8 noundef zeroext %73, i8 noundef zeroext 0)
  store ptr %call35, ptr %matrix16_upper, align 8, !tbaa !5
  %74 = load ptr, ptr %dynprog.addr, align 8, !tbaa !5
  %75 = load ptr, ptr %rsequenceuc.addr, align 8, !tbaa !5
  %76 = load ptr, ptr %gsequence.addr, align 8, !tbaa !5
  %77 = load ptr, ptr %gsequence_alt.addr, align 8, !tbaa !5
  %78 = load i32, ptr %rlength.addr, align 4, !tbaa !12
  %79 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %80 = load i32, ptr %mismatchtype, align 4, !tbaa !14
  %81 = load i32, ptr %open, align 4, !tbaa !12
  %82 = load i32, ptr %extend, align 4, !tbaa !12
  %83 = load i32, ptr %lband, align 4, !tbaa !12
  %84 = load i8, ptr %jump_late_p.addr, align 1, !tbaa !14
  %call36 = call ptr @Dynprog_simd_16_lower(ptr noundef %directions16_lower_nogap, ptr noundef %directions16_lower_Egap, ptr noundef %74, ptr noundef %75, ptr noundef %76, ptr noundef %77, i32 noundef %78, i32 noundef %79, i32 noundef %80, i32 noundef %81, i32 noundef %82, i32 noundef %83, i8 noundef zeroext %84, i8 noundef zeroext 0)
  store ptr %call36, ptr %matrix16_lower, align 8, !tbaa !5
  %85 = load ptr, ptr %matrix16_upper, align 8, !tbaa !5
  %86 = load ptr, ptr %matrix16_lower, align 8, !tbaa !5
  %87 = load i32, ptr %rlength.addr, align 4, !tbaa !12
  %88 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %89 = load i32, ptr %lband, align 4, !tbaa !12
  %90 = load i32, ptr %uband, align 4, !tbaa !12
  %91 = load i8, ptr %jump_late_p.addr, align 1, !tbaa !14
  call void @find_best_endpoint_to_queryend_indels_16(ptr noundef %finalscore, ptr noundef %bestr, ptr noundef %bestc, ptr noundef %85, ptr noundef %86, i32 noundef %87, i32 noundef %88, i32 noundef %89, i32 noundef %90, i8 noundef zeroext %91)
  br label %if.end37

if.end37:                                         ; preds = %if.else34, %if.then32
  %92 = load i32, ptr %finalscore, align 4, !tbaa !12
  %cmp38 = icmp slt i32 %92, 0
  br i1 %cmp38, label %if.then40, label %if.else41

if.then40:                                        ; preds = %if.end37
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else41:                                        ; preds = %if.end37
  %93 = load ptr, ptr %traceback_score.addr, align 8, !tbaa !5
  store i32 0, ptr %93, align 4, !tbaa !12
  %94 = load ptr, ptr %nindels.addr, align 8, !tbaa !5
  store i32 0, ptr %94, align 4, !tbaa !12
  %95 = load ptr, ptr %nopens.addr, align 8, !tbaa !5
  store i32 0, ptr %95, align 4, !tbaa !12
  %96 = load ptr, ptr %nmismatches.addr, align 8, !tbaa !5
  store i32 0, ptr %96, align 4, !tbaa !12
  %97 = load ptr, ptr %nmatches.addr, align 8, !tbaa !5
  store i32 0, ptr %97, align 4, !tbaa !12
  %98 = load i8, ptr %use8p, align 1, !tbaa !14
  %conv42 = zext i8 %98 to i32
  %cmp43 = icmp eq i32 %conv42, 1
  br i1 %cmp43, label %if.then45, label %if.else61

if.then45:                                        ; preds = %if.else41
  %99 = load i32, ptr %bestc, align 4, !tbaa !12
  %100 = load i32, ptr %bestr, align 4, !tbaa !12
  %cmp46 = icmp sge i32 %99, %100
  br i1 %cmp46, label %if.then48, label %if.else50

if.then48:                                        ; preds = %if.then45
  %101 = load ptr, ptr %traceback_score.addr, align 8, !tbaa !5
  %102 = load ptr, ptr %nmatches.addr, align 8, !tbaa !5
  %103 = load ptr, ptr %nmismatches.addr, align 8, !tbaa !5
  %104 = load ptr, ptr %nopens.addr, align 8, !tbaa !5
  %105 = load ptr, ptr %nindels.addr, align 8, !tbaa !5
  %106 = load ptr, ptr %directions8_upper_nogap, align 8, !tbaa !5
  %107 = load ptr, ptr %directions8_upper_Egap, align 8, !tbaa !5
  %108 = load i32, ptr %contlength.addr, align 4, !tbaa !12
  %109 = load ptr, ptr %rsequence.addr, align 8, !tbaa !5
  %110 = load ptr, ptr %rsequenceuc.addr, align 8, !tbaa !5
  %111 = load ptr, ptr %gsequence.addr, align 8, !tbaa !5
  %112 = load ptr, ptr %gsequence_alt.addr, align 8, !tbaa !5
  %113 = load i32, ptr %roffset.addr, align 4, !tbaa !12
  %114 = load i32, ptr %goffset_far.addr, align 4, !tbaa !12
  %115 = load ptr, ptr %genome.addr, align 8, !tbaa !5
  %116 = load ptr, ptr %genomealt.addr, align 8, !tbaa !5
  %117 = load ptr, ptr %pairpool.addr, align 8, !tbaa !5
  %118 = load i32, ptr %chroffset.addr, align 4, !tbaa !12
  %119 = load i32, ptr %chrhigh.addr, align 4, !tbaa !12
  %120 = load i8, ptr %watsonp.addr, align 1, !tbaa !14
  %121 = load i32, ptr %genestrand.addr, align 4, !tbaa !12
  %122 = load ptr, ptr %dynprogindex.addr, align 8, !tbaa !5
  %123 = load i32, ptr %122, align 4, !tbaa !12
  %call49 = call ptr @traceback_local_8_upper(ptr noundef null, ptr noundef %101, ptr noundef %102, ptr noundef %103, ptr noundef %104, ptr noundef %105, ptr noundef %106, ptr noundef %107, ptr noundef %bestr, ptr noundef %bestc, i32 noundef %108, ptr noundef %109, ptr noundef %110, ptr noundef %111, ptr noundef %112, i32 noundef %113, i32 noundef %114, ptr noundef %115, ptr noundef %116, ptr noundef %117, i8 noundef zeroext 0, i32 noundef %118, i32 noundef %119, i8 noundef zeroext %120, i32 noundef %121, i32 noundef %123)
  store ptr %call49, ptr %pairs, align 8, !tbaa !5
  br label %if.end52

if.else50:                                        ; preds = %if.then45
  %124 = load ptr, ptr %traceback_score.addr, align 8, !tbaa !5
  %125 = load ptr, ptr %nmatches.addr, align 8, !tbaa !5
  %126 = load ptr, ptr %nmismatches.addr, align 8, !tbaa !5
  %127 = load ptr, ptr %nopens.addr, align 8, !tbaa !5
  %128 = load ptr, ptr %nindels.addr, align 8, !tbaa !5
  %129 = load ptr, ptr %directions8_lower_nogap, align 8, !tbaa !5
  %130 = load ptr, ptr %directions8_lower_Egap, align 8, !tbaa !5
  %131 = load i32, ptr %contlength.addr, align 4, !tbaa !12
  %132 = load ptr, ptr %rsequence.addr, align 8, !tbaa !5
  %133 = load ptr, ptr %rsequenceuc.addr, align 8, !tbaa !5
  %134 = load ptr, ptr %gsequence.addr, align 8, !tbaa !5
  %135 = load ptr, ptr %gsequence_alt.addr, align 8, !tbaa !5
  %136 = load i32, ptr %roffset.addr, align 4, !tbaa !12
  %137 = load i32, ptr %goffset_far.addr, align 4, !tbaa !12
  %138 = load ptr, ptr %pairpool.addr, align 8, !tbaa !5
  %139 = load i32, ptr %genestrand.addr, align 4, !tbaa !12
  %140 = load ptr, ptr %dynprogindex.addr, align 8, !tbaa !5
  %141 = load i32, ptr %140, align 4, !tbaa !12
  %call51 = call ptr @traceback_local_8_lower(ptr noundef null, ptr noundef %124, ptr noundef %125, ptr noundef %126, ptr noundef %127, ptr noundef %128, ptr noundef %129, ptr noundef %130, ptr noundef %bestr, ptr noundef %bestc, i32 noundef %131, ptr noundef %132, ptr noundef %133, ptr noundef %134, ptr noundef %135, i32 noundef %136, i32 noundef %137, ptr noundef %138, i32 noundef %139, i8 noundef zeroext 0, i32 noundef %141)
  store ptr %call51, ptr %pairs, align 8, !tbaa !5
  br label %if.end52

if.end52:                                         ; preds = %if.else50, %if.then48
  %142 = load ptr, ptr %pairs, align 8, !tbaa !5
  %143 = load ptr, ptr %pairpool.addr, align 8, !tbaa !5
  %144 = load i32, ptr %goffset_far.addr, align 4, !tbaa !12
  %145 = load i32, ptr %goffset_anchor.addr, align 4, !tbaa !12
  %sub = sub nsw i32 %144, %145
  %call53 = call ptr @Pairpool_push_gapholder(ptr noundef %142, ptr noundef %143, i32 noundef 0, i32 noundef %sub, ptr noundef null, ptr noundef null, i8 noundef zeroext 1)
  store ptr %call53, ptr %pairs, align 8, !tbaa !5
  %146 = load i32, ptr %bestc, align 4, !tbaa !12
  %147 = load i32, ptr %bestr, align 4, !tbaa !12
  %cmp54 = icmp sge i32 %146, %147
  br i1 %cmp54, label %if.then56, label %if.else58

if.then56:                                        ; preds = %if.end52
  %148 = load ptr, ptr %pairs, align 8, !tbaa !5
  %149 = load ptr, ptr %traceback_score.addr, align 8, !tbaa !5
  %150 = load ptr, ptr %nmatches.addr, align 8, !tbaa !5
  %151 = load ptr, ptr %nmismatches.addr, align 8, !tbaa !5
  %152 = load ptr, ptr %nopens.addr, align 8, !tbaa !5
  %153 = load ptr, ptr %nindels.addr, align 8, !tbaa !5
  %154 = load ptr, ptr %directions8_upper_nogap, align 8, !tbaa !5
  %155 = load ptr, ptr %directions8_upper_Egap, align 8, !tbaa !5
  %156 = load ptr, ptr %rsequence.addr, align 8, !tbaa !5
  %157 = load ptr, ptr %rsequenceuc.addr, align 8, !tbaa !5
  %158 = load ptr, ptr %gsequence.addr, align 8, !tbaa !5
  %159 = load ptr, ptr %gsequence_alt.addr, align 8, !tbaa !5
  %160 = load i32, ptr %roffset.addr, align 4, !tbaa !12
  %161 = load i32, ptr %goffset_anchor.addr, align 4, !tbaa !12
  %162 = load ptr, ptr %genome.addr, align 8, !tbaa !5
  %163 = load ptr, ptr %genomealt.addr, align 8, !tbaa !5
  %164 = load ptr, ptr %pairpool.addr, align 8, !tbaa !5
  %165 = load i32, ptr %chroffset.addr, align 4, !tbaa !12
  %166 = load i32, ptr %chrhigh.addr, align 4, !tbaa !12
  %167 = load i8, ptr %watsonp.addr, align 1, !tbaa !14
  %168 = load i32, ptr %genestrand.addr, align 4, !tbaa !12
  %169 = load ptr, ptr %dynprogindex.addr, align 8, !tbaa !5
  %170 = load i32, ptr %169, align 4, !tbaa !12
  %call57 = call ptr @traceback_local_8_upper(ptr noundef %148, ptr noundef %149, ptr noundef %150, ptr noundef %151, ptr noundef %152, ptr noundef %153, ptr noundef %154, ptr noundef %155, ptr noundef %bestr, ptr noundef %bestc, i32 noundef 0, ptr noundef %156, ptr noundef %157, ptr noundef %158, ptr noundef %159, i32 noundef %160, i32 noundef %161, ptr noundef %162, ptr noundef %163, ptr noundef %164, i8 noundef zeroext 0, i32 noundef %165, i32 noundef %166, i8 noundef zeroext %167, i32 noundef %168, i32 noundef %170)
  store ptr %call57, ptr %pairs, align 8, !tbaa !5
  br label %if.end60

if.else58:                                        ; preds = %if.end52
  %171 = load ptr, ptr %pairs, align 8, !tbaa !5
  %172 = load ptr, ptr %traceback_score.addr, align 8, !tbaa !5
  %173 = load ptr, ptr %nmatches.addr, align 8, !tbaa !5
  %174 = load ptr, ptr %nmismatches.addr, align 8, !tbaa !5
  %175 = load ptr, ptr %nopens.addr, align 8, !tbaa !5
  %176 = load ptr, ptr %nindels.addr, align 8, !tbaa !5
  %177 = load ptr, ptr %directions8_lower_nogap, align 8, !tbaa !5
  %178 = load ptr, ptr %directions8_lower_Egap, align 8, !tbaa !5
  %179 = load ptr, ptr %rsequence.addr, align 8, !tbaa !5
  %180 = load ptr, ptr %rsequenceuc.addr, align 8, !tbaa !5
  %181 = load ptr, ptr %gsequence.addr, align 8, !tbaa !5
  %182 = load ptr, ptr %gsequence_alt.addr, align 8, !tbaa !5
  %183 = load i32, ptr %roffset.addr, align 4, !tbaa !12
  %184 = load i32, ptr %goffset_anchor.addr, align 4, !tbaa !12
  %185 = load ptr, ptr %pairpool.addr, align 8, !tbaa !5
  %186 = load i32, ptr %genestrand.addr, align 4, !tbaa !12
  %187 = load ptr, ptr %dynprogindex.addr, align 8, !tbaa !5
  %188 = load i32, ptr %187, align 4, !tbaa !12
  %call59 = call ptr @traceback_local_8_lower(ptr noundef %171, ptr noundef %172, ptr noundef %173, ptr noundef %174, ptr noundef %175, ptr noundef %176, ptr noundef %177, ptr noundef %178, ptr noundef %bestr, ptr noundef %bestc, i32 noundef 0, ptr noundef %179, ptr noundef %180, ptr noundef %181, ptr noundef %182, i32 noundef %183, i32 noundef %184, ptr noundef %185, i32 noundef %186, i8 noundef zeroext 0, i32 noundef %188)
  store ptr %call59, ptr %pairs, align 8, !tbaa !5
  br label %if.end60

if.end60:                                         ; preds = %if.else58, %if.then56
  br label %if.end78

if.else61:                                        ; preds = %if.else41
  %189 = load i32, ptr %bestc, align 4, !tbaa !12
  %190 = load i32, ptr %bestr, align 4, !tbaa !12
  %cmp62 = icmp sge i32 %189, %190
  br i1 %cmp62, label %if.then64, label %if.else66

if.then64:                                        ; preds = %if.else61
  %191 = load ptr, ptr %traceback_score.addr, align 8, !tbaa !5
  %192 = load ptr, ptr %nmatches.addr, align 8, !tbaa !5
  %193 = load ptr, ptr %nmismatches.addr, align 8, !tbaa !5
  %194 = load ptr, ptr %nopens.addr, align 8, !tbaa !5
  %195 = load ptr, ptr %nindels.addr, align 8, !tbaa !5
  %196 = load ptr, ptr %directions16_upper_nogap, align 8, !tbaa !5
  %197 = load ptr, ptr %directions16_upper_Egap, align 8, !tbaa !5
  %198 = load i32, ptr %contlength.addr, align 4, !tbaa !12
  %199 = load ptr, ptr %rsequence.addr, align 8, !tbaa !5
  %200 = load ptr, ptr %rsequenceuc.addr, align 8, !tbaa !5
  %201 = load ptr, ptr %gsequence.addr, align 8, !tbaa !5
  %202 = load ptr, ptr %gsequence_alt.addr, align 8, !tbaa !5
  %203 = load i32, ptr %roffset.addr, align 4, !tbaa !12
  %204 = load i32, ptr %goffset_far.addr, align 4, !tbaa !12
  %205 = load ptr, ptr %genome.addr, align 8, !tbaa !5
  %206 = load ptr, ptr %genomealt.addr, align 8, !tbaa !5
  %207 = load ptr, ptr %pairpool.addr, align 8, !tbaa !5
  %208 = load i32, ptr %chroffset.addr, align 4, !tbaa !12
  %209 = load i32, ptr %chrhigh.addr, align 4, !tbaa !12
  %210 = load i8, ptr %watsonp.addr, align 1, !tbaa !14
  %211 = load i32, ptr %genestrand.addr, align 4, !tbaa !12
  %212 = load ptr, ptr %dynprogindex.addr, align 8, !tbaa !5
  %213 = load i32, ptr %212, align 4, !tbaa !12
  %call65 = call ptr @traceback_local_16_upper(ptr noundef null, ptr noundef %191, ptr noundef %192, ptr noundef %193, ptr noundef %194, ptr noundef %195, ptr noundef %196, ptr noundef %197, ptr noundef %bestr, ptr noundef %bestc, i32 noundef %198, ptr noundef %199, ptr noundef %200, ptr noundef %201, ptr noundef %202, i32 noundef %203, i32 noundef %204, ptr noundef %205, ptr noundef %206, ptr noundef %207, i8 noundef zeroext 0, i32 noundef %208, i32 noundef %209, i8 noundef zeroext %210, i32 noundef %211, i32 noundef %213)
  store ptr %call65, ptr %pairs, align 8, !tbaa !5
  br label %if.end68

if.else66:                                        ; preds = %if.else61
  %214 = load ptr, ptr %traceback_score.addr, align 8, !tbaa !5
  %215 = load ptr, ptr %nmatches.addr, align 8, !tbaa !5
  %216 = load ptr, ptr %nmismatches.addr, align 8, !tbaa !5
  %217 = load ptr, ptr %nopens.addr, align 8, !tbaa !5
  %218 = load ptr, ptr %nindels.addr, align 8, !tbaa !5
  %219 = load ptr, ptr %directions16_lower_nogap, align 8, !tbaa !5
  %220 = load ptr, ptr %directions16_lower_Egap, align 8, !tbaa !5
  %221 = load i32, ptr %contlength.addr, align 4, !tbaa !12
  %222 = load ptr, ptr %rsequence.addr, align 8, !tbaa !5
  %223 = load ptr, ptr %rsequenceuc.addr, align 8, !tbaa !5
  %224 = load ptr, ptr %gsequence.addr, align 8, !tbaa !5
  %225 = load ptr, ptr %gsequence_alt.addr, align 8, !tbaa !5
  %226 = load i32, ptr %roffset.addr, align 4, !tbaa !12
  %227 = load i32, ptr %goffset_far.addr, align 4, !tbaa !12
  %228 = load ptr, ptr %pairpool.addr, align 8, !tbaa !5
  %229 = load i32, ptr %genestrand.addr, align 4, !tbaa !12
  %230 = load ptr, ptr %dynprogindex.addr, align 8, !tbaa !5
  %231 = load i32, ptr %230, align 4, !tbaa !12
  %call67 = call ptr @traceback_local_16_lower(ptr noundef null, ptr noundef %214, ptr noundef %215, ptr noundef %216, ptr noundef %217, ptr noundef %218, ptr noundef %219, ptr noundef %220, ptr noundef %bestr, ptr noundef %bestc, i32 noundef %221, ptr noundef %222, ptr noundef %223, ptr noundef %224, ptr noundef %225, i32 noundef %226, i32 noundef %227, ptr noundef %228, i32 noundef %229, i8 noundef zeroext 0, i32 noundef %231)
  store ptr %call67, ptr %pairs, align 8, !tbaa !5
  br label %if.end68

if.end68:                                         ; preds = %if.else66, %if.then64
  %232 = load ptr, ptr %pairs, align 8, !tbaa !5
  %233 = load ptr, ptr %pairpool.addr, align 8, !tbaa !5
  %234 = load i32, ptr %goffset_far.addr, align 4, !tbaa !12
  %235 = load i32, ptr %goffset_anchor.addr, align 4, !tbaa !12
  %sub69 = sub nsw i32 %234, %235
  %call70 = call ptr @Pairpool_push_gapholder(ptr noundef %232, ptr noundef %233, i32 noundef 0, i32 noundef %sub69, ptr noundef null, ptr noundef null, i8 noundef zeroext 1)
  store ptr %call70, ptr %pairs, align 8, !tbaa !5
  %236 = load i32, ptr %bestc, align 4, !tbaa !12
  %237 = load i32, ptr %bestr, align 4, !tbaa !12
  %cmp71 = icmp sge i32 %236, %237
  br i1 %cmp71, label %if.then73, label %if.else75

if.then73:                                        ; preds = %if.end68
  %238 = load ptr, ptr %pairs, align 8, !tbaa !5
  %239 = load ptr, ptr %traceback_score.addr, align 8, !tbaa !5
  %240 = load ptr, ptr %nmatches.addr, align 8, !tbaa !5
  %241 = load ptr, ptr %nmismatches.addr, align 8, !tbaa !5
  %242 = load ptr, ptr %nopens.addr, align 8, !tbaa !5
  %243 = load ptr, ptr %nindels.addr, align 8, !tbaa !5
  %244 = load ptr, ptr %directions16_upper_nogap, align 8, !tbaa !5
  %245 = load ptr, ptr %directions16_upper_Egap, align 8, !tbaa !5
  %246 = load ptr, ptr %rsequence.addr, align 8, !tbaa !5
  %247 = load ptr, ptr %rsequenceuc.addr, align 8, !tbaa !5
  %248 = load ptr, ptr %gsequence.addr, align 8, !tbaa !5
  %249 = load ptr, ptr %gsequence_alt.addr, align 8, !tbaa !5
  %250 = load i32, ptr %roffset.addr, align 4, !tbaa !12
  %251 = load i32, ptr %goffset_anchor.addr, align 4, !tbaa !12
  %252 = load ptr, ptr %genome.addr, align 8, !tbaa !5
  %253 = load ptr, ptr %genomealt.addr, align 8, !tbaa !5
  %254 = load ptr, ptr %pairpool.addr, align 8, !tbaa !5
  %255 = load i32, ptr %chroffset.addr, align 4, !tbaa !12
  %256 = load i32, ptr %chrhigh.addr, align 4, !tbaa !12
  %257 = load i8, ptr %watsonp.addr, align 1, !tbaa !14
  %258 = load i32, ptr %genestrand.addr, align 4, !tbaa !12
  %259 = load ptr, ptr %dynprogindex.addr, align 8, !tbaa !5
  %260 = load i32, ptr %259, align 4, !tbaa !12
  %call74 = call ptr @traceback_local_16_upper(ptr noundef %238, ptr noundef %239, ptr noundef %240, ptr noundef %241, ptr noundef %242, ptr noundef %243, ptr noundef %244, ptr noundef %245, ptr noundef %bestr, ptr noundef %bestc, i32 noundef 0, ptr noundef %246, ptr noundef %247, ptr noundef %248, ptr noundef %249, i32 noundef %250, i32 noundef %251, ptr noundef %252, ptr noundef %253, ptr noundef %254, i8 noundef zeroext 0, i32 noundef %255, i32 noundef %256, i8 noundef zeroext %257, i32 noundef %258, i32 noundef %260)
  store ptr %call74, ptr %pairs, align 8, !tbaa !5
  br label %if.end77

if.else75:                                        ; preds = %if.end68
  %261 = load ptr, ptr %pairs, align 8, !tbaa !5
  %262 = load ptr, ptr %traceback_score.addr, align 8, !tbaa !5
  %263 = load ptr, ptr %nmatches.addr, align 8, !tbaa !5
  %264 = load ptr, ptr %nmismatches.addr, align 8, !tbaa !5
  %265 = load ptr, ptr %nopens.addr, align 8, !tbaa !5
  %266 = load ptr, ptr %nindels.addr, align 8, !tbaa !5
  %267 = load ptr, ptr %directions16_lower_nogap, align 8, !tbaa !5
  %268 = load ptr, ptr %directions16_lower_Egap, align 8, !tbaa !5
  %269 = load ptr, ptr %rsequence.addr, align 8, !tbaa !5
  %270 = load ptr, ptr %rsequenceuc.addr, align 8, !tbaa !5
  %271 = load ptr, ptr %gsequence.addr, align 8, !tbaa !5
  %272 = load ptr, ptr %gsequence_alt.addr, align 8, !tbaa !5
  %273 = load i32, ptr %roffset.addr, align 4, !tbaa !12
  %274 = load i32, ptr %goffset_anchor.addr, align 4, !tbaa !12
  %275 = load ptr, ptr %pairpool.addr, align 8, !tbaa !5
  %276 = load i32, ptr %genestrand.addr, align 4, !tbaa !12
  %277 = load ptr, ptr %dynprogindex.addr, align 8, !tbaa !5
  %278 = load i32, ptr %277, align 4, !tbaa !12
  %call76 = call ptr @traceback_local_16_lower(ptr noundef %261, ptr noundef %262, ptr noundef %263, ptr noundef %264, ptr noundef %265, ptr noundef %266, ptr noundef %267, ptr noundef %268, ptr noundef %bestr, ptr noundef %bestc, i32 noundef 0, ptr noundef %269, ptr noundef %270, ptr noundef %271, ptr noundef %272, i32 noundef %273, i32 noundef %274, ptr noundef %275, i32 noundef %276, i8 noundef zeroext 0, i32 noundef %278)
  store ptr %call76, ptr %pairs, align 8, !tbaa !5
  br label %if.end77

if.end77:                                         ; preds = %if.else75, %if.then73
  br label %if.end78

if.end78:                                         ; preds = %if.end77, %if.end60
  %279 = load ptr, ptr %traceback_score.addr, align 8, !tbaa !5
  %280 = load i32, ptr %279, align 4, !tbaa !12
  %281 = load i32, ptr %rlength.addr, align 4, !tbaa !12
  %mul = mul nsw i32 %281, 3
  %sub79 = sub nsw i32 %280, %mul
  %282 = load ptr, ptr %missscore.addr, align 8, !tbaa !5
  store i32 %sub79, ptr %282, align 4, !tbaa !12
  %283 = load ptr, ptr %pairs, align 8, !tbaa !5
  %call80 = call ptr @List_reverse(ptr noundef %283)
  store ptr %call80, ptr %pairs, align 8, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end78
  %284 = load ptr, ptr %pairs, align 8, !tbaa !5
  %cmp81 = icmp ne ptr %284, null
  br i1 %cmp81, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %285 = load ptr, ptr %pairs, align 8, !tbaa !5
  %call83 = call ptr @List_head(ptr noundef %285)
  store ptr %call83, ptr %pair, align 8, !tbaa !5
  %tobool = icmp ne ptr %call83, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %286 = load ptr, ptr %pair, align 8, !tbaa !5
  %comp = getelementptr inbounds %struct.Pair_T, ptr %286, i32 0, i32 10
  %287 = load i8, ptr %comp, align 1, !tbaa !20
  %conv84 = sext i8 %287 to i32
  %cmp85 = icmp eq i32 %conv84, 45
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %288 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp85, %land.rhs ]
  br i1 %288, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %289 = load ptr, ptr %pairs, align 8, !tbaa !5
  %call87 = call ptr @List_next(ptr noundef %289)
  store ptr %call87, ptr %pairs, align 8, !tbaa !5
  br label %while.cond, !llvm.loop !58

while.end:                                        ; preds = %land.end
  %290 = load ptr, ptr %dynprogindex.addr, align 8, !tbaa !5
  %291 = load i32, ptr %290, align 4, !tbaa !12
  %cmp88 = icmp sgt i32 %291, 0
  %292 = zext i1 %cmp88 to i64
  %cond = select i1 %cmp88, i32 1, i32 -1
  %293 = load ptr, ptr %dynprogindex.addr, align 8, !tbaa !5
  %294 = load i32, ptr %293, align 4, !tbaa !12
  %add = add nsw i32 %294, %cond
  store i32 %add, ptr %293, align 4, !tbaa !12
  %295 = load ptr, ptr %pairs, align 8, !tbaa !5
  store ptr %295, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then40, %if.then23, %if.then16
  call void @llvm.lifetime.end.p0(i64 8, ptr %directions16_lower_Egap) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %directions16_lower_nogap) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %directions16_upper_Egap) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %directions16_upper_nogap) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %matrix16_lower) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %matrix16_upper) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %directions8_lower_Egap) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %directions8_lower_nogap) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %directions8_upper_Egap) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %directions8_upper_nogap) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %matrix8_lower) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %matrix8_upper) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr %use8p) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %finalscore) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %extend) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %open) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %uband) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %lband) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %bestc) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %bestr) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %mismatchtype) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %pair) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %pairs) #5
  %296 = load ptr, ptr %retval, align 8
  ret ptr %296
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @Dynprog_make_splicejunction_5(ptr noundef %splicejunction, ptr noundef %splicejunction_alt, i32 noundef %splicecoord, i32 noundef %splicelength, i32 noundef %contlength, i32 noundef %far_splicetype, ptr noundef %genome, ptr noundef %genomealt, i8 noundef zeroext %watsonp) #1 {
entry:
  %retval = alloca i8, align 1
  %splicejunction.addr = alloca ptr, align 8
  %splicejunction_alt.addr = alloca ptr, align 8
  %splicecoord.addr = alloca i32, align 4
  %splicelength.addr = alloca i32, align 4
  %contlength.addr = alloca i32, align 4
  %far_splicetype.addr = alloca i32, align 4
  %genome.addr = alloca ptr, align 8
  %genomealt.addr = alloca ptr, align 8
  %watsonp.addr = alloca i8, align 1
  %distal = alloca ptr, align 8
  %distal_alt = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %splicejunction, ptr %splicejunction.addr, align 8, !tbaa !5
  store ptr %splicejunction_alt, ptr %splicejunction_alt.addr, align 8, !tbaa !5
  store i32 %splicecoord, ptr %splicecoord.addr, align 4, !tbaa !12
  store i32 %splicelength, ptr %splicelength.addr, align 4, !tbaa !12
  store i32 %contlength, ptr %contlength.addr, align 4, !tbaa !12
  store i32 %far_splicetype, ptr %far_splicetype.addr, align 4, !tbaa !14
  store ptr %genome, ptr %genome.addr, align 8, !tbaa !5
  store ptr %genomealt, ptr %genomealt.addr, align 8, !tbaa !5
  store i8 %watsonp, ptr %watsonp.addr, align 1, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 8, ptr %distal) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %distal_alt) #5
  %0 = load ptr, ptr %splicejunction.addr, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 0
  store ptr %arrayidx, ptr %distal, align 8, !tbaa !5
  %1 = load ptr, ptr %splicejunction_alt.addr, align 8, !tbaa !5
  %arrayidx1 = getelementptr inbounds i8, ptr %1, i64 0
  store ptr %arrayidx1, ptr %distal_alt, align 8, !tbaa !5
  %2 = load i32, ptr %far_splicetype.addr, align 4, !tbaa !14
  %cmp = icmp eq i32 %2, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %genome.addr, align 8, !tbaa !5
  %4 = load ptr, ptr %genomealt.addr, align 8, !tbaa !5
  %5 = load i32, ptr %splicecoord.addr, align 4, !tbaa !12
  %6 = load i32, ptr %splicelength.addr, align 4, !tbaa !12
  %7 = load ptr, ptr %distal, align 8, !tbaa !5
  %8 = load ptr, ptr %distal_alt, align 8, !tbaa !5
  call void @Genome_fill_buffer_blocks_noterm(ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7, ptr noundef %8)
  br label %if.end18

if.else:                                          ; preds = %entry
  %9 = load i32, ptr %far_splicetype.addr, align 4, !tbaa !14
  %cmp2 = icmp eq i32 %9, 2
  br i1 %cmp2, label %if.then3, label %if.else4

if.then3:                                         ; preds = %if.else
  %10 = load ptr, ptr %genome.addr, align 8, !tbaa !5
  %11 = load ptr, ptr %genomealt.addr, align 8, !tbaa !5
  %12 = load i32, ptr %splicecoord.addr, align 4, !tbaa !12
  %13 = load i32, ptr %splicelength.addr, align 4, !tbaa !12
  %14 = load ptr, ptr %distal, align 8, !tbaa !5
  %15 = load ptr, ptr %distal_alt, align 8, !tbaa !5
  call void @Genome_fill_buffer_blocks_noterm(ptr noundef %10, ptr noundef %11, i32 noundef %12, i32 noundef %13, ptr noundef %14, ptr noundef %15)
  br label %if.end17

if.else4:                                         ; preds = %if.else
  %16 = load i32, ptr %splicecoord.addr, align 4, !tbaa !12
  %17 = load i32, ptr %splicelength.addr, align 4, !tbaa !12
  %cmp5 = icmp ule i32 %16, %17
  br i1 %cmp5, label %if.then6, label %if.else7

if.then6:                                         ; preds = %if.else4
  store i8 0, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else7:                                         ; preds = %if.else4
  %18 = load i32, ptr %far_splicetype.addr, align 4, !tbaa !14
  %cmp8 = icmp eq i32 %18, 4
  br i1 %cmp8, label %if.then9, label %if.else10

if.then9:                                         ; preds = %if.else7
  %19 = load ptr, ptr %genome.addr, align 8, !tbaa !5
  %20 = load ptr, ptr %genomealt.addr, align 8, !tbaa !5
  %21 = load i32, ptr %splicecoord.addr, align 4, !tbaa !12
  %22 = load i32, ptr %splicelength.addr, align 4, !tbaa !12
  %sub = sub i32 %21, %22
  %23 = load i32, ptr %splicelength.addr, align 4, !tbaa !12
  %24 = load ptr, ptr %distal, align 8, !tbaa !5
  %25 = load ptr, ptr %distal_alt, align 8, !tbaa !5
  call void @Genome_fill_buffer_blocks_noterm(ptr noundef %19, ptr noundef %20, i32 noundef %sub, i32 noundef %23, ptr noundef %24, ptr noundef %25)
  br label %if.end15

if.else10:                                        ; preds = %if.else7
  %26 = load i32, ptr %far_splicetype.addr, align 4, !tbaa !14
  %cmp11 = icmp eq i32 %26, 1
  br i1 %cmp11, label %if.then12, label %if.else14

if.then12:                                        ; preds = %if.else10
  %27 = load ptr, ptr %genome.addr, align 8, !tbaa !5
  %28 = load ptr, ptr %genomealt.addr, align 8, !tbaa !5
  %29 = load i32, ptr %splicecoord.addr, align 4, !tbaa !12
  %30 = load i32, ptr %splicelength.addr, align 4, !tbaa !12
  %sub13 = sub i32 %29, %30
  %31 = load i32, ptr %splicelength.addr, align 4, !tbaa !12
  %32 = load ptr, ptr %distal, align 8, !tbaa !5
  %33 = load ptr, ptr %distal_alt, align 8, !tbaa !5
  call void @Genome_fill_buffer_blocks_noterm(ptr noundef %27, ptr noundef %28, i32 noundef %sub13, i32 noundef %31, ptr noundef %32, ptr noundef %33)
  br label %if.end

if.else14:                                        ; preds = %if.else10
  %34 = load ptr, ptr @stderr, align 8, !tbaa !5
  %35 = load i32, ptr %far_splicetype.addr, align 4, !tbaa !14
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %34, ptr noundef @.str.2, i32 noundef %35)
  call void @abort() #6
  unreachable

if.end:                                           ; preds = %if.then12
  br label %if.end15

if.end15:                                         ; preds = %if.end, %if.then9
  br label %if.end16

if.end16:                                         ; preds = %if.end15
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then3
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then
  %36 = load i8, ptr %watsonp.addr, align 1, !tbaa !14
  %conv = zext i8 %36 to i32
  %cmp19 = icmp eq i32 %conv, 0
  br i1 %cmp19, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end18
  %37 = load ptr, ptr %distal, align 8, !tbaa !5
  %38 = load i32, ptr %splicelength.addr, align 4, !tbaa !12
  call void @make_complement_inplace(ptr noundef %37, i32 noundef %38)
  %39 = load ptr, ptr %distal_alt, align 8, !tbaa !5
  %40 = load i32, ptr %splicelength.addr, align 4, !tbaa !12
  call void @make_complement_inplace(ptr noundef %39, i32 noundef %40)
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end18
  store i8 1, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.then6
  call void @llvm.lifetime.end.p0(i64 8, ptr %distal_alt) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %distal) #5
  %41 = load i8, ptr %retval, align 1
  ret i8 %41
}

declare void @Genome_fill_buffer_blocks_noterm(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal void @make_complement_inplace(ptr noundef %sequence, i32 noundef %length) #1 {
entry:
  %sequence.addr = alloca ptr, align 8
  %length.addr = alloca i32, align 4
  %temp = alloca i8, align 1
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store ptr %sequence, ptr %sequence.addr, align 8, !tbaa !5
  store i32 %length, ptr %length.addr, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 1, ptr %temp) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #5
  store i32 0, ptr %i, align 4, !tbaa !12
  %0 = load i32, ptr %length.addr, align 4, !tbaa !12
  %sub = sub i32 %0, 1
  store i32 %sub, ptr %j, align 4, !tbaa !12
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4, !tbaa !12
  %2 = load i32, ptr %length.addr, align 4, !tbaa !12
  %div = udiv i32 %2, 2
  %cmp = icmp ult i32 %1, %div
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %sequence.addr, align 8, !tbaa !5
  %4 = load i32, ptr %i, align 4, !tbaa !12
  %idxprom = zext i32 %4 to i64
  %arrayidx = getelementptr inbounds i8, ptr %3, i64 %idxprom
  %5 = load i8, ptr %arrayidx, align 1, !tbaa !14
  %conv = sext i8 %5 to i32
  %idxprom1 = sext i32 %conv to i64
  %arrayidx2 = getelementptr inbounds [128 x i8], ptr @complCode, i64 0, i64 %idxprom1
  %6 = load i8, ptr %arrayidx2, align 1, !tbaa !14
  store i8 %6, ptr %temp, align 1, !tbaa !14
  %7 = load ptr, ptr %sequence.addr, align 8, !tbaa !5
  %8 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom3 = zext i32 %8 to i64
  %arrayidx4 = getelementptr inbounds i8, ptr %7, i64 %idxprom3
  %9 = load i8, ptr %arrayidx4, align 1, !tbaa !14
  %conv5 = sext i8 %9 to i32
  %idxprom6 = sext i32 %conv5 to i64
  %arrayidx7 = getelementptr inbounds [128 x i8], ptr @complCode, i64 0, i64 %idxprom6
  %10 = load i8, ptr %arrayidx7, align 1, !tbaa !14
  %11 = load ptr, ptr %sequence.addr, align 8, !tbaa !5
  %12 = load i32, ptr %i, align 4, !tbaa !12
  %idxprom8 = zext i32 %12 to i64
  %arrayidx9 = getelementptr inbounds i8, ptr %11, i64 %idxprom8
  store i8 %10, ptr %arrayidx9, align 1, !tbaa !14
  %13 = load i8, ptr %temp, align 1, !tbaa !14
  %14 = load ptr, ptr %sequence.addr, align 8, !tbaa !5
  %15 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom10 = zext i32 %15 to i64
  %arrayidx11 = getelementptr inbounds i8, ptr %14, i64 %idxprom10
  store i8 %13, ptr %arrayidx11, align 1, !tbaa !14
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, ptr %i, align 4, !tbaa !12
  %inc = add i32 %16, 1
  store i32 %inc, ptr %i, align 4, !tbaa !12
  %17 = load i32, ptr %j, align 4, !tbaa !12
  %dec = add i32 %17, -1
  store i32 %dec, ptr %j, align 4, !tbaa !12
  br label %for.cond, !llvm.loop !59

for.end:                                          ; preds = %for.cond
  %18 = load i32, ptr %i, align 4, !tbaa !12
  %19 = load i32, ptr %j, align 4, !tbaa !12
  %cmp12 = icmp eq i32 %18, %19
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %20 = load ptr, ptr %sequence.addr, align 8, !tbaa !5
  %21 = load i32, ptr %i, align 4, !tbaa !12
  %idxprom14 = zext i32 %21 to i64
  %arrayidx15 = getelementptr inbounds i8, ptr %20, i64 %idxprom14
  %22 = load i8, ptr %arrayidx15, align 1, !tbaa !14
  %conv16 = sext i8 %22 to i32
  %idxprom17 = sext i32 %conv16 to i64
  %arrayidx18 = getelementptr inbounds [128 x i8], ptr @complCode, i64 0, i64 %idxprom17
  %23 = load i8, ptr %arrayidx18, align 1, !tbaa !14
  %24 = load ptr, ptr %sequence.addr, align 8, !tbaa !5
  %25 = load i32, ptr %i, align 4, !tbaa !12
  %idxprom19 = zext i32 %25 to i64
  %arrayidx20 = getelementptr inbounds i8, ptr %24, i64 %idxprom19
  store i8 %23, ptr %arrayidx20, align 1, !tbaa !14
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr %temp) #5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @Dynprog_make_splicejunction_3(ptr noundef %splicejunction, ptr noundef %splicejunction_alt, i32 noundef %splicecoord, i32 noundef %splicelength, i32 noundef %contlength, i32 noundef %far_splicetype, ptr noundef %genome, ptr noundef %genomealt, i8 noundef zeroext %watsonp) #1 {
entry:
  %retval = alloca i8, align 1
  %splicejunction.addr = alloca ptr, align 8
  %splicejunction_alt.addr = alloca ptr, align 8
  %splicecoord.addr = alloca i32, align 4
  %splicelength.addr = alloca i32, align 4
  %contlength.addr = alloca i32, align 4
  %far_splicetype.addr = alloca i32, align 4
  %genome.addr = alloca ptr, align 8
  %genomealt.addr = alloca ptr, align 8
  %watsonp.addr = alloca i8, align 1
  %distal = alloca ptr, align 8
  %distal_alt = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %splicejunction, ptr %splicejunction.addr, align 8, !tbaa !5
  store ptr %splicejunction_alt, ptr %splicejunction_alt.addr, align 8, !tbaa !5
  store i32 %splicecoord, ptr %splicecoord.addr, align 4, !tbaa !12
  store i32 %splicelength, ptr %splicelength.addr, align 4, !tbaa !12
  store i32 %contlength, ptr %contlength.addr, align 4, !tbaa !12
  store i32 %far_splicetype, ptr %far_splicetype.addr, align 4, !tbaa !14
  store ptr %genome, ptr %genome.addr, align 8, !tbaa !5
  store ptr %genomealt, ptr %genomealt.addr, align 8, !tbaa !5
  store i8 %watsonp, ptr %watsonp.addr, align 1, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 8, ptr %distal) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %distal_alt) #5
  %0 = load ptr, ptr %splicejunction.addr, align 8, !tbaa !5
  %1 = load i32, ptr %contlength.addr, align 4, !tbaa !12
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 %idxprom
  store ptr %arrayidx, ptr %distal, align 8, !tbaa !5
  %2 = load ptr, ptr %splicejunction_alt.addr, align 8, !tbaa !5
  %3 = load i32, ptr %contlength.addr, align 4, !tbaa !12
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds i8, ptr %2, i64 %idxprom1
  store ptr %arrayidx2, ptr %distal_alt, align 8, !tbaa !5
  %4 = load i32, ptr %far_splicetype.addr, align 4, !tbaa !14
  %cmp = icmp eq i32 %4, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %genome.addr, align 8, !tbaa !5
  %6 = load ptr, ptr %genomealt.addr, align 8, !tbaa !5
  %7 = load i32, ptr %splicecoord.addr, align 4, !tbaa !12
  %8 = load i32, ptr %splicelength.addr, align 4, !tbaa !12
  %9 = load ptr, ptr %distal, align 8, !tbaa !5
  %10 = load ptr, ptr %distal_alt, align 8, !tbaa !5
  call void @Genome_fill_buffer_blocks_noterm(ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef %8, ptr noundef %9, ptr noundef %10)
  br label %if.end19

if.else:                                          ; preds = %entry
  %11 = load i32, ptr %far_splicetype.addr, align 4, !tbaa !14
  %cmp3 = icmp eq i32 %11, 3
  br i1 %cmp3, label %if.then4, label %if.else5

if.then4:                                         ; preds = %if.else
  %12 = load ptr, ptr %genome.addr, align 8, !tbaa !5
  %13 = load ptr, ptr %genomealt.addr, align 8, !tbaa !5
  %14 = load i32, ptr %splicecoord.addr, align 4, !tbaa !12
  %15 = load i32, ptr %splicelength.addr, align 4, !tbaa !12
  %16 = load ptr, ptr %distal, align 8, !tbaa !5
  %17 = load ptr, ptr %distal_alt, align 8, !tbaa !5
  call void @Genome_fill_buffer_blocks_noterm(ptr noundef %12, ptr noundef %13, i32 noundef %14, i32 noundef %15, ptr noundef %16, ptr noundef %17)
  br label %if.end18

if.else5:                                         ; preds = %if.else
  %18 = load i32, ptr %splicecoord.addr, align 4, !tbaa !12
  %19 = load i32, ptr %splicelength.addr, align 4, !tbaa !12
  %cmp6 = icmp ule i32 %18, %19
  br i1 %cmp6, label %if.then7, label %if.else8

if.then7:                                         ; preds = %if.else5
  store i8 0, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else8:                                         ; preds = %if.else5
  %20 = load i32, ptr %far_splicetype.addr, align 4, !tbaa !14
  %cmp9 = icmp eq i32 %20, 1
  br i1 %cmp9, label %if.then10, label %if.else11

if.then10:                                        ; preds = %if.else8
  %21 = load ptr, ptr %genome.addr, align 8, !tbaa !5
  %22 = load ptr, ptr %genomealt.addr, align 8, !tbaa !5
  %23 = load i32, ptr %splicecoord.addr, align 4, !tbaa !12
  %24 = load i32, ptr %splicelength.addr, align 4, !tbaa !12
  %sub = sub i32 %23, %24
  %25 = load i32, ptr %splicelength.addr, align 4, !tbaa !12
  %26 = load ptr, ptr %distal, align 8, !tbaa !5
  %27 = load ptr, ptr %distal_alt, align 8, !tbaa !5
  call void @Genome_fill_buffer_blocks_noterm(ptr noundef %21, ptr noundef %22, i32 noundef %sub, i32 noundef %25, ptr noundef %26, ptr noundef %27)
  br label %if.end16

if.else11:                                        ; preds = %if.else8
  %28 = load i32, ptr %far_splicetype.addr, align 4, !tbaa !14
  %cmp12 = icmp eq i32 %28, 4
  br i1 %cmp12, label %if.then13, label %if.else15

if.then13:                                        ; preds = %if.else11
  %29 = load ptr, ptr %genome.addr, align 8, !tbaa !5
  %30 = load ptr, ptr %genomealt.addr, align 8, !tbaa !5
  %31 = load i32, ptr %splicecoord.addr, align 4, !tbaa !12
  %32 = load i32, ptr %splicelength.addr, align 4, !tbaa !12
  %sub14 = sub i32 %31, %32
  %33 = load i32, ptr %splicelength.addr, align 4, !tbaa !12
  %34 = load ptr, ptr %distal, align 8, !tbaa !5
  %35 = load ptr, ptr %distal_alt, align 8, !tbaa !5
  call void @Genome_fill_buffer_blocks_noterm(ptr noundef %29, ptr noundef %30, i32 noundef %sub14, i32 noundef %33, ptr noundef %34, ptr noundef %35)
  br label %if.end

if.else15:                                        ; preds = %if.else11
  %36 = load ptr, ptr @stderr, align 8, !tbaa !5
  %37 = load i32, ptr %far_splicetype.addr, align 4, !tbaa !14
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %36, ptr noundef @.str.2, i32 noundef %37)
  call void @abort() #6
  unreachable

if.end:                                           ; preds = %if.then13
  br label %if.end16

if.end16:                                         ; preds = %if.end, %if.then10
  br label %if.end17

if.end17:                                         ; preds = %if.end16
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then4
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.then
  %38 = load i8, ptr %watsonp.addr, align 1, !tbaa !14
  %conv = zext i8 %38 to i32
  %cmp20 = icmp eq i32 %conv, 0
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end19
  %39 = load ptr, ptr %distal, align 8, !tbaa !5
  %40 = load i32, ptr %splicelength.addr, align 4, !tbaa !12
  call void @make_complement_inplace(ptr noundef %39, i32 noundef %40)
  %41 = load ptr, ptr %distal_alt, align 8, !tbaa !5
  %42 = load i32, ptr %splicelength.addr, align 4, !tbaa !12
  call void @make_complement_inplace(ptr noundef %41, i32 noundef %42)
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.end19
  store i8 1, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.then7
  call void @llvm.lifetime.end.p0(i64 8, ptr %distal_alt) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %distal) #5
  %43 = load i8, ptr %retval, align 1
  ret i8 %43
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Dynprog_end5_known(ptr noundef %knownsplicep, ptr noundef %dynprogindex, ptr noundef %traceback_score, ptr noundef %ambig_end_length, ptr noundef %ambig_splicetype, ptr noundef %nmatches, ptr noundef %nmismatches, ptr noundef %nopens, ptr noundef %nindels, ptr noundef %dynprog, ptr noundef %rev_rsequence, ptr noundef %rev_rsequenceuc, i32 noundef %rlength, i32 noundef %glength, i32 noundef %rev_roffset, i32 noundef %rev_goffset, i32 noundef %chroffset, i32 noundef %chrhigh, i32 noundef %knownsplice_limit_low, i32 noundef %knownsplice_limit_high, i32 noundef %cdna_direction, i8 noundef zeroext %watsonp, i32 noundef %genestrand, i8 noundef zeroext %jump_late_p, ptr noundef %genome, ptr noundef %genomealt, ptr noundef %pairpool, i32 noundef %extraband_end, double noundef %defect_rate) #1 {
entry:
  %retval = alloca ptr, align 8
  %knownsplicep.addr = alloca ptr, align 8
  %dynprogindex.addr = alloca ptr, align 8
  %traceback_score.addr = alloca ptr, align 8
  %ambig_end_length.addr = alloca ptr, align 8
  %ambig_splicetype.addr = alloca ptr, align 8
  %nmatches.addr = alloca ptr, align 8
  %nmismatches.addr = alloca ptr, align 8
  %nopens.addr = alloca ptr, align 8
  %nindels.addr = alloca ptr, align 8
  %dynprog.addr = alloca ptr, align 8
  %rev_rsequence.addr = alloca ptr, align 8
  %rev_rsequenceuc.addr = alloca ptr, align 8
  %rlength.addr = alloca i32, align 4
  %glength.addr = alloca i32, align 4
  %rev_roffset.addr = alloca i32, align 4
  %rev_goffset.addr = alloca i32, align 4
  %chroffset.addr = alloca i32, align 4
  %chrhigh.addr = alloca i32, align 4
  %knownsplice_limit_low.addr = alloca i32, align 4
  %knownsplice_limit_high.addr = alloca i32, align 4
  %cdna_direction.addr = alloca i32, align 4
  %watsonp.addr = alloca i8, align 1
  %genestrand.addr = alloca i32, align 4
  %jump_late_p.addr = alloca i8, align 1
  %genome.addr = alloca ptr, align 8
  %genomealt.addr = alloca ptr, align 8
  %pairpool.addr = alloca ptr, align 8
  %extraband_end.addr = alloca i32, align 4
  %defect_rate.addr = alloca double, align 8
  %best_pairs = alloca ptr, align 8
  %orig_pairs = alloca ptr, align 8
  %pair = alloca ptr, align 8
  %low = alloca i32, align 4
  %high = alloca i32, align 4
  %far_limit_low = alloca i32, align 4
  %far_limit_high = alloca i32, align 4
  %anchor_splicetype = alloca i32, align 4
  %far_splicetype = alloca i32, align 4
  %contlength = alloca i32, align 4
  %splicelength = alloca i32, align 4
  %endlength = alloca i32, align 4
  %splicejunction = alloca ptr, align 8
  %splicejunction_alt = alloca ptr, align 8
  %jstart = alloca i32, align 4
  %j = alloca i32, align 4
  %orig_score = alloca i32, align 4
  %threshold_miss_score = alloca i32, align 4
  %perfect_score = alloca i32, align 4
  %obsmax_penalty = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %knownsplicep, ptr %knownsplicep.addr, align 8, !tbaa !5
  store ptr %dynprogindex, ptr %dynprogindex.addr, align 8, !tbaa !5
  store ptr %traceback_score, ptr %traceback_score.addr, align 8, !tbaa !5
  store ptr %ambig_end_length, ptr %ambig_end_length.addr, align 8, !tbaa !5
  store ptr %ambig_splicetype, ptr %ambig_splicetype.addr, align 8, !tbaa !5
  store ptr %nmatches, ptr %nmatches.addr, align 8, !tbaa !5
  store ptr %nmismatches, ptr %nmismatches.addr, align 8, !tbaa !5
  store ptr %nopens, ptr %nopens.addr, align 8, !tbaa !5
  store ptr %nindels, ptr %nindels.addr, align 8, !tbaa !5
  store ptr %dynprog, ptr %dynprog.addr, align 8, !tbaa !5
  store ptr %rev_rsequence, ptr %rev_rsequence.addr, align 8, !tbaa !5
  store ptr %rev_rsequenceuc, ptr %rev_rsequenceuc.addr, align 8, !tbaa !5
  store i32 %rlength, ptr %rlength.addr, align 4, !tbaa !12
  store i32 %glength, ptr %glength.addr, align 4, !tbaa !12
  store i32 %rev_roffset, ptr %rev_roffset.addr, align 4, !tbaa !12
  store i32 %rev_goffset, ptr %rev_goffset.addr, align 4, !tbaa !12
  store i32 %chroffset, ptr %chroffset.addr, align 4, !tbaa !12
  store i32 %chrhigh, ptr %chrhigh.addr, align 4, !tbaa !12
  store i32 %knownsplice_limit_low, ptr %knownsplice_limit_low.addr, align 4, !tbaa !12
  store i32 %knownsplice_limit_high, ptr %knownsplice_limit_high.addr, align 4, !tbaa !12
  store i32 %cdna_direction, ptr %cdna_direction.addr, align 4, !tbaa !12
  store i8 %watsonp, ptr %watsonp.addr, align 1, !tbaa !14
  store i32 %genestrand, ptr %genestrand.addr, align 4, !tbaa !12
  store i8 %jump_late_p, ptr %jump_late_p.addr, align 1, !tbaa !14
  store ptr %genome, ptr %genome.addr, align 8, !tbaa !5
  store ptr %genomealt, ptr %genomealt.addr, align 8, !tbaa !5
  store ptr %pairpool, ptr %pairpool.addr, align 8, !tbaa !5
  store i32 %extraband_end, ptr %extraband_end.addr, align 4, !tbaa !12
  store double %defect_rate, ptr %defect_rate.addr, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(i64 8, ptr %best_pairs) #5
  store ptr null, ptr %best_pairs, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %orig_pairs) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %pair) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %low) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %high) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %far_limit_low) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %far_limit_high) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %anchor_splicetype) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %far_splicetype) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %contlength) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %splicelength) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %endlength) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %splicejunction) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %splicejunction_alt) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %jstart) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %orig_score) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %threshold_miss_score) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %perfect_score) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %obsmax_penalty) #5
  %0 = load ptr, ptr %ambig_end_length.addr, align 8, !tbaa !5
  store i32 0, ptr %0, align 4, !tbaa !12
  %1 = load i32, ptr %rlength.addr, align 4, !tbaa !12
  %cmp = icmp sle i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %traceback_score.addr, align 8, !tbaa !5
  store i32 0, ptr %2, align 4, !tbaa !12
  %3 = load ptr, ptr %knownsplicep.addr, align 8, !tbaa !5
  store i8 0, ptr %3, align 1, !tbaa !14
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %cmp1 = icmp sle i32 %4, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %5 = load ptr, ptr %traceback_score.addr, align 8, !tbaa !5
  store i32 0, ptr %5, align 4, !tbaa !12
  %6 = load ptr, ptr %knownsplicep.addr, align 8, !tbaa !5
  store i8 0, ptr %6, align 1, !tbaa !14
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %7 = load i32, ptr %rlength.addr, align 4, !tbaa !12
  %mul = mul nsw i32 %7, 3
  store i32 %mul, ptr %perfect_score, align 4, !tbaa !12
  %8 = load ptr, ptr %dynprogindex.addr, align 8, !tbaa !5
  %9 = load ptr, ptr %traceback_score.addr, align 8, !tbaa !5
  %10 = load ptr, ptr %nmatches.addr, align 8, !tbaa !5
  %11 = load ptr, ptr %nmismatches.addr, align 8, !tbaa !5
  %12 = load ptr, ptr %nopens.addr, align 8, !tbaa !5
  %13 = load ptr, ptr %nindels.addr, align 8, !tbaa !5
  %14 = load ptr, ptr %dynprog.addr, align 8, !tbaa !5
  %15 = load ptr, ptr %rev_rsequence.addr, align 8, !tbaa !5
  %16 = load ptr, ptr %rev_rsequenceuc.addr, align 8, !tbaa !5
  %17 = load i32, ptr %rlength.addr, align 4, !tbaa !12
  %18 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %19 = load i32, ptr %rev_roffset.addr, align 4, !tbaa !12
  %20 = load i32, ptr %rev_goffset.addr, align 4, !tbaa !12
  %21 = load i32, ptr %chroffset.addr, align 4, !tbaa !12
  %22 = load i32, ptr %chrhigh.addr, align 4, !tbaa !12
  %23 = load i8, ptr %watsonp.addr, align 1, !tbaa !14
  %24 = load i32, ptr %genestrand.addr, align 4, !tbaa !12
  %25 = load i8, ptr %jump_late_p.addr, align 1, !tbaa !14
  %26 = load ptr, ptr %genome.addr, align 8, !tbaa !5
  %27 = load ptr, ptr %genomealt.addr, align 8, !tbaa !5
  %28 = load ptr, ptr %pairpool.addr, align 8, !tbaa !5
  %29 = load i32, ptr %extraband_end.addr, align 4, !tbaa !12
  %30 = load double, ptr %defect_rate.addr, align 8, !tbaa !15
  %call = call ptr @Dynprog_end5_gap(ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef %15, ptr noundef %16, i32 noundef %17, i32 noundef %18, i32 noundef %19, i32 noundef %20, i32 noundef %21, i32 noundef %22, i8 noundef zeroext %23, i32 noundef %24, i8 noundef zeroext %25, ptr noundef %26, ptr noundef %27, ptr noundef %28, i32 noundef %29, double noundef %30, i32 noundef 2, i8 noundef zeroext 1)
  store ptr %call, ptr %best_pairs, align 8, !tbaa !5
  %31 = load ptr, ptr %traceback_score.addr, align 8, !tbaa !5
  %32 = load i32, ptr %31, align 4, !tbaa !12
  %cmp4 = icmp sle i32 %32, 0
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end3
  store i32 0, ptr %orig_score, align 4, !tbaa !12
  store ptr null, ptr %best_pairs, align 8, !tbaa !5
  store ptr null, ptr %orig_pairs, align 8, !tbaa !5
  br label %if.end6

if.else:                                          ; preds = %if.end3
  %33 = load ptr, ptr %traceback_score.addr, align 8, !tbaa !5
  %34 = load i32, ptr %33, align 4, !tbaa !12
  store i32 %34, ptr %orig_score, align 4, !tbaa !12
  %35 = load ptr, ptr %best_pairs, align 8, !tbaa !5
  store ptr %35, ptr %orig_pairs, align 8, !tbaa !5
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then5
  %36 = load i32, ptr %orig_score, align 4, !tbaa !12
  %37 = load i32, ptr %perfect_score, align 4, !tbaa !12
  %sub = sub nsw i32 %36, %37
  store i32 %sub, ptr %threshold_miss_score, align 4, !tbaa !12
  %38 = load i32, ptr %threshold_miss_score, align 4, !tbaa !12
  %cmp7 = icmp slt i32 %38, -6
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end6
  store i32 -6, ptr %threshold_miss_score, align 4, !tbaa !12
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end6
  %39 = load ptr, ptr %knownsplicep.addr, align 8, !tbaa !5
  store i8 0, ptr %39, align 1, !tbaa !14
  %40 = load i32, ptr %threshold_miss_score, align 4, !tbaa !12
  %cmp10 = icmp slt i32 %40, 0
  br i1 %cmp10, label %land.lhs.true, label %if.end96

land.lhs.true:                                    ; preds = %if.end9
  %41 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %cmp11 = icmp sgt i32 %41, 0
  br i1 %cmp11, label %if.then12, label %if.end96

if.then12:                                        ; preds = %land.lhs.true
  %42 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %add = add nsw i32 %42, 1
  %conv = sext i32 %add to i64
  %mul13 = mul i64 %conv, 1
  %call14 = call ptr @Mem_alloc(i64 noundef %mul13, ptr noundef @.str, i32 noundef 2831)
  store ptr %call14, ptr %splicejunction, align 8, !tbaa !5
  %43 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %add15 = add nsw i32 %43, 1
  %conv16 = sext i32 %add15 to i64
  %mul17 = mul i64 %conv16, 1
  %call18 = call ptr @Mem_alloc(i64 noundef %mul17, ptr noundef @.str, i32 noundef 2832)
  store ptr %call18, ptr %splicejunction_alt, align 8, !tbaa !5
  %44 = load i32, ptr %rlength.addr, align 4, !tbaa !12
  store i32 %44, ptr %endlength, align 4, !tbaa !12
  %45 = load i8, ptr %watsonp.addr, align 1, !tbaa !14
  %conv19 = zext i8 %45 to i32
  %cmp20 = icmp eq i32 %conv19, 1
  br i1 %cmp20, label %if.then22, label %if.else33

if.then22:                                        ; preds = %if.then12
  %46 = load i32, ptr %chroffset.addr, align 4, !tbaa !12
  %47 = load i32, ptr %rev_goffset.addr, align 4, !tbaa !12
  %add23 = add i32 %46, %47
  %48 = load i32, ptr %endlength, align 4, !tbaa !12
  %sub24 = sub i32 %add23, %48
  %add25 = add i32 %sub24, 2
  store i32 %add25, ptr %low, align 4, !tbaa !12
  %49 = load i32, ptr %chroffset.addr, align 4, !tbaa !12
  %50 = load i32, ptr %rev_goffset.addr, align 4, !tbaa !12
  %add26 = add i32 %49, %50
  %add27 = add i32 %add26, 1
  store i32 %add27, ptr %high, align 4, !tbaa !12
  %51 = load i32, ptr %cdna_direction.addr, align 4, !tbaa !12
  %cmp28 = icmp sgt i32 %51, 0
  br i1 %cmp28, label %if.then30, label %if.else31

if.then30:                                        ; preds = %if.then22
  store i32 3, ptr %anchor_splicetype, align 4, !tbaa !14
  store i32 1, ptr %far_splicetype, align 4, !tbaa !14
  br label %if.end32

if.else31:                                        ; preds = %if.then22
  store i32 2, ptr %anchor_splicetype, align 4, !tbaa !14
  store i32 4, ptr %far_splicetype, align 4, !tbaa !14
  br label %if.end32

if.end32:                                         ; preds = %if.else31, %if.then30
  br label %if.end43

if.else33:                                        ; preds = %if.then12
  %52 = load i32, ptr %chrhigh.addr, align 4, !tbaa !12
  %53 = load i32, ptr %rev_goffset.addr, align 4, !tbaa !12
  %sub34 = sub i32 %52, %53
  store i32 %sub34, ptr %low, align 4, !tbaa !12
  %54 = load i32, ptr %chrhigh.addr, align 4, !tbaa !12
  %55 = load i32, ptr %rev_goffset.addr, align 4, !tbaa !12
  %56 = load i32, ptr %endlength, align 4, !tbaa !12
  %sub35 = sub nsw i32 %55, %56
  %sub36 = sub i32 %54, %sub35
  %sub37 = sub i32 %sub36, 1
  store i32 %sub37, ptr %high, align 4, !tbaa !12
  %57 = load i32, ptr %cdna_direction.addr, align 4, !tbaa !12
  %cmp38 = icmp sgt i32 %57, 0
  br i1 %cmp38, label %if.then40, label %if.else41

if.then40:                                        ; preds = %if.else33
  store i32 4, ptr %anchor_splicetype, align 4, !tbaa !14
  store i32 2, ptr %far_splicetype, align 4, !tbaa !14
  br label %if.end42

if.else41:                                        ; preds = %if.else33
  store i32 1, ptr %anchor_splicetype, align 4, !tbaa !14
  store i32 3, ptr %far_splicetype, align 4, !tbaa !14
  br label %if.end42

if.end42:                                         ; preds = %if.else41, %if.then40
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %if.end32
  %58 = load i32, ptr %knownsplice_limit_low.addr, align 4, !tbaa !12
  store i32 %58, ptr %far_limit_low, align 4, !tbaa !12
  %59 = load i32, ptr %knownsplice_limit_high.addr, align 4, !tbaa !12
  store i32 %59, ptr %far_limit_high, align 4, !tbaa !12
  %60 = load i32, ptr @nsplicesites, align 4, !tbaa !12
  %61 = load ptr, ptr @splicesites, align 8, !tbaa !5
  %62 = load i32, ptr %low, align 4, !tbaa !12
  %call44 = call i32 @binary_search(i32 noundef 0, i32 noundef %60, ptr noundef %61, i32 noundef %62)
  store i32 %call44, ptr %jstart, align 4, !tbaa !12
  store i32 %call44, ptr %j, align 4, !tbaa !12
  br label %while.cond

while.cond:                                       ; preds = %if.end95, %if.end43
  %63 = load i32, ptr %j, align 4, !tbaa !12
  %64 = load i32, ptr @nsplicesites, align 4, !tbaa !12
  %cmp45 = icmp slt i32 %63, %64
  br i1 %cmp45, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %65 = load ptr, ptr @splicesites, align 8, !tbaa !5
  %66 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom = sext i32 %66 to i64
  %arrayidx = getelementptr inbounds i32, ptr %65, i64 %idxprom
  %67 = load i32, ptr %arrayidx, align 4, !tbaa !12
  %68 = load i32, ptr %high, align 4, !tbaa !12
  %cmp47 = icmp ule i32 %67, %68
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %69 = phi i1 [ false, %while.cond ], [ %cmp47, %land.rhs ]
  br i1 %69, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %70 = load ptr, ptr @splicetypes, align 8, !tbaa !5
  %71 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom49 = sext i32 %71 to i64
  %arrayidx50 = getelementptr inbounds i32, ptr %70, i64 %idxprom49
  %72 = load i32, ptr %arrayidx50, align 4, !tbaa !14
  %73 = load i32, ptr %anchor_splicetype, align 4, !tbaa !14
  %cmp51 = icmp eq i32 %72, %73
  br i1 %cmp51, label %if.then53, label %if.end95

if.then53:                                        ; preds = %while.body
  %74 = load i8, ptr %watsonp.addr, align 1, !tbaa !14
  %conv54 = zext i8 %74 to i32
  %cmp55 = icmp eq i32 %conv54, 1
  br i1 %cmp55, label %if.then57, label %if.else61

if.then57:                                        ; preds = %if.then53
  %75 = load i32, ptr %high, align 4, !tbaa !12
  %76 = load ptr, ptr @splicesites, align 8, !tbaa !5
  %77 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom58 = sext i32 %77 to i64
  %arrayidx59 = getelementptr inbounds i32, ptr %76, i64 %idxprom58
  %78 = load i32, ptr %arrayidx59, align 4, !tbaa !12
  %sub60 = sub i32 %75, %78
  store i32 %sub60, ptr %contlength, align 4, !tbaa !12
  br label %if.end65

if.else61:                                        ; preds = %if.then53
  %79 = load ptr, ptr @splicesites, align 8, !tbaa !5
  %80 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom62 = sext i32 %80 to i64
  %arrayidx63 = getelementptr inbounds i32, ptr %79, i64 %idxprom62
  %81 = load i32, ptr %arrayidx63, align 4, !tbaa !12
  %82 = load i32, ptr %low, align 4, !tbaa !12
  %sub64 = sub i32 %81, %82
  store i32 %sub64, ptr %contlength, align 4, !tbaa !12
  br label %if.end65

if.end65:                                         ; preds = %if.else61, %if.then57
  %83 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %84 = load i32, ptr %contlength, align 4, !tbaa !12
  %sub66 = sub nsw i32 %83, %84
  store i32 %sub66, ptr %splicelength, align 4, !tbaa !12
  %85 = load ptr, ptr %splicejunction, align 8, !tbaa !5
  %86 = load ptr, ptr %splicejunction_alt, align 8, !tbaa !5
  %87 = load ptr, ptr @splicesites, align 8, !tbaa !5
  %88 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom67 = sext i32 %88 to i64
  %arrayidx68 = getelementptr inbounds i32, ptr %87, i64 %idxprom67
  %89 = load i32, ptr %arrayidx68, align 4, !tbaa !12
  %90 = load i32, ptr %splicelength, align 4, !tbaa !12
  %91 = load i32, ptr %contlength, align 4, !tbaa !12
  %92 = load i32, ptr %anchor_splicetype, align 4, !tbaa !14
  %93 = load ptr, ptr %genome.addr, align 8, !tbaa !5
  %94 = load ptr, ptr %genomealt.addr, align 8, !tbaa !5
  %95 = load i8, ptr %watsonp.addr, align 1, !tbaa !14
  call void @make_contjunction_5(ptr noundef %85, ptr noundef %86, i32 noundef %89, i32 noundef %90, i32 noundef %91, i32 noundef %92, ptr noundef %93, ptr noundef %94, i8 noundef zeroext %95)
  %96 = load i8, ptr %watsonp.addr, align 1, !tbaa !14
  %tobool = icmp ne i8 %96, 0
  br i1 %tobool, label %if.then69, label %if.else72

if.then69:                                        ; preds = %if.end65
  %97 = load ptr, ptr @splicesites, align 8, !tbaa !5
  %98 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom70 = sext i32 %98 to i64
  %arrayidx71 = getelementptr inbounds i32, ptr %97, i64 %idxprom70
  %99 = load i32, ptr %arrayidx71, align 4, !tbaa !12
  store i32 %99, ptr %far_limit_high, align 4, !tbaa !12
  br label %if.end75

if.else72:                                        ; preds = %if.end65
  %100 = load ptr, ptr @splicesites, align 8, !tbaa !5
  %101 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom73 = sext i32 %101 to i64
  %arrayidx74 = getelementptr inbounds i32, ptr %100, i64 %idxprom73
  %102 = load i32, ptr %arrayidx74, align 4, !tbaa !12
  store i32 %102, ptr %far_limit_low, align 4, !tbaa !12
  br label %if.end75

if.end75:                                         ; preds = %if.else72, %if.then69
  store i32 0, ptr %obsmax_penalty, align 4, !tbaa !12
  %103 = load ptr, ptr @trieoffsets_obs, align 8, !tbaa !5
  %cmp76 = icmp ne ptr %103, null
  br i1 %cmp76, label %if.then78, label %if.end83

if.then78:                                        ; preds = %if.end75
  %104 = load ptr, ptr %best_pairs, align 8, !tbaa !5
  %105 = load ptr, ptr @triecontents_obs, align 8, !tbaa !5
  %106 = load ptr, ptr @trieoffsets_obs, align 8, !tbaa !5
  %107 = load i32, ptr %j, align 4, !tbaa !12
  %108 = load i32, ptr %far_limit_low, align 4, !tbaa !12
  %109 = load i32, ptr %far_limit_high, align 4, !tbaa !12
  %110 = load ptr, ptr %traceback_score.addr, align 8, !tbaa !5
  %111 = load ptr, ptr %nmatches.addr, align 8, !tbaa !5
  %112 = load ptr, ptr %nmismatches.addr, align 8, !tbaa !5
  %113 = load ptr, ptr %nopens.addr, align 8, !tbaa !5
  %114 = load ptr, ptr %nindels.addr, align 8, !tbaa !5
  %115 = load ptr, ptr %knownsplicep.addr, align 8, !tbaa !5
  %116 = load ptr, ptr %ambig_end_length.addr, align 8, !tbaa !5
  %117 = load i32, ptr %perfect_score, align 4, !tbaa !12
  %118 = load ptr, ptr @splicesites, align 8, !tbaa !5
  %119 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom79 = sext i32 %119 to i64
  %arrayidx80 = getelementptr inbounds i32, ptr %118, i64 %idxprom79
  %120 = load i32, ptr %arrayidx80, align 4, !tbaa !12
  %121 = load ptr, ptr %splicejunction, align 8, !tbaa !5
  %122 = load ptr, ptr %splicejunction_alt, align 8, !tbaa !5
  %123 = load i32, ptr %splicelength, align 4, !tbaa !12
  %124 = load i32, ptr %contlength, align 4, !tbaa !12
  %125 = load i32, ptr %far_splicetype, align 4, !tbaa !14
  %126 = load i32, ptr %chroffset.addr, align 4, !tbaa !12
  %127 = load i32, ptr %chrhigh.addr, align 4, !tbaa !12
  %128 = load ptr, ptr %dynprogindex.addr, align 8, !tbaa !5
  %129 = load ptr, ptr %dynprog.addr, align 8, !tbaa !5
  %130 = load ptr, ptr %rev_rsequence.addr, align 8, !tbaa !5
  %131 = load ptr, ptr %rev_rsequenceuc.addr, align 8, !tbaa !5
  %132 = load i32, ptr %rlength.addr, align 4, !tbaa !12
  %133 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %134 = load i32, ptr %rev_roffset.addr, align 4, !tbaa !12
  %135 = load i32, ptr %rev_goffset.addr, align 4, !tbaa !12
  %136 = load i32, ptr %cdna_direction.addr, align 4, !tbaa !12
  %137 = load i8, ptr %watsonp.addr, align 1, !tbaa !14
  %138 = load i32, ptr %genestrand.addr, align 4, !tbaa !12
  %139 = load i8, ptr %jump_late_p.addr, align 1, !tbaa !14
  %140 = load ptr, ptr %genome.addr, align 8, !tbaa !5
  %141 = load ptr, ptr %genomealt.addr, align 8, !tbaa !5
  %142 = load ptr, ptr %pairpool.addr, align 8, !tbaa !5
  %143 = load i32, ptr %extraband_end.addr, align 4, !tbaa !12
  %144 = load double, ptr %defect_rate.addr, align 8, !tbaa !15
  %call81 = call ptr @Splicetrie_solve_end5(ptr noundef %104, ptr noundef %105, ptr noundef %106, i32 noundef %107, i32 noundef %108, i32 noundef %109, ptr noundef %110, ptr noundef %111, ptr noundef %112, ptr noundef %113, ptr noundef %114, ptr noundef %115, ptr noundef %116, ptr noundef %threshold_miss_score, i32 noundef 0, i32 noundef %117, i32 noundef %120, ptr noundef %121, ptr noundef %122, i32 noundef %123, i32 noundef %124, i32 noundef %125, i32 noundef %126, i32 noundef %127, ptr noundef %128, ptr noundef %129, ptr noundef %130, ptr noundef %131, i32 noundef %132, i32 noundef %133, i32 noundef %134, i32 noundef %135, i32 noundef %136, i8 noundef zeroext %137, i32 noundef %138, i8 noundef zeroext %139, ptr noundef %140, ptr noundef %141, ptr noundef %142, i32 noundef %143, double noundef %144)
  store ptr %call81, ptr %best_pairs, align 8, !tbaa !5
  %145 = load i32, ptr %obsmax_penalty, align 4, !tbaa !12
  %add82 = add nsw i32 %145, 3
  store i32 %add82, ptr %obsmax_penalty, align 4, !tbaa !12
  br label %if.end83

if.end83:                                         ; preds = %if.then78, %if.end75
  %146 = load i32, ptr %threshold_miss_score, align 4, !tbaa !12
  %147 = load i32, ptr %obsmax_penalty, align 4, !tbaa !12
  %add84 = add nsw i32 %146, %147
  %cmp85 = icmp slt i32 %add84, 0
  br i1 %cmp85, label %land.lhs.true87, label %if.end94

land.lhs.true87:                                  ; preds = %if.end83
  %148 = load ptr, ptr @trieoffsets_max, align 8, !tbaa !5
  %cmp88 = icmp ne ptr %148, null
  br i1 %cmp88, label %if.then90, label %if.end94

if.then90:                                        ; preds = %land.lhs.true87
  %149 = load ptr, ptr %best_pairs, align 8, !tbaa !5
  %150 = load ptr, ptr @triecontents_max, align 8, !tbaa !5
  %151 = load ptr, ptr @trieoffsets_max, align 8, !tbaa !5
  %152 = load i32, ptr %j, align 4, !tbaa !12
  %153 = load i32, ptr %far_limit_low, align 4, !tbaa !12
  %154 = load i32, ptr %far_limit_high, align 4, !tbaa !12
  %155 = load ptr, ptr %traceback_score.addr, align 8, !tbaa !5
  %156 = load ptr, ptr %nmatches.addr, align 8, !tbaa !5
  %157 = load ptr, ptr %nmismatches.addr, align 8, !tbaa !5
  %158 = load ptr, ptr %nopens.addr, align 8, !tbaa !5
  %159 = load ptr, ptr %nindels.addr, align 8, !tbaa !5
  %160 = load ptr, ptr %knownsplicep.addr, align 8, !tbaa !5
  %161 = load ptr, ptr %ambig_end_length.addr, align 8, !tbaa !5
  %162 = load i32, ptr %obsmax_penalty, align 4, !tbaa !12
  %163 = load i32, ptr %perfect_score, align 4, !tbaa !12
  %164 = load ptr, ptr @splicesites, align 8, !tbaa !5
  %165 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom91 = sext i32 %165 to i64
  %arrayidx92 = getelementptr inbounds i32, ptr %164, i64 %idxprom91
  %166 = load i32, ptr %arrayidx92, align 4, !tbaa !12
  %167 = load ptr, ptr %splicejunction, align 8, !tbaa !5
  %168 = load ptr, ptr %splicejunction_alt, align 8, !tbaa !5
  %169 = load i32, ptr %splicelength, align 4, !tbaa !12
  %170 = load i32, ptr %contlength, align 4, !tbaa !12
  %171 = load i32, ptr %far_splicetype, align 4, !tbaa !14
  %172 = load i32, ptr %chroffset.addr, align 4, !tbaa !12
  %173 = load i32, ptr %chrhigh.addr, align 4, !tbaa !12
  %174 = load ptr, ptr %dynprogindex.addr, align 8, !tbaa !5
  %175 = load ptr, ptr %dynprog.addr, align 8, !tbaa !5
  %176 = load ptr, ptr %rev_rsequence.addr, align 8, !tbaa !5
  %177 = load ptr, ptr %rev_rsequenceuc.addr, align 8, !tbaa !5
  %178 = load i32, ptr %rlength.addr, align 4, !tbaa !12
  %179 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %180 = load i32, ptr %rev_roffset.addr, align 4, !tbaa !12
  %181 = load i32, ptr %rev_goffset.addr, align 4, !tbaa !12
  %182 = load i32, ptr %cdna_direction.addr, align 4, !tbaa !12
  %183 = load i8, ptr %watsonp.addr, align 1, !tbaa !14
  %184 = load i32, ptr %genestrand.addr, align 4, !tbaa !12
  %185 = load i8, ptr %jump_late_p.addr, align 1, !tbaa !14
  %186 = load ptr, ptr %genome.addr, align 8, !tbaa !5
  %187 = load ptr, ptr %genomealt.addr, align 8, !tbaa !5
  %188 = load ptr, ptr %pairpool.addr, align 8, !tbaa !5
  %189 = load i32, ptr %extraband_end.addr, align 4, !tbaa !12
  %190 = load double, ptr %defect_rate.addr, align 8, !tbaa !15
  %call93 = call ptr @Splicetrie_solve_end5(ptr noundef %149, ptr noundef %150, ptr noundef %151, i32 noundef %152, i32 noundef %153, i32 noundef %154, ptr noundef %155, ptr noundef %156, ptr noundef %157, ptr noundef %158, ptr noundef %159, ptr noundef %160, ptr noundef %161, ptr noundef %threshold_miss_score, i32 noundef %162, i32 noundef %163, i32 noundef %166, ptr noundef %167, ptr noundef %168, i32 noundef %169, i32 noundef %170, i32 noundef %171, i32 noundef %172, i32 noundef %173, ptr noundef %174, ptr noundef %175, ptr noundef %176, ptr noundef %177, i32 noundef %178, i32 noundef %179, i32 noundef %180, i32 noundef %181, i32 noundef %182, i8 noundef zeroext %183, i32 noundef %184, i8 noundef zeroext %185, ptr noundef %186, ptr noundef %187, ptr noundef %188, i32 noundef %189, double noundef %190)
  store ptr %call93, ptr %best_pairs, align 8, !tbaa !5
  br label %if.end94

if.end94:                                         ; preds = %if.then90, %land.lhs.true87, %if.end83
  br label %if.end95

if.end95:                                         ; preds = %if.end94, %while.body
  %191 = load i32, ptr %j, align 4, !tbaa !12
  %inc = add nsw i32 %191, 1
  store i32 %inc, ptr %j, align 4, !tbaa !12
  br label %while.cond, !llvm.loop !60

while.end:                                        ; preds = %land.end
  %192 = load ptr, ptr %splicejunction_alt, align 8, !tbaa !5
  call void @Mem_free(ptr noundef %192, ptr noundef @.str, i32 noundef 2952)
  store ptr null, ptr %splicejunction_alt, align 8, !tbaa !5
  %193 = load ptr, ptr %splicejunction, align 8, !tbaa !5
  call void @Mem_free(ptr noundef %193, ptr noundef @.str, i32 noundef 2953)
  store ptr null, ptr %splicejunction, align 8, !tbaa !5
  br label %if.end96

if.end96:                                         ; preds = %while.end, %land.lhs.true, %if.end9
  %194 = load ptr, ptr %best_pairs, align 8, !tbaa !5
  %cmp97 = icmp eq ptr %194, null
  br i1 %cmp97, label %if.then99, label %if.else127

if.then99:                                        ; preds = %if.end96
  %195 = load ptr, ptr %ambig_end_length.addr, align 8, !tbaa !5
  %196 = load i32, ptr %195, align 4, !tbaa !12
  %cmp100 = icmp eq i32 %196, 0
  br i1 %cmp100, label %if.then102, label %if.else114

if.then102:                                       ; preds = %if.then99
  %197 = load i32, ptr %rlength.addr, align 4, !tbaa !12
  %198 = load ptr, ptr %dynprog.addr, align 8, !tbaa !5
  %max_rlength = getelementptr inbounds %struct.Dynprog_T, ptr %198, i32 0, i32 0
  %199 = load i32, ptr %max_rlength, align 8, !tbaa !17
  %cmp103 = icmp sgt i32 %197, %199
  br i1 %cmp103, label %if.then105, label %if.end107

if.then105:                                       ; preds = %if.then102
  %200 = load ptr, ptr %dynprog.addr, align 8, !tbaa !5
  %max_rlength106 = getelementptr inbounds %struct.Dynprog_T, ptr %200, i32 0, i32 0
  %201 = load i32, ptr %max_rlength106, align 8, !tbaa !17
  store i32 %201, ptr %rlength.addr, align 4, !tbaa !12
  br label %if.end107

if.end107:                                        ; preds = %if.then105, %if.then102
  %202 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %203 = load ptr, ptr %dynprog.addr, align 8, !tbaa !5
  %max_glength = getelementptr inbounds %struct.Dynprog_T, ptr %203, i32 0, i32 1
  %204 = load i32, ptr %max_glength, align 4, !tbaa !19
  %cmp108 = icmp sgt i32 %202, %204
  br i1 %cmp108, label %if.then110, label %if.end112

if.then110:                                       ; preds = %if.end107
  %205 = load ptr, ptr %dynprog.addr, align 8, !tbaa !5
  %max_glength111 = getelementptr inbounds %struct.Dynprog_T, ptr %205, i32 0, i32 1
  %206 = load i32, ptr %max_glength111, align 4, !tbaa !19
  store i32 %206, ptr %glength.addr, align 4, !tbaa !12
  br label %if.end112

if.end112:                                        ; preds = %if.then110, %if.end107
  %207 = load ptr, ptr %dynprogindex.addr, align 8, !tbaa !5
  %208 = load ptr, ptr %traceback_score.addr, align 8, !tbaa !5
  %209 = load ptr, ptr %nmatches.addr, align 8, !tbaa !5
  %210 = load ptr, ptr %nmismatches.addr, align 8, !tbaa !5
  %211 = load ptr, ptr %nopens.addr, align 8, !tbaa !5
  %212 = load ptr, ptr %nindels.addr, align 8, !tbaa !5
  %213 = load ptr, ptr %dynprog.addr, align 8, !tbaa !5
  %214 = load ptr, ptr %rev_rsequence.addr, align 8, !tbaa !5
  %215 = load ptr, ptr %rev_rsequenceuc.addr, align 8, !tbaa !5
  %216 = load i32, ptr %rlength.addr, align 4, !tbaa !12
  %217 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %218 = load i32, ptr %rev_roffset.addr, align 4, !tbaa !12
  %219 = load i32, ptr %rev_goffset.addr, align 4, !tbaa !12
  %220 = load i32, ptr %chroffset.addr, align 4, !tbaa !12
  %221 = load i32, ptr %chrhigh.addr, align 4, !tbaa !12
  %222 = load i8, ptr %watsonp.addr, align 1, !tbaa !14
  %223 = load i32, ptr %genestrand.addr, align 4, !tbaa !12
  %224 = load i8, ptr %jump_late_p.addr, align 1, !tbaa !14
  %225 = load ptr, ptr %genome.addr, align 8, !tbaa !5
  %226 = load ptr, ptr %genomealt.addr, align 8, !tbaa !5
  %227 = load ptr, ptr %pairpool.addr, align 8, !tbaa !5
  %228 = load i32, ptr %extraband_end.addr, align 4, !tbaa !12
  %229 = load double, ptr %defect_rate.addr, align 8, !tbaa !15
  %call113 = call ptr @Dynprog_end5_gap(ptr noundef %207, ptr noundef %208, ptr noundef %209, ptr noundef %210, ptr noundef %211, ptr noundef %212, ptr noundef %213, ptr noundef %214, ptr noundef %215, i32 noundef %216, i32 noundef %217, i32 noundef %218, i32 noundef %219, i32 noundef %220, i32 noundef %221, i8 noundef zeroext %222, i32 noundef %223, i8 noundef zeroext %224, ptr noundef %225, ptr noundef %226, ptr noundef %227, i32 noundef %228, double noundef %229, i32 noundef 3, i8 noundef zeroext 0)
  store ptr %call113, ptr %orig_pairs, align 8, !tbaa !5
  %230 = load ptr, ptr %knownsplicep.addr, align 8, !tbaa !5
  store i8 0, ptr %230, align 1, !tbaa !14
  %231 = load ptr, ptr %orig_pairs, align 8, !tbaa !5
  store ptr %231, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else114:                                       ; preds = %if.then99
  %232 = load i32, ptr %anchor_splicetype, align 4, !tbaa !14
  %233 = load ptr, ptr %ambig_splicetype.addr, align 8, !tbaa !5
  store i32 %232, ptr %233, align 4, !tbaa !14
  %234 = load ptr, ptr %orig_pairs, align 8, !tbaa !5
  %call115 = call ptr @List_reverse(ptr noundef %234)
  store ptr %call115, ptr %orig_pairs, align 8, !tbaa !5
  br label %while.cond116

while.cond116:                                    ; preds = %while.body123, %if.else114
  %235 = load ptr, ptr %orig_pairs, align 8, !tbaa !5
  %cmp117 = icmp ne ptr %235, null
  br i1 %cmp117, label %land.rhs119, label %land.end122

land.rhs119:                                      ; preds = %while.cond116
  %236 = load ptr, ptr %orig_pairs, align 8, !tbaa !5
  %first = getelementptr inbounds %struct.List_T, ptr %236, i32 0, i32 0
  %237 = load ptr, ptr %first, align 8, !tbaa !9
  %querypos = getelementptr inbounds %struct.Pair_T, ptr %237, i32 0, i32 0
  %238 = load i32, ptr %querypos, align 8, !tbaa !61
  %239 = load ptr, ptr %ambig_end_length.addr, align 8, !tbaa !5
  %240 = load i32, ptr %239, align 4, !tbaa !12
  %cmp120 = icmp slt i32 %238, %240
  br label %land.end122

land.end122:                                      ; preds = %land.rhs119, %while.cond116
  %241 = phi i1 [ false, %while.cond116 ], [ %cmp120, %land.rhs119 ]
  br i1 %241, label %while.body123, label %while.end125

while.body123:                                    ; preds = %land.end122
  %242 = load ptr, ptr %orig_pairs, align 8, !tbaa !5
  %call124 = call ptr @Pairpool_pop(ptr noundef %242, ptr noundef %pair)
  store ptr %call124, ptr %orig_pairs, align 8, !tbaa !5
  br label %while.cond116, !llvm.loop !62

while.end125:                                     ; preds = %land.end122
  %243 = load ptr, ptr %orig_pairs, align 8, !tbaa !5
  %call126 = call ptr @List_reverse(ptr noundef %243)
  store ptr %call126, ptr %orig_pairs, align 8, !tbaa !5
  %244 = load ptr, ptr %knownsplicep.addr, align 8, !tbaa !5
  store i8 0, ptr %244, align 1, !tbaa !14
  %245 = load i32, ptr %orig_score, align 4, !tbaa !12
  %246 = load ptr, ptr %traceback_score.addr, align 8, !tbaa !5
  store i32 %245, ptr %246, align 4, !tbaa !12
  %247 = load ptr, ptr %orig_pairs, align 8, !tbaa !5
  store ptr %247, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else127:                                       ; preds = %if.end96
  %248 = load ptr, ptr %ambig_end_length.addr, align 8, !tbaa !5
  store i32 0, ptr %248, align 4, !tbaa !12
  %249 = load ptr, ptr %knownsplicep.addr, align 8, !tbaa !5
  %250 = load i8, ptr %249, align 1, !tbaa !14
  %conv128 = zext i8 %250 to i32
  %cmp129 = icmp eq i32 %conv128, 1
  br i1 %cmp129, label %if.then131, label %if.else133

if.then131:                                       ; preds = %if.else127
  %251 = load ptr, ptr %best_pairs, align 8, !tbaa !5
  %call132 = call ptr @Pair_protect_end5(ptr noundef %251)
  store ptr %call132, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else133:                                       ; preds = %if.else127
  %252 = load ptr, ptr %best_pairs, align 8, !tbaa !5
  store ptr %252, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else133, %if.then131, %while.end125, %if.end112, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %obsmax_penalty) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %perfect_score) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %threshold_miss_score) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %orig_score) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %jstart) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %splicejunction_alt) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %splicejunction) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %endlength) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %splicelength) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %contlength) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %far_splicetype) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %anchor_splicetype) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %far_limit_high) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %far_limit_low) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %high) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %low) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %pair) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %orig_pairs) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %best_pairs) #5
  %253 = load ptr, ptr %retval, align 8
  ret ptr %253
}

; Function Attrs: nounwind uwtable
define internal i32 @binary_search(i32 noundef %lowi, i32 noundef %highi, ptr noundef %positions, i32 noundef %goal) #1 {
entry:
  %retval = alloca i32, align 4
  %lowi.addr = alloca i32, align 4
  %highi.addr = alloca i32, align 4
  %positions.addr = alloca ptr, align 8
  %goal.addr = alloca i32, align 4
  %middlei = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %lowi, ptr %lowi.addr, align 4, !tbaa !12
  store i32 %highi, ptr %highi.addr, align 4, !tbaa !12
  store ptr %positions, ptr %positions.addr, align 8, !tbaa !5
  store i32 %goal, ptr %goal.addr, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %middlei) #5
  br label %while.cond

while.cond:                                       ; preds = %if.end8, %entry
  %0 = load i32, ptr %lowi.addr, align 4, !tbaa !12
  %1 = load i32, ptr %highi.addr, align 4, !tbaa !12
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, ptr %lowi.addr, align 4, !tbaa !12
  %3 = load i32, ptr %highi.addr, align 4, !tbaa !12
  %4 = load i32, ptr %lowi.addr, align 4, !tbaa !12
  %sub = sub nsw i32 %3, %4
  %div = sdiv i32 %sub, 2
  %add = add nsw i32 %2, %div
  store i32 %add, ptr %middlei, align 4, !tbaa !12
  %5 = load i32, ptr %goal.addr, align 4, !tbaa !12
  %6 = load ptr, ptr %positions.addr, align 8, !tbaa !5
  %7 = load i32, ptr %middlei, align 4, !tbaa !12
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds i32, ptr %6, i64 %idxprom
  %8 = load i32, ptr %arrayidx, align 4, !tbaa !12
  %cmp1 = icmp ult i32 %5, %8
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %9 = load i32, ptr %middlei, align 4, !tbaa !12
  store i32 %9, ptr %highi.addr, align 4, !tbaa !12
  br label %if.end8

if.else:                                          ; preds = %while.body
  %10 = load i32, ptr %goal.addr, align 4, !tbaa !12
  %11 = load ptr, ptr %positions.addr, align 8, !tbaa !5
  %12 = load i32, ptr %middlei, align 4, !tbaa !12
  %idxprom2 = sext i32 %12 to i64
  %arrayidx3 = getelementptr inbounds i32, ptr %11, i64 %idxprom2
  %13 = load i32, ptr %arrayidx3, align 4, !tbaa !12
  %cmp4 = icmp ugt i32 %10, %13
  br i1 %cmp4, label %if.then5, label %if.else7

if.then5:                                         ; preds = %if.else
  %14 = load i32, ptr %middlei, align 4, !tbaa !12
  %add6 = add nsw i32 %14, 1
  store i32 %add6, ptr %lowi.addr, align 4, !tbaa !12
  br label %if.end

if.else7:                                         ; preds = %if.else
  %15 = load i32, ptr %middlei, align 4, !tbaa !12
  store i32 %15, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then5
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  br label %while.cond, !llvm.loop !63

while.end:                                        ; preds = %while.cond
  %16 = load i32, ptr %highi.addr, align 4, !tbaa !12
  store i32 %16, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.else7
  call void @llvm.lifetime.end.p0(i64 4, ptr %middlei) #5
  %17 = load i32, ptr %retval, align 4
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal void @make_contjunction_5(ptr noundef %splicejunction, ptr noundef %splicejunction_alt, i32 noundef %splicecoord, i32 noundef %splicelength, i32 noundef %contlength, i32 noundef %anchor_splicetype, ptr noundef %genome, ptr noundef %genomealt, i8 noundef zeroext %watsonp) #1 {
entry:
  %splicejunction.addr = alloca ptr, align 8
  %splicejunction_alt.addr = alloca ptr, align 8
  %splicecoord.addr = alloca i32, align 4
  %splicelength.addr = alloca i32, align 4
  %contlength.addr = alloca i32, align 4
  %anchor_splicetype.addr = alloca i32, align 4
  %genome.addr = alloca ptr, align 8
  %genomealt.addr = alloca ptr, align 8
  %watsonp.addr = alloca i8, align 1
  %proximal = alloca ptr, align 8
  %proximal_alt = alloca ptr, align 8
  store ptr %splicejunction, ptr %splicejunction.addr, align 8, !tbaa !5
  store ptr %splicejunction_alt, ptr %splicejunction_alt.addr, align 8, !tbaa !5
  store i32 %splicecoord, ptr %splicecoord.addr, align 4, !tbaa !12
  store i32 %splicelength, ptr %splicelength.addr, align 4, !tbaa !12
  store i32 %contlength, ptr %contlength.addr, align 4, !tbaa !12
  store i32 %anchor_splicetype, ptr %anchor_splicetype.addr, align 4, !tbaa !14
  store ptr %genome, ptr %genome.addr, align 8, !tbaa !5
  store ptr %genomealt, ptr %genomealt.addr, align 8, !tbaa !5
  store i8 %watsonp, ptr %watsonp.addr, align 1, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 8, ptr %proximal) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %proximal_alt) #5
  %0 = load ptr, ptr %splicejunction.addr, align 8, !tbaa !5
  %1 = load i32, ptr %splicelength.addr, align 4, !tbaa !12
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 %idxprom
  store ptr %arrayidx, ptr %proximal, align 8, !tbaa !5
  %2 = load ptr, ptr %splicejunction_alt.addr, align 8, !tbaa !5
  %3 = load i32, ptr %splicelength.addr, align 4, !tbaa !12
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds i8, ptr %2, i64 %idxprom1
  store ptr %arrayidx2, ptr %proximal_alt, align 8, !tbaa !5
  %4 = load i32, ptr %anchor_splicetype.addr, align 4, !tbaa !14
  %cmp = icmp eq i32 %4, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %genome.addr, align 8, !tbaa !5
  %6 = load ptr, ptr %genomealt.addr, align 8, !tbaa !5
  %7 = load i32, ptr %splicecoord.addr, align 4, !tbaa !12
  %8 = load i32, ptr %contlength.addr, align 4, !tbaa !12
  %9 = load ptr, ptr %proximal, align 8, !tbaa !5
  %10 = load ptr, ptr %proximal_alt, align 8, !tbaa !5
  call void @Genome_fill_buffer_blocks_noterm(ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef %8, ptr noundef %9, ptr noundef %10)
  br label %if.end15

if.else:                                          ; preds = %entry
  %11 = load i32, ptr %anchor_splicetype.addr, align 4, !tbaa !14
  %cmp3 = icmp eq i32 %11, 2
  br i1 %cmp3, label %if.then4, label %if.else5

if.then4:                                         ; preds = %if.else
  %12 = load ptr, ptr %genome.addr, align 8, !tbaa !5
  %13 = load ptr, ptr %genomealt.addr, align 8, !tbaa !5
  %14 = load i32, ptr %splicecoord.addr, align 4, !tbaa !12
  %15 = load i32, ptr %contlength.addr, align 4, !tbaa !12
  %16 = load ptr, ptr %proximal, align 8, !tbaa !5
  %17 = load ptr, ptr %proximal_alt, align 8, !tbaa !5
  call void @Genome_fill_buffer_blocks_noterm(ptr noundef %12, ptr noundef %13, i32 noundef %14, i32 noundef %15, ptr noundef %16, ptr noundef %17)
  br label %if.end14

if.else5:                                         ; preds = %if.else
  %18 = load i32, ptr %anchor_splicetype.addr, align 4, !tbaa !14
  %cmp6 = icmp eq i32 %18, 4
  br i1 %cmp6, label %if.then7, label %if.else8

if.then7:                                         ; preds = %if.else5
  %19 = load ptr, ptr %genome.addr, align 8, !tbaa !5
  %20 = load ptr, ptr %genomealt.addr, align 8, !tbaa !5
  %21 = load i32, ptr %splicecoord.addr, align 4, !tbaa !12
  %22 = load i32, ptr %contlength.addr, align 4, !tbaa !12
  %sub = sub i32 %21, %22
  %23 = load i32, ptr %contlength.addr, align 4, !tbaa !12
  %24 = load ptr, ptr %proximal, align 8, !tbaa !5
  %25 = load ptr, ptr %proximal_alt, align 8, !tbaa !5
  call void @Genome_fill_buffer_blocks_noterm(ptr noundef %19, ptr noundef %20, i32 noundef %sub, i32 noundef %23, ptr noundef %24, ptr noundef %25)
  br label %if.end13

if.else8:                                         ; preds = %if.else5
  %26 = load i32, ptr %anchor_splicetype.addr, align 4, !tbaa !14
  %cmp9 = icmp eq i32 %26, 1
  br i1 %cmp9, label %if.then10, label %if.else12

if.then10:                                        ; preds = %if.else8
  %27 = load ptr, ptr %genome.addr, align 8, !tbaa !5
  %28 = load ptr, ptr %genomealt.addr, align 8, !tbaa !5
  %29 = load i32, ptr %splicecoord.addr, align 4, !tbaa !12
  %30 = load i32, ptr %contlength.addr, align 4, !tbaa !12
  %sub11 = sub i32 %29, %30
  %31 = load i32, ptr %contlength.addr, align 4, !tbaa !12
  %32 = load ptr, ptr %proximal, align 8, !tbaa !5
  %33 = load ptr, ptr %proximal_alt, align 8, !tbaa !5
  call void @Genome_fill_buffer_blocks_noterm(ptr noundef %27, ptr noundef %28, i32 noundef %sub11, i32 noundef %31, ptr noundef %32, ptr noundef %33)
  br label %if.end

if.else12:                                        ; preds = %if.else8
  %34 = load ptr, ptr @stderr, align 8, !tbaa !5
  %35 = load i32, ptr %anchor_splicetype.addr, align 4, !tbaa !14
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %34, ptr noundef @.str.4, i32 noundef %35)
  call void @abort() #6
  unreachable

if.end:                                           ; preds = %if.then10
  br label %if.end13

if.end13:                                         ; preds = %if.end, %if.then7
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.then4
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.then
  %36 = load i8, ptr %watsonp.addr, align 1, !tbaa !14
  %conv = zext i8 %36 to i32
  %cmp16 = icmp eq i32 %conv, 0
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end15
  %37 = load ptr, ptr %proximal, align 8, !tbaa !5
  %38 = load i32, ptr %contlength.addr, align 4, !tbaa !12
  call void @make_complement_inplace(ptr noundef %37, i32 noundef %38)
  %39 = load ptr, ptr %proximal_alt, align 8, !tbaa !5
  %40 = load i32, ptr %contlength.addr, align 4, !tbaa !12
  call void @make_complement_inplace(ptr noundef %39, i32 noundef %40)
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end15
  call void @llvm.lifetime.end.p0(i64 8, ptr %proximal_alt) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %proximal) #5
  ret void
}

declare ptr @Splicetrie_solve_end5(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, i32 noundef, double noundef) #3

declare ptr @Pairpool_pop(ptr noundef, ptr noundef) #3

declare ptr @Pair_protect_end5(ptr noundef) #3

; Function Attrs: nounwind uwtable
define dso_local ptr @Dynprog_end3_known(ptr noundef %knownsplicep, ptr noundef %dynprogindex, ptr noundef %traceback_score, ptr noundef %ambig_end_length, ptr noundef %ambig_splicetype, ptr noundef %nmatches, ptr noundef %nmismatches, ptr noundef %nopens, ptr noundef %nindels, ptr noundef %dynprog, ptr noundef %rsequence, ptr noundef %rsequenceuc, i32 noundef %rlength, i32 noundef %glength, i32 noundef %roffset, i32 noundef %goffset, i32 noundef %querylength, i32 noundef %chroffset, i32 noundef %chrhigh, i32 noundef %knownsplice_limit_low, i32 noundef %knownsplice_limit_high, i32 noundef %cdna_direction, i8 noundef zeroext %watsonp, i32 noundef %genestrand, i8 noundef zeroext %jump_late_p, ptr noundef %genome, ptr noundef %genomealt, ptr noundef %pairpool, i32 noundef %extraband_end, double noundef %defect_rate) #1 {
entry:
  %retval = alloca ptr, align 8
  %knownsplicep.addr = alloca ptr, align 8
  %dynprogindex.addr = alloca ptr, align 8
  %traceback_score.addr = alloca ptr, align 8
  %ambig_end_length.addr = alloca ptr, align 8
  %ambig_splicetype.addr = alloca ptr, align 8
  %nmatches.addr = alloca ptr, align 8
  %nmismatches.addr = alloca ptr, align 8
  %nopens.addr = alloca ptr, align 8
  %nindels.addr = alloca ptr, align 8
  %dynprog.addr = alloca ptr, align 8
  %rsequence.addr = alloca ptr, align 8
  %rsequenceuc.addr = alloca ptr, align 8
  %rlength.addr = alloca i32, align 4
  %glength.addr = alloca i32, align 4
  %roffset.addr = alloca i32, align 4
  %goffset.addr = alloca i32, align 4
  %querylength.addr = alloca i32, align 4
  %chroffset.addr = alloca i32, align 4
  %chrhigh.addr = alloca i32, align 4
  %knownsplice_limit_low.addr = alloca i32, align 4
  %knownsplice_limit_high.addr = alloca i32, align 4
  %cdna_direction.addr = alloca i32, align 4
  %watsonp.addr = alloca i8, align 1
  %genestrand.addr = alloca i32, align 4
  %jump_late_p.addr = alloca i8, align 1
  %genome.addr = alloca ptr, align 8
  %genomealt.addr = alloca ptr, align 8
  %pairpool.addr = alloca ptr, align 8
  %extraband_end.addr = alloca i32, align 4
  %defect_rate.addr = alloca double, align 8
  %best_pairs = alloca ptr, align 8
  %orig_pairs = alloca ptr, align 8
  %pair = alloca ptr, align 8
  %low = alloca i32, align 4
  %high = alloca i32, align 4
  %far_limit_low = alloca i32, align 4
  %far_limit_high = alloca i32, align 4
  %anchor_splicetype = alloca i32, align 4
  %far_splicetype = alloca i32, align 4
  %contlength = alloca i32, align 4
  %splicelength = alloca i32, align 4
  %endlength = alloca i32, align 4
  %splicejunction = alloca ptr, align 8
  %splicejunction_alt = alloca ptr, align 8
  %jstart = alloca i32, align 4
  %j = alloca i32, align 4
  %orig_score = alloca i32, align 4
  %threshold_miss_score = alloca i32, align 4
  %perfect_score = alloca i32, align 4
  %obsmax_penalty = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %knownsplicep, ptr %knownsplicep.addr, align 8, !tbaa !5
  store ptr %dynprogindex, ptr %dynprogindex.addr, align 8, !tbaa !5
  store ptr %traceback_score, ptr %traceback_score.addr, align 8, !tbaa !5
  store ptr %ambig_end_length, ptr %ambig_end_length.addr, align 8, !tbaa !5
  store ptr %ambig_splicetype, ptr %ambig_splicetype.addr, align 8, !tbaa !5
  store ptr %nmatches, ptr %nmatches.addr, align 8, !tbaa !5
  store ptr %nmismatches, ptr %nmismatches.addr, align 8, !tbaa !5
  store ptr %nopens, ptr %nopens.addr, align 8, !tbaa !5
  store ptr %nindels, ptr %nindels.addr, align 8, !tbaa !5
  store ptr %dynprog, ptr %dynprog.addr, align 8, !tbaa !5
  store ptr %rsequence, ptr %rsequence.addr, align 8, !tbaa !5
  store ptr %rsequenceuc, ptr %rsequenceuc.addr, align 8, !tbaa !5
  store i32 %rlength, ptr %rlength.addr, align 4, !tbaa !12
  store i32 %glength, ptr %glength.addr, align 4, !tbaa !12
  store i32 %roffset, ptr %roffset.addr, align 4, !tbaa !12
  store i32 %goffset, ptr %goffset.addr, align 4, !tbaa !12
  store i32 %querylength, ptr %querylength.addr, align 4, !tbaa !12
  store i32 %chroffset, ptr %chroffset.addr, align 4, !tbaa !12
  store i32 %chrhigh, ptr %chrhigh.addr, align 4, !tbaa !12
  store i32 %knownsplice_limit_low, ptr %knownsplice_limit_low.addr, align 4, !tbaa !12
  store i32 %knownsplice_limit_high, ptr %knownsplice_limit_high.addr, align 4, !tbaa !12
  store i32 %cdna_direction, ptr %cdna_direction.addr, align 4, !tbaa !12
  store i8 %watsonp, ptr %watsonp.addr, align 1, !tbaa !14
  store i32 %genestrand, ptr %genestrand.addr, align 4, !tbaa !12
  store i8 %jump_late_p, ptr %jump_late_p.addr, align 1, !tbaa !14
  store ptr %genome, ptr %genome.addr, align 8, !tbaa !5
  store ptr %genomealt, ptr %genomealt.addr, align 8, !tbaa !5
  store ptr %pairpool, ptr %pairpool.addr, align 8, !tbaa !5
  store i32 %extraband_end, ptr %extraband_end.addr, align 4, !tbaa !12
  store double %defect_rate, ptr %defect_rate.addr, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(i64 8, ptr %best_pairs) #5
  store ptr null, ptr %best_pairs, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %orig_pairs) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %pair) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %low) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %high) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %far_limit_low) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %far_limit_high) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %anchor_splicetype) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %far_splicetype) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %contlength) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %splicelength) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %endlength) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %splicejunction) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %splicejunction_alt) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %jstart) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %orig_score) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %threshold_miss_score) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %perfect_score) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %obsmax_penalty) #5
  %0 = load ptr, ptr %ambig_end_length.addr, align 8, !tbaa !5
  store i32 0, ptr %0, align 4, !tbaa !12
  %1 = load i32, ptr %rlength.addr, align 4, !tbaa !12
  %cmp = icmp sle i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %traceback_score.addr, align 8, !tbaa !5
  store i32 0, ptr %2, align 4, !tbaa !12
  %3 = load ptr, ptr %knownsplicep.addr, align 8, !tbaa !5
  store i8 0, ptr %3, align 1, !tbaa !14
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %cmp1 = icmp sle i32 %4, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %5 = load ptr, ptr %traceback_score.addr, align 8, !tbaa !5
  store i32 0, ptr %5, align 4, !tbaa !12
  %6 = load ptr, ptr %knownsplicep.addr, align 8, !tbaa !5
  store i8 0, ptr %6, align 1, !tbaa !14
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %7 = load i32, ptr %rlength.addr, align 4, !tbaa !12
  %mul = mul nsw i32 %7, 3
  store i32 %mul, ptr %perfect_score, align 4, !tbaa !12
  %8 = load ptr, ptr %dynprogindex.addr, align 8, !tbaa !5
  %9 = load ptr, ptr %traceback_score.addr, align 8, !tbaa !5
  %10 = load ptr, ptr %nmatches.addr, align 8, !tbaa !5
  %11 = load ptr, ptr %nmismatches.addr, align 8, !tbaa !5
  %12 = load ptr, ptr %nopens.addr, align 8, !tbaa !5
  %13 = load ptr, ptr %nindels.addr, align 8, !tbaa !5
  %14 = load ptr, ptr %dynprog.addr, align 8, !tbaa !5
  %15 = load ptr, ptr %rsequence.addr, align 8, !tbaa !5
  %16 = load ptr, ptr %rsequenceuc.addr, align 8, !tbaa !5
  %17 = load i32, ptr %rlength.addr, align 4, !tbaa !12
  %18 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %19 = load i32, ptr %roffset.addr, align 4, !tbaa !12
  %20 = load i32, ptr %goffset.addr, align 4, !tbaa !12
  %21 = load i32, ptr %chroffset.addr, align 4, !tbaa !12
  %22 = load i32, ptr %chrhigh.addr, align 4, !tbaa !12
  %23 = load i8, ptr %watsonp.addr, align 1, !tbaa !14
  %24 = load i32, ptr %genestrand.addr, align 4, !tbaa !12
  %25 = load i8, ptr %jump_late_p.addr, align 1, !tbaa !14
  %26 = load ptr, ptr %genome.addr, align 8, !tbaa !5
  %27 = load ptr, ptr %genomealt.addr, align 8, !tbaa !5
  %28 = load ptr, ptr %pairpool.addr, align 8, !tbaa !5
  %29 = load i32, ptr %extraband_end.addr, align 4, !tbaa !12
  %30 = load double, ptr %defect_rate.addr, align 8, !tbaa !15
  %call = call ptr @Dynprog_end3_gap(ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef %15, ptr noundef %16, i32 noundef %17, i32 noundef %18, i32 noundef %19, i32 noundef %20, i32 noundef %21, i32 noundef %22, i8 noundef zeroext %23, i32 noundef %24, i8 noundef zeroext %25, ptr noundef %26, ptr noundef %27, ptr noundef %28, i32 noundef %29, double noundef %30, i32 noundef 2, i8 noundef zeroext 1)
  store ptr %call, ptr %best_pairs, align 8, !tbaa !5
  %31 = load ptr, ptr %traceback_score.addr, align 8, !tbaa !5
  %32 = load i32, ptr %31, align 4, !tbaa !12
  %cmp4 = icmp sle i32 %32, 0
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end3
  store i32 0, ptr %orig_score, align 4, !tbaa !12
  store ptr null, ptr %best_pairs, align 8, !tbaa !5
  store ptr null, ptr %orig_pairs, align 8, !tbaa !5
  br label %if.end6

if.else:                                          ; preds = %if.end3
  %33 = load ptr, ptr %traceback_score.addr, align 8, !tbaa !5
  %34 = load i32, ptr %33, align 4, !tbaa !12
  store i32 %34, ptr %orig_score, align 4, !tbaa !12
  %35 = load ptr, ptr %best_pairs, align 8, !tbaa !5
  store ptr %35, ptr %orig_pairs, align 8, !tbaa !5
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then5
  %36 = load i32, ptr %orig_score, align 4, !tbaa !12
  %37 = load i32, ptr %perfect_score, align 4, !tbaa !12
  %sub = sub nsw i32 %36, %37
  store i32 %sub, ptr %threshold_miss_score, align 4, !tbaa !12
  %38 = load i32, ptr %threshold_miss_score, align 4, !tbaa !12
  %cmp7 = icmp slt i32 %38, -6
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end6
  store i32 -6, ptr %threshold_miss_score, align 4, !tbaa !12
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end6
  %39 = load ptr, ptr %knownsplicep.addr, align 8, !tbaa !5
  store i8 0, ptr %39, align 1, !tbaa !14
  %40 = load i32, ptr %threshold_miss_score, align 4, !tbaa !12
  %cmp10 = icmp slt i32 %40, 0
  br i1 %cmp10, label %land.lhs.true, label %if.end96

land.lhs.true:                                    ; preds = %if.end9
  %41 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %cmp11 = icmp sgt i32 %41, 0
  br i1 %cmp11, label %if.then12, label %if.end96

if.then12:                                        ; preds = %land.lhs.true
  %42 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %add = add nsw i32 %42, 1
  %conv = sext i32 %add to i64
  %mul13 = mul i64 %conv, 1
  %call14 = call ptr @Mem_alloc(i64 noundef %mul13, ptr noundef @.str, i32 noundef 3093)
  store ptr %call14, ptr %splicejunction, align 8, !tbaa !5
  %43 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %add15 = add nsw i32 %43, 1
  %conv16 = sext i32 %add15 to i64
  %mul17 = mul i64 %conv16, 1
  %call18 = call ptr @Mem_alloc(i64 noundef %mul17, ptr noundef @.str, i32 noundef 3094)
  store ptr %call18, ptr %splicejunction_alt, align 8, !tbaa !5
  %44 = load i32, ptr %rlength.addr, align 4, !tbaa !12
  store i32 %44, ptr %endlength, align 4, !tbaa !12
  %45 = load i8, ptr %watsonp.addr, align 1, !tbaa !14
  %conv19 = zext i8 %45 to i32
  %cmp20 = icmp eq i32 %conv19, 1
  br i1 %cmp20, label %if.then22, label %if.else32

if.then22:                                        ; preds = %if.then12
  %46 = load i32, ptr %chroffset.addr, align 4, !tbaa !12
  %47 = load i32, ptr %goffset.addr, align 4, !tbaa !12
  %add23 = add i32 %46, %47
  store i32 %add23, ptr %low, align 4, !tbaa !12
  %48 = load i32, ptr %chroffset.addr, align 4, !tbaa !12
  %49 = load i32, ptr %goffset.addr, align 4, !tbaa !12
  %add24 = add i32 %48, %49
  %50 = load i32, ptr %endlength, align 4, !tbaa !12
  %add25 = add i32 %add24, %50
  %sub26 = sub i32 %add25, 1
  store i32 %sub26, ptr %high, align 4, !tbaa !12
  %51 = load i32, ptr %cdna_direction.addr, align 4, !tbaa !12
  %cmp27 = icmp sgt i32 %51, 0
  br i1 %cmp27, label %if.then29, label %if.else30

if.then29:                                        ; preds = %if.then22
  store i32 1, ptr %anchor_splicetype, align 4, !tbaa !14
  store i32 3, ptr %far_splicetype, align 4, !tbaa !14
  br label %if.end31

if.else30:                                        ; preds = %if.then22
  store i32 4, ptr %anchor_splicetype, align 4, !tbaa !14
  store i32 2, ptr %far_splicetype, align 4, !tbaa !14
  br label %if.end31

if.end31:                                         ; preds = %if.else30, %if.then29
  br label %if.end43

if.else32:                                        ; preds = %if.then12
  %52 = load i32, ptr %chrhigh.addr, align 4, !tbaa !12
  %53 = load i32, ptr %goffset.addr, align 4, !tbaa !12
  %54 = load i32, ptr %endlength, align 4, !tbaa !12
  %add33 = add nsw i32 %53, %54
  %sub34 = sub i32 %52, %add33
  %add35 = add i32 %sub34, 2
  store i32 %add35, ptr %low, align 4, !tbaa !12
  %55 = load i32, ptr %chrhigh.addr, align 4, !tbaa !12
  %56 = load i32, ptr %goffset.addr, align 4, !tbaa !12
  %sub36 = sub i32 %55, %56
  %add37 = add i32 %sub36, 1
  store i32 %add37, ptr %high, align 4, !tbaa !12
  %57 = load i32, ptr %cdna_direction.addr, align 4, !tbaa !12
  %cmp38 = icmp sgt i32 %57, 0
  br i1 %cmp38, label %if.then40, label %if.else41

if.then40:                                        ; preds = %if.else32
  store i32 2, ptr %anchor_splicetype, align 4, !tbaa !14
  store i32 4, ptr %far_splicetype, align 4, !tbaa !14
  br label %if.end42

if.else41:                                        ; preds = %if.else32
  store i32 3, ptr %anchor_splicetype, align 4, !tbaa !14
  store i32 1, ptr %far_splicetype, align 4, !tbaa !14
  br label %if.end42

if.end42:                                         ; preds = %if.else41, %if.then40
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %if.end31
  %58 = load i32, ptr %knownsplice_limit_low.addr, align 4, !tbaa !12
  store i32 %58, ptr %far_limit_low, align 4, !tbaa !12
  %59 = load i32, ptr %knownsplice_limit_high.addr, align 4, !tbaa !12
  store i32 %59, ptr %far_limit_high, align 4, !tbaa !12
  %60 = load i32, ptr @nsplicesites, align 4, !tbaa !12
  %61 = load ptr, ptr @splicesites, align 8, !tbaa !5
  %62 = load i32, ptr %low, align 4, !tbaa !12
  %call44 = call i32 @binary_search(i32 noundef 0, i32 noundef %60, ptr noundef %61, i32 noundef %62)
  store i32 %call44, ptr %jstart, align 4, !tbaa !12
  store i32 %call44, ptr %j, align 4, !tbaa !12
  br label %while.cond

while.cond:                                       ; preds = %if.end95, %if.end43
  %63 = load i32, ptr %j, align 4, !tbaa !12
  %64 = load i32, ptr @nsplicesites, align 4, !tbaa !12
  %cmp45 = icmp slt i32 %63, %64
  br i1 %cmp45, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %65 = load ptr, ptr @splicesites, align 8, !tbaa !5
  %66 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom = sext i32 %66 to i64
  %arrayidx = getelementptr inbounds i32, ptr %65, i64 %idxprom
  %67 = load i32, ptr %arrayidx, align 4, !tbaa !12
  %68 = load i32, ptr %high, align 4, !tbaa !12
  %cmp47 = icmp ule i32 %67, %68
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %69 = phi i1 [ false, %while.cond ], [ %cmp47, %land.rhs ]
  br i1 %69, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %70 = load ptr, ptr @splicetypes, align 8, !tbaa !5
  %71 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom49 = sext i32 %71 to i64
  %arrayidx50 = getelementptr inbounds i32, ptr %70, i64 %idxprom49
  %72 = load i32, ptr %arrayidx50, align 4, !tbaa !14
  %73 = load i32, ptr %anchor_splicetype, align 4, !tbaa !14
  %cmp51 = icmp eq i32 %72, %73
  br i1 %cmp51, label %if.then53, label %if.end95

if.then53:                                        ; preds = %while.body
  %74 = load i8, ptr %watsonp.addr, align 1, !tbaa !14
  %conv54 = zext i8 %74 to i32
  %cmp55 = icmp eq i32 %conv54, 1
  br i1 %cmp55, label %if.then57, label %if.else61

if.then57:                                        ; preds = %if.then53
  %75 = load ptr, ptr @splicesites, align 8, !tbaa !5
  %76 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom58 = sext i32 %76 to i64
  %arrayidx59 = getelementptr inbounds i32, ptr %75, i64 %idxprom58
  %77 = load i32, ptr %arrayidx59, align 4, !tbaa !12
  %78 = load i32, ptr %low, align 4, !tbaa !12
  %sub60 = sub i32 %77, %78
  store i32 %sub60, ptr %contlength, align 4, !tbaa !12
  br label %if.end65

if.else61:                                        ; preds = %if.then53
  %79 = load i32, ptr %high, align 4, !tbaa !12
  %80 = load ptr, ptr @splicesites, align 8, !tbaa !5
  %81 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom62 = sext i32 %81 to i64
  %arrayidx63 = getelementptr inbounds i32, ptr %80, i64 %idxprom62
  %82 = load i32, ptr %arrayidx63, align 4, !tbaa !12
  %sub64 = sub i32 %79, %82
  store i32 %sub64, ptr %contlength, align 4, !tbaa !12
  br label %if.end65

if.end65:                                         ; preds = %if.else61, %if.then57
  %83 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %84 = load i32, ptr %contlength, align 4, !tbaa !12
  %sub66 = sub nsw i32 %83, %84
  store i32 %sub66, ptr %splicelength, align 4, !tbaa !12
  %85 = load ptr, ptr %splicejunction, align 8, !tbaa !5
  %86 = load ptr, ptr %splicejunction_alt, align 8, !tbaa !5
  %87 = load ptr, ptr @splicesites, align 8, !tbaa !5
  %88 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom67 = sext i32 %88 to i64
  %arrayidx68 = getelementptr inbounds i32, ptr %87, i64 %idxprom67
  %89 = load i32, ptr %arrayidx68, align 4, !tbaa !12
  %90 = load i32, ptr %splicelength, align 4, !tbaa !12
  %91 = load i32, ptr %contlength, align 4, !tbaa !12
  %92 = load i32, ptr %anchor_splicetype, align 4, !tbaa !14
  %93 = load ptr, ptr %genome.addr, align 8, !tbaa !5
  %94 = load ptr, ptr %genomealt.addr, align 8, !tbaa !5
  %95 = load i8, ptr %watsonp.addr, align 1, !tbaa !14
  call void @make_contjunction_3(ptr noundef %85, ptr noundef %86, i32 noundef %89, i32 noundef %90, i32 noundef %91, i32 noundef %92, ptr noundef %93, ptr noundef %94, i8 noundef zeroext %95)
  %96 = load i8, ptr %watsonp.addr, align 1, !tbaa !14
  %tobool = icmp ne i8 %96, 0
  br i1 %tobool, label %if.then69, label %if.else72

if.then69:                                        ; preds = %if.end65
  %97 = load ptr, ptr @splicesites, align 8, !tbaa !5
  %98 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom70 = sext i32 %98 to i64
  %arrayidx71 = getelementptr inbounds i32, ptr %97, i64 %idxprom70
  %99 = load i32, ptr %arrayidx71, align 4, !tbaa !12
  store i32 %99, ptr %far_limit_low, align 4, !tbaa !12
  br label %if.end75

if.else72:                                        ; preds = %if.end65
  %100 = load ptr, ptr @splicesites, align 8, !tbaa !5
  %101 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom73 = sext i32 %101 to i64
  %arrayidx74 = getelementptr inbounds i32, ptr %100, i64 %idxprom73
  %102 = load i32, ptr %arrayidx74, align 4, !tbaa !12
  store i32 %102, ptr %far_limit_high, align 4, !tbaa !12
  br label %if.end75

if.end75:                                         ; preds = %if.else72, %if.then69
  store i32 0, ptr %obsmax_penalty, align 4, !tbaa !12
  %103 = load ptr, ptr @trieoffsets_obs, align 8, !tbaa !5
  %cmp76 = icmp ne ptr %103, null
  br i1 %cmp76, label %if.then78, label %if.end83

if.then78:                                        ; preds = %if.end75
  %104 = load ptr, ptr %best_pairs, align 8, !tbaa !5
  %105 = load ptr, ptr @triecontents_obs, align 8, !tbaa !5
  %106 = load ptr, ptr @trieoffsets_obs, align 8, !tbaa !5
  %107 = load i32, ptr %j, align 4, !tbaa !12
  %108 = load i32, ptr %far_limit_low, align 4, !tbaa !12
  %109 = load i32, ptr %far_limit_high, align 4, !tbaa !12
  %110 = load ptr, ptr %traceback_score.addr, align 8, !tbaa !5
  %111 = load ptr, ptr %nmatches.addr, align 8, !tbaa !5
  %112 = load ptr, ptr %nmismatches.addr, align 8, !tbaa !5
  %113 = load ptr, ptr %nopens.addr, align 8, !tbaa !5
  %114 = load ptr, ptr %nindels.addr, align 8, !tbaa !5
  %115 = load ptr, ptr %knownsplicep.addr, align 8, !tbaa !5
  %116 = load ptr, ptr %ambig_end_length.addr, align 8, !tbaa !5
  %117 = load i32, ptr %perfect_score, align 4, !tbaa !12
  %118 = load ptr, ptr @splicesites, align 8, !tbaa !5
  %119 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom79 = sext i32 %119 to i64
  %arrayidx80 = getelementptr inbounds i32, ptr %118, i64 %idxprom79
  %120 = load i32, ptr %arrayidx80, align 4, !tbaa !12
  %121 = load ptr, ptr %splicejunction, align 8, !tbaa !5
  %122 = load ptr, ptr %splicejunction_alt, align 8, !tbaa !5
  %123 = load i32, ptr %splicelength, align 4, !tbaa !12
  %124 = load i32, ptr %contlength, align 4, !tbaa !12
  %125 = load i32, ptr %far_splicetype, align 4, !tbaa !14
  %126 = load i32, ptr %chroffset.addr, align 4, !tbaa !12
  %127 = load i32, ptr %chrhigh.addr, align 4, !tbaa !12
  %128 = load ptr, ptr %dynprogindex.addr, align 8, !tbaa !5
  %129 = load ptr, ptr %dynprog.addr, align 8, !tbaa !5
  %130 = load ptr, ptr %rsequence.addr, align 8, !tbaa !5
  %131 = load ptr, ptr %rsequenceuc.addr, align 8, !tbaa !5
  %132 = load i32, ptr %rlength.addr, align 4, !tbaa !12
  %133 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %134 = load i32, ptr %roffset.addr, align 4, !tbaa !12
  %135 = load i32, ptr %goffset.addr, align 4, !tbaa !12
  %136 = load i32, ptr %cdna_direction.addr, align 4, !tbaa !12
  %137 = load i8, ptr %watsonp.addr, align 1, !tbaa !14
  %138 = load i32, ptr %genestrand.addr, align 4, !tbaa !12
  %139 = load i8, ptr %jump_late_p.addr, align 1, !tbaa !14
  %140 = load ptr, ptr %genome.addr, align 8, !tbaa !5
  %141 = load ptr, ptr %genomealt.addr, align 8, !tbaa !5
  %142 = load ptr, ptr %pairpool.addr, align 8, !tbaa !5
  %143 = load i32, ptr %extraband_end.addr, align 4, !tbaa !12
  %144 = load double, ptr %defect_rate.addr, align 8, !tbaa !15
  %call81 = call ptr @Splicetrie_solve_end3(ptr noundef %104, ptr noundef %105, ptr noundef %106, i32 noundef %107, i32 noundef %108, i32 noundef %109, ptr noundef %110, ptr noundef %111, ptr noundef %112, ptr noundef %113, ptr noundef %114, ptr noundef %115, ptr noundef %116, ptr noundef %threshold_miss_score, i32 noundef 0, i32 noundef %117, i32 noundef %120, ptr noundef %121, ptr noundef %122, i32 noundef %123, i32 noundef %124, i32 noundef %125, i32 noundef %126, i32 noundef %127, ptr noundef %128, ptr noundef %129, ptr noundef %130, ptr noundef %131, i32 noundef %132, i32 noundef %133, i32 noundef %134, i32 noundef %135, i32 noundef %136, i8 noundef zeroext %137, i32 noundef %138, i8 noundef zeroext %139, ptr noundef %140, ptr noundef %141, ptr noundef %142, i32 noundef %143, double noundef %144)
  store ptr %call81, ptr %best_pairs, align 8, !tbaa !5
  %145 = load i32, ptr %obsmax_penalty, align 4, !tbaa !12
  %add82 = add nsw i32 %145, 3
  store i32 %add82, ptr %obsmax_penalty, align 4, !tbaa !12
  br label %if.end83

if.end83:                                         ; preds = %if.then78, %if.end75
  %146 = load i32, ptr %threshold_miss_score, align 4, !tbaa !12
  %147 = load i32, ptr %obsmax_penalty, align 4, !tbaa !12
  %add84 = add nsw i32 %146, %147
  %cmp85 = icmp slt i32 %add84, 0
  br i1 %cmp85, label %land.lhs.true87, label %if.end94

land.lhs.true87:                                  ; preds = %if.end83
  %148 = load ptr, ptr @trieoffsets_max, align 8, !tbaa !5
  %cmp88 = icmp ne ptr %148, null
  br i1 %cmp88, label %if.then90, label %if.end94

if.then90:                                        ; preds = %land.lhs.true87
  %149 = load ptr, ptr %best_pairs, align 8, !tbaa !5
  %150 = load ptr, ptr @triecontents_max, align 8, !tbaa !5
  %151 = load ptr, ptr @trieoffsets_max, align 8, !tbaa !5
  %152 = load i32, ptr %j, align 4, !tbaa !12
  %153 = load i32, ptr %far_limit_low, align 4, !tbaa !12
  %154 = load i32, ptr %far_limit_high, align 4, !tbaa !12
  %155 = load ptr, ptr %traceback_score.addr, align 8, !tbaa !5
  %156 = load ptr, ptr %nmatches.addr, align 8, !tbaa !5
  %157 = load ptr, ptr %nmismatches.addr, align 8, !tbaa !5
  %158 = load ptr, ptr %nopens.addr, align 8, !tbaa !5
  %159 = load ptr, ptr %nindels.addr, align 8, !tbaa !5
  %160 = load ptr, ptr %knownsplicep.addr, align 8, !tbaa !5
  %161 = load ptr, ptr %ambig_end_length.addr, align 8, !tbaa !5
  %162 = load i32, ptr %obsmax_penalty, align 4, !tbaa !12
  %163 = load i32, ptr %perfect_score, align 4, !tbaa !12
  %164 = load ptr, ptr @splicesites, align 8, !tbaa !5
  %165 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom91 = sext i32 %165 to i64
  %arrayidx92 = getelementptr inbounds i32, ptr %164, i64 %idxprom91
  %166 = load i32, ptr %arrayidx92, align 4, !tbaa !12
  %167 = load ptr, ptr %splicejunction, align 8, !tbaa !5
  %168 = load ptr, ptr %splicejunction_alt, align 8, !tbaa !5
  %169 = load i32, ptr %splicelength, align 4, !tbaa !12
  %170 = load i32, ptr %contlength, align 4, !tbaa !12
  %171 = load i32, ptr %far_splicetype, align 4, !tbaa !14
  %172 = load i32, ptr %chroffset.addr, align 4, !tbaa !12
  %173 = load i32, ptr %chrhigh.addr, align 4, !tbaa !12
  %174 = load ptr, ptr %dynprogindex.addr, align 8, !tbaa !5
  %175 = load ptr, ptr %dynprog.addr, align 8, !tbaa !5
  %176 = load ptr, ptr %rsequence.addr, align 8, !tbaa !5
  %177 = load ptr, ptr %rsequenceuc.addr, align 8, !tbaa !5
  %178 = load i32, ptr %rlength.addr, align 4, !tbaa !12
  %179 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %180 = load i32, ptr %roffset.addr, align 4, !tbaa !12
  %181 = load i32, ptr %goffset.addr, align 4, !tbaa !12
  %182 = load i32, ptr %cdna_direction.addr, align 4, !tbaa !12
  %183 = load i8, ptr %watsonp.addr, align 1, !tbaa !14
  %184 = load i32, ptr %genestrand.addr, align 4, !tbaa !12
  %185 = load i8, ptr %jump_late_p.addr, align 1, !tbaa !14
  %186 = load ptr, ptr %genome.addr, align 8, !tbaa !5
  %187 = load ptr, ptr %genomealt.addr, align 8, !tbaa !5
  %188 = load ptr, ptr %pairpool.addr, align 8, !tbaa !5
  %189 = load i32, ptr %extraband_end.addr, align 4, !tbaa !12
  %190 = load double, ptr %defect_rate.addr, align 8, !tbaa !15
  %call93 = call ptr @Splicetrie_solve_end3(ptr noundef %149, ptr noundef %150, ptr noundef %151, i32 noundef %152, i32 noundef %153, i32 noundef %154, ptr noundef %155, ptr noundef %156, ptr noundef %157, ptr noundef %158, ptr noundef %159, ptr noundef %160, ptr noundef %161, ptr noundef %threshold_miss_score, i32 noundef %162, i32 noundef %163, i32 noundef %166, ptr noundef %167, ptr noundef %168, i32 noundef %169, i32 noundef %170, i32 noundef %171, i32 noundef %172, i32 noundef %173, ptr noundef %174, ptr noundef %175, ptr noundef %176, ptr noundef %177, i32 noundef %178, i32 noundef %179, i32 noundef %180, i32 noundef %181, i32 noundef %182, i8 noundef zeroext %183, i32 noundef %184, i8 noundef zeroext %185, ptr noundef %186, ptr noundef %187, ptr noundef %188, i32 noundef %189, double noundef %190)
  store ptr %call93, ptr %best_pairs, align 8, !tbaa !5
  br label %if.end94

if.end94:                                         ; preds = %if.then90, %land.lhs.true87, %if.end83
  br label %if.end95

if.end95:                                         ; preds = %if.end94, %while.body
  %191 = load i32, ptr %j, align 4, !tbaa !12
  %inc = add nsw i32 %191, 1
  store i32 %inc, ptr %j, align 4, !tbaa !12
  br label %while.cond, !llvm.loop !64

while.end:                                        ; preds = %land.end
  %192 = load ptr, ptr %splicejunction_alt, align 8, !tbaa !5
  call void @Mem_free(ptr noundef %192, ptr noundef @.str, i32 noundef 3214)
  store ptr null, ptr %splicejunction_alt, align 8, !tbaa !5
  %193 = load ptr, ptr %splicejunction, align 8, !tbaa !5
  call void @Mem_free(ptr noundef %193, ptr noundef @.str, i32 noundef 3215)
  store ptr null, ptr %splicejunction, align 8, !tbaa !5
  br label %if.end96

if.end96:                                         ; preds = %while.end, %land.lhs.true, %if.end9
  %194 = load ptr, ptr %best_pairs, align 8, !tbaa !5
  %cmp97 = icmp eq ptr %194, null
  br i1 %cmp97, label %if.then99, label %if.else126

if.then99:                                        ; preds = %if.end96
  %195 = load ptr, ptr %ambig_end_length.addr, align 8, !tbaa !5
  %196 = load i32, ptr %195, align 4, !tbaa !12
  %cmp100 = icmp eq i32 %196, 0
  br i1 %cmp100, label %if.then102, label %if.else114

if.then102:                                       ; preds = %if.then99
  %197 = load i32, ptr %rlength.addr, align 4, !tbaa !12
  %198 = load ptr, ptr %dynprog.addr, align 8, !tbaa !5
  %max_rlength = getelementptr inbounds %struct.Dynprog_T, ptr %198, i32 0, i32 0
  %199 = load i32, ptr %max_rlength, align 8, !tbaa !17
  %cmp103 = icmp sgt i32 %197, %199
  br i1 %cmp103, label %if.then105, label %if.end107

if.then105:                                       ; preds = %if.then102
  %200 = load ptr, ptr %dynprog.addr, align 8, !tbaa !5
  %max_rlength106 = getelementptr inbounds %struct.Dynprog_T, ptr %200, i32 0, i32 0
  %201 = load i32, ptr %max_rlength106, align 8, !tbaa !17
  store i32 %201, ptr %rlength.addr, align 4, !tbaa !12
  br label %if.end107

if.end107:                                        ; preds = %if.then105, %if.then102
  %202 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %203 = load ptr, ptr %dynprog.addr, align 8, !tbaa !5
  %max_glength = getelementptr inbounds %struct.Dynprog_T, ptr %203, i32 0, i32 1
  %204 = load i32, ptr %max_glength, align 4, !tbaa !19
  %cmp108 = icmp sgt i32 %202, %204
  br i1 %cmp108, label %if.then110, label %if.end112

if.then110:                                       ; preds = %if.end107
  %205 = load ptr, ptr %dynprog.addr, align 8, !tbaa !5
  %max_glength111 = getelementptr inbounds %struct.Dynprog_T, ptr %205, i32 0, i32 1
  %206 = load i32, ptr %max_glength111, align 4, !tbaa !19
  store i32 %206, ptr %glength.addr, align 4, !tbaa !12
  br label %if.end112

if.end112:                                        ; preds = %if.then110, %if.end107
  %207 = load ptr, ptr %dynprogindex.addr, align 8, !tbaa !5
  %208 = load ptr, ptr %traceback_score.addr, align 8, !tbaa !5
  %209 = load ptr, ptr %nmatches.addr, align 8, !tbaa !5
  %210 = load ptr, ptr %nmismatches.addr, align 8, !tbaa !5
  %211 = load ptr, ptr %nopens.addr, align 8, !tbaa !5
  %212 = load ptr, ptr %nindels.addr, align 8, !tbaa !5
  %213 = load ptr, ptr %dynprog.addr, align 8, !tbaa !5
  %214 = load ptr, ptr %rsequence.addr, align 8, !tbaa !5
  %215 = load ptr, ptr %rsequenceuc.addr, align 8, !tbaa !5
  %216 = load i32, ptr %rlength.addr, align 4, !tbaa !12
  %217 = load i32, ptr %glength.addr, align 4, !tbaa !12
  %218 = load i32, ptr %roffset.addr, align 4, !tbaa !12
  %219 = load i32, ptr %goffset.addr, align 4, !tbaa !12
  %220 = load i32, ptr %chroffset.addr, align 4, !tbaa !12
  %221 = load i32, ptr %chrhigh.addr, align 4, !tbaa !12
  %222 = load i8, ptr %watsonp.addr, align 1, !tbaa !14
  %223 = load i32, ptr %genestrand.addr, align 4, !tbaa !12
  %224 = load i8, ptr %jump_late_p.addr, align 1, !tbaa !14
  %225 = load ptr, ptr %genome.addr, align 8, !tbaa !5
  %226 = load ptr, ptr %genomealt.addr, align 8, !tbaa !5
  %227 = load ptr, ptr %pairpool.addr, align 8, !tbaa !5
  %228 = load i32, ptr %extraband_end.addr, align 4, !tbaa !12
  %229 = load double, ptr %defect_rate.addr, align 8, !tbaa !15
  %call113 = call ptr @Dynprog_end3_gap(ptr noundef %207, ptr noundef %208, ptr noundef %209, ptr noundef %210, ptr noundef %211, ptr noundef %212, ptr noundef %213, ptr noundef %214, ptr noundef %215, i32 noundef %216, i32 noundef %217, i32 noundef %218, i32 noundef %219, i32 noundef %220, i32 noundef %221, i8 noundef zeroext %222, i32 noundef %223, i8 noundef zeroext %224, ptr noundef %225, ptr noundef %226, ptr noundef %227, i32 noundef %228, double noundef %229, i32 noundef 3, i8 noundef zeroext 0)
  store ptr %call113, ptr %orig_pairs, align 8, !tbaa !5
  %230 = load ptr, ptr %knownsplicep.addr, align 8, !tbaa !5
  store i8 0, ptr %230, align 1, !tbaa !14
  %231 = load ptr, ptr %orig_pairs, align 8, !tbaa !5
  store ptr %231, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else114:                                       ; preds = %if.then99
  %232 = load i32, ptr %anchor_splicetype, align 4, !tbaa !14
  %233 = load ptr, ptr %ambig_splicetype.addr, align 8, !tbaa !5
  store i32 %232, ptr %233, align 4, !tbaa !14
  br label %while.cond115

while.cond115:                                    ; preds = %while.body123, %if.else114
  %234 = load ptr, ptr %orig_pairs, align 8, !tbaa !5
  %cmp116 = icmp ne ptr %234, null
  br i1 %cmp116, label %land.rhs118, label %land.end122

land.rhs118:                                      ; preds = %while.cond115
  %235 = load ptr, ptr %orig_pairs, align 8, !tbaa !5
  %first = getelementptr inbounds %struct.List_T, ptr %235, i32 0, i32 0
  %236 = load ptr, ptr %first, align 8, !tbaa !9
  %querypos = getelementptr inbounds %struct.Pair_T, ptr %236, i32 0, i32 0
  %237 = load i32, ptr %querypos, align 8, !tbaa !61
  %238 = load i32, ptr %querylength.addr, align 4, !tbaa !12
  %239 = load ptr, ptr %ambig_end_length.addr, align 8, !tbaa !5
  %240 = load i32, ptr %239, align 4, !tbaa !12
  %sub119 = sub nsw i32 %238, %240
  %cmp120 = icmp sge i32 %237, %sub119
  br label %land.end122

land.end122:                                      ; preds = %land.rhs118, %while.cond115
  %241 = phi i1 [ false, %while.cond115 ], [ %cmp120, %land.rhs118 ]
  br i1 %241, label %while.body123, label %while.end125

while.body123:                                    ; preds = %land.end122
  %242 = load ptr, ptr %orig_pairs, align 8, !tbaa !5
  %call124 = call ptr @Pairpool_pop(ptr noundef %242, ptr noundef %pair)
  store ptr %call124, ptr %orig_pairs, align 8, !tbaa !5
  br label %while.cond115, !llvm.loop !65

while.end125:                                     ; preds = %land.end122
  %243 = load ptr, ptr %knownsplicep.addr, align 8, !tbaa !5
  store i8 0, ptr %243, align 1, !tbaa !14
  %244 = load i32, ptr %orig_score, align 4, !tbaa !12
  %245 = load ptr, ptr %traceback_score.addr, align 8, !tbaa !5
  store i32 %244, ptr %245, align 4, !tbaa !12
  %246 = load ptr, ptr %orig_pairs, align 8, !tbaa !5
  store ptr %246, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else126:                                       ; preds = %if.end96
  %247 = load ptr, ptr %ambig_end_length.addr, align 8, !tbaa !5
  store i32 0, ptr %247, align 4, !tbaa !12
  %248 = load ptr, ptr %knownsplicep.addr, align 8, !tbaa !5
  %249 = load i8, ptr %248, align 1, !tbaa !14
  %conv127 = zext i8 %249 to i32
  %cmp128 = icmp eq i32 %conv127, 1
  br i1 %cmp128, label %if.then130, label %if.else132

if.then130:                                       ; preds = %if.else126
  %250 = load ptr, ptr %best_pairs, align 8, !tbaa !5
  %call131 = call ptr @Pair_protect_end3(ptr noundef %250)
  store ptr %call131, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else132:                                       ; preds = %if.else126
  %251 = load ptr, ptr %best_pairs, align 8, !tbaa !5
  store ptr %251, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else132, %if.then130, %while.end125, %if.end112, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %obsmax_penalty) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %perfect_score) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %threshold_miss_score) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %orig_score) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %jstart) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %splicejunction_alt) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %splicejunction) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %endlength) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %splicelength) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %contlength) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %far_splicetype) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %anchor_splicetype) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %far_limit_high) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %far_limit_low) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %high) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %low) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %pair) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %orig_pairs) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %best_pairs) #5
  %252 = load ptr, ptr %retval, align 8
  ret ptr %252
}

; Function Attrs: nounwind uwtable
define internal void @make_contjunction_3(ptr noundef %splicejunction, ptr noundef %splicejunction_alt, i32 noundef %splicecoord, i32 noundef %splicelength, i32 noundef %contlength, i32 noundef %anchor_splicetype, ptr noundef %genome, ptr noundef %genomealt, i8 noundef zeroext %watsonp) #1 {
entry:
  %splicejunction.addr = alloca ptr, align 8
  %splicejunction_alt.addr = alloca ptr, align 8
  %splicecoord.addr = alloca i32, align 4
  %splicelength.addr = alloca i32, align 4
  %contlength.addr = alloca i32, align 4
  %anchor_splicetype.addr = alloca i32, align 4
  %genome.addr = alloca ptr, align 8
  %genomealt.addr = alloca ptr, align 8
  %watsonp.addr = alloca i8, align 1
  %proximal = alloca ptr, align 8
  %proximal_alt = alloca ptr, align 8
  store ptr %splicejunction, ptr %splicejunction.addr, align 8, !tbaa !5
  store ptr %splicejunction_alt, ptr %splicejunction_alt.addr, align 8, !tbaa !5
  store i32 %splicecoord, ptr %splicecoord.addr, align 4, !tbaa !12
  store i32 %splicelength, ptr %splicelength.addr, align 4, !tbaa !12
  store i32 %contlength, ptr %contlength.addr, align 4, !tbaa !12
  store i32 %anchor_splicetype, ptr %anchor_splicetype.addr, align 4, !tbaa !14
  store ptr %genome, ptr %genome.addr, align 8, !tbaa !5
  store ptr %genomealt, ptr %genomealt.addr, align 8, !tbaa !5
  store i8 %watsonp, ptr %watsonp.addr, align 1, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 8, ptr %proximal) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %proximal_alt) #5
  %0 = load ptr, ptr %splicejunction.addr, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 0
  store ptr %arrayidx, ptr %proximal, align 8, !tbaa !5
  %1 = load ptr, ptr %splicejunction_alt.addr, align 8, !tbaa !5
  %arrayidx1 = getelementptr inbounds i8, ptr %1, i64 0
  store ptr %arrayidx1, ptr %proximal_alt, align 8, !tbaa !5
  %2 = load i32, ptr %anchor_splicetype.addr, align 4, !tbaa !14
  %cmp = icmp eq i32 %2, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %genome.addr, align 8, !tbaa !5
  %4 = load ptr, ptr %genomealt.addr, align 8, !tbaa !5
  %5 = load i32, ptr %splicecoord.addr, align 4, !tbaa !12
  %6 = load i32, ptr %contlength.addr, align 4, !tbaa !12
  %sub = sub i32 %5, %6
  %7 = load i32, ptr %contlength.addr, align 4, !tbaa !12
  %8 = load ptr, ptr %proximal, align 8, !tbaa !5
  %9 = load ptr, ptr %proximal_alt, align 8, !tbaa !5
  call void @Genome_fill_buffer_blocks_noterm(ptr noundef %3, ptr noundef %4, i32 noundef %sub, i32 noundef %7, ptr noundef %8, ptr noundef %9)
  br label %if.end14

if.else:                                          ; preds = %entry
  %10 = load i32, ptr %anchor_splicetype.addr, align 4, !tbaa !14
  %cmp2 = icmp eq i32 %10, 4
  br i1 %cmp2, label %if.then3, label %if.else5

if.then3:                                         ; preds = %if.else
  %11 = load ptr, ptr %genome.addr, align 8, !tbaa !5
  %12 = load ptr, ptr %genomealt.addr, align 8, !tbaa !5
  %13 = load i32, ptr %splicecoord.addr, align 4, !tbaa !12
  %14 = load i32, ptr %contlength.addr, align 4, !tbaa !12
  %sub4 = sub i32 %13, %14
  %15 = load i32, ptr %contlength.addr, align 4, !tbaa !12
  %16 = load ptr, ptr %proximal, align 8, !tbaa !5
  %17 = load ptr, ptr %proximal_alt, align 8, !tbaa !5
  call void @Genome_fill_buffer_blocks_noterm(ptr noundef %11, ptr noundef %12, i32 noundef %sub4, i32 noundef %15, ptr noundef %16, ptr noundef %17)
  br label %if.end13

if.else5:                                         ; preds = %if.else
  %18 = load i32, ptr %anchor_splicetype.addr, align 4, !tbaa !14
  %cmp6 = icmp eq i32 %18, 2
  br i1 %cmp6, label %if.then7, label %if.else8

if.then7:                                         ; preds = %if.else5
  %19 = load ptr, ptr %genome.addr, align 8, !tbaa !5
  %20 = load ptr, ptr %genomealt.addr, align 8, !tbaa !5
  %21 = load i32, ptr %splicecoord.addr, align 4, !tbaa !12
  %22 = load i32, ptr %contlength.addr, align 4, !tbaa !12
  %23 = load ptr, ptr %proximal, align 8, !tbaa !5
  %24 = load ptr, ptr %proximal_alt, align 8, !tbaa !5
  call void @Genome_fill_buffer_blocks_noterm(ptr noundef %19, ptr noundef %20, i32 noundef %21, i32 noundef %22, ptr noundef %23, ptr noundef %24)
  br label %if.end12

if.else8:                                         ; preds = %if.else5
  %25 = load i32, ptr %anchor_splicetype.addr, align 4, !tbaa !14
  %cmp9 = icmp eq i32 %25, 3
  br i1 %cmp9, label %if.then10, label %if.else11

if.then10:                                        ; preds = %if.else8
  %26 = load ptr, ptr %genome.addr, align 8, !tbaa !5
  %27 = load ptr, ptr %genomealt.addr, align 8, !tbaa !5
  %28 = load i32, ptr %splicecoord.addr, align 4, !tbaa !12
  %29 = load i32, ptr %contlength.addr, align 4, !tbaa !12
  %30 = load ptr, ptr %proximal, align 8, !tbaa !5
  %31 = load ptr, ptr %proximal_alt, align 8, !tbaa !5
  call void @Genome_fill_buffer_blocks_noterm(ptr noundef %26, ptr noundef %27, i32 noundef %28, i32 noundef %29, ptr noundef %30, ptr noundef %31)
  br label %if.end

if.else11:                                        ; preds = %if.else8
  %32 = load ptr, ptr @stderr, align 8, !tbaa !5
  %33 = load i32, ptr %anchor_splicetype.addr, align 4, !tbaa !14
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef @.str.4, i32 noundef %33)
  call void @abort() #6
  unreachable

if.end:                                           ; preds = %if.then10
  br label %if.end12

if.end12:                                         ; preds = %if.end, %if.then7
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.then3
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.then
  %34 = load i8, ptr %watsonp.addr, align 1, !tbaa !14
  %conv = zext i8 %34 to i32
  %cmp15 = icmp eq i32 %conv, 0
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end14
  %35 = load ptr, ptr %proximal, align 8, !tbaa !5
  %36 = load i32, ptr %contlength.addr, align 4, !tbaa !12
  call void @make_complement_inplace(ptr noundef %35, i32 noundef %36)
  %37 = load ptr, ptr %proximal_alt, align 8, !tbaa !5
  %38 = load i32, ptr %contlength.addr, align 4, !tbaa !12
  call void @make_complement_inplace(ptr noundef %37, i32 noundef %38)
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end14
  call void @llvm.lifetime.end.p0(i64 8, ptr %proximal_alt) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %proximal) #5
  ret void
}

declare ptr @Splicetrie_solve_end3(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, i32 noundef, double noundef) #3

declare ptr @Pair_protect_end3(ptr noundef) #3

declare ptr @Pairpool_push(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef signext, i8 noundef signext, i8 noundef signext, i8 noundef signext, i32 noundef) #3

declare zeroext i8 @Dynprog_consistent_p(i32 noundef, i32 noundef, i32 noundef, i32 noundef) #3

declare ptr @Pairpool_add_genomeskip(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef) #3

declare ptr @Pairpool_add_queryskip(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef) #3

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
!15 = !{!16, !16, i64 0}
!16 = !{!"double", !7, i64 0}
!17 = !{!18, !13, i64 0}
!18 = !{!"Dynprog_T", !13, i64 0, !13, i64 4, !7, i64 8, !13, i64 104}
!19 = !{!18, !13, i64 4}
!20 = !{!21, !7, i64 37}
!21 = !{!"Pair_T", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20, !13, i64 24, !13, i64 28, !13, i64 32, !7, i64 36, !7, i64 37, !7, i64 38, !7, i64 39, !7, i64 40, !7, i64 41, !7, i64 42, !7, i64 43, !13, i64 44, !7, i64 48, !7, i64 49, !7, i64 52, !7, i64 56, !7, i64 60, !7, i64 64, !7, i64 65, !16, i64 72, !16, i64 80, !7, i64 88}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.mustprogress"}
!24 = distinct !{!24, !23}
!25 = distinct !{!25, !23}
!26 = distinct !{!26, !23}
!27 = distinct !{!27, !23}
!28 = distinct !{!28, !23}
!29 = distinct !{!29, !23}
!30 = !{!31, !31, i64 0}
!31 = !{!"short", !7, i64 0}
!32 = distinct !{!32, !23}
!33 = distinct !{!33, !23}
!34 = distinct !{!34, !23}
!35 = distinct !{!35, !23}
!36 = distinct !{!36, !23}
!37 = distinct !{!37, !23}
!38 = distinct !{!38, !23}
!39 = distinct !{!39, !23}
!40 = distinct !{!40, !23}
!41 = distinct !{!41, !23}
!42 = distinct !{!42, !23}
!43 = distinct !{!43, !23}
!44 = distinct !{!44, !23}
!45 = distinct !{!45, !23}
!46 = distinct !{!46, !23}
!47 = distinct !{!47, !23}
!48 = distinct !{!48, !23}
!49 = distinct !{!49, !23}
!50 = distinct !{!50, !23}
!51 = distinct !{!51, !23}
!52 = distinct !{!52, !23}
!53 = distinct !{!53, !23}
!54 = distinct !{!54, !23}
!55 = distinct !{!55, !23}
!56 = distinct !{!56, !23}
!57 = distinct !{!57, !23}
!58 = distinct !{!58, !23}
!59 = distinct !{!59, !23}
!60 = distinct !{!60, !23}
!61 = !{!21, !13, i64 0}
!62 = distinct !{!62, !23}
!63 = distinct !{!63, !23}
!64 = distinct !{!64, !23}
!65 = distinct !{!65, !23}

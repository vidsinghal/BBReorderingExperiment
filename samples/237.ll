; ModuleID = 'samples/237.bc'
source_filename = "/local-ssd/flatcc-dqvd5pvfbbn35drqy4pphb57x3fdjpyh-build/aidengro/spack-stage-flatcc-0.5.3-dqvd5pvfbbn35drqy4pphb57x3fdjpyh/spack-src/test/cgen_test/cgen_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flatcc_options = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, ptr }

@.str = private unnamed_addr constant [13 x i8] c"../xyzzy.fbs\00", align 1
@__const.main.input = private unnamed_addr constant [3735 x i8] c"\09//buffers do not support include statements\0A//\09include \22foobar.fbs\22;\0A// in flatc, only one field can have a key, but we have no issues\0A// as long as the vector is sorted accordingly. The first key gets\0A// gets a shorter find alias method.\0A// (all scalar vectors can also be searched - they have find defined)\0A/* block comments are also allowed.\0A */\0A//////////////////////////////////////////////////////////\0A//////////////////////////////////////////////////////////\0Atable point { x : float (key); y: float; z: float (key); }\0Anamespace mystic;\0A/************ ANOTHER DOC CASE *************/\0Atable island { lattitude : int; longitude : int; }\0A     /// There are two different point tables\0A// we test multi line doc comments here - this line should be ignored.\0A /// - one in each name space.\0Atable point { interest: agent; blank: string; geo: mystic.island; }\0Aenum agent:int { lot, pirate, vessel, navy, parrot }\0A\09namespace the;\0A//root_type point;\0Aattribute \22foo\22;\0A//attribute \22\22; // ensure empty strings are accepted.\0A/// shade is for CG applications\0Astruct shade (force_align:2) { x: byte; y: byte; z: byte;\0A/// alpha is unsigned!\0Aalpha: ubyte (key); }\0A/// the.ui is a union\0A///\0A/// We got one blank comment line above.\0Aunion u1 { /// Note that the.point is different from mystic.point in other namespace.\0Apoint\0A= /// meaningless doc comment that should be stripped\0A2, foo = 4, mystic.island = 17, } enum e1:short { z = -2, one , two , three = 3, }\0A// key on enum not supported by flatc\0Atable foo  { m: u1; e: e1 = z (key); x : int = mystic.agent.vessel; interest: mystic.agent = pirate; strange: mystic.agent = flags2.zulu; }\0A// Unknown attributes can be repeated with varying types since behavior is unspecified.\0Aenum flags : short (bit_flags, \0A/// foos are plentiful - here it is an enum of value 42\0Afoo: 42, foo, foo: \22hello\22) { f1 = 1, f2 = 13, f3 }\0Aenum flags2 : uint (bit_flags) { zulu, alpha, bravo, charlie, delta, echo, foxtrot }\0A/// A boolean enum - all enums must be type.\0Aenum confirm : bool { no, yes }\0A// enums are not formally permitted in structs, but can be enabled.\0A// This is advanced: boolean enum binary search on struct vector ...\0Astruct notify { primary_recipient: confirm (key); secondary_recipient: confirm; flags : flags; }\0A// duplicates are disallowed by default, but can be enabled\0A// enum dupes : byte { large = 2, great = 2, small = 0, other }\0Atable goo { hello: string (key, required); confirmations: [confirm];\0A            never_mind: double = 3.1415 (deprecated);\0A            embedded_t: [ubyte] (nested_flatbuffer: \22foo\22);\0A            embedded_s: [ubyte] (nested_flatbuffer: \22little.whale.c2\22);\0A            shady: shade;\0A}\0Astruct s1 (force_align:4) { index: int (key); }\0Astruct c1 { a: ubyte; x1 : little.whale.c2; x2:uint; x3: short; light: shade (deprecated); }\0A/// not all constructs support doc comments - this one doesn't\0Anamespace little.whale;\0Astruct c2 { y : c3; }\0A//struct c3 { z : c1; }\0Astruct c3 { z : the.s1; }\0Afile_identifier \22fbuz\22;\0Afile_extension \22cgen_test\22;\0Aroot_type little.whale.c2;\0A//root_type c2;\0A//root_type the.goo;\0Atable hop { einhorn: c3 (required); jupiter: c2; names: [string] (required); ehlist: [c3]; k2: the.goo; k2vec: [the.goo]; lunar: the.flags2 = bravo; }\0Atable TestOrder { x0 : byte; x1: bool = true; x2: short; x3: the.shade; x4: string; x5 : the.u1; x6 : [string]; x7: double; }\0Atable TestOrder2 (original_order) { x0 : byte; x1: bool = true; x1a : bool = 1; x2: short; x3: the.shade; x4: string; x5: the.u1; x6 : [string]; x7: double; }\0Atable StoreResponse {}\0Arpc_service MonsterStorage {\0A  Store(Monster):StoreResponse;\0A  Retrieve(MonsterId):Monster;\0A  RetrieveOne(MonsterId):Monster (deprecated);\0A}\0A/* \0A*/table Monster {}\0Atable MonsterId{ id: int; }\0A/* \09/ */\0A\00", align 16
@stderr = external global ptr, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"unexpected: could not initialize context\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"sorry, parse failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"schema is valid!\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"now generating code for C ...\0A\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"failed to generate output for C\0A\00", align 1
@stdout = external global ptr, align 8
@.str.6 = private unnamed_addr constant [82 x i8] c"\0A#if 0 /* FlatBuffers Schema Source */\0A%s\0A#endif /* FlatBuffers Schema Source */\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %name = alloca ptr, align 8
  %input = alloca [3735 x i8], align 16
  %opts = alloca %struct.flatcc_options, align 8
  %ctx = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %name) #4
  store ptr @.str, ptr %name, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 3735, ptr %input) #4
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %input, ptr align 16 @__const.main.input, i64 3735, i1 false)
  call void @llvm.lifetime.start.p0(i64 280, ptr %opts) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #4
  store ptr null, ptr %ctx, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #4
  store i32 -1, ptr %ret, align 4, !tbaa !9
  call void @flatcc_init_options(ptr noundef %opts)
  %cgen_common_reader = getelementptr inbounds %struct.flatcc_options, ptr %opts, i32 0, i32 35
  store i32 1, ptr %cgen_common_reader, align 8, !tbaa !11
  %cgen_reader = getelementptr inbounds %struct.flatcc_options, ptr %opts, i32 0, i32 37
  store i32 1, ptr %cgen_reader, align 8, !tbaa !14
  %cgen_common_builder = getelementptr inbounds %struct.flatcc_options, ptr %opts, i32 0, i32 36
  store i32 1, ptr %cgen_common_builder, align 4, !tbaa !15
  %cgen_builder = getelementptr inbounds %struct.flatcc_options, ptr %opts, i32 0, i32 38
  store i32 1, ptr %cgen_builder, align 4, !tbaa !16
  %gen_stdout = getelementptr inbounds %struct.flatcc_options, ptr %opts, i32 0, i32 26
  store i32 1, ptr %gen_stdout, align 8, !tbaa !17
  %0 = load ptr, ptr %name, align 8, !tbaa !5
  %call = call ptr @flatcc_create_context(ptr noundef %opts, ptr noundef %0, ptr noundef null, ptr noundef null)
  store ptr %call, ptr %ctx, align 8, !tbaa !5
  %tobool = icmp ne ptr %call, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.1)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %ctx, align 8, !tbaa !5
  %arraydecay = getelementptr inbounds [3735 x i8], ptr %input, i64 0, i64 0
  %call2 = call i32 @flatcc_parse_buffer(ptr noundef %2, ptr noundef %arraydecay, i64 noundef 3735)
  store i32 %call2, ptr %ret, align 4, !tbaa !9
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %3 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.2)
  br label %done

if.else:                                          ; preds = %if.end
  %4 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.3)
  %5 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call7 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.4)
  %6 = load ptr, ptr %ctx, align 8, !tbaa !5
  %call8 = call i32 @flatcc_generate_files(ptr noundef %6)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.else
  %7 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call11 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.5)
  br label %done

if.end12:                                         ; preds = %if.else
  %8 = load ptr, ptr @stdout, align 8, !tbaa !5
  %arraydecay13 = getelementptr inbounds [3735 x i8], ptr %input, i64 0, i64 0
  %call14 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @.str.6, ptr noundef %arraydecay13)
  br label %if.end15

if.end15:                                         ; preds = %if.end12
  store i32 0, ptr %ret, align 4, !tbaa !9
  br label %done

done:                                             ; preds = %if.end15, %if.then10, %if.then4
  %9 = load ptr, ptr %ctx, align 8, !tbaa !5
  call void @flatcc_destroy_context(ptr noundef %9)
  %10 = load i32, ptr %ret, align 4, !tbaa !9
  store i32 %10, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %done, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #4
  call void @llvm.lifetime.end.p0(i64 280, ptr %opts) #4
  call void @llvm.lifetime.end.p0(i64 3735, ptr %input) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %name) #4
  %11 = load i32, ptr %retval, align 4
  ret i32 %11
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

declare void @flatcc_init_options(ptr noundef) #3

declare ptr @flatcc_create_context(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #3

declare i32 @flatcc_parse_buffer(ptr noundef, ptr noundef, i64 noundef) #3

declare i32 @flatcc_generate_files(ptr noundef) #3

declare void @flatcc_destroy_context(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}
!11 = !{!12, !10, i64 176}
!12 = !{!"flatcc_options", !13, i64 0, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !10, i64 72, !10, i64 76, !10, i64 80, !10, i64 84, !10, i64 88, !13, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !10, i64 128, !10, i64 132, !6, i64 136, !6, i64 144, !6, i64 152, !10, i64 160, !10, i64 164, !10, i64 168, !10, i64 172, !10, i64 176, !10, i64 180, !10, i64 184, !10, i64 188, !10, i64 192, !10, i64 196, !10, i64 200, !10, i64 204, !10, i64 208, !10, i64 212, !10, i64 216, !10, i64 220, !10, i64 224, !6, i64 232, !6, i64 240, !6, i64 248, !6, i64 256, !10, i64 264, !10, i64 268, !6, i64 272}
!13 = !{!"long", !7, i64 0}
!14 = !{!12, !10, i64 184}
!15 = !{!12, !10, i64 180}
!16 = !{!12, !10, i64 188}
!17 = !{!12, !10, i64 128}

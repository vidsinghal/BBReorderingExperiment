; ModuleID = 'samples/334.bc'
source_filename = "os.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind null_pointer_is_valid uwtable
define i32 @isc_os_ncpus() #0 !dbg !231 {
entry:
  %ncpus = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ncpus) #5, !dbg !236
  tail call void @llvm.dbg.declare(metadata ptr %ncpus, metadata !234, metadata !DIExpression()), !dbg !237
  store i64 0, ptr %ncpus, align 8, !dbg !237
  %call = call i64 @sysconf_ncpus(), !dbg !238
  store i64 %call, ptr %ncpus, align 8, !dbg !239
  %0 = load i64, ptr %ncpus, align 8, !dbg !240
  %cmp = icmp sle i64 %0, 0, !dbg !242
  br i1 %cmp, label %if.then, label %if.end, !dbg !243

if.then:                                          ; preds = %entry
  store i64 1, ptr %ncpus, align 8, !dbg !244
  br label %if.end, !dbg !245

if.end:                                           ; preds = %if.then, %entry
  %1 = load i64, ptr %ncpus, align 8, !dbg !246
  %conv = trunc i64 %1 to i32, !dbg !247
  call void @llvm.lifetime.end.p0(i64 8, ptr %ncpus) #5, !dbg !248
  ret i32 %conv, !dbg !249
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid uwtable
define internal i64 @sysconf_ncpus() #2 !dbg !250 {
entry:
  %call = call i64 @sysconf(i32 noundef 84) #5, !dbg !253
  ret i64 %call, !dbg !254
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid
declare !dbg !255 i64 @sysconf(i32 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #4

attributes #0 = { nounwind null_pointer_is_valid uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint nounwind null_pointer_is_valid uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!225, !226, !227, !228, !229}
!llvm.ident = !{!230}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !224, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "os.c", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src/lib/isc/unix", checksumkind: CSK_MD5, checksum: "139c519261d8f5003a0b42187e399e86")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 71, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/confname.h", directory: "", checksumkind: CSK_MD5, checksum: "78b98c9476f9b4c41f6f4ea6bcb3195f")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223}
!7 = !DIEnumerator(name: "_SC_ARG_MAX", value: 0)
!8 = !DIEnumerator(name: "_SC_CHILD_MAX", value: 1)
!9 = !DIEnumerator(name: "_SC_CLK_TCK", value: 2)
!10 = !DIEnumerator(name: "_SC_NGROUPS_MAX", value: 3)
!11 = !DIEnumerator(name: "_SC_OPEN_MAX", value: 4)
!12 = !DIEnumerator(name: "_SC_STREAM_MAX", value: 5)
!13 = !DIEnumerator(name: "_SC_TZNAME_MAX", value: 6)
!14 = !DIEnumerator(name: "_SC_JOB_CONTROL", value: 7)
!15 = !DIEnumerator(name: "_SC_SAVED_IDS", value: 8)
!16 = !DIEnumerator(name: "_SC_REALTIME_SIGNALS", value: 9)
!17 = !DIEnumerator(name: "_SC_PRIORITY_SCHEDULING", value: 10)
!18 = !DIEnumerator(name: "_SC_TIMERS", value: 11)
!19 = !DIEnumerator(name: "_SC_ASYNCHRONOUS_IO", value: 12)
!20 = !DIEnumerator(name: "_SC_PRIORITIZED_IO", value: 13)
!21 = !DIEnumerator(name: "_SC_SYNCHRONIZED_IO", value: 14)
!22 = !DIEnumerator(name: "_SC_FSYNC", value: 15)
!23 = !DIEnumerator(name: "_SC_MAPPED_FILES", value: 16)
!24 = !DIEnumerator(name: "_SC_MEMLOCK", value: 17)
!25 = !DIEnumerator(name: "_SC_MEMLOCK_RANGE", value: 18)
!26 = !DIEnumerator(name: "_SC_MEMORY_PROTECTION", value: 19)
!27 = !DIEnumerator(name: "_SC_MESSAGE_PASSING", value: 20)
!28 = !DIEnumerator(name: "_SC_SEMAPHORES", value: 21)
!29 = !DIEnumerator(name: "_SC_SHARED_MEMORY_OBJECTS", value: 22)
!30 = !DIEnumerator(name: "_SC_AIO_LISTIO_MAX", value: 23)
!31 = !DIEnumerator(name: "_SC_AIO_MAX", value: 24)
!32 = !DIEnumerator(name: "_SC_AIO_PRIO_DELTA_MAX", value: 25)
!33 = !DIEnumerator(name: "_SC_DELAYTIMER_MAX", value: 26)
!34 = !DIEnumerator(name: "_SC_MQ_OPEN_MAX", value: 27)
!35 = !DIEnumerator(name: "_SC_MQ_PRIO_MAX", value: 28)
!36 = !DIEnumerator(name: "_SC_VERSION", value: 29)
!37 = !DIEnumerator(name: "_SC_PAGESIZE", value: 30)
!38 = !DIEnumerator(name: "_SC_RTSIG_MAX", value: 31)
!39 = !DIEnumerator(name: "_SC_SEM_NSEMS_MAX", value: 32)
!40 = !DIEnumerator(name: "_SC_SEM_VALUE_MAX", value: 33)
!41 = !DIEnumerator(name: "_SC_SIGQUEUE_MAX", value: 34)
!42 = !DIEnumerator(name: "_SC_TIMER_MAX", value: 35)
!43 = !DIEnumerator(name: "_SC_BC_BASE_MAX", value: 36)
!44 = !DIEnumerator(name: "_SC_BC_DIM_MAX", value: 37)
!45 = !DIEnumerator(name: "_SC_BC_SCALE_MAX", value: 38)
!46 = !DIEnumerator(name: "_SC_BC_STRING_MAX", value: 39)
!47 = !DIEnumerator(name: "_SC_COLL_WEIGHTS_MAX", value: 40)
!48 = !DIEnumerator(name: "_SC_EQUIV_CLASS_MAX", value: 41)
!49 = !DIEnumerator(name: "_SC_EXPR_NEST_MAX", value: 42)
!50 = !DIEnumerator(name: "_SC_LINE_MAX", value: 43)
!51 = !DIEnumerator(name: "_SC_RE_DUP_MAX", value: 44)
!52 = !DIEnumerator(name: "_SC_CHARCLASS_NAME_MAX", value: 45)
!53 = !DIEnumerator(name: "_SC_2_VERSION", value: 46)
!54 = !DIEnumerator(name: "_SC_2_C_BIND", value: 47)
!55 = !DIEnumerator(name: "_SC_2_C_DEV", value: 48)
!56 = !DIEnumerator(name: "_SC_2_FORT_DEV", value: 49)
!57 = !DIEnumerator(name: "_SC_2_FORT_RUN", value: 50)
!58 = !DIEnumerator(name: "_SC_2_SW_DEV", value: 51)
!59 = !DIEnumerator(name: "_SC_2_LOCALEDEF", value: 52)
!60 = !DIEnumerator(name: "_SC_PII", value: 53)
!61 = !DIEnumerator(name: "_SC_PII_XTI", value: 54)
!62 = !DIEnumerator(name: "_SC_PII_SOCKET", value: 55)
!63 = !DIEnumerator(name: "_SC_PII_INTERNET", value: 56)
!64 = !DIEnumerator(name: "_SC_PII_OSI", value: 57)
!65 = !DIEnumerator(name: "_SC_POLL", value: 58)
!66 = !DIEnumerator(name: "_SC_SELECT", value: 59)
!67 = !DIEnumerator(name: "_SC_UIO_MAXIOV", value: 60)
!68 = !DIEnumerator(name: "_SC_IOV_MAX", value: 60)
!69 = !DIEnumerator(name: "_SC_PII_INTERNET_STREAM", value: 61)
!70 = !DIEnumerator(name: "_SC_PII_INTERNET_DGRAM", value: 62)
!71 = !DIEnumerator(name: "_SC_PII_OSI_COTS", value: 63)
!72 = !DIEnumerator(name: "_SC_PII_OSI_CLTS", value: 64)
!73 = !DIEnumerator(name: "_SC_PII_OSI_M", value: 65)
!74 = !DIEnumerator(name: "_SC_T_IOV_MAX", value: 66)
!75 = !DIEnumerator(name: "_SC_THREADS", value: 67)
!76 = !DIEnumerator(name: "_SC_THREAD_SAFE_FUNCTIONS", value: 68)
!77 = !DIEnumerator(name: "_SC_GETGR_R_SIZE_MAX", value: 69)
!78 = !DIEnumerator(name: "_SC_GETPW_R_SIZE_MAX", value: 70)
!79 = !DIEnumerator(name: "_SC_LOGIN_NAME_MAX", value: 71)
!80 = !DIEnumerator(name: "_SC_TTY_NAME_MAX", value: 72)
!81 = !DIEnumerator(name: "_SC_THREAD_DESTRUCTOR_ITERATIONS", value: 73)
!82 = !DIEnumerator(name: "_SC_THREAD_KEYS_MAX", value: 74)
!83 = !DIEnumerator(name: "_SC_THREAD_STACK_MIN", value: 75)
!84 = !DIEnumerator(name: "_SC_THREAD_THREADS_MAX", value: 76)
!85 = !DIEnumerator(name: "_SC_THREAD_ATTR_STACKADDR", value: 77)
!86 = !DIEnumerator(name: "_SC_THREAD_ATTR_STACKSIZE", value: 78)
!87 = !DIEnumerator(name: "_SC_THREAD_PRIORITY_SCHEDULING", value: 79)
!88 = !DIEnumerator(name: "_SC_THREAD_PRIO_INHERIT", value: 80)
!89 = !DIEnumerator(name: "_SC_THREAD_PRIO_PROTECT", value: 81)
!90 = !DIEnumerator(name: "_SC_THREAD_PROCESS_SHARED", value: 82)
!91 = !DIEnumerator(name: "_SC_NPROCESSORS_CONF", value: 83)
!92 = !DIEnumerator(name: "_SC_NPROCESSORS_ONLN", value: 84)
!93 = !DIEnumerator(name: "_SC_PHYS_PAGES", value: 85)
!94 = !DIEnumerator(name: "_SC_AVPHYS_PAGES", value: 86)
!95 = !DIEnumerator(name: "_SC_ATEXIT_MAX", value: 87)
!96 = !DIEnumerator(name: "_SC_PASS_MAX", value: 88)
!97 = !DIEnumerator(name: "_SC_XOPEN_VERSION", value: 89)
!98 = !DIEnumerator(name: "_SC_XOPEN_XCU_VERSION", value: 90)
!99 = !DIEnumerator(name: "_SC_XOPEN_UNIX", value: 91)
!100 = !DIEnumerator(name: "_SC_XOPEN_CRYPT", value: 92)
!101 = !DIEnumerator(name: "_SC_XOPEN_ENH_I18N", value: 93)
!102 = !DIEnumerator(name: "_SC_XOPEN_SHM", value: 94)
!103 = !DIEnumerator(name: "_SC_2_CHAR_TERM", value: 95)
!104 = !DIEnumerator(name: "_SC_2_C_VERSION", value: 96)
!105 = !DIEnumerator(name: "_SC_2_UPE", value: 97)
!106 = !DIEnumerator(name: "_SC_XOPEN_XPG2", value: 98)
!107 = !DIEnumerator(name: "_SC_XOPEN_XPG3", value: 99)
!108 = !DIEnumerator(name: "_SC_XOPEN_XPG4", value: 100)
!109 = !DIEnumerator(name: "_SC_CHAR_BIT", value: 101)
!110 = !DIEnumerator(name: "_SC_CHAR_MAX", value: 102)
!111 = !DIEnumerator(name: "_SC_CHAR_MIN", value: 103)
!112 = !DIEnumerator(name: "_SC_INT_MAX", value: 104)
!113 = !DIEnumerator(name: "_SC_INT_MIN", value: 105)
!114 = !DIEnumerator(name: "_SC_LONG_BIT", value: 106)
!115 = !DIEnumerator(name: "_SC_WORD_BIT", value: 107)
!116 = !DIEnumerator(name: "_SC_MB_LEN_MAX", value: 108)
!117 = !DIEnumerator(name: "_SC_NZERO", value: 109)
!118 = !DIEnumerator(name: "_SC_SSIZE_MAX", value: 110)
!119 = !DIEnumerator(name: "_SC_SCHAR_MAX", value: 111)
!120 = !DIEnumerator(name: "_SC_SCHAR_MIN", value: 112)
!121 = !DIEnumerator(name: "_SC_SHRT_MAX", value: 113)
!122 = !DIEnumerator(name: "_SC_SHRT_MIN", value: 114)
!123 = !DIEnumerator(name: "_SC_UCHAR_MAX", value: 115)
!124 = !DIEnumerator(name: "_SC_UINT_MAX", value: 116)
!125 = !DIEnumerator(name: "_SC_ULONG_MAX", value: 117)
!126 = !DIEnumerator(name: "_SC_USHRT_MAX", value: 118)
!127 = !DIEnumerator(name: "_SC_NL_ARGMAX", value: 119)
!128 = !DIEnumerator(name: "_SC_NL_LANGMAX", value: 120)
!129 = !DIEnumerator(name: "_SC_NL_MSGMAX", value: 121)
!130 = !DIEnumerator(name: "_SC_NL_NMAX", value: 122)
!131 = !DIEnumerator(name: "_SC_NL_SETMAX", value: 123)
!132 = !DIEnumerator(name: "_SC_NL_TEXTMAX", value: 124)
!133 = !DIEnumerator(name: "_SC_XBS5_ILP32_OFF32", value: 125)
!134 = !DIEnumerator(name: "_SC_XBS5_ILP32_OFFBIG", value: 126)
!135 = !DIEnumerator(name: "_SC_XBS5_LP64_OFF64", value: 127)
!136 = !DIEnumerator(name: "_SC_XBS5_LPBIG_OFFBIG", value: 128)
!137 = !DIEnumerator(name: "_SC_XOPEN_LEGACY", value: 129)
!138 = !DIEnumerator(name: "_SC_XOPEN_REALTIME", value: 130)
!139 = !DIEnumerator(name: "_SC_XOPEN_REALTIME_THREADS", value: 131)
!140 = !DIEnumerator(name: "_SC_ADVISORY_INFO", value: 132)
!141 = !DIEnumerator(name: "_SC_BARRIERS", value: 133)
!142 = !DIEnumerator(name: "_SC_BASE", value: 134)
!143 = !DIEnumerator(name: "_SC_C_LANG_SUPPORT", value: 135)
!144 = !DIEnumerator(name: "_SC_C_LANG_SUPPORT_R", value: 136)
!145 = !DIEnumerator(name: "_SC_CLOCK_SELECTION", value: 137)
!146 = !DIEnumerator(name: "_SC_CPUTIME", value: 138)
!147 = !DIEnumerator(name: "_SC_THREAD_CPUTIME", value: 139)
!148 = !DIEnumerator(name: "_SC_DEVICE_IO", value: 140)
!149 = !DIEnumerator(name: "_SC_DEVICE_SPECIFIC", value: 141)
!150 = !DIEnumerator(name: "_SC_DEVICE_SPECIFIC_R", value: 142)
!151 = !DIEnumerator(name: "_SC_FD_MGMT", value: 143)
!152 = !DIEnumerator(name: "_SC_FIFO", value: 144)
!153 = !DIEnumerator(name: "_SC_PIPE", value: 145)
!154 = !DIEnumerator(name: "_SC_FILE_ATTRIBUTES", value: 146)
!155 = !DIEnumerator(name: "_SC_FILE_LOCKING", value: 147)
!156 = !DIEnumerator(name: "_SC_FILE_SYSTEM", value: 148)
!157 = !DIEnumerator(name: "_SC_MONOTONIC_CLOCK", value: 149)
!158 = !DIEnumerator(name: "_SC_MULTI_PROCESS", value: 150)
!159 = !DIEnumerator(name: "_SC_SINGLE_PROCESS", value: 151)
!160 = !DIEnumerator(name: "_SC_NETWORKING", value: 152)
!161 = !DIEnumerator(name: "_SC_READER_WRITER_LOCKS", value: 153)
!162 = !DIEnumerator(name: "_SC_SPIN_LOCKS", value: 154)
!163 = !DIEnumerator(name: "_SC_REGEXP", value: 155)
!164 = !DIEnumerator(name: "_SC_REGEX_VERSION", value: 156)
!165 = !DIEnumerator(name: "_SC_SHELL", value: 157)
!166 = !DIEnumerator(name: "_SC_SIGNALS", value: 158)
!167 = !DIEnumerator(name: "_SC_SPAWN", value: 159)
!168 = !DIEnumerator(name: "_SC_SPORADIC_SERVER", value: 160)
!169 = !DIEnumerator(name: "_SC_THREAD_SPORADIC_SERVER", value: 161)
!170 = !DIEnumerator(name: "_SC_SYSTEM_DATABASE", value: 162)
!171 = !DIEnumerator(name: "_SC_SYSTEM_DATABASE_R", value: 163)
!172 = !DIEnumerator(name: "_SC_TIMEOUTS", value: 164)
!173 = !DIEnumerator(name: "_SC_TYPED_MEMORY_OBJECTS", value: 165)
!174 = !DIEnumerator(name: "_SC_USER_GROUPS", value: 166)
!175 = !DIEnumerator(name: "_SC_USER_GROUPS_R", value: 167)
!176 = !DIEnumerator(name: "_SC_2_PBS", value: 168)
!177 = !DIEnumerator(name: "_SC_2_PBS_ACCOUNTING", value: 169)
!178 = !DIEnumerator(name: "_SC_2_PBS_LOCATE", value: 170)
!179 = !DIEnumerator(name: "_SC_2_PBS_MESSAGE", value: 171)
!180 = !DIEnumerator(name: "_SC_2_PBS_TRACK", value: 172)
!181 = !DIEnumerator(name: "_SC_SYMLOOP_MAX", value: 173)
!182 = !DIEnumerator(name: "_SC_STREAMS", value: 174)
!183 = !DIEnumerator(name: "_SC_2_PBS_CHECKPOINT", value: 175)
!184 = !DIEnumerator(name: "_SC_V6_ILP32_OFF32", value: 176)
!185 = !DIEnumerator(name: "_SC_V6_ILP32_OFFBIG", value: 177)
!186 = !DIEnumerator(name: "_SC_V6_LP64_OFF64", value: 178)
!187 = !DIEnumerator(name: "_SC_V6_LPBIG_OFFBIG", value: 179)
!188 = !DIEnumerator(name: "_SC_HOST_NAME_MAX", value: 180)
!189 = !DIEnumerator(name: "_SC_TRACE", value: 181)
!190 = !DIEnumerator(name: "_SC_TRACE_EVENT_FILTER", value: 182)
!191 = !DIEnumerator(name: "_SC_TRACE_INHERIT", value: 183)
!192 = !DIEnumerator(name: "_SC_TRACE_LOG", value: 184)
!193 = !DIEnumerator(name: "_SC_LEVEL1_ICACHE_SIZE", value: 185)
!194 = !DIEnumerator(name: "_SC_LEVEL1_ICACHE_ASSOC", value: 186)
!195 = !DIEnumerator(name: "_SC_LEVEL1_ICACHE_LINESIZE", value: 187)
!196 = !DIEnumerator(name: "_SC_LEVEL1_DCACHE_SIZE", value: 188)
!197 = !DIEnumerator(name: "_SC_LEVEL1_DCACHE_ASSOC", value: 189)
!198 = !DIEnumerator(name: "_SC_LEVEL1_DCACHE_LINESIZE", value: 190)
!199 = !DIEnumerator(name: "_SC_LEVEL2_CACHE_SIZE", value: 191)
!200 = !DIEnumerator(name: "_SC_LEVEL2_CACHE_ASSOC", value: 192)
!201 = !DIEnumerator(name: "_SC_LEVEL2_CACHE_LINESIZE", value: 193)
!202 = !DIEnumerator(name: "_SC_LEVEL3_CACHE_SIZE", value: 194)
!203 = !DIEnumerator(name: "_SC_LEVEL3_CACHE_ASSOC", value: 195)
!204 = !DIEnumerator(name: "_SC_LEVEL3_CACHE_LINESIZE", value: 196)
!205 = !DIEnumerator(name: "_SC_LEVEL4_CACHE_SIZE", value: 197)
!206 = !DIEnumerator(name: "_SC_LEVEL4_CACHE_ASSOC", value: 198)
!207 = !DIEnumerator(name: "_SC_LEVEL4_CACHE_LINESIZE", value: 199)
!208 = !DIEnumerator(name: "_SC_IPV6", value: 235)
!209 = !DIEnumerator(name: "_SC_RAW_SOCKETS", value: 236)
!210 = !DIEnumerator(name: "_SC_V7_ILP32_OFF32", value: 237)
!211 = !DIEnumerator(name: "_SC_V7_ILP32_OFFBIG", value: 238)
!212 = !DIEnumerator(name: "_SC_V7_LP64_OFF64", value: 239)
!213 = !DIEnumerator(name: "_SC_V7_LPBIG_OFFBIG", value: 240)
!214 = !DIEnumerator(name: "_SC_SS_REPL_MAX", value: 241)
!215 = !DIEnumerator(name: "_SC_TRACE_EVENT_NAME_MAX", value: 242)
!216 = !DIEnumerator(name: "_SC_TRACE_NAME_MAX", value: 243)
!217 = !DIEnumerator(name: "_SC_TRACE_SYS_MAX", value: 244)
!218 = !DIEnumerator(name: "_SC_TRACE_USER_EVENT_MAX", value: 245)
!219 = !DIEnumerator(name: "_SC_XOPEN_STREAMS", value: 246)
!220 = !DIEnumerator(name: "_SC_THREAD_ROBUST_PRIO_INHERIT", value: 247)
!221 = !DIEnumerator(name: "_SC_THREAD_ROBUST_PRIO_PROTECT", value: 248)
!222 = !DIEnumerator(name: "_SC_MINSIGSTKSZ", value: 249)
!223 = !DIEnumerator(name: "_SC_SIGSTKSZ", value: 250)
!224 = !{!5}
!225 = !{i32 7, !"Dwarf Version", i32 5}
!226 = !{i32 2, !"Debug Info Version", i32 3}
!227 = !{i32 1, !"wchar_size", i32 4}
!228 = !{i32 8, !"PIC Level", i32 2}
!229 = !{i32 7, !"uwtable", i32 2}
!230 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!231 = distinct !DISubprogram(name: "isc_os_ncpus", scope: !1, file: !1, line: 53, type: !232, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !233)
!232 = !DISubroutineType(types: !224)
!233 = !{!234}
!234 = !DILocalVariable(name: "ncpus", scope: !231, file: !1, line: 54, type: !235)
!235 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!236 = !DILocation(line: 54, column: 2, scope: !231)
!237 = !DILocation(line: 54, column: 7, scope: !231)
!238 = !DILocation(line: 57, column: 10, scope: !231)
!239 = !DILocation(line: 57, column: 8, scope: !231)
!240 = !DILocation(line: 63, column: 6, scope: !241)
!241 = distinct !DILexicalBlock(scope: !231, file: !1, line: 63, column: 6)
!242 = !DILocation(line: 63, column: 12, scope: !241)
!243 = !DILocation(line: 63, column: 6, scope: !231)
!244 = !DILocation(line: 64, column: 9, scope: !241)
!245 = !DILocation(line: 64, column: 3, scope: !241)
!246 = !DILocation(line: 66, column: 24, scope: !231)
!247 = !DILocation(line: 66, column: 10, scope: !231)
!248 = !DILocation(line: 67, column: 1, scope: !231)
!249 = !DILocation(line: 66, column: 2, scope: !231)
!250 = distinct !DISubprogram(name: "sysconf_ncpus", scope: !1, file: !1, line: 23, type: !251, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!251 = !DISubroutineType(types: !252)
!252 = !{!235}
!253 = !DILocation(line: 25, column: 9, scope: !250)
!254 = !DILocation(line: 25, column: 2, scope: !250)
!255 = !DISubprogram(name: "sysconf", scope: !256, file: !256, line: 640, type: !257, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!256 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!257 = !DISubroutineType(types: !258)
!258 = !{!235, !259}
!259 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)

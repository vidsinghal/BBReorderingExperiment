; ModuleID = 'samples/423.bc'
source_filename = "test_ctf_writer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.utsname = type { [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8] }
%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }

@__const.validate_metadata.parser_output_path = private unnamed_addr constant [26 x i8] c"/tmp/parser_output_XXXXXX\00", align 16
@.str = private unnamed_addr constant [52 x i8] c"Failed create temporary files for metadata parsing.\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [28 x i8] c"# dup2 metadata_fd to STDIN\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [34 x i8] c"# dup2 parser_output_fd to STDOUT\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [34 x i8] c"# dup2 parser_output_fd to STDERR\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [16 x i8] c"ctf-parser-test\00", align 1, !dbg !19
@.str.5 = private unnamed_addr constant [51 x i8] c"# Could not launch the ctf metadata parser process\00", align 1, !dbg !24
@__func__.validate_metadata = private unnamed_addr constant [18 x i8] c"validate_metadata\00", align 1, !dbg !29
@.str.6 = private unnamed_addr constant [18 x i8] c"test_ctf_writer.c\00", align 1, !dbg !35
@.str.7 = private unnamed_addr constant [25 x i8] c"Metadata string is valid\00", align 1, !dbg !38
@.str.8 = private unnamed_addr constant [2 x i8] c"r\00", align 1, !dbg !43
@.str.9 = private unnamed_addr constant [22 x i8] c"fdopen on metadata_fd\00", align 1, !dbg !48
@.str.10 = private unnamed_addr constant [27 x i8] c"fdopen on parser_output_fd\00", align 1, !dbg !53
@.str.11 = private unnamed_addr constant [15 x i8] c"malloc failure\00", align 1, !dbg !58
@.str.12 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !63
@.str.13 = private unnamed_addr constant [15 x i8] c"fclose failure\00", align 1, !dbg !68
@.str.14 = private unnamed_addr constant [12 x i8] c"close error\00", align 1, !dbg !70
@__const.validate_trace.babeltrace_output_path = private unnamed_addr constant [30 x i8] c"/tmp/babeltrace_output_XXXXXX\00", align 16
@.str.15 = private unnamed_addr constant [53 x i8] c"Failed to create a temporary file for trace parsing.\00", align 1, !dbg !75
@.str.16 = private unnamed_addr constant [38 x i8] c"# dup2 babeltrace_output_fd to STDOUT\00", align 1, !dbg !80
@.str.17 = private unnamed_addr constant [38 x i8] c"# dup2 babeltrace_output_fd to STDERR\00", align 1, !dbg !85
@.str.18 = private unnamed_addr constant [11 x i8] c"babeltrace\00", align 1, !dbg !87
@.str.19 = private unnamed_addr constant [42 x i8] c"# Could not launch the babeltrace process\00", align 1, !dbg !92
@__func__.validate_trace = private unnamed_addr constant [15 x i8] c"validate_trace\00", align 1, !dbg !97
@.str.20 = private unnamed_addr constant [42 x i8] c"Babeltrace could read the resulting trace\00", align 1, !dbg !100
@.str.21 = private unnamed_addr constant [31 x i8] c"fdopen on babeltrace_output_fd\00", align 1, !dbg !102
@.str.22 = private unnamed_addr constant [13 x i8] c"malloc error\00", align 1, !dbg !107
@.str.23 = private unnamed_addr constant [13 x i8] c"fclose error\00", align 1, !dbg !112
@.str.24 = private unnamed_addr constant [13 x i8] c"Simple Event\00", align 1, !dbg !114
@.str.25 = private unnamed_addr constant [17 x i8] c"escaping; \22test\22\00", align 1, !dbg !116
@__func__.append_simple_event = private unnamed_addr constant [20 x i8] c"append_simple_event\00", align 1, !dbg !121
@.str.26 = private unnamed_addr constant [53 x i8] c"Accept enumeration mapping strings containing quotes\00", align 1, !dbg !126
@.str.27 = private unnamed_addr constant [27 x i8] c"\09another 'escaping'\0A test\22\00", align 1, !dbg !128
@.str.28 = private unnamed_addr constant [65 x i8] c"Accept enumeration mapping strings containing special characters\00", align 1, !dbg !130
@.str.29 = private unnamed_addr constant [22 x i8] c"event clock int float\00", align 1, !dbg !135
@.str.30 = private unnamed_addr constant [64 x i8] c"Accept enumeration mapping strings containing reserved keywords\00", align 1, !dbg !137
@.str.31 = private unnamed_addr constant [11 x i8] c"enum_field\00", align 1, !dbg !142
@.str.32 = private unnamed_addr constant [31 x i8] c"Add enumeration field to event\00", align 1, !dbg !144
@.str.33 = private unnamed_addr constant [32 x i8] c"Create an unsigned integer type\00", align 1, !dbg !146
@.str.34 = private unnamed_addr constant [14 x i8] c"integer_field\00", align 1, !dbg !151
@.str.35 = private unnamed_addr constant [12 x i8] c"float_field\00", align 1, !dbg !156
@.str.36 = private unnamed_addr constant [55 x i8] c"Instantiate an event containing a single integer field\00", align 1, !dbg !158
@.str.37 = private unnamed_addr constant [63 x i8] c"Use bt_ctf_event_set_payload to set a manually allocated field\00", align 1, !dbg !163
@.str.38 = private unnamed_addr constant [32 x i8] c"Set enumeration container value\00", align 1, !dbg !168
@current_time = internal global i64 0, align 8, !dbg !170
@.str.39 = private unnamed_addr constant [15 x i8] c"Set clock time\00", align 1, !dbg !206
@.str.40 = private unnamed_addr constant [36 x i8] c"Append simple event to trace stream\00", align 1, !dbg !208
@.str.41 = private unnamed_addr constant [34 x i8] c"Flush trace stream with one event\00", align 1, !dbg !213
@.str.42 = private unnamed_addr constant [17 x i8] c"variant_selector\00", align 1, !dbg !215
@.str.43 = private unnamed_addr constant [8 x i8] c"seq_len\00", align 1, !dbg !217
@.str.44 = private unnamed_addr constant [11 x i8] c"a_sequence\00", align 1, !dbg !222
@.str.45 = private unnamed_addr constant [11 x i8] c"UINT3_TYPE\00", align 1, !dbg !224
@.str.46 = private unnamed_addr constant [11 x i8] c"INT16_TYPE\00", align 1, !dbg !226
@.str.47 = private unnamed_addr constant [12 x i8] c"UINT35_TYPE\00", align 1, !dbg !228
@.str.48 = private unnamed_addr constant [17 x i8] c"An unknown entry\00", align 1, !dbg !230
@__func__.append_complex_event = private unnamed_addr constant [21 x i8] c"append_complex_event\00", align 1, !dbg !232
@.str.49 = private unnamed_addr constant [53 x i8] c"Reject a variant field based on an unknown tag value\00", align 1, !dbg !237
@.str.50 = private unnamed_addr constant [25 x i8] c"Add a field to a variant\00", align 1, !dbg !239
@.str.51 = private unnamed_addr constant [9 x i8] c"a_string\00", align 1, !dbg !241
@.str.52 = private unnamed_addr constant [14 x i8] c"variant_value\00", align 1, !dbg !246
@.str.53 = private unnamed_addr constant [16 x i8] c"inner_structure\00", align 1, !dbg !248
@.str.54 = private unnamed_addr constant [6 x i8] c"clock\00", align 1, !dbg !250
@.str.55 = private unnamed_addr constant [55 x i8] c"Reject creation of an event class with an illegal name\00", align 1, !dbg !255
@.str.56 = private unnamed_addr constant [19 x i8] c"Complex Test Event\00", align 1, !dbg !257
@.str.57 = private unnamed_addr constant [22 x i8] c"Create an event class\00", align 1, !dbg !262
@.str.58 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !264
@.str.59 = private unnamed_addr constant [58 x i8] c"Reject addition of a field with an empty name to an event\00", align 1, !dbg !269
@.str.60 = private unnamed_addr constant [11 x i8] c"an_integer\00", align 1, !dbg !274
@.str.61 = private unnamed_addr constant [56 x i8] c"Reject addition of a field with a NULL type to an event\00", align 1, !dbg !276
@.str.62 = private unnamed_addr constant [4 x i8] c"int\00", align 1, !dbg !281
@.str.63 = private unnamed_addr constant [59 x i8] c"Reject addition of a type with an illegal name to an event\00", align 1, !dbg !286
@.str.64 = private unnamed_addr constant [8 x i8] c"uint_35\00", align 1, !dbg !291
@.str.65 = private unnamed_addr constant [47 x i8] c"Add field of type unsigned integer to an event\00", align 1, !dbg !293
@.str.66 = private unnamed_addr constant [7 x i8] c"int_16\00", align 1, !dbg !298
@.str.67 = private unnamed_addr constant [45 x i8] c"Add field of type signed integer to an event\00", align 1, !dbg !303
@.str.68 = private unnamed_addr constant [18 x i8] c"complex_structure\00", align 1, !dbg !308
@.str.69 = private unnamed_addr constant [36 x i8] c"Add composite structure to an event\00", align 1, !dbg !310
@.str.70 = private unnamed_addr constant [54 x i8] c"Reject addition of NULL event class to a stream class\00", align 1, !dbg !312
@.str.71 = private unnamed_addr constant [35 x i8] c"Add an event class to stream class\00", align 1, !dbg !317
@.str.72 = private unnamed_addr constant [28 x i8] c"Instanciate a complex event\00", align 1, !dbg !322
@.str.73 = private unnamed_addr constant [54 x i8] c"Use bt_ctf_event_get_payload to get a field instance \00", align 1, !dbg !324
@.str.74 = private unnamed_addr constant [12 x i8] c"Test string\00", align 1, !dbg !326
@.str.75 = private unnamed_addr constant [30 x i8] c"Set a sequence field's length\00", align 1, !dbg !328
@.str.76 = private unnamed_addr constant [35 x i8] c"Append a complex event to a stream\00", align 1, !dbg !333
@.str.77 = private unnamed_addr constant [42 x i8] c"Flush a stream containing a complex event\00", align 1, !dbg !335
@__func__.type_field_tests = private unnamed_addr constant [17 x i8] c"type_field_tests\00", align 1, !dbg !337
@.str.78 = private unnamed_addr constant [34 x i8] c"Set integer type's base as binary\00", align 1, !dbg !340
@.str.79 = private unnamed_addr constant [35 x i8] c"Set integer type's base as decimal\00", align 1, !dbg !342
@.str.80 = private unnamed_addr constant [42 x i8] c"Reject integer type's base set as unknown\00", align 1, !dbg !344
@.str.81 = private unnamed_addr constant [33 x i8] c"Set integer type's base as octal\00", align 1, !dbg !346
@.str.82 = private unnamed_addr constant [39 x i8] c"Set integer type's base as hexadecimal\00", align 1, !dbg !351
@.str.83 = private unnamed_addr constant [34 x i8] c"Reject unknown integer base value\00", align 1, !dbg !356
@.str.84 = private unnamed_addr constant [38 x i8] c"Set integer type signedness to signed\00", align 1, !dbg !358
@.str.85 = private unnamed_addr constant [40 x i8] c"Set integer type signedness to unsigned\00", align 1, !dbg !360
@.str.86 = private unnamed_addr constant [34 x i8] c"Create a sequence of int16_t type\00", align 1, !dbg !365
@.str.87 = private unnamed_addr constant [21 x i8] c"Create a string type\00", align 1, !dbg !367
@.str.88 = private unnamed_addr constant [38 x i8] c"Reject invalid \22None\22 string encoding\00", align 1, !dbg !370
@.str.89 = private unnamed_addr constant [31 x i8] c"Reject invalid string encoding\00", align 1, !dbg !372
@.str.90 = private unnamed_addr constant [29 x i8] c"Set string encoding to ASCII\00", align 1, !dbg !374
@.str.91 = private unnamed_addr constant [24 x i8] c"Create a structure type\00", align 1, !dbg !379
@.str.92 = private unnamed_addr constant [34 x i8] c"Add a uint8_t type to a structure\00", align 1, !dbg !384
@.str.93 = private unnamed_addr constant [35 x i8] c"Add a sequence type to a structure\00", align 1, !dbg !386
@.str.94 = private unnamed_addr constant [33 x i8] c"Add a string type to a structure\00", align 1, !dbg !388
@.str.95 = private unnamed_addr constant [36 x i8] c"Add a structure type to a structure\00", align 1, !dbg !390
@.str.96 = private unnamed_addr constant [36 x i8] c"Instanciate a signed 16-bit integer\00", align 1, !dbg !392
@.str.97 = private unnamed_addr constant [39 x i8] c"Instanciate an unsigned 12-bit integer\00", align 1, !dbg !394
@.str.98 = private unnamed_addr constant [66 x i8] c"Check an integer type' base can't be modified after instanciation\00", align 1, !dbg !396
@.str.99 = private unnamed_addr constant [73 x i8] c"Check an integer type's signedness can't be modified after instanciation\00", align 1, !dbg !401
@.str.100 = private unnamed_addr constant [82 x i8] c"Check bt_ctf_field_signed_integer_set_value is not allowed on an unsigned integer\00", align 1, !dbg !406
@.str.101 = private unnamed_addr constant [81 x i8] c"Check bt_ctf_field_unsigned_integer_set_value is not allowed on a signed integer\00", align 1, !dbg !411
@.str.102 = private unnamed_addr constant [52 x i8] c"Check -32768 is allowed for a signed 16-bit integer\00", align 1, !dbg !416
@.str.103 = private unnamed_addr constant [51 x i8] c"Check 32767 is allowed for a signed 16-bit integer\00", align 1, !dbg !418
@.str.104 = private unnamed_addr constant [55 x i8] c"Check 32768 is not allowed for a signed 16-bit integer\00", align 1, !dbg !420
@.str.105 = private unnamed_addr constant [56 x i8] c"Check -32769 is not allowed for a signed 16-bit integer\00", align 1, !dbg !422
@.str.106 = private unnamed_addr constant [49 x i8] c"Check -42 is allowed for a signed 16-bit integer\00", align 1, !dbg !424
@.str.107 = private unnamed_addr constant [53 x i8] c"Check 4095 is allowed for an unsigned 12-bit integer\00", align 1, !dbg !429
@.str.108 = private unnamed_addr constant [56 x i8] c"Check 4096 is not allowed for a unsigned 12-bit integer\00", align 1, !dbg !431
@.str.109 = private unnamed_addr constant [50 x i8] c"Check 0 is allowed for an unsigned 12-bit integer\00", align 1, !dbg !433
@.str.110 = private unnamed_addr constant [27 x i8] c"Instanciate a string field\00", align 1, !dbg !438
@.str.111 = private unnamed_addr constant [8 x i8] c"A value\00", align 1, !dbg !440
@.str.112 = private unnamed_addr constant [21 x i8] c"Set a string's value\00", align 1, !dbg !442
@.str.113 = private unnamed_addr constant [72 x i8] c"Create an enumeration type with an unsigned 12-bit integer as container\00", align 1, !dbg !444
@.str.114 = private unnamed_addr constant [6 x i8] c"count\00", align 1, !dbg !449
@.str.115 = private unnamed_addr constant [63 x i8] c"Check enumeration types are validated when creating a sequence\00", align 1, !dbg !451
@.str.116 = private unnamed_addr constant [61 x i8] c"Check enumeration types are validated when creating an array\00", align 1, !dbg !453
@.str.117 = private unnamed_addr constant [12 x i8] c"enumeration\00", align 1, !dbg !458
@.str.118 = private unnamed_addr constant [76 x i8] c"Check enumeration types are validated when adding them as structure members\00", align 1, !dbg !460
@.str.119 = private unnamed_addr constant [59 x i8] c"Check enumeration types are validated before instantiation\00", align 1, !dbg !465
@.str.120 = private unnamed_addr constant [13 x i8] c"Spammy_Event\00", align 1, !dbg !467
@.str.121 = private unnamed_addr constant [8 x i8] c"field_1\00", align 1, !dbg !469
@__func__.packet_resize_test = private unnamed_addr constant [19 x i8] c"packet_resize_test\00", align 1, !dbg !471
@.str.122 = private unnamed_addr constant [63 x i8] c"Add a new event class to a stream class after writing an event\00", align 1, !dbg !474
@.str.123 = private unnamed_addr constant [15 x i8] c"This is a test\00", align 1, !dbg !476
@.str.124 = private unnamed_addr constant [34 x i8] c"Append 100 000 events to a stream\00", align 1, !dbg !478
@.str.125 = private unnamed_addr constant [43 x i8] c"Flush a stream that forces a packet resize\00", align 1, !dbg !480
@__const.main.trace_path = private unnamed_addr constant [22 x i8] c"/tmp/ctfwriter_XXXXXX\00", align 16
@.str.126 = private unnamed_addr constant [11 x i8] c"test_clock\00", align 1, !dbg !485
@.str.127 = private unnamed_addr constant [21 x i8] c"This is a test clock\00", align 1, !dbg !487
@.str.128 = private unnamed_addr constant [68 x i8] c"Usage: tests-ctf-writer path_to_ctf_parser_test path_to_babeltrace\0A\00", align 1, !dbg !489
@.str.129 = private unnamed_addr constant [9 x i8] c"# perror\00", align 1, !dbg !494
@.str.130 = private unnamed_addr constant [10 x i8] c"/metadata\00", align 1, !dbg !496
@__func__.main = private unnamed_addr constant [5 x i8] c"main\00", align 1, !dbg !501
@.str.131 = private unnamed_addr constant [51 x i8] c"bt_ctf_create succeeds in creating trace with path\00", align 1, !dbg !506
@.str.132 = private unnamed_addr constant [5 x i8] c"host\00", align 1, !dbg !508
@.str.133 = private unnamed_addr constant [51 x i8] c"Add host (%s) environment field to writer instance\00", align 1, !dbg !511
@.str.134 = private unnamed_addr constant [11 x i8] c"test_field\00", align 1, !dbg !513
@.str.135 = private unnamed_addr constant [11 x i8] c"test_value\00", align 1, !dbg !515
@.str.136 = private unnamed_addr constant [59 x i8] c"bt_ctf_writer_add_environment_field error with NULL writer\00", align 1, !dbg !517
@.str.137 = private unnamed_addr constant [63 x i8] c"bt_ctf_writer_add_environment_field error with NULL field name\00", align 1, !dbg !519
@.str.138 = private unnamed_addr constant [64 x i8] c"bt_ctf_writer_add_environment_field error with NULL field value\00", align 1, !dbg !521
@.str.139 = private unnamed_addr constant [6 x i8] c"uname\00", align 1, !dbg !523
@.str.140 = private unnamed_addr constant [8 x i8] c"sysname\00", align 1, !dbg !525
@.str.141 = private unnamed_addr constant [54 x i8] c"Add sysname (%s) environment field to writer instance\00", align 1, !dbg !527
@.str.142 = private unnamed_addr constant [9 x i8] c"nodename\00", align 1, !dbg !529
@.str.143 = private unnamed_addr constant [55 x i8] c"Add nodename (%s) environment field to writer instance\00", align 1, !dbg !531
@.str.144 = private unnamed_addr constant [8 x i8] c"release\00", align 1, !dbg !533
@.str.145 = private unnamed_addr constant [54 x i8] c"Add release (%s) environment field to writer instance\00", align 1, !dbg !535
@.str.146 = private unnamed_addr constant [8 x i8] c"version\00", align 1, !dbg !537
@.str.147 = private unnamed_addr constant [54 x i8] c"Add version (%s) environment field to writer instance\00", align 1, !dbg !539
@.str.148 = private unnamed_addr constant [8 x i8] c"machine\00", align 1, !dbg !541
@.str.149 = private unnamed_addr constant [53 x i8] c"Add machine (%s) environment field to writer istance\00", align 1, !dbg !543
@.str.150 = private unnamed_addr constant [7 x i8] c"signed\00", align 1, !dbg !545
@.str.151 = private unnamed_addr constant [28 x i8] c"Illegal clock name rejected\00", align 1, !dbg !547
@.str.152 = private unnamed_addr constant [25 x i8] c"NULL clock name rejected\00", align 1, !dbg !549
@.str.153 = private unnamed_addr constant [26 x i8] c"Clock created sucessfully\00", align 1, !dbg !551
@.str.154 = private unnamed_addr constant [20 x i8] c"Set clock frequency\00", align 1, !dbg !556
@.str.155 = private unnamed_addr constant [27 x i8] c"Set clock offset (seconds)\00", align 1, !dbg !559
@.str.156 = private unnamed_addr constant [17 x i8] c"Set clock offset\00", align 1, !dbg !561
@.str.157 = private unnamed_addr constant [20 x i8] c"Set clock precision\00", align 1, !dbg !563
@.str.158 = private unnamed_addr constant [28 x i8] c"Set clock absolute property\00", align 1, !dbg !565
@.str.159 = private unnamed_addr constant [29 x i8] c"Add clock to writer instance\00", align 1, !dbg !567
@.str.160 = private unnamed_addr constant [57 x i8] c"Verify a clock can't be added twice to a writer instance\00", align 1, !dbg !569
@.str.161 = private unnamed_addr constant [12 x i8] c"test_stream\00", align 1, !dbg !574
@.str.162 = private unnamed_addr constant [20 x i8] c"Create stream class\00", align 1, !dbg !576
@.str.163 = private unnamed_addr constant [26 x i8] c"Set a stream class' clock\00", align 1, !dbg !578
@.str.164 = private unnamed_addr constant [39 x i8] c"Instanciate a stream class from writer\00", align 1, !dbg !580
@.str.165 = private unnamed_addr constant [61 x i8] c"Changes to a stream class that was already instantiated fail\00", align 1, !dbg !582
@.str.166 = private unnamed_addr constant [20 x i8] c"Get metadata string\00", align 1, !dbg !584
@.str.167 = private unnamed_addr constant [10 x i8] c"# opendir\00", align 1, !dbg !586

; Function Attrs: nounwind uwtable
define dso_local void @validate_metadata(ptr noundef %parser_path, ptr noundef %metadata_path) #0 !dbg !600 {
entry:
  %parser_path.addr = alloca ptr, align 8
  %metadata_path.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %parser_output_path = alloca [26 x i8], align 16
  %parser_output_fd = alloca i32, align 4
  %metadata_fd = alloca i32, align 4
  %pid = alloca i32, align 4
  %status = alloca i32, align 4
  %line = alloca ptr, align 8
  %len = alloca i64, align 8
  %metadata_fp = alloca ptr, align 8
  %parser_output_fp = alloca ptr, align 8
  store ptr %parser_path, ptr %parser_path.addr, align 8, !tbaa !677
  tail call void @llvm.dbg.declare(metadata ptr %parser_path.addr, metadata !605, metadata !DIExpression()), !dbg !681
  store ptr %metadata_path, ptr %metadata_path.addr, align 8, !tbaa !677
  tail call void @llvm.dbg.declare(metadata ptr %metadata_path.addr, metadata !606, metadata !DIExpression()), !dbg !682
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #9, !dbg !683
  tail call void @llvm.dbg.declare(metadata ptr %ret, metadata !607, metadata !DIExpression()), !dbg !684
  store i32 0, ptr %ret, align 4, !dbg !684, !tbaa !685
  call void @llvm.lifetime.start.p0(i64 26, ptr %parser_output_path) #9, !dbg !687
  tail call void @llvm.dbg.declare(metadata ptr %parser_output_path, metadata !608, metadata !DIExpression()), !dbg !688
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %parser_output_path, ptr align 16 @__const.validate_metadata.parser_output_path, i64 26, i1 false), !dbg !688
  call void @llvm.lifetime.start.p0(i64 4, ptr %parser_output_fd) #9, !dbg !689
  tail call void @llvm.dbg.declare(metadata ptr %parser_output_fd, metadata !609, metadata !DIExpression()), !dbg !690
  store i32 -1, ptr %parser_output_fd, align 4, !dbg !690, !tbaa !685
  call void @llvm.lifetime.start.p0(i64 4, ptr %metadata_fd) #9, !dbg !689
  tail call void @llvm.dbg.declare(metadata ptr %metadata_fd, metadata !610, metadata !DIExpression()), !dbg !691
  store i32 -1, ptr %metadata_fd, align 4, !dbg !691, !tbaa !685
  %0 = load ptr, ptr %metadata_path.addr, align 8, !dbg !692, !tbaa !677
  %tobool = icmp ne ptr %0, null, !dbg !692
  br i1 %tobool, label %if.end, label %if.then, !dbg !694

if.then:                                          ; preds = %entry
  store i32 -1, ptr %ret, align 4, !dbg !695, !tbaa !685
  br label %result, !dbg !697

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [26 x i8], ptr %parser_output_path, i64 0, i64 0, !dbg !698
  %call = call i32 @mkstemp(ptr noundef %arraydecay), !dbg !699
  store i32 %call, ptr %parser_output_fd, align 4, !dbg !700, !tbaa !685
  %1 = load ptr, ptr %metadata_path.addr, align 8, !dbg !701, !tbaa !677
  %call1 = call i32 (ptr, i32, ...) @open(ptr noundef %1, i32 noundef 0), !dbg !702
  store i32 %call1, ptr %metadata_fd, align 4, !dbg !703, !tbaa !685
  %arraydecay2 = getelementptr inbounds [26 x i8], ptr %parser_output_path, i64 0, i64 0, !dbg !704
  %call3 = call i32 @unlink(ptr noundef %arraydecay2) #9, !dbg !705
  %2 = load i32, ptr %parser_output_fd, align 4, !dbg !706, !tbaa !685
  %cmp = icmp eq i32 %2, -1, !dbg !708
  br i1 %cmp, label %if.then5, label %lor.lhs.false, !dbg !709

lor.lhs.false:                                    ; preds = %if.end
  %3 = load i32, ptr %metadata_fd, align 4, !dbg !710, !tbaa !685
  %cmp4 = icmp eq i32 %3, -1, !dbg !711
  br i1 %cmp4, label %if.then5, label %if.end7, !dbg !712

if.then5:                                         ; preds = %lor.lhs.false, %if.end
  %call6 = call i32 (ptr, ...) @diag(ptr noundef @.str), !dbg !713
  store i32 -1, ptr %ret, align 4, !dbg !715, !tbaa !685
  br label %result, !dbg !716

if.end7:                                          ; preds = %lor.lhs.false
  tail call void @llvm.dbg.declare(metadata ptr %pid, metadata !611, metadata !DIExpression()), !dbg !717
  %call8 = call i32 @fork() #9, !dbg !718
  store i32 %call8, ptr %pid, align 4, !dbg !717, !tbaa !685
  %4 = load i32, ptr %pid, align 4, !dbg !719, !tbaa !685
  %tobool9 = icmp ne i32 %4, 0, !dbg !719
  br i1 %tobool9, label %if.then10, label %if.else, !dbg !720

if.then10:                                        ; preds = %if.end7
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #9, !dbg !721
  tail call void @llvm.dbg.declare(metadata ptr %status, metadata !615, metadata !DIExpression()), !dbg !722
  store i32 0, ptr %status, align 4, !dbg !722, !tbaa !685
  %5 = load i32, ptr %pid, align 4, !dbg !723, !tbaa !685
  %call11 = call i32 @waitpid(i32 noundef %5, ptr noundef %status, i32 noundef 0), !dbg !724
  %6 = load i32, ptr %status, align 4, !dbg !725, !tbaa !685
  %and = and i32 %6, 127, !dbg !725
  %cmp12 = icmp eq i32 %and, 0, !dbg !725
  br i1 %cmp12, label %cond.true, label %cond.false, !dbg !725

cond.true:                                        ; preds = %if.then10
  %7 = load i32, ptr %status, align 4, !dbg !726, !tbaa !685
  %and13 = and i32 %7, 65280, !dbg !726
  %shr = ashr i32 %and13, 8, !dbg !726
  br label %cond.end, !dbg !725

cond.false:                                       ; preds = %if.then10
  br label %cond.end, !dbg !725

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %shr, %cond.true ], [ -1, %cond.false ], !dbg !725
  store i32 %cond, ptr %ret, align 4, !dbg !727, !tbaa !685
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #9, !dbg !728
  br label %if.end27, !dbg !729

if.else:                                          ; preds = %if.end7
  %8 = load i32, ptr %metadata_fd, align 4, !dbg !730, !tbaa !685
  %call14 = call i32 @dup2(i32 noundef %8, i32 noundef 0) #9, !dbg !732
  store i32 %call14, ptr %ret, align 4, !dbg !733, !tbaa !685
  %9 = load i32, ptr %ret, align 4, !dbg !734, !tbaa !685
  %cmp15 = icmp slt i32 %9, 0, !dbg !736
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !737

if.then16:                                        ; preds = %if.else
  call void @perror(ptr noundef @.str.1), !dbg !738
  br label %result, !dbg !740

if.end17:                                         ; preds = %if.else
  %10 = load i32, ptr %parser_output_fd, align 4, !dbg !741, !tbaa !685
  %call18 = call i32 @dup2(i32 noundef %10, i32 noundef 1) #9, !dbg !742
  store i32 %call18, ptr %ret, align 4, !dbg !743, !tbaa !685
  %11 = load i32, ptr %ret, align 4, !dbg !744, !tbaa !685
  %cmp19 = icmp slt i32 %11, 0, !dbg !746
  br i1 %cmp19, label %if.then20, label %if.end21, !dbg !747

if.then20:                                        ; preds = %if.end17
  call void @perror(ptr noundef @.str.2), !dbg !748
  br label %result, !dbg !750

if.end21:                                         ; preds = %if.end17
  %12 = load i32, ptr %parser_output_fd, align 4, !dbg !751, !tbaa !685
  %call22 = call i32 @dup2(i32 noundef %12, i32 noundef 2) #9, !dbg !752
  store i32 %call22, ptr %ret, align 4, !dbg !753, !tbaa !685
  %13 = load i32, ptr %ret, align 4, !dbg !754, !tbaa !685
  %cmp23 = icmp slt i32 %13, 0, !dbg !756
  br i1 %cmp23, label %if.then24, label %if.end25, !dbg !757

if.then24:                                        ; preds = %if.end21
  call void @perror(ptr noundef @.str.3), !dbg !758
  br label %result, !dbg !760

if.end25:                                         ; preds = %if.end21
  %14 = load ptr, ptr %parser_path.addr, align 8, !dbg !761, !tbaa !677
  %call26 = call i32 (ptr, ptr, ...) @execl(ptr noundef %14, ptr noundef @.str.4, ptr noundef null) #9, !dbg !762
  call void @perror(ptr noundef @.str.5), !dbg !763
  call void @exit(i32 noundef -1) #10, !dbg !764
  unreachable, !dbg !764

if.end27:                                         ; preds = %cond.end
  br label %result, !dbg !719

result:                                           ; preds = %if.end27, %if.then24, %if.then20, %if.then16, %if.then5, %if.then
  tail call void @llvm.dbg.label(metadata !618), !dbg !765
  %15 = load i32, ptr %ret, align 4, !dbg !766, !tbaa !685
  %cmp28 = icmp eq i32 %15, 0, !dbg !766
  br i1 %cmp28, label %cond.true29, label %cond.false31, !dbg !766

cond.true29:                                      ; preds = %result
  %call30 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 1, ptr noundef @__func__.validate_metadata, ptr noundef @.str.6, i32 noundef 101, ptr noundef @.str.7), !dbg !766
  br label %cond.end33, !dbg !766

cond.false31:                                     ; preds = %result
  %call32 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 0, ptr noundef @__func__.validate_metadata, ptr noundef @.str.6, i32 noundef 101, ptr noundef @.str.7), !dbg !766
  br label %cond.end33, !dbg !766

cond.end33:                                       ; preds = %cond.false31, %cond.true29
  %cond34 = phi i32 [ %call30, %cond.true29 ], [ %call32, %cond.false31 ], !dbg !766
  %16 = load i32, ptr %ret, align 4, !dbg !767, !tbaa !685
  %tobool35 = icmp ne i32 %16, 0, !dbg !767
  br i1 %tobool35, label %land.lhs.true, label %if.end78, !dbg !768

land.lhs.true:                                    ; preds = %cond.end33
  %17 = load i32, ptr %metadata_fd, align 4, !dbg !769, !tbaa !685
  %cmp36 = icmp sge i32 %17, 0, !dbg !770
  br i1 %cmp36, label %land.lhs.true37, label %if.end78, !dbg !771

land.lhs.true37:                                  ; preds = %land.lhs.true
  %18 = load i32, ptr %parser_output_fd, align 4, !dbg !772, !tbaa !685
  %cmp38 = icmp sge i32 %18, 0, !dbg !773
  br i1 %cmp38, label %if.then39, label %if.end78, !dbg !774

if.then39:                                        ; preds = %land.lhs.true37
  call void @llvm.lifetime.start.p0(i64 8, ptr %line) #9, !dbg !775
  tail call void @llvm.dbg.declare(metadata ptr %line, metadata !619, metadata !DIExpression()), !dbg !776
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #9, !dbg !777
  tail call void @llvm.dbg.declare(metadata ptr %len, metadata !622, metadata !DIExpression()), !dbg !778
  store i64 512, ptr %len, align 8, !dbg !778, !tbaa !779
  call void @llvm.lifetime.start.p0(i64 8, ptr %metadata_fp) #9, !dbg !781
  tail call void @llvm.dbg.declare(metadata ptr %metadata_fp, metadata !625, metadata !DIExpression()), !dbg !782
  store ptr null, ptr %metadata_fp, align 8, !dbg !782, !tbaa !677
  call void @llvm.lifetime.start.p0(i64 8, ptr %parser_output_fp) #9, !dbg !781
  tail call void @llvm.dbg.declare(metadata ptr %parser_output_fp, metadata !675, metadata !DIExpression()), !dbg !783
  store ptr null, ptr %parser_output_fp, align 8, !dbg !783, !tbaa !677
  %19 = load i32, ptr %metadata_fd, align 4, !dbg !784, !tbaa !685
  %call40 = call noalias ptr @fdopen(i32 noundef %19, ptr noundef @.str.8) #9, !dbg !785
  store ptr %call40, ptr %metadata_fp, align 8, !dbg !786, !tbaa !677
  %20 = load ptr, ptr %metadata_fp, align 8, !dbg !787, !tbaa !677
  %tobool41 = icmp ne ptr %20, null, !dbg !787
  br i1 %tobool41, label %if.end43, label %if.then42, !dbg !789

if.then42:                                        ; preds = %if.then39
  call void @perror(ptr noundef @.str.9), !dbg !790
  br label %close_fp, !dbg !792

if.end43:                                         ; preds = %if.then39
  store i32 -1, ptr %metadata_fd, align 4, !dbg !793, !tbaa !685
  %21 = load i32, ptr %parser_output_fd, align 4, !dbg !794, !tbaa !685
  %call44 = call noalias ptr @fdopen(i32 noundef %21, ptr noundef @.str.8) #9, !dbg !795
  store ptr %call44, ptr %parser_output_fp, align 8, !dbg !796, !tbaa !677
  %22 = load ptr, ptr %parser_output_fp, align 8, !dbg !797, !tbaa !677
  %tobool45 = icmp ne ptr %22, null, !dbg !797
  br i1 %tobool45, label %if.end47, label %if.then46, !dbg !799

if.then46:                                        ; preds = %if.end43
  call void @perror(ptr noundef @.str.10), !dbg !800
  br label %close_fp, !dbg !802

if.end47:                                         ; preds = %if.end43
  store i32 -1, ptr %parser_output_fd, align 4, !dbg !803, !tbaa !685
  %23 = load i64, ptr %len, align 8, !dbg !804, !tbaa !779
  %call48 = call noalias ptr @malloc(i64 noundef %23) #11, !dbg !805
  store ptr %call48, ptr %line, align 8, !dbg !806, !tbaa !677
  %24 = load ptr, ptr %line, align 8, !dbg !807, !tbaa !677
  %tobool49 = icmp ne ptr %24, null, !dbg !807
  br i1 %tobool49, label %if.end52, label %if.then50, !dbg !809

if.then50:                                        ; preds = %if.end47
  %call51 = call i32 (ptr, ...) @diag(ptr noundef @.str.11), !dbg !810
  br label %if.end52, !dbg !812

if.end52:                                         ; preds = %if.then50, %if.end47
  %25 = load ptr, ptr %metadata_fp, align 8, !dbg !813, !tbaa !677
  call void @rewind(ptr noundef %25), !dbg !814
  br label %while.cond, !dbg !815

while.cond:                                       ; preds = %while.body, %if.end52
  %26 = load ptr, ptr %metadata_fp, align 8, !dbg !816, !tbaa !677
  %call53 = call i64 @getline(ptr noundef %line, ptr noundef %len, ptr noundef %26), !dbg !817
  %cmp54 = icmp sgt i64 %call53, 0, !dbg !818
  br i1 %cmp54, label %while.body, label %while.end, !dbg !815

while.body:                                       ; preds = %while.cond
  %27 = load ptr, ptr %line, align 8, !dbg !819, !tbaa !677
  %call55 = call i32 (ptr, ...) @diag(ptr noundef @.str.12, ptr noundef %27), !dbg !821
  br label %while.cond, !dbg !815, !llvm.loop !822

while.end:                                        ; preds = %while.cond
  %28 = load ptr, ptr %parser_output_fp, align 8, !dbg !825, !tbaa !677
  call void @rewind(ptr noundef %28), !dbg !826
  br label %while.cond56, !dbg !827

while.cond56:                                     ; preds = %while.body59, %while.end
  %29 = load ptr, ptr %parser_output_fp, align 8, !dbg !828, !tbaa !677
  %call57 = call i64 @getline(ptr noundef %line, ptr noundef %len, ptr noundef %29), !dbg !829
  %cmp58 = icmp sgt i64 %call57, 0, !dbg !830
  br i1 %cmp58, label %while.body59, label %while.end61, !dbg !827

while.body59:                                     ; preds = %while.cond56
  %30 = load ptr, ptr %line, align 8, !dbg !831, !tbaa !677
  %call60 = call i32 (ptr, ...) @diag(ptr noundef @.str.12, ptr noundef %30), !dbg !833
  br label %while.cond56, !dbg !827, !llvm.loop !834

while.end61:                                      ; preds = %while.cond56
  %31 = load ptr, ptr %line, align 8, !dbg !836, !tbaa !677
  call void @free(ptr noundef %31) #9, !dbg !837
  br label %close_fp, !dbg !837

close_fp:                                         ; preds = %while.end61, %if.then46, %if.then42
  tail call void @llvm.dbg.label(metadata !676), !dbg !838
  %32 = load ptr, ptr %metadata_fp, align 8, !dbg !839, !tbaa !677
  %tobool62 = icmp ne ptr %32, null, !dbg !839
  br i1 %tobool62, label %if.then63, label %if.end69, !dbg !841

if.then63:                                        ; preds = %close_fp
  %33 = load ptr, ptr %metadata_fp, align 8, !dbg !842, !tbaa !677
  %call64 = call i32 @fclose(ptr noundef %33), !dbg !845
  %tobool65 = icmp ne i32 %call64, 0, !dbg !845
  br i1 %tobool65, label %if.then66, label %if.end68, !dbg !846

if.then66:                                        ; preds = %if.then63
  %call67 = call i32 (ptr, ...) @diag(ptr noundef @.str.13), !dbg !847
  br label %if.end68, !dbg !849

if.end68:                                         ; preds = %if.then66, %if.then63
  br label %if.end69, !dbg !850

if.end69:                                         ; preds = %if.end68, %close_fp
  %34 = load ptr, ptr %parser_output_fp, align 8, !dbg !851, !tbaa !677
  %tobool70 = icmp ne ptr %34, null, !dbg !851
  br i1 %tobool70, label %if.then71, label %if.end77, !dbg !853

if.then71:                                        ; preds = %if.end69
  %35 = load ptr, ptr %parser_output_fp, align 8, !dbg !854, !tbaa !677
  %call72 = call i32 @fclose(ptr noundef %35), !dbg !857
  %tobool73 = icmp ne i32 %call72, 0, !dbg !857
  br i1 %tobool73, label %if.then74, label %if.end76, !dbg !858

if.then74:                                        ; preds = %if.then71
  %call75 = call i32 (ptr, ...) @diag(ptr noundef @.str.13), !dbg !859
  br label %if.end76, !dbg !861

if.end76:                                         ; preds = %if.then74, %if.then71
  br label %if.end77, !dbg !862

if.end77:                                         ; preds = %if.end76, %if.end69
  call void @llvm.lifetime.end.p0(i64 8, ptr %parser_output_fp) #9, !dbg !863
  call void @llvm.lifetime.end.p0(i64 8, ptr %metadata_fp) #9, !dbg !863
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #9, !dbg !863
  call void @llvm.lifetime.end.p0(i64 8, ptr %line) #9, !dbg !863
  br label %if.end78, !dbg !864

if.end78:                                         ; preds = %if.end77, %land.lhs.true37, %land.lhs.true, %cond.end33
  %36 = load i32, ptr %parser_output_fd, align 4, !dbg !865, !tbaa !685
  %cmp79 = icmp sge i32 %36, 0, !dbg !867
  br i1 %cmp79, label %if.then80, label %if.end86, !dbg !868

if.then80:                                        ; preds = %if.end78
  %37 = load i32, ptr %parser_output_fd, align 4, !dbg !869, !tbaa !685
  %call81 = call i32 @close(i32 noundef %37), !dbg !872
  %tobool82 = icmp ne i32 %call81, 0, !dbg !872
  br i1 %tobool82, label %if.then83, label %if.end85, !dbg !873

if.then83:                                        ; preds = %if.then80
  %call84 = call i32 (ptr, ...) @diag(ptr noundef @.str.14), !dbg !874
  br label %if.end85, !dbg !876

if.end85:                                         ; preds = %if.then83, %if.then80
  br label %if.end86, !dbg !877

if.end86:                                         ; preds = %if.end85, %if.end78
  %38 = load i32, ptr %metadata_fd, align 4, !dbg !878, !tbaa !685
  %cmp87 = icmp sge i32 %38, 0, !dbg !880
  br i1 %cmp87, label %if.then88, label %if.end94, !dbg !881

if.then88:                                        ; preds = %if.end86
  %39 = load i32, ptr %metadata_fd, align 4, !dbg !882, !tbaa !685
  %call89 = call i32 @close(i32 noundef %39), !dbg !885
  %tobool90 = icmp ne i32 %call89, 0, !dbg !885
  br i1 %tobool90, label %if.then91, label %if.end93, !dbg !886

if.then91:                                        ; preds = %if.then88
  %call92 = call i32 (ptr, ...) @diag(ptr noundef @.str.14), !dbg !887
  br label %if.end93, !dbg !889

if.end93:                                         ; preds = %if.then91, %if.then88
  br label %if.end94, !dbg !890

if.end94:                                         ; preds = %if.end93, %if.end86
  call void @llvm.lifetime.end.p0(i64 4, ptr %metadata_fd) #9, !dbg !891
  call void @llvm.lifetime.end.p0(i64 4, ptr %parser_output_fd) #9, !dbg !891
  call void @llvm.lifetime.end.p0(i64 26, ptr %parser_output_path) #9, !dbg !891
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #9, !dbg !891
  ret void, !dbg !891
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

declare !dbg !892 i32 @mkstemp(ptr noundef) #3

declare !dbg !896 i32 @open(ptr noundef, i32 noundef, ...) #3

; Function Attrs: nounwind
declare !dbg !901 i32 @unlink(ptr noundef) #4

declare !dbg !904 i32 @diag(ptr noundef, ...) #3

; Function Attrs: nounwind
declare !dbg !908 i32 @fork() #4

declare !dbg !911 i32 @waitpid(i32 noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
declare !dbg !916 i32 @dup2(i32 noundef, i32 noundef) #4

declare !dbg !919 void @perror(ptr noundef) #3

; Function Attrs: nounwind
declare !dbg !923 i32 @execl(ptr noundef, ptr noundef, ...) #4

; Function Attrs: noreturn nounwind
declare !dbg !926 void @exit(i32 noundef) #5

declare !dbg !929 i32 @_gen_result(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: nounwind
declare !dbg !932 noalias ptr @fdopen(i32 noundef, ptr noundef) #4

; Function Attrs: nounwind allocsize(0)
declare !dbg !935 noalias ptr @malloc(i64 noundef) #6

declare !dbg !938 void @rewind(ptr noundef) #3

; Function Attrs: inlinehint nounwind uwtable
define available_externally i64 @getline(ptr noundef %__lineptr, ptr noundef %__n, ptr noundef %__stream) #7 !dbg !941 {
entry:
  %__lineptr.addr = alloca ptr, align 8
  %__n.addr = alloca ptr, align 8
  %__stream.addr = alloca ptr, align 8
  store ptr %__lineptr, ptr %__lineptr.addr, align 8, !tbaa !677
  tail call void @llvm.dbg.declare(metadata ptr %__lineptr.addr, metadata !949, metadata !DIExpression()), !dbg !952
  store ptr %__n, ptr %__n.addr, align 8, !tbaa !677
  tail call void @llvm.dbg.declare(metadata ptr %__n.addr, metadata !950, metadata !DIExpression()), !dbg !953
  store ptr %__stream, ptr %__stream.addr, align 8, !tbaa !677
  tail call void @llvm.dbg.declare(metadata ptr %__stream.addr, metadata !951, metadata !DIExpression()), !dbg !954
  %0 = load ptr, ptr %__lineptr.addr, align 8, !dbg !955, !tbaa !677
  %1 = load ptr, ptr %__n.addr, align 8, !dbg !956, !tbaa !677
  %2 = load ptr, ptr %__stream.addr, align 8, !dbg !957, !tbaa !677
  %call = call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2), !dbg !958
  ret i64 %call, !dbg !959
}

; Function Attrs: nounwind
declare !dbg !960 void @free(ptr noundef) #4

declare !dbg !963 i32 @fclose(ptr noundef) #3

declare !dbg !966 i32 @close(i32 noundef) #3

; Function Attrs: nounwind uwtable
define dso_local void @validate_trace(ptr noundef %parser_path, ptr noundef %trace_path) #0 !dbg !969 {
entry:
  %parser_path.addr = alloca ptr, align 8
  %trace_path.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %babeltrace_output_path = alloca [30 x i8], align 16
  %babeltrace_output_fd = alloca i32, align 4
  %pid = alloca i32, align 4
  %status = alloca i32, align 4
  %line = alloca ptr, align 8
  %len = alloca i64, align 8
  %babeltrace_output_fp = alloca ptr, align 8
  store ptr %parser_path, ptr %parser_path.addr, align 8, !tbaa !677
  tail call void @llvm.dbg.declare(metadata ptr %parser_path.addr, metadata !971, metadata !DIExpression()), !dbg !987
  store ptr %trace_path, ptr %trace_path.addr, align 8, !tbaa !677
  tail call void @llvm.dbg.declare(metadata ptr %trace_path.addr, metadata !972, metadata !DIExpression()), !dbg !988
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #9, !dbg !989
  tail call void @llvm.dbg.declare(metadata ptr %ret, metadata !973, metadata !DIExpression()), !dbg !990
  store i32 0, ptr %ret, align 4, !dbg !990, !tbaa !685
  call void @llvm.lifetime.start.p0(i64 30, ptr %babeltrace_output_path) #9, !dbg !991
  tail call void @llvm.dbg.declare(metadata ptr %babeltrace_output_path, metadata !974, metadata !DIExpression()), !dbg !992
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %babeltrace_output_path, ptr align 16 @__const.validate_trace.babeltrace_output_path, i64 30, i1 false), !dbg !992
  call void @llvm.lifetime.start.p0(i64 4, ptr %babeltrace_output_fd) #9, !dbg !993
  tail call void @llvm.dbg.declare(metadata ptr %babeltrace_output_fd, metadata !975, metadata !DIExpression()), !dbg !994
  store i32 -1, ptr %babeltrace_output_fd, align 4, !dbg !994, !tbaa !685
  %0 = load ptr, ptr %trace_path.addr, align 8, !dbg !995, !tbaa !677
  %tobool = icmp ne ptr %0, null, !dbg !995
  br i1 %tobool, label %if.end, label %if.then, !dbg !997

if.then:                                          ; preds = %entry
  store i32 -1, ptr %ret, align 4, !dbg !998, !tbaa !685
  br label %result, !dbg !1000

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [30 x i8], ptr %babeltrace_output_path, i64 0, i64 0, !dbg !1001
  %call = call i32 @mkstemp(ptr noundef %arraydecay), !dbg !1002
  store i32 %call, ptr %babeltrace_output_fd, align 4, !dbg !1003, !tbaa !685
  %arraydecay1 = getelementptr inbounds [30 x i8], ptr %babeltrace_output_path, i64 0, i64 0, !dbg !1004
  %call2 = call i32 @unlink(ptr noundef %arraydecay1) #9, !dbg !1005
  %1 = load i32, ptr %babeltrace_output_fd, align 4, !dbg !1006, !tbaa !685
  %cmp = icmp eq i32 %1, -1, !dbg !1008
  br i1 %cmp, label %if.then3, label %if.end5, !dbg !1009

if.then3:                                         ; preds = %if.end
  %call4 = call i32 (ptr, ...) @diag(ptr noundef @.str.15), !dbg !1010
  store i32 -1, ptr %ret, align 4, !dbg !1012, !tbaa !685
  br label %result, !dbg !1013

if.end5:                                          ; preds = %if.end
  tail call void @llvm.dbg.declare(metadata ptr %pid, metadata !976, metadata !DIExpression()), !dbg !1014
  %call6 = call i32 @fork() #9, !dbg !1015
  store i32 %call6, ptr %pid, align 4, !dbg !1014, !tbaa !685
  %2 = load i32, ptr %pid, align 4, !dbg !1016, !tbaa !685
  %tobool7 = icmp ne i32 %2, 0, !dbg !1016
  br i1 %tobool7, label %if.then8, label %if.else, !dbg !1017

if.then8:                                         ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #9, !dbg !1018
  tail call void @llvm.dbg.declare(metadata ptr %status, metadata !977, metadata !DIExpression()), !dbg !1019
  store i32 0, ptr %status, align 4, !dbg !1019, !tbaa !685
  %3 = load i32, ptr %pid, align 4, !dbg !1020, !tbaa !685
  %call9 = call i32 @waitpid(i32 noundef %3, ptr noundef %status, i32 noundef 0), !dbg !1021
  %4 = load i32, ptr %status, align 4, !dbg !1022, !tbaa !685
  %and = and i32 %4, 127, !dbg !1022
  %cmp10 = icmp eq i32 %and, 0, !dbg !1022
  br i1 %cmp10, label %cond.true, label %cond.false, !dbg !1022

cond.true:                                        ; preds = %if.then8
  %5 = load i32, ptr %status, align 4, !dbg !1023, !tbaa !685
  %and11 = and i32 %5, 65280, !dbg !1023
  %shr = ashr i32 %and11, 8, !dbg !1023
  br label %cond.end, !dbg !1022

cond.false:                                       ; preds = %if.then8
  br label %cond.end, !dbg !1022

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %shr, %cond.true ], [ -1, %cond.false ], !dbg !1022
  store i32 %cond, ptr %ret, align 4, !dbg !1024, !tbaa !685
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #9, !dbg !1025
  br label %if.end21, !dbg !1026

if.else:                                          ; preds = %if.end5
  %6 = load i32, ptr %babeltrace_output_fd, align 4, !dbg !1027, !tbaa !685
  %call12 = call i32 @dup2(i32 noundef %6, i32 noundef 1) #9, !dbg !1029
  store i32 %call12, ptr %ret, align 4, !dbg !1030, !tbaa !685
  %7 = load i32, ptr %ret, align 4, !dbg !1031, !tbaa !685
  %cmp13 = icmp slt i32 %7, 0, !dbg !1033
  br i1 %cmp13, label %if.then14, label %if.end15, !dbg !1034

if.then14:                                        ; preds = %if.else
  call void @perror(ptr noundef @.str.16), !dbg !1035
  br label %result, !dbg !1037

if.end15:                                         ; preds = %if.else
  %8 = load i32, ptr %babeltrace_output_fd, align 4, !dbg !1038, !tbaa !685
  %call16 = call i32 @dup2(i32 noundef %8, i32 noundef 2) #9, !dbg !1039
  store i32 %call16, ptr %ret, align 4, !dbg !1040, !tbaa !685
  %9 = load i32, ptr %ret, align 4, !dbg !1041, !tbaa !685
  %cmp17 = icmp slt i32 %9, 0, !dbg !1043
  br i1 %cmp17, label %if.then18, label %if.end19, !dbg !1044

if.then18:                                        ; preds = %if.end15
  call void @perror(ptr noundef @.str.17), !dbg !1045
  br label %result, !dbg !1047

if.end19:                                         ; preds = %if.end15
  %10 = load ptr, ptr %parser_path.addr, align 8, !dbg !1048, !tbaa !677
  %11 = load ptr, ptr %trace_path.addr, align 8, !dbg !1049, !tbaa !677
  %call20 = call i32 (ptr, ptr, ...) @execl(ptr noundef %10, ptr noundef @.str.18, ptr noundef %11, ptr noundef null) #9, !dbg !1050
  call void @perror(ptr noundef @.str.19), !dbg !1051
  call void @exit(i32 noundef -1) #10, !dbg !1052
  unreachable, !dbg !1052

if.end21:                                         ; preds = %cond.end
  br label %result, !dbg !1016

result:                                           ; preds = %if.end21, %if.then18, %if.then14, %if.then3, %if.then
  tail call void @llvm.dbg.label(metadata !980), !dbg !1053
  %12 = load i32, ptr %ret, align 4, !dbg !1054, !tbaa !685
  %cmp22 = icmp eq i32 %12, 0, !dbg !1054
  br i1 %cmp22, label %cond.true23, label %cond.false25, !dbg !1054

cond.true23:                                      ; preds = %result
  %call24 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 1, ptr noundef @__func__.validate_trace, ptr noundef @.str.6, i32 noundef 208, ptr noundef @.str.20), !dbg !1054
  br label %cond.end27, !dbg !1054

cond.false25:                                     ; preds = %result
  %call26 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 0, ptr noundef @__func__.validate_trace, ptr noundef @.str.6, i32 noundef 208, ptr noundef @.str.20), !dbg !1054
  br label %cond.end27, !dbg !1054

cond.end27:                                       ; preds = %cond.false25, %cond.true23
  %cond28 = phi i32 [ %call24, %cond.true23 ], [ %call26, %cond.false25 ], !dbg !1054
  %13 = load i32, ptr %ret, align 4, !dbg !1055, !tbaa !685
  %tobool29 = icmp ne i32 %13, 0, !dbg !1055
  br i1 %tobool29, label %land.lhs.true, label %if.end52, !dbg !1056

land.lhs.true:                                    ; preds = %cond.end27
  %14 = load i32, ptr %babeltrace_output_fd, align 4, !dbg !1057, !tbaa !685
  %cmp30 = icmp sge i32 %14, 0, !dbg !1058
  br i1 %cmp30, label %if.then31, label %if.end52, !dbg !1059

if.then31:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 8, ptr %line) #9, !dbg !1060
  tail call void @llvm.dbg.declare(metadata ptr %line, metadata !981, metadata !DIExpression()), !dbg !1061
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #9, !dbg !1062
  tail call void @llvm.dbg.declare(metadata ptr %len, metadata !984, metadata !DIExpression()), !dbg !1063
  store i64 512, ptr %len, align 8, !dbg !1063, !tbaa !779
  call void @llvm.lifetime.start.p0(i64 8, ptr %babeltrace_output_fp) #9, !dbg !1064
  tail call void @llvm.dbg.declare(metadata ptr %babeltrace_output_fp, metadata !985, metadata !DIExpression()), !dbg !1065
  store ptr null, ptr %babeltrace_output_fp, align 8, !dbg !1065, !tbaa !677
  %15 = load i32, ptr %babeltrace_output_fd, align 4, !dbg !1066, !tbaa !685
  %call32 = call noalias ptr @fdopen(i32 noundef %15, ptr noundef @.str.8) #9, !dbg !1067
  store ptr %call32, ptr %babeltrace_output_fp, align 8, !dbg !1068, !tbaa !677
  %16 = load ptr, ptr %babeltrace_output_fp, align 8, !dbg !1069, !tbaa !677
  %tobool33 = icmp ne ptr %16, null, !dbg !1069
  br i1 %tobool33, label %if.end35, label %if.then34, !dbg !1071

if.then34:                                        ; preds = %if.then31
  call void @perror(ptr noundef @.str.21), !dbg !1072
  br label %close_fp, !dbg !1074

if.end35:                                         ; preds = %if.then31
  store i32 -1, ptr %babeltrace_output_fd, align 4, !dbg !1075, !tbaa !685
  %17 = load i64, ptr %len, align 8, !dbg !1076, !tbaa !779
  %call36 = call noalias ptr @malloc(i64 noundef %17) #11, !dbg !1077
  store ptr %call36, ptr %line, align 8, !dbg !1078, !tbaa !677
  %18 = load ptr, ptr %line, align 8, !dbg !1079, !tbaa !677
  %tobool37 = icmp ne ptr %18, null, !dbg !1079
  br i1 %tobool37, label %if.end40, label %if.then38, !dbg !1081

if.then38:                                        ; preds = %if.end35
  %call39 = call i32 (ptr, ...) @diag(ptr noundef @.str.22), !dbg !1082
  br label %if.end40, !dbg !1084

if.end40:                                         ; preds = %if.then38, %if.end35
  %19 = load ptr, ptr %babeltrace_output_fp, align 8, !dbg !1085, !tbaa !677
  call void @rewind(ptr noundef %19), !dbg !1086
  br label %while.cond, !dbg !1087

while.cond:                                       ; preds = %while.body, %if.end40
  %20 = load ptr, ptr %babeltrace_output_fp, align 8, !dbg !1088, !tbaa !677
  %call41 = call i64 @getline(ptr noundef %line, ptr noundef %len, ptr noundef %20), !dbg !1089
  %cmp42 = icmp sgt i64 %call41, 0, !dbg !1090
  br i1 %cmp42, label %while.body, label %while.end, !dbg !1087

while.body:                                       ; preds = %while.cond
  %21 = load ptr, ptr %line, align 8, !dbg !1091, !tbaa !677
  %call43 = call i32 (ptr, ...) @diag(ptr noundef @.str.12, ptr noundef %21), !dbg !1093
  br label %while.cond, !dbg !1087, !llvm.loop !1094

while.end:                                        ; preds = %while.cond
  %22 = load ptr, ptr %line, align 8, !dbg !1096, !tbaa !677
  call void @free(ptr noundef %22) #9, !dbg !1097
  br label %close_fp, !dbg !1097

close_fp:                                         ; preds = %while.end, %if.then34
  tail call void @llvm.dbg.label(metadata !986), !dbg !1098
  %23 = load ptr, ptr %babeltrace_output_fp, align 8, !dbg !1099, !tbaa !677
  %tobool44 = icmp ne ptr %23, null, !dbg !1099
  br i1 %tobool44, label %if.then45, label %if.end51, !dbg !1101

if.then45:                                        ; preds = %close_fp
  %24 = load ptr, ptr %babeltrace_output_fp, align 8, !dbg !1102, !tbaa !677
  %call46 = call i32 @fclose(ptr noundef %24), !dbg !1105
  %tobool47 = icmp ne i32 %call46, 0, !dbg !1105
  br i1 %tobool47, label %if.then48, label %if.end50, !dbg !1106

if.then48:                                        ; preds = %if.then45
  %call49 = call i32 (ptr, ...) @diag(ptr noundef @.str.23), !dbg !1107
  br label %if.end50, !dbg !1109

if.end50:                                         ; preds = %if.then48, %if.then45
  br label %if.end51, !dbg !1110

if.end51:                                         ; preds = %if.end50, %close_fp
  call void @llvm.lifetime.end.p0(i64 8, ptr %babeltrace_output_fp) #9, !dbg !1111
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #9, !dbg !1111
  call void @llvm.lifetime.end.p0(i64 8, ptr %line) #9, !dbg !1111
  br label %if.end52, !dbg !1112

if.end52:                                         ; preds = %if.end51, %land.lhs.true, %cond.end27
  %25 = load i32, ptr %babeltrace_output_fd, align 4, !dbg !1113, !tbaa !685
  %cmp53 = icmp sge i32 %25, 0, !dbg !1115
  br i1 %cmp53, label %if.then54, label %if.end60, !dbg !1116

if.then54:                                        ; preds = %if.end52
  %26 = load i32, ptr %babeltrace_output_fd, align 4, !dbg !1117, !tbaa !685
  %call55 = call i32 @close(i32 noundef %26), !dbg !1120
  %tobool56 = icmp ne i32 %call55, 0, !dbg !1120
  br i1 %tobool56, label %if.then57, label %if.end59, !dbg !1121

if.then57:                                        ; preds = %if.then54
  %call58 = call i32 (ptr, ...) @diag(ptr noundef @.str.14), !dbg !1122
  br label %if.end59, !dbg !1124

if.end59:                                         ; preds = %if.then57, %if.then54
  br label %if.end60, !dbg !1125

if.end60:                                         ; preds = %if.end59, %if.end52
  call void @llvm.lifetime.end.p0(i64 4, ptr %babeltrace_output_fd) #9, !dbg !1126
  call void @llvm.lifetime.end.p0(i64 30, ptr %babeltrace_output_path) #9, !dbg !1126
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #9, !dbg !1126
  ret void, !dbg !1126
}

; Function Attrs: nounwind uwtable
define dso_local void @append_simple_event(ptr noundef %stream_class, ptr noundef %stream, ptr noundef %clock) #0 !dbg !1127 {
entry:
  %stream_class.addr = alloca ptr, align 8
  %stream.addr = alloca ptr, align 8
  %clock.addr = alloca ptr, align 8
  %simple_event_class = alloca ptr, align 8
  %uint_12_type = alloca ptr, align 8
  %float_type = alloca ptr, align 8
  %enum_type = alloca ptr, align 8
  %simple_event = alloca ptr, align 8
  %integer_field = alloca ptr, align 8
  %float_field = alloca ptr, align 8
  %enum_field = alloca ptr, align 8
  %enum_container_field = alloca ptr, align 8
  store ptr %stream_class, ptr %stream_class.addr, align 8, !tbaa !677
  tail call void @llvm.dbg.declare(metadata ptr %stream_class.addr, metadata !1138, metadata !DIExpression()), !dbg !1160
  store ptr %stream, ptr %stream.addr, align 8, !tbaa !677
  tail call void @llvm.dbg.declare(metadata ptr %stream.addr, metadata !1139, metadata !DIExpression()), !dbg !1161
  store ptr %clock, ptr %clock.addr, align 8, !tbaa !677
  tail call void @llvm.dbg.declare(metadata ptr %clock.addr, metadata !1140, metadata !DIExpression()), !dbg !1162
  call void @llvm.lifetime.start.p0(i64 8, ptr %simple_event_class) #9, !dbg !1163
  tail call void @llvm.dbg.declare(metadata ptr %simple_event_class, metadata !1141, metadata !DIExpression()), !dbg !1164
  %call = call ptr @bt_ctf_event_class_create(ptr noundef @.str.24), !dbg !1165
  store ptr %call, ptr %simple_event_class, align 8, !dbg !1164, !tbaa !677
  call void @llvm.lifetime.start.p0(i64 8, ptr %uint_12_type) #9, !dbg !1166
  tail call void @llvm.dbg.declare(metadata ptr %uint_12_type, metadata !1145, metadata !DIExpression()), !dbg !1167
  %call1 = call ptr @bt_ctf_field_type_integer_create(i32 noundef 12), !dbg !1168
  store ptr %call1, ptr %uint_12_type, align 8, !dbg !1167, !tbaa !677
  call void @llvm.lifetime.start.p0(i64 8, ptr %float_type) #9, !dbg !1169
  tail call void @llvm.dbg.declare(metadata ptr %float_type, metadata !1149, metadata !DIExpression()), !dbg !1170
  %call2 = call ptr @bt_ctf_field_type_floating_point_create(), !dbg !1171
  store ptr %call2, ptr %float_type, align 8, !dbg !1170, !tbaa !677
  call void @llvm.lifetime.start.p0(i64 8, ptr %enum_type) #9, !dbg !1172
  tail call void @llvm.dbg.declare(metadata ptr %enum_type, metadata !1150, metadata !DIExpression()), !dbg !1173
  %0 = load ptr, ptr %uint_12_type, align 8, !dbg !1174, !tbaa !677
  %call3 = call ptr @bt_ctf_field_type_enumeration_create(ptr noundef %0), !dbg !1175
  store ptr %call3, ptr %enum_type, align 8, !dbg !1173, !tbaa !677
  call void @llvm.lifetime.start.p0(i64 8, ptr %simple_event) #9, !dbg !1176
  tail call void @llvm.dbg.declare(metadata ptr %simple_event, metadata !1151, metadata !DIExpression()), !dbg !1177
  call void @llvm.lifetime.start.p0(i64 8, ptr %integer_field) #9, !dbg !1178
  tail call void @llvm.dbg.declare(metadata ptr %integer_field, metadata !1154, metadata !DIExpression()), !dbg !1179
  call void @llvm.lifetime.start.p0(i64 8, ptr %float_field) #9, !dbg !1180
  tail call void @llvm.dbg.declare(metadata ptr %float_field, metadata !1157, metadata !DIExpression()), !dbg !1181
  call void @llvm.lifetime.start.p0(i64 8, ptr %enum_field) #9, !dbg !1182
  tail call void @llvm.dbg.declare(metadata ptr %enum_field, metadata !1158, metadata !DIExpression()), !dbg !1183
  call void @llvm.lifetime.start.p0(i64 8, ptr %enum_container_field) #9, !dbg !1184
  tail call void @llvm.dbg.declare(metadata ptr %enum_container_field, metadata !1159, metadata !DIExpression()), !dbg !1185
  %1 = load ptr, ptr %float_type, align 8, !dbg !1186, !tbaa !677
  %call4 = call i32 @bt_ctf_field_type_set_alignment(ptr noundef %1, i32 noundef 32), !dbg !1187
  %2 = load ptr, ptr %float_type, align 8, !dbg !1188, !tbaa !677
  %call5 = call i32 @bt_ctf_field_type_floating_point_set_exponent_digits(ptr noundef %2, i32 noundef 11), !dbg !1189
  %3 = load ptr, ptr %float_type, align 8, !dbg !1190, !tbaa !677
  %call6 = call i32 @bt_ctf_field_type_floating_point_set_mantissa_digits(ptr noundef %3, i32 noundef 53), !dbg !1191
  %4 = load ptr, ptr %enum_type, align 8, !dbg !1192, !tbaa !677
  %call7 = call i32 @bt_ctf_field_type_enumeration_add_mapping(ptr noundef %4, ptr noundef @.str.25, i64 noundef 0, i64 noundef 0), !dbg !1192
  %cmp = icmp eq i32 %call7, 0, !dbg !1192
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !1192

cond.true:                                        ; preds = %entry
  %call8 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 1, ptr noundef @__func__.append_simple_event, ptr noundef @.str.6, i32 noundef 271, ptr noundef @.str.26), !dbg !1192
  br label %cond.end, !dbg !1192

cond.false:                                       ; preds = %entry
  %call9 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 0, ptr noundef @__func__.append_simple_event, ptr noundef @.str.6, i32 noundef 271, ptr noundef @.str.26), !dbg !1192
  br label %cond.end, !dbg !1192

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call8, %cond.true ], [ %call9, %cond.false ], !dbg !1192
  %5 = load ptr, ptr %enum_type, align 8, !dbg !1193, !tbaa !677
  %call10 = call i32 @bt_ctf_field_type_enumeration_add_mapping(ptr noundef %5, ptr noundef @.str.27, i64 noundef 1, i64 noundef 4), !dbg !1193
  %cmp11 = icmp eq i32 %call10, 0, !dbg !1193
  br i1 %cmp11, label %cond.true12, label %cond.false14, !dbg !1193

cond.true12:                                      ; preds = %cond.end
  %call13 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 1, ptr noundef @__func__.append_simple_event, ptr noundef @.str.6, i32 noundef 274, ptr noundef @.str.28), !dbg !1193
  br label %cond.end16, !dbg !1193

cond.false14:                                     ; preds = %cond.end
  %call15 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 0, ptr noundef @__func__.append_simple_event, ptr noundef @.str.6, i32 noundef 274, ptr noundef @.str.28), !dbg !1193
  br label %cond.end16, !dbg !1193

cond.end16:                                       ; preds = %cond.false14, %cond.true12
  %cond17 = phi i32 [ %call13, %cond.true12 ], [ %call15, %cond.false14 ], !dbg !1193
  %6 = load ptr, ptr %enum_type, align 8, !dbg !1194, !tbaa !677
  %call18 = call i32 @bt_ctf_field_type_enumeration_add_mapping(ptr noundef %6, ptr noundef @.str.29, i64 noundef 5, i64 noundef 22), !dbg !1194
  %cmp19 = icmp eq i32 %call18, 0, !dbg !1194
  br i1 %cmp19, label %cond.true20, label %cond.false22, !dbg !1194

cond.true20:                                      ; preds = %cond.end16
  %call21 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 1, ptr noundef @__func__.append_simple_event, ptr noundef @.str.6, i32 noundef 277, ptr noundef @.str.30), !dbg !1194
  br label %cond.end24, !dbg !1194

cond.false22:                                     ; preds = %cond.end16
  %call23 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 0, ptr noundef @__func__.append_simple_event, ptr noundef @.str.6, i32 noundef 277, ptr noundef @.str.30), !dbg !1194
  br label %cond.end24, !dbg !1194

cond.end24:                                       ; preds = %cond.false22, %cond.true20
  %cond25 = phi i32 [ %call21, %cond.true20 ], [ %call23, %cond.false22 ], !dbg !1194
  %7 = load ptr, ptr %simple_event_class, align 8, !dbg !1195, !tbaa !677
  %8 = load ptr, ptr %enum_type, align 8, !dbg !1195, !tbaa !677
  %call26 = call i32 @bt_ctf_event_class_add_field(ptr noundef %7, ptr noundef %8, ptr noundef @.str.31), !dbg !1195
  %cmp27 = icmp eq i32 %call26, 0, !dbg !1195
  br i1 %cmp27, label %cond.true28, label %cond.false30, !dbg !1195

cond.true28:                                      ; preds = %cond.end24
  %call29 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 1, ptr noundef @__func__.append_simple_event, ptr noundef @.str.6, i32 noundef 279, ptr noundef @.str.32), !dbg !1195
  br label %cond.end32, !dbg !1195

cond.false30:                                     ; preds = %cond.end24
  %call31 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 0, ptr noundef @__func__.append_simple_event, ptr noundef @.str.6, i32 noundef 279, ptr noundef @.str.32), !dbg !1195
  br label %cond.end32, !dbg !1195

cond.end32:                                       ; preds = %cond.false30, %cond.true28
  %cond33 = phi i32 [ %call29, %cond.true28 ], [ %call31, %cond.false30 ], !dbg !1195
  %9 = load ptr, ptr %uint_12_type, align 8, !dbg !1196, !tbaa !677
  %tobool = icmp ne ptr %9, null, !dbg !1196
  br i1 %tobool, label %cond.true34, label %cond.false36, !dbg !1196

cond.true34:                                      ; preds = %cond.end32
  %call35 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 1, ptr noundef @__func__.append_simple_event, ptr noundef @.str.6, i32 noundef 281, ptr noundef @.str.33), !dbg !1196
  br label %cond.end38, !dbg !1196

cond.false36:                                     ; preds = %cond.end32
  %call37 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 0, ptr noundef @__func__.append_simple_event, ptr noundef @.str.6, i32 noundef 281, ptr noundef @.str.33), !dbg !1196
  br label %cond.end38, !dbg !1196

cond.end38:                                       ; preds = %cond.false36, %cond.true34
  %cond39 = phi i32 [ %call35, %cond.true34 ], [ %call37, %cond.false36 ], !dbg !1196
  %10 = load ptr, ptr %simple_event_class, align 8, !dbg !1197, !tbaa !677
  %11 = load ptr, ptr %uint_12_type, align 8, !dbg !1198, !tbaa !677
  %call40 = call i32 @bt_ctf_event_class_add_field(ptr noundef %10, ptr noundef %11, ptr noundef @.str.34), !dbg !1199
  %12 = load ptr, ptr %simple_event_class, align 8, !dbg !1200, !tbaa !677
  %13 = load ptr, ptr %float_type, align 8, !dbg !1201, !tbaa !677
  %call41 = call i32 @bt_ctf_event_class_add_field(ptr noundef %12, ptr noundef %13, ptr noundef @.str.35), !dbg !1202
  %14 = load ptr, ptr %stream_class.addr, align 8, !dbg !1203, !tbaa !677
  %15 = load ptr, ptr %simple_event_class, align 8, !dbg !1204, !tbaa !677
  %call42 = call i32 @bt_ctf_stream_class_add_event_class(ptr noundef %14, ptr noundef %15), !dbg !1205
  %16 = load ptr, ptr %simple_event_class, align 8, !dbg !1206, !tbaa !677
  %call43 = call ptr @bt_ctf_event_create(ptr noundef %16), !dbg !1207
  store ptr %call43, ptr %simple_event, align 8, !dbg !1208, !tbaa !677
  %17 = load ptr, ptr %simple_event, align 8, !dbg !1209, !tbaa !677
  %tobool44 = icmp ne ptr %17, null, !dbg !1209
  br i1 %tobool44, label %cond.true45, label %cond.false47, !dbg !1209

cond.true45:                                      ; preds = %cond.end38
  %call46 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 1, ptr noundef @__func__.append_simple_event, ptr noundef @.str.6, i32 noundef 292, ptr noundef @.str.36), !dbg !1209
  br label %cond.end49, !dbg !1209

cond.false47:                                     ; preds = %cond.end38
  %call48 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 0, ptr noundef @__func__.append_simple_event, ptr noundef @.str.6, i32 noundef 292, ptr noundef @.str.36), !dbg !1209
  br label %cond.end49, !dbg !1209

cond.end49:                                       ; preds = %cond.false47, %cond.true45
  %cond50 = phi i32 [ %call46, %cond.true45 ], [ %call48, %cond.false47 ], !dbg !1209
  %18 = load ptr, ptr %uint_12_type, align 8, !dbg !1210, !tbaa !677
  %call51 = call ptr @bt_ctf_field_create(ptr noundef %18), !dbg !1211
  store ptr %call51, ptr %integer_field, align 8, !dbg !1212, !tbaa !677
  %19 = load ptr, ptr %integer_field, align 8, !dbg !1213, !tbaa !677
  %call52 = call i32 @bt_ctf_field_unsigned_integer_set_value(ptr noundef %19, i64 noundef 42), !dbg !1214
  %20 = load ptr, ptr %simple_event, align 8, !dbg !1215, !tbaa !677
  %21 = load ptr, ptr %integer_field, align 8, !dbg !1215, !tbaa !677
  %call53 = call i32 @bt_ctf_event_set_payload(ptr noundef %20, ptr noundef @.str.34, ptr noundef %21), !dbg !1215
  %cmp54 = icmp eq i32 %call53, 0, !dbg !1215
  br i1 %cmp54, label %cond.true55, label %cond.false57, !dbg !1215

cond.true55:                                      ; preds = %cond.end49
  %call56 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 1, ptr noundef @__func__.append_simple_event, ptr noundef @.str.6, i32 noundef 297, ptr noundef @.str.37), !dbg !1215
  br label %cond.end59, !dbg !1215

cond.false57:                                     ; preds = %cond.end49
  %call58 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 0, ptr noundef @__func__.append_simple_event, ptr noundef @.str.6, i32 noundef 297, ptr noundef @.str.37), !dbg !1215
  br label %cond.end59, !dbg !1215

cond.end59:                                       ; preds = %cond.false57, %cond.true55
  %cond60 = phi i32 [ %call56, %cond.true55 ], [ %call58, %cond.false57 ], !dbg !1215
  %22 = load ptr, ptr %simple_event, align 8, !dbg !1216, !tbaa !677
  %call61 = call ptr @bt_ctf_event_get_payload(ptr noundef %22, ptr noundef @.str.35), !dbg !1217
  store ptr %call61, ptr %float_field, align 8, !dbg !1218, !tbaa !677
  %23 = load ptr, ptr %float_field, align 8, !dbg !1219, !tbaa !677
  %call62 = call i32 @bt_ctf_field_floating_point_set_value(ptr noundef %23, double noundef 3.141500e+00), !dbg !1220
  %24 = load ptr, ptr %enum_type, align 8, !dbg !1221, !tbaa !677
  %call63 = call ptr @bt_ctf_field_create(ptr noundef %24), !dbg !1222
  store ptr %call63, ptr %enum_field, align 8, !dbg !1223, !tbaa !677
  %25 = load ptr, ptr %enum_field, align 8, !dbg !1224, !tbaa !677
  %call64 = call ptr @bt_ctf_field_enumeration_get_container(ptr noundef %25), !dbg !1225
  store ptr %call64, ptr %enum_container_field, align 8, !dbg !1226, !tbaa !677
  %26 = load ptr, ptr %enum_container_field, align 8, !dbg !1227, !tbaa !677
  %call65 = call i32 @bt_ctf_field_unsigned_integer_set_value(ptr noundef %26, i64 noundef 1), !dbg !1227
  %cmp66 = icmp eq i32 %call65, 0, !dbg !1227
  br i1 %cmp66, label %cond.true67, label %cond.false69, !dbg !1227

cond.true67:                                      ; preds = %cond.end59
  %call68 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 1, ptr noundef @__func__.append_simple_event, ptr noundef @.str.6, i32 noundef 306, ptr noundef @.str.38), !dbg !1227
  br label %cond.end71, !dbg !1227

cond.false69:                                     ; preds = %cond.end59
  %call70 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 0, ptr noundef @__func__.append_simple_event, ptr noundef @.str.6, i32 noundef 306, ptr noundef @.str.38), !dbg !1227
  br label %cond.end71, !dbg !1227

cond.end71:                                       ; preds = %cond.false69, %cond.true67
  %cond72 = phi i32 [ %call68, %cond.true67 ], [ %call70, %cond.false69 ], !dbg !1227
  %27 = load ptr, ptr %simple_event, align 8, !dbg !1228, !tbaa !677
  %28 = load ptr, ptr %enum_field, align 8, !dbg !1229, !tbaa !677
  %call73 = call i32 @bt_ctf_event_set_payload(ptr noundef %27, ptr noundef @.str.31, ptr noundef %28), !dbg !1230
  %29 = load ptr, ptr %clock.addr, align 8, !dbg !1231, !tbaa !677
  %30 = load i64, ptr @current_time, align 8, !dbg !1231, !tbaa !779
  %call74 = call i32 @bt_ctf_clock_set_time(ptr noundef %29, i64 noundef %30), !dbg !1231
  %cmp75 = icmp eq i32 %call74, 0, !dbg !1231
  br i1 %cmp75, label %cond.true76, label %cond.false78, !dbg !1231

cond.true76:                                      ; preds = %cond.end71
  %call77 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 1, ptr noundef @__func__.append_simple_event, ptr noundef @.str.6, i32 noundef 309, ptr noundef @.str.39), !dbg !1231
  br label %cond.end80, !dbg !1231

cond.false78:                                     ; preds = %cond.end71
  %call79 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 0, ptr noundef @__func__.append_simple_event, ptr noundef @.str.6, i32 noundef 309, ptr noundef @.str.39), !dbg !1231
  br label %cond.end80, !dbg !1231

cond.end80:                                       ; preds = %cond.false78, %cond.true76
  %cond81 = phi i32 [ %call77, %cond.true76 ], [ %call79, %cond.false78 ], !dbg !1231
  %31 = load ptr, ptr %stream.addr, align 8, !dbg !1232, !tbaa !677
  %32 = load ptr, ptr %simple_event, align 8, !dbg !1232, !tbaa !677
  %call82 = call i32 @bt_ctf_stream_append_event(ptr noundef %31, ptr noundef %32), !dbg !1232
  %cmp83 = icmp eq i32 %call82, 0, !dbg !1232
  br i1 %cmp83, label %cond.true84, label %cond.false86, !dbg !1232

cond.true84:                                      ; preds = %cond.end80
  %call85 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 1, ptr noundef @__func__.append_simple_event, ptr noundef @.str.6, i32 noundef 312, ptr noundef @.str.40), !dbg !1232
  br label %cond.end88, !dbg !1232

cond.false86:                                     ; preds = %cond.end80
  %call87 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 0, ptr noundef @__func__.append_simple_event, ptr noundef @.str.6, i32 noundef 312, ptr noundef @.str.40), !dbg !1232
  br label %cond.end88, !dbg !1232

cond.end88:                                       ; preds = %cond.false86, %cond.true84
  %cond89 = phi i32 [ %call85, %cond.true84 ], [ %call87, %cond.false86 ], !dbg !1232
  %33 = load ptr, ptr %stream.addr, align 8, !dbg !1233, !tbaa !677
  %call90 = call i32 @bt_ctf_stream_flush(ptr noundef %33), !dbg !1233
  %cmp91 = icmp eq i32 %call90, 0, !dbg !1233
  br i1 %cmp91, label %cond.true92, label %cond.false94, !dbg !1233

cond.true92:                                      ; preds = %cond.end88
  %call93 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 1, ptr noundef @__func__.append_simple_event, ptr noundef @.str.6, i32 noundef 315, ptr noundef @.str.41), !dbg !1233
  br label %cond.end96, !dbg !1233

cond.false94:                                     ; preds = %cond.end88
  %call95 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 0, ptr noundef @__func__.append_simple_event, ptr noundef @.str.6, i32 noundef 315, ptr noundef @.str.41), !dbg !1233
  br label %cond.end96, !dbg !1233

cond.end96:                                       ; preds = %cond.false94, %cond.true92
  %cond97 = phi i32 [ %call93, %cond.true92 ], [ %call95, %cond.false94 ], !dbg !1233
  %34 = load ptr, ptr %simple_event_class, align 8, !dbg !1234, !tbaa !677
  call void @bt_ctf_event_class_put(ptr noundef %34), !dbg !1235
  %35 = load ptr, ptr %simple_event, align 8, !dbg !1236, !tbaa !677
  call void @bt_ctf_event_put(ptr noundef %35), !dbg !1237
  %36 = load ptr, ptr %uint_12_type, align 8, !dbg !1238, !tbaa !677
  call void @bt_ctf_field_type_put(ptr noundef %36), !dbg !1239
  %37 = load ptr, ptr %float_type, align 8, !dbg !1240, !tbaa !677
  call void @bt_ctf_field_type_put(ptr noundef %37), !dbg !1241
  %38 = load ptr, ptr %enum_type, align 8, !dbg !1242, !tbaa !677
  call void @bt_ctf_field_type_put(ptr noundef %38), !dbg !1243
  %39 = load ptr, ptr %integer_field, align 8, !dbg !1244, !tbaa !677
  call void @bt_ctf_field_put(ptr noundef %39), !dbg !1245
  %40 = load ptr, ptr %float_field, align 8, !dbg !1246, !tbaa !677
  call void @bt_ctf_field_put(ptr noundef %40), !dbg !1247
  %41 = load ptr, ptr %enum_field, align 8, !dbg !1248, !tbaa !677
  call void @bt_ctf_field_put(ptr noundef %41), !dbg !1249
  %42 = load ptr, ptr %enum_container_field, align 8, !dbg !1250, !tbaa !677
  call void @bt_ctf_field_put(ptr noundef %42), !dbg !1251
  call void @llvm.lifetime.end.p0(i64 8, ptr %enum_container_field) #9, !dbg !1252
  call void @llvm.lifetime.end.p0(i64 8, ptr %enum_field) #9, !dbg !1252
  call void @llvm.lifetime.end.p0(i64 8, ptr %float_field) #9, !dbg !1252
  call void @llvm.lifetime.end.p0(i64 8, ptr %integer_field) #9, !dbg !1252
  call void @llvm.lifetime.end.p0(i64 8, ptr %simple_event) #9, !dbg !1252
  call void @llvm.lifetime.end.p0(i64 8, ptr %enum_type) #9, !dbg !1252
  call void @llvm.lifetime.end.p0(i64 8, ptr %float_type) #9, !dbg !1252
  call void @llvm.lifetime.end.p0(i64 8, ptr %uint_12_type) #9, !dbg !1252
  call void @llvm.lifetime.end.p0(i64 8, ptr %simple_event_class) #9, !dbg !1252
  ret void, !dbg !1252
}

declare !dbg !1253 ptr @bt_ctf_event_class_create(ptr noundef) #3

declare !dbg !1256 ptr @bt_ctf_field_type_integer_create(i32 noundef) #3

declare !dbg !1259 ptr @bt_ctf_field_type_floating_point_create() #3

declare !dbg !1262 ptr @bt_ctf_field_type_enumeration_create(ptr noundef) #3

declare !dbg !1265 i32 @bt_ctf_field_type_set_alignment(ptr noundef, i32 noundef) #3

declare !dbg !1268 i32 @bt_ctf_field_type_floating_point_set_exponent_digits(ptr noundef, i32 noundef) #3

declare !dbg !1269 i32 @bt_ctf_field_type_floating_point_set_mantissa_digits(ptr noundef, i32 noundef) #3

declare !dbg !1270 i32 @bt_ctf_field_type_enumeration_add_mapping(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #3

declare !dbg !1276 i32 @bt_ctf_event_class_add_field(ptr noundef, ptr noundef, ptr noundef) #3

declare !dbg !1279 i32 @bt_ctf_stream_class_add_event_class(ptr noundef, ptr noundef) #3

declare !dbg !1282 ptr @bt_ctf_event_create(ptr noundef) #3

declare !dbg !1285 ptr @bt_ctf_field_create(ptr noundef) #3

declare !dbg !1289 i32 @bt_ctf_field_unsigned_integer_set_value(ptr noundef, i64 noundef) #3

declare !dbg !1292 i32 @bt_ctf_event_set_payload(ptr noundef, ptr noundef, ptr noundef) #3

declare !dbg !1295 ptr @bt_ctf_event_get_payload(ptr noundef, ptr noundef) #3

declare !dbg !1298 i32 @bt_ctf_field_floating_point_set_value(ptr noundef, double noundef) #3

declare !dbg !1302 ptr @bt_ctf_field_enumeration_get_container(ptr noundef) #3

declare !dbg !1305 i32 @bt_ctf_clock_set_time(ptr noundef, i64 noundef) #3

declare !dbg !1309 i32 @bt_ctf_stream_append_event(ptr noundef, ptr noundef) #3

declare !dbg !1312 i32 @bt_ctf_stream_flush(ptr noundef) #3

declare !dbg !1315 void @bt_ctf_event_class_put(ptr noundef) #3

declare !dbg !1318 void @bt_ctf_event_put(ptr noundef) #3

declare !dbg !1321 void @bt_ctf_field_type_put(ptr noundef) #3

declare !dbg !1324 void @bt_ctf_field_put(ptr noundef) #3

; Function Attrs: nounwind uwtable
define dso_local void @append_complex_event(ptr noundef %stream_class, ptr noundef %stream, ptr noundef %clock) #0 !dbg !1327 {
entry:
  %stream_class.addr = alloca ptr, align 8
  %stream.addr = alloca ptr, align 8
  %clock.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %uint_35_type = alloca ptr, align 8
  %int_16_type = alloca ptr, align 8
  %uint_3_type = alloca ptr, align 8
  %enum_variant_type = alloca ptr, align 8
  %variant_type = alloca ptr, align 8
  %string_type = alloca ptr, align 8
  %sequence_type = alloca ptr, align 8
  %inner_structure_type = alloca ptr, align 8
  %complex_structure_type = alloca ptr, align 8
  %event_class = alloca ptr, align 8
  %event = alloca ptr, align 8
  %uint_35_field = alloca ptr, align 8
  %int_16_field = alloca ptr, align 8
  %a_string_field = alloca ptr, align 8
  %inner_structure_field = alloca ptr, align 8
  %complex_structure_field = alloca ptr, align 8
  %a_sequence_field = alloca ptr, align 8
  %enum_variant_field = alloca ptr, align 8
  %enum_container_field = alloca ptr, align 8
  %variant_field = alloca ptr, align 8
  store ptr %stream_class, ptr %stream_class.addr, align 8, !tbaa !677
  tail call void @llvm.dbg.declare(metadata ptr %stream_class.addr, metadata !1329, metadata !DIExpression()), !dbg !1353
  store ptr %stream, ptr %stream.addr, align 8, !tbaa !677
  tail call void @llvm.dbg.declare(metadata ptr %stream.addr, metadata !1330, metadata !DIExpression()), !dbg !1354
  store ptr %clock, ptr %clock.addr, align 8, !tbaa !677
  tail call void @llvm.dbg.declare(metadata ptr %clock.addr, metadata !1331, metadata !DIExpression()), !dbg !1355
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9, !dbg !1356
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !1332, metadata !DIExpression()), !dbg !1357
  call void @llvm.lifetime.start.p0(i64 8, ptr %uint_35_type) #9, !dbg !1358
  tail call void @llvm.dbg.declare(metadata ptr %uint_35_type, metadata !1333, metadata !DIExpression()), !dbg !1359
  %call = call ptr @bt_ctf_field_type_integer_create(i32 noundef 35), !dbg !1360
  store ptr %call, ptr %uint_35_type, align 8, !dbg !1359, !tbaa !677
  call void @llvm.lifetime.start.p0(i64 8, ptr %int_16_type) #9, !dbg !1361
  tail call void @llvm.dbg.declare(metadata ptr %int_16_type, metadata !1334, metadata !DIExpression()), !dbg !1362
  %call1 = call ptr @bt_ctf_field_type_integer_create(i32 noundef 16), !dbg !1363
  store ptr %call1, ptr %int_16_type, align 8, !dbg !1362, !tbaa !677
  call void @llvm.lifetime.start.p0(i64 8, ptr %uint_3_type) #9, !dbg !1364
  tail call void @llvm.dbg.declare(metadata ptr %uint_3_type, metadata !1335, metadata !DIExpression()), !dbg !1365
  %call2 = call ptr @bt_ctf_field_type_integer_create(i32 noundef 3), !dbg !1366
  store ptr %call2, ptr %uint_3_type, align 8, !dbg !1365, !tbaa !677
  call void @llvm.lifetime.start.p0(i64 8, ptr %enum_variant_type) #9, !dbg !1367
  tail call void @llvm.dbg.declare(metadata ptr %enum_variant_type, metadata !1336, metadata !DIExpression()), !dbg !1368
  %0 = load ptr, ptr %uint_3_type, align 8, !dbg !1369, !tbaa !677
  %call3 = call ptr @bt_ctf_field_type_enumeration_create(ptr noundef %0), !dbg !1370
  store ptr %call3, ptr %enum_variant_type, align 8, !dbg !1368, !tbaa !677
  call void @llvm.lifetime.start.p0(i64 8, ptr %variant_type) #9, !dbg !1371
  tail call void @llvm.dbg.declare(metadata ptr %variant_type, metadata !1337, metadata !DIExpression()), !dbg !1372
  %1 = load ptr, ptr %enum_variant_type, align 8, !dbg !1373, !tbaa !677
  %call4 = call ptr @bt_ctf_field_type_variant_create(ptr noundef %1, ptr noundef @.str.42), !dbg !1374
  store ptr %call4, ptr %variant_type, align 8, !dbg !1372, !tbaa !677
  call void @llvm.lifetime.start.p0(i64 8, ptr %string_type) #9, !dbg !1375
  tail call void @llvm.dbg.declare(metadata ptr %string_type, metadata !1338, metadata !DIExpression()), !dbg !1376
  %call5 = call ptr @bt_ctf_field_type_string_create(), !dbg !1377
  store ptr %call5, ptr %string_type, align 8, !dbg !1376, !tbaa !677
  call void @llvm.lifetime.start.p0(i64 8, ptr %sequence_type) #9, !dbg !1378
  tail call void @llvm.dbg.declare(metadata ptr %sequence_type, metadata !1339, metadata !DIExpression()), !dbg !1379
  call void @llvm.lifetime.start.p0(i64 8, ptr %inner_structure_type) #9, !dbg !1380
  tail call void @llvm.dbg.declare(metadata ptr %inner_structure_type, metadata !1340, metadata !DIExpression()), !dbg !1381
  %call6 = call ptr @bt_ctf_field_type_structure_create(), !dbg !1382
  store ptr %call6, ptr %inner_structure_type, align 8, !dbg !1381, !tbaa !677
  call void @llvm.lifetime.start.p0(i64 8, ptr %complex_structure_type) #9, !dbg !1383
  tail call void @llvm.dbg.declare(metadata ptr %complex_structure_type, metadata !1341, metadata !DIExpression()), !dbg !1384
  %call7 = call ptr @bt_ctf_field_type_structure_create(), !dbg !1385
  store ptr %call7, ptr %complex_structure_type, align 8, !dbg !1384, !tbaa !677
  call void @llvm.lifetime.start.p0(i64 8, ptr %event_class) #9, !dbg !1386
  tail call void @llvm.dbg.declare(metadata ptr %event_class, metadata !1342, metadata !DIExpression()), !dbg !1387
  call void @llvm.lifetime.start.p0(i64 8, ptr %event) #9, !dbg !1388
  tail call void @llvm.dbg.declare(metadata ptr %event, metadata !1343, metadata !DIExpression()), !dbg !1389
  call void @llvm.lifetime.start.p0(i64 8, ptr %uint_35_field) #9, !dbg !1390
  tail call void @llvm.dbg.declare(metadata ptr %uint_35_field, metadata !1344, metadata !DIExpression()), !dbg !1391
  call void @llvm.lifetime.start.p0(i64 8, ptr %int_16_field) #9, !dbg !1390
  tail call void @llvm.dbg.declare(metadata ptr %int_16_field, metadata !1345, metadata !DIExpression()), !dbg !1392
  call void @llvm.lifetime.start.p0(i64 8, ptr %a_string_field) #9, !dbg !1390
  tail call void @llvm.dbg.declare(metadata ptr %a_string_field, metadata !1346, metadata !DIExpression()), !dbg !1393
  call void @llvm.lifetime.start.p0(i64 8, ptr %inner_structure_field) #9, !dbg !1390
  tail call void @llvm.dbg.declare(metadata ptr %inner_structure_field, metadata !1347, metadata !DIExpression()), !dbg !1394
  call void @llvm.lifetime.start.p0(i64 8, ptr %complex_structure_field) #9, !dbg !1390
  tail call void @llvm.dbg.declare(metadata ptr %complex_structure_field, metadata !1348, metadata !DIExpression()), !dbg !1395
  call void @llvm.lifetime.start.p0(i64 8, ptr %a_sequence_field) #9, !dbg !1390
  tail call void @llvm.dbg.declare(metadata ptr %a_sequence_field, metadata !1349, metadata !DIExpression()), !dbg !1396
  call void @llvm.lifetime.start.p0(i64 8, ptr %enum_variant_field) #9, !dbg !1390
  tail call void @llvm.dbg.declare(metadata ptr %enum_variant_field, metadata !1350, metadata !DIExpression()), !dbg !1397
  call void @llvm.lifetime.start.p0(i64 8, ptr %enum_container_field) #9, !dbg !1390
  tail call void @llvm.dbg.declare(metadata ptr %enum_container_field, metadata !1351, metadata !DIExpression()), !dbg !1398
  call void @llvm.lifetime.start.p0(i64 8, ptr %variant_field) #9, !dbg !1390
  tail call void @llvm.dbg.declare(metadata ptr %variant_field, metadata !1352, metadata !DIExpression()), !dbg !1399
  %2 = load ptr, ptr %int_16_type, align 8, !dbg !1400, !tbaa !677
  %call8 = call i32 @bt_ctf_field_type_set_alignment(ptr noundef %2, i32 noundef 32), !dbg !1401
  %3 = load ptr, ptr %int_16_type, align 8, !dbg !1402, !tbaa !677
  %call9 = call i32 @bt_ctf_field_type_integer_set_signed(ptr noundef %3, i32 noundef 1), !dbg !1403
  %4 = load ptr, ptr %uint_35_type, align 8, !dbg !1404, !tbaa !677
  %call10 = call i32 @bt_ctf_field_type_integer_set_base(ptr noundef %4, i32 noundef 16), !dbg !1405
  %5 = load ptr, ptr %int_16_type, align 8, !dbg !1406, !tbaa !677
  %call11 = call ptr @bt_ctf_field_type_sequence_create(ptr noundef %5, ptr noundef @.str.43), !dbg !1407
  store ptr %call11, ptr %sequence_type, align 8, !dbg !1408, !tbaa !677
  %6 = load ptr, ptr %inner_structure_type, align 8, !dbg !1409, !tbaa !677
  %7 = load ptr, ptr %uint_35_type, align 8, !dbg !1410, !tbaa !677
  %call12 = call i32 @bt_ctf_field_type_structure_add_field(ptr noundef %6, ptr noundef %7, ptr noundef @.str.43), !dbg !1411
  %8 = load ptr, ptr %inner_structure_type, align 8, !dbg !1412, !tbaa !677
  %9 = load ptr, ptr %sequence_type, align 8, !dbg !1413, !tbaa !677
  %call13 = call i32 @bt_ctf_field_type_structure_add_field(ptr noundef %8, ptr noundef %9, ptr noundef @.str.44), !dbg !1414
  %10 = load ptr, ptr %enum_variant_type, align 8, !dbg !1415, !tbaa !677
  %call14 = call i32 @bt_ctf_field_type_enumeration_add_mapping(ptr noundef %10, ptr noundef @.str.45, i64 noundef 0, i64 noundef 0), !dbg !1416
  %11 = load ptr, ptr %enum_variant_type, align 8, !dbg !1417, !tbaa !677
  %call15 = call i32 @bt_ctf_field_type_enumeration_add_mapping(ptr noundef %11, ptr noundef @.str.46, i64 noundef 1, i64 noundef 1), !dbg !1418
  %12 = load ptr, ptr %enum_variant_type, align 8, !dbg !1419, !tbaa !677
  %call16 = call i32 @bt_ctf_field_type_enumeration_add_mapping(ptr noundef %12, ptr noundef @.str.47, i64 noundef 2, i64 noundef 7), !dbg !1420
  %13 = load ptr, ptr %variant_type, align 8, !dbg !1421, !tbaa !677
  %14 = load ptr, ptr %uint_3_type, align 8, !dbg !1421, !tbaa !677
  %call17 = call i32 @bt_ctf_field_type_variant_add_field(ptr noundef %13, ptr noundef %14, ptr noundef @.str.48), !dbg !1421
  %tobool = icmp ne i32 %call17, 0, !dbg !1421
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !1421

cond.true:                                        ; preds = %entry
  %call18 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 1, ptr noundef @__func__.append_complex_event, ptr noundef @.str.6, i32 noundef 376, ptr noundef @.str.49), !dbg !1421
  br label %cond.end, !dbg !1421

cond.false:                                       ; preds = %entry
  %call19 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 0, ptr noundef @__func__.append_complex_event, ptr noundef @.str.6, i32 noundef 376, ptr noundef @.str.49), !dbg !1421
  br label %cond.end, !dbg !1421

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call18, %cond.true ], [ %call19, %cond.false ], !dbg !1421
  %15 = load ptr, ptr %variant_type, align 8, !dbg !1422, !tbaa !677
  %16 = load ptr, ptr %uint_3_type, align 8, !dbg !1422, !tbaa !677
  %call20 = call i32 @bt_ctf_field_type_variant_add_field(ptr noundef %15, ptr noundef %16, ptr noundef @.str.45), !dbg !1422
  %cmp = icmp eq i32 %call20, 0, !dbg !1422
  br i1 %cmp, label %cond.true21, label %cond.false23, !dbg !1422

cond.true21:                                      ; preds = %cond.end
  %call22 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 1, ptr noundef @__func__.append_complex_event, ptr noundef @.str.6, i32 noundef 378, ptr noundef @.str.50), !dbg !1422
  br label %cond.end25, !dbg !1422

cond.false23:                                     ; preds = %cond.end
  %call24 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 0, ptr noundef @__func__.append_complex_event, ptr noundef @.str.6, i32 noundef 378, ptr noundef @.str.50), !dbg !1422
  br label %cond.end25, !dbg !1422

cond.end25:                                       ; preds = %cond.false23, %cond.true21
  %cond26 = phi i32 [ %call22, %cond.true21 ], [ %call24, %cond.false23 ], !dbg !1422
  %17 = load ptr, ptr %variant_type, align 8, !dbg !1423, !tbaa !677
  %18 = load ptr, ptr %int_16_type, align 8, !dbg !1424, !tbaa !677
  %call27 = call i32 @bt_ctf_field_type_variant_add_field(ptr noundef %17, ptr noundef %18, ptr noundef @.str.46), !dbg !1425
  %19 = load ptr, ptr %variant_type, align 8, !dbg !1426, !tbaa !677
  %20 = load ptr, ptr %uint_35_type, align 8, !dbg !1427, !tbaa !677
  %call28 = call i32 @bt_ctf_field_type_variant_add_field(ptr noundef %19, ptr noundef %20, ptr noundef @.str.47), !dbg !1428
  %21 = load ptr, ptr %complex_structure_type, align 8, !dbg !1429, !tbaa !677
  %22 = load ptr, ptr %enum_variant_type, align 8, !dbg !1430, !tbaa !677
  %call29 = call i32 @bt_ctf_field_type_structure_add_field(ptr noundef %21, ptr noundef %22, ptr noundef @.str.42), !dbg !1431
  %23 = load ptr, ptr %complex_structure_type, align 8, !dbg !1432, !tbaa !677
  %24 = load ptr, ptr %string_type, align 8, !dbg !1433, !tbaa !677
  %call30 = call i32 @bt_ctf_field_type_structure_add_field(ptr noundef %23, ptr noundef %24, ptr noundef @.str.51), !dbg !1434
  %25 = load ptr, ptr %complex_structure_type, align 8, !dbg !1435, !tbaa !677
  %26 = load ptr, ptr %variant_type, align 8, !dbg !1436, !tbaa !677
  %call31 = call i32 @bt_ctf_field_type_structure_add_field(ptr noundef %25, ptr noundef %26, ptr noundef @.str.52), !dbg !1437
  %27 = load ptr, ptr %complex_structure_type, align 8, !dbg !1438, !tbaa !677
  %28 = load ptr, ptr %inner_structure_type, align 8, !dbg !1439, !tbaa !677
  %call32 = call i32 @bt_ctf_field_type_structure_add_field(ptr noundef %27, ptr noundef %28, ptr noundef @.str.53), !dbg !1440
  %call33 = call ptr @bt_ctf_event_class_create(ptr noundef @.str.54), !dbg !1441
  %cmp34 = icmp eq ptr %call33, null, !dbg !1441
  br i1 %cmp34, label %cond.true35, label %cond.false37, !dbg !1441

cond.true35:                                      ; preds = %cond.end25
  %call36 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 1, ptr noundef @__func__.append_complex_event, ptr noundef @.str.6, i32 noundef 394, ptr noundef @.str.55), !dbg !1441
  br label %cond.end39, !dbg !1441

cond.false37:                                     ; preds = %cond.end25
  %call38 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 0, ptr noundef @__func__.append_complex_event, ptr noundef @.str.6, i32 noundef 394, ptr noundef @.str.55), !dbg !1441
  br label %cond.end39, !dbg !1441

cond.end39:                                       ; preds = %cond.false37, %cond.true35
  %cond40 = phi i32 [ %call36, %cond.true35 ], [ %call38, %cond.false37 ], !dbg !1441
  %call41 = call ptr @bt_ctf_event_class_create(ptr noundef @.str.56), !dbg !1442
  store ptr %call41, ptr %event_class, align 8, !dbg !1443, !tbaa !677
  %29 = load ptr, ptr %event_class, align 8, !dbg !1444, !tbaa !677
  %tobool42 = icmp ne ptr %29, null, !dbg !1444
  br i1 %tobool42, label %cond.true43, label %cond.false45, !dbg !1444

cond.true43:                                      ; preds = %cond.end39
  %call44 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 1, ptr noundef @__func__.append_complex_event, ptr noundef @.str.6, i32 noundef 396, ptr noundef @.str.57), !dbg !1444
  br label %cond.end47, !dbg !1444

cond.false45:                                     ; preds = %cond.end39
  %call46 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 0, ptr noundef @__func__.append_complex_event, ptr noundef @.str.6, i32 noundef 396, ptr noundef @.str.57), !dbg !1444
  br label %cond.end47, !dbg !1444

cond.end47:                                       ; preds = %cond.false45, %cond.true43
  %cond48 = phi i32 [ %call44, %cond.true43 ], [ %call46, %cond.false45 ], !dbg !1444
  %30 = load ptr, ptr %event_class, align 8, !dbg !1445, !tbaa !677
  %31 = load ptr, ptr %uint_35_type, align 8, !dbg !1445, !tbaa !677
  %call49 = call i32 @bt_ctf_event_class_add_field(ptr noundef %30, ptr noundef %31, ptr noundef @.str.58), !dbg !1445
  %tobool50 = icmp ne i32 %call49, 0, !dbg !1445
  br i1 %tobool50, label %cond.true51, label %cond.false53, !dbg !1445

cond.true51:                                      ; preds = %cond.end47
  %call52 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 1, ptr noundef @__func__.append_complex_event, ptr noundef @.str.6, i32 noundef 398, ptr noundef @.str.59), !dbg !1445
  br label %cond.end55, !dbg !1445

cond.false53:                                     ; preds = %cond.end47
  %call54 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 0, ptr noundef @__func__.append_complex_event, ptr noundef @.str.6, i32 noundef 398, ptr noundef @.str.59), !dbg !1445
  br label %cond.end55, !dbg !1445

cond.end55:                                       ; preds = %cond.false53, %cond.true51
  %cond56 = phi i32 [ %call52, %cond.true51 ], [ %call54, %cond.false53 ], !dbg !1445
  %32 = load ptr, ptr %event_class, align 8, !dbg !1446, !tbaa !677
  %call57 = call i32 @bt_ctf_event_class_add_field(ptr noundef %32, ptr noundef null, ptr noundef @.str.60), !dbg !1446
  %tobool58 = icmp ne i32 %call57, 0, !dbg !1446
  br i1 %tobool58, label %cond.true59, label %cond.false61, !dbg !1446

cond.true59:                                      ; preds = %cond.end55
  %call60 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 1, ptr noundef @__func__.append_complex_event, ptr noundef @.str.6, i32 noundef 400, ptr noundef @.str.61), !dbg !1446
  br label %cond.end63, !dbg !1446

cond.false61:                                     ; preds = %cond.end55
  %call62 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 0, ptr noundef @__func__.append_complex_event, ptr noundef @.str.6, i32 noundef 400, ptr noundef @.str.61), !dbg !1446
  br label %cond.end63, !dbg !1446

cond.end63:                                       ; preds = %cond.false61, %cond.true59
  %cond64 = phi i32 [ %call60, %cond.true59 ], [ %call62, %cond.false61 ], !dbg !1446
  %33 = load ptr, ptr %event_class, align 8, !dbg !1447, !tbaa !677
  %34 = load ptr, ptr %uint_35_type, align 8, !dbg !1447, !tbaa !677
  %call65 = call i32 @bt_ctf_event_class_add_field(ptr noundef %33, ptr noundef %34, ptr noundef @.str.62), !dbg !1447
  %tobool66 = icmp ne i32 %call65, 0, !dbg !1447
  br i1 %tobool66, label %cond.true67, label %cond.false69, !dbg !1447

cond.true67:                                      ; preds = %cond.end63
  %call68 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 1, ptr noundef @__func__.append_complex_event, ptr noundef @.str.6, i32 noundef 403, ptr noundef @.str.63), !dbg !1447
  br label %cond.end71, !dbg !1447

cond.false69:                                     ; preds = %cond.end63
  %call70 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 0, ptr noundef @__func__.append_complex_event, ptr noundef @.str.6, i32 noundef 403, ptr noundef @.str.63), !dbg !1447
  br label %cond.end71, !dbg !1447

cond.end71:                                       ; preds = %cond.false69, %cond.true67
  %cond72 = phi i32 [ %call68, %cond.true67 ], [ %call70, %cond.false69 ], !dbg !1447
  %35 = load ptr, ptr %event_class, align 8, !dbg !1448, !tbaa !677
  %36 = load ptr, ptr %uint_35_type, align 8, !dbg !1448, !tbaa !677
  %call73 = call i32 @bt_ctf_event_class_add_field(ptr noundef %35, ptr noundef %36, ptr noundef @.str.64), !dbg !1448
  %cmp74 = icmp eq i32 %call73, 0, !dbg !1448
  br i1 %cmp74, label %cond.true75, label %cond.false77, !dbg !1448

cond.true75:                                      ; preds = %cond.end71
  %call76 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 1, ptr noundef @__func__.append_complex_event, ptr noundef @.str.6, i32 noundef 406, ptr noundef @.str.65), !dbg !1448
  br label %cond.end79, !dbg !1448

cond.false77:                                     ; preds = %cond.end71
  %call78 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 0, ptr noundef @__func__.append_complex_event, ptr noundef @.str.6, i32 noundef 406, ptr noundef @.str.65), !dbg !1448
  br label %cond.end79, !dbg !1448

cond.end79:                                       ; preds = %cond.false77, %cond.true75
  %cond80 = phi i32 [ %call76, %cond.true75 ], [ %call78, %cond.false77 ], !dbg !1448
  %37 = load ptr, ptr %event_class, align 8, !dbg !1449, !tbaa !677
  %38 = load ptr, ptr %int_16_type, align 8, !dbg !1449, !tbaa !677
  %call81 = call i32 @bt_ctf_event_class_add_field(ptr noundef %37, ptr noundef %38, ptr noundef @.str.66), !dbg !1449
  %cmp82 = icmp eq i32 %call81, 0, !dbg !1449
  br i1 %cmp82, label %cond.true83, label %cond.false85, !dbg !1449

cond.true83:                                      ; preds = %cond.end79
  %call84 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 1, ptr noundef @__func__.append_complex_event, ptr noundef @.str.6, i32 noundef 408, ptr noundef @.str.67), !dbg !1449
  br label %cond.end87, !dbg !1449

cond.false85:                                     ; preds = %cond.end79
  %call86 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 0, ptr noundef @__func__.append_complex_event, ptr noundef @.str.6, i32 noundef 408, ptr noundef @.str.67), !dbg !1449
  br label %cond.end87, !dbg !1449

cond.end87:                                       ; preds = %cond.false85, %cond.true83
  %cond88 = phi i32 [ %call84, %cond.true83 ], [ %call86, %cond.false85 ], !dbg !1449
  %39 = load ptr, ptr %event_class, align 8, !dbg !1450, !tbaa !677
  %40 = load ptr, ptr %complex_structure_type, align 8, !dbg !1450, !tbaa !677
  %call89 = call i32 @bt_ctf_event_class_add_field(ptr noundef %39, ptr noundef %40, ptr noundef @.str.68), !dbg !1450
  %cmp90 = icmp eq i32 %call89, 0, !dbg !1450
  br i1 %cmp90, label %cond.true91, label %cond.false93, !dbg !1450

cond.true91:                                      ; preds = %cond.end87
  %call92 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 1, ptr noundef @__func__.append_complex_event, ptr noundef @.str.6, i32 noundef 411, ptr noundef @.str.69), !dbg !1450
  br label %cond.end95, !dbg !1450

cond.false93:                                     ; preds = %cond.end87
  %call94 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 0, ptr noundef @__func__.append_complex_event, ptr noundef @.str.6, i32 noundef 411, ptr noundef @.str.69), !dbg !1450
  br label %cond.end95, !dbg !1450

cond.end95:                                       ; preds = %cond.false93, %cond.true91
  %cond96 = phi i32 [ %call92, %cond.true91 ], [ %call94, %cond.false93 ], !dbg !1450
  %41 = load ptr, ptr %stream_class.addr, align 8, !dbg !1451, !tbaa !677
  %call97 = call i32 @bt_ctf_stream_class_add_event_class(ptr noundef %41, ptr noundef null), !dbg !1451
  %tobool98 = icmp ne i32 %call97, 0, !dbg !1451
  br i1 %tobool98, label %cond.true99, label %cond.false101, !dbg !1451

cond.true99:                                      ; preds = %cond.end95
  %call100 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 1, ptr noundef @__func__.append_complex_event, ptr noundef @.str.6, i32 noundef 415, ptr noundef @.str.70), !dbg !1451
  br label %cond.end103, !dbg !1451

cond.false101:                                    ; preds = %cond.end95
  %call102 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 0, ptr noundef @__func__.append_complex_event, ptr noundef @.str.6, i32 noundef 415, ptr noundef @.str.70), !dbg !1451
  br label %cond.end103, !dbg !1451

cond.end103:                                      ; preds = %cond.false101, %cond.true99
  %cond104 = phi i32 [ %call100, %cond.true99 ], [ %call102, %cond.false101 ], !dbg !1451
  %42 = load ptr, ptr %stream_class.addr, align 8, !dbg !1452, !tbaa !677
  %43 = load ptr, ptr %event_class, align 8, !dbg !1452, !tbaa !677
  %call105 = call i32 @bt_ctf_stream_class_add_event_class(ptr noundef %42, ptr noundef %43), !dbg !1452
  %cmp106 = icmp eq i32 %call105, 0, !dbg !1452
  br i1 %cmp106, label %cond.true107, label %cond.false109, !dbg !1452

cond.true107:                                     ; preds = %cond.end103
  %call108 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 1, ptr noundef @__func__.append_complex_event, ptr noundef @.str.6, i32 noundef 417, ptr noundef @.str.71), !dbg !1452
  br label %cond.end111, !dbg !1452

cond.false109:                                    ; preds = %cond.end103
  %call110 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 0, ptr noundef @__func__.append_complex_event, ptr noundef @.str.6, i32 noundef 417, ptr noundef @.str.71), !dbg !1452
  br label %cond.end111, !dbg !1452

cond.end111:                                      ; preds = %cond.false109, %cond.true107
  %cond112 = phi i32 [ %call108, %cond.true107 ], [ %call110, %cond.false109 ], !dbg !1452
  %44 = load ptr, ptr %event_class, align 8, !dbg !1453, !tbaa !677
  %call113 = call ptr @bt_ctf_event_create(ptr noundef %44), !dbg !1454
  store ptr %call113, ptr %event, align 8, !dbg !1455, !tbaa !677
  %45 = load ptr, ptr %event, align 8, !dbg !1456, !tbaa !677
  %tobool114 = icmp ne ptr %45, null, !dbg !1456
  br i1 %tobool114, label %cond.true115, label %cond.false117, !dbg !1456

cond.true115:                                     ; preds = %cond.end111
  %call116 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 1, ptr noundef @__func__.append_complex_event, ptr noundef @.str.6, i32 noundef 420, ptr noundef @.str.72), !dbg !1456
  br label %cond.end119, !dbg !1456

cond.false117:                                    ; preds = %cond.end111
  %call118 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 0, ptr noundef @__func__.append_complex_event, ptr noundef @.str.6, i32 noundef 420, ptr noundef @.str.72), !dbg !1456
  br label %cond.end119, !dbg !1456

cond.end119:                                      ; preds = %cond.false117, %cond.true115
  %cond120 = phi i32 [ %call116, %cond.true115 ], [ %call118, %cond.false117 ], !dbg !1456
  %46 = load ptr, ptr %event, align 8, !dbg !1457, !tbaa !677
  %call121 = call ptr @bt_ctf_event_get_payload(ptr noundef %46, ptr noundef @.str.64), !dbg !1458
  store ptr %call121, ptr %uint_35_field, align 8, !dbg !1459, !tbaa !677
  %47 = load ptr, ptr %uint_35_field, align 8, !dbg !1460, !tbaa !677
  %tobool122 = icmp ne ptr %47, null, !dbg !1460
  br i1 %tobool122, label %cond.true123, label %cond.false125, !dbg !1460

cond.true123:                                     ; preds = %cond.end119
  %call124 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 1, ptr noundef @__func__.append_complex_event, ptr noundef @.str.6, i32 noundef 423, ptr noundef @.str.73), !dbg !1460
  br label %cond.end127, !dbg !1460

cond.false125:                                    ; preds = %cond.end119
  %call126 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 0, ptr noundef @__func__.append_complex_event, ptr noundef @.str.6, i32 noundef 423, ptr noundef @.str.73), !dbg !1460
  br label %cond.end127, !dbg !1460

cond.end127:                                      ; preds = %cond.false125, %cond.true123
  %cond128 = phi i32 [ %call124, %cond.true123 ], [ %call126, %cond.false125 ], !dbg !1460
  %48 = load ptr, ptr %uint_35_field, align 8, !dbg !1461, !tbaa !677
  %call129 = call i32 @bt_ctf_field_unsigned_integer_set_value(ptr noundef %48, i64 noundef 14544909), !dbg !1462
  %49 = load ptr, ptr %uint_35_field, align 8, !dbg !1463, !tbaa !677
  call void @bt_ctf_field_put(ptr noundef %49), !dbg !1464
  %50 = load ptr, ptr %event, align 8, !dbg !1465, !tbaa !677
  %call130 = call ptr @bt_ctf_event_get_payload(ptr noundef %50, ptr noundef @.str.66), !dbg !1466
  store ptr %call130, ptr %int_16_field, align 8, !dbg !1467, !tbaa !677
  %51 = load ptr, ptr %int_16_field, align 8, !dbg !1468, !tbaa !677
  %call131 = call i32 @bt_ctf_field_signed_integer_set_value(ptr noundef %51, i64 noundef -12345), !dbg !1469
  %52 = load ptr, ptr %int_16_field, align 8, !dbg !1470, !tbaa !677
  call void @bt_ctf_field_put(ptr noundef %52), !dbg !1471
  %53 = load ptr, ptr %event, align 8, !dbg !1472, !tbaa !677
  %call132 = call ptr @bt_ctf_event_get_payload(ptr noundef %53, ptr noundef @.str.68), !dbg !1473
  store ptr %call132, ptr %complex_structure_field, align 8, !dbg !1474, !tbaa !677
  %54 = load ptr, ptr %complex_structure_field, align 8, !dbg !1475, !tbaa !677
  %call133 = call ptr @bt_ctf_field_structure_get_field(ptr noundef %54, ptr noundef @.str.53), !dbg !1476
  store ptr %call133, ptr %inner_structure_field, align 8, !dbg !1477, !tbaa !677
  %55 = load ptr, ptr %complex_structure_field, align 8, !dbg !1478, !tbaa !677
  %call134 = call ptr @bt_ctf_field_structure_get_field(ptr noundef %55, ptr noundef @.str.51), !dbg !1479
  store ptr %call134, ptr %a_string_field, align 8, !dbg !1480, !tbaa !677
  %56 = load ptr, ptr %complex_structure_field, align 8, !dbg !1481, !tbaa !677
  %call135 = call ptr @bt_ctf_field_structure_get_field(ptr noundef %56, ptr noundef @.str.42), !dbg !1482
  store ptr %call135, ptr %enum_variant_field, align 8, !dbg !1483, !tbaa !677
  %57 = load ptr, ptr %complex_structure_field, align 8, !dbg !1484, !tbaa !677
  %call136 = call ptr @bt_ctf_field_structure_get_field(ptr noundef %57, ptr noundef @.str.52), !dbg !1485
  store ptr %call136, ptr %variant_field, align 8, !dbg !1486, !tbaa !677
  %58 = load ptr, ptr %inner_structure_field, align 8, !dbg !1487, !tbaa !677
  %call137 = call ptr @bt_ctf_field_structure_get_field(ptr noundef %58, ptr noundef @.str.43), !dbg !1488
  store ptr %call137, ptr %uint_35_field, align 8, !dbg !1489, !tbaa !677
  %59 = load ptr, ptr %inner_structure_field, align 8, !dbg !1490, !tbaa !677
  %call138 = call ptr @bt_ctf_field_structure_get_field(ptr noundef %59, ptr noundef @.str.44), !dbg !1491
  store ptr %call138, ptr %a_sequence_field, align 8, !dbg !1492, !tbaa !677
  %60 = load ptr, ptr %enum_variant_field, align 8, !dbg !1493, !tbaa !677
  %call139 = call ptr @bt_ctf_field_enumeration_get_container(ptr noundef %60), !dbg !1494
  store ptr %call139, ptr %enum_container_field, align 8, !dbg !1495, !tbaa !677
  %61 = load ptr, ptr %enum_container_field, align 8, !dbg !1496, !tbaa !677
  %call140 = call i32 @bt_ctf_field_unsigned_integer_set_value(ptr noundef %61, i64 noundef 1), !dbg !1497
  %62 = load ptr, ptr %variant_field, align 8, !dbg !1498, !tbaa !677
  %63 = load ptr, ptr %enum_variant_field, align 8, !dbg !1499, !tbaa !677
  %call141 = call ptr @bt_ctf_field_variant_get_field(ptr noundef %62, ptr noundef %63), !dbg !1500
  store ptr %call141, ptr %int_16_field, align 8, !dbg !1501, !tbaa !677
  %64 = load ptr, ptr %int_16_field, align 8, !dbg !1502, !tbaa !677
  %call142 = call i32 @bt_ctf_field_signed_integer_set_value(ptr noundef %64, i64 noundef -200), !dbg !1503
  %65 = load ptr, ptr %int_16_field, align 8, !dbg !1504, !tbaa !677
  call void @bt_ctf_field_put(ptr noundef %65), !dbg !1505
  %66 = load ptr, ptr %a_string_field, align 8, !dbg !1506, !tbaa !677
  %call143 = call i32 @bt_ctf_field_string_set_value(ptr noundef %66, ptr noundef @.str.74), !dbg !1507
  %67 = load ptr, ptr %uint_35_field, align 8, !dbg !1508, !tbaa !677
  %call144 = call i32 @bt_ctf_field_unsigned_integer_set_value(ptr noundef %67, i64 noundef 10), !dbg !1509
  %68 = load ptr, ptr %a_sequence_field, align 8, !dbg !1510, !tbaa !677
  %69 = load ptr, ptr %uint_35_field, align 8, !dbg !1510, !tbaa !677
  %call145 = call i32 @bt_ctf_field_sequence_set_length(ptr noundef %68, ptr noundef %69), !dbg !1510
  %cmp146 = icmp eq i32 %call145, 0, !dbg !1510
  br i1 %cmp146, label %cond.true147, label %cond.false149, !dbg !1510

cond.true147:                                     ; preds = %cond.end127
  %call148 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 1, ptr noundef @__func__.append_complex_event, ptr noundef @.str.6, i32 noundef 458, ptr noundef @.str.75), !dbg !1510
  br label %cond.end151, !dbg !1510

cond.false149:                                    ; preds = %cond.end127
  %call150 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 0, ptr noundef @__func__.append_complex_event, ptr noundef @.str.6, i32 noundef 458, ptr noundef @.str.75), !dbg !1510
  br label %cond.end151, !dbg !1510

cond.end151:                                      ; preds = %cond.false149, %cond.true147
  %cond152 = phi i32 [ %call148, %cond.true147 ], [ %call150, %cond.false149 ], !dbg !1510
  store i32 0, ptr %i, align 4, !dbg !1511, !tbaa !685
  br label %for.cond, !dbg !1513

for.cond:                                         ; preds = %for.inc, %cond.end151
  %70 = load i32, ptr %i, align 4, !dbg !1514, !tbaa !685
  %cmp153 = icmp slt i32 %70, 10, !dbg !1516
  br i1 %cmp153, label %for.body, label %for.end, !dbg !1517

for.body:                                         ; preds = %for.cond
  %71 = load ptr, ptr %a_sequence_field, align 8, !dbg !1518, !tbaa !677
  %72 = load i32, ptr %i, align 4, !dbg !1520, !tbaa !685
  %conv = sext i32 %72 to i64, !dbg !1520
  %call154 = call ptr @bt_ctf_field_sequence_get_field(ptr noundef %71, i64 noundef %conv), !dbg !1521
  store ptr %call154, ptr %int_16_field, align 8, !dbg !1522, !tbaa !677
  %73 = load ptr, ptr %int_16_field, align 8, !dbg !1523, !tbaa !677
  %74 = load i32, ptr %i, align 4, !dbg !1524, !tbaa !685
  %sub = sub nsw i32 4, %74, !dbg !1525
  %conv155 = sext i32 %sub to i64, !dbg !1526
  %call156 = call i32 @bt_ctf_field_signed_integer_set_value(ptr noundef %73, i64 noundef %conv155), !dbg !1527
  %75 = load ptr, ptr %int_16_field, align 8, !dbg !1528, !tbaa !677
  call void @bt_ctf_field_put(ptr noundef %75), !dbg !1529
  br label %for.inc, !dbg !1530

for.inc:                                          ; preds = %for.body
  %76 = load i32, ptr %i, align 4, !dbg !1531, !tbaa !685
  %inc = add nsw i32 %76, 1, !dbg !1531
  store i32 %inc, ptr %i, align 4, !dbg !1531, !tbaa !685
  br label %for.cond, !dbg !1532, !llvm.loop !1533

for.end:                                          ; preds = %for.cond
  %77 = load ptr, ptr %clock.addr, align 8, !dbg !1535, !tbaa !677
  %78 = load i64, ptr @current_time, align 8, !dbg !1536, !tbaa !779
  %inc157 = add i64 %78, 1, !dbg !1536
  store i64 %inc157, ptr @current_time, align 8, !dbg !1536, !tbaa !779
  %call158 = call i32 @bt_ctf_clock_set_time(ptr noundef %77, i64 noundef %inc157), !dbg !1537
  %79 = load ptr, ptr %stream.addr, align 8, !dbg !1538, !tbaa !677
  %80 = load ptr, ptr %event, align 8, !dbg !1538, !tbaa !677
  %call159 = call i32 @bt_ctf_stream_append_event(ptr noundef %79, ptr noundef %80), !dbg !1538
  %cmp160 = icmp eq i32 %call159, 0, !dbg !1538
  br i1 %cmp160, label %cond.true162, label %cond.false164, !dbg !1538

cond.true162:                                     ; preds = %for.end
  %call163 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 1, ptr noundef @__func__.append_complex_event, ptr noundef @.str.6, i32 noundef 469, ptr noundef @.str.76), !dbg !1538
  br label %cond.end166, !dbg !1538

cond.false164:                                    ; preds = %for.end
  %call165 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 0, ptr noundef @__func__.append_complex_event, ptr noundef @.str.6, i32 noundef 469, ptr noundef @.str.76), !dbg !1538
  br label %cond.end166, !dbg !1538

cond.end166:                                      ; preds = %cond.false164, %cond.true162
  %cond167 = phi i32 [ %call163, %cond.true162 ], [ %call165, %cond.false164 ], !dbg !1538
  %81 = load ptr, ptr %stream.addr, align 8, !dbg !1539, !tbaa !677
  %call168 = call i32 @bt_ctf_stream_flush(ptr noundef %81), !dbg !1539
  %cmp169 = icmp eq i32 %call168, 0, !dbg !1539
  br i1 %cmp169, label %cond.true171, label %cond.false173, !dbg !1539

cond.true171:                                     ; preds = %cond.end166
  %call172 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 1, ptr noundef @__func__.append_complex_event, ptr noundef @.str.6, i32 noundef 471, ptr noundef @.str.77), !dbg !1539
  br label %cond.end175, !dbg !1539

cond.false173:                                    ; preds = %cond.end166
  %call174 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 0, ptr noundef @__func__.append_complex_event, ptr noundef @.str.6, i32 noundef 471, ptr noundef @.str.77), !dbg !1539
  br label %cond.end175, !dbg !1539

cond.end175:                                      ; preds = %cond.false173, %cond.true171
  %cond176 = phi i32 [ %call172, %cond.true171 ], [ %call174, %cond.false173 ], !dbg !1539
  %82 = load ptr, ptr %uint_35_field, align 8, !dbg !1540, !tbaa !677
  call void @bt_ctf_field_put(ptr noundef %82), !dbg !1541
  %83 = load ptr, ptr %a_string_field, align 8, !dbg !1542, !tbaa !677
  call void @bt_ctf_field_put(ptr noundef %83), !dbg !1543
  %84 = load ptr, ptr %inner_structure_field, align 8, !dbg !1544, !tbaa !677
  call void @bt_ctf_field_put(ptr noundef %84), !dbg !1545
  %85 = load ptr, ptr %complex_structure_field, align 8, !dbg !1546, !tbaa !677
  call void @bt_ctf_field_put(ptr noundef %85), !dbg !1547
  %86 = load ptr, ptr %a_sequence_field, align 8, !dbg !1548, !tbaa !677
  call void @bt_ctf_field_put(ptr noundef %86), !dbg !1549
  %87 = load ptr, ptr %enum_variant_field, align 8, !dbg !1550, !tbaa !677
  call void @bt_ctf_field_put(ptr noundef %87), !dbg !1551
  %88 = load ptr, ptr %enum_container_field, align 8, !dbg !1552, !tbaa !677
  call void @bt_ctf_field_put(ptr noundef %88), !dbg !1553
  %89 = load ptr, ptr %variant_field, align 8, !dbg !1554, !tbaa !677
  call void @bt_ctf_field_put(ptr noundef %89), !dbg !1555
  %90 = load ptr, ptr %uint_35_type, align 8, !dbg !1556, !tbaa !677
  call void @bt_ctf_field_type_put(ptr noundef %90), !dbg !1557
  %91 = load ptr, ptr %int_16_type, align 8, !dbg !1558, !tbaa !677
  call void @bt_ctf_field_type_put(ptr noundef %91), !dbg !1559
  %92 = load ptr, ptr %string_type, align 8, !dbg !1560, !tbaa !677
  call void @bt_ctf_field_type_put(ptr noundef %92), !dbg !1561
  %93 = load ptr, ptr %sequence_type, align 8, !dbg !1562, !tbaa !677
  call void @bt_ctf_field_type_put(ptr noundef %93), !dbg !1563
  %94 = load ptr, ptr %inner_structure_type, align 8, !dbg !1564, !tbaa !677
  call void @bt_ctf_field_type_put(ptr noundef %94), !dbg !1565
  %95 = load ptr, ptr %complex_structure_type, align 8, !dbg !1566, !tbaa !677
  call void @bt_ctf_field_type_put(ptr noundef %95), !dbg !1567
  %96 = load ptr, ptr %uint_3_type, align 8, !dbg !1568, !tbaa !677
  call void @bt_ctf_field_type_put(ptr noundef %96), !dbg !1569
  %97 = load ptr, ptr %enum_variant_type, align 8, !dbg !1570, !tbaa !677
  call void @bt_ctf_field_type_put(ptr noundef %97), !dbg !1571
  %98 = load ptr, ptr %variant_type, align 8, !dbg !1572, !tbaa !677
  call void @bt_ctf_field_type_put(ptr noundef %98), !dbg !1573
  %99 = load ptr, ptr %event_class, align 8, !dbg !1574, !tbaa !677
  call void @bt_ctf_event_class_put(ptr noundef %99), !dbg !1575
  %100 = load ptr, ptr %event, align 8, !dbg !1576, !tbaa !677
  call void @bt_ctf_event_put(ptr noundef %100), !dbg !1577
  call void @llvm.lifetime.end.p0(i64 8, ptr %variant_field) #9, !dbg !1578
  call void @llvm.lifetime.end.p0(i64 8, ptr %enum_container_field) #9, !dbg !1578
  call void @llvm.lifetime.end.p0(i64 8, ptr %enum_variant_field) #9, !dbg !1578
  call void @llvm.lifetime.end.p0(i64 8, ptr %a_sequence_field) #9, !dbg !1578
  call void @llvm.lifetime.end.p0(i64 8, ptr %complex_structure_field) #9, !dbg !1578
  call void @llvm.lifetime.end.p0(i64 8, ptr %inner_structure_field) #9, !dbg !1578
  call void @llvm.lifetime.end.p0(i64 8, ptr %a_string_field) #9, !dbg !1578
  call void @llvm.lifetime.end.p0(i64 8, ptr %int_16_field) #9, !dbg !1578
  call void @llvm.lifetime.end.p0(i64 8, ptr %uint_35_field) #9, !dbg !1578
  call void @llvm.lifetime.end.p0(i64 8, ptr %event) #9, !dbg !1578
  call void @llvm.lifetime.end.p0(i64 8, ptr %event_class) #9, !dbg !1578
  call void @llvm.lifetime.end.p0(i64 8, ptr %complex_structure_type) #9, !dbg !1578
  call void @llvm.lifetime.end.p0(i64 8, ptr %inner_structure_type) #9, !dbg !1578
  call void @llvm.lifetime.end.p0(i64 8, ptr %sequence_type) #9, !dbg !1578
  call void @llvm.lifetime.end.p0(i64 8, ptr %string_type) #9, !dbg !1578
  call void @llvm.lifetime.end.p0(i64 8, ptr %variant_type) #9, !dbg !1578
  call void @llvm.lifetime.end.p0(i64 8, ptr %enum_variant_type) #9, !dbg !1578
  call void @llvm.lifetime.end.p0(i64 8, ptr %uint_3_type) #9, !dbg !1578
  call void @llvm.lifetime.end.p0(i64 8, ptr %int_16_type) #9, !dbg !1578
  call void @llvm.lifetime.end.p0(i64 8, ptr %uint_35_type) #9, !dbg !1578
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9, !dbg !1578
  ret void, !dbg !1578
}

declare !dbg !1579 ptr @bt_ctf_field_type_variant_create(ptr noundef, ptr noundef) #3

declare !dbg !1582 ptr @bt_ctf_field_type_string_create() #3

declare !dbg !1583 ptr @bt_ctf_field_type_structure_create() #3

declare !dbg !1584 i32 @bt_ctf_field_type_integer_set_signed(ptr noundef, i32 noundef) #3

declare !dbg !1587 i32 @bt_ctf_field_type_integer_set_base(ptr noundef, i32 noundef) #3

declare !dbg !1590 ptr @bt_ctf_field_type_sequence_create(ptr noundef, ptr noundef) #3

declare !dbg !1591 i32 @bt_ctf_field_type_structure_add_field(ptr noundef, ptr noundef, ptr noundef) #3

declare !dbg !1594 i32 @bt_ctf_field_type_variant_add_field(ptr noundef, ptr noundef, ptr noundef) #3

declare !dbg !1595 i32 @bt_ctf_field_signed_integer_set_value(ptr noundef, i64 noundef) #3

declare !dbg !1598 ptr @bt_ctf_field_structure_get_field(ptr noundef, ptr noundef) #3

declare !dbg !1601 ptr @bt_ctf_field_variant_get_field(ptr noundef, ptr noundef) #3

declare !dbg !1604 i32 @bt_ctf_field_string_set_value(ptr noundef, ptr noundef) #3

declare !dbg !1607 i32 @bt_ctf_field_sequence_set_length(ptr noundef, ptr noundef) #3

declare !dbg !1610 ptr @bt_ctf_field_sequence_get_field(ptr noundef, i64 noundef) #3

; Function Attrs: nounwind uwtable
define dso_local void @type_field_tests() #0 !dbg !1613 {
entry:
  %uint_12 = alloca ptr, align 8
  %int_16 = alloca ptr, align 8
  %string = alloca ptr, align 8
  %enumeration = alloca ptr, align 8
  %composite_structure_type = alloca ptr, align 8
  %structure_seq_type = alloca ptr, align 8
  %string_type = alloca ptr, align 8
  %sequence_type = alloca ptr, align 8
  %uint_8_type = alloca ptr, align 8
  %int_16_type = alloca ptr, align 8
  %uint_12_type = alloca ptr, align 8
  %enumeration_type = alloca ptr, align 8
  %enumeration_sequence_type = alloca ptr, align 8
  %enumeration_array_type = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %uint_12) #9, !dbg !1631
  tail call void @llvm.dbg.declare(metadata ptr %uint_12, metadata !1617, metadata !DIExpression()), !dbg !1632
  call void @llvm.lifetime.start.p0(i64 8, ptr %int_16) #9, !dbg !1633
  tail call void @llvm.dbg.declare(metadata ptr %int_16, metadata !1618, metadata !DIExpression()), !dbg !1634
  call void @llvm.lifetime.start.p0(i64 8, ptr %string) #9, !dbg !1635
  tail call void @llvm.dbg.declare(metadata ptr %string, metadata !1619, metadata !DIExpression()), !dbg !1636
  call void @llvm.lifetime.start.p0(i64 8, ptr %enumeration) #9, !dbg !1637
  tail call void @llvm.dbg.declare(metadata ptr %enumeration, metadata !1620, metadata !DIExpression()), !dbg !1638
  call void @llvm.lifetime.start.p0(i64 8, ptr %composite_structure_type) #9, !dbg !1639
  tail call void @llvm.dbg.declare(metadata ptr %composite_structure_type, metadata !1621, metadata !DIExpression()), !dbg !1640
  call void @llvm.lifetime.start.p0(i64 8, ptr %structure_seq_type) #9, !dbg !1641
  tail call void @llvm.dbg.declare(metadata ptr %structure_seq_type, metadata !1622, metadata !DIExpression()), !dbg !1642
  call void @llvm.lifetime.start.p0(i64 8, ptr %string_type) #9, !dbg !1643
  tail call void @llvm.dbg.declare(metadata ptr %string_type, metadata !1623, metadata !DIExpression()), !dbg !1644
  call void @llvm.lifetime.start.p0(i64 8, ptr %sequence_type) #9, !dbg !1645
  tail call void @llvm.dbg.declare(metadata ptr %sequence_type, metadata !1624, metadata !DIExpression()), !dbg !1646
  call void @llvm.lifetime.start.p0(i64 8, ptr %uint_8_type) #9, !dbg !1647
  tail call void @llvm.dbg.declare(metadata ptr %uint_8_type, metadata !1625, metadata !DIExpression()), !dbg !1648
  call void @llvm.lifetime.start.p0(i64 8, ptr %int_16_type) #9, !dbg !1649
  tail call void @llvm.dbg.declare(metadata ptr %int_16_type, metadata !1626, metadata !DIExpression()), !dbg !1650
  call void @llvm.lifetime.start.p0(i64 8, ptr %uint_12_type) #9, !dbg !1651
  tail call void @llvm.dbg.declare(metadata ptr %uint_12_type, metadata !1627, metadata !DIExpression()), !dbg !1652
  %call = call ptr @bt_ctf_field_type_integer_create(i32 noundef 12), !dbg !1653
  store ptr %call, ptr %uint_12_type, align 8, !dbg !1652, !tbaa !677
  call void @llvm.lifetime.start.p0(i64 8, ptr %enumeration_type) #9, !dbg !1654
  tail call void @llvm.dbg.declare(metadata ptr %enumeration_type, metadata !1628, metadata !DIExpression()), !dbg !1655
  call void @llvm.lifetime.start.p0(i64 8, ptr %enumeration_sequence_type) #9, !dbg !1656
  tail call void @llvm.dbg.declare(metadata ptr %enumeration_sequence_type, metadata !1629, metadata !DIExpression()), !dbg !1657
  call void @llvm.lifetime.start.p0(i64 8, ptr %enumeration_array_type) #9, !dbg !1658
  tail call void @llvm.dbg.declare(metadata ptr %enumeration_array_type, metadata !1630, metadata !DIExpression()), !dbg !1659
  %0 = load ptr, ptr %uint_12_type, align 8, !dbg !1660, !tbaa !677
  %tobool = icmp ne ptr %0, null, !dbg !1660
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !1660

cond.true:                                        ; preds = %entry
  %call1 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 1, ptr noundef @__func__.type_field_tests, ptr noundef @.str.6, i32 noundef 512, ptr noundef @.str.33), !dbg !1660
  br label %cond.end, !dbg !1660

cond.false:                                       ; preds = %entry
  %call2 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 0, ptr noundef @__func__.type_field_tests, ptr noundef @.str.6, i32 noundef 512, ptr noundef @.str.33), !dbg !1660
  br label %cond.end, !dbg !1660

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call1, %cond.true ], [ %call2, %cond.false ], !dbg !1660
  %1 = load ptr, ptr %uint_12_type, align 8, !dbg !1661, !tbaa !677
  %call3 = call i32 @bt_ctf_field_type_integer_set_base(ptr noundef %1, i32 noundef 2), !dbg !1661
  %cmp = icmp eq i32 %call3, 0, !dbg !1661
  br i1 %cmp, label %cond.true4, label %cond.false6, !dbg !1661

cond.true4:                                       ; preds = %cond.end
  %call5 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 1, ptr noundef @__func__.type_field_tests, ptr noundef @.str.6, i32 noundef 515, ptr noundef @.str.78), !dbg !1661
  br label %cond.end8, !dbg !1661

cond.false6:                                      ; preds = %cond.end
  %call7 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 0, ptr noundef @__func__.type_field_tests, ptr noundef @.str.6, i32 noundef 515, ptr noundef @.str.78), !dbg !1661
  br label %cond.end8, !dbg !1661

cond.end8:                                        ; preds = %cond.false6, %cond.true4
  %cond9 = phi i32 [ %call5, %cond.true4 ], [ %call7, %cond.false6 ], !dbg !1661
  %2 = load ptr, ptr %uint_12_type, align 8, !dbg !1662, !tbaa !677
  %call10 = call i32 @bt_ctf_field_type_integer_set_base(ptr noundef %2, i32 noundef 10), !dbg !1662
  %cmp11 = icmp eq i32 %call10, 0, !dbg !1662
  br i1 %cmp11, label %cond.true12, label %cond.false14, !dbg !1662

cond.true12:                                      ; preds = %cond.end8
  %call13 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 1, ptr noundef @__func__.type_field_tests, ptr noundef @.str.6, i32 noundef 518, ptr noundef @.str.79), !dbg !1662
  br label %cond.end16, !dbg !1662

cond.false14:                                     ; preds = %cond.end8
  %call15 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 0, ptr noundef @__func__.type_field_tests, ptr noundef @.str.6, i32 noundef 518, ptr noundef @.str.79), !dbg !1662
  br label %cond.end16, !dbg !1662

cond.end16:                                       ; preds = %cond.false14, %cond.true12
  %cond17 = phi i32 [ %call13, %cond.true12 ], [ %call15, %cond.false14 ], !dbg !1662
  %3 = load ptr, ptr %uint_12_type, align 8, !dbg !1663, !tbaa !677
  %call18 = call i32 @bt_ctf_field_type_integer_set_base(ptr noundef %3, i32 noundef -1), !dbg !1663
  %tobool19 = icmp ne i32 %call18, 0, !dbg !1663
  br i1 %tobool19, label %cond.true20, label %cond.false22, !dbg !1663

cond.true20:                                      ; preds = %cond.end16
  %call21 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 1, ptr noundef @__func__.type_field_tests, ptr noundef @.str.6, i32 noundef 521, ptr noundef @.str.80), !dbg !1663
  br label %cond.end24, !dbg !1663

cond.false22:                                     ; preds = %cond.end16
  %call23 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 0, ptr noundef @__func__.type_field_tests, ptr noundef @.str.6, i32 noundef 521, ptr noundef @.str.80), !dbg !1663
  br label %cond.end24, !dbg !1663

cond.end24:                                       ; preds = %cond.false22, %cond.true20
  %cond25 = phi i32 [ %call21, %cond.true20 ], [ %call23, %cond.false22 ], !dbg !1663
  %4 = load ptr, ptr %uint_12_type, align 8, !dbg !1664, !tbaa !677
  %call26 = call i32 @bt_ctf_field_type_integer_set_base(ptr noundef %4, i32 noundef 8), !dbg !1664
  %cmp27 = icmp eq i32 %call26, 0, !dbg !1664
  br i1 %cmp27, label %cond.true28, label %cond.false30, !dbg !1664

cond.true28:                                      ; preds = %cond.end24
  %call29 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 1, ptr noundef @__func__.type_field_tests, ptr noundef @.str.6, i32 noundef 524, ptr noundef @.str.81), !dbg !1664
  br label %cond.end32, !dbg !1664

cond.false30:                                     ; preds = %cond.end24
  %call31 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 0, ptr noundef @__func__.type_field_tests, ptr noundef @.str.6, i32 noundef 524, ptr noundef @.str.81), !dbg !1664
  br label %cond.end32, !dbg !1664

cond.end32:                                       ; preds = %cond.false30, %cond.true28
  %cond33 = phi i32 [ %call29, %cond.true28 ], [ %call31, %cond.false30 ], !dbg !1664
  %5 = load ptr, ptr %uint_12_type, align 8, !dbg !1665, !tbaa !677
  %call34 = call i32 @bt_ctf_field_type_integer_set_base(ptr noundef %5, i32 noundef 16), !dbg !1665
  %cmp35 = icmp eq i32 %call34, 0, !dbg !1665
  br i1 %cmp35, label %cond.true36, label %cond.false38, !dbg !1665

cond.true36:                                      ; preds = %cond.end32
  %call37 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 1, ptr noundef @__func__.type_field_tests, ptr noundef @.str.6, i32 noundef 527, ptr noundef @.str.82), !dbg !1665
  br label %cond.end40, !dbg !1665

cond.false38:                                     ; preds = %cond.end32
  %call39 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 0, ptr noundef @__func__.type_field_tests, ptr noundef @.str.6, i32 noundef 527, ptr noundef @.str.82), !dbg !1665
  br label %cond.end40, !dbg !1665

cond.end40:                                       ; preds = %cond.false38, %cond.true36
  %cond41 = phi i32 [ %call37, %cond.true36 ], [ %call39, %cond.false38 ], !dbg !1665
  %6 = load ptr, ptr %uint_12_type, align 8, !dbg !1666, !tbaa !677
  %call42 = call i32 @bt_ctf_field_type_integer_set_base(ptr noundef %6, i32 noundef 457417), !dbg !1666
  %tobool43 = icmp ne i32 %call42, 0, !dbg !1666
  br i1 %tobool43, label %cond.true44, label %cond.false46, !dbg !1666

cond.true44:                                      ; preds = %cond.end40
  %call45 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 1, ptr noundef @__func__.type_field_tests, ptr noundef @.str.6, i32 noundef 529, ptr noundef @.str.83), !dbg !1666
  br label %cond.end48, !dbg !1666

cond.false46:                                     ; preds = %cond.end40
  %call47 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 0, ptr noundef @__func__.type_field_tests, ptr noundef @.str.6, i32 noundef 529, ptr noundef @.str.83), !dbg !1666
  br label %cond.end48, !dbg !1666

cond.end48:                                       ; preds = %cond.false46, %cond.true44
  %cond49 = phi i32 [ %call45, %cond.true44 ], [ %call47, %cond.false46 ], !dbg !1666
  %7 = load ptr, ptr %uint_12_type, align 8, !dbg !1667, !tbaa !677
  %call50 = call i32 @bt_ctf_field_type_integer_set_signed(ptr noundef %7, i32 noundef 952835), !dbg !1667
  %cmp51 = icmp eq i32 %call50, 0, !dbg !1667
  br i1 %cmp51, label %cond.true52, label %cond.false54, !dbg !1667

cond.true52:                                      ; preds = %cond.end48
  %call53 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 1, ptr noundef @__func__.type_field_tests, ptr noundef @.str.6, i32 noundef 531, ptr noundef @.str.84), !dbg !1667
  br label %cond.end56, !dbg !1667

cond.false54:                                     ; preds = %cond.end48
  %call55 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 0, ptr noundef @__func__.type_field_tests, ptr noundef @.str.6, i32 noundef 531, ptr noundef @.str.84), !dbg !1667
  br label %cond.end56, !dbg !1667

cond.end56:                                       ; preds = %cond.false54, %cond.true52
  %cond57 = phi i32 [ %call53, %cond.true52 ], [ %call55, %cond.false54 ], !dbg !1667
  %8 = load ptr, ptr %uint_12_type, align 8, !dbg !1668, !tbaa !677
  %call58 = call i32 @bt_ctf_field_type_integer_set_signed(ptr noundef %8, i32 noundef 0), !dbg !1668
  %cmp59 = icmp eq i32 %call58, 0, !dbg !1668
  br i1 %cmp59, label %cond.true60, label %cond.false62, !dbg !1668

cond.true60:                                      ; preds = %cond.end56
  %call61 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 1, ptr noundef @__func__.type_field_tests, ptr noundef @.str.6, i32 noundef 533, ptr noundef @.str.85), !dbg !1668
  br label %cond.end64, !dbg !1668

cond.false62:                                     ; preds = %cond.end56
  %call63 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 0, ptr noundef @__func__.type_field_tests, ptr noundef @.str.6, i32 noundef 533, ptr noundef @.str.85), !dbg !1668
  br label %cond.end64, !dbg !1668

cond.end64:                                       ; preds = %cond.false62, %cond.true60
  %cond65 = phi i32 [ %call61, %cond.true60 ], [ %call63, %cond.false62 ], !dbg !1668
  %call66 = call ptr @bt_ctf_field_type_integer_create(i32 noundef 16), !dbg !1669
  store ptr %call66, ptr %int_16_type, align 8, !dbg !1670, !tbaa !677
  %9 = load ptr, ptr %int_16_type, align 8, !dbg !1671, !tbaa !677
  %call67 = call i32 @bt_ctf_field_type_integer_set_signed(ptr noundef %9, i32 noundef 1), !dbg !1672
  %call68 = call ptr @bt_ctf_field_type_integer_create(i32 noundef 8), !dbg !1673
  store ptr %call68, ptr %uint_8_type, align 8, !dbg !1674, !tbaa !677
  %10 = load ptr, ptr %int_16_type, align 8, !dbg !1675, !tbaa !677
  %call69 = call ptr @bt_ctf_field_type_sequence_create(ptr noundef %10, ptr noundef @.str.43), !dbg !1676
  store ptr %call69, ptr %sequence_type, align 8, !dbg !1677, !tbaa !677
  %11 = load ptr, ptr %sequence_type, align 8, !dbg !1678, !tbaa !677
  %tobool70 = icmp ne ptr %11, null, !dbg !1678
  br i1 %tobool70, label %cond.true71, label %cond.false73, !dbg !1678

cond.true71:                                      ; preds = %cond.end64
  %call72 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 1, ptr noundef @__func__.type_field_tests, ptr noundef @.str.6, i32 noundef 540, ptr noundef @.str.86), !dbg !1678
  br label %cond.end75, !dbg !1678

cond.false73:                                     ; preds = %cond.end64
  %call74 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 0, ptr noundef @__func__.type_field_tests, ptr noundef @.str.6, i32 noundef 540, ptr noundef @.str.86), !dbg !1678
  br label %cond.end75, !dbg !1678

cond.end75:                                       ; preds = %cond.false73, %cond.true71
  %cond76 = phi i32 [ %call72, %cond.true71 ], [ %call74, %cond.false73 ], !dbg !1678
  %call77 = call ptr @bt_ctf_field_type_string_create(), !dbg !1679
  store ptr %call77, ptr %string_type, align 8, !dbg !1680, !tbaa !677
  %12 = load ptr, ptr %string_type, align 8, !dbg !1681, !tbaa !677
  %tobool78 = icmp ne ptr %12, null, !dbg !1681
  br i1 %tobool78, label %cond.true79, label %cond.false81, !dbg !1681

cond.true79:                                      ; preds = %cond.end75
  %call80 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 1, ptr noundef @__func__.type_field_tests, ptr noundef @.str.6, i32 noundef 543, ptr noundef @.str.87), !dbg !1681
  br label %cond.end83, !dbg !1681

cond.false81:                                     ; preds = %cond.end75
  %call82 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 0, ptr noundef @__func__.type_field_tests, ptr noundef @.str.6, i32 noundef 543, ptr noundef @.str.87), !dbg !1681
  br label %cond.end83, !dbg !1681

cond.end83:                                       ; preds = %cond.false81, %cond.true79
  %cond84 = phi i32 [ %call80, %cond.true79 ], [ %call82, %cond.false81 ], !dbg !1681
  %13 = load ptr, ptr %string_type, align 8, !dbg !1682, !tbaa !677
  %call85 = call i32 @bt_ctf_field_type_string_set_encoding(ptr noundef %13, i32 noundef 0), !dbg !1682
  %tobool86 = icmp ne i32 %call85, 0, !dbg !1682
  br i1 %tobool86, label %cond.true87, label %cond.false89, !dbg !1682

cond.true87:                                      ; preds = %cond.end83
  %call88 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 1, ptr noundef @__func__.type_field_tests, ptr noundef @.str.6, i32 noundef 546, ptr noundef @.str.88), !dbg !1682
  br label %cond.end91, !dbg !1682

cond.false89:                                     ; preds = %cond.end83
  %call90 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 0, ptr noundef @__func__.type_field_tests, ptr noundef @.str.6, i32 noundef 546, ptr noundef @.str.88), !dbg !1682
  br label %cond.end91, !dbg !1682

cond.end91:                                       ; preds = %cond.false89, %cond.true87
  %cond92 = phi i32 [ %call88, %cond.true87 ], [ %call90, %cond.false89 ], !dbg !1682
  %14 = load ptr, ptr %string_type, align 8, !dbg !1683, !tbaa !677
  %call93 = call i32 @bt_ctf_field_type_string_set_encoding(ptr noundef %14, i32 noundef 42), !dbg !1683
  %tobool94 = icmp ne i32 %call93, 0, !dbg !1683
  br i1 %tobool94, label %cond.true95, label %cond.false97, !dbg !1683

cond.true95:                                      ; preds = %cond.end91
  %call96 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 1, ptr noundef @__func__.type_field_tests, ptr noundef @.str.6, i32 noundef 549, ptr noundef @.str.89), !dbg !1683
  br label %cond.end99, !dbg !1683

cond.false97:                                     ; preds = %cond.end91
  %call98 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 0, ptr noundef @__func__.type_field_tests, ptr noundef @.str.6, i32 noundef 549, ptr noundef @.str.89), !dbg !1683
  br label %cond.end99, !dbg !1683

cond.end99:                                       ; preds = %cond.false97, %cond.true95
  %cond100 = phi i32 [ %call96, %cond.true95 ], [ %call98, %cond.false97 ], !dbg !1683
  %15 = load ptr, ptr %string_type, align 8, !dbg !1684, !tbaa !677
  %call101 = call i32 @bt_ctf_field_type_string_set_encoding(ptr noundef %15, i32 noundef 2), !dbg !1684
  %cmp102 = icmp eq i32 %call101, 0, !dbg !1684
  br i1 %cmp102, label %cond.true103, label %cond.false105, !dbg !1684

cond.true103:                                     ; preds = %cond.end99
  %call104 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 1, ptr noundef @__func__.type_field_tests, ptr noundef @.str.6, i32 noundef 552, ptr noundef @.str.90), !dbg !1684
  br label %cond.end107, !dbg !1684

cond.false105:                                    ; preds = %cond.end99
  %call106 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 0, ptr noundef @__func__.type_field_tests, ptr noundef @.str.6, i32 noundef 552, ptr noundef @.str.90), !dbg !1684
  br label %cond.end107, !dbg !1684

cond.end107:                                      ; preds = %cond.false105, %cond.true103
  %cond108 = phi i32 [ %call104, %cond.true103 ], [ %call106, %cond.false105 ], !dbg !1684
  %call109 = call ptr @bt_ctf_field_type_structure_create(), !dbg !1685
  store ptr %call109, ptr %structure_seq_type, align 8, !dbg !1686, !tbaa !677
  %16 = load ptr, ptr %structure_seq_type, align 8, !dbg !1687, !tbaa !677
  %tobool110 = icmp ne ptr %16, null, !dbg !1687
  br i1 %tobool110, label %cond.true111, label %cond.false113, !dbg !1687

cond.true111:                                     ; preds = %cond.end107
  %call112 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 1, ptr noundef @__func__.type_field_tests, ptr noundef @.str.6, i32 noundef 555, ptr noundef @.str.91), !dbg !1687
  br label %cond.end115, !dbg !1687

cond.false113:                                    ; preds = %cond.end107
  %call114 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 0, ptr noundef @__func__.type_field_tests, ptr noundef @.str.6, i32 noundef 555, ptr noundef @.str.91), !dbg !1687
  br label %cond.end115, !dbg !1687

cond.end115:                                      ; preds = %cond.false113, %cond.true111
  %cond116 = phi i32 [ %call112, %cond.true111 ], [ %call114, %cond.false113 ], !dbg !1687
  %17 = load ptr, ptr %structure_seq_type, align 8, !dbg !1688, !tbaa !677
  %18 = load ptr, ptr %uint_8_type, align 8, !dbg !1688, !tbaa !677
  %call117 = call i32 @bt_ctf_field_type_structure_add_field(ptr noundef %17, ptr noundef %18, ptr noundef @.str.43), !dbg !1688
  %cmp118 = icmp eq i32 %call117, 0, !dbg !1688
  br i1 %cmp118, label %cond.true119, label %cond.false121, !dbg !1688

cond.true119:                                     ; preds = %cond.end115
  %call120 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 1, ptr noundef @__func__.type_field_tests, ptr noundef @.str.6, i32 noundef 558, ptr noundef @.str.92), !dbg !1688
  br label %cond.end123, !dbg !1688

cond.false121:                                    ; preds = %cond.end115
  %call122 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 0, ptr noundef @__func__.type_field_tests, ptr noundef @.str.6, i32 noundef 558, ptr noundef @.str.92), !dbg !1688
  br label %cond.end123, !dbg !1688

cond.end123:                                      ; preds = %cond.false121, %cond.true119
  %cond124 = phi i32 [ %call120, %cond.true119 ], [ %call122, %cond.false121 ], !dbg !1688
  %19 = load ptr, ptr %structure_seq_type, align 8, !dbg !1689, !tbaa !677
  %20 = load ptr, ptr %sequence_type, align 8, !dbg !1689, !tbaa !677
  %call125 = call i32 @bt_ctf_field_type_structure_add_field(ptr noundef %19, ptr noundef %20, ptr noundef @.str.44), !dbg !1689
  %cmp126 = icmp eq i32 %call125, 0, !dbg !1689
  br i1 %cmp126, label %cond.true127, label %cond.false129, !dbg !1689

cond.true127:                                     ; preds = %cond.end123
  %call128 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 1, ptr noundef @__func__.type_field_tests, ptr noundef @.str.6, i32 noundef 561, ptr noundef @.str.93), !dbg !1689
  br label %cond.end131, !dbg !1689

cond.false129:                                    ; preds = %cond.end123
  %call130 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 0, ptr noundef @__func__.type_field_tests, ptr noundef @.str.6, i32 noundef 561, ptr noundef @.str.93), !dbg !1689
  br label %cond.end131, !dbg !1689

cond.end131:                                      ; preds = %cond.false129, %cond.true127
  %cond132 = phi i32 [ %call128, %cond.true127 ], [ %call130, %cond.false129 ], !dbg !1689
  %call133 = call ptr @bt_ctf_field_type_structure_create(), !dbg !1690
  store ptr %call133, ptr %composite_structure_type, align 8, !dbg !1691, !tbaa !677
  %21 = load ptr, ptr %composite_structure_type, align 8, !dbg !1692, !tbaa !677
  %22 = load ptr, ptr %string_type, align 8, !dbg !1692, !tbaa !677
  %call134 = call i32 @bt_ctf_field_type_structure_add_field(ptr noundef %21, ptr noundef %22, ptr noundef @.str.51), !dbg !1692
  %cmp135 = icmp eq i32 %call134, 0, !dbg !1692
  br i1 %cmp135, label %cond.true136, label %cond.false138, !dbg !1692

cond.true136:                                     ; preds = %cond.end131
  %call137 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 1, ptr noundef @__func__.type_field_tests, ptr noundef @.str.6, i32 noundef 565, ptr noundef @.str.94), !dbg !1692
  br label %cond.end140, !dbg !1692

cond.false138:                                    ; preds = %cond.end131
  %call139 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 0, ptr noundef @__func__.type_field_tests, ptr noundef @.str.6, i32 noundef 565, ptr noundef @.str.94), !dbg !1692
  br label %cond.end140, !dbg !1692

cond.end140:                                      ; preds = %cond.false138, %cond.true136
  %cond141 = phi i32 [ %call137, %cond.true136 ], [ %call139, %cond.false138 ], !dbg !1692
  %23 = load ptr, ptr %composite_structure_type, align 8, !dbg !1693, !tbaa !677
  %24 = load ptr, ptr %structure_seq_type, align 8, !dbg !1693, !tbaa !677
  %call142 = call i32 @bt_ctf_field_type_structure_add_field(ptr noundef %23, ptr noundef %24, ptr noundef @.str.53), !dbg !1693
  %cmp143 = icmp eq i32 %call142, 0, !dbg !1693
  br i1 %cmp143, label %cond.true144, label %cond.false146, !dbg !1693

cond.true144:                                     ; preds = %cond.end140
  %call145 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 1, ptr noundef @__func__.type_field_tests, ptr noundef @.str.6, i32 noundef 568, ptr noundef @.str.95), !dbg !1693
  br label %cond.end148, !dbg !1693

cond.false146:                                    ; preds = %cond.end140
  %call147 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 0, ptr noundef @__func__.type_field_tests, ptr noundef @.str.6, i32 noundef 568, ptr noundef @.str.95), !dbg !1693
  br label %cond.end148, !dbg !1693

cond.end148:                                      ; preds = %cond.false146, %cond.true144
  %cond149 = phi i32 [ %call145, %cond.true144 ], [ %call147, %cond.false146 ], !dbg !1693
  %25 = load ptr, ptr %int_16_type, align 8, !dbg !1694, !tbaa !677
  %call150 = call ptr @bt_ctf_field_create(ptr noundef %25), !dbg !1695
  store ptr %call150, ptr %int_16, align 8, !dbg !1696, !tbaa !677
  %26 = load ptr, ptr %int_16, align 8, !dbg !1697, !tbaa !677
  %tobool151 = icmp ne ptr %26, null, !dbg !1697
  br i1 %tobool151, label %cond.true152, label %cond.false154, !dbg !1697

cond.true152:                                     ; preds = %cond.end148
  %call153 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 1, ptr noundef @__func__.type_field_tests, ptr noundef @.str.6, i32 noundef 571, ptr noundef @.str.96), !dbg !1697
  br label %cond.end156, !dbg !1697

cond.false154:                                    ; preds = %cond.end148
  %call155 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 0, ptr noundef @__func__.type_field_tests, ptr noundef @.str.6, i32 noundef 571, ptr noundef @.str.96), !dbg !1697
  br label %cond.end156, !dbg !1697

cond.end156:                                      ; preds = %cond.false154, %cond.true152
  %cond157 = phi i32 [ %call153, %cond.true152 ], [ %call155, %cond.false154 ], !dbg !1697
  %27 = load ptr, ptr %uint_12_type, align 8, !dbg !1698, !tbaa !677
  %call158 = call ptr @bt_ctf_field_create(ptr noundef %27), !dbg !1699
  store ptr %call158, ptr %uint_12, align 8, !dbg !1700, !tbaa !677
  %28 = load ptr, ptr %uint_12, align 8, !dbg !1701, !tbaa !677
  %tobool159 = icmp ne ptr %28, null, !dbg !1701
  br i1 %tobool159, label %cond.true160, label %cond.false162, !dbg !1701

cond.true160:                                     ; preds = %cond.end156
  %call161 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 1, ptr noundef @__func__.type_field_tests, ptr noundef @.str.6, i32 noundef 573, ptr noundef @.str.97), !dbg !1701
  br label %cond.end164, !dbg !1701

cond.false162:                                    ; preds = %cond.end156
  %call163 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 0, ptr noundef @__func__.type_field_tests, ptr noundef @.str.6, i32 noundef 573, ptr noundef @.str.97), !dbg !1701
  br label %cond.end164, !dbg !1701

cond.end164:                                      ; preds = %cond.false162, %cond.true160
  %cond165 = phi i32 [ %call161, %cond.true160 ], [ %call163, %cond.false162 ], !dbg !1701
  %29 = load ptr, ptr %uint_12_type, align 8, !dbg !1702, !tbaa !677
  %call166 = call i32 @bt_ctf_field_type_integer_set_base(ptr noundef %29, i32 noundef 10), !dbg !1702
  %tobool167 = icmp ne i32 %call166, 0, !dbg !1702
  br i1 %tobool167, label %cond.true168, label %cond.false170, !dbg !1702

cond.true168:                                     ; preds = %cond.end164
  %call169 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 1, ptr noundef @__func__.type_field_tests, ptr noundef @.str.6, i32 noundef 578, ptr noundef @.str.98), !dbg !1702
  br label %cond.end172, !dbg !1702

cond.false170:                                    ; preds = %cond.end164
  %call171 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 0, ptr noundef @__func__.type_field_tests, ptr noundef @.str.6, i32 noundef 578, ptr noundef @.str.98), !dbg !1702
  br label %cond.end172, !dbg !1702

cond.end172:                                      ; preds = %cond.false170, %cond.true168
  %cond173 = phi i32 [ %call169, %cond.true168 ], [ %call171, %cond.false170 ], !dbg !1702
  %30 = load ptr, ptr %uint_12_type, align 8, !dbg !1703, !tbaa !677
  %call174 = call i32 @bt_ctf_field_type_integer_set_signed(ptr noundef %30, i32 noundef 0), !dbg !1703
  %tobool175 = icmp ne i32 %call174, 0, !dbg !1703
  br i1 %tobool175, label %cond.true176, label %cond.false178, !dbg !1703

cond.true176:                                     ; preds = %cond.end172
  %call177 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 1, ptr noundef @__func__.type_field_tests, ptr noundef @.str.6, i32 noundef 580, ptr noundef @.str.99), !dbg !1703
  br label %cond.end180, !dbg !1703

cond.false178:                                    ; preds = %cond.end172
  %call179 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 0, ptr noundef @__func__.type_field_tests, ptr noundef @.str.6, i32 noundef 580, ptr noundef @.str.99), !dbg !1703
  br label %cond.end180, !dbg !1703

cond.end180:                                      ; preds = %cond.false178, %cond.true176
  %cond181 = phi i32 [ %call177, %cond.true176 ], [ %call179, %cond.false178 ], !dbg !1703
  %31 = load ptr, ptr %uint_12, align 8, !dbg !1704, !tbaa !677
  %call182 = call i32 @bt_ctf_field_signed_integer_set_value(ptr noundef %31, i64 noundef -52), !dbg !1704
  %tobool183 = icmp ne i32 %call182, 0, !dbg !1704
  br i1 %tobool183, label %cond.true184, label %cond.false186, !dbg !1704

cond.true184:                                     ; preds = %cond.end180
  %call185 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 1, ptr noundef @__func__.type_field_tests, ptr noundef @.str.6, i32 noundef 584, ptr noundef @.str.100), !dbg !1704
  br label %cond.end188, !dbg !1704

cond.false186:                                    ; preds = %cond.end180
  %call187 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 0, ptr noundef @__func__.type_field_tests, ptr noundef @.str.6, i32 noundef 584, ptr noundef @.str.100), !dbg !1704
  br label %cond.end188, !dbg !1704

cond.end188:                                      ; preds = %cond.false186, %cond.true184
  %cond189 = phi i32 [ %call185, %cond.true184 ], [ %call187, %cond.false186 ], !dbg !1704
  %32 = load ptr, ptr %int_16, align 8, !dbg !1705, !tbaa !677
  %call190 = call i32 @bt_ctf_field_unsigned_integer_set_value(ptr noundef %32, i64 noundef 42), !dbg !1705
  %tobool191 = icmp ne i32 %call190, 0, !dbg !1705
  br i1 %tobool191, label %cond.true192, label %cond.false194, !dbg !1705

cond.true192:                                     ; preds = %cond.end188
  %call193 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 1, ptr noundef @__func__.type_field_tests, ptr noundef @.str.6, i32 noundef 586, ptr noundef @.str.101), !dbg !1705
  br label %cond.end196, !dbg !1705

cond.false194:                                    ; preds = %cond.end188
  %call195 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 0, ptr noundef @__func__.type_field_tests, ptr noundef @.str.6, i32 noundef 586, ptr noundef @.str.101), !dbg !1705
  br label %cond.end196, !dbg !1705

cond.end196:                                      ; preds = %cond.false194, %cond.true192
  %cond197 = phi i32 [ %call193, %cond.true192 ], [ %call195, %cond.false194 ], !dbg !1705
  %33 = load ptr, ptr %int_16, align 8, !dbg !1706, !tbaa !677
  %call198 = call i32 @bt_ctf_field_signed_integer_set_value(ptr noundef %33, i64 noundef -32768), !dbg !1706
  %cmp199 = icmp eq i32 %call198, 0, !dbg !1706
  br i1 %cmp199, label %cond.true200, label %cond.false202, !dbg !1706

cond.true200:                                     ; preds = %cond.end196
  %call201 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 1, ptr noundef @__func__.type_field_tests, ptr noundef @.str.6, i32 noundef 590, ptr noundef @.str.102), !dbg !1706
  br label %cond.end204, !dbg !1706

cond.false202:                                    ; preds = %cond.end196
  %call203 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 0, ptr noundef @__func__.type_field_tests, ptr noundef @.str.6, i32 noundef 590, ptr noundef @.str.102), !dbg !1706
  br label %cond.end204, !dbg !1706

cond.end204:                                      ; preds = %cond.false202, %cond.true200
  %cond205 = phi i32 [ %call201, %cond.true200 ], [ %call203, %cond.false202 ], !dbg !1706
  %34 = load ptr, ptr %int_16, align 8, !dbg !1707, !tbaa !677
  %call206 = call i32 @bt_ctf_field_signed_integer_set_value(ptr noundef %34, i64 noundef 32767), !dbg !1707
  %cmp207 = icmp eq i32 %call206, 0, !dbg !1707
  br i1 %cmp207, label %cond.true208, label %cond.false210, !dbg !1707

cond.true208:                                     ; preds = %cond.end204
  %call209 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 1, ptr noundef @__func__.type_field_tests, ptr noundef @.str.6, i32 noundef 592, ptr noundef @.str.103), !dbg !1707
  br label %cond.end212, !dbg !1707

cond.false210:                                    ; preds = %cond.end204
  %call211 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 0, ptr noundef @__func__.type_field_tests, ptr noundef @.str.6, i32 noundef 592, ptr noundef @.str.103), !dbg !1707
  br label %cond.end212, !dbg !1707

cond.end212:                                      ; preds = %cond.false210, %cond.true208
  %cond213 = phi i32 [ %call209, %cond.true208 ], [ %call211, %cond.false210 ], !dbg !1707
  %35 = load ptr, ptr %int_16, align 8, !dbg !1708, !tbaa !677
  %call214 = call i32 @bt_ctf_field_signed_integer_set_value(ptr noundef %35, i64 noundef 32768), !dbg !1708
  %tobool215 = icmp ne i32 %call214, 0, !dbg !1708
  br i1 %tobool215, label %cond.true216, label %cond.false218, !dbg !1708

cond.true216:                                     ; preds = %cond.end212
  %call217 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 1, ptr noundef @__func__.type_field_tests, ptr noundef @.str.6, i32 noundef 594, ptr noundef @.str.104), !dbg !1708
  br label %cond.end220, !dbg !1708

cond.false218:                                    ; preds = %cond.end212
  %call219 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 0, ptr noundef @__func__.type_field_tests, ptr noundef @.str.6, i32 noundef 594, ptr noundef @.str.104), !dbg !1708
  br label %cond.end220, !dbg !1708

cond.end220:                                      ; preds = %cond.false218, %cond.true216
  %cond221 = phi i32 [ %call217, %cond.true216 ], [ %call219, %cond.false218 ], !dbg !1708
  %36 = load ptr, ptr %int_16, align 8, !dbg !1709, !tbaa !677
  %call222 = call i32 @bt_ctf_field_signed_integer_set_value(ptr noundef %36, i64 noundef -32769), !dbg !1709
  %tobool223 = icmp ne i32 %call222, 0, !dbg !1709
  br i1 %tobool223, label %cond.true224, label %cond.false226, !dbg !1709

cond.true224:                                     ; preds = %cond.end220
  %call225 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 1, ptr noundef @__func__.type_field_tests, ptr noundef @.str.6, i32 noundef 596, ptr noundef @.str.105), !dbg !1709
  br label %cond.end228, !dbg !1709

cond.false226:                                    ; preds = %cond.end220
  %call227 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 0, ptr noundef @__func__.type_field_tests, ptr noundef @.str.6, i32 noundef 596, ptr noundef @.str.105), !dbg !1709
  br label %cond.end228, !dbg !1709

cond.end228:                                      ; preds = %cond.false226, %cond.true224
  %cond229 = phi i32 [ %call225, %cond.true224 ], [ %call227, %cond.false226 ], !dbg !1709
  %37 = load ptr, ptr %int_16, align 8, !dbg !1710, !tbaa !677
  %call230 = call i32 @bt_ctf_field_signed_integer_set_value(ptr noundef %37, i64 noundef -42), !dbg !1710
  %cmp231 = icmp eq i32 %call230, 0, !dbg !1710
  br i1 %cmp231, label %cond.true232, label %cond.false234, !dbg !1710

cond.true232:                                     ; preds = %cond.end228
  %call233 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 1, ptr noundef @__func__.type_field_tests, ptr noundef @.str.6, i32 noundef 598, ptr noundef @.str.106), !dbg !1710
  br label %cond.end236, !dbg !1710

cond.false234:                                    ; preds = %cond.end228
  %call235 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 0, ptr noundef @__func__.type_field_tests, ptr noundef @.str.6, i32 noundef 598, ptr noundef @.str.106), !dbg !1710
  br label %cond.end236, !dbg !1710

cond.end236:                                      ; preds = %cond.false234, %cond.true232
  %cond237 = phi i32 [ %call233, %cond.true232 ], [ %call235, %cond.false234 ], !dbg !1710
  %38 = load ptr, ptr %uint_12, align 8, !dbg !1711, !tbaa !677
  %call238 = call i32 @bt_ctf_field_unsigned_integer_set_value(ptr noundef %38, i64 noundef 4095), !dbg !1711
  %cmp239 = icmp eq i32 %call238, 0, !dbg !1711
  br i1 %cmp239, label %cond.true240, label %cond.false242, !dbg !1711

cond.true240:                                     ; preds = %cond.end236
  %call241 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 1, ptr noundef @__func__.type_field_tests, ptr noundef @.str.6, i32 noundef 601, ptr noundef @.str.107), !dbg !1711
  br label %cond.end244, !dbg !1711

cond.false242:                                    ; preds = %cond.end236
  %call243 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 0, ptr noundef @__func__.type_field_tests, ptr noundef @.str.6, i32 noundef 601, ptr noundef @.str.107), !dbg !1711
  br label %cond.end244, !dbg !1711

cond.end244:                                      ; preds = %cond.false242, %cond.true240
  %cond245 = phi i32 [ %call241, %cond.true240 ], [ %call243, %cond.false242 ], !dbg !1711
  %39 = load ptr, ptr %uint_12, align 8, !dbg !1712, !tbaa !677
  %call246 = call i32 @bt_ctf_field_unsigned_integer_set_value(ptr noundef %39, i64 noundef 4096), !dbg !1712
  %tobool247 = icmp ne i32 %call246, 0, !dbg !1712
  br i1 %tobool247, label %cond.true248, label %cond.false250, !dbg !1712

cond.true248:                                     ; preds = %cond.end244
  %call249 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 1, ptr noundef @__func__.type_field_tests, ptr noundef @.str.6, i32 noundef 603, ptr noundef @.str.108), !dbg !1712
  br label %cond.end252, !dbg !1712

cond.false250:                                    ; preds = %cond.end244
  %call251 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 0, ptr noundef @__func__.type_field_tests, ptr noundef @.str.6, i32 noundef 603, ptr noundef @.str.108), !dbg !1712
  br label %cond.end252, !dbg !1712

cond.end252:                                      ; preds = %cond.false250, %cond.true248
  %cond253 = phi i32 [ %call249, %cond.true248 ], [ %call251, %cond.false250 ], !dbg !1712
  %40 = load ptr, ptr %uint_12, align 8, !dbg !1713, !tbaa !677
  %call254 = call i32 @bt_ctf_field_unsigned_integer_set_value(ptr noundef %40, i64 noundef 0), !dbg !1713
  %cmp255 = icmp eq i32 %call254, 0, !dbg !1713
  br i1 %cmp255, label %cond.true256, label %cond.false258, !dbg !1713

cond.true256:                                     ; preds = %cond.end252
  %call257 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 1, ptr noundef @__func__.type_field_tests, ptr noundef @.str.6, i32 noundef 605, ptr noundef @.str.109), !dbg !1713
  br label %cond.end260, !dbg !1713

cond.false258:                                    ; preds = %cond.end252
  %call259 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 0, ptr noundef @__func__.type_field_tests, ptr noundef @.str.6, i32 noundef 605, ptr noundef @.str.109), !dbg !1713
  br label %cond.end260, !dbg !1713

cond.end260:                                      ; preds = %cond.false258, %cond.true256
  %cond261 = phi i32 [ %call257, %cond.true256 ], [ %call259, %cond.false258 ], !dbg !1713
  %41 = load ptr, ptr %string_type, align 8, !dbg !1714, !tbaa !677
  %call262 = call ptr @bt_ctf_field_create(ptr noundef %41), !dbg !1715
  store ptr %call262, ptr %string, align 8, !dbg !1716, !tbaa !677
  %42 = load ptr, ptr %string, align 8, !dbg !1717, !tbaa !677
  %tobool263 = icmp ne ptr %42, null, !dbg !1717
  br i1 %tobool263, label %cond.true264, label %cond.false266, !dbg !1717

cond.true264:                                     ; preds = %cond.end260
  %call265 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 1, ptr noundef @__func__.type_field_tests, ptr noundef @.str.6, i32 noundef 608, ptr noundef @.str.110), !dbg !1717
  br label %cond.end268, !dbg !1717

cond.false266:                                    ; preds = %cond.end260
  %call267 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 0, ptr noundef @__func__.type_field_tests, ptr noundef @.str.6, i32 noundef 608, ptr noundef @.str.110), !dbg !1717
  br label %cond.end268, !dbg !1717

cond.end268:                                      ; preds = %cond.false266, %cond.true264
  %cond269 = phi i32 [ %call265, %cond.true264 ], [ %call267, %cond.false266 ], !dbg !1717
  %43 = load ptr, ptr %string, align 8, !dbg !1718, !tbaa !677
  %call270 = call i32 @bt_ctf_field_string_set_value(ptr noundef %43, ptr noundef @.str.111), !dbg !1718
  %cmp271 = icmp eq i32 %call270, 0, !dbg !1718
  br i1 %cmp271, label %cond.true272, label %cond.false274, !dbg !1718

cond.true272:                                     ; preds = %cond.end268
  %call273 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 1, ptr noundef @__func__.type_field_tests, ptr noundef @.str.6, i32 noundef 610, ptr noundef @.str.112), !dbg !1718
  br label %cond.end276, !dbg !1718

cond.false274:                                    ; preds = %cond.end268
  %call275 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 0, ptr noundef @__func__.type_field_tests, ptr noundef @.str.6, i32 noundef 610, ptr noundef @.str.112), !dbg !1718
  br label %cond.end276, !dbg !1718

cond.end276:                                      ; preds = %cond.false274, %cond.true272
  %cond277 = phi i32 [ %call273, %cond.true272 ], [ %call275, %cond.false274 ], !dbg !1718
  %44 = load ptr, ptr %uint_12_type, align 8, !dbg !1719, !tbaa !677
  %call278 = call ptr @bt_ctf_field_type_enumeration_create(ptr noundef %44), !dbg !1720
  store ptr %call278, ptr %enumeration_type, align 8, !dbg !1721, !tbaa !677
  %45 = load ptr, ptr %enumeration_type, align 8, !dbg !1722, !tbaa !677
  %tobool279 = icmp ne ptr %45, null, !dbg !1722
  br i1 %tobool279, label %cond.true280, label %cond.false282, !dbg !1722

cond.true280:                                     ; preds = %cond.end276
  %call281 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 1, ptr noundef @__func__.type_field_tests, ptr noundef @.str.6, i32 noundef 614, ptr noundef @.str.113), !dbg !1722
  br label %cond.end284, !dbg !1722

cond.false282:                                    ; preds = %cond.end276
  %call283 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 0, ptr noundef @__func__.type_field_tests, ptr noundef @.str.6, i32 noundef 614, ptr noundef @.str.113), !dbg !1722
  br label %cond.end284, !dbg !1722

cond.end284:                                      ; preds = %cond.false282, %cond.true280
  %cond285 = phi i32 [ %call281, %cond.true280 ], [ %call283, %cond.false282 ], !dbg !1722
  %46 = load ptr, ptr %enumeration_type, align 8, !dbg !1723, !tbaa !677
  %call286 = call ptr @bt_ctf_field_type_sequence_create(ptr noundef %46, ptr noundef @.str.114), !dbg !1724
  store ptr %call286, ptr %enumeration_sequence_type, align 8, !dbg !1725, !tbaa !677
  %47 = load ptr, ptr %enumeration_sequence_type, align 8, !dbg !1726, !tbaa !677
  %tobool287 = icmp ne ptr %47, null, !dbg !1726
  br i1 %tobool287, label %cond.false290, label %cond.true288, !dbg !1726

cond.true288:                                     ; preds = %cond.end284
  %call289 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 1, ptr noundef @__func__.type_field_tests, ptr noundef @.str.6, i32 noundef 618, ptr noundef @.str.115), !dbg !1726
  br label %cond.end292, !dbg !1726

cond.false290:                                    ; preds = %cond.end284
  %call291 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 0, ptr noundef @__func__.type_field_tests, ptr noundef @.str.6, i32 noundef 618, ptr noundef @.str.115), !dbg !1726
  br label %cond.end292, !dbg !1726

cond.end292:                                      ; preds = %cond.false290, %cond.true288
  %cond293 = phi i32 [ %call289, %cond.true288 ], [ %call291, %cond.false290 ], !dbg !1726
  %48 = load ptr, ptr %enumeration_type, align 8, !dbg !1727, !tbaa !677
  %call294 = call ptr @bt_ctf_field_type_array_create(ptr noundef %48, i32 noundef 10), !dbg !1728
  store ptr %call294, ptr %enumeration_array_type, align 8, !dbg !1729, !tbaa !677
  %49 = load ptr, ptr %enumeration_array_type, align 8, !dbg !1730, !tbaa !677
  %tobool295 = icmp ne ptr %49, null, !dbg !1730
  br i1 %tobool295, label %cond.false298, label %cond.true296, !dbg !1730

cond.true296:                                     ; preds = %cond.end292
  %call297 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 1, ptr noundef @__func__.type_field_tests, ptr noundef @.str.6, i32 noundef 622, ptr noundef @.str.116), !dbg !1730
  br label %cond.end300, !dbg !1730

cond.false298:                                    ; preds = %cond.end292
  %call299 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 0, ptr noundef @__func__.type_field_tests, ptr noundef @.str.6, i32 noundef 622, ptr noundef @.str.116), !dbg !1730
  br label %cond.end300, !dbg !1730

cond.end300:                                      ; preds = %cond.false298, %cond.true296
  %cond301 = phi i32 [ %call297, %cond.true296 ], [ %call299, %cond.false298 ], !dbg !1730
  %50 = load ptr, ptr %composite_structure_type, align 8, !dbg !1731, !tbaa !677
  %51 = load ptr, ptr %enumeration_type, align 8, !dbg !1731, !tbaa !677
  %call302 = call i32 @bt_ctf_field_type_structure_add_field(ptr noundef %50, ptr noundef %51, ptr noundef @.str.117), !dbg !1731
  %tobool303 = icmp ne i32 %call302, 0, !dbg !1731
  br i1 %tobool303, label %cond.true304, label %cond.false306, !dbg !1731

cond.true304:                                     ; preds = %cond.end300
  %call305 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 1, ptr noundef @__func__.type_field_tests, ptr noundef @.str.6, i32 noundef 625, ptr noundef @.str.118), !dbg !1731
  br label %cond.end308, !dbg !1731

cond.false306:                                    ; preds = %cond.end300
  %call307 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 0, ptr noundef @__func__.type_field_tests, ptr noundef @.str.6, i32 noundef 625, ptr noundef @.str.118), !dbg !1731
  br label %cond.end308, !dbg !1731

cond.end308:                                      ; preds = %cond.false306, %cond.true304
  %cond309 = phi i32 [ %call305, %cond.true304 ], [ %call307, %cond.false306 ], !dbg !1731
  %52 = load ptr, ptr %enumeration_type, align 8, !dbg !1732, !tbaa !677
  %call310 = call ptr @bt_ctf_field_create(ptr noundef %52), !dbg !1733
  store ptr %call310, ptr %enumeration, align 8, !dbg !1734, !tbaa !677
  %53 = load ptr, ptr %enumeration, align 8, !dbg !1735, !tbaa !677
  %tobool311 = icmp ne ptr %53, null, !dbg !1735
  br i1 %tobool311, label %cond.false314, label %cond.true312, !dbg !1735

cond.true312:                                     ; preds = %cond.end308
  %call313 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 1, ptr noundef @__func__.type_field_tests, ptr noundef @.str.6, i32 noundef 628, ptr noundef @.str.119), !dbg !1735
  br label %cond.end316, !dbg !1735

cond.false314:                                    ; preds = %cond.end308
  %call315 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 0, ptr noundef @__func__.type_field_tests, ptr noundef @.str.6, i32 noundef 628, ptr noundef @.str.119), !dbg !1735
  br label %cond.end316, !dbg !1735

cond.end316:                                      ; preds = %cond.false314, %cond.true312
  %cond317 = phi i32 [ %call313, %cond.true312 ], [ %call315, %cond.false314 ], !dbg !1735
  %54 = load ptr, ptr %string, align 8, !dbg !1736, !tbaa !677
  call void @bt_ctf_field_put(ptr noundef %54), !dbg !1737
  %55 = load ptr, ptr %uint_12, align 8, !dbg !1738, !tbaa !677
  call void @bt_ctf_field_put(ptr noundef %55), !dbg !1739
  %56 = load ptr, ptr %int_16, align 8, !dbg !1740, !tbaa !677
  call void @bt_ctf_field_put(ptr noundef %56), !dbg !1741
  %57 = load ptr, ptr %enumeration, align 8, !dbg !1742, !tbaa !677
  call void @bt_ctf_field_put(ptr noundef %57), !dbg !1743
  %58 = load ptr, ptr %composite_structure_type, align 8, !dbg !1744, !tbaa !677
  call void @bt_ctf_field_type_put(ptr noundef %58), !dbg !1745
  %59 = load ptr, ptr %structure_seq_type, align 8, !dbg !1746, !tbaa !677
  call void @bt_ctf_field_type_put(ptr noundef %59), !dbg !1747
  %60 = load ptr, ptr %string_type, align 8, !dbg !1748, !tbaa !677
  call void @bt_ctf_field_type_put(ptr noundef %60), !dbg !1749
  %61 = load ptr, ptr %sequence_type, align 8, !dbg !1750, !tbaa !677
  call void @bt_ctf_field_type_put(ptr noundef %61), !dbg !1751
  %62 = load ptr, ptr %uint_8_type, align 8, !dbg !1752, !tbaa !677
  call void @bt_ctf_field_type_put(ptr noundef %62), !dbg !1753
  %63 = load ptr, ptr %int_16_type, align 8, !dbg !1754, !tbaa !677
  call void @bt_ctf_field_type_put(ptr noundef %63), !dbg !1755
  %64 = load ptr, ptr %uint_12_type, align 8, !dbg !1756, !tbaa !677
  call void @bt_ctf_field_type_put(ptr noundef %64), !dbg !1757
  %65 = load ptr, ptr %enumeration_type, align 8, !dbg !1758, !tbaa !677
  call void @bt_ctf_field_type_put(ptr noundef %65), !dbg !1759
  %66 = load ptr, ptr %enumeration_sequence_type, align 8, !dbg !1760, !tbaa !677
  call void @bt_ctf_field_type_put(ptr noundef %66), !dbg !1761
  %67 = load ptr, ptr %enumeration_array_type, align 8, !dbg !1762, !tbaa !677
  call void @bt_ctf_field_type_put(ptr noundef %67), !dbg !1763
  call void @llvm.lifetime.end.p0(i64 8, ptr %enumeration_array_type) #9, !dbg !1764
  call void @llvm.lifetime.end.p0(i64 8, ptr %enumeration_sequence_type) #9, !dbg !1764
  call void @llvm.lifetime.end.p0(i64 8, ptr %enumeration_type) #9, !dbg !1764
  call void @llvm.lifetime.end.p0(i64 8, ptr %uint_12_type) #9, !dbg !1764
  call void @llvm.lifetime.end.p0(i64 8, ptr %int_16_type) #9, !dbg !1764
  call void @llvm.lifetime.end.p0(i64 8, ptr %uint_8_type) #9, !dbg !1764
  call void @llvm.lifetime.end.p0(i64 8, ptr %sequence_type) #9, !dbg !1764
  call void @llvm.lifetime.end.p0(i64 8, ptr %string_type) #9, !dbg !1764
  call void @llvm.lifetime.end.p0(i64 8, ptr %structure_seq_type) #9, !dbg !1764
  call void @llvm.lifetime.end.p0(i64 8, ptr %composite_structure_type) #9, !dbg !1764
  call void @llvm.lifetime.end.p0(i64 8, ptr %enumeration) #9, !dbg !1764
  call void @llvm.lifetime.end.p0(i64 8, ptr %string) #9, !dbg !1764
  call void @llvm.lifetime.end.p0(i64 8, ptr %int_16) #9, !dbg !1764
  call void @llvm.lifetime.end.p0(i64 8, ptr %uint_12) #9, !dbg !1764
  ret void, !dbg !1764
}

declare !dbg !1765 i32 @bt_ctf_field_type_string_set_encoding(ptr noundef, i32 noundef) #3

declare !dbg !1768 ptr @bt_ctf_field_type_array_create(ptr noundef, i32 noundef) #3

; Function Attrs: nounwind uwtable
define dso_local void @packet_resize_test(ptr noundef %stream_class, ptr noundef %stream, ptr noundef %clock) #0 !dbg !1771 {
entry:
  %stream_class.addr = alloca ptr, align 8
  %stream.addr = alloca ptr, align 8
  %clock.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  %event_class = alloca ptr, align 8
  %integer_type = alloca ptr, align 8
  %string_type = alloca ptr, align 8
  %event = alloca ptr, align 8
  %integer = alloca ptr, align 8
  %string = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %stream_class, ptr %stream_class.addr, align 8, !tbaa !677
  tail call void @llvm.dbg.declare(metadata ptr %stream_class.addr, metadata !1773, metadata !DIExpression()), !dbg !1788
  store ptr %stream, ptr %stream.addr, align 8, !tbaa !677
  tail call void @llvm.dbg.declare(metadata ptr %stream.addr, metadata !1774, metadata !DIExpression()), !dbg !1789
  store ptr %clock, ptr %clock.addr, align 8, !tbaa !677
  tail call void @llvm.dbg.declare(metadata ptr %clock.addr, metadata !1775, metadata !DIExpression()), !dbg !1790
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #9, !dbg !1791
  tail call void @llvm.dbg.declare(metadata ptr %ret, metadata !1776, metadata !DIExpression()), !dbg !1792
  store i32 0, ptr %ret, align 4, !dbg !1792, !tbaa !685
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9, !dbg !1793
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !1777, metadata !DIExpression()), !dbg !1794
  call void @llvm.lifetime.start.p0(i64 8, ptr %event_class) #9, !dbg !1795
  tail call void @llvm.dbg.declare(metadata ptr %event_class, metadata !1778, metadata !DIExpression()), !dbg !1796
  %call = call ptr @bt_ctf_event_class_create(ptr noundef @.str.120), !dbg !1797
  store ptr %call, ptr %event_class, align 8, !dbg !1796, !tbaa !677
  call void @llvm.lifetime.start.p0(i64 8, ptr %integer_type) #9, !dbg !1798
  tail call void @llvm.dbg.declare(metadata ptr %integer_type, metadata !1779, metadata !DIExpression()), !dbg !1799
  %call1 = call ptr @bt_ctf_field_type_integer_create(i32 noundef 17), !dbg !1800
  store ptr %call1, ptr %integer_type, align 8, !dbg !1799, !tbaa !677
  call void @llvm.lifetime.start.p0(i64 8, ptr %string_type) #9, !dbg !1801
  tail call void @llvm.dbg.declare(metadata ptr %string_type, metadata !1780, metadata !DIExpression()), !dbg !1802
  %call2 = call ptr @bt_ctf_field_type_string_create(), !dbg !1803
  store ptr %call2, ptr %string_type, align 8, !dbg !1802, !tbaa !677
  %0 = load ptr, ptr %event_class, align 8, !dbg !1804, !tbaa !677
  %1 = load ptr, ptr %integer_type, align 8, !dbg !1805, !tbaa !677
  %call3 = call i32 @bt_ctf_event_class_add_field(ptr noundef %0, ptr noundef %1, ptr noundef @.str.121), !dbg !1806
  %2 = load i32, ptr %ret, align 4, !dbg !1807, !tbaa !685
  %or = or i32 %2, %call3, !dbg !1807
  store i32 %or, ptr %ret, align 4, !dbg !1807, !tbaa !685
  %3 = load ptr, ptr %event_class, align 8, !dbg !1808, !tbaa !677
  %4 = load ptr, ptr %string_type, align 8, !dbg !1809, !tbaa !677
  %call4 = call i32 @bt_ctf_event_class_add_field(ptr noundef %3, ptr noundef %4, ptr noundef @.str.51), !dbg !1810
  %5 = load i32, ptr %ret, align 4, !dbg !1811, !tbaa !685
  %or5 = or i32 %5, %call4, !dbg !1811
  store i32 %or5, ptr %ret, align 4, !dbg !1811, !tbaa !685
  %6 = load ptr, ptr %stream_class.addr, align 8, !dbg !1812, !tbaa !677
  %7 = load ptr, ptr %event_class, align 8, !dbg !1813, !tbaa !677
  %call6 = call i32 @bt_ctf_stream_class_add_event_class(ptr noundef %6, ptr noundef %7), !dbg !1814
  %8 = load i32, ptr %ret, align 4, !dbg !1815, !tbaa !685
  %or7 = or i32 %8, %call6, !dbg !1815
  store i32 %or7, ptr %ret, align 4, !dbg !1815, !tbaa !685
  %9 = load i32, ptr %ret, align 4, !dbg !1816, !tbaa !685
  %cmp = icmp eq i32 %9, 0, !dbg !1816
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !1816

cond.true:                                        ; preds = %entry
  %call8 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 1, ptr noundef @__func__.packet_resize_test, ptr noundef @.str.6, i32 noundef 668, ptr noundef @.str.122), !dbg !1816
  br label %cond.end, !dbg !1816

cond.false:                                       ; preds = %entry
  %call9 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 0, ptr noundef @__func__.packet_resize_test, ptr noundef @.str.6, i32 noundef 668, ptr noundef @.str.122), !dbg !1816
  br label %cond.end, !dbg !1816

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call8, %cond.true ], [ %call9, %cond.false ], !dbg !1816
  %10 = load i32, ptr %ret, align 4, !dbg !1817, !tbaa !685
  %tobool = icmp ne i32 %10, 0, !dbg !1817
  br i1 %tobool, label %if.then, label %if.end, !dbg !1819

if.then:                                          ; preds = %cond.end
  br label %end, !dbg !1820

if.end:                                           ; preds = %cond.end
  store i32 0, ptr %i, align 4, !dbg !1822, !tbaa !685
  br label %for.cond, !dbg !1823

for.cond:                                         ; preds = %for.inc, %if.end
  %11 = load i32, ptr %i, align 4, !dbg !1824, !tbaa !685
  %cmp10 = icmp slt i32 %11, 100000, !dbg !1825
  br i1 %cmp10, label %for.body, label %for.end, !dbg !1826

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %event) #9, !dbg !1827
  tail call void @llvm.dbg.declare(metadata ptr %event, metadata !1781, metadata !DIExpression()), !dbg !1828
  %12 = load ptr, ptr %event_class, align 8, !dbg !1829, !tbaa !677
  %call11 = call ptr @bt_ctf_event_create(ptr noundef %12), !dbg !1830
  store ptr %call11, ptr %event, align 8, !dbg !1828, !tbaa !677
  call void @llvm.lifetime.start.p0(i64 8, ptr %integer) #9, !dbg !1831
  tail call void @llvm.dbg.declare(metadata ptr %integer, metadata !1785, metadata !DIExpression()), !dbg !1832
  %13 = load ptr, ptr %integer_type, align 8, !dbg !1833, !tbaa !677
  %call12 = call ptr @bt_ctf_field_create(ptr noundef %13), !dbg !1834
  store ptr %call12, ptr %integer, align 8, !dbg !1832, !tbaa !677
  call void @llvm.lifetime.start.p0(i64 8, ptr %string) #9, !dbg !1835
  tail call void @llvm.dbg.declare(metadata ptr %string, metadata !1786, metadata !DIExpression()), !dbg !1836
  %14 = load ptr, ptr %string_type, align 8, !dbg !1837, !tbaa !677
  %call13 = call ptr @bt_ctf_field_create(ptr noundef %14), !dbg !1838
  store ptr %call13, ptr %string, align 8, !dbg !1836, !tbaa !677
  %15 = load ptr, ptr %clock.addr, align 8, !dbg !1839, !tbaa !677
  %16 = load i64, ptr @current_time, align 8, !dbg !1840, !tbaa !779
  %inc = add i64 %16, 1, !dbg !1840
  store i64 %inc, ptr @current_time, align 8, !dbg !1840, !tbaa !779
  %call14 = call i32 @bt_ctf_clock_set_time(ptr noundef %15, i64 noundef %inc), !dbg !1841
  %17 = load i32, ptr %ret, align 4, !dbg !1842, !tbaa !685
  %or15 = or i32 %17, %call14, !dbg !1842
  store i32 %or15, ptr %ret, align 4, !dbg !1842, !tbaa !685
  %18 = load ptr, ptr %integer, align 8, !dbg !1843, !tbaa !677
  %19 = load i32, ptr %i, align 4, !dbg !1844, !tbaa !685
  %conv = sext i32 %19 to i64, !dbg !1844
  %call16 = call i32 @bt_ctf_field_unsigned_integer_set_value(ptr noundef %18, i64 noundef %conv), !dbg !1845
  %20 = load i32, ptr %ret, align 4, !dbg !1846, !tbaa !685
  %or17 = or i32 %20, %call16, !dbg !1846
  store i32 %or17, ptr %ret, align 4, !dbg !1846, !tbaa !685
  %21 = load ptr, ptr %event, align 8, !dbg !1847, !tbaa !677
  %22 = load ptr, ptr %integer, align 8, !dbg !1848, !tbaa !677
  %call18 = call i32 @bt_ctf_event_set_payload(ptr noundef %21, ptr noundef @.str.121, ptr noundef %22), !dbg !1849
  %23 = load i32, ptr %ret, align 4, !dbg !1850, !tbaa !685
  %or19 = or i32 %23, %call18, !dbg !1850
  store i32 %or19, ptr %ret, align 4, !dbg !1850, !tbaa !685
  %24 = load ptr, ptr %integer, align 8, !dbg !1851, !tbaa !677
  call void @bt_ctf_field_put(ptr noundef %24), !dbg !1852
  %25 = load ptr, ptr %string, align 8, !dbg !1853, !tbaa !677
  %call20 = call i32 @bt_ctf_field_string_set_value(ptr noundef %25, ptr noundef @.str.123), !dbg !1854
  %26 = load i32, ptr %ret, align 4, !dbg !1855, !tbaa !685
  %or21 = or i32 %26, %call20, !dbg !1855
  store i32 %or21, ptr %ret, align 4, !dbg !1855, !tbaa !685
  %27 = load ptr, ptr %event, align 8, !dbg !1856, !tbaa !677
  %28 = load ptr, ptr %string, align 8, !dbg !1857, !tbaa !677
  %call22 = call i32 @bt_ctf_event_set_payload(ptr noundef %27, ptr noundef @.str.51, ptr noundef %28), !dbg !1858
  %29 = load i32, ptr %ret, align 4, !dbg !1859, !tbaa !685
  %or23 = or i32 %29, %call22, !dbg !1859
  store i32 %or23, ptr %ret, align 4, !dbg !1859, !tbaa !685
  %30 = load ptr, ptr %string, align 8, !dbg !1860, !tbaa !677
  call void @bt_ctf_field_put(ptr noundef %30), !dbg !1861
  %31 = load ptr, ptr %stream.addr, align 8, !dbg !1862, !tbaa !677
  %32 = load ptr, ptr %event, align 8, !dbg !1863, !tbaa !677
  %call24 = call i32 @bt_ctf_stream_append_event(ptr noundef %31, ptr noundef %32), !dbg !1864
  %33 = load i32, ptr %ret, align 4, !dbg !1865, !tbaa !685
  %or25 = or i32 %33, %call24, !dbg !1865
  store i32 %or25, ptr %ret, align 4, !dbg !1865, !tbaa !685
  %34 = load ptr, ptr %event, align 8, !dbg !1866, !tbaa !677
  call void @bt_ctf_event_put(ptr noundef %34), !dbg !1867
  %35 = load i32, ptr %ret, align 4, !dbg !1868, !tbaa !685
  %tobool26 = icmp ne i32 %35, 0, !dbg !1868
  br i1 %tobool26, label %if.then27, label %if.end28, !dbg !1870

if.then27:                                        ; preds = %for.body
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1871

if.end28:                                         ; preds = %for.body
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1873
  br label %cleanup, !dbg !1873

cleanup:                                          ; preds = %if.end28, %if.then27
  call void @llvm.lifetime.end.p0(i64 8, ptr %string) #9, !dbg !1873
  call void @llvm.lifetime.end.p0(i64 8, ptr %integer) #9, !dbg !1873
  call void @llvm.lifetime.end.p0(i64 8, ptr %event) #9, !dbg !1873
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 3, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !1874

for.inc:                                          ; preds = %cleanup.cont
  %36 = load i32, ptr %i, align 4, !dbg !1875, !tbaa !685
  %inc31 = add nsw i32 %36, 1, !dbg !1875
  store i32 %inc31, ptr %i, align 4, !dbg !1875, !tbaa !685
  br label %for.cond, !dbg !1876, !llvm.loop !1877

for.end:                                          ; preds = %cleanup, %for.cond
  br label %end, !dbg !1878

end:                                              ; preds = %for.end, %if.then
  tail call void @llvm.dbg.label(metadata !1787), !dbg !1879
  %37 = load i32, ptr %ret, align 4, !dbg !1880, !tbaa !685
  %cmp32 = icmp eq i32 %37, 0, !dbg !1880
  br i1 %cmp32, label %cond.true34, label %cond.false36, !dbg !1880

cond.true34:                                      ; preds = %end
  %call35 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 1, ptr noundef @__func__.packet_resize_test, ptr noundef @.str.6, i32 noundef 697, ptr noundef @.str.124), !dbg !1880
  br label %cond.end38, !dbg !1880

cond.false36:                                     ; preds = %end
  %call37 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 0, ptr noundef @__func__.packet_resize_test, ptr noundef @.str.6, i32 noundef 697, ptr noundef @.str.124), !dbg !1880
  br label %cond.end38, !dbg !1880

cond.end38:                                       ; preds = %cond.false36, %cond.true34
  %cond39 = phi i32 [ %call35, %cond.true34 ], [ %call37, %cond.false36 ], !dbg !1880
  %38 = load ptr, ptr %stream.addr, align 8, !dbg !1881, !tbaa !677
  %call40 = call i32 @bt_ctf_stream_flush(ptr noundef %38), !dbg !1881
  %cmp41 = icmp eq i32 %call40, 0, !dbg !1881
  br i1 %cmp41, label %cond.true43, label %cond.false45, !dbg !1881

cond.true43:                                      ; preds = %cond.end38
  %call44 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 1, ptr noundef @__func__.packet_resize_test, ptr noundef @.str.6, i32 noundef 699, ptr noundef @.str.125), !dbg !1881
  br label %cond.end47, !dbg !1881

cond.false45:                                     ; preds = %cond.end38
  %call46 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 0, ptr noundef @__func__.packet_resize_test, ptr noundef @.str.6, i32 noundef 699, ptr noundef @.str.125), !dbg !1881
  br label %cond.end47, !dbg !1881

cond.end47:                                       ; preds = %cond.false45, %cond.true43
  %cond48 = phi i32 [ %call44, %cond.true43 ], [ %call46, %cond.false45 ], !dbg !1881
  %39 = load ptr, ptr %integer_type, align 8, !dbg !1882, !tbaa !677
  call void @bt_ctf_field_type_put(ptr noundef %39), !dbg !1883
  %40 = load ptr, ptr %string_type, align 8, !dbg !1884, !tbaa !677
  call void @bt_ctf_field_type_put(ptr noundef %40), !dbg !1885
  %41 = load ptr, ptr %event_class, align 8, !dbg !1886, !tbaa !677
  call void @bt_ctf_event_class_put(ptr noundef %41), !dbg !1887
  call void @llvm.lifetime.end.p0(i64 8, ptr %string_type) #9, !dbg !1888
  call void @llvm.lifetime.end.p0(i64 8, ptr %integer_type) #9, !dbg !1888
  call void @llvm.lifetime.end.p0(i64 8, ptr %event_class) #9, !dbg !1888
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9, !dbg !1888
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #9, !dbg !1888
  ret void, !dbg !1888

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, ptr noundef %argv) #0 !dbg !1889 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %trace_path = alloca [22 x i8], align 16
  %metadata_path = alloca [31 x i8], align 16
  %clock_name = alloca ptr, align 8
  %clock_description = alloca ptr, align 8
  %frequency = alloca i64, align 8
  %offset_s = alloca i64, align 8
  %offset = alloca i64, align 8
  %precision = alloca i64, align 8
  %metadata_string = alloca ptr, align 8
  %writer = alloca ptr, align 8
  %name = alloca %struct.utsname, align 1
  %hostname = alloca [64 x i8], align 16
  %clock = alloca ptr, align 8
  %stream_class = alloca ptr, align 8
  %stream1 = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %trace_dir = alloca ptr, align 8
  %entry254 = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4, !tbaa !685
  tail call void @llvm.dbg.declare(metadata ptr %argc.addr, metadata !1893, metadata !DIExpression()), !dbg !1942
  store ptr %argv, ptr %argv.addr, align 8, !tbaa !677
  tail call void @llvm.dbg.declare(metadata ptr %argv.addr, metadata !1894, metadata !DIExpression()), !dbg !1943
  call void @llvm.lifetime.start.p0(i64 22, ptr %trace_path) #9, !dbg !1944
  tail call void @llvm.dbg.declare(metadata ptr %trace_path, metadata !1895, metadata !DIExpression()), !dbg !1945
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %trace_path, ptr align 16 @__const.main.trace_path, i64 22, i1 false), !dbg !1945
  call void @llvm.lifetime.start.p0(i64 31, ptr %metadata_path) #9, !dbg !1946
  tail call void @llvm.dbg.declare(metadata ptr %metadata_path, metadata !1896, metadata !DIExpression()), !dbg !1947
  call void @llvm.lifetime.start.p0(i64 8, ptr %clock_name) #9, !dbg !1948
  tail call void @llvm.dbg.declare(metadata ptr %clock_name, metadata !1897, metadata !DIExpression()), !dbg !1949
  store ptr @.str.126, ptr %clock_name, align 8, !dbg !1949, !tbaa !677
  call void @llvm.lifetime.start.p0(i64 8, ptr %clock_description) #9, !dbg !1950
  tail call void @llvm.dbg.declare(metadata ptr %clock_description, metadata !1898, metadata !DIExpression()), !dbg !1951
  store ptr @.str.127, ptr %clock_description, align 8, !dbg !1951, !tbaa !677
  call void @llvm.lifetime.start.p0(i64 8, ptr %frequency) #9, !dbg !1952
  tail call void @llvm.dbg.declare(metadata ptr %frequency, metadata !1899, metadata !DIExpression()), !dbg !1953
  store i64 1000000000, ptr %frequency, align 8, !dbg !1953, !tbaa !779
  call void @llvm.lifetime.start.p0(i64 8, ptr %offset_s) #9, !dbg !1954
  tail call void @llvm.dbg.declare(metadata ptr %offset_s, metadata !1901, metadata !DIExpression()), !dbg !1955
  store i64 1351530929945824323, ptr %offset_s, align 8, !dbg !1955, !tbaa !779
  call void @llvm.lifetime.start.p0(i64 8, ptr %offset) #9, !dbg !1956
  tail call void @llvm.dbg.declare(metadata ptr %offset, metadata !1902, metadata !DIExpression()), !dbg !1957
  store i64 1234567, ptr %offset, align 8, !dbg !1957, !tbaa !779
  call void @llvm.lifetime.start.p0(i64 8, ptr %precision) #9, !dbg !1958
  tail call void @llvm.dbg.declare(metadata ptr %precision, metadata !1903, metadata !DIExpression()), !dbg !1959
  store i64 10, ptr %precision, align 8, !dbg !1959, !tbaa !779
  call void @llvm.lifetime.start.p0(i64 8, ptr %metadata_string) #9, !dbg !1960
  tail call void @llvm.dbg.declare(metadata ptr %metadata_string, metadata !1904, metadata !DIExpression()), !dbg !1961
  call void @llvm.lifetime.start.p0(i64 8, ptr %writer) #9, !dbg !1962
  tail call void @llvm.dbg.declare(metadata ptr %writer, metadata !1905, metadata !DIExpression()), !dbg !1963
  call void @llvm.lifetime.start.p0(i64 390, ptr %name) #9, !dbg !1964
  tail call void @llvm.dbg.declare(metadata ptr %name, metadata !1908, metadata !DIExpression()), !dbg !1965
  call void @llvm.lifetime.start.p0(i64 64, ptr %hostname) #9, !dbg !1966
  tail call void @llvm.dbg.declare(metadata ptr %hostname, metadata !1918, metadata !DIExpression()), !dbg !1967
  call void @llvm.lifetime.start.p0(i64 8, ptr %clock) #9, !dbg !1968
  tail call void @llvm.dbg.declare(metadata ptr %clock, metadata !1919, metadata !DIExpression()), !dbg !1969
  call void @llvm.lifetime.start.p0(i64 8, ptr %stream_class) #9, !dbg !1970
  tail call void @llvm.dbg.declare(metadata ptr %stream_class, metadata !1920, metadata !DIExpression()), !dbg !1971
  call void @llvm.lifetime.start.p0(i64 8, ptr %stream1) #9, !dbg !1972
  tail call void @llvm.dbg.declare(metadata ptr %stream1, metadata !1921, metadata !DIExpression()), !dbg !1973
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #9, !dbg !1974
  tail call void @llvm.dbg.declare(metadata ptr %ret, metadata !1922, metadata !DIExpression()), !dbg !1975
  %0 = load i32, ptr %argc.addr, align 4, !dbg !1976, !tbaa !685
  %cmp = icmp slt i32 %0, 3, !dbg !1978
  br i1 %cmp, label %if.then, label %if.end, !dbg !1979

if.then:                                          ; preds = %entry
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.128), !dbg !1980
  call void @exit(i32 noundef -1) #10, !dbg !1982
  unreachable, !dbg !1982

if.end:                                           ; preds = %entry
  %call1 = call i32 @plan_no_plan(), !dbg !1983
  %arraydecay = getelementptr inbounds [22 x i8], ptr %trace_path, i64 0, i64 0, !dbg !1984
  %call2 = call ptr @mkdtemp(ptr noundef %arraydecay) #9, !dbg !1986
  %tobool = icmp ne ptr %call2, null, !dbg !1986
  br i1 %tobool, label %if.end4, label %if.then3, !dbg !1987

if.then3:                                         ; preds = %if.end
  call void @perror(ptr noundef @.str.129), !dbg !1988
  br label %if.end4, !dbg !1990

if.end4:                                          ; preds = %if.then3, %if.end
  %arraydecay5 = getelementptr inbounds [31 x i8], ptr %metadata_path, i64 0, i64 0, !dbg !1991
  %arraydecay6 = getelementptr inbounds [22 x i8], ptr %trace_path, i64 0, i64 0, !dbg !1992
  %call7 = call ptr @strcpy(ptr noundef %arraydecay5, ptr noundef %arraydecay6) #9, !dbg !1993
  %arraydecay8 = getelementptr inbounds [31 x i8], ptr %metadata_path, i64 0, i64 0, !dbg !1994
  %add.ptr = getelementptr inbounds i8, ptr %arraydecay8, i64 22, !dbg !1995
  %add.ptr9 = getelementptr inbounds i8, ptr %add.ptr, i64 -1, !dbg !1996
  %call10 = call ptr @strcat(ptr noundef %add.ptr9, ptr noundef @.str.130) #9, !dbg !1997
  %arraydecay11 = getelementptr inbounds [22 x i8], ptr %trace_path, i64 0, i64 0, !dbg !1998
  %call12 = call ptr @bt_ctf_writer_create(ptr noundef %arraydecay11), !dbg !1999
  store ptr %call12, ptr %writer, align 8, !dbg !2000, !tbaa !677
  %1 = load ptr, ptr %writer, align 8, !dbg !2001, !tbaa !677
  %tobool13 = icmp ne ptr %1, null, !dbg !2001
  br i1 %tobool13, label %cond.true, label %cond.false, !dbg !2001

cond.true:                                        ; preds = %if.end4
  %call14 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 1, ptr noundef @__func__.main, ptr noundef @.str.6, i32 noundef 739, ptr noundef @.str.131), !dbg !2001
  br label %cond.end, !dbg !2001

cond.false:                                       ; preds = %if.end4
  %call15 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 0, ptr noundef @__func__.main, ptr noundef @.str.6, i32 noundef 739, ptr noundef @.str.131), !dbg !2001
  br label %cond.end, !dbg !2001

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call14, %cond.true ], [ %call15, %cond.false ], !dbg !2001
  %arraydecay16 = getelementptr inbounds [64 x i8], ptr %hostname, i64 0, i64 0, !dbg !2002
  %call17 = call i32 @gethostname(ptr noundef %arraydecay16, i64 noundef 64) #9, !dbg !2003
  store i32 %call17, ptr %ret, align 4, !dbg !2004, !tbaa !685
  %2 = load i32, ptr %ret, align 4, !dbg !2005, !tbaa !685
  %cmp18 = icmp slt i32 %2, 0, !dbg !2007
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !2008

if.then19:                                        ; preds = %cond.end
  %3 = load i32, ptr %ret, align 4, !dbg !2009, !tbaa !685
  store i32 %3, ptr %retval, align 4, !dbg !2011
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup267, !dbg !2011

if.end20:                                         ; preds = %cond.end
  %4 = load ptr, ptr %writer, align 8, !dbg !2012, !tbaa !677
  %arraydecay21 = getelementptr inbounds [64 x i8], ptr %hostname, i64 0, i64 0, !dbg !2012
  %call22 = call i32 @bt_ctf_writer_add_environment_field(ptr noundef %4, ptr noundef @.str.132, ptr noundef %arraydecay21), !dbg !2012
  %cmp23 = icmp eq i32 %call22, 0, !dbg !2012
  br i1 %cmp23, label %cond.true24, label %cond.false27, !dbg !2012

cond.true24:                                      ; preds = %if.end20
  %arraydecay25 = getelementptr inbounds [64 x i8], ptr %hostname, i64 0, i64 0, !dbg !2012
  %call26 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 1, ptr noundef @__func__.main, ptr noundef @.str.6, i32 noundef 748, ptr noundef @.str.133, ptr noundef %arraydecay25), !dbg !2012
  br label %cond.end30, !dbg !2012

cond.false27:                                     ; preds = %if.end20
  %arraydecay28 = getelementptr inbounds [64 x i8], ptr %hostname, i64 0, i64 0, !dbg !2012
  %call29 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 0, ptr noundef @__func__.main, ptr noundef @.str.6, i32 noundef 748, ptr noundef @.str.133, ptr noundef %arraydecay28), !dbg !2012
  br label %cond.end30, !dbg !2012

cond.end30:                                       ; preds = %cond.false27, %cond.true24
  %cond31 = phi i32 [ %call26, %cond.true24 ], [ %call29, %cond.false27 ], !dbg !2012
  %call32 = call i32 @bt_ctf_writer_add_environment_field(ptr noundef null, ptr noundef @.str.134, ptr noundef @.str.135), !dbg !2013
  %tobool33 = icmp ne i32 %call32, 0, !dbg !2013
  br i1 %tobool33, label %cond.true34, label %cond.false36, !dbg !2013

cond.true34:                                      ; preds = %cond.end30
  %call35 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 1, ptr noundef @__func__.main, ptr noundef @.str.6, i32 noundef 751, ptr noundef @.str.136), !dbg !2013
  br label %cond.end38, !dbg !2013

cond.false36:                                     ; preds = %cond.end30
  %call37 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 0, ptr noundef @__func__.main, ptr noundef @.str.6, i32 noundef 751, ptr noundef @.str.136), !dbg !2013
  br label %cond.end38, !dbg !2013

cond.end38:                                       ; preds = %cond.false36, %cond.true34
  %cond39 = phi i32 [ %call35, %cond.true34 ], [ %call37, %cond.false36 ], !dbg !2013
  %5 = load ptr, ptr %writer, align 8, !dbg !2014, !tbaa !677
  %call40 = call i32 @bt_ctf_writer_add_environment_field(ptr noundef %5, ptr noundef null, ptr noundef @.str.135), !dbg !2014
  %tobool41 = icmp ne i32 %call40, 0, !dbg !2014
  br i1 %tobool41, label %cond.true42, label %cond.false44, !dbg !2014

cond.true42:                                      ; preds = %cond.end38
  %call43 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 1, ptr noundef @__func__.main, ptr noundef @.str.6, i32 noundef 754, ptr noundef @.str.137), !dbg !2014
  br label %cond.end46, !dbg !2014

cond.false44:                                     ; preds = %cond.end38
  %call45 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 0, ptr noundef @__func__.main, ptr noundef @.str.6, i32 noundef 754, ptr noundef @.str.137), !dbg !2014
  br label %cond.end46, !dbg !2014

cond.end46:                                       ; preds = %cond.false44, %cond.true42
  %cond47 = phi i32 [ %call43, %cond.true42 ], [ %call45, %cond.false44 ], !dbg !2014
  %6 = load ptr, ptr %writer, align 8, !dbg !2015, !tbaa !677
  %call48 = call i32 @bt_ctf_writer_add_environment_field(ptr noundef %6, ptr noundef @.str.134, ptr noundef null), !dbg !2015
  %tobool49 = icmp ne i32 %call48, 0, !dbg !2015
  br i1 %tobool49, label %cond.true50, label %cond.false52, !dbg !2015

cond.true50:                                      ; preds = %cond.end46
  %call51 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 1, ptr noundef @__func__.main, ptr noundef @.str.6, i32 noundef 757, ptr noundef @.str.138), !dbg !2015
  br label %cond.end54, !dbg !2015

cond.false52:                                     ; preds = %cond.end46
  %call53 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 0, ptr noundef @__func__.main, ptr noundef @.str.6, i32 noundef 757, ptr noundef @.str.138), !dbg !2015
  br label %cond.end54, !dbg !2015

cond.end54:                                       ; preds = %cond.false52, %cond.true50
  %cond55 = phi i32 [ %call51, %cond.true50 ], [ %call53, %cond.false52 ], !dbg !2015
  %call56 = call i32 @uname(ptr noundef %name) #9, !dbg !2016
  %tobool57 = icmp ne i32 %call56, 0, !dbg !2016
  br i1 %tobool57, label %if.then58, label %if.end59, !dbg !2018

if.then58:                                        ; preds = %cond.end54
  call void @perror(ptr noundef @.str.139), !dbg !2019
  store i32 -1, ptr %retval, align 4, !dbg !2021
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup267, !dbg !2021

if.end59:                                         ; preds = %cond.end54
  %7 = load ptr, ptr %writer, align 8, !dbg !2022, !tbaa !677
  %sysname = getelementptr inbounds %struct.utsname, ptr %name, i32 0, i32 0, !dbg !2022
  %arraydecay60 = getelementptr inbounds [65 x i8], ptr %sysname, i64 0, i64 0, !dbg !2022
  %call61 = call i32 @bt_ctf_writer_add_environment_field(ptr noundef %7, ptr noundef @.str.140, ptr noundef %arraydecay60), !dbg !2022
  %cmp62 = icmp eq i32 %call61, 0, !dbg !2022
  br i1 %cmp62, label %cond.true63, label %cond.false67, !dbg !2022

cond.true63:                                      ; preds = %if.end59
  %sysname64 = getelementptr inbounds %struct.utsname, ptr %name, i32 0, i32 0, !dbg !2022
  %arraydecay65 = getelementptr inbounds [65 x i8], ptr %sysname64, i64 0, i64 0, !dbg !2022
  %call66 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 1, ptr noundef @__func__.main, ptr noundef @.str.6, i32 noundef 766, ptr noundef @.str.141, ptr noundef %arraydecay65), !dbg !2022
  br label %cond.end71, !dbg !2022

cond.false67:                                     ; preds = %if.end59
  %sysname68 = getelementptr inbounds %struct.utsname, ptr %name, i32 0, i32 0, !dbg !2022
  %arraydecay69 = getelementptr inbounds [65 x i8], ptr %sysname68, i64 0, i64 0, !dbg !2022
  %call70 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 0, ptr noundef @__func__.main, ptr noundef @.str.6, i32 noundef 766, ptr noundef @.str.141, ptr noundef %arraydecay69), !dbg !2022
  br label %cond.end71, !dbg !2022

cond.end71:                                       ; preds = %cond.false67, %cond.true63
  %cond72 = phi i32 [ %call66, %cond.true63 ], [ %call70, %cond.false67 ], !dbg !2022
  %8 = load ptr, ptr %writer, align 8, !dbg !2023, !tbaa !677
  %nodename = getelementptr inbounds %struct.utsname, ptr %name, i32 0, i32 1, !dbg !2023
  %arraydecay73 = getelementptr inbounds [65 x i8], ptr %nodename, i64 0, i64 0, !dbg !2023
  %call74 = call i32 @bt_ctf_writer_add_environment_field(ptr noundef %8, ptr noundef @.str.142, ptr noundef %arraydecay73), !dbg !2023
  %cmp75 = icmp eq i32 %call74, 0, !dbg !2023
  br i1 %cmp75, label %cond.true76, label %cond.false80, !dbg !2023

cond.true76:                                      ; preds = %cond.end71
  %nodename77 = getelementptr inbounds %struct.utsname, ptr %name, i32 0, i32 1, !dbg !2023
  %arraydecay78 = getelementptr inbounds [65 x i8], ptr %nodename77, i64 0, i64 0, !dbg !2023
  %call79 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 1, ptr noundef @__func__.main, ptr noundef @.str.6, i32 noundef 770, ptr noundef @.str.143, ptr noundef %arraydecay78), !dbg !2023
  br label %cond.end84, !dbg !2023

cond.false80:                                     ; preds = %cond.end71
  %nodename81 = getelementptr inbounds %struct.utsname, ptr %name, i32 0, i32 1, !dbg !2023
  %arraydecay82 = getelementptr inbounds [65 x i8], ptr %nodename81, i64 0, i64 0, !dbg !2023
  %call83 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 0, ptr noundef @__func__.main, ptr noundef @.str.6, i32 noundef 770, ptr noundef @.str.143, ptr noundef %arraydecay82), !dbg !2023
  br label %cond.end84, !dbg !2023

cond.end84:                                       ; preds = %cond.false80, %cond.true76
  %cond85 = phi i32 [ %call79, %cond.true76 ], [ %call83, %cond.false80 ], !dbg !2023
  %9 = load ptr, ptr %writer, align 8, !dbg !2024, !tbaa !677
  %release = getelementptr inbounds %struct.utsname, ptr %name, i32 0, i32 2, !dbg !2024
  %arraydecay86 = getelementptr inbounds [65 x i8], ptr %release, i64 0, i64 0, !dbg !2024
  %call87 = call i32 @bt_ctf_writer_add_environment_field(ptr noundef %9, ptr noundef @.str.144, ptr noundef %arraydecay86), !dbg !2024
  %cmp88 = icmp eq i32 %call87, 0, !dbg !2024
  br i1 %cmp88, label %cond.true89, label %cond.false93, !dbg !2024

cond.true89:                                      ; preds = %cond.end84
  %release90 = getelementptr inbounds %struct.utsname, ptr %name, i32 0, i32 2, !dbg !2024
  %arraydecay91 = getelementptr inbounds [65 x i8], ptr %release90, i64 0, i64 0, !dbg !2024
  %call92 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 1, ptr noundef @__func__.main, ptr noundef @.str.6, i32 noundef 773, ptr noundef @.str.145, ptr noundef %arraydecay91), !dbg !2024
  br label %cond.end97, !dbg !2024

cond.false93:                                     ; preds = %cond.end84
  %release94 = getelementptr inbounds %struct.utsname, ptr %name, i32 0, i32 2, !dbg !2024
  %arraydecay95 = getelementptr inbounds [65 x i8], ptr %release94, i64 0, i64 0, !dbg !2024
  %call96 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 0, ptr noundef @__func__.main, ptr noundef @.str.6, i32 noundef 773, ptr noundef @.str.145, ptr noundef %arraydecay95), !dbg !2024
  br label %cond.end97, !dbg !2024

cond.end97:                                       ; preds = %cond.false93, %cond.true89
  %cond98 = phi i32 [ %call92, %cond.true89 ], [ %call96, %cond.false93 ], !dbg !2024
  %10 = load ptr, ptr %writer, align 8, !dbg !2025, !tbaa !677
  %version = getelementptr inbounds %struct.utsname, ptr %name, i32 0, i32 3, !dbg !2025
  %arraydecay99 = getelementptr inbounds [65 x i8], ptr %version, i64 0, i64 0, !dbg !2025
  %call100 = call i32 @bt_ctf_writer_add_environment_field(ptr noundef %10, ptr noundef @.str.146, ptr noundef %arraydecay99), !dbg !2025
  %cmp101 = icmp eq i32 %call100, 0, !dbg !2025
  br i1 %cmp101, label %cond.true102, label %cond.false106, !dbg !2025

cond.true102:                                     ; preds = %cond.end97
  %version103 = getelementptr inbounds %struct.utsname, ptr %name, i32 0, i32 3, !dbg !2025
  %arraydecay104 = getelementptr inbounds [65 x i8], ptr %version103, i64 0, i64 0, !dbg !2025
  %call105 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 1, ptr noundef @__func__.main, ptr noundef @.str.6, i32 noundef 776, ptr noundef @.str.147, ptr noundef %arraydecay104), !dbg !2025
  br label %cond.end110, !dbg !2025

cond.false106:                                    ; preds = %cond.end97
  %version107 = getelementptr inbounds %struct.utsname, ptr %name, i32 0, i32 3, !dbg !2025
  %arraydecay108 = getelementptr inbounds [65 x i8], ptr %version107, i64 0, i64 0, !dbg !2025
  %call109 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 0, ptr noundef @__func__.main, ptr noundef @.str.6, i32 noundef 776, ptr noundef @.str.147, ptr noundef %arraydecay108), !dbg !2025
  br label %cond.end110, !dbg !2025

cond.end110:                                      ; preds = %cond.false106, %cond.true102
  %cond111 = phi i32 [ %call105, %cond.true102 ], [ %call109, %cond.false106 ], !dbg !2025
  %11 = load ptr, ptr %writer, align 8, !dbg !2026, !tbaa !677
  %machine = getelementptr inbounds %struct.utsname, ptr %name, i32 0, i32 4, !dbg !2026
  %arraydecay112 = getelementptr inbounds [65 x i8], ptr %machine, i64 0, i64 0, !dbg !2026
  %call113 = call i32 @bt_ctf_writer_add_environment_field(ptr noundef %11, ptr noundef @.str.148, ptr noundef %arraydecay112), !dbg !2026
  %cmp114 = icmp eq i32 %call113, 0, !dbg !2026
  br i1 %cmp114, label %cond.true115, label %cond.false119, !dbg !2026

cond.true115:                                     ; preds = %cond.end110
  %machine116 = getelementptr inbounds %struct.utsname, ptr %name, i32 0, i32 4, !dbg !2026
  %arraydecay117 = getelementptr inbounds [65 x i8], ptr %machine116, i64 0, i64 0, !dbg !2026
  %call118 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 1, ptr noundef @__func__.main, ptr noundef @.str.6, i32 noundef 779, ptr noundef @.str.149, ptr noundef %arraydecay117), !dbg !2026
  br label %cond.end123, !dbg !2026

cond.false119:                                    ; preds = %cond.end110
  %machine120 = getelementptr inbounds %struct.utsname, ptr %name, i32 0, i32 4, !dbg !2026
  %arraydecay121 = getelementptr inbounds [65 x i8], ptr %machine120, i64 0, i64 0, !dbg !2026
  %call122 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 0, ptr noundef @__func__.main, ptr noundef @.str.6, i32 noundef 779, ptr noundef @.str.149, ptr noundef %arraydecay121), !dbg !2026
  br label %cond.end123, !dbg !2026

cond.end123:                                      ; preds = %cond.false119, %cond.true115
  %cond124 = phi i32 [ %call118, %cond.true115 ], [ %call122, %cond.false119 ], !dbg !2026
  %call125 = call ptr @bt_ctf_clock_create(ptr noundef @.str.150), !dbg !2027
  %cmp126 = icmp eq ptr %call125, null, !dbg !2027
  br i1 %cmp126, label %cond.true127, label %cond.false129, !dbg !2027

cond.true127:                                     ; preds = %cond.end123
  %call128 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 1, ptr noundef @__func__.main, ptr noundef @.str.6, i32 noundef 782, ptr noundef @.str.151), !dbg !2027
  br label %cond.end131, !dbg !2027

cond.false129:                                    ; preds = %cond.end123
  %call130 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 0, ptr noundef @__func__.main, ptr noundef @.str.6, i32 noundef 782, ptr noundef @.str.151), !dbg !2027
  br label %cond.end131, !dbg !2027

cond.end131:                                      ; preds = %cond.false129, %cond.true127
  %cond132 = phi i32 [ %call128, %cond.true127 ], [ %call130, %cond.false129 ], !dbg !2027
  %call133 = call ptr @bt_ctf_clock_create(ptr noundef null), !dbg !2028
  %cmp134 = icmp eq ptr %call133, null, !dbg !2028
  br i1 %cmp134, label %cond.true135, label %cond.false137, !dbg !2028

cond.true135:                                     ; preds = %cond.end131
  %call136 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 1, ptr noundef @__func__.main, ptr noundef @.str.6, i32 noundef 783, ptr noundef @.str.152), !dbg !2028
  br label %cond.end139, !dbg !2028

cond.false137:                                    ; preds = %cond.end131
  %call138 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 0, ptr noundef @__func__.main, ptr noundef @.str.6, i32 noundef 783, ptr noundef @.str.152), !dbg !2028
  br label %cond.end139, !dbg !2028

cond.end139:                                      ; preds = %cond.false137, %cond.true135
  %cond140 = phi i32 [ %call136, %cond.true135 ], [ %call138, %cond.false137 ], !dbg !2028
  %12 = load ptr, ptr %clock_name, align 8, !dbg !2029, !tbaa !677
  %call141 = call ptr @bt_ctf_clock_create(ptr noundef %12), !dbg !2030
  store ptr %call141, ptr %clock, align 8, !dbg !2031, !tbaa !677
  %13 = load ptr, ptr %clock, align 8, !dbg !2032, !tbaa !677
  %tobool142 = icmp ne ptr %13, null, !dbg !2032
  br i1 %tobool142, label %cond.true143, label %cond.false145, !dbg !2032

cond.true143:                                     ; preds = %cond.end139
  %call144 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 1, ptr noundef @__func__.main, ptr noundef @.str.6, i32 noundef 785, ptr noundef @.str.153), !dbg !2032
  br label %cond.end147, !dbg !2032

cond.false145:                                    ; preds = %cond.end139
  %call146 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 0, ptr noundef @__func__.main, ptr noundef @.str.6, i32 noundef 785, ptr noundef @.str.153), !dbg !2032
  br label %cond.end147, !dbg !2032

cond.end147:                                      ; preds = %cond.false145, %cond.true143
  %cond148 = phi i32 [ %call144, %cond.true143 ], [ %call146, %cond.false145 ], !dbg !2032
  %14 = load ptr, ptr %clock, align 8, !dbg !2033, !tbaa !677
  %15 = load ptr, ptr %clock_description, align 8, !dbg !2034, !tbaa !677
  %call149 = call i32 @bt_ctf_clock_set_description(ptr noundef %14, ptr noundef %15), !dbg !2035
  %16 = load ptr, ptr %clock, align 8, !dbg !2036, !tbaa !677
  %call150 = call i32 @bt_ctf_clock_set_frequency(ptr noundef %16, i64 noundef 1000000000), !dbg !2036
  %cmp151 = icmp eq i32 %call150, 0, !dbg !2036
  br i1 %cmp151, label %cond.true152, label %cond.false154, !dbg !2036

cond.true152:                                     ; preds = %cond.end147
  %call153 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 1, ptr noundef @__func__.main, ptr noundef @.str.6, i32 noundef 789, ptr noundef @.str.154), !dbg !2036
  br label %cond.end156, !dbg !2036

cond.false154:                                    ; preds = %cond.end147
  %call155 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 0, ptr noundef @__func__.main, ptr noundef @.str.6, i32 noundef 789, ptr noundef @.str.154), !dbg !2036
  br label %cond.end156, !dbg !2036

cond.end156:                                      ; preds = %cond.false154, %cond.true152
  %cond157 = phi i32 [ %call153, %cond.true152 ], [ %call155, %cond.false154 ], !dbg !2036
  %17 = load ptr, ptr %clock, align 8, !dbg !2037, !tbaa !677
  %call158 = call i32 @bt_ctf_clock_set_offset_s(ptr noundef %17, i64 noundef 1351530929945824323), !dbg !2037
  %cmp159 = icmp eq i32 %call158, 0, !dbg !2037
  br i1 %cmp159, label %cond.true160, label %cond.false162, !dbg !2037

cond.true160:                                     ; preds = %cond.end156
  %call161 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 1, ptr noundef @__func__.main, ptr noundef @.str.6, i32 noundef 791, ptr noundef @.str.155), !dbg !2037
  br label %cond.end164, !dbg !2037

cond.false162:                                    ; preds = %cond.end156
  %call163 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 0, ptr noundef @__func__.main, ptr noundef @.str.6, i32 noundef 791, ptr noundef @.str.155), !dbg !2037
  br label %cond.end164, !dbg !2037

cond.end164:                                      ; preds = %cond.false162, %cond.true160
  %cond165 = phi i32 [ %call161, %cond.true160 ], [ %call163, %cond.false162 ], !dbg !2037
  %18 = load ptr, ptr %clock, align 8, !dbg !2038, !tbaa !677
  %call166 = call i32 @bt_ctf_clock_set_offset(ptr noundef %18, i64 noundef 1234567), !dbg !2038
  %cmp167 = icmp eq i32 %call166, 0, !dbg !2038
  br i1 %cmp167, label %cond.true168, label %cond.false170, !dbg !2038

cond.true168:                                     ; preds = %cond.end164
  %call169 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 1, ptr noundef @__func__.main, ptr noundef @.str.6, i32 noundef 792, ptr noundef @.str.156), !dbg !2038
  br label %cond.end172, !dbg !2038

cond.false170:                                    ; preds = %cond.end164
  %call171 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 0, ptr noundef @__func__.main, ptr noundef @.str.6, i32 noundef 792, ptr noundef @.str.156), !dbg !2038
  br label %cond.end172, !dbg !2038

cond.end172:                                      ; preds = %cond.false170, %cond.true168
  %cond173 = phi i32 [ %call169, %cond.true168 ], [ %call171, %cond.false170 ], !dbg !2038
  %19 = load ptr, ptr %clock, align 8, !dbg !2039, !tbaa !677
  %call174 = call i32 @bt_ctf_clock_set_precision(ptr noundef %19, i64 noundef 10), !dbg !2039
  %cmp175 = icmp eq i32 %call174, 0, !dbg !2039
  br i1 %cmp175, label %cond.true176, label %cond.false178, !dbg !2039

cond.true176:                                     ; preds = %cond.end172
  %call177 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 1, ptr noundef @__func__.main, ptr noundef @.str.6, i32 noundef 794, ptr noundef @.str.157), !dbg !2039
  br label %cond.end180, !dbg !2039

cond.false178:                                    ; preds = %cond.end172
  %call179 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 0, ptr noundef @__func__.main, ptr noundef @.str.6, i32 noundef 794, ptr noundef @.str.157), !dbg !2039
  br label %cond.end180, !dbg !2039

cond.end180:                                      ; preds = %cond.false178, %cond.true176
  %cond181 = phi i32 [ %call177, %cond.true176 ], [ %call179, %cond.false178 ], !dbg !2039
  %20 = load ptr, ptr %clock, align 8, !dbg !2040, !tbaa !677
  %call182 = call i32 @bt_ctf_clock_set_is_absolute(ptr noundef %20, i32 noundef 255), !dbg !2040
  %cmp183 = icmp eq i32 %call182, 0, !dbg !2040
  br i1 %cmp183, label %cond.true184, label %cond.false186, !dbg !2040

cond.true184:                                     ; preds = %cond.end180
  %call185 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 1, ptr noundef @__func__.main, ptr noundef @.str.6, i32 noundef 796, ptr noundef @.str.158), !dbg !2040
  br label %cond.end188, !dbg !2040

cond.false186:                                    ; preds = %cond.end180
  %call187 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 0, ptr noundef @__func__.main, ptr noundef @.str.6, i32 noundef 796, ptr noundef @.str.158), !dbg !2040
  br label %cond.end188, !dbg !2040

cond.end188:                                      ; preds = %cond.false186, %cond.true184
  %cond189 = phi i32 [ %call185, %cond.true184 ], [ %call187, %cond.false186 ], !dbg !2040
  %21 = load ptr, ptr %writer, align 8, !dbg !2041, !tbaa !677
  %22 = load ptr, ptr %clock, align 8, !dbg !2041, !tbaa !677
  %call190 = call i32 @bt_ctf_writer_add_clock(ptr noundef %21, ptr noundef %22), !dbg !2041
  %cmp191 = icmp eq i32 %call190, 0, !dbg !2041
  br i1 %cmp191, label %cond.true192, label %cond.false194, !dbg !2041

cond.true192:                                     ; preds = %cond.end188
  %call193 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 1, ptr noundef @__func__.main, ptr noundef @.str.6, i32 noundef 799, ptr noundef @.str.159), !dbg !2041
  br label %cond.end196, !dbg !2041

cond.false194:                                    ; preds = %cond.end188
  %call195 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 0, ptr noundef @__func__.main, ptr noundef @.str.6, i32 noundef 799, ptr noundef @.str.159), !dbg !2041
  br label %cond.end196, !dbg !2041

cond.end196:                                      ; preds = %cond.false194, %cond.true192
  %cond197 = phi i32 [ %call193, %cond.true192 ], [ %call195, %cond.false194 ], !dbg !2041
  %23 = load ptr, ptr %writer, align 8, !dbg !2042, !tbaa !677
  %24 = load ptr, ptr %clock, align 8, !dbg !2042, !tbaa !677
  %call198 = call i32 @bt_ctf_writer_add_clock(ptr noundef %23, ptr noundef %24), !dbg !2042
  %tobool199 = icmp ne i32 %call198, 0, !dbg !2042
  br i1 %tobool199, label %cond.true200, label %cond.false202, !dbg !2042

cond.true200:                                     ; preds = %cond.end196
  %call201 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 1, ptr noundef @__func__.main, ptr noundef @.str.6, i32 noundef 801, ptr noundef @.str.160), !dbg !2042
  br label %cond.end204, !dbg !2042

cond.false202:                                    ; preds = %cond.end196
  %call203 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 0, ptr noundef @__func__.main, ptr noundef @.str.6, i32 noundef 801, ptr noundef @.str.160), !dbg !2042
  br label %cond.end204, !dbg !2042

cond.end204:                                      ; preds = %cond.false202, %cond.true200
  %cond205 = phi i32 [ %call201, %cond.true200 ], [ %call203, %cond.false202 ], !dbg !2042
  %call206 = call ptr @bt_ctf_stream_class_create(ptr noundef @.str.161), !dbg !2043
  store ptr %call206, ptr %stream_class, align 8, !dbg !2044, !tbaa !677
  %25 = load ptr, ptr %stream_class, align 8, !dbg !2045, !tbaa !677
  %tobool207 = icmp ne ptr %25, null, !dbg !2045
  br i1 %tobool207, label %cond.true208, label %cond.false210, !dbg !2045

cond.true208:                                     ; preds = %cond.end204
  %call209 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 1, ptr noundef @__func__.main, ptr noundef @.str.6, i32 noundef 805, ptr noundef @.str.162), !dbg !2045
  br label %cond.end212, !dbg !2045

cond.false210:                                    ; preds = %cond.end204
  %call211 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 0, ptr noundef @__func__.main, ptr noundef @.str.6, i32 noundef 805, ptr noundef @.str.162), !dbg !2045
  br label %cond.end212, !dbg !2045

cond.end212:                                      ; preds = %cond.false210, %cond.true208
  %cond213 = phi i32 [ %call209, %cond.true208 ], [ %call211, %cond.false210 ], !dbg !2045
  %26 = load ptr, ptr %stream_class, align 8, !dbg !2046, !tbaa !677
  %27 = load ptr, ptr %clock, align 8, !dbg !2046, !tbaa !677
  %call214 = call i32 @bt_ctf_stream_class_set_clock(ptr noundef %26, ptr noundef %27), !dbg !2046
  %cmp215 = icmp eq i32 %call214, 0, !dbg !2046
  br i1 %cmp215, label %cond.true216, label %cond.false218, !dbg !2046

cond.true216:                                     ; preds = %cond.end212
  %call217 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 1, ptr noundef @__func__.main, ptr noundef @.str.6, i32 noundef 807, ptr noundef @.str.163), !dbg !2046
  br label %cond.end220, !dbg !2046

cond.false218:                                    ; preds = %cond.end212
  %call219 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 0, ptr noundef @__func__.main, ptr noundef @.str.6, i32 noundef 807, ptr noundef @.str.163), !dbg !2046
  br label %cond.end220, !dbg !2046

cond.end220:                                      ; preds = %cond.false218, %cond.true216
  %cond221 = phi i32 [ %call217, %cond.true216 ], [ %call219, %cond.false218 ], !dbg !2046
  call void @type_field_tests(), !dbg !2047
  %28 = load ptr, ptr %writer, align 8, !dbg !2048, !tbaa !677
  %29 = load ptr, ptr %stream_class, align 8, !dbg !2049, !tbaa !677
  %call222 = call ptr @bt_ctf_writer_create_stream(ptr noundef %28, ptr noundef %29), !dbg !2050
  store ptr %call222, ptr %stream1, align 8, !dbg !2051, !tbaa !677
  %30 = load ptr, ptr %stream1, align 8, !dbg !2052, !tbaa !677
  %tobool223 = icmp ne ptr %30, null, !dbg !2052
  br i1 %tobool223, label %cond.true224, label %cond.false226, !dbg !2052

cond.true224:                                     ; preds = %cond.end220
  %call225 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 1, ptr noundef @__func__.main, ptr noundef @.str.6, i32 noundef 814, ptr noundef @.str.164), !dbg !2052
  br label %cond.end228, !dbg !2052

cond.false226:                                    ; preds = %cond.end220
  %call227 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 0, ptr noundef @__func__.main, ptr noundef @.str.6, i32 noundef 814, ptr noundef @.str.164), !dbg !2052
  br label %cond.end228, !dbg !2052

cond.end228:                                      ; preds = %cond.false226, %cond.true224
  %cond229 = phi i32 [ %call225, %cond.true224 ], [ %call227, %cond.false226 ], !dbg !2052
  %31 = load ptr, ptr %stream_class, align 8, !dbg !2053, !tbaa !677
  %32 = load ptr, ptr %clock, align 8, !dbg !2053, !tbaa !677
  %call230 = call i32 @bt_ctf_stream_class_set_clock(ptr noundef %31, ptr noundef %32), !dbg !2053
  %tobool231 = icmp ne i32 %call230, 0, !dbg !2053
  br i1 %tobool231, label %cond.true232, label %cond.false234, !dbg !2053

cond.true232:                                     ; preds = %cond.end228
  %call233 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 1, ptr noundef @__func__.main, ptr noundef @.str.6, i32 noundef 818, ptr noundef @.str.165), !dbg !2053
  br label %cond.end236, !dbg !2053

cond.false234:                                    ; preds = %cond.end228
  %call235 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 0, ptr noundef @__func__.main, ptr noundef @.str.6, i32 noundef 818, ptr noundef @.str.165), !dbg !2053
  br label %cond.end236, !dbg !2053

cond.end236:                                      ; preds = %cond.false234, %cond.true232
  %cond237 = phi i32 [ %call233, %cond.true232 ], [ %call235, %cond.false234 ], !dbg !2053
  %33 = load ptr, ptr %stream_class, align 8, !dbg !2054, !tbaa !677
  %34 = load ptr, ptr %stream1, align 8, !dbg !2055, !tbaa !677
  %35 = load ptr, ptr %clock, align 8, !dbg !2056, !tbaa !677
  call void @append_simple_event(ptr noundef %33, ptr noundef %34, ptr noundef %35), !dbg !2057
  %36 = load ptr, ptr %stream_class, align 8, !dbg !2058, !tbaa !677
  %37 = load ptr, ptr %stream1, align 8, !dbg !2059, !tbaa !677
  %38 = load ptr, ptr %clock, align 8, !dbg !2060, !tbaa !677
  call void @packet_resize_test(ptr noundef %36, ptr noundef %37, ptr noundef %38), !dbg !2061
  %39 = load ptr, ptr %stream_class, align 8, !dbg !2062, !tbaa !677
  %40 = load ptr, ptr %stream1, align 8, !dbg !2063, !tbaa !677
  %41 = load ptr, ptr %clock, align 8, !dbg !2064, !tbaa !677
  call void @append_complex_event(ptr noundef %39, ptr noundef %40, ptr noundef %41), !dbg !2065
  %42 = load ptr, ptr %writer, align 8, !dbg !2066, !tbaa !677
  %call238 = call ptr @bt_ctf_writer_get_metadata_string(ptr noundef %42), !dbg !2067
  store ptr %call238, ptr %metadata_string, align 8, !dbg !2068, !tbaa !677
  %43 = load ptr, ptr %metadata_string, align 8, !dbg !2069, !tbaa !677
  %tobool239 = icmp ne ptr %43, null, !dbg !2069
  br i1 %tobool239, label %cond.true240, label %cond.false242, !dbg !2069

cond.true240:                                     ; preds = %cond.end236
  %call241 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 1, ptr noundef @__func__.main, ptr noundef @.str.6, i32 noundef 827, ptr noundef @.str.166), !dbg !2069
  br label %cond.end244, !dbg !2069

cond.false242:                                    ; preds = %cond.end236
  %call243 = call i32 (i32, ptr, ptr, i32, ptr, ...) @_gen_result(i32 noundef 0, ptr noundef @__func__.main, ptr noundef @.str.6, i32 noundef 827, ptr noundef @.str.166), !dbg !2069
  br label %cond.end244, !dbg !2069

cond.end244:                                      ; preds = %cond.false242, %cond.true240
  %cond245 = phi i32 [ %call241, %cond.true240 ], [ %call243, %cond.false242 ], !dbg !2069
  %44 = load ptr, ptr %writer, align 8, !dbg !2070, !tbaa !677
  call void @bt_ctf_writer_flush_metadata(ptr noundef %44), !dbg !2071
  %45 = load ptr, ptr %argv.addr, align 8, !dbg !2072, !tbaa !677
  %arrayidx = getelementptr inbounds ptr, ptr %45, i64 1, !dbg !2072
  %46 = load ptr, ptr %arrayidx, align 8, !dbg !2072, !tbaa !677
  %arraydecay246 = getelementptr inbounds [31 x i8], ptr %metadata_path, i64 0, i64 0, !dbg !2073
  call void @validate_metadata(ptr noundef %46, ptr noundef %arraydecay246), !dbg !2074
  %47 = load ptr, ptr %argv.addr, align 8, !dbg !2075, !tbaa !677
  %arrayidx247 = getelementptr inbounds ptr, ptr %47, i64 2, !dbg !2075
  %48 = load ptr, ptr %arrayidx247, align 8, !dbg !2075, !tbaa !677
  %arraydecay248 = getelementptr inbounds [22 x i8], ptr %trace_path, i64 0, i64 0, !dbg !2076
  call void @validate_trace(ptr noundef %48, ptr noundef %arraydecay248), !dbg !2077
  %49 = load ptr, ptr %clock, align 8, !dbg !2078, !tbaa !677
  call void @bt_ctf_clock_put(ptr noundef %49), !dbg !2079
  %50 = load ptr, ptr %stream_class, align 8, !dbg !2080, !tbaa !677
  call void @bt_ctf_stream_class_put(ptr noundef %50), !dbg !2081
  %51 = load ptr, ptr %writer, align 8, !dbg !2082, !tbaa !677
  call void @bt_ctf_writer_put(ptr noundef %51), !dbg !2083
  %52 = load ptr, ptr %stream1, align 8, !dbg !2084, !tbaa !677
  call void @bt_ctf_stream_put(ptr noundef %52), !dbg !2085
  %53 = load ptr, ptr %metadata_string, align 8, !dbg !2086, !tbaa !677
  call void @free(ptr noundef %53) #9, !dbg !2087
  call void @llvm.lifetime.start.p0(i64 8, ptr %trace_dir) #9, !dbg !2088
  tail call void @llvm.dbg.declare(metadata ptr %trace_dir, metadata !1923, metadata !DIExpression()), !dbg !2089
  %arraydecay249 = getelementptr inbounds [22 x i8], ptr %trace_path, i64 0, i64 0, !dbg !2090
  %call250 = call ptr @opendir(ptr noundef %arraydecay249), !dbg !2091
  store ptr %call250, ptr %trace_dir, align 8, !dbg !2089, !tbaa !677
  %54 = load ptr, ptr %trace_dir, align 8, !dbg !2092, !tbaa !677
  %tobool251 = icmp ne ptr %54, null, !dbg !2092
  br i1 %tobool251, label %if.end253, label %if.then252, !dbg !2094

if.then252:                                       ; preds = %cond.end244
  call void @perror(ptr noundef @.str.167), !dbg !2095
  store i32 -1, ptr %retval, align 4, !dbg !2097
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2097

if.end253:                                        ; preds = %cond.end244
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry254) #9, !dbg !2098
  tail call void @llvm.dbg.declare(metadata ptr %entry254, metadata !1927, metadata !DIExpression()), !dbg !2099
  br label %while.cond, !dbg !2100

while.cond:                                       ; preds = %if.end263, %if.end253
  %55 = load ptr, ptr %trace_dir, align 8, !dbg !2101, !tbaa !677
  %call255 = call ptr @readdir(ptr noundef %55), !dbg !2102
  store ptr %call255, ptr %entry254, align 8, !dbg !2103, !tbaa !677
  %tobool256 = icmp ne ptr %call255, null, !dbg !2100
  br i1 %tobool256, label %while.body, label %while.end, !dbg !2100

while.body:                                       ; preds = %while.cond
  %56 = load ptr, ptr %entry254, align 8, !dbg !2104, !tbaa !677
  %d_type = getelementptr inbounds %struct.dirent, ptr %56, i32 0, i32 3, !dbg !2107
  %57 = load i8, ptr %d_type, align 2, !dbg !2107, !tbaa !2108
  %conv = zext i8 %57 to i32, !dbg !2104
  %cmp257 = icmp eq i32 %conv, 8, !dbg !2111
  br i1 %cmp257, label %if.then259, label %if.end263, !dbg !2112

if.then259:                                       ; preds = %while.body
  %58 = load ptr, ptr %trace_dir, align 8, !dbg !2113, !tbaa !677
  %call260 = call i32 @dirfd(ptr noundef %58) #9, !dbg !2115
  %59 = load ptr, ptr %entry254, align 8, !dbg !2116, !tbaa !677
  %d_name = getelementptr inbounds %struct.dirent, ptr %59, i32 0, i32 4, !dbg !2117
  %arraydecay261 = getelementptr inbounds [256 x i8], ptr %d_name, i64 0, i64 0, !dbg !2116
  %call262 = call i32 @unlinkat(i32 noundef %call260, ptr noundef %arraydecay261, i32 noundef 0) #9, !dbg !2118
  br label %if.end263, !dbg !2119

if.end263:                                        ; preds = %if.then259, %while.body
  br label %while.cond, !dbg !2100, !llvm.loop !2120

while.end:                                        ; preds = %while.cond
  %arraydecay264 = getelementptr inbounds [22 x i8], ptr %trace_path, i64 0, i64 0, !dbg !2122
  %call265 = call i32 @rmdir(ptr noundef %arraydecay264) #9, !dbg !2123
  %60 = load ptr, ptr %trace_dir, align 8, !dbg !2124, !tbaa !677
  %call266 = call i32 @closedir(ptr noundef %60), !dbg !2125
  store i32 0, ptr %retval, align 4, !dbg !2126
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry254) #9, !dbg !2127
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then252
  call void @llvm.lifetime.end.p0(i64 8, ptr %trace_dir) #9, !dbg !2127
  br label %cleanup267

cleanup267:                                       ; preds = %cleanup, %if.then58, %if.then19
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #9, !dbg !2127
  call void @llvm.lifetime.end.p0(i64 8, ptr %stream1) #9, !dbg !2127
  call void @llvm.lifetime.end.p0(i64 8, ptr %stream_class) #9, !dbg !2127
  call void @llvm.lifetime.end.p0(i64 8, ptr %clock) #9, !dbg !2127
  call void @llvm.lifetime.end.p0(i64 64, ptr %hostname) #9, !dbg !2127
  call void @llvm.lifetime.end.p0(i64 390, ptr %name) #9, !dbg !2127
  call void @llvm.lifetime.end.p0(i64 8, ptr %writer) #9, !dbg !2127
  call void @llvm.lifetime.end.p0(i64 8, ptr %metadata_string) #9, !dbg !2127
  call void @llvm.lifetime.end.p0(i64 8, ptr %precision) #9, !dbg !2127
  call void @llvm.lifetime.end.p0(i64 8, ptr %offset) #9, !dbg !2127
  call void @llvm.lifetime.end.p0(i64 8, ptr %offset_s) #9, !dbg !2127
  call void @llvm.lifetime.end.p0(i64 8, ptr %frequency) #9, !dbg !2127
  call void @llvm.lifetime.end.p0(i64 8, ptr %clock_description) #9, !dbg !2127
  call void @llvm.lifetime.end.p0(i64 8, ptr %clock_name) #9, !dbg !2127
  call void @llvm.lifetime.end.p0(i64 31, ptr %metadata_path) #9, !dbg !2127
  call void @llvm.lifetime.end.p0(i64 22, ptr %trace_path) #9, !dbg !2127
  %61 = load i32, ptr %retval, align 4, !dbg !2127
  ret i32 %61, !dbg !2127
}

declare !dbg !2128 i32 @printf(ptr noundef, ...) #3

declare !dbg !2132 i32 @plan_no_plan() #3

; Function Attrs: nounwind
declare !dbg !2135 ptr @mkdtemp(ptr noundef) #4

; Function Attrs: nounwind
declare !dbg !2138 ptr @strcpy(ptr noundef, ptr noundef) #4

; Function Attrs: nounwind
declare !dbg !2143 ptr @strcat(ptr noundef, ptr noundef) #4

declare !dbg !2144 ptr @bt_ctf_writer_create(ptr noundef) #3

; Function Attrs: nounwind
declare !dbg !2147 i32 @gethostname(ptr noundef, i64 noundef) #4

declare !dbg !2150 i32 @bt_ctf_writer_add_environment_field(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind
declare !dbg !2153 i32 @uname(ptr noundef) #4

declare !dbg !2157 ptr @bt_ctf_clock_create(ptr noundef) #3

declare !dbg !2160 i32 @bt_ctf_clock_set_description(ptr noundef, ptr noundef) #3

declare !dbg !2163 i32 @bt_ctf_clock_set_frequency(ptr noundef, i64 noundef) #3

declare !dbg !2164 i32 @bt_ctf_clock_set_offset_s(ptr noundef, i64 noundef) #3

declare !dbg !2165 i32 @bt_ctf_clock_set_offset(ptr noundef, i64 noundef) #3

declare !dbg !2166 i32 @bt_ctf_clock_set_precision(ptr noundef, i64 noundef) #3

declare !dbg !2167 i32 @bt_ctf_clock_set_is_absolute(ptr noundef, i32 noundef) #3

declare !dbg !2170 i32 @bt_ctf_writer_add_clock(ptr noundef, ptr noundef) #3

declare !dbg !2173 ptr @bt_ctf_stream_class_create(ptr noundef) #3

declare !dbg !2176 i32 @bt_ctf_stream_class_set_clock(ptr noundef, ptr noundef) #3

declare !dbg !2179 ptr @bt_ctf_writer_create_stream(ptr noundef, ptr noundef) #3

declare !dbg !2182 ptr @bt_ctf_writer_get_metadata_string(ptr noundef) #3

declare !dbg !2185 void @bt_ctf_writer_flush_metadata(ptr noundef) #3

declare !dbg !2188 void @bt_ctf_clock_put(ptr noundef) #3

declare !dbg !2191 void @bt_ctf_stream_class_put(ptr noundef) #3

declare !dbg !2194 void @bt_ctf_writer_put(ptr noundef) #3

declare !dbg !2195 void @bt_ctf_stream_put(ptr noundef) #3

declare !dbg !2198 ptr @opendir(ptr noundef) #3

declare !dbg !2201 ptr @readdir(ptr noundef) #3

; Function Attrs: nounwind
declare !dbg !2204 i32 @unlinkat(i32 noundef, ptr noundef, i32 noundef) #4

; Function Attrs: nounwind
declare !dbg !2207 i32 @dirfd(ptr noundef) #4

; Function Attrs: nounwind
declare !dbg !2210 i32 @rmdir(ptr noundef) #4

declare !dbg !2211 i32 @closedir(ptr noundef) #3

declare !dbg !2212 i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind allocsize(0) }

!llvm.dbg.cu = !{!172}
!llvm.module.flags = !{!593, !594, !595, !596, !597, !598}
!llvm.ident = !{!599}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 66, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "test_ctf_writer.c", directory: "/local-ssd/babeltrace-ltsh36prkey7v3qgu5igo3lgbpgjtjyj-build/aidengro/spack-stage-babeltrace-1.2.4-ltsh36prkey7v3qgu5igo3lgbpgjtjyj/spack-src/tests/lib", checksumkind: CSK_MD5, checksum: "5b9081dd0e2b0f987def58753d2103fd")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 52)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 80, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 28)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 86, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 34)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 92, type: !14, isLocal: true, isDefinition: true)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(scope: null, file: !2, line: 96, type: !21, isLocal: true, isDefinition: true)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !22)
!22 = !{!23}
!23 = !DISubrange(count: 16)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(scope: null, file: !2, line: 97, type: !26, isLocal: true, isDefinition: true)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !27)
!27 = !{!28}
!28 = !DISubrange(count: 51)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(scope: null, file: !2, line: 101, type: !31, isLocal: true, isDefinition: true)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 144, elements: !33)
!32 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!33 = !{!34}
!34 = !DISubrange(count: 18)
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(scope: null, file: !2, line: 101, type: !37, isLocal: true, isDefinition: true)
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !33)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(scope: null, file: !2, line: 101, type: !40, isLocal: true, isDefinition: true)
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !41)
!41 = !{!42}
!42 = !DISubrange(count: 25)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(scope: null, file: !2, line: 108, type: !45, isLocal: true, isDefinition: true)
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !46)
!46 = !{!47}
!47 = !DISubrange(count: 2)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(scope: null, file: !2, line: 110, type: !50, isLocal: true, isDefinition: true)
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !51)
!51 = !{!52}
!52 = !DISubrange(count: 22)
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(scope: null, file: !2, line: 117, type: !55, isLocal: true, isDefinition: true)
!55 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !56)
!56 = !{!57}
!57 = !DISubrange(count: 27)
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(scope: null, file: !2, line: 124, type: !60, isLocal: true, isDefinition: true)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !61)
!61 = !{!62}
!62 = !DISubrange(count: 15)
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(scope: null, file: !2, line: 131, type: !65, isLocal: true, isDefinition: true)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !66)
!66 = !{!67}
!67 = !DISubrange(count: 3)
!68 = !DIGlobalVariableExpression(var: !69, expr: !DIExpression())
!69 = distinct !DIGlobalVariable(scope: null, file: !2, line: 143, type: !60, isLocal: true, isDefinition: true)
!70 = !DIGlobalVariableExpression(var: !71, expr: !DIExpression())
!71 = distinct !DIGlobalVariable(scope: null, file: !2, line: 155, type: !72, isLocal: true, isDefinition: true)
!72 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !73)
!73 = !{!74}
!74 = !DISubrange(count: 12)
!75 = !DIGlobalVariableExpression(var: !76, expr: !DIExpression())
!76 = distinct !DIGlobalVariable(scope: null, file: !2, line: 180, type: !77, isLocal: true, isDefinition: true)
!77 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 424, elements: !78)
!78 = !{!79}
!79 = !DISubrange(count: 53)
!80 = !DIGlobalVariableExpression(var: !81, expr: !DIExpression())
!81 = distinct !DIGlobalVariable(scope: null, file: !2, line: 193, type: !82, isLocal: true, isDefinition: true)
!82 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 304, elements: !83)
!83 = !{!84}
!84 = !DISubrange(count: 38)
!85 = !DIGlobalVariableExpression(var: !86, expr: !DIExpression())
!86 = distinct !DIGlobalVariable(scope: null, file: !2, line: 199, type: !82, isLocal: true, isDefinition: true)
!87 = !DIGlobalVariableExpression(var: !88, expr: !DIExpression())
!88 = distinct !DIGlobalVariable(scope: null, file: !2, line: 203, type: !89, isLocal: true, isDefinition: true)
!89 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !90)
!90 = !{!91}
!91 = !DISubrange(count: 11)
!92 = !DIGlobalVariableExpression(var: !93, expr: !DIExpression())
!93 = distinct !DIGlobalVariable(scope: null, file: !2, line: 204, type: !94, isLocal: true, isDefinition: true)
!94 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 336, elements: !95)
!95 = !{!96}
!96 = !DISubrange(count: 42)
!97 = !DIGlobalVariableExpression(var: !98, expr: !DIExpression())
!98 = distinct !DIGlobalVariable(scope: null, file: !2, line: 208, type: !99, isLocal: true, isDefinition: true)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 120, elements: !61)
!100 = !DIGlobalVariableExpression(var: !101, expr: !DIExpression())
!101 = distinct !DIGlobalVariable(scope: null, file: !2, line: 208, type: !94, isLocal: true, isDefinition: true)
!102 = !DIGlobalVariableExpression(var: !103, expr: !DIExpression())
!103 = distinct !DIGlobalVariable(scope: null, file: !2, line: 217, type: !104, isLocal: true, isDefinition: true)
!104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !105)
!105 = !{!106}
!106 = !DISubrange(count: 31)
!107 = !DIGlobalVariableExpression(var: !108, expr: !DIExpression())
!108 = distinct !DIGlobalVariable(scope: null, file: !2, line: 224, type: !109, isLocal: true, isDefinition: true)
!109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !110)
!110 = !{!111}
!111 = !DISubrange(count: 13)
!112 = !DIGlobalVariableExpression(var: !113, expr: !DIExpression())
!113 = distinct !DIGlobalVariable(scope: null, file: !2, line: 235, type: !109, isLocal: true, isDefinition: true)
!114 = !DIGlobalVariableExpression(var: !115, expr: !DIExpression())
!115 = distinct !DIGlobalVariable(scope: null, file: !2, line: 252, type: !109, isLocal: true, isDefinition: true)
!116 = !DIGlobalVariableExpression(var: !117, expr: !DIExpression())
!117 = distinct !DIGlobalVariable(scope: null, file: !2, line: 269, type: !118, isLocal: true, isDefinition: true)
!118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !119)
!119 = !{!120}
!120 = !DISubrange(count: 17)
!121 = !DIGlobalVariableExpression(var: !122, expr: !DIExpression())
!122 = distinct !DIGlobalVariable(scope: null, file: !2, line: 269, type: !123, isLocal: true, isDefinition: true)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 160, elements: !124)
!124 = !{!125}
!125 = !DISubrange(count: 20)
!126 = !DIGlobalVariableExpression(var: !127, expr: !DIExpression())
!127 = distinct !DIGlobalVariable(scope: null, file: !2, line: 269, type: !77, isLocal: true, isDefinition: true)
!128 = !DIGlobalVariableExpression(var: !129, expr: !DIExpression())
!129 = distinct !DIGlobalVariable(scope: null, file: !2, line: 272, type: !55, isLocal: true, isDefinition: true)
!130 = !DIGlobalVariableExpression(var: !131, expr: !DIExpression())
!131 = distinct !DIGlobalVariable(scope: null, file: !2, line: 272, type: !132, isLocal: true, isDefinition: true)
!132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 520, elements: !133)
!133 = !{!134}
!134 = !DISubrange(count: 65)
!135 = !DIGlobalVariableExpression(var: !136, expr: !DIExpression())
!136 = distinct !DIGlobalVariable(scope: null, file: !2, line: 275, type: !50, isLocal: true, isDefinition: true)
!137 = !DIGlobalVariableExpression(var: !138, expr: !DIExpression())
!138 = distinct !DIGlobalVariable(scope: null, file: !2, line: 275, type: !139, isLocal: true, isDefinition: true)
!139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 512, elements: !140)
!140 = !{!141}
!141 = !DISubrange(count: 64)
!142 = !DIGlobalVariableExpression(var: !143, expr: !DIExpression())
!143 = distinct !DIGlobalVariable(scope: null, file: !2, line: 278, type: !89, isLocal: true, isDefinition: true)
!144 = !DIGlobalVariableExpression(var: !145, expr: !DIExpression())
!145 = distinct !DIGlobalVariable(scope: null, file: !2, line: 278, type: !104, isLocal: true, isDefinition: true)
!146 = !DIGlobalVariableExpression(var: !147, expr: !DIExpression())
!147 = distinct !DIGlobalVariable(scope: null, file: !2, line: 281, type: !148, isLocal: true, isDefinition: true)
!148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !149)
!149 = !{!150}
!150 = !DISubrange(count: 32)
!151 = !DIGlobalVariableExpression(var: !152, expr: !DIExpression())
!152 = distinct !DIGlobalVariable(scope: null, file: !2, line: 283, type: !153, isLocal: true, isDefinition: true)
!153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !154)
!154 = !{!155}
!155 = !DISubrange(count: 14)
!156 = !DIGlobalVariableExpression(var: !157, expr: !DIExpression())
!157 = distinct !DIGlobalVariable(scope: null, file: !2, line: 285, type: !72, isLocal: true, isDefinition: true)
!158 = !DIGlobalVariableExpression(var: !159, expr: !DIExpression())
!159 = distinct !DIGlobalVariable(scope: null, file: !2, line: 291, type: !160, isLocal: true, isDefinition: true)
!160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 440, elements: !161)
!161 = !{!162}
!162 = !DISubrange(count: 55)
!163 = !DIGlobalVariableExpression(var: !164, expr: !DIExpression())
!164 = distinct !DIGlobalVariable(scope: null, file: !2, line: 296, type: !165, isLocal: true, isDefinition: true)
!165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 504, elements: !166)
!166 = !{!167}
!167 = !DISubrange(count: 63)
!168 = !DIGlobalVariableExpression(var: !169, expr: !DIExpression())
!169 = distinct !DIGlobalVariable(scope: null, file: !2, line: 304, type: !148, isLocal: true, isDefinition: true)
!170 = !DIGlobalVariableExpression(var: !171, expr: !DIExpression())
!171 = distinct !DIGlobalVariable(name: "current_time", scope: !172, file: !2, line: 47, type: !588, isLocal: true, isDefinition: true)
!172 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !173, retainedTypes: !203, globals: !205, splitDebugInlining: false, nameTableKind: None)
!173 = !{!174, !183, !191}
!174 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "bt_ctf_integer_base", file: !175, line: 45, baseType: !176, size: 32, elements: !177)
!175 = !DIFile(filename: "../../include/babeltrace/ctf-writer/event-types.h", directory: "/local-ssd/babeltrace-ltsh36prkey7v3qgu5igo3lgbpgjtjyj-build/aidengro/spack-stage-babeltrace-1.2.4-ltsh36prkey7v3qgu5igo3lgbpgjtjyj/spack-src/tests/lib", checksumkind: CSK_MD5, checksum: "ac5567179abefccb197a77e942d3b48b")
!176 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!177 = !{!178, !179, !180, !181, !182}
!178 = !DIEnumerator(name: "BT_CTF_INTEGER_BASE_UNKNOWN", value: -1)
!179 = !DIEnumerator(name: "BT_CTF_INTEGER_BASE_BINARY", value: 2)
!180 = !DIEnumerator(name: "BT_CTF_INTEGER_BASE_OCTAL", value: 8)
!181 = !DIEnumerator(name: "BT_CTF_INTEGER_BASE_DECIMAL", value: 10)
!182 = !DIEnumerator(name: "BT_CTF_INTEGER_BASE_HEXADECIMAL", value: 16)
!183 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ctf_string_encoding", file: !184, line: 80, baseType: !185, size: 32, elements: !186)
!184 = !DIFile(filename: "../../include/babeltrace/ctf/events.h", directory: "/local-ssd/babeltrace-ltsh36prkey7v3qgu5igo3lgbpgjtjyj-build/aidengro/spack-stage-babeltrace-1.2.4-ltsh36prkey7v3qgu5igo3lgbpgjtjyj/spack-src/tests/lib", checksumkind: CSK_MD5, checksum: "94e6bc16713c74e95d4df9cedcb70078")
!185 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!186 = !{!187, !188, !189, !190}
!187 = !DIEnumerator(name: "CTF_STRING_NONE", value: 0)
!188 = !DIEnumerator(name: "CTF_STRING_UTF8", value: 1)
!189 = !DIEnumerator(name: "CTF_STRING_ASCII", value: 2)
!190 = !DIEnumerator(name: "CTF_STRING_UNKNOWN", value: 3)
!191 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !192, line: 97, baseType: !185, size: 32, elements: !193)
!192 = !DIFile(filename: "/usr/include/dirent.h", directory: "", checksumkind: CSK_MD5, checksum: "6eb1a2faa0cf53b967234cc6c0fe978e")
!193 = !{!194, !195, !196, !197, !198, !199, !200, !201, !202}
!194 = !DIEnumerator(name: "DT_UNKNOWN", value: 0)
!195 = !DIEnumerator(name: "DT_FIFO", value: 1)
!196 = !DIEnumerator(name: "DT_CHR", value: 2)
!197 = !DIEnumerator(name: "DT_DIR", value: 4)
!198 = !DIEnumerator(name: "DT_BLK", value: 6)
!199 = !DIEnumerator(name: "DT_REG", value: 8)
!200 = !DIEnumerator(name: "DT_LNK", value: 10)
!201 = !DIEnumerator(name: "DT_SOCK", value: 12)
!202 = !DIEnumerator(name: "DT_WHT", value: 14)
!203 = !{!204}
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!205 = !{!0, !7, !12, !17, !19, !24, !29, !35, !38, !43, !48, !53, !58, !63, !68, !70, !75, !80, !85, !87, !92, !97, !100, !102, !107, !112, !114, !116, !121, !126, !128, !130, !135, !137, !142, !144, !146, !151, !156, !158, !163, !168, !206, !208, !213, !215, !217, !222, !224, !226, !228, !230, !232, !237, !239, !241, !246, !248, !250, !255, !257, !262, !264, !269, !274, !276, !281, !286, !291, !293, !298, !303, !308, !310, !312, !317, !322, !324, !326, !328, !333, !335, !337, !340, !342, !344, !346, !351, !356, !358, !360, !365, !367, !370, !372, !374, !379, !384, !386, !388, !390, !392, !394, !396, !401, !406, !411, !416, !418, !420, !422, !424, !429, !431, !433, !438, !440, !442, !444, !449, !451, !453, !458, !460, !465, !467, !469, !471, !474, !476, !478, !480, !485, !487, !489, !494, !496, !501, !506, !508, !511, !513, !515, !517, !519, !521, !523, !525, !527, !529, !531, !533, !535, !537, !539, !541, !543, !545, !547, !549, !551, !556, !559, !561, !563, !565, !567, !569, !574, !576, !578, !580, !582, !584, !586, !170}
!206 = !DIGlobalVariableExpression(var: !207, expr: !DIExpression())
!207 = distinct !DIGlobalVariable(scope: null, file: !2, line: 309, type: !60, isLocal: true, isDefinition: true)
!208 = !DIGlobalVariableExpression(var: !209, expr: !DIExpression())
!209 = distinct !DIGlobalVariable(scope: null, file: !2, line: 311, type: !210, isLocal: true, isDefinition: true)
!210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !211)
!211 = !{!212}
!212 = !DISubrange(count: 36)
!213 = !DIGlobalVariableExpression(var: !214, expr: !DIExpression())
!214 = distinct !DIGlobalVariable(scope: null, file: !2, line: 314, type: !14, isLocal: true, isDefinition: true)
!215 = !DIGlobalVariableExpression(var: !216, expr: !DIExpression())
!216 = distinct !DIGlobalVariable(scope: null, file: !2, line: 342, type: !118, isLocal: true, isDefinition: true)
!217 = !DIGlobalVariableExpression(var: !218, expr: !DIExpression())
!218 = distinct !DIGlobalVariable(scope: null, file: !2, line: 363, type: !219, isLocal: true, isDefinition: true)
!219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !220)
!220 = !{!221}
!221 = !DISubrange(count: 8)
!222 = !DIGlobalVariableExpression(var: !223, expr: !DIExpression())
!223 = distinct !DIGlobalVariable(scope: null, file: !2, line: 367, type: !89, isLocal: true, isDefinition: true)
!224 = !DIGlobalVariableExpression(var: !225, expr: !DIExpression())
!225 = distinct !DIGlobalVariable(scope: null, file: !2, line: 370, type: !89, isLocal: true, isDefinition: true)
!226 = !DIGlobalVariableExpression(var: !227, expr: !DIExpression())
!227 = distinct !DIGlobalVariable(scope: null, file: !2, line: 372, type: !89, isLocal: true, isDefinition: true)
!228 = !DIGlobalVariableExpression(var: !229, expr: !DIExpression())
!229 = distinct !DIGlobalVariable(scope: null, file: !2, line: 374, type: !72, isLocal: true, isDefinition: true)
!230 = !DIGlobalVariableExpression(var: !231, expr: !DIExpression())
!231 = distinct !DIGlobalVariable(scope: null, file: !2, line: 375, type: !118, isLocal: true, isDefinition: true)
!232 = !DIGlobalVariableExpression(var: !233, expr: !DIExpression())
!233 = distinct !DIGlobalVariable(scope: null, file: !2, line: 375, type: !234, isLocal: true, isDefinition: true)
!234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 168, elements: !235)
!235 = !{!236}
!236 = !DISubrange(count: 21)
!237 = !DIGlobalVariableExpression(var: !238, expr: !DIExpression())
!238 = distinct !DIGlobalVariable(scope: null, file: !2, line: 375, type: !77, isLocal: true, isDefinition: true)
!239 = !DIGlobalVariableExpression(var: !240, expr: !DIExpression())
!240 = distinct !DIGlobalVariable(scope: null, file: !2, line: 377, type: !40, isLocal: true, isDefinition: true)
!241 = !DIGlobalVariableExpression(var: !242, expr: !DIExpression())
!242 = distinct !DIGlobalVariable(scope: null, file: !2, line: 387, type: !243, isLocal: true, isDefinition: true)
!243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !244)
!244 = !{!245}
!245 = !DISubrange(count: 9)
!246 = !DIGlobalVariableExpression(var: !247, expr: !DIExpression())
!247 = distinct !DIGlobalVariable(scope: null, file: !2, line: 389, type: !153, isLocal: true, isDefinition: true)
!248 = !DIGlobalVariableExpression(var: !249, expr: !DIExpression())
!249 = distinct !DIGlobalVariable(scope: null, file: !2, line: 391, type: !21, isLocal: true, isDefinition: true)
!250 = !DIGlobalVariableExpression(var: !251, expr: !DIExpression())
!251 = distinct !DIGlobalVariable(scope: null, file: !2, line: 393, type: !252, isLocal: true, isDefinition: true)
!252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !253)
!253 = !{!254}
!254 = !DISubrange(count: 6)
!255 = !DIGlobalVariableExpression(var: !256, expr: !DIExpression())
!256 = distinct !DIGlobalVariable(scope: null, file: !2, line: 393, type: !160, isLocal: true, isDefinition: true)
!257 = !DIGlobalVariableExpression(var: !258, expr: !DIExpression())
!258 = distinct !DIGlobalVariable(scope: null, file: !2, line: 395, type: !259, isLocal: true, isDefinition: true)
!259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !260)
!260 = !{!261}
!261 = !DISubrange(count: 19)
!262 = !DIGlobalVariableExpression(var: !263, expr: !DIExpression())
!263 = distinct !DIGlobalVariable(scope: null, file: !2, line: 396, type: !50, isLocal: true, isDefinition: true)
!264 = !DIGlobalVariableExpression(var: !265, expr: !DIExpression())
!265 = distinct !DIGlobalVariable(scope: null, file: !2, line: 397, type: !266, isLocal: true, isDefinition: true)
!266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !267)
!267 = !{!268}
!268 = !DISubrange(count: 1)
!269 = !DIGlobalVariableExpression(var: !270, expr: !DIExpression())
!270 = distinct !DIGlobalVariable(scope: null, file: !2, line: 397, type: !271, isLocal: true, isDefinition: true)
!271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 464, elements: !272)
!272 = !{!273}
!273 = !DISubrange(count: 58)
!274 = !DIGlobalVariableExpression(var: !275, expr: !DIExpression())
!275 = distinct !DIGlobalVariable(scope: null, file: !2, line: 399, type: !89, isLocal: true, isDefinition: true)
!276 = !DIGlobalVariableExpression(var: !277, expr: !DIExpression())
!277 = distinct !DIGlobalVariable(scope: null, file: !2, line: 399, type: !278, isLocal: true, isDefinition: true)
!278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !279)
!279 = !{!280}
!280 = !DISubrange(count: 56)
!281 = !DIGlobalVariableExpression(var: !282, expr: !DIExpression())
!282 = distinct !DIGlobalVariable(scope: null, file: !2, line: 401, type: !283, isLocal: true, isDefinition: true)
!283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !284)
!284 = !{!285}
!285 = !DISubrange(count: 4)
!286 = !DIGlobalVariableExpression(var: !287, expr: !DIExpression())
!287 = distinct !DIGlobalVariable(scope: null, file: !2, line: 401, type: !288, isLocal: true, isDefinition: true)
!288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 472, elements: !289)
!289 = !{!290}
!290 = !DISubrange(count: 59)
!291 = !DIGlobalVariableExpression(var: !292, expr: !DIExpression())
!292 = distinct !DIGlobalVariable(scope: null, file: !2, line: 404, type: !219, isLocal: true, isDefinition: true)
!293 = !DIGlobalVariableExpression(var: !294, expr: !DIExpression())
!294 = distinct !DIGlobalVariable(scope: null, file: !2, line: 404, type: !295, isLocal: true, isDefinition: true)
!295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 376, elements: !296)
!296 = !{!297}
!297 = !DISubrange(count: 47)
!298 = !DIGlobalVariableExpression(var: !299, expr: !DIExpression())
!299 = distinct !DIGlobalVariable(scope: null, file: !2, line: 407, type: !300, isLocal: true, isDefinition: true)
!300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !301)
!301 = !{!302}
!302 = !DISubrange(count: 7)
!303 = !DIGlobalVariableExpression(var: !304, expr: !DIExpression())
!304 = distinct !DIGlobalVariable(scope: null, file: !2, line: 407, type: !305, isLocal: true, isDefinition: true)
!305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 360, elements: !306)
!306 = !{!307}
!307 = !DISubrange(count: 45)
!308 = !DIGlobalVariableExpression(var: !309, expr: !DIExpression())
!309 = distinct !DIGlobalVariable(scope: null, file: !2, line: 409, type: !37, isLocal: true, isDefinition: true)
!310 = !DIGlobalVariableExpression(var: !311, expr: !DIExpression())
!311 = distinct !DIGlobalVariable(scope: null, file: !2, line: 409, type: !210, isLocal: true, isDefinition: true)
!312 = !DIGlobalVariableExpression(var: !313, expr: !DIExpression())
!313 = distinct !DIGlobalVariable(scope: null, file: !2, line: 414, type: !314, isLocal: true, isDefinition: true)
!314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 432, elements: !315)
!315 = !{!316}
!316 = !DISubrange(count: 54)
!317 = !DIGlobalVariableExpression(var: !318, expr: !DIExpression())
!318 = distinct !DIGlobalVariable(scope: null, file: !2, line: 416, type: !319, isLocal: true, isDefinition: true)
!319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, elements: !320)
!320 = !{!321}
!321 = !DISubrange(count: 35)
!322 = !DIGlobalVariableExpression(var: !323, expr: !DIExpression())
!323 = distinct !DIGlobalVariable(scope: null, file: !2, line: 420, type: !9, isLocal: true, isDefinition: true)
!324 = !DIGlobalVariableExpression(var: !325, expr: !DIExpression())
!325 = distinct !DIGlobalVariable(scope: null, file: !2, line: 423, type: !314, isLocal: true, isDefinition: true)
!326 = !DIGlobalVariableExpression(var: !327, expr: !DIExpression())
!327 = distinct !DIGlobalVariable(scope: null, file: !2, line: 454, type: !72, isLocal: true, isDefinition: true)
!328 = !DIGlobalVariableExpression(var: !329, expr: !DIExpression())
!329 = distinct !DIGlobalVariable(scope: null, file: !2, line: 457, type: !330, isLocal: true, isDefinition: true)
!330 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !331)
!331 = !{!332}
!332 = !DISubrange(count: 30)
!333 = !DIGlobalVariableExpression(var: !334, expr: !DIExpression())
!334 = distinct !DIGlobalVariable(scope: null, file: !2, line: 468, type: !319, isLocal: true, isDefinition: true)
!335 = !DIGlobalVariableExpression(var: !336, expr: !DIExpression())
!336 = distinct !DIGlobalVariable(scope: null, file: !2, line: 470, type: !94, isLocal: true, isDefinition: true)
!337 = !DIGlobalVariableExpression(var: !338, expr: !DIExpression())
!338 = distinct !DIGlobalVariable(scope: null, file: !2, line: 512, type: !339, isLocal: true, isDefinition: true)
!339 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 136, elements: !119)
!340 = !DIGlobalVariableExpression(var: !341, expr: !DIExpression())
!341 = distinct !DIGlobalVariable(scope: null, file: !2, line: 513, type: !14, isLocal: true, isDefinition: true)
!342 = !DIGlobalVariableExpression(var: !343, expr: !DIExpression())
!343 = distinct !DIGlobalVariable(scope: null, file: !2, line: 516, type: !319, isLocal: true, isDefinition: true)
!344 = !DIGlobalVariableExpression(var: !345, expr: !DIExpression())
!345 = distinct !DIGlobalVariable(scope: null, file: !2, line: 519, type: !94, isLocal: true, isDefinition: true)
!346 = !DIGlobalVariableExpression(var: !347, expr: !DIExpression())
!347 = distinct !DIGlobalVariable(scope: null, file: !2, line: 522, type: !348, isLocal: true, isDefinition: true)
!348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !349)
!349 = !{!350}
!350 = !DISubrange(count: 33)
!351 = !DIGlobalVariableExpression(var: !352, expr: !DIExpression())
!352 = distinct !DIGlobalVariable(scope: null, file: !2, line: 525, type: !353, isLocal: true, isDefinition: true)
!353 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !354)
!354 = !{!355}
!355 = !DISubrange(count: 39)
!356 = !DIGlobalVariableExpression(var: !357, expr: !DIExpression())
!357 = distinct !DIGlobalVariable(scope: null, file: !2, line: 528, type: !14, isLocal: true, isDefinition: true)
!358 = !DIGlobalVariableExpression(var: !359, expr: !DIExpression())
!359 = distinct !DIGlobalVariable(scope: null, file: !2, line: 530, type: !82, isLocal: true, isDefinition: true)
!360 = !DIGlobalVariableExpression(var: !361, expr: !DIExpression())
!361 = distinct !DIGlobalVariable(scope: null, file: !2, line: 532, type: !362, isLocal: true, isDefinition: true)
!362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !363)
!363 = !{!364}
!364 = !DISubrange(count: 40)
!365 = !DIGlobalVariableExpression(var: !366, expr: !DIExpression())
!366 = distinct !DIGlobalVariable(scope: null, file: !2, line: 540, type: !14, isLocal: true, isDefinition: true)
!367 = !DIGlobalVariableExpression(var: !368, expr: !DIExpression())
!368 = distinct !DIGlobalVariable(scope: null, file: !2, line: 543, type: !369, isLocal: true, isDefinition: true)
!369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !235)
!370 = !DIGlobalVariableExpression(var: !371, expr: !DIExpression())
!371 = distinct !DIGlobalVariable(scope: null, file: !2, line: 544, type: !82, isLocal: true, isDefinition: true)
!372 = !DIGlobalVariableExpression(var: !373, expr: !DIExpression())
!373 = distinct !DIGlobalVariable(scope: null, file: !2, line: 547, type: !104, isLocal: true, isDefinition: true)
!374 = !DIGlobalVariableExpression(var: !375, expr: !DIExpression())
!375 = distinct !DIGlobalVariable(scope: null, file: !2, line: 550, type: !376, isLocal: true, isDefinition: true)
!376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !377)
!377 = !{!378}
!378 = !DISubrange(count: 29)
!379 = !DIGlobalVariableExpression(var: !380, expr: !DIExpression())
!380 = distinct !DIGlobalVariable(scope: null, file: !2, line: 555, type: !381, isLocal: true, isDefinition: true)
!381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !382)
!382 = !{!383}
!383 = !DISubrange(count: 24)
!384 = !DIGlobalVariableExpression(var: !385, expr: !DIExpression())
!385 = distinct !DIGlobalVariable(scope: null, file: !2, line: 556, type: !14, isLocal: true, isDefinition: true)
!386 = !DIGlobalVariableExpression(var: !387, expr: !DIExpression())
!387 = distinct !DIGlobalVariable(scope: null, file: !2, line: 559, type: !319, isLocal: true, isDefinition: true)
!388 = !DIGlobalVariableExpression(var: !389, expr: !DIExpression())
!389 = distinct !DIGlobalVariable(scope: null, file: !2, line: 563, type: !348, isLocal: true, isDefinition: true)
!390 = !DIGlobalVariableExpression(var: !391, expr: !DIExpression())
!391 = distinct !DIGlobalVariable(scope: null, file: !2, line: 566, type: !210, isLocal: true, isDefinition: true)
!392 = !DIGlobalVariableExpression(var: !393, expr: !DIExpression())
!393 = distinct !DIGlobalVariable(scope: null, file: !2, line: 571, type: !210, isLocal: true, isDefinition: true)
!394 = !DIGlobalVariableExpression(var: !395, expr: !DIExpression())
!395 = distinct !DIGlobalVariable(scope: null, file: !2, line: 573, type: !353, isLocal: true, isDefinition: true)
!396 = !DIGlobalVariableExpression(var: !397, expr: !DIExpression())
!397 = distinct !DIGlobalVariable(scope: null, file: !2, line: 576, type: !398, isLocal: true, isDefinition: true)
!398 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 528, elements: !399)
!399 = !{!400}
!400 = !DISubrange(count: 66)
!401 = !DIGlobalVariableExpression(var: !402, expr: !DIExpression())
!402 = distinct !DIGlobalVariable(scope: null, file: !2, line: 579, type: !403, isLocal: true, isDefinition: true)
!403 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 584, elements: !404)
!404 = !{!405}
!405 = !DISubrange(count: 73)
!406 = !DIGlobalVariableExpression(var: !407, expr: !DIExpression())
!407 = distinct !DIGlobalVariable(scope: null, file: !2, line: 583, type: !408, isLocal: true, isDefinition: true)
!408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 656, elements: !409)
!409 = !{!410}
!410 = !DISubrange(count: 82)
!411 = !DIGlobalVariableExpression(var: !412, expr: !DIExpression())
!412 = distinct !DIGlobalVariable(scope: null, file: !2, line: 585, type: !413, isLocal: true, isDefinition: true)
!413 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 648, elements: !414)
!414 = !{!415}
!415 = !DISubrange(count: 81)
!416 = !DIGlobalVariableExpression(var: !417, expr: !DIExpression())
!417 = distinct !DIGlobalVariable(scope: null, file: !2, line: 589, type: !3, isLocal: true, isDefinition: true)
!418 = !DIGlobalVariableExpression(var: !419, expr: !DIExpression())
!419 = distinct !DIGlobalVariable(scope: null, file: !2, line: 591, type: !26, isLocal: true, isDefinition: true)
!420 = !DIGlobalVariableExpression(var: !421, expr: !DIExpression())
!421 = distinct !DIGlobalVariable(scope: null, file: !2, line: 593, type: !160, isLocal: true, isDefinition: true)
!422 = !DIGlobalVariableExpression(var: !423, expr: !DIExpression())
!423 = distinct !DIGlobalVariable(scope: null, file: !2, line: 595, type: !278, isLocal: true, isDefinition: true)
!424 = !DIGlobalVariableExpression(var: !425, expr: !DIExpression())
!425 = distinct !DIGlobalVariable(scope: null, file: !2, line: 597, type: !426, isLocal: true, isDefinition: true)
!426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 392, elements: !427)
!427 = !{!428}
!428 = !DISubrange(count: 49)
!429 = !DIGlobalVariableExpression(var: !430, expr: !DIExpression())
!430 = distinct !DIGlobalVariable(scope: null, file: !2, line: 600, type: !77, isLocal: true, isDefinition: true)
!431 = !DIGlobalVariableExpression(var: !432, expr: !DIExpression())
!432 = distinct !DIGlobalVariable(scope: null, file: !2, line: 602, type: !278, isLocal: true, isDefinition: true)
!433 = !DIGlobalVariableExpression(var: !434, expr: !DIExpression())
!434 = distinct !DIGlobalVariable(scope: null, file: !2, line: 604, type: !435, isLocal: true, isDefinition: true)
!435 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 400, elements: !436)
!436 = !{!437}
!437 = !DISubrange(count: 50)
!438 = !DIGlobalVariableExpression(var: !439, expr: !DIExpression())
!439 = distinct !DIGlobalVariable(scope: null, file: !2, line: 608, type: !55, isLocal: true, isDefinition: true)
!440 = !DIGlobalVariableExpression(var: !441, expr: !DIExpression())
!441 = distinct !DIGlobalVariable(scope: null, file: !2, line: 609, type: !219, isLocal: true, isDefinition: true)
!442 = !DIGlobalVariableExpression(var: !443, expr: !DIExpression())
!443 = distinct !DIGlobalVariable(scope: null, file: !2, line: 609, type: !369, isLocal: true, isDefinition: true)
!444 = !DIGlobalVariableExpression(var: !445, expr: !DIExpression())
!445 = distinct !DIGlobalVariable(scope: null, file: !2, line: 613, type: !446, isLocal: true, isDefinition: true)
!446 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 576, elements: !447)
!447 = !{!448}
!448 = !DISubrange(count: 72)
!449 = !DIGlobalVariableExpression(var: !450, expr: !DIExpression())
!450 = distinct !DIGlobalVariable(scope: null, file: !2, line: 616, type: !252, isLocal: true, isDefinition: true)
!451 = !DIGlobalVariableExpression(var: !452, expr: !DIExpression())
!452 = distinct !DIGlobalVariable(scope: null, file: !2, line: 617, type: !165, isLocal: true, isDefinition: true)
!453 = !DIGlobalVariableExpression(var: !454, expr: !DIExpression())
!454 = distinct !DIGlobalVariable(scope: null, file: !2, line: 621, type: !455, isLocal: true, isDefinition: true)
!455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 488, elements: !456)
!456 = !{!457}
!457 = !DISubrange(count: 61)
!458 = !DIGlobalVariableExpression(var: !459, expr: !DIExpression())
!459 = distinct !DIGlobalVariable(scope: null, file: !2, line: 623, type: !72, isLocal: true, isDefinition: true)
!460 = !DIGlobalVariableExpression(var: !461, expr: !DIExpression())
!461 = distinct !DIGlobalVariable(scope: null, file: !2, line: 623, type: !462, isLocal: true, isDefinition: true)
!462 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 608, elements: !463)
!463 = !{!464}
!464 = !DISubrange(count: 76)
!465 = !DIGlobalVariableExpression(var: !466, expr: !DIExpression())
!466 = distinct !DIGlobalVariable(scope: null, file: !2, line: 627, type: !288, isLocal: true, isDefinition: true)
!467 = !DIGlobalVariableExpression(var: !468, expr: !DIExpression())
!468 = distinct !DIGlobalVariable(scope: null, file: !2, line: 657, type: !109, isLocal: true, isDefinition: true)
!469 = !DIGlobalVariableExpression(var: !470, expr: !DIExpression())
!470 = distinct !DIGlobalVariable(scope: null, file: !2, line: 664, type: !219, isLocal: true, isDefinition: true)
!471 = !DIGlobalVariableExpression(var: !472, expr: !DIExpression())
!472 = distinct !DIGlobalVariable(scope: null, file: !2, line: 668, type: !473, isLocal: true, isDefinition: true)
!473 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 152, elements: !260)
!474 = !DIGlobalVariableExpression(var: !475, expr: !DIExpression())
!475 = distinct !DIGlobalVariable(scope: null, file: !2, line: 668, type: !165, isLocal: true, isDefinition: true)
!476 = !DIGlobalVariableExpression(var: !477, expr: !DIExpression())
!477 = distinct !DIGlobalVariable(scope: null, file: !2, line: 685, type: !60, isLocal: true, isDefinition: true)
!478 = !DIGlobalVariableExpression(var: !479, expr: !DIExpression())
!479 = distinct !DIGlobalVariable(scope: null, file: !2, line: 697, type: !14, isLocal: true, isDefinition: true)
!480 = !DIGlobalVariableExpression(var: !481, expr: !DIExpression())
!481 = distinct !DIGlobalVariable(scope: null, file: !2, line: 698, type: !482, isLocal: true, isDefinition: true)
!482 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 344, elements: !483)
!483 = !{!484}
!484 = !DISubrange(count: 43)
!485 = !DIGlobalVariableExpression(var: !486, expr: !DIExpression())
!486 = distinct !DIGlobalVariable(scope: null, file: !2, line: 709, type: !89, isLocal: true, isDefinition: true)
!487 = !DIGlobalVariableExpression(var: !488, expr: !DIExpression())
!488 = distinct !DIGlobalVariable(scope: null, file: !2, line: 710, type: !369, isLocal: true, isDefinition: true)
!489 = !DIGlobalVariableExpression(var: !490, expr: !DIExpression())
!490 = distinct !DIGlobalVariable(scope: null, file: !2, line: 725, type: !491, isLocal: true, isDefinition: true)
!491 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 544, elements: !492)
!492 = !{!493}
!493 = !DISubrange(count: 68)
!494 = !DIGlobalVariableExpression(var: !495, expr: !DIExpression())
!495 = distinct !DIGlobalVariable(scope: null, file: !2, line: 732, type: !243, isLocal: true, isDefinition: true)
!496 = !DIGlobalVariableExpression(var: !497, expr: !DIExpression())
!497 = distinct !DIGlobalVariable(scope: null, file: !2, line: 736, type: !498, isLocal: true, isDefinition: true)
!498 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !499)
!499 = !{!500}
!500 = !DISubrange(count: 10)
!501 = !DIGlobalVariableExpression(var: !502, expr: !DIExpression())
!502 = distinct !DIGlobalVariable(scope: null, file: !2, line: 739, type: !503, isLocal: true, isDefinition: true)
!503 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 40, elements: !504)
!504 = !{!505}
!505 = !DISubrange(count: 5)
!506 = !DIGlobalVariableExpression(var: !507, expr: !DIExpression())
!507 = distinct !DIGlobalVariable(scope: null, file: !2, line: 739, type: !26, isLocal: true, isDefinition: true)
!508 = !DIGlobalVariableExpression(var: !509, expr: !DIExpression())
!509 = distinct !DIGlobalVariable(scope: null, file: !2, line: 746, type: !510, isLocal: true, isDefinition: true)
!510 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !504)
!511 = !DIGlobalVariableExpression(var: !512, expr: !DIExpression())
!512 = distinct !DIGlobalVariable(scope: null, file: !2, line: 746, type: !26, isLocal: true, isDefinition: true)
!513 = !DIGlobalVariableExpression(var: !514, expr: !DIExpression())
!514 = distinct !DIGlobalVariable(scope: null, file: !2, line: 749, type: !89, isLocal: true, isDefinition: true)
!515 = !DIGlobalVariableExpression(var: !516, expr: !DIExpression())
!516 = distinct !DIGlobalVariable(scope: null, file: !2, line: 749, type: !89, isLocal: true, isDefinition: true)
!517 = !DIGlobalVariableExpression(var: !518, expr: !DIExpression())
!518 = distinct !DIGlobalVariable(scope: null, file: !2, line: 749, type: !288, isLocal: true, isDefinition: true)
!519 = !DIGlobalVariableExpression(var: !520, expr: !DIExpression())
!520 = distinct !DIGlobalVariable(scope: null, file: !2, line: 752, type: !165, isLocal: true, isDefinition: true)
!521 = !DIGlobalVariableExpression(var: !522, expr: !DIExpression())
!522 = distinct !DIGlobalVariable(scope: null, file: !2, line: 755, type: !139, isLocal: true, isDefinition: true)
!523 = !DIGlobalVariableExpression(var: !524, expr: !DIExpression())
!524 = distinct !DIGlobalVariable(scope: null, file: !2, line: 760, type: !252, isLocal: true, isDefinition: true)
!525 = !DIGlobalVariableExpression(var: !526, expr: !DIExpression())
!526 = distinct !DIGlobalVariable(scope: null, file: !2, line: 764, type: !219, isLocal: true, isDefinition: true)
!527 = !DIGlobalVariableExpression(var: !528, expr: !DIExpression())
!528 = distinct !DIGlobalVariable(scope: null, file: !2, line: 764, type: !314, isLocal: true, isDefinition: true)
!529 = !DIGlobalVariableExpression(var: !530, expr: !DIExpression())
!530 = distinct !DIGlobalVariable(scope: null, file: !2, line: 767, type: !243, isLocal: true, isDefinition: true)
!531 = !DIGlobalVariableExpression(var: !532, expr: !DIExpression())
!532 = distinct !DIGlobalVariable(scope: null, file: !2, line: 767, type: !160, isLocal: true, isDefinition: true)
!533 = !DIGlobalVariableExpression(var: !534, expr: !DIExpression())
!534 = distinct !DIGlobalVariable(scope: null, file: !2, line: 771, type: !219, isLocal: true, isDefinition: true)
!535 = !DIGlobalVariableExpression(var: !536, expr: !DIExpression())
!536 = distinct !DIGlobalVariable(scope: null, file: !2, line: 771, type: !314, isLocal: true, isDefinition: true)
!537 = !DIGlobalVariableExpression(var: !538, expr: !DIExpression())
!538 = distinct !DIGlobalVariable(scope: null, file: !2, line: 774, type: !219, isLocal: true, isDefinition: true)
!539 = !DIGlobalVariableExpression(var: !540, expr: !DIExpression())
!540 = distinct !DIGlobalVariable(scope: null, file: !2, line: 774, type: !314, isLocal: true, isDefinition: true)
!541 = !DIGlobalVariableExpression(var: !542, expr: !DIExpression())
!542 = distinct !DIGlobalVariable(scope: null, file: !2, line: 777, type: !219, isLocal: true, isDefinition: true)
!543 = !DIGlobalVariableExpression(var: !544, expr: !DIExpression())
!544 = distinct !DIGlobalVariable(scope: null, file: !2, line: 777, type: !77, isLocal: true, isDefinition: true)
!545 = !DIGlobalVariableExpression(var: !546, expr: !DIExpression())
!546 = distinct !DIGlobalVariable(scope: null, file: !2, line: 782, type: !300, isLocal: true, isDefinition: true)
!547 = !DIGlobalVariableExpression(var: !548, expr: !DIExpression())
!548 = distinct !DIGlobalVariable(scope: null, file: !2, line: 782, type: !9, isLocal: true, isDefinition: true)
!549 = !DIGlobalVariableExpression(var: !550, expr: !DIExpression())
!550 = distinct !DIGlobalVariable(scope: null, file: !2, line: 783, type: !40, isLocal: true, isDefinition: true)
!551 = !DIGlobalVariableExpression(var: !552, expr: !DIExpression())
!552 = distinct !DIGlobalVariable(scope: null, file: !2, line: 785, type: !553, isLocal: true, isDefinition: true)
!553 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !554)
!554 = !{!555}
!555 = !DISubrange(count: 26)
!556 = !DIGlobalVariableExpression(var: !557, expr: !DIExpression())
!557 = distinct !DIGlobalVariable(scope: null, file: !2, line: 788, type: !558, isLocal: true, isDefinition: true)
!558 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !124)
!559 = !DIGlobalVariableExpression(var: !560, expr: !DIExpression())
!560 = distinct !DIGlobalVariable(scope: null, file: !2, line: 790, type: !55, isLocal: true, isDefinition: true)
!561 = !DIGlobalVariableExpression(var: !562, expr: !DIExpression())
!562 = distinct !DIGlobalVariable(scope: null, file: !2, line: 792, type: !118, isLocal: true, isDefinition: true)
!563 = !DIGlobalVariableExpression(var: !564, expr: !DIExpression())
!564 = distinct !DIGlobalVariable(scope: null, file: !2, line: 793, type: !558, isLocal: true, isDefinition: true)
!565 = !DIGlobalVariableExpression(var: !566, expr: !DIExpression())
!566 = distinct !DIGlobalVariable(scope: null, file: !2, line: 795, type: !9, isLocal: true, isDefinition: true)
!567 = !DIGlobalVariableExpression(var: !568, expr: !DIExpression())
!568 = distinct !DIGlobalVariable(scope: null, file: !2, line: 798, type: !376, isLocal: true, isDefinition: true)
!569 = !DIGlobalVariableExpression(var: !570, expr: !DIExpression())
!570 = distinct !DIGlobalVariable(scope: null, file: !2, line: 800, type: !571, isLocal: true, isDefinition: true)
!571 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 456, elements: !572)
!572 = !{!573}
!573 = !DISubrange(count: 57)
!574 = !DIGlobalVariableExpression(var: !575, expr: !DIExpression())
!575 = distinct !DIGlobalVariable(scope: null, file: !2, line: 804, type: !72, isLocal: true, isDefinition: true)
!576 = !DIGlobalVariableExpression(var: !577, expr: !DIExpression())
!577 = distinct !DIGlobalVariable(scope: null, file: !2, line: 805, type: !558, isLocal: true, isDefinition: true)
!578 = !DIGlobalVariableExpression(var: !579, expr: !DIExpression())
!579 = distinct !DIGlobalVariable(scope: null, file: !2, line: 806, type: !553, isLocal: true, isDefinition: true)
!580 = !DIGlobalVariableExpression(var: !581, expr: !DIExpression())
!581 = distinct !DIGlobalVariable(scope: null, file: !2, line: 814, type: !353, isLocal: true, isDefinition: true)
!582 = !DIGlobalVariableExpression(var: !583, expr: !DIExpression())
!583 = distinct !DIGlobalVariable(scope: null, file: !2, line: 817, type: !455, isLocal: true, isDefinition: true)
!584 = !DIGlobalVariableExpression(var: !585, expr: !DIExpression())
!585 = distinct !DIGlobalVariable(scope: null, file: !2, line: 827, type: !558, isLocal: true, isDefinition: true)
!586 = !DIGlobalVariableExpression(var: !587, expr: !DIExpression())
!587 = distinct !DIGlobalVariable(scope: null, file: !2, line: 842, type: !498, isLocal: true, isDefinition: true)
!588 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !589, line: 27, baseType: !590)
!589 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!590 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !591, line: 45, baseType: !592)
!591 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!592 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!593 = !{i32 7, !"Dwarf Version", i32 5}
!594 = !{i32 2, !"Debug Info Version", i32 3}
!595 = !{i32 1, !"wchar_size", i32 4}
!596 = !{i32 8, !"PIC Level", i32 2}
!597 = !{i32 7, !"PIE Level", i32 2}
!598 = !{i32 7, !"uwtable", i32 2}
!599 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!600 = distinct !DISubprogram(name: "validate_metadata", scope: !2, file: !2, line: 49, type: !601, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !172, retainedNodes: !604)
!601 = !DISubroutineType(types: !602)
!602 = !{null, !603, !603}
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!604 = !{!605, !606, !607, !608, !609, !610, !611, !615, !618, !619, !622, !625, !675, !676}
!605 = !DILocalVariable(name: "parser_path", arg: 1, scope: !600, file: !2, line: 49, type: !603)
!606 = !DILocalVariable(name: "metadata_path", arg: 2, scope: !600, file: !2, line: 49, type: !603)
!607 = !DILocalVariable(name: "ret", scope: !600, file: !2, line: 51, type: !176)
!608 = !DILocalVariable(name: "parser_output_path", scope: !600, file: !2, line: 52, type: !553)
!609 = !DILocalVariable(name: "parser_output_fd", scope: !600, file: !2, line: 53, type: !176)
!610 = !DILocalVariable(name: "metadata_fd", scope: !600, file: !2, line: 53, type: !176)
!611 = !DILocalVariable(name: "pid", scope: !600, file: !2, line: 71, type: !612)
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !613, line: 260, baseType: !614)
!613 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!614 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !591, line: 154, baseType: !176)
!615 = !DILocalVariable(name: "status", scope: !616, file: !2, line: 73, type: !176)
!616 = distinct !DILexicalBlock(scope: !617, file: !2, line: 72, column: 11)
!617 = distinct !DILexicalBlock(scope: !600, file: !2, line: 72, column: 6)
!618 = !DILabel(scope: !600, name: "result", file: !2, line: 100)
!619 = !DILocalVariable(name: "line", scope: !620, file: !2, line: 104, type: !603)
!620 = distinct !DILexicalBlock(scope: !621, file: !2, line: 103, column: 56)
!621 = distinct !DILexicalBlock(scope: !600, file: !2, line: 103, column: 6)
!622 = !DILocalVariable(name: "len", scope: !620, file: !2, line: 105, type: !623)
!623 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !624, line: 70, baseType: !592)
!624 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!625 = !DILocalVariable(name: "metadata_fp", scope: !620, file: !2, line: 106, type: !626)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !628, line: 7, baseType: !629)
!628 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !630, line: 49, size: 1728, elements: !631)
!630 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!631 = !{!632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !647, !649, !650, !651, !654, !656, !658, !659, !662, !664, !667, !670, !671, !672, !673, !674}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !629, file: !630, line: 51, baseType: !176, size: 32)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !629, file: !630, line: 54, baseType: !603, size: 64, offset: 64)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !629, file: !630, line: 55, baseType: !603, size: 64, offset: 128)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !629, file: !630, line: 56, baseType: !603, size: 64, offset: 192)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !629, file: !630, line: 57, baseType: !603, size: 64, offset: 256)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !629, file: !630, line: 58, baseType: !603, size: 64, offset: 320)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !629, file: !630, line: 59, baseType: !603, size: 64, offset: 384)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !629, file: !630, line: 60, baseType: !603, size: 64, offset: 448)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !629, file: !630, line: 61, baseType: !603, size: 64, offset: 512)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !629, file: !630, line: 64, baseType: !603, size: 64, offset: 576)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !629, file: !630, line: 65, baseType: !603, size: 64, offset: 640)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !629, file: !630, line: 66, baseType: !603, size: 64, offset: 704)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !629, file: !630, line: 68, baseType: !645, size: 64, offset: 768)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !630, line: 36, flags: DIFlagFwdDecl)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !629, file: !630, line: 70, baseType: !648, size: 64, offset: 832)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !629, file: !630, line: 72, baseType: !176, size: 32, offset: 896)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !629, file: !630, line: 73, baseType: !176, size: 32, offset: 928)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !629, file: !630, line: 74, baseType: !652, size: 64, offset: 960)
!652 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !591, line: 152, baseType: !653)
!653 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !629, file: !630, line: 77, baseType: !655, size: 16, offset: 1024)
!655 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !629, file: !630, line: 78, baseType: !657, size: 8, offset: 1040)
!657 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !629, file: !630, line: 79, baseType: !266, size: 8, offset: 1048)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !629, file: !630, line: 81, baseType: !660, size: 64, offset: 1088)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !630, line: 43, baseType: null)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !629, file: !630, line: 89, baseType: !663, size: 64, offset: 1152)
!663 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !591, line: 153, baseType: !653)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !629, file: !630, line: 91, baseType: !665, size: 64, offset: 1216)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !630, line: 37, flags: DIFlagFwdDecl)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !629, file: !630, line: 92, baseType: !668, size: 64, offset: 1280)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !630, line: 38, flags: DIFlagFwdDecl)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !629, file: !630, line: 93, baseType: !648, size: 64, offset: 1344)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !629, file: !630, line: 94, baseType: !204, size: 64, offset: 1408)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !629, file: !630, line: 95, baseType: !623, size: 64, offset: 1472)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !629, file: !630, line: 96, baseType: !176, size: 32, offset: 1536)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !629, file: !630, line: 98, baseType: !558, size: 160, offset: 1568)
!675 = !DILocalVariable(name: "parser_output_fp", scope: !620, file: !2, line: 106, type: !626)
!676 = !DILabel(scope: !620, name: "close_fp", file: !2, line: 140)
!677 = !{!678, !678, i64 0}
!678 = !{!"any pointer", !679, i64 0}
!679 = !{!"omnipotent char", !680, i64 0}
!680 = !{!"Simple C/C++ TBAA"}
!681 = !DILocation(line: 49, column: 30, scope: !600)
!682 = !DILocation(line: 49, column: 49, scope: !600)
!683 = !DILocation(line: 51, column: 2, scope: !600)
!684 = !DILocation(line: 51, column: 6, scope: !600)
!685 = !{!686, !686, i64 0}
!686 = !{!"int", !679, i64 0}
!687 = !DILocation(line: 52, column: 2, scope: !600)
!688 = !DILocation(line: 52, column: 7, scope: !600)
!689 = !DILocation(line: 53, column: 2, scope: !600)
!690 = !DILocation(line: 53, column: 6, scope: !600)
!691 = !DILocation(line: 53, column: 29, scope: !600)
!692 = !DILocation(line: 55, column: 7, scope: !693)
!693 = distinct !DILexicalBlock(scope: !600, file: !2, line: 55, column: 6)
!694 = !DILocation(line: 55, column: 6, scope: !600)
!695 = !DILocation(line: 56, column: 7, scope: !696)
!696 = distinct !DILexicalBlock(scope: !693, file: !2, line: 55, column: 22)
!697 = !DILocation(line: 57, column: 3, scope: !696)
!698 = !DILocation(line: 60, column: 29, scope: !600)
!699 = !DILocation(line: 60, column: 21, scope: !600)
!700 = !DILocation(line: 60, column: 19, scope: !600)
!701 = !DILocation(line: 61, column: 21, scope: !600)
!702 = !DILocation(line: 61, column: 16, scope: !600)
!703 = !DILocation(line: 61, column: 14, scope: !600)
!704 = !DILocation(line: 63, column: 9, scope: !600)
!705 = !DILocation(line: 63, column: 2, scope: !600)
!706 = !DILocation(line: 65, column: 6, scope: !707)
!707 = distinct !DILexicalBlock(scope: !600, file: !2, line: 65, column: 6)
!708 = !DILocation(line: 65, column: 23, scope: !707)
!709 = !DILocation(line: 65, column: 29, scope: !707)
!710 = !DILocation(line: 65, column: 32, scope: !707)
!711 = !DILocation(line: 65, column: 44, scope: !707)
!712 = !DILocation(line: 65, column: 6, scope: !600)
!713 = !DILocation(line: 66, column: 3, scope: !714)
!714 = distinct !DILexicalBlock(scope: !707, file: !2, line: 65, column: 51)
!715 = !DILocation(line: 67, column: 7, scope: !714)
!716 = !DILocation(line: 68, column: 3, scope: !714)
!717 = !DILocation(line: 71, column: 8, scope: !600)
!718 = !DILocation(line: 71, column: 14, scope: !600)
!719 = !DILocation(line: 72, column: 6, scope: !617)
!720 = !DILocation(line: 72, column: 6, scope: !600)
!721 = !DILocation(line: 73, column: 3, scope: !616)
!722 = !DILocation(line: 73, column: 7, scope: !616)
!723 = !DILocation(line: 74, column: 11, scope: !616)
!724 = !DILocation(line: 74, column: 3, scope: !616)
!725 = !DILocation(line: 75, column: 9, scope: !616)
!726 = !DILocation(line: 75, column: 29, scope: !616)
!727 = !DILocation(line: 75, column: 7, scope: !616)
!728 = !DILocation(line: 76, column: 2, scope: !617)
!729 = !DILocation(line: 76, column: 2, scope: !616)
!730 = !DILocation(line: 78, column: 14, scope: !731)
!731 = distinct !DILexicalBlock(scope: !617, file: !2, line: 76, column: 9)
!732 = !DILocation(line: 78, column: 9, scope: !731)
!733 = !DILocation(line: 78, column: 7, scope: !731)
!734 = !DILocation(line: 79, column: 7, scope: !735)
!735 = distinct !DILexicalBlock(scope: !731, file: !2, line: 79, column: 7)
!736 = !DILocation(line: 79, column: 11, scope: !735)
!737 = !DILocation(line: 79, column: 7, scope: !731)
!738 = !DILocation(line: 80, column: 4, scope: !739)
!739 = distinct !DILexicalBlock(scope: !735, file: !2, line: 79, column: 16)
!740 = !DILocation(line: 81, column: 4, scope: !739)
!741 = !DILocation(line: 84, column: 14, scope: !731)
!742 = !DILocation(line: 84, column: 9, scope: !731)
!743 = !DILocation(line: 84, column: 7, scope: !731)
!744 = !DILocation(line: 85, column: 7, scope: !745)
!745 = distinct !DILexicalBlock(scope: !731, file: !2, line: 85, column: 7)
!746 = !DILocation(line: 85, column: 11, scope: !745)
!747 = !DILocation(line: 85, column: 7, scope: !731)
!748 = !DILocation(line: 86, column: 4, scope: !749)
!749 = distinct !DILexicalBlock(scope: !745, file: !2, line: 85, column: 16)
!750 = !DILocation(line: 87, column: 4, scope: !749)
!751 = !DILocation(line: 90, column: 14, scope: !731)
!752 = !DILocation(line: 90, column: 9, scope: !731)
!753 = !DILocation(line: 90, column: 7, scope: !731)
!754 = !DILocation(line: 91, column: 7, scope: !755)
!755 = distinct !DILexicalBlock(scope: !731, file: !2, line: 91, column: 7)
!756 = !DILocation(line: 91, column: 11, scope: !755)
!757 = !DILocation(line: 91, column: 7, scope: !731)
!758 = !DILocation(line: 92, column: 4, scope: !759)
!759 = distinct !DILexicalBlock(scope: !755, file: !2, line: 91, column: 16)
!760 = !DILocation(line: 93, column: 4, scope: !759)
!761 = !DILocation(line: 96, column: 9, scope: !731)
!762 = !DILocation(line: 96, column: 3, scope: !731)
!763 = !DILocation(line: 97, column: 3, scope: !731)
!764 = !DILocation(line: 98, column: 3, scope: !731)
!765 = !DILocation(line: 100, column: 1, scope: !600)
!766 = !DILocation(line: 101, column: 2, scope: !600)
!767 = !DILocation(line: 103, column: 6, scope: !621)
!768 = !DILocation(line: 103, column: 10, scope: !621)
!769 = !DILocation(line: 103, column: 13, scope: !621)
!770 = !DILocation(line: 103, column: 25, scope: !621)
!771 = !DILocation(line: 103, column: 30, scope: !621)
!772 = !DILocation(line: 103, column: 33, scope: !621)
!773 = !DILocation(line: 103, column: 50, scope: !621)
!774 = !DILocation(line: 103, column: 6, scope: !600)
!775 = !DILocation(line: 104, column: 3, scope: !620)
!776 = !DILocation(line: 104, column: 9, scope: !620)
!777 = !DILocation(line: 105, column: 3, scope: !620)
!778 = !DILocation(line: 105, column: 10, scope: !620)
!779 = !{!780, !780, i64 0}
!780 = !{!"long", !679, i64 0}
!781 = !DILocation(line: 106, column: 3, scope: !620)
!782 = !DILocation(line: 106, column: 9, scope: !620)
!783 = !DILocation(line: 106, column: 30, scope: !620)
!784 = !DILocation(line: 108, column: 24, scope: !620)
!785 = !DILocation(line: 108, column: 17, scope: !620)
!786 = !DILocation(line: 108, column: 15, scope: !620)
!787 = !DILocation(line: 109, column: 8, scope: !788)
!788 = distinct !DILexicalBlock(scope: !620, file: !2, line: 109, column: 7)
!789 = !DILocation(line: 109, column: 7, scope: !620)
!790 = !DILocation(line: 110, column: 4, scope: !791)
!791 = distinct !DILexicalBlock(scope: !788, file: !2, line: 109, column: 21)
!792 = !DILocation(line: 111, column: 4, scope: !791)
!793 = !DILocation(line: 113, column: 15, scope: !620)
!794 = !DILocation(line: 115, column: 29, scope: !620)
!795 = !DILocation(line: 115, column: 22, scope: !620)
!796 = !DILocation(line: 115, column: 20, scope: !620)
!797 = !DILocation(line: 116, column: 8, scope: !798)
!798 = distinct !DILexicalBlock(scope: !620, file: !2, line: 116, column: 7)
!799 = !DILocation(line: 116, column: 7, scope: !620)
!800 = !DILocation(line: 117, column: 4, scope: !801)
!801 = distinct !DILexicalBlock(scope: !798, file: !2, line: 116, column: 26)
!802 = !DILocation(line: 118, column: 4, scope: !801)
!803 = !DILocation(line: 120, column: 20, scope: !620)
!804 = !DILocation(line: 122, column: 17, scope: !620)
!805 = !DILocation(line: 122, column: 10, scope: !620)
!806 = !DILocation(line: 122, column: 8, scope: !620)
!807 = !DILocation(line: 123, column: 8, scope: !808)
!808 = distinct !DILexicalBlock(scope: !620, file: !2, line: 123, column: 7)
!809 = !DILocation(line: 123, column: 7, scope: !620)
!810 = !DILocation(line: 124, column: 4, scope: !811)
!811 = distinct !DILexicalBlock(scope: !808, file: !2, line: 123, column: 14)
!812 = !DILocation(line: 125, column: 3, scope: !811)
!813 = !DILocation(line: 127, column: 10, scope: !620)
!814 = !DILocation(line: 127, column: 3, scope: !620)
!815 = !DILocation(line: 130, column: 3, scope: !620)
!816 = !DILocation(line: 130, column: 31, scope: !620)
!817 = !DILocation(line: 130, column: 10, scope: !620)
!818 = !DILocation(line: 130, column: 44, scope: !620)
!819 = !DILocation(line: 131, column: 15, scope: !820)
!820 = distinct !DILexicalBlock(scope: !620, file: !2, line: 130, column: 49)
!821 = !DILocation(line: 131, column: 4, scope: !820)
!822 = distinct !{!822, !815, !823, !824}
!823 = !DILocation(line: 132, column: 3, scope: !620)
!824 = !{!"llvm.loop.mustprogress"}
!825 = !DILocation(line: 134, column: 10, scope: !620)
!826 = !DILocation(line: 134, column: 3, scope: !620)
!827 = !DILocation(line: 135, column: 3, scope: !620)
!828 = !DILocation(line: 135, column: 31, scope: !620)
!829 = !DILocation(line: 135, column: 10, scope: !620)
!830 = !DILocation(line: 135, column: 49, scope: !620)
!831 = !DILocation(line: 136, column: 15, scope: !832)
!832 = distinct !DILexicalBlock(scope: !620, file: !2, line: 135, column: 54)
!833 = !DILocation(line: 136, column: 4, scope: !832)
!834 = distinct !{!834, !827, !835, !824}
!835 = !DILocation(line: 137, column: 3, scope: !620)
!836 = !DILocation(line: 139, column: 8, scope: !620)
!837 = !DILocation(line: 139, column: 3, scope: !620)
!838 = !DILocation(line: 140, column: 1, scope: !620)
!839 = !DILocation(line: 141, column: 7, scope: !840)
!840 = distinct !DILexicalBlock(scope: !620, file: !2, line: 141, column: 7)
!841 = !DILocation(line: 141, column: 7, scope: !620)
!842 = !DILocation(line: 142, column: 15, scope: !843)
!843 = distinct !DILexicalBlock(scope: !844, file: !2, line: 142, column: 8)
!844 = distinct !DILexicalBlock(scope: !840, file: !2, line: 141, column: 20)
!845 = !DILocation(line: 142, column: 8, scope: !843)
!846 = !DILocation(line: 142, column: 8, scope: !844)
!847 = !DILocation(line: 143, column: 5, scope: !848)
!848 = distinct !DILexicalBlock(scope: !843, file: !2, line: 142, column: 29)
!849 = !DILocation(line: 144, column: 4, scope: !848)
!850 = !DILocation(line: 145, column: 3, scope: !844)
!851 = !DILocation(line: 146, column: 7, scope: !852)
!852 = distinct !DILexicalBlock(scope: !620, file: !2, line: 146, column: 7)
!853 = !DILocation(line: 146, column: 7, scope: !620)
!854 = !DILocation(line: 147, column: 15, scope: !855)
!855 = distinct !DILexicalBlock(scope: !856, file: !2, line: 147, column: 8)
!856 = distinct !DILexicalBlock(scope: !852, file: !2, line: 146, column: 25)
!857 = !DILocation(line: 147, column: 8, scope: !855)
!858 = !DILocation(line: 147, column: 8, scope: !856)
!859 = !DILocation(line: 148, column: 5, scope: !860)
!860 = distinct !DILexicalBlock(scope: !855, file: !2, line: 147, column: 34)
!861 = !DILocation(line: 149, column: 4, scope: !860)
!862 = !DILocation(line: 150, column: 3, scope: !856)
!863 = !DILocation(line: 151, column: 2, scope: !621)
!864 = !DILocation(line: 151, column: 2, scope: !620)
!865 = !DILocation(line: 153, column: 6, scope: !866)
!866 = distinct !DILexicalBlock(scope: !600, file: !2, line: 153, column: 6)
!867 = !DILocation(line: 153, column: 23, scope: !866)
!868 = !DILocation(line: 153, column: 6, scope: !600)
!869 = !DILocation(line: 154, column: 13, scope: !870)
!870 = distinct !DILexicalBlock(scope: !871, file: !2, line: 154, column: 7)
!871 = distinct !DILexicalBlock(scope: !866, file: !2, line: 153, column: 29)
!872 = !DILocation(line: 154, column: 7, scope: !870)
!873 = !DILocation(line: 154, column: 7, scope: !871)
!874 = !DILocation(line: 155, column: 4, scope: !875)
!875 = distinct !DILexicalBlock(scope: !870, file: !2, line: 154, column: 32)
!876 = !DILocation(line: 156, column: 3, scope: !875)
!877 = !DILocation(line: 157, column: 2, scope: !871)
!878 = !DILocation(line: 158, column: 6, scope: !879)
!879 = distinct !DILexicalBlock(scope: !600, file: !2, line: 158, column: 6)
!880 = !DILocation(line: 158, column: 18, scope: !879)
!881 = !DILocation(line: 158, column: 6, scope: !600)
!882 = !DILocation(line: 159, column: 13, scope: !883)
!883 = distinct !DILexicalBlock(scope: !884, file: !2, line: 159, column: 7)
!884 = distinct !DILexicalBlock(scope: !879, file: !2, line: 158, column: 24)
!885 = !DILocation(line: 159, column: 7, scope: !883)
!886 = !DILocation(line: 159, column: 7, scope: !884)
!887 = !DILocation(line: 160, column: 4, scope: !888)
!888 = distinct !DILexicalBlock(scope: !883, file: !2, line: 159, column: 27)
!889 = !DILocation(line: 161, column: 3, scope: !888)
!890 = !DILocation(line: 162, column: 2, scope: !884)
!891 = !DILocation(line: 163, column: 1, scope: !600)
!892 = !DISubprogram(name: "mkstemp", scope: !893, file: !893, line: 695, type: !894, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!893 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!894 = !DISubroutineType(types: !895)
!895 = !{!176, !603}
!896 = !DISubprogram(name: "open", scope: !897, file: !897, line: 181, type: !898, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!897 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!898 = !DISubroutineType(types: !899)
!899 = !{!176, !900, !176, null}
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!901 = !DISubprogram(name: "unlink", scope: !613, file: !613, line: 858, type: !902, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!902 = !DISubroutineType(types: !903)
!903 = !{!176, !900}
!904 = !DISubprogram(name: "diag", scope: !905, file: !905, line: 82, type: !906, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!905 = !DIFile(filename: "../../tests/utils/tap/tap.h", directory: "/local-ssd/babeltrace-ltsh36prkey7v3qgu5igo3lgbpgjtjyj-build/aidengro/spack-stage-babeltrace-1.2.4-ltsh36prkey7v3qgu5igo3lgbpgjtjyj/spack-src/tests/lib", checksumkind: CSK_MD5, checksum: "ada85754a4eec470b6c46e54ec48a488")
!906 = !DISubroutineType(types: !907)
!907 = !{!185, !603, null}
!908 = !DISubprogram(name: "fork", scope: !613, file: !613, line: 778, type: !909, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!909 = !DISubroutineType(types: !910)
!910 = !{!614}
!911 = !DISubprogram(name: "waitpid", scope: !912, file: !912, line: 111, type: !913, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!912 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/wait.h", directory: "", checksumkind: CSK_MD5, checksum: "f653fe63e16922d44e1c6e15caa2acb6")
!913 = !DISubroutineType(types: !914)
!914 = !{!614, !614, !915, !176}
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!916 = !DISubprogram(name: "dup2", scope: !613, file: !613, line: 555, type: !917, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!917 = !DISubroutineType(types: !918)
!918 = !{!176, !176, !176}
!919 = !DISubprogram(name: "perror", scope: !920, file: !920, line: 804, type: !921, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!920 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!921 = !DISubroutineType(types: !922)
!922 = !{null, !900}
!923 = !DISubprogram(name: "execl", scope: !613, file: !613, line: 594, type: !924, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!924 = !DISubroutineType(types: !925)
!925 = !{!176, !900, !900, null}
!926 = !DISubprogram(name: "exit", scope: !893, file: !893, line: 624, type: !927, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!927 = !DISubroutineType(types: !928)
!928 = !{null, !176}
!929 = !DISubprogram(name: "_gen_result", scope: !905, file: !905, line: 76, type: !930, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!930 = !DISubroutineType(types: !931)
!931 = !{!185, !176, !900, !603, !185, !603, null}
!932 = !DISubprogram(name: "fdopen", scope: !920, file: !920, line: 293, type: !933, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!933 = !DISubroutineType(types: !934)
!934 = !{!626, !176, !900}
!935 = !DISubprogram(name: "malloc", scope: !893, file: !893, line: 540, type: !936, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!936 = !DISubroutineType(types: !937)
!937 = !{!204, !623}
!938 = !DISubprogram(name: "rewind", scope: !920, file: !920, line: 723, type: !939, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!939 = !DISubroutineType(types: !940)
!940 = !{null, !626}
!941 = distinct !DISubprogram(name: "getline", scope: !942, file: !942, line: 118, type: !943, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !172, retainedNodes: !948)
!942 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!943 = !DISubroutineType(types: !944)
!944 = !{!945, !946, !947, !626}
!945 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !591, line: 194, baseType: !653)
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!948 = !{!949, !950, !951}
!949 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !941, file: !942, line: 118, type: !946)
!950 = !DILocalVariable(name: "__n", arg: 2, scope: !941, file: !942, line: 118, type: !947)
!951 = !DILocalVariable(name: "__stream", arg: 3, scope: !941, file: !942, line: 118, type: !626)
!952 = !DILocation(line: 118, column: 17, scope: !941)
!953 = !DILocation(line: 118, column: 36, scope: !941)
!954 = !DILocation(line: 118, column: 47, scope: !941)
!955 = !DILocation(line: 120, column: 22, scope: !941)
!956 = !DILocation(line: 120, column: 33, scope: !941)
!957 = !DILocation(line: 120, column: 44, scope: !941)
!958 = !DILocation(line: 120, column: 10, scope: !941)
!959 = !DILocation(line: 120, column: 3, scope: !941)
!960 = !DISubprogram(name: "free", scope: !893, file: !893, line: 555, type: !961, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!961 = !DISubroutineType(types: !962)
!962 = !{null, !204}
!963 = !DISubprogram(name: "fclose", scope: !920, file: !920, line: 178, type: !964, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!964 = !DISubroutineType(types: !965)
!965 = !{!176, !626}
!966 = !DISubprogram(name: "close", scope: !613, file: !613, line: 358, type: !967, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!967 = !DISubroutineType(types: !968)
!968 = !{!176, !176}
!969 = distinct !DISubprogram(name: "validate_trace", scope: !2, file: !2, line: 165, type: !601, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !172, retainedNodes: !970)
!970 = !{!971, !972, !973, !974, !975, !976, !977, !980, !981, !984, !985, !986}
!971 = !DILocalVariable(name: "parser_path", arg: 1, scope: !969, file: !2, line: 165, type: !603)
!972 = !DILocalVariable(name: "trace_path", arg: 2, scope: !969, file: !2, line: 165, type: !603)
!973 = !DILocalVariable(name: "ret", scope: !969, file: !2, line: 167, type: !176)
!974 = !DILocalVariable(name: "babeltrace_output_path", scope: !969, file: !2, line: 168, type: !330)
!975 = !DILocalVariable(name: "babeltrace_output_fd", scope: !969, file: !2, line: 169, type: !176)
!976 = !DILocalVariable(name: "pid", scope: !969, file: !2, line: 185, type: !612)
!977 = !DILocalVariable(name: "status", scope: !978, file: !2, line: 187, type: !176)
!978 = distinct !DILexicalBlock(scope: !979, file: !2, line: 186, column: 11)
!979 = distinct !DILexicalBlock(scope: !969, file: !2, line: 186, column: 6)
!980 = !DILabel(scope: !969, name: "result", file: !2, line: 207)
!981 = !DILocalVariable(name: "line", scope: !982, file: !2, line: 211, type: !603)
!982 = distinct !DILexicalBlock(scope: !983, file: !2, line: 210, column: 40)
!983 = distinct !DILexicalBlock(scope: !969, file: !2, line: 210, column: 6)
!984 = !DILocalVariable(name: "len", scope: !982, file: !2, line: 212, type: !623)
!985 = !DILocalVariable(name: "babeltrace_output_fp", scope: !982, file: !2, line: 213, type: !626)
!986 = !DILabel(scope: !982, name: "close_fp", file: !2, line: 232)
!987 = !DILocation(line: 165, column: 27, scope: !969)
!988 = !DILocation(line: 165, column: 46, scope: !969)
!989 = !DILocation(line: 167, column: 2, scope: !969)
!990 = !DILocation(line: 167, column: 6, scope: !969)
!991 = !DILocation(line: 168, column: 2, scope: !969)
!992 = !DILocation(line: 168, column: 7, scope: !969)
!993 = !DILocation(line: 169, column: 2, scope: !969)
!994 = !DILocation(line: 169, column: 6, scope: !969)
!995 = !DILocation(line: 171, column: 7, scope: !996)
!996 = distinct !DILexicalBlock(scope: !969, file: !2, line: 171, column: 6)
!997 = !DILocation(line: 171, column: 6, scope: !969)
!998 = !DILocation(line: 172, column: 7, scope: !999)
!999 = distinct !DILexicalBlock(scope: !996, file: !2, line: 171, column: 19)
!1000 = !DILocation(line: 173, column: 3, scope: !999)
!1001 = !DILocation(line: 176, column: 33, scope: !969)
!1002 = !DILocation(line: 176, column: 25, scope: !969)
!1003 = !DILocation(line: 176, column: 23, scope: !969)
!1004 = !DILocation(line: 177, column: 9, scope: !969)
!1005 = !DILocation(line: 177, column: 2, scope: !969)
!1006 = !DILocation(line: 179, column: 6, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !969, file: !2, line: 179, column: 6)
!1008 = !DILocation(line: 179, column: 27, scope: !1007)
!1009 = !DILocation(line: 179, column: 6, scope: !969)
!1010 = !DILocation(line: 180, column: 3, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !1007, file: !2, line: 179, column: 34)
!1012 = !DILocation(line: 181, column: 7, scope: !1011)
!1013 = !DILocation(line: 182, column: 3, scope: !1011)
!1014 = !DILocation(line: 185, column: 8, scope: !969)
!1015 = !DILocation(line: 185, column: 14, scope: !969)
!1016 = !DILocation(line: 186, column: 6, scope: !979)
!1017 = !DILocation(line: 186, column: 6, scope: !969)
!1018 = !DILocation(line: 187, column: 3, scope: !978)
!1019 = !DILocation(line: 187, column: 7, scope: !978)
!1020 = !DILocation(line: 188, column: 11, scope: !978)
!1021 = !DILocation(line: 188, column: 3, scope: !978)
!1022 = !DILocation(line: 189, column: 9, scope: !978)
!1023 = !DILocation(line: 189, column: 29, scope: !978)
!1024 = !DILocation(line: 189, column: 7, scope: !978)
!1025 = !DILocation(line: 190, column: 2, scope: !979)
!1026 = !DILocation(line: 190, column: 2, scope: !978)
!1027 = !DILocation(line: 191, column: 14, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !979, file: !2, line: 190, column: 9)
!1029 = !DILocation(line: 191, column: 9, scope: !1028)
!1030 = !DILocation(line: 191, column: 7, scope: !1028)
!1031 = !DILocation(line: 192, column: 7, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1028, file: !2, line: 192, column: 7)
!1033 = !DILocation(line: 192, column: 11, scope: !1032)
!1034 = !DILocation(line: 192, column: 7, scope: !1028)
!1035 = !DILocation(line: 193, column: 4, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !1032, file: !2, line: 192, column: 16)
!1037 = !DILocation(line: 194, column: 4, scope: !1036)
!1038 = !DILocation(line: 197, column: 14, scope: !1028)
!1039 = !DILocation(line: 197, column: 9, scope: !1028)
!1040 = !DILocation(line: 197, column: 7, scope: !1028)
!1041 = !DILocation(line: 198, column: 7, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1028, file: !2, line: 198, column: 7)
!1043 = !DILocation(line: 198, column: 11, scope: !1042)
!1044 = !DILocation(line: 198, column: 7, scope: !1028)
!1045 = !DILocation(line: 199, column: 4, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !1042, file: !2, line: 198, column: 16)
!1047 = !DILocation(line: 200, column: 4, scope: !1046)
!1048 = !DILocation(line: 203, column: 9, scope: !1028)
!1049 = !DILocation(line: 203, column: 36, scope: !1028)
!1050 = !DILocation(line: 203, column: 3, scope: !1028)
!1051 = !DILocation(line: 204, column: 3, scope: !1028)
!1052 = !DILocation(line: 205, column: 3, scope: !1028)
!1053 = !DILocation(line: 207, column: 1, scope: !969)
!1054 = !DILocation(line: 208, column: 2, scope: !969)
!1055 = !DILocation(line: 210, column: 6, scope: !983)
!1056 = !DILocation(line: 210, column: 10, scope: !983)
!1057 = !DILocation(line: 210, column: 13, scope: !983)
!1058 = !DILocation(line: 210, column: 34, scope: !983)
!1059 = !DILocation(line: 210, column: 6, scope: !969)
!1060 = !DILocation(line: 211, column: 3, scope: !982)
!1061 = !DILocation(line: 211, column: 9, scope: !982)
!1062 = !DILocation(line: 212, column: 3, scope: !982)
!1063 = !DILocation(line: 212, column: 10, scope: !982)
!1064 = !DILocation(line: 213, column: 3, scope: !982)
!1065 = !DILocation(line: 213, column: 9, scope: !982)
!1066 = !DILocation(line: 215, column: 33, scope: !982)
!1067 = !DILocation(line: 215, column: 26, scope: !982)
!1068 = !DILocation(line: 215, column: 24, scope: !982)
!1069 = !DILocation(line: 216, column: 8, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !982, file: !2, line: 216, column: 7)
!1071 = !DILocation(line: 216, column: 7, scope: !982)
!1072 = !DILocation(line: 217, column: 4, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1070, file: !2, line: 216, column: 30)
!1074 = !DILocation(line: 218, column: 4, scope: !1073)
!1075 = !DILocation(line: 220, column: 24, scope: !982)
!1076 = !DILocation(line: 222, column: 17, scope: !982)
!1077 = !DILocation(line: 222, column: 10, scope: !982)
!1078 = !DILocation(line: 222, column: 8, scope: !982)
!1079 = !DILocation(line: 223, column: 8, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !982, file: !2, line: 223, column: 7)
!1081 = !DILocation(line: 223, column: 7, scope: !982)
!1082 = !DILocation(line: 224, column: 4, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1080, file: !2, line: 223, column: 14)
!1084 = !DILocation(line: 225, column: 3, scope: !1083)
!1085 = !DILocation(line: 226, column: 10, scope: !982)
!1086 = !DILocation(line: 226, column: 3, scope: !982)
!1087 = !DILocation(line: 227, column: 3, scope: !982)
!1088 = !DILocation(line: 227, column: 31, scope: !982)
!1089 = !DILocation(line: 227, column: 10, scope: !982)
!1090 = !DILocation(line: 227, column: 53, scope: !982)
!1091 = !DILocation(line: 228, column: 15, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !982, file: !2, line: 227, column: 58)
!1093 = !DILocation(line: 228, column: 4, scope: !1092)
!1094 = distinct !{!1094, !1087, !1095, !824}
!1095 = !DILocation(line: 229, column: 3, scope: !982)
!1096 = !DILocation(line: 231, column: 8, scope: !982)
!1097 = !DILocation(line: 231, column: 3, scope: !982)
!1098 = !DILocation(line: 232, column: 1, scope: !982)
!1099 = !DILocation(line: 233, column: 7, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !982, file: !2, line: 233, column: 7)
!1101 = !DILocation(line: 233, column: 7, scope: !982)
!1102 = !DILocation(line: 234, column: 15, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1104, file: !2, line: 234, column: 8)
!1104 = distinct !DILexicalBlock(scope: !1100, file: !2, line: 233, column: 29)
!1105 = !DILocation(line: 234, column: 8, scope: !1103)
!1106 = !DILocation(line: 234, column: 8, scope: !1104)
!1107 = !DILocation(line: 235, column: 5, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1103, file: !2, line: 234, column: 38)
!1109 = !DILocation(line: 236, column: 4, scope: !1108)
!1110 = !DILocation(line: 237, column: 3, scope: !1104)
!1111 = !DILocation(line: 238, column: 2, scope: !983)
!1112 = !DILocation(line: 238, column: 2, scope: !982)
!1113 = !DILocation(line: 240, column: 6, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !969, file: !2, line: 240, column: 6)
!1115 = !DILocation(line: 240, column: 27, scope: !1114)
!1116 = !DILocation(line: 240, column: 6, scope: !969)
!1117 = !DILocation(line: 241, column: 13, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !1119, file: !2, line: 241, column: 7)
!1119 = distinct !DILexicalBlock(scope: !1114, file: !2, line: 240, column: 33)
!1120 = !DILocation(line: 241, column: 7, scope: !1118)
!1121 = !DILocation(line: 241, column: 7, scope: !1119)
!1122 = !DILocation(line: 242, column: 4, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1118, file: !2, line: 241, column: 36)
!1124 = !DILocation(line: 243, column: 3, scope: !1123)
!1125 = !DILocation(line: 244, column: 2, scope: !1119)
!1126 = !DILocation(line: 245, column: 1, scope: !969)
!1127 = distinct !DISubprogram(name: "append_simple_event", scope: !2, file: !2, line: 247, type: !1128, scopeLine: 249, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !172, retainedNodes: !1137)
!1128 = !DISubroutineType(types: !1129)
!1129 = !{null, !1130, !1133, !1135}
!1130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1131, size: 64)
!1131 = !DICompositeType(tag: DW_TAG_structure_type, name: "bt_ctf_stream_class", file: !1132, line: 39, flags: DIFlagFwdDecl)
!1132 = !DIFile(filename: "../../include/babeltrace/ctf-writer/writer.h", directory: "/local-ssd/babeltrace-ltsh36prkey7v3qgu5igo3lgbpgjtjyj-build/aidengro/spack-stage-babeltrace-1.2.4-ltsh36prkey7v3qgu5igo3lgbpgjtjyj/spack-src/tests/lib", checksumkind: CSK_MD5, checksum: "fe2cd66b565df7d51d8ab483724d0e27")
!1133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1134, size: 64)
!1134 = !DICompositeType(tag: DW_TAG_structure_type, name: "bt_ctf_stream", file: !1132, line: 38, flags: DIFlagFwdDecl)
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1136 = !DICompositeType(tag: DW_TAG_structure_type, name: "bt_ctf_clock", file: !1132, line: 40, flags: DIFlagFwdDecl)
!1137 = !{!1138, !1139, !1140, !1141, !1145, !1149, !1150, !1151, !1154, !1157, !1158, !1159}
!1138 = !DILocalVariable(name: "stream_class", arg: 1, scope: !1127, file: !2, line: 247, type: !1130)
!1139 = !DILocalVariable(name: "stream", arg: 2, scope: !1127, file: !2, line: 248, type: !1133)
!1140 = !DILocalVariable(name: "clock", arg: 3, scope: !1127, file: !2, line: 248, type: !1135)
!1141 = !DILocalVariable(name: "simple_event_class", scope: !1127, file: !2, line: 251, type: !1142)
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1143, size: 64)
!1143 = !DICompositeType(tag: DW_TAG_structure_type, name: "bt_ctf_event_class", file: !1144, line: 38, flags: DIFlagFwdDecl)
!1144 = !DIFile(filename: "../../include/babeltrace/ctf-writer/stream.h", directory: "/local-ssd/babeltrace-ltsh36prkey7v3qgu5igo3lgbpgjtjyj-build/aidengro/spack-stage-babeltrace-1.2.4-ltsh36prkey7v3qgu5igo3lgbpgjtjyj/spack-src/tests/lib", checksumkind: CSK_MD5, checksum: "51a6c375ad84c79699c54176e9b2415b")
!1145 = !DILocalVariable(name: "uint_12_type", scope: !1127, file: !2, line: 253, type: !1146)
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1147 = !DICompositeType(tag: DW_TAG_structure_type, name: "bt_ctf_field_type", file: !1148, line: 40, flags: DIFlagFwdDecl)
!1148 = !DIFile(filename: "../../include/babeltrace/ctf-writer/event.h", directory: "/local-ssd/babeltrace-ltsh36prkey7v3qgu5igo3lgbpgjtjyj-build/aidengro/spack-stage-babeltrace-1.2.4-ltsh36prkey7v3qgu5igo3lgbpgjtjyj/spack-src/tests/lib", checksumkind: CSK_MD5, checksum: "145050ca9fdc6cee53bac9f0a2170134")
!1149 = !DILocalVariable(name: "float_type", scope: !1127, file: !2, line: 255, type: !1146)
!1150 = !DILocalVariable(name: "enum_type", scope: !1127, file: !2, line: 257, type: !1146)
!1151 = !DILocalVariable(name: "simple_event", scope: !1127, file: !2, line: 259, type: !1152)
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1153 = !DICompositeType(tag: DW_TAG_structure_type, name: "bt_ctf_event", file: !1144, line: 37, flags: DIFlagFwdDecl)
!1154 = !DILocalVariable(name: "integer_field", scope: !1127, file: !2, line: 260, type: !1155)
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1156, size: 64)
!1156 = !DICompositeType(tag: DW_TAG_structure_type, name: "bt_ctf_field", file: !1148, line: 39, flags: DIFlagFwdDecl)
!1157 = !DILocalVariable(name: "float_field", scope: !1127, file: !2, line: 261, type: !1155)
!1158 = !DILocalVariable(name: "enum_field", scope: !1127, file: !2, line: 262, type: !1155)
!1159 = !DILocalVariable(name: "enum_container_field", scope: !1127, file: !2, line: 263, type: !1155)
!1160 = !DILocation(line: 247, column: 54, scope: !1127)
!1161 = !DILocation(line: 248, column: 25, scope: !1127)
!1162 = !DILocation(line: 248, column: 54, scope: !1127)
!1163 = !DILocation(line: 251, column: 2, scope: !1127)
!1164 = !DILocation(line: 251, column: 29, scope: !1127)
!1165 = !DILocation(line: 252, column: 3, scope: !1127)
!1166 = !DILocation(line: 253, column: 2, scope: !1127)
!1167 = !DILocation(line: 253, column: 28, scope: !1127)
!1168 = !DILocation(line: 254, column: 3, scope: !1127)
!1169 = !DILocation(line: 255, column: 2, scope: !1127)
!1170 = !DILocation(line: 255, column: 28, scope: !1127)
!1171 = !DILocation(line: 256, column: 3, scope: !1127)
!1172 = !DILocation(line: 257, column: 2, scope: !1127)
!1173 = !DILocation(line: 257, column: 28, scope: !1127)
!1174 = !DILocation(line: 258, column: 40, scope: !1127)
!1175 = !DILocation(line: 258, column: 3, scope: !1127)
!1176 = !DILocation(line: 259, column: 2, scope: !1127)
!1177 = !DILocation(line: 259, column: 23, scope: !1127)
!1178 = !DILocation(line: 260, column: 2, scope: !1127)
!1179 = !DILocation(line: 260, column: 23, scope: !1127)
!1180 = !DILocation(line: 261, column: 2, scope: !1127)
!1181 = !DILocation(line: 261, column: 23, scope: !1127)
!1182 = !DILocation(line: 262, column: 2, scope: !1127)
!1183 = !DILocation(line: 262, column: 23, scope: !1127)
!1184 = !DILocation(line: 263, column: 2, scope: !1127)
!1185 = !DILocation(line: 263, column: 23, scope: !1127)
!1186 = !DILocation(line: 265, column: 34, scope: !1127)
!1187 = !DILocation(line: 265, column: 2, scope: !1127)
!1188 = !DILocation(line: 266, column: 55, scope: !1127)
!1189 = !DILocation(line: 266, column: 2, scope: !1127)
!1190 = !DILocation(line: 267, column: 55, scope: !1127)
!1191 = !DILocation(line: 267, column: 2, scope: !1127)
!1192 = !DILocation(line: 269, column: 2, scope: !1127)
!1193 = !DILocation(line: 272, column: 2, scope: !1127)
!1194 = !DILocation(line: 275, column: 2, scope: !1127)
!1195 = !DILocation(line: 278, column: 2, scope: !1127)
!1196 = !DILocation(line: 281, column: 2, scope: !1127)
!1197 = !DILocation(line: 282, column: 31, scope: !1127)
!1198 = !DILocation(line: 282, column: 51, scope: !1127)
!1199 = !DILocation(line: 282, column: 2, scope: !1127)
!1200 = !DILocation(line: 284, column: 31, scope: !1127)
!1201 = !DILocation(line: 284, column: 51, scope: !1127)
!1202 = !DILocation(line: 284, column: 2, scope: !1127)
!1203 = !DILocation(line: 286, column: 38, scope: !1127)
!1204 = !DILocation(line: 287, column: 3, scope: !1127)
!1205 = !DILocation(line: 286, column: 2, scope: !1127)
!1206 = !DILocation(line: 289, column: 37, scope: !1127)
!1207 = !DILocation(line: 289, column: 17, scope: !1127)
!1208 = !DILocation(line: 289, column: 15, scope: !1127)
!1209 = !DILocation(line: 291, column: 2, scope: !1127)
!1210 = !DILocation(line: 294, column: 38, scope: !1127)
!1211 = !DILocation(line: 294, column: 18, scope: !1127)
!1212 = !DILocation(line: 294, column: 16, scope: !1127)
!1213 = !DILocation(line: 295, column: 42, scope: !1127)
!1214 = !DILocation(line: 295, column: 2, scope: !1127)
!1215 = !DILocation(line: 296, column: 2, scope: !1127)
!1216 = !DILocation(line: 299, column: 41, scope: !1127)
!1217 = !DILocation(line: 299, column: 16, scope: !1127)
!1218 = !DILocation(line: 299, column: 14, scope: !1127)
!1219 = !DILocation(line: 300, column: 40, scope: !1127)
!1220 = !DILocation(line: 300, column: 2, scope: !1127)
!1221 = !DILocation(line: 301, column: 35, scope: !1127)
!1222 = !DILocation(line: 301, column: 15, scope: !1127)
!1223 = !DILocation(line: 301, column: 13, scope: !1127)
!1224 = !DILocation(line: 303, column: 3, scope: !1127)
!1225 = !DILocation(line: 302, column: 25, scope: !1127)
!1226 = !DILocation(line: 302, column: 23, scope: !1127)
!1227 = !DILocation(line: 304, column: 2, scope: !1127)
!1228 = !DILocation(line: 307, column: 27, scope: !1127)
!1229 = !DILocation(line: 307, column: 55, scope: !1127)
!1230 = !DILocation(line: 307, column: 2, scope: !1127)
!1231 = !DILocation(line: 309, column: 2, scope: !1127)
!1232 = !DILocation(line: 311, column: 2, scope: !1127)
!1233 = !DILocation(line: 314, column: 2, scope: !1127)
!1234 = !DILocation(line: 317, column: 25, scope: !1127)
!1235 = !DILocation(line: 317, column: 2, scope: !1127)
!1236 = !DILocation(line: 318, column: 19, scope: !1127)
!1237 = !DILocation(line: 318, column: 2, scope: !1127)
!1238 = !DILocation(line: 319, column: 24, scope: !1127)
!1239 = !DILocation(line: 319, column: 2, scope: !1127)
!1240 = !DILocation(line: 320, column: 24, scope: !1127)
!1241 = !DILocation(line: 320, column: 2, scope: !1127)
!1242 = !DILocation(line: 321, column: 24, scope: !1127)
!1243 = !DILocation(line: 321, column: 2, scope: !1127)
!1244 = !DILocation(line: 322, column: 19, scope: !1127)
!1245 = !DILocation(line: 322, column: 2, scope: !1127)
!1246 = !DILocation(line: 323, column: 19, scope: !1127)
!1247 = !DILocation(line: 323, column: 2, scope: !1127)
!1248 = !DILocation(line: 324, column: 19, scope: !1127)
!1249 = !DILocation(line: 324, column: 2, scope: !1127)
!1250 = !DILocation(line: 325, column: 19, scope: !1127)
!1251 = !DILocation(line: 325, column: 2, scope: !1127)
!1252 = !DILocation(line: 326, column: 1, scope: !1127)
!1253 = !DISubprogram(name: "bt_ctf_event_class_create", scope: !1148, file: !1148, line: 52, type: !1254, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1254 = !DISubroutineType(types: !1255)
!1255 = !{!1142, !900}
!1256 = !DISubprogram(name: "bt_ctf_field_type_integer_create", scope: !175, file: !175, line: 63, type: !1257, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1257 = !DISubroutineType(types: !1258)
!1258 = !{!1146, !185}
!1259 = !DISubprogram(name: "bt_ctf_field_type_floating_point_create", scope: !175, file: !175, line: 148, type: !1260, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1260 = !DISubroutineType(types: !1261)
!1261 = !{!1146}
!1262 = !DISubprogram(name: "bt_ctf_field_type_enumeration_create", scope: !175, file: !175, line: 121, type: !1263, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1263 = !DISubroutineType(types: !1264)
!1264 = !{!1146, !1146}
!1265 = !DISubprogram(name: "bt_ctf_field_type_set_alignment", scope: !175, file: !175, line: 315, type: !1266, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1266 = !DISubroutineType(types: !1267)
!1267 = !{!176, !1146, !185}
!1268 = !DISubprogram(name: "bt_ctf_field_type_floating_point_set_exponent_digits", scope: !175, file: !175, line: 163, type: !1266, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1269 = !DISubprogram(name: "bt_ctf_field_type_floating_point_set_mantissa_digits", scope: !175, file: !175, line: 180, type: !1266, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1270 = !DISubprogram(name: "bt_ctf_field_type_enumeration_add_mapping", scope: !175, file: !175, line: 136, type: !1271, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1271 = !DISubroutineType(types: !1272)
!1272 = !{!176, !1146, !900, !1273, !1273}
!1273 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !1274, line: 27, baseType: !1275)
!1274 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!1275 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !591, line: 44, baseType: !653)
!1276 = !DISubprogram(name: "bt_ctf_event_class_add_field", scope: !1148, file: !1148, line: 67, type: !1277, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1277 = !DISubroutineType(types: !1278)
!1278 = !{!176, !1142, !1146, !900}
!1279 = !DISubprogram(name: "bt_ctf_stream_class_add_event_class", scope: !1144, file: !1144, line: 84, type: !1280, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1280 = !DISubroutineType(types: !1281)
!1281 = !{!176, !1130, !1142}
!1282 = !DISubprogram(name: "bt_ctf_event_create", scope: !1148, file: !1148, line: 99, type: !1283, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1283 = !DISubroutineType(types: !1284)
!1284 = !{!1152, !1142}
!1285 = !DISubprogram(name: "bt_ctf_field_create", scope: !1286, file: !1286, line: 54, type: !1287, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1286 = !DIFile(filename: "../../include/babeltrace/ctf-writer/event-fields.h", directory: "/local-ssd/babeltrace-ltsh36prkey7v3qgu5igo3lgbpgjtjyj-build/aidengro/spack-stage-babeltrace-1.2.4-ltsh36prkey7v3qgu5igo3lgbpgjtjyj/spack-src/tests/lib", checksumkind: CSK_MD5, checksum: "5011025419fb748449926d93d8048288")
!1287 = !DISubroutineType(types: !1288)
!1288 = !{!1155, !1146}
!1289 = !DISubprogram(name: "bt_ctf_field_unsigned_integer_set_value", scope: !1286, file: !1286, line: 166, type: !1290, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1290 = !DISubroutineType(types: !1291)
!1291 = !{!176, !1155, !588}
!1292 = !DISubprogram(name: "bt_ctf_event_set_payload", scope: !1148, file: !1148, line: 115, type: !1293, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1293 = !DISubroutineType(types: !1294)
!1294 = !{!176, !1152, !900, !1155}
!1295 = !DISubprogram(name: "bt_ctf_event_get_payload", scope: !1148, file: !1148, line: 130, type: !1296, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1296 = !DISubroutineType(types: !1297)
!1297 = !{!1155, !1152, !900}
!1298 = !DISubprogram(name: "bt_ctf_field_floating_point_set_value", scope: !1286, file: !1286, line: 180, type: !1299, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1299 = !DISubroutineType(types: !1300)
!1300 = !{!176, !1155, !1301}
!1301 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!1302 = !DISubprogram(name: "bt_ctf_field_enumeration_get_container", scope: !1286, file: !1286, line: 138, type: !1303, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1303 = !DISubroutineType(types: !1304)
!1304 = !{!1155, !1155}
!1305 = !DISubprogram(name: "bt_ctf_clock_set_time", scope: !1306, file: !1306, line: 143, type: !1307, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1306 = !DIFile(filename: "../../include/babeltrace/ctf-writer/clock.h", directory: "/local-ssd/babeltrace-ltsh36prkey7v3qgu5igo3lgbpgjtjyj-build/aidengro/spack-stage-babeltrace-1.2.4-ltsh36prkey7v3qgu5igo3lgbpgjtjyj/spack-src/tests/lib", checksumkind: CSK_MD5, checksum: "93f4f222012ddca6648214b1d66cf079")
!1307 = !DISubroutineType(types: !1308)
!1308 = !{!176, !1135, !588}
!1309 = !DISubprogram(name: "bt_ctf_stream_append_event", scope: !1144, file: !1144, line: 131, type: !1310, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1310 = !DISubroutineType(types: !1311)
!1311 = !{!176, !1133, !1152}
!1312 = !DISubprogram(name: "bt_ctf_stream_flush", scope: !1144, file: !1144, line: 144, type: !1313, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1313 = !DISubroutineType(types: !1314)
!1314 = !{!176, !1133}
!1315 = !DISubprogram(name: "bt_ctf_event_class_put", scope: !1148, file: !1148, line: 86, type: !1316, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1316 = !DISubroutineType(types: !1317)
!1317 = !{null, !1142}
!1318 = !DISubprogram(name: "bt_ctf_event_put", scope: !1148, file: !1148, line: 148, type: !1319, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1319 = !DISubroutineType(types: !1320)
!1320 = !{null, !1152}
!1321 = !DISubprogram(name: "bt_ctf_field_type_put", scope: !175, file: !175, line: 347, type: !1322, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1322 = !DISubroutineType(types: !1323)
!1323 = !{null, !1146}
!1324 = !DISubprogram(name: "bt_ctf_field_put", scope: !1286, file: !1286, line: 212, type: !1325, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1325 = !DISubroutineType(types: !1326)
!1326 = !{null, !1155}
!1327 = distinct !DISubprogram(name: "append_complex_event", scope: !2, file: !2, line: 328, type: !1128, scopeLine: 330, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !172, retainedNodes: !1328)
!1328 = !{!1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352}
!1329 = !DILocalVariable(name: "stream_class", arg: 1, scope: !1327, file: !2, line: 328, type: !1130)
!1330 = !DILocalVariable(name: "stream", arg: 2, scope: !1327, file: !2, line: 329, type: !1133)
!1331 = !DILocalVariable(name: "clock", arg: 3, scope: !1327, file: !2, line: 329, type: !1135)
!1332 = !DILocalVariable(name: "i", scope: !1327, file: !2, line: 331, type: !176)
!1333 = !DILocalVariable(name: "uint_35_type", scope: !1327, file: !2, line: 332, type: !1146)
!1334 = !DILocalVariable(name: "int_16_type", scope: !1327, file: !2, line: 334, type: !1146)
!1335 = !DILocalVariable(name: "uint_3_type", scope: !1327, file: !2, line: 336, type: !1146)
!1336 = !DILocalVariable(name: "enum_variant_type", scope: !1327, file: !2, line: 338, type: !1146)
!1337 = !DILocalVariable(name: "variant_type", scope: !1327, file: !2, line: 340, type: !1146)
!1338 = !DILocalVariable(name: "string_type", scope: !1327, file: !2, line: 343, type: !1146)
!1339 = !DILocalVariable(name: "sequence_type", scope: !1327, file: !2, line: 345, type: !1146)
!1340 = !DILocalVariable(name: "inner_structure_type", scope: !1327, file: !2, line: 346, type: !1146)
!1341 = !DILocalVariable(name: "complex_structure_type", scope: !1327, file: !2, line: 348, type: !1146)
!1342 = !DILocalVariable(name: "event_class", scope: !1327, file: !2, line: 350, type: !1142)
!1343 = !DILocalVariable(name: "event", scope: !1327, file: !2, line: 351, type: !1152)
!1344 = !DILocalVariable(name: "uint_35_field", scope: !1327, file: !2, line: 352, type: !1155)
!1345 = !DILocalVariable(name: "int_16_field", scope: !1327, file: !2, line: 352, type: !1155)
!1346 = !DILocalVariable(name: "a_string_field", scope: !1327, file: !2, line: 352, type: !1155)
!1347 = !DILocalVariable(name: "inner_structure_field", scope: !1327, file: !2, line: 353, type: !1155)
!1348 = !DILocalVariable(name: "complex_structure_field", scope: !1327, file: !2, line: 353, type: !1155)
!1349 = !DILocalVariable(name: "a_sequence_field", scope: !1327, file: !2, line: 354, type: !1155)
!1350 = !DILocalVariable(name: "enum_variant_field", scope: !1327, file: !2, line: 354, type: !1155)
!1351 = !DILocalVariable(name: "enum_container_field", scope: !1327, file: !2, line: 354, type: !1155)
!1352 = !DILocalVariable(name: "variant_field", scope: !1327, file: !2, line: 355, type: !1155)
!1353 = !DILocation(line: 328, column: 55, scope: !1327)
!1354 = !DILocation(line: 329, column: 25, scope: !1327)
!1355 = !DILocation(line: 329, column: 54, scope: !1327)
!1356 = !DILocation(line: 331, column: 2, scope: !1327)
!1357 = !DILocation(line: 331, column: 6, scope: !1327)
!1358 = !DILocation(line: 332, column: 2, scope: !1327)
!1359 = !DILocation(line: 332, column: 28, scope: !1327)
!1360 = !DILocation(line: 333, column: 3, scope: !1327)
!1361 = !DILocation(line: 334, column: 2, scope: !1327)
!1362 = !DILocation(line: 334, column: 28, scope: !1327)
!1363 = !DILocation(line: 335, column: 3, scope: !1327)
!1364 = !DILocation(line: 336, column: 2, scope: !1327)
!1365 = !DILocation(line: 336, column: 28, scope: !1327)
!1366 = !DILocation(line: 337, column: 3, scope: !1327)
!1367 = !DILocation(line: 338, column: 2, scope: !1327)
!1368 = !DILocation(line: 338, column: 28, scope: !1327)
!1369 = !DILocation(line: 339, column: 40, scope: !1327)
!1370 = !DILocation(line: 339, column: 3, scope: !1327)
!1371 = !DILocation(line: 340, column: 2, scope: !1327)
!1372 = !DILocation(line: 340, column: 28, scope: !1327)
!1373 = !DILocation(line: 341, column: 36, scope: !1327)
!1374 = !DILocation(line: 341, column: 3, scope: !1327)
!1375 = !DILocation(line: 343, column: 2, scope: !1327)
!1376 = !DILocation(line: 343, column: 28, scope: !1327)
!1377 = !DILocation(line: 344, column: 3, scope: !1327)
!1378 = !DILocation(line: 345, column: 2, scope: !1327)
!1379 = !DILocation(line: 345, column: 28, scope: !1327)
!1380 = !DILocation(line: 346, column: 2, scope: !1327)
!1381 = !DILocation(line: 346, column: 28, scope: !1327)
!1382 = !DILocation(line: 347, column: 3, scope: !1327)
!1383 = !DILocation(line: 348, column: 2, scope: !1327)
!1384 = !DILocation(line: 348, column: 28, scope: !1327)
!1385 = !DILocation(line: 349, column: 3, scope: !1327)
!1386 = !DILocation(line: 350, column: 2, scope: !1327)
!1387 = !DILocation(line: 350, column: 29, scope: !1327)
!1388 = !DILocation(line: 351, column: 2, scope: !1327)
!1389 = !DILocation(line: 351, column: 23, scope: !1327)
!1390 = !DILocation(line: 352, column: 2, scope: !1327)
!1391 = !DILocation(line: 352, column: 23, scope: !1327)
!1392 = !DILocation(line: 352, column: 39, scope: !1327)
!1393 = !DILocation(line: 352, column: 54, scope: !1327)
!1394 = !DILocation(line: 353, column: 4, scope: !1327)
!1395 = !DILocation(line: 353, column: 28, scope: !1327)
!1396 = !DILocation(line: 354, column: 4, scope: !1327)
!1397 = !DILocation(line: 354, column: 23, scope: !1327)
!1398 = !DILocation(line: 354, column: 44, scope: !1327)
!1399 = !DILocation(line: 355, column: 4, scope: !1327)
!1400 = !DILocation(line: 357, column: 34, scope: !1327)
!1401 = !DILocation(line: 357, column: 2, scope: !1327)
!1402 = !DILocation(line: 358, column: 39, scope: !1327)
!1403 = !DILocation(line: 358, column: 2, scope: !1327)
!1404 = !DILocation(line: 359, column: 37, scope: !1327)
!1405 = !DILocation(line: 359, column: 2, scope: !1327)
!1406 = !DILocation(line: 362, column: 52, scope: !1327)
!1407 = !DILocation(line: 362, column: 18, scope: !1327)
!1408 = !DILocation(line: 362, column: 16, scope: !1327)
!1409 = !DILocation(line: 364, column: 40, scope: !1327)
!1410 = !DILocation(line: 365, column: 3, scope: !1327)
!1411 = !DILocation(line: 364, column: 2, scope: !1327)
!1412 = !DILocation(line: 366, column: 40, scope: !1327)
!1413 = !DILocation(line: 367, column: 3, scope: !1327)
!1414 = !DILocation(line: 366, column: 2, scope: !1327)
!1415 = !DILocation(line: 369, column: 44, scope: !1327)
!1416 = !DILocation(line: 369, column: 2, scope: !1327)
!1417 = !DILocation(line: 371, column: 44, scope: !1327)
!1418 = !DILocation(line: 371, column: 2, scope: !1327)
!1419 = !DILocation(line: 373, column: 44, scope: !1327)
!1420 = !DILocation(line: 373, column: 2, scope: !1327)
!1421 = !DILocation(line: 375, column: 2, scope: !1327)
!1422 = !DILocation(line: 377, column: 2, scope: !1327)
!1423 = !DILocation(line: 379, column: 38, scope: !1327)
!1424 = !DILocation(line: 379, column: 52, scope: !1327)
!1425 = !DILocation(line: 379, column: 2, scope: !1327)
!1426 = !DILocation(line: 381, column: 38, scope: !1327)
!1427 = !DILocation(line: 381, column: 52, scope: !1327)
!1428 = !DILocation(line: 381, column: 2, scope: !1327)
!1429 = !DILocation(line: 384, column: 40, scope: !1327)
!1430 = !DILocation(line: 385, column: 3, scope: !1327)
!1431 = !DILocation(line: 384, column: 2, scope: !1327)
!1432 = !DILocation(line: 386, column: 40, scope: !1327)
!1433 = !DILocation(line: 387, column: 3, scope: !1327)
!1434 = !DILocation(line: 386, column: 2, scope: !1327)
!1435 = !DILocation(line: 388, column: 40, scope: !1327)
!1436 = !DILocation(line: 389, column: 3, scope: !1327)
!1437 = !DILocation(line: 388, column: 2, scope: !1327)
!1438 = !DILocation(line: 390, column: 40, scope: !1327)
!1439 = !DILocation(line: 391, column: 3, scope: !1327)
!1440 = !DILocation(line: 390, column: 2, scope: !1327)
!1441 = !DILocation(line: 393, column: 2, scope: !1327)
!1442 = !DILocation(line: 395, column: 16, scope: !1327)
!1443 = !DILocation(line: 395, column: 14, scope: !1327)
!1444 = !DILocation(line: 396, column: 2, scope: !1327)
!1445 = !DILocation(line: 397, column: 2, scope: !1327)
!1446 = !DILocation(line: 399, column: 2, scope: !1327)
!1447 = !DILocation(line: 401, column: 2, scope: !1327)
!1448 = !DILocation(line: 404, column: 2, scope: !1327)
!1449 = !DILocation(line: 407, column: 2, scope: !1327)
!1450 = !DILocation(line: 409, column: 2, scope: !1327)
!1451 = !DILocation(line: 414, column: 2, scope: !1327)
!1452 = !DILocation(line: 416, column: 2, scope: !1327)
!1453 = !DILocation(line: 419, column: 30, scope: !1327)
!1454 = !DILocation(line: 419, column: 10, scope: !1327)
!1455 = !DILocation(line: 419, column: 8, scope: !1327)
!1456 = !DILocation(line: 420, column: 2, scope: !1327)
!1457 = !DILocation(line: 422, column: 43, scope: !1327)
!1458 = !DILocation(line: 422, column: 18, scope: !1327)
!1459 = !DILocation(line: 422, column: 16, scope: !1327)
!1460 = !DILocation(line: 423, column: 2, scope: !1327)
!1461 = !DILocation(line: 424, column: 42, scope: !1327)
!1462 = !DILocation(line: 424, column: 2, scope: !1327)
!1463 = !DILocation(line: 425, column: 19, scope: !1327)
!1464 = !DILocation(line: 425, column: 2, scope: !1327)
!1465 = !DILocation(line: 427, column: 42, scope: !1327)
!1466 = !DILocation(line: 427, column: 17, scope: !1327)
!1467 = !DILocation(line: 427, column: 15, scope: !1327)
!1468 = !DILocation(line: 428, column: 40, scope: !1327)
!1469 = !DILocation(line: 428, column: 2, scope: !1327)
!1470 = !DILocation(line: 429, column: 19, scope: !1327)
!1471 = !DILocation(line: 429, column: 2, scope: !1327)
!1472 = !DILocation(line: 431, column: 53, scope: !1327)
!1473 = !DILocation(line: 431, column: 28, scope: !1327)
!1474 = !DILocation(line: 431, column: 26, scope: !1327)
!1475 = !DILocation(line: 434, column: 3, scope: !1327)
!1476 = !DILocation(line: 433, column: 26, scope: !1327)
!1477 = !DILocation(line: 433, column: 24, scope: !1327)
!1478 = !DILocation(line: 436, column: 3, scope: !1327)
!1479 = !DILocation(line: 435, column: 19, scope: !1327)
!1480 = !DILocation(line: 435, column: 17, scope: !1327)
!1481 = !DILocation(line: 438, column: 3, scope: !1327)
!1482 = !DILocation(line: 437, column: 23, scope: !1327)
!1483 = !DILocation(line: 437, column: 21, scope: !1327)
!1484 = !DILocation(line: 440, column: 3, scope: !1327)
!1485 = !DILocation(line: 439, column: 18, scope: !1327)
!1486 = !DILocation(line: 439, column: 16, scope: !1327)
!1487 = !DILocation(line: 442, column: 3, scope: !1327)
!1488 = !DILocation(line: 441, column: 18, scope: !1327)
!1489 = !DILocation(line: 441, column: 16, scope: !1327)
!1490 = !DILocation(line: 444, column: 3, scope: !1327)
!1491 = !DILocation(line: 443, column: 21, scope: !1327)
!1492 = !DILocation(line: 443, column: 19, scope: !1327)
!1493 = !DILocation(line: 447, column: 3, scope: !1327)
!1494 = !DILocation(line: 446, column: 25, scope: !1327)
!1495 = !DILocation(line: 446, column: 23, scope: !1327)
!1496 = !DILocation(line: 448, column: 42, scope: !1327)
!1497 = !DILocation(line: 448, column: 2, scope: !1327)
!1498 = !DILocation(line: 449, column: 48, scope: !1327)
!1499 = !DILocation(line: 450, column: 3, scope: !1327)
!1500 = !DILocation(line: 449, column: 17, scope: !1327)
!1501 = !DILocation(line: 449, column: 15, scope: !1327)
!1502 = !DILocation(line: 451, column: 40, scope: !1327)
!1503 = !DILocation(line: 451, column: 2, scope: !1327)
!1504 = !DILocation(line: 452, column: 19, scope: !1327)
!1505 = !DILocation(line: 452, column: 2, scope: !1327)
!1506 = !DILocation(line: 453, column: 32, scope: !1327)
!1507 = !DILocation(line: 453, column: 2, scope: !1327)
!1508 = !DILocation(line: 455, column: 42, scope: !1327)
!1509 = !DILocation(line: 455, column: 2, scope: !1327)
!1510 = !DILocation(line: 457, column: 2, scope: !1327)
!1511 = !DILocation(line: 460, column: 9, scope: !1512)
!1512 = distinct !DILexicalBlock(scope: !1327, file: !2, line: 460, column: 2)
!1513 = !DILocation(line: 460, column: 7, scope: !1512)
!1514 = !DILocation(line: 460, column: 14, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1512, file: !2, line: 460, column: 2)
!1516 = !DILocation(line: 460, column: 16, scope: !1515)
!1517 = !DILocation(line: 460, column: 2, scope: !1512)
!1518 = !DILocation(line: 462, column: 4, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !1515, file: !2, line: 460, column: 45)
!1520 = !DILocation(line: 462, column: 22, scope: !1519)
!1521 = !DILocation(line: 461, column: 18, scope: !1519)
!1522 = !DILocation(line: 461, column: 16, scope: !1519)
!1523 = !DILocation(line: 463, column: 41, scope: !1519)
!1524 = !DILocation(line: 463, column: 59, scope: !1519)
!1525 = !DILocation(line: 463, column: 57, scope: !1519)
!1526 = !DILocation(line: 463, column: 55, scope: !1519)
!1527 = !DILocation(line: 463, column: 3, scope: !1519)
!1528 = !DILocation(line: 464, column: 20, scope: !1519)
!1529 = !DILocation(line: 464, column: 3, scope: !1519)
!1530 = !DILocation(line: 465, column: 2, scope: !1519)
!1531 = !DILocation(line: 460, column: 41, scope: !1515)
!1532 = !DILocation(line: 460, column: 2, scope: !1515)
!1533 = distinct !{!1533, !1517, !1534, !824}
!1534 = !DILocation(line: 465, column: 2, scope: !1512)
!1535 = !DILocation(line: 467, column: 24, scope: !1327)
!1536 = !DILocation(line: 467, column: 31, scope: !1327)
!1537 = !DILocation(line: 467, column: 2, scope: !1327)
!1538 = !DILocation(line: 468, column: 2, scope: !1327)
!1539 = !DILocation(line: 470, column: 2, scope: !1327)
!1540 = !DILocation(line: 473, column: 19, scope: !1327)
!1541 = !DILocation(line: 473, column: 2, scope: !1327)
!1542 = !DILocation(line: 474, column: 19, scope: !1327)
!1543 = !DILocation(line: 474, column: 2, scope: !1327)
!1544 = !DILocation(line: 475, column: 19, scope: !1327)
!1545 = !DILocation(line: 475, column: 2, scope: !1327)
!1546 = !DILocation(line: 476, column: 19, scope: !1327)
!1547 = !DILocation(line: 476, column: 2, scope: !1327)
!1548 = !DILocation(line: 477, column: 19, scope: !1327)
!1549 = !DILocation(line: 477, column: 2, scope: !1327)
!1550 = !DILocation(line: 478, column: 19, scope: !1327)
!1551 = !DILocation(line: 478, column: 2, scope: !1327)
!1552 = !DILocation(line: 479, column: 19, scope: !1327)
!1553 = !DILocation(line: 479, column: 2, scope: !1327)
!1554 = !DILocation(line: 480, column: 19, scope: !1327)
!1555 = !DILocation(line: 480, column: 2, scope: !1327)
!1556 = !DILocation(line: 481, column: 24, scope: !1327)
!1557 = !DILocation(line: 481, column: 2, scope: !1327)
!1558 = !DILocation(line: 482, column: 24, scope: !1327)
!1559 = !DILocation(line: 482, column: 2, scope: !1327)
!1560 = !DILocation(line: 483, column: 24, scope: !1327)
!1561 = !DILocation(line: 483, column: 2, scope: !1327)
!1562 = !DILocation(line: 484, column: 24, scope: !1327)
!1563 = !DILocation(line: 484, column: 2, scope: !1327)
!1564 = !DILocation(line: 485, column: 24, scope: !1327)
!1565 = !DILocation(line: 485, column: 2, scope: !1327)
!1566 = !DILocation(line: 486, column: 24, scope: !1327)
!1567 = !DILocation(line: 486, column: 2, scope: !1327)
!1568 = !DILocation(line: 487, column: 24, scope: !1327)
!1569 = !DILocation(line: 487, column: 2, scope: !1327)
!1570 = !DILocation(line: 488, column: 24, scope: !1327)
!1571 = !DILocation(line: 488, column: 2, scope: !1327)
!1572 = !DILocation(line: 489, column: 24, scope: !1327)
!1573 = !DILocation(line: 489, column: 2, scope: !1327)
!1574 = !DILocation(line: 490, column: 25, scope: !1327)
!1575 = !DILocation(line: 490, column: 2, scope: !1327)
!1576 = !DILocation(line: 491, column: 19, scope: !1327)
!1577 = !DILocation(line: 491, column: 2, scope: !1327)
!1578 = !DILocation(line: 492, column: 1, scope: !1327)
!1579 = !DISubprogram(name: "bt_ctf_field_type_variant_create", scope: !175, file: !175, line: 223, type: !1580, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1580 = !DISubroutineType(types: !1581)
!1581 = !{!1146, !1146, !900}
!1582 = !DISubprogram(name: "bt_ctf_field_type_string_create", scope: !175, file: !175, line: 286, type: !1260, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1583 = !DISubprogram(name: "bt_ctf_field_type_structure_create", scope: !175, file: !175, line: 192, type: !1260, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1584 = !DISubprogram(name: "bt_ctf_field_type_integer_set_signed", scope: !175, file: !175, line: 76, type: !1585, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1585 = !DISubroutineType(types: !1586)
!1586 = !{!176, !1146, !176}
!1587 = !DISubprogram(name: "bt_ctf_field_type_integer_set_base", scope: !175, file: !175, line: 89, type: !1588, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1588 = !DISubroutineType(types: !1589)
!1589 = !{!176, !1146, !174}
!1590 = !DISubprogram(name: "bt_ctf_field_type_sequence_create", scope: !175, file: !175, line: 274, type: !1580, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1591 = !DISubprogram(name: "bt_ctf_field_type_structure_add_field", scope: !175, file: !175, line: 206, type: !1592, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1592 = !DISubroutineType(types: !1593)
!1593 = !{!176, !1146, !1146, !900}
!1594 = !DISubprogram(name: "bt_ctf_field_type_variant_add_field", scope: !175, file: !175, line: 241, type: !1592, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1595 = !DISubprogram(name: "bt_ctf_field_signed_integer_set_value", scope: !1286, file: !1286, line: 152, type: !1596, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1596 = !DISubroutineType(types: !1597)
!1597 = !{!176, !1155, !1273}
!1598 = !DISubprogram(name: "bt_ctf_field_structure_get_field", scope: !1286, file: !1286, line: 68, type: !1599, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1599 = !DISubroutineType(types: !1600)
!1600 = !{!1155, !1155, !900}
!1601 = !DISubprogram(name: "bt_ctf_field_variant_get_field", scope: !1286, file: !1286, line: 125, type: !1602, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1602 = !DISubroutineType(types: !1603)
!1603 = !{!1155, !1155, !1155}
!1604 = !DISubprogram(name: "bt_ctf_field_string_set_value", scope: !1286, file: !1286, line: 194, type: !1605, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1605 = !DISubroutineType(types: !1606)
!1606 = !{!176, !1155, !900}
!1607 = !DISubprogram(name: "bt_ctf_field_sequence_set_length", scope: !1286, file: !1286, line: 95, type: !1608, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1608 = !DISubroutineType(types: !1609)
!1609 = !{!176, !1155, !1155}
!1610 = !DISubprogram(name: "bt_ctf_field_sequence_get_field", scope: !1286, file: !1286, line: 111, type: !1611, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1611 = !DISubroutineType(types: !1612)
!1612 = !{!1155, !1155, !588}
!1613 = distinct !DISubprogram(name: "type_field_tests", scope: !2, file: !2, line: 494, type: !1614, scopeLine: 495, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !172, retainedNodes: !1616)
!1614 = !DISubroutineType(types: !1615)
!1615 = !{null}
!1616 = !{!1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630}
!1617 = !DILocalVariable(name: "uint_12", scope: !1613, file: !2, line: 496, type: !1155)
!1618 = !DILocalVariable(name: "int_16", scope: !1613, file: !2, line: 497, type: !1155)
!1619 = !DILocalVariable(name: "string", scope: !1613, file: !2, line: 498, type: !1155)
!1620 = !DILocalVariable(name: "enumeration", scope: !1613, file: !2, line: 499, type: !1155)
!1621 = !DILocalVariable(name: "composite_structure_type", scope: !1613, file: !2, line: 500, type: !1146)
!1622 = !DILocalVariable(name: "structure_seq_type", scope: !1613, file: !2, line: 501, type: !1146)
!1623 = !DILocalVariable(name: "string_type", scope: !1613, file: !2, line: 502, type: !1146)
!1624 = !DILocalVariable(name: "sequence_type", scope: !1613, file: !2, line: 503, type: !1146)
!1625 = !DILocalVariable(name: "uint_8_type", scope: !1613, file: !2, line: 504, type: !1146)
!1626 = !DILocalVariable(name: "int_16_type", scope: !1613, file: !2, line: 505, type: !1146)
!1627 = !DILocalVariable(name: "uint_12_type", scope: !1613, file: !2, line: 506, type: !1146)
!1628 = !DILocalVariable(name: "enumeration_type", scope: !1613, file: !2, line: 508, type: !1146)
!1629 = !DILocalVariable(name: "enumeration_sequence_type", scope: !1613, file: !2, line: 509, type: !1146)
!1630 = !DILocalVariable(name: "enumeration_array_type", scope: !1613, file: !2, line: 510, type: !1146)
!1631 = !DILocation(line: 496, column: 2, scope: !1613)
!1632 = !DILocation(line: 496, column: 23, scope: !1613)
!1633 = !DILocation(line: 497, column: 2, scope: !1613)
!1634 = !DILocation(line: 497, column: 23, scope: !1613)
!1635 = !DILocation(line: 498, column: 2, scope: !1613)
!1636 = !DILocation(line: 498, column: 23, scope: !1613)
!1637 = !DILocation(line: 499, column: 2, scope: !1613)
!1638 = !DILocation(line: 499, column: 23, scope: !1613)
!1639 = !DILocation(line: 500, column: 2, scope: !1613)
!1640 = !DILocation(line: 500, column: 28, scope: !1613)
!1641 = !DILocation(line: 501, column: 2, scope: !1613)
!1642 = !DILocation(line: 501, column: 28, scope: !1613)
!1643 = !DILocation(line: 502, column: 2, scope: !1613)
!1644 = !DILocation(line: 502, column: 28, scope: !1613)
!1645 = !DILocation(line: 503, column: 2, scope: !1613)
!1646 = !DILocation(line: 503, column: 28, scope: !1613)
!1647 = !DILocation(line: 504, column: 2, scope: !1613)
!1648 = !DILocation(line: 504, column: 28, scope: !1613)
!1649 = !DILocation(line: 505, column: 2, scope: !1613)
!1650 = !DILocation(line: 505, column: 28, scope: !1613)
!1651 = !DILocation(line: 506, column: 2, scope: !1613)
!1652 = !DILocation(line: 506, column: 28, scope: !1613)
!1653 = !DILocation(line: 507, column: 3, scope: !1613)
!1654 = !DILocation(line: 508, column: 2, scope: !1613)
!1655 = !DILocation(line: 508, column: 28, scope: !1613)
!1656 = !DILocation(line: 509, column: 2, scope: !1613)
!1657 = !DILocation(line: 509, column: 28, scope: !1613)
!1658 = !DILocation(line: 510, column: 2, scope: !1613)
!1659 = !DILocation(line: 510, column: 28, scope: !1613)
!1660 = !DILocation(line: 512, column: 2, scope: !1613)
!1661 = !DILocation(line: 513, column: 2, scope: !1613)
!1662 = !DILocation(line: 516, column: 2, scope: !1613)
!1663 = !DILocation(line: 519, column: 2, scope: !1613)
!1664 = !DILocation(line: 522, column: 2, scope: !1613)
!1665 = !DILocation(line: 525, column: 2, scope: !1613)
!1666 = !DILocation(line: 528, column: 2, scope: !1613)
!1667 = !DILocation(line: 530, column: 2, scope: !1613)
!1668 = !DILocation(line: 532, column: 2, scope: !1613)
!1669 = !DILocation(line: 535, column: 16, scope: !1613)
!1670 = !DILocation(line: 535, column: 14, scope: !1613)
!1671 = !DILocation(line: 536, column: 39, scope: !1613)
!1672 = !DILocation(line: 536, column: 2, scope: !1613)
!1673 = !DILocation(line: 537, column: 16, scope: !1613)
!1674 = !DILocation(line: 537, column: 14, scope: !1613)
!1675 = !DILocation(line: 539, column: 37, scope: !1613)
!1676 = !DILocation(line: 539, column: 3, scope: !1613)
!1677 = !DILocation(line: 538, column: 16, scope: !1613)
!1678 = !DILocation(line: 540, column: 2, scope: !1613)
!1679 = !DILocation(line: 542, column: 16, scope: !1613)
!1680 = !DILocation(line: 542, column: 14, scope: !1613)
!1681 = !DILocation(line: 543, column: 2, scope: !1613)
!1682 = !DILocation(line: 544, column: 2, scope: !1613)
!1683 = !DILocation(line: 547, column: 2, scope: !1613)
!1684 = !DILocation(line: 550, column: 2, scope: !1613)
!1685 = !DILocation(line: 554, column: 23, scope: !1613)
!1686 = !DILocation(line: 554, column: 21, scope: !1613)
!1687 = !DILocation(line: 555, column: 2, scope: !1613)
!1688 = !DILocation(line: 556, column: 2, scope: !1613)
!1689 = !DILocation(line: 559, column: 2, scope: !1613)
!1690 = !DILocation(line: 562, column: 29, scope: !1613)
!1691 = !DILocation(line: 562, column: 27, scope: !1613)
!1692 = !DILocation(line: 563, column: 2, scope: !1613)
!1693 = !DILocation(line: 566, column: 2, scope: !1613)
!1694 = !DILocation(line: 570, column: 31, scope: !1613)
!1695 = !DILocation(line: 570, column: 11, scope: !1613)
!1696 = !DILocation(line: 570, column: 9, scope: !1613)
!1697 = !DILocation(line: 571, column: 2, scope: !1613)
!1698 = !DILocation(line: 572, column: 32, scope: !1613)
!1699 = !DILocation(line: 572, column: 12, scope: !1613)
!1700 = !DILocation(line: 572, column: 10, scope: !1613)
!1701 = !DILocation(line: 573, column: 2, scope: !1613)
!1702 = !DILocation(line: 576, column: 2, scope: !1613)
!1703 = !DILocation(line: 579, column: 2, scope: !1613)
!1704 = !DILocation(line: 583, column: 2, scope: !1613)
!1705 = !DILocation(line: 585, column: 2, scope: !1613)
!1706 = !DILocation(line: 589, column: 2, scope: !1613)
!1707 = !DILocation(line: 591, column: 2, scope: !1613)
!1708 = !DILocation(line: 593, column: 2, scope: !1613)
!1709 = !DILocation(line: 595, column: 2, scope: !1613)
!1710 = !DILocation(line: 597, column: 2, scope: !1613)
!1711 = !DILocation(line: 600, column: 2, scope: !1613)
!1712 = !DILocation(line: 602, column: 2, scope: !1613)
!1713 = !DILocation(line: 604, column: 2, scope: !1613)
!1714 = !DILocation(line: 607, column: 31, scope: !1613)
!1715 = !DILocation(line: 607, column: 11, scope: !1613)
!1716 = !DILocation(line: 607, column: 9, scope: !1613)
!1717 = !DILocation(line: 608, column: 2, scope: !1613)
!1718 = !DILocation(line: 609, column: 2, scope: !1613)
!1719 = !DILocation(line: 612, column: 58, scope: !1613)
!1720 = !DILocation(line: 612, column: 21, scope: !1613)
!1721 = !DILocation(line: 612, column: 19, scope: !1613)
!1722 = !DILocation(line: 613, column: 2, scope: !1613)
!1723 = !DILocation(line: 616, column: 3, scope: !1613)
!1724 = !DILocation(line: 615, column: 30, scope: !1613)
!1725 = !DILocation(line: 615, column: 28, scope: !1613)
!1726 = !DILocation(line: 617, column: 2, scope: !1613)
!1727 = !DILocation(line: 620, column: 3, scope: !1613)
!1728 = !DILocation(line: 619, column: 27, scope: !1613)
!1729 = !DILocation(line: 619, column: 25, scope: !1613)
!1730 = !DILocation(line: 621, column: 2, scope: !1613)
!1731 = !DILocation(line: 623, column: 2, scope: !1613)
!1732 = !DILocation(line: 626, column: 36, scope: !1613)
!1733 = !DILocation(line: 626, column: 16, scope: !1613)
!1734 = !DILocation(line: 626, column: 14, scope: !1613)
!1735 = !DILocation(line: 627, column: 2, scope: !1613)
!1736 = !DILocation(line: 630, column: 19, scope: !1613)
!1737 = !DILocation(line: 630, column: 2, scope: !1613)
!1738 = !DILocation(line: 631, column: 19, scope: !1613)
!1739 = !DILocation(line: 631, column: 2, scope: !1613)
!1740 = !DILocation(line: 632, column: 19, scope: !1613)
!1741 = !DILocation(line: 632, column: 2, scope: !1613)
!1742 = !DILocation(line: 633, column: 19, scope: !1613)
!1743 = !DILocation(line: 633, column: 2, scope: !1613)
!1744 = !DILocation(line: 634, column: 24, scope: !1613)
!1745 = !DILocation(line: 634, column: 2, scope: !1613)
!1746 = !DILocation(line: 635, column: 24, scope: !1613)
!1747 = !DILocation(line: 635, column: 2, scope: !1613)
!1748 = !DILocation(line: 636, column: 24, scope: !1613)
!1749 = !DILocation(line: 636, column: 2, scope: !1613)
!1750 = !DILocation(line: 637, column: 24, scope: !1613)
!1751 = !DILocation(line: 637, column: 2, scope: !1613)
!1752 = !DILocation(line: 638, column: 24, scope: !1613)
!1753 = !DILocation(line: 638, column: 2, scope: !1613)
!1754 = !DILocation(line: 639, column: 24, scope: !1613)
!1755 = !DILocation(line: 639, column: 2, scope: !1613)
!1756 = !DILocation(line: 640, column: 24, scope: !1613)
!1757 = !DILocation(line: 640, column: 2, scope: !1613)
!1758 = !DILocation(line: 641, column: 24, scope: !1613)
!1759 = !DILocation(line: 641, column: 2, scope: !1613)
!1760 = !DILocation(line: 642, column: 24, scope: !1613)
!1761 = !DILocation(line: 642, column: 2, scope: !1613)
!1762 = !DILocation(line: 643, column: 24, scope: !1613)
!1763 = !DILocation(line: 643, column: 2, scope: !1613)
!1764 = !DILocation(line: 644, column: 1, scope: !1613)
!1765 = !DISubprogram(name: "bt_ctf_field_type_string_set_encoding", scope: !175, file: !175, line: 299, type: !1766, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1766 = !DISubroutineType(types: !1767)
!1767 = !{!176, !1146, !183}
!1768 = !DISubprogram(name: "bt_ctf_field_type_array_create", scope: !175, file: !175, line: 257, type: !1769, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1769 = !DISubroutineType(types: !1770)
!1770 = !{!1146, !1146, !185}
!1771 = distinct !DISubprogram(name: "packet_resize_test", scope: !2, file: !2, line: 646, type: !1128, scopeLine: 648, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !172, retainedNodes: !1772)
!1772 = !{!1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1785, !1786, !1787}
!1773 = !DILocalVariable(name: "stream_class", arg: 1, scope: !1771, file: !2, line: 646, type: !1130)
!1774 = !DILocalVariable(name: "stream", arg: 2, scope: !1771, file: !2, line: 647, type: !1133)
!1775 = !DILocalVariable(name: "clock", arg: 3, scope: !1771, file: !2, line: 647, type: !1135)
!1776 = !DILocalVariable(name: "ret", scope: !1771, file: !2, line: 654, type: !176)
!1777 = !DILocalVariable(name: "i", scope: !1771, file: !2, line: 655, type: !176)
!1778 = !DILocalVariable(name: "event_class", scope: !1771, file: !2, line: 656, type: !1142)
!1779 = !DILocalVariable(name: "integer_type", scope: !1771, file: !2, line: 658, type: !1146)
!1780 = !DILocalVariable(name: "string_type", scope: !1771, file: !2, line: 660, type: !1146)
!1781 = !DILocalVariable(name: "event", scope: !1782, file: !2, line: 674, type: !1152)
!1782 = distinct !DILexicalBlock(scope: !1783, file: !2, line: 673, column: 50)
!1783 = distinct !DILexicalBlock(scope: !1784, file: !2, line: 673, column: 2)
!1784 = distinct !DILexicalBlock(scope: !1771, file: !2, line: 673, column: 2)
!1785 = !DILocalVariable(name: "integer", scope: !1782, file: !2, line: 675, type: !1155)
!1786 = !DILocalVariable(name: "string", scope: !1782, file: !2, line: 677, type: !1155)
!1787 = !DILabel(scope: !1771, name: "end", file: !2, line: 696)
!1788 = !DILocation(line: 646, column: 53, scope: !1771)
!1789 = !DILocation(line: 647, column: 25, scope: !1771)
!1790 = !DILocation(line: 647, column: 54, scope: !1771)
!1791 = !DILocation(line: 654, column: 2, scope: !1771)
!1792 = !DILocation(line: 654, column: 6, scope: !1771)
!1793 = !DILocation(line: 655, column: 2, scope: !1771)
!1794 = !DILocation(line: 655, column: 6, scope: !1771)
!1795 = !DILocation(line: 656, column: 2, scope: !1771)
!1796 = !DILocation(line: 656, column: 29, scope: !1771)
!1797 = !DILocation(line: 656, column: 43, scope: !1771)
!1798 = !DILocation(line: 658, column: 2, scope: !1771)
!1799 = !DILocation(line: 658, column: 28, scope: !1771)
!1800 = !DILocation(line: 659, column: 3, scope: !1771)
!1801 = !DILocation(line: 660, column: 2, scope: !1771)
!1802 = !DILocation(line: 660, column: 28, scope: !1771)
!1803 = !DILocation(line: 661, column: 3, scope: !1771)
!1804 = !DILocation(line: 663, column: 38, scope: !1771)
!1805 = !DILocation(line: 663, column: 51, scope: !1771)
!1806 = !DILocation(line: 663, column: 9, scope: !1771)
!1807 = !DILocation(line: 663, column: 6, scope: !1771)
!1808 = !DILocation(line: 665, column: 38, scope: !1771)
!1809 = !DILocation(line: 665, column: 51, scope: !1771)
!1810 = !DILocation(line: 665, column: 9, scope: !1771)
!1811 = !DILocation(line: 665, column: 6, scope: !1771)
!1812 = !DILocation(line: 667, column: 45, scope: !1771)
!1813 = !DILocation(line: 667, column: 59, scope: !1771)
!1814 = !DILocation(line: 667, column: 9, scope: !1771)
!1815 = !DILocation(line: 667, column: 6, scope: !1771)
!1816 = !DILocation(line: 668, column: 2, scope: !1771)
!1817 = !DILocation(line: 669, column: 6, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !1771, file: !2, line: 669, column: 6)
!1819 = !DILocation(line: 669, column: 6, scope: !1771)
!1820 = !DILocation(line: 670, column: 3, scope: !1821)
!1821 = distinct !DILexicalBlock(scope: !1818, file: !2, line: 669, column: 11)
!1822 = !DILocation(line: 673, column: 9, scope: !1784)
!1823 = !DILocation(line: 673, column: 7, scope: !1784)
!1824 = !DILocation(line: 673, column: 14, scope: !1783)
!1825 = !DILocation(line: 673, column: 16, scope: !1783)
!1826 = !DILocation(line: 673, column: 2, scope: !1784)
!1827 = !DILocation(line: 674, column: 3, scope: !1782)
!1828 = !DILocation(line: 674, column: 24, scope: !1782)
!1829 = !DILocation(line: 674, column: 52, scope: !1782)
!1830 = !DILocation(line: 674, column: 32, scope: !1782)
!1831 = !DILocation(line: 675, column: 3, scope: !1782)
!1832 = !DILocation(line: 675, column: 24, scope: !1782)
!1833 = !DILocation(line: 676, column: 24, scope: !1782)
!1834 = !DILocation(line: 676, column: 4, scope: !1782)
!1835 = !DILocation(line: 677, column: 3, scope: !1782)
!1836 = !DILocation(line: 677, column: 24, scope: !1782)
!1837 = !DILocation(line: 678, column: 24, scope: !1782)
!1838 = !DILocation(line: 678, column: 4, scope: !1782)
!1839 = !DILocation(line: 680, column: 32, scope: !1782)
!1840 = !DILocation(line: 680, column: 39, scope: !1782)
!1841 = !DILocation(line: 680, column: 10, scope: !1782)
!1842 = !DILocation(line: 680, column: 7, scope: !1782)
!1843 = !DILocation(line: 681, column: 50, scope: !1782)
!1844 = !DILocation(line: 681, column: 59, scope: !1782)
!1845 = !DILocation(line: 681, column: 10, scope: !1782)
!1846 = !DILocation(line: 681, column: 7, scope: !1782)
!1847 = !DILocation(line: 682, column: 35, scope: !1782)
!1848 = !DILocation(line: 683, column: 4, scope: !1782)
!1849 = !DILocation(line: 682, column: 10, scope: !1782)
!1850 = !DILocation(line: 682, column: 7, scope: !1782)
!1851 = !DILocation(line: 684, column: 20, scope: !1782)
!1852 = !DILocation(line: 684, column: 3, scope: !1782)
!1853 = !DILocation(line: 685, column: 40, scope: !1782)
!1854 = !DILocation(line: 685, column: 10, scope: !1782)
!1855 = !DILocation(line: 685, column: 7, scope: !1782)
!1856 = !DILocation(line: 686, column: 35, scope: !1782)
!1857 = !DILocation(line: 687, column: 4, scope: !1782)
!1858 = !DILocation(line: 686, column: 10, scope: !1782)
!1859 = !DILocation(line: 686, column: 7, scope: !1782)
!1860 = !DILocation(line: 688, column: 20, scope: !1782)
!1861 = !DILocation(line: 688, column: 3, scope: !1782)
!1862 = !DILocation(line: 689, column: 37, scope: !1782)
!1863 = !DILocation(line: 689, column: 45, scope: !1782)
!1864 = !DILocation(line: 689, column: 10, scope: !1782)
!1865 = !DILocation(line: 689, column: 7, scope: !1782)
!1866 = !DILocation(line: 690, column: 20, scope: !1782)
!1867 = !DILocation(line: 690, column: 3, scope: !1782)
!1868 = !DILocation(line: 692, column: 7, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1782, file: !2, line: 692, column: 7)
!1870 = !DILocation(line: 692, column: 7, scope: !1782)
!1871 = !DILocation(line: 693, column: 4, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !1869, file: !2, line: 692, column: 12)
!1873 = !DILocation(line: 695, column: 2, scope: !1783)
!1874 = !DILocation(line: 695, column: 2, scope: !1782)
!1875 = !DILocation(line: 673, column: 46, scope: !1783)
!1876 = !DILocation(line: 673, column: 2, scope: !1783)
!1877 = distinct !{!1877, !1826, !1878, !824}
!1878 = !DILocation(line: 695, column: 2, scope: !1784)
!1879 = !DILocation(line: 696, column: 1, scope: !1771)
!1880 = !DILocation(line: 697, column: 2, scope: !1771)
!1881 = !DILocation(line: 698, column: 2, scope: !1771)
!1882 = !DILocation(line: 700, column: 24, scope: !1771)
!1883 = !DILocation(line: 700, column: 2, scope: !1771)
!1884 = !DILocation(line: 701, column: 24, scope: !1771)
!1885 = !DILocation(line: 701, column: 2, scope: !1771)
!1886 = !DILocation(line: 702, column: 25, scope: !1771)
!1887 = !DILocation(line: 702, column: 2, scope: !1771)
!1888 = !DILocation(line: 703, column: 1, scope: !1771)
!1889 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 705, type: !1890, scopeLine: 706, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !172, retainedNodes: !1892)
!1890 = !DISubroutineType(types: !1891)
!1891 = !{!176, !176, !946}
!1892 = !{!1893, !1894, !1895, !1896, !1897, !1898, !1899, !1901, !1902, !1903, !1904, !1905, !1908, !1918, !1919, !1920, !1921, !1922, !1923, !1927}
!1893 = !DILocalVariable(name: "argc", arg: 1, scope: !1889, file: !2, line: 705, type: !176)
!1894 = !DILocalVariable(name: "argv", arg: 2, scope: !1889, file: !2, line: 705, type: !946)
!1895 = !DILocalVariable(name: "trace_path", scope: !1889, file: !2, line: 707, type: !50)
!1896 = !DILocalVariable(name: "metadata_path", scope: !1889, file: !2, line: 708, type: !104)
!1897 = !DILocalVariable(name: "clock_name", scope: !1889, file: !2, line: 709, type: !900)
!1898 = !DILocalVariable(name: "clock_description", scope: !1889, file: !2, line: 710, type: !900)
!1899 = !DILocalVariable(name: "frequency", scope: !1889, file: !2, line: 711, type: !1900)
!1900 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !588)
!1901 = !DILocalVariable(name: "offset_s", scope: !1889, file: !2, line: 712, type: !1900)
!1902 = !DILocalVariable(name: "offset", scope: !1889, file: !2, line: 713, type: !1900)
!1903 = !DILocalVariable(name: "precision", scope: !1889, file: !2, line: 714, type: !1900)
!1904 = !DILocalVariable(name: "metadata_string", scope: !1889, file: !2, line: 715, type: !603)
!1905 = !DILocalVariable(name: "writer", scope: !1889, file: !2, line: 716, type: !1906)
!1906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1907, size: 64)
!1907 = !DICompositeType(tag: DW_TAG_structure_type, name: "bt_ctf_writer", file: !1132, line: 37, flags: DIFlagFwdDecl)
!1908 = !DILocalVariable(name: "name", scope: !1889, file: !2, line: 717, type: !1909)
!1909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "utsname", file: !1910, line: 48, size: 3120, elements: !1911)
!1910 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/utsname.h", directory: "", checksumkind: CSK_MD5, checksum: "025e6c1b1c47580289242d1d03561cee")
!1911 = !{!1912, !1913, !1914, !1915, !1916, !1917}
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "sysname", scope: !1909, file: !1910, line: 51, baseType: !132, size: 520)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "nodename", scope: !1909, file: !1910, line: 54, baseType: !132, size: 520, offset: 520)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1909, file: !1910, line: 57, baseType: !132, size: 520, offset: 1040)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1909, file: !1910, line: 59, baseType: !132, size: 520, offset: 1560)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !1909, file: !1910, line: 62, baseType: !132, size: 520, offset: 2080)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "domainname", scope: !1909, file: !1910, line: 67, baseType: !132, size: 520, offset: 2600)
!1918 = !DILocalVariable(name: "hostname", scope: !1889, file: !2, line: 718, type: !139)
!1919 = !DILocalVariable(name: "clock", scope: !1889, file: !2, line: 719, type: !1135)
!1920 = !DILocalVariable(name: "stream_class", scope: !1889, file: !2, line: 720, type: !1130)
!1921 = !DILocalVariable(name: "stream1", scope: !1889, file: !2, line: 721, type: !1133)
!1922 = !DILocalVariable(name: "ret", scope: !1889, file: !2, line: 722, type: !176)
!1923 = !DILocalVariable(name: "trace_dir", scope: !1889, file: !2, line: 840, type: !1924)
!1924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1925, size: 64)
!1925 = !DIDerivedType(tag: DW_TAG_typedef, name: "DIR", file: !192, line: 127, baseType: !1926)
!1926 = !DICompositeType(tag: DW_TAG_structure_type, name: "__dirstream", file: !192, line: 127, flags: DIFlagFwdDecl)
!1927 = !DILocalVariable(name: "entry", scope: !1889, file: !2, line: 846, type: !1928)
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dirent", file: !1930, line: 22, size: 2240, elements: !1931)
!1930 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/dirent.h", directory: "", checksumkind: CSK_MD5, checksum: "bc8b10a1ddd2747862e3ae7b91dbf464")
!1931 = !{!1932, !1934, !1935, !1936, !1938}
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino", scope: !1929, file: !1930, line: 25, baseType: !1933, size: 64)
!1933 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !591, line: 148, baseType: !592)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "d_off", scope: !1929, file: !1930, line: 26, baseType: !652, size: 64, offset: 64)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "d_reclen", scope: !1929, file: !1930, line: 31, baseType: !655, size: 16, offset: 128)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "d_type", scope: !1929, file: !1930, line: 32, baseType: !1937, size: 8, offset: 144)
!1937 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !1929, file: !1930, line: 33, baseType: !1939, size: 2048, offset: 152)
!1939 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !1940)
!1940 = !{!1941}
!1941 = !DISubrange(count: 256)
!1942 = !DILocation(line: 705, column: 14, scope: !1889)
!1943 = !DILocation(line: 705, column: 27, scope: !1889)
!1944 = !DILocation(line: 707, column: 2, scope: !1889)
!1945 = !DILocation(line: 707, column: 7, scope: !1889)
!1946 = !DILocation(line: 708, column: 2, scope: !1889)
!1947 = !DILocation(line: 708, column: 7, scope: !1889)
!1948 = !DILocation(line: 709, column: 2, scope: !1889)
!1949 = !DILocation(line: 709, column: 14, scope: !1889)
!1950 = !DILocation(line: 710, column: 2, scope: !1889)
!1951 = !DILocation(line: 710, column: 14, scope: !1889)
!1952 = !DILocation(line: 711, column: 2, scope: !1889)
!1953 = !DILocation(line: 711, column: 17, scope: !1889)
!1954 = !DILocation(line: 712, column: 2, scope: !1889)
!1955 = !DILocation(line: 712, column: 17, scope: !1889)
!1956 = !DILocation(line: 713, column: 2, scope: !1889)
!1957 = !DILocation(line: 713, column: 17, scope: !1889)
!1958 = !DILocation(line: 714, column: 2, scope: !1889)
!1959 = !DILocation(line: 714, column: 17, scope: !1889)
!1960 = !DILocation(line: 715, column: 2, scope: !1889)
!1961 = !DILocation(line: 715, column: 8, scope: !1889)
!1962 = !DILocation(line: 716, column: 2, scope: !1889)
!1963 = !DILocation(line: 716, column: 24, scope: !1889)
!1964 = !DILocation(line: 717, column: 2, scope: !1889)
!1965 = !DILocation(line: 717, column: 17, scope: !1889)
!1966 = !DILocation(line: 718, column: 2, scope: !1889)
!1967 = !DILocation(line: 718, column: 7, scope: !1889)
!1968 = !DILocation(line: 719, column: 2, scope: !1889)
!1969 = !DILocation(line: 719, column: 23, scope: !1889)
!1970 = !DILocation(line: 720, column: 2, scope: !1889)
!1971 = !DILocation(line: 720, column: 30, scope: !1889)
!1972 = !DILocation(line: 721, column: 2, scope: !1889)
!1973 = !DILocation(line: 721, column: 24, scope: !1889)
!1974 = !DILocation(line: 722, column: 2, scope: !1889)
!1975 = !DILocation(line: 722, column: 6, scope: !1889)
!1976 = !DILocation(line: 724, column: 6, scope: !1977)
!1977 = distinct !DILexicalBlock(scope: !1889, file: !2, line: 724, column: 6)
!1978 = !DILocation(line: 724, column: 11, scope: !1977)
!1979 = !DILocation(line: 724, column: 6, scope: !1889)
!1980 = !DILocation(line: 725, column: 3, scope: !1981)
!1981 = distinct !DILexicalBlock(scope: !1977, file: !2, line: 724, column: 16)
!1982 = !DILocation(line: 726, column: 3, scope: !1981)
!1983 = !DILocation(line: 729, column: 2, scope: !1889)
!1984 = !DILocation(line: 731, column: 15, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1889, file: !2, line: 731, column: 6)
!1986 = !DILocation(line: 731, column: 7, scope: !1985)
!1987 = !DILocation(line: 731, column: 6, scope: !1889)
!1988 = !DILocation(line: 732, column: 3, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !1985, file: !2, line: 731, column: 28)
!1990 = !DILocation(line: 733, column: 2, scope: !1989)
!1991 = !DILocation(line: 735, column: 9, scope: !1889)
!1992 = !DILocation(line: 735, column: 24, scope: !1889)
!1993 = !DILocation(line: 735, column: 2, scope: !1889)
!1994 = !DILocation(line: 736, column: 9, scope: !1889)
!1995 = !DILocation(line: 736, column: 23, scope: !1889)
!1996 = !DILocation(line: 736, column: 44, scope: !1889)
!1997 = !DILocation(line: 736, column: 2, scope: !1889)
!1998 = !DILocation(line: 738, column: 32, scope: !1889)
!1999 = !DILocation(line: 738, column: 11, scope: !1889)
!2000 = !DILocation(line: 738, column: 9, scope: !1889)
!2001 = !DILocation(line: 739, column: 2, scope: !1889)
!2002 = !DILocation(line: 742, column: 20, scope: !1889)
!2003 = !DILocation(line: 742, column: 8, scope: !1889)
!2004 = !DILocation(line: 742, column: 6, scope: !1889)
!2005 = !DILocation(line: 743, column: 6, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !1889, file: !2, line: 743, column: 6)
!2007 = !DILocation(line: 743, column: 10, scope: !2006)
!2008 = !DILocation(line: 743, column: 6, scope: !1889)
!2009 = !DILocation(line: 744, column: 10, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !2006, file: !2, line: 743, column: 15)
!2011 = !DILocation(line: 744, column: 3, scope: !2010)
!2012 = !DILocation(line: 746, column: 2, scope: !1889)
!2013 = !DILocation(line: 749, column: 2, scope: !1889)
!2014 = !DILocation(line: 752, column: 2, scope: !1889)
!2015 = !DILocation(line: 755, column: 2, scope: !1889)
!2016 = !DILocation(line: 759, column: 6, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !1889, file: !2, line: 759, column: 6)
!2018 = !DILocation(line: 759, column: 6, scope: !1889)
!2019 = !DILocation(line: 760, column: 3, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !2017, file: !2, line: 759, column: 20)
!2021 = !DILocation(line: 761, column: 3, scope: !2020)
!2022 = !DILocation(line: 764, column: 2, scope: !1889)
!2023 = !DILocation(line: 767, column: 2, scope: !1889)
!2024 = !DILocation(line: 771, column: 2, scope: !1889)
!2025 = !DILocation(line: 774, column: 2, scope: !1889)
!2026 = !DILocation(line: 777, column: 2, scope: !1889)
!2027 = !DILocation(line: 782, column: 2, scope: !1889)
!2028 = !DILocation(line: 783, column: 2, scope: !1889)
!2029 = !DILocation(line: 784, column: 30, scope: !1889)
!2030 = !DILocation(line: 784, column: 10, scope: !1889)
!2031 = !DILocation(line: 784, column: 8, scope: !1889)
!2032 = !DILocation(line: 785, column: 2, scope: !1889)
!2033 = !DILocation(line: 786, column: 31, scope: !1889)
!2034 = !DILocation(line: 786, column: 38, scope: !1889)
!2035 = !DILocation(line: 786, column: 2, scope: !1889)
!2036 = !DILocation(line: 788, column: 2, scope: !1889)
!2037 = !DILocation(line: 790, column: 2, scope: !1889)
!2038 = !DILocation(line: 792, column: 2, scope: !1889)
!2039 = !DILocation(line: 793, column: 2, scope: !1889)
!2040 = !DILocation(line: 795, column: 2, scope: !1889)
!2041 = !DILocation(line: 798, column: 2, scope: !1889)
!2042 = !DILocation(line: 800, column: 2, scope: !1889)
!2043 = !DILocation(line: 804, column: 17, scope: !1889)
!2044 = !DILocation(line: 804, column: 15, scope: !1889)
!2045 = !DILocation(line: 805, column: 2, scope: !1889)
!2046 = !DILocation(line: 806, column: 2, scope: !1889)
!2047 = !DILocation(line: 810, column: 2, scope: !1889)
!2048 = !DILocation(line: 813, column: 40, scope: !1889)
!2049 = !DILocation(line: 813, column: 48, scope: !1889)
!2050 = !DILocation(line: 813, column: 12, scope: !1889)
!2051 = !DILocation(line: 813, column: 10, scope: !1889)
!2052 = !DILocation(line: 814, column: 2, scope: !1889)
!2053 = !DILocation(line: 817, column: 2, scope: !1889)
!2054 = !DILocation(line: 820, column: 22, scope: !1889)
!2055 = !DILocation(line: 820, column: 36, scope: !1889)
!2056 = !DILocation(line: 820, column: 45, scope: !1889)
!2057 = !DILocation(line: 820, column: 2, scope: !1889)
!2058 = !DILocation(line: 822, column: 21, scope: !1889)
!2059 = !DILocation(line: 822, column: 35, scope: !1889)
!2060 = !DILocation(line: 822, column: 44, scope: !1889)
!2061 = !DILocation(line: 822, column: 2, scope: !1889)
!2062 = !DILocation(line: 824, column: 23, scope: !1889)
!2063 = !DILocation(line: 824, column: 37, scope: !1889)
!2064 = !DILocation(line: 824, column: 46, scope: !1889)
!2065 = !DILocation(line: 824, column: 2, scope: !1889)
!2066 = !DILocation(line: 826, column: 54, scope: !1889)
!2067 = !DILocation(line: 826, column: 20, scope: !1889)
!2068 = !DILocation(line: 826, column: 18, scope: !1889)
!2069 = !DILocation(line: 827, column: 2, scope: !1889)
!2070 = !DILocation(line: 829, column: 31, scope: !1889)
!2071 = !DILocation(line: 829, column: 2, scope: !1889)
!2072 = !DILocation(line: 830, column: 20, scope: !1889)
!2073 = !DILocation(line: 830, column: 29, scope: !1889)
!2074 = !DILocation(line: 830, column: 2, scope: !1889)
!2075 = !DILocation(line: 831, column: 17, scope: !1889)
!2076 = !DILocation(line: 831, column: 26, scope: !1889)
!2077 = !DILocation(line: 831, column: 2, scope: !1889)
!2078 = !DILocation(line: 833, column: 19, scope: !1889)
!2079 = !DILocation(line: 833, column: 2, scope: !1889)
!2080 = !DILocation(line: 834, column: 26, scope: !1889)
!2081 = !DILocation(line: 834, column: 2, scope: !1889)
!2082 = !DILocation(line: 835, column: 20, scope: !1889)
!2083 = !DILocation(line: 835, column: 2, scope: !1889)
!2084 = !DILocation(line: 836, column: 20, scope: !1889)
!2085 = !DILocation(line: 836, column: 2, scope: !1889)
!2086 = !DILocation(line: 837, column: 7, scope: !1889)
!2087 = !DILocation(line: 837, column: 2, scope: !1889)
!2088 = !DILocation(line: 840, column: 2, scope: !1889)
!2089 = !DILocation(line: 840, column: 7, scope: !1889)
!2090 = !DILocation(line: 840, column: 27, scope: !1889)
!2091 = !DILocation(line: 840, column: 19, scope: !1889)
!2092 = !DILocation(line: 841, column: 7, scope: !2093)
!2093 = distinct !DILexicalBlock(scope: !1889, file: !2, line: 841, column: 6)
!2094 = !DILocation(line: 841, column: 6, scope: !1889)
!2095 = !DILocation(line: 842, column: 3, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !2093, file: !2, line: 841, column: 18)
!2097 = !DILocation(line: 843, column: 3, scope: !2096)
!2098 = !DILocation(line: 846, column: 2, scope: !1889)
!2099 = !DILocation(line: 846, column: 17, scope: !1889)
!2100 = !DILocation(line: 847, column: 2, scope: !1889)
!2101 = !DILocation(line: 847, column: 26, scope: !1889)
!2102 = !DILocation(line: 847, column: 18, scope: !1889)
!2103 = !DILocation(line: 847, column: 16, scope: !1889)
!2104 = !DILocation(line: 848, column: 7, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2106, file: !2, line: 848, column: 7)
!2106 = distinct !DILexicalBlock(scope: !1889, file: !2, line: 847, column: 39)
!2107 = !DILocation(line: 848, column: 14, scope: !2105)
!2108 = !{!2109, !679, i64 18}
!2109 = !{!"dirent", !780, i64 0, !780, i64 8, !2110, i64 16, !679, i64 18, !679, i64 19}
!2110 = !{!"short", !679, i64 0}
!2111 = !DILocation(line: 848, column: 21, scope: !2105)
!2112 = !DILocation(line: 848, column: 7, scope: !2106)
!2113 = !DILocation(line: 849, column: 19, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !2105, file: !2, line: 848, column: 32)
!2115 = !DILocation(line: 849, column: 13, scope: !2114)
!2116 = !DILocation(line: 849, column: 31, scope: !2114)
!2117 = !DILocation(line: 849, column: 38, scope: !2114)
!2118 = !DILocation(line: 849, column: 4, scope: !2114)
!2119 = !DILocation(line: 850, column: 3, scope: !2114)
!2120 = distinct !{!2120, !2100, !2121, !824}
!2121 = !DILocation(line: 851, column: 2, scope: !1889)
!2122 = !DILocation(line: 853, column: 8, scope: !1889)
!2123 = !DILocation(line: 853, column: 2, scope: !1889)
!2124 = !DILocation(line: 854, column: 11, scope: !1889)
!2125 = !DILocation(line: 854, column: 2, scope: !1889)
!2126 = !DILocation(line: 856, column: 2, scope: !1889)
!2127 = !DILocation(line: 857, column: 1, scope: !1889)
!2128 = !DISubprogram(name: "printf", scope: !920, file: !920, line: 356, type: !2129, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2129 = !DISubroutineType(types: !2130)
!2130 = !{!176, !2131, null}
!2131 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !900)
!2132 = !DISubprogram(name: "plan_no_plan", scope: !905, file: !905, line: 78, type: !2133, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2133 = !DISubroutineType(types: !2134)
!2134 = !{!176}
!2135 = !DISubprogram(name: "mkdtemp", scope: !893, file: !893, line: 738, type: !2136, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2136 = !DISubroutineType(types: !2137)
!2137 = !{!603, !603}
!2138 = !DISubprogram(name: "strcpy", scope: !2139, file: !2139, line: 141, type: !2140, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2139 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!2140 = !DISubroutineType(types: !2141)
!2141 = !{!603, !2142, !2131}
!2142 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !603)
!2143 = !DISubprogram(name: "strcat", scope: !2139, file: !2139, line: 149, type: !2140, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2144 = !DISubprogram(name: "bt_ctf_writer_create", scope: !1132, file: !1132, line: 59, type: !2145, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2145 = !DISubroutineType(types: !2146)
!2146 = !{!1906, !900}
!2147 = !DISubprogram(name: "gethostname", scope: !613, file: !613, line: 911, type: !2148, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2148 = !DISubroutineType(types: !2149)
!2149 = !{!176, !603, !623}
!2150 = !DISubprogram(name: "bt_ctf_writer_add_environment_field", scope: !1132, file: !1132, line: 88, type: !2151, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2151 = !DISubroutineType(types: !2152)
!2152 = !{!176, !1906, !900, !900}
!2153 = !DISubprogram(name: "uname", scope: !1910, file: !1910, line: 81, type: !2154, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2154 = !DISubroutineType(types: !2155)
!2155 = !{!176, !2156}
!2156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1909, size: 64)
!2157 = !DISubprogram(name: "bt_ctf_clock_create", scope: !1306, file: !1306, line: 50, type: !2158, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2158 = !DISubroutineType(types: !2159)
!2159 = !{!1135, !900}
!2160 = !DISubprogram(name: "bt_ctf_clock_set_description", scope: !1306, file: !1306, line: 63, type: !2161, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2161 = !DISubroutineType(types: !2162)
!2162 = !{!176, !1135, !900}
!2163 = !DISubprogram(name: "bt_ctf_clock_set_frequency", scope: !1306, file: !1306, line: 76, type: !1307, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2164 = !DISubprogram(name: "bt_ctf_clock_set_offset_s", scope: !1306, file: !1306, line: 103, type: !1307, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2165 = !DISubprogram(name: "bt_ctf_clock_set_offset", scope: !1306, file: !1306, line: 117, type: !1307, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2166 = !DISubprogram(name: "bt_ctf_clock_set_precision", scope: !1306, file: !1306, line: 89, type: !1307, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2167 = !DISubprogram(name: "bt_ctf_clock_set_is_absolute", scope: !1306, file: !1306, line: 131, type: !2168, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2168 = !DISubroutineType(types: !2169)
!2169 = !{!176, !1135, !176}
!2170 = !DISubprogram(name: "bt_ctf_writer_add_clock", scope: !1132, file: !1132, line: 103, type: !2171, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2171 = !DISubroutineType(types: !2172)
!2172 = !{!176, !1906, !1135}
!2173 = !DISubprogram(name: "bt_ctf_stream_class_create", scope: !1144, file: !1144, line: 53, type: !2174, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2174 = !DISubroutineType(types: !2175)
!2175 = !{!1130, !900}
!2176 = !DISubprogram(name: "bt_ctf_stream_class_set_clock", scope: !1144, file: !1144, line: 66, type: !2177, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2177 = !DISubroutineType(types: !2178)
!2178 = !{!176, !1130, !1135}
!2179 = !DISubprogram(name: "bt_ctf_writer_create_stream", scope: !1132, file: !1132, line: 72, type: !2180, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2180 = !DISubroutineType(types: !2181)
!2181 = !{!1133, !1906, !1130}
!2182 = !DISubprogram(name: "bt_ctf_writer_get_metadata_string", scope: !1132, file: !1132, line: 116, type: !2183, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2183 = !DISubroutineType(types: !2184)
!2184 = !{!603, !1906}
!2185 = !DISubprogram(name: "bt_ctf_writer_flush_metadata", scope: !1132, file: !1132, line: 127, type: !2186, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2186 = !DISubroutineType(types: !2187)
!2187 = !{null, !1906}
!2188 = !DISubprogram(name: "bt_ctf_clock_put", scope: !1306, file: !1306, line: 160, type: !2189, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2189 = !DISubroutineType(types: !2190)
!2190 = !{null, !1135}
!2191 = !DISubprogram(name: "bt_ctf_stream_class_put", scope: !1144, file: !1144, line: 103, type: !2192, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2192 = !DISubroutineType(types: !2193)
!2193 = !{null, !1130}
!2194 = !DISubprogram(name: "bt_ctf_writer_put", scope: !1132, file: !1132, line: 158, type: !2186, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2195 = !DISubprogram(name: "bt_ctf_stream_put", scope: !1144, file: !1144, line: 161, type: !2196, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2196 = !DISubroutineType(types: !2197)
!2197 = !{null, !1133}
!2198 = !DISubprogram(name: "opendir", scope: !192, file: !192, line: 134, type: !2199, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2199 = !DISubroutineType(types: !2200)
!2200 = !{!1924, !900}
!2201 = !DISubprogram(name: "readdir", scope: !192, file: !192, line: 162, type: !2202, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2202 = !DISubroutineType(types: !2203)
!2203 = !{!1928, !1924}
!2204 = !DISubprogram(name: "unlinkat", scope: !613, file: !613, line: 862, type: !2205, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2205 = !DISubroutineType(types: !2206)
!2206 = !{!176, !176, !900, !176}
!2207 = !DISubprogram(name: "dirfd", scope: !192, file: !192, line: 224, type: !2208, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2208 = !DISubroutineType(types: !2209)
!2209 = !{!176, !1924}
!2210 = !DISubprogram(name: "rmdir", scope: !613, file: !613, line: 867, type: !902, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2211 = !DISubprogram(name: "closedir", scope: !192, file: !192, line: 149, type: !2208, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2212 = !DISubprogram(name: "__getdelim", scope: !920, file: !920, line: 632, type: !2213, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2213 = !DISubroutineType(types: !2214)
!2214 = !{!945, !2215, !2216, !176, !2217}
!2215 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !946)
!2216 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !947)
!2217 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !626)

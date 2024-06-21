; ModuleID = 'samples/433.bc'
source_filename = "src/core/option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.GtOption = type { i32, ptr, ptr, ptr, %union.anon, ptr, %union.anon.0, %union.anon.1, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, i32 }
%union.anon = type { %struct.GtRange }
%struct.GtRange = type { i64, i64 }
%union.anon.0 = type { double }
%union.anon.1 = type { double }
%struct.GtOptionParser = type { ptr, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr, ptr, i32, i32, ptr }
%struct.HookInfo = type { ptr, ptr }

@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [297 x i8] c"Assertion failed: (%s), function %s, file %s, line %d.\0AThis is a bug, please report it at\0Ahttps://github.com/genometools/genometools/issues\0APlease make sure you are running the latest release which can be found at\0Ahttp://genometools.org/pub/\0AYou can check your version number with `gt -version`.\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [2 x i8] c"o\00", align 1, !dbg !7
@__func__.gt_option_ref = private unnamed_addr constant [14 x i8] c"gt_option_ref\00", align 1, !dbg !12
@.str.2 = private unnamed_addr constant [18 x i8] c"src/core/option.c\00", align 1, !dbg !18
@.str.3 = private unnamed_addr constant [22 x i8] c"synopsis && one_liner\00", align 1, !dbg !23
@__func__.gt_option_parser_new = private unnamed_addr constant [21 x i8] c"gt_option_parser_new\00", align 1, !dbg !28
@.str.4 = private unnamed_addr constant [62 x i8] c"one_liner must have upper case letter at start and '.' at end\00", align 1, !dbg !33
@.str.5 = private unnamed_addr constant [116 x i8] c"\22one_liner must have upper case letter at start and '.' at end\22 && strlen(one_liner) && isupper((int) one_liner[0])\00", align 1, !dbg !38
@.str.6 = private unnamed_addr constant [38 x i8] c"one_liner[strlen(one_liner)-1] == '.'\00", align 1, !dbg !43
@.str.7 = private unnamed_addr constant [8 x i8] c"op && o\00", align 1, !dbg !48
@__func__.gt_option_parser_add_option = private unnamed_addr constant [28 x i8] c"gt_option_parser_add_option\00", align 1, !dbg !53
@.str.8 = private unnamed_addr constant [17 x i8] c"op && option_str\00", align 1, !dbg !58
@__func__.gt_option_parser_get_option = private unnamed_addr constant [28 x i8] c"gt_option_parser_get_option\00", align 1, !dbg !63
@.str.9 = private unnamed_addr constant [3 x i8] c"op\00", align 1, !dbg !65
@__func__.gt_option_parser_refer_to_manual = private unnamed_addr constant [33 x i8] c"gt_option_parser_refer_to_manual\00", align 1, !dbg !70
@__func__.gt_option_parser_set_comment_func = private unnamed_addr constant [34 x i8] c"gt_option_parser_set_comment_func\00", align 1, !dbg !75
@.str.10 = private unnamed_addr constant [19 x i8] c"op && version_func\00", align 1, !dbg !80
@__func__.gt_option_parser_set_version_func = private unnamed_addr constant [34 x i8] c"gt_option_parser_set_version_func\00", align 1, !dbg !85
@.str.11 = private unnamed_addr constant [11 x i8] c"op && hook\00", align 1, !dbg !87
@__func__.gt_option_parser_register_hook = private unnamed_addr constant [31 x i8] c"gt_option_parser_register_hook\00", align 1, !dbg !92
@__func__.gt_option_parser_reset = private unnamed_addr constant [23 x i8] c"gt_option_parser_reset\00", align 1, !dbg !97
@.str.12 = private unnamed_addr constant [6 x i8] c"!rval\00", align 1, !dbg !102
@.str.13 = private unnamed_addr constant [14 x i8] c"op && address\00", align 1, !dbg !107
@__func__.gt_option_parser_set_mail_address = private unnamed_addr constant [34 x i8] c"gt_option_parser_set_mail_address\00", align 1, !dbg !110
@__func__.gt_option_parser_manpage = private unnamed_addr constant [25 x i8] c"gt_option_parser_manpage\00", align 1, !dbg !112
@.str.14 = private unnamed_addr constant [30 x i8] c"!err || !gt_error_is_set(err)\00", align 1, !dbg !117
@.str.15 = private unnamed_addr constant [21 x i8] c"strlen(toolname) > 0\00", align 1, !dbg !122
@.str.16 = private unnamed_addr constant [5 x i8] c"(1)\0A\00", align 1, !dbg !125
@.str.17 = private unnamed_addr constant [28 x i8] c":man source:   GenomeTools\0A\00", align 1, !dbg !130
@.str.18 = private unnamed_addr constant [16 x i8] c":man version:  \00", align 1, !dbg !133
@.str.19 = private unnamed_addr constant [6 x i8] c"1.6.2\00", align 1, !dbg !138
@.str.20 = private unnamed_addr constant [35 x i8] c":man manual:   GenomeTools Manual\0A\00", align 1, !dbg !140
@.str.21 = private unnamed_addr constant [5 x i8] c"NAME\00", align 1, !dbg !145
@.str.22 = private unnamed_addr constant [4 x i8] c" - \00", align 1, !dbg !147
@.str.23 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1, !dbg !152
@.str.24 = private unnamed_addr constant [9 x i8] c"SYNOPSIS\00", align 1, !dbg !154
@.str.25 = private unnamed_addr constant [2 x i8] c"*\00", align 1, !dbg !159
@.str.26 = private unnamed_addr constant [3 x i8] c"* \00", align 1, !dbg !161
@.str.27 = private unnamed_addr constant [12 x i8] c"DESCRIPTION\00", align 1, !dbg !163
@.str.28 = private unnamed_addr constant [3 x i8] c"*-\00", align 1, !dbg !168
@.str.29 = private unnamed_addr constant [11 x i8] c"['yes|no']\00", align 1, !dbg !170
@.str.30 = private unnamed_addr constant [4 x i8] c"yes\00", align 1, !dbg !172
@.str.31 = private unnamed_addr constant [3 x i8] c"no\00", align 1, !dbg !174
@.str.32 = private unnamed_addr constant [8 x i8] c"['...']\00", align 1, !dbg !176
@.str.33 = private unnamed_addr constant [10 x i8] c"undefined\00", align 1, !dbg !178
@.str.34 = private unnamed_addr constant [10 x i8] c"['value']\00", align 1, !dbg !183
@.str.35 = private unnamed_addr constant [13 x i8] c"['filename']\00", align 1, !dbg !185
@.str.36 = private unnamed_addr constant [16 x i8] c"['start' 'end']\00", align 1, !dbg !190
@.str.37 = private unnamed_addr constant [3 x i8] c"..\00", align 1, !dbg !192
@.str.38 = private unnamed_addr constant [11 x i8] c"['string']\00", align 1, !dbg !194
@.str.39 = private unnamed_addr constant [4 x i8] c"::\0A\00", align 1, !dbg !196
@.str.40 = private unnamed_addr constant [12 x i8] c" (default: \00", align 1, !dbg !198
@.str.41 = private unnamed_addr constant [2 x i8] c")\00", align 1, !dbg !200
@stdout = external global ptr, align 8
@.str.42 = private unnamed_addr constant [5 x i8] c"pipe\00", align 1, !dbg !202
@.str.43 = private unnamed_addr constant [3 x i8] c"gt\00", align 1, !dbg !204
@.str.44 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !206
@.str.45 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1, !dbg !208
@.str.46 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !210
@.str.47 = private unnamed_addr constant [23 x i8] c"ADDITIONAL INFORMATION\00", align 1, !dbg !212
@.str.48 = private unnamed_addr constant [56 x i8] c"For detailed information, please refer to the manual of\00", align 1, !dbg !215
@.str.49 = private unnamed_addr constant [4 x i8] c".\0A\0A\00", align 1, !dbg !220
@.str.50 = private unnamed_addr constant [15 x i8] c"REPORTING BUGS\00", align 1, !dbg !222
@.str.51 = private unnamed_addr constant [16 x i8] c"Report bugs to \00", align 1, !dbg !227
@.str.52 = private unnamed_addr constant [50 x i8] c"https://github.com/genometools/genometools/issues\00", align 1, !dbg !229
@.str.53 = private unnamed_addr constant [3 x i8] c".\0A\00", align 1, !dbg !234
@__func__.gt_option_parser_set_min_args = private unnamed_addr constant [30 x i8] c"gt_option_parser_set_min_args\00", align 1, !dbg !236
@__func__.gt_option_parser_set_max_args = private unnamed_addr constant [30 x i8] c"gt_option_parser_set_max_args\00", align 1, !dbg !239
@__func__.gt_option_parser_set_min_max_args = private unnamed_addr constant [34 x i8] c"gt_option_parser_set_min_max_args\00", align 1, !dbg !241
@__func__.gt_option_parser_parse = private unnamed_addr constant [23 x i8] c"gt_option_parser_parse\00", align 1, !dbg !243
@.str.54 = private unnamed_addr constant [3 x i8] c"--\00", align 1, !dbg !245
@.str.55 = private unnamed_addr constant [24 x i8] c"option \22%s\22 already set\00", align 1, !dbg !247
@.str.56 = private unnamed_addr constant [5 x i8] c"true\00", align 1, !dbg !252
@.str.57 = private unnamed_addr constant [6 x i8] c"false\00", align 1, !dbg !254
@.str.58 = private unnamed_addr constant [18 x i8] c"option->domain[0]\00", align 1, !dbg !256
@.str.59 = private unnamed_addr constant [3 x i8] c", \00", align 1, !dbg !258
@.str.60 = private unnamed_addr constant [44 x i8] c"argument to option \22-%s\22 must be one of: %s\00", align 1, !dbg !260
@.str.61 = private unnamed_addr constant [55 x i8] c"argument to option \22-%s\22 must be floating-point number\00", align 1, !dbg !265
@.str.62 = private unnamed_addr constant [62 x i8] c"argument to option \22-%s\22 must be a floating point value >= %f\00", align 1, !dbg !270
@.str.63 = private unnamed_addr constant [62 x i8] c"argument to option \22-%s\22 must be a floating point value <= %f\00", align 1, !dbg !272
@.str.64 = private unnamed_addr constant [30 x i8] c"!option->argument_is_optional\00", align 1, !dbg !274
@.str.65 = private unnamed_addr constant [44 x i8] c"argument to option \22-%s\22 must be an integer\00", align 1, !dbg !276
@.str.66 = private unnamed_addr constant [50 x i8] c"argument to option \22-%s\22 must be an integer >= %d\00", align 1, !dbg !278
@.str.67 = private unnamed_addr constant [50 x i8] c"argument to option \22-%s\22 must be an integer <= %d\00", align 1, !dbg !280
@.str.68 = private unnamed_addr constant [62 x i8] c"argument to option \22-%s\22 must be a non-negative integer <= %u\00", align 1, !dbg !282
@.str.69 = private unnamed_addr constant [50 x i8] c"argument to option \22-%s\22 must be an integer >= %u\00", align 1, !dbg !284
@.str.70 = private unnamed_addr constant [50 x i8] c"argument to option \22-%s\22 must be an integer <= %u\00", align 1, !dbg !286
@.str.71 = private unnamed_addr constant [41 x i8] c"argument to option \22-%s\22 is out of range\00", align 1, !dbg !288
@.str.72 = private unnamed_addr constant [51 x i8] c"argument to option \22-%s\22 must be an integer >= %lu\00", align 1, !dbg !293
@.str.73 = private unnamed_addr constant [51 x i8] c"argument to option \22-%s\22 must be an integer <= %lu\00", align 1, !dbg !298
@.str.74 = private unnamed_addr constant [62 x i8] c"first argument to option \22-%s\22 must be a non-negative integer\00", align 1, !dbg !300
@.str.75 = private unnamed_addr constant [57 x i8] c"first argument to option \22-%s\22 must be an integer >= %lu\00", align 1, !dbg !302
@.str.76 = private unnamed_addr constant [63 x i8] c"second argument to option \22-%s\22 must be a non-negative integer\00", align 1, !dbg !307
@.str.77 = private unnamed_addr constant [58 x i8] c"second argument to option \22-%s\22 must be an integer <= %lu\00", align 1, !dbg !312
@.str.78 = private unnamed_addr constant [71 x i8] c"first argument %lu to option \22-%s\22 must be <= than second argument %lu\00", align 1, !dbg !317
@.str.79 = private unnamed_addr constant [33 x i8] c"missing argument to option \22-%s\22\00", align 1, !dbg !322
@.str.80 = private unnamed_addr constant [2 x i8] c"0\00", align 1, !dbg !325
@.str.81 = private unnamed_addr constant [9 x i8] c"!had_err\00", align 1, !dbg !327
@.str.82 = private unnamed_addr constant [50 x i8] c"unknown option: %s (-help shows possible options)\00", align 1, !dbg !329
@.str.83 = private unnamed_addr constant [30 x i8] c"missing argument\0AUsage: %s %s\00", align 1, !dbg !331
@.str.84 = private unnamed_addr constant [39 x i8] c"superfluous argument \22%s\22\0AUsage: %s %s\00", align 1, !dbg !333
@.str.85 = private unnamed_addr constant [6 x i8] c"debug\00", align 1, !dbg !338
@.str.86 = private unnamed_addr constant [24 x i8] c"enable debugging output\00", align 1, !dbg !340
@.str.87 = private unnamed_addr constant [2 x i8] c"v\00", align 1, !dbg !342
@.str.88 = private unnamed_addr constant [11 x i8] c"be verbose\00", align 1, !dbg !344
@.str.89 = private unnamed_addr constant [6 x i8] c"width\00", align 1, !dbg !346
@.str.90 = private unnamed_addr constant [69 x i8] c"set output width for FASTA sequence printing\0A(0 disables formatting)\00", align 1, !dbg !348
@.str.91 = private unnamed_addr constant [11 x i8] c"!in_domain\00", align 1, !dbg !353
@__func__.gt_option_new_choice = private unnamed_addr constant [21 x i8] c"gt_option_new_choice\00", align 1, !dbg !355
@__func__.gt_option_get_name = private unnamed_addr constant [19 x i8] c"gt_option_get_name\00", align 1, !dbg !357
@__func__.gt_option_is_mandatory = private unnamed_addr constant [23 x i8] c"gt_option_is_mandatory\00", align 1, !dbg !360
@.str.92 = private unnamed_addr constant [9 x i8] c"o && meo\00", align 1, !dbg !362
@__func__.gt_option_is_mandatory_either = private unnamed_addr constant [30 x i8] c"gt_option_is_mandatory_either\00", align 1, !dbg !364
@.str.93 = private unnamed_addr constant [29 x i8] c"!o->mandatory_either_options\00", align 1, !dbg !366
@.str.94 = private unnamed_addr constant [20 x i8] c"o && meo_a && meo_b\00", align 1, !dbg !371
@__func__.gt_option_is_mandatory_either_3 = private unnamed_addr constant [32 x i8] c"gt_option_is_mandatory_either_3\00", align 1, !dbg !376
@__func__.gt_option_is_mandatory_either_4 = private unnamed_addr constant [32 x i8] c"gt_option_is_mandatory_either_4\00", align 1, !dbg !381
@__func__.gt_option_is_extended_option = private unnamed_addr constant [29 x i8] c"gt_option_is_extended_option\00", align 1, !dbg !383
@__func__.gt_option_is_development_option = private unnamed_addr constant [32 x i8] c"gt_option_is_development_option\00", align 1, !dbg !386
@.str.95 = private unnamed_addr constant [20 x i8] c"o && implied_option\00", align 1, !dbg !388
@__func__.gt_option_imply = private unnamed_addr constant [16 x i8] c"gt_option_imply\00", align 1, !dbg !390
@.str.96 = private unnamed_addr constant [16 x i8] c"o && io1 && io2\00", align 1, !dbg !393
@__func__.gt_option_imply_either_2 = private unnamed_addr constant [25 x i8] c"gt_option_imply_either_2\00", align 1, !dbg !395
@__func__.gt_option_imply_either_3 = private unnamed_addr constant [25 x i8] c"gt_option_imply_either_3\00", align 1, !dbg !397
@.str.97 = private unnamed_addr constant [11 x i8] c"o_a && o_b\00", align 1, !dbg !399
@__func__.gt_option_exclude = private unnamed_addr constant [18 x i8] c"gt_option_exclude\00", align 1, !dbg !401
@__func__.gt_option_hide_default = private unnamed_addr constant [23 x i8] c"gt_option_hide_default\00", align 1, !dbg !404
@__func__.gt_option_argument_is_optional = private unnamed_addr constant [31 x i8] c"gt_option_argument_is_optional\00", align 1, !dbg !406
@__func__.gt_option_is_set = private unnamed_addr constant [17 x i8] c"gt_option_is_set\00", align 1, !dbg !408
@.str.98 = private unnamed_addr constant [16 x i8] c"^[0-9]+(MB|GB)$\00", align 1, !dbg !411
@.str.99 = private unnamed_addr constant [93 x i8] c"option -%s must have one positive integer argument followed by one of the keywords MB and GB\00", align 1, !dbg !413
@.str.100 = private unnamed_addr constant [5 x i8] c"%d%s\00", align 1, !dbg !418
@.str.101 = private unnamed_addr constant [3 x i8] c"GB\00", align 1, !dbg !420
@.str.102 = private unnamed_addr constant [3 x i8] c"MB\00", align 1, !dbg !422
@.str.103 = private unnamed_addr constant [14 x i8] c"option_parser\00", align 1, !dbg !424
@__func__.gt_option_parser_synopsis = private unnamed_addr constant [26 x i8] c"gt_option_parser_synopsis\00", align 1, !dbg !426
@__func__.gt_option_parser_one_liner = private unnamed_addr constant [27 x i8] c"gt_option_parser_one_liner\00", align 1, !dbg !431
@__func__.gt_option_parser_get_progname = private unnamed_addr constant [30 x i8] c"gt_option_parser_get_progname\00", align 1, !dbg !436
@.str.104 = private unnamed_addr constant [7 x i8] c"option\00", align 1, !dbg !438
@__func__.gt_option_reset = private unnamed_addr constant [16 x i8] c"gt_option_reset\00", align 1, !dbg !443
@__func__.add_common_options = private unnamed_addr constant [19 x i8] c"add_common_options\00", align 1, !dbg !445
@.str.105 = private unnamed_addr constant [8 x i8] c"options\00", align 1, !dbg !447
@__func__.has_extended_option = private unnamed_addr constant [20 x i8] c"has_extended_option\00", align 1, !dbg !449
@.str.106 = private unnamed_addr constant [5 x i8] c"help\00", align 1, !dbg !452
@.str.107 = private unnamed_addr constant [40 x i8] c"display help for basic options and exit\00", align 1, !dbg !454
@.str.108 = private unnamed_addr constant [22 x i8] c"display help and exit\00", align 1, !dbg !459
@.str.109 = private unnamed_addr constant [6 x i8] c"help+\00", align 1, !dbg !461
@.str.110 = private unnamed_addr constant [38 x i8] c"display help for all options and exit\00", align 1, !dbg !463
@.str.111 = private unnamed_addr constant [8 x i8] c"helpdev\00", align 1, !dbg !465
@.str.112 = private unnamed_addr constant [46 x i8] c"display help for development options and exit\00", align 1, !dbg !467
@.str.113 = private unnamed_addr constant [8 x i8] c"version\00", align 1, !dbg !472
@.str.114 = private unnamed_addr constant [37 x i8] c"display version information and exit\00", align 1, !dbg !474
@.str.115 = private unnamed_addr constant [102 x i8] c"option '%s' contains non-ASCII character at offset %lu -- possible copy&paste from non-ASCII context?\00", align 1, !dbg !479
@__func__.optional_arg = private unnamed_addr constant [13 x i8] c"optional_arg\00", align 1, !dbg !484
@__func__.check_missing_argument_and_minus_sign = private unnamed_addr constant [38 x i8] c"check_missing_argument_and_minus_sign\00", align 1, !dbg !487
@__func__.check_missing_argument = private unnamed_addr constant [23 x i8] c"check_missing_argument\00", align 1, !dbg !490
@__func__.show_help = private unnamed_addr constant [10 x i8] c"show_help\00", align 1, !dbg !492
@.str.116 = private unnamed_addr constant [91 x i8] c"optiontype == OPTION_HELP || optiontype == OPTION_HELPPLUS || optiontype == OPTION_HELPDEV\00", align 1, !dbg !495
@.str.117 = private unnamed_addr constant [18 x i8] c"max_option_length\00", align 1, !dbg !500
@.str.118 = private unnamed_addr constant [14 x i8] c"Usage: %s %s\0A\00", align 1, !dbg !502
@.str.119 = private unnamed_addr constant [5 x i8] c"%s\0A\0A\00", align 1, !dbg !504
@.str.120 = private unnamed_addr constant [8 x i8] c"-%s%*s \00", align 1, !dbg !506
@.str.121 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !508
@.str.122 = private unnamed_addr constant [18 x i8] c"%*s  default: %s\0A\00", align 1, !dbg !513
@.str.123 = private unnamed_addr constant [15 x i8] c"%*s  default: \00", align 1, !dbg !515
@.str.124 = private unnamed_addr constant [6 x i8] c"%.2f\0A\00", align 1, !dbg !517
@.str.125 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1, !dbg !519
@.str.126 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1, !dbg !521
@.str.127 = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1, !dbg !523
@.str.128 = private unnamed_addr constant [5 x i8] c"%lu\0A\00", align 1, !dbg !525
@.str.129 = private unnamed_addr constant [9 x i8] c"%lu %lu\0A\00", align 1, !dbg !527
@.str.130 = private unnamed_addr constant [60 x i8] c"\0AFor detailed information, please refer to the manual of%s.\00", align 1, !dbg !529
@.str.131 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to %s.\0A\00", align 1, !dbg !534
@.str.132 = private unnamed_addr constant [48 x i8] c"initial_space < GT_OPTION_PARSER_TERMINAL_WIDTH\00", align 1, !dbg !536
@__func__.show_description = private unnamed_addr constant [17 x i8] c"show_description\00", align 1, !dbg !541
@.str.133 = private unnamed_addr constant [38 x i8] c"*desc_ptr == ' ' || *desc_ptr == '\\n'\00", align 1, !dbg !543
@__func__.check_mandatory_options = private unnamed_addr constant [24 x i8] c"check_mandatory_options\00", align 1, !dbg !545
@.str.134 = private unnamed_addr constant [26 x i8] c"option \22-%s\22 is mandatory\00", align 1, !dbg !548
@__func__.check_option_implications = private unnamed_addr constant [26 x i8] c"check_option_implications\00", align 1, !dbg !551
@.str.135 = private unnamed_addr constant [36 x i8] c"gt_array_size(implied_option_array)\00", align 1, !dbg !553
@.str.136 = private unnamed_addr constant [35 x i8] c"option \22-%s\22 requires option \22-%s\22\00", align 1, !dbg !558
@.str.137 = private unnamed_addr constant [10 x i8] c"option \22-\00", align 1, !dbg !560
@.str.138 = private unnamed_addr constant [18 x i8] c"\22 requires option\00", align 1, !dbg !562
@.str.139 = private unnamed_addr constant [4 x i8] c" \22-\00", align 1, !dbg !564
@.str.140 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !566
@.str.141 = private unnamed_addr constant [7 x i8] c" or \22-\00", align 1, !dbg !568
@__func__.check_option_exclusions = private unnamed_addr constant [24 x i8] c"check_option_exclusions\00", align 1, !dbg !570
@.str.142 = private unnamed_addr constant [49 x i8] c"option \22-%s\22 and option \22-%s\22 exclude each other\00", align 1, !dbg !572
@__func__.check_mandatory_either_options = private unnamed_addr constant [31 x i8] c"check_mandatory_either_options\00", align 1, !dbg !577
@.str.143 = private unnamed_addr constant [49 x i8] c"either option \22-%s\22 or option \22-%s\22 is mandatory\00", align 1, !dbg !579
@.str.144 = private unnamed_addr constant [63 x i8] c"either option \22-%s\22, option \22-%s\22 or option \22-%s\22 is mandatory\00", align 1, !dbg !581
@.str.145 = private unnamed_addr constant [77 x i8] c"either option \22-%s\22, option \22-%s\22, option \22-%s\22 or option \22-%s\22 is mandatory\00", align 1, !dbg !583
@.str.146 = private unnamed_addr constant [33 x i8] c"option_str && strlen(option_str)\00", align 1, !dbg !588
@__func__.gt_option_new = private unnamed_addr constant [14 x i8] c"gt_option_new\00", align 1, !dbg !590
@.str.147 = private unnamed_addr constant [72 x i8] c"an option string should not start with '-', this is added automatically\00", align 1, !dbg !592
@.str.148 = private unnamed_addr constant [101 x i8] c"\22an option string should not start with '-', this is added \22 \22automatically\22 && option_str[0] != '-'\00", align 1, !dbg !597

; Function Attrs: nounwind uwtable
define ptr @gt_option_ref(ptr noundef %o) #0 !dbg !738 {
entry:
  %o.addr = alloca ptr, align 8
  store ptr %o, ptr %o.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %o.addr, metadata !742, metadata !DIExpression()), !dbg !747
  br label %do.body, !dbg !748

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %o.addr, align 8, !dbg !749, !tbaa !743
  %tobool = icmp ne ptr %0, null, !dbg !749
  br i1 %tobool, label %if.end, label %if.then, !dbg !752

if.then:                                          ; preds = %do.body
  %1 = load ptr, ptr @stderr, align 8, !dbg !753, !tbaa !743
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str, ptr noundef @.str.1, ptr noundef @__func__.gt_option_ref, ptr noundef @.str.2, i32 noundef 176), !dbg !753
  call void @abort() #9, !dbg !753
  unreachable, !dbg !753

if.end:                                           ; preds = %do.body
  br label %do.end, !dbg !752

do.end:                                           ; preds = %if.end
  %2 = load ptr, ptr %o.addr, align 8, !dbg !755, !tbaa !743
  %reference_count = getelementptr inbounds %struct.GtOption, ptr %2, i32 0, i32 19, !dbg !756
  %3 = load i32, ptr %reference_count, align 8, !dbg !757, !tbaa !758
  %inc = add i32 %3, 1, !dbg !757
  store i32 %inc, ptr %reference_count, align 8, !dbg !757, !tbaa !758
  %4 = load ptr, ptr %o.addr, align 8, !dbg !762, !tbaa !743
  ret ptr %4, !dbg !763
}

declare !dbg !764 i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: noreturn nounwind
declare !dbg !821 void @abort() #2

; Function Attrs: nounwind uwtable
define ptr @gt_option_parser_new(ptr noundef %synopsis, ptr noundef %one_liner) #0 !dbg !825 {
entry:
  %synopsis.addr = alloca ptr, align 8
  %one_liner.addr = alloca ptr, align 8
  %op = alloca ptr, align 8
  store ptr %synopsis, ptr %synopsis.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %synopsis.addr, metadata !862, metadata !DIExpression()), !dbg !865
  store ptr %one_liner, ptr %one_liner.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %one_liner.addr, metadata !863, metadata !DIExpression()), !dbg !866
  call void @llvm.lifetime.start.p0(i64 8, ptr %op) #10, !dbg !867
  tail call void @llvm.dbg.declare(metadata ptr %op, metadata !864, metadata !DIExpression()), !dbg !868
  br label %do.body, !dbg !869

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %synopsis.addr, align 8, !dbg !870, !tbaa !743
  %tobool = icmp ne ptr %0, null, !dbg !870
  br i1 %tobool, label %land.lhs.true, label %if.then, !dbg !870

land.lhs.true:                                    ; preds = %do.body
  %1 = load ptr, ptr %one_liner.addr, align 8, !dbg !870, !tbaa !743
  %tobool1 = icmp ne ptr %1, null, !dbg !870
  br i1 %tobool1, label %if.end, label %if.then, !dbg !873

if.then:                                          ; preds = %land.lhs.true, %do.body
  %2 = load ptr, ptr @stderr, align 8, !dbg !874, !tbaa !743
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str, ptr noundef @.str.3, ptr noundef @__func__.gt_option_parser_new, ptr noundef @.str.2, i32 noundef 215), !dbg !874
  call void @abort() #9, !dbg !874
  unreachable, !dbg !874

if.end:                                           ; preds = %land.lhs.true
  br label %do.cond, !dbg !873

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !873

do.end:                                           ; preds = %do.cond
  br label %do.body2, !dbg !876

do.body2:                                         ; preds = %do.end
  br i1 true, label %land.lhs.true3, label %if.then11, !dbg !877

land.lhs.true3:                                   ; preds = %do.body2
  %3 = load ptr, ptr %one_liner.addr, align 8, !dbg !877, !tbaa !743
  %call4 = call i64 @strlen(ptr noundef %3) #11, !dbg !877
  %tobool5 = icmp ne i64 %call4, 0, !dbg !877
  br i1 %tobool5, label %land.lhs.true6, label %if.then11, !dbg !877

land.lhs.true6:                                   ; preds = %land.lhs.true3
  %call7 = call ptr @__ctype_b_loc() #12, !dbg !877
  %4 = load ptr, ptr %call7, align 8, !dbg !877, !tbaa !743
  %5 = load ptr, ptr %one_liner.addr, align 8, !dbg !877, !tbaa !743
  %arrayidx = getelementptr inbounds i8, ptr %5, i64 0, !dbg !877
  %6 = load i8, ptr %arrayidx, align 1, !dbg !877, !tbaa !880
  %conv = sext i8 %6 to i32, !dbg !877
  %idxprom = sext i32 %conv to i64, !dbg !877
  %arrayidx8 = getelementptr inbounds i16, ptr %4, i64 %idxprom, !dbg !877
  %7 = load i16, ptr %arrayidx8, align 2, !dbg !877, !tbaa !881
  %conv9 = zext i16 %7 to i32, !dbg !877
  %and = and i32 %conv9, 256, !dbg !877
  %tobool10 = icmp ne i32 %and, 0, !dbg !877
  br i1 %tobool10, label %if.end13, label %if.then11, !dbg !883

if.then11:                                        ; preds = %land.lhs.true6, %land.lhs.true3, %do.body2
  %8 = load ptr, ptr @stderr, align 8, !dbg !884, !tbaa !743
  %call12 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @.str, ptr noundef @.str.5, ptr noundef @__func__.gt_option_parser_new, ptr noundef @.str.2, i32 noundef 217), !dbg !884
  call void @abort() #9, !dbg !884
  unreachable, !dbg !884

if.end13:                                         ; preds = %land.lhs.true6
  br label %do.cond14, !dbg !883

do.cond14:                                        ; preds = %if.end13
  br label %do.end15, !dbg !883

do.end15:                                         ; preds = %do.cond14
  br label %do.body16, !dbg !886

do.body16:                                        ; preds = %do.end15
  %9 = load ptr, ptr %one_liner.addr, align 8, !dbg !887, !tbaa !743
  %10 = load ptr, ptr %one_liner.addr, align 8, !dbg !887, !tbaa !743
  %call17 = call i64 @strlen(ptr noundef %10) #11, !dbg !887
  %sub = sub i64 %call17, 1, !dbg !887
  %arrayidx18 = getelementptr inbounds i8, ptr %9, i64 %sub, !dbg !887
  %11 = load i8, ptr %arrayidx18, align 1, !dbg !887, !tbaa !880
  %conv19 = sext i8 %11 to i32, !dbg !887
  %cmp = icmp eq i32 %conv19, 46, !dbg !887
  br i1 %cmp, label %if.end23, label %if.then21, !dbg !890

if.then21:                                        ; preds = %do.body16
  %12 = load ptr, ptr @stderr, align 8, !dbg !891, !tbaa !743
  %call22 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef @.str, ptr noundef @.str.6, ptr noundef @__func__.gt_option_parser_new, ptr noundef @.str.2, i32 noundef 218), !dbg !891
  call void @abort() #9, !dbg !891
  unreachable, !dbg !891

if.end23:                                         ; preds = %do.body16
  br label %do.cond24, !dbg !890

do.cond24:                                        ; preds = %if.end23
  br label %do.end25, !dbg !890

do.end25:                                         ; preds = %do.cond24
  %call26 = call ptr @gt_calloc_mem(i64 noundef 1, i64 noundef 96, ptr noundef @.str.2, i32 noundef 219), !dbg !893
  store ptr %call26, ptr %op, align 8, !dbg !894, !tbaa !743
  %13 = load ptr, ptr %synopsis.addr, align 8, !dbg !895, !tbaa !743
  %call27 = call ptr @gt_cstr_dup(ptr noundef %13), !dbg !896
  %14 = load ptr, ptr %op, align 8, !dbg !897, !tbaa !743
  %synopsis28 = getelementptr inbounds %struct.GtOptionParser, ptr %14, i32 0, i32 1, !dbg !898
  store ptr %call27, ptr %synopsis28, align 8, !dbg !899, !tbaa !900
  %15 = load ptr, ptr %one_liner.addr, align 8, !dbg !902, !tbaa !743
  %call29 = call ptr @gt_cstr_dup(ptr noundef %15), !dbg !903
  %16 = load ptr, ptr %op, align 8, !dbg !904, !tbaa !743
  %one_liner30 = getelementptr inbounds %struct.GtOptionParser, ptr %16, i32 0, i32 2, !dbg !905
  store ptr %call29, ptr %one_liner30, align 8, !dbg !906, !tbaa !907
  %call31 = call ptr @gt_array_new(i64 noundef 8), !dbg !908
  %17 = load ptr, ptr %op, align 8, !dbg !909, !tbaa !743
  %options = getelementptr inbounds %struct.GtOptionParser, ptr %17, i32 0, i32 3, !dbg !910
  store ptr %call31, ptr %options, align 8, !dbg !911, !tbaa !912
  %18 = load ptr, ptr %op, align 8, !dbg !913, !tbaa !743
  %min_additional_arguments = getelementptr inbounds %struct.GtOptionParser, ptr %18, i32 0, i32 11, !dbg !914
  store i32 -1, ptr %min_additional_arguments, align 8, !dbg !915, !tbaa !916
  %19 = load ptr, ptr %op, align 8, !dbg !917, !tbaa !743
  %max_additional_arguments = getelementptr inbounds %struct.GtOptionParser, ptr %19, i32 0, i32 12, !dbg !918
  store i32 -1, ptr %max_additional_arguments, align 4, !dbg !919, !tbaa !920
  %call32 = call ptr @gt_hashmap_new(i32 noundef 1, ptr noundef null, ptr noundef null), !dbg !921
  %20 = load ptr, ptr %op, align 8, !dbg !922, !tbaa !743
  %optionindex = getelementptr inbounds %struct.GtOptionParser, ptr %20, i32 0, i32 13, !dbg !923
  store ptr %call32, ptr %optionindex, align 8, !dbg !924, !tbaa !925
  %21 = load ptr, ptr %op, align 8, !dbg !926, !tbaa !743
  call void @llvm.lifetime.end.p0(i64 8, ptr %op) #10, !dbg !927
  ret ptr %21, !dbg !928
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !929 i64 @strlen(ptr noundef) #4

; Function Attrs: nounwind willreturn memory(none)
declare !dbg !933 ptr @__ctype_b_loc() #5

declare !dbg !939 ptr @gt_calloc_mem(i64 noundef, i64 noundef, ptr noundef, i32 noundef) #1

declare !dbg !943 ptr @gt_cstr_dup(ptr noundef) #1

declare !dbg !947 ptr @gt_array_new(i64 noundef) #1

declare !dbg !950 ptr @gt_hashmap_new(i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define void @gt_option_parser_add_option(ptr noundef %op, ptr noundef %o) #0 !dbg !959 {
entry:
  %op.addr = alloca ptr, align 8
  %o.addr = alloca ptr, align 8
  store ptr %op, ptr %op.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !963, metadata !DIExpression()), !dbg !965
  store ptr %o, ptr %o.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %o.addr, metadata !964, metadata !DIExpression()), !dbg !966
  br label %do.body, !dbg !967

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %op.addr, align 8, !dbg !968, !tbaa !743
  %tobool = icmp ne ptr %0, null, !dbg !968
  br i1 %tobool, label %land.lhs.true, label %if.then, !dbg !968

land.lhs.true:                                    ; preds = %do.body
  %1 = load ptr, ptr %o.addr, align 8, !dbg !968, !tbaa !743
  %tobool1 = icmp ne ptr %1, null, !dbg !968
  br i1 %tobool1, label %if.end, label %if.then, !dbg !971

if.then:                                          ; preds = %land.lhs.true, %do.body
  %2 = load ptr, ptr @stderr, align 8, !dbg !972, !tbaa !743
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str, ptr noundef @.str.7, ptr noundef @__func__.gt_option_parser_add_option, ptr noundef @.str.2, i32 noundef 231), !dbg !972
  call void @abort() #9, !dbg !972
  unreachable, !dbg !972

if.end:                                           ; preds = %land.lhs.true
  br label %do.end, !dbg !971

do.end:                                           ; preds = %if.end
  %3 = load ptr, ptr %op.addr, align 8, !dbg !974, !tbaa !743
  %options = getelementptr inbounds %struct.GtOptionParser, ptr %3, i32 0, i32 3, !dbg !974
  %4 = load ptr, ptr %options, align 8, !dbg !974, !tbaa !912
  call void @gt_array_add_elem(ptr noundef %4, ptr noundef %o.addr, i64 noundef 8), !dbg !974
  %5 = load ptr, ptr %op.addr, align 8, !dbg !975, !tbaa !743
  %optionindex = getelementptr inbounds %struct.GtOptionParser, ptr %5, i32 0, i32 13, !dbg !976
  %6 = load ptr, ptr %optionindex, align 8, !dbg !976, !tbaa !925
  %7 = load ptr, ptr %o.addr, align 8, !dbg !977, !tbaa !743
  %option_str = getelementptr inbounds %struct.GtOption, ptr %7, i32 0, i32 1, !dbg !978
  %8 = load ptr, ptr %option_str, align 8, !dbg !978, !tbaa !979
  %call2 = call ptr @gt_str_get(ptr noundef %8), !dbg !980
  %9 = load ptr, ptr %o.addr, align 8, !dbg !981, !tbaa !743
  call void @gt_hashmap_add(ptr noundef %6, ptr noundef %call2, ptr noundef %9), !dbg !982
  ret void, !dbg !983
}

declare !dbg !984 void @gt_array_add_elem(ptr noundef, ptr noundef, i64 noundef) #1

declare !dbg !987 void @gt_hashmap_add(ptr noundef, ptr noundef, ptr noundef) #1

declare !dbg !990 ptr @gt_str_get(ptr noundef) #1

; Function Attrs: nounwind uwtable
define ptr @gt_option_parser_get_option(ptr noundef %op, ptr noundef %option_str) #0 !dbg !995 {
entry:
  %op.addr = alloca ptr, align 8
  %option_str.addr = alloca ptr, align 8
  store ptr %op, ptr %op.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !999, metadata !DIExpression()), !dbg !1001
  store ptr %option_str, ptr %option_str.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %option_str.addr, metadata !1000, metadata !DIExpression()), !dbg !1002
  br label %do.body, !dbg !1003

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %op.addr, align 8, !dbg !1004, !tbaa !743
  %tobool = icmp ne ptr %0, null, !dbg !1004
  br i1 %tobool, label %land.lhs.true, label %if.then, !dbg !1004

land.lhs.true:                                    ; preds = %do.body
  %1 = load ptr, ptr %option_str.addr, align 8, !dbg !1004, !tbaa !743
  %tobool1 = icmp ne ptr %1, null, !dbg !1004
  br i1 %tobool1, label %if.end, label %if.then, !dbg !1007

if.then:                                          ; preds = %land.lhs.true, %do.body
  %2 = load ptr, ptr @stderr, align 8, !dbg !1008, !tbaa !743
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str, ptr noundef @.str.8, ptr noundef @__func__.gt_option_parser_get_option, ptr noundef @.str.2, i32 noundef 239), !dbg !1008
  call void @abort() #9, !dbg !1008
  unreachable, !dbg !1008

if.end:                                           ; preds = %land.lhs.true
  br label %do.end, !dbg !1007

do.end:                                           ; preds = %if.end
  %3 = load ptr, ptr %op.addr, align 8, !dbg !1010, !tbaa !743
  %optionindex = getelementptr inbounds %struct.GtOptionParser, ptr %3, i32 0, i32 13, !dbg !1011
  %4 = load ptr, ptr %optionindex, align 8, !dbg !1011, !tbaa !925
  %5 = load ptr, ptr %option_str.addr, align 8, !dbg !1012, !tbaa !743
  %call2 = call ptr @gt_hashmap_get(ptr noundef %4, ptr noundef %5), !dbg !1013
  ret ptr %call2, !dbg !1014
}

declare !dbg !1015 ptr @gt_hashmap_get(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define void @gt_option_parser_refer_to_manual(ptr noundef %op) #0 !dbg !1020 {
entry:
  %op.addr = alloca ptr, align 8
  store ptr %op, ptr %op.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !1024, metadata !DIExpression()), !dbg !1025
  br label %do.body, !dbg !1026

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %op.addr, align 8, !dbg !1027, !tbaa !743
  %tobool = icmp ne ptr %0, null, !dbg !1027
  br i1 %tobool, label %if.end, label %if.then, !dbg !1030

if.then:                                          ; preds = %do.body
  %1 = load ptr, ptr @stderr, align 8, !dbg !1031, !tbaa !743
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str, ptr noundef @.str.9, ptr noundef @__func__.gt_option_parser_refer_to_manual, ptr noundef @.str.2, i32 noundef 245), !dbg !1031
  call void @abort() #9, !dbg !1031
  unreachable, !dbg !1031

if.end:                                           ; preds = %do.body
  br label %do.end, !dbg !1030

do.end:                                           ; preds = %if.end
  %2 = load ptr, ptr %op.addr, align 8, !dbg !1033, !tbaa !743
  %refer_to_manual = getelementptr inbounds %struct.GtOptionParser, ptr %2, i32 0, i32 6, !dbg !1034
  store i8 1, ptr %refer_to_manual, align 1, !dbg !1035, !tbaa !1036
  ret void, !dbg !1037
}

; Function Attrs: nounwind uwtable
define void @gt_option_parser_set_comment_func(ptr noundef %op, ptr noundef %comment_func, ptr noundef %data) #0 !dbg !1038 {
entry:
  %op.addr = alloca ptr, align 8
  %comment_func.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  store ptr %op, ptr %op.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !1042, metadata !DIExpression()), !dbg !1045
  store ptr %comment_func, ptr %comment_func.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %comment_func.addr, metadata !1043, metadata !DIExpression()), !dbg !1046
  store ptr %data, ptr %data.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !1044, metadata !DIExpression()), !dbg !1047
  br label %do.body, !dbg !1048

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %op.addr, align 8, !dbg !1049, !tbaa !743
  %tobool = icmp ne ptr %0, null, !dbg !1049
  br i1 %tobool, label %if.end, label %if.then, !dbg !1052

if.then:                                          ; preds = %do.body
  %1 = load ptr, ptr @stderr, align 8, !dbg !1053, !tbaa !743
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str, ptr noundef @.str.9, ptr noundef @__func__.gt_option_parser_set_comment_func, ptr noundef @.str.2, i32 noundef 253), !dbg !1053
  call void @abort() #9, !dbg !1053
  unreachable, !dbg !1053

if.end:                                           ; preds = %do.body
  br label %do.end, !dbg !1052

do.end:                                           ; preds = %if.end
  %2 = load ptr, ptr %comment_func.addr, align 8, !dbg !1055, !tbaa !743
  %3 = load ptr, ptr %op.addr, align 8, !dbg !1056, !tbaa !743
  %comment_func1 = getelementptr inbounds %struct.GtOptionParser, ptr %3, i32 0, i32 7, !dbg !1057
  store ptr %2, ptr %comment_func1, align 8, !dbg !1058, !tbaa !1059
  %4 = load ptr, ptr %data.addr, align 8, !dbg !1060, !tbaa !743
  %5 = load ptr, ptr %op.addr, align 8, !dbg !1061, !tbaa !743
  %comment_func_data = getelementptr inbounds %struct.GtOptionParser, ptr %5, i32 0, i32 8, !dbg !1062
  store ptr %4, ptr %comment_func_data, align 8, !dbg !1063, !tbaa !1064
  ret void, !dbg !1065
}

; Function Attrs: nounwind uwtable
define void @gt_option_parser_set_version_func(ptr noundef %op, ptr noundef %version_func) #0 !dbg !1066 {
entry:
  %op.addr = alloca ptr, align 8
  %version_func.addr = alloca ptr, align 8
  store ptr %op, ptr %op.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !1070, metadata !DIExpression()), !dbg !1072
  store ptr %version_func, ptr %version_func.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %version_func.addr, metadata !1071, metadata !DIExpression()), !dbg !1073
  br label %do.body, !dbg !1074

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %op.addr, align 8, !dbg !1075, !tbaa !743
  %tobool = icmp ne ptr %0, null, !dbg !1075
  br i1 %tobool, label %land.lhs.true, label %if.then, !dbg !1075

land.lhs.true:                                    ; preds = %do.body
  %1 = load ptr, ptr %version_func.addr, align 8, !dbg !1075, !tbaa !743
  %tobool1 = icmp ne ptr %1, null, !dbg !1075
  br i1 %tobool1, label %if.end, label %if.then, !dbg !1078

if.then:                                          ; preds = %land.lhs.true, %do.body
  %2 = load ptr, ptr @stderr, align 8, !dbg !1079, !tbaa !743
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str, ptr noundef @.str.10, ptr noundef @__func__.gt_option_parser_set_version_func, ptr noundef @.str.2, i32 noundef 261), !dbg !1079
  call void @abort() #9, !dbg !1079
  unreachable, !dbg !1079

if.end:                                           ; preds = %land.lhs.true
  br label %do.end, !dbg !1078

do.end:                                           ; preds = %if.end
  %3 = load ptr, ptr %version_func.addr, align 8, !dbg !1081, !tbaa !743
  %4 = load ptr, ptr %op.addr, align 8, !dbg !1082, !tbaa !743
  %version_func2 = getelementptr inbounds %struct.GtOptionParser, ptr %4, i32 0, i32 9, !dbg !1083
  store ptr %3, ptr %version_func2, align 8, !dbg !1084, !tbaa !1085
  ret void, !dbg !1086
}

; Function Attrs: nounwind uwtable
define void @gt_option_parser_register_hook(ptr noundef %op, ptr noundef %hook, ptr noundef %data) #0 !dbg !1087 {
entry:
  %op.addr = alloca ptr, align 8
  %hook.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %hookinfo = alloca %struct.HookInfo, align 8
  store ptr %op, ptr %op.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !1095, metadata !DIExpression()), !dbg !1104
  store ptr %hook, ptr %hook.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %hook.addr, metadata !1096, metadata !DIExpression()), !dbg !1105
  store ptr %data, ptr %data.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !1097, metadata !DIExpression()), !dbg !1106
  call void @llvm.lifetime.start.p0(i64 16, ptr %hookinfo) #10, !dbg !1107
  tail call void @llvm.dbg.declare(metadata ptr %hookinfo, metadata !1098, metadata !DIExpression()), !dbg !1108
  br label %do.body, !dbg !1109

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %op.addr, align 8, !dbg !1110, !tbaa !743
  %tobool = icmp ne ptr %0, null, !dbg !1110
  br i1 %tobool, label %land.lhs.true, label %if.then, !dbg !1110

land.lhs.true:                                    ; preds = %do.body
  %1 = load ptr, ptr %hook.addr, align 8, !dbg !1110, !tbaa !743
  %tobool1 = icmp ne ptr %1, null, !dbg !1110
  br i1 %tobool1, label %if.end, label %if.then, !dbg !1113

if.then:                                          ; preds = %land.lhs.true, %do.body
  %2 = load ptr, ptr @stderr, align 8, !dbg !1114, !tbaa !743
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str, ptr noundef @.str.11, ptr noundef @__func__.gt_option_parser_register_hook, ptr noundef @.str.2, i32 noundef 270), !dbg !1114
  call void @abort() #9, !dbg !1114
  unreachable, !dbg !1114

if.end:                                           ; preds = %land.lhs.true
  br label %do.cond, !dbg !1113

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !1113

do.end:                                           ; preds = %do.cond
  %3 = load ptr, ptr %op.addr, align 8, !dbg !1116, !tbaa !743
  %hooks = getelementptr inbounds %struct.GtOptionParser, ptr %3, i32 0, i32 4, !dbg !1118
  %4 = load ptr, ptr %hooks, align 8, !dbg !1118, !tbaa !1119
  %tobool2 = icmp ne ptr %4, null, !dbg !1116
  br i1 %tobool2, label %if.end6, label %if.then3, !dbg !1120

if.then3:                                         ; preds = %do.end
  %call4 = call ptr @gt_array_new(i64 noundef 16), !dbg !1121
  %5 = load ptr, ptr %op.addr, align 8, !dbg !1122, !tbaa !743
  %hooks5 = getelementptr inbounds %struct.GtOptionParser, ptr %5, i32 0, i32 4, !dbg !1123
  store ptr %call4, ptr %hooks5, align 8, !dbg !1124, !tbaa !1119
  br label %if.end6, !dbg !1122

if.end6:                                          ; preds = %if.then3, %do.end
  %6 = load ptr, ptr %hook.addr, align 8, !dbg !1125, !tbaa !743
  %hook7 = getelementptr inbounds %struct.HookInfo, ptr %hookinfo, i32 0, i32 0, !dbg !1126
  store ptr %6, ptr %hook7, align 8, !dbg !1127, !tbaa !1128
  %7 = load ptr, ptr %data.addr, align 8, !dbg !1130, !tbaa !743
  %data8 = getelementptr inbounds %struct.HookInfo, ptr %hookinfo, i32 0, i32 1, !dbg !1131
  store ptr %7, ptr %data8, align 8, !dbg !1132, !tbaa !1133
  %8 = load ptr, ptr %op.addr, align 8, !dbg !1134, !tbaa !743
  %hooks9 = getelementptr inbounds %struct.GtOptionParser, ptr %8, i32 0, i32 4, !dbg !1134
  %9 = load ptr, ptr %hooks9, align 8, !dbg !1134, !tbaa !1119
  call void @gt_array_add_elem(ptr noundef %9, ptr noundef %hookinfo, i64 noundef 16), !dbg !1134
  call void @llvm.lifetime.end.p0(i64 16, ptr %hookinfo) #10, !dbg !1135
  ret void, !dbg !1135
}

; Function Attrs: nounwind uwtable
define void @gt_option_parser_reset(ptr noundef %op) #0 !dbg !1136 {
entry:
  %op.addr = alloca ptr, align 8
  %rval = alloca i32, align 4
  store ptr %op, ptr %op.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !1138, metadata !DIExpression()), !dbg !1140
  call void @llvm.lifetime.start.p0(i64 4, ptr %rval) #10, !dbg !1141
  tail call void @llvm.dbg.declare(metadata ptr %rval, metadata !1139, metadata !DIExpression()), !dbg !1142
  br label %do.body, !dbg !1143

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %op.addr, align 8, !dbg !1144, !tbaa !743
  %tobool = icmp ne ptr %0, null, !dbg !1144
  br i1 %tobool, label %if.end, label %if.then, !dbg !1147

if.then:                                          ; preds = %do.body
  %1 = load ptr, ptr @stderr, align 8, !dbg !1148, !tbaa !743
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str, ptr noundef @.str.9, ptr noundef @__func__.gt_option_parser_reset, ptr noundef @.str.2, i32 noundef 289), !dbg !1148
  call void @abort() #9, !dbg !1148
  unreachable, !dbg !1148

if.end:                                           ; preds = %do.body
  br label %do.cond, !dbg !1147

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !1147

do.end:                                           ; preds = %do.cond
  %2 = load ptr, ptr %op.addr, align 8, !dbg !1150, !tbaa !743
  %optionindex = getelementptr inbounds %struct.GtOptionParser, ptr %2, i32 0, i32 13, !dbg !1151
  %3 = load ptr, ptr %optionindex, align 8, !dbg !1151, !tbaa !925
  %call1 = call i32 @gt_hashmap_foreach(ptr noundef %3, ptr noundef @reset_option, ptr noundef null, ptr noundef null), !dbg !1152
  store i32 %call1, ptr %rval, align 4, !dbg !1153, !tbaa !1154
  br label %do.body2, !dbg !1155

do.body2:                                         ; preds = %do.end
  %4 = load i32, ptr %rval, align 4, !dbg !1156, !tbaa !1154
  %tobool3 = icmp ne i32 %4, 0, !dbg !1156
  br i1 %tobool3, label %if.then4, label %if.end6, !dbg !1159

if.then4:                                         ; preds = %do.body2
  %5 = load ptr, ptr @stderr, align 8, !dbg !1160, !tbaa !743
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str, ptr noundef @.str.12, ptr noundef @__func__.gt_option_parser_reset, ptr noundef @.str.2, i32 noundef 291), !dbg !1160
  call void @abort() #9, !dbg !1160
  unreachable, !dbg !1160

if.end6:                                          ; preds = %do.body2
  br label %do.cond7, !dbg !1159

do.cond7:                                         ; preds = %if.end6
  br label %do.end8, !dbg !1159

do.end8:                                          ; preds = %do.cond7
  call void @llvm.lifetime.end.p0(i64 4, ptr %rval) #10, !dbg !1162
  ret void, !dbg !1162
}

declare !dbg !1163 i32 @gt_hashmap_foreach(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal i32 @reset_option(ptr noundef %key, ptr noundef %value, ptr noundef %data, ptr noundef %err) #0 !dbg !1170 {
entry:
  %key.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %err.addr = alloca ptr, align 8
  %o = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !1172, metadata !DIExpression()), !dbg !1177
  store ptr %value, ptr %value.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !1173, metadata !DIExpression()), !dbg !1178
  store ptr %data, ptr %data.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !1174, metadata !DIExpression()), !dbg !1179
  store ptr %err, ptr %err.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !1175, metadata !DIExpression()), !dbg !1180
  call void @llvm.lifetime.start.p0(i64 8, ptr %o) #10, !dbg !1181
  tail call void @llvm.dbg.declare(metadata ptr %o, metadata !1176, metadata !DIExpression()), !dbg !1182
  %0 = load ptr, ptr %value.addr, align 8, !dbg !1183, !tbaa !743
  store ptr %0, ptr %o, align 8, !dbg !1182, !tbaa !743
  %1 = load ptr, ptr %o, align 8, !dbg !1184, !tbaa !743
  call void @gt_option_reset(ptr noundef %1), !dbg !1185
  call void @llvm.lifetime.end.p0(i64 8, ptr %o) #10, !dbg !1186
  ret i32 0, !dbg !1187
}

; Function Attrs: nounwind uwtable
define void @gt_option_parser_set_mail_address(ptr noundef %op, ptr noundef %address) #0 !dbg !1188 {
entry:
  %op.addr = alloca ptr, align 8
  %address.addr = alloca ptr, align 8
  store ptr %op, ptr %op.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !1192, metadata !DIExpression()), !dbg !1194
  store ptr %address, ptr %address.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !1193, metadata !DIExpression()), !dbg !1195
  br label %do.body, !dbg !1196

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %op.addr, align 8, !dbg !1197, !tbaa !743
  %tobool = icmp ne ptr %0, null, !dbg !1197
  br i1 %tobool, label %land.lhs.true, label %if.then, !dbg !1197

land.lhs.true:                                    ; preds = %do.body
  %1 = load ptr, ptr %address.addr, align 8, !dbg !1197, !tbaa !743
  %tobool1 = icmp ne ptr %1, null, !dbg !1197
  br i1 %tobool1, label %if.end, label %if.then, !dbg !1200

if.then:                                          ; preds = %land.lhs.true, %do.body
  %2 = load ptr, ptr @stderr, align 8, !dbg !1201, !tbaa !743
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str, ptr noundef @.str.13, ptr noundef @__func__.gt_option_parser_set_mail_address, ptr noundef @.str.2, i32 noundef 296), !dbg !1201
  call void @abort() #9, !dbg !1201
  unreachable, !dbg !1201

if.end:                                           ; preds = %land.lhs.true
  br label %do.end, !dbg !1200

do.end:                                           ; preds = %if.end
  %3 = load ptr, ptr %address.addr, align 8, !dbg !1203, !tbaa !743
  %4 = load ptr, ptr %op.addr, align 8, !dbg !1204, !tbaa !743
  %mail_address = getelementptr inbounds %struct.GtOptionParser, ptr %4, i32 0, i32 10, !dbg !1205
  store ptr %3, ptr %mail_address, align 8, !dbg !1206, !tbaa !1207
  ret void, !dbg !1208
}

; Function Attrs: nounwind uwtable
define i32 @gt_option_parser_manpage(ptr noundef %op, ptr noundef %toolname, ptr noundef %outstr, ptr noundef %err) #0 !dbg !1209 {
entry:
  %op.addr = alloca ptr, align 8
  %toolname.addr = alloca ptr, align 8
  %outstr.addr = alloca ptr, align 8
  %err.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %option = alloca ptr, align 8
  %default_string = alloca ptr, align 8
  %had_err = alloca i32, align 4
  %old_stdout = alloca i32, align 4
  %out_pipe = alloca [2 x i32], align 4
  %rval = alloca i32, align 4
  %flags = alloca i64, align 8
  %c = alloca i8, align 1
  %prognamebuf = alloca [8192 x i8], align 16
  store ptr %op, ptr %op.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !1213, metadata !DIExpression()), !dbg !1233
  store ptr %toolname, ptr %toolname.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %toolname.addr, metadata !1214, metadata !DIExpression()), !dbg !1234
  store ptr %outstr, ptr %outstr.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %outstr.addr, metadata !1215, metadata !DIExpression()), !dbg !1235
  store ptr %err, ptr %err.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !1216, metadata !DIExpression()), !dbg !1236
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #10, !dbg !1237
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !1217, metadata !DIExpression()), !dbg !1238
  call void @llvm.lifetime.start.p0(i64 8, ptr %option) #10, !dbg !1239
  tail call void @llvm.dbg.declare(metadata ptr %option, metadata !1218, metadata !DIExpression()), !dbg !1240
  call void @llvm.lifetime.start.p0(i64 8, ptr %default_string) #10, !dbg !1241
  tail call void @llvm.dbg.declare(metadata ptr %default_string, metadata !1219, metadata !DIExpression()), !dbg !1242
  call void @llvm.lifetime.start.p0(i64 4, ptr %had_err) #10, !dbg !1243
  tail call void @llvm.dbg.declare(metadata ptr %had_err, metadata !1220, metadata !DIExpression()), !dbg !1244
  store i32 0, ptr %had_err, align 4, !dbg !1244, !tbaa !1154
  br label %do.body, !dbg !1245

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %op.addr, align 8, !dbg !1246, !tbaa !743
  %tobool = icmp ne ptr %0, null, !dbg !1246
  br i1 %tobool, label %if.end, label %if.then, !dbg !1249

if.then:                                          ; preds = %do.body
  %1 = load ptr, ptr @stderr, align 8, !dbg !1250, !tbaa !743
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str, ptr noundef @.str.9, ptr noundef @__func__.gt_option_parser_manpage, ptr noundef @.str.2, i32 noundef 541), !dbg !1250
  call void @abort() #9, !dbg !1250
  unreachable, !dbg !1250

if.end:                                           ; preds = %do.body
  br label %do.cond, !dbg !1249

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !1249

do.end:                                           ; preds = %do.cond
  br label %do.body1, !dbg !1252

do.body1:                                         ; preds = %do.end
  %2 = load ptr, ptr %err.addr, align 8, !dbg !1253, !tbaa !743
  %tobool2 = icmp ne ptr %2, null, !dbg !1253
  br i1 %tobool2, label %lor.lhs.false, label %if.end6, !dbg !1253

lor.lhs.false:                                    ; preds = %do.body1
  %3 = load ptr, ptr %err.addr, align 8, !dbg !1253, !tbaa !743
  %call3 = call zeroext i1 @gt_error_is_set(ptr noundef %3), !dbg !1253
  br i1 %call3, label %if.then4, label %if.end6, !dbg !1256

if.then4:                                         ; preds = %lor.lhs.false
  %4 = load ptr, ptr @stderr, align 8, !dbg !1257, !tbaa !743
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str, ptr noundef @.str.14, ptr noundef @__func__.gt_option_parser_manpage, ptr noundef @.str.2, i32 noundef 542), !dbg !1257
  call void @abort() #9, !dbg !1257
  unreachable, !dbg !1257

if.end6:                                          ; preds = %lor.lhs.false, %do.body1
  br label %do.cond7, !dbg !1256

do.cond7:                                         ; preds = %if.end6
  br label %do.end8, !dbg !1256

do.end8:                                          ; preds = %do.cond7
  br label %do.body9, !dbg !1259

do.body9:                                         ; preds = %do.end8
  %5 = load ptr, ptr %toolname.addr, align 8, !dbg !1260, !tbaa !743
  %call10 = call i64 @strlen(ptr noundef %5) #11, !dbg !1260
  %cmp = icmp ugt i64 %call10, 0, !dbg !1260
  br i1 %cmp, label %if.end13, label %if.then11, !dbg !1263

if.then11:                                        ; preds = %do.body9
  %6 = load ptr, ptr @stderr, align 8, !dbg !1264, !tbaa !743
  %call12 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef @.str, ptr noundef @.str.15, ptr noundef @__func__.gt_option_parser_manpage, ptr noundef @.str.2, i32 noundef 543), !dbg !1264
  call void @abort() #9, !dbg !1264
  unreachable, !dbg !1264

if.end13:                                         ; preds = %do.body9
  br label %do.cond14, !dbg !1263

do.cond14:                                        ; preds = %if.end13
  br label %do.end15, !dbg !1263

do.end15:                                         ; preds = %do.cond14
  %7 = load ptr, ptr %op.addr, align 8, !dbg !1266, !tbaa !743
  %common_options_added = getelementptr inbounds %struct.GtOptionParser, ptr %7, i32 0, i32 5, !dbg !1268
  %8 = load i8, ptr %common_options_added, align 8, !dbg !1268, !tbaa !1269, !range !1270, !noundef !1271
  %tobool16 = trunc i8 %8 to i1, !dbg !1268
  br i1 %tobool16, label %if.end19, label %if.then17, !dbg !1272

if.then17:                                        ; preds = %do.end15
  %9 = load ptr, ptr %op.addr, align 8, !dbg !1273, !tbaa !743
  %common_options_added18 = getelementptr inbounds %struct.GtOptionParser, ptr %9, i32 0, i32 5, !dbg !1275
  store i8 1, ptr %common_options_added18, align 8, !dbg !1276, !tbaa !1269
  %10 = load ptr, ptr %op.addr, align 8, !dbg !1277, !tbaa !743
  call void @add_common_options(ptr noundef %10), !dbg !1278
  br label %if.end19, !dbg !1279

if.end19:                                         ; preds = %if.then17, %do.end15
  %11 = load ptr, ptr %toolname.addr, align 8, !dbg !1280, !tbaa !743
  %12 = load ptr, ptr %outstr.addr, align 8, !dbg !1281, !tbaa !743
  call void @print_toolname(ptr noundef %11, ptr noundef %12, i1 noundef zeroext true), !dbg !1282
  %13 = load ptr, ptr %outstr.addr, align 8, !dbg !1283, !tbaa !743
  call void @gt_str_append_cstr(ptr noundef %13, ptr noundef @.str.16), !dbg !1284
  store i64 0, ptr %i, align 8, !dbg !1285, !tbaa !1287
  br label %for.cond, !dbg !1289

for.cond:                                         ; preds = %for.inc, %if.end19
  %14 = load i64, ptr %i, align 8, !dbg !1290, !tbaa !1287
  %15 = load ptr, ptr %toolname.addr, align 8, !dbg !1292, !tbaa !743
  %call20 = call i64 @strlen(ptr noundef %15) #11, !dbg !1293
  %add = add i64 %call20, 3, !dbg !1294
  %cmp21 = icmp ult i64 %14, %add, !dbg !1295
  br i1 %cmp21, label %for.body, label %for.end, !dbg !1296

for.body:                                         ; preds = %for.cond
  %16 = load ptr, ptr %outstr.addr, align 8, !dbg !1297, !tbaa !743
  call void @gt_str_append_char(ptr noundef %16, i8 noundef signext 61), !dbg !1298
  br label %for.inc, !dbg !1298

for.inc:                                          ; preds = %for.body
  %17 = load i64, ptr %i, align 8, !dbg !1299, !tbaa !1287
  %inc = add i64 %17, 1, !dbg !1299
  store i64 %inc, ptr %i, align 8, !dbg !1299, !tbaa !1287
  br label %for.cond, !dbg !1300, !llvm.loop !1301

for.end:                                          ; preds = %for.cond
  %18 = load ptr, ptr %outstr.addr, align 8, !dbg !1304, !tbaa !743
  call void @gt_str_append_char(ptr noundef %18, i8 noundef signext 10), !dbg !1305
  %19 = load ptr, ptr %outstr.addr, align 8, !dbg !1306, !tbaa !743
  call void @gt_str_append_cstr(ptr noundef %19, ptr noundef @.str.17), !dbg !1307
  %20 = load ptr, ptr %outstr.addr, align 8, !dbg !1308, !tbaa !743
  call void @gt_str_append_cstr(ptr noundef %20, ptr noundef @.str.18), !dbg !1309
  %21 = load ptr, ptr %outstr.addr, align 8, !dbg !1310, !tbaa !743
  call void @gt_str_append_cstr(ptr noundef %21, ptr noundef @.str.19), !dbg !1311
  %22 = load ptr, ptr %outstr.addr, align 8, !dbg !1312, !tbaa !743
  call void @gt_str_append_char(ptr noundef %22, i8 noundef signext 10), !dbg !1313
  %23 = load ptr, ptr %outstr.addr, align 8, !dbg !1314, !tbaa !743
  call void @gt_str_append_cstr(ptr noundef %23, ptr noundef @.str.20), !dbg !1315
  %24 = load ptr, ptr %outstr.addr, align 8, !dbg !1316, !tbaa !743
  call void @gt_str_append_char(ptr noundef %24, i8 noundef signext 10), !dbg !1317
  %25 = load ptr, ptr %outstr.addr, align 8, !dbg !1318, !tbaa !743
  call void @print_asciidoc_header(ptr noundef @.str.21, ptr noundef %25), !dbg !1319
  %26 = load ptr, ptr %toolname.addr, align 8, !dbg !1320, !tbaa !743
  %27 = load ptr, ptr %outstr.addr, align 8, !dbg !1321, !tbaa !743
  call void @print_toolname(ptr noundef %26, ptr noundef %27, i1 noundef zeroext false), !dbg !1322
  %28 = load ptr, ptr %outstr.addr, align 8, !dbg !1323, !tbaa !743
  call void @gt_str_append_cstr(ptr noundef %28, ptr noundef @.str.22), !dbg !1324
  %29 = load ptr, ptr %outstr.addr, align 8, !dbg !1325, !tbaa !743
  %30 = load ptr, ptr %op.addr, align 8, !dbg !1326, !tbaa !743
  %one_liner = getelementptr inbounds %struct.GtOptionParser, ptr %30, i32 0, i32 2, !dbg !1327
  %31 = load ptr, ptr %one_liner, align 8, !dbg !1327, !tbaa !907
  call void @gt_str_append_cstr(ptr noundef %29, ptr noundef %31), !dbg !1328
  %32 = load ptr, ptr %outstr.addr, align 8, !dbg !1329, !tbaa !743
  call void @gt_str_append_cstr(ptr noundef %32, ptr noundef @.str.23), !dbg !1330
  %33 = load ptr, ptr %outstr.addr, align 8, !dbg !1331, !tbaa !743
  call void @print_asciidoc_header(ptr noundef @.str.24, ptr noundef %33), !dbg !1332
  %34 = load ptr, ptr %outstr.addr, align 8, !dbg !1333, !tbaa !743
  call void @gt_str_append_cstr(ptr noundef %34, ptr noundef @.str.25), !dbg !1334
  %35 = load ptr, ptr %outstr.addr, align 8, !dbg !1335, !tbaa !743
  %36 = load ptr, ptr %toolname.addr, align 8, !dbg !1336, !tbaa !743
  call void @gt_str_append_cstr(ptr noundef %35, ptr noundef %36), !dbg !1337
  %37 = load ptr, ptr %outstr.addr, align 8, !dbg !1338, !tbaa !743
  call void @gt_str_append_cstr(ptr noundef %37, ptr noundef @.str.26), !dbg !1339
  %38 = load ptr, ptr %outstr.addr, align 8, !dbg !1340, !tbaa !743
  %39 = load ptr, ptr %op.addr, align 8, !dbg !1341, !tbaa !743
  %synopsis = getelementptr inbounds %struct.GtOptionParser, ptr %39, i32 0, i32 1, !dbg !1342
  %40 = load ptr, ptr %synopsis, align 8, !dbg !1342, !tbaa !900
  call void @gt_str_append_cstr(ptr noundef %38, ptr noundef %40), !dbg !1343
  %41 = load ptr, ptr %outstr.addr, align 8, !dbg !1344, !tbaa !743
  call void @gt_str_append_cstr(ptr noundef %41, ptr noundef @.str.23), !dbg !1345
  %42 = load ptr, ptr %op.addr, align 8, !dbg !1346, !tbaa !743
  %options = getelementptr inbounds %struct.GtOptionParser, ptr %42, i32 0, i32 3, !dbg !1348
  %43 = load ptr, ptr %options, align 8, !dbg !1348, !tbaa !912
  %call22 = call i64 @gt_array_size(ptr noundef %43), !dbg !1349
  %tobool23 = icmp ne i64 %call22, 0, !dbg !1349
  br i1 %tobool23, label %if.then24, label %if.end157, !dbg !1350

if.then24:                                        ; preds = %for.end
  %44 = load ptr, ptr %outstr.addr, align 8, !dbg !1351, !tbaa !743
  call void @print_asciidoc_header(ptr noundef @.str.27, ptr noundef %44), !dbg !1353
  %call25 = call ptr @gt_str_new(), !dbg !1354
  store ptr %call25, ptr %default_string, align 8, !dbg !1355, !tbaa !743
  store i64 0, ptr %i, align 8, !dbg !1356, !tbaa !1287
  br label %for.cond26, !dbg !1358

for.cond26:                                       ; preds = %for.inc154, %if.then24
  %45 = load i64, ptr %i, align 8, !dbg !1359, !tbaa !1287
  %46 = load ptr, ptr %op.addr, align 8, !dbg !1361, !tbaa !743
  %options27 = getelementptr inbounds %struct.GtOptionParser, ptr %46, i32 0, i32 3, !dbg !1362
  %47 = load ptr, ptr %options27, align 8, !dbg !1362, !tbaa !912
  %call28 = call i64 @gt_array_size(ptr noundef %47), !dbg !1363
  %cmp29 = icmp ult i64 %45, %call28, !dbg !1364
  br i1 %cmp29, label %for.body30, label %for.end156, !dbg !1365

for.body30:                                       ; preds = %for.cond26
  %48 = load ptr, ptr %op.addr, align 8, !dbg !1366, !tbaa !743
  %options31 = getelementptr inbounds %struct.GtOptionParser, ptr %48, i32 0, i32 3, !dbg !1368
  %49 = load ptr, ptr %options31, align 8, !dbg !1368, !tbaa !912
  %50 = load i64, ptr %i, align 8, !dbg !1369, !tbaa !1287
  %call32 = call ptr @gt_array_get(ptr noundef %49, i64 noundef %50), !dbg !1370
  %51 = load ptr, ptr %call32, align 8, !dbg !1371, !tbaa !743
  store ptr %51, ptr %option, align 8, !dbg !1372, !tbaa !743
  %52 = load ptr, ptr %option, align 8, !dbg !1373, !tbaa !743
  %is_development_option = getelementptr inbounds %struct.GtOption, ptr %52, i32 0, i32 14, !dbg !1375
  %53 = load i8, ptr %is_development_option, align 2, !dbg !1375, !tbaa !1376, !range !1270, !noundef !1271
  %tobool33 = trunc i8 %53 to i1, !dbg !1375
  br i1 %tobool33, label %if.then34, label %if.end35, !dbg !1377

if.then34:                                        ; preds = %for.body30
  br label %for.inc154, !dbg !1378

if.end35:                                         ; preds = %for.body30
  %54 = load ptr, ptr %outstr.addr, align 8, !dbg !1379, !tbaa !743
  call void @gt_str_append_cstr(ptr noundef %54, ptr noundef @.str.28), !dbg !1380
  %55 = load ptr, ptr %outstr.addr, align 8, !dbg !1381, !tbaa !743
  %56 = load ptr, ptr %option, align 8, !dbg !1382, !tbaa !743
  %option_str = getelementptr inbounds %struct.GtOption, ptr %56, i32 0, i32 1, !dbg !1383
  %57 = load ptr, ptr %option_str, align 8, !dbg !1383, !tbaa !979
  %call36 = call ptr @gt_str_get(ptr noundef %57), !dbg !1384
  call void @gt_str_append_cstr(ptr noundef %55, ptr noundef %call36), !dbg !1385
  %58 = load ptr, ptr %outstr.addr, align 8, !dbg !1386, !tbaa !743
  call void @gt_str_append_cstr(ptr noundef %58, ptr noundef @.str.26), !dbg !1387
  %59 = load ptr, ptr %option, align 8, !dbg !1388, !tbaa !743
  %option_type = getelementptr inbounds %struct.GtOption, ptr %59, i32 0, i32 0, !dbg !1390
  %60 = load i32, ptr %option_type, align 8, !dbg !1390, !tbaa !1391
  %cmp37 = icmp eq i32 %60, 0, !dbg !1392
  br i1 %cmp37, label %if.then38, label %if.else, !dbg !1393

if.then38:                                        ; preds = %if.end35
  %61 = load ptr, ptr %outstr.addr, align 8, !dbg !1394, !tbaa !743
  call void @gt_str_append_cstr(ptr noundef %61, ptr noundef @.str.29), !dbg !1396
  %62 = load ptr, ptr %default_string, align 8, !dbg !1397, !tbaa !743
  %63 = load ptr, ptr %option, align 8, !dbg !1398, !tbaa !743
  %default_value = getelementptr inbounds %struct.GtOption, ptr %63, i32 0, i32 4, !dbg !1399
  %64 = load i8, ptr %default_value, align 8, !dbg !1400, !tbaa !880, !range !1270, !noundef !1271
  %tobool39 = trunc i8 %64 to i1, !dbg !1400
  %65 = zext i1 %tobool39 to i64, !dbg !1398
  %cond = select i1 %tobool39, ptr @.str.30, ptr @.str.31, !dbg !1398
  call void @gt_str_append_cstr(ptr noundef %62, ptr noundef %cond), !dbg !1401
  br label %if.end146, !dbg !1402

if.else:                                          ; preds = %if.end35
  %66 = load ptr, ptr %option, align 8, !dbg !1403, !tbaa !743
  %option_type40 = getelementptr inbounds %struct.GtOption, ptr %66, i32 0, i32 0, !dbg !1405
  %67 = load i32, ptr %option_type40, align 8, !dbg !1405, !tbaa !1391
  %cmp41 = icmp eq i32 %67, 1, !dbg !1406
  br i1 %cmp41, label %if.then42, label %if.else53, !dbg !1407

if.then42:                                        ; preds = %if.else
  %68 = load ptr, ptr %outstr.addr, align 8, !dbg !1408, !tbaa !743
  call void @gt_str_append_cstr(ptr noundef %68, ptr noundef @.str.32), !dbg !1410
  %69 = load ptr, ptr %option, align 8, !dbg !1411, !tbaa !743
  %default_value43 = getelementptr inbounds %struct.GtOption, ptr %69, i32 0, i32 4, !dbg !1413
  %70 = load ptr, ptr %default_value43, align 8, !dbg !1414, !tbaa !880
  %tobool44 = icmp ne ptr %70, null, !dbg !1411
  br i1 %tobool44, label %lor.lhs.false45, label %if.then49, !dbg !1415

lor.lhs.false45:                                  ; preds = %if.then42
  %71 = load ptr, ptr %option, align 8, !dbg !1416, !tbaa !743
  %default_value46 = getelementptr inbounds %struct.GtOption, ptr %71, i32 0, i32 4, !dbg !1417
  %72 = load ptr, ptr %default_value46, align 8, !dbg !1418, !tbaa !880
  %call47 = call i64 @strlen(ptr noundef %72) #11, !dbg !1419
  %tobool48 = icmp ne i64 %call47, 0, !dbg !1419
  br i1 %tobool48, label %if.else50, label %if.then49, !dbg !1420

if.then49:                                        ; preds = %lor.lhs.false45, %if.then42
  %73 = load ptr, ptr %default_string, align 8, !dbg !1421, !tbaa !743
  call void @gt_str_append_cstr(ptr noundef %73, ptr noundef @.str.33), !dbg !1422
  br label %if.end52, !dbg !1422

if.else50:                                        ; preds = %lor.lhs.false45
  %74 = load ptr, ptr %default_string, align 8, !dbg !1423, !tbaa !743
  %75 = load ptr, ptr %option, align 8, !dbg !1424, !tbaa !743
  %default_value51 = getelementptr inbounds %struct.GtOption, ptr %75, i32 0, i32 4, !dbg !1425
  %76 = load ptr, ptr %default_value51, align 8, !dbg !1426, !tbaa !880
  call void @gt_str_append_cstr(ptr noundef %74, ptr noundef %76), !dbg !1427
  br label %if.end52

if.end52:                                         ; preds = %if.else50, %if.then49
  br label %if.end145, !dbg !1428

if.else53:                                        ; preds = %if.else
  %77 = load ptr, ptr %option, align 8, !dbg !1429, !tbaa !743
  %option_type54 = getelementptr inbounds %struct.GtOption, ptr %77, i32 0, i32 0, !dbg !1431
  %78 = load i32, ptr %option_type54, align 8, !dbg !1431, !tbaa !1391
  %cmp55 = icmp eq i32 %78, 2, !dbg !1432
  br i1 %cmp55, label %if.then56, label %if.else63, !dbg !1433

if.then56:                                        ; preds = %if.else53
  %79 = load ptr, ptr %outstr.addr, align 8, !dbg !1434, !tbaa !743
  call void @gt_str_append_cstr(ptr noundef %79, ptr noundef @.str.34), !dbg !1436
  %80 = load ptr, ptr %option, align 8, !dbg !1437, !tbaa !743
  %default_value57 = getelementptr inbounds %struct.GtOption, ptr %80, i32 0, i32 4, !dbg !1439
  %81 = load double, ptr %default_value57, align 8, !dbg !1440, !tbaa !880
  %cmp58 = fcmp oeq double %81, 0x7FEFFFFFFFFFFFFF, !dbg !1441
  br i1 %cmp58, label %if.then59, label %if.else60, !dbg !1442

if.then59:                                        ; preds = %if.then56
  %82 = load ptr, ptr %default_string, align 8, !dbg !1443, !tbaa !743
  call void @gt_str_append_cstr(ptr noundef %82, ptr noundef @.str.33), !dbg !1444
  br label %if.end62, !dbg !1444

if.else60:                                        ; preds = %if.then56
  %83 = load ptr, ptr %default_string, align 8, !dbg !1445, !tbaa !743
  %84 = load ptr, ptr %option, align 8, !dbg !1446, !tbaa !743
  %default_value61 = getelementptr inbounds %struct.GtOption, ptr %84, i32 0, i32 4, !dbg !1447
  %85 = load double, ptr %default_value61, align 8, !dbg !1448, !tbaa !880
  call void @gt_str_append_double(ptr noundef %83, double noundef %85, i32 noundef 6), !dbg !1449
  br label %if.end62

if.end62:                                         ; preds = %if.else60, %if.then59
  br label %if.end144, !dbg !1450

if.else63:                                        ; preds = %if.else53
  %86 = load ptr, ptr %option, align 8, !dbg !1451, !tbaa !743
  %option_type64 = getelementptr inbounds %struct.GtOption, ptr %86, i32 0, i32 0, !dbg !1453
  %87 = load i32, ptr %option_type64, align 8, !dbg !1453, !tbaa !1391
  %cmp65 = icmp eq i32 %87, 3, !dbg !1454
  br i1 %cmp65, label %if.then66, label %if.else77, !dbg !1455

if.then66:                                        ; preds = %if.else63
  %88 = load ptr, ptr %outstr.addr, align 8, !dbg !1456, !tbaa !743
  call void @gt_str_append_cstr(ptr noundef %88, ptr noundef @.str.35), !dbg !1458
  %89 = load ptr, ptr %option, align 8, !dbg !1459, !tbaa !743
  %default_value67 = getelementptr inbounds %struct.GtOption, ptr %89, i32 0, i32 4, !dbg !1461
  %90 = load ptr, ptr %default_value67, align 8, !dbg !1462, !tbaa !880
  %tobool68 = icmp ne ptr %90, null, !dbg !1459
  br i1 %tobool68, label %lor.lhs.false69, label %if.then73, !dbg !1463

lor.lhs.false69:                                  ; preds = %if.then66
  %91 = load ptr, ptr %option, align 8, !dbg !1464, !tbaa !743
  %default_value70 = getelementptr inbounds %struct.GtOption, ptr %91, i32 0, i32 4, !dbg !1465
  %92 = load ptr, ptr %default_value70, align 8, !dbg !1466, !tbaa !880
  %call71 = call i64 @strlen(ptr noundef %92) #11, !dbg !1467
  %tobool72 = icmp ne i64 %call71, 0, !dbg !1467
  br i1 %tobool72, label %if.else74, label %if.then73, !dbg !1468

if.then73:                                        ; preds = %lor.lhs.false69, %if.then66
  %93 = load ptr, ptr %default_string, align 8, !dbg !1469, !tbaa !743
  call void @gt_str_append_cstr(ptr noundef %93, ptr noundef @.str.33), !dbg !1470
  br label %if.end76, !dbg !1470

if.else74:                                        ; preds = %lor.lhs.false69
  %94 = load ptr, ptr %default_string, align 8, !dbg !1471, !tbaa !743
  %95 = load ptr, ptr %option, align 8, !dbg !1472, !tbaa !743
  %default_value75 = getelementptr inbounds %struct.GtOption, ptr %95, i32 0, i32 4, !dbg !1473
  %96 = load ptr, ptr %default_value75, align 8, !dbg !1474, !tbaa !880
  call void @gt_str_append_cstr(ptr noundef %94, ptr noundef %96), !dbg !1475
  br label %if.end76

if.end76:                                         ; preds = %if.else74, %if.then73
  br label %if.end143, !dbg !1476

if.else77:                                        ; preds = %if.else63
  %97 = load ptr, ptr %option, align 8, !dbg !1477, !tbaa !743
  %option_type78 = getelementptr inbounds %struct.GtOption, ptr %97, i32 0, i32 0, !dbg !1479
  %98 = load i32, ptr %option_type78, align 8, !dbg !1479, !tbaa !1391
  %cmp79 = icmp eq i32 %98, 7, !dbg !1480
  br i1 %cmp79, label %if.then80, label %if.else87, !dbg !1481

if.then80:                                        ; preds = %if.else77
  %99 = load ptr, ptr %outstr.addr, align 8, !dbg !1482, !tbaa !743
  call void @gt_str_append_cstr(ptr noundef %99, ptr noundef @.str.34), !dbg !1484
  %100 = load ptr, ptr %option, align 8, !dbg !1485, !tbaa !743
  %default_value81 = getelementptr inbounds %struct.GtOption, ptr %100, i32 0, i32 4, !dbg !1487
  %101 = load i32, ptr %default_value81, align 8, !dbg !1488, !tbaa !880
  %cmp82 = icmp eq i32 %101, -2147483648, !dbg !1489
  br i1 %cmp82, label %if.then83, label %if.else84, !dbg !1490

if.then83:                                        ; preds = %if.then80
  %102 = load ptr, ptr %default_string, align 8, !dbg !1491, !tbaa !743
  call void @gt_str_append_cstr(ptr noundef %102, ptr noundef @.str.33), !dbg !1492
  br label %if.end86, !dbg !1492

if.else84:                                        ; preds = %if.then80
  %103 = load ptr, ptr %default_string, align 8, !dbg !1493, !tbaa !743
  %104 = load ptr, ptr %option, align 8, !dbg !1494, !tbaa !743
  %default_value85 = getelementptr inbounds %struct.GtOption, ptr %104, i32 0, i32 4, !dbg !1495
  %105 = load i32, ptr %default_value85, align 8, !dbg !1496, !tbaa !880
  call void @gt_str_append_int(ptr noundef %103, i32 noundef %105), !dbg !1497
  br label %if.end86

if.end86:                                         ; preds = %if.else84, %if.then83
  br label %if.end142, !dbg !1498

if.else87:                                        ; preds = %if.else77
  %106 = load ptr, ptr %option, align 8, !dbg !1499, !tbaa !743
  %option_type88 = getelementptr inbounds %struct.GtOption, ptr %106, i32 0, i32 0, !dbg !1501
  %107 = load i32, ptr %option_type88, align 8, !dbg !1501, !tbaa !1391
  %cmp89 = icmp eq i32 %107, 8, !dbg !1502
  br i1 %cmp89, label %if.then90, label %if.else97, !dbg !1503

if.then90:                                        ; preds = %if.else87
  %108 = load ptr, ptr %outstr.addr, align 8, !dbg !1504, !tbaa !743
  call void @gt_str_append_cstr(ptr noundef %108, ptr noundef @.str.34), !dbg !1506
  %109 = load ptr, ptr %option, align 8, !dbg !1507, !tbaa !743
  %default_value91 = getelementptr inbounds %struct.GtOption, ptr %109, i32 0, i32 4, !dbg !1509
  %110 = load i32, ptr %default_value91, align 8, !dbg !1510, !tbaa !880
  %cmp92 = icmp eq i32 %110, -1, !dbg !1511
  br i1 %cmp92, label %if.then93, label %if.else94, !dbg !1512

if.then93:                                        ; preds = %if.then90
  %111 = load ptr, ptr %default_string, align 8, !dbg !1513, !tbaa !743
  call void @gt_str_append_cstr(ptr noundef %111, ptr noundef @.str.33), !dbg !1514
  br label %if.end96, !dbg !1514

if.else94:                                        ; preds = %if.then90
  %112 = load ptr, ptr %default_string, align 8, !dbg !1515, !tbaa !743
  %113 = load ptr, ptr %option, align 8, !dbg !1516, !tbaa !743
  %default_value95 = getelementptr inbounds %struct.GtOption, ptr %113, i32 0, i32 4, !dbg !1517
  %114 = load i32, ptr %default_value95, align 8, !dbg !1518, !tbaa !880
  call void @gt_str_append_uint(ptr noundef %112, i32 noundef %114), !dbg !1519
  br label %if.end96

if.end96:                                         ; preds = %if.else94, %if.then93
  br label %if.end141, !dbg !1520

if.else97:                                        ; preds = %if.else87
  %115 = load ptr, ptr %option, align 8, !dbg !1521, !tbaa !743
  %option_type98 = getelementptr inbounds %struct.GtOption, ptr %115, i32 0, i32 0, !dbg !1523
  %116 = load i32, ptr %option_type98, align 8, !dbg !1523, !tbaa !1391
  %cmp99 = icmp eq i32 %116, 9, !dbg !1524
  br i1 %cmp99, label %if.then100, label %if.else101, !dbg !1525

if.then100:                                       ; preds = %if.else97
  %117 = load ptr, ptr %outstr.addr, align 8, !dbg !1526, !tbaa !743
  call void @gt_str_append_cstr(ptr noundef %117, ptr noundef @.str.34), !dbg !1528
  br label %if.end140, !dbg !1529

if.else101:                                       ; preds = %if.else97
  %118 = load ptr, ptr %option, align 8, !dbg !1530, !tbaa !743
  %option_type102 = getelementptr inbounds %struct.GtOption, ptr %118, i32 0, i32 0, !dbg !1532
  %119 = load i32, ptr %option_type102, align 8, !dbg !1532, !tbaa !1391
  %cmp103 = icmp eq i32 %119, 10, !dbg !1533
  br i1 %cmp103, label %if.then104, label %if.else111, !dbg !1534

if.then104:                                       ; preds = %if.else101
  %120 = load ptr, ptr %outstr.addr, align 8, !dbg !1535, !tbaa !743
  call void @gt_str_append_cstr(ptr noundef %120, ptr noundef @.str.34), !dbg !1537
  %121 = load ptr, ptr %option, align 8, !dbg !1538, !tbaa !743
  %default_value105 = getelementptr inbounds %struct.GtOption, ptr %121, i32 0, i32 4, !dbg !1540
  %122 = load i64, ptr %default_value105, align 8, !dbg !1541, !tbaa !880
  %cmp106 = icmp eq i64 %122, -1, !dbg !1542
  br i1 %cmp106, label %if.then107, label %if.else108, !dbg !1543

if.then107:                                       ; preds = %if.then104
  %123 = load ptr, ptr %default_string, align 8, !dbg !1544, !tbaa !743
  call void @gt_str_append_cstr(ptr noundef %123, ptr noundef @.str.33), !dbg !1545
  br label %if.end110, !dbg !1545

if.else108:                                       ; preds = %if.then104
  %124 = load ptr, ptr %default_string, align 8, !dbg !1546, !tbaa !743
  %125 = load ptr, ptr %option, align 8, !dbg !1547, !tbaa !743
  %default_value109 = getelementptr inbounds %struct.GtOption, ptr %125, i32 0, i32 4, !dbg !1548
  %126 = load i64, ptr %default_value109, align 8, !dbg !1549, !tbaa !880
  call void @gt_str_append_uword(ptr noundef %124, i64 noundef %126), !dbg !1550
  br label %if.end110

if.end110:                                        ; preds = %if.else108, %if.then107
  br label %if.end139, !dbg !1551

if.else111:                                       ; preds = %if.else101
  %127 = load ptr, ptr %option, align 8, !dbg !1552, !tbaa !743
  %option_type112 = getelementptr inbounds %struct.GtOption, ptr %127, i32 0, i32 0, !dbg !1554
  %128 = load i32, ptr %option_type112, align 8, !dbg !1554, !tbaa !1391
  %cmp113 = icmp eq i32 %128, 11, !dbg !1555
  br i1 %cmp113, label %if.then114, label %if.else123, !dbg !1556

if.then114:                                       ; preds = %if.else111
  %129 = load ptr, ptr %outstr.addr, align 8, !dbg !1557, !tbaa !743
  call void @gt_str_append_cstr(ptr noundef %129, ptr noundef @.str.36), !dbg !1559
  %130 = load ptr, ptr %option, align 8, !dbg !1560, !tbaa !743
  %default_value115 = getelementptr inbounds %struct.GtOption, ptr %130, i32 0, i32 4, !dbg !1562
  %start = getelementptr inbounds %struct.GtRange, ptr %default_value115, i32 0, i32 0, !dbg !1563
  %131 = load i64, ptr %start, align 8, !dbg !1563, !tbaa !880
  %cmp116 = icmp eq i64 %131, -1, !dbg !1564
  br i1 %cmp116, label %if.then117, label %if.else118, !dbg !1565

if.then117:                                       ; preds = %if.then114
  %132 = load ptr, ptr %default_string, align 8, !dbg !1566, !tbaa !743
  call void @gt_str_append_cstr(ptr noundef %132, ptr noundef @.str.33), !dbg !1567
  br label %if.end122, !dbg !1567

if.else118:                                       ; preds = %if.then114
  %133 = load ptr, ptr %default_string, align 8, !dbg !1568, !tbaa !743
  call void @gt_str_append_char(ptr noundef %133, i8 noundef signext 91), !dbg !1570
  %134 = load ptr, ptr %default_string, align 8, !dbg !1571, !tbaa !743
  %135 = load ptr, ptr %option, align 8, !dbg !1572, !tbaa !743
  %default_value119 = getelementptr inbounds %struct.GtOption, ptr %135, i32 0, i32 4, !dbg !1573
  %start120 = getelementptr inbounds %struct.GtRange, ptr %default_value119, i32 0, i32 0, !dbg !1574
  %136 = load i64, ptr %start120, align 8, !dbg !1574, !tbaa !880
  call void @gt_str_append_uword(ptr noundef %134, i64 noundef %136), !dbg !1575
  %137 = load ptr, ptr %default_string, align 8, !dbg !1576, !tbaa !743
  call void @gt_str_append_cstr(ptr noundef %137, ptr noundef @.str.37), !dbg !1577
  %138 = load ptr, ptr %default_string, align 8, !dbg !1578, !tbaa !743
  %139 = load ptr, ptr %option, align 8, !dbg !1579, !tbaa !743
  %default_value121 = getelementptr inbounds %struct.GtOption, ptr %139, i32 0, i32 4, !dbg !1580
  %end = getelementptr inbounds %struct.GtRange, ptr %default_value121, i32 0, i32 1, !dbg !1581
  %140 = load i64, ptr %end, align 8, !dbg !1581, !tbaa !880
  call void @gt_str_append_uword(ptr noundef %138, i64 noundef %140), !dbg !1582
  %141 = load ptr, ptr %default_string, align 8, !dbg !1583, !tbaa !743
  call void @gt_str_append_char(ptr noundef %141, i8 noundef signext 93), !dbg !1584
  br label %if.end122

if.end122:                                        ; preds = %if.else118, %if.then117
  br label %if.end138, !dbg !1585

if.else123:                                       ; preds = %if.else111
  %142 = load ptr, ptr %option, align 8, !dbg !1586, !tbaa !743
  %option_type124 = getelementptr inbounds %struct.GtOption, ptr %142, i32 0, i32 0, !dbg !1588
  %143 = load i32, ptr %option_type124, align 8, !dbg !1588, !tbaa !1391
  %cmp125 = icmp eq i32 %143, 12, !dbg !1589
  br i1 %cmp125, label %if.then126, label %if.end137, !dbg !1590

if.then126:                                       ; preds = %if.else123
  %144 = load ptr, ptr %outstr.addr, align 8, !dbg !1591, !tbaa !743
  call void @gt_str_append_cstr(ptr noundef %144, ptr noundef @.str.38), !dbg !1593
  %145 = load ptr, ptr %option, align 8, !dbg !1594, !tbaa !743
  %default_value127 = getelementptr inbounds %struct.GtOption, ptr %145, i32 0, i32 4, !dbg !1596
  %146 = load ptr, ptr %default_value127, align 8, !dbg !1597, !tbaa !880
  %tobool128 = icmp ne ptr %146, null, !dbg !1594
  br i1 %tobool128, label %lor.lhs.false129, label %if.then133, !dbg !1598

lor.lhs.false129:                                 ; preds = %if.then126
  %147 = load ptr, ptr %option, align 8, !dbg !1599, !tbaa !743
  %default_value130 = getelementptr inbounds %struct.GtOption, ptr %147, i32 0, i32 4, !dbg !1600
  %148 = load ptr, ptr %default_value130, align 8, !dbg !1601, !tbaa !880
  %call131 = call i64 @strlen(ptr noundef %148) #11, !dbg !1602
  %tobool132 = icmp ne i64 %call131, 0, !dbg !1602
  br i1 %tobool132, label %if.else134, label %if.then133, !dbg !1603

if.then133:                                       ; preds = %lor.lhs.false129, %if.then126
  %149 = load ptr, ptr %default_string, align 8, !dbg !1604, !tbaa !743
  call void @gt_str_append_cstr(ptr noundef %149, ptr noundef @.str.33), !dbg !1605
  br label %if.end136, !dbg !1605

if.else134:                                       ; preds = %lor.lhs.false129
  %150 = load ptr, ptr %default_string, align 8, !dbg !1606, !tbaa !743
  %151 = load ptr, ptr %option, align 8, !dbg !1607, !tbaa !743
  %default_value135 = getelementptr inbounds %struct.GtOption, ptr %151, i32 0, i32 4, !dbg !1608
  %152 = load ptr, ptr %default_value135, align 8, !dbg !1609, !tbaa !880
  call void @gt_str_append_cstr(ptr noundef %150, ptr noundef %152), !dbg !1610
  br label %if.end136

if.end136:                                        ; preds = %if.else134, %if.then133
  br label %if.end137, !dbg !1611

if.end137:                                        ; preds = %if.end136, %if.else123
  br label %if.end138

if.end138:                                        ; preds = %if.end137, %if.end122
  br label %if.end139

if.end139:                                        ; preds = %if.end138, %if.end110
  br label %if.end140

if.end140:                                        ; preds = %if.end139, %if.then100
  br label %if.end141

if.end141:                                        ; preds = %if.end140, %if.end96
  br label %if.end142

if.end142:                                        ; preds = %if.end141, %if.end86
  br label %if.end143

if.end143:                                        ; preds = %if.end142, %if.end76
  br label %if.end144

if.end144:                                        ; preds = %if.end143, %if.end62
  br label %if.end145

if.end145:                                        ; preds = %if.end144, %if.end52
  br label %if.end146

if.end146:                                        ; preds = %if.end145, %if.then38
  %153 = load ptr, ptr %outstr.addr, align 8, !dbg !1612, !tbaa !743
  call void @gt_str_append_cstr(ptr noundef %153, ptr noundef @.str.39), !dbg !1613
  %154 = load ptr, ptr %outstr.addr, align 8, !dbg !1614, !tbaa !743
  %155 = load ptr, ptr %option, align 8, !dbg !1615, !tbaa !743
  %description = getelementptr inbounds %struct.GtOption, ptr %155, i32 0, i32 2, !dbg !1616
  %156 = load ptr, ptr %description, align 8, !dbg !1616, !tbaa !1617
  %call147 = call ptr @gt_str_get(ptr noundef %156), !dbg !1618
  call void @gt_str_append_cstr(ptr noundef %154, ptr noundef %call147), !dbg !1619
  %157 = load ptr, ptr %option, align 8, !dbg !1620, !tbaa !743
  %hide_default = getelementptr inbounds %struct.GtOption, ptr %157, i32 0, i32 10, !dbg !1622
  %158 = load i8, ptr %hide_default, align 2, !dbg !1622, !tbaa !1623, !range !1270, !noundef !1271
  %tobool148 = trunc i8 %158 to i1, !dbg !1622
  br i1 %tobool148, label %if.end153, label %land.lhs.true, !dbg !1624

land.lhs.true:                                    ; preds = %if.end146
  %159 = load ptr, ptr %default_string, align 8, !dbg !1625, !tbaa !743
  %call149 = call i64 @gt_str_length(ptr noundef %159), !dbg !1626
  %cmp150 = icmp ugt i64 %call149, 0, !dbg !1627
  br i1 %cmp150, label %if.then151, label %if.end153, !dbg !1628

if.then151:                                       ; preds = %land.lhs.true
  %160 = load ptr, ptr %outstr.addr, align 8, !dbg !1629, !tbaa !743
  call void @gt_str_append_cstr(ptr noundef %160, ptr noundef @.str.40), !dbg !1631
  %161 = load ptr, ptr %outstr.addr, align 8, !dbg !1632, !tbaa !743
  %162 = load ptr, ptr %default_string, align 8, !dbg !1633, !tbaa !743
  %call152 = call ptr @gt_str_get(ptr noundef %162), !dbg !1634
  call void @gt_str_append_cstr(ptr noundef %161, ptr noundef %call152), !dbg !1635
  %163 = load ptr, ptr %outstr.addr, align 8, !dbg !1636, !tbaa !743
  call void @gt_str_append_cstr(ptr noundef %163, ptr noundef @.str.41), !dbg !1637
  br label %if.end153, !dbg !1638

if.end153:                                        ; preds = %if.then151, %land.lhs.true, %if.end146
  %164 = load ptr, ptr %outstr.addr, align 8, !dbg !1639, !tbaa !743
  call void @gt_str_append_cstr(ptr noundef %164, ptr noundef @.str.23), !dbg !1640
  %165 = load ptr, ptr %default_string, align 8, !dbg !1641, !tbaa !743
  call void @gt_str_reset(ptr noundef %165), !dbg !1642
  br label %for.inc154, !dbg !1643

for.inc154:                                       ; preds = %if.end153, %if.then34
  %166 = load i64, ptr %i, align 8, !dbg !1644, !tbaa !1287
  %inc155 = add i64 %166, 1, !dbg !1644
  store i64 %inc155, ptr %i, align 8, !dbg !1644, !tbaa !1287
  br label %for.cond26, !dbg !1645, !llvm.loop !1646

for.end156:                                       ; preds = %for.cond26
  %167 = load ptr, ptr %default_string, align 8, !dbg !1648, !tbaa !743
  call void @gt_str_delete(ptr noundef %167), !dbg !1649
  br label %if.end157, !dbg !1650

if.end157:                                        ; preds = %for.end156, %for.end
  %168 = load ptr, ptr %op.addr, align 8, !dbg !1651, !tbaa !743
  %comment_func = getelementptr inbounds %struct.GtOptionParser, ptr %168, i32 0, i32 7, !dbg !1652
  %169 = load ptr, ptr %comment_func, align 8, !dbg !1652, !tbaa !1059
  %tobool158 = icmp ne ptr %169, null, !dbg !1651
  br i1 %tobool158, label %if.then159, label %if.end195, !dbg !1653

if.then159:                                       ; preds = %if.end157
  call void @llvm.lifetime.start.p0(i64 4, ptr %old_stdout) #10, !dbg !1654
  tail call void @llvm.dbg.declare(metadata ptr %old_stdout, metadata !1221, metadata !DIExpression()), !dbg !1655
  call void @llvm.lifetime.start.p0(i64 8, ptr %out_pipe) #10, !dbg !1654
  tail call void @llvm.dbg.declare(metadata ptr %out_pipe, metadata !1224, metadata !DIExpression()), !dbg !1656
  call void @llvm.lifetime.start.p0(i64 4, ptr %rval) #10, !dbg !1657
  tail call void @llvm.dbg.declare(metadata ptr %rval, metadata !1226, metadata !DIExpression()), !dbg !1658
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #10, !dbg !1659
  tail call void @llvm.dbg.declare(metadata ptr %flags, metadata !1227, metadata !DIExpression()), !dbg !1660
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #10, !dbg !1661
  tail call void @llvm.dbg.declare(metadata ptr %c, metadata !1228, metadata !DIExpression()), !dbg !1662
  call void @llvm.lifetime.start.p0(i64 8192, ptr %prognamebuf) #10, !dbg !1661
  tail call void @llvm.dbg.declare(metadata ptr %prognamebuf, metadata !1229, metadata !DIExpression()), !dbg !1663
  %170 = load ptr, ptr @stdout, align 8, !dbg !1664, !tbaa !743
  %call160 = call i32 @fflush(ptr noundef %170), !dbg !1665
  %call161 = call i32 @dup(i32 noundef 1) #10, !dbg !1666
  store i32 %call161, ptr %old_stdout, align 4, !dbg !1667, !tbaa !1154
  %arraydecay = getelementptr inbounds [2 x i32], ptr %out_pipe, i64 0, i64 0, !dbg !1668
  %call162 = call i32 @pipe(ptr noundef %arraydecay) #10, !dbg !1670
  store i32 %call162, ptr %rval, align 4, !dbg !1671, !tbaa !1154
  %cmp163 = icmp eq i32 %call162, -1, !dbg !1672
  br i1 %cmp163, label %if.then164, label %if.end165, !dbg !1673

if.then164:                                       ; preds = %if.then159
  call void @perror(ptr noundef @.str.42), !dbg !1674
  call void @exit(i32 noundef 1) #9, !dbg !1676
  unreachable, !dbg !1676

if.end165:                                        ; preds = %if.then159
  %arrayidx = getelementptr inbounds [2 x i32], ptr %out_pipe, i64 0, i64 0, !dbg !1677
  %171 = load i32, ptr %arrayidx, align 4, !dbg !1677, !tbaa !1154
  %call166 = call i32 (i32, i32, ...) @fcntl64(i32 noundef %171, i32 noundef 3), !dbg !1678
  %conv = sext i32 %call166 to i64, !dbg !1678
  store i64 %conv, ptr %flags, align 8, !dbg !1679, !tbaa !1287
  %172 = load i64, ptr %flags, align 8, !dbg !1680, !tbaa !1287
  %or = or i64 %172, 2048, !dbg !1680
  store i64 %or, ptr %flags, align 8, !dbg !1680, !tbaa !1287
  %arrayidx167 = getelementptr inbounds [2 x i32], ptr %out_pipe, i64 0, i64 0, !dbg !1681
  %173 = load i32, ptr %arrayidx167, align 4, !dbg !1681, !tbaa !1154
  %174 = load i64, ptr %flags, align 8, !dbg !1682, !tbaa !1287
  %call168 = call i32 (i32, i32, ...) @fcntl64(i32 noundef %173, i32 noundef 4, i64 noundef %174), !dbg !1683
  %arrayidx169 = getelementptr inbounds [2 x i32], ptr %out_pipe, i64 0, i64 1, !dbg !1684
  %175 = load i32, ptr %arrayidx169, align 4, !dbg !1684, !tbaa !1154
  %call170 = call i32 @dup2(i32 noundef %175, i32 noundef 1) #10, !dbg !1685
  %arrayidx171 = getelementptr inbounds [2 x i32], ptr %out_pipe, i64 0, i64 1, !dbg !1686
  %176 = load i32, ptr %arrayidx171, align 4, !dbg !1686, !tbaa !1154
  %call172 = call i32 @close(i32 noundef %176), !dbg !1687
  %177 = load ptr, ptr %toolname.addr, align 8, !dbg !1688, !tbaa !743
  %call173 = call i32 @strcmp(ptr noundef %177, ptr noundef @.str.43) #11, !dbg !1690
  %tobool174 = icmp ne i32 %call173, 0, !dbg !1690
  br i1 %tobool174, label %if.else179, label %if.then175, !dbg !1691

if.then175:                                       ; preds = %if.end165
  %arraydecay176 = getelementptr inbounds [8192 x i8], ptr %prognamebuf, i64 0, i64 0, !dbg !1692
  %178 = load ptr, ptr %err.addr, align 8, !dbg !1693, !tbaa !743
  %call177 = call ptr @gt_error_get_progname(ptr noundef %178), !dbg !1694
  %call178 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay176, i64 noundef 8192, ptr noundef @.str.44, ptr noundef %call177) #10, !dbg !1695
  br label %if.end184, !dbg !1696

if.else179:                                       ; preds = %if.end165
  %arraydecay180 = getelementptr inbounds [8192 x i8], ptr %prognamebuf, i64 0, i64 0, !dbg !1697
  %179 = load ptr, ptr %err.addr, align 8, !dbg !1699, !tbaa !743
  %call181 = call ptr @gt_error_get_progname(ptr noundef %179), !dbg !1700
  %180 = load ptr, ptr %toolname.addr, align 8, !dbg !1701, !tbaa !743
  %181 = load ptr, ptr %toolname.addr, align 8, !dbg !1702, !tbaa !743
  %call182 = call i64 @gt_cstr_length_up_to_char(ptr noundef %181, i8 noundef signext 32), !dbg !1703
  %add.ptr = getelementptr inbounds i8, ptr %180, i64 %call182, !dbg !1704
  %call183 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay180, i64 noundef 8192, ptr noundef @.str.45, ptr noundef %call181, ptr noundef %add.ptr) #10, !dbg !1705
  br label %if.end184

if.end184:                                        ; preds = %if.else179, %if.then175
  %182 = load ptr, ptr %op.addr, align 8, !dbg !1706, !tbaa !743
  %comment_func185 = getelementptr inbounds %struct.GtOptionParser, ptr %182, i32 0, i32 7, !dbg !1707
  %183 = load ptr, ptr %comment_func185, align 8, !dbg !1707, !tbaa !1059
  %arraydecay186 = getelementptr inbounds [8192 x i8], ptr %prognamebuf, i64 0, i64 0, !dbg !1708
  %184 = load ptr, ptr %op.addr, align 8, !dbg !1709, !tbaa !743
  %comment_func_data = getelementptr inbounds %struct.GtOptionParser, ptr %184, i32 0, i32 8, !dbg !1710
  %185 = load ptr, ptr %comment_func_data, align 8, !dbg !1710, !tbaa !1064
  %186 = load ptr, ptr %err.addr, align 8, !dbg !1711, !tbaa !743
  %call187 = call i32 %183(ptr noundef %arraydecay186, ptr noundef %185, ptr noundef %186), !dbg !1706
  store i32 %call187, ptr %had_err, align 4, !dbg !1712, !tbaa !1154
  %187 = load ptr, ptr @stdout, align 8, !dbg !1713, !tbaa !743
  %call188 = call i32 @fflush(ptr noundef %187), !dbg !1714
  br label %while.cond, !dbg !1715

while.cond:                                       ; preds = %while.body, %if.end184
  %arrayidx189 = getelementptr inbounds [2 x i32], ptr %out_pipe, i64 0, i64 0, !dbg !1716
  %188 = load i32, ptr %arrayidx189, align 4, !dbg !1716, !tbaa !1154
  %call190 = call i64 @read(i32 noundef %188, ptr noundef %c, i64 noundef 1), !dbg !1717
  %cmp191 = icmp sgt i64 %call190, 0, !dbg !1718
  br i1 %cmp191, label %while.body, label %while.end, !dbg !1715

while.body:                                       ; preds = %while.cond
  %189 = load ptr, ptr %outstr.addr, align 8, !dbg !1719, !tbaa !743
  %190 = load i8, ptr %c, align 1, !dbg !1720, !tbaa !880
  call void @gt_str_append_char(ptr noundef %189, i8 noundef signext %190), !dbg !1721
  br label %while.cond, !dbg !1715, !llvm.loop !1722

while.end:                                        ; preds = %while.cond
  %191 = load i32, ptr %old_stdout, align 4, !dbg !1724, !tbaa !1154
  %call193 = call i32 @dup2(i32 noundef %191, i32 noundef 1) #10, !dbg !1725
  %192 = load i32, ptr %old_stdout, align 4, !dbg !1726, !tbaa !1154
  %call194 = call i32 @close(i32 noundef %192), !dbg !1727
  call void @llvm.lifetime.end.p0(i64 8192, ptr %prognamebuf) #10, !dbg !1728
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #10, !dbg !1728
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #10, !dbg !1728
  call void @llvm.lifetime.end.p0(i64 4, ptr %rval) #10, !dbg !1728
  call void @llvm.lifetime.end.p0(i64 8, ptr %out_pipe) #10, !dbg !1728
  call void @llvm.lifetime.end.p0(i64 4, ptr %old_stdout) #10, !dbg !1728
  br label %if.end195, !dbg !1729

if.end195:                                        ; preds = %while.end, %if.end157
  %193 = load ptr, ptr %outstr.addr, align 8, !dbg !1730, !tbaa !743
  call void @gt_str_append_cstr(ptr noundef %193, ptr noundef @.str.46), !dbg !1731
  %194 = load i32, ptr %had_err, align 4, !dbg !1732, !tbaa !1154
  %tobool196 = icmp ne i32 %194, 0, !dbg !1732
  br i1 %tobool196, label %if.end206, label %if.then197, !dbg !1734

if.then197:                                       ; preds = %if.end195
  %195 = load ptr, ptr %op.addr, align 8, !dbg !1735, !tbaa !743
  %refer_to_manual = getelementptr inbounds %struct.GtOptionParser, ptr %195, i32 0, i32 6, !dbg !1738
  %196 = load i8, ptr %refer_to_manual, align 1, !dbg !1738, !tbaa !1036, !range !1270, !noundef !1271
  %tobool198 = trunc i8 %196 to i1, !dbg !1738
  br i1 %tobool198, label %if.then199, label %if.end202, !dbg !1739

if.then199:                                       ; preds = %if.then197
  %197 = load ptr, ptr %outstr.addr, align 8, !dbg !1740, !tbaa !743
  call void @print_asciidoc_header(ptr noundef @.str.47, ptr noundef %197), !dbg !1742
  %198 = load ptr, ptr %outstr.addr, align 8, !dbg !1743, !tbaa !743
  call void @gt_str_append_cstr(ptr noundef %198, ptr noundef @.str.48), !dbg !1744
  %199 = load ptr, ptr %outstr.addr, align 8, !dbg !1745, !tbaa !743
  %200 = load ptr, ptr %toolname.addr, align 8, !dbg !1746, !tbaa !743
  %201 = load ptr, ptr %toolname.addr, align 8, !dbg !1747, !tbaa !743
  %call200 = call i64 @gt_cstr_length_up_to_char(ptr noundef %201, i8 noundef signext 32), !dbg !1748
  %add.ptr201 = getelementptr inbounds i8, ptr %200, i64 %call200, !dbg !1749
  call void @gt_str_append_cstr(ptr noundef %199, ptr noundef %add.ptr201), !dbg !1750
  %202 = load ptr, ptr %outstr.addr, align 8, !dbg !1751, !tbaa !743
  call void @gt_str_append_cstr(ptr noundef %202, ptr noundef @.str.49), !dbg !1752
  br label %if.end202, !dbg !1753

if.end202:                                        ; preds = %if.then199, %if.then197
  %203 = load ptr, ptr %outstr.addr, align 8, !dbg !1754, !tbaa !743
  call void @print_asciidoc_header(ptr noundef @.str.50, ptr noundef %203), !dbg !1755
  %204 = load ptr, ptr %outstr.addr, align 8, !dbg !1756, !tbaa !743
  call void @gt_str_append_cstr(ptr noundef %204, ptr noundef @.str.51), !dbg !1757
  %205 = load ptr, ptr %outstr.addr, align 8, !dbg !1758, !tbaa !743
  %206 = load ptr, ptr %op.addr, align 8, !dbg !1759, !tbaa !743
  %mail_address = getelementptr inbounds %struct.GtOptionParser, ptr %206, i32 0, i32 10, !dbg !1760
  %207 = load ptr, ptr %mail_address, align 8, !dbg !1760, !tbaa !1207
  %tobool203 = icmp ne ptr %207, null, !dbg !1759
  br i1 %tobool203, label %cond.true, label %cond.false, !dbg !1759

cond.true:                                        ; preds = %if.end202
  %208 = load ptr, ptr %op.addr, align 8, !dbg !1761, !tbaa !743
  %mail_address204 = getelementptr inbounds %struct.GtOptionParser, ptr %208, i32 0, i32 10, !dbg !1762
  %209 = load ptr, ptr %mail_address204, align 8, !dbg !1762, !tbaa !1207
  br label %cond.end, !dbg !1759

cond.false:                                       ; preds = %if.end202
  br label %cond.end, !dbg !1759

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond205 = phi ptr [ %209, %cond.true ], [ @.str.52, %cond.false ], !dbg !1759
  call void @gt_str_append_cstr(ptr noundef %205, ptr noundef %cond205), !dbg !1763
  %210 = load ptr, ptr %outstr.addr, align 8, !dbg !1764, !tbaa !743
  call void @gt_str_append_cstr(ptr noundef %210, ptr noundef @.str.53), !dbg !1765
  br label %if.end206, !dbg !1766

if.end206:                                        ; preds = %cond.end, %if.end195
  %211 = load i32, ptr %had_err, align 4, !dbg !1767, !tbaa !1154
  call void @llvm.lifetime.end.p0(i64 4, ptr %had_err) #10, !dbg !1768
  call void @llvm.lifetime.end.p0(i64 8, ptr %default_string) #10, !dbg !1768
  call void @llvm.lifetime.end.p0(i64 8, ptr %option) #10, !dbg !1768
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #10, !dbg !1768
  ret i32 %211, !dbg !1769
}

declare !dbg !1770 zeroext i1 @gt_error_is_set(ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal void @add_common_options(ptr noundef %op) #0 !dbg !1775 {
entry:
  %op.addr = alloca ptr, align 8
  %has_extended_options = alloca i8, align 1
  %option = alloca ptr, align 8
  store ptr %op, ptr %op.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !1777, metadata !DIExpression()), !dbg !1780
  call void @llvm.lifetime.start.p0(i64 1, ptr %has_extended_options) #10, !dbg !1781
  tail call void @llvm.dbg.declare(metadata ptr %has_extended_options, metadata !1778, metadata !DIExpression()), !dbg !1782
  call void @llvm.lifetime.start.p0(i64 8, ptr %option) #10, !dbg !1783
  tail call void @llvm.dbg.declare(metadata ptr %option, metadata !1779, metadata !DIExpression()), !dbg !1784
  br label %do.body, !dbg !1785

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %op.addr, align 8, !dbg !1786, !tbaa !743
  %tobool = icmp ne ptr %0, null, !dbg !1786
  br i1 %tobool, label %if.end, label %if.then, !dbg !1789

if.then:                                          ; preds = %do.body
  %1 = load ptr, ptr @stderr, align 8, !dbg !1790, !tbaa !743
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str, ptr noundef @.str.9, ptr noundef @__func__.add_common_options, ptr noundef @.str.2, i32 noundef 520), !dbg !1790
  call void @abort() #9, !dbg !1790
  unreachable, !dbg !1790

if.end:                                           ; preds = %do.body
  br label %do.cond, !dbg !1789

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !1789

do.end:                                           ; preds = %do.cond
  %2 = load ptr, ptr %op.addr, align 8, !dbg !1792, !tbaa !743
  %options = getelementptr inbounds %struct.GtOptionParser, ptr %2, i32 0, i32 3, !dbg !1793
  %3 = load ptr, ptr %options, align 8, !dbg !1793, !tbaa !912
  %call1 = call zeroext i1 @has_extended_option(ptr noundef %3), !dbg !1794
  %frombool = zext i1 %call1 to i8, !dbg !1795
  store i8 %frombool, ptr %has_extended_options, align 1, !dbg !1795, !tbaa !1796
  %4 = load i8, ptr %has_extended_options, align 1, !dbg !1797, !tbaa !1796, !range !1270, !noundef !1271
  %tobool2 = trunc i8 %4 to i1, !dbg !1797
  %call3 = call ptr @gt_option_new_help(i1 noundef zeroext %tobool2), !dbg !1798
  store ptr %call3, ptr %option, align 8, !dbg !1799, !tbaa !743
  %5 = load ptr, ptr %op.addr, align 8, !dbg !1800, !tbaa !743
  %6 = load ptr, ptr %option, align 8, !dbg !1801, !tbaa !743
  call void @gt_option_parser_add_option(ptr noundef %5, ptr noundef %6), !dbg !1802
  %7 = load i8, ptr %has_extended_options, align 1, !dbg !1803, !tbaa !1796, !range !1270, !noundef !1271
  %tobool4 = trunc i8 %7 to i1, !dbg !1803
  br i1 %tobool4, label %if.then5, label %if.end7, !dbg !1805

if.then5:                                         ; preds = %do.end
  %call6 = call ptr @gt_option_new_helpplus(), !dbg !1806
  store ptr %call6, ptr %option, align 8, !dbg !1808, !tbaa !743
  %8 = load ptr, ptr %op.addr, align 8, !dbg !1809, !tbaa !743
  %9 = load ptr, ptr %option, align 8, !dbg !1810, !tbaa !743
  call void @gt_option_parser_add_option(ptr noundef %8, ptr noundef %9), !dbg !1811
  br label %if.end7, !dbg !1812

if.end7:                                          ; preds = %if.then5, %do.end
  %call8 = call ptr @gt_option_new_helpdev(), !dbg !1813
  store ptr %call8, ptr %option, align 8, !dbg !1814, !tbaa !743
  %10 = load ptr, ptr %op.addr, align 8, !dbg !1815, !tbaa !743
  %11 = load ptr, ptr %option, align 8, !dbg !1816, !tbaa !743
  call void @gt_option_parser_add_option(ptr noundef %10, ptr noundef %11), !dbg !1817
  %call9 = call ptr @gt_option_new_version(), !dbg !1818
  store ptr %call9, ptr %option, align 8, !dbg !1819, !tbaa !743
  %12 = load ptr, ptr %op.addr, align 8, !dbg !1820, !tbaa !743
  %13 = load ptr, ptr %option, align 8, !dbg !1821, !tbaa !743
  call void @gt_option_parser_add_option(ptr noundef %12, ptr noundef %13), !dbg !1822
  call void @llvm.lifetime.end.p0(i64 8, ptr %option) #10, !dbg !1823
  call void @llvm.lifetime.end.p0(i64 1, ptr %has_extended_options) #10, !dbg !1823
  ret void, !dbg !1823
}

; Function Attrs: nounwind uwtable
define internal void @print_toolname(ptr noundef %toolname, ptr noundef %outstr, i1 noundef zeroext %upper) #0 !dbg !1824 {
entry:
  %toolname.addr = alloca ptr, align 8
  %outstr.addr = alloca ptr, align 8
  %upper.addr = alloca i8, align 1
  %i = alloca i64, align 8
  %c = alloca i8, align 1
  %__res = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %toolname, ptr %toolname.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %toolname.addr, metadata !1828, metadata !DIExpression()), !dbg !1841
  store ptr %outstr, ptr %outstr.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %outstr.addr, metadata !1829, metadata !DIExpression()), !dbg !1842
  %frombool = zext i1 %upper to i8
  store i8 %frombool, ptr %upper.addr, align 1, !tbaa !1796
  tail call void @llvm.dbg.declare(metadata ptr %upper.addr, metadata !1830, metadata !DIExpression()), !dbg !1843
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #10, !dbg !1844
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !1831, metadata !DIExpression()), !dbg !1845
  store i64 0, ptr %i, align 8, !dbg !1846, !tbaa !1287
  br label %for.cond, !dbg !1847

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !dbg !1848, !tbaa !1287
  %1 = load ptr, ptr %toolname.addr, align 8, !dbg !1849, !tbaa !743
  %call = call i64 @strlen(ptr noundef %1) #11, !dbg !1850
  %cmp = icmp ult i64 %0, %call, !dbg !1851
  br i1 %cmp, label %for.body, label %for.end, !dbg !1852

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #10, !dbg !1853
  tail call void @llvm.dbg.declare(metadata ptr %c, metadata !1832, metadata !DIExpression()), !dbg !1854
  %2 = load ptr, ptr %toolname.addr, align 8, !dbg !1855, !tbaa !743
  %3 = load i64, ptr %i, align 8, !dbg !1856, !tbaa !1287
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 %3, !dbg !1855
  %4 = load i8, ptr %arrayidx, align 1, !dbg !1855, !tbaa !880
  store i8 %4, ptr %c, align 1, !dbg !1854, !tbaa !880
  %5 = load i8, ptr %c, align 1, !dbg !1857, !tbaa !880
  %conv = sext i8 %5 to i32, !dbg !1857
  %cmp1 = icmp eq i32 %conv, 32, !dbg !1858
  br i1 %cmp1, label %if.then, label %if.else, !dbg !1859

if.then:                                          ; preds = %for.body
  %6 = load ptr, ptr %outstr.addr, align 8, !dbg !1860, !tbaa !743
  call void @gt_str_append_char(ptr noundef %6, i8 noundef signext 45), !dbg !1861
  br label %if.end9, !dbg !1861

if.else:                                          ; preds = %for.body
  %7 = load i8, ptr %upper.addr, align 1, !dbg !1862, !tbaa !1796, !range !1270, !noundef !1271
  %tobool = trunc i8 %7 to i1, !dbg !1862
  br i1 %tobool, label %if.then3, label %if.else8, !dbg !1863

if.then3:                                         ; preds = %if.else
  %8 = load ptr, ptr %outstr.addr, align 8, !dbg !1864, !tbaa !743
  call void @llvm.lifetime.start.p0(i64 4, ptr %__res) #10, !dbg !1865
  tail call void @llvm.dbg.declare(metadata ptr %__res, metadata !1836, metadata !DIExpression()), !dbg !1865
  %call4 = call ptr @__ctype_toupper_loc() #12, !dbg !1866
  %9 = load ptr, ptr %call4, align 8, !dbg !1866, !tbaa !743
  %10 = load i8, ptr %c, align 1, !dbg !1866, !tbaa !880
  %conv5 = sext i8 %10 to i32, !dbg !1866
  %idxprom = sext i32 %conv5 to i64, !dbg !1866
  %arrayidx6 = getelementptr inbounds i32, ptr %9, i64 %idxprom, !dbg !1866
  %11 = load i32, ptr %arrayidx6, align 4, !dbg !1866, !tbaa !1154
  store i32 %11, ptr %__res, align 4, !dbg !1866, !tbaa !1154
  %12 = load i32, ptr %__res, align 4, !dbg !1865, !tbaa !1154
  store i32 %12, ptr %tmp, align 4, !dbg !1866, !tbaa !1154
  call void @llvm.lifetime.end.p0(i64 4, ptr %__res) #10, !dbg !1868
  %13 = load i32, ptr %tmp, align 4, !dbg !1865, !tbaa !1154
  %conv7 = trunc i32 %13 to i8, !dbg !1868
  call void @gt_str_append_char(ptr noundef %8, i8 noundef signext %conv7), !dbg !1869
  br label %if.end, !dbg !1869

if.else8:                                         ; preds = %if.else
  %14 = load ptr, ptr %outstr.addr, align 8, !dbg !1870, !tbaa !743
  %15 = load i8, ptr %c, align 1, !dbg !1871, !tbaa !880
  call void @gt_str_append_char(ptr noundef %14, i8 noundef signext %15), !dbg !1872
  br label %if.end

if.end:                                           ; preds = %if.else8, %if.then3
  br label %if.end9

if.end9:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #10, !dbg !1873
  br label %for.inc, !dbg !1874

for.inc:                                          ; preds = %if.end9
  %16 = load i64, ptr %i, align 8, !dbg !1875, !tbaa !1287
  %inc = add i64 %16, 1, !dbg !1875
  store i64 %inc, ptr %i, align 8, !dbg !1875, !tbaa !1287
  br label %for.cond, !dbg !1876, !llvm.loop !1877

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #10, !dbg !1879
  ret void, !dbg !1879
}

declare !dbg !1880 void @gt_str_append_cstr(ptr noundef, ptr noundef) #1

declare !dbg !1883 void @gt_str_append_char(ptr noundef, i8 noundef signext) #1

; Function Attrs: nounwind uwtable
define internal void @print_asciidoc_header(ptr noundef %hdr, ptr noundef %outstr) #0 !dbg !1886 {
entry:
  %hdr.addr = alloca ptr, align 8
  %outstr.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  store ptr %hdr, ptr %hdr.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %hdr.addr, metadata !1890, metadata !DIExpression()), !dbg !1893
  store ptr %outstr, ptr %outstr.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %outstr.addr, metadata !1891, metadata !DIExpression()), !dbg !1894
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #10, !dbg !1895
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !1892, metadata !DIExpression()), !dbg !1896
  %0 = load ptr, ptr %outstr.addr, align 8, !dbg !1897, !tbaa !743
  %1 = load ptr, ptr %hdr.addr, align 8, !dbg !1898, !tbaa !743
  call void @gt_str_append_cstr(ptr noundef %0, ptr noundef %1), !dbg !1899
  %2 = load ptr, ptr %outstr.addr, align 8, !dbg !1900, !tbaa !743
  call void @gt_str_append_char(ptr noundef %2, i8 noundef signext 10), !dbg !1901
  store i64 0, ptr %i, align 8, !dbg !1902, !tbaa !1287
  br label %for.cond, !dbg !1904

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i64, ptr %i, align 8, !dbg !1905, !tbaa !1287
  %4 = load ptr, ptr %hdr.addr, align 8, !dbg !1907, !tbaa !743
  %call = call i64 @strlen(ptr noundef %4) #11, !dbg !1908
  %cmp = icmp ult i64 %3, %call, !dbg !1909
  br i1 %cmp, label %for.body, label %for.end, !dbg !1910

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %outstr.addr, align 8, !dbg !1911, !tbaa !743
  call void @gt_str_append_char(ptr noundef %5, i8 noundef signext 45), !dbg !1912
  br label %for.inc, !dbg !1912

for.inc:                                          ; preds = %for.body
  %6 = load i64, ptr %i, align 8, !dbg !1913, !tbaa !1287
  %inc = add i64 %6, 1, !dbg !1913
  store i64 %inc, ptr %i, align 8, !dbg !1913, !tbaa !1287
  br label %for.cond, !dbg !1914, !llvm.loop !1915

for.end:                                          ; preds = %for.cond
  %7 = load ptr, ptr %outstr.addr, align 8, !dbg !1917, !tbaa !743
  call void @gt_str_append_cstr(ptr noundef %7, ptr noundef @.str.23), !dbg !1918
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #10, !dbg !1919
  ret void, !dbg !1919
}

declare !dbg !1920 i64 @gt_array_size(ptr noundef) #1

declare !dbg !1925 ptr @gt_str_new() #1

declare !dbg !1928 ptr @gt_array_get(ptr noundef, i64 noundef) #1

declare !dbg !1931 void @gt_str_append_double(ptr noundef, double noundef, i32 noundef) #1

declare !dbg !1934 void @gt_str_append_int(ptr noundef, i32 noundef) #1

declare !dbg !1937 void @gt_str_append_uint(ptr noundef, i32 noundef) #1

declare !dbg !1940 void @gt_str_append_uword(ptr noundef, i64 noundef) #1

declare !dbg !1943 i64 @gt_str_length(ptr noundef) #1

declare !dbg !1946 void @gt_str_reset(ptr noundef) #1

declare !dbg !1949 void @gt_str_delete(ptr noundef) #1

declare !dbg !1950 i32 @fflush(ptr noundef) #1

; Function Attrs: nounwind
declare !dbg !1953 i32 @dup(i32 noundef) #6

; Function Attrs: nounwind
declare !dbg !1957 i32 @pipe(ptr noundef) #6

declare !dbg !1960 void @perror(ptr noundef) #1

; Function Attrs: noreturn nounwind
declare !dbg !1961 void @exit(i32 noundef) #2

declare !dbg !1964 i32 @fcntl64(i32 noundef, i32 noundef, ...) #1

; Function Attrs: nounwind
declare !dbg !1968 i32 @dup2(i32 noundef, i32 noundef) #6

declare !dbg !1971 i32 @close(i32 noundef) #1

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !1972 i32 @strcmp(ptr noundef, ptr noundef) #4

; Function Attrs: nounwind
declare !dbg !1975 i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #6

declare !dbg !1979 ptr @gt_error_get_progname(ptr noundef) #1

declare !dbg !1982 i64 @gt_cstr_length_up_to_char(ptr noundef, i8 noundef signext) #1

declare !dbg !1985 i64 @read(i32 noundef, ptr noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
define void @gt_option_parser_set_min_args(ptr noundef %op, i32 noundef %min_additional_arguments) #0 !dbg !1990 {
entry:
  %op.addr = alloca ptr, align 8
  %min_additional_arguments.addr = alloca i32, align 4
  store ptr %op, ptr %op.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !1994, metadata !DIExpression()), !dbg !1996
  store i32 %min_additional_arguments, ptr %min_additional_arguments.addr, align 4, !tbaa !1154
  tail call void @llvm.dbg.declare(metadata ptr %min_additional_arguments.addr, metadata !1995, metadata !DIExpression()), !dbg !1997
  br label %do.body, !dbg !1998

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %op.addr, align 8, !dbg !1999, !tbaa !743
  %tobool = icmp ne ptr %0, null, !dbg !1999
  br i1 %tobool, label %if.end, label %if.then, !dbg !2002

if.then:                                          ; preds = %do.body
  %1 = load ptr, ptr @stderr, align 8, !dbg !2003, !tbaa !743
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str, ptr noundef @.str.9, ptr noundef @__func__.gt_option_parser_set_min_args, ptr noundef @.str.2, i32 noundef 941), !dbg !2003
  call void @abort() #9, !dbg !2003
  unreachable, !dbg !2003

if.end:                                           ; preds = %do.body
  br label %do.end, !dbg !2002

do.end:                                           ; preds = %if.end
  %2 = load i32, ptr %min_additional_arguments.addr, align 4, !dbg !2005, !tbaa !1154
  %3 = load ptr, ptr %op.addr, align 8, !dbg !2006, !tbaa !743
  %min_additional_arguments1 = getelementptr inbounds %struct.GtOptionParser, ptr %3, i32 0, i32 11, !dbg !2007
  store i32 %2, ptr %min_additional_arguments1, align 8, !dbg !2008, !tbaa !916
  ret void, !dbg !2009
}

; Function Attrs: nounwind uwtable
define void @gt_option_parser_set_max_args(ptr noundef %op, i32 noundef %max_additional_arguments) #0 !dbg !2010 {
entry:
  %op.addr = alloca ptr, align 8
  %max_additional_arguments.addr = alloca i32, align 4
  store ptr %op, ptr %op.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !2012, metadata !DIExpression()), !dbg !2014
  store i32 %max_additional_arguments, ptr %max_additional_arguments.addr, align 4, !tbaa !1154
  tail call void @llvm.dbg.declare(metadata ptr %max_additional_arguments.addr, metadata !2013, metadata !DIExpression()), !dbg !2015
  br label %do.body, !dbg !2016

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %op.addr, align 8, !dbg !2017, !tbaa !743
  %tobool = icmp ne ptr %0, null, !dbg !2017
  br i1 %tobool, label %if.end, label %if.then, !dbg !2020

if.then:                                          ; preds = %do.body
  %1 = load ptr, ptr @stderr, align 8, !dbg !2021, !tbaa !743
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str, ptr noundef @.str.9, ptr noundef @__func__.gt_option_parser_set_max_args, ptr noundef @.str.2, i32 noundef 948), !dbg !2021
  call void @abort() #9, !dbg !2021
  unreachable, !dbg !2021

if.end:                                           ; preds = %do.body
  br label %do.end, !dbg !2020

do.end:                                           ; preds = %if.end
  %2 = load i32, ptr %max_additional_arguments.addr, align 4, !dbg !2023, !tbaa !1154
  %3 = load ptr, ptr %op.addr, align 8, !dbg !2024, !tbaa !743
  %max_additional_arguments1 = getelementptr inbounds %struct.GtOptionParser, ptr %3, i32 0, i32 12, !dbg !2025
  store i32 %2, ptr %max_additional_arguments1, align 4, !dbg !2026, !tbaa !920
  ret void, !dbg !2027
}

; Function Attrs: nounwind uwtable
define void @gt_option_parser_set_min_max_args(ptr noundef %op, i32 noundef %min_additional_arguments, i32 noundef %max_additional_arguments) #0 !dbg !2028 {
entry:
  %op.addr = alloca ptr, align 8
  %min_additional_arguments.addr = alloca i32, align 4
  %max_additional_arguments.addr = alloca i32, align 4
  store ptr %op, ptr %op.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !2032, metadata !DIExpression()), !dbg !2035
  store i32 %min_additional_arguments, ptr %min_additional_arguments.addr, align 4, !tbaa !1154
  tail call void @llvm.dbg.declare(metadata ptr %min_additional_arguments.addr, metadata !2033, metadata !DIExpression()), !dbg !2036
  store i32 %max_additional_arguments, ptr %max_additional_arguments.addr, align 4, !tbaa !1154
  tail call void @llvm.dbg.declare(metadata ptr %max_additional_arguments.addr, metadata !2034, metadata !DIExpression()), !dbg !2037
  br label %do.body, !dbg !2038

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %op.addr, align 8, !dbg !2039, !tbaa !743
  %tobool = icmp ne ptr %0, null, !dbg !2039
  br i1 %tobool, label %if.end, label %if.then, !dbg !2042

if.then:                                          ; preds = %do.body
  %1 = load ptr, ptr @stderr, align 8, !dbg !2043, !tbaa !743
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str, ptr noundef @.str.9, ptr noundef @__func__.gt_option_parser_set_min_max_args, ptr noundef @.str.2, i32 noundef 956), !dbg !2043
  call void @abort() #9, !dbg !2043
  unreachable, !dbg !2043

if.end:                                           ; preds = %do.body
  br label %do.end, !dbg !2042

do.end:                                           ; preds = %if.end
  %2 = load i32, ptr %min_additional_arguments.addr, align 4, !dbg !2045, !tbaa !1154
  %3 = load ptr, ptr %op.addr, align 8, !dbg !2046, !tbaa !743
  %min_additional_arguments1 = getelementptr inbounds %struct.GtOptionParser, ptr %3, i32 0, i32 11, !dbg !2047
  store i32 %2, ptr %min_additional_arguments1, align 8, !dbg !2048, !tbaa !916
  %4 = load i32, ptr %max_additional_arguments.addr, align 4, !dbg !2049, !tbaa !1154
  %5 = load ptr, ptr %op.addr, align 8, !dbg !2050, !tbaa !743
  %max_additional_arguments2 = getelementptr inbounds %struct.GtOptionParser, ptr %5, i32 0, i32 12, !dbg !2051
  store i32 %4, ptr %max_additional_arguments2, align 4, !dbg !2052, !tbaa !920
  ret void, !dbg !2053
}

; Function Attrs: nounwind uwtable
define i32 @gt_option_parser_parse(ptr noundef %op, ptr noundef %parsed_args, i32 noundef %argc, ptr noundef %argv, ptr noundef %version_func, ptr noundef %err) #0 !dbg !2054 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca ptr, align 8
  %parsed_args.addr = alloca ptr, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %version_func.addr = alloca ptr, align 8
  %err.addr = alloca ptr, align 8
  %argnum = alloca i32, align 4
  %int_value = alloca i32, align 4
  %uint_value = alloca i32, align 4
  %i = alloca i64, align 8
  %double_value = alloca double, align 8
  %hookinfo = alloca ptr, align 8
  %option = alloca ptr, align 8
  %option_parsed = alloca i8, align 1
  %long_value = alloca i64, align 8
  %ulong_value = alloca i64, align 8
  %minus_offset = alloca i32, align 4
  %had_err = alloca i32, align 4
  %gt_error_str = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %op, ptr %op.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !2059, metadata !DIExpression()), !dbg !2079
  store ptr %parsed_args, ptr %parsed_args.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %parsed_args.addr, metadata !2060, metadata !DIExpression()), !dbg !2080
  store i32 %argc, ptr %argc.addr, align 4, !tbaa !1154
  tail call void @llvm.dbg.declare(metadata ptr %argc.addr, metadata !2061, metadata !DIExpression()), !dbg !2081
  store ptr %argv, ptr %argv.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %argv.addr, metadata !2062, metadata !DIExpression()), !dbg !2082
  store ptr %version_func, ptr %version_func.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %version_func.addr, metadata !2063, metadata !DIExpression()), !dbg !2083
  store ptr %err, ptr %err.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !2064, metadata !DIExpression()), !dbg !2084
  call void @llvm.lifetime.start.p0(i64 4, ptr %argnum) #10, !dbg !2085
  tail call void @llvm.dbg.declare(metadata ptr %argnum, metadata !2065, metadata !DIExpression()), !dbg !2086
  call void @llvm.lifetime.start.p0(i64 4, ptr %int_value) #10, !dbg !2085
  tail call void @llvm.dbg.declare(metadata ptr %int_value, metadata !2066, metadata !DIExpression()), !dbg !2087
  call void @llvm.lifetime.start.p0(i64 4, ptr %uint_value) #10, !dbg !2088
  tail call void @llvm.dbg.declare(metadata ptr %uint_value, metadata !2067, metadata !DIExpression()), !dbg !2089
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #10, !dbg !2090
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !2068, metadata !DIExpression()), !dbg !2091
  call void @llvm.lifetime.start.p0(i64 8, ptr %double_value) #10, !dbg !2092
  tail call void @llvm.dbg.declare(metadata ptr %double_value, metadata !2069, metadata !DIExpression()), !dbg !2093
  call void @llvm.lifetime.start.p0(i64 8, ptr %hookinfo) #10, !dbg !2094
  tail call void @llvm.dbg.declare(metadata ptr %hookinfo, metadata !2070, metadata !DIExpression()), !dbg !2095
  call void @llvm.lifetime.start.p0(i64 8, ptr %option) #10, !dbg !2096
  tail call void @llvm.dbg.declare(metadata ptr %option, metadata !2072, metadata !DIExpression()), !dbg !2097
  call void @llvm.lifetime.start.p0(i64 1, ptr %option_parsed) #10, !dbg !2098
  tail call void @llvm.dbg.declare(metadata ptr %option_parsed, metadata !2073, metadata !DIExpression()), !dbg !2099
  call void @llvm.lifetime.start.p0(i64 8, ptr %long_value) #10, !dbg !2100
  tail call void @llvm.dbg.declare(metadata ptr %long_value, metadata !2074, metadata !DIExpression()), !dbg !2101
  call void @llvm.lifetime.start.p0(i64 8, ptr %ulong_value) #10, !dbg !2102
  tail call void @llvm.dbg.declare(metadata ptr %ulong_value, metadata !2075, metadata !DIExpression()), !dbg !2103
  call void @llvm.lifetime.start.p0(i64 4, ptr %minus_offset) #10, !dbg !2104
  tail call void @llvm.dbg.declare(metadata ptr %minus_offset, metadata !2076, metadata !DIExpression()), !dbg !2105
  call void @llvm.lifetime.start.p0(i64 4, ptr %had_err) #10, !dbg !2104
  tail call void @llvm.dbg.declare(metadata ptr %had_err, metadata !2077, metadata !DIExpression()), !dbg !2106
  store i32 0, ptr %had_err, align 4, !dbg !2106, !tbaa !1154
  call void @llvm.lifetime.start.p0(i64 8, ptr %gt_error_str) #10, !dbg !2107
  tail call void @llvm.dbg.declare(metadata ptr %gt_error_str, metadata !2078, metadata !DIExpression()), !dbg !2108
  br label %do.body, !dbg !2109

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %err.addr, align 8, !dbg !2110, !tbaa !743
  %tobool = icmp ne ptr %0, null, !dbg !2110
  br i1 %tobool, label %lor.lhs.false, label %if.end, !dbg !2110

lor.lhs.false:                                    ; preds = %do.body
  %1 = load ptr, ptr %err.addr, align 8, !dbg !2110, !tbaa !743
  %call = call zeroext i1 @gt_error_is_set(ptr noundef %1), !dbg !2110
  br i1 %call, label %if.then, label %if.end, !dbg !2113

if.then:                                          ; preds = %lor.lhs.false
  %2 = load ptr, ptr @stderr, align 8, !dbg !2114, !tbaa !743
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str, ptr noundef @.str.14, ptr noundef @__func__.gt_option_parser_parse, ptr noundef @.str.2, i32 noundef 993), !dbg !2114
  call void @abort() #9, !dbg !2114
  unreachable, !dbg !2114

if.end:                                           ; preds = %lor.lhs.false, %do.body
  br label %do.cond, !dbg !2113

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !2113

do.end:                                           ; preds = %do.cond
  br label %do.body2, !dbg !2116

do.body2:                                         ; preds = %do.end
  %3 = load ptr, ptr %op.addr, align 8, !dbg !2117, !tbaa !743
  %tobool3 = icmp ne ptr %3, null, !dbg !2117
  br i1 %tobool3, label %if.end6, label %if.then4, !dbg !2120

if.then4:                                         ; preds = %do.body2
  %4 = load ptr, ptr @stderr, align 8, !dbg !2121, !tbaa !743
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str, ptr noundef @.str.9, ptr noundef @__func__.gt_option_parser_parse, ptr noundef @.str.2, i32 noundef 994), !dbg !2121
  call void @abort() #9, !dbg !2121
  unreachable, !dbg !2121

if.end6:                                          ; preds = %do.body2
  br label %do.cond7, !dbg !2120

do.cond7:                                         ; preds = %if.end6
  br label %do.end8, !dbg !2120

do.end8:                                          ; preds = %do.cond7
  %5 = load ptr, ptr %op.addr, align 8, !dbg !2123, !tbaa !743
  %common_options_added = getelementptr inbounds %struct.GtOptionParser, ptr %5, i32 0, i32 5, !dbg !2125
  %6 = load i8, ptr %common_options_added, align 8, !dbg !2125, !tbaa !1269, !range !1270, !noundef !1271
  %tobool9 = trunc i8 %6 to i1, !dbg !2125
  br i1 %tobool9, label %if.end12, label %if.then10, !dbg !2126

if.then10:                                        ; preds = %do.end8
  %7 = load ptr, ptr %op.addr, align 8, !dbg !2127, !tbaa !743
  %common_options_added11 = getelementptr inbounds %struct.GtOptionParser, ptr %7, i32 0, i32 5, !dbg !2129
  store i8 1, ptr %common_options_added11, align 8, !dbg !2130, !tbaa !1269
  %8 = load ptr, ptr %op.addr, align 8, !dbg !2131, !tbaa !743
  call void @add_common_options(ptr noundef %8), !dbg !2132
  br label %if.end12, !dbg !2133

if.end12:                                         ; preds = %if.then10, %do.end8
  %9 = load ptr, ptr %op.addr, align 8, !dbg !2134, !tbaa !743
  %progname = getelementptr inbounds %struct.GtOptionParser, ptr %9, i32 0, i32 0, !dbg !2136
  %10 = load ptr, ptr %progname, align 8, !dbg !2136, !tbaa !2137
  %tobool13 = icmp ne ptr %10, null, !dbg !2134
  br i1 %tobool13, label %if.then14, label %if.end16, !dbg !2138

if.then14:                                        ; preds = %if.end12
  %11 = load ptr, ptr %op.addr, align 8, !dbg !2139, !tbaa !743
  %progname15 = getelementptr inbounds %struct.GtOptionParser, ptr %11, i32 0, i32 0, !dbg !2139
  %12 = load ptr, ptr %progname15, align 8, !dbg !2139, !tbaa !2137
  call void @gt_free_mem(ptr noundef %12, ptr noundef @.str.2, i32 noundef 1004), !dbg !2139
  br label %if.end16, !dbg !2139

if.end16:                                         ; preds = %if.then14, %if.end12
  %13 = load ptr, ptr %argv.addr, align 8, !dbg !2140, !tbaa !743
  %arrayidx = getelementptr inbounds ptr, ptr %13, i64 0, !dbg !2140
  %14 = load ptr, ptr %arrayidx, align 8, !dbg !2140, !tbaa !743
  %call17 = call ptr @gt_cstr_dup(ptr noundef %14), !dbg !2141
  %15 = load ptr, ptr %op.addr, align 8, !dbg !2142, !tbaa !743
  %progname18 = getelementptr inbounds %struct.GtOptionParser, ptr %15, i32 0, i32 0, !dbg !2143
  store ptr %call17, ptr %progname18, align 8, !dbg !2144, !tbaa !2137
  store i32 1, ptr %argnum, align 4, !dbg !2145, !tbaa !1154
  br label %for.cond, !dbg !2147

for.cond:                                         ; preds = %for.inc, %if.end16
  %16 = load i32, ptr %argnum, align 4, !dbg !2148, !tbaa !1154
  %17 = load i32, ptr %argc.addr, align 4, !dbg !2150, !tbaa !1154
  %cmp = icmp slt i32 %16, %17, !dbg !2151
  br i1 %cmp, label %for.body, label %for.end, !dbg !2152

for.body:                                         ; preds = %for.cond
  %18 = load ptr, ptr %argv.addr, align 8, !dbg !2153, !tbaa !743
  %19 = load i32, ptr %argnum, align 4, !dbg !2155, !tbaa !1154
  %idxprom = sext i32 %19 to i64, !dbg !2153
  %arrayidx19 = getelementptr inbounds ptr, ptr %18, i64 %idxprom, !dbg !2153
  %20 = load ptr, ptr %arrayidx19, align 8, !dbg !2153, !tbaa !743
  call void @gt_option_parser_warn_on_nonascii(ptr noundef %20), !dbg !2156
  br label %for.inc, !dbg !2157

for.inc:                                          ; preds = %for.body
  %21 = load i32, ptr %argnum, align 4, !dbg !2158, !tbaa !1154
  %inc = add nsw i32 %21, 1, !dbg !2158
  store i32 %inc, ptr %argnum, align 4, !dbg !2158, !tbaa !1154
  br label %for.cond, !dbg !2159, !llvm.loop !2160

for.end:                                          ; preds = %for.cond
  store i32 1, ptr %argnum, align 4, !dbg !2162, !tbaa !1154
  br label %for.cond20, !dbg !2164

for.cond20:                                       ; preds = %for.inc608, %for.end
  %22 = load i32, ptr %argnum, align 4, !dbg !2165, !tbaa !1154
  %23 = load i32, ptr %argc.addr, align 4, !dbg !2167, !tbaa !1154
  %cmp21 = icmp slt i32 %22, %23, !dbg !2168
  br i1 %cmp21, label %for.body22, label %for.end610, !dbg !2169

for.body22:                                       ; preds = %for.cond20
  %24 = load ptr, ptr %argv.addr, align 8, !dbg !2170, !tbaa !743
  %25 = load i32, ptr %argnum, align 4, !dbg !2173, !tbaa !1154
  %idxprom23 = sext i32 %25 to i64, !dbg !2170
  %arrayidx24 = getelementptr inbounds ptr, ptr %24, i64 %idxprom23, !dbg !2170
  %26 = load ptr, ptr %arrayidx24, align 8, !dbg !2170, !tbaa !743
  %tobool25 = icmp ne ptr %26, null, !dbg !2170
  br i1 %tobool25, label %land.lhs.true, label %if.then42, !dbg !2174

land.lhs.true:                                    ; preds = %for.body22
  %27 = load ptr, ptr %argv.addr, align 8, !dbg !2175, !tbaa !743
  %28 = load i32, ptr %argnum, align 4, !dbg !2176, !tbaa !1154
  %idxprom26 = sext i32 %28 to i64, !dbg !2175
  %arrayidx27 = getelementptr inbounds ptr, ptr %27, i64 %idxprom26, !dbg !2175
  %29 = load ptr, ptr %arrayidx27, align 8, !dbg !2175, !tbaa !743
  %arrayidx28 = getelementptr inbounds i8, ptr %29, i64 0, !dbg !2175
  %30 = load i8, ptr %arrayidx28, align 1, !dbg !2175, !tbaa !880
  %conv = sext i8 %30 to i32, !dbg !2175
  %cmp29 = icmp eq i32 %conv, 45, !dbg !2177
  br i1 %cmp29, label %land.lhs.true31, label %if.then42, !dbg !2178

land.lhs.true31:                                  ; preds = %land.lhs.true
  %31 = load ptr, ptr %argv.addr, align 8, !dbg !2179, !tbaa !743
  %32 = load i32, ptr %argnum, align 4, !dbg !2180, !tbaa !1154
  %idxprom32 = sext i32 %32 to i64, !dbg !2179
  %arrayidx33 = getelementptr inbounds ptr, ptr %31, i64 %idxprom32, !dbg !2179
  %33 = load ptr, ptr %arrayidx33, align 8, !dbg !2179, !tbaa !743
  %call34 = call i64 @strlen(ptr noundef %33) #11, !dbg !2181
  %cmp35 = icmp ugt i64 %call34, 1, !dbg !2182
  br i1 %cmp35, label %lor.lhs.false37, label %if.then42, !dbg !2183

lor.lhs.false37:                                  ; preds = %land.lhs.true31
  %34 = load ptr, ptr %argv.addr, align 8, !dbg !2184, !tbaa !743
  %35 = load i32, ptr %argnum, align 4, !dbg !2185, !tbaa !1154
  %idxprom38 = sext i32 %35 to i64, !dbg !2184
  %arrayidx39 = getelementptr inbounds ptr, ptr %34, i64 %idxprom38, !dbg !2184
  %36 = load ptr, ptr %arrayidx39, align 8, !dbg !2184, !tbaa !743
  %call40 = call i32 @strcmp(ptr noundef %36, ptr noundef @.str.54) #11, !dbg !2186
  %tobool41 = icmp ne i32 %call40, 0, !dbg !2186
  br i1 %tobool41, label %if.end43, label %if.then42, !dbg !2187

if.then42:                                        ; preds = %lor.lhs.false37, %land.lhs.true31, %land.lhs.true, %for.body22
  br label %for.end610, !dbg !2188

if.end43:                                         ; preds = %lor.lhs.false37
  store i8 0, ptr %option_parsed, align 1, !dbg !2190, !tbaa !1796
  store i64 0, ptr %i, align 8, !dbg !2191, !tbaa !1287
  br label %for.cond44, !dbg !2193

for.cond44:                                       ; preds = %for.inc590, %if.end43
  %37 = load i64, ptr %i, align 8, !dbg !2194, !tbaa !1287
  %38 = load ptr, ptr %op.addr, align 8, !dbg !2196, !tbaa !743
  %options = getelementptr inbounds %struct.GtOptionParser, ptr %38, i32 0, i32 3, !dbg !2197
  %39 = load ptr, ptr %options, align 8, !dbg !2197, !tbaa !912
  %call45 = call i64 @gt_array_size(ptr noundef %39), !dbg !2198
  %cmp46 = icmp ult i64 %37, %call45, !dbg !2199
  br i1 %cmp46, label %for.body48, label %for.end592, !dbg !2200

for.body48:                                       ; preds = %for.cond44
  %40 = load ptr, ptr %op.addr, align 8, !dbg !2201, !tbaa !743
  %options49 = getelementptr inbounds %struct.GtOptionParser, ptr %40, i32 0, i32 3, !dbg !2203
  %41 = load ptr, ptr %options49, align 8, !dbg !2203, !tbaa !912
  %42 = load i64, ptr %i, align 8, !dbg !2204, !tbaa !1287
  %call50 = call ptr @gt_array_get(ptr noundef %41, i64 noundef %42), !dbg !2205
  %43 = load ptr, ptr %call50, align 8, !dbg !2206, !tbaa !743
  store ptr %43, ptr %option, align 8, !dbg !2207, !tbaa !743
  %44 = load ptr, ptr %argv.addr, align 8, !dbg !2208, !tbaa !743
  %45 = load i32, ptr %argnum, align 4, !dbg !2209, !tbaa !1154
  %idxprom51 = sext i32 %45 to i64, !dbg !2208
  %arrayidx52 = getelementptr inbounds ptr, ptr %44, i64 %idxprom51, !dbg !2208
  %46 = load ptr, ptr %arrayidx52, align 8, !dbg !2208, !tbaa !743
  %arrayidx53 = getelementptr inbounds i8, ptr %46, i64 1, !dbg !2208
  %47 = load i8, ptr %arrayidx53, align 1, !dbg !2208, !tbaa !880
  %conv54 = sext i8 %47 to i32, !dbg !2208
  %cmp55 = icmp eq i32 %conv54, 45, !dbg !2210
  %48 = zext i1 %cmp55 to i64, !dbg !2208
  %cond = select i1 %cmp55, i32 1, i32 0, !dbg !2208
  store i32 %cond, ptr %minus_offset, align 4, !dbg !2211, !tbaa !1154
  %49 = load ptr, ptr %argv.addr, align 8, !dbg !2212, !tbaa !743
  %50 = load i32, ptr %argnum, align 4, !dbg !2214, !tbaa !1154
  %idxprom57 = sext i32 %50 to i64, !dbg !2212
  %arrayidx58 = getelementptr inbounds ptr, ptr %49, i64 %idxprom57, !dbg !2212
  %51 = load ptr, ptr %arrayidx58, align 8, !dbg !2212, !tbaa !743
  %add.ptr = getelementptr inbounds i8, ptr %51, i64 1, !dbg !2215
  %52 = load i32, ptr %minus_offset, align 4, !dbg !2216, !tbaa !1154
  %idx.ext = sext i32 %52 to i64, !dbg !2217
  %add.ptr59 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext, !dbg !2217
  %53 = load ptr, ptr %option, align 8, !dbg !2218, !tbaa !743
  %option_str = getelementptr inbounds %struct.GtOption, ptr %53, i32 0, i32 1, !dbg !2219
  %54 = load ptr, ptr %option_str, align 8, !dbg !2219, !tbaa !979
  %call60 = call ptr @gt_str_get(ptr noundef %54), !dbg !2220
  %call61 = call i32 @strcmp(ptr noundef %add.ptr59, ptr noundef %call60) #11, !dbg !2221
  %tobool62 = icmp ne i32 %call61, 0, !dbg !2221
  br i1 %tobool62, label %if.end589, label %if.then63, !dbg !2222

if.then63:                                        ; preds = %for.body48
  %55 = load ptr, ptr %option, align 8, !dbg !2223, !tbaa !743
  %is_set = getelementptr inbounds %struct.GtOption, ptr %55, i32 0, i32 8, !dbg !2226
  %56 = load i8, ptr %is_set, align 8, !dbg !2226, !tbaa !2227, !range !1270, !noundef !1271
  %tobool64 = trunc i8 %56 to i1, !dbg !2226
  br i1 %tobool64, label %if.then65, label %if.else, !dbg !2228

if.then65:                                        ; preds = %if.then63
  %57 = load ptr, ptr %err.addr, align 8, !dbg !2229, !tbaa !743
  %58 = load ptr, ptr %option, align 8, !dbg !2231, !tbaa !743
  %option_str66 = getelementptr inbounds %struct.GtOption, ptr %58, i32 0, i32 1, !dbg !2232
  %59 = load ptr, ptr %option_str66, align 8, !dbg !2232, !tbaa !979
  %call67 = call ptr @gt_str_get(ptr noundef %59), !dbg !2233
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %57, ptr noundef @.str.55, ptr noundef %call67), !dbg !2234
  store i32 -1, ptr %had_err, align 4, !dbg !2235, !tbaa !1154
  br label %if.end69, !dbg !2236

if.else:                                          ; preds = %if.then63
  %60 = load ptr, ptr %option, align 8, !dbg !2237, !tbaa !743
  %is_set68 = getelementptr inbounds %struct.GtOption, ptr %60, i32 0, i32 8, !dbg !2238
  store i8 1, ptr %is_set68, align 8, !dbg !2239, !tbaa !2227
  br label %if.end69

if.end69:                                         ; preds = %if.else, %if.then65
  %61 = load i32, ptr %had_err, align 4, !dbg !2240, !tbaa !1154
  %tobool70 = icmp ne i32 %61, 0, !dbg !2240
  br i1 %tobool70, label %if.end582, label %if.then71, !dbg !2242

if.then71:                                        ; preds = %if.end69
  %62 = load ptr, ptr %option, align 8, !dbg !2243, !tbaa !743
  %option_type = getelementptr inbounds %struct.GtOption, ptr %62, i32 0, i32 0, !dbg !2245
  %63 = load i32, ptr %option_type, align 8, !dbg !2245, !tbaa !1391
  switch i32 %63, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb116
    i32 2, label %sw.bb179
    i32 4, label %sw.bb227
    i32 5, label %sw.bb232
    i32 6, label %sw.bb237
    i32 7, label %sw.bb242
    i32 8, label %sw.bb298
    i32 9, label %sw.bb350
    i32 10, label %sw.bb377
    i32 11, label %sw.bb429
    i32 3, label %sw.bb523
    i32 12, label %sw.bb523
    i32 13, label %sw.bb536
    i32 14, label %sw.bb569
  ], !dbg !2246

sw.bb:                                            ; preds = %if.then71
  %64 = load ptr, ptr %argv.addr, align 8, !dbg !2247, !tbaa !743
  %65 = load i32, ptr %argnum, align 4, !dbg !2250, !tbaa !1154
  %add = add nsw i32 %65, 1, !dbg !2251
  %idxprom72 = sext i32 %add to i64, !dbg !2247
  %arrayidx73 = getelementptr inbounds ptr, ptr %64, i64 %idxprom72, !dbg !2247
  %66 = load ptr, ptr %arrayidx73, align 8, !dbg !2247, !tbaa !743
  %tobool74 = icmp ne ptr %66, null, !dbg !2247
  br i1 %tobool74, label %land.lhs.true75, label %if.end114, !dbg !2252

land.lhs.true75:                                  ; preds = %sw.bb
  %67 = load ptr, ptr %argv.addr, align 8, !dbg !2253, !tbaa !743
  %68 = load i32, ptr %argnum, align 4, !dbg !2254, !tbaa !1154
  %add76 = add nsw i32 %68, 1, !dbg !2255
  %idxprom77 = sext i32 %add76 to i64, !dbg !2253
  %arrayidx78 = getelementptr inbounds ptr, ptr %67, i64 %idxprom77, !dbg !2253
  %69 = load ptr, ptr %arrayidx78, align 8, !dbg !2253, !tbaa !743
  %arrayidx79 = getelementptr inbounds i8, ptr %69, i64 0, !dbg !2253
  %70 = load i8, ptr %arrayidx79, align 1, !dbg !2253, !tbaa !880
  %conv80 = sext i8 %70 to i32, !dbg !2253
  %cmp81 = icmp ne i32 %conv80, 45, !dbg !2256
  br i1 %cmp81, label %if.then83, label %if.end114, !dbg !2257

if.then83:                                        ; preds = %land.lhs.true75
  %71 = load ptr, ptr %argv.addr, align 8, !dbg !2258, !tbaa !743
  %72 = load i32, ptr %argnum, align 4, !dbg !2261, !tbaa !1154
  %add84 = add nsw i32 %72, 1, !dbg !2262
  %idxprom85 = sext i32 %add84 to i64, !dbg !2258
  %arrayidx86 = getelementptr inbounds ptr, ptr %71, i64 %idxprom85, !dbg !2258
  %73 = load ptr, ptr %arrayidx86, align 8, !dbg !2258, !tbaa !743
  %call87 = call i32 @strcmp(ptr noundef %73, ptr noundef @.str.30) #11, !dbg !2263
  %tobool88 = icmp ne i32 %call87, 0, !dbg !2263
  br i1 %tobool88, label %lor.lhs.false89, label %if.then95, !dbg !2264

lor.lhs.false89:                                  ; preds = %if.then83
  %74 = load ptr, ptr %argv.addr, align 8, !dbg !2265, !tbaa !743
  %75 = load i32, ptr %argnum, align 4, !dbg !2266, !tbaa !1154
  %add90 = add nsw i32 %75, 1, !dbg !2267
  %idxprom91 = sext i32 %add90 to i64, !dbg !2265
  %arrayidx92 = getelementptr inbounds ptr, ptr %74, i64 %idxprom91, !dbg !2265
  %76 = load ptr, ptr %arrayidx92, align 8, !dbg !2265, !tbaa !743
  %call93 = call i32 @strcmp(ptr noundef %76, ptr noundef @.str.56) #11, !dbg !2268
  %tobool94 = icmp ne i32 %call93, 0, !dbg !2268
  br i1 %tobool94, label %if.else97, label %if.then95, !dbg !2269

if.then95:                                        ; preds = %lor.lhs.false89, %if.then83
  %77 = load i32, ptr %argnum, align 4, !dbg !2270, !tbaa !1154
  %inc96 = add nsw i32 %77, 1, !dbg !2270
  store i32 %inc96, ptr %argnum, align 4, !dbg !2270, !tbaa !1154
  %78 = load ptr, ptr %option, align 8, !dbg !2272, !tbaa !743
  %value = getelementptr inbounds %struct.GtOption, ptr %78, i32 0, i32 3, !dbg !2273
  %79 = load ptr, ptr %value, align 8, !dbg !2273, !tbaa !2274
  store i8 1, ptr %79, align 1, !dbg !2275, !tbaa !1796
  store i8 1, ptr %option_parsed, align 1, !dbg !2276, !tbaa !1796
  br label %sw.epilog, !dbg !2277

if.else97:                                        ; preds = %lor.lhs.false89
  %80 = load ptr, ptr %argv.addr, align 8, !dbg !2278, !tbaa !743
  %81 = load i32, ptr %argnum, align 4, !dbg !2280, !tbaa !1154
  %add98 = add nsw i32 %81, 1, !dbg !2281
  %idxprom99 = sext i32 %add98 to i64, !dbg !2278
  %arrayidx100 = getelementptr inbounds ptr, ptr %80, i64 %idxprom99, !dbg !2278
  %82 = load ptr, ptr %arrayidx100, align 8, !dbg !2278, !tbaa !743
  %call101 = call i32 @strcmp(ptr noundef %82, ptr noundef @.str.31) #11, !dbg !2282
  %tobool102 = icmp ne i32 %call101, 0, !dbg !2282
  br i1 %tobool102, label %lor.lhs.false103, label %if.then109, !dbg !2283

lor.lhs.false103:                                 ; preds = %if.else97
  %83 = load ptr, ptr %argv.addr, align 8, !dbg !2284, !tbaa !743
  %84 = load i32, ptr %argnum, align 4, !dbg !2285, !tbaa !1154
  %add104 = add nsw i32 %84, 1, !dbg !2286
  %idxprom105 = sext i32 %add104 to i64, !dbg !2284
  %arrayidx106 = getelementptr inbounds ptr, ptr %83, i64 %idxprom105, !dbg !2284
  %85 = load ptr, ptr %arrayidx106, align 8, !dbg !2284, !tbaa !743
  %call107 = call i32 @strcmp(ptr noundef %85, ptr noundef @.str.57) #11, !dbg !2287
  %tobool108 = icmp ne i32 %call107, 0, !dbg !2287
  br i1 %tobool108, label %if.end112, label %if.then109, !dbg !2288

if.then109:                                       ; preds = %lor.lhs.false103, %if.else97
  %86 = load i32, ptr %argnum, align 4, !dbg !2289, !tbaa !1154
  %inc110 = add nsw i32 %86, 1, !dbg !2289
  store i32 %inc110, ptr %argnum, align 4, !dbg !2289, !tbaa !1154
  %87 = load ptr, ptr %option, align 8, !dbg !2291, !tbaa !743
  %value111 = getelementptr inbounds %struct.GtOption, ptr %87, i32 0, i32 3, !dbg !2292
  %88 = load ptr, ptr %value111, align 8, !dbg !2292, !tbaa !2274
  store i8 0, ptr %88, align 1, !dbg !2293, !tbaa !1796
  store i8 1, ptr %option_parsed, align 1, !dbg !2294, !tbaa !1796
  br label %sw.epilog, !dbg !2295

if.end112:                                        ; preds = %lor.lhs.false103
  br label %if.end113

if.end113:                                        ; preds = %if.end112
  br label %if.end114, !dbg !2296

if.end114:                                        ; preds = %if.end113, %land.lhs.true75, %sw.bb
  %89 = load ptr, ptr %option, align 8, !dbg !2297, !tbaa !743
  %value115 = getelementptr inbounds %struct.GtOption, ptr %89, i32 0, i32 3, !dbg !2298
  %90 = load ptr, ptr %value115, align 8, !dbg !2298, !tbaa !2274
  store i8 1, ptr %90, align 1, !dbg !2299, !tbaa !1796
  store i8 1, ptr %option_parsed, align 1, !dbg !2300, !tbaa !1796
  br label %sw.epilog, !dbg !2301

sw.bb116:                                         ; preds = %if.then71
  %91 = load ptr, ptr %option, align 8, !dbg !2302, !tbaa !743
  %92 = load i32, ptr %argnum, align 4, !dbg !2304, !tbaa !1154
  %93 = load i32, ptr %argc.addr, align 4, !dbg !2305, !tbaa !1154
  %94 = load ptr, ptr %argv.addr, align 8, !dbg !2306, !tbaa !743
  %call117 = call zeroext i1 @optional_arg(ptr noundef %91, i32 noundef %92, i32 noundef %93, ptr noundef %94), !dbg !2307
  br i1 %call117, label %if.then118, label %if.end119, !dbg !2308

if.then118:                                       ; preds = %sw.bb116
  store i8 1, ptr %option_parsed, align 1, !dbg !2309, !tbaa !1796
  br label %sw.epilog, !dbg !2311

if.end119:                                        ; preds = %sw.bb116
  br label %do.body120, !dbg !2312

do.body120:                                       ; preds = %if.end119
  %95 = load ptr, ptr %option, align 8, !dbg !2313, !tbaa !743
  %domain = getelementptr inbounds %struct.GtOption, ptr %95, i32 0, i32 5, !dbg !2313
  %96 = load ptr, ptr %domain, align 8, !dbg !2313, !tbaa !2316
  %arrayidx121 = getelementptr inbounds ptr, ptr %96, i64 0, !dbg !2313
  %97 = load ptr, ptr %arrayidx121, align 8, !dbg !2313, !tbaa !743
  %tobool122 = icmp ne ptr %97, null, !dbg !2313
  br i1 %tobool122, label %if.end125, label %if.then123, !dbg !2317

if.then123:                                       ; preds = %do.body120
  %98 = load ptr, ptr @stderr, align 8, !dbg !2318, !tbaa !743
  %call124 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %98, ptr noundef @.str, ptr noundef @.str.58, ptr noundef @__func__.gt_option_parser_parse, ptr noundef @.str.2, i32 noundef 1061), !dbg !2318
  call void @abort() #9, !dbg !2318
  unreachable, !dbg !2318

if.end125:                                        ; preds = %do.body120
  br label %do.cond126, !dbg !2317

do.cond126:                                       ; preds = %if.end125
  br label %do.end127, !dbg !2317

do.end127:                                        ; preds = %do.cond126
  %99 = load i32, ptr %argnum, align 4, !dbg !2320, !tbaa !1154
  %100 = load i32, ptr %argc.addr, align 4, !dbg !2321, !tbaa !1154
  %101 = load ptr, ptr %option, align 8, !dbg !2322, !tbaa !743
  %option_str128 = getelementptr inbounds %struct.GtOption, ptr %101, i32 0, i32 1, !dbg !2323
  %102 = load ptr, ptr %option_str128, align 8, !dbg !2323, !tbaa !979
  %103 = load ptr, ptr %argv.addr, align 8, !dbg !2324, !tbaa !743
  %104 = load ptr, ptr %err.addr, align 8, !dbg !2325, !tbaa !743
  %call129 = call i32 @check_missing_argument_and_minus_sign(i32 noundef %99, i32 noundef %100, ptr noundef %102, ptr noundef %103, ptr noundef %104), !dbg !2326
  store i32 %call129, ptr %had_err, align 4, !dbg !2327, !tbaa !1154
  %105 = load i32, ptr %had_err, align 4, !dbg !2328, !tbaa !1154
  %tobool130 = icmp ne i32 %105, 0, !dbg !2328
  br i1 %tobool130, label %if.end175, label %if.then131, !dbg !2330

if.then131:                                       ; preds = %do.end127
  %106 = load i32, ptr %argnum, align 4, !dbg !2331, !tbaa !1154
  %inc132 = add nsw i32 %106, 1, !dbg !2331
  store i32 %inc132, ptr %argnum, align 4, !dbg !2331, !tbaa !1154
  %107 = load ptr, ptr %argv.addr, align 8, !dbg !2333, !tbaa !743
  %108 = load i32, ptr %argnum, align 4, !dbg !2335, !tbaa !1154
  %idxprom133 = sext i32 %108 to i64, !dbg !2333
  %arrayidx134 = getelementptr inbounds ptr, ptr %107, i64 %idxprom133, !dbg !2333
  %109 = load ptr, ptr %arrayidx134, align 8, !dbg !2333, !tbaa !743
  %110 = load ptr, ptr %option, align 8, !dbg !2336, !tbaa !743
  %domain135 = getelementptr inbounds %struct.GtOption, ptr %110, i32 0, i32 5, !dbg !2337
  %111 = load ptr, ptr %domain135, align 8, !dbg !2337, !tbaa !2316
  %arrayidx136 = getelementptr inbounds ptr, ptr %111, i64 0, !dbg !2336
  %112 = load ptr, ptr %arrayidx136, align 8, !dbg !2336, !tbaa !743
  %call137 = call i32 @strcmp(ptr noundef %109, ptr noundef %112) #11, !dbg !2338
  %tobool138 = icmp ne i32 %call137, 0, !dbg !2338
  br i1 %tobool138, label %if.then139, label %if.else170, !dbg !2339

if.then139:                                       ; preds = %if.then131
  %113 = load ptr, ptr %option, align 8, !dbg !2340, !tbaa !743
  %domain140 = getelementptr inbounds %struct.GtOption, ptr %113, i32 0, i32 5, !dbg !2342
  %114 = load ptr, ptr %domain140, align 8, !dbg !2342, !tbaa !2316
  %arrayidx141 = getelementptr inbounds ptr, ptr %114, i64 0, !dbg !2340
  %115 = load ptr, ptr %arrayidx141, align 8, !dbg !2340, !tbaa !743
  %call142 = call ptr @gt_str_new_cstr(ptr noundef %115), !dbg !2343
  store ptr %call142, ptr %gt_error_str, align 8, !dbg !2344, !tbaa !743
  store i64 1, ptr %i, align 8, !dbg !2345, !tbaa !1287
  br label %while.cond, !dbg !2346

while.cond:                                       ; preds = %if.end157, %if.then139
  %116 = load ptr, ptr %option, align 8, !dbg !2347, !tbaa !743
  %domain143 = getelementptr inbounds %struct.GtOption, ptr %116, i32 0, i32 5, !dbg !2348
  %117 = load ptr, ptr %domain143, align 8, !dbg !2348, !tbaa !2316
  %118 = load i64, ptr %i, align 8, !dbg !2349, !tbaa !1287
  %arrayidx144 = getelementptr inbounds ptr, ptr %117, i64 %118, !dbg !2347
  %119 = load ptr, ptr %arrayidx144, align 8, !dbg !2347, !tbaa !743
  %cmp145 = icmp ne ptr %119, null, !dbg !2350
  br i1 %cmp145, label %while.body, label %while.end, !dbg !2346

while.body:                                       ; preds = %while.cond
  %120 = load ptr, ptr %argv.addr, align 8, !dbg !2351, !tbaa !743
  %121 = load i32, ptr %argnum, align 4, !dbg !2354, !tbaa !1154
  %idxprom147 = sext i32 %121 to i64, !dbg !2351
  %arrayidx148 = getelementptr inbounds ptr, ptr %120, i64 %idxprom147, !dbg !2351
  %122 = load ptr, ptr %arrayidx148, align 8, !dbg !2351, !tbaa !743
  %123 = load ptr, ptr %option, align 8, !dbg !2355, !tbaa !743
  %domain149 = getelementptr inbounds %struct.GtOption, ptr %123, i32 0, i32 5, !dbg !2356
  %124 = load ptr, ptr %domain149, align 8, !dbg !2356, !tbaa !2316
  %125 = load i64, ptr %i, align 8, !dbg !2357, !tbaa !1287
  %arrayidx150 = getelementptr inbounds ptr, ptr %124, i64 %125, !dbg !2355
  %126 = load ptr, ptr %arrayidx150, align 8, !dbg !2355, !tbaa !743
  %call151 = call i32 @strcmp(ptr noundef %122, ptr noundef %126) #11, !dbg !2358
  %tobool152 = icmp ne i32 %call151, 0, !dbg !2358
  br i1 %tobool152, label %if.end157, label %if.then153, !dbg !2359

if.then153:                                       ; preds = %while.body
  %127 = load ptr, ptr %option, align 8, !dbg !2360, !tbaa !743
  %value154 = getelementptr inbounds %struct.GtOption, ptr %127, i32 0, i32 3, !dbg !2362
  %128 = load ptr, ptr %value154, align 8, !dbg !2362, !tbaa !2274
  %129 = load ptr, ptr %option, align 8, !dbg !2363, !tbaa !743
  %domain155 = getelementptr inbounds %struct.GtOption, ptr %129, i32 0, i32 5, !dbg !2364
  %130 = load ptr, ptr %domain155, align 8, !dbg !2364, !tbaa !2316
  %131 = load i64, ptr %i, align 8, !dbg !2365, !tbaa !1287
  %arrayidx156 = getelementptr inbounds ptr, ptr %130, i64 %131, !dbg !2363
  %132 = load ptr, ptr %arrayidx156, align 8, !dbg !2363, !tbaa !743
  call void @gt_str_set(ptr noundef %128, ptr noundef %132), !dbg !2366
  br label %while.end, !dbg !2367

if.end157:                                        ; preds = %while.body
  %133 = load ptr, ptr %gt_error_str, align 8, !dbg !2368, !tbaa !743
  call void @gt_str_append_cstr(ptr noundef %133, ptr noundef @.str.59), !dbg !2369
  %134 = load ptr, ptr %gt_error_str, align 8, !dbg !2370, !tbaa !743
  %135 = load ptr, ptr %option, align 8, !dbg !2371, !tbaa !743
  %domain158 = getelementptr inbounds %struct.GtOption, ptr %135, i32 0, i32 5, !dbg !2372
  %136 = load ptr, ptr %domain158, align 8, !dbg !2372, !tbaa !2316
  %137 = load i64, ptr %i, align 8, !dbg !2373, !tbaa !1287
  %arrayidx159 = getelementptr inbounds ptr, ptr %136, i64 %137, !dbg !2371
  %138 = load ptr, ptr %arrayidx159, align 8, !dbg !2371, !tbaa !743
  call void @gt_str_append_cstr(ptr noundef %134, ptr noundef %138), !dbg !2374
  %139 = load i64, ptr %i, align 8, !dbg !2375, !tbaa !1287
  %inc160 = add i64 %139, 1, !dbg !2375
  store i64 %inc160, ptr %i, align 8, !dbg !2375, !tbaa !1287
  br label %while.cond, !dbg !2346, !llvm.loop !2376

while.end:                                        ; preds = %if.then153, %while.cond
  %140 = load ptr, ptr %option, align 8, !dbg !2378, !tbaa !743
  %domain161 = getelementptr inbounds %struct.GtOption, ptr %140, i32 0, i32 5, !dbg !2380
  %141 = load ptr, ptr %domain161, align 8, !dbg !2380, !tbaa !2316
  %142 = load i64, ptr %i, align 8, !dbg !2381, !tbaa !1287
  %arrayidx162 = getelementptr inbounds ptr, ptr %141, i64 %142, !dbg !2378
  %143 = load ptr, ptr %arrayidx162, align 8, !dbg !2378, !tbaa !743
  %cmp163 = icmp eq ptr %143, null, !dbg !2382
  br i1 %cmp163, label %if.then165, label %if.end169, !dbg !2383

if.then165:                                       ; preds = %while.end
  %144 = load ptr, ptr %err.addr, align 8, !dbg !2384, !tbaa !743
  %145 = load ptr, ptr %option, align 8, !dbg !2386, !tbaa !743
  %option_str166 = getelementptr inbounds %struct.GtOption, ptr %145, i32 0, i32 1, !dbg !2387
  %146 = load ptr, ptr %option_str166, align 8, !dbg !2387, !tbaa !979
  %call167 = call ptr @gt_str_get(ptr noundef %146), !dbg !2388
  %147 = load ptr, ptr %gt_error_str, align 8, !dbg !2389, !tbaa !743
  %call168 = call ptr @gt_str_get(ptr noundef %147), !dbg !2390
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %144, ptr noundef @.str.60, ptr noundef %call167, ptr noundef %call168), !dbg !2391
  store i32 -1, ptr %had_err, align 4, !dbg !2392, !tbaa !1154
  br label %if.end169, !dbg !2393

if.end169:                                        ; preds = %if.then165, %while.end
  %148 = load ptr, ptr %gt_error_str, align 8, !dbg !2394, !tbaa !743
  call void @gt_str_delete(ptr noundef %148), !dbg !2395
  br label %if.end174, !dbg !2396

if.else170:                                       ; preds = %if.then131
  %149 = load ptr, ptr %option, align 8, !dbg !2397, !tbaa !743
  %value171 = getelementptr inbounds %struct.GtOption, ptr %149, i32 0, i32 3, !dbg !2399
  %150 = load ptr, ptr %value171, align 8, !dbg !2399, !tbaa !2274
  %151 = load ptr, ptr %option, align 8, !dbg !2400, !tbaa !743
  %domain172 = getelementptr inbounds %struct.GtOption, ptr %151, i32 0, i32 5, !dbg !2401
  %152 = load ptr, ptr %domain172, align 8, !dbg !2401, !tbaa !2316
  %arrayidx173 = getelementptr inbounds ptr, ptr %152, i64 0, !dbg !2400
  %153 = load ptr, ptr %arrayidx173, align 8, !dbg !2400, !tbaa !743
  call void @gt_str_set(ptr noundef %150, ptr noundef %153), !dbg !2402
  br label %if.end174

if.end174:                                        ; preds = %if.else170, %if.end169
  br label %if.end175, !dbg !2403

if.end175:                                        ; preds = %if.end174, %do.end127
  %154 = load i32, ptr %had_err, align 4, !dbg !2404, !tbaa !1154
  %tobool176 = icmp ne i32 %154, 0, !dbg !2404
  br i1 %tobool176, label %if.end178, label %if.then177, !dbg !2406

if.then177:                                       ; preds = %if.end175
  store i8 1, ptr %option_parsed, align 1, !dbg !2407, !tbaa !1796
  br label %if.end178, !dbg !2409

if.end178:                                        ; preds = %if.then177, %if.end175
  br label %sw.epilog, !dbg !2410

sw.bb179:                                         ; preds = %if.then71
  %155 = load ptr, ptr %option, align 8, !dbg !2411, !tbaa !743
  %156 = load i32, ptr %argnum, align 4, !dbg !2413, !tbaa !1154
  %157 = load i32, ptr %argc.addr, align 4, !dbg !2414, !tbaa !1154
  %158 = load ptr, ptr %argv.addr, align 8, !dbg !2415, !tbaa !743
  %call180 = call zeroext i1 @optional_arg(ptr noundef %155, i32 noundef %156, i32 noundef %157, ptr noundef %158), !dbg !2416
  br i1 %call180, label %if.then181, label %if.end182, !dbg !2417

if.then181:                                       ; preds = %sw.bb179
  store i8 1, ptr %option_parsed, align 1, !dbg !2418, !tbaa !1796
  br label %sw.epilog, !dbg !2420

if.end182:                                        ; preds = %sw.bb179
  %159 = load i32, ptr %argnum, align 4, !dbg !2421, !tbaa !1154
  %160 = load i32, ptr %argc.addr, align 4, !dbg !2422, !tbaa !1154
  %161 = load ptr, ptr %option, align 8, !dbg !2423, !tbaa !743
  %option_str183 = getelementptr inbounds %struct.GtOption, ptr %161, i32 0, i32 1, !dbg !2424
  %162 = load ptr, ptr %option_str183, align 8, !dbg !2424, !tbaa !979
  %163 = load ptr, ptr %err.addr, align 8, !dbg !2425, !tbaa !743
  %call184 = call i32 @check_missing_argument(i32 noundef %159, i32 noundef %160, ptr noundef %162, ptr noundef %163), !dbg !2426
  store i32 %call184, ptr %had_err, align 4, !dbg !2427, !tbaa !1154
  %164 = load i32, ptr %had_err, align 4, !dbg !2428, !tbaa !1154
  %tobool185 = icmp ne i32 %164, 0, !dbg !2428
  br i1 %tobool185, label %if.end196, label %if.then186, !dbg !2430

if.then186:                                       ; preds = %if.end182
  %165 = load i32, ptr %argnum, align 4, !dbg !2431, !tbaa !1154
  %inc187 = add nsw i32 %165, 1, !dbg !2431
  store i32 %inc187, ptr %argnum, align 4, !dbg !2431, !tbaa !1154
  %166 = load ptr, ptr %argv.addr, align 8, !dbg !2433, !tbaa !743
  %167 = load i32, ptr %argnum, align 4, !dbg !2435, !tbaa !1154
  %idxprom188 = sext i32 %167 to i64, !dbg !2433
  %arrayidx189 = getelementptr inbounds ptr, ptr %166, i64 %idxprom188, !dbg !2433
  %168 = load ptr, ptr %arrayidx189, align 8, !dbg !2433, !tbaa !743
  %call190 = call i32 @gt_parse_double(ptr noundef %double_value, ptr noundef %168), !dbg !2436
  %tobool191 = icmp ne i32 %call190, 0, !dbg !2436
  br i1 %tobool191, label %if.then192, label %if.end195, !dbg !2437

if.then192:                                       ; preds = %if.then186
  %169 = load ptr, ptr %err.addr, align 8, !dbg !2438, !tbaa !743
  %170 = load ptr, ptr %option, align 8, !dbg !2440, !tbaa !743
  %option_str193 = getelementptr inbounds %struct.GtOption, ptr %170, i32 0, i32 1, !dbg !2441
  %171 = load ptr, ptr %option_str193, align 8, !dbg !2441, !tbaa !979
  %call194 = call ptr @gt_str_get(ptr noundef %171), !dbg !2442
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %169, ptr noundef @.str.61, ptr noundef %call194), !dbg !2443
  store i32 -1, ptr %had_err, align 4, !dbg !2444, !tbaa !1154
  br label %if.end195, !dbg !2445

if.end195:                                        ; preds = %if.then192, %if.then186
  br label %if.end196, !dbg !2446

if.end196:                                        ; preds = %if.end195, %if.end182
  %172 = load i32, ptr %had_err, align 4, !dbg !2447, !tbaa !1154
  %tobool197 = icmp ne i32 %172, 0, !dbg !2447
  br i1 %tobool197, label %if.end209, label %if.then198, !dbg !2449

if.then198:                                       ; preds = %if.end196
  %173 = load ptr, ptr %option, align 8, !dbg !2450, !tbaa !743
  %min_value_set = getelementptr inbounds %struct.GtOption, ptr %173, i32 0, i32 11, !dbg !2453
  %174 = load i8, ptr %min_value_set, align 1, !dbg !2453, !tbaa !2454, !range !1270, !noundef !1271
  %tobool199 = trunc i8 %174 to i1, !dbg !2453
  br i1 %tobool199, label %land.lhs.true201, label %if.end208, !dbg !2455

land.lhs.true201:                                 ; preds = %if.then198
  %175 = load double, ptr %double_value, align 8, !dbg !2456, !tbaa !2457
  %176 = load ptr, ptr %option, align 8, !dbg !2459, !tbaa !743
  %min_value = getelementptr inbounds %struct.GtOption, ptr %176, i32 0, i32 6, !dbg !2460
  %177 = load double, ptr %min_value, align 8, !dbg !2461, !tbaa !880
  %cmp202 = fcmp olt double %175, %177, !dbg !2462
  br i1 %cmp202, label %if.then204, label %if.end208, !dbg !2463

if.then204:                                       ; preds = %land.lhs.true201
  %178 = load ptr, ptr %err.addr, align 8, !dbg !2464, !tbaa !743
  %179 = load ptr, ptr %option, align 8, !dbg !2466, !tbaa !743
  %option_str205 = getelementptr inbounds %struct.GtOption, ptr %179, i32 0, i32 1, !dbg !2467
  %180 = load ptr, ptr %option_str205, align 8, !dbg !2467, !tbaa !979
  %call206 = call ptr @gt_str_get(ptr noundef %180), !dbg !2468
  %181 = load ptr, ptr %option, align 8, !dbg !2469, !tbaa !743
  %min_value207 = getelementptr inbounds %struct.GtOption, ptr %181, i32 0, i32 6, !dbg !2470
  %182 = load double, ptr %min_value207, align 8, !dbg !2471, !tbaa !880
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %178, ptr noundef @.str.62, ptr noundef %call206, double noundef %182), !dbg !2472
  store i32 -1, ptr %had_err, align 4, !dbg !2473, !tbaa !1154
  br label %if.end208, !dbg !2474

if.end208:                                        ; preds = %if.then204, %land.lhs.true201, %if.then198
  br label %if.end209, !dbg !2475

if.end209:                                        ; preds = %if.end208, %if.end196
  %183 = load i32, ptr %had_err, align 4, !dbg !2476, !tbaa !1154
  %tobool210 = icmp ne i32 %183, 0, !dbg !2476
  br i1 %tobool210, label %if.end222, label %if.then211, !dbg !2478

if.then211:                                       ; preds = %if.end209
  %184 = load ptr, ptr %option, align 8, !dbg !2479, !tbaa !743
  %max_value_set = getelementptr inbounds %struct.GtOption, ptr %184, i32 0, i32 12, !dbg !2482
  %185 = load i8, ptr %max_value_set, align 4, !dbg !2482, !tbaa !2483, !range !1270, !noundef !1271
  %tobool212 = trunc i8 %185 to i1, !dbg !2482
  br i1 %tobool212, label %land.lhs.true214, label %if.end221, !dbg !2484

land.lhs.true214:                                 ; preds = %if.then211
  %186 = load double, ptr %double_value, align 8, !dbg !2485, !tbaa !2457
  %187 = load ptr, ptr %option, align 8, !dbg !2486, !tbaa !743
  %max_value = getelementptr inbounds %struct.GtOption, ptr %187, i32 0, i32 7, !dbg !2487
  %188 = load double, ptr %max_value, align 8, !dbg !2488, !tbaa !880
  %cmp215 = fcmp ogt double %186, %188, !dbg !2489
  br i1 %cmp215, label %if.then217, label %if.end221, !dbg !2490

if.then217:                                       ; preds = %land.lhs.true214
  %189 = load ptr, ptr %err.addr, align 8, !dbg !2491, !tbaa !743
  %190 = load ptr, ptr %option, align 8, !dbg !2493, !tbaa !743
  %option_str218 = getelementptr inbounds %struct.GtOption, ptr %190, i32 0, i32 1, !dbg !2494
  %191 = load ptr, ptr %option_str218, align 8, !dbg !2494, !tbaa !979
  %call219 = call ptr @gt_str_get(ptr noundef %191), !dbg !2495
  %192 = load ptr, ptr %option, align 8, !dbg !2496, !tbaa !743
  %max_value220 = getelementptr inbounds %struct.GtOption, ptr %192, i32 0, i32 7, !dbg !2497
  %193 = load double, ptr %max_value220, align 8, !dbg !2498, !tbaa !880
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %189, ptr noundef @.str.63, ptr noundef %call219, double noundef %193), !dbg !2499
  store i32 -1, ptr %had_err, align 4, !dbg !2500, !tbaa !1154
  br label %if.end221, !dbg !2501

if.end221:                                        ; preds = %if.then217, %land.lhs.true214, %if.then211
  br label %if.end222, !dbg !2502

if.end222:                                        ; preds = %if.end221, %if.end209
  %194 = load i32, ptr %had_err, align 4, !dbg !2503, !tbaa !1154
  %tobool223 = icmp ne i32 %194, 0, !dbg !2503
  br i1 %tobool223, label %if.end226, label %if.then224, !dbg !2505

if.then224:                                       ; preds = %if.end222
  %195 = load double, ptr %double_value, align 8, !dbg !2506, !tbaa !2457
  %196 = load ptr, ptr %option, align 8, !dbg !2508, !tbaa !743
  %value225 = getelementptr inbounds %struct.GtOption, ptr %196, i32 0, i32 3, !dbg !2509
  %197 = load ptr, ptr %value225, align 8, !dbg !2509, !tbaa !2274
  store double %195, ptr %197, align 8, !dbg !2510, !tbaa !2457
  store i8 1, ptr %option_parsed, align 1, !dbg !2511, !tbaa !1796
  br label %if.end226, !dbg !2512

if.end226:                                        ; preds = %if.then224, %if.end222
  br label %sw.epilog, !dbg !2513

sw.bb227:                                         ; preds = %if.then71
  %198 = load ptr, ptr %op.addr, align 8, !dbg !2514, !tbaa !743
  %199 = load ptr, ptr %err.addr, align 8, !dbg !2516, !tbaa !743
  %call228 = call i32 @show_help(ptr noundef %198, i32 noundef 4, ptr noundef %199), !dbg !2517
  %tobool229 = icmp ne i32 %call228, 0, !dbg !2517
  br i1 %tobool229, label %if.then230, label %if.end231, !dbg !2518

if.then230:                                       ; preds = %sw.bb227
  store i32 1, ptr %retval, align 4, !dbg !2519
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2519

if.end231:                                        ; preds = %sw.bb227
  store i32 2, ptr %retval, align 4, !dbg !2520
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2520

sw.bb232:                                         ; preds = %if.then71
  %200 = load ptr, ptr %op.addr, align 8, !dbg !2521, !tbaa !743
  %201 = load ptr, ptr %err.addr, align 8, !dbg !2523, !tbaa !743
  %call233 = call i32 @show_help(ptr noundef %200, i32 noundef 5, ptr noundef %201), !dbg !2524
  %tobool234 = icmp ne i32 %call233, 0, !dbg !2524
  br i1 %tobool234, label %if.then235, label %if.end236, !dbg !2525

if.then235:                                       ; preds = %sw.bb232
  store i32 1, ptr %retval, align 4, !dbg !2526
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2526

if.end236:                                        ; preds = %sw.bb232
  store i32 2, ptr %retval, align 4, !dbg !2527
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2527

sw.bb237:                                         ; preds = %if.then71
  %202 = load ptr, ptr %op.addr, align 8, !dbg !2528, !tbaa !743
  %203 = load ptr, ptr %err.addr, align 8, !dbg !2530, !tbaa !743
  %call238 = call i32 @show_help(ptr noundef %202, i32 noundef 6, ptr noundef %203), !dbg !2531
  %tobool239 = icmp ne i32 %call238, 0, !dbg !2531
  br i1 %tobool239, label %if.then240, label %if.end241, !dbg !2532

if.then240:                                       ; preds = %sw.bb237
  store i32 1, ptr %retval, align 4, !dbg !2533
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2533

if.end241:                                        ; preds = %sw.bb237
  store i32 2, ptr %retval, align 4, !dbg !2534
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2534

sw.bb242:                                         ; preds = %if.then71
  br label %do.body243, !dbg !2535

do.body243:                                       ; preds = %sw.bb242
  %204 = load ptr, ptr %option, align 8, !dbg !2536, !tbaa !743
  %argument_is_optional = getelementptr inbounds %struct.GtOption, ptr %204, i32 0, i32 15, !dbg !2536
  %205 = load i8, ptr %argument_is_optional, align 1, !dbg !2536, !tbaa !2539, !range !1270, !noundef !1271
  %tobool244 = trunc i8 %205 to i1, !dbg !2536
  br i1 %tobool244, label %if.then245, label %if.end247, !dbg !2540

if.then245:                                       ; preds = %do.body243
  %206 = load ptr, ptr @stderr, align 8, !dbg !2541, !tbaa !743
  %call246 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %206, ptr noundef @.str, ptr noundef @.str.64, ptr noundef @__func__.gt_option_parser_parse, ptr noundef @.str.2, i32 noundef 1152), !dbg !2541
  call void @abort() #9, !dbg !2541
  unreachable, !dbg !2541

if.end247:                                        ; preds = %do.body243
  br label %do.cond248, !dbg !2540

do.cond248:                                       ; preds = %if.end247
  br label %do.end249, !dbg !2540

do.end249:                                        ; preds = %do.cond248
  %207 = load i32, ptr %argnum, align 4, !dbg !2543, !tbaa !1154
  %208 = load i32, ptr %argc.addr, align 4, !dbg !2544, !tbaa !1154
  %209 = load ptr, ptr %option, align 8, !dbg !2545, !tbaa !743
  %option_str250 = getelementptr inbounds %struct.GtOption, ptr %209, i32 0, i32 1, !dbg !2546
  %210 = load ptr, ptr %option_str250, align 8, !dbg !2546, !tbaa !979
  %211 = load ptr, ptr %err.addr, align 8, !dbg !2547, !tbaa !743
  %call251 = call i32 @check_missing_argument(i32 noundef %207, i32 noundef %208, ptr noundef %210, ptr noundef %211), !dbg !2548
  store i32 %call251, ptr %had_err, align 4, !dbg !2549, !tbaa !1154
  %212 = load i32, ptr %had_err, align 4, !dbg !2550, !tbaa !1154
  %tobool252 = icmp ne i32 %212, 0, !dbg !2550
  br i1 %tobool252, label %if.end263, label %if.then253, !dbg !2552

if.then253:                                       ; preds = %do.end249
  %213 = load i32, ptr %argnum, align 4, !dbg !2553, !tbaa !1154
  %inc254 = add nsw i32 %213, 1, !dbg !2553
  store i32 %inc254, ptr %argnum, align 4, !dbg !2553, !tbaa !1154
  %214 = load ptr, ptr %argv.addr, align 8, !dbg !2555, !tbaa !743
  %215 = load i32, ptr %argnum, align 4, !dbg !2557, !tbaa !1154
  %idxprom255 = sext i32 %215 to i64, !dbg !2555
  %arrayidx256 = getelementptr inbounds ptr, ptr %214, i64 %idxprom255, !dbg !2555
  %216 = load ptr, ptr %arrayidx256, align 8, !dbg !2555, !tbaa !743
  %call257 = call i32 @gt_parse_int(ptr noundef %int_value, ptr noundef %216), !dbg !2558
  %tobool258 = icmp ne i32 %call257, 0, !dbg !2558
  br i1 %tobool258, label %if.then259, label %if.end262, !dbg !2559

if.then259:                                       ; preds = %if.then253
  %217 = load ptr, ptr %err.addr, align 8, !dbg !2560, !tbaa !743
  %218 = load ptr, ptr %option, align 8, !dbg !2562, !tbaa !743
  %option_str260 = getelementptr inbounds %struct.GtOption, ptr %218, i32 0, i32 1, !dbg !2563
  %219 = load ptr, ptr %option_str260, align 8, !dbg !2563, !tbaa !979
  %call261 = call ptr @gt_str_get(ptr noundef %219), !dbg !2564
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %217, ptr noundef @.str.65, ptr noundef %call261), !dbg !2565
  store i32 -1, ptr %had_err, align 4, !dbg !2566, !tbaa !1154
  br label %if.end262, !dbg !2567

if.end262:                                        ; preds = %if.then259, %if.then253
  br label %if.end263, !dbg !2568

if.end263:                                        ; preds = %if.end262, %do.end249
  %220 = load i32, ptr %had_err, align 4, !dbg !2569, !tbaa !1154
  %tobool264 = icmp ne i32 %220, 0, !dbg !2569
  br i1 %tobool264, label %if.end278, label %if.then265, !dbg !2571

if.then265:                                       ; preds = %if.end263
  %221 = load ptr, ptr %option, align 8, !dbg !2572, !tbaa !743
  %min_value_set266 = getelementptr inbounds %struct.GtOption, ptr %221, i32 0, i32 11, !dbg !2575
  %222 = load i8, ptr %min_value_set266, align 1, !dbg !2575, !tbaa !2454, !range !1270, !noundef !1271
  %tobool267 = trunc i8 %222 to i1, !dbg !2575
  br i1 %tobool267, label %land.lhs.true269, label %if.end277, !dbg !2576

land.lhs.true269:                                 ; preds = %if.then265
  %223 = load i32, ptr %int_value, align 4, !dbg !2577, !tbaa !1154
  %224 = load ptr, ptr %option, align 8, !dbg !2578, !tbaa !743
  %min_value270 = getelementptr inbounds %struct.GtOption, ptr %224, i32 0, i32 6, !dbg !2579
  %225 = load i32, ptr %min_value270, align 8, !dbg !2580, !tbaa !880
  %cmp271 = icmp slt i32 %223, %225, !dbg !2581
  br i1 %cmp271, label %if.then273, label %if.end277, !dbg !2582

if.then273:                                       ; preds = %land.lhs.true269
  %226 = load ptr, ptr %err.addr, align 8, !dbg !2583, !tbaa !743
  %227 = load ptr, ptr %option, align 8, !dbg !2585, !tbaa !743
  %option_str274 = getelementptr inbounds %struct.GtOption, ptr %227, i32 0, i32 1, !dbg !2586
  %228 = load ptr, ptr %option_str274, align 8, !dbg !2586, !tbaa !979
  %call275 = call ptr @gt_str_get(ptr noundef %228), !dbg !2587
  %229 = load ptr, ptr %option, align 8, !dbg !2588, !tbaa !743
  %min_value276 = getelementptr inbounds %struct.GtOption, ptr %229, i32 0, i32 6, !dbg !2589
  %230 = load i32, ptr %min_value276, align 8, !dbg !2590, !tbaa !880
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %226, ptr noundef @.str.66, ptr noundef %call275, i32 noundef %230), !dbg !2591
  store i32 -1, ptr %had_err, align 4, !dbg !2592, !tbaa !1154
  br label %if.end277, !dbg !2593

if.end277:                                        ; preds = %if.then273, %land.lhs.true269, %if.then265
  br label %if.end278, !dbg !2594

if.end278:                                        ; preds = %if.end277, %if.end263
  %231 = load i32, ptr %had_err, align 4, !dbg !2595, !tbaa !1154
  %tobool279 = icmp ne i32 %231, 0, !dbg !2595
  br i1 %tobool279, label %if.end293, label %if.then280, !dbg !2597

if.then280:                                       ; preds = %if.end278
  %232 = load ptr, ptr %option, align 8, !dbg !2598, !tbaa !743
  %max_value_set281 = getelementptr inbounds %struct.GtOption, ptr %232, i32 0, i32 12, !dbg !2601
  %233 = load i8, ptr %max_value_set281, align 4, !dbg !2601, !tbaa !2483, !range !1270, !noundef !1271
  %tobool282 = trunc i8 %233 to i1, !dbg !2601
  br i1 %tobool282, label %land.lhs.true284, label %if.end292, !dbg !2602

land.lhs.true284:                                 ; preds = %if.then280
  %234 = load i32, ptr %int_value, align 4, !dbg !2603, !tbaa !1154
  %235 = load ptr, ptr %option, align 8, !dbg !2604, !tbaa !743
  %max_value285 = getelementptr inbounds %struct.GtOption, ptr %235, i32 0, i32 7, !dbg !2605
  %236 = load i32, ptr %max_value285, align 8, !dbg !2606, !tbaa !880
  %cmp286 = icmp sgt i32 %234, %236, !dbg !2607
  br i1 %cmp286, label %if.then288, label %if.end292, !dbg !2608

if.then288:                                       ; preds = %land.lhs.true284
  %237 = load ptr, ptr %err.addr, align 8, !dbg !2609, !tbaa !743
  %238 = load ptr, ptr %option, align 8, !dbg !2611, !tbaa !743
  %option_str289 = getelementptr inbounds %struct.GtOption, ptr %238, i32 0, i32 1, !dbg !2612
  %239 = load ptr, ptr %option_str289, align 8, !dbg !2612, !tbaa !979
  %call290 = call ptr @gt_str_get(ptr noundef %239), !dbg !2613
  %240 = load ptr, ptr %option, align 8, !dbg !2614, !tbaa !743
  %max_value291 = getelementptr inbounds %struct.GtOption, ptr %240, i32 0, i32 7, !dbg !2615
  %241 = load i32, ptr %max_value291, align 8, !dbg !2616, !tbaa !880
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %237, ptr noundef @.str.67, ptr noundef %call290, i32 noundef %241), !dbg !2617
  store i32 -1, ptr %had_err, align 4, !dbg !2618, !tbaa !1154
  br label %if.end292, !dbg !2619

if.end292:                                        ; preds = %if.then288, %land.lhs.true284, %if.then280
  br label %if.end293, !dbg !2620

if.end293:                                        ; preds = %if.end292, %if.end278
  %242 = load i32, ptr %had_err, align 4, !dbg !2621, !tbaa !1154
  %tobool294 = icmp ne i32 %242, 0, !dbg !2621
  br i1 %tobool294, label %if.end297, label %if.then295, !dbg !2623

if.then295:                                       ; preds = %if.end293
  %243 = load i32, ptr %int_value, align 4, !dbg !2624, !tbaa !1154
  %244 = load ptr, ptr %option, align 8, !dbg !2626, !tbaa !743
  %value296 = getelementptr inbounds %struct.GtOption, ptr %244, i32 0, i32 3, !dbg !2627
  %245 = load ptr, ptr %value296, align 8, !dbg !2627, !tbaa !2274
  store i32 %243, ptr %245, align 4, !dbg !2628, !tbaa !1154
  store i8 1, ptr %option_parsed, align 1, !dbg !2629, !tbaa !1796
  br label %if.end297, !dbg !2630

if.end297:                                        ; preds = %if.then295, %if.end293
  br label %sw.epilog, !dbg !2631

sw.bb298:                                         ; preds = %if.then71
  %246 = load ptr, ptr %option, align 8, !dbg !2632, !tbaa !743
  %247 = load i32, ptr %argnum, align 4, !dbg !2634, !tbaa !1154
  %248 = load i32, ptr %argc.addr, align 4, !dbg !2635, !tbaa !1154
  %249 = load ptr, ptr %argv.addr, align 8, !dbg !2636, !tbaa !743
  %call299 = call zeroext i1 @optional_arg(ptr noundef %246, i32 noundef %247, i32 noundef %248, ptr noundef %249), !dbg !2637
  br i1 %call299, label %if.then300, label %if.end301, !dbg !2638

if.then300:                                       ; preds = %sw.bb298
  store i8 1, ptr %option_parsed, align 1, !dbg !2639, !tbaa !1796
  br label %sw.epilog, !dbg !2641

if.end301:                                        ; preds = %sw.bb298
  %250 = load i32, ptr %argnum, align 4, !dbg !2642, !tbaa !1154
  %251 = load i32, ptr %argc.addr, align 4, !dbg !2643, !tbaa !1154
  %252 = load ptr, ptr %option, align 8, !dbg !2644, !tbaa !743
  %option_str302 = getelementptr inbounds %struct.GtOption, ptr %252, i32 0, i32 1, !dbg !2645
  %253 = load ptr, ptr %option_str302, align 8, !dbg !2645, !tbaa !979
  %254 = load ptr, ptr %argv.addr, align 8, !dbg !2646, !tbaa !743
  %255 = load ptr, ptr %err.addr, align 8, !dbg !2647, !tbaa !743
  %call303 = call i32 @check_missing_argument_and_minus_sign(i32 noundef %250, i32 noundef %251, ptr noundef %253, ptr noundef %254, ptr noundef %255), !dbg !2648
  store i32 %call303, ptr %had_err, align 4, !dbg !2649, !tbaa !1154
  %256 = load i32, ptr %had_err, align 4, !dbg !2650, !tbaa !1154
  %tobool304 = icmp ne i32 %256, 0, !dbg !2650
  br i1 %tobool304, label %if.end315, label %if.then305, !dbg !2652

if.then305:                                       ; preds = %if.end301
  %257 = load i32, ptr %argnum, align 4, !dbg !2653, !tbaa !1154
  %inc306 = add nsw i32 %257, 1, !dbg !2653
  store i32 %inc306, ptr %argnum, align 4, !dbg !2653, !tbaa !1154
  %258 = load ptr, ptr %argv.addr, align 8, !dbg !2655, !tbaa !743
  %259 = load i32, ptr %argnum, align 4, !dbg !2657, !tbaa !1154
  %idxprom307 = sext i32 %259 to i64, !dbg !2655
  %arrayidx308 = getelementptr inbounds ptr, ptr %258, i64 %idxprom307, !dbg !2655
  %260 = load ptr, ptr %arrayidx308, align 8, !dbg !2655, !tbaa !743
  %call309 = call i32 @gt_parse_uint(ptr noundef %uint_value, ptr noundef %260), !dbg !2658
  %tobool310 = icmp ne i32 %call309, 0, !dbg !2658
  br i1 %tobool310, label %if.then311, label %if.end314, !dbg !2659

if.then311:                                       ; preds = %if.then305
  %261 = load ptr, ptr %err.addr, align 8, !dbg !2660, !tbaa !743
  %262 = load ptr, ptr %option, align 8, !dbg !2662, !tbaa !743
  %option_str312 = getelementptr inbounds %struct.GtOption, ptr %262, i32 0, i32 1, !dbg !2663
  %263 = load ptr, ptr %option_str312, align 8, !dbg !2663, !tbaa !979
  %call313 = call ptr @gt_str_get(ptr noundef %263), !dbg !2664
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %261, ptr noundef @.str.68, ptr noundef %call313, i32 noundef -1), !dbg !2665
  store i32 -1, ptr %had_err, align 4, !dbg !2666, !tbaa !1154
  br label %if.end314, !dbg !2667

if.end314:                                        ; preds = %if.then311, %if.then305
  br label %if.end315, !dbg !2668

if.end315:                                        ; preds = %if.end314, %if.end301
  %264 = load i32, ptr %had_err, align 4, !dbg !2669, !tbaa !1154
  %tobool316 = icmp ne i32 %264, 0, !dbg !2669
  br i1 %tobool316, label %if.end330, label %if.then317, !dbg !2671

if.then317:                                       ; preds = %if.end315
  %265 = load ptr, ptr %option, align 8, !dbg !2672, !tbaa !743
  %min_value_set318 = getelementptr inbounds %struct.GtOption, ptr %265, i32 0, i32 11, !dbg !2675
  %266 = load i8, ptr %min_value_set318, align 1, !dbg !2675, !tbaa !2454, !range !1270, !noundef !1271
  %tobool319 = trunc i8 %266 to i1, !dbg !2675
  br i1 %tobool319, label %land.lhs.true321, label %if.end329, !dbg !2676

land.lhs.true321:                                 ; preds = %if.then317
  %267 = load i32, ptr %uint_value, align 4, !dbg !2677, !tbaa !1154
  %268 = load ptr, ptr %option, align 8, !dbg !2678, !tbaa !743
  %min_value322 = getelementptr inbounds %struct.GtOption, ptr %268, i32 0, i32 6, !dbg !2679
  %269 = load i32, ptr %min_value322, align 8, !dbg !2680, !tbaa !880
  %cmp323 = icmp ult i32 %267, %269, !dbg !2681
  br i1 %cmp323, label %if.then325, label %if.end329, !dbg !2682

if.then325:                                       ; preds = %land.lhs.true321
  %270 = load ptr, ptr %err.addr, align 8, !dbg !2683, !tbaa !743
  %271 = load ptr, ptr %option, align 8, !dbg !2685, !tbaa !743
  %option_str326 = getelementptr inbounds %struct.GtOption, ptr %271, i32 0, i32 1, !dbg !2686
  %272 = load ptr, ptr %option_str326, align 8, !dbg !2686, !tbaa !979
  %call327 = call ptr @gt_str_get(ptr noundef %272), !dbg !2687
  %273 = load ptr, ptr %option, align 8, !dbg !2688, !tbaa !743
  %min_value328 = getelementptr inbounds %struct.GtOption, ptr %273, i32 0, i32 6, !dbg !2689
  %274 = load i32, ptr %min_value328, align 8, !dbg !2690, !tbaa !880
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %270, ptr noundef @.str.69, ptr noundef %call327, i32 noundef %274), !dbg !2691
  store i32 -1, ptr %had_err, align 4, !dbg !2692, !tbaa !1154
  br label %if.end329, !dbg !2693

if.end329:                                        ; preds = %if.then325, %land.lhs.true321, %if.then317
  br label %if.end330, !dbg !2694

if.end330:                                        ; preds = %if.end329, %if.end315
  %275 = load i32, ptr %had_err, align 4, !dbg !2695, !tbaa !1154
  %tobool331 = icmp ne i32 %275, 0, !dbg !2695
  br i1 %tobool331, label %if.end345, label %if.then332, !dbg !2697

if.then332:                                       ; preds = %if.end330
  %276 = load ptr, ptr %option, align 8, !dbg !2698, !tbaa !743
  %max_value_set333 = getelementptr inbounds %struct.GtOption, ptr %276, i32 0, i32 12, !dbg !2701
  %277 = load i8, ptr %max_value_set333, align 4, !dbg !2701, !tbaa !2483, !range !1270, !noundef !1271
  %tobool334 = trunc i8 %277 to i1, !dbg !2701
  br i1 %tobool334, label %land.lhs.true336, label %if.end344, !dbg !2702

land.lhs.true336:                                 ; preds = %if.then332
  %278 = load i32, ptr %uint_value, align 4, !dbg !2703, !tbaa !1154
  %279 = load ptr, ptr %option, align 8, !dbg !2704, !tbaa !743
  %max_value337 = getelementptr inbounds %struct.GtOption, ptr %279, i32 0, i32 7, !dbg !2705
  %280 = load i32, ptr %max_value337, align 8, !dbg !2706, !tbaa !880
  %cmp338 = icmp ugt i32 %278, %280, !dbg !2707
  br i1 %cmp338, label %if.then340, label %if.end344, !dbg !2708

if.then340:                                       ; preds = %land.lhs.true336
  %281 = load ptr, ptr %err.addr, align 8, !dbg !2709, !tbaa !743
  %282 = load ptr, ptr %option, align 8, !dbg !2711, !tbaa !743
  %option_str341 = getelementptr inbounds %struct.GtOption, ptr %282, i32 0, i32 1, !dbg !2712
  %283 = load ptr, ptr %option_str341, align 8, !dbg !2712, !tbaa !979
  %call342 = call ptr @gt_str_get(ptr noundef %283), !dbg !2713
  %284 = load ptr, ptr %option, align 8, !dbg !2714, !tbaa !743
  %max_value343 = getelementptr inbounds %struct.GtOption, ptr %284, i32 0, i32 7, !dbg !2715
  %285 = load i32, ptr %max_value343, align 8, !dbg !2716, !tbaa !880
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %281, ptr noundef @.str.70, ptr noundef %call342, i32 noundef %285), !dbg !2717
  store i32 -1, ptr %had_err, align 4, !dbg !2718, !tbaa !1154
  br label %if.end344, !dbg !2719

if.end344:                                        ; preds = %if.then340, %land.lhs.true336, %if.then332
  br label %if.end345, !dbg !2720

if.end345:                                        ; preds = %if.end344, %if.end330
  %286 = load i32, ptr %had_err, align 4, !dbg !2721, !tbaa !1154
  %tobool346 = icmp ne i32 %286, 0, !dbg !2721
  br i1 %tobool346, label %if.end349, label %if.then347, !dbg !2723

if.then347:                                       ; preds = %if.end345
  %287 = load i32, ptr %uint_value, align 4, !dbg !2724, !tbaa !1154
  %288 = load ptr, ptr %option, align 8, !dbg !2726, !tbaa !743
  %value348 = getelementptr inbounds %struct.GtOption, ptr %288, i32 0, i32 3, !dbg !2727
  %289 = load ptr, ptr %value348, align 8, !dbg !2727, !tbaa !2274
  store i32 %287, ptr %289, align 4, !dbg !2728, !tbaa !1154
  store i8 1, ptr %option_parsed, align 1, !dbg !2729, !tbaa !1796
  br label %if.end349, !dbg !2730

if.end349:                                        ; preds = %if.then347, %if.end345
  br label %sw.epilog, !dbg !2731

sw.bb350:                                         ; preds = %if.then71
  br label %do.body351, !dbg !2732

do.body351:                                       ; preds = %sw.bb350
  %290 = load ptr, ptr %option, align 8, !dbg !2733, !tbaa !743
  %argument_is_optional352 = getelementptr inbounds %struct.GtOption, ptr %290, i32 0, i32 15, !dbg !2733
  %291 = load i8, ptr %argument_is_optional352, align 1, !dbg !2733, !tbaa !2539, !range !1270, !noundef !1271
  %tobool353 = trunc i8 %291 to i1, !dbg !2733
  br i1 %tobool353, label %if.then354, label %if.end356, !dbg !2736

if.then354:                                       ; preds = %do.body351
  %292 = load ptr, ptr @stderr, align 8, !dbg !2737, !tbaa !743
  %call355 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %292, ptr noundef @.str, ptr noundef @.str.64, ptr noundef @__func__.gt_option_parser_parse, ptr noundef @.str.2, i32 noundef 1229), !dbg !2737
  call void @abort() #9, !dbg !2737
  unreachable, !dbg !2737

if.end356:                                        ; preds = %do.body351
  br label %do.cond357, !dbg !2736

do.cond357:                                       ; preds = %if.end356
  br label %do.end358, !dbg !2736

do.end358:                                        ; preds = %do.cond357
  %293 = load i32, ptr %argnum, align 4, !dbg !2739, !tbaa !1154
  %294 = load i32, ptr %argc.addr, align 4, !dbg !2740, !tbaa !1154
  %295 = load ptr, ptr %option, align 8, !dbg !2741, !tbaa !743
  %option_str359 = getelementptr inbounds %struct.GtOption, ptr %295, i32 0, i32 1, !dbg !2742
  %296 = load ptr, ptr %option_str359, align 8, !dbg !2742, !tbaa !979
  %297 = load ptr, ptr %err.addr, align 8, !dbg !2743, !tbaa !743
  %call360 = call i32 @check_missing_argument(i32 noundef %293, i32 noundef %294, ptr noundef %296, ptr noundef %297), !dbg !2744
  store i32 %call360, ptr %had_err, align 4, !dbg !2745, !tbaa !1154
  %298 = load i32, ptr %had_err, align 4, !dbg !2746, !tbaa !1154
  %tobool361 = icmp ne i32 %298, 0, !dbg !2746
  br i1 %tobool361, label %if.end372, label %if.then362, !dbg !2748

if.then362:                                       ; preds = %do.end358
  %299 = load i32, ptr %argnum, align 4, !dbg !2749, !tbaa !1154
  %inc363 = add nsw i32 %299, 1, !dbg !2749
  store i32 %inc363, ptr %argnum, align 4, !dbg !2749, !tbaa !1154
  %300 = load ptr, ptr %argv.addr, align 8, !dbg !2751, !tbaa !743
  %301 = load i32, ptr %argnum, align 4, !dbg !2753, !tbaa !1154
  %idxprom364 = sext i32 %301 to i64, !dbg !2751
  %arrayidx365 = getelementptr inbounds ptr, ptr %300, i64 %idxprom364, !dbg !2751
  %302 = load ptr, ptr %arrayidx365, align 8, !dbg !2751, !tbaa !743
  %call366 = call i32 @gt_parse_word(ptr noundef %long_value, ptr noundef %302), !dbg !2754
  %tobool367 = icmp ne i32 %call366, 0, !dbg !2754
  br i1 %tobool367, label %if.then368, label %if.end371, !dbg !2755

if.then368:                                       ; preds = %if.then362
  %303 = load ptr, ptr %err.addr, align 8, !dbg !2756, !tbaa !743
  %304 = load ptr, ptr %option, align 8, !dbg !2758, !tbaa !743
  %option_str369 = getelementptr inbounds %struct.GtOption, ptr %304, i32 0, i32 1, !dbg !2759
  %305 = load ptr, ptr %option_str369, align 8, !dbg !2759, !tbaa !979
  %call370 = call ptr @gt_str_get(ptr noundef %305), !dbg !2760
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %303, ptr noundef @.str.65, ptr noundef %call370), !dbg !2761
  store i32 -1, ptr %had_err, align 4, !dbg !2762, !tbaa !1154
  br label %if.end371, !dbg !2763

if.end371:                                        ; preds = %if.then368, %if.then362
  br label %if.end372, !dbg !2764

if.end372:                                        ; preds = %if.end371, %do.end358
  %306 = load i32, ptr %had_err, align 4, !dbg !2765, !tbaa !1154
  %tobool373 = icmp ne i32 %306, 0, !dbg !2765
  br i1 %tobool373, label %if.end376, label %if.then374, !dbg !2767

if.then374:                                       ; preds = %if.end372
  %307 = load i64, ptr %long_value, align 8, !dbg !2768, !tbaa !1287
  %308 = load ptr, ptr %option, align 8, !dbg !2770, !tbaa !743
  %value375 = getelementptr inbounds %struct.GtOption, ptr %308, i32 0, i32 3, !dbg !2771
  %309 = load ptr, ptr %value375, align 8, !dbg !2771, !tbaa !2274
  store i64 %307, ptr %309, align 8, !dbg !2772, !tbaa !1287
  store i8 1, ptr %option_parsed, align 1, !dbg !2773, !tbaa !1796
  br label %if.end376, !dbg !2774

if.end376:                                        ; preds = %if.then374, %if.end372
  br label %sw.epilog, !dbg !2775

sw.bb377:                                         ; preds = %if.then71
  %310 = load ptr, ptr %option, align 8, !dbg !2776, !tbaa !743
  %311 = load i32, ptr %argnum, align 4, !dbg !2778, !tbaa !1154
  %312 = load i32, ptr %argc.addr, align 4, !dbg !2779, !tbaa !1154
  %313 = load ptr, ptr %argv.addr, align 8, !dbg !2780, !tbaa !743
  %call378 = call zeroext i1 @optional_arg(ptr noundef %310, i32 noundef %311, i32 noundef %312, ptr noundef %313), !dbg !2781
  br i1 %call378, label %if.then379, label %if.end380, !dbg !2782

if.then379:                                       ; preds = %sw.bb377
  store i8 1, ptr %option_parsed, align 1, !dbg !2783, !tbaa !1796
  br label %sw.epilog, !dbg !2785

if.end380:                                        ; preds = %sw.bb377
  %314 = load i32, ptr %argnum, align 4, !dbg !2786, !tbaa !1154
  %315 = load i32, ptr %argc.addr, align 4, !dbg !2787, !tbaa !1154
  %316 = load ptr, ptr %option, align 8, !dbg !2788, !tbaa !743
  %option_str381 = getelementptr inbounds %struct.GtOption, ptr %316, i32 0, i32 1, !dbg !2789
  %317 = load ptr, ptr %option_str381, align 8, !dbg !2789, !tbaa !979
  %318 = load ptr, ptr %argv.addr, align 8, !dbg !2790, !tbaa !743
  %319 = load ptr, ptr %err.addr, align 8, !dbg !2791, !tbaa !743
  %call382 = call i32 @check_missing_argument_and_minus_sign(i32 noundef %314, i32 noundef %315, ptr noundef %317, ptr noundef %318, ptr noundef %319), !dbg !2792
  store i32 %call382, ptr %had_err, align 4, !dbg !2793, !tbaa !1154
  %320 = load i32, ptr %had_err, align 4, !dbg !2794, !tbaa !1154
  %tobool383 = icmp ne i32 %320, 0, !dbg !2794
  br i1 %tobool383, label %if.end394, label %if.then384, !dbg !2796

if.then384:                                       ; preds = %if.end380
  %321 = load i32, ptr %argnum, align 4, !dbg !2797, !tbaa !1154
  %inc385 = add nsw i32 %321, 1, !dbg !2797
  store i32 %inc385, ptr %argnum, align 4, !dbg !2797, !tbaa !1154
  %322 = load ptr, ptr %argv.addr, align 8, !dbg !2799, !tbaa !743
  %323 = load i32, ptr %argnum, align 4, !dbg !2801, !tbaa !1154
  %idxprom386 = sext i32 %323 to i64, !dbg !2799
  %arrayidx387 = getelementptr inbounds ptr, ptr %322, i64 %idxprom386, !dbg !2799
  %324 = load ptr, ptr %arrayidx387, align 8, !dbg !2799, !tbaa !743
  %call388 = call i32 @gt_parse_uword(ptr noundef %ulong_value, ptr noundef %324), !dbg !2802
  %tobool389 = icmp ne i32 %call388, 0, !dbg !2802
  br i1 %tobool389, label %if.then390, label %if.end393, !dbg !2803

if.then390:                                       ; preds = %if.then384
  %325 = load ptr, ptr %err.addr, align 8, !dbg !2804, !tbaa !743
  %326 = load ptr, ptr %option, align 8, !dbg !2806, !tbaa !743
  %option_str391 = getelementptr inbounds %struct.GtOption, ptr %326, i32 0, i32 1, !dbg !2807
  %327 = load ptr, ptr %option_str391, align 8, !dbg !2807, !tbaa !979
  %call392 = call ptr @gt_str_get(ptr noundef %327), !dbg !2808
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %325, ptr noundef @.str.71, ptr noundef %call392), !dbg !2809
  store i32 -1, ptr %had_err, align 4, !dbg !2810, !tbaa !1154
  br label %if.end393, !dbg !2811

if.end393:                                        ; preds = %if.then390, %if.then384
  br label %if.end394, !dbg !2812

if.end394:                                        ; preds = %if.end393, %if.end380
  %328 = load i32, ptr %had_err, align 4, !dbg !2813, !tbaa !1154
  %tobool395 = icmp ne i32 %328, 0, !dbg !2813
  br i1 %tobool395, label %if.end409, label %if.then396, !dbg !2815

if.then396:                                       ; preds = %if.end394
  %329 = load ptr, ptr %option, align 8, !dbg !2816, !tbaa !743
  %min_value_set397 = getelementptr inbounds %struct.GtOption, ptr %329, i32 0, i32 11, !dbg !2819
  %330 = load i8, ptr %min_value_set397, align 1, !dbg !2819, !tbaa !2454, !range !1270, !noundef !1271
  %tobool398 = trunc i8 %330 to i1, !dbg !2819
  br i1 %tobool398, label %land.lhs.true400, label %if.end408, !dbg !2820

land.lhs.true400:                                 ; preds = %if.then396
  %331 = load i64, ptr %ulong_value, align 8, !dbg !2821, !tbaa !1287
  %332 = load ptr, ptr %option, align 8, !dbg !2822, !tbaa !743
  %min_value401 = getelementptr inbounds %struct.GtOption, ptr %332, i32 0, i32 6, !dbg !2823
  %333 = load i64, ptr %min_value401, align 8, !dbg !2824, !tbaa !880
  %cmp402 = icmp ult i64 %331, %333, !dbg !2825
  br i1 %cmp402, label %if.then404, label %if.end408, !dbg !2826

if.then404:                                       ; preds = %land.lhs.true400
  %334 = load ptr, ptr %err.addr, align 8, !dbg !2827, !tbaa !743
  %335 = load ptr, ptr %option, align 8, !dbg !2829, !tbaa !743
  %option_str405 = getelementptr inbounds %struct.GtOption, ptr %335, i32 0, i32 1, !dbg !2830
  %336 = load ptr, ptr %option_str405, align 8, !dbg !2830, !tbaa !979
  %call406 = call ptr @gt_str_get(ptr noundef %336), !dbg !2831
  %337 = load ptr, ptr %option, align 8, !dbg !2832, !tbaa !743
  %min_value407 = getelementptr inbounds %struct.GtOption, ptr %337, i32 0, i32 6, !dbg !2833
  %338 = load i64, ptr %min_value407, align 8, !dbg !2834, !tbaa !880
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %334, ptr noundef @.str.72, ptr noundef %call406, i64 noundef %338), !dbg !2835
  store i32 -1, ptr %had_err, align 4, !dbg !2836, !tbaa !1154
  br label %if.end408, !dbg !2837

if.end408:                                        ; preds = %if.then404, %land.lhs.true400, %if.then396
  br label %if.end409, !dbg !2838

if.end409:                                        ; preds = %if.end408, %if.end394
  %339 = load i32, ptr %had_err, align 4, !dbg !2839, !tbaa !1154
  %tobool410 = icmp ne i32 %339, 0, !dbg !2839
  br i1 %tobool410, label %if.end424, label %if.then411, !dbg !2841

if.then411:                                       ; preds = %if.end409
  %340 = load ptr, ptr %option, align 8, !dbg !2842, !tbaa !743
  %max_value_set412 = getelementptr inbounds %struct.GtOption, ptr %340, i32 0, i32 12, !dbg !2845
  %341 = load i8, ptr %max_value_set412, align 4, !dbg !2845, !tbaa !2483, !range !1270, !noundef !1271
  %tobool413 = trunc i8 %341 to i1, !dbg !2845
  br i1 %tobool413, label %land.lhs.true415, label %if.end423, !dbg !2846

land.lhs.true415:                                 ; preds = %if.then411
  %342 = load i64, ptr %ulong_value, align 8, !dbg !2847, !tbaa !1287
  %343 = load ptr, ptr %option, align 8, !dbg !2848, !tbaa !743
  %max_value416 = getelementptr inbounds %struct.GtOption, ptr %343, i32 0, i32 7, !dbg !2849
  %344 = load i64, ptr %max_value416, align 8, !dbg !2850, !tbaa !880
  %cmp417 = icmp ugt i64 %342, %344, !dbg !2851
  br i1 %cmp417, label %if.then419, label %if.end423, !dbg !2852

if.then419:                                       ; preds = %land.lhs.true415
  %345 = load ptr, ptr %err.addr, align 8, !dbg !2853, !tbaa !743
  %346 = load ptr, ptr %option, align 8, !dbg !2855, !tbaa !743
  %option_str420 = getelementptr inbounds %struct.GtOption, ptr %346, i32 0, i32 1, !dbg !2856
  %347 = load ptr, ptr %option_str420, align 8, !dbg !2856, !tbaa !979
  %call421 = call ptr @gt_str_get(ptr noundef %347), !dbg !2857
  %348 = load ptr, ptr %option, align 8, !dbg !2858, !tbaa !743
  %max_value422 = getelementptr inbounds %struct.GtOption, ptr %348, i32 0, i32 7, !dbg !2859
  %349 = load i64, ptr %max_value422, align 8, !dbg !2860, !tbaa !880
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %345, ptr noundef @.str.73, ptr noundef %call421, i64 noundef %349), !dbg !2861
  store i32 -1, ptr %had_err, align 4, !dbg !2862, !tbaa !1154
  br label %if.end423, !dbg !2863

if.end423:                                        ; preds = %if.then419, %land.lhs.true415, %if.then411
  br label %if.end424, !dbg !2864

if.end424:                                        ; preds = %if.end423, %if.end409
  %350 = load i32, ptr %had_err, align 4, !dbg !2865, !tbaa !1154
  %tobool425 = icmp ne i32 %350, 0, !dbg !2865
  br i1 %tobool425, label %if.end428, label %if.then426, !dbg !2867

if.then426:                                       ; preds = %if.end424
  %351 = load i64, ptr %ulong_value, align 8, !dbg !2868, !tbaa !1287
  %352 = load ptr, ptr %option, align 8, !dbg !2870, !tbaa !743
  %value427 = getelementptr inbounds %struct.GtOption, ptr %352, i32 0, i32 3, !dbg !2871
  %353 = load ptr, ptr %value427, align 8, !dbg !2871, !tbaa !2274
  store i64 %351, ptr %353, align 8, !dbg !2872, !tbaa !1287
  store i8 1, ptr %option_parsed, align 1, !dbg !2873, !tbaa !1796
  br label %if.end428, !dbg !2874

if.end428:                                        ; preds = %if.then426, %if.end424
  br label %sw.epilog, !dbg !2875

sw.bb429:                                         ; preds = %if.then71
  %354 = load ptr, ptr %option, align 8, !dbg !2876, !tbaa !743
  %355 = load i32, ptr %argnum, align 4, !dbg !2878, !tbaa !1154
  %356 = load i32, ptr %argc.addr, align 4, !dbg !2879, !tbaa !1154
  %357 = load ptr, ptr %argv.addr, align 8, !dbg !2880, !tbaa !743
  %call430 = call zeroext i1 @optional_arg(ptr noundef %354, i32 noundef %355, i32 noundef %356, ptr noundef %357), !dbg !2881
  br i1 %call430, label %if.then431, label %if.end432, !dbg !2882

if.then431:                                       ; preds = %sw.bb429
  store i8 1, ptr %option_parsed, align 1, !dbg !2883, !tbaa !1796
  br label %sw.epilog, !dbg !2885

if.end432:                                        ; preds = %sw.bb429
  %358 = load i32, ptr %argnum, align 4, !dbg !2886, !tbaa !1154
  %359 = load i32, ptr %argc.addr, align 4, !dbg !2887, !tbaa !1154
  %360 = load ptr, ptr %option, align 8, !dbg !2888, !tbaa !743
  %option_str433 = getelementptr inbounds %struct.GtOption, ptr %360, i32 0, i32 1, !dbg !2889
  %361 = load ptr, ptr %option_str433, align 8, !dbg !2889, !tbaa !979
  %362 = load ptr, ptr %argv.addr, align 8, !dbg !2890, !tbaa !743
  %363 = load ptr, ptr %err.addr, align 8, !dbg !2891, !tbaa !743
  %call434 = call i32 @check_missing_argument_and_minus_sign(i32 noundef %358, i32 noundef %359, ptr noundef %361, ptr noundef %362, ptr noundef %363), !dbg !2892
  store i32 %call434, ptr %had_err, align 4, !dbg !2893, !tbaa !1154
  %364 = load i32, ptr %had_err, align 4, !dbg !2894, !tbaa !1154
  %tobool435 = icmp ne i32 %364, 0, !dbg !2894
  br i1 %tobool435, label %if.end449, label %if.then436, !dbg !2896

if.then436:                                       ; preds = %if.end432
  %365 = load i32, ptr %argnum, align 4, !dbg !2897, !tbaa !1154
  %inc437 = add nsw i32 %365, 1, !dbg !2897
  store i32 %inc437, ptr %argnum, align 4, !dbg !2897, !tbaa !1154
  %366 = load ptr, ptr %argv.addr, align 8, !dbg !2899, !tbaa !743
  %367 = load i32, ptr %argnum, align 4, !dbg !2901, !tbaa !1154
  %idxprom438 = sext i32 %367 to i64, !dbg !2899
  %arrayidx439 = getelementptr inbounds ptr, ptr %366, i64 %idxprom438, !dbg !2899
  %368 = load ptr, ptr %arrayidx439, align 8, !dbg !2899, !tbaa !743
  %call440 = call i32 @gt_parse_word(ptr noundef %long_value, ptr noundef %368), !dbg !2902
  %tobool441 = icmp ne i32 %call440, 0, !dbg !2902
  br i1 %tobool441, label %if.then445, label %lor.lhs.false442, !dbg !2903

lor.lhs.false442:                                 ; preds = %if.then436
  %369 = load i64, ptr %long_value, align 8, !dbg !2904, !tbaa !1287
  %cmp443 = icmp slt i64 %369, 0, !dbg !2905
  br i1 %cmp443, label %if.then445, label %if.end448, !dbg !2906

if.then445:                                       ; preds = %lor.lhs.false442, %if.then436
  %370 = load ptr, ptr %err.addr, align 8, !dbg !2907, !tbaa !743
  %371 = load ptr, ptr %option, align 8, !dbg !2909, !tbaa !743
  %option_str446 = getelementptr inbounds %struct.GtOption, ptr %371, i32 0, i32 1, !dbg !2910
  %372 = load ptr, ptr %option_str446, align 8, !dbg !2910, !tbaa !979
  %call447 = call ptr @gt_str_get(ptr noundef %372), !dbg !2911
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %370, ptr noundef @.str.74, ptr noundef %call447), !dbg !2912
  store i32 -1, ptr %had_err, align 4, !dbg !2913, !tbaa !1154
  br label %if.end448, !dbg !2914

if.end448:                                        ; preds = %if.then445, %lor.lhs.false442
  br label %if.end449, !dbg !2915

if.end449:                                        ; preds = %if.end448, %if.end432
  %373 = load i32, ptr %had_err, align 4, !dbg !2916, !tbaa !1154
  %tobool450 = icmp ne i32 %373, 0, !dbg !2916
  br i1 %tobool450, label %if.end466, label %if.then451, !dbg !2918

if.then451:                                       ; preds = %if.end449
  %374 = load ptr, ptr %option, align 8, !dbg !2919, !tbaa !743
  %min_value_set452 = getelementptr inbounds %struct.GtOption, ptr %374, i32 0, i32 11, !dbg !2922
  %375 = load i8, ptr %min_value_set452, align 1, !dbg !2922, !tbaa !2454, !range !1270, !noundef !1271
  %tobool453 = trunc i8 %375 to i1, !dbg !2922
  br i1 %tobool453, label %land.lhs.true455, label %if.else463, !dbg !2923

land.lhs.true455:                                 ; preds = %if.then451
  %376 = load i64, ptr %long_value, align 8, !dbg !2924, !tbaa !1287
  %377 = load ptr, ptr %option, align 8, !dbg !2925, !tbaa !743
  %min_value456 = getelementptr inbounds %struct.GtOption, ptr %377, i32 0, i32 6, !dbg !2926
  %378 = load i64, ptr %min_value456, align 8, !dbg !2927, !tbaa !880
  %cmp457 = icmp ult i64 %376, %378, !dbg !2928
  br i1 %cmp457, label %if.then459, label %if.else463, !dbg !2929

if.then459:                                       ; preds = %land.lhs.true455
  %379 = load ptr, ptr %err.addr, align 8, !dbg !2930, !tbaa !743
  %380 = load ptr, ptr %option, align 8, !dbg !2932, !tbaa !743
  %option_str460 = getelementptr inbounds %struct.GtOption, ptr %380, i32 0, i32 1, !dbg !2933
  %381 = load ptr, ptr %option_str460, align 8, !dbg !2933, !tbaa !979
  %call461 = call ptr @gt_str_get(ptr noundef %381), !dbg !2934
  %382 = load ptr, ptr %option, align 8, !dbg !2935, !tbaa !743
  %min_value462 = getelementptr inbounds %struct.GtOption, ptr %382, i32 0, i32 6, !dbg !2936
  %383 = load i64, ptr %min_value462, align 8, !dbg !2937, !tbaa !880
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %379, ptr noundef @.str.75, ptr noundef %call461, i64 noundef %383), !dbg !2938
  store i32 -1, ptr %had_err, align 4, !dbg !2939, !tbaa !1154
  br label %if.end465, !dbg !2940

if.else463:                                       ; preds = %land.lhs.true455, %if.then451
  %384 = load i64, ptr %long_value, align 8, !dbg !2941, !tbaa !1287
  %385 = load ptr, ptr %option, align 8, !dbg !2942, !tbaa !743
  %value464 = getelementptr inbounds %struct.GtOption, ptr %385, i32 0, i32 3, !dbg !2943
  %386 = load ptr, ptr %value464, align 8, !dbg !2943, !tbaa !2274
  %start = getelementptr inbounds %struct.GtRange, ptr %386, i32 0, i32 0, !dbg !2944
  store i64 %384, ptr %start, align 8, !dbg !2945, !tbaa !2946
  br label %if.end465

if.end465:                                        ; preds = %if.else463, %if.then459
  br label %if.end466, !dbg !2948

if.end466:                                        ; preds = %if.end465, %if.end449
  %387 = load i32, ptr %had_err, align 4, !dbg !2949, !tbaa !1154
  %tobool467 = icmp ne i32 %387, 0, !dbg !2949
  br i1 %tobool467, label %if.end471, label %if.then468, !dbg !2951

if.then468:                                       ; preds = %if.end466
  %388 = load i32, ptr %argnum, align 4, !dbg !2952, !tbaa !1154
  %389 = load i32, ptr %argc.addr, align 4, !dbg !2954, !tbaa !1154
  %390 = load ptr, ptr %option, align 8, !dbg !2955, !tbaa !743
  %option_str469 = getelementptr inbounds %struct.GtOption, ptr %390, i32 0, i32 1, !dbg !2956
  %391 = load ptr, ptr %option_str469, align 8, !dbg !2956, !tbaa !979
  %392 = load ptr, ptr %argv.addr, align 8, !dbg !2957, !tbaa !743
  %393 = load ptr, ptr %err.addr, align 8, !dbg !2958, !tbaa !743
  %call470 = call i32 @check_missing_argument_and_minus_sign(i32 noundef %388, i32 noundef %389, ptr noundef %391, ptr noundef %392, ptr noundef %393), !dbg !2959
  store i32 %call470, ptr %had_err, align 4, !dbg !2960, !tbaa !1154
  br label %if.end471, !dbg !2961

if.end471:                                        ; preds = %if.then468, %if.end466
  %394 = load i32, ptr %had_err, align 4, !dbg !2962, !tbaa !1154
  %tobool472 = icmp ne i32 %394, 0, !dbg !2962
  br i1 %tobool472, label %if.end486, label %if.then473, !dbg !2964

if.then473:                                       ; preds = %if.end471
  %395 = load i32, ptr %argnum, align 4, !dbg !2965, !tbaa !1154
  %inc474 = add nsw i32 %395, 1, !dbg !2965
  store i32 %inc474, ptr %argnum, align 4, !dbg !2965, !tbaa !1154
  %396 = load ptr, ptr %argv.addr, align 8, !dbg !2967, !tbaa !743
  %397 = load i32, ptr %argnum, align 4, !dbg !2969, !tbaa !1154
  %idxprom475 = sext i32 %397 to i64, !dbg !2967
  %arrayidx476 = getelementptr inbounds ptr, ptr %396, i64 %idxprom475, !dbg !2967
  %398 = load ptr, ptr %arrayidx476, align 8, !dbg !2967, !tbaa !743
  %call477 = call i32 @gt_parse_word(ptr noundef %long_value, ptr noundef %398), !dbg !2970
  %tobool478 = icmp ne i32 %call477, 0, !dbg !2970
  br i1 %tobool478, label %if.then482, label %lor.lhs.false479, !dbg !2971

lor.lhs.false479:                                 ; preds = %if.then473
  %399 = load i64, ptr %long_value, align 8, !dbg !2972, !tbaa !1287
  %cmp480 = icmp slt i64 %399, 0, !dbg !2973
  br i1 %cmp480, label %if.then482, label %if.end485, !dbg !2974

if.then482:                                       ; preds = %lor.lhs.false479, %if.then473
  %400 = load ptr, ptr %err.addr, align 8, !dbg !2975, !tbaa !743
  %401 = load ptr, ptr %option, align 8, !dbg !2977, !tbaa !743
  %option_str483 = getelementptr inbounds %struct.GtOption, ptr %401, i32 0, i32 1, !dbg !2978
  %402 = load ptr, ptr %option_str483, align 8, !dbg !2978, !tbaa !979
  %call484 = call ptr @gt_str_get(ptr noundef %402), !dbg !2979
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %400, ptr noundef @.str.76, ptr noundef %call484), !dbg !2980
  store i32 -1, ptr %had_err, align 4, !dbg !2981, !tbaa !1154
  br label %if.end485, !dbg !2982

if.end485:                                        ; preds = %if.then482, %lor.lhs.false479
  br label %if.end486, !dbg !2983

if.end486:                                        ; preds = %if.end485, %if.end471
  %403 = load i32, ptr %had_err, align 4, !dbg !2984, !tbaa !1154
  %tobool487 = icmp ne i32 %403, 0, !dbg !2984
  br i1 %tobool487, label %if.end503, label %if.then488, !dbg !2986

if.then488:                                       ; preds = %if.end486
  %404 = load ptr, ptr %option, align 8, !dbg !2987, !tbaa !743
  %max_value_set489 = getelementptr inbounds %struct.GtOption, ptr %404, i32 0, i32 12, !dbg !2990
  %405 = load i8, ptr %max_value_set489, align 4, !dbg !2990, !tbaa !2483, !range !1270, !noundef !1271
  %tobool490 = trunc i8 %405 to i1, !dbg !2990
  br i1 %tobool490, label %land.lhs.true492, label %if.else500, !dbg !2991

land.lhs.true492:                                 ; preds = %if.then488
  %406 = load i64, ptr %long_value, align 8, !dbg !2992, !tbaa !1287
  %407 = load ptr, ptr %option, align 8, !dbg !2993, !tbaa !743
  %max_value493 = getelementptr inbounds %struct.GtOption, ptr %407, i32 0, i32 7, !dbg !2994
  %408 = load i64, ptr %max_value493, align 8, !dbg !2995, !tbaa !880
  %cmp494 = icmp ugt i64 %406, %408, !dbg !2996
  br i1 %cmp494, label %if.then496, label %if.else500, !dbg !2997

if.then496:                                       ; preds = %land.lhs.true492
  %409 = load ptr, ptr %err.addr, align 8, !dbg !2998, !tbaa !743
  %410 = load ptr, ptr %option, align 8, !dbg !3000, !tbaa !743
  %option_str497 = getelementptr inbounds %struct.GtOption, ptr %410, i32 0, i32 1, !dbg !3001
  %411 = load ptr, ptr %option_str497, align 8, !dbg !3001, !tbaa !979
  %call498 = call ptr @gt_str_get(ptr noundef %411), !dbg !3002
  %412 = load ptr, ptr %option, align 8, !dbg !3003, !tbaa !743
  %max_value499 = getelementptr inbounds %struct.GtOption, ptr %412, i32 0, i32 7, !dbg !3004
  %413 = load i64, ptr %max_value499, align 8, !dbg !3005, !tbaa !880
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %409, ptr noundef @.str.77, ptr noundef %call498, i64 noundef %413), !dbg !3006
  store i32 -1, ptr %had_err, align 4, !dbg !3007, !tbaa !1154
  br label %if.end502, !dbg !3008

if.else500:                                       ; preds = %land.lhs.true492, %if.then488
  %414 = load i64, ptr %long_value, align 8, !dbg !3009, !tbaa !1287
  %415 = load ptr, ptr %option, align 8, !dbg !3010, !tbaa !743
  %value501 = getelementptr inbounds %struct.GtOption, ptr %415, i32 0, i32 3, !dbg !3011
  %416 = load ptr, ptr %value501, align 8, !dbg !3011, !tbaa !2274
  %end = getelementptr inbounds %struct.GtRange, ptr %416, i32 0, i32 1, !dbg !3012
  store i64 %414, ptr %end, align 8, !dbg !3013, !tbaa !3014
  br label %if.end502

if.end502:                                        ; preds = %if.else500, %if.then496
  br label %if.end503, !dbg !3015

if.end503:                                        ; preds = %if.end502, %if.end486
  %417 = load i32, ptr %had_err, align 4, !dbg !3016, !tbaa !1154
  %tobool504 = icmp ne i32 %417, 0, !dbg !3016
  br i1 %tobool504, label %if.end519, label %land.lhs.true505, !dbg !3018

land.lhs.true505:                                 ; preds = %if.end503
  %418 = load ptr, ptr %option, align 8, !dbg !3019, !tbaa !743
  %value506 = getelementptr inbounds %struct.GtOption, ptr %418, i32 0, i32 3, !dbg !3020
  %419 = load ptr, ptr %value506, align 8, !dbg !3020, !tbaa !2274
  %start507 = getelementptr inbounds %struct.GtRange, ptr %419, i32 0, i32 0, !dbg !3021
  %420 = load i64, ptr %start507, align 8, !dbg !3021, !tbaa !2946
  %421 = load ptr, ptr %option, align 8, !dbg !3022, !tbaa !743
  %value508 = getelementptr inbounds %struct.GtOption, ptr %421, i32 0, i32 3, !dbg !3023
  %422 = load ptr, ptr %value508, align 8, !dbg !3023, !tbaa !2274
  %end509 = getelementptr inbounds %struct.GtRange, ptr %422, i32 0, i32 1, !dbg !3024
  %423 = load i64, ptr %end509, align 8, !dbg !3024, !tbaa !3014
  %cmp510 = icmp ugt i64 %420, %423, !dbg !3025
  br i1 %cmp510, label %if.then512, label %if.end519, !dbg !3026

if.then512:                                       ; preds = %land.lhs.true505
  %424 = load ptr, ptr %err.addr, align 8, !dbg !3027, !tbaa !743
  %425 = load ptr, ptr %option, align 8, !dbg !3029, !tbaa !743
  %value513 = getelementptr inbounds %struct.GtOption, ptr %425, i32 0, i32 3, !dbg !3030
  %426 = load ptr, ptr %value513, align 8, !dbg !3030, !tbaa !2274
  %start514 = getelementptr inbounds %struct.GtRange, ptr %426, i32 0, i32 0, !dbg !3031
  %427 = load i64, ptr %start514, align 8, !dbg !3031, !tbaa !2946
  %428 = load ptr, ptr %option, align 8, !dbg !3032, !tbaa !743
  %option_str515 = getelementptr inbounds %struct.GtOption, ptr %428, i32 0, i32 1, !dbg !3033
  %429 = load ptr, ptr %option_str515, align 8, !dbg !3033, !tbaa !979
  %call516 = call ptr @gt_str_get(ptr noundef %429), !dbg !3034
  %430 = load ptr, ptr %option, align 8, !dbg !3035, !tbaa !743
  %value517 = getelementptr inbounds %struct.GtOption, ptr %430, i32 0, i32 3, !dbg !3036
  %431 = load ptr, ptr %value517, align 8, !dbg !3036, !tbaa !2274
  %end518 = getelementptr inbounds %struct.GtRange, ptr %431, i32 0, i32 1, !dbg !3037
  %432 = load i64, ptr %end518, align 8, !dbg !3037, !tbaa !3014
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %424, ptr noundef @.str.78, i64 noundef %427, ptr noundef %call516, i64 noundef %432), !dbg !3038
  store i32 -1, ptr %had_err, align 4, !dbg !3039, !tbaa !1154
  br label %if.end519, !dbg !3040

if.end519:                                        ; preds = %if.then512, %land.lhs.true505, %if.end503
  %433 = load i32, ptr %had_err, align 4, !dbg !3041, !tbaa !1154
  %tobool520 = icmp ne i32 %433, 0, !dbg !3041
  br i1 %tobool520, label %if.end522, label %if.then521, !dbg !3043

if.then521:                                       ; preds = %if.end519
  store i8 1, ptr %option_parsed, align 1, !dbg !3044, !tbaa !1796
  br label %if.end522, !dbg !3045

if.end522:                                        ; preds = %if.then521, %if.end519
  br label %sw.epilog, !dbg !3046

sw.bb523:                                         ; preds = %if.then71, %if.then71
  %434 = load ptr, ptr %option, align 8, !dbg !3047, !tbaa !743
  %435 = load i32, ptr %argnum, align 4, !dbg !3049, !tbaa !1154
  %436 = load i32, ptr %argc.addr, align 4, !dbg !3050, !tbaa !1154
  %437 = load ptr, ptr %argv.addr, align 8, !dbg !3051, !tbaa !743
  %call524 = call zeroext i1 @optional_arg(ptr noundef %434, i32 noundef %435, i32 noundef %436, ptr noundef %437), !dbg !3052
  br i1 %call524, label %if.then525, label %if.end526, !dbg !3053

if.then525:                                       ; preds = %sw.bb523
  store i8 1, ptr %option_parsed, align 1, !dbg !3054, !tbaa !1796
  br label %sw.epilog, !dbg !3056

if.end526:                                        ; preds = %sw.bb523
  %438 = load i32, ptr %argnum, align 4, !dbg !3057, !tbaa !1154
  %439 = load i32, ptr %argc.addr, align 4, !dbg !3058, !tbaa !1154
  %440 = load ptr, ptr %option, align 8, !dbg !3059, !tbaa !743
  %option_str527 = getelementptr inbounds %struct.GtOption, ptr %440, i32 0, i32 1, !dbg !3060
  %441 = load ptr, ptr %option_str527, align 8, !dbg !3060, !tbaa !979
  %442 = load ptr, ptr %argv.addr, align 8, !dbg !3061, !tbaa !743
  %443 = load ptr, ptr %err.addr, align 8, !dbg !3062, !tbaa !743
  %call528 = call i32 @check_missing_argument_and_minus_sign(i32 noundef %438, i32 noundef %439, ptr noundef %441, ptr noundef %442, ptr noundef %443), !dbg !3063
  store i32 %call528, ptr %had_err, align 4, !dbg !3064, !tbaa !1154
  %444 = load i32, ptr %had_err, align 4, !dbg !3065, !tbaa !1154
  %tobool529 = icmp ne i32 %444, 0, !dbg !3065
  br i1 %tobool529, label %if.end535, label %if.then530, !dbg !3067

if.then530:                                       ; preds = %if.end526
  %445 = load i32, ptr %argnum, align 4, !dbg !3068, !tbaa !1154
  %inc531 = add nsw i32 %445, 1, !dbg !3068
  store i32 %inc531, ptr %argnum, align 4, !dbg !3068, !tbaa !1154
  %446 = load ptr, ptr %option, align 8, !dbg !3070, !tbaa !743
  %value532 = getelementptr inbounds %struct.GtOption, ptr %446, i32 0, i32 3, !dbg !3071
  %447 = load ptr, ptr %value532, align 8, !dbg !3071, !tbaa !2274
  %448 = load ptr, ptr %argv.addr, align 8, !dbg !3072, !tbaa !743
  %449 = load i32, ptr %argnum, align 4, !dbg !3073, !tbaa !1154
  %idxprom533 = sext i32 %449 to i64, !dbg !3072
  %arrayidx534 = getelementptr inbounds ptr, ptr %448, i64 %idxprom533, !dbg !3072
  %450 = load ptr, ptr %arrayidx534, align 8, !dbg !3072, !tbaa !743
  call void @gt_str_set(ptr noundef %447, ptr noundef %450), !dbg !3074
  store i8 1, ptr %option_parsed, align 1, !dbg !3075, !tbaa !1796
  br label %if.end535, !dbg !3076

if.end535:                                        ; preds = %if.then530, %if.end526
  br label %sw.epilog, !dbg !3077

sw.bb536:                                         ; preds = %if.then71
  %451 = load ptr, ptr %option, align 8, !dbg !3078, !tbaa !743
  %452 = load i32, ptr %argnum, align 4, !dbg !3080, !tbaa !1154
  %453 = load i32, ptr %argc.addr, align 4, !dbg !3081, !tbaa !1154
  %454 = load ptr, ptr %argv.addr, align 8, !dbg !3082, !tbaa !743
  %call537 = call zeroext i1 @optional_arg(ptr noundef %451, i32 noundef %452, i32 noundef %453, ptr noundef %454), !dbg !3083
  br i1 %call537, label %if.then538, label %if.end539, !dbg !3084

if.then538:                                       ; preds = %sw.bb536
  store i8 1, ptr %option_parsed, align 1, !dbg !3085, !tbaa !1796
  br label %sw.epilog, !dbg !3087

if.end539:                                        ; preds = %sw.bb536
  %455 = load i32, ptr %argnum, align 4, !dbg !3088, !tbaa !1154
  %456 = load i32, ptr %argc.addr, align 4, !dbg !3089, !tbaa !1154
  %457 = load ptr, ptr %option, align 8, !dbg !3090, !tbaa !743
  %option_str540 = getelementptr inbounds %struct.GtOption, ptr %457, i32 0, i32 1, !dbg !3091
  %458 = load ptr, ptr %option_str540, align 8, !dbg !3091, !tbaa !979
  %459 = load ptr, ptr %argv.addr, align 8, !dbg !3092, !tbaa !743
  %460 = load ptr, ptr %err.addr, align 8, !dbg !3093, !tbaa !743
  %call541 = call i32 @check_missing_argument_and_minus_sign(i32 noundef %455, i32 noundef %456, ptr noundef %458, ptr noundef %459, ptr noundef %460), !dbg !3094
  store i32 %call541, ptr %had_err, align 4, !dbg !3095, !tbaa !1154
  br label %while.cond542, !dbg !3096

while.cond542:                                    ; preds = %if.end567, %if.end539
  %461 = load i32, ptr %had_err, align 4, !dbg !3097, !tbaa !1154
  %tobool543 = icmp ne i32 %461, 0, !dbg !3098
  %lnot = xor i1 %tobool543, true, !dbg !3098
  br i1 %lnot, label %while.body544, label %while.end568, !dbg !3096

while.body544:                                    ; preds = %while.cond542
  %462 = load i32, ptr %argnum, align 4, !dbg !3099, !tbaa !1154
  %add545 = add nsw i32 %462, 1, !dbg !3102
  %463 = load i32, ptr %argc.addr, align 4, !dbg !3103, !tbaa !1154
  %cmp546 = icmp slt i32 %add545, %463, !dbg !3104
  br i1 %cmp546, label %land.lhs.true548, label %if.else561, !dbg !3105

land.lhs.true548:                                 ; preds = %while.body544
  %464 = load ptr, ptr %argv.addr, align 8, !dbg !3106, !tbaa !743
  %465 = load i32, ptr %argnum, align 4, !dbg !3107, !tbaa !1154
  %add549 = add nsw i32 %465, 1, !dbg !3108
  %idxprom550 = sext i32 %add549 to i64, !dbg !3106
  %arrayidx551 = getelementptr inbounds ptr, ptr %464, i64 %idxprom550, !dbg !3106
  %466 = load ptr, ptr %arrayidx551, align 8, !dbg !3106, !tbaa !743
  %arrayidx552 = getelementptr inbounds i8, ptr %466, i64 0, !dbg !3106
  %467 = load i8, ptr %arrayidx552, align 1, !dbg !3106, !tbaa !880
  %conv553 = sext i8 %467 to i32, !dbg !3106
  %cmp554 = icmp ne i32 %conv553, 45, !dbg !3109
  br i1 %cmp554, label %if.then556, label %if.else561, !dbg !3110

if.then556:                                       ; preds = %land.lhs.true548
  %468 = load i32, ptr %argnum, align 4, !dbg !3111, !tbaa !1154
  %inc557 = add nsw i32 %468, 1, !dbg !3111
  store i32 %inc557, ptr %argnum, align 4, !dbg !3111, !tbaa !1154
  %469 = load ptr, ptr %option, align 8, !dbg !3113, !tbaa !743
  %value558 = getelementptr inbounds %struct.GtOption, ptr %469, i32 0, i32 3, !dbg !3114
  %470 = load ptr, ptr %value558, align 8, !dbg !3114, !tbaa !2274
  %471 = load ptr, ptr %argv.addr, align 8, !dbg !3115, !tbaa !743
  %472 = load i32, ptr %argnum, align 4, !dbg !3116, !tbaa !1154
  %idxprom559 = sext i32 %472 to i64, !dbg !3115
  %arrayidx560 = getelementptr inbounds ptr, ptr %471, i64 %idxprom559, !dbg !3115
  %473 = load ptr, ptr %arrayidx560, align 8, !dbg !3115, !tbaa !743
  call void @gt_str_array_add_cstr(ptr noundef %470, ptr noundef %473), !dbg !3117
  store i8 1, ptr %option_parsed, align 1, !dbg !3118, !tbaa !1796
  br label %if.end567, !dbg !3119

if.else561:                                       ; preds = %land.lhs.true548, %while.body544
  %474 = load i8, ptr %option_parsed, align 1, !dbg !3120, !tbaa !1796, !range !1270, !noundef !1271
  %tobool562 = trunc i8 %474 to i1, !dbg !3120
  br i1 %tobool562, label %if.end566, label %if.then563, !dbg !3123

if.then563:                                       ; preds = %if.else561
  %475 = load ptr, ptr %err.addr, align 8, !dbg !3124, !tbaa !743
  %476 = load ptr, ptr %option, align 8, !dbg !3126, !tbaa !743
  %option_str564 = getelementptr inbounds %struct.GtOption, ptr %476, i32 0, i32 1, !dbg !3127
  %477 = load ptr, ptr %option_str564, align 8, !dbg !3127, !tbaa !979
  %call565 = call ptr @gt_str_get(ptr noundef %477), !dbg !3128
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %475, ptr noundef @.str.79, ptr noundef %call565), !dbg !3129
  store i32 -1, ptr %had_err, align 4, !dbg !3130, !tbaa !1154
  br label %if.end566, !dbg !3131

if.end566:                                        ; preds = %if.then563, %if.else561
  br label %while.end568, !dbg !3132

if.end567:                                        ; preds = %if.then556
  br label %while.cond542, !dbg !3096, !llvm.loop !3133

while.end568:                                     ; preds = %if.end566, %while.cond542
  br label %sw.epilog, !dbg !3135

sw.bb569:                                         ; preds = %if.then71
  %478 = load ptr, ptr %op.addr, align 8, !dbg !3136, !tbaa !743
  %version_func570 = getelementptr inbounds %struct.GtOptionParser, ptr %478, i32 0, i32 9, !dbg !3138
  %479 = load ptr, ptr %version_func570, align 8, !dbg !3138, !tbaa !1085
  %tobool571 = icmp ne ptr %479, null, !dbg !3136
  br i1 %tobool571, label %if.then572, label %if.else575, !dbg !3139

if.then572:                                       ; preds = %sw.bb569
  %480 = load ptr, ptr %op.addr, align 8, !dbg !3140, !tbaa !743
  %version_func573 = getelementptr inbounds %struct.GtOptionParser, ptr %480, i32 0, i32 9, !dbg !3141
  %481 = load ptr, ptr %version_func573, align 8, !dbg !3141, !tbaa !1085
  %482 = load ptr, ptr %op.addr, align 8, !dbg !3142, !tbaa !743
  %progname574 = getelementptr inbounds %struct.GtOptionParser, ptr %482, i32 0, i32 0, !dbg !3143
  %483 = load ptr, ptr %progname574, align 8, !dbg !3143, !tbaa !2137
  call void %481(ptr noundef %483), !dbg !3140
  br label %if.end577, !dbg !3140

if.else575:                                       ; preds = %sw.bb569
  %484 = load ptr, ptr %version_func.addr, align 8, !dbg !3144, !tbaa !743
  %485 = load ptr, ptr %op.addr, align 8, !dbg !3145, !tbaa !743
  %progname576 = getelementptr inbounds %struct.GtOptionParser, ptr %485, i32 0, i32 0, !dbg !3146
  %486 = load ptr, ptr %progname576, align 8, !dbg !3146, !tbaa !2137
  call void %484(ptr noundef %486), !dbg !3144
  br label %if.end577

if.end577:                                        ; preds = %if.else575, %if.then572
  store i32 2, ptr %retval, align 4, !dbg !3147
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3147

sw.default:                                       ; preds = %if.then71
  br label %do.body578, !dbg !3148

do.body578:                                       ; preds = %sw.default
  %487 = load ptr, ptr @stderr, align 8, !dbg !3149, !tbaa !743
  %call579 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %487, ptr noundef @.str, ptr noundef @.str.80, ptr noundef @__func__.gt_option_parser_parse, ptr noundef @.str.2, i32 noundef 1412), !dbg !3149
  call void @abort() #9, !dbg !3149
  unreachable, !dbg !3149

do.cond580:                                       ; No predecessors!
  br label %do.end581, !dbg !3153

do.end581:                                        ; preds = %do.cond580
  br label %sw.epilog, !dbg !3154

sw.epilog:                                        ; preds = %do.end581, %while.end568, %if.then538, %if.end535, %if.then525, %if.end522, %if.then431, %if.end428, %if.then379, %if.end376, %if.end349, %if.then300, %if.end297, %if.end226, %if.then181, %if.end178, %if.then118, %if.end114, %if.then109, %if.then95
  br label %if.end582, !dbg !3155

if.end582:                                        ; preds = %sw.epilog, %if.end69
  %488 = load i32, ptr %had_err, align 4, !dbg !3156, !tbaa !1154
  %tobool583 = icmp ne i32 %488, 0, !dbg !3156
  br i1 %tobool583, label %if.then587, label %lor.lhs.false584, !dbg !3158

lor.lhs.false584:                                 ; preds = %if.end582
  %489 = load i8, ptr %option_parsed, align 1, !dbg !3159, !tbaa !1796, !range !1270, !noundef !1271
  %tobool585 = trunc i8 %489 to i1, !dbg !3159
  br i1 %tobool585, label %if.then587, label %if.end588, !dbg !3160

if.then587:                                       ; preds = %lor.lhs.false584, %if.end582
  br label %for.end592, !dbg !3161

if.end588:                                        ; preds = %lor.lhs.false584
  br label %if.end589, !dbg !3162

if.end589:                                        ; preds = %if.end588, %for.body48
  br label %for.inc590, !dbg !3163

for.inc590:                                       ; preds = %if.end589
  %490 = load i64, ptr %i, align 8, !dbg !3164, !tbaa !1287
  %inc591 = add i64 %490, 1, !dbg !3164
  store i64 %inc591, ptr %i, align 8, !dbg !3164, !tbaa !1287
  br label %for.cond44, !dbg !3165, !llvm.loop !3166

for.end592:                                       ; preds = %if.then587, %for.cond44
  %491 = load i32, ptr %had_err, align 4, !dbg !3168, !tbaa !1154
  %tobool593 = icmp ne i32 %491, 0, !dbg !3168
  br i1 %tobool593, label %if.then594, label %if.end595, !dbg !3170

if.then594:                                       ; preds = %for.end592
  br label %for.end610, !dbg !3171

if.end595:                                        ; preds = %for.end592
  %492 = load i8, ptr %option_parsed, align 1, !dbg !3172, !tbaa !1796, !range !1270, !noundef !1271
  %tobool596 = trunc i8 %492 to i1, !dbg !3172
  br i1 %tobool596, label %if.then597, label %if.end598, !dbg !3174

if.then597:                                       ; preds = %if.end595
  br label %for.inc608, !dbg !3175

if.end598:                                        ; preds = %if.end595
  br label %do.body599, !dbg !3176

do.body599:                                       ; preds = %if.end598
  %493 = load i32, ptr %had_err, align 4, !dbg !3177, !tbaa !1154
  %tobool600 = icmp ne i32 %493, 0, !dbg !3177
  br i1 %tobool600, label %if.then601, label %if.end603, !dbg !3180

if.then601:                                       ; preds = %do.body599
  %494 = load ptr, ptr @stderr, align 8, !dbg !3181, !tbaa !743
  %call602 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %494, ptr noundef @.str, ptr noundef @.str.81, ptr noundef @__func__.gt_option_parser_parse, ptr noundef @.str.2, i32 noundef 1426), !dbg !3181
  call void @abort() #9, !dbg !3181
  unreachable, !dbg !3181

if.end603:                                        ; preds = %do.body599
  br label %do.cond604, !dbg !3180

do.cond604:                                       ; preds = %if.end603
  br label %do.end605, !dbg !3180

do.end605:                                        ; preds = %do.cond604
  %495 = load ptr, ptr %err.addr, align 8, !dbg !3183, !tbaa !743
  %496 = load ptr, ptr %argv.addr, align 8, !dbg !3184, !tbaa !743
  %497 = load i32, ptr %argnum, align 4, !dbg !3185, !tbaa !1154
  %idxprom606 = sext i32 %497 to i64, !dbg !3184
  %arrayidx607 = getelementptr inbounds ptr, ptr %496, i64 %idxprom606, !dbg !3184
  %498 = load ptr, ptr %arrayidx607, align 8, !dbg !3184, !tbaa !743
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %495, ptr noundef @.str.82, ptr noundef %498), !dbg !3186
  store i32 -1, ptr %had_err, align 4, !dbg !3187, !tbaa !1154
  br label %for.end610, !dbg !3188

for.inc608:                                       ; preds = %if.then597
  %499 = load i32, ptr %argnum, align 4, !dbg !3189, !tbaa !1154
  %inc609 = add nsw i32 %499, 1, !dbg !3189
  store i32 %inc609, ptr %argnum, align 4, !dbg !3189, !tbaa !1154
  br label %for.cond20, !dbg !3190, !llvm.loop !3191

for.end610:                                       ; preds = %do.end605, %if.then594, %if.then42, %for.cond20
  %500 = load i32, ptr %argnum, align 4, !dbg !3193, !tbaa !1154
  %501 = load i32, ptr %argc.addr, align 4, !dbg !3195, !tbaa !1154
  %cmp611 = icmp slt i32 %500, %501, !dbg !3196
  br i1 %cmp611, label %land.lhs.true613, label %if.end620, !dbg !3197

land.lhs.true613:                                 ; preds = %for.end610
  %502 = load ptr, ptr %argv.addr, align 8, !dbg !3198, !tbaa !743
  %503 = load i32, ptr %argnum, align 4, !dbg !3199, !tbaa !1154
  %idxprom614 = sext i32 %503 to i64, !dbg !3198
  %arrayidx615 = getelementptr inbounds ptr, ptr %502, i64 %idxprom614, !dbg !3198
  %504 = load ptr, ptr %arrayidx615, align 8, !dbg !3198, !tbaa !743
  %call616 = call i32 @strcmp(ptr noundef %504, ptr noundef @.str.54) #11, !dbg !3200
  %tobool617 = icmp ne i32 %call616, 0, !dbg !3200
  br i1 %tobool617, label %if.end620, label %if.then618, !dbg !3201

if.then618:                                       ; preds = %land.lhs.true613
  %505 = load i32, ptr %argnum, align 4, !dbg !3202, !tbaa !1154
  %inc619 = add nsw i32 %505, 1, !dbg !3202
  store i32 %inc619, ptr %argnum, align 4, !dbg !3202, !tbaa !1154
  br label %if.end620, !dbg !3203

if.end620:                                        ; preds = %if.then618, %land.lhs.true613, %for.end610
  %506 = load i32, ptr %had_err, align 4, !dbg !3204, !tbaa !1154
  %tobool621 = icmp ne i32 %506, 0, !dbg !3204
  br i1 %tobool621, label %if.end631, label %land.lhs.true622, !dbg !3206

land.lhs.true622:                                 ; preds = %if.end620
  %507 = load ptr, ptr %op.addr, align 8, !dbg !3207, !tbaa !743
  %min_additional_arguments = getelementptr inbounds %struct.GtOptionParser, ptr %507, i32 0, i32 11, !dbg !3208
  %508 = load i32, ptr %min_additional_arguments, align 8, !dbg !3208, !tbaa !916
  %cmp623 = icmp ne i32 %508, -1, !dbg !3209
  br i1 %cmp623, label %land.lhs.true625, label %if.end631, !dbg !3210

land.lhs.true625:                                 ; preds = %land.lhs.true622
  %509 = load i32, ptr %argc.addr, align 4, !dbg !3211, !tbaa !1154
  %510 = load i32, ptr %argnum, align 4, !dbg !3212, !tbaa !1154
  %sub = sub nsw i32 %509, %510, !dbg !3213
  %511 = load ptr, ptr %op.addr, align 8, !dbg !3214, !tbaa !743
  %min_additional_arguments626 = getelementptr inbounds %struct.GtOptionParser, ptr %511, i32 0, i32 11, !dbg !3215
  %512 = load i32, ptr %min_additional_arguments626, align 8, !dbg !3215, !tbaa !916
  %cmp627 = icmp ult i32 %sub, %512, !dbg !3216
  br i1 %cmp627, label %if.then629, label %if.end631, !dbg !3217

if.then629:                                       ; preds = %land.lhs.true625
  %513 = load ptr, ptr %err.addr, align 8, !dbg !3218, !tbaa !743
  %514 = load ptr, ptr %op.addr, align 8, !dbg !3220, !tbaa !743
  %progname630 = getelementptr inbounds %struct.GtOptionParser, ptr %514, i32 0, i32 0, !dbg !3221
  %515 = load ptr, ptr %progname630, align 8, !dbg !3221, !tbaa !2137
  %516 = load ptr, ptr %op.addr, align 8, !dbg !3222, !tbaa !743
  %synopsis = getelementptr inbounds %struct.GtOptionParser, ptr %516, i32 0, i32 1, !dbg !3223
  %517 = load ptr, ptr %synopsis, align 8, !dbg !3223, !tbaa !900
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %513, ptr noundef @.str.83, ptr noundef %515, ptr noundef %517), !dbg !3224
  store i32 -1, ptr %had_err, align 4, !dbg !3225, !tbaa !1154
  br label %if.end631, !dbg !3226

if.end631:                                        ; preds = %if.then629, %land.lhs.true625, %land.lhs.true622, %if.end620
  %518 = load i32, ptr %had_err, align 4, !dbg !3227, !tbaa !1154
  %tobool632 = icmp ne i32 %518, 0, !dbg !3227
  br i1 %tobool632, label %if.end648, label %land.lhs.true633, !dbg !3229

land.lhs.true633:                                 ; preds = %if.end631
  %519 = load ptr, ptr %op.addr, align 8, !dbg !3230, !tbaa !743
  %max_additional_arguments = getelementptr inbounds %struct.GtOptionParser, ptr %519, i32 0, i32 12, !dbg !3231
  %520 = load i32, ptr %max_additional_arguments, align 4, !dbg !3231, !tbaa !920
  %cmp634 = icmp ne i32 %520, -1, !dbg !3232
  br i1 %cmp634, label %land.lhs.true636, label %if.end648, !dbg !3233

land.lhs.true636:                                 ; preds = %land.lhs.true633
  %521 = load i32, ptr %argc.addr, align 4, !dbg !3234, !tbaa !1154
  %522 = load i32, ptr %argnum, align 4, !dbg !3235, !tbaa !1154
  %sub637 = sub nsw i32 %521, %522, !dbg !3236
  %523 = load ptr, ptr %op.addr, align 8, !dbg !3237, !tbaa !743
  %max_additional_arguments638 = getelementptr inbounds %struct.GtOptionParser, ptr %523, i32 0, i32 12, !dbg !3238
  %524 = load i32, ptr %max_additional_arguments638, align 4, !dbg !3238, !tbaa !920
  %cmp639 = icmp ugt i32 %sub637, %524, !dbg !3239
  br i1 %cmp639, label %if.then641, label %if.end648, !dbg !3240

if.then641:                                       ; preds = %land.lhs.true636
  %525 = load ptr, ptr %err.addr, align 8, !dbg !3241, !tbaa !743
  %526 = load ptr, ptr %argv.addr, align 8, !dbg !3243, !tbaa !743
  %527 = load i32, ptr %argnum, align 4, !dbg !3244, !tbaa !1154
  %528 = load ptr, ptr %op.addr, align 8, !dbg !3245, !tbaa !743
  %max_additional_arguments642 = getelementptr inbounds %struct.GtOptionParser, ptr %528, i32 0, i32 12, !dbg !3246
  %529 = load i32, ptr %max_additional_arguments642, align 4, !dbg !3246, !tbaa !920
  %add643 = add i32 %527, %529, !dbg !3247
  %idxprom644 = zext i32 %add643 to i64, !dbg !3243
  %arrayidx645 = getelementptr inbounds ptr, ptr %526, i64 %idxprom644, !dbg !3243
  %530 = load ptr, ptr %arrayidx645, align 8, !dbg !3243, !tbaa !743
  %531 = load ptr, ptr %op.addr, align 8, !dbg !3248, !tbaa !743
  %progname646 = getelementptr inbounds %struct.GtOptionParser, ptr %531, i32 0, i32 0, !dbg !3249
  %532 = load ptr, ptr %progname646, align 8, !dbg !3249, !tbaa !2137
  %533 = load ptr, ptr %op.addr, align 8, !dbg !3250, !tbaa !743
  %synopsis647 = getelementptr inbounds %struct.GtOptionParser, ptr %533, i32 0, i32 1, !dbg !3251
  %534 = load ptr, ptr %synopsis647, align 8, !dbg !3251, !tbaa !900
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %525, ptr noundef @.str.84, ptr noundef %530, ptr noundef %532, ptr noundef %534), !dbg !3252
  store i32 -1, ptr %had_err, align 4, !dbg !3253, !tbaa !1154
  br label %if.end648, !dbg !3254

if.end648:                                        ; preds = %if.then641, %land.lhs.true636, %land.lhs.true633, %if.end631
  %535 = load i32, ptr %had_err, align 4, !dbg !3255, !tbaa !1154
  %tobool649 = icmp ne i32 %535, 0, !dbg !3255
  br i1 %tobool649, label %if.end652, label %if.then650, !dbg !3257

if.then650:                                       ; preds = %if.end648
  %536 = load ptr, ptr %op.addr, align 8, !dbg !3258, !tbaa !743
  %537 = load ptr, ptr %err.addr, align 8, !dbg !3259, !tbaa !743
  %call651 = call i32 @check_mandatory_options(ptr noundef %536, ptr noundef %537), !dbg !3260
  store i32 %call651, ptr %had_err, align 4, !dbg !3261, !tbaa !1154
  br label %if.end652, !dbg !3262

if.end652:                                        ; preds = %if.then650, %if.end648
  %538 = load i32, ptr %had_err, align 4, !dbg !3263, !tbaa !1154
  %tobool653 = icmp ne i32 %538, 0, !dbg !3263
  br i1 %tobool653, label %if.end656, label %if.then654, !dbg !3265

if.then654:                                       ; preds = %if.end652
  %539 = load ptr, ptr %op.addr, align 8, !dbg !3266, !tbaa !743
  %540 = load ptr, ptr %err.addr, align 8, !dbg !3267, !tbaa !743
  %call655 = call i32 @check_option_implications(ptr noundef %539, ptr noundef %540), !dbg !3268
  store i32 %call655, ptr %had_err, align 4, !dbg !3269, !tbaa !1154
  br label %if.end656, !dbg !3270

if.end656:                                        ; preds = %if.then654, %if.end652
  %541 = load i32, ptr %had_err, align 4, !dbg !3271, !tbaa !1154
  %tobool657 = icmp ne i32 %541, 0, !dbg !3271
  br i1 %tobool657, label %if.end660, label %if.then658, !dbg !3273

if.then658:                                       ; preds = %if.end656
  %542 = load ptr, ptr %op.addr, align 8, !dbg !3274, !tbaa !743
  %543 = load ptr, ptr %err.addr, align 8, !dbg !3275, !tbaa !743
  %call659 = call i32 @check_option_exclusions(ptr noundef %542, ptr noundef %543), !dbg !3276
  store i32 %call659, ptr %had_err, align 4, !dbg !3277, !tbaa !1154
  br label %if.end660, !dbg !3278

if.end660:                                        ; preds = %if.then658, %if.end656
  %544 = load i32, ptr %had_err, align 4, !dbg !3279, !tbaa !1154
  %tobool661 = icmp ne i32 %544, 0, !dbg !3279
  br i1 %tobool661, label %if.end664, label %if.then662, !dbg !3281

if.then662:                                       ; preds = %if.end660
  %545 = load ptr, ptr %op.addr, align 8, !dbg !3282, !tbaa !743
  %546 = load ptr, ptr %err.addr, align 8, !dbg !3283, !tbaa !743
  %call663 = call i32 @check_mandatory_either_options(ptr noundef %545, ptr noundef %546), !dbg !3284
  store i32 %call663, ptr %had_err, align 4, !dbg !3285, !tbaa !1154
  br label %if.end664, !dbg !3286

if.end664:                                        ; preds = %if.then662, %if.end660
  store i64 0, ptr %i, align 8, !dbg !3287, !tbaa !1287
  br label %for.cond665, !dbg !3289

for.cond665:                                      ; preds = %for.inc674, %if.end664
  %547 = load i32, ptr %had_err, align 4, !dbg !3290, !tbaa !1154
  %tobool666 = icmp ne i32 %547, 0, !dbg !3290
  br i1 %tobool666, label %land.end, label %land.rhs, !dbg !3292

land.rhs:                                         ; preds = %for.cond665
  %548 = load i64, ptr %i, align 8, !dbg !3293, !tbaa !1287
  %549 = load ptr, ptr %op.addr, align 8, !dbg !3294, !tbaa !743
  %hooks = getelementptr inbounds %struct.GtOptionParser, ptr %549, i32 0, i32 4, !dbg !3295
  %550 = load ptr, ptr %hooks, align 8, !dbg !3295, !tbaa !1119
  %call667 = call i64 @gt_array_size(ptr noundef %550), !dbg !3296
  %cmp668 = icmp ult i64 %548, %call667, !dbg !3297
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond665
  %551 = phi i1 [ false, %for.cond665 ], [ %cmp668, %land.rhs ], !dbg !3298
  br i1 %551, label %for.body670, label %for.end676, !dbg !3299

for.body670:                                      ; preds = %land.end
  %552 = load ptr, ptr %op.addr, align 8, !dbg !3300, !tbaa !743
  %hooks671 = getelementptr inbounds %struct.GtOptionParser, ptr %552, i32 0, i32 4, !dbg !3302
  %553 = load ptr, ptr %hooks671, align 8, !dbg !3302, !tbaa !1119
  %554 = load i64, ptr %i, align 8, !dbg !3303, !tbaa !1287
  %call672 = call ptr @gt_array_get(ptr noundef %553, i64 noundef %554), !dbg !3304
  store ptr %call672, ptr %hookinfo, align 8, !dbg !3305, !tbaa !743
  %555 = load ptr, ptr %hookinfo, align 8, !dbg !3306, !tbaa !743
  %hook = getelementptr inbounds %struct.HookInfo, ptr %555, i32 0, i32 0, !dbg !3307
  %556 = load ptr, ptr %hook, align 8, !dbg !3307, !tbaa !1128
  %557 = load ptr, ptr %hookinfo, align 8, !dbg !3308, !tbaa !743
  %data = getelementptr inbounds %struct.HookInfo, ptr %557, i32 0, i32 1, !dbg !3309
  %558 = load ptr, ptr %data, align 8, !dbg !3309, !tbaa !1133
  %559 = load ptr, ptr %err.addr, align 8, !dbg !3310, !tbaa !743
  %call673 = call i32 %556(ptr noundef %558, ptr noundef %559), !dbg !3306
  store i32 %call673, ptr %had_err, align 4, !dbg !3311, !tbaa !1154
  br label %for.inc674, !dbg !3312

for.inc674:                                       ; preds = %for.body670
  %560 = load i64, ptr %i, align 8, !dbg !3313, !tbaa !1287
  %inc675 = add i64 %560, 1, !dbg !3313
  store i64 %inc675, ptr %i, align 8, !dbg !3313, !tbaa !1287
  br label %for.cond665, !dbg !3314, !llvm.loop !3315

for.end676:                                       ; preds = %land.end
  %561 = load ptr, ptr %parsed_args.addr, align 8, !dbg !3317, !tbaa !743
  %tobool677 = icmp ne ptr %561, null, !dbg !3317
  br i1 %tobool677, label %if.then678, label %if.end679, !dbg !3319

if.then678:                                       ; preds = %for.end676
  %562 = load i32, ptr %argnum, align 4, !dbg !3320, !tbaa !1154
  %563 = load ptr, ptr %parsed_args.addr, align 8, !dbg !3321, !tbaa !743
  store i32 %562, ptr %563, align 4, !dbg !3322, !tbaa !1154
  br label %if.end679, !dbg !3323

if.end679:                                        ; preds = %if.then678, %for.end676
  %564 = load i32, ptr %had_err, align 4, !dbg !3324, !tbaa !1154
  %tobool680 = icmp ne i32 %564, 0, !dbg !3324
  br i1 %tobool680, label %if.then681, label %if.end682, !dbg !3326

if.then681:                                       ; preds = %if.end679
  store i32 1, ptr %retval, align 4, !dbg !3327
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3327

if.end682:                                        ; preds = %if.end679
  store i32 0, ptr %retval, align 4, !dbg !3328
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3328

cleanup:                                          ; preds = %if.end682, %if.then681, %if.end577, %if.end241, %if.then240, %if.end236, %if.then235, %if.end231, %if.then230
  call void @llvm.lifetime.end.p0(i64 8, ptr %gt_error_str) #10, !dbg !3329
  call void @llvm.lifetime.end.p0(i64 4, ptr %had_err) #10, !dbg !3329
  call void @llvm.lifetime.end.p0(i64 4, ptr %minus_offset) #10, !dbg !3329
  call void @llvm.lifetime.end.p0(i64 8, ptr %ulong_value) #10, !dbg !3329
  call void @llvm.lifetime.end.p0(i64 8, ptr %long_value) #10, !dbg !3329
  call void @llvm.lifetime.end.p0(i64 1, ptr %option_parsed) #10, !dbg !3329
  call void @llvm.lifetime.end.p0(i64 8, ptr %option) #10, !dbg !3329
  call void @llvm.lifetime.end.p0(i64 8, ptr %hookinfo) #10, !dbg !3329
  call void @llvm.lifetime.end.p0(i64 8, ptr %double_value) #10, !dbg !3329
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #10, !dbg !3329
  call void @llvm.lifetime.end.p0(i64 4, ptr %uint_value) #10, !dbg !3329
  call void @llvm.lifetime.end.p0(i64 4, ptr %int_value) #10, !dbg !3329
  call void @llvm.lifetime.end.p0(i64 4, ptr %argnum) #10, !dbg !3329
  %565 = load i32, ptr %retval, align 4, !dbg !3329
  ret i32 %565, !dbg !3329
}

declare !dbg !3330 void @gt_free_mem(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define internal void @gt_option_parser_warn_on_nonascii(ptr noundef %str) #0 !dbg !3333 {
entry:
  %str.addr = alloca ptr, align 8
  %j = alloca i64, align 8
  store ptr %str, ptr %str.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !3335, metadata !DIExpression()), !dbg !3337
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #10, !dbg !3338
  tail call void @llvm.dbg.declare(metadata ptr %j, metadata !3336, metadata !DIExpression()), !dbg !3339
  store i64 1, ptr %j, align 8, !dbg !3339, !tbaa !1287
  br label %while.cond, !dbg !3340

while.cond:                                       ; preds = %if.end, %entry
  %0 = load ptr, ptr %str.addr, align 8, !dbg !3341, !tbaa !743
  %1 = load i8, ptr %0, align 1, !dbg !3342, !tbaa !880
  %conv = sext i8 %1 to i32, !dbg !3342
  %cmp = icmp ne i32 %conv, 0, !dbg !3343
  br i1 %cmp, label %while.body, label %while.end, !dbg !3340

while.body:                                       ; preds = %while.cond
  %call = call ptr @__ctype_b_loc() #12, !dbg !3344
  %2 = load ptr, ptr %call, align 8, !dbg !3344, !tbaa !743
  %3 = load ptr, ptr %str.addr, align 8, !dbg !3344, !tbaa !743
  %4 = load i8, ptr %3, align 1, !dbg !3344, !tbaa !880
  %conv2 = sext i8 %4 to i32, !dbg !3344
  %idxprom = sext i32 %conv2 to i64, !dbg !3344
  %arrayidx = getelementptr inbounds i16, ptr %2, i64 %idxprom, !dbg !3344
  %5 = load i16, ptr %arrayidx, align 2, !dbg !3344, !tbaa !881
  %conv3 = zext i16 %5 to i32, !dbg !3344
  %and = and i32 %conv3, 16384, !dbg !3344
  %tobool = icmp ne i32 %and, 0, !dbg !3344
  br i1 %tobool, label %if.end, label %if.then, !dbg !3347

if.then:                                          ; preds = %while.body
  %6 = load ptr, ptr %str.addr, align 8, !dbg !3348, !tbaa !743
  %7 = load i64, ptr %j, align 8, !dbg !3350, !tbaa !1287
  call void (ptr, ...) @gt_warning(ptr noundef @.str.115, ptr noundef %6, i64 noundef %7), !dbg !3351
  br label %while.end, !dbg !3352

if.end:                                           ; preds = %while.body
  %8 = load ptr, ptr %str.addr, align 8, !dbg !3353, !tbaa !743
  %incdec.ptr = getelementptr inbounds i8, ptr %8, i32 1, !dbg !3353
  store ptr %incdec.ptr, ptr %str.addr, align 8, !dbg !3353, !tbaa !743
  %9 = load i64, ptr %j, align 8, !dbg !3354, !tbaa !1287
  %inc = add i64 %9, 1, !dbg !3354
  store i64 %inc, ptr %j, align 8, !dbg !3354, !tbaa !1287
  br label %while.cond, !dbg !3340, !llvm.loop !3355

while.end:                                        ; preds = %if.then, %while.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #10, !dbg !3357
  ret void, !dbg !3357
}

declare !dbg !3358 void @gt_error_set(ptr noundef, ptr noundef, ...) #1

; Function Attrs: nounwind uwtable
define internal zeroext i1 @optional_arg(ptr noundef %o, i32 noundef %argnum, i32 noundef %argc, ptr noundef %argv) #0 !dbg !3361 {
entry:
  %retval = alloca i1, align 1
  %o.addr = alloca ptr, align 8
  %argnum.addr = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  store ptr %o, ptr %o.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %o.addr, metadata !3365, metadata !DIExpression()), !dbg !3369
  store i32 %argnum, ptr %argnum.addr, align 4, !tbaa !1154
  tail call void @llvm.dbg.declare(metadata ptr %argnum.addr, metadata !3366, metadata !DIExpression()), !dbg !3370
  store i32 %argc, ptr %argc.addr, align 4, !tbaa !1154
  tail call void @llvm.dbg.declare(metadata ptr %argc.addr, metadata !3367, metadata !DIExpression()), !dbg !3371
  store ptr %argv, ptr %argv.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %argv.addr, metadata !3368, metadata !DIExpression()), !dbg !3372
  br label %do.body, !dbg !3373

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %o.addr, align 8, !dbg !3374, !tbaa !743
  %tobool = icmp ne ptr %0, null, !dbg !3374
  br i1 %tobool, label %if.end, label %if.then, !dbg !3377

if.then:                                          ; preds = %do.body
  %1 = load ptr, ptr @stderr, align 8, !dbg !3378, !tbaa !743
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str, ptr noundef @.str.1, ptr noundef @__func__.optional_arg, ptr noundef @.str.2, i32 noundef 741), !dbg !3378
  call void @abort() #9, !dbg !3378
  unreachable, !dbg !3378

if.end:                                           ; preds = %do.body
  br label %do.end, !dbg !3377

do.end:                                           ; preds = %if.end
  %2 = load ptr, ptr %o.addr, align 8, !dbg !3380, !tbaa !743
  %argument_is_optional = getelementptr inbounds %struct.GtOption, ptr %2, i32 0, i32 15, !dbg !3382
  %3 = load i8, ptr %argument_is_optional, align 1, !dbg !3382, !tbaa !2539, !range !1270, !noundef !1271
  %tobool1 = trunc i8 %3 to i1, !dbg !3382
  br i1 %tobool1, label %land.lhs.true, label %if.end13, !dbg !3383

land.lhs.true:                                    ; preds = %do.end
  %4 = load i32, ptr %argnum.addr, align 4, !dbg !3384, !tbaa !1154
  %add = add nsw i32 %4, 1, !dbg !3385
  %5 = load i32, ptr %argc.addr, align 4, !dbg !3386, !tbaa !1154
  %cmp = icmp sge i32 %add, %5, !dbg !3387
  br i1 %cmp, label %if.then12, label %lor.lhs.false, !dbg !3388

lor.lhs.false:                                    ; preds = %land.lhs.true
  %6 = load ptr, ptr %argv.addr, align 8, !dbg !3389, !tbaa !743
  %7 = load i32, ptr %argnum.addr, align 4, !dbg !3390, !tbaa !1154
  %add2 = add nsw i32 %7, 1, !dbg !3391
  %idxprom = sext i32 %add2 to i64, !dbg !3389
  %arrayidx = getelementptr inbounds ptr, ptr %6, i64 %idxprom, !dbg !3389
  %8 = load ptr, ptr %arrayidx, align 8, !dbg !3389, !tbaa !743
  %arrayidx3 = getelementptr inbounds i8, ptr %8, i64 0, !dbg !3389
  %9 = load i8, ptr %arrayidx3, align 1, !dbg !3389, !tbaa !880
  %conv = sext i8 %9 to i32, !dbg !3389
  %cmp4 = icmp eq i32 %conv, 45, !dbg !3392
  br i1 %cmp4, label %if.then12, label %lor.lhs.false6, !dbg !3393

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %10 = load ptr, ptr %argv.addr, align 8, !dbg !3394, !tbaa !743
  %11 = load i32, ptr %argnum.addr, align 4, !dbg !3395, !tbaa !1154
  %add7 = add nsw i32 %11, 1, !dbg !3396
  %idxprom8 = sext i32 %add7 to i64, !dbg !3394
  %arrayidx9 = getelementptr inbounds ptr, ptr %10, i64 %idxprom8, !dbg !3394
  %12 = load ptr, ptr %arrayidx9, align 8, !dbg !3394, !tbaa !743
  %call10 = call i32 @strcmp(ptr noundef %12, ptr noundef @.str.54) #11, !dbg !3397
  %tobool11 = icmp ne i32 %call10, 0, !dbg !3397
  br i1 %tobool11, label %if.end13, label %if.then12, !dbg !3398

if.then12:                                        ; preds = %lor.lhs.false6, %lor.lhs.false, %land.lhs.true
  store i1 true, ptr %retval, align 1, !dbg !3399
  br label %return, !dbg !3399

if.end13:                                         ; preds = %lor.lhs.false6, %do.end
  store i1 false, ptr %retval, align 1, !dbg !3401
  br label %return, !dbg !3401

return:                                           ; preds = %if.end13, %if.then12
  %13 = load i1, ptr %retval, align 1, !dbg !3402
  ret i1 %13, !dbg !3402
}

; Function Attrs: nounwind uwtable
define internal i32 @check_missing_argument_and_minus_sign(i32 noundef %argnum, i32 noundef %argc, ptr noundef %option, ptr noundef %argv, ptr noundef %err) #0 !dbg !3403 {
entry:
  %retval = alloca i32, align 4
  %argnum.addr = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %option.addr = alloca ptr, align 8
  %argv.addr = alloca ptr, align 8
  %err.addr = alloca ptr, align 8
  store i32 %argnum, ptr %argnum.addr, align 4, !tbaa !1154
  tail call void @llvm.dbg.declare(metadata ptr %argnum.addr, metadata !3407, metadata !DIExpression()), !dbg !3412
  store i32 %argc, ptr %argc.addr, align 4, !tbaa !1154
  tail call void @llvm.dbg.declare(metadata ptr %argc.addr, metadata !3408, metadata !DIExpression()), !dbg !3413
  store ptr %option, ptr %option.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %option.addr, metadata !3409, metadata !DIExpression()), !dbg !3414
  store ptr %argv, ptr %argv.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %argv.addr, metadata !3410, metadata !DIExpression()), !dbg !3415
  store ptr %err, ptr %err.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !3411, metadata !DIExpression()), !dbg !3416
  br label %do.body, !dbg !3417

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %err.addr, align 8, !dbg !3418, !tbaa !743
  %tobool = icmp ne ptr %0, null, !dbg !3418
  br i1 %tobool, label %lor.lhs.false, label %if.end, !dbg !3418

lor.lhs.false:                                    ; preds = %do.body
  %1 = load ptr, ptr %err.addr, align 8, !dbg !3418, !tbaa !743
  %call = call zeroext i1 @gt_error_is_set(ptr noundef %1), !dbg !3418
  br i1 %call, label %if.then, label %if.end, !dbg !3421

if.then:                                          ; preds = %lor.lhs.false
  %2 = load ptr, ptr @stderr, align 8, !dbg !3422, !tbaa !743
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str, ptr noundef @.str.14, ptr noundef @__func__.check_missing_argument_and_minus_sign, ptr noundef @.str.2, i32 noundef 766), !dbg !3422
  call void @abort() #9, !dbg !3422
  unreachable, !dbg !3422

if.end:                                           ; preds = %lor.lhs.false, %do.body
  br label %do.end, !dbg !3421

do.end:                                           ; preds = %if.end
  %3 = load i32, ptr %argnum.addr, align 4, !dbg !3424, !tbaa !1154
  %add = add nsw i32 %3, 1, !dbg !3426
  %4 = load i32, ptr %argc.addr, align 4, !dbg !3427, !tbaa !1154
  %cmp = icmp sge i32 %add, %4, !dbg !3428
  br i1 %cmp, label %if.then14, label %lor.lhs.false2, !dbg !3429

lor.lhs.false2:                                   ; preds = %do.end
  %5 = load ptr, ptr %argv.addr, align 8, !dbg !3430, !tbaa !743
  %6 = load i32, ptr %argnum.addr, align 4, !dbg !3431, !tbaa !1154
  %add3 = add nsw i32 %6, 1, !dbg !3432
  %idxprom = sext i32 %add3 to i64, !dbg !3430
  %arrayidx = getelementptr inbounds ptr, ptr %5, i64 %idxprom, !dbg !3430
  %7 = load ptr, ptr %arrayidx, align 8, !dbg !3430, !tbaa !743
  %arrayidx4 = getelementptr inbounds i8, ptr %7, i64 0, !dbg !3430
  %8 = load i8, ptr %arrayidx4, align 1, !dbg !3430, !tbaa !880
  %conv = sext i8 %8 to i32, !dbg !3430
  %cmp5 = icmp eq i32 %conv, 45, !dbg !3433
  br i1 %cmp5, label %land.lhs.true, label %if.end16, !dbg !3434

land.lhs.true:                                    ; preds = %lor.lhs.false2
  %9 = load ptr, ptr %argv.addr, align 8, !dbg !3435, !tbaa !743
  %10 = load i32, ptr %argnum.addr, align 4, !dbg !3436, !tbaa !1154
  %add7 = add nsw i32 %10, 1, !dbg !3437
  %idxprom8 = sext i32 %add7 to i64, !dbg !3435
  %arrayidx9 = getelementptr inbounds ptr, ptr %9, i64 %idxprom8, !dbg !3435
  %11 = load ptr, ptr %arrayidx9, align 8, !dbg !3435, !tbaa !743
  %arrayidx10 = getelementptr inbounds i8, ptr %11, i64 1, !dbg !3435
  %12 = load i8, ptr %arrayidx10, align 1, !dbg !3435, !tbaa !880
  %conv11 = sext i8 %12 to i32, !dbg !3435
  %cmp12 = icmp ne i32 %conv11, 0, !dbg !3438
  br i1 %cmp12, label %if.then14, label %if.end16, !dbg !3439

if.then14:                                        ; preds = %land.lhs.true, %do.end
  %13 = load ptr, ptr %err.addr, align 8, !dbg !3440, !tbaa !743
  %14 = load ptr, ptr %option.addr, align 8, !dbg !3442, !tbaa !743
  %call15 = call ptr @gt_str_get(ptr noundef %14), !dbg !3443
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %13, ptr noundef @.str.79, ptr noundef %call15), !dbg !3444
  store i32 -1, ptr %retval, align 4, !dbg !3445
  br label %return, !dbg !3445

if.end16:                                         ; preds = %land.lhs.true, %lor.lhs.false2
  store i32 0, ptr %retval, align 4, !dbg !3446
  br label %return, !dbg !3446

return:                                           ; preds = %if.end16, %if.then14
  %15 = load i32, ptr %retval, align 4, !dbg !3447
  ret i32 %15, !dbg !3447
}

declare !dbg !3448 ptr @gt_str_new_cstr(ptr noundef) #1

declare !dbg !3451 void @gt_str_set(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal i32 @check_missing_argument(i32 noundef %argnum, i32 noundef %argc, ptr noundef %option, ptr noundef %err) #0 !dbg !3452 {
entry:
  %retval = alloca i32, align 4
  %argnum.addr = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %option.addr = alloca ptr, align 8
  %err.addr = alloca ptr, align 8
  store i32 %argnum, ptr %argnum.addr, align 4, !tbaa !1154
  tail call void @llvm.dbg.declare(metadata ptr %argnum.addr, metadata !3456, metadata !DIExpression()), !dbg !3460
  store i32 %argc, ptr %argc.addr, align 4, !tbaa !1154
  tail call void @llvm.dbg.declare(metadata ptr %argc.addr, metadata !3457, metadata !DIExpression()), !dbg !3461
  store ptr %option, ptr %option.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %option.addr, metadata !3458, metadata !DIExpression()), !dbg !3462
  store ptr %err, ptr %err.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !3459, metadata !DIExpression()), !dbg !3463
  br label %do.body, !dbg !3464

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %err.addr, align 8, !dbg !3465, !tbaa !743
  %tobool = icmp ne ptr %0, null, !dbg !3465
  br i1 %tobool, label %lor.lhs.false, label %if.end, !dbg !3465

lor.lhs.false:                                    ; preds = %do.body
  %1 = load ptr, ptr %err.addr, align 8, !dbg !3465, !tbaa !743
  %call = call zeroext i1 @gt_error_is_set(ptr noundef %1), !dbg !3465
  br i1 %call, label %if.then, label %if.end, !dbg !3468

if.then:                                          ; preds = %lor.lhs.false
  %2 = load ptr, ptr @stderr, align 8, !dbg !3469, !tbaa !743
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str, ptr noundef @.str.14, ptr noundef @__func__.check_missing_argument, ptr noundef @.str.2, i32 noundef 753), !dbg !3469
  call void @abort() #9, !dbg !3469
  unreachable, !dbg !3469

if.end:                                           ; preds = %lor.lhs.false, %do.body
  br label %do.end, !dbg !3468

do.end:                                           ; preds = %if.end
  %3 = load i32, ptr %argnum.addr, align 4, !dbg !3471, !tbaa !1154
  %add = add nsw i32 %3, 1, !dbg !3473
  %4 = load i32, ptr %argc.addr, align 4, !dbg !3474, !tbaa !1154
  %cmp = icmp sge i32 %add, %4, !dbg !3475
  br i1 %cmp, label %if.then2, label %if.end4, !dbg !3476

if.then2:                                         ; preds = %do.end
  %5 = load ptr, ptr %err.addr, align 8, !dbg !3477, !tbaa !743
  %6 = load ptr, ptr %option.addr, align 8, !dbg !3479, !tbaa !743
  %call3 = call ptr @gt_str_get(ptr noundef %6), !dbg !3480
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %5, ptr noundef @.str.79, ptr noundef %call3), !dbg !3481
  store i32 -1, ptr %retval, align 4, !dbg !3482
  br label %return, !dbg !3482

if.end4:                                          ; preds = %do.end
  store i32 0, ptr %retval, align 4, !dbg !3483
  br label %return, !dbg !3483

return:                                           ; preds = %if.end4, %if.then2
  %7 = load i32, ptr %retval, align 4, !dbg !3484
  ret i32 %7, !dbg !3484
}

declare !dbg !3485 i32 @gt_parse_double(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal i32 @show_help(ptr noundef %op, i32 noundef %optiontype, ptr noundef %err) #0 !dbg !3489 {
entry:
  %op.addr = alloca ptr, align 8
  %optiontype.addr = alloca i32, align 4
  %err.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %max_option_length = alloca i64, align 8
  %option = alloca ptr, align 8
  %had_err = alloca i32, align 4
  store ptr %op, ptr %op.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !3493, metadata !DIExpression()), !dbg !3500
  store i32 %optiontype, ptr %optiontype.addr, align 4, !tbaa !880
  tail call void @llvm.dbg.declare(metadata ptr %optiontype.addr, metadata !3494, metadata !DIExpression()), !dbg !3501
  store ptr %err, ptr %err.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !3495, metadata !DIExpression()), !dbg !3502
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #10, !dbg !3503
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !3496, metadata !DIExpression()), !dbg !3504
  call void @llvm.lifetime.start.p0(i64 8, ptr %max_option_length) #10, !dbg !3503
  tail call void @llvm.dbg.declare(metadata ptr %max_option_length, metadata !3497, metadata !DIExpression()), !dbg !3505
  store i64 0, ptr %max_option_length, align 8, !dbg !3505, !tbaa !1287
  call void @llvm.lifetime.start.p0(i64 8, ptr %option) #10, !dbg !3506
  tail call void @llvm.dbg.declare(metadata ptr %option, metadata !3498, metadata !DIExpression()), !dbg !3507
  call void @llvm.lifetime.start.p0(i64 4, ptr %had_err) #10, !dbg !3508
  tail call void @llvm.dbg.declare(metadata ptr %had_err, metadata !3499, metadata !DIExpression()), !dbg !3509
  store i32 0, ptr %had_err, align 4, !dbg !3509, !tbaa !1154
  br label %do.body, !dbg !3510

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %err.addr, align 8, !dbg !3511, !tbaa !743
  %tobool = icmp ne ptr %0, null, !dbg !3511
  br i1 %tobool, label %lor.lhs.false, label %if.end, !dbg !3511

lor.lhs.false:                                    ; preds = %do.body
  %1 = load ptr, ptr %err.addr, align 8, !dbg !3511, !tbaa !743
  %call = call zeroext i1 @gt_error_is_set(ptr noundef %1), !dbg !3511
  br i1 %call, label %if.then, label %if.end, !dbg !3514

if.then:                                          ; preds = %lor.lhs.false
  %2 = load ptr, ptr @stderr, align 8, !dbg !3515, !tbaa !743
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str, ptr noundef @.str.14, ptr noundef @__func__.show_help, ptr noundef @.str.2, i32 noundef 365), !dbg !3515
  call void @abort() #9, !dbg !3515
  unreachable, !dbg !3515

if.end:                                           ; preds = %lor.lhs.false, %do.body
  br label %do.cond, !dbg !3514

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !3514

do.end:                                           ; preds = %do.cond
  br label %do.body2, !dbg !3517

do.body2:                                         ; preds = %do.end
  %3 = load i32, ptr %optiontype.addr, align 4, !dbg !3518, !tbaa !880
  %cmp = icmp eq i32 %3, 4, !dbg !3518
  br i1 %cmp, label %if.end9, label %lor.lhs.false3, !dbg !3518

lor.lhs.false3:                                   ; preds = %do.body2
  %4 = load i32, ptr %optiontype.addr, align 4, !dbg !3518, !tbaa !880
  %cmp4 = icmp eq i32 %4, 5, !dbg !3518
  br i1 %cmp4, label %if.end9, label %lor.lhs.false5, !dbg !3518

lor.lhs.false5:                                   ; preds = %lor.lhs.false3
  %5 = load i32, ptr %optiontype.addr, align 4, !dbg !3518, !tbaa !880
  %cmp6 = icmp eq i32 %5, 6, !dbg !3518
  br i1 %cmp6, label %if.end9, label %if.then7, !dbg !3521

if.then7:                                         ; preds = %lor.lhs.false5
  %6 = load ptr, ptr @stderr, align 8, !dbg !3522, !tbaa !743
  %call8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef @.str, ptr noundef @.str.116, ptr noundef @__func__.show_help, ptr noundef @.str.2, i32 noundef 367), !dbg !3522
  call void @abort() #9, !dbg !3522
  unreachable, !dbg !3522

if.end9:                                          ; preds = %lor.lhs.false5, %lor.lhs.false3, %do.body2
  br label %do.cond10, !dbg !3521

do.cond10:                                        ; preds = %if.end9
  br label %do.end11, !dbg !3521

do.end11:                                         ; preds = %do.cond10
  store i64 0, ptr %i, align 8, !dbg !3524, !tbaa !1287
  br label %for.cond, !dbg !3526

for.cond:                                         ; preds = %for.inc, %do.end11
  %7 = load i64, ptr %i, align 8, !dbg !3527, !tbaa !1287
  %8 = load ptr, ptr %op.addr, align 8, !dbg !3529, !tbaa !743
  %options = getelementptr inbounds %struct.GtOptionParser, ptr %8, i32 0, i32 3, !dbg !3530
  %9 = load ptr, ptr %options, align 8, !dbg !3530, !tbaa !912
  %call12 = call i64 @gt_array_size(ptr noundef %9), !dbg !3531
  %cmp13 = icmp ult i64 %7, %call12, !dbg !3532
  br i1 %cmp13, label %for.body, label %for.end, !dbg !3533

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %op.addr, align 8, !dbg !3534, !tbaa !743
  %options14 = getelementptr inbounds %struct.GtOptionParser, ptr %10, i32 0, i32 3, !dbg !3536
  %11 = load ptr, ptr %options14, align 8, !dbg !3536, !tbaa !912
  %12 = load i64, ptr %i, align 8, !dbg !3537, !tbaa !1287
  %call15 = call ptr @gt_array_get(ptr noundef %11, i64 noundef %12), !dbg !3538
  %13 = load ptr, ptr %call15, align 8, !dbg !3539, !tbaa !743
  store ptr %13, ptr %option, align 8, !dbg !3540, !tbaa !743
  %14 = load i32, ptr %optiontype.addr, align 4, !dbg !3541, !tbaa !880
  %cmp16 = icmp eq i32 %14, 4, !dbg !3543
  br i1 %cmp16, label %land.lhs.true, label %lor.lhs.false18, !dbg !3544

land.lhs.true:                                    ; preds = %for.body
  %15 = load ptr, ptr %option, align 8, !dbg !3545, !tbaa !743
  %is_extended_option = getelementptr inbounds %struct.GtOption, ptr %15, i32 0, i32 13, !dbg !3546
  %16 = load i8, ptr %is_extended_option, align 1, !dbg !3546, !tbaa !3547, !range !1270, !noundef !1271
  %tobool17 = trunc i8 %16 to i1, !dbg !3546
  br i1 %tobool17, label %if.then27, label %lor.lhs.false18, !dbg !3548

lor.lhs.false18:                                  ; preds = %land.lhs.true, %for.body
  %17 = load i32, ptr %optiontype.addr, align 4, !dbg !3549, !tbaa !880
  %cmp19 = icmp eq i32 %17, 6, !dbg !3550
  br i1 %cmp19, label %land.lhs.true20, label %lor.lhs.false22, !dbg !3551

land.lhs.true20:                                  ; preds = %lor.lhs.false18
  %18 = load ptr, ptr %option, align 8, !dbg !3552, !tbaa !743
  %is_development_option = getelementptr inbounds %struct.GtOption, ptr %18, i32 0, i32 14, !dbg !3553
  %19 = load i8, ptr %is_development_option, align 2, !dbg !3553, !tbaa !1376, !range !1270, !noundef !1271
  %tobool21 = trunc i8 %19 to i1, !dbg !3553
  br i1 %tobool21, label %lor.lhs.false22, label %if.then27, !dbg !3554

lor.lhs.false22:                                  ; preds = %land.lhs.true20, %lor.lhs.false18
  %20 = load i32, ptr %optiontype.addr, align 4, !dbg !3555, !tbaa !880
  %cmp23 = icmp eq i32 %20, 6, !dbg !3556
  br i1 %cmp23, label %if.end28, label %land.lhs.true24, !dbg !3557

land.lhs.true24:                                  ; preds = %lor.lhs.false22
  %21 = load ptr, ptr %option, align 8, !dbg !3558, !tbaa !743
  %is_development_option25 = getelementptr inbounds %struct.GtOption, ptr %21, i32 0, i32 14, !dbg !3559
  %22 = load i8, ptr %is_development_option25, align 2, !dbg !3559, !tbaa !1376, !range !1270, !noundef !1271
  %tobool26 = trunc i8 %22 to i1, !dbg !3559
  br i1 %tobool26, label %if.then27, label %if.end28, !dbg !3560

if.then27:                                        ; preds = %land.lhs.true24, %land.lhs.true20, %land.lhs.true
  br label %for.inc, !dbg !3561

if.end28:                                         ; preds = %land.lhs.true24, %lor.lhs.false22
  %23 = load ptr, ptr %option, align 8, !dbg !3563, !tbaa !743
  %option_str = getelementptr inbounds %struct.GtOption, ptr %23, i32 0, i32 1, !dbg !3565
  %24 = load ptr, ptr %option_str, align 8, !dbg !3565, !tbaa !979
  %call29 = call i64 @gt_str_length(ptr noundef %24), !dbg !3566
  %25 = load i64, ptr %max_option_length, align 8, !dbg !3567, !tbaa !1287
  %cmp30 = icmp ugt i64 %call29, %25, !dbg !3568
  br i1 %cmp30, label %if.then31, label %if.end34, !dbg !3569

if.then31:                                        ; preds = %if.end28
  %26 = load ptr, ptr %option, align 8, !dbg !3570, !tbaa !743
  %option_str32 = getelementptr inbounds %struct.GtOption, ptr %26, i32 0, i32 1, !dbg !3571
  %27 = load ptr, ptr %option_str32, align 8, !dbg !3571, !tbaa !979
  %call33 = call i64 @gt_str_length(ptr noundef %27), !dbg !3572
  store i64 %call33, ptr %max_option_length, align 8, !dbg !3573, !tbaa !1287
  br label %if.end34, !dbg !3574

if.end34:                                         ; preds = %if.then31, %if.end28
  br label %for.inc, !dbg !3575

for.inc:                                          ; preds = %if.end34, %if.then27
  %28 = load i64, ptr %i, align 8, !dbg !3576, !tbaa !1287
  %inc = add i64 %28, 1, !dbg !3576
  store i64 %inc, ptr %i, align 8, !dbg !3576, !tbaa !1287
  br label %for.cond, !dbg !3577, !llvm.loop !3578

for.end:                                          ; preds = %for.cond
  br label %do.body35, !dbg !3580

do.body35:                                        ; preds = %for.end
  %29 = load i64, ptr %max_option_length, align 8, !dbg !3581, !tbaa !1287
  %tobool36 = icmp ne i64 %29, 0, !dbg !3581
  br i1 %tobool36, label %if.end39, label %if.then37, !dbg !3584

if.then37:                                        ; preds = %do.body35
  %30 = load ptr, ptr @stderr, align 8, !dbg !3585, !tbaa !743
  %call38 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %30, ptr noundef @.str, ptr noundef @.str.117, ptr noundef @__func__.show_help, ptr noundef @.str.2, i32 noundef 381), !dbg !3585
  call void @abort() #9, !dbg !3585
  unreachable, !dbg !3585

if.end39:                                         ; preds = %do.body35
  br label %do.cond40, !dbg !3584

do.cond40:                                        ; preds = %if.end39
  br label %do.end41, !dbg !3584

do.end41:                                         ; preds = %do.cond40
  %31 = load ptr, ptr %op.addr, align 8, !dbg !3587, !tbaa !743
  %progname = getelementptr inbounds %struct.GtOptionParser, ptr %31, i32 0, i32 0, !dbg !3588
  %32 = load ptr, ptr %progname, align 8, !dbg !3588, !tbaa !2137
  %33 = load ptr, ptr %op.addr, align 8, !dbg !3589, !tbaa !743
  %synopsis = getelementptr inbounds %struct.GtOptionParser, ptr %33, i32 0, i32 1, !dbg !3590
  %34 = load ptr, ptr %synopsis, align 8, !dbg !3590, !tbaa !900
  %call42 = call i32 (ptr, ...) @printf(ptr noundef @.str.118, ptr noundef %32, ptr noundef %34), !dbg !3591
  %35 = load ptr, ptr %op.addr, align 8, !dbg !3592, !tbaa !743
  %one_liner = getelementptr inbounds %struct.GtOptionParser, ptr %35, i32 0, i32 2, !dbg !3593
  %36 = load ptr, ptr %one_liner, align 8, !dbg !3593, !tbaa !907
  %call43 = call i32 (ptr, ...) @printf(ptr noundef @.str.119, ptr noundef %36), !dbg !3594
  store i64 0, ptr %i, align 8, !dbg !3595, !tbaa !1287
  br label %for.cond44, !dbg !3597

for.cond44:                                       ; preds = %for.inc223, %do.end41
  %37 = load i64, ptr %i, align 8, !dbg !3598, !tbaa !1287
  %38 = load ptr, ptr %op.addr, align 8, !dbg !3600, !tbaa !743
  %options45 = getelementptr inbounds %struct.GtOptionParser, ptr %38, i32 0, i32 3, !dbg !3601
  %39 = load ptr, ptr %options45, align 8, !dbg !3601, !tbaa !912
  %call46 = call i64 @gt_array_size(ptr noundef %39), !dbg !3602
  %cmp47 = icmp ult i64 %37, %call46, !dbg !3603
  br i1 %cmp47, label %for.body48, label %for.end225, !dbg !3604

for.body48:                                       ; preds = %for.cond44
  %40 = load ptr, ptr %op.addr, align 8, !dbg !3605, !tbaa !743
  %options49 = getelementptr inbounds %struct.GtOptionParser, ptr %40, i32 0, i32 3, !dbg !3607
  %41 = load ptr, ptr %options49, align 8, !dbg !3607, !tbaa !912
  %42 = load i64, ptr %i, align 8, !dbg !3608, !tbaa !1287
  %call50 = call ptr @gt_array_get(ptr noundef %41, i64 noundef %42), !dbg !3609
  %43 = load ptr, ptr %call50, align 8, !dbg !3610, !tbaa !743
  store ptr %43, ptr %option, align 8, !dbg !3611, !tbaa !743
  %44 = load i32, ptr %optiontype.addr, align 4, !dbg !3612, !tbaa !880
  %cmp51 = icmp eq i32 %44, 4, !dbg !3614
  br i1 %cmp51, label %land.lhs.true52, label %lor.lhs.false55, !dbg !3615

land.lhs.true52:                                  ; preds = %for.body48
  %45 = load ptr, ptr %option, align 8, !dbg !3616, !tbaa !743
  %is_extended_option53 = getelementptr inbounds %struct.GtOption, ptr %45, i32 0, i32 13, !dbg !3617
  %46 = load i8, ptr %is_extended_option53, align 1, !dbg !3617, !tbaa !3547, !range !1270, !noundef !1271
  %tobool54 = trunc i8 %46 to i1, !dbg !3617
  br i1 %tobool54, label %if.then65, label %lor.lhs.false55, !dbg !3618

lor.lhs.false55:                                  ; preds = %land.lhs.true52, %for.body48
  %47 = load i32, ptr %optiontype.addr, align 4, !dbg !3619, !tbaa !880
  %cmp56 = icmp eq i32 %47, 6, !dbg !3620
  br i1 %cmp56, label %land.lhs.true57, label %lor.lhs.false60, !dbg !3621

land.lhs.true57:                                  ; preds = %lor.lhs.false55
  %48 = load ptr, ptr %option, align 8, !dbg !3622, !tbaa !743
  %is_development_option58 = getelementptr inbounds %struct.GtOption, ptr %48, i32 0, i32 14, !dbg !3623
  %49 = load i8, ptr %is_development_option58, align 2, !dbg !3623, !tbaa !1376, !range !1270, !noundef !1271
  %tobool59 = trunc i8 %49 to i1, !dbg !3623
  br i1 %tobool59, label %lor.lhs.false60, label %if.then65, !dbg !3624

lor.lhs.false60:                                  ; preds = %land.lhs.true57, %lor.lhs.false55
  %50 = load i32, ptr %optiontype.addr, align 4, !dbg !3625, !tbaa !880
  %cmp61 = icmp eq i32 %50, 6, !dbg !3626
  br i1 %cmp61, label %if.end66, label %land.lhs.true62, !dbg !3627

land.lhs.true62:                                  ; preds = %lor.lhs.false60
  %51 = load ptr, ptr %option, align 8, !dbg !3628, !tbaa !743
  %is_development_option63 = getelementptr inbounds %struct.GtOption, ptr %51, i32 0, i32 14, !dbg !3629
  %52 = load i8, ptr %is_development_option63, align 2, !dbg !3629, !tbaa !1376, !range !1270, !noundef !1271
  %tobool64 = trunc i8 %52 to i1, !dbg !3629
  br i1 %tobool64, label %if.then65, label %if.end66, !dbg !3630

if.then65:                                        ; preds = %land.lhs.true62, %land.lhs.true57, %land.lhs.true52
  br label %for.inc223, !dbg !3631

if.end66:                                         ; preds = %land.lhs.true62, %lor.lhs.false60
  %53 = load ptr, ptr %option, align 8, !dbg !3633, !tbaa !743
  %option_str67 = getelementptr inbounds %struct.GtOption, ptr %53, i32 0, i32 1, !dbg !3634
  %54 = load ptr, ptr %option_str67, align 8, !dbg !3634, !tbaa !979
  %call68 = call ptr @gt_str_get(ptr noundef %54), !dbg !3635
  %55 = load i64, ptr %max_option_length, align 8, !dbg !3636, !tbaa !1287
  %56 = load ptr, ptr %option, align 8, !dbg !3637, !tbaa !743
  %option_str69 = getelementptr inbounds %struct.GtOption, ptr %56, i32 0, i32 1, !dbg !3638
  %57 = load ptr, ptr %option_str69, align 8, !dbg !3638, !tbaa !979
  %call70 = call i64 @gt_str_length(ptr noundef %57), !dbg !3639
  %sub = sub i64 %55, %call70, !dbg !3640
  %conv = trunc i64 %sub to i32, !dbg !3641
  %call71 = call i32 (ptr, ...) @printf(ptr noundef @.str.120, ptr noundef %call68, i32 noundef %conv, ptr noundef @.str.121), !dbg !3642
  %58 = load i64, ptr %max_option_length, align 8, !dbg !3643, !tbaa !1287
  %add = add i64 %58, 2, !dbg !3644
  %59 = load ptr, ptr %option, align 8, !dbg !3645, !tbaa !743
  %description = getelementptr inbounds %struct.GtOption, ptr %59, i32 0, i32 2, !dbg !3646
  %60 = load ptr, ptr %description, align 8, !dbg !3646, !tbaa !1617
  %call72 = call ptr @gt_str_get(ptr noundef %60), !dbg !3647
  %61 = load ptr, ptr %option, align 8, !dbg !3648, !tbaa !743
  %description73 = getelementptr inbounds %struct.GtOption, ptr %61, i32 0, i32 2, !dbg !3649
  %62 = load ptr, ptr %description73, align 8, !dbg !3649, !tbaa !1617
  %call74 = call i64 @gt_str_length(ptr noundef %62), !dbg !3650
  call void @show_description(i64 noundef %add, ptr noundef %call72, i64 noundef %call74), !dbg !3651
  %63 = load ptr, ptr %option, align 8, !dbg !3652, !tbaa !743
  %hide_default = getelementptr inbounds %struct.GtOption, ptr %63, i32 0, i32 10, !dbg !3654
  %64 = load i8, ptr %hide_default, align 2, !dbg !3654, !tbaa !1623, !range !1270, !noundef !1271
  %tobool75 = trunc i8 %64 to i1, !dbg !3654
  br i1 %tobool75, label %if.end222, label %if.then76, !dbg !3655

if.then76:                                        ; preds = %if.end66
  %65 = load ptr, ptr %option, align 8, !dbg !3656, !tbaa !743
  %option_type = getelementptr inbounds %struct.GtOption, ptr %65, i32 0, i32 0, !dbg !3659
  %66 = load i32, ptr %option_type, align 8, !dbg !3659, !tbaa !1391
  %cmp77 = icmp eq i32 %66, 0, !dbg !3660
  br i1 %cmp77, label %if.then79, label %if.else, !dbg !3661

if.then79:                                        ; preds = %if.then76
  %67 = load i64, ptr %max_option_length, align 8, !dbg !3662, !tbaa !1287
  %conv80 = trunc i64 %67 to i32, !dbg !3664
  %68 = load ptr, ptr %option, align 8, !dbg !3665, !tbaa !743
  %default_value = getelementptr inbounds %struct.GtOption, ptr %68, i32 0, i32 4, !dbg !3666
  %69 = load i8, ptr %default_value, align 8, !dbg !3667, !tbaa !880, !range !1270, !noundef !1271
  %tobool81 = trunc i8 %69 to i1, !dbg !3667
  %70 = zext i1 %tobool81 to i64, !dbg !3665
  %cond = select i1 %tobool81, ptr @.str.30, ptr @.str.31, !dbg !3665
  %call83 = call i32 (ptr, ...) @printf(ptr noundef @.str.122, i32 noundef %conv80, ptr noundef @.str.121, ptr noundef %cond), !dbg !3668
  br label %if.end221, !dbg !3669

if.else:                                          ; preds = %if.then76
  %71 = load ptr, ptr %option, align 8, !dbg !3670, !tbaa !743
  %option_type84 = getelementptr inbounds %struct.GtOption, ptr %71, i32 0, i32 0, !dbg !3672
  %72 = load i32, ptr %option_type84, align 8, !dbg !3672, !tbaa !1391
  %cmp85 = icmp eq i32 %72, 1, !dbg !3673
  br i1 %cmp85, label %if.then87, label %if.else100, !dbg !3674

if.then87:                                        ; preds = %if.else
  %73 = load i64, ptr %max_option_length, align 8, !dbg !3675, !tbaa !1287
  %conv88 = trunc i64 %73 to i32, !dbg !3677
  %call89 = call i32 (ptr, ...) @printf(ptr noundef @.str.123, i32 noundef %conv88, ptr noundef @.str.121), !dbg !3678
  %74 = load ptr, ptr %option, align 8, !dbg !3679, !tbaa !743
  %default_value90 = getelementptr inbounds %struct.GtOption, ptr %74, i32 0, i32 4, !dbg !3681
  %75 = load ptr, ptr %default_value90, align 8, !dbg !3682, !tbaa !880
  %tobool91 = icmp ne ptr %75, null, !dbg !3679
  br i1 %tobool91, label %lor.lhs.false92, label %if.then96, !dbg !3683

lor.lhs.false92:                                  ; preds = %if.then87
  %76 = load ptr, ptr %option, align 8, !dbg !3684, !tbaa !743
  %default_value93 = getelementptr inbounds %struct.GtOption, ptr %76, i32 0, i32 4, !dbg !3685
  %77 = load ptr, ptr %default_value93, align 8, !dbg !3686, !tbaa !880
  %call94 = call i64 @strlen(ptr noundef %77) #11, !dbg !3687
  %tobool95 = icmp ne i64 %call94, 0, !dbg !3687
  br i1 %tobool95, label %if.else97, label %if.then96, !dbg !3688

if.then96:                                        ; preds = %lor.lhs.false92, %if.then87
  call void @gt_xputs(ptr noundef @.str.33), !dbg !3689
  br label %if.end99, !dbg !3689

if.else97:                                        ; preds = %lor.lhs.false92
  %78 = load ptr, ptr %option, align 8, !dbg !3690, !tbaa !743
  %default_value98 = getelementptr inbounds %struct.GtOption, ptr %78, i32 0, i32 4, !dbg !3691
  %79 = load ptr, ptr %default_value98, align 8, !dbg !3692, !tbaa !880
  call void @gt_xputs(ptr noundef %79), !dbg !3693
  br label %if.end99

if.end99:                                         ; preds = %if.else97, %if.then96
  br label %if.end220, !dbg !3694

if.else100:                                       ; preds = %if.else
  %80 = load ptr, ptr %option, align 8, !dbg !3695, !tbaa !743
  %option_type101 = getelementptr inbounds %struct.GtOption, ptr %80, i32 0, i32 0, !dbg !3697
  %81 = load i32, ptr %option_type101, align 8, !dbg !3697, !tbaa !1391
  %cmp102 = icmp eq i32 %81, 2, !dbg !3698
  br i1 %cmp102, label %if.then104, label %if.else115, !dbg !3699

if.then104:                                       ; preds = %if.else100
  %82 = load i64, ptr %max_option_length, align 8, !dbg !3700, !tbaa !1287
  %conv105 = trunc i64 %82 to i32, !dbg !3702
  %call106 = call i32 (ptr, ...) @printf(ptr noundef @.str.123, i32 noundef %conv105, ptr noundef @.str.121), !dbg !3703
  %83 = load ptr, ptr %option, align 8, !dbg !3704, !tbaa !743
  %default_value107 = getelementptr inbounds %struct.GtOption, ptr %83, i32 0, i32 4, !dbg !3706
  %84 = load double, ptr %default_value107, align 8, !dbg !3707, !tbaa !880
  %cmp108 = fcmp oeq double %84, 0x7FEFFFFFFFFFFFFF, !dbg !3708
  br i1 %cmp108, label %if.then110, label %if.else111, !dbg !3709

if.then110:                                       ; preds = %if.then104
  call void @gt_xputs(ptr noundef @.str.33), !dbg !3710
  br label %if.end114, !dbg !3710

if.else111:                                       ; preds = %if.then104
  %85 = load ptr, ptr %option, align 8, !dbg !3711, !tbaa !743
  %default_value112 = getelementptr inbounds %struct.GtOption, ptr %85, i32 0, i32 4, !dbg !3712
  %86 = load double, ptr %default_value112, align 8, !dbg !3713, !tbaa !880
  %call113 = call i32 (ptr, ...) @printf(ptr noundef @.str.124, double noundef %86), !dbg !3714
  br label %if.end114

if.end114:                                        ; preds = %if.else111, %if.then110
  br label %if.end219, !dbg !3715

if.else115:                                       ; preds = %if.else100
  %87 = load ptr, ptr %option, align 8, !dbg !3716, !tbaa !743
  %option_type116 = getelementptr inbounds %struct.GtOption, ptr %87, i32 0, i32 0, !dbg !3718
  %88 = load i32, ptr %option_type116, align 8, !dbg !3718, !tbaa !1391
  %cmp117 = icmp eq i32 %88, 7, !dbg !3719
  br i1 %cmp117, label %if.then119, label %if.else130, !dbg !3720

if.then119:                                       ; preds = %if.else115
  %89 = load i64, ptr %max_option_length, align 8, !dbg !3721, !tbaa !1287
  %conv120 = trunc i64 %89 to i32, !dbg !3723
  %call121 = call i32 (ptr, ...) @printf(ptr noundef @.str.123, i32 noundef %conv120, ptr noundef @.str.121), !dbg !3724
  %90 = load ptr, ptr %option, align 8, !dbg !3725, !tbaa !743
  %default_value122 = getelementptr inbounds %struct.GtOption, ptr %90, i32 0, i32 4, !dbg !3727
  %91 = load i32, ptr %default_value122, align 8, !dbg !3728, !tbaa !880
  %cmp123 = icmp eq i32 %91, -2147483648, !dbg !3729
  br i1 %cmp123, label %if.then125, label %if.else126, !dbg !3730

if.then125:                                       ; preds = %if.then119
  call void @gt_xputs(ptr noundef @.str.33), !dbg !3731
  br label %if.end129, !dbg !3731

if.else126:                                       ; preds = %if.then119
  %92 = load ptr, ptr %option, align 8, !dbg !3732, !tbaa !743
  %default_value127 = getelementptr inbounds %struct.GtOption, ptr %92, i32 0, i32 4, !dbg !3733
  %93 = load i32, ptr %default_value127, align 8, !dbg !3734, !tbaa !880
  %call128 = call i32 (ptr, ...) @printf(ptr noundef @.str.125, i32 noundef %93), !dbg !3735
  br label %if.end129

if.end129:                                        ; preds = %if.else126, %if.then125
  br label %if.end218, !dbg !3736

if.else130:                                       ; preds = %if.else115
  %94 = load ptr, ptr %option, align 8, !dbg !3737, !tbaa !743
  %option_type131 = getelementptr inbounds %struct.GtOption, ptr %94, i32 0, i32 0, !dbg !3739
  %95 = load i32, ptr %option_type131, align 8, !dbg !3739, !tbaa !1391
  %cmp132 = icmp eq i32 %95, 8, !dbg !3740
  br i1 %cmp132, label %if.then134, label %if.else145, !dbg !3741

if.then134:                                       ; preds = %if.else130
  %96 = load i64, ptr %max_option_length, align 8, !dbg !3742, !tbaa !1287
  %conv135 = trunc i64 %96 to i32, !dbg !3744
  %call136 = call i32 (ptr, ...) @printf(ptr noundef @.str.123, i32 noundef %conv135, ptr noundef @.str.121), !dbg !3745
  %97 = load ptr, ptr %option, align 8, !dbg !3746, !tbaa !743
  %default_value137 = getelementptr inbounds %struct.GtOption, ptr %97, i32 0, i32 4, !dbg !3748
  %98 = load i32, ptr %default_value137, align 8, !dbg !3749, !tbaa !880
  %cmp138 = icmp eq i32 %98, -1, !dbg !3750
  br i1 %cmp138, label %if.then140, label %if.else141, !dbg !3751

if.then140:                                       ; preds = %if.then134
  call void @gt_xputs(ptr noundef @.str.33), !dbg !3752
  br label %if.end144, !dbg !3752

if.else141:                                       ; preds = %if.then134
  %99 = load ptr, ptr %option, align 8, !dbg !3753, !tbaa !743
  %default_value142 = getelementptr inbounds %struct.GtOption, ptr %99, i32 0, i32 4, !dbg !3754
  %100 = load i32, ptr %default_value142, align 8, !dbg !3755, !tbaa !880
  %call143 = call i32 (ptr, ...) @printf(ptr noundef @.str.126, i32 noundef %100), !dbg !3756
  br label %if.end144

if.end144:                                        ; preds = %if.else141, %if.then140
  br label %if.end217, !dbg !3757

if.else145:                                       ; preds = %if.else130
  %101 = load ptr, ptr %option, align 8, !dbg !3758, !tbaa !743
  %option_type146 = getelementptr inbounds %struct.GtOption, ptr %101, i32 0, i32 0, !dbg !3760
  %102 = load i32, ptr %option_type146, align 8, !dbg !3760, !tbaa !1391
  %cmp147 = icmp eq i32 %102, 9, !dbg !3761
  br i1 %cmp147, label %if.then149, label %if.else160, !dbg !3762

if.then149:                                       ; preds = %if.else145
  %103 = load i64, ptr %max_option_length, align 8, !dbg !3763, !tbaa !1287
  %conv150 = trunc i64 %103 to i32, !dbg !3765
  %call151 = call i32 (ptr, ...) @printf(ptr noundef @.str.123, i32 noundef %conv150, ptr noundef @.str.121), !dbg !3766
  %104 = load ptr, ptr %option, align 8, !dbg !3767, !tbaa !743
  %default_value152 = getelementptr inbounds %struct.GtOption, ptr %104, i32 0, i32 4, !dbg !3769
  %105 = load i64, ptr %default_value152, align 8, !dbg !3770, !tbaa !880
  %cmp153 = icmp eq i64 %105, -9223372036854775808, !dbg !3771
  br i1 %cmp153, label %if.then155, label %if.else156, !dbg !3772

if.then155:                                       ; preds = %if.then149
  call void @gt_xputs(ptr noundef @.str.33), !dbg !3773
  br label %if.end159, !dbg !3773

if.else156:                                       ; preds = %if.then149
  %106 = load ptr, ptr %option, align 8, !dbg !3774, !tbaa !743
  %default_value157 = getelementptr inbounds %struct.GtOption, ptr %106, i32 0, i32 4, !dbg !3775
  %107 = load i64, ptr %default_value157, align 8, !dbg !3776, !tbaa !880
  %call158 = call i32 (ptr, ...) @printf(ptr noundef @.str.127, i64 noundef %107), !dbg !3777
  br label %if.end159

if.end159:                                        ; preds = %if.else156, %if.then155
  br label %if.end216, !dbg !3778

if.else160:                                       ; preds = %if.else145
  %108 = load ptr, ptr %option, align 8, !dbg !3779, !tbaa !743
  %option_type161 = getelementptr inbounds %struct.GtOption, ptr %108, i32 0, i32 0, !dbg !3781
  %109 = load i32, ptr %option_type161, align 8, !dbg !3781, !tbaa !1391
  %cmp162 = icmp eq i32 %109, 10, !dbg !3782
  br i1 %cmp162, label %if.then164, label %if.else175, !dbg !3783

if.then164:                                       ; preds = %if.else160
  %110 = load i64, ptr %max_option_length, align 8, !dbg !3784, !tbaa !1287
  %conv165 = trunc i64 %110 to i32, !dbg !3786
  %call166 = call i32 (ptr, ...) @printf(ptr noundef @.str.123, i32 noundef %conv165, ptr noundef @.str.121), !dbg !3787
  %111 = load ptr, ptr %option, align 8, !dbg !3788, !tbaa !743
  %default_value167 = getelementptr inbounds %struct.GtOption, ptr %111, i32 0, i32 4, !dbg !3790
  %112 = load i64, ptr %default_value167, align 8, !dbg !3791, !tbaa !880
  %cmp168 = icmp eq i64 %112, -1, !dbg !3792
  br i1 %cmp168, label %if.then170, label %if.else171, !dbg !3793

if.then170:                                       ; preds = %if.then164
  call void @gt_xputs(ptr noundef @.str.33), !dbg !3794
  br label %if.end174, !dbg !3794

if.else171:                                       ; preds = %if.then164
  %113 = load ptr, ptr %option, align 8, !dbg !3795, !tbaa !743
  %default_value172 = getelementptr inbounds %struct.GtOption, ptr %113, i32 0, i32 4, !dbg !3796
  %114 = load i64, ptr %default_value172, align 8, !dbg !3797, !tbaa !880
  %call173 = call i32 (ptr, ...) @printf(ptr noundef @.str.128, i64 noundef %114), !dbg !3798
  br label %if.end174

if.end174:                                        ; preds = %if.else171, %if.then170
  br label %if.end215, !dbg !3799

if.else175:                                       ; preds = %if.else160
  %115 = load ptr, ptr %option, align 8, !dbg !3800, !tbaa !743
  %option_type176 = getelementptr inbounds %struct.GtOption, ptr %115, i32 0, i32 0, !dbg !3802
  %116 = load i32, ptr %option_type176, align 8, !dbg !3802, !tbaa !1391
  %cmp177 = icmp eq i32 %116, 11, !dbg !3803
  br i1 %cmp177, label %if.then179, label %if.else192, !dbg !3804

if.then179:                                       ; preds = %if.else175
  %117 = load i64, ptr %max_option_length, align 8, !dbg !3805, !tbaa !1287
  %conv180 = trunc i64 %117 to i32, !dbg !3807
  %call181 = call i32 (ptr, ...) @printf(ptr noundef @.str.123, i32 noundef %conv180, ptr noundef @.str.121), !dbg !3808
  %118 = load ptr, ptr %option, align 8, !dbg !3809, !tbaa !743
  %default_value182 = getelementptr inbounds %struct.GtOption, ptr %118, i32 0, i32 4, !dbg !3811
  %start = getelementptr inbounds %struct.GtRange, ptr %default_value182, i32 0, i32 0, !dbg !3812
  %119 = load i64, ptr %start, align 8, !dbg !3812, !tbaa !880
  %cmp183 = icmp eq i64 %119, -1, !dbg !3813
  br i1 %cmp183, label %if.then185, label %if.else186, !dbg !3814

if.then185:                                       ; preds = %if.then179
  call void @gt_xputs(ptr noundef @.str.33), !dbg !3815
  br label %if.end191, !dbg !3815

if.else186:                                       ; preds = %if.then179
  %120 = load ptr, ptr %option, align 8, !dbg !3816, !tbaa !743
  %default_value187 = getelementptr inbounds %struct.GtOption, ptr %120, i32 0, i32 4, !dbg !3818
  %start188 = getelementptr inbounds %struct.GtRange, ptr %default_value187, i32 0, i32 0, !dbg !3819
  %121 = load i64, ptr %start188, align 8, !dbg !3819, !tbaa !880
  %122 = load ptr, ptr %option, align 8, !dbg !3820, !tbaa !743
  %default_value189 = getelementptr inbounds %struct.GtOption, ptr %122, i32 0, i32 4, !dbg !3821
  %end = getelementptr inbounds %struct.GtRange, ptr %default_value189, i32 0, i32 1, !dbg !3822
  %123 = load i64, ptr %end, align 8, !dbg !3822, !tbaa !880
  %call190 = call i32 (ptr, ...) @printf(ptr noundef @.str.129, i64 noundef %121, i64 noundef %123), !dbg !3823
  br label %if.end191

if.end191:                                        ; preds = %if.else186, %if.then185
  br label %if.end214, !dbg !3824

if.else192:                                       ; preds = %if.else175
  %124 = load ptr, ptr %option, align 8, !dbg !3825, !tbaa !743
  %option_type193 = getelementptr inbounds %struct.GtOption, ptr %124, i32 0, i32 0, !dbg !3827
  %125 = load i32, ptr %option_type193, align 8, !dbg !3827, !tbaa !1391
  %cmp194 = icmp eq i32 %125, 3, !dbg !3828
  br i1 %cmp194, label %if.then200, label %lor.lhs.false196, !dbg !3829

lor.lhs.false196:                                 ; preds = %if.else192
  %126 = load ptr, ptr %option, align 8, !dbg !3830, !tbaa !743
  %option_type197 = getelementptr inbounds %struct.GtOption, ptr %126, i32 0, i32 0, !dbg !3831
  %127 = load i32, ptr %option_type197, align 8, !dbg !3831, !tbaa !1391
  %cmp198 = icmp eq i32 %127, 12, !dbg !3832
  br i1 %cmp198, label %if.then200, label %if.end213, !dbg !3833

if.then200:                                       ; preds = %lor.lhs.false196, %if.else192
  %128 = load i64, ptr %max_option_length, align 8, !dbg !3834, !tbaa !1287
  %conv201 = trunc i64 %128 to i32, !dbg !3836
  %call202 = call i32 (ptr, ...) @printf(ptr noundef @.str.123, i32 noundef %conv201, ptr noundef @.str.121), !dbg !3837
  %129 = load ptr, ptr %option, align 8, !dbg !3838, !tbaa !743
  %default_value203 = getelementptr inbounds %struct.GtOption, ptr %129, i32 0, i32 4, !dbg !3840
  %130 = load ptr, ptr %default_value203, align 8, !dbg !3841, !tbaa !880
  %tobool204 = icmp ne ptr %130, null, !dbg !3838
  br i1 %tobool204, label %lor.lhs.false205, label %if.then209, !dbg !3842

lor.lhs.false205:                                 ; preds = %if.then200
  %131 = load ptr, ptr %option, align 8, !dbg !3843, !tbaa !743
  %default_value206 = getelementptr inbounds %struct.GtOption, ptr %131, i32 0, i32 4, !dbg !3844
  %132 = load ptr, ptr %default_value206, align 8, !dbg !3845, !tbaa !880
  %call207 = call i64 @strlen(ptr noundef %132) #11, !dbg !3846
  %tobool208 = icmp ne i64 %call207, 0, !dbg !3846
  br i1 %tobool208, label %if.else210, label %if.then209, !dbg !3847

if.then209:                                       ; preds = %lor.lhs.false205, %if.then200
  call void @gt_xputs(ptr noundef @.str.33), !dbg !3848
  br label %if.end212, !dbg !3848

if.else210:                                       ; preds = %lor.lhs.false205
  %133 = load ptr, ptr %option, align 8, !dbg !3849, !tbaa !743
  %default_value211 = getelementptr inbounds %struct.GtOption, ptr %133, i32 0, i32 4, !dbg !3850
  %134 = load ptr, ptr %default_value211, align 8, !dbg !3851, !tbaa !880
  call void @gt_xputs(ptr noundef %134), !dbg !3852
  br label %if.end212

if.end212:                                        ; preds = %if.else210, %if.then209
  br label %if.end213, !dbg !3853

if.end213:                                        ; preds = %if.end212, %lor.lhs.false196
  br label %if.end214

if.end214:                                        ; preds = %if.end213, %if.end191
  br label %if.end215

if.end215:                                        ; preds = %if.end214, %if.end174
  br label %if.end216

if.end216:                                        ; preds = %if.end215, %if.end159
  br label %if.end217

if.end217:                                        ; preds = %if.end216, %if.end144
  br label %if.end218

if.end218:                                        ; preds = %if.end217, %if.end129
  br label %if.end219

if.end219:                                        ; preds = %if.end218, %if.end114
  br label %if.end220

if.end220:                                        ; preds = %if.end219, %if.end99
  br label %if.end221

if.end221:                                        ; preds = %if.end220, %if.then79
  br label %if.end222, !dbg !3854

if.end222:                                        ; preds = %if.end221, %if.end66
  br label %for.inc223, !dbg !3855

for.inc223:                                       ; preds = %if.end222, %if.then65
  %135 = load i64, ptr %i, align 8, !dbg !3856, !tbaa !1287
  %inc224 = add i64 %135, 1, !dbg !3856
  store i64 %inc224, ptr %i, align 8, !dbg !3856, !tbaa !1287
  br label %for.cond44, !dbg !3857, !llvm.loop !3858

for.end225:                                       ; preds = %for.cond44
  %136 = load ptr, ptr %op.addr, align 8, !dbg !3860, !tbaa !743
  %comment_func = getelementptr inbounds %struct.GtOptionParser, ptr %136, i32 0, i32 7, !dbg !3862
  %137 = load ptr, ptr %comment_func, align 8, !dbg !3862, !tbaa !1059
  %tobool226 = icmp ne ptr %137, null, !dbg !3860
  br i1 %tobool226, label %if.then227, label %if.end231, !dbg !3863

if.then227:                                       ; preds = %for.end225
  %138 = load ptr, ptr %op.addr, align 8, !dbg !3864, !tbaa !743
  %comment_func228 = getelementptr inbounds %struct.GtOptionParser, ptr %138, i32 0, i32 7, !dbg !3865
  %139 = load ptr, ptr %comment_func228, align 8, !dbg !3865, !tbaa !1059
  %140 = load ptr, ptr %op.addr, align 8, !dbg !3866, !tbaa !743
  %progname229 = getelementptr inbounds %struct.GtOptionParser, ptr %140, i32 0, i32 0, !dbg !3867
  %141 = load ptr, ptr %progname229, align 8, !dbg !3867, !tbaa !2137
  %142 = load ptr, ptr %op.addr, align 8, !dbg !3868, !tbaa !743
  %comment_func_data = getelementptr inbounds %struct.GtOptionParser, ptr %142, i32 0, i32 8, !dbg !3869
  %143 = load ptr, ptr %comment_func_data, align 8, !dbg !3869, !tbaa !1064
  %144 = load ptr, ptr %err.addr, align 8, !dbg !3870, !tbaa !743
  %call230 = call i32 %139(ptr noundef %141, ptr noundef %143, ptr noundef %144), !dbg !3864
  store i32 %call230, ptr %had_err, align 4, !dbg !3871, !tbaa !1154
  br label %if.end231, !dbg !3872

if.end231:                                        ; preds = %if.then227, %for.end225
  %145 = load i32, ptr %had_err, align 4, !dbg !3873, !tbaa !1154
  %tobool232 = icmp ne i32 %145, 0, !dbg !3873
  br i1 %tobool232, label %if.end245, label %if.then233, !dbg !3875

if.then233:                                       ; preds = %if.end231
  %146 = load ptr, ptr %op.addr, align 8, !dbg !3876, !tbaa !743
  %refer_to_manual = getelementptr inbounds %struct.GtOptionParser, ptr %146, i32 0, i32 6, !dbg !3879
  %147 = load i8, ptr %refer_to_manual, align 1, !dbg !3879, !tbaa !1036, !range !1270, !noundef !1271
  %tobool234 = trunc i8 %147 to i1, !dbg !3879
  br i1 %tobool234, label %if.then235, label %if.end240, !dbg !3880

if.then235:                                       ; preds = %if.then233
  %148 = load ptr, ptr %op.addr, align 8, !dbg !3881, !tbaa !743
  %progname236 = getelementptr inbounds %struct.GtOptionParser, ptr %148, i32 0, i32 0, !dbg !3883
  %149 = load ptr, ptr %progname236, align 8, !dbg !3883, !tbaa !2137
  %150 = load ptr, ptr %op.addr, align 8, !dbg !3884, !tbaa !743
  %progname237 = getelementptr inbounds %struct.GtOptionParser, ptr %150, i32 0, i32 0, !dbg !3885
  %151 = load ptr, ptr %progname237, align 8, !dbg !3885, !tbaa !2137
  %call238 = call i64 @gt_cstr_length_up_to_char(ptr noundef %151, i8 noundef signext 32), !dbg !3886
  %add.ptr = getelementptr inbounds i8, ptr %149, i64 %call238, !dbg !3887
  %call239 = call i32 (ptr, ...) @printf(ptr noundef @.str.130, ptr noundef %add.ptr), !dbg !3888
  br label %if.end240, !dbg !3889

if.end240:                                        ; preds = %if.then235, %if.then233
  %152 = load ptr, ptr %op.addr, align 8, !dbg !3890, !tbaa !743
  %mail_address = getelementptr inbounds %struct.GtOptionParser, ptr %152, i32 0, i32 10, !dbg !3891
  %153 = load ptr, ptr %mail_address, align 8, !dbg !3891, !tbaa !1207
  %tobool241 = icmp ne ptr %153, null, !dbg !3890
  br i1 %tobool241, label %cond.true, label %cond.false, !dbg !3890

cond.true:                                        ; preds = %if.end240
  %154 = load ptr, ptr %op.addr, align 8, !dbg !3892, !tbaa !743
  %mail_address242 = getelementptr inbounds %struct.GtOptionParser, ptr %154, i32 0, i32 10, !dbg !3893
  %155 = load ptr, ptr %mail_address242, align 8, !dbg !3893, !tbaa !1207
  br label %cond.end, !dbg !3890

cond.false:                                       ; preds = %if.end240
  br label %cond.end, !dbg !3890

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond243 = phi ptr [ %155, %cond.true ], [ @.str.52, %cond.false ], !dbg !3890
  %call244 = call i32 (ptr, ...) @printf(ptr noundef @.str.131, ptr noundef %cond243), !dbg !3894
  br label %if.end245, !dbg !3895

if.end245:                                        ; preds = %cond.end, %if.end231
  %156 = load i32, ptr %had_err, align 4, !dbg !3896, !tbaa !1154
  call void @llvm.lifetime.end.p0(i64 4, ptr %had_err) #10, !dbg !3897
  call void @llvm.lifetime.end.p0(i64 8, ptr %option) #10, !dbg !3897
  call void @llvm.lifetime.end.p0(i64 8, ptr %max_option_length) #10, !dbg !3897
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #10, !dbg !3897
  ret i32 %156, !dbg !3898
}

declare !dbg !3899 i32 @gt_parse_int(ptr noundef, ptr noundef) #1

declare !dbg !3902 i32 @gt_parse_uint(ptr noundef, ptr noundef) #1

declare !dbg !3905 i32 @gt_parse_word(ptr noundef, ptr noundef) #1

declare !dbg !3908 i32 @gt_parse_uword(ptr noundef, ptr noundef) #1

declare !dbg !3911 void @gt_str_array_add_cstr(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal i32 @check_mandatory_options(ptr noundef %op, ptr noundef %err) #0 !dbg !3918 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca ptr, align 8
  %err.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %o = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %op, ptr %op.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !3922, metadata !DIExpression()), !dbg !3926
  store ptr %err, ptr %err.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !3923, metadata !DIExpression()), !dbg !3927
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #10, !dbg !3928
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !3924, metadata !DIExpression()), !dbg !3929
  call void @llvm.lifetime.start.p0(i64 8, ptr %o) #10, !dbg !3930
  tail call void @llvm.dbg.declare(metadata ptr %o, metadata !3925, metadata !DIExpression()), !dbg !3931
  br label %do.body, !dbg !3932

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %err.addr, align 8, !dbg !3933, !tbaa !743
  %tobool = icmp ne ptr %0, null, !dbg !3933
  br i1 %tobool, label %lor.lhs.false, label %if.end, !dbg !3933

lor.lhs.false:                                    ; preds = %do.body
  %1 = load ptr, ptr %err.addr, align 8, !dbg !3933, !tbaa !743
  %call = call zeroext i1 @gt_error_is_set(ptr noundef %1), !dbg !3933
  br i1 %call, label %if.then, label %if.end, !dbg !3936

if.then:                                          ; preds = %lor.lhs.false
  %2 = load ptr, ptr @stderr, align 8, !dbg !3937, !tbaa !743
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str, ptr noundef @.str.14, ptr noundef @__func__.check_mandatory_options, ptr noundef @.str.2, i32 noundef 779), !dbg !3937
  call void @abort() #9, !dbg !3937
  unreachable, !dbg !3937

if.end:                                           ; preds = %lor.lhs.false, %do.body
  br label %do.cond, !dbg !3936

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !3936

do.end:                                           ; preds = %do.cond
  br label %do.body2, !dbg !3939

do.body2:                                         ; preds = %do.end
  %3 = load ptr, ptr %op.addr, align 8, !dbg !3940, !tbaa !743
  %tobool3 = icmp ne ptr %3, null, !dbg !3940
  br i1 %tobool3, label %if.end6, label %if.then4, !dbg !3943

if.then4:                                         ; preds = %do.body2
  %4 = load ptr, ptr @stderr, align 8, !dbg !3944, !tbaa !743
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str, ptr noundef @.str.9, ptr noundef @__func__.check_mandatory_options, ptr noundef @.str.2, i32 noundef 780), !dbg !3944
  call void @abort() #9, !dbg !3944
  unreachable, !dbg !3944

if.end6:                                          ; preds = %do.body2
  br label %do.cond7, !dbg !3943

do.cond7:                                         ; preds = %if.end6
  br label %do.end8, !dbg !3943

do.end8:                                          ; preds = %do.cond7
  store i64 0, ptr %i, align 8, !dbg !3946, !tbaa !1287
  br label %for.cond, !dbg !3948

for.cond:                                         ; preds = %for.inc, %do.end8
  %5 = load i64, ptr %i, align 8, !dbg !3949, !tbaa !1287
  %6 = load ptr, ptr %op.addr, align 8, !dbg !3951, !tbaa !743
  %options = getelementptr inbounds %struct.GtOptionParser, ptr %6, i32 0, i32 3, !dbg !3952
  %7 = load ptr, ptr %options, align 8, !dbg !3952, !tbaa !912
  %call9 = call i64 @gt_array_size(ptr noundef %7), !dbg !3953
  %cmp = icmp ult i64 %5, %call9, !dbg !3954
  br i1 %cmp, label %for.body, label %for.end, !dbg !3955

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %op.addr, align 8, !dbg !3956, !tbaa !743
  %options10 = getelementptr inbounds %struct.GtOptionParser, ptr %8, i32 0, i32 3, !dbg !3958
  %9 = load ptr, ptr %options10, align 8, !dbg !3958, !tbaa !912
  %10 = load i64, ptr %i, align 8, !dbg !3959, !tbaa !1287
  %call11 = call ptr @gt_array_get(ptr noundef %9, i64 noundef %10), !dbg !3960
  %11 = load ptr, ptr %call11, align 8, !dbg !3961, !tbaa !743
  store ptr %11, ptr %o, align 8, !dbg !3962, !tbaa !743
  %12 = load ptr, ptr %o, align 8, !dbg !3963, !tbaa !743
  %is_mandatory = getelementptr inbounds %struct.GtOption, ptr %12, i32 0, i32 9, !dbg !3965
  %13 = load i8, ptr %is_mandatory, align 1, !dbg !3965, !tbaa !3966, !range !1270, !noundef !1271
  %tobool12 = trunc i8 %13 to i1, !dbg !3965
  br i1 %tobool12, label %land.lhs.true, label %if.end16, !dbg !3967

land.lhs.true:                                    ; preds = %for.body
  %14 = load ptr, ptr %o, align 8, !dbg !3968, !tbaa !743
  %is_set = getelementptr inbounds %struct.GtOption, ptr %14, i32 0, i32 8, !dbg !3969
  %15 = load i8, ptr %is_set, align 8, !dbg !3969, !tbaa !2227, !range !1270, !noundef !1271
  %tobool13 = trunc i8 %15 to i1, !dbg !3969
  br i1 %tobool13, label %if.end16, label %if.then14, !dbg !3970

if.then14:                                        ; preds = %land.lhs.true
  %16 = load ptr, ptr %err.addr, align 8, !dbg !3971, !tbaa !743
  %17 = load ptr, ptr %o, align 8, !dbg !3973, !tbaa !743
  %option_str = getelementptr inbounds %struct.GtOption, ptr %17, i32 0, i32 1, !dbg !3974
  %18 = load ptr, ptr %option_str, align 8, !dbg !3974, !tbaa !979
  %call15 = call ptr @gt_str_get(ptr noundef %18), !dbg !3975
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %16, ptr noundef @.str.134, ptr noundef %call15), !dbg !3976
  store i32 -1, ptr %retval, align 4, !dbg !3977
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3977

if.end16:                                         ; preds = %land.lhs.true, %for.body
  br label %for.inc, !dbg !3978

for.inc:                                          ; preds = %if.end16
  %19 = load i64, ptr %i, align 8, !dbg !3979, !tbaa !1287
  %inc = add i64 %19, 1, !dbg !3979
  store i64 %inc, ptr %i, align 8, !dbg !3979, !tbaa !1287
  br label %for.cond, !dbg !3980, !llvm.loop !3981

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !3983
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3983

cleanup:                                          ; preds = %for.end, %if.then14
  call void @llvm.lifetime.end.p0(i64 8, ptr %o) #10, !dbg !3984
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #10, !dbg !3984
  %20 = load i32, ptr %retval, align 4, !dbg !3984
  ret i32 %20, !dbg !3984
}

; Function Attrs: nounwind uwtable
define internal i32 @check_option_implications(ptr noundef %op, ptr noundef %err) #0 !dbg !3985 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca ptr, align 8
  %err.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %k = alloca i64, align 8
  %l = alloca i64, align 8
  %implied_option_array = alloca ptr, align 8
  %o = alloca ptr, align 8
  %implied_option = alloca ptr, align 8
  %option_set = alloca i32, align 4
  %gt_error_str = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %op, ptr %op.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !3987, metadata !DIExpression()), !dbg !3998
  store ptr %err, ptr %err.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !3988, metadata !DIExpression()), !dbg !3999
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #10, !dbg !4000
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !3989, metadata !DIExpression()), !dbg !4001
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #10, !dbg !4000
  tail call void @llvm.dbg.declare(metadata ptr %j, metadata !3990, metadata !DIExpression()), !dbg !4002
  call void @llvm.lifetime.start.p0(i64 8, ptr %k) #10, !dbg !4000
  tail call void @llvm.dbg.declare(metadata ptr %k, metadata !3991, metadata !DIExpression()), !dbg !4003
  call void @llvm.lifetime.start.p0(i64 8, ptr %l) #10, !dbg !4000
  tail call void @llvm.dbg.declare(metadata ptr %l, metadata !3992, metadata !DIExpression()), !dbg !4004
  call void @llvm.lifetime.start.p0(i64 8, ptr %implied_option_array) #10, !dbg !4005
  tail call void @llvm.dbg.declare(metadata ptr %implied_option_array, metadata !3993, metadata !DIExpression()), !dbg !4006
  call void @llvm.lifetime.start.p0(i64 8, ptr %o) #10, !dbg !4007
  tail call void @llvm.dbg.declare(metadata ptr %o, metadata !3994, metadata !DIExpression()), !dbg !4008
  call void @llvm.lifetime.start.p0(i64 8, ptr %implied_option) #10, !dbg !4007
  tail call void @llvm.dbg.declare(metadata ptr %implied_option, metadata !3995, metadata !DIExpression()), !dbg !4009
  call void @llvm.lifetime.start.p0(i64 4, ptr %option_set) #10, !dbg !4010
  tail call void @llvm.dbg.declare(metadata ptr %option_set, metadata !3996, metadata !DIExpression()), !dbg !4011
  call void @llvm.lifetime.start.p0(i64 8, ptr %gt_error_str) #10, !dbg !4012
  tail call void @llvm.dbg.declare(metadata ptr %gt_error_str, metadata !3997, metadata !DIExpression()), !dbg !4013
  br label %do.body, !dbg !4014

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %err.addr, align 8, !dbg !4015, !tbaa !743
  %tobool = icmp ne ptr %0, null, !dbg !4015
  br i1 %tobool, label %lor.lhs.false, label %if.end, !dbg !4015

lor.lhs.false:                                    ; preds = %do.body
  %1 = load ptr, ptr %err.addr, align 8, !dbg !4015, !tbaa !743
  %call = call zeroext i1 @gt_error_is_set(ptr noundef %1), !dbg !4015
  br i1 %call, label %if.then, label %if.end, !dbg !4018

if.then:                                          ; preds = %lor.lhs.false
  %2 = load ptr, ptr @stderr, align 8, !dbg !4019, !tbaa !743
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str, ptr noundef @.str.14, ptr noundef @__func__.check_option_implications, ptr noundef @.str.2, i32 noundef 799), !dbg !4019
  call void @abort() #9, !dbg !4019
  unreachable, !dbg !4019

if.end:                                           ; preds = %lor.lhs.false, %do.body
  br label %do.cond, !dbg !4018

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !4018

do.end:                                           ; preds = %do.cond
  store i64 0, ptr %i, align 8, !dbg !4021, !tbaa !1287
  br label %for.cond, !dbg !4023

for.cond:                                         ; preds = %for.inc71, %do.end
  %3 = load i64, ptr %i, align 8, !dbg !4024, !tbaa !1287
  %4 = load ptr, ptr %op.addr, align 8, !dbg !4026, !tbaa !743
  %options = getelementptr inbounds %struct.GtOptionParser, ptr %4, i32 0, i32 3, !dbg !4027
  %5 = load ptr, ptr %options, align 8, !dbg !4027, !tbaa !912
  %call2 = call i64 @gt_array_size(ptr noundef %5), !dbg !4028
  %cmp = icmp ult i64 %3, %call2, !dbg !4029
  br i1 %cmp, label %for.body, label %for.end73, !dbg !4030

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %op.addr, align 8, !dbg !4031, !tbaa !743
  %options3 = getelementptr inbounds %struct.GtOptionParser, ptr %6, i32 0, i32 3, !dbg !4033
  %7 = load ptr, ptr %options3, align 8, !dbg !4033, !tbaa !912
  %8 = load i64, ptr %i, align 8, !dbg !4034, !tbaa !1287
  %call4 = call ptr @gt_array_get(ptr noundef %7, i64 noundef %8), !dbg !4035
  %9 = load ptr, ptr %call4, align 8, !dbg !4036, !tbaa !743
  store ptr %9, ptr %o, align 8, !dbg !4037, !tbaa !743
  %10 = load ptr, ptr %o, align 8, !dbg !4038, !tbaa !743
  %implications = getelementptr inbounds %struct.GtOption, ptr %10, i32 0, i32 16, !dbg !4040
  %11 = load ptr, ptr %implications, align 8, !dbg !4040, !tbaa !4041
  %tobool5 = icmp ne ptr %11, null, !dbg !4038
  br i1 %tobool5, label %land.lhs.true, label %if.end70, !dbg !4042

land.lhs.true:                                    ; preds = %for.body
  %12 = load ptr, ptr %o, align 8, !dbg !4043, !tbaa !743
  %is_set = getelementptr inbounds %struct.GtOption, ptr %12, i32 0, i32 8, !dbg !4044
  %13 = load i8, ptr %is_set, align 8, !dbg !4044, !tbaa !2227, !range !1270, !noundef !1271
  %tobool6 = trunc i8 %13 to i1, !dbg !4044
  br i1 %tobool6, label %if.then7, label %if.end70, !dbg !4045

if.then7:                                         ; preds = %land.lhs.true
  store i64 0, ptr %j, align 8, !dbg !4046, !tbaa !1287
  br label %for.cond8, !dbg !4049

for.cond8:                                        ; preds = %for.inc67, %if.then7
  %14 = load i64, ptr %j, align 8, !dbg !4050, !tbaa !1287
  %15 = load ptr, ptr %o, align 8, !dbg !4052, !tbaa !743
  %implications9 = getelementptr inbounds %struct.GtOption, ptr %15, i32 0, i32 16, !dbg !4053
  %16 = load ptr, ptr %implications9, align 8, !dbg !4053, !tbaa !4041
  %call10 = call i64 @gt_array_size(ptr noundef %16), !dbg !4054
  %cmp11 = icmp ult i64 %14, %call10, !dbg !4055
  br i1 %cmp11, label %for.body12, label %for.end69, !dbg !4056

for.body12:                                       ; preds = %for.cond8
  %17 = load ptr, ptr %o, align 8, !dbg !4057, !tbaa !743
  %implications13 = getelementptr inbounds %struct.GtOption, ptr %17, i32 0, i32 16, !dbg !4059
  %18 = load ptr, ptr %implications13, align 8, !dbg !4059, !tbaa !4041
  %19 = load i64, ptr %j, align 8, !dbg !4060, !tbaa !1287
  %call14 = call ptr @gt_array_get(ptr noundef %18, i64 noundef %19), !dbg !4061
  %20 = load ptr, ptr %call14, align 8, !dbg !4062, !tbaa !743
  store ptr %20, ptr %implied_option_array, align 8, !dbg !4063, !tbaa !743
  br label %do.body15, !dbg !4064

do.body15:                                        ; preds = %for.body12
  %21 = load ptr, ptr %implied_option_array, align 8, !dbg !4065, !tbaa !743
  %call16 = call i64 @gt_array_size(ptr noundef %21), !dbg !4065
  %tobool17 = icmp ne i64 %call16, 0, !dbg !4065
  br i1 %tobool17, label %if.end20, label %if.then18, !dbg !4068

if.then18:                                        ; preds = %do.body15
  %22 = load ptr, ptr @stderr, align 8, !dbg !4069, !tbaa !743
  %call19 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef @.str, ptr noundef @.str.135, ptr noundef @__func__.check_option_implications, ptr noundef @.str.2, i32 noundef 806), !dbg !4069
  call void @abort() #9, !dbg !4069
  unreachable, !dbg !4069

if.end20:                                         ; preds = %do.body15
  br label %do.cond21, !dbg !4068

do.cond21:                                        ; preds = %if.end20
  br label %do.end22, !dbg !4068

do.end22:                                         ; preds = %do.cond21
  %23 = load ptr, ptr %implied_option_array, align 8, !dbg !4071, !tbaa !743
  %call23 = call i64 @gt_array_size(ptr noundef %23), !dbg !4073
  %cmp24 = icmp eq i64 %call23, 1, !dbg !4074
  br i1 %cmp24, label %if.then25, label %if.else, !dbg !4075

if.then25:                                        ; preds = %do.end22
  %24 = load ptr, ptr %implied_option_array, align 8, !dbg !4076, !tbaa !743
  %call26 = call ptr @gt_array_get(ptr noundef %24, i64 noundef 0), !dbg !4078
  %25 = load ptr, ptr %call26, align 8, !dbg !4079, !tbaa !743
  store ptr %25, ptr %implied_option, align 8, !dbg !4080, !tbaa !743
  %26 = load ptr, ptr %implied_option, align 8, !dbg !4081, !tbaa !743
  %is_set27 = getelementptr inbounds %struct.GtOption, ptr %26, i32 0, i32 8, !dbg !4083
  %27 = load i8, ptr %is_set27, align 8, !dbg !4083, !tbaa !2227, !range !1270, !noundef !1271
  %tobool28 = trunc i8 %27 to i1, !dbg !4083
  br i1 %tobool28, label %if.end33, label %if.then29, !dbg !4084

if.then29:                                        ; preds = %if.then25
  %28 = load ptr, ptr %err.addr, align 8, !dbg !4085, !tbaa !743
  %29 = load ptr, ptr %o, align 8, !dbg !4087, !tbaa !743
  %option_str = getelementptr inbounds %struct.GtOption, ptr %29, i32 0, i32 1, !dbg !4088
  %30 = load ptr, ptr %option_str, align 8, !dbg !4088, !tbaa !979
  %call30 = call ptr @gt_str_get(ptr noundef %30), !dbg !4089
  %31 = load ptr, ptr %implied_option, align 8, !dbg !4090, !tbaa !743
  %option_str31 = getelementptr inbounds %struct.GtOption, ptr %31, i32 0, i32 1, !dbg !4091
  %32 = load ptr, ptr %option_str31, align 8, !dbg !4091, !tbaa !979
  %call32 = call ptr @gt_str_get(ptr noundef %32), !dbg !4092
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %28, ptr noundef @.str.136, ptr noundef %call30, ptr noundef %call32), !dbg !4093
  store i32 -1, ptr %retval, align 4, !dbg !4094
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4094

if.end33:                                         ; preds = %if.then25
  br label %if.end66, !dbg !4095

if.else:                                          ; preds = %do.end22
  store i32 0, ptr %option_set, align 4, !dbg !4096, !tbaa !1154
  store i64 0, ptr %k, align 8, !dbg !4098, !tbaa !1287
  br label %for.cond34, !dbg !4100

for.cond34:                                       ; preds = %for.inc, %if.else
  %33 = load i64, ptr %k, align 8, !dbg !4101, !tbaa !1287
  %34 = load ptr, ptr %implied_option_array, align 8, !dbg !4103, !tbaa !743
  %call35 = call i64 @gt_array_size(ptr noundef %34), !dbg !4104
  %cmp36 = icmp ult i64 %33, %call35, !dbg !4105
  br i1 %cmp36, label %for.body37, label %for.end, !dbg !4106

for.body37:                                       ; preds = %for.cond34
  %35 = load ptr, ptr %implied_option_array, align 8, !dbg !4107, !tbaa !743
  %36 = load i64, ptr %k, align 8, !dbg !4109, !tbaa !1287
  %call38 = call ptr @gt_array_get(ptr noundef %35, i64 noundef %36), !dbg !4110
  %37 = load ptr, ptr %call38, align 8, !dbg !4111, !tbaa !743
  store ptr %37, ptr %implied_option, align 8, !dbg !4112, !tbaa !743
  %38 = load ptr, ptr %implied_option, align 8, !dbg !4113, !tbaa !743
  %is_set39 = getelementptr inbounds %struct.GtOption, ptr %38, i32 0, i32 8, !dbg !4115
  %39 = load i8, ptr %is_set39, align 8, !dbg !4115, !tbaa !2227, !range !1270, !noundef !1271
  %tobool40 = trunc i8 %39 to i1, !dbg !4115
  br i1 %tobool40, label %if.then41, label %if.end42, !dbg !4116

if.then41:                                        ; preds = %for.body37
  store i32 1, ptr %option_set, align 4, !dbg !4117, !tbaa !1154
  br label %for.end, !dbg !4119

if.end42:                                         ; preds = %for.body37
  br label %for.inc, !dbg !4120

for.inc:                                          ; preds = %if.end42
  %40 = load i64, ptr %k, align 8, !dbg !4121, !tbaa !1287
  %inc = add i64 %40, 1, !dbg !4121
  store i64 %inc, ptr %k, align 8, !dbg !4121, !tbaa !1287
  br label %for.cond34, !dbg !4122, !llvm.loop !4123

for.end:                                          ; preds = %if.then41, %for.cond34
  %41 = load i32, ptr %option_set, align 4, !dbg !4125, !tbaa !1154
  %tobool43 = icmp ne i32 %41, 0, !dbg !4125
  br i1 %tobool43, label %if.end65, label %if.then44, !dbg !4127

if.then44:                                        ; preds = %for.end
  %call45 = call ptr @gt_str_new_cstr(ptr noundef @.str.137), !dbg !4128
  store ptr %call45, ptr %gt_error_str, align 8, !dbg !4130, !tbaa !743
  %42 = load ptr, ptr %gt_error_str, align 8, !dbg !4131, !tbaa !743
  %43 = load ptr, ptr %o, align 8, !dbg !4132, !tbaa !743
  %option_str46 = getelementptr inbounds %struct.GtOption, ptr %43, i32 0, i32 1, !dbg !4133
  %44 = load ptr, ptr %option_str46, align 8, !dbg !4133, !tbaa !979
  call void @gt_str_append_str(ptr noundef %42, ptr noundef %44), !dbg !4134
  %45 = load ptr, ptr %gt_error_str, align 8, !dbg !4135, !tbaa !743
  call void @gt_str_append_cstr(ptr noundef %45, ptr noundef @.str.138), !dbg !4136
  store i64 0, ptr %l, align 8, !dbg !4137, !tbaa !1287
  br label %for.cond47, !dbg !4139

for.cond47:                                       ; preds = %for.inc57, %if.then44
  %46 = load i64, ptr %l, align 8, !dbg !4140, !tbaa !1287
  %47 = load ptr, ptr %implied_option_array, align 8, !dbg !4142, !tbaa !743
  %call48 = call i64 @gt_array_size(ptr noundef %47), !dbg !4143
  %sub = sub i64 %call48, 1, !dbg !4144
  %cmp49 = icmp ult i64 %46, %sub, !dbg !4145
  br i1 %cmp49, label %for.body50, label %for.end59, !dbg !4146

for.body50:                                       ; preds = %for.cond47
  %48 = load ptr, ptr %gt_error_str, align 8, !dbg !4147, !tbaa !743
  call void @gt_str_append_cstr(ptr noundef %48, ptr noundef @.str.139), !dbg !4149
  %49 = load ptr, ptr %gt_error_str, align 8, !dbg !4150, !tbaa !743
  %50 = load ptr, ptr %implied_option_array, align 8, !dbg !4151, !tbaa !743
  %51 = load i64, ptr %l, align 8, !dbg !4152, !tbaa !1287
  %call51 = call ptr @gt_array_get(ptr noundef %50, i64 noundef %51), !dbg !4153
  %52 = load ptr, ptr %call51, align 8, !dbg !4154, !tbaa !743
  %option_str52 = getelementptr inbounds %struct.GtOption, ptr %52, i32 0, i32 1, !dbg !4155
  %53 = load ptr, ptr %option_str52, align 8, !dbg !4155, !tbaa !979
  call void @gt_str_append_str(ptr noundef %49, ptr noundef %53), !dbg !4156
  %54 = load ptr, ptr %gt_error_str, align 8, !dbg !4157, !tbaa !743
  call void @gt_str_append_cstr(ptr noundef %54, ptr noundef @.str.140), !dbg !4158
  %55 = load ptr, ptr %implied_option_array, align 8, !dbg !4159, !tbaa !743
  %call53 = call i64 @gt_array_size(ptr noundef %55), !dbg !4161
  %cmp54 = icmp ugt i64 %call53, 2, !dbg !4162
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !4163

if.then55:                                        ; preds = %for.body50
  %56 = load ptr, ptr %gt_error_str, align 8, !dbg !4164, !tbaa !743
  call void @gt_str_append_char(ptr noundef %56, i8 noundef signext 44), !dbg !4165
  br label %if.end56, !dbg !4165

if.end56:                                         ; preds = %if.then55, %for.body50
  br label %for.inc57, !dbg !4166

for.inc57:                                        ; preds = %if.end56
  %57 = load i64, ptr %l, align 8, !dbg !4167, !tbaa !1287
  %inc58 = add i64 %57, 1, !dbg !4167
  store i64 %inc58, ptr %l, align 8, !dbg !4167, !tbaa !1287
  br label %for.cond47, !dbg !4168, !llvm.loop !4169

for.end59:                                        ; preds = %for.cond47
  %58 = load ptr, ptr %gt_error_str, align 8, !dbg !4171, !tbaa !743
  call void @gt_str_append_cstr(ptr noundef %58, ptr noundef @.str.141), !dbg !4172
  %59 = load ptr, ptr %gt_error_str, align 8, !dbg !4173, !tbaa !743
  %60 = load ptr, ptr %implied_option_array, align 8, !dbg !4174, !tbaa !743
  %61 = load ptr, ptr %implied_option_array, align 8, !dbg !4175, !tbaa !743
  %call60 = call i64 @gt_array_size(ptr noundef %61), !dbg !4176
  %sub61 = sub i64 %call60, 1, !dbg !4177
  %call62 = call ptr @gt_array_get(ptr noundef %60, i64 noundef %sub61), !dbg !4178
  %62 = load ptr, ptr %call62, align 8, !dbg !4179, !tbaa !743
  %option_str63 = getelementptr inbounds %struct.GtOption, ptr %62, i32 0, i32 1, !dbg !4180
  %63 = load ptr, ptr %option_str63, align 8, !dbg !4180, !tbaa !979
  call void @gt_str_append_str(ptr noundef %59, ptr noundef %63), !dbg !4181
  %64 = load ptr, ptr %gt_error_str, align 8, !dbg !4182, !tbaa !743
  call void @gt_str_append_cstr(ptr noundef %64, ptr noundef @.str.140), !dbg !4183
  %65 = load ptr, ptr %err.addr, align 8, !dbg !4184, !tbaa !743
  %66 = load ptr, ptr %gt_error_str, align 8, !dbg !4185, !tbaa !743
  %call64 = call ptr @gt_str_get(ptr noundef %66), !dbg !4186
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %65, ptr noundef @.str.44, ptr noundef %call64), !dbg !4187
  %67 = load ptr, ptr %gt_error_str, align 8, !dbg !4188, !tbaa !743
  call void @gt_str_delete(ptr noundef %67), !dbg !4189
  store i32 -1, ptr %retval, align 4, !dbg !4190
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4190

if.end65:                                         ; preds = %for.end
  br label %if.end66

if.end66:                                         ; preds = %if.end65, %if.end33
  br label %for.inc67, !dbg !4191

for.inc67:                                        ; preds = %if.end66
  %68 = load i64, ptr %j, align 8, !dbg !4192, !tbaa !1287
  %inc68 = add i64 %68, 1, !dbg !4192
  store i64 %inc68, ptr %j, align 8, !dbg !4192, !tbaa !1287
  br label %for.cond8, !dbg !4193, !llvm.loop !4194

for.end69:                                        ; preds = %for.cond8
  br label %if.end70, !dbg !4196

if.end70:                                         ; preds = %for.end69, %land.lhs.true, %for.body
  br label %for.inc71, !dbg !4197

for.inc71:                                        ; preds = %if.end70
  %69 = load i64, ptr %i, align 8, !dbg !4198, !tbaa !1287
  %inc72 = add i64 %69, 1, !dbg !4198
  store i64 %inc72, ptr %i, align 8, !dbg !4198, !tbaa !1287
  br label %for.cond, !dbg !4199, !llvm.loop !4200

for.end73:                                        ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !4202
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4202

cleanup:                                          ; preds = %for.end73, %for.end59, %if.then29
  call void @llvm.lifetime.end.p0(i64 8, ptr %gt_error_str) #10, !dbg !4203
  call void @llvm.lifetime.end.p0(i64 4, ptr %option_set) #10, !dbg !4203
  call void @llvm.lifetime.end.p0(i64 8, ptr %implied_option) #10, !dbg !4203
  call void @llvm.lifetime.end.p0(i64 8, ptr %o) #10, !dbg !4203
  call void @llvm.lifetime.end.p0(i64 8, ptr %implied_option_array) #10, !dbg !4203
  call void @llvm.lifetime.end.p0(i64 8, ptr %l) #10, !dbg !4203
  call void @llvm.lifetime.end.p0(i64 8, ptr %k) #10, !dbg !4203
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #10, !dbg !4203
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #10, !dbg !4203
  %70 = load i32, ptr %retval, align 4, !dbg !4203
  ret i32 %70, !dbg !4203
}

; Function Attrs: nounwind uwtable
define internal i32 @check_option_exclusions(ptr noundef %op, ptr noundef %err) #0 !dbg !4204 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca ptr, align 8
  %err.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %o = alloca ptr, align 8
  %excluded_option = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %op, ptr %op.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !4206, metadata !DIExpression()), !dbg !4212
  store ptr %err, ptr %err.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !4207, metadata !DIExpression()), !dbg !4213
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #10, !dbg !4214
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !4208, metadata !DIExpression()), !dbg !4215
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #10, !dbg !4214
  tail call void @llvm.dbg.declare(metadata ptr %j, metadata !4209, metadata !DIExpression()), !dbg !4216
  call void @llvm.lifetime.start.p0(i64 8, ptr %o) #10, !dbg !4217
  tail call void @llvm.dbg.declare(metadata ptr %o, metadata !4210, metadata !DIExpression()), !dbg !4218
  call void @llvm.lifetime.start.p0(i64 8, ptr %excluded_option) #10, !dbg !4217
  tail call void @llvm.dbg.declare(metadata ptr %excluded_option, metadata !4211, metadata !DIExpression()), !dbg !4219
  br label %do.body, !dbg !4220

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %err.addr, align 8, !dbg !4221, !tbaa !743
  %tobool = icmp ne ptr %0, null, !dbg !4221
  br i1 %tobool, label %lor.lhs.false, label %if.end, !dbg !4221

lor.lhs.false:                                    ; preds = %do.body
  %1 = load ptr, ptr %err.addr, align 8, !dbg !4221, !tbaa !743
  %call = call zeroext i1 @gt_error_is_set(ptr noundef %1), !dbg !4221
  br i1 %call, label %if.then, label %if.end, !dbg !4224

if.then:                                          ; preds = %lor.lhs.false
  %2 = load ptr, ptr @stderr, align 8, !dbg !4225, !tbaa !743
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str, ptr noundef @.str.14, ptr noundef @__func__.check_option_exclusions, ptr noundef @.str.2, i32 noundef 866), !dbg !4225
  call void @abort() #9, !dbg !4225
  unreachable, !dbg !4225

if.end:                                           ; preds = %lor.lhs.false, %do.body
  br label %do.cond, !dbg !4224

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !4224

do.end:                                           ; preds = %do.cond
  store i64 0, ptr %i, align 8, !dbg !4227, !tbaa !1287
  br label %for.cond, !dbg !4229

for.cond:                                         ; preds = %for.inc23, %do.end
  %3 = load i64, ptr %i, align 8, !dbg !4230, !tbaa !1287
  %4 = load ptr, ptr %op.addr, align 8, !dbg !4232, !tbaa !743
  %options = getelementptr inbounds %struct.GtOptionParser, ptr %4, i32 0, i32 3, !dbg !4233
  %5 = load ptr, ptr %options, align 8, !dbg !4233, !tbaa !912
  %call2 = call i64 @gt_array_size(ptr noundef %5), !dbg !4234
  %cmp = icmp ult i64 %3, %call2, !dbg !4235
  br i1 %cmp, label %for.body, label %for.end25, !dbg !4236

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %op.addr, align 8, !dbg !4237, !tbaa !743
  %options3 = getelementptr inbounds %struct.GtOptionParser, ptr %6, i32 0, i32 3, !dbg !4239
  %7 = load ptr, ptr %options3, align 8, !dbg !4239, !tbaa !912
  %8 = load i64, ptr %i, align 8, !dbg !4240, !tbaa !1287
  %call4 = call ptr @gt_array_get(ptr noundef %7, i64 noundef %8), !dbg !4241
  %9 = load ptr, ptr %call4, align 8, !dbg !4242, !tbaa !743
  store ptr %9, ptr %o, align 8, !dbg !4243, !tbaa !743
  %10 = load ptr, ptr %o, align 8, !dbg !4244, !tbaa !743
  %exclusions = getelementptr inbounds %struct.GtOption, ptr %10, i32 0, i32 17, !dbg !4246
  %11 = load ptr, ptr %exclusions, align 8, !dbg !4246, !tbaa !4247
  %tobool5 = icmp ne ptr %11, null, !dbg !4244
  br i1 %tobool5, label %land.lhs.true, label %if.end22, !dbg !4248

land.lhs.true:                                    ; preds = %for.body
  %12 = load ptr, ptr %o, align 8, !dbg !4249, !tbaa !743
  %is_set = getelementptr inbounds %struct.GtOption, ptr %12, i32 0, i32 8, !dbg !4250
  %13 = load i8, ptr %is_set, align 8, !dbg !4250, !tbaa !2227, !range !1270, !noundef !1271
  %tobool6 = trunc i8 %13 to i1, !dbg !4250
  br i1 %tobool6, label %if.then7, label %if.end22, !dbg !4251

if.then7:                                         ; preds = %land.lhs.true
  store i64 0, ptr %j, align 8, !dbg !4252, !tbaa !1287
  br label %for.cond8, !dbg !4255

for.cond8:                                        ; preds = %for.inc, %if.then7
  %14 = load i64, ptr %j, align 8, !dbg !4256, !tbaa !1287
  %15 = load ptr, ptr %o, align 8, !dbg !4258, !tbaa !743
  %exclusions9 = getelementptr inbounds %struct.GtOption, ptr %15, i32 0, i32 17, !dbg !4259
  %16 = load ptr, ptr %exclusions9, align 8, !dbg !4259, !tbaa !4247
  %call10 = call i64 @gt_array_size(ptr noundef %16), !dbg !4260
  %cmp11 = icmp ult i64 %14, %call10, !dbg !4261
  br i1 %cmp11, label %for.body12, label %for.end, !dbg !4262

for.body12:                                       ; preds = %for.cond8
  %17 = load ptr, ptr %o, align 8, !dbg !4263, !tbaa !743
  %exclusions13 = getelementptr inbounds %struct.GtOption, ptr %17, i32 0, i32 17, !dbg !4265
  %18 = load ptr, ptr %exclusions13, align 8, !dbg !4265, !tbaa !4247
  %19 = load i64, ptr %j, align 8, !dbg !4266, !tbaa !1287
  %call14 = call ptr @gt_array_get(ptr noundef %18, i64 noundef %19), !dbg !4267
  %20 = load ptr, ptr %call14, align 8, !dbg !4268, !tbaa !743
  store ptr %20, ptr %excluded_option, align 8, !dbg !4269, !tbaa !743
  %21 = load ptr, ptr %excluded_option, align 8, !dbg !4270, !tbaa !743
  %is_set15 = getelementptr inbounds %struct.GtOption, ptr %21, i32 0, i32 8, !dbg !4272
  %22 = load i8, ptr %is_set15, align 8, !dbg !4272, !tbaa !2227, !range !1270, !noundef !1271
  %tobool16 = trunc i8 %22 to i1, !dbg !4272
  br i1 %tobool16, label %if.then17, label %if.end21, !dbg !4273

if.then17:                                        ; preds = %for.body12
  %23 = load ptr, ptr %err.addr, align 8, !dbg !4274, !tbaa !743
  %24 = load ptr, ptr %o, align 8, !dbg !4276, !tbaa !743
  %option_str = getelementptr inbounds %struct.GtOption, ptr %24, i32 0, i32 1, !dbg !4277
  %25 = load ptr, ptr %option_str, align 8, !dbg !4277, !tbaa !979
  %call18 = call ptr @gt_str_get(ptr noundef %25), !dbg !4278
  %26 = load ptr, ptr %excluded_option, align 8, !dbg !4279, !tbaa !743
  %option_str19 = getelementptr inbounds %struct.GtOption, ptr %26, i32 0, i32 1, !dbg !4280
  %27 = load ptr, ptr %option_str19, align 8, !dbg !4280, !tbaa !979
  %call20 = call ptr @gt_str_get(ptr noundef %27), !dbg !4281
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %23, ptr noundef @.str.142, ptr noundef %call18, ptr noundef %call20), !dbg !4282
  store i32 -1, ptr %retval, align 4, !dbg !4283
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4283

if.end21:                                         ; preds = %for.body12
  br label %for.inc, !dbg !4284

for.inc:                                          ; preds = %if.end21
  %28 = load i64, ptr %j, align 8, !dbg !4285, !tbaa !1287
  %inc = add i64 %28, 1, !dbg !4285
  store i64 %inc, ptr %j, align 8, !dbg !4285, !tbaa !1287
  br label %for.cond8, !dbg !4286, !llvm.loop !4287

for.end:                                          ; preds = %for.cond8
  br label %if.end22, !dbg !4289

if.end22:                                         ; preds = %for.end, %land.lhs.true, %for.body
  br label %for.inc23, !dbg !4290

for.inc23:                                        ; preds = %if.end22
  %29 = load i64, ptr %i, align 8, !dbg !4291, !tbaa !1287
  %inc24 = add i64 %29, 1, !dbg !4291
  store i64 %inc24, ptr %i, align 8, !dbg !4291, !tbaa !1287
  br label %for.cond, !dbg !4292, !llvm.loop !4293

for.end25:                                        ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !4295
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4295

cleanup:                                          ; preds = %for.end25, %if.then17
  call void @llvm.lifetime.end.p0(i64 8, ptr %excluded_option) #10, !dbg !4296
  call void @llvm.lifetime.end.p0(i64 8, ptr %o) #10, !dbg !4296
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #10, !dbg !4296
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #10, !dbg !4296
  %30 = load i32, ptr %retval, align 4, !dbg !4296
  ret i32 %30, !dbg !4296
}

; Function Attrs: nounwind uwtable
define internal i32 @check_mandatory_either_options(ptr noundef %op, ptr noundef %err) #0 !dbg !4297 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca ptr, align 8
  %err.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %o = alloca ptr, align 8
  %meo_a = alloca ptr, align 8
  %meo_b = alloca ptr, align 8
  %meo_c = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %op, ptr %op.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !4299, metadata !DIExpression()), !dbg !4306
  store ptr %err, ptr %err.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !4300, metadata !DIExpression()), !dbg !4307
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #10, !dbg !4308
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !4301, metadata !DIExpression()), !dbg !4309
  call void @llvm.lifetime.start.p0(i64 8, ptr %o) #10, !dbg !4310
  tail call void @llvm.dbg.declare(metadata ptr %o, metadata !4302, metadata !DIExpression()), !dbg !4311
  call void @llvm.lifetime.start.p0(i64 8, ptr %meo_a) #10, !dbg !4310
  tail call void @llvm.dbg.declare(metadata ptr %meo_a, metadata !4303, metadata !DIExpression()), !dbg !4312
  call void @llvm.lifetime.start.p0(i64 8, ptr %meo_b) #10, !dbg !4310
  tail call void @llvm.dbg.declare(metadata ptr %meo_b, metadata !4304, metadata !DIExpression()), !dbg !4313
  call void @llvm.lifetime.start.p0(i64 8, ptr %meo_c) #10, !dbg !4310
  tail call void @llvm.dbg.declare(metadata ptr %meo_c, metadata !4305, metadata !DIExpression()), !dbg !4314
  br label %do.body, !dbg !4315

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %err.addr, align 8, !dbg !4316, !tbaa !743
  %tobool = icmp ne ptr %0, null, !dbg !4316
  br i1 %tobool, label %lor.lhs.false, label %if.end, !dbg !4316

lor.lhs.false:                                    ; preds = %do.body
  %1 = load ptr, ptr %err.addr, align 8, !dbg !4316, !tbaa !743
  %call = call zeroext i1 @gt_error_is_set(ptr noundef %1), !dbg !4316
  br i1 %call, label %if.then, label %if.end, !dbg !4319

if.then:                                          ; preds = %lor.lhs.false
  %2 = load ptr, ptr @stderr, align 8, !dbg !4320, !tbaa !743
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str, ptr noundef @.str.14, ptr noundef @__func__.check_mandatory_either_options, ptr noundef @.str.2, i32 noundef 889), !dbg !4320
  call void @abort() #9, !dbg !4320
  unreachable, !dbg !4320

if.end:                                           ; preds = %lor.lhs.false, %do.body
  br label %do.cond, !dbg !4319

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !4319

do.end:                                           ; preds = %do.cond
  store i64 0, ptr %i, align 8, !dbg !4322, !tbaa !1287
  br label %for.cond, !dbg !4324

for.cond:                                         ; preds = %for.inc, %do.end
  %3 = load i64, ptr %i, align 8, !dbg !4325, !tbaa !1287
  %4 = load ptr, ptr %op.addr, align 8, !dbg !4327, !tbaa !743
  %options = getelementptr inbounds %struct.GtOptionParser, ptr %4, i32 0, i32 3, !dbg !4328
  %5 = load ptr, ptr %options, align 8, !dbg !4328, !tbaa !912
  %call2 = call i64 @gt_array_size(ptr noundef %5), !dbg !4329
  %cmp = icmp ult i64 %3, %call2, !dbg !4330
  br i1 %cmp, label %for.body, label %for.end, !dbg !4331

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %op.addr, align 8, !dbg !4332, !tbaa !743
  %options3 = getelementptr inbounds %struct.GtOptionParser, ptr %6, i32 0, i32 3, !dbg !4334
  %7 = load ptr, ptr %options3, align 8, !dbg !4334, !tbaa !912
  %8 = load i64, ptr %i, align 8, !dbg !4335, !tbaa !1287
  %call4 = call ptr @gt_array_get(ptr noundef %7, i64 noundef %8), !dbg !4336
  %9 = load ptr, ptr %call4, align 8, !dbg !4337, !tbaa !743
  store ptr %9, ptr %o, align 8, !dbg !4338, !tbaa !743
  %10 = load ptr, ptr %o, align 8, !dbg !4339, !tbaa !743
  %mandatory_either_options = getelementptr inbounds %struct.GtOption, ptr %10, i32 0, i32 18, !dbg !4341
  %11 = load ptr, ptr %mandatory_either_options, align 8, !dbg !4341, !tbaa !4342
  %tobool5 = icmp ne ptr %11, null, !dbg !4339
  br i1 %tobool5, label %if.then6, label %if.end80, !dbg !4343

if.then6:                                         ; preds = %for.body
  %12 = load ptr, ptr %o, align 8, !dbg !4344, !tbaa !743
  %mandatory_either_options7 = getelementptr inbounds %struct.GtOption, ptr %12, i32 0, i32 18, !dbg !4347
  %13 = load ptr, ptr %mandatory_either_options7, align 8, !dbg !4347, !tbaa !4342
  %call8 = call i64 @gt_array_size(ptr noundef %13), !dbg !4348
  %cmp9 = icmp eq i64 %call8, 1, !dbg !4349
  br i1 %cmp9, label %if.then10, label %if.else, !dbg !4350

if.then10:                                        ; preds = %if.then6
  %14 = load ptr, ptr %o, align 8, !dbg !4351, !tbaa !743
  %mandatory_either_options11 = getelementptr inbounds %struct.GtOption, ptr %14, i32 0, i32 18, !dbg !4353
  %15 = load ptr, ptr %mandatory_either_options11, align 8, !dbg !4353, !tbaa !4342
  %call12 = call ptr @gt_array_get_first(ptr noundef %15), !dbg !4354
  %16 = load ptr, ptr %call12, align 8, !dbg !4355, !tbaa !743
  store ptr %16, ptr %meo_a, align 8, !dbg !4356, !tbaa !743
  %17 = load ptr, ptr %o, align 8, !dbg !4357, !tbaa !743
  %is_set = getelementptr inbounds %struct.GtOption, ptr %17, i32 0, i32 8, !dbg !4359
  %18 = load i8, ptr %is_set, align 8, !dbg !4359, !tbaa !2227, !range !1270, !noundef !1271
  %tobool13 = trunc i8 %18 to i1, !dbg !4359
  br i1 %tobool13, label %if.end20, label %land.lhs.true, !dbg !4360

land.lhs.true:                                    ; preds = %if.then10
  %19 = load ptr, ptr %meo_a, align 8, !dbg !4361, !tbaa !743
  %is_set14 = getelementptr inbounds %struct.GtOption, ptr %19, i32 0, i32 8, !dbg !4362
  %20 = load i8, ptr %is_set14, align 8, !dbg !4362, !tbaa !2227, !range !1270, !noundef !1271
  %tobool15 = trunc i8 %20 to i1, !dbg !4362
  br i1 %tobool15, label %if.end20, label %if.then16, !dbg !4363

if.then16:                                        ; preds = %land.lhs.true
  %21 = load ptr, ptr %err.addr, align 8, !dbg !4364, !tbaa !743
  %22 = load ptr, ptr %o, align 8, !dbg !4366, !tbaa !743
  %option_str = getelementptr inbounds %struct.GtOption, ptr %22, i32 0, i32 1, !dbg !4367
  %23 = load ptr, ptr %option_str, align 8, !dbg !4367, !tbaa !979
  %call17 = call ptr @gt_str_get(ptr noundef %23), !dbg !4368
  %24 = load ptr, ptr %meo_a, align 8, !dbg !4369, !tbaa !743
  %option_str18 = getelementptr inbounds %struct.GtOption, ptr %24, i32 0, i32 1, !dbg !4370
  %25 = load ptr, ptr %option_str18, align 8, !dbg !4370, !tbaa !979
  %call19 = call ptr @gt_str_get(ptr noundef %25), !dbg !4371
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %21, ptr noundef @.str.143, ptr noundef %call17, ptr noundef %call19), !dbg !4372
  store i32 -1, ptr %retval, align 4, !dbg !4373
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4373

if.end20:                                         ; preds = %land.lhs.true, %if.then10
  br label %if.end79, !dbg !4374

if.else:                                          ; preds = %if.then6
  %26 = load ptr, ptr %o, align 8, !dbg !4375, !tbaa !743
  %mandatory_either_options21 = getelementptr inbounds %struct.GtOption, ptr %26, i32 0, i32 18, !dbg !4377
  %27 = load ptr, ptr %mandatory_either_options21, align 8, !dbg !4377, !tbaa !4342
  %call22 = call i64 @gt_array_size(ptr noundef %27), !dbg !4378
  %cmp23 = icmp eq i64 %call22, 2, !dbg !4379
  br i1 %cmp23, label %if.then24, label %if.else45, !dbg !4380

if.then24:                                        ; preds = %if.else
  %28 = load ptr, ptr %o, align 8, !dbg !4381, !tbaa !743
  %mandatory_either_options25 = getelementptr inbounds %struct.GtOption, ptr %28, i32 0, i32 18, !dbg !4383
  %29 = load ptr, ptr %mandatory_either_options25, align 8, !dbg !4383, !tbaa !4342
  %call26 = call ptr @gt_array_get(ptr noundef %29, i64 noundef 0), !dbg !4384
  %30 = load ptr, ptr %call26, align 8, !dbg !4385, !tbaa !743
  store ptr %30, ptr %meo_a, align 8, !dbg !4386, !tbaa !743
  %31 = load ptr, ptr %o, align 8, !dbg !4387, !tbaa !743
  %mandatory_either_options27 = getelementptr inbounds %struct.GtOption, ptr %31, i32 0, i32 18, !dbg !4388
  %32 = load ptr, ptr %mandatory_either_options27, align 8, !dbg !4388, !tbaa !4342
  %call28 = call ptr @gt_array_get(ptr noundef %32, i64 noundef 1), !dbg !4389
  %33 = load ptr, ptr %call28, align 8, !dbg !4390, !tbaa !743
  store ptr %33, ptr %meo_b, align 8, !dbg !4391, !tbaa !743
  %34 = load ptr, ptr %o, align 8, !dbg !4392, !tbaa !743
  %is_set29 = getelementptr inbounds %struct.GtOption, ptr %34, i32 0, i32 8, !dbg !4394
  %35 = load i8, ptr %is_set29, align 8, !dbg !4394, !tbaa !2227, !range !1270, !noundef !1271
  %tobool30 = trunc i8 %35 to i1, !dbg !4394
  br i1 %tobool30, label %if.end44, label %land.lhs.true31, !dbg !4395

land.lhs.true31:                                  ; preds = %if.then24
  %36 = load ptr, ptr %meo_a, align 8, !dbg !4396, !tbaa !743
  %is_set32 = getelementptr inbounds %struct.GtOption, ptr %36, i32 0, i32 8, !dbg !4397
  %37 = load i8, ptr %is_set32, align 8, !dbg !4397, !tbaa !2227, !range !1270, !noundef !1271
  %tobool33 = trunc i8 %37 to i1, !dbg !4397
  br i1 %tobool33, label %if.end44, label %land.lhs.true34, !dbg !4398

land.lhs.true34:                                  ; preds = %land.lhs.true31
  %38 = load ptr, ptr %meo_b, align 8, !dbg !4399, !tbaa !743
  %is_set35 = getelementptr inbounds %struct.GtOption, ptr %38, i32 0, i32 8, !dbg !4400
  %39 = load i8, ptr %is_set35, align 8, !dbg !4400, !tbaa !2227, !range !1270, !noundef !1271
  %tobool36 = trunc i8 %39 to i1, !dbg !4400
  br i1 %tobool36, label %if.end44, label %if.then37, !dbg !4401

if.then37:                                        ; preds = %land.lhs.true34
  %40 = load ptr, ptr %err.addr, align 8, !dbg !4402, !tbaa !743
  %41 = load ptr, ptr %o, align 8, !dbg !4404, !tbaa !743
  %option_str38 = getelementptr inbounds %struct.GtOption, ptr %41, i32 0, i32 1, !dbg !4405
  %42 = load ptr, ptr %option_str38, align 8, !dbg !4405, !tbaa !979
  %call39 = call ptr @gt_str_get(ptr noundef %42), !dbg !4406
  %43 = load ptr, ptr %meo_a, align 8, !dbg !4407, !tbaa !743
  %option_str40 = getelementptr inbounds %struct.GtOption, ptr %43, i32 0, i32 1, !dbg !4408
  %44 = load ptr, ptr %option_str40, align 8, !dbg !4408, !tbaa !979
  %call41 = call ptr @gt_str_get(ptr noundef %44), !dbg !4409
  %45 = load ptr, ptr %meo_b, align 8, !dbg !4410, !tbaa !743
  %option_str42 = getelementptr inbounds %struct.GtOption, ptr %45, i32 0, i32 1, !dbg !4411
  %46 = load ptr, ptr %option_str42, align 8, !dbg !4411, !tbaa !979
  %call43 = call ptr @gt_str_get(ptr noundef %46), !dbg !4412
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %40, ptr noundef @.str.144, ptr noundef %call39, ptr noundef %call41, ptr noundef %call43), !dbg !4413
  store i32 -1, ptr %retval, align 4, !dbg !4414
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4414

if.end44:                                         ; preds = %land.lhs.true34, %land.lhs.true31, %if.then24
  br label %if.end78, !dbg !4415

if.else45:                                        ; preds = %if.else
  %47 = load ptr, ptr %o, align 8, !dbg !4416, !tbaa !743
  %mandatory_either_options46 = getelementptr inbounds %struct.GtOption, ptr %47, i32 0, i32 18, !dbg !4419
  %48 = load ptr, ptr %mandatory_either_options46, align 8, !dbg !4419, !tbaa !4342
  %call47 = call i64 @gt_array_size(ptr noundef %48), !dbg !4420
  %cmp48 = icmp eq i64 %call47, 3, !dbg !4421
  br i1 %cmp48, label %if.then49, label %if.end77, !dbg !4422

if.then49:                                        ; preds = %if.else45
  %49 = load ptr, ptr %o, align 8, !dbg !4423, !tbaa !743
  %mandatory_either_options50 = getelementptr inbounds %struct.GtOption, ptr %49, i32 0, i32 18, !dbg !4425
  %50 = load ptr, ptr %mandatory_either_options50, align 8, !dbg !4425, !tbaa !4342
  %call51 = call ptr @gt_array_get(ptr noundef %50, i64 noundef 0), !dbg !4426
  %51 = load ptr, ptr %call51, align 8, !dbg !4427, !tbaa !743
  store ptr %51, ptr %meo_a, align 8, !dbg !4428, !tbaa !743
  %52 = load ptr, ptr %o, align 8, !dbg !4429, !tbaa !743
  %mandatory_either_options52 = getelementptr inbounds %struct.GtOption, ptr %52, i32 0, i32 18, !dbg !4430
  %53 = load ptr, ptr %mandatory_either_options52, align 8, !dbg !4430, !tbaa !4342
  %call53 = call ptr @gt_array_get(ptr noundef %53, i64 noundef 1), !dbg !4431
  %54 = load ptr, ptr %call53, align 8, !dbg !4432, !tbaa !743
  store ptr %54, ptr %meo_b, align 8, !dbg !4433, !tbaa !743
  %55 = load ptr, ptr %o, align 8, !dbg !4434, !tbaa !743
  %mandatory_either_options54 = getelementptr inbounds %struct.GtOption, ptr %55, i32 0, i32 18, !dbg !4435
  %56 = load ptr, ptr %mandatory_either_options54, align 8, !dbg !4435, !tbaa !4342
  %call55 = call ptr @gt_array_get(ptr noundef %56, i64 noundef 2), !dbg !4436
  %57 = load ptr, ptr %call55, align 8, !dbg !4437, !tbaa !743
  store ptr %57, ptr %meo_c, align 8, !dbg !4438, !tbaa !743
  %58 = load ptr, ptr %o, align 8, !dbg !4439, !tbaa !743
  %is_set56 = getelementptr inbounds %struct.GtOption, ptr %58, i32 0, i32 8, !dbg !4441
  %59 = load i8, ptr %is_set56, align 8, !dbg !4441, !tbaa !2227, !range !1270, !noundef !1271
  %tobool57 = trunc i8 %59 to i1, !dbg !4441
  br i1 %tobool57, label %if.end76, label %land.lhs.true58, !dbg !4442

land.lhs.true58:                                  ; preds = %if.then49
  %60 = load ptr, ptr %meo_a, align 8, !dbg !4443, !tbaa !743
  %is_set59 = getelementptr inbounds %struct.GtOption, ptr %60, i32 0, i32 8, !dbg !4444
  %61 = load i8, ptr %is_set59, align 8, !dbg !4444, !tbaa !2227, !range !1270, !noundef !1271
  %tobool60 = trunc i8 %61 to i1, !dbg !4444
  br i1 %tobool60, label %if.end76, label %land.lhs.true61, !dbg !4445

land.lhs.true61:                                  ; preds = %land.lhs.true58
  %62 = load ptr, ptr %meo_b, align 8, !dbg !4446, !tbaa !743
  %is_set62 = getelementptr inbounds %struct.GtOption, ptr %62, i32 0, i32 8, !dbg !4447
  %63 = load i8, ptr %is_set62, align 8, !dbg !4447, !tbaa !2227, !range !1270, !noundef !1271
  %tobool63 = trunc i8 %63 to i1, !dbg !4447
  br i1 %tobool63, label %if.end76, label %land.lhs.true64, !dbg !4448

land.lhs.true64:                                  ; preds = %land.lhs.true61
  %64 = load ptr, ptr %meo_c, align 8, !dbg !4449, !tbaa !743
  %is_set65 = getelementptr inbounds %struct.GtOption, ptr %64, i32 0, i32 8, !dbg !4450
  %65 = load i8, ptr %is_set65, align 8, !dbg !4450, !tbaa !2227, !range !1270, !noundef !1271
  %tobool66 = trunc i8 %65 to i1, !dbg !4450
  br i1 %tobool66, label %if.end76, label %if.then67, !dbg !4451

if.then67:                                        ; preds = %land.lhs.true64
  %66 = load ptr, ptr %err.addr, align 8, !dbg !4452, !tbaa !743
  %67 = load ptr, ptr %o, align 8, !dbg !4454, !tbaa !743
  %option_str68 = getelementptr inbounds %struct.GtOption, ptr %67, i32 0, i32 1, !dbg !4455
  %68 = load ptr, ptr %option_str68, align 8, !dbg !4455, !tbaa !979
  %call69 = call ptr @gt_str_get(ptr noundef %68), !dbg !4456
  %69 = load ptr, ptr %meo_a, align 8, !dbg !4457, !tbaa !743
  %option_str70 = getelementptr inbounds %struct.GtOption, ptr %69, i32 0, i32 1, !dbg !4458
  %70 = load ptr, ptr %option_str70, align 8, !dbg !4458, !tbaa !979
  %call71 = call ptr @gt_str_get(ptr noundef %70), !dbg !4459
  %71 = load ptr, ptr %meo_b, align 8, !dbg !4460, !tbaa !743
  %option_str72 = getelementptr inbounds %struct.GtOption, ptr %71, i32 0, i32 1, !dbg !4461
  %72 = load ptr, ptr %option_str72, align 8, !dbg !4461, !tbaa !979
  %call73 = call ptr @gt_str_get(ptr noundef %72), !dbg !4462
  %73 = load ptr, ptr %meo_c, align 8, !dbg !4463, !tbaa !743
  %option_str74 = getelementptr inbounds %struct.GtOption, ptr %73, i32 0, i32 1, !dbg !4464
  %74 = load ptr, ptr %option_str74, align 8, !dbg !4464, !tbaa !979
  %call75 = call ptr @gt_str_get(ptr noundef %74), !dbg !4465
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %66, ptr noundef @.str.145, ptr noundef %call69, ptr noundef %call71, ptr noundef %call73, ptr noundef %call75), !dbg !4466
  store i32 -1, ptr %retval, align 4, !dbg !4467
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4467

if.end76:                                         ; preds = %land.lhs.true64, %land.lhs.true61, %land.lhs.true58, %if.then49
  br label %if.end77, !dbg !4468

if.end77:                                         ; preds = %if.end76, %if.else45
  br label %if.end78

if.end78:                                         ; preds = %if.end77, %if.end44
  br label %if.end79

if.end79:                                         ; preds = %if.end78, %if.end20
  br label %if.end80, !dbg !4469

if.end80:                                         ; preds = %if.end79, %for.body
  br label %for.inc, !dbg !4470

for.inc:                                          ; preds = %if.end80
  %75 = load i64, ptr %i, align 8, !dbg !4471, !tbaa !1287
  %inc = add i64 %75, 1, !dbg !4471
  store i64 %inc, ptr %i, align 8, !dbg !4471, !tbaa !1287
  br label %for.cond, !dbg !4472, !llvm.loop !4473

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !4475
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4475

cleanup:                                          ; preds = %for.end, %if.then67, %if.then37, %if.then16
  call void @llvm.lifetime.end.p0(i64 8, ptr %meo_c) #10, !dbg !4476
  call void @llvm.lifetime.end.p0(i64 8, ptr %meo_b) #10, !dbg !4476
  call void @llvm.lifetime.end.p0(i64 8, ptr %meo_a) #10, !dbg !4476
  call void @llvm.lifetime.end.p0(i64 8, ptr %o) #10, !dbg !4476
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #10, !dbg !4476
  %76 = load i32, ptr %retval, align 4, !dbg !4476
  ret i32 %76, !dbg !4476
}

; Function Attrs: nounwind uwtable
define void @gt_option_parser_delete(ptr noundef %op) #0 !dbg !4477 {
entry:
  %op.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %op, ptr %op.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !4479, metadata !DIExpression()), !dbg !4481
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #10, !dbg !4482
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !4480, metadata !DIExpression()), !dbg !4483
  %0 = load ptr, ptr %op.addr, align 8, !dbg !4484, !tbaa !743
  %tobool = icmp ne ptr %0, null, !dbg !4484
  br i1 %tobool, label %if.end, label %if.then, !dbg !4486

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4487

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %op.addr, align 8, !dbg !4488, !tbaa !743
  %progname = getelementptr inbounds %struct.GtOptionParser, ptr %1, i32 0, i32 0, !dbg !4488
  %2 = load ptr, ptr %progname, align 8, !dbg !4488, !tbaa !2137
  call void @gt_free_mem(ptr noundef %2, ptr noundef @.str.2, i32 noundef 1481), !dbg !4488
  %3 = load ptr, ptr %op.addr, align 8, !dbg !4489, !tbaa !743
  %synopsis = getelementptr inbounds %struct.GtOptionParser, ptr %3, i32 0, i32 1, !dbg !4489
  %4 = load ptr, ptr %synopsis, align 8, !dbg !4489, !tbaa !900
  call void @gt_free_mem(ptr noundef %4, ptr noundef @.str.2, i32 noundef 1482), !dbg !4489
  %5 = load ptr, ptr %op.addr, align 8, !dbg !4490, !tbaa !743
  %one_liner = getelementptr inbounds %struct.GtOptionParser, ptr %5, i32 0, i32 2, !dbg !4490
  %6 = load ptr, ptr %one_liner, align 8, !dbg !4490, !tbaa !907
  call void @gt_free_mem(ptr noundef %6, ptr noundef @.str.2, i32 noundef 1483), !dbg !4490
  store i64 0, ptr %i, align 8, !dbg !4491, !tbaa !1287
  br label %for.cond, !dbg !4493

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load i64, ptr %i, align 8, !dbg !4494, !tbaa !1287
  %8 = load ptr, ptr %op.addr, align 8, !dbg !4496, !tbaa !743
  %options = getelementptr inbounds %struct.GtOptionParser, ptr %8, i32 0, i32 3, !dbg !4497
  %9 = load ptr, ptr %options, align 8, !dbg !4497, !tbaa !912
  %call = call i64 @gt_array_size(ptr noundef %9), !dbg !4498
  %cmp = icmp ult i64 %7, %call, !dbg !4499
  br i1 %cmp, label %for.body, label %for.end, !dbg !4500

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %op.addr, align 8, !dbg !4501, !tbaa !743
  %options1 = getelementptr inbounds %struct.GtOptionParser, ptr %10, i32 0, i32 3, !dbg !4502
  %11 = load ptr, ptr %options1, align 8, !dbg !4502, !tbaa !912
  %12 = load i64, ptr %i, align 8, !dbg !4503, !tbaa !1287
  %call2 = call ptr @gt_array_get(ptr noundef %11, i64 noundef %12), !dbg !4504
  %13 = load ptr, ptr %call2, align 8, !dbg !4505, !tbaa !743
  call void @gt_option_delete(ptr noundef %13), !dbg !4506
  br label %for.inc, !dbg !4506

for.inc:                                          ; preds = %for.body
  %14 = load i64, ptr %i, align 8, !dbg !4507, !tbaa !1287
  %inc = add i64 %14, 1, !dbg !4507
  store i64 %inc, ptr %i, align 8, !dbg !4507, !tbaa !1287
  br label %for.cond, !dbg !4508, !llvm.loop !4509

for.end:                                          ; preds = %for.cond
  %15 = load ptr, ptr %op.addr, align 8, !dbg !4511, !tbaa !743
  %options3 = getelementptr inbounds %struct.GtOptionParser, ptr %15, i32 0, i32 3, !dbg !4512
  %16 = load ptr, ptr %options3, align 8, !dbg !4512, !tbaa !912
  call void @gt_array_delete(ptr noundef %16), !dbg !4513
  %17 = load ptr, ptr %op.addr, align 8, !dbg !4514, !tbaa !743
  %hooks = getelementptr inbounds %struct.GtOptionParser, ptr %17, i32 0, i32 4, !dbg !4515
  %18 = load ptr, ptr %hooks, align 8, !dbg !4515, !tbaa !1119
  call void @gt_array_delete(ptr noundef %18), !dbg !4516
  %19 = load ptr, ptr %op.addr, align 8, !dbg !4517, !tbaa !743
  %optionindex = getelementptr inbounds %struct.GtOptionParser, ptr %19, i32 0, i32 13, !dbg !4518
  %20 = load ptr, ptr %optionindex, align 8, !dbg !4518, !tbaa !925
  call void @gt_hashmap_delete(ptr noundef %20), !dbg !4519
  %21 = load ptr, ptr %op.addr, align 8, !dbg !4520, !tbaa !743
  call void @gt_free_mem(ptr noundef %21, ptr noundef @.str.2, i32 noundef 1489), !dbg !4520
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4521
  br label %cleanup, !dbg !4521

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #10, !dbg !4521
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !4521

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define void @gt_option_delete(ptr noundef %o) #0 !dbg !4522 {
entry:
  %o.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %o, ptr %o.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %o.addr, metadata !4526, metadata !DIExpression()), !dbg !4528
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #10, !dbg !4529
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !4527, metadata !DIExpression()), !dbg !4530
  %0 = load ptr, ptr %o.addr, align 8, !dbg !4531, !tbaa !743
  %tobool = icmp ne ptr %0, null, !dbg !4531
  br i1 %tobool, label %if.end, label %if.then, !dbg !4533

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4534

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %o.addr, align 8, !dbg !4535, !tbaa !743
  %reference_count = getelementptr inbounds %struct.GtOption, ptr %1, i32 0, i32 19, !dbg !4537
  %2 = load i32, ptr %reference_count, align 8, !dbg !4537, !tbaa !758
  %tobool1 = icmp ne i32 %2, 0, !dbg !4535
  br i1 %tobool1, label %if.then2, label %if.end4, !dbg !4538

if.then2:                                         ; preds = %if.end
  %3 = load ptr, ptr %o.addr, align 8, !dbg !4539, !tbaa !743
  %reference_count3 = getelementptr inbounds %struct.GtOption, ptr %3, i32 0, i32 19, !dbg !4541
  %4 = load i32, ptr %reference_count3, align 8, !dbg !4542, !tbaa !758
  %dec = add i32 %4, -1, !dbg !4542
  store i32 %dec, ptr %reference_count3, align 8, !dbg !4542, !tbaa !758
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4543

if.end4:                                          ; preds = %if.end
  %5 = load ptr, ptr %o.addr, align 8, !dbg !4544, !tbaa !743
  %option_str = getelementptr inbounds %struct.GtOption, ptr %5, i32 0, i32 1, !dbg !4545
  %6 = load ptr, ptr %option_str, align 8, !dbg !4545, !tbaa !979
  call void @gt_str_delete(ptr noundef %6), !dbg !4546
  %7 = load ptr, ptr %o.addr, align 8, !dbg !4547, !tbaa !743
  %description = getelementptr inbounds %struct.GtOption, ptr %7, i32 0, i32 2, !dbg !4548
  %8 = load ptr, ptr %description, align 8, !dbg !4548, !tbaa !1617
  call void @gt_str_delete(ptr noundef %8), !dbg !4549
  store i64 0, ptr %i, align 8, !dbg !4550, !tbaa !1287
  br label %for.cond, !dbg !4552

for.cond:                                         ; preds = %for.inc, %if.end4
  %9 = load i64, ptr %i, align 8, !dbg !4553, !tbaa !1287
  %10 = load ptr, ptr %o.addr, align 8, !dbg !4555, !tbaa !743
  %implications = getelementptr inbounds %struct.GtOption, ptr %10, i32 0, i32 16, !dbg !4556
  %11 = load ptr, ptr %implications, align 8, !dbg !4556, !tbaa !4041
  %call = call i64 @gt_array_size(ptr noundef %11), !dbg !4557
  %cmp = icmp ult i64 %9, %call, !dbg !4558
  br i1 %cmp, label %for.body, label %for.end, !dbg !4559

for.body:                                         ; preds = %for.cond
  %12 = load ptr, ptr %o.addr, align 8, !dbg !4560, !tbaa !743
  %implications5 = getelementptr inbounds %struct.GtOption, ptr %12, i32 0, i32 16, !dbg !4561
  %13 = load ptr, ptr %implications5, align 8, !dbg !4561, !tbaa !4041
  %14 = load i64, ptr %i, align 8, !dbg !4562, !tbaa !1287
  %call6 = call ptr @gt_array_get(ptr noundef %13, i64 noundef %14), !dbg !4563
  %15 = load ptr, ptr %call6, align 8, !dbg !4564, !tbaa !743
  call void @gt_array_delete(ptr noundef %15), !dbg !4565
  br label %for.inc, !dbg !4565

for.inc:                                          ; preds = %for.body
  %16 = load i64, ptr %i, align 8, !dbg !4566, !tbaa !1287
  %inc = add i64 %16, 1, !dbg !4566
  store i64 %inc, ptr %i, align 8, !dbg !4566, !tbaa !1287
  br label %for.cond, !dbg !4567, !llvm.loop !4568

for.end:                                          ; preds = %for.cond
  %17 = load ptr, ptr %o.addr, align 8, !dbg !4570, !tbaa !743
  %implications7 = getelementptr inbounds %struct.GtOption, ptr %17, i32 0, i32 16, !dbg !4571
  %18 = load ptr, ptr %implications7, align 8, !dbg !4571, !tbaa !4041
  call void @gt_array_delete(ptr noundef %18), !dbg !4572
  %19 = load ptr, ptr %o.addr, align 8, !dbg !4573, !tbaa !743
  %exclusions = getelementptr inbounds %struct.GtOption, ptr %19, i32 0, i32 17, !dbg !4574
  %20 = load ptr, ptr %exclusions, align 8, !dbg !4574, !tbaa !4247
  call void @gt_array_delete(ptr noundef %20), !dbg !4575
  %21 = load ptr, ptr %o.addr, align 8, !dbg !4576, !tbaa !743
  %mandatory_either_options = getelementptr inbounds %struct.GtOption, ptr %21, i32 0, i32 18, !dbg !4577
  %22 = load ptr, ptr %mandatory_either_options, align 8, !dbg !4577, !tbaa !4342
  call void @gt_array_delete(ptr noundef %22), !dbg !4578
  %23 = load ptr, ptr %o.addr, align 8, !dbg !4579, !tbaa !743
  call void @gt_free_mem(ptr noundef %23, ptr noundef @.str.2, i32 noundef 1985), !dbg !4579
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4580
  br label %cleanup, !dbg !4580

cleanup:                                          ; preds = %for.end, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #10, !dbg !4580
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !4580

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare !dbg !4581 void @gt_array_delete(ptr noundef) #1

declare !dbg !4584 void @gt_hashmap_delete(ptr noundef) #1

; Function Attrs: nounwind uwtable
define ptr @gt_option_new_debug(ptr noundef %value) #0 !dbg !4587 {
entry:
  %value.addr = alloca ptr, align 8
  %o = alloca ptr, align 8
  store ptr %value, ptr %value.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !4591, metadata !DIExpression()), !dbg !4593
  call void @llvm.lifetime.start.p0(i64 8, ptr %o) #10, !dbg !4594
  tail call void @llvm.dbg.declare(metadata ptr %o, metadata !4592, metadata !DIExpression()), !dbg !4595
  %0 = load ptr, ptr %value.addr, align 8, !dbg !4596, !tbaa !743
  %call = call ptr @gt_option_new_bool(ptr noundef @.str.85, ptr noundef @.str.86, ptr noundef %0, i1 noundef zeroext false), !dbg !4597
  store ptr %call, ptr %o, align 8, !dbg !4595, !tbaa !743
  %1 = load ptr, ptr %o, align 8, !dbg !4598, !tbaa !743
  %is_development_option = getelementptr inbounds %struct.GtOption, ptr %1, i32 0, i32 14, !dbg !4599
  store i8 1, ptr %is_development_option, align 2, !dbg !4600, !tbaa !1376
  %2 = load ptr, ptr %o, align 8, !dbg !4601, !tbaa !743
  call void @llvm.lifetime.end.p0(i64 8, ptr %o) #10, !dbg !4602
  ret ptr %2, !dbg !4603
}

; Function Attrs: nounwind uwtable
define ptr @gt_option_new_bool(ptr noundef %option_str, ptr noundef %description, ptr noundef %value, i1 noundef zeroext %default_value) #0 !dbg !4604 {
entry:
  %option_str.addr = alloca ptr, align 8
  %description.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  %default_value.addr = alloca i8, align 1
  %o = alloca ptr, align 8
  store ptr %option_str, ptr %option_str.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %option_str.addr, metadata !4608, metadata !DIExpression()), !dbg !4613
  store ptr %description, ptr %description.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %description.addr, metadata !4609, metadata !DIExpression()), !dbg !4614
  store ptr %value, ptr %value.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !4610, metadata !DIExpression()), !dbg !4615
  %frombool = zext i1 %default_value to i8
  store i8 %frombool, ptr %default_value.addr, align 1, !tbaa !1796
  tail call void @llvm.dbg.declare(metadata ptr %default_value.addr, metadata !4611, metadata !DIExpression()), !dbg !4616
  call void @llvm.lifetime.start.p0(i64 8, ptr %o) #10, !dbg !4617
  tail call void @llvm.dbg.declare(metadata ptr %o, metadata !4612, metadata !DIExpression()), !dbg !4618
  %0 = load ptr, ptr %option_str.addr, align 8, !dbg !4619, !tbaa !743
  %1 = load ptr, ptr %description.addr, align 8, !dbg !4620, !tbaa !743
  %2 = load ptr, ptr %value.addr, align 8, !dbg !4621, !tbaa !743
  %call = call ptr @gt_option_new(ptr noundef %0, ptr noundef %1, ptr noundef %2), !dbg !4622
  store ptr %call, ptr %o, align 8, !dbg !4618, !tbaa !743
  %3 = load ptr, ptr %o, align 8, !dbg !4623, !tbaa !743
  %option_type = getelementptr inbounds %struct.GtOption, ptr %3, i32 0, i32 0, !dbg !4624
  store i32 0, ptr %option_type, align 8, !dbg !4625, !tbaa !1391
  %4 = load i8, ptr %default_value.addr, align 1, !dbg !4626, !tbaa !1796, !range !1270, !noundef !1271
  %tobool = trunc i8 %4 to i1, !dbg !4626
  %5 = load ptr, ptr %o, align 8, !dbg !4627, !tbaa !743
  %default_value1 = getelementptr inbounds %struct.GtOption, ptr %5, i32 0, i32 4, !dbg !4628
  %frombool2 = zext i1 %tobool to i8, !dbg !4629
  store i8 %frombool2, ptr %default_value1, align 8, !dbg !4629, !tbaa !880
  %6 = load i8, ptr %default_value.addr, align 1, !dbg !4630, !tbaa !1796, !range !1270, !noundef !1271
  %tobool3 = trunc i8 %6 to i1, !dbg !4630
  %7 = load ptr, ptr %value.addr, align 8, !dbg !4631, !tbaa !743
  %frombool4 = zext i1 %tobool3 to i8, !dbg !4632
  store i8 %frombool4, ptr %7, align 1, !dbg !4632, !tbaa !1796
  %8 = load ptr, ptr %o, align 8, !dbg !4633, !tbaa !743
  call void @llvm.lifetime.end.p0(i64 8, ptr %o) #10, !dbg !4634
  ret ptr %8, !dbg !4635
}

; Function Attrs: nounwind uwtable
define ptr @gt_option_new_verbose(ptr noundef %value) #0 !dbg !4636 {
entry:
  %value.addr = alloca ptr, align 8
  store ptr %value, ptr %value.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !4638, metadata !DIExpression()), !dbg !4639
  %0 = load ptr, ptr %value.addr, align 8, !dbg !4640, !tbaa !743
  %call = call ptr @gt_option_new_bool(ptr noundef @.str.87, ptr noundef @.str.88, ptr noundef %0, i1 noundef zeroext false), !dbg !4641
  ret ptr %call, !dbg !4642
}

; Function Attrs: nounwind uwtable
define ptr @gt_option_new_width(ptr noundef %value) #0 !dbg !4643 {
entry:
  %value.addr = alloca ptr, align 8
  store ptr %value, ptr %value.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !4647, metadata !DIExpression()), !dbg !4648
  %0 = load ptr, ptr %value.addr, align 8, !dbg !4649, !tbaa !743
  %call = call ptr @gt_option_new_uword(ptr noundef @.str.89, ptr noundef @.str.90, ptr noundef %0, i64 noundef 0), !dbg !4650
  ret ptr %call, !dbg !4651
}

; Function Attrs: nounwind uwtable
define ptr @gt_option_new_uword(ptr noundef %option_str, ptr noundef %description, ptr noundef %value, i64 noundef %default_value) #0 !dbg !4652 {
entry:
  %option_str.addr = alloca ptr, align 8
  %description.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  %default_value.addr = alloca i64, align 8
  %o = alloca ptr, align 8
  store ptr %option_str, ptr %option_str.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %option_str.addr, metadata !4656, metadata !DIExpression()), !dbg !4661
  store ptr %description, ptr %description.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %description.addr, metadata !4657, metadata !DIExpression()), !dbg !4662
  store ptr %value, ptr %value.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !4658, metadata !DIExpression()), !dbg !4663
  store i64 %default_value, ptr %default_value.addr, align 8, !tbaa !1287
  tail call void @llvm.dbg.declare(metadata ptr %default_value.addr, metadata !4659, metadata !DIExpression()), !dbg !4664
  call void @llvm.lifetime.start.p0(i64 8, ptr %o) #10, !dbg !4665
  tail call void @llvm.dbg.declare(metadata ptr %o, metadata !4660, metadata !DIExpression()), !dbg !4666
  %0 = load ptr, ptr %option_str.addr, align 8, !dbg !4667, !tbaa !743
  %1 = load ptr, ptr %description.addr, align 8, !dbg !4668, !tbaa !743
  %2 = load ptr, ptr %value.addr, align 8, !dbg !4669, !tbaa !743
  %call = call ptr @gt_option_new(ptr noundef %0, ptr noundef %1, ptr noundef %2), !dbg !4670
  store ptr %call, ptr %o, align 8, !dbg !4666, !tbaa !743
  %3 = load ptr, ptr %o, align 8, !dbg !4671, !tbaa !743
  %option_type = getelementptr inbounds %struct.GtOption, ptr %3, i32 0, i32 0, !dbg !4672
  store i32 10, ptr %option_type, align 8, !dbg !4673, !tbaa !1391
  %4 = load i64, ptr %default_value.addr, align 8, !dbg !4674, !tbaa !1287
  %5 = load ptr, ptr %o, align 8, !dbg !4675, !tbaa !743
  %default_value1 = getelementptr inbounds %struct.GtOption, ptr %5, i32 0, i32 4, !dbg !4676
  store i64 %4, ptr %default_value1, align 8, !dbg !4677, !tbaa !880
  %6 = load i64, ptr %default_value.addr, align 8, !dbg !4678, !tbaa !1287
  %7 = load ptr, ptr %value.addr, align 8, !dbg !4679, !tbaa !743
  store i64 %6, ptr %7, align 8, !dbg !4680, !tbaa !1287
  %8 = load ptr, ptr %o, align 8, !dbg !4681, !tbaa !743
  call void @llvm.lifetime.end.p0(i64 8, ptr %o) #10, !dbg !4682
  ret ptr %8, !dbg !4683
}

; Function Attrs: nounwind uwtable
define internal ptr @gt_option_new(ptr noundef %option_str, ptr noundef %description, ptr noundef %value) #0 !dbg !4684 {
entry:
  %option_str.addr = alloca ptr, align 8
  %description.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  %o = alloca ptr, align 8
  store ptr %option_str, ptr %option_str.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %option_str.addr, metadata !4688, metadata !DIExpression()), !dbg !4692
  store ptr %description, ptr %description.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %description.addr, metadata !4689, metadata !DIExpression()), !dbg !4693
  store ptr %value, ptr %value.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !4690, metadata !DIExpression()), !dbg !4694
  call void @llvm.lifetime.start.p0(i64 8, ptr %o) #10, !dbg !4695
  tail call void @llvm.dbg.declare(metadata ptr %o, metadata !4691, metadata !DIExpression()), !dbg !4696
  %call = call ptr @gt_calloc_mem(i64 noundef 1, i64 noundef 112, ptr noundef @.str.2, i32 noundef 125), !dbg !4697
  store ptr %call, ptr %o, align 8, !dbg !4696, !tbaa !743
  br label %do.body, !dbg !4698

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %option_str.addr, align 8, !dbg !4699, !tbaa !743
  %tobool = icmp ne ptr %0, null, !dbg !4699
  br i1 %tobool, label %land.lhs.true, label %if.then, !dbg !4699

land.lhs.true:                                    ; preds = %do.body
  %1 = load ptr, ptr %option_str.addr, align 8, !dbg !4699, !tbaa !743
  %call1 = call i64 @strlen(ptr noundef %1) #11, !dbg !4699
  %tobool2 = icmp ne i64 %call1, 0, !dbg !4699
  br i1 %tobool2, label %if.end, label %if.then, !dbg !4702

if.then:                                          ; preds = %land.lhs.true, %do.body
  %2 = load ptr, ptr @stderr, align 8, !dbg !4703, !tbaa !743
  %call3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str, ptr noundef @.str.146, ptr noundef @__func__.gt_option_new, ptr noundef @.str.2, i32 noundef 126), !dbg !4703
  call void @abort() #9, !dbg !4703
  unreachable, !dbg !4703

if.end:                                           ; preds = %land.lhs.true
  br label %do.cond, !dbg !4702

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !4702

do.end:                                           ; preds = %do.cond
  br label %do.body4, !dbg !4705

do.body4:                                         ; preds = %do.end
  br i1 true, label %land.lhs.true5, label %if.then7, !dbg !4706

land.lhs.true5:                                   ; preds = %do.body4
  %3 = load ptr, ptr %option_str.addr, align 8, !dbg !4706, !tbaa !743
  %arrayidx = getelementptr inbounds i8, ptr %3, i64 0, !dbg !4706
  %4 = load i8, ptr %arrayidx, align 1, !dbg !4706, !tbaa !880
  %conv = sext i8 %4 to i32, !dbg !4706
  %cmp = icmp ne i32 %conv, 45, !dbg !4706
  br i1 %cmp, label %if.end9, label %if.then7, !dbg !4709

if.then7:                                         ; preds = %land.lhs.true5, %do.body4
  %5 = load ptr, ptr @stderr, align 8, !dbg !4710, !tbaa !743
  %call8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str, ptr noundef @.str.148, ptr noundef @__func__.gt_option_new, ptr noundef @.str.2, i32 noundef 128), !dbg !4710
  call void @abort() #9, !dbg !4710
  unreachable, !dbg !4710

if.end9:                                          ; preds = %land.lhs.true5
  br label %do.cond10, !dbg !4709

do.cond10:                                        ; preds = %if.end9
  br label %do.end11, !dbg !4709

do.end11:                                         ; preds = %do.cond10
  %6 = load ptr, ptr %option_str.addr, align 8, !dbg !4712, !tbaa !743
  %call12 = call ptr @gt_str_new_cstr(ptr noundef %6), !dbg !4713
  %7 = load ptr, ptr %o, align 8, !dbg !4714, !tbaa !743
  %option_str13 = getelementptr inbounds %struct.GtOption, ptr %7, i32 0, i32 1, !dbg !4715
  store ptr %call12, ptr %option_str13, align 8, !dbg !4716, !tbaa !979
  %8 = load ptr, ptr %description.addr, align 8, !dbg !4717, !tbaa !743
  %call14 = call ptr @gt_str_new_cstr(ptr noundef %8), !dbg !4718
  %9 = load ptr, ptr %o, align 8, !dbg !4719, !tbaa !743
  %description15 = getelementptr inbounds %struct.GtOption, ptr %9, i32 0, i32 2, !dbg !4720
  store ptr %call14, ptr %description15, align 8, !dbg !4721, !tbaa !1617
  %10 = load ptr, ptr %value.addr, align 8, !dbg !4722, !tbaa !743
  %11 = load ptr, ptr %o, align 8, !dbg !4723, !tbaa !743
  %value16 = getelementptr inbounds %struct.GtOption, ptr %11, i32 0, i32 3, !dbg !4724
  store ptr %10, ptr %value16, align 8, !dbg !4725, !tbaa !2274
  %12 = load ptr, ptr %o, align 8, !dbg !4726, !tbaa !743
  call void @llvm.lifetime.end.p0(i64 8, ptr %o) #10, !dbg !4727
  ret ptr %12, !dbg !4728
}

; Function Attrs: nounwind uwtable
define ptr @gt_option_new_double(ptr noundef %option_str, ptr noundef %description, ptr noundef %value, double noundef %default_value) #0 !dbg !4729 {
entry:
  %option_str.addr = alloca ptr, align 8
  %description.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  %default_value.addr = alloca double, align 8
  %o = alloca ptr, align 8
  store ptr %option_str, ptr %option_str.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %option_str.addr, metadata !4733, metadata !DIExpression()), !dbg !4738
  store ptr %description, ptr %description.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %description.addr, metadata !4734, metadata !DIExpression()), !dbg !4739
  store ptr %value, ptr %value.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !4735, metadata !DIExpression()), !dbg !4740
  store double %default_value, ptr %default_value.addr, align 8, !tbaa !2457
  tail call void @llvm.dbg.declare(metadata ptr %default_value.addr, metadata !4736, metadata !DIExpression()), !dbg !4741
  call void @llvm.lifetime.start.p0(i64 8, ptr %o) #10, !dbg !4742
  tail call void @llvm.dbg.declare(metadata ptr %o, metadata !4737, metadata !DIExpression()), !dbg !4743
  %0 = load ptr, ptr %option_str.addr, align 8, !dbg !4744, !tbaa !743
  %1 = load ptr, ptr %description.addr, align 8, !dbg !4745, !tbaa !743
  %2 = load ptr, ptr %value.addr, align 8, !dbg !4746, !tbaa !743
  %call = call ptr @gt_option_new(ptr noundef %0, ptr noundef %1, ptr noundef %2), !dbg !4747
  store ptr %call, ptr %o, align 8, !dbg !4743, !tbaa !743
  %3 = load ptr, ptr %o, align 8, !dbg !4748, !tbaa !743
  %option_type = getelementptr inbounds %struct.GtOption, ptr %3, i32 0, i32 0, !dbg !4749
  store i32 2, ptr %option_type, align 8, !dbg !4750, !tbaa !1391
  %4 = load double, ptr %default_value.addr, align 8, !dbg !4751, !tbaa !2457
  %5 = load ptr, ptr %o, align 8, !dbg !4752, !tbaa !743
  %default_value1 = getelementptr inbounds %struct.GtOption, ptr %5, i32 0, i32 4, !dbg !4753
  store double %4, ptr %default_value1, align 8, !dbg !4754, !tbaa !880
  %6 = load double, ptr %default_value.addr, align 8, !dbg !4755, !tbaa !2457
  %7 = load ptr, ptr %value.addr, align 8, !dbg !4756, !tbaa !743
  store double %6, ptr %7, align 8, !dbg !4757, !tbaa !2457
  %8 = load ptr, ptr %o, align 8, !dbg !4758, !tbaa !743
  call void @llvm.lifetime.end.p0(i64 8, ptr %o) #10, !dbg !4759
  ret ptr %8, !dbg !4760
}

; Function Attrs: nounwind uwtable
define ptr @gt_option_new_double_min(ptr noundef %option_str, ptr noundef %description, ptr noundef %value, double noundef %default_value, double noundef %min_value) #0 !dbg !4761 {
entry:
  %option_str.addr = alloca ptr, align 8
  %description.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  %default_value.addr = alloca double, align 8
  %min_value.addr = alloca double, align 8
  %o = alloca ptr, align 8
  store ptr %option_str, ptr %option_str.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %option_str.addr, metadata !4765, metadata !DIExpression()), !dbg !4771
  store ptr %description, ptr %description.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %description.addr, metadata !4766, metadata !DIExpression()), !dbg !4772
  store ptr %value, ptr %value.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !4767, metadata !DIExpression()), !dbg !4773
  store double %default_value, ptr %default_value.addr, align 8, !tbaa !2457
  tail call void @llvm.dbg.declare(metadata ptr %default_value.addr, metadata !4768, metadata !DIExpression()), !dbg !4774
  store double %min_value, ptr %min_value.addr, align 8, !tbaa !2457
  tail call void @llvm.dbg.declare(metadata ptr %min_value.addr, metadata !4769, metadata !DIExpression()), !dbg !4775
  call void @llvm.lifetime.start.p0(i64 8, ptr %o) #10, !dbg !4776
  tail call void @llvm.dbg.declare(metadata ptr %o, metadata !4770, metadata !DIExpression()), !dbg !4777
  %0 = load ptr, ptr %option_str.addr, align 8, !dbg !4778, !tbaa !743
  %1 = load ptr, ptr %description.addr, align 8, !dbg !4779, !tbaa !743
  %2 = load ptr, ptr %value.addr, align 8, !dbg !4780, !tbaa !743
  %3 = load double, ptr %default_value.addr, align 8, !dbg !4781, !tbaa !2457
  %call = call ptr @gt_option_new_double(ptr noundef %0, ptr noundef %1, ptr noundef %2, double noundef %3), !dbg !4782
  store ptr %call, ptr %o, align 8, !dbg !4777, !tbaa !743
  %4 = load ptr, ptr %o, align 8, !dbg !4783, !tbaa !743
  %min_value_set = getelementptr inbounds %struct.GtOption, ptr %4, i32 0, i32 11, !dbg !4784
  store i8 1, ptr %min_value_set, align 1, !dbg !4785, !tbaa !2454
  %5 = load double, ptr %min_value.addr, align 8, !dbg !4786, !tbaa !2457
  %6 = load ptr, ptr %o, align 8, !dbg !4787, !tbaa !743
  %min_value1 = getelementptr inbounds %struct.GtOption, ptr %6, i32 0, i32 6, !dbg !4788
  store double %5, ptr %min_value1, align 8, !dbg !4789, !tbaa !880
  %7 = load ptr, ptr %o, align 8, !dbg !4790, !tbaa !743
  call void @llvm.lifetime.end.p0(i64 8, ptr %o) #10, !dbg !4791
  ret ptr %7, !dbg !4792
}

; Function Attrs: nounwind uwtable
define ptr @gt_option_new_double_min_max(ptr noundef %option_str, ptr noundef %description, ptr noundef %value, double noundef %default_value, double noundef %min_value, double noundef %max_value) #0 !dbg !4793 {
entry:
  %option_str.addr = alloca ptr, align 8
  %description.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  %default_value.addr = alloca double, align 8
  %min_value.addr = alloca double, align 8
  %max_value.addr = alloca double, align 8
  %o = alloca ptr, align 8
  store ptr %option_str, ptr %option_str.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %option_str.addr, metadata !4797, metadata !DIExpression()), !dbg !4804
  store ptr %description, ptr %description.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %description.addr, metadata !4798, metadata !DIExpression()), !dbg !4805
  store ptr %value, ptr %value.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !4799, metadata !DIExpression()), !dbg !4806
  store double %default_value, ptr %default_value.addr, align 8, !tbaa !2457
  tail call void @llvm.dbg.declare(metadata ptr %default_value.addr, metadata !4800, metadata !DIExpression()), !dbg !4807
  store double %min_value, ptr %min_value.addr, align 8, !tbaa !2457
  tail call void @llvm.dbg.declare(metadata ptr %min_value.addr, metadata !4801, metadata !DIExpression()), !dbg !4808
  store double %max_value, ptr %max_value.addr, align 8, !tbaa !2457
  tail call void @llvm.dbg.declare(metadata ptr %max_value.addr, metadata !4802, metadata !DIExpression()), !dbg !4809
  call void @llvm.lifetime.start.p0(i64 8, ptr %o) #10, !dbg !4810
  tail call void @llvm.dbg.declare(metadata ptr %o, metadata !4803, metadata !DIExpression()), !dbg !4811
  %0 = load ptr, ptr %option_str.addr, align 8, !dbg !4812, !tbaa !743
  %1 = load ptr, ptr %description.addr, align 8, !dbg !4813, !tbaa !743
  %2 = load ptr, ptr %value.addr, align 8, !dbg !4814, !tbaa !743
  %3 = load double, ptr %default_value.addr, align 8, !dbg !4815, !tbaa !2457
  %call = call ptr @gt_option_new_double(ptr noundef %0, ptr noundef %1, ptr noundef %2, double noundef %3), !dbg !4816
  store ptr %call, ptr %o, align 8, !dbg !4811, !tbaa !743
  %4 = load ptr, ptr %o, align 8, !dbg !4817, !tbaa !743
  %min_value_set = getelementptr inbounds %struct.GtOption, ptr %4, i32 0, i32 11, !dbg !4818
  store i8 1, ptr %min_value_set, align 1, !dbg !4819, !tbaa !2454
  %5 = load double, ptr %min_value.addr, align 8, !dbg !4820, !tbaa !2457
  %6 = load ptr, ptr %o, align 8, !dbg !4821, !tbaa !743
  %min_value1 = getelementptr inbounds %struct.GtOption, ptr %6, i32 0, i32 6, !dbg !4822
  store double %5, ptr %min_value1, align 8, !dbg !4823, !tbaa !880
  %7 = load ptr, ptr %o, align 8, !dbg !4824, !tbaa !743
  %max_value_set = getelementptr inbounds %struct.GtOption, ptr %7, i32 0, i32 12, !dbg !4825
  store i8 1, ptr %max_value_set, align 4, !dbg !4826, !tbaa !2483
  %8 = load double, ptr %max_value.addr, align 8, !dbg !4827, !tbaa !2457
  %9 = load ptr, ptr %o, align 8, !dbg !4828, !tbaa !743
  %max_value2 = getelementptr inbounds %struct.GtOption, ptr %9, i32 0, i32 7, !dbg !4829
  store double %8, ptr %max_value2, align 8, !dbg !4830, !tbaa !880
  %10 = load ptr, ptr %o, align 8, !dbg !4831, !tbaa !743
  call void @llvm.lifetime.end.p0(i64 8, ptr %o) #10, !dbg !4832
  ret ptr %10, !dbg !4833
}

; Function Attrs: nounwind uwtable
define ptr @gt_option_new_probability(ptr noundef %option_str, ptr noundef %description, ptr noundef %value, double noundef %default_value) #0 !dbg !4834 {
entry:
  %option_str.addr = alloca ptr, align 8
  %description.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  %default_value.addr = alloca double, align 8
  store ptr %option_str, ptr %option_str.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %option_str.addr, metadata !4836, metadata !DIExpression()), !dbg !4840
  store ptr %description, ptr %description.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %description.addr, metadata !4837, metadata !DIExpression()), !dbg !4841
  store ptr %value, ptr %value.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !4838, metadata !DIExpression()), !dbg !4842
  store double %default_value, ptr %default_value.addr, align 8, !tbaa !2457
  tail call void @llvm.dbg.declare(metadata ptr %default_value.addr, metadata !4839, metadata !DIExpression()), !dbg !4843
  %0 = load ptr, ptr %option_str.addr, align 8, !dbg !4844, !tbaa !743
  %1 = load ptr, ptr %description.addr, align 8, !dbg !4845, !tbaa !743
  %2 = load ptr, ptr %value.addr, align 8, !dbg !4846, !tbaa !743
  %3 = load double, ptr %default_value.addr, align 8, !dbg !4847, !tbaa !2457
  %call = call ptr @gt_option_new_double_min_max(ptr noundef %0, ptr noundef %1, ptr noundef %2, double noundef %3, double noundef 0.000000e+00, double noundef 1.000000e+00), !dbg !4848
  ret ptr %call, !dbg !4849
}

; Function Attrs: nounwind uwtable
define ptr @gt_option_new_int(ptr noundef %option_str, ptr noundef %description, ptr noundef %value, i32 noundef %default_value) #0 !dbg !4850 {
entry:
  %option_str.addr = alloca ptr, align 8
  %description.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  %default_value.addr = alloca i32, align 4
  %o = alloca ptr, align 8
  store ptr %option_str, ptr %option_str.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %option_str.addr, metadata !4854, metadata !DIExpression()), !dbg !4859
  store ptr %description, ptr %description.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %description.addr, metadata !4855, metadata !DIExpression()), !dbg !4860
  store ptr %value, ptr %value.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !4856, metadata !DIExpression()), !dbg !4861
  store i32 %default_value, ptr %default_value.addr, align 4, !tbaa !1154
  tail call void @llvm.dbg.declare(metadata ptr %default_value.addr, metadata !4857, metadata !DIExpression()), !dbg !4862
  call void @llvm.lifetime.start.p0(i64 8, ptr %o) #10, !dbg !4863
  tail call void @llvm.dbg.declare(metadata ptr %o, metadata !4858, metadata !DIExpression()), !dbg !4864
  %0 = load ptr, ptr %option_str.addr, align 8, !dbg !4865, !tbaa !743
  %1 = load ptr, ptr %description.addr, align 8, !dbg !4866, !tbaa !743
  %2 = load ptr, ptr %value.addr, align 8, !dbg !4867, !tbaa !743
  %call = call ptr @gt_option_new(ptr noundef %0, ptr noundef %1, ptr noundef %2), !dbg !4868
  store ptr %call, ptr %o, align 8, !dbg !4864, !tbaa !743
  %3 = load ptr, ptr %o, align 8, !dbg !4869, !tbaa !743
  %option_type = getelementptr inbounds %struct.GtOption, ptr %3, i32 0, i32 0, !dbg !4870
  store i32 7, ptr %option_type, align 8, !dbg !4871, !tbaa !1391
  %4 = load i32, ptr %default_value.addr, align 4, !dbg !4872, !tbaa !1154
  %5 = load ptr, ptr %o, align 8, !dbg !4873, !tbaa !743
  %default_value1 = getelementptr inbounds %struct.GtOption, ptr %5, i32 0, i32 4, !dbg !4874
  store i32 %4, ptr %default_value1, align 8, !dbg !4875, !tbaa !880
  %6 = load i32, ptr %default_value.addr, align 4, !dbg !4876, !tbaa !1154
  %7 = load ptr, ptr %value.addr, align 8, !dbg !4877, !tbaa !743
  store i32 %6, ptr %7, align 4, !dbg !4878, !tbaa !1154
  %8 = load ptr, ptr %o, align 8, !dbg !4879, !tbaa !743
  call void @llvm.lifetime.end.p0(i64 8, ptr %o) #10, !dbg !4880
  ret ptr %8, !dbg !4881
}

; Function Attrs: nounwind uwtable
define ptr @gt_option_new_int_min(ptr noundef %option_str, ptr noundef %description, ptr noundef %value, i32 noundef %default_value, i32 noundef %min_value) #0 !dbg !4882 {
entry:
  %option_str.addr = alloca ptr, align 8
  %description.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  %default_value.addr = alloca i32, align 4
  %min_value.addr = alloca i32, align 4
  %o = alloca ptr, align 8
  store ptr %option_str, ptr %option_str.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %option_str.addr, metadata !4886, metadata !DIExpression()), !dbg !4892
  store ptr %description, ptr %description.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %description.addr, metadata !4887, metadata !DIExpression()), !dbg !4893
  store ptr %value, ptr %value.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !4888, metadata !DIExpression()), !dbg !4894
  store i32 %default_value, ptr %default_value.addr, align 4, !tbaa !1154
  tail call void @llvm.dbg.declare(metadata ptr %default_value.addr, metadata !4889, metadata !DIExpression()), !dbg !4895
  store i32 %min_value, ptr %min_value.addr, align 4, !tbaa !1154
  tail call void @llvm.dbg.declare(metadata ptr %min_value.addr, metadata !4890, metadata !DIExpression()), !dbg !4896
  call void @llvm.lifetime.start.p0(i64 8, ptr %o) #10, !dbg !4897
  tail call void @llvm.dbg.declare(metadata ptr %o, metadata !4891, metadata !DIExpression()), !dbg !4898
  %0 = load ptr, ptr %option_str.addr, align 8, !dbg !4899, !tbaa !743
  %1 = load ptr, ptr %description.addr, align 8, !dbg !4900, !tbaa !743
  %2 = load ptr, ptr %value.addr, align 8, !dbg !4901, !tbaa !743
  %3 = load i32, ptr %default_value.addr, align 4, !dbg !4902, !tbaa !1154
  %call = call ptr @gt_option_new_int(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3), !dbg !4903
  store ptr %call, ptr %o, align 8, !dbg !4898, !tbaa !743
  %4 = load ptr, ptr %o, align 8, !dbg !4904, !tbaa !743
  %min_value_set = getelementptr inbounds %struct.GtOption, ptr %4, i32 0, i32 11, !dbg !4905
  store i8 1, ptr %min_value_set, align 1, !dbg !4906, !tbaa !2454
  %5 = load i32, ptr %min_value.addr, align 4, !dbg !4907, !tbaa !1154
  %6 = load ptr, ptr %o, align 8, !dbg !4908, !tbaa !743
  %min_value1 = getelementptr inbounds %struct.GtOption, ptr %6, i32 0, i32 6, !dbg !4909
  store i32 %5, ptr %min_value1, align 8, !dbg !4910, !tbaa !880
  %7 = load ptr, ptr %o, align 8, !dbg !4911, !tbaa !743
  call void @llvm.lifetime.end.p0(i64 8, ptr %o) #10, !dbg !4912
  ret ptr %7, !dbg !4913
}

; Function Attrs: nounwind uwtable
define ptr @gt_option_new_int_max(ptr noundef %option_str, ptr noundef %description, ptr noundef %value, i32 noundef %default_value, i32 noundef %max_value) #0 !dbg !4914 {
entry:
  %option_str.addr = alloca ptr, align 8
  %description.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  %default_value.addr = alloca i32, align 4
  %max_value.addr = alloca i32, align 4
  %o = alloca ptr, align 8
  store ptr %option_str, ptr %option_str.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %option_str.addr, metadata !4916, metadata !DIExpression()), !dbg !4922
  store ptr %description, ptr %description.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %description.addr, metadata !4917, metadata !DIExpression()), !dbg !4923
  store ptr %value, ptr %value.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !4918, metadata !DIExpression()), !dbg !4924
  store i32 %default_value, ptr %default_value.addr, align 4, !tbaa !1154
  tail call void @llvm.dbg.declare(metadata ptr %default_value.addr, metadata !4919, metadata !DIExpression()), !dbg !4925
  store i32 %max_value, ptr %max_value.addr, align 4, !tbaa !1154
  tail call void @llvm.dbg.declare(metadata ptr %max_value.addr, metadata !4920, metadata !DIExpression()), !dbg !4926
  call void @llvm.lifetime.start.p0(i64 8, ptr %o) #10, !dbg !4927
  tail call void @llvm.dbg.declare(metadata ptr %o, metadata !4921, metadata !DIExpression()), !dbg !4928
  %0 = load ptr, ptr %option_str.addr, align 8, !dbg !4929, !tbaa !743
  %1 = load ptr, ptr %description.addr, align 8, !dbg !4930, !tbaa !743
  %2 = load ptr, ptr %value.addr, align 8, !dbg !4931, !tbaa !743
  %3 = load i32, ptr %default_value.addr, align 4, !dbg !4932, !tbaa !1154
  %call = call ptr @gt_option_new_int(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3), !dbg !4933
  store ptr %call, ptr %o, align 8, !dbg !4928, !tbaa !743
  %4 = load ptr, ptr %o, align 8, !dbg !4934, !tbaa !743
  %max_value_set = getelementptr inbounds %struct.GtOption, ptr %4, i32 0, i32 12, !dbg !4935
  store i8 1, ptr %max_value_set, align 4, !dbg !4936, !tbaa !2483
  %5 = load i32, ptr %max_value.addr, align 4, !dbg !4937, !tbaa !1154
  %6 = load ptr, ptr %o, align 8, !dbg !4938, !tbaa !743
  %max_value1 = getelementptr inbounds %struct.GtOption, ptr %6, i32 0, i32 7, !dbg !4939
  store i32 %5, ptr %max_value1, align 8, !dbg !4940, !tbaa !880
  %7 = load ptr, ptr %o, align 8, !dbg !4941, !tbaa !743
  call void @llvm.lifetime.end.p0(i64 8, ptr %o) #10, !dbg !4942
  ret ptr %7, !dbg !4943
}

; Function Attrs: nounwind uwtable
define ptr @gt_option_new_int_min_max(ptr noundef %option_str, ptr noundef %description, ptr noundef %value, i32 noundef %default_value, i32 noundef %min_value, i32 noundef %max_value) #0 !dbg !4944 {
entry:
  %option_str.addr = alloca ptr, align 8
  %description.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  %default_value.addr = alloca i32, align 4
  %min_value.addr = alloca i32, align 4
  %max_value.addr = alloca i32, align 4
  %o = alloca ptr, align 8
  store ptr %option_str, ptr %option_str.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %option_str.addr, metadata !4948, metadata !DIExpression()), !dbg !4955
  store ptr %description, ptr %description.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %description.addr, metadata !4949, metadata !DIExpression()), !dbg !4956
  store ptr %value, ptr %value.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !4950, metadata !DIExpression()), !dbg !4957
  store i32 %default_value, ptr %default_value.addr, align 4, !tbaa !1154
  tail call void @llvm.dbg.declare(metadata ptr %default_value.addr, metadata !4951, metadata !DIExpression()), !dbg !4958
  store i32 %min_value, ptr %min_value.addr, align 4, !tbaa !1154
  tail call void @llvm.dbg.declare(metadata ptr %min_value.addr, metadata !4952, metadata !DIExpression()), !dbg !4959
  store i32 %max_value, ptr %max_value.addr, align 4, !tbaa !1154
  tail call void @llvm.dbg.declare(metadata ptr %max_value.addr, metadata !4953, metadata !DIExpression()), !dbg !4960
  call void @llvm.lifetime.start.p0(i64 8, ptr %o) #10, !dbg !4961
  tail call void @llvm.dbg.declare(metadata ptr %o, metadata !4954, metadata !DIExpression()), !dbg !4962
  %0 = load ptr, ptr %option_str.addr, align 8, !dbg !4963, !tbaa !743
  %1 = load ptr, ptr %description.addr, align 8, !dbg !4964, !tbaa !743
  %2 = load ptr, ptr %value.addr, align 8, !dbg !4965, !tbaa !743
  %3 = load i32, ptr %default_value.addr, align 4, !dbg !4966, !tbaa !1154
  %call = call ptr @gt_option_new_int(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3), !dbg !4967
  store ptr %call, ptr %o, align 8, !dbg !4962, !tbaa !743
  %4 = load ptr, ptr %o, align 8, !dbg !4968, !tbaa !743
  %min_value_set = getelementptr inbounds %struct.GtOption, ptr %4, i32 0, i32 11, !dbg !4969
  store i8 1, ptr %min_value_set, align 1, !dbg !4970, !tbaa !2454
  %5 = load i32, ptr %min_value.addr, align 4, !dbg !4971, !tbaa !1154
  %6 = load ptr, ptr %o, align 8, !dbg !4972, !tbaa !743
  %min_value1 = getelementptr inbounds %struct.GtOption, ptr %6, i32 0, i32 6, !dbg !4973
  store i32 %5, ptr %min_value1, align 8, !dbg !4974, !tbaa !880
  %7 = load ptr, ptr %o, align 8, !dbg !4975, !tbaa !743
  %max_value_set = getelementptr inbounds %struct.GtOption, ptr %7, i32 0, i32 12, !dbg !4976
  store i8 1, ptr %max_value_set, align 4, !dbg !4977, !tbaa !2483
  %8 = load i32, ptr %max_value.addr, align 4, !dbg !4978, !tbaa !1154
  %9 = load ptr, ptr %o, align 8, !dbg !4979, !tbaa !743
  %max_value2 = getelementptr inbounds %struct.GtOption, ptr %9, i32 0, i32 7, !dbg !4980
  store i32 %8, ptr %max_value2, align 8, !dbg !4981, !tbaa !880
  %10 = load ptr, ptr %o, align 8, !dbg !4982, !tbaa !743
  call void @llvm.lifetime.end.p0(i64 8, ptr %o) #10, !dbg !4983
  ret ptr %10, !dbg !4984
}

; Function Attrs: nounwind uwtable
define ptr @gt_option_new_uint(ptr noundef %option_str, ptr noundef %description, ptr noundef %value, i32 noundef %default_value) #0 !dbg !4985 {
entry:
  %option_str.addr = alloca ptr, align 8
  %description.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  %default_value.addr = alloca i32, align 4
  %o = alloca ptr, align 8
  store ptr %option_str, ptr %option_str.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %option_str.addr, metadata !4989, metadata !DIExpression()), !dbg !4994
  store ptr %description, ptr %description.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %description.addr, metadata !4990, metadata !DIExpression()), !dbg !4995
  store ptr %value, ptr %value.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !4991, metadata !DIExpression()), !dbg !4996
  store i32 %default_value, ptr %default_value.addr, align 4, !tbaa !1154
  tail call void @llvm.dbg.declare(metadata ptr %default_value.addr, metadata !4992, metadata !DIExpression()), !dbg !4997
  call void @llvm.lifetime.start.p0(i64 8, ptr %o) #10, !dbg !4998
  tail call void @llvm.dbg.declare(metadata ptr %o, metadata !4993, metadata !DIExpression()), !dbg !4999
  %0 = load ptr, ptr %option_str.addr, align 8, !dbg !5000, !tbaa !743
  %1 = load ptr, ptr %description.addr, align 8, !dbg !5001, !tbaa !743
  %2 = load ptr, ptr %value.addr, align 8, !dbg !5002, !tbaa !743
  %call = call ptr @gt_option_new(ptr noundef %0, ptr noundef %1, ptr noundef %2), !dbg !5003
  store ptr %call, ptr %o, align 8, !dbg !4999, !tbaa !743
  %3 = load ptr, ptr %o, align 8, !dbg !5004, !tbaa !743
  %option_type = getelementptr inbounds %struct.GtOption, ptr %3, i32 0, i32 0, !dbg !5005
  store i32 8, ptr %option_type, align 8, !dbg !5006, !tbaa !1391
  %4 = load i32, ptr %default_value.addr, align 4, !dbg !5007, !tbaa !1154
  %5 = load ptr, ptr %o, align 8, !dbg !5008, !tbaa !743
  %default_value1 = getelementptr inbounds %struct.GtOption, ptr %5, i32 0, i32 4, !dbg !5009
  store i32 %4, ptr %default_value1, align 8, !dbg !5010, !tbaa !880
  %6 = load i32, ptr %default_value.addr, align 4, !dbg !5011, !tbaa !1154
  %7 = load ptr, ptr %value.addr, align 8, !dbg !5012, !tbaa !743
  store i32 %6, ptr %7, align 4, !dbg !5013, !tbaa !1154
  %8 = load ptr, ptr %o, align 8, !dbg !5014, !tbaa !743
  call void @llvm.lifetime.end.p0(i64 8, ptr %o) #10, !dbg !5015
  ret ptr %8, !dbg !5016
}

; Function Attrs: nounwind uwtable
define ptr @gt_option_new_uint_min(ptr noundef %option_str, ptr noundef %description, ptr noundef %value, i32 noundef %default_value, i32 noundef %min_value) #0 !dbg !5017 {
entry:
  %option_str.addr = alloca ptr, align 8
  %description.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  %default_value.addr = alloca i32, align 4
  %min_value.addr = alloca i32, align 4
  %o = alloca ptr, align 8
  store ptr %option_str, ptr %option_str.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %option_str.addr, metadata !5021, metadata !DIExpression()), !dbg !5027
  store ptr %description, ptr %description.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %description.addr, metadata !5022, metadata !DIExpression()), !dbg !5028
  store ptr %value, ptr %value.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !5023, metadata !DIExpression()), !dbg !5029
  store i32 %default_value, ptr %default_value.addr, align 4, !tbaa !1154
  tail call void @llvm.dbg.declare(metadata ptr %default_value.addr, metadata !5024, metadata !DIExpression()), !dbg !5030
  store i32 %min_value, ptr %min_value.addr, align 4, !tbaa !1154
  tail call void @llvm.dbg.declare(metadata ptr %min_value.addr, metadata !5025, metadata !DIExpression()), !dbg !5031
  call void @llvm.lifetime.start.p0(i64 8, ptr %o) #10, !dbg !5032
  tail call void @llvm.dbg.declare(metadata ptr %o, metadata !5026, metadata !DIExpression()), !dbg !5033
  %0 = load ptr, ptr %option_str.addr, align 8, !dbg !5034, !tbaa !743
  %1 = load ptr, ptr %description.addr, align 8, !dbg !5035, !tbaa !743
  %2 = load ptr, ptr %value.addr, align 8, !dbg !5036, !tbaa !743
  %3 = load i32, ptr %default_value.addr, align 4, !dbg !5037, !tbaa !1154
  %call = call ptr @gt_option_new_uint(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3), !dbg !5038
  store ptr %call, ptr %o, align 8, !dbg !5033, !tbaa !743
  %4 = load ptr, ptr %o, align 8, !dbg !5039, !tbaa !743
  %min_value_set = getelementptr inbounds %struct.GtOption, ptr %4, i32 0, i32 11, !dbg !5040
  store i8 1, ptr %min_value_set, align 1, !dbg !5041, !tbaa !2454
  %5 = load i32, ptr %min_value.addr, align 4, !dbg !5042, !tbaa !1154
  %6 = load ptr, ptr %o, align 8, !dbg !5043, !tbaa !743
  %min_value1 = getelementptr inbounds %struct.GtOption, ptr %6, i32 0, i32 6, !dbg !5044
  store i32 %5, ptr %min_value1, align 8, !dbg !5045, !tbaa !880
  %7 = load ptr, ptr %o, align 8, !dbg !5046, !tbaa !743
  call void @llvm.lifetime.end.p0(i64 8, ptr %o) #10, !dbg !5047
  ret ptr %7, !dbg !5048
}

; Function Attrs: nounwind uwtable
define ptr @gt_option_new_uint_max(ptr noundef %option_str, ptr noundef %description, ptr noundef %value, i32 noundef %default_value, i32 noundef %max_value) #0 !dbg !5049 {
entry:
  %option_str.addr = alloca ptr, align 8
  %description.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  %default_value.addr = alloca i32, align 4
  %max_value.addr = alloca i32, align 4
  %o = alloca ptr, align 8
  store ptr %option_str, ptr %option_str.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %option_str.addr, metadata !5051, metadata !DIExpression()), !dbg !5057
  store ptr %description, ptr %description.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %description.addr, metadata !5052, metadata !DIExpression()), !dbg !5058
  store ptr %value, ptr %value.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !5053, metadata !DIExpression()), !dbg !5059
  store i32 %default_value, ptr %default_value.addr, align 4, !tbaa !1154
  tail call void @llvm.dbg.declare(metadata ptr %default_value.addr, metadata !5054, metadata !DIExpression()), !dbg !5060
  store i32 %max_value, ptr %max_value.addr, align 4, !tbaa !1154
  tail call void @llvm.dbg.declare(metadata ptr %max_value.addr, metadata !5055, metadata !DIExpression()), !dbg !5061
  call void @llvm.lifetime.start.p0(i64 8, ptr %o) #10, !dbg !5062
  tail call void @llvm.dbg.declare(metadata ptr %o, metadata !5056, metadata !DIExpression()), !dbg !5063
  %0 = load ptr, ptr %option_str.addr, align 8, !dbg !5064, !tbaa !743
  %1 = load ptr, ptr %description.addr, align 8, !dbg !5065, !tbaa !743
  %2 = load ptr, ptr %value.addr, align 8, !dbg !5066, !tbaa !743
  %3 = load i32, ptr %default_value.addr, align 4, !dbg !5067, !tbaa !1154
  %call = call ptr @gt_option_new_uint(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3), !dbg !5068
  store ptr %call, ptr %o, align 8, !dbg !5063, !tbaa !743
  %4 = load ptr, ptr %o, align 8, !dbg !5069, !tbaa !743
  %max_value_set = getelementptr inbounds %struct.GtOption, ptr %4, i32 0, i32 12, !dbg !5070
  store i8 1, ptr %max_value_set, align 4, !dbg !5071, !tbaa !2483
  %5 = load i32, ptr %max_value.addr, align 4, !dbg !5072, !tbaa !1154
  %6 = load ptr, ptr %o, align 8, !dbg !5073, !tbaa !743
  %max_value1 = getelementptr inbounds %struct.GtOption, ptr %6, i32 0, i32 7, !dbg !5074
  store i32 %5, ptr %max_value1, align 8, !dbg !5075, !tbaa !880
  %7 = load ptr, ptr %o, align 8, !dbg !5076, !tbaa !743
  call void @llvm.lifetime.end.p0(i64 8, ptr %o) #10, !dbg !5077
  ret ptr %7, !dbg !5078
}

; Function Attrs: nounwind uwtable
define ptr @gt_option_new_uint_min_max(ptr noundef %option_str, ptr noundef %description, ptr noundef %value, i32 noundef %default_value, i32 noundef %min_value, i32 noundef %max_value) #0 !dbg !5079 {
entry:
  %option_str.addr = alloca ptr, align 8
  %description.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  %default_value.addr = alloca i32, align 4
  %min_value.addr = alloca i32, align 4
  %max_value.addr = alloca i32, align 4
  %o = alloca ptr, align 8
  store ptr %option_str, ptr %option_str.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %option_str.addr, metadata !5083, metadata !DIExpression()), !dbg !5090
  store ptr %description, ptr %description.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %description.addr, metadata !5084, metadata !DIExpression()), !dbg !5091
  store ptr %value, ptr %value.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !5085, metadata !DIExpression()), !dbg !5092
  store i32 %default_value, ptr %default_value.addr, align 4, !tbaa !1154
  tail call void @llvm.dbg.declare(metadata ptr %default_value.addr, metadata !5086, metadata !DIExpression()), !dbg !5093
  store i32 %min_value, ptr %min_value.addr, align 4, !tbaa !1154
  tail call void @llvm.dbg.declare(metadata ptr %min_value.addr, metadata !5087, metadata !DIExpression()), !dbg !5094
  store i32 %max_value, ptr %max_value.addr, align 4, !tbaa !1154
  tail call void @llvm.dbg.declare(metadata ptr %max_value.addr, metadata !5088, metadata !DIExpression()), !dbg !5095
  call void @llvm.lifetime.start.p0(i64 8, ptr %o) #10, !dbg !5096
  tail call void @llvm.dbg.declare(metadata ptr %o, metadata !5089, metadata !DIExpression()), !dbg !5097
  %0 = load ptr, ptr %option_str.addr, align 8, !dbg !5098, !tbaa !743
  %1 = load ptr, ptr %description.addr, align 8, !dbg !5099, !tbaa !743
  %2 = load ptr, ptr %value.addr, align 8, !dbg !5100, !tbaa !743
  %3 = load i32, ptr %default_value.addr, align 4, !dbg !5101, !tbaa !1154
  %call = call ptr @gt_option_new_uint(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3), !dbg !5102
  store ptr %call, ptr %o, align 8, !dbg !5097, !tbaa !743
  %4 = load ptr, ptr %o, align 8, !dbg !5103, !tbaa !743
  %min_value_set = getelementptr inbounds %struct.GtOption, ptr %4, i32 0, i32 11, !dbg !5104
  store i8 1, ptr %min_value_set, align 1, !dbg !5105, !tbaa !2454
  %5 = load i32, ptr %min_value.addr, align 4, !dbg !5106, !tbaa !1154
  %6 = load ptr, ptr %o, align 8, !dbg !5107, !tbaa !743
  %min_value1 = getelementptr inbounds %struct.GtOption, ptr %6, i32 0, i32 6, !dbg !5108
  store i32 %5, ptr %min_value1, align 8, !dbg !5109, !tbaa !880
  %7 = load ptr, ptr %o, align 8, !dbg !5110, !tbaa !743
  %max_value_set = getelementptr inbounds %struct.GtOption, ptr %7, i32 0, i32 12, !dbg !5111
  store i8 1, ptr %max_value_set, align 4, !dbg !5112, !tbaa !2483
  %8 = load i32, ptr %max_value.addr, align 4, !dbg !5113, !tbaa !1154
  %9 = load ptr, ptr %o, align 8, !dbg !5114, !tbaa !743
  %max_value2 = getelementptr inbounds %struct.GtOption, ptr %9, i32 0, i32 7, !dbg !5115
  store i32 %8, ptr %max_value2, align 8, !dbg !5116, !tbaa !880
  %10 = load ptr, ptr %o, align 8, !dbg !5117, !tbaa !743
  call void @llvm.lifetime.end.p0(i64 8, ptr %o) #10, !dbg !5118
  ret ptr %10, !dbg !5119
}

; Function Attrs: nounwind uwtable
define ptr @gt_option_new_word(ptr noundef %option_str, ptr noundef %description, ptr noundef %value, i64 noundef %default_value) #0 !dbg !5120 {
entry:
  %option_str.addr = alloca ptr, align 8
  %description.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  %default_value.addr = alloca i64, align 8
  %o = alloca ptr, align 8
  store ptr %option_str, ptr %option_str.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %option_str.addr, metadata !5124, metadata !DIExpression()), !dbg !5129
  store ptr %description, ptr %description.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %description.addr, metadata !5125, metadata !DIExpression()), !dbg !5130
  store ptr %value, ptr %value.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !5126, metadata !DIExpression()), !dbg !5131
  store i64 %default_value, ptr %default_value.addr, align 8, !tbaa !1287
  tail call void @llvm.dbg.declare(metadata ptr %default_value.addr, metadata !5127, metadata !DIExpression()), !dbg !5132
  call void @llvm.lifetime.start.p0(i64 8, ptr %o) #10, !dbg !5133
  tail call void @llvm.dbg.declare(metadata ptr %o, metadata !5128, metadata !DIExpression()), !dbg !5134
  %0 = load ptr, ptr %option_str.addr, align 8, !dbg !5135, !tbaa !743
  %1 = load ptr, ptr %description.addr, align 8, !dbg !5136, !tbaa !743
  %2 = load ptr, ptr %value.addr, align 8, !dbg !5137, !tbaa !743
  %call = call ptr @gt_option_new(ptr noundef %0, ptr noundef %1, ptr noundef %2), !dbg !5138
  store ptr %call, ptr %o, align 8, !dbg !5134, !tbaa !743
  %3 = load ptr, ptr %o, align 8, !dbg !5139, !tbaa !743
  %option_type = getelementptr inbounds %struct.GtOption, ptr %3, i32 0, i32 0, !dbg !5140
  store i32 9, ptr %option_type, align 8, !dbg !5141, !tbaa !1391
  %4 = load i64, ptr %default_value.addr, align 8, !dbg !5142, !tbaa !1287
  %5 = load ptr, ptr %o, align 8, !dbg !5143, !tbaa !743
  %default_value1 = getelementptr inbounds %struct.GtOption, ptr %5, i32 0, i32 4, !dbg !5144
  store i64 %4, ptr %default_value1, align 8, !dbg !5145, !tbaa !880
  %6 = load i64, ptr %default_value.addr, align 8, !dbg !5146, !tbaa !1287
  %7 = load ptr, ptr %value.addr, align 8, !dbg !5147, !tbaa !743
  store i64 %6, ptr %7, align 8, !dbg !5148, !tbaa !1287
  %8 = load ptr, ptr %o, align 8, !dbg !5149, !tbaa !743
  call void @llvm.lifetime.end.p0(i64 8, ptr %o) #10, !dbg !5150
  ret ptr %8, !dbg !5151
}

; Function Attrs: nounwind uwtable
define ptr @gt_option_new_uword_min(ptr noundef %option_str, ptr noundef %description, ptr noundef %value, i64 noundef %default_value, i64 noundef %min_value) #0 !dbg !5152 {
entry:
  %option_str.addr = alloca ptr, align 8
  %description.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  %default_value.addr = alloca i64, align 8
  %min_value.addr = alloca i64, align 8
  %o = alloca ptr, align 8
  store ptr %option_str, ptr %option_str.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %option_str.addr, metadata !5156, metadata !DIExpression()), !dbg !5162
  store ptr %description, ptr %description.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %description.addr, metadata !5157, metadata !DIExpression()), !dbg !5163
  store ptr %value, ptr %value.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !5158, metadata !DIExpression()), !dbg !5164
  store i64 %default_value, ptr %default_value.addr, align 8, !tbaa !1287
  tail call void @llvm.dbg.declare(metadata ptr %default_value.addr, metadata !5159, metadata !DIExpression()), !dbg !5165
  store i64 %min_value, ptr %min_value.addr, align 8, !tbaa !1287
  tail call void @llvm.dbg.declare(metadata ptr %min_value.addr, metadata !5160, metadata !DIExpression()), !dbg !5166
  call void @llvm.lifetime.start.p0(i64 8, ptr %o) #10, !dbg !5167
  tail call void @llvm.dbg.declare(metadata ptr %o, metadata !5161, metadata !DIExpression()), !dbg !5168
  %0 = load ptr, ptr %option_str.addr, align 8, !dbg !5169, !tbaa !743
  %1 = load ptr, ptr %description.addr, align 8, !dbg !5170, !tbaa !743
  %2 = load ptr, ptr %value.addr, align 8, !dbg !5171, !tbaa !743
  %3 = load i64, ptr %default_value.addr, align 8, !dbg !5172, !tbaa !1287
  %call = call ptr @gt_option_new_uword(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3), !dbg !5173
  store ptr %call, ptr %o, align 8, !dbg !5168, !tbaa !743
  %4 = load ptr, ptr %o, align 8, !dbg !5174, !tbaa !743
  %min_value_set = getelementptr inbounds %struct.GtOption, ptr %4, i32 0, i32 11, !dbg !5175
  store i8 1, ptr %min_value_set, align 1, !dbg !5176, !tbaa !2454
  %5 = load i64, ptr %min_value.addr, align 8, !dbg !5177, !tbaa !1287
  %6 = load ptr, ptr %o, align 8, !dbg !5178, !tbaa !743
  %min_value1 = getelementptr inbounds %struct.GtOption, ptr %6, i32 0, i32 6, !dbg !5179
  store i64 %5, ptr %min_value1, align 8, !dbg !5180, !tbaa !880
  %7 = load ptr, ptr %o, align 8, !dbg !5181, !tbaa !743
  call void @llvm.lifetime.end.p0(i64 8, ptr %o) #10, !dbg !5182
  ret ptr %7, !dbg !5183
}

; Function Attrs: nounwind uwtable
define ptr @gt_option_new_uword_min_max(ptr noundef %option_str, ptr noundef %description, ptr noundef %value, i64 noundef %default_value, i64 noundef %min_value, i64 noundef %max_value) #0 !dbg !5184 {
entry:
  %option_str.addr = alloca ptr, align 8
  %description.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  %default_value.addr = alloca i64, align 8
  %min_value.addr = alloca i64, align 8
  %max_value.addr = alloca i64, align 8
  %o = alloca ptr, align 8
  store ptr %option_str, ptr %option_str.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %option_str.addr, metadata !5188, metadata !DIExpression()), !dbg !5195
  store ptr %description, ptr %description.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %description.addr, metadata !5189, metadata !DIExpression()), !dbg !5196
  store ptr %value, ptr %value.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !5190, metadata !DIExpression()), !dbg !5197
  store i64 %default_value, ptr %default_value.addr, align 8, !tbaa !1287
  tail call void @llvm.dbg.declare(metadata ptr %default_value.addr, metadata !5191, metadata !DIExpression()), !dbg !5198
  store i64 %min_value, ptr %min_value.addr, align 8, !tbaa !1287
  tail call void @llvm.dbg.declare(metadata ptr %min_value.addr, metadata !5192, metadata !DIExpression()), !dbg !5199
  store i64 %max_value, ptr %max_value.addr, align 8, !tbaa !1287
  tail call void @llvm.dbg.declare(metadata ptr %max_value.addr, metadata !5193, metadata !DIExpression()), !dbg !5200
  call void @llvm.lifetime.start.p0(i64 8, ptr %o) #10, !dbg !5201
  tail call void @llvm.dbg.declare(metadata ptr %o, metadata !5194, metadata !DIExpression()), !dbg !5202
  %0 = load ptr, ptr %option_str.addr, align 8, !dbg !5203, !tbaa !743
  %1 = load ptr, ptr %description.addr, align 8, !dbg !5204, !tbaa !743
  %2 = load ptr, ptr %value.addr, align 8, !dbg !5205, !tbaa !743
  %3 = load i64, ptr %default_value.addr, align 8, !dbg !5206, !tbaa !1287
  %call = call ptr @gt_option_new_uword(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3), !dbg !5207
  store ptr %call, ptr %o, align 8, !dbg !5202, !tbaa !743
  %4 = load ptr, ptr %o, align 8, !dbg !5208, !tbaa !743
  %min_value_set = getelementptr inbounds %struct.GtOption, ptr %4, i32 0, i32 11, !dbg !5209
  store i8 1, ptr %min_value_set, align 1, !dbg !5210, !tbaa !2454
  %5 = load i64, ptr %min_value.addr, align 8, !dbg !5211, !tbaa !1287
  %6 = load ptr, ptr %o, align 8, !dbg !5212, !tbaa !743
  %min_value1 = getelementptr inbounds %struct.GtOption, ptr %6, i32 0, i32 6, !dbg !5213
  store i64 %5, ptr %min_value1, align 8, !dbg !5214, !tbaa !880
  %7 = load ptr, ptr %o, align 8, !dbg !5215, !tbaa !743
  %max_value_set = getelementptr inbounds %struct.GtOption, ptr %7, i32 0, i32 12, !dbg !5216
  store i8 1, ptr %max_value_set, align 4, !dbg !5217, !tbaa !2483
  %8 = load i64, ptr %max_value.addr, align 8, !dbg !5218, !tbaa !1287
  %9 = load ptr, ptr %o, align 8, !dbg !5219, !tbaa !743
  %max_value2 = getelementptr inbounds %struct.GtOption, ptr %9, i32 0, i32 7, !dbg !5220
  store i64 %8, ptr %max_value2, align 8, !dbg !5221, !tbaa !880
  %10 = load ptr, ptr %o, align 8, !dbg !5222, !tbaa !743
  call void @llvm.lifetime.end.p0(i64 8, ptr %o) #10, !dbg !5223
  ret ptr %10, !dbg !5224
}

; Function Attrs: nounwind uwtable
define ptr @gt_option_new_long(ptr noundef %option_str, ptr noundef %description, ptr noundef %value, i64 noundef %default_value) #0 !dbg !5225 {
entry:
  %option_str.addr = alloca ptr, align 8
  %description.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  %default_value.addr = alloca i64, align 8
  store ptr %option_str, ptr %option_str.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %option_str.addr, metadata !5227, metadata !DIExpression()), !dbg !5231
  store ptr %description, ptr %description.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %description.addr, metadata !5228, metadata !DIExpression()), !dbg !5232
  store ptr %value, ptr %value.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !5229, metadata !DIExpression()), !dbg !5233
  store i64 %default_value, ptr %default_value.addr, align 8, !tbaa !1287
  tail call void @llvm.dbg.declare(metadata ptr %default_value.addr, metadata !5230, metadata !DIExpression()), !dbg !5234
  %0 = load ptr, ptr %option_str.addr, align 8, !dbg !5235, !tbaa !743
  %1 = load ptr, ptr %description.addr, align 8, !dbg !5236, !tbaa !743
  %2 = load ptr, ptr %value.addr, align 8, !dbg !5237, !tbaa !743
  %3 = load i64, ptr %default_value.addr, align 8, !dbg !5238, !tbaa !1287
  %call = call ptr @gt_option_new_word(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3), !dbg !5239
  ret ptr %call, !dbg !5240
}

; Function Attrs: nounwind uwtable
define ptr @gt_option_new_ulong(ptr noundef %option_str, ptr noundef %description, ptr noundef %value, i64 noundef %default_value) #0 !dbg !5241 {
entry:
  %option_str.addr = alloca ptr, align 8
  %description.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  %default_value.addr = alloca i64, align 8
  store ptr %option_str, ptr %option_str.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %option_str.addr, metadata !5243, metadata !DIExpression()), !dbg !5247
  store ptr %description, ptr %description.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %description.addr, metadata !5244, metadata !DIExpression()), !dbg !5248
  store ptr %value, ptr %value.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !5245, metadata !DIExpression()), !dbg !5249
  store i64 %default_value, ptr %default_value.addr, align 8, !tbaa !1287
  tail call void @llvm.dbg.declare(metadata ptr %default_value.addr, metadata !5246, metadata !DIExpression()), !dbg !5250
  %0 = load ptr, ptr %option_str.addr, align 8, !dbg !5251, !tbaa !743
  %1 = load ptr, ptr %description.addr, align 8, !dbg !5252, !tbaa !743
  %2 = load ptr, ptr %value.addr, align 8, !dbg !5253, !tbaa !743
  %3 = load i64, ptr %default_value.addr, align 8, !dbg !5254, !tbaa !1287
  %call = call ptr @gt_option_new_uword(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3), !dbg !5255
  ret ptr %call, !dbg !5256
}

; Function Attrs: nounwind uwtable
define ptr @gt_option_new_ulong_min(ptr noundef %option_str, ptr noundef %description, ptr noundef %value, i64 noundef %default_value, i64 noundef %min_value) #0 !dbg !5257 {
entry:
  %option_str.addr = alloca ptr, align 8
  %description.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  %default_value.addr = alloca i64, align 8
  %min_value.addr = alloca i64, align 8
  store ptr %option_str, ptr %option_str.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %option_str.addr, metadata !5259, metadata !DIExpression()), !dbg !5264
  store ptr %description, ptr %description.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %description.addr, metadata !5260, metadata !DIExpression()), !dbg !5265
  store ptr %value, ptr %value.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !5261, metadata !DIExpression()), !dbg !5266
  store i64 %default_value, ptr %default_value.addr, align 8, !tbaa !1287
  tail call void @llvm.dbg.declare(metadata ptr %default_value.addr, metadata !5262, metadata !DIExpression()), !dbg !5267
  store i64 %min_value, ptr %min_value.addr, align 8, !tbaa !1287
  tail call void @llvm.dbg.declare(metadata ptr %min_value.addr, metadata !5263, metadata !DIExpression()), !dbg !5268
  %0 = load ptr, ptr %option_str.addr, align 8, !dbg !5269, !tbaa !743
  %1 = load ptr, ptr %description.addr, align 8, !dbg !5270, !tbaa !743
  %2 = load ptr, ptr %value.addr, align 8, !dbg !5271, !tbaa !743
  %3 = load i64, ptr %default_value.addr, align 8, !dbg !5272, !tbaa !1287
  %4 = load i64, ptr %min_value.addr, align 8, !dbg !5273, !tbaa !1287
  %call = call ptr @gt_option_new_uword_min(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4), !dbg !5274
  ret ptr %call, !dbg !5275
}

; Function Attrs: nounwind uwtable
define ptr @gt_option_new_ulong_min_max(ptr noundef %option_str, ptr noundef %description, ptr noundef %value, i64 noundef %default_value, i64 noundef %min_value, i64 noundef %max_value) #0 !dbg !5276 {
entry:
  %option_str.addr = alloca ptr, align 8
  %description.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  %default_value.addr = alloca i64, align 8
  %min_value.addr = alloca i64, align 8
  %max_value.addr = alloca i64, align 8
  store ptr %option_str, ptr %option_str.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %option_str.addr, metadata !5278, metadata !DIExpression()), !dbg !5284
  store ptr %description, ptr %description.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %description.addr, metadata !5279, metadata !DIExpression()), !dbg !5285
  store ptr %value, ptr %value.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !5280, metadata !DIExpression()), !dbg !5286
  store i64 %default_value, ptr %default_value.addr, align 8, !tbaa !1287
  tail call void @llvm.dbg.declare(metadata ptr %default_value.addr, metadata !5281, metadata !DIExpression()), !dbg !5287
  store i64 %min_value, ptr %min_value.addr, align 8, !tbaa !1287
  tail call void @llvm.dbg.declare(metadata ptr %min_value.addr, metadata !5282, metadata !DIExpression()), !dbg !5288
  store i64 %max_value, ptr %max_value.addr, align 8, !tbaa !1287
  tail call void @llvm.dbg.declare(metadata ptr %max_value.addr, metadata !5283, metadata !DIExpression()), !dbg !5289
  %0 = load ptr, ptr %option_str.addr, align 8, !dbg !5290, !tbaa !743
  %1 = load ptr, ptr %description.addr, align 8, !dbg !5291, !tbaa !743
  %2 = load ptr, ptr %value.addr, align 8, !dbg !5292, !tbaa !743
  %3 = load i64, ptr %default_value.addr, align 8, !dbg !5293, !tbaa !1287
  %4 = load i64, ptr %min_value.addr, align 8, !dbg !5294, !tbaa !1287
  %5 = load i64, ptr %max_value.addr, align 8, !dbg !5295, !tbaa !1287
  %call = call ptr @gt_option_new_uword_min_max(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5), !dbg !5296
  ret ptr %call, !dbg !5297
}

; Function Attrs: nounwind uwtable
define ptr @gt_option_new_range(ptr noundef %option_str, ptr noundef %description, ptr noundef %value, ptr noundef %default_value) #0 !dbg !5298 {
entry:
  %option_str.addr = alloca ptr, align 8
  %description.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  %default_value.addr = alloca ptr, align 8
  %o = alloca ptr, align 8
  store ptr %option_str, ptr %option_str.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %option_str.addr, metadata !5302, metadata !DIExpression()), !dbg !5307
  store ptr %description, ptr %description.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %description.addr, metadata !5303, metadata !DIExpression()), !dbg !5308
  store ptr %value, ptr %value.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !5304, metadata !DIExpression()), !dbg !5309
  store ptr %default_value, ptr %default_value.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %default_value.addr, metadata !5305, metadata !DIExpression()), !dbg !5310
  call void @llvm.lifetime.start.p0(i64 8, ptr %o) #10, !dbg !5311
  tail call void @llvm.dbg.declare(metadata ptr %o, metadata !5306, metadata !DIExpression()), !dbg !5312
  %0 = load ptr, ptr %option_str.addr, align 8, !dbg !5313, !tbaa !743
  %1 = load ptr, ptr %description.addr, align 8, !dbg !5314, !tbaa !743
  %2 = load ptr, ptr %value.addr, align 8, !dbg !5315, !tbaa !743
  %call = call ptr @gt_option_new(ptr noundef %0, ptr noundef %1, ptr noundef %2), !dbg !5316
  store ptr %call, ptr %o, align 8, !dbg !5312, !tbaa !743
  %3 = load ptr, ptr %o, align 8, !dbg !5317, !tbaa !743
  %option_type = getelementptr inbounds %struct.GtOption, ptr %3, i32 0, i32 0, !dbg !5318
  store i32 11, ptr %option_type, align 8, !dbg !5319, !tbaa !1391
  %4 = load ptr, ptr %default_value.addr, align 8, !dbg !5320, !tbaa !743
  %tobool = icmp ne ptr %4, null, !dbg !5320
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !5320

cond.true:                                        ; preds = %entry
  %5 = load ptr, ptr %default_value.addr, align 8, !dbg !5321, !tbaa !743
  %start = getelementptr inbounds %struct.GtRange, ptr %5, i32 0, i32 0, !dbg !5322
  %6 = load i64, ptr %start, align 8, !dbg !5322, !tbaa !2946
  br label %cond.end, !dbg !5320

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !5320

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %6, %cond.true ], [ -1, %cond.false ], !dbg !5320
  %7 = load ptr, ptr %o, align 8, !dbg !5323, !tbaa !743
  %default_value1 = getelementptr inbounds %struct.GtOption, ptr %7, i32 0, i32 4, !dbg !5324
  %start2 = getelementptr inbounds %struct.GtRange, ptr %default_value1, i32 0, i32 0, !dbg !5325
  store i64 %cond, ptr %start2, align 8, !dbg !5326, !tbaa !880
  %8 = load ptr, ptr %default_value.addr, align 8, !dbg !5327, !tbaa !743
  %tobool3 = icmp ne ptr %8, null, !dbg !5327
  br i1 %tobool3, label %cond.true4, label %cond.false5, !dbg !5327

cond.true4:                                       ; preds = %cond.end
  %9 = load ptr, ptr %default_value.addr, align 8, !dbg !5328, !tbaa !743
  %end = getelementptr inbounds %struct.GtRange, ptr %9, i32 0, i32 1, !dbg !5329
  %10 = load i64, ptr %end, align 8, !dbg !5329, !tbaa !3014
  br label %cond.end6, !dbg !5327

cond.false5:                                      ; preds = %cond.end
  br label %cond.end6, !dbg !5327

cond.end6:                                        ; preds = %cond.false5, %cond.true4
  %cond7 = phi i64 [ %10, %cond.true4 ], [ -1, %cond.false5 ], !dbg !5327
  %11 = load ptr, ptr %o, align 8, !dbg !5330, !tbaa !743
  %default_value8 = getelementptr inbounds %struct.GtOption, ptr %11, i32 0, i32 4, !dbg !5331
  %end9 = getelementptr inbounds %struct.GtRange, ptr %default_value8, i32 0, i32 1, !dbg !5332
  store i64 %cond7, ptr %end9, align 8, !dbg !5333, !tbaa !880
  %12 = load ptr, ptr %o, align 8, !dbg !5334, !tbaa !743
  %default_value10 = getelementptr inbounds %struct.GtOption, ptr %12, i32 0, i32 4, !dbg !5335
  %start11 = getelementptr inbounds %struct.GtRange, ptr %default_value10, i32 0, i32 0, !dbg !5336
  %13 = load i64, ptr %start11, align 8, !dbg !5336, !tbaa !880
  %14 = load ptr, ptr %value.addr, align 8, !dbg !5337, !tbaa !743
  %start12 = getelementptr inbounds %struct.GtRange, ptr %14, i32 0, i32 0, !dbg !5338
  store i64 %13, ptr %start12, align 8, !dbg !5339, !tbaa !2946
  %15 = load ptr, ptr %o, align 8, !dbg !5340, !tbaa !743
  %default_value13 = getelementptr inbounds %struct.GtOption, ptr %15, i32 0, i32 4, !dbg !5341
  %end14 = getelementptr inbounds %struct.GtRange, ptr %default_value13, i32 0, i32 1, !dbg !5342
  %16 = load i64, ptr %end14, align 8, !dbg !5342, !tbaa !880
  %17 = load ptr, ptr %value.addr, align 8, !dbg !5343, !tbaa !743
  %end15 = getelementptr inbounds %struct.GtRange, ptr %17, i32 0, i32 1, !dbg !5344
  store i64 %16, ptr %end15, align 8, !dbg !5345, !tbaa !3014
  %18 = load ptr, ptr %o, align 8, !dbg !5346, !tbaa !743
  call void @llvm.lifetime.end.p0(i64 8, ptr %o) #10, !dbg !5347
  ret ptr %18, !dbg !5348
}

; Function Attrs: nounwind uwtable
define ptr @gt_option_new_range_min_max(ptr noundef %option_str, ptr noundef %description, ptr noundef %value, ptr noundef %default_value, i64 noundef %min_value, i64 noundef %max_value) #0 !dbg !5349 {
entry:
  %option_str.addr = alloca ptr, align 8
  %description.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  %default_value.addr = alloca ptr, align 8
  %min_value.addr = alloca i64, align 8
  %max_value.addr = alloca i64, align 8
  %o = alloca ptr, align 8
  store ptr %option_str, ptr %option_str.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %option_str.addr, metadata !5353, metadata !DIExpression()), !dbg !5360
  store ptr %description, ptr %description.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %description.addr, metadata !5354, metadata !DIExpression()), !dbg !5361
  store ptr %value, ptr %value.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !5355, metadata !DIExpression()), !dbg !5362
  store ptr %default_value, ptr %default_value.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %default_value.addr, metadata !5356, metadata !DIExpression()), !dbg !5363
  store i64 %min_value, ptr %min_value.addr, align 8, !tbaa !1287
  tail call void @llvm.dbg.declare(metadata ptr %min_value.addr, metadata !5357, metadata !DIExpression()), !dbg !5364
  store i64 %max_value, ptr %max_value.addr, align 8, !tbaa !1287
  tail call void @llvm.dbg.declare(metadata ptr %max_value.addr, metadata !5358, metadata !DIExpression()), !dbg !5365
  call void @llvm.lifetime.start.p0(i64 8, ptr %o) #10, !dbg !5366
  tail call void @llvm.dbg.declare(metadata ptr %o, metadata !5359, metadata !DIExpression()), !dbg !5367
  %0 = load ptr, ptr %option_str.addr, align 8, !dbg !5368, !tbaa !743
  %1 = load ptr, ptr %description.addr, align 8, !dbg !5369, !tbaa !743
  %2 = load ptr, ptr %value.addr, align 8, !dbg !5370, !tbaa !743
  %3 = load ptr, ptr %default_value.addr, align 8, !dbg !5371, !tbaa !743
  %call = call ptr @gt_option_new_range(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3), !dbg !5372
  store ptr %call, ptr %o, align 8, !dbg !5367, !tbaa !743
  %4 = load ptr, ptr %o, align 8, !dbg !5373, !tbaa !743
  %min_value_set = getelementptr inbounds %struct.GtOption, ptr %4, i32 0, i32 11, !dbg !5374
  store i8 1, ptr %min_value_set, align 1, !dbg !5375, !tbaa !2454
  %5 = load i64, ptr %min_value.addr, align 8, !dbg !5376, !tbaa !1287
  %6 = load ptr, ptr %o, align 8, !dbg !5377, !tbaa !743
  %min_value1 = getelementptr inbounds %struct.GtOption, ptr %6, i32 0, i32 6, !dbg !5378
  store i64 %5, ptr %min_value1, align 8, !dbg !5379, !tbaa !880
  %7 = load ptr, ptr %o, align 8, !dbg !5380, !tbaa !743
  %max_value_set = getelementptr inbounds %struct.GtOption, ptr %7, i32 0, i32 12, !dbg !5381
  store i8 1, ptr %max_value_set, align 4, !dbg !5382, !tbaa !2483
  %8 = load i64, ptr %max_value.addr, align 8, !dbg !5383, !tbaa !1287
  %9 = load ptr, ptr %o, align 8, !dbg !5384, !tbaa !743
  %max_value2 = getelementptr inbounds %struct.GtOption, ptr %9, i32 0, i32 7, !dbg !5385
  store i64 %8, ptr %max_value2, align 8, !dbg !5386, !tbaa !880
  %10 = load ptr, ptr %o, align 8, !dbg !5387, !tbaa !743
  call void @llvm.lifetime.end.p0(i64 8, ptr %o) #10, !dbg !5388
  ret ptr %10, !dbg !5389
}

; Function Attrs: nounwind uwtable
define ptr @gt_option_new_string(ptr noundef %option_str, ptr noundef %description, ptr noundef %value, ptr noundef %default_value) #0 !dbg !5390 {
entry:
  %option_str.addr = alloca ptr, align 8
  %description.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  %default_value.addr = alloca ptr, align 8
  %o = alloca ptr, align 8
  store ptr %option_str, ptr %option_str.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %option_str.addr, metadata !5394, metadata !DIExpression()), !dbg !5399
  store ptr %description, ptr %description.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %description.addr, metadata !5395, metadata !DIExpression()), !dbg !5400
  store ptr %value, ptr %value.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !5396, metadata !DIExpression()), !dbg !5401
  store ptr %default_value, ptr %default_value.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %default_value.addr, metadata !5397, metadata !DIExpression()), !dbg !5402
  call void @llvm.lifetime.start.p0(i64 8, ptr %o) #10, !dbg !5403
  tail call void @llvm.dbg.declare(metadata ptr %o, metadata !5398, metadata !DIExpression()), !dbg !5404
  %0 = load ptr, ptr %option_str.addr, align 8, !dbg !5405, !tbaa !743
  %1 = load ptr, ptr %description.addr, align 8, !dbg !5406, !tbaa !743
  %2 = load ptr, ptr %value.addr, align 8, !dbg !5407, !tbaa !743
  %call = call ptr @gt_option_new(ptr noundef %0, ptr noundef %1, ptr noundef %2), !dbg !5408
  store ptr %call, ptr %o, align 8, !dbg !5404, !tbaa !743
  %3 = load ptr, ptr %o, align 8, !dbg !5409, !tbaa !743
  %option_type = getelementptr inbounds %struct.GtOption, ptr %3, i32 0, i32 0, !dbg !5410
  store i32 12, ptr %option_type, align 8, !dbg !5411, !tbaa !1391
  %4 = load ptr, ptr %default_value.addr, align 8, !dbg !5412, !tbaa !743
  %5 = load ptr, ptr %o, align 8, !dbg !5413, !tbaa !743
  %default_value1 = getelementptr inbounds %struct.GtOption, ptr %5, i32 0, i32 4, !dbg !5414
  store ptr %4, ptr %default_value1, align 8, !dbg !5415, !tbaa !880
  %6 = load ptr, ptr %value.addr, align 8, !dbg !5416, !tbaa !743
  %7 = load ptr, ptr %default_value.addr, align 8, !dbg !5417, !tbaa !743
  call void @gt_str_set(ptr noundef %6, ptr noundef %7), !dbg !5418
  %8 = load ptr, ptr %o, align 8, !dbg !5419, !tbaa !743
  call void @llvm.lifetime.end.p0(i64 8, ptr %o) #10, !dbg !5420
  ret ptr %8, !dbg !5421
}

; Function Attrs: nounwind uwtable
define ptr @gt_option_new_string_array(ptr noundef %option_str, ptr noundef %description, ptr noundef %value) #0 !dbg !5422 {
entry:
  %option_str.addr = alloca ptr, align 8
  %description.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  %o = alloca ptr, align 8
  store ptr %option_str, ptr %option_str.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %option_str.addr, metadata !5426, metadata !DIExpression()), !dbg !5430
  store ptr %description, ptr %description.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %description.addr, metadata !5427, metadata !DIExpression()), !dbg !5431
  store ptr %value, ptr %value.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !5428, metadata !DIExpression()), !dbg !5432
  call void @llvm.lifetime.start.p0(i64 8, ptr %o) #10, !dbg !5433
  tail call void @llvm.dbg.declare(metadata ptr %o, metadata !5429, metadata !DIExpression()), !dbg !5434
  %0 = load ptr, ptr %option_str.addr, align 8, !dbg !5435, !tbaa !743
  %1 = load ptr, ptr %description.addr, align 8, !dbg !5436, !tbaa !743
  %2 = load ptr, ptr %value.addr, align 8, !dbg !5437, !tbaa !743
  %call = call ptr @gt_option_new(ptr noundef %0, ptr noundef %1, ptr noundef %2), !dbg !5438
  store ptr %call, ptr %o, align 8, !dbg !5434, !tbaa !743
  %3 = load ptr, ptr %o, align 8, !dbg !5439, !tbaa !743
  %option_type = getelementptr inbounds %struct.GtOption, ptr %3, i32 0, i32 0, !dbg !5440
  store i32 13, ptr %option_type, align 8, !dbg !5441, !tbaa !1391
  %4 = load ptr, ptr %o, align 8, !dbg !5442, !tbaa !743
  call void @llvm.lifetime.end.p0(i64 8, ptr %o) #10, !dbg !5443
  ret ptr %4, !dbg !5444
}

; Function Attrs: nounwind uwtable
define ptr @gt_option_new_filename(ptr noundef %option_str, ptr noundef %description, ptr noundef %filename) #0 !dbg !5445 {
entry:
  %option_str.addr = alloca ptr, align 8
  %description.addr = alloca ptr, align 8
  %filename.addr = alloca ptr, align 8
  %o = alloca ptr, align 8
  store ptr %option_str, ptr %option_str.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %option_str.addr, metadata !5449, metadata !DIExpression()), !dbg !5453
  store ptr %description, ptr %description.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %description.addr, metadata !5450, metadata !DIExpression()), !dbg !5454
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %filename.addr, metadata !5451, metadata !DIExpression()), !dbg !5455
  call void @llvm.lifetime.start.p0(i64 8, ptr %o) #10, !dbg !5456
  tail call void @llvm.dbg.declare(metadata ptr %o, metadata !5452, metadata !DIExpression()), !dbg !5457
  %0 = load ptr, ptr %option_str.addr, align 8, !dbg !5458, !tbaa !743
  %1 = load ptr, ptr %description.addr, align 8, !dbg !5459, !tbaa !743
  %2 = load ptr, ptr %filename.addr, align 8, !dbg !5460, !tbaa !743
  %call = call ptr @gt_option_new(ptr noundef %0, ptr noundef %1, ptr noundef %2), !dbg !5461
  store ptr %call, ptr %o, align 8, !dbg !5457, !tbaa !743
  %3 = load ptr, ptr %o, align 8, !dbg !5462, !tbaa !743
  %option_type = getelementptr inbounds %struct.GtOption, ptr %3, i32 0, i32 0, !dbg !5463
  store i32 3, ptr %option_type, align 8, !dbg !5464, !tbaa !1391
  %4 = load ptr, ptr %o, align 8, !dbg !5465, !tbaa !743
  %default_value = getelementptr inbounds %struct.GtOption, ptr %4, i32 0, i32 4, !dbg !5466
  store ptr null, ptr %default_value, align 8, !dbg !5467, !tbaa !880
  %5 = load ptr, ptr %filename.addr, align 8, !dbg !5468, !tbaa !743
  call void @gt_str_reset(ptr noundef %5), !dbg !5469
  %6 = load ptr, ptr %o, align 8, !dbg !5470, !tbaa !743
  call void @llvm.lifetime.end.p0(i64 8, ptr %o) #10, !dbg !5471
  ret ptr %6, !dbg !5472
}

; Function Attrs: nounwind uwtable
define ptr @gt_option_new_filename_array(ptr noundef %option_str, ptr noundef %description, ptr noundef %filenames) #0 !dbg !5473 {
entry:
  %option_str.addr = alloca ptr, align 8
  %description.addr = alloca ptr, align 8
  %filenames.addr = alloca ptr, align 8
  store ptr %option_str, ptr %option_str.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %option_str.addr, metadata !5475, metadata !DIExpression()), !dbg !5478
  store ptr %description, ptr %description.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %description.addr, metadata !5476, metadata !DIExpression()), !dbg !5479
  store ptr %filenames, ptr %filenames.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %filenames.addr, metadata !5477, metadata !DIExpression()), !dbg !5480
  %0 = load ptr, ptr %option_str.addr, align 8, !dbg !5481, !tbaa !743
  %1 = load ptr, ptr %description.addr, align 8, !dbg !5482, !tbaa !743
  %2 = load ptr, ptr %filenames.addr, align 8, !dbg !5483, !tbaa !743
  %call = call ptr @gt_option_new_string_array(ptr noundef %0, ptr noundef %1, ptr noundef %2), !dbg !5484
  ret ptr %call, !dbg !5485
}

; Function Attrs: nounwind uwtable
define ptr @gt_option_new_choice(ptr noundef %option_str, ptr noundef %description, ptr noundef %value, ptr noundef %default_value, ptr noundef %domain) #0 !dbg !5486 {
entry:
  %option_str.addr = alloca ptr, align 8
  %description.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  %default_value.addr = alloca ptr, align 8
  %domain.addr = alloca ptr, align 8
  %o = alloca ptr, align 8
  %in_domain = alloca i64, align 8
  store ptr %option_str, ptr %option_str.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %option_str.addr, metadata !5490, metadata !DIExpression()), !dbg !5497
  store ptr %description, ptr %description.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %description.addr, metadata !5491, metadata !DIExpression()), !dbg !5498
  store ptr %value, ptr %value.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !5492, metadata !DIExpression()), !dbg !5499
  store ptr %default_value, ptr %default_value.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %default_value.addr, metadata !5493, metadata !DIExpression()), !dbg !5500
  store ptr %domain, ptr %domain.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %domain.addr, metadata !5494, metadata !DIExpression()), !dbg !5501
  call void @llvm.lifetime.start.p0(i64 8, ptr %o) #10, !dbg !5502
  tail call void @llvm.dbg.declare(metadata ptr %o, metadata !5495, metadata !DIExpression()), !dbg !5503
  call void @llvm.lifetime.start.p0(i64 8, ptr %in_domain) #10, !dbg !5504
  tail call void @llvm.dbg.declare(metadata ptr %in_domain, metadata !5496, metadata !DIExpression()), !dbg !5505
  store i64 1, ptr %in_domain, align 8, !dbg !5505, !tbaa !1287
  %0 = load ptr, ptr %default_value.addr, align 8, !dbg !5506, !tbaa !743
  %tobool = icmp ne ptr %0, null, !dbg !5506
  br i1 %tobool, label %if.then, label %if.else, !dbg !5508

if.then:                                          ; preds = %entry
  br label %while.cond, !dbg !5509

while.cond:                                       ; preds = %if.end, %if.then
  %1 = load ptr, ptr %domain.addr, align 8, !dbg !5511, !tbaa !743
  %2 = load i64, ptr %in_domain, align 8, !dbg !5512, !tbaa !1287
  %sub = sub i64 %2, 1, !dbg !5513
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 %sub, !dbg !5511
  %3 = load ptr, ptr %arrayidx, align 8, !dbg !5511, !tbaa !743
  %cmp = icmp ne ptr %3, null, !dbg !5514
  br i1 %cmp, label %while.body, label %while.end, !dbg !5509

while.body:                                       ; preds = %while.cond
  %4 = load ptr, ptr %domain.addr, align 8, !dbg !5515, !tbaa !743
  %5 = load i64, ptr %in_domain, align 8, !dbg !5518, !tbaa !1287
  %sub1 = sub i64 %5, 1, !dbg !5519
  %arrayidx2 = getelementptr inbounds ptr, ptr %4, i64 %sub1, !dbg !5515
  %6 = load ptr, ptr %arrayidx2, align 8, !dbg !5515, !tbaa !743
  %7 = load ptr, ptr %default_value.addr, align 8, !dbg !5520, !tbaa !743
  %cmp3 = icmp eq ptr %6, %7, !dbg !5521
  br i1 %cmp3, label %if.then4, label %if.end, !dbg !5522

if.then4:                                         ; preds = %while.body
  store i64 0, ptr %in_domain, align 8, !dbg !5523, !tbaa !1287
  br label %while.end, !dbg !5525

if.end:                                           ; preds = %while.body
  %8 = load i64, ptr %in_domain, align 8, !dbg !5526, !tbaa !1287
  %inc = add i64 %8, 1, !dbg !5526
  store i64 %inc, ptr %in_domain, align 8, !dbg !5526, !tbaa !1287
  br label %while.cond, !dbg !5509, !llvm.loop !5527

while.end:                                        ; preds = %if.then4, %while.cond
  br label %if.end5, !dbg !5529

if.else:                                          ; preds = %entry
  store i64 0, ptr %in_domain, align 8, !dbg !5530, !tbaa !1287
  br label %if.end5

if.end5:                                          ; preds = %if.else, %while.end
  br label %do.body, !dbg !5531

do.body:                                          ; preds = %if.end5
  %9 = load i64, ptr %in_domain, align 8, !dbg !5532, !tbaa !1287
  %tobool6 = icmp ne i64 %9, 0, !dbg !5532
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !5535

if.then7:                                         ; preds = %do.body
  %10 = load ptr, ptr @stderr, align 8, !dbg !5536, !tbaa !743
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef @.str, ptr noundef @.str.91, ptr noundef @__func__.gt_option_new_choice, ptr noundef @.str.2, i32 noundef 1839), !dbg !5536
  call void @abort() #9, !dbg !5536
  unreachable, !dbg !5536

if.end8:                                          ; preds = %do.body
  br label %do.cond, !dbg !5535

do.cond:                                          ; preds = %if.end8
  br label %do.end, !dbg !5535

do.end:                                           ; preds = %do.cond
  %11 = load ptr, ptr %option_str.addr, align 8, !dbg !5538, !tbaa !743
  %12 = load ptr, ptr %description.addr, align 8, !dbg !5539, !tbaa !743
  %13 = load ptr, ptr %value.addr, align 8, !dbg !5540, !tbaa !743
  %14 = load ptr, ptr %default_value.addr, align 8, !dbg !5541, !tbaa !743
  %call9 = call ptr @gt_option_new_string(ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef %14), !dbg !5542
  store ptr %call9, ptr %o, align 8, !dbg !5543, !tbaa !743
  %15 = load ptr, ptr %o, align 8, !dbg !5544, !tbaa !743
  %option_type = getelementptr inbounds %struct.GtOption, ptr %15, i32 0, i32 0, !dbg !5545
  store i32 1, ptr %option_type, align 8, !dbg !5546, !tbaa !1391
  %16 = load ptr, ptr %domain.addr, align 8, !dbg !5547, !tbaa !743
  %17 = load ptr, ptr %o, align 8, !dbg !5548, !tbaa !743
  %domain10 = getelementptr inbounds %struct.GtOption, ptr %17, i32 0, i32 5, !dbg !5549
  store ptr %16, ptr %domain10, align 8, !dbg !5550, !tbaa !2316
  %18 = load ptr, ptr %o, align 8, !dbg !5551, !tbaa !743
  call void @llvm.lifetime.end.p0(i64 8, ptr %in_domain) #10, !dbg !5552
  call void @llvm.lifetime.end.p0(i64 8, ptr %o) #10, !dbg !5552
  ret ptr %18, !dbg !5553
}

; Function Attrs: nounwind uwtable
define ptr @gt_option_get_name(ptr noundef %o) #0 !dbg !5554 {
entry:
  %o.addr = alloca ptr, align 8
  store ptr %o, ptr %o.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %o.addr, metadata !5560, metadata !DIExpression()), !dbg !5561
  br label %do.body, !dbg !5562

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %o.addr, align 8, !dbg !5563, !tbaa !743
  %tobool = icmp ne ptr %0, null, !dbg !5563
  br i1 %tobool, label %if.end, label %if.then, !dbg !5566

if.then:                                          ; preds = %do.body
  %1 = load ptr, ptr @stderr, align 8, !dbg !5567, !tbaa !743
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str, ptr noundef @.str.1, ptr noundef @__func__.gt_option_get_name, ptr noundef @.str.2, i32 noundef 1851), !dbg !5567
  call void @abort() #9, !dbg !5567
  unreachable, !dbg !5567

if.end:                                           ; preds = %do.body
  br label %do.end, !dbg !5566

do.end:                                           ; preds = %if.end
  %2 = load ptr, ptr %o.addr, align 8, !dbg !5569, !tbaa !743
  %option_str = getelementptr inbounds %struct.GtOption, ptr %2, i32 0, i32 1, !dbg !5570
  %3 = load ptr, ptr %option_str, align 8, !dbg !5570, !tbaa !979
  %call1 = call ptr @gt_str_get(ptr noundef %3), !dbg !5571
  ret ptr %call1, !dbg !5572
}

; Function Attrs: nounwind uwtable
define void @gt_option_is_mandatory(ptr noundef %o) #0 !dbg !5573 {
entry:
  %o.addr = alloca ptr, align 8
  store ptr %o, ptr %o.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %o.addr, metadata !5575, metadata !DIExpression()), !dbg !5576
  br label %do.body, !dbg !5577

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %o.addr, align 8, !dbg !5578, !tbaa !743
  %tobool = icmp ne ptr %0, null, !dbg !5578
  br i1 %tobool, label %if.end, label %if.then, !dbg !5581

if.then:                                          ; preds = %do.body
  %1 = load ptr, ptr @stderr, align 8, !dbg !5582, !tbaa !743
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str, ptr noundef @.str.1, ptr noundef @__func__.gt_option_is_mandatory, ptr noundef @.str.2, i32 noundef 1857), !dbg !5582
  call void @abort() #9, !dbg !5582
  unreachable, !dbg !5582

if.end:                                           ; preds = %do.body
  br label %do.end, !dbg !5581

do.end:                                           ; preds = %if.end
  %2 = load ptr, ptr %o.addr, align 8, !dbg !5584, !tbaa !743
  %is_mandatory = getelementptr inbounds %struct.GtOption, ptr %2, i32 0, i32 9, !dbg !5585
  store i8 1, ptr %is_mandatory, align 1, !dbg !5586, !tbaa !3966
  ret void, !dbg !5587
}

; Function Attrs: nounwind uwtable
define void @gt_option_is_mandatory_either(ptr noundef %o, ptr noundef %meo) #0 !dbg !5588 {
entry:
  %o.addr = alloca ptr, align 8
  %meo.addr = alloca ptr, align 8
  store ptr %o, ptr %o.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %o.addr, metadata !5592, metadata !DIExpression()), !dbg !5594
  store ptr %meo, ptr %meo.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %meo.addr, metadata !5593, metadata !DIExpression()), !dbg !5595
  br label %do.body, !dbg !5596

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %o.addr, align 8, !dbg !5597, !tbaa !743
  %tobool = icmp ne ptr %0, null, !dbg !5597
  br i1 %tobool, label %land.lhs.true, label %if.then, !dbg !5597

land.lhs.true:                                    ; preds = %do.body
  %1 = load ptr, ptr %meo.addr, align 8, !dbg !5597, !tbaa !743
  %tobool1 = icmp ne ptr %1, null, !dbg !5597
  br i1 %tobool1, label %if.end, label %if.then, !dbg !5600

if.then:                                          ; preds = %land.lhs.true, %do.body
  %2 = load ptr, ptr @stderr, align 8, !dbg !5601, !tbaa !743
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str, ptr noundef @.str.92, ptr noundef @__func__.gt_option_is_mandatory_either, ptr noundef @.str.2, i32 noundef 1863), !dbg !5601
  call void @abort() #9, !dbg !5601
  unreachable, !dbg !5601

if.end:                                           ; preds = %land.lhs.true
  br label %do.end, !dbg !5600

do.end:                                           ; preds = %if.end
  br label %do.body2, !dbg !5603

do.body2:                                         ; preds = %do.end
  %3 = load ptr, ptr %o.addr, align 8, !dbg !5604, !tbaa !743
  %mandatory_either_options = getelementptr inbounds %struct.GtOption, ptr %3, i32 0, i32 18, !dbg !5604
  %4 = load ptr, ptr %mandatory_either_options, align 8, !dbg !5604, !tbaa !4342
  %tobool3 = icmp ne ptr %4, null, !dbg !5604
  br i1 %tobool3, label %if.then4, label %if.end6, !dbg !5607

if.then4:                                         ; preds = %do.body2
  %5 = load ptr, ptr @stderr, align 8, !dbg !5608, !tbaa !743
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str, ptr noundef @.str.93, ptr noundef @__func__.gt_option_is_mandatory_either, ptr noundef @.str.2, i32 noundef 1864), !dbg !5608
  call void @abort() #9, !dbg !5608
  unreachable, !dbg !5608

if.end6:                                          ; preds = %do.body2
  br label %do.end7, !dbg !5607

do.end7:                                          ; preds = %if.end6
  %call8 = call ptr @gt_array_new(i64 noundef 8), !dbg !5610
  %6 = load ptr, ptr %o.addr, align 8, !dbg !5611, !tbaa !743
  %mandatory_either_options9 = getelementptr inbounds %struct.GtOption, ptr %6, i32 0, i32 18, !dbg !5612
  store ptr %call8, ptr %mandatory_either_options9, align 8, !dbg !5613, !tbaa !4342
  %7 = load ptr, ptr %o.addr, align 8, !dbg !5614, !tbaa !743
  %mandatory_either_options10 = getelementptr inbounds %struct.GtOption, ptr %7, i32 0, i32 18, !dbg !5614
  %8 = load ptr, ptr %mandatory_either_options10, align 8, !dbg !5614, !tbaa !4342
  call void @gt_array_add_elem(ptr noundef %8, ptr noundef %meo.addr, i64 noundef 8), !dbg !5614
  ret void, !dbg !5615
}

; Function Attrs: nounwind uwtable
define void @gt_option_is_mandatory_either_3(ptr noundef %o, ptr noundef %meo_a, ptr noundef %meo_b) #0 !dbg !5616 {
entry:
  %o.addr = alloca ptr, align 8
  %meo_a.addr = alloca ptr, align 8
  %meo_b.addr = alloca ptr, align 8
  store ptr %o, ptr %o.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %o.addr, metadata !5620, metadata !DIExpression()), !dbg !5623
  store ptr %meo_a, ptr %meo_a.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %meo_a.addr, metadata !5621, metadata !DIExpression()), !dbg !5624
  store ptr %meo_b, ptr %meo_b.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %meo_b.addr, metadata !5622, metadata !DIExpression()), !dbg !5625
  br label %do.body, !dbg !5626

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %o.addr, align 8, !dbg !5627, !tbaa !743
  %tobool = icmp ne ptr %0, null, !dbg !5627
  br i1 %tobool, label %land.lhs.true, label %if.then, !dbg !5627

land.lhs.true:                                    ; preds = %do.body
  %1 = load ptr, ptr %meo_a.addr, align 8, !dbg !5627, !tbaa !743
  %tobool1 = icmp ne ptr %1, null, !dbg !5627
  br i1 %tobool1, label %land.lhs.true2, label %if.then, !dbg !5627

land.lhs.true2:                                   ; preds = %land.lhs.true
  %2 = load ptr, ptr %meo_b.addr, align 8, !dbg !5627, !tbaa !743
  %tobool3 = icmp ne ptr %2, null, !dbg !5627
  br i1 %tobool3, label %if.end, label %if.then, !dbg !5630

if.then:                                          ; preds = %land.lhs.true2, %land.lhs.true, %do.body
  %3 = load ptr, ptr @stderr, align 8, !dbg !5631, !tbaa !743
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str, ptr noundef @.str.94, ptr noundef @__func__.gt_option_is_mandatory_either_3, ptr noundef @.str.2, i32 noundef 1872), !dbg !5631
  call void @abort() #9, !dbg !5631
  unreachable, !dbg !5631

if.end:                                           ; preds = %land.lhs.true2
  br label %do.end, !dbg !5630

do.end:                                           ; preds = %if.end
  br label %do.body4, !dbg !5633

do.body4:                                         ; preds = %do.end
  %4 = load ptr, ptr %o.addr, align 8, !dbg !5634, !tbaa !743
  %mandatory_either_options = getelementptr inbounds %struct.GtOption, ptr %4, i32 0, i32 18, !dbg !5634
  %5 = load ptr, ptr %mandatory_either_options, align 8, !dbg !5634, !tbaa !4342
  %tobool5 = icmp ne ptr %5, null, !dbg !5634
  br i1 %tobool5, label %if.then6, label %if.end8, !dbg !5637

if.then6:                                         ; preds = %do.body4
  %6 = load ptr, ptr @stderr, align 8, !dbg !5638, !tbaa !743
  %call7 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef @.str, ptr noundef @.str.93, ptr noundef @__func__.gt_option_is_mandatory_either_3, ptr noundef @.str.2, i32 noundef 1873), !dbg !5638
  call void @abort() #9, !dbg !5638
  unreachable, !dbg !5638

if.end8:                                          ; preds = %do.body4
  br label %do.end9, !dbg !5637

do.end9:                                          ; preds = %if.end8
  %call10 = call ptr @gt_array_new(i64 noundef 8), !dbg !5640
  %7 = load ptr, ptr %o.addr, align 8, !dbg !5641, !tbaa !743
  %mandatory_either_options11 = getelementptr inbounds %struct.GtOption, ptr %7, i32 0, i32 18, !dbg !5642
  store ptr %call10, ptr %mandatory_either_options11, align 8, !dbg !5643, !tbaa !4342
  %8 = load ptr, ptr %o.addr, align 8, !dbg !5644, !tbaa !743
  %mandatory_either_options12 = getelementptr inbounds %struct.GtOption, ptr %8, i32 0, i32 18, !dbg !5644
  %9 = load ptr, ptr %mandatory_either_options12, align 8, !dbg !5644, !tbaa !4342
  call void @gt_array_add_elem(ptr noundef %9, ptr noundef %meo_a.addr, i64 noundef 8), !dbg !5644
  %10 = load ptr, ptr %o.addr, align 8, !dbg !5645, !tbaa !743
  %mandatory_either_options13 = getelementptr inbounds %struct.GtOption, ptr %10, i32 0, i32 18, !dbg !5645
  %11 = load ptr, ptr %mandatory_either_options13, align 8, !dbg !5645, !tbaa !4342
  call void @gt_array_add_elem(ptr noundef %11, ptr noundef %meo_b.addr, i64 noundef 8), !dbg !5645
  ret void, !dbg !5646
}

; Function Attrs: nounwind uwtable
define void @gt_option_is_mandatory_either_4(ptr noundef %o, ptr noundef %meo_a, ptr noundef %meo_b, ptr noundef %meo_c) #0 !dbg !5647 {
entry:
  %o.addr = alloca ptr, align 8
  %meo_a.addr = alloca ptr, align 8
  %meo_b.addr = alloca ptr, align 8
  %meo_c.addr = alloca ptr, align 8
  store ptr %o, ptr %o.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %o.addr, metadata !5651, metadata !DIExpression()), !dbg !5655
  store ptr %meo_a, ptr %meo_a.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %meo_a.addr, metadata !5652, metadata !DIExpression()), !dbg !5656
  store ptr %meo_b, ptr %meo_b.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %meo_b.addr, metadata !5653, metadata !DIExpression()), !dbg !5657
  store ptr %meo_c, ptr %meo_c.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %meo_c.addr, metadata !5654, metadata !DIExpression()), !dbg !5658
  br label %do.body, !dbg !5659

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %o.addr, align 8, !dbg !5660, !tbaa !743
  %tobool = icmp ne ptr %0, null, !dbg !5660
  br i1 %tobool, label %land.lhs.true, label %if.then, !dbg !5660

land.lhs.true:                                    ; preds = %do.body
  %1 = load ptr, ptr %meo_a.addr, align 8, !dbg !5660, !tbaa !743
  %tobool1 = icmp ne ptr %1, null, !dbg !5660
  br i1 %tobool1, label %land.lhs.true2, label %if.then, !dbg !5660

land.lhs.true2:                                   ; preds = %land.lhs.true
  %2 = load ptr, ptr %meo_b.addr, align 8, !dbg !5660, !tbaa !743
  %tobool3 = icmp ne ptr %2, null, !dbg !5660
  br i1 %tobool3, label %if.end, label %if.then, !dbg !5663

if.then:                                          ; preds = %land.lhs.true2, %land.lhs.true, %do.body
  %3 = load ptr, ptr @stderr, align 8, !dbg !5664, !tbaa !743
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str, ptr noundef @.str.94, ptr noundef @__func__.gt_option_is_mandatory_either_4, ptr noundef @.str.2, i32 noundef 1883), !dbg !5664
  call void @abort() #9, !dbg !5664
  unreachable, !dbg !5664

if.end:                                           ; preds = %land.lhs.true2
  br label %do.end, !dbg !5663

do.end:                                           ; preds = %if.end
  br label %do.body4, !dbg !5666

do.body4:                                         ; preds = %do.end
  %4 = load ptr, ptr %o.addr, align 8, !dbg !5667, !tbaa !743
  %mandatory_either_options = getelementptr inbounds %struct.GtOption, ptr %4, i32 0, i32 18, !dbg !5667
  %5 = load ptr, ptr %mandatory_either_options, align 8, !dbg !5667, !tbaa !4342
  %tobool5 = icmp ne ptr %5, null, !dbg !5667
  br i1 %tobool5, label %if.then6, label %if.end8, !dbg !5670

if.then6:                                         ; preds = %do.body4
  %6 = load ptr, ptr @stderr, align 8, !dbg !5671, !tbaa !743
  %call7 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef @.str, ptr noundef @.str.93, ptr noundef @__func__.gt_option_is_mandatory_either_4, ptr noundef @.str.2, i32 noundef 1884), !dbg !5671
  call void @abort() #9, !dbg !5671
  unreachable, !dbg !5671

if.end8:                                          ; preds = %do.body4
  br label %do.end9, !dbg !5670

do.end9:                                          ; preds = %if.end8
  %call10 = call ptr @gt_array_new(i64 noundef 8), !dbg !5673
  %7 = load ptr, ptr %o.addr, align 8, !dbg !5674, !tbaa !743
  %mandatory_either_options11 = getelementptr inbounds %struct.GtOption, ptr %7, i32 0, i32 18, !dbg !5675
  store ptr %call10, ptr %mandatory_either_options11, align 8, !dbg !5676, !tbaa !4342
  %8 = load ptr, ptr %o.addr, align 8, !dbg !5677, !tbaa !743
  %mandatory_either_options12 = getelementptr inbounds %struct.GtOption, ptr %8, i32 0, i32 18, !dbg !5677
  %9 = load ptr, ptr %mandatory_either_options12, align 8, !dbg !5677, !tbaa !4342
  call void @gt_array_add_elem(ptr noundef %9, ptr noundef %meo_a.addr, i64 noundef 8), !dbg !5677
  %10 = load ptr, ptr %o.addr, align 8, !dbg !5678, !tbaa !743
  %mandatory_either_options13 = getelementptr inbounds %struct.GtOption, ptr %10, i32 0, i32 18, !dbg !5678
  %11 = load ptr, ptr %mandatory_either_options13, align 8, !dbg !5678, !tbaa !4342
  call void @gt_array_add_elem(ptr noundef %11, ptr noundef %meo_b.addr, i64 noundef 8), !dbg !5678
  %12 = load ptr, ptr %o.addr, align 8, !dbg !5679, !tbaa !743
  %mandatory_either_options14 = getelementptr inbounds %struct.GtOption, ptr %12, i32 0, i32 18, !dbg !5679
  %13 = load ptr, ptr %mandatory_either_options14, align 8, !dbg !5679, !tbaa !4342
  call void @gt_array_add_elem(ptr noundef %13, ptr noundef %meo_c.addr, i64 noundef 8), !dbg !5679
  ret void, !dbg !5680
}

; Function Attrs: nounwind uwtable
define void @gt_option_is_extended_option(ptr noundef %o) #0 !dbg !5681 {
entry:
  %o.addr = alloca ptr, align 8
  store ptr %o, ptr %o.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %o.addr, metadata !5683, metadata !DIExpression()), !dbg !5684
  br label %do.body, !dbg !5685

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %o.addr, align 8, !dbg !5686, !tbaa !743
  %tobool = icmp ne ptr %0, null, !dbg !5686
  br i1 %tobool, label %if.end, label %if.then, !dbg !5689

if.then:                                          ; preds = %do.body
  %1 = load ptr, ptr @stderr, align 8, !dbg !5690, !tbaa !743
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str, ptr noundef @.str.1, ptr noundef @__func__.gt_option_is_extended_option, ptr noundef @.str.2, i32 noundef 1893), !dbg !5690
  call void @abort() #9, !dbg !5690
  unreachable, !dbg !5690

if.end:                                           ; preds = %do.body
  br label %do.end, !dbg !5689

do.end:                                           ; preds = %if.end
  %2 = load ptr, ptr %o.addr, align 8, !dbg !5692, !tbaa !743
  %is_extended_option = getelementptr inbounds %struct.GtOption, ptr %2, i32 0, i32 13, !dbg !5693
  store i8 1, ptr %is_extended_option, align 1, !dbg !5694, !tbaa !3547
  ret void, !dbg !5695
}

; Function Attrs: nounwind uwtable
define void @gt_option_is_development_option(ptr noundef %o) #0 !dbg !5696 {
entry:
  %o.addr = alloca ptr, align 8
  store ptr %o, ptr %o.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %o.addr, metadata !5698, metadata !DIExpression()), !dbg !5699
  br label %do.body, !dbg !5700

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %o.addr, align 8, !dbg !5701, !tbaa !743
  %tobool = icmp ne ptr %0, null, !dbg !5701
  br i1 %tobool, label %if.end, label %if.then, !dbg !5704

if.then:                                          ; preds = %do.body
  %1 = load ptr, ptr @stderr, align 8, !dbg !5705, !tbaa !743
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str, ptr noundef @.str.1, ptr noundef @__func__.gt_option_is_development_option, ptr noundef @.str.2, i32 noundef 1899), !dbg !5705
  call void @abort() #9, !dbg !5705
  unreachable, !dbg !5705

if.end:                                           ; preds = %do.body
  br label %do.end, !dbg !5704

do.end:                                           ; preds = %if.end
  %2 = load ptr, ptr %o.addr, align 8, !dbg !5707, !tbaa !743
  %is_development_option = getelementptr inbounds %struct.GtOption, ptr %2, i32 0, i32 14, !dbg !5708
  store i8 1, ptr %is_development_option, align 2, !dbg !5709, !tbaa !1376
  ret void, !dbg !5710
}

; Function Attrs: nounwind uwtable
define void @gt_option_imply(ptr noundef %o, ptr noundef %implied_option) #0 !dbg !5711 {
entry:
  %o.addr = alloca ptr, align 8
  %implied_option.addr = alloca ptr, align 8
  %option_array = alloca ptr, align 8
  store ptr %o, ptr %o.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %o.addr, metadata !5713, metadata !DIExpression()), !dbg !5716
  store ptr %implied_option, ptr %implied_option.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %implied_option.addr, metadata !5714, metadata !DIExpression()), !dbg !5717
  call void @llvm.lifetime.start.p0(i64 8, ptr %option_array) #10, !dbg !5718
  tail call void @llvm.dbg.declare(metadata ptr %option_array, metadata !5715, metadata !DIExpression()), !dbg !5719
  br label %do.body, !dbg !5720

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %o.addr, align 8, !dbg !5721, !tbaa !743
  %tobool = icmp ne ptr %0, null, !dbg !5721
  br i1 %tobool, label %land.lhs.true, label %if.then, !dbg !5721

land.lhs.true:                                    ; preds = %do.body
  %1 = load ptr, ptr %implied_option.addr, align 8, !dbg !5721, !tbaa !743
  %tobool1 = icmp ne ptr %1, null, !dbg !5721
  br i1 %tobool1, label %if.end, label %if.then, !dbg !5724

if.then:                                          ; preds = %land.lhs.true, %do.body
  %2 = load ptr, ptr @stderr, align 8, !dbg !5725, !tbaa !743
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str, ptr noundef @.str.95, ptr noundef @__func__.gt_option_imply, ptr noundef @.str.2, i32 noundef 1906), !dbg !5725
  call void @abort() #9, !dbg !5725
  unreachable, !dbg !5725

if.end:                                           ; preds = %land.lhs.true
  br label %do.cond, !dbg !5724

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !5724

do.end:                                           ; preds = %do.cond
  %3 = load ptr, ptr %o.addr, align 8, !dbg !5727, !tbaa !743
  %implications = getelementptr inbounds %struct.GtOption, ptr %3, i32 0, i32 16, !dbg !5729
  %4 = load ptr, ptr %implications, align 8, !dbg !5729, !tbaa !4041
  %tobool2 = icmp ne ptr %4, null, !dbg !5727
  br i1 %tobool2, label %if.end6, label %if.then3, !dbg !5730

if.then3:                                         ; preds = %do.end
  %call4 = call ptr @gt_array_new(i64 noundef 8), !dbg !5731
  %5 = load ptr, ptr %o.addr, align 8, !dbg !5732, !tbaa !743
  %implications5 = getelementptr inbounds %struct.GtOption, ptr %5, i32 0, i32 16, !dbg !5733
  store ptr %call4, ptr %implications5, align 8, !dbg !5734, !tbaa !4041
  br label %if.end6, !dbg !5732

if.end6:                                          ; preds = %if.then3, %do.end
  %call7 = call ptr @gt_array_new(i64 noundef 8), !dbg !5735
  store ptr %call7, ptr %option_array, align 8, !dbg !5736, !tbaa !743
  %6 = load ptr, ptr %option_array, align 8, !dbg !5737, !tbaa !743
  call void @gt_array_add_elem(ptr noundef %6, ptr noundef %implied_option.addr, i64 noundef 8), !dbg !5737
  %7 = load ptr, ptr %o.addr, align 8, !dbg !5738, !tbaa !743
  %implications8 = getelementptr inbounds %struct.GtOption, ptr %7, i32 0, i32 16, !dbg !5738
  %8 = load ptr, ptr %implications8, align 8, !dbg !5738, !tbaa !4041
  call void @gt_array_add_elem(ptr noundef %8, ptr noundef %option_array, i64 noundef 8), !dbg !5738
  call void @llvm.lifetime.end.p0(i64 8, ptr %option_array) #10, !dbg !5739
  ret void, !dbg !5739
}

; Function Attrs: nounwind uwtable
define void @gt_option_imply_either_2(ptr noundef %o, ptr noundef %io1, ptr noundef %io2) #0 !dbg !5740 {
entry:
  %o.addr = alloca ptr, align 8
  %io1.addr = alloca ptr, align 8
  %io2.addr = alloca ptr, align 8
  %option_array = alloca ptr, align 8
  store ptr %o, ptr %o.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %o.addr, metadata !5742, metadata !DIExpression()), !dbg !5746
  store ptr %io1, ptr %io1.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %io1.addr, metadata !5743, metadata !DIExpression()), !dbg !5747
  store ptr %io2, ptr %io2.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %io2.addr, metadata !5744, metadata !DIExpression()), !dbg !5748
  call void @llvm.lifetime.start.p0(i64 8, ptr %option_array) #10, !dbg !5749
  tail call void @llvm.dbg.declare(metadata ptr %option_array, metadata !5745, metadata !DIExpression()), !dbg !5750
  br label %do.body, !dbg !5751

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %o.addr, align 8, !dbg !5752, !tbaa !743
  %tobool = icmp ne ptr %0, null, !dbg !5752
  br i1 %tobool, label %land.lhs.true, label %if.then, !dbg !5752

land.lhs.true:                                    ; preds = %do.body
  %1 = load ptr, ptr %io1.addr, align 8, !dbg !5752, !tbaa !743
  %tobool1 = icmp ne ptr %1, null, !dbg !5752
  br i1 %tobool1, label %land.lhs.true2, label %if.then, !dbg !5752

land.lhs.true2:                                   ; preds = %land.lhs.true
  %2 = load ptr, ptr %io2.addr, align 8, !dbg !5752, !tbaa !743
  %tobool3 = icmp ne ptr %2, null, !dbg !5752
  br i1 %tobool3, label %if.end, label %if.then, !dbg !5755

if.then:                                          ; preds = %land.lhs.true2, %land.lhs.true, %do.body
  %3 = load ptr, ptr @stderr, align 8, !dbg !5756, !tbaa !743
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str, ptr noundef @.str.96, ptr noundef @__func__.gt_option_imply_either_2, ptr noundef @.str.2, i32 noundef 1918), !dbg !5756
  call void @abort() #9, !dbg !5756
  unreachable, !dbg !5756

if.end:                                           ; preds = %land.lhs.true2
  br label %do.cond, !dbg !5755

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !5755

do.end:                                           ; preds = %do.cond
  %4 = load ptr, ptr %o.addr, align 8, !dbg !5758, !tbaa !743
  %implications = getelementptr inbounds %struct.GtOption, ptr %4, i32 0, i32 16, !dbg !5760
  %5 = load ptr, ptr %implications, align 8, !dbg !5760, !tbaa !4041
  %tobool4 = icmp ne ptr %5, null, !dbg !5758
  br i1 %tobool4, label %if.end8, label %if.then5, !dbg !5761

if.then5:                                         ; preds = %do.end
  %call6 = call ptr @gt_array_new(i64 noundef 8), !dbg !5762
  %6 = load ptr, ptr %o.addr, align 8, !dbg !5763, !tbaa !743
  %implications7 = getelementptr inbounds %struct.GtOption, ptr %6, i32 0, i32 16, !dbg !5764
  store ptr %call6, ptr %implications7, align 8, !dbg !5765, !tbaa !4041
  br label %if.end8, !dbg !5763

if.end8:                                          ; preds = %if.then5, %do.end
  %call9 = call ptr @gt_array_new(i64 noundef 8), !dbg !5766
  store ptr %call9, ptr %option_array, align 8, !dbg !5767, !tbaa !743
  %7 = load ptr, ptr %option_array, align 8, !dbg !5768, !tbaa !743
  call void @gt_array_add_elem(ptr noundef %7, ptr noundef %io1.addr, i64 noundef 8), !dbg !5768
  %8 = load ptr, ptr %option_array, align 8, !dbg !5769, !tbaa !743
  call void @gt_array_add_elem(ptr noundef %8, ptr noundef %io2.addr, i64 noundef 8), !dbg !5769
  %9 = load ptr, ptr %o.addr, align 8, !dbg !5770, !tbaa !743
  %implications10 = getelementptr inbounds %struct.GtOption, ptr %9, i32 0, i32 16, !dbg !5770
  %10 = load ptr, ptr %implications10, align 8, !dbg !5770, !tbaa !4041
  call void @gt_array_add_elem(ptr noundef %10, ptr noundef %option_array, i64 noundef 8), !dbg !5770
  call void @llvm.lifetime.end.p0(i64 8, ptr %option_array) #10, !dbg !5771
  ret void, !dbg !5771
}

; Function Attrs: nounwind uwtable
define void @gt_option_imply_either_3(ptr noundef %o, ptr noundef %io1, ptr noundef %io2, ptr noundef %io3) #0 !dbg !5772 {
entry:
  %o.addr = alloca ptr, align 8
  %io1.addr = alloca ptr, align 8
  %io2.addr = alloca ptr, align 8
  %io3.addr = alloca ptr, align 8
  %option_array = alloca ptr, align 8
  store ptr %o, ptr %o.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %o.addr, metadata !5774, metadata !DIExpression()), !dbg !5779
  store ptr %io1, ptr %io1.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %io1.addr, metadata !5775, metadata !DIExpression()), !dbg !5780
  store ptr %io2, ptr %io2.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %io2.addr, metadata !5776, metadata !DIExpression()), !dbg !5781
  store ptr %io3, ptr %io3.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %io3.addr, metadata !5777, metadata !DIExpression()), !dbg !5782
  call void @llvm.lifetime.start.p0(i64 8, ptr %option_array) #10, !dbg !5783
  tail call void @llvm.dbg.declare(metadata ptr %option_array, metadata !5778, metadata !DIExpression()), !dbg !5784
  br label %do.body, !dbg !5785

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %o.addr, align 8, !dbg !5786, !tbaa !743
  %tobool = icmp ne ptr %0, null, !dbg !5786
  br i1 %tobool, label %land.lhs.true, label %if.then, !dbg !5786

land.lhs.true:                                    ; preds = %do.body
  %1 = load ptr, ptr %io1.addr, align 8, !dbg !5786, !tbaa !743
  %tobool1 = icmp ne ptr %1, null, !dbg !5786
  br i1 %tobool1, label %land.lhs.true2, label %if.then, !dbg !5786

land.lhs.true2:                                   ; preds = %land.lhs.true
  %2 = load ptr, ptr %io2.addr, align 8, !dbg !5786, !tbaa !743
  %tobool3 = icmp ne ptr %2, null, !dbg !5786
  br i1 %tobool3, label %if.end, label %if.then, !dbg !5789

if.then:                                          ; preds = %land.lhs.true2, %land.lhs.true, %do.body
  %3 = load ptr, ptr @stderr, align 8, !dbg !5790, !tbaa !743
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str, ptr noundef @.str.96, ptr noundef @__func__.gt_option_imply_either_3, ptr noundef @.str.2, i32 noundef 1931), !dbg !5790
  call void @abort() #9, !dbg !5790
  unreachable, !dbg !5790

if.end:                                           ; preds = %land.lhs.true2
  br label %do.cond, !dbg !5789

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !5789

do.end:                                           ; preds = %do.cond
  %4 = load ptr, ptr %o.addr, align 8, !dbg !5792, !tbaa !743
  %implications = getelementptr inbounds %struct.GtOption, ptr %4, i32 0, i32 16, !dbg !5794
  %5 = load ptr, ptr %implications, align 8, !dbg !5794, !tbaa !4041
  %tobool4 = icmp ne ptr %5, null, !dbg !5792
  br i1 %tobool4, label %if.end8, label %if.then5, !dbg !5795

if.then5:                                         ; preds = %do.end
  %call6 = call ptr @gt_array_new(i64 noundef 8), !dbg !5796
  %6 = load ptr, ptr %o.addr, align 8, !dbg !5797, !tbaa !743
  %implications7 = getelementptr inbounds %struct.GtOption, ptr %6, i32 0, i32 16, !dbg !5798
  store ptr %call6, ptr %implications7, align 8, !dbg !5799, !tbaa !4041
  br label %if.end8, !dbg !5797

if.end8:                                          ; preds = %if.then5, %do.end
  %call9 = call ptr @gt_array_new(i64 noundef 8), !dbg !5800
  store ptr %call9, ptr %option_array, align 8, !dbg !5801, !tbaa !743
  %7 = load ptr, ptr %option_array, align 8, !dbg !5802, !tbaa !743
  call void @gt_array_add_elem(ptr noundef %7, ptr noundef %io1.addr, i64 noundef 8), !dbg !5802
  %8 = load ptr, ptr %option_array, align 8, !dbg !5803, !tbaa !743
  call void @gt_array_add_elem(ptr noundef %8, ptr noundef %io2.addr, i64 noundef 8), !dbg !5803
  %9 = load ptr, ptr %option_array, align 8, !dbg !5804, !tbaa !743
  call void @gt_array_add_elem(ptr noundef %9, ptr noundef %io3.addr, i64 noundef 8), !dbg !5804
  %10 = load ptr, ptr %o.addr, align 8, !dbg !5805, !tbaa !743
  %implications10 = getelementptr inbounds %struct.GtOption, ptr %10, i32 0, i32 16, !dbg !5805
  %11 = load ptr, ptr %implications10, align 8, !dbg !5805, !tbaa !4041
  call void @gt_array_add_elem(ptr noundef %11, ptr noundef %option_array, i64 noundef 8), !dbg !5805
  call void @llvm.lifetime.end.p0(i64 8, ptr %option_array) #10, !dbg !5806
  ret void, !dbg !5806
}

; Function Attrs: nounwind uwtable
define void @gt_option_exclude(ptr noundef %o_a, ptr noundef %o_b) #0 !dbg !5807 {
entry:
  %o_a.addr = alloca ptr, align 8
  %o_b.addr = alloca ptr, align 8
  store ptr %o_a, ptr %o_a.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %o_a.addr, metadata !5811, metadata !DIExpression()), !dbg !5813
  store ptr %o_b, ptr %o_b.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %o_b.addr, metadata !5812, metadata !DIExpression()), !dbg !5814
  br label %do.body, !dbg !5815

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %o_a.addr, align 8, !dbg !5816, !tbaa !743
  %tobool = icmp ne ptr %0, null, !dbg !5816
  br i1 %tobool, label %land.lhs.true, label %if.then, !dbg !5816

land.lhs.true:                                    ; preds = %do.body
  %1 = load ptr, ptr %o_b.addr, align 8, !dbg !5816, !tbaa !743
  %tobool1 = icmp ne ptr %1, null, !dbg !5816
  br i1 %tobool1, label %if.end, label %if.then, !dbg !5819

if.then:                                          ; preds = %land.lhs.true, %do.body
  %2 = load ptr, ptr @stderr, align 8, !dbg !5820, !tbaa !743
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str, ptr noundef @.str.97, ptr noundef @__func__.gt_option_exclude, ptr noundef @.str.2, i32 noundef 1943), !dbg !5820
  call void @abort() #9, !dbg !5820
  unreachable, !dbg !5820

if.end:                                           ; preds = %land.lhs.true
  br label %do.end, !dbg !5819

do.end:                                           ; preds = %if.end
  %3 = load ptr, ptr %o_a.addr, align 8, !dbg !5822, !tbaa !743
  %exclusions = getelementptr inbounds %struct.GtOption, ptr %3, i32 0, i32 17, !dbg !5824
  %4 = load ptr, ptr %exclusions, align 8, !dbg !5824, !tbaa !4247
  %tobool2 = icmp ne ptr %4, null, !dbg !5822
  br i1 %tobool2, label %if.end6, label %if.then3, !dbg !5825

if.then3:                                         ; preds = %do.end
  %call4 = call ptr @gt_array_new(i64 noundef 8), !dbg !5826
  %5 = load ptr, ptr %o_a.addr, align 8, !dbg !5827, !tbaa !743
  %exclusions5 = getelementptr inbounds %struct.GtOption, ptr %5, i32 0, i32 17, !dbg !5828
  store ptr %call4, ptr %exclusions5, align 8, !dbg !5829, !tbaa !4247
  br label %if.end6, !dbg !5827

if.end6:                                          ; preds = %if.then3, %do.end
  %6 = load ptr, ptr %o_b.addr, align 8, !dbg !5830, !tbaa !743
  %exclusions7 = getelementptr inbounds %struct.GtOption, ptr %6, i32 0, i32 17, !dbg !5832
  %7 = load ptr, ptr %exclusions7, align 8, !dbg !5832, !tbaa !4247
  %tobool8 = icmp ne ptr %7, null, !dbg !5830
  br i1 %tobool8, label %if.end12, label %if.then9, !dbg !5833

if.then9:                                         ; preds = %if.end6
  %call10 = call ptr @gt_array_new(i64 noundef 8), !dbg !5834
  %8 = load ptr, ptr %o_b.addr, align 8, !dbg !5835, !tbaa !743
  %exclusions11 = getelementptr inbounds %struct.GtOption, ptr %8, i32 0, i32 17, !dbg !5836
  store ptr %call10, ptr %exclusions11, align 8, !dbg !5837, !tbaa !4247
  br label %if.end12, !dbg !5835

if.end12:                                         ; preds = %if.then9, %if.end6
  %9 = load ptr, ptr %o_a.addr, align 8, !dbg !5838, !tbaa !743
  %exclusions13 = getelementptr inbounds %struct.GtOption, ptr %9, i32 0, i32 17, !dbg !5838
  %10 = load ptr, ptr %exclusions13, align 8, !dbg !5838, !tbaa !4247
  call void @gt_array_add_elem(ptr noundef %10, ptr noundef %o_b.addr, i64 noundef 8), !dbg !5838
  %11 = load ptr, ptr %o_b.addr, align 8, !dbg !5839, !tbaa !743
  %exclusions14 = getelementptr inbounds %struct.GtOption, ptr %11, i32 0, i32 17, !dbg !5839
  %12 = load ptr, ptr %exclusions14, align 8, !dbg !5839, !tbaa !4247
  call void @gt_array_add_elem(ptr noundef %12, ptr noundef %o_a.addr, i64 noundef 8), !dbg !5839
  ret void, !dbg !5840
}

; Function Attrs: nounwind uwtable
define void @gt_option_hide_default(ptr noundef %o) #0 !dbg !5841 {
entry:
  %o.addr = alloca ptr, align 8
  store ptr %o, ptr %o.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %o.addr, metadata !5843, metadata !DIExpression()), !dbg !5844
  br label %do.body, !dbg !5845

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %o.addr, align 8, !dbg !5846, !tbaa !743
  %tobool = icmp ne ptr %0, null, !dbg !5846
  br i1 %tobool, label %if.end, label %if.then, !dbg !5849

if.then:                                          ; preds = %do.body
  %1 = load ptr, ptr @stderr, align 8, !dbg !5850, !tbaa !743
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str, ptr noundef @.str.1, ptr noundef @__func__.gt_option_hide_default, ptr noundef @.str.2, i32 noundef 1954), !dbg !5850
  call void @abort() #9, !dbg !5850
  unreachable, !dbg !5850

if.end:                                           ; preds = %do.body
  br label %do.end, !dbg !5849

do.end:                                           ; preds = %if.end
  %2 = load ptr, ptr %o.addr, align 8, !dbg !5852, !tbaa !743
  %hide_default = getelementptr inbounds %struct.GtOption, ptr %2, i32 0, i32 10, !dbg !5853
  store i8 1, ptr %hide_default, align 2, !dbg !5854, !tbaa !1623
  ret void, !dbg !5855
}

; Function Attrs: nounwind uwtable
define void @gt_option_argument_is_optional(ptr noundef %o) #0 !dbg !5856 {
entry:
  %o.addr = alloca ptr, align 8
  store ptr %o, ptr %o.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %o.addr, metadata !5858, metadata !DIExpression()), !dbg !5859
  br label %do.body, !dbg !5860

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %o.addr, align 8, !dbg !5861, !tbaa !743
  %tobool = icmp ne ptr %0, null, !dbg !5861
  br i1 %tobool, label %if.end, label %if.then, !dbg !5864

if.then:                                          ; preds = %do.body
  %1 = load ptr, ptr @stderr, align 8, !dbg !5865, !tbaa !743
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str, ptr noundef @.str.1, ptr noundef @__func__.gt_option_argument_is_optional, ptr noundef @.str.2, i32 noundef 1960), !dbg !5865
  call void @abort() #9, !dbg !5865
  unreachable, !dbg !5865

if.end:                                           ; preds = %do.body
  br label %do.end, !dbg !5864

do.end:                                           ; preds = %if.end
  %2 = load ptr, ptr %o.addr, align 8, !dbg !5867, !tbaa !743
  %argument_is_optional = getelementptr inbounds %struct.GtOption, ptr %2, i32 0, i32 15, !dbg !5868
  store i8 1, ptr %argument_is_optional, align 1, !dbg !5869, !tbaa !2539
  ret void, !dbg !5870
}

; Function Attrs: nounwind uwtable
define zeroext i1 @gt_option_is_set(ptr noundef %o) #0 !dbg !5871 {
entry:
  %o.addr = alloca ptr, align 8
  store ptr %o, ptr %o.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %o.addr, metadata !5875, metadata !DIExpression()), !dbg !5876
  br label %do.body, !dbg !5877

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %o.addr, align 8, !dbg !5878, !tbaa !743
  %tobool = icmp ne ptr %0, null, !dbg !5878
  br i1 %tobool, label %if.end, label %if.then, !dbg !5881

if.then:                                          ; preds = %do.body
  %1 = load ptr, ptr @stderr, align 8, !dbg !5882, !tbaa !743
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str, ptr noundef @.str.1, ptr noundef @__func__.gt_option_is_set, ptr noundef @.str.2, i32 noundef 1966), !dbg !5882
  call void @abort() #9, !dbg !5882
  unreachable, !dbg !5882

if.end:                                           ; preds = %do.body
  br label %do.end, !dbg !5881

do.end:                                           ; preds = %if.end
  %2 = load ptr, ptr %o.addr, align 8, !dbg !5884, !tbaa !743
  %is_set = getelementptr inbounds %struct.GtOption, ptr %2, i32 0, i32 8, !dbg !5885
  %3 = load i8, ptr %is_set, align 8, !dbg !5885, !tbaa !2227, !range !1270, !noundef !1271
  %tobool1 = trunc i8 %3 to i1, !dbg !5885
  ret i1 %tobool1, !dbg !5886
}

; Function Attrs: nounwind uwtable
define i32 @gt_option_parse_spacespec(ptr noundef %maximumspace, ptr noundef %optname, ptr noundef %memlimit, ptr noundef %err) #0 !dbg !5887 {
entry:
  %maximumspace.addr = alloca ptr, align 8
  %optname.addr = alloca ptr, align 8
  %memlimit.addr = alloca ptr, align 8
  %err.addr = alloca ptr, align 8
  %had_err = alloca i32, align 4
  %match = alloca i8, align 1
  %readint = alloca i32, align 4
  %buffer = alloca [3 x i8], align 1
  store ptr %maximumspace, ptr %maximumspace.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %maximumspace.addr, metadata !5891, metadata !DIExpression()), !dbg !5901
  store ptr %optname, ptr %optname.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %optname.addr, metadata !5892, metadata !DIExpression()), !dbg !5902
  store ptr %memlimit, ptr %memlimit.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %memlimit.addr, metadata !5893, metadata !DIExpression()), !dbg !5903
  store ptr %err, ptr %err.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !5894, metadata !DIExpression()), !dbg !5904
  call void @llvm.lifetime.start.p0(i64 4, ptr %had_err) #10, !dbg !5905
  tail call void @llvm.dbg.declare(metadata ptr %had_err, metadata !5895, metadata !DIExpression()), !dbg !5906
  store i32 0, ptr %had_err, align 4, !dbg !5906, !tbaa !1154
  call void @llvm.lifetime.start.p0(i64 1, ptr %match) #10, !dbg !5907
  tail call void @llvm.dbg.declare(metadata ptr %match, metadata !5896, metadata !DIExpression()), !dbg !5908
  store i8 0, ptr %match, align 1, !dbg !5908, !tbaa !1796
  %0 = load ptr, ptr %memlimit.addr, align 8, !dbg !5909, !tbaa !743
  %call = call ptr @gt_str_get(ptr noundef %0), !dbg !5910
  %1 = load ptr, ptr %err.addr, align 8, !dbg !5911, !tbaa !743
  %call1 = call i32 @gt_grep(ptr noundef %match, ptr noundef @.str.98, ptr noundef %call, ptr noundef %1), !dbg !5912
  store i32 %call1, ptr %had_err, align 4, !dbg !5913, !tbaa !1154
  %2 = load i32, ptr %had_err, align 4, !dbg !5914, !tbaa !1154
  %tobool = icmp ne i32 %2, 0, !dbg !5914
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !5916

lor.lhs.false:                                    ; preds = %entry
  %3 = load i8, ptr %match, align 1, !dbg !5917, !tbaa !1796, !range !1270, !noundef !1271
  %tobool2 = trunc i8 %3 to i1, !dbg !5917
  br i1 %tobool2, label %if.end, label %if.then, !dbg !5918

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load ptr, ptr %err.addr, align 8, !dbg !5919, !tbaa !743
  %5 = load ptr, ptr %optname.addr, align 8, !dbg !5921, !tbaa !743
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %4, ptr noundef @.str.99, ptr noundef %5), !dbg !5922
  store i32 -1, ptr %had_err, align 4, !dbg !5923, !tbaa !1154
  br label %if.end, !dbg !5924

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %6 = load i32, ptr %had_err, align 4, !dbg !5925, !tbaa !1154
  %tobool3 = icmp ne i32 %6, 0, !dbg !5925
  br i1 %tobool3, label %if.end26, label %if.then4, !dbg !5926

if.then4:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %readint) #10, !dbg !5927
  tail call void @llvm.dbg.declare(metadata ptr %readint, metadata !5897, metadata !DIExpression()), !dbg !5928
  call void @llvm.lifetime.start.p0(i64 3, ptr %buffer) #10, !dbg !5929
  tail call void @llvm.dbg.declare(metadata ptr %buffer, metadata !5900, metadata !DIExpression()), !dbg !5930
  %7 = load ptr, ptr %memlimit.addr, align 8, !dbg !5931, !tbaa !743
  %call5 = call ptr @gt_str_get(ptr noundef %7), !dbg !5932
  %arraydecay = getelementptr inbounds [3 x i8], ptr %buffer, i64 0, i64 0, !dbg !5933
  %call6 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %call5, ptr noundef @.str.100, ptr noundef %readint, ptr noundef %arraydecay) #10, !dbg !5934
  %8 = load i32, ptr %readint, align 4, !dbg !5935, !tbaa !1154
  %conv = sext i32 %8 to i64, !dbg !5936
  %9 = load ptr, ptr %maximumspace.addr, align 8, !dbg !5937, !tbaa !743
  store i64 %conv, ptr %9, align 8, !dbg !5938, !tbaa !1287
  %arraydecay7 = getelementptr inbounds [3 x i8], ptr %buffer, i64 0, i64 0, !dbg !5939
  %call8 = call i32 @strcmp(ptr noundef %arraydecay7, ptr noundef @.str.101) #11, !dbg !5941
  %cmp = icmp eq i32 %call8, 0, !dbg !5942
  br i1 %cmp, label %if.then10, label %if.else, !dbg !5943

if.then10:                                        ; preds = %if.then4
  %10 = load i32, ptr %had_err, align 4, !dbg !5944, !tbaa !1154
  %cmp11 = icmp ne i32 %10, 1, !dbg !5947
  br i1 %cmp11, label %if.then13, label %if.end14, !dbg !5948

if.then13:                                        ; preds = %if.then10
  %11 = load ptr, ptr %maximumspace.addr, align 8, !dbg !5949, !tbaa !743
  %12 = load i64, ptr %11, align 8, !dbg !5951, !tbaa !1287
  %shl = shl i64 %12, 30, !dbg !5951
  store i64 %shl, ptr %11, align 8, !dbg !5951, !tbaa !1287
  br label %if.end14, !dbg !5952

if.end14:                                         ; preds = %if.then13, %if.then10
  br label %if.end25, !dbg !5953

if.else:                                          ; preds = %if.then4
  %arraydecay15 = getelementptr inbounds [3 x i8], ptr %buffer, i64 0, i64 0, !dbg !5954
  %call16 = call i32 @strcmp(ptr noundef %arraydecay15, ptr noundef @.str.102) #11, !dbg !5957
  %cmp17 = icmp eq i32 %call16, 0, !dbg !5958
  br i1 %cmp17, label %if.then19, label %if.end24, !dbg !5959

if.then19:                                        ; preds = %if.else
  %13 = load i32, ptr %had_err, align 4, !dbg !5960, !tbaa !1154
  %tobool20 = icmp ne i32 %13, 0, !dbg !5960
  br i1 %tobool20, label %if.end23, label %if.then21, !dbg !5963

if.then21:                                        ; preds = %if.then19
  %14 = load ptr, ptr %maximumspace.addr, align 8, !dbg !5964, !tbaa !743
  %15 = load i64, ptr %14, align 8, !dbg !5966, !tbaa !1287
  %shl22 = shl i64 %15, 20, !dbg !5966
  store i64 %shl22, ptr %14, align 8, !dbg !5966, !tbaa !1287
  br label %if.end23, !dbg !5967

if.end23:                                         ; preds = %if.then21, %if.then19
  br label %if.end24, !dbg !5968

if.end24:                                         ; preds = %if.end23, %if.else
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.end14
  call void @llvm.lifetime.end.p0(i64 3, ptr %buffer) #10, !dbg !5969
  call void @llvm.lifetime.end.p0(i64 4, ptr %readint) #10, !dbg !5969
  br label %if.end26, !dbg !5970

if.end26:                                         ; preds = %if.end25, %if.end
  %16 = load i32, ptr %had_err, align 4, !dbg !5971, !tbaa !1154
  call void @llvm.lifetime.end.p0(i64 1, ptr %match) #10, !dbg !5972
  call void @llvm.lifetime.end.p0(i64 4, ptr %had_err) #10, !dbg !5972
  ret i32 %16, !dbg !5973
}

declare !dbg !5974 i32 @gt_grep(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
declare !dbg !5978 i32 @__isoc99_sscanf(ptr noundef, ptr noundef, ...) #6

; Function Attrs: nounwind uwtable
define ptr @gt_option_parser_synopsis(ptr noundef %option_parser) #0 !dbg !5981 {
entry:
  %option_parser.addr = alloca ptr, align 8
  store ptr %option_parser, ptr %option_parser.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %option_parser.addr, metadata !5987, metadata !DIExpression()), !dbg !5988
  br label %do.body, !dbg !5989

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %option_parser.addr, align 8, !dbg !5990, !tbaa !743
  %tobool = icmp ne ptr %0, null, !dbg !5990
  br i1 %tobool, label %if.end, label %if.then, !dbg !5993

if.then:                                          ; preds = %do.body
  %1 = load ptr, ptr @stderr, align 8, !dbg !5994, !tbaa !743
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str, ptr noundef @.str.103, ptr noundef @__func__.gt_option_parser_synopsis, ptr noundef @.str.2, i32 noundef 2046), !dbg !5994
  call void @abort() #9, !dbg !5994
  unreachable, !dbg !5994

if.end:                                           ; preds = %do.body
  br label %do.end, !dbg !5993

do.end:                                           ; preds = %if.end
  %2 = load ptr, ptr %option_parser.addr, align 8, !dbg !5996, !tbaa !743
  %synopsis = getelementptr inbounds %struct.GtOptionParser, ptr %2, i32 0, i32 1, !dbg !5997
  %3 = load ptr, ptr %synopsis, align 8, !dbg !5997, !tbaa !900
  ret ptr %3, !dbg !5998
}

; Function Attrs: nounwind uwtable
define ptr @gt_option_parser_one_liner(ptr noundef %option_parser) #0 !dbg !5999 {
entry:
  %option_parser.addr = alloca ptr, align 8
  store ptr %option_parser, ptr %option_parser.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %option_parser.addr, metadata !6001, metadata !DIExpression()), !dbg !6002
  br label %do.body, !dbg !6003

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %option_parser.addr, align 8, !dbg !6004, !tbaa !743
  %tobool = icmp ne ptr %0, null, !dbg !6004
  br i1 %tobool, label %if.end, label %if.then, !dbg !6007

if.then:                                          ; preds = %do.body
  %1 = load ptr, ptr @stderr, align 8, !dbg !6008, !tbaa !743
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str, ptr noundef @.str.103, ptr noundef @__func__.gt_option_parser_one_liner, ptr noundef @.str.2, i32 noundef 2052), !dbg !6008
  call void @abort() #9, !dbg !6008
  unreachable, !dbg !6008

if.end:                                           ; preds = %do.body
  br label %do.end, !dbg !6007

do.end:                                           ; preds = %if.end
  %2 = load ptr, ptr %option_parser.addr, align 8, !dbg !6010, !tbaa !743
  %one_liner = getelementptr inbounds %struct.GtOptionParser, ptr %2, i32 0, i32 2, !dbg !6011
  %3 = load ptr, ptr %one_liner, align 8, !dbg !6011, !tbaa !907
  ret ptr %3, !dbg !6012
}

; Function Attrs: nounwind uwtable
define ptr @gt_option_parser_get_progname(ptr noundef %option_parser) #0 !dbg !6013 {
entry:
  %option_parser.addr = alloca ptr, align 8
  store ptr %option_parser, ptr %option_parser.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %option_parser.addr, metadata !6015, metadata !DIExpression()), !dbg !6016
  br label %do.body, !dbg !6017

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %option_parser.addr, align 8, !dbg !6018, !tbaa !743
  %tobool = icmp ne ptr %0, null, !dbg !6018
  br i1 %tobool, label %if.end, label %if.then, !dbg !6021

if.then:                                          ; preds = %do.body
  %1 = load ptr, ptr @stderr, align 8, !dbg !6022, !tbaa !743
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str, ptr noundef @.str.103, ptr noundef @__func__.gt_option_parser_get_progname, ptr noundef @.str.2, i32 noundef 2058), !dbg !6022
  call void @abort() #9, !dbg !6022
  unreachable, !dbg !6022

if.end:                                           ; preds = %do.body
  br label %do.end, !dbg !6021

do.end:                                           ; preds = %if.end
  %2 = load ptr, ptr %option_parser.addr, align 8, !dbg !6024, !tbaa !743
  %progname = getelementptr inbounds %struct.GtOptionParser, ptr %2, i32 0, i32 0, !dbg !6025
  %3 = load ptr, ptr %progname, align 8, !dbg !6025, !tbaa !2137
  ret ptr %3, !dbg !6026
}

; Function Attrs: nounwind uwtable
define internal void @gt_option_reset(ptr noundef %option) #0 !dbg !6027 {
entry:
  %option.addr = alloca ptr, align 8
  store ptr %option, ptr %option.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %option.addr, metadata !6029, metadata !DIExpression()), !dbg !6030
  br label %do.body, !dbg !6031

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %option.addr, align 8, !dbg !6032, !tbaa !743
  %tobool = icmp ne ptr %0, null, !dbg !6032
  br i1 %tobool, label %if.end, label %if.then, !dbg !6035

if.then:                                          ; preds = %do.body
  %1 = load ptr, ptr @stderr, align 8, !dbg !6036, !tbaa !743
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str, ptr noundef @.str.104, ptr noundef @__func__.gt_option_reset, ptr noundef @.str.2, i32 noundef 183), !dbg !6036
  call void @abort() #9, !dbg !6036
  unreachable, !dbg !6036

if.end:                                           ; preds = %do.body
  br label %do.end, !dbg !6035

do.end:                                           ; preds = %if.end
  %2 = load ptr, ptr %option.addr, align 8, !dbg !6038, !tbaa !743
  %option_type = getelementptr inbounds %struct.GtOption, ptr %2, i32 0, i32 0, !dbg !6040
  %3 = load i32, ptr %option_type, align 8, !dbg !6040, !tbaa !1391
  %cmp = icmp eq i32 %3, 0, !dbg !6041
  br i1 %cmp, label %if.then1, label %if.else, !dbg !6042

if.then1:                                         ; preds = %do.end
  %4 = load ptr, ptr %option.addr, align 8, !dbg !6043, !tbaa !743
  %default_value = getelementptr inbounds %struct.GtOption, ptr %4, i32 0, i32 4, !dbg !6045
  %5 = load i8, ptr %default_value, align 8, !dbg !6046, !tbaa !880, !range !1270, !noundef !1271
  %tobool2 = trunc i8 %5 to i1, !dbg !6046
  %6 = load ptr, ptr %option.addr, align 8, !dbg !6047, !tbaa !743
  %value = getelementptr inbounds %struct.GtOption, ptr %6, i32 0, i32 3, !dbg !6048
  %7 = load ptr, ptr %value, align 8, !dbg !6048, !tbaa !2274
  %frombool = zext i1 %tobool2 to i8, !dbg !6049
  store i8 %frombool, ptr %7, align 1, !dbg !6049, !tbaa !1796
  br label %if.end53, !dbg !6050

if.else:                                          ; preds = %do.end
  %8 = load ptr, ptr %option.addr, align 8, !dbg !6051, !tbaa !743
  %option_type3 = getelementptr inbounds %struct.GtOption, ptr %8, i32 0, i32 0, !dbg !6053
  %9 = load i32, ptr %option_type3, align 8, !dbg !6053, !tbaa !1391
  %cmp4 = icmp eq i32 %9, 1, !dbg !6054
  br i1 %cmp4, label %if.then7, label %lor.lhs.false, !dbg !6055

lor.lhs.false:                                    ; preds = %if.else
  %10 = load ptr, ptr %option.addr, align 8, !dbg !6056, !tbaa !743
  %option_type5 = getelementptr inbounds %struct.GtOption, ptr %10, i32 0, i32 0, !dbg !6057
  %11 = load i32, ptr %option_type5, align 8, !dbg !6057, !tbaa !1391
  %cmp6 = icmp eq i32 %11, 12, !dbg !6058
  br i1 %cmp6, label %if.then7, label %if.else10, !dbg !6059

if.then7:                                         ; preds = %lor.lhs.false, %if.else
  %12 = load ptr, ptr %option.addr, align 8, !dbg !6060, !tbaa !743
  %value8 = getelementptr inbounds %struct.GtOption, ptr %12, i32 0, i32 3, !dbg !6062
  %13 = load ptr, ptr %value8, align 8, !dbg !6062, !tbaa !2274
  %14 = load ptr, ptr %option.addr, align 8, !dbg !6063, !tbaa !743
  %default_value9 = getelementptr inbounds %struct.GtOption, ptr %14, i32 0, i32 4, !dbg !6064
  %15 = load ptr, ptr %default_value9, align 8, !dbg !6065, !tbaa !880
  call void @gt_str_set(ptr noundef %13, ptr noundef %15), !dbg !6066
  br label %if.end52, !dbg !6067

if.else10:                                        ; preds = %lor.lhs.false
  %16 = load ptr, ptr %option.addr, align 8, !dbg !6068, !tbaa !743
  %option_type11 = getelementptr inbounds %struct.GtOption, ptr %16, i32 0, i32 0, !dbg !6070
  %17 = load i32, ptr %option_type11, align 8, !dbg !6070, !tbaa !1391
  %cmp12 = icmp eq i32 %17, 2, !dbg !6071
  br i1 %cmp12, label %if.then13, label %if.else16, !dbg !6072

if.then13:                                        ; preds = %if.else10
  %18 = load ptr, ptr %option.addr, align 8, !dbg !6073, !tbaa !743
  %default_value14 = getelementptr inbounds %struct.GtOption, ptr %18, i32 0, i32 4, !dbg !6075
  %19 = load double, ptr %default_value14, align 8, !dbg !6076, !tbaa !880
  %20 = load ptr, ptr %option.addr, align 8, !dbg !6077, !tbaa !743
  %value15 = getelementptr inbounds %struct.GtOption, ptr %20, i32 0, i32 3, !dbg !6078
  %21 = load ptr, ptr %value15, align 8, !dbg !6078, !tbaa !2274
  store double %19, ptr %21, align 8, !dbg !6079, !tbaa !2457
  br label %if.end51, !dbg !6080

if.else16:                                        ; preds = %if.else10
  %22 = load ptr, ptr %option.addr, align 8, !dbg !6081, !tbaa !743
  %option_type17 = getelementptr inbounds %struct.GtOption, ptr %22, i32 0, i32 0, !dbg !6083
  %23 = load i32, ptr %option_type17, align 8, !dbg !6083, !tbaa !1391
  %cmp18 = icmp eq i32 %23, 7, !dbg !6084
  br i1 %cmp18, label %if.then19, label %if.else22, !dbg !6085

if.then19:                                        ; preds = %if.else16
  %24 = load ptr, ptr %option.addr, align 8, !dbg !6086, !tbaa !743
  %default_value20 = getelementptr inbounds %struct.GtOption, ptr %24, i32 0, i32 4, !dbg !6088
  %25 = load i32, ptr %default_value20, align 8, !dbg !6089, !tbaa !880
  %26 = load ptr, ptr %option.addr, align 8, !dbg !6090, !tbaa !743
  %value21 = getelementptr inbounds %struct.GtOption, ptr %26, i32 0, i32 3, !dbg !6091
  %27 = load ptr, ptr %value21, align 8, !dbg !6091, !tbaa !2274
  store i32 %25, ptr %27, align 4, !dbg !6092, !tbaa !1154
  br label %if.end50, !dbg !6093

if.else22:                                        ; preds = %if.else16
  %28 = load ptr, ptr %option.addr, align 8, !dbg !6094, !tbaa !743
  %option_type23 = getelementptr inbounds %struct.GtOption, ptr %28, i32 0, i32 0, !dbg !6096
  %29 = load i32, ptr %option_type23, align 8, !dbg !6096, !tbaa !1391
  %cmp24 = icmp eq i32 %29, 8, !dbg !6097
  br i1 %cmp24, label %if.then25, label %if.else28, !dbg !6098

if.then25:                                        ; preds = %if.else22
  %30 = load ptr, ptr %option.addr, align 8, !dbg !6099, !tbaa !743
  %default_value26 = getelementptr inbounds %struct.GtOption, ptr %30, i32 0, i32 4, !dbg !6101
  %31 = load i32, ptr %default_value26, align 8, !dbg !6102, !tbaa !880
  %32 = load ptr, ptr %option.addr, align 8, !dbg !6103, !tbaa !743
  %value27 = getelementptr inbounds %struct.GtOption, ptr %32, i32 0, i32 3, !dbg !6104
  %33 = load ptr, ptr %value27, align 8, !dbg !6104, !tbaa !2274
  store i32 %31, ptr %33, align 4, !dbg !6105, !tbaa !1154
  br label %if.end49, !dbg !6106

if.else28:                                        ; preds = %if.else22
  %34 = load ptr, ptr %option.addr, align 8, !dbg !6107, !tbaa !743
  %option_type29 = getelementptr inbounds %struct.GtOption, ptr %34, i32 0, i32 0, !dbg !6109
  %35 = load i32, ptr %option_type29, align 8, !dbg !6109, !tbaa !1391
  %cmp30 = icmp eq i32 %35, 9, !dbg !6110
  br i1 %cmp30, label %if.then31, label %if.else34, !dbg !6111

if.then31:                                        ; preds = %if.else28
  %36 = load ptr, ptr %option.addr, align 8, !dbg !6112, !tbaa !743
  %default_value32 = getelementptr inbounds %struct.GtOption, ptr %36, i32 0, i32 4, !dbg !6114
  %37 = load i64, ptr %default_value32, align 8, !dbg !6115, !tbaa !880
  %38 = load ptr, ptr %option.addr, align 8, !dbg !6116, !tbaa !743
  %value33 = getelementptr inbounds %struct.GtOption, ptr %38, i32 0, i32 3, !dbg !6117
  %39 = load ptr, ptr %value33, align 8, !dbg !6117, !tbaa !2274
  store i64 %37, ptr %39, align 8, !dbg !6118, !tbaa !1287
  br label %if.end48, !dbg !6119

if.else34:                                        ; preds = %if.else28
  %40 = load ptr, ptr %option.addr, align 8, !dbg !6120, !tbaa !743
  %option_type35 = getelementptr inbounds %struct.GtOption, ptr %40, i32 0, i32 0, !dbg !6122
  %41 = load i32, ptr %option_type35, align 8, !dbg !6122, !tbaa !1391
  %cmp36 = icmp eq i32 %41, 10, !dbg !6123
  br i1 %cmp36, label %if.then37, label %if.else40, !dbg !6124

if.then37:                                        ; preds = %if.else34
  %42 = load ptr, ptr %option.addr, align 8, !dbg !6125, !tbaa !743
  %default_value38 = getelementptr inbounds %struct.GtOption, ptr %42, i32 0, i32 4, !dbg !6127
  %43 = load i64, ptr %default_value38, align 8, !dbg !6128, !tbaa !880
  %44 = load ptr, ptr %option.addr, align 8, !dbg !6129, !tbaa !743
  %value39 = getelementptr inbounds %struct.GtOption, ptr %44, i32 0, i32 3, !dbg !6130
  %45 = load ptr, ptr %value39, align 8, !dbg !6130, !tbaa !2274
  store i64 %43, ptr %45, align 8, !dbg !6131, !tbaa !1287
  br label %if.end47, !dbg !6132

if.else40:                                        ; preds = %if.else34
  %46 = load ptr, ptr %option.addr, align 8, !dbg !6133, !tbaa !743
  %option_type41 = getelementptr inbounds %struct.GtOption, ptr %46, i32 0, i32 0, !dbg !6135
  %47 = load i32, ptr %option_type41, align 8, !dbg !6135, !tbaa !1391
  %cmp42 = icmp eq i32 %47, 11, !dbg !6136
  br i1 %cmp42, label %if.then43, label %if.end46, !dbg !6137

if.then43:                                        ; preds = %if.else40
  %48 = load ptr, ptr %option.addr, align 8, !dbg !6138, !tbaa !743
  %value44 = getelementptr inbounds %struct.GtOption, ptr %48, i32 0, i32 3, !dbg !6140
  %49 = load ptr, ptr %value44, align 8, !dbg !6140, !tbaa !2274
  %50 = load ptr, ptr %option.addr, align 8, !dbg !6141, !tbaa !743
  %default_value45 = getelementptr inbounds %struct.GtOption, ptr %50, i32 0, i32 4, !dbg !6142
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %49, ptr align 8 %default_value45, i64 16, i1 false), !dbg !6143, !tbaa.struct !6144
  br label %if.end46, !dbg !6145

if.end46:                                         ; preds = %if.then43, %if.else40
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %if.then37
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %if.then31
  br label %if.end49

if.end49:                                         ; preds = %if.end48, %if.then25
  br label %if.end50

if.end50:                                         ; preds = %if.end49, %if.then19
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %if.then13
  br label %if.end52

if.end52:                                         ; preds = %if.end51, %if.then7
  br label %if.end53

if.end53:                                         ; preds = %if.end52, %if.then1
  ret void, !dbg !6146
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: nounwind uwtable
define internal zeroext i1 @has_extended_option(ptr noundef %options) #0 !dbg !6147 {
entry:
  %retval = alloca i1, align 1
  %options.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %option = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %options, ptr %options.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %options.addr, metadata !6151, metadata !DIExpression()), !dbg !6154
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #10, !dbg !6155
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !6152, metadata !DIExpression()), !dbg !6156
  call void @llvm.lifetime.start.p0(i64 8, ptr %option) #10, !dbg !6157
  tail call void @llvm.dbg.declare(metadata ptr %option, metadata !6153, metadata !DIExpression()), !dbg !6158
  br label %do.body, !dbg !6159

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %options.addr, align 8, !dbg !6160, !tbaa !743
  %tobool = icmp ne ptr %0, null, !dbg !6160
  br i1 %tobool, label %if.end, label %if.then, !dbg !6163

if.then:                                          ; preds = %do.body
  %1 = load ptr, ptr @stderr, align 8, !dbg !6164, !tbaa !743
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str, ptr noundef @.str.105, ptr noundef @__func__.has_extended_option, ptr noundef @.str.2, i32 noundef 507), !dbg !6164
  call void @abort() #9, !dbg !6164
  unreachable, !dbg !6164

if.end:                                           ; preds = %do.body
  br label %do.cond, !dbg !6163

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !6163

do.end:                                           ; preds = %do.cond
  store i64 0, ptr %i, align 8, !dbg !6166, !tbaa !1287
  br label %for.cond, !dbg !6168

for.cond:                                         ; preds = %for.inc, %do.end
  %2 = load i64, ptr %i, align 8, !dbg !6169, !tbaa !1287
  %3 = load ptr, ptr %options.addr, align 8, !dbg !6171, !tbaa !743
  %call1 = call i64 @gt_array_size(ptr noundef %3), !dbg !6172
  %cmp = icmp ult i64 %2, %call1, !dbg !6173
  br i1 %cmp, label %for.body, label %for.end, !dbg !6174

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %options.addr, align 8, !dbg !6175, !tbaa !743
  %5 = load i64, ptr %i, align 8, !dbg !6177, !tbaa !1287
  %call2 = call ptr @gt_array_get(ptr noundef %4, i64 noundef %5), !dbg !6178
  %6 = load ptr, ptr %call2, align 8, !dbg !6179, !tbaa !743
  store ptr %6, ptr %option, align 8, !dbg !6180, !tbaa !743
  %7 = load ptr, ptr %option, align 8, !dbg !6181, !tbaa !743
  %is_extended_option = getelementptr inbounds %struct.GtOption, ptr %7, i32 0, i32 13, !dbg !6183
  %8 = load i8, ptr %is_extended_option, align 1, !dbg !6183, !tbaa !3547, !range !1270, !noundef !1271
  %tobool3 = trunc i8 %8 to i1, !dbg !6183
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !6184

if.then4:                                         ; preds = %for.body
  store i1 true, ptr %retval, align 1, !dbg !6185
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6185

if.end5:                                          ; preds = %for.body
  br label %for.inc, !dbg !6186

for.inc:                                          ; preds = %if.end5
  %9 = load i64, ptr %i, align 8, !dbg !6187, !tbaa !1287
  %inc = add i64 %9, 1, !dbg !6187
  store i64 %inc, ptr %i, align 8, !dbg !6187, !tbaa !1287
  br label %for.cond, !dbg !6188, !llvm.loop !6189

for.end:                                          ; preds = %for.cond
  store i1 false, ptr %retval, align 1, !dbg !6191
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6191

cleanup:                                          ; preds = %for.end, %if.then4
  call void @llvm.lifetime.end.p0(i64 8, ptr %option) #10, !dbg !6192
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #10, !dbg !6192
  %10 = load i1, ptr %retval, align 1, !dbg !6192
  ret i1 %10, !dbg !6192
}

; Function Attrs: nounwind uwtable
define internal ptr @gt_option_new_help(i1 noundef zeroext %has_extended_options) #0 !dbg !6193 {
entry:
  %has_extended_options.addr = alloca i8, align 1
  %o = alloca ptr, align 8
  %frombool = zext i1 %has_extended_options to i8
  store i8 %frombool, ptr %has_extended_options.addr, align 1, !tbaa !1796
  tail call void @llvm.dbg.declare(metadata ptr %has_extended_options.addr, metadata !6197, metadata !DIExpression()), !dbg !6199
  call void @llvm.lifetime.start.p0(i64 8, ptr %o) #10, !dbg !6200
  tail call void @llvm.dbg.declare(metadata ptr %o, metadata !6198, metadata !DIExpression()), !dbg !6201
  %0 = load i8, ptr %has_extended_options.addr, align 1, !dbg !6202, !tbaa !1796, !range !1270, !noundef !1271
  %tobool = trunc i8 %0 to i1, !dbg !6202
  br i1 %tobool, label %if.then, label %if.else, !dbg !6204

if.then:                                          ; preds = %entry
  %call = call ptr @gt_option_new(ptr noundef @.str.106, ptr noundef @.str.107, ptr noundef null), !dbg !6205
  store ptr %call, ptr %o, align 8, !dbg !6206, !tbaa !743
  br label %if.end, !dbg !6207

if.else:                                          ; preds = %entry
  %call1 = call ptr @gt_option_new(ptr noundef @.str.106, ptr noundef @.str.108, ptr noundef null), !dbg !6208
  store ptr %call1, ptr %o, align 8, !dbg !6209, !tbaa !743
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %1 = load ptr, ptr %o, align 8, !dbg !6210, !tbaa !743
  %option_type = getelementptr inbounds %struct.GtOption, ptr %1, i32 0, i32 0, !dbg !6211
  store i32 4, ptr %option_type, align 8, !dbg !6212, !tbaa !1391
  %2 = load ptr, ptr %o, align 8, !dbg !6213, !tbaa !743
  %default_value = getelementptr inbounds %struct.GtOption, ptr %2, i32 0, i32 4, !dbg !6214
  store i8 0, ptr %default_value, align 8, !dbg !6215, !tbaa !880
  %3 = load ptr, ptr %o, align 8, !dbg !6216, !tbaa !743
  call void @llvm.lifetime.end.p0(i64 8, ptr %o) #10, !dbg !6217
  ret ptr %3, !dbg !6218
}

; Function Attrs: nounwind uwtable
define internal ptr @gt_option_new_helpplus() #0 !dbg !6219 {
entry:
  %o = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %o) #10, !dbg !6224
  tail call void @llvm.dbg.declare(metadata ptr %o, metadata !6223, metadata !DIExpression()), !dbg !6225
  %call = call ptr @gt_option_new(ptr noundef @.str.109, ptr noundef @.str.110, ptr noundef null), !dbg !6226
  store ptr %call, ptr %o, align 8, !dbg !6225, !tbaa !743
  %0 = load ptr, ptr %o, align 8, !dbg !6227, !tbaa !743
  %option_type = getelementptr inbounds %struct.GtOption, ptr %0, i32 0, i32 0, !dbg !6228
  store i32 5, ptr %option_type, align 8, !dbg !6229, !tbaa !1391
  %1 = load ptr, ptr %o, align 8, !dbg !6230, !tbaa !743
  %default_value = getelementptr inbounds %struct.GtOption, ptr %1, i32 0, i32 4, !dbg !6231
  store i8 0, ptr %default_value, align 8, !dbg !6232, !tbaa !880
  %2 = load ptr, ptr %o, align 8, !dbg !6233, !tbaa !743
  call void @llvm.lifetime.end.p0(i64 8, ptr %o) #10, !dbg !6234
  ret ptr %2, !dbg !6235
}

; Function Attrs: nounwind uwtable
define internal ptr @gt_option_new_helpdev() #0 !dbg !6236 {
entry:
  %o = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %o) #10, !dbg !6239
  tail call void @llvm.dbg.declare(metadata ptr %o, metadata !6238, metadata !DIExpression()), !dbg !6240
  %call = call ptr @gt_option_new(ptr noundef @.str.111, ptr noundef @.str.112, ptr noundef null), !dbg !6241
  store ptr %call, ptr %o, align 8, !dbg !6240, !tbaa !743
  %0 = load ptr, ptr %o, align 8, !dbg !6242, !tbaa !743
  %option_type = getelementptr inbounds %struct.GtOption, ptr %0, i32 0, i32 0, !dbg !6243
  store i32 6, ptr %option_type, align 8, !dbg !6244, !tbaa !1391
  %1 = load ptr, ptr %o, align 8, !dbg !6245, !tbaa !743
  %default_value = getelementptr inbounds %struct.GtOption, ptr %1, i32 0, i32 4, !dbg !6246
  store i8 0, ptr %default_value, align 8, !dbg !6247, !tbaa !880
  %2 = load ptr, ptr %o, align 8, !dbg !6248, !tbaa !743
  %is_development_option = getelementptr inbounds %struct.GtOption, ptr %2, i32 0, i32 14, !dbg !6249
  store i8 1, ptr %is_development_option, align 2, !dbg !6250, !tbaa !1376
  %3 = load ptr, ptr %o, align 8, !dbg !6251, !tbaa !743
  call void @llvm.lifetime.end.p0(i64 8, ptr %o) #10, !dbg !6252
  ret ptr %3, !dbg !6253
}

; Function Attrs: nounwind uwtable
define internal ptr @gt_option_new_version() #0 !dbg !6254 {
entry:
  %o = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %o) #10, !dbg !6257
  tail call void @llvm.dbg.declare(metadata ptr %o, metadata !6256, metadata !DIExpression()), !dbg !6258
  %call = call ptr @gt_option_new(ptr noundef @.str.113, ptr noundef @.str.114, ptr noundef null), !dbg !6259
  store ptr %call, ptr %o, align 8, !dbg !6258, !tbaa !743
  %0 = load ptr, ptr %o, align 8, !dbg !6260, !tbaa !743
  %option_type = getelementptr inbounds %struct.GtOption, ptr %0, i32 0, i32 0, !dbg !6261
  store i32 14, ptr %option_type, align 8, !dbg !6262, !tbaa !1391
  %1 = load ptr, ptr %o, align 8, !dbg !6263, !tbaa !743
  call void @llvm.lifetime.end.p0(i64 8, ptr %o) #10, !dbg !6264
  ret ptr %1, !dbg !6265
}

; Function Attrs: nounwind willreturn memory(none)
declare !dbg !6266 ptr @__ctype_toupper_loc() #5

declare !dbg !6273 void @gt_warning(ptr noundef, ...) #1

declare !dbg !6277 i32 @printf(ptr noundef, ...) #1

; Function Attrs: nounwind uwtable
define internal void @show_description(i64 noundef %initial_space, ptr noundef %desc, i64 noundef %len) #0 !dbg !6280 {
entry:
  %initial_space.addr = alloca i64, align 8
  %desc.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %width = alloca i64, align 8
  %tmp_ptr = alloca ptr, align 8
  %desc_ptr = alloca ptr, align 8
  %i = alloca i64, align 8
  %continue_while = alloca i8, align 1
  store i64 %initial_space, ptr %initial_space.addr, align 8, !tbaa !1287
  tail call void @llvm.dbg.declare(metadata ptr %initial_space.addr, metadata !6284, metadata !DIExpression()), !dbg !6293
  store ptr %desc, ptr %desc.addr, align 8, !tbaa !743
  tail call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !6285, metadata !DIExpression()), !dbg !6294
  store i64 %len, ptr %len.addr, align 8, !tbaa !1287
  tail call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !6286, metadata !DIExpression()), !dbg !6295
  call void @llvm.lifetime.start.p0(i64 8, ptr %width) #10, !dbg !6296
  tail call void @llvm.dbg.declare(metadata ptr %width, metadata !6287, metadata !DIExpression()), !dbg !6297
  %0 = load i64, ptr %initial_space.addr, align 8, !dbg !6298, !tbaa !1287
  %sub = sub i64 80, %0, !dbg !6299
  store i64 %sub, ptr %width, align 8, !dbg !6297, !tbaa !1287
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp_ptr) #10, !dbg !6300
  tail call void @llvm.dbg.declare(metadata ptr %tmp_ptr, metadata !6289, metadata !DIExpression()), !dbg !6301
  call void @llvm.lifetime.start.p0(i64 8, ptr %desc_ptr) #10, !dbg !6300
  tail call void @llvm.dbg.declare(metadata ptr %desc_ptr, metadata !6290, metadata !DIExpression()), !dbg !6302
  %1 = load ptr, ptr %desc.addr, align 8, !dbg !6303, !tbaa !743
  store ptr %1, ptr %desc_ptr, align 8, !dbg !6302, !tbaa !743
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #10, !dbg !6304
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !6291, metadata !DIExpression()), !dbg !6305
  call void @llvm.lifetime.start.p0(i64 1, ptr %continue_while) #10, !dbg !6306
  tail call void @llvm.dbg.declare(metadata ptr %continue_while, metadata !6292, metadata !DIExpression()), !dbg !6307
  store i8 0, ptr %continue_while, align 1, !dbg !6307, !tbaa !1796
  br label %do.body, !dbg !6308

do.body:                                          ; preds = %entry
  %2 = load i64, ptr %initial_space.addr, align 8, !dbg !6309, !tbaa !1287
  %cmp = icmp ult i64 %2, 80, !dbg !6309
  br i1 %cmp, label %if.end, label %if.then, !dbg !6312

if.then:                                          ; preds = %do.body
  %3 = load ptr, ptr @stderr, align 8, !dbg !6313, !tbaa !743
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str, ptr noundef @.str.132, ptr noundef @__func__.show_description, ptr noundef @.str.2, i32 noundef 309), !dbg !6313
  call void @abort() #9, !dbg !6313
  unreachable, !dbg !6313

if.end:                                           ; preds = %do.body
  br label %do.cond, !dbg !6312

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !6312

do.end:                                           ; preds = %do.cond
  br label %while.cond, !dbg !6315

while.cond:                                       ; preds = %for.end60, %if.then38, %do.end
  %4 = load ptr, ptr %desc_ptr, align 8, !dbg !6316, !tbaa !743
  %5 = load ptr, ptr %desc.addr, align 8, !dbg !6317, !tbaa !743
  %6 = load i64, ptr %len.addr, align 8, !dbg !6318, !tbaa !1287
  %add.ptr = getelementptr inbounds i8, ptr %5, i64 %6, !dbg !6319
  %cmp1 = icmp ult ptr %4, %add.ptr, !dbg !6320
  br i1 %cmp1, label %while.body, label %while.end, !dbg !6315

while.body:                                       ; preds = %while.cond
  %7 = load ptr, ptr %desc_ptr, align 8, !dbg !6321, !tbaa !743
  %8 = load i64, ptr %width, align 8, !dbg !6324, !tbaa !1287
  %add.ptr2 = getelementptr inbounds i8, ptr %7, i64 %8, !dbg !6325
  %add.ptr3 = getelementptr inbounds i8, ptr %add.ptr2, i64 -1, !dbg !6326
  %9 = load ptr, ptr %desc.addr, align 8, !dbg !6327, !tbaa !743
  %10 = load i64, ptr %len.addr, align 8, !dbg !6328, !tbaa !1287
  %add.ptr4 = getelementptr inbounds i8, ptr %9, i64 %10, !dbg !6329
  %add.ptr5 = getelementptr inbounds i8, ptr %add.ptr4, i64 -1, !dbg !6330
  %cmp6 = icmp uge ptr %add.ptr3, %add.ptr5, !dbg !6331
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !6332

if.then7:                                         ; preds = %while.body
  br label %while.end, !dbg !6333

if.end8:                                          ; preds = %while.body
  %11 = load ptr, ptr %desc_ptr, align 8, !dbg !6334, !tbaa !743
  %12 = load i64, ptr %width, align 8, !dbg !6336, !tbaa !1287
  %add.ptr9 = getelementptr inbounds i8, ptr %11, i64 %12, !dbg !6337
  store ptr %add.ptr9, ptr %tmp_ptr, align 8, !dbg !6338, !tbaa !743
  br label %for.cond, !dbg !6339

for.cond:                                         ; preds = %for.inc, %if.end8
  %13 = load ptr, ptr %tmp_ptr, align 8, !dbg !6340, !tbaa !743
  %14 = load ptr, ptr %desc_ptr, align 8, !dbg !6342, !tbaa !743
  %cmp10 = icmp uge ptr %13, %14, !dbg !6343
  br i1 %cmp10, label %for.body, label %for.end, !dbg !6344

for.body:                                         ; preds = %for.cond
  %15 = load ptr, ptr %tmp_ptr, align 8, !dbg !6345, !tbaa !743
  %16 = load i8, ptr %15, align 1, !dbg !6348, !tbaa !880
  %conv = sext i8 %16 to i32, !dbg !6348
  %cmp11 = icmp eq i32 %conv, 32, !dbg !6349
  br i1 %cmp11, label %if.then16, label %lor.lhs.false, !dbg !6350

lor.lhs.false:                                    ; preds = %for.body
  %17 = load ptr, ptr %tmp_ptr, align 8, !dbg !6351, !tbaa !743
  %18 = load i8, ptr %17, align 1, !dbg !6352, !tbaa !880
  %conv13 = sext i8 %18 to i32, !dbg !6352
  %cmp14 = icmp eq i32 %conv13, 10, !dbg !6353
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !6354

if.then16:                                        ; preds = %lor.lhs.false, %for.body
  br label %for.end, !dbg !6355

if.end17:                                         ; preds = %lor.lhs.false
  br label %for.inc, !dbg !6356

for.inc:                                          ; preds = %if.end17
  %19 = load ptr, ptr %tmp_ptr, align 8, !dbg !6357, !tbaa !743
  %incdec.ptr = getelementptr inbounds i8, ptr %19, i32 -1, !dbg !6357
  store ptr %incdec.ptr, ptr %tmp_ptr, align 8, !dbg !6357, !tbaa !743
  br label %for.cond, !dbg !6358, !llvm.loop !6359

for.end:                                          ; preds = %if.then16, %for.cond
  br label %for.cond18, !dbg !6361

for.cond18:                                       ; preds = %for.inc35, %for.end
  %20 = load ptr, ptr %desc_ptr, align 8, !dbg !6362, !tbaa !743
  %21 = load ptr, ptr %tmp_ptr, align 8, !dbg !6365, !tbaa !743
  %cmp19 = icmp ult ptr %20, %21, !dbg !6366
  br i1 %cmp19, label %for.body21, label %for.end37, !dbg !6367

for.body21:                                       ; preds = %for.cond18
  %22 = load ptr, ptr %desc_ptr, align 8, !dbg !6368, !tbaa !743
  %23 = load i8, ptr %22, align 1, !dbg !6370, !tbaa !880
  %conv22 = sext i8 %23 to i32, !dbg !6370
  call void @gt_xputchar(i32 noundef %conv22), !dbg !6371
  %24 = load ptr, ptr %desc_ptr, align 8, !dbg !6372, !tbaa !743
  %25 = load i8, ptr %24, align 1, !dbg !6374, !tbaa !880
  %conv23 = sext i8 %25 to i32, !dbg !6374
  %cmp24 = icmp eq i32 %conv23, 10, !dbg !6375
  br i1 %cmp24, label %if.then26, label %if.end34, !dbg !6376

if.then26:                                        ; preds = %for.body21
  store i64 0, ptr %i, align 8, !dbg !6377, !tbaa !1287
  br label %for.cond27, !dbg !6380

for.cond27:                                       ; preds = %for.inc31, %if.then26
  %26 = load i64, ptr %i, align 8, !dbg !6381, !tbaa !1287
  %27 = load i64, ptr %initial_space.addr, align 8, !dbg !6383, !tbaa !1287
  %cmp28 = icmp ult i64 %26, %27, !dbg !6384
  br i1 %cmp28, label %for.body30, label %for.end32, !dbg !6385

for.body30:                                       ; preds = %for.cond27
  call void @gt_xputchar(i32 noundef 32), !dbg !6386
  br label %for.inc31, !dbg !6386

for.inc31:                                        ; preds = %for.body30
  %28 = load i64, ptr %i, align 8, !dbg !6387, !tbaa !1287
  %inc = add i64 %28, 1, !dbg !6387
  store i64 %inc, ptr %i, align 8, !dbg !6387, !tbaa !1287
  br label %for.cond27, !dbg !6388, !llvm.loop !6389

for.end32:                                        ; preds = %for.cond27
  %29 = load ptr, ptr %desc_ptr, align 8, !dbg !6391, !tbaa !743
  %incdec.ptr33 = getelementptr inbounds i8, ptr %29, i32 1, !dbg !6391
  store ptr %incdec.ptr33, ptr %desc_ptr, align 8, !dbg !6391, !tbaa !743
  store i8 1, ptr %continue_while, align 1, !dbg !6392, !tbaa !1796
  br label %for.end37, !dbg !6393

if.end34:                                         ; preds = %for.body21
  br label %for.inc35, !dbg !6394

for.inc35:                                        ; preds = %if.end34
  %30 = load ptr, ptr %desc_ptr, align 8, !dbg !6395, !tbaa !743
  %incdec.ptr36 = getelementptr inbounds i8, ptr %30, i32 1, !dbg !6395
  store ptr %incdec.ptr36, ptr %desc_ptr, align 8, !dbg !6395, !tbaa !743
  br label %for.cond18, !dbg !6396, !llvm.loop !6397

for.end37:                                        ; preds = %for.end32, %for.cond18
  %31 = load i8, ptr %continue_while, align 1, !dbg !6399, !tbaa !1796, !range !1270, !noundef !1271
  %tobool = trunc i8 %31 to i1, !dbg !6399
  br i1 %tobool, label %if.then38, label %if.end39, !dbg !6401

if.then38:                                        ; preds = %for.end37
  store i8 0, ptr %continue_while, align 1, !dbg !6402, !tbaa !1796
  br label %while.cond, !dbg !6404, !llvm.loop !6405

if.end39:                                         ; preds = %for.end37
  br label %do.body40, !dbg !6407

do.body40:                                        ; preds = %if.end39
  %32 = load ptr, ptr %desc_ptr, align 8, !dbg !6408, !tbaa !743
  %33 = load i8, ptr %32, align 1, !dbg !6408, !tbaa !880
  %conv41 = sext i8 %33 to i32, !dbg !6408
  %cmp42 = icmp eq i32 %conv41, 32, !dbg !6408
  br i1 %cmp42, label %if.end50, label %lor.lhs.false44, !dbg !6408

lor.lhs.false44:                                  ; preds = %do.body40
  %34 = load ptr, ptr %desc_ptr, align 8, !dbg !6408, !tbaa !743
  %35 = load i8, ptr %34, align 1, !dbg !6408, !tbaa !880
  %conv45 = sext i8 %35 to i32, !dbg !6408
  %cmp46 = icmp eq i32 %conv45, 10, !dbg !6408
  br i1 %cmp46, label %if.end50, label %if.then48, !dbg !6411

if.then48:                                        ; preds = %lor.lhs.false44
  %36 = load ptr, ptr @stderr, align 8, !dbg !6412, !tbaa !743
  %call49 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %36, ptr noundef @.str, ptr noundef @.str.133, ptr noundef @__func__.show_description, ptr noundef @.str.2, i32 noundef 337), !dbg !6412
  call void @abort() #9, !dbg !6412
  unreachable, !dbg !6412

if.end50:                                         ; preds = %lor.lhs.false44, %do.body40
  br label %do.cond51, !dbg !6411

do.cond51:                                        ; preds = %if.end50
  br label %do.end52, !dbg !6411

do.end52:                                         ; preds = %do.cond51
  %37 = load ptr, ptr %desc_ptr, align 8, !dbg !6414, !tbaa !743
  %incdec.ptr53 = getelementptr inbounds i8, ptr %37, i32 1, !dbg !6414
  store ptr %incdec.ptr53, ptr %desc_ptr, align 8, !dbg !6414, !tbaa !743
  call void @gt_xputchar(i32 noundef 10), !dbg !6415
  store i64 0, ptr %i, align 8, !dbg !6416, !tbaa !1287
  br label %for.cond54, !dbg !6418

for.cond54:                                       ; preds = %for.inc58, %do.end52
  %38 = load i64, ptr %i, align 8, !dbg !6419, !tbaa !1287
  %39 = load i64, ptr %initial_space.addr, align 8, !dbg !6421, !tbaa !1287
  %cmp55 = icmp ult i64 %38, %39, !dbg !6422
  br i1 %cmp55, label %for.body57, label %for.end60, !dbg !6423

for.body57:                                       ; preds = %for.cond54
  call void @gt_xputchar(i32 noundef 32), !dbg !6424
  br label %for.inc58, !dbg !6424

for.inc58:                                        ; preds = %for.body57
  %40 = load i64, ptr %i, align 8, !dbg !6425, !tbaa !1287
  %inc59 = add i64 %40, 1, !dbg !6425
  store i64 %inc59, ptr %i, align 8, !dbg !6425, !tbaa !1287
  br label %for.cond54, !dbg !6426, !llvm.loop !6427

for.end60:                                        ; preds = %for.cond54
  br label %while.cond, !dbg !6315, !llvm.loop !6405

while.end:                                        ; preds = %if.then7, %while.cond
  br label %while.cond61, !dbg !6429

while.cond61:                                     ; preds = %if.end79, %for.end77, %while.end
  %41 = load ptr, ptr %desc_ptr, align 8, !dbg !6430, !tbaa !743
  %42 = load ptr, ptr %desc.addr, align 8, !dbg !6431, !tbaa !743
  %43 = load i64, ptr %len.addr, align 8, !dbg !6432, !tbaa !1287
  %add.ptr62 = getelementptr inbounds i8, ptr %42, i64 %43, !dbg !6433
  %cmp63 = icmp ult ptr %41, %add.ptr62, !dbg !6434
  br i1 %cmp63, label %while.body65, label %while.end81, !dbg !6429

while.body65:                                     ; preds = %while.cond61
  %44 = load ptr, ptr %desc_ptr, align 8, !dbg !6435, !tbaa !743
  %45 = load i8, ptr %44, align 1, !dbg !6437, !tbaa !880
  %conv66 = sext i8 %45 to i32, !dbg !6437
  call void @gt_xputchar(i32 noundef %conv66), !dbg !6438
  %46 = load ptr, ptr %desc_ptr, align 8, !dbg !6439, !tbaa !743
  %47 = load i8, ptr %46, align 1, !dbg !6441, !tbaa !880
  %conv67 = sext i8 %47 to i32, !dbg !6441
  %cmp68 = icmp eq i32 %conv67, 10, !dbg !6442
  br i1 %cmp68, label %if.then70, label %if.end79, !dbg !6443

if.then70:                                        ; preds = %while.body65
  store i64 0, ptr %i, align 8, !dbg !6444, !tbaa !1287
  br label %for.cond71, !dbg !6447

for.cond71:                                       ; preds = %for.inc75, %if.then70
  %48 = load i64, ptr %i, align 8, !dbg !6448, !tbaa !1287
  %49 = load i64, ptr %initial_space.addr, align 8, !dbg !6450, !tbaa !1287
  %cmp72 = icmp ult i64 %48, %49, !dbg !6451
  br i1 %cmp72, label %for.body74, label %for.end77, !dbg !6452

for.body74:                                       ; preds = %for.cond71
  call void @gt_xputchar(i32 noundef 32), !dbg !6453
  br label %for.inc75, !dbg !6453

for.inc75:                                        ; preds = %for.body74
  %50 = load i64, ptr %i, align 8, !dbg !6454, !tbaa !1287
  %inc76 = add i64 %50, 1, !dbg !6454
  store i64 %inc76, ptr %i, align 8, !dbg !6454, !tbaa !1287
  br label %for.cond71, !dbg !6455, !llvm.loop !6456

for.end77:                                        ; preds = %for.cond71
  %51 = load ptr, ptr %desc_ptr, align 8, !dbg !6458, !tbaa !743
  %incdec.ptr78 = getelementptr inbounds i8, ptr %51, i32 1, !dbg !6458
  store ptr %incdec.ptr78, ptr %desc_ptr, align 8, !dbg !6458, !tbaa !743
  br label %while.cond61, !dbg !6459, !llvm.loop !6460

if.end79:                                         ; preds = %while.body65
  %52 = load ptr, ptr %desc_ptr, align 8, !dbg !6462, !tbaa !743
  %incdec.ptr80 = getelementptr inbounds i8, ptr %52, i32 1, !dbg !6462
  store ptr %incdec.ptr80, ptr %desc_ptr, align 8, !dbg !6462, !tbaa !743
  br label %while.cond61, !dbg !6429, !llvm.loop !6460

while.end81:                                      ; preds = %while.cond61
  call void @gt_xputchar(i32 noundef 10), !dbg !6463
  call void @llvm.lifetime.end.p0(i64 1, ptr %continue_while) #10, !dbg !6464
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #10, !dbg !6464
  call void @llvm.lifetime.end.p0(i64 8, ptr %desc_ptr) #10, !dbg !6464
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp_ptr) #10, !dbg !6464
  call void @llvm.lifetime.end.p0(i64 8, ptr %width) #10, !dbg !6464
  ret void, !dbg !6464
}

declare !dbg !6465 void @gt_xputs(ptr noundef) #1

declare !dbg !6467 void @gt_xputchar(i32 noundef) #1

declare !dbg !6468 void @gt_str_append_str(ptr noundef, ptr noundef) #1

declare !dbg !6471 ptr @gt_array_get_first(ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(read) }
attributes #12 = { nounwind willreturn memory(none) }

!llvm.dbg.cu = !{!602}
!llvm.module.flags = !{!732, !733, !734, !735, !736}
!llvm.ident = !{!737}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 176, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/core/option.c", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "d80fd23265873f247b908c9d9bd49095")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2376, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 297)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 176, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 2)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 176, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 112, elements: !16)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!16 = !{!17}
!17 = !DISubrange(count: 14)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(scope: null, file: !2, line: 176, type: !20, isLocal: true, isDefinition: true)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !21)
!21 = !{!22}
!22 = !DISubrange(count: 18)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(scope: null, file: !2, line: 215, type: !25, isLocal: true, isDefinition: true)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !26)
!26 = !{!27}
!27 = !DISubrange(count: 22)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(scope: null, file: !2, line: 215, type: !30, isLocal: true, isDefinition: true)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 168, elements: !31)
!31 = !{!32}
!32 = !DISubrange(count: 21)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(scope: null, file: !2, line: 216, type: !35, isLocal: true, isDefinition: true)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 496, elements: !36)
!36 = !{!37}
!37 = !DISubrange(count: 62)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(scope: null, file: !2, line: 216, type: !40, isLocal: true, isDefinition: true)
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 928, elements: !41)
!41 = !{!42}
!42 = !DISubrange(count: 116)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(scope: null, file: !2, line: 218, type: !45, isLocal: true, isDefinition: true)
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 304, elements: !46)
!46 = !{!47}
!47 = !DISubrange(count: 38)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(scope: null, file: !2, line: 231, type: !50, isLocal: true, isDefinition: true)
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !51)
!51 = !{!52}
!52 = !DISubrange(count: 8)
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(scope: null, file: !2, line: 231, type: !55, isLocal: true, isDefinition: true)
!55 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 224, elements: !56)
!56 = !{!57}
!57 = !DISubrange(count: 28)
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(scope: null, file: !2, line: 239, type: !60, isLocal: true, isDefinition: true)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !61)
!61 = !{!62}
!62 = !DISubrange(count: 17)
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(scope: null, file: !2, line: 239, type: !55, isLocal: true, isDefinition: true)
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(scope: null, file: !2, line: 245, type: !67, isLocal: true, isDefinition: true)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !68)
!68 = !{!69}
!69 = !DISubrange(count: 3)
!70 = !DIGlobalVariableExpression(var: !71, expr: !DIExpression())
!71 = distinct !DIGlobalVariable(scope: null, file: !2, line: 245, type: !72, isLocal: true, isDefinition: true)
!72 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 264, elements: !73)
!73 = !{!74}
!74 = !DISubrange(count: 33)
!75 = !DIGlobalVariableExpression(var: !76, expr: !DIExpression())
!76 = distinct !DIGlobalVariable(scope: null, file: !2, line: 253, type: !77, isLocal: true, isDefinition: true)
!77 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 272, elements: !78)
!78 = !{!79}
!79 = !DISubrange(count: 34)
!80 = !DIGlobalVariableExpression(var: !81, expr: !DIExpression())
!81 = distinct !DIGlobalVariable(scope: null, file: !2, line: 261, type: !82, isLocal: true, isDefinition: true)
!82 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !83)
!83 = !{!84}
!84 = !DISubrange(count: 19)
!85 = !DIGlobalVariableExpression(var: !86, expr: !DIExpression())
!86 = distinct !DIGlobalVariable(scope: null, file: !2, line: 261, type: !77, isLocal: true, isDefinition: true)
!87 = !DIGlobalVariableExpression(var: !88, expr: !DIExpression())
!88 = distinct !DIGlobalVariable(scope: null, file: !2, line: 270, type: !89, isLocal: true, isDefinition: true)
!89 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !90)
!90 = !{!91}
!91 = !DISubrange(count: 11)
!92 = !DIGlobalVariableExpression(var: !93, expr: !DIExpression())
!93 = distinct !DIGlobalVariable(scope: null, file: !2, line: 270, type: !94, isLocal: true, isDefinition: true)
!94 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 248, elements: !95)
!95 = !{!96}
!96 = !DISubrange(count: 31)
!97 = !DIGlobalVariableExpression(var: !98, expr: !DIExpression())
!98 = distinct !DIGlobalVariable(scope: null, file: !2, line: 289, type: !99, isLocal: true, isDefinition: true)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 184, elements: !100)
!100 = !{!101}
!101 = !DISubrange(count: 23)
!102 = !DIGlobalVariableExpression(var: !103, expr: !DIExpression())
!103 = distinct !DIGlobalVariable(scope: null, file: !2, line: 291, type: !104, isLocal: true, isDefinition: true)
!104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !105)
!105 = !{!106}
!106 = !DISubrange(count: 6)
!107 = !DIGlobalVariableExpression(var: !108, expr: !DIExpression())
!108 = distinct !DIGlobalVariable(scope: null, file: !2, line: 296, type: !109, isLocal: true, isDefinition: true)
!109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !16)
!110 = !DIGlobalVariableExpression(var: !111, expr: !DIExpression())
!111 = distinct !DIGlobalVariable(scope: null, file: !2, line: 296, type: !77, isLocal: true, isDefinition: true)
!112 = !DIGlobalVariableExpression(var: !113, expr: !DIExpression())
!113 = distinct !DIGlobalVariable(scope: null, file: !2, line: 541, type: !114, isLocal: true, isDefinition: true)
!114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 200, elements: !115)
!115 = !{!116}
!116 = !DISubrange(count: 25)
!117 = !DIGlobalVariableExpression(var: !118, expr: !DIExpression())
!118 = distinct !DIGlobalVariable(scope: null, file: !2, line: 542, type: !119, isLocal: true, isDefinition: true)
!119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !120)
!120 = !{!121}
!121 = !DISubrange(count: 30)
!122 = !DIGlobalVariableExpression(var: !123, expr: !DIExpression())
!123 = distinct !DIGlobalVariable(scope: null, file: !2, line: 543, type: !124, isLocal: true, isDefinition: true)
!124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !31)
!125 = !DIGlobalVariableExpression(var: !126, expr: !DIExpression())
!126 = distinct !DIGlobalVariable(scope: null, file: !2, line: 553, type: !127, isLocal: true, isDefinition: true)
!127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !128)
!128 = !{!129}
!129 = !DISubrange(count: 5)
!130 = !DIGlobalVariableExpression(var: !131, expr: !DIExpression())
!131 = distinct !DIGlobalVariable(scope: null, file: !2, line: 557, type: !132, isLocal: true, isDefinition: true)
!132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !56)
!133 = !DIGlobalVariableExpression(var: !134, expr: !DIExpression())
!134 = distinct !DIGlobalVariable(scope: null, file: !2, line: 558, type: !135, isLocal: true, isDefinition: true)
!135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !136)
!136 = !{!137}
!137 = !DISubrange(count: 16)
!138 = !DIGlobalVariableExpression(var: !139, expr: !DIExpression())
!139 = distinct !DIGlobalVariable(scope: null, file: !2, line: 559, type: !104, isLocal: true, isDefinition: true)
!140 = !DIGlobalVariableExpression(var: !141, expr: !DIExpression())
!141 = distinct !DIGlobalVariable(scope: null, file: !2, line: 561, type: !142, isLocal: true, isDefinition: true)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, elements: !143)
!143 = !{!144}
!144 = !DISubrange(count: 35)
!145 = !DIGlobalVariableExpression(var: !146, expr: !DIExpression())
!146 = distinct !DIGlobalVariable(scope: null, file: !2, line: 565, type: !127, isLocal: true, isDefinition: true)
!147 = !DIGlobalVariableExpression(var: !148, expr: !DIExpression())
!148 = distinct !DIGlobalVariable(scope: null, file: !2, line: 567, type: !149, isLocal: true, isDefinition: true)
!149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !150)
!150 = !{!151}
!151 = !DISubrange(count: 4)
!152 = !DIGlobalVariableExpression(var: !153, expr: !DIExpression())
!153 = distinct !DIGlobalVariable(scope: null, file: !2, line: 569, type: !67, isLocal: true, isDefinition: true)
!154 = !DIGlobalVariableExpression(var: !155, expr: !DIExpression())
!155 = distinct !DIGlobalVariable(scope: null, file: !2, line: 572, type: !156, isLocal: true, isDefinition: true)
!156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !157)
!157 = !{!158}
!158 = !DISubrange(count: 9)
!159 = !DIGlobalVariableExpression(var: !160, expr: !DIExpression())
!160 = distinct !DIGlobalVariable(scope: null, file: !2, line: 573, type: !9, isLocal: true, isDefinition: true)
!161 = !DIGlobalVariableExpression(var: !162, expr: !DIExpression())
!162 = distinct !DIGlobalVariable(scope: null, file: !2, line: 575, type: !67, isLocal: true, isDefinition: true)
!163 = !DIGlobalVariableExpression(var: !164, expr: !DIExpression())
!164 = distinct !DIGlobalVariable(scope: null, file: !2, line: 581, type: !165, isLocal: true, isDefinition: true)
!165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !166)
!166 = !{!167}
!167 = !DISubrange(count: 12)
!168 = !DIGlobalVariableExpression(var: !169, expr: !DIExpression())
!169 = distinct !DIGlobalVariable(scope: null, file: !2, line: 587, type: !67, isLocal: true, isDefinition: true)
!170 = !DIGlobalVariableExpression(var: !171, expr: !DIExpression())
!171 = distinct !DIGlobalVariable(scope: null, file: !2, line: 591, type: !89, isLocal: true, isDefinition: true)
!172 = !DIGlobalVariableExpression(var: !173, expr: !DIExpression())
!173 = distinct !DIGlobalVariable(scope: null, file: !2, line: 593, type: !149, isLocal: true, isDefinition: true)
!174 = !DIGlobalVariableExpression(var: !175, expr: !DIExpression())
!175 = distinct !DIGlobalVariable(scope: null, file: !2, line: 593, type: !67, isLocal: true, isDefinition: true)
!176 = !DIGlobalVariableExpression(var: !177, expr: !DIExpression())
!177 = distinct !DIGlobalVariable(scope: null, file: !2, line: 596, type: !50, isLocal: true, isDefinition: true)
!178 = !DIGlobalVariableExpression(var: !179, expr: !DIExpression())
!179 = distinct !DIGlobalVariable(scope: null, file: !2, line: 598, type: !180, isLocal: true, isDefinition: true)
!180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !181)
!181 = !{!182}
!182 = !DISubrange(count: 10)
!183 = !DIGlobalVariableExpression(var: !184, expr: !DIExpression())
!184 = distinct !DIGlobalVariable(scope: null, file: !2, line: 603, type: !180, isLocal: true, isDefinition: true)
!185 = !DIGlobalVariableExpression(var: !186, expr: !DIExpression())
!186 = distinct !DIGlobalVariable(scope: null, file: !2, line: 610, type: !187, isLocal: true, isDefinition: true)
!187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !188)
!188 = !{!189}
!189 = !DISubrange(count: 13)
!190 = !DIGlobalVariableExpression(var: !191, expr: !DIExpression())
!191 = distinct !DIGlobalVariable(scope: null, file: !2, line: 641, type: !135, isLocal: true, isDefinition: true)
!192 = !DIGlobalVariableExpression(var: !193, expr: !DIExpression())
!193 = distinct !DIGlobalVariable(scope: null, file: !2, line: 647, type: !67, isLocal: true, isDefinition: true)
!194 = !DIGlobalVariableExpression(var: !195, expr: !DIExpression())
!195 = distinct !DIGlobalVariable(scope: null, file: !2, line: 653, type: !89, isLocal: true, isDefinition: true)
!196 = !DIGlobalVariableExpression(var: !197, expr: !DIExpression())
!197 = distinct !DIGlobalVariable(scope: null, file: !2, line: 659, type: !149, isLocal: true, isDefinition: true)
!198 = !DIGlobalVariableExpression(var: !199, expr: !DIExpression())
!199 = distinct !DIGlobalVariable(scope: null, file: !2, line: 662, type: !165, isLocal: true, isDefinition: true)
!200 = !DIGlobalVariableExpression(var: !201, expr: !DIExpression())
!201 = distinct !DIGlobalVariable(scope: null, file: !2, line: 664, type: !9, isLocal: true, isDefinition: true)
!202 = !DIGlobalVariableExpression(var: !203, expr: !DIExpression())
!203 = distinct !DIGlobalVariable(scope: null, file: !2, line: 687, type: !127, isLocal: true, isDefinition: true)
!204 = !DIGlobalVariableExpression(var: !205, expr: !DIExpression())
!205 = distinct !DIGlobalVariable(scope: null, file: !2, line: 703, type: !67, isLocal: true, isDefinition: true)
!206 = !DIGlobalVariableExpression(var: !207, expr: !DIExpression())
!207 = distinct !DIGlobalVariable(scope: null, file: !2, line: 704, type: !67, isLocal: true, isDefinition: true)
!208 = !DIGlobalVariableExpression(var: !209, expr: !DIExpression())
!209 = distinct !DIGlobalVariable(scope: null, file: !2, line: 706, type: !104, isLocal: true, isDefinition: true)
!210 = !DIGlobalVariableExpression(var: !211, expr: !DIExpression())
!211 = distinct !DIGlobalVariable(scope: null, file: !2, line: 720, type: !9, isLocal: true, isDefinition: true)
!212 = !DIGlobalVariableExpression(var: !213, expr: !DIExpression())
!213 = distinct !DIGlobalVariable(scope: null, file: !2, line: 723, type: !214, isLocal: true, isDefinition: true)
!214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !100)
!215 = !DIGlobalVariableExpression(var: !216, expr: !DIExpression())
!216 = distinct !DIGlobalVariable(scope: null, file: !2, line: 724, type: !217, isLocal: true, isDefinition: true)
!217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !218)
!218 = !{!219}
!219 = !DISubrange(count: 56)
!220 = !DIGlobalVariableExpression(var: !221, expr: !DIExpression())
!221 = distinct !DIGlobalVariable(scope: null, file: !2, line: 728, type: !149, isLocal: true, isDefinition: true)
!222 = !DIGlobalVariableExpression(var: !223, expr: !DIExpression())
!223 = distinct !DIGlobalVariable(scope: null, file: !2, line: 730, type: !224, isLocal: true, isDefinition: true)
!224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !225)
!225 = !{!226}
!226 = !DISubrange(count: 15)
!227 = !DIGlobalVariableExpression(var: !228, expr: !DIExpression())
!228 = distinct !DIGlobalVariable(scope: null, file: !2, line: 731, type: !135, isLocal: true, isDefinition: true)
!229 = !DIGlobalVariableExpression(var: !230, expr: !DIExpression())
!230 = distinct !DIGlobalVariable(scope: null, file: !2, line: 733, type: !231, isLocal: true, isDefinition: true)
!231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 400, elements: !232)
!232 = !{!233}
!233 = !DISubrange(count: 50)
!234 = !DIGlobalVariableExpression(var: !235, expr: !DIExpression())
!235 = distinct !DIGlobalVariable(scope: null, file: !2, line: 734, type: !67, isLocal: true, isDefinition: true)
!236 = !DIGlobalVariableExpression(var: !237, expr: !DIExpression())
!237 = distinct !DIGlobalVariable(scope: null, file: !2, line: 941, type: !238, isLocal: true, isDefinition: true)
!238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 240, elements: !120)
!239 = !DIGlobalVariableExpression(var: !240, expr: !DIExpression())
!240 = distinct !DIGlobalVariable(scope: null, file: !2, line: 948, type: !238, isLocal: true, isDefinition: true)
!241 = !DIGlobalVariableExpression(var: !242, expr: !DIExpression())
!242 = distinct !DIGlobalVariable(scope: null, file: !2, line: 956, type: !77, isLocal: true, isDefinition: true)
!243 = !DIGlobalVariableExpression(var: !244, expr: !DIExpression())
!244 = distinct !DIGlobalVariable(scope: null, file: !2, line: 993, type: !99, isLocal: true, isDefinition: true)
!245 = !DIGlobalVariableExpression(var: !246, expr: !DIExpression())
!246 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1013, type: !67, isLocal: true, isDefinition: true)
!247 = !DIGlobalVariableExpression(var: !248, expr: !DIExpression())
!248 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1028, type: !249, isLocal: true, isDefinition: true)
!249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !250)
!250 = !{!251}
!251 = !DISubrange(count: 24)
!252 = !DIGlobalVariableExpression(var: !253, expr: !DIExpression())
!253 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1039, type: !127, isLocal: true, isDefinition: true)
!254 = !DIGlobalVariableExpression(var: !255, expr: !DIExpression())
!255 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1046, type: !104, isLocal: true, isDefinition: true)
!256 = !DIGlobalVariableExpression(var: !257, expr: !DIExpression())
!257 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1061, type: !20, isLocal: true, isDefinition: true)
!258 = !DIGlobalVariableExpression(var: !259, expr: !DIExpression())
!259 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1076, type: !67, isLocal: true, isDefinition: true)
!260 = !DIGlobalVariableExpression(var: !261, expr: !DIExpression())
!261 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1081, type: !262, isLocal: true, isDefinition: true)
!262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !263)
!263 = !{!264}
!264 = !DISubrange(count: 44)
!265 = !DIGlobalVariableExpression(var: !266, expr: !DIExpression())
!266 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1106, type: !267, isLocal: true, isDefinition: true)
!267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 440, elements: !268)
!268 = !{!269}
!269 = !DISubrange(count: 55)
!270 = !DIGlobalVariableExpression(var: !271, expr: !DIExpression())
!271 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1116, type: !35, isLocal: true, isDefinition: true)
!272 = !DIGlobalVariableExpression(var: !273, expr: !DIExpression())
!273 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1127, type: !35, isLocal: true, isDefinition: true)
!274 = !DIGlobalVariableExpression(var: !275, expr: !DIExpression())
!275 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1152, type: !119, isLocal: true, isDefinition: true)
!276 = !DIGlobalVariableExpression(var: !277, expr: !DIExpression())
!277 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1158, type: !262, isLocal: true, isDefinition: true)
!278 = !DIGlobalVariableExpression(var: !279, expr: !DIExpression())
!279 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1166, type: !231, isLocal: true, isDefinition: true)
!280 = !DIGlobalVariableExpression(var: !281, expr: !DIExpression())
!281 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1175, type: !231, isLocal: true, isDefinition: true)
!282 = !DIGlobalVariableExpression(var: !283, expr: !DIExpression())
!283 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1197, type: !35, isLocal: true, isDefinition: true)
!284 = !DIGlobalVariableExpression(var: !285, expr: !DIExpression())
!285 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1207, type: !231, isLocal: true, isDefinition: true)
!286 = !DIGlobalVariableExpression(var: !287, expr: !DIExpression())
!287 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1217, type: !231, isLocal: true, isDefinition: true)
!288 = !DIGlobalVariableExpression(var: !289, expr: !DIExpression())
!289 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1257, type: !290, isLocal: true, isDefinition: true)
!290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 328, elements: !291)
!291 = !{!292}
!292 = !DISubrange(count: 41)
!293 = !DIGlobalVariableExpression(var: !294, expr: !DIExpression())
!294 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1266, type: !295, isLocal: true, isDefinition: true)
!295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !296)
!296 = !{!297}
!297 = !DISubrange(count: 51)
!298 = !DIGlobalVariableExpression(var: !299, expr: !DIExpression())
!299 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1277, type: !295, isLocal: true, isDefinition: true)
!300 = !DIGlobalVariableExpression(var: !301, expr: !DIExpression())
!301 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1303, type: !35, isLocal: true, isDefinition: true)
!302 = !DIGlobalVariableExpression(var: !303, expr: !DIExpression())
!303 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1313, type: !304, isLocal: true, isDefinition: true)
!304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 456, elements: !305)
!305 = !{!306}
!306 = !DISubrange(count: 57)
!307 = !DIGlobalVariableExpression(var: !308, expr: !DIExpression())
!308 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1333, type: !309, isLocal: true, isDefinition: true)
!309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 504, elements: !310)
!310 = !{!311}
!311 = !DISubrange(count: 63)
!312 = !DIGlobalVariableExpression(var: !313, expr: !DIExpression())
!313 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1343, type: !314, isLocal: true, isDefinition: true)
!314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 464, elements: !315)
!315 = !{!316}
!316 = !DISubrange(count: 58)
!317 = !DIGlobalVariableExpression(var: !318, expr: !DIExpression())
!318 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1356, type: !319, isLocal: true, isDefinition: true)
!319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 568, elements: !320)
!320 = !{!321}
!321 = !DISubrange(count: 71)
!322 = !DIGlobalVariableExpression(var: !323, expr: !DIExpression())
!323 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1398, type: !324, isLocal: true, isDefinition: true)
!324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !73)
!325 = !DIGlobalVariableExpression(var: !326, expr: !DIExpression())
!326 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1412, type: !9, isLocal: true, isDefinition: true)
!327 = !DIGlobalVariableExpression(var: !328, expr: !DIExpression())
!328 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1426, type: !156, isLocal: true, isDefinition: true)
!329 = !DIGlobalVariableExpression(var: !330, expr: !DIExpression())
!330 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1427, type: !231, isLocal: true, isDefinition: true)
!331 = !DIGlobalVariableExpression(var: !332, expr: !DIExpression())
!332 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1440, type: !119, isLocal: true, isDefinition: true)
!333 = !DIGlobalVariableExpression(var: !334, expr: !DIExpression())
!334 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1448, type: !335, isLocal: true, isDefinition: true)
!335 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !336)
!336 = !{!337}
!337 = !DISubrange(count: 39)
!338 = !DIGlobalVariableExpression(var: !339, expr: !DIExpression())
!339 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1494, type: !104, isLocal: true, isDefinition: true)
!340 = !DIGlobalVariableExpression(var: !341, expr: !DIExpression())
!341 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1494, type: !249, isLocal: true, isDefinition: true)
!342 = !DIGlobalVariableExpression(var: !343, expr: !DIExpression())
!343 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1502, type: !9, isLocal: true, isDefinition: true)
!344 = !DIGlobalVariableExpression(var: !345, expr: !DIExpression())
!345 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1502, type: !89, isLocal: true, isDefinition: true)
!346 = !DIGlobalVariableExpression(var: !347, expr: !DIExpression())
!347 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1507, type: !104, isLocal: true, isDefinition: true)
!348 = !DIGlobalVariableExpression(var: !349, expr: !DIExpression())
!349 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1507, type: !350, isLocal: true, isDefinition: true)
!350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 552, elements: !351)
!351 = !{!352}
!352 = !DISubrange(count: 69)
!353 = !DIGlobalVariableExpression(var: !354, expr: !DIExpression())
!354 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1839, type: !89, isLocal: true, isDefinition: true)
!355 = !DIGlobalVariableExpression(var: !356, expr: !DIExpression())
!356 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1839, type: !30, isLocal: true, isDefinition: true)
!357 = !DIGlobalVariableExpression(var: !358, expr: !DIExpression())
!358 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1851, type: !359, isLocal: true, isDefinition: true)
!359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 152, elements: !83)
!360 = !DIGlobalVariableExpression(var: !361, expr: !DIExpression())
!361 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1857, type: !99, isLocal: true, isDefinition: true)
!362 = !DIGlobalVariableExpression(var: !363, expr: !DIExpression())
!363 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1863, type: !156, isLocal: true, isDefinition: true)
!364 = !DIGlobalVariableExpression(var: !365, expr: !DIExpression())
!365 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1863, type: !238, isLocal: true, isDefinition: true)
!366 = !DIGlobalVariableExpression(var: !367, expr: !DIExpression())
!367 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1864, type: !368, isLocal: true, isDefinition: true)
!368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !369)
!369 = !{!370}
!370 = !DISubrange(count: 29)
!371 = !DIGlobalVariableExpression(var: !372, expr: !DIExpression())
!372 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1872, type: !373, isLocal: true, isDefinition: true)
!373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !374)
!374 = !{!375}
!375 = !DISubrange(count: 20)
!376 = !DIGlobalVariableExpression(var: !377, expr: !DIExpression())
!377 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1872, type: !378, isLocal: true, isDefinition: true)
!378 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 256, elements: !379)
!379 = !{!380}
!380 = !DISubrange(count: 32)
!381 = !DIGlobalVariableExpression(var: !382, expr: !DIExpression())
!382 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1883, type: !378, isLocal: true, isDefinition: true)
!383 = !DIGlobalVariableExpression(var: !384, expr: !DIExpression())
!384 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1893, type: !385, isLocal: true, isDefinition: true)
!385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 232, elements: !369)
!386 = !DIGlobalVariableExpression(var: !387, expr: !DIExpression())
!387 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1899, type: !378, isLocal: true, isDefinition: true)
!388 = !DIGlobalVariableExpression(var: !389, expr: !DIExpression())
!389 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1906, type: !373, isLocal: true, isDefinition: true)
!390 = !DIGlobalVariableExpression(var: !391, expr: !DIExpression())
!391 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1906, type: !392, isLocal: true, isDefinition: true)
!392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 128, elements: !136)
!393 = !DIGlobalVariableExpression(var: !394, expr: !DIExpression())
!394 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1918, type: !135, isLocal: true, isDefinition: true)
!395 = !DIGlobalVariableExpression(var: !396, expr: !DIExpression())
!396 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1918, type: !114, isLocal: true, isDefinition: true)
!397 = !DIGlobalVariableExpression(var: !398, expr: !DIExpression())
!398 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1931, type: !114, isLocal: true, isDefinition: true)
!399 = !DIGlobalVariableExpression(var: !400, expr: !DIExpression())
!400 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1943, type: !89, isLocal: true, isDefinition: true)
!401 = !DIGlobalVariableExpression(var: !402, expr: !DIExpression())
!402 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1943, type: !403, isLocal: true, isDefinition: true)
!403 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 144, elements: !21)
!404 = !DIGlobalVariableExpression(var: !405, expr: !DIExpression())
!405 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1954, type: !99, isLocal: true, isDefinition: true)
!406 = !DIGlobalVariableExpression(var: !407, expr: !DIExpression())
!407 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1960, type: !94, isLocal: true, isDefinition: true)
!408 = !DIGlobalVariableExpression(var: !409, expr: !DIExpression())
!409 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1966, type: !410, isLocal: true, isDefinition: true)
!410 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 136, elements: !61)
!411 = !DIGlobalVariableExpression(var: !412, expr: !DIExpression())
!412 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1996, type: !135, isLocal: true, isDefinition: true)
!413 = !DIGlobalVariableExpression(var: !414, expr: !DIExpression())
!414 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1999, type: !415, isLocal: true, isDefinition: true)
!415 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 744, elements: !416)
!416 = !{!417}
!417 = !DISubrange(count: 93)
!418 = !DIGlobalVariableExpression(var: !419, expr: !DIExpression())
!419 = distinct !DIGlobalVariable(scope: null, file: !2, line: 2009, type: !127, isLocal: true, isDefinition: true)
!420 = !DIGlobalVariableExpression(var: !421, expr: !DIExpression())
!421 = distinct !DIGlobalVariable(scope: null, file: !2, line: 2011, type: !67, isLocal: true, isDefinition: true)
!422 = !DIGlobalVariableExpression(var: !423, expr: !DIExpression())
!423 = distinct !DIGlobalVariable(scope: null, file: !2, line: 2025, type: !67, isLocal: true, isDefinition: true)
!424 = !DIGlobalVariableExpression(var: !425, expr: !DIExpression())
!425 = distinct !DIGlobalVariable(scope: null, file: !2, line: 2046, type: !109, isLocal: true, isDefinition: true)
!426 = !DIGlobalVariableExpression(var: !427, expr: !DIExpression())
!427 = distinct !DIGlobalVariable(scope: null, file: !2, line: 2046, type: !428, isLocal: true, isDefinition: true)
!428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 208, elements: !429)
!429 = !{!430}
!430 = !DISubrange(count: 26)
!431 = !DIGlobalVariableExpression(var: !432, expr: !DIExpression())
!432 = distinct !DIGlobalVariable(scope: null, file: !2, line: 2052, type: !433, isLocal: true, isDefinition: true)
!433 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 216, elements: !434)
!434 = !{!435}
!435 = !DISubrange(count: 27)
!436 = !DIGlobalVariableExpression(var: !437, expr: !DIExpression())
!437 = distinct !DIGlobalVariable(scope: null, file: !2, line: 2058, type: !238, isLocal: true, isDefinition: true)
!438 = !DIGlobalVariableExpression(var: !439, expr: !DIExpression())
!439 = distinct !DIGlobalVariable(scope: null, file: !2, line: 183, type: !440, isLocal: true, isDefinition: true)
!440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !441)
!441 = !{!442}
!442 = !DISubrange(count: 7)
!443 = !DIGlobalVariableExpression(var: !444, expr: !DIExpression())
!444 = distinct !DIGlobalVariable(scope: null, file: !2, line: 183, type: !392, isLocal: true, isDefinition: true)
!445 = !DIGlobalVariableExpression(var: !446, expr: !DIExpression())
!446 = distinct !DIGlobalVariable(scope: null, file: !2, line: 520, type: !359, isLocal: true, isDefinition: true)
!447 = !DIGlobalVariableExpression(var: !448, expr: !DIExpression())
!448 = distinct !DIGlobalVariable(scope: null, file: !2, line: 507, type: !50, isLocal: true, isDefinition: true)
!449 = !DIGlobalVariableExpression(var: !450, expr: !DIExpression())
!450 = distinct !DIGlobalVariable(scope: null, file: !2, line: 507, type: !451, isLocal: true, isDefinition: true)
!451 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 160, elements: !374)
!452 = !DIGlobalVariableExpression(var: !453, expr: !DIExpression())
!453 = distinct !DIGlobalVariable(scope: null, file: !2, line: 139, type: !127, isLocal: true, isDefinition: true)
!454 = !DIGlobalVariableExpression(var: !455, expr: !DIExpression())
!455 = distinct !DIGlobalVariable(scope: null, file: !2, line: 139, type: !456, isLocal: true, isDefinition: true)
!456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !457)
!457 = !{!458}
!458 = !DISubrange(count: 40)
!459 = !DIGlobalVariableExpression(var: !460, expr: !DIExpression())
!460 = distinct !DIGlobalVariable(scope: null, file: !2, line: 141, type: !25, isLocal: true, isDefinition: true)
!461 = !DIGlobalVariableExpression(var: !462, expr: !DIExpression())
!462 = distinct !DIGlobalVariable(scope: null, file: !2, line: 149, type: !104, isLocal: true, isDefinition: true)
!463 = !DIGlobalVariableExpression(var: !464, expr: !DIExpression())
!464 = distinct !DIGlobalVariable(scope: null, file: !2, line: 149, type: !45, isLocal: true, isDefinition: true)
!465 = !DIGlobalVariableExpression(var: !466, expr: !DIExpression())
!466 = distinct !DIGlobalVariable(scope: null, file: !2, line: 158, type: !50, isLocal: true, isDefinition: true)
!467 = !DIGlobalVariableExpression(var: !468, expr: !DIExpression())
!468 = distinct !DIGlobalVariable(scope: null, file: !2, line: 158, type: !469, isLocal: true, isDefinition: true)
!469 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 368, elements: !470)
!470 = !{!471}
!471 = !DISubrange(count: 46)
!472 = !DIGlobalVariableExpression(var: !473, expr: !DIExpression())
!473 = distinct !DIGlobalVariable(scope: null, file: !2, line: 168, type: !50, isLocal: true, isDefinition: true)
!474 = !DIGlobalVariableExpression(var: !475, expr: !DIExpression())
!475 = distinct !DIGlobalVariable(scope: null, file: !2, line: 168, type: !476, isLocal: true, isDefinition: true)
!476 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 296, elements: !477)
!477 = !{!478}
!478 = !DISubrange(count: 37)
!479 = !DIGlobalVariableExpression(var: !480, expr: !DIExpression())
!480 = distinct !DIGlobalVariable(scope: null, file: !2, line: 966, type: !481, isLocal: true, isDefinition: true)
!481 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 816, elements: !482)
!482 = !{!483}
!483 = !DISubrange(count: 102)
!484 = !DIGlobalVariableExpression(var: !485, expr: !DIExpression())
!485 = distinct !DIGlobalVariable(scope: null, file: !2, line: 741, type: !486, isLocal: true, isDefinition: true)
!486 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 104, elements: !188)
!487 = !DIGlobalVariableExpression(var: !488, expr: !DIExpression())
!488 = distinct !DIGlobalVariable(scope: null, file: !2, line: 766, type: !489, isLocal: true, isDefinition: true)
!489 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 304, elements: !46)
!490 = !DIGlobalVariableExpression(var: !491, expr: !DIExpression())
!491 = distinct !DIGlobalVariable(scope: null, file: !2, line: 753, type: !99, isLocal: true, isDefinition: true)
!492 = !DIGlobalVariableExpression(var: !493, expr: !DIExpression())
!493 = distinct !DIGlobalVariable(scope: null, file: !2, line: 365, type: !494, isLocal: true, isDefinition: true)
!494 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 80, elements: !181)
!495 = !DIGlobalVariableExpression(var: !496, expr: !DIExpression())
!496 = distinct !DIGlobalVariable(scope: null, file: !2, line: 366, type: !497, isLocal: true, isDefinition: true)
!497 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 728, elements: !498)
!498 = !{!499}
!499 = !DISubrange(count: 91)
!500 = !DIGlobalVariableExpression(var: !501, expr: !DIExpression())
!501 = distinct !DIGlobalVariable(scope: null, file: !2, line: 381, type: !20, isLocal: true, isDefinition: true)
!502 = !DIGlobalVariableExpression(var: !503, expr: !DIExpression())
!503 = distinct !DIGlobalVariable(scope: null, file: !2, line: 383, type: !109, isLocal: true, isDefinition: true)
!504 = !DIGlobalVariableExpression(var: !505, expr: !DIExpression())
!505 = distinct !DIGlobalVariable(scope: null, file: !2, line: 384, type: !127, isLocal: true, isDefinition: true)
!506 = !DIGlobalVariableExpression(var: !507, expr: !DIExpression())
!507 = distinct !DIGlobalVariable(scope: null, file: !2, line: 393, type: !50, isLocal: true, isDefinition: true)
!508 = !DIGlobalVariableExpression(var: !509, expr: !DIExpression())
!509 = distinct !DIGlobalVariable(scope: null, file: !2, line: 394, type: !510, isLocal: true, isDefinition: true)
!510 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !511)
!511 = !{!512}
!512 = !DISubrange(count: 1)
!513 = !DIGlobalVariableExpression(var: !514, expr: !DIExpression())
!514 = distinct !DIGlobalVariable(scope: null, file: !2, line: 401, type: !20, isLocal: true, isDefinition: true)
!515 = !DIGlobalVariableExpression(var: !516, expr: !DIExpression())
!516 = distinct !DIGlobalVariable(scope: null, file: !2, line: 405, type: !224, isLocal: true, isDefinition: true)
!517 = !DIGlobalVariableExpression(var: !518, expr: !DIExpression())
!518 = distinct !DIGlobalVariable(scope: null, file: !2, line: 417, type: !104, isLocal: true, isDefinition: true)
!519 = !DIGlobalVariableExpression(var: !520, expr: !DIExpression())
!520 = distinct !DIGlobalVariable(scope: null, file: !2, line: 424, type: !149, isLocal: true, isDefinition: true)
!521 = !DIGlobalVariableExpression(var: !522, expr: !DIExpression())
!522 = distinct !DIGlobalVariable(scope: null, file: !2, line: 431, type: !149, isLocal: true, isDefinition: true)
!523 = !DIGlobalVariableExpression(var: !524, expr: !DIExpression())
!524 = distinct !DIGlobalVariable(scope: null, file: !2, line: 438, type: !127, isLocal: true, isDefinition: true)
!525 = !DIGlobalVariableExpression(var: !526, expr: !DIExpression())
!526 = distinct !DIGlobalVariable(scope: null, file: !2, line: 445, type: !127, isLocal: true, isDefinition: true)
!527 = !DIGlobalVariableExpression(var: !528, expr: !DIExpression())
!528 = distinct !DIGlobalVariable(scope: null, file: !2, line: 452, type: !156, isLocal: true, isDefinition: true)
!529 = !DIGlobalVariableExpression(var: !530, expr: !DIExpression())
!530 = distinct !DIGlobalVariable(scope: null, file: !2, line: 470, type: !531, isLocal: true, isDefinition: true)
!531 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !532)
!532 = !{!533}
!533 = !DISubrange(count: 60)
!534 = !DIGlobalVariableExpression(var: !535, expr: !DIExpression())
!535 = distinct !DIGlobalVariable(scope: null, file: !2, line: 473, type: !124, isLocal: true, isDefinition: true)
!536 = !DIGlobalVariableExpression(var: !537, expr: !DIExpression())
!537 = distinct !DIGlobalVariable(scope: null, file: !2, line: 309, type: !538, isLocal: true, isDefinition: true)
!538 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !539)
!539 = !{!540}
!540 = !DISubrange(count: 48)
!541 = !DIGlobalVariableExpression(var: !542, expr: !DIExpression())
!542 = distinct !DIGlobalVariable(scope: null, file: !2, line: 309, type: !410, isLocal: true, isDefinition: true)
!543 = !DIGlobalVariableExpression(var: !544, expr: !DIExpression())
!544 = distinct !DIGlobalVariable(scope: null, file: !2, line: 337, type: !45, isLocal: true, isDefinition: true)
!545 = !DIGlobalVariableExpression(var: !546, expr: !DIExpression())
!546 = distinct !DIGlobalVariable(scope: null, file: !2, line: 779, type: !547, isLocal: true, isDefinition: true)
!547 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 192, elements: !250)
!548 = !DIGlobalVariableExpression(var: !549, expr: !DIExpression())
!549 = distinct !DIGlobalVariable(scope: null, file: !2, line: 784, type: !550, isLocal: true, isDefinition: true)
!550 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !429)
!551 = !DIGlobalVariableExpression(var: !552, expr: !DIExpression())
!552 = distinct !DIGlobalVariable(scope: null, file: !2, line: 799, type: !428, isLocal: true, isDefinition: true)
!553 = !DIGlobalVariableExpression(var: !554, expr: !DIExpression())
!554 = distinct !DIGlobalVariable(scope: null, file: !2, line: 806, type: !555, isLocal: true, isDefinition: true)
!555 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !556)
!556 = !{!557}
!557 = !DISubrange(count: 36)
!558 = !DIGlobalVariableExpression(var: !559, expr: !DIExpression())
!559 = distinct !DIGlobalVariable(scope: null, file: !2, line: 811, type: !142, isLocal: true, isDefinition: true)
!560 = !DIGlobalVariableExpression(var: !561, expr: !DIExpression())
!561 = distinct !DIGlobalVariable(scope: null, file: !2, line: 830, type: !180, isLocal: true, isDefinition: true)
!562 = !DIGlobalVariableExpression(var: !563, expr: !DIExpression())
!563 = distinct !DIGlobalVariable(scope: null, file: !2, line: 832, type: !20, isLocal: true, isDefinition: true)
!564 = !DIGlobalVariableExpression(var: !565, expr: !DIExpression())
!565 = distinct !DIGlobalVariable(scope: null, file: !2, line: 834, type: !149, isLocal: true, isDefinition: true)
!566 = !DIGlobalVariableExpression(var: !567, expr: !DIExpression())
!567 = distinct !DIGlobalVariable(scope: null, file: !2, line: 839, type: !9, isLocal: true, isDefinition: true)
!568 = !DIGlobalVariableExpression(var: !569, expr: !DIExpression())
!569 = distinct !DIGlobalVariable(scope: null, file: !2, line: 843, type: !440, isLocal: true, isDefinition: true)
!570 = !DIGlobalVariableExpression(var: !571, expr: !DIExpression())
!571 = distinct !DIGlobalVariable(scope: null, file: !2, line: 866, type: !547, isLocal: true, isDefinition: true)
!572 = !DIGlobalVariableExpression(var: !573, expr: !DIExpression())
!573 = distinct !DIGlobalVariable(scope: null, file: !2, line: 874, type: !574, isLocal: true, isDefinition: true)
!574 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 392, elements: !575)
!575 = !{!576}
!576 = !DISubrange(count: 49)
!577 = !DIGlobalVariableExpression(var: !578, expr: !DIExpression())
!578 = distinct !DIGlobalVariable(scope: null, file: !2, line: 889, type: !94, isLocal: true, isDefinition: true)
!579 = !DIGlobalVariableExpression(var: !580, expr: !DIExpression())
!580 = distinct !DIGlobalVariable(scope: null, file: !2, line: 897, type: !574, isLocal: true, isDefinition: true)
!581 = !DIGlobalVariableExpression(var: !582, expr: !DIExpression())
!582 = distinct !DIGlobalVariable(scope: null, file: !2, line: 907, type: !309, isLocal: true, isDefinition: true)
!583 = !DIGlobalVariableExpression(var: !584, expr: !DIExpression())
!584 = distinct !DIGlobalVariable(scope: null, file: !2, line: 923, type: !585, isLocal: true, isDefinition: true)
!585 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 616, elements: !586)
!586 = !{!587}
!587 = !DISubrange(count: 77)
!588 = !DIGlobalVariableExpression(var: !589, expr: !DIExpression())
!589 = distinct !DIGlobalVariable(scope: null, file: !2, line: 126, type: !324, isLocal: true, isDefinition: true)
!590 = !DIGlobalVariableExpression(var: !591, expr: !DIExpression())
!591 = distinct !DIGlobalVariable(scope: null, file: !2, line: 126, type: !14, isLocal: true, isDefinition: true)
!592 = !DIGlobalVariableExpression(var: !593, expr: !DIExpression())
!593 = distinct !DIGlobalVariable(scope: null, file: !2, line: 127, type: !594, isLocal: true, isDefinition: true)
!594 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 576, elements: !595)
!595 = !{!596}
!596 = !DISubrange(count: 72)
!597 = !DIGlobalVariableExpression(var: !598, expr: !DIExpression())
!598 = distinct !DIGlobalVariable(scope: null, file: !2, line: 127, type: !599, isLocal: true, isDefinition: true)
!599 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 808, elements: !600)
!600 = !{!601}
!601 = !DISubrange(count: 101)
!602 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !603, retainedTypes: !648, globals: !731, splitDebugInlining: false, nameTableKind: None)
!603 = !{!604, !622, !637, !642}
!604 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !2, line: 39, baseType: !605, size: 32, elements: !606)
!605 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!606 = !{!607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621}
!607 = !DIEnumerator(name: "OPTION_BOOL", value: 0)
!608 = !DIEnumerator(name: "OPTION_CHOICE", value: 1)
!609 = !DIEnumerator(name: "OPTION_DOUBLE", value: 2)
!610 = !DIEnumerator(name: "OPTION_FILENAME", value: 3)
!611 = !DIEnumerator(name: "OPTION_HELP", value: 4)
!612 = !DIEnumerator(name: "OPTION_HELPPLUS", value: 5)
!613 = !DIEnumerator(name: "OPTION_HELPDEV", value: 6)
!614 = !DIEnumerator(name: "OPTION_INT", value: 7)
!615 = !DIEnumerator(name: "OPTION_UINT", value: 8)
!616 = !DIEnumerator(name: "OPTION_LONG", value: 9)
!617 = !DIEnumerator(name: "OPTION_ULONG", value: 10)
!618 = !DIEnumerator(name: "OPTION_RANGE", value: 11)
!619 = !DIEnumerator(name: "OPTION_STRING", value: 12)
!620 = !DIEnumerator(name: "OPTION_STRING_ARRAY", value: 13)
!621 = !DIEnumerator(name: "OPTION_VERSION", value: 14)
!622 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !623, line: 46, baseType: !605, size: 32, elements: !624)
!623 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!624 = !{!625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636}
!625 = !DIEnumerator(name: "_ISupper", value: 256)
!626 = !DIEnumerator(name: "_ISlower", value: 512)
!627 = !DIEnumerator(name: "_ISalpha", value: 1024)
!628 = !DIEnumerator(name: "_ISdigit", value: 2048)
!629 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!630 = !DIEnumerator(name: "_ISspace", value: 8192)
!631 = !DIEnumerator(name: "_ISprint", value: 16384)
!632 = !DIEnumerator(name: "_ISgraph", value: 32768)
!633 = !DIEnumerator(name: "_ISblank", value: 1)
!634 = !DIEnumerator(name: "_IScntrl", value: 2)
!635 = !DIEnumerator(name: "_ISpunct", value: 4)
!636 = !DIEnumerator(name: "_ISalnum", value: 8)
!637 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !638, line: 28, baseType: !605, size: 32, elements: !639)
!638 = !DIFile(filename: "src/core/hashmap_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "fbce1bd34708e945658f0c72ee2baa3b")
!639 = !{!640, !641}
!640 = !DIEnumerator(name: "GT_HASH_DIRECT", value: 0)
!641 = !DIEnumerator(name: "GT_HASH_STRING", value: 1)
!642 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "GtOPrval", file: !643, line: 35, baseType: !605, size: 32, elements: !644)
!643 = !DIFile(filename: "src/core/option_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "4af8e95b11f2236d309c3019659f4935")
!644 = !{!645, !646, !647}
!645 = !DIEnumerator(name: "GT_OPTION_PARSER_OK", value: 0)
!646 = !DIEnumerator(name: "GT_OPTION_PARSER_ERROR", value: 1)
!647 = !DIEnumerator(name: "GT_OPTION_PARSER_REQUESTS_EXIT", value: 2)
!648 = !{!649, !650, !651, !652, !723, !724, !725, !726, !727, !728, !729, !730, !680, !653, !660}
!649 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!650 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtOption", file: !643, line: 33, baseType: !655)
!655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GtOption", file: !2, line: 79, size: 896, elements: !656)
!656 = !{!657, !659, !664, !665, !666, !691, !693, !700, !707, !708, !709, !710, !711, !712, !713, !714, !715, !720, !721, !722}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "option_type", scope: !655, file: !2, line: 80, baseType: !658, size: 32)
!658 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtOptionType", file: !2, line: 55, baseType: !604)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "option_str", scope: !655, file: !2, line: 81, baseType: !660, size: 64, offset: 64)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtStr", file: !662, line: 27, baseType: !663)
!662 = !DIFile(filename: "src/core/str_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "654ceffd2f9ff17a42a8522fe21401e1")
!663 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtStr", file: !662, line: 27, flags: DIFlagFwdDecl)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !655, file: !2, line: 82, baseType: !660, size: 64, offset: 128)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !655, file: !2, line: 83, baseType: !651, size: 64, offset: 192)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "default_value", scope: !655, file: !2, line: 93, baseType: !667, size: 128, offset: 256)
!667 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !655, file: !2, line: 84, size: 128, elements: !668)
!668 = !{!669, !671, !673, !674, !675, !679, !682, !689}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !667, file: !2, line: 85, baseType: !670, size: 8)
!670 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !667, file: !2, line: 86, baseType: !672, size: 64)
!672 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !667, file: !2, line: 87, baseType: !649, size: 32)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "ui", scope: !667, file: !2, line: 88, baseType: !605, size: 32)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !667, file: !2, line: 89, baseType: !676, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtWord", file: !677, line: 94, baseType: !678)
!677 = !DIFile(filename: "src/core/types_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "c1165644814b09ecabcfbfd3bda28077")
!678 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "ul", scope: !667, file: !2, line: 90, baseType: !680, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtUword", file: !677, line: 83, baseType: !681)
!681 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !667, file: !2, line: 91, baseType: !683, size: 128)
!683 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtRange", file: !684, line: 29, baseType: !685)
!684 = !DIFile(filename: "src/core/range_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "05971597f0a8f239b91be35d4168fb4b")
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GtRange", file: !684, line: 31, size: 128, elements: !686)
!686 = !{!687, !688}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !685, file: !684, line: 32, baseType: !680, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !685, file: !684, line: 33, baseType: !680, size: 64, offset: 64)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !667, file: !2, line: 92, baseType: !690, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !655, file: !2, line: 94, baseType: !692, size: 64, offset: 384)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "min_value", scope: !655, file: !2, line: 100, baseType: !694, size: 64, offset: 448)
!694 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !655, file: !2, line: 95, size: 64, elements: !695)
!695 = !{!696, !697, !698, !699}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !694, file: !2, line: 96, baseType: !672, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !694, file: !2, line: 97, baseType: !649, size: 32)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "ui", scope: !694, file: !2, line: 98, baseType: !605, size: 32)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "ul", scope: !694, file: !2, line: 99, baseType: !680, size: 64)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "max_value", scope: !655, file: !2, line: 106, baseType: !701, size: 64, offset: 512)
!701 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !655, file: !2, line: 101, size: 64, elements: !702)
!702 = !{!703, !704, !705, !706}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !701, file: !2, line: 102, baseType: !672, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !701, file: !2, line: 103, baseType: !649, size: 32)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "ui", scope: !701, file: !2, line: 104, baseType: !605, size: 32)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "ul", scope: !701, file: !2, line: 105, baseType: !680, size: 64)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "is_set", scope: !655, file: !2, line: 107, baseType: !670, size: 8, offset: 576)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "is_mandatory", scope: !655, file: !2, line: 108, baseType: !670, size: 8, offset: 584)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "hide_default", scope: !655, file: !2, line: 109, baseType: !670, size: 8, offset: 592)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "min_value_set", scope: !655, file: !2, line: 110, baseType: !670, size: 8, offset: 600)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "max_value_set", scope: !655, file: !2, line: 111, baseType: !670, size: 8, offset: 608)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "is_extended_option", scope: !655, file: !2, line: 112, baseType: !670, size: 8, offset: 616)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "is_development_option", scope: !655, file: !2, line: 113, baseType: !670, size: 8, offset: 624)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "argument_is_optional", scope: !655, file: !2, line: 114, baseType: !670, size: 8, offset: 632)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "implications", scope: !655, file: !2, line: 115, baseType: !716, size: 64, offset: 640)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtArray", file: !718, line: 27, baseType: !719)
!718 = !DIFile(filename: "src/core/array_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "4614c0e64ebb94278b4837ce435832ba")
!719 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtArray", file: !718, line: 27, flags: DIFlagFwdDecl)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "exclusions", scope: !655, file: !2, line: 117, baseType: !716, size: 64, offset: 704)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "mandatory_either_options", scope: !655, file: !2, line: 118, baseType: !716, size: 64, offset: 768)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !655, file: !2, line: 119, baseType: !605, size: 32, offset: 832)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!731 = !{!0, !7, !12, !18, !23, !28, !33, !38, !43, !48, !53, !58, !63, !65, !70, !75, !80, !85, !87, !92, !97, !102, !107, !110, !112, !117, !122, !125, !130, !133, !138, !140, !145, !147, !152, !154, !159, !161, !163, !168, !170, !172, !174, !176, !178, !183, !185, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !215, !220, !222, !227, !229, !234, !236, !239, !241, !243, !245, !247, !252, !254, !256, !258, !260, !265, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !293, !298, !300, !302, !307, !312, !317, !322, !325, !327, !329, !331, !333, !338, !340, !342, !344, !346, !348, !353, !355, !357, !360, !362, !364, !366, !371, !376, !381, !383, !386, !388, !390, !393, !395, !397, !399, !401, !404, !406, !408, !411, !413, !418, !420, !422, !424, !426, !431, !436, !438, !443, !445, !447, !449, !452, !454, !459, !461, !463, !465, !467, !472, !474, !479, !484, !487, !490, !492, !495, !500, !502, !504, !506, !508, !513, !515, !517, !519, !521, !523, !525, !527, !529, !534, !536, !541, !543, !545, !548, !551, !553, !558, !560, !562, !564, !566, !568, !570, !572, !577, !579, !581, !583, !588, !590, !592, !597}
!732 = !{i32 7, !"Dwarf Version", i32 5}
!733 = !{i32 2, !"Debug Info Version", i32 3}
!734 = !{i32 1, !"wchar_size", i32 4}
!735 = !{i32 8, !"PIC Level", i32 2}
!736 = !{i32 7, !"uwtable", i32 2}
!737 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!738 = distinct !DISubprogram(name: "gt_option_ref", scope: !2, file: !2, line: 174, type: !739, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !741)
!739 = !DISubroutineType(types: !740)
!740 = !{!653, !653}
!741 = !{!742}
!742 = !DILocalVariable(name: "o", arg: 1, scope: !738, file: !2, line: 174, type: !653)
!743 = !{!744, !744, i64 0}
!744 = !{!"any pointer", !745, i64 0}
!745 = !{!"omnipotent char", !746, i64 0}
!746 = !{!"Simple C/C++ TBAA"}
!747 = !DILocation(line: 174, column: 35, scope: !738)
!748 = !DILocation(line: 176, column: 3, scope: !738)
!749 = !DILocation(line: 176, column: 3, scope: !750)
!750 = distinct !DILexicalBlock(scope: !751, file: !2, line: 176, column: 3)
!751 = distinct !DILexicalBlock(scope: !738, file: !2, line: 176, column: 3)
!752 = !DILocation(line: 176, column: 3, scope: !751)
!753 = !DILocation(line: 176, column: 3, scope: !754)
!754 = distinct !DILexicalBlock(scope: !750, file: !2, line: 176, column: 3)
!755 = !DILocation(line: 177, column: 3, scope: !738)
!756 = !DILocation(line: 177, column: 6, scope: !738)
!757 = !DILocation(line: 177, column: 21, scope: !738)
!758 = !{!759, !761, i64 104}
!759 = !{!"GtOption", !745, i64 0, !744, i64 8, !744, i64 16, !744, i64 24, !745, i64 32, !744, i64 48, !745, i64 56, !745, i64 64, !760, i64 72, !760, i64 73, !760, i64 74, !760, i64 75, !760, i64 76, !760, i64 77, !760, i64 78, !760, i64 79, !744, i64 80, !744, i64 88, !744, i64 96, !761, i64 104}
!760 = !{!"_Bool", !745, i64 0}
!761 = !{!"int", !745, i64 0}
!762 = !DILocation(line: 178, column: 10, scope: !738)
!763 = !DILocation(line: 178, column: 3, scope: !738)
!764 = !DISubprogram(name: "fprintf", scope: !765, file: !765, line: 350, type: !766, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!765 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!766 = !DISubroutineType(types: !767)
!767 = !{!649, !768, !820, null}
!768 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !769)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !771, line: 7, baseType: !772)
!771 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !773, line: 49, size: 1728, elements: !774)
!773 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!774 = !{!775, !776, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !791, !793, !794, !795, !798, !799, !801, !802, !805, !807, !810, !813, !814, !815, !818, !819}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !772, file: !773, line: 51, baseType: !649, size: 32)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !772, file: !773, line: 54, baseType: !777, size: 64, offset: 64)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !772, file: !773, line: 55, baseType: !777, size: 64, offset: 128)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !772, file: !773, line: 56, baseType: !777, size: 64, offset: 192)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !772, file: !773, line: 57, baseType: !777, size: 64, offset: 256)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !772, file: !773, line: 58, baseType: !777, size: 64, offset: 320)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !772, file: !773, line: 59, baseType: !777, size: 64, offset: 384)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !772, file: !773, line: 60, baseType: !777, size: 64, offset: 448)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !772, file: !773, line: 61, baseType: !777, size: 64, offset: 512)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !772, file: !773, line: 64, baseType: !777, size: 64, offset: 576)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !772, file: !773, line: 65, baseType: !777, size: 64, offset: 640)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !772, file: !773, line: 66, baseType: !777, size: 64, offset: 704)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !772, file: !773, line: 68, baseType: !789, size: 64, offset: 768)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !773, line: 36, flags: DIFlagFwdDecl)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !772, file: !773, line: 70, baseType: !792, size: 64, offset: 832)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !772, file: !773, line: 72, baseType: !649, size: 32, offset: 896)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !772, file: !773, line: 73, baseType: !649, size: 32, offset: 928)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !772, file: !773, line: 74, baseType: !796, size: 64, offset: 960)
!796 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !797, line: 152, baseType: !678)
!797 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!798 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !772, file: !773, line: 77, baseType: !650, size: 16, offset: 1024)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !772, file: !773, line: 78, baseType: !800, size: 8, offset: 1040)
!800 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !772, file: !773, line: 79, baseType: !510, size: 8, offset: 1048)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !772, file: !773, line: 81, baseType: !803, size: 64, offset: 1088)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !773, line: 43, baseType: null)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !772, file: !773, line: 89, baseType: !806, size: 64, offset: 1152)
!806 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !797, line: 153, baseType: !678)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !772, file: !773, line: 91, baseType: !808, size: 64, offset: 1216)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !773, line: 37, flags: DIFlagFwdDecl)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !772, file: !773, line: 92, baseType: !811, size: 64, offset: 1280)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !773, line: 38, flags: DIFlagFwdDecl)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !772, file: !773, line: 93, baseType: !792, size: 64, offset: 1344)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !772, file: !773, line: 94, baseType: !651, size: 64, offset: 1408)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !772, file: !773, line: 95, baseType: !816, size: 64, offset: 1472)
!816 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !817, line: 70, baseType: !681)
!817 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!818 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !772, file: !773, line: 96, baseType: !649, size: 32, offset: 1536)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !772, file: !773, line: 98, baseType: !373, size: 160, offset: 1568)
!820 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !690)
!821 = !DISubprogram(name: "abort", scope: !822, file: !822, line: 598, type: !823, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!822 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!823 = !DISubroutineType(types: !824)
!824 = !{null}
!825 = distinct !DISubprogram(name: "gt_option_parser_new", scope: !2, file: !2, line: 211, type: !826, scopeLine: 213, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !861)
!826 = !DISubroutineType(types: !827)
!827 = !{!828, !690, !690}
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtOptionParser", file: !643, line: 27, baseType: !830)
!830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GtOptionParser", file: !2, line: 62, size: 768, elements: !831)
!831 = !{!832, !833, !834, !835, !836, !837, !838, !839, !848, !849, !854, !855, !856, !857}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "progname", scope: !830, file: !2, line: 63, baseType: !777, size: 64)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "synopsis", scope: !830, file: !2, line: 64, baseType: !777, size: 64, offset: 64)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "one_liner", scope: !830, file: !2, line: 65, baseType: !777, size: 64, offset: 128)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !830, file: !2, line: 66, baseType: !716, size: 64, offset: 192)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "hooks", scope: !830, file: !2, line: 67, baseType: !716, size: 64, offset: 256)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "common_options_added", scope: !830, file: !2, line: 68, baseType: !670, size: 8, offset: 320)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "refer_to_manual", scope: !830, file: !2, line: 69, baseType: !670, size: 8, offset: 328)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "comment_func", scope: !830, file: !2, line: 70, baseType: !840, size: 64, offset: 384)
!840 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtShowCommentFunc", file: !643, line: 51, baseType: !841)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = !DISubroutineType(types: !843)
!843 = !{!649, !690, !651, !844}
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtError", file: !846, line: 44, baseType: !847)
!846 = !DIFile(filename: "src/core/error_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "0ad6f2e2c3b3d359d3ae1d5a6962bc56")
!847 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtError", file: !846, line: 44, flags: DIFlagFwdDecl)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "comment_func_data", scope: !830, file: !2, line: 71, baseType: !651, size: 64, offset: 448)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "version_func", scope: !830, file: !2, line: 72, baseType: !850, size: 64, offset: 512)
!850 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtShowVersionFunc", file: !643, line: 50, baseType: !851)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = !DISubroutineType(types: !853)
!853 = !{null, !690}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "mail_address", scope: !830, file: !2, line: 73, baseType: !690, size: 64, offset: 576)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "min_additional_arguments", scope: !830, file: !2, line: 74, baseType: !605, size: 32, offset: 640)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "max_additional_arguments", scope: !830, file: !2, line: 75, baseType: !605, size: 32, offset: 672)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "optionindex", scope: !830, file: !2, line: 76, baseType: !858, size: 64, offset: 704)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtHashmap", file: !638, line: 26, baseType: !860)
!860 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtHashmap", file: !638, line: 26, flags: DIFlagFwdDecl)
!861 = !{!862, !863, !864}
!862 = !DILocalVariable(name: "synopsis", arg: 1, scope: !825, file: !2, line: 211, type: !690)
!863 = !DILocalVariable(name: "one_liner", arg: 2, scope: !825, file: !2, line: 212, type: !690)
!864 = !DILocalVariable(name: "op", scope: !825, file: !2, line: 214, type: !828)
!865 = !DILocation(line: 211, column: 50, scope: !825)
!866 = !DILocation(line: 212, column: 50, scope: !825)
!867 = !DILocation(line: 214, column: 3, scope: !825)
!868 = !DILocation(line: 214, column: 19, scope: !825)
!869 = !DILocation(line: 215, column: 3, scope: !825)
!870 = !DILocation(line: 215, column: 3, scope: !871)
!871 = distinct !DILexicalBlock(scope: !872, file: !2, line: 215, column: 3)
!872 = distinct !DILexicalBlock(scope: !825, file: !2, line: 215, column: 3)
!873 = !DILocation(line: 215, column: 3, scope: !872)
!874 = !DILocation(line: 215, column: 3, scope: !875)
!875 = distinct !DILexicalBlock(scope: !871, file: !2, line: 215, column: 3)
!876 = !DILocation(line: 216, column: 3, scope: !825)
!877 = !DILocation(line: 216, column: 3, scope: !878)
!878 = distinct !DILexicalBlock(scope: !879, file: !2, line: 216, column: 3)
!879 = distinct !DILexicalBlock(scope: !825, file: !2, line: 216, column: 3)
!880 = !{!745, !745, i64 0}
!881 = !{!882, !882, i64 0}
!882 = !{!"short", !745, i64 0}
!883 = !DILocation(line: 216, column: 3, scope: !879)
!884 = !DILocation(line: 216, column: 3, scope: !885)
!885 = distinct !DILexicalBlock(scope: !878, file: !2, line: 216, column: 3)
!886 = !DILocation(line: 218, column: 3, scope: !825)
!887 = !DILocation(line: 218, column: 3, scope: !888)
!888 = distinct !DILexicalBlock(scope: !889, file: !2, line: 218, column: 3)
!889 = distinct !DILexicalBlock(scope: !825, file: !2, line: 218, column: 3)
!890 = !DILocation(line: 218, column: 3, scope: !889)
!891 = !DILocation(line: 218, column: 3, scope: !892)
!892 = distinct !DILexicalBlock(scope: !888, file: !2, line: 218, column: 3)
!893 = !DILocation(line: 219, column: 8, scope: !825)
!894 = !DILocation(line: 219, column: 6, scope: !825)
!895 = !DILocation(line: 220, column: 30, scope: !825)
!896 = !DILocation(line: 220, column: 18, scope: !825)
!897 = !DILocation(line: 220, column: 3, scope: !825)
!898 = !DILocation(line: 220, column: 7, scope: !825)
!899 = !DILocation(line: 220, column: 16, scope: !825)
!900 = !{!901, !744, i64 8}
!901 = !{!"GtOptionParser", !744, i64 0, !744, i64 8, !744, i64 16, !744, i64 24, !744, i64 32, !760, i64 40, !760, i64 41, !744, i64 48, !744, i64 56, !744, i64 64, !744, i64 72, !761, i64 80, !761, i64 84, !744, i64 88}
!902 = !DILocation(line: 221, column: 31, scope: !825)
!903 = !DILocation(line: 221, column: 19, scope: !825)
!904 = !DILocation(line: 221, column: 3, scope: !825)
!905 = !DILocation(line: 221, column: 7, scope: !825)
!906 = !DILocation(line: 221, column: 17, scope: !825)
!907 = !{!901, !744, i64 16}
!908 = !DILocation(line: 222, column: 17, scope: !825)
!909 = !DILocation(line: 222, column: 3, scope: !825)
!910 = !DILocation(line: 222, column: 7, scope: !825)
!911 = !DILocation(line: 222, column: 15, scope: !825)
!912 = !{!901, !744, i64 24}
!913 = !DILocation(line: 223, column: 3, scope: !825)
!914 = !DILocation(line: 223, column: 7, scope: !825)
!915 = !DILocation(line: 223, column: 32, scope: !825)
!916 = !{!901, !761, i64 80}
!917 = !DILocation(line: 224, column: 3, scope: !825)
!918 = !DILocation(line: 224, column: 7, scope: !825)
!919 = !DILocation(line: 224, column: 32, scope: !825)
!920 = !{!901, !761, i64 84}
!921 = !DILocation(line: 225, column: 21, scope: !825)
!922 = !DILocation(line: 225, column: 3, scope: !825)
!923 = !DILocation(line: 225, column: 7, scope: !825)
!924 = !DILocation(line: 225, column: 19, scope: !825)
!925 = !{!901, !744, i64 88}
!926 = !DILocation(line: 226, column: 10, scope: !825)
!927 = !DILocation(line: 227, column: 1, scope: !825)
!928 = !DILocation(line: 226, column: 3, scope: !825)
!929 = !DISubprogram(name: "strlen", scope: !930, file: !930, line: 407, type: !931, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!930 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!931 = !DISubroutineType(types: !932)
!932 = !{!681, !690}
!933 = !DISubprogram(name: "__ctype_b_loc", scope: !623, file: !623, line: 79, type: !934, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!934 = !DISubroutineType(types: !935)
!935 = !{!936}
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !650)
!939 = !DISubprogram(name: "gt_calloc_mem", scope: !940, file: !940, line: 62, type: !941, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!940 = !DIFile(filename: "src/core/ma_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "7471aa5449adf19e6d72bdf5eac6e908")
!941 = !DISubroutineType(types: !942)
!942 = !{!651, !816, !816, !690, !649}
!943 = !DISubprogram(name: "gt_cstr_dup", scope: !944, file: !944, line: 29, type: !945, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!944 = !DIFile(filename: "src/core/cstr_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "fd09ef1c089bfd450bf6a9b92876658b")
!945 = !DISubroutineType(types: !946)
!946 = !{!777, !690}
!947 = !DISubprogram(name: "gt_array_new", scope: !718, file: !718, line: 30, type: !948, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!948 = !DISubroutineType(types: !949)
!949 = !{!716, !816}
!950 = !DISubprogram(name: "gt_hashmap_new", scope: !638, file: !638, line: 49, type: !951, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!951 = !DISubroutineType(types: !952)
!952 = !{!858, !953, !954, !954}
!953 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtHashType", file: !638, line: 31, baseType: !637)
!954 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtFree", file: !955, line: 32, baseType: !956)
!955 = !DIFile(filename: "src/core/fptr_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "d793c53bd8610c5e0713924496ef4c73")
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = !DISubroutineType(types: !958)
!958 = !{null, !651}
!959 = distinct !DISubprogram(name: "gt_option_parser_add_option", scope: !2, file: !2, line: 229, type: !960, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !962)
!960 = !DISubroutineType(types: !961)
!961 = !{null, !828, !653}
!962 = !{!963, !964}
!963 = !DILocalVariable(name: "op", arg: 1, scope: !959, file: !2, line: 229, type: !828)
!964 = !DILocalVariable(name: "o", arg: 2, scope: !959, file: !2, line: 229, type: !653)
!965 = !DILocation(line: 229, column: 50, scope: !959)
!966 = !DILocation(line: 229, column: 64, scope: !959)
!967 = !DILocation(line: 231, column: 3, scope: !959)
!968 = !DILocation(line: 231, column: 3, scope: !969)
!969 = distinct !DILexicalBlock(scope: !970, file: !2, line: 231, column: 3)
!970 = distinct !DILexicalBlock(scope: !959, file: !2, line: 231, column: 3)
!971 = !DILocation(line: 231, column: 3, scope: !970)
!972 = !DILocation(line: 231, column: 3, scope: !973)
!973 = distinct !DILexicalBlock(scope: !969, file: !2, line: 231, column: 3)
!974 = !DILocation(line: 232, column: 3, scope: !959)
!975 = !DILocation(line: 233, column: 18, scope: !959)
!976 = !DILocation(line: 233, column: 22, scope: !959)
!977 = !DILocation(line: 233, column: 46, scope: !959)
!978 = !DILocation(line: 233, column: 49, scope: !959)
!979 = !{!759, !744, i64 8}
!980 = !DILocation(line: 233, column: 35, scope: !959)
!981 = !DILocation(line: 233, column: 62, scope: !959)
!982 = !DILocation(line: 233, column: 3, scope: !959)
!983 = !DILocation(line: 234, column: 1, scope: !959)
!984 = !DISubprogram(name: "gt_array_add_elem", scope: !718, file: !718, line: 57, type: !985, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!985 = !DISubroutineType(types: !986)
!986 = !{null, !716, !651, !816}
!987 = !DISubprogram(name: "gt_hashmap_add", scope: !638, file: !638, line: 64, type: !988, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!988 = !DISubroutineType(types: !989)
!989 = !{null, !858, !651, !651}
!990 = !DISubprogram(name: "gt_str_get", scope: !662, file: !662, line: 40, type: !991, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!991 = !DISubroutineType(types: !992)
!992 = !{!777, !993}
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!994 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !661)
!995 = distinct !DISubprogram(name: "gt_option_parser_get_option", scope: !2, file: !2, line: 236, type: !996, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !998)
!996 = !DISubroutineType(types: !997)
!997 = !{!653, !828, !690}
!998 = !{!999, !1000}
!999 = !DILocalVariable(name: "op", arg: 1, scope: !995, file: !2, line: 236, type: !828)
!1000 = !DILocalVariable(name: "option_str", arg: 2, scope: !995, file: !2, line: 237, type: !690)
!1001 = !DILocation(line: 236, column: 55, scope: !995)
!1002 = !DILocation(line: 237, column: 51, scope: !995)
!1003 = !DILocation(line: 239, column: 3, scope: !995)
!1004 = !DILocation(line: 239, column: 3, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !1006, file: !2, line: 239, column: 3)
!1006 = distinct !DILexicalBlock(scope: !995, file: !2, line: 239, column: 3)
!1007 = !DILocation(line: 239, column: 3, scope: !1006)
!1008 = !DILocation(line: 239, column: 3, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !1005, file: !2, line: 239, column: 3)
!1010 = !DILocation(line: 240, column: 25, scope: !995)
!1011 = !DILocation(line: 240, column: 29, scope: !995)
!1012 = !DILocation(line: 240, column: 42, scope: !995)
!1013 = !DILocation(line: 240, column: 10, scope: !995)
!1014 = !DILocation(line: 240, column: 3, scope: !995)
!1015 = !DISubprogram(name: "gt_hashmap_get", scope: !638, file: !638, line: 59, type: !1016, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1016 = !DISubroutineType(types: !1017)
!1017 = !{!651, !858, !1018}
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1019 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1020 = distinct !DISubprogram(name: "gt_option_parser_refer_to_manual", scope: !2, file: !2, line: 243, type: !1021, scopeLine: 244, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !1023)
!1021 = !DISubroutineType(types: !1022)
!1022 = !{null, !828}
!1023 = !{!1024}
!1024 = !DILocalVariable(name: "op", arg: 1, scope: !1020, file: !2, line: 243, type: !828)
!1025 = !DILocation(line: 243, column: 55, scope: !1020)
!1026 = !DILocation(line: 245, column: 3, scope: !1020)
!1027 = !DILocation(line: 245, column: 3, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !1029, file: !2, line: 245, column: 3)
!1029 = distinct !DILexicalBlock(scope: !1020, file: !2, line: 245, column: 3)
!1030 = !DILocation(line: 245, column: 3, scope: !1029)
!1031 = !DILocation(line: 245, column: 3, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1028, file: !2, line: 245, column: 3)
!1033 = !DILocation(line: 246, column: 3, scope: !1020)
!1034 = !DILocation(line: 246, column: 7, scope: !1020)
!1035 = !DILocation(line: 246, column: 23, scope: !1020)
!1036 = !{!901, !760, i64 41}
!1037 = !DILocation(line: 247, column: 1, scope: !1020)
!1038 = distinct !DISubprogram(name: "gt_option_parser_set_comment_func", scope: !2, file: !2, line: 249, type: !1039, scopeLine: 252, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !1041)
!1039 = !DISubroutineType(types: !1040)
!1040 = !{null, !828, !840, !651}
!1041 = !{!1042, !1043, !1044}
!1042 = !DILocalVariable(name: "op", arg: 1, scope: !1038, file: !2, line: 249, type: !828)
!1043 = !DILocalVariable(name: "comment_func", arg: 2, scope: !1038, file: !2, line: 250, type: !840)
!1044 = !DILocalVariable(name: "data", arg: 3, scope: !1038, file: !2, line: 251, type: !651)
!1045 = !DILocation(line: 249, column: 56, scope: !1038)
!1046 = !DILocation(line: 250, column: 58, scope: !1038)
!1047 = !DILocation(line: 251, column: 46, scope: !1038)
!1048 = !DILocation(line: 253, column: 3, scope: !1038)
!1049 = !DILocation(line: 253, column: 3, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !1051, file: !2, line: 253, column: 3)
!1051 = distinct !DILexicalBlock(scope: !1038, file: !2, line: 253, column: 3)
!1052 = !DILocation(line: 253, column: 3, scope: !1051)
!1053 = !DILocation(line: 253, column: 3, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !1050, file: !2, line: 253, column: 3)
!1055 = !DILocation(line: 254, column: 22, scope: !1038)
!1056 = !DILocation(line: 254, column: 3, scope: !1038)
!1057 = !DILocation(line: 254, column: 7, scope: !1038)
!1058 = !DILocation(line: 254, column: 20, scope: !1038)
!1059 = !{!901, !744, i64 48}
!1060 = !DILocation(line: 255, column: 27, scope: !1038)
!1061 = !DILocation(line: 255, column: 3, scope: !1038)
!1062 = !DILocation(line: 255, column: 7, scope: !1038)
!1063 = !DILocation(line: 255, column: 25, scope: !1038)
!1064 = !{!901, !744, i64 56}
!1065 = !DILocation(line: 256, column: 1, scope: !1038)
!1066 = distinct !DISubprogram(name: "gt_option_parser_set_version_func", scope: !2, file: !2, line: 258, type: !1067, scopeLine: 260, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !1069)
!1067 = !DISubroutineType(types: !1068)
!1068 = !{null, !828, !850}
!1069 = !{!1070, !1071}
!1070 = !DILocalVariable(name: "op", arg: 1, scope: !1066, file: !2, line: 258, type: !828)
!1071 = !DILocalVariable(name: "version_func", arg: 2, scope: !1066, file: !2, line: 259, type: !850)
!1072 = !DILocation(line: 258, column: 56, scope: !1066)
!1073 = !DILocation(line: 259, column: 58, scope: !1066)
!1074 = !DILocation(line: 261, column: 3, scope: !1066)
!1075 = !DILocation(line: 261, column: 3, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1077, file: !2, line: 261, column: 3)
!1077 = distinct !DILexicalBlock(scope: !1066, file: !2, line: 261, column: 3)
!1078 = !DILocation(line: 261, column: 3, scope: !1077)
!1079 = !DILocation(line: 261, column: 3, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1076, file: !2, line: 261, column: 3)
!1081 = !DILocation(line: 262, column: 22, scope: !1066)
!1082 = !DILocation(line: 262, column: 3, scope: !1066)
!1083 = !DILocation(line: 262, column: 7, scope: !1066)
!1084 = !DILocation(line: 262, column: 20, scope: !1066)
!1085 = !{!901, !744, i64 64}
!1086 = !DILocation(line: 263, column: 1, scope: !1066)
!1087 = distinct !DISubprogram(name: "gt_option_parser_register_hook", scope: !2, file: !2, line: 265, type: !1088, scopeLine: 268, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !1094)
!1088 = !DISubroutineType(types: !1089)
!1089 = !{null, !828, !1090, !651}
!1090 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtOptionParserHookFunc", file: !643, line: 52, baseType: !1091)
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1092 = !DISubroutineType(types: !1093)
!1093 = !{!649, !651, !844}
!1094 = !{!1095, !1096, !1097, !1098}
!1095 = !DILocalVariable(name: "op", arg: 1, scope: !1087, file: !2, line: 265, type: !828)
!1096 = !DILocalVariable(name: "hook", arg: 2, scope: !1087, file: !2, line: 266, type: !1090)
!1097 = !DILocalVariable(name: "data", arg: 3, scope: !1087, file: !2, line: 267, type: !651)
!1098 = !DILocalVariable(name: "hookinfo", scope: !1087, file: !2, line: 269, type: !1099)
!1099 = !DIDerivedType(tag: DW_TAG_typedef, name: "HookInfo", file: !2, line: 60, baseType: !1100)
!1100 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2, line: 57, size: 128, elements: !1101)
!1101 = !{!1102, !1103}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "hook", scope: !1100, file: !2, line: 58, baseType: !1090, size: 64)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1100, file: !2, line: 59, baseType: !651, size: 64, offset: 64)
!1104 = !DILocation(line: 265, column: 53, scope: !1087)
!1105 = !DILocation(line: 266, column: 60, scope: !1087)
!1106 = !DILocation(line: 267, column: 43, scope: !1087)
!1107 = !DILocation(line: 269, column: 3, scope: !1087)
!1108 = !DILocation(line: 269, column: 12, scope: !1087)
!1109 = !DILocation(line: 270, column: 3, scope: !1087)
!1110 = !DILocation(line: 270, column: 3, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1112, file: !2, line: 270, column: 3)
!1112 = distinct !DILexicalBlock(scope: !1087, file: !2, line: 270, column: 3)
!1113 = !DILocation(line: 270, column: 3, scope: !1112)
!1114 = !DILocation(line: 270, column: 3, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !1111, file: !2, line: 270, column: 3)
!1116 = !DILocation(line: 271, column: 8, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !1087, file: !2, line: 271, column: 7)
!1118 = !DILocation(line: 271, column: 12, scope: !1117)
!1119 = !{!901, !744, i64 32}
!1120 = !DILocation(line: 271, column: 7, scope: !1087)
!1121 = !DILocation(line: 272, column: 17, scope: !1117)
!1122 = !DILocation(line: 272, column: 5, scope: !1117)
!1123 = !DILocation(line: 272, column: 9, scope: !1117)
!1124 = !DILocation(line: 272, column: 15, scope: !1117)
!1125 = !DILocation(line: 273, column: 19, scope: !1087)
!1126 = !DILocation(line: 273, column: 12, scope: !1087)
!1127 = !DILocation(line: 273, column: 17, scope: !1087)
!1128 = !{!1129, !744, i64 0}
!1129 = !{!"", !744, i64 0, !744, i64 8}
!1130 = !DILocation(line: 274, column: 19, scope: !1087)
!1131 = !DILocation(line: 274, column: 12, scope: !1087)
!1132 = !DILocation(line: 274, column: 17, scope: !1087)
!1133 = !{!1129, !744, i64 8}
!1134 = !DILocation(line: 275, column: 3, scope: !1087)
!1135 = !DILocation(line: 276, column: 1, scope: !1087)
!1136 = distinct !DISubprogram(name: "gt_option_parser_reset", scope: !2, file: !2, line: 286, type: !1021, scopeLine: 287, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !1137)
!1137 = !{!1138, !1139}
!1138 = !DILocalVariable(name: "op", arg: 1, scope: !1136, file: !2, line: 286, type: !828)
!1139 = !DILocalVariable(name: "rval", scope: !1136, file: !2, line: 288, type: !649)
!1140 = !DILocation(line: 286, column: 45, scope: !1136)
!1141 = !DILocation(line: 288, column: 3, scope: !1136)
!1142 = !DILocation(line: 288, column: 17, scope: !1136)
!1143 = !DILocation(line: 289, column: 3, scope: !1136)
!1144 = !DILocation(line: 289, column: 3, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1146, file: !2, line: 289, column: 3)
!1146 = distinct !DILexicalBlock(scope: !1136, file: !2, line: 289, column: 3)
!1147 = !DILocation(line: 289, column: 3, scope: !1146)
!1148 = !DILocation(line: 289, column: 3, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1145, file: !2, line: 289, column: 3)
!1150 = !DILocation(line: 290, column: 29, scope: !1136)
!1151 = !DILocation(line: 290, column: 33, scope: !1136)
!1152 = !DILocation(line: 290, column: 10, scope: !1136)
!1153 = !DILocation(line: 290, column: 8, scope: !1136)
!1154 = !{!761, !761, i64 0}
!1155 = !DILocation(line: 291, column: 3, scope: !1136)
!1156 = !DILocation(line: 291, column: 3, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1158, file: !2, line: 291, column: 3)
!1158 = distinct !DILexicalBlock(scope: !1136, file: !2, line: 291, column: 3)
!1159 = !DILocation(line: 291, column: 3, scope: !1158)
!1160 = !DILocation(line: 291, column: 3, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1157, file: !2, line: 291, column: 3)
!1162 = !DILocation(line: 292, column: 1, scope: !1136)
!1163 = !DISubprogram(name: "gt_hashmap_foreach", scope: !638, file: !638, line: 74, type: !1164, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1164 = !DISubroutineType(types: !1165)
!1165 = !{!649, !858, !1166, !651, !844}
!1166 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtHashmapVisitFunc", file: !638, line: 38, baseType: !1167)
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1168, size: 64)
!1168 = !DISubroutineType(types: !1169)
!1169 = !{!649, !651, !651, !651, !844}
!1170 = distinct !DISubprogram(name: "reset_option", scope: !2, file: !2, line: 278, type: !1168, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !1171)
!1171 = !{!1172, !1173, !1174, !1175, !1176}
!1172 = !DILocalVariable(name: "key", arg: 1, scope: !1170, file: !2, line: 278, type: !651)
!1173 = !DILocalVariable(name: "value", arg: 2, scope: !1170, file: !2, line: 278, type: !651)
!1174 = !DILocalVariable(name: "data", arg: 3, scope: !1170, file: !2, line: 278, type: !651)
!1175 = !DILocalVariable(name: "err", arg: 4, scope: !1170, file: !2, line: 279, type: !844)
!1176 = !DILocalVariable(name: "o", scope: !1170, file: !2, line: 281, type: !653)
!1177 = !DILocation(line: 278, column: 41, scope: !1170)
!1178 = !DILocation(line: 278, column: 52, scope: !1170)
!1179 = !DILocation(line: 278, column: 75, scope: !1170)
!1180 = !DILocation(line: 279, column: 44, scope: !1170)
!1181 = !DILocation(line: 281, column: 3, scope: !1170)
!1182 = !DILocation(line: 281, column: 13, scope: !1170)
!1183 = !DILocation(line: 281, column: 29, scope: !1170)
!1184 = !DILocation(line: 282, column: 19, scope: !1170)
!1185 = !DILocation(line: 282, column: 3, scope: !1170)
!1186 = !DILocation(line: 284, column: 1, scope: !1170)
!1187 = !DILocation(line: 283, column: 3, scope: !1170)
!1188 = distinct !DISubprogram(name: "gt_option_parser_set_mail_address", scope: !2, file: !2, line: 294, type: !1189, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !1191)
!1189 = !DISubroutineType(types: !1190)
!1190 = !{null, !828, !690}
!1191 = !{!1192, !1193}
!1192 = !DILocalVariable(name: "op", arg: 1, scope: !1188, file: !2, line: 294, type: !828)
!1193 = !DILocalVariable(name: "address", arg: 2, scope: !1188, file: !2, line: 294, type: !690)
!1194 = !DILocation(line: 294, column: 56, scope: !1188)
!1195 = !DILocation(line: 294, column: 72, scope: !1188)
!1196 = !DILocation(line: 296, column: 3, scope: !1188)
!1197 = !DILocation(line: 296, column: 3, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1199, file: !2, line: 296, column: 3)
!1199 = distinct !DILexicalBlock(scope: !1188, file: !2, line: 296, column: 3)
!1200 = !DILocation(line: 296, column: 3, scope: !1199)
!1201 = !DILocation(line: 296, column: 3, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1198, file: !2, line: 296, column: 3)
!1203 = !DILocation(line: 297, column: 22, scope: !1188)
!1204 = !DILocation(line: 297, column: 3, scope: !1188)
!1205 = !DILocation(line: 297, column: 7, scope: !1188)
!1206 = !DILocation(line: 297, column: 20, scope: !1188)
!1207 = !{!901, !744, i64 72}
!1208 = !DILocation(line: 298, column: 1, scope: !1188)
!1209 = distinct !DISubprogram(name: "gt_option_parser_manpage", scope: !2, file: !2, line: 534, type: !1210, scopeLine: 536, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !1212)
!1210 = !DISubroutineType(types: !1211)
!1211 = !{!649, !828, !690, !660, !844}
!1212 = !{!1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1224, !1226, !1227, !1228, !1229}
!1213 = !DILocalVariable(name: "op", arg: 1, scope: !1209, file: !2, line: 534, type: !828)
!1214 = !DILocalVariable(name: "toolname", arg: 2, scope: !1209, file: !2, line: 534, type: !690)
!1215 = !DILocalVariable(name: "outstr", arg: 3, scope: !1209, file: !2, line: 535, type: !660)
!1216 = !DILocalVariable(name: "err", arg: 4, scope: !1209, file: !2, line: 535, type: !844)
!1217 = !DILocalVariable(name: "i", scope: !1209, file: !2, line: 537, type: !680)
!1218 = !DILocalVariable(name: "option", scope: !1209, file: !2, line: 538, type: !653)
!1219 = !DILocalVariable(name: "default_string", scope: !1209, file: !2, line: 539, type: !660)
!1220 = !DILocalVariable(name: "had_err", scope: !1209, file: !2, line: 540, type: !649)
!1221 = !DILocalVariable(name: "old_stdout", scope: !1222, file: !2, line: 673, type: !649)
!1222 = distinct !DILexicalBlock(scope: !1223, file: !2, line: 672, column: 25)
!1223 = distinct !DILexicalBlock(scope: !1209, file: !2, line: 672, column: 7)
!1224 = !DILocalVariable(name: "out_pipe", scope: !1222, file: !2, line: 673, type: !1225)
!1225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !649, size: 64, elements: !10)
!1226 = !DILocalVariable(name: "rval", scope: !1222, file: !2, line: 675, type: !649)
!1227 = !DILocalVariable(name: "flags", scope: !1222, file: !2, line: 676, type: !676)
!1228 = !DILocalVariable(name: "c", scope: !1222, file: !2, line: 678, type: !4)
!1229 = !DILocalVariable(name: "prognamebuf", scope: !1222, file: !2, line: 679, type: !1230)
!1230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 65536, elements: !1231)
!1231 = !{!1232}
!1232 = !DISubrange(count: 8192)
!1233 = !DILocation(line: 534, column: 46, scope: !1209)
!1234 = !DILocation(line: 534, column: 62, scope: !1209)
!1235 = !DILocation(line: 535, column: 37, scope: !1209)
!1236 = !DILocation(line: 535, column: 54, scope: !1209)
!1237 = !DILocation(line: 537, column: 3, scope: !1209)
!1238 = !DILocation(line: 537, column: 11, scope: !1209)
!1239 = !DILocation(line: 538, column: 3, scope: !1209)
!1240 = !DILocation(line: 538, column: 13, scope: !1209)
!1241 = !DILocation(line: 539, column: 3, scope: !1209)
!1242 = !DILocation(line: 539, column: 10, scope: !1209)
!1243 = !DILocation(line: 540, column: 3, scope: !1209)
!1244 = !DILocation(line: 540, column: 7, scope: !1209)
!1245 = !DILocation(line: 541, column: 3, scope: !1209)
!1246 = !DILocation(line: 541, column: 3, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1248, file: !2, line: 541, column: 3)
!1248 = distinct !DILexicalBlock(scope: !1209, file: !2, line: 541, column: 3)
!1249 = !DILocation(line: 541, column: 3, scope: !1248)
!1250 = !DILocation(line: 541, column: 3, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1247, file: !2, line: 541, column: 3)
!1252 = !DILocation(line: 542, column: 3, scope: !1209)
!1253 = !DILocation(line: 542, column: 3, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !1255, file: !2, line: 542, column: 3)
!1255 = distinct !DILexicalBlock(scope: !1209, file: !2, line: 542, column: 3)
!1256 = !DILocation(line: 542, column: 3, scope: !1255)
!1257 = !DILocation(line: 542, column: 3, scope: !1258)
!1258 = distinct !DILexicalBlock(scope: !1254, file: !2, line: 542, column: 3)
!1259 = !DILocation(line: 543, column: 3, scope: !1209)
!1260 = !DILocation(line: 543, column: 3, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1262, file: !2, line: 543, column: 3)
!1262 = distinct !DILexicalBlock(scope: !1209, file: !2, line: 543, column: 3)
!1263 = !DILocation(line: 543, column: 3, scope: !1262)
!1264 = !DILocation(line: 543, column: 3, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !1261, file: !2, line: 543, column: 3)
!1266 = !DILocation(line: 546, column: 8, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !1209, file: !2, line: 546, column: 7)
!1268 = !DILocation(line: 546, column: 12, scope: !1267)
!1269 = !{!901, !760, i64 40}
!1270 = !{i8 0, i8 2}
!1271 = !{}
!1272 = !DILocation(line: 546, column: 7, scope: !1209)
!1273 = !DILocation(line: 547, column: 5, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1267, file: !2, line: 546, column: 34)
!1275 = !DILocation(line: 547, column: 9, scope: !1274)
!1276 = !DILocation(line: 547, column: 30, scope: !1274)
!1277 = !DILocation(line: 548, column: 24, scope: !1274)
!1278 = !DILocation(line: 548, column: 5, scope: !1274)
!1279 = !DILocation(line: 549, column: 3, scope: !1274)
!1280 = !DILocation(line: 552, column: 18, scope: !1209)
!1281 = !DILocation(line: 552, column: 28, scope: !1209)
!1282 = !DILocation(line: 552, column: 3, scope: !1209)
!1283 = !DILocation(line: 553, column: 22, scope: !1209)
!1284 = !DILocation(line: 553, column: 3, scope: !1209)
!1285 = !DILocation(line: 554, column: 10, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1209, file: !2, line: 554, column: 3)
!1287 = !{!1288, !1288, i64 0}
!1288 = !{!"long", !745, i64 0}
!1289 = !DILocation(line: 554, column: 8, scope: !1286)
!1290 = !DILocation(line: 554, column: 15, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !1286, file: !2, line: 554, column: 3)
!1292 = !DILocation(line: 554, column: 26, scope: !1291)
!1293 = !DILocation(line: 554, column: 19, scope: !1291)
!1294 = !DILocation(line: 554, column: 36, scope: !1291)
!1295 = !DILocation(line: 554, column: 17, scope: !1291)
!1296 = !DILocation(line: 554, column: 3, scope: !1286)
!1297 = !DILocation(line: 555, column: 24, scope: !1291)
!1298 = !DILocation(line: 555, column: 5, scope: !1291)
!1299 = !DILocation(line: 554, column: 42, scope: !1291)
!1300 = !DILocation(line: 554, column: 3, scope: !1291)
!1301 = distinct !{!1301, !1296, !1302, !1303}
!1302 = !DILocation(line: 555, column: 35, scope: !1286)
!1303 = !{!"llvm.loop.mustprogress"}
!1304 = !DILocation(line: 556, column: 22, scope: !1209)
!1305 = !DILocation(line: 556, column: 3, scope: !1209)
!1306 = !DILocation(line: 557, column: 22, scope: !1209)
!1307 = !DILocation(line: 557, column: 3, scope: !1209)
!1308 = !DILocation(line: 558, column: 22, scope: !1209)
!1309 = !DILocation(line: 558, column: 3, scope: !1209)
!1310 = !DILocation(line: 559, column: 22, scope: !1209)
!1311 = !DILocation(line: 559, column: 3, scope: !1209)
!1312 = !DILocation(line: 560, column: 22, scope: !1209)
!1313 = !DILocation(line: 560, column: 3, scope: !1209)
!1314 = !DILocation(line: 561, column: 22, scope: !1209)
!1315 = !DILocation(line: 561, column: 3, scope: !1209)
!1316 = !DILocation(line: 562, column: 22, scope: !1209)
!1317 = !DILocation(line: 562, column: 3, scope: !1209)
!1318 = !DILocation(line: 565, column: 33, scope: !1209)
!1319 = !DILocation(line: 565, column: 3, scope: !1209)
!1320 = !DILocation(line: 566, column: 18, scope: !1209)
!1321 = !DILocation(line: 566, column: 28, scope: !1209)
!1322 = !DILocation(line: 566, column: 3, scope: !1209)
!1323 = !DILocation(line: 567, column: 22, scope: !1209)
!1324 = !DILocation(line: 567, column: 3, scope: !1209)
!1325 = !DILocation(line: 568, column: 22, scope: !1209)
!1326 = !DILocation(line: 568, column: 30, scope: !1209)
!1327 = !DILocation(line: 568, column: 34, scope: !1209)
!1328 = !DILocation(line: 568, column: 3, scope: !1209)
!1329 = !DILocation(line: 569, column: 22, scope: !1209)
!1330 = !DILocation(line: 569, column: 3, scope: !1209)
!1331 = !DILocation(line: 572, column: 37, scope: !1209)
!1332 = !DILocation(line: 572, column: 3, scope: !1209)
!1333 = !DILocation(line: 573, column: 22, scope: !1209)
!1334 = !DILocation(line: 573, column: 3, scope: !1209)
!1335 = !DILocation(line: 574, column: 22, scope: !1209)
!1336 = !DILocation(line: 574, column: 30, scope: !1209)
!1337 = !DILocation(line: 574, column: 3, scope: !1209)
!1338 = !DILocation(line: 575, column: 22, scope: !1209)
!1339 = !DILocation(line: 575, column: 3, scope: !1209)
!1340 = !DILocation(line: 576, column: 22, scope: !1209)
!1341 = !DILocation(line: 576, column: 30, scope: !1209)
!1342 = !DILocation(line: 576, column: 34, scope: !1209)
!1343 = !DILocation(line: 576, column: 3, scope: !1209)
!1344 = !DILocation(line: 577, column: 22, scope: !1209)
!1345 = !DILocation(line: 577, column: 3, scope: !1209)
!1346 = !DILocation(line: 580, column: 21, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1209, file: !2, line: 580, column: 7)
!1348 = !DILocation(line: 580, column: 25, scope: !1347)
!1349 = !DILocation(line: 580, column: 7, scope: !1347)
!1350 = !DILocation(line: 580, column: 7, scope: !1209)
!1351 = !DILocation(line: 581, column: 42, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1347, file: !2, line: 580, column: 35)
!1353 = !DILocation(line: 581, column: 5, scope: !1352)
!1354 = !DILocation(line: 582, column: 22, scope: !1352)
!1355 = !DILocation(line: 582, column: 20, scope: !1352)
!1356 = !DILocation(line: 583, column: 12, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1352, file: !2, line: 583, column: 5)
!1358 = !DILocation(line: 583, column: 10, scope: !1357)
!1359 = !DILocation(line: 583, column: 17, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1357, file: !2, line: 583, column: 5)
!1361 = !DILocation(line: 583, column: 35, scope: !1360)
!1362 = !DILocation(line: 583, column: 39, scope: !1360)
!1363 = !DILocation(line: 583, column: 21, scope: !1360)
!1364 = !DILocation(line: 583, column: 19, scope: !1360)
!1365 = !DILocation(line: 583, column: 5, scope: !1357)
!1366 = !DILocation(line: 584, column: 43, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1360, file: !2, line: 583, column: 54)
!1368 = !DILocation(line: 584, column: 47, scope: !1367)
!1369 = !DILocation(line: 584, column: 56, scope: !1367)
!1370 = !DILocation(line: 584, column: 30, scope: !1367)
!1371 = !DILocation(line: 584, column: 16, scope: !1367)
!1372 = !DILocation(line: 584, column: 14, scope: !1367)
!1373 = !DILocation(line: 586, column: 11, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1367, file: !2, line: 586, column: 11)
!1375 = !DILocation(line: 586, column: 19, scope: !1374)
!1376 = !{!759, !760, i64 78}
!1377 = !DILocation(line: 586, column: 11, scope: !1367)
!1378 = !DILocation(line: 586, column: 42, scope: !1374)
!1379 = !DILocation(line: 587, column: 26, scope: !1367)
!1380 = !DILocation(line: 587, column: 7, scope: !1367)
!1381 = !DILocation(line: 588, column: 26, scope: !1367)
!1382 = !DILocation(line: 588, column: 45, scope: !1367)
!1383 = !DILocation(line: 588, column: 53, scope: !1367)
!1384 = !DILocation(line: 588, column: 34, scope: !1367)
!1385 = !DILocation(line: 588, column: 7, scope: !1367)
!1386 = !DILocation(line: 589, column: 26, scope: !1367)
!1387 = !DILocation(line: 589, column: 7, scope: !1367)
!1388 = !DILocation(line: 590, column: 11, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1367, file: !2, line: 590, column: 11)
!1390 = !DILocation(line: 590, column: 19, scope: !1389)
!1391 = !{!759, !745, i64 0}
!1392 = !DILocation(line: 590, column: 31, scope: !1389)
!1393 = !DILocation(line: 590, column: 11, scope: !1367)
!1394 = !DILocation(line: 591, column: 28, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1389, file: !2, line: 590, column: 47)
!1396 = !DILocation(line: 591, column: 9, scope: !1395)
!1397 = !DILocation(line: 592, column: 28, scope: !1395)
!1398 = !DILocation(line: 593, column: 31, scope: !1395)
!1399 = !DILocation(line: 593, column: 39, scope: !1395)
!1400 = !DILocation(line: 593, column: 53, scope: !1395)
!1401 = !DILocation(line: 592, column: 9, scope: !1395)
!1402 = !DILocation(line: 594, column: 7, scope: !1395)
!1403 = !DILocation(line: 595, column: 16, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !1389, file: !2, line: 595, column: 16)
!1405 = !DILocation(line: 595, column: 24, scope: !1404)
!1406 = !DILocation(line: 595, column: 36, scope: !1404)
!1407 = !DILocation(line: 595, column: 16, scope: !1389)
!1408 = !DILocation(line: 596, column: 28, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1404, file: !2, line: 595, column: 54)
!1410 = !DILocation(line: 596, column: 9, scope: !1409)
!1411 = !DILocation(line: 597, column: 14, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1409, file: !2, line: 597, column: 13)
!1413 = !DILocation(line: 597, column: 22, scope: !1412)
!1414 = !DILocation(line: 597, column: 36, scope: !1412)
!1415 = !DILocation(line: 597, column: 38, scope: !1412)
!1416 = !DILocation(line: 597, column: 49, scope: !1412)
!1417 = !DILocation(line: 597, column: 57, scope: !1412)
!1418 = !DILocation(line: 597, column: 71, scope: !1412)
!1419 = !DILocation(line: 597, column: 42, scope: !1412)
!1420 = !DILocation(line: 597, column: 13, scope: !1409)
!1421 = !DILocation(line: 598, column: 30, scope: !1412)
!1422 = !DILocation(line: 598, column: 11, scope: !1412)
!1423 = !DILocation(line: 600, column: 30, scope: !1412)
!1424 = !DILocation(line: 600, column: 46, scope: !1412)
!1425 = !DILocation(line: 600, column: 54, scope: !1412)
!1426 = !DILocation(line: 600, column: 68, scope: !1412)
!1427 = !DILocation(line: 600, column: 11, scope: !1412)
!1428 = !DILocation(line: 601, column: 7, scope: !1409)
!1429 = !DILocation(line: 602, column: 16, scope: !1430)
!1430 = distinct !DILexicalBlock(scope: !1404, file: !2, line: 602, column: 16)
!1431 = !DILocation(line: 602, column: 24, scope: !1430)
!1432 = !DILocation(line: 602, column: 36, scope: !1430)
!1433 = !DILocation(line: 602, column: 16, scope: !1404)
!1434 = !DILocation(line: 603, column: 28, scope: !1435)
!1435 = distinct !DILexicalBlock(scope: !1430, file: !2, line: 602, column: 54)
!1436 = !DILocation(line: 603, column: 9, scope: !1435)
!1437 = !DILocation(line: 604, column: 13, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !1435, file: !2, line: 604, column: 13)
!1439 = !DILocation(line: 604, column: 21, scope: !1438)
!1440 = !DILocation(line: 604, column: 35, scope: !1438)
!1441 = !DILocation(line: 604, column: 37, scope: !1438)
!1442 = !DILocation(line: 604, column: 13, scope: !1435)
!1443 = !DILocation(line: 605, column: 30, scope: !1438)
!1444 = !DILocation(line: 605, column: 11, scope: !1438)
!1445 = !DILocation(line: 607, column: 32, scope: !1438)
!1446 = !DILocation(line: 607, column: 48, scope: !1438)
!1447 = !DILocation(line: 607, column: 56, scope: !1438)
!1448 = !DILocation(line: 607, column: 70, scope: !1438)
!1449 = !DILocation(line: 607, column: 11, scope: !1438)
!1450 = !DILocation(line: 608, column: 7, scope: !1435)
!1451 = !DILocation(line: 609, column: 16, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1430, file: !2, line: 609, column: 16)
!1453 = !DILocation(line: 609, column: 24, scope: !1452)
!1454 = !DILocation(line: 609, column: 36, scope: !1452)
!1455 = !DILocation(line: 609, column: 16, scope: !1430)
!1456 = !DILocation(line: 610, column: 28, scope: !1457)
!1457 = distinct !DILexicalBlock(scope: !1452, file: !2, line: 609, column: 56)
!1458 = !DILocation(line: 610, column: 9, scope: !1457)
!1459 = !DILocation(line: 611, column: 14, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !1457, file: !2, line: 611, column: 13)
!1461 = !DILocation(line: 611, column: 22, scope: !1460)
!1462 = !DILocation(line: 611, column: 36, scope: !1460)
!1463 = !DILocation(line: 611, column: 38, scope: !1460)
!1464 = !DILocation(line: 611, column: 49, scope: !1460)
!1465 = !DILocation(line: 611, column: 57, scope: !1460)
!1466 = !DILocation(line: 611, column: 71, scope: !1460)
!1467 = !DILocation(line: 611, column: 42, scope: !1460)
!1468 = !DILocation(line: 611, column: 13, scope: !1457)
!1469 = !DILocation(line: 612, column: 30, scope: !1460)
!1470 = !DILocation(line: 612, column: 11, scope: !1460)
!1471 = !DILocation(line: 614, column: 30, scope: !1460)
!1472 = !DILocation(line: 614, column: 46, scope: !1460)
!1473 = !DILocation(line: 614, column: 54, scope: !1460)
!1474 = !DILocation(line: 614, column: 68, scope: !1460)
!1475 = !DILocation(line: 614, column: 11, scope: !1460)
!1476 = !DILocation(line: 615, column: 7, scope: !1457)
!1477 = !DILocation(line: 616, column: 16, scope: !1478)
!1478 = distinct !DILexicalBlock(scope: !1452, file: !2, line: 616, column: 16)
!1479 = !DILocation(line: 616, column: 24, scope: !1478)
!1480 = !DILocation(line: 616, column: 36, scope: !1478)
!1481 = !DILocation(line: 616, column: 16, scope: !1452)
!1482 = !DILocation(line: 617, column: 28, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1478, file: !2, line: 616, column: 51)
!1484 = !DILocation(line: 617, column: 9, scope: !1483)
!1485 = !DILocation(line: 618, column: 13, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !1483, file: !2, line: 618, column: 13)
!1487 = !DILocation(line: 618, column: 21, scope: !1486)
!1488 = !DILocation(line: 618, column: 35, scope: !1486)
!1489 = !DILocation(line: 618, column: 37, scope: !1486)
!1490 = !DILocation(line: 618, column: 13, scope: !1483)
!1491 = !DILocation(line: 619, column: 30, scope: !1486)
!1492 = !DILocation(line: 619, column: 11, scope: !1486)
!1493 = !DILocation(line: 621, column: 29, scope: !1486)
!1494 = !DILocation(line: 621, column: 45, scope: !1486)
!1495 = !DILocation(line: 621, column: 53, scope: !1486)
!1496 = !DILocation(line: 621, column: 67, scope: !1486)
!1497 = !DILocation(line: 621, column: 11, scope: !1486)
!1498 = !DILocation(line: 622, column: 7, scope: !1483)
!1499 = !DILocation(line: 623, column: 16, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1478, file: !2, line: 623, column: 16)
!1501 = !DILocation(line: 623, column: 24, scope: !1500)
!1502 = !DILocation(line: 623, column: 36, scope: !1500)
!1503 = !DILocation(line: 623, column: 16, scope: !1478)
!1504 = !DILocation(line: 624, column: 28, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1500, file: !2, line: 623, column: 52)
!1506 = !DILocation(line: 624, column: 9, scope: !1505)
!1507 = !DILocation(line: 625, column: 13, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1505, file: !2, line: 625, column: 13)
!1509 = !DILocation(line: 625, column: 21, scope: !1508)
!1510 = !DILocation(line: 625, column: 35, scope: !1508)
!1511 = !DILocation(line: 625, column: 38, scope: !1508)
!1512 = !DILocation(line: 625, column: 13, scope: !1505)
!1513 = !DILocation(line: 626, column: 30, scope: !1508)
!1514 = !DILocation(line: 626, column: 11, scope: !1508)
!1515 = !DILocation(line: 628, column: 30, scope: !1508)
!1516 = !DILocation(line: 628, column: 46, scope: !1508)
!1517 = !DILocation(line: 628, column: 54, scope: !1508)
!1518 = !DILocation(line: 628, column: 68, scope: !1508)
!1519 = !DILocation(line: 628, column: 11, scope: !1508)
!1520 = !DILocation(line: 629, column: 7, scope: !1505)
!1521 = !DILocation(line: 630, column: 16, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1500, file: !2, line: 630, column: 16)
!1523 = !DILocation(line: 630, column: 24, scope: !1522)
!1524 = !DILocation(line: 630, column: 36, scope: !1522)
!1525 = !DILocation(line: 630, column: 16, scope: !1500)
!1526 = !DILocation(line: 631, column: 28, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1522, file: !2, line: 630, column: 52)
!1528 = !DILocation(line: 631, column: 9, scope: !1527)
!1529 = !DILocation(line: 632, column: 7, scope: !1527)
!1530 = !DILocation(line: 633, column: 16, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1522, file: !2, line: 633, column: 16)
!1532 = !DILocation(line: 633, column: 24, scope: !1531)
!1533 = !DILocation(line: 633, column: 36, scope: !1531)
!1534 = !DILocation(line: 633, column: 16, scope: !1522)
!1535 = !DILocation(line: 634, column: 28, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1531, file: !2, line: 633, column: 53)
!1537 = !DILocation(line: 634, column: 9, scope: !1536)
!1538 = !DILocation(line: 635, column: 13, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1536, file: !2, line: 635, column: 13)
!1540 = !DILocation(line: 635, column: 21, scope: !1539)
!1541 = !DILocation(line: 635, column: 35, scope: !1539)
!1542 = !DILocation(line: 635, column: 38, scope: !1539)
!1543 = !DILocation(line: 635, column: 13, scope: !1536)
!1544 = !DILocation(line: 636, column: 30, scope: !1539)
!1545 = !DILocation(line: 636, column: 11, scope: !1539)
!1546 = !DILocation(line: 638, column: 31, scope: !1539)
!1547 = !DILocation(line: 638, column: 47, scope: !1539)
!1548 = !DILocation(line: 638, column: 55, scope: !1539)
!1549 = !DILocation(line: 638, column: 69, scope: !1539)
!1550 = !DILocation(line: 638, column: 11, scope: !1539)
!1551 = !DILocation(line: 639, column: 7, scope: !1536)
!1552 = !DILocation(line: 640, column: 16, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !1531, file: !2, line: 640, column: 16)
!1554 = !DILocation(line: 640, column: 24, scope: !1553)
!1555 = !DILocation(line: 640, column: 36, scope: !1553)
!1556 = !DILocation(line: 640, column: 16, scope: !1531)
!1557 = !DILocation(line: 641, column: 28, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1553, file: !2, line: 640, column: 53)
!1559 = !DILocation(line: 641, column: 9, scope: !1558)
!1560 = !DILocation(line: 642, column: 13, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !1558, file: !2, line: 642, column: 13)
!1562 = !DILocation(line: 642, column: 21, scope: !1561)
!1563 = !DILocation(line: 642, column: 37, scope: !1561)
!1564 = !DILocation(line: 642, column: 43, scope: !1561)
!1565 = !DILocation(line: 642, column: 13, scope: !1558)
!1566 = !DILocation(line: 643, column: 30, scope: !1561)
!1567 = !DILocation(line: 643, column: 11, scope: !1561)
!1568 = !DILocation(line: 645, column: 30, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1561, file: !2, line: 644, column: 14)
!1570 = !DILocation(line: 645, column: 11, scope: !1569)
!1571 = !DILocation(line: 646, column: 31, scope: !1569)
!1572 = !DILocation(line: 646, column: 47, scope: !1569)
!1573 = !DILocation(line: 646, column: 55, scope: !1569)
!1574 = !DILocation(line: 646, column: 71, scope: !1569)
!1575 = !DILocation(line: 646, column: 11, scope: !1569)
!1576 = !DILocation(line: 647, column: 30, scope: !1569)
!1577 = !DILocation(line: 647, column: 11, scope: !1569)
!1578 = !DILocation(line: 648, column: 31, scope: !1569)
!1579 = !DILocation(line: 648, column: 47, scope: !1569)
!1580 = !DILocation(line: 648, column: 55, scope: !1569)
!1581 = !DILocation(line: 648, column: 71, scope: !1569)
!1582 = !DILocation(line: 648, column: 11, scope: !1569)
!1583 = !DILocation(line: 649, column: 30, scope: !1569)
!1584 = !DILocation(line: 649, column: 11, scope: !1569)
!1585 = !DILocation(line: 651, column: 7, scope: !1558)
!1586 = !DILocation(line: 652, column: 16, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !1553, file: !2, line: 652, column: 16)
!1588 = !DILocation(line: 652, column: 24, scope: !1587)
!1589 = !DILocation(line: 652, column: 36, scope: !1587)
!1590 = !DILocation(line: 652, column: 16, scope: !1553)
!1591 = !DILocation(line: 653, column: 28, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1587, file: !2, line: 652, column: 54)
!1593 = !DILocation(line: 653, column: 9, scope: !1592)
!1594 = !DILocation(line: 654, column: 14, scope: !1595)
!1595 = distinct !DILexicalBlock(scope: !1592, file: !2, line: 654, column: 13)
!1596 = !DILocation(line: 654, column: 22, scope: !1595)
!1597 = !DILocation(line: 654, column: 36, scope: !1595)
!1598 = !DILocation(line: 654, column: 38, scope: !1595)
!1599 = !DILocation(line: 654, column: 49, scope: !1595)
!1600 = !DILocation(line: 654, column: 57, scope: !1595)
!1601 = !DILocation(line: 654, column: 71, scope: !1595)
!1602 = !DILocation(line: 654, column: 42, scope: !1595)
!1603 = !DILocation(line: 654, column: 13, scope: !1592)
!1604 = !DILocation(line: 655, column: 30, scope: !1595)
!1605 = !DILocation(line: 655, column: 11, scope: !1595)
!1606 = !DILocation(line: 657, column: 30, scope: !1595)
!1607 = !DILocation(line: 657, column: 46, scope: !1595)
!1608 = !DILocation(line: 657, column: 54, scope: !1595)
!1609 = !DILocation(line: 657, column: 68, scope: !1595)
!1610 = !DILocation(line: 657, column: 11, scope: !1595)
!1611 = !DILocation(line: 658, column: 7, scope: !1592)
!1612 = !DILocation(line: 659, column: 26, scope: !1367)
!1613 = !DILocation(line: 659, column: 7, scope: !1367)
!1614 = !DILocation(line: 660, column: 26, scope: !1367)
!1615 = !DILocation(line: 660, column: 45, scope: !1367)
!1616 = !DILocation(line: 660, column: 53, scope: !1367)
!1617 = !{!759, !744, i64 16}
!1618 = !DILocation(line: 660, column: 34, scope: !1367)
!1619 = !DILocation(line: 660, column: 7, scope: !1367)
!1620 = !DILocation(line: 661, column: 12, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !1367, file: !2, line: 661, column: 11)
!1622 = !DILocation(line: 661, column: 20, scope: !1621)
!1623 = !{!759, !760, i64 74}
!1624 = !DILocation(line: 661, column: 33, scope: !1621)
!1625 = !DILocation(line: 661, column: 50, scope: !1621)
!1626 = !DILocation(line: 661, column: 36, scope: !1621)
!1627 = !DILocation(line: 661, column: 66, scope: !1621)
!1628 = !DILocation(line: 661, column: 11, scope: !1367)
!1629 = !DILocation(line: 662, column: 28, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1621, file: !2, line: 661, column: 71)
!1631 = !DILocation(line: 662, column: 9, scope: !1630)
!1632 = !DILocation(line: 663, column: 28, scope: !1630)
!1633 = !DILocation(line: 663, column: 47, scope: !1630)
!1634 = !DILocation(line: 663, column: 36, scope: !1630)
!1635 = !DILocation(line: 663, column: 9, scope: !1630)
!1636 = !DILocation(line: 664, column: 28, scope: !1630)
!1637 = !DILocation(line: 664, column: 9, scope: !1630)
!1638 = !DILocation(line: 665, column: 7, scope: !1630)
!1639 = !DILocation(line: 666, column: 26, scope: !1367)
!1640 = !DILocation(line: 666, column: 7, scope: !1367)
!1641 = !DILocation(line: 667, column: 20, scope: !1367)
!1642 = !DILocation(line: 667, column: 7, scope: !1367)
!1643 = !DILocation(line: 668, column: 5, scope: !1367)
!1644 = !DILocation(line: 583, column: 50, scope: !1360)
!1645 = !DILocation(line: 583, column: 5, scope: !1360)
!1646 = distinct !{!1646, !1365, !1647, !1303}
!1647 = !DILocation(line: 668, column: 5, scope: !1357)
!1648 = !DILocation(line: 669, column: 19, scope: !1352)
!1649 = !DILocation(line: 669, column: 5, scope: !1352)
!1650 = !DILocation(line: 670, column: 3, scope: !1352)
!1651 = !DILocation(line: 672, column: 7, scope: !1223)
!1652 = !DILocation(line: 672, column: 11, scope: !1223)
!1653 = !DILocation(line: 672, column: 7, scope: !1209)
!1654 = !DILocation(line: 673, column: 5, scope: !1222)
!1655 = !DILocation(line: 673, column: 9, scope: !1222)
!1656 = !DILocation(line: 673, column: 21, scope: !1222)
!1657 = !DILocation(line: 675, column: 5, scope: !1222)
!1658 = !DILocation(line: 675, column: 9, scope: !1222)
!1659 = !DILocation(line: 676, column: 5, scope: !1222)
!1660 = !DILocation(line: 676, column: 12, scope: !1222)
!1661 = !DILocation(line: 678, column: 5, scope: !1222)
!1662 = !DILocation(line: 678, column: 10, scope: !1222)
!1663 = !DILocation(line: 679, column: 10, scope: !1222)
!1664 = !DILocation(line: 684, column: 12, scope: !1222)
!1665 = !DILocation(line: 684, column: 5, scope: !1222)
!1666 = !DILocation(line: 685, column: 18, scope: !1222)
!1667 = !DILocation(line: 685, column: 16, scope: !1222)
!1668 = !DILocation(line: 686, column: 22, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !1222, file: !2, line: 686, column: 9)
!1670 = !DILocation(line: 686, column: 17, scope: !1669)
!1671 = !DILocation(line: 686, column: 15, scope: !1669)
!1672 = !DILocation(line: 686, column: 33, scope: !1669)
!1673 = !DILocation(line: 686, column: 9, scope: !1222)
!1674 = !DILocation(line: 687, column: 7, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !1669, file: !2, line: 686, column: 40)
!1676 = !DILocation(line: 688, column: 7, scope: !1675)
!1677 = !DILocation(line: 691, column: 19, scope: !1222)
!1678 = !DILocation(line: 691, column: 13, scope: !1222)
!1679 = !DILocation(line: 691, column: 11, scope: !1222)
!1680 = !DILocation(line: 692, column: 11, scope: !1222)
!1681 = !DILocation(line: 693, column: 18, scope: !1222)
!1682 = !DILocation(line: 693, column: 40, scope: !1222)
!1683 = !DILocation(line: 693, column: 12, scope: !1222)
!1684 = !DILocation(line: 695, column: 10, scope: !1222)
!1685 = !DILocation(line: 695, column: 5, scope: !1222)
!1686 = !DILocation(line: 696, column: 11, scope: !1222)
!1687 = !DILocation(line: 696, column: 5, scope: !1222)
!1688 = !DILocation(line: 703, column: 17, scope: !1689)
!1689 = distinct !DILexicalBlock(scope: !1222, file: !2, line: 703, column: 9)
!1690 = !DILocation(line: 703, column: 10, scope: !1689)
!1691 = !DILocation(line: 703, column: 9, scope: !1222)
!1692 = !DILocation(line: 704, column: 23, scope: !1689)
!1693 = !DILocation(line: 704, column: 72, scope: !1689)
!1694 = !DILocation(line: 704, column: 50, scope: !1689)
!1695 = !DILocation(line: 704, column: 14, scope: !1689)
!1696 = !DILocation(line: 704, column: 7, scope: !1689)
!1697 = !DILocation(line: 706, column: 23, scope: !1698)
!1698 = distinct !DILexicalBlock(scope: !1689, file: !2, line: 705, column: 10)
!1699 = !DILocation(line: 707, column: 45, scope: !1698)
!1700 = !DILocation(line: 707, column: 23, scope: !1698)
!1701 = !DILocation(line: 708, column: 23, scope: !1698)
!1702 = !DILocation(line: 708, column: 60, scope: !1698)
!1703 = !DILocation(line: 708, column: 34, scope: !1698)
!1704 = !DILocation(line: 708, column: 32, scope: !1698)
!1705 = !DILocation(line: 706, column: 14, scope: !1698)
!1706 = !DILocation(line: 710, column: 15, scope: !1222)
!1707 = !DILocation(line: 710, column: 19, scope: !1222)
!1708 = !DILocation(line: 710, column: 32, scope: !1222)
!1709 = !DILocation(line: 710, column: 45, scope: !1222)
!1710 = !DILocation(line: 710, column: 49, scope: !1222)
!1711 = !DILocation(line: 710, column: 68, scope: !1222)
!1712 = !DILocation(line: 710, column: 13, scope: !1222)
!1713 = !DILocation(line: 711, column: 12, scope: !1222)
!1714 = !DILocation(line: 711, column: 5, scope: !1222)
!1715 = !DILocation(line: 713, column: 5, scope: !1222)
!1716 = !DILocation(line: 713, column: 17, scope: !1222)
!1717 = !DILocation(line: 713, column: 12, scope: !1222)
!1718 = !DILocation(line: 713, column: 49, scope: !1222)
!1719 = !DILocation(line: 714, column: 26, scope: !1222)
!1720 = !DILocation(line: 714, column: 34, scope: !1222)
!1721 = !DILocation(line: 714, column: 7, scope: !1222)
!1722 = distinct !{!1722, !1715, !1723, !1303}
!1723 = !DILocation(line: 714, column: 35, scope: !1222)
!1724 = !DILocation(line: 716, column: 10, scope: !1222)
!1725 = !DILocation(line: 716, column: 5, scope: !1222)
!1726 = !DILocation(line: 717, column: 11, scope: !1222)
!1727 = !DILocation(line: 717, column: 5, scope: !1222)
!1728 = !DILocation(line: 718, column: 3, scope: !1223)
!1729 = !DILocation(line: 718, column: 3, scope: !1222)
!1730 = !DILocation(line: 720, column: 22, scope: !1209)
!1731 = !DILocation(line: 720, column: 3, scope: !1209)
!1732 = !DILocation(line: 721, column: 8, scope: !1733)
!1733 = distinct !DILexicalBlock(scope: !1209, file: !2, line: 721, column: 7)
!1734 = !DILocation(line: 721, column: 7, scope: !1209)
!1735 = !DILocation(line: 722, column: 9, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1737, file: !2, line: 722, column: 9)
!1737 = distinct !DILexicalBlock(scope: !1733, file: !2, line: 721, column: 17)
!1738 = !DILocation(line: 722, column: 13, scope: !1736)
!1739 = !DILocation(line: 722, column: 9, scope: !1737)
!1740 = !DILocation(line: 723, column: 55, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !1736, file: !2, line: 722, column: 30)
!1742 = !DILocation(line: 723, column: 7, scope: !1741)
!1743 = !DILocation(line: 724, column: 26, scope: !1741)
!1744 = !DILocation(line: 724, column: 7, scope: !1741)
!1745 = !DILocation(line: 726, column: 26, scope: !1741)
!1746 = !DILocation(line: 726, column: 34, scope: !1741)
!1747 = !DILocation(line: 727, column: 60, scope: !1741)
!1748 = !DILocation(line: 727, column: 34, scope: !1741)
!1749 = !DILocation(line: 726, column: 43, scope: !1741)
!1750 = !DILocation(line: 726, column: 7, scope: !1741)
!1751 = !DILocation(line: 728, column: 26, scope: !1741)
!1752 = !DILocation(line: 728, column: 7, scope: !1741)
!1753 = !DILocation(line: 729, column: 5, scope: !1741)
!1754 = !DILocation(line: 730, column: 45, scope: !1737)
!1755 = !DILocation(line: 730, column: 5, scope: !1737)
!1756 = !DILocation(line: 731, column: 24, scope: !1737)
!1757 = !DILocation(line: 731, column: 5, scope: !1737)
!1758 = !DILocation(line: 732, column: 24, scope: !1737)
!1759 = !DILocation(line: 733, column: 24, scope: !1737)
!1760 = !DILocation(line: 733, column: 28, scope: !1737)
!1761 = !DILocation(line: 733, column: 43, scope: !1737)
!1762 = !DILocation(line: 733, column: 47, scope: !1737)
!1763 = !DILocation(line: 732, column: 5, scope: !1737)
!1764 = !DILocation(line: 734, column: 24, scope: !1737)
!1765 = !DILocation(line: 734, column: 5, scope: !1737)
!1766 = !DILocation(line: 735, column: 3, scope: !1737)
!1767 = !DILocation(line: 736, column: 10, scope: !1209)
!1768 = !DILocation(line: 737, column: 1, scope: !1209)
!1769 = !DILocation(line: 736, column: 3, scope: !1209)
!1770 = !DISubprogram(name: "gt_error_is_set", scope: !846, file: !846, line: 64, type: !1771, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1771 = !DISubroutineType(types: !1772)
!1772 = !{!670, !1773}
!1773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1774, size: 64)
!1774 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !845)
!1775 = distinct !DISubprogram(name: "add_common_options", scope: !2, file: !2, line: 516, type: !1021, scopeLine: 517, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !1776)
!1776 = !{!1777, !1778, !1779}
!1777 = !DILocalVariable(name: "op", arg: 1, scope: !1775, file: !2, line: 516, type: !828)
!1778 = !DILocalVariable(name: "has_extended_options", scope: !1775, file: !2, line: 518, type: !670)
!1779 = !DILocalVariable(name: "option", scope: !1775, file: !2, line: 519, type: !653)
!1780 = !DILocation(line: 516, column: 48, scope: !1775)
!1781 = !DILocation(line: 518, column: 3, scope: !1775)
!1782 = !DILocation(line: 518, column: 8, scope: !1775)
!1783 = !DILocation(line: 519, column: 3, scope: !1775)
!1784 = !DILocation(line: 519, column: 13, scope: !1775)
!1785 = !DILocation(line: 520, column: 3, scope: !1775)
!1786 = !DILocation(line: 520, column: 3, scope: !1787)
!1787 = distinct !DILexicalBlock(scope: !1788, file: !2, line: 520, column: 3)
!1788 = distinct !DILexicalBlock(scope: !1775, file: !2, line: 520, column: 3)
!1789 = !DILocation(line: 520, column: 3, scope: !1788)
!1790 = !DILocation(line: 520, column: 3, scope: !1791)
!1791 = distinct !DILexicalBlock(scope: !1787, file: !2, line: 520, column: 3)
!1792 = !DILocation(line: 521, column: 46, scope: !1775)
!1793 = !DILocation(line: 521, column: 50, scope: !1775)
!1794 = !DILocation(line: 521, column: 26, scope: !1775)
!1795 = !DILocation(line: 521, column: 24, scope: !1775)
!1796 = !{!760, !760, i64 0}
!1797 = !DILocation(line: 522, column: 31, scope: !1775)
!1798 = !DILocation(line: 522, column: 12, scope: !1775)
!1799 = !DILocation(line: 522, column: 10, scope: !1775)
!1800 = !DILocation(line: 523, column: 31, scope: !1775)
!1801 = !DILocation(line: 523, column: 35, scope: !1775)
!1802 = !DILocation(line: 523, column: 3, scope: !1775)
!1803 = !DILocation(line: 524, column: 7, scope: !1804)
!1804 = distinct !DILexicalBlock(scope: !1775, file: !2, line: 524, column: 7)
!1805 = !DILocation(line: 524, column: 7, scope: !1775)
!1806 = !DILocation(line: 525, column: 14, scope: !1807)
!1807 = distinct !DILexicalBlock(scope: !1804, file: !2, line: 524, column: 29)
!1808 = !DILocation(line: 525, column: 12, scope: !1807)
!1809 = !DILocation(line: 526, column: 33, scope: !1807)
!1810 = !DILocation(line: 526, column: 37, scope: !1807)
!1811 = !DILocation(line: 526, column: 5, scope: !1807)
!1812 = !DILocation(line: 527, column: 3, scope: !1807)
!1813 = !DILocation(line: 528, column: 12, scope: !1775)
!1814 = !DILocation(line: 528, column: 10, scope: !1775)
!1815 = !DILocation(line: 529, column: 31, scope: !1775)
!1816 = !DILocation(line: 529, column: 35, scope: !1775)
!1817 = !DILocation(line: 529, column: 3, scope: !1775)
!1818 = !DILocation(line: 530, column: 12, scope: !1775)
!1819 = !DILocation(line: 530, column: 10, scope: !1775)
!1820 = !DILocation(line: 531, column: 31, scope: !1775)
!1821 = !DILocation(line: 531, column: 35, scope: !1775)
!1822 = !DILocation(line: 531, column: 3, scope: !1775)
!1823 = !DILocation(line: 532, column: 1, scope: !1775)
!1824 = distinct !DISubprogram(name: "print_toolname", scope: !2, file: !2, line: 488, type: !1825, scopeLine: 488, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !1827)
!1825 = !DISubroutineType(types: !1826)
!1826 = !{null, !690, !660, !670}
!1827 = !{!1828, !1829, !1830, !1831, !1832, !1836}
!1828 = !DILocalVariable(name: "toolname", arg: 1, scope: !1824, file: !2, line: 488, type: !690)
!1829 = !DILocalVariable(name: "outstr", arg: 2, scope: !1824, file: !2, line: 488, type: !660)
!1830 = !DILocalVariable(name: "upper", arg: 3, scope: !1824, file: !2, line: 488, type: !670)
!1831 = !DILocalVariable(name: "i", scope: !1824, file: !2, line: 489, type: !680)
!1832 = !DILocalVariable(name: "c", scope: !1833, file: !2, line: 491, type: !4)
!1833 = distinct !DILexicalBlock(scope: !1834, file: !2, line: 490, column: 42)
!1834 = distinct !DILexicalBlock(scope: !1835, file: !2, line: 490, column: 3)
!1835 = distinct !DILexicalBlock(scope: !1824, file: !2, line: 490, column: 3)
!1836 = !DILocalVariable(name: "__res", scope: !1837, file: !2, line: 496, type: !649)
!1837 = distinct !DILexicalBlock(scope: !1838, file: !2, line: 496, column: 36)
!1838 = distinct !DILexicalBlock(scope: !1839, file: !2, line: 495, column: 11)
!1839 = distinct !DILexicalBlock(scope: !1840, file: !2, line: 494, column: 10)
!1840 = distinct !DILexicalBlock(scope: !1833, file: !2, line: 492, column: 9)
!1841 = !DILocation(line: 488, column: 40, scope: !1824)
!1842 = !DILocation(line: 488, column: 57, scope: !1824)
!1843 = !DILocation(line: 488, column: 70, scope: !1824)
!1844 = !DILocation(line: 489, column: 3, scope: !1824)
!1845 = !DILocation(line: 489, column: 11, scope: !1824)
!1846 = !DILocation(line: 490, column: 10, scope: !1835)
!1847 = !DILocation(line: 490, column: 8, scope: !1835)
!1848 = !DILocation(line: 490, column: 15, scope: !1834)
!1849 = !DILocation(line: 490, column: 26, scope: !1834)
!1850 = !DILocation(line: 490, column: 19, scope: !1834)
!1851 = !DILocation(line: 490, column: 17, scope: !1834)
!1852 = !DILocation(line: 490, column: 3, scope: !1835)
!1853 = !DILocation(line: 491, column: 5, scope: !1833)
!1854 = !DILocation(line: 491, column: 10, scope: !1833)
!1855 = !DILocation(line: 491, column: 14, scope: !1833)
!1856 = !DILocation(line: 491, column: 23, scope: !1833)
!1857 = !DILocation(line: 492, column: 9, scope: !1840)
!1858 = !DILocation(line: 492, column: 11, scope: !1840)
!1859 = !DILocation(line: 492, column: 9, scope: !1833)
!1860 = !DILocation(line: 493, column: 26, scope: !1840)
!1861 = !DILocation(line: 493, column: 7, scope: !1840)
!1862 = !DILocation(line: 495, column: 11, scope: !1838)
!1863 = !DILocation(line: 495, column: 11, scope: !1839)
!1864 = !DILocation(line: 496, column: 28, scope: !1838)
!1865 = !DILocation(line: 496, column: 36, scope: !1837)
!1866 = !DILocation(line: 496, column: 36, scope: !1867)
!1867 = distinct !DILexicalBlock(scope: !1837, file: !2, line: 496, column: 36)
!1868 = !DILocation(line: 496, column: 36, scope: !1838)
!1869 = !DILocation(line: 496, column: 9, scope: !1838)
!1870 = !DILocation(line: 498, column: 28, scope: !1838)
!1871 = !DILocation(line: 498, column: 36, scope: !1838)
!1872 = !DILocation(line: 498, column: 9, scope: !1838)
!1873 = !DILocation(line: 500, column: 3, scope: !1834)
!1874 = !DILocation(line: 500, column: 3, scope: !1833)
!1875 = !DILocation(line: 490, column: 38, scope: !1834)
!1876 = !DILocation(line: 490, column: 3, scope: !1834)
!1877 = distinct !{!1877, !1852, !1878, !1303}
!1878 = !DILocation(line: 500, column: 3, scope: !1835)
!1879 = !DILocation(line: 501, column: 1, scope: !1824)
!1880 = !DISubprogram(name: "gt_str_append_cstr", scope: !662, file: !662, line: 46, type: !1881, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1881 = !DISubroutineType(types: !1882)
!1882 = !{null, !660, !690}
!1883 = !DISubprogram(name: "gt_str_append_char", scope: !662, file: !662, line: 51, type: !1884, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1884 = !DISubroutineType(types: !1885)
!1885 = !{null, !660, !4}
!1886 = distinct !DISubprogram(name: "print_asciidoc_header", scope: !2, file: !2, line: 479, type: !1887, scopeLine: 479, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !1889)
!1887 = !DISubroutineType(types: !1888)
!1888 = !{null, !690, !660}
!1889 = !{!1890, !1891, !1892}
!1890 = !DILocalVariable(name: "hdr", arg: 1, scope: !1886, file: !2, line: 479, type: !690)
!1891 = !DILocalVariable(name: "outstr", arg: 2, scope: !1886, file: !2, line: 479, type: !660)
!1892 = !DILocalVariable(name: "i", scope: !1886, file: !2, line: 480, type: !680)
!1893 = !DILocation(line: 479, column: 47, scope: !1886)
!1894 = !DILocation(line: 479, column: 59, scope: !1886)
!1895 = !DILocation(line: 480, column: 3, scope: !1886)
!1896 = !DILocation(line: 480, column: 11, scope: !1886)
!1897 = !DILocation(line: 481, column: 22, scope: !1886)
!1898 = !DILocation(line: 481, column: 30, scope: !1886)
!1899 = !DILocation(line: 481, column: 3, scope: !1886)
!1900 = !DILocation(line: 482, column: 22, scope: !1886)
!1901 = !DILocation(line: 482, column: 3, scope: !1886)
!1902 = !DILocation(line: 483, column: 10, scope: !1903)
!1903 = distinct !DILexicalBlock(scope: !1886, file: !2, line: 483, column: 3)
!1904 = !DILocation(line: 483, column: 8, scope: !1903)
!1905 = !DILocation(line: 483, column: 15, scope: !1906)
!1906 = distinct !DILexicalBlock(scope: !1903, file: !2, line: 483, column: 3)
!1907 = !DILocation(line: 483, column: 26, scope: !1906)
!1908 = !DILocation(line: 483, column: 19, scope: !1906)
!1909 = !DILocation(line: 483, column: 17, scope: !1906)
!1910 = !DILocation(line: 483, column: 3, scope: !1903)
!1911 = !DILocation(line: 484, column: 24, scope: !1906)
!1912 = !DILocation(line: 484, column: 5, scope: !1906)
!1913 = !DILocation(line: 483, column: 33, scope: !1906)
!1914 = !DILocation(line: 483, column: 3, scope: !1906)
!1915 = distinct !{!1915, !1910, !1916, !1303}
!1916 = !DILocation(line: 484, column: 35, scope: !1903)
!1917 = !DILocation(line: 485, column: 22, scope: !1886)
!1918 = !DILocation(line: 485, column: 3, scope: !1886)
!1919 = !DILocation(line: 486, column: 1, scope: !1886)
!1920 = !DISubprogram(name: "gt_array_size", scope: !718, file: !718, line: 81, type: !1921, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1921 = !DISubroutineType(types: !1922)
!1922 = !{!680, !1923}
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1924, size: 64)
!1924 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !717)
!1925 = !DISubprogram(name: "gt_str_new", scope: !662, file: !662, line: 30, type: !1926, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1926 = !DISubroutineType(types: !1927)
!1927 = !{!660}
!1928 = !DISubprogram(name: "gt_array_get", scope: !718, file: !718, line: 38, type: !1929, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1929 = !DISubroutineType(types: !1930)
!1930 = !{!651, !1923, !680}
!1931 = !DISubprogram(name: "gt_str_append_double", scope: !662, file: !662, line: 53, type: !1932, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1932 = !DISubroutineType(types: !1933)
!1933 = !{null, !660, !672, !649}
!1934 = !DISubprogram(name: "gt_str_append_int", scope: !662, file: !662, line: 63, type: !1935, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1935 = !DISubroutineType(types: !1936)
!1936 = !{null, !660, !649}
!1937 = !DISubprogram(name: "gt_str_append_uint", scope: !662, file: !662, line: 65, type: !1938, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1938 = !DISubroutineType(types: !1939)
!1939 = !{null, !660, !605}
!1940 = !DISubprogram(name: "gt_str_append_uword", scope: !662, file: !662, line: 61, type: !1941, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1941 = !DISubroutineType(types: !1942)
!1942 = !{null, !660, !680}
!1943 = !DISubprogram(name: "gt_str_length", scope: !662, file: !662, line: 74, type: !1944, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1944 = !DISubroutineType(types: !1945)
!1945 = !{!680, !993}
!1946 = !DISubprogram(name: "gt_str_reset", scope: !662, file: !662, line: 70, type: !1947, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1947 = !DISubroutineType(types: !1948)
!1948 = !{null, !660}
!1949 = !DISubprogram(name: "gt_str_delete", scope: !662, file: !662, line: 90, type: !1947, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1950 = !DISubprogram(name: "fflush", scope: !765, file: !765, line: 230, type: !1951, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1951 = !DISubroutineType(types: !1952)
!1952 = !{!649, !769}
!1953 = !DISubprogram(name: "dup", scope: !1954, file: !1954, line: 552, type: !1955, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1954 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1955 = !DISubroutineType(types: !1956)
!1956 = !{!649, !649}
!1957 = !DISubprogram(name: "pipe", scope: !1954, file: !1954, line: 437, type: !1958, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1958 = !DISubroutineType(types: !1959)
!1959 = !{!649, !725}
!1960 = !DISubprogram(name: "perror", scope: !765, file: !765, line: 804, type: !852, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1961 = !DISubprogram(name: "exit", scope: !822, file: !822, line: 624, type: !1962, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1962 = !DISubroutineType(types: !1963)
!1963 = !{null, !649}
!1964 = !DISubprogram(name: "fcntl", linkageName: "fcntl64", scope: !1965, file: !1965, line: 152, type: !1966, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1965 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1966 = !DISubroutineType(types: !1967)
!1967 = !{!649, !649, !649, null}
!1968 = !DISubprogram(name: "dup2", scope: !1954, file: !1954, line: 555, type: !1969, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1969 = !DISubroutineType(types: !1970)
!1970 = !{!649, !649, !649}
!1971 = !DISubprogram(name: "close", scope: !1954, file: !1954, line: 358, type: !1955, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1972 = !DISubprogram(name: "strcmp", scope: !930, file: !930, line: 156, type: !1973, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1973 = !DISubroutineType(types: !1974)
!1974 = !{!649, !690, !690}
!1975 = !DISubprogram(name: "snprintf", scope: !765, file: !765, line: 378, type: !1976, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1976 = !DISubroutineType(types: !1977)
!1977 = !{!649, !1978, !816, !820, null}
!1978 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !777)
!1979 = !DISubprogram(name: "gt_error_get_progname", scope: !846, file: !846, line: 72, type: !1980, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1980 = !DISubroutineType(types: !1981)
!1981 = !{!690, !1773}
!1982 = !DISubprogram(name: "gt_cstr_length_up_to_char", scope: !944, file: !944, line: 51, type: !1983, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1983 = !DISubroutineType(types: !1984)
!1984 = !{!680, !690, !4}
!1985 = !DISubprogram(name: "read", scope: !1954, file: !1954, line: 371, type: !1986, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1986 = !DISubroutineType(types: !1987)
!1987 = !{!1988, !649, !651, !816}
!1988 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !765, line: 77, baseType: !1989)
!1989 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !797, line: 194, baseType: !678)
!1990 = distinct !DISubprogram(name: "gt_option_parser_set_min_args", scope: !2, file: !2, line: 938, type: !1991, scopeLine: 940, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !1993)
!1991 = !DISubroutineType(types: !1992)
!1992 = !{null, !828, !605}
!1993 = !{!1994, !1995}
!1994 = !DILocalVariable(name: "op", arg: 1, scope: !1990, file: !2, line: 938, type: !828)
!1995 = !DILocalVariable(name: "min_additional_arguments", arg: 2, scope: !1990, file: !2, line: 939, type: !605)
!1996 = !DILocation(line: 938, column: 52, scope: !1990)
!1997 = !DILocation(line: 939, column: 49, scope: !1990)
!1998 = !DILocation(line: 941, column: 3, scope: !1990)
!1999 = !DILocation(line: 941, column: 3, scope: !2000)
!2000 = distinct !DILexicalBlock(scope: !2001, file: !2, line: 941, column: 3)
!2001 = distinct !DILexicalBlock(scope: !1990, file: !2, line: 941, column: 3)
!2002 = !DILocation(line: 941, column: 3, scope: !2001)
!2003 = !DILocation(line: 941, column: 3, scope: !2004)
!2004 = distinct !DILexicalBlock(scope: !2000, file: !2, line: 941, column: 3)
!2005 = !DILocation(line: 942, column: 34, scope: !1990)
!2006 = !DILocation(line: 942, column: 3, scope: !1990)
!2007 = !DILocation(line: 942, column: 7, scope: !1990)
!2008 = !DILocation(line: 942, column: 32, scope: !1990)
!2009 = !DILocation(line: 943, column: 1, scope: !1990)
!2010 = distinct !DISubprogram(name: "gt_option_parser_set_max_args", scope: !2, file: !2, line: 945, type: !1991, scopeLine: 947, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !2011)
!2011 = !{!2012, !2013}
!2012 = !DILocalVariable(name: "op", arg: 1, scope: !2010, file: !2, line: 945, type: !828)
!2013 = !DILocalVariable(name: "max_additional_arguments", arg: 2, scope: !2010, file: !2, line: 946, type: !605)
!2014 = !DILocation(line: 945, column: 52, scope: !2010)
!2015 = !DILocation(line: 946, column: 49, scope: !2010)
!2016 = !DILocation(line: 948, column: 3, scope: !2010)
!2017 = !DILocation(line: 948, column: 3, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !2019, file: !2, line: 948, column: 3)
!2019 = distinct !DILexicalBlock(scope: !2010, file: !2, line: 948, column: 3)
!2020 = !DILocation(line: 948, column: 3, scope: !2019)
!2021 = !DILocation(line: 948, column: 3, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !2018, file: !2, line: 948, column: 3)
!2023 = !DILocation(line: 949, column: 34, scope: !2010)
!2024 = !DILocation(line: 949, column: 3, scope: !2010)
!2025 = !DILocation(line: 949, column: 7, scope: !2010)
!2026 = !DILocation(line: 949, column: 32, scope: !2010)
!2027 = !DILocation(line: 950, column: 1, scope: !2010)
!2028 = distinct !DISubprogram(name: "gt_option_parser_set_min_max_args", scope: !2, file: !2, line: 952, type: !2029, scopeLine: 955, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !2031)
!2029 = !DISubroutineType(types: !2030)
!2030 = !{null, !828, !605, !605}
!2031 = !{!2032, !2033, !2034}
!2032 = !DILocalVariable(name: "op", arg: 1, scope: !2028, file: !2, line: 952, type: !828)
!2033 = !DILocalVariable(name: "min_additional_arguments", arg: 2, scope: !2028, file: !2, line: 953, type: !605)
!2034 = !DILocalVariable(name: "max_additional_arguments", arg: 3, scope: !2028, file: !2, line: 954, type: !605)
!2035 = !DILocation(line: 952, column: 56, scope: !2028)
!2036 = !DILocation(line: 953, column: 53, scope: !2028)
!2037 = !DILocation(line: 954, column: 53, scope: !2028)
!2038 = !DILocation(line: 956, column: 3, scope: !2028)
!2039 = !DILocation(line: 956, column: 3, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !2041, file: !2, line: 956, column: 3)
!2041 = distinct !DILexicalBlock(scope: !2028, file: !2, line: 956, column: 3)
!2042 = !DILocation(line: 956, column: 3, scope: !2041)
!2043 = !DILocation(line: 956, column: 3, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !2040, file: !2, line: 956, column: 3)
!2045 = !DILocation(line: 957, column: 34, scope: !2028)
!2046 = !DILocation(line: 957, column: 3, scope: !2028)
!2047 = !DILocation(line: 957, column: 7, scope: !2028)
!2048 = !DILocation(line: 957, column: 32, scope: !2028)
!2049 = !DILocation(line: 958, column: 34, scope: !2028)
!2050 = !DILocation(line: 958, column: 3, scope: !2028)
!2051 = !DILocation(line: 958, column: 7, scope: !2028)
!2052 = !DILocation(line: 958, column: 32, scope: !2028)
!2053 = !DILocation(line: 959, column: 1, scope: !2028)
!2054 = distinct !DISubprogram(name: "gt_option_parser_parse", scope: !2, file: !2, line: 977, type: !2055, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !2058)
!2055 = !DISubroutineType(types: !2056)
!2056 = !{!2057, !828, !725, !649, !692, !850, !844}
!2057 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtOPrval", file: !643, line: 48, baseType: !642)
!2058 = !{!2059, !2060, !2061, !2062, !2063, !2064, !2065, !2066, !2067, !2068, !2069, !2070, !2072, !2073, !2074, !2075, !2076, !2077, !2078}
!2059 = !DILocalVariable(name: "op", arg: 1, scope: !2054, file: !2, line: 977, type: !828)
!2060 = !DILocalVariable(name: "parsed_args", arg: 2, scope: !2054, file: !2, line: 977, type: !725)
!2061 = !DILocalVariable(name: "argc", arg: 3, scope: !2054, file: !2, line: 977, type: !649)
!2062 = !DILocalVariable(name: "argv", arg: 4, scope: !2054, file: !2, line: 978, type: !692)
!2063 = !DILocalVariable(name: "version_func", arg: 5, scope: !2054, file: !2, line: 979, type: !850)
!2064 = !DILocalVariable(name: "err", arg: 6, scope: !2054, file: !2, line: 979, type: !844)
!2065 = !DILocalVariable(name: "argnum", scope: !2054, file: !2, line: 981, type: !649)
!2066 = !DILocalVariable(name: "int_value", scope: !2054, file: !2, line: 981, type: !649)
!2067 = !DILocalVariable(name: "uint_value", scope: !2054, file: !2, line: 982, type: !605)
!2068 = !DILocalVariable(name: "i", scope: !2054, file: !2, line: 983, type: !680)
!2069 = !DILocalVariable(name: "double_value", scope: !2054, file: !2, line: 984, type: !672)
!2070 = !DILocalVariable(name: "hookinfo", scope: !2054, file: !2, line: 985, type: !2071)
!2071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!2072 = !DILocalVariable(name: "option", scope: !2054, file: !2, line: 986, type: !653)
!2073 = !DILocalVariable(name: "option_parsed", scope: !2054, file: !2, line: 987, type: !670)
!2074 = !DILocalVariable(name: "long_value", scope: !2054, file: !2, line: 988, type: !676)
!2075 = !DILocalVariable(name: "ulong_value", scope: !2054, file: !2, line: 989, type: !680)
!2076 = !DILocalVariable(name: "minus_offset", scope: !2054, file: !2, line: 990, type: !649)
!2077 = !DILocalVariable(name: "had_err", scope: !2054, file: !2, line: 990, type: !649)
!2078 = !DILocalVariable(name: "gt_error_str", scope: !2054, file: !2, line: 991, type: !660)
!2079 = !DILocation(line: 977, column: 49, scope: !2054)
!2080 = !DILocation(line: 977, column: 58, scope: !2054)
!2081 = !DILocation(line: 977, column: 75, scope: !2054)
!2082 = !DILocation(line: 978, column: 46, scope: !2054)
!2083 = !DILocation(line: 979, column: 51, scope: !2054)
!2084 = !DILocation(line: 979, column: 74, scope: !2054)
!2085 = !DILocation(line: 981, column: 3, scope: !2054)
!2086 = !DILocation(line: 981, column: 7, scope: !2054)
!2087 = !DILocation(line: 981, column: 15, scope: !2054)
!2088 = !DILocation(line: 982, column: 3, scope: !2054)
!2089 = !DILocation(line: 982, column: 16, scope: !2054)
!2090 = !DILocation(line: 983, column: 3, scope: !2054)
!2091 = !DILocation(line: 983, column: 11, scope: !2054)
!2092 = !DILocation(line: 984, column: 3, scope: !2054)
!2093 = !DILocation(line: 984, column: 10, scope: !2054)
!2094 = !DILocation(line: 985, column: 3, scope: !2054)
!2095 = !DILocation(line: 985, column: 13, scope: !2054)
!2096 = !DILocation(line: 986, column: 3, scope: !2054)
!2097 = !DILocation(line: 986, column: 13, scope: !2054)
!2098 = !DILocation(line: 987, column: 3, scope: !2054)
!2099 = !DILocation(line: 987, column: 8, scope: !2054)
!2100 = !DILocation(line: 988, column: 3, scope: !2054)
!2101 = !DILocation(line: 988, column: 10, scope: !2054)
!2102 = !DILocation(line: 989, column: 3, scope: !2054)
!2103 = !DILocation(line: 989, column: 11, scope: !2054)
!2104 = !DILocation(line: 990, column: 3, scope: !2054)
!2105 = !DILocation(line: 990, column: 7, scope: !2054)
!2106 = !DILocation(line: 990, column: 21, scope: !2054)
!2107 = !DILocation(line: 991, column: 3, scope: !2054)
!2108 = !DILocation(line: 991, column: 10, scope: !2054)
!2109 = !DILocation(line: 993, column: 3, scope: !2054)
!2110 = !DILocation(line: 993, column: 3, scope: !2111)
!2111 = distinct !DILexicalBlock(scope: !2112, file: !2, line: 993, column: 3)
!2112 = distinct !DILexicalBlock(scope: !2054, file: !2, line: 993, column: 3)
!2113 = !DILocation(line: 993, column: 3, scope: !2112)
!2114 = !DILocation(line: 993, column: 3, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !2111, file: !2, line: 993, column: 3)
!2116 = !DILocation(line: 994, column: 3, scope: !2054)
!2117 = !DILocation(line: 994, column: 3, scope: !2118)
!2118 = distinct !DILexicalBlock(scope: !2119, file: !2, line: 994, column: 3)
!2119 = distinct !DILexicalBlock(scope: !2054, file: !2, line: 994, column: 3)
!2120 = !DILocation(line: 994, column: 3, scope: !2119)
!2121 = !DILocation(line: 994, column: 3, scope: !2122)
!2122 = distinct !DILexicalBlock(scope: !2118, file: !2, line: 994, column: 3)
!2123 = !DILocation(line: 997, column: 8, scope: !2124)
!2124 = distinct !DILexicalBlock(scope: !2054, file: !2, line: 997, column: 7)
!2125 = !DILocation(line: 997, column: 12, scope: !2124)
!2126 = !DILocation(line: 997, column: 7, scope: !2054)
!2127 = !DILocation(line: 998, column: 5, scope: !2128)
!2128 = distinct !DILexicalBlock(scope: !2124, file: !2, line: 997, column: 34)
!2129 = !DILocation(line: 998, column: 9, scope: !2128)
!2130 = !DILocation(line: 998, column: 30, scope: !2128)
!2131 = !DILocation(line: 999, column: 24, scope: !2128)
!2132 = !DILocation(line: 999, column: 5, scope: !2128)
!2133 = !DILocation(line: 1000, column: 3, scope: !2128)
!2134 = !DILocation(line: 1003, column: 7, scope: !2135)
!2135 = distinct !DILexicalBlock(scope: !2054, file: !2, line: 1003, column: 7)
!2136 = !DILocation(line: 1003, column: 11, scope: !2135)
!2137 = !{!901, !744, i64 0}
!2138 = !DILocation(line: 1003, column: 7, scope: !2054)
!2139 = !DILocation(line: 1004, column: 5, scope: !2135)
!2140 = !DILocation(line: 1005, column: 30, scope: !2054)
!2141 = !DILocation(line: 1005, column: 18, scope: !2054)
!2142 = !DILocation(line: 1005, column: 3, scope: !2054)
!2143 = !DILocation(line: 1005, column: 7, scope: !2054)
!2144 = !DILocation(line: 1005, column: 16, scope: !2054)
!2145 = !DILocation(line: 1007, column: 15, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !2054, file: !2, line: 1007, column: 3)
!2147 = !DILocation(line: 1007, column: 8, scope: !2146)
!2148 = !DILocation(line: 1007, column: 20, scope: !2149)
!2149 = distinct !DILexicalBlock(scope: !2146, file: !2, line: 1007, column: 3)
!2150 = !DILocation(line: 1007, column: 29, scope: !2149)
!2151 = !DILocation(line: 1007, column: 27, scope: !2149)
!2152 = !DILocation(line: 1007, column: 3, scope: !2146)
!2153 = !DILocation(line: 1008, column: 39, scope: !2154)
!2154 = distinct !DILexicalBlock(scope: !2149, file: !2, line: 1007, column: 45)
!2155 = !DILocation(line: 1008, column: 44, scope: !2154)
!2156 = !DILocation(line: 1008, column: 5, scope: !2154)
!2157 = !DILocation(line: 1009, column: 3, scope: !2154)
!2158 = !DILocation(line: 1007, column: 41, scope: !2149)
!2159 = !DILocation(line: 1007, column: 3, scope: !2149)
!2160 = distinct !{!2160, !2152, !2161, !1303}
!2161 = !DILocation(line: 1009, column: 3, scope: !2146)
!2162 = !DILocation(line: 1011, column: 15, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !2054, file: !2, line: 1011, column: 3)
!2164 = !DILocation(line: 1011, column: 8, scope: !2163)
!2165 = !DILocation(line: 1011, column: 20, scope: !2166)
!2166 = distinct !DILexicalBlock(scope: !2163, file: !2, line: 1011, column: 3)
!2167 = !DILocation(line: 1011, column: 29, scope: !2166)
!2168 = !DILocation(line: 1011, column: 27, scope: !2166)
!2169 = !DILocation(line: 1011, column: 3, scope: !2163)
!2170 = !DILocation(line: 1012, column: 11, scope: !2171)
!2171 = distinct !DILexicalBlock(scope: !2172, file: !2, line: 1012, column: 9)
!2172 = distinct !DILexicalBlock(scope: !2166, file: !2, line: 1011, column: 45)
!2173 = !DILocation(line: 1012, column: 16, scope: !2171)
!2174 = !DILocation(line: 1012, column: 24, scope: !2171)
!2175 = !DILocation(line: 1012, column: 27, scope: !2171)
!2176 = !DILocation(line: 1012, column: 32, scope: !2171)
!2177 = !DILocation(line: 1012, column: 43, scope: !2171)
!2178 = !DILocation(line: 1012, column: 50, scope: !2171)
!2179 = !DILocation(line: 1012, column: 60, scope: !2171)
!2180 = !DILocation(line: 1012, column: 65, scope: !2171)
!2181 = !DILocation(line: 1012, column: 53, scope: !2171)
!2182 = !DILocation(line: 1012, column: 74, scope: !2171)
!2183 = !DILocation(line: 1012, column: 79, scope: !2171)
!2184 = !DILocation(line: 1013, column: 17, scope: !2171)
!2185 = !DILocation(line: 1013, column: 22, scope: !2171)
!2186 = !DILocation(line: 1013, column: 10, scope: !2171)
!2187 = !DILocation(line: 1012, column: 9, scope: !2172)
!2188 = !DILocation(line: 1014, column: 7, scope: !2189)
!2189 = distinct !DILexicalBlock(scope: !2171, file: !2, line: 1013, column: 38)
!2190 = !DILocation(line: 1018, column: 19, scope: !2172)
!2191 = !DILocation(line: 1019, column: 12, scope: !2192)
!2192 = distinct !DILexicalBlock(scope: !2172, file: !2, line: 1019, column: 5)
!2193 = !DILocation(line: 1019, column: 10, scope: !2192)
!2194 = !DILocation(line: 1019, column: 17, scope: !2195)
!2195 = distinct !DILexicalBlock(scope: !2192, file: !2, line: 1019, column: 5)
!2196 = !DILocation(line: 1019, column: 35, scope: !2195)
!2197 = !DILocation(line: 1019, column: 39, scope: !2195)
!2198 = !DILocation(line: 1019, column: 21, scope: !2195)
!2199 = !DILocation(line: 1019, column: 19, scope: !2195)
!2200 = !DILocation(line: 1019, column: 5, scope: !2192)
!2201 = !DILocation(line: 1020, column: 43, scope: !2202)
!2202 = distinct !DILexicalBlock(scope: !2195, file: !2, line: 1019, column: 54)
!2203 = !DILocation(line: 1020, column: 47, scope: !2202)
!2204 = !DILocation(line: 1020, column: 56, scope: !2202)
!2205 = !DILocation(line: 1020, column: 30, scope: !2202)
!2206 = !DILocation(line: 1020, column: 16, scope: !2202)
!2207 = !DILocation(line: 1020, column: 14, scope: !2202)
!2208 = !DILocation(line: 1023, column: 22, scope: !2202)
!2209 = !DILocation(line: 1023, column: 27, scope: !2202)
!2210 = !DILocation(line: 1023, column: 38, scope: !2202)
!2211 = !DILocation(line: 1023, column: 20, scope: !2202)
!2212 = !DILocation(line: 1024, column: 19, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !2202, file: !2, line: 1024, column: 11)
!2214 = !DILocation(line: 1024, column: 24, scope: !2213)
!2215 = !DILocation(line: 1024, column: 32, scope: !2213)
!2216 = !DILocation(line: 1024, column: 38, scope: !2213)
!2217 = !DILocation(line: 1024, column: 36, scope: !2213)
!2218 = !DILocation(line: 1025, column: 30, scope: !2213)
!2219 = !DILocation(line: 1025, column: 38, scope: !2213)
!2220 = !DILocation(line: 1025, column: 19, scope: !2213)
!2221 = !DILocation(line: 1024, column: 12, scope: !2213)
!2222 = !DILocation(line: 1024, column: 11, scope: !2202)
!2223 = !DILocation(line: 1027, column: 13, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !2225, file: !2, line: 1027, column: 13)
!2225 = distinct !DILexicalBlock(scope: !2213, file: !2, line: 1025, column: 52)
!2226 = !DILocation(line: 1027, column: 21, scope: !2224)
!2227 = !{!759, !760, i64 72}
!2228 = !DILocation(line: 1027, column: 13, scope: !2225)
!2229 = !DILocation(line: 1028, column: 24, scope: !2230)
!2230 = distinct !DILexicalBlock(scope: !2224, file: !2, line: 1027, column: 29)
!2231 = !DILocation(line: 1029, column: 35, scope: !2230)
!2232 = !DILocation(line: 1029, column: 43, scope: !2230)
!2233 = !DILocation(line: 1029, column: 24, scope: !2230)
!2234 = !DILocation(line: 1028, column: 11, scope: !2230)
!2235 = !DILocation(line: 1030, column: 19, scope: !2230)
!2236 = !DILocation(line: 1031, column: 9, scope: !2230)
!2237 = !DILocation(line: 1033, column: 11, scope: !2224)
!2238 = !DILocation(line: 1033, column: 19, scope: !2224)
!2239 = !DILocation(line: 1033, column: 26, scope: !2224)
!2240 = !DILocation(line: 1034, column: 14, scope: !2241)
!2241 = distinct !DILexicalBlock(scope: !2225, file: !2, line: 1034, column: 13)
!2242 = !DILocation(line: 1034, column: 13, scope: !2225)
!2243 = !DILocation(line: 1035, column: 19, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !2241, file: !2, line: 1034, column: 23)
!2245 = !DILocation(line: 1035, column: 27, scope: !2244)
!2246 = !DILocation(line: 1035, column: 11, scope: !2244)
!2247 = !DILocation(line: 1037, column: 19, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !2249, file: !2, line: 1037, column: 19)
!2249 = distinct !DILexicalBlock(scope: !2244, file: !2, line: 1035, column: 40)
!2250 = !DILocation(line: 1037, column: 24, scope: !2248)
!2251 = !DILocation(line: 1037, column: 30, scope: !2248)
!2252 = !DILocation(line: 1037, column: 34, scope: !2248)
!2253 = !DILocation(line: 1037, column: 37, scope: !2248)
!2254 = !DILocation(line: 1037, column: 42, scope: !2248)
!2255 = !DILocation(line: 1037, column: 48, scope: !2248)
!2256 = !DILocation(line: 1037, column: 55, scope: !2248)
!2257 = !DILocation(line: 1037, column: 19, scope: !2249)
!2258 = !DILocation(line: 1038, column: 29, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !2260, file: !2, line: 1038, column: 21)
!2260 = distinct !DILexicalBlock(scope: !2248, file: !2, line: 1037, column: 63)
!2261 = !DILocation(line: 1038, column: 34, scope: !2259)
!2262 = !DILocation(line: 1038, column: 40, scope: !2259)
!2263 = !DILocation(line: 1038, column: 22, scope: !2259)
!2264 = !DILocation(line: 1038, column: 52, scope: !2259)
!2265 = !DILocation(line: 1039, column: 29, scope: !2259)
!2266 = !DILocation(line: 1039, column: 34, scope: !2259)
!2267 = !DILocation(line: 1039, column: 40, scope: !2259)
!2268 = !DILocation(line: 1039, column: 22, scope: !2259)
!2269 = !DILocation(line: 1038, column: 21, scope: !2260)
!2270 = !DILocation(line: 1040, column: 25, scope: !2271)
!2271 = distinct !DILexicalBlock(scope: !2259, file: !2, line: 1039, column: 54)
!2272 = !DILocation(line: 1041, column: 28, scope: !2271)
!2273 = !DILocation(line: 1041, column: 36, scope: !2271)
!2274 = !{!759, !744, i64 24}
!2275 = !DILocation(line: 1041, column: 42, scope: !2271)
!2276 = !DILocation(line: 1042, column: 33, scope: !2271)
!2277 = !DILocation(line: 1043, column: 19, scope: !2271)
!2278 = !DILocation(line: 1045, column: 34, scope: !2279)
!2279 = distinct !DILexicalBlock(scope: !2259, file: !2, line: 1045, column: 26)
!2280 = !DILocation(line: 1045, column: 39, scope: !2279)
!2281 = !DILocation(line: 1045, column: 45, scope: !2279)
!2282 = !DILocation(line: 1045, column: 27, scope: !2279)
!2283 = !DILocation(line: 1045, column: 56, scope: !2279)
!2284 = !DILocation(line: 1046, column: 34, scope: !2279)
!2285 = !DILocation(line: 1046, column: 39, scope: !2279)
!2286 = !DILocation(line: 1046, column: 45, scope: !2279)
!2287 = !DILocation(line: 1046, column: 27, scope: !2279)
!2288 = !DILocation(line: 1045, column: 26, scope: !2259)
!2289 = !DILocation(line: 1047, column: 25, scope: !2290)
!2290 = distinct !DILexicalBlock(scope: !2279, file: !2, line: 1046, column: 60)
!2291 = !DILocation(line: 1048, column: 28, scope: !2290)
!2292 = !DILocation(line: 1048, column: 36, scope: !2290)
!2293 = !DILocation(line: 1048, column: 42, scope: !2290)
!2294 = !DILocation(line: 1049, column: 33, scope: !2290)
!2295 = !DILocation(line: 1050, column: 19, scope: !2290)
!2296 = !DILocation(line: 1052, column: 15, scope: !2260)
!2297 = !DILocation(line: 1053, column: 24, scope: !2249)
!2298 = !DILocation(line: 1053, column: 32, scope: !2249)
!2299 = !DILocation(line: 1053, column: 38, scope: !2249)
!2300 = !DILocation(line: 1054, column: 29, scope: !2249)
!2301 = !DILocation(line: 1055, column: 15, scope: !2249)
!2302 = !DILocation(line: 1057, column: 32, scope: !2303)
!2303 = distinct !DILexicalBlock(scope: !2249, file: !2, line: 1057, column: 19)
!2304 = !DILocation(line: 1057, column: 40, scope: !2303)
!2305 = !DILocation(line: 1057, column: 48, scope: !2303)
!2306 = !DILocation(line: 1057, column: 54, scope: !2303)
!2307 = !DILocation(line: 1057, column: 19, scope: !2303)
!2308 = !DILocation(line: 1057, column: 19, scope: !2249)
!2309 = !DILocation(line: 1058, column: 31, scope: !2310)
!2310 = distinct !DILexicalBlock(scope: !2303, file: !2, line: 1057, column: 61)
!2311 = !DILocation(line: 1059, column: 17, scope: !2310)
!2312 = !DILocation(line: 1061, column: 15, scope: !2249)
!2313 = !DILocation(line: 1061, column: 15, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !2315, file: !2, line: 1061, column: 15)
!2315 = distinct !DILexicalBlock(scope: !2249, file: !2, line: 1061, column: 15)
!2316 = !{!759, !744, i64 48}
!2317 = !DILocation(line: 1061, column: 15, scope: !2315)
!2318 = !DILocation(line: 1061, column: 15, scope: !2319)
!2319 = distinct !DILexicalBlock(scope: !2314, file: !2, line: 1061, column: 15)
!2320 = !DILocation(line: 1062, column: 63, scope: !2249)
!2321 = !DILocation(line: 1062, column: 71, scope: !2249)
!2322 = !DILocation(line: 1063, column: 63, scope: !2249)
!2323 = !DILocation(line: 1064, column: 65, scope: !2249)
!2324 = !DILocation(line: 1065, column: 63, scope: !2249)
!2325 = !DILocation(line: 1065, column: 69, scope: !2249)
!2326 = !DILocation(line: 1062, column: 25, scope: !2249)
!2327 = !DILocation(line: 1062, column: 23, scope: !2249)
!2328 = !DILocation(line: 1066, column: 20, scope: !2329)
!2329 = distinct !DILexicalBlock(scope: !2249, file: !2, line: 1066, column: 19)
!2330 = !DILocation(line: 1066, column: 19, scope: !2249)
!2331 = !DILocation(line: 1067, column: 23, scope: !2332)
!2332 = distinct !DILexicalBlock(scope: !2329, file: !2, line: 1066, column: 29)
!2333 = !DILocation(line: 1068, column: 28, scope: !2334)
!2334 = distinct !DILexicalBlock(scope: !2332, file: !2, line: 1068, column: 21)
!2335 = !DILocation(line: 1068, column: 33, scope: !2334)
!2336 = !DILocation(line: 1068, column: 42, scope: !2334)
!2337 = !DILocation(line: 1068, column: 50, scope: !2334)
!2338 = !DILocation(line: 1068, column: 21, scope: !2334)
!2339 = !DILocation(line: 1068, column: 21, scope: !2332)
!2340 = !DILocation(line: 1069, column: 50, scope: !2341)
!2341 = distinct !DILexicalBlock(scope: !2334, file: !2, line: 1068, column: 62)
!2342 = !DILocation(line: 1069, column: 58, scope: !2341)
!2343 = !DILocation(line: 1069, column: 34, scope: !2341)
!2344 = !DILocation(line: 1069, column: 32, scope: !2341)
!2345 = !DILocation(line: 1070, column: 21, scope: !2341)
!2346 = !DILocation(line: 1071, column: 19, scope: !2341)
!2347 = !DILocation(line: 1071, column: 26, scope: !2341)
!2348 = !DILocation(line: 1071, column: 34, scope: !2341)
!2349 = !DILocation(line: 1071, column: 41, scope: !2341)
!2350 = !DILocation(line: 1071, column: 44, scope: !2341)
!2351 = !DILocation(line: 1072, column: 33, scope: !2352)
!2352 = distinct !DILexicalBlock(scope: !2353, file: !2, line: 1072, column: 25)
!2353 = distinct !DILexicalBlock(scope: !2341, file: !2, line: 1071, column: 53)
!2354 = !DILocation(line: 1072, column: 38, scope: !2352)
!2355 = !DILocation(line: 1072, column: 47, scope: !2352)
!2356 = !DILocation(line: 1072, column: 55, scope: !2352)
!2357 = !DILocation(line: 1072, column: 62, scope: !2352)
!2358 = !DILocation(line: 1072, column: 26, scope: !2352)
!2359 = !DILocation(line: 1072, column: 25, scope: !2353)
!2360 = !DILocation(line: 1073, column: 34, scope: !2361)
!2361 = distinct !DILexicalBlock(scope: !2352, file: !2, line: 1072, column: 67)
!2362 = !DILocation(line: 1073, column: 42, scope: !2361)
!2363 = !DILocation(line: 1073, column: 49, scope: !2361)
!2364 = !DILocation(line: 1073, column: 57, scope: !2361)
!2365 = !DILocation(line: 1073, column: 64, scope: !2361)
!2366 = !DILocation(line: 1073, column: 23, scope: !2361)
!2367 = !DILocation(line: 1074, column: 23, scope: !2361)
!2368 = !DILocation(line: 1076, column: 40, scope: !2353)
!2369 = !DILocation(line: 1076, column: 21, scope: !2353)
!2370 = !DILocation(line: 1077, column: 40, scope: !2353)
!2371 = !DILocation(line: 1077, column: 54, scope: !2353)
!2372 = !DILocation(line: 1077, column: 62, scope: !2353)
!2373 = !DILocation(line: 1077, column: 69, scope: !2353)
!2374 = !DILocation(line: 1077, column: 21, scope: !2353)
!2375 = !DILocation(line: 1078, column: 22, scope: !2353)
!2376 = distinct !{!2376, !2346, !2377, !1303}
!2377 = !DILocation(line: 1079, column: 19, scope: !2341)
!2378 = !DILocation(line: 1080, column: 23, scope: !2379)
!2379 = distinct !DILexicalBlock(scope: !2341, file: !2, line: 1080, column: 23)
!2380 = !DILocation(line: 1080, column: 31, scope: !2379)
!2381 = !DILocation(line: 1080, column: 38, scope: !2379)
!2382 = !DILocation(line: 1080, column: 41, scope: !2379)
!2383 = !DILocation(line: 1080, column: 23, scope: !2341)
!2384 = !DILocation(line: 1081, column: 34, scope: !2385)
!2385 = distinct !DILexicalBlock(scope: !2379, file: !2, line: 1080, column: 50)
!2386 = !DILocation(line: 1082, column: 60, scope: !2385)
!2387 = !DILocation(line: 1082, column: 68, scope: !2385)
!2388 = !DILocation(line: 1082, column: 49, scope: !2385)
!2389 = !DILocation(line: 1083, column: 45, scope: !2385)
!2390 = !DILocation(line: 1083, column: 34, scope: !2385)
!2391 = !DILocation(line: 1081, column: 21, scope: !2385)
!2392 = !DILocation(line: 1084, column: 29, scope: !2385)
!2393 = !DILocation(line: 1085, column: 19, scope: !2385)
!2394 = !DILocation(line: 1086, column: 33, scope: !2341)
!2395 = !DILocation(line: 1086, column: 19, scope: !2341)
!2396 = !DILocation(line: 1087, column: 17, scope: !2341)
!2397 = !DILocation(line: 1089, column: 30, scope: !2398)
!2398 = distinct !DILexicalBlock(scope: !2334, file: !2, line: 1088, column: 22)
!2399 = !DILocation(line: 1089, column: 38, scope: !2398)
!2400 = !DILocation(line: 1089, column: 45, scope: !2398)
!2401 = !DILocation(line: 1089, column: 53, scope: !2398)
!2402 = !DILocation(line: 1089, column: 19, scope: !2398)
!2403 = !DILocation(line: 1091, column: 15, scope: !2332)
!2404 = !DILocation(line: 1092, column: 20, scope: !2405)
!2405 = distinct !DILexicalBlock(scope: !2249, file: !2, line: 1092, column: 19)
!2406 = !DILocation(line: 1092, column: 19, scope: !2249)
!2407 = !DILocation(line: 1093, column: 31, scope: !2408)
!2408 = distinct !DILexicalBlock(scope: !2405, file: !2, line: 1092, column: 29)
!2409 = !DILocation(line: 1094, column: 15, scope: !2408)
!2410 = !DILocation(line: 1095, column: 15, scope: !2249)
!2411 = !DILocation(line: 1097, column: 32, scope: !2412)
!2412 = distinct !DILexicalBlock(scope: !2249, file: !2, line: 1097, column: 19)
!2413 = !DILocation(line: 1097, column: 40, scope: !2412)
!2414 = !DILocation(line: 1097, column: 48, scope: !2412)
!2415 = !DILocation(line: 1097, column: 54, scope: !2412)
!2416 = !DILocation(line: 1097, column: 19, scope: !2412)
!2417 = !DILocation(line: 1097, column: 19, scope: !2249)
!2418 = !DILocation(line: 1098, column: 31, scope: !2419)
!2419 = distinct !DILexicalBlock(scope: !2412, file: !2, line: 1097, column: 61)
!2420 = !DILocation(line: 1099, column: 17, scope: !2419)
!2421 = !DILocation(line: 1101, column: 48, scope: !2249)
!2422 = !DILocation(line: 1101, column: 56, scope: !2249)
!2423 = !DILocation(line: 1101, column: 62, scope: !2249)
!2424 = !DILocation(line: 1101, column: 70, scope: !2249)
!2425 = !DILocation(line: 1102, column: 48, scope: !2249)
!2426 = !DILocation(line: 1101, column: 25, scope: !2249)
!2427 = !DILocation(line: 1101, column: 23, scope: !2249)
!2428 = !DILocation(line: 1103, column: 20, scope: !2429)
!2429 = distinct !DILexicalBlock(scope: !2249, file: !2, line: 1103, column: 19)
!2430 = !DILocation(line: 1103, column: 19, scope: !2249)
!2431 = !DILocation(line: 1104, column: 23, scope: !2432)
!2432 = distinct !DILexicalBlock(scope: !2429, file: !2, line: 1103, column: 29)
!2433 = !DILocation(line: 1105, column: 52, scope: !2434)
!2434 = distinct !DILexicalBlock(scope: !2432, file: !2, line: 1105, column: 21)
!2435 = !DILocation(line: 1105, column: 57, scope: !2434)
!2436 = !DILocation(line: 1105, column: 21, scope: !2434)
!2437 = !DILocation(line: 1105, column: 21, scope: !2432)
!2438 = !DILocation(line: 1106, column: 32, scope: !2439)
!2439 = distinct !DILexicalBlock(scope: !2434, file: !2, line: 1105, column: 67)
!2440 = !DILocation(line: 1108, column: 40, scope: !2439)
!2441 = !DILocation(line: 1108, column: 48, scope: !2439)
!2442 = !DILocation(line: 1108, column: 29, scope: !2439)
!2443 = !DILocation(line: 1106, column: 19, scope: !2439)
!2444 = !DILocation(line: 1109, column: 27, scope: !2439)
!2445 = !DILocation(line: 1110, column: 17, scope: !2439)
!2446 = !DILocation(line: 1111, column: 15, scope: !2432)
!2447 = !DILocation(line: 1112, column: 20, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !2249, file: !2, line: 1112, column: 19)
!2449 = !DILocation(line: 1112, column: 19, scope: !2249)
!2450 = !DILocation(line: 1114, column: 21, scope: !2451)
!2451 = distinct !DILexicalBlock(scope: !2452, file: !2, line: 1114, column: 21)
!2452 = distinct !DILexicalBlock(scope: !2448, file: !2, line: 1112, column: 29)
!2453 = !DILocation(line: 1114, column: 29, scope: !2451)
!2454 = !{!759, !760, i64 75}
!2455 = !DILocation(line: 1114, column: 43, scope: !2451)
!2456 = !DILocation(line: 1115, column: 21, scope: !2451)
!2457 = !{!2458, !2458, i64 0}
!2458 = !{!"double", !745, i64 0}
!2459 = !DILocation(line: 1115, column: 36, scope: !2451)
!2460 = !DILocation(line: 1115, column: 44, scope: !2451)
!2461 = !DILocation(line: 1115, column: 54, scope: !2451)
!2462 = !DILocation(line: 1115, column: 34, scope: !2451)
!2463 = !DILocation(line: 1114, column: 21, scope: !2452)
!2464 = !DILocation(line: 1116, column: 32, scope: !2465)
!2465 = distinct !DILexicalBlock(scope: !2451, file: !2, line: 1115, column: 57)
!2466 = !DILocation(line: 1118, column: 43, scope: !2465)
!2467 = !DILocation(line: 1118, column: 51, scope: !2465)
!2468 = !DILocation(line: 1118, column: 32, scope: !2465)
!2469 = !DILocation(line: 1119, column: 32, scope: !2465)
!2470 = !DILocation(line: 1119, column: 40, scope: !2465)
!2471 = !DILocation(line: 1119, column: 50, scope: !2465)
!2472 = !DILocation(line: 1116, column: 19, scope: !2465)
!2473 = !DILocation(line: 1120, column: 27, scope: !2465)
!2474 = !DILocation(line: 1121, column: 17, scope: !2465)
!2475 = !DILocation(line: 1122, column: 15, scope: !2452)
!2476 = !DILocation(line: 1123, column: 20, scope: !2477)
!2477 = distinct !DILexicalBlock(scope: !2249, file: !2, line: 1123, column: 19)
!2478 = !DILocation(line: 1123, column: 19, scope: !2249)
!2479 = !DILocation(line: 1125, column: 21, scope: !2480)
!2480 = distinct !DILexicalBlock(scope: !2481, file: !2, line: 1125, column: 21)
!2481 = distinct !DILexicalBlock(scope: !2477, file: !2, line: 1123, column: 29)
!2482 = !DILocation(line: 1125, column: 29, scope: !2480)
!2483 = !{!759, !760, i64 76}
!2484 = !DILocation(line: 1125, column: 43, scope: !2480)
!2485 = !DILocation(line: 1126, column: 21, scope: !2480)
!2486 = !DILocation(line: 1126, column: 36, scope: !2480)
!2487 = !DILocation(line: 1126, column: 44, scope: !2480)
!2488 = !DILocation(line: 1126, column: 54, scope: !2480)
!2489 = !DILocation(line: 1126, column: 34, scope: !2480)
!2490 = !DILocation(line: 1125, column: 21, scope: !2481)
!2491 = !DILocation(line: 1127, column: 32, scope: !2492)
!2492 = distinct !DILexicalBlock(scope: !2480, file: !2, line: 1126, column: 57)
!2493 = !DILocation(line: 1129, column: 43, scope: !2492)
!2494 = !DILocation(line: 1129, column: 51, scope: !2492)
!2495 = !DILocation(line: 1129, column: 32, scope: !2492)
!2496 = !DILocation(line: 1130, column: 32, scope: !2492)
!2497 = !DILocation(line: 1130, column: 40, scope: !2492)
!2498 = !DILocation(line: 1130, column: 50, scope: !2492)
!2499 = !DILocation(line: 1127, column: 19, scope: !2492)
!2500 = !DILocation(line: 1131, column: 27, scope: !2492)
!2501 = !DILocation(line: 1132, column: 17, scope: !2492)
!2502 = !DILocation(line: 1133, column: 15, scope: !2481)
!2503 = !DILocation(line: 1134, column: 20, scope: !2504)
!2504 = distinct !DILexicalBlock(scope: !2249, file: !2, line: 1134, column: 19)
!2505 = !DILocation(line: 1134, column: 19, scope: !2249)
!2506 = !DILocation(line: 1135, column: 44, scope: !2507)
!2507 = distinct !DILexicalBlock(scope: !2504, file: !2, line: 1134, column: 29)
!2508 = !DILocation(line: 1135, column: 28, scope: !2507)
!2509 = !DILocation(line: 1135, column: 36, scope: !2507)
!2510 = !DILocation(line: 1135, column: 42, scope: !2507)
!2511 = !DILocation(line: 1136, column: 31, scope: !2507)
!2512 = !DILocation(line: 1137, column: 15, scope: !2507)
!2513 = !DILocation(line: 1138, column: 15, scope: !2249)
!2514 = !DILocation(line: 1140, column: 29, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !2249, file: !2, line: 1140, column: 19)
!2516 = !DILocation(line: 1140, column: 46, scope: !2515)
!2517 = !DILocation(line: 1140, column: 19, scope: !2515)
!2518 = !DILocation(line: 1140, column: 19, scope: !2249)
!2519 = !DILocation(line: 1141, column: 17, scope: !2515)
!2520 = !DILocation(line: 1142, column: 15, scope: !2249)
!2521 = !DILocation(line: 1144, column: 29, scope: !2522)
!2522 = distinct !DILexicalBlock(scope: !2249, file: !2, line: 1144, column: 19)
!2523 = !DILocation(line: 1144, column: 50, scope: !2522)
!2524 = !DILocation(line: 1144, column: 19, scope: !2522)
!2525 = !DILocation(line: 1144, column: 19, scope: !2249)
!2526 = !DILocation(line: 1145, column: 17, scope: !2522)
!2527 = !DILocation(line: 1146, column: 15, scope: !2249)
!2528 = !DILocation(line: 1148, column: 29, scope: !2529)
!2529 = distinct !DILexicalBlock(scope: !2249, file: !2, line: 1148, column: 19)
!2530 = !DILocation(line: 1148, column: 49, scope: !2529)
!2531 = !DILocation(line: 1148, column: 19, scope: !2529)
!2532 = !DILocation(line: 1148, column: 19, scope: !2249)
!2533 = !DILocation(line: 1149, column: 17, scope: !2529)
!2534 = !DILocation(line: 1150, column: 15, scope: !2249)
!2535 = !DILocation(line: 1152, column: 15, scope: !2249)
!2536 = !DILocation(line: 1152, column: 15, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !2538, file: !2, line: 1152, column: 15)
!2538 = distinct !DILexicalBlock(scope: !2249, file: !2, line: 1152, column: 15)
!2539 = !{!759, !760, i64 79}
!2540 = !DILocation(line: 1152, column: 15, scope: !2538)
!2541 = !DILocation(line: 1152, column: 15, scope: !2542)
!2542 = distinct !DILexicalBlock(scope: !2537, file: !2, line: 1152, column: 15)
!2543 = !DILocation(line: 1153, column: 48, scope: !2249)
!2544 = !DILocation(line: 1153, column: 56, scope: !2249)
!2545 = !DILocation(line: 1153, column: 62, scope: !2249)
!2546 = !DILocation(line: 1153, column: 70, scope: !2249)
!2547 = !DILocation(line: 1154, column: 48, scope: !2249)
!2548 = !DILocation(line: 1153, column: 25, scope: !2249)
!2549 = !DILocation(line: 1153, column: 23, scope: !2249)
!2550 = !DILocation(line: 1155, column: 20, scope: !2551)
!2551 = distinct !DILexicalBlock(scope: !2249, file: !2, line: 1155, column: 19)
!2552 = !DILocation(line: 1155, column: 19, scope: !2249)
!2553 = !DILocation(line: 1156, column: 23, scope: !2554)
!2554 = distinct !DILexicalBlock(scope: !2551, file: !2, line: 1155, column: 29)
!2555 = !DILocation(line: 1157, column: 46, scope: !2556)
!2556 = distinct !DILexicalBlock(scope: !2554, file: !2, line: 1157, column: 21)
!2557 = !DILocation(line: 1157, column: 51, scope: !2556)
!2558 = !DILocation(line: 1157, column: 21, scope: !2556)
!2559 = !DILocation(line: 1157, column: 21, scope: !2554)
!2560 = !DILocation(line: 1158, column: 32, scope: !2561)
!2561 = distinct !DILexicalBlock(scope: !2556, file: !2, line: 1157, column: 61)
!2562 = !DILocation(line: 1159, column: 59, scope: !2561)
!2563 = !DILocation(line: 1159, column: 67, scope: !2561)
!2564 = !DILocation(line: 1159, column: 48, scope: !2561)
!2565 = !DILocation(line: 1158, column: 19, scope: !2561)
!2566 = !DILocation(line: 1160, column: 27, scope: !2561)
!2567 = !DILocation(line: 1161, column: 17, scope: !2561)
!2568 = !DILocation(line: 1162, column: 15, scope: !2554)
!2569 = !DILocation(line: 1163, column: 20, scope: !2570)
!2570 = distinct !DILexicalBlock(scope: !2249, file: !2, line: 1163, column: 19)
!2571 = !DILocation(line: 1163, column: 19, scope: !2249)
!2572 = !DILocation(line: 1165, column: 21, scope: !2573)
!2573 = distinct !DILexicalBlock(scope: !2574, file: !2, line: 1165, column: 21)
!2574 = distinct !DILexicalBlock(scope: !2570, file: !2, line: 1163, column: 29)
!2575 = !DILocation(line: 1165, column: 29, scope: !2573)
!2576 = !DILocation(line: 1165, column: 43, scope: !2573)
!2577 = !DILocation(line: 1165, column: 46, scope: !2573)
!2578 = !DILocation(line: 1165, column: 58, scope: !2573)
!2579 = !DILocation(line: 1165, column: 66, scope: !2573)
!2580 = !DILocation(line: 1165, column: 76, scope: !2573)
!2581 = !DILocation(line: 1165, column: 56, scope: !2573)
!2582 = !DILocation(line: 1165, column: 21, scope: !2574)
!2583 = !DILocation(line: 1166, column: 32, scope: !2584)
!2584 = distinct !DILexicalBlock(scope: !2573, file: !2, line: 1165, column: 79)
!2585 = !DILocation(line: 1167, column: 60, scope: !2584)
!2586 = !DILocation(line: 1167, column: 68, scope: !2584)
!2587 = !DILocation(line: 1167, column: 49, scope: !2584)
!2588 = !DILocation(line: 1168, column: 32, scope: !2584)
!2589 = !DILocation(line: 1168, column: 40, scope: !2584)
!2590 = !DILocation(line: 1168, column: 50, scope: !2584)
!2591 = !DILocation(line: 1166, column: 19, scope: !2584)
!2592 = !DILocation(line: 1169, column: 27, scope: !2584)
!2593 = !DILocation(line: 1170, column: 17, scope: !2584)
!2594 = !DILocation(line: 1171, column: 15, scope: !2574)
!2595 = !DILocation(line: 1172, column: 20, scope: !2596)
!2596 = distinct !DILexicalBlock(scope: !2249, file: !2, line: 1172, column: 19)
!2597 = !DILocation(line: 1172, column: 19, scope: !2249)
!2598 = !DILocation(line: 1174, column: 21, scope: !2599)
!2599 = distinct !DILexicalBlock(scope: !2600, file: !2, line: 1174, column: 21)
!2600 = distinct !DILexicalBlock(scope: !2596, file: !2, line: 1172, column: 29)
!2601 = !DILocation(line: 1174, column: 29, scope: !2599)
!2602 = !DILocation(line: 1174, column: 43, scope: !2599)
!2603 = !DILocation(line: 1174, column: 46, scope: !2599)
!2604 = !DILocation(line: 1174, column: 58, scope: !2599)
!2605 = !DILocation(line: 1174, column: 66, scope: !2599)
!2606 = !DILocation(line: 1174, column: 76, scope: !2599)
!2607 = !DILocation(line: 1174, column: 56, scope: !2599)
!2608 = !DILocation(line: 1174, column: 21, scope: !2600)
!2609 = !DILocation(line: 1175, column: 32, scope: !2610)
!2610 = distinct !DILexicalBlock(scope: !2599, file: !2, line: 1174, column: 79)
!2611 = !DILocation(line: 1176, column: 60, scope: !2610)
!2612 = !DILocation(line: 1176, column: 68, scope: !2610)
!2613 = !DILocation(line: 1176, column: 49, scope: !2610)
!2614 = !DILocation(line: 1177, column: 32, scope: !2610)
!2615 = !DILocation(line: 1177, column: 40, scope: !2610)
!2616 = !DILocation(line: 1177, column: 50, scope: !2610)
!2617 = !DILocation(line: 1175, column: 19, scope: !2610)
!2618 = !DILocation(line: 1178, column: 27, scope: !2610)
!2619 = !DILocation(line: 1179, column: 17, scope: !2610)
!2620 = !DILocation(line: 1180, column: 15, scope: !2600)
!2621 = !DILocation(line: 1181, column: 20, scope: !2622)
!2622 = distinct !DILexicalBlock(scope: !2249, file: !2, line: 1181, column: 19)
!2623 = !DILocation(line: 1181, column: 19, scope: !2249)
!2624 = !DILocation(line: 1182, column: 41, scope: !2625)
!2625 = distinct !DILexicalBlock(scope: !2622, file: !2, line: 1181, column: 29)
!2626 = !DILocation(line: 1182, column: 25, scope: !2625)
!2627 = !DILocation(line: 1182, column: 33, scope: !2625)
!2628 = !DILocation(line: 1182, column: 39, scope: !2625)
!2629 = !DILocation(line: 1183, column: 31, scope: !2625)
!2630 = !DILocation(line: 1184, column: 15, scope: !2625)
!2631 = !DILocation(line: 1185, column: 15, scope: !2249)
!2632 = !DILocation(line: 1187, column: 32, scope: !2633)
!2633 = distinct !DILexicalBlock(scope: !2249, file: !2, line: 1187, column: 19)
!2634 = !DILocation(line: 1187, column: 40, scope: !2633)
!2635 = !DILocation(line: 1187, column: 48, scope: !2633)
!2636 = !DILocation(line: 1187, column: 54, scope: !2633)
!2637 = !DILocation(line: 1187, column: 19, scope: !2633)
!2638 = !DILocation(line: 1187, column: 19, scope: !2249)
!2639 = !DILocation(line: 1188, column: 31, scope: !2640)
!2640 = distinct !DILexicalBlock(scope: !2633, file: !2, line: 1187, column: 61)
!2641 = !DILocation(line: 1189, column: 17, scope: !2640)
!2642 = !DILocation(line: 1191, column: 63, scope: !2249)
!2643 = !DILocation(line: 1191, column: 71, scope: !2249)
!2644 = !DILocation(line: 1192, column: 62, scope: !2249)
!2645 = !DILocation(line: 1192, column: 70, scope: !2249)
!2646 = !DILocation(line: 1193, column: 62, scope: !2249)
!2647 = !DILocation(line: 1193, column: 68, scope: !2249)
!2648 = !DILocation(line: 1191, column: 25, scope: !2249)
!2649 = !DILocation(line: 1191, column: 23, scope: !2249)
!2650 = !DILocation(line: 1194, column: 20, scope: !2651)
!2651 = distinct !DILexicalBlock(scope: !2249, file: !2, line: 1194, column: 19)
!2652 = !DILocation(line: 1194, column: 19, scope: !2249)
!2653 = !DILocation(line: 1195, column: 23, scope: !2654)
!2654 = distinct !DILexicalBlock(scope: !2651, file: !2, line: 1194, column: 29)
!2655 = !DILocation(line: 1196, column: 48, scope: !2656)
!2656 = distinct !DILexicalBlock(scope: !2654, file: !2, line: 1196, column: 21)
!2657 = !DILocation(line: 1196, column: 53, scope: !2656)
!2658 = !DILocation(line: 1196, column: 21, scope: !2656)
!2659 = !DILocation(line: 1196, column: 21, scope: !2654)
!2660 = !DILocation(line: 1197, column: 32, scope: !2661)
!2661 = distinct !DILexicalBlock(scope: !2656, file: !2, line: 1196, column: 63)
!2662 = !DILocation(line: 1199, column: 43, scope: !2661)
!2663 = !DILocation(line: 1199, column: 51, scope: !2661)
!2664 = !DILocation(line: 1199, column: 32, scope: !2661)
!2665 = !DILocation(line: 1197, column: 19, scope: !2661)
!2666 = !DILocation(line: 1200, column: 27, scope: !2661)
!2667 = !DILocation(line: 1201, column: 17, scope: !2661)
!2668 = !DILocation(line: 1202, column: 15, scope: !2654)
!2669 = !DILocation(line: 1203, column: 20, scope: !2670)
!2670 = distinct !DILexicalBlock(scope: !2249, file: !2, line: 1203, column: 19)
!2671 = !DILocation(line: 1203, column: 19, scope: !2249)
!2672 = !DILocation(line: 1205, column: 21, scope: !2673)
!2673 = distinct !DILexicalBlock(scope: !2674, file: !2, line: 1205, column: 21)
!2674 = distinct !DILexicalBlock(scope: !2670, file: !2, line: 1203, column: 29)
!2675 = !DILocation(line: 1205, column: 29, scope: !2673)
!2676 = !DILocation(line: 1206, column: 21, scope: !2673)
!2677 = !DILocation(line: 1206, column: 24, scope: !2673)
!2678 = !DILocation(line: 1206, column: 37, scope: !2673)
!2679 = !DILocation(line: 1206, column: 45, scope: !2673)
!2680 = !DILocation(line: 1206, column: 55, scope: !2673)
!2681 = !DILocation(line: 1206, column: 35, scope: !2673)
!2682 = !DILocation(line: 1205, column: 21, scope: !2674)
!2683 = !DILocation(line: 1207, column: 32, scope: !2684)
!2684 = distinct !DILexicalBlock(scope: !2673, file: !2, line: 1206, column: 59)
!2685 = !DILocation(line: 1208, column: 60, scope: !2684)
!2686 = !DILocation(line: 1208, column: 68, scope: !2684)
!2687 = !DILocation(line: 1208, column: 49, scope: !2684)
!2688 = !DILocation(line: 1209, column: 32, scope: !2684)
!2689 = !DILocation(line: 1209, column: 40, scope: !2684)
!2690 = !DILocation(line: 1209, column: 50, scope: !2684)
!2691 = !DILocation(line: 1207, column: 19, scope: !2684)
!2692 = !DILocation(line: 1210, column: 27, scope: !2684)
!2693 = !DILocation(line: 1211, column: 17, scope: !2684)
!2694 = !DILocation(line: 1212, column: 15, scope: !2674)
!2695 = !DILocation(line: 1213, column: 20, scope: !2696)
!2696 = distinct !DILexicalBlock(scope: !2249, file: !2, line: 1213, column: 19)
!2697 = !DILocation(line: 1213, column: 19, scope: !2249)
!2698 = !DILocation(line: 1215, column: 21, scope: !2699)
!2699 = distinct !DILexicalBlock(scope: !2700, file: !2, line: 1215, column: 21)
!2700 = distinct !DILexicalBlock(scope: !2696, file: !2, line: 1213, column: 29)
!2701 = !DILocation(line: 1215, column: 29, scope: !2699)
!2702 = !DILocation(line: 1216, column: 21, scope: !2699)
!2703 = !DILocation(line: 1216, column: 24, scope: !2699)
!2704 = !DILocation(line: 1216, column: 37, scope: !2699)
!2705 = !DILocation(line: 1216, column: 45, scope: !2699)
!2706 = !DILocation(line: 1216, column: 55, scope: !2699)
!2707 = !DILocation(line: 1216, column: 35, scope: !2699)
!2708 = !DILocation(line: 1215, column: 21, scope: !2700)
!2709 = !DILocation(line: 1217, column: 32, scope: !2710)
!2710 = distinct !DILexicalBlock(scope: !2699, file: !2, line: 1216, column: 59)
!2711 = !DILocation(line: 1218, column: 60, scope: !2710)
!2712 = !DILocation(line: 1218, column: 68, scope: !2710)
!2713 = !DILocation(line: 1218, column: 49, scope: !2710)
!2714 = !DILocation(line: 1219, column: 32, scope: !2710)
!2715 = !DILocation(line: 1219, column: 40, scope: !2710)
!2716 = !DILocation(line: 1219, column: 50, scope: !2710)
!2717 = !DILocation(line: 1217, column: 19, scope: !2710)
!2718 = !DILocation(line: 1220, column: 27, scope: !2710)
!2719 = !DILocation(line: 1221, column: 17, scope: !2710)
!2720 = !DILocation(line: 1222, column: 15, scope: !2700)
!2721 = !DILocation(line: 1223, column: 20, scope: !2722)
!2722 = distinct !DILexicalBlock(scope: !2249, file: !2, line: 1223, column: 19)
!2723 = !DILocation(line: 1223, column: 19, scope: !2249)
!2724 = !DILocation(line: 1224, column: 50, scope: !2725)
!2725 = distinct !DILexicalBlock(scope: !2722, file: !2, line: 1223, column: 29)
!2726 = !DILocation(line: 1224, column: 34, scope: !2725)
!2727 = !DILocation(line: 1224, column: 42, scope: !2725)
!2728 = !DILocation(line: 1224, column: 48, scope: !2725)
!2729 = !DILocation(line: 1225, column: 31, scope: !2725)
!2730 = !DILocation(line: 1226, column: 15, scope: !2725)
!2731 = !DILocation(line: 1227, column: 15, scope: !2249)
!2732 = !DILocation(line: 1229, column: 15, scope: !2249)
!2733 = !DILocation(line: 1229, column: 15, scope: !2734)
!2734 = distinct !DILexicalBlock(scope: !2735, file: !2, line: 1229, column: 15)
!2735 = distinct !DILexicalBlock(scope: !2249, file: !2, line: 1229, column: 15)
!2736 = !DILocation(line: 1229, column: 15, scope: !2735)
!2737 = !DILocation(line: 1229, column: 15, scope: !2738)
!2738 = distinct !DILexicalBlock(scope: !2734, file: !2, line: 1229, column: 15)
!2739 = !DILocation(line: 1230, column: 48, scope: !2249)
!2740 = !DILocation(line: 1230, column: 56, scope: !2249)
!2741 = !DILocation(line: 1230, column: 62, scope: !2249)
!2742 = !DILocation(line: 1230, column: 70, scope: !2249)
!2743 = !DILocation(line: 1231, column: 48, scope: !2249)
!2744 = !DILocation(line: 1230, column: 25, scope: !2249)
!2745 = !DILocation(line: 1230, column: 23, scope: !2249)
!2746 = !DILocation(line: 1232, column: 20, scope: !2747)
!2747 = distinct !DILexicalBlock(scope: !2249, file: !2, line: 1232, column: 19)
!2748 = !DILocation(line: 1232, column: 19, scope: !2249)
!2749 = !DILocation(line: 1233, column: 23, scope: !2750)
!2750 = distinct !DILexicalBlock(scope: !2747, file: !2, line: 1232, column: 29)
!2751 = !DILocation(line: 1234, column: 48, scope: !2752)
!2752 = distinct !DILexicalBlock(scope: !2750, file: !2, line: 1234, column: 21)
!2753 = !DILocation(line: 1234, column: 53, scope: !2752)
!2754 = !DILocation(line: 1234, column: 21, scope: !2752)
!2755 = !DILocation(line: 1234, column: 21, scope: !2750)
!2756 = !DILocation(line: 1235, column: 32, scope: !2757)
!2757 = distinct !DILexicalBlock(scope: !2752, file: !2, line: 1234, column: 63)
!2758 = !DILocation(line: 1236, column: 59, scope: !2757)
!2759 = !DILocation(line: 1236, column: 67, scope: !2757)
!2760 = !DILocation(line: 1236, column: 48, scope: !2757)
!2761 = !DILocation(line: 1235, column: 19, scope: !2757)
!2762 = !DILocation(line: 1237, column: 27, scope: !2757)
!2763 = !DILocation(line: 1238, column: 17, scope: !2757)
!2764 = !DILocation(line: 1239, column: 15, scope: !2750)
!2765 = !DILocation(line: 1240, column: 20, scope: !2766)
!2766 = distinct !DILexicalBlock(scope: !2249, file: !2, line: 1240, column: 19)
!2767 = !DILocation(line: 1240, column: 19, scope: !2249)
!2768 = !DILocation(line: 1241, column: 44, scope: !2769)
!2769 = distinct !DILexicalBlock(scope: !2766, file: !2, line: 1240, column: 29)
!2770 = !DILocation(line: 1241, column: 28, scope: !2769)
!2771 = !DILocation(line: 1241, column: 36, scope: !2769)
!2772 = !DILocation(line: 1241, column: 42, scope: !2769)
!2773 = !DILocation(line: 1242, column: 31, scope: !2769)
!2774 = !DILocation(line: 1243, column: 15, scope: !2769)
!2775 = !DILocation(line: 1244, column: 15, scope: !2249)
!2776 = !DILocation(line: 1246, column: 32, scope: !2777)
!2777 = distinct !DILexicalBlock(scope: !2249, file: !2, line: 1246, column: 19)
!2778 = !DILocation(line: 1246, column: 40, scope: !2777)
!2779 = !DILocation(line: 1246, column: 48, scope: !2777)
!2780 = !DILocation(line: 1246, column: 54, scope: !2777)
!2781 = !DILocation(line: 1246, column: 19, scope: !2777)
!2782 = !DILocation(line: 1246, column: 19, scope: !2249)
!2783 = !DILocation(line: 1247, column: 31, scope: !2784)
!2784 = distinct !DILexicalBlock(scope: !2777, file: !2, line: 1246, column: 61)
!2785 = !DILocation(line: 1248, column: 17, scope: !2784)
!2786 = !DILocation(line: 1250, column: 63, scope: !2249)
!2787 = !DILocation(line: 1250, column: 71, scope: !2249)
!2788 = !DILocation(line: 1251, column: 63, scope: !2249)
!2789 = !DILocation(line: 1252, column: 65, scope: !2249)
!2790 = !DILocation(line: 1253, column: 63, scope: !2249)
!2791 = !DILocation(line: 1253, column: 69, scope: !2249)
!2792 = !DILocation(line: 1250, column: 25, scope: !2249)
!2793 = !DILocation(line: 1250, column: 23, scope: !2249)
!2794 = !DILocation(line: 1254, column: 20, scope: !2795)
!2795 = distinct !DILexicalBlock(scope: !2249, file: !2, line: 1254, column: 19)
!2796 = !DILocation(line: 1254, column: 19, scope: !2249)
!2797 = !DILocation(line: 1255, column: 23, scope: !2798)
!2798 = distinct !DILexicalBlock(scope: !2795, file: !2, line: 1254, column: 29)
!2799 = !DILocation(line: 1256, column: 50, scope: !2800)
!2800 = distinct !DILexicalBlock(scope: !2798, file: !2, line: 1256, column: 21)
!2801 = !DILocation(line: 1256, column: 55, scope: !2800)
!2802 = !DILocation(line: 1256, column: 21, scope: !2800)
!2803 = !DILocation(line: 1256, column: 21, scope: !2798)
!2804 = !DILocation(line: 1257, column: 32, scope: !2805)
!2805 = distinct !DILexicalBlock(scope: !2800, file: !2, line: 1256, column: 65)
!2806 = !DILocation(line: 1258, column: 52, scope: !2805)
!2807 = !DILocation(line: 1258, column: 60, scope: !2805)
!2808 = !DILocation(line: 1258, column: 41, scope: !2805)
!2809 = !DILocation(line: 1257, column: 19, scope: !2805)
!2810 = !DILocation(line: 1259, column: 27, scope: !2805)
!2811 = !DILocation(line: 1260, column: 17, scope: !2805)
!2812 = !DILocation(line: 1261, column: 15, scope: !2798)
!2813 = !DILocation(line: 1262, column: 20, scope: !2814)
!2814 = distinct !DILexicalBlock(scope: !2249, file: !2, line: 1262, column: 19)
!2815 = !DILocation(line: 1262, column: 19, scope: !2249)
!2816 = !DILocation(line: 1264, column: 21, scope: !2817)
!2817 = distinct !DILexicalBlock(scope: !2818, file: !2, line: 1264, column: 21)
!2818 = distinct !DILexicalBlock(scope: !2814, file: !2, line: 1262, column: 29)
!2819 = !DILocation(line: 1264, column: 29, scope: !2817)
!2820 = !DILocation(line: 1264, column: 43, scope: !2817)
!2821 = !DILocation(line: 1265, column: 21, scope: !2817)
!2822 = !DILocation(line: 1265, column: 35, scope: !2817)
!2823 = !DILocation(line: 1265, column: 43, scope: !2817)
!2824 = !DILocation(line: 1265, column: 53, scope: !2817)
!2825 = !DILocation(line: 1265, column: 33, scope: !2817)
!2826 = !DILocation(line: 1264, column: 21, scope: !2818)
!2827 = !DILocation(line: 1266, column: 32, scope: !2828)
!2828 = distinct !DILexicalBlock(scope: !2817, file: !2, line: 1265, column: 57)
!2829 = !DILocation(line: 1268, column: 43, scope: !2828)
!2830 = !DILocation(line: 1268, column: 51, scope: !2828)
!2831 = !DILocation(line: 1268, column: 32, scope: !2828)
!2832 = !DILocation(line: 1269, column: 32, scope: !2828)
!2833 = !DILocation(line: 1269, column: 40, scope: !2828)
!2834 = !DILocation(line: 1269, column: 50, scope: !2828)
!2835 = !DILocation(line: 1266, column: 19, scope: !2828)
!2836 = !DILocation(line: 1270, column: 27, scope: !2828)
!2837 = !DILocation(line: 1271, column: 17, scope: !2828)
!2838 = !DILocation(line: 1272, column: 15, scope: !2818)
!2839 = !DILocation(line: 1273, column: 20, scope: !2840)
!2840 = distinct !DILexicalBlock(scope: !2249, file: !2, line: 1273, column: 19)
!2841 = !DILocation(line: 1273, column: 19, scope: !2249)
!2842 = !DILocation(line: 1275, column: 21, scope: !2843)
!2843 = distinct !DILexicalBlock(scope: !2844, file: !2, line: 1275, column: 21)
!2844 = distinct !DILexicalBlock(scope: !2840, file: !2, line: 1273, column: 29)
!2845 = !DILocation(line: 1275, column: 29, scope: !2843)
!2846 = !DILocation(line: 1275, column: 43, scope: !2843)
!2847 = !DILocation(line: 1276, column: 21, scope: !2843)
!2848 = !DILocation(line: 1276, column: 35, scope: !2843)
!2849 = !DILocation(line: 1276, column: 43, scope: !2843)
!2850 = !DILocation(line: 1276, column: 53, scope: !2843)
!2851 = !DILocation(line: 1276, column: 33, scope: !2843)
!2852 = !DILocation(line: 1275, column: 21, scope: !2844)
!2853 = !DILocation(line: 1277, column: 32, scope: !2854)
!2854 = distinct !DILexicalBlock(scope: !2843, file: !2, line: 1276, column: 57)
!2855 = !DILocation(line: 1279, column: 43, scope: !2854)
!2856 = !DILocation(line: 1279, column: 51, scope: !2854)
!2857 = !DILocation(line: 1279, column: 32, scope: !2854)
!2858 = !DILocation(line: 1280, column: 32, scope: !2854)
!2859 = !DILocation(line: 1280, column: 40, scope: !2854)
!2860 = !DILocation(line: 1280, column: 50, scope: !2854)
!2861 = !DILocation(line: 1277, column: 19, scope: !2854)
!2862 = !DILocation(line: 1281, column: 27, scope: !2854)
!2863 = !DILocation(line: 1282, column: 17, scope: !2854)
!2864 = !DILocation(line: 1283, column: 15, scope: !2844)
!2865 = !DILocation(line: 1284, column: 20, scope: !2866)
!2866 = distinct !DILexicalBlock(scope: !2249, file: !2, line: 1284, column: 19)
!2867 = !DILocation(line: 1284, column: 19, scope: !2249)
!2868 = !DILocation(line: 1285, column: 45, scope: !2869)
!2869 = distinct !DILexicalBlock(scope: !2866, file: !2, line: 1284, column: 29)
!2870 = !DILocation(line: 1285, column: 29, scope: !2869)
!2871 = !DILocation(line: 1285, column: 37, scope: !2869)
!2872 = !DILocation(line: 1285, column: 43, scope: !2869)
!2873 = !DILocation(line: 1286, column: 31, scope: !2869)
!2874 = !DILocation(line: 1287, column: 15, scope: !2869)
!2875 = !DILocation(line: 1288, column: 15, scope: !2249)
!2876 = !DILocation(line: 1290, column: 32, scope: !2877)
!2877 = distinct !DILexicalBlock(scope: !2249, file: !2, line: 1290, column: 19)
!2878 = !DILocation(line: 1290, column: 40, scope: !2877)
!2879 = !DILocation(line: 1290, column: 48, scope: !2877)
!2880 = !DILocation(line: 1290, column: 54, scope: !2877)
!2881 = !DILocation(line: 1290, column: 19, scope: !2877)
!2882 = !DILocation(line: 1290, column: 19, scope: !2249)
!2883 = !DILocation(line: 1291, column: 31, scope: !2884)
!2884 = distinct !DILexicalBlock(scope: !2877, file: !2, line: 1290, column: 61)
!2885 = !DILocation(line: 1292, column: 17, scope: !2884)
!2886 = !DILocation(line: 1295, column: 63, scope: !2249)
!2887 = !DILocation(line: 1295, column: 71, scope: !2249)
!2888 = !DILocation(line: 1296, column: 63, scope: !2249)
!2889 = !DILocation(line: 1297, column: 65, scope: !2249)
!2890 = !DILocation(line: 1298, column: 63, scope: !2249)
!2891 = !DILocation(line: 1298, column: 69, scope: !2249)
!2892 = !DILocation(line: 1295, column: 25, scope: !2249)
!2893 = !DILocation(line: 1295, column: 23, scope: !2249)
!2894 = !DILocation(line: 1299, column: 20, scope: !2895)
!2895 = distinct !DILexicalBlock(scope: !2249, file: !2, line: 1299, column: 19)
!2896 = !DILocation(line: 1299, column: 19, scope: !2249)
!2897 = !DILocation(line: 1300, column: 23, scope: !2898)
!2898 = distinct !DILexicalBlock(scope: !2895, file: !2, line: 1299, column: 29)
!2899 = !DILocation(line: 1301, column: 48, scope: !2900)
!2900 = distinct !DILexicalBlock(scope: !2898, file: !2, line: 1301, column: 21)
!2901 = !DILocation(line: 1301, column: 53, scope: !2900)
!2902 = !DILocation(line: 1301, column: 21, scope: !2900)
!2903 = !DILocation(line: 1301, column: 62, scope: !2900)
!2904 = !DILocation(line: 1302, column: 21, scope: !2900)
!2905 = !DILocation(line: 1302, column: 32, scope: !2900)
!2906 = !DILocation(line: 1301, column: 21, scope: !2898)
!2907 = !DILocation(line: 1303, column: 32, scope: !2908)
!2908 = distinct !DILexicalBlock(scope: !2900, file: !2, line: 1302, column: 37)
!2909 = !DILocation(line: 1305, column: 43, scope: !2908)
!2910 = !DILocation(line: 1305, column: 51, scope: !2908)
!2911 = !DILocation(line: 1305, column: 32, scope: !2908)
!2912 = !DILocation(line: 1303, column: 19, scope: !2908)
!2913 = !DILocation(line: 1306, column: 27, scope: !2908)
!2914 = !DILocation(line: 1307, column: 17, scope: !2908)
!2915 = !DILocation(line: 1308, column: 15, scope: !2898)
!2916 = !DILocation(line: 1309, column: 20, scope: !2917)
!2917 = distinct !DILexicalBlock(scope: !2249, file: !2, line: 1309, column: 19)
!2918 = !DILocation(line: 1309, column: 19, scope: !2249)
!2919 = !DILocation(line: 1311, column: 21, scope: !2920)
!2920 = distinct !DILexicalBlock(scope: !2921, file: !2, line: 1311, column: 21)
!2921 = distinct !DILexicalBlock(scope: !2917, file: !2, line: 1309, column: 29)
!2922 = !DILocation(line: 1311, column: 29, scope: !2920)
!2923 = !DILocation(line: 1311, column: 43, scope: !2920)
!2924 = !DILocation(line: 1312, column: 21, scope: !2920)
!2925 = !DILocation(line: 1312, column: 34, scope: !2920)
!2926 = !DILocation(line: 1312, column: 42, scope: !2920)
!2927 = !DILocation(line: 1312, column: 52, scope: !2920)
!2928 = !DILocation(line: 1312, column: 32, scope: !2920)
!2929 = !DILocation(line: 1311, column: 21, scope: !2921)
!2930 = !DILocation(line: 1313, column: 32, scope: !2931)
!2931 = distinct !DILexicalBlock(scope: !2920, file: !2, line: 1312, column: 56)
!2932 = !DILocation(line: 1315, column: 43, scope: !2931)
!2933 = !DILocation(line: 1315, column: 51, scope: !2931)
!2934 = !DILocation(line: 1315, column: 32, scope: !2931)
!2935 = !DILocation(line: 1316, column: 32, scope: !2931)
!2936 = !DILocation(line: 1316, column: 40, scope: !2931)
!2937 = !DILocation(line: 1316, column: 50, scope: !2931)
!2938 = !DILocation(line: 1313, column: 19, scope: !2931)
!2939 = !DILocation(line: 1317, column: 27, scope: !2931)
!2940 = !DILocation(line: 1318, column: 17, scope: !2931)
!2941 = !DILocation(line: 1320, column: 55, scope: !2920)
!2942 = !DILocation(line: 1320, column: 31, scope: !2920)
!2943 = !DILocation(line: 1320, column: 39, scope: !2920)
!2944 = !DILocation(line: 1320, column: 47, scope: !2920)
!2945 = !DILocation(line: 1320, column: 53, scope: !2920)
!2946 = !{!2947, !1288, i64 0}
!2947 = !{!"GtRange", !1288, i64 0, !1288, i64 8}
!2948 = !DILocation(line: 1321, column: 15, scope: !2921)
!2949 = !DILocation(line: 1323, column: 20, scope: !2950)
!2950 = distinct !DILexicalBlock(scope: !2249, file: !2, line: 1323, column: 19)
!2951 = !DILocation(line: 1323, column: 19, scope: !2249)
!2952 = !DILocation(line: 1324, column: 65, scope: !2953)
!2953 = distinct !DILexicalBlock(scope: !2950, file: !2, line: 1323, column: 29)
!2954 = !DILocation(line: 1324, column: 73, scope: !2953)
!2955 = !DILocation(line: 1325, column: 65, scope: !2953)
!2956 = !DILocation(line: 1326, column: 67, scope: !2953)
!2957 = !DILocation(line: 1327, column: 65, scope: !2953)
!2958 = !DILocation(line: 1327, column: 71, scope: !2953)
!2959 = !DILocation(line: 1324, column: 27, scope: !2953)
!2960 = !DILocation(line: 1324, column: 25, scope: !2953)
!2961 = !DILocation(line: 1328, column: 15, scope: !2953)
!2962 = !DILocation(line: 1329, column: 20, scope: !2963)
!2963 = distinct !DILexicalBlock(scope: !2249, file: !2, line: 1329, column: 19)
!2964 = !DILocation(line: 1329, column: 19, scope: !2249)
!2965 = !DILocation(line: 1330, column: 23, scope: !2966)
!2966 = distinct !DILexicalBlock(scope: !2963, file: !2, line: 1329, column: 29)
!2967 = !DILocation(line: 1331, column: 48, scope: !2968)
!2968 = distinct !DILexicalBlock(scope: !2966, file: !2, line: 1331, column: 21)
!2969 = !DILocation(line: 1331, column: 53, scope: !2968)
!2970 = !DILocation(line: 1331, column: 21, scope: !2968)
!2971 = !DILocation(line: 1331, column: 62, scope: !2968)
!2972 = !DILocation(line: 1332, column: 21, scope: !2968)
!2973 = !DILocation(line: 1332, column: 32, scope: !2968)
!2974 = !DILocation(line: 1331, column: 21, scope: !2966)
!2975 = !DILocation(line: 1333, column: 32, scope: !2976)
!2976 = distinct !DILexicalBlock(scope: !2968, file: !2, line: 1332, column: 37)
!2977 = !DILocation(line: 1335, column: 43, scope: !2976)
!2978 = !DILocation(line: 1335, column: 51, scope: !2976)
!2979 = !DILocation(line: 1335, column: 32, scope: !2976)
!2980 = !DILocation(line: 1333, column: 19, scope: !2976)
!2981 = !DILocation(line: 1336, column: 27, scope: !2976)
!2982 = !DILocation(line: 1337, column: 17, scope: !2976)
!2983 = !DILocation(line: 1338, column: 15, scope: !2966)
!2984 = !DILocation(line: 1339, column: 20, scope: !2985)
!2985 = distinct !DILexicalBlock(scope: !2249, file: !2, line: 1339, column: 19)
!2986 = !DILocation(line: 1339, column: 19, scope: !2249)
!2987 = !DILocation(line: 1341, column: 21, scope: !2988)
!2988 = distinct !DILexicalBlock(scope: !2989, file: !2, line: 1341, column: 21)
!2989 = distinct !DILexicalBlock(scope: !2985, file: !2, line: 1339, column: 29)
!2990 = !DILocation(line: 1341, column: 29, scope: !2988)
!2991 = !DILocation(line: 1341, column: 43, scope: !2988)
!2992 = !DILocation(line: 1342, column: 21, scope: !2988)
!2993 = !DILocation(line: 1342, column: 34, scope: !2988)
!2994 = !DILocation(line: 1342, column: 42, scope: !2988)
!2995 = !DILocation(line: 1342, column: 52, scope: !2988)
!2996 = !DILocation(line: 1342, column: 32, scope: !2988)
!2997 = !DILocation(line: 1341, column: 21, scope: !2989)
!2998 = !DILocation(line: 1343, column: 32, scope: !2999)
!2999 = distinct !DILexicalBlock(scope: !2988, file: !2, line: 1342, column: 56)
!3000 = !DILocation(line: 1345, column: 43, scope: !2999)
!3001 = !DILocation(line: 1345, column: 51, scope: !2999)
!3002 = !DILocation(line: 1345, column: 32, scope: !2999)
!3003 = !DILocation(line: 1346, column: 32, scope: !2999)
!3004 = !DILocation(line: 1346, column: 40, scope: !2999)
!3005 = !DILocation(line: 1346, column: 50, scope: !2999)
!3006 = !DILocation(line: 1343, column: 19, scope: !2999)
!3007 = !DILocation(line: 1347, column: 27, scope: !2999)
!3008 = !DILocation(line: 1348, column: 17, scope: !2999)
!3009 = !DILocation(line: 1350, column: 53, scope: !2988)
!3010 = !DILocation(line: 1350, column: 31, scope: !2988)
!3011 = !DILocation(line: 1350, column: 39, scope: !2988)
!3012 = !DILocation(line: 1350, column: 47, scope: !2988)
!3013 = !DILocation(line: 1350, column: 51, scope: !2988)
!3014 = !{!2947, !1288, i64 8}
!3015 = !DILocation(line: 1351, column: 15, scope: !2989)
!3016 = !DILocation(line: 1353, column: 20, scope: !3017)
!3017 = distinct !DILexicalBlock(scope: !2249, file: !2, line: 1353, column: 19)
!3018 = !DILocation(line: 1353, column: 28, scope: !3017)
!3019 = !DILocation(line: 1353, column: 44, scope: !3017)
!3020 = !DILocation(line: 1353, column: 52, scope: !3017)
!3021 = !DILocation(line: 1353, column: 60, scope: !3017)
!3022 = !DILocation(line: 1354, column: 44, scope: !3017)
!3023 = !DILocation(line: 1354, column: 52, scope: !3017)
!3024 = !DILocation(line: 1354, column: 60, scope: !3017)
!3025 = !DILocation(line: 1353, column: 66, scope: !3017)
!3026 = !DILocation(line: 1353, column: 19, scope: !2249)
!3027 = !DILocation(line: 1355, column: 30, scope: !3028)
!3028 = distinct !DILexicalBlock(scope: !3017, file: !2, line: 1354, column: 66)
!3029 = !DILocation(line: 1358, column: 42, scope: !3028)
!3030 = !DILocation(line: 1358, column: 50, scope: !3028)
!3031 = !DILocation(line: 1358, column: 58, scope: !3028)
!3032 = !DILocation(line: 1359, column: 41, scope: !3028)
!3033 = !DILocation(line: 1359, column: 49, scope: !3028)
!3034 = !DILocation(line: 1359, column: 30, scope: !3028)
!3035 = !DILocation(line: 1360, column: 42, scope: !3028)
!3036 = !DILocation(line: 1360, column: 50, scope: !3028)
!3037 = !DILocation(line: 1360, column: 58, scope: !3028)
!3038 = !DILocation(line: 1355, column: 17, scope: !3028)
!3039 = !DILocation(line: 1361, column: 25, scope: !3028)
!3040 = !DILocation(line: 1362, column: 15, scope: !3028)
!3041 = !DILocation(line: 1363, column: 20, scope: !3042)
!3042 = distinct !DILexicalBlock(scope: !2249, file: !2, line: 1363, column: 19)
!3043 = !DILocation(line: 1363, column: 19, scope: !2249)
!3044 = !DILocation(line: 1364, column: 31, scope: !3042)
!3045 = !DILocation(line: 1364, column: 17, scope: !3042)
!3046 = !DILocation(line: 1365, column: 15, scope: !2249)
!3047 = !DILocation(line: 1368, column: 32, scope: !3048)
!3048 = distinct !DILexicalBlock(scope: !2249, file: !2, line: 1368, column: 19)
!3049 = !DILocation(line: 1368, column: 40, scope: !3048)
!3050 = !DILocation(line: 1368, column: 48, scope: !3048)
!3051 = !DILocation(line: 1368, column: 54, scope: !3048)
!3052 = !DILocation(line: 1368, column: 19, scope: !3048)
!3053 = !DILocation(line: 1368, column: 19, scope: !2249)
!3054 = !DILocation(line: 1369, column: 31, scope: !3055)
!3055 = distinct !DILexicalBlock(scope: !3048, file: !2, line: 1368, column: 61)
!3056 = !DILocation(line: 1370, column: 17, scope: !3055)
!3057 = !DILocation(line: 1372, column: 63, scope: !2249)
!3058 = !DILocation(line: 1372, column: 71, scope: !2249)
!3059 = !DILocation(line: 1373, column: 63, scope: !2249)
!3060 = !DILocation(line: 1374, column: 65, scope: !2249)
!3061 = !DILocation(line: 1375, column: 63, scope: !2249)
!3062 = !DILocation(line: 1375, column: 69, scope: !2249)
!3063 = !DILocation(line: 1372, column: 25, scope: !2249)
!3064 = !DILocation(line: 1372, column: 23, scope: !2249)
!3065 = !DILocation(line: 1376, column: 20, scope: !3066)
!3066 = distinct !DILexicalBlock(scope: !2249, file: !2, line: 1376, column: 19)
!3067 = !DILocation(line: 1376, column: 19, scope: !2249)
!3068 = !DILocation(line: 1377, column: 23, scope: !3069)
!3069 = distinct !DILexicalBlock(scope: !3066, file: !2, line: 1376, column: 29)
!3070 = !DILocation(line: 1378, column: 28, scope: !3069)
!3071 = !DILocation(line: 1378, column: 36, scope: !3069)
!3072 = !DILocation(line: 1378, column: 43, scope: !3069)
!3073 = !DILocation(line: 1378, column: 48, scope: !3069)
!3074 = !DILocation(line: 1378, column: 17, scope: !3069)
!3075 = !DILocation(line: 1379, column: 31, scope: !3069)
!3076 = !DILocation(line: 1380, column: 15, scope: !3069)
!3077 = !DILocation(line: 1381, column: 15, scope: !2249)
!3078 = !DILocation(line: 1383, column: 32, scope: !3079)
!3079 = distinct !DILexicalBlock(scope: !2249, file: !2, line: 1383, column: 19)
!3080 = !DILocation(line: 1383, column: 40, scope: !3079)
!3081 = !DILocation(line: 1383, column: 48, scope: !3079)
!3082 = !DILocation(line: 1383, column: 54, scope: !3079)
!3083 = !DILocation(line: 1383, column: 19, scope: !3079)
!3084 = !DILocation(line: 1383, column: 19, scope: !2249)
!3085 = !DILocation(line: 1384, column: 31, scope: !3086)
!3086 = distinct !DILexicalBlock(scope: !3079, file: !2, line: 1383, column: 61)
!3087 = !DILocation(line: 1385, column: 17, scope: !3086)
!3088 = !DILocation(line: 1387, column: 63, scope: !2249)
!3089 = !DILocation(line: 1387, column: 71, scope: !2249)
!3090 = !DILocation(line: 1388, column: 62, scope: !2249)
!3091 = !DILocation(line: 1388, column: 70, scope: !2249)
!3092 = !DILocation(line: 1389, column: 62, scope: !2249)
!3093 = !DILocation(line: 1389, column: 68, scope: !2249)
!3094 = !DILocation(line: 1387, column: 25, scope: !2249)
!3095 = !DILocation(line: 1387, column: 23, scope: !2249)
!3096 = !DILocation(line: 1390, column: 15, scope: !2249)
!3097 = !DILocation(line: 1390, column: 23, scope: !2249)
!3098 = !DILocation(line: 1390, column: 22, scope: !2249)
!3099 = !DILocation(line: 1391, column: 21, scope: !3100)
!3100 = distinct !DILexicalBlock(scope: !3101, file: !2, line: 1391, column: 21)
!3101 = distinct !DILexicalBlock(scope: !2249, file: !2, line: 1390, column: 32)
!3102 = !DILocation(line: 1391, column: 28, scope: !3100)
!3103 = !DILocation(line: 1391, column: 34, scope: !3100)
!3104 = !DILocation(line: 1391, column: 32, scope: !3100)
!3105 = !DILocation(line: 1391, column: 39, scope: !3100)
!3106 = !DILocation(line: 1391, column: 42, scope: !3100)
!3107 = !DILocation(line: 1391, column: 47, scope: !3100)
!3108 = !DILocation(line: 1391, column: 53, scope: !3100)
!3109 = !DILocation(line: 1391, column: 60, scope: !3100)
!3110 = !DILocation(line: 1391, column: 21, scope: !3101)
!3111 = !DILocation(line: 1392, column: 25, scope: !3112)
!3112 = distinct !DILexicalBlock(scope: !3100, file: !2, line: 1391, column: 68)
!3113 = !DILocation(line: 1393, column: 41, scope: !3112)
!3114 = !DILocation(line: 1393, column: 49, scope: !3112)
!3115 = !DILocation(line: 1393, column: 56, scope: !3112)
!3116 = !DILocation(line: 1393, column: 61, scope: !3112)
!3117 = !DILocation(line: 1393, column: 19, scope: !3112)
!3118 = !DILocation(line: 1394, column: 33, scope: !3112)
!3119 = !DILocation(line: 1395, column: 17, scope: !3112)
!3120 = !DILocation(line: 1397, column: 24, scope: !3121)
!3121 = distinct !DILexicalBlock(scope: !3122, file: !2, line: 1397, column: 23)
!3122 = distinct !DILexicalBlock(scope: !3100, file: !2, line: 1396, column: 22)
!3123 = !DILocation(line: 1397, column: 23, scope: !3122)
!3124 = !DILocation(line: 1398, column: 34, scope: !3125)
!3125 = distinct !DILexicalBlock(scope: !3121, file: !2, line: 1397, column: 39)
!3126 = !DILocation(line: 1399, column: 45, scope: !3125)
!3127 = !DILocation(line: 1399, column: 53, scope: !3125)
!3128 = !DILocation(line: 1399, column: 34, scope: !3125)
!3129 = !DILocation(line: 1398, column: 21, scope: !3125)
!3130 = !DILocation(line: 1400, column: 29, scope: !3125)
!3131 = !DILocation(line: 1401, column: 19, scope: !3125)
!3132 = !DILocation(line: 1402, column: 19, scope: !3122)
!3133 = distinct !{!3133, !3096, !3134, !1303}
!3134 = !DILocation(line: 1404, column: 15, scope: !2249)
!3135 = !DILocation(line: 1405, column: 15, scope: !2249)
!3136 = !DILocation(line: 1407, column: 19, scope: !3137)
!3137 = distinct !DILexicalBlock(scope: !2249, file: !2, line: 1407, column: 19)
!3138 = !DILocation(line: 1407, column: 23, scope: !3137)
!3139 = !DILocation(line: 1407, column: 19, scope: !2249)
!3140 = !DILocation(line: 1408, column: 17, scope: !3137)
!3141 = !DILocation(line: 1408, column: 21, scope: !3137)
!3142 = !DILocation(line: 1408, column: 34, scope: !3137)
!3143 = !DILocation(line: 1408, column: 38, scope: !3137)
!3144 = !DILocation(line: 1410, column: 17, scope: !3137)
!3145 = !DILocation(line: 1410, column: 30, scope: !3137)
!3146 = !DILocation(line: 1410, column: 34, scope: !3137)
!3147 = !DILocation(line: 1411, column: 15, scope: !2249)
!3148 = !DILocation(line: 1412, column: 22, scope: !2249)
!3149 = !DILocation(line: 1412, column: 22, scope: !3150)
!3150 = distinct !DILexicalBlock(scope: !3151, file: !2, line: 1412, column: 22)
!3151 = distinct !DILexicalBlock(scope: !3152, file: !2, line: 1412, column: 22)
!3152 = distinct !DILexicalBlock(scope: !2249, file: !2, line: 1412, column: 22)
!3153 = !DILocation(line: 1412, column: 22, scope: !3152)
!3154 = !DILocation(line: 1413, column: 11, scope: !2249)
!3155 = !DILocation(line: 1414, column: 9, scope: !2244)
!3156 = !DILocation(line: 1415, column: 13, scope: !3157)
!3157 = distinct !DILexicalBlock(scope: !2225, file: !2, line: 1415, column: 13)
!3158 = !DILocation(line: 1415, column: 21, scope: !3157)
!3159 = !DILocation(line: 1415, column: 24, scope: !3157)
!3160 = !DILocation(line: 1415, column: 13, scope: !2225)
!3161 = !DILocation(line: 1416, column: 11, scope: !3157)
!3162 = !DILocation(line: 1417, column: 7, scope: !2225)
!3163 = !DILocation(line: 1418, column: 5, scope: !2202)
!3164 = !DILocation(line: 1019, column: 50, scope: !2195)
!3165 = !DILocation(line: 1019, column: 5, scope: !2195)
!3166 = distinct !{!3166, !2200, !3167, !1303}
!3167 = !DILocation(line: 1418, column: 5, scope: !2192)
!3168 = !DILocation(line: 1420, column: 9, scope: !3169)
!3169 = distinct !DILexicalBlock(scope: !2172, file: !2, line: 1420, column: 9)
!3170 = !DILocation(line: 1420, column: 9, scope: !2172)
!3171 = !DILocation(line: 1421, column: 7, scope: !3169)
!3172 = !DILocation(line: 1422, column: 9, scope: !3173)
!3173 = distinct !DILexicalBlock(scope: !2172, file: !2, line: 1422, column: 9)
!3174 = !DILocation(line: 1422, column: 9, scope: !2172)
!3175 = !DILocation(line: 1423, column: 7, scope: !3173)
!3176 = !DILocation(line: 1426, column: 5, scope: !2172)
!3177 = !DILocation(line: 1426, column: 5, scope: !3178)
!3178 = distinct !DILexicalBlock(scope: !3179, file: !2, line: 1426, column: 5)
!3179 = distinct !DILexicalBlock(scope: !2172, file: !2, line: 1426, column: 5)
!3180 = !DILocation(line: 1426, column: 5, scope: !3179)
!3181 = !DILocation(line: 1426, column: 5, scope: !3182)
!3182 = distinct !DILexicalBlock(scope: !3178, file: !2, line: 1426, column: 5)
!3183 = !DILocation(line: 1427, column: 18, scope: !2172)
!3184 = !DILocation(line: 1428, column: 18, scope: !2172)
!3185 = !DILocation(line: 1428, column: 23, scope: !2172)
!3186 = !DILocation(line: 1427, column: 5, scope: !2172)
!3187 = !DILocation(line: 1429, column: 13, scope: !2172)
!3188 = !DILocation(line: 1430, column: 5, scope: !2172)
!3189 = !DILocation(line: 1011, column: 41, scope: !2166)
!3190 = !DILocation(line: 1011, column: 3, scope: !2166)
!3191 = distinct !{!3191, !2169, !3192, !1303}
!3192 = !DILocation(line: 1431, column: 3, scope: !2163)
!3193 = !DILocation(line: 1434, column: 7, scope: !3194)
!3194 = distinct !DILexicalBlock(scope: !2054, file: !2, line: 1434, column: 7)
!3195 = !DILocation(line: 1434, column: 16, scope: !3194)
!3196 = !DILocation(line: 1434, column: 14, scope: !3194)
!3197 = !DILocation(line: 1434, column: 21, scope: !3194)
!3198 = !DILocation(line: 1434, column: 32, scope: !3194)
!3199 = !DILocation(line: 1434, column: 37, scope: !3194)
!3200 = !DILocation(line: 1434, column: 25, scope: !3194)
!3201 = !DILocation(line: 1434, column: 7, scope: !2054)
!3202 = !DILocation(line: 1435, column: 11, scope: !3194)
!3203 = !DILocation(line: 1435, column: 5, scope: !3194)
!3204 = !DILocation(line: 1438, column: 8, scope: !3205)
!3205 = distinct !DILexicalBlock(scope: !2054, file: !2, line: 1438, column: 7)
!3206 = !DILocation(line: 1438, column: 16, scope: !3205)
!3207 = !DILocation(line: 1438, column: 19, scope: !3205)
!3208 = !DILocation(line: 1438, column: 23, scope: !3205)
!3209 = !DILocation(line: 1438, column: 48, scope: !3205)
!3210 = !DILocation(line: 1438, column: 65, scope: !3205)
!3211 = !DILocation(line: 1439, column: 7, scope: !3205)
!3212 = !DILocation(line: 1439, column: 14, scope: !3205)
!3213 = !DILocation(line: 1439, column: 12, scope: !3205)
!3214 = !DILocation(line: 1439, column: 23, scope: !3205)
!3215 = !DILocation(line: 1439, column: 27, scope: !3205)
!3216 = !DILocation(line: 1439, column: 21, scope: !3205)
!3217 = !DILocation(line: 1438, column: 7, scope: !2054)
!3218 = !DILocation(line: 1440, column: 18, scope: !3219)
!3219 = distinct !DILexicalBlock(scope: !3205, file: !2, line: 1439, column: 53)
!3220 = !DILocation(line: 1440, column: 57, scope: !3219)
!3221 = !DILocation(line: 1440, column: 61, scope: !3219)
!3222 = !DILocation(line: 1441, column: 18, scope: !3219)
!3223 = !DILocation(line: 1441, column: 22, scope: !3219)
!3224 = !DILocation(line: 1440, column: 5, scope: !3219)
!3225 = !DILocation(line: 1442, column: 13, scope: !3219)
!3226 = !DILocation(line: 1443, column: 3, scope: !3219)
!3227 = !DILocation(line: 1446, column: 8, scope: !3228)
!3228 = distinct !DILexicalBlock(scope: !2054, file: !2, line: 1446, column: 7)
!3229 = !DILocation(line: 1446, column: 16, scope: !3228)
!3230 = !DILocation(line: 1446, column: 19, scope: !3228)
!3231 = !DILocation(line: 1446, column: 23, scope: !3228)
!3232 = !DILocation(line: 1446, column: 48, scope: !3228)
!3233 = !DILocation(line: 1446, column: 65, scope: !3228)
!3234 = !DILocation(line: 1447, column: 7, scope: !3228)
!3235 = !DILocation(line: 1447, column: 14, scope: !3228)
!3236 = !DILocation(line: 1447, column: 12, scope: !3228)
!3237 = !DILocation(line: 1447, column: 23, scope: !3228)
!3238 = !DILocation(line: 1447, column: 27, scope: !3228)
!3239 = !DILocation(line: 1447, column: 21, scope: !3228)
!3240 = !DILocation(line: 1446, column: 7, scope: !2054)
!3241 = !DILocation(line: 1448, column: 18, scope: !3242)
!3242 = distinct !DILexicalBlock(scope: !3228, file: !2, line: 1447, column: 53)
!3243 = !DILocation(line: 1449, column: 18, scope: !3242)
!3244 = !DILocation(line: 1449, column: 23, scope: !3242)
!3245 = !DILocation(line: 1449, column: 32, scope: !3242)
!3246 = !DILocation(line: 1449, column: 36, scope: !3242)
!3247 = !DILocation(line: 1449, column: 30, scope: !3242)
!3248 = !DILocation(line: 1449, column: 63, scope: !3242)
!3249 = !DILocation(line: 1449, column: 67, scope: !3242)
!3250 = !DILocation(line: 1450, column: 18, scope: !3242)
!3251 = !DILocation(line: 1450, column: 22, scope: !3242)
!3252 = !DILocation(line: 1448, column: 5, scope: !3242)
!3253 = !DILocation(line: 1451, column: 13, scope: !3242)
!3254 = !DILocation(line: 1452, column: 3, scope: !3242)
!3255 = !DILocation(line: 1454, column: 8, scope: !3256)
!3256 = distinct !DILexicalBlock(scope: !2054, file: !2, line: 1454, column: 7)
!3257 = !DILocation(line: 1454, column: 7, scope: !2054)
!3258 = !DILocation(line: 1455, column: 39, scope: !3256)
!3259 = !DILocation(line: 1455, column: 43, scope: !3256)
!3260 = !DILocation(line: 1455, column: 15, scope: !3256)
!3261 = !DILocation(line: 1455, column: 13, scope: !3256)
!3262 = !DILocation(line: 1455, column: 5, scope: !3256)
!3263 = !DILocation(line: 1456, column: 8, scope: !3264)
!3264 = distinct !DILexicalBlock(scope: !2054, file: !2, line: 1456, column: 7)
!3265 = !DILocation(line: 1456, column: 7, scope: !2054)
!3266 = !DILocation(line: 1457, column: 41, scope: !3264)
!3267 = !DILocation(line: 1457, column: 45, scope: !3264)
!3268 = !DILocation(line: 1457, column: 15, scope: !3264)
!3269 = !DILocation(line: 1457, column: 13, scope: !3264)
!3270 = !DILocation(line: 1457, column: 5, scope: !3264)
!3271 = !DILocation(line: 1458, column: 8, scope: !3272)
!3272 = distinct !DILexicalBlock(scope: !2054, file: !2, line: 1458, column: 7)
!3273 = !DILocation(line: 1458, column: 7, scope: !2054)
!3274 = !DILocation(line: 1459, column: 39, scope: !3272)
!3275 = !DILocation(line: 1459, column: 43, scope: !3272)
!3276 = !DILocation(line: 1459, column: 15, scope: !3272)
!3277 = !DILocation(line: 1459, column: 13, scope: !3272)
!3278 = !DILocation(line: 1459, column: 5, scope: !3272)
!3279 = !DILocation(line: 1460, column: 8, scope: !3280)
!3280 = distinct !DILexicalBlock(scope: !2054, file: !2, line: 1460, column: 7)
!3281 = !DILocation(line: 1460, column: 7, scope: !2054)
!3282 = !DILocation(line: 1461, column: 46, scope: !3280)
!3283 = !DILocation(line: 1461, column: 50, scope: !3280)
!3284 = !DILocation(line: 1461, column: 15, scope: !3280)
!3285 = !DILocation(line: 1461, column: 13, scope: !3280)
!3286 = !DILocation(line: 1461, column: 5, scope: !3280)
!3287 = !DILocation(line: 1464, column: 10, scope: !3288)
!3288 = distinct !DILexicalBlock(scope: !2054, file: !2, line: 1464, column: 3)
!3289 = !DILocation(line: 1464, column: 8, scope: !3288)
!3290 = !DILocation(line: 1464, column: 16, scope: !3291)
!3291 = distinct !DILexicalBlock(scope: !3288, file: !2, line: 1464, column: 3)
!3292 = !DILocation(line: 1464, column: 24, scope: !3291)
!3293 = !DILocation(line: 1464, column: 27, scope: !3291)
!3294 = !DILocation(line: 1464, column: 45, scope: !3291)
!3295 = !DILocation(line: 1464, column: 49, scope: !3291)
!3296 = !DILocation(line: 1464, column: 31, scope: !3291)
!3297 = !DILocation(line: 1464, column: 29, scope: !3291)
!3298 = !DILocation(line: 0, scope: !3291)
!3299 = !DILocation(line: 1464, column: 3, scope: !3288)
!3300 = !DILocation(line: 1465, column: 29, scope: !3301)
!3301 = distinct !DILexicalBlock(scope: !3291, file: !2, line: 1464, column: 62)
!3302 = !DILocation(line: 1465, column: 33, scope: !3301)
!3303 = !DILocation(line: 1465, column: 40, scope: !3301)
!3304 = !DILocation(line: 1465, column: 16, scope: !3301)
!3305 = !DILocation(line: 1465, column: 14, scope: !3301)
!3306 = !DILocation(line: 1466, column: 15, scope: !3301)
!3307 = !DILocation(line: 1466, column: 25, scope: !3301)
!3308 = !DILocation(line: 1466, column: 30, scope: !3301)
!3309 = !DILocation(line: 1466, column: 40, scope: !3301)
!3310 = !DILocation(line: 1466, column: 46, scope: !3301)
!3311 = !DILocation(line: 1466, column: 13, scope: !3301)
!3312 = !DILocation(line: 1467, column: 3, scope: !3301)
!3313 = !DILocation(line: 1464, column: 58, scope: !3291)
!3314 = !DILocation(line: 1464, column: 3, scope: !3291)
!3315 = distinct !{!3315, !3299, !3316, !1303}
!3316 = !DILocation(line: 1467, column: 3, scope: !3288)
!3317 = !DILocation(line: 1469, column: 7, scope: !3318)
!3318 = distinct !DILexicalBlock(scope: !2054, file: !2, line: 1469, column: 7)
!3319 = !DILocation(line: 1469, column: 7, scope: !2054)
!3320 = !DILocation(line: 1470, column: 20, scope: !3318)
!3321 = !DILocation(line: 1470, column: 6, scope: !3318)
!3322 = !DILocation(line: 1470, column: 18, scope: !3318)
!3323 = !DILocation(line: 1470, column: 5, scope: !3318)
!3324 = !DILocation(line: 1472, column: 7, scope: !3325)
!3325 = distinct !DILexicalBlock(scope: !2054, file: !2, line: 1472, column: 7)
!3326 = !DILocation(line: 1472, column: 7, scope: !2054)
!3327 = !DILocation(line: 1473, column: 5, scope: !3325)
!3328 = !DILocation(line: 1474, column: 3, scope: !2054)
!3329 = !DILocation(line: 1475, column: 1, scope: !2054)
!3330 = !DISubprogram(name: "gt_free_mem", scope: !940, file: !940, line: 75, type: !3331, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3331 = !DISubroutineType(types: !3332)
!3332 = !{null, !651, !690, !649}
!3333 = distinct !DISubprogram(name: "gt_option_parser_warn_on_nonascii", scope: !2, file: !2, line: 961, type: !852, scopeLine: 962, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !3334)
!3334 = !{!3335, !3336}
!3335 = !DILocalVariable(name: "str", arg: 1, scope: !3333, file: !2, line: 961, type: !690)
!3336 = !DILocalVariable(name: "j", scope: !3333, file: !2, line: 963, type: !680)
!3337 = !DILocation(line: 961, column: 59, scope: !3333)
!3338 = !DILocation(line: 963, column: 3, scope: !3333)
!3339 = !DILocation(line: 963, column: 11, scope: !3333)
!3340 = !DILocation(line: 964, column: 3, scope: !3333)
!3341 = !DILocation(line: 964, column: 11, scope: !3333)
!3342 = !DILocation(line: 964, column: 10, scope: !3333)
!3343 = !DILocation(line: 964, column: 15, scope: !3333)
!3344 = !DILocation(line: 965, column: 10, scope: !3345)
!3345 = distinct !DILexicalBlock(scope: !3346, file: !2, line: 965, column: 9)
!3346 = distinct !DILexicalBlock(scope: !3333, file: !2, line: 964, column: 24)
!3347 = !DILocation(line: 965, column: 9, scope: !3346)
!3348 = !DILocation(line: 969, column: 18, scope: !3349)
!3349 = distinct !DILexicalBlock(scope: !3345, file: !2, line: 965, column: 25)
!3350 = !DILocation(line: 969, column: 23, scope: !3349)
!3351 = !DILocation(line: 966, column: 7, scope: !3349)
!3352 = !DILocation(line: 970, column: 7, scope: !3349)
!3353 = !DILocation(line: 972, column: 8, scope: !3346)
!3354 = !DILocation(line: 973, column: 6, scope: !3346)
!3355 = distinct !{!3355, !3340, !3356, !1303}
!3356 = !DILocation(line: 974, column: 3, scope: !3333)
!3357 = !DILocation(line: 975, column: 1, scope: !3333)
!3358 = !DISubprogram(name: "gt_error_set", scope: !846, file: !846, line: 56, type: !3359, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3359 = !DISubroutineType(types: !3360)
!3360 = !{null, !844, !690, null}
!3361 = distinct !DISubprogram(name: "optional_arg", scope: !2, file: !2, line: 739, type: !3362, scopeLine: 740, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !3364)
!3362 = !DISubroutineType(types: !3363)
!3363 = !{!670, !653, !649, !649, !692}
!3364 = !{!3365, !3366, !3367, !3368}
!3365 = !DILocalVariable(name: "o", arg: 1, scope: !3361, file: !2, line: 739, type: !653)
!3366 = !DILocalVariable(name: "argnum", arg: 2, scope: !3361, file: !2, line: 739, type: !649)
!3367 = !DILocalVariable(name: "argc", arg: 3, scope: !3361, file: !2, line: 739, type: !649)
!3368 = !DILocalVariable(name: "argv", arg: 4, scope: !3361, file: !2, line: 739, type: !692)
!3369 = !DILocation(line: 739, column: 36, scope: !3361)
!3370 = !DILocation(line: 739, column: 43, scope: !3361)
!3371 = !DILocation(line: 739, column: 55, scope: !3361)
!3372 = !DILocation(line: 739, column: 74, scope: !3361)
!3373 = !DILocation(line: 741, column: 3, scope: !3361)
!3374 = !DILocation(line: 741, column: 3, scope: !3375)
!3375 = distinct !DILexicalBlock(scope: !3376, file: !2, line: 741, column: 3)
!3376 = distinct !DILexicalBlock(scope: !3361, file: !2, line: 741, column: 3)
!3377 = !DILocation(line: 741, column: 3, scope: !3376)
!3378 = !DILocation(line: 741, column: 3, scope: !3379)
!3379 = distinct !DILexicalBlock(scope: !3375, file: !2, line: 741, column: 3)
!3380 = !DILocation(line: 742, column: 7, scope: !3381)
!3381 = distinct !DILexicalBlock(scope: !3361, file: !2, line: 742, column: 7)
!3382 = !DILocation(line: 742, column: 10, scope: !3381)
!3383 = !DILocation(line: 742, column: 31, scope: !3381)
!3384 = !DILocation(line: 743, column: 8, scope: !3381)
!3385 = !DILocation(line: 743, column: 15, scope: !3381)
!3386 = !DILocation(line: 743, column: 22, scope: !3381)
!3387 = !DILocation(line: 743, column: 19, scope: !3381)
!3388 = !DILocation(line: 743, column: 27, scope: !3381)
!3389 = !DILocation(line: 743, column: 30, scope: !3381)
!3390 = !DILocation(line: 743, column: 35, scope: !3381)
!3391 = !DILocation(line: 743, column: 42, scope: !3381)
!3392 = !DILocation(line: 743, column: 50, scope: !3381)
!3393 = !DILocation(line: 743, column: 57, scope: !3381)
!3394 = !DILocation(line: 744, column: 16, scope: !3381)
!3395 = !DILocation(line: 744, column: 21, scope: !3381)
!3396 = !DILocation(line: 744, column: 28, scope: !3381)
!3397 = !DILocation(line: 744, column: 9, scope: !3381)
!3398 = !DILocation(line: 742, column: 7, scope: !3361)
!3399 = !DILocation(line: 745, column: 5, scope: !3400)
!3400 = distinct !DILexicalBlock(scope: !3381, file: !2, line: 744, column: 42)
!3401 = !DILocation(line: 747, column: 3, scope: !3361)
!3402 = !DILocation(line: 748, column: 1, scope: !3361)
!3403 = distinct !DISubprogram(name: "check_missing_argument_and_minus_sign", scope: !2, file: !2, line: 761, type: !3404, scopeLine: 765, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !3406)
!3404 = !DISubroutineType(types: !3405)
!3405 = !{!649, !649, !649, !660, !692, !844}
!3406 = !{!3407, !3408, !3409, !3410, !3411}
!3407 = !DILocalVariable(name: "argnum", arg: 1, scope: !3403, file: !2, line: 761, type: !649)
!3408 = !DILocalVariable(name: "argc", arg: 2, scope: !3403, file: !2, line: 761, type: !649)
!3409 = !DILocalVariable(name: "option", arg: 3, scope: !3403, file: !2, line: 762, type: !660)
!3410 = !DILocalVariable(name: "argv", arg: 4, scope: !3403, file: !2, line: 763, type: !692)
!3411 = !DILocalVariable(name: "err", arg: 5, scope: !3403, file: !2, line: 764, type: !844)
!3412 = !DILocation(line: 761, column: 54, scope: !3403)
!3413 = !DILocation(line: 761, column: 66, scope: !3403)
!3414 = !DILocation(line: 762, column: 57, scope: !3403)
!3415 = !DILocation(line: 763, column: 63, scope: !3403)
!3416 = !DILocation(line: 764, column: 59, scope: !3403)
!3417 = !DILocation(line: 766, column: 3, scope: !3403)
!3418 = !DILocation(line: 766, column: 3, scope: !3419)
!3419 = distinct !DILexicalBlock(scope: !3420, file: !2, line: 766, column: 3)
!3420 = distinct !DILexicalBlock(scope: !3403, file: !2, line: 766, column: 3)
!3421 = !DILocation(line: 766, column: 3, scope: !3420)
!3422 = !DILocation(line: 766, column: 3, scope: !3423)
!3423 = distinct !DILexicalBlock(scope: !3419, file: !2, line: 766, column: 3)
!3424 = !DILocation(line: 767, column: 7, scope: !3425)
!3425 = distinct !DILexicalBlock(scope: !3403, file: !2, line: 767, column: 7)
!3426 = !DILocation(line: 767, column: 14, scope: !3425)
!3427 = !DILocation(line: 767, column: 21, scope: !3425)
!3428 = !DILocation(line: 767, column: 18, scope: !3425)
!3429 = !DILocation(line: 767, column: 26, scope: !3425)
!3430 = !DILocation(line: 767, column: 30, scope: !3425)
!3431 = !DILocation(line: 767, column: 35, scope: !3425)
!3432 = !DILocation(line: 767, column: 41, scope: !3425)
!3433 = !DILocation(line: 767, column: 48, scope: !3425)
!3434 = !DILocation(line: 768, column: 32, scope: !3425)
!3435 = !DILocation(line: 768, column: 35, scope: !3425)
!3436 = !DILocation(line: 768, column: 40, scope: !3425)
!3437 = !DILocation(line: 768, column: 46, scope: !3425)
!3438 = !DILocation(line: 768, column: 53, scope: !3425)
!3439 = !DILocation(line: 767, column: 7, scope: !3403)
!3440 = !DILocation(line: 769, column: 18, scope: !3441)
!3441 = distinct !DILexicalBlock(scope: !3425, file: !2, line: 768, column: 63)
!3442 = !DILocation(line: 769, column: 72, scope: !3441)
!3443 = !DILocation(line: 769, column: 61, scope: !3441)
!3444 = !DILocation(line: 769, column: 5, scope: !3441)
!3445 = !DILocation(line: 770, column: 5, scope: !3441)
!3446 = !DILocation(line: 772, column: 3, scope: !3403)
!3447 = !DILocation(line: 773, column: 1, scope: !3403)
!3448 = !DISubprogram(name: "gt_str_new_cstr", scope: !662, file: !662, line: 32, type: !3449, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3449 = !DISubroutineType(types: !3450)
!3450 = !{!660, !690}
!3451 = !DISubprogram(name: "gt_str_set", scope: !662, file: !662, line: 42, type: !1881, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3452 = distinct !DISubprogram(name: "check_missing_argument", scope: !2, file: !2, line: 750, type: !3453, scopeLine: 752, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !3455)
!3453 = !DISubroutineType(types: !3454)
!3454 = !{!649, !649, !649, !660, !844}
!3455 = !{!3456, !3457, !3458, !3459}
!3456 = !DILocalVariable(name: "argnum", arg: 1, scope: !3452, file: !2, line: 750, type: !649)
!3457 = !DILocalVariable(name: "argc", arg: 2, scope: !3452, file: !2, line: 750, type: !649)
!3458 = !DILocalVariable(name: "option", arg: 3, scope: !3452, file: !2, line: 750, type: !660)
!3459 = !DILocalVariable(name: "err", arg: 4, scope: !3452, file: !2, line: 751, type: !844)
!3460 = !DILocation(line: 750, column: 39, scope: !3452)
!3461 = !DILocation(line: 750, column: 51, scope: !3452)
!3462 = !DILocation(line: 750, column: 64, scope: !3452)
!3463 = !DILocation(line: 751, column: 44, scope: !3452)
!3464 = !DILocation(line: 753, column: 3, scope: !3452)
!3465 = !DILocation(line: 753, column: 3, scope: !3466)
!3466 = distinct !DILexicalBlock(scope: !3467, file: !2, line: 753, column: 3)
!3467 = distinct !DILexicalBlock(scope: !3452, file: !2, line: 753, column: 3)
!3468 = !DILocation(line: 753, column: 3, scope: !3467)
!3469 = !DILocation(line: 753, column: 3, scope: !3470)
!3470 = distinct !DILexicalBlock(scope: !3466, file: !2, line: 753, column: 3)
!3471 = !DILocation(line: 754, column: 7, scope: !3472)
!3472 = distinct !DILexicalBlock(scope: !3452, file: !2, line: 754, column: 7)
!3473 = !DILocation(line: 754, column: 14, scope: !3472)
!3474 = !DILocation(line: 754, column: 21, scope: !3472)
!3475 = !DILocation(line: 754, column: 18, scope: !3472)
!3476 = !DILocation(line: 754, column: 7, scope: !3452)
!3477 = !DILocation(line: 755, column: 18, scope: !3478)
!3478 = distinct !DILexicalBlock(scope: !3472, file: !2, line: 754, column: 27)
!3479 = !DILocation(line: 755, column: 72, scope: !3478)
!3480 = !DILocation(line: 755, column: 61, scope: !3478)
!3481 = !DILocation(line: 755, column: 5, scope: !3478)
!3482 = !DILocation(line: 756, column: 5, scope: !3478)
!3483 = !DILocation(line: 758, column: 3, scope: !3452)
!3484 = !DILocation(line: 759, column: 1, scope: !3452)
!3485 = !DISubprogram(name: "gt_parse_double", scope: !3486, file: !3486, line: 56, type: !3487, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3486 = !DIFile(filename: "src/core/parseutils_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "11158aa48964b473aacfc37d75696371")
!3487 = !DISubroutineType(types: !3488)
!3488 = !{!649, !724, !690}
!3489 = distinct !DISubprogram(name: "show_help", scope: !2, file: !2, line: 360, type: !3490, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !3492)
!3490 = !DISubroutineType(types: !3491)
!3491 = !{!649, !828, !658, !844}
!3492 = !{!3493, !3494, !3495, !3496, !3497, !3498, !3499}
!3493 = !DILocalVariable(name: "op", arg: 1, scope: !3489, file: !2, line: 360, type: !828)
!3494 = !DILocalVariable(name: "optiontype", arg: 2, scope: !3489, file: !2, line: 360, type: !658)
!3495 = !DILocalVariable(name: "err", arg: 3, scope: !3489, file: !2, line: 360, type: !844)
!3496 = !DILocalVariable(name: "i", scope: !3489, file: !2, line: 362, type: !680)
!3497 = !DILocalVariable(name: "max_option_length", scope: !3489, file: !2, line: 362, type: !680)
!3498 = !DILocalVariable(name: "option", scope: !3489, file: !2, line: 363, type: !653)
!3499 = !DILocalVariable(name: "had_err", scope: !3489, file: !2, line: 364, type: !649)
!3500 = !DILocation(line: 360, column: 38, scope: !3489)
!3501 = !DILocation(line: 360, column: 55, scope: !3489)
!3502 = !DILocation(line: 360, column: 76, scope: !3489)
!3503 = !DILocation(line: 362, column: 3, scope: !3489)
!3504 = !DILocation(line: 362, column: 11, scope: !3489)
!3505 = !DILocation(line: 362, column: 14, scope: !3489)
!3506 = !DILocation(line: 363, column: 3, scope: !3489)
!3507 = !DILocation(line: 363, column: 13, scope: !3489)
!3508 = !DILocation(line: 364, column: 3, scope: !3489)
!3509 = !DILocation(line: 364, column: 7, scope: !3489)
!3510 = !DILocation(line: 365, column: 3, scope: !3489)
!3511 = !DILocation(line: 365, column: 3, scope: !3512)
!3512 = distinct !DILexicalBlock(scope: !3513, file: !2, line: 365, column: 3)
!3513 = distinct !DILexicalBlock(scope: !3489, file: !2, line: 365, column: 3)
!3514 = !DILocation(line: 365, column: 3, scope: !3513)
!3515 = !DILocation(line: 365, column: 3, scope: !3516)
!3516 = distinct !DILexicalBlock(scope: !3512, file: !2, line: 365, column: 3)
!3517 = !DILocation(line: 366, column: 3, scope: !3489)
!3518 = !DILocation(line: 366, column: 3, scope: !3519)
!3519 = distinct !DILexicalBlock(scope: !3520, file: !2, line: 366, column: 3)
!3520 = distinct !DILexicalBlock(scope: !3489, file: !2, line: 366, column: 3)
!3521 = !DILocation(line: 366, column: 3, scope: !3520)
!3522 = !DILocation(line: 366, column: 3, scope: !3523)
!3523 = distinct !DILexicalBlock(scope: !3519, file: !2, line: 366, column: 3)
!3524 = !DILocation(line: 370, column: 10, scope: !3525)
!3525 = distinct !DILexicalBlock(scope: !3489, file: !2, line: 370, column: 3)
!3526 = !DILocation(line: 370, column: 8, scope: !3525)
!3527 = !DILocation(line: 370, column: 15, scope: !3528)
!3528 = distinct !DILexicalBlock(scope: !3525, file: !2, line: 370, column: 3)
!3529 = !DILocation(line: 370, column: 33, scope: !3528)
!3530 = !DILocation(line: 370, column: 37, scope: !3528)
!3531 = !DILocation(line: 370, column: 19, scope: !3528)
!3532 = !DILocation(line: 370, column: 17, scope: !3528)
!3533 = !DILocation(line: 370, column: 3, scope: !3525)
!3534 = !DILocation(line: 371, column: 41, scope: !3535)
!3535 = distinct !DILexicalBlock(scope: !3528, file: !2, line: 370, column: 52)
!3536 = !DILocation(line: 371, column: 45, scope: !3535)
!3537 = !DILocation(line: 371, column: 54, scope: !3535)
!3538 = !DILocation(line: 371, column: 28, scope: !3535)
!3539 = !DILocation(line: 371, column: 14, scope: !3535)
!3540 = !DILocation(line: 371, column: 12, scope: !3535)
!3541 = !DILocation(line: 373, column: 10, scope: !3542)
!3542 = distinct !DILexicalBlock(scope: !3535, file: !2, line: 373, column: 9)
!3543 = !DILocation(line: 373, column: 21, scope: !3542)
!3544 = !DILocation(line: 373, column: 36, scope: !3542)
!3545 = !DILocation(line: 373, column: 39, scope: !3542)
!3546 = !DILocation(line: 373, column: 47, scope: !3542)
!3547 = !{!759, !760, i64 77}
!3548 = !DILocation(line: 373, column: 67, scope: !3542)
!3549 = !DILocation(line: 374, column: 10, scope: !3542)
!3550 = !DILocation(line: 374, column: 21, scope: !3542)
!3551 = !DILocation(line: 374, column: 39, scope: !3542)
!3552 = !DILocation(line: 374, column: 43, scope: !3542)
!3553 = !DILocation(line: 374, column: 51, scope: !3542)
!3554 = !DILocation(line: 374, column: 74, scope: !3542)
!3555 = !DILocation(line: 375, column: 12, scope: !3542)
!3556 = !DILocation(line: 375, column: 23, scope: !3542)
!3557 = !DILocation(line: 375, column: 42, scope: !3542)
!3558 = !DILocation(line: 375, column: 45, scope: !3542)
!3559 = !DILocation(line: 375, column: 53, scope: !3542)
!3560 = !DILocation(line: 373, column: 9, scope: !3535)
!3561 = !DILocation(line: 376, column: 7, scope: !3562)
!3562 = distinct !DILexicalBlock(scope: !3542, file: !2, line: 375, column: 77)
!3563 = !DILocation(line: 378, column: 23, scope: !3564)
!3564 = distinct !DILexicalBlock(scope: !3535, file: !2, line: 378, column: 9)
!3565 = !DILocation(line: 378, column: 31, scope: !3564)
!3566 = !DILocation(line: 378, column: 9, scope: !3564)
!3567 = !DILocation(line: 378, column: 45, scope: !3564)
!3568 = !DILocation(line: 378, column: 43, scope: !3564)
!3569 = !DILocation(line: 378, column: 9, scope: !3535)
!3570 = !DILocation(line: 379, column: 41, scope: !3564)
!3571 = !DILocation(line: 379, column: 49, scope: !3564)
!3572 = !DILocation(line: 379, column: 27, scope: !3564)
!3573 = !DILocation(line: 379, column: 25, scope: !3564)
!3574 = !DILocation(line: 379, column: 7, scope: !3564)
!3575 = !DILocation(line: 380, column: 3, scope: !3535)
!3576 = !DILocation(line: 370, column: 48, scope: !3528)
!3577 = !DILocation(line: 370, column: 3, scope: !3528)
!3578 = distinct !{!3578, !3533, !3579, !1303}
!3579 = !DILocation(line: 380, column: 3, scope: !3525)
!3580 = !DILocation(line: 381, column: 3, scope: !3489)
!3581 = !DILocation(line: 381, column: 3, scope: !3582)
!3582 = distinct !DILexicalBlock(scope: !3583, file: !2, line: 381, column: 3)
!3583 = distinct !DILexicalBlock(scope: !3489, file: !2, line: 381, column: 3)
!3584 = !DILocation(line: 381, column: 3, scope: !3583)
!3585 = !DILocation(line: 381, column: 3, scope: !3586)
!3586 = distinct !DILexicalBlock(scope: !3582, file: !2, line: 381, column: 3)
!3587 = !DILocation(line: 383, column: 28, scope: !3489)
!3588 = !DILocation(line: 383, column: 32, scope: !3489)
!3589 = !DILocation(line: 383, column: 42, scope: !3489)
!3590 = !DILocation(line: 383, column: 46, scope: !3489)
!3591 = !DILocation(line: 383, column: 3, scope: !3489)
!3592 = !DILocation(line: 384, column: 20, scope: !3489)
!3593 = !DILocation(line: 384, column: 24, scope: !3489)
!3594 = !DILocation(line: 384, column: 3, scope: !3489)
!3595 = !DILocation(line: 385, column: 10, scope: !3596)
!3596 = distinct !DILexicalBlock(scope: !3489, file: !2, line: 385, column: 3)
!3597 = !DILocation(line: 385, column: 8, scope: !3596)
!3598 = !DILocation(line: 385, column: 15, scope: !3599)
!3599 = distinct !DILexicalBlock(scope: !3596, file: !2, line: 385, column: 3)
!3600 = !DILocation(line: 385, column: 33, scope: !3599)
!3601 = !DILocation(line: 385, column: 37, scope: !3599)
!3602 = !DILocation(line: 385, column: 19, scope: !3599)
!3603 = !DILocation(line: 385, column: 17, scope: !3599)
!3604 = !DILocation(line: 385, column: 3, scope: !3596)
!3605 = !DILocation(line: 386, column: 41, scope: !3606)
!3606 = distinct !DILexicalBlock(scope: !3599, file: !2, line: 385, column: 52)
!3607 = !DILocation(line: 386, column: 45, scope: !3606)
!3608 = !DILocation(line: 386, column: 54, scope: !3606)
!3609 = !DILocation(line: 386, column: 28, scope: !3606)
!3610 = !DILocation(line: 386, column: 14, scope: !3606)
!3611 = !DILocation(line: 386, column: 12, scope: !3606)
!3612 = !DILocation(line: 388, column: 10, scope: !3613)
!3613 = distinct !DILexicalBlock(scope: !3606, file: !2, line: 388, column: 9)
!3614 = !DILocation(line: 388, column: 21, scope: !3613)
!3615 = !DILocation(line: 388, column: 36, scope: !3613)
!3616 = !DILocation(line: 388, column: 39, scope: !3613)
!3617 = !DILocation(line: 388, column: 47, scope: !3613)
!3618 = !DILocation(line: 388, column: 67, scope: !3613)
!3619 = !DILocation(line: 389, column: 10, scope: !3613)
!3620 = !DILocation(line: 389, column: 21, scope: !3613)
!3621 = !DILocation(line: 389, column: 39, scope: !3613)
!3622 = !DILocation(line: 389, column: 43, scope: !3613)
!3623 = !DILocation(line: 389, column: 51, scope: !3613)
!3624 = !DILocation(line: 389, column: 74, scope: !3613)
!3625 = !DILocation(line: 390, column: 12, scope: !3613)
!3626 = !DILocation(line: 390, column: 23, scope: !3613)
!3627 = !DILocation(line: 390, column: 42, scope: !3613)
!3628 = !DILocation(line: 390, column: 45, scope: !3613)
!3629 = !DILocation(line: 390, column: 53, scope: !3613)
!3630 = !DILocation(line: 388, column: 9, scope: !3606)
!3631 = !DILocation(line: 391, column: 7, scope: !3632)
!3632 = distinct !DILexicalBlock(scope: !3613, file: !2, line: 390, column: 77)
!3633 = !DILocation(line: 393, column: 34, scope: !3606)
!3634 = !DILocation(line: 393, column: 42, scope: !3606)
!3635 = !DILocation(line: 393, column: 23, scope: !3606)
!3636 = !DILocation(line: 394, column: 19, scope: !3606)
!3637 = !DILocation(line: 394, column: 53, scope: !3606)
!3638 = !DILocation(line: 394, column: 61, scope: !3606)
!3639 = !DILocation(line: 394, column: 39, scope: !3606)
!3640 = !DILocation(line: 394, column: 37, scope: !3606)
!3641 = !DILocation(line: 394, column: 12, scope: !3606)
!3642 = !DILocation(line: 393, column: 5, scope: !3606)
!3643 = !DILocation(line: 395, column: 22, scope: !3606)
!3644 = !DILocation(line: 395, column: 40, scope: !3606)
!3645 = !DILocation(line: 395, column: 56, scope: !3606)
!3646 = !DILocation(line: 395, column: 64, scope: !3606)
!3647 = !DILocation(line: 395, column: 45, scope: !3606)
!3648 = !DILocation(line: 396, column: 36, scope: !3606)
!3649 = !DILocation(line: 396, column: 44, scope: !3606)
!3650 = !DILocation(line: 396, column: 22, scope: !3606)
!3651 = !DILocation(line: 395, column: 5, scope: !3606)
!3652 = !DILocation(line: 399, column: 10, scope: !3653)
!3653 = distinct !DILexicalBlock(scope: !3606, file: !2, line: 399, column: 9)
!3654 = !DILocation(line: 399, column: 18, scope: !3653)
!3655 = !DILocation(line: 399, column: 9, scope: !3606)
!3656 = !DILocation(line: 400, column: 11, scope: !3657)
!3657 = distinct !DILexicalBlock(scope: !3658, file: !2, line: 400, column: 11)
!3658 = distinct !DILexicalBlock(scope: !3653, file: !2, line: 399, column: 32)
!3659 = !DILocation(line: 400, column: 19, scope: !3657)
!3660 = !DILocation(line: 400, column: 31, scope: !3657)
!3661 = !DILocation(line: 400, column: 11, scope: !3658)
!3662 = !DILocation(line: 401, column: 44, scope: !3663)
!3663 = distinct !DILexicalBlock(scope: !3657, file: !2, line: 400, column: 47)
!3664 = !DILocation(line: 401, column: 38, scope: !3663)
!3665 = !DILocation(line: 402, column: 16, scope: !3663)
!3666 = !DILocation(line: 402, column: 24, scope: !3663)
!3667 = !DILocation(line: 402, column: 38, scope: !3663)
!3668 = !DILocation(line: 401, column: 9, scope: !3663)
!3669 = !DILocation(line: 403, column: 7, scope: !3663)
!3670 = !DILocation(line: 404, column: 16, scope: !3671)
!3671 = distinct !DILexicalBlock(scope: !3657, file: !2, line: 404, column: 16)
!3672 = !DILocation(line: 404, column: 24, scope: !3671)
!3673 = !DILocation(line: 404, column: 36, scope: !3671)
!3674 = !DILocation(line: 404, column: 16, scope: !3657)
!3675 = !DILocation(line: 405, column: 40, scope: !3676)
!3676 = distinct !DILexicalBlock(scope: !3671, file: !2, line: 404, column: 54)
!3677 = !DILocation(line: 405, column: 34, scope: !3676)
!3678 = !DILocation(line: 405, column: 9, scope: !3676)
!3679 = !DILocation(line: 406, column: 14, scope: !3680)
!3680 = distinct !DILexicalBlock(scope: !3676, file: !2, line: 406, column: 13)
!3681 = !DILocation(line: 406, column: 22, scope: !3680)
!3682 = !DILocation(line: 406, column: 36, scope: !3680)
!3683 = !DILocation(line: 406, column: 38, scope: !3680)
!3684 = !DILocation(line: 406, column: 49, scope: !3680)
!3685 = !DILocation(line: 406, column: 57, scope: !3680)
!3686 = !DILocation(line: 406, column: 71, scope: !3680)
!3687 = !DILocation(line: 406, column: 42, scope: !3680)
!3688 = !DILocation(line: 406, column: 13, scope: !3676)
!3689 = !DILocation(line: 407, column: 11, scope: !3680)
!3690 = !DILocation(line: 409, column: 20, scope: !3680)
!3691 = !DILocation(line: 409, column: 28, scope: !3680)
!3692 = !DILocation(line: 409, column: 42, scope: !3680)
!3693 = !DILocation(line: 409, column: 11, scope: !3680)
!3694 = !DILocation(line: 410, column: 7, scope: !3676)
!3695 = !DILocation(line: 412, column: 16, scope: !3696)
!3696 = distinct !DILexicalBlock(scope: !3671, file: !2, line: 412, column: 16)
!3697 = !DILocation(line: 412, column: 24, scope: !3696)
!3698 = !DILocation(line: 412, column: 36, scope: !3696)
!3699 = !DILocation(line: 412, column: 16, scope: !3671)
!3700 = !DILocation(line: 413, column: 40, scope: !3701)
!3701 = distinct !DILexicalBlock(scope: !3696, file: !2, line: 412, column: 54)
!3702 = !DILocation(line: 413, column: 34, scope: !3701)
!3703 = !DILocation(line: 413, column: 9, scope: !3701)
!3704 = !DILocation(line: 414, column: 13, scope: !3705)
!3705 = distinct !DILexicalBlock(scope: !3701, file: !2, line: 414, column: 13)
!3706 = !DILocation(line: 414, column: 21, scope: !3705)
!3707 = !DILocation(line: 414, column: 35, scope: !3705)
!3708 = !DILocation(line: 414, column: 37, scope: !3705)
!3709 = !DILocation(line: 414, column: 13, scope: !3701)
!3710 = !DILocation(line: 415, column: 11, scope: !3705)
!3711 = !DILocation(line: 417, column: 28, scope: !3705)
!3712 = !DILocation(line: 417, column: 36, scope: !3705)
!3713 = !DILocation(line: 417, column: 50, scope: !3705)
!3714 = !DILocation(line: 417, column: 11, scope: !3705)
!3715 = !DILocation(line: 418, column: 7, scope: !3701)
!3716 = !DILocation(line: 419, column: 16, scope: !3717)
!3717 = distinct !DILexicalBlock(scope: !3696, file: !2, line: 419, column: 16)
!3718 = !DILocation(line: 419, column: 24, scope: !3717)
!3719 = !DILocation(line: 419, column: 36, scope: !3717)
!3720 = !DILocation(line: 419, column: 16, scope: !3696)
!3721 = !DILocation(line: 420, column: 40, scope: !3722)
!3722 = distinct !DILexicalBlock(scope: !3717, file: !2, line: 419, column: 51)
!3723 = !DILocation(line: 420, column: 34, scope: !3722)
!3724 = !DILocation(line: 420, column: 9, scope: !3722)
!3725 = !DILocation(line: 421, column: 13, scope: !3726)
!3726 = distinct !DILexicalBlock(scope: !3722, file: !2, line: 421, column: 13)
!3727 = !DILocation(line: 421, column: 21, scope: !3726)
!3728 = !DILocation(line: 421, column: 35, scope: !3726)
!3729 = !DILocation(line: 421, column: 37, scope: !3726)
!3730 = !DILocation(line: 421, column: 13, scope: !3722)
!3731 = !DILocation(line: 422, column: 11, scope: !3726)
!3732 = !DILocation(line: 424, column: 26, scope: !3726)
!3733 = !DILocation(line: 424, column: 34, scope: !3726)
!3734 = !DILocation(line: 424, column: 48, scope: !3726)
!3735 = !DILocation(line: 424, column: 11, scope: !3726)
!3736 = !DILocation(line: 425, column: 7, scope: !3722)
!3737 = !DILocation(line: 426, column: 16, scope: !3738)
!3738 = distinct !DILexicalBlock(scope: !3717, file: !2, line: 426, column: 16)
!3739 = !DILocation(line: 426, column: 24, scope: !3738)
!3740 = !DILocation(line: 426, column: 36, scope: !3738)
!3741 = !DILocation(line: 426, column: 16, scope: !3717)
!3742 = !DILocation(line: 427, column: 40, scope: !3743)
!3743 = distinct !DILexicalBlock(scope: !3738, file: !2, line: 426, column: 52)
!3744 = !DILocation(line: 427, column: 34, scope: !3743)
!3745 = !DILocation(line: 427, column: 9, scope: !3743)
!3746 = !DILocation(line: 428, column: 13, scope: !3747)
!3747 = distinct !DILexicalBlock(scope: !3743, file: !2, line: 428, column: 13)
!3748 = !DILocation(line: 428, column: 21, scope: !3747)
!3749 = !DILocation(line: 428, column: 35, scope: !3747)
!3750 = !DILocation(line: 428, column: 38, scope: !3747)
!3751 = !DILocation(line: 428, column: 13, scope: !3743)
!3752 = !DILocation(line: 429, column: 11, scope: !3747)
!3753 = !DILocation(line: 431, column: 26, scope: !3747)
!3754 = !DILocation(line: 431, column: 34, scope: !3747)
!3755 = !DILocation(line: 431, column: 48, scope: !3747)
!3756 = !DILocation(line: 431, column: 11, scope: !3747)
!3757 = !DILocation(line: 432, column: 7, scope: !3743)
!3758 = !DILocation(line: 433, column: 16, scope: !3759)
!3759 = distinct !DILexicalBlock(scope: !3738, file: !2, line: 433, column: 16)
!3760 = !DILocation(line: 433, column: 24, scope: !3759)
!3761 = !DILocation(line: 433, column: 36, scope: !3759)
!3762 = !DILocation(line: 433, column: 16, scope: !3738)
!3763 = !DILocation(line: 434, column: 40, scope: !3764)
!3764 = distinct !DILexicalBlock(scope: !3759, file: !2, line: 433, column: 52)
!3765 = !DILocation(line: 434, column: 34, scope: !3764)
!3766 = !DILocation(line: 434, column: 9, scope: !3764)
!3767 = !DILocation(line: 435, column: 13, scope: !3768)
!3768 = distinct !DILexicalBlock(scope: !3764, file: !2, line: 435, column: 13)
!3769 = !DILocation(line: 435, column: 21, scope: !3768)
!3770 = !DILocation(line: 435, column: 35, scope: !3768)
!3771 = !DILocation(line: 435, column: 38, scope: !3768)
!3772 = !DILocation(line: 435, column: 13, scope: !3764)
!3773 = !DILocation(line: 436, column: 11, scope: !3768)
!3774 = !DILocation(line: 438, column: 31, scope: !3768)
!3775 = !DILocation(line: 438, column: 39, scope: !3768)
!3776 = !DILocation(line: 438, column: 53, scope: !3768)
!3777 = !DILocation(line: 438, column: 11, scope: !3768)
!3778 = !DILocation(line: 439, column: 7, scope: !3764)
!3779 = !DILocation(line: 440, column: 16, scope: !3780)
!3780 = distinct !DILexicalBlock(scope: !3759, file: !2, line: 440, column: 16)
!3781 = !DILocation(line: 440, column: 24, scope: !3780)
!3782 = !DILocation(line: 440, column: 36, scope: !3780)
!3783 = !DILocation(line: 440, column: 16, scope: !3759)
!3784 = !DILocation(line: 441, column: 40, scope: !3785)
!3785 = distinct !DILexicalBlock(scope: !3780, file: !2, line: 440, column: 53)
!3786 = !DILocation(line: 441, column: 34, scope: !3785)
!3787 = !DILocation(line: 441, column: 9, scope: !3785)
!3788 = !DILocation(line: 442, column: 13, scope: !3789)
!3789 = distinct !DILexicalBlock(scope: !3785, file: !2, line: 442, column: 13)
!3790 = !DILocation(line: 442, column: 21, scope: !3789)
!3791 = !DILocation(line: 442, column: 35, scope: !3789)
!3792 = !DILocation(line: 442, column: 38, scope: !3789)
!3793 = !DILocation(line: 442, column: 13, scope: !3785)
!3794 = !DILocation(line: 443, column: 11, scope: !3789)
!3795 = !DILocation(line: 445, column: 31, scope: !3789)
!3796 = !DILocation(line: 445, column: 39, scope: !3789)
!3797 = !DILocation(line: 445, column: 53, scope: !3789)
!3798 = !DILocation(line: 445, column: 11, scope: !3789)
!3799 = !DILocation(line: 446, column: 7, scope: !3785)
!3800 = !DILocation(line: 447, column: 16, scope: !3801)
!3801 = distinct !DILexicalBlock(scope: !3780, file: !2, line: 447, column: 16)
!3802 = !DILocation(line: 447, column: 24, scope: !3801)
!3803 = !DILocation(line: 447, column: 36, scope: !3801)
!3804 = !DILocation(line: 447, column: 16, scope: !3780)
!3805 = !DILocation(line: 448, column: 40, scope: !3806)
!3806 = distinct !DILexicalBlock(scope: !3801, file: !2, line: 447, column: 53)
!3807 = !DILocation(line: 448, column: 34, scope: !3806)
!3808 = !DILocation(line: 448, column: 9, scope: !3806)
!3809 = !DILocation(line: 449, column: 13, scope: !3810)
!3810 = distinct !DILexicalBlock(scope: !3806, file: !2, line: 449, column: 13)
!3811 = !DILocation(line: 449, column: 21, scope: !3810)
!3812 = !DILocation(line: 449, column: 37, scope: !3810)
!3813 = !DILocation(line: 449, column: 43, scope: !3810)
!3814 = !DILocation(line: 449, column: 13, scope: !3806)
!3815 = !DILocation(line: 450, column: 11, scope: !3810)
!3816 = !DILocation(line: 452, column: 39, scope: !3817)
!3817 = distinct !DILexicalBlock(scope: !3810, file: !2, line: 451, column: 14)
!3818 = !DILocation(line: 452, column: 47, scope: !3817)
!3819 = !DILocation(line: 452, column: 63, scope: !3817)
!3820 = !DILocation(line: 453, column: 18, scope: !3817)
!3821 = !DILocation(line: 453, column: 26, scope: !3817)
!3822 = !DILocation(line: 453, column: 42, scope: !3817)
!3823 = !DILocation(line: 452, column: 11, scope: !3817)
!3824 = !DILocation(line: 455, column: 7, scope: !3806)
!3825 = !DILocation(line: 456, column: 16, scope: !3826)
!3826 = distinct !DILexicalBlock(scope: !3801, file: !2, line: 456, column: 16)
!3827 = !DILocation(line: 456, column: 24, scope: !3826)
!3828 = !DILocation(line: 456, column: 36, scope: !3826)
!3829 = !DILocation(line: 456, column: 55, scope: !3826)
!3830 = !DILocation(line: 457, column: 16, scope: !3826)
!3831 = !DILocation(line: 457, column: 24, scope: !3826)
!3832 = !DILocation(line: 457, column: 36, scope: !3826)
!3833 = !DILocation(line: 456, column: 16, scope: !3801)
!3834 = !DILocation(line: 458, column: 40, scope: !3835)
!3835 = distinct !DILexicalBlock(scope: !3826, file: !2, line: 457, column: 54)
!3836 = !DILocation(line: 458, column: 34, scope: !3835)
!3837 = !DILocation(line: 458, column: 9, scope: !3835)
!3838 = !DILocation(line: 459, column: 14, scope: !3839)
!3839 = distinct !DILexicalBlock(scope: !3835, file: !2, line: 459, column: 13)
!3840 = !DILocation(line: 459, column: 22, scope: !3839)
!3841 = !DILocation(line: 459, column: 36, scope: !3839)
!3842 = !DILocation(line: 459, column: 38, scope: !3839)
!3843 = !DILocation(line: 459, column: 49, scope: !3839)
!3844 = !DILocation(line: 459, column: 57, scope: !3839)
!3845 = !DILocation(line: 459, column: 71, scope: !3839)
!3846 = !DILocation(line: 459, column: 42, scope: !3839)
!3847 = !DILocation(line: 459, column: 13, scope: !3835)
!3848 = !DILocation(line: 460, column: 11, scope: !3839)
!3849 = !DILocation(line: 462, column: 20, scope: !3839)
!3850 = !DILocation(line: 462, column: 28, scope: !3839)
!3851 = !DILocation(line: 462, column: 42, scope: !3839)
!3852 = !DILocation(line: 462, column: 11, scope: !3839)
!3853 = !DILocation(line: 463, column: 7, scope: !3835)
!3854 = !DILocation(line: 464, column: 5, scope: !3658)
!3855 = !DILocation(line: 465, column: 3, scope: !3606)
!3856 = !DILocation(line: 385, column: 48, scope: !3599)
!3857 = !DILocation(line: 385, column: 3, scope: !3599)
!3858 = distinct !{!3858, !3604, !3859, !1303}
!3859 = !DILocation(line: 465, column: 3, scope: !3596)
!3860 = !DILocation(line: 466, column: 7, scope: !3861)
!3861 = distinct !DILexicalBlock(scope: !3489, file: !2, line: 466, column: 7)
!3862 = !DILocation(line: 466, column: 11, scope: !3861)
!3863 = !DILocation(line: 466, column: 7, scope: !3489)
!3864 = !DILocation(line: 467, column: 15, scope: !3861)
!3865 = !DILocation(line: 467, column: 19, scope: !3861)
!3866 = !DILocation(line: 467, column: 32, scope: !3861)
!3867 = !DILocation(line: 467, column: 36, scope: !3861)
!3868 = !DILocation(line: 467, column: 46, scope: !3861)
!3869 = !DILocation(line: 467, column: 50, scope: !3861)
!3870 = !DILocation(line: 467, column: 69, scope: !3861)
!3871 = !DILocation(line: 467, column: 13, scope: !3861)
!3872 = !DILocation(line: 467, column: 5, scope: !3861)
!3873 = !DILocation(line: 468, column: 8, scope: !3874)
!3874 = distinct !DILexicalBlock(scope: !3489, file: !2, line: 468, column: 7)
!3875 = !DILocation(line: 468, column: 7, scope: !3489)
!3876 = !DILocation(line: 469, column: 9, scope: !3877)
!3877 = distinct !DILexicalBlock(scope: !3878, file: !2, line: 469, column: 9)
!3878 = distinct !DILexicalBlock(scope: !3874, file: !2, line: 468, column: 17)
!3879 = !DILocation(line: 469, column: 13, scope: !3877)
!3880 = !DILocation(line: 469, column: 9, scope: !3878)
!3881 = !DILocation(line: 471, column: 14, scope: !3882)
!3882 = distinct !DILexicalBlock(scope: !3877, file: !2, line: 469, column: 30)
!3883 = !DILocation(line: 471, column: 18, scope: !3882)
!3884 = !DILocation(line: 471, column: 55, scope: !3882)
!3885 = !DILocation(line: 471, column: 59, scope: !3882)
!3886 = !DILocation(line: 471, column: 29, scope: !3882)
!3887 = !DILocation(line: 471, column: 27, scope: !3882)
!3888 = !DILocation(line: 470, column: 7, scope: !3882)
!3889 = !DILocation(line: 472, column: 5, scope: !3882)
!3890 = !DILocation(line: 474, column: 12, scope: !3878)
!3891 = !DILocation(line: 474, column: 16, scope: !3878)
!3892 = !DILocation(line: 474, column: 31, scope: !3878)
!3893 = !DILocation(line: 474, column: 35, scope: !3878)
!3894 = !DILocation(line: 473, column: 5, scope: !3878)
!3895 = !DILocation(line: 475, column: 3, scope: !3878)
!3896 = !DILocation(line: 476, column: 10, scope: !3489)
!3897 = !DILocation(line: 477, column: 1, scope: !3489)
!3898 = !DILocation(line: 476, column: 3, scope: !3489)
!3899 = !DISubprogram(name: "gt_parse_int", scope: !3486, file: !3486, line: 31, type: !3900, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3900 = !DISubroutineType(types: !3901)
!3901 = !{!649, !725, !690}
!3902 = !DISubprogram(name: "gt_parse_uint", scope: !3486, file: !3486, line: 35, type: !3903, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3903 = !DISubroutineType(types: !3904)
!3904 = !{!649, !726, !690}
!3905 = !DISubprogram(name: "gt_parse_word", scope: !3486, file: !3486, line: 43, type: !3906, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3906 = !DISubroutineType(types: !3907)
!3907 = !{!649, !727, !690}
!3908 = !DISubprogram(name: "gt_parse_uword", scope: !3486, file: !3486, line: 52, type: !3909, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3909 = !DISubroutineType(types: !3910)
!3910 = !{!649, !728, !690}
!3911 = !DISubprogram(name: "gt_str_array_add_cstr", scope: !3912, file: !3912, line: 31, type: !3913, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3912 = !DIFile(filename: "src/core/str_array_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "d2f5724ae7121552c301a489d5e7f125")
!3913 = !DISubroutineType(types: !3914)
!3914 = !{null, !3915, !690}
!3915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3916, size: 64)
!3916 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtStrArray", file: !3912, line: 24, baseType: !3917)
!3917 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtStrArray", file: !3912, line: 24, flags: DIFlagFwdDecl)
!3918 = distinct !DISubprogram(name: "check_mandatory_options", scope: !2, file: !2, line: 775, type: !3919, scopeLine: 776, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !3921)
!3919 = !DISubroutineType(types: !3920)
!3920 = !{!649, !828, !844}
!3921 = !{!3922, !3923, !3924, !3925}
!3922 = !DILocalVariable(name: "op", arg: 1, scope: !3918, file: !2, line: 775, type: !828)
!3923 = !DILocalVariable(name: "err", arg: 2, scope: !3918, file: !2, line: 775, type: !844)
!3924 = !DILocalVariable(name: "i", scope: !3918, file: !2, line: 777, type: !680)
!3925 = !DILocalVariable(name: "o", scope: !3918, file: !2, line: 778, type: !653)
!3926 = !DILocation(line: 775, column: 52, scope: !3918)
!3927 = !DILocation(line: 775, column: 65, scope: !3918)
!3928 = !DILocation(line: 777, column: 3, scope: !3918)
!3929 = !DILocation(line: 777, column: 11, scope: !3918)
!3930 = !DILocation(line: 778, column: 3, scope: !3918)
!3931 = !DILocation(line: 778, column: 13, scope: !3918)
!3932 = !DILocation(line: 779, column: 3, scope: !3918)
!3933 = !DILocation(line: 779, column: 3, scope: !3934)
!3934 = distinct !DILexicalBlock(scope: !3935, file: !2, line: 779, column: 3)
!3935 = distinct !DILexicalBlock(scope: !3918, file: !2, line: 779, column: 3)
!3936 = !DILocation(line: 779, column: 3, scope: !3935)
!3937 = !DILocation(line: 779, column: 3, scope: !3938)
!3938 = distinct !DILexicalBlock(scope: !3934, file: !2, line: 779, column: 3)
!3939 = !DILocation(line: 780, column: 3, scope: !3918)
!3940 = !DILocation(line: 780, column: 3, scope: !3941)
!3941 = distinct !DILexicalBlock(scope: !3942, file: !2, line: 780, column: 3)
!3942 = distinct !DILexicalBlock(scope: !3918, file: !2, line: 780, column: 3)
!3943 = !DILocation(line: 780, column: 3, scope: !3942)
!3944 = !DILocation(line: 780, column: 3, scope: !3945)
!3945 = distinct !DILexicalBlock(scope: !3941, file: !2, line: 780, column: 3)
!3946 = !DILocation(line: 781, column: 10, scope: !3947)
!3947 = distinct !DILexicalBlock(scope: !3918, file: !2, line: 781, column: 3)
!3948 = !DILocation(line: 781, column: 8, scope: !3947)
!3949 = !DILocation(line: 781, column: 15, scope: !3950)
!3950 = distinct !DILexicalBlock(scope: !3947, file: !2, line: 781, column: 3)
!3951 = !DILocation(line: 781, column: 33, scope: !3950)
!3952 = !DILocation(line: 781, column: 37, scope: !3950)
!3953 = !DILocation(line: 781, column: 19, scope: !3950)
!3954 = !DILocation(line: 781, column: 17, scope: !3950)
!3955 = !DILocation(line: 781, column: 3, scope: !3947)
!3956 = !DILocation(line: 782, column: 36, scope: !3957)
!3957 = distinct !DILexicalBlock(scope: !3950, file: !2, line: 781, column: 52)
!3958 = !DILocation(line: 782, column: 40, scope: !3957)
!3959 = !DILocation(line: 782, column: 49, scope: !3957)
!3960 = !DILocation(line: 782, column: 23, scope: !3957)
!3961 = !DILocation(line: 782, column: 9, scope: !3957)
!3962 = !DILocation(line: 782, column: 7, scope: !3957)
!3963 = !DILocation(line: 783, column: 9, scope: !3964)
!3964 = distinct !DILexicalBlock(scope: !3957, file: !2, line: 783, column: 9)
!3965 = !DILocation(line: 783, column: 12, scope: !3964)
!3966 = !{!759, !760, i64 73}
!3967 = !DILocation(line: 783, column: 25, scope: !3964)
!3968 = !DILocation(line: 783, column: 29, scope: !3964)
!3969 = !DILocation(line: 783, column: 32, scope: !3964)
!3970 = !DILocation(line: 783, column: 9, scope: !3957)
!3971 = !DILocation(line: 784, column: 20, scope: !3972)
!3972 = distinct !DILexicalBlock(scope: !3964, file: !2, line: 783, column: 40)
!3973 = !DILocation(line: 785, column: 31, scope: !3972)
!3974 = !DILocation(line: 785, column: 34, scope: !3972)
!3975 = !DILocation(line: 785, column: 20, scope: !3972)
!3976 = !DILocation(line: 784, column: 7, scope: !3972)
!3977 = !DILocation(line: 786, column: 7, scope: !3972)
!3978 = !DILocation(line: 788, column: 3, scope: !3957)
!3979 = !DILocation(line: 781, column: 48, scope: !3950)
!3980 = !DILocation(line: 781, column: 3, scope: !3950)
!3981 = distinct !{!3981, !3955, !3982, !1303}
!3982 = !DILocation(line: 788, column: 3, scope: !3947)
!3983 = !DILocation(line: 789, column: 3, scope: !3918)
!3984 = !DILocation(line: 790, column: 1, scope: !3918)
!3985 = distinct !DISubprogram(name: "check_option_implications", scope: !2, file: !2, line: 792, type: !3919, scopeLine: 793, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !3986)
!3986 = !{!3987, !3988, !3989, !3990, !3991, !3992, !3993, !3994, !3995, !3996, !3997}
!3987 = !DILocalVariable(name: "op", arg: 1, scope: !3985, file: !2, line: 792, type: !828)
!3988 = !DILocalVariable(name: "err", arg: 2, scope: !3985, file: !2, line: 792, type: !844)
!3989 = !DILocalVariable(name: "i", scope: !3985, file: !2, line: 794, type: !680)
!3990 = !DILocalVariable(name: "j", scope: !3985, file: !2, line: 794, type: !680)
!3991 = !DILocalVariable(name: "k", scope: !3985, file: !2, line: 794, type: !680)
!3992 = !DILocalVariable(name: "l", scope: !3985, file: !2, line: 794, type: !680)
!3993 = !DILocalVariable(name: "implied_option_array", scope: !3985, file: !2, line: 795, type: !716)
!3994 = !DILocalVariable(name: "o", scope: !3985, file: !2, line: 796, type: !653)
!3995 = !DILocalVariable(name: "implied_option", scope: !3985, file: !2, line: 796, type: !653)
!3996 = !DILocalVariable(name: "option_set", scope: !3985, file: !2, line: 797, type: !605)
!3997 = !DILocalVariable(name: "gt_error_str", scope: !3985, file: !2, line: 798, type: !660)
!3998 = !DILocation(line: 792, column: 54, scope: !3985)
!3999 = !DILocation(line: 792, column: 67, scope: !3985)
!4000 = !DILocation(line: 794, column: 3, scope: !3985)
!4001 = !DILocation(line: 794, column: 11, scope: !3985)
!4002 = !DILocation(line: 794, column: 14, scope: !3985)
!4003 = !DILocation(line: 794, column: 17, scope: !3985)
!4004 = !DILocation(line: 794, column: 20, scope: !3985)
!4005 = !DILocation(line: 795, column: 3, scope: !3985)
!4006 = !DILocation(line: 795, column: 12, scope: !3985)
!4007 = !DILocation(line: 796, column: 3, scope: !3985)
!4008 = !DILocation(line: 796, column: 13, scope: !3985)
!4009 = !DILocation(line: 796, column: 17, scope: !3985)
!4010 = !DILocation(line: 797, column: 3, scope: !3985)
!4011 = !DILocation(line: 797, column: 16, scope: !3985)
!4012 = !DILocation(line: 798, column: 3, scope: !3985)
!4013 = !DILocation(line: 798, column: 10, scope: !3985)
!4014 = !DILocation(line: 799, column: 3, scope: !3985)
!4015 = !DILocation(line: 799, column: 3, scope: !4016)
!4016 = distinct !DILexicalBlock(scope: !4017, file: !2, line: 799, column: 3)
!4017 = distinct !DILexicalBlock(scope: !3985, file: !2, line: 799, column: 3)
!4018 = !DILocation(line: 799, column: 3, scope: !4017)
!4019 = !DILocation(line: 799, column: 3, scope: !4020)
!4020 = distinct !DILexicalBlock(scope: !4016, file: !2, line: 799, column: 3)
!4021 = !DILocation(line: 801, column: 10, scope: !4022)
!4022 = distinct !DILexicalBlock(scope: !3985, file: !2, line: 801, column: 3)
!4023 = !DILocation(line: 801, column: 8, scope: !4022)
!4024 = !DILocation(line: 801, column: 15, scope: !4025)
!4025 = distinct !DILexicalBlock(scope: !4022, file: !2, line: 801, column: 3)
!4026 = !DILocation(line: 801, column: 33, scope: !4025)
!4027 = !DILocation(line: 801, column: 37, scope: !4025)
!4028 = !DILocation(line: 801, column: 19, scope: !4025)
!4029 = !DILocation(line: 801, column: 17, scope: !4025)
!4030 = !DILocation(line: 801, column: 3, scope: !4022)
!4031 = !DILocation(line: 802, column: 36, scope: !4032)
!4032 = distinct !DILexicalBlock(scope: !4025, file: !2, line: 801, column: 52)
!4033 = !DILocation(line: 802, column: 40, scope: !4032)
!4034 = !DILocation(line: 802, column: 49, scope: !4032)
!4035 = !DILocation(line: 802, column: 23, scope: !4032)
!4036 = !DILocation(line: 802, column: 9, scope: !4032)
!4037 = !DILocation(line: 802, column: 7, scope: !4032)
!4038 = !DILocation(line: 803, column: 9, scope: !4039)
!4039 = distinct !DILexicalBlock(scope: !4032, file: !2, line: 803, column: 9)
!4040 = !DILocation(line: 803, column: 12, scope: !4039)
!4041 = !{!759, !744, i64 80}
!4042 = !DILocation(line: 803, column: 25, scope: !4039)
!4043 = !DILocation(line: 803, column: 28, scope: !4039)
!4044 = !DILocation(line: 803, column: 31, scope: !4039)
!4045 = !DILocation(line: 803, column: 9, scope: !4032)
!4046 = !DILocation(line: 804, column: 14, scope: !4047)
!4047 = distinct !DILexicalBlock(scope: !4048, file: !2, line: 804, column: 7)
!4048 = distinct !DILexicalBlock(scope: !4039, file: !2, line: 803, column: 39)
!4049 = !DILocation(line: 804, column: 12, scope: !4047)
!4050 = !DILocation(line: 804, column: 19, scope: !4051)
!4051 = distinct !DILexicalBlock(scope: !4047, file: !2, line: 804, column: 7)
!4052 = !DILocation(line: 804, column: 37, scope: !4051)
!4053 = !DILocation(line: 804, column: 40, scope: !4051)
!4054 = !DILocation(line: 804, column: 23, scope: !4051)
!4055 = !DILocation(line: 804, column: 21, scope: !4051)
!4056 = !DILocation(line: 804, column: 7, scope: !4047)
!4057 = !DILocation(line: 805, column: 58, scope: !4058)
!4058 = distinct !DILexicalBlock(scope: !4051, file: !2, line: 804, column: 60)
!4059 = !DILocation(line: 805, column: 61, scope: !4058)
!4060 = !DILocation(line: 805, column: 75, scope: !4058)
!4061 = !DILocation(line: 805, column: 45, scope: !4058)
!4062 = !DILocation(line: 805, column: 32, scope: !4058)
!4063 = !DILocation(line: 805, column: 30, scope: !4058)
!4064 = !DILocation(line: 806, column: 9, scope: !4058)
!4065 = !DILocation(line: 806, column: 9, scope: !4066)
!4066 = distinct !DILexicalBlock(scope: !4067, file: !2, line: 806, column: 9)
!4067 = distinct !DILexicalBlock(scope: !4058, file: !2, line: 806, column: 9)
!4068 = !DILocation(line: 806, column: 9, scope: !4067)
!4069 = !DILocation(line: 806, column: 9, scope: !4070)
!4070 = distinct !DILexicalBlock(scope: !4066, file: !2, line: 806, column: 9)
!4071 = !DILocation(line: 807, column: 27, scope: !4072)
!4072 = distinct !DILexicalBlock(scope: !4058, file: !2, line: 807, column: 13)
!4073 = !DILocation(line: 807, column: 13, scope: !4072)
!4074 = !DILocation(line: 807, column: 49, scope: !4072)
!4075 = !DILocation(line: 807, column: 13, scope: !4058)
!4076 = !DILocation(line: 809, column: 55, scope: !4077)
!4077 = distinct !DILexicalBlock(scope: !4072, file: !2, line: 807, column: 55)
!4078 = !DILocation(line: 809, column: 42, scope: !4077)
!4079 = !DILocation(line: 809, column: 28, scope: !4077)
!4080 = !DILocation(line: 809, column: 26, scope: !4077)
!4081 = !DILocation(line: 810, column: 16, scope: !4082)
!4082 = distinct !DILexicalBlock(scope: !4077, file: !2, line: 810, column: 15)
!4083 = !DILocation(line: 810, column: 32, scope: !4082)
!4084 = !DILocation(line: 810, column: 15, scope: !4077)
!4085 = !DILocation(line: 811, column: 26, scope: !4086)
!4086 = distinct !DILexicalBlock(scope: !4082, file: !2, line: 810, column: 40)
!4087 = !DILocation(line: 812, column: 34, scope: !4086)
!4088 = !DILocation(line: 812, column: 37, scope: !4086)
!4089 = !DILocation(line: 812, column: 23, scope: !4086)
!4090 = !DILocation(line: 813, column: 34, scope: !4086)
!4091 = !DILocation(line: 813, column: 50, scope: !4086)
!4092 = !DILocation(line: 813, column: 23, scope: !4086)
!4093 = !DILocation(line: 811, column: 13, scope: !4086)
!4094 = !DILocation(line: 814, column: 13, scope: !4086)
!4095 = !DILocation(line: 816, column: 9, scope: !4077)
!4096 = !DILocation(line: 820, column: 22, scope: !4097)
!4097 = distinct !DILexicalBlock(scope: !4072, file: !2, line: 817, column: 14)
!4098 = !DILocation(line: 821, column: 18, scope: !4099)
!4099 = distinct !DILexicalBlock(scope: !4097, file: !2, line: 821, column: 11)
!4100 = !DILocation(line: 821, column: 16, scope: !4099)
!4101 = !DILocation(line: 821, column: 23, scope: !4102)
!4102 = distinct !DILexicalBlock(scope: !4099, file: !2, line: 821, column: 11)
!4103 = !DILocation(line: 821, column: 41, scope: !4102)
!4104 = !DILocation(line: 821, column: 27, scope: !4102)
!4105 = !DILocation(line: 821, column: 25, scope: !4102)
!4106 = !DILocation(line: 821, column: 11, scope: !4099)
!4107 = !DILocation(line: 822, column: 57, scope: !4108)
!4108 = distinct !DILexicalBlock(scope: !4102, file: !2, line: 821, column: 69)
!4109 = !DILocation(line: 823, column: 57, scope: !4108)
!4110 = !DILocation(line: 822, column: 44, scope: !4108)
!4111 = !DILocation(line: 822, column: 30, scope: !4108)
!4112 = !DILocation(line: 822, column: 28, scope: !4108)
!4113 = !DILocation(line: 824, column: 17, scope: !4114)
!4114 = distinct !DILexicalBlock(scope: !4108, file: !2, line: 824, column: 17)
!4115 = !DILocation(line: 824, column: 33, scope: !4114)
!4116 = !DILocation(line: 824, column: 17, scope: !4108)
!4117 = !DILocation(line: 825, column: 26, scope: !4118)
!4118 = distinct !DILexicalBlock(scope: !4114, file: !2, line: 824, column: 41)
!4119 = !DILocation(line: 826, column: 15, scope: !4118)
!4120 = !DILocation(line: 828, column: 11, scope: !4108)
!4121 = !DILocation(line: 821, column: 65, scope: !4102)
!4122 = !DILocation(line: 821, column: 11, scope: !4102)
!4123 = distinct !{!4123, !4106, !4124, !1303}
!4124 = !DILocation(line: 828, column: 11, scope: !4099)
!4125 = !DILocation(line: 829, column: 16, scope: !4126)
!4126 = distinct !DILexicalBlock(scope: !4097, file: !2, line: 829, column: 15)
!4127 = !DILocation(line: 829, column: 15, scope: !4097)
!4128 = !DILocation(line: 830, column: 28, scope: !4129)
!4129 = distinct !DILexicalBlock(scope: !4126, file: !2, line: 829, column: 28)
!4130 = !DILocation(line: 830, column: 26, scope: !4129)
!4131 = !DILocation(line: 831, column: 31, scope: !4129)
!4132 = !DILocation(line: 831, column: 45, scope: !4129)
!4133 = !DILocation(line: 831, column: 48, scope: !4129)
!4134 = !DILocation(line: 831, column: 13, scope: !4129)
!4135 = !DILocation(line: 832, column: 32, scope: !4129)
!4136 = !DILocation(line: 832, column: 13, scope: !4129)
!4137 = !DILocation(line: 833, column: 20, scope: !4138)
!4138 = distinct !DILexicalBlock(scope: !4129, file: !2, line: 833, column: 13)
!4139 = !DILocation(line: 833, column: 18, scope: !4138)
!4140 = !DILocation(line: 833, column: 25, scope: !4141)
!4141 = distinct !DILexicalBlock(scope: !4138, file: !2, line: 833, column: 13)
!4142 = !DILocation(line: 833, column: 43, scope: !4141)
!4143 = !DILocation(line: 833, column: 29, scope: !4141)
!4144 = !DILocation(line: 833, column: 65, scope: !4141)
!4145 = !DILocation(line: 833, column: 27, scope: !4141)
!4146 = !DILocation(line: 833, column: 13, scope: !4138)
!4147 = !DILocation(line: 834, column: 34, scope: !4148)
!4148 = distinct !DILexicalBlock(scope: !4141, file: !2, line: 833, column: 75)
!4149 = !DILocation(line: 834, column: 15, scope: !4148)
!4150 = !DILocation(line: 835, column: 33, scope: !4148)
!4151 = !DILocation(line: 837, column: 47, scope: !4148)
!4152 = !DILocation(line: 837, column: 69, scope: !4148)
!4153 = !DILocation(line: 837, column: 34, scope: !4148)
!4154 = !DILocation(line: 836, column: 34, scope: !4148)
!4155 = !DILocation(line: 838, column: 35, scope: !4148)
!4156 = !DILocation(line: 835, column: 15, scope: !4148)
!4157 = !DILocation(line: 839, column: 34, scope: !4148)
!4158 = !DILocation(line: 839, column: 15, scope: !4148)
!4159 = !DILocation(line: 840, column: 33, scope: !4160)
!4160 = distinct !DILexicalBlock(scope: !4148, file: !2, line: 840, column: 19)
!4161 = !DILocation(line: 840, column: 19, scope: !4160)
!4162 = !DILocation(line: 840, column: 55, scope: !4160)
!4163 = !DILocation(line: 840, column: 19, scope: !4148)
!4164 = !DILocation(line: 841, column: 36, scope: !4160)
!4165 = !DILocation(line: 841, column: 17, scope: !4160)
!4166 = !DILocation(line: 842, column: 13, scope: !4148)
!4167 = !DILocation(line: 833, column: 71, scope: !4141)
!4168 = !DILocation(line: 833, column: 13, scope: !4141)
!4169 = distinct !{!4169, !4146, !4170, !1303}
!4170 = !DILocation(line: 842, column: 13, scope: !4138)
!4171 = !DILocation(line: 843, column: 32, scope: !4129)
!4172 = !DILocation(line: 843, column: 13, scope: !4129)
!4173 = !DILocation(line: 844, column: 31, scope: !4129)
!4174 = !DILocation(line: 846, column: 45, scope: !4129)
!4175 = !DILocation(line: 847, column: 59, scope: !4129)
!4176 = !DILocation(line: 847, column: 45, scope: !4129)
!4177 = !DILocation(line: 848, column: 45, scope: !4129)
!4178 = !DILocation(line: 846, column: 32, scope: !4129)
!4179 = !DILocation(line: 845, column: 32, scope: !4129)
!4180 = !DILocation(line: 849, column: 33, scope: !4129)
!4181 = !DILocation(line: 844, column: 13, scope: !4129)
!4182 = !DILocation(line: 850, column: 32, scope: !4129)
!4183 = !DILocation(line: 850, column: 13, scope: !4129)
!4184 = !DILocation(line: 851, column: 26, scope: !4129)
!4185 = !DILocation(line: 851, column: 48, scope: !4129)
!4186 = !DILocation(line: 851, column: 37, scope: !4129)
!4187 = !DILocation(line: 851, column: 13, scope: !4129)
!4188 = !DILocation(line: 852, column: 27, scope: !4129)
!4189 = !DILocation(line: 852, column: 13, scope: !4129)
!4190 = !DILocation(line: 853, column: 13, scope: !4129)
!4191 = !DILocation(line: 856, column: 7, scope: !4058)
!4192 = !DILocation(line: 804, column: 56, scope: !4051)
!4193 = !DILocation(line: 804, column: 7, scope: !4051)
!4194 = distinct !{!4194, !4056, !4195, !1303}
!4195 = !DILocation(line: 856, column: 7, scope: !4047)
!4196 = !DILocation(line: 857, column: 5, scope: !4048)
!4197 = !DILocation(line: 858, column: 3, scope: !4032)
!4198 = !DILocation(line: 801, column: 48, scope: !4025)
!4199 = !DILocation(line: 801, column: 3, scope: !4025)
!4200 = distinct !{!4200, !4030, !4201, !1303}
!4201 = !DILocation(line: 858, column: 3, scope: !4022)
!4202 = !DILocation(line: 859, column: 3, scope: !3985)
!4203 = !DILocation(line: 860, column: 1, scope: !3985)
!4204 = distinct !DISubprogram(name: "check_option_exclusions", scope: !2, file: !2, line: 862, type: !3919, scopeLine: 863, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !4205)
!4205 = !{!4206, !4207, !4208, !4209, !4210, !4211}
!4206 = !DILocalVariable(name: "op", arg: 1, scope: !4204, file: !2, line: 862, type: !828)
!4207 = !DILocalVariable(name: "err", arg: 2, scope: !4204, file: !2, line: 862, type: !844)
!4208 = !DILocalVariable(name: "i", scope: !4204, file: !2, line: 864, type: !680)
!4209 = !DILocalVariable(name: "j", scope: !4204, file: !2, line: 864, type: !680)
!4210 = !DILocalVariable(name: "o", scope: !4204, file: !2, line: 865, type: !653)
!4211 = !DILocalVariable(name: "excluded_option", scope: !4204, file: !2, line: 865, type: !653)
!4212 = !DILocation(line: 862, column: 52, scope: !4204)
!4213 = !DILocation(line: 862, column: 65, scope: !4204)
!4214 = !DILocation(line: 864, column: 3, scope: !4204)
!4215 = !DILocation(line: 864, column: 11, scope: !4204)
!4216 = !DILocation(line: 864, column: 14, scope: !4204)
!4217 = !DILocation(line: 865, column: 3, scope: !4204)
!4218 = !DILocation(line: 865, column: 13, scope: !4204)
!4219 = !DILocation(line: 865, column: 17, scope: !4204)
!4220 = !DILocation(line: 866, column: 3, scope: !4204)
!4221 = !DILocation(line: 866, column: 3, scope: !4222)
!4222 = distinct !DILexicalBlock(scope: !4223, file: !2, line: 866, column: 3)
!4223 = distinct !DILexicalBlock(scope: !4204, file: !2, line: 866, column: 3)
!4224 = !DILocation(line: 866, column: 3, scope: !4223)
!4225 = !DILocation(line: 866, column: 3, scope: !4226)
!4226 = distinct !DILexicalBlock(scope: !4222, file: !2, line: 866, column: 3)
!4227 = !DILocation(line: 868, column: 10, scope: !4228)
!4228 = distinct !DILexicalBlock(scope: !4204, file: !2, line: 868, column: 3)
!4229 = !DILocation(line: 868, column: 8, scope: !4228)
!4230 = !DILocation(line: 868, column: 15, scope: !4231)
!4231 = distinct !DILexicalBlock(scope: !4228, file: !2, line: 868, column: 3)
!4232 = !DILocation(line: 868, column: 33, scope: !4231)
!4233 = !DILocation(line: 868, column: 37, scope: !4231)
!4234 = !DILocation(line: 868, column: 19, scope: !4231)
!4235 = !DILocation(line: 868, column: 17, scope: !4231)
!4236 = !DILocation(line: 868, column: 3, scope: !4228)
!4237 = !DILocation(line: 869, column: 36, scope: !4238)
!4238 = distinct !DILexicalBlock(scope: !4231, file: !2, line: 868, column: 52)
!4239 = !DILocation(line: 869, column: 40, scope: !4238)
!4240 = !DILocation(line: 869, column: 49, scope: !4238)
!4241 = !DILocation(line: 869, column: 23, scope: !4238)
!4242 = !DILocation(line: 869, column: 9, scope: !4238)
!4243 = !DILocation(line: 869, column: 7, scope: !4238)
!4244 = !DILocation(line: 870, column: 9, scope: !4245)
!4245 = distinct !DILexicalBlock(scope: !4238, file: !2, line: 870, column: 9)
!4246 = !DILocation(line: 870, column: 12, scope: !4245)
!4247 = !{!759, !744, i64 88}
!4248 = !DILocation(line: 870, column: 23, scope: !4245)
!4249 = !DILocation(line: 870, column: 26, scope: !4245)
!4250 = !DILocation(line: 870, column: 29, scope: !4245)
!4251 = !DILocation(line: 870, column: 9, scope: !4238)
!4252 = !DILocation(line: 871, column: 14, scope: !4253)
!4253 = distinct !DILexicalBlock(scope: !4254, file: !2, line: 871, column: 7)
!4254 = distinct !DILexicalBlock(scope: !4245, file: !2, line: 870, column: 37)
!4255 = !DILocation(line: 871, column: 12, scope: !4253)
!4256 = !DILocation(line: 871, column: 19, scope: !4257)
!4257 = distinct !DILexicalBlock(scope: !4253, file: !2, line: 871, column: 7)
!4258 = !DILocation(line: 871, column: 37, scope: !4257)
!4259 = !DILocation(line: 871, column: 40, scope: !4257)
!4260 = !DILocation(line: 871, column: 23, scope: !4257)
!4261 = !DILocation(line: 871, column: 21, scope: !4257)
!4262 = !DILocation(line: 871, column: 7, scope: !4253)
!4263 = !DILocation(line: 872, column: 54, scope: !4264)
!4264 = distinct !DILexicalBlock(scope: !4257, file: !2, line: 871, column: 58)
!4265 = !DILocation(line: 872, column: 57, scope: !4264)
!4266 = !DILocation(line: 872, column: 69, scope: !4264)
!4267 = !DILocation(line: 872, column: 41, scope: !4264)
!4268 = !DILocation(line: 872, column: 27, scope: !4264)
!4269 = !DILocation(line: 872, column: 25, scope: !4264)
!4270 = !DILocation(line: 873, column: 13, scope: !4271)
!4271 = distinct !DILexicalBlock(scope: !4264, file: !2, line: 873, column: 13)
!4272 = !DILocation(line: 873, column: 30, scope: !4271)
!4273 = !DILocation(line: 873, column: 13, scope: !4264)
!4274 = !DILocation(line: 874, column: 24, scope: !4275)
!4275 = distinct !DILexicalBlock(scope: !4271, file: !2, line: 873, column: 38)
!4276 = !DILocation(line: 875, column: 44, scope: !4275)
!4277 = !DILocation(line: 875, column: 47, scope: !4275)
!4278 = !DILocation(line: 875, column: 33, scope: !4275)
!4279 = !DILocation(line: 876, column: 35, scope: !4275)
!4280 = !DILocation(line: 876, column: 52, scope: !4275)
!4281 = !DILocation(line: 876, column: 24, scope: !4275)
!4282 = !DILocation(line: 874, column: 11, scope: !4275)
!4283 = !DILocation(line: 877, column: 11, scope: !4275)
!4284 = !DILocation(line: 879, column: 7, scope: !4264)
!4285 = !DILocation(line: 871, column: 54, scope: !4257)
!4286 = !DILocation(line: 871, column: 7, scope: !4257)
!4287 = distinct !{!4287, !4262, !4288, !1303}
!4288 = !DILocation(line: 879, column: 7, scope: !4253)
!4289 = !DILocation(line: 880, column: 5, scope: !4254)
!4290 = !DILocation(line: 881, column: 3, scope: !4238)
!4291 = !DILocation(line: 868, column: 48, scope: !4231)
!4292 = !DILocation(line: 868, column: 3, scope: !4231)
!4293 = distinct !{!4293, !4236, !4294, !1303}
!4294 = !DILocation(line: 881, column: 3, scope: !4228)
!4295 = !DILocation(line: 882, column: 3, scope: !4204)
!4296 = !DILocation(line: 883, column: 1, scope: !4204)
!4297 = distinct !DISubprogram(name: "check_mandatory_either_options", scope: !2, file: !2, line: 885, type: !3919, scopeLine: 886, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !4298)
!4298 = !{!4299, !4300, !4301, !4302, !4303, !4304, !4305}
!4299 = !DILocalVariable(name: "op", arg: 1, scope: !4297, file: !2, line: 885, type: !828)
!4300 = !DILocalVariable(name: "err", arg: 2, scope: !4297, file: !2, line: 885, type: !844)
!4301 = !DILocalVariable(name: "i", scope: !4297, file: !2, line: 887, type: !680)
!4302 = !DILocalVariable(name: "o", scope: !4297, file: !2, line: 888, type: !653)
!4303 = !DILocalVariable(name: "meo_a", scope: !4297, file: !2, line: 888, type: !653)
!4304 = !DILocalVariable(name: "meo_b", scope: !4297, file: !2, line: 888, type: !653)
!4305 = !DILocalVariable(name: "meo_c", scope: !4297, file: !2, line: 888, type: !653)
!4306 = !DILocation(line: 885, column: 59, scope: !4297)
!4307 = !DILocation(line: 885, column: 72, scope: !4297)
!4308 = !DILocation(line: 887, column: 3, scope: !4297)
!4309 = !DILocation(line: 887, column: 11, scope: !4297)
!4310 = !DILocation(line: 888, column: 3, scope: !4297)
!4311 = !DILocation(line: 888, column: 13, scope: !4297)
!4312 = !DILocation(line: 888, column: 17, scope: !4297)
!4313 = !DILocation(line: 888, column: 25, scope: !4297)
!4314 = !DILocation(line: 888, column: 33, scope: !4297)
!4315 = !DILocation(line: 889, column: 3, scope: !4297)
!4316 = !DILocation(line: 889, column: 3, scope: !4317)
!4317 = distinct !DILexicalBlock(scope: !4318, file: !2, line: 889, column: 3)
!4318 = distinct !DILexicalBlock(scope: !4297, file: !2, line: 889, column: 3)
!4319 = !DILocation(line: 889, column: 3, scope: !4318)
!4320 = !DILocation(line: 889, column: 3, scope: !4321)
!4321 = distinct !DILexicalBlock(scope: !4317, file: !2, line: 889, column: 3)
!4322 = !DILocation(line: 891, column: 10, scope: !4323)
!4323 = distinct !DILexicalBlock(scope: !4297, file: !2, line: 891, column: 3)
!4324 = !DILocation(line: 891, column: 8, scope: !4323)
!4325 = !DILocation(line: 891, column: 15, scope: !4326)
!4326 = distinct !DILexicalBlock(scope: !4323, file: !2, line: 891, column: 3)
!4327 = !DILocation(line: 891, column: 33, scope: !4326)
!4328 = !DILocation(line: 891, column: 37, scope: !4326)
!4329 = !DILocation(line: 891, column: 19, scope: !4326)
!4330 = !DILocation(line: 891, column: 17, scope: !4326)
!4331 = !DILocation(line: 891, column: 3, scope: !4323)
!4332 = !DILocation(line: 892, column: 36, scope: !4333)
!4333 = distinct !DILexicalBlock(scope: !4326, file: !2, line: 891, column: 52)
!4334 = !DILocation(line: 892, column: 40, scope: !4333)
!4335 = !DILocation(line: 892, column: 49, scope: !4333)
!4336 = !DILocation(line: 892, column: 23, scope: !4333)
!4337 = !DILocation(line: 892, column: 9, scope: !4333)
!4338 = !DILocation(line: 892, column: 7, scope: !4333)
!4339 = !DILocation(line: 893, column: 9, scope: !4340)
!4340 = distinct !DILexicalBlock(scope: !4333, file: !2, line: 893, column: 9)
!4341 = !DILocation(line: 893, column: 12, scope: !4340)
!4342 = !{!759, !744, i64 96}
!4343 = !DILocation(line: 893, column: 9, scope: !4333)
!4344 = !DILocation(line: 894, column: 25, scope: !4345)
!4345 = distinct !DILexicalBlock(scope: !4346, file: !2, line: 894, column: 11)
!4346 = distinct !DILexicalBlock(scope: !4340, file: !2, line: 893, column: 38)
!4347 = !DILocation(line: 894, column: 28, scope: !4345)
!4348 = !DILocation(line: 894, column: 11, scope: !4345)
!4349 = !DILocation(line: 894, column: 54, scope: !4345)
!4350 = !DILocation(line: 894, column: 11, scope: !4346)
!4351 = !DILocation(line: 895, column: 50, scope: !4352)
!4352 = distinct !DILexicalBlock(scope: !4345, file: !2, line: 894, column: 60)
!4353 = !DILocation(line: 895, column: 53, scope: !4352)
!4354 = !DILocation(line: 895, column: 31, scope: !4352)
!4355 = !DILocation(line: 895, column: 17, scope: !4352)
!4356 = !DILocation(line: 895, column: 15, scope: !4352)
!4357 = !DILocation(line: 896, column: 14, scope: !4358)
!4358 = distinct !DILexicalBlock(scope: !4352, file: !2, line: 896, column: 13)
!4359 = !DILocation(line: 896, column: 17, scope: !4358)
!4360 = !DILocation(line: 896, column: 24, scope: !4358)
!4361 = !DILocation(line: 896, column: 28, scope: !4358)
!4362 = !DILocation(line: 896, column: 35, scope: !4358)
!4363 = !DILocation(line: 896, column: 13, scope: !4352)
!4364 = !DILocation(line: 897, column: 24, scope: !4365)
!4365 = distinct !DILexicalBlock(scope: !4358, file: !2, line: 896, column: 43)
!4366 = !DILocation(line: 898, column: 48, scope: !4365)
!4367 = !DILocation(line: 898, column: 51, scope: !4365)
!4368 = !DILocation(line: 898, column: 37, scope: !4365)
!4369 = !DILocation(line: 899, column: 35, scope: !4365)
!4370 = !DILocation(line: 899, column: 42, scope: !4365)
!4371 = !DILocation(line: 899, column: 24, scope: !4365)
!4372 = !DILocation(line: 897, column: 11, scope: !4365)
!4373 = !DILocation(line: 900, column: 11, scope: !4365)
!4374 = !DILocation(line: 902, column: 7, scope: !4352)
!4375 = !DILocation(line: 903, column: 30, scope: !4376)
!4376 = distinct !DILexicalBlock(scope: !4345, file: !2, line: 903, column: 16)
!4377 = !DILocation(line: 903, column: 33, scope: !4376)
!4378 = !DILocation(line: 903, column: 16, scope: !4376)
!4379 = !DILocation(line: 903, column: 59, scope: !4376)
!4380 = !DILocation(line: 903, column: 16, scope: !4345)
!4381 = !DILocation(line: 904, column: 44, scope: !4382)
!4382 = distinct !DILexicalBlock(scope: !4376, file: !2, line: 903, column: 65)
!4383 = !DILocation(line: 904, column: 47, scope: !4382)
!4384 = !DILocation(line: 904, column: 31, scope: !4382)
!4385 = !DILocation(line: 904, column: 17, scope: !4382)
!4386 = !DILocation(line: 904, column: 15, scope: !4382)
!4387 = !DILocation(line: 905, column: 44, scope: !4382)
!4388 = !DILocation(line: 905, column: 47, scope: !4382)
!4389 = !DILocation(line: 905, column: 31, scope: !4382)
!4390 = !DILocation(line: 905, column: 17, scope: !4382)
!4391 = !DILocation(line: 905, column: 15, scope: !4382)
!4392 = !DILocation(line: 906, column: 14, scope: !4393)
!4393 = distinct !DILexicalBlock(scope: !4382, file: !2, line: 906, column: 13)
!4394 = !DILocation(line: 906, column: 17, scope: !4393)
!4395 = !DILocation(line: 906, column: 24, scope: !4393)
!4396 = !DILocation(line: 906, column: 28, scope: !4393)
!4397 = !DILocation(line: 906, column: 35, scope: !4393)
!4398 = !DILocation(line: 906, column: 42, scope: !4393)
!4399 = !DILocation(line: 906, column: 46, scope: !4393)
!4400 = !DILocation(line: 906, column: 53, scope: !4393)
!4401 = !DILocation(line: 906, column: 13, scope: !4382)
!4402 = !DILocation(line: 907, column: 24, scope: !4403)
!4403 = distinct !DILexicalBlock(scope: !4393, file: !2, line: 906, column: 61)
!4404 = !DILocation(line: 908, column: 59, scope: !4403)
!4405 = !DILocation(line: 908, column: 62, scope: !4403)
!4406 = !DILocation(line: 908, column: 48, scope: !4403)
!4407 = !DILocation(line: 909, column: 35, scope: !4403)
!4408 = !DILocation(line: 909, column: 42, scope: !4403)
!4409 = !DILocation(line: 909, column: 24, scope: !4403)
!4410 = !DILocation(line: 910, column: 35, scope: !4403)
!4411 = !DILocation(line: 910, column: 42, scope: !4403)
!4412 = !DILocation(line: 910, column: 24, scope: !4403)
!4413 = !DILocation(line: 907, column: 11, scope: !4403)
!4414 = !DILocation(line: 911, column: 11, scope: !4403)
!4415 = !DILocation(line: 913, column: 7, scope: !4382)
!4416 = !DILocation(line: 917, column: 27, scope: !4417)
!4417 = distinct !DILexicalBlock(scope: !4418, file: !2, line: 917, column: 13)
!4418 = distinct !DILexicalBlock(scope: !4376, file: !2, line: 914, column: 12)
!4419 = !DILocation(line: 917, column: 30, scope: !4417)
!4420 = !DILocation(line: 917, column: 13, scope: !4417)
!4421 = !DILocation(line: 917, column: 56, scope: !4417)
!4422 = !DILocation(line: 917, column: 13, scope: !4418)
!4423 = !DILocation(line: 918, column: 46, scope: !4424)
!4424 = distinct !DILexicalBlock(scope: !4417, file: !2, line: 917, column: 62)
!4425 = !DILocation(line: 918, column: 49, scope: !4424)
!4426 = !DILocation(line: 918, column: 33, scope: !4424)
!4427 = !DILocation(line: 918, column: 19, scope: !4424)
!4428 = !DILocation(line: 918, column: 17, scope: !4424)
!4429 = !DILocation(line: 919, column: 46, scope: !4424)
!4430 = !DILocation(line: 919, column: 49, scope: !4424)
!4431 = !DILocation(line: 919, column: 33, scope: !4424)
!4432 = !DILocation(line: 919, column: 19, scope: !4424)
!4433 = !DILocation(line: 919, column: 17, scope: !4424)
!4434 = !DILocation(line: 920, column: 46, scope: !4424)
!4435 = !DILocation(line: 920, column: 49, scope: !4424)
!4436 = !DILocation(line: 920, column: 33, scope: !4424)
!4437 = !DILocation(line: 920, column: 19, scope: !4424)
!4438 = !DILocation(line: 920, column: 17, scope: !4424)
!4439 = !DILocation(line: 921, column: 16, scope: !4440)
!4440 = distinct !DILexicalBlock(scope: !4424, file: !2, line: 921, column: 15)
!4441 = !DILocation(line: 921, column: 19, scope: !4440)
!4442 = !DILocation(line: 921, column: 26, scope: !4440)
!4443 = !DILocation(line: 921, column: 30, scope: !4440)
!4444 = !DILocation(line: 921, column: 37, scope: !4440)
!4445 = !DILocation(line: 921, column: 44, scope: !4440)
!4446 = !DILocation(line: 921, column: 48, scope: !4440)
!4447 = !DILocation(line: 921, column: 55, scope: !4440)
!4448 = !DILocation(line: 922, column: 17, scope: !4440)
!4449 = !DILocation(line: 922, column: 21, scope: !4440)
!4450 = !DILocation(line: 922, column: 28, scope: !4440)
!4451 = !DILocation(line: 921, column: 15, scope: !4424)
!4452 = !DILocation(line: 923, column: 26, scope: !4453)
!4453 = distinct !DILexicalBlock(scope: !4440, file: !2, line: 922, column: 36)
!4454 = !DILocation(line: 925, column: 42, scope: !4453)
!4455 = !DILocation(line: 925, column: 45, scope: !4453)
!4456 = !DILocation(line: 925, column: 31, scope: !4453)
!4457 = !DILocation(line: 926, column: 42, scope: !4453)
!4458 = !DILocation(line: 926, column: 49, scope: !4453)
!4459 = !DILocation(line: 926, column: 31, scope: !4453)
!4460 = !DILocation(line: 927, column: 42, scope: !4453)
!4461 = !DILocation(line: 927, column: 49, scope: !4453)
!4462 = !DILocation(line: 927, column: 31, scope: !4453)
!4463 = !DILocation(line: 928, column: 42, scope: !4453)
!4464 = !DILocation(line: 928, column: 49, scope: !4453)
!4465 = !DILocation(line: 928, column: 31, scope: !4453)
!4466 = !DILocation(line: 923, column: 13, scope: !4453)
!4467 = !DILocation(line: 929, column: 13, scope: !4453)
!4468 = !DILocation(line: 931, column: 9, scope: !4424)
!4469 = !DILocation(line: 933, column: 5, scope: !4346)
!4470 = !DILocation(line: 934, column: 3, scope: !4333)
!4471 = !DILocation(line: 891, column: 48, scope: !4326)
!4472 = !DILocation(line: 891, column: 3, scope: !4326)
!4473 = distinct !{!4473, !4331, !4474, !1303}
!4474 = !DILocation(line: 934, column: 3, scope: !4323)
!4475 = !DILocation(line: 935, column: 3, scope: !4297)
!4476 = !DILocation(line: 936, column: 1, scope: !4297)
!4477 = distinct !DISubprogram(name: "gt_option_parser_delete", scope: !2, file: !2, line: 1477, type: !1021, scopeLine: 1478, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !4478)
!4478 = !{!4479, !4480}
!4479 = !DILocalVariable(name: "op", arg: 1, scope: !4477, file: !2, line: 1477, type: !828)
!4480 = !DILocalVariable(name: "i", scope: !4477, file: !2, line: 1479, type: !680)
!4481 = !DILocation(line: 1477, column: 46, scope: !4477)
!4482 = !DILocation(line: 1479, column: 3, scope: !4477)
!4483 = !DILocation(line: 1479, column: 11, scope: !4477)
!4484 = !DILocation(line: 1480, column: 8, scope: !4485)
!4485 = distinct !DILexicalBlock(scope: !4477, file: !2, line: 1480, column: 7)
!4486 = !DILocation(line: 1480, column: 7, scope: !4477)
!4487 = !DILocation(line: 1480, column: 12, scope: !4485)
!4488 = !DILocation(line: 1481, column: 3, scope: !4477)
!4489 = !DILocation(line: 1482, column: 3, scope: !4477)
!4490 = !DILocation(line: 1483, column: 3, scope: !4477)
!4491 = !DILocation(line: 1484, column: 10, scope: !4492)
!4492 = distinct !DILexicalBlock(scope: !4477, file: !2, line: 1484, column: 3)
!4493 = !DILocation(line: 1484, column: 8, scope: !4492)
!4494 = !DILocation(line: 1484, column: 15, scope: !4495)
!4495 = distinct !DILexicalBlock(scope: !4492, file: !2, line: 1484, column: 3)
!4496 = !DILocation(line: 1484, column: 33, scope: !4495)
!4497 = !DILocation(line: 1484, column: 37, scope: !4495)
!4498 = !DILocation(line: 1484, column: 19, scope: !4495)
!4499 = !DILocation(line: 1484, column: 17, scope: !4495)
!4500 = !DILocation(line: 1484, column: 3, scope: !4492)
!4501 = !DILocation(line: 1485, column: 49, scope: !4495)
!4502 = !DILocation(line: 1485, column: 53, scope: !4495)
!4503 = !DILocation(line: 1485, column: 62, scope: !4495)
!4504 = !DILocation(line: 1485, column: 36, scope: !4495)
!4505 = !DILocation(line: 1485, column: 22, scope: !4495)
!4506 = !DILocation(line: 1485, column: 5, scope: !4495)
!4507 = !DILocation(line: 1484, column: 48, scope: !4495)
!4508 = !DILocation(line: 1484, column: 3, scope: !4495)
!4509 = distinct !{!4509, !4500, !4510, !1303}
!4510 = !DILocation(line: 1485, column: 64, scope: !4492)
!4511 = !DILocation(line: 1486, column: 19, scope: !4477)
!4512 = !DILocation(line: 1486, column: 23, scope: !4477)
!4513 = !DILocation(line: 1486, column: 3, scope: !4477)
!4514 = !DILocation(line: 1487, column: 19, scope: !4477)
!4515 = !DILocation(line: 1487, column: 23, scope: !4477)
!4516 = !DILocation(line: 1487, column: 3, scope: !4477)
!4517 = !DILocation(line: 1488, column: 21, scope: !4477)
!4518 = !DILocation(line: 1488, column: 25, scope: !4477)
!4519 = !DILocation(line: 1488, column: 3, scope: !4477)
!4520 = !DILocation(line: 1489, column: 3, scope: !4477)
!4521 = !DILocation(line: 1490, column: 1, scope: !4477)
!4522 = distinct !DISubprogram(name: "gt_option_delete", scope: !2, file: !2, line: 1970, type: !4523, scopeLine: 1971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !4525)
!4523 = !DISubroutineType(types: !4524)
!4524 = !{null, !653}
!4525 = !{!4526, !4527}
!4526 = !DILocalVariable(name: "o", arg: 1, scope: !4522, file: !2, line: 1970, type: !653)
!4527 = !DILocalVariable(name: "i", scope: !4522, file: !2, line: 1972, type: !680)
!4528 = !DILocation(line: 1970, column: 33, scope: !4522)
!4529 = !DILocation(line: 1972, column: 3, scope: !4522)
!4530 = !DILocation(line: 1972, column: 11, scope: !4522)
!4531 = !DILocation(line: 1973, column: 8, scope: !4532)
!4532 = distinct !DILexicalBlock(scope: !4522, file: !2, line: 1973, column: 7)
!4533 = !DILocation(line: 1973, column: 7, scope: !4522)
!4534 = !DILocation(line: 1973, column: 11, scope: !4532)
!4535 = !DILocation(line: 1974, column: 7, scope: !4536)
!4536 = distinct !DILexicalBlock(scope: !4522, file: !2, line: 1974, column: 7)
!4537 = !DILocation(line: 1974, column: 10, scope: !4536)
!4538 = !DILocation(line: 1974, column: 7, scope: !4522)
!4539 = !DILocation(line: 1975, column: 5, scope: !4540)
!4540 = distinct !DILexicalBlock(scope: !4536, file: !2, line: 1974, column: 27)
!4541 = !DILocation(line: 1975, column: 8, scope: !4540)
!4542 = !DILocation(line: 1975, column: 23, scope: !4540)
!4543 = !DILocation(line: 1976, column: 5, scope: !4540)
!4544 = !DILocation(line: 1978, column: 17, scope: !4522)
!4545 = !DILocation(line: 1978, column: 20, scope: !4522)
!4546 = !DILocation(line: 1978, column: 3, scope: !4522)
!4547 = !DILocation(line: 1979, column: 17, scope: !4522)
!4548 = !DILocation(line: 1979, column: 20, scope: !4522)
!4549 = !DILocation(line: 1979, column: 3, scope: !4522)
!4550 = !DILocation(line: 1980, column: 10, scope: !4551)
!4551 = distinct !DILexicalBlock(scope: !4522, file: !2, line: 1980, column: 3)
!4552 = !DILocation(line: 1980, column: 8, scope: !4551)
!4553 = !DILocation(line: 1980, column: 15, scope: !4554)
!4554 = distinct !DILexicalBlock(scope: !4551, file: !2, line: 1980, column: 3)
!4555 = !DILocation(line: 1980, column: 33, scope: !4554)
!4556 = !DILocation(line: 1980, column: 36, scope: !4554)
!4557 = !DILocation(line: 1980, column: 19, scope: !4554)
!4558 = !DILocation(line: 1980, column: 17, scope: !4554)
!4559 = !DILocation(line: 1980, column: 3, scope: !4551)
!4560 = !DILocation(line: 1981, column: 47, scope: !4554)
!4561 = !DILocation(line: 1981, column: 50, scope: !4554)
!4562 = !DILocation(line: 1981, column: 64, scope: !4554)
!4563 = !DILocation(line: 1981, column: 34, scope: !4554)
!4564 = !DILocation(line: 1981, column: 21, scope: !4554)
!4565 = !DILocation(line: 1981, column: 5, scope: !4554)
!4566 = !DILocation(line: 1980, column: 52, scope: !4554)
!4567 = !DILocation(line: 1980, column: 3, scope: !4554)
!4568 = distinct !{!4568, !4559, !4569, !1303}
!4569 = !DILocation(line: 1981, column: 66, scope: !4551)
!4570 = !DILocation(line: 1982, column: 19, scope: !4522)
!4571 = !DILocation(line: 1982, column: 22, scope: !4522)
!4572 = !DILocation(line: 1982, column: 3, scope: !4522)
!4573 = !DILocation(line: 1983, column: 19, scope: !4522)
!4574 = !DILocation(line: 1983, column: 22, scope: !4522)
!4575 = !DILocation(line: 1983, column: 3, scope: !4522)
!4576 = !DILocation(line: 1984, column: 19, scope: !4522)
!4577 = !DILocation(line: 1984, column: 22, scope: !4522)
!4578 = !DILocation(line: 1984, column: 3, scope: !4522)
!4579 = !DILocation(line: 1985, column: 3, scope: !4522)
!4580 = !DILocation(line: 1986, column: 1, scope: !4522)
!4581 = !DISubprogram(name: "gt_array_delete", scope: !718, file: !718, line: 102, type: !4582, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4582 = !DISubroutineType(types: !4583)
!4583 = !{null, !716}
!4584 = !DISubprogram(name: "gt_hashmap_delete", scope: !638, file: !638, line: 86, type: !4585, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4585 = !DISubroutineType(types: !4586)
!4586 = !{null, !858}
!4587 = distinct !DISubprogram(name: "gt_option_new_debug", scope: !2, file: !2, line: 1492, type: !4588, scopeLine: 1493, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !4590)
!4588 = !DISubroutineType(types: !4589)
!4589 = !{!653, !723}
!4590 = !{!4591, !4592}
!4591 = !DILocalVariable(name: "value", arg: 1, scope: !4587, file: !2, line: 1492, type: !723)
!4592 = !DILocalVariable(name: "o", scope: !4587, file: !2, line: 1494, type: !653)
!4593 = !DILocation(line: 1492, column: 37, scope: !4587)
!4594 = !DILocation(line: 1494, column: 3, scope: !4587)
!4595 = !DILocation(line: 1494, column: 13, scope: !4587)
!4596 = !DILocation(line: 1494, column: 72, scope: !4587)
!4597 = !DILocation(line: 1494, column: 17, scope: !4587)
!4598 = !DILocation(line: 1496, column: 3, scope: !4587)
!4599 = !DILocation(line: 1496, column: 6, scope: !4587)
!4600 = !DILocation(line: 1496, column: 28, scope: !4587)
!4601 = !DILocation(line: 1497, column: 10, scope: !4587)
!4602 = !DILocation(line: 1498, column: 1, scope: !4587)
!4603 = !DILocation(line: 1497, column: 3, scope: !4587)
!4604 = distinct !DISubprogram(name: "gt_option_new_bool", scope: !2, file: !2, line: 1511, type: !4605, scopeLine: 1513, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !4607)
!4605 = !DISubroutineType(types: !4606)
!4606 = !{!653, !690, !690, !723, !670}
!4607 = !{!4608, !4609, !4610, !4611, !4612}
!4608 = !DILocalVariable(name: "option_str", arg: 1, scope: !4604, file: !2, line: 1511, type: !690)
!4609 = !DILocalVariable(name: "description", arg: 2, scope: !4604, file: !2, line: 1511, type: !690)
!4610 = !DILocalVariable(name: "value", arg: 3, scope: !4604, file: !2, line: 1512, type: !723)
!4611 = !DILocalVariable(name: "default_value", arg: 4, scope: !4604, file: !2, line: 1512, type: !670)
!4612 = !DILocalVariable(name: "o", scope: !4604, file: !2, line: 1514, type: !653)
!4613 = !DILocation(line: 1511, column: 42, scope: !4604)
!4614 = !DILocation(line: 1511, column: 66, scope: !4604)
!4615 = !DILocation(line: 1512, column: 36, scope: !4604)
!4616 = !DILocation(line: 1512, column: 48, scope: !4604)
!4617 = !DILocation(line: 1514, column: 3, scope: !4604)
!4618 = !DILocation(line: 1514, column: 13, scope: !4604)
!4619 = !DILocation(line: 1514, column: 31, scope: !4604)
!4620 = !DILocation(line: 1514, column: 43, scope: !4604)
!4621 = !DILocation(line: 1514, column: 56, scope: !4604)
!4622 = !DILocation(line: 1514, column: 17, scope: !4604)
!4623 = !DILocation(line: 1515, column: 3, scope: !4604)
!4624 = !DILocation(line: 1515, column: 6, scope: !4604)
!4625 = !DILocation(line: 1515, column: 18, scope: !4604)
!4626 = !DILocation(line: 1516, column: 24, scope: !4604)
!4627 = !DILocation(line: 1516, column: 3, scope: !4604)
!4628 = !DILocation(line: 1516, column: 6, scope: !4604)
!4629 = !DILocation(line: 1516, column: 22, scope: !4604)
!4630 = !DILocation(line: 1517, column: 12, scope: !4604)
!4631 = !DILocation(line: 1517, column: 4, scope: !4604)
!4632 = !DILocation(line: 1517, column: 10, scope: !4604)
!4633 = !DILocation(line: 1518, column: 10, scope: !4604)
!4634 = !DILocation(line: 1519, column: 1, scope: !4604)
!4635 = !DILocation(line: 1518, column: 3, scope: !4604)
!4636 = distinct !DISubprogram(name: "gt_option_new_verbose", scope: !2, file: !2, line: 1500, type: !4588, scopeLine: 1501, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !4637)
!4637 = !{!4638}
!4638 = !DILocalVariable(name: "value", arg: 1, scope: !4636, file: !2, line: 1500, type: !723)
!4639 = !DILocation(line: 1500, column: 39, scope: !4636)
!4640 = !DILocation(line: 1502, column: 48, scope: !4636)
!4641 = !DILocation(line: 1502, column: 10, scope: !4636)
!4642 = !DILocation(line: 1502, column: 3, scope: !4636)
!4643 = distinct !DISubprogram(name: "gt_option_new_width", scope: !2, file: !2, line: 1505, type: !4644, scopeLine: 1506, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !4646)
!4644 = !DISubroutineType(types: !4645)
!4645 = !{!653, !728}
!4646 = !{!4647}
!4647 = !DILocalVariable(name: "value", arg: 1, scope: !4643, file: !2, line: 1505, type: !728)
!4648 = !DILocation(line: 1505, column: 40, scope: !4643)
!4649 = !DILocation(line: 1508, column: 67, scope: !4643)
!4650 = !DILocation(line: 1507, column: 10, scope: !4643)
!4651 = !DILocation(line: 1507, column: 3, scope: !4643)
!4652 = distinct !DISubprogram(name: "gt_option_new_uword", scope: !2, file: !2, line: 1671, type: !4653, scopeLine: 1673, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !4655)
!4653 = !DISubroutineType(types: !4654)
!4654 = !{!653, !690, !690, !728, !680}
!4655 = !{!4656, !4657, !4658, !4659, !4660}
!4656 = !DILocalVariable(name: "option_str", arg: 1, scope: !4652, file: !2, line: 1671, type: !690)
!4657 = !DILocalVariable(name: "description", arg: 2, scope: !4652, file: !2, line: 1671, type: !690)
!4658 = !DILocalVariable(name: "value", arg: 3, scope: !4652, file: !2, line: 1672, type: !728)
!4659 = !DILocalVariable(name: "default_value", arg: 4, scope: !4652, file: !2, line: 1672, type: !680)
!4660 = !DILocalVariable(name: "o", scope: !4652, file: !2, line: 1674, type: !653)
!4661 = !DILocation(line: 1671, column: 43, scope: !4652)
!4662 = !DILocation(line: 1671, column: 67, scope: !4652)
!4663 = !DILocation(line: 1672, column: 40, scope: !4652)
!4664 = !DILocation(line: 1672, column: 55, scope: !4652)
!4665 = !DILocation(line: 1674, column: 3, scope: !4652)
!4666 = !DILocation(line: 1674, column: 13, scope: !4652)
!4667 = !DILocation(line: 1674, column: 31, scope: !4652)
!4668 = !DILocation(line: 1674, column: 43, scope: !4652)
!4669 = !DILocation(line: 1674, column: 56, scope: !4652)
!4670 = !DILocation(line: 1674, column: 17, scope: !4652)
!4671 = !DILocation(line: 1675, column: 3, scope: !4652)
!4672 = !DILocation(line: 1675, column: 6, scope: !4652)
!4673 = !DILocation(line: 1675, column: 18, scope: !4652)
!4674 = !DILocation(line: 1676, column: 25, scope: !4652)
!4675 = !DILocation(line: 1676, column: 3, scope: !4652)
!4676 = !DILocation(line: 1676, column: 6, scope: !4652)
!4677 = !DILocation(line: 1676, column: 23, scope: !4652)
!4678 = !DILocation(line: 1677, column: 12, scope: !4652)
!4679 = !DILocation(line: 1677, column: 4, scope: !4652)
!4680 = !DILocation(line: 1677, column: 10, scope: !4652)
!4681 = !DILocation(line: 1678, column: 10, scope: !4652)
!4682 = !DILocation(line: 1679, column: 1, scope: !4652)
!4683 = !DILocation(line: 1678, column: 3, scope: !4652)
!4684 = distinct !DISubprogram(name: "gt_option_new", scope: !2, file: !2, line: 122, type: !4685, scopeLine: 124, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !4687)
!4685 = !DISubroutineType(types: !4686)
!4686 = !{!653, !690, !690, !651}
!4687 = !{!4688, !4689, !4690, !4691}
!4688 = !DILocalVariable(name: "option_str", arg: 1, scope: !4684, file: !2, line: 122, type: !690)
!4689 = !DILocalVariable(name: "description", arg: 2, scope: !4684, file: !2, line: 122, type: !690)
!4690 = !DILocalVariable(name: "value", arg: 3, scope: !4684, file: !2, line: 123, type: !651)
!4691 = !DILocalVariable(name: "o", scope: !4684, file: !2, line: 125, type: !653)
!4692 = !DILocation(line: 122, column: 44, scope: !4684)
!4693 = !DILocation(line: 122, column: 68, scope: !4684)
!4694 = !DILocation(line: 123, column: 38, scope: !4684)
!4695 = !DILocation(line: 125, column: 3, scope: !4684)
!4696 = !DILocation(line: 125, column: 13, scope: !4684)
!4697 = !DILocation(line: 125, column: 17, scope: !4684)
!4698 = !DILocation(line: 126, column: 3, scope: !4684)
!4699 = !DILocation(line: 126, column: 3, scope: !4700)
!4700 = distinct !DILexicalBlock(scope: !4701, file: !2, line: 126, column: 3)
!4701 = distinct !DILexicalBlock(scope: !4684, file: !2, line: 126, column: 3)
!4702 = !DILocation(line: 126, column: 3, scope: !4701)
!4703 = !DILocation(line: 126, column: 3, scope: !4704)
!4704 = distinct !DILexicalBlock(scope: !4700, file: !2, line: 126, column: 3)
!4705 = !DILocation(line: 127, column: 3, scope: !4684)
!4706 = !DILocation(line: 127, column: 3, scope: !4707)
!4707 = distinct !DILexicalBlock(scope: !4708, file: !2, line: 127, column: 3)
!4708 = distinct !DILexicalBlock(scope: !4684, file: !2, line: 127, column: 3)
!4709 = !DILocation(line: 127, column: 3, scope: !4708)
!4710 = !DILocation(line: 127, column: 3, scope: !4711)
!4711 = distinct !DILexicalBlock(scope: !4707, file: !2, line: 127, column: 3)
!4712 = !DILocation(line: 129, column: 35, scope: !4684)
!4713 = !DILocation(line: 129, column: 19, scope: !4684)
!4714 = !DILocation(line: 129, column: 3, scope: !4684)
!4715 = !DILocation(line: 129, column: 6, scope: !4684)
!4716 = !DILocation(line: 129, column: 17, scope: !4684)
!4717 = !DILocation(line: 130, column: 36, scope: !4684)
!4718 = !DILocation(line: 130, column: 20, scope: !4684)
!4719 = !DILocation(line: 130, column: 3, scope: !4684)
!4720 = !DILocation(line: 130, column: 6, scope: !4684)
!4721 = !DILocation(line: 130, column: 18, scope: !4684)
!4722 = !DILocation(line: 131, column: 14, scope: !4684)
!4723 = !DILocation(line: 131, column: 3, scope: !4684)
!4724 = !DILocation(line: 131, column: 6, scope: !4684)
!4725 = !DILocation(line: 131, column: 12, scope: !4684)
!4726 = !DILocation(line: 132, column: 10, scope: !4684)
!4727 = !DILocation(line: 133, column: 1, scope: !4684)
!4728 = !DILocation(line: 132, column: 3, scope: !4684)
!4729 = distinct !DISubprogram(name: "gt_option_new_double", scope: !2, file: !2, line: 1521, type: !4730, scopeLine: 1523, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !4732)
!4730 = !DISubroutineType(types: !4731)
!4731 = !{!653, !690, !690, !724, !672}
!4732 = !{!4733, !4734, !4735, !4736, !4737}
!4733 = !DILocalVariable(name: "option_str", arg: 1, scope: !4729, file: !2, line: 1521, type: !690)
!4734 = !DILocalVariable(name: "description", arg: 2, scope: !4729, file: !2, line: 1521, type: !690)
!4735 = !DILocalVariable(name: "value", arg: 3, scope: !4729, file: !2, line: 1522, type: !724)
!4736 = !DILocalVariable(name: "default_value", arg: 4, scope: !4729, file: !2, line: 1522, type: !672)
!4737 = !DILocalVariable(name: "o", scope: !4729, file: !2, line: 1524, type: !653)
!4738 = !DILocation(line: 1521, column: 44, scope: !4729)
!4739 = !DILocation(line: 1521, column: 68, scope: !4729)
!4740 = !DILocation(line: 1522, column: 40, scope: !4729)
!4741 = !DILocation(line: 1522, column: 54, scope: !4729)
!4742 = !DILocation(line: 1524, column: 3, scope: !4729)
!4743 = !DILocation(line: 1524, column: 13, scope: !4729)
!4744 = !DILocation(line: 1524, column: 31, scope: !4729)
!4745 = !DILocation(line: 1524, column: 43, scope: !4729)
!4746 = !DILocation(line: 1524, column: 56, scope: !4729)
!4747 = !DILocation(line: 1524, column: 17, scope: !4729)
!4748 = !DILocation(line: 1525, column: 3, scope: !4729)
!4749 = !DILocation(line: 1525, column: 6, scope: !4729)
!4750 = !DILocation(line: 1525, column: 18, scope: !4729)
!4751 = !DILocation(line: 1526, column: 24, scope: !4729)
!4752 = !DILocation(line: 1526, column: 3, scope: !4729)
!4753 = !DILocation(line: 1526, column: 6, scope: !4729)
!4754 = !DILocation(line: 1526, column: 22, scope: !4729)
!4755 = !DILocation(line: 1527, column: 12, scope: !4729)
!4756 = !DILocation(line: 1527, column: 4, scope: !4729)
!4757 = !DILocation(line: 1527, column: 10, scope: !4729)
!4758 = !DILocation(line: 1528, column: 10, scope: !4729)
!4759 = !DILocation(line: 1529, column: 1, scope: !4729)
!4760 = !DILocation(line: 1528, column: 3, scope: !4729)
!4761 = distinct !DISubprogram(name: "gt_option_new_double_min", scope: !2, file: !2, line: 1531, type: !4762, scopeLine: 1535, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !4764)
!4762 = !DISubroutineType(types: !4763)
!4763 = !{!653, !690, !690, !724, !672, !672}
!4764 = !{!4765, !4766, !4767, !4768, !4769, !4770}
!4765 = !DILocalVariable(name: "option_str", arg: 1, scope: !4761, file: !2, line: 1531, type: !690)
!4766 = !DILocalVariable(name: "description", arg: 2, scope: !4761, file: !2, line: 1532, type: !690)
!4767 = !DILocalVariable(name: "value", arg: 3, scope: !4761, file: !2, line: 1533, type: !724)
!4768 = !DILocalVariable(name: "default_value", arg: 4, scope: !4761, file: !2, line: 1533, type: !672)
!4769 = !DILocalVariable(name: "min_value", arg: 5, scope: !4761, file: !2, line: 1534, type: !672)
!4770 = !DILocalVariable(name: "o", scope: !4761, file: !2, line: 1536, type: !653)
!4771 = !DILocation(line: 1531, column: 48, scope: !4761)
!4772 = !DILocation(line: 1532, column: 48, scope: !4761)
!4773 = !DILocation(line: 1533, column: 44, scope: !4761)
!4774 = !DILocation(line: 1533, column: 58, scope: !4761)
!4775 = !DILocation(line: 1534, column: 43, scope: !4761)
!4776 = !DILocation(line: 1536, column: 3, scope: !4761)
!4777 = !DILocation(line: 1536, column: 13, scope: !4761)
!4778 = !DILocation(line: 1536, column: 38, scope: !4761)
!4779 = !DILocation(line: 1536, column: 50, scope: !4761)
!4780 = !DILocation(line: 1536, column: 63, scope: !4761)
!4781 = !DILocation(line: 1537, column: 38, scope: !4761)
!4782 = !DILocation(line: 1536, column: 17, scope: !4761)
!4783 = !DILocation(line: 1538, column: 3, scope: !4761)
!4784 = !DILocation(line: 1538, column: 6, scope: !4761)
!4785 = !DILocation(line: 1538, column: 20, scope: !4761)
!4786 = !DILocation(line: 1539, column: 20, scope: !4761)
!4787 = !DILocation(line: 1539, column: 3, scope: !4761)
!4788 = !DILocation(line: 1539, column: 6, scope: !4761)
!4789 = !DILocation(line: 1539, column: 18, scope: !4761)
!4790 = !DILocation(line: 1540, column: 10, scope: !4761)
!4791 = !DILocation(line: 1541, column: 1, scope: !4761)
!4792 = !DILocation(line: 1540, column: 3, scope: !4761)
!4793 = distinct !DISubprogram(name: "gt_option_new_double_min_max", scope: !2, file: !2, line: 1543, type: !4794, scopeLine: 1547, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !4796)
!4794 = !DISubroutineType(types: !4795)
!4795 = !{!653, !690, !690, !724, !672, !672, !672}
!4796 = !{!4797, !4798, !4799, !4800, !4801, !4802, !4803}
!4797 = !DILocalVariable(name: "option_str", arg: 1, scope: !4793, file: !2, line: 1543, type: !690)
!4798 = !DILocalVariable(name: "description", arg: 2, scope: !4793, file: !2, line: 1544, type: !690)
!4799 = !DILocalVariable(name: "value", arg: 3, scope: !4793, file: !2, line: 1544, type: !724)
!4800 = !DILocalVariable(name: "default_value", arg: 4, scope: !4793, file: !2, line: 1545, type: !672)
!4801 = !DILocalVariable(name: "min_value", arg: 5, scope: !4793, file: !2, line: 1545, type: !672)
!4802 = !DILocalVariable(name: "max_value", arg: 6, scope: !4793, file: !2, line: 1546, type: !672)
!4803 = !DILocalVariable(name: "o", scope: !4793, file: !2, line: 1548, type: !653)
!4804 = !DILocation(line: 1543, column: 52, scope: !4793)
!4805 = !DILocation(line: 1544, column: 52, scope: !4793)
!4806 = !DILocation(line: 1544, column: 73, scope: !4793)
!4807 = !DILocation(line: 1545, column: 47, scope: !4793)
!4808 = !DILocation(line: 1545, column: 69, scope: !4793)
!4809 = !DILocation(line: 1546, column: 47, scope: !4793)
!4810 = !DILocation(line: 1548, column: 3, scope: !4793)
!4811 = !DILocation(line: 1548, column: 13, scope: !4793)
!4812 = !DILocation(line: 1548, column: 38, scope: !4793)
!4813 = !DILocation(line: 1548, column: 50, scope: !4793)
!4814 = !DILocation(line: 1548, column: 63, scope: !4793)
!4815 = !DILocation(line: 1549, column: 38, scope: !4793)
!4816 = !DILocation(line: 1548, column: 17, scope: !4793)
!4817 = !DILocation(line: 1550, column: 3, scope: !4793)
!4818 = !DILocation(line: 1550, column: 6, scope: !4793)
!4819 = !DILocation(line: 1550, column: 20, scope: !4793)
!4820 = !DILocation(line: 1551, column: 20, scope: !4793)
!4821 = !DILocation(line: 1551, column: 3, scope: !4793)
!4822 = !DILocation(line: 1551, column: 6, scope: !4793)
!4823 = !DILocation(line: 1551, column: 18, scope: !4793)
!4824 = !DILocation(line: 1552, column: 3, scope: !4793)
!4825 = !DILocation(line: 1552, column: 6, scope: !4793)
!4826 = !DILocation(line: 1552, column: 20, scope: !4793)
!4827 = !DILocation(line: 1553, column: 20, scope: !4793)
!4828 = !DILocation(line: 1553, column: 3, scope: !4793)
!4829 = !DILocation(line: 1553, column: 6, scope: !4793)
!4830 = !DILocation(line: 1553, column: 18, scope: !4793)
!4831 = !DILocation(line: 1554, column: 10, scope: !4793)
!4832 = !DILocation(line: 1555, column: 1, scope: !4793)
!4833 = !DILocation(line: 1554, column: 3, scope: !4793)
!4834 = distinct !DISubprogram(name: "gt_option_new_probability", scope: !2, file: !2, line: 1557, type: !4730, scopeLine: 1560, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !4835)
!4835 = !{!4836, !4837, !4838, !4839}
!4836 = !DILocalVariable(name: "option_str", arg: 1, scope: !4834, file: !2, line: 1557, type: !690)
!4837 = !DILocalVariable(name: "description", arg: 2, scope: !4834, file: !2, line: 1558, type: !690)
!4838 = !DILocalVariable(name: "value", arg: 3, scope: !4834, file: !2, line: 1559, type: !724)
!4839 = !DILocalVariable(name: "default_value", arg: 4, scope: !4834, file: !2, line: 1559, type: !672)
!4840 = !DILocation(line: 1557, column: 49, scope: !4834)
!4841 = !DILocation(line: 1558, column: 49, scope: !4834)
!4842 = !DILocation(line: 1559, column: 45, scope: !4834)
!4843 = !DILocation(line: 1559, column: 59, scope: !4834)
!4844 = !DILocation(line: 1561, column: 39, scope: !4834)
!4845 = !DILocation(line: 1561, column: 51, scope: !4834)
!4846 = !DILocation(line: 1561, column: 64, scope: !4834)
!4847 = !DILocation(line: 1562, column: 36, scope: !4834)
!4848 = !DILocation(line: 1561, column: 10, scope: !4834)
!4849 = !DILocation(line: 1561, column: 3, scope: !4834)
!4850 = distinct !DISubprogram(name: "gt_option_new_int", scope: !2, file: !2, line: 1565, type: !4851, scopeLine: 1567, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !4853)
!4851 = !DISubroutineType(types: !4852)
!4852 = !{!653, !690, !690, !725, !649}
!4853 = !{!4854, !4855, !4856, !4857, !4858}
!4854 = !DILocalVariable(name: "option_str", arg: 1, scope: !4850, file: !2, line: 1565, type: !690)
!4855 = !DILocalVariable(name: "description", arg: 2, scope: !4850, file: !2, line: 1565, type: !690)
!4856 = !DILocalVariable(name: "value", arg: 3, scope: !4850, file: !2, line: 1566, type: !725)
!4857 = !DILocalVariable(name: "default_value", arg: 4, scope: !4850, file: !2, line: 1566, type: !649)
!4858 = !DILocalVariable(name: "o", scope: !4850, file: !2, line: 1568, type: !653)
!4859 = !DILocation(line: 1565, column: 41, scope: !4850)
!4860 = !DILocation(line: 1565, column: 65, scope: !4850)
!4861 = !DILocation(line: 1566, column: 34, scope: !4850)
!4862 = !DILocation(line: 1566, column: 45, scope: !4850)
!4863 = !DILocation(line: 1568, column: 3, scope: !4850)
!4864 = !DILocation(line: 1568, column: 13, scope: !4850)
!4865 = !DILocation(line: 1568, column: 31, scope: !4850)
!4866 = !DILocation(line: 1568, column: 43, scope: !4850)
!4867 = !DILocation(line: 1568, column: 56, scope: !4850)
!4868 = !DILocation(line: 1568, column: 17, scope: !4850)
!4869 = !DILocation(line: 1569, column: 3, scope: !4850)
!4870 = !DILocation(line: 1569, column: 6, scope: !4850)
!4871 = !DILocation(line: 1569, column: 18, scope: !4850)
!4872 = !DILocation(line: 1570, column: 24, scope: !4850)
!4873 = !DILocation(line: 1570, column: 3, scope: !4850)
!4874 = !DILocation(line: 1570, column: 6, scope: !4850)
!4875 = !DILocation(line: 1570, column: 22, scope: !4850)
!4876 = !DILocation(line: 1571, column: 12, scope: !4850)
!4877 = !DILocation(line: 1571, column: 4, scope: !4850)
!4878 = !DILocation(line: 1571, column: 10, scope: !4850)
!4879 = !DILocation(line: 1572, column: 10, scope: !4850)
!4880 = !DILocation(line: 1573, column: 1, scope: !4850)
!4881 = !DILocation(line: 1572, column: 3, scope: !4850)
!4882 = distinct !DISubprogram(name: "gt_option_new_int_min", scope: !2, file: !2, line: 1575, type: !4883, scopeLine: 1577, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !4885)
!4883 = !DISubroutineType(types: !4884)
!4884 = !{!653, !690, !690, !725, !649, !649}
!4885 = !{!4886, !4887, !4888, !4889, !4890, !4891}
!4886 = !DILocalVariable(name: "option_str", arg: 1, scope: !4882, file: !2, line: 1575, type: !690)
!4887 = !DILocalVariable(name: "description", arg: 2, scope: !4882, file: !2, line: 1575, type: !690)
!4888 = !DILocalVariable(name: "value", arg: 3, scope: !4882, file: !2, line: 1576, type: !725)
!4889 = !DILocalVariable(name: "default_value", arg: 4, scope: !4882, file: !2, line: 1576, type: !649)
!4890 = !DILocalVariable(name: "min_value", arg: 5, scope: !4882, file: !2, line: 1576, type: !649)
!4891 = !DILocalVariable(name: "o", scope: !4882, file: !2, line: 1578, type: !653)
!4892 = !DILocation(line: 1575, column: 45, scope: !4882)
!4893 = !DILocation(line: 1575, column: 69, scope: !4882)
!4894 = !DILocation(line: 1576, column: 38, scope: !4882)
!4895 = !DILocation(line: 1576, column: 49, scope: !4882)
!4896 = !DILocation(line: 1576, column: 68, scope: !4882)
!4897 = !DILocation(line: 1578, column: 3, scope: !4882)
!4898 = !DILocation(line: 1578, column: 13, scope: !4882)
!4899 = !DILocation(line: 1578, column: 35, scope: !4882)
!4900 = !DILocation(line: 1578, column: 47, scope: !4882)
!4901 = !DILocation(line: 1578, column: 60, scope: !4882)
!4902 = !DILocation(line: 1579, column: 35, scope: !4882)
!4903 = !DILocation(line: 1578, column: 17, scope: !4882)
!4904 = !DILocation(line: 1580, column: 3, scope: !4882)
!4905 = !DILocation(line: 1580, column: 6, scope: !4882)
!4906 = !DILocation(line: 1580, column: 20, scope: !4882)
!4907 = !DILocation(line: 1581, column: 20, scope: !4882)
!4908 = !DILocation(line: 1581, column: 3, scope: !4882)
!4909 = !DILocation(line: 1581, column: 6, scope: !4882)
!4910 = !DILocation(line: 1581, column: 18, scope: !4882)
!4911 = !DILocation(line: 1582, column: 10, scope: !4882)
!4912 = !DILocation(line: 1583, column: 1, scope: !4882)
!4913 = !DILocation(line: 1582, column: 3, scope: !4882)
!4914 = distinct !DISubprogram(name: "gt_option_new_int_max", scope: !2, file: !2, line: 1585, type: !4883, scopeLine: 1587, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !4915)
!4915 = !{!4916, !4917, !4918, !4919, !4920, !4921}
!4916 = !DILocalVariable(name: "option_str", arg: 1, scope: !4914, file: !2, line: 1585, type: !690)
!4917 = !DILocalVariable(name: "description", arg: 2, scope: !4914, file: !2, line: 1585, type: !690)
!4918 = !DILocalVariable(name: "value", arg: 3, scope: !4914, file: !2, line: 1586, type: !725)
!4919 = !DILocalVariable(name: "default_value", arg: 4, scope: !4914, file: !2, line: 1586, type: !649)
!4920 = !DILocalVariable(name: "max_value", arg: 5, scope: !4914, file: !2, line: 1586, type: !649)
!4921 = !DILocalVariable(name: "o", scope: !4914, file: !2, line: 1588, type: !653)
!4922 = !DILocation(line: 1585, column: 45, scope: !4914)
!4923 = !DILocation(line: 1585, column: 69, scope: !4914)
!4924 = !DILocation(line: 1586, column: 38, scope: !4914)
!4925 = !DILocation(line: 1586, column: 49, scope: !4914)
!4926 = !DILocation(line: 1586, column: 68, scope: !4914)
!4927 = !DILocation(line: 1588, column: 3, scope: !4914)
!4928 = !DILocation(line: 1588, column: 13, scope: !4914)
!4929 = !DILocation(line: 1588, column: 35, scope: !4914)
!4930 = !DILocation(line: 1588, column: 47, scope: !4914)
!4931 = !DILocation(line: 1588, column: 60, scope: !4914)
!4932 = !DILocation(line: 1589, column: 35, scope: !4914)
!4933 = !DILocation(line: 1588, column: 17, scope: !4914)
!4934 = !DILocation(line: 1590, column: 3, scope: !4914)
!4935 = !DILocation(line: 1590, column: 6, scope: !4914)
!4936 = !DILocation(line: 1590, column: 20, scope: !4914)
!4937 = !DILocation(line: 1591, column: 20, scope: !4914)
!4938 = !DILocation(line: 1591, column: 3, scope: !4914)
!4939 = !DILocation(line: 1591, column: 6, scope: !4914)
!4940 = !DILocation(line: 1591, column: 18, scope: !4914)
!4941 = !DILocation(line: 1592, column: 10, scope: !4914)
!4942 = !DILocation(line: 1593, column: 1, scope: !4914)
!4943 = !DILocation(line: 1592, column: 3, scope: !4914)
!4944 = distinct !DISubprogram(name: "gt_option_new_int_min_max", scope: !2, file: !2, line: 1595, type: !4945, scopeLine: 1599, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !4947)
!4945 = !DISubroutineType(types: !4946)
!4946 = !{!653, !690, !690, !725, !649, !649, !649}
!4947 = !{!4948, !4949, !4950, !4951, !4952, !4953, !4954}
!4948 = !DILocalVariable(name: "option_str", arg: 1, scope: !4944, file: !2, line: 1595, type: !690)
!4949 = !DILocalVariable(name: "description", arg: 2, scope: !4944, file: !2, line: 1596, type: !690)
!4950 = !DILocalVariable(name: "value", arg: 3, scope: !4944, file: !2, line: 1597, type: !725)
!4951 = !DILocalVariable(name: "default_value", arg: 4, scope: !4944, file: !2, line: 1597, type: !649)
!4952 = !DILocalVariable(name: "min_value", arg: 5, scope: !4944, file: !2, line: 1598, type: !649)
!4953 = !DILocalVariable(name: "max_value", arg: 6, scope: !4944, file: !2, line: 1598, type: !649)
!4954 = !DILocalVariable(name: "o", scope: !4944, file: !2, line: 1600, type: !653)
!4955 = !DILocation(line: 1595, column: 49, scope: !4944)
!4956 = !DILocation(line: 1596, column: 49, scope: !4944)
!4957 = !DILocation(line: 1597, column: 42, scope: !4944)
!4958 = !DILocation(line: 1597, column: 53, scope: !4944)
!4959 = !DILocation(line: 1598, column: 41, scope: !4944)
!4960 = !DILocation(line: 1598, column: 56, scope: !4944)
!4961 = !DILocation(line: 1600, column: 3, scope: !4944)
!4962 = !DILocation(line: 1600, column: 13, scope: !4944)
!4963 = !DILocation(line: 1600, column: 35, scope: !4944)
!4964 = !DILocation(line: 1600, column: 47, scope: !4944)
!4965 = !DILocation(line: 1600, column: 60, scope: !4944)
!4966 = !DILocation(line: 1601, column: 35, scope: !4944)
!4967 = !DILocation(line: 1600, column: 17, scope: !4944)
!4968 = !DILocation(line: 1602, column: 3, scope: !4944)
!4969 = !DILocation(line: 1602, column: 6, scope: !4944)
!4970 = !DILocation(line: 1602, column: 20, scope: !4944)
!4971 = !DILocation(line: 1603, column: 20, scope: !4944)
!4972 = !DILocation(line: 1603, column: 3, scope: !4944)
!4973 = !DILocation(line: 1603, column: 6, scope: !4944)
!4974 = !DILocation(line: 1603, column: 18, scope: !4944)
!4975 = !DILocation(line: 1604, column: 3, scope: !4944)
!4976 = !DILocation(line: 1604, column: 6, scope: !4944)
!4977 = !DILocation(line: 1604, column: 20, scope: !4944)
!4978 = !DILocation(line: 1605, column: 20, scope: !4944)
!4979 = !DILocation(line: 1605, column: 3, scope: !4944)
!4980 = !DILocation(line: 1605, column: 6, scope: !4944)
!4981 = !DILocation(line: 1605, column: 18, scope: !4944)
!4982 = !DILocation(line: 1606, column: 10, scope: !4944)
!4983 = !DILocation(line: 1607, column: 1, scope: !4944)
!4984 = !DILocation(line: 1606, column: 3, scope: !4944)
!4985 = distinct !DISubprogram(name: "gt_option_new_uint", scope: !2, file: !2, line: 1609, type: !4986, scopeLine: 1611, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !4988)
!4986 = !DISubroutineType(types: !4987)
!4987 = !{!653, !690, !690, !726, !605}
!4988 = !{!4989, !4990, !4991, !4992, !4993}
!4989 = !DILocalVariable(name: "option_str", arg: 1, scope: !4985, file: !2, line: 1609, type: !690)
!4990 = !DILocalVariable(name: "description", arg: 2, scope: !4985, file: !2, line: 1609, type: !690)
!4991 = !DILocalVariable(name: "value", arg: 3, scope: !4985, file: !2, line: 1610, type: !726)
!4992 = !DILocalVariable(name: "default_value", arg: 4, scope: !4985, file: !2, line: 1610, type: !605)
!4993 = !DILocalVariable(name: "o", scope: !4985, file: !2, line: 1612, type: !653)
!4994 = !DILocation(line: 1609, column: 42, scope: !4985)
!4995 = !DILocation(line: 1609, column: 66, scope: !4985)
!4996 = !DILocation(line: 1610, column: 44, scope: !4985)
!4997 = !DILocation(line: 1610, column: 64, scope: !4985)
!4998 = !DILocation(line: 1612, column: 3, scope: !4985)
!4999 = !DILocation(line: 1612, column: 13, scope: !4985)
!5000 = !DILocation(line: 1612, column: 31, scope: !4985)
!5001 = !DILocation(line: 1612, column: 43, scope: !4985)
!5002 = !DILocation(line: 1612, column: 56, scope: !4985)
!5003 = !DILocation(line: 1612, column: 17, scope: !4985)
!5004 = !DILocation(line: 1613, column: 3, scope: !4985)
!5005 = !DILocation(line: 1613, column: 6, scope: !4985)
!5006 = !DILocation(line: 1613, column: 18, scope: !4985)
!5007 = !DILocation(line: 1614, column: 25, scope: !4985)
!5008 = !DILocation(line: 1614, column: 3, scope: !4985)
!5009 = !DILocation(line: 1614, column: 6, scope: !4985)
!5010 = !DILocation(line: 1614, column: 23, scope: !4985)
!5011 = !DILocation(line: 1615, column: 12, scope: !4985)
!5012 = !DILocation(line: 1615, column: 4, scope: !4985)
!5013 = !DILocation(line: 1615, column: 10, scope: !4985)
!5014 = !DILocation(line: 1616, column: 10, scope: !4985)
!5015 = !DILocation(line: 1617, column: 1, scope: !4985)
!5016 = !DILocation(line: 1616, column: 3, scope: !4985)
!5017 = distinct !DISubprogram(name: "gt_option_new_uint_min", scope: !2, file: !2, line: 1619, type: !5018, scopeLine: 1624, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !5020)
!5018 = !DISubroutineType(types: !5019)
!5019 = !{!653, !690, !690, !726, !605, !605}
!5020 = !{!5021, !5022, !5023, !5024, !5025, !5026}
!5021 = !DILocalVariable(name: "option_str", arg: 1, scope: !5017, file: !2, line: 1619, type: !690)
!5022 = !DILocalVariable(name: "description", arg: 2, scope: !5017, file: !2, line: 1620, type: !690)
!5023 = !DILocalVariable(name: "value", arg: 3, scope: !5017, file: !2, line: 1621, type: !726)
!5024 = !DILocalVariable(name: "default_value", arg: 4, scope: !5017, file: !2, line: 1622, type: !605)
!5025 = !DILocalVariable(name: "min_value", arg: 5, scope: !5017, file: !2, line: 1623, type: !605)
!5026 = !DILocalVariable(name: "o", scope: !5017, file: !2, line: 1625, type: !653)
!5027 = !DILocation(line: 1619, column: 46, scope: !5017)
!5028 = !DILocation(line: 1620, column: 46, scope: !5017)
!5029 = !DILocation(line: 1621, column: 48, scope: !5017)
!5030 = !DILocation(line: 1622, column: 47, scope: !5017)
!5031 = !DILocation(line: 1623, column: 47, scope: !5017)
!5032 = !DILocation(line: 1625, column: 3, scope: !5017)
!5033 = !DILocation(line: 1625, column: 13, scope: !5017)
!5034 = !DILocation(line: 1625, column: 36, scope: !5017)
!5035 = !DILocation(line: 1625, column: 48, scope: !5017)
!5036 = !DILocation(line: 1625, column: 61, scope: !5017)
!5037 = !DILocation(line: 1626, column: 36, scope: !5017)
!5038 = !DILocation(line: 1625, column: 17, scope: !5017)
!5039 = !DILocation(line: 1627, column: 3, scope: !5017)
!5040 = !DILocation(line: 1627, column: 6, scope: !5017)
!5041 = !DILocation(line: 1627, column: 20, scope: !5017)
!5042 = !DILocation(line: 1628, column: 21, scope: !5017)
!5043 = !DILocation(line: 1628, column: 3, scope: !5017)
!5044 = !DILocation(line: 1628, column: 6, scope: !5017)
!5045 = !DILocation(line: 1628, column: 19, scope: !5017)
!5046 = !DILocation(line: 1629, column: 10, scope: !5017)
!5047 = !DILocation(line: 1630, column: 1, scope: !5017)
!5048 = !DILocation(line: 1629, column: 3, scope: !5017)
!5049 = distinct !DISubprogram(name: "gt_option_new_uint_max", scope: !2, file: !2, line: 1632, type: !5018, scopeLine: 1637, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !5050)
!5050 = !{!5051, !5052, !5053, !5054, !5055, !5056}
!5051 = !DILocalVariable(name: "option_str", arg: 1, scope: !5049, file: !2, line: 1632, type: !690)
!5052 = !DILocalVariable(name: "description", arg: 2, scope: !5049, file: !2, line: 1633, type: !690)
!5053 = !DILocalVariable(name: "value", arg: 3, scope: !5049, file: !2, line: 1634, type: !726)
!5054 = !DILocalVariable(name: "default_value", arg: 4, scope: !5049, file: !2, line: 1635, type: !605)
!5055 = !DILocalVariable(name: "max_value", arg: 5, scope: !5049, file: !2, line: 1636, type: !605)
!5056 = !DILocalVariable(name: "o", scope: !5049, file: !2, line: 1638, type: !653)
!5057 = !DILocation(line: 1632, column: 46, scope: !5049)
!5058 = !DILocation(line: 1633, column: 46, scope: !5049)
!5059 = !DILocation(line: 1634, column: 48, scope: !5049)
!5060 = !DILocation(line: 1635, column: 47, scope: !5049)
!5061 = !DILocation(line: 1636, column: 47, scope: !5049)
!5062 = !DILocation(line: 1638, column: 3, scope: !5049)
!5063 = !DILocation(line: 1638, column: 13, scope: !5049)
!5064 = !DILocation(line: 1638, column: 36, scope: !5049)
!5065 = !DILocation(line: 1638, column: 48, scope: !5049)
!5066 = !DILocation(line: 1638, column: 61, scope: !5049)
!5067 = !DILocation(line: 1639, column: 36, scope: !5049)
!5068 = !DILocation(line: 1638, column: 17, scope: !5049)
!5069 = !DILocation(line: 1640, column: 3, scope: !5049)
!5070 = !DILocation(line: 1640, column: 6, scope: !5049)
!5071 = !DILocation(line: 1640, column: 20, scope: !5049)
!5072 = !DILocation(line: 1641, column: 21, scope: !5049)
!5073 = !DILocation(line: 1641, column: 3, scope: !5049)
!5074 = !DILocation(line: 1641, column: 6, scope: !5049)
!5075 = !DILocation(line: 1641, column: 19, scope: !5049)
!5076 = !DILocation(line: 1642, column: 10, scope: !5049)
!5077 = !DILocation(line: 1643, column: 1, scope: !5049)
!5078 = !DILocation(line: 1642, column: 3, scope: !5049)
!5079 = distinct !DISubprogram(name: "gt_option_new_uint_min_max", scope: !2, file: !2, line: 1645, type: !5080, scopeLine: 1651, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !5082)
!5080 = !DISubroutineType(types: !5081)
!5081 = !{!653, !690, !690, !726, !605, !605, !605}
!5082 = !{!5083, !5084, !5085, !5086, !5087, !5088, !5089}
!5083 = !DILocalVariable(name: "option_str", arg: 1, scope: !5079, file: !2, line: 1645, type: !690)
!5084 = !DILocalVariable(name: "description", arg: 2, scope: !5079, file: !2, line: 1646, type: !690)
!5085 = !DILocalVariable(name: "value", arg: 3, scope: !5079, file: !2, line: 1647, type: !726)
!5086 = !DILocalVariable(name: "default_value", arg: 4, scope: !5079, file: !2, line: 1648, type: !605)
!5087 = !DILocalVariable(name: "min_value", arg: 5, scope: !5079, file: !2, line: 1649, type: !605)
!5088 = !DILocalVariable(name: "max_value", arg: 6, scope: !5079, file: !2, line: 1650, type: !605)
!5089 = !DILocalVariable(name: "o", scope: !5079, file: !2, line: 1652, type: !653)
!5090 = !DILocation(line: 1645, column: 50, scope: !5079)
!5091 = !DILocation(line: 1646, column: 50, scope: !5079)
!5092 = !DILocation(line: 1647, column: 52, scope: !5079)
!5093 = !DILocation(line: 1648, column: 51, scope: !5079)
!5094 = !DILocation(line: 1649, column: 51, scope: !5079)
!5095 = !DILocation(line: 1650, column: 51, scope: !5079)
!5096 = !DILocation(line: 1652, column: 3, scope: !5079)
!5097 = !DILocation(line: 1652, column: 13, scope: !5079)
!5098 = !DILocation(line: 1652, column: 36, scope: !5079)
!5099 = !DILocation(line: 1652, column: 48, scope: !5079)
!5100 = !DILocation(line: 1652, column: 61, scope: !5079)
!5101 = !DILocation(line: 1653, column: 36, scope: !5079)
!5102 = !DILocation(line: 1652, column: 17, scope: !5079)
!5103 = !DILocation(line: 1654, column: 3, scope: !5079)
!5104 = !DILocation(line: 1654, column: 6, scope: !5079)
!5105 = !DILocation(line: 1654, column: 20, scope: !5079)
!5106 = !DILocation(line: 1655, column: 20, scope: !5079)
!5107 = !DILocation(line: 1655, column: 3, scope: !5079)
!5108 = !DILocation(line: 1655, column: 6, scope: !5079)
!5109 = !DILocation(line: 1655, column: 18, scope: !5079)
!5110 = !DILocation(line: 1656, column: 3, scope: !5079)
!5111 = !DILocation(line: 1656, column: 6, scope: !5079)
!5112 = !DILocation(line: 1656, column: 20, scope: !5079)
!5113 = !DILocation(line: 1657, column: 20, scope: !5079)
!5114 = !DILocation(line: 1657, column: 3, scope: !5079)
!5115 = !DILocation(line: 1657, column: 6, scope: !5079)
!5116 = !DILocation(line: 1657, column: 18, scope: !5079)
!5117 = !DILocation(line: 1658, column: 10, scope: !5079)
!5118 = !DILocation(line: 1659, column: 1, scope: !5079)
!5119 = !DILocation(line: 1658, column: 3, scope: !5079)
!5120 = distinct !DISubprogram(name: "gt_option_new_word", scope: !2, file: !2, line: 1661, type: !5121, scopeLine: 1663, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !5123)
!5121 = !DISubroutineType(types: !5122)
!5122 = !{!653, !690, !690, !727, !676}
!5123 = !{!5124, !5125, !5126, !5127, !5128}
!5124 = !DILocalVariable(name: "option_str", arg: 1, scope: !5120, file: !2, line: 1661, type: !690)
!5125 = !DILocalVariable(name: "description", arg: 2, scope: !5120, file: !2, line: 1661, type: !690)
!5126 = !DILocalVariable(name: "value", arg: 3, scope: !5120, file: !2, line: 1662, type: !727)
!5127 = !DILocalVariable(name: "default_value", arg: 4, scope: !5120, file: !2, line: 1662, type: !676)
!5128 = !DILocalVariable(name: "o", scope: !5120, file: !2, line: 1664, type: !653)
!5129 = !DILocation(line: 1661, column: 42, scope: !5120)
!5130 = !DILocation(line: 1661, column: 66, scope: !5120)
!5131 = !DILocation(line: 1662, column: 38, scope: !5120)
!5132 = !DILocation(line: 1662, column: 52, scope: !5120)
!5133 = !DILocation(line: 1664, column: 3, scope: !5120)
!5134 = !DILocation(line: 1664, column: 13, scope: !5120)
!5135 = !DILocation(line: 1664, column: 31, scope: !5120)
!5136 = !DILocation(line: 1664, column: 43, scope: !5120)
!5137 = !DILocation(line: 1664, column: 56, scope: !5120)
!5138 = !DILocation(line: 1664, column: 17, scope: !5120)
!5139 = !DILocation(line: 1665, column: 3, scope: !5120)
!5140 = !DILocation(line: 1665, column: 6, scope: !5120)
!5141 = !DILocation(line: 1665, column: 18, scope: !5120)
!5142 = !DILocation(line: 1666, column: 24, scope: !5120)
!5143 = !DILocation(line: 1666, column: 3, scope: !5120)
!5144 = !DILocation(line: 1666, column: 6, scope: !5120)
!5145 = !DILocation(line: 1666, column: 22, scope: !5120)
!5146 = !DILocation(line: 1667, column: 12, scope: !5120)
!5147 = !DILocation(line: 1667, column: 4, scope: !5120)
!5148 = !DILocation(line: 1667, column: 10, scope: !5120)
!5149 = !DILocation(line: 1668, column: 10, scope: !5120)
!5150 = !DILocation(line: 1669, column: 1, scope: !5120)
!5151 = !DILocation(line: 1668, column: 3, scope: !5120)
!5152 = distinct !DISubprogram(name: "gt_option_new_uword_min", scope: !2, file: !2, line: 1681, type: !5153, scopeLine: 1686, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !5155)
!5153 = !DISubroutineType(types: !5154)
!5154 = !{!653, !690, !690, !728, !680, !680}
!5155 = !{!5156, !5157, !5158, !5159, !5160, !5161}
!5156 = !DILocalVariable(name: "option_str", arg: 1, scope: !5152, file: !2, line: 1681, type: !690)
!5157 = !DILocalVariable(name: "description", arg: 2, scope: !5152, file: !2, line: 1682, type: !690)
!5158 = !DILocalVariable(name: "value", arg: 3, scope: !5152, file: !2, line: 1683, type: !728)
!5159 = !DILocalVariable(name: "default_value", arg: 4, scope: !5152, file: !2, line: 1684, type: !680)
!5160 = !DILocalVariable(name: "min_value", arg: 5, scope: !5152, file: !2, line: 1685, type: !680)
!5161 = !DILocalVariable(name: "o", scope: !5152, file: !2, line: 1687, type: !653)
!5162 = !DILocation(line: 1681, column: 47, scope: !5152)
!5163 = !DILocation(line: 1682, column: 47, scope: !5152)
!5164 = !DILocation(line: 1683, column: 44, scope: !5152)
!5165 = !DILocation(line: 1684, column: 43, scope: !5152)
!5166 = !DILocation(line: 1685, column: 43, scope: !5152)
!5167 = !DILocation(line: 1687, column: 3, scope: !5152)
!5168 = !DILocation(line: 1687, column: 13, scope: !5152)
!5169 = !DILocation(line: 1687, column: 37, scope: !5152)
!5170 = !DILocation(line: 1687, column: 49, scope: !5152)
!5171 = !DILocation(line: 1687, column: 62, scope: !5152)
!5172 = !DILocation(line: 1688, column: 37, scope: !5152)
!5173 = !DILocation(line: 1687, column: 17, scope: !5152)
!5174 = !DILocation(line: 1689, column: 3, scope: !5152)
!5175 = !DILocation(line: 1689, column: 6, scope: !5152)
!5176 = !DILocation(line: 1689, column: 20, scope: !5152)
!5177 = !DILocation(line: 1690, column: 21, scope: !5152)
!5178 = !DILocation(line: 1690, column: 3, scope: !5152)
!5179 = !DILocation(line: 1690, column: 6, scope: !5152)
!5180 = !DILocation(line: 1690, column: 19, scope: !5152)
!5181 = !DILocation(line: 1691, column: 10, scope: !5152)
!5182 = !DILocation(line: 1692, column: 1, scope: !5152)
!5183 = !DILocation(line: 1691, column: 3, scope: !5152)
!5184 = distinct !DISubprogram(name: "gt_option_new_uword_min_max", scope: !2, file: !2, line: 1694, type: !5185, scopeLine: 1700, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !5187)
!5185 = !DISubroutineType(types: !5186)
!5186 = !{!653, !690, !690, !728, !680, !680, !680}
!5187 = !{!5188, !5189, !5190, !5191, !5192, !5193, !5194}
!5188 = !DILocalVariable(name: "option_str", arg: 1, scope: !5184, file: !2, line: 1694, type: !690)
!5189 = !DILocalVariable(name: "description", arg: 2, scope: !5184, file: !2, line: 1695, type: !690)
!5190 = !DILocalVariable(name: "value", arg: 3, scope: !5184, file: !2, line: 1696, type: !728)
!5191 = !DILocalVariable(name: "default_value", arg: 4, scope: !5184, file: !2, line: 1697, type: !680)
!5192 = !DILocalVariable(name: "min_value", arg: 5, scope: !5184, file: !2, line: 1698, type: !680)
!5193 = !DILocalVariable(name: "max_value", arg: 6, scope: !5184, file: !2, line: 1699, type: !680)
!5194 = !DILocalVariable(name: "o", scope: !5184, file: !2, line: 1701, type: !653)
!5195 = !DILocation(line: 1694, column: 51, scope: !5184)
!5196 = !DILocation(line: 1695, column: 51, scope: !5184)
!5197 = !DILocation(line: 1696, column: 48, scope: !5184)
!5198 = !DILocation(line: 1697, column: 47, scope: !5184)
!5199 = !DILocation(line: 1698, column: 47, scope: !5184)
!5200 = !DILocation(line: 1699, column: 47, scope: !5184)
!5201 = !DILocation(line: 1701, column: 3, scope: !5184)
!5202 = !DILocation(line: 1701, column: 13, scope: !5184)
!5203 = !DILocation(line: 1701, column: 37, scope: !5184)
!5204 = !DILocation(line: 1701, column: 49, scope: !5184)
!5205 = !DILocation(line: 1701, column: 62, scope: !5184)
!5206 = !DILocation(line: 1702, column: 37, scope: !5184)
!5207 = !DILocation(line: 1701, column: 17, scope: !5184)
!5208 = !DILocation(line: 1703, column: 3, scope: !5184)
!5209 = !DILocation(line: 1703, column: 6, scope: !5184)
!5210 = !DILocation(line: 1703, column: 20, scope: !5184)
!5211 = !DILocation(line: 1704, column: 21, scope: !5184)
!5212 = !DILocation(line: 1704, column: 3, scope: !5184)
!5213 = !DILocation(line: 1704, column: 6, scope: !5184)
!5214 = !DILocation(line: 1704, column: 19, scope: !5184)
!5215 = !DILocation(line: 1705, column: 3, scope: !5184)
!5216 = !DILocation(line: 1705, column: 6, scope: !5184)
!5217 = !DILocation(line: 1705, column: 20, scope: !5184)
!5218 = !DILocation(line: 1706, column: 21, scope: !5184)
!5219 = !DILocation(line: 1706, column: 3, scope: !5184)
!5220 = !DILocation(line: 1706, column: 6, scope: !5184)
!5221 = !DILocation(line: 1706, column: 19, scope: !5184)
!5222 = !DILocation(line: 1707, column: 10, scope: !5184)
!5223 = !DILocation(line: 1708, column: 1, scope: !5184)
!5224 = !DILocation(line: 1707, column: 3, scope: !5184)
!5225 = distinct !DISubprogram(name: "gt_option_new_long", scope: !2, file: !2, line: 1710, type: !5121, scopeLine: 1714, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !5226)
!5226 = !{!5227, !5228, !5229, !5230}
!5227 = !DILocalVariable(name: "option_str", arg: 1, scope: !5225, file: !2, line: 1710, type: !690)
!5228 = !DILocalVariable(name: "description", arg: 2, scope: !5225, file: !2, line: 1711, type: !690)
!5229 = !DILocalVariable(name: "value", arg: 3, scope: !5225, file: !2, line: 1712, type: !727)
!5230 = !DILocalVariable(name: "default_value", arg: 4, scope: !5225, file: !2, line: 1713, type: !676)
!5231 = !DILocation(line: 1710, column: 42, scope: !5225)
!5232 = !DILocation(line: 1711, column: 42, scope: !5225)
!5233 = !DILocation(line: 1712, column: 38, scope: !5225)
!5234 = !DILocation(line: 1713, column: 37, scope: !5225)
!5235 = !DILocation(line: 1715, column: 29, scope: !5225)
!5236 = !DILocation(line: 1715, column: 41, scope: !5225)
!5237 = !DILocation(line: 1715, column: 54, scope: !5225)
!5238 = !DILocation(line: 1716, column: 29, scope: !5225)
!5239 = !DILocation(line: 1715, column: 10, scope: !5225)
!5240 = !DILocation(line: 1715, column: 3, scope: !5225)
!5241 = distinct !DISubprogram(name: "gt_option_new_ulong", scope: !2, file: !2, line: 1719, type: !4653, scopeLine: 1723, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !5242)
!5242 = !{!5243, !5244, !5245, !5246}
!5243 = !DILocalVariable(name: "option_str", arg: 1, scope: !5241, file: !2, line: 1719, type: !690)
!5244 = !DILocalVariable(name: "description", arg: 2, scope: !5241, file: !2, line: 1720, type: !690)
!5245 = !DILocalVariable(name: "value", arg: 3, scope: !5241, file: !2, line: 1721, type: !728)
!5246 = !DILocalVariable(name: "default_value", arg: 4, scope: !5241, file: !2, line: 1722, type: !680)
!5247 = !DILocation(line: 1719, column: 43, scope: !5241)
!5248 = !DILocation(line: 1720, column: 43, scope: !5241)
!5249 = !DILocation(line: 1721, column: 40, scope: !5241)
!5250 = !DILocation(line: 1722, column: 39, scope: !5241)
!5251 = !DILocation(line: 1724, column: 30, scope: !5241)
!5252 = !DILocation(line: 1724, column: 42, scope: !5241)
!5253 = !DILocation(line: 1724, column: 55, scope: !5241)
!5254 = !DILocation(line: 1725, column: 30, scope: !5241)
!5255 = !DILocation(line: 1724, column: 10, scope: !5241)
!5256 = !DILocation(line: 1724, column: 3, scope: !5241)
!5257 = distinct !DISubprogram(name: "gt_option_new_ulong_min", scope: !2, file: !2, line: 1728, type: !5153, scopeLine: 1733, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !5258)
!5258 = !{!5259, !5260, !5261, !5262, !5263}
!5259 = !DILocalVariable(name: "option_str", arg: 1, scope: !5257, file: !2, line: 1728, type: !690)
!5260 = !DILocalVariable(name: "description", arg: 2, scope: !5257, file: !2, line: 1729, type: !690)
!5261 = !DILocalVariable(name: "value", arg: 3, scope: !5257, file: !2, line: 1730, type: !728)
!5262 = !DILocalVariable(name: "default_value", arg: 4, scope: !5257, file: !2, line: 1731, type: !680)
!5263 = !DILocalVariable(name: "min_value", arg: 5, scope: !5257, file: !2, line: 1732, type: !680)
!5264 = !DILocation(line: 1728, column: 47, scope: !5257)
!5265 = !DILocation(line: 1729, column: 47, scope: !5257)
!5266 = !DILocation(line: 1730, column: 44, scope: !5257)
!5267 = !DILocation(line: 1731, column: 43, scope: !5257)
!5268 = !DILocation(line: 1732, column: 43, scope: !5257)
!5269 = !DILocation(line: 1734, column: 34, scope: !5257)
!5270 = !DILocation(line: 1734, column: 46, scope: !5257)
!5271 = !DILocation(line: 1734, column: 59, scope: !5257)
!5272 = !DILocation(line: 1735, column: 34, scope: !5257)
!5273 = !DILocation(line: 1735, column: 49, scope: !5257)
!5274 = !DILocation(line: 1734, column: 10, scope: !5257)
!5275 = !DILocation(line: 1734, column: 3, scope: !5257)
!5276 = distinct !DISubprogram(name: "gt_option_new_ulong_min_max", scope: !2, file: !2, line: 1738, type: !5185, scopeLine: 1744, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !5277)
!5277 = !{!5278, !5279, !5280, !5281, !5282, !5283}
!5278 = !DILocalVariable(name: "option_str", arg: 1, scope: !5276, file: !2, line: 1738, type: !690)
!5279 = !DILocalVariable(name: "description", arg: 2, scope: !5276, file: !2, line: 1739, type: !690)
!5280 = !DILocalVariable(name: "value", arg: 3, scope: !5276, file: !2, line: 1740, type: !728)
!5281 = !DILocalVariable(name: "default_value", arg: 4, scope: !5276, file: !2, line: 1741, type: !680)
!5282 = !DILocalVariable(name: "min_value", arg: 5, scope: !5276, file: !2, line: 1742, type: !680)
!5283 = !DILocalVariable(name: "max_value", arg: 6, scope: !5276, file: !2, line: 1743, type: !680)
!5284 = !DILocation(line: 1738, column: 51, scope: !5276)
!5285 = !DILocation(line: 1739, column: 51, scope: !5276)
!5286 = !DILocation(line: 1740, column: 48, scope: !5276)
!5287 = !DILocation(line: 1741, column: 47, scope: !5276)
!5288 = !DILocation(line: 1742, column: 47, scope: !5276)
!5289 = !DILocation(line: 1743, column: 47, scope: !5276)
!5290 = !DILocation(line: 1745, column: 38, scope: !5276)
!5291 = !DILocation(line: 1745, column: 50, scope: !5276)
!5292 = !DILocation(line: 1745, column: 63, scope: !5276)
!5293 = !DILocation(line: 1746, column: 38, scope: !5276)
!5294 = !DILocation(line: 1746, column: 53, scope: !5276)
!5295 = !DILocation(line: 1747, column: 38, scope: !5276)
!5296 = !DILocation(line: 1745, column: 10, scope: !5276)
!5297 = !DILocation(line: 1745, column: 3, scope: !5276)
!5298 = distinct !DISubprogram(name: "gt_option_new_range", scope: !2, file: !2, line: 1750, type: !5299, scopeLine: 1752, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !5301)
!5299 = !DISubroutineType(types: !5300)
!5300 = !{!653, !690, !690, !729, !729}
!5301 = !{!5302, !5303, !5304, !5305, !5306}
!5302 = !DILocalVariable(name: "option_str", arg: 1, scope: !5298, file: !2, line: 1750, type: !690)
!5303 = !DILocalVariable(name: "description", arg: 2, scope: !5298, file: !2, line: 1750, type: !690)
!5304 = !DILocalVariable(name: "value", arg: 3, scope: !5298, file: !2, line: 1751, type: !729)
!5305 = !DILocalVariable(name: "default_value", arg: 4, scope: !5298, file: !2, line: 1751, type: !729)
!5306 = !DILocalVariable(name: "o", scope: !5298, file: !2, line: 1753, type: !653)
!5307 = !DILocation(line: 1750, column: 43, scope: !5298)
!5308 = !DILocation(line: 1750, column: 67, scope: !5298)
!5309 = !DILocation(line: 1751, column: 40, scope: !5298)
!5310 = !DILocation(line: 1751, column: 56, scope: !5298)
!5311 = !DILocation(line: 1753, column: 3, scope: !5298)
!5312 = !DILocation(line: 1753, column: 13, scope: !5298)
!5313 = !DILocation(line: 1753, column: 31, scope: !5298)
!5314 = !DILocation(line: 1753, column: 43, scope: !5298)
!5315 = !DILocation(line: 1753, column: 56, scope: !5298)
!5316 = !DILocation(line: 1753, column: 17, scope: !5298)
!5317 = !DILocation(line: 1754, column: 3, scope: !5298)
!5318 = !DILocation(line: 1754, column: 6, scope: !5298)
!5319 = !DILocation(line: 1754, column: 18, scope: !5298)
!5320 = !DILocation(line: 1755, column: 30, scope: !5298)
!5321 = !DILocation(line: 1755, column: 46, scope: !5298)
!5322 = !DILocation(line: 1755, column: 61, scope: !5298)
!5323 = !DILocation(line: 1755, column: 3, scope: !5298)
!5324 = !DILocation(line: 1755, column: 6, scope: !5298)
!5325 = !DILocation(line: 1755, column: 22, scope: !5298)
!5326 = !DILocation(line: 1755, column: 28, scope: !5298)
!5327 = !DILocation(line: 1757, column: 30, scope: !5298)
!5328 = !DILocation(line: 1757, column: 46, scope: !5298)
!5329 = !DILocation(line: 1757, column: 61, scope: !5298)
!5330 = !DILocation(line: 1757, column: 3, scope: !5298)
!5331 = !DILocation(line: 1757, column: 6, scope: !5298)
!5332 = !DILocation(line: 1757, column: 22, scope: !5298)
!5333 = !DILocation(line: 1757, column: 28, scope: !5298)
!5334 = !DILocation(line: 1759, column: 18, scope: !5298)
!5335 = !DILocation(line: 1759, column: 21, scope: !5298)
!5336 = !DILocation(line: 1759, column: 37, scope: !5298)
!5337 = !DILocation(line: 1759, column: 3, scope: !5298)
!5338 = !DILocation(line: 1759, column: 10, scope: !5298)
!5339 = !DILocation(line: 1759, column: 16, scope: !5298)
!5340 = !DILocation(line: 1760, column: 18, scope: !5298)
!5341 = !DILocation(line: 1760, column: 21, scope: !5298)
!5342 = !DILocation(line: 1760, column: 37, scope: !5298)
!5343 = !DILocation(line: 1760, column: 3, scope: !5298)
!5344 = !DILocation(line: 1760, column: 10, scope: !5298)
!5345 = !DILocation(line: 1760, column: 16, scope: !5298)
!5346 = !DILocation(line: 1761, column: 10, scope: !5298)
!5347 = !DILocation(line: 1762, column: 1, scope: !5298)
!5348 = !DILocation(line: 1761, column: 3, scope: !5298)
!5349 = distinct !DISubprogram(name: "gt_option_new_range_min_max", scope: !2, file: !2, line: 1764, type: !5350, scopeLine: 1769, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !5352)
!5350 = !DISubroutineType(types: !5351)
!5351 = !{!653, !690, !690, !729, !729, !680, !680}
!5352 = !{!5353, !5354, !5355, !5356, !5357, !5358, !5359}
!5353 = !DILocalVariable(name: "option_str", arg: 1, scope: !5349, file: !2, line: 1764, type: !690)
!5354 = !DILocalVariable(name: "description", arg: 2, scope: !5349, file: !2, line: 1765, type: !690)
!5355 = !DILocalVariable(name: "value", arg: 3, scope: !5349, file: !2, line: 1765, type: !729)
!5356 = !DILocalVariable(name: "default_value", arg: 4, scope: !5349, file: !2, line: 1766, type: !729)
!5357 = !DILocalVariable(name: "min_value", arg: 5, scope: !5349, file: !2, line: 1767, type: !680)
!5358 = !DILocalVariable(name: "max_value", arg: 6, scope: !5349, file: !2, line: 1768, type: !680)
!5359 = !DILocalVariable(name: "o", scope: !5349, file: !2, line: 1770, type: !653)
!5360 = !DILocation(line: 1764, column: 51, scope: !5349)
!5361 = !DILocation(line: 1765, column: 51, scope: !5349)
!5362 = !DILocation(line: 1765, column: 73, scope: !5349)
!5363 = !DILocation(line: 1766, column: 48, scope: !5349)
!5364 = !DILocation(line: 1767, column: 47, scope: !5349)
!5365 = !DILocation(line: 1768, column: 47, scope: !5349)
!5366 = !DILocation(line: 1770, column: 4, scope: !5349)
!5367 = !DILocation(line: 1770, column: 14, scope: !5349)
!5368 = !DILocation(line: 1770, column: 38, scope: !5349)
!5369 = !DILocation(line: 1770, column: 50, scope: !5349)
!5370 = !DILocation(line: 1770, column: 63, scope: !5349)
!5371 = !DILocation(line: 1771, column: 38, scope: !5349)
!5372 = !DILocation(line: 1770, column: 18, scope: !5349)
!5373 = !DILocation(line: 1772, column: 4, scope: !5349)
!5374 = !DILocation(line: 1772, column: 7, scope: !5349)
!5375 = !DILocation(line: 1772, column: 21, scope: !5349)
!5376 = !DILocation(line: 1773, column: 22, scope: !5349)
!5377 = !DILocation(line: 1773, column: 4, scope: !5349)
!5378 = !DILocation(line: 1773, column: 7, scope: !5349)
!5379 = !DILocation(line: 1773, column: 20, scope: !5349)
!5380 = !DILocation(line: 1774, column: 4, scope: !5349)
!5381 = !DILocation(line: 1774, column: 7, scope: !5349)
!5382 = !DILocation(line: 1774, column: 21, scope: !5349)
!5383 = !DILocation(line: 1775, column: 22, scope: !5349)
!5384 = !DILocation(line: 1775, column: 4, scope: !5349)
!5385 = !DILocation(line: 1775, column: 7, scope: !5349)
!5386 = !DILocation(line: 1775, column: 20, scope: !5349)
!5387 = !DILocation(line: 1776, column: 11, scope: !5349)
!5388 = !DILocation(line: 1777, column: 1, scope: !5349)
!5389 = !DILocation(line: 1776, column: 4, scope: !5349)
!5390 = distinct !DISubprogram(name: "gt_option_new_string", scope: !2, file: !2, line: 1779, type: !5391, scopeLine: 1781, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !5393)
!5391 = !DISubroutineType(types: !5392)
!5392 = !{!653, !690, !690, !660, !690}
!5393 = !{!5394, !5395, !5396, !5397, !5398}
!5394 = !DILocalVariable(name: "option_str", arg: 1, scope: !5390, file: !2, line: 1779, type: !690)
!5395 = !DILocalVariable(name: "description", arg: 2, scope: !5390, file: !2, line: 1779, type: !690)
!5396 = !DILocalVariable(name: "value", arg: 3, scope: !5390, file: !2, line: 1780, type: !660)
!5397 = !DILocalVariable(name: "default_value", arg: 4, scope: !5390, file: !2, line: 1780, type: !690)
!5398 = !DILocalVariable(name: "o", scope: !5390, file: !2, line: 1782, type: !653)
!5399 = !DILocation(line: 1779, column: 44, scope: !5390)
!5400 = !DILocation(line: 1779, column: 68, scope: !5390)
!5401 = !DILocation(line: 1780, column: 39, scope: !5390)
!5402 = !DILocation(line: 1780, column: 58, scope: !5390)
!5403 = !DILocation(line: 1782, column: 3, scope: !5390)
!5404 = !DILocation(line: 1782, column: 13, scope: !5390)
!5405 = !DILocation(line: 1782, column: 31, scope: !5390)
!5406 = !DILocation(line: 1782, column: 43, scope: !5390)
!5407 = !DILocation(line: 1782, column: 56, scope: !5390)
!5408 = !DILocation(line: 1782, column: 17, scope: !5390)
!5409 = !DILocation(line: 1783, column: 3, scope: !5390)
!5410 = !DILocation(line: 1783, column: 6, scope: !5390)
!5411 = !DILocation(line: 1783, column: 18, scope: !5390)
!5412 = !DILocation(line: 1784, column: 24, scope: !5390)
!5413 = !DILocation(line: 1784, column: 3, scope: !5390)
!5414 = !DILocation(line: 1784, column: 6, scope: !5390)
!5415 = !DILocation(line: 1784, column: 22, scope: !5390)
!5416 = !DILocation(line: 1785, column: 14, scope: !5390)
!5417 = !DILocation(line: 1785, column: 21, scope: !5390)
!5418 = !DILocation(line: 1785, column: 3, scope: !5390)
!5419 = !DILocation(line: 1786, column: 10, scope: !5390)
!5420 = !DILocation(line: 1787, column: 1, scope: !5390)
!5421 = !DILocation(line: 1786, column: 3, scope: !5390)
!5422 = distinct !DISubprogram(name: "gt_option_new_string_array", scope: !2, file: !2, line: 1789, type: !5423, scopeLine: 1791, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !5425)
!5423 = !DISubroutineType(types: !5424)
!5424 = !{!653, !690, !690, !3915}
!5425 = !{!5426, !5427, !5428, !5429}
!5426 = !DILocalVariable(name: "option_str", arg: 1, scope: !5422, file: !2, line: 1789, type: !690)
!5427 = !DILocalVariable(name: "description", arg: 2, scope: !5422, file: !2, line: 1790, type: !690)
!5428 = !DILocalVariable(name: "value", arg: 3, scope: !5422, file: !2, line: 1790, type: !3915)
!5429 = !DILocalVariable(name: "o", scope: !5422, file: !2, line: 1792, type: !653)
!5430 = !DILocation(line: 1789, column: 50, scope: !5422)
!5431 = !DILocation(line: 1790, column: 50, scope: !5422)
!5432 = !DILocation(line: 1790, column: 75, scope: !5422)
!5433 = !DILocation(line: 1792, column: 3, scope: !5422)
!5434 = !DILocation(line: 1792, column: 13, scope: !5422)
!5435 = !DILocation(line: 1792, column: 31, scope: !5422)
!5436 = !DILocation(line: 1792, column: 43, scope: !5422)
!5437 = !DILocation(line: 1792, column: 56, scope: !5422)
!5438 = !DILocation(line: 1792, column: 17, scope: !5422)
!5439 = !DILocation(line: 1793, column: 3, scope: !5422)
!5440 = !DILocation(line: 1793, column: 6, scope: !5422)
!5441 = !DILocation(line: 1793, column: 18, scope: !5422)
!5442 = !DILocation(line: 1794, column: 10, scope: !5422)
!5443 = !DILocation(line: 1795, column: 1, scope: !5422)
!5444 = !DILocation(line: 1794, column: 3, scope: !5422)
!5445 = distinct !DISubprogram(name: "gt_option_new_filename", scope: !2, file: !2, line: 1800, type: !5446, scopeLine: 1803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !5448)
!5446 = !DISubroutineType(types: !5447)
!5447 = !{!653, !690, !690, !660}
!5448 = !{!5449, !5450, !5451, !5452}
!5449 = !DILocalVariable(name: "option_str", arg: 1, scope: !5445, file: !2, line: 1800, type: !690)
!5450 = !DILocalVariable(name: "description", arg: 2, scope: !5445, file: !2, line: 1801, type: !690)
!5451 = !DILocalVariable(name: "filename", arg: 3, scope: !5445, file: !2, line: 1802, type: !660)
!5452 = !DILocalVariable(name: "o", scope: !5445, file: !2, line: 1804, type: !653)
!5453 = !DILocation(line: 1800, column: 46, scope: !5445)
!5454 = !DILocation(line: 1801, column: 46, scope: !5445)
!5455 = !DILocation(line: 1802, column: 41, scope: !5445)
!5456 = !DILocation(line: 1804, column: 3, scope: !5445)
!5457 = !DILocation(line: 1804, column: 13, scope: !5445)
!5458 = !DILocation(line: 1804, column: 31, scope: !5445)
!5459 = !DILocation(line: 1804, column: 43, scope: !5445)
!5460 = !DILocation(line: 1804, column: 56, scope: !5445)
!5461 = !DILocation(line: 1804, column: 17, scope: !5445)
!5462 = !DILocation(line: 1805, column: 3, scope: !5445)
!5463 = !DILocation(line: 1805, column: 6, scope: !5445)
!5464 = !DILocation(line: 1805, column: 18, scope: !5445)
!5465 = !DILocation(line: 1806, column: 3, scope: !5445)
!5466 = !DILocation(line: 1806, column: 6, scope: !5445)
!5467 = !DILocation(line: 1806, column: 22, scope: !5445)
!5468 = !DILocation(line: 1807, column: 16, scope: !5445)
!5469 = !DILocation(line: 1807, column: 3, scope: !5445)
!5470 = !DILocation(line: 1808, column: 10, scope: !5445)
!5471 = !DILocation(line: 1809, column: 1, scope: !5445)
!5472 = !DILocation(line: 1808, column: 3, scope: !5445)
!5473 = distinct !DISubprogram(name: "gt_option_new_filename_array", scope: !2, file: !2, line: 1814, type: !5423, scopeLine: 1817, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !5474)
!5474 = !{!5475, !5476, !5477}
!5475 = !DILocalVariable(name: "option_str", arg: 1, scope: !5473, file: !2, line: 1814, type: !690)
!5476 = !DILocalVariable(name: "description", arg: 2, scope: !5473, file: !2, line: 1815, type: !690)
!5477 = !DILocalVariable(name: "filenames", arg: 3, scope: !5473, file: !2, line: 1816, type: !3915)
!5478 = !DILocation(line: 1814, column: 52, scope: !5473)
!5479 = !DILocation(line: 1815, column: 52, scope: !5473)
!5480 = !DILocation(line: 1816, column: 52, scope: !5473)
!5481 = !DILocation(line: 1818, column: 37, scope: !5473)
!5482 = !DILocation(line: 1818, column: 49, scope: !5473)
!5483 = !DILocation(line: 1818, column: 62, scope: !5473)
!5484 = !DILocation(line: 1818, column: 10, scope: !5473)
!5485 = !DILocation(line: 1818, column: 3, scope: !5473)
!5486 = distinct !DISubprogram(name: "gt_option_new_choice", scope: !2, file: !2, line: 1821, type: !5487, scopeLine: 1824, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !5489)
!5487 = !DISubroutineType(types: !5488)
!5488 = !{!653, !690, !690, !660, !690, !692}
!5489 = !{!5490, !5491, !5492, !5493, !5494, !5495, !5496}
!5490 = !DILocalVariable(name: "option_str", arg: 1, scope: !5486, file: !2, line: 1821, type: !690)
!5491 = !DILocalVariable(name: "description", arg: 2, scope: !5486, file: !2, line: 1821, type: !690)
!5492 = !DILocalVariable(name: "value", arg: 3, scope: !5486, file: !2, line: 1822, type: !660)
!5493 = !DILocalVariable(name: "default_value", arg: 4, scope: !5486, file: !2, line: 1822, type: !690)
!5494 = !DILocalVariable(name: "domain", arg: 5, scope: !5486, file: !2, line: 1823, type: !692)
!5495 = !DILocalVariable(name: "o", scope: !5486, file: !2, line: 1825, type: !653)
!5496 = !DILocalVariable(name: "in_domain", scope: !5486, file: !2, line: 1827, type: !680)
!5497 = !DILocation(line: 1821, column: 44, scope: !5486)
!5498 = !DILocation(line: 1821, column: 68, scope: !5486)
!5499 = !DILocation(line: 1822, column: 39, scope: !5486)
!5500 = !DILocation(line: 1822, column: 58, scope: !5486)
!5501 = !DILocation(line: 1823, column: 45, scope: !5486)
!5502 = !DILocation(line: 1825, column: 3, scope: !5486)
!5503 = !DILocation(line: 1825, column: 13, scope: !5486)
!5504 = !DILocation(line: 1827, column: 3, scope: !5486)
!5505 = !DILocation(line: 1827, column: 11, scope: !5486)
!5506 = !DILocation(line: 1828, column: 7, scope: !5507)
!5507 = distinct !DILexicalBlock(scope: !5486, file: !2, line: 1828, column: 7)
!5508 = !DILocation(line: 1828, column: 7, scope: !5486)
!5509 = !DILocation(line: 1829, column: 5, scope: !5510)
!5510 = distinct !DILexicalBlock(scope: !5507, file: !2, line: 1828, column: 22)
!5511 = !DILocation(line: 1829, column: 12, scope: !5510)
!5512 = !DILocation(line: 1829, column: 19, scope: !5510)
!5513 = !DILocation(line: 1829, column: 29, scope: !5510)
!5514 = !DILocation(line: 1829, column: 34, scope: !5510)
!5515 = !DILocation(line: 1830, column: 11, scope: !5516)
!5516 = distinct !DILexicalBlock(scope: !5517, file: !2, line: 1830, column: 11)
!5517 = distinct !DILexicalBlock(scope: !5510, file: !2, line: 1829, column: 43)
!5518 = !DILocation(line: 1830, column: 18, scope: !5516)
!5519 = !DILocation(line: 1830, column: 28, scope: !5516)
!5520 = !DILocation(line: 1830, column: 36, scope: !5516)
!5521 = !DILocation(line: 1830, column: 33, scope: !5516)
!5522 = !DILocation(line: 1830, column: 11, scope: !5517)
!5523 = !DILocation(line: 1831, column: 19, scope: !5524)
!5524 = distinct !DILexicalBlock(scope: !5516, file: !2, line: 1830, column: 51)
!5525 = !DILocation(line: 1832, column: 9, scope: !5524)
!5526 = !DILocation(line: 1834, column: 16, scope: !5517)
!5527 = distinct !{!5527, !5509, !5528, !1303}
!5528 = !DILocation(line: 1835, column: 5, scope: !5510)
!5529 = !DILocation(line: 1836, column: 3, scope: !5510)
!5530 = !DILocation(line: 1838, column: 15, scope: !5507)
!5531 = !DILocation(line: 1839, column: 3, scope: !5486)
!5532 = !DILocation(line: 1839, column: 3, scope: !5533)
!5533 = distinct !DILexicalBlock(scope: !5534, file: !2, line: 1839, column: 3)
!5534 = distinct !DILexicalBlock(scope: !5486, file: !2, line: 1839, column: 3)
!5535 = !DILocation(line: 1839, column: 3, scope: !5534)
!5536 = !DILocation(line: 1839, column: 3, scope: !5537)
!5537 = distinct !DILexicalBlock(scope: !5533, file: !2, line: 1839, column: 3)
!5538 = !DILocation(line: 1842, column: 28, scope: !5486)
!5539 = !DILocation(line: 1842, column: 40, scope: !5486)
!5540 = !DILocation(line: 1842, column: 53, scope: !5486)
!5541 = !DILocation(line: 1842, column: 60, scope: !5486)
!5542 = !DILocation(line: 1842, column: 7, scope: !5486)
!5543 = !DILocation(line: 1842, column: 5, scope: !5486)
!5544 = !DILocation(line: 1843, column: 3, scope: !5486)
!5545 = !DILocation(line: 1843, column: 6, scope: !5486)
!5546 = !DILocation(line: 1843, column: 18, scope: !5486)
!5547 = !DILocation(line: 1844, column: 15, scope: !5486)
!5548 = !DILocation(line: 1844, column: 3, scope: !5486)
!5549 = !DILocation(line: 1844, column: 6, scope: !5486)
!5550 = !DILocation(line: 1844, column: 13, scope: !5486)
!5551 = !DILocation(line: 1846, column: 10, scope: !5486)
!5552 = !DILocation(line: 1847, column: 1, scope: !5486)
!5553 = !DILocation(line: 1846, column: 3, scope: !5486)
!5554 = distinct !DISubprogram(name: "gt_option_get_name", scope: !2, file: !2, line: 1849, type: !5555, scopeLine: 1850, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !5559)
!5555 = !DISubroutineType(types: !5556)
!5556 = !{!690, !5557}
!5557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5558, size: 64)
!5558 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !654)
!5559 = !{!5560}
!5560 = !DILocalVariable(name: "o", arg: 1, scope: !5554, file: !2, line: 1849, type: !5557)
!5561 = !DILocation(line: 1849, column: 48, scope: !5554)
!5562 = !DILocation(line: 1851, column: 3, scope: !5554)
!5563 = !DILocation(line: 1851, column: 3, scope: !5564)
!5564 = distinct !DILexicalBlock(scope: !5565, file: !2, line: 1851, column: 3)
!5565 = distinct !DILexicalBlock(scope: !5554, file: !2, line: 1851, column: 3)
!5566 = !DILocation(line: 1851, column: 3, scope: !5565)
!5567 = !DILocation(line: 1851, column: 3, scope: !5568)
!5568 = distinct !DILexicalBlock(scope: !5564, file: !2, line: 1851, column: 3)
!5569 = !DILocation(line: 1852, column: 21, scope: !5554)
!5570 = !DILocation(line: 1852, column: 24, scope: !5554)
!5571 = !DILocation(line: 1852, column: 10, scope: !5554)
!5572 = !DILocation(line: 1852, column: 3, scope: !5554)
!5573 = distinct !DISubprogram(name: "gt_option_is_mandatory", scope: !2, file: !2, line: 1855, type: !4523, scopeLine: 1856, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !5574)
!5574 = !{!5575}
!5575 = !DILocalVariable(name: "o", arg: 1, scope: !5573, file: !2, line: 1855, type: !653)
!5576 = !DILocation(line: 1855, column: 39, scope: !5573)
!5577 = !DILocation(line: 1857, column: 3, scope: !5573)
!5578 = !DILocation(line: 1857, column: 3, scope: !5579)
!5579 = distinct !DILexicalBlock(scope: !5580, file: !2, line: 1857, column: 3)
!5580 = distinct !DILexicalBlock(scope: !5573, file: !2, line: 1857, column: 3)
!5581 = !DILocation(line: 1857, column: 3, scope: !5580)
!5582 = !DILocation(line: 1857, column: 3, scope: !5583)
!5583 = distinct !DILexicalBlock(scope: !5579, file: !2, line: 1857, column: 3)
!5584 = !DILocation(line: 1858, column: 3, scope: !5573)
!5585 = !DILocation(line: 1858, column: 6, scope: !5573)
!5586 = !DILocation(line: 1858, column: 19, scope: !5573)
!5587 = !DILocation(line: 1859, column: 1, scope: !5573)
!5588 = distinct !DISubprogram(name: "gt_option_is_mandatory_either", scope: !2, file: !2, line: 1861, type: !5589, scopeLine: 1862, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !5591)
!5589 = !DISubroutineType(types: !5590)
!5590 = !{null, !653, !5557}
!5591 = !{!5592, !5593}
!5592 = !DILocalVariable(name: "o", arg: 1, scope: !5588, file: !2, line: 1861, type: !653)
!5593 = !DILocalVariable(name: "meo", arg: 2, scope: !5588, file: !2, line: 1861, type: !5557)
!5594 = !DILocation(line: 1861, column: 46, scope: !5588)
!5595 = !DILocation(line: 1861, column: 65, scope: !5588)
!5596 = !DILocation(line: 1863, column: 3, scope: !5588)
!5597 = !DILocation(line: 1863, column: 3, scope: !5598)
!5598 = distinct !DILexicalBlock(scope: !5599, file: !2, line: 1863, column: 3)
!5599 = distinct !DILexicalBlock(scope: !5588, file: !2, line: 1863, column: 3)
!5600 = !DILocation(line: 1863, column: 3, scope: !5599)
!5601 = !DILocation(line: 1863, column: 3, scope: !5602)
!5602 = distinct !DILexicalBlock(scope: !5598, file: !2, line: 1863, column: 3)
!5603 = !DILocation(line: 1864, column: 3, scope: !5588)
!5604 = !DILocation(line: 1864, column: 3, scope: !5605)
!5605 = distinct !DILexicalBlock(scope: !5606, file: !2, line: 1864, column: 3)
!5606 = distinct !DILexicalBlock(scope: !5588, file: !2, line: 1864, column: 3)
!5607 = !DILocation(line: 1864, column: 3, scope: !5606)
!5608 = !DILocation(line: 1864, column: 3, scope: !5609)
!5609 = distinct !DILexicalBlock(scope: !5605, file: !2, line: 1864, column: 3)
!5610 = !DILocation(line: 1865, column: 33, scope: !5588)
!5611 = !DILocation(line: 1865, column: 3, scope: !5588)
!5612 = !DILocation(line: 1865, column: 6, scope: !5588)
!5613 = !DILocation(line: 1865, column: 31, scope: !5588)
!5614 = !DILocation(line: 1866, column: 3, scope: !5588)
!5615 = !DILocation(line: 1867, column: 1, scope: !5588)
!5616 = distinct !DISubprogram(name: "gt_option_is_mandatory_either_3", scope: !2, file: !2, line: 1869, type: !5617, scopeLine: 1871, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !5619)
!5617 = !DISubroutineType(types: !5618)
!5618 = !{null, !653, !5557, !5557}
!5619 = !{!5620, !5621, !5622}
!5620 = !DILocalVariable(name: "o", arg: 1, scope: !5616, file: !2, line: 1869, type: !653)
!5621 = !DILocalVariable(name: "meo_a", arg: 2, scope: !5616, file: !2, line: 1869, type: !5557)
!5622 = !DILocalVariable(name: "meo_b", arg: 3, scope: !5616, file: !2, line: 1870, type: !5557)
!5623 = !DILocation(line: 1869, column: 48, scope: !5616)
!5624 = !DILocation(line: 1869, column: 67, scope: !5616)
!5625 = !DILocation(line: 1870, column: 54, scope: !5616)
!5626 = !DILocation(line: 1872, column: 3, scope: !5616)
!5627 = !DILocation(line: 1872, column: 3, scope: !5628)
!5628 = distinct !DILexicalBlock(scope: !5629, file: !2, line: 1872, column: 3)
!5629 = distinct !DILexicalBlock(scope: !5616, file: !2, line: 1872, column: 3)
!5630 = !DILocation(line: 1872, column: 3, scope: !5629)
!5631 = !DILocation(line: 1872, column: 3, scope: !5632)
!5632 = distinct !DILexicalBlock(scope: !5628, file: !2, line: 1872, column: 3)
!5633 = !DILocation(line: 1873, column: 3, scope: !5616)
!5634 = !DILocation(line: 1873, column: 3, scope: !5635)
!5635 = distinct !DILexicalBlock(scope: !5636, file: !2, line: 1873, column: 3)
!5636 = distinct !DILexicalBlock(scope: !5616, file: !2, line: 1873, column: 3)
!5637 = !DILocation(line: 1873, column: 3, scope: !5636)
!5638 = !DILocation(line: 1873, column: 3, scope: !5639)
!5639 = distinct !DILexicalBlock(scope: !5635, file: !2, line: 1873, column: 3)
!5640 = !DILocation(line: 1874, column: 33, scope: !5616)
!5641 = !DILocation(line: 1874, column: 3, scope: !5616)
!5642 = !DILocation(line: 1874, column: 6, scope: !5616)
!5643 = !DILocation(line: 1874, column: 31, scope: !5616)
!5644 = !DILocation(line: 1875, column: 3, scope: !5616)
!5645 = !DILocation(line: 1876, column: 3, scope: !5616)
!5646 = !DILocation(line: 1877, column: 1, scope: !5616)
!5647 = distinct !DISubprogram(name: "gt_option_is_mandatory_either_4", scope: !2, file: !2, line: 1879, type: !5648, scopeLine: 1882, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !5650)
!5648 = !DISubroutineType(types: !5649)
!5649 = !{null, !653, !5557, !5557, !5557}
!5650 = !{!5651, !5652, !5653, !5654}
!5651 = !DILocalVariable(name: "o", arg: 1, scope: !5647, file: !2, line: 1879, type: !653)
!5652 = !DILocalVariable(name: "meo_a", arg: 2, scope: !5647, file: !2, line: 1879, type: !5557)
!5653 = !DILocalVariable(name: "meo_b", arg: 3, scope: !5647, file: !2, line: 1880, type: !5557)
!5654 = !DILocalVariable(name: "meo_c", arg: 4, scope: !5647, file: !2, line: 1881, type: !5557)
!5655 = !DILocation(line: 1879, column: 48, scope: !5647)
!5656 = !DILocation(line: 1879, column: 67, scope: !5647)
!5657 = !DILocation(line: 1880, column: 54, scope: !5647)
!5658 = !DILocation(line: 1881, column: 54, scope: !5647)
!5659 = !DILocation(line: 1883, column: 3, scope: !5647)
!5660 = !DILocation(line: 1883, column: 3, scope: !5661)
!5661 = distinct !DILexicalBlock(scope: !5662, file: !2, line: 1883, column: 3)
!5662 = distinct !DILexicalBlock(scope: !5647, file: !2, line: 1883, column: 3)
!5663 = !DILocation(line: 1883, column: 3, scope: !5662)
!5664 = !DILocation(line: 1883, column: 3, scope: !5665)
!5665 = distinct !DILexicalBlock(scope: !5661, file: !2, line: 1883, column: 3)
!5666 = !DILocation(line: 1884, column: 3, scope: !5647)
!5667 = !DILocation(line: 1884, column: 3, scope: !5668)
!5668 = distinct !DILexicalBlock(scope: !5669, file: !2, line: 1884, column: 3)
!5669 = distinct !DILexicalBlock(scope: !5647, file: !2, line: 1884, column: 3)
!5670 = !DILocation(line: 1884, column: 3, scope: !5669)
!5671 = !DILocation(line: 1884, column: 3, scope: !5672)
!5672 = distinct !DILexicalBlock(scope: !5668, file: !2, line: 1884, column: 3)
!5673 = !DILocation(line: 1885, column: 33, scope: !5647)
!5674 = !DILocation(line: 1885, column: 3, scope: !5647)
!5675 = !DILocation(line: 1885, column: 6, scope: !5647)
!5676 = !DILocation(line: 1885, column: 31, scope: !5647)
!5677 = !DILocation(line: 1886, column: 3, scope: !5647)
!5678 = !DILocation(line: 1887, column: 3, scope: !5647)
!5679 = !DILocation(line: 1888, column: 3, scope: !5647)
!5680 = !DILocation(line: 1889, column: 1, scope: !5647)
!5681 = distinct !DISubprogram(name: "gt_option_is_extended_option", scope: !2, file: !2, line: 1891, type: !4523, scopeLine: 1892, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !5682)
!5682 = !{!5683}
!5683 = !DILocalVariable(name: "o", arg: 1, scope: !5681, file: !2, line: 1891, type: !653)
!5684 = !DILocation(line: 1891, column: 45, scope: !5681)
!5685 = !DILocation(line: 1893, column: 3, scope: !5681)
!5686 = !DILocation(line: 1893, column: 3, scope: !5687)
!5687 = distinct !DILexicalBlock(scope: !5688, file: !2, line: 1893, column: 3)
!5688 = distinct !DILexicalBlock(scope: !5681, file: !2, line: 1893, column: 3)
!5689 = !DILocation(line: 1893, column: 3, scope: !5688)
!5690 = !DILocation(line: 1893, column: 3, scope: !5691)
!5691 = distinct !DILexicalBlock(scope: !5687, file: !2, line: 1893, column: 3)
!5692 = !DILocation(line: 1894, column: 3, scope: !5681)
!5693 = !DILocation(line: 1894, column: 6, scope: !5681)
!5694 = !DILocation(line: 1894, column: 25, scope: !5681)
!5695 = !DILocation(line: 1895, column: 1, scope: !5681)
!5696 = distinct !DISubprogram(name: "gt_option_is_development_option", scope: !2, file: !2, line: 1897, type: !4523, scopeLine: 1898, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !5697)
!5697 = !{!5698}
!5698 = !DILocalVariable(name: "o", arg: 1, scope: !5696, file: !2, line: 1897, type: !653)
!5699 = !DILocation(line: 1897, column: 48, scope: !5696)
!5700 = !DILocation(line: 1899, column: 3, scope: !5696)
!5701 = !DILocation(line: 1899, column: 3, scope: !5702)
!5702 = distinct !DILexicalBlock(scope: !5703, file: !2, line: 1899, column: 3)
!5703 = distinct !DILexicalBlock(scope: !5696, file: !2, line: 1899, column: 3)
!5704 = !DILocation(line: 1899, column: 3, scope: !5703)
!5705 = !DILocation(line: 1899, column: 3, scope: !5706)
!5706 = distinct !DILexicalBlock(scope: !5702, file: !2, line: 1899, column: 3)
!5707 = !DILocation(line: 1900, column: 3, scope: !5696)
!5708 = !DILocation(line: 1900, column: 6, scope: !5696)
!5709 = !DILocation(line: 1900, column: 28, scope: !5696)
!5710 = !DILocation(line: 1901, column: 1, scope: !5696)
!5711 = distinct !DISubprogram(name: "gt_option_imply", scope: !2, file: !2, line: 1903, type: !5589, scopeLine: 1904, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !5712)
!5712 = !{!5713, !5714, !5715}
!5713 = !DILocalVariable(name: "o", arg: 1, scope: !5711, file: !2, line: 1903, type: !653)
!5714 = !DILocalVariable(name: "implied_option", arg: 2, scope: !5711, file: !2, line: 1903, type: !5557)
!5715 = !DILocalVariable(name: "option_array", scope: !5711, file: !2, line: 1905, type: !716)
!5716 = !DILocation(line: 1903, column: 32, scope: !5711)
!5717 = !DILocation(line: 1903, column: 51, scope: !5711)
!5718 = !DILocation(line: 1905, column: 3, scope: !5711)
!5719 = !DILocation(line: 1905, column: 12, scope: !5711)
!5720 = !DILocation(line: 1906, column: 3, scope: !5711)
!5721 = !DILocation(line: 1906, column: 3, scope: !5722)
!5722 = distinct !DILexicalBlock(scope: !5723, file: !2, line: 1906, column: 3)
!5723 = distinct !DILexicalBlock(scope: !5711, file: !2, line: 1906, column: 3)
!5724 = !DILocation(line: 1906, column: 3, scope: !5723)
!5725 = !DILocation(line: 1906, column: 3, scope: !5726)
!5726 = distinct !DILexicalBlock(scope: !5722, file: !2, line: 1906, column: 3)
!5727 = !DILocation(line: 1907, column: 8, scope: !5728)
!5728 = distinct !DILexicalBlock(scope: !5711, file: !2, line: 1907, column: 7)
!5729 = !DILocation(line: 1907, column: 11, scope: !5728)
!5730 = !DILocation(line: 1907, column: 7, scope: !5711)
!5731 = !DILocation(line: 1908, column: 23, scope: !5728)
!5732 = !DILocation(line: 1908, column: 5, scope: !5728)
!5733 = !DILocation(line: 1908, column: 8, scope: !5728)
!5734 = !DILocation(line: 1908, column: 21, scope: !5728)
!5735 = !DILocation(line: 1909, column: 18, scope: !5711)
!5736 = !DILocation(line: 1909, column: 16, scope: !5711)
!5737 = !DILocation(line: 1910, column: 3, scope: !5711)
!5738 = !DILocation(line: 1911, column: 3, scope: !5711)
!5739 = !DILocation(line: 1912, column: 1, scope: !5711)
!5740 = distinct !DISubprogram(name: "gt_option_imply_either_2", scope: !2, file: !2, line: 1914, type: !5617, scopeLine: 1916, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !5741)
!5741 = !{!5742, !5743, !5744, !5745}
!5742 = !DILocalVariable(name: "o", arg: 1, scope: !5740, file: !2, line: 1914, type: !653)
!5743 = !DILocalVariable(name: "io1", arg: 2, scope: !5740, file: !2, line: 1914, type: !5557)
!5744 = !DILocalVariable(name: "io2", arg: 3, scope: !5740, file: !2, line: 1915, type: !5557)
!5745 = !DILocalVariable(name: "option_array", scope: !5740, file: !2, line: 1917, type: !716)
!5746 = !DILocation(line: 1914, column: 41, scope: !5740)
!5747 = !DILocation(line: 1914, column: 60, scope: !5740)
!5748 = !DILocation(line: 1915, column: 47, scope: !5740)
!5749 = !DILocation(line: 1917, column: 3, scope: !5740)
!5750 = !DILocation(line: 1917, column: 12, scope: !5740)
!5751 = !DILocation(line: 1918, column: 3, scope: !5740)
!5752 = !DILocation(line: 1918, column: 3, scope: !5753)
!5753 = distinct !DILexicalBlock(scope: !5754, file: !2, line: 1918, column: 3)
!5754 = distinct !DILexicalBlock(scope: !5740, file: !2, line: 1918, column: 3)
!5755 = !DILocation(line: 1918, column: 3, scope: !5754)
!5756 = !DILocation(line: 1918, column: 3, scope: !5757)
!5757 = distinct !DILexicalBlock(scope: !5753, file: !2, line: 1918, column: 3)
!5758 = !DILocation(line: 1919, column: 8, scope: !5759)
!5759 = distinct !DILexicalBlock(scope: !5740, file: !2, line: 1919, column: 7)
!5760 = !DILocation(line: 1919, column: 11, scope: !5759)
!5761 = !DILocation(line: 1919, column: 7, scope: !5740)
!5762 = !DILocation(line: 1920, column: 23, scope: !5759)
!5763 = !DILocation(line: 1920, column: 5, scope: !5759)
!5764 = !DILocation(line: 1920, column: 8, scope: !5759)
!5765 = !DILocation(line: 1920, column: 21, scope: !5759)
!5766 = !DILocation(line: 1921, column: 18, scope: !5740)
!5767 = !DILocation(line: 1921, column: 16, scope: !5740)
!5768 = !DILocation(line: 1922, column: 3, scope: !5740)
!5769 = !DILocation(line: 1923, column: 3, scope: !5740)
!5770 = !DILocation(line: 1924, column: 3, scope: !5740)
!5771 = !DILocation(line: 1925, column: 1, scope: !5740)
!5772 = distinct !DISubprogram(name: "gt_option_imply_either_3", scope: !2, file: !2, line: 1927, type: !5648, scopeLine: 1929, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !5773)
!5773 = !{!5774, !5775, !5776, !5777, !5778}
!5774 = !DILocalVariable(name: "o", arg: 1, scope: !5772, file: !2, line: 1927, type: !653)
!5775 = !DILocalVariable(name: "io1", arg: 2, scope: !5772, file: !2, line: 1927, type: !5557)
!5776 = !DILocalVariable(name: "io2", arg: 3, scope: !5772, file: !2, line: 1928, type: !5557)
!5777 = !DILocalVariable(name: "io3", arg: 4, scope: !5772, file: !2, line: 1928, type: !5557)
!5778 = !DILocalVariable(name: "option_array", scope: !5772, file: !2, line: 1930, type: !716)
!5779 = !DILocation(line: 1927, column: 41, scope: !5772)
!5780 = !DILocation(line: 1927, column: 60, scope: !5772)
!5781 = !DILocation(line: 1928, column: 47, scope: !5772)
!5782 = !DILocation(line: 1928, column: 68, scope: !5772)
!5783 = !DILocation(line: 1930, column: 3, scope: !5772)
!5784 = !DILocation(line: 1930, column: 12, scope: !5772)
!5785 = !DILocation(line: 1931, column: 3, scope: !5772)
!5786 = !DILocation(line: 1931, column: 3, scope: !5787)
!5787 = distinct !DILexicalBlock(scope: !5788, file: !2, line: 1931, column: 3)
!5788 = distinct !DILexicalBlock(scope: !5772, file: !2, line: 1931, column: 3)
!5789 = !DILocation(line: 1931, column: 3, scope: !5788)
!5790 = !DILocation(line: 1931, column: 3, scope: !5791)
!5791 = distinct !DILexicalBlock(scope: !5787, file: !2, line: 1931, column: 3)
!5792 = !DILocation(line: 1932, column: 8, scope: !5793)
!5793 = distinct !DILexicalBlock(scope: !5772, file: !2, line: 1932, column: 7)
!5794 = !DILocation(line: 1932, column: 11, scope: !5793)
!5795 = !DILocation(line: 1932, column: 7, scope: !5772)
!5796 = !DILocation(line: 1933, column: 23, scope: !5793)
!5797 = !DILocation(line: 1933, column: 5, scope: !5793)
!5798 = !DILocation(line: 1933, column: 8, scope: !5793)
!5799 = !DILocation(line: 1933, column: 21, scope: !5793)
!5800 = !DILocation(line: 1934, column: 18, scope: !5772)
!5801 = !DILocation(line: 1934, column: 16, scope: !5772)
!5802 = !DILocation(line: 1935, column: 3, scope: !5772)
!5803 = !DILocation(line: 1936, column: 3, scope: !5772)
!5804 = !DILocation(line: 1937, column: 3, scope: !5772)
!5805 = !DILocation(line: 1938, column: 3, scope: !5772)
!5806 = !DILocation(line: 1939, column: 1, scope: !5772)
!5807 = distinct !DISubprogram(name: "gt_option_exclude", scope: !2, file: !2, line: 1941, type: !5808, scopeLine: 1942, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !5810)
!5808 = !DISubroutineType(types: !5809)
!5809 = !{null, !653, !653}
!5810 = !{!5811, !5812}
!5811 = !DILocalVariable(name: "o_a", arg: 1, scope: !5807, file: !2, line: 1941, type: !653)
!5812 = !DILocalVariable(name: "o_b", arg: 2, scope: !5807, file: !2, line: 1941, type: !653)
!5813 = !DILocation(line: 1941, column: 34, scope: !5807)
!5814 = !DILocation(line: 1941, column: 49, scope: !5807)
!5815 = !DILocation(line: 1943, column: 3, scope: !5807)
!5816 = !DILocation(line: 1943, column: 3, scope: !5817)
!5817 = distinct !DILexicalBlock(scope: !5818, file: !2, line: 1943, column: 3)
!5818 = distinct !DILexicalBlock(scope: !5807, file: !2, line: 1943, column: 3)
!5819 = !DILocation(line: 1943, column: 3, scope: !5818)
!5820 = !DILocation(line: 1943, column: 3, scope: !5821)
!5821 = distinct !DILexicalBlock(scope: !5817, file: !2, line: 1943, column: 3)
!5822 = !DILocation(line: 1944, column: 8, scope: !5823)
!5823 = distinct !DILexicalBlock(scope: !5807, file: !2, line: 1944, column: 7)
!5824 = !DILocation(line: 1944, column: 13, scope: !5823)
!5825 = !DILocation(line: 1944, column: 7, scope: !5807)
!5826 = !DILocation(line: 1945, column: 23, scope: !5823)
!5827 = !DILocation(line: 1945, column: 5, scope: !5823)
!5828 = !DILocation(line: 1945, column: 10, scope: !5823)
!5829 = !DILocation(line: 1945, column: 21, scope: !5823)
!5830 = !DILocation(line: 1946, column: 8, scope: !5831)
!5831 = distinct !DILexicalBlock(scope: !5807, file: !2, line: 1946, column: 7)
!5832 = !DILocation(line: 1946, column: 13, scope: !5831)
!5833 = !DILocation(line: 1946, column: 7, scope: !5807)
!5834 = !DILocation(line: 1947, column: 23, scope: !5831)
!5835 = !DILocation(line: 1947, column: 5, scope: !5831)
!5836 = !DILocation(line: 1947, column: 10, scope: !5831)
!5837 = !DILocation(line: 1947, column: 21, scope: !5831)
!5838 = !DILocation(line: 1948, column: 3, scope: !5807)
!5839 = !DILocation(line: 1949, column: 3, scope: !5807)
!5840 = !DILocation(line: 1950, column: 1, scope: !5807)
!5841 = distinct !DISubprogram(name: "gt_option_hide_default", scope: !2, file: !2, line: 1952, type: !4523, scopeLine: 1953, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !5842)
!5842 = !{!5843}
!5843 = !DILocalVariable(name: "o", arg: 1, scope: !5841, file: !2, line: 1952, type: !653)
!5844 = !DILocation(line: 1952, column: 39, scope: !5841)
!5845 = !DILocation(line: 1954, column: 3, scope: !5841)
!5846 = !DILocation(line: 1954, column: 3, scope: !5847)
!5847 = distinct !DILexicalBlock(scope: !5848, file: !2, line: 1954, column: 3)
!5848 = distinct !DILexicalBlock(scope: !5841, file: !2, line: 1954, column: 3)
!5849 = !DILocation(line: 1954, column: 3, scope: !5848)
!5850 = !DILocation(line: 1954, column: 3, scope: !5851)
!5851 = distinct !DILexicalBlock(scope: !5847, file: !2, line: 1954, column: 3)
!5852 = !DILocation(line: 1955, column: 3, scope: !5841)
!5853 = !DILocation(line: 1955, column: 6, scope: !5841)
!5854 = !DILocation(line: 1955, column: 19, scope: !5841)
!5855 = !DILocation(line: 1956, column: 1, scope: !5841)
!5856 = distinct !DISubprogram(name: "gt_option_argument_is_optional", scope: !2, file: !2, line: 1958, type: !4523, scopeLine: 1959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !5857)
!5857 = !{!5858}
!5858 = !DILocalVariable(name: "o", arg: 1, scope: !5856, file: !2, line: 1958, type: !653)
!5859 = !DILocation(line: 1958, column: 47, scope: !5856)
!5860 = !DILocation(line: 1960, column: 3, scope: !5856)
!5861 = !DILocation(line: 1960, column: 3, scope: !5862)
!5862 = distinct !DILexicalBlock(scope: !5863, file: !2, line: 1960, column: 3)
!5863 = distinct !DILexicalBlock(scope: !5856, file: !2, line: 1960, column: 3)
!5864 = !DILocation(line: 1960, column: 3, scope: !5863)
!5865 = !DILocation(line: 1960, column: 3, scope: !5866)
!5866 = distinct !DILexicalBlock(scope: !5862, file: !2, line: 1960, column: 3)
!5867 = !DILocation(line: 1961, column: 3, scope: !5856)
!5868 = !DILocation(line: 1961, column: 6, scope: !5856)
!5869 = !DILocation(line: 1961, column: 27, scope: !5856)
!5870 = !DILocation(line: 1962, column: 1, scope: !5856)
!5871 = distinct !DISubprogram(name: "gt_option_is_set", scope: !2, file: !2, line: 1964, type: !5872, scopeLine: 1965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !5874)
!5872 = !DISubroutineType(types: !5873)
!5873 = !{!670, !5557}
!5874 = !{!5875}
!5875 = !DILocalVariable(name: "o", arg: 1, scope: !5871, file: !2, line: 1964, type: !5557)
!5876 = !DILocation(line: 1964, column: 39, scope: !5871)
!5877 = !DILocation(line: 1966, column: 3, scope: !5871)
!5878 = !DILocation(line: 1966, column: 3, scope: !5879)
!5879 = distinct !DILexicalBlock(scope: !5880, file: !2, line: 1966, column: 3)
!5880 = distinct !DILexicalBlock(scope: !5871, file: !2, line: 1966, column: 3)
!5881 = !DILocation(line: 1966, column: 3, scope: !5880)
!5882 = !DILocation(line: 1966, column: 3, scope: !5883)
!5883 = distinct !DILexicalBlock(scope: !5879, file: !2, line: 1966, column: 3)
!5884 = !DILocation(line: 1967, column: 10, scope: !5871)
!5885 = !DILocation(line: 1967, column: 13, scope: !5871)
!5886 = !DILocation(line: 1967, column: 3, scope: !5871)
!5887 = distinct !DISubprogram(name: "gt_option_parse_spacespec", scope: !2, file: !2, line: 1988, type: !5888, scopeLine: 1992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !5890)
!5888 = !DISubroutineType(types: !5889)
!5889 = !{!649, !728, !690, !993, !844}
!5890 = !{!5891, !5892, !5893, !5894, !5895, !5896, !5897, !5900}
!5891 = !DILocalVariable(name: "maximumspace", arg: 1, scope: !5887, file: !2, line: 1988, type: !728)
!5892 = !DILocalVariable(name: "optname", arg: 2, scope: !5887, file: !2, line: 1989, type: !690)
!5893 = !DILocalVariable(name: "memlimit", arg: 3, scope: !5887, file: !2, line: 1990, type: !993)
!5894 = !DILocalVariable(name: "err", arg: 4, scope: !5887, file: !2, line: 1991, type: !844)
!5895 = !DILocalVariable(name: "had_err", scope: !5887, file: !2, line: 1993, type: !649)
!5896 = !DILocalVariable(name: "match", scope: !5887, file: !2, line: 1994, type: !670)
!5897 = !DILocalVariable(name: "readint", scope: !5898, file: !2, line: 2006, type: !649)
!5898 = distinct !DILexicalBlock(scope: !5899, file: !2, line: 2005, column: 3)
!5899 = distinct !DILexicalBlock(scope: !5887, file: !2, line: 2004, column: 7)
!5900 = !DILocalVariable(name: "buffer", scope: !5898, file: !2, line: 2007, type: !67)
!5901 = !DILocation(line: 1988, column: 40, scope: !5887)
!5902 = !DILocation(line: 1989, column: 43, scope: !5887)
!5903 = !DILocation(line: 1990, column: 44, scope: !5887)
!5904 = !DILocation(line: 1991, column: 40, scope: !5887)
!5905 = !DILocation(line: 1993, column: 3, scope: !5887)
!5906 = !DILocation(line: 1993, column: 7, scope: !5887)
!5907 = !DILocation(line: 1994, column: 3, scope: !5887)
!5908 = !DILocation(line: 1994, column: 8, scope: !5887)
!5909 = !DILocation(line: 1996, column: 59, scope: !5887)
!5910 = !DILocation(line: 1996, column: 48, scope: !5887)
!5911 = !DILocation(line: 1996, column: 70, scope: !5887)
!5912 = !DILocation(line: 1996, column: 13, scope: !5887)
!5913 = !DILocation(line: 1996, column: 11, scope: !5887)
!5914 = !DILocation(line: 1997, column: 7, scope: !5915)
!5915 = distinct !DILexicalBlock(scope: !5887, file: !2, line: 1997, column: 7)
!5916 = !DILocation(line: 1997, column: 15, scope: !5915)
!5917 = !DILocation(line: 1997, column: 19, scope: !5915)
!5918 = !DILocation(line: 1997, column: 7, scope: !5887)
!5919 = !DILocation(line: 1999, column: 18, scope: !5920)
!5920 = distinct !DILexicalBlock(scope: !5915, file: !2, line: 1998, column: 3)
!5921 = !DILocation(line: 2001, column: 47, scope: !5920)
!5922 = !DILocation(line: 1999, column: 5, scope: !5920)
!5923 = !DILocation(line: 2002, column: 13, scope: !5920)
!5924 = !DILocation(line: 2003, column: 3, scope: !5920)
!5925 = !DILocation(line: 2004, column: 8, scope: !5899)
!5926 = !DILocation(line: 2004, column: 7, scope: !5887)
!5927 = !DILocation(line: 2006, column: 5, scope: !5898)
!5928 = !DILocation(line: 2006, column: 9, scope: !5898)
!5929 = !DILocation(line: 2007, column: 5, scope: !5898)
!5930 = !DILocation(line: 2007, column: 10, scope: !5898)
!5931 = !DILocation(line: 2009, column: 30, scope: !5898)
!5932 = !DILocation(line: 2009, column: 19, scope: !5898)
!5933 = !DILocation(line: 2009, column: 59, scope: !5898)
!5934 = !DILocation(line: 2009, column: 12, scope: !5898)
!5935 = !DILocation(line: 2010, column: 31, scope: !5898)
!5936 = !DILocation(line: 2010, column: 21, scope: !5898)
!5937 = !DILocation(line: 2010, column: 6, scope: !5898)
!5938 = !DILocation(line: 2010, column: 19, scope: !5898)
!5939 = !DILocation(line: 2011, column: 16, scope: !5940)
!5940 = distinct !DILexicalBlock(scope: !5898, file: !2, line: 2011, column: 9)
!5941 = !DILocation(line: 2011, column: 9, scope: !5940)
!5942 = !DILocation(line: 2011, column: 30, scope: !5940)
!5943 = !DILocation(line: 2011, column: 9, scope: !5898)
!5944 = !DILocation(line: 2019, column: 11, scope: !5945)
!5945 = distinct !DILexicalBlock(scope: !5946, file: !2, line: 2019, column: 11)
!5946 = distinct !DILexicalBlock(scope: !5940, file: !2, line: 2012, column: 5)
!5947 = !DILocation(line: 2019, column: 19, scope: !5945)
!5948 = !DILocation(line: 2019, column: 11, scope: !5946)
!5949 = !DILocation(line: 2021, column: 10, scope: !5950)
!5950 = distinct !DILexicalBlock(scope: !5945, file: !2, line: 2020, column: 7)
!5951 = !DILocation(line: 2021, column: 23, scope: !5950)
!5952 = !DILocation(line: 2022, column: 7, scope: !5950)
!5953 = !DILocation(line: 2023, column: 5, scope: !5946)
!5954 = !DILocation(line: 2025, column: 18, scope: !5955)
!5955 = distinct !DILexicalBlock(scope: !5956, file: !2, line: 2025, column: 11)
!5956 = distinct !DILexicalBlock(scope: !5940, file: !2, line: 2024, column: 5)
!5957 = !DILocation(line: 2025, column: 11, scope: !5955)
!5958 = !DILocation(line: 2025, column: 32, scope: !5955)
!5959 = !DILocation(line: 2025, column: 11, scope: !5956)
!5960 = !DILocation(line: 2034, column: 14, scope: !5961)
!5961 = distinct !DILexicalBlock(scope: !5962, file: !2, line: 2034, column: 13)
!5962 = distinct !DILexicalBlock(scope: !5955, file: !2, line: 2026, column: 7)
!5963 = !DILocation(line: 2034, column: 13, scope: !5962)
!5964 = !DILocation(line: 2036, column: 12, scope: !5965)
!5965 = distinct !DILexicalBlock(scope: !5961, file: !2, line: 2035, column: 9)
!5966 = !DILocation(line: 2036, column: 25, scope: !5965)
!5967 = !DILocation(line: 2037, column: 9, scope: !5965)
!5968 = !DILocation(line: 2038, column: 7, scope: !5962)
!5969 = !DILocation(line: 2040, column: 3, scope: !5899)
!5970 = !DILocation(line: 2040, column: 3, scope: !5898)
!5971 = !DILocation(line: 2041, column: 10, scope: !5887)
!5972 = !DILocation(line: 2042, column: 1, scope: !5887)
!5973 = !DILocation(line: 2041, column: 3, scope: !5887)
!5974 = !DISubprogram(name: "gt_grep", scope: !5975, file: !5975, line: 27, type: !5976, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5975 = !DIFile(filename: "src/core/grep_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "87f22a8a5f2821b73a43e1a4886f25d8")
!5976 = !DISubroutineType(types: !5977)
!5977 = !{!649, !723, !690, !690, !844}
!5978 = !DISubprogram(name: "sscanf", linkageName: "__isoc99_sscanf", scope: !765, file: !765, line: 439, type: !5979, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5979 = !DISubroutineType(types: !5980)
!5980 = !{!649, !820, !820, null}
!5981 = distinct !DISubprogram(name: "gt_option_parser_synopsis", scope: !2, file: !2, line: 2044, type: !5982, scopeLine: 2045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !5986)
!5982 = !DISubroutineType(types: !5983)
!5983 = !{!690, !5984}
!5984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5985, size: 64)
!5985 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !829)
!5986 = !{!5987}
!5987 = !DILocalVariable(name: "option_parser", arg: 1, scope: !5981, file: !2, line: 2044, type: !5984)
!5988 = !DILocation(line: 2044, column: 61, scope: !5981)
!5989 = !DILocation(line: 2046, column: 3, scope: !5981)
!5990 = !DILocation(line: 2046, column: 3, scope: !5991)
!5991 = distinct !DILexicalBlock(scope: !5992, file: !2, line: 2046, column: 3)
!5992 = distinct !DILexicalBlock(scope: !5981, file: !2, line: 2046, column: 3)
!5993 = !DILocation(line: 2046, column: 3, scope: !5992)
!5994 = !DILocation(line: 2046, column: 3, scope: !5995)
!5995 = distinct !DILexicalBlock(scope: !5991, file: !2, line: 2046, column: 3)
!5996 = !DILocation(line: 2047, column: 10, scope: !5981)
!5997 = !DILocation(line: 2047, column: 25, scope: !5981)
!5998 = !DILocation(line: 2047, column: 3, scope: !5981)
!5999 = distinct !DISubprogram(name: "gt_option_parser_one_liner", scope: !2, file: !2, line: 2050, type: !5982, scopeLine: 2051, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !6000)
!6000 = !{!6001}
!6001 = !DILocalVariable(name: "option_parser", arg: 1, scope: !5999, file: !2, line: 2050, type: !5984)
!6002 = !DILocation(line: 2050, column: 62, scope: !5999)
!6003 = !DILocation(line: 2052, column: 3, scope: !5999)
!6004 = !DILocation(line: 2052, column: 3, scope: !6005)
!6005 = distinct !DILexicalBlock(scope: !6006, file: !2, line: 2052, column: 3)
!6006 = distinct !DILexicalBlock(scope: !5999, file: !2, line: 2052, column: 3)
!6007 = !DILocation(line: 2052, column: 3, scope: !6006)
!6008 = !DILocation(line: 2052, column: 3, scope: !6009)
!6009 = distinct !DILexicalBlock(scope: !6005, file: !2, line: 2052, column: 3)
!6010 = !DILocation(line: 2053, column: 10, scope: !5999)
!6011 = !DILocation(line: 2053, column: 25, scope: !5999)
!6012 = !DILocation(line: 2053, column: 3, scope: !5999)
!6013 = distinct !DISubprogram(name: "gt_option_parser_get_progname", scope: !2, file: !2, line: 2056, type: !5982, scopeLine: 2057, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !6014)
!6014 = !{!6015}
!6015 = !DILocalVariable(name: "option_parser", arg: 1, scope: !6013, file: !2, line: 2056, type: !5984)
!6016 = !DILocation(line: 2056, column: 65, scope: !6013)
!6017 = !DILocation(line: 2058, column: 3, scope: !6013)
!6018 = !DILocation(line: 2058, column: 3, scope: !6019)
!6019 = distinct !DILexicalBlock(scope: !6020, file: !2, line: 2058, column: 3)
!6020 = distinct !DILexicalBlock(scope: !6013, file: !2, line: 2058, column: 3)
!6021 = !DILocation(line: 2058, column: 3, scope: !6020)
!6022 = !DILocation(line: 2058, column: 3, scope: !6023)
!6023 = distinct !DILexicalBlock(scope: !6019, file: !2, line: 2058, column: 3)
!6024 = !DILocation(line: 2059, column: 10, scope: !6013)
!6025 = !DILocation(line: 2059, column: 25, scope: !6013)
!6026 = !DILocation(line: 2059, column: 3, scope: !6013)
!6027 = distinct !DISubprogram(name: "gt_option_reset", scope: !2, file: !2, line: 181, type: !4523, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !6028)
!6028 = !{!6029}
!6029 = !DILocalVariable(name: "option", arg: 1, scope: !6027, file: !2, line: 181, type: !653)
!6030 = !DILocation(line: 181, column: 39, scope: !6027)
!6031 = !DILocation(line: 183, column: 3, scope: !6027)
!6032 = !DILocation(line: 183, column: 3, scope: !6033)
!6033 = distinct !DILexicalBlock(scope: !6034, file: !2, line: 183, column: 3)
!6034 = distinct !DILexicalBlock(scope: !6027, file: !2, line: 183, column: 3)
!6035 = !DILocation(line: 183, column: 3, scope: !6034)
!6036 = !DILocation(line: 183, column: 3, scope: !6037)
!6037 = distinct !DILexicalBlock(scope: !6033, file: !2, line: 183, column: 3)
!6038 = !DILocation(line: 184, column: 7, scope: !6039)
!6039 = distinct !DILexicalBlock(scope: !6027, file: !2, line: 184, column: 7)
!6040 = !DILocation(line: 184, column: 15, scope: !6039)
!6041 = !DILocation(line: 184, column: 27, scope: !6039)
!6042 = !DILocation(line: 184, column: 7, scope: !6027)
!6043 = !DILocation(line: 185, column: 30, scope: !6044)
!6044 = distinct !DILexicalBlock(scope: !6039, file: !2, line: 184, column: 43)
!6045 = !DILocation(line: 185, column: 38, scope: !6044)
!6046 = !DILocation(line: 185, column: 52, scope: !6044)
!6047 = !DILocation(line: 185, column: 14, scope: !6044)
!6048 = !DILocation(line: 185, column: 22, scope: !6044)
!6049 = !DILocation(line: 185, column: 28, scope: !6044)
!6050 = !DILocation(line: 186, column: 3, scope: !6044)
!6051 = !DILocation(line: 187, column: 12, scope: !6052)
!6052 = distinct !DILexicalBlock(scope: !6039, file: !2, line: 187, column: 12)
!6053 = !DILocation(line: 187, column: 20, scope: !6052)
!6054 = !DILocation(line: 187, column: 32, scope: !6052)
!6055 = !DILocation(line: 188, column: 14, scope: !6052)
!6056 = !DILocation(line: 188, column: 17, scope: !6052)
!6057 = !DILocation(line: 188, column: 25, scope: !6052)
!6058 = !DILocation(line: 188, column: 37, scope: !6052)
!6059 = !DILocation(line: 187, column: 12, scope: !6039)
!6060 = !DILocation(line: 189, column: 25, scope: !6061)
!6061 = distinct !DILexicalBlock(scope: !6052, file: !2, line: 188, column: 55)
!6062 = !DILocation(line: 189, column: 33, scope: !6061)
!6063 = !DILocation(line: 189, column: 40, scope: !6061)
!6064 = !DILocation(line: 189, column: 48, scope: !6061)
!6065 = !DILocation(line: 189, column: 62, scope: !6061)
!6066 = !DILocation(line: 189, column: 5, scope: !6061)
!6067 = !DILocation(line: 190, column: 3, scope: !6061)
!6068 = !DILocation(line: 191, column: 12, scope: !6069)
!6069 = distinct !DILexicalBlock(scope: !6052, file: !2, line: 191, column: 12)
!6070 = !DILocation(line: 191, column: 20, scope: !6069)
!6071 = !DILocation(line: 191, column: 32, scope: !6069)
!6072 = !DILocation(line: 191, column: 12, scope: !6052)
!6073 = !DILocation(line: 192, column: 32, scope: !6074)
!6074 = distinct !DILexicalBlock(scope: !6069, file: !2, line: 191, column: 50)
!6075 = !DILocation(line: 192, column: 40, scope: !6074)
!6076 = !DILocation(line: 192, column: 54, scope: !6074)
!6077 = !DILocation(line: 192, column: 16, scope: !6074)
!6078 = !DILocation(line: 192, column: 24, scope: !6074)
!6079 = !DILocation(line: 192, column: 30, scope: !6074)
!6080 = !DILocation(line: 193, column: 3, scope: !6074)
!6081 = !DILocation(line: 194, column: 12, scope: !6082)
!6082 = distinct !DILexicalBlock(scope: !6069, file: !2, line: 194, column: 12)
!6083 = !DILocation(line: 194, column: 20, scope: !6082)
!6084 = !DILocation(line: 194, column: 32, scope: !6082)
!6085 = !DILocation(line: 194, column: 12, scope: !6069)
!6086 = !DILocation(line: 195, column: 29, scope: !6087)
!6087 = distinct !DILexicalBlock(scope: !6082, file: !2, line: 194, column: 47)
!6088 = !DILocation(line: 195, column: 37, scope: !6087)
!6089 = !DILocation(line: 195, column: 51, scope: !6087)
!6090 = !DILocation(line: 195, column: 13, scope: !6087)
!6091 = !DILocation(line: 195, column: 21, scope: !6087)
!6092 = !DILocation(line: 195, column: 27, scope: !6087)
!6093 = !DILocation(line: 196, column: 3, scope: !6087)
!6094 = !DILocation(line: 197, column: 12, scope: !6095)
!6095 = distinct !DILexicalBlock(scope: !6082, file: !2, line: 197, column: 12)
!6096 = !DILocation(line: 197, column: 20, scope: !6095)
!6097 = !DILocation(line: 197, column: 32, scope: !6095)
!6098 = !DILocation(line: 197, column: 12, scope: !6082)
!6099 = !DILocation(line: 198, column: 38, scope: !6100)
!6100 = distinct !DILexicalBlock(scope: !6095, file: !2, line: 197, column: 48)
!6101 = !DILocation(line: 198, column: 46, scope: !6100)
!6102 = !DILocation(line: 198, column: 60, scope: !6100)
!6103 = !DILocation(line: 198, column: 22, scope: !6100)
!6104 = !DILocation(line: 198, column: 30, scope: !6100)
!6105 = !DILocation(line: 198, column: 36, scope: !6100)
!6106 = !DILocation(line: 199, column: 3, scope: !6100)
!6107 = !DILocation(line: 200, column: 12, scope: !6108)
!6108 = distinct !DILexicalBlock(scope: !6095, file: !2, line: 200, column: 12)
!6109 = !DILocation(line: 200, column: 20, scope: !6108)
!6110 = !DILocation(line: 200, column: 32, scope: !6108)
!6111 = !DILocation(line: 200, column: 12, scope: !6095)
!6112 = !DILocation(line: 201, column: 32, scope: !6113)
!6113 = distinct !DILexicalBlock(scope: !6108, file: !2, line: 200, column: 48)
!6114 = !DILocation(line: 201, column: 40, scope: !6113)
!6115 = !DILocation(line: 201, column: 54, scope: !6113)
!6116 = !DILocation(line: 201, column: 16, scope: !6113)
!6117 = !DILocation(line: 201, column: 24, scope: !6113)
!6118 = !DILocation(line: 201, column: 30, scope: !6113)
!6119 = !DILocation(line: 202, column: 3, scope: !6113)
!6120 = !DILocation(line: 203, column: 12, scope: !6121)
!6121 = distinct !DILexicalBlock(scope: !6108, file: !2, line: 203, column: 12)
!6122 = !DILocation(line: 203, column: 20, scope: !6121)
!6123 = !DILocation(line: 203, column: 32, scope: !6121)
!6124 = !DILocation(line: 203, column: 12, scope: !6108)
!6125 = !DILocation(line: 204, column: 33, scope: !6126)
!6126 = distinct !DILexicalBlock(scope: !6121, file: !2, line: 203, column: 49)
!6127 = !DILocation(line: 204, column: 41, scope: !6126)
!6128 = !DILocation(line: 204, column: 55, scope: !6126)
!6129 = !DILocation(line: 204, column: 17, scope: !6126)
!6130 = !DILocation(line: 204, column: 25, scope: !6126)
!6131 = !DILocation(line: 204, column: 31, scope: !6126)
!6132 = !DILocation(line: 205, column: 3, scope: !6126)
!6133 = !DILocation(line: 206, column: 12, scope: !6134)
!6134 = distinct !DILexicalBlock(scope: !6121, file: !2, line: 206, column: 12)
!6135 = !DILocation(line: 206, column: 20, scope: !6134)
!6136 = !DILocation(line: 206, column: 32, scope: !6134)
!6137 = !DILocation(line: 206, column: 12, scope: !6121)
!6138 = !DILocation(line: 207, column: 16, scope: !6139)
!6139 = distinct !DILexicalBlock(scope: !6134, file: !2, line: 206, column: 49)
!6140 = !DILocation(line: 207, column: 24, scope: !6139)
!6141 = !DILocation(line: 207, column: 32, scope: !6139)
!6142 = !DILocation(line: 207, column: 40, scope: !6139)
!6143 = !DILocation(line: 207, column: 54, scope: !6139)
!6144 = !{i64 0, i64 8, !1287, i64 8, i64 8, !1287}
!6145 = !DILocation(line: 208, column: 3, scope: !6139)
!6146 = !DILocation(line: 209, column: 1, scope: !6027)
!6147 = distinct !DISubprogram(name: "has_extended_option", scope: !2, file: !2, line: 503, type: !6148, scopeLine: 504, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !6150)
!6148 = !DISubroutineType(types: !6149)
!6149 = !{!670, !716}
!6150 = !{!6151, !6152, !6153}
!6151 = !DILocalVariable(name: "options", arg: 1, scope: !6147, file: !2, line: 503, type: !716)
!6152 = !DILocalVariable(name: "i", scope: !6147, file: !2, line: 505, type: !680)
!6153 = !DILocalVariable(name: "option", scope: !6147, file: !2, line: 506, type: !653)
!6154 = !DILocation(line: 503, column: 42, scope: !6147)
!6155 = !DILocation(line: 505, column: 3, scope: !6147)
!6156 = !DILocation(line: 505, column: 11, scope: !6147)
!6157 = !DILocation(line: 506, column: 3, scope: !6147)
!6158 = !DILocation(line: 506, column: 13, scope: !6147)
!6159 = !DILocation(line: 507, column: 3, scope: !6147)
!6160 = !DILocation(line: 507, column: 3, scope: !6161)
!6161 = distinct !DILexicalBlock(scope: !6162, file: !2, line: 507, column: 3)
!6162 = distinct !DILexicalBlock(scope: !6147, file: !2, line: 507, column: 3)
!6163 = !DILocation(line: 507, column: 3, scope: !6162)
!6164 = !DILocation(line: 507, column: 3, scope: !6165)
!6165 = distinct !DILexicalBlock(scope: !6161, file: !2, line: 507, column: 3)
!6166 = !DILocation(line: 508, column: 10, scope: !6167)
!6167 = distinct !DILexicalBlock(scope: !6147, file: !2, line: 508, column: 3)
!6168 = !DILocation(line: 508, column: 8, scope: !6167)
!6169 = !DILocation(line: 508, column: 15, scope: !6170)
!6170 = distinct !DILexicalBlock(scope: !6167, file: !2, line: 508, column: 3)
!6171 = !DILocation(line: 508, column: 33, scope: !6170)
!6172 = !DILocation(line: 508, column: 19, scope: !6170)
!6173 = !DILocation(line: 508, column: 17, scope: !6170)
!6174 = !DILocation(line: 508, column: 3, scope: !6167)
!6175 = !DILocation(line: 509, column: 41, scope: !6176)
!6176 = distinct !DILexicalBlock(scope: !6170, file: !2, line: 508, column: 48)
!6177 = !DILocation(line: 509, column: 50, scope: !6176)
!6178 = !DILocation(line: 509, column: 28, scope: !6176)
!6179 = !DILocation(line: 509, column: 14, scope: !6176)
!6180 = !DILocation(line: 509, column: 12, scope: !6176)
!6181 = !DILocation(line: 510, column: 9, scope: !6182)
!6182 = distinct !DILexicalBlock(scope: !6176, file: !2, line: 510, column: 9)
!6183 = !DILocation(line: 510, column: 17, scope: !6182)
!6184 = !DILocation(line: 510, column: 9, scope: !6176)
!6185 = !DILocation(line: 511, column: 7, scope: !6182)
!6186 = !DILocation(line: 512, column: 3, scope: !6176)
!6187 = !DILocation(line: 508, column: 44, scope: !6170)
!6188 = !DILocation(line: 508, column: 3, scope: !6170)
!6189 = distinct !{!6189, !6174, !6190, !1303}
!6190 = !DILocation(line: 512, column: 3, scope: !6167)
!6191 = !DILocation(line: 513, column: 3, scope: !6147)
!6192 = !DILocation(line: 514, column: 1, scope: !6147)
!6193 = distinct !DISubprogram(name: "gt_option_new_help", scope: !2, file: !2, line: 135, type: !6194, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !6196)
!6194 = !DISubroutineType(types: !6195)
!6195 = !{!653, !670}
!6196 = !{!6197, !6198}
!6197 = !DILocalVariable(name: "has_extended_options", arg: 1, scope: !6193, file: !2, line: 135, type: !670)
!6198 = !DILocalVariable(name: "o", scope: !6193, file: !2, line: 137, type: !653)
!6199 = !DILocation(line: 135, column: 42, scope: !6193)
!6200 = !DILocation(line: 137, column: 3, scope: !6193)
!6201 = !DILocation(line: 137, column: 13, scope: !6193)
!6202 = !DILocation(line: 138, column: 7, scope: !6203)
!6203 = distinct !DILexicalBlock(scope: !6193, file: !2, line: 138, column: 7)
!6204 = !DILocation(line: 138, column: 7, scope: !6193)
!6205 = !DILocation(line: 139, column: 9, scope: !6203)
!6206 = !DILocation(line: 139, column: 7, scope: !6203)
!6207 = !DILocation(line: 139, column: 5, scope: !6203)
!6208 = !DILocation(line: 141, column: 9, scope: !6203)
!6209 = !DILocation(line: 141, column: 7, scope: !6203)
!6210 = !DILocation(line: 142, column: 3, scope: !6193)
!6211 = !DILocation(line: 142, column: 6, scope: !6193)
!6212 = !DILocation(line: 142, column: 18, scope: !6193)
!6213 = !DILocation(line: 143, column: 3, scope: !6193)
!6214 = !DILocation(line: 143, column: 6, scope: !6193)
!6215 = !DILocation(line: 143, column: 22, scope: !6193)
!6216 = !DILocation(line: 144, column: 10, scope: !6193)
!6217 = !DILocation(line: 145, column: 1, scope: !6193)
!6218 = !DILocation(line: 144, column: 3, scope: !6193)
!6219 = distinct !DISubprogram(name: "gt_option_new_helpplus", scope: !2, file: !2, line: 147, type: !6220, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !6222)
!6220 = !DISubroutineType(types: !6221)
!6221 = !{!653}
!6222 = !{!6223}
!6223 = !DILocalVariable(name: "o", scope: !6219, file: !2, line: 149, type: !653)
!6224 = !DILocation(line: 149, column: 3, scope: !6219)
!6225 = !DILocation(line: 149, column: 13, scope: !6219)
!6226 = !DILocation(line: 149, column: 17, scope: !6219)
!6227 = !DILocation(line: 151, column: 3, scope: !6219)
!6228 = !DILocation(line: 151, column: 6, scope: !6219)
!6229 = !DILocation(line: 151, column: 18, scope: !6219)
!6230 = !DILocation(line: 152, column: 3, scope: !6219)
!6231 = !DILocation(line: 152, column: 6, scope: !6219)
!6232 = !DILocation(line: 152, column: 22, scope: !6219)
!6233 = !DILocation(line: 153, column: 10, scope: !6219)
!6234 = !DILocation(line: 154, column: 1, scope: !6219)
!6235 = !DILocation(line: 153, column: 3, scope: !6219)
!6236 = distinct !DISubprogram(name: "gt_option_new_helpdev", scope: !2, file: !2, line: 156, type: !6220, scopeLine: 157, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !6237)
!6237 = !{!6238}
!6238 = !DILocalVariable(name: "o", scope: !6236, file: !2, line: 158, type: !653)
!6239 = !DILocation(line: 158, column: 3, scope: !6236)
!6240 = !DILocation(line: 158, column: 13, scope: !6236)
!6241 = !DILocation(line: 158, column: 17, scope: !6236)
!6242 = !DILocation(line: 160, column: 3, scope: !6236)
!6243 = !DILocation(line: 160, column: 6, scope: !6236)
!6244 = !DILocation(line: 160, column: 18, scope: !6236)
!6245 = !DILocation(line: 161, column: 3, scope: !6236)
!6246 = !DILocation(line: 161, column: 6, scope: !6236)
!6247 = !DILocation(line: 161, column: 22, scope: !6236)
!6248 = !DILocation(line: 162, column: 3, scope: !6236)
!6249 = !DILocation(line: 162, column: 6, scope: !6236)
!6250 = !DILocation(line: 162, column: 28, scope: !6236)
!6251 = !DILocation(line: 163, column: 10, scope: !6236)
!6252 = !DILocation(line: 164, column: 1, scope: !6236)
!6253 = !DILocation(line: 163, column: 3, scope: !6236)
!6254 = distinct !DISubprogram(name: "gt_option_new_version", scope: !2, file: !2, line: 166, type: !6220, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !6255)
!6255 = !{!6256}
!6256 = !DILocalVariable(name: "o", scope: !6254, file: !2, line: 168, type: !653)
!6257 = !DILocation(line: 168, column: 3, scope: !6254)
!6258 = !DILocation(line: 168, column: 13, scope: !6254)
!6259 = !DILocation(line: 168, column: 17, scope: !6254)
!6260 = !DILocation(line: 170, column: 3, scope: !6254)
!6261 = !DILocation(line: 170, column: 6, scope: !6254)
!6262 = !DILocation(line: 170, column: 18, scope: !6254)
!6263 = !DILocation(line: 171, column: 10, scope: !6254)
!6264 = !DILocation(line: 172, column: 1, scope: !6254)
!6265 = !DILocation(line: 171, column: 3, scope: !6254)
!6266 = !DISubprogram(name: "__ctype_toupper_loc", scope: !623, file: !623, line: 83, type: !6267, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6267 = !DISubroutineType(types: !6268)
!6268 = !{!6269}
!6269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6270, size: 64)
!6270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6271, size: 64)
!6271 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6272)
!6272 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !797, line: 41, baseType: !649)
!6273 = !DISubprogram(name: "gt_warning", scope: !6274, file: !6274, line: 29, type: !6275, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6274 = !DIFile(filename: "src/core/warning_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "e8655f31b131e8c066a84f1af283b08e")
!6275 = !DISubroutineType(types: !6276)
!6276 = !{null, !690, null}
!6277 = !DISubprogram(name: "printf", scope: !765, file: !765, line: 356, type: !6278, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6278 = !DISubroutineType(types: !6279)
!6279 = !{!649, !820, null}
!6280 = distinct !DISubprogram(name: "show_description", scope: !2, file: !2, line: 300, type: !6281, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !6283)
!6281 = !DISubroutineType(types: !6282)
!6282 = !{null, !680, !690, !680}
!6283 = !{!6284, !6285, !6286, !6287, !6289, !6290, !6291, !6292}
!6284 = !DILocalVariable(name: "initial_space", arg: 1, scope: !6280, file: !2, line: 300, type: !680)
!6285 = !DILocalVariable(name: "desc", arg: 2, scope: !6280, file: !2, line: 300, type: !690)
!6286 = !DILocalVariable(name: "len", arg: 3, scope: !6280, file: !2, line: 301, type: !680)
!6287 = !DILocalVariable(name: "width", scope: !6280, file: !2, line: 303, type: !6288)
!6288 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !680)
!6289 = !DILocalVariable(name: "tmp_ptr", scope: !6280, file: !2, line: 304, type: !690)
!6290 = !DILocalVariable(name: "desc_ptr", scope: !6280, file: !2, line: 304, type: !690)
!6291 = !DILocalVariable(name: "i", scope: !6280, file: !2, line: 305, type: !680)
!6292 = !DILocalVariable(name: "continue_while", scope: !6280, file: !2, line: 306, type: !670)
!6293 = !DILocation(line: 300, column: 38, scope: !6280)
!6294 = !DILocation(line: 300, column: 65, scope: !6280)
!6295 = !DILocation(line: 301, column: 38, scope: !6280)
!6296 = !DILocation(line: 303, column: 3, scope: !6280)
!6297 = !DILocation(line: 303, column: 17, scope: !6280)
!6298 = !DILocation(line: 303, column: 59, scope: !6280)
!6299 = !DILocation(line: 303, column: 57, scope: !6280)
!6300 = !DILocation(line: 304, column: 3, scope: !6280)
!6301 = !DILocation(line: 304, column: 15, scope: !6280)
!6302 = !DILocation(line: 304, column: 25, scope: !6280)
!6303 = !DILocation(line: 304, column: 36, scope: !6280)
!6304 = !DILocation(line: 305, column: 3, scope: !6280)
!6305 = !DILocation(line: 305, column: 11, scope: !6280)
!6306 = !DILocation(line: 306, column: 3, scope: !6280)
!6307 = !DILocation(line: 306, column: 8, scope: !6280)
!6308 = !DILocation(line: 309, column: 3, scope: !6280)
!6309 = !DILocation(line: 309, column: 3, scope: !6310)
!6310 = distinct !DILexicalBlock(scope: !6311, file: !2, line: 309, column: 3)
!6311 = distinct !DILexicalBlock(scope: !6280, file: !2, line: 309, column: 3)
!6312 = !DILocation(line: 309, column: 3, scope: !6311)
!6313 = !DILocation(line: 309, column: 3, scope: !6314)
!6314 = distinct !DILexicalBlock(scope: !6310, file: !2, line: 309, column: 3)
!6315 = !DILocation(line: 311, column: 3, scope: !6280)
!6316 = !DILocation(line: 311, column: 10, scope: !6280)
!6317 = !DILocation(line: 311, column: 21, scope: !6280)
!6318 = !DILocation(line: 311, column: 28, scope: !6280)
!6319 = !DILocation(line: 311, column: 26, scope: !6280)
!6320 = !DILocation(line: 311, column: 19, scope: !6280)
!6321 = !DILocation(line: 313, column: 9, scope: !6322)
!6322 = distinct !DILexicalBlock(scope: !6323, file: !2, line: 313, column: 9)
!6323 = distinct !DILexicalBlock(scope: !6280, file: !2, line: 311, column: 33)
!6324 = !DILocation(line: 313, column: 20, scope: !6322)
!6325 = !DILocation(line: 313, column: 18, scope: !6322)
!6326 = !DILocation(line: 313, column: 26, scope: !6322)
!6327 = !DILocation(line: 313, column: 33, scope: !6322)
!6328 = !DILocation(line: 313, column: 40, scope: !6322)
!6329 = !DILocation(line: 313, column: 38, scope: !6322)
!6330 = !DILocation(line: 313, column: 44, scope: !6322)
!6331 = !DILocation(line: 313, column: 30, scope: !6322)
!6332 = !DILocation(line: 313, column: 9, scope: !6323)
!6333 = !DILocation(line: 314, column: 7, scope: !6322)
!6334 = !DILocation(line: 316, column: 20, scope: !6335)
!6335 = distinct !DILexicalBlock(scope: !6323, file: !2, line: 316, column: 5)
!6336 = !DILocation(line: 316, column: 31, scope: !6335)
!6337 = !DILocation(line: 316, column: 29, scope: !6335)
!6338 = !DILocation(line: 316, column: 18, scope: !6335)
!6339 = !DILocation(line: 316, column: 10, scope: !6335)
!6340 = !DILocation(line: 316, column: 38, scope: !6341)
!6341 = distinct !DILexicalBlock(scope: !6335, file: !2, line: 316, column: 5)
!6342 = !DILocation(line: 316, column: 49, scope: !6341)
!6343 = !DILocation(line: 316, column: 46, scope: !6341)
!6344 = !DILocation(line: 316, column: 5, scope: !6335)
!6345 = !DILocation(line: 317, column: 12, scope: !6346)
!6346 = distinct !DILexicalBlock(scope: !6347, file: !2, line: 317, column: 11)
!6347 = distinct !DILexicalBlock(scope: !6341, file: !2, line: 316, column: 70)
!6348 = !DILocation(line: 317, column: 11, scope: !6346)
!6349 = !DILocation(line: 317, column: 20, scope: !6346)
!6350 = !DILocation(line: 317, column: 27, scope: !6346)
!6351 = !DILocation(line: 317, column: 31, scope: !6346)
!6352 = !DILocation(line: 317, column: 30, scope: !6346)
!6353 = !DILocation(line: 317, column: 39, scope: !6346)
!6354 = !DILocation(line: 317, column: 11, scope: !6347)
!6355 = !DILocation(line: 318, column: 9, scope: !6346)
!6356 = !DILocation(line: 319, column: 5, scope: !6347)
!6357 = !DILocation(line: 316, column: 66, scope: !6341)
!6358 = !DILocation(line: 316, column: 5, scope: !6341)
!6359 = distinct !{!6359, !6344, !6360, !1303}
!6360 = !DILocation(line: 319, column: 5, scope: !6335)
!6361 = !DILocation(line: 321, column: 5, scope: !6323)
!6362 = !DILocation(line: 321, column: 12, scope: !6363)
!6363 = distinct !DILexicalBlock(scope: !6364, file: !2, line: 321, column: 5)
!6364 = distinct !DILexicalBlock(scope: !6323, file: !2, line: 321, column: 5)
!6365 = !DILocation(line: 321, column: 23, scope: !6363)
!6366 = !DILocation(line: 321, column: 21, scope: !6363)
!6367 = !DILocation(line: 321, column: 5, scope: !6364)
!6368 = !DILocation(line: 322, column: 20, scope: !6369)
!6369 = distinct !DILexicalBlock(scope: !6363, file: !2, line: 321, column: 44)
!6370 = !DILocation(line: 322, column: 19, scope: !6369)
!6371 = !DILocation(line: 322, column: 7, scope: !6369)
!6372 = !DILocation(line: 323, column: 12, scope: !6373)
!6373 = distinct !DILexicalBlock(scope: !6369, file: !2, line: 323, column: 11)
!6374 = !DILocation(line: 323, column: 11, scope: !6373)
!6375 = !DILocation(line: 323, column: 21, scope: !6373)
!6376 = !DILocation(line: 323, column: 11, scope: !6369)
!6377 = !DILocation(line: 325, column: 17, scope: !6378)
!6378 = distinct !DILexicalBlock(scope: !6379, file: !2, line: 325, column: 9)
!6379 = distinct !DILexicalBlock(scope: !6373, file: !2, line: 323, column: 30)
!6380 = !DILocation(line: 325, column: 15, scope: !6378)
!6381 = !DILocation(line: 325, column: 22, scope: !6382)
!6382 = distinct !DILexicalBlock(scope: !6378, file: !2, line: 325, column: 9)
!6383 = !DILocation(line: 325, column: 26, scope: !6382)
!6384 = !DILocation(line: 325, column: 24, scope: !6382)
!6385 = !DILocation(line: 325, column: 9, scope: !6378)
!6386 = !DILocation(line: 326, column: 11, scope: !6382)
!6387 = !DILocation(line: 325, column: 42, scope: !6382)
!6388 = !DILocation(line: 325, column: 9, scope: !6382)
!6389 = distinct !{!6389, !6385, !6390, !1303}
!6390 = !DILocation(line: 326, column: 26, scope: !6378)
!6391 = !DILocation(line: 327, column: 17, scope: !6379)
!6392 = !DILocation(line: 328, column: 24, scope: !6379)
!6393 = !DILocation(line: 329, column: 9, scope: !6379)
!6394 = !DILocation(line: 331, column: 5, scope: !6369)
!6395 = !DILocation(line: 321, column: 40, scope: !6363)
!6396 = !DILocation(line: 321, column: 5, scope: !6363)
!6397 = distinct !{!6397, !6367, !6398, !1303}
!6398 = !DILocation(line: 331, column: 5, scope: !6364)
!6399 = !DILocation(line: 332, column: 9, scope: !6400)
!6400 = distinct !DILexicalBlock(scope: !6323, file: !2, line: 332, column: 9)
!6401 = !DILocation(line: 332, column: 9, scope: !6323)
!6402 = !DILocation(line: 333, column: 22, scope: !6403)
!6403 = distinct !DILexicalBlock(scope: !6400, file: !2, line: 332, column: 25)
!6404 = !DILocation(line: 334, column: 7, scope: !6403)
!6405 = distinct !{!6405, !6315, !6406, !1303}
!6406 = !DILocation(line: 344, column: 3, scope: !6280)
!6407 = !DILocation(line: 337, column: 5, scope: !6323)
!6408 = !DILocation(line: 337, column: 5, scope: !6409)
!6409 = distinct !DILexicalBlock(scope: !6410, file: !2, line: 337, column: 5)
!6410 = distinct !DILexicalBlock(scope: !6323, file: !2, line: 337, column: 5)
!6411 = !DILocation(line: 337, column: 5, scope: !6410)
!6412 = !DILocation(line: 337, column: 5, scope: !6413)
!6413 = distinct !DILexicalBlock(scope: !6409, file: !2, line: 337, column: 5)
!6414 = !DILocation(line: 339, column: 13, scope: !6323)
!6415 = !DILocation(line: 340, column: 5, scope: !6323)
!6416 = !DILocation(line: 342, column: 13, scope: !6417)
!6417 = distinct !DILexicalBlock(scope: !6323, file: !2, line: 342, column: 5)
!6418 = !DILocation(line: 342, column: 11, scope: !6417)
!6419 = !DILocation(line: 342, column: 18, scope: !6420)
!6420 = distinct !DILexicalBlock(scope: !6417, file: !2, line: 342, column: 5)
!6421 = !DILocation(line: 342, column: 22, scope: !6420)
!6422 = !DILocation(line: 342, column: 20, scope: !6420)
!6423 = !DILocation(line: 342, column: 5, scope: !6417)
!6424 = !DILocation(line: 343, column: 7, scope: !6420)
!6425 = !DILocation(line: 342, column: 38, scope: !6420)
!6426 = !DILocation(line: 342, column: 5, scope: !6420)
!6427 = distinct !{!6427, !6423, !6428, !1303}
!6428 = !DILocation(line: 343, column: 22, scope: !6417)
!6429 = !DILocation(line: 346, column: 3, scope: !6280)
!6430 = !DILocation(line: 346, column: 10, scope: !6280)
!6431 = !DILocation(line: 346, column: 21, scope: !6280)
!6432 = !DILocation(line: 346, column: 28, scope: !6280)
!6433 = !DILocation(line: 346, column: 26, scope: !6280)
!6434 = !DILocation(line: 346, column: 19, scope: !6280)
!6435 = !DILocation(line: 347, column: 18, scope: !6436)
!6436 = distinct !DILexicalBlock(scope: !6280, file: !2, line: 346, column: 33)
!6437 = !DILocation(line: 347, column: 17, scope: !6436)
!6438 = !DILocation(line: 347, column: 5, scope: !6436)
!6439 = !DILocation(line: 348, column: 10, scope: !6440)
!6440 = distinct !DILexicalBlock(scope: !6436, file: !2, line: 348, column: 9)
!6441 = !DILocation(line: 348, column: 9, scope: !6440)
!6442 = !DILocation(line: 348, column: 19, scope: !6440)
!6443 = !DILocation(line: 348, column: 9, scope: !6436)
!6444 = !DILocation(line: 350, column: 15, scope: !6445)
!6445 = distinct !DILexicalBlock(scope: !6446, file: !2, line: 350, column: 7)
!6446 = distinct !DILexicalBlock(scope: !6440, file: !2, line: 348, column: 28)
!6447 = !DILocation(line: 350, column: 13, scope: !6445)
!6448 = !DILocation(line: 350, column: 20, scope: !6449)
!6449 = distinct !DILexicalBlock(scope: !6445, file: !2, line: 350, column: 7)
!6450 = !DILocation(line: 350, column: 24, scope: !6449)
!6451 = !DILocation(line: 350, column: 22, scope: !6449)
!6452 = !DILocation(line: 350, column: 7, scope: !6445)
!6453 = !DILocation(line: 351, column: 9, scope: !6449)
!6454 = !DILocation(line: 350, column: 40, scope: !6449)
!6455 = !DILocation(line: 350, column: 7, scope: !6449)
!6456 = distinct !{!6456, !6452, !6457, !1303}
!6457 = !DILocation(line: 351, column: 24, scope: !6445)
!6458 = !DILocation(line: 352, column: 15, scope: !6446)
!6459 = !DILocation(line: 353, column: 7, scope: !6446)
!6460 = distinct !{!6460, !6429, !6461, !1303}
!6461 = !DILocation(line: 356, column: 3, scope: !6280)
!6462 = !DILocation(line: 355, column: 13, scope: !6436)
!6463 = !DILocation(line: 357, column: 3, scope: !6280)
!6464 = !DILocation(line: 358, column: 1, scope: !6280)
!6465 = !DISubprogram(name: "gt_xputs", scope: !6466, file: !6466, line: 84, type: !852, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6466 = !DIFile(filename: "src/core/xansi_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "1d227a22cb6575cc0af9d842a1be7cc6")
!6467 = !DISubprogram(name: "gt_xputchar", scope: !6466, file: !6466, line: 81, type: !1962, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6468 = !DISubprogram(name: "gt_str_append_str", scope: !662, file: !662, line: 44, type: !6469, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6469 = !DISubroutineType(types: !6470)
!6470 = !{null, !660, !993}
!6471 = !DISubprogram(name: "gt_array_get_first", scope: !718, file: !718, line: 40, type: !6472, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6472 = !DISubroutineType(types: !6473)
!6473 = !{!651, !1923}

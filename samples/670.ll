; ModuleID = 'samples/670.bc'
source_filename = "/local-ssd/adios2-oqwmwnnlt5ggw7tvys45na6ehqluzw4g-build/aidengro/spack-stage-adios2-2.9.1-oqwmwnnlt5ggw7tvys45na6ehqluzw4g/spack-src/thirdparty/EVPath/EVPath/response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extern_entry = type { ptr, ptr }
%struct._FMformat_list = type { ptr, ptr, i32, ptr }
%struct.response_spec = type { i32, %union.anon }
%union.anon = type { %struct.transform_spec }
%struct.transform_spec = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.filter_spec = type { ptr, ptr, ptr, ptr }
%struct.multityped_spec = type { ptr, ptr, ptr, i32, ptr }
%struct._FMField = type { ptr, ptr, i32, i32 }
%struct.ev_state_data = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32 }
%struct._stone = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, i32, ptr }
%struct._proto_action = type { i32, ptr, ptr, %union.anon.0, i32, ptr, double }
%union.anon.0 = type { %struct.bridge_action_struct }
%struct.bridge_action_struct = type { ptr, i32, ptr, i32, ptr, ptr }
%struct._event_item = type { i32, i32, i32, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.immediate_action_struct = type { ptr }
%struct.response_instance = type { i32, i32, i32, %union.anon.2 }
%union.anon.2 = type { %struct.transform_instance }
%struct.transform_instance = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.response_cache_element = type { ptr, i32, i32, i32, i32, %union.anon.3 }
%union.anon.3 = type { %struct.decode_action_struct }
%struct.decode_action_struct = type { ptr, ptr, ptr }
%struct._CManager = type { ptr, i32, i32, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, %union.pthread_mutex_t, i32, i32, i32, ptr, i32, %union.pthread_mutex_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timeval, %struct.timeval, ptr }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.timeval = type { i64, i64 }
%struct._event_path_data = type { i32, i32, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.pthread_mutex_t, i32, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct._extern_routine_struct = type { ptr, ptr }
%struct.filter_instance = type { ptr, ptr, ptr, ptr }
%struct.timespec = type { i64, i64 }
%struct._cod_code_struct = type { ptr, i32, ptr, ptr, i32, i32, ptr, ptr, ptr }
%struct._EVSource = type { ptr, ptr, ptr, i32, i32, ptr, ptr }
%struct.queued_instance = type { i32, ptr, ptr, ptr, ptr }
%struct.delayed_event = type { i32, ptr }
%struct.delayed_event.4 = type { i32, ptr }
%struct._queue = type { ptr, ptr }
%struct.queue_item = type { ptr, i32, ptr }

@.str = private unnamed_addr constant [16 x i8] c"Terminal Action\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"  Format Count %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"Filter Action\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"Router Action\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"Transform Action\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"  Input Format Count %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"  Output Format Count %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"output format parse failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"Multityped Action\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"  List Count %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"Next format   Subformat Count %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"Unparsed action : %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"Terminal Action   Format Count %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"Bridge Action %d %s\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"Bridge Action\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"sink:\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"source:\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"Split Action\00", align 1
@.str.19 = private unnamed_addr constant [33 x i8] c"Filter Action   Format Count %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [33 x i8] c"Router Action   Format Count %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [42 x i8] c"Transform Action   Input Format Count %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [35 x i8] c"Multityped Action   List Count %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [29 x i8] c"Response Filter, code is %s\0A\00", align 1
@.str.24 = private unnamed_addr constant [29 x i8] c"Response Router, code is %s\0A\00", align 1
@.str.25 = private unnamed_addr constant [32 x i8] c"Response Transform, code is %s\0A\00", align 1
@.str.26 = private unnamed_addr constant [31 x i8] c"Multityped Action, code is %s\0A\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"FALSE\00", align 1
@.str.28 = private unnamed_addr constant [170 x i8] c"/local-ssd/adios2-oqwmwnnlt5ggw7tvys45na6ehqluzw4g-build/aidengro/spack-stage-adios2-2.9.1-oqwmwnnlt5ggw7tvys45na6ehqluzw4g/spack-src/thirdparty/EVPath/EVPath/response.c\00", align 1
@__PRETTY_FUNCTION__.response_determination = private unnamed_addr constant [77 x i8] c"int response_determination(CManager, stone_type, action_class, event_item *)\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"FMFormat \22\00", align 1
@.str.30 = private unnamed_addr constant [43 x i8] c"FMFormat \22%s\22 StructSize %d FieldCount %d\0A\00", align 1
@.str.31 = private unnamed_addr constant [29 x i8] c"    FMField \22%s\22 \22%s\22 %d %d\0A\00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@__PRETTY_FUNCTION__.proto_action_in_stage = private unnamed_addr constant [56 x i8] c"int proto_action_in_stage(proto_action *, action_class)\00", align 1
@CMtrace_val = external global [0 x i32], align 4
@CMtrace_PID = external global i32, align 4
@.str.33 = private unnamed_addr constant [12 x i8] c"P%lxT%lx - \00", align 1
@CMtrace_timing = external global i32, align 4
@.str.34 = private unnamed_addr constant [14 x i8] c"%lld.%.9ld - \00", align 1
@.str.35 = private unnamed_addr constant [61 x i8] c"Filter function returned %d, submitting further to stone %d\0A\00", align 1
@.str.36 = private unnamed_addr constant [45 x i8] c"Filter function returned %d, NOT submitting\0A\00", align 1
@.str.37 = private unnamed_addr constant [75 x i8] c"Router function returned %d, larger than the number of associated outputs\0A\00", align 1
@.str.38 = private unnamed_addr constant [80 x i8] c"Router function returned %d, which has not been set with EVaction_set_output()\0A\00", align 1
@.str.39 = private unnamed_addr constant [61 x i8] c"Router function returned %d, submitting further to stone %d\0A\00", align 1
@.str.40 = private unnamed_addr constant [45 x i8] c"Router function returned %d, NOT submitting\0A\00", align 1
@.str.41 = private unnamed_addr constant [28 x i8] c"Input Transform Event is :\0A\00", align 1
@.str.42 = private unnamed_addr constant [32 x i8] c"       ****  UNFORMATTED  ****\0A\00", align 1
@.str.43 = private unnamed_addr constant [52 x i8] c"Transform output stone ID not set, event discarded\0A\00", align 1
@.str.44 = private unnamed_addr constant [53 x i8] c" Transform function returned %d, submitting further\0A\00", align 1
@.str.45 = private unnamed_addr constant [48 x i8] c"Transform function returned %d, NOT submitting\0A\00", align 1
@.str.46 = private unnamed_addr constant [3 x i8] c"ec\00", align 1
@.str.47 = private unnamed_addr constant [17 x i8] c"cod_exec_context\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.51 = private unnamed_addr constant [12 x i8] c"event_attrs\00", align 1
@.str.52 = private unnamed_addr constant [10 x i8] c"attr_list\00", align 1
@.str.53 = private unnamed_addr constant [13 x i8] c"output_attrs\00", align 1
@__PRETTY_FUNCTION__.generate_filter_code = private unnamed_addr constant [95 x i8] c"response_instance generate_filter_code(CManager, struct response_spec *, stone_type, FMFormat)\00", align 1
@stderr = external global ptr, align 8
@.str.54 = private unnamed_addr constant [65 x i8] c"could not parse string \22%s\22 for dll path and symbol information\0A\00", align 1
@.str.55 = private unnamed_addr constant [43 x i8] c"Failed to load symbol \22%s\22 from file \22%s\22\0A\00", align 1
@add_standard_routines.extern_string = internal global [642 x i8] c"\09\09int printf(string format, ...);\0A\09\09void *malloc(int size);\0A\09\09void sleep(int seconds);\0A\09\09void free(void *pointer);\0A\09\09long lrand48();\0A\09\09double drand48();\0A\09\09int EVmax_output(cod_exec_context ec);\0A\09\09int EVtarget_stone_on_port(cod_exec_context ec, int port);\0A\09\09void EVsubmit(cod_exec_context ec, int port, void* d, cod_type_spec dt);\0A\09\09void EVsubmit_attr(cod_exec_context ec, int port, void* d, cod_type_spec dt, attr_list list);\0A\09\09void EVsubmit_delayed(cod_exec_context ec, int port, void* d, cod_type_spec dt, attr_list list, timeval *tp);\0A        \09attr_list EVget_stone_attrs(cod_exec_context ec, char *stone_name);\0A \09\09attr_list stone_attrs;\0A\00", align 16
@add_standard_routines.externs = internal global [14 x %struct.extern_entry] [%struct.extern_entry { ptr @.str.56, ptr null }, %struct.extern_entry { ptr @.str.57, ptr null }, %struct.extern_entry { ptr @.str.58, ptr null }, %struct.extern_entry { ptr @.str.59, ptr null }, %struct.extern_entry { ptr @.str.60, ptr null }, %struct.extern_entry { ptr @.str.61, ptr null }, %struct.extern_entry { ptr @.str.62, ptr null }, %struct.extern_entry { ptr @.str.63, ptr null }, %struct.extern_entry { ptr @.str.64, ptr null }, %struct.extern_entry { ptr @.str.65, ptr null }, %struct.extern_entry { ptr @.str.66, ptr null }, %struct.extern_entry { ptr @.str.67, ptr null }, %struct.extern_entry { ptr @.str.68, ptr null }, %struct.extern_entry zeroinitializer], align 16
@.str.56 = private unnamed_addr constant [7 x i8] c"printf\00", align 1
@.str.57 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c"free\00", align 1
@.str.59 = private unnamed_addr constant [8 x i8] c"lrand48\00", align 1
@.str.60 = private unnamed_addr constant [8 x i8] c"drand48\00", align 1
@.str.61 = private unnamed_addr constant [12 x i8] c"stone_attrs\00", align 1
@.str.62 = private unnamed_addr constant [9 x i8] c"EVsubmit\00", align 1
@.str.63 = private unnamed_addr constant [14 x i8] c"EVsubmit_attr\00", align 1
@.str.64 = private unnamed_addr constant [17 x i8] c"EVsubmit_delayed\00", align 1
@.str.65 = private unnamed_addr constant [6 x i8] c"sleep\00", align 1
@.str.66 = private unnamed_addr constant [13 x i8] c"EVmax_output\00", align 1
@.str.67 = private unnamed_addr constant [23 x i8] c"EVtarget_stone_on_port\00", align 1
@.str.68 = private unnamed_addr constant [18 x i8] c"EVget_stone_attrs\00", align 1
@.str.69 = private unnamed_addr constant [29 x i8] c"Port %d on stone %d invalid\0A\00", align 1
@.str.70 = private unnamed_addr constant [20 x i8] c"CManager_locked(cm)\00", align 1
@__PRETTY_FUNCTION__.internal_cod_submit_general = private unnamed_addr constant [101 x i8] c"void internal_cod_submit_general(cod_exec_context, int, void *, void *, attr_list, struct timeval *)\00", align 1
@.str.71 = private unnamed_addr constant [70 x i8] c"Internal COD submit, resubmission of current input event to stone %d\0A\00", align 1
@.str.72 = private unnamed_addr constant [57 x i8] c"Internal COD submit, submission of new data to stone %d\0A\00", align 1
@.str.73 = private unnamed_addr constant [34 x i8] c"Bad format information on submit\0A\00", align 1
@.str.74 = private unnamed_addr constant [46 x i8] c"Stone has %d outbound ports, port %d invalid\0A\00", align 1
@.str.75 = private unnamed_addr constant [39 x i8] c"Stone port %d target has not been set\0A\00", align 1
@cod_ev_get_stone_attrs.STONE_NAME_ATOM = internal global i32 -1, align 4
@.str.76 = private unnamed_addr constant [15 x i8] c"EVP_STONE_NAME\00", align 1
@.str.77 = private unnamed_addr constant [60 x i8] c"Warning, duplicate stone name \22%s\22 found during attr query\0A\00", align 1
@.str.78 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.79 = private unnamed_addr constant [4 x i8] c"dll\00", align 1
@.str.80 = private unnamed_addr constant [19 x i8] c"failed opening %s\0A\00", align 1
@.str.81 = private unnamed_addr constant [42 x i8] c"mrd->response_type == Response_Multityped\00", align 1
@__PRETTY_FUNCTION__.generate_multityped_code = private unnamed_addr constant [101 x i8] c"response_instance generate_multityped_code(CManager, struct response_spec *, stone_type, FMFormat *)\00", align 1
@.str.82 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@add_queued_routines.extern_string = internal global [1093 x i8] c"        int EVconforms(cod_exec_context ec, int queue, int index);\0A        void EVdiscard(cod_exec_context ec, int queue, int index);\0A        void EVdiscard_full(cod_exec_context ec, cod_closure_context queue, int index);\0A        void EVdiscard_and_submit(cod_exec_context ec, int target,                    int queue, int index);\0A        void EVdiscard_and_submit_full(cod_exec_context ec, int target,                    cod_closure_context queue, int index);\0A\09\09\09               void *EVdata(cod_exec_context ec, int queue, int index);\0A        void *EVdata_full(cod_exec_context ec, cod_closure_context queue, int index);\0A        int EVcount(cod_exec_context ec, int queue);\0A        int EVcount_full(cod_exec_context ec, cod_closure_context type);\0A        int EVpresent(cod_exec_context ec, int queue, int index);\0A\09int EVget_port(cod_exec_context ec, int queue);\0A    \09int EVtarget_size(cod_exec_context ec, int outstone);\0A        attr_list EVget_attrs(cod_exec_context ec, int queue, int index);\0A\09        attr_list EVget_attrs_full(cod_exec_context ec, cod_closure_context queue, int index);\0A\00", align 16
@add_queued_routines.externs = internal global [15 x %struct.extern_entry] [%struct.extern_entry { ptr @.str.83, ptr null }, %struct.extern_entry { ptr @.str.84, ptr null }, %struct.extern_entry { ptr @.str.85, ptr null }, %struct.extern_entry { ptr @.str.86, ptr null }, %struct.extern_entry { ptr @.str.87, ptr null }, %struct.extern_entry { ptr @.str.88, ptr null }, %struct.extern_entry { ptr @.str.89, ptr null }, %struct.extern_entry { ptr @.str.90, ptr null }, %struct.extern_entry { ptr @.str.91, ptr null }, %struct.extern_entry { ptr @.str.92, ptr null }, %struct.extern_entry { ptr @.str.93, ptr null }, %struct.extern_entry { ptr @.str.94, ptr null }, %struct.extern_entry { ptr @.str.95, ptr null }, %struct.extern_entry { ptr @.str.96, ptr null }, %struct.extern_entry zeroinitializer], align 16
@.str.83 = private unnamed_addr constant [11 x i8] c"EVconforms\00", align 1
@.str.84 = private unnamed_addr constant [10 x i8] c"EVdiscard\00", align 1
@.str.85 = private unnamed_addr constant [15 x i8] c"EVdiscard_full\00", align 1
@.str.86 = private unnamed_addr constant [21 x i8] c"EVdiscard_and_submit\00", align 1
@.str.87 = private unnamed_addr constant [26 x i8] c"EVdiscard_and_submit_full\00", align 1
@.str.88 = private unnamed_addr constant [7 x i8] c"EVdata\00", align 1
@.str.89 = private unnamed_addr constant [12 x i8] c"EVdata_full\00", align 1
@.str.90 = private unnamed_addr constant [8 x i8] c"EVcount\00", align 1
@.str.91 = private unnamed_addr constant [13 x i8] c"EVcount_full\00", align 1
@.str.92 = private unnamed_addr constant [10 x i8] c"EVpresent\00", align 1
@.str.93 = private unnamed_addr constant [11 x i8] c"EVget_port\00", align 1
@.str.94 = private unnamed_addr constant [14 x i8] c"EVtarget_size\00", align 1
@.str.95 = private unnamed_addr constant [12 x i8] c"EVget_attrs\00", align 1
@.str.96 = private unnamed_addr constant [17 x i8] c"EVget_attrs_full\00", align 1
@.str.97 = private unnamed_addr constant [10 x i8] c"anonymous\00", align 1
@.str.98 = private unnamed_addr constant [5 x i8] c"item\00", align 1
@__PRETTY_FUNCTION__.cod_ev_discard = private unnamed_addr constant [53 x i8] c"void cod_ev_discard(cod_exec_context, int, int, int)\00", align 1
@.str.99 = private unnamed_addr constant [41 x i8] c"Item %x not found on queue %d, stone %d\0A\00", align 1
@.str.100 = private unnamed_addr constant [11 x i8] c"item->item\00", align 1
@__PRETTY_FUNCTION__.cod_ev_get_data = private unnamed_addr constant [55 x i8] c"void *cod_ev_get_data(cod_exec_context, int, int, int)\00", align 1
@.str.101 = private unnamed_addr constant [26 x i8] c"item->item->decoded_event\00", align 1
@.str.102 = private unnamed_addr constant [71 x i8] c"Error, queue parameter(%d) to EVCount is larger than queue count (%d)\0A\00", align 1
@.str.103 = private unnamed_addr constant [33 x i8] c"No item at index %d on queue %d\0A\00", align 1
@add_typed_queued_routines.extern_string_fmt = internal global ptr @.str.104, align 8
@.str.104 = private unnamed_addr constant [696 x i8] c"void EVdiscard_%s(cod_exec_context ec, cod_closure_context type, int index);\0Aint EVcount_%s(cod_exec_context ec, cod_closure_context type);\0Aint EVpresent_%s(cod_exec_context ec, cod_closure_context queue, int index);\0Avoid EVdiscard_and_submit_%s(cod_exec_context ec, int target, cod_closure_context queue, int index);\0Avoid EVsubmit_%s(cod_exec_context ec, int target, cod_closure_context queue, int index);\0Aattr_list EVget_attrs_%s(cod_exec_context ec, cod_closure_context queue, int index);\0Avoid write_%s(cod_exec_context ec, ffs_file fname, cod_closure_context type, int index);\0Avoid read_%s(cod_exec_context ec, ffs_file fname, void * data, attr_list * attr_data, cod_closure_context queue);\0A\00", align 1
@add_typed_queued_routines.data_extern_string_fmt = internal global ptr @.str.105, align 8
@.str.105 = private unnamed_addr constant [152 x i8] c"%s *EVdata_%s(cod_exec_context ec, cod_closure_context type, int index);\0A%s *EVdata_full_%s(cod_exec_context ec, cod_closure_context type, int index);\0A\00", align 1
@add_typed_queued_routines.externs_fmt = internal global [9 x %struct.extern_entry] [%struct.extern_entry { ptr @.str.106, ptr null }, %struct.extern_entry { ptr @.str.107, ptr null }, %struct.extern_entry { ptr @.str.108, ptr null }, %struct.extern_entry { ptr @.str.109, ptr null }, %struct.extern_entry { ptr @.str.110, ptr null }, %struct.extern_entry { ptr @.str.111, ptr null }, %struct.extern_entry { ptr @.str.112, ptr null }, %struct.extern_entry { ptr @.str.113, ptr null }, %struct.extern_entry zeroinitializer], align 16
@.str.106 = private unnamed_addr constant [13 x i8] c"EVdiscard_%s\00", align 1
@.str.107 = private unnamed_addr constant [11 x i8] c"EVcount_%s\00", align 1
@.str.108 = private unnamed_addr constant [13 x i8] c"EVpresent_%s\00", align 1
@.str.109 = private unnamed_addr constant [24 x i8] c"EVdiscard_and_submit_%s\00", align 1
@.str.110 = private unnamed_addr constant [15 x i8] c"EVget_attrs_%s\00", align 1
@.str.111 = private unnamed_addr constant [12 x i8] c"EVsubmit_%s\00", align 1
@.str.112 = private unnamed_addr constant [9 x i8] c"write_%s\00", align 1
@.str.113 = private unnamed_addr constant [8 x i8] c"read_%s\00", align 1
@add_typed_queued_routines.data_externs_fmt = internal global [3 x %struct.extern_entry] [%struct.extern_entry { ptr @.str.114, ptr null }, %struct.extern_entry { ptr @.str.115, ptr null }, %struct.extern_entry zeroinitializer], align 16
@.str.114 = private unnamed_addr constant [10 x i8] c"EVdata_%s\00", align 1
@.str.115 = private unnamed_addr constant [15 x i8] c"EVdata_full_%s\00", align 1
@.str.116 = private unnamed_addr constant [14 x i8] c"extern_string\00", align 1
@__PRETTY_FUNCTION__.add_typed_queued_routines = private unnamed_addr constant [69 x i8] c"void add_typed_queued_routines(cod_parse_context, int, const char *)\00", align 1
@.str.117 = private unnamed_addr constant [8 x i8] c"externs\00", align 1
@.str.118 = private unnamed_addr constant [13 x i8] c"data_externs\00", align 1
@.str.119 = private unnamed_addr constant [10 x i8] c"real_name\00", align 1
@.str.120 = private unnamed_addr constant [36 x i8] c"No corresponding item in the queue\0A\00", align 1
@.str.121 = private unnamed_addr constant [26 x i8] c"There is no attr for: %s\0A\00", align 1
@.str.122 = private unnamed_addr constant [70 x i8] c"Event is encoded, have not handled this case.  Can not write to file\0A\00", align 1
@.str.123 = private unnamed_addr constant [28 x i8] c"Error in writing FFS_file!\0A\00", align 1
@.str.124 = private unnamed_addr constant [6 x i8] c"%s_ID\00", align 1

; Function Attrs: nounwind uwtable
define ptr @install_response_handler(ptr noundef %cm, i32 noundef %stone_id, ptr noundef %response_spec, ptr noundef %local_data, ptr noundef %ref_ptr) #0 {
entry:
  %retval = alloca ptr, align 8
  %cm.addr = alloca ptr, align 8
  %stone_id.addr = alloca i32, align 4
  %response_spec.addr = alloca ptr, align 8
  %local_data.addr = alloca ptr, align 8
  %ref_ptr.addr = alloca ptr, align 8
  %str = alloca ptr, align 8
  %format_count = alloca i32, align 4
  %i = alloca i32, align 4
  %list = alloca ptr, align 8
  %response = alloca ptr, align 8
  %format_count15 = alloca i32, align 4
  %i16 = alloca i32, align 4
  %function = alloca ptr, align 8
  %list17 = alloca ptr, align 8
  %formats = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %response60 = alloca ptr, align 8
  %format_count62 = alloca i32, align 4
  %i63 = alloca i32, align 4
  %function64 = alloca ptr, align 8
  %list65 = alloca ptr, align 8
  %formats103 = alloca ptr, align 8
  %response115 = alloca ptr, align 8
  %format_count117 = alloca i32, align 4
  %i118 = alloca i32, align 4
  %function119 = alloca ptr, align 8
  %in_list = alloca ptr, align 8
  %out_list = alloca ptr, align 8
  %formats194 = alloca ptr, align 8
  %response221 = alloca ptr, align 8
  %list_count = alloca i32, align 4
  %j = alloca i32, align 4
  %function223 = alloca ptr, align 8
  %struct_list = alloca ptr, align 8
  %accept_anonymous = alloca i32, align 4
  %format_count2 = alloca i32, align 4
  %k = alloca i32, align 4
  %in_list236 = alloca ptr, align 8
  %formats323 = alloca ptr, align 8
  %k328 = alloca i32, align 4
  store ptr %cm, ptr %cm.addr, align 8, !tbaa !4
  store i32 %stone_id, ptr %stone_id.addr, align 4, !tbaa !8
  store ptr %response_spec, ptr %response_spec.addr, align 8, !tbaa !4
  store ptr %local_data, ptr %local_data.addr, align 8, !tbaa !4
  store ptr %ref_ptr, ptr %ref_ptr.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %str) #11
  %0 = load ptr, ptr %response_spec.addr, align 8, !tbaa !4
  store ptr %0, ptr %str, align 8, !tbaa !4
  %1 = load i32, ptr %stone_id.addr, align 4, !tbaa !8
  %2 = load ptr, ptr %str, align 8, !tbaa !4
  %call = call i32 @strncmp(ptr noundef @.str, ptr noundef %2, i64 noundef 15) #12
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %format_count) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %list) #11
  %3 = load ptr, ptr %str, align 8, !tbaa !4
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 16
  store ptr %add.ptr, ptr %str, align 8, !tbaa !4
  %4 = load ptr, ptr %str, align 8, !tbaa !4
  %call1 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %4, ptr noundef @.str.1, ptr noundef %format_count) #11
  %5 = load ptr, ptr %str, align 8, !tbaa !4
  %call2 = call ptr @strchr(ptr noundef %5, i32 noundef 10) #12
  %add.ptr3 = getelementptr inbounds i8, ptr %call2, i64 1
  store ptr %add.ptr3, ptr %str, align 8, !tbaa !4
  %6 = load i32, ptr %format_count, align 4, !tbaa !8
  %add = add nsw i32 %6, 1
  %conv = sext i32 %add to i64
  %mul = mul i64 32, %conv
  %call4 = call noalias ptr @malloc(i64 noundef %mul) #13
  store ptr %call4, ptr %list, align 8, !tbaa !4
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %7 = load i32, ptr %i, align 4, !tbaa !8
  %8 = load i32, ptr %format_count, align 4, !tbaa !8
  %cmp5 = icmp slt i32 %7, %8
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %str, align 8, !tbaa !4
  %10 = load ptr, ptr %list, align 8, !tbaa !4
  %11 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds %struct._FMformat_list, ptr %10, i64 %idxprom
  %call7 = call ptr @parse_FMformat_from_string(ptr noundef %9, ptr noundef %arrayidx)
  store ptr %call7, ptr %str, align 8, !tbaa !4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, ptr %i, align 4, !tbaa !8
  %inc = add nsw i32 %12, 1
  store i32 %inc, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load ptr, ptr %list, align 8, !tbaa !4
  %14 = load i32, ptr %format_count, align 4, !tbaa !8
  %idxprom8 = sext i32 %14 to i64
  %arrayidx9 = getelementptr inbounds %struct._FMformat_list, ptr %13, i64 %idxprom8
  %format_name = getelementptr inbounds %struct._FMformat_list, ptr %arrayidx9, i32 0, i32 0
  store ptr null, ptr %format_name, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 8, ptr %list) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %format_count) #11
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %15 = load ptr, ptr %str, align 8, !tbaa !4
  %call10 = call i32 @strncmp(ptr noundef @.str.2, ptr noundef %15, i64 noundef 13) #12
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %if.then13, label %if.end55

if.then13:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %response) #11
  %call14 = call noalias ptr @malloc(i64 noundef 72) #13
  store ptr %call14, ptr %response, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %format_count15) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr %i16) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %function) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %list17) #11
  %16 = load ptr, ptr %str, align 8, !tbaa !4
  %add.ptr18 = getelementptr inbounds i8, ptr %16, i64 14
  store ptr %add.ptr18, ptr %str, align 8, !tbaa !4
  %17 = load ptr, ptr %str, align 8, !tbaa !4
  %call19 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %17, ptr noundef @.str.1, ptr noundef %format_count15) #11
  %18 = load ptr, ptr %str, align 8, !tbaa !4
  %call20 = call ptr @strchr(ptr noundef %18, i32 noundef 10) #12
  %add.ptr21 = getelementptr inbounds i8, ptr %call20, i64 1
  store ptr %add.ptr21, ptr %str, align 8, !tbaa !4
  %19 = load i32, ptr %format_count15, align 4, !tbaa !8
  %add22 = add nsw i32 %19, 1
  %conv23 = sext i32 %add22 to i64
  %mul24 = mul i64 32, %conv23
  %call25 = call noalias ptr @malloc(i64 noundef %mul24) #13
  store ptr %call25, ptr %list17, align 8, !tbaa !4
  store i32 0, ptr %i16, align 4, !tbaa !8
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc33, %if.then13
  %20 = load i32, ptr %i16, align 4, !tbaa !8
  %21 = load i32, ptr %format_count15, align 4, !tbaa !8
  %cmp27 = icmp slt i32 %20, %21
  br i1 %cmp27, label %for.body29, label %for.end35

for.body29:                                       ; preds = %for.cond26
  %22 = load ptr, ptr %str, align 8, !tbaa !4
  %23 = load ptr, ptr %list17, align 8, !tbaa !4
  %24 = load i32, ptr %i16, align 4, !tbaa !8
  %idxprom30 = sext i32 %24 to i64
  %arrayidx31 = getelementptr inbounds %struct._FMformat_list, ptr %23, i64 %idxprom30
  %call32 = call ptr @parse_FMformat_from_string(ptr noundef %22, ptr noundef %arrayidx31)
  store ptr %call32, ptr %str, align 8, !tbaa !4
  br label %for.inc33

for.inc33:                                        ; preds = %for.body29
  %25 = load i32, ptr %i16, align 4, !tbaa !8
  %inc34 = add nsw i32 %25, 1
  store i32 %inc34, ptr %i16, align 4, !tbaa !8
  br label %for.cond26

for.end35:                                        ; preds = %for.cond26
  %26 = load ptr, ptr %list17, align 8, !tbaa !4
  %27 = load i32, ptr %format_count15, align 4, !tbaa !8
  %idxprom36 = sext i32 %27 to i64
  %arrayidx37 = getelementptr inbounds %struct._FMformat_list, ptr %26, i64 %idxprom36
  %format_name38 = getelementptr inbounds %struct._FMformat_list, ptr %arrayidx37, i32 0, i32 0
  store ptr null, ptr %format_name38, align 8, !tbaa !10
  %28 = load ptr, ptr %str, align 8, !tbaa !4
  %call39 = call i64 @strlen(ptr noundef %28) #12
  %add40 = add i64 %call39, 1
  %call41 = call noalias ptr @malloc(i64 noundef %add40) #13
  store ptr %call41, ptr %function, align 8, !tbaa !4
  %29 = load ptr, ptr %function, align 8, !tbaa !4
  %30 = load ptr, ptr %str, align 8, !tbaa !4
  %call42 = call ptr @strcpy(ptr noundef %29, ptr noundef %30) #11
  %31 = load ptr, ptr %response, align 8, !tbaa !4
  %response_type = getelementptr inbounds %struct.response_spec, ptr %31, i32 0, i32 0
  store i32 0, ptr %response_type, align 8, !tbaa !12
  %32 = load ptr, ptr %list17, align 8, !tbaa !4
  %33 = load ptr, ptr %response, align 8, !tbaa !4
  %u = getelementptr inbounds %struct.response_spec, ptr %33, i32 0, i32 1
  %format_list = getelementptr inbounds %struct.filter_spec, ptr %u, i32 0, i32 0
  store ptr %32, ptr %format_list, align 8, !tbaa !14
  %34 = load ptr, ptr %function, align 8, !tbaa !4
  %35 = load ptr, ptr %response, align 8, !tbaa !4
  %u43 = getelementptr inbounds %struct.response_spec, ptr %35, i32 0, i32 1
  %function44 = getelementptr inbounds %struct.filter_spec, ptr %u43, i32 0, i32 1
  store ptr %34, ptr %function44, align 8, !tbaa !14
  %36 = load ptr, ptr %local_data.addr, align 8, !tbaa !4
  %37 = load ptr, ptr %response, align 8, !tbaa !4
  %u45 = getelementptr inbounds %struct.response_spec, ptr %37, i32 0, i32 1
  %client_data = getelementptr inbounds %struct.filter_spec, ptr %u45, i32 0, i32 2
  store ptr %36, ptr %client_data, align 8, !tbaa !14
  %38 = load ptr, ptr %cm.addr, align 8, !tbaa !4
  %39 = load ptr, ptr %list17, align 8, !tbaa !4
  %call46 = call ptr @EVregister_format_set(ptr noundef %38, ptr noundef %39)
  %40 = load ptr, ptr %response, align 8, !tbaa !4
  %u47 = getelementptr inbounds %struct.response_spec, ptr %40, i32 0, i32 1
  %reference_format = getelementptr inbounds %struct.filter_spec, ptr %u47, i32 0, i32 3
  store ptr %call46, ptr %reference_format, align 8, !tbaa !14
  %41 = load ptr, ptr %ref_ptr.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %41, null
  br i1 %tobool, label %if.then48, label %if.end54

if.then48:                                        ; preds = %for.end35
  call void @llvm.lifetime.start.p0(i64 8, ptr %formats) #11
  %call49 = call noalias ptr @malloc(i64 noundef 16) #13
  store ptr %call49, ptr %formats, align 8, !tbaa !4
  %42 = load ptr, ptr %formats, align 8, !tbaa !4
  %arrayidx50 = getelementptr inbounds ptr, ptr %42, i64 1
  store ptr null, ptr %arrayidx50, align 8, !tbaa !4
  %43 = load ptr, ptr %response, align 8, !tbaa !4
  %u51 = getelementptr inbounds %struct.response_spec, ptr %43, i32 0, i32 1
  %reference_format52 = getelementptr inbounds %struct.filter_spec, ptr %u51, i32 0, i32 3
  %44 = load ptr, ptr %reference_format52, align 8, !tbaa !14
  %45 = load ptr, ptr %formats, align 8, !tbaa !4
  %arrayidx53 = getelementptr inbounds ptr, ptr %45, i64 0
  store ptr %44, ptr %arrayidx53, align 8, !tbaa !4
  %46 = load ptr, ptr %formats, align 8, !tbaa !4
  %47 = load ptr, ptr %ref_ptr.addr, align 8, !tbaa !4
  store ptr %46, ptr %47, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %formats) #11
  br label %if.end54

if.end54:                                         ; preds = %if.then48, %for.end35
  %48 = load ptr, ptr %response, align 8, !tbaa !4
  store ptr %48, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %list17) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %function) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %i16) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %format_count15) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %response) #11
  br label %cleanup353

if.end55:                                         ; preds = %if.end
  %49 = load ptr, ptr %str, align 8, !tbaa !4
  %call56 = call i32 @strncmp(ptr noundef @.str.3, ptr noundef %49, i64 noundef 13) #12
  %cmp57 = icmp eq i32 %call56, 0
  br i1 %cmp57, label %if.then59, label %if.end110

if.then59:                                        ; preds = %if.end55
  call void @llvm.lifetime.start.p0(i64 8, ptr %response60) #11
  %call61 = call noalias ptr @malloc(i64 noundef 72) #13
  store ptr %call61, ptr %response60, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %format_count62) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr %i63) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %function64) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %list65) #11
  %50 = load ptr, ptr %str, align 8, !tbaa !4
  %add.ptr66 = getelementptr inbounds i8, ptr %50, i64 14
  store ptr %add.ptr66, ptr %str, align 8, !tbaa !4
  %51 = load ptr, ptr %str, align 8, !tbaa !4
  %call67 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %51, ptr noundef @.str.1, ptr noundef %format_count62) #11
  %52 = load ptr, ptr %str, align 8, !tbaa !4
  %call68 = call ptr @strchr(ptr noundef %52, i32 noundef 10) #12
  %add.ptr69 = getelementptr inbounds i8, ptr %call68, i64 1
  store ptr %add.ptr69, ptr %str, align 8, !tbaa !4
  %53 = load i32, ptr %format_count62, align 4, !tbaa !8
  %add70 = add nsw i32 %53, 1
  %conv71 = sext i32 %add70 to i64
  %mul72 = mul i64 32, %conv71
  %call73 = call noalias ptr @malloc(i64 noundef %mul72) #13
  store ptr %call73, ptr %list65, align 8, !tbaa !4
  store i32 0, ptr %i63, align 4, !tbaa !8
  br label %for.cond74

for.cond74:                                       ; preds = %for.inc81, %if.then59
  %54 = load i32, ptr %i63, align 4, !tbaa !8
  %55 = load i32, ptr %format_count62, align 4, !tbaa !8
  %cmp75 = icmp slt i32 %54, %55
  br i1 %cmp75, label %for.body77, label %for.end83

for.body77:                                       ; preds = %for.cond74
  %56 = load ptr, ptr %str, align 8, !tbaa !4
  %57 = load ptr, ptr %list65, align 8, !tbaa !4
  %58 = load i32, ptr %i63, align 4, !tbaa !8
  %idxprom78 = sext i32 %58 to i64
  %arrayidx79 = getelementptr inbounds %struct._FMformat_list, ptr %57, i64 %idxprom78
  %call80 = call ptr @parse_FMformat_from_string(ptr noundef %56, ptr noundef %arrayidx79)
  store ptr %call80, ptr %str, align 8, !tbaa !4
  br label %for.inc81

for.inc81:                                        ; preds = %for.body77
  %59 = load i32, ptr %i63, align 4, !tbaa !8
  %inc82 = add nsw i32 %59, 1
  store i32 %inc82, ptr %i63, align 4, !tbaa !8
  br label %for.cond74

for.end83:                                        ; preds = %for.cond74
  %60 = load ptr, ptr %list65, align 8, !tbaa !4
  %61 = load i32, ptr %format_count62, align 4, !tbaa !8
  %idxprom84 = sext i32 %61 to i64
  %arrayidx85 = getelementptr inbounds %struct._FMformat_list, ptr %60, i64 %idxprom84
  %format_name86 = getelementptr inbounds %struct._FMformat_list, ptr %arrayidx85, i32 0, i32 0
  store ptr null, ptr %format_name86, align 8, !tbaa !10
  %62 = load ptr, ptr %str, align 8, !tbaa !4
  %call87 = call i64 @strlen(ptr noundef %62) #12
  %add88 = add i64 %call87, 1
  %call89 = call noalias ptr @malloc(i64 noundef %add88) #13
  store ptr %call89, ptr %function64, align 8, !tbaa !4
  %63 = load ptr, ptr %function64, align 8, !tbaa !4
  %64 = load ptr, ptr %str, align 8, !tbaa !4
  %call90 = call ptr @strcpy(ptr noundef %63, ptr noundef %64) #11
  %65 = load ptr, ptr %response60, align 8, !tbaa !4
  %response_type91 = getelementptr inbounds %struct.response_spec, ptr %65, i32 0, i32 0
  store i32 2, ptr %response_type91, align 8, !tbaa !12
  %66 = load ptr, ptr %list65, align 8, !tbaa !4
  %67 = load ptr, ptr %response60, align 8, !tbaa !4
  %u92 = getelementptr inbounds %struct.response_spec, ptr %67, i32 0, i32 1
  %format_list93 = getelementptr inbounds %struct.filter_spec, ptr %u92, i32 0, i32 0
  store ptr %66, ptr %format_list93, align 8, !tbaa !14
  %68 = load ptr, ptr %function64, align 8, !tbaa !4
  %69 = load ptr, ptr %response60, align 8, !tbaa !4
  %u94 = getelementptr inbounds %struct.response_spec, ptr %69, i32 0, i32 1
  %function95 = getelementptr inbounds %struct.filter_spec, ptr %u94, i32 0, i32 1
  store ptr %68, ptr %function95, align 8, !tbaa !14
  %70 = load ptr, ptr %local_data.addr, align 8, !tbaa !4
  %71 = load ptr, ptr %response60, align 8, !tbaa !4
  %u96 = getelementptr inbounds %struct.response_spec, ptr %71, i32 0, i32 1
  %client_data97 = getelementptr inbounds %struct.filter_spec, ptr %u96, i32 0, i32 2
  store ptr %70, ptr %client_data97, align 8, !tbaa !14
  %72 = load ptr, ptr %cm.addr, align 8, !tbaa !4
  %73 = load ptr, ptr %list65, align 8, !tbaa !4
  %call98 = call ptr @EVregister_format_set(ptr noundef %72, ptr noundef %73)
  %74 = load ptr, ptr %response60, align 8, !tbaa !4
  %u99 = getelementptr inbounds %struct.response_spec, ptr %74, i32 0, i32 1
  %reference_format100 = getelementptr inbounds %struct.filter_spec, ptr %u99, i32 0, i32 3
  store ptr %call98, ptr %reference_format100, align 8, !tbaa !14
  %75 = load ptr, ptr %ref_ptr.addr, align 8, !tbaa !4
  %tobool101 = icmp ne ptr %75, null
  br i1 %tobool101, label %if.then102, label %if.end109

if.then102:                                       ; preds = %for.end83
  call void @llvm.lifetime.start.p0(i64 8, ptr %formats103) #11
  %call104 = call noalias ptr @malloc(i64 noundef 16) #13
  store ptr %call104, ptr %formats103, align 8, !tbaa !4
  %76 = load ptr, ptr %formats103, align 8, !tbaa !4
  %arrayidx105 = getelementptr inbounds ptr, ptr %76, i64 1
  store ptr null, ptr %arrayidx105, align 8, !tbaa !4
  %77 = load ptr, ptr %response60, align 8, !tbaa !4
  %u106 = getelementptr inbounds %struct.response_spec, ptr %77, i32 0, i32 1
  %reference_format107 = getelementptr inbounds %struct.filter_spec, ptr %u106, i32 0, i32 3
  %78 = load ptr, ptr %reference_format107, align 8, !tbaa !14
  %79 = load ptr, ptr %formats103, align 8, !tbaa !4
  %arrayidx108 = getelementptr inbounds ptr, ptr %79, i64 0
  store ptr %78, ptr %arrayidx108, align 8, !tbaa !4
  %80 = load ptr, ptr %formats103, align 8, !tbaa !4
  %81 = load ptr, ptr %ref_ptr.addr, align 8, !tbaa !4
  store ptr %80, ptr %81, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %formats103) #11
  br label %if.end109

if.end109:                                        ; preds = %if.then102, %for.end83
  %82 = load ptr, ptr %response60, align 8, !tbaa !4
  store ptr %82, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %list65) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %function64) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %i63) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %format_count62) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %response60) #11
  br label %cleanup353

if.end110:                                        ; preds = %if.end55
  %83 = load ptr, ptr %str, align 8, !tbaa !4
  %call111 = call i32 @strncmp(ptr noundef @.str.4, ptr noundef %83, i64 noundef 16) #12
  %cmp112 = icmp eq i32 %call111, 0
  br i1 %cmp112, label %if.then114, label %if.end216

if.then114:                                       ; preds = %if.end110
  call void @llvm.lifetime.start.p0(i64 8, ptr %response115) #11
  %call116 = call noalias ptr @malloc(i64 noundef 72) #13
  store ptr %call116, ptr %response115, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %format_count117) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr %i118) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %function119) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %in_list) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %out_list) #11
  %84 = load ptr, ptr %str, align 8, !tbaa !4
  %add.ptr120 = getelementptr inbounds i8, ptr %84, i64 17
  store ptr %add.ptr120, ptr %str, align 8, !tbaa !4
  %85 = load ptr, ptr %str, align 8, !tbaa !4
  %call121 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %85, ptr noundef @.str.5, ptr noundef %format_count117) #11
  %86 = load ptr, ptr %str, align 8, !tbaa !4
  %call122 = call ptr @strchr(ptr noundef %86, i32 noundef 10) #12
  %add.ptr123 = getelementptr inbounds i8, ptr %call122, i64 1
  store ptr %add.ptr123, ptr %str, align 8, !tbaa !4
  %87 = load i32, ptr %format_count117, align 4, !tbaa !8
  %add124 = add nsw i32 %87, 1
  %conv125 = sext i32 %add124 to i64
  %mul126 = mul i64 32, %conv125
  %call127 = call noalias ptr @malloc(i64 noundef %mul126) #13
  store ptr %call127, ptr %in_list, align 8, !tbaa !4
  store i32 0, ptr %i118, align 4, !tbaa !8
  br label %for.cond128

for.cond128:                                      ; preds = %for.inc135, %if.then114
  %88 = load i32, ptr %i118, align 4, !tbaa !8
  %89 = load i32, ptr %format_count117, align 4, !tbaa !8
  %cmp129 = icmp slt i32 %88, %89
  br i1 %cmp129, label %for.body131, label %for.end137

for.body131:                                      ; preds = %for.cond128
  %90 = load ptr, ptr %str, align 8, !tbaa !4
  %91 = load ptr, ptr %in_list, align 8, !tbaa !4
  %92 = load i32, ptr %i118, align 4, !tbaa !8
  %idxprom132 = sext i32 %92 to i64
  %arrayidx133 = getelementptr inbounds %struct._FMformat_list, ptr %91, i64 %idxprom132
  %call134 = call ptr @parse_FMformat_from_string(ptr noundef %90, ptr noundef %arrayidx133)
  store ptr %call134, ptr %str, align 8, !tbaa !4
  br label %for.inc135

for.inc135:                                       ; preds = %for.body131
  %93 = load i32, ptr %i118, align 4, !tbaa !8
  %inc136 = add nsw i32 %93, 1
  store i32 %inc136, ptr %i118, align 4, !tbaa !8
  br label %for.cond128

for.end137:                                       ; preds = %for.cond128
  %94 = load ptr, ptr %in_list, align 8, !tbaa !4
  %95 = load i32, ptr %format_count117, align 4, !tbaa !8
  %idxprom138 = sext i32 %95 to i64
  %arrayidx139 = getelementptr inbounds %struct._FMformat_list, ptr %94, i64 %idxprom138
  %format_name140 = getelementptr inbounds %struct._FMformat_list, ptr %arrayidx139, i32 0, i32 0
  store ptr null, ptr %format_name140, align 8, !tbaa !10
  %96 = load ptr, ptr %in_list, align 8, !tbaa !4
  %97 = load i32, ptr %format_count117, align 4, !tbaa !8
  %idxprom141 = sext i32 %97 to i64
  %arrayidx142 = getelementptr inbounds %struct._FMformat_list, ptr %96, i64 %idxprom141
  %field_list = getelementptr inbounds %struct._FMformat_list, ptr %arrayidx142, i32 0, i32 1
  store ptr null, ptr %field_list, align 8, !tbaa !15
  %98 = load ptr, ptr %str, align 8, !tbaa !4
  %call143 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %98, ptr noundef @.str.6, ptr noundef %format_count117) #11
  %cmp144 = icmp ne i32 %call143, 1
  br i1 %cmp144, label %if.then146, label %if.end148

if.then146:                                       ; preds = %for.end137
  %call147 = call i32 (ptr, ...) @printf(ptr noundef @.str.7)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end148:                                        ; preds = %for.end137
  %99 = load ptr, ptr %str, align 8, !tbaa !4
  %call149 = call ptr @strchr(ptr noundef %99, i32 noundef 10) #12
  %add.ptr150 = getelementptr inbounds i8, ptr %call149, i64 1
  store ptr %add.ptr150, ptr %str, align 8, !tbaa !4
  %100 = load i32, ptr %format_count117, align 4, !tbaa !8
  %add151 = add nsw i32 %100, 1
  %conv152 = sext i32 %add151 to i64
  %mul153 = mul i64 32, %conv152
  %call154 = call noalias ptr @malloc(i64 noundef %mul153) #13
  store ptr %call154, ptr %out_list, align 8, !tbaa !4
  store i32 0, ptr %i118, align 4, !tbaa !8
  br label %for.cond155

for.cond155:                                      ; preds = %for.inc162, %if.end148
  %101 = load i32, ptr %i118, align 4, !tbaa !8
  %102 = load i32, ptr %format_count117, align 4, !tbaa !8
  %cmp156 = icmp slt i32 %101, %102
  br i1 %cmp156, label %for.body158, label %for.end164

for.body158:                                      ; preds = %for.cond155
  %103 = load ptr, ptr %str, align 8, !tbaa !4
  %104 = load ptr, ptr %out_list, align 8, !tbaa !4
  %105 = load i32, ptr %i118, align 4, !tbaa !8
  %idxprom159 = sext i32 %105 to i64
  %arrayidx160 = getelementptr inbounds %struct._FMformat_list, ptr %104, i64 %idxprom159
  %call161 = call ptr @parse_FMformat_from_string(ptr noundef %103, ptr noundef %arrayidx160)
  store ptr %call161, ptr %str, align 8, !tbaa !4
  br label %for.inc162

for.inc162:                                       ; preds = %for.body158
  %106 = load i32, ptr %i118, align 4, !tbaa !8
  %inc163 = add nsw i32 %106, 1
  store i32 %inc163, ptr %i118, align 4, !tbaa !8
  br label %for.cond155

for.end164:                                       ; preds = %for.cond155
  %107 = load ptr, ptr %out_list, align 8, !tbaa !4
  %108 = load i32, ptr %format_count117, align 4, !tbaa !8
  %idxprom165 = sext i32 %108 to i64
  %arrayidx166 = getelementptr inbounds %struct._FMformat_list, ptr %107, i64 %idxprom165
  %format_name167 = getelementptr inbounds %struct._FMformat_list, ptr %arrayidx166, i32 0, i32 0
  store ptr null, ptr %format_name167, align 8, !tbaa !10
  %109 = load ptr, ptr %out_list, align 8, !tbaa !4
  %110 = load i32, ptr %format_count117, align 4, !tbaa !8
  %idxprom168 = sext i32 %110 to i64
  %arrayidx169 = getelementptr inbounds %struct._FMformat_list, ptr %109, i64 %idxprom168
  %field_list170 = getelementptr inbounds %struct._FMformat_list, ptr %arrayidx169, i32 0, i32 1
  store ptr null, ptr %field_list170, align 8, !tbaa !15
  %111 = load ptr, ptr %str, align 8, !tbaa !4
  %call171 = call i64 @strlen(ptr noundef %111) #12
  %add172 = add i64 %call171, 1
  %call173 = call noalias ptr @malloc(i64 noundef %add172) #13
  store ptr %call173, ptr %function119, align 8, !tbaa !4
  %112 = load ptr, ptr %function119, align 8, !tbaa !4
  %113 = load ptr, ptr %str, align 8, !tbaa !4
  %call174 = call ptr @strcpy(ptr noundef %112, ptr noundef %113) #11
  %114 = load ptr, ptr %response115, align 8, !tbaa !4
  %response_type175 = getelementptr inbounds %struct.response_spec, ptr %114, i32 0, i32 0
  store i32 1, ptr %response_type175, align 8, !tbaa !12
  %115 = load ptr, ptr %in_list, align 8, !tbaa !4
  %116 = load ptr, ptr %response115, align 8, !tbaa !4
  %u176 = getelementptr inbounds %struct.response_spec, ptr %116, i32 0, i32 1
  %in_format_list = getelementptr inbounds %struct.transform_spec, ptr %u176, i32 0, i32 0
  store ptr %115, ptr %in_format_list, align 8, !tbaa !14
  %117 = load ptr, ptr %out_list, align 8, !tbaa !4
  %118 = load ptr, ptr %response115, align 8, !tbaa !4
  %u177 = getelementptr inbounds %struct.response_spec, ptr %118, i32 0, i32 1
  %out_format_list = getelementptr inbounds %struct.transform_spec, ptr %u177, i32 0, i32 1
  store ptr %117, ptr %out_format_list, align 8, !tbaa !14
  %119 = load ptr, ptr %function119, align 8, !tbaa !4
  %120 = load ptr, ptr %response115, align 8, !tbaa !4
  %u178 = getelementptr inbounds %struct.response_spec, ptr %120, i32 0, i32 1
  %function179 = getelementptr inbounds %struct.transform_spec, ptr %u178, i32 0, i32 2
  store ptr %119, ptr %function179, align 8, !tbaa !14
  %121 = load ptr, ptr %local_data.addr, align 8, !tbaa !4
  %122 = load ptr, ptr %response115, align 8, !tbaa !4
  %u180 = getelementptr inbounds %struct.response_spec, ptr %122, i32 0, i32 1
  %client_data181 = getelementptr inbounds %struct.transform_spec, ptr %u180, i32 0, i32 3
  store ptr %121, ptr %client_data181, align 8, !tbaa !14
  %123 = load ptr, ptr %response115, align 8, !tbaa !4
  %u182 = getelementptr inbounds %struct.response_spec, ptr %123, i32 0, i32 1
  %reference_input_format = getelementptr inbounds %struct.transform_spec, ptr %u182, i32 0, i32 4
  store ptr null, ptr %reference_input_format, align 8, !tbaa !14
  %124 = load ptr, ptr %in_list, align 8, !tbaa !4
  %arrayidx183 = getelementptr inbounds %struct._FMformat_list, ptr %124, i64 0
  %format_name184 = getelementptr inbounds %struct._FMformat_list, ptr %arrayidx183, i32 0, i32 0
  %125 = load ptr, ptr %format_name184, align 8, !tbaa !10
  %cmp185 = icmp ne ptr %125, null
  br i1 %cmp185, label %if.then187, label %if.end191

if.then187:                                       ; preds = %for.end164
  %126 = load ptr, ptr %cm.addr, align 8, !tbaa !4
  %127 = load ptr, ptr %in_list, align 8, !tbaa !4
  %call188 = call ptr @EVregister_format_set(ptr noundef %126, ptr noundef %127)
  %128 = load ptr, ptr %response115, align 8, !tbaa !4
  %u189 = getelementptr inbounds %struct.response_spec, ptr %128, i32 0, i32 1
  %reference_input_format190 = getelementptr inbounds %struct.transform_spec, ptr %u189, i32 0, i32 4
  store ptr %call188, ptr %reference_input_format190, align 8, !tbaa !14
  br label %if.end191

if.end191:                                        ; preds = %if.then187, %for.end164
  %129 = load ptr, ptr %ref_ptr.addr, align 8, !tbaa !4
  %tobool192 = icmp ne ptr %129, null
  br i1 %tobool192, label %if.then193, label %if.end200

if.then193:                                       ; preds = %if.end191
  call void @llvm.lifetime.start.p0(i64 8, ptr %formats194) #11
  %call195 = call noalias ptr @malloc(i64 noundef 16) #13
  store ptr %call195, ptr %formats194, align 8, !tbaa !4
  %130 = load ptr, ptr %formats194, align 8, !tbaa !4
  %arrayidx196 = getelementptr inbounds ptr, ptr %130, i64 1
  store ptr null, ptr %arrayidx196, align 8, !tbaa !4
  %131 = load ptr, ptr %response115, align 8, !tbaa !4
  %u197 = getelementptr inbounds %struct.response_spec, ptr %131, i32 0, i32 1
  %reference_input_format198 = getelementptr inbounds %struct.transform_spec, ptr %u197, i32 0, i32 4
  %132 = load ptr, ptr %reference_input_format198, align 8, !tbaa !14
  %133 = load ptr, ptr %formats194, align 8, !tbaa !4
  %arrayidx199 = getelementptr inbounds ptr, ptr %133, i64 0
  store ptr %132, ptr %arrayidx199, align 8, !tbaa !4
  %134 = load ptr, ptr %formats194, align 8, !tbaa !4
  %135 = load ptr, ptr %ref_ptr.addr, align 8, !tbaa !4
  store ptr %134, ptr %135, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %formats194) #11
  br label %if.end200

if.end200:                                        ; preds = %if.then193, %if.end191
  %136 = load ptr, ptr %out_list, align 8, !tbaa !4
  %arrayidx201 = getelementptr inbounds %struct._FMformat_list, ptr %136, i64 0
  %format_name202 = getelementptr inbounds %struct._FMformat_list, ptr %arrayidx201, i32 0, i32 0
  %137 = load ptr, ptr %format_name202, align 8, !tbaa !10
  %cmp203 = icmp ne ptr %137, null
  br i1 %cmp203, label %if.then205, label %if.end208

if.then205:                                       ; preds = %if.end200
  %138 = load ptr, ptr %cm.addr, align 8, !tbaa !4
  %139 = load ptr, ptr %out_list, align 8, !tbaa !4
  %call206 = call ptr @EVregister_format_set(ptr noundef %138, ptr noundef %139)
  %140 = load ptr, ptr %response115, align 8, !tbaa !4
  %u207 = getelementptr inbounds %struct.response_spec, ptr %140, i32 0, i32 1
  %reference_output_format = getelementptr inbounds %struct.transform_spec, ptr %u207, i32 0, i32 5
  store ptr %call206, ptr %reference_output_format, align 8, !tbaa !14
  br label %if.end208

if.end208:                                        ; preds = %if.then205, %if.end200
  %141 = load ptr, ptr %out_list, align 8, !tbaa !4
  %arrayidx209 = getelementptr inbounds %struct._FMformat_list, ptr %141, i64 0
  %struct_size = getelementptr inbounds %struct._FMformat_list, ptr %arrayidx209, i32 0, i32 2
  %142 = load i32, ptr %struct_size, align 8, !tbaa !16
  %143 = load ptr, ptr %response115, align 8, !tbaa !4
  %u210 = getelementptr inbounds %struct.response_spec, ptr %143, i32 0, i32 1
  %output_base_struct_size = getelementptr inbounds %struct.transform_spec, ptr %u210, i32 0, i32 7
  store i32 %142, ptr %output_base_struct_size, align 8, !tbaa !14
  %144 = load ptr, ptr %response115, align 8, !tbaa !4
  store ptr %144, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end208, %if.then146
  call void @llvm.lifetime.end.p0(i64 8, ptr %out_list) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %in_list) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %function119) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %i118) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %format_count117) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %response115) #11
  br label %cleanup353

if.end216:                                        ; preds = %if.end110
  %145 = load ptr, ptr %str, align 8, !tbaa !4
  %call217 = call i32 @strncmp(ptr noundef @.str.8, ptr noundef %145, i64 noundef 17) #12
  %cmp218 = icmp eq i32 %call217, 0
  br i1 %cmp218, label %if.then220, label %if.end351

if.then220:                                       ; preds = %if.end216
  call void @llvm.lifetime.start.p0(i64 8, ptr %response221) #11
  %call222 = call noalias ptr @malloc(i64 noundef 72) #13
  store ptr %call222, ptr %response221, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %list_count) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %function223) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %struct_list) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr %accept_anonymous) #11
  store i32 0, ptr %accept_anonymous, align 4, !tbaa !8
  %146 = load ptr, ptr %str, align 8, !tbaa !4
  %add.ptr224 = getelementptr inbounds i8, ptr %146, i64 18
  store ptr %add.ptr224, ptr %str, align 8, !tbaa !4
  %147 = load ptr, ptr %str, align 8, !tbaa !4
  %call225 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %147, ptr noundef @.str.9, ptr noundef %list_count) #11
  %148 = load ptr, ptr %str, align 8, !tbaa !4
  %call226 = call ptr @strchr(ptr noundef %148, i32 noundef 10) #12
  %add.ptr227 = getelementptr inbounds i8, ptr %call226, i64 1
  store ptr %add.ptr227, ptr %str, align 8, !tbaa !4
  %149 = load i32, ptr %list_count, align 4, !tbaa !8
  %add228 = add nsw i32 %149, 1
  %conv229 = sext i32 %add228 to i64
  %mul230 = mul i64 8, %conv229
  %call231 = call noalias ptr @malloc(i64 noundef %mul230) #13
  store ptr %call231, ptr %struct_list, align 8, !tbaa !4
  store i32 0, ptr %j, align 4, !tbaa !8
  br label %for.cond232

for.cond232:                                      ; preds = %for.inc276, %if.then220
  %150 = load i32, ptr %j, align 4, !tbaa !8
  %151 = load i32, ptr %list_count, align 4, !tbaa !8
  %cmp233 = icmp slt i32 %150, %151
  br i1 %cmp233, label %for.body235, label %for.end278

for.body235:                                      ; preds = %for.cond232
  call void @llvm.lifetime.start.p0(i64 4, ptr %format_count2) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %in_list236) #11
  %152 = load ptr, ptr %str, align 8, !tbaa !4
  %call237 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %152, ptr noundef @.str.10, ptr noundef %format_count2) #11
  %153 = load ptr, ptr %str, align 8, !tbaa !4
  %call238 = call ptr @strchr(ptr noundef %153, i32 noundef 10) #12
  %add.ptr239 = getelementptr inbounds i8, ptr %call238, i64 1
  store ptr %add.ptr239, ptr %str, align 8, !tbaa !4
  %154 = load i32, ptr %format_count2, align 4, !tbaa !8
  %add240 = add nsw i32 %154, 1
  %conv241 = sext i32 %add240 to i64
  %mul242 = mul i64 32, %conv241
  %call243 = call noalias ptr @malloc(i64 noundef %mul242) #13
  store ptr %call243, ptr %in_list236, align 8, !tbaa !4
  store i32 0, ptr %k, align 4, !tbaa !8
  br label %for.cond244

for.cond244:                                      ; preds = %for.inc251, %for.body235
  %155 = load i32, ptr %k, align 4, !tbaa !8
  %156 = load i32, ptr %format_count2, align 4, !tbaa !8
  %cmp245 = icmp slt i32 %155, %156
  br i1 %cmp245, label %for.body247, label %for.end253

for.body247:                                      ; preds = %for.cond244
  %157 = load ptr, ptr %str, align 8, !tbaa !4
  %158 = load ptr, ptr %in_list236, align 8, !tbaa !4
  %159 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom248 = sext i32 %159 to i64
  %arrayidx249 = getelementptr inbounds %struct._FMformat_list, ptr %158, i64 %idxprom248
  %call250 = call ptr @parse_FMformat_from_string(ptr noundef %157, ptr noundef %arrayidx249)
  store ptr %call250, ptr %str, align 8, !tbaa !4
  br label %for.inc251

for.inc251:                                       ; preds = %for.body247
  %160 = load i32, ptr %k, align 4, !tbaa !8
  %inc252 = add nsw i32 %160, 1
  store i32 %inc252, ptr %k, align 4, !tbaa !8
  br label %for.cond244

for.end253:                                       ; preds = %for.cond244
  %161 = load ptr, ptr %in_list236, align 8, !tbaa !4
  %162 = load i32, ptr %format_count2, align 4, !tbaa !8
  %idxprom254 = sext i32 %162 to i64
  %arrayidx255 = getelementptr inbounds %struct._FMformat_list, ptr %161, i64 %idxprom254
  %format_name256 = getelementptr inbounds %struct._FMformat_list, ptr %arrayidx255, i32 0, i32 0
  store ptr null, ptr %format_name256, align 8, !tbaa !10
  %163 = load ptr, ptr %in_list236, align 8, !tbaa !4
  %164 = load i32, ptr %format_count2, align 4, !tbaa !8
  %idxprom257 = sext i32 %164 to i64
  %arrayidx258 = getelementptr inbounds %struct._FMformat_list, ptr %163, i64 %idxprom257
  %field_list259 = getelementptr inbounds %struct._FMformat_list, ptr %arrayidx258, i32 0, i32 1
  store ptr null, ptr %field_list259, align 8, !tbaa !15
  %165 = load ptr, ptr %in_list236, align 8, !tbaa !4
  %166 = load ptr, ptr %struct_list, align 8, !tbaa !4
  %167 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom260 = sext i32 %167 to i64
  %arrayidx261 = getelementptr inbounds ptr, ptr %166, i64 %idxprom260
  store ptr %165, ptr %arrayidx261, align 8, !tbaa !4
  %168 = load ptr, ptr %struct_list, align 8, !tbaa !4
  %169 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom262 = sext i32 %169 to i64
  %arrayidx263 = getelementptr inbounds ptr, ptr %168, i64 %idxprom262
  %170 = load ptr, ptr %arrayidx263, align 8, !tbaa !4
  %field_list264 = getelementptr inbounds %struct._FMformat_list, ptr %170, i32 0, i32 1
  %171 = load ptr, ptr %field_list264, align 8, !tbaa !15
  %cmp265 = icmp eq ptr %171, null
  br i1 %cmp265, label %if.then267, label %if.end275

if.then267:                                       ; preds = %for.end253
  %172 = load ptr, ptr %struct_list, align 8, !tbaa !4
  %173 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom268 = sext i32 %173 to i64
  %arrayidx269 = getelementptr inbounds ptr, ptr %172, i64 %idxprom268
  %174 = load ptr, ptr %arrayidx269, align 8, !tbaa !4
  %format_name270 = getelementptr inbounds %struct._FMformat_list, ptr %174, i32 0, i32 0
  %175 = load ptr, ptr %format_name270, align 8, !tbaa !10
  call void @free(ptr noundef %175) #11
  %176 = load ptr, ptr %in_list236, align 8, !tbaa !4
  call void @free(ptr noundef %176) #11
  %177 = load ptr, ptr %struct_list, align 8, !tbaa !4
  %178 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom271 = sext i32 %178 to i64
  %arrayidx272 = getelementptr inbounds ptr, ptr %177, i64 %idxprom271
  store ptr null, ptr %arrayidx272, align 8, !tbaa !4
  %179 = load i32, ptr %list_count, align 4, !tbaa !8
  %dec = add nsw i32 %179, -1
  store i32 %dec, ptr %list_count, align 4, !tbaa !8
  %180 = load i32, ptr %j, align 4, !tbaa !8
  %dec273 = add nsw i32 %180, -1
  store i32 %dec273, ptr %j, align 4, !tbaa !8
  %181 = load i32, ptr %accept_anonymous, align 4, !tbaa !8
  %inc274 = add nsw i32 %181, 1
  store i32 %inc274, ptr %accept_anonymous, align 4, !tbaa !8
  br label %if.end275

if.end275:                                        ; preds = %if.then267, %for.end253
  call void @llvm.lifetime.end.p0(i64 8, ptr %in_list236) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %format_count2) #11
  br label %for.inc276

for.inc276:                                       ; preds = %if.end275
  %182 = load i32, ptr %j, align 4, !tbaa !8
  %inc277 = add nsw i32 %182, 1
  store i32 %inc277, ptr %j, align 4, !tbaa !8
  br label %for.cond232

for.end278:                                       ; preds = %for.cond232
  %183 = load ptr, ptr %struct_list, align 8, !tbaa !4
  %184 = load i32, ptr %list_count, align 4, !tbaa !8
  %idxprom279 = sext i32 %184 to i64
  %arrayidx280 = getelementptr inbounds ptr, ptr %183, i64 %idxprom279
  store ptr null, ptr %arrayidx280, align 8, !tbaa !4
  %185 = load ptr, ptr %str, align 8, !tbaa !4
  %call281 = call i64 @strlen(ptr noundef %185) #12
  %add282 = add i64 %call281, 1
  %call283 = call noalias ptr @malloc(i64 noundef %add282) #13
  store ptr %call283, ptr %function223, align 8, !tbaa !4
  %186 = load ptr, ptr %function223, align 8, !tbaa !4
  %187 = load ptr, ptr %str, align 8, !tbaa !4
  %call284 = call ptr @strcpy(ptr noundef %186, ptr noundef %187) #11
  %188 = load ptr, ptr %response221, align 8, !tbaa !4
  %response_type285 = getelementptr inbounds %struct.response_spec, ptr %188, i32 0, i32 0
  store i32 3, ptr %response_type285, align 8, !tbaa !12
  %189 = load ptr, ptr %struct_list, align 8, !tbaa !4
  %190 = load ptr, ptr %response221, align 8, !tbaa !4
  %u286 = getelementptr inbounds %struct.response_spec, ptr %190, i32 0, i32 1
  %struct_list287 = getelementptr inbounds %struct.multityped_spec, ptr %u286, i32 0, i32 0
  store ptr %189, ptr %struct_list287, align 8, !tbaa !14
  %191 = load ptr, ptr %function223, align 8, !tbaa !4
  %192 = load ptr, ptr %response221, align 8, !tbaa !4
  %u288 = getelementptr inbounds %struct.response_spec, ptr %192, i32 0, i32 1
  %function289 = getelementptr inbounds %struct.multityped_spec, ptr %u288, i32 0, i32 1
  store ptr %191, ptr %function289, align 8, !tbaa !14
  %193 = load ptr, ptr %local_data.addr, align 8, !tbaa !4
  %194 = load ptr, ptr %response221, align 8, !tbaa !4
  %u290 = getelementptr inbounds %struct.response_spec, ptr %194, i32 0, i32 1
  %client_data291 = getelementptr inbounds %struct.multityped_spec, ptr %u290, i32 0, i32 2
  store ptr %193, ptr %client_data291, align 8, !tbaa !14
  %195 = load i32, ptr %accept_anonymous, align 4, !tbaa !8
  %196 = load ptr, ptr %response221, align 8, !tbaa !4
  %u292 = getelementptr inbounds %struct.response_spec, ptr %196, i32 0, i32 1
  %accept_anonymous293 = getelementptr inbounds %struct.multityped_spec, ptr %u292, i32 0, i32 3
  store i32 %195, ptr %accept_anonymous293, align 8, !tbaa !14
  %197 = load i32, ptr %list_count, align 4, !tbaa !8
  %add294 = add nsw i32 %197, 1
  %conv295 = sext i32 %add294 to i64
  %mul296 = mul i64 %conv295, 8
  %call297 = call noalias ptr @malloc(i64 noundef %mul296) #13
  %198 = load ptr, ptr %response221, align 8, !tbaa !4
  %u298 = getelementptr inbounds %struct.response_spec, ptr %198, i32 0, i32 1
  %reference_input_format_list = getelementptr inbounds %struct.multityped_spec, ptr %u298, i32 0, i32 4
  store ptr %call297, ptr %reference_input_format_list, align 8, !tbaa !14
  store i32 0, ptr %j, align 4, !tbaa !8
  br label %for.cond299

for.cond299:                                      ; preds = %for.inc318, %for.end278
  %199 = load i32, ptr %j, align 4, !tbaa !8
  %200 = load i32, ptr %list_count, align 4, !tbaa !8
  %cmp300 = icmp slt i32 %199, %200
  br i1 %cmp300, label %for.body302, label %for.end320

for.body302:                                      ; preds = %for.cond299
  %201 = load ptr, ptr %struct_list, align 8, !tbaa !4
  %202 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom303 = sext i32 %202 to i64
  %arrayidx304 = getelementptr inbounds ptr, ptr %201, i64 %idxprom303
  %203 = load ptr, ptr %arrayidx304, align 8, !tbaa !4
  %arrayidx305 = getelementptr inbounds %struct._FMformat_list, ptr %203, i64 0
  %format_name306 = getelementptr inbounds %struct._FMformat_list, ptr %arrayidx305, i32 0, i32 0
  %204 = load ptr, ptr %format_name306, align 8, !tbaa !10
  %cmp307 = icmp ne ptr %204, null
  br i1 %cmp307, label %if.then309, label %if.end317

if.then309:                                       ; preds = %for.body302
  %205 = load ptr, ptr %cm.addr, align 8, !tbaa !4
  %206 = load ptr, ptr %struct_list, align 8, !tbaa !4
  %207 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom310 = sext i32 %207 to i64
  %arrayidx311 = getelementptr inbounds ptr, ptr %206, i64 %idxprom310
  %208 = load ptr, ptr %arrayidx311, align 8, !tbaa !4
  %call312 = call ptr @EVregister_format_set(ptr noundef %205, ptr noundef %208)
  %209 = load ptr, ptr %response221, align 8, !tbaa !4
  %u313 = getelementptr inbounds %struct.response_spec, ptr %209, i32 0, i32 1
  %reference_input_format_list314 = getelementptr inbounds %struct.multityped_spec, ptr %u313, i32 0, i32 4
  %210 = load ptr, ptr %reference_input_format_list314, align 8, !tbaa !14
  %211 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom315 = sext i32 %211 to i64
  %arrayidx316 = getelementptr inbounds ptr, ptr %210, i64 %idxprom315
  store ptr %call312, ptr %arrayidx316, align 8, !tbaa !4
  br label %if.end317

if.end317:                                        ; preds = %if.then309, %for.body302
  br label %for.inc318

for.inc318:                                       ; preds = %if.end317
  %212 = load i32, ptr %j, align 4, !tbaa !8
  %inc319 = add nsw i32 %212, 1
  store i32 %inc319, ptr %j, align 4, !tbaa !8
  br label %for.cond299

for.end320:                                       ; preds = %for.cond299
  %213 = load ptr, ptr %ref_ptr.addr, align 8, !tbaa !4
  %tobool321 = icmp ne ptr %213, null
  br i1 %tobool321, label %if.then322, label %if.end344

if.then322:                                       ; preds = %for.end320
  call void @llvm.lifetime.start.p0(i64 8, ptr %formats323) #11
  %214 = load i32, ptr %list_count, align 4, !tbaa !8
  %add324 = add nsw i32 %214, 1
  %conv325 = sext i32 %add324 to i64
  %mul326 = mul i64 %conv325, 8
  %call327 = call noalias ptr @malloc(i64 noundef %mul326) #13
  store ptr %call327, ptr %formats323, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %k328) #11
  store i32 0, ptr %k328, align 4, !tbaa !8
  store i32 0, ptr %k328, align 4, !tbaa !8
  br label %for.cond329

for.cond329:                                      ; preds = %for.inc339, %if.then322
  %215 = load i32, ptr %k328, align 4, !tbaa !8
  %216 = load i32, ptr %list_count, align 4, !tbaa !8
  %cmp330 = icmp slt i32 %215, %216
  br i1 %cmp330, label %for.body332, label %for.end341

for.body332:                                      ; preds = %for.cond329
  %217 = load ptr, ptr %response221, align 8, !tbaa !4
  %u333 = getelementptr inbounds %struct.response_spec, ptr %217, i32 0, i32 1
  %reference_input_format_list334 = getelementptr inbounds %struct.multityped_spec, ptr %u333, i32 0, i32 4
  %218 = load ptr, ptr %reference_input_format_list334, align 8, !tbaa !14
  %219 = load i32, ptr %k328, align 4, !tbaa !8
  %idxprom335 = sext i32 %219 to i64
  %arrayidx336 = getelementptr inbounds ptr, ptr %218, i64 %idxprom335
  %220 = load ptr, ptr %arrayidx336, align 8, !tbaa !4
  %221 = load ptr, ptr %formats323, align 8, !tbaa !4
  %222 = load i32, ptr %k328, align 4, !tbaa !8
  %idxprom337 = sext i32 %222 to i64
  %arrayidx338 = getelementptr inbounds ptr, ptr %221, i64 %idxprom337
  store ptr %220, ptr %arrayidx338, align 8, !tbaa !4
  br label %for.inc339

for.inc339:                                       ; preds = %for.body332
  %223 = load i32, ptr %k328, align 4, !tbaa !8
  %inc340 = add nsw i32 %223, 1
  store i32 %inc340, ptr %k328, align 4, !tbaa !8
  br label %for.cond329

for.end341:                                       ; preds = %for.cond329
  %224 = load ptr, ptr %formats323, align 8, !tbaa !4
  %225 = load i32, ptr %list_count, align 4, !tbaa !8
  %idxprom342 = sext i32 %225 to i64
  %arrayidx343 = getelementptr inbounds ptr, ptr %224, i64 %idxprom342
  store ptr null, ptr %arrayidx343, align 8, !tbaa !4
  %226 = load ptr, ptr %formats323, align 8, !tbaa !4
  %227 = load ptr, ptr %ref_ptr.addr, align 8, !tbaa !4
  store ptr %226, ptr %227, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 4, ptr %k328) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %formats323) #11
  br label %if.end344

if.end344:                                        ; preds = %for.end341, %for.end320
  %228 = load ptr, ptr %response221, align 8, !tbaa !4
  store ptr %228, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %accept_anonymous) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %struct_list) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %function223) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %list_count) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %response221) #11
  br label %cleanup353

if.end351:                                        ; preds = %if.end216
  %229 = load ptr, ptr %str, align 8, !tbaa !4
  %call352 = call i32 (ptr, ...) @printf(ptr noundef @.str.11, ptr noundef %229)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup353

cleanup353:                                       ; preds = %if.end351, %if.end344, %cleanup, %if.end109, %if.end54
  call void @llvm.lifetime.end.p0(i64 8, ptr %str) #11
  %230 = load ptr, ptr %retval, align 8
  ret ptr %230
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(ptr noundef, ptr noundef, ...) #3

; Function Attrs: nounwind willreturn memory(read)
declare ptr @strchr(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #4

; Function Attrs: nounwind uwtable
define internal ptr @parse_FMformat_from_string(ptr noundef %str, ptr noundef %f) #0 {
entry:
  %str.addr = alloca ptr, align 8
  %f.addr = alloca ptr, align 8
  %name = alloca ptr, align 8
  %list = alloca ptr, align 8
  %struct_size = alloca i32, align 4
  %field_count = alloca i32, align 4
  %index = alloca i32, align 4
  store ptr %str, ptr %str.addr, align 8, !tbaa !4
  store ptr %f, ptr %f.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %name) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %list) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr %struct_size) #11
  %0 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %format_name = getelementptr inbounds %struct._FMformat_list, ptr %0, i32 0, i32 0
  store ptr null, ptr %format_name, align 8, !tbaa !10
  %1 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %field_list = getelementptr inbounds %struct._FMformat_list, ptr %1, i32 0, i32 1
  store ptr null, ptr %field_list, align 8, !tbaa !15
  %2 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %struct_size1 = getelementptr inbounds %struct._FMformat_list, ptr %2, i32 0, i32 2
  store i32 0, ptr %struct_size1, align 8, !tbaa !16
  %3 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %opt_info = getelementptr inbounds %struct._FMformat_list, ptr %3, i32 0, i32 3
  store ptr null, ptr %opt_info, align 8, !tbaa !17
  %4 = load ptr, ptr %str.addr, align 8, !tbaa !4
  %call = call i32 @strncmp(ptr noundef %4, ptr noundef @.str.29, i64 noundef 10) #12
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end98

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %field_count) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #11
  store i32 0, ptr %index, align 4, !tbaa !8
  %5 = load ptr, ptr %str.addr, align 8, !tbaa !4
  %add.ptr = getelementptr inbounds i8, ptr %5, i64 10
  store ptr %add.ptr, ptr %str.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %str.addr, align 8, !tbaa !4
  %call2 = call ptr @get_str(ptr noundef %6, ptr noundef %name)
  store ptr %call2, ptr %str.addr, align 8, !tbaa !4
  %7 = load ptr, ptr %str.addr, align 8, !tbaa !4
  %add.ptr3 = getelementptr inbounds i8, ptr %7, i64 12
  store ptr %add.ptr3, ptr %str.addr, align 8, !tbaa !4
  %8 = load ptr, ptr %str.addr, align 8, !tbaa !4
  %call4 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %8, ptr noundef @.str.14, ptr noundef %struct_size) #11
  %cmp5 = icmp eq i32 %call4, 1
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then6
  %call7 = call ptr @__ctype_b_loc() #14
  %9 = load ptr, ptr %call7, align 8, !tbaa !4
  %10 = load ptr, ptr %str.addr, align 8, !tbaa !4
  %11 = load i8, ptr %10, align 1, !tbaa !14
  %conv = sext i8 %11 to i32
  %idxprom = sext i32 %conv to i64
  %arrayidx = getelementptr inbounds i16, ptr %9, i64 %idxprom
  %12 = load i16, ptr %arrayidx, align 2, !tbaa !18
  %conv8 = zext i16 %12 to i32
  %and = and i32 %conv8, 2048
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %13 = load ptr, ptr %str.addr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, ptr %13, i32 1
  store ptr %incdec.ptr, ptr %str.addr, align 8, !tbaa !4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end

if.end:                                           ; preds = %while.end, %if.then
  %14 = load ptr, ptr %str.addr, align 8, !tbaa !4
  %add.ptr9 = getelementptr inbounds i8, ptr %14, i64 12
  store ptr %add.ptr9, ptr %str.addr, align 8, !tbaa !4
  %15 = load ptr, ptr %str.addr, align 8, !tbaa !4
  %call10 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %15, ptr noundef @.str.14, ptr noundef %field_count) #11
  %cmp11 = icmp eq i32 %call10, 1
  br i1 %cmp11, label %if.then13, label %if.end25

if.then13:                                        ; preds = %if.end
  br label %while.cond14

while.cond14:                                     ; preds = %while.body22, %if.then13
  %call15 = call ptr @__ctype_b_loc() #14
  %16 = load ptr, ptr %call15, align 8, !tbaa !4
  %17 = load ptr, ptr %str.addr, align 8, !tbaa !4
  %18 = load i8, ptr %17, align 1, !tbaa !14
  %conv16 = sext i8 %18 to i32
  %idxprom17 = sext i32 %conv16 to i64
  %arrayidx18 = getelementptr inbounds i16, ptr %16, i64 %idxprom17
  %19 = load i16, ptr %arrayidx18, align 2, !tbaa !18
  %conv19 = zext i16 %19 to i32
  %and20 = and i32 %conv19, 2048
  %tobool21 = icmp ne i32 %and20, 0
  br i1 %tobool21, label %while.body22, label %while.end24

while.body22:                                     ; preds = %while.cond14
  %20 = load ptr, ptr %str.addr, align 8, !tbaa !4
  %incdec.ptr23 = getelementptr inbounds i8, ptr %20, i32 1
  store ptr %incdec.ptr23, ptr %str.addr, align 8, !tbaa !4
  br label %while.cond14

while.end24:                                      ; preds = %while.cond14
  br label %if.end25

if.end25:                                         ; preds = %while.end24, %if.end
  %21 = load ptr, ptr %str.addr, align 8, !tbaa !4
  %incdec.ptr26 = getelementptr inbounds i8, ptr %21, i32 1
  store ptr %incdec.ptr26, ptr %str.addr, align 8, !tbaa !4
  %22 = load i32, ptr %field_count, align 4, !tbaa !8
  %add = add nsw i32 %22, 1
  %conv27 = sext i32 %add to i64
  %mul = mul i64 24, %conv27
  %call28 = call noalias ptr @malloc(i64 noundef %mul) #13
  store ptr %call28, ptr %list, align 8, !tbaa !4
  store i32 0, ptr %index, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end25
  %23 = load i32, ptr %index, align 4, !tbaa !8
  %24 = load i32, ptr %field_count, align 4, !tbaa !8
  %cmp29 = icmp slt i32 %23, %24
  br i1 %cmp29, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %25 = load ptr, ptr %str.addr, align 8, !tbaa !4
  %add.ptr31 = getelementptr inbounds i8, ptr %25, i64 13
  store ptr %add.ptr31, ptr %str.addr, align 8, !tbaa !4
  %26 = load ptr, ptr %str.addr, align 8, !tbaa !4
  %27 = load ptr, ptr %list, align 8, !tbaa !4
  %28 = load i32, ptr %index, align 4, !tbaa !8
  %idxprom32 = sext i32 %28 to i64
  %arrayidx33 = getelementptr inbounds %struct._FMField, ptr %27, i64 %idxprom32
  %field_name = getelementptr inbounds %struct._FMField, ptr %arrayidx33, i32 0, i32 0
  %call34 = call ptr @get_str(ptr noundef %26, ptr noundef %field_name)
  store ptr %call34, ptr %str.addr, align 8, !tbaa !4
  %29 = load ptr, ptr %str.addr, align 8, !tbaa !4
  %add.ptr35 = getelementptr inbounds i8, ptr %29, i64 2
  store ptr %add.ptr35, ptr %str.addr, align 8, !tbaa !4
  %30 = load ptr, ptr %str.addr, align 8, !tbaa !4
  %31 = load ptr, ptr %list, align 8, !tbaa !4
  %32 = load i32, ptr %index, align 4, !tbaa !8
  %idxprom36 = sext i32 %32 to i64
  %arrayidx37 = getelementptr inbounds %struct._FMField, ptr %31, i64 %idxprom36
  %field_type = getelementptr inbounds %struct._FMField, ptr %arrayidx37, i32 0, i32 1
  %call38 = call ptr @get_str(ptr noundef %30, ptr noundef %field_type)
  store ptr %call38, ptr %str.addr, align 8, !tbaa !4
  %33 = load ptr, ptr %str.addr, align 8, !tbaa !4
  %incdec.ptr39 = getelementptr inbounds i8, ptr %33, i32 1
  store ptr %incdec.ptr39, ptr %str.addr, align 8, !tbaa !4
  %34 = load ptr, ptr %str.addr, align 8, !tbaa !4
  %35 = load ptr, ptr %list, align 8, !tbaa !4
  %36 = load i32, ptr %index, align 4, !tbaa !8
  %idxprom40 = sext i32 %36 to i64
  %arrayidx41 = getelementptr inbounds %struct._FMField, ptr %35, i64 %idxprom40
  %field_size = getelementptr inbounds %struct._FMField, ptr %arrayidx41, i32 0, i32 2
  %call42 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %34, ptr noundef @.str.14, ptr noundef %field_size) #11
  %cmp43 = icmp eq i32 %call42, 1
  br i1 %cmp43, label %if.then45, label %if.end57

if.then45:                                        ; preds = %for.body
  br label %while.cond46

while.cond46:                                     ; preds = %while.body54, %if.then45
  %call47 = call ptr @__ctype_b_loc() #14
  %37 = load ptr, ptr %call47, align 8, !tbaa !4
  %38 = load ptr, ptr %str.addr, align 8, !tbaa !4
  %39 = load i8, ptr %38, align 1, !tbaa !14
  %conv48 = sext i8 %39 to i32
  %idxprom49 = sext i32 %conv48 to i64
  %arrayidx50 = getelementptr inbounds i16, ptr %37, i64 %idxprom49
  %40 = load i16, ptr %arrayidx50, align 2, !tbaa !18
  %conv51 = zext i16 %40 to i32
  %and52 = and i32 %conv51, 2048
  %tobool53 = icmp ne i32 %and52, 0
  br i1 %tobool53, label %while.body54, label %while.end56

while.body54:                                     ; preds = %while.cond46
  %41 = load ptr, ptr %str.addr, align 8, !tbaa !4
  %incdec.ptr55 = getelementptr inbounds i8, ptr %41, i32 1
  store ptr %incdec.ptr55, ptr %str.addr, align 8, !tbaa !4
  br label %while.cond46

while.end56:                                      ; preds = %while.cond46
  br label %if.end57

if.end57:                                         ; preds = %while.end56, %for.body
  %42 = load ptr, ptr %str.addr, align 8, !tbaa !4
  %incdec.ptr58 = getelementptr inbounds i8, ptr %42, i32 1
  store ptr %incdec.ptr58, ptr %str.addr, align 8, !tbaa !4
  %43 = load ptr, ptr %str.addr, align 8, !tbaa !4
  %44 = load ptr, ptr %list, align 8, !tbaa !4
  %45 = load i32, ptr %index, align 4, !tbaa !8
  %idxprom59 = sext i32 %45 to i64
  %arrayidx60 = getelementptr inbounds %struct._FMField, ptr %44, i64 %idxprom59
  %field_offset = getelementptr inbounds %struct._FMField, ptr %arrayidx60, i32 0, i32 3
  %call61 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %43, ptr noundef @.str.14, ptr noundef %field_offset) #11
  %cmp62 = icmp eq i32 %call61, 1
  br i1 %cmp62, label %if.then64, label %if.end76

if.then64:                                        ; preds = %if.end57
  br label %while.cond65

while.cond65:                                     ; preds = %while.body73, %if.then64
  %call66 = call ptr @__ctype_b_loc() #14
  %46 = load ptr, ptr %call66, align 8, !tbaa !4
  %47 = load ptr, ptr %str.addr, align 8, !tbaa !4
  %48 = load i8, ptr %47, align 1, !tbaa !14
  %conv67 = sext i8 %48 to i32
  %idxprom68 = sext i32 %conv67 to i64
  %arrayidx69 = getelementptr inbounds i16, ptr %46, i64 %idxprom68
  %49 = load i16, ptr %arrayidx69, align 2, !tbaa !18
  %conv70 = zext i16 %49 to i32
  %and71 = and i32 %conv70, 2048
  %tobool72 = icmp ne i32 %and71, 0
  br i1 %tobool72, label %while.body73, label %while.end75

while.body73:                                     ; preds = %while.cond65
  %50 = load ptr, ptr %str.addr, align 8, !tbaa !4
  %incdec.ptr74 = getelementptr inbounds i8, ptr %50, i32 1
  store ptr %incdec.ptr74, ptr %str.addr, align 8, !tbaa !4
  br label %while.cond65

while.end75:                                      ; preds = %while.cond65
  br label %if.end76

if.end76:                                         ; preds = %while.end75, %if.end57
  %51 = load ptr, ptr %str.addr, align 8, !tbaa !4
  %call77 = call ptr @strchr(ptr noundef %51, i32 noundef 10) #12
  %add.ptr78 = getelementptr inbounds i8, ptr %call77, i64 1
  store ptr %add.ptr78, ptr %str.addr, align 8, !tbaa !4
  br label %for.inc

for.inc:                                          ; preds = %if.end76
  %52 = load i32, ptr %index, align 4, !tbaa !8
  %inc = add nsw i32 %52, 1
  store i32 %inc, ptr %index, align 4, !tbaa !8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %53 = load ptr, ptr %list, align 8, !tbaa !4
  %54 = load i32, ptr %field_count, align 4, !tbaa !8
  %idxprom79 = sext i32 %54 to i64
  %arrayidx80 = getelementptr inbounds %struct._FMField, ptr %53, i64 %idxprom79
  %field_name81 = getelementptr inbounds %struct._FMField, ptr %arrayidx80, i32 0, i32 0
  store ptr null, ptr %field_name81, align 8, !tbaa !20
  %55 = load ptr, ptr %list, align 8, !tbaa !4
  %56 = load i32, ptr %field_count, align 4, !tbaa !8
  %idxprom82 = sext i32 %56 to i64
  %arrayidx83 = getelementptr inbounds %struct._FMField, ptr %55, i64 %idxprom82
  %field_type84 = getelementptr inbounds %struct._FMField, ptr %arrayidx83, i32 0, i32 1
  store ptr null, ptr %field_type84, align 8, !tbaa !22
  %57 = load ptr, ptr %list, align 8, !tbaa !4
  %58 = load i32, ptr %field_count, align 4, !tbaa !8
  %idxprom85 = sext i32 %58 to i64
  %arrayidx86 = getelementptr inbounds %struct._FMField, ptr %57, i64 %idxprom85
  %field_size87 = getelementptr inbounds %struct._FMField, ptr %arrayidx86, i32 0, i32 2
  store i32 0, ptr %field_size87, align 8, !tbaa !23
  %59 = load ptr, ptr %list, align 8, !tbaa !4
  %60 = load i32, ptr %field_count, align 4, !tbaa !8
  %idxprom88 = sext i32 %60 to i64
  %arrayidx89 = getelementptr inbounds %struct._FMField, ptr %59, i64 %idxprom88
  %field_offset90 = getelementptr inbounds %struct._FMField, ptr %arrayidx89, i32 0, i32 3
  store i32 0, ptr %field_offset90, align 4, !tbaa !24
  %61 = load i32, ptr %field_count, align 4, !tbaa !8
  %cmp91 = icmp eq i32 %61, 0
  br i1 %cmp91, label %if.then93, label %if.end94

if.then93:                                        ; preds = %for.end
  %62 = load ptr, ptr %list, align 8, !tbaa !4
  call void @free(ptr noundef %62) #11
  store ptr null, ptr %list, align 8, !tbaa !4
  br label %if.end94

if.end94:                                         ; preds = %if.then93, %for.end
  %63 = load ptr, ptr %name, align 8, !tbaa !4
  %64 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %format_name95 = getelementptr inbounds %struct._FMformat_list, ptr %64, i32 0, i32 0
  store ptr %63, ptr %format_name95, align 8, !tbaa !10
  %65 = load ptr, ptr %list, align 8, !tbaa !4
  %66 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %field_list96 = getelementptr inbounds %struct._FMformat_list, ptr %66, i32 0, i32 1
  store ptr %65, ptr %field_list96, align 8, !tbaa !15
  %67 = load i32, ptr %struct_size, align 4, !tbaa !8
  %68 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %struct_size97 = getelementptr inbounds %struct._FMformat_list, ptr %68, i32 0, i32 2
  store i32 %67, ptr %struct_size97, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %field_count) #11
  br label %if.end98

if.end98:                                         ; preds = %if.end94, %entry
  %69 = load ptr, ptr %str.addr, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 4, ptr %struct_size) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %list) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %name) #11
  ret ptr %69
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #2

; Function Attrs: nounwind
declare ptr @strcpy(ptr noundef, ptr noundef) #3

declare ptr @EVregister_format_set(ptr noundef, ptr noundef) #5

declare i32 @printf(ptr noundef, ...) #5

; Function Attrs: nounwind
declare void @free(ptr noundef) #3

; Function Attrs: nounwind uwtable
define ptr @create_terminal_action_spec(ptr noundef %format_list) #0 {
entry:
  %format_list.addr = alloca ptr, align 8
  %format_count = alloca i32, align 4
  %i = alloca i32, align 4
  %str = alloca ptr, align 8
  store ptr %format_list, ptr %format_list.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %format_count) #11
  store i32 0, ptr %format_count, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %str) #11
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %format_list.addr, align 8, !tbaa !4
  %1 = load i32, ptr %format_count, align 4, !tbaa !8
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds %struct._FMformat_list, ptr %0, i64 %idxprom
  %format_name = getelementptr inbounds %struct._FMformat_list, ptr %arrayidx, i32 0, i32 0
  %2 = load ptr, ptr %format_name, align 8, !tbaa !10
  %cmp = icmp ne ptr %2, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, ptr %format_count, align 4, !tbaa !8
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %format_count, align 4, !tbaa !8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %call = call noalias ptr @malloc(i64 noundef 50) #13
  store ptr %call, ptr %str, align 8, !tbaa !4
  %4 = load ptr, ptr %str, align 8, !tbaa !4
  %5 = load i32, ptr %format_count, align 4, !tbaa !8
  %call1 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %4, ptr noundef @.str.12, i32 noundef %5) #11
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %6 = load i32, ptr %i, align 4, !tbaa !8
  %7 = load i32, ptr %format_count, align 4, !tbaa !8
  %cmp2 = icmp slt i32 %6, %7
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %str, align 8, !tbaa !4
  %9 = load ptr, ptr %format_list.addr, align 8, !tbaa !4
  %10 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom3 = sext i32 %10 to i64
  %arrayidx4 = getelementptr inbounds %struct._FMformat_list, ptr %9, i64 %idxprom3
  %call5 = call ptr @add_FMfieldlist_to_string(ptr noundef %8, ptr noundef %arrayidx4)
  store ptr %call5, ptr %str, align 8, !tbaa !4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, ptr %i, align 4, !tbaa !8
  %inc6 = add nsw i32 %11, 1
  store i32 %inc6, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load ptr, ptr %str, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %str) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %format_count) #11
  ret ptr %12
}

; Function Attrs: nounwind
declare i32 @sprintf(ptr noundef, ptr noundef, ...) #3

; Function Attrs: nounwind uwtable
define internal ptr @add_FMfieldlist_to_string(ptr noundef %str, ptr noundef %f) #0 {
entry:
  %str.addr = alloca ptr, align 8
  %f.addr = alloca ptr, align 8
  %index = alloca i32, align 4
  %field_count = alloca i32, align 4
  %list = alloca ptr, align 8
  %len = alloca i32, align 4
  %tmp_str = alloca ptr, align 8
  store ptr %str, ptr %str.addr, align 8, !tbaa !4
  store ptr %f, ptr %f.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr %field_count) #11
  store i32 0, ptr %field_count, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %list) #11
  %0 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %field_list = getelementptr inbounds %struct._FMformat_list, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %field_list, align 8, !tbaa !15
  store ptr %1, ptr %list, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #11
  %2 = load ptr, ptr %str.addr, align 8, !tbaa !4
  %call = call i64 @strlen(ptr noundef %2) #12
  %conv = trunc i64 %call to i32
  store i32 %conv, ptr %len, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp_str) #11
  %3 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %format_name = getelementptr inbounds %struct._FMformat_list, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %format_name, align 8, !tbaa !10
  %call1 = call i64 @strlen(ptr noundef %4) #12
  %add = add i64 %call1, 5
  %add2 = add i64 %add, 35
  %add3 = add i64 %add2, 20
  %5 = load i32, ptr %len, align 4, !tbaa !8
  %conv4 = sext i32 %5 to i64
  %add5 = add i64 %conv4, %add3
  %conv6 = trunc i64 %add5 to i32
  store i32 %conv6, ptr %len, align 4, !tbaa !8
  %6 = load ptr, ptr %str.addr, align 8, !tbaa !4
  %7 = load i32, ptr %len, align 4, !tbaa !8
  %conv7 = sext i32 %7 to i64
  %call8 = call ptr @realloc(ptr noundef %6, i64 noundef %conv7) #15
  store ptr %call8, ptr %str.addr, align 8, !tbaa !4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %8 = load ptr, ptr %list, align 8, !tbaa !4
  %tobool = icmp ne ptr %8, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %9 = load ptr, ptr %list, align 8, !tbaa !4
  %10 = load i32, ptr %field_count, align 4, !tbaa !8
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds %struct._FMField, ptr %9, i64 %idxprom
  %field_name = getelementptr inbounds %struct._FMField, ptr %arrayidx, i32 0, i32 0
  %11 = load ptr, ptr %field_name, align 8, !tbaa !20
  %cmp = icmp ne ptr %11, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %12 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ]
  br i1 %12, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %13 = load i32, ptr %field_count, align 4, !tbaa !8
  %inc = add nsw i32 %13, 1
  store i32 %inc, ptr %field_count, align 4, !tbaa !8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %14 = load ptr, ptr %str.addr, align 8, !tbaa !4
  %15 = load ptr, ptr %str.addr, align 8, !tbaa !4
  %call10 = call i64 @strlen(ptr noundef %15) #12
  %add.ptr = getelementptr inbounds i8, ptr %14, i64 %call10
  store ptr %add.ptr, ptr %tmp_str, align 8, !tbaa !4
  %16 = load ptr, ptr %tmp_str, align 8, !tbaa !4
  %17 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %format_name11 = getelementptr inbounds %struct._FMformat_list, ptr %17, i32 0, i32 0
  %18 = load ptr, ptr %format_name11, align 8, !tbaa !10
  %19 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %struct_size = getelementptr inbounds %struct._FMformat_list, ptr %19, i32 0, i32 2
  %20 = load i32, ptr %struct_size, align 8, !tbaa !16
  %21 = load i32, ptr %field_count, align 4, !tbaa !8
  %call12 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %16, ptr noundef @.str.30, ptr noundef %18, i32 noundef %20, i32 noundef %21) #11
  store i32 0, ptr %index, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %22 = load i32, ptr %index, align 4, !tbaa !8
  %23 = load i32, ptr %field_count, align 4, !tbaa !8
  %cmp13 = icmp slt i32 %22, %23
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load ptr, ptr %list, align 8, !tbaa !4
  %25 = load i32, ptr %index, align 4, !tbaa !8
  %idxprom15 = sext i32 %25 to i64
  %arrayidx16 = getelementptr inbounds %struct._FMField, ptr %24, i64 %idxprom15
  %field_name17 = getelementptr inbounds %struct._FMField, ptr %arrayidx16, i32 0, i32 0
  %26 = load ptr, ptr %field_name17, align 8, !tbaa !20
  %call18 = call i64 @strlen(ptr noundef %26) #12
  %27 = load ptr, ptr %list, align 8, !tbaa !4
  %28 = load i32, ptr %index, align 4, !tbaa !8
  %idxprom19 = sext i32 %28 to i64
  %arrayidx20 = getelementptr inbounds %struct._FMField, ptr %27, i64 %idxprom19
  %field_type = getelementptr inbounds %struct._FMField, ptr %arrayidx20, i32 0, i32 1
  %29 = load ptr, ptr %field_type, align 8, !tbaa !22
  %call21 = call i64 @strlen(ptr noundef %29) #12
  %add22 = add i64 %call18, %call21
  %add23 = add i64 %add22, 50
  %30 = load i32, ptr %len, align 4, !tbaa !8
  %conv24 = sext i32 %30 to i64
  %add25 = add i64 %conv24, %add23
  %conv26 = trunc i64 %add25 to i32
  store i32 %conv26, ptr %len, align 4, !tbaa !8
  %31 = load ptr, ptr %str.addr, align 8, !tbaa !4
  %32 = load i32, ptr %len, align 4, !tbaa !8
  %conv27 = sext i32 %32 to i64
  %call28 = call ptr @realloc(ptr noundef %31, i64 noundef %conv27) #15
  store ptr %call28, ptr %str.addr, align 8, !tbaa !4
  %33 = load ptr, ptr %str.addr, align 8, !tbaa !4
  %34 = load ptr, ptr %str.addr, align 8, !tbaa !4
  %call29 = call i64 @strlen(ptr noundef %34) #12
  %add.ptr30 = getelementptr inbounds i8, ptr %33, i64 %call29
  store ptr %add.ptr30, ptr %tmp_str, align 8, !tbaa !4
  %35 = load ptr, ptr %tmp_str, align 8, !tbaa !4
  %36 = load ptr, ptr %list, align 8, !tbaa !4
  %37 = load i32, ptr %index, align 4, !tbaa !8
  %idxprom31 = sext i32 %37 to i64
  %arrayidx32 = getelementptr inbounds %struct._FMField, ptr %36, i64 %idxprom31
  %field_name33 = getelementptr inbounds %struct._FMField, ptr %arrayidx32, i32 0, i32 0
  %38 = load ptr, ptr %field_name33, align 8, !tbaa !20
  %39 = load ptr, ptr %list, align 8, !tbaa !4
  %40 = load i32, ptr %index, align 4, !tbaa !8
  %idxprom34 = sext i32 %40 to i64
  %arrayidx35 = getelementptr inbounds %struct._FMField, ptr %39, i64 %idxprom34
  %field_type36 = getelementptr inbounds %struct._FMField, ptr %arrayidx35, i32 0, i32 1
  %41 = load ptr, ptr %field_type36, align 8, !tbaa !22
  %42 = load ptr, ptr %list, align 8, !tbaa !4
  %43 = load i32, ptr %index, align 4, !tbaa !8
  %idxprom37 = sext i32 %43 to i64
  %arrayidx38 = getelementptr inbounds %struct._FMField, ptr %42, i64 %idxprom37
  %field_size = getelementptr inbounds %struct._FMField, ptr %arrayidx38, i32 0, i32 2
  %44 = load i32, ptr %field_size, align 8, !tbaa !23
  %45 = load ptr, ptr %list, align 8, !tbaa !4
  %46 = load i32, ptr %index, align 4, !tbaa !8
  %idxprom39 = sext i32 %46 to i64
  %arrayidx40 = getelementptr inbounds %struct._FMField, ptr %45, i64 %idxprom39
  %field_offset = getelementptr inbounds %struct._FMField, ptr %arrayidx40, i32 0, i32 3
  %47 = load i32, ptr %field_offset, align 4, !tbaa !24
  %call41 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %35, ptr noundef @.str.31, ptr noundef %38, ptr noundef %41, i32 noundef %44, i32 noundef %47) #11
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %48 = load i32, ptr %index, align 4, !tbaa !8
  %inc42 = add nsw i32 %48, 1
  store i32 %inc42, ptr %index, align 4, !tbaa !8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %49 = load ptr, ptr %str.addr, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp_str) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %list) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %field_count) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #11
  ret ptr %49
}

; Function Attrs: nounwind uwtable
define ptr @INT_create_bridge_action_spec(i32 noundef %stone_id, ptr noundef %contact) #0 {
entry:
  %stone_id.addr = alloca i32, align 4
  %contact.addr = alloca ptr, align 8
  %size = alloca i32, align 4
  %output = alloca ptr, align 8
  store i32 %stone_id, ptr %stone_id.addr, align 4, !tbaa !8
  store ptr %contact, ptr %contact.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %size) #11
  %0 = load ptr, ptr %contact.addr, align 8, !tbaa !4
  %call = call i64 @strlen(ptr noundef %0) #12
  %conv = trunc i64 %call to i32
  store i32 %conv, ptr %size, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %output) #11
  %1 = load i32, ptr %size, align 4, !tbaa !8
  %conv1 = sext i32 %1 to i64
  %add = add i64 %conv1, 33
  %conv2 = trunc i64 %add to i32
  store i32 %conv2, ptr %size, align 4, !tbaa !8
  %2 = load i32, ptr %size, align 4, !tbaa !8
  %conv3 = sext i32 %2 to i64
  %call4 = call noalias ptr @malloc(i64 noundef %conv3) #13
  store ptr %call4, ptr %output, align 8, !tbaa !4
  %3 = load ptr, ptr %output, align 8, !tbaa !4
  %4 = load i32, ptr %stone_id.addr, align 4, !tbaa !8
  %5 = load ptr, ptr %contact.addr, align 8, !tbaa !4
  %call5 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %3, ptr noundef @.str.13, i32 noundef %4, ptr noundef %5) #11
  %6 = load ptr, ptr %output, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %output) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %size) #11
  ret ptr %6
}

; Function Attrs: nounwind uwtable
define void @parse_bridge_action_spec(ptr noundef %action_spec, ptr noundef %target, ptr noundef %contact) #0 {
entry:
  %action_spec.addr = alloca ptr, align 8
  %target.addr = alloca ptr, align 8
  %contact.addr = alloca ptr, align 8
  store ptr %action_spec, ptr %action_spec.addr, align 8, !tbaa !4
  store ptr %target, ptr %target.addr, align 8, !tbaa !4
  store ptr %contact, ptr %contact.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %action_spec.addr, align 8, !tbaa !4
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 14
  store ptr %add.ptr, ptr %action_spec.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %action_spec.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %target.addr, align 8, !tbaa !4
  %call = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %1, ptr noundef @.str.14, ptr noundef %2) #11
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load ptr, ptr %action_spec.addr, align 8, !tbaa !4
  %4 = load i8, ptr %3, align 1, !tbaa !14
  %conv = sext i8 %4 to i32
  %cmp = icmp ne i32 %conv, 32
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load ptr, ptr %action_spec.addr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, ptr %5, i32 1
  store ptr %incdec.ptr, ptr %action_spec.addr, align 8, !tbaa !4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %6 = load ptr, ptr %action_spec.addr, align 8, !tbaa !4
  %incdec.ptr2 = getelementptr inbounds i8, ptr %6, i32 1
  store ptr %incdec.ptr2, ptr %action_spec.addr, align 8, !tbaa !4
  %7 = load ptr, ptr %action_spec.addr, align 8, !tbaa !4
  %8 = load ptr, ptr %contact.addr, align 8, !tbaa !4
  store ptr %7, ptr %8, align 8, !tbaa !4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @action_type(ptr noundef %action_spec) #0 {
entry:
  %retval = alloca i32, align 4
  %action_spec.addr = alloca ptr, align 8
  store ptr %action_spec, ptr %action_spec.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %action_spec.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 9, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %action_spec.addr, align 8, !tbaa !4
  %call = call i32 @strncmp(ptr noundef %1, ptr noundef @.str.15, i64 noundef 13) #12
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 1, ptr %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %2 = load ptr, ptr %action_spec.addr, align 8, !tbaa !4
  %call4 = call i32 @strncmp(ptr noundef %2, ptr noundef @.str.2, i64 noundef 13) #12
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end3
  store i32 5, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end3
  %3 = load ptr, ptr %action_spec.addr, align 8, !tbaa !4
  %call8 = call i32 @strncmp(ptr noundef %3, ptr noundef @.str.3, i64 noundef 13) #12
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end7
  store i32 5, ptr %retval, align 4
  br label %return

if.end11:                                         ; preds = %if.end7
  %4 = load ptr, ptr %action_spec.addr, align 8, !tbaa !4
  %call12 = call i32 @strncmp(ptr noundef %4, ptr noundef @.str.4, i64 noundef 16) #12
  %cmp13 = icmp eq i32 %call12, 0
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end11
  store i32 5, ptr %retval, align 4
  br label %return

if.end15:                                         ; preds = %if.end11
  %5 = load ptr, ptr %action_spec.addr, align 8, !tbaa !4
  %call16 = call i32 @strncmp(ptr noundef %5, ptr noundef @.str.8, i64 noundef 17) #12
  %cmp17 = icmp eq i32 %call16, 0
  br i1 %cmp17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end15
  store i32 6, ptr %retval, align 4
  br label %return

if.end19:                                         ; preds = %if.end15
  %6 = load ptr, ptr %action_spec.addr, align 8, !tbaa !4
  %call20 = call i32 @strncmp(ptr noundef %6, ptr noundef @.str.16, i64 noundef 5) #12
  %cmp21 = icmp eq i32 %call20, 0
  br i1 %cmp21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end19
  store i32 3, ptr %retval, align 4
  br label %return

if.end23:                                         ; preds = %if.end19
  %7 = load ptr, ptr %action_spec.addr, align 8, !tbaa !4
  %call24 = call i32 @strncmp(ptr noundef %7, ptr noundef @.str.17, i64 noundef 7) #12
  %cmp25 = icmp eq i32 %call24, 0
  br i1 %cmp25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end23
  store i32 12, ptr %retval, align 4
  br label %return

if.end27:                                         ; preds = %if.end23
  %8 = load ptr, ptr %action_spec.addr, align 8, !tbaa !4
  %call28 = call i32 @strncmp(ptr noundef %8, ptr noundef @.str.18, i64 noundef 7) #12
  %cmp29 = icmp eq i32 %call28, 0
  br i1 %cmp29, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.end27
  store i32 9, ptr %retval, align 4
  br label %return

if.end31:                                         ; preds = %if.end27
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end31, %if.then30, %if.then26, %if.then22, %if.then18, %if.then14, %if.then10, %if.then6, %if.then2, %if.then
  %9 = load i32, ptr %retval, align 4
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define ptr @INT_create_filter_action_spec(ptr noundef %format_list, ptr noundef %function) #0 {
entry:
  %format_list.addr = alloca ptr, align 8
  %function.addr = alloca ptr, align 8
  %format_count = alloca i32, align 4
  %i = alloca i32, align 4
  %str = alloca ptr, align 8
  store ptr %format_list, ptr %format_list.addr, align 8, !tbaa !4
  store ptr %function, ptr %function.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %format_count) #11
  store i32 0, ptr %format_count, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %str) #11
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %format_list.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %1 = load ptr, ptr %format_list.addr, align 8, !tbaa !4
  %2 = load i32, ptr %format_count, align 4, !tbaa !8
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds %struct._FMformat_list, ptr %1, i64 %idxprom
  %format_name = getelementptr inbounds %struct._FMformat_list, ptr %arrayidx, i32 0, i32 0
  %3 = load ptr, ptr %format_name, align 8, !tbaa !10
  %cmp = icmp ne ptr %3, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %4 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ]
  br i1 %4, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %5 = load i32, ptr %format_count, align 4, !tbaa !8
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %format_count, align 4, !tbaa !8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %call = call noalias ptr @malloc(i64 noundef 50) #13
  store ptr %call, ptr %str, align 8, !tbaa !4
  %6 = load ptr, ptr %str, align 8, !tbaa !4
  %7 = load i32, ptr %format_count, align 4, !tbaa !8
  %call1 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %6, ptr noundef @.str.19, i32 noundef %7) #11
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %8 = load i32, ptr %i, align 4, !tbaa !8
  %9 = load i32, ptr %format_count, align 4, !tbaa !8
  %cmp2 = icmp slt i32 %8, %9
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %str, align 8, !tbaa !4
  %11 = load ptr, ptr %format_list.addr, align 8, !tbaa !4
  %12 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom3 = sext i32 %12 to i64
  %arrayidx4 = getelementptr inbounds %struct._FMformat_list, ptr %11, i64 %idxprom3
  %call5 = call ptr @add_FMfieldlist_to_string(ptr noundef %10, ptr noundef %arrayidx4)
  store ptr %call5, ptr %str, align 8, !tbaa !4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, ptr %i, align 4, !tbaa !8
  %inc6 = add nsw i32 %13, 1
  store i32 %inc6, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load ptr, ptr %str, align 8, !tbaa !4
  %15 = load ptr, ptr %str, align 8, !tbaa !4
  %call7 = call i64 @strlen(ptr noundef %15) #12
  %16 = load ptr, ptr %function.addr, align 8, !tbaa !4
  %call8 = call i64 @strlen(ptr noundef %16) #12
  %add = add i64 %call7, %call8
  %add9 = add i64 %add, 1
  %call10 = call ptr @realloc(ptr noundef %14, i64 noundef %add9) #15
  store ptr %call10, ptr %str, align 8, !tbaa !4
  %17 = load ptr, ptr %str, align 8, !tbaa !4
  %18 = load ptr, ptr %str, align 8, !tbaa !4
  %call11 = call i64 @strlen(ptr noundef %18) #12
  %arrayidx12 = getelementptr inbounds i8, ptr %17, i64 %call11
  %19 = load ptr, ptr %function.addr, align 8, !tbaa !4
  %call13 = call ptr @strcpy(ptr noundef %arrayidx12, ptr noundef %19) #11
  %20 = load ptr, ptr %str, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %str) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %format_count) #11
  ret ptr %20
}

; Function Attrs: nounwind allocsize(1)
declare ptr @realloc(ptr noundef, i64 noundef) #6

; Function Attrs: nounwind uwtable
define ptr @INT_create_router_action_spec(ptr noundef %format_list, ptr noundef %function) #0 {
entry:
  %format_list.addr = alloca ptr, align 8
  %function.addr = alloca ptr, align 8
  %format_count = alloca i32, align 4
  %i = alloca i32, align 4
  %str = alloca ptr, align 8
  store ptr %format_list, ptr %format_list.addr, align 8, !tbaa !4
  store ptr %function, ptr %function.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %format_count) #11
  store i32 0, ptr %format_count, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %str) #11
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %format_list.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %1 = load ptr, ptr %format_list.addr, align 8, !tbaa !4
  %2 = load i32, ptr %format_count, align 4, !tbaa !8
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds %struct._FMformat_list, ptr %1, i64 %idxprom
  %format_name = getelementptr inbounds %struct._FMformat_list, ptr %arrayidx, i32 0, i32 0
  %3 = load ptr, ptr %format_name, align 8, !tbaa !10
  %cmp = icmp ne ptr %3, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %4 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ]
  br i1 %4, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %5 = load i32, ptr %format_count, align 4, !tbaa !8
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %format_count, align 4, !tbaa !8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %call = call noalias ptr @malloc(i64 noundef 50) #13
  store ptr %call, ptr %str, align 8, !tbaa !4
  %6 = load ptr, ptr %str, align 8, !tbaa !4
  %7 = load i32, ptr %format_count, align 4, !tbaa !8
  %call1 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %6, ptr noundef @.str.20, i32 noundef %7) #11
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %8 = load i32, ptr %i, align 4, !tbaa !8
  %9 = load i32, ptr %format_count, align 4, !tbaa !8
  %cmp2 = icmp slt i32 %8, %9
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %str, align 8, !tbaa !4
  %11 = load ptr, ptr %format_list.addr, align 8, !tbaa !4
  %12 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom3 = sext i32 %12 to i64
  %arrayidx4 = getelementptr inbounds %struct._FMformat_list, ptr %11, i64 %idxprom3
  %call5 = call ptr @add_FMfieldlist_to_string(ptr noundef %10, ptr noundef %arrayidx4)
  store ptr %call5, ptr %str, align 8, !tbaa !4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, ptr %i, align 4, !tbaa !8
  %inc6 = add nsw i32 %13, 1
  store i32 %inc6, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load ptr, ptr %str, align 8, !tbaa !4
  %15 = load ptr, ptr %str, align 8, !tbaa !4
  %call7 = call i64 @strlen(ptr noundef %15) #12
  %16 = load ptr, ptr %function.addr, align 8, !tbaa !4
  %call8 = call i64 @strlen(ptr noundef %16) #12
  %add = add i64 %call7, %call8
  %add9 = add i64 %add, 1
  %call10 = call ptr @realloc(ptr noundef %14, i64 noundef %add9) #15
  store ptr %call10, ptr %str, align 8, !tbaa !4
  %17 = load ptr, ptr %str, align 8, !tbaa !4
  %18 = load ptr, ptr %str, align 8, !tbaa !4
  %call11 = call i64 @strlen(ptr noundef %18) #12
  %arrayidx12 = getelementptr inbounds i8, ptr %17, i64 %call11
  %19 = load ptr, ptr %function.addr, align 8, !tbaa !4
  %call13 = call ptr @strcpy(ptr noundef %arrayidx12, ptr noundef %19) #11
  %20 = load ptr, ptr %str, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %str) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %format_count) #11
  ret ptr %20
}

; Function Attrs: nounwind uwtable
define ptr @INT_create_transform_action_spec(ptr noundef %format_list, ptr noundef %out_format_list, ptr noundef %function) #0 {
entry:
  %format_list.addr = alloca ptr, align 8
  %out_format_list.addr = alloca ptr, align 8
  %function.addr = alloca ptr, align 8
  %format_count = alloca i32, align 4
  %i = alloca i32, align 4
  %str = alloca ptr, align 8
  store ptr %format_list, ptr %format_list.addr, align 8, !tbaa !4
  store ptr %out_format_list, ptr %out_format_list.addr, align 8, !tbaa !4
  store ptr %function, ptr %function.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %format_count) #11
  store i32 0, ptr %format_count, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %str) #11
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %format_list.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %1 = load ptr, ptr %format_list.addr, align 8, !tbaa !4
  %2 = load i32, ptr %format_count, align 4, !tbaa !8
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds %struct._FMformat_list, ptr %1, i64 %idxprom
  %format_name = getelementptr inbounds %struct._FMformat_list, ptr %arrayidx, i32 0, i32 0
  %3 = load ptr, ptr %format_name, align 8, !tbaa !10
  %cmp = icmp ne ptr %3, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %4 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ]
  br i1 %4, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %5 = load i32, ptr %format_count, align 4, !tbaa !8
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %format_count, align 4, !tbaa !8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %call = call noalias ptr @malloc(i64 noundef 50) #13
  store ptr %call, ptr %str, align 8, !tbaa !4
  %6 = load ptr, ptr %str, align 8, !tbaa !4
  %7 = load i32, ptr %format_count, align 4, !tbaa !8
  %call1 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %6, ptr noundef @.str.21, i32 noundef %7) #11
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %8 = load i32, ptr %i, align 4, !tbaa !8
  %9 = load i32, ptr %format_count, align 4, !tbaa !8
  %cmp2 = icmp slt i32 %8, %9
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %str, align 8, !tbaa !4
  %11 = load ptr, ptr %format_list.addr, align 8, !tbaa !4
  %12 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom3 = sext i32 %12 to i64
  %arrayidx4 = getelementptr inbounds %struct._FMformat_list, ptr %11, i64 %idxprom3
  %call5 = call ptr @add_FMfieldlist_to_string(ptr noundef %10, ptr noundef %arrayidx4)
  store ptr %call5, ptr %str, align 8, !tbaa !4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, ptr %i, align 4, !tbaa !8
  %inc6 = add nsw i32 %13, 1
  store i32 %inc6, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %format_count, align 4, !tbaa !8
  br label %while.cond7

while.cond7:                                      ; preds = %while.body12, %for.end
  %14 = load ptr, ptr %out_format_list.addr, align 8, !tbaa !4
  %15 = load i32, ptr %format_count, align 4, !tbaa !8
  %idxprom8 = sext i32 %15 to i64
  %arrayidx9 = getelementptr inbounds %struct._FMformat_list, ptr %14, i64 %idxprom8
  %format_name10 = getelementptr inbounds %struct._FMformat_list, ptr %arrayidx9, i32 0, i32 0
  %16 = load ptr, ptr %format_name10, align 8, !tbaa !10
  %cmp11 = icmp ne ptr %16, null
  br i1 %cmp11, label %while.body12, label %while.end14

while.body12:                                     ; preds = %while.cond7
  %17 = load i32, ptr %format_count, align 4, !tbaa !8
  %inc13 = add nsw i32 %17, 1
  store i32 %inc13, ptr %format_count, align 4, !tbaa !8
  br label %while.cond7

while.end14:                                      ; preds = %while.cond7
  %18 = load ptr, ptr %str, align 8, !tbaa !4
  %19 = load ptr, ptr %str, align 8, !tbaa !4
  %call15 = call i64 @strlen(ptr noundef %19) #12
  %add = add i64 %call15, 30
  %call16 = call ptr @realloc(ptr noundef %18, i64 noundef %add) #15
  store ptr %call16, ptr %str, align 8, !tbaa !4
  %20 = load ptr, ptr %str, align 8, !tbaa !4
  %21 = load ptr, ptr %str, align 8, !tbaa !4
  %call17 = call i64 @strlen(ptr noundef %21) #12
  %add.ptr = getelementptr inbounds i8, ptr %20, i64 %call17
  %22 = load i32, ptr %format_count, align 4, !tbaa !8
  %call18 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr, ptr noundef @.str.6, i32 noundef %22) #11
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc25, %while.end14
  %23 = load i32, ptr %i, align 4, !tbaa !8
  %24 = load i32, ptr %format_count, align 4, !tbaa !8
  %cmp20 = icmp slt i32 %23, %24
  br i1 %cmp20, label %for.body21, label %for.end27

for.body21:                                       ; preds = %for.cond19
  %25 = load ptr, ptr %str, align 8, !tbaa !4
  %26 = load ptr, ptr %out_format_list.addr, align 8, !tbaa !4
  %27 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom22 = sext i32 %27 to i64
  %arrayidx23 = getelementptr inbounds %struct._FMformat_list, ptr %26, i64 %idxprom22
  %call24 = call ptr @add_FMfieldlist_to_string(ptr noundef %25, ptr noundef %arrayidx23)
  store ptr %call24, ptr %str, align 8, !tbaa !4
  br label %for.inc25

for.inc25:                                        ; preds = %for.body21
  %28 = load i32, ptr %i, align 4, !tbaa !8
  %inc26 = add nsw i32 %28, 1
  store i32 %inc26, ptr %i, align 4, !tbaa !8
  br label %for.cond19

for.end27:                                        ; preds = %for.cond19
  %29 = load ptr, ptr %str, align 8, !tbaa !4
  %30 = load ptr, ptr %str, align 8, !tbaa !4
  %call28 = call i64 @strlen(ptr noundef %30) #12
  %31 = load ptr, ptr %function.addr, align 8, !tbaa !4
  %call29 = call i64 @strlen(ptr noundef %31) #12
  %add30 = add i64 %call28, %call29
  %add31 = add i64 %add30, 1
  %call32 = call ptr @realloc(ptr noundef %29, i64 noundef %add31) #15
  store ptr %call32, ptr %str, align 8, !tbaa !4
  %32 = load ptr, ptr %str, align 8, !tbaa !4
  %33 = load ptr, ptr %str, align 8, !tbaa !4
  %call33 = call i64 @strlen(ptr noundef %33) #12
  %arrayidx34 = getelementptr inbounds i8, ptr %32, i64 %call33
  %34 = load ptr, ptr %function.addr, align 8, !tbaa !4
  %call35 = call ptr @strcpy(ptr noundef %arrayidx34, ptr noundef %34) #11
  %35 = load ptr, ptr %str, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %str) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %format_count) #11
  ret ptr %35
}

; Function Attrs: nounwind uwtable
define ptr @INT_create_multityped_action_spec(ptr noundef %input_format_lists, ptr noundef %function) #0 {
entry:
  %input_format_lists.addr = alloca ptr, align 8
  %function.addr = alloca ptr, align 8
  %list_count = alloca i32, align 4
  %l = alloca i32, align 4
  %i = alloca i32, align 4
  %str = alloca ptr, align 8
  %format_count = alloca i32, align 4
  %format_list = alloca ptr, align 8
  store ptr %input_format_lists, ptr %input_format_lists.addr, align 8, !tbaa !4
  store ptr %function, ptr %function.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %list_count) #11
  store i32 0, ptr %list_count, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %l) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %str) #11
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %input_format_lists.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %1 = load ptr, ptr %input_format_lists.addr, align 8, !tbaa !4
  %2 = load i32, ptr %list_count, align 4, !tbaa !8
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 %idxprom
  %3 = load ptr, ptr %arrayidx, align 8, !tbaa !4
  %cmp = icmp ne ptr %3, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %4 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ]
  br i1 %4, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %5 = load i32, ptr %list_count, align 4, !tbaa !8
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %list_count, align 4, !tbaa !8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %call = call noalias ptr @malloc(i64 noundef 50) #13
  store ptr %call, ptr %str, align 8, !tbaa !4
  %6 = load ptr, ptr %str, align 8, !tbaa !4
  %7 = load i32, ptr %list_count, align 4, !tbaa !8
  %call1 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %6, ptr noundef @.str.22, i32 noundef %7) #11
  store i32 0, ptr %l, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc26, %while.end
  %8 = load i32, ptr %l, align 4, !tbaa !8
  %9 = load i32, ptr %list_count, align 4, !tbaa !8
  %cmp2 = icmp slt i32 %8, %9
  br i1 %cmp2, label %for.body, label %for.end28

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %format_count) #11
  store i32 0, ptr %format_count, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %format_list) #11
  %10 = load ptr, ptr %input_format_lists.addr, align 8, !tbaa !4
  %11 = load i32, ptr %l, align 4, !tbaa !8
  %idxprom3 = sext i32 %11 to i64
  %arrayidx4 = getelementptr inbounds ptr, ptr %10, i64 %idxprom3
  %12 = load ptr, ptr %arrayidx4, align 8, !tbaa !4
  store ptr %12, ptr %format_list, align 8, !tbaa !4
  br label %while.cond5

while.cond5:                                      ; preds = %while.body12, %for.body
  %13 = load ptr, ptr %format_list, align 8, !tbaa !4
  %tobool6 = icmp ne ptr %13, null
  br i1 %tobool6, label %land.rhs7, label %land.end11

land.rhs7:                                        ; preds = %while.cond5
  %14 = load ptr, ptr %format_list, align 8, !tbaa !4
  %15 = load i32, ptr %format_count, align 4, !tbaa !8
  %idxprom8 = sext i32 %15 to i64
  %arrayidx9 = getelementptr inbounds %struct._FMformat_list, ptr %14, i64 %idxprom8
  %format_name = getelementptr inbounds %struct._FMformat_list, ptr %arrayidx9, i32 0, i32 0
  %16 = load ptr, ptr %format_name, align 8, !tbaa !10
  %cmp10 = icmp ne ptr %16, null
  br label %land.end11

land.end11:                                       ; preds = %land.rhs7, %while.cond5
  %17 = phi i1 [ false, %while.cond5 ], [ %cmp10, %land.rhs7 ]
  br i1 %17, label %while.body12, label %while.end14

while.body12:                                     ; preds = %land.end11
  %18 = load i32, ptr %format_count, align 4, !tbaa !8
  %inc13 = add nsw i32 %18, 1
  store i32 %inc13, ptr %format_count, align 4, !tbaa !8
  br label %while.cond5

while.end14:                                      ; preds = %land.end11
  %19 = load ptr, ptr %str, align 8, !tbaa !4
  %20 = load ptr, ptr %str, align 8, !tbaa !4
  %call15 = call i64 @strlen(ptr noundef %20) #12
  %add = add i64 %call15, 50
  %call16 = call ptr @realloc(ptr noundef %19, i64 noundef %add) #15
  store ptr %call16, ptr %str, align 8, !tbaa !4
  %21 = load ptr, ptr %str, align 8, !tbaa !4
  %22 = load ptr, ptr %str, align 8, !tbaa !4
  %call17 = call i64 @strlen(ptr noundef %22) #12
  %add.ptr = getelementptr inbounds i8, ptr %21, i64 %call17
  %23 = load i32, ptr %format_count, align 4, !tbaa !8
  %call18 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr, ptr noundef @.str.10, i32 noundef %23) #11
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc, %while.end14
  %24 = load i32, ptr %i, align 4, !tbaa !8
  %25 = load i32, ptr %format_count, align 4, !tbaa !8
  %cmp20 = icmp slt i32 %24, %25
  br i1 %cmp20, label %for.body21, label %for.end

for.body21:                                       ; preds = %for.cond19
  %26 = load ptr, ptr %str, align 8, !tbaa !4
  %27 = load ptr, ptr %format_list, align 8, !tbaa !4
  %28 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom22 = sext i32 %28 to i64
  %arrayidx23 = getelementptr inbounds %struct._FMformat_list, ptr %27, i64 %idxprom22
  %call24 = call ptr @add_FMfieldlist_to_string(ptr noundef %26, ptr noundef %arrayidx23)
  store ptr %call24, ptr %str, align 8, !tbaa !4
  br label %for.inc

for.inc:                                          ; preds = %for.body21
  %29 = load i32, ptr %i, align 4, !tbaa !8
  %inc25 = add nsw i32 %29, 1
  store i32 %inc25, ptr %i, align 4, !tbaa !8
  br label %for.cond19

for.end:                                          ; preds = %for.cond19
  call void @llvm.lifetime.end.p0(i64 8, ptr %format_list) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %format_count) #11
  br label %for.inc26

for.inc26:                                        ; preds = %for.end
  %30 = load i32, ptr %l, align 4, !tbaa !8
  %inc27 = add nsw i32 %30, 1
  store i32 %inc27, ptr %l, align 4, !tbaa !8
  br label %for.cond

for.end28:                                        ; preds = %for.cond
  %31 = load ptr, ptr %str, align 8, !tbaa !4
  %32 = load ptr, ptr %str, align 8, !tbaa !4
  %call29 = call i64 @strlen(ptr noundef %32) #12
  %33 = load ptr, ptr %function.addr, align 8, !tbaa !4
  %call30 = call i64 @strlen(ptr noundef %33) #12
  %add31 = add i64 %call29, %call30
  %add32 = add i64 %add31, 1
  %call33 = call ptr @realloc(ptr noundef %31, i64 noundef %add32) #15
  store ptr %call33, ptr %str, align 8, !tbaa !4
  %34 = load ptr, ptr %str, align 8, !tbaa !4
  %35 = load ptr, ptr %str, align 8, !tbaa !4
  %call34 = call i64 @strlen(ptr noundef %35) #12
  %arrayidx35 = getelementptr inbounds i8, ptr %34, i64 %call34
  %36 = load ptr, ptr %function.addr, align 8, !tbaa !4
  %call36 = call ptr @strcpy(ptr noundef %arrayidx35, ptr noundef %36) #11
  %37 = load ptr, ptr %str, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %str) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %l) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %list_count) #11
  ret ptr %37
}

; Function Attrs: nounwind uwtable
define ptr @get_cm_from_ev_state(ptr noundef %vevstate) #0 {
entry:
  %vevstate.addr = alloca ptr, align 8
  %evstate = alloca ptr, align 8
  store ptr %vevstate, ptr %vevstate.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %evstate) #11
  %0 = load ptr, ptr %vevstate.addr, align 8, !tbaa !4
  store ptr %0, ptr %evstate, align 8, !tbaa !4
  %1 = load ptr, ptr %evstate, align 8, !tbaa !4
  %cm = getelementptr inbounds %struct.ev_state_data, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %cm, align 8, !tbaa !25
  call void @llvm.lifetime.end.p0(i64 8, ptr %evstate) #11
  ret ptr %2
}

; Function Attrs: nounwind uwtable
define void @free_struct_list(ptr noundef %list) #0 {
entry:
  %list.addr = alloca ptr, align 8
  %format_count = alloca i32, align 4
  %format = alloca i32, align 4
  store ptr %list, ptr %list.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %format_count) #11
  store i32 0, ptr %format_count, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %format) #11
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %1 = load i32, ptr %format_count, align 4, !tbaa !8
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds %struct._FMformat_list, ptr %0, i64 %idxprom
  %format_name = getelementptr inbounds %struct._FMformat_list, ptr %arrayidx, i32 0, i32 0
  %2 = load ptr, ptr %format_name, align 8, !tbaa !10
  %cmp = icmp ne ptr %2, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, ptr %format_count, align 4, !tbaa !8
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %format_count, align 4, !tbaa !8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %format, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %4 = load i32, ptr %format, align 4, !tbaa !8
  %5 = load i32, ptr %format_count, align 4, !tbaa !8
  %cmp1 = icmp slt i32 %4, %5
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %7 = load i32, ptr %format, align 4, !tbaa !8
  %idxprom2 = sext i32 %7 to i64
  %arrayidx3 = getelementptr inbounds %struct._FMformat_list, ptr %6, i64 %idxprom2
  %format_name4 = getelementptr inbounds %struct._FMformat_list, ptr %arrayidx3, i32 0, i32 0
  %8 = load ptr, ptr %format_name4, align 8, !tbaa !10
  call void @free(ptr noundef %8) #11
  %9 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %10 = load i32, ptr %format, align 4, !tbaa !8
  %idxprom5 = sext i32 %10 to i64
  %arrayidx6 = getelementptr inbounds %struct._FMformat_list, ptr %9, i64 %idxprom5
  %field_list = getelementptr inbounds %struct._FMformat_list, ptr %arrayidx6, i32 0, i32 1
  %11 = load ptr, ptr %field_list, align 8, !tbaa !15
  call void @free_FMfield_list(ptr noundef %11)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, ptr %format, align 4, !tbaa !8
  %inc7 = add nsw i32 %12, 1
  store i32 %inc7, ptr %format, align 4, !tbaa !8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load ptr, ptr %list.addr, align 8, !tbaa !4
  call void @free(ptr noundef %13) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %format) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %format_count) #11
  ret void
}

declare void @free_FMfield_list(ptr noundef) #5

; Function Attrs: nounwind uwtable
define void @dump_mrd(ptr noundef %mrdv) #0 {
entry:
  %mrdv.addr = alloca ptr, align 8
  %mrd = alloca ptr, align 8
  store ptr %mrdv, ptr %mrdv.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %mrd) #11
  %0 = load ptr, ptr %mrdv.addr, align 8, !tbaa !4
  store ptr %0, ptr %mrd, align 8, !tbaa !4
  %1 = load ptr, ptr %mrd, align 8, !tbaa !4
  %response_type = getelementptr inbounds %struct.response_spec, ptr %1, i32 0, i32 0
  %2 = load i32, ptr %response_type, align 8, !tbaa !12
  switch i32 %2, label %sw.epilog [
    i32 0, label %sw.bb
    i32 2, label %sw.bb1
    i32 1, label %sw.bb5
    i32 3, label %sw.bb9
  ]

sw.bb:                                            ; preds = %entry
  %3 = load ptr, ptr %mrd, align 8, !tbaa !4
  %u = getelementptr inbounds %struct.response_spec, ptr %3, i32 0, i32 1
  %function = getelementptr inbounds %struct.filter_spec, ptr %u, i32 0, i32 1
  %4 = load ptr, ptr %function, align 8, !tbaa !14
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.23, ptr noundef %4)
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %5 = load ptr, ptr %mrd, align 8, !tbaa !4
  %u2 = getelementptr inbounds %struct.response_spec, ptr %5, i32 0, i32 1
  %function3 = getelementptr inbounds %struct.filter_spec, ptr %u2, i32 0, i32 1
  %6 = load ptr, ptr %function3, align 8, !tbaa !14
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str.24, ptr noundef %6)
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %7 = load ptr, ptr %mrd, align 8, !tbaa !4
  %u6 = getelementptr inbounds %struct.response_spec, ptr %7, i32 0, i32 1
  %function7 = getelementptr inbounds %struct.transform_spec, ptr %u6, i32 0, i32 2
  %8 = load ptr, ptr %function7, align 8, !tbaa !14
  %call8 = call i32 (ptr, ...) @printf(ptr noundef @.str.25, ptr noundef %8)
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  %9 = load ptr, ptr %mrd, align 8, !tbaa !4
  %u10 = getelementptr inbounds %struct.response_spec, ptr %9, i32 0, i32 1
  %function11 = getelementptr inbounds %struct.transform_spec, ptr %u10, i32 0, i32 2
  %10 = load ptr, ptr %function11, align 8, !tbaa !14
  %call12 = call i32 (ptr, ...) @printf(ptr noundef @.str.26, ptr noundef %10)
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb9, %sw.bb5, %sw.bb1, %sw.bb
  call void @llvm.lifetime.end.p0(i64 8, ptr %mrd) #11
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @response_determination(ptr noundef %cm, ptr noundef %stone, i32 noundef %stage, ptr noundef %event) #0 {
entry:
  %retval = alloca i32, align 4
  %cm.addr = alloca ptr, align 8
  %stone.addr = alloca ptr, align 8
  %stage.addr = alloca i32, align 4
  %event.addr = alloca ptr, align 8
  %nearest_proto_action = alloca i32, align 4
  %return_value = alloca i32, align 4
  %conversion_target_format = alloca ptr, align 8
  %matching_format = alloca ptr, align 8
  %i = alloca i32, align 4
  %format_count = alloca i32, align 4
  %formatList = alloca ptr, align 8
  %format_map = alloca ptr, align 8
  %older_format = alloca ptr, align 8
  %j = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %map_entry = alloca i32, align 4
  %mrd = alloca ptr, align 8
  %action_generated = alloca i32, align 4
  %proto = alloca ptr, align 8
  %instance = alloca ptr, align 8
  %mrd164 = alloca ptr, align 8
  %instance208 = alloca ptr, align 8
  %mrd209 = alloca ptr, align 8
  %resp = alloca ptr, align 8
  %proto2 = alloca ptr, align 8
  store ptr %cm, ptr %cm.addr, align 8, !tbaa !4
  store ptr %stone, ptr %stone.addr, align 8, !tbaa !4
  store i32 %stage, ptr %stage.addr, align 4, !tbaa !14
  store ptr %event, ptr %event.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %nearest_proto_action) #11
  store i32 -1, ptr %nearest_proto_action, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %return_value) #11
  store i32 0, ptr %return_value, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %conversion_target_format) #11
  store ptr null, ptr %conversion_target_format, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %matching_format) #11
  store ptr null, ptr %matching_format, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr %format_count) #11
  store i32 0, ptr %format_count, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %formatList) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %format_map) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %older_format) #11
  store ptr null, ptr %older_format, align 8, !tbaa !4
  %0 = load ptr, ptr %stone.addr, align 8, !tbaa !4
  %proto_action_count = getelementptr inbounds %struct._stone, ptr %0, i32 0, i32 15
  %1 = load i32, ptr %proto_action_count, align 8, !tbaa !27
  %add = add nsw i32 %1, 1
  %conv = sext i32 %add to i64
  %mul = mul i64 %conv, 8
  %call = call noalias ptr @malloc(i64 noundef %mul) #13
  store ptr %call, ptr %formatList, align 8, !tbaa !4
  %2 = load ptr, ptr %stone.addr, align 8, !tbaa !4
  %proto_action_count1 = getelementptr inbounds %struct._stone, ptr %2, i32 0, i32 15
  %3 = load i32, ptr %proto_action_count1, align 8, !tbaa !27
  %add2 = add nsw i32 %3, 1
  %conv3 = sext i32 %add2 to i64
  %mul4 = mul i64 %conv3, 4
  %call5 = call noalias ptr @malloc(i64 noundef %mul4) #13
  store ptr %call5, ptr %format_map, align 8, !tbaa !4
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, ptr %i, align 4, !tbaa !8
  %5 = load ptr, ptr %stone.addr, align 8, !tbaa !4
  %proto_action_count6 = getelementptr inbounds %struct._stone, ptr %5, i32 0, i32 15
  %6 = load i32, ptr %proto_action_count6, align 8, !tbaa !27
  %cmp = icmp slt i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #11
  store i32 0, ptr %j, align 4, !tbaa !8
  %7 = load ptr, ptr %stone.addr, align 8, !tbaa !4
  %proto_actions = getelementptr inbounds %struct._stone, ptr %7, i32 0, i32 16
  %8 = load ptr, ptr %proto_actions, align 8, !tbaa !29
  %9 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds %struct._proto_action, ptr %8, i64 %idxprom
  %10 = load i32, ptr %stage.addr, align 4, !tbaa !14
  %call8 = call i32 @proto_action_in_stage(ptr noundef %arrayidx, i32 noundef %10)
  %tobool = icmp ne i32 %call8, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %while.cond

while.cond:                                       ; preds = %if.end51, %if.end
  %11 = load ptr, ptr %stone.addr, align 8, !tbaa !4
  %proto_actions9 = getelementptr inbounds %struct._stone, ptr %11, i32 0, i32 16
  %12 = load ptr, ptr %proto_actions9, align 8, !tbaa !29
  %13 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom10 = sext i32 %13 to i64
  %arrayidx11 = getelementptr inbounds %struct._proto_action, ptr %12, i64 %idxprom10
  %matching_reference_formats = getelementptr inbounds %struct._proto_action, ptr %arrayidx11, i32 0, i32 2
  %14 = load ptr, ptr %matching_reference_formats, align 8, !tbaa !30
  %tobool12 = icmp ne ptr %14, null
  br i1 %tobool12, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %15 = load ptr, ptr %stone.addr, align 8, !tbaa !4
  %proto_actions13 = getelementptr inbounds %struct._stone, ptr %15, i32 0, i32 16
  %16 = load ptr, ptr %proto_actions13, align 8, !tbaa !29
  %17 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom14 = sext i32 %17 to i64
  %arrayidx15 = getelementptr inbounds %struct._proto_action, ptr %16, i64 %idxprom14
  %matching_reference_formats16 = getelementptr inbounds %struct._proto_action, ptr %arrayidx15, i32 0, i32 2
  %18 = load ptr, ptr %matching_reference_formats16, align 8, !tbaa !30
  %19 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom17 = sext i32 %19 to i64
  %arrayidx18 = getelementptr inbounds ptr, ptr %18, i64 %idxprom17
  %20 = load ptr, ptr %arrayidx18, align 8, !tbaa !4
  %cmp19 = icmp ne ptr %20, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %21 = phi i1 [ false, %while.cond ], [ %cmp19, %land.rhs ]
  br i1 %21, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %22 = load ptr, ptr %event.addr, align 8, !tbaa !4
  %reference_format = getelementptr inbounds %struct._event_item, ptr %22, i32 0, i32 7
  %23 = load ptr, ptr %reference_format, align 8, !tbaa !33
  %call21 = call ptr @name_of_FMformat(ptr noundef %23)
  %24 = load ptr, ptr %stone.addr, align 8, !tbaa !4
  %proto_actions22 = getelementptr inbounds %struct._stone, ptr %24, i32 0, i32 16
  %25 = load ptr, ptr %proto_actions22, align 8, !tbaa !29
  %26 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom23 = sext i32 %26 to i64
  %arrayidx24 = getelementptr inbounds %struct._proto_action, ptr %25, i64 %idxprom23
  %matching_reference_formats25 = getelementptr inbounds %struct._proto_action, ptr %arrayidx24, i32 0, i32 2
  %27 = load ptr, ptr %matching_reference_formats25, align 8, !tbaa !30
  %28 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom26 = sext i32 %28 to i64
  %arrayidx27 = getelementptr inbounds ptr, ptr %27, i64 %idxprom26
  %29 = load ptr, ptr %arrayidx27, align 8, !tbaa !4
  %call28 = call ptr @name_of_FMformat(ptr noundef %29)
  %call29 = call i32 @strcmp(ptr noundef %call21, ptr noundef %call28) #12
  %cmp30 = icmp eq i32 %call29, 0
  br i1 %cmp30, label %if.then32, label %if.end51

if.then32:                                        ; preds = %while.body
  %30 = load ptr, ptr %formatList, align 8, !tbaa !4
  %31 = load i32, ptr %format_count, align 4, !tbaa !8
  %add33 = add nsw i32 %31, 2
  %conv34 = sext i32 %add33 to i64
  %mul35 = mul i64 %conv34, 8
  %call36 = call ptr @realloc(ptr noundef %30, i64 noundef %mul35) #15
  store ptr %call36, ptr %formatList, align 8, !tbaa !4
  %32 = load ptr, ptr %format_map, align 8, !tbaa !4
  %33 = load i32, ptr %format_count, align 4, !tbaa !8
  %add37 = add nsw i32 %33, 2
  %conv38 = sext i32 %add37 to i64
  %mul39 = mul i64 %conv38, 4
  %call40 = call ptr @realloc(ptr noundef %32, i64 noundef %mul39) #15
  store ptr %call40, ptr %format_map, align 8, !tbaa !4
  %34 = load ptr, ptr %stone.addr, align 8, !tbaa !4
  %proto_actions41 = getelementptr inbounds %struct._stone, ptr %34, i32 0, i32 16
  %35 = load ptr, ptr %proto_actions41, align 8, !tbaa !29
  %36 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom42 = sext i32 %36 to i64
  %arrayidx43 = getelementptr inbounds %struct._proto_action, ptr %35, i64 %idxprom42
  %matching_reference_formats44 = getelementptr inbounds %struct._proto_action, ptr %arrayidx43, i32 0, i32 2
  %37 = load ptr, ptr %matching_reference_formats44, align 8, !tbaa !30
  %38 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom45 = sext i32 %38 to i64
  %arrayidx46 = getelementptr inbounds ptr, ptr %37, i64 %idxprom45
  %39 = load ptr, ptr %arrayidx46, align 8, !tbaa !4
  %40 = load ptr, ptr %formatList, align 8, !tbaa !4
  %41 = load i32, ptr %format_count, align 4, !tbaa !8
  %idxprom47 = sext i32 %41 to i64
  %arrayidx48 = getelementptr inbounds ptr, ptr %40, i64 %idxprom47
  store ptr %39, ptr %arrayidx48, align 8, !tbaa !4
  %42 = load i32, ptr %i, align 4, !tbaa !8
  %43 = load ptr, ptr %format_map, align 8, !tbaa !4
  %44 = load i32, ptr %format_count, align 4, !tbaa !8
  %idxprom49 = sext i32 %44 to i64
  %arrayidx50 = getelementptr inbounds i32, ptr %43, i64 %idxprom49
  store i32 %42, ptr %arrayidx50, align 4, !tbaa !8
  %45 = load i32, ptr %format_count, align 4, !tbaa !8
  %inc = add nsw i32 %45, 1
  store i32 %inc, ptr %format_count, align 4, !tbaa !8
  br label %if.end51

if.end51:                                         ; preds = %if.then32, %while.body
  %46 = load i32, ptr %j, align 4, !tbaa !8
  %inc52 = add nsw i32 %46, 1
  store i32 %inc52, ptr %j, align 4, !tbaa !8
  br label %while.cond

while.end:                                        ; preds = %land.end
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #11
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %47 = load i32, ptr %i, align 4, !tbaa !8
  %inc53 = add nsw i32 %47, 1
  store i32 %inc53, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %48 = load ptr, ptr %formatList, align 8, !tbaa !4
  %49 = load i32, ptr %format_count, align 4, !tbaa !8
  %idxprom54 = sext i32 %49 to i64
  %arrayidx55 = getelementptr inbounds ptr, ptr %48, i64 %idxprom54
  store ptr null, ptr %arrayidx55, align 8, !tbaa !4
  %50 = load ptr, ptr %event.addr, align 8, !tbaa !4
  %reference_format56 = getelementptr inbounds %struct._event_item, ptr %50, i32 0, i32 7
  %51 = load ptr, ptr %reference_format56, align 8, !tbaa !33
  %cmp57 = icmp eq ptr %51, null
  br i1 %cmp57, label %if.then59, label %if.else

if.then59:                                        ; preds = %for.end
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond60

for.cond60:                                       ; preds = %for.inc87, %if.then59
  %52 = load i32, ptr %i, align 4, !tbaa !8
  %53 = load ptr, ptr %stone.addr, align 8, !tbaa !4
  %proto_action_count61 = getelementptr inbounds %struct._stone, ptr %53, i32 0, i32 15
  %54 = load i32, ptr %proto_action_count61, align 8, !tbaa !27
  %cmp62 = icmp slt i32 %52, %54
  br i1 %cmp62, label %for.body64, label %for.end89

for.body64:                                       ; preds = %for.cond60
  %55 = load ptr, ptr %stone.addr, align 8, !tbaa !4
  %proto_actions65 = getelementptr inbounds %struct._stone, ptr %55, i32 0, i32 16
  %56 = load ptr, ptr %proto_actions65, align 8, !tbaa !29
  %57 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom66 = sext i32 %57 to i64
  %arrayidx67 = getelementptr inbounds %struct._proto_action, ptr %56, i64 %idxprom66
  %58 = load i32, ptr %stage.addr, align 4, !tbaa !14
  %call68 = call i32 @proto_action_in_stage(ptr noundef %arrayidx67, i32 noundef %58)
  %tobool69 = icmp ne i32 %call68, 0
  br i1 %tobool69, label %if.end71, label %if.then70

if.then70:                                        ; preds = %for.body64
  br label %for.inc87

if.end71:                                         ; preds = %for.body64
  %59 = load ptr, ptr %stone.addr, align 8, !tbaa !4
  %proto_actions72 = getelementptr inbounds %struct._stone, ptr %59, i32 0, i32 16
  %60 = load ptr, ptr %proto_actions72, align 8, !tbaa !29
  %61 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom73 = sext i32 %61 to i64
  %arrayidx74 = getelementptr inbounds %struct._proto_action, ptr %60, i64 %idxprom73
  %matching_reference_formats75 = getelementptr inbounds %struct._proto_action, ptr %arrayidx74, i32 0, i32 2
  %62 = load ptr, ptr %matching_reference_formats75, align 8, !tbaa !30
  %cmp76 = icmp eq ptr %62, null
  br i1 %cmp76, label %if.then85, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end71
  %63 = load ptr, ptr %stone.addr, align 8, !tbaa !4
  %proto_actions78 = getelementptr inbounds %struct._stone, ptr %63, i32 0, i32 16
  %64 = load ptr, ptr %proto_actions78, align 8, !tbaa !29
  %65 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom79 = sext i32 %65 to i64
  %arrayidx80 = getelementptr inbounds %struct._proto_action, ptr %64, i64 %idxprom79
  %matching_reference_formats81 = getelementptr inbounds %struct._proto_action, ptr %arrayidx80, i32 0, i32 2
  %66 = load ptr, ptr %matching_reference_formats81, align 8, !tbaa !30
  %arrayidx82 = getelementptr inbounds ptr, ptr %66, i64 0
  %67 = load ptr, ptr %arrayidx82, align 8, !tbaa !4
  %cmp83 = icmp eq ptr %67, null
  br i1 %cmp83, label %if.then85, label %if.end86

if.then85:                                        ; preds = %lor.lhs.false, %if.end71
  %68 = load i32, ptr %i, align 4, !tbaa !8
  store i32 %68, ptr %nearest_proto_action, align 4, !tbaa !8
  br label %if.end86

if.end86:                                         ; preds = %if.then85, %lor.lhs.false
  br label %for.inc87

for.inc87:                                        ; preds = %if.end86, %if.then70
  %69 = load i32, ptr %i, align 4, !tbaa !8
  %inc88 = add nsw i32 %69, 1
  store i32 %inc88, ptr %i, align 4, !tbaa !8
  br label %for.cond60

for.end89:                                        ; preds = %for.cond60
  br label %if.end100

if.else:                                          ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %map_entry) #11
  %70 = load ptr, ptr %event.addr, align 8, !tbaa !4
  %reference_format90 = getelementptr inbounds %struct._event_item, ptr %70, i32 0, i32 7
  %71 = load ptr, ptr %reference_format90, align 8, !tbaa !33
  %72 = load ptr, ptr %formatList, align 8, !tbaa !4
  %73 = load i32, ptr %format_count, align 4, !tbaa !8
  %call91 = call i32 @FMformat_compat_cmp2(ptr noundef %71, ptr noundef %72, i32 noundef %73, ptr noundef %older_format)
  store i32 %call91, ptr %map_entry, align 4, !tbaa !8
  %74 = load i32, ptr %map_entry, align 4, !tbaa !8
  %cmp92 = icmp ne i32 %74, -1
  br i1 %cmp92, label %if.then94, label %if.end99

if.then94:                                        ; preds = %if.else
  %75 = load ptr, ptr %format_map, align 8, !tbaa !4
  %76 = load i32, ptr %map_entry, align 4, !tbaa !8
  %idxprom95 = sext i32 %76 to i64
  %arrayidx96 = getelementptr inbounds i32, ptr %75, i64 %idxprom95
  %77 = load i32, ptr %arrayidx96, align 4, !tbaa !8
  store i32 %77, ptr %nearest_proto_action, align 4, !tbaa !8
  %78 = load ptr, ptr %formatList, align 8, !tbaa !4
  %79 = load i32, ptr %map_entry, align 4, !tbaa !8
  %idxprom97 = sext i32 %79 to i64
  %arrayidx98 = getelementptr inbounds ptr, ptr %78, i64 %idxprom97
  %80 = load ptr, ptr %arrayidx98, align 8, !tbaa !4
  store ptr %80, ptr %matching_format, align 8, !tbaa !4
  br label %if.end99

if.end99:                                         ; preds = %if.then94, %if.else
  call void @llvm.lifetime.end.p0(i64 4, ptr %map_entry) #11
  br label %if.end100

if.end100:                                        ; preds = %if.end99, %for.end89
  %81 = load i32, ptr %nearest_proto_action, align 4, !tbaa !8
  %cmp101 = icmp eq i32 %81, -1
  br i1 %cmp101, label %if.then103, label %if.end153

if.then103:                                       ; preds = %if.end100
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond104

for.cond104:                                      ; preds = %for.inc150, %if.then103
  %82 = load i32, ptr %i, align 4, !tbaa !8
  %83 = load ptr, ptr %stone.addr, align 8, !tbaa !4
  %proto_action_count105 = getelementptr inbounds %struct._stone, ptr %83, i32 0, i32 15
  %84 = load i32, ptr %proto_action_count105, align 8, !tbaa !27
  %cmp106 = icmp slt i32 %82, %84
  br i1 %cmp106, label %for.body108, label %for.end152

for.body108:                                      ; preds = %for.cond104
  %85 = load ptr, ptr %stone.addr, align 8, !tbaa !4
  %proto_actions109 = getelementptr inbounds %struct._stone, ptr %85, i32 0, i32 16
  %86 = load ptr, ptr %proto_actions109, align 8, !tbaa !29
  %87 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom110 = sext i32 %87 to i64
  %arrayidx111 = getelementptr inbounds %struct._proto_action, ptr %86, i64 %idxprom110
  %88 = load i32, ptr %stage.addr, align 4, !tbaa !14
  %call112 = call i32 @proto_action_in_stage(ptr noundef %arrayidx111, i32 noundef %88)
  %tobool113 = icmp ne i32 %call112, 0
  br i1 %tobool113, label %if.end115, label %if.then114

if.then114:                                       ; preds = %for.body108
  br label %for.inc150

if.end115:                                        ; preds = %for.body108
  %89 = load ptr, ptr %stone.addr, align 8, !tbaa !4
  %proto_actions116 = getelementptr inbounds %struct._stone, ptr %89, i32 0, i32 16
  %90 = load ptr, ptr %proto_actions116, align 8, !tbaa !29
  %91 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom117 = sext i32 %91 to i64
  %arrayidx118 = getelementptr inbounds %struct._proto_action, ptr %90, i64 %idxprom117
  %matching_reference_formats119 = getelementptr inbounds %struct._proto_action, ptr %arrayidx118, i32 0, i32 2
  %92 = load ptr, ptr %matching_reference_formats119, align 8, !tbaa !30
  %cmp120 = icmp eq ptr %92, null
  br i1 %cmp120, label %land.lhs.true, label %lor.lhs.false122

lor.lhs.false122:                                 ; preds = %if.end115
  %93 = load ptr, ptr %stone.addr, align 8, !tbaa !4
  %proto_actions123 = getelementptr inbounds %struct._stone, ptr %93, i32 0, i32 16
  %94 = load ptr, ptr %proto_actions123, align 8, !tbaa !29
  %95 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom124 = sext i32 %95 to i64
  %arrayidx125 = getelementptr inbounds %struct._proto_action, ptr %94, i64 %idxprom124
  %matching_reference_formats126 = getelementptr inbounds %struct._proto_action, ptr %arrayidx125, i32 0, i32 2
  %96 = load ptr, ptr %matching_reference_formats126, align 8, !tbaa !30
  %arrayidx127 = getelementptr inbounds ptr, ptr %96, i64 0
  %97 = load ptr, ptr %arrayidx127, align 8, !tbaa !4
  %cmp128 = icmp eq ptr %97, null
  br i1 %cmp128, label %land.lhs.true, label %if.end136

land.lhs.true:                                    ; preds = %lor.lhs.false122, %if.end115
  %98 = load ptr, ptr %stone.addr, align 8, !tbaa !4
  %proto_actions130 = getelementptr inbounds %struct._stone, ptr %98, i32 0, i32 16
  %99 = load ptr, ptr %proto_actions130, align 8, !tbaa !29
  %100 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom131 = sext i32 %100 to i64
  %arrayidx132 = getelementptr inbounds %struct._proto_action, ptr %99, i64 %idxprom131
  %data_state = getelementptr inbounds %struct._proto_action, ptr %arrayidx132, i32 0, i32 4
  %101 = load i32, ptr %data_state, align 8, !tbaa !36
  %cmp133 = icmp ne i32 %101, 1
  br i1 %cmp133, label %if.then135, label %if.end136

if.then135:                                       ; preds = %land.lhs.true
  %102 = load i32, ptr %i, align 4, !tbaa !8
  store i32 %102, ptr %nearest_proto_action, align 4, !tbaa !8
  br label %if.end136

if.end136:                                        ; preds = %if.then135, %land.lhs.true, %lor.lhs.false122
  %103 = load ptr, ptr %stone.addr, align 8, !tbaa !4
  %proto_actions137 = getelementptr inbounds %struct._stone, ptr %103, i32 0, i32 16
  %104 = load ptr, ptr %proto_actions137, align 8, !tbaa !29
  %105 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom138 = sext i32 %105 to i64
  %arrayidx139 = getelementptr inbounds %struct._proto_action, ptr %104, i64 %idxprom138
  %action_type = getelementptr inbounds %struct._proto_action, ptr %arrayidx139, i32 0, i32 0
  %106 = load i32, ptr %action_type, align 8, !tbaa !37
  %cmp140 = icmp eq i32 %106, 6
  br i1 %cmp140, label %if.then142, label %if.end149

if.then142:                                       ; preds = %if.end136
  call void @llvm.lifetime.start.p0(i64 8, ptr %mrd) #11
  %107 = load ptr, ptr %stone.addr, align 8, !tbaa !4
  %proto_actions143 = getelementptr inbounds %struct._stone, ptr %107, i32 0, i32 16
  %108 = load ptr, ptr %proto_actions143, align 8, !tbaa !29
  %109 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom144 = sext i32 %109 to i64
  %arrayidx145 = getelementptr inbounds %struct._proto_action, ptr %108, i64 %idxprom144
  %o = getelementptr inbounds %struct._proto_action, ptr %arrayidx145, i32 0, i32 3
  %mutable_response_data = getelementptr inbounds %struct.immediate_action_struct, ptr %o, i32 0, i32 0
  %110 = load ptr, ptr %mutable_response_data, align 8, !tbaa !14
  store ptr %110, ptr %mrd, align 8, !tbaa !4
  %111 = load ptr, ptr %mrd, align 8, !tbaa !4
  %u = getelementptr inbounds %struct.response_spec, ptr %111, i32 0, i32 1
  %accept_anonymous = getelementptr inbounds %struct.multityped_spec, ptr %u, i32 0, i32 3
  %112 = load i32, ptr %accept_anonymous, align 8, !tbaa !14
  %tobool146 = icmp ne i32 %112, 0
  br i1 %tobool146, label %if.then147, label %if.end148

if.then147:                                       ; preds = %if.then142
  %113 = load i32, ptr %i, align 4, !tbaa !8
  store i32 %113, ptr %nearest_proto_action, align 4, !tbaa !8
  br label %if.end148

if.end148:                                        ; preds = %if.then147, %if.then142
  call void @llvm.lifetime.end.p0(i64 8, ptr %mrd) #11
  br label %if.end149

if.end149:                                        ; preds = %if.end148, %if.end136
  br label %for.inc150

for.inc150:                                       ; preds = %if.end149, %if.then114
  %114 = load i32, ptr %i, align 4, !tbaa !8
  %inc151 = add nsw i32 %114, 1
  store i32 %inc151, ptr %i, align 4, !tbaa !8
  br label %for.cond104

for.end152:                                       ; preds = %for.cond104
  br label %if.end153

if.end153:                                        ; preds = %for.end152, %if.end100
  %115 = load ptr, ptr %formatList, align 8, !tbaa !4
  call void @free(ptr noundef %115) #11
  %116 = load ptr, ptr %format_map, align 8, !tbaa !4
  call void @free(ptr noundef %116) #11
  %117 = load i32, ptr %nearest_proto_action, align 4, !tbaa !8
  %cmp154 = icmp ne i32 %117, -1
  br i1 %cmp154, label %if.then156, label %if.end318

if.then156:                                       ; preds = %if.end153
  call void @llvm.lifetime.start.p0(i64 4, ptr %action_generated) #11
  store i32 0, ptr %action_generated, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %proto) #11
  %118 = load ptr, ptr %stone.addr, align 8, !tbaa !4
  %proto_actions157 = getelementptr inbounds %struct._stone, ptr %118, i32 0, i32 16
  %119 = load ptr, ptr %proto_actions157, align 8, !tbaa !29
  %120 = load i32, ptr %nearest_proto_action, align 4, !tbaa !8
  %idxprom158 = sext i32 %120 to i64
  %arrayidx159 = getelementptr inbounds %struct._proto_action, ptr %119, i64 %idxprom158
  store ptr %arrayidx159, ptr %proto, align 8, !tbaa !4
  %121 = load ptr, ptr %proto, align 8, !tbaa !4
  %action_type160 = getelementptr inbounds %struct._proto_action, ptr %121, i32 0, i32 0
  %122 = load i32, ptr %action_type160, align 8, !tbaa !37
  %cmp161 = icmp eq i32 %122, 5
  br i1 %cmp161, label %if.then163, label %if.else199

if.then163:                                       ; preds = %if.then156
  call void @llvm.lifetime.start.p0(i64 8, ptr %instance) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %mrd164) #11
  %123 = load ptr, ptr %proto, align 8, !tbaa !4
  %o165 = getelementptr inbounds %struct._proto_action, ptr %123, i32 0, i32 3
  %mutable_response_data166 = getelementptr inbounds %struct.immediate_action_struct, ptr %o165, i32 0, i32 0
  %124 = load ptr, ptr %mutable_response_data166, align 8, !tbaa !14
  store ptr %124, ptr %mrd164, align 8, !tbaa !4
  %125 = load ptr, ptr %mrd164, align 8, !tbaa !4
  %response_type = getelementptr inbounds %struct.response_spec, ptr %125, i32 0, i32 0
  %126 = load i32, ptr %response_type, align 8, !tbaa !12
  switch i32 %126, label %sw.epilog [
    i32 0, label %sw.bb
    i32 2, label %sw.bb
    i32 1, label %sw.bb174
    i32 3, label %sw.bb176
  ]

sw.bb:                                            ; preds = %if.then163, %if.then163
  %127 = load ptr, ptr %event.addr, align 8, !tbaa !4
  %event_encoded = getelementptr inbounds %struct._event_item, ptr %127, i32 0, i32 1
  %128 = load i32, ptr %event_encoded, align 4, !tbaa !38
  %tobool167 = icmp ne i32 %128, 0
  br i1 %tobool167, label %if.then168, label %if.else171

if.then168:                                       ; preds = %sw.bb
  %129 = load ptr, ptr %cm.addr, align 8, !tbaa !4
  %130 = load ptr, ptr %event.addr, align 8, !tbaa !4
  %reference_format169 = getelementptr inbounds %struct._event_item, ptr %130, i32 0, i32 7
  %131 = load ptr, ptr %reference_format169, align 8, !tbaa !33
  %call170 = call ptr @localize_format(ptr noundef %129, ptr noundef %131)
  store ptr %call170, ptr %conversion_target_format, align 8, !tbaa !4
  br label %if.end173

if.else171:                                       ; preds = %sw.bb
  %132 = load ptr, ptr %event.addr, align 8, !tbaa !4
  %reference_format172 = getelementptr inbounds %struct._event_item, ptr %132, i32 0, i32 7
  %133 = load ptr, ptr %reference_format172, align 8, !tbaa !33
  store ptr %133, ptr %conversion_target_format, align 8, !tbaa !4
  br label %if.end173

if.end173:                                        ; preds = %if.else171, %if.then168
  br label %sw.epilog

sw.bb174:                                         ; preds = %if.then163
  %134 = load ptr, ptr %mrd164, align 8, !tbaa !4
  %u175 = getelementptr inbounds %struct.response_spec, ptr %134, i32 0, i32 1
  %reference_input_format = getelementptr inbounds %struct.transform_spec, ptr %u175, i32 0, i32 4
  %135 = load ptr, ptr %reference_input_format, align 8, !tbaa !14
  store ptr %135, ptr %conversion_target_format, align 8, !tbaa !4
  br label %sw.epilog

sw.bb176:                                         ; preds = %if.then163
  call void @__assert_fail(ptr noundef @.str.27, ptr noundef @.str.28, i32 noundef 1317, ptr noundef @__PRETTY_FUNCTION__.response_determination) #16
  unreachable

sw.epilog:                                        ; preds = %if.then163, %sw.bb174, %if.end173
  %136 = load ptr, ptr %cm.addr, align 8, !tbaa !4
  %137 = load ptr, ptr %mrd164, align 8, !tbaa !4
  %138 = load ptr, ptr %stone.addr, align 8, !tbaa !4
  %139 = load ptr, ptr %conversion_target_format, align 8, !tbaa !4
  %call177 = call ptr @generate_filter_code(ptr noundef %136, ptr noundef %137, ptr noundef %138, ptr noundef %139)
  store ptr %call177, ptr %instance, align 8, !tbaa !4
  %140 = load ptr, ptr %instance, align 8, !tbaa !4
  %cmp178 = icmp eq ptr %140, null
  br i1 %cmp178, label %if.then180, label %if.end181

if.then180:                                       ; preds = %sw.epilog
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup195

if.end181:                                        ; preds = %sw.epilog
  %141 = load ptr, ptr %stone.addr, align 8, !tbaa !4
  %local_id = getelementptr inbounds %struct._stone, ptr %141, i32 0, i32 0
  %142 = load i32, ptr %local_id, align 8, !tbaa !39
  %143 = load ptr, ptr %instance, align 8, !tbaa !4
  %stone182 = getelementptr inbounds %struct.response_instance, ptr %143, i32 0, i32 1
  store i32 %142, ptr %stone182, align 4, !tbaa !40
  %144 = load i32, ptr %nearest_proto_action, align 4, !tbaa !8
  %145 = load ptr, ptr %instance, align 8, !tbaa !4
  %proto_action_id = getelementptr inbounds %struct.response_instance, ptr %145, i32 0, i32 2
  store i32 %144, ptr %proto_action_id, align 8, !tbaa !42
  %146 = load i32, ptr %action_generated, align 4, !tbaa !8
  %inc183 = add nsw i32 %146, 1
  store i32 %inc183, ptr %action_generated, align 4, !tbaa !8
  %147 = load ptr, ptr %mrd164, align 8, !tbaa !4
  %response_type184 = getelementptr inbounds %struct.response_spec, ptr %147, i32 0, i32 0
  %148 = load i32, ptr %response_type184, align 8, !tbaa !12
  switch i32 %148, label %sw.default [
    i32 0, label %sw.bb185
    i32 2, label %sw.bb188
    i32 1, label %sw.bb191
  ]

sw.bb185:                                         ; preds = %if.end181
  %149 = load ptr, ptr %cm.addr, align 8, !tbaa !4
  %150 = load ptr, ptr %stone.addr, align 8, !tbaa !4
  %local_id186 = getelementptr inbounds %struct._stone, ptr %150, i32 0, i32 0
  %151 = load i32, ptr %local_id186, align 8, !tbaa !39
  %152 = load i32, ptr %nearest_proto_action, align 4, !tbaa !8
  %153 = load ptr, ptr %instance, align 8, !tbaa !4
  %154 = load ptr, ptr %conversion_target_format, align 8, !tbaa !4
  %call187 = call i32 @INT_EVassoc_mutated_imm_action(ptr noundef %149, i32 noundef %151, i32 noundef %152, ptr noundef @filter_wrapper, ptr noundef %153, ptr noundef %154, ptr noundef @free_imm_response)
  br label %sw.epilog194

sw.bb188:                                         ; preds = %if.end181
  %155 = load ptr, ptr %cm.addr, align 8, !tbaa !4
  %156 = load ptr, ptr %stone.addr, align 8, !tbaa !4
  %local_id189 = getelementptr inbounds %struct._stone, ptr %156, i32 0, i32 0
  %157 = load i32, ptr %local_id189, align 8, !tbaa !39
  %158 = load i32, ptr %nearest_proto_action, align 4, !tbaa !8
  %159 = load ptr, ptr %instance, align 8, !tbaa !4
  %160 = load ptr, ptr %conversion_target_format, align 8, !tbaa !4
  %call190 = call i32 @INT_EVassoc_mutated_imm_action(ptr noundef %155, i32 noundef %157, i32 noundef %158, ptr noundef @router_wrapper, ptr noundef %159, ptr noundef %160, ptr noundef @free_imm_response)
  br label %sw.epilog194

sw.bb191:                                         ; preds = %if.end181
  %161 = load ptr, ptr %cm.addr, align 8, !tbaa !4
  %162 = load ptr, ptr %stone.addr, align 8, !tbaa !4
  %local_id192 = getelementptr inbounds %struct._stone, ptr %162, i32 0, i32 0
  %163 = load i32, ptr %local_id192, align 8, !tbaa !39
  %164 = load i32, ptr %nearest_proto_action, align 4, !tbaa !8
  %165 = load ptr, ptr %instance, align 8, !tbaa !4
  %166 = load ptr, ptr %conversion_target_format, align 8, !tbaa !4
  %call193 = call i32 @INT_EVassoc_mutated_imm_action(ptr noundef %161, i32 noundef %163, i32 noundef %164, ptr noundef @transform_wrapper, ptr noundef %165, ptr noundef %166, ptr noundef @free_imm_response)
  br label %sw.epilog194

sw.default:                                       ; preds = %if.end181
  call void @__assert_fail(ptr noundef @.str.27, ptr noundef @.str.28, i32 noundef 1343, ptr noundef @__PRETTY_FUNCTION__.response_determination) #16
  unreachable

sw.epilog194:                                     ; preds = %sw.bb191, %sw.bb188, %sw.bb185
  store i32 1, ptr %return_value, align 4, !tbaa !8
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup195

cleanup195:                                       ; preds = %sw.epilog194, %if.then180
  call void @llvm.lifetime.end.p0(i64 8, ptr %mrd164) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %instance) #11
  %cleanup.dest197 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest197, label %cleanup314 [
    i32 0, label %cleanup.cont198
  ]

cleanup.cont198:                                  ; preds = %cleanup195
  br label %if.end293

if.else199:                                       ; preds = %if.then156
  %167 = load ptr, ptr %proto, align 8, !tbaa !4
  %action_type200 = getelementptr inbounds %struct._proto_action, ptr %167, i32 0, i32 0
  %168 = load i32, ptr %action_type200, align 8, !tbaa !37
  %cmp201 = icmp eq i32 %168, 6
  br i1 %cmp201, label %if.then207, label %lor.lhs.false203

lor.lhs.false203:                                 ; preds = %if.else199
  %169 = load ptr, ptr %proto, align 8, !tbaa !4
  %action_type204 = getelementptr inbounds %struct._proto_action, ptr %169, i32 0, i32 0
  %170 = load i32, ptr %action_type204, align 8, !tbaa !37
  %cmp205 = icmp eq i32 %170, 11
  br i1 %cmp205, label %if.then207, label %if.else244

if.then207:                                       ; preds = %lor.lhs.false203, %if.else199
  call void @llvm.lifetime.start.p0(i64 8, ptr %instance208) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %mrd209) #11
  %171 = load ptr, ptr %proto, align 8, !tbaa !4
  %o210 = getelementptr inbounds %struct._proto_action, ptr %171, i32 0, i32 3
  %mutable_response_data211 = getelementptr inbounds %struct.immediate_action_struct, ptr %o210, i32 0, i32 0
  %172 = load ptr, ptr %mutable_response_data211, align 8, !tbaa !14
  store ptr %172, ptr %mrd209, align 8, !tbaa !4
  %173 = load ptr, ptr %cm.addr, align 8, !tbaa !4
  %174 = load ptr, ptr %mrd209, align 8, !tbaa !4
  %175 = load ptr, ptr %stone.addr, align 8, !tbaa !4
  %176 = load ptr, ptr %proto, align 8, !tbaa !4
  %matching_reference_formats212 = getelementptr inbounds %struct._proto_action, ptr %176, i32 0, i32 2
  %177 = load ptr, ptr %matching_reference_formats212, align 8, !tbaa !30
  %call213 = call ptr @generate_multityped_code(ptr noundef %173, ptr noundef %174, ptr noundef %175, ptr noundef %177)
  store ptr %call213, ptr %instance208, align 8, !tbaa !4
  %178 = load ptr, ptr %instance208, align 8, !tbaa !4
  %cmp214 = icmp eq ptr %178, null
  br i1 %cmp214, label %if.then216, label %if.end217

if.then216:                                       ; preds = %if.then207
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup240

if.end217:                                        ; preds = %if.then207
  %179 = load ptr, ptr %stone.addr, align 8, !tbaa !4
  %local_id218 = getelementptr inbounds %struct._stone, ptr %179, i32 0, i32 0
  %180 = load i32, ptr %local_id218, align 8, !tbaa !39
  %181 = load ptr, ptr %instance208, align 8, !tbaa !4
  %stone219 = getelementptr inbounds %struct.response_instance, ptr %181, i32 0, i32 1
  store i32 %180, ptr %stone219, align 4, !tbaa !40
  %182 = load i32, ptr %nearest_proto_action, align 4, !tbaa !8
  %183 = load ptr, ptr %instance208, align 8, !tbaa !4
  %proto_action_id220 = getelementptr inbounds %struct.response_instance, ptr %183, i32 0, i32 2
  store i32 %182, ptr %proto_action_id220, align 8, !tbaa !42
  %184 = load i32, ptr %action_generated, align 4, !tbaa !8
  %inc221 = add nsw i32 %184, 1
  store i32 %inc221, ptr %action_generated, align 4, !tbaa !8
  %185 = load ptr, ptr %cm.addr, align 8, !tbaa !4
  %186 = load ptr, ptr %stone.addr, align 8, !tbaa !4
  %local_id222 = getelementptr inbounds %struct._stone, ptr %186, i32 0, i32 0
  %187 = load i32, ptr %local_id222, align 8, !tbaa !39
  %188 = load i32, ptr %nearest_proto_action, align 4, !tbaa !8
  %189 = load ptr, ptr %instance208, align 8, !tbaa !4
  %190 = load ptr, ptr %proto, align 8, !tbaa !4
  %matching_reference_formats223 = getelementptr inbounds %struct._proto_action, ptr %190, i32 0, i32 2
  %191 = load ptr, ptr %matching_reference_formats223, align 8, !tbaa !30
  %call224 = call i32 @INT_EVassoc_mutated_multi_action(ptr noundef %185, i32 noundef %187, i32 noundef %188, ptr noundef @queued_wrapper, ptr noundef %189, ptr noundef %191, ptr noundef @free_multi_response)
  %192 = load ptr, ptr %mrd209, align 8, !tbaa !4
  %u225 = getelementptr inbounds %struct.response_spec, ptr %192, i32 0, i32 1
  %accept_anonymous226 = getelementptr inbounds %struct.multityped_spec, ptr %u225, i32 0, i32 3
  %193 = load i32, ptr %accept_anonymous226, align 8, !tbaa !14
  %tobool227 = icmp ne i32 %193, 0
  br i1 %tobool227, label %land.lhs.true228, label %if.end235

land.lhs.true228:                                 ; preds = %if.end217
  %194 = load ptr, ptr %matching_format, align 8, !tbaa !4
  %cmp229 = icmp eq ptr %194, null
  br i1 %cmp229, label %if.then231, label %if.end235

if.then231:                                       ; preds = %land.lhs.true228
  %195 = load ptr, ptr %cm.addr, align 8, !tbaa !4
  %196 = load ptr, ptr %stone.addr, align 8, !tbaa !4
  %local_id232 = getelementptr inbounds %struct._stone, ptr %196, i32 0, i32 0
  %197 = load i32, ptr %local_id232, align 8, !tbaa !39
  %198 = load i32, ptr %nearest_proto_action, align 4, !tbaa !8
  %199 = load ptr, ptr %instance208, align 8, !tbaa !4
  %200 = load ptr, ptr %event.addr, align 8, !tbaa !4
  %reference_format233 = getelementptr inbounds %struct._event_item, ptr %200, i32 0, i32 7
  %201 = load ptr, ptr %reference_format233, align 8, !tbaa !33
  %call234 = call i32 @INT_EVassoc_anon_multi_action(ptr noundef %195, i32 noundef %197, i32 noundef %198, ptr noundef @queued_wrapper, ptr noundef %199, ptr noundef %201)
  br label %if.end235

if.end235:                                        ; preds = %if.then231, %land.lhs.true228, %if.end217
  %202 = load ptr, ptr %event.addr, align 8, !tbaa !4
  %event_encoded236 = getelementptr inbounds %struct._event_item, ptr %202, i32 0, i32 1
  %203 = load i32, ptr %event_encoded236, align 4, !tbaa !38
  %tobool237 = icmp ne i32 %203, 0
  br i1 %tobool237, label %if.then238, label %if.end239

if.then238:                                       ; preds = %if.end235
  %204 = load ptr, ptr %matching_format, align 8, !tbaa !4
  store ptr %204, ptr %conversion_target_format, align 8, !tbaa !4
  br label %if.end239

if.end239:                                        ; preds = %if.then238, %if.end235
  store i32 1, ptr %return_value, align 4, !tbaa !8
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup240

cleanup240:                                       ; preds = %if.end239, %if.then216
  call void @llvm.lifetime.end.p0(i64 8, ptr %mrd209) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %instance208) #11
  %cleanup.dest242 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest242, label %cleanup314 [
    i32 0, label %cleanup.cont243
  ]

cleanup.cont243:                                  ; preds = %cleanup240
  br label %if.end292

if.else244:                                       ; preds = %lor.lhs.false203
  call void @llvm.lifetime.start.p0(i64 8, ptr %resp) #11
  store ptr null, ptr %conversion_target_format, align 8, !tbaa !4
  %205 = load ptr, ptr %proto, align 8, !tbaa !4
  %matching_reference_formats245 = getelementptr inbounds %struct._proto_action, ptr %205, i32 0, i32 2
  %206 = load ptr, ptr %matching_reference_formats245, align 8, !tbaa !30
  %tobool246 = icmp ne ptr %206, null
  br i1 %tobool246, label %if.then247, label %if.end250

if.then247:                                       ; preds = %if.else244
  %207 = load ptr, ptr %proto, align 8, !tbaa !4
  %matching_reference_formats248 = getelementptr inbounds %struct._proto_action, ptr %207, i32 0, i32 2
  %208 = load ptr, ptr %matching_reference_formats248, align 8, !tbaa !30
  %arrayidx249 = getelementptr inbounds ptr, ptr %208, i64 0
  %209 = load ptr, ptr %arrayidx249, align 8, !tbaa !4
  store ptr %209, ptr %conversion_target_format, align 8, !tbaa !4
  br label %if.end250

if.end250:                                        ; preds = %if.then247, %if.else244
  %210 = load ptr, ptr %stone.addr, align 8, !tbaa !4
  %response_cache_count = getelementptr inbounds %struct._stone, ptr %210, i32 0, i32 10
  %211 = load i32, ptr %response_cache_count, align 8, !tbaa !43
  %cmp251 = icmp eq i32 %211, 0
  br i1 %cmp251, label %if.then253, label %if.else261

if.then253:                                       ; preds = %if.end250
  %212 = load ptr, ptr %stone.addr, align 8, !tbaa !4
  %response_cache = getelementptr inbounds %struct._stone, ptr %212, i32 0, i32 11
  %213 = load ptr, ptr %response_cache, align 8, !tbaa !44
  %cmp254 = icmp ne ptr %213, null
  br i1 %cmp254, label %if.then256, label %if.end258

if.then256:                                       ; preds = %if.then253
  %214 = load ptr, ptr %stone.addr, align 8, !tbaa !4
  %response_cache257 = getelementptr inbounds %struct._stone, ptr %214, i32 0, i32 11
  %215 = load ptr, ptr %response_cache257, align 8, !tbaa !44
  call void @free(ptr noundef %215) #11
  br label %if.end258

if.end258:                                        ; preds = %if.then256, %if.then253
  %call259 = call noalias ptr @malloc(i64 noundef 48) #13
  %216 = load ptr, ptr %stone.addr, align 8, !tbaa !4
  %response_cache260 = getelementptr inbounds %struct._stone, ptr %216, i32 0, i32 11
  store ptr %call259, ptr %response_cache260, align 8, !tbaa !44
  br label %if.end269

if.else261:                                       ; preds = %if.end250
  %217 = load ptr, ptr %stone.addr, align 8, !tbaa !4
  %response_cache262 = getelementptr inbounds %struct._stone, ptr %217, i32 0, i32 11
  %218 = load ptr, ptr %response_cache262, align 8, !tbaa !44
  %219 = load ptr, ptr %stone.addr, align 8, !tbaa !4
  %response_cache_count263 = getelementptr inbounds %struct._stone, ptr %219, i32 0, i32 10
  %220 = load i32, ptr %response_cache_count263, align 8, !tbaa !43
  %add264 = add nsw i32 %220, 1
  %conv265 = sext i32 %add264 to i64
  %mul266 = mul i64 %conv265, 48
  %call267 = call ptr @realloc(ptr noundef %218, i64 noundef %mul266) #15
  %221 = load ptr, ptr %stone.addr, align 8, !tbaa !4
  %response_cache268 = getelementptr inbounds %struct._stone, ptr %221, i32 0, i32 11
  store ptr %call267, ptr %response_cache268, align 8, !tbaa !44
  br label %if.end269

if.end269:                                        ; preds = %if.else261, %if.end258
  %222 = load ptr, ptr %stone.addr, align 8, !tbaa !4
  %response_cache270 = getelementptr inbounds %struct._stone, ptr %222, i32 0, i32 11
  %223 = load ptr, ptr %response_cache270, align 8, !tbaa !44
  %224 = load ptr, ptr %stone.addr, align 8, !tbaa !4
  %response_cache_count271 = getelementptr inbounds %struct._stone, ptr %224, i32 0, i32 10
  %225 = load i32, ptr %response_cache_count271, align 8, !tbaa !43
  %inc272 = add nsw i32 %225, 1
  store i32 %inc272, ptr %response_cache_count271, align 8, !tbaa !43
  %idxprom273 = sext i32 %225 to i64
  %arrayidx274 = getelementptr inbounds %struct.response_cache_element, ptr %223, i64 %idxprom273
  store ptr %arrayidx274, ptr %resp, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %proto2) #11
  %226 = load ptr, ptr %stone.addr, align 8, !tbaa !4
  %proto_actions275 = getelementptr inbounds %struct._stone, ptr %226, i32 0, i32 16
  %227 = load ptr, ptr %proto_actions275, align 8, !tbaa !29
  %228 = load i32, ptr %nearest_proto_action, align 4, !tbaa !8
  %idxprom276 = sext i32 %228 to i64
  %arrayidx277 = getelementptr inbounds %struct._proto_action, ptr %227, i64 %idxprom276
  store ptr %arrayidx277, ptr %proto2, align 8, !tbaa !4
  %229 = load ptr, ptr %conversion_target_format, align 8, !tbaa !4
  %tobool278 = icmp ne ptr %229, null
  br i1 %tobool278, label %if.then279, label %if.else281

if.then279:                                       ; preds = %if.end269
  %230 = load ptr, ptr %conversion_target_format, align 8, !tbaa !4
  %231 = load ptr, ptr %resp, align 8, !tbaa !4
  %reference_format280 = getelementptr inbounds %struct.response_cache_element, ptr %231, i32 0, i32 0
  store ptr %230, ptr %reference_format280, align 8, !tbaa !45
  br label %if.end284

if.else281:                                       ; preds = %if.end269
  %232 = load ptr, ptr %event.addr, align 8, !tbaa !4
  %reference_format282 = getelementptr inbounds %struct._event_item, ptr %232, i32 0, i32 7
  %233 = load ptr, ptr %reference_format282, align 8, !tbaa !33
  %234 = load ptr, ptr %resp, align 8, !tbaa !4
  %reference_format283 = getelementptr inbounds %struct.response_cache_element, ptr %234, i32 0, i32 0
  store ptr %233, ptr %reference_format283, align 8, !tbaa !45
  br label %if.end284

if.end284:                                        ; preds = %if.else281, %if.then279
  %235 = load i32, ptr %nearest_proto_action, align 4, !tbaa !8
  %236 = load ptr, ptr %resp, align 8, !tbaa !4
  %proto_action_id285 = getelementptr inbounds %struct.response_cache_element, ptr %236, i32 0, i32 3
  store i32 %235, ptr %proto_action_id285, align 8, !tbaa !47
  %237 = load ptr, ptr %proto2, align 8, !tbaa !4
  %action_type286 = getelementptr inbounds %struct._proto_action, ptr %237, i32 0, i32 0
  %238 = load i32, ptr %action_type286, align 8, !tbaa !37
  %239 = load ptr, ptr %resp, align 8, !tbaa !4
  %action_type287 = getelementptr inbounds %struct.response_cache_element, ptr %239, i32 0, i32 2
  store i32 %238, ptr %action_type287, align 4, !tbaa !48
  %240 = load ptr, ptr %proto2, align 8, !tbaa !4
  %data_state288 = getelementptr inbounds %struct._proto_action, ptr %240, i32 0, i32 4
  %241 = load i32, ptr %data_state288, align 8, !tbaa !36
  %cmp289 = icmp eq i32 %241, 1
  %conv290 = zext i1 %cmp289 to i32
  %242 = load ptr, ptr %resp, align 8, !tbaa !4
  %requires_decoded = getelementptr inbounds %struct.response_cache_element, ptr %242, i32 0, i32 4
  store i32 %conv290, ptr %requires_decoded, align 4, !tbaa !49
  %243 = load i32, ptr %stage.addr, align 4, !tbaa !14
  %244 = load ptr, ptr %resp, align 8, !tbaa !4
  %stage291 = getelementptr inbounds %struct.response_cache_element, ptr %244, i32 0, i32 1
  store i32 %243, ptr %stage291, align 8, !tbaa !50
  call void @llvm.lifetime.end.p0(i64 8, ptr %proto2) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %resp) #11
  br label %if.end292

if.end292:                                        ; preds = %if.end284, %cleanup.cont243
  br label %if.end293

if.end293:                                        ; preds = %if.end292, %cleanup.cont198
  %245 = load ptr, ptr %conversion_target_format, align 8, !tbaa !4
  %cmp294 = icmp ne ptr %245, null
  br i1 %cmp294, label %if.then296, label %if.else312

if.then296:                                       ; preds = %if.end293
  %246 = load ptr, ptr %event.addr, align 8, !tbaa !4
  %event_encoded297 = getelementptr inbounds %struct._event_item, ptr %246, i32 0, i32 1
  %247 = load i32, ptr %event_encoded297, align 4, !tbaa !38
  %tobool298 = icmp ne i32 %247, 0
  br i1 %tobool298, label %if.then299, label %if.else302

if.then299:                                       ; preds = %if.then296
  %248 = load ptr, ptr %cm.addr, align 8, !tbaa !4
  %249 = load ptr, ptr %stone.addr, align 8, !tbaa !4
  %local_id300 = getelementptr inbounds %struct._stone, ptr %249, i32 0, i32 0
  %250 = load i32, ptr %local_id300, align 8, !tbaa !39
  %251 = load i32, ptr %stage.addr, align 4, !tbaa !14
  %252 = load ptr, ptr %conversion_target_format, align 8, !tbaa !4
  %253 = load ptr, ptr %event.addr, align 8, !tbaa !4
  %reference_format301 = getelementptr inbounds %struct._event_item, ptr %253, i32 0, i32 7
  %254 = load ptr, ptr %reference_format301, align 8, !tbaa !33
  call void @INT_EVassoc_conversion_action(ptr noundef %248, i32 noundef %250, i32 noundef %251, ptr noundef %252, ptr noundef %254)
  store i32 1, ptr %return_value, align 4, !tbaa !8
  br label %if.end311

if.else302:                                       ; preds = %if.then296
  %255 = load ptr, ptr %event.addr, align 8, !tbaa !4
  %reference_format303 = getelementptr inbounds %struct._event_item, ptr %255, i32 0, i32 7
  %256 = load ptr, ptr %reference_format303, align 8, !tbaa !33
  %257 = load ptr, ptr %conversion_target_format, align 8, !tbaa !4
  %cmp304 = icmp ne ptr %256, %257
  br i1 %cmp304, label %if.then306, label %if.else309

if.then306:                                       ; preds = %if.else302
  %258 = load ptr, ptr %cm.addr, align 8, !tbaa !4
  %259 = load ptr, ptr %stone.addr, align 8, !tbaa !4
  %local_id307 = getelementptr inbounds %struct._stone, ptr %259, i32 0, i32 0
  %260 = load i32, ptr %local_id307, align 8, !tbaa !39
  %261 = load i32, ptr %stage.addr, align 4, !tbaa !14
  %262 = load ptr, ptr %conversion_target_format, align 8, !tbaa !4
  %263 = load ptr, ptr %event.addr, align 8, !tbaa !4
  %reference_format308 = getelementptr inbounds %struct._event_item, ptr %263, i32 0, i32 7
  %264 = load ptr, ptr %reference_format308, align 8, !tbaa !33
  call void @INT_EVassoc_conversion_action(ptr noundef %258, i32 noundef %260, i32 noundef %261, ptr noundef %262, ptr noundef %264)
  store i32 1, ptr %return_value, align 4, !tbaa !8
  br label %if.end310

if.else309:                                       ; preds = %if.else302
  store i32 1, ptr %return_value, align 4, !tbaa !8
  br label %if.end310

if.end310:                                        ; preds = %if.else309, %if.then306
  br label %if.end311

if.end311:                                        ; preds = %if.end310, %if.then299
  br label %if.end313

if.else312:                                       ; preds = %if.end293
  store i32 1, ptr %return_value, align 4, !tbaa !8
  br label %if.end313

if.end313:                                        ; preds = %if.else312, %if.end311
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup314

cleanup314:                                       ; preds = %if.end313, %cleanup240, %cleanup195
  call void @llvm.lifetime.end.p0(i64 8, ptr %proto) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %action_generated) #11
  %cleanup.dest316 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest316, label %cleanup319 [
    i32 0, label %cleanup.cont317
  ]

cleanup.cont317:                                  ; preds = %cleanup314
  br label %if.end318

if.end318:                                        ; preds = %cleanup.cont317, %if.end153
  %265 = load ptr, ptr %stone.addr, align 8, !tbaa !4
  call void @fix_response_cache(ptr noundef %265)
  %266 = load i32, ptr %return_value, align 4, !tbaa !8
  store i32 %266, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup319

cleanup319:                                       ; preds = %if.end318, %cleanup314
  call void @llvm.lifetime.end.p0(i64 8, ptr %older_format) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %format_map) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %formatList) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %format_count) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %matching_format) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %conversion_target_format) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %return_value) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %nearest_proto_action) #11
  %267 = load i32, ptr %retval, align 4
  ret i32 %267

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @proto_action_in_stage(ptr noundef %act, i32 noundef %stage) #0 {
entry:
  %retval = alloca i32, align 4
  %act.addr = alloca ptr, align 8
  %stage.addr = alloca i32, align 4
  store ptr %act, ptr %act.addr, align 8, !tbaa !4
  store i32 %stage, ptr %stage.addr, align 4, !tbaa !14
  %0 = load i32, ptr %stage.addr, align 4, !tbaa !14
  switch i32 %0, label %sw.default11 [
    i32 1, label %sw.bb
    i32 0, label %sw.bb1
    i32 2, label %sw.bb4
    i32 3, label %sw.bb7
  ]

sw.bb:                                            ; preds = %entry
  %1 = load ptr, ptr %act.addr, align 8, !tbaa !4
  %action_type = getelementptr inbounds %struct._proto_action, ptr %1, i32 0, i32 0
  %2 = load i32, ptr %action_type, align 8, !tbaa !37
  %cmp = icmp eq i32 %2, 6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %sw.bb
  br label %sw.bb1

sw.bb1:                                           ; preds = %entry, %if.end
  %3 = load ptr, ptr %act.addr, align 8, !tbaa !4
  %action_type2 = getelementptr inbounds %struct._proto_action, ptr %3, i32 0, i32 0
  %4 = load i32, ptr %action_type2, align 8, !tbaa !37
  switch i32 %4, label %sw.default [
    i32 3, label %sw.bb3
    i32 4, label %sw.bb3
    i32 9, label %sw.bb3
    i32 5, label %sw.bb3
    i32 10, label %sw.bb3
  ]

sw.bb3:                                           ; preds = %sw.bb1, %sw.bb1, %sw.bb1, %sw.bb1, %sw.bb1
  store i32 1, ptr %retval, align 4
  br label %return

sw.default:                                       ; preds = %sw.bb1
  store i32 0, ptr %retval, align 4
  br label %return

sw.bb4:                                           ; preds = %entry
  %5 = load ptr, ptr %act.addr, align 8, !tbaa !4
  %action_type5 = getelementptr inbounds %struct._proto_action, ptr %5, i32 0, i32 0
  %6 = load i32, ptr %action_type5, align 8, !tbaa !37
  %cmp6 = icmp eq i32 %6, 1
  %conv = zext i1 %cmp6 to i32
  store i32 %conv, ptr %retval, align 4
  br label %return

sw.bb7:                                           ; preds = %entry
  %7 = load ptr, ptr %act.addr, align 8, !tbaa !4
  %action_type8 = getelementptr inbounds %struct._proto_action, ptr %7, i32 0, i32 0
  %8 = load i32, ptr %action_type8, align 8, !tbaa !37
  %cmp9 = icmp eq i32 %8, 11
  %conv10 = zext i1 %cmp9 to i32
  store i32 %conv10, ptr %retval, align 4
  br label %return

sw.default11:                                     ; preds = %entry
  call void @__assert_fail(ptr noundef @.str.32, ptr noundef @.str.28, i32 noundef 1180, ptr noundef @__PRETTY_FUNCTION__.proto_action_in_stage) #16
  unreachable

return:                                           ; preds = %sw.bb7, %sw.bb4, %sw.default, %sw.bb3, %if.then
  %9 = load i32, ptr %retval, align 4
  ret i32 %9
}

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #2

declare ptr @name_of_FMformat(ptr noundef) #5

declare i32 @FMformat_compat_cmp2(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #5

; Function Attrs: nounwind uwtable
define internal ptr @localize_format(ptr noundef %cm, ptr noundef %format) #0 {
entry:
  %cm.addr = alloca ptr, align 8
  %format.addr = alloca ptr, align 8
  %ret = alloca ptr, align 8
  %local_formats = alloca ptr, align 8
  store ptr %cm, ptr %cm.addr, align 8, !tbaa !4
  store ptr %format, ptr %format.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %local_formats) #11
  %0 = load ptr, ptr %format.addr, align 8, !tbaa !4
  %call = call ptr @get_localized_formats(ptr noundef %0)
  store ptr %call, ptr %local_formats, align 8, !tbaa !4
  %1 = load ptr, ptr %cm.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %local_formats, align 8, !tbaa !4
  %call1 = call ptr @EVregister_format_set(ptr noundef %1, ptr noundef %2)
  store ptr %call1, ptr %ret, align 8, !tbaa !4
  %3 = load ptr, ptr %local_formats, align 8, !tbaa !4
  call void @free_struct_list(ptr noundef %3)
  %4 = load ptr, ptr %ret, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %local_formats) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #11
  ret ptr %4
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #7

; Function Attrs: nounwind uwtable
define internal ptr @generate_filter_code(ptr noundef %cm, ptr noundef %mrd, ptr noundef %stone, ptr noundef %format) #0 {
entry:
  %retval = alloca ptr, align 8
  %cm.addr = alloca ptr, align 8
  %mrd.addr = alloca ptr, align 8
  %stone.addr = alloca ptr, align 8
  %format.addr = alloca ptr, align 8
  %instance = alloca ptr, align 8
  %code = alloca ptr, align 8
  %parse_context = alloca ptr, align 8
  %count = alloca i32, align 4
  %count11 = alloca i32, align 4
  %path = alloca ptr, align 8
  %symbol_name = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %path94 = alloca ptr, align 8
  %symbol_name95 = alloca ptr, align 8
  store ptr %cm, ptr %cm.addr, align 8, !tbaa !4
  store ptr %mrd, ptr %mrd.addr, align 8, !tbaa !4
  store ptr %stone, ptr %stone.addr, align 8, !tbaa !4
  store ptr %format, ptr %format.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %instance) #11
  %call = call noalias ptr @malloc(i64 noundef 64) #13
  store ptr %call, ptr %instance, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %code) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %parse_context) #11
  %call1 = call ptr @new_cod_parse_context()
  store ptr %call1, ptr %parse_context, align 8, !tbaa !4
  %0 = load ptr, ptr %instance, align 8, !tbaa !4
  call void @llvm.memset.p0.i64(ptr align 8 %0, i8 0, i64 64, i1 false)
  %1 = load ptr, ptr %stone.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %parse_context, align 8, !tbaa !4
  call void @add_standard_routines(ptr noundef %1, ptr noundef %2)
  %3 = load ptr, ptr %stone.addr, align 8, !tbaa !4
  %4 = load ptr, ptr %parse_context, align 8, !tbaa !4
  call void @add_metrics_routines(ptr noundef %3, ptr noundef %4)
  %5 = load ptr, ptr %cm.addr, align 8, !tbaa !4
  %evp = getelementptr inbounds %struct._CManager, ptr %5, i32 0, i32 28
  %6 = load ptr, ptr %evp, align 8, !tbaa !51
  %extern_structs = getelementptr inbounds %struct._event_path_data, ptr %6, i32 0, i32 18
  %7 = load ptr, ptr %extern_structs, align 8, !tbaa !54
  %tobool = icmp ne ptr %7, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #11
  store i32 -1, ptr %count, align 4, !tbaa !8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %8 = load ptr, ptr %cm.addr, align 8, !tbaa !4
  %evp2 = getelementptr inbounds %struct._CManager, ptr %8, i32 0, i32 28
  %9 = load ptr, ptr %evp2, align 8, !tbaa !51
  %extern_structs3 = getelementptr inbounds %struct._event_path_data, ptr %9, i32 0, i32 18
  %10 = load ptr, ptr %extern_structs3, align 8, !tbaa !54
  %11 = load i32, ptr %count, align 4, !tbaa !8
  %inc = add nsw i32 %11, 1
  store i32 %inc, ptr %count, align 4, !tbaa !8
  %idxprom = sext i32 %inc to i64
  %arrayidx = getelementptr inbounds ptr, ptr %10, i64 %idxprom
  %12 = load ptr, ptr %arrayidx, align 8, !tbaa !4
  %cmp = icmp ne ptr %12, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %13 = load ptr, ptr %cm.addr, align 8, !tbaa !4
  %evp4 = getelementptr inbounds %struct._CManager, ptr %13, i32 0, i32 28
  %14 = load ptr, ptr %evp4, align 8, !tbaa !51
  %extern_structs5 = getelementptr inbounds %struct._event_path_data, ptr %14, i32 0, i32 18
  %15 = load ptr, ptr %extern_structs5, align 8, !tbaa !54
  %16 = load i32, ptr %count, align 4, !tbaa !8
  %idxprom6 = sext i32 %16 to i64
  %arrayidx7 = getelementptr inbounds ptr, ptr %15, i64 %idxprom6
  %17 = load ptr, ptr %arrayidx7, align 8, !tbaa !4
  %18 = load ptr, ptr %parse_context, align 8, !tbaa !4
  call void @cod_add_struct_type(ptr noundef %17, ptr noundef %18)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #11
  br label %if.end

if.end:                                           ; preds = %while.end, %entry
  %19 = load ptr, ptr %cm.addr, align 8, !tbaa !4
  %evp8 = getelementptr inbounds %struct._CManager, ptr %19, i32 0, i32 28
  %20 = load ptr, ptr %evp8, align 8, !tbaa !51
  %externs = getelementptr inbounds %struct._event_path_data, ptr %20, i32 0, i32 17
  %21 = load ptr, ptr %externs, align 8, !tbaa !56
  %tobool9 = icmp ne ptr %21, null
  br i1 %tobool9, label %if.then10, label %if.end32

if.then10:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %count11) #11
  store i32 -1, ptr %count11, align 4, !tbaa !8
  br label %while.cond12

while.cond12:                                     ; preds = %while.body19, %if.then10
  %22 = load ptr, ptr %cm.addr, align 8, !tbaa !4
  %evp13 = getelementptr inbounds %struct._CManager, ptr %22, i32 0, i32 28
  %23 = load ptr, ptr %evp13, align 8, !tbaa !51
  %externs14 = getelementptr inbounds %struct._event_path_data, ptr %23, i32 0, i32 17
  %24 = load ptr, ptr %externs14, align 8, !tbaa !56
  %25 = load i32, ptr %count11, align 4, !tbaa !8
  %inc15 = add nsw i32 %25, 1
  store i32 %inc15, ptr %count11, align 4, !tbaa !8
  %idxprom16 = sext i32 %inc15 to i64
  %arrayidx17 = getelementptr inbounds %struct._extern_routine_struct, ptr %24, i64 %idxprom16
  %extern_decl = getelementptr inbounds %struct._extern_routine_struct, ptr %arrayidx17, i32 0, i32 0
  %26 = load ptr, ptr %extern_decl, align 8, !tbaa !57
  %cmp18 = icmp ne ptr %26, null
  br i1 %cmp18, label %while.body19, label %while.end31

while.body19:                                     ; preds = %while.cond12
  %27 = load ptr, ptr %parse_context, align 8, !tbaa !4
  %28 = load ptr, ptr %cm.addr, align 8, !tbaa !4
  %evp20 = getelementptr inbounds %struct._CManager, ptr %28, i32 0, i32 28
  %29 = load ptr, ptr %evp20, align 8, !tbaa !51
  %externs21 = getelementptr inbounds %struct._event_path_data, ptr %29, i32 0, i32 17
  %30 = load ptr, ptr %externs21, align 8, !tbaa !56
  %31 = load i32, ptr %count11, align 4, !tbaa !8
  %idxprom22 = sext i32 %31 to i64
  %arrayidx23 = getelementptr inbounds %struct._extern_routine_struct, ptr %30, i64 %idxprom22
  %externs24 = getelementptr inbounds %struct._extern_routine_struct, ptr %arrayidx23, i32 0, i32 1
  %32 = load ptr, ptr %externs24, align 8, !tbaa !59
  call void @cod_assoc_externs(ptr noundef %27, ptr noundef %32)
  %33 = load ptr, ptr %cm.addr, align 8, !tbaa !4
  %evp25 = getelementptr inbounds %struct._CManager, ptr %33, i32 0, i32 28
  %34 = load ptr, ptr %evp25, align 8, !tbaa !51
  %externs26 = getelementptr inbounds %struct._event_path_data, ptr %34, i32 0, i32 17
  %35 = load ptr, ptr %externs26, align 8, !tbaa !56
  %36 = load i32, ptr %count11, align 4, !tbaa !8
  %idxprom27 = sext i32 %36 to i64
  %arrayidx28 = getelementptr inbounds %struct._extern_routine_struct, ptr %35, i64 %idxprom27
  %extern_decl29 = getelementptr inbounds %struct._extern_routine_struct, ptr %arrayidx28, i32 0, i32 0
  %37 = load ptr, ptr %extern_decl29, align 8, !tbaa !57
  %38 = load ptr, ptr %parse_context, align 8, !tbaa !4
  %call30 = call i32 @cod_parse_for_context(ptr noundef %37, ptr noundef %38)
  br label %while.cond12

while.end31:                                      ; preds = %while.cond12
  call void @llvm.lifetime.end.p0(i64 4, ptr %count11) #11
  br label %if.end32

if.end32:                                         ; preds = %while.end31, %if.end
  %39 = load ptr, ptr %mrd.addr, align 8, !tbaa !4
  %response_type = getelementptr inbounds %struct.response_spec, ptr %39, i32 0, i32 0
  %40 = load i32, ptr %response_type, align 8, !tbaa !12
  switch i32 %40, label %sw.epilog [
    i32 0, label %sw.bb
    i32 2, label %sw.bb
    i32 1, label %sw.bb
    i32 3, label %sw.bb41
  ]

sw.bb:                                            ; preds = %if.end32, %if.end32, %if.end32
  %41 = load ptr, ptr %parse_context, align 8, !tbaa !4
  call void @cod_add_param(ptr noundef @.str.46, ptr noundef @.str.47, i32 noundef 0, ptr noundef %41)
  %42 = load ptr, ptr %format.addr, align 8, !tbaa !4
  %tobool33 = icmp ne ptr %42, null
  br i1 %tobool33, label %if.then34, label %if.else

if.then34:                                        ; preds = %sw.bb
  %43 = load ptr, ptr %parse_context, align 8, !tbaa !4
  %44 = load ptr, ptr %format.addr, align 8, !tbaa !4
  call void @add_param(ptr noundef %43, ptr noundef @.str.48, i32 noundef 1, ptr noundef %44)
  br label %if.end35

if.else:                                          ; preds = %sw.bb
  %45 = load ptr, ptr %parse_context, align 8, !tbaa !4
  call void @cod_add_param(ptr noundef @.str.48, ptr noundef @.str.49, i32 noundef 1, ptr noundef %45)
  br label %if.end35

if.end35:                                         ; preds = %if.else, %if.then34
  %46 = load ptr, ptr %mrd.addr, align 8, !tbaa !4
  %response_type36 = getelementptr inbounds %struct.response_spec, ptr %46, i32 0, i32 0
  %47 = load i32, ptr %response_type36, align 8, !tbaa !12
  %cmp37 = icmp eq i32 %47, 1
  br i1 %cmp37, label %if.then38, label %if.else39

if.then38:                                        ; preds = %if.end35
  %48 = load ptr, ptr %parse_context, align 8, !tbaa !4
  %49 = load ptr, ptr %mrd.addr, align 8, !tbaa !4
  %u = getelementptr inbounds %struct.response_spec, ptr %49, i32 0, i32 1
  %reference_output_format = getelementptr inbounds %struct.transform_spec, ptr %u, i32 0, i32 5
  %50 = load ptr, ptr %reference_output_format, align 8, !tbaa !14
  call void @add_param(ptr noundef %48, ptr noundef @.str.50, i32 noundef 2, ptr noundef %50)
  %51 = load ptr, ptr %parse_context, align 8, !tbaa !4
  call void @cod_add_param(ptr noundef @.str.51, ptr noundef @.str.52, i32 noundef 3, ptr noundef %51)
  %52 = load ptr, ptr %parse_context, align 8, !tbaa !4
  call void @cod_add_param(ptr noundef @.str.53, ptr noundef @.str.52, i32 noundef 4, ptr noundef %52)
  br label %if.end40

if.else39:                                        ; preds = %if.end35
  %53 = load ptr, ptr %parse_context, align 8, !tbaa !4
  call void @cod_add_param(ptr noundef @.str.51, ptr noundef @.str.52, i32 noundef 2, ptr noundef %53)
  br label %if.end40

if.end40:                                         ; preds = %if.else39, %if.then38
  br label %sw.epilog

sw.bb41:                                          ; preds = %if.end32
  call void @__assert_fail(ptr noundef @.str.27, ptr noundef @.str.28, i32 noundef 2153, ptr noundef @__PRETTY_FUNCTION__.generate_filter_code) #16
  unreachable

sw.epilog:                                        ; preds = %if.end32, %if.end40
  %54 = load ptr, ptr %mrd.addr, align 8, !tbaa !4
  %response_type42 = getelementptr inbounds %struct.response_spec, ptr %54, i32 0, i32 0
  %55 = load i32, ptr %response_type42, align 8, !tbaa !12
  switch i32 %55, label %sw.epilog144 [
    i32 0, label %sw.bb43
    i32 2, label %sw.bb43
    i32 1, label %sw.bb88
    i32 3, label %sw.epilog144
  ]

sw.bb43:                                          ; preds = %sw.epilog, %sw.epilog
  %56 = load ptr, ptr %mrd.addr, align 8, !tbaa !4
  %u44 = getelementptr inbounds %struct.response_spec, ptr %56, i32 0, i32 1
  %function = getelementptr inbounds %struct.filter_spec, ptr %u44, i32 0, i32 1
  %57 = load ptr, ptr %function, align 8, !tbaa !14
  %call45 = call i32 @dll_prefix_present(ptr noundef %57)
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %if.then47, label %if.else72

if.then47:                                        ; preds = %sw.bb43
  call void @llvm.lifetime.start.p0(i64 8, ptr %path) #11
  store ptr null, ptr %path, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %symbol_name) #11
  store ptr null, ptr %symbol_name, align 8, !tbaa !4
  %58 = load ptr, ptr %mrd.addr, align 8, !tbaa !4
  %u48 = getelementptr inbounds %struct.response_spec, ptr %58, i32 0, i32 1
  %function49 = getelementptr inbounds %struct.filter_spec, ptr %u48, i32 0, i32 1
  %59 = load ptr, ptr %function49, align 8, !tbaa !14
  %call50 = call ptr @extract_dll_path(ptr noundef %59)
  store ptr %call50, ptr %path, align 8, !tbaa !4
  %60 = load ptr, ptr %mrd.addr, align 8, !tbaa !4
  %u51 = getelementptr inbounds %struct.response_spec, ptr %60, i32 0, i32 1
  %function52 = getelementptr inbounds %struct.filter_spec, ptr %u51, i32 0, i32 1
  %61 = load ptr, ptr %function52, align 8, !tbaa !14
  %call53 = call ptr @extract_symbol_name(ptr noundef %61)
  store ptr %call53, ptr %symbol_name, align 8, !tbaa !4
  %62 = load ptr, ptr %path, align 8, !tbaa !4
  %tobool54 = icmp ne ptr %62, null
  br i1 %tobool54, label %lor.lhs.false, label %if.then56

lor.lhs.false:                                    ; preds = %if.then47
  %63 = load ptr, ptr %symbol_name, align 8, !tbaa !4
  %tobool55 = icmp ne ptr %63, null
  br i1 %tobool55, label %if.end60, label %if.then56

if.then56:                                        ; preds = %lor.lhs.false, %if.then47
  %64 = load ptr, ptr @stderr, align 8, !tbaa !4
  %65 = load ptr, ptr %mrd.addr, align 8, !tbaa !4
  %u57 = getelementptr inbounds %struct.response_spec, ptr %65, i32 0, i32 1
  %function58 = getelementptr inbounds %struct.filter_spec, ptr %u57, i32 0, i32 1
  %66 = load ptr, ptr %function58, align 8, !tbaa !14
  %call59 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %64, ptr noundef @.str.54, ptr noundef %66)
  %67 = load ptr, ptr %instance, align 8, !tbaa !4
  call void @free(ptr noundef %67) #11
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end60:                                         ; preds = %lor.lhs.false
  %68 = load ptr, ptr %cm.addr, align 8, !tbaa !4
  %69 = load ptr, ptr %path, align 8, !tbaa !4
  %70 = load ptr, ptr %symbol_name, align 8, !tbaa !4
  %call61 = call ptr @load_dll_symbol(ptr noundef %68, ptr noundef %69, ptr noundef %70)
  %71 = load ptr, ptr %instance, align 8, !tbaa !4
  %u62 = getelementptr inbounds %struct.response_instance, ptr %71, i32 0, i32 3
  %func_ptr = getelementptr inbounds %struct.filter_instance, ptr %u62, i32 0, i32 0
  store ptr %call61, ptr %func_ptr, align 8, !tbaa !14
  %72 = load ptr, ptr %instance, align 8, !tbaa !4
  %u63 = getelementptr inbounds %struct.response_instance, ptr %72, i32 0, i32 3
  %func_ptr64 = getelementptr inbounds %struct.filter_instance, ptr %u63, i32 0, i32 0
  %73 = load ptr, ptr %func_ptr64, align 8, !tbaa !14
  %cmp65 = icmp eq ptr %73, null
  br i1 %cmp65, label %if.then66, label %if.end68

if.then66:                                        ; preds = %if.end60
  %74 = load ptr, ptr @stderr, align 8, !tbaa !4
  %75 = load ptr, ptr %symbol_name, align 8, !tbaa !4
  %76 = load ptr, ptr %path, align 8, !tbaa !4
  %call67 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %74, ptr noundef @.str.55, ptr noundef %75, ptr noundef %76)
  %77 = load ptr, ptr %instance, align 8, !tbaa !4
  call void @free(ptr noundef %77) #11
  %78 = load ptr, ptr %path, align 8, !tbaa !4
  call void @free(ptr noundef %78) #11
  %79 = load ptr, ptr %symbol_name, align 8, !tbaa !4
  call void @free(ptr noundef %79) #11
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end68:                                         ; preds = %if.end60
  %80 = load ptr, ptr %symbol_name, align 8, !tbaa !4
  call void @free(ptr noundef %80) #11
  %81 = load ptr, ptr %path, align 8, !tbaa !4
  call void @free(ptr noundef %81) #11
  %82 = load ptr, ptr %instance, align 8, !tbaa !4
  %u69 = getelementptr inbounds %struct.response_instance, ptr %82, i32 0, i32 3
  %code70 = getelementptr inbounds %struct.filter_instance, ptr %u69, i32 0, i32 1
  store ptr null, ptr %code70, align 8, !tbaa !14
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end68, %if.then66, %if.then56
  call void @llvm.lifetime.end.p0(i64 8, ptr %symbol_name) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %path) #11
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup145 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end87

if.else72:                                        ; preds = %sw.bb43
  %83 = load ptr, ptr %mrd.addr, align 8, !tbaa !4
  %u73 = getelementptr inbounds %struct.response_spec, ptr %83, i32 0, i32 1
  %function74 = getelementptr inbounds %struct.filter_spec, ptr %u73, i32 0, i32 1
  %84 = load ptr, ptr %function74, align 8, !tbaa !14
  %85 = load ptr, ptr %parse_context, align 8, !tbaa !4
  %call75 = call ptr @cod_code_gen(ptr noundef %84, ptr noundef %85)
  store ptr %call75, ptr %code, align 8, !tbaa !4
  %86 = load ptr, ptr %mrd.addr, align 8, !tbaa !4
  %response_type76 = getelementptr inbounds %struct.response_spec, ptr %86, i32 0, i32 0
  %87 = load i32, ptr %response_type76, align 8, !tbaa !12
  %88 = load ptr, ptr %instance, align 8, !tbaa !4
  %response_type77 = getelementptr inbounds %struct.response_instance, ptr %88, i32 0, i32 0
  store i32 %87, ptr %response_type77, align 8, !tbaa !60
  %89 = load ptr, ptr %code, align 8, !tbaa !4
  %90 = load ptr, ptr %instance, align 8, !tbaa !4
  %u78 = getelementptr inbounds %struct.response_instance, ptr %90, i32 0, i32 3
  %code79 = getelementptr inbounds %struct.filter_instance, ptr %u78, i32 0, i32 1
  store ptr %89, ptr %code79, align 8, !tbaa !14
  %91 = load ptr, ptr %code, align 8, !tbaa !4
  %tobool80 = icmp ne ptr %91, null
  br i1 %tobool80, label %if.then81, label %if.end84

if.then81:                                        ; preds = %if.else72
  %92 = load ptr, ptr %code, align 8, !tbaa !4
  %call82 = call ptr @cod_create_exec_context(ptr noundef %92)
  %93 = load ptr, ptr %instance, align 8, !tbaa !4
  %u83 = getelementptr inbounds %struct.response_instance, ptr %93, i32 0, i32 3
  %ec = getelementptr inbounds %struct.filter_instance, ptr %u83, i32 0, i32 2
  store ptr %call82, ptr %ec, align 8, !tbaa !14
  br label %if.end84

if.end84:                                         ; preds = %if.then81, %if.else72
  %94 = load ptr, ptr %instance, align 8, !tbaa !4
  %u85 = getelementptr inbounds %struct.response_instance, ptr %94, i32 0, i32 3
  %func_ptr86 = getelementptr inbounds %struct.filter_instance, ptr %u85, i32 0, i32 0
  store ptr null, ptr %func_ptr86, align 8, !tbaa !14
  br label %if.end87

if.end87:                                         ; preds = %if.end84, %cleanup.cont
  br label %sw.epilog144

sw.bb88:                                          ; preds = %sw.epilog
  %95 = load ptr, ptr %mrd.addr, align 8, !tbaa !4
  %u89 = getelementptr inbounds %struct.response_spec, ptr %95, i32 0, i32 1
  %function90 = getelementptr inbounds %struct.transform_spec, ptr %u89, i32 0, i32 2
  %96 = load ptr, ptr %function90, align 8, !tbaa !14
  %call91 = call i32 @dll_prefix_present(ptr noundef %96)
  %tobool92 = icmp ne i32 %call91, 0
  br i1 %tobool92, label %if.then93, label %if.else125

if.then93:                                        ; preds = %sw.bb88
  call void @llvm.lifetime.start.p0(i64 8, ptr %path94) #11
  store ptr null, ptr %path94, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %symbol_name95) #11
  store ptr null, ptr %symbol_name95, align 8, !tbaa !4
  %97 = load ptr, ptr %mrd.addr, align 8, !tbaa !4
  %u96 = getelementptr inbounds %struct.response_spec, ptr %97, i32 0, i32 1
  %function97 = getelementptr inbounds %struct.transform_spec, ptr %u96, i32 0, i32 2
  %98 = load ptr, ptr %function97, align 8, !tbaa !14
  %call98 = call ptr @extract_dll_path(ptr noundef %98)
  store ptr %call98, ptr %path94, align 8, !tbaa !4
  %99 = load ptr, ptr %mrd.addr, align 8, !tbaa !4
  %u99 = getelementptr inbounds %struct.response_spec, ptr %99, i32 0, i32 1
  %function100 = getelementptr inbounds %struct.transform_spec, ptr %u99, i32 0, i32 2
  %100 = load ptr, ptr %function100, align 8, !tbaa !14
  %call101 = call ptr @extract_symbol_name(ptr noundef %100)
  store ptr %call101, ptr %symbol_name95, align 8, !tbaa !4
  %101 = load ptr, ptr %path94, align 8, !tbaa !4
  %tobool102 = icmp ne ptr %101, null
  br i1 %tobool102, label %lor.lhs.false103, label %if.then105

lor.lhs.false103:                                 ; preds = %if.then93
  %102 = load ptr, ptr %symbol_name95, align 8, !tbaa !4
  %tobool104 = icmp ne ptr %102, null
  br i1 %tobool104, label %if.end109, label %if.then105

if.then105:                                       ; preds = %lor.lhs.false103, %if.then93
  %103 = load ptr, ptr @stderr, align 8, !tbaa !4
  %104 = load ptr, ptr %mrd.addr, align 8, !tbaa !4
  %u106 = getelementptr inbounds %struct.response_spec, ptr %104, i32 0, i32 1
  %function107 = getelementptr inbounds %struct.transform_spec, ptr %u106, i32 0, i32 2
  %105 = load ptr, ptr %function107, align 8, !tbaa !14
  %call108 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %103, ptr noundef @.str.54, ptr noundef %105)
  %106 = load ptr, ptr %instance, align 8, !tbaa !4
  call void @free(ptr noundef %106) #11
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup121

if.end109:                                        ; preds = %lor.lhs.false103
  %107 = load ptr, ptr %cm.addr, align 8, !tbaa !4
  %108 = load ptr, ptr %path94, align 8, !tbaa !4
  %109 = load ptr, ptr %symbol_name95, align 8, !tbaa !4
  %call110 = call ptr @load_dll_symbol(ptr noundef %107, ptr noundef %108, ptr noundef %109)
  %110 = load ptr, ptr %instance, align 8, !tbaa !4
  %u111 = getelementptr inbounds %struct.response_instance, ptr %110, i32 0, i32 3
  %func_ptr112 = getelementptr inbounds %struct.transform_instance, ptr %u111, i32 0, i32 0
  store ptr %call110, ptr %func_ptr112, align 8, !tbaa !14
  %111 = load ptr, ptr %instance, align 8, !tbaa !4
  %u113 = getelementptr inbounds %struct.response_instance, ptr %111, i32 0, i32 3
  %func_ptr114 = getelementptr inbounds %struct.transform_instance, ptr %u113, i32 0, i32 0
  %112 = load ptr, ptr %func_ptr114, align 8, !tbaa !14
  %cmp115 = icmp eq ptr %112, null
  br i1 %cmp115, label %if.then116, label %if.end118

if.then116:                                       ; preds = %if.end109
  %113 = load ptr, ptr @stderr, align 8, !tbaa !4
  %114 = load ptr, ptr %symbol_name95, align 8, !tbaa !4
  %115 = load ptr, ptr %path94, align 8, !tbaa !4
  %call117 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %113, ptr noundef @.str.55, ptr noundef %114, ptr noundef %115)
  %116 = load ptr, ptr %instance, align 8, !tbaa !4
  call void @free(ptr noundef %116) #11
  %117 = load ptr, ptr %path94, align 8, !tbaa !4
  call void @free(ptr noundef %117) #11
  %118 = load ptr, ptr %symbol_name95, align 8, !tbaa !4
  call void @free(ptr noundef %118) #11
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup121

if.end118:                                        ; preds = %if.end109
  %119 = load ptr, ptr %instance, align 8, !tbaa !4
  %u119 = getelementptr inbounds %struct.response_instance, ptr %119, i32 0, i32 3
  %code120 = getelementptr inbounds %struct.transform_instance, ptr %u119, i32 0, i32 1
  store ptr null, ptr %code120, align 8, !tbaa !14
  %120 = load ptr, ptr %path94, align 8, !tbaa !4
  call void @free(ptr noundef %120) #11
  %121 = load ptr, ptr %symbol_name95, align 8, !tbaa !4
  call void @free(ptr noundef %121) #11
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup121

cleanup121:                                       ; preds = %if.end118, %if.then116, %if.then105
  call void @llvm.lifetime.end.p0(i64 8, ptr %symbol_name95) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %path94) #11
  %cleanup.dest123 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest123, label %cleanup145 [
    i32 0, label %cleanup.cont124
  ]

cleanup.cont124:                                  ; preds = %cleanup121
  br label %if.end138

if.else125:                                       ; preds = %sw.bb88
  %122 = load ptr, ptr %mrd.addr, align 8, !tbaa !4
  %u126 = getelementptr inbounds %struct.response_spec, ptr %122, i32 0, i32 1
  %function127 = getelementptr inbounds %struct.transform_spec, ptr %u126, i32 0, i32 2
  %123 = load ptr, ptr %function127, align 8, !tbaa !14
  %124 = load ptr, ptr %parse_context, align 8, !tbaa !4
  %call128 = call ptr @cod_code_gen(ptr noundef %123, ptr noundef %124)
  store ptr %call128, ptr %code, align 8, !tbaa !4
  %125 = load ptr, ptr %instance, align 8, !tbaa !4
  %response_type129 = getelementptr inbounds %struct.response_instance, ptr %125, i32 0, i32 0
  store i32 1, ptr %response_type129, align 8, !tbaa !60
  %126 = load ptr, ptr %code, align 8, !tbaa !4
  %127 = load ptr, ptr %instance, align 8, !tbaa !4
  %u130 = getelementptr inbounds %struct.response_instance, ptr %127, i32 0, i32 3
  %code131 = getelementptr inbounds %struct.transform_instance, ptr %u130, i32 0, i32 1
  store ptr %126, ptr %code131, align 8, !tbaa !14
  %128 = load ptr, ptr %code, align 8, !tbaa !4
  %tobool132 = icmp ne ptr %128, null
  br i1 %tobool132, label %if.then133, label %if.end137

if.then133:                                       ; preds = %if.else125
  %129 = load ptr, ptr %code, align 8, !tbaa !4
  %call134 = call ptr @cod_create_exec_context(ptr noundef %129)
  %130 = load ptr, ptr %instance, align 8, !tbaa !4
  %u135 = getelementptr inbounds %struct.response_instance, ptr %130, i32 0, i32 3
  %ec136 = getelementptr inbounds %struct.transform_instance, ptr %u135, i32 0, i32 2
  store ptr %call134, ptr %ec136, align 8, !tbaa !14
  br label %if.end137

if.end137:                                        ; preds = %if.then133, %if.else125
  br label %if.end138

if.end138:                                        ; preds = %if.end137, %cleanup.cont124
  %131 = load ptr, ptr %mrd.addr, align 8, !tbaa !4
  %u139 = getelementptr inbounds %struct.response_spec, ptr %131, i32 0, i32 1
  %output_base_struct_size = getelementptr inbounds %struct.transform_spec, ptr %u139, i32 0, i32 7
  %132 = load i32, ptr %output_base_struct_size, align 8, !tbaa !14
  %133 = load ptr, ptr %instance, align 8, !tbaa !4
  %u140 = getelementptr inbounds %struct.response_instance, ptr %133, i32 0, i32 3
  %out_size = getelementptr inbounds %struct.transform_instance, ptr %u140, i32 0, i32 3
  store i32 %132, ptr %out_size, align 8, !tbaa !14
  %134 = load ptr, ptr %mrd.addr, align 8, !tbaa !4
  %u141 = getelementptr inbounds %struct.response_spec, ptr %134, i32 0, i32 1
  %reference_output_format142 = getelementptr inbounds %struct.transform_spec, ptr %u141, i32 0, i32 5
  %135 = load ptr, ptr %reference_output_format142, align 8, !tbaa !14
  %136 = load ptr, ptr %instance, align 8, !tbaa !4
  %u143 = getelementptr inbounds %struct.response_instance, ptr %136, i32 0, i32 3
  %out_format = getelementptr inbounds %struct.transform_instance, ptr %u143, i32 0, i32 5
  store ptr %135, ptr %out_format, align 8, !tbaa !14
  br label %sw.epilog144

sw.epilog144:                                     ; preds = %sw.epilog, %sw.epilog, %if.end138, %if.end87
  %137 = load ptr, ptr %parse_context, align 8, !tbaa !4
  call void @cod_free_parse_context(ptr noundef %137)
  %138 = load ptr, ptr %instance, align 8, !tbaa !4
  store ptr %138, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup145

cleanup145:                                       ; preds = %sw.epilog144, %cleanup121, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %parse_context) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %code) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %instance) #11
  %139 = load ptr, ptr %retval, align 8
  ret ptr %139
}

declare i32 @INT_EVassoc_mutated_imm_action(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: nounwind uwtable
define internal i32 @filter_wrapper(ptr noundef %cm, ptr noundef %event, ptr noundef %client_data, ptr noundef %attrs, i32 noundef %out_count, ptr noundef %out_stones) #0 {
entry:
  %cm.addr = alloca ptr, align 8
  %event.addr = alloca ptr, align 8
  %client_data.addr = alloca ptr, align 8
  %attrs.addr = alloca ptr, align 8
  %out_count.addr = alloca i32, align 4
  %out_stones.addr = alloca ptr, align 8
  %instance = alloca ptr, align 8
  %ret = alloca i32, align 4
  %ec = alloca ptr, align 8
  %ev_state = alloca %struct.ev_state_data, align 8
  %ts = alloca %struct.timespec, align 8
  %ts40 = alloca %struct.timespec, align 8
  store ptr %cm, ptr %cm.addr, align 8, !tbaa !4
  store ptr %event, ptr %event.addr, align 8, !tbaa !4
  store ptr %client_data, ptr %client_data.addr, align 8, !tbaa !4
  store ptr %attrs, ptr %attrs.addr, align 8, !tbaa !4
  store i32 %out_count, ptr %out_count.addr, align 4, !tbaa !8
  store ptr %out_stones, ptr %out_stones.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %instance) #11
  %0 = load ptr, ptr %client_data.addr, align 8, !tbaa !4
  store ptr %0, ptr %instance, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %ec) #11
  %1 = load ptr, ptr %instance, align 8, !tbaa !4
  %u = getelementptr inbounds %struct.response_instance, ptr %1, i32 0, i32 3
  %ec1 = getelementptr inbounds %struct.filter_instance, ptr %u, i32 0, i32 2
  %2 = load ptr, ptr %ec1, align 8, !tbaa !14
  store ptr %2, ptr %ec, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 72, ptr %ev_state) #11
  %3 = load ptr, ptr %cm.addr, align 8, !tbaa !4
  %cm2 = getelementptr inbounds %struct.ev_state_data, ptr %ev_state, i32 0, i32 0
  store ptr %3, ptr %cm2, align 8, !tbaa !25
  %4 = load ptr, ptr %event.addr, align 8, !tbaa !4
  %cur_event = getelementptr inbounds %struct.ev_state_data, ptr %ev_state, i32 0, i32 1
  store ptr %4, ptr %cur_event, align 8, !tbaa !61
  %5 = load i32, ptr %out_count.addr, align 4, !tbaa !8
  %out_count3 = getelementptr inbounds %struct.ev_state_data, ptr %ev_state, i32 0, i32 4
  store i32 %5, ptr %out_count3, align 8, !tbaa !62
  %6 = load ptr, ptr %out_stones.addr, align 8, !tbaa !4
  %out_stones4 = getelementptr inbounds %struct.ev_state_data, ptr %ev_state, i32 0, i32 5
  store ptr %6, ptr %out_stones4, align 8, !tbaa !63
  %7 = load ptr, ptr %ec, align 8, !tbaa !4
  %cmp = icmp ne ptr %7, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %ec, align 8, !tbaa !4
  %9 = ptrtoint ptr %ev_state to i64
  call void @cod_assoc_client_data(ptr noundef %8, i32 noundef 878082192, i64 noundef %9)
  %10 = load ptr, ptr %instance, align 8, !tbaa !4
  %u5 = getelementptr inbounds %struct.response_instance, ptr %10, i32 0, i32 3
  %code = getelementptr inbounds %struct.filter_instance, ptr %u5, i32 0, i32 1
  %11 = load ptr, ptr %code, align 8, !tbaa !14
  %func = getelementptr inbounds %struct._cod_code_struct, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %func, align 8, !tbaa !64
  %13 = load ptr, ptr %ec, align 8, !tbaa !4
  %14 = load ptr, ptr %event.addr, align 8, !tbaa !4
  %decoded_event = getelementptr inbounds %struct._event_item, ptr %14, i32 0, i32 5
  %15 = load ptr, ptr %decoded_event, align 8, !tbaa !66
  %16 = load ptr, ptr %attrs.addr, align 8, !tbaa !4
  %call = call i32 %12(ptr noundef %13, ptr noundef %15, ptr noundef %16)
  store i32 %call, ptr %ret, align 4, !tbaa !8
  br label %if.end

if.else:                                          ; preds = %entry
  %17 = load ptr, ptr %instance, align 8, !tbaa !4
  %u6 = getelementptr inbounds %struct.response_instance, ptr %17, i32 0, i32 3
  %func_ptr = getelementptr inbounds %struct.filter_instance, ptr %u6, i32 0, i32 0
  %18 = load ptr, ptr %func_ptr, align 8, !tbaa !14
  %19 = load ptr, ptr %event.addr, align 8, !tbaa !4
  %decoded_event7 = getelementptr inbounds %struct._event_item, ptr %19, i32 0, i32 5
  %20 = load ptr, ptr %decoded_event7, align 8, !tbaa !66
  %21 = load ptr, ptr %attrs.addr, align 8, !tbaa !4
  %call8 = call i32 %18(ptr noundef %20, ptr noundef %21)
  store i32 %call8, ptr %ret, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %22 = load i32, ptr %ret, align 4, !tbaa !8
  %tobool = icmp ne i32 %22, 0
  br i1 %tobool, label %if.then9, label %if.else39

if.then9:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 16, ptr %ts) #11
  %23 = load ptr, ptr %cm.addr, align 8, !tbaa !4
  %CMTrace_file = getelementptr inbounds %struct._CManager, ptr %23, i32 0, i32 29
  %24 = load ptr, ptr %CMTrace_file, align 8, !tbaa !67
  %cmp10 = icmp eq ptr %24, null
  br i1 %cmp10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then9
  %25 = load ptr, ptr %cm.addr, align 8, !tbaa !4
  %call11 = call i32 @CMtrace_init(ptr noundef %25, i32 noundef 10)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %cond.true14, label %cond.false32

cond.false:                                       ; preds = %if.then9
  %26 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @CMtrace_val, i64 0, i64 10), align 4, !tbaa !8
  %tobool13 = icmp ne i32 %26, 0
  br i1 %tobool13, label %cond.true14, label %cond.false32

cond.true14:                                      ; preds = %cond.false, %cond.true
  %27 = load i32, ptr @CMtrace_PID, align 4, !tbaa !8
  %tobool15 = icmp ne i32 %27, 0
  br i1 %tobool15, label %cond.true16, label %cond.false21

cond.true16:                                      ; preds = %cond.true14
  %28 = load ptr, ptr %cm.addr, align 8, !tbaa !4
  %CMTrace_file17 = getelementptr inbounds %struct._CManager, ptr %28, i32 0, i32 29
  %29 = load ptr, ptr %CMTrace_file17, align 8, !tbaa !67
  %call18 = call i32 @getpid() #11
  %conv = sext i32 %call18 to i64
  %call19 = call i64 @pthread_self() #14
  %call20 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %29, ptr noundef @.str.33, i64 noundef %conv, i64 noundef %call19)
  br label %cond.end

cond.false21:                                     ; preds = %cond.true14
  br label %cond.end

cond.end:                                         ; preds = %cond.false21, %cond.true16
  %cond = phi i32 [ %call20, %cond.true16 ], [ 0, %cond.false21 ]
  %30 = load i32, ptr @CMtrace_timing, align 4, !tbaa !8
  %tobool22 = icmp ne i32 %30, 0
  br i1 %tobool22, label %cond.true23, label %cond.false27

cond.true23:                                      ; preds = %cond.end
  %call24 = call i32 @clock_gettime(i32 noundef 1, ptr noundef %ts) #11
  %31 = load ptr, ptr %cm.addr, align 8, !tbaa !4
  %CMTrace_file25 = getelementptr inbounds %struct._CManager, ptr %31, i32 0, i32 29
  %32 = load ptr, ptr %CMTrace_file25, align 8, !tbaa !67
  %tv_sec = getelementptr inbounds %struct.timespec, ptr %ts, i32 0, i32 0
  %33 = load i64, ptr %tv_sec, align 8, !tbaa !68
  %tv_nsec = getelementptr inbounds %struct.timespec, ptr %ts, i32 0, i32 1
  %34 = load i64, ptr %tv_nsec, align 8, !tbaa !70
  %call26 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef @.str.34, i64 noundef %33, i64 noundef %34)
  br label %cond.end28

cond.false27:                                     ; preds = %cond.end
  br label %cond.end28

cond.end28:                                       ; preds = %cond.false27, %cond.true23
  %cond29 = phi i32 [ %call26, %cond.true23 ], [ 0, %cond.false27 ]
  %35 = load ptr, ptr %cm.addr, align 8, !tbaa !4
  %CMTrace_file30 = getelementptr inbounds %struct._CManager, ptr %35, i32 0, i32 29
  %36 = load ptr, ptr %CMTrace_file30, align 8, !tbaa !67
  %37 = load i32, ptr %ret, align 4, !tbaa !8
  %38 = load ptr, ptr %out_stones.addr, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds i32, ptr %38, i64 0
  %39 = load i32, ptr %arrayidx, align 4, !tbaa !8
  %call31 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %36, ptr noundef @.str.35, i32 noundef %37, i32 noundef %39)
  br label %cond.end33

cond.false32:                                     ; preds = %cond.false, %cond.true
  br label %cond.end33

cond.end33:                                       ; preds = %cond.false32, %cond.end28
  %cond34 = phi i32 [ %call31, %cond.end28 ], [ 0, %cond.false32 ]
  %40 = load ptr, ptr %cm.addr, align 8, !tbaa !4
  %CMTrace_file35 = getelementptr inbounds %struct._CManager, ptr %40, i32 0, i32 29
  %41 = load ptr, ptr %CMTrace_file35, align 8, !tbaa !67
  %call36 = call i32 @fflush(ptr noundef %41)
  call void @llvm.lifetime.end.p0(i64 16, ptr %ts) #11
  %42 = load ptr, ptr %cm.addr, align 8, !tbaa !4
  %43 = load ptr, ptr %out_stones.addr, align 8, !tbaa !4
  %arrayidx37 = getelementptr inbounds i32, ptr %43, i64 0
  %44 = load i32, ptr %arrayidx37, align 4, !tbaa !8
  %45 = load ptr, ptr %event.addr, align 8, !tbaa !4
  %call38 = call i32 @internal_path_submit(ptr noundef %42, i32 noundef %44, ptr noundef %45)
  br label %if.end77

if.else39:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 16, ptr %ts40) #11
  %46 = load ptr, ptr %cm.addr, align 8, !tbaa !4
  %CMTrace_file41 = getelementptr inbounds %struct._CManager, ptr %46, i32 0, i32 29
  %47 = load ptr, ptr %CMTrace_file41, align 8, !tbaa !67
  %cmp42 = icmp eq ptr %47, null
  br i1 %cmp42, label %cond.true44, label %cond.false47

cond.true44:                                      ; preds = %if.else39
  %48 = load ptr, ptr %cm.addr, align 8, !tbaa !4
  %call45 = call i32 @CMtrace_init(ptr noundef %48, i32 noundef 10)
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %cond.true49, label %cond.false72

cond.false47:                                     ; preds = %if.else39
  %49 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @CMtrace_val, i64 0, i64 10), align 4, !tbaa !8
  %tobool48 = icmp ne i32 %49, 0
  br i1 %tobool48, label %cond.true49, label %cond.false72

cond.true49:                                      ; preds = %cond.false47, %cond.true44
  %50 = load i32, ptr @CMtrace_PID, align 4, !tbaa !8
  %tobool50 = icmp ne i32 %50, 0
  br i1 %tobool50, label %cond.true51, label %cond.false57

cond.true51:                                      ; preds = %cond.true49
  %51 = load ptr, ptr %cm.addr, align 8, !tbaa !4
  %CMTrace_file52 = getelementptr inbounds %struct._CManager, ptr %51, i32 0, i32 29
  %52 = load ptr, ptr %CMTrace_file52, align 8, !tbaa !67
  %call53 = call i32 @getpid() #11
  %conv54 = sext i32 %call53 to i64
  %call55 = call i64 @pthread_self() #14
  %call56 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %52, ptr noundef @.str.33, i64 noundef %conv54, i64 noundef %call55)
  br label %cond.end58

cond.false57:                                     ; preds = %cond.true49
  br label %cond.end58

cond.end58:                                       ; preds = %cond.false57, %cond.true51
  %cond59 = phi i32 [ %call56, %cond.true51 ], [ 0, %cond.false57 ]
  %53 = load i32, ptr @CMtrace_timing, align 4, !tbaa !8
  %tobool60 = icmp ne i32 %53, 0
  br i1 %tobool60, label %cond.true61, label %cond.false67

cond.true61:                                      ; preds = %cond.end58
  %call62 = call i32 @clock_gettime(i32 noundef 1, ptr noundef %ts40) #11
  %54 = load ptr, ptr %cm.addr, align 8, !tbaa !4
  %CMTrace_file63 = getelementptr inbounds %struct._CManager, ptr %54, i32 0, i32 29
  %55 = load ptr, ptr %CMTrace_file63, align 8, !tbaa !67
  %tv_sec64 = getelementptr inbounds %struct.timespec, ptr %ts40, i32 0, i32 0
  %56 = load i64, ptr %tv_sec64, align 8, !tbaa !68
  %tv_nsec65 = getelementptr inbounds %struct.timespec, ptr %ts40, i32 0, i32 1
  %57 = load i64, ptr %tv_nsec65, align 8, !tbaa !70
  %call66 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %55, ptr noundef @.str.34, i64 noundef %56, i64 noundef %57)
  br label %cond.end68

cond.false67:                                     ; preds = %cond.end58
  br label %cond.end68

cond.end68:                                       ; preds = %cond.false67, %cond.true61
  %cond69 = phi i32 [ %call66, %cond.true61 ], [ 0, %cond.false67 ]
  %58 = load ptr, ptr %cm.addr, align 8, !tbaa !4
  %CMTrace_file70 = getelementptr inbounds %struct._CManager, ptr %58, i32 0, i32 29
  %59 = load ptr, ptr %CMTrace_file70, align 8, !tbaa !67
  %60 = load i32, ptr %ret, align 4, !tbaa !8
  %call71 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %59, ptr noundef @.str.36, i32 noundef %60)
  br label %cond.end73

cond.false72:                                     ; preds = %cond.false47, %cond.true44
  br label %cond.end73

cond.end73:                                       ; preds = %cond.false72, %cond.end68
  %cond74 = phi i32 [ %call71, %cond.end68 ], [ 0, %cond.false72 ]
  %61 = load ptr, ptr %cm.addr, align 8, !tbaa !4
  %CMTrace_file75 = getelementptr inbounds %struct._CManager, ptr %61, i32 0, i32 29
  %62 = load ptr, ptr %CMTrace_file75, align 8, !tbaa !67
  %call76 = call i32 @fflush(ptr noundef %62)
  call void @llvm.lifetime.end.p0(i64 16, ptr %ts40) #11
  br label %if.end77

if.end77:                                         ; preds = %cond.end73, %cond.end33
  %63 = load i32, ptr %ret, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 72, ptr %ev_state) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %ec) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %instance) #11
  ret i32 %63
}

; Function Attrs: nounwind uwtable
define internal void @free_imm_response(ptr noundef %client_data) #0 {
entry:
  %client_data.addr = alloca ptr, align 8
  %resp = alloca ptr, align 8
  store ptr %client_data, ptr %client_data.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %resp) #11
  %0 = load ptr, ptr %client_data.addr, align 8, !tbaa !4
  store ptr %0, ptr %resp, align 8, !tbaa !4
  %1 = load ptr, ptr %resp, align 8, !tbaa !4
  %response_type = getelementptr inbounds %struct.response_instance, ptr %1, i32 0, i32 0
  %2 = load i32, ptr %response_type, align 8, !tbaa !60
  switch i32 %2, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb
    i32 1, label %sw.bb9
  ]

sw.bb:                                            ; preds = %entry, %entry
  %3 = load ptr, ptr %resp, align 8, !tbaa !4
  %u = getelementptr inbounds %struct.response_instance, ptr %3, i32 0, i32 3
  %code = getelementptr inbounds %struct.filter_instance, ptr %u, i32 0, i32 1
  %4 = load ptr, ptr %code, align 8, !tbaa !14
  %tobool = icmp ne ptr %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %5 = load ptr, ptr %resp, align 8, !tbaa !4
  %u1 = getelementptr inbounds %struct.response_instance, ptr %5, i32 0, i32 3
  %code2 = getelementptr inbounds %struct.filter_instance, ptr %u1, i32 0, i32 1
  %6 = load ptr, ptr %code2, align 8, !tbaa !14
  call void @cod_code_free(ptr noundef %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  %7 = load ptr, ptr %resp, align 8, !tbaa !4
  %u3 = getelementptr inbounds %struct.response_instance, ptr %7, i32 0, i32 3
  %ec = getelementptr inbounds %struct.filter_instance, ptr %u3, i32 0, i32 2
  %8 = load ptr, ptr %ec, align 8, !tbaa !14
  %tobool4 = icmp ne ptr %8, null
  br i1 %tobool4, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  %9 = load ptr, ptr %resp, align 8, !tbaa !4
  %u6 = getelementptr inbounds %struct.response_instance, ptr %9, i32 0, i32 3
  %ec7 = getelementptr inbounds %struct.filter_instance, ptr %u6, i32 0, i32 2
  %10 = load ptr, ptr %ec7, align 8, !tbaa !14
  call void @cod_exec_context_free(ptr noundef %10)
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  %11 = load ptr, ptr %resp, align 8, !tbaa !4
  %u10 = getelementptr inbounds %struct.response_instance, ptr %11, i32 0, i32 3
  %code11 = getelementptr inbounds %struct.transform_instance, ptr %u10, i32 0, i32 1
  %12 = load ptr, ptr %code11, align 8, !tbaa !14
  %tobool12 = icmp ne ptr %12, null
  br i1 %tobool12, label %if.then13, label %if.end16

if.then13:                                        ; preds = %sw.bb9
  %13 = load ptr, ptr %resp, align 8, !tbaa !4
  %u14 = getelementptr inbounds %struct.response_instance, ptr %13, i32 0, i32 3
  %code15 = getelementptr inbounds %struct.transform_instance, ptr %u14, i32 0, i32 1
  %14 = load ptr, ptr %code15, align 8, !tbaa !14
  call void @cod_code_free(ptr noundef %14)
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %sw.bb9
  %15 = load ptr, ptr %resp, align 8, !tbaa !4
  %u17 = getelementptr inbounds %struct.response_instance, ptr %15, i32 0, i32 3
  %ec18 = getelementptr inbounds %struct.transform_instance, ptr %u17, i32 0, i32 2
  %16 = load ptr, ptr %ec18, align 8, !tbaa !14
  %tobool19 = icmp ne ptr %16, null
  br i1 %tobool19, label %if.then20, label %if.end23

if.then20:                                        ; preds = %if.end16
  %17 = load ptr, ptr %resp, align 8, !tbaa !4
  %u21 = getelementptr inbounds %struct.response_instance, ptr %17, i32 0, i32 3
  %ec22 = getelementptr inbounds %struct.transform_instance, ptr %u21, i32 0, i32 2
  %18 = load ptr, ptr %ec22, align 8, !tbaa !14
  call void @cod_exec_context_free(ptr noundef %18)
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %if.end16
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end23, %if.end8
  %19 = load ptr, ptr %resp, align 8, !tbaa !4
  call void @free(ptr noundef %19) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %resp) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @router_wrapper(ptr noundef %cm, ptr noundef %event, ptr noundef %client_data, ptr noundef %attrs, i32 noundef %out_count, ptr noundef %out_stones) #0 {
entry:
  %cm.addr = alloca ptr, align 8
  %event.addr = alloca ptr, align 8
  %client_data.addr = alloca ptr, align 8
  %attrs.addr = alloca ptr, align 8
  %out_count.addr = alloca i32, align 4
  %out_stones.addr = alloca ptr, align 8
  %instance = alloca ptr, align 8
  %ret = alloca i32, align 4
  %func = alloca ptr, align 8
  %ec = alloca ptr, align 8
  %ev_state = alloca %struct.ev_state_data, align 8
  %ts = alloca %struct.timespec, align 8
  %ts46 = alloca %struct.timespec, align 8
  %ts84 = alloca %struct.timespec, align 8
  %ts129 = alloca %struct.timespec, align 8
  store ptr %cm, ptr %cm.addr, align 8, !tbaa !4
  store ptr %event, ptr %event.addr, align 8, !tbaa !4
  store ptr %client_data, ptr %client_data.addr, align 8, !tbaa !4
  store ptr %attrs, ptr %attrs.addr, align 8, !tbaa !4
  store i32 %out_count, ptr %out_count.addr, align 4, !tbaa !8
  store ptr %out_stones, ptr %out_stones.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %instance) #11
  %0 = load ptr, ptr %client_data.addr, align 8, !tbaa !4
  store ptr %0, ptr %instance, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #11
  %1 = load ptr, ptr %instance, align 8, !tbaa !4
  %u = getelementptr inbounds %struct.response_instance, ptr %1, i32 0, i32 3
  %func_ptr = getelementptr inbounds %struct.filter_instance, ptr %u, i32 0, i32 0
  %2 = load ptr, ptr %func_ptr, align 8, !tbaa !14
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %instance, align 8, !tbaa !4
  %u1 = getelementptr inbounds %struct.response_instance, ptr %3, i32 0, i32 3
  %func_ptr2 = getelementptr inbounds %struct.filter_instance, ptr %u1, i32 0, i32 0
  %4 = load ptr, ptr %func_ptr2, align 8, !tbaa !14
  %5 = load ptr, ptr %event.addr, align 8, !tbaa !4
  %decoded_event = getelementptr inbounds %struct._event_item, ptr %5, i32 0, i32 5
  %6 = load ptr, ptr %decoded_event, align 8, !tbaa !66
  %7 = load ptr, ptr %attrs.addr, align 8, !tbaa !4
  %call = call i32 %4(ptr noundef %6, ptr noundef %7)
  store i32 %call, ptr %ret, align 4, !tbaa !8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %func) #11
  %8 = load ptr, ptr %instance, align 8, !tbaa !4
  %u3 = getelementptr inbounds %struct.response_instance, ptr %8, i32 0, i32 3
  %code = getelementptr inbounds %struct.filter_instance, ptr %u3, i32 0, i32 1
  %9 = load ptr, ptr %code, align 8, !tbaa !14
  %func4 = getelementptr inbounds %struct._cod_code_struct, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %func4, align 8, !tbaa !64
  store ptr %10, ptr %func, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ec) #11
  %11 = load ptr, ptr %instance, align 8, !tbaa !4
  %u5 = getelementptr inbounds %struct.response_instance, ptr %11, i32 0, i32 3
  %ec6 = getelementptr inbounds %struct.filter_instance, ptr %u5, i32 0, i32 2
  %12 = load ptr, ptr %ec6, align 8, !tbaa !14
  store ptr %12, ptr %ec, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 72, ptr %ev_state) #11
  %13 = load ptr, ptr %cm.addr, align 8, !tbaa !4
  %cm7 = getelementptr inbounds %struct.ev_state_data, ptr %ev_state, i32 0, i32 0
  store ptr %13, ptr %cm7, align 8, !tbaa !25
  %14 = load ptr, ptr %event.addr, align 8, !tbaa !4
  %cur_event = getelementptr inbounds %struct.ev_state_data, ptr %ev_state, i32 0, i32 1
  store ptr %14, ptr %cur_event, align 8, !tbaa !61
  %15 = load i32, ptr %out_count.addr, align 4, !tbaa !8
  %out_count8 = getelementptr inbounds %struct.ev_state_data, ptr %ev_state, i32 0, i32 4
  store i32 %15, ptr %out_count8, align 8, !tbaa !62
  %16 = load ptr, ptr %out_stones.addr, align 8, !tbaa !4
  %out_stones9 = getelementptr inbounds %struct.ev_state_data, ptr %ev_state, i32 0, i32 5
  store ptr %16, ptr %out_stones9, align 8, !tbaa !63
  %17 = load ptr, ptr %ec, align 8, !tbaa !4
  %18 = ptrtoint ptr %ev_state to i64
  call void @cod_assoc_client_data(ptr noundef %17, i32 noundef 878082192, i64 noundef %18)
  %19 = load ptr, ptr %func, align 8, !tbaa !4
  %20 = load ptr, ptr %ec, align 8, !tbaa !4
  %21 = load ptr, ptr %event.addr, align 8, !tbaa !4
  %decoded_event10 = getelementptr inbounds %struct._event_item, ptr %21, i32 0, i32 5
  %22 = load ptr, ptr %decoded_event10, align 8, !tbaa !66
  %23 = load ptr, ptr %attrs.addr, align 8, !tbaa !4
  %call11 = call i32 %19(ptr noundef %20, ptr noundef %22, ptr noundef %23)
  store i32 %call11, ptr %ret, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 72, ptr %ev_state) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %ec) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %func) #11
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %24 = load i32, ptr %ret, align 4, !tbaa !8
  %cmp = icmp sge i32 %24, 0
  br i1 %cmp, label %if.then12, label %if.else128

if.then12:                                        ; preds = %if.end
  %25 = load i32, ptr %ret, align 4, !tbaa !8
  %26 = load i32, ptr %out_count.addr, align 4, !tbaa !8
  %cmp13 = icmp sge i32 %25, %26
  br i1 %cmp13, label %if.then14, label %if.else42

if.then14:                                        ; preds = %if.then12
  call void @llvm.lifetime.start.p0(i64 16, ptr %ts) #11
  %27 = load ptr, ptr %cm.addr, align 8, !tbaa !4
  %CMTrace_file = getelementptr inbounds %struct._CManager, ptr %27, i32 0, i32 29
  %28 = load ptr, ptr %CMTrace_file, align 8, !tbaa !67
  %cmp15 = icmp eq ptr %28, null
  br i1 %cmp15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then14
  %29 = load ptr, ptr %cm.addr, align 8, !tbaa !4
  %call16 = call i32 @CMtrace_init(ptr noundef %29, i32 noundef 10)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %cond.true19, label %cond.false37

cond.false:                                       ; preds = %if.then14
  %30 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @CMtrace_val, i64 0, i64 10), align 4, !tbaa !8
  %tobool18 = icmp ne i32 %30, 0
  br i1 %tobool18, label %cond.true19, label %cond.false37

cond.true19:                                      ; preds = %cond.false, %cond.true
  %31 = load i32, ptr @CMtrace_PID, align 4, !tbaa !8
  %tobool20 = icmp ne i32 %31, 0
  br i1 %tobool20, label %cond.true21, label %cond.false26

cond.true21:                                      ; preds = %cond.true19
  %32 = load ptr, ptr %cm.addr, align 8, !tbaa !4
  %CMTrace_file22 = getelementptr inbounds %struct._CManager, ptr %32, i32 0, i32 29
  %33 = load ptr, ptr %CMTrace_file22, align 8, !tbaa !67
  %call23 = call i32 @getpid() #11
  %conv = sext i32 %call23 to i64
  %call24 = call i64 @pthread_self() #14
  %call25 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %33, ptr noundef @.str.33, i64 noundef %conv, i64 noundef %call24)
  br label %cond.end

cond.false26:                                     ; preds = %cond.true19
  br label %cond.end

cond.end:                                         ; preds = %cond.false26, %cond.true21
  %cond = phi i32 [ %call25, %cond.true21 ], [ 0, %cond.false26 ]
  %34 = load i32, ptr @CMtrace_timing, align 4, !tbaa !8
  %tobool27 = icmp ne i32 %34, 0
  br i1 %tobool27, label %cond.true28, label %cond.false32

cond.true28:                                      ; preds = %cond.end
  %call29 = call i32 @clock_gettime(i32 noundef 1, ptr noundef %ts) #11
  %35 = load ptr, ptr %cm.addr, align 8, !tbaa !4
  %CMTrace_file30 = getelementptr inbounds %struct._CManager, ptr %35, i32 0, i32 29
  %36 = load ptr, ptr %CMTrace_file30, align 8, !tbaa !67
  %tv_sec = getelementptr inbounds %struct.timespec, ptr %ts, i32 0, i32 0
  %37 = load i64, ptr %tv_sec, align 8, !tbaa !68
  %tv_nsec = getelementptr inbounds %struct.timespec, ptr %ts, i32 0, i32 1
  %38 = load i64, ptr %tv_nsec, align 8, !tbaa !70
  %call31 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %36, ptr noundef @.str.34, i64 noundef %37, i64 noundef %38)
  br label %cond.end33

cond.false32:                                     ; preds = %cond.end
  br label %cond.end33

cond.end33:                                       ; preds = %cond.false32, %cond.true28
  %cond34 = phi i32 [ %call31, %cond.true28 ], [ 0, %cond.false32 ]
  %39 = load ptr, ptr %cm.addr, align 8, !tbaa !4
  %CMTrace_file35 = getelementptr inbounds %struct._CManager, ptr %39, i32 0, i32 29
  %40 = load ptr, ptr %CMTrace_file35, align 8, !tbaa !67
  %41 = load i32, ptr %ret, align 4, !tbaa !8
  %call36 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %40, ptr noundef @.str.37, i32 noundef %41)
  br label %cond.end38

cond.false37:                                     ; preds = %cond.false, %cond.true
  br label %cond.end38

cond.end38:                                       ; preds = %cond.false37, %cond.end33
  %cond39 = phi i32 [ %call36, %cond.end33 ], [ 0, %cond.false37 ]
  %42 = load ptr, ptr %cm.addr, align 8, !tbaa !4
  %CMTrace_file40 = getelementptr inbounds %struct._CManager, ptr %42, i32 0, i32 29
  %43 = load ptr, ptr %CMTrace_file40, align 8, !tbaa !67
  %call41 = call i32 @fflush(ptr noundef %43)
  call void @llvm.lifetime.end.p0(i64 16, ptr %ts) #11
  br label %if.end127

if.else42:                                        ; preds = %if.then12
  %44 = load ptr, ptr %out_stones.addr, align 8, !tbaa !4
  %45 = load i32, ptr %ret, align 4, !tbaa !8
  %idxprom = sext i32 %45 to i64
  %arrayidx = getelementptr inbounds i32, ptr %44, i64 %idxprom
  %46 = load i32, ptr %arrayidx, align 4, !tbaa !8
  %cmp43 = icmp eq i32 %46, -1
  br i1 %cmp43, label %if.then45, label %if.else83

if.then45:                                        ; preds = %if.else42
  call void @llvm.lifetime.start.p0(i64 16, ptr %ts46) #11
  %47 = load ptr, ptr %cm.addr, align 8, !tbaa !4
  %CMTrace_file47 = getelementptr inbounds %struct._CManager, ptr %47, i32 0, i32 29
  %48 = load ptr, ptr %CMTrace_file47, align 8, !tbaa !67
  %cmp48 = icmp eq ptr %48, null
  br i1 %cmp48, label %cond.true50, label %cond.false53

cond.true50:                                      ; preds = %if.then45
  %49 = load ptr, ptr %cm.addr, align 8, !tbaa !4
  %call51 = call i32 @CMtrace_init(ptr noundef %49, i32 noundef 10)
  %tobool52 = icmp ne i32 %call51, 0
  br i1 %tobool52, label %cond.true55, label %cond.false78

cond.false53:                                     ; preds = %if.then45
  %50 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @CMtrace_val, i64 0, i64 10), align 4, !tbaa !8
  %tobool54 = icmp ne i32 %50, 0
  br i1 %tobool54, label %cond.true55, label %cond.false78

cond.true55:                                      ; preds = %cond.false53, %cond.true50
  %51 = load i32, ptr @CMtrace_PID, align 4, !tbaa !8
  %tobool56 = icmp ne i32 %51, 0
  br i1 %tobool56, label %cond.true57, label %cond.false63

cond.true57:                                      ; preds = %cond.true55
  %52 = load ptr, ptr %cm.addr, align 8, !tbaa !4
  %CMTrace_file58 = getelementptr inbounds %struct._CManager, ptr %52, i32 0, i32 29
  %53 = load ptr, ptr %CMTrace_file58, align 8, !tbaa !67
  %call59 = call i32 @getpid() #11
  %conv60 = sext i32 %call59 to i64
  %call61 = call i64 @pthread_self() #14
  %call62 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %53, ptr noundef @.str.33, i64 noundef %conv60, i64 noundef %call61)
  br label %cond.end64

cond.false63:                                     ; preds = %cond.true55
  br label %cond.end64

cond.end64:                                       ; preds = %cond.false63, %cond.true57
  %cond65 = phi i32 [ %call62, %cond.true57 ], [ 0, %cond.false63 ]
  %54 = load i32, ptr @CMtrace_timing, align 4, !tbaa !8
  %tobool66 = icmp ne i32 %54, 0
  br i1 %tobool66, label %cond.true67, label %cond.false73

cond.true67:                                      ; preds = %cond.end64
  %call68 = call i32 @clock_gettime(i32 noundef 1, ptr noundef %ts46) #11
  %55 = load ptr, ptr %cm.addr, align 8, !tbaa !4
  %CMTrace_file69 = getelementptr inbounds %struct._CManager, ptr %55, i32 0, i32 29
  %56 = load ptr, ptr %CMTrace_file69, align 8, !tbaa !67
  %tv_sec70 = getelementptr inbounds %struct.timespec, ptr %ts46, i32 0, i32 0
  %57 = load i64, ptr %tv_sec70, align 8, !tbaa !68
  %tv_nsec71 = getelementptr inbounds %struct.timespec, ptr %ts46, i32 0, i32 1
  %58 = load i64, ptr %tv_nsec71, align 8, !tbaa !70
  %call72 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %56, ptr noundef @.str.34, i64 noundef %57, i64 noundef %58)
  br label %cond.end74

cond.false73:                                     ; preds = %cond.end64
  br label %cond.end74

cond.end74:                                       ; preds = %cond.false73, %cond.true67
  %cond75 = phi i32 [ %call72, %cond.true67 ], [ 0, %cond.false73 ]
  %59 = load ptr, ptr %cm.addr, align 8, !tbaa !4
  %CMTrace_file76 = getelementptr inbounds %struct._CManager, ptr %59, i32 0, i32 29
  %60 = load ptr, ptr %CMTrace_file76, align 8, !tbaa !67
  %61 = load i32, ptr %ret, align 4, !tbaa !8
  %call77 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %60, ptr noundef @.str.38, i32 noundef %61)
  br label %cond.end79

cond.false78:                                     ; preds = %cond.false53, %cond.true50
  br label %cond.end79

cond.end79:                                       ; preds = %cond.false78, %cond.end74
  %cond80 = phi i32 [ %call77, %cond.end74 ], [ 0, %cond.false78 ]
  %62 = load ptr, ptr %cm.addr, align 8, !tbaa !4
  %CMTrace_file81 = getelementptr inbounds %struct._CManager, ptr %62, i32 0, i32 29
  %63 = load ptr, ptr %CMTrace_file81, align 8, !tbaa !67
  %call82 = call i32 @fflush(ptr noundef %63)
  call void @llvm.lifetime.end.p0(i64 16, ptr %ts46) #11
  br label %if.end126

if.else83:                                        ; preds = %if.else42
  call void @llvm.lifetime.start.p0(i64 16, ptr %ts84) #11
  %64 = load ptr, ptr %cm.addr, align 8, !tbaa !4
  %CMTrace_file85 = getelementptr inbounds %struct._CManager, ptr %64, i32 0, i32 29
  %65 = load ptr, ptr %CMTrace_file85, align 8, !tbaa !67
  %cmp86 = icmp eq ptr %65, null
  br i1 %cmp86, label %cond.true88, label %cond.false91

cond.true88:                                      ; preds = %if.else83
  %66 = load ptr, ptr %cm.addr, align 8, !tbaa !4
  %call89 = call i32 @CMtrace_init(ptr noundef %66, i32 noundef 10)
  %tobool90 = icmp ne i32 %call89, 0
  br i1 %tobool90, label %cond.true93, label %cond.false118

cond.false91:                                     ; preds = %if.else83
  %67 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @CMtrace_val, i64 0, i64 10), align 4, !tbaa !8
  %tobool92 = icmp ne i32 %67, 0
  br i1 %tobool92, label %cond.true93, label %cond.false118

cond.true93:                                      ; preds = %cond.false91, %cond.true88
  %68 = load i32, ptr @CMtrace_PID, align 4, !tbaa !8
  %tobool94 = icmp ne i32 %68, 0
  br i1 %tobool94, label %cond.true95, label %cond.false101

cond.true95:                                      ; preds = %cond.true93
  %69 = load ptr, ptr %cm.addr, align 8, !tbaa !4
  %CMTrace_file96 = getelementptr inbounds %struct._CManager, ptr %69, i32 0, i32 29
  %70 = load ptr, ptr %CMTrace_file96, align 8, !tbaa !67
  %call97 = call i32 @getpid() #11
  %conv98 = sext i32 %call97 to i64
  %call99 = call i64 @pthread_self() #14
  %call100 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %70, ptr noundef @.str.33, i64 noundef %conv98, i64 noundef %call99)
  br label %cond.end102

cond.false101:                                    ; preds = %cond.true93
  br label %cond.end102

cond.end102:                                      ; preds = %cond.false101, %cond.true95
  %cond103 = phi i32 [ %call100, %cond.true95 ], [ 0, %cond.false101 ]
  %71 = load i32, ptr @CMtrace_timing, align 4, !tbaa !8
  %tobool104 = icmp ne i32 %71, 0
  br i1 %tobool104, label %cond.true105, label %cond.false111

cond.true105:                                     ; preds = %cond.end102
  %call106 = call i32 @clock_gettime(i32 noundef 1, ptr noundef %ts84) #11
  %72 = load ptr, ptr %cm.addr, align 8, !tbaa !4
  %CMTrace_file107 = getelementptr inbounds %struct._CManager, ptr %72, i32 0, i32 29
  %73 = load ptr, ptr %CMTrace_file107, align 8, !tbaa !67
  %tv_sec108 = getelementptr inbounds %struct.timespec, ptr %ts84, i32 0, i32 0
  %74 = load i64, ptr %tv_sec108, align 8, !tbaa !68
  %tv_nsec109 = getelementptr inbounds %struct.timespec, ptr %ts84, i32 0, i32 1
  %75 = load i64, ptr %tv_nsec109, align 8, !tbaa !70
  %call110 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %73, ptr noundef @.str.34, i64 noundef %74, i64 noundef %75)
  br label %cond.end112

cond.false111:                                    ; preds = %cond.end102
  br label %cond.end112

cond.end112:                                      ; preds = %cond.false111, %cond.true105
  %cond113 = phi i32 [ %call110, %cond.true105 ], [ 0, %cond.false111 ]
  %76 = load ptr, ptr %cm.addr, align 8, !tbaa !4
  %CMTrace_file114 = getelementptr inbounds %struct._CManager, ptr %76, i32 0, i32 29
  %77 = load ptr, ptr %CMTrace_file114, align 8, !tbaa !67
  %78 = load i32, ptr %ret, align 4, !tbaa !8
  %79 = load ptr, ptr %out_stones.addr, align 8, !tbaa !4
  %80 = load i32, ptr %ret, align 4, !tbaa !8
  %idxprom115 = sext i32 %80 to i64
  %arrayidx116 = getelementptr inbounds i32, ptr %79, i64 %idxprom115
  %81 = load i32, ptr %arrayidx116, align 4, !tbaa !8
  %call117 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %77, ptr noundef @.str.39, i32 noundef %78, i32 noundef %81)
  br label %cond.end119

cond.false118:                                    ; preds = %cond.false91, %cond.true88
  br label %cond.end119

cond.end119:                                      ; preds = %cond.false118, %cond.end112
  %cond120 = phi i32 [ %call117, %cond.end112 ], [ 0, %cond.false118 ]
  %82 = load ptr, ptr %cm.addr, align 8, !tbaa !4
  %CMTrace_file121 = getelementptr inbounds %struct._CManager, ptr %82, i32 0, i32 29
  %83 = load ptr, ptr %CMTrace_file121, align 8, !tbaa !67
  %call122 = call i32 @fflush(ptr noundef %83)
  call void @llvm.lifetime.end.p0(i64 16, ptr %ts84) #11
  %84 = load ptr, ptr %cm.addr, align 8, !tbaa !4
  %85 = load ptr, ptr %out_stones.addr, align 8, !tbaa !4
  %86 = load i32, ptr %ret, align 4, !tbaa !8
  %idxprom123 = sext i32 %86 to i64
  %arrayidx124 = getelementptr inbounds i32, ptr %85, i64 %idxprom123
  %87 = load i32, ptr %arrayidx124, align 4, !tbaa !8
  %88 = load ptr, ptr %event.addr, align 8, !tbaa !4
  %call125 = call i32 @internal_path_submit(ptr noundef %84, i32 noundef %87, ptr noundef %88)
  br label %if.end126

if.end126:                                        ; preds = %cond.end119, %cond.end79
  br label %if.end127

if.end127:                                        ; preds = %if.end126, %cond.end38
  br label %if.end166

if.else128:                                       ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 16, ptr %ts129) #11
  %89 = load ptr, ptr %cm.addr, align 8, !tbaa !4
  %CMTrace_file130 = getelementptr inbounds %struct._CManager, ptr %89, i32 0, i32 29
  %90 = load ptr, ptr %CMTrace_file130, align 8, !tbaa !67
  %cmp131 = icmp eq ptr %90, null
  br i1 %cmp131, label %cond.true133, label %cond.false136

cond.true133:                                     ; preds = %if.else128
  %91 = load ptr, ptr %cm.addr, align 8, !tbaa !4
  %call134 = call i32 @CMtrace_init(ptr noundef %91, i32 noundef 10)
  %tobool135 = icmp ne i32 %call134, 0
  br i1 %tobool135, label %cond.true138, label %cond.false161

cond.false136:                                    ; preds = %if.else128
  %92 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @CMtrace_val, i64 0, i64 10), align 4, !tbaa !8
  %tobool137 = icmp ne i32 %92, 0
  br i1 %tobool137, label %cond.true138, label %cond.false161

cond.true138:                                     ; preds = %cond.false136, %cond.true133
  %93 = load i32, ptr @CMtrace_PID, align 4, !tbaa !8
  %tobool139 = icmp ne i32 %93, 0
  br i1 %tobool139, label %cond.true140, label %cond.false146

cond.true140:                                     ; preds = %cond.true138
  %94 = load ptr, ptr %cm.addr, align 8, !tbaa !4
  %CMTrace_file141 = getelementptr inbounds %struct._CManager, ptr %94, i32 0, i32 29
  %95 = load ptr, ptr %CMTrace_file141, align 8, !tbaa !67
  %call142 = call i32 @getpid() #11
  %conv143 = sext i32 %call142 to i64
  %call144 = call i64 @pthread_self() #14
  %call145 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %95, ptr noundef @.str.33, i64 noundef %conv143, i64 noundef %call144)
  br label %cond.end147

cond.false146:                                    ; preds = %cond.true138
  br label %cond.end147

cond.end147:                                      ; preds = %cond.false146, %cond.true140
  %cond148 = phi i32 [ %call145, %cond.true140 ], [ 0, %cond.false146 ]
  %96 = load i32, ptr @CMtrace_timing, align 4, !tbaa !8
  %tobool149 = icmp ne i32 %96, 0
  br i1 %tobool149, label %cond.true150, label %cond.false156

cond.true150:                                     ; preds = %cond.end147
  %call151 = call i32 @clock_gettime(i32 noundef 1, ptr noundef %ts129) #11
  %97 = load ptr, ptr %cm.addr, align 8, !tbaa !4
  %CMTrace_file152 = getelementptr inbounds %struct._CManager, ptr %97, i32 0, i32 29
  %98 = load ptr, ptr %CMTrace_file152, align 8, !tbaa !67
  %tv_sec153 = getelementptr inbounds %struct.timespec, ptr %ts129, i32 0, i32 0
  %99 = load i64, ptr %tv_sec153, align 8, !tbaa !68
  %tv_nsec154 = getelementptr inbounds %struct.timespec, ptr %ts129, i32 0, i32 1
  %100 = load i64, ptr %tv_nsec154, align 8, !tbaa !70
  %call155 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %98, ptr noundef @.str.34, i64 noundef %99, i64 noundef %100)
  br label %cond.end157

cond.false156:                                    ; preds = %cond.end147
  br label %cond.end157

cond.end157:                                      ; preds = %cond.false156, %cond.true150
  %cond158 = phi i32 [ %call155, %cond.true150 ], [ 0, %cond.false156 ]
  %101 = load ptr, ptr %cm.addr, align 8, !tbaa !4
  %CMTrace_file159 = getelementptr inbounds %struct._CManager, ptr %101, i32 0, i32 29
  %102 = load ptr, ptr %CMTrace_file159, align 8, !tbaa !67
  %103 = load i32, ptr %ret, align 4, !tbaa !8
  %call160 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %102, ptr noundef @.str.40, i32 noundef %103)
  br label %cond.end162

cond.false161:                                    ; preds = %cond.false136, %cond.true133
  br label %cond.end162

cond.end162:                                      ; preds = %cond.false161, %cond.end157
  %cond163 = phi i32 [ %call160, %cond.end157 ], [ 0, %cond.false161 ]
  %104 = load ptr, ptr %cm.addr, align 8, !tbaa !4
  %CMTrace_file164 = getelementptr inbounds %struct._CManager, ptr %104, i32 0, i32 29
  %105 = load ptr, ptr %CMTrace_file164, align 8, !tbaa !67
  %call165 = call i32 @fflush(ptr noundef %105)
  call void @llvm.lifetime.end.p0(i64 16, ptr %ts129) #11
  br label %if.end166

if.end166:                                        ; preds = %cond.end162, %if.end127
  %106 = load i32, ptr %ret, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %instance) #11
  ret i32 %106
}

; Function Attrs: nounwind uwtable
define internal i32 @transform_wrapper(ptr noundef %cm, ptr noundef %event, ptr noundef %client_data, ptr noundef %attrs, i32 noundef %out_count, ptr noundef %out_stones) #0 {
entry:
  %cm.addr = alloca ptr, align 8
  %event.addr = alloca ptr, align 8
  %client_data.addr = alloca ptr, align 8
  %attrs.addr = alloca ptr, align 8
  %out_count.addr = alloca i32, align 4
  %out_stones.addr = alloca ptr, align 8
  %instance = alloca ptr, align 8
  %ret = alloca i32, align 4
  %out_event = alloca ptr, align 8
  %func = alloca ptr, align 8
  %ec = alloca ptr, align 8
  %ev_state = alloca %struct.ev_state_data, align 8
  %output_attrs = alloca ptr, align 8
  %s = alloca %struct._EVSource, align 8
  %f = alloca ptr, align 8
  %ts = alloca %struct.timespec, align 8
  store ptr %cm, ptr %cm.addr, align 8, !tbaa !4
  store ptr %event, ptr %event.addr, align 8, !tbaa !4
  store ptr %client_data, ptr %client_data.addr, align 8, !tbaa !4
  store ptr %attrs, ptr %attrs.addr, align 8, !tbaa !4
  store i32 %out_count, ptr %out_count.addr, align 4, !tbaa !8
  store ptr %out_stones, ptr %out_stones.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %instance) #11
  %0 = load ptr, ptr %client_data.addr, align 8, !tbaa !4
  store ptr %0, ptr %instance, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %out_event) #11
  %1 = load ptr, ptr %instance, align 8, !tbaa !4
  %u = getelementptr inbounds %struct.response_instance, ptr %1, i32 0, i32 3
  %out_size = getelementptr inbounds %struct.transform_instance, ptr %u, i32 0, i32 3
  %2 = load i32, ptr %out_size, align 8, !tbaa !14
  %conv = sext i32 %2 to i64
  %call = call noalias ptr @malloc(i64 noundef %conv) #13
  store ptr %call, ptr %out_event, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %func) #11
  store ptr null, ptr %func, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ec) #11
  %3 = load ptr, ptr %instance, align 8, !tbaa !4
  %u1 = getelementptr inbounds %struct.response_instance, ptr %3, i32 0, i32 3
  %ec2 = getelementptr inbounds %struct.transform_instance, ptr %u1, i32 0, i32 2
  %4 = load ptr, ptr %ec2, align 8, !tbaa !14
  store ptr %4, ptr %ec, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 72, ptr %ev_state) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %output_attrs) #11
  %call3 = call ptr @create_attr_list()
  store ptr %call3, ptr %output_attrs, align 8, !tbaa !4
  %5 = load ptr, ptr %cm.addr, align 8, !tbaa !4
  %cm4 = getelementptr inbounds %struct.ev_state_data, ptr %ev_state, i32 0, i32 0
  store ptr %5, ptr %cm4, align 8, !tbaa !25
  %6 = load ptr, ptr %event.addr, align 8, !tbaa !4
  %cur_event = getelementptr inbounds %struct.ev_state_data, ptr %ev_state, i32 0, i32 1
  store ptr %6, ptr %cur_event, align 8, !tbaa !61
  %7 = load ptr, ptr %instance, align 8, !tbaa !4
  %stone = getelementptr inbounds %struct.response_instance, ptr %7, i32 0, i32 1
  %8 = load i32, ptr %stone, align 4, !tbaa !40
  %stone5 = getelementptr inbounds %struct.ev_state_data, ptr %ev_state, i32 0, i32 2
  store i32 %8, ptr %stone5, align 8, !tbaa !71
  %9 = load ptr, ptr %instance, align 8, !tbaa !4
  %proto_action_id = getelementptr inbounds %struct.response_instance, ptr %9, i32 0, i32 2
  %10 = load i32, ptr %proto_action_id, align 8, !tbaa !42
  %proto_action_id6 = getelementptr inbounds %struct.ev_state_data, ptr %ev_state, i32 0, i32 3
  store i32 %10, ptr %proto_action_id6, align 4, !tbaa !72
  %11 = load i32, ptr %out_count.addr, align 4, !tbaa !8
  %out_count7 = getelementptr inbounds %struct.ev_state_data, ptr %ev_state, i32 0, i32 4
  store i32 %11, ptr %out_count7, align 8, !tbaa !62
  %12 = load ptr, ptr %out_stones.addr, align 8, !tbaa !4
  %out_stones8 = getelementptr inbounds %struct.ev_state_data, ptr %ev_state, i32 0, i32 5
  store ptr %12, ptr %out_stones8, align 8, !tbaa !63
  %13 = load ptr, ptr %cm.addr, align 8, !tbaa !4
  %CMTrace_file = getelementptr inbounds %struct._CManager, ptr %13, i32 0, i32 29
  %14 = load ptr, ptr %CMTrace_file, align 8, !tbaa !67
  %cmp = icmp eq ptr %14, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %15 = load ptr, ptr %cm.addr, align 8, !tbaa !4
  %call10 = call i32 @CMtrace_init(ptr noundef %15, i32 noundef 10)
  %tobool = icmp ne i32 %call10, 0
  br i1 %tobool, label %if.then, label %if.end21

cond.false:                                       ; preds = %entry
  %16 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @CMtrace_val, i64 0, i64 10), align 4, !tbaa !8
  %tobool11 = icmp ne i32 %16, 0
  br i1 %tobool11, label %if.then, label %if.end21

if.then:                                          ; preds = %cond.false, %cond.true
  %17 = load ptr, ptr %cm.addr, align 8, !tbaa !4
  %CMTrace_file12 = getelementptr inbounds %struct._CManager, ptr %17, i32 0, i32 29
  %18 = load ptr, ptr %CMTrace_file12, align 8, !tbaa !67
  %call13 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef @.str.41)
  %19 = load ptr, ptr %event.addr, align 8, !tbaa !4
  %reference_format = getelementptr inbounds %struct._event_item, ptr %19, i32 0, i32 7
  %20 = load ptr, ptr %reference_format, align 8, !tbaa !33
  %tobool14 = icmp ne ptr %20, null
  br i1 %tobool14, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.then
  %21 = load ptr, ptr %cm.addr, align 8, !tbaa !4
  %CMTrace_file16 = getelementptr inbounds %struct._CManager, ptr %21, i32 0, i32 29
  %22 = load ptr, ptr %CMTrace_file16, align 8, !tbaa !67
  %23 = load ptr, ptr %event.addr, align 8, !tbaa !4
  %reference_format17 = getelementptr inbounds %struct._event_item, ptr %23, i32 0, i32 7
  %24 = load ptr, ptr %reference_format17, align 8, !tbaa !33
  %25 = load ptr, ptr %event.addr, align 8, !tbaa !4
  %decoded_event = getelementptr inbounds %struct._event_item, ptr %25, i32 0, i32 5
  %26 = load ptr, ptr %decoded_event, align 8, !tbaa !66
  %call18 = call i32 @FMfdump_data(ptr noundef %22, ptr noundef %24, ptr noundef %26, i32 noundef 10240)
  br label %if.end

if.else:                                          ; preds = %if.then
  %27 = load ptr, ptr %cm.addr, align 8, !tbaa !4
  %CMTrace_file19 = getelementptr inbounds %struct._CManager, ptr %27, i32 0, i32 29
  %28 = load ptr, ptr %CMTrace_file19, align 8, !tbaa !67
  %call20 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %28, ptr noundef @.str.42)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then15
  br label %if.end21

if.end21:                                         ; preds = %if.end, %cond.false, %cond.true
  %29 = load ptr, ptr %out_event, align 8, !tbaa !4
  %30 = load ptr, ptr %instance, align 8, !tbaa !4
  %u22 = getelementptr inbounds %struct.response_instance, ptr %30, i32 0, i32 3
  %out_size23 = getelementptr inbounds %struct.transform_instance, ptr %u22, i32 0, i32 3
  %31 = load i32, ptr %out_size23, align 8, !tbaa !14
  %conv24 = sext i32 %31 to i64
  call void @llvm.memset.p0.i64(ptr align 1 %29, i8 0, i64 %conv24, i1 false)
  %32 = load ptr, ptr %ec, align 8, !tbaa !4
  %cmp25 = icmp ne ptr %32, null
  br i1 %cmp25, label %if.then27, label %if.else32

if.then27:                                        ; preds = %if.end21
  %33 = load ptr, ptr %instance, align 8, !tbaa !4
  %u28 = getelementptr inbounds %struct.response_instance, ptr %33, i32 0, i32 3
  %code = getelementptr inbounds %struct.transform_instance, ptr %u28, i32 0, i32 1
  %34 = load ptr, ptr %code, align 8, !tbaa !14
  %func29 = getelementptr inbounds %struct._cod_code_struct, ptr %34, i32 0, i32 0
  %35 = load ptr, ptr %func29, align 8, !tbaa !64
  store ptr %35, ptr %func, align 8, !tbaa !4
  %36 = load ptr, ptr %ec, align 8, !tbaa !4
  %37 = ptrtoint ptr %ev_state to i64
  call void @cod_assoc_client_data(ptr noundef %36, i32 noundef 878082192, i64 noundef %37)
  %38 = load ptr, ptr %func, align 8, !tbaa !4
  %39 = load ptr, ptr %ec, align 8, !tbaa !4
  %40 = load ptr, ptr %event.addr, align 8, !tbaa !4
  %decoded_event30 = getelementptr inbounds %struct._event_item, ptr %40, i32 0, i32 5
  %41 = load ptr, ptr %decoded_event30, align 8, !tbaa !66
  %42 = load ptr, ptr %out_event, align 8, !tbaa !4
  %43 = load ptr, ptr %attrs.addr, align 8, !tbaa !4
  %44 = load ptr, ptr %output_attrs, align 8, !tbaa !4
  %call31 = call i32 %38(ptr noundef %39, ptr noundef %41, ptr noundef %42, ptr noundef %43, ptr noundef %44)
  store i32 %call31, ptr %ret, align 4, !tbaa !8
  br label %if.end36

if.else32:                                        ; preds = %if.end21
  %45 = load ptr, ptr %instance, align 8, !tbaa !4
  %u33 = getelementptr inbounds %struct.response_instance, ptr %45, i32 0, i32 3
  %func_ptr = getelementptr inbounds %struct.transform_instance, ptr %u33, i32 0, i32 0
  %46 = load ptr, ptr %func_ptr, align 8, !tbaa !14
  %47 = load ptr, ptr %event.addr, align 8, !tbaa !4
  %decoded_event34 = getelementptr inbounds %struct._event_item, ptr %47, i32 0, i32 5
  %48 = load ptr, ptr %decoded_event34, align 8, !tbaa !66
  %49 = load ptr, ptr %out_event, align 8, !tbaa !4
  %50 = load ptr, ptr %attrs.addr, align 8, !tbaa !4
  %51 = load ptr, ptr %output_attrs, align 8, !tbaa !4
  %call35 = call i32 %46(ptr noundef %48, ptr noundef %49, ptr noundef %50, ptr noundef %51)
  store i32 %call35, ptr %ret, align 4, !tbaa !8
  br label %if.end36

if.end36:                                         ; preds = %if.else32, %if.then27
  %52 = load i32, ptr %ret, align 4, !tbaa !8
  %tobool37 = icmp ne i32 %52, 0
  br i1 %tobool37, label %land.lhs.true, label %if.end42

land.lhs.true:                                    ; preds = %if.end36
  %53 = load ptr, ptr %out_stones.addr, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds i32, ptr %53, i64 0
  %54 = load i32, ptr %arrayidx, align 4, !tbaa !8
  %cmp38 = icmp eq i32 %54, -1
  br i1 %cmp38, label %if.then40, label %if.end42

if.then40:                                        ; preds = %land.lhs.true
  %call41 = call i32 (ptr, ...) @printf(ptr noundef @.str.43)
  store i32 0, ptr %ret, align 4, !tbaa !8
  br label %if.end42

if.end42:                                         ; preds = %if.then40, %land.lhs.true, %if.end36
  %55 = load i32, ptr %ret, align 4, !tbaa !8
  %tobool43 = icmp ne i32 %55, 0
  br i1 %tobool43, label %if.then44, label %if.else67

if.then44:                                        ; preds = %if.end42
  call void @llvm.lifetime.start.p0(i64 48, ptr %s) #11
  %56 = load ptr, ptr %cm.addr, align 8, !tbaa !4
  %CMTrace_file45 = getelementptr inbounds %struct._CManager, ptr %56, i32 0, i32 29
  %57 = load ptr, ptr %CMTrace_file45, align 8, !tbaa !67
  %cmp46 = icmp eq ptr %57, null
  br i1 %cmp46, label %cond.true48, label %cond.false51

cond.true48:                                      ; preds = %if.then44
  %58 = load ptr, ptr %cm.addr, align 8, !tbaa !4
  %call49 = call i32 @CMtrace_init(ptr noundef %58, i32 noundef 10)
  %tobool50 = icmp ne i32 %call49, 0
  br i1 %tobool50, label %if.then53, label %if.end59

cond.false51:                                     ; preds = %if.then44
  %59 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @CMtrace_val, i64 0, i64 10), align 4, !tbaa !8
  %tobool52 = icmp ne i32 %59, 0
  br i1 %tobool52, label %if.then53, label %if.end59

if.then53:                                        ; preds = %cond.false51, %cond.true48
  call void @llvm.lifetime.start.p0(i64 8, ptr %f) #11
  %60 = load ptr, ptr %instance, align 8, !tbaa !4
  %u54 = getelementptr inbounds %struct.response_instance, ptr %60, i32 0, i32 3
  %out_format = getelementptr inbounds %struct.transform_instance, ptr %u54, i32 0, i32 5
  %61 = load ptr, ptr %out_format, align 8, !tbaa !14
  store ptr %61, ptr %f, align 8, !tbaa !4
  %62 = load ptr, ptr %cm.addr, align 8, !tbaa !4
  %CMTrace_file55 = getelementptr inbounds %struct._CManager, ptr %62, i32 0, i32 29
  %63 = load ptr, ptr %CMTrace_file55, align 8, !tbaa !67
  %64 = load i32, ptr %ret, align 4, !tbaa !8
  %call56 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %63, ptr noundef @.str.44, i32 noundef %64)
  %65 = load ptr, ptr %cm.addr, align 8, !tbaa !4
  %CMTrace_file57 = getelementptr inbounds %struct._CManager, ptr %65, i32 0, i32 29
  %66 = load ptr, ptr %CMTrace_file57, align 8, !tbaa !67
  %67 = load ptr, ptr %f, align 8, !tbaa !4
  %68 = load ptr, ptr %out_event, align 8, !tbaa !4
  %call58 = call i32 @FMfdump_data(ptr noundef %66, ptr noundef %67, ptr noundef %68, i32 noundef 10240)
  call void @llvm.lifetime.end.p0(i64 8, ptr %f) #11
  br label %if.end59

if.end59:                                         ; preds = %if.then53, %cond.false51, %cond.true48
  %69 = load ptr, ptr %out_stones.addr, align 8, !tbaa !4
  %arrayidx60 = getelementptr inbounds i32, ptr %69, i64 0
  %70 = load i32, ptr %arrayidx60, align 4, !tbaa !8
  %local_stone_id = getelementptr inbounds %struct._EVSource, ptr %s, i32 0, i32 3
  store i32 %70, ptr %local_stone_id, align 8, !tbaa !73
  %71 = load ptr, ptr %cm.addr, align 8, !tbaa !4
  %cm61 = getelementptr inbounds %struct._EVSource, ptr %s, i32 0, i32 0
  store ptr %71, ptr %cm61, align 8, !tbaa !75
  %format = getelementptr inbounds %struct._EVSource, ptr %s, i32 0, i32 1
  store ptr null, ptr %format, align 8, !tbaa !76
  %72 = load ptr, ptr %instance, align 8, !tbaa !4
  %u62 = getelementptr inbounds %struct.response_instance, ptr %72, i32 0, i32 3
  %out_format63 = getelementptr inbounds %struct.transform_instance, ptr %u62, i32 0, i32 5
  %73 = load ptr, ptr %out_format63, align 8, !tbaa !14
  %reference_format64 = getelementptr inbounds %struct._EVSource, ptr %s, i32 0, i32 2
  store ptr %73, ptr %reference_format64, align 8, !tbaa !77
  %free_func = getelementptr inbounds %struct._EVSource, ptr %s, i32 0, i32 5
  store ptr @transform_free_wrapper, ptr %free_func, align 8, !tbaa !78
  %74 = load ptr, ptr %instance, align 8, !tbaa !4
  %u65 = getelementptr inbounds %struct.response_instance, ptr %74, i32 0, i32 3
  %out_format66 = getelementptr inbounds %struct.transform_instance, ptr %u65, i32 0, i32 5
  %75 = load ptr, ptr %out_format66, align 8, !tbaa !14
  %free_data = getelementptr inbounds %struct._EVSource, ptr %s, i32 0, i32 6
  store ptr %75, ptr %free_data, align 8, !tbaa !79
  %preencoded = getelementptr inbounds %struct._EVSource, ptr %s, i32 0, i32 4
  store i32 0, ptr %preencoded, align 4, !tbaa !80
  %76 = load ptr, ptr %out_event, align 8, !tbaa !4
  %77 = load ptr, ptr %output_attrs, align 8, !tbaa !4
  call void @INT_EVsubmit(ptr noundef %s, ptr noundef %76, ptr noundef %77)
  call void @llvm.lifetime.end.p0(i64 48, ptr %s) #11
  br label %if.end102

if.else67:                                        ; preds = %if.end42
  call void @llvm.lifetime.start.p0(i64 16, ptr %ts) #11
  %78 = load ptr, ptr %cm.addr, align 8, !tbaa !4
  %CMTrace_file68 = getelementptr inbounds %struct._CManager, ptr %78, i32 0, i32 29
  %79 = load ptr, ptr %CMTrace_file68, align 8, !tbaa !67
  %cmp69 = icmp eq ptr %79, null
  br i1 %cmp69, label %cond.true71, label %cond.false74

cond.true71:                                      ; preds = %if.else67
  %80 = load ptr, ptr %cm.addr, align 8, !tbaa !4
  %call72 = call i32 @CMtrace_init(ptr noundef %80, i32 noundef 10)
  %tobool73 = icmp ne i32 %call72, 0
  br i1 %tobool73, label %cond.true76, label %cond.false95

cond.false74:                                     ; preds = %if.else67
  %81 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @CMtrace_val, i64 0, i64 10), align 4, !tbaa !8
  %tobool75 = icmp ne i32 %81, 0
  br i1 %tobool75, label %cond.true76, label %cond.false95

cond.true76:                                      ; preds = %cond.false74, %cond.true71
  %82 = load i32, ptr @CMtrace_PID, align 4, !tbaa !8
  %tobool77 = icmp ne i32 %82, 0
  br i1 %tobool77, label %cond.true78, label %cond.false84

cond.true78:                                      ; preds = %cond.true76
  %83 = load ptr, ptr %cm.addr, align 8, !tbaa !4
  %CMTrace_file79 = getelementptr inbounds %struct._CManager, ptr %83, i32 0, i32 29
  %84 = load ptr, ptr %CMTrace_file79, align 8, !tbaa !67
  %call80 = call i32 @getpid() #11
  %conv81 = sext i32 %call80 to i64
  %call82 = call i64 @pthread_self() #14
  %call83 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %84, ptr noundef @.str.33, i64 noundef %conv81, i64 noundef %call82)
  br label %cond.end

cond.false84:                                     ; preds = %cond.true76
  br label %cond.end

cond.end:                                         ; preds = %cond.false84, %cond.true78
  %cond = phi i32 [ %call83, %cond.true78 ], [ 0, %cond.false84 ]
  %85 = load i32, ptr @CMtrace_timing, align 4, !tbaa !8
  %tobool85 = icmp ne i32 %85, 0
  br i1 %tobool85, label %cond.true86, label %cond.false90

cond.true86:                                      ; preds = %cond.end
  %call87 = call i32 @clock_gettime(i32 noundef 1, ptr noundef %ts) #11
  %86 = load ptr, ptr %cm.addr, align 8, !tbaa !4
  %CMTrace_file88 = getelementptr inbounds %struct._CManager, ptr %86, i32 0, i32 29
  %87 = load ptr, ptr %CMTrace_file88, align 8, !tbaa !67
  %tv_sec = getelementptr inbounds %struct.timespec, ptr %ts, i32 0, i32 0
  %88 = load i64, ptr %tv_sec, align 8, !tbaa !68
  %tv_nsec = getelementptr inbounds %struct.timespec, ptr %ts, i32 0, i32 1
  %89 = load i64, ptr %tv_nsec, align 8, !tbaa !70
  %call89 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %87, ptr noundef @.str.34, i64 noundef %88, i64 noundef %89)
  br label %cond.end91

cond.false90:                                     ; preds = %cond.end
  br label %cond.end91

cond.end91:                                       ; preds = %cond.false90, %cond.true86
  %cond92 = phi i32 [ %call89, %cond.true86 ], [ 0, %cond.false90 ]
  %90 = load ptr, ptr %cm.addr, align 8, !tbaa !4
  %CMTrace_file93 = getelementptr inbounds %struct._CManager, ptr %90, i32 0, i32 29
  %91 = load ptr, ptr %CMTrace_file93, align 8, !tbaa !67
  %92 = load i32, ptr %ret, align 4, !tbaa !8
  %call94 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %91, ptr noundef @.str.45, i32 noundef %92)
  br label %cond.end96

cond.false95:                                     ; preds = %cond.false74, %cond.true71
  br label %cond.end96

cond.end96:                                       ; preds = %cond.false95, %cond.end91
  %cond97 = phi i32 [ %call94, %cond.end91 ], [ 0, %cond.false95 ]
  %93 = load ptr, ptr %cm.addr, align 8, !tbaa !4
  %CMTrace_file98 = getelementptr inbounds %struct._CManager, ptr %93, i32 0, i32 29
  %94 = load ptr, ptr %CMTrace_file98, align 8, !tbaa !67
  %call99 = call i32 @fflush(ptr noundef %94)
  call void @llvm.lifetime.end.p0(i64 16, ptr %ts) #11
  %95 = load ptr, ptr %out_event, align 8, !tbaa !4
  %96 = load ptr, ptr %instance, align 8, !tbaa !4
  %u100 = getelementptr inbounds %struct.response_instance, ptr %96, i32 0, i32 3
  %out_format101 = getelementptr inbounds %struct.transform_instance, ptr %u100, i32 0, i32 5
  %97 = load ptr, ptr %out_format101, align 8, !tbaa !14
  call void @transform_free_wrapper(ptr noundef %95, ptr noundef %97)
  br label %if.end102

if.end102:                                        ; preds = %cond.end96, %if.end59
  %98 = load ptr, ptr %output_attrs, align 8, !tbaa !4
  call void @free_attr_list(ptr noundef %98)
  %99 = load i32, ptr %ret, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 8, ptr %output_attrs) #11
  call void @llvm.lifetime.end.p0(i64 72, ptr %ev_state) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %ec) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %func) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %out_event) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %instance) #11
  ret i32 %99
}

; Function Attrs: nounwind uwtable
define internal ptr @generate_multityped_code(ptr noundef %cm, ptr noundef %mrd, ptr noundef %stone, ptr noundef %formats) #0 {
entry:
  %retval = alloca ptr, align 8
  %cm.addr = alloca ptr, align 8
  %mrd.addr = alloca ptr, align 8
  %stone.addr = alloca ptr, align 8
  %formats.addr = alloca ptr, align 8
  %instance = alloca ptr, align 8
  %cur_format = alloca ptr, align 8
  %format_count = alloca i32, align 4
  %code = alloca ptr, align 8
  %parse_context = alloca ptr, align 8
  %count = alloca i32, align 4
  %count13 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cm, ptr %cm.addr, align 8, !tbaa !4
  store ptr %mrd, ptr %mrd.addr, align 8, !tbaa !4
  store ptr %stone, ptr %stone.addr, align 8, !tbaa !4
  store ptr %formats, ptr %formats.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %instance) #11
  %call = call noalias ptr @malloc(i64 noundef 64) #13
  store ptr %call, ptr %instance, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %cur_format) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr %format_count) #11
  store i32 0, ptr %format_count, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %code) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %parse_context) #11
  %call1 = call ptr @new_cod_parse_context()
  store ptr %call1, ptr %parse_context, align 8, !tbaa !4
  %0 = load ptr, ptr %instance, align 8, !tbaa !4
  call void @llvm.memset.p0.i64(ptr align 8 %0, i8 0, i64 64, i1 false)
  %1 = load ptr, ptr %formats.addr, align 8, !tbaa !4
  store ptr %1, ptr %cur_format, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load ptr, ptr %cur_format, align 8, !tbaa !4
  %3 = load ptr, ptr %2, align 8, !tbaa !4
  %tobool = icmp ne ptr %3, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %parse_context, align 8, !tbaa !4
  %5 = load ptr, ptr %cur_format, align 8, !tbaa !4
  %6 = load ptr, ptr %5, align 8, !tbaa !4
  call void @add_type(ptr noundef %4, ptr noundef %6)
  %7 = load i32, ptr %format_count, align 4, !tbaa !8
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %format_count, align 4, !tbaa !8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load ptr, ptr %cur_format, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds ptr, ptr %8, i32 1
  store ptr %incdec.ptr, ptr %cur_format, align 8, !tbaa !4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load ptr, ptr %stone.addr, align 8, !tbaa !4
  %10 = load ptr, ptr %parse_context, align 8, !tbaa !4
  call void @add_standard_routines(ptr noundef %9, ptr noundef %10)
  %11 = load ptr, ptr %stone.addr, align 8, !tbaa !4
  %12 = load ptr, ptr %parse_context, align 8, !tbaa !4
  call void @add_metrics_routines(ptr noundef %11, ptr noundef %12)
  %13 = load ptr, ptr %parse_context, align 8, !tbaa !4
  %14 = load ptr, ptr %formats.addr, align 8, !tbaa !4
  call void @add_queued_routines(ptr noundef %13, ptr noundef %14)
  %15 = load ptr, ptr %parse_context, align 8, !tbaa !4
  %16 = load ptr, ptr %formats.addr, align 8, !tbaa !4
  call void @add_queued_constants(ptr noundef %15, ptr noundef %16)
  %17 = load ptr, ptr %cm.addr, align 8, !tbaa !4
  %evp = getelementptr inbounds %struct._CManager, ptr %17, i32 0, i32 28
  %18 = load ptr, ptr %evp, align 8, !tbaa !51
  %extern_structs = getelementptr inbounds %struct._event_path_data, ptr %18, i32 0, i32 18
  %19 = load ptr, ptr %extern_structs, align 8, !tbaa !54
  %tobool2 = icmp ne ptr %19, null
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #11
  store i32 -1, ptr %count, align 4, !tbaa !8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %20 = load ptr, ptr %cm.addr, align 8, !tbaa !4
  %evp3 = getelementptr inbounds %struct._CManager, ptr %20, i32 0, i32 28
  %21 = load ptr, ptr %evp3, align 8, !tbaa !51
  %extern_structs4 = getelementptr inbounds %struct._event_path_data, ptr %21, i32 0, i32 18
  %22 = load ptr, ptr %extern_structs4, align 8, !tbaa !54
  %23 = load i32, ptr %count, align 4, !tbaa !8
  %inc5 = add nsw i32 %23, 1
  store i32 %inc5, ptr %count, align 4, !tbaa !8
  %idxprom = sext i32 %inc5 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %22, i64 %idxprom
  %24 = load ptr, ptr %arrayidx, align 8, !tbaa !4
  %cmp = icmp ne ptr %24, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %25 = load ptr, ptr %cm.addr, align 8, !tbaa !4
  %evp6 = getelementptr inbounds %struct._CManager, ptr %25, i32 0, i32 28
  %26 = load ptr, ptr %evp6, align 8, !tbaa !51
  %extern_structs7 = getelementptr inbounds %struct._event_path_data, ptr %26, i32 0, i32 18
  %27 = load ptr, ptr %extern_structs7, align 8, !tbaa !54
  %28 = load i32, ptr %count, align 4, !tbaa !8
  %idxprom8 = sext i32 %28 to i64
  %arrayidx9 = getelementptr inbounds ptr, ptr %27, i64 %idxprom8
  %29 = load ptr, ptr %arrayidx9, align 8, !tbaa !4
  %30 = load ptr, ptr %parse_context, align 8, !tbaa !4
  call void @cod_add_struct_type(ptr noundef %29, ptr noundef %30)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #11
  br label %if.end

if.end:                                           ; preds = %while.end, %for.end
  %31 = load ptr, ptr %cm.addr, align 8, !tbaa !4
  %evp10 = getelementptr inbounds %struct._CManager, ptr %31, i32 0, i32 28
  %32 = load ptr, ptr %evp10, align 8, !tbaa !51
  %externs = getelementptr inbounds %struct._event_path_data, ptr %32, i32 0, i32 17
  %33 = load ptr, ptr %externs, align 8, !tbaa !56
  %tobool11 = icmp ne ptr %33, null
  br i1 %tobool11, label %if.then12, label %if.end34

if.then12:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %count13) #11
  store i32 -1, ptr %count13, align 4, !tbaa !8
  br label %while.cond14

while.cond14:                                     ; preds = %while.body21, %if.then12
  %34 = load ptr, ptr %cm.addr, align 8, !tbaa !4
  %evp15 = getelementptr inbounds %struct._CManager, ptr %34, i32 0, i32 28
  %35 = load ptr, ptr %evp15, align 8, !tbaa !51
  %externs16 = getelementptr inbounds %struct._event_path_data, ptr %35, i32 0, i32 17
  %36 = load ptr, ptr %externs16, align 8, !tbaa !56
  %37 = load i32, ptr %count13, align 4, !tbaa !8
  %inc17 = add nsw i32 %37, 1
  store i32 %inc17, ptr %count13, align 4, !tbaa !8
  %idxprom18 = sext i32 %inc17 to i64
  %arrayidx19 = getelementptr inbounds %struct._extern_routine_struct, ptr %36, i64 %idxprom18
  %extern_decl = getelementptr inbounds %struct._extern_routine_struct, ptr %arrayidx19, i32 0, i32 0
  %38 = load ptr, ptr %extern_decl, align 8, !tbaa !57
  %cmp20 = icmp ne ptr %38, null
  br i1 %cmp20, label %while.body21, label %while.end33

while.body21:                                     ; preds = %while.cond14
  %39 = load ptr, ptr %parse_context, align 8, !tbaa !4
  %40 = load ptr, ptr %cm.addr, align 8, !tbaa !4
  %evp22 = getelementptr inbounds %struct._CManager, ptr %40, i32 0, i32 28
  %41 = load ptr, ptr %evp22, align 8, !tbaa !51
  %externs23 = getelementptr inbounds %struct._event_path_data, ptr %41, i32 0, i32 17
  %42 = load ptr, ptr %externs23, align 8, !tbaa !56
  %43 = load i32, ptr %count13, align 4, !tbaa !8
  %idxprom24 = sext i32 %43 to i64
  %arrayidx25 = getelementptr inbounds %struct._extern_routine_struct, ptr %42, i64 %idxprom24
  %externs26 = getelementptr inbounds %struct._extern_routine_struct, ptr %arrayidx25, i32 0, i32 1
  %44 = load ptr, ptr %externs26, align 8, !tbaa !59
  call void @cod_assoc_externs(ptr noundef %39, ptr noundef %44)
  %45 = load ptr, ptr %cm.addr, align 8, !tbaa !4
  %evp27 = getelementptr inbounds %struct._CManager, ptr %45, i32 0, i32 28
  %46 = load ptr, ptr %evp27, align 8, !tbaa !51
  %externs28 = getelementptr inbounds %struct._event_path_data, ptr %46, i32 0, i32 17
  %47 = load ptr, ptr %externs28, align 8, !tbaa !56
  %48 = load i32, ptr %count13, align 4, !tbaa !8
  %idxprom29 = sext i32 %48 to i64
  %arrayidx30 = getelementptr inbounds %struct._extern_routine_struct, ptr %47, i64 %idxprom29
  %extern_decl31 = getelementptr inbounds %struct._extern_routine_struct, ptr %arrayidx30, i32 0, i32 0
  %49 = load ptr, ptr %extern_decl31, align 8, !tbaa !57
  %50 = load ptr, ptr %parse_context, align 8, !tbaa !4
  %call32 = call i32 @cod_parse_for_context(ptr noundef %49, ptr noundef %50)
  br label %while.cond14

while.end33:                                      ; preds = %while.cond14
  call void @llvm.lifetime.end.p0(i64 4, ptr %count13) #11
  br label %if.end34

if.end34:                                         ; preds = %while.end33, %if.end
  %51 = load ptr, ptr %mrd.addr, align 8, !tbaa !4
  %response_type = getelementptr inbounds %struct.response_spec, ptr %51, i32 0, i32 0
  %52 = load i32, ptr %response_type, align 8, !tbaa !12
  %cmp35 = icmp eq i32 %52, 3
  br i1 %cmp35, label %if.then36, label %if.else

if.then36:                                        ; preds = %if.end34
  br label %if.end37

if.else:                                          ; preds = %if.end34
  call void @__assert_fail(ptr noundef @.str.81, ptr noundef @.str.28, i32 noundef 2335, ptr noundef @__PRETTY_FUNCTION__.generate_multityped_code) #16
  unreachable

if.end37:                                         ; preds = %if.then36
  %53 = load ptr, ptr %parse_context, align 8, !tbaa !4
  call void @cod_add_param(ptr noundef @.str.46, ptr noundef @.str.47, i32 noundef 0, ptr noundef %53)
  %54 = load ptr, ptr %parse_context, align 8, !tbaa !4
  call void @cod_set_return_type(ptr noundef @.str.82, ptr noundef %54)
  %55 = load ptr, ptr %mrd.addr, align 8, !tbaa !4
  %u = getelementptr inbounds %struct.response_spec, ptr %55, i32 0, i32 1
  %function = getelementptr inbounds %struct.multityped_spec, ptr %u, i32 0, i32 1
  %56 = load ptr, ptr %function, align 8, !tbaa !14
  %57 = load ptr, ptr %parse_context, align 8, !tbaa !4
  %call38 = call ptr @cod_code_gen(ptr noundef %56, ptr noundef %57)
  store ptr %call38, ptr %code, align 8, !tbaa !4
  %58 = load ptr, ptr %mrd.addr, align 8, !tbaa !4
  %response_type39 = getelementptr inbounds %struct.response_spec, ptr %58, i32 0, i32 0
  %59 = load i32, ptr %response_type39, align 8, !tbaa !12
  %60 = load ptr, ptr %instance, align 8, !tbaa !4
  %response_type40 = getelementptr inbounds %struct.response_instance, ptr %60, i32 0, i32 0
  store i32 %59, ptr %response_type40, align 8, !tbaa !60
  %61 = load i32, ptr %format_count, align 4, !tbaa !8
  %62 = load ptr, ptr %instance, align 8, !tbaa !4
  %u41 = getelementptr inbounds %struct.response_instance, ptr %62, i32 0, i32 3
  %ref_count = getelementptr inbounds %struct.queued_instance, ptr %u41, i32 0, i32 0
  store i32 %61, ptr %ref_count, align 8, !tbaa !14
  %63 = load ptr, ptr %formats.addr, align 8, !tbaa !4
  %64 = load ptr, ptr %instance, align 8, !tbaa !4
  %u42 = getelementptr inbounds %struct.response_instance, ptr %64, i32 0, i32 3
  %formats43 = getelementptr inbounds %struct.queued_instance, ptr %u42, i32 0, i32 4
  store ptr %63, ptr %formats43, align 8, !tbaa !14
  %65 = load ptr, ptr %code, align 8, !tbaa !4
  %66 = load ptr, ptr %instance, align 8, !tbaa !4
  %u44 = getelementptr inbounds %struct.response_instance, ptr %66, i32 0, i32 3
  %code45 = getelementptr inbounds %struct.queued_instance, ptr %u44, i32 0, i32 1
  store ptr %65, ptr %code45, align 8, !tbaa !14
  %67 = load ptr, ptr %code, align 8, !tbaa !4
  %tobool46 = icmp ne ptr %67, null
  br i1 %tobool46, label %if.then47, label %if.end50

if.then47:                                        ; preds = %if.end37
  %68 = load ptr, ptr %code, align 8, !tbaa !4
  %call48 = call ptr @cod_create_exec_context(ptr noundef %68)
  %69 = load ptr, ptr %instance, align 8, !tbaa !4
  %u49 = getelementptr inbounds %struct.response_instance, ptr %69, i32 0, i32 3
  %ec = getelementptr inbounds %struct.queued_instance, ptr %u49, i32 0, i32 2
  store ptr %call48, ptr %ec, align 8, !tbaa !14
  br label %if.end50

if.end50:                                         ; preds = %if.then47, %if.end37
  %70 = load ptr, ptr %parse_context, align 8, !tbaa !4
  call void @cod_free_parse_context(ptr noundef %70)
  %71 = load ptr, ptr %instance, align 8, !tbaa !4
  %u51 = getelementptr inbounds %struct.response_instance, ptr %71, i32 0, i32 3
  %ec52 = getelementptr inbounds %struct.queued_instance, ptr %u51, i32 0, i32 2
  %72 = load ptr, ptr %ec52, align 8, !tbaa !14
  %tobool53 = icmp ne ptr %72, null
  br i1 %tobool53, label %if.end55, label %if.then54

if.then54:                                        ; preds = %if.end50
  %73 = load ptr, ptr %instance, align 8, !tbaa !4
  call void @free(ptr noundef %73) #11
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end55:                                         ; preds = %if.end50
  %74 = load ptr, ptr %instance, align 8, !tbaa !4
  store ptr %74, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end55, %if.then54
  call void @llvm.lifetime.end.p0(i64 8, ptr %parse_context) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %code) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %format_count) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %cur_format) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %instance) #11
  %75 = load ptr, ptr %retval, align 8
  ret ptr %75
}

declare i32 @INT_EVassoc_mutated_multi_action(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: nounwind uwtable
define internal i32 @queued_wrapper(ptr noundef %cm, ptr noundef %queue, ptr noundef %item, ptr noundef %client_data, i32 noundef %out_count, ptr noundef %out_stones) #0 {
entry:
  %cm.addr = alloca ptr, align 8
  %queue.addr = alloca ptr, align 8
  %item.addr = alloca ptr, align 8
  %client_data.addr = alloca ptr, align 8
  %out_count.addr = alloca i32, align 4
  %out_stones.addr = alloca ptr, align 8
  %instance = alloca ptr, align 8
  %func = alloca ptr, align 8
  %ec = alloca ptr, align 8
  %ev_state = alloca %struct.ev_state_data, align 8
  store ptr %cm, ptr %cm.addr, align 8, !tbaa !4
  store ptr %queue, ptr %queue.addr, align 8, !tbaa !4
  store ptr %item, ptr %item.addr, align 8, !tbaa !4
  store ptr %client_data, ptr %client_data.addr, align 8, !tbaa !4
  store i32 %out_count, ptr %out_count.addr, align 4, !tbaa !8
  store ptr %out_stones, ptr %out_stones.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %instance) #11
  %0 = load ptr, ptr %client_data.addr, align 8, !tbaa !4
  store ptr %0, ptr %instance, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %func) #11
  %1 = load ptr, ptr %instance, align 8, !tbaa !4
  %u = getelementptr inbounds %struct.response_instance, ptr %1, i32 0, i32 3
  %code = getelementptr inbounds %struct.queued_instance, ptr %u, i32 0, i32 1
  %2 = load ptr, ptr %code, align 8, !tbaa !14
  %func1 = getelementptr inbounds %struct._cod_code_struct, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %func1, align 8, !tbaa !64
  store ptr %3, ptr %func, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ec) #11
  %4 = load ptr, ptr %instance, align 8, !tbaa !4
  %u2 = getelementptr inbounds %struct.response_instance, ptr %4, i32 0, i32 3
  %ec3 = getelementptr inbounds %struct.queued_instance, ptr %u2, i32 0, i32 2
  %5 = load ptr, ptr %ec3, align 8, !tbaa !14
  store ptr %5, ptr %ec, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 72, ptr %ev_state) #11
  %6 = load ptr, ptr %cm.addr, align 8, !tbaa !4
  %cm4 = getelementptr inbounds %struct.ev_state_data, ptr %ev_state, i32 0, i32 0
  store ptr %6, ptr %cm4, align 8, !tbaa !25
  %cur_event = getelementptr inbounds %struct.ev_state_data, ptr %ev_state, i32 0, i32 1
  store ptr null, ptr %cur_event, align 8, !tbaa !61
  %7 = load ptr, ptr %instance, align 8, !tbaa !4
  %stone = getelementptr inbounds %struct.response_instance, ptr %7, i32 0, i32 1
  %8 = load i32, ptr %stone, align 4, !tbaa !40
  %stone5 = getelementptr inbounds %struct.ev_state_data, ptr %ev_state, i32 0, i32 2
  store i32 %8, ptr %stone5, align 8, !tbaa !71
  %9 = load ptr, ptr %instance, align 8, !tbaa !4
  %proto_action_id = getelementptr inbounds %struct.response_instance, ptr %9, i32 0, i32 2
  %10 = load i32, ptr %proto_action_id, align 8, !tbaa !42
  %proto_action_id6 = getelementptr inbounds %struct.ev_state_data, ptr %ev_state, i32 0, i32 3
  store i32 %10, ptr %proto_action_id6, align 4, !tbaa !72
  %11 = load i32, ptr %out_count.addr, align 4, !tbaa !8
  %out_count7 = getelementptr inbounds %struct.ev_state_data, ptr %ev_state, i32 0, i32 4
  store i32 %11, ptr %out_count7, align 8, !tbaa !62
  %12 = load ptr, ptr %out_stones.addr, align 8, !tbaa !4
  %out_stones8 = getelementptr inbounds %struct.ev_state_data, ptr %ev_state, i32 0, i32 5
  store ptr %12, ptr %out_stones8, align 8, !tbaa !63
  %13 = load ptr, ptr %queue.addr, align 8, !tbaa !4
  %queue9 = getelementptr inbounds %struct.ev_state_data, ptr %ev_state, i32 0, i32 7
  store ptr %13, ptr %queue9, align 8, !tbaa !81
  %14 = load ptr, ptr %item.addr, align 8, !tbaa !4
  %item10 = getelementptr inbounds %struct.ev_state_data, ptr %ev_state, i32 0, i32 6
  store ptr %14, ptr %item10, align 8, !tbaa !82
  %15 = load ptr, ptr %instance, align 8, !tbaa !4
  %instance11 = getelementptr inbounds %struct.ev_state_data, ptr %ev_state, i32 0, i32 8
  store ptr %15, ptr %instance11, align 8, !tbaa !83
  %did_output = getelementptr inbounds %struct.ev_state_data, ptr %ev_state, i32 0, i32 9
  store i32 0, ptr %did_output, align 8, !tbaa !84
  %16 = load ptr, ptr %ec, align 8, !tbaa !4
  %17 = ptrtoint ptr %ev_state to i64
  call void @cod_assoc_client_data(ptr noundef %16, i32 noundef 878082192, i64 noundef %17)
  %18 = load ptr, ptr %func, align 8, !tbaa !4
  %19 = load ptr, ptr %ec, align 8, !tbaa !4
  %call = call i32 %18(ptr noundef %19)
  %did_output12 = getelementptr inbounds %struct.ev_state_data, ptr %ev_state, i32 0, i32 9
  %20 = load i32, ptr %did_output12, align 8, !tbaa !84
  call void @llvm.lifetime.end.p0(i64 72, ptr %ev_state) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %ec) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %func) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %instance) #11
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal void @free_multi_response(ptr noundef %client_data) #0 {
entry:
  %client_data.addr = alloca ptr, align 8
  %resp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %client_data, ptr %client_data.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %resp) #11
  %0 = load ptr, ptr %client_data.addr, align 8, !tbaa !4
  store ptr %0, ptr %resp, align 8, !tbaa !4
  %1 = load ptr, ptr %resp, align 8, !tbaa !4
  %u = getelementptr inbounds %struct.response_instance, ptr %1, i32 0, i32 3
  %ref_count = getelementptr inbounds %struct.queued_instance, ptr %u, i32 0, i32 0
  %2 = load i32, ptr %ref_count, align 8, !tbaa !14
  %dec = add nsw i32 %2, -1
  store i32 %dec, ptr %ref_count, align 8, !tbaa !14
  %3 = load ptr, ptr %resp, align 8, !tbaa !4
  %u1 = getelementptr inbounds %struct.response_instance, ptr %3, i32 0, i32 3
  %ref_count2 = getelementptr inbounds %struct.queued_instance, ptr %u1, i32 0, i32 0
  %4 = load i32, ptr %ref_count2, align 8, !tbaa !14
  %cmp = icmp ne i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %resp, align 8, !tbaa !4
  %u3 = getelementptr inbounds %struct.response_instance, ptr %5, i32 0, i32 3
  %code = getelementptr inbounds %struct.queued_instance, ptr %u3, i32 0, i32 1
  %6 = load ptr, ptr %code, align 8, !tbaa !14
  %tobool = icmp ne ptr %6, null
  br i1 %tobool, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  %7 = load ptr, ptr %resp, align 8, !tbaa !4
  %u5 = getelementptr inbounds %struct.response_instance, ptr %7, i32 0, i32 3
  %code6 = getelementptr inbounds %struct.queued_instance, ptr %u5, i32 0, i32 1
  %8 = load ptr, ptr %code6, align 8, !tbaa !14
  call void @cod_code_free(ptr noundef %8)
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end
  %9 = load ptr, ptr %resp, align 8, !tbaa !4
  %u8 = getelementptr inbounds %struct.response_instance, ptr %9, i32 0, i32 3
  %ec = getelementptr inbounds %struct.queued_instance, ptr %u8, i32 0, i32 2
  %10 = load ptr, ptr %ec, align 8, !tbaa !14
  %tobool9 = icmp ne ptr %10, null
  br i1 %tobool9, label %if.then10, label %if.end13

if.then10:                                        ; preds = %if.end7
  %11 = load ptr, ptr %resp, align 8, !tbaa !4
  %u11 = getelementptr inbounds %struct.response_instance, ptr %11, i32 0, i32 3
  %ec12 = getelementptr inbounds %struct.queued_instance, ptr %u11, i32 0, i32 2
  %12 = load ptr, ptr %ec12, align 8, !tbaa !14
  call void @cod_exec_context_free(ptr noundef %12)
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end7
  %13 = load ptr, ptr %resp, align 8, !tbaa !4
  call void @free(ptr noundef %13) #11
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %resp) #11
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

declare i32 @INT_EVassoc_anon_multi_action(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #5

declare void @INT_EVassoc_conversion_action(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #5

declare void @fix_response_cache(ptr noundef) #5

; Function Attrs: nounwind uwtable
define void @response_data_free(ptr noundef %cm, ptr noundef %resp_void) #0 {
entry:
  %cm.addr = alloca ptr, align 8
  %resp_void.addr = alloca ptr, align 8
  %resp = alloca ptr, align 8
  %i = alloca i32, align 4
  %list = alloca ptr, align 8
  %j = alloca i32, align 4
  store ptr %cm, ptr %cm.addr, align 8, !tbaa !4
  store ptr %resp_void, ptr %resp_void.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %resp) #11
  %0 = load ptr, ptr %resp_void.addr, align 8, !tbaa !4
  store ptr %0, ptr %resp, align 8, !tbaa !4
  %1 = load ptr, ptr %resp, align 8, !tbaa !4
  %response_type = getelementptr inbounds %struct.response_spec, ptr %1, i32 0, i32 0
  %2 = load i32, ptr %response_type, align 8, !tbaa !12
  switch i32 %2, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb
    i32 1, label %sw.bb2
    i32 3, label %sw.bb7
  ]

sw.bb:                                            ; preds = %entry, %entry
  %3 = load ptr, ptr %resp, align 8, !tbaa !4
  %u = getelementptr inbounds %struct.response_spec, ptr %3, i32 0, i32 1
  %format_list = getelementptr inbounds %struct.filter_spec, ptr %u, i32 0, i32 0
  %4 = load ptr, ptr %format_list, align 8, !tbaa !14
  call void @free_struct_list(ptr noundef %4)
  %5 = load ptr, ptr %resp, align 8, !tbaa !4
  %u1 = getelementptr inbounds %struct.response_spec, ptr %5, i32 0, i32 1
  %function = getelementptr inbounds %struct.filter_spec, ptr %u1, i32 0, i32 1
  %6 = load ptr, ptr %function, align 8, !tbaa !14
  call void @free(ptr noundef %6) #11
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %7 = load ptr, ptr %resp, align 8, !tbaa !4
  %u3 = getelementptr inbounds %struct.response_spec, ptr %7, i32 0, i32 1
  %in_format_list = getelementptr inbounds %struct.transform_spec, ptr %u3, i32 0, i32 0
  %8 = load ptr, ptr %in_format_list, align 8, !tbaa !14
  call void @free_struct_list(ptr noundef %8)
  %9 = load ptr, ptr %resp, align 8, !tbaa !4
  %u4 = getelementptr inbounds %struct.response_spec, ptr %9, i32 0, i32 1
  %out_format_list = getelementptr inbounds %struct.transform_spec, ptr %u4, i32 0, i32 1
  %10 = load ptr, ptr %out_format_list, align 8, !tbaa !14
  call void @free_struct_list(ptr noundef %10)
  %11 = load ptr, ptr %resp, align 8, !tbaa !4
  %u5 = getelementptr inbounds %struct.response_spec, ptr %11, i32 0, i32 1
  %function6 = getelementptr inbounds %struct.transform_spec, ptr %u5, i32 0, i32 2
  %12 = load ptr, ptr %function6, align 8, !tbaa !14
  call void @free(ptr noundef %12) #11
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #11
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %while.cond

while.cond:                                       ; preds = %while.end, %sw.bb7
  %13 = load ptr, ptr %resp, align 8, !tbaa !4
  %u8 = getelementptr inbounds %struct.response_spec, ptr %13, i32 0, i32 1
  %struct_list = getelementptr inbounds %struct.multityped_spec, ptr %u8, i32 0, i32 0
  %14 = load ptr, ptr %struct_list, align 8, !tbaa !14
  %15 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom = sext i32 %15 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %14, i64 %idxprom
  %16 = load ptr, ptr %arrayidx, align 8, !tbaa !4
  %cmp = icmp ne ptr %16, null
  br i1 %cmp, label %while.body, label %while.end24

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %list) #11
  %17 = load ptr, ptr %resp, align 8, !tbaa !4
  %u9 = getelementptr inbounds %struct.response_spec, ptr %17, i32 0, i32 1
  %struct_list10 = getelementptr inbounds %struct.multityped_spec, ptr %u9, i32 0, i32 0
  %18 = load ptr, ptr %struct_list10, align 8, !tbaa !14
  %19 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom11 = sext i32 %19 to i64
  %arrayidx12 = getelementptr inbounds ptr, ptr %18, i64 %idxprom11
  %20 = load ptr, ptr %arrayidx12, align 8, !tbaa !4
  store ptr %20, ptr %list, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #11
  store i32 0, ptr %j, align 4, !tbaa !8
  br label %while.cond13

while.cond13:                                     ; preds = %while.body17, %while.body
  %21 = load ptr, ptr %list, align 8, !tbaa !4
  %22 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom14 = sext i32 %22 to i64
  %arrayidx15 = getelementptr inbounds %struct._FMformat_list, ptr %21, i64 %idxprom14
  %format_name = getelementptr inbounds %struct._FMformat_list, ptr %arrayidx15, i32 0, i32 0
  %23 = load ptr, ptr %format_name, align 8, !tbaa !10
  %cmp16 = icmp ne ptr %23, null
  br i1 %cmp16, label %while.body17, label %while.end

while.body17:                                     ; preds = %while.cond13
  %24 = load ptr, ptr %list, align 8, !tbaa !4
  %25 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom18 = sext i32 %25 to i64
  %arrayidx19 = getelementptr inbounds %struct._FMformat_list, ptr %24, i64 %idxprom18
  %format_name20 = getelementptr inbounds %struct._FMformat_list, ptr %arrayidx19, i32 0, i32 0
  %26 = load ptr, ptr %format_name20, align 8, !tbaa !10
  call void @free(ptr noundef %26) #11
  %27 = load ptr, ptr %list, align 8, !tbaa !4
  %28 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom21 = sext i32 %28 to i64
  %arrayidx22 = getelementptr inbounds %struct._FMformat_list, ptr %27, i64 %idxprom21
  %field_list = getelementptr inbounds %struct._FMformat_list, ptr %arrayidx22, i32 0, i32 1
  %29 = load ptr, ptr %field_list, align 8, !tbaa !15
  call void @free_FMfield_list(ptr noundef %29)
  %30 = load i32, ptr %j, align 4, !tbaa !8
  %inc = add nsw i32 %30, 1
  store i32 %inc, ptr %j, align 4, !tbaa !8
  br label %while.cond13

while.end:                                        ; preds = %while.cond13
  %31 = load ptr, ptr %list, align 8, !tbaa !4
  call void @free(ptr noundef %31) #11
  %32 = load i32, ptr %i, align 4, !tbaa !8
  %inc23 = add nsw i32 %32, 1
  store i32 %inc23, ptr %i, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %list) #11
  br label %while.cond

while.end24:                                      ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #11
  %33 = load ptr, ptr %resp, align 8, !tbaa !4
  %u25 = getelementptr inbounds %struct.response_spec, ptr %33, i32 0, i32 1
  %struct_list26 = getelementptr inbounds %struct.multityped_spec, ptr %u25, i32 0, i32 0
  %34 = load ptr, ptr %struct_list26, align 8, !tbaa !14
  call void @free(ptr noundef %34) #11
  %35 = load ptr, ptr %resp, align 8, !tbaa !4
  %u27 = getelementptr inbounds %struct.response_spec, ptr %35, i32 0, i32 1
  %reference_input_format_list = getelementptr inbounds %struct.multityped_spec, ptr %u27, i32 0, i32 4
  %36 = load ptr, ptr %reference_input_format_list, align 8, !tbaa !14
  call void @free(ptr noundef %36) #11
  %37 = load ptr, ptr %resp, align 8, !tbaa !4
  %u28 = getelementptr inbounds %struct.response_spec, ptr %37, i32 0, i32 1
  %function29 = getelementptr inbounds %struct.multityped_spec, ptr %u28, i32 0, i32 1
  %38 = load ptr, ptr %function29, align 8, !tbaa !14
  call void @free(ptr noundef %38) #11
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %while.end24, %sw.bb2, %sw.bb
  %39 = load ptr, ptr %resp, align 8, !tbaa !4
  call void @free(ptr noundef %39) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %resp) #11
  ret void
}

; Function Attrs: nounwind uwtable
define void @INT_EVadd_standard_routines(ptr noundef %cm, ptr noundef %extern_string, ptr noundef %externs) #0 {
entry:
  %cm.addr = alloca ptr, align 8
  %extern_string.addr = alloca ptr, align 8
  %externs.addr = alloca ptr, align 8
  %evp = alloca ptr, align 8
  %count = alloca i32, align 4
  store ptr %cm, ptr %cm.addr, align 8, !tbaa !4
  store ptr %extern_string, ptr %extern_string.addr, align 8, !tbaa !4
  store ptr %externs, ptr %externs.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %evp) #11
  %0 = load ptr, ptr %cm.addr, align 8, !tbaa !4
  %evp1 = getelementptr inbounds %struct._CManager, ptr %0, i32 0, i32 28
  %1 = load ptr, ptr %evp1, align 8, !tbaa !51
  store ptr %1, ptr %evp, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #11
  store i32 0, ptr %count, align 4, !tbaa !8
  %2 = load ptr, ptr %evp, align 8, !tbaa !4
  %externs2 = getelementptr inbounds %struct._event_path_data, ptr %2, i32 0, i32 17
  %3 = load ptr, ptr %externs2, align 8, !tbaa !56
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call noalias ptr @malloc(i64 noundef 32) #13
  %4 = load ptr, ptr %evp, align 8, !tbaa !4
  %externs3 = getelementptr inbounds %struct._event_path_data, ptr %4, i32 0, i32 17
  store ptr %call, ptr %externs3, align 8, !tbaa !56
  br label %if.end

if.else:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else
  %5 = load ptr, ptr %evp, align 8, !tbaa !4
  %externs4 = getelementptr inbounds %struct._event_path_data, ptr %5, i32 0, i32 17
  %6 = load ptr, ptr %externs4, align 8, !tbaa !56
  %7 = load i32, ptr %count, align 4, !tbaa !8
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds %struct._extern_routine_struct, ptr %6, i64 %idxprom
  %extern_decl = getelementptr inbounds %struct._extern_routine_struct, ptr %arrayidx, i32 0, i32 0
  %8 = load ptr, ptr %extern_decl, align 8, !tbaa !57
  %cmp5 = icmp ne ptr %8, null
  br i1 %cmp5, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load i32, ptr %count, align 4, !tbaa !8
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %count, align 4, !tbaa !8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %10 = load ptr, ptr %evp, align 8, !tbaa !4
  %externs6 = getelementptr inbounds %struct._event_path_data, ptr %10, i32 0, i32 17
  %11 = load ptr, ptr %externs6, align 8, !tbaa !56
  %12 = load i32, ptr %count, align 4, !tbaa !8
  %add = add nsw i32 %12, 2
  %conv = sext i32 %add to i64
  %mul = mul i64 16, %conv
  %call7 = call ptr @realloc(ptr noundef %11, i64 noundef %mul) #15
  %13 = load ptr, ptr %evp, align 8, !tbaa !4
  %externs8 = getelementptr inbounds %struct._event_path_data, ptr %13, i32 0, i32 17
  store ptr %call7, ptr %externs8, align 8, !tbaa !56
  br label %if.end

if.end:                                           ; preds = %while.end, %if.then
  %14 = load ptr, ptr %extern_string.addr, align 8, !tbaa !4
  %15 = load ptr, ptr %evp, align 8, !tbaa !4
  %externs9 = getelementptr inbounds %struct._event_path_data, ptr %15, i32 0, i32 17
  %16 = load ptr, ptr %externs9, align 8, !tbaa !56
  %17 = load i32, ptr %count, align 4, !tbaa !8
  %idxprom10 = sext i32 %17 to i64
  %arrayidx11 = getelementptr inbounds %struct._extern_routine_struct, ptr %16, i64 %idxprom10
  %extern_decl12 = getelementptr inbounds %struct._extern_routine_struct, ptr %arrayidx11, i32 0, i32 0
  store ptr %14, ptr %extern_decl12, align 8, !tbaa !57
  %18 = load ptr, ptr %externs.addr, align 8, !tbaa !4
  %19 = load ptr, ptr %evp, align 8, !tbaa !4
  %externs13 = getelementptr inbounds %struct._event_path_data, ptr %19, i32 0, i32 17
  %20 = load ptr, ptr %externs13, align 8, !tbaa !56
  %21 = load i32, ptr %count, align 4, !tbaa !8
  %idxprom14 = sext i32 %21 to i64
  %arrayidx15 = getelementptr inbounds %struct._extern_routine_struct, ptr %20, i64 %idxprom14
  %externs16 = getelementptr inbounds %struct._extern_routine_struct, ptr %arrayidx15, i32 0, i32 1
  store ptr %18, ptr %externs16, align 8, !tbaa !59
  %22 = load ptr, ptr %evp, align 8, !tbaa !4
  %externs17 = getelementptr inbounds %struct._event_path_data, ptr %22, i32 0, i32 17
  %23 = load ptr, ptr %externs17, align 8, !tbaa !56
  %24 = load i32, ptr %count, align 4, !tbaa !8
  %add18 = add nsw i32 %24, 1
  %idxprom19 = sext i32 %add18 to i64
  %arrayidx20 = getelementptr inbounds %struct._extern_routine_struct, ptr %23, i64 %idxprom19
  %extern_decl21 = getelementptr inbounds %struct._extern_routine_struct, ptr %arrayidx20, i32 0, i32 0
  store ptr null, ptr %extern_decl21, align 8, !tbaa !57
  %25 = load ptr, ptr %evp, align 8, !tbaa !4
  %externs22 = getelementptr inbounds %struct._event_path_data, ptr %25, i32 0, i32 17
  %26 = load ptr, ptr %externs22, align 8, !tbaa !56
  %27 = load i32, ptr %count, align 4, !tbaa !8
  %add23 = add nsw i32 %27, 1
  %idxprom24 = sext i32 %add23 to i64
  %arrayidx25 = getelementptr inbounds %struct._extern_routine_struct, ptr %26, i64 %idxprom24
  %externs26 = getelementptr inbounds %struct._extern_routine_struct, ptr %arrayidx25, i32 0, i32 1
  store ptr null, ptr %externs26, align 8, !tbaa !59
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %evp) #11
  ret void
}

; Function Attrs: nounwind uwtable
define void @INT_EVadd_standard_structs(ptr noundef %cm, ptr noundef %lists) #0 {
entry:
  %cm.addr = alloca ptr, align 8
  %lists.addr = alloca ptr, align 8
  %evp = alloca ptr, align 8
  %count = alloca i32, align 4
  %new = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %cm, ptr %cm.addr, align 8, !tbaa !4
  store ptr %lists, ptr %lists.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %evp) #11
  %0 = load ptr, ptr %cm.addr, align 8, !tbaa !4
  %evp1 = getelementptr inbounds %struct._CManager, ptr %0, i32 0, i32 28
  %1 = load ptr, ptr %evp1, align 8, !tbaa !51
  store ptr %1, ptr %evp, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #11
  store i32 0, ptr %count, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %new) #11
  store i32 0, ptr %new, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #11
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load ptr, ptr %lists.addr, align 8, !tbaa !4
  %3 = load i32, ptr %new, align 4, !tbaa !8
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 %idxprom
  %4 = load ptr, ptr %arrayidx, align 8, !tbaa !4
  %cmp = icmp ne ptr %4, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i32, ptr %new, align 4, !tbaa !8
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %new, align 4, !tbaa !8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %6 = load ptr, ptr %evp, align 8, !tbaa !4
  %extern_structs = getelementptr inbounds %struct._event_path_data, ptr %6, i32 0, i32 18
  %7 = load ptr, ptr %extern_structs, align 8, !tbaa !54
  %cmp2 = icmp eq ptr %7, null
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %while.end
  %8 = load i32, ptr %new, align 4, !tbaa !8
  %add = add nsw i32 %8, 1
  %conv = sext i32 %add to i64
  %mul = mul i64 8, %conv
  %call = call noalias ptr @malloc(i64 noundef %mul) #13
  %9 = load ptr, ptr %evp, align 8, !tbaa !4
  %extern_structs3 = getelementptr inbounds %struct._event_path_data, ptr %9, i32 0, i32 18
  store ptr %call, ptr %extern_structs3, align 8, !tbaa !54
  br label %if.end

if.else:                                          ; preds = %while.end
  br label %while.cond4

while.cond4:                                      ; preds = %while.body10, %if.else
  %10 = load ptr, ptr %evp, align 8, !tbaa !4
  %extern_structs5 = getelementptr inbounds %struct._event_path_data, ptr %10, i32 0, i32 18
  %11 = load ptr, ptr %extern_structs5, align 8, !tbaa !54
  %12 = load i32, ptr %count, align 4, !tbaa !8
  %idxprom6 = sext i32 %12 to i64
  %arrayidx7 = getelementptr inbounds ptr, ptr %11, i64 %idxprom6
  %13 = load ptr, ptr %arrayidx7, align 8, !tbaa !4
  %cmp8 = icmp ne ptr %13, null
  br i1 %cmp8, label %while.body10, label %while.end12

while.body10:                                     ; preds = %while.cond4
  %14 = load i32, ptr %count, align 4, !tbaa !8
  %inc11 = add nsw i32 %14, 1
  store i32 %inc11, ptr %count, align 4, !tbaa !8
  br label %while.cond4

while.end12:                                      ; preds = %while.cond4
  %15 = load ptr, ptr %evp, align 8, !tbaa !4
  %extern_structs13 = getelementptr inbounds %struct._event_path_data, ptr %15, i32 0, i32 18
  %16 = load ptr, ptr %extern_structs13, align 8, !tbaa !54
  %17 = load i32, ptr %count, align 4, !tbaa !8
  %18 = load i32, ptr %new, align 4, !tbaa !8
  %add14 = add nsw i32 %17, %18
  %add15 = add nsw i32 %add14, 1
  %conv16 = sext i32 %add15 to i64
  %mul17 = mul i64 8, %conv16
  %call18 = call ptr @realloc(ptr noundef %16, i64 noundef %mul17) #15
  %19 = load ptr, ptr %evp, align 8, !tbaa !4
  %extern_structs19 = getelementptr inbounds %struct._event_path_data, ptr %19, i32 0, i32 18
  store ptr %call18, ptr %extern_structs19, align 8, !tbaa !54
  br label %if.end

if.end:                                           ; preds = %while.end12, %if.then
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %20 = load i32, ptr %i, align 4, !tbaa !8
  %21 = load i32, ptr %new, align 4, !tbaa !8
  %cmp20 = icmp sle i32 %20, %21
  br i1 %cmp20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load ptr, ptr %lists.addr, align 8, !tbaa !4
  %23 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom22 = sext i32 %23 to i64
  %arrayidx23 = getelementptr inbounds ptr, ptr %22, i64 %idxprom22
  %24 = load ptr, ptr %arrayidx23, align 8, !tbaa !4
  %25 = load ptr, ptr %evp, align 8, !tbaa !4
  %extern_structs24 = getelementptr inbounds %struct._event_path_data, ptr %25, i32 0, i32 18
  %26 = load ptr, ptr %extern_structs24, align 8, !tbaa !54
  %27 = load i32, ptr %count, align 4, !tbaa !8
  %28 = load i32, ptr %i, align 4, !tbaa !8
  %add25 = add nsw i32 %27, %28
  %idxprom26 = sext i32 %add25 to i64
  %arrayidx27 = getelementptr inbounds ptr, ptr %26, i64 %idxprom26
  store ptr %24, ptr %arrayidx27, align 8, !tbaa !4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %29 = load i32, ptr %i, align 4, !tbaa !8
  %inc28 = add nsw i32 %29, 1
  store i32 %inc28, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %new) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %evp) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @get_str(ptr noundef %str, ptr noundef %name_p) #0 {
entry:
  %str.addr = alloca ptr, align 8
  %name_p.addr = alloca ptr, align 8
  %name_len = alloca i32, align 4
  %name = alloca ptr, align 8
  store ptr %str, ptr %str.addr, align 8, !tbaa !4
  store ptr %name_p, ptr %name_p.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %name_len) #11
  store i32 0, ptr %name_len, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %name) #11
  %call = call noalias ptr @malloc(i64 noundef 1) #13
  store ptr %call, ptr %name, align 8, !tbaa !4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %str.addr, align 8, !tbaa !4
  %1 = load i8, ptr %0, align 1, !tbaa !14
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 34
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %name, align 8, !tbaa !4
  %3 = load i32, ptr %name_len, align 4, !tbaa !8
  %add = add nsw i32 %3, 2
  %conv2 = sext i32 %add to i64
  %call3 = call ptr @realloc(ptr noundef %2, i64 noundef %conv2) #15
  store ptr %call3, ptr %name, align 8, !tbaa !4
  %4 = load ptr, ptr %str.addr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, ptr %4, i32 1
  store ptr %incdec.ptr, ptr %str.addr, align 8, !tbaa !4
  %5 = load i8, ptr %4, align 1, !tbaa !14
  %6 = load ptr, ptr %name, align 8, !tbaa !4
  %7 = load i32, ptr %name_len, align 4, !tbaa !8
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %name_len, align 4, !tbaa !8
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds i8, ptr %6, i64 %idxprom
  store i8 %5, ptr %arrayidx, align 1, !tbaa !14
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %8 = load ptr, ptr %name, align 8, !tbaa !4
  %9 = load i32, ptr %name_len, align 4, !tbaa !8
  %idxprom4 = sext i32 %9 to i64
  %arrayidx5 = getelementptr inbounds i8, ptr %8, i64 %idxprom4
  store i8 0, ptr %arrayidx5, align 1, !tbaa !14
  %10 = load ptr, ptr %str.addr, align 8, !tbaa !4
  %incdec.ptr6 = getelementptr inbounds i8, ptr %10, i32 1
  store ptr %incdec.ptr6, ptr %str.addr, align 8, !tbaa !4
  %11 = load ptr, ptr %name, align 8, !tbaa !4
  %12 = load ptr, ptr %name_p.addr, align 8, !tbaa !4
  store ptr %11, ptr %12, align 8, !tbaa !4
  %13 = load ptr, ptr %str.addr, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %name) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %name_len) #11
  ret ptr %13
}

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() #8

declare ptr @get_localized_formats(ptr noundef) #5

declare void @cod_assoc_client_data(ptr noundef, i32 noundef, i64 noundef) #5

declare i32 @CMtrace_init(ptr noundef, i32 noundef) #5

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #5

; Function Attrs: nounwind
declare i32 @getpid() #3

; Function Attrs: nounwind willreturn memory(none)
declare i64 @pthread_self() #8

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) #3

declare i32 @fflush(ptr noundef) #5

declare i32 @internal_path_submit(ptr noundef, i32 noundef, ptr noundef) #5

declare void @cod_code_free(ptr noundef) #5

declare void @cod_exec_context_free(ptr noundef) #5

declare ptr @create_attr_list() #5

declare i32 @FMfdump_data(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: nounwind uwtable
define internal void @transform_free_wrapper(ptr noundef %data, ptr noundef %free_data) #0 {
entry:
  %data.addr = alloca ptr, align 8
  %free_data.addr = alloca ptr, align 8
  %out_format = alloca ptr, align 8
  store ptr %data, ptr %data.addr, align 8, !tbaa !4
  store ptr %free_data, ptr %free_data.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %out_format) #11
  %0 = load ptr, ptr %free_data.addr, align 8, !tbaa !4
  store ptr %0, ptr %out_format, align 8, !tbaa !4
  %1 = load ptr, ptr %out_format, align 8, !tbaa !4
  %2 = load ptr, ptr %data.addr, align 8, !tbaa !4
  call void @FMfree_var_rec_elements(ptr noundef %1, ptr noundef %2)
  %3 = load ptr, ptr %data.addr, align 8, !tbaa !4
  call void @free(ptr noundef %3) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %out_format) #11
  ret void
}

declare void @INT_EVsubmit(ptr noundef, ptr noundef, ptr noundef) #5

declare void @free_attr_list(ptr noundef) #5

declare void @FMfree_var_rec_elements(ptr noundef, ptr noundef) #5

declare ptr @new_cod_parse_context() #5

; Function Attrs: nounwind uwtable
define internal void @add_standard_routines(ptr noundef %stone, ptr noundef %context) #0 {
entry:
  %stone.addr = alloca ptr, align 8
  %context.addr = alloca ptr, align 8
  store ptr %stone, ptr %stone.addr, align 8, !tbaa !4
  store ptr %context, ptr %context.addr, align 8, !tbaa !4
  store ptr @printf, ptr getelementptr inbounds (%struct.extern_entry, ptr @add_standard_routines.externs, i32 0, i32 1), align 8, !tbaa !85
  store ptr @malloc, ptr getelementptr inbounds ([14 x %struct.extern_entry], ptr @add_standard_routines.externs, i64 0, i64 1, i32 1), align 8, !tbaa !85
  store ptr @free, ptr getelementptr inbounds ([14 x %struct.extern_entry], ptr @add_standard_routines.externs, i64 0, i64 2, i32 1), align 8, !tbaa !85
  store ptr @lrand48, ptr getelementptr inbounds ([14 x %struct.extern_entry], ptr @add_standard_routines.externs, i64 0, i64 3, i32 1), align 8, !tbaa !85
  store ptr @drand48, ptr getelementptr inbounds ([14 x %struct.extern_entry], ptr @add_standard_routines.externs, i64 0, i64 4, i32 1), align 8, !tbaa !85
  %0 = load ptr, ptr %stone.addr, align 8, !tbaa !4
  %stone_attrs = getelementptr inbounds %struct._stone, ptr %0, i32 0, i32 18
  %1 = ptrtoint ptr %stone_attrs to i64
  %2 = inttoptr i64 %1 to ptr
  store ptr %2, ptr getelementptr inbounds ([14 x %struct.extern_entry], ptr @add_standard_routines.externs, i64 0, i64 5, i32 1), align 8, !tbaa !85
  store ptr @internal_cod_submit, ptr getelementptr inbounds ([14 x %struct.extern_entry], ptr @add_standard_routines.externs, i64 0, i64 6, i32 1), align 8, !tbaa !85
  store ptr @internal_cod_submit_attr, ptr getelementptr inbounds ([14 x %struct.extern_entry], ptr @add_standard_routines.externs, i64 0, i64 7, i32 1), align 8, !tbaa !85
  store ptr @internal_cod_submit_general, ptr getelementptr inbounds ([14 x %struct.extern_entry], ptr @add_standard_routines.externs, i64 0, i64 8, i32 1), align 8, !tbaa !85
  store ptr @sleep, ptr getelementptr inbounds ([14 x %struct.extern_entry], ptr @add_standard_routines.externs, i64 0, i64 9, i32 1), align 8, !tbaa !85
  store ptr @cod_max_output, ptr getelementptr inbounds ([14 x %struct.extern_entry], ptr @add_standard_routines.externs, i64 0, i64 10, i32 1), align 8, !tbaa !85
  store ptr @cod_target_stone_on_port, ptr getelementptr inbounds ([14 x %struct.extern_entry], ptr @add_standard_routines.externs, i64 0, i64 11, i32 1), align 8, !tbaa !85
  store ptr @cod_ev_get_stone_attrs, ptr getelementptr inbounds ([14 x %struct.extern_entry], ptr @add_standard_routines.externs, i64 0, i64 12, i32 1), align 8, !tbaa !85
  %3 = load ptr, ptr %context.addr, align 8, !tbaa !4
  call void @cod_assoc_externs(ptr noundef %3, ptr noundef @add_standard_routines.externs)
  %4 = load ptr, ptr %context.addr, align 8, !tbaa !4
  %call = call i32 @cod_parse_for_context(ptr noundef @add_standard_routines.extern_string, ptr noundef %4)
  ret void
}

declare void @add_metrics_routines(ptr noundef, ptr noundef) #5

declare void @cod_add_struct_type(ptr noundef, ptr noundef) #5

declare void @cod_assoc_externs(ptr noundef, ptr noundef) #5

declare i32 @cod_parse_for_context(ptr noundef, ptr noundef) #5

declare void @cod_add_param(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #5

; Function Attrs: nounwind uwtable
define internal void @add_param(ptr noundef %parse_context, ptr noundef %name, i32 noundef %param_num, ptr noundef %format) #0 {
entry:
  %parse_context.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %param_num.addr = alloca i32, align 4
  %format.addr = alloca ptr, align 8
  %list = alloca ptr, align 8
  %i = alloca i32, align 4
  %type = alloca ptr, align 8
  %param = alloca ptr, align 8
  %fl = alloca ptr, align 8
  store ptr %parse_context, ptr %parse_context.addr, align 8, !tbaa !4
  store ptr %name, ptr %name.addr, align 8, !tbaa !4
  store i32 %param_num, ptr %param_num.addr, align 4, !tbaa !8
  store ptr %format, ptr %format.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %list) #11
  %0 = load ptr, ptr %format.addr, align 8, !tbaa !4
  %call = call ptr @format_list_of_FMFormat(ptr noundef %0)
  store ptr %call, ptr %list, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #11
  store i32 1, ptr %i, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %type) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %param) #11
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load ptr, ptr %list, align 8, !tbaa !4
  %2 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds %struct._FMformat_list, ptr %1, i64 %idxprom
  %format_name = getelementptr inbounds %struct._FMformat_list, ptr %arrayidx, i32 0, i32 0
  %3 = load ptr, ptr %format_name, align 8, !tbaa !10
  %cmp = icmp ne ptr %3, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %fl) #11
  %4 = load ptr, ptr %list, align 8, !tbaa !4
  %5 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds %struct._FMformat_list, ptr %4, i64 %idxprom1
  %field_list = getelementptr inbounds %struct._FMformat_list, ptr %arrayidx2, i32 0, i32 1
  %6 = load ptr, ptr %field_list, align 8, !tbaa !15
  store ptr %6, ptr %fl, align 8, !tbaa !4
  %7 = load ptr, ptr %list, align 8, !tbaa !4
  %8 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom3 = sext i32 %8 to i64
  %arrayidx4 = getelementptr inbounds %struct._FMformat_list, ptr %7, i64 %idxprom3
  %format_name5 = getelementptr inbounds %struct._FMformat_list, ptr %arrayidx4, i32 0, i32 0
  %9 = load ptr, ptr %format_name5, align 8, !tbaa !10
  %10 = load ptr, ptr %fl, align 8, !tbaa !4
  %11 = load ptr, ptr %parse_context.addr, align 8, !tbaa !4
  call void @cod_add_simple_struct_type(ptr noundef %9, ptr noundef %10, ptr noundef %11)
  %12 = load i32, ptr %i, align 4, !tbaa !8
  %inc = add nsw i32 %12, 1
  store i32 %inc, ptr %i, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 8, ptr %fl) #11
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %13 = load ptr, ptr %list, align 8, !tbaa !4
  %arrayidx6 = getelementptr inbounds %struct._FMformat_list, ptr %13, i64 0
  %format_name7 = getelementptr inbounds %struct._FMformat_list, ptr %arrayidx6, i32 0, i32 0
  %14 = load ptr, ptr %format_name7, align 8, !tbaa !10
  %15 = load ptr, ptr %list, align 8, !tbaa !4
  %arrayidx8 = getelementptr inbounds %struct._FMformat_list, ptr %15, i64 0
  %field_list9 = getelementptr inbounds %struct._FMformat_list, ptr %arrayidx8, i32 0, i32 1
  %16 = load ptr, ptr %field_list9, align 8, !tbaa !15
  %call10 = call ptr @cod_build_type_node(ptr noundef %14, ptr noundef %16)
  store ptr %call10, ptr %type, align 8, !tbaa !4
  %17 = load ptr, ptr %list, align 8, !tbaa !4
  %arrayidx11 = getelementptr inbounds %struct._FMformat_list, ptr %17, i64 0
  %format_name12 = getelementptr inbounds %struct._FMformat_list, ptr %arrayidx11, i32 0, i32 0
  %18 = load ptr, ptr %format_name12, align 8, !tbaa !10
  %19 = load ptr, ptr %type, align 8, !tbaa !4
  %20 = load ptr, ptr %parse_context.addr, align 8, !tbaa !4
  call void @cod_add_decl_to_parse_context(ptr noundef %18, ptr noundef %19, ptr noundef %20)
  %21 = load ptr, ptr %name.addr, align 8, !tbaa !4
  %22 = load ptr, ptr %type, align 8, !tbaa !4
  %23 = load i32, ptr %param_num.addr, align 4, !tbaa !8
  %call13 = call ptr @cod_build_param_node(ptr noundef %21, ptr noundef %22, i32 noundef %23)
  store ptr %call13, ptr %param, align 8, !tbaa !4
  %24 = load ptr, ptr %name.addr, align 8, !tbaa !4
  %25 = load ptr, ptr %param, align 8, !tbaa !4
  %26 = load ptr, ptr %parse_context.addr, align 8, !tbaa !4
  call void @cod_add_decl_to_parse_context(ptr noundef %24, ptr noundef %25, ptr noundef %26)
  call void @llvm.lifetime.end.p0(i64 8, ptr %param) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %type) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %list) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @dll_prefix_present(ptr noundef %filter) #0 {
entry:
  %retval = alloca i32, align 4
  %filter.addr = alloca ptr, align 8
  store ptr %filter, ptr %filter.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %filter.addr, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 0
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !14
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 100
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %filter.addr, align 8, !tbaa !4
  %arrayidx2 = getelementptr inbounds i8, ptr %2, i64 1
  %3 = load i8, ptr %arrayidx2, align 1, !tbaa !14
  %conv3 = sext i8 %3 to i32
  %cmp4 = icmp eq i32 %conv3, 108
  br i1 %cmp4, label %land.lhs.true6, label %if.end

land.lhs.true6:                                   ; preds = %land.lhs.true
  %4 = load ptr, ptr %filter.addr, align 8, !tbaa !4
  %arrayidx7 = getelementptr inbounds i8, ptr %4, i64 2
  %5 = load i8, ptr %arrayidx7, align 1, !tbaa !14
  %conv8 = sext i8 %5 to i32
  %cmp9 = icmp eq i32 %conv8, 108
  br i1 %cmp9, label %land.lhs.true11, label %if.end

land.lhs.true11:                                  ; preds = %land.lhs.true6
  %6 = load ptr, ptr %filter.addr, align 8, !tbaa !4
  %arrayidx12 = getelementptr inbounds i8, ptr %6, i64 3
  %7 = load i8, ptr %arrayidx12, align 1, !tbaa !14
  %conv13 = sext i8 %7 to i32
  %cmp14 = icmp eq i32 %conv13, 58
  br i1 %cmp14, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true11
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true11, %land.lhs.true6, %land.lhs.true, %entry
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, ptr %retval, align 4
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define internal ptr @extract_dll_path(ptr noundef %filter) #0 {
entry:
  %retval = alloca ptr, align 8
  %filter.addr = alloca ptr, align 8
  %copy = alloca ptr, align 8
  %temp = alloca ptr, align 8
  %path = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %filter, ptr %filter.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %copy) #11
  %0 = load ptr, ptr %filter.addr, align 8, !tbaa !4
  %call = call noalias ptr @strdup(ptr noundef %0) #11
  store ptr %call, ptr %copy, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %temp) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %path) #11
  %1 = load ptr, ptr %copy, align 8, !tbaa !4
  %call1 = call ptr @strtok(ptr noundef %1, ptr noundef @.str.78) #11
  store ptr %call1, ptr %temp, align 8, !tbaa !4
  %2 = load ptr, ptr %temp, align 8, !tbaa !4
  %call2 = call i32 @strcmp(ptr noundef %2, ptr noundef @.str.79) #12
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %copy, align 8, !tbaa !4
  call void @free(ptr noundef %3) #11
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call ptr @strtok(ptr noundef null, ptr noundef @.str.78) #11
  store ptr %call3, ptr %temp, align 8, !tbaa !4
  %4 = load ptr, ptr %temp, align 8, !tbaa !4
  %cmp = icmp eq ptr %4, null
  br i1 %cmp, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  %5 = load ptr, ptr %copy, align 8, !tbaa !4
  call void @free(ptr noundef %5) #11
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %6 = load ptr, ptr %temp, align 8, !tbaa !4
  %call6 = call noalias ptr @strdup(ptr noundef %6) #11
  store ptr %call6, ptr %path, align 8, !tbaa !4
  %7 = load ptr, ptr %copy, align 8, !tbaa !4
  call void @free(ptr noundef %7) #11
  %8 = load ptr, ptr %path, align 8, !tbaa !4
  store ptr %8, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %path) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %temp) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %copy) #11
  %9 = load ptr, ptr %retval, align 8
  ret ptr %9
}

; Function Attrs: nounwind uwtable
define internal ptr @extract_symbol_name(ptr noundef %filter) #0 {
entry:
  %retval = alloca ptr, align 8
  %filter.addr = alloca ptr, align 8
  %copy = alloca ptr, align 8
  %temp = alloca ptr, align 8
  %symbol = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %filter, ptr %filter.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %copy) #11
  %0 = load ptr, ptr %filter.addr, align 8, !tbaa !4
  %call = call noalias ptr @strdup(ptr noundef %0) #11
  store ptr %call, ptr %copy, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %temp) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %symbol) #11
  %1 = load ptr, ptr %copy, align 8, !tbaa !4
  %call1 = call ptr @strtok(ptr noundef %1, ptr noundef @.str.78) #11
  store ptr %call1, ptr %temp, align 8, !tbaa !4
  %2 = load ptr, ptr %temp, align 8, !tbaa !4
  %call2 = call i32 @strcmp(ptr noundef %2, ptr noundef @.str.79) #12
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %copy, align 8, !tbaa !4
  call void @free(ptr noundef %3) #11
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call ptr @strtok(ptr noundef null, ptr noundef @.str.78) #11
  store ptr %call3, ptr %temp, align 8, !tbaa !4
  %call4 = call ptr @strtok(ptr noundef null, ptr noundef @.str.78) #11
  store ptr %call4, ptr %temp, align 8, !tbaa !4
  %4 = load ptr, ptr %temp, align 8, !tbaa !4
  %cmp = icmp eq ptr %4, null
  br i1 %cmp, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  %5 = load ptr, ptr %copy, align 8, !tbaa !4
  call void @free(ptr noundef %5) #11
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %6 = load ptr, ptr %temp, align 8, !tbaa !4
  %call7 = call noalias ptr @strdup(ptr noundef %6) #11
  store ptr %call7, ptr %symbol, align 8, !tbaa !4
  %7 = load ptr, ptr %copy, align 8, !tbaa !4
  call void @free(ptr noundef %7) #11
  %8 = load ptr, ptr %symbol, align 8, !tbaa !4
  store ptr %8, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %symbol) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %temp) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %copy) #11
  %9 = load ptr, ptr %retval, align 8
  ret ptr %9
}

; Function Attrs: nounwind uwtable
define internal ptr @load_dll_symbol(ptr noundef %cm, ptr noundef %path, ptr noundef %symbol_name) #0 {
entry:
  %retval = alloca ptr, align 8
  %cm.addr = alloca ptr, align 8
  %path.addr = alloca ptr, align 8
  %symbol_name.addr = alloca ptr, align 8
  %handle = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cm, ptr %cm.addr, align 8, !tbaa !4
  store ptr %path, ptr %path.addr, align 8, !tbaa !4
  store ptr %symbol_name, ptr %symbol_name.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %handle) #11
  %0 = load ptr, ptr %cm.addr, align 8, !tbaa !4
  %CMTrace_file = getelementptr inbounds %struct._CManager, ptr %0, i32 0, i32 29
  %1 = load ptr, ptr %CMTrace_file, align 8, !tbaa !67
  %2 = load ptr, ptr %path.addr, align 8, !tbaa !4
  %call = call ptr @CMdlopen(ptr noundef %1, ptr noundef %2, i32 noundef 0)
  store ptr %call, ptr %handle, align 8, !tbaa !4
  %3 = load ptr, ptr %handle, align 8, !tbaa !4
  %tobool = icmp ne ptr %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr @stderr, align 8, !tbaa !4
  %5 = load ptr, ptr %path.addr, align 8, !tbaa !4
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.80, ptr noundef %5)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %handle, align 8, !tbaa !4
  %7 = load ptr, ptr %symbol_name.addr, align 8, !tbaa !4
  %call2 = call ptr @CMdlsym(ptr noundef %6, ptr noundef %7)
  store ptr %call2, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %handle) #11
  %8 = load ptr, ptr %retval, align 8
  ret ptr %8
}

declare ptr @cod_code_gen(ptr noundef, ptr noundef) #5

declare ptr @cod_create_exec_context(ptr noundef) #5

declare void @cod_free_parse_context(ptr noundef) #5

; Function Attrs: nounwind
declare i64 @lrand48() #3

; Function Attrs: nounwind
declare double @drand48() #3

; Function Attrs: nounwind uwtable
define internal void @internal_cod_submit(ptr noundef %ec, i32 noundef %port, ptr noundef %data, ptr noundef %type_info) #0 {
entry:
  %ec.addr = alloca ptr, align 8
  %port.addr = alloca i32, align 4
  %data.addr = alloca ptr, align 8
  %type_info.addr = alloca ptr, align 8
  store ptr %ec, ptr %ec.addr, align 8, !tbaa !4
  store i32 %port, ptr %port.addr, align 4, !tbaa !8
  store ptr %data, ptr %data.addr, align 8, !tbaa !4
  store ptr %type_info, ptr %type_info.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %ec.addr, align 8, !tbaa !4
  %1 = load i32, ptr %port.addr, align 4, !tbaa !8
  %2 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %type_info.addr, align 8, !tbaa !4
  call void @internal_cod_submit_general(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef null, ptr noundef null)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @internal_cod_submit_attr(ptr noundef %ec, i32 noundef %port, ptr noundef %data, ptr noundef %type_info, ptr noundef %attrs) #0 {
entry:
  %ec.addr = alloca ptr, align 8
  %port.addr = alloca i32, align 4
  %data.addr = alloca ptr, align 8
  %type_info.addr = alloca ptr, align 8
  %attrs.addr = alloca ptr, align 8
  store ptr %ec, ptr %ec.addr, align 8, !tbaa !4
  store i32 %port, ptr %port.addr, align 4, !tbaa !8
  store ptr %data, ptr %data.addr, align 8, !tbaa !4
  store ptr %type_info, ptr %type_info.addr, align 8, !tbaa !4
  store ptr %attrs, ptr %attrs.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %ec.addr, align 8, !tbaa !4
  %1 = load i32, ptr %port.addr, align 4, !tbaa !8
  %2 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %type_info.addr, align 8, !tbaa !4
  %4 = load ptr, ptr %attrs.addr, align 8, !tbaa !4
  call void @internal_cod_submit_general(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef null)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @internal_cod_submit_general(ptr noundef %ec, i32 noundef %port, ptr noundef %data, ptr noundef %type_info, ptr noundef %attrs, ptr noundef %tp) #0 {
entry:
  %ec.addr = alloca ptr, align 8
  %port.addr = alloca i32, align 4
  %data.addr = alloca ptr, align 8
  %type_info.addr = alloca ptr, align 8
  %attrs.addr = alloca ptr, align 8
  %tp.addr = alloca ptr, align 8
  %ev_state = alloca ptr, align 8
  %cm = alloca ptr, align 8
  %evp = alloca ptr, align 8
  %event = alloca ptr, align 8
  %target_stone = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %ts = alloca %struct.timespec, align 8
  %ev = alloca ptr, align 8
  %event_format = alloca ptr, align 8
  %ts57 = alloca %struct.timespec, align 8
  %handle = alloca ptr, align 8
  %ev113 = alloca ptr, align 8
  store ptr %ec, ptr %ec.addr, align 8, !tbaa !4
  store i32 %port, ptr %port.addr, align 4, !tbaa !8
  store ptr %data, ptr %data.addr, align 8, !tbaa !4
  store ptr %type_info, ptr %type_info.addr, align 8, !tbaa !4
  store ptr %attrs, ptr %attrs.addr, align 8, !tbaa !4
  store ptr %tp, ptr %tp.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ev_state) #11
  %0 = load ptr, ptr %ec.addr, align 8, !tbaa !4
  %call = call i64 @cod_get_client_data(ptr noundef %0, i32 noundef 878082192)
  %1 = inttoptr i64 %call to ptr
  store ptr %1, ptr %ev_state, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %cm) #11
  %2 = load ptr, ptr %ev_state, align 8, !tbaa !4
  %cm1 = getelementptr inbounds %struct.ev_state_data, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %cm1, align 8, !tbaa !25
  store ptr %3, ptr %cm, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %evp) #11
  %4 = load ptr, ptr %ev_state, align 8, !tbaa !4
  %cm2 = getelementptr inbounds %struct.ev_state_data, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %cm2, align 8, !tbaa !25
  %evp3 = getelementptr inbounds %struct._CManager, ptr %5, i32 0, i32 28
  %6 = load ptr, ptr %evp3, align 8, !tbaa !51
  store ptr %6, ptr %evp, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %event) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr %target_stone) #11
  %7 = load ptr, ptr %ev_state, align 8, !tbaa !4
  %8 = load i32, ptr %port.addr, align 4, !tbaa !8
  %call4 = call i32 @port_to_stone(ptr noundef %7, i32 noundef %8)
  store i32 %call4, ptr %target_stone, align 4, !tbaa !8
  %9 = load i32, ptr %target_stone, align 4, !tbaa !8
  %cmp = icmp eq i32 %9, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load i32, ptr %port.addr, align 4, !tbaa !8
  %11 = load ptr, ptr %ev_state, align 8, !tbaa !4
  %stone = getelementptr inbounds %struct.ev_state_data, ptr %11, i32 0, i32 2
  %12 = load i32, ptr %stone, align 8, !tbaa !71
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str.69, i32 noundef %10, i32 noundef %12)
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup127

if.end:                                           ; preds = %entry
  %13 = load ptr, ptr %cm, align 8, !tbaa !4
  %call6 = call i32 @CManager_locked(ptr noundef %13)
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end
  br label %if.end8

if.else:                                          ; preds = %if.end
  call void @__assert_fail(ptr noundef @.str.70, ptr noundef @.str.28, i32 noundef 1633, ptr noundef @__PRETTY_FUNCTION__.internal_cod_submit_general) #16
  unreachable

if.end8:                                          ; preds = %if.then7
  %14 = load ptr, ptr %ev_state, align 8, !tbaa !4
  %did_output = getelementptr inbounds %struct.ev_state_data, ptr %14, i32 0, i32 9
  %15 = load i32, ptr %did_output, align 8, !tbaa !84
  %inc = add nsw i32 %15, 1
  store i32 %inc, ptr %did_output, align 8, !tbaa !84
  %16 = load ptr, ptr %ev_state, align 8, !tbaa !4
  %cur_event = getelementptr inbounds %struct.ev_state_data, ptr %16, i32 0, i32 1
  %17 = load ptr, ptr %cur_event, align 8, !tbaa !61
  %tobool9 = icmp ne ptr %17, null
  br i1 %tobool9, label %land.lhs.true, label %if.else56

land.lhs.true:                                    ; preds = %if.end8
  %18 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %19 = load ptr, ptr %ev_state, align 8, !tbaa !4
  %cur_event10 = getelementptr inbounds %struct.ev_state_data, ptr %19, i32 0, i32 1
  %20 = load ptr, ptr %cur_event10, align 8, !tbaa !61
  %decoded_event = getelementptr inbounds %struct._event_item, ptr %20, i32 0, i32 5
  %21 = load ptr, ptr %decoded_event, align 8, !tbaa !66
  %cmp11 = icmp eq ptr %18, %21
  br i1 %cmp11, label %if.then12, label %if.else56

if.then12:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 16, ptr %ts) #11
  %22 = load ptr, ptr %cm, align 8, !tbaa !4
  %CMTrace_file = getelementptr inbounds %struct._CManager, ptr %22, i32 0, i32 29
  %23 = load ptr, ptr %CMTrace_file, align 8, !tbaa !67
  %cmp13 = icmp eq ptr %23, null
  br i1 %cmp13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then12
  %24 = load ptr, ptr %cm, align 8, !tbaa !4
  %call14 = call i32 @CMtrace_init(ptr noundef %24, i32 noundef 10)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %cond.true17, label %cond.false35

cond.false:                                       ; preds = %if.then12
  %25 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @CMtrace_val, i64 0, i64 10), align 4, !tbaa !8
  %tobool16 = icmp ne i32 %25, 0
  br i1 %tobool16, label %cond.true17, label %cond.false35

cond.true17:                                      ; preds = %cond.false, %cond.true
  %26 = load i32, ptr @CMtrace_PID, align 4, !tbaa !8
  %tobool18 = icmp ne i32 %26, 0
  br i1 %tobool18, label %cond.true19, label %cond.false24

cond.true19:                                      ; preds = %cond.true17
  %27 = load ptr, ptr %cm, align 8, !tbaa !4
  %CMTrace_file20 = getelementptr inbounds %struct._CManager, ptr %27, i32 0, i32 29
  %28 = load ptr, ptr %CMTrace_file20, align 8, !tbaa !67
  %call21 = call i32 @getpid() #11
  %conv = sext i32 %call21 to i64
  %call22 = call i64 @pthread_self() #14
  %call23 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %28, ptr noundef @.str.33, i64 noundef %conv, i64 noundef %call22)
  br label %cond.end

cond.false24:                                     ; preds = %cond.true17
  br label %cond.end

cond.end:                                         ; preds = %cond.false24, %cond.true19
  %cond = phi i32 [ %call23, %cond.true19 ], [ 0, %cond.false24 ]
  %29 = load i32, ptr @CMtrace_timing, align 4, !tbaa !8
  %tobool25 = icmp ne i32 %29, 0
  br i1 %tobool25, label %cond.true26, label %cond.false30

cond.true26:                                      ; preds = %cond.end
  %call27 = call i32 @clock_gettime(i32 noundef 1, ptr noundef %ts) #11
  %30 = load ptr, ptr %cm, align 8, !tbaa !4
  %CMTrace_file28 = getelementptr inbounds %struct._CManager, ptr %30, i32 0, i32 29
  %31 = load ptr, ptr %CMTrace_file28, align 8, !tbaa !67
  %tv_sec = getelementptr inbounds %struct.timespec, ptr %ts, i32 0, i32 0
  %32 = load i64, ptr %tv_sec, align 8, !tbaa !68
  %tv_nsec = getelementptr inbounds %struct.timespec, ptr %ts, i32 0, i32 1
  %33 = load i64, ptr %tv_nsec, align 8, !tbaa !70
  %call29 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %31, ptr noundef @.str.34, i64 noundef %32, i64 noundef %33)
  br label %cond.end31

cond.false30:                                     ; preds = %cond.end
  br label %cond.end31

cond.end31:                                       ; preds = %cond.false30, %cond.true26
  %cond32 = phi i32 [ %call29, %cond.true26 ], [ 0, %cond.false30 ]
  %34 = load ptr, ptr %cm, align 8, !tbaa !4
  %CMTrace_file33 = getelementptr inbounds %struct._CManager, ptr %34, i32 0, i32 29
  %35 = load ptr, ptr %CMTrace_file33, align 8, !tbaa !67
  %36 = load i32, ptr %target_stone, align 4, !tbaa !8
  %call34 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %35, ptr noundef @.str.71, i32 noundef %36)
  br label %cond.end36

cond.false35:                                     ; preds = %cond.false, %cond.true
  br label %cond.end36

cond.end36:                                       ; preds = %cond.false35, %cond.end31
  %cond37 = phi i32 [ %call34, %cond.end31 ], [ 0, %cond.false35 ]
  %37 = load ptr, ptr %cm, align 8, !tbaa !4
  %CMTrace_file38 = getelementptr inbounds %struct._CManager, ptr %37, i32 0, i32 29
  %38 = load ptr, ptr %CMTrace_file38, align 8, !tbaa !67
  %call39 = call i32 @fflush(ptr noundef %38)
  call void @llvm.lifetime.end.p0(i64 16, ptr %ts) #11
  %39 = load ptr, ptr %tp.addr, align 8, !tbaa !4
  %tobool40 = icmp ne ptr %39, null
  br i1 %tobool40, label %if.then41, label %if.else51

if.then41:                                        ; preds = %cond.end36
  call void @llvm.lifetime.start.p0(i64 8, ptr %ev) #11
  %call42 = call noalias ptr @malloc(i64 noundef 16) #13
  store ptr %call42, ptr %ev, align 8, !tbaa !4
  %40 = load i32, ptr %target_stone, align 4, !tbaa !8
  %41 = load ptr, ptr %ev, align 8, !tbaa !4
  %to_stone = getelementptr inbounds %struct.delayed_event, ptr %41, i32 0, i32 0
  store i32 %40, ptr %to_stone, align 8, !tbaa !87
  %42 = load ptr, ptr %ev_state, align 8, !tbaa !4
  %cur_event43 = getelementptr inbounds %struct.ev_state_data, ptr %42, i32 0, i32 1
  %43 = load ptr, ptr %cur_event43, align 8, !tbaa !61
  %44 = load ptr, ptr %ev, align 8, !tbaa !4
  %event44 = getelementptr inbounds %struct.delayed_event, ptr %44, i32 0, i32 1
  store ptr %43, ptr %event44, align 8, !tbaa !89
  %45 = load ptr, ptr %ev_state, align 8, !tbaa !4
  %cur_event45 = getelementptr inbounds %struct.ev_state_data, ptr %45, i32 0, i32 1
  %46 = load ptr, ptr %cur_event45, align 8, !tbaa !61
  %ref_count = getelementptr inbounds %struct._event_item, ptr %46, i32 0, i32 0
  %47 = load i32, ptr %ref_count, align 8, !tbaa !90
  %inc46 = add nsw i32 %47, 1
  store i32 %inc46, ptr %ref_count, align 8, !tbaa !90
  %48 = load ptr, ptr %cm, align 8, !tbaa !4
  %49 = load ptr, ptr %tp.addr, align 8, !tbaa !4
  %tv_sec47 = getelementptr inbounds %struct.timeval, ptr %49, i32 0, i32 0
  %50 = load i64, ptr %tv_sec47, align 8, !tbaa !91
  %conv48 = trunc i64 %50 to i32
  %51 = load ptr, ptr %tp.addr, align 8, !tbaa !4
  %tv_usec = getelementptr inbounds %struct.timeval, ptr %51, i32 0, i32 1
  %52 = load i64, ptr %tv_usec, align 8, !tbaa !92
  %conv49 = trunc i64 %52 to i32
  %53 = load ptr, ptr %ev, align 8, !tbaa !4
  %call50 = call ptr @INT_CMadd_delayed_task(ptr noundef %48, i32 noundef %conv48, i32 noundef %conv49, ptr noundef @EVdelayed_submit_func, ptr noundef %53)
  call void @llvm.lifetime.end.p0(i64 8, ptr %ev) #11
  br label %if.end55

if.else51:                                        ; preds = %cond.end36
  %54 = load ptr, ptr %ev_state, align 8, !tbaa !4
  %cm52 = getelementptr inbounds %struct.ev_state_data, ptr %54, i32 0, i32 0
  %55 = load ptr, ptr %cm52, align 8, !tbaa !25
  %56 = load i32, ptr %target_stone, align 4, !tbaa !8
  %57 = load ptr, ptr %ev_state, align 8, !tbaa !4
  %cur_event53 = getelementptr inbounds %struct.ev_state_data, ptr %57, i32 0, i32 1
  %58 = load ptr, ptr %cur_event53, align 8, !tbaa !61
  %call54 = call i32 @internal_path_submit(ptr noundef %55, i32 noundef %56, ptr noundef %58)
  br label %if.end55

if.end55:                                         ; preds = %if.else51, %if.then41
  br label %if.end126

if.else56:                                        ; preds = %land.lhs.true, %if.end8
  call void @llvm.lifetime.start.p0(i64 8, ptr %event_format) #11
  store ptr null, ptr %event_format, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 16, ptr %ts57) #11
  %59 = load ptr, ptr %cm, align 8, !tbaa !4
  %CMTrace_file58 = getelementptr inbounds %struct._CManager, ptr %59, i32 0, i32 29
  %60 = load ptr, ptr %CMTrace_file58, align 8, !tbaa !67
  %cmp59 = icmp eq ptr %60, null
  br i1 %cmp59, label %cond.true61, label %cond.false64

cond.true61:                                      ; preds = %if.else56
  %61 = load ptr, ptr %cm, align 8, !tbaa !4
  %call62 = call i32 @CMtrace_init(ptr noundef %61, i32 noundef 10)
  %tobool63 = icmp ne i32 %call62, 0
  br i1 %tobool63, label %cond.true66, label %cond.false89

cond.false64:                                     ; preds = %if.else56
  %62 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @CMtrace_val, i64 0, i64 10), align 4, !tbaa !8
  %tobool65 = icmp ne i32 %62, 0
  br i1 %tobool65, label %cond.true66, label %cond.false89

cond.true66:                                      ; preds = %cond.false64, %cond.true61
  %63 = load i32, ptr @CMtrace_PID, align 4, !tbaa !8
  %tobool67 = icmp ne i32 %63, 0
  br i1 %tobool67, label %cond.true68, label %cond.false74

cond.true68:                                      ; preds = %cond.true66
  %64 = load ptr, ptr %cm, align 8, !tbaa !4
  %CMTrace_file69 = getelementptr inbounds %struct._CManager, ptr %64, i32 0, i32 29
  %65 = load ptr, ptr %CMTrace_file69, align 8, !tbaa !67
  %call70 = call i32 @getpid() #11
  %conv71 = sext i32 %call70 to i64
  %call72 = call i64 @pthread_self() #14
  %call73 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %65, ptr noundef @.str.33, i64 noundef %conv71, i64 noundef %call72)
  br label %cond.end75

cond.false74:                                     ; preds = %cond.true66
  br label %cond.end75

cond.end75:                                       ; preds = %cond.false74, %cond.true68
  %cond76 = phi i32 [ %call73, %cond.true68 ], [ 0, %cond.false74 ]
  %66 = load i32, ptr @CMtrace_timing, align 4, !tbaa !8
  %tobool77 = icmp ne i32 %66, 0
  br i1 %tobool77, label %cond.true78, label %cond.false84

cond.true78:                                      ; preds = %cond.end75
  %call79 = call i32 @clock_gettime(i32 noundef 1, ptr noundef %ts57) #11
  %67 = load ptr, ptr %cm, align 8, !tbaa !4
  %CMTrace_file80 = getelementptr inbounds %struct._CManager, ptr %67, i32 0, i32 29
  %68 = load ptr, ptr %CMTrace_file80, align 8, !tbaa !67
  %tv_sec81 = getelementptr inbounds %struct.timespec, ptr %ts57, i32 0, i32 0
  %69 = load i64, ptr %tv_sec81, align 8, !tbaa !68
  %tv_nsec82 = getelementptr inbounds %struct.timespec, ptr %ts57, i32 0, i32 1
  %70 = load i64, ptr %tv_nsec82, align 8, !tbaa !70
  %call83 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %68, ptr noundef @.str.34, i64 noundef %69, i64 noundef %70)
  br label %cond.end85

cond.false84:                                     ; preds = %cond.end75
  br label %cond.end85

cond.end85:                                       ; preds = %cond.false84, %cond.true78
  %cond86 = phi i32 [ %call83, %cond.true78 ], [ 0, %cond.false84 ]
  %71 = load ptr, ptr %cm, align 8, !tbaa !4
  %CMTrace_file87 = getelementptr inbounds %struct._CManager, ptr %71, i32 0, i32 29
  %72 = load ptr, ptr %CMTrace_file87, align 8, !tbaa !67
  %73 = load i32, ptr %target_stone, align 4, !tbaa !8
  %call88 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %72, ptr noundef @.str.72, i32 noundef %73)
  br label %cond.end90

cond.false89:                                     ; preds = %cond.false64, %cond.true61
  br label %cond.end90

cond.end90:                                       ; preds = %cond.false89, %cond.end85
  %cond91 = phi i32 [ %call88, %cond.end85 ], [ 0, %cond.false89 ]
  %74 = load ptr, ptr %cm, align 8, !tbaa !4
  %CMTrace_file92 = getelementptr inbounds %struct._CManager, ptr %74, i32 0, i32 29
  %75 = load ptr, ptr %CMTrace_file92, align 8, !tbaa !67
  %call93 = call i32 @fflush(ptr noundef %75)
  call void @llvm.lifetime.end.p0(i64 16, ptr %ts57) #11
  %76 = load ptr, ptr %event_format, align 8, !tbaa !4
  %cmp94 = icmp eq ptr %76, null
  br i1 %cmp94, label %if.then96, label %if.end103

if.then96:                                        ; preds = %cond.end90
  %77 = load ptr, ptr %cm, align 8, !tbaa !4
  %78 = load ptr, ptr %type_info.addr, align 8, !tbaa !4
  %call97 = call ptr @EVregister_format_set(ptr noundef %77, ptr noundef %78)
  store ptr %call97, ptr %event_format, align 8, !tbaa !4
  %79 = load ptr, ptr %event_format, align 8, !tbaa !4
  %cmp98 = icmp eq ptr %79, null
  br i1 %cmp98, label %if.then100, label %if.end102

if.then100:                                       ; preds = %if.then96
  %call101 = call i32 (ptr, ...) @printf(ptr noundef @.str.73)
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end102:                                        ; preds = %if.then96
  br label %if.end103

if.end103:                                        ; preds = %if.end102, %cond.end90
  %80 = load ptr, ptr %evp, align 8, !tbaa !4
  %call104 = call ptr @get_free_event(ptr noundef %80)
  store ptr %call104, ptr %event, align 8, !tbaa !4
  %81 = load ptr, ptr %event, align 8, !tbaa !4
  %event_encoded = getelementptr inbounds %struct._event_item, ptr %81, i32 0, i32 1
  store i32 0, ptr %event_encoded, align 4, !tbaa !38
  %82 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %83 = load ptr, ptr %event, align 8, !tbaa !4
  %decoded_event105 = getelementptr inbounds %struct._event_item, ptr %83, i32 0, i32 5
  store ptr %82, ptr %decoded_event105, align 8, !tbaa !66
  %84 = load ptr, ptr %event_format, align 8, !tbaa !4
  %85 = load ptr, ptr %event, align 8, !tbaa !4
  %reference_format = getelementptr inbounds %struct._event_item, ptr %85, i32 0, i32 7
  store ptr %84, ptr %reference_format, align 8, !tbaa !33
  %86 = load ptr, ptr %event, align 8, !tbaa !4
  %format = getelementptr inbounds %struct._event_item, ptr %86, i32 0, i32 9
  store ptr null, ptr %format, align 8, !tbaa !93
  %87 = load ptr, ptr %event, align 8, !tbaa !4
  %free_func = getelementptr inbounds %struct._event_item, ptr %87, i32 0, i32 13
  store ptr null, ptr %free_func, align 8, !tbaa !94
  %88 = load ptr, ptr %event, align 8, !tbaa !4
  %89 = load ptr, ptr %event, align 8, !tbaa !4
  %free_arg = getelementptr inbounds %struct._event_item, ptr %89, i32 0, i32 12
  store ptr %88, ptr %free_arg, align 8, !tbaa !95
  %90 = load ptr, ptr %attrs.addr, align 8, !tbaa !4
  %call106 = call ptr @add_ref_attr_list(ptr noundef %90)
  %91 = load ptr, ptr %event, align 8, !tbaa !4
  %attrs107 = getelementptr inbounds %struct._event_item, ptr %91, i32 0, i32 10
  store ptr %call106, ptr %attrs107, align 8, !tbaa !96
  %92 = load ptr, ptr %cm, align 8, !tbaa !4
  %93 = load ptr, ptr %event, align 8, !tbaa !4
  %cm108 = getelementptr inbounds %struct._event_item, ptr %93, i32 0, i32 11
  store ptr %92, ptr %cm108, align 8, !tbaa !97
  %94 = load ptr, ptr %cm, align 8, !tbaa !4
  %95 = load ptr, ptr %event, align 8, !tbaa !4
  call void @cod_encode_event(ptr noundef %94, ptr noundef %95)
  %96 = load ptr, ptr %event, align 8, !tbaa !4
  %event_encoded109 = getelementptr inbounds %struct._event_item, ptr %96, i32 0, i32 1
  store i32 1, ptr %event_encoded109, align 4, !tbaa !38
  %97 = load ptr, ptr %event, align 8, !tbaa !4
  %decoded_event110 = getelementptr inbounds %struct._event_item, ptr %97, i32 0, i32 5
  store ptr null, ptr %decoded_event110, align 8, !tbaa !66
  %98 = load ptr, ptr %tp.addr, align 8, !tbaa !4
  %tobool111 = icmp ne ptr %98, null
  br i1 %tobool111, label %if.then112, label %if.else122

if.then112:                                       ; preds = %if.end103
  call void @llvm.lifetime.start.p0(i64 8, ptr %handle) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %ev113) #11
  %call114 = call noalias ptr @malloc(i64 noundef 16) #13
  store ptr %call114, ptr %ev113, align 8, !tbaa !4
  %99 = load i32, ptr %target_stone, align 4, !tbaa !8
  %100 = load ptr, ptr %ev113, align 8, !tbaa !4
  %to_stone115 = getelementptr inbounds %struct.delayed_event.4, ptr %100, i32 0, i32 0
  store i32 %99, ptr %to_stone115, align 8, !tbaa !87
  %101 = load ptr, ptr %event, align 8, !tbaa !4
  %102 = load ptr, ptr %ev113, align 8, !tbaa !4
  %event116 = getelementptr inbounds %struct.delayed_event.4, ptr %102, i32 0, i32 1
  store ptr %101, ptr %event116, align 8, !tbaa !89
  %103 = load ptr, ptr %cm, align 8, !tbaa !4
  %104 = load ptr, ptr %tp.addr, align 8, !tbaa !4
  %tv_sec117 = getelementptr inbounds %struct.timeval, ptr %104, i32 0, i32 0
  %105 = load i64, ptr %tv_sec117, align 8, !tbaa !91
  %conv118 = trunc i64 %105 to i32
  %106 = load ptr, ptr %tp.addr, align 8, !tbaa !4
  %tv_usec119 = getelementptr inbounds %struct.timeval, ptr %106, i32 0, i32 1
  %107 = load i64, ptr %tv_usec119, align 8, !tbaa !92
  %conv120 = trunc i64 %107 to i32
  %108 = load ptr, ptr %ev113, align 8, !tbaa !4
  %call121 = call ptr @INT_CMadd_delayed_task(ptr noundef %103, i32 noundef %conv118, i32 noundef %conv120, ptr noundef @EVdelayed_submit_func, ptr noundef %108)
  store ptr %call121, ptr %handle, align 8, !tbaa !4
  %109 = load ptr, ptr %handle, align 8, !tbaa !4
  call void @free(ptr noundef %109) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %ev113) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %handle) #11
  br label %if.end125

if.else122:                                       ; preds = %if.end103
  %110 = load ptr, ptr %cm, align 8, !tbaa !4
  %111 = load i32, ptr %target_stone, align 4, !tbaa !8
  %112 = load ptr, ptr %event, align 8, !tbaa !4
  %call123 = call i32 @internal_path_submit(ptr noundef %110, i32 noundef %111, ptr noundef %112)
  %113 = load ptr, ptr %cm, align 8, !tbaa !4
  %evp124 = getelementptr inbounds %struct._CManager, ptr %113, i32 0, i32 28
  %114 = load ptr, ptr %evp124, align 8, !tbaa !51
  %115 = load ptr, ptr %event, align 8, !tbaa !4
  call void @return_event(ptr noundef %114, ptr noundef %115)
  br label %if.end125

if.end125:                                        ; preds = %if.else122, %if.then112
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end125, %if.then100
  call void @llvm.lifetime.end.p0(i64 8, ptr %event_format) #11
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup127 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end126

if.end126:                                        ; preds = %cleanup.cont, %if.end55
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup127

cleanup127:                                       ; preds = %if.end126, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %target_stone) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %event) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %evp) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %cm) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %ev_state) #11
  %cleanup.dest132 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest132, label %unreachable [
    i32 0, label %cleanup.cont133
    i32 1, label %cleanup.cont133
  ]

cleanup.cont133:                                  ; preds = %cleanup127, %cleanup127
  ret void

unreachable:                                      ; preds = %cleanup127
  unreachable
}

declare i32 @sleep(i32 noundef) #5

; Function Attrs: nounwind uwtable
define internal i32 @cod_max_output(ptr noundef %ec) #0 {
entry:
  %ec.addr = alloca ptr, align 8
  %ev_state = alloca ptr, align 8
  store ptr %ec, ptr %ec.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ev_state) #11
  %0 = load ptr, ptr %ec.addr, align 8, !tbaa !4
  %call = call i64 @cod_get_client_data(ptr noundef %0, i32 noundef 878082192)
  %1 = inttoptr i64 %call to ptr
  store ptr %1, ptr %ev_state, align 8, !tbaa !4
  %2 = load ptr, ptr %ev_state, align 8, !tbaa !4
  %out_count = getelementptr inbounds %struct.ev_state_data, ptr %2, i32 0, i32 4
  %3 = load i32, ptr %out_count, align 8, !tbaa !62
  call void @llvm.lifetime.end.p0(i64 8, ptr %ev_state) #11
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define internal i32 @cod_target_stone_on_port(ptr noundef %ec, i32 noundef %port, ptr noundef %data, ptr noundef %type_info, ptr noundef %attrs) #0 {
entry:
  %retval = alloca i32, align 4
  %ec.addr = alloca ptr, align 8
  %port.addr = alloca i32, align 4
  %data.addr = alloca ptr, align 8
  %type_info.addr = alloca ptr, align 8
  %attrs.addr = alloca ptr, align 8
  %ev_state = alloca ptr, align 8
  %target_stone = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ec, ptr %ec.addr, align 8, !tbaa !4
  store i32 %port, ptr %port.addr, align 4, !tbaa !8
  store ptr %data, ptr %data.addr, align 8, !tbaa !4
  store ptr %type_info, ptr %type_info.addr, align 8, !tbaa !4
  store ptr %attrs, ptr %attrs.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ev_state) #11
  %0 = load ptr, ptr %ec.addr, align 8, !tbaa !4
  %call = call i64 @cod_get_client_data(ptr noundef %0, i32 noundef 878082192)
  %1 = inttoptr i64 %call to ptr
  store ptr %1, ptr %ev_state, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %target_stone) #11
  %2 = load ptr, ptr %ev_state, align 8, !tbaa !4
  %3 = load i32, ptr %port.addr, align 4, !tbaa !8
  %call1 = call i32 @port_to_stone(ptr noundef %2, i32 noundef %3)
  store i32 %call1, ptr %target_stone, align 4, !tbaa !8
  %4 = load i32, ptr %target_stone, align 4, !tbaa !8
  %cmp = icmp eq i32 %4, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, ptr %port.addr, align 4, !tbaa !8
  %6 = load ptr, ptr %ev_state, align 8, !tbaa !4
  %stone = getelementptr inbounds %struct.ev_state_data, ptr %6, i32 0, i32 2
  %7 = load i32, ptr %stone, align 8, !tbaa !71
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.69, i32 noundef %5, i32 noundef %7)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load i32, ptr %target_stone, align 4, !tbaa !8
  store i32 %8, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %target_stone) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %ev_state) #11
  %9 = load i32, ptr %retval, align 4
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define internal ptr @cod_ev_get_stone_attrs(ptr noundef %ec, ptr noundef %stone_name) #0 {
entry:
  %ec.addr = alloca ptr, align 8
  %stone_name.addr = alloca ptr, align 8
  %ev_state = alloca ptr, align 8
  %cm = alloca ptr, align 8
  %evp = alloca ptr, align 8
  %ret_list = alloca ptr, align 8
  %cur_stone = alloca i32, align 4
  %stone = alloca ptr, align 8
  %this_stone_name = alloca ptr, align 8
  store ptr %ec, ptr %ec.addr, align 8, !tbaa !4
  store ptr %stone_name, ptr %stone_name.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ev_state) #11
  %0 = load ptr, ptr %ec.addr, align 8, !tbaa !4
  %call = call i64 @cod_get_client_data(ptr noundef %0, i32 noundef 878082192)
  %1 = inttoptr i64 %call to ptr
  store ptr %1, ptr %ev_state, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %cm) #11
  %2 = load ptr, ptr %ev_state, align 8, !tbaa !4
  %cm1 = getelementptr inbounds %struct.ev_state_data, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %cm1, align 8, !tbaa !25
  store ptr %3, ptr %cm, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %evp) #11
  %4 = load ptr, ptr %cm, align 8, !tbaa !4
  %evp2 = getelementptr inbounds %struct._CManager, ptr %4, i32 0, i32 28
  %5 = load ptr, ptr %evp2, align 8, !tbaa !51
  store ptr %5, ptr %evp, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret_list) #11
  store ptr null, ptr %ret_list, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %cur_stone) #11
  %6 = load i32, ptr @cod_ev_get_stone_attrs.STONE_NAME_ATOM, align 4, !tbaa !8
  %cmp = icmp eq i32 %6, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call3 = call i32 @attr_atom_from_string(ptr noundef @.str.76)
  store i32 %call3, ptr @cod_ev_get_stone_attrs.STONE_NAME_ATOM, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load ptr, ptr %evp, align 8, !tbaa !4
  %stone_base_num = getelementptr inbounds %struct._event_path_data, ptr %7, i32 0, i32 1
  %8 = load i32, ptr %stone_base_num, align 4, !tbaa !98
  store i32 %8, ptr %cur_stone, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %9 = load i32, ptr %cur_stone, align 4, !tbaa !8
  %10 = load ptr, ptr %evp, align 8, !tbaa !4
  %stone_count = getelementptr inbounds %struct._event_path_data, ptr %10, i32 0, i32 0
  %11 = load i32, ptr %stone_count, align 8, !tbaa !99
  %12 = load ptr, ptr %evp, align 8, !tbaa !4
  %stone_base_num4 = getelementptr inbounds %struct._event_path_data, ptr %12, i32 0, i32 1
  %13 = load i32, ptr %stone_base_num4, align 4, !tbaa !98
  %add = add nsw i32 %11, %13
  %cmp5 = icmp slt i32 %9, %add
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %stone) #11
  %14 = load ptr, ptr %evp, align 8, !tbaa !4
  %15 = load i32, ptr %cur_stone, align 4, !tbaa !8
  %call6 = call ptr @stone_struct(ptr noundef %14, i32 noundef %15)
  store ptr %call6, ptr %stone, align 8, !tbaa !4
  %16 = load ptr, ptr %stone, align 8, !tbaa !4
  %tobool = icmp ne ptr %16, null
  br i1 %tobool, label %land.lhs.true, label %if.end25

land.lhs.true:                                    ; preds = %for.body
  %17 = load ptr, ptr %stone, align 8, !tbaa !4
  %stone_attrs = getelementptr inbounds %struct._stone, ptr %17, i32 0, i32 18
  %18 = load ptr, ptr %stone_attrs, align 8, !tbaa !100
  %cmp7 = icmp ne ptr %18, null
  br i1 %cmp7, label %if.then8, label %if.end25

if.then8:                                         ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 8, ptr %this_stone_name) #11
  store ptr null, ptr %this_stone_name, align 8, !tbaa !4
  %19 = load ptr, ptr %stone, align 8, !tbaa !4
  %stone_attrs9 = getelementptr inbounds %struct._stone, ptr %19, i32 0, i32 18
  %20 = load ptr, ptr %stone_attrs9, align 8, !tbaa !100
  %21 = load i32, ptr @cod_ev_get_stone_attrs.STONE_NAME_ATOM, align 4, !tbaa !8
  %call10 = call i32 @get_string_attr(ptr noundef %20, i32 noundef %21, ptr noundef %this_stone_name)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then12, label %if.end24

if.then12:                                        ; preds = %if.then8
  %22 = load ptr, ptr %stone_name.addr, align 8, !tbaa !4
  %tobool13 = icmp ne ptr %22, null
  br i1 %tobool13, label %land.lhs.true14, label %if.end23

land.lhs.true14:                                  ; preds = %if.then12
  %23 = load ptr, ptr %this_stone_name, align 8, !tbaa !4
  %24 = load ptr, ptr %stone_name.addr, align 8, !tbaa !4
  %call15 = call i32 @strcmp(ptr noundef %23, ptr noundef %24) #12
  %cmp16 = icmp eq i32 %call15, 0
  br i1 %cmp16, label %if.then17, label %if.end23

if.then17:                                        ; preds = %land.lhs.true14
  %25 = load ptr, ptr %ret_list, align 8, !tbaa !4
  %tobool18 = icmp ne ptr %25, null
  br i1 %tobool18, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.then17
  %26 = load ptr, ptr %stone_name.addr, align 8, !tbaa !4
  %call20 = call i32 (ptr, ...) @printf(ptr noundef @.str.77, ptr noundef %26)
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.then17
  %27 = load ptr, ptr %stone, align 8, !tbaa !4
  %stone_attrs22 = getelementptr inbounds %struct._stone, ptr %27, i32 0, i32 18
  %28 = load ptr, ptr %stone_attrs22, align 8, !tbaa !100
  store ptr %28, ptr %ret_list, align 8, !tbaa !4
  br label %if.end23

if.end23:                                         ; preds = %if.end21, %land.lhs.true14, %if.then12
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.then8
  call void @llvm.lifetime.end.p0(i64 8, ptr %this_stone_name) #11
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %land.lhs.true, %for.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %stone) #11
  br label %for.inc

for.inc:                                          ; preds = %if.end25
  %29 = load i32, ptr %cur_stone, align 4, !tbaa !8
  %inc = add nsw i32 %29, 1
  store i32 %inc, ptr %cur_stone, align 4, !tbaa !8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %30 = load ptr, ptr %ret_list, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 4, ptr %cur_stone) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret_list) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %evp) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %cm) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %ev_state) #11
  ret ptr %30
}

declare i64 @cod_get_client_data(ptr noundef, i32 noundef) #5

; Function Attrs: nounwind uwtable
define internal i32 @port_to_stone(ptr noundef %evstate, i32 noundef %port) #0 {
entry:
  %retval = alloca i32, align 4
  %evstate.addr = alloca ptr, align 8
  %port.addr = alloca i32, align 4
  store ptr %evstate, ptr %evstate.addr, align 8, !tbaa !4
  store i32 %port, ptr %port.addr, align 4, !tbaa !8
  %0 = load i32, ptr %port.addr, align 4, !tbaa !8
  %1 = load ptr, ptr %evstate.addr, align 8, !tbaa !4
  %out_count = getelementptr inbounds %struct.ev_state_data, ptr %1, i32 0, i32 4
  %2 = load i32, ptr %out_count, align 8, !tbaa !62
  %cmp = icmp sge i32 %0, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr @stderr, align 8, !tbaa !4
  %4 = load ptr, ptr %evstate.addr, align 8, !tbaa !4
  %out_count1 = getelementptr inbounds %struct.ev_state_data, ptr %4, i32 0, i32 4
  %5 = load i32, ptr %out_count1, align 8, !tbaa !62
  %6 = load i32, ptr %port.addr, align 4, !tbaa !8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.74, i32 noundef %5, i32 noundef %6)
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %evstate.addr, align 8, !tbaa !4
  %out_stones = getelementptr inbounds %struct.ev_state_data, ptr %7, i32 0, i32 5
  %8 = load ptr, ptr %out_stones, align 8, !tbaa !63
  %9 = load i32, ptr %port.addr, align 4, !tbaa !8
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds i32, ptr %8, i64 %idxprom
  %10 = load i32, ptr %arrayidx, align 4, !tbaa !8
  %cmp2 = icmp eq i32 %10, -1
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %11 = load ptr, ptr @stderr, align 8, !tbaa !4
  %12 = load i32, ptr %port.addr, align 4, !tbaa !8
  %call4 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef @.str.75, i32 noundef %12)
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end
  %13 = load ptr, ptr %evstate.addr, align 8, !tbaa !4
  %out_stones6 = getelementptr inbounds %struct.ev_state_data, ptr %13, i32 0, i32 5
  %14 = load ptr, ptr %out_stones6, align 8, !tbaa !63
  %15 = load i32, ptr %port.addr, align 4, !tbaa !8
  %idxprom7 = sext i32 %15 to i64
  %arrayidx8 = getelementptr inbounds i32, ptr %14, i64 %idxprom7
  %16 = load i32, ptr %arrayidx8, align 4, !tbaa !8
  store i32 %16, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end5, %if.then
  %17 = load i32, ptr %retval, align 4
  ret i32 %17
}

declare i32 @CManager_locked(ptr noundef) #5

declare ptr @INT_CMadd_delayed_task(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #5

; Function Attrs: nounwind uwtable
define internal void @EVdelayed_submit_func(ptr noundef %cm, ptr noundef %vdelayed) #0 {
entry:
  %cm.addr = alloca ptr, align 8
  %vdelayed.addr = alloca ptr, align 8
  %delayed = alloca ptr, align 8
  %stone_num = alloca i32, align 4
  %event = alloca ptr, align 8
  store ptr %cm, ptr %cm.addr, align 8, !tbaa !4
  store ptr %vdelayed, ptr %vdelayed.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %delayed) #11
  %0 = load ptr, ptr %vdelayed.addr, align 8, !tbaa !4
  store ptr %0, ptr %delayed, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %stone_num) #11
  %1 = load ptr, ptr %delayed, align 8, !tbaa !4
  %to_stone = getelementptr inbounds %struct.delayed_event, ptr %1, i32 0, i32 0
  %2 = load i32, ptr %to_stone, align 8, !tbaa !87
  store i32 %2, ptr %stone_num, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %event) #11
  %3 = load ptr, ptr %delayed, align 8, !tbaa !4
  %event1 = getelementptr inbounds %struct.delayed_event, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %event1, align 8, !tbaa !89
  store ptr %4, ptr %event, align 8, !tbaa !4
  %5 = load ptr, ptr %delayed, align 8, !tbaa !4
  call void @free(ptr noundef %5) #11
  %6 = load ptr, ptr %cm.addr, align 8, !tbaa !4
  call void @IntCManager_lock(ptr noundef %6, ptr noundef @.str.28, i32 noundef 1612)
  %7 = load ptr, ptr %cm.addr, align 8, !tbaa !4
  %8 = load i32, ptr %stone_num, align 4, !tbaa !8
  %9 = load ptr, ptr %event, align 8, !tbaa !4
  %call = call i32 @internal_path_submit(ptr noundef %7, i32 noundef %8, ptr noundef %9)
  %10 = load ptr, ptr %cm.addr, align 8, !tbaa !4
  call void @do_local_actions(ptr noundef %10)
  %11 = load ptr, ptr %cm.addr, align 8, !tbaa !4
  %evp = getelementptr inbounds %struct._CManager, ptr %11, i32 0, i32 28
  %12 = load ptr, ptr %evp, align 8, !tbaa !51
  %13 = load ptr, ptr %event, align 8, !tbaa !4
  call void @return_event(ptr noundef %12, ptr noundef %13)
  %14 = load ptr, ptr %cm.addr, align 8, !tbaa !4
  call void @IntCManager_unlock(ptr noundef %14, ptr noundef @.str.28, i32 noundef 1616)
  call void @llvm.lifetime.end.p0(i64 8, ptr %event) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %stone_num) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %delayed) #11
  ret void
}

declare ptr @get_free_event(ptr noundef) #5

declare ptr @add_ref_attr_list(ptr noundef) #5

declare void @cod_encode_event(ptr noundef, ptr noundef) #5

declare void @return_event(ptr noundef, ptr noundef) #5

declare void @IntCManager_lock(ptr noundef, ptr noundef, i32 noundef) #5

declare void @do_local_actions(ptr noundef) #5

declare void @IntCManager_unlock(ptr noundef, ptr noundef, i32 noundef) #5

declare i32 @attr_atom_from_string(ptr noundef) #5

declare ptr @stone_struct(ptr noundef, i32 noundef) #5

declare i32 @get_string_attr(ptr noundef, i32 noundef, ptr noundef) #5

declare ptr @format_list_of_FMFormat(ptr noundef) #5

declare void @cod_add_simple_struct_type(ptr noundef, ptr noundef, ptr noundef) #5

declare ptr @cod_build_type_node(ptr noundef, ptr noundef) #5

declare void @cod_add_decl_to_parse_context(ptr noundef, ptr noundef, ptr noundef) #5

declare ptr @cod_build_param_node(ptr noundef, ptr noundef, i32 noundef) #5

; Function Attrs: nounwind
declare noalias ptr @strdup(ptr noundef) #3

; Function Attrs: nounwind
declare ptr @strtok(ptr noundef, ptr noundef) #3

declare ptr @CMdlopen(ptr noundef, ptr noundef, i32 noundef) #5

declare ptr @CMdlsym(ptr noundef, ptr noundef) #5

; Function Attrs: nounwind uwtable
define internal void @add_type(ptr noundef %parse_context, ptr noundef %format) #0 {
entry:
  %parse_context.addr = alloca ptr, align 8
  %format.addr = alloca ptr, align 8
  %list = alloca ptr, align 8
  store ptr %parse_context, ptr %parse_context.addr, align 8, !tbaa !4
  store ptr %format, ptr %format.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %list) #11
  %0 = load ptr, ptr %format.addr, align 8, !tbaa !4
  %call = call ptr @format_list_of_FMFormat(ptr noundef %0)
  store ptr %call, ptr %list, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load ptr, ptr %list, align 8, !tbaa !4
  %format_name = getelementptr inbounds %struct._FMformat_list, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %format_name, align 8, !tbaa !10
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %list, align 8, !tbaa !4
  %format_name1 = getelementptr inbounds %struct._FMformat_list, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %format_name1, align 8, !tbaa !10
  %5 = load ptr, ptr %list, align 8, !tbaa !4
  %field_list = getelementptr inbounds %struct._FMformat_list, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %field_list, align 8, !tbaa !15
  %7 = load ptr, ptr %parse_context.addr, align 8, !tbaa !4
  call void @cod_add_simple_struct_type(ptr noundef %4, ptr noundef %6, ptr noundef %7)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load ptr, ptr %list, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds %struct._FMformat_list, ptr %8, i32 1
  store ptr %incdec.ptr, ptr %list, align 8, !tbaa !4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %list) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @add_queued_routines(ptr noundef %context, ptr noundef %formats) #0 {
entry:
  %context.addr = alloca ptr, align 8
  %formats.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %cur = alloca ptr, align 8
  store ptr %context, ptr %context.addr, align 8, !tbaa !4
  store ptr %formats, ptr %formats.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %cur) #11
  store ptr @cod_ev_conforms, ptr getelementptr inbounds (%struct.extern_entry, ptr @add_queued_routines.externs, i32 0, i32 1), align 8, !tbaa !85
  store ptr @cod_ev_discard_rel, ptr getelementptr inbounds ([15 x %struct.extern_entry], ptr @add_queued_routines.externs, i64 0, i64 1, i32 1), align 8, !tbaa !85
  store ptr @cod_ev_discard_rel, ptr getelementptr inbounds ([15 x %struct.extern_entry], ptr @add_queued_routines.externs, i64 0, i64 2, i32 1), align 8, !tbaa !85
  store ptr @cod_ev_discard_and_submit_rel, ptr getelementptr inbounds ([15 x %struct.extern_entry], ptr @add_queued_routines.externs, i64 0, i64 3, i32 1), align 8, !tbaa !85
  store ptr @cod_ev_discard_and_submit_rel, ptr getelementptr inbounds ([15 x %struct.extern_entry], ptr @add_queued_routines.externs, i64 0, i64 4, i32 1), align 8, !tbaa !85
  store ptr @cod_ev_get_data_rel, ptr getelementptr inbounds ([15 x %struct.extern_entry], ptr @add_queued_routines.externs, i64 0, i64 5, i32 1), align 8, !tbaa !85
  store ptr @cod_ev_get_data_rel, ptr getelementptr inbounds ([15 x %struct.extern_entry], ptr @add_queued_routines.externs, i64 0, i64 6, i32 1), align 8, !tbaa !85
  store ptr @cod_ev_count, ptr getelementptr inbounds ([15 x %struct.extern_entry], ptr @add_queued_routines.externs, i64 0, i64 7, i32 1), align 8, !tbaa !85
  store ptr @cod_ev_count, ptr getelementptr inbounds ([15 x %struct.extern_entry], ptr @add_queued_routines.externs, i64 0, i64 8, i32 1), align 8, !tbaa !85
  store ptr @cod_ev_present, ptr getelementptr inbounds ([15 x %struct.extern_entry], ptr @add_queued_routines.externs, i64 0, i64 9, i32 1), align 8, !tbaa !85
  store ptr @cod_ev_get_port, ptr getelementptr inbounds ([15 x %struct.extern_entry], ptr @add_queued_routines.externs, i64 0, i64 10, i32 1), align 8, !tbaa !85
  store ptr @cod_ev_target_size, ptr getelementptr inbounds ([15 x %struct.extern_entry], ptr @add_queued_routines.externs, i64 0, i64 11, i32 1), align 8, !tbaa !85
  store ptr @cod_ev_get_attrs, ptr getelementptr inbounds ([15 x %struct.extern_entry], ptr @add_queued_routines.externs, i64 0, i64 12, i32 1), align 8, !tbaa !85
  store ptr @cod_ev_get_attrs, ptr getelementptr inbounds ([15 x %struct.extern_entry], ptr @add_queued_routines.externs, i64 0, i64 13, i32 1), align 8, !tbaa !85
  %0 = load ptr, ptr %context.addr, align 8, !tbaa !4
  call void @cod_assoc_externs(ptr noundef %0, ptr noundef @add_queued_routines.externs)
  %1 = load ptr, ptr %context.addr, align 8, !tbaa !4
  %call = call i32 @cod_parse_for_context(ptr noundef @add_queued_routines.extern_string, ptr noundef %1)
  %2 = load ptr, ptr %context.addr, align 8, !tbaa !4
  call void @cod_set_closure(ptr noundef @.str.85, ptr noundef inttoptr (i64 -1 to ptr), ptr noundef %2)
  %3 = load ptr, ptr %context.addr, align 8, !tbaa !4
  call void @cod_set_closure(ptr noundef @.str.87, ptr noundef inttoptr (i64 -1 to ptr), ptr noundef %3)
  %4 = load ptr, ptr %context.addr, align 8, !tbaa !4
  call void @cod_set_closure(ptr noundef @.str.96, ptr noundef inttoptr (i64 -1 to ptr), ptr noundef %4)
  %5 = load ptr, ptr %context.addr, align 8, !tbaa !4
  call void @cod_set_closure(ptr noundef @.str.89, ptr noundef inttoptr (i64 -1 to ptr), ptr noundef %5)
  %6 = load ptr, ptr %context.addr, align 8, !tbaa !4
  call void @cod_set_closure(ptr noundef @.str.91, ptr noundef inttoptr (i64 -1 to ptr), ptr noundef %6)
  %7 = load ptr, ptr %formats.addr, align 8, !tbaa !4
  store ptr %7, ptr %cur, align 8, !tbaa !4
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load ptr, ptr %cur, align 8, !tbaa !4
  %9 = load ptr, ptr %8, align 8, !tbaa !4
  %tobool = icmp ne ptr %9, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %context.addr, align 8, !tbaa !4
  %11 = load i32, ptr %i, align 4, !tbaa !8
  %12 = load ptr, ptr %cur, align 8, !tbaa !4
  %13 = load ptr, ptr %12, align 8, !tbaa !4
  %call1 = call ptr @name_of_FMformat(ptr noundef %13)
  call void @add_typed_queued_routines(ptr noundef %10, i32 noundef %11, ptr noundef %call1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load ptr, ptr %cur, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds ptr, ptr %14, i32 1
  store ptr %incdec.ptr, ptr %cur, align 8, !tbaa !4
  %15 = load i32, ptr %i, align 4, !tbaa !8
  %inc = add nsw i32 %15, 1
  store i32 %inc, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load ptr, ptr %context.addr, align 8, !tbaa !4
  call void @add_typed_queued_routines(ptr noundef %16, i32 noundef -2, ptr noundef @.str.97)
  call void @llvm.lifetime.end.p0(i64 8, ptr %cur) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @add_queued_constants(ptr noundef %context, ptr noundef %formats) #0 {
entry:
  %context.addr = alloca ptr, align 8
  %formats.addr = alloca ptr, align 8
  %cur_format = alloca ptr, align 8
  %i = alloca i32, align 4
  %fmt_name = alloca ptr, align 8
  %name = alloca ptr, align 8
  store ptr %context, ptr %context.addr, align 8, !tbaa !4
  store ptr %formats, ptr %formats.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %cur_format) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #11
  store i32 0, ptr %i, align 4, !tbaa !8
  %0 = load ptr, ptr %formats.addr, align 8, !tbaa !4
  store ptr %0, ptr %cur_format, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load ptr, ptr %cur_format, align 8, !tbaa !4
  %2 = load ptr, ptr %1, align 8, !tbaa !4
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %fmt_name) #11
  %3 = load ptr, ptr %cur_format, align 8, !tbaa !4
  %4 = load ptr, ptr %3, align 8, !tbaa !4
  %call = call ptr @name_of_FMformat(ptr noundef %4)
  store ptr %call, ptr %fmt_name, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %name) #11
  %5 = load ptr, ptr %fmt_name, align 8, !tbaa !4
  %call1 = call i64 @strlen(ptr noundef %5) #12
  %add = add i64 4, %call1
  %call2 = call noalias ptr @malloc(i64 noundef %add) #13
  store ptr %call2, ptr %name, align 8, !tbaa !4
  %6 = load ptr, ptr %name, align 8, !tbaa !4
  %7 = load ptr, ptr %fmt_name, align 8, !tbaa !4
  %call3 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %6, ptr noundef @.str.124, ptr noundef %7) #11
  %8 = load ptr, ptr %name, align 8, !tbaa !4
  %9 = load i32, ptr %i, align 4, !tbaa !8
  %10 = load ptr, ptr %context.addr, align 8, !tbaa !4
  call void @cod_add_int_constant_to_parse_context(ptr noundef %8, i32 noundef %9, ptr noundef %10)
  %11 = load ptr, ptr %name, align 8, !tbaa !4
  call void @free(ptr noundef %11) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %name) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %fmt_name) #11
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load ptr, ptr %cur_format, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds ptr, ptr %12, i32 1
  store ptr %incdec.ptr, ptr %cur_format, align 8, !tbaa !4
  %13 = load i32, ptr %i, align 4, !tbaa !8
  %inc = add nsw i32 %13, 1
  store i32 %inc, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %cur_format) #11
  ret void
}

declare void @cod_set_return_type(ptr noundef, ptr noundef) #5

; Function Attrs: nounwind uwtable
define internal i32 @cod_ev_conforms(ptr noundef %ec, i32 noundef %queue, i32 noundef %index) #0 {
entry:
  %ec.addr = alloca ptr, align 8
  %queue.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %ev_state = alloca ptr, align 8
  store ptr %ec, ptr %ec.addr, align 8, !tbaa !4
  store i32 %queue, ptr %queue.addr, align 4, !tbaa !8
  store i32 %index, ptr %index.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ev_state) #11
  %0 = load ptr, ptr %ec.addr, align 8, !tbaa !4
  %call = call i64 @cod_get_client_data(ptr noundef %0, i32 noundef 878082192)
  %1 = inttoptr i64 %call to ptr
  store ptr %1, ptr %ev_state, align 8, !tbaa !4
  %2 = load ptr, ptr %ev_state, align 8, !tbaa !4
  %3 = load i32, ptr %queue.addr, align 4, !tbaa !8
  %4 = load i32, ptr %index.addr, align 4, !tbaa !8
  %call1 = call ptr @cod_find_index_abs(ptr noundef %2, i32 noundef %3, i32 noundef %4)
  %cmp = icmp ne ptr %call1, null
  %conv = zext i1 %cmp to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr %ev_state) #11
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define internal void @cod_ev_discard_rel(ptr noundef %ec, i32 noundef %queue, i32 noundef %index) #0 {
entry:
  %ec.addr = alloca ptr, align 8
  %queue.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  store ptr %ec, ptr %ec.addr, align 8, !tbaa !4
  store i32 %queue, ptr %queue.addr, align 4, !tbaa !8
  store i32 %index, ptr %index.addr, align 4, !tbaa !8
  %0 = load ptr, ptr %ec.addr, align 8, !tbaa !4
  %1 = load i32, ptr %queue.addr, align 4, !tbaa !8
  %2 = load i32, ptr %index.addr, align 4, !tbaa !8
  call void @cod_ev_discard(ptr noundef %0, i32 noundef 0, i32 noundef %1, i32 noundef %2)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cod_ev_discard_and_submit_rel(ptr noundef %ec, i32 noundef %port, i32 noundef %queue, i32 noundef %index) #0 {
entry:
  %ec.addr = alloca ptr, align 8
  %port.addr = alloca i32, align 4
  %queue.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %ev_state = alloca ptr, align 8
  %target_stone = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ec, ptr %ec.addr, align 8, !tbaa !4
  store i32 %port, ptr %port.addr, align 4, !tbaa !8
  store i32 %queue, ptr %queue.addr, align 4, !tbaa !8
  store i32 %index, ptr %index.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ev_state) #11
  %0 = load ptr, ptr %ec.addr, align 8, !tbaa !4
  %call = call i64 @cod_get_client_data(ptr noundef %0, i32 noundef 878082192)
  %1 = inttoptr i64 %call to ptr
  store ptr %1, ptr %ev_state, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %target_stone) #11
  %2 = load ptr, ptr %ev_state, align 8, !tbaa !4
  %3 = load i32, ptr %port.addr, align 4, !tbaa !8
  %call1 = call i32 @port_to_stone(ptr noundef %2, i32 noundef %3)
  store i32 %call1, ptr %target_stone, align 4, !tbaa !8
  %4 = load i32, ptr %target_stone, align 4, !tbaa !8
  %cmp = icmp eq i32 %4, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, ptr %port.addr, align 4, !tbaa !8
  %6 = load ptr, ptr %ev_state, align 8, !tbaa !4
  %stone = getelementptr inbounds %struct.ev_state_data, ptr %6, i32 0, i32 2
  %7 = load i32, ptr %stone, align 8, !tbaa !71
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.69, i32 noundef %5, i32 noundef %7)
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load ptr, ptr %ec.addr, align 8, !tbaa !4
  %9 = load i32, ptr %port.addr, align 4, !tbaa !8
  %10 = load i32, ptr %queue.addr, align 4, !tbaa !8
  %11 = load i32, ptr %index.addr, align 4, !tbaa !8
  call void @cod_ev_discard_and_submit(ptr noundef %8, i32 noundef 0, i32 noundef %9, i32 noundef %10, i32 noundef %11)
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %target_stone) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %ev_state) #11
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
define internal ptr @cod_ev_get_data_rel(ptr noundef %ec, i32 noundef %queue, i32 noundef %index) #0 {
entry:
  %ec.addr = alloca ptr, align 8
  %queue.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  store ptr %ec, ptr %ec.addr, align 8, !tbaa !4
  store i32 %queue, ptr %queue.addr, align 4, !tbaa !8
  store i32 %index, ptr %index.addr, align 4, !tbaa !8
  %0 = load ptr, ptr %ec.addr, align 8, !tbaa !4
  %1 = load i32, ptr %queue.addr, align 4, !tbaa !8
  %2 = load i32, ptr %index.addr, align 4, !tbaa !8
  %call = call ptr @cod_ev_get_data(ptr noundef %0, i32 noundef 0, i32 noundef %1, i32 noundef %2)
  ret ptr %call
}

; Function Attrs: nounwind uwtable
define internal i32 @cod_ev_count(ptr noundef %ec, i32 noundef %queue) #0 {
entry:
  %retval = alloca i32, align 4
  %ec.addr = alloca ptr, align 8
  %queue.addr = alloca i32, align 4
  %ev_state = alloca ptr, align 8
  %type = alloca ptr, align 8
  %item = alloca ptr, align 8
  %count = alloca i32, align 4
  %format_count = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %ec, ptr %ec.addr, align 8, !tbaa !4
  store i32 %queue, ptr %queue.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ev_state) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %type) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %item) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #11
  store i32 0, ptr %count, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %format_count) #11
  store i32 0, ptr %format_count, align 4, !tbaa !8
  %0 = load ptr, ptr %ec.addr, align 8, !tbaa !4
  %call = call i64 @cod_get_client_data(ptr noundef %0, i32 noundef 878082192)
  %1 = inttoptr i64 %call to ptr
  store ptr %1, ptr %ev_state, align 8, !tbaa !4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load ptr, ptr %ev_state, align 8, !tbaa !4
  %instance = getelementptr inbounds %struct.ev_state_data, ptr %2, i32 0, i32 8
  %3 = load ptr, ptr %instance, align 8, !tbaa !83
  %u = getelementptr inbounds %struct.response_instance, ptr %3, i32 0, i32 3
  %formats = getelementptr inbounds %struct.queued_instance, ptr %u, i32 0, i32 4
  %4 = load ptr, ptr %formats, align 8, !tbaa !14
  %5 = load i32, ptr %format_count, align 4, !tbaa !8
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %4, i64 %idxprom
  %6 = load ptr, ptr %arrayidx, align 8, !tbaa !4
  %tobool = icmp ne ptr %6, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i32, ptr %format_count, align 4, !tbaa !8
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %format_count, align 4, !tbaa !8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %8 = load i32, ptr %format_count, align 4, !tbaa !8
  %9 = load i32, ptr %queue.addr, align 4, !tbaa !8
  %cmp = icmp sle i32 %8, %9
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %10 = load i32, ptr %queue.addr, align 4, !tbaa !8
  %11 = load i32, ptr %format_count, align 4, !tbaa !8
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.102, i32 noundef %10, i32 noundef %11)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %while.end
  %12 = load i32, ptr %queue.addr, align 4, !tbaa !8
  %cmp2 = icmp eq i32 %12, -2
  br i1 %cmp2, label %if.then3, label %if.end24

if.then3:                                         ; preds = %if.end
  %13 = load ptr, ptr %ev_state, align 8, !tbaa !4
  %queue4 = getelementptr inbounds %struct.ev_state_data, ptr %13, i32 0, i32 7
  %14 = load ptr, ptr %queue4, align 8, !tbaa !81
  %queue_head = getelementptr inbounds %struct._queue, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %queue_head, align 8, !tbaa !101
  store ptr %15, ptr %item, align 8, !tbaa !4
  br label %while.cond5

while.cond5:                                      ; preds = %if.end22, %if.then3
  %16 = load ptr, ptr %item, align 8, !tbaa !4
  %tobool6 = icmp ne ptr %16, null
  br i1 %tobool6, label %while.body7, label %while.end23

while.body7:                                      ; preds = %while.cond5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #11
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body7
  %17 = load i32, ptr %i, align 4, !tbaa !8
  %18 = load i32, ptr %format_count, align 4, !tbaa !8
  %cmp8 = icmp slt i32 %17, %18
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load ptr, ptr %item, align 8, !tbaa !4
  %item9 = getelementptr inbounds %struct.queue_item, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %item9, align 8, !tbaa !103
  %reference_format = getelementptr inbounds %struct._event_item, ptr %20, i32 0, i32 7
  %21 = load ptr, ptr %reference_format, align 8, !tbaa !33
  %22 = load ptr, ptr %ev_state, align 8, !tbaa !4
  %instance10 = getelementptr inbounds %struct.ev_state_data, ptr %22, i32 0, i32 8
  %23 = load ptr, ptr %instance10, align 8, !tbaa !83
  %u11 = getelementptr inbounds %struct.response_instance, ptr %23, i32 0, i32 3
  %formats12 = getelementptr inbounds %struct.queued_instance, ptr %u11, i32 0, i32 4
  %24 = load ptr, ptr %formats12, align 8, !tbaa !14
  %25 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom13 = sext i32 %25 to i64
  %arrayidx14 = getelementptr inbounds ptr, ptr %24, i64 %idxprom13
  %26 = load ptr, ptr %arrayidx14, align 8, !tbaa !4
  %cmp15 = icmp eq ptr %21, %26
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %for.body
  br label %for.end

if.end17:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end17
  %27 = load i32, ptr %i, align 4, !tbaa !8
  %inc18 = add nsw i32 %27, 1
  store i32 %inc18, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.end:                                          ; preds = %if.then16, %for.cond
  %28 = load i32, ptr %i, align 4, !tbaa !8
  %29 = load i32, ptr %format_count, align 4, !tbaa !8
  %cmp19 = icmp eq i32 %28, %29
  br i1 %cmp19, label %if.then20, label %if.end22

if.then20:                                        ; preds = %for.end
  %30 = load i32, ptr %count, align 4, !tbaa !8
  %inc21 = add nsw i32 %30, 1
  store i32 %inc21, ptr %count, align 4, !tbaa !8
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %for.end
  %31 = load ptr, ptr %item, align 8, !tbaa !4
  %next = getelementptr inbounds %struct.queue_item, ptr %31, i32 0, i32 2
  %32 = load ptr, ptr %next, align 8, !tbaa !105
  store ptr %32, ptr %item, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #11
  br label %while.cond5

while.end23:                                      ; preds = %while.cond5
  %33 = load i32, ptr %count, align 4, !tbaa !8
  store i32 %33, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end24:                                         ; preds = %if.end
  %34 = load i32, ptr %queue.addr, align 4, !tbaa !8
  %cmp25 = icmp slt i32 %34, 0
  br i1 %cmp25, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end24
  br label %cond.end

cond.false:                                       ; preds = %if.end24
  %35 = load ptr, ptr %ev_state, align 8, !tbaa !4
  %instance26 = getelementptr inbounds %struct.ev_state_data, ptr %35, i32 0, i32 8
  %36 = load ptr, ptr %instance26, align 8, !tbaa !83
  %u27 = getelementptr inbounds %struct.response_instance, ptr %36, i32 0, i32 3
  %formats28 = getelementptr inbounds %struct.queued_instance, ptr %u27, i32 0, i32 4
  %37 = load ptr, ptr %formats28, align 8, !tbaa !14
  %38 = load i32, ptr %queue.addr, align 4, !tbaa !8
  %idxprom29 = sext i32 %38 to i64
  %arrayidx30 = getelementptr inbounds ptr, ptr %37, i64 %idxprom29
  %39 = load ptr, ptr %arrayidx30, align 8, !tbaa !4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ null, %cond.true ], [ %39, %cond.false ]
  store ptr %cond, ptr %type, align 8, !tbaa !4
  %40 = load ptr, ptr %ev_state, align 8, !tbaa !4
  %queue31 = getelementptr inbounds %struct.ev_state_data, ptr %40, i32 0, i32 7
  %41 = load ptr, ptr %queue31, align 8, !tbaa !81
  %queue_head32 = getelementptr inbounds %struct._queue, ptr %41, i32 0, i32 0
  %42 = load ptr, ptr %queue_head32, align 8, !tbaa !101
  store ptr %42, ptr %item, align 8, !tbaa !4
  br label %while.cond33

while.cond33:                                     ; preds = %if.end42, %cond.end
  %43 = load ptr, ptr %item, align 8, !tbaa !4
  %tobool34 = icmp ne ptr %43, null
  br i1 %tobool34, label %while.body35, label %while.end44

while.body35:                                     ; preds = %while.cond33
  %44 = load ptr, ptr %type, align 8, !tbaa !4
  %tobool36 = icmp ne ptr %44, null
  br i1 %tobool36, label %lor.lhs.false, label %if.then40

lor.lhs.false:                                    ; preds = %while.body35
  %45 = load ptr, ptr %item, align 8, !tbaa !4
  %item37 = getelementptr inbounds %struct.queue_item, ptr %45, i32 0, i32 0
  %46 = load ptr, ptr %item37, align 8, !tbaa !103
  %reference_format38 = getelementptr inbounds %struct._event_item, ptr %46, i32 0, i32 7
  %47 = load ptr, ptr %reference_format38, align 8, !tbaa !33
  %48 = load ptr, ptr %type, align 8, !tbaa !4
  %cmp39 = icmp eq ptr %47, %48
  br i1 %cmp39, label %if.then40, label %if.end42

if.then40:                                        ; preds = %lor.lhs.false, %while.body35
  %49 = load i32, ptr %count, align 4, !tbaa !8
  %inc41 = add nsw i32 %49, 1
  store i32 %inc41, ptr %count, align 4, !tbaa !8
  br label %if.end42

if.end42:                                         ; preds = %if.then40, %lor.lhs.false
  %50 = load ptr, ptr %item, align 8, !tbaa !4
  %next43 = getelementptr inbounds %struct.queue_item, ptr %50, i32 0, i32 2
  %51 = load ptr, ptr %next43, align 8, !tbaa !105
  store ptr %51, ptr %item, align 8, !tbaa !4
  br label %while.cond33

while.end44:                                      ; preds = %while.cond33
  %52 = load i32, ptr %count, align 4, !tbaa !8
  store i32 %52, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end44, %while.end23, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %format_count) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %item) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %type) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %ev_state) #11
  %53 = load i32, ptr %retval, align 4
  ret i32 %53
}

; Function Attrs: nounwind uwtable
define internal i32 @cod_ev_present(ptr noundef %ec, i32 noundef %queue, i32 noundef %index) #0 {
entry:
  %ec.addr = alloca ptr, align 8
  %queue.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %ev_state = alloca ptr, align 8
  store ptr %ec, ptr %ec.addr, align 8, !tbaa !4
  store i32 %queue, ptr %queue.addr, align 4, !tbaa !8
  store i32 %index, ptr %index.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ev_state) #11
  %0 = load ptr, ptr %ec.addr, align 8, !tbaa !4
  %call = call i64 @cod_get_client_data(ptr noundef %0, i32 noundef 878082192)
  %1 = inttoptr i64 %call to ptr
  store ptr %1, ptr %ev_state, align 8, !tbaa !4
  %2 = load ptr, ptr %ev_state, align 8, !tbaa !4
  %3 = load i32, ptr %queue.addr, align 4, !tbaa !8
  %4 = load i32, ptr %index.addr, align 4, !tbaa !8
  %call1 = call ptr @cod_find_index_rel(ptr noundef %2, i32 noundef %3, i32 noundef %4)
  %cmp = icmp ne ptr %call1, null
  %conv = zext i1 %cmp to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr %ev_state) #11
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define internal i32 @cod_ev_get_port(ptr noundef %ec, i32 noundef %queue) #0 {
entry:
  %ec.addr = alloca ptr, align 8
  %queue.addr = alloca i32, align 4
  %ev_state = alloca ptr, align 8
  %port = alloca i32, align 4
  store ptr %ec, ptr %ec.addr, align 8, !tbaa !4
  store i32 %queue, ptr %queue.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ev_state) #11
  %0 = load ptr, ptr %ec.addr, align 8, !tbaa !4
  %call = call i64 @cod_get_client_data(ptr noundef %0, i32 noundef 878082192)
  %1 = inttoptr i64 %call to ptr
  store ptr %1, ptr %ev_state, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %port) #11
  %2 = load ptr, ptr %ev_state, align 8, !tbaa !4
  %out_stones = getelementptr inbounds %struct.ev_state_data, ptr %2, i32 0, i32 5
  %3 = load ptr, ptr %out_stones, align 8, !tbaa !63
  %4 = load i32, ptr %queue.addr, align 4, !tbaa !8
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i32, ptr %3, i64 %idxprom
  %5 = load i32, ptr %arrayidx, align 4, !tbaa !8
  store i32 %5, ptr %port, align 4, !tbaa !8
  %6 = load i32, ptr %port, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %port) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %ev_state) #11
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define internal i32 @cod_ev_target_size(ptr noundef %ec, i32 noundef %stone_num) #0 {
entry:
  %retval = alloca i32, align 4
  %ec.addr = alloca ptr, align 8
  %stone_num.addr = alloca i32, align 4
  %ev_state = alloca ptr, align 8
  %cm = alloca ptr, align 8
  %stone = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ec, ptr %ec.addr, align 8, !tbaa !4
  store i32 %stone_num, ptr %stone_num.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ev_state) #11
  %0 = load ptr, ptr %ec.addr, align 8, !tbaa !4
  %call = call i64 @cod_get_client_data(ptr noundef %0, i32 noundef 878082192)
  %1 = inttoptr i64 %call to ptr
  store ptr %1, ptr %ev_state, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %cm) #11
  %2 = load ptr, ptr %ev_state, align 8, !tbaa !4
  %cm1 = getelementptr inbounds %struct.ev_state_data, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %cm1, align 8, !tbaa !25
  store ptr %3, ptr %cm, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %stone) #11
  %4 = load ptr, ptr %cm, align 8, !tbaa !4
  %evp = getelementptr inbounds %struct._CManager, ptr %4, i32 0, i32 28
  %5 = load ptr, ptr %evp, align 8, !tbaa !51
  %6 = load i32, ptr %stone_num.addr, align 4, !tbaa !8
  %call2 = call ptr @stone_struct(ptr noundef %5, i32 noundef %6)
  store ptr %call2, ptr %stone, align 8, !tbaa !4
  %7 = load ptr, ptr %stone, align 8, !tbaa !4
  %tobool = icmp ne ptr %7, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load ptr, ptr %stone, align 8, !tbaa !4
  %queue_size = getelementptr inbounds %struct._stone, ptr %8, i32 0, i32 8
  %9 = load i32, ptr %queue_size, align 8, !tbaa !106
  store i32 %9, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %stone) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %cm) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %ev_state) #11
  %10 = load i32, ptr %retval, align 4
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal ptr @cod_ev_get_attrs(ptr noundef %ec, i32 noundef %queue, i32 noundef %index) #0 {
entry:
  %retval = alloca ptr, align 8
  %ec.addr = alloca ptr, align 8
  %queue.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %ev_state = alloca ptr, align 8
  %item = alloca ptr, align 8
  %pattr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ec, ptr %ec.addr, align 8, !tbaa !4
  store i32 %queue, ptr %queue.addr, align 4, !tbaa !8
  store i32 %index, ptr %index.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ev_state) #11
  %0 = load ptr, ptr %ec.addr, align 8, !tbaa !4
  %call = call i64 @cod_get_client_data(ptr noundef %0, i32 noundef 878082192)
  %1 = inttoptr i64 %call to ptr
  store ptr %1, ptr %ev_state, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %item) #11
  %2 = load ptr, ptr %ev_state, align 8, !tbaa !4
  %3 = load i32, ptr %queue.addr, align 4, !tbaa !8
  %4 = load i32, ptr %index.addr, align 4, !tbaa !8
  %call1 = call ptr @cod_find_index_rel(ptr noundef %2, i32 noundef %3, i32 noundef %4)
  store ptr %call1, ptr %item, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %pattr) #11
  %5 = load ptr, ptr %item, align 8, !tbaa !4
  %cmp = icmp eq ptr null, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, ptr %index.addr, align 4, !tbaa !8
  %7 = load i32, ptr %queue.addr, align 4, !tbaa !8
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.103, i32 noundef %6, i32 noundef %7)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load ptr, ptr %item, align 8, !tbaa !4
  %item3 = getelementptr inbounds %struct.queue_item, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %item3, align 8, !tbaa !103
  %attrs = getelementptr inbounds %struct._event_item, ptr %9, i32 0, i32 10
  store ptr %attrs, ptr %pattr, align 8, !tbaa !4
  %10 = load ptr, ptr %pattr, align 8, !tbaa !4
  %11 = load ptr, ptr %10, align 8, !tbaa !4
  %tobool = icmp ne ptr %11, null
  br i1 %tobool, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  %12 = load ptr, ptr %ev_state, align 8, !tbaa !4
  %cm = getelementptr inbounds %struct.ev_state_data, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %cm, align 8, !tbaa !25
  %call5 = call ptr @CMint_create_attr_list(ptr noundef %13, ptr noundef @.str.28, i32 noundef 1039)
  %14 = load ptr, ptr %pattr, align 8, !tbaa !4
  store ptr %call5, ptr %14, align 8, !tbaa !4
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end
  %15 = load ptr, ptr %pattr, align 8, !tbaa !4
  %16 = load ptr, ptr %15, align 8, !tbaa !4
  store ptr %16, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %pattr) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %item) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %ev_state) #11
  %17 = load ptr, ptr %retval, align 8
  ret ptr %17
}

declare void @cod_set_closure(ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: nounwind uwtable
define internal void @add_typed_queued_routines(ptr noundef %context, i32 noundef %index, ptr noundef %fmt_name) #0 {
entry:
  %context.addr = alloca ptr, align 8
  %index.addr = alloca i32, align 4
  %fmt_name.addr = alloca ptr, align 8
  %extern_string = alloca ptr, align 8
  %data_extern_string = alloca ptr, align 8
  %cur = alloca ptr, align 8
  %externs = alloca ptr, align 8
  %data_externs = alloca ptr, align 8
  %real_name = alloca ptr, align 8
  %real_name67 = alloca ptr, align 8
  store ptr %context, ptr %context.addr, align 8, !tbaa !4
  store i32 %index, ptr %index.addr, align 4, !tbaa !8
  store ptr %fmt_name, ptr %fmt_name.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %extern_string) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %data_extern_string) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %cur) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %externs) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %data_externs) #11
  %0 = load ptr, ptr %fmt_name.addr, align 8, !tbaa !4
  %call = call i64 @strlen(ptr noundef %0) #12
  %mul = mul i64 %call, 9
  %1 = load ptr, ptr @add_typed_queued_routines.extern_string_fmt, align 8, !tbaa !4
  %call1 = call i64 @strlen(ptr noundef %1) #12
  %add = add i64 %mul, %call1
  %call2 = call noalias ptr @malloc(i64 noundef %add) #13
  store ptr %call2, ptr %extern_string, align 8, !tbaa !4
  %2 = load ptr, ptr %extern_string, align 8, !tbaa !4
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(ptr noundef @.str.116, ptr noundef @.str.28, i32 noundef 1803, ptr noundef @__PRETTY_FUNCTION__.add_typed_queued_routines) #16
  unreachable

if.end:                                           ; preds = %if.then
  %3 = load ptr, ptr %fmt_name.addr, align 8, !tbaa !4
  %call3 = call i64 @strlen(ptr noundef %3) #12
  %mul4 = mul i64 %call3, 9
  %4 = load ptr, ptr @add_typed_queued_routines.data_extern_string_fmt, align 8, !tbaa !4
  %call5 = call i64 @strlen(ptr noundef %4) #12
  %add6 = add i64 %mul4, %call5
  %call7 = call noalias ptr @malloc(i64 noundef %add6) #13
  store ptr %call7, ptr %data_extern_string, align 8, !tbaa !4
  %5 = load ptr, ptr %extern_string, align 8, !tbaa !4
  %6 = load ptr, ptr @add_typed_queued_routines.extern_string_fmt, align 8, !tbaa !4
  %7 = load ptr, ptr %fmt_name.addr, align 8, !tbaa !4
  %8 = load ptr, ptr %fmt_name.addr, align 8, !tbaa !4
  %9 = load ptr, ptr %fmt_name.addr, align 8, !tbaa !4
  %10 = load ptr, ptr %fmt_name.addr, align 8, !tbaa !4
  %11 = load ptr, ptr %fmt_name.addr, align 8, !tbaa !4
  %12 = load ptr, ptr %fmt_name.addr, align 8, !tbaa !4
  %13 = load ptr, ptr %fmt_name.addr, align 8, !tbaa !4
  %14 = load ptr, ptr %fmt_name.addr, align 8, !tbaa !4
  %call8 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef %14) #11
  %15 = load ptr, ptr %data_extern_string, align 8, !tbaa !4
  %16 = load ptr, ptr @add_typed_queued_routines.data_extern_string_fmt, align 8, !tbaa !4
  %17 = load ptr, ptr %fmt_name.addr, align 8, !tbaa !4
  %18 = load ptr, ptr %fmt_name.addr, align 8, !tbaa !4
  %19 = load ptr, ptr %fmt_name.addr, align 8, !tbaa !4
  %20 = load ptr, ptr %fmt_name.addr, align 8, !tbaa !4
  %call9 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %15, ptr noundef %16, ptr noundef %17, ptr noundef %18, ptr noundef %19, ptr noundef %20) #11
  %call10 = call noalias ptr @malloc(i64 noundef 144) #13
  store ptr %call10, ptr %externs, align 8, !tbaa !4
  %21 = load ptr, ptr %externs, align 8, !tbaa !4
  %tobool11 = icmp ne ptr %21, null
  br i1 %tobool11, label %if.then12, label %if.else13

if.then12:                                        ; preds = %if.end
  br label %if.end14

if.else13:                                        ; preds = %if.end
  call void @__assert_fail(ptr noundef @.str.117, ptr noundef @.str.28, i32 noundef 1812, ptr noundef @__PRETTY_FUNCTION__.add_typed_queued_routines) #16
  unreachable

if.end14:                                         ; preds = %if.then12
  %22 = load ptr, ptr %externs, align 8, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %22, ptr align 16 @add_typed_queued_routines.externs_fmt, i64 144, i1 false)
  %23 = load ptr, ptr %externs, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds %struct.extern_entry, ptr %23, i64 0
  %extern_value = getelementptr inbounds %struct.extern_entry, ptr %arrayidx, i32 0, i32 1
  store ptr @cod_ev_discard_rel, ptr %extern_value, align 8, !tbaa !85
  %24 = load ptr, ptr %externs, align 8, !tbaa !4
  %arrayidx15 = getelementptr inbounds %struct.extern_entry, ptr %24, i64 1
  %extern_value16 = getelementptr inbounds %struct.extern_entry, ptr %arrayidx15, i32 0, i32 1
  store ptr @cod_ev_count, ptr %extern_value16, align 8, !tbaa !85
  %25 = load ptr, ptr %externs, align 8, !tbaa !4
  %arrayidx17 = getelementptr inbounds %struct.extern_entry, ptr %25, i64 2
  %extern_value18 = getelementptr inbounds %struct.extern_entry, ptr %arrayidx17, i32 0, i32 1
  store ptr @cod_ev_present, ptr %extern_value18, align 8, !tbaa !85
  %26 = load ptr, ptr %externs, align 8, !tbaa !4
  %arrayidx19 = getelementptr inbounds %struct.extern_entry, ptr %26, i64 3
  %extern_value20 = getelementptr inbounds %struct.extern_entry, ptr %arrayidx19, i32 0, i32 1
  store ptr @cod_ev_discard_and_submit_rel, ptr %extern_value20, align 8, !tbaa !85
  %27 = load ptr, ptr %externs, align 8, !tbaa !4
  %arrayidx21 = getelementptr inbounds %struct.extern_entry, ptr %27, i64 4
  %extern_value22 = getelementptr inbounds %struct.extern_entry, ptr %arrayidx21, i32 0, i32 1
  store ptr @cod_ev_get_attrs, ptr %extern_value22, align 8, !tbaa !85
  %28 = load ptr, ptr %externs, align 8, !tbaa !4
  %arrayidx23 = getelementptr inbounds %struct.extern_entry, ptr %28, i64 5
  %extern_value24 = getelementptr inbounds %struct.extern_entry, ptr %arrayidx23, i32 0, i32 1
  store ptr @cod_ev_submit_rel, ptr %extern_value24, align 8, !tbaa !85
  %29 = load ptr, ptr %externs, align 8, !tbaa !4
  %arrayidx25 = getelementptr inbounds %struct.extern_entry, ptr %29, i64 6
  %extern_value26 = getelementptr inbounds %struct.extern_entry, ptr %arrayidx25, i32 0, i32 1
  store ptr @cod_ffs_write, ptr %extern_value26, align 8, !tbaa !85
  %30 = load ptr, ptr %externs, align 8, !tbaa !4
  %arrayidx27 = getelementptr inbounds %struct.extern_entry, ptr %30, i64 7
  %extern_value28 = getelementptr inbounds %struct.extern_entry, ptr %arrayidx27, i32 0, i32 1
  store ptr @cod_ffs_read, ptr %extern_value28, align 8, !tbaa !85
  %call29 = call noalias ptr @malloc(i64 noundef 144) #13
  store ptr %call29, ptr %data_externs, align 8, !tbaa !4
  %31 = load ptr, ptr %data_externs, align 8, !tbaa !4
  %tobool30 = icmp ne ptr %31, null
  br i1 %tobool30, label %if.then31, label %if.else32

if.then31:                                        ; preds = %if.end14
  br label %if.end33

if.else32:                                        ; preds = %if.end14
  call void @__assert_fail(ptr noundef @.str.118, ptr noundef @.str.28, i32 noundef 1824, ptr noundef @__PRETTY_FUNCTION__.add_typed_queued_routines) #16
  unreachable

if.end33:                                         ; preds = %if.then31
  %32 = load ptr, ptr %data_externs, align 8, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %32, ptr align 16 @add_typed_queued_routines.data_externs_fmt, i64 48, i1 false)
  %33 = load ptr, ptr %data_externs, align 8, !tbaa !4
  %arrayidx34 = getelementptr inbounds %struct.extern_entry, ptr %33, i64 0
  %extern_value35 = getelementptr inbounds %struct.extern_entry, ptr %arrayidx34, i32 0, i32 1
  store ptr @cod_ev_get_data_rel, ptr %extern_value35, align 8, !tbaa !85
  %34 = load ptr, ptr %data_externs, align 8, !tbaa !4
  %arrayidx36 = getelementptr inbounds %struct.extern_entry, ptr %34, i64 1
  %extern_value37 = getelementptr inbounds %struct.extern_entry, ptr %arrayidx36, i32 0, i32 1
  store ptr @cod_ev_get_data_abs, ptr %extern_value37, align 8, !tbaa !85
  %35 = load ptr, ptr %externs, align 8, !tbaa !4
  store ptr %35, ptr %cur, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end33
  %36 = load ptr, ptr %cur, align 8, !tbaa !4
  %extern_name = getelementptr inbounds %struct.extern_entry, ptr %36, i32 0, i32 0
  %37 = load ptr, ptr %extern_name, align 8, !tbaa !107
  %tobool38 = icmp ne ptr %37, null
  br i1 %tobool38, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %real_name) #11
  %38 = load ptr, ptr %cur, align 8, !tbaa !4
  %extern_name39 = getelementptr inbounds %struct.extern_entry, ptr %38, i32 0, i32 0
  %39 = load ptr, ptr %extern_name39, align 8, !tbaa !107
  %call40 = call i64 @strlen(ptr noundef %39) #12
  %40 = load ptr, ptr %fmt_name.addr, align 8, !tbaa !4
  %call41 = call i64 @strlen(ptr noundef %40) #12
  %add42 = add i64 %call40, %call41
  %call43 = call noalias ptr @malloc(i64 noundef %add42) #13
  store ptr %call43, ptr %real_name, align 8, !tbaa !4
  %41 = load ptr, ptr %real_name, align 8, !tbaa !4
  %tobool44 = icmp ne ptr %41, null
  br i1 %tobool44, label %if.then45, label %if.else46

if.then45:                                        ; preds = %for.body
  br label %if.end47

if.else46:                                        ; preds = %for.body
  call void @__assert_fail(ptr noundef @.str.119, ptr noundef @.str.28, i32 noundef 1831, ptr noundef @__PRETTY_FUNCTION__.add_typed_queued_routines) #16
  unreachable

if.end47:                                         ; preds = %if.then45
  %42 = load ptr, ptr %real_name, align 8, !tbaa !4
  %43 = load ptr, ptr %cur, align 8, !tbaa !4
  %extern_name48 = getelementptr inbounds %struct.extern_entry, ptr %43, i32 0, i32 0
  %44 = load ptr, ptr %extern_name48, align 8, !tbaa !107
  %45 = load ptr, ptr %fmt_name.addr, align 8, !tbaa !4
  %call49 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %42, ptr noundef %44, ptr noundef %45) #11
  %46 = load ptr, ptr %real_name, align 8, !tbaa !4
  %47 = load ptr, ptr %cur, align 8, !tbaa !4
  %extern_name50 = getelementptr inbounds %struct.extern_entry, ptr %47, i32 0, i32 0
  store ptr %46, ptr %extern_name50, align 8, !tbaa !107
  call void @llvm.lifetime.end.p0(i64 8, ptr %real_name) #11
  br label %for.inc

for.inc:                                          ; preds = %if.end47
  %48 = load ptr, ptr %cur, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds %struct.extern_entry, ptr %48, i32 1
  store ptr %incdec.ptr, ptr %cur, align 8, !tbaa !4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %49 = load ptr, ptr %context.addr, align 8, !tbaa !4
  %50 = load ptr, ptr %externs, align 8, !tbaa !4
  call void @cod_assoc_externs(ptr noundef %49, ptr noundef %50)
  %51 = load ptr, ptr %extern_string, align 8, !tbaa !4
  %52 = load ptr, ptr %context.addr, align 8, !tbaa !4
  %call51 = call i32 @cod_parse_for_context(ptr noundef %51, ptr noundef %52)
  %53 = load ptr, ptr %externs, align 8, !tbaa !4
  store ptr %53, ptr %cur, align 8, !tbaa !4
  br label %for.cond52

for.cond52:                                       ; preds = %for.inc58, %for.end
  %54 = load ptr, ptr %cur, align 8, !tbaa !4
  %extern_name53 = getelementptr inbounds %struct.extern_entry, ptr %54, i32 0, i32 0
  %55 = load ptr, ptr %extern_name53, align 8, !tbaa !107
  %tobool54 = icmp ne ptr %55, null
  br i1 %tobool54, label %for.body55, label %for.end60

for.body55:                                       ; preds = %for.cond52
  %56 = load ptr, ptr %cur, align 8, !tbaa !4
  %extern_name56 = getelementptr inbounds %struct.extern_entry, ptr %56, i32 0, i32 0
  %57 = load ptr, ptr %extern_name56, align 8, !tbaa !107
  %58 = load i32, ptr %index.addr, align 4, !tbaa !8
  %conv = sext i32 %58 to i64
  %59 = inttoptr i64 %conv to ptr
  %60 = load ptr, ptr %context.addr, align 8, !tbaa !4
  call void @cod_set_closure(ptr noundef %57, ptr noundef %59, ptr noundef %60)
  %61 = load ptr, ptr %cur, align 8, !tbaa !4
  %extern_name57 = getelementptr inbounds %struct.extern_entry, ptr %61, i32 0, i32 0
  %62 = load ptr, ptr %extern_name57, align 8, !tbaa !107
  call void @free(ptr noundef %62) #11
  br label %for.inc58

for.inc58:                                        ; preds = %for.body55
  %63 = load ptr, ptr %cur, align 8, !tbaa !4
  %incdec.ptr59 = getelementptr inbounds %struct.extern_entry, ptr %63, i32 1
  store ptr %incdec.ptr59, ptr %cur, align 8, !tbaa !4
  br label %for.cond52

for.end60:                                        ; preds = %for.cond52
  %64 = load ptr, ptr %externs, align 8, !tbaa !4
  call void @free(ptr noundef %64) #11
  %65 = load ptr, ptr %extern_string, align 8, !tbaa !4
  call void @free(ptr noundef %65) #11
  %66 = load i32, ptr %index.addr, align 4, !tbaa !8
  %cmp = icmp sge i32 %66, 0
  br i1 %cmp, label %if.then62, label %if.end94

if.then62:                                        ; preds = %for.end60
  %67 = load ptr, ptr %data_externs, align 8, !tbaa !4
  store ptr %67, ptr %cur, align 8, !tbaa !4
  br label %for.cond63

for.cond63:                                       ; preds = %for.inc80, %if.then62
  %68 = load ptr, ptr %cur, align 8, !tbaa !4
  %extern_name64 = getelementptr inbounds %struct.extern_entry, ptr %68, i32 0, i32 0
  %69 = load ptr, ptr %extern_name64, align 8, !tbaa !107
  %tobool65 = icmp ne ptr %69, null
  br i1 %tobool65, label %for.body66, label %for.end82

for.body66:                                       ; preds = %for.cond63
  call void @llvm.lifetime.start.p0(i64 8, ptr %real_name67) #11
  %70 = load ptr, ptr %cur, align 8, !tbaa !4
  %extern_name68 = getelementptr inbounds %struct.extern_entry, ptr %70, i32 0, i32 0
  %71 = load ptr, ptr %extern_name68, align 8, !tbaa !107
  %call69 = call i64 @strlen(ptr noundef %71) #12
  %72 = load ptr, ptr %fmt_name.addr, align 8, !tbaa !4
  %call70 = call i64 @strlen(ptr noundef %72) #12
  %add71 = add i64 %call69, %call70
  %call72 = call noalias ptr @malloc(i64 noundef %add71) #13
  store ptr %call72, ptr %real_name67, align 8, !tbaa !4
  %73 = load ptr, ptr %real_name67, align 8, !tbaa !4
  %tobool73 = icmp ne ptr %73, null
  br i1 %tobool73, label %if.then74, label %if.else75

if.then74:                                        ; preds = %for.body66
  br label %if.end76

if.else75:                                        ; preds = %for.body66
  call void @__assert_fail(ptr noundef @.str.119, ptr noundef @.str.28, i32 noundef 1852, ptr noundef @__PRETTY_FUNCTION__.add_typed_queued_routines) #16
  unreachable

if.end76:                                         ; preds = %if.then74
  %74 = load ptr, ptr %real_name67, align 8, !tbaa !4
  %75 = load ptr, ptr %cur, align 8, !tbaa !4
  %extern_name77 = getelementptr inbounds %struct.extern_entry, ptr %75, i32 0, i32 0
  %76 = load ptr, ptr %extern_name77, align 8, !tbaa !107
  %77 = load ptr, ptr %fmt_name.addr, align 8, !tbaa !4
  %call78 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %74, ptr noundef %76, ptr noundef %77) #11
  %78 = load ptr, ptr %real_name67, align 8, !tbaa !4
  %79 = load ptr, ptr %cur, align 8, !tbaa !4
  %extern_name79 = getelementptr inbounds %struct.extern_entry, ptr %79, i32 0, i32 0
  store ptr %78, ptr %extern_name79, align 8, !tbaa !107
  call void @llvm.lifetime.end.p0(i64 8, ptr %real_name67) #11
  br label %for.inc80

for.inc80:                                        ; preds = %if.end76
  %80 = load ptr, ptr %cur, align 8, !tbaa !4
  %incdec.ptr81 = getelementptr inbounds %struct.extern_entry, ptr %80, i32 1
  store ptr %incdec.ptr81, ptr %cur, align 8, !tbaa !4
  br label %for.cond63

for.end82:                                        ; preds = %for.cond63
  %81 = load ptr, ptr %context.addr, align 8, !tbaa !4
  %82 = load ptr, ptr %data_externs, align 8, !tbaa !4
  call void @cod_assoc_externs(ptr noundef %81, ptr noundef %82)
  %83 = load ptr, ptr %data_extern_string, align 8, !tbaa !4
  %84 = load ptr, ptr %context.addr, align 8, !tbaa !4
  %call83 = call i32 @cod_parse_for_context(ptr noundef %83, ptr noundef %84)
  %85 = load ptr, ptr %data_externs, align 8, !tbaa !4
  store ptr %85, ptr %cur, align 8, !tbaa !4
  br label %for.cond84

for.cond84:                                       ; preds = %for.inc91, %for.end82
  %86 = load ptr, ptr %cur, align 8, !tbaa !4
  %extern_name85 = getelementptr inbounds %struct.extern_entry, ptr %86, i32 0, i32 0
  %87 = load ptr, ptr %extern_name85, align 8, !tbaa !107
  %tobool86 = icmp ne ptr %87, null
  br i1 %tobool86, label %for.body87, label %for.end93

for.body87:                                       ; preds = %for.cond84
  %88 = load ptr, ptr %cur, align 8, !tbaa !4
  %extern_name88 = getelementptr inbounds %struct.extern_entry, ptr %88, i32 0, i32 0
  %89 = load ptr, ptr %extern_name88, align 8, !tbaa !107
  %90 = load i32, ptr %index.addr, align 4, !tbaa !8
  %conv89 = sext i32 %90 to i64
  %91 = inttoptr i64 %conv89 to ptr
  %92 = load ptr, ptr %context.addr, align 8, !tbaa !4
  call void @cod_set_closure(ptr noundef %89, ptr noundef %91, ptr noundef %92)
  %93 = load ptr, ptr %cur, align 8, !tbaa !4
  %extern_name90 = getelementptr inbounds %struct.extern_entry, ptr %93, i32 0, i32 0
  %94 = load ptr, ptr %extern_name90, align 8, !tbaa !107
  call void @free(ptr noundef %94) #11
  br label %for.inc91

for.inc91:                                        ; preds = %for.body87
  %95 = load ptr, ptr %cur, align 8, !tbaa !4
  %incdec.ptr92 = getelementptr inbounds %struct.extern_entry, ptr %95, i32 1
  store ptr %incdec.ptr92, ptr %cur, align 8, !tbaa !4
  br label %for.cond84

for.end93:                                        ; preds = %for.cond84
  br label %if.end94

if.end94:                                         ; preds = %for.end93, %for.end60
  %96 = load ptr, ptr %data_externs, align 8, !tbaa !4
  call void @free(ptr noundef %96) #11
  %97 = load ptr, ptr %data_extern_string, align 8, !tbaa !4
  call void @free(ptr noundef %97) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %data_externs) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %externs) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %cur) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %data_extern_string) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %extern_string) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @cod_find_index_abs(ptr noundef %ev_state, i32 noundef %queue, i32 noundef %index) #0 {
entry:
  %retval = alloca ptr, align 8
  %ev_state.addr = alloca ptr, align 8
  %queue.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %ret = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ev_state, ptr %ev_state.addr, align 8, !tbaa !4
  store i32 %queue, ptr %queue.addr, align 4, !tbaa !8
  store i32 %index, ptr %index.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #11
  %0 = load ptr, ptr %ev_state.addr, align 8, !tbaa !4
  %queue1 = getelementptr inbounds %struct.ev_state_data, ptr %0, i32 0, i32 7
  %1 = load ptr, ptr %queue1, align 8, !tbaa !81
  %queue_head = getelementptr inbounds %struct._queue, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %queue_head, align 8, !tbaa !101
  %3 = load i32, ptr %index.addr, align 4, !tbaa !8
  %call = call ptr @queue_find_index(ptr noundef %2, i32 noundef %3, ptr noundef null)
  store ptr %call, ptr %ret, align 8, !tbaa !4
  %4 = load ptr, ptr %ret, align 8, !tbaa !4
  %tobool = icmp ne ptr %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load i32, ptr %queue.addr, align 4, !tbaa !8
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %if.then3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %6 = load ptr, ptr %ret, align 8, !tbaa !4
  %item = getelementptr inbounds %struct.queue_item, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %item, align 8, !tbaa !103
  %reference_format = getelementptr inbounds %struct._event_item, ptr %7, i32 0, i32 7
  %8 = load ptr, ptr %reference_format, align 8, !tbaa !33
  %9 = load ptr, ptr %ev_state.addr, align 8, !tbaa !4
  %instance = getelementptr inbounds %struct.ev_state_data, ptr %9, i32 0, i32 8
  %10 = load ptr, ptr %instance, align 8, !tbaa !83
  %u = getelementptr inbounds %struct.response_instance, ptr %10, i32 0, i32 3
  %formats = getelementptr inbounds %struct.queued_instance, ptr %u, i32 0, i32 4
  %11 = load ptr, ptr %formats, align 8, !tbaa !14
  %12 = load i32, ptr %queue.addr, align 4, !tbaa !8
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %11, i64 %idxprom
  %13 = load ptr, ptr %arrayidx, align 8, !tbaa !4
  %cmp2 = icmp eq ptr %8, %13
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  %14 = load ptr, ptr %ret, align 8, !tbaa !4
  store ptr %14, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #11
  %15 = load ptr, ptr %retval, align 8
  ret ptr %15
}

; Function Attrs: nounwind uwtable
define internal ptr @queue_find_index(ptr noundef %item, i32 noundef %i, ptr noundef %format) #0 {
entry:
  %retval = alloca ptr, align 8
  %item.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  %format.addr = alloca ptr, align 8
  store ptr %item, ptr %item.addr, align 8, !tbaa !4
  store i32 %i, ptr %i.addr, align 4, !tbaa !8
  store ptr %format, ptr %format.addr, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %if.end7, %entry
  %0 = load ptr, ptr %item.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.cond
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %for.cond
  %1 = load ptr, ptr %format.addr, align 8, !tbaa !4
  %tobool1 = icmp ne ptr %1, null
  br i1 %tobool1, label %lor.lhs.false, label %if.then3

lor.lhs.false:                                    ; preds = %if.end
  %2 = load ptr, ptr %item.addr, align 8, !tbaa !4
  %item2 = getelementptr inbounds %struct.queue_item, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %item2, align 8, !tbaa !103
  %reference_format = getelementptr inbounds %struct._event_item, ptr %3, i32 0, i32 7
  %4 = load ptr, ptr %reference_format, align 8, !tbaa !33
  %5 = load ptr, ptr %format.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %4, %5
  br i1 %cmp, label %if.then3, label %if.end7

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  %6 = load i32, ptr %i.addr, align 4, !tbaa !8
  %cmp4 = icmp eq i32 %6, 0
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.then3
  %7 = load ptr, ptr %item.addr, align 8, !tbaa !4
  store ptr %7, ptr %retval, align 8
  br label %return

if.end6:                                          ; preds = %if.then3
  %8 = load i32, ptr %i.addr, align 4, !tbaa !8
  %dec = add nsw i32 %8, -1
  store i32 %dec, ptr %i.addr, align 4, !tbaa !8
  br label %if.end7

if.end7:                                          ; preds = %if.end6, %lor.lhs.false
  %9 = load ptr, ptr %item.addr, align 8, !tbaa !4
  %next = getelementptr inbounds %struct.queue_item, ptr %9, i32 0, i32 2
  %10 = load ptr, ptr %next, align 8, !tbaa !105
  store ptr %10, ptr %item.addr, align 8, !tbaa !4
  br label %for.cond

return:                                           ; preds = %if.then5, %if.then
  %11 = load ptr, ptr %retval, align 8
  ret ptr %11
}

; Function Attrs: nounwind uwtable
define internal void @cod_ev_discard(ptr noundef %ec, i32 noundef %absp, i32 noundef %queue, i32 noundef %index) #0 {
entry:
  %ec.addr = alloca ptr, align 8
  %absp.addr = alloca i32, align 4
  %queue.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %ev_state = alloca ptr, align 8
  %cm = alloca ptr, align 8
  %item = alloca ptr, align 8
  store ptr %ec, ptr %ec.addr, align 8, !tbaa !4
  store i32 %absp, ptr %absp.addr, align 4, !tbaa !8
  store i32 %queue, ptr %queue.addr, align 4, !tbaa !8
  store i32 %index, ptr %index.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ev_state) #11
  %0 = load ptr, ptr %ec.addr, align 8, !tbaa !4
  %call = call i64 @cod_get_client_data(ptr noundef %0, i32 noundef 878082192)
  %1 = inttoptr i64 %call to ptr
  store ptr %1, ptr %ev_state, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %cm) #11
  %2 = load ptr, ptr %ev_state, align 8, !tbaa !4
  %cm1 = getelementptr inbounds %struct.ev_state_data, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %cm1, align 8, !tbaa !25
  store ptr %3, ptr %cm, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %item) #11
  %4 = load i32, ptr %absp.addr, align 4, !tbaa !8
  %5 = load ptr, ptr %ev_state, align 8, !tbaa !4
  %6 = load i32, ptr %queue.addr, align 4, !tbaa !8
  %7 = load i32, ptr %index.addr, align 4, !tbaa !8
  %call2 = call ptr @cod_find_index(i32 noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7)
  store ptr %call2, ptr %item, align 8, !tbaa !4
  %8 = load ptr, ptr %item, align 8, !tbaa !4
  %tobool = icmp ne ptr %8, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(ptr noundef @.str.98, ptr noundef @.str.28, i32 noundef 801, ptr noundef @__PRETTY_FUNCTION__.cod_ev_discard) #16
  unreachable

if.end:                                           ; preds = %if.then
  %9 = load ptr, ptr %cm, align 8, !tbaa !4
  %10 = load ptr, ptr %ev_state, align 8, !tbaa !4
  %stone = getelementptr inbounds %struct.ev_state_data, ptr %10, i32 0, i32 2
  %11 = load i32, ptr %stone, align 8, !tbaa !71
  %12 = load ptr, ptr %item, align 8, !tbaa !4
  call void @EVdiscard_queue_item(ptr noundef %9, i32 noundef %11, ptr noundef %12)
  call void @llvm.lifetime.end.p0(i64 8, ptr %item) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %cm) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %ev_state) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @cod_find_index(i32 noundef %absp, ptr noundef %ev_state, i32 noundef %queue, i32 noundef %index) #0 {
entry:
  %retval = alloca ptr, align 8
  %absp.addr = alloca i32, align 4
  %ev_state.addr = alloca ptr, align 8
  %queue.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  store i32 %absp, ptr %absp.addr, align 4, !tbaa !8
  store ptr %ev_state, ptr %ev_state.addr, align 8, !tbaa !4
  store i32 %queue, ptr %queue.addr, align 4, !tbaa !8
  store i32 %index, ptr %index.addr, align 4, !tbaa !8
  %0 = load i32, ptr %absp.addr, align 4, !tbaa !8
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %ev_state.addr, align 8, !tbaa !4
  %2 = load i32, ptr %queue.addr, align 4, !tbaa !8
  %3 = load i32, ptr %index.addr, align 4, !tbaa !8
  %call = call ptr @cod_find_index_abs(ptr noundef %1, i32 noundef %2, i32 noundef %3)
  store ptr %call, ptr %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %4 = load ptr, ptr %ev_state.addr, align 8, !tbaa !4
  %5 = load i32, ptr %queue.addr, align 4, !tbaa !8
  %6 = load i32, ptr %index.addr, align 4, !tbaa !8
  %call1 = call ptr @cod_find_index_rel(ptr noundef %4, i32 noundef %5, i32 noundef %6)
  store ptr %call1, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then
  %7 = load ptr, ptr %retval, align 8
  ret ptr %7
}

declare void @EVdiscard_queue_item(ptr noundef, i32 noundef, ptr noundef) #5

; Function Attrs: nounwind uwtable
define internal ptr @cod_find_index_rel(ptr noundef %ev_state, i32 noundef %queue, i32 noundef %index) #0 {
entry:
  %retval = alloca ptr, align 8
  %ev_state.addr = alloca ptr, align 8
  %queue.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  store ptr %ev_state, ptr %ev_state.addr, align 8, !tbaa !4
  store i32 %queue, ptr %queue.addr, align 4, !tbaa !8
  store i32 %index, ptr %index.addr, align 4, !tbaa !8
  %0 = load i32, ptr %queue.addr, align 4, !tbaa !8
  %cmp = icmp ne i32 %0, -2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %ev_state.addr, align 8, !tbaa !4
  %queue1 = getelementptr inbounds %struct.ev_state_data, ptr %1, i32 0, i32 7
  %2 = load ptr, ptr %queue1, align 8, !tbaa !81
  %queue_head = getelementptr inbounds %struct._queue, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %queue_head, align 8, !tbaa !101
  %4 = load i32, ptr %index.addr, align 4, !tbaa !8
  %5 = load i32, ptr %queue.addr, align 4, !tbaa !8
  %cmp2 = icmp slt i32 %5, 0
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %6 = load ptr, ptr %ev_state.addr, align 8, !tbaa !4
  %instance = getelementptr inbounds %struct.ev_state_data, ptr %6, i32 0, i32 8
  %7 = load ptr, ptr %instance, align 8, !tbaa !83
  %u = getelementptr inbounds %struct.response_instance, ptr %7, i32 0, i32 3
  %formats = getelementptr inbounds %struct.queued_instance, ptr %u, i32 0, i32 4
  %8 = load ptr, ptr %formats, align 8, !tbaa !14
  %9 = load i32, ptr %queue.addr, align 4, !tbaa !8
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %8, i64 %idxprom
  %10 = load ptr, ptr %arrayidx, align 8, !tbaa !4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ null, %cond.true ], [ %10, %cond.false ]
  %call = call ptr @queue_find_index(ptr noundef %3, i32 noundef %4, ptr noundef %cond)
  store ptr %call, ptr %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %11 = load ptr, ptr %ev_state.addr, align 8, !tbaa !4
  %queue3 = getelementptr inbounds %struct.ev_state_data, ptr %11, i32 0, i32 7
  %12 = load ptr, ptr %queue3, align 8, !tbaa !81
  %queue_head4 = getelementptr inbounds %struct._queue, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %queue_head4, align 8, !tbaa !101
  %14 = load i32, ptr %index.addr, align 4, !tbaa !8
  %15 = load ptr, ptr %ev_state.addr, align 8, !tbaa !4
  %instance5 = getelementptr inbounds %struct.ev_state_data, ptr %15, i32 0, i32 8
  %16 = load ptr, ptr %instance5, align 8, !tbaa !83
  %u6 = getelementptr inbounds %struct.response_instance, ptr %16, i32 0, i32 3
  %formats7 = getelementptr inbounds %struct.queued_instance, ptr %u6, i32 0, i32 4
  %17 = load ptr, ptr %formats7, align 8, !tbaa !14
  %call8 = call ptr @queue_find_anonymous(ptr noundef %13, i32 noundef %14, ptr noundef %17)
  store ptr %call8, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %cond.end
  %18 = load ptr, ptr %retval, align 8
  ret ptr %18
}

; Function Attrs: nounwind uwtable
define internal ptr @queue_find_anonymous(ptr noundef %item, i32 noundef %i, ptr noundef %formats) #0 {
entry:
  %retval = alloca ptr, align 8
  %item.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  %formats.addr = alloca ptr, align 8
  %known = alloca i32, align 4
  %j = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %item, ptr %item.addr, align 8, !tbaa !4
  store i32 %i, ptr %i.addr, align 4, !tbaa !8
  store ptr %formats, ptr %formats.addr, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %cleanup.cont, %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %known) #11
  store i32 0, ptr %known, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #11
  store i32 0, ptr %j, align 4, !tbaa !8
  %0 = load ptr, ptr %item.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.cond
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %for.cond
  br label %while.cond

while.cond:                                       ; preds = %if.end6, %if.end
  %1 = load ptr, ptr %formats.addr, align 8, !tbaa !4
  %2 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 %idxprom
  %3 = load ptr, ptr %arrayidx, align 8, !tbaa !4
  %tobool1 = icmp ne ptr %3, null
  br i1 %tobool1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load ptr, ptr %item.addr, align 8, !tbaa !4
  %item2 = getelementptr inbounds %struct.queue_item, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %item2, align 8, !tbaa !103
  %reference_format = getelementptr inbounds %struct._event_item, ptr %5, i32 0, i32 7
  %6 = load ptr, ptr %reference_format, align 8, !tbaa !33
  %7 = load ptr, ptr %formats.addr, align 8, !tbaa !4
  %8 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom3 = sext i32 %8 to i64
  %arrayidx4 = getelementptr inbounds ptr, ptr %7, i64 %idxprom3
  %9 = load ptr, ptr %arrayidx4, align 8, !tbaa !4
  %cmp = icmp eq ptr %6, %9
  br i1 %cmp, label %if.then5, label %if.end6

if.then5:                                         ; preds = %while.body
  %10 = load i32, ptr %known, align 4, !tbaa !8
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr %known, align 4, !tbaa !8
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %while.body
  %11 = load i32, ptr %j, align 4, !tbaa !8
  %inc7 = add nsw i32 %11, 1
  store i32 %inc7, ptr %j, align 4, !tbaa !8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %12 = load i32, ptr %known, align 4, !tbaa !8
  %cmp8 = icmp eq i32 %12, 0
  br i1 %cmp8, label %if.then9, label %if.end13

if.then9:                                         ; preds = %while.end
  %13 = load i32, ptr %i.addr, align 4, !tbaa !8
  %cmp10 = icmp eq i32 %13, 0
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.then9
  %14 = load ptr, ptr %item.addr, align 8, !tbaa !4
  store ptr %14, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end12:                                         ; preds = %if.then9
  %15 = load i32, ptr %i.addr, align 4, !tbaa !8
  %dec = add nsw i32 %15, -1
  store i32 %dec, ptr %i.addr, align 4, !tbaa !8
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %while.end
  %16 = load ptr, ptr %item.addr, align 8, !tbaa !4
  %next = getelementptr inbounds %struct.queue_item, ptr %16, i32 0, i32 2
  %17 = load ptr, ptr %next, align 8, !tbaa !105
  store ptr %17, ptr %item.addr, align 8, !tbaa !4
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then11, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %known) #11
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.cond

return:                                           ; preds = %cleanup
  %18 = load ptr, ptr %retval, align 8
  ret ptr %18

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @cod_ev_discard_and_submit(ptr noundef %ec, i32 noundef %absp, i32 noundef %port, i32 noundef %queue, i32 noundef %index) #0 {
entry:
  %ec.addr = alloca ptr, align 8
  %absp.addr = alloca i32, align 4
  %port.addr = alloca i32, align 4
  %queue.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %ev_state = alloca ptr, align 8
  %cm = alloca ptr, align 8
  %item = alloca ptr, align 8
  %target_stone = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ec, ptr %ec.addr, align 8, !tbaa !4
  store i32 %absp, ptr %absp.addr, align 4, !tbaa !8
  store i32 %port, ptr %port.addr, align 4, !tbaa !8
  store i32 %queue, ptr %queue.addr, align 4, !tbaa !8
  store i32 %index, ptr %index.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ev_state) #11
  %0 = load ptr, ptr %ec.addr, align 8, !tbaa !4
  %call = call i64 @cod_get_client_data(ptr noundef %0, i32 noundef 878082192)
  %1 = inttoptr i64 %call to ptr
  store ptr %1, ptr %ev_state, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %cm) #11
  %2 = load ptr, ptr %ev_state, align 8, !tbaa !4
  %cm1 = getelementptr inbounds %struct.ev_state_data, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %cm1, align 8, !tbaa !25
  store ptr %3, ptr %cm, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %item) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr %target_stone) #11
  %4 = load ptr, ptr %ev_state, align 8, !tbaa !4
  %5 = load i32, ptr %port.addr, align 4, !tbaa !8
  %call2 = call i32 @port_to_stone(ptr noundef %4, i32 noundef %5)
  store i32 %call2, ptr %target_stone, align 4, !tbaa !8
  %6 = load i32, ptr %target_stone, align 4, !tbaa !8
  %cmp = icmp eq i32 %6, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i32, ptr %port.addr, align 4, !tbaa !8
  %8 = load ptr, ptr %ev_state, align 8, !tbaa !4
  %stone = getelementptr inbounds %struct.ev_state_data, ptr %8, i32 0, i32 2
  %9 = load i32, ptr %stone, align 8, !tbaa !71
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.69, i32 noundef %7, i32 noundef %9)
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = load i32, ptr %absp.addr, align 4, !tbaa !8
  %11 = load ptr, ptr %ev_state, align 8, !tbaa !4
  %12 = load i32, ptr %queue.addr, align 4, !tbaa !8
  %13 = load i32, ptr %index.addr, align 4, !tbaa !8
  %call4 = call ptr @cod_find_index(i32 noundef %10, ptr noundef %11, i32 noundef %12, i32 noundef %13)
  store ptr %call4, ptr %item, align 8, !tbaa !4
  %14 = load ptr, ptr %item, align 8, !tbaa !4
  %cmp5 = icmp eq ptr %14, null
  br i1 %cmp5, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  %15 = load i32, ptr %index.addr, align 4, !tbaa !8
  %16 = load i32, ptr %queue.addr, align 4, !tbaa !8
  %17 = load ptr, ptr %ev_state, align 8, !tbaa !4
  %stone7 = getelementptr inbounds %struct.ev_state_data, ptr %17, i32 0, i32 2
  %18 = load i32, ptr %stone7, align 8, !tbaa !71
  %call8 = call i32 (ptr, ...) @printf(ptr noundef @.str.99, i32 noundef %15, i32 noundef %16, i32 noundef %18)
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %19 = load ptr, ptr %item, align 8, !tbaa !4
  %handled = getelementptr inbounds %struct.queue_item, ptr %19, i32 0, i32 1
  store i32 0, ptr %handled, align 8, !tbaa !108
  %20 = load ptr, ptr %cm, align 8, !tbaa !4
  %21 = load i32, ptr %target_stone, align 4, !tbaa !8
  %22 = load ptr, ptr %item, align 8, !tbaa !4
  %item10 = getelementptr inbounds %struct.queue_item, ptr %22, i32 0, i32 0
  %23 = load ptr, ptr %item10, align 8, !tbaa !103
  %call11 = call i32 @internal_path_submit(ptr noundef %20, i32 noundef %21, ptr noundef %23)
  %24 = load ptr, ptr %ev_state, align 8, !tbaa !4
  %did_output = getelementptr inbounds %struct.ev_state_data, ptr %24, i32 0, i32 9
  %25 = load i32, ptr %did_output, align 8, !tbaa !84
  %inc = add nsw i32 %25, 1
  store i32 %inc, ptr %did_output, align 8, !tbaa !84
  %26 = load ptr, ptr %cm, align 8, !tbaa !4
  %27 = load ptr, ptr %ev_state, align 8, !tbaa !4
  %stone12 = getelementptr inbounds %struct.ev_state_data, ptr %27, i32 0, i32 2
  %28 = load i32, ptr %stone12, align 8, !tbaa !71
  %29 = load ptr, ptr %item, align 8, !tbaa !4
  call void @EVdiscard_queue_item(ptr noundef %26, i32 noundef %28, ptr noundef %29)
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %target_stone) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %item) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %cm) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %ev_state) #11
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
define internal ptr @cod_ev_get_data(ptr noundef %ec, i32 noundef %absp, i32 noundef %queue, i32 noundef %index) #0 {
entry:
  %retval = alloca ptr, align 8
  %ec.addr = alloca ptr, align 8
  %absp.addr = alloca i32, align 4
  %queue.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %ev_state = alloca ptr, align 8
  %item = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ec, ptr %ec.addr, align 8, !tbaa !4
  store i32 %absp, ptr %absp.addr, align 4, !tbaa !8
  store i32 %queue, ptr %queue.addr, align 4, !tbaa !8
  store i32 %index, ptr %index.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ev_state) #11
  %0 = load ptr, ptr %ec.addr, align 8, !tbaa !4
  %call = call i64 @cod_get_client_data(ptr noundef %0, i32 noundef 878082192)
  %1 = inttoptr i64 %call to ptr
  store ptr %1, ptr %ev_state, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %item) #11
  %2 = load i32, ptr %absp.addr, align 4, !tbaa !8
  %3 = load ptr, ptr %ev_state, align 8, !tbaa !4
  %4 = load i32, ptr %queue.addr, align 4, !tbaa !8
  %5 = load i32, ptr %index.addr, align 4, !tbaa !8
  %call1 = call ptr @cod_find_index(i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5)
  store ptr %call1, ptr %item, align 8, !tbaa !4
  %6 = load ptr, ptr %item, align 8, !tbaa !4
  %tobool = icmp ne ptr %6, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %item, align 8, !tbaa !4
  %item2 = getelementptr inbounds %struct.queue_item, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %item2, align 8, !tbaa !103
  %tobool3 = icmp ne ptr %8, null
  br i1 %tobool3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  br label %if.end5

if.else:                                          ; preds = %if.end
  call void @__assert_fail(ptr noundef @.str.100, ptr noundef @.str.28, i32 noundef 953, ptr noundef @__PRETTY_FUNCTION__.cod_ev_get_data) #16
  unreachable

if.end5:                                          ; preds = %if.then4
  %9 = load ptr, ptr %item, align 8, !tbaa !4
  %item6 = getelementptr inbounds %struct.queue_item, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %item6, align 8, !tbaa !103
  %decoded_event = getelementptr inbounds %struct._event_item, ptr %10, i32 0, i32 5
  %11 = load ptr, ptr %decoded_event, align 8, !tbaa !66
  %tobool7 = icmp ne ptr %11, null
  br i1 %tobool7, label %if.end12, label %if.then8

if.then8:                                         ; preds = %if.end5
  %12 = load ptr, ptr %ev_state, align 8, !tbaa !4
  %cm = getelementptr inbounds %struct.ev_state_data, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %cm, align 8, !tbaa !25
  %14 = load ptr, ptr %ev_state, align 8, !tbaa !4
  %stone = getelementptr inbounds %struct.ev_state_data, ptr %14, i32 0, i32 2
  %15 = load i32, ptr %stone, align 8, !tbaa !71
  %16 = load ptr, ptr %ev_state, align 8, !tbaa !4
  %proto_action_id = getelementptr inbounds %struct.ev_state_data, ptr %16, i32 0, i32 3
  %17 = load i32, ptr %proto_action_id, align 4, !tbaa !72
  %18 = load ptr, ptr %item, align 8, !tbaa !4
  %item9 = getelementptr inbounds %struct.queue_item, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %item9, align 8, !tbaa !103
  %call10 = call ptr @cod_decode_event(ptr noundef %13, i32 noundef %15, i32 noundef %17, ptr noundef %19)
  %20 = load ptr, ptr %item, align 8, !tbaa !4
  %item11 = getelementptr inbounds %struct.queue_item, ptr %20, i32 0, i32 0
  store ptr %call10, ptr %item11, align 8, !tbaa !103
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %if.end5
  %21 = load ptr, ptr %item, align 8, !tbaa !4
  %item13 = getelementptr inbounds %struct.queue_item, ptr %21, i32 0, i32 0
  %22 = load ptr, ptr %item13, align 8, !tbaa !103
  %decoded_event14 = getelementptr inbounds %struct._event_item, ptr %22, i32 0, i32 5
  %23 = load ptr, ptr %decoded_event14, align 8, !tbaa !66
  %tobool15 = icmp ne ptr %23, null
  br i1 %tobool15, label %if.then16, label %if.else17

if.then16:                                        ; preds = %if.end12
  br label %if.end18

if.else17:                                        ; preds = %if.end12
  call void @__assert_fail(ptr noundef @.str.101, ptr noundef @.str.28, i32 noundef 959, ptr noundef @__PRETTY_FUNCTION__.cod_ev_get_data) #16
  unreachable

if.end18:                                         ; preds = %if.then16
  %24 = load ptr, ptr %item, align 8, !tbaa !4
  %item19 = getelementptr inbounds %struct.queue_item, ptr %24, i32 0, i32 0
  %25 = load ptr, ptr %item19, align 8, !tbaa !103
  %decoded_event20 = getelementptr inbounds %struct._event_item, ptr %25, i32 0, i32 5
  %26 = load ptr, ptr %decoded_event20, align 8, !tbaa !66
  store ptr %26, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %item) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %ev_state) #11
  %27 = load ptr, ptr %retval, align 8
  ret ptr %27
}

declare ptr @cod_decode_event(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #5

declare ptr @CMint_create_attr_list(ptr noundef, ptr noundef, i32 noundef) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: nounwind uwtable
define internal void @cod_ev_submit_rel(ptr noundef %ec, i32 noundef %port, i32 noundef %queue, i32 noundef %index) #0 {
entry:
  %ec.addr = alloca ptr, align 8
  %port.addr = alloca i32, align 4
  %queue.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  store ptr %ec, ptr %ec.addr, align 8, !tbaa !4
  store i32 %port, ptr %port.addr, align 4, !tbaa !8
  store i32 %queue, ptr %queue.addr, align 4, !tbaa !8
  store i32 %index, ptr %index.addr, align 4, !tbaa !8
  %0 = load ptr, ptr %ec.addr, align 8, !tbaa !4
  %1 = load i32, ptr %port.addr, align 4, !tbaa !8
  %2 = load i32, ptr %queue.addr, align 4, !tbaa !8
  %3 = load i32, ptr %index.addr, align 4, !tbaa !8
  call void @cod_ev_submit(ptr noundef %0, i32 noundef 0, i32 noundef %1, i32 noundef %2, i32 noundef %3)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cod_ffs_write(ptr noundef %ec, ptr noundef %fname, i32 noundef %queue, i32 noundef %index) #0 {
entry:
  %ec.addr = alloca ptr, align 8
  %fname.addr = alloca ptr, align 8
  %queue.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %ref_format = alloca ptr, align 8
  %file_format = alloca ptr, align 8
  %ev_state = alloca ptr, align 8
  %my_item = alloca ptr, align 8
  %fmc = alloca ptr, align 8
  %temp_attr = alloca ptr, align 8
  %format_list = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %temp_data = alloca ptr, align 8
  store ptr %ec, ptr %ec.addr, align 8, !tbaa !4
  store ptr %fname, ptr %fname.addr, align 8, !tbaa !4
  store i32 %queue, ptr %queue.addr, align 4, !tbaa !8
  store i32 %index, ptr %index.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ref_format) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %file_format) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %ev_state) #11
  %0 = load ptr, ptr %ec.addr, align 8, !tbaa !4
  %call = call i64 @cod_get_client_data(ptr noundef %0, i32 noundef 878082192)
  %1 = inttoptr i64 %call to ptr
  store ptr %1, ptr %ev_state, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %my_item) #11
  %2 = load ptr, ptr %ev_state, align 8, !tbaa !4
  %3 = load i32, ptr %queue.addr, align 4, !tbaa !8
  %4 = load i32, ptr %index.addr, align 4, !tbaa !8
  %call1 = call ptr @cod_find_index(i32 noundef 0, ptr noundef %2, i32 noundef %3, i32 noundef %4)
  store ptr %call1, ptr %my_item, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %fmc) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %temp_attr) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %format_list) #11
  %5 = load ptr, ptr %my_item, align 8, !tbaa !4
  %tobool = icmp ne ptr %5, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef @.str.120)
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %my_item, align 8, !tbaa !4
  %item = getelementptr inbounds %struct.queue_item, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %item, align 8, !tbaa !103
  %reference_format = getelementptr inbounds %struct._event_item, ptr %8, i32 0, i32 7
  %9 = load ptr, ptr %reference_format, align 8, !tbaa !33
  store ptr %9, ptr %ref_format, align 8, !tbaa !4
  %10 = load ptr, ptr %fname.addr, align 8, !tbaa !4
  %call3 = call ptr @FMContext_of_file(ptr noundef %10)
  store ptr %call3, ptr %fmc, align 8, !tbaa !4
  %11 = load ptr, ptr %ref_format, align 8, !tbaa !4
  %call4 = call ptr @format_list_of_FMFormat(ptr noundef %11)
  store ptr %call4, ptr %format_list, align 8, !tbaa !4
  %12 = load ptr, ptr %fmc, align 8, !tbaa !4
  %13 = load ptr, ptr %format_list, align 8, !tbaa !4
  %call5 = call ptr @FMregister_data_format(ptr noundef %12, ptr noundef %13)
  store ptr %call5, ptr %file_format, align 8, !tbaa !4
  %14 = load ptr, ptr %my_item, align 8, !tbaa !4
  %item6 = getelementptr inbounds %struct.queue_item, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %item6, align 8, !tbaa !103
  %attrs = getelementptr inbounds %struct._event_item, ptr %15, i32 0, i32 10
  store ptr %attrs, ptr %temp_attr, align 8, !tbaa !4
  %16 = load ptr, ptr %temp_attr, align 8, !tbaa !4
  %17 = load ptr, ptr %16, align 8, !tbaa !4
  %tobool7 = icmp ne ptr %17, null
  br i1 %tobool7, label %if.end10, label %if.then8

if.then8:                                         ; preds = %if.end
  %18 = load ptr, ptr %format_list, align 8, !tbaa !4
  %format_name = getelementptr inbounds %struct._FMformat_list, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %format_name, align 8, !tbaa !10
  %call9 = call i32 (ptr, ...) @printf(ptr noundef @.str.121, ptr noundef %19)
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end
  %20 = load ptr, ptr %my_item, align 8, !tbaa !4
  %item11 = getelementptr inbounds %struct.queue_item, ptr %20, i32 0, i32 0
  %21 = load ptr, ptr %item11, align 8, !tbaa !103
  %event_encoded = getelementptr inbounds %struct._event_item, ptr %21, i32 0, i32 1
  %22 = load i32, ptr %event_encoded, align 4, !tbaa !38
  %tobool12 = icmp ne i32 %22, 0
  br i1 %tobool12, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.end10
  %23 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call14 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef @.str.122)
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end10
  call void @llvm.lifetime.start.p0(i64 8, ptr %temp_data) #11
  %24 = load ptr, ptr %my_item, align 8, !tbaa !4
  %item15 = getelementptr inbounds %struct.queue_item, ptr %24, i32 0, i32 0
  %25 = load ptr, ptr %item15, align 8, !tbaa !103
  %decoded_event = getelementptr inbounds %struct._event_item, ptr %25, i32 0, i32 5
  %26 = load ptr, ptr %decoded_event, align 8, !tbaa !66
  store ptr %26, ptr %temp_data, align 8, !tbaa !4
  %27 = load ptr, ptr %fname.addr, align 8, !tbaa !4
  %28 = load ptr, ptr %file_format, align 8, !tbaa !4
  %29 = load ptr, ptr %temp_data, align 8, !tbaa !4
  %30 = load ptr, ptr %temp_attr, align 8, !tbaa !4
  %31 = load ptr, ptr %30, align 8, !tbaa !4
  %call16 = call i32 @write_FFSfile_attrs(ptr noundef %27, ptr noundef %28, ptr noundef %29, ptr noundef %31)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.end20, label %if.then18

if.then18:                                        ; preds = %if.else
  %32 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call19 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef @.str.123)
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.else
  call void @llvm.lifetime.end.p0(i64 8, ptr %temp_data) #11
  br label %if.end21

if.end21:                                         ; preds = %if.end20
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.then13, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %format_list) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %temp_attr) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %fmc) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %my_item) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %ev_state) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %file_format) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %ref_format) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cod_ffs_read(ptr noundef %ec, ptr noundef %fname, ptr noundef %data, ptr noundef %temp, i32 noundef %queue) #0 {
entry:
  %ec.addr = alloca ptr, align 8
  %fname.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %temp.addr = alloca ptr, align 8
  %queue.addr = alloca i32, align 4
  %ref_format = alloca ptr, align 8
  %ev_state = alloca ptr, align 8
  %temp_type = alloca ptr, align 8
  %fmc = alloca ptr, align 8
  %format_list = alloca ptr, align 8
  store ptr %ec, ptr %ec.addr, align 8, !tbaa !4
  store ptr %fname, ptr %fname.addr, align 8, !tbaa !4
  store ptr %data, ptr %data.addr, align 8, !tbaa !4
  store ptr %temp, ptr %temp.addr, align 8, !tbaa !4
  store i32 %queue, ptr %queue.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ref_format) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %ev_state) #11
  %0 = load ptr, ptr %ec.addr, align 8, !tbaa !4
  %call = call i64 @cod_get_client_data(ptr noundef %0, i32 noundef 878082192)
  %1 = inttoptr i64 %call to ptr
  store ptr %1, ptr %ev_state, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %temp_type) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %fmc) #11
  %2 = load ptr, ptr %fname.addr, align 8, !tbaa !4
  %call1 = call ptr @FFSContext_of_file(ptr noundef %2)
  store ptr %call1, ptr %fmc, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %format_list) #11
  %3 = load ptr, ptr %ev_state, align 8, !tbaa !4
  %instance = getelementptr inbounds %struct.ev_state_data, ptr %3, i32 0, i32 8
  %4 = load ptr, ptr %instance, align 8, !tbaa !83
  %u = getelementptr inbounds %struct.response_instance, ptr %4, i32 0, i32 3
  %formats = getelementptr inbounds %struct.queued_instance, ptr %u, i32 0, i32 4
  %5 = load ptr, ptr %formats, align 8, !tbaa !14
  %6 = load i32, ptr %queue.addr, align 4, !tbaa !8
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %5, i64 %idxprom
  %7 = load ptr, ptr %arrayidx, align 8, !tbaa !4
  store ptr %7, ptr %ref_format, align 8, !tbaa !4
  %8 = load ptr, ptr %ref_format, align 8, !tbaa !4
  %call2 = call ptr @format_list_of_FMFormat(ptr noundef %8)
  store ptr %call2, ptr %format_list, align 8, !tbaa !4
  %9 = load ptr, ptr %fmc, align 8, !tbaa !4
  %10 = load ptr, ptr %format_list, align 8, !tbaa !4
  %call3 = call ptr @FFSset_fixed_target(ptr noundef %9, ptr noundef %10)
  store ptr %call3, ptr %temp_type, align 8, !tbaa !4
  %11 = load ptr, ptr %temp_type, align 8, !tbaa !4
  %12 = load ptr, ptr %fname.addr, align 8, !tbaa !4
  %13 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %14 = load ptr, ptr %temp.addr, align 8, !tbaa !4
  %call4 = call i32 @FFSread_attr(ptr noundef %12, ptr noundef %13, ptr noundef %14)
  call void @llvm.lifetime.end.p0(i64 8, ptr %format_list) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %fmc) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %temp_type) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %ev_state) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %ref_format) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @cod_ev_get_data_abs(ptr noundef %ec, i32 noundef %queue, i32 noundef %index) #0 {
entry:
  %ec.addr = alloca ptr, align 8
  %queue.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  store ptr %ec, ptr %ec.addr, align 8, !tbaa !4
  store i32 %queue, ptr %queue.addr, align 4, !tbaa !8
  store i32 %index, ptr %index.addr, align 4, !tbaa !8
  %0 = load ptr, ptr %ec.addr, align 8, !tbaa !4
  %1 = load i32, ptr %queue.addr, align 4, !tbaa !8
  %2 = load i32, ptr %index.addr, align 4, !tbaa !8
  %call = call ptr @cod_ev_get_data(ptr noundef %0, i32 noundef 1, i32 noundef %1, i32 noundef %2)
  ret ptr %call
}

; Function Attrs: nounwind uwtable
define internal void @cod_ev_submit(ptr noundef %ec, i32 noundef %absp, i32 noundef %port, i32 noundef %queue, i32 noundef %index) #0 {
entry:
  %ec.addr = alloca ptr, align 8
  %absp.addr = alloca i32, align 4
  %port.addr = alloca i32, align 4
  %queue.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %ev_state = alloca ptr, align 8
  %cm = alloca ptr, align 8
  %item = alloca ptr, align 8
  %target_stone = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ec, ptr %ec.addr, align 8, !tbaa !4
  store i32 %absp, ptr %absp.addr, align 4, !tbaa !8
  store i32 %port, ptr %port.addr, align 4, !tbaa !8
  store i32 %queue, ptr %queue.addr, align 4, !tbaa !8
  store i32 %index, ptr %index.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ev_state) #11
  %0 = load ptr, ptr %ec.addr, align 8, !tbaa !4
  %call = call i64 @cod_get_client_data(ptr noundef %0, i32 noundef 878082192)
  %1 = inttoptr i64 %call to ptr
  store ptr %1, ptr %ev_state, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %cm) #11
  %2 = load ptr, ptr %ev_state, align 8, !tbaa !4
  %cm1 = getelementptr inbounds %struct.ev_state_data, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %cm1, align 8, !tbaa !25
  store ptr %3, ptr %cm, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %item) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr %target_stone) #11
  %4 = load ptr, ptr %ev_state, align 8, !tbaa !4
  %5 = load i32, ptr %port.addr, align 4, !tbaa !8
  %call2 = call i32 @port_to_stone(ptr noundef %4, i32 noundef %5)
  store i32 %call2, ptr %target_stone, align 4, !tbaa !8
  %6 = load i32, ptr %target_stone, align 4, !tbaa !8
  %cmp = icmp eq i32 %6, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i32, ptr %port.addr, align 4, !tbaa !8
  %8 = load ptr, ptr %ev_state, align 8, !tbaa !4
  %stone = getelementptr inbounds %struct.ev_state_data, ptr %8, i32 0, i32 2
  %9 = load i32, ptr %stone, align 8, !tbaa !71
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.69, i32 noundef %7, i32 noundef %9)
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = load i32, ptr %absp.addr, align 4, !tbaa !8
  %11 = load ptr, ptr %ev_state, align 8, !tbaa !4
  %12 = load i32, ptr %queue.addr, align 4, !tbaa !8
  %13 = load i32, ptr %index.addr, align 4, !tbaa !8
  %call4 = call ptr @cod_find_index(i32 noundef %10, ptr noundef %11, i32 noundef %12, i32 noundef %13)
  store ptr %call4, ptr %item, align 8, !tbaa !4
  %14 = load ptr, ptr %item, align 8, !tbaa !4
  %cmp5 = icmp eq ptr %14, null
  br i1 %cmp5, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  %15 = load i32, ptr %index.addr, align 4, !tbaa !8
  %16 = load i32, ptr %queue.addr, align 4, !tbaa !8
  %17 = load ptr, ptr %ev_state, align 8, !tbaa !4
  %stone7 = getelementptr inbounds %struct.ev_state_data, ptr %17, i32 0, i32 2
  %18 = load i32, ptr %stone7, align 8, !tbaa !71
  %call8 = call i32 (ptr, ...) @printf(ptr noundef @.str.99, i32 noundef %15, i32 noundef %16, i32 noundef %18)
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %19 = load ptr, ptr %item, align 8, !tbaa !4
  %handled = getelementptr inbounds %struct.queue_item, ptr %19, i32 0, i32 1
  store i32 0, ptr %handled, align 8, !tbaa !108
  %20 = load ptr, ptr %cm, align 8, !tbaa !4
  %21 = load i32, ptr %target_stone, align 4, !tbaa !8
  %22 = load ptr, ptr %item, align 8, !tbaa !4
  %item10 = getelementptr inbounds %struct.queue_item, ptr %22, i32 0, i32 0
  %23 = load ptr, ptr %item10, align 8, !tbaa !103
  %call11 = call i32 @internal_path_submit(ptr noundef %20, i32 noundef %21, ptr noundef %23)
  %24 = load ptr, ptr %ev_state, align 8, !tbaa !4
  %did_output = getelementptr inbounds %struct.ev_state_data, ptr %24, i32 0, i32 9
  %25 = load i32, ptr %did_output, align 8, !tbaa !84
  %inc = add nsw i32 %25, 1
  store i32 %inc, ptr %did_output, align 8, !tbaa !84
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %target_stone) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %item) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %cm) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %ev_state) #11
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

declare ptr @FMContext_of_file(ptr noundef) #5

declare ptr @FMregister_data_format(ptr noundef, ptr noundef) #5

declare i32 @write_FFSfile_attrs(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #5

declare ptr @FFSContext_of_file(ptr noundef) #5

declare ptr @FFSset_fixed_target(ptr noundef, ptr noundef) #5

declare i32 @FFSread_attr(ptr noundef, ptr noundef, ptr noundef) #5

declare void @cod_add_int_constant_to_parse_context(ptr noundef, i32 noundef, ptr noundef) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nounwind }
attributes #12 = { nounwind willreturn memory(read) }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind willreturn memory(none) }
attributes #15 = { nounwind allocsize(1) }
attributes #16 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !6, i64 0}
!10 = !{!11, !5, i64 0}
!11 = !{!"_FMformat_list", !5, i64 0, !5, i64 8, !9, i64 16, !5, i64 24}
!12 = !{!13, !6, i64 0}
!13 = !{!"response_spec", !6, i64 0, !6, i64 8}
!14 = !{!6, !6, i64 0}
!15 = !{!11, !5, i64 8}
!16 = !{!11, !9, i64 16}
!17 = !{!11, !5, i64 24}
!18 = !{!19, !19, i64 0}
!19 = !{!"short", !6, i64 0}
!20 = !{!21, !5, i64 0}
!21 = !{!"_FMField", !5, i64 0, !5, i64 8, !9, i64 16, !9, i64 20}
!22 = !{!21, !5, i64 8}
!23 = !{!21, !9, i64 16}
!24 = !{!21, !9, i64 20}
!25 = !{!26, !5, i64 0}
!26 = !{!"ev_state_data", !5, i64 0, !5, i64 8, !9, i64 16, !9, i64 20, !9, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !9, i64 64}
!27 = !{!28, !9, i64 72}
!28 = !{!"_stone", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !6, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !5, i64 48, !5, i64 56, !9, i64 64, !9, i64 68, !9, i64 72, !5, i64 80, !5, i64 88, !5, i64 96, !9, i64 104, !5, i64 112, !5, i64 120, !9, i64 128, !5, i64 136}
!29 = !{!28, !5, i64 80}
!30 = !{!31, !5, i64 16}
!31 = !{!"_proto_action", !6, i64 0, !5, i64 8, !5, i64 16, !6, i64 24, !6, i64 72, !5, i64 80, !32, i64 88}
!32 = !{!"double", !6, i64 0}
!33 = !{!34, !5, i64 48}
!34 = !{!"_event_item", !9, i64 0, !9, i64 4, !6, i64 8, !5, i64 16, !35, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !5, i64 88, !5, i64 96}
!35 = !{!"long", !6, i64 0}
!36 = !{!31, !6, i64 72}
!37 = !{!31, !6, i64 0}
!38 = !{!34, !9, i64 4}
!39 = !{!28, !9, i64 0}
!40 = !{!41, !9, i64 4}
!41 = !{!"response_instance", !6, i64 0, !9, i64 4, !9, i64 8, !6, i64 16}
!42 = !{!41, !9, i64 8}
!43 = !{!28, !9, i64 40}
!44 = !{!28, !5, i64 48}
!45 = !{!46, !5, i64 0}
!46 = !{!"response_cache_element", !5, i64 0, !6, i64 8, !6, i64 12, !9, i64 16, !9, i64 20, !6, i64 24}
!47 = !{!46, !9, i64 16}
!48 = !{!46, !6, i64 12}
!49 = !{!46, !9, i64 20}
!50 = !{!46, !6, i64 8}
!51 = !{!52, !5, i64 272}
!52 = !{!"_CManager", !5, i64 0, !9, i64 8, !9, i64 12, !5, i64 16, !5, i64 24, !9, i64 32, !5, i64 40, !9, i64 48, !5, i64 56, !9, i64 64, !5, i64 72, !9, i64 80, !5, i64 88, !9, i64 96, !5, i64 104, !6, i64 112, !9, i64 152, !9, i64 156, !9, i64 160, !5, i64 168, !9, i64 176, !6, i64 184, !5, i64 224, !5, i64 232, !5, i64 240, !5, i64 248, !5, i64 256, !5, i64 264, !5, i64 272, !5, i64 280, !53, i64 288, !53, i64 304, !5, i64 320}
!53 = !{!"timeval", !35, i64 0, !35, i64 8}
!54 = !{!55, !5, i64 168}
!55 = !{!"_event_path_data", !9, i64 0, !9, i64 4, !5, i64 8, !9, i64 16, !5, i64 24, !9, i64 32, !5, i64 40, !9, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !5, i64 88, !5, i64 96, !5, i64 104, !6, i64 112, !9, i64 152, !5, i64 160, !5, i64 168, !5, i64 176, !5, i64 184, !5, i64 192, !9, i64 200, !9, i64 204}
!56 = !{!55, !5, i64 160}
!57 = !{!58, !5, i64 0}
!58 = !{!"_extern_routine_struct", !5, i64 0, !5, i64 8}
!59 = !{!58, !5, i64 8}
!60 = !{!41, !6, i64 0}
!61 = !{!26, !5, i64 8}
!62 = !{!26, !9, i64 24}
!63 = !{!26, !5, i64 32}
!64 = !{!65, !5, i64 0}
!65 = !{!"_cod_code_struct", !5, i64 0, !9, i64 8, !5, i64 16, !5, i64 24, !9, i64 32, !9, i64 36, !5, i64 40, !5, i64 48, !5, i64 56}
!66 = !{!34, !5, i64 32}
!67 = !{!52, !5, i64 280}
!68 = !{!69, !35, i64 0}
!69 = !{!"timespec", !35, i64 0, !35, i64 8}
!70 = !{!69, !35, i64 8}
!71 = !{!26, !9, i64 16}
!72 = !{!26, !9, i64 20}
!73 = !{!74, !9, i64 24}
!74 = !{!"_EVSource", !5, i64 0, !5, i64 8, !5, i64 16, !9, i64 24, !9, i64 28, !5, i64 32, !5, i64 40}
!75 = !{!74, !5, i64 0}
!76 = !{!74, !5, i64 8}
!77 = !{!74, !5, i64 16}
!78 = !{!74, !5, i64 32}
!79 = !{!74, !5, i64 40}
!80 = !{!74, !9, i64 28}
!81 = !{!26, !5, i64 48}
!82 = !{!26, !5, i64 40}
!83 = !{!26, !5, i64 56}
!84 = !{!26, !9, i64 64}
!85 = !{!86, !5, i64 8}
!86 = !{!"extern_entry", !5, i64 0, !5, i64 8}
!87 = !{!88, !9, i64 0}
!88 = !{!"delayed_event", !9, i64 0, !5, i64 8}
!89 = !{!88, !5, i64 8}
!90 = !{!34, !9, i64 0}
!91 = !{!53, !35, i64 0}
!92 = !{!53, !35, i64 8}
!93 = !{!34, !5, i64 64}
!94 = !{!34, !5, i64 96}
!95 = !{!34, !5, i64 88}
!96 = !{!34, !5, i64 72}
!97 = !{!34, !5, i64 80}
!98 = !{!55, !9, i64 4}
!99 = !{!55, !9, i64 0}
!100 = !{!28, !5, i64 96}
!101 = !{!102, !5, i64 0}
!102 = !{!"_queue", !5, i64 0, !5, i64 8}
!103 = !{!104, !5, i64 0}
!104 = !{!"queue_item", !5, i64 0, !9, i64 8, !5, i64 16}
!105 = !{!104, !5, i64 16}
!106 = !{!28, !9, i64 32}
!107 = !{!86, !5, i64 0}
!108 = !{!104, !9, i64 8}

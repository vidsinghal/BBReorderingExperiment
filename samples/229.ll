; ModuleID = 'samples/229.bc'
source_filename = "scipy/optimize/cython_optimize/_zeros.cpython-311-x86_64-linux-gnu.so.p/_zeros.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PyModuleDef = type { %struct.PyModuleDef_Base, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr }
%struct.PyModuleDef_Base = type { %struct._object, ptr, i64, ptr }
%struct._object = type { i64, ptr }
%struct.PyMethodDef = type { ptr, ptr, i32, ptr }
%struct.PyModuleDef_Slot = type { i32, ptr }
%struct._typeobject = type { %struct.PyVarObject, ptr, i64, i64, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.PyVarObject = type { %struct._object, i64 }
%struct.PyMemberDef = type { ptr, i32, i64, i32, ptr }
%struct.PyGetSetDef = type { ptr, ptr, ptr, ptr, ptr }
%struct.__Pyx_StringTabEntry = type { ptr, ptr, i64, ptr, i8, i8, i8 }
%struct._longobject = type { %struct.PyVarObject, [1 x i32] }
%struct.__Pyx_CodeObjectCache = type { i32, i32, ptr }
%struct.scipy_zeros_info = type { i32, i32, i32 }
%struct._ts = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i64, i64, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, i64, i64, %struct.PyTraceInfo, ptr, ptr, ptr, %struct._err_stackitem, %struct._PyCFrame }
%struct.PyTraceInfo = type { ptr, %struct._line_offsets }
%struct._line_offsets = type { i32, i32, i32, %struct._opaque }
%struct._opaque = type { i32, ptr, ptr }
%struct._err_stackitem = type { ptr, ptr }
%struct._PyCFrame = type { i8, ptr, ptr }
%struct.__pyx_obj___pyx_scope_struct____Pyx_CFunc_double____tuple____float____float____float____float____int___to_py = type { %struct._object, ptr }
%struct.__pyx_t_5scipy_8optimize_15cython_optimize_6_zeros_extra_params = type { [4 x double] }
%struct._frame = type { %struct._object, ptr, ptr, ptr, i32, i8, i8, i8, [1 x ptr] }
%struct.__pyx_CyFunctionObject = type { %struct.PyCFunctionObject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i64, i32, ptr, ptr, ptr, ptr }
%struct.PyCFunctionObject = type { %struct._object, ptr, ptr, ptr, ptr, ptr }
%struct.PyTupleObject = type { %struct.PyVarObject, [1 x ptr] }
%union.anon = type { ptr }
%struct.__pyx_t_5scipy_8optimize_15cython_optimize_6_zeros_zeros_parameters = type { ptr, ptr }
%struct.__pyx_t_5scipy_8optimize_15cython_optimize_6_zeros_zeros_full_output = type { i32, i32, i32, double }
%struct.__pyx_obj_5scipy_8optimize_15cython_optimize_6_zeros___pyx_scope_struct__loop_example = type { %struct._object, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.PyASCIIObject = type { %struct._object, i64, i64, %struct.anon, ptr }
%struct.anon = type { i32 }
%struct.PyFloatObject = type { %struct._object, double }
%struct.PyNumberMethods = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.PyListObject = type { %struct.PyVarObject, ptr, i64 }
%struct.PyDictObject = type { %struct._object, i64, i64, ptr, ptr }
%struct.PyMethodObject = type { %struct._object, ptr, ptr, ptr, ptr }
%struct.PyMappingMethods = type { ptr, ptr, ptr }
%struct.PySequenceMethods = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.__Pyx_CodeObjectCacheEntry = type { ptr, i32 }

@__pyx_module_is_main_scipy__optimize__cython_optimize___zeros = hidden global i32 0, align 4
@__pyx_moduledef = internal global %struct.PyModuleDef { %struct.PyModuleDef_Base { %struct._object { i64 1, ptr null }, ptr null, i64 0, ptr null }, ptr @.str, ptr @__pyx_k_Cython_wrappers_for_root_finders, i64 0, ptr @__pyx_methods, ptr @__pyx_moduledef_slots, ptr null, ptr null, ptr null }, align 8
@.str = private unnamed_addr constant [7 x i8] c"_zeros\00", align 1
@__pyx_k_Cython_wrappers_for_root_finders = internal constant [44 x i8] c"Cython wrappers for root finders in c_zeros\00", align 16
@__pyx_methods = internal global [1 x %struct.PyMethodDef] zeroinitializer, align 16
@__pyx_moduledef_slots = internal global [3 x %struct.PyModuleDef_Slot] [%struct.PyModuleDef_Slot { i32 1, ptr @__pyx_pymod_create }, %struct.PyModuleDef_Slot { i32 2, ptr @__pyx_pymod_exec__zeros }, %struct.PyModuleDef_Slot zeroinitializer], align 16
@__pyx_m = internal global ptr null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"loader\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"__loader__\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"origin\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"__file__\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"parent\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"__package__\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"submodule_search_locations\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"__path__\00", align 1
@__Pyx_check_single_interpreter.main_interpreter_id = internal global i64 -1, align 8
@PyExc_ImportError = external global ptr, align 8
@.str.10 = private unnamed_addr constant [95 x i8] c"Interpreter change detected - this module can only be loaded into one interpreter per process.\00", align 1
@_Py_NoneStruct = external global %struct._object, align 8
@PyExc_AttributeError = external global ptr, align 8
@PyExc_RuntimeError = external global ptr, align 8
@.str.11 = private unnamed_addr constant [79 x i8] c"Module '_zeros' has already been imported. Re-initialisation is not supported.\00", align 1
@__pyx_f = internal global [2 x ptr] [ptr @.str.20, ptr @.str.21], align 16
@__pyx_empty_tuple = internal global ptr null, align 8
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__pyx_empty_bytes = internal global ptr null, align 8
@__pyx_empty_unicode = internal global ptr null, align 8
@__pyx_d = internal global ptr null, align 8
@.str.13 = private unnamed_addr constant [9 x i8] c"builtins\00", align 1
@__pyx_b = internal global ptr null, align 8
@.str.14 = private unnamed_addr constant [15 x i8] c"cython_runtime\00", align 1
@__pyx_cython_runtime = internal global ptr null, align 8
@.str.15 = private unnamed_addr constant [13 x i8] c"__builtins__\00", align 1
@__pyx_n_s_name = internal global ptr null, align 8
@__pyx_n_s_main = internal global ptr null, align 8
@.str.16 = private unnamed_addr constant [38 x i8] c"scipy.optimize.cython_optimize._zeros\00", align 1
@__pyx_n_u_bisect = internal global ptr null, align 8
@__pyx_n_u_ridder = internal global ptr null, align 8
@__pyx_n_u_brenth = internal global ptr null, align 8
@__pyx_n_u_brentq = internal global ptr null, align 8
@__pyx_n_s_EXAMPLES_MAP = internal global ptr null, align 8
@__pyx_mdef_5scipy_8optimize_15cython_optimize_6_zeros_1loop_example = internal global %struct.PyMethodDef { ptr @.str.109, ptr @__pyx_pw_5scipy_8optimize_15cython_optimize_6_zeros_1loop_example, i32 3, ptr @__pyx_doc_5scipy_8optimize_15cython_optimize_6_zeros_loop_example }, align 8
@__pyx_n_s_scipy_optimize_cython_optimize = internal global ptr null, align 8
@__pyx_n_s_loop_example = internal global ptr null, align 8
@__pyx_mdef_5scipy_8optimize_15cython_optimize_6_zeros_3full_output_example = internal global %struct.PyMethodDef { ptr @.str.124, ptr @__pyx_pw_5scipy_8optimize_15cython_optimize_6_zeros_3full_output_example, i32 3, ptr @__pyx_doc_5scipy_8optimize_15cython_optimize_6_zeros_2full_output_example }, align 8
@__pyx_n_s_full_output_example = internal global ptr null, align 8
@__pyx_n_s_test = internal global ptr null, align 8
@.str.17 = private unnamed_addr constant [43 x i8] c"init scipy.optimize.cython_optimize._zeros\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"%d.%d\00", align 1
@.str.19 = private unnamed_addr constant [76 x i8] c"compiletime version %s of module '%.100s' does not match runtime version %s\00", align 1
@.str.20 = private unnamed_addr constant [42 x i8] c"scipy/optimize/cython_optimize/_zeros.pyx\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"stringsource\00", align 1
@__pyx_CyFunctionType_type = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, ptr null }, i64 0 }, ptr @.str.25, i64 184, i64 0, ptr @__Pyx_CyFunction_dealloc, i64 0, ptr null, ptr null, ptr null, ptr @__Pyx_CyFunction_repr, ptr null, ptr null, ptr null, ptr null, ptr @__Pyx_CyFunction_CallAsMethod, ptr null, ptr null, ptr null, ptr null, i64 16384, ptr null, ptr @__Pyx_CyFunction_traverse, ptr @__Pyx_CyFunction_clear, ptr null, i64 40, ptr null, ptr null, ptr @__pyx_CyFunction_methods, ptr @__pyx_CyFunction_members, ptr @__pyx_CyFunction_getsets, ptr null, ptr null, ptr @__Pyx_CyFunction_descr_get, ptr null, i64 56, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null }, align 8
@__pyx_CyFunctionType = internal global ptr null, align 8
@.str.22 = private unnamed_addr constant [16 x i8] c"_cython_0_29_36\00", align 1
@PyExc_TypeError = external global ptr, align 8
@.str.23 = private unnamed_addr constant [47 x i8] c"Shared Cython type %.200s is not a type object\00", align 1
@.str.24 = private unnamed_addr constant [62 x i8] c"Shared Cython type %.200s has the wrong size, try recompiling\00", align 1
@.str.25 = private unnamed_addr constant [26 x i8] c"cython_function_or_method\00", align 1
@__pyx_CyFunction_methods = internal global [2 x %struct.PyMethodDef] [%struct.PyMethodDef { ptr @.str.32, ptr @__Pyx_CyFunction_reduce, i32 1, ptr null }, %struct.PyMethodDef zeroinitializer], align 16
@__pyx_CyFunction_members = internal global [2 x %struct.PyMemberDef] [%struct.PyMemberDef { ptr @.str.33, i32 6, i64 32, i32 4, ptr null }, %struct.PyMemberDef zeroinitializer], align 16
@__pyx_CyFunction_getsets = internal global [19 x %struct.PyGetSetDef] [%struct.PyGetSetDef { ptr @.str.34, ptr @__Pyx_CyFunction_get_doc, ptr @__Pyx_CyFunction_set_doc, ptr null, ptr null }, %struct.PyGetSetDef { ptr @.str.35, ptr @__Pyx_CyFunction_get_doc, ptr @__Pyx_CyFunction_set_doc, ptr null, ptr null }, %struct.PyGetSetDef { ptr @.str.36, ptr @__Pyx_CyFunction_get_name, ptr @__Pyx_CyFunction_set_name, ptr null, ptr null }, %struct.PyGetSetDef { ptr @.str.37, ptr @__Pyx_CyFunction_get_name, ptr @__Pyx_CyFunction_set_name, ptr null, ptr null }, %struct.PyGetSetDef { ptr @.str.38, ptr @__Pyx_CyFunction_get_qualname, ptr @__Pyx_CyFunction_set_qualname, ptr null, ptr null }, %struct.PyGetSetDef { ptr @.str.39, ptr @__Pyx_CyFunction_get_self, ptr null, ptr null, ptr null }, %struct.PyGetSetDef { ptr @.str.40, ptr @__Pyx_CyFunction_get_dict, ptr @__Pyx_CyFunction_set_dict, ptr null, ptr null }, %struct.PyGetSetDef { ptr @.str.41, ptr @__Pyx_CyFunction_get_dict, ptr @__Pyx_CyFunction_set_dict, ptr null, ptr null }, %struct.PyGetSetDef { ptr @.str.42, ptr @__Pyx_CyFunction_get_globals, ptr null, ptr null, ptr null }, %struct.PyGetSetDef { ptr @.str.43, ptr @__Pyx_CyFunction_get_globals, ptr null, ptr null, ptr null }, %struct.PyGetSetDef { ptr @.str.44, ptr @__Pyx_CyFunction_get_closure, ptr null, ptr null, ptr null }, %struct.PyGetSetDef { ptr @.str.45, ptr @__Pyx_CyFunction_get_closure, ptr null, ptr null, ptr null }, %struct.PyGetSetDef { ptr @.str.46, ptr @__Pyx_CyFunction_get_code, ptr null, ptr null, ptr null }, %struct.PyGetSetDef { ptr @.str.47, ptr @__Pyx_CyFunction_get_code, ptr null, ptr null, ptr null }, %struct.PyGetSetDef { ptr @.str.48, ptr @__Pyx_CyFunction_get_defaults, ptr @__Pyx_CyFunction_set_defaults, ptr null, ptr null }, %struct.PyGetSetDef { ptr @.str.49, ptr @__Pyx_CyFunction_get_defaults, ptr @__Pyx_CyFunction_set_defaults, ptr null, ptr null }, %struct.PyGetSetDef { ptr @.str.50, ptr @__Pyx_CyFunction_get_kwdefaults, ptr @__Pyx_CyFunction_set_kwdefaults, ptr null, ptr null }, %struct.PyGetSetDef { ptr @.str.51, ptr @__Pyx_CyFunction_get_annotations, ptr @__Pyx_CyFunction_set_annotations, ptr null, ptr null }, %struct.PyGetSetDef zeroinitializer], align 16
@.str.26 = private unnamed_addr constant [22 x i8] c"<cyfunction %U at %p>\00", align 1
@.str.27 = private unnamed_addr constant [42 x i8] c"unbound method %.200S() needs an argument\00", align 1
@.str.28 = private unnamed_addr constant [40 x i8] c"%.200s() takes no arguments (%zd given)\00", align 1
@.str.29 = private unnamed_addr constant [48 x i8] c"%.200s() takes exactly one argument (%zd given)\00", align 1
@PyExc_SystemError = external global ptr, align 8
@.str.30 = private unnamed_addr constant [78 x i8] c"Bad call flags in __Pyx_CyFunction_Call. METH_OLDARGS is no longer supported!\00", align 1
@.str.31 = private unnamed_addr constant [36 x i8] c"%.200s() takes no keyword arguments\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"__reduce__\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"__module__\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"func_doc\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"__doc__\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"func_name\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"__name__\00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c"__qualname__\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"__self__\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"func_dict\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"__dict__\00", align 1
@.str.42 = private unnamed_addr constant [13 x i8] c"func_globals\00", align 1
@.str.43 = private unnamed_addr constant [12 x i8] c"__globals__\00", align 1
@.str.44 = private unnamed_addr constant [13 x i8] c"func_closure\00", align 1
@.str.45 = private unnamed_addr constant [12 x i8] c"__closure__\00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"func_code\00", align 1
@.str.47 = private unnamed_addr constant [9 x i8] c"__code__\00", align 1
@.str.48 = private unnamed_addr constant [14 x i8] c"func_defaults\00", align 1
@.str.49 = private unnamed_addr constant [13 x i8] c"__defaults__\00", align 1
@.str.50 = private unnamed_addr constant [15 x i8] c"__kwdefaults__\00", align 1
@.str.51 = private unnamed_addr constant [16 x i8] c"__annotations__\00", align 1
@.str.52 = private unnamed_addr constant [40 x i8] c"__name__ must be set to a string object\00", align 1
@.str.53 = private unnamed_addr constant [44 x i8] c"__qualname__ must be set to a string object\00", align 1
@.str.54 = private unnamed_addr constant [41 x i8] c"function's dictionary may not be deleted\00", align 1
@.str.55 = private unnamed_addr constant [44 x i8] c"setting function's dictionary to a non-dict\00", align 1
@.str.56 = private unnamed_addr constant [43 x i8] c"__defaults__ must be set to a tuple object\00", align 1
@.str.57 = private unnamed_addr constant [44 x i8] c"__kwdefaults__ must be set to a dict object\00", align 1
@.str.58 = private unnamed_addr constant [45 x i8] c"__annotations__ must be set to a dict object\00", align 1
@__pyx_string_tab = internal global [38 x %struct.__Pyx_StringTabEntry] [%struct.__Pyx_StringTabEntry { ptr @__pyx_n_s_EXAMPLES_MAP, ptr @__pyx_k_EXAMPLES_MAP, i64 13, ptr null, i8 0, i8 1, i8 1 }, %struct.__Pyx_StringTabEntry { ptr @__pyx_n_s_IndexError, ptr @__pyx_k_IndexError, i64 11, ptr null, i8 0, i8 1, i8 1 }, %struct.__Pyx_StringTabEntry { ptr @__pyx_n_s_OverflowError, ptr @__pyx_k_OverflowError, i64 14, ptr null, i8 0, i8 1, i8 1 }, %struct.__Pyx_StringTabEntry { ptr @__pyx_n_s_Pyx_CFunc_double____tuple____f, ptr @__pyx_k_Pyx_CFunc_double____tuple____f, i64 93, ptr null, i8 0, i8 1, i8 1 }, %struct.__Pyx_StringTabEntry { ptr @__pyx_n_s_TypeError, ptr @__pyx_k_TypeError, i64 10, ptr null, i8 0, i8 1, i8 1 }, %struct.__Pyx_StringTabEntry { ptr @__pyx_n_s_a0, ptr @__pyx_k_a0, i64 3, ptr null, i8 0, i8 1, i8 1 }, %struct.__Pyx_StringTabEntry { ptr @__pyx_n_s_a0_2, ptr @__pyx_k_a0_2, i64 4, ptr null, i8 0, i8 1, i8 1 }, %struct.__Pyx_StringTabEntry { ptr @__pyx_n_s_args, ptr @__pyx_k_args, i64 5, ptr null, i8 0, i8 1, i8 1 }, %struct.__Pyx_StringTabEntry { ptr @__pyx_n_u_bisect, ptr @__pyx_k_bisect, i64 7, ptr null, i8 1, i8 0, i8 1 }, %struct.__Pyx_StringTabEntry { ptr @__pyx_n_u_brenth, ptr @__pyx_k_brenth, i64 7, ptr null, i8 1, i8 0, i8 1 }, %struct.__Pyx_StringTabEntry { ptr @__pyx_n_u_brentq, ptr @__pyx_k_brentq, i64 7, ptr null, i8 1, i8 0, i8 1 }, %struct.__Pyx_StringTabEntry { ptr @__pyx_n_s_cfunc_to_py, ptr @__pyx_k_cfunc_to_py, i64 12, ptr null, i8 0, i8 1, i8 1 }, %struct.__Pyx_StringTabEntry { ptr @__pyx_n_s_cline_in_traceback, ptr @__pyx_k_cline_in_traceback, i64 19, ptr null, i8 0, i8 1, i8 1 }, %struct.__Pyx_StringTabEntry { ptr @__pyx_n_s_enumerate, ptr @__pyx_k_enumerate, i64 10, ptr null, i8 0, i8 1, i8 1 }, %struct.__Pyx_StringTabEntry { ptr @__pyx_n_s_error_num, ptr @__pyx_k_error_num, i64 10, ptr null, i8 0, i8 1, i8 1 }, %struct.__Pyx_StringTabEntry { ptr @__pyx_n_s_full_output_example, ptr @__pyx_k_full_output_example, i64 20, ptr null, i8 0, i8 1, i8 1 }, %struct.__Pyx_StringTabEntry { ptr @__pyx_n_s_funcalls, ptr @__pyx_k_funcalls, i64 9, ptr null, i8 0, i8 1, i8 1 }, %struct.__Pyx_StringTabEntry { ptr @__pyx_n_s_iterations, ptr @__pyx_k_iterations, i64 11, ptr null, i8 0, i8 1, i8 1 }, %struct.__Pyx_StringTabEntry { ptr @__pyx_n_s_loop_example, ptr @__pyx_k_loop_example, i64 13, ptr null, i8 0, i8 1, i8 1 }, %struct.__Pyx_StringTabEntry { ptr @__pyx_n_s_loop_example_locals_lambda, ptr @__pyx_k_loop_example_locals_lambda, i64 31, ptr null, i8 0, i8 1, i8 1 }, %struct.__Pyx_StringTabEntry { ptr @__pyx_n_s_lower, ptr @__pyx_k_lower, i64 6, ptr null, i8 0, i8 1, i8 1 }, %struct.__Pyx_StringTabEntry { ptr @__pyx_n_s_main, ptr @__pyx_k_main, i64 9, ptr null, i8 0, i8 1, i8 1 }, %struct.__Pyx_StringTabEntry { ptr @__pyx_n_s_map, ptr @__pyx_k_map, i64 4, ptr null, i8 0, i8 1, i8 1 }, %struct.__Pyx_StringTabEntry { ptr @__pyx_n_s_method, ptr @__pyx_k_method, i64 7, ptr null, i8 0, i8 1, i8 1 }, %struct.__Pyx_StringTabEntry { ptr @__pyx_n_s_mitr, ptr @__pyx_k_mitr, i64 5, ptr null, i8 0, i8 1, i8 1 }, %struct.__Pyx_StringTabEntry { ptr @__pyx_n_s_name, ptr @__pyx_k_name, i64 9, ptr null, i8 0, i8 1, i8 1 }, %struct.__Pyx_StringTabEntry { ptr @__pyx_n_u_ridder, ptr @__pyx_k_ridder, i64 7, ptr null, i8 1, i8 0, i8 1 }, %struct.__Pyx_StringTabEntry { ptr @__pyx_n_s_root, ptr @__pyx_k_root, i64 5, ptr null, i8 0, i8 1, i8 1 }, %struct.__Pyx_StringTabEntry { ptr @__pyx_n_s_rtol, ptr @__pyx_k_rtol, i64 5, ptr null, i8 0, i8 1, i8 1 }, %struct.__Pyx_StringTabEntry { ptr @__pyx_n_s_scipy_optimize_cython_optimize, ptr @__pyx_k_scipy_optimize_cython_optimize, i64 38, ptr null, i8 0, i8 1, i8 1 }, %struct.__Pyx_StringTabEntry { ptr @__pyx_kp_s_scipy_optimize_cython_optimize_2, ptr @__pyx_k_scipy_optimize_cython_optimize_2, i64 42, ptr null, i8 0, i8 1, i8 0 }, %struct.__Pyx_StringTabEntry { ptr @__pyx_kp_s_stringsource, ptr @__pyx_k_stringsource, i64 13, ptr null, i8 0, i8 1, i8 0 }, %struct.__Pyx_StringTabEntry { ptr @__pyx_n_s_test, ptr @__pyx_k_test, i64 9, ptr null, i8 0, i8 1, i8 1 }, %struct.__Pyx_StringTabEntry { ptr @__pyx_n_s_wrap, ptr @__pyx_k_wrap, i64 5, ptr null, i8 0, i8 1, i8 1 }, %struct.__Pyx_StringTabEntry { ptr @__pyx_n_s_xa, ptr @__pyx_k_xa, i64 3, ptr null, i8 0, i8 1, i8 1 }, %struct.__Pyx_StringTabEntry { ptr @__pyx_n_s_xb, ptr @__pyx_k_xb, i64 3, ptr null, i8 0, i8 1, i8 1 }, %struct.__Pyx_StringTabEntry { ptr @__pyx_n_s_xtol, ptr @__pyx_k_xtol, i64 5, ptr null, i8 0, i8 1, i8 1 }, %struct.__Pyx_StringTabEntry zeroinitializer], align 16
@__pyx_filename = internal global ptr null, align 8
@__pyx_lineno = internal global i32 0, align 4
@__pyx_clineno = internal global i32 0, align 4
@__pyx_k_EXAMPLES_MAP = internal constant [13 x i8] c"EXAMPLES_MAP\00", align 1
@__pyx_n_s_IndexError = internal global ptr null, align 8
@__pyx_k_IndexError = internal constant [11 x i8] c"IndexError\00", align 1
@__pyx_n_s_OverflowError = internal global ptr null, align 8
@__pyx_k_OverflowError = internal constant [14 x i8] c"OverflowError\00", align 1
@__pyx_n_s_Pyx_CFunc_double____tuple____f = internal global ptr null, align 8
@__pyx_k_Pyx_CFunc_double____tuple____f = internal constant [93 x i8] c"__Pyx_CFunc_double____tuple____float____float____float____float____int___to_py.<locals>.wrap\00", align 16
@__pyx_n_s_TypeError = internal global ptr null, align 8
@__pyx_k_TypeError = internal constant [10 x i8] c"TypeError\00", align 1
@__pyx_n_s_a0 = internal global ptr null, align 8
@__pyx_k_a0 = internal constant [3 x i8] c"a0\00", align 1
@__pyx_n_s_a0_2 = internal global ptr null, align 8
@__pyx_k_a0_2 = internal constant [4 x i8] c"a0_\00", align 1
@__pyx_n_s_args = internal global ptr null, align 8
@__pyx_k_args = internal constant [5 x i8] c"args\00", align 1
@__pyx_k_bisect = internal constant [7 x i8] c"bisect\00", align 1
@__pyx_k_brenth = internal constant [7 x i8] c"brenth\00", align 1
@__pyx_k_brentq = internal constant [7 x i8] c"brentq\00", align 1
@__pyx_n_s_cfunc_to_py = internal global ptr null, align 8
@__pyx_k_cfunc_to_py = internal constant [12 x i8] c"cfunc.to_py\00", align 1
@__pyx_n_s_cline_in_traceback = internal global ptr null, align 8
@__pyx_k_cline_in_traceback = internal constant [19 x i8] c"cline_in_traceback\00", align 16
@__pyx_n_s_enumerate = internal global ptr null, align 8
@__pyx_k_enumerate = internal constant [10 x i8] c"enumerate\00", align 1
@__pyx_n_s_error_num = internal global ptr null, align 8
@__pyx_k_error_num = internal constant [10 x i8] c"error_num\00", align 1
@__pyx_k_full_output_example = internal constant [20 x i8] c"full_output_example\00", align 16
@__pyx_n_s_funcalls = internal global ptr null, align 8
@__pyx_k_funcalls = internal constant [9 x i8] c"funcalls\00", align 1
@__pyx_n_s_iterations = internal global ptr null, align 8
@__pyx_k_iterations = internal constant [11 x i8] c"iterations\00", align 1
@__pyx_k_loop_example = internal constant [13 x i8] c"loop_example\00", align 1
@__pyx_n_s_loop_example_locals_lambda = internal global ptr null, align 8
@__pyx_k_loop_example_locals_lambda = internal constant [31 x i8] c"loop_example.<locals>.<lambda>\00", align 16
@__pyx_n_s_lower = internal global ptr null, align 8
@__pyx_k_lower = internal constant [6 x i8] c"lower\00", align 1
@__pyx_k_main = internal constant [9 x i8] c"__main__\00", align 1
@__pyx_n_s_map = internal global ptr null, align 8
@__pyx_k_map = internal constant [4 x i8] c"map\00", align 1
@__pyx_n_s_method = internal global ptr null, align 8
@__pyx_k_method = internal constant [7 x i8] c"method\00", align 1
@__pyx_n_s_mitr = internal global ptr null, align 8
@__pyx_k_mitr = internal constant [5 x i8] c"mitr\00", align 1
@__pyx_k_name = internal constant [9 x i8] c"__name__\00", align 1
@__pyx_k_ridder = internal constant [7 x i8] c"ridder\00", align 1
@__pyx_n_s_root = internal global ptr null, align 8
@__pyx_k_root = internal constant [5 x i8] c"root\00", align 1
@__pyx_n_s_rtol = internal global ptr null, align 8
@__pyx_k_rtol = internal constant [5 x i8] c"rtol\00", align 1
@__pyx_k_scipy_optimize_cython_optimize = internal constant [38 x i8] c"scipy.optimize.cython_optimize._zeros\00", align 16
@__pyx_kp_s_scipy_optimize_cython_optimize_2 = internal global ptr null, align 8
@__pyx_k_scipy_optimize_cython_optimize_2 = internal constant [42 x i8] c"scipy/optimize/cython_optimize/_zeros.pyx\00", align 16
@__pyx_kp_s_stringsource = internal global ptr null, align 8
@__pyx_k_stringsource = internal constant [13 x i8] c"stringsource\00", align 1
@__pyx_k_test = internal constant [9 x i8] c"__test__\00", align 1
@__pyx_n_s_wrap = internal global ptr null, align 8
@__pyx_k_wrap = internal constant [5 x i8] c"wrap\00", align 1
@__pyx_n_s_xa = internal global ptr null, align 8
@__pyx_k_xa = internal constant [3 x i8] c"xa\00", align 1
@__pyx_n_s_xb = internal global ptr null, align 8
@__pyx_k_xb = internal constant [3 x i8] c"xb\00", align 1
@__pyx_n_s_xtol = internal global ptr null, align 8
@__pyx_k_xtol = internal constant [5 x i8] c"xtol\00", align 1
@__pyx_builtin_map = internal global ptr null, align 8
@__pyx_builtin_TypeError = internal global ptr null, align 8
@__pyx_builtin_OverflowError = internal global ptr null, align 8
@__pyx_builtin_enumerate = internal global ptr null, align 8
@__pyx_builtin_IndexError = internal global ptr null, align 8
@PyExc_NameError = external global ptr, align 8
@.str.59 = private unnamed_addr constant [25 x i8] c"name '%U' is not defined\00", align 1
@__pyx_tuple_ = internal global ptr null, align 8
@__pyx_codeobj__2 = internal global ptr null, align 8
@__pyx_tuple__3 = internal global ptr null, align 8
@__pyx_codeobj__4 = internal global ptr null, align 8
@__pyx_tuple__5 = internal global ptr null, align 8
@__pyx_codeobj__6 = internal global ptr null, align 8
@.str.60 = private unnamed_addr constant [12 x i8] c"co_argcount\00", align 1
@.str.61 = private unnamed_addr constant [19 x i8] c"co_posonlyargcount\00", align 1
@.str.62 = private unnamed_addr constant [18 x i8] c"co_kwonlyargcount\00", align 1
@.str.63 = private unnamed_addr constant [11 x i8] c"co_nlocals\00", align 1
@.str.64 = private unnamed_addr constant [13 x i8] c"co_stacksize\00", align 1
@.str.65 = private unnamed_addr constant [9 x i8] c"co_flags\00", align 1
@.str.66 = private unnamed_addr constant [8 x i8] c"co_code\00", align 1
@.str.67 = private unnamed_addr constant [10 x i8] c"co_consts\00", align 1
@.str.68 = private unnamed_addr constant [9 x i8] c"co_names\00", align 1
@.str.69 = private unnamed_addr constant [12 x i8] c"co_varnames\00", align 1
@.str.70 = private unnamed_addr constant [12 x i8] c"co_freevars\00", align 1
@.str.71 = private unnamed_addr constant [12 x i8] c"co_cellvars\00", align 1
@.str.72 = private unnamed_addr constant [13 x i8] c"co_linetable\00", align 1
@.str.73 = private unnamed_addr constant [8 x i8] c"replace\00", align 1
@.str.74 = private unnamed_addr constant [7 x i8] c"bisect\00", align 1
@.str.75 = private unnamed_addr constant [191 x i8] c"double (__pyx_t_5scipy_8optimize_15cython_optimize_6_zeros_callback_type, double, double, void *, double, double, int, __pyx_t_5scipy_8optimize_15cython_optimize_6_zeros_zeros_full_output *)\00", align 1
@.str.76 = private unnamed_addr constant [7 x i8] c"ridder\00", align 1
@.str.77 = private unnamed_addr constant [7 x i8] c"brenth\00", align 1
@.str.78 = private unnamed_addr constant [7 x i8] c"brentq\00", align 1
@.str.79 = private unnamed_addr constant [13 x i8] c"__pyx_capi__\00", align 1
@__pyx_type_5scipy_8optimize_15cython_optimize_6_zeros___pyx_scope_struct__loop_example = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, ptr null }, i64 0 }, ptr @.str.80, i64 64, i64 0, ptr @__pyx_tp_dealloc_5scipy_8optimize_15cython_optimize_6_zeros___pyx_scope_struct__loop_example, i64 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i64 278528, ptr null, ptr @__pyx_tp_traverse_5scipy_8optimize_15cython_optimize_6_zeros___pyx_scope_struct__loop_example, ptr @__pyx_tp_clear_5scipy_8optimize_15cython_optimize_6_zeros___pyx_scope_struct__loop_example, ptr null, i64 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i64 0, ptr null, ptr null, ptr @__pyx_tp_new_5scipy_8optimize_15cython_optimize_6_zeros___pyx_scope_struct__loop_example, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null }, align 8
@__pyx_ptype_5scipy_8optimize_15cython_optimize_6_zeros___pyx_scope_struct__loop_example = internal global ptr null, align 8
@__pyx_scope_struct____Pyx_CFunc_double____tuple____float____float____float____float____int___to_py = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, ptr null }, i64 0 }, ptr @.str.81, i64 24, i64 0, ptr @__pyx_tp_dealloc___pyx_scope_struct____Pyx_CFunc_double____tuple____float____float____float____float____int___to_py, i64 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i64 262144, ptr null, ptr null, ptr null, ptr null, i64 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i64 0, ptr null, ptr null, ptr @__pyx_tp_new___pyx_scope_struct____Pyx_CFunc_double____tuple____float____float____float____float____int___to_py, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null }, align 8
@__pyx_ptype___pyx_scope_struct____Pyx_CFunc_double____tuple____float____float____float____float____int___to_py = internal global ptr null, align 8
@.str.80 = private unnamed_addr constant [71 x i8] c"scipy.optimize.cython_optimize._zeros.__pyx_scope_struct__loop_example\00", align 1
@__pyx_freecount_5scipy_8optimize_15cython_optimize_6_zeros___pyx_scope_struct__loop_example = internal global i32 0, align 4
@__pyx_freelist_5scipy_8optimize_15cython_optimize_6_zeros___pyx_scope_struct__loop_example = internal global [8 x ptr] zeroinitializer, align 16
@.str.81 = private unnamed_addr constant [137 x i8] c"scipy.optimize.cython_optimize._zeros.__pyx_scope_struct____Pyx_CFunc_double____tuple____float____float____float____float____int___to_py\00", align 1
@__pyx_freecount___pyx_scope_struct____Pyx_CFunc_double____tuple____float____float____float____float____int___to_py = internal global i32 0, align 4
@__pyx_freelist___pyx_scope_struct____Pyx_CFunc_double____tuple____float____float____float____float____int___to_py = internal global [8 x ptr] zeroinitializer, align 16
@__pyx_mdef_11cfunc_dot_to_py_78__Pyx_CFunc_double____tuple____float____float____float____float____int___to_py_1wrap = internal global %struct.PyMethodDef { ptr @.str.83, ptr @__pyx_pw_11cfunc_dot_to_py_78__Pyx_CFunc_double____tuple____float____float____float____float____int___to_py_1wrap, i32 3, ptr @__pyx_doc_11cfunc_dot_to_py_78__Pyx_CFunc_double____tuple____float____float____float____float____int___to_py_wrap }, align 8
@.str.82 = private unnamed_addr constant [91 x i8] c"cfunc.to_py.__Pyx_CFunc_double____tuple____float____float____float____float____int___to_py\00", align 1
@.str.83 = private unnamed_addr constant [5 x i8] c"wrap\00", align 1
@__pyx_doc_11cfunc_dot_to_py_78__Pyx_CFunc_double____tuple____float____float____float____float____int___to_py_wrap = internal global [96 x i8] c"wrap(args: tuple, xa: 'float', xb: 'float', xtol: 'float', rtol: 'float', mitr: 'int') -> float\00", align 16
@__pyx_pw_11cfunc_dot_to_py_78__Pyx_CFunc_double____tuple____float____float____float____float____int___to_py_1wrap.__pyx_pyargnames = internal global [7 x ptr] [ptr @__pyx_n_s_args, ptr @__pyx_n_s_xa, ptr @__pyx_n_s_xb, ptr @__pyx_n_s_xtol, ptr @__pyx_n_s_rtol, ptr @__pyx_n_s_mitr, ptr null], align 16
@PyFloat_Type = external global %struct._typeobject, align 8
@.str.84 = private unnamed_addr constant [96 x i8] c"cfunc.to_py.__Pyx_CFunc_double____tuple____float____float____float____float____int___to_py.wrap\00", align 1
@PyTuple_Type = external global %struct._typeobject, align 8
@.str.85 = private unnamed_addr constant [5 x i8] c"args\00", align 1
@.str.86 = private unnamed_addr constant [9 x i8] c"at least\00", align 1
@.str.87 = private unnamed_addr constant [8 x i8] c"at most\00", align 1
@.str.88 = private unnamed_addr constant [8 x i8] c"exactly\00", align 1
@.str.89 = private unnamed_addr constant [60 x i8] c"%.200s() takes %.8s %zd positional argument%.1s (%zd given)\00", align 1
@.str.90 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.91 = private unnamed_addr constant [34 x i8] c"%.200s() keywords must be strings\00", align 1
@.str.92 = private unnamed_addr constant [45 x i8] c"%s() got an unexpected keyword argument '%U'\00", align 1
@.str.93 = private unnamed_addr constant [51 x i8] c"%s() got multiple values for keyword argument '%U'\00", align 1
@PyExc_OverflowError = external global ptr, align 8
@.str.94 = private unnamed_addr constant [34 x i8] c"value too large to convert to int\00", align 1
@.str.95 = private unnamed_addr constant [36 x i8] c"can't convert negative value to int\00", align 1
@.str.96 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@PyLong_Type = external global %struct._typeobject, align 8
@.str.97 = private unnamed_addr constant [23 x i8] c"an integer is required\00", align 1
@PyExc_DeprecationWarning = external global ptr, align 8
@.str.98 = private unnamed_addr constant [168 x i8] c"__int__ returned non-int (type %.200s).  The ability to return an instance of a strict subclass of int is deprecated, and may be removed in a future version of Python.\00", align 1
@.str.99 = private unnamed_addr constant [41 x i8] c"__%.4s__ returned non-%.4s (type %.200s)\00", align 1
@.str.100 = private unnamed_addr constant [20 x i8] c"Missing type object\00", align 1
@.str.101 = private unnamed_addr constant [67 x i8] c"Argument '%.200s' has incorrect type (expected %.200s, got %.200s)\00", align 1
@PyBaseObject_Type = external global %struct._typeobject, align 8
@.str.102 = private unnamed_addr constant [53 x i8] c"scipy.optimize.cython_optimize._zeros.bisect_example\00", align 1
@PyList_Type = external global %struct._typeobject, align 8
@PyExc_StopIteration = external global ptr, align 8
@.str.103 = private unnamed_addr constant [60 x i8] c"too many values found during array assignment, expected %zd\00", align 1
@.str.104 = private unnamed_addr constant [71 x i8] c"not enough values found during array assignment, expected %zd, got %zd\00", align 1
@.str.105 = private unnamed_addr constant [43 x i8] c"carray.from_py.__Pyx_carray_from_py_double\00", align 1
@.str.106 = private unnamed_addr constant [53 x i8] c"scipy.optimize.cython_optimize._zeros.ridder_example\00", align 1
@.str.107 = private unnamed_addr constant [53 x i8] c"scipy.optimize.cython_optimize._zeros.brenth_example\00", align 1
@.str.108 = private unnamed_addr constant [53 x i8] c"scipy.optimize.cython_optimize._zeros.brentq_example\00", align 1
@.str.109 = private unnamed_addr constant [13 x i8] c"loop_example\00", align 1
@__pyx_doc_5scipy_8optimize_15cython_optimize_6_zeros_loop_example = internal global [881 x i8] c"\0A    Example of Cython optimize zeros functions with map.\0A\0A    Parameters\0A    ----------\0A    method : str\0A        name of the Cython optimize zeros function to call\0A    a0 : sequence of float\0A        first extra argument which is mapped to output\0A    args : sequence of float\0A        the remaining extra arguments which are constant\0A    xa : float\0A        first bound of zero function\0A    xb : float\0A        second bound of zero function\0A    xtol : float\0A        absolute tolerance of zero function\0A    rtol : float\0A        relative tolerance of zero function\0A    mitr : int\0A        max. iteration of zero function\0A\0A    Returns\0A    -------\0A    roots : sequence of float\0A        the root for each of the values of `a0`\0A\0A    This example finds the roots of a 3rd order polynomial given a sequence of\0A    constant terms as `a0` and fixed 1st, 2nd, and 3rd order terms in `args`.\0A    \00", align 16
@__pyx_pw_5scipy_8optimize_15cython_optimize_6_zeros_1loop_example.__pyx_pyargnames = internal global [9 x ptr] [ptr @__pyx_n_s_method, ptr @__pyx_n_s_a0, ptr @__pyx_n_s_args, ptr @__pyx_n_s_xa, ptr @__pyx_n_s_xb, ptr @__pyx_n_s_xtol, ptr @__pyx_n_s_rtol, ptr @__pyx_n_s_mitr, ptr null], align 16
@.str.110 = private unnamed_addr constant [51 x i8] c"scipy.optimize.cython_optimize._zeros.loop_example\00", align 1
@__pyx_pf_5scipy_8optimize_15cython_optimize_6_zeros_loop_example.__pyx_dict_version = internal global i64 0, align 8
@__pyx_pf_5scipy_8optimize_15cython_optimize_6_zeros_loop_example.__pyx_dict_cached_value = internal global ptr null, align 8
@PyMethod_Type = external global %struct._typeobject, align 8
@__pyx_mdef_5scipy_8optimize_15cython_optimize_6_zeros_12loop_example_lambda = internal global %struct.PyMethodDef { ptr @.str.115, ptr @__pyx_pw_5scipy_8optimize_15cython_optimize_6_zeros_12loop_example_lambda, i32 8, ptr null }, align 8
@PyCFunction_Type = external global %struct._typeobject, align 8
@.str.111 = private unnamed_addr constant [31 x i8] c" while calling a Python object\00", align 1
@.str.112 = private unnamed_addr constant [43 x i8] c"NULL result without error in PyObject_Call\00", align 1
@.str.113 = private unnamed_addr constant [37 x i8] c"'%.200s' object is not subscriptable\00", align 1
@PyExc_IndexError = external global ptr, align 8
@.str.114 = private unnamed_addr constant [48 x i8] c"cannot fit '%.200s' into an index-sized integer\00", align 1
@.str.115 = private unnamed_addr constant [7 x i8] c"lambda\00", align 1
@.str.116 = private unnamed_addr constant [7 x i8] c"method\00", align 1
@.str.117 = private unnamed_addr constant [3 x i8] c"xa\00", align 1
@.str.118 = private unnamed_addr constant [3 x i8] c"xb\00", align 1
@.str.119 = private unnamed_addr constant [5 x i8] c"xtol\00", align 1
@.str.120 = private unnamed_addr constant [5 x i8] c"rtol\00", align 1
@.str.121 = private unnamed_addr constant [5 x i8] c"mitr\00", align 1
@.str.122 = private unnamed_addr constant [58 x i8] c"scipy.optimize.cython_optimize._zeros.loop_example.lambda\00", align 1
@.str.123 = private unnamed_addr constant [67 x i8] c"free variable '%s' referenced before assignment in enclosing scope\00", align 1
@.str.124 = private unnamed_addr constant [20 x i8] c"full_output_example\00", align 1
@__pyx_doc_5scipy_8optimize_15cython_optimize_6_zeros_2full_output_example = internal global [717 x i8] c"\0A    Example of Cython optimize zeros functions with full output.\0A\0A    Parameters\0A    ----------\0A    args : sequence of float\0A        extra arguments of zero function\0A    xa : float\0A        first boundary of zero function\0A    xb : float\0A        second boundary of zero function\0A    xtol : float\0A        absolute tolerance of zero function\0A    rtol : float\0A        relative tolerance of zero function\0A    mitr : int\0A        max. iteration of zero function\0A\0A    Returns\0A    -------\0A    full_output : dict\0A        the root, number of function calls, number of iterations, and the zero\0A        function error number \0A\0A    This example finds the roots of a 3rd order polynomial with coefficients\0A    given as `args`.\0A    \00", align 16
@__pyx_pw_5scipy_8optimize_15cython_optimize_6_zeros_3full_output_example.__pyx_pyargnames = internal global [7 x ptr] [ptr @__pyx_n_s_args, ptr @__pyx_n_s_xa, ptr @__pyx_n_s_xb, ptr @__pyx_n_s_xtol, ptr @__pyx_n_s_rtol, ptr @__pyx_n_s_mitr, ptr null], align 16
@.str.125 = private unnamed_addr constant [58 x i8] c"scipy.optimize.cython_optimize._zeros.full_output_example\00", align 1
@.str.126 = private unnamed_addr constant [27 x i8] c"Expected %.16s, got %.200s\00", align 1
@.str.127 = private unnamed_addr constant [6 x i8] c"tuple\00", align 1
@.str.128 = private unnamed_addr constant [65 x i8] c"scipy.optimize.cython_optimize._zeros.brentq_full_output_example\00", align 1
@__Pyx_CLineForTraceback.__pyx_dict_version = internal global i64 0, align 8
@__Pyx_CLineForTraceback.__pyx_dict_cached_value = internal global ptr null, align 8
@_Py_FalseStruct = external global %struct._longobject, align 8
@_Py_TrueStruct = external global %struct._longobject, align 8
@__pyx_code_cache = internal global %struct.__Pyx_CodeObjectCache zeroinitializer, align 8
@.str.129 = private unnamed_addr constant [11 x i8] c"%s (%s:%d)\00", align 1
@__pyx_cfilenm = internal global ptr @.str.130, align 8
@.str.130 = private unnamed_addr constant [81 x i8] c"scipy/optimize/cython_optimize/_zeros.cpython-311-x86_64-linux-gnu.so.p/_zeros.c\00", align 1

; Function Attrs: nounwind uwtable
define hidden double @bisect(ptr noundef %f, double noundef %xa, double noundef %xb, double noundef %xtol, double noundef %rtol, i32 noundef %iter, ptr noundef %func_data_param, ptr noundef %solver_stats) #0 {
entry:
  %retval = alloca double, align 8
  %f.addr = alloca ptr, align 8
  %xa.addr = alloca double, align 8
  %xb.addr = alloca double, align 8
  %xtol.addr = alloca double, align 8
  %rtol.addr = alloca double, align 8
  %iter.addr = alloca i32, align 4
  %func_data_param.addr = alloca ptr, align 8
  %solver_stats.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %dm = alloca double, align 8
  %xm = alloca double, align 8
  %fm = alloca double, align 8
  %fa = alloca double, align 8
  %fb = alloca double, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %f, ptr %f.addr, align 8, !tbaa !4
  store double %xa, ptr %xa.addr, align 8, !tbaa !8
  store double %xb, ptr %xb.addr, align 8, !tbaa !8
  store double %xtol, ptr %xtol.addr, align 8, !tbaa !8
  store double %rtol, ptr %rtol.addr, align 8, !tbaa !8
  store i32 %iter, ptr %iter.addr, align 4, !tbaa !10
  store ptr %func_data_param, ptr %func_data_param.addr, align 8, !tbaa !4
  store ptr %solver_stats, ptr %solver_stats.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %dm) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %xm) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %fm) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %fa) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %fb) #9
  %0 = load ptr, ptr %solver_stats.addr, align 8, !tbaa !4
  %error_num = getelementptr inbounds %struct.scipy_zeros_info, ptr %0, i32 0, i32 2
  store i32 1, ptr %error_num, align 4, !tbaa !12
  %1 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %2 = load double, ptr %xa.addr, align 8, !tbaa !8
  %3 = load ptr, ptr %func_data_param.addr, align 8, !tbaa !4
  %call = call double %1(double noundef %2, ptr noundef %3)
  store double %call, ptr %fa, align 8, !tbaa !8
  %4 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %5 = load double, ptr %xb.addr, align 8, !tbaa !8
  %6 = load ptr, ptr %func_data_param.addr, align 8, !tbaa !4
  %call1 = call double %4(double noundef %5, ptr noundef %6)
  store double %call1, ptr %fb, align 8, !tbaa !8
  %7 = load ptr, ptr %solver_stats.addr, align 8, !tbaa !4
  %funcalls = getelementptr inbounds %struct.scipy_zeros_info, ptr %7, i32 0, i32 0
  store i32 2, ptr %funcalls, align 4, !tbaa !14
  %8 = load double, ptr %fa, align 8, !tbaa !8
  %cmp = fcmp oeq double %8, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load ptr, ptr %solver_stats.addr, align 8, !tbaa !4
  %error_num2 = getelementptr inbounds %struct.scipy_zeros_info, ptr %9, i32 0, i32 2
  store i32 0, ptr %error_num2, align 4, !tbaa !12
  %10 = load double, ptr %xa.addr, align 8, !tbaa !8
  store double %10, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = load double, ptr %fb, align 8, !tbaa !8
  %cmp3 = fcmp oeq double %11, 0.000000e+00
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %12 = load ptr, ptr %solver_stats.addr, align 8, !tbaa !4
  %error_num5 = getelementptr inbounds %struct.scipy_zeros_info, ptr %12, i32 0, i32 2
  store i32 0, ptr %error_num5, align 4, !tbaa !12
  %13 = load double, ptr %xb.addr, align 8, !tbaa !8
  store double %13, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %14 = load double, ptr %fa, align 8, !tbaa !8
  %15 = bitcast double %14 to i64
  %16 = icmp slt i64 %15, 0
  %17 = zext i1 %16 to i32
  %18 = load double, ptr %fb, align 8, !tbaa !8
  %19 = bitcast double %18 to i64
  %20 = icmp slt i64 %19, 0
  %21 = zext i1 %20 to i32
  %cmp7 = icmp eq i32 %17, %21
  br i1 %cmp7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end6
  %22 = load ptr, ptr %solver_stats.addr, align 8, !tbaa !4
  %error_num9 = getelementptr inbounds %struct.scipy_zeros_info, ptr %22, i32 0, i32 2
  store i32 -1, ptr %error_num9, align 4, !tbaa !12
  store double 0.000000e+00, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %23 = load double, ptr %xb.addr, align 8, !tbaa !8
  %24 = load double, ptr %xa.addr, align 8, !tbaa !8
  %sub = fsub double %23, %24
  store double %sub, ptr %dm, align 8, !tbaa !8
  %25 = load ptr, ptr %solver_stats.addr, align 8, !tbaa !4
  %iterations = getelementptr inbounds %struct.scipy_zeros_info, ptr %25, i32 0, i32 1
  store i32 0, ptr %iterations, align 4, !tbaa !15
  store i32 0, ptr %i, align 4, !tbaa !10
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end10
  %26 = load i32, ptr %i, align 4, !tbaa !10
  %27 = load i32, ptr %iter.addr, align 4, !tbaa !10
  %cmp11 = icmp slt i32 %26, %27
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load ptr, ptr %solver_stats.addr, align 8, !tbaa !4
  %iterations12 = getelementptr inbounds %struct.scipy_zeros_info, ptr %28, i32 0, i32 1
  %29 = load i32, ptr %iterations12, align 4, !tbaa !15
  %inc = add nsw i32 %29, 1
  store i32 %inc, ptr %iterations12, align 4, !tbaa !15
  %30 = load double, ptr %dm, align 8, !tbaa !8
  %mul = fmul double %30, 5.000000e-01
  store double %mul, ptr %dm, align 8, !tbaa !8
  %31 = load double, ptr %xa.addr, align 8, !tbaa !8
  %32 = load double, ptr %dm, align 8, !tbaa !8
  %add = fadd double %31, %32
  store double %add, ptr %xm, align 8, !tbaa !8
  %33 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %34 = load double, ptr %xm, align 8, !tbaa !8
  %35 = load ptr, ptr %func_data_param.addr, align 8, !tbaa !4
  %call13 = call double %33(double noundef %34, ptr noundef %35)
  store double %call13, ptr %fm, align 8, !tbaa !8
  %36 = load ptr, ptr %solver_stats.addr, align 8, !tbaa !4
  %funcalls14 = getelementptr inbounds %struct.scipy_zeros_info, ptr %36, i32 0, i32 0
  %37 = load i32, ptr %funcalls14, align 4, !tbaa !14
  %inc15 = add nsw i32 %37, 1
  store i32 %inc15, ptr %funcalls14, align 4, !tbaa !14
  %38 = load double, ptr %fm, align 8, !tbaa !8
  %39 = bitcast double %38 to i64
  %40 = icmp slt i64 %39, 0
  %41 = zext i1 %40 to i32
  %42 = load double, ptr %fa, align 8, !tbaa !8
  %43 = bitcast double %42 to i64
  %44 = icmp slt i64 %43, 0
  %45 = zext i1 %44 to i32
  %cmp16 = icmp eq i32 %41, %45
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %for.body
  %46 = load double, ptr %xm, align 8, !tbaa !8
  store double %46, ptr %xa.addr, align 8, !tbaa !8
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %for.body
  %47 = load double, ptr %fm, align 8, !tbaa !8
  %cmp19 = fcmp oeq double %47, 0.000000e+00
  br i1 %cmp19, label %if.then22, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end18
  %48 = load double, ptr %dm, align 8, !tbaa !8
  %49 = call double @llvm.fabs.f64(double %48)
  %50 = load double, ptr %xtol.addr, align 8, !tbaa !8
  %51 = load double, ptr %rtol.addr, align 8, !tbaa !8
  %52 = load double, ptr %xm, align 8, !tbaa !8
  %53 = call double @llvm.fabs.f64(double %52)
  %54 = call double @llvm.fmuladd.f64(double %51, double %53, double %50)
  %cmp21 = fcmp olt double %49, %54
  br i1 %cmp21, label %if.then22, label %if.end24

if.then22:                                        ; preds = %lor.lhs.false, %if.end18
  %55 = load ptr, ptr %solver_stats.addr, align 8, !tbaa !4
  %error_num23 = getelementptr inbounds %struct.scipy_zeros_info, ptr %55, i32 0, i32 2
  store i32 0, ptr %error_num23, align 4, !tbaa !12
  %56 = load double, ptr %xm, align 8, !tbaa !8
  store double %56, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end24:                                         ; preds = %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end24
  %57 = load i32, ptr %i, align 4, !tbaa !10
  %inc25 = add nsw i32 %57, 1
  store i32 %inc25, ptr %i, align 4, !tbaa !10
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %58 = load ptr, ptr %solver_stats.addr, align 8, !tbaa !4
  %error_num26 = getelementptr inbounds %struct.scipy_zeros_info, ptr %58, i32 0, i32 2
  store i32 -2, ptr %error_num26, align 4, !tbaa !12
  %59 = load double, ptr %xa.addr, align 8, !tbaa !8
  store double %59, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then22, %if.then8, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %fb) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %fa) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %fm) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %xm) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %dm) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9
  %60 = load double, ptr %retval, align 8
  ret double %60
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define hidden double @ridder(ptr noundef %f, double noundef %xa, double noundef %xb, double noundef %xtol, double noundef %rtol, i32 noundef %iter, ptr noundef %func_data_param, ptr noundef %solver_stats) #0 {
entry:
  %retval = alloca double, align 8
  %f.addr = alloca ptr, align 8
  %xa.addr = alloca double, align 8
  %xb.addr = alloca double, align 8
  %xtol.addr = alloca double, align 8
  %rtol.addr = alloca double, align 8
  %iter.addr = alloca i32, align 4
  %func_data_param.addr = alloca ptr, align 8
  %solver_stats.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %dm = alloca double, align 8
  %dn = alloca double, align 8
  %xm = alloca double, align 8
  %xn = alloca double, align 8
  %fn = alloca double, align 8
  %fm = alloca double, align 8
  %fa = alloca double, align 8
  %fb = alloca double, align 8
  %tol = alloca double, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %f, ptr %f.addr, align 8, !tbaa !4
  store double %xa, ptr %xa.addr, align 8, !tbaa !8
  store double %xb, ptr %xb.addr, align 8, !tbaa !8
  store double %xtol, ptr %xtol.addr, align 8, !tbaa !8
  store double %rtol, ptr %rtol.addr, align 8, !tbaa !8
  store i32 %iter, ptr %iter.addr, align 4, !tbaa !10
  store ptr %func_data_param, ptr %func_data_param.addr, align 8, !tbaa !4
  store ptr %solver_stats, ptr %solver_stats.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %dm) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %dn) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %xm) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %xn) #9
  store double 0.000000e+00, ptr %xn, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %fn) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %fm) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %fa) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %fb) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %tol) #9
  %0 = load ptr, ptr %solver_stats.addr, align 8, !tbaa !4
  %error_num = getelementptr inbounds %struct.scipy_zeros_info, ptr %0, i32 0, i32 2
  store i32 1, ptr %error_num, align 4, !tbaa !12
  %1 = load double, ptr %xtol.addr, align 8, !tbaa !8
  %2 = load double, ptr %rtol.addr, align 8, !tbaa !8
  %3 = load double, ptr %xa.addr, align 8, !tbaa !8
  %4 = call double @llvm.fabs.f64(double %3)
  %5 = load double, ptr %xb.addr, align 8, !tbaa !8
  %6 = call double @llvm.fabs.f64(double %5)
  %cmp = fcmp olt double %4, %6
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %7 = load double, ptr %xa.addr, align 8, !tbaa !8
  %8 = call double @llvm.fabs.f64(double %7)
  br label %cond.end

cond.false:                                       ; preds = %entry
  %9 = load double, ptr %xb.addr, align 8, !tbaa !8
  %10 = call double @llvm.fabs.f64(double %9)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %8, %cond.true ], [ %10, %cond.false ]
  %11 = call double @llvm.fmuladd.f64(double %2, double %cond, double %1)
  store double %11, ptr %tol, align 8, !tbaa !8
  %12 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %13 = load double, ptr %xa.addr, align 8, !tbaa !8
  %14 = load ptr, ptr %func_data_param.addr, align 8, !tbaa !4
  %call = call double %12(double noundef %13, ptr noundef %14)
  store double %call, ptr %fa, align 8, !tbaa !8
  %15 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %16 = load double, ptr %xb.addr, align 8, !tbaa !8
  %17 = load ptr, ptr %func_data_param.addr, align 8, !tbaa !4
  %call1 = call double %15(double noundef %16, ptr noundef %17)
  store double %call1, ptr %fb, align 8, !tbaa !8
  %18 = load ptr, ptr %solver_stats.addr, align 8, !tbaa !4
  %funcalls = getelementptr inbounds %struct.scipy_zeros_info, ptr %18, i32 0, i32 0
  store i32 2, ptr %funcalls, align 4, !tbaa !14
  %19 = load double, ptr %fa, align 8, !tbaa !8
  %cmp2 = fcmp oeq double %19, 0.000000e+00
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %20 = load ptr, ptr %solver_stats.addr, align 8, !tbaa !4
  %error_num3 = getelementptr inbounds %struct.scipy_zeros_info, ptr %20, i32 0, i32 2
  store i32 0, ptr %error_num3, align 4, !tbaa !12
  %21 = load double, ptr %xa.addr, align 8, !tbaa !8
  store double %21, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %22 = load double, ptr %fb, align 8, !tbaa !8
  %cmp4 = fcmp oeq double %22, 0.000000e+00
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  %23 = load ptr, ptr %solver_stats.addr, align 8, !tbaa !4
  %error_num6 = getelementptr inbounds %struct.scipy_zeros_info, ptr %23, i32 0, i32 2
  store i32 0, ptr %error_num6, align 4, !tbaa !12
  %24 = load double, ptr %xb.addr, align 8, !tbaa !8
  store double %24, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %25 = load double, ptr %fa, align 8, !tbaa !8
  %26 = bitcast double %25 to i64
  %27 = icmp slt i64 %26, 0
  %28 = zext i1 %27 to i32
  %29 = load double, ptr %fb, align 8, !tbaa !8
  %30 = bitcast double %29 to i64
  %31 = icmp slt i64 %30, 0
  %32 = zext i1 %31 to i32
  %cmp8 = icmp eq i32 %28, %32
  br i1 %cmp8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end7
  %33 = load ptr, ptr %solver_stats.addr, align 8, !tbaa !4
  %error_num10 = getelementptr inbounds %struct.scipy_zeros_info, ptr %33, i32 0, i32 2
  store i32 -1, ptr %error_num10, align 4, !tbaa !12
  store double 0.000000e+00, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %34 = load ptr, ptr %solver_stats.addr, align 8, !tbaa !4
  %iterations = getelementptr inbounds %struct.scipy_zeros_info, ptr %34, i32 0, i32 1
  store i32 0, ptr %iterations, align 4, !tbaa !15
  store i32 0, ptr %i, align 4, !tbaa !10
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end11
  %35 = load i32, ptr %i, align 4, !tbaa !10
  %36 = load i32, ptr %iter.addr, align 4, !tbaa !10
  %cmp12 = icmp slt i32 %35, %36
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %37 = load ptr, ptr %solver_stats.addr, align 8, !tbaa !4
  %iterations13 = getelementptr inbounds %struct.scipy_zeros_info, ptr %37, i32 0, i32 1
  %38 = load i32, ptr %iterations13, align 4, !tbaa !15
  %inc = add nsw i32 %38, 1
  store i32 %inc, ptr %iterations13, align 4, !tbaa !15
  %39 = load double, ptr %xb.addr, align 8, !tbaa !8
  %40 = load double, ptr %xa.addr, align 8, !tbaa !8
  %sub = fsub double %39, %40
  %mul = fmul double 5.000000e-01, %sub
  store double %mul, ptr %dm, align 8, !tbaa !8
  %41 = load double, ptr %xa.addr, align 8, !tbaa !8
  %42 = load double, ptr %dm, align 8, !tbaa !8
  %add = fadd double %41, %42
  store double %add, ptr %xm, align 8, !tbaa !8
  %43 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %44 = load double, ptr %xm, align 8, !tbaa !8
  %45 = load ptr, ptr %func_data_param.addr, align 8, !tbaa !4
  %call14 = call double %43(double noundef %44, ptr noundef %45)
  store double %call14, ptr %fm, align 8, !tbaa !8
  %46 = load double, ptr %fb, align 8, !tbaa !8
  %47 = load double, ptr %fa, align 8, !tbaa !8
  %sub15 = fsub double %46, %47
  %cmp16 = fcmp ogt double %sub15, 0.000000e+00
  %48 = zext i1 %cmp16 to i64
  %cond17 = select i1 %cmp16, double 1.000000e+00, double -1.000000e+00
  %49 = load double, ptr %dm, align 8, !tbaa !8
  %mul18 = fmul double %cond17, %49
  %50 = load double, ptr %fm, align 8, !tbaa !8
  %mul19 = fmul double %mul18, %50
  %51 = load double, ptr %fm, align 8, !tbaa !8
  %52 = load double, ptr %fm, align 8, !tbaa !8
  %53 = load double, ptr %fa, align 8, !tbaa !8
  %54 = load double, ptr %fb, align 8, !tbaa !8
  %mul21 = fmul double %53, %54
  %neg = fneg double %mul21
  %55 = call double @llvm.fmuladd.f64(double %51, double %52, double %neg)
  %call22 = call double @sqrt(double noundef %55) #9
  %div = fdiv double %mul19, %call22
  store double %div, ptr %dn, align 8, !tbaa !8
  %56 = load double, ptr %xm, align 8, !tbaa !8
  %57 = load double, ptr %dn, align 8, !tbaa !8
  %cmp23 = fcmp ogt double %57, 0.000000e+00
  %58 = zext i1 %cmp23 to i64
  %cond24 = select i1 %cmp23, double 1.000000e+00, double -1.000000e+00
  %59 = load double, ptr %dn, align 8, !tbaa !8
  %60 = call double @llvm.fabs.f64(double %59)
  %61 = load double, ptr %dm, align 8, !tbaa !8
  %62 = call double @llvm.fabs.f64(double %61)
  %63 = load double, ptr %tol, align 8, !tbaa !8
  %64 = call double @llvm.fmuladd.f64(double -5.000000e-01, double %63, double %62)
  %cmp26 = fcmp olt double %60, %64
  br i1 %cmp26, label %cond.true27, label %cond.false28

cond.true27:                                      ; preds = %for.body
  %65 = load double, ptr %dn, align 8, !tbaa !8
  %66 = call double @llvm.fabs.f64(double %65)
  br label %cond.end30

cond.false28:                                     ; preds = %for.body
  %67 = load double, ptr %dm, align 8, !tbaa !8
  %68 = call double @llvm.fabs.f64(double %67)
  %69 = load double, ptr %tol, align 8, !tbaa !8
  %70 = call double @llvm.fmuladd.f64(double -5.000000e-01, double %69, double %68)
  br label %cond.end30

cond.end30:                                       ; preds = %cond.false28, %cond.true27
  %cond31 = phi double [ %66, %cond.true27 ], [ %70, %cond.false28 ]
  %neg33 = fneg double %cond24
  %71 = call double @llvm.fmuladd.f64(double %neg33, double %cond31, double %56)
  store double %71, ptr %xn, align 8, !tbaa !8
  %72 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %73 = load double, ptr %xn, align 8, !tbaa !8
  %74 = load ptr, ptr %func_data_param.addr, align 8, !tbaa !4
  %call34 = call double %72(double noundef %73, ptr noundef %74)
  store double %call34, ptr %fn, align 8, !tbaa !8
  %75 = load ptr, ptr %solver_stats.addr, align 8, !tbaa !4
  %funcalls35 = getelementptr inbounds %struct.scipy_zeros_info, ptr %75, i32 0, i32 0
  %76 = load i32, ptr %funcalls35, align 4, !tbaa !14
  %add36 = add nsw i32 %76, 2
  store i32 %add36, ptr %funcalls35, align 4, !tbaa !14
  %77 = load double, ptr %fn, align 8, !tbaa !8
  %78 = bitcast double %77 to i64
  %79 = icmp slt i64 %78, 0
  %80 = zext i1 %79 to i32
  %81 = load double, ptr %fm, align 8, !tbaa !8
  %82 = bitcast double %81 to i64
  %83 = icmp slt i64 %82, 0
  %84 = zext i1 %83 to i32
  %cmp37 = icmp ne i32 %80, %84
  br i1 %cmp37, label %if.then38, label %if.else

if.then38:                                        ; preds = %cond.end30
  %85 = load double, ptr %xn, align 8, !tbaa !8
  store double %85, ptr %xa.addr, align 8, !tbaa !8
  %86 = load double, ptr %fn, align 8, !tbaa !8
  store double %86, ptr %fa, align 8, !tbaa !8
  %87 = load double, ptr %xm, align 8, !tbaa !8
  store double %87, ptr %xb.addr, align 8, !tbaa !8
  %88 = load double, ptr %fm, align 8, !tbaa !8
  store double %88, ptr %fb, align 8, !tbaa !8
  br label %if.end43

if.else:                                          ; preds = %cond.end30
  %89 = load double, ptr %fn, align 8, !tbaa !8
  %90 = bitcast double %89 to i64
  %91 = icmp slt i64 %90, 0
  %92 = zext i1 %91 to i32
  %93 = load double, ptr %fa, align 8, !tbaa !8
  %94 = bitcast double %93 to i64
  %95 = icmp slt i64 %94, 0
  %96 = zext i1 %95 to i32
  %cmp39 = icmp ne i32 %92, %96
  br i1 %cmp39, label %if.then40, label %if.else41

if.then40:                                        ; preds = %if.else
  %97 = load double, ptr %xn, align 8, !tbaa !8
  store double %97, ptr %xb.addr, align 8, !tbaa !8
  %98 = load double, ptr %fn, align 8, !tbaa !8
  store double %98, ptr %fb, align 8, !tbaa !8
  br label %if.end42

if.else41:                                        ; preds = %if.else
  %99 = load double, ptr %xn, align 8, !tbaa !8
  store double %99, ptr %xa.addr, align 8, !tbaa !8
  %100 = load double, ptr %fn, align 8, !tbaa !8
  store double %100, ptr %fa, align 8, !tbaa !8
  br label %if.end42

if.end42:                                         ; preds = %if.else41, %if.then40
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %if.then38
  %101 = load double, ptr %xtol.addr, align 8, !tbaa !8
  %102 = load double, ptr %rtol.addr, align 8, !tbaa !8
  %103 = load double, ptr %xn, align 8, !tbaa !8
  %104 = call double @llvm.fmuladd.f64(double %102, double %103, double %101)
  store double %104, ptr %tol, align 8, !tbaa !8
  %105 = load double, ptr %fn, align 8, !tbaa !8
  %cmp45 = fcmp oeq double %105, 0.000000e+00
  br i1 %cmp45, label %if.then48, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end43
  %106 = load double, ptr %xb.addr, align 8, !tbaa !8
  %107 = load double, ptr %xa.addr, align 8, !tbaa !8
  %sub46 = fsub double %106, %107
  %108 = call double @llvm.fabs.f64(double %sub46)
  %109 = load double, ptr %tol, align 8, !tbaa !8
  %cmp47 = fcmp olt double %108, %109
  br i1 %cmp47, label %if.then48, label %if.end50

if.then48:                                        ; preds = %lor.lhs.false, %if.end43
  %110 = load ptr, ptr %solver_stats.addr, align 8, !tbaa !4
  %error_num49 = getelementptr inbounds %struct.scipy_zeros_info, ptr %110, i32 0, i32 2
  store i32 0, ptr %error_num49, align 4, !tbaa !12
  %111 = load double, ptr %xn, align 8, !tbaa !8
  store double %111, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end50:                                         ; preds = %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end50
  %112 = load i32, ptr %i, align 4, !tbaa !10
  %inc51 = add nsw i32 %112, 1
  store i32 %inc51, ptr %i, align 4, !tbaa !10
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %113 = load ptr, ptr %solver_stats.addr, align 8, !tbaa !4
  %error_num52 = getelementptr inbounds %struct.scipy_zeros_info, ptr %113, i32 0, i32 2
  store i32 -2, ptr %error_num52, align 4, !tbaa !12
  %114 = load double, ptr %xn, align 8, !tbaa !8
  store double %114, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then48, %if.then9, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %tol) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %fb) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %fa) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %fm) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %fn) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %xn) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %xm) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %dn) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %dm) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9
  %115 = load double, ptr %retval, align 8
  ret double %115
}

; Function Attrs: nounwind
declare double @sqrt(double noundef) #3

; Function Attrs: nounwind uwtable
define hidden double @brenth(ptr noundef %f, double noundef %xa, double noundef %xb, double noundef %xtol, double noundef %rtol, i32 noundef %iter, ptr noundef %func_data_param, ptr noundef %solver_stats) #0 {
entry:
  %retval = alloca double, align 8
  %f.addr = alloca ptr, align 8
  %xa.addr = alloca double, align 8
  %xb.addr = alloca double, align 8
  %xtol.addr = alloca double, align 8
  %rtol.addr = alloca double, align 8
  %iter.addr = alloca i32, align 4
  %func_data_param.addr = alloca ptr, align 8
  %solver_stats.addr = alloca ptr, align 8
  %xpre = alloca double, align 8
  %xcur = alloca double, align 8
  %xblk = alloca double, align 8
  %fpre = alloca double, align 8
  %fcur = alloca double, align 8
  %fblk = alloca double, align 8
  %spre = alloca double, align 8
  %scur = alloca double, align 8
  %sbis = alloca double, align 8
  %delta = alloca double, align 8
  %stry = alloca double, align 8
  %dpre = alloca double, align 8
  %dblk = alloca double, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %f, ptr %f.addr, align 8, !tbaa !4
  store double %xa, ptr %xa.addr, align 8, !tbaa !8
  store double %xb, ptr %xb.addr, align 8, !tbaa !8
  store double %xtol, ptr %xtol.addr, align 8, !tbaa !8
  store double %rtol, ptr %rtol.addr, align 8, !tbaa !8
  store i32 %iter, ptr %iter.addr, align 4, !tbaa !10
  store ptr %func_data_param, ptr %func_data_param.addr, align 8, !tbaa !4
  store ptr %solver_stats, ptr %solver_stats.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %xpre) #9
  %0 = load double, ptr %xa.addr, align 8, !tbaa !8
  store double %0, ptr %xpre, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %xcur) #9
  %1 = load double, ptr %xb.addr, align 8, !tbaa !8
  store double %1, ptr %xcur, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %xblk) #9
  store double 0.000000e+00, ptr %xblk, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %fpre) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %fcur) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %fblk) #9
  store double 0.000000e+00, ptr %fblk, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %spre) #9
  store double 0.000000e+00, ptr %spre, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %scur) #9
  store double 0.000000e+00, ptr %scur, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %sbis) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %delta) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %stry) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %dpre) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %dblk) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9
  %2 = load ptr, ptr %solver_stats.addr, align 8, !tbaa !4
  %error_num = getelementptr inbounds %struct.scipy_zeros_info, ptr %2, i32 0, i32 2
  store i32 1, ptr %error_num, align 4, !tbaa !12
  %3 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %4 = load double, ptr %xpre, align 8, !tbaa !8
  %5 = load ptr, ptr %func_data_param.addr, align 8, !tbaa !4
  %call = call double %3(double noundef %4, ptr noundef %5)
  store double %call, ptr %fpre, align 8, !tbaa !8
  %6 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %7 = load double, ptr %xcur, align 8, !tbaa !8
  %8 = load ptr, ptr %func_data_param.addr, align 8, !tbaa !4
  %call1 = call double %6(double noundef %7, ptr noundef %8)
  store double %call1, ptr %fcur, align 8, !tbaa !8
  %9 = load ptr, ptr %solver_stats.addr, align 8, !tbaa !4
  %funcalls = getelementptr inbounds %struct.scipy_zeros_info, ptr %9, i32 0, i32 0
  store i32 2, ptr %funcalls, align 4, !tbaa !14
  %10 = load double, ptr %fpre, align 8, !tbaa !8
  %cmp = fcmp oeq double %10, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load ptr, ptr %solver_stats.addr, align 8, !tbaa !4
  %error_num2 = getelementptr inbounds %struct.scipy_zeros_info, ptr %11, i32 0, i32 2
  store i32 0, ptr %error_num2, align 4, !tbaa !12
  %12 = load double, ptr %xpre, align 8, !tbaa !8
  store double %12, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %13 = load double, ptr %fcur, align 8, !tbaa !8
  %cmp3 = fcmp oeq double %13, 0.000000e+00
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %14 = load ptr, ptr %solver_stats.addr, align 8, !tbaa !4
  %error_num5 = getelementptr inbounds %struct.scipy_zeros_info, ptr %14, i32 0, i32 2
  store i32 0, ptr %error_num5, align 4, !tbaa !12
  %15 = load double, ptr %xcur, align 8, !tbaa !8
  store double %15, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %16 = load double, ptr %fpre, align 8, !tbaa !8
  %17 = bitcast double %16 to i64
  %18 = icmp slt i64 %17, 0
  %19 = zext i1 %18 to i32
  %20 = load double, ptr %fcur, align 8, !tbaa !8
  %21 = bitcast double %20 to i64
  %22 = icmp slt i64 %21, 0
  %23 = zext i1 %22 to i32
  %cmp7 = icmp eq i32 %19, %23
  br i1 %cmp7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end6
  %24 = load ptr, ptr %solver_stats.addr, align 8, !tbaa !4
  %error_num9 = getelementptr inbounds %struct.scipy_zeros_info, ptr %24, i32 0, i32 2
  store i32 -1, ptr %error_num9, align 4, !tbaa !12
  store double 0.000000e+00, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %25 = load ptr, ptr %solver_stats.addr, align 8, !tbaa !4
  %iterations = getelementptr inbounds %struct.scipy_zeros_info, ptr %25, i32 0, i32 1
  store i32 0, ptr %iterations, align 4, !tbaa !15
  store i32 0, ptr %i, align 4, !tbaa !10
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end10
  %26 = load i32, ptr %i, align 4, !tbaa !10
  %27 = load i32, ptr %iter.addr, align 4, !tbaa !10
  %cmp11 = icmp slt i32 %26, %27
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load ptr, ptr %solver_stats.addr, align 8, !tbaa !4
  %iterations12 = getelementptr inbounds %struct.scipy_zeros_info, ptr %28, i32 0, i32 1
  %29 = load i32, ptr %iterations12, align 4, !tbaa !15
  %inc = add nsw i32 %29, 1
  store i32 %inc, ptr %iterations12, align 4, !tbaa !15
  %30 = load double, ptr %fpre, align 8, !tbaa !8
  %cmp13 = fcmp une double %30, 0.000000e+00
  br i1 %cmp13, label %land.lhs.true, label %if.end18

land.lhs.true:                                    ; preds = %for.body
  %31 = load double, ptr %fcur, align 8, !tbaa !8
  %cmp14 = fcmp une double %31, 0.000000e+00
  br i1 %cmp14, label %land.lhs.true15, label %if.end18

land.lhs.true15:                                  ; preds = %land.lhs.true
  %32 = load double, ptr %fpre, align 8, !tbaa !8
  %33 = bitcast double %32 to i64
  %34 = icmp slt i64 %33, 0
  %35 = zext i1 %34 to i32
  %36 = load double, ptr %fcur, align 8, !tbaa !8
  %37 = bitcast double %36 to i64
  %38 = icmp slt i64 %37, 0
  %39 = zext i1 %38 to i32
  %cmp16 = icmp ne i32 %35, %39
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %land.lhs.true15
  %40 = load double, ptr %xpre, align 8, !tbaa !8
  store double %40, ptr %xblk, align 8, !tbaa !8
  %41 = load double, ptr %fpre, align 8, !tbaa !8
  store double %41, ptr %fblk, align 8, !tbaa !8
  %42 = load double, ptr %xcur, align 8, !tbaa !8
  %43 = load double, ptr %xpre, align 8, !tbaa !8
  %sub = fsub double %42, %43
  store double %sub, ptr %scur, align 8, !tbaa !8
  store double %sub, ptr %spre, align 8, !tbaa !8
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %land.lhs.true15, %land.lhs.true, %for.body
  %44 = load double, ptr %fblk, align 8, !tbaa !8
  %45 = call double @llvm.fabs.f64(double %44)
  %46 = load double, ptr %fcur, align 8, !tbaa !8
  %47 = call double @llvm.fabs.f64(double %46)
  %cmp19 = fcmp olt double %45, %47
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end18
  %48 = load double, ptr %xcur, align 8, !tbaa !8
  store double %48, ptr %xpre, align 8, !tbaa !8
  %49 = load double, ptr %xblk, align 8, !tbaa !8
  store double %49, ptr %xcur, align 8, !tbaa !8
  %50 = load double, ptr %xpre, align 8, !tbaa !8
  store double %50, ptr %xblk, align 8, !tbaa !8
  %51 = load double, ptr %fcur, align 8, !tbaa !8
  store double %51, ptr %fpre, align 8, !tbaa !8
  %52 = load double, ptr %fblk, align 8, !tbaa !8
  store double %52, ptr %fcur, align 8, !tbaa !8
  %53 = load double, ptr %fpre, align 8, !tbaa !8
  store double %53, ptr %fblk, align 8, !tbaa !8
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end18
  %54 = load double, ptr %xtol.addr, align 8, !tbaa !8
  %55 = load double, ptr %rtol.addr, align 8, !tbaa !8
  %56 = load double, ptr %xcur, align 8, !tbaa !8
  %57 = call double @llvm.fabs.f64(double %56)
  %58 = call double @llvm.fmuladd.f64(double %55, double %57, double %54)
  %div = fdiv double %58, 2.000000e+00
  store double %div, ptr %delta, align 8, !tbaa !8
  %59 = load double, ptr %xblk, align 8, !tbaa !8
  %60 = load double, ptr %xcur, align 8, !tbaa !8
  %sub22 = fsub double %59, %60
  %div23 = fdiv double %sub22, 2.000000e+00
  store double %div23, ptr %sbis, align 8, !tbaa !8
  %61 = load double, ptr %fcur, align 8, !tbaa !8
  %cmp24 = fcmp oeq double %61, 0.000000e+00
  br i1 %cmp24, label %if.then26, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end21
  %62 = load double, ptr %sbis, align 8, !tbaa !8
  %63 = call double @llvm.fabs.f64(double %62)
  %64 = load double, ptr %delta, align 8, !tbaa !8
  %cmp25 = fcmp olt double %63, %64
  br i1 %cmp25, label %if.then26, label %if.end28

if.then26:                                        ; preds = %lor.lhs.false, %if.end21
  %65 = load ptr, ptr %solver_stats.addr, align 8, !tbaa !4
  %error_num27 = getelementptr inbounds %struct.scipy_zeros_info, ptr %65, i32 0, i32 2
  store i32 0, ptr %error_num27, align 4, !tbaa !12
  %66 = load double, ptr %xcur, align 8, !tbaa !8
  store double %66, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end28:                                         ; preds = %lor.lhs.false
  %67 = load double, ptr %spre, align 8, !tbaa !8
  %68 = call double @llvm.fabs.f64(double %67)
  %69 = load double, ptr %delta, align 8, !tbaa !8
  %cmp29 = fcmp ogt double %68, %69
  br i1 %cmp29, label %land.lhs.true30, label %if.else61

land.lhs.true30:                                  ; preds = %if.end28
  %70 = load double, ptr %fcur, align 8, !tbaa !8
  %71 = call double @llvm.fabs.f64(double %70)
  %72 = load double, ptr %fpre, align 8, !tbaa !8
  %73 = call double @llvm.fabs.f64(double %72)
  %cmp31 = fcmp olt double %71, %73
  br i1 %cmp31, label %if.then32, label %if.else61

if.then32:                                        ; preds = %land.lhs.true30
  %74 = load double, ptr %xpre, align 8, !tbaa !8
  %75 = load double, ptr %xblk, align 8, !tbaa !8
  %cmp33 = fcmp oeq double %74, %75
  br i1 %cmp33, label %if.then34, label %if.else

if.then34:                                        ; preds = %if.then32
  %76 = load double, ptr %fcur, align 8, !tbaa !8
  %fneg = fneg double %76
  %77 = load double, ptr %xcur, align 8, !tbaa !8
  %78 = load double, ptr %xpre, align 8, !tbaa !8
  %sub35 = fsub double %77, %78
  %mul = fmul double %fneg, %sub35
  %79 = load double, ptr %fcur, align 8, !tbaa !8
  %80 = load double, ptr %fpre, align 8, !tbaa !8
  %sub36 = fsub double %79, %80
  %div37 = fdiv double %mul, %sub36
  store double %div37, ptr %stry, align 8, !tbaa !8
  br label %if.end50

if.else:                                          ; preds = %if.then32
  %81 = load double, ptr %fpre, align 8, !tbaa !8
  %82 = load double, ptr %fcur, align 8, !tbaa !8
  %sub38 = fsub double %81, %82
  %83 = load double, ptr %xpre, align 8, !tbaa !8
  %84 = load double, ptr %xcur, align 8, !tbaa !8
  %sub39 = fsub double %83, %84
  %div40 = fdiv double %sub38, %sub39
  store double %div40, ptr %dpre, align 8, !tbaa !8
  %85 = load double, ptr %fblk, align 8, !tbaa !8
  %86 = load double, ptr %fcur, align 8, !tbaa !8
  %sub41 = fsub double %85, %86
  %87 = load double, ptr %xblk, align 8, !tbaa !8
  %88 = load double, ptr %xcur, align 8, !tbaa !8
  %sub42 = fsub double %87, %88
  %div43 = fdiv double %sub41, %sub42
  store double %div43, ptr %dblk, align 8, !tbaa !8
  %89 = load double, ptr %fcur, align 8, !tbaa !8
  %fneg44 = fneg double %89
  %90 = load double, ptr %fblk, align 8, !tbaa !8
  %91 = load double, ptr %fpre, align 8, !tbaa !8
  %sub45 = fsub double %90, %91
  %mul46 = fmul double %fneg44, %sub45
  %92 = load double, ptr %fblk, align 8, !tbaa !8
  %93 = load double, ptr %dpre, align 8, !tbaa !8
  %94 = load double, ptr %fpre, align 8, !tbaa !8
  %95 = load double, ptr %dblk, align 8, !tbaa !8
  %mul48 = fmul double %94, %95
  %neg = fneg double %mul48
  %96 = call double @llvm.fmuladd.f64(double %92, double %93, double %neg)
  %div49 = fdiv double %mul46, %96
  store double %div49, ptr %stry, align 8, !tbaa !8
  br label %if.end50

if.end50:                                         ; preds = %if.else, %if.then34
  %97 = load double, ptr %stry, align 8, !tbaa !8
  %98 = call double @llvm.fabs.f64(double %97)
  %mul51 = fmul double 2.000000e+00, %98
  %99 = load double, ptr %spre, align 8, !tbaa !8
  %100 = call double @llvm.fabs.f64(double %99)
  %101 = load double, ptr %sbis, align 8, !tbaa !8
  %102 = call double @llvm.fabs.f64(double %101)
  %103 = load double, ptr %delta, align 8, !tbaa !8
  %neg53 = fneg double %103
  %104 = call double @llvm.fmuladd.f64(double 3.000000e+00, double %102, double %neg53)
  %cmp54 = fcmp olt double %100, %104
  br i1 %cmp54, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end50
  %105 = load double, ptr %spre, align 8, !tbaa !8
  %106 = call double @llvm.fabs.f64(double %105)
  br label %cond.end

cond.false:                                       ; preds = %if.end50
  %107 = load double, ptr %sbis, align 8, !tbaa !8
  %108 = call double @llvm.fabs.f64(double %107)
  %109 = load double, ptr %delta, align 8, !tbaa !8
  %neg56 = fneg double %109
  %110 = call double @llvm.fmuladd.f64(double 3.000000e+00, double %108, double %neg56)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %106, %cond.true ], [ %110, %cond.false ]
  %cmp57 = fcmp olt double %mul51, %cond
  br i1 %cmp57, label %if.then58, label %if.else59

if.then58:                                        ; preds = %cond.end
  %111 = load double, ptr %scur, align 8, !tbaa !8
  store double %111, ptr %spre, align 8, !tbaa !8
  %112 = load double, ptr %stry, align 8, !tbaa !8
  store double %112, ptr %scur, align 8, !tbaa !8
  br label %if.end60

if.else59:                                        ; preds = %cond.end
  %113 = load double, ptr %sbis, align 8, !tbaa !8
  store double %113, ptr %spre, align 8, !tbaa !8
  %114 = load double, ptr %sbis, align 8, !tbaa !8
  store double %114, ptr %scur, align 8, !tbaa !8
  br label %if.end60

if.end60:                                         ; preds = %if.else59, %if.then58
  br label %if.end62

if.else61:                                        ; preds = %land.lhs.true30, %if.end28
  %115 = load double, ptr %sbis, align 8, !tbaa !8
  store double %115, ptr %spre, align 8, !tbaa !8
  %116 = load double, ptr %sbis, align 8, !tbaa !8
  store double %116, ptr %scur, align 8, !tbaa !8
  br label %if.end62

if.end62:                                         ; preds = %if.else61, %if.end60
  %117 = load double, ptr %xcur, align 8, !tbaa !8
  store double %117, ptr %xpre, align 8, !tbaa !8
  %118 = load double, ptr %fcur, align 8, !tbaa !8
  store double %118, ptr %fpre, align 8, !tbaa !8
  %119 = load double, ptr %scur, align 8, !tbaa !8
  %120 = call double @llvm.fabs.f64(double %119)
  %121 = load double, ptr %delta, align 8, !tbaa !8
  %cmp63 = fcmp ogt double %120, %121
  br i1 %cmp63, label %if.then64, label %if.else65

if.then64:                                        ; preds = %if.end62
  %122 = load double, ptr %scur, align 8, !tbaa !8
  %123 = load double, ptr %xcur, align 8, !tbaa !8
  %add = fadd double %123, %122
  store double %add, ptr %xcur, align 8, !tbaa !8
  br label %if.end73

if.else65:                                        ; preds = %if.end62
  %124 = load double, ptr %sbis, align 8, !tbaa !8
  %cmp66 = fcmp ogt double %124, 0.000000e+00
  br i1 %cmp66, label %cond.true67, label %cond.false68

cond.true67:                                      ; preds = %if.else65
  %125 = load double, ptr %delta, align 8, !tbaa !8
  br label %cond.end70

cond.false68:                                     ; preds = %if.else65
  %126 = load double, ptr %delta, align 8, !tbaa !8
  %fneg69 = fneg double %126
  br label %cond.end70

cond.end70:                                       ; preds = %cond.false68, %cond.true67
  %cond71 = phi double [ %125, %cond.true67 ], [ %fneg69, %cond.false68 ]
  %127 = load double, ptr %xcur, align 8, !tbaa !8
  %add72 = fadd double %127, %cond71
  store double %add72, ptr %xcur, align 8, !tbaa !8
  br label %if.end73

if.end73:                                         ; preds = %cond.end70, %if.then64
  %128 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %129 = load double, ptr %xcur, align 8, !tbaa !8
  %130 = load ptr, ptr %func_data_param.addr, align 8, !tbaa !4
  %call74 = call double %128(double noundef %129, ptr noundef %130)
  store double %call74, ptr %fcur, align 8, !tbaa !8
  %131 = load ptr, ptr %solver_stats.addr, align 8, !tbaa !4
  %funcalls75 = getelementptr inbounds %struct.scipy_zeros_info, ptr %131, i32 0, i32 0
  %132 = load i32, ptr %funcalls75, align 4, !tbaa !14
  %inc76 = add nsw i32 %132, 1
  store i32 %inc76, ptr %funcalls75, align 4, !tbaa !14
  br label %for.inc

for.inc:                                          ; preds = %if.end73
  %133 = load i32, ptr %i, align 4, !tbaa !10
  %inc77 = add nsw i32 %133, 1
  store i32 %inc77, ptr %i, align 4, !tbaa !10
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %134 = load ptr, ptr %solver_stats.addr, align 8, !tbaa !4
  %error_num78 = getelementptr inbounds %struct.scipy_zeros_info, ptr %134, i32 0, i32 2
  store i32 -2, ptr %error_num78, align 4, !tbaa !12
  %135 = load double, ptr %xcur, align 8, !tbaa !8
  store double %135, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then26, %if.then8, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %dblk) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %dpre) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %stry) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %delta) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %sbis) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %scur) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %spre) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %fblk) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %fcur) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %fpre) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %xblk) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %xcur) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %xpre) #9
  %136 = load double, ptr %retval, align 8
  ret double %136
}

; Function Attrs: nounwind uwtable
define hidden double @brentq(ptr noundef %f, double noundef %xa, double noundef %xb, double noundef %xtol, double noundef %rtol, i32 noundef %iter, ptr noundef %func_data_param, ptr noundef %solver_stats) #0 {
entry:
  %retval = alloca double, align 8
  %f.addr = alloca ptr, align 8
  %xa.addr = alloca double, align 8
  %xb.addr = alloca double, align 8
  %xtol.addr = alloca double, align 8
  %rtol.addr = alloca double, align 8
  %iter.addr = alloca i32, align 4
  %func_data_param.addr = alloca ptr, align 8
  %solver_stats.addr = alloca ptr, align 8
  %xpre = alloca double, align 8
  %xcur = alloca double, align 8
  %xblk = alloca double, align 8
  %fpre = alloca double, align 8
  %fcur = alloca double, align 8
  %fblk = alloca double, align 8
  %spre = alloca double, align 8
  %scur = alloca double, align 8
  %sbis = alloca double, align 8
  %delta = alloca double, align 8
  %stry = alloca double, align 8
  %dpre = alloca double, align 8
  %dblk = alloca double, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %f, ptr %f.addr, align 8, !tbaa !4
  store double %xa, ptr %xa.addr, align 8, !tbaa !8
  store double %xb, ptr %xb.addr, align 8, !tbaa !8
  store double %xtol, ptr %xtol.addr, align 8, !tbaa !8
  store double %rtol, ptr %rtol.addr, align 8, !tbaa !8
  store i32 %iter, ptr %iter.addr, align 4, !tbaa !10
  store ptr %func_data_param, ptr %func_data_param.addr, align 8, !tbaa !4
  store ptr %solver_stats, ptr %solver_stats.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %xpre) #9
  %0 = load double, ptr %xa.addr, align 8, !tbaa !8
  store double %0, ptr %xpre, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %xcur) #9
  %1 = load double, ptr %xb.addr, align 8, !tbaa !8
  store double %1, ptr %xcur, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %xblk) #9
  store double 0.000000e+00, ptr %xblk, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %fpre) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %fcur) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %fblk) #9
  store double 0.000000e+00, ptr %fblk, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %spre) #9
  store double 0.000000e+00, ptr %spre, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %scur) #9
  store double 0.000000e+00, ptr %scur, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %sbis) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %delta) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %stry) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %dpre) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %dblk) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9
  %2 = load ptr, ptr %solver_stats.addr, align 8, !tbaa !4
  %error_num = getelementptr inbounds %struct.scipy_zeros_info, ptr %2, i32 0, i32 2
  store i32 1, ptr %error_num, align 4, !tbaa !12
  %3 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %4 = load double, ptr %xpre, align 8, !tbaa !8
  %5 = load ptr, ptr %func_data_param.addr, align 8, !tbaa !4
  %call = call double %3(double noundef %4, ptr noundef %5)
  store double %call, ptr %fpre, align 8, !tbaa !8
  %6 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %7 = load double, ptr %xcur, align 8, !tbaa !8
  %8 = load ptr, ptr %func_data_param.addr, align 8, !tbaa !4
  %call1 = call double %6(double noundef %7, ptr noundef %8)
  store double %call1, ptr %fcur, align 8, !tbaa !8
  %9 = load ptr, ptr %solver_stats.addr, align 8, !tbaa !4
  %funcalls = getelementptr inbounds %struct.scipy_zeros_info, ptr %9, i32 0, i32 0
  store i32 2, ptr %funcalls, align 4, !tbaa !14
  %10 = load double, ptr %fpre, align 8, !tbaa !8
  %cmp = fcmp oeq double %10, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load ptr, ptr %solver_stats.addr, align 8, !tbaa !4
  %error_num2 = getelementptr inbounds %struct.scipy_zeros_info, ptr %11, i32 0, i32 2
  store i32 0, ptr %error_num2, align 4, !tbaa !12
  %12 = load double, ptr %xpre, align 8, !tbaa !8
  store double %12, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %13 = load double, ptr %fcur, align 8, !tbaa !8
  %cmp3 = fcmp oeq double %13, 0.000000e+00
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %14 = load ptr, ptr %solver_stats.addr, align 8, !tbaa !4
  %error_num5 = getelementptr inbounds %struct.scipy_zeros_info, ptr %14, i32 0, i32 2
  store i32 0, ptr %error_num5, align 4, !tbaa !12
  %15 = load double, ptr %xcur, align 8, !tbaa !8
  store double %15, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %16 = load double, ptr %fpre, align 8, !tbaa !8
  %17 = bitcast double %16 to i64
  %18 = icmp slt i64 %17, 0
  %19 = zext i1 %18 to i32
  %20 = load double, ptr %fcur, align 8, !tbaa !8
  %21 = bitcast double %20 to i64
  %22 = icmp slt i64 %21, 0
  %23 = zext i1 %22 to i32
  %cmp7 = icmp eq i32 %19, %23
  br i1 %cmp7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end6
  %24 = load ptr, ptr %solver_stats.addr, align 8, !tbaa !4
  %error_num9 = getelementptr inbounds %struct.scipy_zeros_info, ptr %24, i32 0, i32 2
  store i32 -1, ptr %error_num9, align 4, !tbaa !12
  store double 0.000000e+00, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %25 = load ptr, ptr %solver_stats.addr, align 8, !tbaa !4
  %iterations = getelementptr inbounds %struct.scipy_zeros_info, ptr %25, i32 0, i32 1
  store i32 0, ptr %iterations, align 4, !tbaa !15
  store i32 0, ptr %i, align 4, !tbaa !10
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end10
  %26 = load i32, ptr %i, align 4, !tbaa !10
  %27 = load i32, ptr %iter.addr, align 4, !tbaa !10
  %cmp11 = icmp slt i32 %26, %27
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load ptr, ptr %solver_stats.addr, align 8, !tbaa !4
  %iterations12 = getelementptr inbounds %struct.scipy_zeros_info, ptr %28, i32 0, i32 1
  %29 = load i32, ptr %iterations12, align 4, !tbaa !15
  %inc = add nsw i32 %29, 1
  store i32 %inc, ptr %iterations12, align 4, !tbaa !15
  %30 = load double, ptr %fpre, align 8, !tbaa !8
  %cmp13 = fcmp une double %30, 0.000000e+00
  br i1 %cmp13, label %land.lhs.true, label %if.end18

land.lhs.true:                                    ; preds = %for.body
  %31 = load double, ptr %fcur, align 8, !tbaa !8
  %cmp14 = fcmp une double %31, 0.000000e+00
  br i1 %cmp14, label %land.lhs.true15, label %if.end18

land.lhs.true15:                                  ; preds = %land.lhs.true
  %32 = load double, ptr %fpre, align 8, !tbaa !8
  %33 = bitcast double %32 to i64
  %34 = icmp slt i64 %33, 0
  %35 = zext i1 %34 to i32
  %36 = load double, ptr %fcur, align 8, !tbaa !8
  %37 = bitcast double %36 to i64
  %38 = icmp slt i64 %37, 0
  %39 = zext i1 %38 to i32
  %cmp16 = icmp ne i32 %35, %39
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %land.lhs.true15
  %40 = load double, ptr %xpre, align 8, !tbaa !8
  store double %40, ptr %xblk, align 8, !tbaa !8
  %41 = load double, ptr %fpre, align 8, !tbaa !8
  store double %41, ptr %fblk, align 8, !tbaa !8
  %42 = load double, ptr %xcur, align 8, !tbaa !8
  %43 = load double, ptr %xpre, align 8, !tbaa !8
  %sub = fsub double %42, %43
  store double %sub, ptr %scur, align 8, !tbaa !8
  store double %sub, ptr %spre, align 8, !tbaa !8
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %land.lhs.true15, %land.lhs.true, %for.body
  %44 = load double, ptr %fblk, align 8, !tbaa !8
  %45 = call double @llvm.fabs.f64(double %44)
  %46 = load double, ptr %fcur, align 8, !tbaa !8
  %47 = call double @llvm.fabs.f64(double %46)
  %cmp19 = fcmp olt double %45, %47
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end18
  %48 = load double, ptr %xcur, align 8, !tbaa !8
  store double %48, ptr %xpre, align 8, !tbaa !8
  %49 = load double, ptr %xblk, align 8, !tbaa !8
  store double %49, ptr %xcur, align 8, !tbaa !8
  %50 = load double, ptr %xpre, align 8, !tbaa !8
  store double %50, ptr %xblk, align 8, !tbaa !8
  %51 = load double, ptr %fcur, align 8, !tbaa !8
  store double %51, ptr %fpre, align 8, !tbaa !8
  %52 = load double, ptr %fblk, align 8, !tbaa !8
  store double %52, ptr %fcur, align 8, !tbaa !8
  %53 = load double, ptr %fpre, align 8, !tbaa !8
  store double %53, ptr %fblk, align 8, !tbaa !8
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end18
  %54 = load double, ptr %xtol.addr, align 8, !tbaa !8
  %55 = load double, ptr %rtol.addr, align 8, !tbaa !8
  %56 = load double, ptr %xcur, align 8, !tbaa !8
  %57 = call double @llvm.fabs.f64(double %56)
  %58 = call double @llvm.fmuladd.f64(double %55, double %57, double %54)
  %div = fdiv double %58, 2.000000e+00
  store double %div, ptr %delta, align 8, !tbaa !8
  %59 = load double, ptr %xblk, align 8, !tbaa !8
  %60 = load double, ptr %xcur, align 8, !tbaa !8
  %sub22 = fsub double %59, %60
  %div23 = fdiv double %sub22, 2.000000e+00
  store double %div23, ptr %sbis, align 8, !tbaa !8
  %61 = load double, ptr %fcur, align 8, !tbaa !8
  %cmp24 = fcmp oeq double %61, 0.000000e+00
  br i1 %cmp24, label %if.then26, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end21
  %62 = load double, ptr %sbis, align 8, !tbaa !8
  %63 = call double @llvm.fabs.f64(double %62)
  %64 = load double, ptr %delta, align 8, !tbaa !8
  %cmp25 = fcmp olt double %63, %64
  br i1 %cmp25, label %if.then26, label %if.end28

if.then26:                                        ; preds = %lor.lhs.false, %if.end21
  %65 = load ptr, ptr %solver_stats.addr, align 8, !tbaa !4
  %error_num27 = getelementptr inbounds %struct.scipy_zeros_info, ptr %65, i32 0, i32 2
  store i32 0, ptr %error_num27, align 4, !tbaa !12
  %66 = load double, ptr %xcur, align 8, !tbaa !8
  store double %66, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end28:                                         ; preds = %lor.lhs.false
  %67 = load double, ptr %spre, align 8, !tbaa !8
  %68 = call double @llvm.fabs.f64(double %67)
  %69 = load double, ptr %delta, align 8, !tbaa !8
  %cmp29 = fcmp ogt double %68, %69
  br i1 %cmp29, label %land.lhs.true30, label %if.else63

land.lhs.true30:                                  ; preds = %if.end28
  %70 = load double, ptr %fcur, align 8, !tbaa !8
  %71 = call double @llvm.fabs.f64(double %70)
  %72 = load double, ptr %fpre, align 8, !tbaa !8
  %73 = call double @llvm.fabs.f64(double %72)
  %cmp31 = fcmp olt double %71, %73
  br i1 %cmp31, label %if.then32, label %if.else63

if.then32:                                        ; preds = %land.lhs.true30
  %74 = load double, ptr %xpre, align 8, !tbaa !8
  %75 = load double, ptr %xblk, align 8, !tbaa !8
  %cmp33 = fcmp oeq double %74, %75
  br i1 %cmp33, label %if.then34, label %if.else

if.then34:                                        ; preds = %if.then32
  %76 = load double, ptr %fcur, align 8, !tbaa !8
  %fneg = fneg double %76
  %77 = load double, ptr %xcur, align 8, !tbaa !8
  %78 = load double, ptr %xpre, align 8, !tbaa !8
  %sub35 = fsub double %77, %78
  %mul = fmul double %fneg, %sub35
  %79 = load double, ptr %fcur, align 8, !tbaa !8
  %80 = load double, ptr %fpre, align 8, !tbaa !8
  %sub36 = fsub double %79, %80
  %div37 = fdiv double %mul, %sub36
  store double %div37, ptr %stry, align 8, !tbaa !8
  br label %if.end52

if.else:                                          ; preds = %if.then32
  %81 = load double, ptr %fpre, align 8, !tbaa !8
  %82 = load double, ptr %fcur, align 8, !tbaa !8
  %sub38 = fsub double %81, %82
  %83 = load double, ptr %xpre, align 8, !tbaa !8
  %84 = load double, ptr %xcur, align 8, !tbaa !8
  %sub39 = fsub double %83, %84
  %div40 = fdiv double %sub38, %sub39
  store double %div40, ptr %dpre, align 8, !tbaa !8
  %85 = load double, ptr %fblk, align 8, !tbaa !8
  %86 = load double, ptr %fcur, align 8, !tbaa !8
  %sub41 = fsub double %85, %86
  %87 = load double, ptr %xblk, align 8, !tbaa !8
  %88 = load double, ptr %xcur, align 8, !tbaa !8
  %sub42 = fsub double %87, %88
  %div43 = fdiv double %sub41, %sub42
  store double %div43, ptr %dblk, align 8, !tbaa !8
  %89 = load double, ptr %fcur, align 8, !tbaa !8
  %fneg44 = fneg double %89
  %90 = load double, ptr %fblk, align 8, !tbaa !8
  %91 = load double, ptr %dblk, align 8, !tbaa !8
  %92 = load double, ptr %fpre, align 8, !tbaa !8
  %93 = load double, ptr %dpre, align 8, !tbaa !8
  %mul46 = fmul double %92, %93
  %neg = fneg double %mul46
  %94 = call double @llvm.fmuladd.f64(double %90, double %91, double %neg)
  %mul47 = fmul double %fneg44, %94
  %95 = load double, ptr %dblk, align 8, !tbaa !8
  %96 = load double, ptr %dpre, align 8, !tbaa !8
  %mul48 = fmul double %95, %96
  %97 = load double, ptr %fblk, align 8, !tbaa !8
  %98 = load double, ptr %fpre, align 8, !tbaa !8
  %sub49 = fsub double %97, %98
  %mul50 = fmul double %mul48, %sub49
  %div51 = fdiv double %mul47, %mul50
  store double %div51, ptr %stry, align 8, !tbaa !8
  br label %if.end52

if.end52:                                         ; preds = %if.else, %if.then34
  %99 = load double, ptr %stry, align 8, !tbaa !8
  %100 = call double @llvm.fabs.f64(double %99)
  %mul53 = fmul double 2.000000e+00, %100
  %101 = load double, ptr %spre, align 8, !tbaa !8
  %102 = call double @llvm.fabs.f64(double %101)
  %103 = load double, ptr %sbis, align 8, !tbaa !8
  %104 = call double @llvm.fabs.f64(double %103)
  %105 = load double, ptr %delta, align 8, !tbaa !8
  %neg55 = fneg double %105
  %106 = call double @llvm.fmuladd.f64(double 3.000000e+00, double %104, double %neg55)
  %cmp56 = fcmp olt double %102, %106
  br i1 %cmp56, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end52
  %107 = load double, ptr %spre, align 8, !tbaa !8
  %108 = call double @llvm.fabs.f64(double %107)
  br label %cond.end

cond.false:                                       ; preds = %if.end52
  %109 = load double, ptr %sbis, align 8, !tbaa !8
  %110 = call double @llvm.fabs.f64(double %109)
  %111 = load double, ptr %delta, align 8, !tbaa !8
  %neg58 = fneg double %111
  %112 = call double @llvm.fmuladd.f64(double 3.000000e+00, double %110, double %neg58)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %108, %cond.true ], [ %112, %cond.false ]
  %cmp59 = fcmp olt double %mul53, %cond
  br i1 %cmp59, label %if.then60, label %if.else61

if.then60:                                        ; preds = %cond.end
  %113 = load double, ptr %scur, align 8, !tbaa !8
  store double %113, ptr %spre, align 8, !tbaa !8
  %114 = load double, ptr %stry, align 8, !tbaa !8
  store double %114, ptr %scur, align 8, !tbaa !8
  br label %if.end62

if.else61:                                        ; preds = %cond.end
  %115 = load double, ptr %sbis, align 8, !tbaa !8
  store double %115, ptr %spre, align 8, !tbaa !8
  %116 = load double, ptr %sbis, align 8, !tbaa !8
  store double %116, ptr %scur, align 8, !tbaa !8
  br label %if.end62

if.end62:                                         ; preds = %if.else61, %if.then60
  br label %if.end64

if.else63:                                        ; preds = %land.lhs.true30, %if.end28
  %117 = load double, ptr %sbis, align 8, !tbaa !8
  store double %117, ptr %spre, align 8, !tbaa !8
  %118 = load double, ptr %sbis, align 8, !tbaa !8
  store double %118, ptr %scur, align 8, !tbaa !8
  br label %if.end64

if.end64:                                         ; preds = %if.else63, %if.end62
  %119 = load double, ptr %xcur, align 8, !tbaa !8
  store double %119, ptr %xpre, align 8, !tbaa !8
  %120 = load double, ptr %fcur, align 8, !tbaa !8
  store double %120, ptr %fpre, align 8, !tbaa !8
  %121 = load double, ptr %scur, align 8, !tbaa !8
  %122 = call double @llvm.fabs.f64(double %121)
  %123 = load double, ptr %delta, align 8, !tbaa !8
  %cmp65 = fcmp ogt double %122, %123
  br i1 %cmp65, label %if.then66, label %if.else67

if.then66:                                        ; preds = %if.end64
  %124 = load double, ptr %scur, align 8, !tbaa !8
  %125 = load double, ptr %xcur, align 8, !tbaa !8
  %add = fadd double %125, %124
  store double %add, ptr %xcur, align 8, !tbaa !8
  br label %if.end75

if.else67:                                        ; preds = %if.end64
  %126 = load double, ptr %sbis, align 8, !tbaa !8
  %cmp68 = fcmp ogt double %126, 0.000000e+00
  br i1 %cmp68, label %cond.true69, label %cond.false70

cond.true69:                                      ; preds = %if.else67
  %127 = load double, ptr %delta, align 8, !tbaa !8
  br label %cond.end72

cond.false70:                                     ; preds = %if.else67
  %128 = load double, ptr %delta, align 8, !tbaa !8
  %fneg71 = fneg double %128
  br label %cond.end72

cond.end72:                                       ; preds = %cond.false70, %cond.true69
  %cond73 = phi double [ %127, %cond.true69 ], [ %fneg71, %cond.false70 ]
  %129 = load double, ptr %xcur, align 8, !tbaa !8
  %add74 = fadd double %129, %cond73
  store double %add74, ptr %xcur, align 8, !tbaa !8
  br label %if.end75

if.end75:                                         ; preds = %cond.end72, %if.then66
  %130 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %131 = load double, ptr %xcur, align 8, !tbaa !8
  %132 = load ptr, ptr %func_data_param.addr, align 8, !tbaa !4
  %call76 = call double %130(double noundef %131, ptr noundef %132)
  store double %call76, ptr %fcur, align 8, !tbaa !8
  %133 = load ptr, ptr %solver_stats.addr, align 8, !tbaa !4
  %funcalls77 = getelementptr inbounds %struct.scipy_zeros_info, ptr %133, i32 0, i32 0
  %134 = load i32, ptr %funcalls77, align 4, !tbaa !14
  %inc78 = add nsw i32 %134, 1
  store i32 %inc78, ptr %funcalls77, align 4, !tbaa !14
  br label %for.inc

for.inc:                                          ; preds = %if.end75
  %135 = load i32, ptr %i, align 4, !tbaa !10
  %inc79 = add nsw i32 %135, 1
  store i32 %inc79, ptr %i, align 4, !tbaa !10
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %136 = load ptr, ptr %solver_stats.addr, align 8, !tbaa !4
  %error_num80 = getelementptr inbounds %struct.scipy_zeros_info, ptr %136, i32 0, i32 2
  store i32 -2, ptr %error_num80, align 4, !tbaa !12
  %137 = load double, ptr %xcur, align 8, !tbaa !8
  store double %137, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then26, %if.then8, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %dblk) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %dpre) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %stry) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %delta) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %sbis) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %scur) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %spre) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %fblk) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %fcur) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %fpre) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %xblk) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %xcur) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %xpre) #9
  %138 = load double, ptr %retval, align 8
  ret double %138
}

; Function Attrs: nounwind uwtable
define ptr @PyInit__zeros() #0 {
entry:
  %call = call ptr @PyModuleDef_Init(ptr noundef @__pyx_moduledef)
  ret ptr %call
}

declare ptr @PyModuleDef_Init(ptr noundef) #4

; Function Attrs: nounwind uwtable
define internal ptr @__pyx_pymod_create(ptr noundef %spec, ptr noundef %def) #0 {
entry:
  %retval = alloca ptr, align 8
  %spec.addr = alloca ptr, align 8
  %def.addr = alloca ptr, align 8
  %module = alloca ptr, align 8
  %moddict = alloca ptr, align 8
  %modname = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %spec, ptr %spec.addr, align 8, !tbaa !4
  store ptr %def, ptr %def.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %module) #9
  store ptr null, ptr %module, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %moddict) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %modname) #9
  %call = call i32 @__Pyx_check_single_interpreter()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr @__pyx_m, align 8, !tbaa !4
  %tobool1 = icmp ne ptr %0, null
  br i1 %tobool1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %1 = load ptr, ptr @__pyx_m, align 8, !tbaa !4
  call void @Py_INCREF(ptr noundef %1)
  %2 = load ptr, ptr @__pyx_m, align 8, !tbaa !4
  store ptr %2, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %3 = load ptr, ptr %spec.addr, align 8, !tbaa !4
  %call4 = call ptr @PyObject_GetAttrString(ptr noundef %3, ptr noundef @.str.1)
  store ptr %call4, ptr %modname, align 8, !tbaa !4
  %4 = load ptr, ptr %modname, align 8, !tbaa !4
  %tobool5 = icmp ne ptr %4, null
  %lnot = xor i1 %tobool5, true
  %lnot6 = xor i1 %lnot, true
  %lnot7 = xor i1 %lnot6, true
  %lnot.ext = zext i1 %lnot7 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool8 = icmp ne i64 %expval, 0
  br i1 %tobool8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end3
  br label %bad

if.end10:                                         ; preds = %if.end3
  %5 = load ptr, ptr %modname, align 8, !tbaa !4
  %call11 = call ptr @PyModule_NewObject(ptr noundef %5)
  store ptr %call11, ptr %module, align 8, !tbaa !4
  %6 = load ptr, ptr %modname, align 8, !tbaa !4
  call void @Py_DECREF(ptr noundef %6)
  %7 = load ptr, ptr %module, align 8, !tbaa !4
  %tobool12 = icmp ne ptr %7, null
  %lnot13 = xor i1 %tobool12, true
  %lnot15 = xor i1 %lnot13, true
  %lnot17 = xor i1 %lnot15, true
  %lnot.ext18 = zext i1 %lnot17 to i32
  %conv19 = sext i32 %lnot.ext18 to i64
  %expval20 = call i64 @llvm.expect.i64(i64 %conv19, i64 0)
  %tobool21 = icmp ne i64 %expval20, 0
  br i1 %tobool21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end10
  br label %bad

if.end23:                                         ; preds = %if.end10
  %8 = load ptr, ptr %module, align 8, !tbaa !4
  %call24 = call ptr @PyModule_GetDict(ptr noundef %8)
  store ptr %call24, ptr %moddict, align 8, !tbaa !4
  %9 = load ptr, ptr %moddict, align 8, !tbaa !4
  %tobool25 = icmp ne ptr %9, null
  %lnot26 = xor i1 %tobool25, true
  %lnot28 = xor i1 %lnot26, true
  %lnot30 = xor i1 %lnot28, true
  %lnot.ext31 = zext i1 %lnot30 to i32
  %conv32 = sext i32 %lnot.ext31 to i64
  %expval33 = call i64 @llvm.expect.i64(i64 %conv32, i64 0)
  %tobool34 = icmp ne i64 %expval33, 0
  br i1 %tobool34, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.end23
  br label %bad

if.end36:                                         ; preds = %if.end23
  %10 = load ptr, ptr %spec.addr, align 8, !tbaa !4
  %11 = load ptr, ptr %moddict, align 8, !tbaa !4
  %call37 = call i32 @__Pyx_copy_spec_to_module(ptr noundef %10, ptr noundef %11, ptr noundef @.str.2, ptr noundef @.str.3, i32 noundef 1)
  %cmp = icmp slt i32 %call37, 0
  %lnot39 = xor i1 %cmp, true
  %lnot41 = xor i1 %lnot39, true
  %lnot.ext42 = zext i1 %lnot41 to i32
  %conv43 = sext i32 %lnot.ext42 to i64
  %expval44 = call i64 @llvm.expect.i64(i64 %conv43, i64 0)
  %tobool45 = icmp ne i64 %expval44, 0
  br i1 %tobool45, label %if.then46, label %if.end47

if.then46:                                        ; preds = %if.end36
  br label %bad

if.end47:                                         ; preds = %if.end36
  %12 = load ptr, ptr %spec.addr, align 8, !tbaa !4
  %13 = load ptr, ptr %moddict, align 8, !tbaa !4
  %call48 = call i32 @__Pyx_copy_spec_to_module(ptr noundef %12, ptr noundef %13, ptr noundef @.str.4, ptr noundef @.str.5, i32 noundef 1)
  %cmp49 = icmp slt i32 %call48, 0
  %lnot51 = xor i1 %cmp49, true
  %lnot53 = xor i1 %lnot51, true
  %lnot.ext54 = zext i1 %lnot53 to i32
  %conv55 = sext i32 %lnot.ext54 to i64
  %expval56 = call i64 @llvm.expect.i64(i64 %conv55, i64 0)
  %tobool57 = icmp ne i64 %expval56, 0
  br i1 %tobool57, label %if.then58, label %if.end59

if.then58:                                        ; preds = %if.end47
  br label %bad

if.end59:                                         ; preds = %if.end47
  %14 = load ptr, ptr %spec.addr, align 8, !tbaa !4
  %15 = load ptr, ptr %moddict, align 8, !tbaa !4
  %call60 = call i32 @__Pyx_copy_spec_to_module(ptr noundef %14, ptr noundef %15, ptr noundef @.str.6, ptr noundef @.str.7, i32 noundef 1)
  %cmp61 = icmp slt i32 %call60, 0
  %lnot63 = xor i1 %cmp61, true
  %lnot65 = xor i1 %lnot63, true
  %lnot.ext66 = zext i1 %lnot65 to i32
  %conv67 = sext i32 %lnot.ext66 to i64
  %expval68 = call i64 @llvm.expect.i64(i64 %conv67, i64 0)
  %tobool69 = icmp ne i64 %expval68, 0
  br i1 %tobool69, label %if.then70, label %if.end71

if.then70:                                        ; preds = %if.end59
  br label %bad

if.end71:                                         ; preds = %if.end59
  %16 = load ptr, ptr %spec.addr, align 8, !tbaa !4
  %17 = load ptr, ptr %moddict, align 8, !tbaa !4
  %call72 = call i32 @__Pyx_copy_spec_to_module(ptr noundef %16, ptr noundef %17, ptr noundef @.str.8, ptr noundef @.str.9, i32 noundef 0)
  %cmp73 = icmp slt i32 %call72, 0
  %lnot75 = xor i1 %cmp73, true
  %lnot77 = xor i1 %lnot75, true
  %lnot.ext78 = zext i1 %lnot77 to i32
  %conv79 = sext i32 %lnot.ext78 to i64
  %expval80 = call i64 @llvm.expect.i64(i64 %conv79, i64 0)
  %tobool81 = icmp ne i64 %expval80, 0
  br i1 %tobool81, label %if.then82, label %if.end83

if.then82:                                        ; preds = %if.end71
  br label %bad

if.end83:                                         ; preds = %if.end71
  %18 = load ptr, ptr %module, align 8, !tbaa !4
  store ptr %18, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

bad:                                              ; preds = %if.then82, %if.then70, %if.then58, %if.then46, %if.then35, %if.then22, %if.then9
  %19 = load ptr, ptr %module, align 8, !tbaa !4
  call void @Py_XDECREF(ptr noundef %19)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %bad, %if.end83, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %modname) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %moddict) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %module) #9
  %20 = load ptr, ptr %retval, align 8
  ret ptr %20
}

; Function Attrs: nounwind uwtable
define internal i32 @__pyx_pymod_exec__zeros(ptr noundef %__pyx_pyinit_module) #0 {
entry:
  %retval = alloca i32, align 4
  %__pyx_pyinit_module.addr = alloca ptr, align 8
  %__pyx_t_1 = alloca ptr, align 8
  %__pyx_t_2 = alloca ptr, align 8
  %__pyx_lineno = alloca i32, align 4
  %__pyx_filename = alloca ptr, align 8
  %__pyx_clineno = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %modules = alloca ptr, align 8
  %_py_tmp = alloca ptr, align 8
  store ptr %__pyx_pyinit_module, ptr %__pyx_pyinit_module.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pyx_t_1) #9
  store ptr null, ptr %__pyx_t_1, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pyx_t_2) #9
  store ptr null, ptr %__pyx_t_2, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %__pyx_lineno) #9
  store i32 0, ptr %__pyx_lineno, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pyx_filename) #9
  store ptr null, ptr %__pyx_filename, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %__pyx_clineno) #9
  store i32 0, ptr %__pyx_clineno, align 4, !tbaa !10
  %0 = load ptr, ptr @__pyx_m, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end2

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @__pyx_m, align 8, !tbaa !4
  %2 = load ptr, ptr %__pyx_pyinit_module.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %1, %2
  br i1 %cmp, label %if.then1, label %if.end

if.then1:                                         ; preds = %if.then
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup329

if.end:                                           ; preds = %if.then
  %3 = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !4
  call void @PyErr_SetString(ptr noundef %3, ptr noundef @.str.11)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup329

if.end2:                                          ; preds = %entry
  %call = call i32 @__Pyx_check_binary_version()
  %cmp3 = icmp slt i32 %call, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end2
  %4 = load ptr, ptr @__pyx_f, align 16, !tbaa !4
  store ptr %4, ptr %__pyx_filename, align 8, !tbaa !4
  %5 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 1, ptr %__pyx_lineno, align 4, !tbaa !10
  %6 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 4363, ptr %__pyx_clineno, align 4, !tbaa !10
  %7 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  br label %__pyx_L1_error

if.end5:                                          ; preds = %if.end2
  %call6 = call ptr @PyTuple_New(i64 noundef 0)
  store ptr %call6, ptr @__pyx_empty_tuple, align 8, !tbaa !4
  %8 = load ptr, ptr @__pyx_empty_tuple, align 8, !tbaa !4
  %tobool7 = icmp ne ptr %8, null
  %lnot = xor i1 %tobool7, true
  %lnot8 = xor i1 %lnot, true
  %lnot9 = xor i1 %lnot8, true
  %lnot.ext = zext i1 %lnot9 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool10 = icmp ne i64 %expval, 0
  br i1 %tobool10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end5
  %9 = load ptr, ptr @__pyx_f, align 16, !tbaa !4
  store ptr %9, ptr %__pyx_filename, align 8, !tbaa !4
  %10 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 1, ptr %__pyx_lineno, align 4, !tbaa !10
  %11 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 4367, ptr %__pyx_clineno, align 4, !tbaa !10
  %12 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  br label %__pyx_L1_error

if.end12:                                         ; preds = %if.end5
  %call13 = call ptr @PyBytes_FromStringAndSize(ptr noundef @.str.12, i64 noundef 0)
  store ptr %call13, ptr @__pyx_empty_bytes, align 8, !tbaa !4
  %13 = load ptr, ptr @__pyx_empty_bytes, align 8, !tbaa !4
  %tobool14 = icmp ne ptr %13, null
  %lnot15 = xor i1 %tobool14, true
  %lnot17 = xor i1 %lnot15, true
  %lnot19 = xor i1 %lnot17, true
  %lnot.ext20 = zext i1 %lnot19 to i32
  %conv21 = sext i32 %lnot.ext20 to i64
  %expval22 = call i64 @llvm.expect.i64(i64 %conv21, i64 0)
  %tobool23 = icmp ne i64 %expval22, 0
  br i1 %tobool23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end12
  %14 = load ptr, ptr @__pyx_f, align 16, !tbaa !4
  store ptr %14, ptr %__pyx_filename, align 8, !tbaa !4
  %15 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 1, ptr %__pyx_lineno, align 4, !tbaa !10
  %16 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 4368, ptr %__pyx_clineno, align 4, !tbaa !10
  %17 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  br label %__pyx_L1_error

if.end25:                                         ; preds = %if.end12
  %call26 = call ptr @PyUnicode_FromStringAndSize(ptr noundef @.str.12, i64 noundef 0)
  store ptr %call26, ptr @__pyx_empty_unicode, align 8, !tbaa !4
  %18 = load ptr, ptr @__pyx_empty_unicode, align 8, !tbaa !4
  %tobool27 = icmp ne ptr %18, null
  %lnot28 = xor i1 %tobool27, true
  %lnot30 = xor i1 %lnot28, true
  %lnot32 = xor i1 %lnot30, true
  %lnot.ext33 = zext i1 %lnot32 to i32
  %conv34 = sext i32 %lnot.ext33 to i64
  %expval35 = call i64 @llvm.expect.i64(i64 %conv34, i64 0)
  %tobool36 = icmp ne i64 %expval35, 0
  br i1 %tobool36, label %if.then37, label %if.end38

if.then37:                                        ; preds = %if.end25
  %19 = load ptr, ptr @__pyx_f, align 16, !tbaa !4
  store ptr %19, ptr %__pyx_filename, align 8, !tbaa !4
  %20 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 1, ptr %__pyx_lineno, align 4, !tbaa !10
  %21 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 4369, ptr %__pyx_clineno, align 4, !tbaa !10
  %22 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  br label %__pyx_L1_error

if.end38:                                         ; preds = %if.end25
  %call39 = call i32 @__pyx_CyFunction_init()
  %cmp40 = icmp slt i32 %call39, 0
  br i1 %cmp40, label %if.then42, label %if.end43

if.then42:                                        ; preds = %if.end38
  %23 = load ptr, ptr @__pyx_f, align 16, !tbaa !4
  store ptr %23, ptr %__pyx_filename, align 8, !tbaa !4
  %24 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 1, ptr %__pyx_lineno, align 4, !tbaa !10
  %25 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 4371, ptr %__pyx_clineno, align 4, !tbaa !10
  %26 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  br label %__pyx_L1_error

if.end43:                                         ; preds = %if.end38
  %27 = load ptr, ptr %__pyx_pyinit_module.addr, align 8, !tbaa !4
  store ptr %27, ptr @__pyx_m, align 8, !tbaa !4
  %28 = load ptr, ptr @__pyx_m, align 8, !tbaa !4
  call void @Py_INCREF(ptr noundef %28)
  %29 = load ptr, ptr @__pyx_m, align 8, !tbaa !4
  %call44 = call ptr @PyModule_GetDict(ptr noundef %29)
  store ptr %call44, ptr @__pyx_d, align 8, !tbaa !4
  %30 = load ptr, ptr @__pyx_d, align 8, !tbaa !4
  %tobool45 = icmp ne ptr %30, null
  %lnot46 = xor i1 %tobool45, true
  %lnot48 = xor i1 %lnot46, true
  %lnot50 = xor i1 %lnot48, true
  %lnot.ext51 = zext i1 %lnot50 to i32
  %conv52 = sext i32 %lnot.ext51 to i64
  %expval53 = call i64 @llvm.expect.i64(i64 %conv52, i64 0)
  %tobool54 = icmp ne i64 %expval53, 0
  br i1 %tobool54, label %if.then55, label %if.end56

if.then55:                                        ; preds = %if.end43
  %31 = load ptr, ptr @__pyx_f, align 16, !tbaa !4
  store ptr %31, ptr %__pyx_filename, align 8, !tbaa !4
  %32 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 1, ptr %__pyx_lineno, align 4, !tbaa !10
  %33 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 4405, ptr %__pyx_clineno, align 4, !tbaa !10
  %34 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  br label %__pyx_L1_error

if.end56:                                         ; preds = %if.end43
  %35 = load ptr, ptr @__pyx_d, align 8, !tbaa !4
  call void @Py_INCREF(ptr noundef %35)
  %call57 = call ptr @PyImport_AddModule(ptr noundef @.str.13)
  store ptr %call57, ptr @__pyx_b, align 8, !tbaa !4
  %36 = load ptr, ptr @__pyx_b, align 8, !tbaa !4
  %tobool58 = icmp ne ptr %36, null
  %lnot59 = xor i1 %tobool58, true
  %lnot61 = xor i1 %lnot59, true
  %lnot63 = xor i1 %lnot61, true
  %lnot.ext64 = zext i1 %lnot63 to i32
  %conv65 = sext i32 %lnot.ext64 to i64
  %expval66 = call i64 @llvm.expect.i64(i64 %conv65, i64 0)
  %tobool67 = icmp ne i64 %expval66, 0
  br i1 %tobool67, label %if.then68, label %if.end69

if.then68:                                        ; preds = %if.end56
  %37 = load ptr, ptr @__pyx_f, align 16, !tbaa !4
  store ptr %37, ptr %__pyx_filename, align 8, !tbaa !4
  %38 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 1, ptr %__pyx_lineno, align 4, !tbaa !10
  %39 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 4407, ptr %__pyx_clineno, align 4, !tbaa !10
  %40 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  br label %__pyx_L1_error

if.end69:                                         ; preds = %if.end56
  %41 = load ptr, ptr @__pyx_b, align 8, !tbaa !4
  call void @Py_INCREF(ptr noundef %41)
  %call70 = call ptr @PyImport_AddModule(ptr noundef @.str.14)
  store ptr %call70, ptr @__pyx_cython_runtime, align 8, !tbaa !4
  %42 = load ptr, ptr @__pyx_cython_runtime, align 8, !tbaa !4
  %tobool71 = icmp ne ptr %42, null
  %lnot72 = xor i1 %tobool71, true
  %lnot74 = xor i1 %lnot72, true
  %lnot76 = xor i1 %lnot74, true
  %lnot.ext77 = zext i1 %lnot76 to i32
  %conv78 = sext i32 %lnot.ext77 to i64
  %expval79 = call i64 @llvm.expect.i64(i64 %conv78, i64 0)
  %tobool80 = icmp ne i64 %expval79, 0
  br i1 %tobool80, label %if.then81, label %if.end82

if.then81:                                        ; preds = %if.end69
  %43 = load ptr, ptr @__pyx_f, align 16, !tbaa !4
  store ptr %43, ptr %__pyx_filename, align 8, !tbaa !4
  %44 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 1, ptr %__pyx_lineno, align 4, !tbaa !10
  %45 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 4409, ptr %__pyx_clineno, align 4, !tbaa !10
  %46 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  br label %__pyx_L1_error

if.end82:                                         ; preds = %if.end69
  %47 = load ptr, ptr @__pyx_cython_runtime, align 8, !tbaa !4
  call void @Py_INCREF(ptr noundef %47)
  %48 = load ptr, ptr @__pyx_m, align 8, !tbaa !4
  %49 = load ptr, ptr @__pyx_b, align 8, !tbaa !4
  %call83 = call i32 @PyObject_SetAttrString(ptr noundef %48, ptr noundef @.str.15, ptr noundef %49)
  %cmp84 = icmp slt i32 %call83, 0
  br i1 %cmp84, label %if.then86, label %if.end87

if.then86:                                        ; preds = %if.end82
  %50 = load ptr, ptr @__pyx_f, align 16, !tbaa !4
  store ptr %50, ptr %__pyx_filename, align 8, !tbaa !4
  %51 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 1, ptr %__pyx_lineno, align 4, !tbaa !10
  %52 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 4411, ptr %__pyx_clineno, align 4, !tbaa !10
  %53 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  br label %__pyx_L1_error

if.end87:                                         ; preds = %if.end82
  %call88 = call i32 @__Pyx_InitGlobals()
  %cmp89 = icmp slt i32 %call88, 0
  br i1 %cmp89, label %if.then91, label %if.end92

if.then91:                                        ; preds = %if.end87
  %54 = load ptr, ptr @__pyx_f, align 16, !tbaa !4
  store ptr %54, ptr %__pyx_filename, align 8, !tbaa !4
  %55 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 1, ptr %__pyx_lineno, align 4, !tbaa !10
  %56 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 4413, ptr %__pyx_clineno, align 4, !tbaa !10
  %57 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  br label %__pyx_L1_error

if.end92:                                         ; preds = %if.end87
  %58 = load i32, ptr @__pyx_module_is_main_scipy__optimize__cython_optimize___zeros, align 4, !tbaa !10
  %tobool93 = icmp ne i32 %58, 0
  br i1 %tobool93, label %if.then94, label %if.end100

if.then94:                                        ; preds = %if.end92
  %59 = load ptr, ptr @__pyx_m, align 8, !tbaa !4
  %60 = load ptr, ptr @__pyx_n_s_name, align 8, !tbaa !4
  %61 = load ptr, ptr @__pyx_n_s_main, align 8, !tbaa !4
  %call95 = call i32 @PyObject_SetAttr(ptr noundef %59, ptr noundef %60, ptr noundef %61)
  %cmp96 = icmp slt i32 %call95, 0
  br i1 %cmp96, label %if.then98, label %if.end99

if.then98:                                        ; preds = %if.then94
  %62 = load ptr, ptr @__pyx_f, align 16, !tbaa !4
  store ptr %62, ptr %__pyx_filename, align 8, !tbaa !4
  %63 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 1, ptr %__pyx_lineno, align 4, !tbaa !10
  %64 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 4418, ptr %__pyx_clineno, align 4, !tbaa !10
  %65 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  br label %__pyx_L1_error

if.end99:                                         ; preds = %if.then94
  br label %if.end100

if.end100:                                        ; preds = %if.end99, %if.end92
  call void @llvm.lifetime.start.p0(i64 8, ptr %modules) #9
  %call101 = call ptr @PyImport_GetModuleDict()
  store ptr %call101, ptr %modules, align 8, !tbaa !4
  %66 = load ptr, ptr %modules, align 8, !tbaa !4
  %tobool102 = icmp ne ptr %66, null
  %lnot103 = xor i1 %tobool102, true
  %lnot105 = xor i1 %lnot103, true
  %lnot107 = xor i1 %lnot105, true
  %lnot.ext108 = zext i1 %lnot107 to i32
  %conv109 = sext i32 %lnot.ext108 to i64
  %expval110 = call i64 @llvm.expect.i64(i64 %conv109, i64 0)
  %tobool111 = icmp ne i64 %expval110, 0
  br i1 %tobool111, label %if.then112, label %if.end113

if.then112:                                       ; preds = %if.end100
  %67 = load ptr, ptr @__pyx_f, align 16, !tbaa !4
  store ptr %67, ptr %__pyx_filename, align 8, !tbaa !4
  %68 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 1, ptr %__pyx_lineno, align 4, !tbaa !10
  %69 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 4422, ptr %__pyx_clineno, align 4, !tbaa !10
  %70 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end113:                                        ; preds = %if.end100
  %71 = load ptr, ptr %modules, align 8, !tbaa !4
  %call114 = call ptr @PyDict_GetItemString(ptr noundef %71, ptr noundef @.str.16)
  %tobool115 = icmp ne ptr %call114, null
  br i1 %tobool115, label %if.end129, label %if.then116

if.then116:                                       ; preds = %if.end113
  %72 = load ptr, ptr %modules, align 8, !tbaa !4
  %73 = load ptr, ptr @__pyx_m, align 8, !tbaa !4
  %call117 = call i32 @PyDict_SetItemString(ptr noundef %72, ptr noundef @.str.16, ptr noundef %73)
  %cmp118 = icmp slt i32 %call117, 0
  %lnot120 = xor i1 %cmp118, true
  %lnot122 = xor i1 %lnot120, true
  %lnot.ext123 = zext i1 %lnot122 to i32
  %conv124 = sext i32 %lnot.ext123 to i64
  %expval125 = call i64 @llvm.expect.i64(i64 %conv124, i64 0)
  %tobool126 = icmp ne i64 %expval125, 0
  br i1 %tobool126, label %if.then127, label %if.end128

if.then127:                                       ; preds = %if.then116
  %74 = load ptr, ptr @__pyx_f, align 16, !tbaa !4
  store ptr %74, ptr %__pyx_filename, align 8, !tbaa !4
  %75 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 1, ptr %__pyx_lineno, align 4, !tbaa !10
  %76 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 4424, ptr %__pyx_clineno, align 4, !tbaa !10
  %77 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end128:                                        ; preds = %if.then116
  br label %if.end129

if.end129:                                        ; preds = %if.end128, %if.end113
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then127, %if.then112, %if.end129
  call void @llvm.lifetime.end.p0(i64 8, ptr %modules) #9
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup329 [
    i32 0, label %cleanup.cont
    i32 2, label %__pyx_L1_error
  ]

cleanup.cont:                                     ; preds = %cleanup
  %call130 = call i32 @__Pyx_InitCachedBuiltins()
  %cmp131 = icmp slt i32 %call130, 0
  br i1 %cmp131, label %if.then133, label %if.end134

if.then133:                                       ; preds = %cleanup.cont
  %78 = load ptr, ptr @__pyx_f, align 16, !tbaa !4
  store ptr %78, ptr %__pyx_filename, align 8, !tbaa !4
  %79 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 1, ptr %__pyx_lineno, align 4, !tbaa !10
  %80 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 4429, ptr %__pyx_clineno, align 4, !tbaa !10
  %81 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  br label %__pyx_L1_error

if.end134:                                        ; preds = %cleanup.cont
  %call135 = call i32 @__Pyx_InitCachedConstants()
  %cmp136 = icmp slt i32 %call135, 0
  br i1 %cmp136, label %if.then138, label %if.end139

if.then138:                                       ; preds = %if.end134
  %82 = load ptr, ptr @__pyx_f, align 16, !tbaa !4
  store ptr %82, ptr %__pyx_filename, align 8, !tbaa !4
  %83 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 1, ptr %__pyx_lineno, align 4, !tbaa !10
  %84 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 4431, ptr %__pyx_clineno, align 4, !tbaa !10
  %85 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  br label %__pyx_L1_error

if.end139:                                        ; preds = %if.end134
  %call140 = call i32 @__Pyx_modinit_global_init_code()
  %call141 = call i32 @__Pyx_modinit_variable_export_code()
  %call142 = call i32 @__Pyx_modinit_function_export_code()
  %cmp143 = icmp slt i32 %call142, 0
  %lnot145 = xor i1 %cmp143, true
  %lnot147 = xor i1 %lnot145, true
  %lnot.ext148 = zext i1 %lnot147 to i32
  %conv149 = sext i32 %lnot.ext148 to i64
  %expval150 = call i64 @llvm.expect.i64(i64 %conv149, i64 0)
  %tobool151 = icmp ne i64 %expval150, 0
  br i1 %tobool151, label %if.then152, label %if.end153

if.then152:                                       ; preds = %if.end139
  %86 = load ptr, ptr @__pyx_f, align 16, !tbaa !4
  store ptr %86, ptr %__pyx_filename, align 8, !tbaa !4
  %87 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 1, ptr %__pyx_lineno, align 4, !tbaa !10
  %88 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 4435, ptr %__pyx_clineno, align 4, !tbaa !10
  %89 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  br label %__pyx_L1_error

if.end153:                                        ; preds = %if.end139
  %call154 = call i32 @__Pyx_modinit_type_init_code()
  %cmp155 = icmp slt i32 %call154, 0
  %lnot157 = xor i1 %cmp155, true
  %lnot159 = xor i1 %lnot157, true
  %lnot.ext160 = zext i1 %lnot159 to i32
  %conv161 = sext i32 %lnot.ext160 to i64
  %expval162 = call i64 @llvm.expect.i64(i64 %conv161, i64 0)
  %tobool163 = icmp ne i64 %expval162, 0
  br i1 %tobool163, label %if.then164, label %if.end165

if.then164:                                       ; preds = %if.end153
  %90 = load ptr, ptr @__pyx_f, align 16, !tbaa !4
  store ptr %90, ptr %__pyx_filename, align 8, !tbaa !4
  %91 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 1, ptr %__pyx_lineno, align 4, !tbaa !10
  %92 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 4436, ptr %__pyx_clineno, align 4, !tbaa !10
  %93 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  br label %__pyx_L1_error

if.end165:                                        ; preds = %if.end153
  %call166 = call i32 @__Pyx_modinit_type_import_code()
  %call167 = call i32 @__Pyx_modinit_variable_import_code()
  %call168 = call i32 @__Pyx_modinit_function_import_code()
  %call169 = call ptr @PyDict_New()
  store ptr %call169, ptr %__pyx_t_1, align 8, !tbaa !4
  %94 = load ptr, ptr %__pyx_t_1, align 8, !tbaa !4
  %tobool170 = icmp ne ptr %94, null
  %lnot171 = xor i1 %tobool170, true
  %lnot173 = xor i1 %lnot171, true
  %lnot175 = xor i1 %lnot173, true
  %lnot.ext176 = zext i1 %lnot175 to i32
  %conv177 = sext i32 %lnot.ext176 to i64
  %expval178 = call i64 @llvm.expect.i64(i64 %conv177, i64 0)
  %tobool179 = icmp ne i64 %expval178, 0
  br i1 %tobool179, label %if.then180, label %if.end181

if.then180:                                       ; preds = %if.end165
  %95 = load ptr, ptr @__pyx_f, align 16, !tbaa !4
  store ptr %95, ptr %__pyx_filename, align 8, !tbaa !4
  %96 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 167, ptr %__pyx_lineno, align 4, !tbaa !10
  %97 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 4452, ptr %__pyx_clineno, align 4, !tbaa !10
  %98 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  br label %__pyx_L1_error

if.end181:                                        ; preds = %if.end165
  %call182 = call ptr @__Pyx_CFunc_double____tuple____float____float____float____float____int___to_py(ptr noundef @__pyx_f_5scipy_8optimize_15cython_optimize_6_zeros_bisect_example)
  store ptr %call182, ptr %__pyx_t_2, align 8, !tbaa !4
  %99 = load ptr, ptr %__pyx_t_2, align 8, !tbaa !4
  %tobool183 = icmp ne ptr %99, null
  %lnot184 = xor i1 %tobool183, true
  %lnot186 = xor i1 %lnot184, true
  %lnot188 = xor i1 %lnot186, true
  %lnot.ext189 = zext i1 %lnot188 to i32
  %conv190 = sext i32 %lnot.ext189 to i64
  %expval191 = call i64 @llvm.expect.i64(i64 %conv190, i64 0)
  %tobool192 = icmp ne i64 %expval191, 0
  br i1 %tobool192, label %if.then193, label %if.end194

if.then193:                                       ; preds = %if.end181
  %100 = load ptr, ptr @__pyx_f, align 16, !tbaa !4
  store ptr %100, ptr %__pyx_filename, align 8, !tbaa !4
  %101 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 167, ptr %__pyx_lineno, align 4, !tbaa !10
  %102 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 4454, ptr %__pyx_clineno, align 4, !tbaa !10
  %103 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  br label %__pyx_L1_error

if.end194:                                        ; preds = %if.end181
  %104 = load ptr, ptr %__pyx_t_1, align 8, !tbaa !4
  %105 = load ptr, ptr @__pyx_n_u_bisect, align 8, !tbaa !4
  %106 = load ptr, ptr %__pyx_t_2, align 8, !tbaa !4
  %call195 = call i32 @PyDict_SetItem(ptr noundef %104, ptr noundef %105, ptr noundef %106)
  %cmp196 = icmp slt i32 %call195, 0
  br i1 %cmp196, label %if.then198, label %if.end199

if.then198:                                       ; preds = %if.end194
  %107 = load ptr, ptr @__pyx_f, align 16, !tbaa !4
  store ptr %107, ptr %__pyx_filename, align 8, !tbaa !4
  %108 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 167, ptr %__pyx_lineno, align 4, !tbaa !10
  %109 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 4456, ptr %__pyx_clineno, align 4, !tbaa !10
  %110 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  br label %__pyx_L1_error

if.end199:                                        ; preds = %if.end194
  %111 = load ptr, ptr %__pyx_t_2, align 8, !tbaa !4
  call void @Py_DECREF(ptr noundef %111)
  store ptr null, ptr %__pyx_t_2, align 8, !tbaa !4
  %call200 = call ptr @__Pyx_CFunc_double____tuple____float____float____float____float____int___to_py(ptr noundef @__pyx_f_5scipy_8optimize_15cython_optimize_6_zeros_ridder_example)
  store ptr %call200, ptr %__pyx_t_2, align 8, !tbaa !4
  %112 = load ptr, ptr %__pyx_t_2, align 8, !tbaa !4
  %tobool201 = icmp ne ptr %112, null
  %lnot202 = xor i1 %tobool201, true
  %lnot204 = xor i1 %lnot202, true
  %lnot206 = xor i1 %lnot204, true
  %lnot.ext207 = zext i1 %lnot206 to i32
  %conv208 = sext i32 %lnot.ext207 to i64
  %expval209 = call i64 @llvm.expect.i64(i64 %conv208, i64 0)
  %tobool210 = icmp ne i64 %expval209, 0
  br i1 %tobool210, label %if.then211, label %if.end212

if.then211:                                       ; preds = %if.end199
  %113 = load ptr, ptr @__pyx_f, align 16, !tbaa !4
  store ptr %113, ptr %__pyx_filename, align 8, !tbaa !4
  %114 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 168, ptr %__pyx_lineno, align 4, !tbaa !10
  %115 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 4466, ptr %__pyx_clineno, align 4, !tbaa !10
  %116 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  br label %__pyx_L1_error

if.end212:                                        ; preds = %if.end199
  %117 = load ptr, ptr %__pyx_t_1, align 8, !tbaa !4
  %118 = load ptr, ptr @__pyx_n_u_ridder, align 8, !tbaa !4
  %119 = load ptr, ptr %__pyx_t_2, align 8, !tbaa !4
  %call213 = call i32 @PyDict_SetItem(ptr noundef %117, ptr noundef %118, ptr noundef %119)
  %cmp214 = icmp slt i32 %call213, 0
  br i1 %cmp214, label %if.then216, label %if.end217

if.then216:                                       ; preds = %if.end212
  %120 = load ptr, ptr @__pyx_f, align 16, !tbaa !4
  store ptr %120, ptr %__pyx_filename, align 8, !tbaa !4
  %121 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 167, ptr %__pyx_lineno, align 4, !tbaa !10
  %122 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 4468, ptr %__pyx_clineno, align 4, !tbaa !10
  %123 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  br label %__pyx_L1_error

if.end217:                                        ; preds = %if.end212
  %124 = load ptr, ptr %__pyx_t_2, align 8, !tbaa !4
  call void @Py_DECREF(ptr noundef %124)
  store ptr null, ptr %__pyx_t_2, align 8, !tbaa !4
  %call218 = call ptr @__Pyx_CFunc_double____tuple____float____float____float____float____int___to_py(ptr noundef @__pyx_f_5scipy_8optimize_15cython_optimize_6_zeros_brenth_example)
  store ptr %call218, ptr %__pyx_t_2, align 8, !tbaa !4
  %125 = load ptr, ptr %__pyx_t_2, align 8, !tbaa !4
  %tobool219 = icmp ne ptr %125, null
  %lnot220 = xor i1 %tobool219, true
  %lnot222 = xor i1 %lnot220, true
  %lnot224 = xor i1 %lnot222, true
  %lnot.ext225 = zext i1 %lnot224 to i32
  %conv226 = sext i32 %lnot.ext225 to i64
  %expval227 = call i64 @llvm.expect.i64(i64 %conv226, i64 0)
  %tobool228 = icmp ne i64 %expval227, 0
  br i1 %tobool228, label %if.then229, label %if.end230

if.then229:                                       ; preds = %if.end217
  %126 = load ptr, ptr @__pyx_f, align 16, !tbaa !4
  store ptr %126, ptr %__pyx_filename, align 8, !tbaa !4
  %127 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 169, ptr %__pyx_lineno, align 4, !tbaa !10
  %128 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 4478, ptr %__pyx_clineno, align 4, !tbaa !10
  %129 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  br label %__pyx_L1_error

if.end230:                                        ; preds = %if.end217
  %130 = load ptr, ptr %__pyx_t_1, align 8, !tbaa !4
  %131 = load ptr, ptr @__pyx_n_u_brenth, align 8, !tbaa !4
  %132 = load ptr, ptr %__pyx_t_2, align 8, !tbaa !4
  %call231 = call i32 @PyDict_SetItem(ptr noundef %130, ptr noundef %131, ptr noundef %132)
  %cmp232 = icmp slt i32 %call231, 0
  br i1 %cmp232, label %if.then234, label %if.end235

if.then234:                                       ; preds = %if.end230
  %133 = load ptr, ptr @__pyx_f, align 16, !tbaa !4
  store ptr %133, ptr %__pyx_filename, align 8, !tbaa !4
  %134 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 167, ptr %__pyx_lineno, align 4, !tbaa !10
  %135 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 4480, ptr %__pyx_clineno, align 4, !tbaa !10
  %136 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  br label %__pyx_L1_error

if.end235:                                        ; preds = %if.end230
  %137 = load ptr, ptr %__pyx_t_2, align 8, !tbaa !4
  call void @Py_DECREF(ptr noundef %137)
  store ptr null, ptr %__pyx_t_2, align 8, !tbaa !4
  %call236 = call ptr @__Pyx_CFunc_double____tuple____float____float____float____float____int___to_py(ptr noundef @__pyx_f_5scipy_8optimize_15cython_optimize_6_zeros_brentq_example)
  store ptr %call236, ptr %__pyx_t_2, align 8, !tbaa !4
  %138 = load ptr, ptr %__pyx_t_2, align 8, !tbaa !4
  %tobool237 = icmp ne ptr %138, null
  %lnot238 = xor i1 %tobool237, true
  %lnot240 = xor i1 %lnot238, true
  %lnot242 = xor i1 %lnot240, true
  %lnot.ext243 = zext i1 %lnot242 to i32
  %conv244 = sext i32 %lnot.ext243 to i64
  %expval245 = call i64 @llvm.expect.i64(i64 %conv244, i64 0)
  %tobool246 = icmp ne i64 %expval245, 0
  br i1 %tobool246, label %if.then247, label %if.end248

if.then247:                                       ; preds = %if.end235
  %139 = load ptr, ptr @__pyx_f, align 16, !tbaa !4
  store ptr %139, ptr %__pyx_filename, align 8, !tbaa !4
  %140 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 170, ptr %__pyx_lineno, align 4, !tbaa !10
  %141 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 4490, ptr %__pyx_clineno, align 4, !tbaa !10
  %142 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  br label %__pyx_L1_error

if.end248:                                        ; preds = %if.end235
  %143 = load ptr, ptr %__pyx_t_1, align 8, !tbaa !4
  %144 = load ptr, ptr @__pyx_n_u_brentq, align 8, !tbaa !4
  %145 = load ptr, ptr %__pyx_t_2, align 8, !tbaa !4
  %call249 = call i32 @PyDict_SetItem(ptr noundef %143, ptr noundef %144, ptr noundef %145)
  %cmp250 = icmp slt i32 %call249, 0
  br i1 %cmp250, label %if.then252, label %if.end253

if.then252:                                       ; preds = %if.end248
  %146 = load ptr, ptr @__pyx_f, align 16, !tbaa !4
  store ptr %146, ptr %__pyx_filename, align 8, !tbaa !4
  %147 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 167, ptr %__pyx_lineno, align 4, !tbaa !10
  %148 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 4492, ptr %__pyx_clineno, align 4, !tbaa !10
  %149 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  br label %__pyx_L1_error

if.end253:                                        ; preds = %if.end248
  %150 = load ptr, ptr %__pyx_t_2, align 8, !tbaa !4
  call void @Py_DECREF(ptr noundef %150)
  store ptr null, ptr %__pyx_t_2, align 8, !tbaa !4
  %151 = load ptr, ptr @__pyx_d, align 8, !tbaa !4
  %152 = load ptr, ptr @__pyx_n_s_EXAMPLES_MAP, align 8, !tbaa !4
  %153 = load ptr, ptr %__pyx_t_1, align 8, !tbaa !4
  %call254 = call i32 @PyDict_SetItem(ptr noundef %151, ptr noundef %152, ptr noundef %153)
  %cmp255 = icmp slt i32 %call254, 0
  br i1 %cmp255, label %if.then257, label %if.end258

if.then257:                                       ; preds = %if.end253
  %154 = load ptr, ptr @__pyx_f, align 16, !tbaa !4
  store ptr %154, ptr %__pyx_filename, align 8, !tbaa !4
  %155 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 166, ptr %__pyx_lineno, align 4, !tbaa !10
  %156 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 4494, ptr %__pyx_clineno, align 4, !tbaa !10
  %157 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  br label %__pyx_L1_error

if.end258:                                        ; preds = %if.end253
  %158 = load ptr, ptr %__pyx_t_1, align 8, !tbaa !4
  call void @Py_DECREF(ptr noundef %158)
  store ptr null, ptr %__pyx_t_1, align 8, !tbaa !4
  %159 = load ptr, ptr @__pyx_n_s_scipy_optimize_cython_optimize, align 8, !tbaa !4
  %call259 = call ptr @PyCMethod_New(ptr noundef @__pyx_mdef_5scipy_8optimize_15cython_optimize_6_zeros_1loop_example, ptr noundef null, ptr noundef %159, ptr noundef null)
  store ptr %call259, ptr %__pyx_t_1, align 8, !tbaa !4
  %160 = load ptr, ptr %__pyx_t_1, align 8, !tbaa !4
  %tobool260 = icmp ne ptr %160, null
  %lnot261 = xor i1 %tobool260, true
  %lnot263 = xor i1 %lnot261, true
  %lnot265 = xor i1 %lnot263, true
  %lnot.ext266 = zext i1 %lnot265 to i32
  %conv267 = sext i32 %lnot.ext266 to i64
  %expval268 = call i64 @llvm.expect.i64(i64 %conv267, i64 0)
  %tobool269 = icmp ne i64 %expval268, 0
  br i1 %tobool269, label %if.then270, label %if.end271

if.then270:                                       ; preds = %if.end258
  %161 = load ptr, ptr @__pyx_f, align 16, !tbaa !4
  store ptr %161, ptr %__pyx_filename, align 8, !tbaa !4
  %162 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 175, ptr %__pyx_lineno, align 4, !tbaa !10
  %163 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 4504, ptr %__pyx_clineno, align 4, !tbaa !10
  %164 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  br label %__pyx_L1_error

if.end271:                                        ; preds = %if.end258
  %165 = load ptr, ptr @__pyx_d, align 8, !tbaa !4
  %166 = load ptr, ptr @__pyx_n_s_loop_example, align 8, !tbaa !4
  %167 = load ptr, ptr %__pyx_t_1, align 8, !tbaa !4
  %call272 = call i32 @PyDict_SetItem(ptr noundef %165, ptr noundef %166, ptr noundef %167)
  %cmp273 = icmp slt i32 %call272, 0
  br i1 %cmp273, label %if.then275, label %if.end276

if.then275:                                       ; preds = %if.end271
  %168 = load ptr, ptr @__pyx_f, align 16, !tbaa !4
  store ptr %168, ptr %__pyx_filename, align 8, !tbaa !4
  %169 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 175, ptr %__pyx_lineno, align 4, !tbaa !10
  %170 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 4506, ptr %__pyx_clineno, align 4, !tbaa !10
  %171 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  br label %__pyx_L1_error

if.end276:                                        ; preds = %if.end271
  %172 = load ptr, ptr %__pyx_t_1, align 8, !tbaa !4
  call void @Py_DECREF(ptr noundef %172)
  store ptr null, ptr %__pyx_t_1, align 8, !tbaa !4
  %173 = load ptr, ptr @__pyx_n_s_scipy_optimize_cython_optimize, align 8, !tbaa !4
  %call277 = call ptr @PyCMethod_New(ptr noundef @__pyx_mdef_5scipy_8optimize_15cython_optimize_6_zeros_3full_output_example, ptr noundef null, ptr noundef %173, ptr noundef null)
  store ptr %call277, ptr %__pyx_t_1, align 8, !tbaa !4
  %174 = load ptr, ptr %__pyx_t_1, align 8, !tbaa !4
  %tobool278 = icmp ne ptr %174, null
  %lnot279 = xor i1 %tobool278, true
  %lnot281 = xor i1 %lnot279, true
  %lnot283 = xor i1 %lnot281, true
  %lnot.ext284 = zext i1 %lnot283 to i32
  %conv285 = sext i32 %lnot.ext284 to i64
  %expval286 = call i64 @llvm.expect.i64(i64 %conv285, i64 0)
  %tobool287 = icmp ne i64 %expval286, 0
  br i1 %tobool287, label %if.then288, label %if.end289

if.then288:                                       ; preds = %if.end276
  %175 = load ptr, ptr @__pyx_f, align 16, !tbaa !4
  store ptr %175, ptr %__pyx_filename, align 8, !tbaa !4
  %176 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 222, ptr %__pyx_lineno, align 4, !tbaa !10
  %177 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 4516, ptr %__pyx_clineno, align 4, !tbaa !10
  %178 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  br label %__pyx_L1_error

if.end289:                                        ; preds = %if.end276
  %179 = load ptr, ptr @__pyx_d, align 8, !tbaa !4
  %180 = load ptr, ptr @__pyx_n_s_full_output_example, align 8, !tbaa !4
  %181 = load ptr, ptr %__pyx_t_1, align 8, !tbaa !4
  %call290 = call i32 @PyDict_SetItem(ptr noundef %179, ptr noundef %180, ptr noundef %181)
  %cmp291 = icmp slt i32 %call290, 0
  br i1 %cmp291, label %if.then293, label %if.end294

if.then293:                                       ; preds = %if.end289
  %182 = load ptr, ptr @__pyx_f, align 16, !tbaa !4
  store ptr %182, ptr %__pyx_filename, align 8, !tbaa !4
  %183 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 222, ptr %__pyx_lineno, align 4, !tbaa !10
  %184 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 4518, ptr %__pyx_clineno, align 4, !tbaa !10
  %185 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  br label %__pyx_L1_error

if.end294:                                        ; preds = %if.end289
  %186 = load ptr, ptr %__pyx_t_1, align 8, !tbaa !4
  call void @Py_DECREF(ptr noundef %186)
  store ptr null, ptr %__pyx_t_1, align 8, !tbaa !4
  %call295 = call ptr @PyDict_New()
  store ptr %call295, ptr %__pyx_t_1, align 8, !tbaa !4
  %187 = load ptr, ptr %__pyx_t_1, align 8, !tbaa !4
  %tobool296 = icmp ne ptr %187, null
  %lnot297 = xor i1 %tobool296, true
  %lnot299 = xor i1 %lnot297, true
  %lnot301 = xor i1 %lnot299, true
  %lnot.ext302 = zext i1 %lnot301 to i32
  %conv303 = sext i32 %lnot.ext302 to i64
  %expval304 = call i64 @llvm.expect.i64(i64 %conv303, i64 0)
  %tobool305 = icmp ne i64 %expval304, 0
  br i1 %tobool305, label %if.then306, label %if.end307

if.then306:                                       ; preds = %if.end294
  %188 = load ptr, ptr @__pyx_f, align 16, !tbaa !4
  store ptr %188, ptr %__pyx_filename, align 8, !tbaa !4
  %189 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 1, ptr %__pyx_lineno, align 4, !tbaa !10
  %190 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 4526, ptr %__pyx_clineno, align 4, !tbaa !10
  %191 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  br label %__pyx_L1_error

if.end307:                                        ; preds = %if.end294
  %192 = load ptr, ptr @__pyx_d, align 8, !tbaa !4
  %193 = load ptr, ptr @__pyx_n_s_test, align 8, !tbaa !4
  %194 = load ptr, ptr %__pyx_t_1, align 8, !tbaa !4
  %call308 = call i32 @PyDict_SetItem(ptr noundef %192, ptr noundef %193, ptr noundef %194)
  %cmp309 = icmp slt i32 %call308, 0
  br i1 %cmp309, label %if.then311, label %if.end312

if.then311:                                       ; preds = %if.end307
  %195 = load ptr, ptr @__pyx_f, align 16, !tbaa !4
  store ptr %195, ptr %__pyx_filename, align 8, !tbaa !4
  %196 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 1, ptr %__pyx_lineno, align 4, !tbaa !10
  %197 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 4528, ptr %__pyx_clineno, align 4, !tbaa !10
  %198 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  br label %__pyx_L1_error

if.end312:                                        ; preds = %if.end307
  %199 = load ptr, ptr %__pyx_t_1, align 8, !tbaa !4
  call void @Py_DECREF(ptr noundef %199)
  store ptr null, ptr %__pyx_t_1, align 8, !tbaa !4
  br label %__pyx_L0

__pyx_L1_error:                                   ; preds = %cleanup, %if.then311, %if.then306, %if.then293, %if.then288, %if.then275, %if.then270, %if.then257, %if.then252, %if.then247, %if.then234, %if.then229, %if.then216, %if.then211, %if.then198, %if.then193, %if.then180, %if.then164, %if.then152, %if.then138, %if.then133, %if.then98, %if.then91, %if.then86, %if.then81, %if.then68, %if.then55, %if.then42, %if.then37, %if.then24, %if.then11, %if.then4
  %200 = load ptr, ptr %__pyx_t_1, align 8, !tbaa !4
  call void @Py_XDECREF(ptr noundef %200)
  %201 = load ptr, ptr %__pyx_t_2, align 8, !tbaa !4
  call void @Py_XDECREF(ptr noundef %201)
  %202 = load ptr, ptr @__pyx_m, align 8, !tbaa !4
  %tobool313 = icmp ne ptr %202, null
  br i1 %tobool313, label %if.then314, label %if.else

if.then314:                                       ; preds = %__pyx_L1_error
  %203 = load ptr, ptr @__pyx_d, align 8, !tbaa !4
  %tobool315 = icmp ne ptr %203, null
  br i1 %tobool315, label %if.then316, label %if.end317

if.then316:                                       ; preds = %if.then314
  %204 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  %205 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  %206 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  call void @__Pyx_AddTraceback(ptr noundef @.str.17, i32 noundef %204, i32 noundef %205, ptr noundef %206)
  br label %if.end317

if.end317:                                        ; preds = %if.then316, %if.then314
  br label %do.body

do.body:                                          ; preds = %if.end317
  call void @llvm.lifetime.start.p0(i64 8, ptr %_py_tmp) #9
  %207 = load ptr, ptr @__pyx_m, align 8, !tbaa !4
  store ptr %207, ptr %_py_tmp, align 8, !tbaa !4
  %208 = load ptr, ptr %_py_tmp, align 8, !tbaa !4
  %cmp318 = icmp ne ptr %208, null
  br i1 %cmp318, label %if.then320, label %if.end321

if.then320:                                       ; preds = %do.body
  store ptr null, ptr @__pyx_m, align 8, !tbaa !4
  %209 = load ptr, ptr %_py_tmp, align 8, !tbaa !4
  call void @Py_DECREF(ptr noundef %209)
  br label %if.end321

if.end321:                                        ; preds = %if.then320, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %_py_tmp) #9
  br label %do.cond

do.cond:                                          ; preds = %if.end321
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end326

if.else:                                          ; preds = %__pyx_L1_error
  %call322 = call ptr @PyErr_Occurred()
  %tobool323 = icmp ne ptr %call322, null
  br i1 %tobool323, label %if.end325, label %if.then324

if.then324:                                       ; preds = %if.else
  %210 = load ptr, ptr @PyExc_ImportError, align 8, !tbaa !4
  call void @PyErr_SetString(ptr noundef %210, ptr noundef @.str.17)
  br label %if.end325

if.end325:                                        ; preds = %if.then324, %if.else
  br label %if.end326

if.end326:                                        ; preds = %if.end325, %do.end
  br label %__pyx_L0

__pyx_L0:                                         ; preds = %if.end326, %if.end312
  %211 = load ptr, ptr @__pyx_m, align 8, !tbaa !4
  %cmp327 = icmp ne ptr %211, null
  %212 = zext i1 %cmp327 to i64
  %cond = select i1 %cmp327, i32 0, i32 -1
  store i32 %cond, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup329

cleanup329:                                       ; preds = %__pyx_L0, %cleanup, %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %__pyx_clineno) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pyx_filename) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %__pyx_lineno) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pyx_t_2) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pyx_t_1) #9
  %213 = load i32, ptr %retval, align 4
  ret i32 %213
}

; Function Attrs: nounwind uwtable
define internal i32 @__Pyx_check_single_interpreter() #0 {
entry:
  %retval = alloca i32, align 4
  %current_id = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %current_id) #9
  %call = call ptr @PyThreadState_Get()
  %interp = getelementptr inbounds %struct._ts, ptr %call, i32 0, i32 2
  %0 = load ptr, ptr %interp, align 8, !tbaa !16
  %call1 = call i64 @PyInterpreterState_GetID(ptr noundef %0)
  store i64 %call1, ptr %current_id, align 8, !tbaa !24
  %1 = load i64, ptr @__Pyx_check_single_interpreter.main_interpreter_id, align 8, !tbaa !24
  %cmp = icmp eq i64 %1, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %current_id, align 8, !tbaa !24
  store i64 %2, ptr @__Pyx_check_single_interpreter.main_interpreter_id, align 8, !tbaa !24
  %3 = load i64, ptr %current_id, align 8, !tbaa !24
  %cmp2 = icmp eq i64 %3, -1
  %lnot = xor i1 %cmp2, true
  %lnot3 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot3 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool = icmp ne i64 %expval, 0
  %4 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i32 -1, i32 0
  store i32 %cond, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %entry
  %5 = load i64, ptr @__Pyx_check_single_interpreter.main_interpreter_id, align 8, !tbaa !24
  %6 = load i64, ptr %current_id, align 8, !tbaa !24
  %cmp4 = icmp ne i64 %5, %6
  %lnot6 = xor i1 %cmp4, true
  %lnot8 = xor i1 %lnot6, true
  %lnot.ext9 = zext i1 %lnot8 to i32
  %conv10 = sext i32 %lnot.ext9 to i64
  %expval11 = call i64 @llvm.expect.i64(i64 %conv10, i64 0)
  %tobool12 = icmp ne i64 %expval11, 0
  br i1 %tobool12, label %if.then13, label %if.end

if.then13:                                        ; preds = %if.else
  %7 = load ptr, ptr @PyExc_ImportError, align 8, !tbaa !4
  call void @PyErr_SetString(ptr noundef %7, ptr noundef @.str.10)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %if.else
  br label %if.end14

if.end14:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then13, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %current_id) #9
  %8 = load i32, ptr %retval, align 4
  ret i32 %8
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @Py_INCREF(ptr noundef %op) #5 {
entry:
  %op.addr = alloca ptr, align 8
  store ptr %op, ptr %op.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %op.addr, align 8, !tbaa !4
  %ob_refcnt = getelementptr inbounds %struct._object, ptr %0, i32 0, i32 0
  %1 = load i64, ptr %ob_refcnt, align 8, !tbaa !25
  %inc = add nsw i64 %1, 1
  store i64 %inc, ptr %ob_refcnt, align 8, !tbaa !25
  ret void
}

declare ptr @PyObject_GetAttrString(ptr noundef, ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #6

declare ptr @PyModule_NewObject(ptr noundef) #4

; Function Attrs: inlinehint nounwind uwtable
define internal void @Py_DECREF(ptr noundef %op) #5 {
entry:
  %op.addr = alloca ptr, align 8
  store ptr %op, ptr %op.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %op.addr, align 8, !tbaa !4
  %ob_refcnt = getelementptr inbounds %struct._object, ptr %0, i32 0, i32 0
  %1 = load i64, ptr %ob_refcnt, align 8, !tbaa !25
  %dec = add nsw i64 %1, -1
  store i64 %dec, ptr %ob_refcnt, align 8, !tbaa !25
  %cmp = icmp eq i64 %dec, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %op.addr, align 8, !tbaa !4
  call void @_Py_Dealloc(ptr noundef %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare ptr @PyModule_GetDict(ptr noundef) #4

; Function Attrs: nounwind uwtable
define internal i32 @__Pyx_copy_spec_to_module(ptr noundef %spec, ptr noundef %moddict, ptr noundef %from_name, ptr noundef %to_name, i32 noundef %allow_none) #0 {
entry:
  %spec.addr = alloca ptr, align 8
  %moddict.addr = alloca ptr, align 8
  %from_name.addr = alloca ptr, align 8
  %to_name.addr = alloca ptr, align 8
  %allow_none.addr = alloca i32, align 4
  %value = alloca ptr, align 8
  %result = alloca i32, align 4
  store ptr %spec, ptr %spec.addr, align 8, !tbaa !4
  store ptr %moddict, ptr %moddict.addr, align 8, !tbaa !4
  store ptr %from_name, ptr %from_name.addr, align 8, !tbaa !4
  store ptr %to_name, ptr %to_name.addr, align 8, !tbaa !4
  store i32 %allow_none, ptr %allow_none.addr, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %value) #9
  %0 = load ptr, ptr %spec.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %from_name.addr, align 8, !tbaa !4
  %call = call ptr @PyObject_GetAttrString(ptr noundef %0, ptr noundef %1)
  store ptr %call, ptr %value, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #9
  store i32 0, ptr %result, align 4, !tbaa !10
  %2 = load ptr, ptr %value, align 8, !tbaa !4
  %tobool = icmp ne ptr %2, null
  %lnot = xor i1 %tobool, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1)
  %tobool2 = icmp ne i64 %expval, 0
  br i1 %tobool2, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %allow_none.addr, align 4, !tbaa !10
  %tobool3 = icmp ne i32 %3, 0
  br i1 %tobool3, label %if.then5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %4 = load ptr, ptr %value, align 8, !tbaa !4
  %cmp = icmp ne ptr %4, @_Py_NoneStruct
  br i1 %cmp, label %if.then5, label %if.end

if.then5:                                         ; preds = %lor.lhs.false, %if.then
  %5 = load ptr, ptr %moddict.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %to_name.addr, align 8, !tbaa !4
  %7 = load ptr, ptr %value, align 8, !tbaa !4
  %call6 = call i32 @PyDict_SetItemString(ptr noundef %5, ptr noundef %6, ptr noundef %7)
  store i32 %call6, ptr %result, align 4, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %if.then5, %lor.lhs.false
  %8 = load ptr, ptr %value, align 8, !tbaa !4
  call void @Py_DECREF(ptr noundef %8)
  br label %if.end12

if.else:                                          ; preds = %entry
  %9 = load ptr, ptr @PyExc_AttributeError, align 8, !tbaa !4
  %call7 = call i32 @PyErr_ExceptionMatches(ptr noundef %9)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then9, label %if.else10

if.then9:                                         ; preds = %if.else
  call void @PyErr_Clear()
  br label %if.end11

if.else10:                                        ; preds = %if.else
  store i32 -1, ptr %result, align 4, !tbaa !10
  br label %if.end11

if.end11:                                         ; preds = %if.else10, %if.then9
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %if.end
  %10 = load i32, ptr %result, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %value) #9
  ret i32 %10
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @Py_XDECREF(ptr noundef %op) #5 {
entry:
  %op.addr = alloca ptr, align 8
  store ptr %op, ptr %op.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %op.addr, align 8, !tbaa !4
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %op.addr, align 8, !tbaa !4
  call void @Py_DECREF(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i64 @PyInterpreterState_GetID(ptr noundef) #4

declare ptr @PyThreadState_Get() #4

declare void @PyErr_SetString(ptr noundef, ptr noundef) #4

declare void @_Py_Dealloc(ptr noundef) #4

declare i32 @PyDict_SetItemString(ptr noundef, ptr noundef, ptr noundef) #4

declare i32 @PyErr_ExceptionMatches(ptr noundef) #4

declare void @PyErr_Clear() #4

; Function Attrs: nounwind uwtable
define internal i32 @__Pyx_check_binary_version() #0 {
entry:
  %retval = alloca i32, align 4
  %ctversion = alloca [5 x i8], align 1
  %same = alloca i32, align 4
  %i = alloca i32, align 4
  %found_dot = alloca i32, align 4
  %rt_from_call = alloca ptr, align 8
  %rtversion = alloca [5 x i8], align 1
  %message = alloca [200 x i8], align 16
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr %ctversion) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %same) #9
  store i32 1, ptr %same, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %found_dot) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %rt_from_call) #9
  %call = call ptr @Py_GetVersion()
  store ptr %call, ptr %rt_from_call, align 8, !tbaa !4
  %arraydecay = getelementptr inbounds [5 x i8], ptr %ctversion, i64 0, i64 0
  %call1 = call i32 (ptr, i64, ptr, ...) @PyOS_snprintf(ptr noundef %arraydecay, i64 noundef 5, ptr noundef @.str.18, i32 noundef 3, i32 noundef 11)
  store i32 0, ptr %found_dot, align 4, !tbaa !10
  store i32 0, ptr %i, align 4, !tbaa !10
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !10
  %cmp = icmp slt i32 %0, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4, !tbaa !10
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [5 x i8], ptr %ctversion, i64 0, i64 %idxprom
  %2 = load i8, ptr %arrayidx, align 1, !tbaa !27
  %tobool = icmp ne i8 %2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %3 = load ptr, ptr %rt_from_call, align 8, !tbaa !4
  %4 = load i32, ptr %i, align 4, !tbaa !10
  %idxprom2 = sext i32 %4 to i64
  %arrayidx3 = getelementptr inbounds i8, ptr %3, i64 %idxprom2
  %5 = load i8, ptr %arrayidx3, align 1, !tbaa !27
  %conv = sext i8 %5 to i32
  %cmp4 = icmp slt i32 %conv, 48
  br i1 %cmp4, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.then
  %6 = load ptr, ptr %rt_from_call, align 8, !tbaa !4
  %7 = load i32, ptr %i, align 4, !tbaa !10
  %idxprom6 = sext i32 %7 to i64
  %arrayidx7 = getelementptr inbounds i8, ptr %6, i64 %idxprom6
  %8 = load i8, ptr %arrayidx7, align 1, !tbaa !27
  %conv8 = sext i8 %8 to i32
  %cmp9 = icmp sgt i32 %conv8, 57
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then
  %9 = phi i1 [ true, %if.then ], [ %cmp9, %lor.rhs ]
  %lor.ext = zext i1 %9 to i32
  store i32 %lor.ext, ptr %same, align 4, !tbaa !10
  br label %for.end

if.end:                                           ; preds = %for.body
  %10 = load ptr, ptr %rt_from_call, align 8, !tbaa !4
  %11 = load i32, ptr %i, align 4, !tbaa !10
  %idxprom11 = sext i32 %11 to i64
  %arrayidx12 = getelementptr inbounds i8, ptr %10, i64 %idxprom11
  %12 = load i8, ptr %arrayidx12, align 1, !tbaa !27
  %conv13 = sext i8 %12 to i32
  %13 = load i32, ptr %i, align 4, !tbaa !10
  %idxprom14 = sext i32 %13 to i64
  %arrayidx15 = getelementptr inbounds [5 x i8], ptr %ctversion, i64 0, i64 %idxprom14
  %14 = load i8, ptr %arrayidx15, align 1, !tbaa !27
  %conv16 = sext i8 %14 to i32
  %cmp17 = icmp ne i32 %conv13, %conv16
  br i1 %cmp17, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end
  store i32 0, ptr %same, align 4, !tbaa !10
  br label %for.end

if.end20:                                         ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end20
  %15 = load i32, ptr %i, align 4, !tbaa !10
  %inc = add nsw i32 %15, 1
  store i32 %inc, ptr %i, align 4, !tbaa !10
  br label %for.cond

for.end:                                          ; preds = %if.then19, %lor.end, %for.cond
  %16 = load i32, ptr %same, align 4, !tbaa !10
  %tobool21 = icmp ne i32 %16, 0
  br i1 %tobool21, label %if.end62, label %if.then22

if.then22:                                        ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 5, ptr %rtversion) #9
  call void @llvm.memset.p0.i64(ptr align 1 %rtversion, i8 0, i64 5, i1 false)
  call void @llvm.lifetime.start.p0(i64 200, ptr %message) #9
  store i32 0, ptr %i, align 4, !tbaa !10
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc53, %if.then22
  %17 = load i32, ptr %i, align 4, !tbaa !10
  %cmp24 = icmp slt i32 %17, 4
  br i1 %cmp24, label %for.body26, label %for.end55

for.body26:                                       ; preds = %for.cond23
  %18 = load ptr, ptr %rt_from_call, align 8, !tbaa !4
  %19 = load i32, ptr %i, align 4, !tbaa !10
  %idxprom27 = sext i32 %19 to i64
  %arrayidx28 = getelementptr inbounds i8, ptr %18, i64 %idxprom27
  %20 = load i8, ptr %arrayidx28, align 1, !tbaa !27
  %conv29 = sext i8 %20 to i32
  %cmp30 = icmp eq i32 %conv29, 46
  br i1 %cmp30, label %if.then32, label %if.else

if.then32:                                        ; preds = %for.body26
  %21 = load i32, ptr %found_dot, align 4, !tbaa !10
  %tobool33 = icmp ne i32 %21, 0
  br i1 %tobool33, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.then32
  br label %for.end55

if.end35:                                         ; preds = %if.then32
  store i32 1, ptr %found_dot, align 4, !tbaa !10
  br label %if.end48

if.else:                                          ; preds = %for.body26
  %22 = load ptr, ptr %rt_from_call, align 8, !tbaa !4
  %23 = load i32, ptr %i, align 4, !tbaa !10
  %idxprom36 = sext i32 %23 to i64
  %arrayidx37 = getelementptr inbounds i8, ptr %22, i64 %idxprom36
  %24 = load i8, ptr %arrayidx37, align 1, !tbaa !27
  %conv38 = sext i8 %24 to i32
  %cmp39 = icmp slt i32 %conv38, 48
  br i1 %cmp39, label %if.then46, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %25 = load ptr, ptr %rt_from_call, align 8, !tbaa !4
  %26 = load i32, ptr %i, align 4, !tbaa !10
  %idxprom41 = sext i32 %26 to i64
  %arrayidx42 = getelementptr inbounds i8, ptr %25, i64 %idxprom41
  %27 = load i8, ptr %arrayidx42, align 1, !tbaa !27
  %conv43 = sext i8 %27 to i32
  %cmp44 = icmp sgt i32 %conv43, 57
  br i1 %cmp44, label %if.then46, label %if.end47

if.then46:                                        ; preds = %lor.lhs.false, %if.else
  br label %for.end55

if.end47:                                         ; preds = %lor.lhs.false
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %if.end35
  %28 = load ptr, ptr %rt_from_call, align 8, !tbaa !4
  %29 = load i32, ptr %i, align 4, !tbaa !10
  %idxprom49 = sext i32 %29 to i64
  %arrayidx50 = getelementptr inbounds i8, ptr %28, i64 %idxprom49
  %30 = load i8, ptr %arrayidx50, align 1, !tbaa !27
  %31 = load i32, ptr %i, align 4, !tbaa !10
  %idxprom51 = sext i32 %31 to i64
  %arrayidx52 = getelementptr inbounds [5 x i8], ptr %rtversion, i64 0, i64 %idxprom51
  store i8 %30, ptr %arrayidx52, align 1, !tbaa !27
  br label %for.inc53

for.inc53:                                        ; preds = %if.end48
  %32 = load i32, ptr %i, align 4, !tbaa !10
  %inc54 = add nsw i32 %32, 1
  store i32 %inc54, ptr %i, align 4, !tbaa !10
  br label %for.cond23

for.end55:                                        ; preds = %if.then46, %if.then34, %for.cond23
  %arraydecay56 = getelementptr inbounds [200 x i8], ptr %message, i64 0, i64 0
  %arraydecay57 = getelementptr inbounds [5 x i8], ptr %ctversion, i64 0, i64 0
  %arraydecay58 = getelementptr inbounds [5 x i8], ptr %rtversion, i64 0, i64 0
  %call59 = call i32 (ptr, i64, ptr, ...) @PyOS_snprintf(ptr noundef %arraydecay56, i64 noundef 200, ptr noundef @.str.19, ptr noundef %arraydecay57, ptr noundef @.str.16, ptr noundef %arraydecay58)
  %arraydecay60 = getelementptr inbounds [200 x i8], ptr %message, i64 0, i64 0
  %call61 = call i32 @PyErr_WarnEx(ptr noundef null, ptr noundef %arraydecay60, i64 noundef 1)
  store i32 %call61, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 200, ptr %message) #9
  call void @llvm.lifetime.end.p0(i64 5, ptr %rtversion) #9
  br label %cleanup

if.end62:                                         ; preds = %for.end
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end62, %for.end55
  call void @llvm.lifetime.end.p0(i64 8, ptr %rt_from_call) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %found_dot) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %same) #9
  call void @llvm.lifetime.end.p0(i64 5, ptr %ctversion) #9
  %33 = load i32, ptr %retval, align 4
  ret i32 %33
}

declare ptr @PyTuple_New(i64 noundef) #4

declare ptr @PyBytes_FromStringAndSize(ptr noundef, i64 noundef) #4

declare ptr @PyUnicode_FromStringAndSize(ptr noundef, i64 noundef) #4

; Function Attrs: nounwind uwtable
define internal i32 @__pyx_CyFunction_init() #0 {
entry:
  %retval = alloca i32, align 4
  %call = call ptr @__Pyx_FetchCommonType(ptr noundef @__pyx_CyFunctionType_type)
  store ptr %call, ptr @__pyx_CyFunctionType, align 8, !tbaa !4
  %0 = load ptr, ptr @__pyx_CyFunctionType, align 8, !tbaa !4
  %cmp = icmp eq ptr %0, null
  %lnot = xor i1 %cmp, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %1 = load i32, ptr %retval, align 4
  ret i32 %1
}

declare ptr @PyImport_AddModule(ptr noundef) #4

declare i32 @PyObject_SetAttrString(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: nounwind uwtable
define internal i32 @__Pyx_InitGlobals() #0 {
entry:
  %retval = alloca i32, align 4
  %call = call i32 @__Pyx_InitStrings(ptr noundef @__pyx_string_tab)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @__pyx_f, align 16, !tbaa !4
  store ptr %0, ptr @__pyx_filename, align 8, !tbaa !4
  %1 = load ptr, ptr @__pyx_filename, align 8, !tbaa !4
  store i32 1, ptr @__pyx_lineno, align 4, !tbaa !10
  %2 = load i32, ptr @__pyx_lineno, align 4, !tbaa !10
  store i32 4142, ptr @__pyx_clineno, align 4, !tbaa !10
  %3 = load i32, ptr @__pyx_clineno, align 4, !tbaa !10
  br label %__pyx_L1_error

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

__pyx_L1_error:                                   ; preds = %if.then
  store i32 -1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %__pyx_L1_error, %if.end
  %4 = load i32, ptr %retval, align 4
  ret i32 %4
}

declare i32 @PyObject_SetAttr(ptr noundef, ptr noundef, ptr noundef) #4

declare ptr @PyImport_GetModuleDict() #4

declare ptr @PyDict_GetItemString(ptr noundef, ptr noundef) #4

; Function Attrs: nounwind uwtable
define internal i32 @__Pyx_InitCachedBuiltins() #0 {
entry:
  %retval = alloca i32, align 4
  %0 = load ptr, ptr @__pyx_n_s_map, align 8, !tbaa !4
  %call = call ptr @__Pyx_GetBuiltinName(ptr noundef %0)
  store ptr %call, ptr @__pyx_builtin_map, align 8, !tbaa !4
  %1 = load ptr, ptr @__pyx_builtin_map, align 8, !tbaa !4
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr @__pyx_f, align 16, !tbaa !4
  store ptr %2, ptr @__pyx_filename, align 8, !tbaa !4
  %3 = load ptr, ptr @__pyx_filename, align 8, !tbaa !4
  store i32 208, ptr @__pyx_lineno, align 4, !tbaa !10
  %4 = load i32, ptr @__pyx_lineno, align 4, !tbaa !10
  store i32 4085, ptr @__pyx_clineno, align 4, !tbaa !10
  %5 = load i32, ptr @__pyx_clineno, align 4, !tbaa !10
  br label %__pyx_L1_error

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr @__pyx_n_s_TypeError, align 8, !tbaa !4
  %call1 = call ptr @__Pyx_GetBuiltinName(ptr noundef %6)
  store ptr %call1, ptr @__pyx_builtin_TypeError, align 8, !tbaa !4
  %7 = load ptr, ptr @__pyx_builtin_TypeError, align 8, !tbaa !4
  %tobool2 = icmp ne ptr %7, null
  br i1 %tobool2, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  %8 = load ptr, ptr getelementptr inbounds ([2 x ptr], ptr @__pyx_f, i64 0, i64 1), align 8, !tbaa !4
  store ptr %8, ptr @__pyx_filename, align 8, !tbaa !4
  %9 = load ptr, ptr @__pyx_filename, align 8, !tbaa !4
  store i32 81, ptr @__pyx_lineno, align 4, !tbaa !10
  %10 = load i32, ptr @__pyx_lineno, align 4, !tbaa !10
  store i32 4086, ptr @__pyx_clineno, align 4, !tbaa !10
  %11 = load i32, ptr @__pyx_clineno, align 4, !tbaa !10
  br label %__pyx_L1_error

if.end4:                                          ; preds = %if.end
  %12 = load ptr, ptr @__pyx_n_s_OverflowError, align 8, !tbaa !4
  %call5 = call ptr @__Pyx_GetBuiltinName(ptr noundef %12)
  store ptr %call5, ptr @__pyx_builtin_OverflowError, align 8, !tbaa !4
  %13 = load ptr, ptr @__pyx_builtin_OverflowError, align 8, !tbaa !4
  %tobool6 = icmp ne ptr %13, null
  br i1 %tobool6, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end4
  %14 = load ptr, ptr getelementptr inbounds ([2 x ptr], ptr @__pyx_f, i64 0, i64 1), align 8, !tbaa !4
  store ptr %14, ptr @__pyx_filename, align 8, !tbaa !4
  %15 = load ptr, ptr @__pyx_filename, align 8, !tbaa !4
  store i32 81, ptr @__pyx_lineno, align 4, !tbaa !10
  %16 = load i32, ptr @__pyx_lineno, align 4, !tbaa !10
  store i32 4087, ptr @__pyx_clineno, align 4, !tbaa !10
  %17 = load i32, ptr @__pyx_clineno, align 4, !tbaa !10
  br label %__pyx_L1_error

if.end8:                                          ; preds = %if.end4
  %18 = load ptr, ptr @__pyx_n_s_enumerate, align 8, !tbaa !4
  %call9 = call ptr @__Pyx_GetBuiltinName(ptr noundef %18)
  store ptr %call9, ptr @__pyx_builtin_enumerate, align 8, !tbaa !4
  %19 = load ptr, ptr @__pyx_builtin_enumerate, align 8, !tbaa !4
  %tobool10 = icmp ne ptr %19, null
  br i1 %tobool10, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.end8
  %20 = load ptr, ptr getelementptr inbounds ([2 x ptr], ptr @__pyx_f, i64 0, i64 1), align 8, !tbaa !4
  store ptr %20, ptr @__pyx_filename, align 8, !tbaa !4
  %21 = load ptr, ptr @__pyx_filename, align 8, !tbaa !4
  store i32 84, ptr @__pyx_lineno, align 4, !tbaa !10
  %22 = load i32, ptr @__pyx_lineno, align 4, !tbaa !10
  store i32 4088, ptr @__pyx_clineno, align 4, !tbaa !10
  %23 = load i32, ptr @__pyx_clineno, align 4, !tbaa !10
  br label %__pyx_L1_error

if.end12:                                         ; preds = %if.end8
  %24 = load ptr, ptr @__pyx_n_s_IndexError, align 8, !tbaa !4
  %call13 = call ptr @__Pyx_GetBuiltinName(ptr noundef %24)
  store ptr %call13, ptr @__pyx_builtin_IndexError, align 8, !tbaa !4
  %25 = load ptr, ptr @__pyx_builtin_IndexError, align 8, !tbaa !4
  %tobool14 = icmp ne ptr %25, null
  br i1 %tobool14, label %if.end16, label %if.then15

if.then15:                                        ; preds = %if.end12
  %26 = load ptr, ptr getelementptr inbounds ([2 x ptr], ptr @__pyx_f, i64 0, i64 1), align 8, !tbaa !4
  store ptr %26, ptr @__pyx_filename, align 8, !tbaa !4
  %27 = load ptr, ptr @__pyx_filename, align 8, !tbaa !4
  store i32 94, ptr @__pyx_lineno, align 4, !tbaa !10
  %28 = load i32, ptr @__pyx_lineno, align 4, !tbaa !10
  store i32 4089, ptr @__pyx_clineno, align 4, !tbaa !10
  %29 = load i32, ptr @__pyx_clineno, align 4, !tbaa !10
  br label %__pyx_L1_error

if.end16:                                         ; preds = %if.end12
  store i32 0, ptr %retval, align 4
  br label %return

__pyx_L1_error:                                   ; preds = %if.then15, %if.then11, %if.then7, %if.then3, %if.then
  store i32 -1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %__pyx_L1_error, %if.end16
  %30 = load i32, ptr %retval, align 4
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define internal i32 @__Pyx_InitCachedConstants() #0 {
entry:
  %retval = alloca i32, align 4
  %0 = load ptr, ptr @__pyx_n_s_args, align 8, !tbaa !4
  %1 = load ptr, ptr @__pyx_n_s_xa, align 8, !tbaa !4
  %2 = load ptr, ptr @__pyx_n_s_xb, align 8, !tbaa !4
  %3 = load ptr, ptr @__pyx_n_s_xtol, align 8, !tbaa !4
  %4 = load ptr, ptr @__pyx_n_s_rtol, align 8, !tbaa !4
  %5 = load ptr, ptr @__pyx_n_s_mitr, align 8, !tbaa !4
  %call = call ptr (i64, ...) @PyTuple_Pack(i64 noundef 6, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5)
  store ptr %call, ptr @__pyx_tuple_, align 8, !tbaa !4
  %6 = load ptr, ptr @__pyx_tuple_, align 8, !tbaa !4
  %tobool = icmp ne ptr %6, null
  %lnot = xor i1 %tobool, true
  %lnot1 = xor i1 %lnot, true
  %lnot2 = xor i1 %lnot1, true
  %lnot.ext = zext i1 %lnot2 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool3 = icmp ne i64 %expval, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr getelementptr inbounds ([2 x ptr], ptr @__pyx_f, i64 0, i64 1), align 8, !tbaa !4
  store ptr %7, ptr @__pyx_filename, align 8, !tbaa !4
  %8 = load ptr, ptr @__pyx_filename, align 8, !tbaa !4
  store i32 65, ptr @__pyx_lineno, align 4, !tbaa !10
  %9 = load i32, ptr @__pyx_lineno, align 4, !tbaa !10
  store i32 4106, ptr @__pyx_clineno, align 4, !tbaa !10
  %10 = load i32, ptr @__pyx_clineno, align 4, !tbaa !10
  br label %__pyx_L1_error

if.end:                                           ; preds = %entry
  %11 = load ptr, ptr @__pyx_empty_bytes, align 8, !tbaa !4
  %12 = load ptr, ptr @__pyx_empty_tuple, align 8, !tbaa !4
  %13 = load ptr, ptr @__pyx_empty_tuple, align 8, !tbaa !4
  %14 = load ptr, ptr @__pyx_tuple_, align 8, !tbaa !4
  %15 = load ptr, ptr @__pyx_empty_tuple, align 8, !tbaa !4
  %16 = load ptr, ptr @__pyx_empty_tuple, align 8, !tbaa !4
  %17 = load ptr, ptr @__pyx_kp_s_stringsource, align 8, !tbaa !4
  %18 = load ptr, ptr @__pyx_n_s_wrap, align 8, !tbaa !4
  %19 = load ptr, ptr @__pyx_empty_bytes, align 8, !tbaa !4
  %call4 = call ptr @__Pyx_PyCode_New(i32 noundef 6, i32 noundef 0, i32 noundef 6, i32 noundef 0, i32 noundef 3, ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef %15, ptr noundef %16, ptr noundef %17, ptr noundef %18, i32 noundef 65, ptr noundef %19)
  store ptr %call4, ptr @__pyx_codeobj__2, align 8, !tbaa !4
  %20 = load ptr, ptr @__pyx_codeobj__2, align 8, !tbaa !4
  %tobool5 = icmp ne ptr %20, null
  %lnot6 = xor i1 %tobool5, true
  %lnot8 = xor i1 %lnot6, true
  %lnot10 = xor i1 %lnot8, true
  %lnot.ext11 = zext i1 %lnot10 to i32
  %conv12 = sext i32 %lnot.ext11 to i64
  %expval13 = call i64 @llvm.expect.i64(i64 %conv12, i64 0)
  %tobool14 = icmp ne i64 %expval13, 0
  br i1 %tobool14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end
  %21 = load ptr, ptr getelementptr inbounds ([2 x ptr], ptr @__pyx_f, i64 0, i64 1), align 8, !tbaa !4
  store ptr %21, ptr @__pyx_filename, align 8, !tbaa !4
  %22 = load ptr, ptr @__pyx_filename, align 8, !tbaa !4
  store i32 65, ptr @__pyx_lineno, align 4, !tbaa !10
  %23 = load i32, ptr @__pyx_lineno, align 4, !tbaa !10
  store i32 4109, ptr @__pyx_clineno, align 4, !tbaa !10
  %24 = load i32, ptr @__pyx_clineno, align 4, !tbaa !10
  br label %__pyx_L1_error

if.end16:                                         ; preds = %if.end
  %25 = load ptr, ptr @__pyx_n_s_method, align 8, !tbaa !4
  %26 = load ptr, ptr @__pyx_n_s_a0, align 8, !tbaa !4
  %27 = load ptr, ptr @__pyx_n_s_args, align 8, !tbaa !4
  %28 = load ptr, ptr @__pyx_n_s_xa, align 8, !tbaa !4
  %29 = load ptr, ptr @__pyx_n_s_xb, align 8, !tbaa !4
  %30 = load ptr, ptr @__pyx_n_s_xtol, align 8, !tbaa !4
  %31 = load ptr, ptr @__pyx_n_s_rtol, align 8, !tbaa !4
  %32 = load ptr, ptr @__pyx_n_s_mitr, align 8, !tbaa !4
  %33 = load ptr, ptr @__pyx_n_s_a0_2, align 8, !tbaa !4
  %call17 = call ptr (i64, ...) @PyTuple_Pack(i64 noundef 9, ptr noundef %25, ptr noundef %26, ptr noundef %27, ptr noundef %28, ptr noundef %29, ptr noundef %30, ptr noundef %31, ptr noundef %32, ptr noundef %33)
  store ptr %call17, ptr @__pyx_tuple__3, align 8, !tbaa !4
  %34 = load ptr, ptr @__pyx_tuple__3, align 8, !tbaa !4
  %tobool18 = icmp ne ptr %34, null
  %lnot19 = xor i1 %tobool18, true
  %lnot21 = xor i1 %lnot19, true
  %lnot23 = xor i1 %lnot21, true
  %lnot.ext24 = zext i1 %lnot23 to i32
  %conv25 = sext i32 %lnot.ext24 to i64
  %expval26 = call i64 @llvm.expect.i64(i64 %conv25, i64 0)
  %tobool27 = icmp ne i64 %expval26, 0
  br i1 %tobool27, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end16
  %35 = load ptr, ptr @__pyx_f, align 16, !tbaa !4
  store ptr %35, ptr @__pyx_filename, align 8, !tbaa !4
  %36 = load ptr, ptr @__pyx_filename, align 8, !tbaa !4
  store i32 175, ptr @__pyx_lineno, align 4, !tbaa !10
  %37 = load i32, ptr @__pyx_lineno, align 4, !tbaa !10
  store i32 4118, ptr @__pyx_clineno, align 4, !tbaa !10
  %38 = load i32, ptr @__pyx_clineno, align 4, !tbaa !10
  br label %__pyx_L1_error

if.end29:                                         ; preds = %if.end16
  %39 = load ptr, ptr @__pyx_empty_bytes, align 8, !tbaa !4
  %40 = load ptr, ptr @__pyx_empty_tuple, align 8, !tbaa !4
  %41 = load ptr, ptr @__pyx_empty_tuple, align 8, !tbaa !4
  %42 = load ptr, ptr @__pyx_tuple__3, align 8, !tbaa !4
  %43 = load ptr, ptr @__pyx_empty_tuple, align 8, !tbaa !4
  %44 = load ptr, ptr @__pyx_empty_tuple, align 8, !tbaa !4
  %45 = load ptr, ptr @__pyx_kp_s_scipy_optimize_cython_optimize_2, align 8, !tbaa !4
  %46 = load ptr, ptr @__pyx_n_s_loop_example, align 8, !tbaa !4
  %47 = load ptr, ptr @__pyx_empty_bytes, align 8, !tbaa !4
  %call30 = call ptr @__Pyx_PyCode_New(i32 noundef 8, i32 noundef 0, i32 noundef 9, i32 noundef 0, i32 noundef 3, ptr noundef %39, ptr noundef %40, ptr noundef %41, ptr noundef %42, ptr noundef %43, ptr noundef %44, ptr noundef %45, ptr noundef %46, i32 noundef 175, ptr noundef %47)
  store ptr %call30, ptr @__pyx_codeobj__4, align 8, !tbaa !4
  %48 = load ptr, ptr @__pyx_codeobj__4, align 8, !tbaa !4
  %tobool31 = icmp ne ptr %48, null
  %lnot32 = xor i1 %tobool31, true
  %lnot34 = xor i1 %lnot32, true
  %lnot36 = xor i1 %lnot34, true
  %lnot.ext37 = zext i1 %lnot36 to i32
  %conv38 = sext i32 %lnot.ext37 to i64
  %expval39 = call i64 @llvm.expect.i64(i64 %conv38, i64 0)
  %tobool40 = icmp ne i64 %expval39, 0
  br i1 %tobool40, label %if.then41, label %if.end42

if.then41:                                        ; preds = %if.end29
  %49 = load ptr, ptr @__pyx_f, align 16, !tbaa !4
  store ptr %49, ptr @__pyx_filename, align 8, !tbaa !4
  %50 = load ptr, ptr @__pyx_filename, align 8, !tbaa !4
  store i32 175, ptr @__pyx_lineno, align 4, !tbaa !10
  %51 = load i32, ptr @__pyx_lineno, align 4, !tbaa !10
  store i32 4121, ptr @__pyx_clineno, align 4, !tbaa !10
  %52 = load i32, ptr @__pyx_clineno, align 4, !tbaa !10
  br label %__pyx_L1_error

if.end42:                                         ; preds = %if.end29
  %53 = load ptr, ptr @__pyx_n_s_args, align 8, !tbaa !4
  %54 = load ptr, ptr @__pyx_n_s_xa, align 8, !tbaa !4
  %55 = load ptr, ptr @__pyx_n_s_xb, align 8, !tbaa !4
  %56 = load ptr, ptr @__pyx_n_s_xtol, align 8, !tbaa !4
  %57 = load ptr, ptr @__pyx_n_s_rtol, align 8, !tbaa !4
  %58 = load ptr, ptr @__pyx_n_s_mitr, align 8, !tbaa !4
  %call43 = call ptr (i64, ...) @PyTuple_Pack(i64 noundef 6, ptr noundef %53, ptr noundef %54, ptr noundef %55, ptr noundef %56, ptr noundef %57, ptr noundef %58)
  store ptr %call43, ptr @__pyx_tuple__5, align 8, !tbaa !4
  %59 = load ptr, ptr @__pyx_tuple__5, align 8, !tbaa !4
  %tobool44 = icmp ne ptr %59, null
  %lnot45 = xor i1 %tobool44, true
  %lnot47 = xor i1 %lnot45, true
  %lnot49 = xor i1 %lnot47, true
  %lnot.ext50 = zext i1 %lnot49 to i32
  %conv51 = sext i32 %lnot.ext50 to i64
  %expval52 = call i64 @llvm.expect.i64(i64 %conv51, i64 0)
  %tobool53 = icmp ne i64 %expval52, 0
  br i1 %tobool53, label %if.then54, label %if.end55

if.then54:                                        ; preds = %if.end42
  %60 = load ptr, ptr @__pyx_f, align 16, !tbaa !4
  store ptr %60, ptr @__pyx_filename, align 8, !tbaa !4
  %61 = load ptr, ptr @__pyx_filename, align 8, !tbaa !4
  store i32 222, ptr @__pyx_lineno, align 4, !tbaa !10
  %62 = load i32, ptr @__pyx_lineno, align 4, !tbaa !10
  store i32 4130, ptr @__pyx_clineno, align 4, !tbaa !10
  %63 = load i32, ptr @__pyx_clineno, align 4, !tbaa !10
  br label %__pyx_L1_error

if.end55:                                         ; preds = %if.end42
  %64 = load ptr, ptr @__pyx_empty_bytes, align 8, !tbaa !4
  %65 = load ptr, ptr @__pyx_empty_tuple, align 8, !tbaa !4
  %66 = load ptr, ptr @__pyx_empty_tuple, align 8, !tbaa !4
  %67 = load ptr, ptr @__pyx_tuple__5, align 8, !tbaa !4
  %68 = load ptr, ptr @__pyx_empty_tuple, align 8, !tbaa !4
  %69 = load ptr, ptr @__pyx_empty_tuple, align 8, !tbaa !4
  %70 = load ptr, ptr @__pyx_kp_s_scipy_optimize_cython_optimize_2, align 8, !tbaa !4
  %71 = load ptr, ptr @__pyx_n_s_full_output_example, align 8, !tbaa !4
  %72 = load ptr, ptr @__pyx_empty_bytes, align 8, !tbaa !4
  %call56 = call ptr @__Pyx_PyCode_New(i32 noundef 6, i32 noundef 0, i32 noundef 6, i32 noundef 0, i32 noundef 3, ptr noundef %64, ptr noundef %65, ptr noundef %66, ptr noundef %67, ptr noundef %68, ptr noundef %69, ptr noundef %70, ptr noundef %71, i32 noundef 222, ptr noundef %72)
  store ptr %call56, ptr @__pyx_codeobj__6, align 8, !tbaa !4
  %73 = load ptr, ptr @__pyx_codeobj__6, align 8, !tbaa !4
  %tobool57 = icmp ne ptr %73, null
  %lnot58 = xor i1 %tobool57, true
  %lnot60 = xor i1 %lnot58, true
  %lnot62 = xor i1 %lnot60, true
  %lnot.ext63 = zext i1 %lnot62 to i32
  %conv64 = sext i32 %lnot.ext63 to i64
  %expval65 = call i64 @llvm.expect.i64(i64 %conv64, i64 0)
  %tobool66 = icmp ne i64 %expval65, 0
  br i1 %tobool66, label %if.then67, label %if.end68

if.then67:                                        ; preds = %if.end55
  %74 = load ptr, ptr @__pyx_f, align 16, !tbaa !4
  store ptr %74, ptr @__pyx_filename, align 8, !tbaa !4
  %75 = load ptr, ptr @__pyx_filename, align 8, !tbaa !4
  store i32 222, ptr @__pyx_lineno, align 4, !tbaa !10
  %76 = load i32, ptr @__pyx_lineno, align 4, !tbaa !10
  store i32 4133, ptr @__pyx_clineno, align 4, !tbaa !10
  %77 = load i32, ptr @__pyx_clineno, align 4, !tbaa !10
  br label %__pyx_L1_error

if.end68:                                         ; preds = %if.end55
  store i32 0, ptr %retval, align 4
  br label %return

__pyx_L1_error:                                   ; preds = %if.then67, %if.then54, %if.then41, %if.then28, %if.then15, %if.then
  store i32 -1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %__pyx_L1_error, %if.end68
  %78 = load i32, ptr %retval, align 4
  ret i32 %78
}

; Function Attrs: nounwind uwtable
define internal i32 @__Pyx_modinit_global_init_code() #0 {
entry:
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @__Pyx_modinit_variable_export_code() #0 {
entry:
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @__Pyx_modinit_function_export_code() #0 {
entry:
  %retval = alloca i32, align 4
  %__pyx_lineno = alloca i32, align 4
  %__pyx_filename = alloca ptr, align 8
  %__pyx_clineno = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %__pyx_lineno) #9
  store i32 0, ptr %__pyx_lineno, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pyx_filename) #9
  store ptr null, ptr %__pyx_filename, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %__pyx_clineno) #9
  store i32 0, ptr %__pyx_clineno, align 4, !tbaa !10
  %call = call i32 @__Pyx_ExportFunction(ptr noundef @.str.74, ptr noundef @__pyx_f_5scipy_8optimize_15cython_optimize_6_zeros_bisect, ptr noundef @.str.75)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @__pyx_f, align 16, !tbaa !4
  store ptr %0, ptr %__pyx_filename, align 8, !tbaa !4
  %1 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 1, ptr %__pyx_lineno, align 4, !tbaa !10
  %2 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 4179, ptr %__pyx_clineno, align 4, !tbaa !10
  %3 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  br label %__pyx_L1_error

if.end:                                           ; preds = %entry
  %call1 = call i32 @__Pyx_ExportFunction(ptr noundef @.str.76, ptr noundef @__pyx_f_5scipy_8optimize_15cython_optimize_6_zeros_ridder, ptr noundef @.str.75)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %4 = load ptr, ptr @__pyx_f, align 16, !tbaa !4
  store ptr %4, ptr %__pyx_filename, align 8, !tbaa !4
  %5 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 1, ptr %__pyx_lineno, align 4, !tbaa !10
  %6 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 4180, ptr %__pyx_clineno, align 4, !tbaa !10
  %7 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  br label %__pyx_L1_error

if.end4:                                          ; preds = %if.end
  %call5 = call i32 @__Pyx_ExportFunction(ptr noundef @.str.77, ptr noundef @__pyx_f_5scipy_8optimize_15cython_optimize_6_zeros_brenth, ptr noundef @.str.75)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  %8 = load ptr, ptr @__pyx_f, align 16, !tbaa !4
  store ptr %8, ptr %__pyx_filename, align 8, !tbaa !4
  %9 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 1, ptr %__pyx_lineno, align 4, !tbaa !10
  %10 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 4181, ptr %__pyx_clineno, align 4, !tbaa !10
  %11 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  br label %__pyx_L1_error

if.end8:                                          ; preds = %if.end4
  %call9 = call i32 @__Pyx_ExportFunction(ptr noundef @.str.78, ptr noundef @__pyx_f_5scipy_8optimize_15cython_optimize_6_zeros_brentq, ptr noundef @.str.75)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end8
  %12 = load ptr, ptr @__pyx_f, align 16, !tbaa !4
  store ptr %12, ptr %__pyx_filename, align 8, !tbaa !4
  %13 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 1, ptr %__pyx_lineno, align 4, !tbaa !10
  %14 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 4182, ptr %__pyx_clineno, align 4, !tbaa !10
  %15 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  br label %__pyx_L1_error

if.end12:                                         ; preds = %if.end8
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

__pyx_L1_error:                                   ; preds = %if.then11, %if.then7, %if.then3, %if.then
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %__pyx_L1_error, %if.end12
  call void @llvm.lifetime.end.p0(i64 4, ptr %__pyx_clineno) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pyx_filename) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %__pyx_lineno) #9
  %16 = load i32, ptr %retval, align 4
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal i32 @__Pyx_modinit_type_init_code() #0 {
entry:
  %retval = alloca i32, align 4
  %__pyx_lineno = alloca i32, align 4
  %__pyx_filename = alloca ptr, align 8
  %__pyx_clineno = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %__pyx_lineno) #9
  store i32 0, ptr %__pyx_lineno, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pyx_filename) #9
  store ptr null, ptr %__pyx_filename, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %__pyx_clineno) #9
  store i32 0, ptr %__pyx_clineno, align 4, !tbaa !10
  %call = call i32 @PyType_Ready(ptr noundef @__pyx_type_5scipy_8optimize_15cython_optimize_6_zeros___pyx_scope_struct__loop_example)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @__pyx_f, align 16, !tbaa !4
  store ptr %0, ptr %__pyx_filename, align 8, !tbaa !4
  %1 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 175, ptr %__pyx_lineno, align 4, !tbaa !10
  %2 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 4197, ptr %__pyx_clineno, align 4, !tbaa !10
  %3 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  br label %__pyx_L1_error

if.end:                                           ; preds = %entry
  %4 = load i64, ptr getelementptr inbounds (%struct._typeobject, ptr @__pyx_type_5scipy_8optimize_15cython_optimize_6_zeros___pyx_scope_struct__loop_example, i32 0, i32 34), align 8, !tbaa !28
  %tobool = icmp ne i64 %4, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %if.end
  %5 = load ptr, ptr getelementptr inbounds (%struct._typeobject, ptr @__pyx_type_5scipy_8optimize_15cython_optimize_6_zeros___pyx_scope_struct__loop_example, i32 0, i32 16), align 8, !tbaa !31
  %cmp1 = icmp eq ptr %5, @PyObject_GenericGetAttr
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  %6 = phi i1 [ false, %if.end ], [ %cmp1, %land.rhs ]
  %lnot = xor i1 %6, true
  %lnot2 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot2 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1)
  %tobool3 = icmp ne i64 %expval, 0
  br i1 %tobool3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %land.end
  store ptr @PyObject_GenericGetAttr, ptr getelementptr inbounds (%struct._typeobject, ptr @__pyx_type_5scipy_8optimize_15cython_optimize_6_zeros___pyx_scope_struct__loop_example, i32 0, i32 16), align 8, !tbaa !31
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %land.end
  store ptr @__pyx_type_5scipy_8optimize_15cython_optimize_6_zeros___pyx_scope_struct__loop_example, ptr @__pyx_ptype_5scipy_8optimize_15cython_optimize_6_zeros___pyx_scope_struct__loop_example, align 8, !tbaa !4
  %call6 = call i32 @PyType_Ready(ptr noundef @__pyx_scope_struct____Pyx_CFunc_double____tuple____float____float____float____float____int___to_py)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end5
  %7 = load ptr, ptr getelementptr inbounds ([2 x ptr], ptr @__pyx_f, i64 0, i64 1), align 8, !tbaa !4
  store ptr %7, ptr %__pyx_filename, align 8, !tbaa !4
  %8 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 64, ptr %__pyx_lineno, align 4, !tbaa !10
  %9 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 4205, ptr %__pyx_clineno, align 4, !tbaa !10
  %10 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  br label %__pyx_L1_error

if.end10:                                         ; preds = %if.end5
  %11 = load i64, ptr getelementptr inbounds (%struct._typeobject, ptr @__pyx_scope_struct____Pyx_CFunc_double____tuple____float____float____float____float____int___to_py, i32 0, i32 34), align 8, !tbaa !28
  %tobool11 = icmp ne i64 %11, 0
  br i1 %tobool11, label %land.end15, label %land.rhs12

land.rhs12:                                       ; preds = %if.end10
  %12 = load ptr, ptr getelementptr inbounds (%struct._typeobject, ptr @__pyx_scope_struct____Pyx_CFunc_double____tuple____float____float____float____float____int___to_py, i32 0, i32 16), align 8, !tbaa !31
  %cmp13 = icmp eq ptr %12, @PyObject_GenericGetAttr
  br label %land.end15

land.end15:                                       ; preds = %land.rhs12, %if.end10
  %13 = phi i1 [ false, %if.end10 ], [ %cmp13, %land.rhs12 ]
  %lnot16 = xor i1 %13, true
  %lnot18 = xor i1 %lnot16, true
  %lnot.ext19 = zext i1 %lnot18 to i32
  %conv20 = sext i32 %lnot.ext19 to i64
  %expval21 = call i64 @llvm.expect.i64(i64 %conv20, i64 1)
  %tobool22 = icmp ne i64 %expval21, 0
  br i1 %tobool22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %land.end15
  store ptr @PyObject_GenericGetAttr, ptr getelementptr inbounds (%struct._typeobject, ptr @__pyx_scope_struct____Pyx_CFunc_double____tuple____float____float____float____float____int___to_py, i32 0, i32 16), align 8, !tbaa !31
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %land.end15
  store ptr @__pyx_scope_struct____Pyx_CFunc_double____tuple____float____float____float____float____int___to_py, ptr @__pyx_ptype___pyx_scope_struct____Pyx_CFunc_double____tuple____float____float____float____float____int___to_py, align 8, !tbaa !4
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

__pyx_L1_error:                                   ; preds = %if.then9, %if.then
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %__pyx_L1_error, %if.end24
  call void @llvm.lifetime.end.p0(i64 4, ptr %__pyx_clineno) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pyx_filename) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %__pyx_lineno) #9
  %14 = load i32, ptr %retval, align 4
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define internal i32 @__Pyx_modinit_type_import_code() #0 {
entry:
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @__Pyx_modinit_variable_import_code() #0 {
entry:
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @__Pyx_modinit_function_import_code() #0 {
entry:
  ret i32 0
}

declare ptr @PyDict_New() #4

; Function Attrs: nounwind uwtable
define internal ptr @__Pyx_CFunc_double____tuple____float____float____float____float____int___to_py(ptr noundef %__pyx_v_f) #0 {
entry:
  %__pyx_v_f.addr = alloca ptr, align 8
  %__pyx_cur_scope = alloca ptr, align 8
  %__pyx_v_wrap = alloca ptr, align 8
  %__pyx_r = alloca ptr, align 8
  %__pyx_t_1 = alloca ptr, align 8
  %__pyx_lineno = alloca i32, align 4
  %__pyx_filename = alloca ptr, align 8
  %__pyx_clineno = alloca i32, align 4
  store ptr %__pyx_v_f, ptr %__pyx_v_f.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pyx_cur_scope) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pyx_v_wrap) #9
  store ptr null, ptr %__pyx_v_wrap, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pyx_r) #9
  store ptr null, ptr %__pyx_r, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pyx_t_1) #9
  store ptr null, ptr %__pyx_t_1, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %__pyx_lineno) #9
  store i32 0, ptr %__pyx_lineno, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pyx_filename) #9
  store ptr null, ptr %__pyx_filename, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %__pyx_clineno) #9
  store i32 0, ptr %__pyx_clineno, align 4, !tbaa !10
  %0 = load ptr, ptr @__pyx_ptype___pyx_scope_struct____Pyx_CFunc_double____tuple____float____float____float____float____int___to_py, align 8, !tbaa !4
  %1 = load ptr, ptr @__pyx_empty_tuple, align 8, !tbaa !4
  %call = call ptr @__pyx_tp_new___pyx_scope_struct____Pyx_CFunc_double____tuple____float____float____float____float____int___to_py(ptr noundef %0, ptr noundef %1, ptr noundef null)
  store ptr %call, ptr %__pyx_cur_scope, align 8, !tbaa !4
  %2 = load ptr, ptr %__pyx_cur_scope, align 8, !tbaa !4
  %tobool = icmp ne ptr %2, null
  %lnot = xor i1 %tobool, true
  %lnot1 = xor i1 %lnot, true
  %lnot2 = xor i1 %lnot1, true
  %lnot.ext = zext i1 %lnot2 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool3 = icmp ne i64 %expval, 0
  br i1 %tobool3, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store ptr @_Py_NoneStruct, ptr %__pyx_cur_scope, align 8, !tbaa !4
  call void @Py_INCREF(ptr noundef @_Py_NoneStruct)
  %3 = load ptr, ptr getelementptr inbounds ([2 x ptr], ptr @__pyx_f, i64 0, i64 1), align 8, !tbaa !4
  store ptr %3, ptr %__pyx_filename, align 8, !tbaa !4
  %4 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 64, ptr %__pyx_lineno, align 4, !tbaa !10
  %5 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 3370, ptr %__pyx_clineno, align 4, !tbaa !10
  %6 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  br label %__pyx_L1_error

if.else:                                          ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %if.else
  %7 = load ptr, ptr %__pyx_v_f.addr, align 8, !tbaa !4
  %8 = load ptr, ptr %__pyx_cur_scope, align 8, !tbaa !4
  %__pyx_v_f4 = getelementptr inbounds %struct.__pyx_obj___pyx_scope_struct____Pyx_CFunc_double____tuple____float____float____float____float____int___to_py, ptr %8, i32 0, i32 1
  store ptr %7, ptr %__pyx_v_f4, align 8, !tbaa !32
  %9 = load ptr, ptr @__pyx_n_s_Pyx_CFunc_double____tuple____f, align 8, !tbaa !4
  %10 = load ptr, ptr %__pyx_cur_scope, align 8, !tbaa !4
  %11 = load ptr, ptr @__pyx_n_s_cfunc_to_py, align 8, !tbaa !4
  %12 = load ptr, ptr @__pyx_d, align 8, !tbaa !4
  %13 = load ptr, ptr @__pyx_codeobj__2, align 8, !tbaa !4
  %call5 = call ptr @__Pyx_CyFunction_New(ptr noundef @__pyx_mdef_11cfunc_dot_to_py_78__Pyx_CFunc_double____tuple____float____float____float____float____int___to_py_1wrap, i32 noundef 0, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %13)
  store ptr %call5, ptr %__pyx_t_1, align 8, !tbaa !4
  %14 = load ptr, ptr %__pyx_t_1, align 8, !tbaa !4
  %tobool6 = icmp ne ptr %14, null
  %lnot7 = xor i1 %tobool6, true
  %lnot9 = xor i1 %lnot7, true
  %lnot11 = xor i1 %lnot9, true
  %lnot.ext12 = zext i1 %lnot11 to i32
  %conv13 = sext i32 %lnot.ext12 to i64
  %expval14 = call i64 @llvm.expect.i64(i64 %conv13, i64 0)
  %tobool15 = icmp ne i64 %expval14, 0
  br i1 %tobool15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end
  %15 = load ptr, ptr getelementptr inbounds ([2 x ptr], ptr @__pyx_f, i64 0, i64 1), align 8, !tbaa !4
  store ptr %15, ptr %__pyx_filename, align 8, !tbaa !4
  %16 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 65, ptr %__pyx_lineno, align 4, !tbaa !10
  %17 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 3383, ptr %__pyx_clineno, align 4, !tbaa !10
  %18 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  br label %__pyx_L1_error

if.end17:                                         ; preds = %if.end
  %19 = load ptr, ptr %__pyx_t_1, align 8, !tbaa !4
  store ptr %19, ptr %__pyx_v_wrap, align 8, !tbaa !4
  store ptr null, ptr %__pyx_t_1, align 8, !tbaa !4
  %20 = load ptr, ptr %__pyx_r, align 8, !tbaa !4
  call void @Py_XDECREF(ptr noundef %20)
  %21 = load ptr, ptr %__pyx_v_wrap, align 8, !tbaa !4
  call void @Py_INCREF(ptr noundef %21)
  %22 = load ptr, ptr %__pyx_v_wrap, align 8, !tbaa !4
  store ptr %22, ptr %__pyx_r, align 8, !tbaa !4
  br label %__pyx_L0

__pyx_L1_error:                                   ; preds = %if.then16, %if.then
  %23 = load ptr, ptr %__pyx_t_1, align 8, !tbaa !4
  call void @Py_XDECREF(ptr noundef %23)
  %24 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  %25 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  %26 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  call void @__Pyx_AddTraceback(ptr noundef @.str.82, i32 noundef %24, i32 noundef %25, ptr noundef %26)
  store ptr null, ptr %__pyx_r, align 8, !tbaa !4
  br label %__pyx_L0

__pyx_L0:                                         ; preds = %__pyx_L1_error, %if.end17
  %27 = load ptr, ptr %__pyx_v_wrap, align 8, !tbaa !4
  call void @Py_XDECREF(ptr noundef %27)
  %28 = load ptr, ptr %__pyx_cur_scope, align 8, !tbaa !4
  call void @Py_DECREF(ptr noundef %28)
  %29 = load ptr, ptr %__pyx_r, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 4, ptr %__pyx_clineno) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pyx_filename) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %__pyx_lineno) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pyx_t_1) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pyx_r) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pyx_v_wrap) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pyx_cur_scope) #9
  ret ptr %29
}

; Function Attrs: nounwind uwtable
define internal double @__pyx_f_5scipy_8optimize_15cython_optimize_6_zeros_bisect_example(ptr noundef %__pyx_v_args, float noundef %__pyx_v_xa, float noundef %__pyx_v_xb, float noundef %__pyx_v_xtol, float noundef %__pyx_v_rtol, i32 noundef %__pyx_v_mitr) #0 {
entry:
  %__pyx_v_args.addr = alloca ptr, align 8
  %__pyx_v_xa.addr = alloca float, align 4
  %__pyx_v_xb.addr = alloca float, align 4
  %__pyx_v_xtol.addr = alloca float, align 4
  %__pyx_v_rtol.addr = alloca float, align 4
  %__pyx_v_mitr.addr = alloca i32, align 4
  %__pyx_v_myargs = alloca %struct.__pyx_t_5scipy_8optimize_15cython_optimize_6_zeros_extra_params, align 8
  %__pyx_r = alloca double, align 8
  %__pyx_t_1 = alloca [4 x double], align 16
  %__pyx_lineno = alloca i32, align 4
  %__pyx_filename = alloca ptr, align 8
  %__pyx_clineno = alloca i32, align 4
  store ptr %__pyx_v_args, ptr %__pyx_v_args.addr, align 8, !tbaa !4
  store float %__pyx_v_xa, ptr %__pyx_v_xa.addr, align 4, !tbaa !34
  store float %__pyx_v_xb, ptr %__pyx_v_xb.addr, align 4, !tbaa !34
  store float %__pyx_v_xtol, ptr %__pyx_v_xtol.addr, align 4, !tbaa !34
  store float %__pyx_v_rtol, ptr %__pyx_v_rtol.addr, align 4, !tbaa !34
  store i32 %__pyx_v_mitr, ptr %__pyx_v_mitr.addr, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %__pyx_v_myargs) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pyx_r) #9
  call void @llvm.lifetime.start.p0(i64 32, ptr %__pyx_t_1) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %__pyx_lineno) #9
  store i32 0, ptr %__pyx_lineno, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pyx_filename) #9
  store ptr null, ptr %__pyx_filename, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %__pyx_clineno) #9
  store i32 0, ptr %__pyx_clineno, align 4, !tbaa !10
  %0 = load ptr, ptr %__pyx_v_args.addr, align 8, !tbaa !4
  %arraydecay = getelementptr inbounds [4 x double], ptr %__pyx_t_1, i64 0, i64 0
  %call = call i32 @__Pyx_carray_from_py_double(ptr noundef %0, ptr noundef %arraydecay, i64 noundef 4)
  %cmp = icmp slt i32 %call, 0
  %lnot = xor i1 %cmp, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @__pyx_f, align 16, !tbaa !4
  store ptr %1, ptr %__pyx_filename, align 8, !tbaa !4
  %2 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 128, ptr %__pyx_lineno, align 4, !tbaa !10
  %3 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 2278, ptr %__pyx_clineno, align 4, !tbaa !10
  %4 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  br label %__pyx_L1_error

if.end:                                           ; preds = %entry
  %a = getelementptr inbounds %struct.__pyx_t_5scipy_8optimize_15cython_optimize_6_zeros_extra_params, ptr %__pyx_v_myargs, i32 0, i32 0
  %arrayidx = getelementptr inbounds [4 x double], ptr %a, i64 0, i64 0
  %arraydecay2 = getelementptr inbounds [4 x double], ptr %__pyx_t_1, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx, ptr align 16 %arraydecay2, i64 32, i1 false)
  %5 = load float, ptr %__pyx_v_xa.addr, align 4, !tbaa !34
  %conv3 = fpext float %5 to double
  %6 = load float, ptr %__pyx_v_xb.addr, align 4, !tbaa !34
  %conv4 = fpext float %6 to double
  %7 = load float, ptr %__pyx_v_xtol.addr, align 4, !tbaa !34
  %conv5 = fpext float %7 to double
  %8 = load float, ptr %__pyx_v_rtol.addr, align 4, !tbaa !34
  %conv6 = fpext float %8 to double
  %9 = load i32, ptr %__pyx_v_mitr.addr, align 4, !tbaa !10
  %call7 = call double @__pyx_f_5scipy_8optimize_15cython_optimize_6_zeros_bisect(ptr noundef @__pyx_f_5scipy_8optimize_15cython_optimize_6_zeros_f_example, double noundef %conv3, double noundef %conv4, ptr noundef %__pyx_v_myargs, double noundef %conv5, double noundef %conv6, i32 noundef %9, ptr noundef null)
  store double %call7, ptr %__pyx_r, align 8, !tbaa !8
  br label %__pyx_L0

__pyx_L1_error:                                   ; preds = %if.then
  %10 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  %11 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  %12 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  call void @__Pyx_WriteUnraisable(ptr noundef @.str.102, i32 noundef %10, i32 noundef %11, ptr noundef %12, i32 noundef 1, i32 noundef 0)
  store double 0.000000e+00, ptr %__pyx_r, align 8, !tbaa !8
  br label %__pyx_L0

__pyx_L0:                                         ; preds = %__pyx_L1_error, %if.end
  %13 = load double, ptr %__pyx_r, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %__pyx_clineno) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pyx_filename) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %__pyx_lineno) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr %__pyx_t_1) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pyx_r) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr %__pyx_v_myargs) #9
  ret double %13
}

declare i32 @PyDict_SetItem(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: nounwind uwtable
define internal double @__pyx_f_5scipy_8optimize_15cython_optimize_6_zeros_ridder_example(ptr noundef %__pyx_v_args, float noundef %__pyx_v_xa, float noundef %__pyx_v_xb, float noundef %__pyx_v_xtol, float noundef %__pyx_v_rtol, i32 noundef %__pyx_v_mitr) #0 {
entry:
  %__pyx_v_args.addr = alloca ptr, align 8
  %__pyx_v_xa.addr = alloca float, align 4
  %__pyx_v_xb.addr = alloca float, align 4
  %__pyx_v_xtol.addr = alloca float, align 4
  %__pyx_v_rtol.addr = alloca float, align 4
  %__pyx_v_mitr.addr = alloca i32, align 4
  %__pyx_v_myargs = alloca %struct.__pyx_t_5scipy_8optimize_15cython_optimize_6_zeros_extra_params, align 8
  %__pyx_r = alloca double, align 8
  %__pyx_t_1 = alloca [4 x double], align 16
  %__pyx_lineno = alloca i32, align 4
  %__pyx_filename = alloca ptr, align 8
  %__pyx_clineno = alloca i32, align 4
  store ptr %__pyx_v_args, ptr %__pyx_v_args.addr, align 8, !tbaa !4
  store float %__pyx_v_xa, ptr %__pyx_v_xa.addr, align 4, !tbaa !34
  store float %__pyx_v_xb, ptr %__pyx_v_xb.addr, align 4, !tbaa !34
  store float %__pyx_v_xtol, ptr %__pyx_v_xtol.addr, align 4, !tbaa !34
  store float %__pyx_v_rtol, ptr %__pyx_v_rtol.addr, align 4, !tbaa !34
  store i32 %__pyx_v_mitr, ptr %__pyx_v_mitr.addr, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %__pyx_v_myargs) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pyx_r) #9
  call void @llvm.lifetime.start.p0(i64 32, ptr %__pyx_t_1) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %__pyx_lineno) #9
  store i32 0, ptr %__pyx_lineno, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pyx_filename) #9
  store ptr null, ptr %__pyx_filename, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %__pyx_clineno) #9
  store i32 0, ptr %__pyx_clineno, align 4, !tbaa !10
  %0 = load ptr, ptr %__pyx_v_args.addr, align 8, !tbaa !4
  %arraydecay = getelementptr inbounds [4 x double], ptr %__pyx_t_1, i64 0, i64 0
  %call = call i32 @__Pyx_carray_from_py_double(ptr noundef %0, ptr noundef %arraydecay, i64 noundef 4)
  %cmp = icmp slt i32 %call, 0
  %lnot = xor i1 %cmp, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @__pyx_f, align 16, !tbaa !4
  store ptr %1, ptr %__pyx_filename, align 8, !tbaa !4
  %2 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 138, ptr %__pyx_lineno, align 4, !tbaa !10
  %3 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 2333, ptr %__pyx_clineno, align 4, !tbaa !10
  %4 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  br label %__pyx_L1_error

if.end:                                           ; preds = %entry
  %a = getelementptr inbounds %struct.__pyx_t_5scipy_8optimize_15cython_optimize_6_zeros_extra_params, ptr %__pyx_v_myargs, i32 0, i32 0
  %arrayidx = getelementptr inbounds [4 x double], ptr %a, i64 0, i64 0
  %arraydecay2 = getelementptr inbounds [4 x double], ptr %__pyx_t_1, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx, ptr align 16 %arraydecay2, i64 32, i1 false)
  %5 = load float, ptr %__pyx_v_xa.addr, align 4, !tbaa !34
  %conv3 = fpext float %5 to double
  %6 = load float, ptr %__pyx_v_xb.addr, align 4, !tbaa !34
  %conv4 = fpext float %6 to double
  %7 = load float, ptr %__pyx_v_xtol.addr, align 4, !tbaa !34
  %conv5 = fpext float %7 to double
  %8 = load float, ptr %__pyx_v_rtol.addr, align 4, !tbaa !34
  %conv6 = fpext float %8 to double
  %9 = load i32, ptr %__pyx_v_mitr.addr, align 4, !tbaa !10
  %call7 = call double @__pyx_f_5scipy_8optimize_15cython_optimize_6_zeros_ridder(ptr noundef @__pyx_f_5scipy_8optimize_15cython_optimize_6_zeros_f_example, double noundef %conv3, double noundef %conv4, ptr noundef %__pyx_v_myargs, double noundef %conv5, double noundef %conv6, i32 noundef %9, ptr noundef null)
  store double %call7, ptr %__pyx_r, align 8, !tbaa !8
  br label %__pyx_L0

__pyx_L1_error:                                   ; preds = %if.then
  %10 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  %11 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  %12 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  call void @__Pyx_WriteUnraisable(ptr noundef @.str.106, i32 noundef %10, i32 noundef %11, ptr noundef %12, i32 noundef 1, i32 noundef 0)
  store double 0.000000e+00, ptr %__pyx_r, align 8, !tbaa !8
  br label %__pyx_L0

__pyx_L0:                                         ; preds = %__pyx_L1_error, %if.end
  %13 = load double, ptr %__pyx_r, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %__pyx_clineno) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pyx_filename) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %__pyx_lineno) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr %__pyx_t_1) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pyx_r) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr %__pyx_v_myargs) #9
  ret double %13
}

; Function Attrs: nounwind uwtable
define internal double @__pyx_f_5scipy_8optimize_15cython_optimize_6_zeros_brenth_example(ptr noundef %__pyx_v_args, float noundef %__pyx_v_xa, float noundef %__pyx_v_xb, float noundef %__pyx_v_xtol, float noundef %__pyx_v_rtol, i32 noundef %__pyx_v_mitr) #0 {
entry:
  %__pyx_v_args.addr = alloca ptr, align 8
  %__pyx_v_xa.addr = alloca float, align 4
  %__pyx_v_xb.addr = alloca float, align 4
  %__pyx_v_xtol.addr = alloca float, align 4
  %__pyx_v_rtol.addr = alloca float, align 4
  %__pyx_v_mitr.addr = alloca i32, align 4
  %__pyx_v_myargs = alloca %struct.__pyx_t_5scipy_8optimize_15cython_optimize_6_zeros_extra_params, align 8
  %__pyx_r = alloca double, align 8
  %__pyx_t_1 = alloca [4 x double], align 16
  %__pyx_lineno = alloca i32, align 4
  %__pyx_filename = alloca ptr, align 8
  %__pyx_clineno = alloca i32, align 4
  store ptr %__pyx_v_args, ptr %__pyx_v_args.addr, align 8, !tbaa !4
  store float %__pyx_v_xa, ptr %__pyx_v_xa.addr, align 4, !tbaa !34
  store float %__pyx_v_xb, ptr %__pyx_v_xb.addr, align 4, !tbaa !34
  store float %__pyx_v_xtol, ptr %__pyx_v_xtol.addr, align 4, !tbaa !34
  store float %__pyx_v_rtol, ptr %__pyx_v_rtol.addr, align 4, !tbaa !34
  store i32 %__pyx_v_mitr, ptr %__pyx_v_mitr.addr, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %__pyx_v_myargs) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pyx_r) #9
  call void @llvm.lifetime.start.p0(i64 32, ptr %__pyx_t_1) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %__pyx_lineno) #9
  store i32 0, ptr %__pyx_lineno, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pyx_filename) #9
  store ptr null, ptr %__pyx_filename, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %__pyx_clineno) #9
  store i32 0, ptr %__pyx_clineno, align 4, !tbaa !10
  %0 = load ptr, ptr %__pyx_v_args.addr, align 8, !tbaa !4
  %arraydecay = getelementptr inbounds [4 x double], ptr %__pyx_t_1, i64 0, i64 0
  %call = call i32 @__Pyx_carray_from_py_double(ptr noundef %0, ptr noundef %arraydecay, i64 noundef 4)
  %cmp = icmp slt i32 %call, 0
  %lnot = xor i1 %cmp, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @__pyx_f, align 16, !tbaa !4
  store ptr %1, ptr %__pyx_filename, align 8, !tbaa !4
  %2 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 148, ptr %__pyx_lineno, align 4, !tbaa !10
  %3 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 2388, ptr %__pyx_clineno, align 4, !tbaa !10
  %4 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  br label %__pyx_L1_error

if.end:                                           ; preds = %entry
  %a = getelementptr inbounds %struct.__pyx_t_5scipy_8optimize_15cython_optimize_6_zeros_extra_params, ptr %__pyx_v_myargs, i32 0, i32 0
  %arrayidx = getelementptr inbounds [4 x double], ptr %a, i64 0, i64 0
  %arraydecay2 = getelementptr inbounds [4 x double], ptr %__pyx_t_1, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx, ptr align 16 %arraydecay2, i64 32, i1 false)
  %5 = load float, ptr %__pyx_v_xa.addr, align 4, !tbaa !34
  %conv3 = fpext float %5 to double
  %6 = load float, ptr %__pyx_v_xb.addr, align 4, !tbaa !34
  %conv4 = fpext float %6 to double
  %7 = load float, ptr %__pyx_v_xtol.addr, align 4, !tbaa !34
  %conv5 = fpext float %7 to double
  %8 = load float, ptr %__pyx_v_rtol.addr, align 4, !tbaa !34
  %conv6 = fpext float %8 to double
  %9 = load i32, ptr %__pyx_v_mitr.addr, align 4, !tbaa !10
  %call7 = call double @__pyx_f_5scipy_8optimize_15cython_optimize_6_zeros_brenth(ptr noundef @__pyx_f_5scipy_8optimize_15cython_optimize_6_zeros_f_example, double noundef %conv3, double noundef %conv4, ptr noundef %__pyx_v_myargs, double noundef %conv5, double noundef %conv6, i32 noundef %9, ptr noundef null)
  store double %call7, ptr %__pyx_r, align 8, !tbaa !8
  br label %__pyx_L0

__pyx_L1_error:                                   ; preds = %if.then
  %10 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  %11 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  %12 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  call void @__Pyx_WriteUnraisable(ptr noundef @.str.107, i32 noundef %10, i32 noundef %11, ptr noundef %12, i32 noundef 1, i32 noundef 0)
  store double 0.000000e+00, ptr %__pyx_r, align 8, !tbaa !8
  br label %__pyx_L0

__pyx_L0:                                         ; preds = %__pyx_L1_error, %if.end
  %13 = load double, ptr %__pyx_r, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %__pyx_clineno) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pyx_filename) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %__pyx_lineno) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr %__pyx_t_1) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pyx_r) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr %__pyx_v_myargs) #9
  ret double %13
}

; Function Attrs: nounwind uwtable
define internal double @__pyx_f_5scipy_8optimize_15cython_optimize_6_zeros_brentq_example(ptr noundef %__pyx_v_args, float noundef %__pyx_v_xa, float noundef %__pyx_v_xb, float noundef %__pyx_v_xtol, float noundef %__pyx_v_rtol, i32 noundef %__pyx_v_mitr) #0 {
entry:
  %__pyx_v_args.addr = alloca ptr, align 8
  %__pyx_v_xa.addr = alloca float, align 4
  %__pyx_v_xb.addr = alloca float, align 4
  %__pyx_v_xtol.addr = alloca float, align 4
  %__pyx_v_rtol.addr = alloca float, align 4
  %__pyx_v_mitr.addr = alloca i32, align 4
  %__pyx_v_myargs = alloca %struct.__pyx_t_5scipy_8optimize_15cython_optimize_6_zeros_extra_params, align 8
  %__pyx_r = alloca double, align 8
  %__pyx_t_1 = alloca [4 x double], align 16
  %__pyx_lineno = alloca i32, align 4
  %__pyx_filename = alloca ptr, align 8
  %__pyx_clineno = alloca i32, align 4
  store ptr %__pyx_v_args, ptr %__pyx_v_args.addr, align 8, !tbaa !4
  store float %__pyx_v_xa, ptr %__pyx_v_xa.addr, align 4, !tbaa !34
  store float %__pyx_v_xb, ptr %__pyx_v_xb.addr, align 4, !tbaa !34
  store float %__pyx_v_xtol, ptr %__pyx_v_xtol.addr, align 4, !tbaa !34
  store float %__pyx_v_rtol, ptr %__pyx_v_rtol.addr, align 4, !tbaa !34
  store i32 %__pyx_v_mitr, ptr %__pyx_v_mitr.addr, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %__pyx_v_myargs) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pyx_r) #9
  call void @llvm.lifetime.start.p0(i64 32, ptr %__pyx_t_1) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %__pyx_lineno) #9
  store i32 0, ptr %__pyx_lineno, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pyx_filename) #9
  store ptr null, ptr %__pyx_filename, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %__pyx_clineno) #9
  store i32 0, ptr %__pyx_clineno, align 4, !tbaa !10
  %0 = load ptr, ptr %__pyx_v_args.addr, align 8, !tbaa !4
  %arraydecay = getelementptr inbounds [4 x double], ptr %__pyx_t_1, i64 0, i64 0
  %call = call i32 @__Pyx_carray_from_py_double(ptr noundef %0, ptr noundef %arraydecay, i64 noundef 4)
  %cmp = icmp slt i32 %call, 0
  %lnot = xor i1 %cmp, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @__pyx_f, align 16, !tbaa !4
  store ptr %1, ptr %__pyx_filename, align 8, !tbaa !4
  %2 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 158, ptr %__pyx_lineno, align 4, !tbaa !10
  %3 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 2443, ptr %__pyx_clineno, align 4, !tbaa !10
  %4 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  br label %__pyx_L1_error

if.end:                                           ; preds = %entry
  %a = getelementptr inbounds %struct.__pyx_t_5scipy_8optimize_15cython_optimize_6_zeros_extra_params, ptr %__pyx_v_myargs, i32 0, i32 0
  %arrayidx = getelementptr inbounds [4 x double], ptr %a, i64 0, i64 0
  %arraydecay2 = getelementptr inbounds [4 x double], ptr %__pyx_t_1, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx, ptr align 16 %arraydecay2, i64 32, i1 false)
  %5 = load float, ptr %__pyx_v_xa.addr, align 4, !tbaa !34
  %conv3 = fpext float %5 to double
  %6 = load float, ptr %__pyx_v_xb.addr, align 4, !tbaa !34
  %conv4 = fpext float %6 to double
  %7 = load float, ptr %__pyx_v_xtol.addr, align 4, !tbaa !34
  %conv5 = fpext float %7 to double
  %8 = load float, ptr %__pyx_v_rtol.addr, align 4, !tbaa !34
  %conv6 = fpext float %8 to double
  %9 = load i32, ptr %__pyx_v_mitr.addr, align 4, !tbaa !10
  %call7 = call double @__pyx_f_5scipy_8optimize_15cython_optimize_6_zeros_brentq(ptr noundef @__pyx_f_5scipy_8optimize_15cython_optimize_6_zeros_f_example, double noundef %conv3, double noundef %conv4, ptr noundef %__pyx_v_myargs, double noundef %conv5, double noundef %conv6, i32 noundef %9, ptr noundef null)
  store double %call7, ptr %__pyx_r, align 8, !tbaa !8
  br label %__pyx_L0

__pyx_L1_error:                                   ; preds = %if.then
  %10 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  %11 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  %12 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  call void @__Pyx_WriteUnraisable(ptr noundef @.str.108, i32 noundef %10, i32 noundef %11, ptr noundef %12, i32 noundef 1, i32 noundef 0)
  store double 0.000000e+00, ptr %__pyx_r, align 8, !tbaa !8
  br label %__pyx_L0

__pyx_L0:                                         ; preds = %__pyx_L1_error, %if.end
  %13 = load double, ptr %__pyx_r, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %__pyx_clineno) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pyx_filename) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %__pyx_lineno) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr %__pyx_t_1) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pyx_r) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr %__pyx_v_myargs) #9
  ret double %13
}

declare ptr @PyCMethod_New(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: nounwind uwtable
define internal void @__Pyx_AddTraceback(ptr noundef %funcname, i32 noundef %c_line, i32 noundef %py_line, ptr noundef %filename) #0 {
entry:
  %funcname.addr = alloca ptr, align 8
  %c_line.addr = alloca i32, align 4
  %py_line.addr = alloca i32, align 4
  %filename.addr = alloca ptr, align 8
  %py_code = alloca ptr, align 8
  %py_frame = alloca ptr, align 8
  %tstate = alloca ptr, align 8
  %ptype = alloca ptr, align 8
  %pvalue = alloca ptr, align 8
  %ptraceback = alloca ptr, align 8
  store ptr %funcname, ptr %funcname.addr, align 8, !tbaa !4
  store i32 %c_line, ptr %c_line.addr, align 4, !tbaa !10
  store i32 %py_line, ptr %py_line.addr, align 4, !tbaa !10
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %py_code) #9
  store ptr null, ptr %py_code, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %py_frame) #9
  store ptr null, ptr %py_frame, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %tstate) #9
  %call = call ptr @PyThreadState_Get()
  store ptr %call, ptr %tstate, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptype) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %pvalue) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptraceback) #9
  %0 = load i32, ptr %c_line.addr, align 4, !tbaa !10
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %tstate, align 8, !tbaa !4
  %2 = load i32, ptr %c_line.addr, align 4, !tbaa !10
  %call1 = call i32 @__Pyx_CLineForTraceback(ptr noundef %1, i32 noundef %2)
  store i32 %call1, ptr %c_line.addr, align 4, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, ptr %c_line.addr, align 4, !tbaa !10
  %tobool2 = icmp ne i32 %3, 0
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %4 = load i32, ptr %c_line.addr, align 4, !tbaa !10
  %sub = sub nsw i32 0, %4
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %5 = load i32, ptr %py_line.addr, align 4, !tbaa !10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %5, %cond.false ]
  %call3 = call ptr @__pyx_find_code_object(i32 noundef %cond)
  store ptr %call3, ptr %py_code, align 8, !tbaa !4
  %6 = load ptr, ptr %py_code, align 8, !tbaa !4
  %tobool4 = icmp ne ptr %6, null
  br i1 %tobool4, label %if.end16, label %if.then5

if.then5:                                         ; preds = %cond.end
  call void @PyErr_Fetch(ptr noundef %ptype, ptr noundef %pvalue, ptr noundef %ptraceback)
  %7 = load ptr, ptr %funcname.addr, align 8, !tbaa !4
  %8 = load i32, ptr %c_line.addr, align 4, !tbaa !10
  %9 = load i32, ptr %py_line.addr, align 4, !tbaa !10
  %10 = load ptr, ptr %filename.addr, align 8, !tbaa !4
  %call6 = call ptr @__Pyx_CreateCodeObjectForTraceback(ptr noundef %7, i32 noundef %8, i32 noundef %9, ptr noundef %10)
  store ptr %call6, ptr %py_code, align 8, !tbaa !4
  %11 = load ptr, ptr %py_code, align 8, !tbaa !4
  %tobool7 = icmp ne ptr %11, null
  br i1 %tobool7, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.then5
  %12 = load ptr, ptr %ptype, align 8, !tbaa !4
  call void @Py_XDECREF(ptr noundef %12)
  %13 = load ptr, ptr %pvalue, align 8, !tbaa !4
  call void @Py_XDECREF(ptr noundef %13)
  %14 = load ptr, ptr %ptraceback, align 8, !tbaa !4
  call void @Py_XDECREF(ptr noundef %14)
  br label %bad

if.end9:                                          ; preds = %if.then5
  %15 = load ptr, ptr %ptype, align 8, !tbaa !4
  %16 = load ptr, ptr %pvalue, align 8, !tbaa !4
  %17 = load ptr, ptr %ptraceback, align 8, !tbaa !4
  call void @PyErr_Restore(ptr noundef %15, ptr noundef %16, ptr noundef %17)
  %18 = load i32, ptr %c_line.addr, align 4, !tbaa !10
  %tobool10 = icmp ne i32 %18, 0
  br i1 %tobool10, label %cond.true11, label %cond.false13

cond.true11:                                      ; preds = %if.end9
  %19 = load i32, ptr %c_line.addr, align 4, !tbaa !10
  %sub12 = sub nsw i32 0, %19
  br label %cond.end14

cond.false13:                                     ; preds = %if.end9
  %20 = load i32, ptr %py_line.addr, align 4, !tbaa !10
  br label %cond.end14

cond.end14:                                       ; preds = %cond.false13, %cond.true11
  %cond15 = phi i32 [ %sub12, %cond.true11 ], [ %20, %cond.false13 ]
  %21 = load ptr, ptr %py_code, align 8, !tbaa !4
  call void @__pyx_insert_code_object(i32 noundef %cond15, ptr noundef %21)
  br label %if.end16

if.end16:                                         ; preds = %cond.end14, %cond.end
  %22 = load ptr, ptr %tstate, align 8, !tbaa !4
  %23 = load ptr, ptr %py_code, align 8, !tbaa !4
  %24 = load ptr, ptr @__pyx_d, align 8, !tbaa !4
  %call17 = call ptr @PyFrame_New(ptr noundef %22, ptr noundef %23, ptr noundef %24, ptr noundef null)
  store ptr %call17, ptr %py_frame, align 8, !tbaa !4
  %25 = load ptr, ptr %py_frame, align 8, !tbaa !4
  %tobool18 = icmp ne ptr %25, null
  br i1 %tobool18, label %if.end20, label %if.then19

if.then19:                                        ; preds = %if.end16
  br label %bad

if.end20:                                         ; preds = %if.end16
  %26 = load i32, ptr %py_line.addr, align 4, !tbaa !10
  %27 = load ptr, ptr %py_frame, align 8, !tbaa !4
  %f_lineno = getelementptr inbounds %struct._frame, ptr %27, i32 0, i32 4
  store i32 %26, ptr %f_lineno, align 8, !tbaa !36
  %28 = load ptr, ptr %py_frame, align 8, !tbaa !4
  %call21 = call i32 @PyTraceBack_Here(ptr noundef %28)
  br label %bad

bad:                                              ; preds = %if.end20, %if.then19, %if.then8
  %29 = load ptr, ptr %py_code, align 8, !tbaa !4
  call void @Py_XDECREF(ptr noundef %29)
  %30 = load ptr, ptr %py_frame, align 8, !tbaa !4
  call void @Py_XDECREF(ptr noundef %30)
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptraceback) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %pvalue) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptype) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %tstate) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %py_frame) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %py_code) #9
  ret void
}

declare ptr @PyErr_Occurred() #4

declare ptr @Py_GetVersion() #4

declare i32 @PyOS_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

declare i32 @PyErr_WarnEx(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: nounwind uwtable
define internal ptr @__Pyx_FetchCommonType(ptr noundef %type) #0 {
entry:
  %retval = alloca ptr, align 8
  %type.addr = alloca ptr, align 8
  %fake_module = alloca ptr, align 8
  %cached_type = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %type, ptr %type.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %fake_module) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %cached_type) #9
  store ptr null, ptr %cached_type, align 8, !tbaa !4
  %call = call ptr @PyImport_AddModule(ptr noundef @.str.22)
  store ptr %call, ptr %fake_module, align 8, !tbaa !4
  %0 = load ptr, ptr %fake_module, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %fake_module, align 8, !tbaa !4
  call void @Py_INCREF(ptr noundef %1)
  %2 = load ptr, ptr %fake_module, align 8, !tbaa !4
  %3 = load ptr, ptr %type.addr, align 8, !tbaa !4
  %tp_name = getelementptr inbounds %struct._typeobject, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %tp_name, align 8, !tbaa !38
  %call1 = call ptr @PyObject_GetAttrString(ptr noundef %2, ptr noundef %4)
  store ptr %call1, ptr %cached_type, align 8, !tbaa !4
  %5 = load ptr, ptr %cached_type, align 8, !tbaa !4
  %tobool2 = icmp ne ptr %5, null
  br i1 %tobool2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %6 = load ptr, ptr %cached_type, align 8, !tbaa !4
  %call4 = call i32 @PyType_Check(ptr noundef %6)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.end9, label %if.then6

if.then6:                                         ; preds = %if.then3
  %7 = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !4
  %8 = load ptr, ptr %type.addr, align 8, !tbaa !4
  %tp_name7 = getelementptr inbounds %struct._typeobject, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %tp_name7, align 8, !tbaa !38
  %call8 = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %7, ptr noundef @.str.23, ptr noundef %9)
  br label %bad

if.end9:                                          ; preds = %if.then3
  %10 = load ptr, ptr %cached_type, align 8, !tbaa !4
  %tp_basicsize = getelementptr inbounds %struct._typeobject, ptr %10, i32 0, i32 2
  %11 = load i64, ptr %tp_basicsize, align 8, !tbaa !39
  %12 = load ptr, ptr %type.addr, align 8, !tbaa !4
  %tp_basicsize10 = getelementptr inbounds %struct._typeobject, ptr %12, i32 0, i32 2
  %13 = load i64, ptr %tp_basicsize10, align 8, !tbaa !39
  %cmp = icmp ne i64 %11, %13
  br i1 %cmp, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.end9
  %14 = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !4
  %15 = load ptr, ptr %type.addr, align 8, !tbaa !4
  %tp_name12 = getelementptr inbounds %struct._typeobject, ptr %15, i32 0, i32 1
  %16 = load ptr, ptr %tp_name12, align 8, !tbaa !38
  %call13 = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %14, ptr noundef @.str.24, ptr noundef %16)
  br label %bad

if.end14:                                         ; preds = %if.end9
  br label %if.end28

if.else:                                          ; preds = %if.end
  %17 = load ptr, ptr @PyExc_AttributeError, align 8, !tbaa !4
  %call15 = call i32 @PyErr_ExceptionMatches(ptr noundef %17)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.end18, label %if.then17

if.then17:                                        ; preds = %if.else
  br label %bad

if.end18:                                         ; preds = %if.else
  call void @PyErr_Clear()
  %18 = load ptr, ptr %type.addr, align 8, !tbaa !4
  %call19 = call i32 @PyType_Ready(ptr noundef %18)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end18
  br label %bad

if.end22:                                         ; preds = %if.end18
  %19 = load ptr, ptr %fake_module, align 8, !tbaa !4
  %20 = load ptr, ptr %type.addr, align 8, !tbaa !4
  %tp_name23 = getelementptr inbounds %struct._typeobject, ptr %20, i32 0, i32 1
  %21 = load ptr, ptr %tp_name23, align 8, !tbaa !38
  %22 = load ptr, ptr %type.addr, align 8, !tbaa !4
  %call24 = call i32 @PyObject_SetAttrString(ptr noundef %19, ptr noundef %21, ptr noundef %22)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end22
  br label %bad

if.end27:                                         ; preds = %if.end22
  %23 = load ptr, ptr %type.addr, align 8, !tbaa !4
  call void @Py_INCREF(ptr noundef %23)
  %24 = load ptr, ptr %type.addr, align 8, !tbaa !4
  store ptr %24, ptr %cached_type, align 8, !tbaa !4
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.end14
  br label %done

done:                                             ; preds = %bad, %if.end28
  %25 = load ptr, ptr %fake_module, align 8, !tbaa !4
  call void @Py_DECREF(ptr noundef %25)
  %26 = load ptr, ptr %cached_type, align 8, !tbaa !4
  store ptr %26, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

bad:                                              ; preds = %if.then26, %if.then21, %if.then17, %if.then11, %if.then6
  %27 = load ptr, ptr %cached_type, align 8, !tbaa !4
  call void @Py_XDECREF(ptr noundef %27)
  store ptr null, ptr %cached_type, align 8, !tbaa !4
  br label %done

cleanup:                                          ; preds = %done, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %cached_type) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %fake_module) #9
  %28 = load ptr, ptr %retval, align 8
  ret ptr %28
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @PyType_Check(ptr noundef %op) #5 {
entry:
  %op.addr = alloca ptr, align 8
  store ptr %op, ptr %op.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %op.addr, align 8, !tbaa !4
  %call = call ptr @Py_TYPE(ptr noundef %0)
  %call1 = call i32 @PyType_HasFeature(ptr noundef %call, i64 noundef 2147483648)
  ret i32 %call1
}

declare ptr @PyErr_Format(ptr noundef, ptr noundef, ...) #4

declare i32 @PyType_Ready(ptr noundef) #4

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @PyType_HasFeature(ptr noundef %type, i64 noundef %feature) #5 {
entry:
  %type.addr = alloca ptr, align 8
  %feature.addr = alloca i64, align 8
  %flags = alloca i64, align 8
  store ptr %type, ptr %type.addr, align 8, !tbaa !4
  store i64 %feature, ptr %feature.addr, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #9
  %0 = load ptr, ptr %type.addr, align 8, !tbaa !4
  %tp_flags = getelementptr inbounds %struct._typeobject, ptr %0, i32 0, i32 19
  %1 = load i64, ptr %tp_flags, align 8, !tbaa !40
  store i64 %1, ptr %flags, align 8, !tbaa !24
  %2 = load i64, ptr %flags, align 8, !tbaa !24
  %3 = load i64, ptr %feature.addr, align 8, !tbaa !24
  %and = and i64 %2, %3
  %cmp = icmp ne i64 %and, 0
  %conv = zext i1 %cmp to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #9
  ret i32 %conv
}

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @Py_TYPE(ptr noundef %ob) #5 {
entry:
  %ob.addr = alloca ptr, align 8
  store ptr %ob, ptr %ob.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %ob.addr, align 8, !tbaa !4
  %ob_type = getelementptr inbounds %struct._object, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %ob_type, align 8, !tbaa !41
  ret ptr %1
}

; Function Attrs: nounwind uwtable
define internal void @__Pyx_CyFunction_dealloc(ptr noundef %m) #0 {
entry:
  %m.addr = alloca ptr, align 8
  store ptr %m, ptr %m.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %m.addr, align 8, !tbaa !4
  call void @PyObject_GC_UnTrack(ptr noundef %0)
  %1 = load ptr, ptr %m.addr, align 8, !tbaa !4
  call void @__Pyx__CyFunction_dealloc(ptr noundef %1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @__Pyx_CyFunction_repr(ptr noundef %op) #0 {
entry:
  %op.addr = alloca ptr, align 8
  store ptr %op, ptr %op.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %op.addr, align 8, !tbaa !4
  %func_qualname = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %0, i32 0, i32 3
  %1 = load ptr, ptr %func_qualname, align 8, !tbaa !42
  %2 = load ptr, ptr %op.addr, align 8, !tbaa !4
  %call = call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef @.str.26, ptr noundef %1, ptr noundef %2)
  ret ptr %call
}

; Function Attrs: nounwind uwtable
define internal ptr @__Pyx_CyFunction_CallAsMethod(ptr noundef %func, ptr noundef %args, ptr noundef %kw) #0 {
entry:
  %retval = alloca ptr, align 8
  %func.addr = alloca ptr, align 8
  %args.addr = alloca ptr, align 8
  %kw.addr = alloca ptr, align 8
  %result = alloca ptr, align 8
  %cyfunc = alloca ptr, align 8
  %argc = alloca i64, align 8
  %new_args = alloca ptr, align 8
  %self = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %func, ptr %func.addr, align 8, !tbaa !4
  store ptr %args, ptr %args.addr, align 8, !tbaa !4
  store ptr %kw, ptr %kw.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %result) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %cyfunc) #9
  %0 = load ptr, ptr %func.addr, align 8, !tbaa !4
  store ptr %0, ptr %cyfunc, align 8, !tbaa !4
  %1 = load ptr, ptr %cyfunc, align 8, !tbaa !4
  %flags = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %1, i32 0, i32 12
  %2 = load i32, ptr %flags, align 8, !tbaa !45
  %and = and i32 %2, 4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %cyfunc, align 8, !tbaa !4
  %flags1 = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %3, i32 0, i32 12
  %4 = load i32, ptr %flags1, align 8, !tbaa !45
  %and2 = and i32 %4, 1
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 8, ptr %argc) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_args) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %self) #9
  %5 = load ptr, ptr %args.addr, align 8, !tbaa !4
  %call = call i64 @PyTuple_GET_SIZE(ptr noundef %5)
  store i64 %call, ptr %argc, align 8, !tbaa !24
  %6 = load ptr, ptr %args.addr, align 8, !tbaa !4
  %7 = load i64, ptr %argc, align 8, !tbaa !24
  %call4 = call ptr @PyTuple_GetSlice(ptr noundef %6, i64 noundef 1, i64 noundef %7)
  store ptr %call4, ptr %new_args, align 8, !tbaa !4
  %8 = load ptr, ptr %new_args, align 8, !tbaa !4
  %tobool5 = icmp ne ptr %8, null
  %lnot = xor i1 %tobool5, true
  %lnot6 = xor i1 %lnot, true
  %lnot7 = xor i1 %lnot6, true
  %lnot.ext = zext i1 %lnot7 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool8 = icmp ne i64 %expval, 0
  br i1 %tobool8, label %if.then9, label %if.end

if.then9:                                         ; preds = %if.then
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then
  %9 = load ptr, ptr %args.addr, align 8, !tbaa !4
  %call10 = call ptr @PyTuple_GetItem(ptr noundef %9, i64 noundef 0)
  store ptr %call10, ptr %self, align 8, !tbaa !4
  %10 = load ptr, ptr %self, align 8, !tbaa !4
  %tobool11 = icmp ne ptr %10, null
  %lnot12 = xor i1 %tobool11, true
  %lnot14 = xor i1 %lnot12, true
  %lnot16 = xor i1 %lnot14, true
  %lnot.ext17 = zext i1 %lnot16 to i32
  %conv18 = sext i32 %lnot.ext17 to i64
  %expval19 = call i64 @llvm.expect.i64(i64 %conv18, i64 0)
  %tobool20 = icmp ne i64 %expval19, 0
  br i1 %tobool20, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.end
  %11 = load ptr, ptr %new_args, align 8, !tbaa !4
  call void @Py_DECREF(ptr noundef %11)
  %12 = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !4
  %13 = load ptr, ptr %cyfunc, align 8, !tbaa !4
  %func_qualname = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %13, i32 0, i32 3
  %14 = load ptr, ptr %func_qualname, align 8, !tbaa !42
  %call22 = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %12, ptr noundef @.str.27, ptr noundef %14)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end23:                                         ; preds = %if.end
  %15 = load ptr, ptr %func.addr, align 8, !tbaa !4
  %16 = load ptr, ptr %self, align 8, !tbaa !4
  %17 = load ptr, ptr %new_args, align 8, !tbaa !4
  %18 = load ptr, ptr %kw.addr, align 8, !tbaa !4
  %call24 = call ptr @__Pyx_CyFunction_CallMethod(ptr noundef %15, ptr noundef %16, ptr noundef %17, ptr noundef %18)
  store ptr %call24, ptr %result, align 8, !tbaa !4
  %19 = load ptr, ptr %new_args, align 8, !tbaa !4
  call void @Py_DECREF(ptr noundef %19)
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.then21, %if.then9
  call void @llvm.lifetime.end.p0(i64 8, ptr %self) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_args) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %argc) #9
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup29 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end28

if.else:                                          ; preds = %land.lhs.true, %entry
  %20 = load ptr, ptr %func.addr, align 8, !tbaa !4
  %21 = load ptr, ptr %args.addr, align 8, !tbaa !4
  %22 = load ptr, ptr %kw.addr, align 8, !tbaa !4
  %call27 = call ptr @__Pyx_CyFunction_Call(ptr noundef %20, ptr noundef %21, ptr noundef %22)
  store ptr %call27, ptr %result, align 8, !tbaa !4
  br label %if.end28

if.end28:                                         ; preds = %if.else, %cleanup.cont
  %23 = load ptr, ptr %result, align 8, !tbaa !4
  store ptr %23, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup29

cleanup29:                                        ; preds = %if.end28, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %cyfunc) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %result) #9
  %24 = load ptr, ptr %retval, align 8
  ret ptr %24
}

; Function Attrs: nounwind uwtable
define internal i32 @__Pyx_CyFunction_traverse(ptr noundef %m, ptr noundef %visit, ptr noundef %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %m.addr = alloca ptr, align 8
  %visit.addr = alloca ptr, align 8
  %arg.addr = alloca ptr, align 8
  %vret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %vret8 = alloca i32, align 4
  %vret23 = alloca i32, align 4
  %vret37 = alloca i32, align 4
  %vret51 = alloca i32, align 4
  %vret65 = alloca i32, align 4
  %vret79 = alloca i32, align 4
  %vret93 = alloca i32, align 4
  %vret107 = alloca i32, align 4
  %vret121 = alloca i32, align 4
  %vret135 = alloca i32, align 4
  %pydefaults = alloca ptr, align 8
  %i = alloca i32, align 4
  %vret152 = alloca i32, align 4
  store ptr %m, ptr %m.addr, align 8, !tbaa !4
  store ptr %visit, ptr %visit.addr, align 8, !tbaa !4
  store ptr %arg, ptr %arg.addr, align 8, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %func_closure = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %0, i32 0, i32 7
  %1 = load ptr, ptr %func_closure, align 8, !tbaa !46
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then, label %if.end4

if.then:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 4, ptr %vret) #9
  %2 = load ptr, ptr %visit.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %func_closure1 = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %3, i32 0, i32 7
  %4 = load ptr, ptr %func_closure1, align 8, !tbaa !46
  %5 = load ptr, ptr %arg.addr, align 8, !tbaa !4
  %call = call i32 %2(ptr noundef %4, ptr noundef %5)
  store i32 %call, ptr %vret, align 4, !tbaa !10
  %6 = load i32, ptr %vret, align 4, !tbaa !10
  %tobool2 = icmp ne i32 %6, 0
  br i1 %tobool2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %7 = load i32, ptr %vret, align 4, !tbaa !10
  store i32 %7, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then3
  call void @llvm.lifetime.end.p0(i64 4, ptr %vret) #9
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end4

if.end4:                                          ; preds = %cleanup.cont, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end4
  br label %do.body5

do.body5:                                         ; preds = %do.end
  %8 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %func = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %8, i32 0, i32 0
  %m_module = getelementptr inbounds %struct.PyCFunctionObject, ptr %func, i32 0, i32 3
  %9 = load ptr, ptr %m_module, align 8, !tbaa !47
  %tobool6 = icmp ne ptr %9, null
  br i1 %tobool6, label %if.then7, label %if.end18

if.then7:                                         ; preds = %do.body5
  call void @llvm.lifetime.start.p0(i64 4, ptr %vret8) #9
  %10 = load ptr, ptr %visit.addr, align 8, !tbaa !4
  %11 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %func9 = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %11, i32 0, i32 0
  %m_module10 = getelementptr inbounds %struct.PyCFunctionObject, ptr %func9, i32 0, i32 3
  %12 = load ptr, ptr %m_module10, align 8, !tbaa !47
  %13 = load ptr, ptr %arg.addr, align 8, !tbaa !4
  %call11 = call i32 %10(ptr noundef %12, ptr noundef %13)
  store i32 %call11, ptr %vret8, align 4, !tbaa !10
  %14 = load i32, ptr %vret8, align 4, !tbaa !10
  %tobool12 = icmp ne i32 %14, 0
  br i1 %tobool12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.then7
  %15 = load i32, ptr %vret8, align 4, !tbaa !10
  store i32 %15, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup15

if.end14:                                         ; preds = %if.then7
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup15

cleanup15:                                        ; preds = %if.end14, %if.then13
  call void @llvm.lifetime.end.p0(i64 4, ptr %vret8) #9
  %cleanup.dest16 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest16, label %unreachable [
    i32 0, label %cleanup.cont17
    i32 1, label %return
  ]

cleanup.cont17:                                   ; preds = %cleanup15
  br label %if.end18

if.end18:                                         ; preds = %cleanup.cont17, %do.body5
  br label %do.end19

do.end19:                                         ; preds = %if.end18
  br label %do.body20

do.body20:                                        ; preds = %do.end19
  %16 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %func_dict = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %16, i32 0, i32 1
  %17 = load ptr, ptr %func_dict, align 8, !tbaa !48
  %tobool21 = icmp ne ptr %17, null
  br i1 %tobool21, label %if.then22, label %if.end32

if.then22:                                        ; preds = %do.body20
  call void @llvm.lifetime.start.p0(i64 4, ptr %vret23) #9
  %18 = load ptr, ptr %visit.addr, align 8, !tbaa !4
  %19 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %func_dict24 = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %19, i32 0, i32 1
  %20 = load ptr, ptr %func_dict24, align 8, !tbaa !48
  %21 = load ptr, ptr %arg.addr, align 8, !tbaa !4
  %call25 = call i32 %18(ptr noundef %20, ptr noundef %21)
  store i32 %call25, ptr %vret23, align 4, !tbaa !10
  %22 = load i32, ptr %vret23, align 4, !tbaa !10
  %tobool26 = icmp ne i32 %22, 0
  br i1 %tobool26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.then22
  %23 = load i32, ptr %vret23, align 4, !tbaa !10
  store i32 %23, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup29

if.end28:                                         ; preds = %if.then22
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup29

cleanup29:                                        ; preds = %if.end28, %if.then27
  call void @llvm.lifetime.end.p0(i64 4, ptr %vret23) #9
  %cleanup.dest30 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest30, label %unreachable [
    i32 0, label %cleanup.cont31
    i32 1, label %return
  ]

cleanup.cont31:                                   ; preds = %cleanup29
  br label %if.end32

if.end32:                                         ; preds = %cleanup.cont31, %do.body20
  br label %do.end33

do.end33:                                         ; preds = %if.end32
  br label %do.body34

do.body34:                                        ; preds = %do.end33
  %24 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %func_name = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %24, i32 0, i32 2
  %25 = load ptr, ptr %func_name, align 8, !tbaa !49
  %tobool35 = icmp ne ptr %25, null
  br i1 %tobool35, label %if.then36, label %if.end46

if.then36:                                        ; preds = %do.body34
  call void @llvm.lifetime.start.p0(i64 4, ptr %vret37) #9
  %26 = load ptr, ptr %visit.addr, align 8, !tbaa !4
  %27 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %func_name38 = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %27, i32 0, i32 2
  %28 = load ptr, ptr %func_name38, align 8, !tbaa !49
  %29 = load ptr, ptr %arg.addr, align 8, !tbaa !4
  %call39 = call i32 %26(ptr noundef %28, ptr noundef %29)
  store i32 %call39, ptr %vret37, align 4, !tbaa !10
  %30 = load i32, ptr %vret37, align 4, !tbaa !10
  %tobool40 = icmp ne i32 %30, 0
  br i1 %tobool40, label %if.then41, label %if.end42

if.then41:                                        ; preds = %if.then36
  %31 = load i32, ptr %vret37, align 4, !tbaa !10
  store i32 %31, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup43

if.end42:                                         ; preds = %if.then36
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup43

cleanup43:                                        ; preds = %if.end42, %if.then41
  call void @llvm.lifetime.end.p0(i64 4, ptr %vret37) #9
  %cleanup.dest44 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest44, label %unreachable [
    i32 0, label %cleanup.cont45
    i32 1, label %return
  ]

cleanup.cont45:                                   ; preds = %cleanup43
  br label %if.end46

if.end46:                                         ; preds = %cleanup.cont45, %do.body34
  br label %do.end47

do.end47:                                         ; preds = %if.end46
  br label %do.body48

do.body48:                                        ; preds = %do.end47
  %32 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %func_qualname = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %32, i32 0, i32 3
  %33 = load ptr, ptr %func_qualname, align 8, !tbaa !42
  %tobool49 = icmp ne ptr %33, null
  br i1 %tobool49, label %if.then50, label %if.end60

if.then50:                                        ; preds = %do.body48
  call void @llvm.lifetime.start.p0(i64 4, ptr %vret51) #9
  %34 = load ptr, ptr %visit.addr, align 8, !tbaa !4
  %35 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %func_qualname52 = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %35, i32 0, i32 3
  %36 = load ptr, ptr %func_qualname52, align 8, !tbaa !42
  %37 = load ptr, ptr %arg.addr, align 8, !tbaa !4
  %call53 = call i32 %34(ptr noundef %36, ptr noundef %37)
  store i32 %call53, ptr %vret51, align 4, !tbaa !10
  %38 = load i32, ptr %vret51, align 4, !tbaa !10
  %tobool54 = icmp ne i32 %38, 0
  br i1 %tobool54, label %if.then55, label %if.end56

if.then55:                                        ; preds = %if.then50
  %39 = load i32, ptr %vret51, align 4, !tbaa !10
  store i32 %39, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup57

if.end56:                                         ; preds = %if.then50
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup57

cleanup57:                                        ; preds = %if.end56, %if.then55
  call void @llvm.lifetime.end.p0(i64 4, ptr %vret51) #9
  %cleanup.dest58 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest58, label %unreachable [
    i32 0, label %cleanup.cont59
    i32 1, label %return
  ]

cleanup.cont59:                                   ; preds = %cleanup57
  br label %if.end60

if.end60:                                         ; preds = %cleanup.cont59, %do.body48
  br label %do.end61

do.end61:                                         ; preds = %if.end60
  br label %do.body62

do.body62:                                        ; preds = %do.end61
  %40 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %func_doc = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %40, i32 0, i32 4
  %41 = load ptr, ptr %func_doc, align 8, !tbaa !50
  %tobool63 = icmp ne ptr %41, null
  br i1 %tobool63, label %if.then64, label %if.end74

if.then64:                                        ; preds = %do.body62
  call void @llvm.lifetime.start.p0(i64 4, ptr %vret65) #9
  %42 = load ptr, ptr %visit.addr, align 8, !tbaa !4
  %43 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %func_doc66 = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %43, i32 0, i32 4
  %44 = load ptr, ptr %func_doc66, align 8, !tbaa !50
  %45 = load ptr, ptr %arg.addr, align 8, !tbaa !4
  %call67 = call i32 %42(ptr noundef %44, ptr noundef %45)
  store i32 %call67, ptr %vret65, align 4, !tbaa !10
  %46 = load i32, ptr %vret65, align 4, !tbaa !10
  %tobool68 = icmp ne i32 %46, 0
  br i1 %tobool68, label %if.then69, label %if.end70

if.then69:                                        ; preds = %if.then64
  %47 = load i32, ptr %vret65, align 4, !tbaa !10
  store i32 %47, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup71

if.end70:                                         ; preds = %if.then64
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup71

cleanup71:                                        ; preds = %if.end70, %if.then69
  call void @llvm.lifetime.end.p0(i64 4, ptr %vret65) #9
  %cleanup.dest72 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest72, label %unreachable [
    i32 0, label %cleanup.cont73
    i32 1, label %return
  ]

cleanup.cont73:                                   ; preds = %cleanup71
  br label %if.end74

if.end74:                                         ; preds = %cleanup.cont73, %do.body62
  br label %do.end75

do.end75:                                         ; preds = %if.end74
  br label %do.body76

do.body76:                                        ; preds = %do.end75
  %48 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %func_globals = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %48, i32 0, i32 5
  %49 = load ptr, ptr %func_globals, align 8, !tbaa !51
  %tobool77 = icmp ne ptr %49, null
  br i1 %tobool77, label %if.then78, label %if.end88

if.then78:                                        ; preds = %do.body76
  call void @llvm.lifetime.start.p0(i64 4, ptr %vret79) #9
  %50 = load ptr, ptr %visit.addr, align 8, !tbaa !4
  %51 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %func_globals80 = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %51, i32 0, i32 5
  %52 = load ptr, ptr %func_globals80, align 8, !tbaa !51
  %53 = load ptr, ptr %arg.addr, align 8, !tbaa !4
  %call81 = call i32 %50(ptr noundef %52, ptr noundef %53)
  store i32 %call81, ptr %vret79, align 4, !tbaa !10
  %54 = load i32, ptr %vret79, align 4, !tbaa !10
  %tobool82 = icmp ne i32 %54, 0
  br i1 %tobool82, label %if.then83, label %if.end84

if.then83:                                        ; preds = %if.then78
  %55 = load i32, ptr %vret79, align 4, !tbaa !10
  store i32 %55, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup85

if.end84:                                         ; preds = %if.then78
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup85

cleanup85:                                        ; preds = %if.end84, %if.then83
  call void @llvm.lifetime.end.p0(i64 4, ptr %vret79) #9
  %cleanup.dest86 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest86, label %unreachable [
    i32 0, label %cleanup.cont87
    i32 1, label %return
  ]

cleanup.cont87:                                   ; preds = %cleanup85
  br label %if.end88

if.end88:                                         ; preds = %cleanup.cont87, %do.body76
  br label %do.end89

do.end89:                                         ; preds = %if.end88
  br label %do.body90

do.body90:                                        ; preds = %do.end89
  %56 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %func_code = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %56, i32 0, i32 6
  %57 = load ptr, ptr %func_code, align 8, !tbaa !52
  %tobool91 = icmp ne ptr %57, null
  br i1 %tobool91, label %if.then92, label %if.end102

if.then92:                                        ; preds = %do.body90
  call void @llvm.lifetime.start.p0(i64 4, ptr %vret93) #9
  %58 = load ptr, ptr %visit.addr, align 8, !tbaa !4
  %59 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %func_code94 = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %59, i32 0, i32 6
  %60 = load ptr, ptr %func_code94, align 8, !tbaa !52
  %61 = load ptr, ptr %arg.addr, align 8, !tbaa !4
  %call95 = call i32 %58(ptr noundef %60, ptr noundef %61)
  store i32 %call95, ptr %vret93, align 4, !tbaa !10
  %62 = load i32, ptr %vret93, align 4, !tbaa !10
  %tobool96 = icmp ne i32 %62, 0
  br i1 %tobool96, label %if.then97, label %if.end98

if.then97:                                        ; preds = %if.then92
  %63 = load i32, ptr %vret93, align 4, !tbaa !10
  store i32 %63, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup99

if.end98:                                         ; preds = %if.then92
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup99

cleanup99:                                        ; preds = %if.end98, %if.then97
  call void @llvm.lifetime.end.p0(i64 4, ptr %vret93) #9
  %cleanup.dest100 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest100, label %unreachable [
    i32 0, label %cleanup.cont101
    i32 1, label %return
  ]

cleanup.cont101:                                  ; preds = %cleanup99
  br label %if.end102

if.end102:                                        ; preds = %cleanup.cont101, %do.body90
  br label %do.end103

do.end103:                                        ; preds = %if.end102
  br label %do.body104

do.body104:                                       ; preds = %do.end103
  %64 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %func_classobj = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %64, i32 0, i32 8
  %65 = load ptr, ptr %func_classobj, align 8, !tbaa !53
  %tobool105 = icmp ne ptr %65, null
  br i1 %tobool105, label %if.then106, label %if.end116

if.then106:                                       ; preds = %do.body104
  call void @llvm.lifetime.start.p0(i64 4, ptr %vret107) #9
  %66 = load ptr, ptr %visit.addr, align 8, !tbaa !4
  %67 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %func_classobj108 = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %67, i32 0, i32 8
  %68 = load ptr, ptr %func_classobj108, align 8, !tbaa !53
  %69 = load ptr, ptr %arg.addr, align 8, !tbaa !4
  %call109 = call i32 %66(ptr noundef %68, ptr noundef %69)
  store i32 %call109, ptr %vret107, align 4, !tbaa !10
  %70 = load i32, ptr %vret107, align 4, !tbaa !10
  %tobool110 = icmp ne i32 %70, 0
  br i1 %tobool110, label %if.then111, label %if.end112

if.then111:                                       ; preds = %if.then106
  %71 = load i32, ptr %vret107, align 4, !tbaa !10
  store i32 %71, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup113

if.end112:                                        ; preds = %if.then106
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup113

cleanup113:                                       ; preds = %if.end112, %if.then111
  call void @llvm.lifetime.end.p0(i64 4, ptr %vret107) #9
  %cleanup.dest114 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest114, label %unreachable [
    i32 0, label %cleanup.cont115
    i32 1, label %return
  ]

cleanup.cont115:                                  ; preds = %cleanup113
  br label %if.end116

if.end116:                                        ; preds = %cleanup.cont115, %do.body104
  br label %do.end117

do.end117:                                        ; preds = %if.end116
  br label %do.body118

do.body118:                                       ; preds = %do.end117
  %72 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %defaults_tuple = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %72, i32 0, i32 13
  %73 = load ptr, ptr %defaults_tuple, align 8, !tbaa !54
  %tobool119 = icmp ne ptr %73, null
  br i1 %tobool119, label %if.then120, label %if.end130

if.then120:                                       ; preds = %do.body118
  call void @llvm.lifetime.start.p0(i64 4, ptr %vret121) #9
  %74 = load ptr, ptr %visit.addr, align 8, !tbaa !4
  %75 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %defaults_tuple122 = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %75, i32 0, i32 13
  %76 = load ptr, ptr %defaults_tuple122, align 8, !tbaa !54
  %77 = load ptr, ptr %arg.addr, align 8, !tbaa !4
  %call123 = call i32 %74(ptr noundef %76, ptr noundef %77)
  store i32 %call123, ptr %vret121, align 4, !tbaa !10
  %78 = load i32, ptr %vret121, align 4, !tbaa !10
  %tobool124 = icmp ne i32 %78, 0
  br i1 %tobool124, label %if.then125, label %if.end126

if.then125:                                       ; preds = %if.then120
  %79 = load i32, ptr %vret121, align 4, !tbaa !10
  store i32 %79, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup127

if.end126:                                        ; preds = %if.then120
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup127

cleanup127:                                       ; preds = %if.end126, %if.then125
  call void @llvm.lifetime.end.p0(i64 4, ptr %vret121) #9
  %cleanup.dest128 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest128, label %unreachable [
    i32 0, label %cleanup.cont129
    i32 1, label %return
  ]

cleanup.cont129:                                  ; preds = %cleanup127
  br label %if.end130

if.end130:                                        ; preds = %cleanup.cont129, %do.body118
  br label %do.end131

do.end131:                                        ; preds = %if.end130
  br label %do.body132

do.body132:                                       ; preds = %do.end131
  %80 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %defaults_kwdict = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %80, i32 0, i32 14
  %81 = load ptr, ptr %defaults_kwdict, align 8, !tbaa !55
  %tobool133 = icmp ne ptr %81, null
  br i1 %tobool133, label %if.then134, label %if.end144

if.then134:                                       ; preds = %do.body132
  call void @llvm.lifetime.start.p0(i64 4, ptr %vret135) #9
  %82 = load ptr, ptr %visit.addr, align 8, !tbaa !4
  %83 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %defaults_kwdict136 = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %83, i32 0, i32 14
  %84 = load ptr, ptr %defaults_kwdict136, align 8, !tbaa !55
  %85 = load ptr, ptr %arg.addr, align 8, !tbaa !4
  %call137 = call i32 %82(ptr noundef %84, ptr noundef %85)
  store i32 %call137, ptr %vret135, align 4, !tbaa !10
  %86 = load i32, ptr %vret135, align 4, !tbaa !10
  %tobool138 = icmp ne i32 %86, 0
  br i1 %tobool138, label %if.then139, label %if.end140

if.then139:                                       ; preds = %if.then134
  %87 = load i32, ptr %vret135, align 4, !tbaa !10
  store i32 %87, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup141

if.end140:                                        ; preds = %if.then134
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup141

cleanup141:                                       ; preds = %if.end140, %if.then139
  call void @llvm.lifetime.end.p0(i64 4, ptr %vret135) #9
  %cleanup.dest142 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest142, label %unreachable [
    i32 0, label %cleanup.cont143
    i32 1, label %return
  ]

cleanup.cont143:                                  ; preds = %cleanup141
  br label %if.end144

if.end144:                                        ; preds = %cleanup.cont143, %do.body132
  br label %do.end145

do.end145:                                        ; preds = %if.end144
  %88 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %defaults = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %88, i32 0, i32 9
  %89 = load ptr, ptr %defaults, align 8, !tbaa !56
  %tobool146 = icmp ne ptr %89, null
  br i1 %tobool146, label %if.then147, label %if.end168

if.then147:                                       ; preds = %do.end145
  call void @llvm.lifetime.start.p0(i64 8, ptr %pydefaults) #9
  %90 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %defaults148 = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %90, i32 0, i32 9
  %91 = load ptr, ptr %defaults148, align 8, !tbaa !56
  store ptr %91, ptr %pydefaults, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9
  store i32 0, ptr %i, align 4, !tbaa !10
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then147
  %92 = load i32, ptr %i, align 4, !tbaa !10
  %93 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %defaults_pyobjects = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %93, i32 0, i32 10
  %94 = load i32, ptr %defaults_pyobjects, align 8, !tbaa !57
  %cmp = icmp slt i32 %92, %94
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body149

do.body149:                                       ; preds = %for.body
  %95 = load ptr, ptr %pydefaults, align 8, !tbaa !4
  %96 = load i32, ptr %i, align 4, !tbaa !10
  %idxprom = sext i32 %96 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %95, i64 %idxprom
  %97 = load ptr, ptr %arrayidx, align 8, !tbaa !4
  %tobool150 = icmp ne ptr %97, null
  br i1 %tobool150, label %if.then151, label %if.end162

if.then151:                                       ; preds = %do.body149
  call void @llvm.lifetime.start.p0(i64 4, ptr %vret152) #9
  %98 = load ptr, ptr %visit.addr, align 8, !tbaa !4
  %99 = load ptr, ptr %pydefaults, align 8, !tbaa !4
  %100 = load i32, ptr %i, align 4, !tbaa !10
  %idxprom153 = sext i32 %100 to i64
  %arrayidx154 = getelementptr inbounds ptr, ptr %99, i64 %idxprom153
  %101 = load ptr, ptr %arrayidx154, align 8, !tbaa !4
  %102 = load ptr, ptr %arg.addr, align 8, !tbaa !4
  %call155 = call i32 %98(ptr noundef %101, ptr noundef %102)
  store i32 %call155, ptr %vret152, align 4, !tbaa !10
  %103 = load i32, ptr %vret152, align 4, !tbaa !10
  %tobool156 = icmp ne i32 %103, 0
  br i1 %tobool156, label %if.then157, label %if.end158

if.then157:                                       ; preds = %if.then151
  %104 = load i32, ptr %vret152, align 4, !tbaa !10
  store i32 %104, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup159

if.end158:                                        ; preds = %if.then151
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup159

cleanup159:                                       ; preds = %if.end158, %if.then157
  call void @llvm.lifetime.end.p0(i64 4, ptr %vret152) #9
  %cleanup.dest160 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest160, label %cleanup164 [
    i32 0, label %cleanup.cont161
  ]

cleanup.cont161:                                  ; preds = %cleanup159
  br label %if.end162

if.end162:                                        ; preds = %cleanup.cont161, %do.body149
  br label %do.cond

do.cond:                                          ; preds = %if.end162
  br label %do.end163

do.end163:                                        ; preds = %do.cond
  br label %for.inc

for.inc:                                          ; preds = %do.end163
  %105 = load i32, ptr %i, align 4, !tbaa !10
  %inc = add nsw i32 %105, 1
  store i32 %inc, ptr %i, align 4, !tbaa !10
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup164

cleanup164:                                       ; preds = %for.end, %cleanup159
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %pydefaults) #9
  %cleanup.dest166 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest166, label %unreachable [
    i32 0, label %cleanup.cont167
    i32 1, label %return
  ]

cleanup.cont167:                                  ; preds = %cleanup164
  br label %if.end168

if.end168:                                        ; preds = %cleanup.cont167, %do.end145
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end168, %cleanup164, %cleanup141, %cleanup127, %cleanup113, %cleanup99, %cleanup85, %cleanup71, %cleanup57, %cleanup43, %cleanup29, %cleanup15, %cleanup
  %106 = load i32, ptr %retval, align 4
  ret i32 %106

unreachable:                                      ; preds = %cleanup164, %cleanup141, %cleanup127, %cleanup113, %cleanup99, %cleanup85, %cleanup71, %cleanup57, %cleanup43, %cleanup29, %cleanup15, %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @__Pyx_CyFunction_clear(ptr noundef %m) #0 {
entry:
  %m.addr = alloca ptr, align 8
  %_py_tmp = alloca ptr, align 8
  %_py_tmp3 = alloca ptr, align 8
  %_py_tmp11 = alloca ptr, align 8
  %_py_tmp18 = alloca ptr, align 8
  %_py_tmp25 = alloca ptr, align 8
  %_py_tmp32 = alloca ptr, align 8
  %_py_tmp39 = alloca ptr, align 8
  %_py_tmp46 = alloca ptr, align 8
  %_py_tmp53 = alloca ptr, align 8
  %_py_tmp60 = alloca ptr, align 8
  %_py_tmp67 = alloca ptr, align 8
  %_py_tmp74 = alloca ptr, align 8
  %pydefaults = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %m, ptr %m.addr, align 8, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %_py_tmp) #9
  %0 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %func_closure = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %0, i32 0, i32 7
  %1 = load ptr, ptr %func_closure, align 8, !tbaa !46
  store ptr %1, ptr %_py_tmp, align 8, !tbaa !4
  %2 = load ptr, ptr %_py_tmp, align 8, !tbaa !4
  %cmp = icmp ne ptr %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %3 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %func_closure1 = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %3, i32 0, i32 7
  store ptr null, ptr %func_closure1, align 8, !tbaa !46
  %4 = load ptr, ptr %_py_tmp, align 8, !tbaa !4
  call void @Py_DECREF(ptr noundef %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %_py_tmp) #9
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body2

do.body2:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %_py_tmp3) #9
  %5 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %func = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %5, i32 0, i32 0
  %m_module = getelementptr inbounds %struct.PyCFunctionObject, ptr %func, i32 0, i32 3
  %6 = load ptr, ptr %m_module, align 8, !tbaa !47
  store ptr %6, ptr %_py_tmp3, align 8, !tbaa !4
  %7 = load ptr, ptr %_py_tmp3, align 8, !tbaa !4
  %cmp4 = icmp ne ptr %7, null
  br i1 %cmp4, label %if.then5, label %if.end8

if.then5:                                         ; preds = %do.body2
  %8 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %func6 = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %8, i32 0, i32 0
  %m_module7 = getelementptr inbounds %struct.PyCFunctionObject, ptr %func6, i32 0, i32 3
  store ptr null, ptr %m_module7, align 8, !tbaa !47
  %9 = load ptr, ptr %_py_tmp3, align 8, !tbaa !4
  call void @Py_DECREF(ptr noundef %9)
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %do.body2
  call void @llvm.lifetime.end.p0(i64 8, ptr %_py_tmp3) #9
  br label %do.end9

do.end9:                                          ; preds = %if.end8
  br label %do.body10

do.body10:                                        ; preds = %do.end9
  call void @llvm.lifetime.start.p0(i64 8, ptr %_py_tmp11) #9
  %10 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %func_dict = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %10, i32 0, i32 1
  %11 = load ptr, ptr %func_dict, align 8, !tbaa !48
  store ptr %11, ptr %_py_tmp11, align 8, !tbaa !4
  %12 = load ptr, ptr %_py_tmp11, align 8, !tbaa !4
  %cmp12 = icmp ne ptr %12, null
  br i1 %cmp12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %do.body10
  %13 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %func_dict14 = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %13, i32 0, i32 1
  store ptr null, ptr %func_dict14, align 8, !tbaa !48
  %14 = load ptr, ptr %_py_tmp11, align 8, !tbaa !4
  call void @Py_DECREF(ptr noundef %14)
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %do.body10
  call void @llvm.lifetime.end.p0(i64 8, ptr %_py_tmp11) #9
  br label %do.end16

do.end16:                                         ; preds = %if.end15
  br label %do.body17

do.body17:                                        ; preds = %do.end16
  call void @llvm.lifetime.start.p0(i64 8, ptr %_py_tmp18) #9
  %15 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %func_name = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %15, i32 0, i32 2
  %16 = load ptr, ptr %func_name, align 8, !tbaa !49
  store ptr %16, ptr %_py_tmp18, align 8, !tbaa !4
  %17 = load ptr, ptr %_py_tmp18, align 8, !tbaa !4
  %cmp19 = icmp ne ptr %17, null
  br i1 %cmp19, label %if.then20, label %if.end22

if.then20:                                        ; preds = %do.body17
  %18 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %func_name21 = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %18, i32 0, i32 2
  store ptr null, ptr %func_name21, align 8, !tbaa !49
  %19 = load ptr, ptr %_py_tmp18, align 8, !tbaa !4
  call void @Py_DECREF(ptr noundef %19)
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %do.body17
  call void @llvm.lifetime.end.p0(i64 8, ptr %_py_tmp18) #9
  br label %do.end23

do.end23:                                         ; preds = %if.end22
  br label %do.body24

do.body24:                                        ; preds = %do.end23
  call void @llvm.lifetime.start.p0(i64 8, ptr %_py_tmp25) #9
  %20 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %func_qualname = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %20, i32 0, i32 3
  %21 = load ptr, ptr %func_qualname, align 8, !tbaa !42
  store ptr %21, ptr %_py_tmp25, align 8, !tbaa !4
  %22 = load ptr, ptr %_py_tmp25, align 8, !tbaa !4
  %cmp26 = icmp ne ptr %22, null
  br i1 %cmp26, label %if.then27, label %if.end29

if.then27:                                        ; preds = %do.body24
  %23 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %func_qualname28 = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %23, i32 0, i32 3
  store ptr null, ptr %func_qualname28, align 8, !tbaa !42
  %24 = load ptr, ptr %_py_tmp25, align 8, !tbaa !4
  call void @Py_DECREF(ptr noundef %24)
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %do.body24
  call void @llvm.lifetime.end.p0(i64 8, ptr %_py_tmp25) #9
  br label %do.end30

do.end30:                                         ; preds = %if.end29
  br label %do.body31

do.body31:                                        ; preds = %do.end30
  call void @llvm.lifetime.start.p0(i64 8, ptr %_py_tmp32) #9
  %25 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %func_doc = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %25, i32 0, i32 4
  %26 = load ptr, ptr %func_doc, align 8, !tbaa !50
  store ptr %26, ptr %_py_tmp32, align 8, !tbaa !4
  %27 = load ptr, ptr %_py_tmp32, align 8, !tbaa !4
  %cmp33 = icmp ne ptr %27, null
  br i1 %cmp33, label %if.then34, label %if.end36

if.then34:                                        ; preds = %do.body31
  %28 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %func_doc35 = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %28, i32 0, i32 4
  store ptr null, ptr %func_doc35, align 8, !tbaa !50
  %29 = load ptr, ptr %_py_tmp32, align 8, !tbaa !4
  call void @Py_DECREF(ptr noundef %29)
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %do.body31
  call void @llvm.lifetime.end.p0(i64 8, ptr %_py_tmp32) #9
  br label %do.end37

do.end37:                                         ; preds = %if.end36
  br label %do.body38

do.body38:                                        ; preds = %do.end37
  call void @llvm.lifetime.start.p0(i64 8, ptr %_py_tmp39) #9
  %30 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %func_globals = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %30, i32 0, i32 5
  %31 = load ptr, ptr %func_globals, align 8, !tbaa !51
  store ptr %31, ptr %_py_tmp39, align 8, !tbaa !4
  %32 = load ptr, ptr %_py_tmp39, align 8, !tbaa !4
  %cmp40 = icmp ne ptr %32, null
  br i1 %cmp40, label %if.then41, label %if.end43

if.then41:                                        ; preds = %do.body38
  %33 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %func_globals42 = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %33, i32 0, i32 5
  store ptr null, ptr %func_globals42, align 8, !tbaa !51
  %34 = load ptr, ptr %_py_tmp39, align 8, !tbaa !4
  call void @Py_DECREF(ptr noundef %34)
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %do.body38
  call void @llvm.lifetime.end.p0(i64 8, ptr %_py_tmp39) #9
  br label %do.end44

do.end44:                                         ; preds = %if.end43
  br label %do.body45

do.body45:                                        ; preds = %do.end44
  call void @llvm.lifetime.start.p0(i64 8, ptr %_py_tmp46) #9
  %35 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %func_code = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %35, i32 0, i32 6
  %36 = load ptr, ptr %func_code, align 8, !tbaa !52
  store ptr %36, ptr %_py_tmp46, align 8, !tbaa !4
  %37 = load ptr, ptr %_py_tmp46, align 8, !tbaa !4
  %cmp47 = icmp ne ptr %37, null
  br i1 %cmp47, label %if.then48, label %if.end50

if.then48:                                        ; preds = %do.body45
  %38 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %func_code49 = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %38, i32 0, i32 6
  store ptr null, ptr %func_code49, align 8, !tbaa !52
  %39 = load ptr, ptr %_py_tmp46, align 8, !tbaa !4
  call void @Py_DECREF(ptr noundef %39)
  br label %if.end50

if.end50:                                         ; preds = %if.then48, %do.body45
  call void @llvm.lifetime.end.p0(i64 8, ptr %_py_tmp46) #9
  br label %do.end51

do.end51:                                         ; preds = %if.end50
  br label %do.body52

do.body52:                                        ; preds = %do.end51
  call void @llvm.lifetime.start.p0(i64 8, ptr %_py_tmp53) #9
  %40 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %func_classobj = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %40, i32 0, i32 8
  %41 = load ptr, ptr %func_classobj, align 8, !tbaa !53
  store ptr %41, ptr %_py_tmp53, align 8, !tbaa !4
  %42 = load ptr, ptr %_py_tmp53, align 8, !tbaa !4
  %cmp54 = icmp ne ptr %42, null
  br i1 %cmp54, label %if.then55, label %if.end57

if.then55:                                        ; preds = %do.body52
  %43 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %func_classobj56 = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %43, i32 0, i32 8
  store ptr null, ptr %func_classobj56, align 8, !tbaa !53
  %44 = load ptr, ptr %_py_tmp53, align 8, !tbaa !4
  call void @Py_DECREF(ptr noundef %44)
  br label %if.end57

if.end57:                                         ; preds = %if.then55, %do.body52
  call void @llvm.lifetime.end.p0(i64 8, ptr %_py_tmp53) #9
  br label %do.end58

do.end58:                                         ; preds = %if.end57
  br label %do.body59

do.body59:                                        ; preds = %do.end58
  call void @llvm.lifetime.start.p0(i64 8, ptr %_py_tmp60) #9
  %45 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %defaults_tuple = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %45, i32 0, i32 13
  %46 = load ptr, ptr %defaults_tuple, align 8, !tbaa !54
  store ptr %46, ptr %_py_tmp60, align 8, !tbaa !4
  %47 = load ptr, ptr %_py_tmp60, align 8, !tbaa !4
  %cmp61 = icmp ne ptr %47, null
  br i1 %cmp61, label %if.then62, label %if.end64

if.then62:                                        ; preds = %do.body59
  %48 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %defaults_tuple63 = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %48, i32 0, i32 13
  store ptr null, ptr %defaults_tuple63, align 8, !tbaa !54
  %49 = load ptr, ptr %_py_tmp60, align 8, !tbaa !4
  call void @Py_DECREF(ptr noundef %49)
  br label %if.end64

if.end64:                                         ; preds = %if.then62, %do.body59
  call void @llvm.lifetime.end.p0(i64 8, ptr %_py_tmp60) #9
  br label %do.end65

do.end65:                                         ; preds = %if.end64
  br label %do.body66

do.body66:                                        ; preds = %do.end65
  call void @llvm.lifetime.start.p0(i64 8, ptr %_py_tmp67) #9
  %50 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %defaults_kwdict = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %50, i32 0, i32 14
  %51 = load ptr, ptr %defaults_kwdict, align 8, !tbaa !55
  store ptr %51, ptr %_py_tmp67, align 8, !tbaa !4
  %52 = load ptr, ptr %_py_tmp67, align 8, !tbaa !4
  %cmp68 = icmp ne ptr %52, null
  br i1 %cmp68, label %if.then69, label %if.end71

if.then69:                                        ; preds = %do.body66
  %53 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %defaults_kwdict70 = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %53, i32 0, i32 14
  store ptr null, ptr %defaults_kwdict70, align 8, !tbaa !55
  %54 = load ptr, ptr %_py_tmp67, align 8, !tbaa !4
  call void @Py_DECREF(ptr noundef %54)
  br label %if.end71

if.end71:                                         ; preds = %if.then69, %do.body66
  call void @llvm.lifetime.end.p0(i64 8, ptr %_py_tmp67) #9
  br label %do.end72

do.end72:                                         ; preds = %if.end71
  br label %do.body73

do.body73:                                        ; preds = %do.end72
  call void @llvm.lifetime.start.p0(i64 8, ptr %_py_tmp74) #9
  %55 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %func_annotations = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %55, i32 0, i32 16
  %56 = load ptr, ptr %func_annotations, align 8, !tbaa !58
  store ptr %56, ptr %_py_tmp74, align 8, !tbaa !4
  %57 = load ptr, ptr %_py_tmp74, align 8, !tbaa !4
  %cmp75 = icmp ne ptr %57, null
  br i1 %cmp75, label %if.then76, label %if.end78

if.then76:                                        ; preds = %do.body73
  %58 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %func_annotations77 = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %58, i32 0, i32 16
  store ptr null, ptr %func_annotations77, align 8, !tbaa !58
  %59 = load ptr, ptr %_py_tmp74, align 8, !tbaa !4
  call void @Py_DECREF(ptr noundef %59)
  br label %if.end78

if.end78:                                         ; preds = %if.then76, %do.body73
  call void @llvm.lifetime.end.p0(i64 8, ptr %_py_tmp74) #9
  br label %do.end79

do.end79:                                         ; preds = %if.end78
  %60 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %defaults = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %60, i32 0, i32 9
  %61 = load ptr, ptr %defaults, align 8, !tbaa !56
  %tobool = icmp ne ptr %61, null
  br i1 %tobool, label %if.then80, label %if.end85

if.then80:                                        ; preds = %do.end79
  call void @llvm.lifetime.start.p0(i64 8, ptr %pydefaults) #9
  %62 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %defaults81 = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %62, i32 0, i32 9
  %63 = load ptr, ptr %defaults81, align 8, !tbaa !56
  store ptr %63, ptr %pydefaults, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9
  store i32 0, ptr %i, align 4, !tbaa !10
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then80
  %64 = load i32, ptr %i, align 4, !tbaa !10
  %65 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %defaults_pyobjects = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %65, i32 0, i32 10
  %66 = load i32, ptr %defaults_pyobjects, align 8, !tbaa !57
  %cmp82 = icmp slt i32 %64, %66
  br i1 %cmp82, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %67 = load ptr, ptr %pydefaults, align 8, !tbaa !4
  %68 = load i32, ptr %i, align 4, !tbaa !10
  %idxprom = sext i32 %68 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %67, i64 %idxprom
  %69 = load ptr, ptr %arrayidx, align 8, !tbaa !4
  call void @Py_XDECREF(ptr noundef %69)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %70 = load i32, ptr %i, align 4, !tbaa !10
  %inc = add nsw i32 %70, 1
  store i32 %inc, ptr %i, align 4, !tbaa !10
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %71 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %defaults83 = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %71, i32 0, i32 9
  %72 = load ptr, ptr %defaults83, align 8, !tbaa !56
  call void @PyObject_Free(ptr noundef %72)
  %73 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %defaults84 = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %73, i32 0, i32 9
  store ptr null, ptr %defaults84, align 8, !tbaa !56
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %pydefaults) #9
  br label %if.end85

if.end85:                                         ; preds = %for.end, %do.end79
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal ptr @__Pyx_CyFunction_descr_get(ptr noundef %func, ptr noundef %obj, ptr noundef %type) #0 {
entry:
  %func.addr = alloca ptr, align 8
  %obj.addr = alloca ptr, align 8
  %type.addr = alloca ptr, align 8
  store ptr %func, ptr %func.addr, align 8, !tbaa !4
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !4
  store ptr %type, ptr %type.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load ptr, ptr %type.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %func.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %call = call ptr @PyMethod_New(ptr noundef %2, ptr noundef %3)
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load ptr, ptr %func.addr, align 8, !tbaa !4
  call void @Py_INCREF(ptr noundef %4)
  %5 = load ptr, ptr %func.addr, align 8, !tbaa !4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %call, %cond.true ], [ %5, %cond.false ]
  ret ptr %cond
}

declare void @PyObject_GC_UnTrack(ptr noundef) #4

; Function Attrs: nounwind uwtable
define internal void @__Pyx__CyFunction_dealloc(ptr noundef %m) #0 {
entry:
  %m.addr = alloca ptr, align 8
  store ptr %m, ptr %m.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %func = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %0, i32 0, i32 0
  %m_weakreflist = getelementptr inbounds %struct.PyCFunctionObject, ptr %func, i32 0, i32 4
  %1 = load ptr, ptr %m_weakreflist, align 8, !tbaa !59
  %cmp = icmp ne ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %m.addr, align 8, !tbaa !4
  call void @PyObject_ClearWeakRefs(ptr noundef %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %call = call i32 @__Pyx_CyFunction_clear(ptr noundef %3)
  %4 = load ptr, ptr %m.addr, align 8, !tbaa !4
  call void @PyObject_GC_Del(ptr noundef %4)
  ret void
}

declare void @PyObject_ClearWeakRefs(ptr noundef) #4

declare void @PyObject_GC_Del(ptr noundef) #4

declare ptr @PyUnicode_FromFormat(ptr noundef, ...) #4

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @PyTuple_GET_SIZE(ptr noundef %op) #5 {
entry:
  %op.addr = alloca ptr, align 8
  %tuple = alloca ptr, align 8
  store ptr %op, ptr %op.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %tuple) #9
  %0 = load ptr, ptr %op.addr, align 8, !tbaa !4
  store ptr %0, ptr %tuple, align 8, !tbaa !4
  %1 = load ptr, ptr %tuple, align 8, !tbaa !4
  %call = call i64 @Py_SIZE(ptr noundef %1)
  call void @llvm.lifetime.end.p0(i64 8, ptr %tuple) #9
  ret i64 %call
}

declare ptr @PyTuple_GetSlice(ptr noundef, i64 noundef, i64 noundef) #4

declare ptr @PyTuple_GetItem(ptr noundef, i64 noundef) #4

; Function Attrs: nounwind uwtable
define internal ptr @__Pyx_CyFunction_CallMethod(ptr noundef %func, ptr noundef %self, ptr noundef %arg, ptr noundef %kw) #0 {
entry:
  %retval = alloca ptr, align 8
  %func.addr = alloca ptr, align 8
  %self.addr = alloca ptr, align 8
  %arg.addr = alloca ptr, align 8
  %kw.addr = alloca ptr, align 8
  %f = alloca ptr, align 8
  %meth = alloca ptr, align 8
  %size = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %result = alloca ptr, align 8
  %arg0 = alloca ptr, align 8
  store ptr %func, ptr %func.addr, align 8, !tbaa !4
  store ptr %self, ptr %self.addr, align 8, !tbaa !4
  store ptr %arg, ptr %arg.addr, align 8, !tbaa !4
  store ptr %kw, ptr %kw.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %f) #9
  %0 = load ptr, ptr %func.addr, align 8, !tbaa !4
  store ptr %0, ptr %f, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %meth) #9
  %1 = load ptr, ptr %f, align 8, !tbaa !4
  %m_ml = getelementptr inbounds %struct.PyCFunctionObject, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %m_ml, align 8, !tbaa !60
  %ml_meth = getelementptr inbounds %struct.PyMethodDef, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %ml_meth, align 8, !tbaa !61
  store ptr %3, ptr %meth, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #9
  %4 = load ptr, ptr %f, align 8, !tbaa !4
  %m_ml1 = getelementptr inbounds %struct.PyCFunctionObject, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %m_ml1, align 8, !tbaa !60
  %ml_flags = getelementptr inbounds %struct.PyMethodDef, ptr %5, i32 0, i32 2
  %6 = load i32, ptr %ml_flags, align 8, !tbaa !63
  %and = and i32 %6, 15
  switch i32 %and, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb5
    i32 4, label %sw.bb7
    i32 8, label %sw.bb39
  ]

sw.bb:                                            ; preds = %entry
  %7 = load ptr, ptr %kw.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %7, null
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %sw.bb
  %8 = load ptr, ptr %kw.addr, align 8, !tbaa !4
  %call = call i64 @PyDict_Size(ptr noundef %8)
  %cmp2 = icmp eq i64 %call, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %sw.bb
  %9 = phi i1 [ true, %sw.bb ], [ %cmp2, %lor.rhs ]
  %lnot = xor i1 %9, true
  %lnot3 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot3 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %lor.end
  %10 = load ptr, ptr %meth, align 8, !tbaa !4
  %11 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %12 = load ptr, ptr %arg.addr, align 8, !tbaa !4
  %call4 = call ptr %10(ptr noundef %11, ptr noundef %12)
  store ptr %call4, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.end
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %13 = load ptr, ptr %meth, align 8, !tbaa !4
  %14 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %15 = load ptr, ptr %arg.addr, align 8, !tbaa !4
  %16 = load ptr, ptr %kw.addr, align 8, !tbaa !4
  %call6 = call ptr %13(ptr noundef %14, ptr noundef %15, ptr noundef %16)
  store ptr %call6, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  %17 = load ptr, ptr %kw.addr, align 8, !tbaa !4
  %cmp8 = icmp eq ptr %17, null
  br i1 %cmp8, label %lor.end14, label %lor.rhs10

lor.rhs10:                                        ; preds = %sw.bb7
  %18 = load ptr, ptr %kw.addr, align 8, !tbaa !4
  %call11 = call i64 @PyDict_Size(ptr noundef %18)
  %cmp12 = icmp eq i64 %call11, 0
  br label %lor.end14

lor.end14:                                        ; preds = %lor.rhs10, %sw.bb7
  %19 = phi i1 [ true, %sw.bb7 ], [ %cmp12, %lor.rhs10 ]
  %lnot15 = xor i1 %19, true
  %lnot17 = xor i1 %lnot15, true
  %lnot.ext18 = zext i1 %lnot17 to i32
  %conv19 = sext i32 %lnot.ext18 to i64
  %expval20 = call i64 @llvm.expect.i64(i64 %conv19, i64 1)
  %tobool21 = icmp ne i64 %expval20, 0
  br i1 %tobool21, label %if.then22, label %if.end38

if.then22:                                        ; preds = %lor.end14
  %20 = load ptr, ptr %arg.addr, align 8, !tbaa !4
  %call23 = call i64 @PyTuple_GET_SIZE(ptr noundef %20)
  store i64 %call23, ptr %size, align 8, !tbaa !24
  %21 = load i64, ptr %size, align 8, !tbaa !24
  %cmp24 = icmp eq i64 %21, 0
  %lnot26 = xor i1 %cmp24, true
  %lnot28 = xor i1 %lnot26, true
  %lnot.ext29 = zext i1 %lnot28 to i32
  %conv30 = sext i32 %lnot.ext29 to i64
  %expval31 = call i64 @llvm.expect.i64(i64 %conv30, i64 1)
  %tobool32 = icmp ne i64 %expval31, 0
  br i1 %tobool32, label %if.then33, label %if.end35

if.then33:                                        ; preds = %if.then22
  %22 = load ptr, ptr %meth, align 8, !tbaa !4
  %23 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %call34 = call ptr %22(ptr noundef %23, ptr noundef null)
  store ptr %call34, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end35:                                         ; preds = %if.then22
  %24 = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !4
  %25 = load ptr, ptr %f, align 8, !tbaa !4
  %m_ml36 = getelementptr inbounds %struct.PyCFunctionObject, ptr %25, i32 0, i32 1
  %26 = load ptr, ptr %m_ml36, align 8, !tbaa !60
  %ml_name = getelementptr inbounds %struct.PyMethodDef, ptr %26, i32 0, i32 0
  %27 = load ptr, ptr %ml_name, align 8, !tbaa !64
  %28 = load i64, ptr %size, align 8, !tbaa !24
  %call37 = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %24, ptr noundef @.str.28, ptr noundef %27, i64 noundef %28)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end38:                                         ; preds = %lor.end14
  br label %sw.epilog

sw.bb39:                                          ; preds = %entry
  %29 = load ptr, ptr %kw.addr, align 8, !tbaa !4
  %cmp40 = icmp eq ptr %29, null
  br i1 %cmp40, label %lor.end46, label %lor.rhs42

lor.rhs42:                                        ; preds = %sw.bb39
  %30 = load ptr, ptr %kw.addr, align 8, !tbaa !4
  %call43 = call i64 @PyDict_Size(ptr noundef %30)
  %cmp44 = icmp eq i64 %call43, 0
  br label %lor.end46

lor.end46:                                        ; preds = %lor.rhs42, %sw.bb39
  %31 = phi i1 [ true, %sw.bb39 ], [ %cmp44, %lor.rhs42 ]
  %lnot47 = xor i1 %31, true
  %lnot49 = xor i1 %lnot47, true
  %lnot.ext50 = zext i1 %lnot49 to i32
  %conv51 = sext i32 %lnot.ext50 to i64
  %expval52 = call i64 @llvm.expect.i64(i64 %conv51, i64 1)
  %tobool53 = icmp ne i64 %expval52, 0
  br i1 %tobool53, label %if.then54, label %if.end71

if.then54:                                        ; preds = %lor.end46
  %32 = load ptr, ptr %arg.addr, align 8, !tbaa !4
  %call55 = call i64 @PyTuple_GET_SIZE(ptr noundef %32)
  store i64 %call55, ptr %size, align 8, !tbaa !24
  %33 = load i64, ptr %size, align 8, !tbaa !24
  %cmp56 = icmp eq i64 %33, 1
  %lnot58 = xor i1 %cmp56, true
  %lnot60 = xor i1 %lnot58, true
  %lnot.ext61 = zext i1 %lnot60 to i32
  %conv62 = sext i32 %lnot.ext61 to i64
  %expval63 = call i64 @llvm.expect.i64(i64 %conv62, i64 1)
  %tobool64 = icmp ne i64 %expval63, 0
  br i1 %tobool64, label %if.then65, label %if.end67

if.then65:                                        ; preds = %if.then54
  call void @llvm.lifetime.start.p0(i64 8, ptr %result) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %arg0) #9
  %34 = load ptr, ptr %arg.addr, align 8, !tbaa !4
  %ob_item = getelementptr inbounds %struct.PyTupleObject, ptr %34, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x ptr], ptr %ob_item, i64 0, i64 0
  %35 = load ptr, ptr %arrayidx, align 8, !tbaa !4
  store ptr %35, ptr %arg0, align 8, !tbaa !4
  %36 = load ptr, ptr %meth, align 8, !tbaa !4
  %37 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %38 = load ptr, ptr %arg0, align 8, !tbaa !4
  %call66 = call ptr %36(ptr noundef %37, ptr noundef %38)
  store ptr %call66, ptr %result, align 8, !tbaa !4
  %39 = load ptr, ptr %result, align 8, !tbaa !4
  store ptr %39, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %arg0) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %result) #9
  br label %cleanup

if.end67:                                         ; preds = %if.then54
  %40 = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !4
  %41 = load ptr, ptr %f, align 8, !tbaa !4
  %m_ml68 = getelementptr inbounds %struct.PyCFunctionObject, ptr %41, i32 0, i32 1
  %42 = load ptr, ptr %m_ml68, align 8, !tbaa !60
  %ml_name69 = getelementptr inbounds %struct.PyMethodDef, ptr %42, i32 0, i32 0
  %43 = load ptr, ptr %ml_name69, align 8, !tbaa !64
  %44 = load i64, ptr %size, align 8, !tbaa !24
  %call70 = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %40, ptr noundef @.str.29, ptr noundef %43, i64 noundef %44)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end71:                                         ; preds = %lor.end46
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %45 = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !4
  call void @PyErr_SetString(ptr noundef %45, ptr noundef @.str.30)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.epilog:                                        ; preds = %if.end71, %if.end38, %if.end
  %46 = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !4
  %47 = load ptr, ptr %f, align 8, !tbaa !4
  %m_ml72 = getelementptr inbounds %struct.PyCFunctionObject, ptr %47, i32 0, i32 1
  %48 = load ptr, ptr %m_ml72, align 8, !tbaa !60
  %ml_name73 = getelementptr inbounds %struct.PyMethodDef, ptr %48, i32 0, i32 0
  %49 = load ptr, ptr %ml_name73, align 8, !tbaa !64
  %call74 = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %46, ptr noundef @.str.31, ptr noundef %49)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default, %if.end67, %if.then65, %if.end35, %if.then33, %sw.bb5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %meth) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %f) #9
  %50 = load ptr, ptr %retval, align 8
  ret ptr %50
}

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @__Pyx_CyFunction_Call(ptr noundef %func, ptr noundef %arg, ptr noundef %kw) #5 {
entry:
  %func.addr = alloca ptr, align 8
  %arg.addr = alloca ptr, align 8
  %kw.addr = alloca ptr, align 8
  store ptr %func, ptr %func.addr, align 8, !tbaa !4
  store ptr %arg, ptr %arg.addr, align 8, !tbaa !4
  store ptr %kw, ptr %kw.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %func.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %func.addr, align 8, !tbaa !4
  %m_self = getelementptr inbounds %struct.PyCFunctionObject, ptr %1, i32 0, i32 2
  %2 = load ptr, ptr %m_self, align 8, !tbaa !65
  %3 = load ptr, ptr %arg.addr, align 8, !tbaa !4
  %4 = load ptr, ptr %kw.addr, align 8, !tbaa !4
  %call = call ptr @__Pyx_CyFunction_CallMethod(ptr noundef %0, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  ret ptr %call
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @Py_SIZE(ptr noundef %ob) #5 {
entry:
  %ob.addr = alloca ptr, align 8
  %var_ob = alloca ptr, align 8
  store ptr %ob, ptr %ob.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %var_ob) #9
  %0 = load ptr, ptr %ob.addr, align 8, !tbaa !4
  store ptr %0, ptr %var_ob, align 8, !tbaa !4
  %1 = load ptr, ptr %var_ob, align 8, !tbaa !4
  %ob_size = getelementptr inbounds %struct.PyVarObject, ptr %1, i32 0, i32 1
  %2 = load i64, ptr %ob_size, align 8, !tbaa !66
  call void @llvm.lifetime.end.p0(i64 8, ptr %var_ob) #9
  ret i64 %2
}

declare i64 @PyDict_Size(ptr noundef) #4

declare void @PyObject_Free(ptr noundef) #4

; Function Attrs: nounwind uwtable
define internal ptr @__Pyx_CyFunction_reduce(ptr noundef %m, ptr noundef %args) #0 {
entry:
  %m.addr = alloca ptr, align 8
  %args.addr = alloca ptr, align 8
  store ptr %m, ptr %m.addr, align 8, !tbaa !4
  store ptr %args, ptr %args.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %func_qualname = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %0, i32 0, i32 3
  %1 = load ptr, ptr %func_qualname, align 8, !tbaa !42
  call void @Py_INCREF(ptr noundef %1)
  %2 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %func_qualname1 = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %2, i32 0, i32 3
  %3 = load ptr, ptr %func_qualname1, align 8, !tbaa !42
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define internal ptr @__Pyx_CyFunction_get_doc(ptr noundef %op, ptr noundef %closure) #0 {
entry:
  %retval = alloca ptr, align 8
  %op.addr = alloca ptr, align 8
  %closure.addr = alloca ptr, align 8
  store ptr %op, ptr %op.addr, align 8, !tbaa !4
  store ptr %closure, ptr %closure.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %op.addr, align 8, !tbaa !4
  %func_doc = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %0, i32 0, i32 4
  %1 = load ptr, ptr %func_doc, align 8, !tbaa !50
  %cmp = icmp eq ptr %1, null
  %lnot = xor i1 %cmp, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then, label %if.end20

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %op.addr, align 8, !tbaa !4
  %func = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %2, i32 0, i32 0
  %m_ml = getelementptr inbounds %struct.PyCFunctionObject, ptr %func, i32 0, i32 1
  %3 = load ptr, ptr %m_ml, align 8, !tbaa !67
  %ml_doc = getelementptr inbounds %struct.PyMethodDef, ptr %3, i32 0, i32 3
  %4 = load ptr, ptr %ml_doc, align 8, !tbaa !68
  %tobool2 = icmp ne ptr %4, null
  br i1 %tobool2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  %5 = load ptr, ptr %op.addr, align 8, !tbaa !4
  %func4 = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %5, i32 0, i32 0
  %m_ml5 = getelementptr inbounds %struct.PyCFunctionObject, ptr %func4, i32 0, i32 1
  %6 = load ptr, ptr %m_ml5, align 8, !tbaa !67
  %ml_doc6 = getelementptr inbounds %struct.PyMethodDef, ptr %6, i32 0, i32 3
  %7 = load ptr, ptr %ml_doc6, align 8, !tbaa !68
  %call = call ptr @PyUnicode_FromString(ptr noundef %7)
  %8 = load ptr, ptr %op.addr, align 8, !tbaa !4
  %func_doc7 = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %8, i32 0, i32 4
  store ptr %call, ptr %func_doc7, align 8, !tbaa !50
  %9 = load ptr, ptr %op.addr, align 8, !tbaa !4
  %func_doc8 = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %9, i32 0, i32 4
  %10 = load ptr, ptr %func_doc8, align 8, !tbaa !50
  %cmp9 = icmp eq ptr %10, null
  %lnot11 = xor i1 %cmp9, true
  %lnot13 = xor i1 %lnot11, true
  %lnot.ext14 = zext i1 %lnot13 to i32
  %conv15 = sext i32 %lnot.ext14 to i64
  %expval16 = call i64 @llvm.expect.i64(i64 %conv15, i64 0)
  %tobool17 = icmp ne i64 %expval16, 0
  br i1 %tobool17, label %if.then18, label %if.end

if.then18:                                        ; preds = %if.then3
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %if.then3
  br label %if.end19

if.else:                                          ; preds = %if.then
  call void @Py_INCREF(ptr noundef @_Py_NoneStruct)
  store ptr @_Py_NoneStruct, ptr %retval, align 8
  br label %return

if.end19:                                         ; preds = %if.end
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %entry
  %11 = load ptr, ptr %op.addr, align 8, !tbaa !4
  %func_doc21 = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %11, i32 0, i32 4
  %12 = load ptr, ptr %func_doc21, align 8, !tbaa !50
  call void @Py_INCREF(ptr noundef %12)
  %13 = load ptr, ptr %op.addr, align 8, !tbaa !4
  %func_doc22 = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %13, i32 0, i32 4
  %14 = load ptr, ptr %func_doc22, align 8, !tbaa !50
  store ptr %14, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end20, %if.else, %if.then18
  %15 = load ptr, ptr %retval, align 8
  ret ptr %15
}

; Function Attrs: nounwind uwtable
define internal i32 @__Pyx_CyFunction_set_doc(ptr noundef %op, ptr noundef %value, ptr noundef %context) #0 {
entry:
  %op.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  %context.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %op, ptr %op.addr, align 8, !tbaa !4
  store ptr %value, ptr %value.addr, align 8, !tbaa !4
  store ptr %context, ptr %context.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #9
  %0 = load ptr, ptr %op.addr, align 8, !tbaa !4
  %func_doc = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %0, i32 0, i32 4
  %1 = load ptr, ptr %func_doc, align 8, !tbaa !50
  store ptr %1, ptr %tmp, align 8, !tbaa !4
  %2 = load ptr, ptr %value.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr @_Py_NoneStruct, ptr %value.addr, align 8, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %value.addr, align 8, !tbaa !4
  call void @Py_INCREF(ptr noundef %3)
  %4 = load ptr, ptr %value.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %op.addr, align 8, !tbaa !4
  %func_doc1 = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %5, i32 0, i32 4
  store ptr %4, ptr %func_doc1, align 8, !tbaa !50
  %6 = load ptr, ptr %tmp, align 8, !tbaa !4
  call void @Py_XDECREF(ptr noundef %6)
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #9
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal ptr @__Pyx_CyFunction_get_name(ptr noundef %op, ptr noundef %context) #0 {
entry:
  %retval = alloca ptr, align 8
  %op.addr = alloca ptr, align 8
  %context.addr = alloca ptr, align 8
  store ptr %op, ptr %op.addr, align 8, !tbaa !4
  store ptr %context, ptr %context.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %op.addr, align 8, !tbaa !4
  %func_name = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %func_name, align 8, !tbaa !49
  %cmp = icmp eq ptr %1, null
  %lnot = xor i1 %cmp, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then, label %if.end14

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %op.addr, align 8, !tbaa !4
  %func = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %2, i32 0, i32 0
  %m_ml = getelementptr inbounds %struct.PyCFunctionObject, ptr %func, i32 0, i32 1
  %3 = load ptr, ptr %m_ml, align 8, !tbaa !67
  %ml_name = getelementptr inbounds %struct.PyMethodDef, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %ml_name, align 8, !tbaa !64
  %call = call ptr @PyUnicode_InternFromString(ptr noundef %4)
  %5 = load ptr, ptr %op.addr, align 8, !tbaa !4
  %func_name2 = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %5, i32 0, i32 2
  store ptr %call, ptr %func_name2, align 8, !tbaa !49
  %6 = load ptr, ptr %op.addr, align 8, !tbaa !4
  %func_name3 = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %6, i32 0, i32 2
  %7 = load ptr, ptr %func_name3, align 8, !tbaa !49
  %cmp4 = icmp eq ptr %7, null
  %lnot6 = xor i1 %cmp4, true
  %lnot8 = xor i1 %lnot6, true
  %lnot.ext9 = zext i1 %lnot8 to i32
  %conv10 = sext i32 %lnot.ext9 to i64
  %expval11 = call i64 @llvm.expect.i64(i64 %conv10, i64 0)
  %tobool12 = icmp ne i64 %expval11, 0
  br i1 %tobool12, label %if.then13, label %if.end

if.then13:                                        ; preds = %if.then
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end14

if.end14:                                         ; preds = %if.end, %entry
  %8 = load ptr, ptr %op.addr, align 8, !tbaa !4
  %func_name15 = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %8, i32 0, i32 2
  %9 = load ptr, ptr %func_name15, align 8, !tbaa !49
  call void @Py_INCREF(ptr noundef %9)
  %10 = load ptr, ptr %op.addr, align 8, !tbaa !4
  %func_name16 = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %10, i32 0, i32 2
  %11 = load ptr, ptr %func_name16, align 8, !tbaa !49
  store ptr %11, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end14, %if.then13
  %12 = load ptr, ptr %retval, align 8
  ret ptr %12
}

; Function Attrs: nounwind uwtable
define internal i32 @__Pyx_CyFunction_set_name(ptr noundef %op, ptr noundef %value, ptr noundef %context) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  %context.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %op, ptr %op.addr, align 8, !tbaa !4
  store ptr %value, ptr %value.addr, align 8, !tbaa !4
  store ptr %context, ptr %context.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #9
  %0 = load ptr, ptr %value.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %1 = load ptr, ptr %value.addr, align 8, !tbaa !4
  %call = call ptr @Py_TYPE(ptr noundef %1)
  %call1 = call i32 @PyType_HasFeature(ptr noundef %call, i64 noundef 268435456)
  %tobool = icmp ne i32 %call1, 0
  %lnot = xor i1 %tobool, true
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %lnot, %lor.rhs ]
  %lnot2 = xor i1 %2, true
  %lnot3 = xor i1 %lnot2, true
  %lnot.ext = zext i1 %lnot3 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool4 = icmp ne i64 %expval, 0
  br i1 %tobool4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.end
  %3 = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !4
  call void @PyErr_SetString(ptr noundef %3, ptr noundef @.str.52)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.end
  %4 = load ptr, ptr %op.addr, align 8, !tbaa !4
  %func_name = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %4, i32 0, i32 2
  %5 = load ptr, ptr %func_name, align 8, !tbaa !49
  store ptr %5, ptr %tmp, align 8, !tbaa !4
  %6 = load ptr, ptr %value.addr, align 8, !tbaa !4
  call void @Py_INCREF(ptr noundef %6)
  %7 = load ptr, ptr %value.addr, align 8, !tbaa !4
  %8 = load ptr, ptr %op.addr, align 8, !tbaa !4
  %func_name5 = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %8, i32 0, i32 2
  store ptr %7, ptr %func_name5, align 8, !tbaa !49
  %9 = load ptr, ptr %tmp, align 8, !tbaa !4
  call void @Py_XDECREF(ptr noundef %9)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #9
  %10 = load i32, ptr %retval, align 4
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal ptr @__Pyx_CyFunction_get_qualname(ptr noundef %op, ptr noundef %context) #0 {
entry:
  %op.addr = alloca ptr, align 8
  %context.addr = alloca ptr, align 8
  store ptr %op, ptr %op.addr, align 8, !tbaa !4
  store ptr %context, ptr %context.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %op.addr, align 8, !tbaa !4
  %func_qualname = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %0, i32 0, i32 3
  %1 = load ptr, ptr %func_qualname, align 8, !tbaa !42
  call void @Py_INCREF(ptr noundef %1)
  %2 = load ptr, ptr %op.addr, align 8, !tbaa !4
  %func_qualname1 = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %2, i32 0, i32 3
  %3 = load ptr, ptr %func_qualname1, align 8, !tbaa !42
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define internal i32 @__Pyx_CyFunction_set_qualname(ptr noundef %op, ptr noundef %value, ptr noundef %context) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  %context.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %op, ptr %op.addr, align 8, !tbaa !4
  store ptr %value, ptr %value.addr, align 8, !tbaa !4
  store ptr %context, ptr %context.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #9
  %0 = load ptr, ptr %value.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %1 = load ptr, ptr %value.addr, align 8, !tbaa !4
  %call = call ptr @Py_TYPE(ptr noundef %1)
  %call1 = call i32 @PyType_HasFeature(ptr noundef %call, i64 noundef 268435456)
  %tobool = icmp ne i32 %call1, 0
  %lnot = xor i1 %tobool, true
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %lnot, %lor.rhs ]
  %lnot2 = xor i1 %2, true
  %lnot3 = xor i1 %lnot2, true
  %lnot.ext = zext i1 %lnot3 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool4 = icmp ne i64 %expval, 0
  br i1 %tobool4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.end
  %3 = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !4
  call void @PyErr_SetString(ptr noundef %3, ptr noundef @.str.53)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.end
  %4 = load ptr, ptr %op.addr, align 8, !tbaa !4
  %func_qualname = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %4, i32 0, i32 3
  %5 = load ptr, ptr %func_qualname, align 8, !tbaa !42
  store ptr %5, ptr %tmp, align 8, !tbaa !4
  %6 = load ptr, ptr %value.addr, align 8, !tbaa !4
  call void @Py_INCREF(ptr noundef %6)
  %7 = load ptr, ptr %value.addr, align 8, !tbaa !4
  %8 = load ptr, ptr %op.addr, align 8, !tbaa !4
  %func_qualname5 = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %8, i32 0, i32 3
  store ptr %7, ptr %func_qualname5, align 8, !tbaa !42
  %9 = load ptr, ptr %tmp, align 8, !tbaa !4
  call void @Py_XDECREF(ptr noundef %9)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #9
  %10 = load i32, ptr %retval, align 4
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal ptr @__Pyx_CyFunction_get_self(ptr noundef %m, ptr noundef %closure) #0 {
entry:
  %m.addr = alloca ptr, align 8
  %closure.addr = alloca ptr, align 8
  %self = alloca ptr, align 8
  store ptr %m, ptr %m.addr, align 8, !tbaa !4
  store ptr %closure, ptr %closure.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %self) #9
  %0 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %func_closure = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %0, i32 0, i32 7
  %1 = load ptr, ptr %func_closure, align 8, !tbaa !46
  store ptr %1, ptr %self, align 8, !tbaa !4
  %2 = load ptr, ptr %self, align 8, !tbaa !4
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr @_Py_NoneStruct, ptr %self, align 8, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %self, align 8, !tbaa !4
  call void @Py_INCREF(ptr noundef %3)
  %4 = load ptr, ptr %self, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %self) #9
  ret ptr %4
}

; Function Attrs: nounwind uwtable
define internal ptr @__Pyx_CyFunction_get_dict(ptr noundef %op, ptr noundef %context) #0 {
entry:
  %retval = alloca ptr, align 8
  %op.addr = alloca ptr, align 8
  %context.addr = alloca ptr, align 8
  store ptr %op, ptr %op.addr, align 8, !tbaa !4
  store ptr %context, ptr %context.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %op.addr, align 8, !tbaa !4
  %func_dict = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %func_dict, align 8, !tbaa !48
  %cmp = icmp eq ptr %1, null
  %lnot = xor i1 %cmp, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then, label %if.end14

if.then:                                          ; preds = %entry
  %call = call ptr @PyDict_New()
  %2 = load ptr, ptr %op.addr, align 8, !tbaa !4
  %func_dict2 = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %2, i32 0, i32 1
  store ptr %call, ptr %func_dict2, align 8, !tbaa !48
  %3 = load ptr, ptr %op.addr, align 8, !tbaa !4
  %func_dict3 = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %func_dict3, align 8, !tbaa !48
  %cmp4 = icmp eq ptr %4, null
  %lnot6 = xor i1 %cmp4, true
  %lnot8 = xor i1 %lnot6, true
  %lnot.ext9 = zext i1 %lnot8 to i32
  %conv10 = sext i32 %lnot.ext9 to i64
  %expval11 = call i64 @llvm.expect.i64(i64 %conv10, i64 0)
  %tobool12 = icmp ne i64 %expval11, 0
  br i1 %tobool12, label %if.then13, label %if.end

if.then13:                                        ; preds = %if.then
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end14

if.end14:                                         ; preds = %if.end, %entry
  %5 = load ptr, ptr %op.addr, align 8, !tbaa !4
  %func_dict15 = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %func_dict15, align 8, !tbaa !48
  call void @Py_INCREF(ptr noundef %6)
  %7 = load ptr, ptr %op.addr, align 8, !tbaa !4
  %func_dict16 = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %7, i32 0, i32 1
  %8 = load ptr, ptr %func_dict16, align 8, !tbaa !48
  store ptr %8, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end14, %if.then13
  %9 = load ptr, ptr %retval, align 8
  ret ptr %9
}

; Function Attrs: nounwind uwtable
define internal i32 @__Pyx_CyFunction_set_dict(ptr noundef %op, ptr noundef %value, ptr noundef %context) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  %context.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %op, ptr %op.addr, align 8, !tbaa !4
  store ptr %value, ptr %value.addr, align 8, !tbaa !4
  store ptr %context, ptr %context.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #9
  %0 = load ptr, ptr %value.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %0, null
  %lnot = xor i1 %cmp, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !4
  call void @PyErr_SetString(ptr noundef %1, ptr noundef @.str.54)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %value.addr, align 8, !tbaa !4
  %call = call ptr @Py_TYPE(ptr noundef %2)
  %call2 = call i32 @PyType_HasFeature(ptr noundef %call, i64 noundef 536870912)
  %tobool3 = icmp ne i32 %call2, 0
  %lnot4 = xor i1 %tobool3, true
  %lnot6 = xor i1 %lnot4, true
  %lnot8 = xor i1 %lnot6, true
  %lnot.ext9 = zext i1 %lnot8 to i32
  %conv10 = sext i32 %lnot.ext9 to i64
  %expval11 = call i64 @llvm.expect.i64(i64 %conv10, i64 0)
  %tobool12 = icmp ne i64 %expval11, 0
  br i1 %tobool12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end
  %3 = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !4
  call void @PyErr_SetString(ptr noundef %3, ptr noundef @.str.55)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %4 = load ptr, ptr %op.addr, align 8, !tbaa !4
  %func_dict = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %func_dict, align 8, !tbaa !48
  store ptr %5, ptr %tmp, align 8, !tbaa !4
  %6 = load ptr, ptr %value.addr, align 8, !tbaa !4
  call void @Py_INCREF(ptr noundef %6)
  %7 = load ptr, ptr %value.addr, align 8, !tbaa !4
  %8 = load ptr, ptr %op.addr, align 8, !tbaa !4
  %func_dict15 = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %8, i32 0, i32 1
  store ptr %7, ptr %func_dict15, align 8, !tbaa !48
  %9 = load ptr, ptr %tmp, align 8, !tbaa !4
  call void @Py_XDECREF(ptr noundef %9)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then13, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #9
  %10 = load i32, ptr %retval, align 4
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal ptr @__Pyx_CyFunction_get_globals(ptr noundef %op, ptr noundef %context) #0 {
entry:
  %op.addr = alloca ptr, align 8
  %context.addr = alloca ptr, align 8
  store ptr %op, ptr %op.addr, align 8, !tbaa !4
  store ptr %context, ptr %context.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %op.addr, align 8, !tbaa !4
  %func_globals = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %0, i32 0, i32 5
  %1 = load ptr, ptr %func_globals, align 8, !tbaa !51
  call void @Py_INCREF(ptr noundef %1)
  %2 = load ptr, ptr %op.addr, align 8, !tbaa !4
  %func_globals1 = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %2, i32 0, i32 5
  %3 = load ptr, ptr %func_globals1, align 8, !tbaa !51
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define internal ptr @__Pyx_CyFunction_get_closure(ptr noundef %op, ptr noundef %context) #0 {
entry:
  %op.addr = alloca ptr, align 8
  %context.addr = alloca ptr, align 8
  store ptr %op, ptr %op.addr, align 8, !tbaa !4
  store ptr %context, ptr %context.addr, align 8, !tbaa !4
  call void @Py_INCREF(ptr noundef @_Py_NoneStruct)
  ret ptr @_Py_NoneStruct
}

; Function Attrs: nounwind uwtable
define internal ptr @__Pyx_CyFunction_get_code(ptr noundef %op, ptr noundef %context) #0 {
entry:
  %op.addr = alloca ptr, align 8
  %context.addr = alloca ptr, align 8
  %result = alloca ptr, align 8
  store ptr %op, ptr %op.addr, align 8, !tbaa !4
  store ptr %context, ptr %context.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %result) #9
  %0 = load ptr, ptr %op.addr, align 8, !tbaa !4
  %func_code = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %0, i32 0, i32 6
  %1 = load ptr, ptr %func_code, align 8, !tbaa !52
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr %op.addr, align 8, !tbaa !4
  %func_code1 = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %2, i32 0, i32 6
  %3 = load ptr, ptr %func_code1, align 8, !tbaa !52
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %3, %cond.true ], [ @_Py_NoneStruct, %cond.false ]
  store ptr %cond, ptr %result, align 8, !tbaa !4
  %4 = load ptr, ptr %result, align 8, !tbaa !4
  call void @Py_INCREF(ptr noundef %4)
  %5 = load ptr, ptr %result, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %result) #9
  ret ptr %5
}

; Function Attrs: nounwind uwtable
define internal ptr @__Pyx_CyFunction_get_defaults(ptr noundef %op, ptr noundef %context) #0 {
entry:
  %retval = alloca ptr, align 8
  %op.addr = alloca ptr, align 8
  %context.addr = alloca ptr, align 8
  %result = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %op, ptr %op.addr, align 8, !tbaa !4
  store ptr %context, ptr %context.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %result) #9
  %0 = load ptr, ptr %op.addr, align 8, !tbaa !4
  %defaults_tuple = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %0, i32 0, i32 13
  %1 = load ptr, ptr %defaults_tuple, align 8, !tbaa !54
  store ptr %1, ptr %result, align 8, !tbaa !4
  %2 = load ptr, ptr %result, align 8, !tbaa !4
  %tobool = icmp ne ptr %2, null
  %lnot = xor i1 %tobool, true
  %lnot1 = xor i1 %lnot, true
  %lnot2 = xor i1 %lnot1, true
  %lnot.ext = zext i1 %lnot2 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool3 = icmp ne i64 %expval, 0
  br i1 %tobool3, label %if.then, label %if.end10

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %op.addr, align 8, !tbaa !4
  %defaults_getter = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %3, i32 0, i32 15
  %4 = load ptr, ptr %defaults_getter, align 8, !tbaa !69
  %tobool4 = icmp ne ptr %4, null
  br i1 %tobool4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then
  %5 = load ptr, ptr %op.addr, align 8, !tbaa !4
  %call = call i32 @__Pyx_CyFunction_init_defaults(ptr noundef %5)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.then5
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then5
  %6 = load ptr, ptr %op.addr, align 8, !tbaa !4
  %defaults_tuple8 = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %6, i32 0, i32 13
  %7 = load ptr, ptr %defaults_tuple8, align 8, !tbaa !54
  store ptr %7, ptr %result, align 8, !tbaa !4
  br label %if.end9

if.else:                                          ; preds = %if.then
  store ptr @_Py_NoneStruct, ptr %result, align 8, !tbaa !4
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.end
  br label %if.end10

if.end10:                                         ; preds = %if.end9, %entry
  %8 = load ptr, ptr %result, align 8, !tbaa !4
  call void @Py_INCREF(ptr noundef %8)
  %9 = load ptr, ptr %result, align 8, !tbaa !4
  store ptr %9, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then7
  call void @llvm.lifetime.end.p0(i64 8, ptr %result) #9
  %10 = load ptr, ptr %retval, align 8
  ret ptr %10
}

; Function Attrs: nounwind uwtable
define internal i32 @__Pyx_CyFunction_set_defaults(ptr noundef %op, ptr noundef %value, ptr noundef %context) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  %context.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %op, ptr %op.addr, align 8, !tbaa !4
  store ptr %value, ptr %value.addr, align 8, !tbaa !4
  store ptr %context, ptr %context.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #9
  %0 = load ptr, ptr %value.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store ptr @_Py_NoneStruct, ptr %value.addr, align 8, !tbaa !4
  br label %if.end4

if.else:                                          ; preds = %entry
  %1 = load ptr, ptr %value.addr, align 8, !tbaa !4
  %cmp = icmp ne ptr %1, @_Py_NoneStruct
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.else
  %2 = load ptr, ptr %value.addr, align 8, !tbaa !4
  %call = call ptr @Py_TYPE(ptr noundef %2)
  %call1 = call i32 @PyType_HasFeature(ptr noundef %call, i64 noundef 67108864)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end, label %if.then3

if.then3:                                         ; preds = %land.lhs.true
  %3 = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !4
  call void @PyErr_SetString(ptr noundef %3, ptr noundef @.str.56)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %if.else
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then
  %4 = load ptr, ptr %value.addr, align 8, !tbaa !4
  call void @Py_INCREF(ptr noundef %4)
  %5 = load ptr, ptr %op.addr, align 8, !tbaa !4
  %defaults_tuple = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %5, i32 0, i32 13
  %6 = load ptr, ptr %defaults_tuple, align 8, !tbaa !54
  store ptr %6, ptr %tmp, align 8, !tbaa !4
  %7 = load ptr, ptr %value.addr, align 8, !tbaa !4
  %8 = load ptr, ptr %op.addr, align 8, !tbaa !4
  %defaults_tuple5 = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %8, i32 0, i32 13
  store ptr %7, ptr %defaults_tuple5, align 8, !tbaa !54
  %9 = load ptr, ptr %tmp, align 8, !tbaa !4
  call void @Py_XDECREF(ptr noundef %9)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then3
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #9
  %10 = load i32, ptr %retval, align 4
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal ptr @__Pyx_CyFunction_get_kwdefaults(ptr noundef %op, ptr noundef %context) #0 {
entry:
  %retval = alloca ptr, align 8
  %op.addr = alloca ptr, align 8
  %context.addr = alloca ptr, align 8
  %result = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %op, ptr %op.addr, align 8, !tbaa !4
  store ptr %context, ptr %context.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %result) #9
  %0 = load ptr, ptr %op.addr, align 8, !tbaa !4
  %defaults_kwdict = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %0, i32 0, i32 14
  %1 = load ptr, ptr %defaults_kwdict, align 8, !tbaa !55
  store ptr %1, ptr %result, align 8, !tbaa !4
  %2 = load ptr, ptr %result, align 8, !tbaa !4
  %tobool = icmp ne ptr %2, null
  %lnot = xor i1 %tobool, true
  %lnot1 = xor i1 %lnot, true
  %lnot2 = xor i1 %lnot1, true
  %lnot.ext = zext i1 %lnot2 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool3 = icmp ne i64 %expval, 0
  br i1 %tobool3, label %if.then, label %if.end10

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %op.addr, align 8, !tbaa !4
  %defaults_getter = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %3, i32 0, i32 15
  %4 = load ptr, ptr %defaults_getter, align 8, !tbaa !69
  %tobool4 = icmp ne ptr %4, null
  br i1 %tobool4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then
  %5 = load ptr, ptr %op.addr, align 8, !tbaa !4
  %call = call i32 @__Pyx_CyFunction_init_defaults(ptr noundef %5)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.then5
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then5
  %6 = load ptr, ptr %op.addr, align 8, !tbaa !4
  %defaults_kwdict8 = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %6, i32 0, i32 14
  %7 = load ptr, ptr %defaults_kwdict8, align 8, !tbaa !55
  store ptr %7, ptr %result, align 8, !tbaa !4
  br label %if.end9

if.else:                                          ; preds = %if.then
  store ptr @_Py_NoneStruct, ptr %result, align 8, !tbaa !4
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.end
  br label %if.end10

if.end10:                                         ; preds = %if.end9, %entry
  %8 = load ptr, ptr %result, align 8, !tbaa !4
  call void @Py_INCREF(ptr noundef %8)
  %9 = load ptr, ptr %result, align 8, !tbaa !4
  store ptr %9, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then7
  call void @llvm.lifetime.end.p0(i64 8, ptr %result) #9
  %10 = load ptr, ptr %retval, align 8
  ret ptr %10
}

; Function Attrs: nounwind uwtable
define internal i32 @__Pyx_CyFunction_set_kwdefaults(ptr noundef %op, ptr noundef %value, ptr noundef %context) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  %context.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %op, ptr %op.addr, align 8, !tbaa !4
  store ptr %value, ptr %value.addr, align 8, !tbaa !4
  store ptr %context, ptr %context.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #9
  %0 = load ptr, ptr %value.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store ptr @_Py_NoneStruct, ptr %value.addr, align 8, !tbaa !4
  br label %if.end4

if.else:                                          ; preds = %entry
  %1 = load ptr, ptr %value.addr, align 8, !tbaa !4
  %cmp = icmp ne ptr %1, @_Py_NoneStruct
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.else
  %2 = load ptr, ptr %value.addr, align 8, !tbaa !4
  %call = call ptr @Py_TYPE(ptr noundef %2)
  %call1 = call i32 @PyType_HasFeature(ptr noundef %call, i64 noundef 536870912)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end, label %if.then3

if.then3:                                         ; preds = %land.lhs.true
  %3 = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !4
  call void @PyErr_SetString(ptr noundef %3, ptr noundef @.str.57)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %if.else
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then
  %4 = load ptr, ptr %value.addr, align 8, !tbaa !4
  call void @Py_INCREF(ptr noundef %4)
  %5 = load ptr, ptr %op.addr, align 8, !tbaa !4
  %defaults_kwdict = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %5, i32 0, i32 14
  %6 = load ptr, ptr %defaults_kwdict, align 8, !tbaa !55
  store ptr %6, ptr %tmp, align 8, !tbaa !4
  %7 = load ptr, ptr %value.addr, align 8, !tbaa !4
  %8 = load ptr, ptr %op.addr, align 8, !tbaa !4
  %defaults_kwdict5 = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %8, i32 0, i32 14
  store ptr %7, ptr %defaults_kwdict5, align 8, !tbaa !55
  %9 = load ptr, ptr %tmp, align 8, !tbaa !4
  call void @Py_XDECREF(ptr noundef %9)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then3
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #9
  %10 = load i32, ptr %retval, align 4
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal ptr @__Pyx_CyFunction_get_annotations(ptr noundef %op, ptr noundef %context) #0 {
entry:
  %retval = alloca ptr, align 8
  %op.addr = alloca ptr, align 8
  %context.addr = alloca ptr, align 8
  %result = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %op, ptr %op.addr, align 8, !tbaa !4
  store ptr %context, ptr %context.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %result) #9
  %0 = load ptr, ptr %op.addr, align 8, !tbaa !4
  %func_annotations = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %0, i32 0, i32 16
  %1 = load ptr, ptr %func_annotations, align 8, !tbaa !58
  store ptr %1, ptr %result, align 8, !tbaa !4
  %2 = load ptr, ptr %result, align 8, !tbaa !4
  %tobool = icmp ne ptr %2, null
  %lnot = xor i1 %tobool, true
  %lnot1 = xor i1 %lnot, true
  %lnot2 = xor i1 %lnot1, true
  %lnot.ext = zext i1 %lnot2 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool3 = icmp ne i64 %expval, 0
  br i1 %tobool3, label %if.then, label %if.end16

if.then:                                          ; preds = %entry
  %call = call ptr @PyDict_New()
  store ptr %call, ptr %result, align 8, !tbaa !4
  %3 = load ptr, ptr %result, align 8, !tbaa !4
  %tobool4 = icmp ne ptr %3, null
  %lnot5 = xor i1 %tobool4, true
  %lnot7 = xor i1 %lnot5, true
  %lnot9 = xor i1 %lnot7, true
  %lnot.ext10 = zext i1 %lnot9 to i32
  %conv11 = sext i32 %lnot.ext10 to i64
  %expval12 = call i64 @llvm.expect.i64(i64 %conv11, i64 0)
  %tobool13 = icmp ne i64 %expval12, 0
  br i1 %tobool13, label %if.then14, label %if.end

if.then14:                                        ; preds = %if.then
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then
  %4 = load ptr, ptr %result, align 8, !tbaa !4
  %5 = load ptr, ptr %op.addr, align 8, !tbaa !4
  %func_annotations15 = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %5, i32 0, i32 16
  store ptr %4, ptr %func_annotations15, align 8, !tbaa !58
  br label %if.end16

if.end16:                                         ; preds = %if.end, %entry
  %6 = load ptr, ptr %result, align 8, !tbaa !4
  call void @Py_INCREF(ptr noundef %6)
  %7 = load ptr, ptr %result, align 8, !tbaa !4
  store ptr %7, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then14
  call void @llvm.lifetime.end.p0(i64 8, ptr %result) #9
  %8 = load ptr, ptr %retval, align 8
  ret ptr %8
}

; Function Attrs: nounwind uwtable
define internal i32 @__Pyx_CyFunction_set_annotations(ptr noundef %op, ptr noundef %value, ptr noundef %context) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  %context.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %op, ptr %op.addr, align 8, !tbaa !4
  store ptr %value, ptr %value.addr, align 8, !tbaa !4
  store ptr %context, ptr %context.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #9
  %0 = load ptr, ptr %value.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %value.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %1, @_Py_NoneStruct
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  store ptr null, ptr %value.addr, align 8, !tbaa !4
  br label %if.end4

if.else:                                          ; preds = %lor.lhs.false
  %2 = load ptr, ptr %value.addr, align 8, !tbaa !4
  %call = call ptr @Py_TYPE(ptr noundef %2)
  %call1 = call i32 @PyType_HasFeature(ptr noundef %call, i64 noundef 536870912)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end, label %if.then3

if.then3:                                         ; preds = %if.else
  %3 = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !4
  call void @PyErr_SetString(ptr noundef %3, ptr noundef @.str.58)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %if.else
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then
  %4 = load ptr, ptr %value.addr, align 8, !tbaa !4
  call void @Py_XINCREF(ptr noundef %4)
  %5 = load ptr, ptr %op.addr, align 8, !tbaa !4
  %func_annotations = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %5, i32 0, i32 16
  %6 = load ptr, ptr %func_annotations, align 8, !tbaa !58
  store ptr %6, ptr %tmp, align 8, !tbaa !4
  %7 = load ptr, ptr %value.addr, align 8, !tbaa !4
  %8 = load ptr, ptr %op.addr, align 8, !tbaa !4
  %func_annotations5 = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %8, i32 0, i32 16
  store ptr %7, ptr %func_annotations5, align 8, !tbaa !58
  %9 = load ptr, ptr %tmp, align 8, !tbaa !4
  call void @Py_XDECREF(ptr noundef %9)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then3
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #9
  %10 = load i32, ptr %retval, align 4
  ret i32 %10
}

declare ptr @PyUnicode_FromString(ptr noundef) #4

declare ptr @PyUnicode_InternFromString(ptr noundef) #4

; Function Attrs: nounwind uwtable
define internal i32 @__Pyx_CyFunction_init_defaults(ptr noundef %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca ptr, align 8
  %result = alloca i32, align 4
  %res = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %op, ptr %op.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #9
  store i32 0, ptr %result, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #9
  %0 = load ptr, ptr %op.addr, align 8, !tbaa !4
  %defaults_getter = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %0, i32 0, i32 15
  %1 = load ptr, ptr %defaults_getter, align 8, !tbaa !69
  %2 = load ptr, ptr %op.addr, align 8, !tbaa !4
  %call = call ptr %1(ptr noundef %2)
  store ptr %call, ptr %res, align 8, !tbaa !4
  %3 = load ptr, ptr %res, align 8, !tbaa !4
  %tobool = icmp ne ptr %3, null
  %lnot = xor i1 %tobool, true
  %lnot1 = xor i1 %lnot, true
  %lnot2 = xor i1 %lnot1, true
  %lnot.ext = zext i1 %lnot2 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool3 = icmp ne i64 %expval, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %res, align 8, !tbaa !4
  %ob_item = getelementptr inbounds %struct.PyTupleObject, ptr %4, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x ptr], ptr %ob_item, i64 0, i64 0
  %5 = load ptr, ptr %arrayidx, align 8, !tbaa !4
  %6 = load ptr, ptr %op.addr, align 8, !tbaa !4
  %defaults_tuple = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %6, i32 0, i32 13
  store ptr %5, ptr %defaults_tuple, align 8, !tbaa !54
  %7 = load ptr, ptr %op.addr, align 8, !tbaa !4
  %defaults_tuple4 = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %7, i32 0, i32 13
  %8 = load ptr, ptr %defaults_tuple4, align 8, !tbaa !54
  call void @Py_INCREF(ptr noundef %8)
  %9 = load ptr, ptr %res, align 8, !tbaa !4
  %ob_item5 = getelementptr inbounds %struct.PyTupleObject, ptr %9, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x ptr], ptr %ob_item5, i64 0, i64 1
  %10 = load ptr, ptr %arrayidx6, align 8, !tbaa !4
  %11 = load ptr, ptr %op.addr, align 8, !tbaa !4
  %defaults_kwdict = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %11, i32 0, i32 14
  store ptr %10, ptr %defaults_kwdict, align 8, !tbaa !55
  %12 = load ptr, ptr %op.addr, align 8, !tbaa !4
  %defaults_kwdict7 = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %12, i32 0, i32 14
  %13 = load ptr, ptr %defaults_kwdict7, align 8, !tbaa !55
  call void @Py_INCREF(ptr noundef %13)
  %14 = load ptr, ptr %res, align 8, !tbaa !4
  call void @Py_DECREF(ptr noundef %14)
  %15 = load i32, ptr %result, align 4, !tbaa !10
  store i32 %15, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #9
  %16 = load i32, ptr %retval, align 4
  ret i32 %16
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @Py_XINCREF(ptr noundef %op) #5 {
entry:
  %op.addr = alloca ptr, align 8
  store ptr %op, ptr %op.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %op.addr, align 8, !tbaa !4
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %op.addr, align 8, !tbaa !4
  call void @Py_INCREF(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare ptr @PyMethod_New(ptr noundef, ptr noundef) #4

; Function Attrs: nounwind uwtable
define internal i32 @__Pyx_InitStrings(ptr noundef %t) #0 {
entry:
  %retval = alloca i32, align 4
  %t.addr = alloca ptr, align 8
  store ptr %t, ptr %t.addr, align 8, !tbaa !4
  br label %while.cond

while.cond:                                       ; preds = %if.end34, %entry
  %0 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %p = getelementptr inbounds %struct.__Pyx_StringTabEntry, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %p, align 8, !tbaa !70
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %is_unicode = getelementptr inbounds %struct.__Pyx_StringTabEntry, ptr %2, i32 0, i32 4
  %3 = load i8, ptr %is_unicode, align 8, !tbaa !72
  %conv = sext i8 %3 to i32
  %4 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %is_str = getelementptr inbounds %struct.__Pyx_StringTabEntry, ptr %4, i32 0, i32 5
  %5 = load i8, ptr %is_str, align 1, !tbaa !73
  %conv1 = sext i8 %5 to i32
  %or = or i32 %conv, %conv1
  %tobool2 = icmp ne i32 %or, 0
  br i1 %tobool2, label %if.then, label %if.else19

if.then:                                          ; preds = %while.body
  %6 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %intern = getelementptr inbounds %struct.__Pyx_StringTabEntry, ptr %6, i32 0, i32 6
  %7 = load i8, ptr %intern, align 2, !tbaa !74
  %tobool3 = icmp ne i8 %7, 0
  br i1 %tobool3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then
  %8 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %s = getelementptr inbounds %struct.__Pyx_StringTabEntry, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %s, align 8, !tbaa !75
  %call = call ptr @PyUnicode_InternFromString(ptr noundef %9)
  %10 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %p5 = getelementptr inbounds %struct.__Pyx_StringTabEntry, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %p5, align 8, !tbaa !70
  store ptr %call, ptr %11, align 8, !tbaa !4
  br label %if.end18

if.else:                                          ; preds = %if.then
  %12 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %encoding = getelementptr inbounds %struct.__Pyx_StringTabEntry, ptr %12, i32 0, i32 3
  %13 = load ptr, ptr %encoding, align 8, !tbaa !76
  %tobool6 = icmp ne ptr %13, null
  br i1 %tobool6, label %if.then7, label %if.else12

if.then7:                                         ; preds = %if.else
  %14 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %s8 = getelementptr inbounds %struct.__Pyx_StringTabEntry, ptr %14, i32 0, i32 1
  %15 = load ptr, ptr %s8, align 8, !tbaa !75
  %16 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %n = getelementptr inbounds %struct.__Pyx_StringTabEntry, ptr %16, i32 0, i32 2
  %17 = load i64, ptr %n, align 8, !tbaa !77
  %sub = sub nsw i64 %17, 1
  %18 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %encoding9 = getelementptr inbounds %struct.__Pyx_StringTabEntry, ptr %18, i32 0, i32 3
  %19 = load ptr, ptr %encoding9, align 8, !tbaa !76
  %call10 = call ptr @PyUnicode_Decode(ptr noundef %15, i64 noundef %sub, ptr noundef %19, ptr noundef null)
  %20 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %p11 = getelementptr inbounds %struct.__Pyx_StringTabEntry, ptr %20, i32 0, i32 0
  %21 = load ptr, ptr %p11, align 8, !tbaa !70
  store ptr %call10, ptr %21, align 8, !tbaa !4
  br label %if.end

if.else12:                                        ; preds = %if.else
  %22 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %s13 = getelementptr inbounds %struct.__Pyx_StringTabEntry, ptr %22, i32 0, i32 1
  %23 = load ptr, ptr %s13, align 8, !tbaa !75
  %24 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %n14 = getelementptr inbounds %struct.__Pyx_StringTabEntry, ptr %24, i32 0, i32 2
  %25 = load i64, ptr %n14, align 8, !tbaa !77
  %sub15 = sub nsw i64 %25, 1
  %call16 = call ptr @PyUnicode_FromStringAndSize(ptr noundef %23, i64 noundef %sub15)
  %26 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %p17 = getelementptr inbounds %struct.__Pyx_StringTabEntry, ptr %26, i32 0, i32 0
  %27 = load ptr, ptr %p17, align 8, !tbaa !70
  store ptr %call16, ptr %27, align 8, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.else12, %if.then7
  br label %if.end18

if.end18:                                         ; preds = %if.end, %if.then4
  br label %if.end25

if.else19:                                        ; preds = %while.body
  %28 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %s20 = getelementptr inbounds %struct.__Pyx_StringTabEntry, ptr %28, i32 0, i32 1
  %29 = load ptr, ptr %s20, align 8, !tbaa !75
  %30 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %n21 = getelementptr inbounds %struct.__Pyx_StringTabEntry, ptr %30, i32 0, i32 2
  %31 = load i64, ptr %n21, align 8, !tbaa !77
  %sub22 = sub nsw i64 %31, 1
  %call23 = call ptr @PyBytes_FromStringAndSize(ptr noundef %29, i64 noundef %sub22)
  %32 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %p24 = getelementptr inbounds %struct.__Pyx_StringTabEntry, ptr %32, i32 0, i32 0
  %33 = load ptr, ptr %p24, align 8, !tbaa !70
  store ptr %call23, ptr %33, align 8, !tbaa !4
  br label %if.end25

if.end25:                                         ; preds = %if.else19, %if.end18
  %34 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %p26 = getelementptr inbounds %struct.__Pyx_StringTabEntry, ptr %34, i32 0, i32 0
  %35 = load ptr, ptr %p26, align 8, !tbaa !70
  %36 = load ptr, ptr %35, align 8, !tbaa !4
  %tobool27 = icmp ne ptr %36, null
  br i1 %tobool27, label %if.end29, label %if.then28

if.then28:                                        ; preds = %if.end25
  store i32 -1, ptr %retval, align 4
  br label %return

if.end29:                                         ; preds = %if.end25
  %37 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %p30 = getelementptr inbounds %struct.__Pyx_StringTabEntry, ptr %37, i32 0, i32 0
  %38 = load ptr, ptr %p30, align 8, !tbaa !70
  %39 = load ptr, ptr %38, align 8, !tbaa !4
  %call31 = call i64 @PyObject_Hash(ptr noundef %39)
  %cmp = icmp eq i64 %call31, -1
  br i1 %cmp, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.end29
  store i32 -1, ptr %retval, align 4
  br label %return

if.end34:                                         ; preds = %if.end29
  %40 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds %struct.__Pyx_StringTabEntry, ptr %40, i32 1
  store ptr %incdec.ptr, ptr %t.addr, align 8, !tbaa !4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then33, %if.then28
  %41 = load i32, ptr %retval, align 4
  ret i32 %41
}

declare ptr @PyUnicode_Decode(ptr noundef, i64 noundef, ptr noundef, ptr noundef) #4

declare i64 @PyObject_Hash(ptr noundef) #4

; Function Attrs: nounwind uwtable
define internal ptr @__Pyx_GetBuiltinName(ptr noundef %name) #0 {
entry:
  %name.addr = alloca ptr, align 8
  %result = alloca ptr, align 8
  store ptr %name, ptr %name.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %result) #9
  %0 = load ptr, ptr @__pyx_b, align 8, !tbaa !4
  %1 = load ptr, ptr %name.addr, align 8, !tbaa !4
  %call = call ptr @__Pyx_PyObject_GetAttrStr(ptr noundef %0, ptr noundef %1)
  store ptr %call, ptr %result, align 8, !tbaa !4
  %2 = load ptr, ptr %result, align 8, !tbaa !4
  %tobool = icmp ne ptr %2, null
  %lnot = xor i1 %tobool, true
  %lnot1 = xor i1 %lnot, true
  %lnot2 = xor i1 %lnot1, true
  %lnot.ext = zext i1 %lnot2 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool3 = icmp ne i64 %expval, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr @PyExc_NameError, align 8, !tbaa !4
  %4 = load ptr, ptr %name.addr, align 8, !tbaa !4
  %call4 = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %3, ptr noundef @.str.59, ptr noundef %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %result, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %result) #9
  ret ptr %5
}

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @__Pyx_PyObject_GetAttrStr(ptr noundef %obj, ptr noundef %attr_name) #5 {
entry:
  %retval = alloca ptr, align 8
  %obj.addr = alloca ptr, align 8
  %attr_name.addr = alloca ptr, align 8
  %tp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !4
  store ptr %attr_name, ptr %attr_name.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %tp) #9
  %0 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %call = call ptr @Py_TYPE(ptr noundef %0)
  store ptr %call, ptr %tp, align 8, !tbaa !4
  %1 = load ptr, ptr %tp, align 8, !tbaa !4
  %tp_getattro = getelementptr inbounds %struct._typeobject, ptr %1, i32 0, i32 16
  %2 = load ptr, ptr %tp_getattro, align 8, !tbaa !31
  %tobool = icmp ne ptr %2, null
  %lnot = xor i1 %tobool, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1)
  %tobool2 = icmp ne i64 %expval, 0
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %tp, align 8, !tbaa !4
  %tp_getattro3 = getelementptr inbounds %struct._typeobject, ptr %3, i32 0, i32 16
  %4 = load ptr, ptr %tp_getattro3, align 8, !tbaa !31
  %5 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %attr_name.addr, align 8, !tbaa !4
  %call4 = call ptr %4(ptr noundef %5, ptr noundef %6)
  store ptr %call4, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %8 = load ptr, ptr %attr_name.addr, align 8, !tbaa !4
  %call5 = call ptr @PyObject_GetAttr(ptr noundef %7, ptr noundef %8)
  store ptr %call5, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %tp) #9
  %9 = load ptr, ptr %retval, align 8
  ret ptr %9
}

declare ptr @PyObject_GetAttr(ptr noundef, ptr noundef) #4

declare ptr @PyTuple_Pack(i64 noundef, ...) #4

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @__Pyx_PyCode_New(i32 noundef %a, i32 noundef %k, i32 noundef %l, i32 noundef %s, i32 noundef %f, ptr noundef %code, ptr noundef %c, ptr noundef %n, ptr noundef %v, ptr noundef %fv, ptr noundef %cell, ptr noundef %fn, ptr noundef %name, i32 noundef %fline, ptr noundef %lnos) #5 {
entry:
  %a.addr = alloca i32, align 4
  %k.addr = alloca i32, align 4
  %l.addr = alloca i32, align 4
  %s.addr = alloca i32, align 4
  %f.addr = alloca i32, align 4
  %code.addr = alloca ptr, align 8
  %c.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %fv.addr = alloca ptr, align 8
  %cell.addr = alloca ptr, align 8
  %fn.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %fline.addr = alloca i32, align 4
  %lnos.addr = alloca ptr, align 8
  %kwds = alloca ptr, align 8
  %argcount = alloca ptr, align 8
  %posonlyargcount = alloca ptr, align 8
  %kwonlyargcount = alloca ptr, align 8
  %nlocals = alloca ptr, align 8
  %stacksize = alloca ptr, align 8
  %flags = alloca ptr, align 8
  %replace = alloca ptr, align 8
  %call_result = alloca ptr, align 8
  %empty = alloca ptr, align 8
  %fn_cstr = alloca ptr, align 8
  %name_cstr = alloca ptr, align 8
  %co = alloca ptr, align 8
  %type = alloca ptr, align 8
  %value = alloca ptr, align 8
  %traceback = alloca ptr, align 8
  store i32 %a, ptr %a.addr, align 4, !tbaa !10
  store i32 %k, ptr %k.addr, align 4, !tbaa !10
  store i32 %l, ptr %l.addr, align 4, !tbaa !10
  store i32 %s, ptr %s.addr, align 4, !tbaa !10
  store i32 %f, ptr %f.addr, align 4, !tbaa !10
  store ptr %code, ptr %code.addr, align 8, !tbaa !4
  store ptr %c, ptr %c.addr, align 8, !tbaa !4
  store ptr %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %v, ptr %v.addr, align 8, !tbaa !4
  store ptr %fv, ptr %fv.addr, align 8, !tbaa !4
  store ptr %cell, ptr %cell.addr, align 8, !tbaa !4
  store ptr %fn, ptr %fn.addr, align 8, !tbaa !4
  store ptr %name, ptr %name.addr, align 8, !tbaa !4
  store i32 %fline, ptr %fline.addr, align 4, !tbaa !10
  store ptr %lnos, ptr %lnos.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %kwds) #9
  store ptr null, ptr %kwds, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %argcount) #9
  store ptr null, ptr %argcount, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %posonlyargcount) #9
  store ptr null, ptr %posonlyargcount, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %kwonlyargcount) #9
  store ptr null, ptr %kwonlyargcount, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %nlocals) #9
  store ptr null, ptr %nlocals, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %stacksize) #9
  store ptr null, ptr %stacksize, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #9
  store ptr null, ptr %flags, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %replace) #9
  store ptr null, ptr %replace, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %call_result) #9
  store ptr null, ptr %call_result, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %empty) #9
  store ptr null, ptr %empty, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %fn_cstr) #9
  store ptr null, ptr %fn_cstr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %name_cstr) #9
  store ptr null, ptr %name_cstr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %co) #9
  store ptr null, ptr %co, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %type) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %value) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %traceback) #9
  call void @PyErr_Fetch(ptr noundef %type, ptr noundef %value, ptr noundef %traceback)
  %call = call ptr @PyDict_New()
  store ptr %call, ptr %kwds, align 8, !tbaa !4
  %tobool = icmp ne ptr %call, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %end

if.end:                                           ; preds = %entry
  %0 = load i32, ptr %a.addr, align 4, !tbaa !10
  %conv = sext i32 %0 to i64
  %call1 = call ptr @PyLong_FromLong(i64 noundef %conv)
  store ptr %call1, ptr %argcount, align 8, !tbaa !4
  %tobool2 = icmp ne ptr %call1, null
  br i1 %tobool2, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  br label %end

if.end4:                                          ; preds = %if.end
  %1 = load ptr, ptr %kwds, align 8, !tbaa !4
  %2 = load ptr, ptr %argcount, align 8, !tbaa !4
  %call5 = call i32 @PyDict_SetItemString(ptr noundef %1, ptr noundef @.str.60, ptr noundef %2)
  %cmp = icmp ne i32 %call5, 0
  br i1 %cmp, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  br label %end

if.end8:                                          ; preds = %if.end4
  %call9 = call ptr @PyLong_FromLong(i64 noundef 0)
  store ptr %call9, ptr %posonlyargcount, align 8, !tbaa !4
  %tobool10 = icmp ne ptr %call9, null
  br i1 %tobool10, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.end8
  br label %end

if.end12:                                         ; preds = %if.end8
  %3 = load ptr, ptr %kwds, align 8, !tbaa !4
  %4 = load ptr, ptr %posonlyargcount, align 8, !tbaa !4
  %call13 = call i32 @PyDict_SetItemString(ptr noundef %3, ptr noundef @.str.61, ptr noundef %4)
  %cmp14 = icmp ne i32 %call13, 0
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end12
  br label %end

if.end17:                                         ; preds = %if.end12
  %5 = load i32, ptr %k.addr, align 4, !tbaa !10
  %conv18 = sext i32 %5 to i64
  %call19 = call ptr @PyLong_FromLong(i64 noundef %conv18)
  store ptr %call19, ptr %kwonlyargcount, align 8, !tbaa !4
  %tobool20 = icmp ne ptr %call19, null
  br i1 %tobool20, label %if.end22, label %if.then21

if.then21:                                        ; preds = %if.end17
  br label %end

if.end22:                                         ; preds = %if.end17
  %6 = load ptr, ptr %kwds, align 8, !tbaa !4
  %7 = load ptr, ptr %kwonlyargcount, align 8, !tbaa !4
  %call23 = call i32 @PyDict_SetItemString(ptr noundef %6, ptr noundef @.str.62, ptr noundef %7)
  %cmp24 = icmp ne i32 %call23, 0
  br i1 %cmp24, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end22
  br label %end

if.end27:                                         ; preds = %if.end22
  %8 = load i32, ptr %l.addr, align 4, !tbaa !10
  %conv28 = sext i32 %8 to i64
  %call29 = call ptr @PyLong_FromLong(i64 noundef %conv28)
  store ptr %call29, ptr %nlocals, align 8, !tbaa !4
  %tobool30 = icmp ne ptr %call29, null
  br i1 %tobool30, label %if.end32, label %if.then31

if.then31:                                        ; preds = %if.end27
  br label %end

if.end32:                                         ; preds = %if.end27
  %9 = load ptr, ptr %kwds, align 8, !tbaa !4
  %10 = load ptr, ptr %nlocals, align 8, !tbaa !4
  %call33 = call i32 @PyDict_SetItemString(ptr noundef %9, ptr noundef @.str.63, ptr noundef %10)
  %cmp34 = icmp ne i32 %call33, 0
  br i1 %cmp34, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.end32
  br label %end

if.end37:                                         ; preds = %if.end32
  %11 = load i32, ptr %s.addr, align 4, !tbaa !10
  %conv38 = sext i32 %11 to i64
  %call39 = call ptr @PyLong_FromLong(i64 noundef %conv38)
  store ptr %call39, ptr %stacksize, align 8, !tbaa !4
  %tobool40 = icmp ne ptr %call39, null
  br i1 %tobool40, label %if.end42, label %if.then41

if.then41:                                        ; preds = %if.end37
  br label %end

if.end42:                                         ; preds = %if.end37
  %12 = load ptr, ptr %kwds, align 8, !tbaa !4
  %13 = load ptr, ptr %stacksize, align 8, !tbaa !4
  %call43 = call i32 @PyDict_SetItemString(ptr noundef %12, ptr noundef @.str.64, ptr noundef %13)
  %cmp44 = icmp ne i32 %call43, 0
  br i1 %cmp44, label %if.then46, label %if.end47

if.then46:                                        ; preds = %if.end42
  br label %end

if.end47:                                         ; preds = %if.end42
  %14 = load i32, ptr %f.addr, align 4, !tbaa !10
  %conv48 = sext i32 %14 to i64
  %call49 = call ptr @PyLong_FromLong(i64 noundef %conv48)
  store ptr %call49, ptr %flags, align 8, !tbaa !4
  %tobool50 = icmp ne ptr %call49, null
  br i1 %tobool50, label %if.end52, label %if.then51

if.then51:                                        ; preds = %if.end47
  br label %end

if.end52:                                         ; preds = %if.end47
  %15 = load ptr, ptr %kwds, align 8, !tbaa !4
  %16 = load ptr, ptr %flags, align 8, !tbaa !4
  %call53 = call i32 @PyDict_SetItemString(ptr noundef %15, ptr noundef @.str.65, ptr noundef %16)
  %cmp54 = icmp ne i32 %call53, 0
  br i1 %cmp54, label %if.then56, label %if.end57

if.then56:                                        ; preds = %if.end52
  br label %end

if.end57:                                         ; preds = %if.end52
  %17 = load ptr, ptr %kwds, align 8, !tbaa !4
  %18 = load ptr, ptr %code.addr, align 8, !tbaa !4
  %call58 = call i32 @PyDict_SetItemString(ptr noundef %17, ptr noundef @.str.66, ptr noundef %18)
  %cmp59 = icmp ne i32 %call58, 0
  br i1 %cmp59, label %if.then61, label %if.end62

if.then61:                                        ; preds = %if.end57
  br label %end

if.end62:                                         ; preds = %if.end57
  %19 = load ptr, ptr %kwds, align 8, !tbaa !4
  %20 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %call63 = call i32 @PyDict_SetItemString(ptr noundef %19, ptr noundef @.str.67, ptr noundef %20)
  %cmp64 = icmp ne i32 %call63, 0
  br i1 %cmp64, label %if.then66, label %if.end67

if.then66:                                        ; preds = %if.end62
  br label %end

if.end67:                                         ; preds = %if.end62
  %21 = load ptr, ptr %kwds, align 8, !tbaa !4
  %22 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %call68 = call i32 @PyDict_SetItemString(ptr noundef %21, ptr noundef @.str.68, ptr noundef %22)
  %cmp69 = icmp ne i32 %call68, 0
  br i1 %cmp69, label %if.then71, label %if.end72

if.then71:                                        ; preds = %if.end67
  br label %end

if.end72:                                         ; preds = %if.end67
  %23 = load ptr, ptr %kwds, align 8, !tbaa !4
  %24 = load ptr, ptr %v.addr, align 8, !tbaa !4
  %call73 = call i32 @PyDict_SetItemString(ptr noundef %23, ptr noundef @.str.69, ptr noundef %24)
  %cmp74 = icmp ne i32 %call73, 0
  br i1 %cmp74, label %if.then76, label %if.end77

if.then76:                                        ; preds = %if.end72
  br label %end

if.end77:                                         ; preds = %if.end72
  %25 = load ptr, ptr %kwds, align 8, !tbaa !4
  %26 = load ptr, ptr %fv.addr, align 8, !tbaa !4
  %call78 = call i32 @PyDict_SetItemString(ptr noundef %25, ptr noundef @.str.70, ptr noundef %26)
  %cmp79 = icmp ne i32 %call78, 0
  br i1 %cmp79, label %if.then81, label %if.end82

if.then81:                                        ; preds = %if.end77
  br label %end

if.end82:                                         ; preds = %if.end77
  %27 = load ptr, ptr %kwds, align 8, !tbaa !4
  %28 = load ptr, ptr %cell.addr, align 8, !tbaa !4
  %call83 = call i32 @PyDict_SetItemString(ptr noundef %27, ptr noundef @.str.71, ptr noundef %28)
  %cmp84 = icmp ne i32 %call83, 0
  br i1 %cmp84, label %if.then86, label %if.end87

if.then86:                                        ; preds = %if.end82
  br label %end

if.end87:                                         ; preds = %if.end82
  %29 = load ptr, ptr %kwds, align 8, !tbaa !4
  %30 = load ptr, ptr %lnos.addr, align 8, !tbaa !4
  %call88 = call i32 @PyDict_SetItemString(ptr noundef %29, ptr noundef @.str.72, ptr noundef %30)
  %cmp89 = icmp ne i32 %call88, 0
  br i1 %cmp89, label %if.then91, label %if.end92

if.then91:                                        ; preds = %if.end87
  br label %end

if.end92:                                         ; preds = %if.end87
  %31 = load ptr, ptr %fn.addr, align 8, !tbaa !4
  %call93 = call ptr @PyUnicode_AsUTF8AndSize(ptr noundef %31, ptr noundef null)
  store ptr %call93, ptr %fn_cstr, align 8, !tbaa !4
  %tobool94 = icmp ne ptr %call93, null
  br i1 %tobool94, label %if.end96, label %if.then95

if.then95:                                        ; preds = %if.end92
  br label %end

if.end96:                                         ; preds = %if.end92
  %32 = load ptr, ptr %name.addr, align 8, !tbaa !4
  %call97 = call ptr @PyUnicode_AsUTF8AndSize(ptr noundef %32, ptr noundef null)
  store ptr %call97, ptr %name_cstr, align 8, !tbaa !4
  %tobool98 = icmp ne ptr %call97, null
  br i1 %tobool98, label %if.end100, label %if.then99

if.then99:                                        ; preds = %if.end96
  br label %end

if.end100:                                        ; preds = %if.end96
  %33 = load ptr, ptr %fn_cstr, align 8, !tbaa !4
  %34 = load ptr, ptr %name_cstr, align 8, !tbaa !4
  %35 = load i32, ptr %fline.addr, align 4, !tbaa !10
  %call101 = call ptr @PyCode_NewEmpty(ptr noundef %33, ptr noundef %34, i32 noundef %35)
  store ptr %call101, ptr %co, align 8, !tbaa !4
  %tobool102 = icmp ne ptr %call101, null
  br i1 %tobool102, label %if.end104, label %if.then103

if.then103:                                       ; preds = %if.end100
  br label %end

if.end104:                                        ; preds = %if.end100
  %36 = load ptr, ptr %co, align 8, !tbaa !4
  %call105 = call ptr @PyObject_GetAttrString(ptr noundef %36, ptr noundef @.str.73)
  store ptr %call105, ptr %replace, align 8, !tbaa !4
  %tobool106 = icmp ne ptr %call105, null
  br i1 %tobool106, label %if.end108, label %if.then107

if.then107:                                       ; preds = %if.end104
  br label %cleanup_code_too

if.end108:                                        ; preds = %if.end104
  %call109 = call ptr @PyTuple_New(i64 noundef 0)
  store ptr %call109, ptr %empty, align 8, !tbaa !4
  %tobool110 = icmp ne ptr %call109, null
  br i1 %tobool110, label %if.end112, label %if.then111

if.then111:                                       ; preds = %if.end108
  br label %cleanup_code_too

if.end112:                                        ; preds = %if.end108
  %37 = load ptr, ptr %replace, align 8, !tbaa !4
  %38 = load ptr, ptr %empty, align 8, !tbaa !4
  %39 = load ptr, ptr %kwds, align 8, !tbaa !4
  %call113 = call ptr @PyObject_Call(ptr noundef %37, ptr noundef %38, ptr noundef %39)
  store ptr %call113, ptr %call_result, align 8, !tbaa !4
  %tobool114 = icmp ne ptr %call113, null
  br i1 %tobool114, label %if.end116, label %if.then115

if.then115:                                       ; preds = %if.end112
  br label %cleanup_code_too

if.end116:                                        ; preds = %if.end112
  %40 = load ptr, ptr %co, align 8, !tbaa !4
  call void @Py_XDECREF(ptr noundef %40)
  %41 = load ptr, ptr %call_result, align 8, !tbaa !4
  store ptr %41, ptr %co, align 8, !tbaa !4
  store ptr null, ptr %call_result, align 8, !tbaa !4
  br i1 false, label %if.then117, label %if.end118

if.then117:                                       ; preds = %if.end116
  br label %cleanup_code_too

cleanup_code_too:                                 ; preds = %if.then117, %if.then115, %if.then111, %if.then107
  %42 = load ptr, ptr %co, align 8, !tbaa !4
  call void @Py_XDECREF(ptr noundef %42)
  store ptr null, ptr %co, align 8, !tbaa !4
  br label %if.end118

if.end118:                                        ; preds = %cleanup_code_too, %if.end116
  br label %end

end:                                              ; preds = %if.end118, %if.then103, %if.then99, %if.then95, %if.then91, %if.then86, %if.then81, %if.then76, %if.then71, %if.then66, %if.then61, %if.then56, %if.then51, %if.then46, %if.then41, %if.then36, %if.then31, %if.then26, %if.then21, %if.then16, %if.then11, %if.then7, %if.then3, %if.then
  %43 = load ptr, ptr %kwds, align 8, !tbaa !4
  call void @Py_XDECREF(ptr noundef %43)
  %44 = load ptr, ptr %argcount, align 8, !tbaa !4
  call void @Py_XDECREF(ptr noundef %44)
  %45 = load ptr, ptr %posonlyargcount, align 8, !tbaa !4
  call void @Py_XDECREF(ptr noundef %45)
  %46 = load ptr, ptr %kwonlyargcount, align 8, !tbaa !4
  call void @Py_XDECREF(ptr noundef %46)
  %47 = load ptr, ptr %nlocals, align 8, !tbaa !4
  call void @Py_XDECREF(ptr noundef %47)
  %48 = load ptr, ptr %stacksize, align 8, !tbaa !4
  call void @Py_XDECREF(ptr noundef %48)
  %49 = load ptr, ptr %replace, align 8, !tbaa !4
  call void @Py_XDECREF(ptr noundef %49)
  %50 = load ptr, ptr %call_result, align 8, !tbaa !4
  call void @Py_XDECREF(ptr noundef %50)
  %51 = load ptr, ptr %empty, align 8, !tbaa !4
  call void @Py_XDECREF(ptr noundef %51)
  %52 = load ptr, ptr %type, align 8, !tbaa !4
  %tobool119 = icmp ne ptr %52, null
  br i1 %tobool119, label %if.then120, label %if.end121

if.then120:                                       ; preds = %end
  %53 = load ptr, ptr %type, align 8, !tbaa !4
  %54 = load ptr, ptr %value, align 8, !tbaa !4
  %55 = load ptr, ptr %traceback, align 8, !tbaa !4
  call void @PyErr_Restore(ptr noundef %53, ptr noundef %54, ptr noundef %55)
  br label %if.end121

if.end121:                                        ; preds = %if.then120, %end
  %56 = load ptr, ptr %co, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %traceback) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %value) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %type) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %co) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %name_cstr) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %fn_cstr) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %empty) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %call_result) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %replace) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %stacksize) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %nlocals) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %kwonlyargcount) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %posonlyargcount) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %argcount) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %kwds) #9
  ret ptr %56
}

declare void @PyErr_Fetch(ptr noundef, ptr noundef, ptr noundef) #4

declare ptr @PyLong_FromLong(i64 noundef) #4

declare ptr @PyUnicode_AsUTF8AndSize(ptr noundef, ptr noundef) #4

declare ptr @PyCode_NewEmpty(ptr noundef, ptr noundef, i32 noundef) #4

declare ptr @PyObject_Call(ptr noundef, ptr noundef, ptr noundef) #4

declare void @PyErr_Restore(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: nounwind uwtable
define internal i32 @__Pyx_ExportFunction(ptr noundef %name, ptr noundef %f, ptr noundef %sig) #0 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca ptr, align 8
  %f.addr = alloca ptr, align 8
  %sig.addr = alloca ptr, align 8
  %d = alloca ptr, align 8
  %cobj = alloca ptr, align 8
  %tmp = alloca %union.anon, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %name, ptr %name.addr, align 8, !tbaa !4
  store ptr %f, ptr %f.addr, align 8, !tbaa !4
  store ptr %sig, ptr %sig.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %d) #9
  store ptr null, ptr %d, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %cobj) #9
  store ptr null, ptr %cobj, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #9
  %0 = load ptr, ptr @__pyx_m, align 8, !tbaa !4
  %call = call ptr @PyObject_GetAttrString(ptr noundef %0, ptr noundef @.str.79)
  store ptr %call, ptr %d, align 8, !tbaa !4
  %1 = load ptr, ptr %d, align 8, !tbaa !4
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.end7, label %if.then

if.then:                                          ; preds = %entry
  call void @PyErr_Clear()
  %call1 = call ptr @PyDict_New()
  store ptr %call1, ptr %d, align 8, !tbaa !4
  %2 = load ptr, ptr %d, align 8, !tbaa !4
  %tobool2 = icmp ne ptr %2, null
  br i1 %tobool2, label %if.end, label %if.then3

if.then3:                                         ; preds = %if.then
  br label %bad

if.end:                                           ; preds = %if.then
  %3 = load ptr, ptr %d, align 8, !tbaa !4
  call void @Py_INCREF(ptr noundef %3)
  %4 = load ptr, ptr @__pyx_m, align 8, !tbaa !4
  %5 = load ptr, ptr %d, align 8, !tbaa !4
  %call4 = call i32 @PyModule_AddObject(ptr noundef %4, ptr noundef @.str.79, ptr noundef %5)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  br label %bad

if.end6:                                          ; preds = %if.end
  br label %if.end7

if.end7:                                          ; preds = %if.end6, %entry
  %6 = load ptr, ptr %f.addr, align 8, !tbaa !4
  store ptr %6, ptr %tmp, align 8, !tbaa !27
  %7 = load ptr, ptr %tmp, align 8, !tbaa !27
  %8 = load ptr, ptr %sig.addr, align 8, !tbaa !4
  %call8 = call ptr @PyCapsule_New(ptr noundef %7, ptr noundef %8, ptr noundef null)
  store ptr %call8, ptr %cobj, align 8, !tbaa !4
  %9 = load ptr, ptr %cobj, align 8, !tbaa !4
  %tobool9 = icmp ne ptr %9, null
  br i1 %tobool9, label %if.end11, label %if.then10

if.then10:                                        ; preds = %if.end7
  br label %bad

if.end11:                                         ; preds = %if.end7
  %10 = load ptr, ptr %d, align 8, !tbaa !4
  %11 = load ptr, ptr %name.addr, align 8, !tbaa !4
  %12 = load ptr, ptr %cobj, align 8, !tbaa !4
  %call12 = call i32 @PyDict_SetItemString(ptr noundef %10, ptr noundef %11, ptr noundef %12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end11
  br label %bad

if.end15:                                         ; preds = %if.end11
  %13 = load ptr, ptr %cobj, align 8, !tbaa !4
  call void @Py_DECREF(ptr noundef %13)
  %14 = load ptr, ptr %d, align 8, !tbaa !4
  call void @Py_DECREF(ptr noundef %14)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

bad:                                              ; preds = %if.then14, %if.then10, %if.then5, %if.then3
  %15 = load ptr, ptr %cobj, align 8, !tbaa !4
  call void @Py_XDECREF(ptr noundef %15)
  %16 = load ptr, ptr %d, align 8, !tbaa !4
  call void @Py_XDECREF(ptr noundef %16)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %bad, %if.end15
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %cobj) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %d) #9
  %17 = load i32, ptr %retval, align 4
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal double @__pyx_f_5scipy_8optimize_15cython_optimize_6_zeros_bisect(ptr noundef %__pyx_v_f, double noundef %__pyx_v_xa, double noundef %__pyx_v_xb, ptr noundef %__pyx_v_args, double noundef %__pyx_v_xtol, double noundef %__pyx_v_rtol, i32 noundef %__pyx_v_iter, ptr noundef %__pyx_v_full_output) #0 {
entry:
  %__pyx_v_f.addr = alloca ptr, align 8
  %__pyx_v_xa.addr = alloca double, align 8
  %__pyx_v_xb.addr = alloca double, align 8
  %__pyx_v_args.addr = alloca ptr, align 8
  %__pyx_v_xtol.addr = alloca double, align 8
  %__pyx_v_rtol.addr = alloca double, align 8
  %__pyx_v_iter.addr = alloca i32, align 4
  %__pyx_v_full_output.addr = alloca ptr, align 8
  %__pyx_v_solver_stats = alloca %struct.scipy_zeros_info, align 4
  %__pyx_v_myparams = alloca %struct.__pyx_t_5scipy_8optimize_15cython_optimize_6_zeros_zeros_parameters, align 8
  %__pyx_v_root = alloca double, align 8
  %__pyx_r = alloca double, align 8
  %__pyx_t_1 = alloca i32, align 4
  %__pyx_t_2 = alloca i32, align 4
  store ptr %__pyx_v_f, ptr %__pyx_v_f.addr, align 8, !tbaa !4
  store double %__pyx_v_xa, ptr %__pyx_v_xa.addr, align 8, !tbaa !8
  store double %__pyx_v_xb, ptr %__pyx_v_xb.addr, align 8, !tbaa !8
  store ptr %__pyx_v_args, ptr %__pyx_v_args.addr, align 8, !tbaa !4
  store double %__pyx_v_xtol, ptr %__pyx_v_xtol.addr, align 8, !tbaa !8
  store double %__pyx_v_rtol, ptr %__pyx_v_rtol.addr, align 8, !tbaa !8
  store i32 %__pyx_v_iter, ptr %__pyx_v_iter.addr, align 4, !tbaa !10
  store ptr %__pyx_v_full_output, ptr %__pyx_v_full_output.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 12, ptr %__pyx_v_solver_stats) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr %__pyx_v_myparams) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pyx_v_root) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pyx_r) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %__pyx_t_1) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %__pyx_t_2) #9
  %0 = load ptr, ptr %__pyx_v_args.addr, align 8, !tbaa !4
  %args = getelementptr inbounds %struct.__pyx_t_5scipy_8optimize_15cython_optimize_6_zeros_zeros_parameters, ptr %__pyx_v_myparams, i32 0, i32 1
  store ptr %0, ptr %args, align 8, !tbaa !78
  %1 = load ptr, ptr %__pyx_v_f.addr, align 8, !tbaa !4
  %function = getelementptr inbounds %struct.__pyx_t_5scipy_8optimize_15cython_optimize_6_zeros_zeros_parameters, ptr %__pyx_v_myparams, i32 0, i32 0
  store ptr %1, ptr %function, align 8, !tbaa !80
  %2 = load double, ptr %__pyx_v_xa.addr, align 8, !tbaa !8
  %3 = load double, ptr %__pyx_v_xb.addr, align 8, !tbaa !8
  %4 = load double, ptr %__pyx_v_xtol.addr, align 8, !tbaa !8
  %5 = load double, ptr %__pyx_v_rtol.addr, align 8, !tbaa !8
  %6 = load i32, ptr %__pyx_v_iter.addr, align 4, !tbaa !10
  %call = call double @bisect(ptr noundef @__pyx_f_5scipy_8optimize_15cython_optimize_6_zeros_scipy_zeros_functions_func, double noundef %2, double noundef %3, double noundef %4, double noundef %5, i32 noundef %6, ptr noundef %__pyx_v_myparams, ptr noundef %__pyx_v_solver_stats)
  store double %call, ptr %__pyx_v_root, align 8, !tbaa !8
  %7 = load ptr, ptr %__pyx_v_full_output.addr, align 8, !tbaa !4
  %cmp = icmp ne ptr %7, null
  %conv = zext i1 %cmp to i32
  %cmp1 = icmp ne i32 %conv, 0
  %conv2 = zext i1 %cmp1 to i32
  store i32 %conv2, ptr %__pyx_t_1, align 4, !tbaa !10
  %8 = load i32, ptr %__pyx_t_1, align 4, !tbaa !10
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %funcalls = getelementptr inbounds %struct.scipy_zeros_info, ptr %__pyx_v_solver_stats, i32 0, i32 0
  %9 = load i32, ptr %funcalls, align 4, !tbaa !14
  store i32 %9, ptr %__pyx_t_2, align 4, !tbaa !10
  %10 = load i32, ptr %__pyx_t_2, align 4, !tbaa !10
  %11 = load ptr, ptr %__pyx_v_full_output.addr, align 8, !tbaa !4
  %funcalls3 = getelementptr inbounds %struct.__pyx_t_5scipy_8optimize_15cython_optimize_6_zeros_zeros_full_output, ptr %11, i32 0, i32 0
  store i32 %10, ptr %funcalls3, align 8, !tbaa !81
  %iterations = getelementptr inbounds %struct.scipy_zeros_info, ptr %__pyx_v_solver_stats, i32 0, i32 1
  %12 = load i32, ptr %iterations, align 4, !tbaa !15
  store i32 %12, ptr %__pyx_t_2, align 4, !tbaa !10
  %13 = load i32, ptr %__pyx_t_2, align 4, !tbaa !10
  %14 = load ptr, ptr %__pyx_v_full_output.addr, align 8, !tbaa !4
  %iterations4 = getelementptr inbounds %struct.__pyx_t_5scipy_8optimize_15cython_optimize_6_zeros_zeros_full_output, ptr %14, i32 0, i32 1
  store i32 %13, ptr %iterations4, align 4, !tbaa !83
  %error_num = getelementptr inbounds %struct.scipy_zeros_info, ptr %__pyx_v_solver_stats, i32 0, i32 2
  %15 = load i32, ptr %error_num, align 4, !tbaa !12
  store i32 %15, ptr %__pyx_t_2, align 4, !tbaa !10
  %16 = load i32, ptr %__pyx_t_2, align 4, !tbaa !10
  %17 = load ptr, ptr %__pyx_v_full_output.addr, align 8, !tbaa !4
  %error_num5 = getelementptr inbounds %struct.__pyx_t_5scipy_8optimize_15cython_optimize_6_zeros_zeros_full_output, ptr %17, i32 0, i32 2
  store i32 %16, ptr %error_num5, align 8, !tbaa !84
  %18 = load double, ptr %__pyx_v_root, align 8, !tbaa !8
  %19 = load ptr, ptr %__pyx_v_full_output.addr, align 8, !tbaa !4
  %root = getelementptr inbounds %struct.__pyx_t_5scipy_8optimize_15cython_optimize_6_zeros_zeros_full_output, ptr %19, i32 0, i32 3
  store double %18, ptr %root, align 8, !tbaa !85
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %20 = load double, ptr %__pyx_v_root, align 8, !tbaa !8
  store double %20, ptr %__pyx_r, align 8, !tbaa !8
  br label %__pyx_L0

__pyx_L0:                                         ; preds = %if.end
  %21 = load double, ptr %__pyx_r, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %__pyx_t_2) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %__pyx_t_1) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pyx_r) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pyx_v_root) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr %__pyx_v_myparams) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr %__pyx_v_solver_stats) #9
  ret double %21
}

; Function Attrs: nounwind uwtable
define internal double @__pyx_f_5scipy_8optimize_15cython_optimize_6_zeros_ridder(ptr noundef %__pyx_v_f, double noundef %__pyx_v_xa, double noundef %__pyx_v_xb, ptr noundef %__pyx_v_args, double noundef %__pyx_v_xtol, double noundef %__pyx_v_rtol, i32 noundef %__pyx_v_iter, ptr noundef %__pyx_v_full_output) #0 {
entry:
  %__pyx_v_f.addr = alloca ptr, align 8
  %__pyx_v_xa.addr = alloca double, align 8
  %__pyx_v_xb.addr = alloca double, align 8
  %__pyx_v_args.addr = alloca ptr, align 8
  %__pyx_v_xtol.addr = alloca double, align 8
  %__pyx_v_rtol.addr = alloca double, align 8
  %__pyx_v_iter.addr = alloca i32, align 4
  %__pyx_v_full_output.addr = alloca ptr, align 8
  %__pyx_v_solver_stats = alloca %struct.scipy_zeros_info, align 4
  %__pyx_v_myparams = alloca %struct.__pyx_t_5scipy_8optimize_15cython_optimize_6_zeros_zeros_parameters, align 8
  %__pyx_v_root = alloca double, align 8
  %__pyx_r = alloca double, align 8
  %__pyx_t_1 = alloca i32, align 4
  %__pyx_t_2 = alloca i32, align 4
  store ptr %__pyx_v_f, ptr %__pyx_v_f.addr, align 8, !tbaa !4
  store double %__pyx_v_xa, ptr %__pyx_v_xa.addr, align 8, !tbaa !8
  store double %__pyx_v_xb, ptr %__pyx_v_xb.addr, align 8, !tbaa !8
  store ptr %__pyx_v_args, ptr %__pyx_v_args.addr, align 8, !tbaa !4
  store double %__pyx_v_xtol, ptr %__pyx_v_xtol.addr, align 8, !tbaa !8
  store double %__pyx_v_rtol, ptr %__pyx_v_rtol.addr, align 8, !tbaa !8
  store i32 %__pyx_v_iter, ptr %__pyx_v_iter.addr, align 4, !tbaa !10
  store ptr %__pyx_v_full_output, ptr %__pyx_v_full_output.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 12, ptr %__pyx_v_solver_stats) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr %__pyx_v_myparams) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pyx_v_root) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pyx_r) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %__pyx_t_1) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %__pyx_t_2) #9
  %0 = load ptr, ptr %__pyx_v_args.addr, align 8, !tbaa !4
  %args = getelementptr inbounds %struct.__pyx_t_5scipy_8optimize_15cython_optimize_6_zeros_zeros_parameters, ptr %__pyx_v_myparams, i32 0, i32 1
  store ptr %0, ptr %args, align 8, !tbaa !78
  %1 = load ptr, ptr %__pyx_v_f.addr, align 8, !tbaa !4
  %function = getelementptr inbounds %struct.__pyx_t_5scipy_8optimize_15cython_optimize_6_zeros_zeros_parameters, ptr %__pyx_v_myparams, i32 0, i32 0
  store ptr %1, ptr %function, align 8, !tbaa !80
  %2 = load double, ptr %__pyx_v_xa.addr, align 8, !tbaa !8
  %3 = load double, ptr %__pyx_v_xb.addr, align 8, !tbaa !8
  %4 = load double, ptr %__pyx_v_xtol.addr, align 8, !tbaa !8
  %5 = load double, ptr %__pyx_v_rtol.addr, align 8, !tbaa !8
  %6 = load i32, ptr %__pyx_v_iter.addr, align 4, !tbaa !10
  %call = call double @ridder(ptr noundef @__pyx_f_5scipy_8optimize_15cython_optimize_6_zeros_scipy_zeros_functions_func, double noundef %2, double noundef %3, double noundef %4, double noundef %5, i32 noundef %6, ptr noundef %__pyx_v_myparams, ptr noundef %__pyx_v_solver_stats)
  store double %call, ptr %__pyx_v_root, align 8, !tbaa !8
  %7 = load ptr, ptr %__pyx_v_full_output.addr, align 8, !tbaa !4
  %cmp = icmp ne ptr %7, null
  %conv = zext i1 %cmp to i32
  %cmp1 = icmp ne i32 %conv, 0
  %conv2 = zext i1 %cmp1 to i32
  store i32 %conv2, ptr %__pyx_t_1, align 4, !tbaa !10
  %8 = load i32, ptr %__pyx_t_1, align 4, !tbaa !10
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %funcalls = getelementptr inbounds %struct.scipy_zeros_info, ptr %__pyx_v_solver_stats, i32 0, i32 0
  %9 = load i32, ptr %funcalls, align 4, !tbaa !14
  store i32 %9, ptr %__pyx_t_2, align 4, !tbaa !10
  %10 = load i32, ptr %__pyx_t_2, align 4, !tbaa !10
  %11 = load ptr, ptr %__pyx_v_full_output.addr, align 8, !tbaa !4
  %funcalls3 = getelementptr inbounds %struct.__pyx_t_5scipy_8optimize_15cython_optimize_6_zeros_zeros_full_output, ptr %11, i32 0, i32 0
  store i32 %10, ptr %funcalls3, align 8, !tbaa !81
  %iterations = getelementptr inbounds %struct.scipy_zeros_info, ptr %__pyx_v_solver_stats, i32 0, i32 1
  %12 = load i32, ptr %iterations, align 4, !tbaa !15
  store i32 %12, ptr %__pyx_t_2, align 4, !tbaa !10
  %13 = load i32, ptr %__pyx_t_2, align 4, !tbaa !10
  %14 = load ptr, ptr %__pyx_v_full_output.addr, align 8, !tbaa !4
  %iterations4 = getelementptr inbounds %struct.__pyx_t_5scipy_8optimize_15cython_optimize_6_zeros_zeros_full_output, ptr %14, i32 0, i32 1
  store i32 %13, ptr %iterations4, align 4, !tbaa !83
  %error_num = getelementptr inbounds %struct.scipy_zeros_info, ptr %__pyx_v_solver_stats, i32 0, i32 2
  %15 = load i32, ptr %error_num, align 4, !tbaa !12
  store i32 %15, ptr %__pyx_t_2, align 4, !tbaa !10
  %16 = load i32, ptr %__pyx_t_2, align 4, !tbaa !10
  %17 = load ptr, ptr %__pyx_v_full_output.addr, align 8, !tbaa !4
  %error_num5 = getelementptr inbounds %struct.__pyx_t_5scipy_8optimize_15cython_optimize_6_zeros_zeros_full_output, ptr %17, i32 0, i32 2
  store i32 %16, ptr %error_num5, align 8, !tbaa !84
  %18 = load double, ptr %__pyx_v_root, align 8, !tbaa !8
  %19 = load ptr, ptr %__pyx_v_full_output.addr, align 8, !tbaa !4
  %root = getelementptr inbounds %struct.__pyx_t_5scipy_8optimize_15cython_optimize_6_zeros_zeros_full_output, ptr %19, i32 0, i32 3
  store double %18, ptr %root, align 8, !tbaa !85
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %20 = load double, ptr %__pyx_v_root, align 8, !tbaa !8
  store double %20, ptr %__pyx_r, align 8, !tbaa !8
  br label %__pyx_L0

__pyx_L0:                                         ; preds = %if.end
  %21 = load double, ptr %__pyx_r, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %__pyx_t_2) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %__pyx_t_1) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pyx_r) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pyx_v_root) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr %__pyx_v_myparams) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr %__pyx_v_solver_stats) #9
  ret double %21
}

; Function Attrs: nounwind uwtable
define internal double @__pyx_f_5scipy_8optimize_15cython_optimize_6_zeros_brenth(ptr noundef %__pyx_v_f, double noundef %__pyx_v_xa, double noundef %__pyx_v_xb, ptr noundef %__pyx_v_args, double noundef %__pyx_v_xtol, double noundef %__pyx_v_rtol, i32 noundef %__pyx_v_iter, ptr noundef %__pyx_v_full_output) #0 {
entry:
  %__pyx_v_f.addr = alloca ptr, align 8
  %__pyx_v_xa.addr = alloca double, align 8
  %__pyx_v_xb.addr = alloca double, align 8
  %__pyx_v_args.addr = alloca ptr, align 8
  %__pyx_v_xtol.addr = alloca double, align 8
  %__pyx_v_rtol.addr = alloca double, align 8
  %__pyx_v_iter.addr = alloca i32, align 4
  %__pyx_v_full_output.addr = alloca ptr, align 8
  %__pyx_v_solver_stats = alloca %struct.scipy_zeros_info, align 4
  %__pyx_v_myparams = alloca %struct.__pyx_t_5scipy_8optimize_15cython_optimize_6_zeros_zeros_parameters, align 8
  %__pyx_v_root = alloca double, align 8
  %__pyx_r = alloca double, align 8
  %__pyx_t_1 = alloca i32, align 4
  %__pyx_t_2 = alloca i32, align 4
  store ptr %__pyx_v_f, ptr %__pyx_v_f.addr, align 8, !tbaa !4
  store double %__pyx_v_xa, ptr %__pyx_v_xa.addr, align 8, !tbaa !8
  store double %__pyx_v_xb, ptr %__pyx_v_xb.addr, align 8, !tbaa !8
  store ptr %__pyx_v_args, ptr %__pyx_v_args.addr, align 8, !tbaa !4
  store double %__pyx_v_xtol, ptr %__pyx_v_xtol.addr, align 8, !tbaa !8
  store double %__pyx_v_rtol, ptr %__pyx_v_rtol.addr, align 8, !tbaa !8
  store i32 %__pyx_v_iter, ptr %__pyx_v_iter.addr, align 4, !tbaa !10
  store ptr %__pyx_v_full_output, ptr %__pyx_v_full_output.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 12, ptr %__pyx_v_solver_stats) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr %__pyx_v_myparams) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pyx_v_root) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pyx_r) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %__pyx_t_1) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %__pyx_t_2) #9
  %0 = load ptr, ptr %__pyx_v_args.addr, align 8, !tbaa !4
  %args = getelementptr inbounds %struct.__pyx_t_5scipy_8optimize_15cython_optimize_6_zeros_zeros_parameters, ptr %__pyx_v_myparams, i32 0, i32 1
  store ptr %0, ptr %args, align 8, !tbaa !78
  %1 = load ptr, ptr %__pyx_v_f.addr, align 8, !tbaa !4
  %function = getelementptr inbounds %struct.__pyx_t_5scipy_8optimize_15cython_optimize_6_zeros_zeros_parameters, ptr %__pyx_v_myparams, i32 0, i32 0
  store ptr %1, ptr %function, align 8, !tbaa !80
  %2 = load double, ptr %__pyx_v_xa.addr, align 8, !tbaa !8
  %3 = load double, ptr %__pyx_v_xb.addr, align 8, !tbaa !8
  %4 = load double, ptr %__pyx_v_xtol.addr, align 8, !tbaa !8
  %5 = load double, ptr %__pyx_v_rtol.addr, align 8, !tbaa !8
  %6 = load i32, ptr %__pyx_v_iter.addr, align 4, !tbaa !10
  %call = call double @brenth(ptr noundef @__pyx_f_5scipy_8optimize_15cython_optimize_6_zeros_scipy_zeros_functions_func, double noundef %2, double noundef %3, double noundef %4, double noundef %5, i32 noundef %6, ptr noundef %__pyx_v_myparams, ptr noundef %__pyx_v_solver_stats)
  store double %call, ptr %__pyx_v_root, align 8, !tbaa !8
  %7 = load ptr, ptr %__pyx_v_full_output.addr, align 8, !tbaa !4
  %cmp = icmp ne ptr %7, null
  %conv = zext i1 %cmp to i32
  %cmp1 = icmp ne i32 %conv, 0
  %conv2 = zext i1 %cmp1 to i32
  store i32 %conv2, ptr %__pyx_t_1, align 4, !tbaa !10
  %8 = load i32, ptr %__pyx_t_1, align 4, !tbaa !10
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %funcalls = getelementptr inbounds %struct.scipy_zeros_info, ptr %__pyx_v_solver_stats, i32 0, i32 0
  %9 = load i32, ptr %funcalls, align 4, !tbaa !14
  store i32 %9, ptr %__pyx_t_2, align 4, !tbaa !10
  %10 = load i32, ptr %__pyx_t_2, align 4, !tbaa !10
  %11 = load ptr, ptr %__pyx_v_full_output.addr, align 8, !tbaa !4
  %funcalls3 = getelementptr inbounds %struct.__pyx_t_5scipy_8optimize_15cython_optimize_6_zeros_zeros_full_output, ptr %11, i32 0, i32 0
  store i32 %10, ptr %funcalls3, align 8, !tbaa !81
  %iterations = getelementptr inbounds %struct.scipy_zeros_info, ptr %__pyx_v_solver_stats, i32 0, i32 1
  %12 = load i32, ptr %iterations, align 4, !tbaa !15
  store i32 %12, ptr %__pyx_t_2, align 4, !tbaa !10
  %13 = load i32, ptr %__pyx_t_2, align 4, !tbaa !10
  %14 = load ptr, ptr %__pyx_v_full_output.addr, align 8, !tbaa !4
  %iterations4 = getelementptr inbounds %struct.__pyx_t_5scipy_8optimize_15cython_optimize_6_zeros_zeros_full_output, ptr %14, i32 0, i32 1
  store i32 %13, ptr %iterations4, align 4, !tbaa !83
  %error_num = getelementptr inbounds %struct.scipy_zeros_info, ptr %__pyx_v_solver_stats, i32 0, i32 2
  %15 = load i32, ptr %error_num, align 4, !tbaa !12
  store i32 %15, ptr %__pyx_t_2, align 4, !tbaa !10
  %16 = load i32, ptr %__pyx_t_2, align 4, !tbaa !10
  %17 = load ptr, ptr %__pyx_v_full_output.addr, align 8, !tbaa !4
  %error_num5 = getelementptr inbounds %struct.__pyx_t_5scipy_8optimize_15cython_optimize_6_zeros_zeros_full_output, ptr %17, i32 0, i32 2
  store i32 %16, ptr %error_num5, align 8, !tbaa !84
  %18 = load double, ptr %__pyx_v_root, align 8, !tbaa !8
  %19 = load ptr, ptr %__pyx_v_full_output.addr, align 8, !tbaa !4
  %root = getelementptr inbounds %struct.__pyx_t_5scipy_8optimize_15cython_optimize_6_zeros_zeros_full_output, ptr %19, i32 0, i32 3
  store double %18, ptr %root, align 8, !tbaa !85
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %20 = load double, ptr %__pyx_v_root, align 8, !tbaa !8
  store double %20, ptr %__pyx_r, align 8, !tbaa !8
  br label %__pyx_L0

__pyx_L0:                                         ; preds = %if.end
  %21 = load double, ptr %__pyx_r, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %__pyx_t_2) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %__pyx_t_1) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pyx_r) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pyx_v_root) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr %__pyx_v_myparams) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr %__pyx_v_solver_stats) #9
  ret double %21
}

; Function Attrs: nounwind uwtable
define internal double @__pyx_f_5scipy_8optimize_15cython_optimize_6_zeros_brentq(ptr noundef %__pyx_v_f, double noundef %__pyx_v_xa, double noundef %__pyx_v_xb, ptr noundef %__pyx_v_args, double noundef %__pyx_v_xtol, double noundef %__pyx_v_rtol, i32 noundef %__pyx_v_iter, ptr noundef %__pyx_v_full_output) #0 {
entry:
  %__pyx_v_f.addr = alloca ptr, align 8
  %__pyx_v_xa.addr = alloca double, align 8
  %__pyx_v_xb.addr = alloca double, align 8
  %__pyx_v_args.addr = alloca ptr, align 8
  %__pyx_v_xtol.addr = alloca double, align 8
  %__pyx_v_rtol.addr = alloca double, align 8
  %__pyx_v_iter.addr = alloca i32, align 4
  %__pyx_v_full_output.addr = alloca ptr, align 8
  %__pyx_v_solver_stats = alloca %struct.scipy_zeros_info, align 4
  %__pyx_v_myparams = alloca %struct.__pyx_t_5scipy_8optimize_15cython_optimize_6_zeros_zeros_parameters, align 8
  %__pyx_v_root = alloca double, align 8
  %__pyx_r = alloca double, align 8
  %__pyx_t_1 = alloca i32, align 4
  %__pyx_t_2 = alloca i32, align 4
  store ptr %__pyx_v_f, ptr %__pyx_v_f.addr, align 8, !tbaa !4
  store double %__pyx_v_xa, ptr %__pyx_v_xa.addr, align 8, !tbaa !8
  store double %__pyx_v_xb, ptr %__pyx_v_xb.addr, align 8, !tbaa !8
  store ptr %__pyx_v_args, ptr %__pyx_v_args.addr, align 8, !tbaa !4
  store double %__pyx_v_xtol, ptr %__pyx_v_xtol.addr, align 8, !tbaa !8
  store double %__pyx_v_rtol, ptr %__pyx_v_rtol.addr, align 8, !tbaa !8
  store i32 %__pyx_v_iter, ptr %__pyx_v_iter.addr, align 4, !tbaa !10
  store ptr %__pyx_v_full_output, ptr %__pyx_v_full_output.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 12, ptr %__pyx_v_solver_stats) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr %__pyx_v_myparams) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pyx_v_root) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pyx_r) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %__pyx_t_1) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %__pyx_t_2) #9
  %0 = load ptr, ptr %__pyx_v_args.addr, align 8, !tbaa !4
  %args = getelementptr inbounds %struct.__pyx_t_5scipy_8optimize_15cython_optimize_6_zeros_zeros_parameters, ptr %__pyx_v_myparams, i32 0, i32 1
  store ptr %0, ptr %args, align 8, !tbaa !78
  %1 = load ptr, ptr %__pyx_v_f.addr, align 8, !tbaa !4
  %function = getelementptr inbounds %struct.__pyx_t_5scipy_8optimize_15cython_optimize_6_zeros_zeros_parameters, ptr %__pyx_v_myparams, i32 0, i32 0
  store ptr %1, ptr %function, align 8, !tbaa !80
  %2 = load double, ptr %__pyx_v_xa.addr, align 8, !tbaa !8
  %3 = load double, ptr %__pyx_v_xb.addr, align 8, !tbaa !8
  %4 = load double, ptr %__pyx_v_xtol.addr, align 8, !tbaa !8
  %5 = load double, ptr %__pyx_v_rtol.addr, align 8, !tbaa !8
  %6 = load i32, ptr %__pyx_v_iter.addr, align 4, !tbaa !10
  %call = call double @brentq(ptr noundef @__pyx_f_5scipy_8optimize_15cython_optimize_6_zeros_scipy_zeros_functions_func, double noundef %2, double noundef %3, double noundef %4, double noundef %5, i32 noundef %6, ptr noundef %__pyx_v_myparams, ptr noundef %__pyx_v_solver_stats)
  store double %call, ptr %__pyx_v_root, align 8, !tbaa !8
  %7 = load ptr, ptr %__pyx_v_full_output.addr, align 8, !tbaa !4
  %cmp = icmp ne ptr %7, null
  %conv = zext i1 %cmp to i32
  %cmp1 = icmp ne i32 %conv, 0
  %conv2 = zext i1 %cmp1 to i32
  store i32 %conv2, ptr %__pyx_t_1, align 4, !tbaa !10
  %8 = load i32, ptr %__pyx_t_1, align 4, !tbaa !10
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %funcalls = getelementptr inbounds %struct.scipy_zeros_info, ptr %__pyx_v_solver_stats, i32 0, i32 0
  %9 = load i32, ptr %funcalls, align 4, !tbaa !14
  store i32 %9, ptr %__pyx_t_2, align 4, !tbaa !10
  %10 = load i32, ptr %__pyx_t_2, align 4, !tbaa !10
  %11 = load ptr, ptr %__pyx_v_full_output.addr, align 8, !tbaa !4
  %funcalls3 = getelementptr inbounds %struct.__pyx_t_5scipy_8optimize_15cython_optimize_6_zeros_zeros_full_output, ptr %11, i32 0, i32 0
  store i32 %10, ptr %funcalls3, align 8, !tbaa !81
  %iterations = getelementptr inbounds %struct.scipy_zeros_info, ptr %__pyx_v_solver_stats, i32 0, i32 1
  %12 = load i32, ptr %iterations, align 4, !tbaa !15
  store i32 %12, ptr %__pyx_t_2, align 4, !tbaa !10
  %13 = load i32, ptr %__pyx_t_2, align 4, !tbaa !10
  %14 = load ptr, ptr %__pyx_v_full_output.addr, align 8, !tbaa !4
  %iterations4 = getelementptr inbounds %struct.__pyx_t_5scipy_8optimize_15cython_optimize_6_zeros_zeros_full_output, ptr %14, i32 0, i32 1
  store i32 %13, ptr %iterations4, align 4, !tbaa !83
  %error_num = getelementptr inbounds %struct.scipy_zeros_info, ptr %__pyx_v_solver_stats, i32 0, i32 2
  %15 = load i32, ptr %error_num, align 4, !tbaa !12
  store i32 %15, ptr %__pyx_t_2, align 4, !tbaa !10
  %16 = load i32, ptr %__pyx_t_2, align 4, !tbaa !10
  %17 = load ptr, ptr %__pyx_v_full_output.addr, align 8, !tbaa !4
  %error_num5 = getelementptr inbounds %struct.__pyx_t_5scipy_8optimize_15cython_optimize_6_zeros_zeros_full_output, ptr %17, i32 0, i32 2
  store i32 %16, ptr %error_num5, align 8, !tbaa !84
  %18 = load double, ptr %__pyx_v_root, align 8, !tbaa !8
  %19 = load ptr, ptr %__pyx_v_full_output.addr, align 8, !tbaa !4
  %root = getelementptr inbounds %struct.__pyx_t_5scipy_8optimize_15cython_optimize_6_zeros_zeros_full_output, ptr %19, i32 0, i32 3
  store double %18, ptr %root, align 8, !tbaa !85
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %20 = load double, ptr %__pyx_v_root, align 8, !tbaa !8
  store double %20, ptr %__pyx_r, align 8, !tbaa !8
  br label %__pyx_L0

__pyx_L0:                                         ; preds = %if.end
  %21 = load double, ptr %__pyx_r, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %__pyx_t_2) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %__pyx_t_1) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pyx_r) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pyx_v_root) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr %__pyx_v_myparams) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr %__pyx_v_solver_stats) #9
  ret double %21
}

declare i32 @PyModule_AddObject(ptr noundef, ptr noundef, ptr noundef) #4

declare ptr @PyCapsule_New(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: nounwind uwtable
define internal double @__pyx_f_5scipy_8optimize_15cython_optimize_6_zeros_scipy_zeros_functions_func(double noundef %__pyx_v_x, ptr noundef %__pyx_v_params) #0 {
entry:
  %__pyx_v_x.addr = alloca double, align 8
  %__pyx_v_params.addr = alloca ptr, align 8
  %__pyx_v_myparams = alloca ptr, align 8
  %__pyx_v_args = alloca ptr, align 8
  %__pyx_v_f = alloca ptr, align 8
  %__pyx_r = alloca double, align 8
  %__pyx_t_1 = alloca ptr, align 8
  %__pyx_t_2 = alloca ptr, align 8
  store double %__pyx_v_x, ptr %__pyx_v_x.addr, align 8, !tbaa !8
  store ptr %__pyx_v_params, ptr %__pyx_v_params.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pyx_v_myparams) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pyx_v_args) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pyx_v_f) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pyx_r) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pyx_t_1) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pyx_t_2) #9
  %0 = load ptr, ptr %__pyx_v_params.addr, align 8, !tbaa !4
  store ptr %0, ptr %__pyx_v_myparams, align 8, !tbaa !4
  %1 = load ptr, ptr %__pyx_v_myparams, align 8, !tbaa !4
  %args = getelementptr inbounds %struct.__pyx_t_5scipy_8optimize_15cython_optimize_6_zeros_zeros_parameters, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %args, align 8, !tbaa !78
  store ptr %2, ptr %__pyx_t_1, align 8, !tbaa !4
  %3 = load ptr, ptr %__pyx_t_1, align 8, !tbaa !4
  store ptr %3, ptr %__pyx_v_args, align 8, !tbaa !4
  %4 = load ptr, ptr %__pyx_v_myparams, align 8, !tbaa !4
  %function = getelementptr inbounds %struct.__pyx_t_5scipy_8optimize_15cython_optimize_6_zeros_zeros_parameters, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %function, align 8, !tbaa !80
  store ptr %5, ptr %__pyx_t_2, align 8, !tbaa !4
  %6 = load ptr, ptr %__pyx_t_2, align 8, !tbaa !4
  store ptr %6, ptr %__pyx_v_f, align 8, !tbaa !4
  %7 = load ptr, ptr %__pyx_v_f, align 8, !tbaa !4
  %8 = load double, ptr %__pyx_v_x.addr, align 8, !tbaa !8
  %9 = load ptr, ptr %__pyx_v_args, align 8, !tbaa !4
  %call = call double %7(double noundef %8, ptr noundef %9)
  store double %call, ptr %__pyx_r, align 8, !tbaa !8
  br label %__pyx_L0

__pyx_L0:                                         ; preds = %entry
  %10 = load double, ptr %__pyx_r, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pyx_t_2) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pyx_t_1) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pyx_r) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pyx_v_f) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pyx_v_args) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pyx_v_myparams) #9
  ret double %10
}

declare ptr @PyObject_GenericGetAttr(ptr noundef, ptr noundef) #4

; Function Attrs: nounwind uwtable
define internal void @__pyx_tp_dealloc_5scipy_8optimize_15cython_optimize_6_zeros___pyx_scope_struct__loop_example(ptr noundef %o) #0 {
entry:
  %o.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %_py_tmp = alloca ptr, align 8
  %_py_tmp3 = alloca ptr, align 8
  %_py_tmp11 = alloca ptr, align 8
  %_py_tmp19 = alloca ptr, align 8
  %_py_tmp27 = alloca ptr, align 8
  %_py_tmp35 = alloca ptr, align 8
  store ptr %o, ptr %o.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #9
  %0 = load ptr, ptr %o.addr, align 8, !tbaa !4
  store ptr %0, ptr %p, align 8, !tbaa !4
  %1 = load ptr, ptr %o.addr, align 8, !tbaa !4
  call void @PyObject_GC_UnTrack(ptr noundef %1)
  br label %do.body

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %_py_tmp) #9
  %2 = load ptr, ptr %p, align 8, !tbaa !4
  %__pyx_v_method = getelementptr inbounds %struct.__pyx_obj_5scipy_8optimize_15cython_optimize_6_zeros___pyx_scope_struct__loop_example, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %__pyx_v_method, align 8, !tbaa !86
  store ptr %3, ptr %_py_tmp, align 8, !tbaa !4
  %4 = load ptr, ptr %_py_tmp, align 8, !tbaa !4
  %cmp = icmp ne ptr %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %5 = load ptr, ptr %p, align 8, !tbaa !4
  %__pyx_v_method1 = getelementptr inbounds %struct.__pyx_obj_5scipy_8optimize_15cython_optimize_6_zeros___pyx_scope_struct__loop_example, ptr %5, i32 0, i32 1
  store ptr null, ptr %__pyx_v_method1, align 8, !tbaa !86
  %6 = load ptr, ptr %_py_tmp, align 8, !tbaa !4
  call void @Py_DECREF(ptr noundef %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %_py_tmp) #9
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body2

do.body2:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %_py_tmp3) #9
  %7 = load ptr, ptr %p, align 8, !tbaa !4
  %__pyx_v_mitr = getelementptr inbounds %struct.__pyx_obj_5scipy_8optimize_15cython_optimize_6_zeros___pyx_scope_struct__loop_example, ptr %7, i32 0, i32 2
  %8 = load ptr, ptr %__pyx_v_mitr, align 8, !tbaa !88
  store ptr %8, ptr %_py_tmp3, align 8, !tbaa !4
  %9 = load ptr, ptr %_py_tmp3, align 8, !tbaa !4
  %cmp4 = icmp ne ptr %9, null
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %do.body2
  %10 = load ptr, ptr %p, align 8, !tbaa !4
  %__pyx_v_mitr6 = getelementptr inbounds %struct.__pyx_obj_5scipy_8optimize_15cython_optimize_6_zeros___pyx_scope_struct__loop_example, ptr %10, i32 0, i32 2
  store ptr null, ptr %__pyx_v_mitr6, align 8, !tbaa !88
  %11 = load ptr, ptr %_py_tmp3, align 8, !tbaa !4
  call void @Py_DECREF(ptr noundef %11)
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %do.body2
  call void @llvm.lifetime.end.p0(i64 8, ptr %_py_tmp3) #9
  br label %do.cond8

do.cond8:                                         ; preds = %if.end7
  br label %do.end9

do.end9:                                          ; preds = %do.cond8
  br label %do.body10

do.body10:                                        ; preds = %do.end9
  call void @llvm.lifetime.start.p0(i64 8, ptr %_py_tmp11) #9
  %12 = load ptr, ptr %p, align 8, !tbaa !4
  %__pyx_v_rtol = getelementptr inbounds %struct.__pyx_obj_5scipy_8optimize_15cython_optimize_6_zeros___pyx_scope_struct__loop_example, ptr %12, i32 0, i32 3
  %13 = load ptr, ptr %__pyx_v_rtol, align 8, !tbaa !89
  store ptr %13, ptr %_py_tmp11, align 8, !tbaa !4
  %14 = load ptr, ptr %_py_tmp11, align 8, !tbaa !4
  %cmp12 = icmp ne ptr %14, null
  br i1 %cmp12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %do.body10
  %15 = load ptr, ptr %p, align 8, !tbaa !4
  %__pyx_v_rtol14 = getelementptr inbounds %struct.__pyx_obj_5scipy_8optimize_15cython_optimize_6_zeros___pyx_scope_struct__loop_example, ptr %15, i32 0, i32 3
  store ptr null, ptr %__pyx_v_rtol14, align 8, !tbaa !89
  %16 = load ptr, ptr %_py_tmp11, align 8, !tbaa !4
  call void @Py_DECREF(ptr noundef %16)
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %do.body10
  call void @llvm.lifetime.end.p0(i64 8, ptr %_py_tmp11) #9
  br label %do.cond16

do.cond16:                                        ; preds = %if.end15
  br label %do.end17

do.end17:                                         ; preds = %do.cond16
  br label %do.body18

do.body18:                                        ; preds = %do.end17
  call void @llvm.lifetime.start.p0(i64 8, ptr %_py_tmp19) #9
  %17 = load ptr, ptr %p, align 8, !tbaa !4
  %__pyx_v_xa = getelementptr inbounds %struct.__pyx_obj_5scipy_8optimize_15cython_optimize_6_zeros___pyx_scope_struct__loop_example, ptr %17, i32 0, i32 4
  %18 = load ptr, ptr %__pyx_v_xa, align 8, !tbaa !90
  store ptr %18, ptr %_py_tmp19, align 8, !tbaa !4
  %19 = load ptr, ptr %_py_tmp19, align 8, !tbaa !4
  %cmp20 = icmp ne ptr %19, null
  br i1 %cmp20, label %if.then21, label %if.end23

if.then21:                                        ; preds = %do.body18
  %20 = load ptr, ptr %p, align 8, !tbaa !4
  %__pyx_v_xa22 = getelementptr inbounds %struct.__pyx_obj_5scipy_8optimize_15cython_optimize_6_zeros___pyx_scope_struct__loop_example, ptr %20, i32 0, i32 4
  store ptr null, ptr %__pyx_v_xa22, align 8, !tbaa !90
  %21 = load ptr, ptr %_py_tmp19, align 8, !tbaa !4
  call void @Py_DECREF(ptr noundef %21)
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %do.body18
  call void @llvm.lifetime.end.p0(i64 8, ptr %_py_tmp19) #9
  br label %do.cond24

do.cond24:                                        ; preds = %if.end23
  br label %do.end25

do.end25:                                         ; preds = %do.cond24
  br label %do.body26

do.body26:                                        ; preds = %do.end25
  call void @llvm.lifetime.start.p0(i64 8, ptr %_py_tmp27) #9
  %22 = load ptr, ptr %p, align 8, !tbaa !4
  %__pyx_v_xb = getelementptr inbounds %struct.__pyx_obj_5scipy_8optimize_15cython_optimize_6_zeros___pyx_scope_struct__loop_example, ptr %22, i32 0, i32 5
  %23 = load ptr, ptr %__pyx_v_xb, align 8, !tbaa !91
  store ptr %23, ptr %_py_tmp27, align 8, !tbaa !4
  %24 = load ptr, ptr %_py_tmp27, align 8, !tbaa !4
  %cmp28 = icmp ne ptr %24, null
  br i1 %cmp28, label %if.then29, label %if.end31

if.then29:                                        ; preds = %do.body26
  %25 = load ptr, ptr %p, align 8, !tbaa !4
  %__pyx_v_xb30 = getelementptr inbounds %struct.__pyx_obj_5scipy_8optimize_15cython_optimize_6_zeros___pyx_scope_struct__loop_example, ptr %25, i32 0, i32 5
  store ptr null, ptr %__pyx_v_xb30, align 8, !tbaa !91
  %26 = load ptr, ptr %_py_tmp27, align 8, !tbaa !4
  call void @Py_DECREF(ptr noundef %26)
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %do.body26
  call void @llvm.lifetime.end.p0(i64 8, ptr %_py_tmp27) #9
  br label %do.cond32

do.cond32:                                        ; preds = %if.end31
  br label %do.end33

do.end33:                                         ; preds = %do.cond32
  br label %do.body34

do.body34:                                        ; preds = %do.end33
  call void @llvm.lifetime.start.p0(i64 8, ptr %_py_tmp35) #9
  %27 = load ptr, ptr %p, align 8, !tbaa !4
  %__pyx_v_xtol = getelementptr inbounds %struct.__pyx_obj_5scipy_8optimize_15cython_optimize_6_zeros___pyx_scope_struct__loop_example, ptr %27, i32 0, i32 6
  %28 = load ptr, ptr %__pyx_v_xtol, align 8, !tbaa !92
  store ptr %28, ptr %_py_tmp35, align 8, !tbaa !4
  %29 = load ptr, ptr %_py_tmp35, align 8, !tbaa !4
  %cmp36 = icmp ne ptr %29, null
  br i1 %cmp36, label %if.then37, label %if.end39

if.then37:                                        ; preds = %do.body34
  %30 = load ptr, ptr %p, align 8, !tbaa !4
  %__pyx_v_xtol38 = getelementptr inbounds %struct.__pyx_obj_5scipy_8optimize_15cython_optimize_6_zeros___pyx_scope_struct__loop_example, ptr %30, i32 0, i32 6
  store ptr null, ptr %__pyx_v_xtol38, align 8, !tbaa !92
  %31 = load ptr, ptr %_py_tmp35, align 8, !tbaa !4
  call void @Py_DECREF(ptr noundef %31)
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %do.body34
  call void @llvm.lifetime.end.p0(i64 8, ptr %_py_tmp35) #9
  br label %do.cond40

do.cond40:                                        ; preds = %if.end39
  br label %do.end41

do.end41:                                         ; preds = %do.cond40
  %32 = load i32, ptr @__pyx_freecount_5scipy_8optimize_15cython_optimize_6_zeros___pyx_scope_struct__loop_example, align 4, !tbaa !10
  %cmp42 = icmp slt i32 %32, 8
  %conv = zext i1 %cmp42 to i32
  %33 = load ptr, ptr %o.addr, align 8, !tbaa !4
  %call = call ptr @Py_TYPE(ptr noundef %33)
  %tp_basicsize = getelementptr inbounds %struct._typeobject, ptr %call, i32 0, i32 2
  %34 = load i64, ptr %tp_basicsize, align 8, !tbaa !39
  %cmp43 = icmp eq i64 %34, 64
  %conv44 = zext i1 %cmp43 to i32
  %and = and i32 %conv, %conv44
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then45, label %if.else

if.then45:                                        ; preds = %do.end41
  %35 = load ptr, ptr %o.addr, align 8, !tbaa !4
  %36 = load i32, ptr @__pyx_freecount_5scipy_8optimize_15cython_optimize_6_zeros___pyx_scope_struct__loop_example, align 4, !tbaa !10
  %inc = add nsw i32 %36, 1
  store i32 %inc, ptr @__pyx_freecount_5scipy_8optimize_15cython_optimize_6_zeros___pyx_scope_struct__loop_example, align 4, !tbaa !10
  %idxprom = sext i32 %36 to i64
  %arrayidx = getelementptr inbounds [8 x ptr], ptr @__pyx_freelist_5scipy_8optimize_15cython_optimize_6_zeros___pyx_scope_struct__loop_example, i64 0, i64 %idxprom
  store ptr %35, ptr %arrayidx, align 8, !tbaa !4
  br label %if.end47

if.else:                                          ; preds = %do.end41
  %37 = load ptr, ptr %o.addr, align 8, !tbaa !4
  %call46 = call ptr @Py_TYPE(ptr noundef %37)
  %tp_free = getelementptr inbounds %struct._typeobject, ptr %call46, i32 0, i32 38
  %38 = load ptr, ptr %tp_free, align 8, !tbaa !93
  %39 = load ptr, ptr %o.addr, align 8, !tbaa !4
  call void %38(ptr noundef %39)
  br label %if.end47

if.end47:                                         ; preds = %if.else, %if.then45
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @__pyx_tp_traverse_5scipy_8optimize_15cython_optimize_6_zeros___pyx_scope_struct__loop_example(ptr noundef %o, ptr noundef %v, ptr noundef %a) #0 {
entry:
  %retval = alloca i32, align 4
  %o.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %e = alloca i32, align 4
  %p = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %o, ptr %o.addr, align 8, !tbaa !4
  store ptr %v, ptr %v.addr, align 8, !tbaa !4
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %e) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #9
  %0 = load ptr, ptr %o.addr, align 8, !tbaa !4
  store ptr %0, ptr %p, align 8, !tbaa !4
  %1 = load ptr, ptr %p, align 8, !tbaa !4
  %__pyx_v_method = getelementptr inbounds %struct.__pyx_obj_5scipy_8optimize_15cython_optimize_6_zeros___pyx_scope_struct__loop_example, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %__pyx_v_method, align 8, !tbaa !86
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %v.addr, align 8, !tbaa !4
  %4 = load ptr, ptr %p, align 8, !tbaa !4
  %__pyx_v_method1 = getelementptr inbounds %struct.__pyx_obj_5scipy_8optimize_15cython_optimize_6_zeros___pyx_scope_struct__loop_example, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %__pyx_v_method1, align 8, !tbaa !86
  %6 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %call = call i32 %3(ptr noundef %5, ptr noundef %6)
  store i32 %call, ptr %e, align 4, !tbaa !10
  %7 = load i32, ptr %e, align 4, !tbaa !10
  %tobool2 = icmp ne i32 %7, 0
  br i1 %tobool2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %8 = load i32, ptr %e, align 4, !tbaa !10
  store i32 %8, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry
  %9 = load ptr, ptr %p, align 8, !tbaa !4
  %__pyx_v_mitr = getelementptr inbounds %struct.__pyx_obj_5scipy_8optimize_15cython_optimize_6_zeros___pyx_scope_struct__loop_example, ptr %9, i32 0, i32 2
  %10 = load ptr, ptr %__pyx_v_mitr, align 8, !tbaa !88
  %tobool5 = icmp ne ptr %10, null
  br i1 %tobool5, label %if.then6, label %if.end12

if.then6:                                         ; preds = %if.end4
  %11 = load ptr, ptr %v.addr, align 8, !tbaa !4
  %12 = load ptr, ptr %p, align 8, !tbaa !4
  %__pyx_v_mitr7 = getelementptr inbounds %struct.__pyx_obj_5scipy_8optimize_15cython_optimize_6_zeros___pyx_scope_struct__loop_example, ptr %12, i32 0, i32 2
  %13 = load ptr, ptr %__pyx_v_mitr7, align 8, !tbaa !88
  %14 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %call8 = call i32 %11(ptr noundef %13, ptr noundef %14)
  store i32 %call8, ptr %e, align 4, !tbaa !10
  %15 = load i32, ptr %e, align 4, !tbaa !10
  %tobool9 = icmp ne i32 %15, 0
  br i1 %tobool9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.then6
  %16 = load i32, ptr %e, align 4, !tbaa !10
  store i32 %16, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end11:                                         ; preds = %if.then6
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %if.end4
  %17 = load ptr, ptr %p, align 8, !tbaa !4
  %__pyx_v_rtol = getelementptr inbounds %struct.__pyx_obj_5scipy_8optimize_15cython_optimize_6_zeros___pyx_scope_struct__loop_example, ptr %17, i32 0, i32 3
  %18 = load ptr, ptr %__pyx_v_rtol, align 8, !tbaa !89
  %tobool13 = icmp ne ptr %18, null
  br i1 %tobool13, label %if.then14, label %if.end20

if.then14:                                        ; preds = %if.end12
  %19 = load ptr, ptr %v.addr, align 8, !tbaa !4
  %20 = load ptr, ptr %p, align 8, !tbaa !4
  %__pyx_v_rtol15 = getelementptr inbounds %struct.__pyx_obj_5scipy_8optimize_15cython_optimize_6_zeros___pyx_scope_struct__loop_example, ptr %20, i32 0, i32 3
  %21 = load ptr, ptr %__pyx_v_rtol15, align 8, !tbaa !89
  %22 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %call16 = call i32 %19(ptr noundef %21, ptr noundef %22)
  store i32 %call16, ptr %e, align 4, !tbaa !10
  %23 = load i32, ptr %e, align 4, !tbaa !10
  %tobool17 = icmp ne i32 %23, 0
  br i1 %tobool17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.then14
  %24 = load i32, ptr %e, align 4, !tbaa !10
  store i32 %24, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end19:                                         ; preds = %if.then14
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.end12
  %25 = load ptr, ptr %p, align 8, !tbaa !4
  %__pyx_v_xa = getelementptr inbounds %struct.__pyx_obj_5scipy_8optimize_15cython_optimize_6_zeros___pyx_scope_struct__loop_example, ptr %25, i32 0, i32 4
  %26 = load ptr, ptr %__pyx_v_xa, align 8, !tbaa !90
  %tobool21 = icmp ne ptr %26, null
  br i1 %tobool21, label %if.then22, label %if.end28

if.then22:                                        ; preds = %if.end20
  %27 = load ptr, ptr %v.addr, align 8, !tbaa !4
  %28 = load ptr, ptr %p, align 8, !tbaa !4
  %__pyx_v_xa23 = getelementptr inbounds %struct.__pyx_obj_5scipy_8optimize_15cython_optimize_6_zeros___pyx_scope_struct__loop_example, ptr %28, i32 0, i32 4
  %29 = load ptr, ptr %__pyx_v_xa23, align 8, !tbaa !90
  %30 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %call24 = call i32 %27(ptr noundef %29, ptr noundef %30)
  store i32 %call24, ptr %e, align 4, !tbaa !10
  %31 = load i32, ptr %e, align 4, !tbaa !10
  %tobool25 = icmp ne i32 %31, 0
  br i1 %tobool25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.then22
  %32 = load i32, ptr %e, align 4, !tbaa !10
  store i32 %32, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end27:                                         ; preds = %if.then22
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.end20
  %33 = load ptr, ptr %p, align 8, !tbaa !4
  %__pyx_v_xb = getelementptr inbounds %struct.__pyx_obj_5scipy_8optimize_15cython_optimize_6_zeros___pyx_scope_struct__loop_example, ptr %33, i32 0, i32 5
  %34 = load ptr, ptr %__pyx_v_xb, align 8, !tbaa !91
  %tobool29 = icmp ne ptr %34, null
  br i1 %tobool29, label %if.then30, label %if.end36

if.then30:                                        ; preds = %if.end28
  %35 = load ptr, ptr %v.addr, align 8, !tbaa !4
  %36 = load ptr, ptr %p, align 8, !tbaa !4
  %__pyx_v_xb31 = getelementptr inbounds %struct.__pyx_obj_5scipy_8optimize_15cython_optimize_6_zeros___pyx_scope_struct__loop_example, ptr %36, i32 0, i32 5
  %37 = load ptr, ptr %__pyx_v_xb31, align 8, !tbaa !91
  %38 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %call32 = call i32 %35(ptr noundef %37, ptr noundef %38)
  store i32 %call32, ptr %e, align 4, !tbaa !10
  %39 = load i32, ptr %e, align 4, !tbaa !10
  %tobool33 = icmp ne i32 %39, 0
  br i1 %tobool33, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.then30
  %40 = load i32, ptr %e, align 4, !tbaa !10
  store i32 %40, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end35:                                         ; preds = %if.then30
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.end28
  %41 = load ptr, ptr %p, align 8, !tbaa !4
  %__pyx_v_xtol = getelementptr inbounds %struct.__pyx_obj_5scipy_8optimize_15cython_optimize_6_zeros___pyx_scope_struct__loop_example, ptr %41, i32 0, i32 6
  %42 = load ptr, ptr %__pyx_v_xtol, align 8, !tbaa !92
  %tobool37 = icmp ne ptr %42, null
  br i1 %tobool37, label %if.then38, label %if.end44

if.then38:                                        ; preds = %if.end36
  %43 = load ptr, ptr %v.addr, align 8, !tbaa !4
  %44 = load ptr, ptr %p, align 8, !tbaa !4
  %__pyx_v_xtol39 = getelementptr inbounds %struct.__pyx_obj_5scipy_8optimize_15cython_optimize_6_zeros___pyx_scope_struct__loop_example, ptr %44, i32 0, i32 6
  %45 = load ptr, ptr %__pyx_v_xtol39, align 8, !tbaa !92
  %46 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %call40 = call i32 %43(ptr noundef %45, ptr noundef %46)
  store i32 %call40, ptr %e, align 4, !tbaa !10
  %47 = load i32, ptr %e, align 4, !tbaa !10
  %tobool41 = icmp ne i32 %47, 0
  br i1 %tobool41, label %if.then42, label %if.end43

if.then42:                                        ; preds = %if.then38
  %48 = load i32, ptr %e, align 4, !tbaa !10
  store i32 %48, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end43:                                         ; preds = %if.then38
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %if.end36
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %if.then42, %if.then34, %if.then26, %if.then18, %if.then10, %if.then3
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %e) #9
  %49 = load i32, ptr %retval, align 4
  ret i32 %49
}

; Function Attrs: nounwind uwtable
define internal i32 @__pyx_tp_clear_5scipy_8optimize_15cython_optimize_6_zeros___pyx_scope_struct__loop_example(ptr noundef %o) #0 {
entry:
  %o.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %p = alloca ptr, align 8
  store ptr %o, ptr %o.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #9
  %0 = load ptr, ptr %o.addr, align 8, !tbaa !4
  store ptr %0, ptr %p, align 8, !tbaa !4
  %1 = load ptr, ptr %p, align 8, !tbaa !4
  %__pyx_v_method = getelementptr inbounds %struct.__pyx_obj_5scipy_8optimize_15cython_optimize_6_zeros___pyx_scope_struct__loop_example, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %__pyx_v_method, align 8, !tbaa !86
  store ptr %2, ptr %tmp, align 8, !tbaa !4
  %3 = load ptr, ptr %p, align 8, !tbaa !4
  %__pyx_v_method1 = getelementptr inbounds %struct.__pyx_obj_5scipy_8optimize_15cython_optimize_6_zeros___pyx_scope_struct__loop_example, ptr %3, i32 0, i32 1
  store ptr @_Py_NoneStruct, ptr %__pyx_v_method1, align 8, !tbaa !86
  call void @Py_INCREF(ptr noundef @_Py_NoneStruct)
  %4 = load ptr, ptr %tmp, align 8, !tbaa !4
  call void @Py_XDECREF(ptr noundef %4)
  %5 = load ptr, ptr %p, align 8, !tbaa !4
  %__pyx_v_mitr = getelementptr inbounds %struct.__pyx_obj_5scipy_8optimize_15cython_optimize_6_zeros___pyx_scope_struct__loop_example, ptr %5, i32 0, i32 2
  %6 = load ptr, ptr %__pyx_v_mitr, align 8, !tbaa !88
  store ptr %6, ptr %tmp, align 8, !tbaa !4
  %7 = load ptr, ptr %p, align 8, !tbaa !4
  %__pyx_v_mitr2 = getelementptr inbounds %struct.__pyx_obj_5scipy_8optimize_15cython_optimize_6_zeros___pyx_scope_struct__loop_example, ptr %7, i32 0, i32 2
  store ptr @_Py_NoneStruct, ptr %__pyx_v_mitr2, align 8, !tbaa !88
  call void @Py_INCREF(ptr noundef @_Py_NoneStruct)
  %8 = load ptr, ptr %tmp, align 8, !tbaa !4
  call void @Py_XDECREF(ptr noundef %8)
  %9 = load ptr, ptr %p, align 8, !tbaa !4
  %__pyx_v_rtol = getelementptr inbounds %struct.__pyx_obj_5scipy_8optimize_15cython_optimize_6_zeros___pyx_scope_struct__loop_example, ptr %9, i32 0, i32 3
  %10 = load ptr, ptr %__pyx_v_rtol, align 8, !tbaa !89
  store ptr %10, ptr %tmp, align 8, !tbaa !4
  %11 = load ptr, ptr %p, align 8, !tbaa !4
  %__pyx_v_rtol3 = getelementptr inbounds %struct.__pyx_obj_5scipy_8optimize_15cython_optimize_6_zeros___pyx_scope_struct__loop_example, ptr %11, i32 0, i32 3
  store ptr @_Py_NoneStruct, ptr %__pyx_v_rtol3, align 8, !tbaa !89
  call void @Py_INCREF(ptr noundef @_Py_NoneStruct)
  %12 = load ptr, ptr %tmp, align 8, !tbaa !4
  call void @Py_XDECREF(ptr noundef %12)
  %13 = load ptr, ptr %p, align 8, !tbaa !4
  %__pyx_v_xa = getelementptr inbounds %struct.__pyx_obj_5scipy_8optimize_15cython_optimize_6_zeros___pyx_scope_struct__loop_example, ptr %13, i32 0, i32 4
  %14 = load ptr, ptr %__pyx_v_xa, align 8, !tbaa !90
  store ptr %14, ptr %tmp, align 8, !tbaa !4
  %15 = load ptr, ptr %p, align 8, !tbaa !4
  %__pyx_v_xa4 = getelementptr inbounds %struct.__pyx_obj_5scipy_8optimize_15cython_optimize_6_zeros___pyx_scope_struct__loop_example, ptr %15, i32 0, i32 4
  store ptr @_Py_NoneStruct, ptr %__pyx_v_xa4, align 8, !tbaa !90
  call void @Py_INCREF(ptr noundef @_Py_NoneStruct)
  %16 = load ptr, ptr %tmp, align 8, !tbaa !4
  call void @Py_XDECREF(ptr noundef %16)
  %17 = load ptr, ptr %p, align 8, !tbaa !4
  %__pyx_v_xb = getelementptr inbounds %struct.__pyx_obj_5scipy_8optimize_15cython_optimize_6_zeros___pyx_scope_struct__loop_example, ptr %17, i32 0, i32 5
  %18 = load ptr, ptr %__pyx_v_xb, align 8, !tbaa !91
  store ptr %18, ptr %tmp, align 8, !tbaa !4
  %19 = load ptr, ptr %p, align 8, !tbaa !4
  %__pyx_v_xb5 = getelementptr inbounds %struct.__pyx_obj_5scipy_8optimize_15cython_optimize_6_zeros___pyx_scope_struct__loop_example, ptr %19, i32 0, i32 5
  store ptr @_Py_NoneStruct, ptr %__pyx_v_xb5, align 8, !tbaa !91
  call void @Py_INCREF(ptr noundef @_Py_NoneStruct)
  %20 = load ptr, ptr %tmp, align 8, !tbaa !4
  call void @Py_XDECREF(ptr noundef %20)
  %21 = load ptr, ptr %p, align 8, !tbaa !4
  %__pyx_v_xtol = getelementptr inbounds %struct.__pyx_obj_5scipy_8optimize_15cython_optimize_6_zeros___pyx_scope_struct__loop_example, ptr %21, i32 0, i32 6
  %22 = load ptr, ptr %__pyx_v_xtol, align 8, !tbaa !92
  store ptr %22, ptr %tmp, align 8, !tbaa !4
  %23 = load ptr, ptr %p, align 8, !tbaa !4
  %__pyx_v_xtol6 = getelementptr inbounds %struct.__pyx_obj_5scipy_8optimize_15cython_optimize_6_zeros___pyx_scope_struct__loop_example, ptr %23, i32 0, i32 6
  store ptr @_Py_NoneStruct, ptr %__pyx_v_xtol6, align 8, !tbaa !92
  call void @Py_INCREF(ptr noundef @_Py_NoneStruct)
  %24 = load ptr, ptr %tmp, align 8, !tbaa !4
  call void @Py_XDECREF(ptr noundef %24)
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #9
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal ptr @__pyx_tp_new_5scipy_8optimize_15cython_optimize_6_zeros___pyx_scope_struct__loop_example(ptr noundef %t, ptr noundef %a, ptr noundef %k) #0 {
entry:
  %retval = alloca ptr, align 8
  %t.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %k.addr = alloca ptr, align 8
  %o = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %t, ptr %t.addr, align 8, !tbaa !4
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store ptr %k, ptr %k.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %o) #9
  %0 = load i32, ptr @__pyx_freecount_5scipy_8optimize_15cython_optimize_6_zeros___pyx_scope_struct__loop_example, align 4, !tbaa !10
  %cmp = icmp sgt i32 %0, 0
  %conv = zext i1 %cmp to i32
  %1 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %tp_basicsize = getelementptr inbounds %struct._typeobject, ptr %1, i32 0, i32 2
  %2 = load i64, ptr %tp_basicsize, align 8, !tbaa !39
  %cmp1 = icmp eq i64 %2, 64
  %conv2 = zext i1 %cmp1 to i32
  %and = and i32 %conv, %conv2
  %tobool = icmp ne i32 %and, 0
  %lnot = xor i1 %tobool, true
  %lnot3 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot3 to i32
  %conv4 = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv4, i64 1)
  %tobool5 = icmp ne i64 %expval, 0
  br i1 %tobool5, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i32, ptr @__pyx_freecount_5scipy_8optimize_15cython_optimize_6_zeros___pyx_scope_struct__loop_example, align 4, !tbaa !10
  %dec = add nsw i32 %3, -1
  store i32 %dec, ptr @__pyx_freecount_5scipy_8optimize_15cython_optimize_6_zeros___pyx_scope_struct__loop_example, align 4, !tbaa !10
  %idxprom = sext i32 %dec to i64
  %arrayidx = getelementptr inbounds [8 x ptr], ptr @__pyx_freelist_5scipy_8optimize_15cython_optimize_6_zeros___pyx_scope_struct__loop_example, i64 0, i64 %idxprom
  %4 = load ptr, ptr %arrayidx, align 8, !tbaa !4
  store ptr %4, ptr %o, align 8, !tbaa !4
  %5 = load ptr, ptr %o, align 8, !tbaa !4
  call void @llvm.memset.p0.i64(ptr align 8 %5, i8 0, i64 64, i1 false)
  %6 = load ptr, ptr %o, align 8, !tbaa !4
  %7 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %call = call ptr @PyObject_Init(ptr noundef %6, ptr noundef %7)
  %8 = load ptr, ptr %o, align 8, !tbaa !4
  call void @PyObject_GC_Track(ptr noundef %8)
  br label %if.end18

if.else:                                          ; preds = %entry
  %9 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %tp_alloc = getelementptr inbounds %struct._typeobject, ptr %9, i32 0, i32 36
  %10 = load ptr, ptr %tp_alloc, align 8, !tbaa !94
  %11 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %call6 = call ptr %10(ptr noundef %11, i64 noundef 0)
  store ptr %call6, ptr %o, align 8, !tbaa !4
  %12 = load ptr, ptr %o, align 8, !tbaa !4
  %tobool7 = icmp ne ptr %12, null
  %lnot8 = xor i1 %tobool7, true
  %lnot10 = xor i1 %lnot8, true
  %lnot12 = xor i1 %lnot10, true
  %lnot.ext13 = zext i1 %lnot12 to i32
  %conv14 = sext i32 %lnot.ext13 to i64
  %expval15 = call i64 @llvm.expect.i64(i64 %conv14, i64 0)
  %tobool16 = icmp ne i64 %expval15, 0
  br i1 %tobool16, label %if.then17, label %if.end

if.then17:                                        ; preds = %if.else
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %if.else
  br label %if.end18

if.end18:                                         ; preds = %if.end, %if.then
  %13 = load ptr, ptr %o, align 8, !tbaa !4
  store ptr %13, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then17
  call void @llvm.lifetime.end.p0(i64 8, ptr %o) #9
  %14 = load ptr, ptr %retval, align 8
  ret ptr %14
}

declare ptr @PyObject_Init(ptr noundef, ptr noundef) #4

declare void @PyObject_GC_Track(ptr noundef) #4

; Function Attrs: nounwind uwtable
define internal void @__pyx_tp_dealloc___pyx_scope_struct____Pyx_CFunc_double____tuple____float____float____float____float____int___to_py(ptr noundef %o) #0 {
entry:
  %o.addr = alloca ptr, align 8
  store ptr %o, ptr %o.addr, align 8, !tbaa !4
  %0 = load i32, ptr @__pyx_freecount___pyx_scope_struct____Pyx_CFunc_double____tuple____float____float____float____float____int___to_py, align 4, !tbaa !10
  %cmp = icmp slt i32 %0, 8
  %conv = zext i1 %cmp to i32
  %1 = load ptr, ptr %o.addr, align 8, !tbaa !4
  %call = call ptr @Py_TYPE(ptr noundef %1)
  %tp_basicsize = getelementptr inbounds %struct._typeobject, ptr %call, i32 0, i32 2
  %2 = load i64, ptr %tp_basicsize, align 8, !tbaa !39
  %cmp1 = icmp eq i64 %2, 24
  %conv2 = zext i1 %cmp1 to i32
  %and = and i32 %conv, %conv2
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %o.addr, align 8, !tbaa !4
  %4 = load i32, ptr @__pyx_freecount___pyx_scope_struct____Pyx_CFunc_double____tuple____float____float____float____float____int___to_py, align 4, !tbaa !10
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr @__pyx_freecount___pyx_scope_struct____Pyx_CFunc_double____tuple____float____float____float____float____int___to_py, align 4, !tbaa !10
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [8 x ptr], ptr @__pyx_freelist___pyx_scope_struct____Pyx_CFunc_double____tuple____float____float____float____float____int___to_py, i64 0, i64 %idxprom
  store ptr %3, ptr %arrayidx, align 8, !tbaa !4
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %o.addr, align 8, !tbaa !4
  %call3 = call ptr @Py_TYPE(ptr noundef %5)
  %tp_free = getelementptr inbounds %struct._typeobject, ptr %call3, i32 0, i32 38
  %6 = load ptr, ptr %tp_free, align 8, !tbaa !93
  %7 = load ptr, ptr %o.addr, align 8, !tbaa !4
  call void %6(ptr noundef %7)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @__pyx_tp_new___pyx_scope_struct____Pyx_CFunc_double____tuple____float____float____float____float____int___to_py(ptr noundef %t, ptr noundef %a, ptr noundef %k) #0 {
entry:
  %retval = alloca ptr, align 8
  %t.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %k.addr = alloca ptr, align 8
  %o = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %t, ptr %t.addr, align 8, !tbaa !4
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store ptr %k, ptr %k.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %o) #9
  %0 = load i32, ptr @__pyx_freecount___pyx_scope_struct____Pyx_CFunc_double____tuple____float____float____float____float____int___to_py, align 4, !tbaa !10
  %cmp = icmp sgt i32 %0, 0
  %conv = zext i1 %cmp to i32
  %1 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %tp_basicsize = getelementptr inbounds %struct._typeobject, ptr %1, i32 0, i32 2
  %2 = load i64, ptr %tp_basicsize, align 8, !tbaa !39
  %cmp1 = icmp eq i64 %2, 24
  %conv2 = zext i1 %cmp1 to i32
  %and = and i32 %conv, %conv2
  %tobool = icmp ne i32 %and, 0
  %lnot = xor i1 %tobool, true
  %lnot3 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot3 to i32
  %conv4 = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv4, i64 1)
  %tobool5 = icmp ne i64 %expval, 0
  br i1 %tobool5, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i32, ptr @__pyx_freecount___pyx_scope_struct____Pyx_CFunc_double____tuple____float____float____float____float____int___to_py, align 4, !tbaa !10
  %dec = add nsw i32 %3, -1
  store i32 %dec, ptr @__pyx_freecount___pyx_scope_struct____Pyx_CFunc_double____tuple____float____float____float____float____int___to_py, align 4, !tbaa !10
  %idxprom = sext i32 %dec to i64
  %arrayidx = getelementptr inbounds [8 x ptr], ptr @__pyx_freelist___pyx_scope_struct____Pyx_CFunc_double____tuple____float____float____float____float____int___to_py, i64 0, i64 %idxprom
  %4 = load ptr, ptr %arrayidx, align 8, !tbaa !4
  store ptr %4, ptr %o, align 8, !tbaa !4
  %5 = load ptr, ptr %o, align 8, !tbaa !4
  call void @llvm.memset.p0.i64(ptr align 8 %5, i8 0, i64 24, i1 false)
  %6 = load ptr, ptr %o, align 8, !tbaa !4
  %7 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %call = call ptr @PyObject_Init(ptr noundef %6, ptr noundef %7)
  br label %if.end18

if.else:                                          ; preds = %entry
  %8 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %tp_alloc = getelementptr inbounds %struct._typeobject, ptr %8, i32 0, i32 36
  %9 = load ptr, ptr %tp_alloc, align 8, !tbaa !94
  %10 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %call6 = call ptr %9(ptr noundef %10, i64 noundef 0)
  store ptr %call6, ptr %o, align 8, !tbaa !4
  %11 = load ptr, ptr %o, align 8, !tbaa !4
  %tobool7 = icmp ne ptr %11, null
  %lnot8 = xor i1 %tobool7, true
  %lnot10 = xor i1 %lnot8, true
  %lnot12 = xor i1 %lnot10, true
  %lnot.ext13 = zext i1 %lnot12 to i32
  %conv14 = sext i32 %lnot.ext13 to i64
  %expval15 = call i64 @llvm.expect.i64(i64 %conv14, i64 0)
  %tobool16 = icmp ne i64 %expval15, 0
  br i1 %tobool16, label %if.then17, label %if.end

if.then17:                                        ; preds = %if.else
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %if.else
  br label %if.end18

if.end18:                                         ; preds = %if.end, %if.then
  %12 = load ptr, ptr %o, align 8, !tbaa !4
  store ptr %12, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then17
  call void @llvm.lifetime.end.p0(i64 8, ptr %o) #9
  %13 = load ptr, ptr %retval, align 8
  ret ptr %13
}

; Function Attrs: nounwind uwtable
define internal ptr @__Pyx_CyFunction_New(ptr noundef %ml, i32 noundef %flags, ptr noundef %qualname, ptr noundef %closure, ptr noundef %module, ptr noundef %globals, ptr noundef %code) #0 {
entry:
  %ml.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %qualname.addr = alloca ptr, align 8
  %closure.addr = alloca ptr, align 8
  %module.addr = alloca ptr, align 8
  %globals.addr = alloca ptr, align 8
  %code.addr = alloca ptr, align 8
  %op = alloca ptr, align 8
  store ptr %ml, ptr %ml.addr, align 8, !tbaa !4
  store i32 %flags, ptr %flags.addr, align 4, !tbaa !10
  store ptr %qualname, ptr %qualname.addr, align 8, !tbaa !4
  store ptr %closure, ptr %closure.addr, align 8, !tbaa !4
  store ptr %module, ptr %module.addr, align 8, !tbaa !4
  store ptr %globals, ptr %globals.addr, align 8, !tbaa !4
  store ptr %code, ptr %code.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %op) #9
  %0 = load ptr, ptr @__pyx_CyFunctionType, align 8, !tbaa !4
  %call = call ptr @_PyObject_GC_New(ptr noundef %0)
  %1 = load ptr, ptr %ml.addr, align 8, !tbaa !4
  %2 = load i32, ptr %flags.addr, align 4, !tbaa !10
  %3 = load ptr, ptr %qualname.addr, align 8, !tbaa !4
  %4 = load ptr, ptr %closure.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %module.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %globals.addr, align 8, !tbaa !4
  %7 = load ptr, ptr %code.addr, align 8, !tbaa !4
  %call1 = call ptr @__Pyx_CyFunction_Init(ptr noundef %call, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
  store ptr %call1, ptr %op, align 8, !tbaa !4
  %8 = load ptr, ptr %op, align 8, !tbaa !4
  %tobool = icmp ne ptr %8, null
  %lnot = xor i1 %tobool, true
  %lnot2 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot2 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1)
  %tobool3 = icmp ne i64 %expval, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load ptr, ptr %op, align 8, !tbaa !4
  call void @PyObject_GC_Track(ptr noundef %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load ptr, ptr %op, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %op) #9
  ret ptr %10
}

; Function Attrs: nounwind uwtable
define internal ptr @__Pyx_CyFunction_Init(ptr noundef %op, ptr noundef %ml, i32 noundef %flags, ptr noundef %qualname, ptr noundef %closure, ptr noundef %module, ptr noundef %globals, ptr noundef %code) #0 {
entry:
  %retval = alloca ptr, align 8
  %op.addr = alloca ptr, align 8
  %ml.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %qualname.addr = alloca ptr, align 8
  %closure.addr = alloca ptr, align 8
  %module.addr = alloca ptr, align 8
  %globals.addr = alloca ptr, align 8
  %code.addr = alloca ptr, align 8
  store ptr %op, ptr %op.addr, align 8, !tbaa !4
  store ptr %ml, ptr %ml.addr, align 8, !tbaa !4
  store i32 %flags, ptr %flags.addr, align 4, !tbaa !10
  store ptr %qualname, ptr %qualname.addr, align 8, !tbaa !4
  store ptr %closure, ptr %closure.addr, align 8, !tbaa !4
  store ptr %module, ptr %module.addr, align 8, !tbaa !4
  store ptr %globals, ptr %globals.addr, align 8, !tbaa !4
  store ptr %code, ptr %code.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %op.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %0, null
  %lnot = xor i1 %cmp, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !tbaa !10
  %2 = load ptr, ptr %op.addr, align 8, !tbaa !4
  %flags2 = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %2, i32 0, i32 12
  store i32 %1, ptr %flags2, align 8, !tbaa !45
  %3 = load ptr, ptr %op.addr, align 8, !tbaa !4
  %func = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %3, i32 0, i32 0
  %m_weakreflist = getelementptr inbounds %struct.PyCFunctionObject, ptr %func, i32 0, i32 4
  store ptr null, ptr %m_weakreflist, align 8, !tbaa !59
  %4 = load ptr, ptr %ml.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %op.addr, align 8, !tbaa !4
  %func3 = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %5, i32 0, i32 0
  %m_ml = getelementptr inbounds %struct.PyCFunctionObject, ptr %func3, i32 0, i32 1
  store ptr %4, ptr %m_ml, align 8, !tbaa !67
  %6 = load ptr, ptr %op.addr, align 8, !tbaa !4
  %7 = load ptr, ptr %op.addr, align 8, !tbaa !4
  %func4 = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %7, i32 0, i32 0
  %m_self = getelementptr inbounds %struct.PyCFunctionObject, ptr %func4, i32 0, i32 2
  store ptr %6, ptr %m_self, align 8, !tbaa !95
  %8 = load ptr, ptr %closure.addr, align 8, !tbaa !4
  call void @Py_XINCREF(ptr noundef %8)
  %9 = load ptr, ptr %closure.addr, align 8, !tbaa !4
  %10 = load ptr, ptr %op.addr, align 8, !tbaa !4
  %func_closure = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %10, i32 0, i32 7
  store ptr %9, ptr %func_closure, align 8, !tbaa !46
  %11 = load ptr, ptr %module.addr, align 8, !tbaa !4
  call void @Py_XINCREF(ptr noundef %11)
  %12 = load ptr, ptr %module.addr, align 8, !tbaa !4
  %13 = load ptr, ptr %op.addr, align 8, !tbaa !4
  %func5 = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %13, i32 0, i32 0
  %m_module = getelementptr inbounds %struct.PyCFunctionObject, ptr %func5, i32 0, i32 3
  store ptr %12, ptr %m_module, align 8, !tbaa !47
  %14 = load ptr, ptr %op.addr, align 8, !tbaa !4
  %func_dict = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %14, i32 0, i32 1
  store ptr null, ptr %func_dict, align 8, !tbaa !48
  %15 = load ptr, ptr %op.addr, align 8, !tbaa !4
  %func_name = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %15, i32 0, i32 2
  store ptr null, ptr %func_name, align 8, !tbaa !49
  %16 = load ptr, ptr %qualname.addr, align 8, !tbaa !4
  call void @Py_INCREF(ptr noundef %16)
  %17 = load ptr, ptr %qualname.addr, align 8, !tbaa !4
  %18 = load ptr, ptr %op.addr, align 8, !tbaa !4
  %func_qualname = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %18, i32 0, i32 3
  store ptr %17, ptr %func_qualname, align 8, !tbaa !42
  %19 = load ptr, ptr %op.addr, align 8, !tbaa !4
  %func_doc = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %19, i32 0, i32 4
  store ptr null, ptr %func_doc, align 8, !tbaa !50
  %20 = load ptr, ptr %op.addr, align 8, !tbaa !4
  %func_classobj = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %20, i32 0, i32 8
  store ptr null, ptr %func_classobj, align 8, !tbaa !53
  %21 = load ptr, ptr %globals.addr, align 8, !tbaa !4
  %22 = load ptr, ptr %op.addr, align 8, !tbaa !4
  %func_globals = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %22, i32 0, i32 5
  store ptr %21, ptr %func_globals, align 8, !tbaa !51
  %23 = load ptr, ptr %op.addr, align 8, !tbaa !4
  %func_globals6 = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %23, i32 0, i32 5
  %24 = load ptr, ptr %func_globals6, align 8, !tbaa !51
  call void @Py_INCREF(ptr noundef %24)
  %25 = load ptr, ptr %code.addr, align 8, !tbaa !4
  call void @Py_XINCREF(ptr noundef %25)
  %26 = load ptr, ptr %code.addr, align 8, !tbaa !4
  %27 = load ptr, ptr %op.addr, align 8, !tbaa !4
  %func_code = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %27, i32 0, i32 6
  store ptr %26, ptr %func_code, align 8, !tbaa !52
  %28 = load ptr, ptr %op.addr, align 8, !tbaa !4
  %defaults_pyobjects = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %28, i32 0, i32 10
  store i32 0, ptr %defaults_pyobjects, align 8, !tbaa !57
  %29 = load ptr, ptr %op.addr, align 8, !tbaa !4
  %defaults_size = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %29, i32 0, i32 11
  store i64 0, ptr %defaults_size, align 8, !tbaa !96
  %30 = load ptr, ptr %op.addr, align 8, !tbaa !4
  %defaults = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %30, i32 0, i32 9
  store ptr null, ptr %defaults, align 8, !tbaa !56
  %31 = load ptr, ptr %op.addr, align 8, !tbaa !4
  %defaults_tuple = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %31, i32 0, i32 13
  store ptr null, ptr %defaults_tuple, align 8, !tbaa !54
  %32 = load ptr, ptr %op.addr, align 8, !tbaa !4
  %defaults_kwdict = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %32, i32 0, i32 14
  store ptr null, ptr %defaults_kwdict, align 8, !tbaa !55
  %33 = load ptr, ptr %op.addr, align 8, !tbaa !4
  %defaults_getter = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %33, i32 0, i32 15
  store ptr null, ptr %defaults_getter, align 8, !tbaa !69
  %34 = load ptr, ptr %op.addr, align 8, !tbaa !4
  %func_annotations = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %34, i32 0, i32 16
  store ptr null, ptr %func_annotations, align 8, !tbaa !58
  %35 = load ptr, ptr %op.addr, align 8, !tbaa !4
  store ptr %35, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %36 = load ptr, ptr %retval, align 8
  ret ptr %36
}

declare ptr @_PyObject_GC_New(ptr noundef) #4

; Function Attrs: nounwind uwtable
define internal ptr @__pyx_pw_11cfunc_dot_to_py_78__Pyx_CFunc_double____tuple____float____float____float____float____int___to_py_1wrap(ptr noundef %__pyx_self, ptr noundef %__pyx_args, ptr noundef %__pyx_kwds) #0 {
entry:
  %retval = alloca ptr, align 8
  %__pyx_self.addr = alloca ptr, align 8
  %__pyx_args.addr = alloca ptr, align 8
  %__pyx_kwds.addr = alloca ptr, align 8
  %__pyx_v_args = alloca ptr, align 8
  %__pyx_v_xa = alloca float, align 4
  %__pyx_v_xb = alloca float, align 4
  %__pyx_v_xtol = alloca float, align 4
  %__pyx_v_rtol = alloca float, align 4
  %__pyx_v_mitr = alloca i32, align 4
  %__pyx_lineno = alloca i32, align 4
  %__pyx_filename = alloca ptr, align 8
  %__pyx_clineno = alloca i32, align 4
  %__pyx_r = alloca ptr, align 8
  %values = alloca [6 x ptr], align 16
  %kw_args = alloca i64, align 8
  %pos_args = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %__pyx_self, ptr %__pyx_self.addr, align 8, !tbaa !4
  store ptr %__pyx_args, ptr %__pyx_args.addr, align 8, !tbaa !4
  store ptr %__pyx_kwds, ptr %__pyx_kwds.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pyx_v_args) #9
  store ptr null, ptr %__pyx_v_args, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %__pyx_v_xa) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %__pyx_v_xb) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %__pyx_v_xtol) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %__pyx_v_rtol) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %__pyx_v_mitr) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %__pyx_lineno) #9
  store i32 0, ptr %__pyx_lineno, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pyx_filename) #9
  store ptr null, ptr %__pyx_filename, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %__pyx_clineno) #9
  store i32 0, ptr %__pyx_clineno, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pyx_r) #9
  store ptr null, ptr %__pyx_r, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 48, ptr %values) #9
  call void @llvm.memset.p0.i64(ptr align 16 %values, i8 0, i64 48, i1 false)
  %0 = load ptr, ptr %__pyx_kwds.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  %lnot = xor i1 %tobool, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool2 = icmp ne i64 %expval, 0
  br i1 %tobool2, label %if.then, label %if.else147

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %kw_args) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %pos_args) #9
  %1 = load ptr, ptr %__pyx_args.addr, align 8, !tbaa !4
  %call = call i64 @PyTuple_GET_SIZE(ptr noundef %1)
  store i64 %call, ptr %pos_args, align 8, !tbaa !24
  %2 = load i64, ptr %pos_args, align 8, !tbaa !24
  switch i64 %2, label %sw.default [
    i64 6, label %sw.bb
    i64 5, label %sw.bb4
    i64 4, label %sw.bb8
    i64 3, label %sw.bb12
    i64 2, label %sw.bb16
    i64 1, label %sw.bb20
    i64 0, label %sw.epilog
  ]

sw.bb:                                            ; preds = %if.then
  %3 = load ptr, ptr %__pyx_args.addr, align 8, !tbaa !4
  %ob_item = getelementptr inbounds %struct.PyTupleObject, ptr %3, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x ptr], ptr %ob_item, i64 0, i64 5
  %4 = load ptr, ptr %arrayidx, align 8, !tbaa !4
  %arrayidx3 = getelementptr inbounds [6 x ptr], ptr %values, i64 0, i64 5
  store ptr %4, ptr %arrayidx3, align 8, !tbaa !4
  br label %sw.bb4

sw.bb4:                                           ; preds = %if.then, %sw.bb
  %5 = load ptr, ptr %__pyx_args.addr, align 8, !tbaa !4
  %ob_item5 = getelementptr inbounds %struct.PyTupleObject, ptr %5, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x ptr], ptr %ob_item5, i64 0, i64 4
  %6 = load ptr, ptr %arrayidx6, align 8, !tbaa !4
  %arrayidx7 = getelementptr inbounds [6 x ptr], ptr %values, i64 0, i64 4
  store ptr %6, ptr %arrayidx7, align 16, !tbaa !4
  br label %sw.bb8

sw.bb8:                                           ; preds = %if.then, %sw.bb4
  %7 = load ptr, ptr %__pyx_args.addr, align 8, !tbaa !4
  %ob_item9 = getelementptr inbounds %struct.PyTupleObject, ptr %7, i32 0, i32 1
  %arrayidx10 = getelementptr inbounds [1 x ptr], ptr %ob_item9, i64 0, i64 3
  %8 = load ptr, ptr %arrayidx10, align 8, !tbaa !4
  %arrayidx11 = getelementptr inbounds [6 x ptr], ptr %values, i64 0, i64 3
  store ptr %8, ptr %arrayidx11, align 8, !tbaa !4
  br label %sw.bb12

sw.bb12:                                          ; preds = %if.then, %sw.bb8
  %9 = load ptr, ptr %__pyx_args.addr, align 8, !tbaa !4
  %ob_item13 = getelementptr inbounds %struct.PyTupleObject, ptr %9, i32 0, i32 1
  %arrayidx14 = getelementptr inbounds [1 x ptr], ptr %ob_item13, i64 0, i64 2
  %10 = load ptr, ptr %arrayidx14, align 8, !tbaa !4
  %arrayidx15 = getelementptr inbounds [6 x ptr], ptr %values, i64 0, i64 2
  store ptr %10, ptr %arrayidx15, align 16, !tbaa !4
  br label %sw.bb16

sw.bb16:                                          ; preds = %if.then, %sw.bb12
  %11 = load ptr, ptr %__pyx_args.addr, align 8, !tbaa !4
  %ob_item17 = getelementptr inbounds %struct.PyTupleObject, ptr %11, i32 0, i32 1
  %arrayidx18 = getelementptr inbounds [1 x ptr], ptr %ob_item17, i64 0, i64 1
  %12 = load ptr, ptr %arrayidx18, align 8, !tbaa !4
  %arrayidx19 = getelementptr inbounds [6 x ptr], ptr %values, i64 0, i64 1
  store ptr %12, ptr %arrayidx19, align 8, !tbaa !4
  br label %sw.bb20

sw.bb20:                                          ; preds = %if.then, %sw.bb16
  %13 = load ptr, ptr %__pyx_args.addr, align 8, !tbaa !4
  %ob_item21 = getelementptr inbounds %struct.PyTupleObject, ptr %13, i32 0, i32 1
  %arrayidx22 = getelementptr inbounds [1 x ptr], ptr %ob_item21, i64 0, i64 0
  %14 = load ptr, ptr %arrayidx22, align 8, !tbaa !4
  %arrayidx23 = getelementptr inbounds [6 x ptr], ptr %values, i64 0, i64 0
  store ptr %14, ptr %arrayidx23, align 16, !tbaa !4
  br label %sw.epilog

sw.default:                                       ; preds = %if.then
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb20, %if.then
  %15 = load ptr, ptr %__pyx_kwds.addr, align 8, !tbaa !4
  %call24 = call i64 @PyDict_Size(ptr noundef %15)
  store i64 %call24, ptr %kw_args, align 8, !tbaa !24
  %16 = load i64, ptr %pos_args, align 8, !tbaa !24
  switch i64 %16, label %sw.epilog122 [
    i64 0, label %sw.bb25
    i64 1, label %sw.bb37
    i64 2, label %sw.bb54
    i64 3, label %sw.bb71
    i64 4, label %sw.bb88
    i64 5, label %sw.bb105
  ]

sw.bb25:                                          ; preds = %sw.epilog
  %17 = load ptr, ptr %__pyx_kwds.addr, align 8, !tbaa !4
  %18 = load ptr, ptr @__pyx_n_s_args, align 8, !tbaa !4
  %19 = load ptr, ptr @__pyx_n_s_args, align 8, !tbaa !4
  %hash = getelementptr inbounds %struct.PyASCIIObject, ptr %19, i32 0, i32 2
  %20 = load i64, ptr %hash, align 8, !tbaa !97
  %call26 = call ptr @_PyDict_GetItem_KnownHash(ptr noundef %17, ptr noundef %18, i64 noundef %20)
  %arrayidx27 = getelementptr inbounds [6 x ptr], ptr %values, i64 0, i64 0
  store ptr %call26, ptr %arrayidx27, align 16, !tbaa !4
  %cmp = icmp ne ptr %call26, null
  %lnot29 = xor i1 %cmp, true
  %lnot31 = xor i1 %lnot29, true
  %lnot.ext32 = zext i1 %lnot31 to i32
  %conv33 = sext i32 %lnot.ext32 to i64
  %expval34 = call i64 @llvm.expect.i64(i64 %conv33, i64 1)
  %tobool35 = icmp ne i64 %expval34, 0
  br i1 %tobool35, label %if.then36, label %if.else

if.then36:                                        ; preds = %sw.bb25
  %21 = load i64, ptr %kw_args, align 8, !tbaa !24
  %dec = add nsw i64 %21, -1
  store i64 %dec, ptr %kw_args, align 8, !tbaa !24
  br label %if.end

if.else:                                          ; preds = %sw.bb25
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then36
  br label %sw.bb37

sw.bb37:                                          ; preds = %sw.epilog, %if.end
  %22 = load ptr, ptr %__pyx_kwds.addr, align 8, !tbaa !4
  %23 = load ptr, ptr @__pyx_n_s_xa, align 8, !tbaa !4
  %24 = load ptr, ptr @__pyx_n_s_xa, align 8, !tbaa !4
  %hash38 = getelementptr inbounds %struct.PyASCIIObject, ptr %24, i32 0, i32 2
  %25 = load i64, ptr %hash38, align 8, !tbaa !97
  %call39 = call ptr @_PyDict_GetItem_KnownHash(ptr noundef %22, ptr noundef %23, i64 noundef %25)
  %arrayidx40 = getelementptr inbounds [6 x ptr], ptr %values, i64 0, i64 1
  store ptr %call39, ptr %arrayidx40, align 8, !tbaa !4
  %cmp41 = icmp ne ptr %call39, null
  %lnot43 = xor i1 %cmp41, true
  %lnot45 = xor i1 %lnot43, true
  %lnot.ext46 = zext i1 %lnot45 to i32
  %conv47 = sext i32 %lnot.ext46 to i64
  %expval48 = call i64 @llvm.expect.i64(i64 %conv47, i64 1)
  %tobool49 = icmp ne i64 %expval48, 0
  br i1 %tobool49, label %if.then50, label %if.else52

if.then50:                                        ; preds = %sw.bb37
  %26 = load i64, ptr %kw_args, align 8, !tbaa !24
  %dec51 = add nsw i64 %26, -1
  store i64 %dec51, ptr %kw_args, align 8, !tbaa !24
  br label %if.end53

if.else52:                                        ; preds = %sw.bb37
  call void @__Pyx_RaiseArgtupleInvalid(ptr noundef @.str.83, i32 noundef 1, i64 noundef 6, i64 noundef 6, i64 noundef 1)
  %27 = load ptr, ptr getelementptr inbounds ([2 x ptr], ptr @__pyx_f, i64 0, i64 1), align 8, !tbaa !4
  store ptr %27, ptr %__pyx_filename, align 8, !tbaa !4
  %28 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 65, ptr %__pyx_lineno, align 4, !tbaa !10
  %29 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 3233, ptr %__pyx_clineno, align 4, !tbaa !10
  %30 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end53:                                         ; preds = %if.then50
  br label %sw.bb54

sw.bb54:                                          ; preds = %sw.epilog, %if.end53
  %31 = load ptr, ptr %__pyx_kwds.addr, align 8, !tbaa !4
  %32 = load ptr, ptr @__pyx_n_s_xb, align 8, !tbaa !4
  %33 = load ptr, ptr @__pyx_n_s_xb, align 8, !tbaa !4
  %hash55 = getelementptr inbounds %struct.PyASCIIObject, ptr %33, i32 0, i32 2
  %34 = load i64, ptr %hash55, align 8, !tbaa !97
  %call56 = call ptr @_PyDict_GetItem_KnownHash(ptr noundef %31, ptr noundef %32, i64 noundef %34)
  %arrayidx57 = getelementptr inbounds [6 x ptr], ptr %values, i64 0, i64 2
  store ptr %call56, ptr %arrayidx57, align 16, !tbaa !4
  %cmp58 = icmp ne ptr %call56, null
  %lnot60 = xor i1 %cmp58, true
  %lnot62 = xor i1 %lnot60, true
  %lnot.ext63 = zext i1 %lnot62 to i32
  %conv64 = sext i32 %lnot.ext63 to i64
  %expval65 = call i64 @llvm.expect.i64(i64 %conv64, i64 1)
  %tobool66 = icmp ne i64 %expval65, 0
  br i1 %tobool66, label %if.then67, label %if.else69

if.then67:                                        ; preds = %sw.bb54
  %35 = load i64, ptr %kw_args, align 8, !tbaa !24
  %dec68 = add nsw i64 %35, -1
  store i64 %dec68, ptr %kw_args, align 8, !tbaa !24
  br label %if.end70

if.else69:                                        ; preds = %sw.bb54
  call void @__Pyx_RaiseArgtupleInvalid(ptr noundef @.str.83, i32 noundef 1, i64 noundef 6, i64 noundef 6, i64 noundef 2)
  %36 = load ptr, ptr getelementptr inbounds ([2 x ptr], ptr @__pyx_f, i64 0, i64 1), align 8, !tbaa !4
  store ptr %36, ptr %__pyx_filename, align 8, !tbaa !4
  %37 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 65, ptr %__pyx_lineno, align 4, !tbaa !10
  %38 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 3239, ptr %__pyx_clineno, align 4, !tbaa !10
  %39 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end70:                                         ; preds = %if.then67
  br label %sw.bb71

sw.bb71:                                          ; preds = %sw.epilog, %if.end70
  %40 = load ptr, ptr %__pyx_kwds.addr, align 8, !tbaa !4
  %41 = load ptr, ptr @__pyx_n_s_xtol, align 8, !tbaa !4
  %42 = load ptr, ptr @__pyx_n_s_xtol, align 8, !tbaa !4
  %hash72 = getelementptr inbounds %struct.PyASCIIObject, ptr %42, i32 0, i32 2
  %43 = load i64, ptr %hash72, align 8, !tbaa !97
  %call73 = call ptr @_PyDict_GetItem_KnownHash(ptr noundef %40, ptr noundef %41, i64 noundef %43)
  %arrayidx74 = getelementptr inbounds [6 x ptr], ptr %values, i64 0, i64 3
  store ptr %call73, ptr %arrayidx74, align 8, !tbaa !4
  %cmp75 = icmp ne ptr %call73, null
  %lnot77 = xor i1 %cmp75, true
  %lnot79 = xor i1 %lnot77, true
  %lnot.ext80 = zext i1 %lnot79 to i32
  %conv81 = sext i32 %lnot.ext80 to i64
  %expval82 = call i64 @llvm.expect.i64(i64 %conv81, i64 1)
  %tobool83 = icmp ne i64 %expval82, 0
  br i1 %tobool83, label %if.then84, label %if.else86

if.then84:                                        ; preds = %sw.bb71
  %44 = load i64, ptr %kw_args, align 8, !tbaa !24
  %dec85 = add nsw i64 %44, -1
  store i64 %dec85, ptr %kw_args, align 8, !tbaa !24
  br label %if.end87

if.else86:                                        ; preds = %sw.bb71
  call void @__Pyx_RaiseArgtupleInvalid(ptr noundef @.str.83, i32 noundef 1, i64 noundef 6, i64 noundef 6, i64 noundef 3)
  %45 = load ptr, ptr getelementptr inbounds ([2 x ptr], ptr @__pyx_f, i64 0, i64 1), align 8, !tbaa !4
  store ptr %45, ptr %__pyx_filename, align 8, !tbaa !4
  %46 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 65, ptr %__pyx_lineno, align 4, !tbaa !10
  %47 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 3245, ptr %__pyx_clineno, align 4, !tbaa !10
  %48 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end87:                                         ; preds = %if.then84
  br label %sw.bb88

sw.bb88:                                          ; preds = %sw.epilog, %if.end87
  %49 = load ptr, ptr %__pyx_kwds.addr, align 8, !tbaa !4
  %50 = load ptr, ptr @__pyx_n_s_rtol, align 8, !tbaa !4
  %51 = load ptr, ptr @__pyx_n_s_rtol, align 8, !tbaa !4
  %hash89 = getelementptr inbounds %struct.PyASCIIObject, ptr %51, i32 0, i32 2
  %52 = load i64, ptr %hash89, align 8, !tbaa !97
  %call90 = call ptr @_PyDict_GetItem_KnownHash(ptr noundef %49, ptr noundef %50, i64 noundef %52)
  %arrayidx91 = getelementptr inbounds [6 x ptr], ptr %values, i64 0, i64 4
  store ptr %call90, ptr %arrayidx91, align 16, !tbaa !4
  %cmp92 = icmp ne ptr %call90, null
  %lnot94 = xor i1 %cmp92, true
  %lnot96 = xor i1 %lnot94, true
  %lnot.ext97 = zext i1 %lnot96 to i32
  %conv98 = sext i32 %lnot.ext97 to i64
  %expval99 = call i64 @llvm.expect.i64(i64 %conv98, i64 1)
  %tobool100 = icmp ne i64 %expval99, 0
  br i1 %tobool100, label %if.then101, label %if.else103

if.then101:                                       ; preds = %sw.bb88
  %53 = load i64, ptr %kw_args, align 8, !tbaa !24
  %dec102 = add nsw i64 %53, -1
  store i64 %dec102, ptr %kw_args, align 8, !tbaa !24
  br label %if.end104

if.else103:                                       ; preds = %sw.bb88
  call void @__Pyx_RaiseArgtupleInvalid(ptr noundef @.str.83, i32 noundef 1, i64 noundef 6, i64 noundef 6, i64 noundef 4)
  %54 = load ptr, ptr getelementptr inbounds ([2 x ptr], ptr @__pyx_f, i64 0, i64 1), align 8, !tbaa !4
  store ptr %54, ptr %__pyx_filename, align 8, !tbaa !4
  %55 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 65, ptr %__pyx_lineno, align 4, !tbaa !10
  %56 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 3251, ptr %__pyx_clineno, align 4, !tbaa !10
  %57 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end104:                                        ; preds = %if.then101
  br label %sw.bb105

sw.bb105:                                         ; preds = %sw.epilog, %if.end104
  %58 = load ptr, ptr %__pyx_kwds.addr, align 8, !tbaa !4
  %59 = load ptr, ptr @__pyx_n_s_mitr, align 8, !tbaa !4
  %60 = load ptr, ptr @__pyx_n_s_mitr, align 8, !tbaa !4
  %hash106 = getelementptr inbounds %struct.PyASCIIObject, ptr %60, i32 0, i32 2
  %61 = load i64, ptr %hash106, align 8, !tbaa !97
  %call107 = call ptr @_PyDict_GetItem_KnownHash(ptr noundef %58, ptr noundef %59, i64 noundef %61)
  %arrayidx108 = getelementptr inbounds [6 x ptr], ptr %values, i64 0, i64 5
  store ptr %call107, ptr %arrayidx108, align 8, !tbaa !4
  %cmp109 = icmp ne ptr %call107, null
  %lnot111 = xor i1 %cmp109, true
  %lnot113 = xor i1 %lnot111, true
  %lnot.ext114 = zext i1 %lnot113 to i32
  %conv115 = sext i32 %lnot.ext114 to i64
  %expval116 = call i64 @llvm.expect.i64(i64 %conv115, i64 1)
  %tobool117 = icmp ne i64 %expval116, 0
  br i1 %tobool117, label %if.then118, label %if.else120

if.then118:                                       ; preds = %sw.bb105
  %62 = load i64, ptr %kw_args, align 8, !tbaa !24
  %dec119 = add nsw i64 %62, -1
  store i64 %dec119, ptr %kw_args, align 8, !tbaa !24
  br label %if.end121

if.else120:                                       ; preds = %sw.bb105
  call void @__Pyx_RaiseArgtupleInvalid(ptr noundef @.str.83, i32 noundef 1, i64 noundef 6, i64 noundef 6, i64 noundef 5)
  %63 = load ptr, ptr getelementptr inbounds ([2 x ptr], ptr @__pyx_f, i64 0, i64 1), align 8, !tbaa !4
  store ptr %63, ptr %__pyx_filename, align 8, !tbaa !4
  %64 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 65, ptr %__pyx_lineno, align 4, !tbaa !10
  %65 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 3257, ptr %__pyx_clineno, align 4, !tbaa !10
  %66 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end121:                                        ; preds = %if.then118
  br label %sw.epilog122

sw.epilog122:                                     ; preds = %if.end121, %sw.epilog
  %67 = load i64, ptr %kw_args, align 8, !tbaa !24
  %cmp123 = icmp sgt i64 %67, 0
  %lnot125 = xor i1 %cmp123, true
  %lnot127 = xor i1 %lnot125, true
  %lnot.ext128 = zext i1 %lnot127 to i32
  %conv129 = sext i32 %lnot.ext128 to i64
  %expval130 = call i64 @llvm.expect.i64(i64 %conv129, i64 0)
  %tobool131 = icmp ne i64 %expval130, 0
  br i1 %tobool131, label %if.then132, label %if.end145

if.then132:                                       ; preds = %sw.epilog122
  %68 = load ptr, ptr %__pyx_kwds.addr, align 8, !tbaa !4
  %arraydecay = getelementptr inbounds [6 x ptr], ptr %values, i64 0, i64 0
  %69 = load i64, ptr %pos_args, align 8, !tbaa !24
  %call133 = call i32 @__Pyx_ParseOptionalKeywords(ptr noundef %68, ptr noundef @__pyx_pw_11cfunc_dot_to_py_78__Pyx_CFunc_double____tuple____float____float____float____float____int___to_py_1wrap.__pyx_pyargnames, ptr noundef null, ptr noundef %arraydecay, i64 noundef %69, ptr noundef @.str.83)
  %cmp134 = icmp slt i32 %call133, 0
  %lnot136 = xor i1 %cmp134, true
  %lnot138 = xor i1 %lnot136, true
  %lnot.ext139 = zext i1 %lnot138 to i32
  %conv140 = sext i32 %lnot.ext139 to i64
  %expval141 = call i64 @llvm.expect.i64(i64 %conv140, i64 0)
  %tobool142 = icmp ne i64 %expval141, 0
  br i1 %tobool142, label %if.then143, label %if.end144

if.then143:                                       ; preds = %if.then132
  %70 = load ptr, ptr getelementptr inbounds ([2 x ptr], ptr @__pyx_f, i64 0, i64 1), align 8, !tbaa !4
  store ptr %70, ptr %__pyx_filename, align 8, !tbaa !4
  %71 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 65, ptr %__pyx_lineno, align 4, !tbaa !10
  %72 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 3261, ptr %__pyx_clineno, align 4, !tbaa !10
  %73 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end144:                                        ; preds = %if.then132
  br label %if.end145

if.end145:                                        ; preds = %if.end144, %sw.epilog122
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then143, %if.else120, %if.else103, %if.else86, %if.else69, %if.else52, %if.else, %sw.default, %if.end145
  call void @llvm.lifetime.end.p0(i64 8, ptr %pos_args) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %kw_args) #9
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup292 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end172

if.else147:                                       ; preds = %entry
  %74 = load ptr, ptr %__pyx_args.addr, align 8, !tbaa !4
  %call148 = call i64 @PyTuple_GET_SIZE(ptr noundef %74)
  %cmp149 = icmp ne i64 %call148, 6
  br i1 %cmp149, label %if.then151, label %if.else152

if.then151:                                       ; preds = %if.else147
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup292

if.else152:                                       ; preds = %if.else147
  %75 = load ptr, ptr %__pyx_args.addr, align 8, !tbaa !4
  %ob_item153 = getelementptr inbounds %struct.PyTupleObject, ptr %75, i32 0, i32 1
  %arrayidx154 = getelementptr inbounds [1 x ptr], ptr %ob_item153, i64 0, i64 0
  %76 = load ptr, ptr %arrayidx154, align 8, !tbaa !4
  %arrayidx155 = getelementptr inbounds [6 x ptr], ptr %values, i64 0, i64 0
  store ptr %76, ptr %arrayidx155, align 16, !tbaa !4
  %77 = load ptr, ptr %__pyx_args.addr, align 8, !tbaa !4
  %ob_item156 = getelementptr inbounds %struct.PyTupleObject, ptr %77, i32 0, i32 1
  %arrayidx157 = getelementptr inbounds [1 x ptr], ptr %ob_item156, i64 0, i64 1
  %78 = load ptr, ptr %arrayidx157, align 8, !tbaa !4
  %arrayidx158 = getelementptr inbounds [6 x ptr], ptr %values, i64 0, i64 1
  store ptr %78, ptr %arrayidx158, align 8, !tbaa !4
  %79 = load ptr, ptr %__pyx_args.addr, align 8, !tbaa !4
  %ob_item159 = getelementptr inbounds %struct.PyTupleObject, ptr %79, i32 0, i32 1
  %arrayidx160 = getelementptr inbounds [1 x ptr], ptr %ob_item159, i64 0, i64 2
  %80 = load ptr, ptr %arrayidx160, align 8, !tbaa !4
  %arrayidx161 = getelementptr inbounds [6 x ptr], ptr %values, i64 0, i64 2
  store ptr %80, ptr %arrayidx161, align 16, !tbaa !4
  %81 = load ptr, ptr %__pyx_args.addr, align 8, !tbaa !4
  %ob_item162 = getelementptr inbounds %struct.PyTupleObject, ptr %81, i32 0, i32 1
  %arrayidx163 = getelementptr inbounds [1 x ptr], ptr %ob_item162, i64 0, i64 3
  %82 = load ptr, ptr %arrayidx163, align 8, !tbaa !4
  %arrayidx164 = getelementptr inbounds [6 x ptr], ptr %values, i64 0, i64 3
  store ptr %82, ptr %arrayidx164, align 8, !tbaa !4
  %83 = load ptr, ptr %__pyx_args.addr, align 8, !tbaa !4
  %ob_item165 = getelementptr inbounds %struct.PyTupleObject, ptr %83, i32 0, i32 1
  %arrayidx166 = getelementptr inbounds [1 x ptr], ptr %ob_item165, i64 0, i64 4
  %84 = load ptr, ptr %arrayidx166, align 8, !tbaa !4
  %arrayidx167 = getelementptr inbounds [6 x ptr], ptr %values, i64 0, i64 4
  store ptr %84, ptr %arrayidx167, align 16, !tbaa !4
  %85 = load ptr, ptr %__pyx_args.addr, align 8, !tbaa !4
  %ob_item168 = getelementptr inbounds %struct.PyTupleObject, ptr %85, i32 0, i32 1
  %arrayidx169 = getelementptr inbounds [1 x ptr], ptr %ob_item168, i64 0, i64 5
  %86 = load ptr, ptr %arrayidx169, align 8, !tbaa !4
  %arrayidx170 = getelementptr inbounds [6 x ptr], ptr %values, i64 0, i64 5
  store ptr %86, ptr %arrayidx170, align 8, !tbaa !4
  br label %if.end171

if.end171:                                        ; preds = %if.else152
  br label %if.end172

if.end172:                                        ; preds = %if.end171, %cleanup.cont
  %arrayidx173 = getelementptr inbounds [6 x ptr], ptr %values, i64 0, i64 0
  %87 = load ptr, ptr %arrayidx173, align 16, !tbaa !4
  store ptr %87, ptr %__pyx_v_args, align 8, !tbaa !4
  %arrayidx174 = getelementptr inbounds [6 x ptr], ptr %values, i64 0, i64 1
  %88 = load ptr, ptr %arrayidx174, align 8, !tbaa !4
  %call175 = call i32 @Py_IS_TYPE(ptr noundef %88, ptr noundef @PyFloat_Type)
  %tobool176 = icmp ne i32 %call175, 0
  br i1 %tobool176, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end172
  %arrayidx177 = getelementptr inbounds [6 x ptr], ptr %values, i64 0, i64 1
  %89 = load ptr, ptr %arrayidx177, align 8, !tbaa !4
  %ob_fval = getelementptr inbounds %struct.PyFloatObject, ptr %89, i32 0, i32 1
  %90 = load double, ptr %ob_fval, align 8, !tbaa !100
  br label %cond.end

cond.false:                                       ; preds = %if.end172
  %arrayidx178 = getelementptr inbounds [6 x ptr], ptr %values, i64 0, i64 1
  %91 = load ptr, ptr %arrayidx178, align 8, !tbaa !4
  %call179 = call double @PyFloat_AsDouble(ptr noundef %91)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %90, %cond.true ], [ %call179, %cond.false ]
  %conv180 = fptrunc double %cond to float
  store float %conv180, ptr %__pyx_v_xa, align 4, !tbaa !34
  %92 = load float, ptr %__pyx_v_xa, align 4, !tbaa !34
  %cmp181 = fcmp oeq float %92, -1.000000e+00
  br i1 %cmp181, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %cond.end
  %call183 = call ptr @PyErr_Occurred()
  %tobool184 = icmp ne ptr %call183, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cond.end
  %93 = phi i1 [ false, %cond.end ], [ %tobool184, %land.rhs ]
  %lnot185 = xor i1 %93, true
  %lnot187 = xor i1 %lnot185, true
  %lnot.ext188 = zext i1 %lnot187 to i32
  %conv189 = sext i32 %lnot.ext188 to i64
  %expval190 = call i64 @llvm.expect.i64(i64 %conv189, i64 0)
  %tobool191 = icmp ne i64 %expval190, 0
  br i1 %tobool191, label %if.then192, label %if.end193

if.then192:                                       ; preds = %land.end
  %94 = load ptr, ptr getelementptr inbounds ([2 x ptr], ptr @__pyx_f, i64 0, i64 1), align 8, !tbaa !4
  store ptr %94, ptr %__pyx_filename, align 8, !tbaa !4
  %95 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 65, ptr %__pyx_lineno, align 4, !tbaa !10
  %96 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 3274, ptr %__pyx_clineno, align 4, !tbaa !10
  %97 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup292

if.end193:                                        ; preds = %land.end
  %arrayidx194 = getelementptr inbounds [6 x ptr], ptr %values, i64 0, i64 2
  %98 = load ptr, ptr %arrayidx194, align 16, !tbaa !4
  %call195 = call i32 @Py_IS_TYPE(ptr noundef %98, ptr noundef @PyFloat_Type)
  %tobool196 = icmp ne i32 %call195, 0
  br i1 %tobool196, label %cond.true197, label %cond.false200

cond.true197:                                     ; preds = %if.end193
  %arrayidx198 = getelementptr inbounds [6 x ptr], ptr %values, i64 0, i64 2
  %99 = load ptr, ptr %arrayidx198, align 16, !tbaa !4
  %ob_fval199 = getelementptr inbounds %struct.PyFloatObject, ptr %99, i32 0, i32 1
  %100 = load double, ptr %ob_fval199, align 8, !tbaa !100
  br label %cond.end203

cond.false200:                                    ; preds = %if.end193
  %arrayidx201 = getelementptr inbounds [6 x ptr], ptr %values, i64 0, i64 2
  %101 = load ptr, ptr %arrayidx201, align 16, !tbaa !4
  %call202 = call double @PyFloat_AsDouble(ptr noundef %101)
  br label %cond.end203

cond.end203:                                      ; preds = %cond.false200, %cond.true197
  %cond204 = phi double [ %100, %cond.true197 ], [ %call202, %cond.false200 ]
  %conv205 = fptrunc double %cond204 to float
  store float %conv205, ptr %__pyx_v_xb, align 4, !tbaa !34
  %102 = load float, ptr %__pyx_v_xb, align 4, !tbaa !34
  %cmp206 = fcmp oeq float %102, -1.000000e+00
  br i1 %cmp206, label %land.rhs208, label %land.end211

land.rhs208:                                      ; preds = %cond.end203
  %call209 = call ptr @PyErr_Occurred()
  %tobool210 = icmp ne ptr %call209, null
  br label %land.end211

land.end211:                                      ; preds = %land.rhs208, %cond.end203
  %103 = phi i1 [ false, %cond.end203 ], [ %tobool210, %land.rhs208 ]
  %lnot212 = xor i1 %103, true
  %lnot214 = xor i1 %lnot212, true
  %lnot.ext215 = zext i1 %lnot214 to i32
  %conv216 = sext i32 %lnot.ext215 to i64
  %expval217 = call i64 @llvm.expect.i64(i64 %conv216, i64 0)
  %tobool218 = icmp ne i64 %expval217, 0
  br i1 %tobool218, label %if.then219, label %if.end220

if.then219:                                       ; preds = %land.end211
  %104 = load ptr, ptr getelementptr inbounds ([2 x ptr], ptr @__pyx_f, i64 0, i64 1), align 8, !tbaa !4
  store ptr %104, ptr %__pyx_filename, align 8, !tbaa !4
  %105 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 65, ptr %__pyx_lineno, align 4, !tbaa !10
  %106 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 3275, ptr %__pyx_clineno, align 4, !tbaa !10
  %107 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup292

if.end220:                                        ; preds = %land.end211
  %arrayidx221 = getelementptr inbounds [6 x ptr], ptr %values, i64 0, i64 3
  %108 = load ptr, ptr %arrayidx221, align 8, !tbaa !4
  %call222 = call i32 @Py_IS_TYPE(ptr noundef %108, ptr noundef @PyFloat_Type)
  %tobool223 = icmp ne i32 %call222, 0
  br i1 %tobool223, label %cond.true224, label %cond.false227

cond.true224:                                     ; preds = %if.end220
  %arrayidx225 = getelementptr inbounds [6 x ptr], ptr %values, i64 0, i64 3
  %109 = load ptr, ptr %arrayidx225, align 8, !tbaa !4
  %ob_fval226 = getelementptr inbounds %struct.PyFloatObject, ptr %109, i32 0, i32 1
  %110 = load double, ptr %ob_fval226, align 8, !tbaa !100
  br label %cond.end230

cond.false227:                                    ; preds = %if.end220
  %arrayidx228 = getelementptr inbounds [6 x ptr], ptr %values, i64 0, i64 3
  %111 = load ptr, ptr %arrayidx228, align 8, !tbaa !4
  %call229 = call double @PyFloat_AsDouble(ptr noundef %111)
  br label %cond.end230

cond.end230:                                      ; preds = %cond.false227, %cond.true224
  %cond231 = phi double [ %110, %cond.true224 ], [ %call229, %cond.false227 ]
  %conv232 = fptrunc double %cond231 to float
  store float %conv232, ptr %__pyx_v_xtol, align 4, !tbaa !34
  %112 = load float, ptr %__pyx_v_xtol, align 4, !tbaa !34
  %cmp233 = fcmp oeq float %112, -1.000000e+00
  br i1 %cmp233, label %land.rhs235, label %land.end238

land.rhs235:                                      ; preds = %cond.end230
  %call236 = call ptr @PyErr_Occurred()
  %tobool237 = icmp ne ptr %call236, null
  br label %land.end238

land.end238:                                      ; preds = %land.rhs235, %cond.end230
  %113 = phi i1 [ false, %cond.end230 ], [ %tobool237, %land.rhs235 ]
  %lnot239 = xor i1 %113, true
  %lnot241 = xor i1 %lnot239, true
  %lnot.ext242 = zext i1 %lnot241 to i32
  %conv243 = sext i32 %lnot.ext242 to i64
  %expval244 = call i64 @llvm.expect.i64(i64 %conv243, i64 0)
  %tobool245 = icmp ne i64 %expval244, 0
  br i1 %tobool245, label %if.then246, label %if.end247

if.then246:                                       ; preds = %land.end238
  %114 = load ptr, ptr getelementptr inbounds ([2 x ptr], ptr @__pyx_f, i64 0, i64 1), align 8, !tbaa !4
  store ptr %114, ptr %__pyx_filename, align 8, !tbaa !4
  %115 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 65, ptr %__pyx_lineno, align 4, !tbaa !10
  %116 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 3276, ptr %__pyx_clineno, align 4, !tbaa !10
  %117 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup292

if.end247:                                        ; preds = %land.end238
  %arrayidx248 = getelementptr inbounds [6 x ptr], ptr %values, i64 0, i64 4
  %118 = load ptr, ptr %arrayidx248, align 16, !tbaa !4
  %call249 = call i32 @Py_IS_TYPE(ptr noundef %118, ptr noundef @PyFloat_Type)
  %tobool250 = icmp ne i32 %call249, 0
  br i1 %tobool250, label %cond.true251, label %cond.false254

cond.true251:                                     ; preds = %if.end247
  %arrayidx252 = getelementptr inbounds [6 x ptr], ptr %values, i64 0, i64 4
  %119 = load ptr, ptr %arrayidx252, align 16, !tbaa !4
  %ob_fval253 = getelementptr inbounds %struct.PyFloatObject, ptr %119, i32 0, i32 1
  %120 = load double, ptr %ob_fval253, align 8, !tbaa !100
  br label %cond.end257

cond.false254:                                    ; preds = %if.end247
  %arrayidx255 = getelementptr inbounds [6 x ptr], ptr %values, i64 0, i64 4
  %121 = load ptr, ptr %arrayidx255, align 16, !tbaa !4
  %call256 = call double @PyFloat_AsDouble(ptr noundef %121)
  br label %cond.end257

cond.end257:                                      ; preds = %cond.false254, %cond.true251
  %cond258 = phi double [ %120, %cond.true251 ], [ %call256, %cond.false254 ]
  %conv259 = fptrunc double %cond258 to float
  store float %conv259, ptr %__pyx_v_rtol, align 4, !tbaa !34
  %122 = load float, ptr %__pyx_v_rtol, align 4, !tbaa !34
  %cmp260 = fcmp oeq float %122, -1.000000e+00
  br i1 %cmp260, label %land.rhs262, label %land.end265

land.rhs262:                                      ; preds = %cond.end257
  %call263 = call ptr @PyErr_Occurred()
  %tobool264 = icmp ne ptr %call263, null
  br label %land.end265

land.end265:                                      ; preds = %land.rhs262, %cond.end257
  %123 = phi i1 [ false, %cond.end257 ], [ %tobool264, %land.rhs262 ]
  %lnot266 = xor i1 %123, true
  %lnot268 = xor i1 %lnot266, true
  %lnot.ext269 = zext i1 %lnot268 to i32
  %conv270 = sext i32 %lnot.ext269 to i64
  %expval271 = call i64 @llvm.expect.i64(i64 %conv270, i64 0)
  %tobool272 = icmp ne i64 %expval271, 0
  br i1 %tobool272, label %if.then273, label %if.end274

if.then273:                                       ; preds = %land.end265
  %124 = load ptr, ptr getelementptr inbounds ([2 x ptr], ptr @__pyx_f, i64 0, i64 1), align 8, !tbaa !4
  store ptr %124, ptr %__pyx_filename, align 8, !tbaa !4
  %125 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 65, ptr %__pyx_lineno, align 4, !tbaa !10
  %126 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 3277, ptr %__pyx_clineno, align 4, !tbaa !10
  %127 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup292

if.end274:                                        ; preds = %land.end265
  %arrayidx275 = getelementptr inbounds [6 x ptr], ptr %values, i64 0, i64 5
  %128 = load ptr, ptr %arrayidx275, align 8, !tbaa !4
  %call276 = call i32 @__Pyx_PyInt_As_int(ptr noundef %128)
  store i32 %call276, ptr %__pyx_v_mitr, align 4, !tbaa !10
  %129 = load i32, ptr %__pyx_v_mitr, align 4, !tbaa !10
  %cmp277 = icmp eq i32 %129, -1
  br i1 %cmp277, label %land.rhs279, label %land.end282

land.rhs279:                                      ; preds = %if.end274
  %call280 = call ptr @PyErr_Occurred()
  %tobool281 = icmp ne ptr %call280, null
  br label %land.end282

land.end282:                                      ; preds = %land.rhs279, %if.end274
  %130 = phi i1 [ false, %if.end274 ], [ %tobool281, %land.rhs279 ]
  %lnot283 = xor i1 %130, true
  %lnot285 = xor i1 %lnot283, true
  %lnot.ext286 = zext i1 %lnot285 to i32
  %conv287 = sext i32 %lnot.ext286 to i64
  %expval288 = call i64 @llvm.expect.i64(i64 %conv287, i64 0)
  %tobool289 = icmp ne i64 %expval288, 0
  br i1 %tobool289, label %if.then290, label %if.end291

if.then290:                                       ; preds = %land.end282
  %131 = load ptr, ptr getelementptr inbounds ([2 x ptr], ptr @__pyx_f, i64 0, i64 1), align 8, !tbaa !4
  store ptr %131, ptr %__pyx_filename, align 8, !tbaa !4
  %132 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 65, ptr %__pyx_lineno, align 4, !tbaa !10
  %133 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 3278, ptr %__pyx_clineno, align 4, !tbaa !10
  %134 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup292

if.end291:                                        ; preds = %land.end282
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup292

cleanup292:                                       ; preds = %if.then290, %if.then273, %if.then246, %if.then219, %if.then192, %if.then151, %if.end291, %cleanup
  call void @llvm.lifetime.end.p0(i64 48, ptr %values) #9
  %cleanup.dest293 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest293, label %cleanup327 [
    i32 0, label %cleanup.cont294
    i32 3, label %__pyx_L5_argtuple_error
    i32 5, label %__pyx_L3_error
  ]

cleanup.cont294:                                  ; preds = %cleanup292
  br label %__pyx_L4_argument_unpacking_done

__pyx_L5_argtuple_error:                          ; preds = %cleanup292
  %135 = load ptr, ptr %__pyx_args.addr, align 8, !tbaa !4
  %call295 = call i64 @PyTuple_GET_SIZE(ptr noundef %135)
  call void @__Pyx_RaiseArgtupleInvalid(ptr noundef @.str.83, i32 noundef 1, i64 noundef 6, i64 noundef 6, i64 noundef %call295)
  %136 = load ptr, ptr getelementptr inbounds ([2 x ptr], ptr @__pyx_f, i64 0, i64 1), align 8, !tbaa !4
  store ptr %136, ptr %__pyx_filename, align 8, !tbaa !4
  %137 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 65, ptr %__pyx_lineno, align 4, !tbaa !10
  %138 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 3282, ptr %__pyx_clineno, align 4, !tbaa !10
  %139 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  br label %__pyx_L3_error

__pyx_L3_error:                                   ; preds = %cleanup292, %__pyx_L5_argtuple_error
  %140 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  %141 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  %142 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  call void @__Pyx_AddTraceback(ptr noundef @.str.84, i32 noundef %140, i32 noundef %141, ptr noundef %142)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup327

__pyx_L4_argument_unpacking_done:                 ; preds = %cleanup.cont294
  %143 = load ptr, ptr %__pyx_v_args, align 8, !tbaa !4
  %call296 = call ptr @Py_TYPE(ptr noundef %143)
  %cmp297 = icmp eq ptr %call296, @PyTuple_Type
  %conv298 = zext i1 %cmp297 to i32
  %144 = load ptr, ptr %__pyx_v_args, align 8, !tbaa !4
  %cmp299 = icmp eq ptr %144, @_Py_NoneStruct
  %land.ext = zext i1 %cmp299 to i32
  %or = or i32 %conv298, %land.ext
  %tobool301 = icmp ne i32 %or, 0
  %lnot302 = xor i1 %tobool301, true
  %lnot304 = xor i1 %lnot302, true
  %lnot.ext305 = zext i1 %lnot304 to i32
  %conv306 = sext i32 %lnot.ext305 to i64
  %expval307 = call i64 @llvm.expect.i64(i64 %conv306, i64 1)
  %tobool308 = icmp ne i64 %expval307, 0
  br i1 %tobool308, label %cond.true309, label %cond.false310

cond.true309:                                     ; preds = %__pyx_L4_argument_unpacking_done
  br label %cond.end312

cond.false310:                                    ; preds = %__pyx_L4_argument_unpacking_done
  %145 = load ptr, ptr %__pyx_v_args, align 8, !tbaa !4
  %call311 = call i32 @__Pyx__ArgTypeTest(ptr noundef %145, ptr noundef @PyTuple_Type, ptr noundef @.str.85, i32 noundef 1)
  br label %cond.end312

cond.end312:                                      ; preds = %cond.false310, %cond.true309
  %cond313 = phi i32 [ 1, %cond.true309 ], [ %call311, %cond.false310 ]
  %tobool314 = icmp ne i32 %cond313, 0
  %lnot315 = xor i1 %tobool314, true
  %lnot317 = xor i1 %lnot315, true
  %lnot319 = xor i1 %lnot317, true
  %lnot.ext320 = zext i1 %lnot319 to i32
  %conv321 = sext i32 %lnot.ext320 to i64
  %expval322 = call i64 @llvm.expect.i64(i64 %conv321, i64 0)
  %tobool323 = icmp ne i64 %expval322, 0
  br i1 %tobool323, label %if.then324, label %if.end325

if.then324:                                       ; preds = %cond.end312
  %146 = load ptr, ptr getelementptr inbounds ([2 x ptr], ptr @__pyx_f, i64 0, i64 1), align 8, !tbaa !4
  store ptr %146, ptr %__pyx_filename, align 8, !tbaa !4
  %147 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 65, ptr %__pyx_lineno, align 4, !tbaa !10
  %148 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 3288, ptr %__pyx_clineno, align 4, !tbaa !10
  %149 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  br label %__pyx_L1_error

if.end325:                                        ; preds = %cond.end312
  %150 = load ptr, ptr %__pyx_self.addr, align 8, !tbaa !4
  %151 = load ptr, ptr %__pyx_v_args, align 8, !tbaa !4
  %152 = load float, ptr %__pyx_v_xa, align 4, !tbaa !34
  %153 = load float, ptr %__pyx_v_xb, align 4, !tbaa !34
  %154 = load float, ptr %__pyx_v_xtol, align 4, !tbaa !34
  %155 = load float, ptr %__pyx_v_rtol, align 4, !tbaa !34
  %156 = load i32, ptr %__pyx_v_mitr, align 4, !tbaa !10
  %call326 = call ptr @__pyx_pf_11cfunc_dot_to_py_78__Pyx_CFunc_double____tuple____float____float____float____float____int___to_py_wrap(ptr noundef %150, ptr noundef %151, float noundef %152, float noundef %153, float noundef %154, float noundef %155, i32 noundef %156)
  store ptr %call326, ptr %__pyx_r, align 8, !tbaa !4
  br label %__pyx_L0

__pyx_L1_error:                                   ; preds = %if.then324
  store ptr null, ptr %__pyx_r, align 8, !tbaa !4
  br label %__pyx_L0

__pyx_L0:                                         ; preds = %__pyx_L1_error, %if.end325
  %157 = load ptr, ptr %__pyx_r, align 8, !tbaa !4
  store ptr %157, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup327

cleanup327:                                       ; preds = %__pyx_L0, %__pyx_L3_error, %cleanup292
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pyx_r) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %__pyx_clineno) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pyx_filename) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %__pyx_lineno) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %__pyx_v_mitr) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %__pyx_v_rtol) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %__pyx_v_xtol) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %__pyx_v_xb) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %__pyx_v_xa) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pyx_v_args) #9
  %158 = load ptr, ptr %retval, align 8
  ret ptr %158
}

declare ptr @_PyDict_GetItem_KnownHash(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: nounwind uwtable
define internal void @__Pyx_RaiseArgtupleInvalid(ptr noundef %func_name, i32 noundef %exact, i64 noundef %num_min, i64 noundef %num_max, i64 noundef %num_found) #0 {
entry:
  %func_name.addr = alloca ptr, align 8
  %exact.addr = alloca i32, align 4
  %num_min.addr = alloca i64, align 8
  %num_max.addr = alloca i64, align 8
  %num_found.addr = alloca i64, align 8
  %num_expected = alloca i64, align 8
  %more_or_less = alloca ptr, align 8
  store ptr %func_name, ptr %func_name.addr, align 8, !tbaa !4
  store i32 %exact, ptr %exact.addr, align 4, !tbaa !10
  store i64 %num_min, ptr %num_min.addr, align 8, !tbaa !24
  store i64 %num_max, ptr %num_max.addr, align 8, !tbaa !24
  store i64 %num_found, ptr %num_found.addr, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(i64 8, ptr %num_expected) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %more_or_less) #9
  %0 = load i64, ptr %num_found.addr, align 8, !tbaa !24
  %1 = load i64, ptr %num_min.addr, align 8, !tbaa !24
  %cmp = icmp slt i64 %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %num_min.addr, align 8, !tbaa !24
  store i64 %2, ptr %num_expected, align 8, !tbaa !24
  store ptr @.str.86, ptr %more_or_less, align 8, !tbaa !4
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load i64, ptr %num_max.addr, align 8, !tbaa !24
  store i64 %3, ptr %num_expected, align 8, !tbaa !24
  store ptr @.str.87, ptr %more_or_less, align 8, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load i32, ptr %exact.addr, align 4, !tbaa !10
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  store ptr @.str.88, ptr %more_or_less, align 8, !tbaa !4
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.end
  %5 = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !4
  %6 = load ptr, ptr %func_name.addr, align 8, !tbaa !4
  %7 = load ptr, ptr %more_or_less, align 8, !tbaa !4
  %8 = load i64, ptr %num_expected, align 8, !tbaa !24
  %9 = load i64, ptr %num_expected, align 8, !tbaa !24
  %cmp3 = icmp eq i64 %9, 1
  %10 = zext i1 %cmp3 to i64
  %cond = select i1 %cmp3, ptr @.str.12, ptr @.str.90
  %11 = load i64, ptr %num_found.addr, align 8, !tbaa !24
  %call = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %5, ptr noundef @.str.89, ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %cond, i64 noundef %11)
  call void @llvm.lifetime.end.p0(i64 8, ptr %more_or_less) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %num_expected) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @__Pyx_ParseOptionalKeywords(ptr noundef %kwds, ptr noundef %argnames, ptr noundef %kwds2, ptr noundef %values, i64 noundef %num_pos_args, ptr noundef %function_name) #0 {
entry:
  %retval = alloca i32, align 4
  %kwds.addr = alloca ptr, align 8
  %argnames.addr = alloca ptr, align 8
  %kwds2.addr = alloca ptr, align 8
  %values.addr = alloca ptr, align 8
  %num_pos_args.addr = alloca i64, align 8
  %function_name.addr = alloca ptr, align 8
  %key = alloca ptr, align 8
  %value = alloca ptr, align 8
  %pos = alloca i64, align 8
  %name = alloca ptr, align 8
  %first_kw_arg = alloca ptr, align 8
  %cmp14 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %argname = alloca ptr, align 8
  %cmp56 = alloca i32, align 4
  store ptr %kwds, ptr %kwds.addr, align 8, !tbaa !4
  store ptr %argnames, ptr %argnames.addr, align 8, !tbaa !4
  store ptr %kwds2, ptr %kwds2.addr, align 8, !tbaa !4
  store ptr %values, ptr %values.addr, align 8, !tbaa !4
  store i64 %num_pos_args, ptr %num_pos_args.addr, align 8, !tbaa !24
  store ptr %function_name, ptr %function_name.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %key) #9
  store ptr null, ptr %key, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %value) #9
  store ptr null, ptr %value, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %pos) #9
  store i64 0, ptr %pos, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(i64 8, ptr %name) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %first_kw_arg) #9
  %0 = load ptr, ptr %argnames.addr, align 8, !tbaa !4
  %1 = load i64, ptr %num_pos_args.addr, align 8, !tbaa !24
  %add.ptr = getelementptr inbounds ptr, ptr %0, i64 %1
  store ptr %add.ptr, ptr %first_kw_arg, align 8, !tbaa !4
  br label %while.cond

while.cond:                                       ; preds = %if.end115, %if.then51, %if.then, %entry
  %2 = load ptr, ptr %kwds.addr, align 8, !tbaa !4
  %call = call i32 @PyDict_Next(ptr noundef %2, ptr noundef %pos, ptr noundef %key, ptr noundef %value)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %while.body, label %while.end116

while.body:                                       ; preds = %while.cond
  %3 = load ptr, ptr %first_kw_arg, align 8, !tbaa !4
  store ptr %3, ptr %name, align 8, !tbaa !4
  br label %while.cond1

while.cond1:                                      ; preds = %while.body3, %while.body
  %4 = load ptr, ptr %name, align 8, !tbaa !4
  %5 = load ptr, ptr %4, align 8, !tbaa !4
  %tobool2 = icmp ne ptr %5, null
  br i1 %tobool2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond1
  %6 = load ptr, ptr %name, align 8, !tbaa !4
  %7 = load ptr, ptr %6, align 8, !tbaa !4
  %8 = load ptr, ptr %7, align 8, !tbaa !4
  %9 = load ptr, ptr %key, align 8, !tbaa !4
  %cmp = icmp ne ptr %8, %9
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond1
  %10 = phi i1 [ false, %while.cond1 ], [ %cmp, %land.rhs ]
  br i1 %10, label %while.body3, label %while.end

while.body3:                                      ; preds = %land.end
  %11 = load ptr, ptr %name, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds ptr, ptr %11, i32 1
  store ptr %incdec.ptr, ptr %name, align 8, !tbaa !4
  br label %while.cond1

while.end:                                        ; preds = %land.end
  %12 = load ptr, ptr %name, align 8, !tbaa !4
  %13 = load ptr, ptr %12, align 8, !tbaa !4
  %tobool4 = icmp ne ptr %13, null
  br i1 %tobool4, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %14 = load ptr, ptr %value, align 8, !tbaa !4
  %15 = load ptr, ptr %values.addr, align 8, !tbaa !4
  %16 = load ptr, ptr %name, align 8, !tbaa !4
  %17 = load ptr, ptr %argnames.addr, align 8, !tbaa !4
  %sub.ptr.lhs.cast = ptrtoint ptr %16 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %17 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %arrayidx = getelementptr inbounds ptr, ptr %15, i64 %sub.ptr.div
  store ptr %14, ptr %arrayidx, align 8, !tbaa !4
  br label %while.cond

if.end:                                           ; preds = %while.end
  %18 = load ptr, ptr %first_kw_arg, align 8, !tbaa !4
  store ptr %18, ptr %name, align 8, !tbaa !4
  %19 = load ptr, ptr %key, align 8, !tbaa !4
  %call5 = call ptr @Py_TYPE(ptr noundef %19)
  %call6 = call i32 @PyType_HasFeature(ptr noundef %call5, i64 noundef 268435456)
  %tobool7 = icmp ne i32 %call6, 0
  %lnot = xor i1 %tobool7, true
  %lnot8 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot8 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1)
  %tobool9 = icmp ne i64 %expval, 0
  br i1 %tobool9, label %if.then10, label %if.else99

if.then10:                                        ; preds = %if.end
  br label %while.cond11

while.cond11:                                     ; preds = %cleanup.cont, %if.then10
  %20 = load ptr, ptr %name, align 8, !tbaa !4
  %21 = load ptr, ptr %20, align 8, !tbaa !4
  %tobool12 = icmp ne ptr %21, null
  br i1 %tobool12, label %while.body13, label %while.end49

while.body13:                                     ; preds = %while.cond11
  call void @llvm.lifetime.start.p0(i64 4, ptr %cmp14) #9
  %22 = load ptr, ptr %name, align 8, !tbaa !4
  %23 = load ptr, ptr %22, align 8, !tbaa !4
  %24 = load ptr, ptr %23, align 8, !tbaa !4
  %25 = load ptr, ptr %key, align 8, !tbaa !4
  %cmp15 = icmp eq ptr %24, %25
  br i1 %cmp15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body13
  br label %cond.end24

cond.false:                                       ; preds = %while.body13
  %26 = load ptr, ptr %name, align 8, !tbaa !4
  %27 = load ptr, ptr %26, align 8, !tbaa !4
  %28 = load ptr, ptr %27, align 8, !tbaa !4
  %call17 = call i64 @PyUnicode_GET_LENGTH(ptr noundef %28)
  %29 = load ptr, ptr %key, align 8, !tbaa !4
  %call18 = call i64 @PyUnicode_GET_LENGTH(ptr noundef %29)
  %cmp19 = icmp ne i64 %call17, %call18
  br i1 %cmp19, label %cond.true21, label %cond.false22

cond.true21:                                      ; preds = %cond.false
  br label %cond.end

cond.false22:                                     ; preds = %cond.false
  %30 = load ptr, ptr %name, align 8, !tbaa !4
  %31 = load ptr, ptr %30, align 8, !tbaa !4
  %32 = load ptr, ptr %31, align 8, !tbaa !4
  %33 = load ptr, ptr %key, align 8, !tbaa !4
  %call23 = call i32 @PyUnicode_Compare(ptr noundef %32, ptr noundef %33)
  br label %cond.end

cond.end:                                         ; preds = %cond.false22, %cond.true21
  %cond = phi i32 [ 1, %cond.true21 ], [ %call23, %cond.false22 ]
  br label %cond.end24

cond.end24:                                       ; preds = %cond.end, %cond.true
  %cond25 = phi i32 [ 0, %cond.true ], [ %cond, %cond.end ]
  store i32 %cond25, ptr %cmp14, align 4, !tbaa !10
  %34 = load i32, ptr %cmp14, align 4, !tbaa !10
  %cmp26 = icmp slt i32 %34, 0
  br i1 %cmp26, label %land.lhs.true, label %if.end38

land.lhs.true:                                    ; preds = %cond.end24
  %call28 = call ptr @PyErr_Occurred()
  %tobool29 = icmp ne ptr %call28, null
  %lnot30 = xor i1 %tobool29, true
  %lnot32 = xor i1 %lnot30, true
  %lnot.ext33 = zext i1 %lnot32 to i32
  %conv34 = sext i32 %lnot.ext33 to i64
  %expval35 = call i64 @llvm.expect.i64(i64 %conv34, i64 0)
  %tobool36 = icmp ne i64 %expval35, 0
  br i1 %tobool36, label %if.then37, label %if.end38

if.then37:                                        ; preds = %land.lhs.true
  store i32 8, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end38:                                         ; preds = %land.lhs.true, %cond.end24
  %35 = load i32, ptr %cmp14, align 4, !tbaa !10
  %cmp39 = icmp eq i32 %35, 0
  br i1 %cmp39, label %if.then41, label %if.end47

if.then41:                                        ; preds = %if.end38
  %36 = load ptr, ptr %value, align 8, !tbaa !4
  %37 = load ptr, ptr %values.addr, align 8, !tbaa !4
  %38 = load ptr, ptr %name, align 8, !tbaa !4
  %39 = load ptr, ptr %argnames.addr, align 8, !tbaa !4
  %sub.ptr.lhs.cast42 = ptrtoint ptr %38 to i64
  %sub.ptr.rhs.cast43 = ptrtoint ptr %39 to i64
  %sub.ptr.sub44 = sub i64 %sub.ptr.lhs.cast42, %sub.ptr.rhs.cast43
  %sub.ptr.div45 = sdiv exact i64 %sub.ptr.sub44, 8
  %arrayidx46 = getelementptr inbounds ptr, ptr %37, i64 %sub.ptr.div45
  store ptr %36, ptr %arrayidx46, align 8, !tbaa !4
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end47:                                         ; preds = %if.end38
  %40 = load ptr, ptr %name, align 8, !tbaa !4
  %incdec.ptr48 = getelementptr inbounds ptr, ptr %40, i32 1
  store ptr %incdec.ptr48, ptr %name, align 8, !tbaa !4
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then37, %if.end47, %if.then41
  call void @llvm.lifetime.end.p0(i64 4, ptr %cmp14) #9
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup119 [
    i32 0, label %cleanup.cont
    i32 7, label %while.end49
    i32 8, label %bad
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond11

while.end49:                                      ; preds = %cleanup, %while.cond11
  %41 = load ptr, ptr %name, align 8, !tbaa !4
  %42 = load ptr, ptr %41, align 8, !tbaa !4
  %tobool50 = icmp ne ptr %42, null
  br i1 %tobool50, label %if.then51, label %if.else

if.then51:                                        ; preds = %while.end49
  br label %while.cond

if.else:                                          ; preds = %while.end49
  call void @llvm.lifetime.start.p0(i64 8, ptr %argname) #9
  %43 = load ptr, ptr %argnames.addr, align 8, !tbaa !4
  store ptr %43, ptr %argname, align 8, !tbaa !4
  br label %while.cond52

while.cond52:                                     ; preds = %cleanup.cont93, %if.else
  %44 = load ptr, ptr %argname, align 8, !tbaa !4
  %45 = load ptr, ptr %first_kw_arg, align 8, !tbaa !4
  %cmp53 = icmp ne ptr %44, %45
  br i1 %cmp53, label %while.body55, label %while.end94

while.body55:                                     ; preds = %while.cond52
  call void @llvm.lifetime.start.p0(i64 4, ptr %cmp56) #9
  %46 = load ptr, ptr %argname, align 8, !tbaa !4
  %47 = load ptr, ptr %46, align 8, !tbaa !4
  %48 = load ptr, ptr %47, align 8, !tbaa !4
  %49 = load ptr, ptr %key, align 8, !tbaa !4
  %cmp57 = icmp eq ptr %48, %49
  br i1 %cmp57, label %cond.true59, label %cond.false60

cond.true59:                                      ; preds = %while.body55
  br label %cond.end70

cond.false60:                                     ; preds = %while.body55
  %50 = load ptr, ptr %argname, align 8, !tbaa !4
  %51 = load ptr, ptr %50, align 8, !tbaa !4
  %52 = load ptr, ptr %51, align 8, !tbaa !4
  %call61 = call i64 @PyUnicode_GET_LENGTH(ptr noundef %52)
  %53 = load ptr, ptr %key, align 8, !tbaa !4
  %call62 = call i64 @PyUnicode_GET_LENGTH(ptr noundef %53)
  %cmp63 = icmp ne i64 %call61, %call62
  br i1 %cmp63, label %cond.true65, label %cond.false66

cond.true65:                                      ; preds = %cond.false60
  br label %cond.end68

cond.false66:                                     ; preds = %cond.false60
  %54 = load ptr, ptr %argname, align 8, !tbaa !4
  %55 = load ptr, ptr %54, align 8, !tbaa !4
  %56 = load ptr, ptr %55, align 8, !tbaa !4
  %57 = load ptr, ptr %key, align 8, !tbaa !4
  %call67 = call i32 @PyUnicode_Compare(ptr noundef %56, ptr noundef %57)
  br label %cond.end68

cond.end68:                                       ; preds = %cond.false66, %cond.true65
  %cond69 = phi i32 [ 1, %cond.true65 ], [ %call67, %cond.false66 ]
  br label %cond.end70

cond.end70:                                       ; preds = %cond.end68, %cond.true59
  %cond71 = phi i32 [ 0, %cond.true59 ], [ %cond69, %cond.end68 ]
  store i32 %cond71, ptr %cmp56, align 4, !tbaa !10
  %58 = load i32, ptr %cmp56, align 4, !tbaa !10
  %cmp72 = icmp slt i32 %58, 0
  br i1 %cmp72, label %land.lhs.true74, label %if.end85

land.lhs.true74:                                  ; preds = %cond.end70
  %call75 = call ptr @PyErr_Occurred()
  %tobool76 = icmp ne ptr %call75, null
  %lnot77 = xor i1 %tobool76, true
  %lnot79 = xor i1 %lnot77, true
  %lnot.ext80 = zext i1 %lnot79 to i32
  %conv81 = sext i32 %lnot.ext80 to i64
  %expval82 = call i64 @llvm.expect.i64(i64 %conv81, i64 0)
  %tobool83 = icmp ne i64 %expval82, 0
  br i1 %tobool83, label %if.then84, label %if.end85

if.then84:                                        ; preds = %land.lhs.true74
  store i32 8, ptr %cleanup.dest.slot, align 4
  br label %cleanup91

if.end85:                                         ; preds = %land.lhs.true74, %cond.end70
  %59 = load i32, ptr %cmp56, align 4, !tbaa !10
  %cmp86 = icmp eq i32 %59, 0
  br i1 %cmp86, label %if.then88, label %if.end89

if.then88:                                        ; preds = %if.end85
  store i32 11, ptr %cleanup.dest.slot, align 4
  br label %cleanup91

if.end89:                                         ; preds = %if.end85
  %60 = load ptr, ptr %argname, align 8, !tbaa !4
  %incdec.ptr90 = getelementptr inbounds ptr, ptr %60, i32 1
  store ptr %incdec.ptr90, ptr %argname, align 8, !tbaa !4
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup91

cleanup91:                                        ; preds = %if.then88, %if.then84, %if.end89
  call void @llvm.lifetime.end.p0(i64 4, ptr %cmp56) #9
  %cleanup.dest92 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest92, label %cleanup95 [
    i32 0, label %cleanup.cont93
  ]

cleanup.cont93:                                   ; preds = %cleanup91
  br label %while.cond52

while.end94:                                      ; preds = %while.cond52
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup95

cleanup95:                                        ; preds = %while.end94, %cleanup91
  call void @llvm.lifetime.end.p0(i64 8, ptr %argname) #9
  %cleanup.dest96 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest96, label %cleanup119 [
    i32 0, label %cleanup.cont97
    i32 11, label %arg_passed_twice
    i32 8, label %bad
  ]

cleanup.cont97:                                   ; preds = %cleanup95
  br label %if.end98

if.end98:                                         ; preds = %cleanup.cont97
  br label %if.end100

if.else99:                                        ; preds = %if.end
  br label %invalid_keyword_type

if.end100:                                        ; preds = %if.end98
  %61 = load ptr, ptr %kwds2.addr, align 8, !tbaa !4
  %tobool101 = icmp ne ptr %61, null
  br i1 %tobool101, label %if.then102, label %if.else114

if.then102:                                       ; preds = %if.end100
  %62 = load ptr, ptr %kwds2.addr, align 8, !tbaa !4
  %63 = load ptr, ptr %key, align 8, !tbaa !4
  %64 = load ptr, ptr %value, align 8, !tbaa !4
  %call103 = call i32 @PyDict_SetItem(ptr noundef %62, ptr noundef %63, ptr noundef %64)
  %tobool104 = icmp ne i32 %call103, 0
  %lnot105 = xor i1 %tobool104, true
  %lnot107 = xor i1 %lnot105, true
  %lnot.ext108 = zext i1 %lnot107 to i32
  %conv109 = sext i32 %lnot.ext108 to i64
  %expval110 = call i64 @llvm.expect.i64(i64 %conv109, i64 0)
  %tobool111 = icmp ne i64 %expval110, 0
  br i1 %tobool111, label %if.then112, label %if.end113

if.then112:                                       ; preds = %if.then102
  br label %bad

if.end113:                                        ; preds = %if.then102
  br label %if.end115

if.else114:                                       ; preds = %if.end100
  br label %invalid_keyword

if.end115:                                        ; preds = %if.end113
  br label %while.cond

while.end116:                                     ; preds = %while.cond
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup119

arg_passed_twice:                                 ; preds = %cleanup95
  %65 = load ptr, ptr %function_name.addr, align 8, !tbaa !4
  %66 = load ptr, ptr %key, align 8, !tbaa !4
  call void @__Pyx_RaiseDoubleKeywordsError(ptr noundef %65, ptr noundef %66)
  br label %bad

invalid_keyword_type:                             ; preds = %if.else99
  %67 = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !4
  %68 = load ptr, ptr %function_name.addr, align 8, !tbaa !4
  %call117 = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %67, ptr noundef @.str.91, ptr noundef %68)
  br label %bad

invalid_keyword:                                  ; preds = %if.else114
  %69 = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !4
  %70 = load ptr, ptr %function_name.addr, align 8, !tbaa !4
  %71 = load ptr, ptr %key, align 8, !tbaa !4
  %call118 = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %69, ptr noundef @.str.92, ptr noundef %70, ptr noundef %71)
  br label %bad

bad:                                              ; preds = %invalid_keyword, %cleanup95, %cleanup, %invalid_keyword_type, %arg_passed_twice, %if.then112
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup119

cleanup119:                                       ; preds = %bad, %while.end116, %cleanup95, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %first_kw_arg) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %name) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %pos) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %value) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %key) #9
  %72 = load i32, ptr %retval, align 4
  ret i32 %72
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @Py_IS_TYPE(ptr noundef %ob, ptr noundef %type) #5 {
entry:
  %ob.addr = alloca ptr, align 8
  %type.addr = alloca ptr, align 8
  store ptr %ob, ptr %ob.addr, align 8, !tbaa !4
  store ptr %type, ptr %type.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %ob.addr, align 8, !tbaa !4
  %call = call ptr @Py_TYPE(ptr noundef %0)
  %1 = load ptr, ptr %type.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %call, %1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

declare double @PyFloat_AsDouble(ptr noundef) #4

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @__Pyx_PyInt_As_int(ptr noundef %x) #5 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca ptr, align 8
  %neg_one = alloca i32, align 4
  %const_zero = alloca i32, align 4
  %is_unsigned = alloca i32, align 4
  %digits = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %value = alloca i32, align 4
  %value7 = alloca i32, align 4
  %value10 = alloca i64, align 8
  %zero = alloca i64, align 8
  %value29 = alloca i64, align 8
  %zero48 = alloca i64, align 8
  %value57 = alloca i64, align 8
  %zero71 = alloca i64, align 8
  %val = alloca i32, align 4
  %v = alloca ptr, align 8
  %val90 = alloca i32, align 4
  %tmp = alloca ptr, align 8
  store ptr %x, ptr %x.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %neg_one) #9
  store i32 -1, ptr %neg_one, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %const_zero) #9
  store i32 0, ptr %const_zero, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %is_unsigned) #9
  store i32 0, ptr %is_unsigned, align 4, !tbaa !10
  %0 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %call = call ptr @Py_TYPE(ptr noundef %0)
  %call1 = call i32 @PyType_HasFeature(ptr noundef %call, i64 noundef 16777216)
  %tobool = icmp ne i32 %call1, 0
  %lnot = xor i1 %tobool, true
  %lnot2 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot2 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1)
  %tobool3 = icmp ne i64 %expval, 0
  br i1 %tobool3, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %digits) #9
  %1 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %ob_digit = getelementptr inbounds %struct._longobject, ptr %1, i32 0, i32 1
  %arraydecay = getelementptr inbounds [1 x i32], ptr %ob_digit, i64 0, i64 0
  store ptr %arraydecay, ptr %digits, align 8, !tbaa !4
  %2 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %call4 = call i64 @Py_SIZE(ptr noundef %2)
  switch i64 %call4, label %sw.epilog [
    i64 0, label %sw.bb
    i64 -1, label %sw.bb5
    i64 1, label %sw.bb6
    i64 -2, label %sw.bb9
    i64 2, label %sw.bb28
    i64 -3, label %sw.bb53
    i64 3, label %sw.bb54
    i64 -4, label %sw.bb55
    i64 4, label %sw.bb56
  ]

sw.bb:                                            ; preds = %if.then
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup89

sw.bb5:                                           ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %value) #9
  %3 = load ptr, ptr %digits, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds i32, ptr %3, i64 0
  %4 = load i32, ptr %arrayidx, align 4, !tbaa !10
  %sub = sub nsw i32 0, %4
  store i32 %sub, ptr %value, align 4, !tbaa !10
  %5 = load i32, ptr %value, align 4, !tbaa !10
  store i32 %5, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %value) #9
  br label %cleanup89

sw.bb6:                                           ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %value7) #9
  %6 = load ptr, ptr %digits, align 8, !tbaa !4
  %arrayidx8 = getelementptr inbounds i32, ptr %6, i64 0
  %7 = load i32, ptr %arrayidx8, align 4, !tbaa !10
  store i32 %7, ptr %value7, align 4, !tbaa !10
  %8 = load i32, ptr %value7, align 4, !tbaa !10
  store i32 %8, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %value7) #9
  br label %cleanup89

sw.bb9:                                           ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %value10) #9
  %9 = load ptr, ptr %digits, align 8, !tbaa !4
  %arrayidx11 = getelementptr inbounds i32, ptr %9, i64 1
  %10 = load i32, ptr %arrayidx11, align 4, !tbaa !10
  %conv12 = zext i32 %10 to i64
  %shl = shl i64 %conv12, 30
  %11 = load ptr, ptr %digits, align 8, !tbaa !4
  %arrayidx13 = getelementptr inbounds i32, ptr %11, i64 0
  %12 = load i32, ptr %arrayidx13, align 4, !tbaa !10
  %conv14 = zext i32 %12 to i64
  %or = or i64 %shl, %conv14
  %sub15 = sub nsw i64 0, %or
  store i64 %sub15, ptr %value10, align 8, !tbaa !24
  %13 = load i64, ptr %value10, align 8, !tbaa !24
  %14 = load i64, ptr %value10, align 8, !tbaa !24
  %conv16 = trunc i64 %14 to i32
  %conv17 = sext i32 %conv16 to i64
  %cmp = icmp ne i64 %13, %conv17
  %lnot19 = xor i1 %cmp, true
  %lnot21 = xor i1 %lnot19, true
  %lnot.ext22 = zext i1 %lnot21 to i32
  %conv23 = sext i32 %lnot.ext22 to i64
  %expval24 = call i64 @llvm.expect.i64(i64 %conv23, i64 0)
  %tobool25 = icmp ne i64 %expval24, 0
  br i1 %tobool25, label %if.then26, label %if.end

if.then26:                                        ; preds = %sw.bb9
  call void @llvm.lifetime.start.p0(i64 8, ptr %zero) #9
  store i64 0, ptr %zero, align 8, !tbaa !24
  store i32 3, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %zero) #9
  br label %cleanup

if.end:                                           ; preds = %sw.bb9
  %15 = load i64, ptr %value10, align 8, !tbaa !24
  %conv27 = trunc i64 %15 to i32
  store i32 %conv27, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then26
  call void @llvm.lifetime.end.p0(i64 8, ptr %value10) #9
  br label %cleanup89

sw.bb28:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %value29) #9
  %16 = load ptr, ptr %digits, align 8, !tbaa !4
  %arrayidx30 = getelementptr inbounds i32, ptr %16, i64 1
  %17 = load i32, ptr %arrayidx30, align 4, !tbaa !10
  %conv31 = zext i32 %17 to i64
  %shl32 = shl i64 %conv31, 30
  %18 = load ptr, ptr %digits, align 8, !tbaa !4
  %arrayidx33 = getelementptr inbounds i32, ptr %18, i64 0
  %19 = load i32, ptr %arrayidx33, align 4, !tbaa !10
  %conv34 = zext i32 %19 to i64
  %or35 = or i64 %shl32, %conv34
  store i64 %or35, ptr %value29, align 8, !tbaa !24
  %20 = load i64, ptr %value29, align 8, !tbaa !24
  %21 = load i64, ptr %value29, align 8, !tbaa !24
  %conv36 = trunc i64 %21 to i32
  %conv37 = sext i32 %conv36 to i64
  %cmp38 = icmp ne i64 %20, %conv37
  %lnot40 = xor i1 %cmp38, true
  %lnot42 = xor i1 %lnot40, true
  %lnot.ext43 = zext i1 %lnot42 to i32
  %conv44 = sext i32 %lnot.ext43 to i64
  %expval45 = call i64 @llvm.expect.i64(i64 %conv44, i64 0)
  %tobool46 = icmp ne i64 %expval45, 0
  br i1 %tobool46, label %if.then47, label %if.end50

if.then47:                                        ; preds = %sw.bb28
  call void @llvm.lifetime.start.p0(i64 8, ptr %zero48) #9
  store i64 0, ptr %zero48, align 8, !tbaa !24
  store i32 3, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %zero48) #9
  br label %cleanup52

if.end50:                                         ; preds = %sw.bb28
  %22 = load i64, ptr %value29, align 8, !tbaa !24
  %conv51 = trunc i64 %22 to i32
  store i32 %conv51, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup52

cleanup52:                                        ; preds = %if.end50, %if.then47
  call void @llvm.lifetime.end.p0(i64 8, ptr %value29) #9
  br label %cleanup89

sw.bb53:                                          ; preds = %if.then
  br label %sw.epilog

sw.bb54:                                          ; preds = %if.then
  br label %sw.epilog

sw.bb55:                                          ; preds = %if.then
  br label %sw.epilog

sw.bb56:                                          ; preds = %if.then
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %sw.bb56, %sw.bb55, %sw.bb54, %sw.bb53
  call void @llvm.lifetime.start.p0(i64 8, ptr %value57) #9
  %23 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %call58 = call i64 @PyLong_AsLong(ptr noundef %23)
  store i64 %call58, ptr %value57, align 8, !tbaa !24
  %24 = load i64, ptr %value57, align 8, !tbaa !24
  %25 = load i64, ptr %value57, align 8, !tbaa !24
  %conv59 = trunc i64 %25 to i32
  %conv60 = sext i32 %conv59 to i64
  %cmp61 = icmp ne i64 %24, %conv60
  %lnot63 = xor i1 %cmp61, true
  %lnot65 = xor i1 %lnot63, true
  %lnot.ext66 = zext i1 %lnot65 to i32
  %conv67 = sext i32 %lnot.ext66 to i64
  %expval68 = call i64 @llvm.expect.i64(i64 %conv67, i64 0)
  %tobool69 = icmp ne i64 %expval68, 0
  br i1 %tobool69, label %if.then70, label %if.end86

if.then70:                                        ; preds = %sw.epilog
  call void @llvm.lifetime.start.p0(i64 8, ptr %zero71) #9
  store i64 0, ptr %zero71, align 8, !tbaa !24
  %26 = load i64, ptr %value57, align 8, !tbaa !24
  %cmp72 = icmp eq i64 %26, -1
  br i1 %cmp72, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then70
  %call74 = call ptr @PyErr_Occurred()
  %tobool75 = icmp ne ptr %call74, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then70
  %27 = phi i1 [ false, %if.then70 ], [ %tobool75, %land.rhs ]
  %lnot76 = xor i1 %27, true
  %lnot78 = xor i1 %lnot76, true
  %lnot.ext79 = zext i1 %lnot78 to i32
  %conv80 = sext i32 %lnot.ext79 to i64
  %expval81 = call i64 @llvm.expect.i64(i64 %conv80, i64 0)
  %tobool82 = icmp ne i64 %expval81, 0
  br i1 %tobool82, label %if.then83, label %if.end84

if.then83:                                        ; preds = %land.end
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup85

if.end84:                                         ; preds = %land.end
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup85

cleanup85:                                        ; preds = %if.end84, %if.then83
  call void @llvm.lifetime.end.p0(i64 8, ptr %zero71) #9
  br label %cleanup88

if.end86:                                         ; preds = %sw.epilog
  %28 = load i64, ptr %value57, align 8, !tbaa !24
  %conv87 = trunc i64 %28 to i32
  store i32 %conv87, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup88

cleanup88:                                        ; preds = %if.end86, %cleanup85
  call void @llvm.lifetime.end.p0(i64 8, ptr %value57) #9
  br label %cleanup89

cleanup89:                                        ; preds = %cleanup88, %cleanup52, %cleanup, %sw.bb6, %sw.bb5, %sw.bb
  call void @llvm.lifetime.end.p0(i64 8, ptr %digits) #9
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup98 [
    i32 3, label %raise_overflow
  ]

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %val90) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #9
  %29 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %call91 = call ptr @__Pyx_PyNumber_IntOrLong(ptr noundef %29)
  store ptr %call91, ptr %tmp, align 8, !tbaa !4
  %30 = load ptr, ptr %tmp, align 8, !tbaa !4
  %tobool92 = icmp ne ptr %30, null
  br i1 %tobool92, label %if.end94, label %if.then93

if.then93:                                        ; preds = %if.else
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup96

if.end94:                                         ; preds = %if.else
  %31 = load ptr, ptr %tmp, align 8, !tbaa !4
  %call95 = call i32 @__Pyx_PyInt_As_int(ptr noundef %31)
  store i32 %call95, ptr %val90, align 4, !tbaa !10
  %32 = load ptr, ptr %tmp, align 8, !tbaa !4
  call void @Py_DECREF(ptr noundef %32)
  %33 = load i32, ptr %val90, align 4, !tbaa !10
  store i32 %33, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup96

cleanup96:                                        ; preds = %if.end94, %if.then93
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %val90) #9
  br label %cleanup98

raise_overflow:                                   ; preds = %cleanup89
  %34 = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !4
  call void @PyErr_SetString(ptr noundef %34, ptr noundef @.str.94)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup98

raise_neg_overflow:                               ; No predecessors!
  %35 = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !4
  call void @PyErr_SetString(ptr noundef %35, ptr noundef @.str.95)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup98

cleanup98:                                        ; preds = %raise_neg_overflow, %raise_overflow, %cleanup89, %cleanup96
  call void @llvm.lifetime.end.p0(i64 4, ptr %is_unsigned) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %const_zero) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %neg_one) #9
  %36 = load i32, ptr %retval, align 4
  ret i32 %36
}

; Function Attrs: nounwind uwtable
define internal i32 @__Pyx__ArgTypeTest(ptr noundef %obj, ptr noundef %type, ptr noundef %name, i32 noundef %exact) #0 {
entry:
  %retval = alloca i32, align 4
  %obj.addr = alloca ptr, align 8
  %type.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %exact.addr = alloca i32, align 4
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !4
  store ptr %type, ptr %type.addr, align 8, !tbaa !4
  store ptr %name, ptr %name.addr, align 8, !tbaa !4
  store i32 %exact, ptr %exact.addr, align 4, !tbaa !10
  %0 = load ptr, ptr %type.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  %lnot = xor i1 %tobool, true
  %lnot1 = xor i1 %lnot, true
  %lnot2 = xor i1 %lnot1, true
  %lnot.ext = zext i1 %lnot2 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool3 = icmp ne i64 %expval, 0
  br i1 %tobool3, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !4
  call void @PyErr_SetString(ptr noundef %1, ptr noundef @.str.100)
  store i32 0, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %2 = load i32, ptr %exact.addr, align 4, !tbaa !10
  %tobool4 = icmp ne i32 %2, 0
  br i1 %tobool4, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.else
  br label %if.end17

if.else6:                                         ; preds = %if.else
  %3 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %call = call ptr @Py_TYPE(ptr noundef %3)
  %4 = load ptr, ptr %type.addr, align 8, !tbaa !4
  %call7 = call i32 @__Pyx_IsSubtype(ptr noundef %call, ptr noundef %4)
  %tobool8 = icmp ne i32 %call7, 0
  %lnot9 = xor i1 %tobool8, true
  %lnot11 = xor i1 %lnot9, true
  %lnot.ext12 = zext i1 %lnot11 to i32
  %conv13 = sext i32 %lnot.ext12 to i64
  %expval14 = call i64 @llvm.expect.i64(i64 %conv13, i64 1)
  %tobool15 = icmp ne i64 %expval14, 0
  br i1 %tobool15, label %if.then16, label %if.end

if.then16:                                        ; preds = %if.else6
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.else6
  br label %if.end17

if.end17:                                         ; preds = %if.end, %if.then5
  br label %if.end18

if.end18:                                         ; preds = %if.end17
  %5 = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !4
  %6 = load ptr, ptr %name.addr, align 8, !tbaa !4
  %7 = load ptr, ptr %type.addr, align 8, !tbaa !4
  %tp_name = getelementptr inbounds %struct._typeobject, ptr %7, i32 0, i32 1
  %8 = load ptr, ptr %tp_name, align 8, !tbaa !38
  %9 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %call19 = call ptr @Py_TYPE(ptr noundef %9)
  %tp_name20 = getelementptr inbounds %struct._typeobject, ptr %call19, i32 0, i32 1
  %10 = load ptr, ptr %tp_name20, align 8, !tbaa !38
  %call21 = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %5, ptr noundef @.str.101, ptr noundef %6, ptr noundef %8, ptr noundef %10)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end18, %if.then16, %if.then
  %11 = load i32, ptr %retval, align 4
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal ptr @__pyx_pf_11cfunc_dot_to_py_78__Pyx_CFunc_double____tuple____float____float____float____float____int___to_py_wrap(ptr noundef %__pyx_self, ptr noundef %__pyx_v_args, float noundef %__pyx_v_xa, float noundef %__pyx_v_xb, float noundef %__pyx_v_xtol, float noundef %__pyx_v_rtol, i32 noundef %__pyx_v_mitr) #0 {
entry:
  %__pyx_self.addr = alloca ptr, align 8
  %__pyx_v_args.addr = alloca ptr, align 8
  %__pyx_v_xa.addr = alloca float, align 4
  %__pyx_v_xb.addr = alloca float, align 4
  %__pyx_v_xtol.addr = alloca float, align 4
  %__pyx_v_rtol.addr = alloca float, align 4
  %__pyx_v_mitr.addr = alloca i32, align 4
  %__pyx_cur_scope = alloca ptr, align 8
  %__pyx_outer_scope = alloca ptr, align 8
  %__pyx_r = alloca ptr, align 8
  %__pyx_t_1 = alloca double, align 8
  %__pyx_t_2 = alloca ptr, align 8
  %__pyx_lineno = alloca i32, align 4
  %__pyx_filename = alloca ptr, align 8
  %__pyx_clineno = alloca i32, align 4
  store ptr %__pyx_self, ptr %__pyx_self.addr, align 8, !tbaa !4
  store ptr %__pyx_v_args, ptr %__pyx_v_args.addr, align 8, !tbaa !4
  store float %__pyx_v_xa, ptr %__pyx_v_xa.addr, align 4, !tbaa !34
  store float %__pyx_v_xb, ptr %__pyx_v_xb.addr, align 4, !tbaa !34
  store float %__pyx_v_xtol, ptr %__pyx_v_xtol.addr, align 4, !tbaa !34
  store float %__pyx_v_rtol, ptr %__pyx_v_rtol.addr, align 4, !tbaa !34
  store i32 %__pyx_v_mitr, ptr %__pyx_v_mitr.addr, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pyx_cur_scope) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pyx_outer_scope) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pyx_r) #9
  store ptr null, ptr %__pyx_r, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pyx_t_1) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pyx_t_2) #9
  store ptr null, ptr %__pyx_t_2, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %__pyx_lineno) #9
  store i32 0, ptr %__pyx_lineno, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pyx_filename) #9
  store ptr null, ptr %__pyx_filename, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %__pyx_clineno) #9
  store i32 0, ptr %__pyx_clineno, align 4, !tbaa !10
  %0 = load ptr, ptr %__pyx_self.addr, align 8, !tbaa !4
  %func_closure = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %0, i32 0, i32 7
  %1 = load ptr, ptr %func_closure, align 8, !tbaa !46
  store ptr %1, ptr %__pyx_outer_scope, align 8, !tbaa !4
  %2 = load ptr, ptr %__pyx_outer_scope, align 8, !tbaa !4
  store ptr %2, ptr %__pyx_cur_scope, align 8, !tbaa !4
  %3 = load ptr, ptr %__pyx_r, align 8, !tbaa !4
  call void @Py_XDECREF(ptr noundef %3)
  %4 = load ptr, ptr %__pyx_cur_scope, align 8, !tbaa !4
  %__pyx_v_f = getelementptr inbounds %struct.__pyx_obj___pyx_scope_struct____Pyx_CFunc_double____tuple____float____float____float____float____int___to_py, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %__pyx_v_f, align 8, !tbaa !32
  %6 = load ptr, ptr %__pyx_v_args.addr, align 8, !tbaa !4
  %7 = load float, ptr %__pyx_v_xa.addr, align 4, !tbaa !34
  %8 = load float, ptr %__pyx_v_xb.addr, align 4, !tbaa !34
  %9 = load float, ptr %__pyx_v_xtol.addr, align 4, !tbaa !34
  %10 = load float, ptr %__pyx_v_rtol.addr, align 4, !tbaa !34
  %11 = load i32, ptr %__pyx_v_mitr.addr, align 4, !tbaa !10
  %call = call double %5(ptr noundef %6, float noundef %7, float noundef %8, float noundef %9, float noundef %10, i32 noundef %11)
  store double %call, ptr %__pyx_t_1, align 8, !tbaa !8
  %12 = load double, ptr %__pyx_t_1, align 8, !tbaa !8
  %cmp = fcmp oeq double %12, -1.000000e+00
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %call1 = call ptr @PyErr_Occurred()
  %tobool = icmp ne ptr %call1, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %13 = phi i1 [ false, %entry ], [ %tobool, %land.rhs ]
  %lnot = xor i1 %13, true
  %lnot2 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot2 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool3 = icmp ne i64 %expval, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %land.end
  %14 = load ptr, ptr getelementptr inbounds ([2 x ptr], ptr @__pyx_f, i64 0, i64 1), align 8, !tbaa !4
  store ptr %14, ptr %__pyx_filename, align 8, !tbaa !4
  %15 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 67, ptr %__pyx_lineno, align 4, !tbaa !10
  %16 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 3322, ptr %__pyx_clineno, align 4, !tbaa !10
  %17 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  br label %__pyx_L1_error

if.end:                                           ; preds = %land.end
  %18 = load double, ptr %__pyx_t_1, align 8, !tbaa !8
  %call4 = call ptr @PyFloat_FromDouble(double noundef %18)
  store ptr %call4, ptr %__pyx_t_2, align 8, !tbaa !4
  %19 = load ptr, ptr %__pyx_t_2, align 8, !tbaa !4
  %tobool5 = icmp ne ptr %19, null
  %lnot6 = xor i1 %tobool5, true
  %lnot8 = xor i1 %lnot6, true
  %lnot10 = xor i1 %lnot8, true
  %lnot.ext11 = zext i1 %lnot10 to i32
  %conv12 = sext i32 %lnot.ext11 to i64
  %expval13 = call i64 @llvm.expect.i64(i64 %conv12, i64 0)
  %tobool14 = icmp ne i64 %expval13, 0
  br i1 %tobool14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end
  %20 = load ptr, ptr getelementptr inbounds ([2 x ptr], ptr @__pyx_f, i64 0, i64 1), align 8, !tbaa !4
  store ptr %20, ptr %__pyx_filename, align 8, !tbaa !4
  %21 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 67, ptr %__pyx_lineno, align 4, !tbaa !10
  %22 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 3323, ptr %__pyx_clineno, align 4, !tbaa !10
  %23 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  br label %__pyx_L1_error

if.end16:                                         ; preds = %if.end
  %24 = load ptr, ptr %__pyx_t_2, align 8, !tbaa !4
  store ptr %24, ptr %__pyx_r, align 8, !tbaa !4
  store ptr null, ptr %__pyx_t_2, align 8, !tbaa !4
  br label %__pyx_L0

__pyx_L1_error:                                   ; preds = %if.then15, %if.then
  %25 = load ptr, ptr %__pyx_t_2, align 8, !tbaa !4
  call void @Py_XDECREF(ptr noundef %25)
  %26 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  %27 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  %28 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  call void @__Pyx_AddTraceback(ptr noundef @.str.84, i32 noundef %26, i32 noundef %27, ptr noundef %28)
  store ptr null, ptr %__pyx_r, align 8, !tbaa !4
  br label %__pyx_L0

__pyx_L0:                                         ; preds = %__pyx_L1_error, %if.end16
  %29 = load ptr, ptr %__pyx_r, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 4, ptr %__pyx_clineno) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pyx_filename) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %__pyx_lineno) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pyx_t_2) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pyx_t_1) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pyx_r) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pyx_outer_scope) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pyx_cur_scope) #9
  ret ptr %29
}

declare i32 @PyDict_Next(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @PyUnicode_GET_LENGTH(ptr noundef %op) #5 {
entry:
  %op.addr = alloca ptr, align 8
  store ptr %op, ptr %op.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %op.addr, align 8, !tbaa !4
  %length = getelementptr inbounds %struct.PyASCIIObject, ptr %0, i32 0, i32 1
  %1 = load i64, ptr %length, align 8, !tbaa !102
  ret i64 %1
}

declare i32 @PyUnicode_Compare(ptr noundef, ptr noundef) #4

; Function Attrs: nounwind uwtable
define internal void @__Pyx_RaiseDoubleKeywordsError(ptr noundef %func_name, ptr noundef %kw_name) #0 {
entry:
  %func_name.addr = alloca ptr, align 8
  %kw_name.addr = alloca ptr, align 8
  store ptr %func_name, ptr %func_name.addr, align 8, !tbaa !4
  store ptr %kw_name, ptr %kw_name.addr, align 8, !tbaa !4
  %0 = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !4
  %1 = load ptr, ptr %func_name.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %kw_name.addr, align 8, !tbaa !4
  %call = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %0, ptr noundef @.str.93, ptr noundef %1, ptr noundef %2)
  ret void
}

declare i64 @PyLong_AsLong(ptr noundef) #4

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @__Pyx_PyNumber_IntOrLong(ptr noundef %x) #5 {
entry:
  %retval = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %m = alloca ptr, align 8
  %name = alloca ptr, align 8
  %res = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %x, ptr %x.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %m) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %name) #9
  store ptr null, ptr %name, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #9
  store ptr null, ptr %res, align 8, !tbaa !4
  %0 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %call = call ptr @Py_TYPE(ptr noundef %0)
  %call1 = call i32 @PyType_HasFeature(ptr noundef %call, i64 noundef 16777216)
  %tobool = icmp ne i32 %call1, 0
  %lnot = xor i1 %tobool, true
  %lnot2 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot2 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1)
  %tobool3 = icmp ne i64 %expval, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %x.addr, align 8, !tbaa !4
  call void @Py_INCREF(ptr noundef %1)
  %2 = load ptr, ptr %x.addr, align 8, !tbaa !4
  store ptr %2, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %call4 = call ptr @Py_TYPE(ptr noundef %3)
  %tp_as_number = getelementptr inbounds %struct._typeobject, ptr %call4, i32 0, i32 10
  %4 = load ptr, ptr %tp_as_number, align 8, !tbaa !103
  store ptr %4, ptr %m, align 8, !tbaa !4
  %5 = load ptr, ptr %m, align 8, !tbaa !4
  %tobool5 = icmp ne ptr %5, null
  br i1 %tobool5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end
  %6 = load ptr, ptr %m, align 8, !tbaa !4
  %nb_int = getelementptr inbounds %struct.PyNumberMethods, ptr %6, i32 0, i32 16
  %7 = load ptr, ptr %nb_int, align 8, !tbaa !104
  %tobool6 = icmp ne ptr %7, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  %8 = phi i1 [ false, %if.end ], [ %tobool6, %land.rhs ]
  %lnot7 = xor i1 %8, true
  %lnot9 = xor i1 %lnot7, true
  %lnot.ext10 = zext i1 %lnot9 to i32
  %conv11 = sext i32 %lnot.ext10 to i64
  %expval12 = call i64 @llvm.expect.i64(i64 %conv11, i64 1)
  %tobool13 = icmp ne i64 %expval12, 0
  br i1 %tobool13, label %if.then14, label %if.end17

if.then14:                                        ; preds = %land.end
  store ptr @.str.96, ptr %name, align 8, !tbaa !4
  %9 = load ptr, ptr %m, align 8, !tbaa !4
  %nb_int15 = getelementptr inbounds %struct.PyNumberMethods, ptr %9, i32 0, i32 16
  %10 = load ptr, ptr %nb_int15, align 8, !tbaa !104
  %11 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %call16 = call ptr %10(ptr noundef %11)
  store ptr %call16, ptr %res, align 8, !tbaa !4
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %land.end
  %12 = load ptr, ptr %res, align 8, !tbaa !4
  %tobool18 = icmp ne ptr %12, null
  %lnot19 = xor i1 %tobool18, true
  %lnot21 = xor i1 %lnot19, true
  %lnot.ext22 = zext i1 %lnot21 to i32
  %conv23 = sext i32 %lnot.ext22 to i64
  %expval24 = call i64 @llvm.expect.i64(i64 %conv23, i64 1)
  %tobool25 = icmp ne i64 %expval24, 0
  br i1 %tobool25, label %if.then26, label %if.else

if.then26:                                        ; preds = %if.end17
  %13 = load ptr, ptr %res, align 8, !tbaa !4
  %call27 = call i32 @Py_IS_TYPE(ptr noundef %13, ptr noundef @PyLong_Type)
  %tobool28 = icmp ne i32 %call27, 0
  %lnot29 = xor i1 %tobool28, true
  %lnot31 = xor i1 %lnot29, true
  %lnot33 = xor i1 %lnot31, true
  %lnot.ext34 = zext i1 %lnot33 to i32
  %conv35 = sext i32 %lnot.ext34 to i64
  %expval36 = call i64 @llvm.expect.i64(i64 %conv35, i64 0)
  %tobool37 = icmp ne i64 %expval36, 0
  br i1 %tobool37, label %if.then38, label %if.end40

if.then38:                                        ; preds = %if.then26
  %14 = load ptr, ptr %res, align 8, !tbaa !4
  %15 = load ptr, ptr %name, align 8, !tbaa !4
  %call39 = call ptr @__Pyx_PyNumber_IntOrLongWrongResultType(ptr noundef %14, ptr noundef %15)
  store ptr %call39, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end40:                                         ; preds = %if.then26
  br label %if.end45

if.else:                                          ; preds = %if.end17
  %call41 = call ptr @PyErr_Occurred()
  %tobool42 = icmp ne ptr %call41, null
  br i1 %tobool42, label %if.end44, label %if.then43

if.then43:                                        ; preds = %if.else
  %16 = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !4
  call void @PyErr_SetString(ptr noundef %16, ptr noundef @.str.97)
  br label %if.end44

if.end44:                                         ; preds = %if.then43, %if.else
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %if.end40
  %17 = load ptr, ptr %res, align 8, !tbaa !4
  store ptr %17, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %if.then38, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %name) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %m) #9
  %18 = load ptr, ptr %retval, align 8
  ret ptr %18
}

; Function Attrs: nounwind uwtable
define internal ptr @__Pyx_PyNumber_IntOrLongWrongResultType(ptr noundef %result, ptr noundef %type_name) #0 {
entry:
  %retval = alloca ptr, align 8
  %result.addr = alloca ptr, align 8
  %type_name.addr = alloca ptr, align 8
  store ptr %result, ptr %result.addr, align 8, !tbaa !4
  store ptr %type_name, ptr %type_name.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %result.addr, align 8, !tbaa !4
  %call = call ptr @Py_TYPE(ptr noundef %0)
  %call1 = call i32 @PyType_HasFeature(ptr noundef %call, i64 noundef 16777216)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @PyExc_DeprecationWarning, align 8, !tbaa !4
  %2 = load ptr, ptr %result.addr, align 8, !tbaa !4
  %call2 = call ptr @Py_TYPE(ptr noundef %2)
  %tp_name = getelementptr inbounds %struct._typeobject, ptr %call2, i32 0, i32 1
  %3 = load ptr, ptr %tp_name, align 8, !tbaa !38
  %call3 = call i32 (ptr, i64, ptr, ...) @PyErr_WarnFormat(ptr noundef %1, i64 noundef 1, ptr noundef @.str.98, ptr noundef %3)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  %4 = load ptr, ptr %result.addr, align 8, !tbaa !4
  call void @Py_DECREF(ptr noundef %4)
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %if.then
  %5 = load ptr, ptr %result.addr, align 8, !tbaa !4
  store ptr %5, ptr %retval, align 8
  br label %return

if.end6:                                          ; preds = %entry
  %6 = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !4
  %7 = load ptr, ptr %type_name.addr, align 8, !tbaa !4
  %8 = load ptr, ptr %type_name.addr, align 8, !tbaa !4
  %9 = load ptr, ptr %result.addr, align 8, !tbaa !4
  %call7 = call ptr @Py_TYPE(ptr noundef %9)
  %tp_name8 = getelementptr inbounds %struct._typeobject, ptr %call7, i32 0, i32 1
  %10 = load ptr, ptr %tp_name8, align 8, !tbaa !38
  %call9 = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %6, ptr noundef @.str.99, ptr noundef %7, ptr noundef %8, ptr noundef %10)
  %11 = load ptr, ptr %result.addr, align 8, !tbaa !4
  call void @Py_DECREF(ptr noundef %11)
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end6, %if.end, %if.then5
  %12 = load ptr, ptr %retval, align 8
  ret ptr %12
}

declare i32 @PyErr_WarnFormat(ptr noundef, i64 noundef, ptr noundef, ...) #4

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @__Pyx_IsSubtype(ptr noundef %a, ptr noundef %b) #5 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %mro = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %i = alloca i64, align 8
  %n = alloca i64, align 8
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store ptr %b, ptr %b.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %mro) #9
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup13

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %tp_mro = getelementptr inbounds %struct._typeobject, ptr %2, i32 0, i32 41
  %3 = load ptr, ptr %tp_mro, align 8, !tbaa !106
  store ptr %3, ptr %mro, align 8, !tbaa !4
  %4 = load ptr, ptr %mro, align 8, !tbaa !4
  %tobool = icmp ne ptr %4, null
  %lnot = xor i1 %tobool, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1)
  %tobool2 = icmp ne i64 %expval, 0
  br i1 %tobool2, label %if.then3, label %if.end11

if.then3:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #9
  %5 = load ptr, ptr %mro, align 8, !tbaa !4
  %call = call i64 @PyTuple_GET_SIZE(ptr noundef %5)
  store i64 %call, ptr %n, align 8, !tbaa !24
  store i64 0, ptr %i, align 8, !tbaa !24
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then3
  %6 = load i64, ptr %i, align 8, !tbaa !24
  %7 = load i64, ptr %n, align 8, !tbaa !24
  %cmp4 = icmp slt i64 %6, %7
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %mro, align 8, !tbaa !4
  %ob_item = getelementptr inbounds %struct.PyTupleObject, ptr %8, i32 0, i32 1
  %9 = load i64, ptr %i, align 8, !tbaa !24
  %arrayidx = getelementptr inbounds [1 x ptr], ptr %ob_item, i64 0, i64 %9
  %10 = load ptr, ptr %arrayidx, align 8, !tbaa !4
  %11 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %cmp6 = icmp eq ptr %10, %11
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %for.body
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end9:                                          ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end9
  %12 = load i64, ptr %i, align 8, !tbaa !24
  %inc = add nsw i64 %12, 1
  store i64 %inc, ptr %i, align 8, !tbaa !24
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then8
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #9
  br label %cleanup13

if.end11:                                         ; preds = %if.end
  %13 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %14 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %call12 = call i32 @__Pyx_InBases(ptr noundef %13, ptr noundef %14)
  store i32 %call12, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup13

cleanup13:                                        ; preds = %if.end11, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %mro) #9
  %15 = load i32, ptr %retval, align 4
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define internal i32 @__Pyx_InBases(ptr noundef %a, ptr noundef %b) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store ptr %b, ptr %b.addr, align 8, !tbaa !4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %tp_base = getelementptr inbounds %struct._typeobject, ptr %1, i32 0, i32 30
  %2 = load ptr, ptr %tp_base, align 8, !tbaa !107
  store ptr %2, ptr %a.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %4 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %3, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %5 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %cmp1 = icmp eq ptr %5, @PyBaseObject_Type
  %conv = zext i1 %cmp1 to i32
  store i32 %conv, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then
  %6 = load i32, ptr %retval, align 4
  ret i32 %6
}

declare ptr @PyFloat_FromDouble(double noundef) #4

; Function Attrs: nounwind uwtable
define internal i32 @__Pyx_carray_from_py_double(ptr noundef %__pyx_v_o, ptr noundef %__pyx_v_v, i64 noundef %__pyx_v_length) #0 {
entry:
  %retval = alloca i32, align 4
  %__pyx_v_o.addr = alloca ptr, align 8
  %__pyx_v_v.addr = alloca ptr, align 8
  %__pyx_v_length.addr = alloca i64, align 8
  %__pyx_v_i = alloca i64, align 8
  %__pyx_v_item = alloca ptr, align 8
  %__pyx_r = alloca i32, align 4
  %__pyx_t_1 = alloca ptr, align 8
  %__pyx_t_2 = alloca ptr, align 8
  %__pyx_t_3 = alloca ptr, align 8
  %__pyx_t_4 = alloca i64, align 8
  %__pyx_t_5 = alloca i32, align 4
  %__pyx_t_6 = alloca i32, align 4
  %__pyx_t_7 = alloca ptr, align 8
  %__pyx_t_8 = alloca i64, align 8
  %__pyx_t_9 = alloca ptr, align 8
  %__pyx_t_10 = alloca ptr, align 8
  %__pyx_t_11 = alloca double, align 8
  %__pyx_t_12 = alloca ptr, align 8
  %__pyx_lineno = alloca i32, align 4
  %__pyx_filename = alloca ptr, align 8
  %__pyx_clineno = alloca i32, align 4
  %exc_type = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca ptr, align 8
  store ptr %__pyx_v_o, ptr %__pyx_v_o.addr, align 8, !tbaa !4
  store ptr %__pyx_v_v, ptr %__pyx_v_v.addr, align 8, !tbaa !4
  store i64 %__pyx_v_length, ptr %__pyx_v_length.addr, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pyx_v_i) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pyx_v_item) #9
  store ptr null, ptr %__pyx_v_item, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %__pyx_r) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pyx_t_1) #9
  store ptr null, ptr %__pyx_t_1, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pyx_t_2) #9
  store ptr null, ptr %__pyx_t_2, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pyx_t_3) #9
  store ptr null, ptr %__pyx_t_3, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pyx_t_4) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %__pyx_t_5) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %__pyx_t_6) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pyx_t_7) #9
  store ptr null, ptr %__pyx_t_7, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pyx_t_8) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pyx_t_9) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pyx_t_10) #9
  store ptr null, ptr %__pyx_t_10, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pyx_t_11) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pyx_t_12) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %__pyx_lineno) #9
  store i32 0, ptr %__pyx_lineno, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pyx_filename) #9
  store ptr null, ptr %__pyx_filename, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %__pyx_clineno) #9
  store i32 0, ptr %__pyx_clineno, align 4, !tbaa !10
  %0 = load i64, ptr %__pyx_v_length.addr, align 8, !tbaa !24
  store i64 %0, ptr %__pyx_v_i, align 8, !tbaa !24
  call void @PyErr_GetExcInfo(ptr noundef %__pyx_t_1, ptr noundef %__pyx_t_2, ptr noundef %__pyx_t_3)
  %1 = load ptr, ptr %__pyx_v_o.addr, align 8, !tbaa !4
  %call = call i64 @PyObject_Size(ptr noundef %1)
  store i64 %call, ptr %__pyx_t_4, align 8, !tbaa !24
  %2 = load i64, ptr %__pyx_t_4, align 8, !tbaa !24
  %cmp = icmp eq i64 %2, -1
  %lnot = xor i1 %cmp, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr getelementptr inbounds ([2 x ptr], ptr @__pyx_f, i64 0, i64 1), align 8, !tbaa !4
  store ptr %3, ptr %__pyx_filename, align 8, !tbaa !4
  %4 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 80, ptr %__pyx_lineno, align 4, !tbaa !10
  %5 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 3483, ptr %__pyx_clineno, align 4, !tbaa !10
  %6 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  br label %__pyx_L3_error

if.end:                                           ; preds = %entry
  %7 = load i64, ptr %__pyx_t_4, align 8, !tbaa !24
  store i64 %7, ptr %__pyx_v_i, align 8, !tbaa !24
  %8 = load ptr, ptr %__pyx_t_1, align 8, !tbaa !4
  call void @Py_XDECREF(ptr noundef %8)
  store ptr null, ptr %__pyx_t_1, align 8, !tbaa !4
  %9 = load ptr, ptr %__pyx_t_2, align 8, !tbaa !4
  call void @Py_XDECREF(ptr noundef %9)
  store ptr null, ptr %__pyx_t_2, align 8, !tbaa !4
  %10 = load ptr, ptr %__pyx_t_3, align 8, !tbaa !4
  call void @Py_XDECREF(ptr noundef %10)
  store ptr null, ptr %__pyx_t_3, align 8, !tbaa !4
  br label %__pyx_L8_try_end

__pyx_L3_error:                                   ; preds = %if.then
  %11 = load ptr, ptr @__pyx_builtin_TypeError, align 8, !tbaa !4
  %call2 = call i32 @PyErr_ExceptionMatches(ptr noundef %11)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %__pyx_L3_error
  %12 = load ptr, ptr @__pyx_builtin_OverflowError, align 8, !tbaa !4
  %call4 = call i32 @PyErr_ExceptionMatches(ptr noundef %12)
  %tobool5 = icmp ne i32 %call4, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %__pyx_L3_error
  %13 = phi i1 [ true, %__pyx_L3_error ], [ %tobool5, %lor.rhs ]
  %lor.ext = zext i1 %13 to i32
  store i32 %lor.ext, ptr %__pyx_t_5, align 4, !tbaa !10
  %14 = load i32, ptr %__pyx_t_5, align 4, !tbaa !10
  %tobool6 = icmp ne i32 %14, 0
  br i1 %tobool6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %lor.end
  call void @PyErr_Restore(ptr noundef null, ptr noundef null, ptr noundef null)
  br label %__pyx_L4_exception_handled

if.end8:                                          ; preds = %lor.end
  br label %__pyx_L5_except_error

__pyx_L5_except_error:                            ; preds = %if.end8
  %15 = load ptr, ptr %__pyx_t_1, align 8, !tbaa !4
  %16 = load ptr, ptr %__pyx_t_2, align 8, !tbaa !4
  %17 = load ptr, ptr %__pyx_t_3, align 8, !tbaa !4
  call void @PyErr_SetExcInfo(ptr noundef %15, ptr noundef %16, ptr noundef %17)
  br label %__pyx_L1_error

__pyx_L4_exception_handled:                       ; preds = %if.then7
  %18 = load ptr, ptr %__pyx_t_1, align 8, !tbaa !4
  %19 = load ptr, ptr %__pyx_t_2, align 8, !tbaa !4
  %20 = load ptr, ptr %__pyx_t_3, align 8, !tbaa !4
  call void @PyErr_SetExcInfo(ptr noundef %18, ptr noundef %19, ptr noundef %20)
  br label %__pyx_L8_try_end

__pyx_L8_try_end:                                 ; preds = %__pyx_L4_exception_handled, %if.end
  %21 = load i64, ptr %__pyx_v_i, align 8, !tbaa !24
  %22 = load i64, ptr %__pyx_v_length.addr, align 8, !tbaa !24
  %cmp9 = icmp eq i64 %21, %22
  %conv10 = zext i1 %cmp9 to i32
  %cmp11 = icmp ne i32 %conv10, 0
  %conv12 = zext i1 %cmp11 to i32
  store i32 %conv12, ptr %__pyx_t_6, align 4, !tbaa !10
  %23 = load i32, ptr %__pyx_t_6, align 4, !tbaa !10
  %tobool13 = icmp ne i32 %23, 0
  br i1 %tobool13, label %if.then14, label %if.end153

if.then14:                                        ; preds = %__pyx_L8_try_end
  store i64 0, ptr %__pyx_t_4, align 8, !tbaa !24
  %24 = load ptr, ptr %__pyx_v_o.addr, align 8, !tbaa !4
  %call15 = call i32 @Py_IS_TYPE(ptr noundef %24, ptr noundef @PyList_Type)
  %tobool16 = icmp ne i32 %call15, 0
  %lnot17 = xor i1 %tobool16, true
  %lnot19 = xor i1 %lnot17, true
  %lnot.ext20 = zext i1 %lnot19 to i32
  %conv21 = sext i32 %lnot.ext20 to i64
  %expval22 = call i64 @llvm.expect.i64(i64 %conv21, i64 1)
  %tobool23 = icmp ne i64 %expval22, 0
  br i1 %tobool23, label %if.then26, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then14
  %25 = load ptr, ptr %__pyx_v_o.addr, align 8, !tbaa !4
  %call24 = call i32 @Py_IS_TYPE(ptr noundef %25, ptr noundef @PyTuple_Type)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.then26, label %if.else

if.then26:                                        ; preds = %lor.lhs.false, %if.then14
  %26 = load ptr, ptr %__pyx_v_o.addr, align 8, !tbaa !4
  store ptr %26, ptr %__pyx_t_7, align 8, !tbaa !4
  %27 = load ptr, ptr %__pyx_t_7, align 8, !tbaa !4
  call void @Py_INCREF(ptr noundef %27)
  store i64 0, ptr %__pyx_t_8, align 8, !tbaa !24
  store ptr null, ptr %__pyx_t_9, align 8, !tbaa !4
  br label %if.end53

if.else:                                          ; preds = %lor.lhs.false
  store i64 -1, ptr %__pyx_t_8, align 8, !tbaa !24
  %28 = load ptr, ptr %__pyx_v_o.addr, align 8, !tbaa !4
  %call27 = call ptr @PyObject_GetIter(ptr noundef %28)
  store ptr %call27, ptr %__pyx_t_7, align 8, !tbaa !4
  %29 = load ptr, ptr %__pyx_t_7, align 8, !tbaa !4
  %tobool28 = icmp ne ptr %29, null
  %lnot29 = xor i1 %tobool28, true
  %lnot31 = xor i1 %lnot29, true
  %lnot33 = xor i1 %lnot31, true
  %lnot.ext34 = zext i1 %lnot33 to i32
  %conv35 = sext i32 %lnot.ext34 to i64
  %expval36 = call i64 @llvm.expect.i64(i64 %conv35, i64 0)
  %tobool37 = icmp ne i64 %expval36, 0
  br i1 %tobool37, label %if.then38, label %if.end39

if.then38:                                        ; preds = %if.else
  %30 = load ptr, ptr getelementptr inbounds ([2 x ptr], ptr @__pyx_f, i64 0, i64 1), align 8, !tbaa !4
  store ptr %30, ptr %__pyx_filename, align 8, !tbaa !4
  %31 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 84, ptr %__pyx_lineno, align 4, !tbaa !10
  %32 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 3557, ptr %__pyx_clineno, align 4, !tbaa !10
  %33 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  br label %__pyx_L1_error

if.end39:                                         ; preds = %if.else
  %34 = load ptr, ptr %__pyx_t_7, align 8, !tbaa !4
  %call40 = call ptr @Py_TYPE(ptr noundef %34)
  %tp_iternext = getelementptr inbounds %struct._typeobject, ptr %call40, i32 0, i32 26
  %35 = load ptr, ptr %tp_iternext, align 8, !tbaa !108
  store ptr %35, ptr %__pyx_t_9, align 8, !tbaa !4
  %36 = load ptr, ptr %__pyx_t_9, align 8, !tbaa !4
  %tobool41 = icmp ne ptr %36, null
  %lnot42 = xor i1 %tobool41, true
  %lnot44 = xor i1 %lnot42, true
  %lnot46 = xor i1 %lnot44, true
  %lnot.ext47 = zext i1 %lnot46 to i32
  %conv48 = sext i32 %lnot.ext47 to i64
  %expval49 = call i64 @llvm.expect.i64(i64 %conv48, i64 0)
  %tobool50 = icmp ne i64 %expval49, 0
  br i1 %tobool50, label %if.then51, label %if.end52

if.then51:                                        ; preds = %if.end39
  %37 = load ptr, ptr getelementptr inbounds ([2 x ptr], ptr @__pyx_f, i64 0, i64 1), align 8, !tbaa !4
  store ptr %37, ptr %__pyx_filename, align 8, !tbaa !4
  %38 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 84, ptr %__pyx_lineno, align 4, !tbaa !10
  %39 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 3559, ptr %__pyx_clineno, align 4, !tbaa !10
  %40 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  br label %__pyx_L1_error

if.end52:                                         ; preds = %if.end39
  br label %if.end53

if.end53:                                         ; preds = %if.end52, %if.then26
  br label %for.cond

for.cond:                                         ; preds = %if.end143, %if.end53
  %41 = load ptr, ptr %__pyx_t_9, align 8, !tbaa !4
  %tobool54 = icmp ne ptr %41, null
  %lnot55 = xor i1 %tobool54, true
  %lnot57 = xor i1 %lnot55, true
  %lnot59 = xor i1 %lnot57, true
  %lnot.ext60 = zext i1 %lnot59 to i32
  %conv61 = sext i32 %lnot.ext60 to i64
  %expval62 = call i64 @llvm.expect.i64(i64 %conv61, i64 1)
  %tobool63 = icmp ne i64 %expval62, 0
  br i1 %tobool63, label %if.then64, label %if.else90

if.then64:                                        ; preds = %for.cond
  %42 = load ptr, ptr %__pyx_t_7, align 8, !tbaa !4
  %call65 = call i32 @Py_IS_TYPE(ptr noundef %42, ptr noundef @PyList_Type)
  %tobool66 = icmp ne i32 %call65, 0
  %lnot67 = xor i1 %tobool66, true
  %lnot69 = xor i1 %lnot67, true
  %lnot.ext70 = zext i1 %lnot69 to i32
  %conv71 = sext i32 %lnot.ext70 to i64
  %expval72 = call i64 @llvm.expect.i64(i64 %conv71, i64 1)
  %tobool73 = icmp ne i64 %expval72, 0
  br i1 %tobool73, label %if.then74, label %if.else80

if.then74:                                        ; preds = %if.then64
  %43 = load i64, ptr %__pyx_t_8, align 8, !tbaa !24
  %44 = load ptr, ptr %__pyx_t_7, align 8, !tbaa !4
  %call75 = call i64 @PyList_GET_SIZE(ptr noundef %44)
  %cmp76 = icmp sge i64 %43, %call75
  br i1 %cmp76, label %if.then78, label %if.end79

if.then78:                                        ; preds = %if.then74
  br label %for.end

if.end79:                                         ; preds = %if.then74
  %45 = load ptr, ptr %__pyx_t_7, align 8, !tbaa !4
  %ob_item = getelementptr inbounds %struct.PyListObject, ptr %45, i32 0, i32 1
  %46 = load ptr, ptr %ob_item, align 8, !tbaa !109
  %47 = load i64, ptr %__pyx_t_8, align 8, !tbaa !24
  %arrayidx = getelementptr inbounds ptr, ptr %46, i64 %47
  %48 = load ptr, ptr %arrayidx, align 8, !tbaa !4
  store ptr %48, ptr %__pyx_t_10, align 8, !tbaa !4
  %49 = load ptr, ptr %__pyx_t_10, align 8, !tbaa !4
  call void @Py_INCREF(ptr noundef %49)
  %50 = load i64, ptr %__pyx_t_8, align 8, !tbaa !24
  %inc = add nsw i64 %50, 1
  store i64 %inc, ptr %__pyx_t_8, align 8, !tbaa !24
  br label %if.end89

if.else80:                                        ; preds = %if.then64
  %51 = load i64, ptr %__pyx_t_8, align 8, !tbaa !24
  %52 = load ptr, ptr %__pyx_t_7, align 8, !tbaa !4
  %call81 = call i64 @PyTuple_GET_SIZE(ptr noundef %52)
  %cmp82 = icmp sge i64 %51, %call81
  br i1 %cmp82, label %if.then84, label %if.end85

if.then84:                                        ; preds = %if.else80
  br label %for.end

if.end85:                                         ; preds = %if.else80
  %53 = load ptr, ptr %__pyx_t_7, align 8, !tbaa !4
  %ob_item86 = getelementptr inbounds %struct.PyTupleObject, ptr %53, i32 0, i32 1
  %54 = load i64, ptr %__pyx_t_8, align 8, !tbaa !24
  %arrayidx87 = getelementptr inbounds [1 x ptr], ptr %ob_item86, i64 0, i64 %54
  %55 = load ptr, ptr %arrayidx87, align 8, !tbaa !4
  store ptr %55, ptr %__pyx_t_10, align 8, !tbaa !4
  %56 = load ptr, ptr %__pyx_t_10, align 8, !tbaa !4
  call void @Py_INCREF(ptr noundef %56)
  %57 = load i64, ptr %__pyx_t_8, align 8, !tbaa !24
  %inc88 = add nsw i64 %57, 1
  store i64 %inc88, ptr %__pyx_t_8, align 8, !tbaa !24
  br label %if.end89

if.end89:                                         ; preds = %if.end85, %if.end79
  br label %if.end120

if.else90:                                        ; preds = %for.cond
  %58 = load ptr, ptr %__pyx_t_9, align 8, !tbaa !4
  %59 = load ptr, ptr %__pyx_t_7, align 8, !tbaa !4
  %call91 = call ptr %58(ptr noundef %59)
  store ptr %call91, ptr %__pyx_t_10, align 8, !tbaa !4
  %60 = load ptr, ptr %__pyx_t_10, align 8, !tbaa !4
  %tobool92 = icmp ne ptr %60, null
  %lnot93 = xor i1 %tobool92, true
  %lnot95 = xor i1 %lnot93, true
  %lnot97 = xor i1 %lnot95, true
  %lnot.ext98 = zext i1 %lnot97 to i32
  %conv99 = sext i32 %lnot.ext98 to i64
  %expval100 = call i64 @llvm.expect.i64(i64 %conv99, i64 0)
  %tobool101 = icmp ne i64 %expval100, 0
  br i1 %tobool101, label %if.then102, label %if.end119

if.then102:                                       ; preds = %if.else90
  call void @llvm.lifetime.start.p0(i64 8, ptr %exc_type) #9
  %call103 = call ptr @PyErr_Occurred()
  store ptr %call103, ptr %exc_type, align 8, !tbaa !4
  %61 = load ptr, ptr %exc_type, align 8, !tbaa !4
  %tobool104 = icmp ne ptr %61, null
  br i1 %tobool104, label %if.then105, label %if.end118

if.then105:                                       ; preds = %if.then102
  %62 = load ptr, ptr %exc_type, align 8, !tbaa !4
  %63 = load ptr, ptr @PyExc_StopIteration, align 8, !tbaa !4
  %call106 = call i32 @__Pyx_PyErr_GivenExceptionMatches(ptr noundef %62, ptr noundef %63)
  %tobool107 = icmp ne i32 %call106, 0
  %lnot108 = xor i1 %tobool107, true
  %lnot110 = xor i1 %lnot108, true
  %lnot.ext111 = zext i1 %lnot110 to i32
  %conv112 = sext i32 %lnot.ext111 to i64
  %expval113 = call i64 @llvm.expect.i64(i64 %conv112, i64 1)
  %tobool114 = icmp ne i64 %expval113, 0
  br i1 %tobool114, label %if.then115, label %if.else116

if.then115:                                       ; preds = %if.then105
  call void @PyErr_Clear()
  br label %if.end117

if.else116:                                       ; preds = %if.then105
  %64 = load ptr, ptr getelementptr inbounds ([2 x ptr], ptr @__pyx_f, i64 0, i64 1), align 8, !tbaa !4
  store ptr %64, ptr %__pyx_filename, align 8, !tbaa !4
  %65 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 84, ptr %__pyx_lineno, align 4, !tbaa !10
  %66 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 3586, ptr %__pyx_clineno, align 4, !tbaa !10
  %67 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end117:                                        ; preds = %if.then115
  br label %if.end118

if.end118:                                        ; preds = %if.end117, %if.then102
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else116, %if.end118
  call void @llvm.lifetime.end.p0(i64 8, ptr %exc_type) #9
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup174 [
    i32 7, label %for.end
    i32 6, label %__pyx_L1_error
  ]

if.end119:                                        ; preds = %if.else90
  br label %if.end120

if.end120:                                        ; preds = %if.end119, %if.end89
  br label %do.body

do.body:                                          ; preds = %if.end120
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #9
  %68 = load ptr, ptr %__pyx_v_item, align 8, !tbaa !4
  store ptr %68, ptr %tmp, align 8, !tbaa !4
  %69 = load ptr, ptr %__pyx_t_10, align 8, !tbaa !4
  store ptr %69, ptr %__pyx_v_item, align 8, !tbaa !4
  %70 = load ptr, ptr %tmp, align 8, !tbaa !4
  call void @Py_XDECREF(ptr noundef %70)
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #9
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  store ptr null, ptr %__pyx_t_10, align 8, !tbaa !4
  %71 = load i64, ptr %__pyx_t_4, align 8, !tbaa !24
  store i64 %71, ptr %__pyx_v_i, align 8, !tbaa !24
  %72 = load i64, ptr %__pyx_t_4, align 8, !tbaa !24
  %add = add nsw i64 %72, 1
  store i64 %add, ptr %__pyx_t_4, align 8, !tbaa !24
  %73 = load i64, ptr %__pyx_v_i, align 8, !tbaa !24
  %74 = load i64, ptr %__pyx_v_length.addr, align 8, !tbaa !24
  %cmp121 = icmp sge i64 %73, %74
  %conv122 = zext i1 %cmp121 to i32
  %cmp123 = icmp ne i32 %conv122, 0
  %conv124 = zext i1 %cmp123 to i32
  store i32 %conv124, ptr %__pyx_t_6, align 4, !tbaa !10
  %75 = load i32, ptr %__pyx_t_6, align 4, !tbaa !10
  %tobool125 = icmp ne i32 %75, 0
  br i1 %tobool125, label %if.then126, label %if.end127

if.then126:                                       ; preds = %do.end
  br label %__pyx_L11_break

if.end127:                                        ; preds = %do.end
  %76 = load ptr, ptr %__pyx_v_item, align 8, !tbaa !4
  %call128 = call i32 @Py_IS_TYPE(ptr noundef %76, ptr noundef @PyFloat_Type)
  %tobool129 = icmp ne i32 %call128, 0
  br i1 %tobool129, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end127
  %77 = load ptr, ptr %__pyx_v_item, align 8, !tbaa !4
  %ob_fval = getelementptr inbounds %struct.PyFloatObject, ptr %77, i32 0, i32 1
  %78 = load double, ptr %ob_fval, align 8, !tbaa !100
  br label %cond.end

cond.false:                                       ; preds = %if.end127
  %79 = load ptr, ptr %__pyx_v_item, align 8, !tbaa !4
  %call130 = call double @PyFloat_AsDouble(ptr noundef %79)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %78, %cond.true ], [ %call130, %cond.false ]
  store double %cond, ptr %__pyx_t_11, align 8, !tbaa !8
  %80 = load double, ptr %__pyx_t_11, align 8, !tbaa !8
  %cmp131 = fcmp oeq double %80, -1.000000e+00
  br i1 %cmp131, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %cond.end
  %call133 = call ptr @PyErr_Occurred()
  %tobool134 = icmp ne ptr %call133, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cond.end
  %81 = phi i1 [ false, %cond.end ], [ %tobool134, %land.rhs ]
  %lnot135 = xor i1 %81, true
  %lnot137 = xor i1 %lnot135, true
  %lnot.ext138 = zext i1 %lnot137 to i32
  %conv139 = sext i32 %lnot.ext138 to i64
  %expval140 = call i64 @llvm.expect.i64(i64 %conv139, i64 0)
  %tobool141 = icmp ne i64 %expval140, 0
  br i1 %tobool141, label %if.then142, label %if.end143

if.then142:                                       ; preds = %land.end
  %82 = load ptr, ptr getelementptr inbounds ([2 x ptr], ptr @__pyx_f, i64 0, i64 1), align 8, !tbaa !4
  store ptr %82, ptr %__pyx_filename, align 8, !tbaa !4
  %83 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 87, ptr %__pyx_lineno, align 4, !tbaa !10
  %84 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 3632, ptr %__pyx_clineno, align 4, !tbaa !10
  %85 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  br label %__pyx_L1_error

if.end143:                                        ; preds = %land.end
  %86 = load double, ptr %__pyx_t_11, align 8, !tbaa !8
  %87 = load ptr, ptr %__pyx_v_v.addr, align 8, !tbaa !4
  %88 = load i64, ptr %__pyx_v_i, align 8, !tbaa !24
  %arrayidx144 = getelementptr inbounds double, ptr %87, i64 %88
  store double %86, ptr %arrayidx144, align 8, !tbaa !8
  br label %for.cond

for.end:                                          ; preds = %cleanup, %if.then84, %if.then78
  %89 = load i64, ptr %__pyx_v_i, align 8, !tbaa !24
  %add145 = add nsw i64 %89, 1
  store i64 %add145, ptr %__pyx_v_i, align 8, !tbaa !24
  %90 = load i64, ptr %__pyx_v_i, align 8, !tbaa !24
  %91 = load i64, ptr %__pyx_v_length.addr, align 8, !tbaa !24
  %cmp146 = icmp eq i64 %90, %91
  %conv147 = zext i1 %cmp146 to i32
  %cmp148 = icmp ne i32 %conv147, 0
  %conv149 = zext i1 %cmp148 to i32
  store i32 %conv149, ptr %__pyx_t_6, align 4, !tbaa !10
  %92 = load i32, ptr %__pyx_t_6, align 4, !tbaa !10
  %tobool150 = icmp ne i32 %92, 0
  br i1 %tobool150, label %if.then151, label %if.end152

if.then151:                                       ; preds = %for.end
  store i32 0, ptr %__pyx_r, align 4, !tbaa !10
  %93 = load ptr, ptr %__pyx_t_7, align 8, !tbaa !4
  call void @Py_DECREF(ptr noundef %93)
  store ptr null, ptr %__pyx_t_7, align 8, !tbaa !4
  br label %__pyx_L0

if.end152:                                        ; preds = %for.end
  br label %__pyx_L11_break

__pyx_L11_break:                                  ; preds = %if.end152, %if.then126
  %94 = load ptr, ptr %__pyx_t_7, align 8, !tbaa !4
  call void @Py_DECREF(ptr noundef %94)
  store ptr null, ptr %__pyx_t_7, align 8, !tbaa !4
  br label %if.end153

if.end153:                                        ; preds = %__pyx_L11_break, %__pyx_L8_try_end
  %95 = load i64, ptr %__pyx_v_i, align 8, !tbaa !24
  %96 = load i64, ptr %__pyx_v_length.addr, align 8, !tbaa !24
  %cmp154 = icmp sge i64 %95, %96
  %conv155 = zext i1 %cmp154 to i32
  %cmp156 = icmp ne i32 %conv155, 0
  br i1 %cmp156, label %if.then158, label %if.else159

if.then158:                                       ; preds = %if.end153
  store ptr @.str.103, ptr %__pyx_t_12, align 8, !tbaa !4
  br label %if.end160

if.else159:                                       ; preds = %if.end153
  store ptr @.str.104, ptr %__pyx_t_12, align 8, !tbaa !4
  br label %if.end160

if.end160:                                        ; preds = %if.else159, %if.then158
  %97 = load ptr, ptr @__pyx_builtin_IndexError, align 8, !tbaa !4
  %98 = load ptr, ptr %__pyx_t_12, align 8, !tbaa !4
  %99 = load i64, ptr %__pyx_v_length.addr, align 8, !tbaa !24
  %100 = load i64, ptr %__pyx_v_i, align 8, !tbaa !24
  %call161 = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %97, ptr noundef %98, i64 noundef %99, i64 noundef %100)
  store ptr %call161, ptr %__pyx_t_7, align 8, !tbaa !4
  %101 = load ptr, ptr %__pyx_t_7, align 8, !tbaa !4
  %tobool162 = icmp ne ptr %101, null
  %lnot163 = xor i1 %tobool162, true
  %lnot165 = xor i1 %lnot163, true
  %lnot167 = xor i1 %lnot165, true
  %lnot.ext168 = zext i1 %lnot167 to i32
  %conv169 = sext i32 %lnot.ext168 to i64
  %expval170 = call i64 @llvm.expect.i64(i64 %conv169, i64 0)
  %tobool171 = icmp ne i64 %expval170, 0
  br i1 %tobool171, label %if.then172, label %if.end173

if.then172:                                       ; preds = %if.end160
  %102 = load ptr, ptr getelementptr inbounds ([2 x ptr], ptr @__pyx_f, i64 0, i64 1), align 8, !tbaa !4
  store ptr %102, ptr %__pyx_filename, align 8, !tbaa !4
  %103 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 93, ptr %__pyx_lineno, align 4, !tbaa !10
  %104 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 3724, ptr %__pyx_clineno, align 4, !tbaa !10
  %105 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  br label %__pyx_L1_error

if.end173:                                        ; preds = %if.end160
  %106 = load ptr, ptr %__pyx_t_7, align 8, !tbaa !4
  call void @Py_DECREF(ptr noundef %106)
  store ptr null, ptr %__pyx_t_7, align 8, !tbaa !4
  store i32 0, ptr %__pyx_r, align 4, !tbaa !10
  br label %__pyx_L0

__pyx_L1_error:                                   ; preds = %cleanup, %if.then172, %if.then142, %if.then51, %if.then38, %__pyx_L5_except_error
  %107 = load ptr, ptr %__pyx_t_7, align 8, !tbaa !4
  call void @Py_XDECREF(ptr noundef %107)
  %108 = load ptr, ptr %__pyx_t_10, align 8, !tbaa !4
  call void @Py_XDECREF(ptr noundef %108)
  %109 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  %110 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  %111 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  call void @__Pyx_AddTraceback(ptr noundef @.str.105, i32 noundef %109, i32 noundef %110, ptr noundef %111)
  store i32 -1, ptr %__pyx_r, align 4, !tbaa !10
  br label %__pyx_L0

__pyx_L0:                                         ; preds = %__pyx_L1_error, %if.end173, %if.then151
  %112 = load ptr, ptr %__pyx_v_item, align 8, !tbaa !4
  call void @Py_XDECREF(ptr noundef %112)
  %113 = load i32, ptr %__pyx_r, align 4, !tbaa !10
  store i32 %113, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup174

cleanup174:                                       ; preds = %__pyx_L0, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %__pyx_clineno) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pyx_filename) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %__pyx_lineno) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pyx_t_12) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pyx_t_11) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pyx_t_10) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pyx_t_9) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pyx_t_8) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pyx_t_7) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %__pyx_t_6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %__pyx_t_5) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pyx_t_4) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pyx_t_3) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pyx_t_2) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pyx_t_1) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %__pyx_r) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pyx_v_item) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pyx_v_i) #9
  %114 = load i32, ptr %retval, align 4
  ret i32 %114
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: nounwind uwtable
define internal double @__pyx_f_5scipy_8optimize_15cython_optimize_6_zeros_f_example(double noundef %__pyx_v_x, ptr noundef %__pyx_v_args) #0 {
entry:
  %__pyx_v_x.addr = alloca double, align 8
  %__pyx_v_args.addr = alloca ptr, align 8
  %__pyx_v_myargs = alloca ptr, align 8
  %__pyx_v_a = alloca [4 x double], align 16
  %__pyx_r = alloca double, align 8
  %__pyx_t_1 = alloca ptr, align 8
  store double %__pyx_v_x, ptr %__pyx_v_x.addr, align 8, !tbaa !8
  store ptr %__pyx_v_args, ptr %__pyx_v_args.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pyx_v_myargs) #9
  call void @llvm.lifetime.start.p0(i64 32, ptr %__pyx_v_a) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pyx_r) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pyx_t_1) #9
  %0 = load ptr, ptr %__pyx_v_args.addr, align 8, !tbaa !4
  store ptr %0, ptr %__pyx_v_myargs, align 8, !tbaa !4
  %1 = load ptr, ptr %__pyx_v_myargs, align 8, !tbaa !4
  %a = getelementptr inbounds %struct.__pyx_t_5scipy_8optimize_15cython_optimize_6_zeros_extra_params, ptr %1, i32 0, i32 0
  %arraydecay = getelementptr inbounds [4 x double], ptr %a, i64 0, i64 0
  store ptr %arraydecay, ptr %__pyx_t_1, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds [4 x double], ptr %__pyx_v_a, i64 0, i64 0
  %2 = load ptr, ptr %__pyx_t_1, align 8, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %arrayidx, ptr align 8 %2, i64 32, i1 false)
  %arrayidx1 = getelementptr inbounds [4 x double], ptr %__pyx_v_a, i64 0, i64 3
  %3 = load double, ptr %arrayidx1, align 8, !tbaa !8
  %4 = load double, ptr %__pyx_v_x.addr, align 8, !tbaa !8
  %arrayidx2 = getelementptr inbounds [4 x double], ptr %__pyx_v_a, i64 0, i64 2
  %5 = load double, ptr %arrayidx2, align 16, !tbaa !8
  %6 = call double @llvm.fmuladd.f64(double %3, double %4, double %5)
  %7 = load double, ptr %__pyx_v_x.addr, align 8, !tbaa !8
  %arrayidx3 = getelementptr inbounds [4 x double], ptr %__pyx_v_a, i64 0, i64 1
  %8 = load double, ptr %arrayidx3, align 8, !tbaa !8
  %9 = call double @llvm.fmuladd.f64(double %6, double %7, double %8)
  %10 = load double, ptr %__pyx_v_x.addr, align 8, !tbaa !8
  %arrayidx4 = getelementptr inbounds [4 x double], ptr %__pyx_v_a, i64 0, i64 0
  %11 = load double, ptr %arrayidx4, align 16, !tbaa !8
  %12 = call double @llvm.fmuladd.f64(double %9, double %10, double %11)
  store double %12, ptr %__pyx_r, align 8, !tbaa !8
  br label %__pyx_L0

__pyx_L0:                                         ; preds = %entry
  %13 = load double, ptr %__pyx_r, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pyx_t_1) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pyx_r) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr %__pyx_v_a) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pyx_v_myargs) #9
  ret double %13
}

; Function Attrs: nounwind uwtable
define internal void @__Pyx_WriteUnraisable(ptr noundef %name, i32 noundef %clineno, i32 noundef %lineno, ptr noundef %filename, i32 noundef %full_traceback, i32 noundef %nogil) #0 {
entry:
  %name.addr = alloca ptr, align 8
  %clineno.addr = alloca i32, align 4
  %lineno.addr = alloca i32, align 4
  %filename.addr = alloca ptr, align 8
  %full_traceback.addr = alloca i32, align 4
  %nogil.addr = alloca i32, align 4
  %old_exc = alloca ptr, align 8
  %old_val = alloca ptr, align 8
  %old_tb = alloca ptr, align 8
  %ctx = alloca ptr, align 8
  %state = alloca i32, align 4
  store ptr %name, ptr %name.addr, align 8, !tbaa !4
  store i32 %clineno, ptr %clineno.addr, align 4, !tbaa !10
  store i32 %lineno, ptr %lineno.addr, align 4, !tbaa !10
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !4
  store i32 %full_traceback, ptr %full_traceback.addr, align 4, !tbaa !10
  store i32 %nogil, ptr %nogil.addr, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %old_exc) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %old_val) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %old_tb) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %state) #9
  %0 = load i32, ptr %nogil.addr, align 4, !tbaa !10
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call i32 @PyGILState_Ensure()
  store i32 %call, ptr %state, align 4, !tbaa !27
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, ptr %state, align 4, !tbaa !27
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @PyErr_Fetch(ptr noundef %old_exc, ptr noundef %old_val, ptr noundef %old_tb)
  %1 = load i32, ptr %full_traceback.addr, align 4, !tbaa !10
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %2 = load ptr, ptr %old_exc, align 8, !tbaa !4
  call void @Py_XINCREF(ptr noundef %2)
  %3 = load ptr, ptr %old_val, align 8, !tbaa !4
  call void @Py_XINCREF(ptr noundef %3)
  %4 = load ptr, ptr %old_tb, align 8, !tbaa !4
  call void @Py_XINCREF(ptr noundef %4)
  %5 = load ptr, ptr %old_exc, align 8, !tbaa !4
  %6 = load ptr, ptr %old_val, align 8, !tbaa !4
  %7 = load ptr, ptr %old_tb, align 8, !tbaa !4
  call void @PyErr_Restore(ptr noundef %5, ptr noundef %6, ptr noundef %7)
  call void @PyErr_PrintEx(i32 noundef 1)
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %8 = load ptr, ptr %name.addr, align 8, !tbaa !4
  %call4 = call ptr @PyUnicode_FromString(ptr noundef %8)
  store ptr %call4, ptr %ctx, align 8, !tbaa !4
  %9 = load ptr, ptr %old_exc, align 8, !tbaa !4
  %10 = load ptr, ptr %old_val, align 8, !tbaa !4
  %11 = load ptr, ptr %old_tb, align 8, !tbaa !4
  call void @PyErr_Restore(ptr noundef %9, ptr noundef %10, ptr noundef %11)
  %12 = load ptr, ptr %ctx, align 8, !tbaa !4
  %tobool5 = icmp ne ptr %12, null
  br i1 %tobool5, label %if.else7, label %if.then6

if.then6:                                         ; preds = %if.end3
  call void @PyErr_WriteUnraisable(ptr noundef @_Py_NoneStruct)
  br label %if.end8

if.else7:                                         ; preds = %if.end3
  %13 = load ptr, ptr %ctx, align 8, !tbaa !4
  call void @PyErr_WriteUnraisable(ptr noundef %13)
  %14 = load ptr, ptr %ctx, align 8, !tbaa !4
  call void @Py_DECREF(ptr noundef %14)
  br label %if.end8

if.end8:                                          ; preds = %if.else7, %if.then6
  %15 = load i32, ptr %nogil.addr, align 4, !tbaa !10
  %tobool9 = icmp ne i32 %15, 0
  br i1 %tobool9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end8
  %16 = load i32, ptr %state, align 4, !tbaa !27
  call void @PyGILState_Release(i32 noundef %16)
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end8
  call void @llvm.lifetime.end.p0(i64 4, ptr %state) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %old_tb) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %old_val) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %old_exc) #9
  ret void
}

declare void @PyErr_GetExcInfo(ptr noundef, ptr noundef, ptr noundef) #4

declare i64 @PyObject_Size(ptr noundef) #4

declare void @PyErr_SetExcInfo(ptr noundef, ptr noundef, ptr noundef) #4

declare ptr @PyObject_GetIter(ptr noundef) #4

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @PyList_GET_SIZE(ptr noundef %op) #5 {
entry:
  %op.addr = alloca ptr, align 8
  %list = alloca ptr, align 8
  store ptr %op, ptr %op.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %list) #9
  %0 = load ptr, ptr %op.addr, align 8, !tbaa !4
  store ptr %0, ptr %list, align 8, !tbaa !4
  %1 = load ptr, ptr %list, align 8, !tbaa !4
  %call = call i64 @Py_SIZE(ptr noundef %1)
  call void @llvm.lifetime.end.p0(i64 8, ptr %list) #9
  ret i64 %call
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @__Pyx_PyErr_GivenExceptionMatches(ptr noundef %err, ptr noundef %exc_type) #5 {
entry:
  %retval = alloca i32, align 4
  %err.addr = alloca ptr, align 8
  %exc_type.addr = alloca ptr, align 8
  store ptr %err, ptr %err.addr, align 8, !tbaa !4
  store ptr %exc_type, ptr %exc_type.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %err.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %exc_type.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %0, %1
  %lnot = xor i1 %cmp, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %err.addr, align 8, !tbaa !4
  %call = call i32 @PyType_Check(ptr noundef %2)
  %tobool2 = icmp ne i32 %call, 0
  br i1 %tobool2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end
  %3 = load ptr, ptr %err.addr, align 8, !tbaa !4
  %call3 = call i32 @PyType_HasFeature(ptr noundef %3, i64 noundef 1073741824)
  %tobool4 = icmp ne i32 %call3, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  %4 = phi i1 [ false, %if.end ], [ %tobool4, %land.rhs ]
  %lnot5 = xor i1 %4, true
  %lnot7 = xor i1 %lnot5, true
  %lnot.ext8 = zext i1 %lnot7 to i32
  %conv9 = sext i32 %lnot.ext8 to i64
  %expval10 = call i64 @llvm.expect.i64(i64 %conv9, i64 1)
  %tobool11 = icmp ne i64 %expval10, 0
  br i1 %tobool11, label %if.then12, label %if.end43

if.then12:                                        ; preds = %land.end
  %5 = load ptr, ptr %exc_type.addr, align 8, !tbaa !4
  %call13 = call i32 @PyType_Check(ptr noundef %5)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %land.rhs15, label %land.end18

land.rhs15:                                       ; preds = %if.then12
  %6 = load ptr, ptr %exc_type.addr, align 8, !tbaa !4
  %call16 = call i32 @PyType_HasFeature(ptr noundef %6, i64 noundef 1073741824)
  %tobool17 = icmp ne i32 %call16, 0
  br label %land.end18

land.end18:                                       ; preds = %land.rhs15, %if.then12
  %7 = phi i1 [ false, %if.then12 ], [ %tobool17, %land.rhs15 ]
  %lnot19 = xor i1 %7, true
  %lnot21 = xor i1 %lnot19, true
  %lnot.ext22 = zext i1 %lnot21 to i32
  %conv23 = sext i32 %lnot.ext22 to i64
  %expval24 = call i64 @llvm.expect.i64(i64 %conv23, i64 1)
  %tobool25 = icmp ne i64 %expval24, 0
  br i1 %tobool25, label %if.then26, label %if.else

if.then26:                                        ; preds = %land.end18
  %8 = load ptr, ptr %err.addr, align 8, !tbaa !4
  %9 = load ptr, ptr %exc_type.addr, align 8, !tbaa !4
  %call27 = call i32 @__Pyx_inner_PyErr_GivenExceptionMatches2(ptr noundef %8, ptr noundef null, ptr noundef %9)
  store i32 %call27, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %land.end18
  %10 = load ptr, ptr %exc_type.addr, align 8, !tbaa !4
  %call28 = call ptr @Py_TYPE(ptr noundef %10)
  %call29 = call i32 @PyType_HasFeature(ptr noundef %call28, i64 noundef 67108864)
  %tobool30 = icmp ne i32 %call29, 0
  %lnot31 = xor i1 %tobool30, true
  %lnot33 = xor i1 %lnot31, true
  %lnot.ext34 = zext i1 %lnot33 to i32
  %conv35 = sext i32 %lnot.ext34 to i64
  %expval36 = call i64 @llvm.expect.i64(i64 %conv35, i64 1)
  %tobool37 = icmp ne i64 %expval36, 0
  br i1 %tobool37, label %if.then38, label %if.else40

if.then38:                                        ; preds = %if.else
  %11 = load ptr, ptr %err.addr, align 8, !tbaa !4
  %12 = load ptr, ptr %exc_type.addr, align 8, !tbaa !4
  %call39 = call i32 @__Pyx_PyErr_GivenExceptionMatchesTuple(ptr noundef %11, ptr noundef %12)
  store i32 %call39, ptr %retval, align 4
  br label %return

if.else40:                                        ; preds = %if.else
  br label %if.end41

if.end41:                                         ; preds = %if.else40
  br label %if.end42

if.end42:                                         ; preds = %if.end41
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %land.end
  %13 = load ptr, ptr %err.addr, align 8, !tbaa !4
  %14 = load ptr, ptr %exc_type.addr, align 8, !tbaa !4
  %call44 = call i32 @PyErr_GivenExceptionMatches(ptr noundef %13, ptr noundef %14)
  store i32 %call44, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end43, %if.then38, %if.then26, %if.then
  %15 = load i32, ptr %retval, align 4
  ret i32 %15
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @__Pyx_inner_PyErr_GivenExceptionMatches2(ptr noundef %err, ptr noundef %exc_type1, ptr noundef %exc_type2) #5 {
entry:
  %err.addr = alloca ptr, align 8
  %exc_type1.addr = alloca ptr, align 8
  %exc_type2.addr = alloca ptr, align 8
  %res = alloca i32, align 4
  store ptr %err, ptr %err.addr, align 8, !tbaa !4
  store ptr %exc_type1, ptr %exc_type1.addr, align 8, !tbaa !4
  store ptr %exc_type2, ptr %exc_type2.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %res) #9
  %0 = load ptr, ptr %exc_type1.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load ptr, ptr %err.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %exc_type1.addr, align 8, !tbaa !4
  %call = call i32 @__Pyx_IsSubtype(ptr noundef %1, ptr noundef %2)
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, ptr %res, align 4, !tbaa !10
  %3 = load i32, ptr %res, align 4, !tbaa !10
  %tobool1 = icmp ne i32 %3, 0
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end
  %4 = load ptr, ptr %err.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %exc_type2.addr, align 8, !tbaa !4
  %call2 = call i32 @__Pyx_IsSubtype(ptr noundef %4, ptr noundef %5)
  store i32 %call2, ptr %res, align 4, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %6 = load i32, ptr %res, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %res) #9
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define internal i32 @__Pyx_PyErr_GivenExceptionMatchesTuple(ptr noundef %exc_type, ptr noundef %tuple) #0 {
entry:
  %retval = alloca i32, align 4
  %exc_type.addr = alloca ptr, align 8
  %tuple.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %n = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %t = alloca ptr, align 8
  store ptr %exc_type, ptr %exc_type.addr, align 8, !tbaa !4
  store ptr %tuple, ptr %tuple.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #9
  %0 = load ptr, ptr %tuple.addr, align 8, !tbaa !4
  %call = call i64 @PyTuple_GET_SIZE(ptr noundef %0)
  store i64 %call, ptr %n, align 8, !tbaa !24
  store i64 0, ptr %i, align 8, !tbaa !24
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, ptr %i, align 8, !tbaa !24
  %2 = load i64, ptr %n, align 8, !tbaa !24
  %cmp = icmp slt i64 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %exc_type.addr, align 8, !tbaa !4
  %4 = load ptr, ptr %tuple.addr, align 8, !tbaa !4
  %ob_item = getelementptr inbounds %struct.PyTupleObject, ptr %4, i32 0, i32 1
  %5 = load i64, ptr %i, align 8, !tbaa !24
  %arrayidx = getelementptr inbounds [1 x ptr], ptr %ob_item, i64 0, i64 %5
  %6 = load ptr, ptr %arrayidx, align 8, !tbaa !4
  %cmp1 = icmp eq ptr %3, %6
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup21

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i64, ptr %i, align 8, !tbaa !24
  %inc = add nsw i64 %7, 1
  store i64 %inc, ptr %i, align 8, !tbaa !24
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i64 0, ptr %i, align 8, !tbaa !24
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc18, %for.end
  %8 = load i64, ptr %i, align 8, !tbaa !24
  %9 = load i64, ptr %n, align 8, !tbaa !24
  %cmp3 = icmp slt i64 %8, %9
  br i1 %cmp3, label %for.body4, label %for.end20

for.body4:                                        ; preds = %for.cond2
  call void @llvm.lifetime.start.p0(i64 8, ptr %t) #9
  %10 = load ptr, ptr %tuple.addr, align 8, !tbaa !4
  %ob_item5 = getelementptr inbounds %struct.PyTupleObject, ptr %10, i32 0, i32 1
  %11 = load i64, ptr %i, align 8, !tbaa !24
  %arrayidx6 = getelementptr inbounds [1 x ptr], ptr %ob_item5, i64 0, i64 %11
  %12 = load ptr, ptr %arrayidx6, align 8, !tbaa !4
  store ptr %12, ptr %t, align 8, !tbaa !4
  %13 = load ptr, ptr %t, align 8, !tbaa !4
  %call7 = call i32 @PyType_Check(ptr noundef %13)
  %tobool = icmp ne i32 %call7, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.body4
  %14 = load ptr, ptr %t, align 8, !tbaa !4
  %call8 = call i32 @PyType_HasFeature(ptr noundef %14, i64 noundef 1073741824)
  %tobool9 = icmp ne i32 %call8, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.body4
  %15 = phi i1 [ false, %for.body4 ], [ %tobool9, %land.rhs ]
  %lnot = xor i1 %15, true
  %lnot10 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot10 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1)
  %tobool11 = icmp ne i64 %expval, 0
  br i1 %tobool11, label %if.then12, label %if.else

if.then12:                                        ; preds = %land.end
  %16 = load ptr, ptr %exc_type.addr, align 8, !tbaa !4
  %17 = load ptr, ptr %t, align 8, !tbaa !4
  %call13 = call i32 @__Pyx_inner_PyErr_GivenExceptionMatches2(ptr noundef %16, ptr noundef null, ptr noundef %17)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.then12
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end16:                                         ; preds = %if.then12
  br label %if.end17

if.else:                                          ; preds = %land.end
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end16
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.then15
  call void @llvm.lifetime.end.p0(i64 8, ptr %t) #9
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup21 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc18

for.inc18:                                        ; preds = %cleanup.cont
  %18 = load i64, ptr %i, align 8, !tbaa !24
  %inc19 = add nsw i64 %18, 1
  store i64 %inc19, ptr %i, align 8, !tbaa !24
  br label %for.cond2

for.end20:                                        ; preds = %for.cond2
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup21

cleanup21:                                        ; preds = %for.end20, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #9
  %19 = load i32, ptr %retval, align 4
  ret i32 %19
}

declare i32 @PyErr_GivenExceptionMatches(ptr noundef, ptr noundef) #4

declare i32 @PyGILState_Ensure() #4

declare void @PyErr_PrintEx(i32 noundef) #4

declare void @PyErr_WriteUnraisable(ptr noundef) #4

declare void @PyGILState_Release(i32 noundef) #4

; Function Attrs: nounwind uwtable
define internal ptr @__pyx_pw_5scipy_8optimize_15cython_optimize_6_zeros_1loop_example(ptr noundef %__pyx_self, ptr noundef %__pyx_args, ptr noundef %__pyx_kwds) #0 {
entry:
  %retval = alloca ptr, align 8
  %__pyx_self.addr = alloca ptr, align 8
  %__pyx_args.addr = alloca ptr, align 8
  %__pyx_kwds.addr = alloca ptr, align 8
  %__pyx_v_method = alloca ptr, align 8
  %__pyx_v_a0 = alloca ptr, align 8
  %__pyx_v_args = alloca ptr, align 8
  %__pyx_v_xa = alloca ptr, align 8
  %__pyx_v_xb = alloca ptr, align 8
  %__pyx_v_xtol = alloca ptr, align 8
  %__pyx_v_rtol = alloca ptr, align 8
  %__pyx_v_mitr = alloca ptr, align 8
  %__pyx_lineno = alloca i32, align 4
  %__pyx_filename = alloca ptr, align 8
  %__pyx_clineno = alloca i32, align 4
  %__pyx_r = alloca ptr, align 8
  %values = alloca [8 x ptr], align 16
  %kw_args = alloca i64, align 8
  %pos_args = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %__pyx_self, ptr %__pyx_self.addr, align 8, !tbaa !4
  store ptr %__pyx_args, ptr %__pyx_args.addr, align 8, !tbaa !4
  store ptr %__pyx_kwds, ptr %__pyx_kwds.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pyx_v_method) #9
  store ptr null, ptr %__pyx_v_method, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pyx_v_a0) #9
  store ptr null, ptr %__pyx_v_a0, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pyx_v_args) #9
  store ptr null, ptr %__pyx_v_args, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pyx_v_xa) #9
  store ptr null, ptr %__pyx_v_xa, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pyx_v_xb) #9
  store ptr null, ptr %__pyx_v_xb, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pyx_v_xtol) #9
  store ptr null, ptr %__pyx_v_xtol, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pyx_v_rtol) #9
  store ptr null, ptr %__pyx_v_rtol, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pyx_v_mitr) #9
  store ptr null, ptr %__pyx_v_mitr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %__pyx_lineno) #9
  store i32 0, ptr %__pyx_lineno, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pyx_filename) #9
  store ptr null, ptr %__pyx_filename, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %__pyx_clineno) #9
  store i32 0, ptr %__pyx_clineno, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pyx_r) #9
  store ptr null, ptr %__pyx_r, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 64, ptr %values) #9
  call void @llvm.memset.p0.i64(ptr align 16 %values, i8 0, i64 64, i1 false)
  %0 = load ptr, ptr %__pyx_kwds.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  %lnot = xor i1 %tobool, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool2 = icmp ne i64 %expval, 0
  br i1 %tobool2, label %if.then, label %if.else189

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %kw_args) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %pos_args) #9
  %1 = load ptr, ptr %__pyx_args.addr, align 8, !tbaa !4
  %call = call i64 @PyTuple_GET_SIZE(ptr noundef %1)
  store i64 %call, ptr %pos_args, align 8, !tbaa !24
  %2 = load i64, ptr %pos_args, align 8, !tbaa !24
  switch i64 %2, label %sw.default [
    i64 8, label %sw.bb
    i64 7, label %sw.bb4
    i64 6, label %sw.bb8
    i64 5, label %sw.bb12
    i64 4, label %sw.bb16
    i64 3, label %sw.bb20
    i64 2, label %sw.bb24
    i64 1, label %sw.bb28
    i64 0, label %sw.epilog
  ]

sw.bb:                                            ; preds = %if.then
  %3 = load ptr, ptr %__pyx_args.addr, align 8, !tbaa !4
  %ob_item = getelementptr inbounds %struct.PyTupleObject, ptr %3, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x ptr], ptr %ob_item, i64 0, i64 7
  %4 = load ptr, ptr %arrayidx, align 8, !tbaa !4
  %arrayidx3 = getelementptr inbounds [8 x ptr], ptr %values, i64 0, i64 7
  store ptr %4, ptr %arrayidx3, align 8, !tbaa !4
  br label %sw.bb4

sw.bb4:                                           ; preds = %if.then, %sw.bb
  %5 = load ptr, ptr %__pyx_args.addr, align 8, !tbaa !4
  %ob_item5 = getelementptr inbounds %struct.PyTupleObject, ptr %5, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x ptr], ptr %ob_item5, i64 0, i64 6
  %6 = load ptr, ptr %arrayidx6, align 8, !tbaa !4
  %arrayidx7 = getelementptr inbounds [8 x ptr], ptr %values, i64 0, i64 6
  store ptr %6, ptr %arrayidx7, align 16, !tbaa !4
  br label %sw.bb8

sw.bb8:                                           ; preds = %if.then, %sw.bb4
  %7 = load ptr, ptr %__pyx_args.addr, align 8, !tbaa !4
  %ob_item9 = getelementptr inbounds %struct.PyTupleObject, ptr %7, i32 0, i32 1
  %arrayidx10 = getelementptr inbounds [1 x ptr], ptr %ob_item9, i64 0, i64 5
  %8 = load ptr, ptr %arrayidx10, align 8, !tbaa !4
  %arrayidx11 = getelementptr inbounds [8 x ptr], ptr %values, i64 0, i64 5
  store ptr %8, ptr %arrayidx11, align 8, !tbaa !4
  br label %sw.bb12

sw.bb12:                                          ; preds = %if.then, %sw.bb8
  %9 = load ptr, ptr %__pyx_args.addr, align 8, !tbaa !4
  %ob_item13 = getelementptr inbounds %struct.PyTupleObject, ptr %9, i32 0, i32 1
  %arrayidx14 = getelementptr inbounds [1 x ptr], ptr %ob_item13, i64 0, i64 4
  %10 = load ptr, ptr %arrayidx14, align 8, !tbaa !4
  %arrayidx15 = getelementptr inbounds [8 x ptr], ptr %values, i64 0, i64 4
  store ptr %10, ptr %arrayidx15, align 16, !tbaa !4
  br label %sw.bb16

sw.bb16:                                          ; preds = %if.then, %sw.bb12
  %11 = load ptr, ptr %__pyx_args.addr, align 8, !tbaa !4
  %ob_item17 = getelementptr inbounds %struct.PyTupleObject, ptr %11, i32 0, i32 1
  %arrayidx18 = getelementptr inbounds [1 x ptr], ptr %ob_item17, i64 0, i64 3
  %12 = load ptr, ptr %arrayidx18, align 8, !tbaa !4
  %arrayidx19 = getelementptr inbounds [8 x ptr], ptr %values, i64 0, i64 3
  store ptr %12, ptr %arrayidx19, align 8, !tbaa !4
  br label %sw.bb20

sw.bb20:                                          ; preds = %if.then, %sw.bb16
  %13 = load ptr, ptr %__pyx_args.addr, align 8, !tbaa !4
  %ob_item21 = getelementptr inbounds %struct.PyTupleObject, ptr %13, i32 0, i32 1
  %arrayidx22 = getelementptr inbounds [1 x ptr], ptr %ob_item21, i64 0, i64 2
  %14 = load ptr, ptr %arrayidx22, align 8, !tbaa !4
  %arrayidx23 = getelementptr inbounds [8 x ptr], ptr %values, i64 0, i64 2
  store ptr %14, ptr %arrayidx23, align 16, !tbaa !4
  br label %sw.bb24

sw.bb24:                                          ; preds = %if.then, %sw.bb20
  %15 = load ptr, ptr %__pyx_args.addr, align 8, !tbaa !4
  %ob_item25 = getelementptr inbounds %struct.PyTupleObject, ptr %15, i32 0, i32 1
  %arrayidx26 = getelementptr inbounds [1 x ptr], ptr %ob_item25, i64 0, i64 1
  %16 = load ptr, ptr %arrayidx26, align 8, !tbaa !4
  %arrayidx27 = getelementptr inbounds [8 x ptr], ptr %values, i64 0, i64 1
  store ptr %16, ptr %arrayidx27, align 8, !tbaa !4
  br label %sw.bb28

sw.bb28:                                          ; preds = %if.then, %sw.bb24
  %17 = load ptr, ptr %__pyx_args.addr, align 8, !tbaa !4
  %ob_item29 = getelementptr inbounds %struct.PyTupleObject, ptr %17, i32 0, i32 1
  %arrayidx30 = getelementptr inbounds [1 x ptr], ptr %ob_item29, i64 0, i64 0
  %18 = load ptr, ptr %arrayidx30, align 8, !tbaa !4
  %arrayidx31 = getelementptr inbounds [8 x ptr], ptr %values, i64 0, i64 0
  store ptr %18, ptr %arrayidx31, align 16, !tbaa !4
  br label %sw.epilog

sw.default:                                       ; preds = %if.then
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb28, %if.then
  %19 = load ptr, ptr %__pyx_kwds.addr, align 8, !tbaa !4
  %call32 = call i64 @PyDict_Size(ptr noundef %19)
  store i64 %call32, ptr %kw_args, align 8, !tbaa !24
  %20 = load i64, ptr %pos_args, align 8, !tbaa !24
  switch i64 %20, label %sw.epilog164 [
    i64 0, label %sw.bb33
    i64 1, label %sw.bb45
    i64 2, label %sw.bb62
    i64 3, label %sw.bb79
    i64 4, label %sw.bb96
    i64 5, label %sw.bb113
    i64 6, label %sw.bb130
    i64 7, label %sw.bb147
  ]

sw.bb33:                                          ; preds = %sw.epilog
  %21 = load ptr, ptr %__pyx_kwds.addr, align 8, !tbaa !4
  %22 = load ptr, ptr @__pyx_n_s_method, align 8, !tbaa !4
  %23 = load ptr, ptr @__pyx_n_s_method, align 8, !tbaa !4
  %hash = getelementptr inbounds %struct.PyASCIIObject, ptr %23, i32 0, i32 2
  %24 = load i64, ptr %hash, align 8, !tbaa !97
  %call34 = call ptr @_PyDict_GetItem_KnownHash(ptr noundef %21, ptr noundef %22, i64 noundef %24)
  %arrayidx35 = getelementptr inbounds [8 x ptr], ptr %values, i64 0, i64 0
  store ptr %call34, ptr %arrayidx35, align 16, !tbaa !4
  %cmp = icmp ne ptr %call34, null
  %lnot37 = xor i1 %cmp, true
  %lnot39 = xor i1 %lnot37, true
  %lnot.ext40 = zext i1 %lnot39 to i32
  %conv41 = sext i32 %lnot.ext40 to i64
  %expval42 = call i64 @llvm.expect.i64(i64 %conv41, i64 1)
  %tobool43 = icmp ne i64 %expval42, 0
  br i1 %tobool43, label %if.then44, label %if.else

if.then44:                                        ; preds = %sw.bb33
  %25 = load i64, ptr %kw_args, align 8, !tbaa !24
  %dec = add nsw i64 %25, -1
  store i64 %dec, ptr %kw_args, align 8, !tbaa !24
  br label %if.end

if.else:                                          ; preds = %sw.bb33
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then44
  br label %sw.bb45

sw.bb45:                                          ; preds = %sw.epilog, %if.end
  %26 = load ptr, ptr %__pyx_kwds.addr, align 8, !tbaa !4
  %27 = load ptr, ptr @__pyx_n_s_a0, align 8, !tbaa !4
  %28 = load ptr, ptr @__pyx_n_s_a0, align 8, !tbaa !4
  %hash46 = getelementptr inbounds %struct.PyASCIIObject, ptr %28, i32 0, i32 2
  %29 = load i64, ptr %hash46, align 8, !tbaa !97
  %call47 = call ptr @_PyDict_GetItem_KnownHash(ptr noundef %26, ptr noundef %27, i64 noundef %29)
  %arrayidx48 = getelementptr inbounds [8 x ptr], ptr %values, i64 0, i64 1
  store ptr %call47, ptr %arrayidx48, align 8, !tbaa !4
  %cmp49 = icmp ne ptr %call47, null
  %lnot51 = xor i1 %cmp49, true
  %lnot53 = xor i1 %lnot51, true
  %lnot.ext54 = zext i1 %lnot53 to i32
  %conv55 = sext i32 %lnot.ext54 to i64
  %expval56 = call i64 @llvm.expect.i64(i64 %conv55, i64 1)
  %tobool57 = icmp ne i64 %expval56, 0
  br i1 %tobool57, label %if.then58, label %if.else60

if.then58:                                        ; preds = %sw.bb45
  %30 = load i64, ptr %kw_args, align 8, !tbaa !24
  %dec59 = add nsw i64 %30, -1
  store i64 %dec59, ptr %kw_args, align 8, !tbaa !24
  br label %if.end61

if.else60:                                        ; preds = %sw.bb45
  call void @__Pyx_RaiseArgtupleInvalid(ptr noundef @.str.109, i32 noundef 1, i64 noundef 8, i64 noundef 8, i64 noundef 1)
  %31 = load ptr, ptr @__pyx_f, align 16, !tbaa !4
  store ptr %31, ptr %__pyx_filename, align 8, !tbaa !4
  %32 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 175, ptr %__pyx_lineno, align 4, !tbaa !10
  %33 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 2535, ptr %__pyx_clineno, align 4, !tbaa !10
  %34 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end61:                                         ; preds = %if.then58
  br label %sw.bb62

sw.bb62:                                          ; preds = %sw.epilog, %if.end61
  %35 = load ptr, ptr %__pyx_kwds.addr, align 8, !tbaa !4
  %36 = load ptr, ptr @__pyx_n_s_args, align 8, !tbaa !4
  %37 = load ptr, ptr @__pyx_n_s_args, align 8, !tbaa !4
  %hash63 = getelementptr inbounds %struct.PyASCIIObject, ptr %37, i32 0, i32 2
  %38 = load i64, ptr %hash63, align 8, !tbaa !97
  %call64 = call ptr @_PyDict_GetItem_KnownHash(ptr noundef %35, ptr noundef %36, i64 noundef %38)
  %arrayidx65 = getelementptr inbounds [8 x ptr], ptr %values, i64 0, i64 2
  store ptr %call64, ptr %arrayidx65, align 16, !tbaa !4
  %cmp66 = icmp ne ptr %call64, null
  %lnot68 = xor i1 %cmp66, true
  %lnot70 = xor i1 %lnot68, true
  %lnot.ext71 = zext i1 %lnot70 to i32
  %conv72 = sext i32 %lnot.ext71 to i64
  %expval73 = call i64 @llvm.expect.i64(i64 %conv72, i64 1)
  %tobool74 = icmp ne i64 %expval73, 0
  br i1 %tobool74, label %if.then75, label %if.else77

if.then75:                                        ; preds = %sw.bb62
  %39 = load i64, ptr %kw_args, align 8, !tbaa !24
  %dec76 = add nsw i64 %39, -1
  store i64 %dec76, ptr %kw_args, align 8, !tbaa !24
  br label %if.end78

if.else77:                                        ; preds = %sw.bb62
  call void @__Pyx_RaiseArgtupleInvalid(ptr noundef @.str.109, i32 noundef 1, i64 noundef 8, i64 noundef 8, i64 noundef 2)
  %40 = load ptr, ptr @__pyx_f, align 16, !tbaa !4
  store ptr %40, ptr %__pyx_filename, align 8, !tbaa !4
  %41 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 175, ptr %__pyx_lineno, align 4, !tbaa !10
  %42 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 2541, ptr %__pyx_clineno, align 4, !tbaa !10
  %43 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end78:                                         ; preds = %if.then75
  br label %sw.bb79

sw.bb79:                                          ; preds = %sw.epilog, %if.end78
  %44 = load ptr, ptr %__pyx_kwds.addr, align 8, !tbaa !4
  %45 = load ptr, ptr @__pyx_n_s_xa, align 8, !tbaa !4
  %46 = load ptr, ptr @__pyx_n_s_xa, align 8, !tbaa !4
  %hash80 = getelementptr inbounds %struct.PyASCIIObject, ptr %46, i32 0, i32 2
  %47 = load i64, ptr %hash80, align 8, !tbaa !97
  %call81 = call ptr @_PyDict_GetItem_KnownHash(ptr noundef %44, ptr noundef %45, i64 noundef %47)
  %arrayidx82 = getelementptr inbounds [8 x ptr], ptr %values, i64 0, i64 3
  store ptr %call81, ptr %arrayidx82, align 8, !tbaa !4
  %cmp83 = icmp ne ptr %call81, null
  %lnot85 = xor i1 %cmp83, true
  %lnot87 = xor i1 %lnot85, true
  %lnot.ext88 = zext i1 %lnot87 to i32
  %conv89 = sext i32 %lnot.ext88 to i64
  %expval90 = call i64 @llvm.expect.i64(i64 %conv89, i64 1)
  %tobool91 = icmp ne i64 %expval90, 0
  br i1 %tobool91, label %if.then92, label %if.else94

if.then92:                                        ; preds = %sw.bb79
  %48 = load i64, ptr %kw_args, align 8, !tbaa !24
  %dec93 = add nsw i64 %48, -1
  store i64 %dec93, ptr %kw_args, align 8, !tbaa !24
  br label %if.end95

if.else94:                                        ; preds = %sw.bb79
  call void @__Pyx_RaiseArgtupleInvalid(ptr noundef @.str.109, i32 noundef 1, i64 noundef 8, i64 noundef 8, i64 noundef 3)
  %49 = load ptr, ptr @__pyx_f, align 16, !tbaa !4
  store ptr %49, ptr %__pyx_filename, align 8, !tbaa !4
  %50 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 175, ptr %__pyx_lineno, align 4, !tbaa !10
  %51 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 2547, ptr %__pyx_clineno, align 4, !tbaa !10
  %52 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end95:                                         ; preds = %if.then92
  br label %sw.bb96

sw.bb96:                                          ; preds = %sw.epilog, %if.end95
  %53 = load ptr, ptr %__pyx_kwds.addr, align 8, !tbaa !4
  %54 = load ptr, ptr @__pyx_n_s_xb, align 8, !tbaa !4
  %55 = load ptr, ptr @__pyx_n_s_xb, align 8, !tbaa !4
  %hash97 = getelementptr inbounds %struct.PyASCIIObject, ptr %55, i32 0, i32 2
  %56 = load i64, ptr %hash97, align 8, !tbaa !97
  %call98 = call ptr @_PyDict_GetItem_KnownHash(ptr noundef %53, ptr noundef %54, i64 noundef %56)
  %arrayidx99 = getelementptr inbounds [8 x ptr], ptr %values, i64 0, i64 4
  store ptr %call98, ptr %arrayidx99, align 16, !tbaa !4
  %cmp100 = icmp ne ptr %call98, null
  %lnot102 = xor i1 %cmp100, true
  %lnot104 = xor i1 %lnot102, true
  %lnot.ext105 = zext i1 %lnot104 to i32
  %conv106 = sext i32 %lnot.ext105 to i64
  %expval107 = call i64 @llvm.expect.i64(i64 %conv106, i64 1)
  %tobool108 = icmp ne i64 %expval107, 0
  br i1 %tobool108, label %if.then109, label %if.else111

if.then109:                                       ; preds = %sw.bb96
  %57 = load i64, ptr %kw_args, align 8, !tbaa !24
  %dec110 = add nsw i64 %57, -1
  store i64 %dec110, ptr %kw_args, align 8, !tbaa !24
  br label %if.end112

if.else111:                                       ; preds = %sw.bb96
  call void @__Pyx_RaiseArgtupleInvalid(ptr noundef @.str.109, i32 noundef 1, i64 noundef 8, i64 noundef 8, i64 noundef 4)
  %58 = load ptr, ptr @__pyx_f, align 16, !tbaa !4
  store ptr %58, ptr %__pyx_filename, align 8, !tbaa !4
  %59 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 175, ptr %__pyx_lineno, align 4, !tbaa !10
  %60 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 2553, ptr %__pyx_clineno, align 4, !tbaa !10
  %61 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end112:                                        ; preds = %if.then109
  br label %sw.bb113

sw.bb113:                                         ; preds = %sw.epilog, %if.end112
  %62 = load ptr, ptr %__pyx_kwds.addr, align 8, !tbaa !4
  %63 = load ptr, ptr @__pyx_n_s_xtol, align 8, !tbaa !4
  %64 = load ptr, ptr @__pyx_n_s_xtol, align 8, !tbaa !4
  %hash114 = getelementptr inbounds %struct.PyASCIIObject, ptr %64, i32 0, i32 2
  %65 = load i64, ptr %hash114, align 8, !tbaa !97
  %call115 = call ptr @_PyDict_GetItem_KnownHash(ptr noundef %62, ptr noundef %63, i64 noundef %65)
  %arrayidx116 = getelementptr inbounds [8 x ptr], ptr %values, i64 0, i64 5
  store ptr %call115, ptr %arrayidx116, align 8, !tbaa !4
  %cmp117 = icmp ne ptr %call115, null
  %lnot119 = xor i1 %cmp117, true
  %lnot121 = xor i1 %lnot119, true
  %lnot.ext122 = zext i1 %lnot121 to i32
  %conv123 = sext i32 %lnot.ext122 to i64
  %expval124 = call i64 @llvm.expect.i64(i64 %conv123, i64 1)
  %tobool125 = icmp ne i64 %expval124, 0
  br i1 %tobool125, label %if.then126, label %if.else128

if.then126:                                       ; preds = %sw.bb113
  %66 = load i64, ptr %kw_args, align 8, !tbaa !24
  %dec127 = add nsw i64 %66, -1
  store i64 %dec127, ptr %kw_args, align 8, !tbaa !24
  br label %if.end129

if.else128:                                       ; preds = %sw.bb113
  call void @__Pyx_RaiseArgtupleInvalid(ptr noundef @.str.109, i32 noundef 1, i64 noundef 8, i64 noundef 8, i64 noundef 5)
  %67 = load ptr, ptr @__pyx_f, align 16, !tbaa !4
  store ptr %67, ptr %__pyx_filename, align 8, !tbaa !4
  %68 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 175, ptr %__pyx_lineno, align 4, !tbaa !10
  %69 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 2559, ptr %__pyx_clineno, align 4, !tbaa !10
  %70 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end129:                                        ; preds = %if.then126
  br label %sw.bb130

sw.bb130:                                         ; preds = %sw.epilog, %if.end129
  %71 = load ptr, ptr %__pyx_kwds.addr, align 8, !tbaa !4
  %72 = load ptr, ptr @__pyx_n_s_rtol, align 8, !tbaa !4
  %73 = load ptr, ptr @__pyx_n_s_rtol, align 8, !tbaa !4
  %hash131 = getelementptr inbounds %struct.PyASCIIObject, ptr %73, i32 0, i32 2
  %74 = load i64, ptr %hash131, align 8, !tbaa !97
  %call132 = call ptr @_PyDict_GetItem_KnownHash(ptr noundef %71, ptr noundef %72, i64 noundef %74)
  %arrayidx133 = getelementptr inbounds [8 x ptr], ptr %values, i64 0, i64 6
  store ptr %call132, ptr %arrayidx133, align 16, !tbaa !4
  %cmp134 = icmp ne ptr %call132, null
  %lnot136 = xor i1 %cmp134, true
  %lnot138 = xor i1 %lnot136, true
  %lnot.ext139 = zext i1 %lnot138 to i32
  %conv140 = sext i32 %lnot.ext139 to i64
  %expval141 = call i64 @llvm.expect.i64(i64 %conv140, i64 1)
  %tobool142 = icmp ne i64 %expval141, 0
  br i1 %tobool142, label %if.then143, label %if.else145

if.then143:                                       ; preds = %sw.bb130
  %75 = load i64, ptr %kw_args, align 8, !tbaa !24
  %dec144 = add nsw i64 %75, -1
  store i64 %dec144, ptr %kw_args, align 8, !tbaa !24
  br label %if.end146

if.else145:                                       ; preds = %sw.bb130
  call void @__Pyx_RaiseArgtupleInvalid(ptr noundef @.str.109, i32 noundef 1, i64 noundef 8, i64 noundef 8, i64 noundef 6)
  %76 = load ptr, ptr @__pyx_f, align 16, !tbaa !4
  store ptr %76, ptr %__pyx_filename, align 8, !tbaa !4
  %77 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 175, ptr %__pyx_lineno, align 4, !tbaa !10
  %78 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 2565, ptr %__pyx_clineno, align 4, !tbaa !10
  %79 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end146:                                        ; preds = %if.then143
  br label %sw.bb147

sw.bb147:                                         ; preds = %sw.epilog, %if.end146
  %80 = load ptr, ptr %__pyx_kwds.addr, align 8, !tbaa !4
  %81 = load ptr, ptr @__pyx_n_s_mitr, align 8, !tbaa !4
  %82 = load ptr, ptr @__pyx_n_s_mitr, align 8, !tbaa !4
  %hash148 = getelementptr inbounds %struct.PyASCIIObject, ptr %82, i32 0, i32 2
  %83 = load i64, ptr %hash148, align 8, !tbaa !97
  %call149 = call ptr @_PyDict_GetItem_KnownHash(ptr noundef %80, ptr noundef %81, i64 noundef %83)
  %arrayidx150 = getelementptr inbounds [8 x ptr], ptr %values, i64 0, i64 7
  store ptr %call149, ptr %arrayidx150, align 8, !tbaa !4
  %cmp151 = icmp ne ptr %call149, null
  %lnot153 = xor i1 %cmp151, true
  %lnot155 = xor i1 %lnot153, true
  %lnot.ext156 = zext i1 %lnot155 to i32
  %conv157 = sext i32 %lnot.ext156 to i64
  %expval158 = call i64 @llvm.expect.i64(i64 %conv157, i64 1)
  %tobool159 = icmp ne i64 %expval158, 0
  br i1 %tobool159, label %if.then160, label %if.else162

if.then160:                                       ; preds = %sw.bb147
  %84 = load i64, ptr %kw_args, align 8, !tbaa !24
  %dec161 = add nsw i64 %84, -1
  store i64 %dec161, ptr %kw_args, align 8, !tbaa !24
  br label %if.end163

if.else162:                                       ; preds = %sw.bb147
  call void @__Pyx_RaiseArgtupleInvalid(ptr noundef @.str.109, i32 noundef 1, i64 noundef 8, i64 noundef 8, i64 noundef 7)
  %85 = load ptr, ptr @__pyx_f, align 16, !tbaa !4
  store ptr %85, ptr %__pyx_filename, align 8, !tbaa !4
  %86 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 175, ptr %__pyx_lineno, align 4, !tbaa !10
  %87 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 2571, ptr %__pyx_clineno, align 4, !tbaa !10
  %88 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end163:                                        ; preds = %if.then160
  br label %sw.epilog164

sw.epilog164:                                     ; preds = %if.end163, %sw.epilog
  %89 = load i64, ptr %kw_args, align 8, !tbaa !24
  %cmp165 = icmp sgt i64 %89, 0
  %lnot167 = xor i1 %cmp165, true
  %lnot169 = xor i1 %lnot167, true
  %lnot.ext170 = zext i1 %lnot169 to i32
  %conv171 = sext i32 %lnot.ext170 to i64
  %expval172 = call i64 @llvm.expect.i64(i64 %conv171, i64 0)
  %tobool173 = icmp ne i64 %expval172, 0
  br i1 %tobool173, label %if.then174, label %if.end187

if.then174:                                       ; preds = %sw.epilog164
  %90 = load ptr, ptr %__pyx_kwds.addr, align 8, !tbaa !4
  %arraydecay = getelementptr inbounds [8 x ptr], ptr %values, i64 0, i64 0
  %91 = load i64, ptr %pos_args, align 8, !tbaa !24
  %call175 = call i32 @__Pyx_ParseOptionalKeywords(ptr noundef %90, ptr noundef @__pyx_pw_5scipy_8optimize_15cython_optimize_6_zeros_1loop_example.__pyx_pyargnames, ptr noundef null, ptr noundef %arraydecay, i64 noundef %91, ptr noundef @.str.109)
  %cmp176 = icmp slt i32 %call175, 0
  %lnot178 = xor i1 %cmp176, true
  %lnot180 = xor i1 %lnot178, true
  %lnot.ext181 = zext i1 %lnot180 to i32
  %conv182 = sext i32 %lnot.ext181 to i64
  %expval183 = call i64 @llvm.expect.i64(i64 %conv182, i64 0)
  %tobool184 = icmp ne i64 %expval183, 0
  br i1 %tobool184, label %if.then185, label %if.end186

if.then185:                                       ; preds = %if.then174
  %92 = load ptr, ptr @__pyx_f, align 16, !tbaa !4
  store ptr %92, ptr %__pyx_filename, align 8, !tbaa !4
  %93 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 175, ptr %__pyx_lineno, align 4, !tbaa !10
  %94 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 2575, ptr %__pyx_clineno, align 4, !tbaa !10
  %95 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end186:                                        ; preds = %if.then174
  br label %if.end187

if.end187:                                        ; preds = %if.end186, %sw.epilog164
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then185, %if.else162, %if.else145, %if.else128, %if.else111, %if.else94, %if.else77, %if.else60, %if.else, %sw.default, %if.end187
  call void @llvm.lifetime.end.p0(i64 8, ptr %pos_args) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %kw_args) #9
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup229 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end220

if.else189:                                       ; preds = %entry
  %96 = load ptr, ptr %__pyx_args.addr, align 8, !tbaa !4
  %call190 = call i64 @PyTuple_GET_SIZE(ptr noundef %96)
  %cmp191 = icmp ne i64 %call190, 8
  br i1 %cmp191, label %if.then193, label %if.else194

if.then193:                                       ; preds = %if.else189
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup229

if.else194:                                       ; preds = %if.else189
  %97 = load ptr, ptr %__pyx_args.addr, align 8, !tbaa !4
  %ob_item195 = getelementptr inbounds %struct.PyTupleObject, ptr %97, i32 0, i32 1
  %arrayidx196 = getelementptr inbounds [1 x ptr], ptr %ob_item195, i64 0, i64 0
  %98 = load ptr, ptr %arrayidx196, align 8, !tbaa !4
  %arrayidx197 = getelementptr inbounds [8 x ptr], ptr %values, i64 0, i64 0
  store ptr %98, ptr %arrayidx197, align 16, !tbaa !4
  %99 = load ptr, ptr %__pyx_args.addr, align 8, !tbaa !4
  %ob_item198 = getelementptr inbounds %struct.PyTupleObject, ptr %99, i32 0, i32 1
  %arrayidx199 = getelementptr inbounds [1 x ptr], ptr %ob_item198, i64 0, i64 1
  %100 = load ptr, ptr %arrayidx199, align 8, !tbaa !4
  %arrayidx200 = getelementptr inbounds [8 x ptr], ptr %values, i64 0, i64 1
  store ptr %100, ptr %arrayidx200, align 8, !tbaa !4
  %101 = load ptr, ptr %__pyx_args.addr, align 8, !tbaa !4
  %ob_item201 = getelementptr inbounds %struct.PyTupleObject, ptr %101, i32 0, i32 1
  %arrayidx202 = getelementptr inbounds [1 x ptr], ptr %ob_item201, i64 0, i64 2
  %102 = load ptr, ptr %arrayidx202, align 8, !tbaa !4
  %arrayidx203 = getelementptr inbounds [8 x ptr], ptr %values, i64 0, i64 2
  store ptr %102, ptr %arrayidx203, align 16, !tbaa !4
  %103 = load ptr, ptr %__pyx_args.addr, align 8, !tbaa !4
  %ob_item204 = getelementptr inbounds %struct.PyTupleObject, ptr %103, i32 0, i32 1
  %arrayidx205 = getelementptr inbounds [1 x ptr], ptr %ob_item204, i64 0, i64 3
  %104 = load ptr, ptr %arrayidx205, align 8, !tbaa !4
  %arrayidx206 = getelementptr inbounds [8 x ptr], ptr %values, i64 0, i64 3
  store ptr %104, ptr %arrayidx206, align 8, !tbaa !4
  %105 = load ptr, ptr %__pyx_args.addr, align 8, !tbaa !4
  %ob_item207 = getelementptr inbounds %struct.PyTupleObject, ptr %105, i32 0, i32 1
  %arrayidx208 = getelementptr inbounds [1 x ptr], ptr %ob_item207, i64 0, i64 4
  %106 = load ptr, ptr %arrayidx208, align 8, !tbaa !4
  %arrayidx209 = getelementptr inbounds [8 x ptr], ptr %values, i64 0, i64 4
  store ptr %106, ptr %arrayidx209, align 16, !tbaa !4
  %107 = load ptr, ptr %__pyx_args.addr, align 8, !tbaa !4
  %ob_item210 = getelementptr inbounds %struct.PyTupleObject, ptr %107, i32 0, i32 1
  %arrayidx211 = getelementptr inbounds [1 x ptr], ptr %ob_item210, i64 0, i64 5
  %108 = load ptr, ptr %arrayidx211, align 8, !tbaa !4
  %arrayidx212 = getelementptr inbounds [8 x ptr], ptr %values, i64 0, i64 5
  store ptr %108, ptr %arrayidx212, align 8, !tbaa !4
  %109 = load ptr, ptr %__pyx_args.addr, align 8, !tbaa !4
  %ob_item213 = getelementptr inbounds %struct.PyTupleObject, ptr %109, i32 0, i32 1
  %arrayidx214 = getelementptr inbounds [1 x ptr], ptr %ob_item213, i64 0, i64 6
  %110 = load ptr, ptr %arrayidx214, align 8, !tbaa !4
  %arrayidx215 = getelementptr inbounds [8 x ptr], ptr %values, i64 0, i64 6
  store ptr %110, ptr %arrayidx215, align 16, !tbaa !4
  %111 = load ptr, ptr %__pyx_args.addr, align 8, !tbaa !4
  %ob_item216 = getelementptr inbounds %struct.PyTupleObject, ptr %111, i32 0, i32 1
  %arrayidx217 = getelementptr inbounds [1 x ptr], ptr %ob_item216, i64 0, i64 7
  %112 = load ptr, ptr %arrayidx217, align 8, !tbaa !4
  %arrayidx218 = getelementptr inbounds [8 x ptr], ptr %values, i64 0, i64 7
  store ptr %112, ptr %arrayidx218, align 8, !tbaa !4
  br label %if.end219

if.end219:                                        ; preds = %if.else194
  br label %if.end220

if.end220:                                        ; preds = %if.end219, %cleanup.cont
  %arrayidx221 = getelementptr inbounds [8 x ptr], ptr %values, i64 0, i64 0
  %113 = load ptr, ptr %arrayidx221, align 16, !tbaa !4
  store ptr %113, ptr %__pyx_v_method, align 8, !tbaa !4
  %arrayidx222 = getelementptr inbounds [8 x ptr], ptr %values, i64 0, i64 1
  %114 = load ptr, ptr %arrayidx222, align 8, !tbaa !4
  store ptr %114, ptr %__pyx_v_a0, align 8, !tbaa !4
  %arrayidx223 = getelementptr inbounds [8 x ptr], ptr %values, i64 0, i64 2
  %115 = load ptr, ptr %arrayidx223, align 16, !tbaa !4
  store ptr %115, ptr %__pyx_v_args, align 8, !tbaa !4
  %arrayidx224 = getelementptr inbounds [8 x ptr], ptr %values, i64 0, i64 3
  %116 = load ptr, ptr %arrayidx224, align 8, !tbaa !4
  store ptr %116, ptr %__pyx_v_xa, align 8, !tbaa !4
  %arrayidx225 = getelementptr inbounds [8 x ptr], ptr %values, i64 0, i64 4
  %117 = load ptr, ptr %arrayidx225, align 16, !tbaa !4
  store ptr %117, ptr %__pyx_v_xb, align 8, !tbaa !4
  %arrayidx226 = getelementptr inbounds [8 x ptr], ptr %values, i64 0, i64 5
  %118 = load ptr, ptr %arrayidx226, align 8, !tbaa !4
  store ptr %118, ptr %__pyx_v_xtol, align 8, !tbaa !4
  %arrayidx227 = getelementptr inbounds [8 x ptr], ptr %values, i64 0, i64 6
  %119 = load ptr, ptr %arrayidx227, align 16, !tbaa !4
  store ptr %119, ptr %__pyx_v_rtol, align 8, !tbaa !4
  %arrayidx228 = getelementptr inbounds [8 x ptr], ptr %values, i64 0, i64 7
  %120 = load ptr, ptr %arrayidx228, align 8, !tbaa !4
  store ptr %120, ptr %__pyx_v_mitr, align 8, !tbaa !4
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup229

cleanup229:                                       ; preds = %if.then193, %if.end220, %cleanup
  call void @llvm.lifetime.end.p0(i64 64, ptr %values) #9
  %cleanup.dest230 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest230, label %cleanup234 [
    i32 0, label %cleanup.cont231
    i32 3, label %__pyx_L5_argtuple_error
    i32 5, label %__pyx_L3_error
  ]

cleanup.cont231:                                  ; preds = %cleanup229
  br label %__pyx_L4_argument_unpacking_done

__pyx_L5_argtuple_error:                          ; preds = %cleanup229
  %121 = load ptr, ptr %__pyx_args.addr, align 8, !tbaa !4
  %call232 = call i64 @PyTuple_GET_SIZE(ptr noundef %121)
  call void @__Pyx_RaiseArgtupleInvalid(ptr noundef @.str.109, i32 noundef 1, i64 noundef 8, i64 noundef 8, i64 noundef %call232)
  %122 = load ptr, ptr @__pyx_f, align 16, !tbaa !4
  store ptr %122, ptr %__pyx_filename, align 8, !tbaa !4
  %123 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 175, ptr %__pyx_lineno, align 4, !tbaa !10
  %124 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 2600, ptr %__pyx_clineno, align 4, !tbaa !10
  %125 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  br label %__pyx_L3_error

__pyx_L3_error:                                   ; preds = %cleanup229, %__pyx_L5_argtuple_error
  %126 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  %127 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  %128 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  call void @__Pyx_AddTraceback(ptr noundef @.str.110, i32 noundef %126, i32 noundef %127, ptr noundef %128)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup234

__pyx_L4_argument_unpacking_done:                 ; preds = %cleanup.cont231
  %129 = load ptr, ptr %__pyx_self.addr, align 8, !tbaa !4
  %130 = load ptr, ptr %__pyx_v_method, align 8, !tbaa !4
  %131 = load ptr, ptr %__pyx_v_a0, align 8, !tbaa !4
  %132 = load ptr, ptr %__pyx_v_args, align 8, !tbaa !4
  %133 = load ptr, ptr %__pyx_v_xa, align 8, !tbaa !4
  %134 = load ptr, ptr %__pyx_v_xb, align 8, !tbaa !4
  %135 = load ptr, ptr %__pyx_v_xtol, align 8, !tbaa !4
  %136 = load ptr, ptr %__pyx_v_rtol, align 8, !tbaa !4
  %137 = load ptr, ptr %__pyx_v_mitr, align 8, !tbaa !4
  %call233 = call ptr @__pyx_pf_5scipy_8optimize_15cython_optimize_6_zeros_loop_example(ptr noundef %129, ptr noundef %130, ptr noundef %131, ptr noundef %132, ptr noundef %133, ptr noundef %134, ptr noundef %135, ptr noundef %136, ptr noundef %137)
  store ptr %call233, ptr %__pyx_r, align 8, !tbaa !4
  %138 = load ptr, ptr %__pyx_r, align 8, !tbaa !4
  store ptr %138, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup234

cleanup234:                                       ; preds = %__pyx_L4_argument_unpacking_done, %__pyx_L3_error, %cleanup229
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pyx_r) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %__pyx_clineno) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pyx_filename) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %__pyx_lineno) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pyx_v_mitr) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pyx_v_rtol) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pyx_v_xtol) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pyx_v_xb) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pyx_v_xa) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pyx_v_args) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pyx_v_a0) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pyx_v_method) #9
  %139 = load ptr, ptr %retval, align 8
  ret ptr %139
}

; Function Attrs: nounwind uwtable
define internal ptr @__pyx_pf_5scipy_8optimize_15cython_optimize_6_zeros_loop_example(ptr noundef %__pyx_self, ptr noundef %__pyx_v_method, ptr noundef %__pyx_v_a0, ptr noundef %__pyx_v_args, ptr noundef %__pyx_v_xa, ptr noundef %__pyx_v_xb, ptr noundef %__pyx_v_xtol, ptr noundef %__pyx_v_rtol, ptr noundef %__pyx_v_mitr) #0 {
entry:
  %retval = alloca ptr, align 8
  %__pyx_self.addr = alloca ptr, align 8
  %__pyx_v_method.addr = alloca ptr, align 8
  %__pyx_v_a0.addr = alloca ptr, align 8
  %__pyx_v_args.addr = alloca ptr, align 8
  %__pyx_v_xa.addr = alloca ptr, align 8
  %__pyx_v_xb.addr = alloca ptr, align 8
  %__pyx_v_xtol.addr = alloca ptr, align 8
  %__pyx_v_rtol.addr = alloca ptr, align 8
  %__pyx_v_mitr.addr = alloca ptr, align 8
  %__pyx_cur_scope = alloca ptr, align 8
  %__pyx_7genexpr__pyx_v_a0_ = alloca ptr, align 8
  %__pyx_r = alloca ptr, align 8
  %__pyx_t_1 = alloca ptr, align 8
  %__pyx_t_2 = alloca ptr, align 8
  %__pyx_t_3 = alloca ptr, align 8
  %__pyx_t_4 = alloca ptr, align 8
  %__pyx_t_5 = alloca i64, align 8
  %__pyx_t_6 = alloca ptr, align 8
  %__pyx_lineno = alloca i32, align 4
  %__pyx_filename = alloca ptr, align 8
  %__pyx_clineno = alloca i32, align 4
  %function = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp121 = alloca ptr, align 8
  %exc_type = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp247 = alloca ptr, align 8
  %tmp288 = alloca ptr, align 8
  store ptr %__pyx_self, ptr %__pyx_self.addr, align 8, !tbaa !4
  store ptr %__pyx_v_method, ptr %__pyx_v_method.addr, align 8, !tbaa !4
  store ptr %__pyx_v_a0, ptr %__pyx_v_a0.addr, align 8, !tbaa !4
  store ptr %__pyx_v_args, ptr %__pyx_v_args.addr, align 8, !tbaa !4
  store ptr %__pyx_v_xa, ptr %__pyx_v_xa.addr, align 8, !tbaa !4
  store ptr %__pyx_v_xb, ptr %__pyx_v_xb.addr, align 8, !tbaa !4
  store ptr %__pyx_v_xtol, ptr %__pyx_v_xtol.addr, align 8, !tbaa !4
  store ptr %__pyx_v_rtol, ptr %__pyx_v_rtol.addr, align 8, !tbaa !4
  store ptr %__pyx_v_mitr, ptr %__pyx_v_mitr.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pyx_cur_scope) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pyx_7genexpr__pyx_v_a0_) #9
  store ptr null, ptr %__pyx_7genexpr__pyx_v_a0_, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pyx_r) #9
  store ptr null, ptr %__pyx_r, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pyx_t_1) #9
  store ptr null, ptr %__pyx_t_1, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pyx_t_2) #9
  store ptr null, ptr %__pyx_t_2, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pyx_t_3) #9
  store ptr null, ptr %__pyx_t_3, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pyx_t_4) #9
  store ptr null, ptr %__pyx_t_4, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pyx_t_5) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pyx_t_6) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %__pyx_lineno) #9
  store i32 0, ptr %__pyx_lineno, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pyx_filename) #9
  store ptr null, ptr %__pyx_filename, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %__pyx_clineno) #9
  store i32 0, ptr %__pyx_clineno, align 4, !tbaa !10
  %0 = load ptr, ptr @__pyx_ptype_5scipy_8optimize_15cython_optimize_6_zeros___pyx_scope_struct__loop_example, align 8, !tbaa !4
  %1 = load ptr, ptr @__pyx_empty_tuple, align 8, !tbaa !4
  %call = call ptr @__pyx_tp_new_5scipy_8optimize_15cython_optimize_6_zeros___pyx_scope_struct__loop_example(ptr noundef %0, ptr noundef %1, ptr noundef null)
  store ptr %call, ptr %__pyx_cur_scope, align 8, !tbaa !4
  %2 = load ptr, ptr %__pyx_cur_scope, align 8, !tbaa !4
  %tobool = icmp ne ptr %2, null
  %lnot = xor i1 %tobool, true
  %lnot1 = xor i1 %lnot, true
  %lnot2 = xor i1 %lnot1, true
  %lnot.ext = zext i1 %lnot2 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool3 = icmp ne i64 %expval, 0
  br i1 %tobool3, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store ptr @_Py_NoneStruct, ptr %__pyx_cur_scope, align 8, !tbaa !4
  call void @Py_INCREF(ptr noundef @_Py_NoneStruct)
  %3 = load ptr, ptr @__pyx_f, align 16, !tbaa !4
  store ptr %3, ptr %__pyx_filename, align 8, !tbaa !4
  %4 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 175, ptr %__pyx_lineno, align 4, !tbaa !10
  %5 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 2761, ptr %__pyx_clineno, align 4, !tbaa !10
  %6 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  br label %__pyx_L1_error

if.else:                                          ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %if.else
  %7 = load ptr, ptr %__pyx_v_method.addr, align 8, !tbaa !4
  %8 = load ptr, ptr %__pyx_cur_scope, align 8, !tbaa !4
  %__pyx_v_method4 = getelementptr inbounds %struct.__pyx_obj_5scipy_8optimize_15cython_optimize_6_zeros___pyx_scope_struct__loop_example, ptr %8, i32 0, i32 1
  store ptr %7, ptr %__pyx_v_method4, align 8, !tbaa !86
  %9 = load ptr, ptr %__pyx_cur_scope, align 8, !tbaa !4
  %__pyx_v_method5 = getelementptr inbounds %struct.__pyx_obj_5scipy_8optimize_15cython_optimize_6_zeros___pyx_scope_struct__loop_example, ptr %9, i32 0, i32 1
  %10 = load ptr, ptr %__pyx_v_method5, align 8, !tbaa !86
  call void @Py_INCREF(ptr noundef %10)
  %11 = load ptr, ptr %__pyx_v_xa.addr, align 8, !tbaa !4
  %12 = load ptr, ptr %__pyx_cur_scope, align 8, !tbaa !4
  %__pyx_v_xa6 = getelementptr inbounds %struct.__pyx_obj_5scipy_8optimize_15cython_optimize_6_zeros___pyx_scope_struct__loop_example, ptr %12, i32 0, i32 4
  store ptr %11, ptr %__pyx_v_xa6, align 8, !tbaa !90
  %13 = load ptr, ptr %__pyx_cur_scope, align 8, !tbaa !4
  %__pyx_v_xa7 = getelementptr inbounds %struct.__pyx_obj_5scipy_8optimize_15cython_optimize_6_zeros___pyx_scope_struct__loop_example, ptr %13, i32 0, i32 4
  %14 = load ptr, ptr %__pyx_v_xa7, align 8, !tbaa !90
  call void @Py_INCREF(ptr noundef %14)
  %15 = load ptr, ptr %__pyx_v_xb.addr, align 8, !tbaa !4
  %16 = load ptr, ptr %__pyx_cur_scope, align 8, !tbaa !4
  %__pyx_v_xb8 = getelementptr inbounds %struct.__pyx_obj_5scipy_8optimize_15cython_optimize_6_zeros___pyx_scope_struct__loop_example, ptr %16, i32 0, i32 5
  store ptr %15, ptr %__pyx_v_xb8, align 8, !tbaa !91
  %17 = load ptr, ptr %__pyx_cur_scope, align 8, !tbaa !4
  %__pyx_v_xb9 = getelementptr inbounds %struct.__pyx_obj_5scipy_8optimize_15cython_optimize_6_zeros___pyx_scope_struct__loop_example, ptr %17, i32 0, i32 5
  %18 = load ptr, ptr %__pyx_v_xb9, align 8, !tbaa !91
  call void @Py_INCREF(ptr noundef %18)
  %19 = load ptr, ptr %__pyx_v_xtol.addr, align 8, !tbaa !4
  %20 = load ptr, ptr %__pyx_cur_scope, align 8, !tbaa !4
  %__pyx_v_xtol10 = getelementptr inbounds %struct.__pyx_obj_5scipy_8optimize_15cython_optimize_6_zeros___pyx_scope_struct__loop_example, ptr %20, i32 0, i32 6
  store ptr %19, ptr %__pyx_v_xtol10, align 8, !tbaa !92
  %21 = load ptr, ptr %__pyx_cur_scope, align 8, !tbaa !4
  %__pyx_v_xtol11 = getelementptr inbounds %struct.__pyx_obj_5scipy_8optimize_15cython_optimize_6_zeros___pyx_scope_struct__loop_example, ptr %21, i32 0, i32 6
  %22 = load ptr, ptr %__pyx_v_xtol11, align 8, !tbaa !92
  call void @Py_INCREF(ptr noundef %22)
  %23 = load ptr, ptr %__pyx_v_rtol.addr, align 8, !tbaa !4
  %24 = load ptr, ptr %__pyx_cur_scope, align 8, !tbaa !4
  %__pyx_v_rtol12 = getelementptr inbounds %struct.__pyx_obj_5scipy_8optimize_15cython_optimize_6_zeros___pyx_scope_struct__loop_example, ptr %24, i32 0, i32 3
  store ptr %23, ptr %__pyx_v_rtol12, align 8, !tbaa !89
  %25 = load ptr, ptr %__pyx_cur_scope, align 8, !tbaa !4
  %__pyx_v_rtol13 = getelementptr inbounds %struct.__pyx_obj_5scipy_8optimize_15cython_optimize_6_zeros___pyx_scope_struct__loop_example, ptr %25, i32 0, i32 3
  %26 = load ptr, ptr %__pyx_v_rtol13, align 8, !tbaa !89
  call void @Py_INCREF(ptr noundef %26)
  %27 = load ptr, ptr %__pyx_v_mitr.addr, align 8, !tbaa !4
  %28 = load ptr, ptr %__pyx_cur_scope, align 8, !tbaa !4
  %__pyx_v_mitr14 = getelementptr inbounds %struct.__pyx_obj_5scipy_8optimize_15cython_optimize_6_zeros___pyx_scope_struct__loop_example, ptr %28, i32 0, i32 2
  store ptr %27, ptr %__pyx_v_mitr14, align 8, !tbaa !88
  %29 = load ptr, ptr %__pyx_cur_scope, align 8, !tbaa !4
  %__pyx_v_mitr15 = getelementptr inbounds %struct.__pyx_obj_5scipy_8optimize_15cython_optimize_6_zeros___pyx_scope_struct__loop_example, ptr %29, i32 0, i32 2
  %30 = load ptr, ptr %__pyx_v_mitr15, align 8, !tbaa !88
  call void @Py_INCREF(ptr noundef %30)
  %31 = load ptr, ptr %__pyx_v_args.addr, align 8, !tbaa !4
  call void @Py_INCREF(ptr noundef %31)
  br label %do.body

do.body:                                          ; preds = %if.end
  %32 = load i64, ptr @__pyx_pf_5scipy_8optimize_15cython_optimize_6_zeros_loop_example.__pyx_dict_version, align 8, !tbaa !24
  %33 = load ptr, ptr @__pyx_d, align 8, !tbaa !4
  %ma_version_tag = getelementptr inbounds %struct.PyDictObject, ptr %33, i32 0, i32 2
  %34 = load i64, ptr %ma_version_tag, align 8, !tbaa !111
  %cmp = icmp eq i64 %32, %34
  %lnot17 = xor i1 %cmp, true
  %lnot19 = xor i1 %lnot17, true
  %lnot.ext20 = zext i1 %lnot19 to i32
  %conv21 = sext i32 %lnot.ext20 to i64
  %expval22 = call i64 @llvm.expect.i64(i64 %conv21, i64 1)
  %tobool23 = icmp ne i64 %expval22, 0
  br i1 %tobool23, label %cond.true, label %cond.false34

cond.true:                                        ; preds = %do.body
  %35 = load ptr, ptr @__pyx_pf_5scipy_8optimize_15cython_optimize_6_zeros_loop_example.__pyx_dict_cached_value, align 8, !tbaa !4
  %tobool24 = icmp ne ptr %35, null
  %lnot25 = xor i1 %tobool24, true
  %lnot27 = xor i1 %lnot25, true
  %lnot.ext28 = zext i1 %lnot27 to i32
  %conv29 = sext i32 %lnot.ext28 to i64
  %expval30 = call i64 @llvm.expect.i64(i64 %conv29, i64 1)
  %tobool31 = icmp ne i64 %expval30, 0
  br i1 %tobool31, label %cond.true32, label %cond.false

cond.true32:                                      ; preds = %cond.true
  %36 = load ptr, ptr @__pyx_pf_5scipy_8optimize_15cython_optimize_6_zeros_loop_example.__pyx_dict_cached_value, align 8, !tbaa !4
  call void @Py_INCREF(ptr noundef %36)
  %37 = load ptr, ptr @__pyx_pf_5scipy_8optimize_15cython_optimize_6_zeros_loop_example.__pyx_dict_cached_value, align 8, !tbaa !4
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %38 = load ptr, ptr @__pyx_n_s_EXAMPLES_MAP, align 8, !tbaa !4
  %call33 = call ptr @__Pyx_GetBuiltinName(ptr noundef %38)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true32
  %cond = phi ptr [ %37, %cond.true32 ], [ %call33, %cond.false ]
  br label %cond.end36

cond.false34:                                     ; preds = %do.body
  %39 = load ptr, ptr @__pyx_n_s_EXAMPLES_MAP, align 8, !tbaa !4
  %call35 = call ptr @__Pyx__GetModuleGlobalName(ptr noundef %39, ptr noundef @__pyx_pf_5scipy_8optimize_15cython_optimize_6_zeros_loop_example.__pyx_dict_version, ptr noundef @__pyx_pf_5scipy_8optimize_15cython_optimize_6_zeros_loop_example.__pyx_dict_cached_value)
  br label %cond.end36

cond.end36:                                       ; preds = %cond.false34, %cond.end
  %cond37 = phi ptr [ %cond, %cond.end ], [ %call35, %cond.false34 ]
  store ptr %cond37, ptr %__pyx_t_1, align 8, !tbaa !4
  br label %do.cond

do.cond:                                          ; preds = %cond.end36
  br label %do.end

do.end:                                           ; preds = %do.cond
  %40 = load ptr, ptr %__pyx_t_1, align 8, !tbaa !4
  %tobool38 = icmp ne ptr %40, null
  %lnot39 = xor i1 %tobool38, true
  %lnot41 = xor i1 %lnot39, true
  %lnot43 = xor i1 %lnot41, true
  %lnot.ext44 = zext i1 %lnot43 to i32
  %conv45 = sext i32 %lnot.ext44 to i64
  %expval46 = call i64 @llvm.expect.i64(i64 %conv45, i64 0)
  %tobool47 = icmp ne i64 %expval46, 0
  br i1 %tobool47, label %if.then48, label %if.end49

if.then48:                                        ; preds = %do.end
  %41 = load ptr, ptr @__pyx_f, align 16, !tbaa !4
  store ptr %41, ptr %__pyx_filename, align 8, !tbaa !4
  %42 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 206, ptr %__pyx_lineno, align 4, !tbaa !10
  %43 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 2792, ptr %__pyx_clineno, align 4, !tbaa !10
  %44 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  br label %__pyx_L1_error

if.end49:                                         ; preds = %do.end
  %45 = load ptr, ptr %__pyx_cur_scope, align 8, !tbaa !4
  %__pyx_v_method50 = getelementptr inbounds %struct.__pyx_obj_5scipy_8optimize_15cython_optimize_6_zeros___pyx_scope_struct__loop_example, ptr %45, i32 0, i32 1
  %46 = load ptr, ptr %__pyx_v_method50, align 8, !tbaa !86
  %47 = load ptr, ptr @__pyx_n_s_lower, align 8, !tbaa !4
  %call51 = call ptr @__Pyx_PyObject_GetAttrStr(ptr noundef %46, ptr noundef %47)
  store ptr %call51, ptr %__pyx_t_3, align 8, !tbaa !4
  %48 = load ptr, ptr %__pyx_t_3, align 8, !tbaa !4
  %tobool52 = icmp ne ptr %48, null
  %lnot53 = xor i1 %tobool52, true
  %lnot55 = xor i1 %lnot53, true
  %lnot57 = xor i1 %lnot55, true
  %lnot.ext58 = zext i1 %lnot57 to i32
  %conv59 = sext i32 %lnot.ext58 to i64
  %expval60 = call i64 @llvm.expect.i64(i64 %conv59, i64 0)
  %tobool61 = icmp ne i64 %expval60, 0
  br i1 %tobool61, label %if.then62, label %if.end63

if.then62:                                        ; preds = %if.end49
  %49 = load ptr, ptr @__pyx_f, align 16, !tbaa !4
  store ptr %49, ptr %__pyx_filename, align 8, !tbaa !4
  %50 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 206, ptr %__pyx_lineno, align 4, !tbaa !10
  %51 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 2794, ptr %__pyx_clineno, align 4, !tbaa !10
  %52 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  br label %__pyx_L1_error

if.end63:                                         ; preds = %if.end49
  store ptr null, ptr %__pyx_t_4, align 8, !tbaa !4
  %53 = load ptr, ptr %__pyx_t_3, align 8, !tbaa !4
  %call64 = call i32 @Py_IS_TYPE(ptr noundef %53, ptr noundef @PyMethod_Type)
  %tobool65 = icmp ne i32 %call64, 0
  %lnot66 = xor i1 %tobool65, true
  %lnot68 = xor i1 %lnot66, true
  %lnot.ext69 = zext i1 %lnot68 to i32
  %conv70 = sext i32 %lnot.ext69 to i64
  %expval71 = call i64 @llvm.expect.i64(i64 %conv70, i64 1)
  %tobool72 = icmp ne i64 %expval71, 0
  br i1 %tobool72, label %if.then73, label %if.end87

if.then73:                                        ; preds = %if.end63
  %54 = load ptr, ptr %__pyx_t_3, align 8, !tbaa !4
  %im_self = getelementptr inbounds %struct.PyMethodObject, ptr %54, i32 0, i32 2
  %55 = load ptr, ptr %im_self, align 8, !tbaa !113
  store ptr %55, ptr %__pyx_t_4, align 8, !tbaa !4
  %56 = load ptr, ptr %__pyx_t_4, align 8, !tbaa !4
  %tobool74 = icmp ne ptr %56, null
  %lnot75 = xor i1 %tobool74, true
  %lnot77 = xor i1 %lnot75, true
  %lnot.ext78 = zext i1 %lnot77 to i32
  %conv79 = sext i32 %lnot.ext78 to i64
  %expval80 = call i64 @llvm.expect.i64(i64 %conv79, i64 1)
  %tobool81 = icmp ne i64 %expval80, 0
  br i1 %tobool81, label %if.then82, label %if.end86

if.then82:                                        ; preds = %if.then73
  call void @llvm.lifetime.start.p0(i64 8, ptr %function) #9
  %57 = load ptr, ptr %__pyx_t_3, align 8, !tbaa !4
  %im_func = getelementptr inbounds %struct.PyMethodObject, ptr %57, i32 0, i32 1
  %58 = load ptr, ptr %im_func, align 8, !tbaa !115
  store ptr %58, ptr %function, align 8, !tbaa !4
  %59 = load ptr, ptr %__pyx_t_4, align 8, !tbaa !4
  call void @Py_INCREF(ptr noundef %59)
  %60 = load ptr, ptr %function, align 8, !tbaa !4
  call void @Py_INCREF(ptr noundef %60)
  br label %do.body83

do.body83:                                        ; preds = %if.then82
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #9
  %61 = load ptr, ptr %__pyx_t_3, align 8, !tbaa !4
  store ptr %61, ptr %tmp, align 8, !tbaa !4
  %62 = load ptr, ptr %function, align 8, !tbaa !4
  store ptr %62, ptr %__pyx_t_3, align 8, !tbaa !4
  %63 = load ptr, ptr %tmp, align 8, !tbaa !4
  call void @Py_DECREF(ptr noundef %63)
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #9
  br label %do.cond84

do.cond84:                                        ; preds = %do.body83
  br label %do.end85

do.end85:                                         ; preds = %do.cond84
  call void @llvm.lifetime.end.p0(i64 8, ptr %function) #9
  br label %if.end86

if.end86:                                         ; preds = %do.end85, %if.then73
  br label %if.end87

if.end87:                                         ; preds = %if.end86, %if.end63
  %64 = load ptr, ptr %__pyx_t_4, align 8, !tbaa !4
  %tobool88 = icmp ne ptr %64, null
  br i1 %tobool88, label %cond.true89, label %cond.false91

cond.true89:                                      ; preds = %if.end87
  %65 = load ptr, ptr %__pyx_t_3, align 8, !tbaa !4
  %66 = load ptr, ptr %__pyx_t_4, align 8, !tbaa !4
  %call90 = call ptr @__Pyx_PyObject_CallOneArg(ptr noundef %65, ptr noundef %66)
  br label %cond.end93

cond.false91:                                     ; preds = %if.end87
  %67 = load ptr, ptr %__pyx_t_3, align 8, !tbaa !4
  %call92 = call ptr @__Pyx_PyObject_CallNoArg(ptr noundef %67)
  br label %cond.end93

cond.end93:                                       ; preds = %cond.false91, %cond.true89
  %cond94 = phi ptr [ %call90, %cond.true89 ], [ %call92, %cond.false91 ]
  store ptr %cond94, ptr %__pyx_t_2, align 8, !tbaa !4
  %68 = load ptr, ptr %__pyx_t_4, align 8, !tbaa !4
  call void @Py_XDECREF(ptr noundef %68)
  store ptr null, ptr %__pyx_t_4, align 8, !tbaa !4
  %69 = load ptr, ptr %__pyx_t_2, align 8, !tbaa !4
  %tobool95 = icmp ne ptr %69, null
  %lnot96 = xor i1 %tobool95, true
  %lnot98 = xor i1 %lnot96, true
  %lnot100 = xor i1 %lnot98, true
  %lnot.ext101 = zext i1 %lnot100 to i32
  %conv102 = sext i32 %lnot.ext101 to i64
  %expval103 = call i64 @llvm.expect.i64(i64 %conv102, i64 0)
  %tobool104 = icmp ne i64 %expval103, 0
  br i1 %tobool104, label %if.then105, label %if.end106

if.then105:                                       ; preds = %cond.end93
  %70 = load ptr, ptr @__pyx_f, align 16, !tbaa !4
  store ptr %70, ptr %__pyx_filename, align 8, !tbaa !4
  %71 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 206, ptr %__pyx_lineno, align 4, !tbaa !10
  %72 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 2808, ptr %__pyx_clineno, align 4, !tbaa !10
  %73 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  br label %__pyx_L1_error

if.end106:                                        ; preds = %cond.end93
  %74 = load ptr, ptr %__pyx_t_3, align 8, !tbaa !4
  call void @Py_DECREF(ptr noundef %74)
  store ptr null, ptr %__pyx_t_3, align 8, !tbaa !4
  %75 = load ptr, ptr %__pyx_t_1, align 8, !tbaa !4
  %76 = load ptr, ptr %__pyx_t_2, align 8, !tbaa !4
  %call107 = call ptr @__Pyx_PyObject_GetItem(ptr noundef %75, ptr noundef %76)
  store ptr %call107, ptr %__pyx_t_3, align 8, !tbaa !4
  %77 = load ptr, ptr %__pyx_t_3, align 8, !tbaa !4
  %tobool108 = icmp ne ptr %77, null
  %lnot109 = xor i1 %tobool108, true
  %lnot111 = xor i1 %lnot109, true
  %lnot113 = xor i1 %lnot111, true
  %lnot.ext114 = zext i1 %lnot113 to i32
  %conv115 = sext i32 %lnot.ext114 to i64
  %expval116 = call i64 @llvm.expect.i64(i64 %conv115, i64 0)
  %tobool117 = icmp ne i64 %expval116, 0
  br i1 %tobool117, label %if.then118, label %if.end119

if.then118:                                       ; preds = %if.end106
  %78 = load ptr, ptr @__pyx_f, align 16, !tbaa !4
  store ptr %78, ptr %__pyx_filename, align 8, !tbaa !4
  %79 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 206, ptr %__pyx_lineno, align 4, !tbaa !10
  %80 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 2811, ptr %__pyx_clineno, align 4, !tbaa !10
  %81 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  br label %__pyx_L1_error

if.end119:                                        ; preds = %if.end106
  %82 = load ptr, ptr %__pyx_t_1, align 8, !tbaa !4
  call void @Py_DECREF(ptr noundef %82)
  store ptr null, ptr %__pyx_t_1, align 8, !tbaa !4
  %83 = load ptr, ptr %__pyx_t_2, align 8, !tbaa !4
  call void @Py_DECREF(ptr noundef %83)
  store ptr null, ptr %__pyx_t_2, align 8, !tbaa !4
  br label %do.body120

do.body120:                                       ; preds = %if.end119
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp121) #9
  %84 = load ptr, ptr %__pyx_cur_scope, align 8, !tbaa !4
  %__pyx_v_method122 = getelementptr inbounds %struct.__pyx_obj_5scipy_8optimize_15cython_optimize_6_zeros___pyx_scope_struct__loop_example, ptr %84, i32 0, i32 1
  %85 = load ptr, ptr %__pyx_v_method122, align 8, !tbaa !86
  store ptr %85, ptr %tmp121, align 8, !tbaa !4
  %86 = load ptr, ptr %__pyx_t_3, align 8, !tbaa !4
  %87 = load ptr, ptr %__pyx_cur_scope, align 8, !tbaa !4
  %__pyx_v_method123 = getelementptr inbounds %struct.__pyx_obj_5scipy_8optimize_15cython_optimize_6_zeros___pyx_scope_struct__loop_example, ptr %87, i32 0, i32 1
  store ptr %86, ptr %__pyx_v_method123, align 8, !tbaa !86
  %88 = load ptr, ptr %tmp121, align 8, !tbaa !4
  call void @Py_DECREF(ptr noundef %88)
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp121) #9
  br label %do.cond124

do.cond124:                                       ; preds = %do.body120
  br label %do.end125

do.end125:                                        ; preds = %do.cond124
  store ptr null, ptr %__pyx_t_3, align 8, !tbaa !4
  %call126 = call ptr @PyList_New(i64 noundef 0)
  store ptr %call126, ptr %__pyx_t_3, align 8, !tbaa !4
  %89 = load ptr, ptr %__pyx_t_3, align 8, !tbaa !4
  %tobool127 = icmp ne ptr %89, null
  %lnot128 = xor i1 %tobool127, true
  %lnot130 = xor i1 %lnot128, true
  %lnot132 = xor i1 %lnot130, true
  %lnot.ext133 = zext i1 %lnot132 to i32
  %conv134 = sext i32 %lnot.ext133 to i64
  %expval135 = call i64 @llvm.expect.i64(i64 %conv134, i64 0)
  %tobool136 = icmp ne i64 %expval135, 0
  br i1 %tobool136, label %if.then137, label %if.end138

if.then137:                                       ; preds = %do.end125
  %90 = load ptr, ptr @__pyx_f, align 16, !tbaa !4
  store ptr %90, ptr %__pyx_filename, align 8, !tbaa !4
  %91 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 207, ptr %__pyx_lineno, align 4, !tbaa !10
  %92 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 2828, ptr %__pyx_clineno, align 4, !tbaa !10
  %93 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  br label %__pyx_L5_error

if.end138:                                        ; preds = %do.end125
  %94 = load ptr, ptr %__pyx_v_a0.addr, align 8, !tbaa !4
  %call139 = call i32 @Py_IS_TYPE(ptr noundef %94, ptr noundef @PyList_Type)
  %tobool140 = icmp ne i32 %call139, 0
  %lnot141 = xor i1 %tobool140, true
  %lnot143 = xor i1 %lnot141, true
  %lnot.ext144 = zext i1 %lnot143 to i32
  %conv145 = sext i32 %lnot.ext144 to i64
  %expval146 = call i64 @llvm.expect.i64(i64 %conv145, i64 1)
  %tobool147 = icmp ne i64 %expval146, 0
  br i1 %tobool147, label %if.then150, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end138
  %95 = load ptr, ptr %__pyx_v_a0.addr, align 8, !tbaa !4
  %call148 = call i32 @Py_IS_TYPE(ptr noundef %95, ptr noundef @PyTuple_Type)
  %tobool149 = icmp ne i32 %call148, 0
  br i1 %tobool149, label %if.then150, label %if.else151

if.then150:                                       ; preds = %lor.lhs.false, %if.end138
  %96 = load ptr, ptr %__pyx_v_a0.addr, align 8, !tbaa !4
  store ptr %96, ptr %__pyx_t_2, align 8, !tbaa !4
  %97 = load ptr, ptr %__pyx_t_2, align 8, !tbaa !4
  call void @Py_INCREF(ptr noundef %97)
  store i64 0, ptr %__pyx_t_5, align 8, !tbaa !24
  store ptr null, ptr %__pyx_t_6, align 8, !tbaa !4
  br label %if.end178

if.else151:                                       ; preds = %lor.lhs.false
  store i64 -1, ptr %__pyx_t_5, align 8, !tbaa !24
  %98 = load ptr, ptr %__pyx_v_a0.addr, align 8, !tbaa !4
  %call152 = call ptr @PyObject_GetIter(ptr noundef %98)
  store ptr %call152, ptr %__pyx_t_2, align 8, !tbaa !4
  %99 = load ptr, ptr %__pyx_t_2, align 8, !tbaa !4
  %tobool153 = icmp ne ptr %99, null
  %lnot154 = xor i1 %tobool153, true
  %lnot156 = xor i1 %lnot154, true
  %lnot158 = xor i1 %lnot156, true
  %lnot.ext159 = zext i1 %lnot158 to i32
  %conv160 = sext i32 %lnot.ext159 to i64
  %expval161 = call i64 @llvm.expect.i64(i64 %conv160, i64 0)
  %tobool162 = icmp ne i64 %expval161, 0
  br i1 %tobool162, label %if.then163, label %if.end164

if.then163:                                       ; preds = %if.else151
  %100 = load ptr, ptr @__pyx_f, align 16, !tbaa !4
  store ptr %100, ptr %__pyx_filename, align 8, !tbaa !4
  %101 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 207, ptr %__pyx_lineno, align 4, !tbaa !10
  %102 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 2834, ptr %__pyx_clineno, align 4, !tbaa !10
  %103 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  br label %__pyx_L5_error

if.end164:                                        ; preds = %if.else151
  %104 = load ptr, ptr %__pyx_t_2, align 8, !tbaa !4
  %call165 = call ptr @Py_TYPE(ptr noundef %104)
  %tp_iternext = getelementptr inbounds %struct._typeobject, ptr %call165, i32 0, i32 26
  %105 = load ptr, ptr %tp_iternext, align 8, !tbaa !108
  store ptr %105, ptr %__pyx_t_6, align 8, !tbaa !4
  %106 = load ptr, ptr %__pyx_t_6, align 8, !tbaa !4
  %tobool166 = icmp ne ptr %106, null
  %lnot167 = xor i1 %tobool166, true
  %lnot169 = xor i1 %lnot167, true
  %lnot171 = xor i1 %lnot169, true
  %lnot.ext172 = zext i1 %lnot171 to i32
  %conv173 = sext i32 %lnot.ext172 to i64
  %expval174 = call i64 @llvm.expect.i64(i64 %conv173, i64 0)
  %tobool175 = icmp ne i64 %expval174, 0
  br i1 %tobool175, label %if.then176, label %if.end177

if.then176:                                       ; preds = %if.end164
  %107 = load ptr, ptr @__pyx_f, align 16, !tbaa !4
  store ptr %107, ptr %__pyx_filename, align 8, !tbaa !4
  %108 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 207, ptr %__pyx_lineno, align 4, !tbaa !10
  %109 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 2836, ptr %__pyx_clineno, align 4, !tbaa !10
  %110 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  br label %__pyx_L5_error

if.end177:                                        ; preds = %if.end164
  br label %if.end178

if.end178:                                        ; preds = %if.end177, %if.then150
  br label %for.cond

for.cond:                                         ; preds = %if.end286, %if.end178
  %111 = load ptr, ptr %__pyx_t_6, align 8, !tbaa !4
  %tobool179 = icmp ne ptr %111, null
  %lnot180 = xor i1 %tobool179, true
  %lnot182 = xor i1 %lnot180, true
  %lnot184 = xor i1 %lnot182, true
  %lnot.ext185 = zext i1 %lnot184 to i32
  %conv186 = sext i32 %lnot.ext185 to i64
  %expval187 = call i64 @llvm.expect.i64(i64 %conv186, i64 1)
  %tobool188 = icmp ne i64 %expval187, 0
  br i1 %tobool188, label %if.then189, label %if.else215

if.then189:                                       ; preds = %for.cond
  %112 = load ptr, ptr %__pyx_t_2, align 8, !tbaa !4
  %call190 = call i32 @Py_IS_TYPE(ptr noundef %112, ptr noundef @PyList_Type)
  %tobool191 = icmp ne i32 %call190, 0
  %lnot192 = xor i1 %tobool191, true
  %lnot194 = xor i1 %lnot192, true
  %lnot.ext195 = zext i1 %lnot194 to i32
  %conv196 = sext i32 %lnot.ext195 to i64
  %expval197 = call i64 @llvm.expect.i64(i64 %conv196, i64 1)
  %tobool198 = icmp ne i64 %expval197, 0
  br i1 %tobool198, label %if.then199, label %if.else205

if.then199:                                       ; preds = %if.then189
  %113 = load i64, ptr %__pyx_t_5, align 8, !tbaa !24
  %114 = load ptr, ptr %__pyx_t_2, align 8, !tbaa !4
  %call200 = call i64 @PyList_GET_SIZE(ptr noundef %114)
  %cmp201 = icmp sge i64 %113, %call200
  br i1 %cmp201, label %if.then203, label %if.end204

if.then203:                                       ; preds = %if.then199
  br label %for.end

if.end204:                                        ; preds = %if.then199
  %115 = load ptr, ptr %__pyx_t_2, align 8, !tbaa !4
  %ob_item = getelementptr inbounds %struct.PyListObject, ptr %115, i32 0, i32 1
  %116 = load ptr, ptr %ob_item, align 8, !tbaa !109
  %117 = load i64, ptr %__pyx_t_5, align 8, !tbaa !24
  %arrayidx = getelementptr inbounds ptr, ptr %116, i64 %117
  %118 = load ptr, ptr %arrayidx, align 8, !tbaa !4
  store ptr %118, ptr %__pyx_t_1, align 8, !tbaa !4
  %119 = load ptr, ptr %__pyx_t_1, align 8, !tbaa !4
  call void @Py_INCREF(ptr noundef %119)
  %120 = load i64, ptr %__pyx_t_5, align 8, !tbaa !24
  %inc = add nsw i64 %120, 1
  store i64 %inc, ptr %__pyx_t_5, align 8, !tbaa !24
  br label %if.end214

if.else205:                                       ; preds = %if.then189
  %121 = load i64, ptr %__pyx_t_5, align 8, !tbaa !24
  %122 = load ptr, ptr %__pyx_t_2, align 8, !tbaa !4
  %call206 = call i64 @PyTuple_GET_SIZE(ptr noundef %122)
  %cmp207 = icmp sge i64 %121, %call206
  br i1 %cmp207, label %if.then209, label %if.end210

if.then209:                                       ; preds = %if.else205
  br label %for.end

if.end210:                                        ; preds = %if.else205
  %123 = load ptr, ptr %__pyx_t_2, align 8, !tbaa !4
  %ob_item211 = getelementptr inbounds %struct.PyTupleObject, ptr %123, i32 0, i32 1
  %124 = load i64, ptr %__pyx_t_5, align 8, !tbaa !24
  %arrayidx212 = getelementptr inbounds [1 x ptr], ptr %ob_item211, i64 0, i64 %124
  %125 = load ptr, ptr %arrayidx212, align 8, !tbaa !4
  store ptr %125, ptr %__pyx_t_1, align 8, !tbaa !4
  %126 = load ptr, ptr %__pyx_t_1, align 8, !tbaa !4
  call void @Py_INCREF(ptr noundef %126)
  %127 = load i64, ptr %__pyx_t_5, align 8, !tbaa !24
  %inc213 = add nsw i64 %127, 1
  store i64 %inc213, ptr %__pyx_t_5, align 8, !tbaa !24
  br label %if.end214

if.end214:                                        ; preds = %if.end210, %if.end204
  br label %if.end245

if.else215:                                       ; preds = %for.cond
  %128 = load ptr, ptr %__pyx_t_6, align 8, !tbaa !4
  %129 = load ptr, ptr %__pyx_t_2, align 8, !tbaa !4
  %call216 = call ptr %128(ptr noundef %129)
  store ptr %call216, ptr %__pyx_t_1, align 8, !tbaa !4
  %130 = load ptr, ptr %__pyx_t_1, align 8, !tbaa !4
  %tobool217 = icmp ne ptr %130, null
  %lnot218 = xor i1 %tobool217, true
  %lnot220 = xor i1 %lnot218, true
  %lnot222 = xor i1 %lnot220, true
  %lnot.ext223 = zext i1 %lnot222 to i32
  %conv224 = sext i32 %lnot.ext223 to i64
  %expval225 = call i64 @llvm.expect.i64(i64 %conv224, i64 0)
  %tobool226 = icmp ne i64 %expval225, 0
  br i1 %tobool226, label %if.then227, label %if.end244

if.then227:                                       ; preds = %if.else215
  call void @llvm.lifetime.start.p0(i64 8, ptr %exc_type) #9
  %call228 = call ptr @PyErr_Occurred()
  store ptr %call228, ptr %exc_type, align 8, !tbaa !4
  %131 = load ptr, ptr %exc_type, align 8, !tbaa !4
  %tobool229 = icmp ne ptr %131, null
  br i1 %tobool229, label %if.then230, label %if.end243

if.then230:                                       ; preds = %if.then227
  %132 = load ptr, ptr %exc_type, align 8, !tbaa !4
  %133 = load ptr, ptr @PyExc_StopIteration, align 8, !tbaa !4
  %call231 = call i32 @__Pyx_PyErr_GivenExceptionMatches(ptr noundef %132, ptr noundef %133)
  %tobool232 = icmp ne i32 %call231, 0
  %lnot233 = xor i1 %tobool232, true
  %lnot235 = xor i1 %lnot233, true
  %lnot.ext236 = zext i1 %lnot235 to i32
  %conv237 = sext i32 %lnot.ext236 to i64
  %expval238 = call i64 @llvm.expect.i64(i64 %conv237, i64 1)
  %tobool239 = icmp ne i64 %expval238, 0
  br i1 %tobool239, label %if.then240, label %if.else241

if.then240:                                       ; preds = %if.then230
  call void @PyErr_Clear()
  br label %if.end242

if.else241:                                       ; preds = %if.then230
  %134 = load ptr, ptr @__pyx_f, align 16, !tbaa !4
  store ptr %134, ptr %__pyx_filename, align 8, !tbaa !4
  %135 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 207, ptr %__pyx_lineno, align 4, !tbaa !10
  %136 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 2863, ptr %__pyx_clineno, align 4, !tbaa !10
  %137 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  store i32 9, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end242:                                        ; preds = %if.then240
  br label %if.end243

if.end243:                                        ; preds = %if.end242, %if.then227
  store i32 10, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else241, %if.end243
  call void @llvm.lifetime.end.p0(i64 8, ptr %exc_type) #9
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup330 [
    i32 10, label %for.end
    i32 9, label %__pyx_L5_error
  ]

if.end244:                                        ; preds = %if.else215
  br label %if.end245

if.end245:                                        ; preds = %if.end244, %if.end214
  br label %do.body246

do.body246:                                       ; preds = %if.end245
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp247) #9
  %138 = load ptr, ptr %__pyx_7genexpr__pyx_v_a0_, align 8, !tbaa !4
  store ptr %138, ptr %tmp247, align 8, !tbaa !4
  %139 = load ptr, ptr %__pyx_t_1, align 8, !tbaa !4
  store ptr %139, ptr %__pyx_7genexpr__pyx_v_a0_, align 8, !tbaa !4
  %140 = load ptr, ptr %tmp247, align 8, !tbaa !4
  call void @Py_XDECREF(ptr noundef %140)
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp247) #9
  br label %do.cond248

do.cond248:                                       ; preds = %do.body246
  br label %do.end249

do.end249:                                        ; preds = %do.cond248
  store ptr null, ptr %__pyx_t_1, align 8, !tbaa !4
  %call250 = call ptr @PyTuple_New(i64 noundef 1)
  store ptr %call250, ptr %__pyx_t_1, align 8, !tbaa !4
  %141 = load ptr, ptr %__pyx_t_1, align 8, !tbaa !4
  %tobool251 = icmp ne ptr %141, null
  %lnot252 = xor i1 %tobool251, true
  %lnot254 = xor i1 %lnot252, true
  %lnot256 = xor i1 %lnot254, true
  %lnot.ext257 = zext i1 %lnot256 to i32
  %conv258 = sext i32 %lnot.ext257 to i64
  %expval259 = call i64 @llvm.expect.i64(i64 %conv258, i64 0)
  %tobool260 = icmp ne i64 %expval259, 0
  br i1 %tobool260, label %if.then261, label %if.end262

if.then261:                                       ; preds = %do.end249
  %142 = load ptr, ptr @__pyx_f, align 16, !tbaa !4
  store ptr %142, ptr %__pyx_filename, align 8, !tbaa !4
  %143 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 207, ptr %__pyx_lineno, align 4, !tbaa !10
  %144 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 2871, ptr %__pyx_clineno, align 4, !tbaa !10
  %145 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  br label %__pyx_L5_error

if.end262:                                        ; preds = %do.end249
  %146 = load ptr, ptr %__pyx_7genexpr__pyx_v_a0_, align 8, !tbaa !4
  call void @Py_INCREF(ptr noundef %146)
  %147 = load ptr, ptr %__pyx_t_1, align 8, !tbaa !4
  %148 = load ptr, ptr %__pyx_7genexpr__pyx_v_a0_, align 8, !tbaa !4
  call void @PyTuple_SET_ITEM(ptr noundef %147, i64 noundef 0, ptr noundef %148)
  %149 = load ptr, ptr %__pyx_t_1, align 8, !tbaa !4
  %150 = load ptr, ptr %__pyx_v_args.addr, align 8, !tbaa !4
  %call263 = call ptr @PyNumber_Add(ptr noundef %149, ptr noundef %150)
  store ptr %call263, ptr %__pyx_t_4, align 8, !tbaa !4
  %151 = load ptr, ptr %__pyx_t_4, align 8, !tbaa !4
  %tobool264 = icmp ne ptr %151, null
  %lnot265 = xor i1 %tobool264, true
  %lnot267 = xor i1 %lnot265, true
  %lnot269 = xor i1 %lnot267, true
  %lnot.ext270 = zext i1 %lnot269 to i32
  %conv271 = sext i32 %lnot.ext270 to i64
  %expval272 = call i64 @llvm.expect.i64(i64 %conv271, i64 0)
  %tobool273 = icmp ne i64 %expval272, 0
  br i1 %tobool273, label %if.then274, label %if.end275

if.then274:                                       ; preds = %if.end262
  %152 = load ptr, ptr @__pyx_f, align 16, !tbaa !4
  store ptr %152, ptr %__pyx_filename, align 8, !tbaa !4
  %153 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 207, ptr %__pyx_lineno, align 4, !tbaa !10
  %154 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 2876, ptr %__pyx_clineno, align 4, !tbaa !10
  %155 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  br label %__pyx_L5_error

if.end275:                                        ; preds = %if.end262
  %156 = load ptr, ptr %__pyx_t_1, align 8, !tbaa !4
  call void @Py_DECREF(ptr noundef %156)
  store ptr null, ptr %__pyx_t_1, align 8, !tbaa !4
  %157 = load ptr, ptr %__pyx_t_3, align 8, !tbaa !4
  %158 = load ptr, ptr %__pyx_t_4, align 8, !tbaa !4
  %call276 = call i32 @__Pyx_ListComp_Append(ptr noundef %157, ptr noundef %158)
  %tobool277 = icmp ne i32 %call276, 0
  %lnot278 = xor i1 %tobool277, true
  %lnot280 = xor i1 %lnot278, true
  %lnot.ext281 = zext i1 %lnot280 to i32
  %conv282 = sext i32 %lnot.ext281 to i64
  %expval283 = call i64 @llvm.expect.i64(i64 %conv282, i64 0)
  %tobool284 = icmp ne i64 %expval283, 0
  br i1 %tobool284, label %if.then285, label %if.end286

if.then285:                                       ; preds = %if.end275
  %159 = load ptr, ptr @__pyx_f, align 16, !tbaa !4
  store ptr %159, ptr %__pyx_filename, align 8, !tbaa !4
  %160 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 207, ptr %__pyx_lineno, align 4, !tbaa !10
  %161 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 2879, ptr %__pyx_clineno, align 4, !tbaa !10
  %162 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  br label %__pyx_L5_error

if.end286:                                        ; preds = %if.end275
  %163 = load ptr, ptr %__pyx_t_4, align 8, !tbaa !4
  call void @Py_DECREF(ptr noundef %163)
  store ptr null, ptr %__pyx_t_4, align 8, !tbaa !4
  br label %for.cond

for.end:                                          ; preds = %cleanup, %if.then209, %if.then203
  %164 = load ptr, ptr %__pyx_t_2, align 8, !tbaa !4
  call void @Py_DECREF(ptr noundef %164)
  store ptr null, ptr %__pyx_t_2, align 8, !tbaa !4
  %165 = load ptr, ptr %__pyx_7genexpr__pyx_v_a0_, align 8, !tbaa !4
  call void @Py_XDECREF(ptr noundef %165)
  store ptr null, ptr %__pyx_7genexpr__pyx_v_a0_, align 8, !tbaa !4
  br label %__pyx_L8_exit_scope

__pyx_L5_error:                                   ; preds = %cleanup, %if.then285, %if.then274, %if.then261, %if.then176, %if.then163, %if.then137
  %166 = load ptr, ptr %__pyx_7genexpr__pyx_v_a0_, align 8, !tbaa !4
  call void @Py_XDECREF(ptr noundef %166)
  store ptr null, ptr %__pyx_7genexpr__pyx_v_a0_, align 8, !tbaa !4
  br label %__pyx_L1_error

__pyx_L8_exit_scope:                              ; preds = %for.end
  br label %do.body287

do.body287:                                       ; preds = %__pyx_L8_exit_scope
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp288) #9
  %167 = load ptr, ptr %__pyx_v_args.addr, align 8, !tbaa !4
  store ptr %167, ptr %tmp288, align 8, !tbaa !4
  %168 = load ptr, ptr %__pyx_t_3, align 8, !tbaa !4
  store ptr %168, ptr %__pyx_v_args.addr, align 8, !tbaa !4
  %169 = load ptr, ptr %tmp288, align 8, !tbaa !4
  call void @Py_DECREF(ptr noundef %169)
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp288) #9
  br label %do.cond289

do.cond289:                                       ; preds = %do.body287
  br label %do.end290

do.end290:                                        ; preds = %do.cond289
  store ptr null, ptr %__pyx_t_3, align 8, !tbaa !4
  %170 = load ptr, ptr %__pyx_r, align 8, !tbaa !4
  call void @Py_XDECREF(ptr noundef %170)
  %171 = load ptr, ptr @__pyx_n_s_loop_example_locals_lambda, align 8, !tbaa !4
  %172 = load ptr, ptr %__pyx_cur_scope, align 8, !tbaa !4
  %173 = load ptr, ptr @__pyx_n_s_scipy_optimize_cython_optimize, align 8, !tbaa !4
  %174 = load ptr, ptr @__pyx_d, align 8, !tbaa !4
  %call291 = call ptr @__Pyx_CyFunction_New(ptr noundef @__pyx_mdef_5scipy_8optimize_15cython_optimize_6_zeros_12loop_example_lambda, i32 noundef 0, ptr noundef %171, ptr noundef %172, ptr noundef %173, ptr noundef %174, ptr noundef null)
  store ptr %call291, ptr %__pyx_t_3, align 8, !tbaa !4
  %175 = load ptr, ptr %__pyx_t_3, align 8, !tbaa !4
  %tobool292 = icmp ne ptr %175, null
  %lnot293 = xor i1 %tobool292, true
  %lnot295 = xor i1 %lnot293, true
  %lnot297 = xor i1 %lnot295, true
  %lnot.ext298 = zext i1 %lnot297 to i32
  %conv299 = sext i32 %lnot.ext298 to i64
  %expval300 = call i64 @llvm.expect.i64(i64 %conv299, i64 0)
  %tobool301 = icmp ne i64 %expval300, 0
  br i1 %tobool301, label %if.then302, label %if.end303

if.then302:                                       ; preds = %do.end290
  %176 = load ptr, ptr @__pyx_f, align 16, !tbaa !4
  store ptr %176, ptr %__pyx_filename, align 8, !tbaa !4
  %177 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 208, ptr %__pyx_lineno, align 4, !tbaa !10
  %178 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 2901, ptr %__pyx_clineno, align 4, !tbaa !10
  %179 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  br label %__pyx_L1_error

if.end303:                                        ; preds = %do.end290
  %call304 = call ptr @PyTuple_New(i64 noundef 2)
  store ptr %call304, ptr %__pyx_t_2, align 8, !tbaa !4
  %180 = load ptr, ptr %__pyx_t_2, align 8, !tbaa !4
  %tobool305 = icmp ne ptr %180, null
  %lnot306 = xor i1 %tobool305, true
  %lnot308 = xor i1 %lnot306, true
  %lnot310 = xor i1 %lnot308, true
  %lnot.ext311 = zext i1 %lnot310 to i32
  %conv312 = sext i32 %lnot.ext311 to i64
  %expval313 = call i64 @llvm.expect.i64(i64 %conv312, i64 0)
  %tobool314 = icmp ne i64 %expval313, 0
  br i1 %tobool314, label %if.then315, label %if.end316

if.then315:                                       ; preds = %if.end303
  %181 = load ptr, ptr @__pyx_f, align 16, !tbaa !4
  store ptr %181, ptr %__pyx_filename, align 8, !tbaa !4
  %182 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 208, ptr %__pyx_lineno, align 4, !tbaa !10
  %183 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 2903, ptr %__pyx_clineno, align 4, !tbaa !10
  %184 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  br label %__pyx_L1_error

if.end316:                                        ; preds = %if.end303
  %185 = load ptr, ptr %__pyx_t_2, align 8, !tbaa !4
  %186 = load ptr, ptr %__pyx_t_3, align 8, !tbaa !4
  call void @PyTuple_SET_ITEM(ptr noundef %185, i64 noundef 0, ptr noundef %186)
  %187 = load ptr, ptr %__pyx_v_args.addr, align 8, !tbaa !4
  call void @Py_INCREF(ptr noundef %187)
  %188 = load ptr, ptr %__pyx_t_2, align 8, !tbaa !4
  %189 = load ptr, ptr %__pyx_v_args.addr, align 8, !tbaa !4
  call void @PyTuple_SET_ITEM(ptr noundef %188, i64 noundef 1, ptr noundef %189)
  store ptr null, ptr %__pyx_t_3, align 8, !tbaa !4
  %190 = load ptr, ptr @__pyx_builtin_map, align 8, !tbaa !4
  %191 = load ptr, ptr %__pyx_t_2, align 8, !tbaa !4
  %call317 = call ptr @__Pyx_PyObject_Call(ptr noundef %190, ptr noundef %191, ptr noundef null)
  store ptr %call317, ptr %__pyx_t_3, align 8, !tbaa !4
  %192 = load ptr, ptr %__pyx_t_3, align 8, !tbaa !4
  %tobool318 = icmp ne ptr %192, null
  %lnot319 = xor i1 %tobool318, true
  %lnot321 = xor i1 %lnot319, true
  %lnot323 = xor i1 %lnot321, true
  %lnot.ext324 = zext i1 %lnot323 to i32
  %conv325 = sext i32 %lnot.ext324 to i64
  %expval326 = call i64 @llvm.expect.i64(i64 %conv325, i64 0)
  %tobool327 = icmp ne i64 %expval326, 0
  br i1 %tobool327, label %if.then328, label %if.end329

if.then328:                                       ; preds = %if.end316
  %193 = load ptr, ptr @__pyx_f, align 16, !tbaa !4
  store ptr %193, ptr %__pyx_filename, align 8, !tbaa !4
  %194 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 208, ptr %__pyx_lineno, align 4, !tbaa !10
  %195 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 2911, ptr %__pyx_clineno, align 4, !tbaa !10
  %196 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  br label %__pyx_L1_error

if.end329:                                        ; preds = %if.end316
  %197 = load ptr, ptr %__pyx_t_2, align 8, !tbaa !4
  call void @Py_DECREF(ptr noundef %197)
  store ptr null, ptr %__pyx_t_2, align 8, !tbaa !4
  %198 = load ptr, ptr %__pyx_t_3, align 8, !tbaa !4
  store ptr %198, ptr %__pyx_r, align 8, !tbaa !4
  store ptr null, ptr %__pyx_t_3, align 8, !tbaa !4
  br label %__pyx_L0

__pyx_L1_error:                                   ; preds = %if.then328, %if.then315, %if.then302, %__pyx_L5_error, %if.then118, %if.then105, %if.then62, %if.then48, %if.then
  %199 = load ptr, ptr %__pyx_t_1, align 8, !tbaa !4
  call void @Py_XDECREF(ptr noundef %199)
  %200 = load ptr, ptr %__pyx_t_2, align 8, !tbaa !4
  call void @Py_XDECREF(ptr noundef %200)
  %201 = load ptr, ptr %__pyx_t_3, align 8, !tbaa !4
  call void @Py_XDECREF(ptr noundef %201)
  %202 = load ptr, ptr %__pyx_t_4, align 8, !tbaa !4
  call void @Py_XDECREF(ptr noundef %202)
  %203 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  %204 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  %205 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  call void @__Pyx_AddTraceback(ptr noundef @.str.110, i32 noundef %203, i32 noundef %204, ptr noundef %205)
  store ptr null, ptr %__pyx_r, align 8, !tbaa !4
  br label %__pyx_L0

__pyx_L0:                                         ; preds = %__pyx_L1_error, %if.end329
  %206 = load ptr, ptr %__pyx_7genexpr__pyx_v_a0_, align 8, !tbaa !4
  call void @Py_XDECREF(ptr noundef %206)
  %207 = load ptr, ptr %__pyx_v_args.addr, align 8, !tbaa !4
  call void @Py_XDECREF(ptr noundef %207)
  %208 = load ptr, ptr %__pyx_cur_scope, align 8, !tbaa !4
  call void @Py_DECREF(ptr noundef %208)
  %209 = load ptr, ptr %__pyx_r, align 8, !tbaa !4
  store ptr %209, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup330

cleanup330:                                       ; preds = %__pyx_L0, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %__pyx_clineno) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pyx_filename) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %__pyx_lineno) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pyx_t_6) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pyx_t_5) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pyx_t_4) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pyx_t_3) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pyx_t_2) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pyx_t_1) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pyx_r) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pyx_7genexpr__pyx_v_a0_) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pyx_cur_scope) #9
  %210 = load ptr, ptr %retval, align 8
  ret ptr %210
}

; Function Attrs: nounwind uwtable
define internal ptr @__Pyx__GetModuleGlobalName(ptr noundef %name, ptr noundef %dict_version, ptr noundef %dict_cached_value) #0 {
entry:
  %retval = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %dict_version.addr = alloca ptr, align 8
  %dict_cached_value.addr = alloca ptr, align 8
  %result = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %name, ptr %name.addr, align 8, !tbaa !4
  store ptr %dict_version, ptr %dict_version.addr, align 8, !tbaa !4
  store ptr %dict_cached_value, ptr %dict_cached_value.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %result) #9
  %0 = load ptr, ptr @__pyx_d, align 8, !tbaa !4
  %1 = load ptr, ptr %name.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %name.addr, align 8, !tbaa !4
  %hash = getelementptr inbounds %struct.PyASCIIObject, ptr %2, i32 0, i32 2
  %3 = load i64, ptr %hash, align 8, !tbaa !97
  %call = call ptr @_PyDict_GetItem_KnownHash(ptr noundef %0, ptr noundef %1, i64 noundef %3)
  store ptr %call, ptr %result, align 8, !tbaa !4
  %4 = load ptr, ptr @__pyx_d, align 8, !tbaa !4
  %ma_version_tag = getelementptr inbounds %struct.PyDictObject, ptr %4, i32 0, i32 2
  %5 = load i64, ptr %ma_version_tag, align 8, !tbaa !111
  %6 = load ptr, ptr %dict_version.addr, align 8, !tbaa !4
  store i64 %5, ptr %6, align 8, !tbaa !24
  %7 = load ptr, ptr %result, align 8, !tbaa !4
  %8 = load ptr, ptr %dict_cached_value.addr, align 8, !tbaa !4
  store ptr %7, ptr %8, align 8, !tbaa !4
  %9 = load ptr, ptr %result, align 8, !tbaa !4
  %tobool = icmp ne ptr %9, null
  %lnot = xor i1 %tobool, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1)
  %tobool2 = icmp ne i64 %expval, 0
  br i1 %tobool2, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %10 = load ptr, ptr %result, align 8, !tbaa !4
  call void @Py_INCREF(ptr noundef %10)
  %11 = load ptr, ptr %result, align 8, !tbaa !4
  store ptr %11, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %entry
  %call3 = call ptr @PyErr_Occurred()
  %tobool4 = icmp ne ptr %call3, null
  %lnot5 = xor i1 %tobool4, true
  %lnot7 = xor i1 %lnot5, true
  %lnot.ext8 = zext i1 %lnot7 to i32
  %conv9 = sext i32 %lnot.ext8 to i64
  %expval10 = call i64 @llvm.expect.i64(i64 %conv9, i64 0)
  %tobool11 = icmp ne i64 %expval10, 0
  br i1 %tobool11, label %if.then12, label %if.end

if.then12:                                        ; preds = %if.else
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %if.else
  br label %if.end13

if.end13:                                         ; preds = %if.end
  %12 = load ptr, ptr %name.addr, align 8, !tbaa !4
  %call14 = call ptr @__Pyx_GetBuiltinName(ptr noundef %12)
  store ptr %call14, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then12, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %result) #9
  %13 = load ptr, ptr %retval, align 8
  ret ptr %13
}

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @__Pyx_PyObject_CallOneArg(ptr noundef %func, ptr noundef %arg) #5 {
entry:
  %retval = alloca ptr, align 8
  %func.addr = alloca ptr, align 8
  %arg.addr = alloca ptr, align 8
  store ptr %func, ptr %func.addr, align 8, !tbaa !4
  store ptr %arg, ptr %arg.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %func.addr, align 8, !tbaa !4
  %call = call i32 @PyObject_TypeCheck(ptr noundef %0, ptr noundef @PyCFunction_Type)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1)
  %tobool2 = icmp ne i64 %expval, 0
  br i1 %tobool2, label %if.then, label %if.end14

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %func.addr, align 8, !tbaa !4
  %call3 = call i32 @PyCFunction_GET_FLAGS(ptr noundef %1)
  %and = and i32 %call3, 8
  %tobool4 = icmp ne i32 %and, 0
  %lnot5 = xor i1 %tobool4, true
  %lnot7 = xor i1 %lnot5, true
  %lnot.ext8 = zext i1 %lnot7 to i32
  %conv9 = sext i32 %lnot.ext8 to i64
  %expval10 = call i64 @llvm.expect.i64(i64 %conv9, i64 1)
  %tobool11 = icmp ne i64 %expval10, 0
  br i1 %tobool11, label %if.then12, label %if.end

if.then12:                                        ; preds = %if.then
  %2 = load ptr, ptr %func.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %arg.addr, align 8, !tbaa !4
  %call13 = call ptr @__Pyx_PyObject_CallMethO(ptr noundef %2, ptr noundef %3)
  store ptr %call13, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end14

if.end14:                                         ; preds = %if.end, %entry
  %4 = load ptr, ptr %func.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %arg.addr, align 8, !tbaa !4
  %call15 = call ptr @__Pyx__PyObject_CallOneArg(ptr noundef %4, ptr noundef %5)
  store ptr %call15, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end14, %if.then12
  %6 = load ptr, ptr %retval, align 8
  ret ptr %6
}

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @__Pyx_PyObject_CallNoArg(ptr noundef %func) #5 {
entry:
  %retval = alloca ptr, align 8
  %func.addr = alloca ptr, align 8
  store ptr %func, ptr %func.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %func.addr, align 8, !tbaa !4
  %call = call i32 @PyObject_TypeCheck(ptr noundef %0, ptr noundef @PyCFunction_Type)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %1 = load ptr, ptr %func.addr, align 8, !tbaa !4
  %call1 = call ptr @Py_TYPE(ptr noundef %1)
  %2 = load ptr, ptr @__pyx_CyFunctionType, align 8, !tbaa !4
  %call2 = call i32 @__Pyx_IsSubtype(ptr noundef %call1, ptr noundef %2)
  %tobool3 = icmp ne i32 %call2, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %3 = phi i1 [ true, %entry ], [ %tobool3, %lor.rhs ]
  %lnot = xor i1 %3, true
  %lnot4 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot4 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1)
  %tobool5 = icmp ne i64 %expval, 0
  br i1 %tobool5, label %if.then, label %if.end17

if.then:                                          ; preds = %lor.end
  %4 = load ptr, ptr %func.addr, align 8, !tbaa !4
  %call6 = call i32 @PyCFunction_GET_FLAGS(ptr noundef %4)
  %and = and i32 %call6, 4
  %tobool7 = icmp ne i32 %and, 0
  %lnot8 = xor i1 %tobool7, true
  %lnot10 = xor i1 %lnot8, true
  %lnot.ext11 = zext i1 %lnot10 to i32
  %conv12 = sext i32 %lnot.ext11 to i64
  %expval13 = call i64 @llvm.expect.i64(i64 %conv12, i64 1)
  %tobool14 = icmp ne i64 %expval13, 0
  br i1 %tobool14, label %if.then15, label %if.end

if.then15:                                        ; preds = %if.then
  %5 = load ptr, ptr %func.addr, align 8, !tbaa !4
  %call16 = call ptr @__Pyx_PyObject_CallMethO(ptr noundef %5, ptr noundef null)
  store ptr %call16, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end17

if.end17:                                         ; preds = %if.end, %lor.end
  %6 = load ptr, ptr %func.addr, align 8, !tbaa !4
  %7 = load ptr, ptr @__pyx_empty_tuple, align 8, !tbaa !4
  %call18 = call ptr @__Pyx_PyObject_Call(ptr noundef %6, ptr noundef %7, ptr noundef null)
  store ptr %call18, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end17, %if.then15
  %8 = load ptr, ptr %retval, align 8
  ret ptr %8
}

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @__Pyx_PyObject_GetItem(ptr noundef %obj, ptr noundef %key) #5 {
entry:
  %retval = alloca ptr, align 8
  %obj.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %m = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !4
  store ptr %key, ptr %key.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %m) #9
  %0 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %call = call ptr @Py_TYPE(ptr noundef %0)
  %tp_as_mapping = getelementptr inbounds %struct._typeobject, ptr %call, i32 0, i32 12
  %1 = load ptr, ptr %tp_as_mapping, align 8, !tbaa !116
  store ptr %1, ptr %m, align 8, !tbaa !4
  %2 = load ptr, ptr %m, align 8, !tbaa !4
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %3 = load ptr, ptr %m, align 8, !tbaa !4
  %mp_subscript = getelementptr inbounds %struct.PyMappingMethods, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %mp_subscript, align 8, !tbaa !117
  %tobool1 = icmp ne ptr %4, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %tobool1, %land.rhs ]
  %lnot = xor i1 %5, true
  %lnot2 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot2 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1)
  %tobool3 = icmp ne i64 %expval, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %land.end
  %6 = load ptr, ptr %m, align 8, !tbaa !4
  %mp_subscript4 = getelementptr inbounds %struct.PyMappingMethods, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %mp_subscript4, align 8, !tbaa !117
  %8 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %9 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %call5 = call ptr %7(ptr noundef %8, ptr noundef %9)
  store ptr %call5, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %land.end
  %10 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %11 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %call6 = call ptr @__Pyx_PyObject_GetIndex(ptr noundef %10, ptr noundef %11)
  store ptr %call6, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %m) #9
  %12 = load ptr, ptr %retval, align 8
  ret ptr %12
}

declare ptr @PyList_New(i64 noundef) #4

; Function Attrs: inlinehint nounwind uwtable
define internal void @PyTuple_SET_ITEM(ptr noundef %op, i64 noundef %index, ptr noundef %value) #5 {
entry:
  %op.addr = alloca ptr, align 8
  %index.addr = alloca i64, align 8
  %value.addr = alloca ptr, align 8
  %tuple = alloca ptr, align 8
  store ptr %op, ptr %op.addr, align 8, !tbaa !4
  store i64 %index, ptr %index.addr, align 8, !tbaa !24
  store ptr %value, ptr %value.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %tuple) #9
  %0 = load ptr, ptr %op.addr, align 8, !tbaa !4
  store ptr %0, ptr %tuple, align 8, !tbaa !4
  %1 = load ptr, ptr %value.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %tuple, align 8, !tbaa !4
  %ob_item = getelementptr inbounds %struct.PyTupleObject, ptr %2, i32 0, i32 1
  %3 = load i64, ptr %index.addr, align 8, !tbaa !24
  %arrayidx = getelementptr inbounds [1 x ptr], ptr %ob_item, i64 0, i64 %3
  store ptr %1, ptr %arrayidx, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %tuple) #9
  ret void
}

declare ptr @PyNumber_Add(ptr noundef, ptr noundef) #4

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @__Pyx_ListComp_Append(ptr noundef %list, ptr noundef %x) #5 {
entry:
  %retval = alloca i32, align 4
  %list.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %L = alloca ptr, align 8
  %len = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %list, ptr %list.addr, align 8, !tbaa !4
  store ptr %x, ptr %x.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %L) #9
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !4
  store ptr %0, ptr %L, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #9
  %1 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %call = call i64 @Py_SIZE(ptr noundef %1)
  store i64 %call, ptr %len, align 8, !tbaa !24
  %2 = load ptr, ptr %L, align 8, !tbaa !4
  %allocated = getelementptr inbounds %struct.PyListObject, ptr %2, i32 0, i32 2
  %3 = load i64, ptr %allocated, align 8, !tbaa !119
  %4 = load i64, ptr %len, align 8, !tbaa !24
  %cmp = icmp sgt i64 %3, %4
  %lnot = xor i1 %cmp, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %x.addr, align 8, !tbaa !4
  call void @Py_INCREF(ptr noundef %5)
  %6 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %7 = load i64, ptr %len, align 8, !tbaa !24
  %8 = load ptr, ptr %x.addr, align 8, !tbaa !4
  call void @PyList_SET_ITEM(ptr noundef %6, i64 noundef %7, ptr noundef %8)
  %9 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %10 = load i64, ptr %len, align 8, !tbaa !24
  %add = add nsw i64 %10, 1
  call void @Py_SET_SIZE(ptr noundef %9, i64 noundef %add)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %12 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %call2 = call i32 @PyList_Append(ptr noundef %11, ptr noundef %12)
  store i32 %call2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %L) #9
  %13 = load i32, ptr %retval, align 4
  ret i32 %13
}

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @__Pyx_PyObject_Call(ptr noundef %func, ptr noundef %arg, ptr noundef %kw) #5 {
entry:
  %retval = alloca ptr, align 8
  %func.addr = alloca ptr, align 8
  %arg.addr = alloca ptr, align 8
  %kw.addr = alloca ptr, align 8
  %result = alloca ptr, align 8
  %call = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %func, ptr %func.addr, align 8, !tbaa !4
  store ptr %arg, ptr %arg.addr, align 8, !tbaa !4
  store ptr %kw, ptr %kw.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %result) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %call) #9
  %0 = load ptr, ptr %func.addr, align 8, !tbaa !4
  %call1 = call ptr @Py_TYPE(ptr noundef %0)
  %tp_call = getelementptr inbounds %struct._typeobject, ptr %call1, i32 0, i32 14
  %1 = load ptr, ptr %tp_call, align 8, !tbaa !120
  store ptr %1, ptr %call, align 8, !tbaa !4
  %2 = load ptr, ptr %call, align 8, !tbaa !4
  %tobool = icmp ne ptr %2, null
  %lnot = xor i1 %tobool, true
  %lnot2 = xor i1 %lnot, true
  %lnot3 = xor i1 %lnot2, true
  %lnot.ext = zext i1 %lnot3 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool4 = icmp ne i64 %expval, 0
  br i1 %tobool4, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %func.addr, align 8, !tbaa !4
  %4 = load ptr, ptr %arg.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %kw.addr, align 8, !tbaa !4
  %call5 = call ptr @PyObject_Call(ptr noundef %3, ptr noundef %4, ptr noundef %5)
  store ptr %call5, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %call6 = call i32 @Py_EnterRecursiveCall(ptr noundef @.str.111)
  %tobool7 = icmp ne i32 %call6, 0
  %lnot8 = xor i1 %tobool7, true
  %lnot10 = xor i1 %lnot8, true
  %lnot.ext11 = zext i1 %lnot10 to i32
  %conv12 = sext i32 %lnot.ext11 to i64
  %expval13 = call i64 @llvm.expect.i64(i64 %conv12, i64 0)
  %tobool14 = icmp ne i64 %expval13, 0
  br i1 %tobool14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %6 = load ptr, ptr %call, align 8, !tbaa !4
  %7 = load ptr, ptr %func.addr, align 8, !tbaa !4
  %8 = load ptr, ptr %arg.addr, align 8, !tbaa !4
  %9 = load ptr, ptr %kw.addr, align 8, !tbaa !4
  %call17 = call ptr %6(ptr noundef %7, ptr noundef %8, ptr noundef %9)
  store ptr %call17, ptr %result, align 8, !tbaa !4
  call void @Py_LeaveRecursiveCall()
  %10 = load ptr, ptr %result, align 8, !tbaa !4
  %tobool18 = icmp ne ptr %10, null
  %lnot19 = xor i1 %tobool18, true
  %lnot21 = xor i1 %lnot19, true
  %lnot23 = xor i1 %lnot21, true
  %lnot.ext24 = zext i1 %lnot23 to i32
  %conv25 = sext i32 %lnot.ext24 to i64
  %expval26 = call i64 @llvm.expect.i64(i64 %conv25, i64 0)
  %tobool27 = icmp ne i64 %expval26, 0
  br i1 %tobool27, label %land.lhs.true, label %if.end40

land.lhs.true:                                    ; preds = %if.end16
  %call28 = call ptr @PyErr_Occurred()
  %tobool29 = icmp ne ptr %call28, null
  %lnot30 = xor i1 %tobool29, true
  %lnot32 = xor i1 %lnot30, true
  %lnot34 = xor i1 %lnot32, true
  %lnot.ext35 = zext i1 %lnot34 to i32
  %conv36 = sext i32 %lnot.ext35 to i64
  %expval37 = call i64 @llvm.expect.i64(i64 %conv36, i64 0)
  %tobool38 = icmp ne i64 %expval37, 0
  br i1 %tobool38, label %if.then39, label %if.end40

if.then39:                                        ; preds = %land.lhs.true
  %11 = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !4
  call void @PyErr_SetString(ptr noundef %11, ptr noundef @.str.112)
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %land.lhs.true, %if.end16
  %12 = load ptr, ptr %result, align 8, !tbaa !4
  store ptr %12, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %if.then15, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %call) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %result) #9
  %13 = load ptr, ptr %retval, align 8
  ret ptr %13
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @PyObject_TypeCheck(ptr noundef %ob, ptr noundef %type) #5 {
entry:
  %ob.addr = alloca ptr, align 8
  %type.addr = alloca ptr, align 8
  store ptr %ob, ptr %ob.addr, align 8, !tbaa !4
  store ptr %type, ptr %type.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %ob.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %type.addr, align 8, !tbaa !4
  %call = call i32 @Py_IS_TYPE(ptr noundef %0, ptr noundef %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %2 = load ptr, ptr %ob.addr, align 8, !tbaa !4
  %call1 = call ptr @Py_TYPE(ptr noundef %2)
  %3 = load ptr, ptr %type.addr, align 8, !tbaa !4
  %call2 = call i32 @PyType_IsSubtype(ptr noundef %call1, ptr noundef %3)
  %tobool3 = icmp ne i32 %call2, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %4 = phi i1 [ true, %entry ], [ %tobool3, %lor.rhs ]
  %lor.ext = zext i1 %4 to i32
  ret i32 %lor.ext
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @PyCFunction_GET_FLAGS(ptr noundef %func) #5 {
entry:
  %func.addr = alloca ptr, align 8
  store ptr %func, ptr %func.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %func.addr, align 8, !tbaa !4
  %m_ml = getelementptr inbounds %struct.PyCFunctionObject, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %m_ml, align 8, !tbaa !60
  %ml_flags = getelementptr inbounds %struct.PyMethodDef, ptr %1, i32 0, i32 2
  %2 = load i32, ptr %ml_flags, align 8, !tbaa !63
  ret i32 %2
}

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @__Pyx_PyObject_CallMethO(ptr noundef %func, ptr noundef %arg) #5 {
entry:
  %retval = alloca ptr, align 8
  %func.addr = alloca ptr, align 8
  %arg.addr = alloca ptr, align 8
  %self = alloca ptr, align 8
  %result = alloca ptr, align 8
  %cfunc = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %func, ptr %func.addr, align 8, !tbaa !4
  store ptr %arg, ptr %arg.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %self) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %result) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %cfunc) #9
  %0 = load ptr, ptr %func.addr, align 8, !tbaa !4
  %call = call ptr @PyCFunction_GET_FUNCTION(ptr noundef %0)
  store ptr %call, ptr %cfunc, align 8, !tbaa !4
  %1 = load ptr, ptr %func.addr, align 8, !tbaa !4
  %call1 = call ptr @PyCFunction_GET_SELF(ptr noundef %1)
  store ptr %call1, ptr %self, align 8, !tbaa !4
  %call2 = call i32 @Py_EnterRecursiveCall(ptr noundef @.str.111)
  %tobool = icmp ne i32 %call2, 0
  %lnot = xor i1 %tobool, true
  %lnot3 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot3 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool4 = icmp ne i64 %expval, 0
  br i1 %tobool4, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %cfunc, align 8, !tbaa !4
  %3 = load ptr, ptr %self, align 8, !tbaa !4
  %4 = load ptr, ptr %arg.addr, align 8, !tbaa !4
  %call5 = call ptr %2(ptr noundef %3, ptr noundef %4)
  store ptr %call5, ptr %result, align 8, !tbaa !4
  call void @Py_LeaveRecursiveCall()
  %5 = load ptr, ptr %result, align 8, !tbaa !4
  %tobool6 = icmp ne ptr %5, null
  %lnot7 = xor i1 %tobool6, true
  %lnot9 = xor i1 %lnot7, true
  %lnot11 = xor i1 %lnot9, true
  %lnot.ext12 = zext i1 %lnot11 to i32
  %conv13 = sext i32 %lnot.ext12 to i64
  %expval14 = call i64 @llvm.expect.i64(i64 %conv13, i64 0)
  %tobool15 = icmp ne i64 %expval14, 0
  br i1 %tobool15, label %land.lhs.true, label %if.end28

land.lhs.true:                                    ; preds = %if.end
  %call16 = call ptr @PyErr_Occurred()
  %tobool17 = icmp ne ptr %call16, null
  %lnot18 = xor i1 %tobool17, true
  %lnot20 = xor i1 %lnot18, true
  %lnot22 = xor i1 %lnot20, true
  %lnot.ext23 = zext i1 %lnot22 to i32
  %conv24 = sext i32 %lnot.ext23 to i64
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0)
  %tobool26 = icmp ne i64 %expval25, 0
  br i1 %tobool26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %land.lhs.true
  %6 = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !4
  call void @PyErr_SetString(ptr noundef %6, ptr noundef @.str.112)
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %land.lhs.true, %if.end
  %7 = load ptr, ptr %result, align 8, !tbaa !4
  store ptr %7, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %cfunc) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %result) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %self) #9
  %8 = load ptr, ptr %retval, align 8
  ret ptr %8
}

; Function Attrs: nounwind uwtable
define internal ptr @__Pyx__PyObject_CallOneArg(ptr noundef %func, ptr noundef %arg) #0 {
entry:
  %retval = alloca ptr, align 8
  %func.addr = alloca ptr, align 8
  %arg.addr = alloca ptr, align 8
  %result = alloca ptr, align 8
  %args = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %func, ptr %func.addr, align 8, !tbaa !4
  store ptr %arg, ptr %arg.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %result) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %args) #9
  %call = call ptr @PyTuple_New(i64 noundef 1)
  store ptr %call, ptr %args, align 8, !tbaa !4
  %0 = load ptr, ptr %args, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  %lnot = xor i1 %tobool, true
  %lnot1 = xor i1 %lnot, true
  %lnot2 = xor i1 %lnot1, true
  %lnot.ext = zext i1 %lnot2 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool3 = icmp ne i64 %expval, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %arg.addr, align 8, !tbaa !4
  call void @Py_INCREF(ptr noundef %1)
  %2 = load ptr, ptr %args, align 8, !tbaa !4
  %3 = load ptr, ptr %arg.addr, align 8, !tbaa !4
  call void @PyTuple_SET_ITEM(ptr noundef %2, i64 noundef 0, ptr noundef %3)
  %4 = load ptr, ptr %func.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %args, align 8, !tbaa !4
  %call4 = call ptr @__Pyx_PyObject_Call(ptr noundef %4, ptr noundef %5, ptr noundef null)
  store ptr %call4, ptr %result, align 8, !tbaa !4
  %6 = load ptr, ptr %args, align 8, !tbaa !4
  call void @Py_DECREF(ptr noundef %6)
  %7 = load ptr, ptr %result, align 8, !tbaa !4
  store ptr %7, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %args) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %result) #9
  %8 = load ptr, ptr %retval, align 8
  ret ptr %8
}

declare i32 @PyType_IsSubtype(ptr noundef, ptr noundef) #4

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @PyCFunction_GET_FUNCTION(ptr noundef %func) #5 {
entry:
  %func.addr = alloca ptr, align 8
  store ptr %func, ptr %func.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %func.addr, align 8, !tbaa !4
  %m_ml = getelementptr inbounds %struct.PyCFunctionObject, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %m_ml, align 8, !tbaa !60
  %ml_meth = getelementptr inbounds %struct.PyMethodDef, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %ml_meth, align 8, !tbaa !61
  ret ptr %2
}

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @PyCFunction_GET_SELF(ptr noundef %func_obj) #5 {
entry:
  %retval = alloca ptr, align 8
  %func_obj.addr = alloca ptr, align 8
  %func = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %func_obj, ptr %func_obj.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %func) #9
  %0 = load ptr, ptr %func_obj.addr, align 8, !tbaa !4
  store ptr %0, ptr %func, align 8, !tbaa !4
  %1 = load ptr, ptr %func, align 8, !tbaa !4
  %m_ml = getelementptr inbounds %struct.PyCFunctionObject, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %m_ml, align 8, !tbaa !60
  %ml_flags = getelementptr inbounds %struct.PyMethodDef, ptr %2, i32 0, i32 2
  %3 = load i32, ptr %ml_flags, align 8, !tbaa !63
  %and = and i32 %3, 32
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %func, align 8, !tbaa !4
  %m_self = getelementptr inbounds %struct.PyCFunctionObject, ptr %4, i32 0, i32 2
  %5 = load ptr, ptr %m_self, align 8, !tbaa !65
  store ptr %5, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %func) #9
  %6 = load ptr, ptr %retval, align 8
  ret ptr %6
}

declare i32 @Py_EnterRecursiveCall(ptr noundef) #4

declare void @Py_LeaveRecursiveCall() #4

; Function Attrs: nounwind uwtable
define internal ptr @__Pyx_PyObject_GetIndex(ptr noundef %obj, ptr noundef %index) #0 {
entry:
  %retval = alloca ptr, align 8
  %obj.addr = alloca ptr, align 8
  %index.addr = alloca ptr, align 8
  %runerr = alloca ptr, align 8
  %key_value = alloca i64, align 8
  %m = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !4
  store ptr %index, ptr %index.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %runerr) #9
  store ptr null, ptr %runerr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %key_value) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %m) #9
  %0 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %call = call ptr @Py_TYPE(ptr noundef %0)
  %tp_as_sequence = getelementptr inbounds %struct._typeobject, ptr %call, i32 0, i32 11
  %1 = load ptr, ptr %tp_as_sequence, align 8, !tbaa !121
  store ptr %1, ptr %m, align 8, !tbaa !4
  %2 = load ptr, ptr %m, align 8, !tbaa !4
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %3 = load ptr, ptr %m, align 8, !tbaa !4
  %sq_item = getelementptr inbounds %struct.PySequenceMethods, ptr %3, i32 0, i32 3
  %4 = load ptr, ptr %sq_item, align 8, !tbaa !122
  %tobool1 = icmp ne ptr %4, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %tobool1, %land.rhs ]
  %lnot = xor i1 %5, true
  %lnot2 = xor i1 %lnot, true
  %lnot3 = xor i1 %lnot2, true
  %lnot.ext = zext i1 %lnot3 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool4 = icmp ne i64 %expval, 0
  br i1 %tobool4, label %if.then, label %if.end

if.then:                                          ; preds = %land.end
  %6 = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !4
  %7 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %call5 = call ptr @Py_TYPE(ptr noundef %7)
  %tp_name = getelementptr inbounds %struct._typeobject, ptr %call5, i32 0, i32 1
  %8 = load ptr, ptr %tp_name, align 8, !tbaa !38
  %call6 = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %6, ptr noundef @.str.113, ptr noundef %8)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %land.end
  %9 = load ptr, ptr %index.addr, align 8, !tbaa !4
  %call7 = call i64 @__Pyx_PyIndex_AsSsize_t(ptr noundef %9)
  store i64 %call7, ptr %key_value, align 8, !tbaa !24
  %10 = load i64, ptr %key_value, align 8, !tbaa !24
  %cmp = icmp ne i64 %10, -1
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end
  %call9 = call ptr @PyErr_Occurred()
  store ptr %call9, ptr %runerr, align 8, !tbaa !4
  %tobool10 = icmp ne ptr %call9, null
  %lnot11 = xor i1 %tobool10, true
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end
  %11 = phi i1 [ true, %if.end ], [ %lnot11, %lor.rhs ]
  %lnot13 = xor i1 %11, true
  %lnot15 = xor i1 %lnot13, true
  %lnot.ext16 = zext i1 %lnot15 to i32
  %conv17 = sext i32 %lnot.ext16 to i64
  %expval18 = call i64 @llvm.expect.i64(i64 %conv17, i64 1)
  %tobool19 = icmp ne i64 %expval18, 0
  br i1 %tobool19, label %if.then20, label %if.end22

if.then20:                                        ; preds = %lor.end
  %12 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %13 = load i64, ptr %key_value, align 8, !tbaa !24
  %call21 = call ptr @__Pyx_GetItemInt_Fast(ptr noundef %12, i64 noundef %13, i32 noundef 0, i32 noundef 1, i32 noundef 1)
  store ptr %call21, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end22:                                         ; preds = %lor.end
  %14 = load ptr, ptr %runerr, align 8, !tbaa !4
  %15 = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !4
  %call23 = call i32 @PyErr_GivenExceptionMatches(ptr noundef %14, ptr noundef %15)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.then25, label %if.end29

if.then25:                                        ; preds = %if.end22
  call void @PyErr_Clear()
  %16 = load ptr, ptr @PyExc_IndexError, align 8, !tbaa !4
  %17 = load ptr, ptr %index.addr, align 8, !tbaa !4
  %call26 = call ptr @Py_TYPE(ptr noundef %17)
  %tp_name27 = getelementptr inbounds %struct._typeobject, ptr %call26, i32 0, i32 1
  %18 = load ptr, ptr %tp_name27, align 8, !tbaa !38
  %call28 = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %16, ptr noundef @.str.114, ptr noundef %18)
  br label %if.end29

if.end29:                                         ; preds = %if.then25, %if.end22
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.then20, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %m) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %key_value) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %runerr) #9
  %19 = load ptr, ptr %retval, align 8
  ret ptr %19
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @__Pyx_PyIndex_AsSsize_t(ptr noundef %b) #5 {
entry:
  %retval = alloca i64, align 8
  %b.addr = alloca ptr, align 8
  %ival = alloca i64, align 8
  %x = alloca ptr, align 8
  %digits = alloca ptr, align 8
  %size = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %b, ptr %b.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ival) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %x) #9
  %0 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %call = call i32 @Py_IS_TYPE(ptr noundef %0, ptr noundef @PyLong_Type)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1)
  %tobool2 = icmp ne i64 %expval, 0
  br i1 %tobool2, label %if.then, label %if.end44

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %digits) #9
  %1 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %ob_digit = getelementptr inbounds %struct._longobject, ptr %1, i32 0, i32 1
  %arraydecay = getelementptr inbounds [1 x i32], ptr %ob_digit, i64 0, i64 0
  store ptr %arraydecay, ptr %digits, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #9
  %2 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %call3 = call i64 @Py_SIZE(ptr noundef %2)
  store i64 %call3, ptr %size, align 8, !tbaa !24
  %3 = load i64, ptr %size, align 8, !tbaa !24
  %neg = sub nsw i64 0, %3
  %abscond = icmp slt i64 %3, 0
  %abs = select i1 %abscond, i64 %neg, i64 %3
  %cmp = icmp sle i64 %abs, 1
  %lnot5 = xor i1 %cmp, true
  %lnot7 = xor i1 %lnot5, true
  %lnot.ext8 = zext i1 %lnot7 to i32
  %conv9 = sext i32 %lnot.ext8 to i64
  %expval10 = call i64 @llvm.expect.i64(i64 %conv9, i64 1)
  %tobool11 = icmp ne i64 %expval10, 0
  br i1 %tobool11, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.then
  %4 = load i64, ptr %size, align 8, !tbaa !24
  %tobool13 = icmp ne i64 %4, 0
  %lnot14 = xor i1 %tobool13, true
  %lnot16 = xor i1 %lnot14, true
  %lnot.ext17 = zext i1 %lnot16 to i32
  %conv18 = sext i32 %lnot.ext17 to i64
  %expval19 = call i64 @llvm.expect.i64(i64 %conv18, i64 1)
  %tobool20 = icmp ne i64 %expval19, 0
  br i1 %tobool20, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then12
  %5 = load ptr, ptr %digits, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds i32, ptr %5, i64 0
  %6 = load i32, ptr %arrayidx, align 4, !tbaa !10
  br label %cond.end

cond.false:                                       ; preds = %if.then12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %6, %cond.true ], [ 0, %cond.false ]
  %conv21 = zext i32 %cond to i64
  store i64 %conv21, ptr %ival, align 8, !tbaa !24
  %7 = load i64, ptr %size, align 8, !tbaa !24
  %cmp22 = icmp eq i64 %7, -1
  br i1 %cmp22, label %if.then24, label %if.end

if.then24:                                        ; preds = %cond.end
  %8 = load i64, ptr %ival, align 8, !tbaa !24
  %sub = sub nsw i64 0, %8
  store i64 %sub, ptr %ival, align 8, !tbaa !24
  br label %if.end

if.end:                                           ; preds = %if.then24, %cond.end
  %9 = load i64, ptr %ival, align 8, !tbaa !24
  store i64 %9, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %if.then
  %10 = load i64, ptr %size, align 8, !tbaa !24
  switch i64 %10, label %sw.epilog [
    i64 2, label %sw.bb
    i64 -2, label %sw.bb29
    i64 3, label %sw.bb37
    i64 -3, label %sw.bb38
    i64 4, label %sw.bb39
    i64 -4, label %sw.bb40
  ]

sw.bb:                                            ; preds = %if.else
  %11 = load ptr, ptr %digits, align 8, !tbaa !4
  %arrayidx25 = getelementptr inbounds i32, ptr %11, i64 1
  %12 = load i32, ptr %arrayidx25, align 4, !tbaa !10
  %conv26 = zext i32 %12 to i64
  %shl = shl i64 %conv26, 30
  %13 = load ptr, ptr %digits, align 8, !tbaa !4
  %arrayidx27 = getelementptr inbounds i32, ptr %13, i64 0
  %14 = load i32, ptr %arrayidx27, align 4, !tbaa !10
  %conv28 = zext i32 %14 to i64
  %or = or i64 %shl, %conv28
  store i64 %or, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.bb29:                                          ; preds = %if.else
  %15 = load ptr, ptr %digits, align 8, !tbaa !4
  %arrayidx30 = getelementptr inbounds i32, ptr %15, i64 1
  %16 = load i32, ptr %arrayidx30, align 4, !tbaa !10
  %conv31 = zext i32 %16 to i64
  %shl32 = shl i64 %conv31, 30
  %17 = load ptr, ptr %digits, align 8, !tbaa !4
  %arrayidx33 = getelementptr inbounds i32, ptr %17, i64 0
  %18 = load i32, ptr %arrayidx33, align 4, !tbaa !10
  %conv34 = zext i32 %18 to i64
  %or35 = or i64 %shl32, %conv34
  %sub36 = sub nsw i64 0, %or35
  store i64 %sub36, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.bb37:                                          ; preds = %if.else
  br label %sw.epilog

sw.bb38:                                          ; preds = %if.else
  br label %sw.epilog

sw.bb39:                                          ; preds = %if.else
  br label %sw.epilog

sw.bb40:                                          ; preds = %if.else
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else, %sw.bb40, %sw.bb39, %sw.bb38, %sw.bb37
  br label %if.end41

if.end41:                                         ; preds = %sw.epilog
  %19 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %call42 = call i64 @PyLong_AsSsize_t(ptr noundef %19)
  store i64 %call42, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %sw.bb29, %sw.bb, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %digits) #9
  br label %cleanup50

if.end44:                                         ; preds = %entry
  %20 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %call45 = call ptr @PyNumber_Index(ptr noundef %20)
  store ptr %call45, ptr %x, align 8, !tbaa !4
  %21 = load ptr, ptr %x, align 8, !tbaa !4
  %tobool46 = icmp ne ptr %21, null
  br i1 %tobool46, label %if.end48, label %if.then47

if.then47:                                        ; preds = %if.end44
  store i64 -1, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup50

if.end48:                                         ; preds = %if.end44
  %22 = load ptr, ptr %x, align 8, !tbaa !4
  %call49 = call i64 @PyLong_AsSsize_t(ptr noundef %22)
  store i64 %call49, ptr %ival, align 8, !tbaa !24
  %23 = load ptr, ptr %x, align 8, !tbaa !4
  call void @Py_DECREF(ptr noundef %23)
  %24 = load i64, ptr %ival, align 8, !tbaa !24
  store i64 %24, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup50

cleanup50:                                        ; preds = %if.end48, %if.then47, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %x) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %ival) #9
  %25 = load i64, ptr %retval, align 8
  ret i64 %25
}

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @__Pyx_GetItemInt_Fast(ptr noundef %o, i64 noundef %i, i32 noundef %is_list, i32 noundef %wraparound, i32 noundef %boundscheck) #5 {
entry:
  %retval = alloca ptr, align 8
  %o.addr = alloca ptr, align 8
  %i.addr = alloca i64, align 8
  %is_list.addr = alloca i32, align 4
  %wraparound.addr = alloca i32, align 4
  %boundscheck.addr = alloca i32, align 4
  %n = alloca i64, align 8
  %r = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %n27 = alloca i64, align 8
  %r61 = alloca ptr, align 8
  %m = alloca ptr, align 8
  %l = alloca i64, align 8
  store ptr %o, ptr %o.addr, align 8, !tbaa !4
  store i64 %i, ptr %i.addr, align 8, !tbaa !24
  store i32 %is_list, ptr %is_list.addr, align 4, !tbaa !10
  store i32 %wraparound, ptr %wraparound.addr, align 4, !tbaa !10
  store i32 %boundscheck, ptr %boundscheck.addr, align 4, !tbaa !10
  %0 = load i32, ptr %is_list.addr, align 4, !tbaa !10
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %o.addr, align 8, !tbaa !4
  %call = call i32 @Py_IS_TYPE(ptr noundef %1, ptr noundef @PyList_Type)
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #9
  %2 = load i32, ptr %wraparound.addr, align 4, !tbaa !10
  %tobool2 = icmp ne i32 %2, 0
  %lnot = xor i1 %tobool2, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %3 = load i64, ptr %i.addr, align 8, !tbaa !24
  %cmp = icmp sge i64 %3, 0
  %lnot4 = xor i1 %cmp, true
  %lnot6 = xor i1 %lnot4, true
  %lnot.ext7 = zext i1 %lnot6 to i32
  %conv8 = sext i32 %lnot.ext7 to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv8, i64 1)
  %or = or i64 %conv, %expval
  %tobool9 = icmp ne i64 %or, 0
  br i1 %tobool9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %4 = load i64, ptr %i.addr, align 8, !tbaa !24
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %5 = load i64, ptr %i.addr, align 8, !tbaa !24
  %6 = load ptr, ptr %o.addr, align 8, !tbaa !4
  %call10 = call i64 @PyList_GET_SIZE(ptr noundef %6)
  %add = add nsw i64 %5, %call10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %4, %cond.true ], [ %add, %cond.false ]
  store i64 %cond, ptr %n, align 8, !tbaa !24
  %7 = load i32, ptr %boundscheck.addr, align 4, !tbaa !10
  %tobool11 = icmp ne i32 %7, 0
  br i1 %tobool11, label %lor.lhs.false12, label %if.then23

lor.lhs.false12:                                  ; preds = %cond.end
  %8 = load i64, ptr %n, align 8, !tbaa !24
  %9 = load ptr, ptr %o.addr, align 8, !tbaa !4
  %call13 = call i64 @PyList_GET_SIZE(ptr noundef %9)
  %call14 = call i32 @__Pyx_is_valid_index(i64 noundef %8, i64 noundef %call13)
  %tobool15 = icmp ne i32 %call14, 0
  %lnot16 = xor i1 %tobool15, true
  %lnot18 = xor i1 %lnot16, true
  %lnot.ext19 = zext i1 %lnot18 to i32
  %conv20 = sext i32 %lnot.ext19 to i64
  %expval21 = call i64 @llvm.expect.i64(i64 %conv20, i64 1)
  %tobool22 = icmp ne i64 %expval21, 0
  br i1 %tobool22, label %if.then23, label %if.end

if.then23:                                        ; preds = %lor.lhs.false12, %cond.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #9
  %10 = load ptr, ptr %o.addr, align 8, !tbaa !4
  %ob_item = getelementptr inbounds %struct.PyListObject, ptr %10, i32 0, i32 1
  %11 = load ptr, ptr %ob_item, align 8, !tbaa !109
  %12 = load i64, ptr %n, align 8, !tbaa !24
  %arrayidx = getelementptr inbounds ptr, ptr %11, i64 %12
  %13 = load ptr, ptr %arrayidx, align 8, !tbaa !4
  store ptr %13, ptr %r, align 8, !tbaa !4
  %14 = load ptr, ptr %r, align 8, !tbaa !4
  call void @Py_INCREF(ptr noundef %14)
  %15 = load ptr, ptr %r, align 8, !tbaa !4
  store ptr %15, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false12
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then23
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #9
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end131

if.else:                                          ; preds = %lor.lhs.false
  %16 = load ptr, ptr %o.addr, align 8, !tbaa !4
  %call24 = call i32 @Py_IS_TYPE(ptr noundef %16, ptr noundef @PyTuple_Type)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.then26, label %if.else69

if.then26:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 8, ptr %n27) #9
  %17 = load i32, ptr %wraparound.addr, align 4, !tbaa !10
  %tobool28 = icmp ne i32 %17, 0
  %lnot29 = xor i1 %tobool28, true
  %lnot.ext30 = zext i1 %lnot29 to i32
  %conv31 = sext i32 %lnot.ext30 to i64
  %18 = load i64, ptr %i.addr, align 8, !tbaa !24
  %cmp32 = icmp sge i64 %18, 0
  %lnot34 = xor i1 %cmp32, true
  %lnot36 = xor i1 %lnot34, true
  %lnot.ext37 = zext i1 %lnot36 to i32
  %conv38 = sext i32 %lnot.ext37 to i64
  %expval39 = call i64 @llvm.expect.i64(i64 %conv38, i64 1)
  %or40 = or i64 %conv31, %expval39
  %tobool41 = icmp ne i64 %or40, 0
  br i1 %tobool41, label %cond.true42, label %cond.false43

cond.true42:                                      ; preds = %if.then26
  %19 = load i64, ptr %i.addr, align 8, !tbaa !24
  br label %cond.end46

cond.false43:                                     ; preds = %if.then26
  %20 = load i64, ptr %i.addr, align 8, !tbaa !24
  %21 = load ptr, ptr %o.addr, align 8, !tbaa !4
  %call44 = call i64 @PyTuple_GET_SIZE(ptr noundef %21)
  %add45 = add nsw i64 %20, %call44
  br label %cond.end46

cond.end46:                                       ; preds = %cond.false43, %cond.true42
  %cond47 = phi i64 [ %19, %cond.true42 ], [ %add45, %cond.false43 ]
  store i64 %cond47, ptr %n27, align 8, !tbaa !24
  %22 = load i32, ptr %boundscheck.addr, align 4, !tbaa !10
  %tobool48 = icmp ne i32 %22, 0
  br i1 %tobool48, label %lor.lhs.false49, label %if.then60

lor.lhs.false49:                                  ; preds = %cond.end46
  %23 = load i64, ptr %n27, align 8, !tbaa !24
  %24 = load ptr, ptr %o.addr, align 8, !tbaa !4
  %call50 = call i64 @PyTuple_GET_SIZE(ptr noundef %24)
  %call51 = call i32 @__Pyx_is_valid_index(i64 noundef %23, i64 noundef %call50)
  %tobool52 = icmp ne i32 %call51, 0
  %lnot53 = xor i1 %tobool52, true
  %lnot55 = xor i1 %lnot53, true
  %lnot.ext56 = zext i1 %lnot55 to i32
  %conv57 = sext i32 %lnot.ext56 to i64
  %expval58 = call i64 @llvm.expect.i64(i64 %conv57, i64 1)
  %tobool59 = icmp ne i64 %expval58, 0
  br i1 %tobool59, label %if.then60, label %if.end65

if.then60:                                        ; preds = %lor.lhs.false49, %cond.end46
  call void @llvm.lifetime.start.p0(i64 8, ptr %r61) #9
  %25 = load ptr, ptr %o.addr, align 8, !tbaa !4
  %ob_item62 = getelementptr inbounds %struct.PyTupleObject, ptr %25, i32 0, i32 1
  %26 = load i64, ptr %n27, align 8, !tbaa !24
  %arrayidx63 = getelementptr inbounds [1 x ptr], ptr %ob_item62, i64 0, i64 %26
  %27 = load ptr, ptr %arrayidx63, align 8, !tbaa !4
  store ptr %27, ptr %r61, align 8, !tbaa !4
  %28 = load ptr, ptr %r61, align 8, !tbaa !4
  call void @Py_INCREF(ptr noundef %28)
  %29 = load ptr, ptr %r61, align 8, !tbaa !4
  store ptr %29, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %r61) #9
  br label %cleanup66

if.end65:                                         ; preds = %lor.lhs.false49
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup66

cleanup66:                                        ; preds = %if.end65, %if.then60
  call void @llvm.lifetime.end.p0(i64 8, ptr %n27) #9
  %cleanup.dest67 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest67, label %unreachable [
    i32 0, label %cleanup.cont68
    i32 1, label %return
  ]

cleanup.cont68:                                   ; preds = %cleanup66
  br label %if.end130

if.else69:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 8, ptr %m) #9
  %30 = load ptr, ptr %o.addr, align 8, !tbaa !4
  %call70 = call ptr @Py_TYPE(ptr noundef %30)
  %tp_as_sequence = getelementptr inbounds %struct._typeobject, ptr %call70, i32 0, i32 11
  %31 = load ptr, ptr %tp_as_sequence, align 8, !tbaa !121
  store ptr %31, ptr %m, align 8, !tbaa !4
  %32 = load ptr, ptr %m, align 8, !tbaa !4
  %tobool71 = icmp ne ptr %32, null
  br i1 %tobool71, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.else69
  %33 = load ptr, ptr %m, align 8, !tbaa !4
  %sq_item = getelementptr inbounds %struct.PySequenceMethods, ptr %33, i32 0, i32 3
  %34 = load ptr, ptr %sq_item, align 8, !tbaa !122
  %tobool72 = icmp ne ptr %34, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.else69
  %35 = phi i1 [ false, %if.else69 ], [ %tobool72, %land.rhs ]
  %lnot73 = xor i1 %35, true
  %lnot75 = xor i1 %lnot73, true
  %lnot.ext76 = zext i1 %lnot75 to i32
  %conv77 = sext i32 %lnot.ext76 to i64
  %expval78 = call i64 @llvm.expect.i64(i64 %conv77, i64 1)
  %tobool79 = icmp ne i64 %expval78, 0
  br i1 %tobool79, label %if.then80, label %if.end126

if.then80:                                        ; preds = %land.end
  %36 = load i32, ptr %wraparound.addr, align 4, !tbaa !10
  %tobool81 = icmp ne i32 %36, 0
  br i1 %tobool81, label %land.lhs.true, label %if.end123

land.lhs.true:                                    ; preds = %if.then80
  %37 = load i64, ptr %i.addr, align 8, !tbaa !24
  %cmp82 = icmp slt i64 %37, 0
  %lnot84 = xor i1 %cmp82, true
  %lnot86 = xor i1 %lnot84, true
  %lnot.ext87 = zext i1 %lnot86 to i32
  %conv88 = sext i32 %lnot.ext87 to i64
  %expval89 = call i64 @llvm.expect.i64(i64 %conv88, i64 0)
  %tobool90 = icmp ne i64 %expval89, 0
  br i1 %tobool90, label %land.lhs.true91, label %if.end123

land.lhs.true91:                                  ; preds = %land.lhs.true
  %38 = load ptr, ptr %m, align 8, !tbaa !4
  %sq_length = getelementptr inbounds %struct.PySequenceMethods, ptr %38, i32 0, i32 0
  %39 = load ptr, ptr %sq_length, align 8, !tbaa !124
  %tobool92 = icmp ne ptr %39, null
  %lnot93 = xor i1 %tobool92, true
  %lnot95 = xor i1 %lnot93, true
  %lnot.ext96 = zext i1 %lnot95 to i32
  %conv97 = sext i32 %lnot.ext96 to i64
  %expval98 = call i64 @llvm.expect.i64(i64 %conv97, i64 1)
  %tobool99 = icmp ne i64 %expval98, 0
  br i1 %tobool99, label %if.then100, label %if.end123

if.then100:                                       ; preds = %land.lhs.true91
  call void @llvm.lifetime.start.p0(i64 8, ptr %l) #9
  %40 = load ptr, ptr %m, align 8, !tbaa !4
  %sq_length101 = getelementptr inbounds %struct.PySequenceMethods, ptr %40, i32 0, i32 0
  %41 = load ptr, ptr %sq_length101, align 8, !tbaa !124
  %42 = load ptr, ptr %o.addr, align 8, !tbaa !4
  %call102 = call i64 %41(ptr noundef %42)
  store i64 %call102, ptr %l, align 8, !tbaa !24
  %43 = load i64, ptr %l, align 8, !tbaa !24
  %cmp103 = icmp sge i64 %43, 0
  %lnot105 = xor i1 %cmp103, true
  %lnot107 = xor i1 %lnot105, true
  %lnot.ext108 = zext i1 %lnot107 to i32
  %conv109 = sext i32 %lnot.ext108 to i64
  %expval110 = call i64 @llvm.expect.i64(i64 %conv109, i64 1)
  %tobool111 = icmp ne i64 %expval110, 0
  br i1 %tobool111, label %if.then112, label %if.else114

if.then112:                                       ; preds = %if.then100
  %44 = load i64, ptr %l, align 8, !tbaa !24
  %45 = load i64, ptr %i.addr, align 8, !tbaa !24
  %add113 = add nsw i64 %45, %44
  store i64 %add113, ptr %i.addr, align 8, !tbaa !24
  br label %if.end119

if.else114:                                       ; preds = %if.then100
  %46 = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !4
  %call115 = call i32 @PyErr_ExceptionMatches(ptr noundef %46)
  %tobool116 = icmp ne i32 %call115, 0
  br i1 %tobool116, label %if.end118, label %if.then117

if.then117:                                       ; preds = %if.else114
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup120

if.end118:                                        ; preds = %if.else114
  call void @PyErr_Clear()
  br label %if.end119

if.end119:                                        ; preds = %if.end118, %if.then112
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup120

cleanup120:                                       ; preds = %if.end119, %if.then117
  call void @llvm.lifetime.end.p0(i64 8, ptr %l) #9
  %cleanup.dest121 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest121, label %cleanup127 [
    i32 0, label %cleanup.cont122
  ]

cleanup.cont122:                                  ; preds = %cleanup120
  br label %if.end123

if.end123:                                        ; preds = %cleanup.cont122, %land.lhs.true91, %land.lhs.true, %if.then80
  %47 = load ptr, ptr %m, align 8, !tbaa !4
  %sq_item124 = getelementptr inbounds %struct.PySequenceMethods, ptr %47, i32 0, i32 3
  %48 = load ptr, ptr %sq_item124, align 8, !tbaa !122
  %49 = load ptr, ptr %o.addr, align 8, !tbaa !4
  %50 = load i64, ptr %i.addr, align 8, !tbaa !24
  %call125 = call ptr %48(ptr noundef %49, i64 noundef %50)
  store ptr %call125, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup127

if.end126:                                        ; preds = %land.end
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup127

cleanup127:                                       ; preds = %if.end126, %if.end123, %cleanup120
  call void @llvm.lifetime.end.p0(i64 8, ptr %m) #9
  %cleanup.dest128 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest128, label %unreachable [
    i32 0, label %cleanup.cont129
    i32 1, label %return
  ]

cleanup.cont129:                                  ; preds = %cleanup127
  br label %if.end130

if.end130:                                        ; preds = %cleanup.cont129, %cleanup.cont68
  br label %if.end131

if.end131:                                        ; preds = %if.end130, %cleanup.cont
  %51 = load ptr, ptr %o.addr, align 8, !tbaa !4
  %52 = load i64, ptr %i.addr, align 8, !tbaa !24
  %call132 = call ptr @PyLong_FromSsize_t(i64 noundef %52)
  %call133 = call ptr @__Pyx_GetItemInt_Generic(ptr noundef %51, ptr noundef %call132)
  store ptr %call133, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end131, %cleanup127, %cleanup66, %cleanup
  %53 = load ptr, ptr %retval, align 8
  ret ptr %53

unreachable:                                      ; preds = %cleanup127, %cleanup66, %cleanup
  unreachable
}

declare i64 @PyLong_AsSsize_t(ptr noundef) #4

declare ptr @PyNumber_Index(ptr noundef) #4

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @__Pyx_is_valid_index(i64 noundef %i, i64 noundef %limit) #5 {
entry:
  %i.addr = alloca i64, align 8
  %limit.addr = alloca i64, align 8
  store i64 %i, ptr %i.addr, align 8, !tbaa !24
  store i64 %limit, ptr %limit.addr, align 8, !tbaa !24
  %0 = load i64, ptr %i.addr, align 8, !tbaa !24
  %1 = load i64, ptr %limit.addr, align 8, !tbaa !24
  %cmp = icmp ult i64 %0, %1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define internal ptr @__Pyx_GetItemInt_Generic(ptr noundef %o, ptr noundef %j) #0 {
entry:
  %retval = alloca ptr, align 8
  %o.addr = alloca ptr, align 8
  %j.addr = alloca ptr, align 8
  %r = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %o, ptr %o.addr, align 8, !tbaa !4
  store ptr %j, ptr %j.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #9
  %0 = load ptr, ptr %j.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %o.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %j.addr, align 8, !tbaa !4
  %call = call ptr @PyObject_GetItem(ptr noundef %1, ptr noundef %2)
  store ptr %call, ptr %r, align 8, !tbaa !4
  %3 = load ptr, ptr %j.addr, align 8, !tbaa !4
  call void @Py_DECREF(ptr noundef %3)
  %4 = load ptr, ptr %r, align 8, !tbaa !4
  store ptr %4, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #9
  %5 = load ptr, ptr %retval, align 8
  ret ptr %5
}

declare ptr @PyLong_FromSsize_t(i64 noundef) #4

declare ptr @PyObject_GetItem(ptr noundef, ptr noundef) #4

; Function Attrs: inlinehint nounwind uwtable
define internal void @PyList_SET_ITEM(ptr noundef %op, i64 noundef %index, ptr noundef %value) #5 {
entry:
  %op.addr = alloca ptr, align 8
  %index.addr = alloca i64, align 8
  %value.addr = alloca ptr, align 8
  %list = alloca ptr, align 8
  store ptr %op, ptr %op.addr, align 8, !tbaa !4
  store i64 %index, ptr %index.addr, align 8, !tbaa !24
  store ptr %value, ptr %value.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %list) #9
  %0 = load ptr, ptr %op.addr, align 8, !tbaa !4
  store ptr %0, ptr %list, align 8, !tbaa !4
  %1 = load ptr, ptr %value.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %list, align 8, !tbaa !4
  %ob_item = getelementptr inbounds %struct.PyListObject, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %ob_item, align 8, !tbaa !109
  %4 = load i64, ptr %index.addr, align 8, !tbaa !24
  %arrayidx = getelementptr inbounds ptr, ptr %3, i64 %4
  store ptr %1, ptr %arrayidx, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %list) #9
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @Py_SET_SIZE(ptr noundef %ob, i64 noundef %size) #5 {
entry:
  %ob.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %ob, ptr %ob.addr, align 8, !tbaa !4
  store i64 %size, ptr %size.addr, align 8, !tbaa !24
  %0 = load i64, ptr %size.addr, align 8, !tbaa !24
  %1 = load ptr, ptr %ob.addr, align 8, !tbaa !4
  %ob_size = getelementptr inbounds %struct.PyVarObject, ptr %1, i32 0, i32 1
  store i64 %0, ptr %ob_size, align 8, !tbaa !66
  ret void
}

declare i32 @PyList_Append(ptr noundef, ptr noundef) #4

; Function Attrs: nounwind uwtable
define internal ptr @__pyx_pw_5scipy_8optimize_15cython_optimize_6_zeros_12loop_example_lambda(ptr noundef %__pyx_self, ptr noundef %__pyx_v_a) #0 {
entry:
  %__pyx_self.addr = alloca ptr, align 8
  %__pyx_v_a.addr = alloca ptr, align 8
  %__pyx_r = alloca ptr, align 8
  store ptr %__pyx_self, ptr %__pyx_self.addr, align 8, !tbaa !4
  store ptr %__pyx_v_a, ptr %__pyx_v_a.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pyx_r) #9
  store ptr null, ptr %__pyx_r, align 8, !tbaa !4
  %0 = load ptr, ptr %__pyx_self.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %__pyx_v_a.addr, align 8, !tbaa !4
  %call = call ptr @__pyx_lambda_funcdef_lambda(ptr noundef %0, ptr noundef %1)
  store ptr %call, ptr %__pyx_r, align 8, !tbaa !4
  %2 = load ptr, ptr %__pyx_r, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pyx_r) #9
  ret ptr %2
}

; Function Attrs: nounwind uwtable
define internal ptr @__pyx_lambda_funcdef_lambda(ptr noundef %__pyx_self, ptr noundef %__pyx_v_a) #0 {
entry:
  %__pyx_self.addr = alloca ptr, align 8
  %__pyx_v_a.addr = alloca ptr, align 8
  %__pyx_cur_scope = alloca ptr, align 8
  %__pyx_outer_scope = alloca ptr, align 8
  %__pyx_r = alloca ptr, align 8
  %__pyx_t_1 = alloca ptr, align 8
  %__pyx_t_2 = alloca ptr, align 8
  %__pyx_t_3 = alloca ptr, align 8
  %__pyx_t_4 = alloca i32, align 4
  %__pyx_t_5 = alloca ptr, align 8
  %__pyx_lineno = alloca i32, align 4
  %__pyx_filename = alloca ptr, align 8
  %__pyx_clineno = alloca i32, align 4
  %function = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %__pyx_self, ptr %__pyx_self.addr, align 8, !tbaa !4
  store ptr %__pyx_v_a, ptr %__pyx_v_a.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pyx_cur_scope) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pyx_outer_scope) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pyx_r) #9
  store ptr null, ptr %__pyx_r, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pyx_t_1) #9
  store ptr null, ptr %__pyx_t_1, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pyx_t_2) #9
  store ptr null, ptr %__pyx_t_2, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pyx_t_3) #9
  store ptr null, ptr %__pyx_t_3, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %__pyx_t_4) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pyx_t_5) #9
  store ptr null, ptr %__pyx_t_5, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %__pyx_lineno) #9
  store i32 0, ptr %__pyx_lineno, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pyx_filename) #9
  store ptr null, ptr %__pyx_filename, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %__pyx_clineno) #9
  store i32 0, ptr %__pyx_clineno, align 4, !tbaa !10
  %0 = load ptr, ptr %__pyx_self.addr, align 8, !tbaa !4
  %func_closure = getelementptr inbounds %struct.__pyx_CyFunctionObject, ptr %0, i32 0, i32 7
  %1 = load ptr, ptr %func_closure, align 8, !tbaa !46
  store ptr %1, ptr %__pyx_outer_scope, align 8, !tbaa !4
  %2 = load ptr, ptr %__pyx_outer_scope, align 8, !tbaa !4
  store ptr %2, ptr %__pyx_cur_scope, align 8, !tbaa !4
  %3 = load ptr, ptr %__pyx_r, align 8, !tbaa !4
  call void @Py_XDECREF(ptr noundef %3)
  %4 = load ptr, ptr %__pyx_cur_scope, align 8, !tbaa !4
  %__pyx_v_method = getelementptr inbounds %struct.__pyx_obj_5scipy_8optimize_15cython_optimize_6_zeros___pyx_scope_struct__loop_example, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %__pyx_v_method, align 8, !tbaa !86
  %tobool = icmp ne ptr %5, null
  %lnot = xor i1 %tobool, true
  %lnot1 = xor i1 %lnot, true
  %lnot2 = xor i1 %lnot1, true
  %lnot.ext = zext i1 %lnot2 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool3 = icmp ne i64 %expval, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__Pyx_RaiseClosureNameError(ptr noundef @.str.116)
  %6 = load ptr, ptr @__pyx_f, align 16, !tbaa !4
  store ptr %6, ptr %__pyx_filename, align 8, !tbaa !4
  %7 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 208, ptr %__pyx_lineno, align 4, !tbaa !10
  %8 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 2652, ptr %__pyx_clineno, align 4, !tbaa !10
  %9 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  br label %__pyx_L1_error

if.end:                                           ; preds = %entry
  %10 = load ptr, ptr %__pyx_cur_scope, align 8, !tbaa !4
  %__pyx_v_xa = getelementptr inbounds %struct.__pyx_obj_5scipy_8optimize_15cython_optimize_6_zeros___pyx_scope_struct__loop_example, ptr %10, i32 0, i32 4
  %11 = load ptr, ptr %__pyx_v_xa, align 8, !tbaa !90
  %tobool4 = icmp ne ptr %11, null
  %lnot5 = xor i1 %tobool4, true
  %lnot7 = xor i1 %lnot5, true
  %lnot9 = xor i1 %lnot7, true
  %lnot.ext10 = zext i1 %lnot9 to i32
  %conv11 = sext i32 %lnot.ext10 to i64
  %expval12 = call i64 @llvm.expect.i64(i64 %conv11, i64 0)
  %tobool13 = icmp ne i64 %expval12, 0
  br i1 %tobool13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end
  call void @__Pyx_RaiseClosureNameError(ptr noundef @.str.117)
  %12 = load ptr, ptr @__pyx_f, align 16, !tbaa !4
  store ptr %12, ptr %__pyx_filename, align 8, !tbaa !4
  %13 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 208, ptr %__pyx_lineno, align 4, !tbaa !10
  %14 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 2653, ptr %__pyx_clineno, align 4, !tbaa !10
  %15 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  br label %__pyx_L1_error

if.end15:                                         ; preds = %if.end
  %16 = load ptr, ptr %__pyx_cur_scope, align 8, !tbaa !4
  %__pyx_v_xb = getelementptr inbounds %struct.__pyx_obj_5scipy_8optimize_15cython_optimize_6_zeros___pyx_scope_struct__loop_example, ptr %16, i32 0, i32 5
  %17 = load ptr, ptr %__pyx_v_xb, align 8, !tbaa !91
  %tobool16 = icmp ne ptr %17, null
  %lnot17 = xor i1 %tobool16, true
  %lnot19 = xor i1 %lnot17, true
  %lnot21 = xor i1 %lnot19, true
  %lnot.ext22 = zext i1 %lnot21 to i32
  %conv23 = sext i32 %lnot.ext22 to i64
  %expval24 = call i64 @llvm.expect.i64(i64 %conv23, i64 0)
  %tobool25 = icmp ne i64 %expval24, 0
  br i1 %tobool25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end15
  call void @__Pyx_RaiseClosureNameError(ptr noundef @.str.118)
  %18 = load ptr, ptr @__pyx_f, align 16, !tbaa !4
  store ptr %18, ptr %__pyx_filename, align 8, !tbaa !4
  %19 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 208, ptr %__pyx_lineno, align 4, !tbaa !10
  %20 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 2654, ptr %__pyx_clineno, align 4, !tbaa !10
  %21 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  br label %__pyx_L1_error

if.end27:                                         ; preds = %if.end15
  %22 = load ptr, ptr %__pyx_cur_scope, align 8, !tbaa !4
  %__pyx_v_xtol = getelementptr inbounds %struct.__pyx_obj_5scipy_8optimize_15cython_optimize_6_zeros___pyx_scope_struct__loop_example, ptr %22, i32 0, i32 6
  %23 = load ptr, ptr %__pyx_v_xtol, align 8, !tbaa !92
  %tobool28 = icmp ne ptr %23, null
  %lnot29 = xor i1 %tobool28, true
  %lnot31 = xor i1 %lnot29, true
  %lnot33 = xor i1 %lnot31, true
  %lnot.ext34 = zext i1 %lnot33 to i32
  %conv35 = sext i32 %lnot.ext34 to i64
  %expval36 = call i64 @llvm.expect.i64(i64 %conv35, i64 0)
  %tobool37 = icmp ne i64 %expval36, 0
  br i1 %tobool37, label %if.then38, label %if.end39

if.then38:                                        ; preds = %if.end27
  call void @__Pyx_RaiseClosureNameError(ptr noundef @.str.119)
  %24 = load ptr, ptr @__pyx_f, align 16, !tbaa !4
  store ptr %24, ptr %__pyx_filename, align 8, !tbaa !4
  %25 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 208, ptr %__pyx_lineno, align 4, !tbaa !10
  %26 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 2655, ptr %__pyx_clineno, align 4, !tbaa !10
  %27 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  br label %__pyx_L1_error

if.end39:                                         ; preds = %if.end27
  %28 = load ptr, ptr %__pyx_cur_scope, align 8, !tbaa !4
  %__pyx_v_rtol = getelementptr inbounds %struct.__pyx_obj_5scipy_8optimize_15cython_optimize_6_zeros___pyx_scope_struct__loop_example, ptr %28, i32 0, i32 3
  %29 = load ptr, ptr %__pyx_v_rtol, align 8, !tbaa !89
  %tobool40 = icmp ne ptr %29, null
  %lnot41 = xor i1 %tobool40, true
  %lnot43 = xor i1 %lnot41, true
  %lnot45 = xor i1 %lnot43, true
  %lnot.ext46 = zext i1 %lnot45 to i32
  %conv47 = sext i32 %lnot.ext46 to i64
  %expval48 = call i64 @llvm.expect.i64(i64 %conv47, i64 0)
  %tobool49 = icmp ne i64 %expval48, 0
  br i1 %tobool49, label %if.then50, label %if.end51

if.then50:                                        ; preds = %if.end39
  call void @__Pyx_RaiseClosureNameError(ptr noundef @.str.120)
  %30 = load ptr, ptr @__pyx_f, align 16, !tbaa !4
  store ptr %30, ptr %__pyx_filename, align 8, !tbaa !4
  %31 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 208, ptr %__pyx_lineno, align 4, !tbaa !10
  %32 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 2656, ptr %__pyx_clineno, align 4, !tbaa !10
  %33 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  br label %__pyx_L1_error

if.end51:                                         ; preds = %if.end39
  %34 = load ptr, ptr %__pyx_cur_scope, align 8, !tbaa !4
  %__pyx_v_mitr = getelementptr inbounds %struct.__pyx_obj_5scipy_8optimize_15cython_optimize_6_zeros___pyx_scope_struct__loop_example, ptr %34, i32 0, i32 2
  %35 = load ptr, ptr %__pyx_v_mitr, align 8, !tbaa !88
  %tobool52 = icmp ne ptr %35, null
  %lnot53 = xor i1 %tobool52, true
  %lnot55 = xor i1 %lnot53, true
  %lnot57 = xor i1 %lnot55, true
  %lnot.ext58 = zext i1 %lnot57 to i32
  %conv59 = sext i32 %lnot.ext58 to i64
  %expval60 = call i64 @llvm.expect.i64(i64 %conv59, i64 0)
  %tobool61 = icmp ne i64 %expval60, 0
  br i1 %tobool61, label %if.then62, label %if.end63

if.then62:                                        ; preds = %if.end51
  call void @__Pyx_RaiseClosureNameError(ptr noundef @.str.121)
  %36 = load ptr, ptr @__pyx_f, align 16, !tbaa !4
  store ptr %36, ptr %__pyx_filename, align 8, !tbaa !4
  %37 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 208, ptr %__pyx_lineno, align 4, !tbaa !10
  %38 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 2657, ptr %__pyx_clineno, align 4, !tbaa !10
  %39 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  br label %__pyx_L1_error

if.end63:                                         ; preds = %if.end51
  %40 = load ptr, ptr %__pyx_cur_scope, align 8, !tbaa !4
  %__pyx_v_method64 = getelementptr inbounds %struct.__pyx_obj_5scipy_8optimize_15cython_optimize_6_zeros___pyx_scope_struct__loop_example, ptr %40, i32 0, i32 1
  %41 = load ptr, ptr %__pyx_v_method64, align 8, !tbaa !86
  call void @Py_INCREF(ptr noundef %41)
  %42 = load ptr, ptr %__pyx_cur_scope, align 8, !tbaa !4
  %__pyx_v_method65 = getelementptr inbounds %struct.__pyx_obj_5scipy_8optimize_15cython_optimize_6_zeros___pyx_scope_struct__loop_example, ptr %42, i32 0, i32 1
  %43 = load ptr, ptr %__pyx_v_method65, align 8, !tbaa !86
  store ptr %43, ptr %__pyx_t_2, align 8, !tbaa !4
  store ptr null, ptr %__pyx_t_3, align 8, !tbaa !4
  store i32 0, ptr %__pyx_t_4, align 4, !tbaa !10
  %44 = load ptr, ptr %__pyx_t_2, align 8, !tbaa !4
  %call = call i32 @Py_IS_TYPE(ptr noundef %44, ptr noundef @PyMethod_Type)
  %tobool66 = icmp ne i32 %call, 0
  %lnot67 = xor i1 %tobool66, true
  %lnot69 = xor i1 %lnot67, true
  %lnot.ext70 = zext i1 %lnot69 to i32
  %conv71 = sext i32 %lnot.ext70 to i64
  %expval72 = call i64 @llvm.expect.i64(i64 %conv71, i64 0)
  %tobool73 = icmp ne i64 %expval72, 0
  br i1 %tobool73, label %if.then74, label %if.end85

if.then74:                                        ; preds = %if.end63
  %45 = load ptr, ptr %__pyx_t_2, align 8, !tbaa !4
  %im_self = getelementptr inbounds %struct.PyMethodObject, ptr %45, i32 0, i32 2
  %46 = load ptr, ptr %im_self, align 8, !tbaa !113
  store ptr %46, ptr %__pyx_t_3, align 8, !tbaa !4
  %47 = load ptr, ptr %__pyx_t_3, align 8, !tbaa !4
  %tobool75 = icmp ne ptr %47, null
  %lnot76 = xor i1 %tobool75, true
  %lnot78 = xor i1 %lnot76, true
  %lnot.ext79 = zext i1 %lnot78 to i32
  %conv80 = sext i32 %lnot.ext79 to i64
  %expval81 = call i64 @llvm.expect.i64(i64 %conv80, i64 1)
  %tobool82 = icmp ne i64 %expval81, 0
  br i1 %tobool82, label %if.then83, label %if.end84

if.then83:                                        ; preds = %if.then74
  call void @llvm.lifetime.start.p0(i64 8, ptr %function) #9
  %48 = load ptr, ptr %__pyx_t_2, align 8, !tbaa !4
  %im_func = getelementptr inbounds %struct.PyMethodObject, ptr %48, i32 0, i32 1
  %49 = load ptr, ptr %im_func, align 8, !tbaa !115
  store ptr %49, ptr %function, align 8, !tbaa !4
  %50 = load ptr, ptr %__pyx_t_3, align 8, !tbaa !4
  call void @Py_INCREF(ptr noundef %50)
  %51 = load ptr, ptr %function, align 8, !tbaa !4
  call void @Py_INCREF(ptr noundef %51)
  br label %do.body

do.body:                                          ; preds = %if.then83
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #9
  %52 = load ptr, ptr %__pyx_t_2, align 8, !tbaa !4
  store ptr %52, ptr %tmp, align 8, !tbaa !4
  %53 = load ptr, ptr %function, align 8, !tbaa !4
  store ptr %53, ptr %__pyx_t_2, align 8, !tbaa !4
  %54 = load ptr, ptr %tmp, align 8, !tbaa !4
  call void @Py_DECREF(ptr noundef %54)
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #9
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 1, ptr %__pyx_t_4, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 8, ptr %function) #9
  br label %if.end84

if.end84:                                         ; preds = %do.end, %if.then74
  br label %if.end85

if.end85:                                         ; preds = %if.end84, %if.end63
  %55 = load i32, ptr %__pyx_t_4, align 4, !tbaa !10
  %add = add nsw i32 6, %55
  %conv86 = sext i32 %add to i64
  %call87 = call ptr @PyTuple_New(i64 noundef %conv86)
  store ptr %call87, ptr %__pyx_t_5, align 8, !tbaa !4
  %56 = load ptr, ptr %__pyx_t_5, align 8, !tbaa !4
  %tobool88 = icmp ne ptr %56, null
  %lnot89 = xor i1 %tobool88, true
  %lnot91 = xor i1 %lnot89, true
  %lnot93 = xor i1 %lnot91, true
  %lnot.ext94 = zext i1 %lnot93 to i32
  %conv95 = sext i32 %lnot.ext94 to i64
  %expval96 = call i64 @llvm.expect.i64(i64 %conv95, i64 0)
  %tobool97 = icmp ne i64 %expval96, 0
  br i1 %tobool97, label %if.then98, label %if.end99

if.then98:                                        ; preds = %if.end85
  %57 = load ptr, ptr @__pyx_f, align 16, !tbaa !4
  store ptr %57, ptr %__pyx_filename, align 8, !tbaa !4
  %58 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 208, ptr %__pyx_lineno, align 4, !tbaa !10
  %59 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 2688, ptr %__pyx_clineno, align 4, !tbaa !10
  %60 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  br label %__pyx_L1_error

if.end99:                                         ; preds = %if.end85
  %61 = load ptr, ptr %__pyx_t_3, align 8, !tbaa !4
  %tobool100 = icmp ne ptr %61, null
  br i1 %tobool100, label %if.then101, label %if.end102

if.then101:                                       ; preds = %if.end99
  %62 = load ptr, ptr %__pyx_t_5, align 8, !tbaa !4
  %63 = load ptr, ptr %__pyx_t_3, align 8, !tbaa !4
  call void @PyTuple_SET_ITEM(ptr noundef %62, i64 noundef 0, ptr noundef %63)
  store ptr null, ptr %__pyx_t_3, align 8, !tbaa !4
  br label %if.end102

if.end102:                                        ; preds = %if.then101, %if.end99
  %64 = load ptr, ptr %__pyx_v_a.addr, align 8, !tbaa !4
  call void @Py_INCREF(ptr noundef %64)
  %65 = load ptr, ptr %__pyx_t_5, align 8, !tbaa !4
  %66 = load i32, ptr %__pyx_t_4, align 4, !tbaa !10
  %add103 = add nsw i32 0, %66
  %conv104 = sext i32 %add103 to i64
  %67 = load ptr, ptr %__pyx_v_a.addr, align 8, !tbaa !4
  call void @PyTuple_SET_ITEM(ptr noundef %65, i64 noundef %conv104, ptr noundef %67)
  %68 = load ptr, ptr %__pyx_cur_scope, align 8, !tbaa !4
  %__pyx_v_xa105 = getelementptr inbounds %struct.__pyx_obj_5scipy_8optimize_15cython_optimize_6_zeros___pyx_scope_struct__loop_example, ptr %68, i32 0, i32 4
  %69 = load ptr, ptr %__pyx_v_xa105, align 8, !tbaa !90
  call void @Py_INCREF(ptr noundef %69)
  %70 = load ptr, ptr %__pyx_t_5, align 8, !tbaa !4
  %71 = load i32, ptr %__pyx_t_4, align 4, !tbaa !10
  %add106 = add nsw i32 1, %71
  %conv107 = sext i32 %add106 to i64
  %72 = load ptr, ptr %__pyx_cur_scope, align 8, !tbaa !4
  %__pyx_v_xa108 = getelementptr inbounds %struct.__pyx_obj_5scipy_8optimize_15cython_optimize_6_zeros___pyx_scope_struct__loop_example, ptr %72, i32 0, i32 4
  %73 = load ptr, ptr %__pyx_v_xa108, align 8, !tbaa !90
  call void @PyTuple_SET_ITEM(ptr noundef %70, i64 noundef %conv107, ptr noundef %73)
  %74 = load ptr, ptr %__pyx_cur_scope, align 8, !tbaa !4
  %__pyx_v_xb109 = getelementptr inbounds %struct.__pyx_obj_5scipy_8optimize_15cython_optimize_6_zeros___pyx_scope_struct__loop_example, ptr %74, i32 0, i32 5
  %75 = load ptr, ptr %__pyx_v_xb109, align 8, !tbaa !91
  call void @Py_INCREF(ptr noundef %75)
  %76 = load ptr, ptr %__pyx_t_5, align 8, !tbaa !4
  %77 = load i32, ptr %__pyx_t_4, align 4, !tbaa !10
  %add110 = add nsw i32 2, %77
  %conv111 = sext i32 %add110 to i64
  %78 = load ptr, ptr %__pyx_cur_scope, align 8, !tbaa !4
  %__pyx_v_xb112 = getelementptr inbounds %struct.__pyx_obj_5scipy_8optimize_15cython_optimize_6_zeros___pyx_scope_struct__loop_example, ptr %78, i32 0, i32 5
  %79 = load ptr, ptr %__pyx_v_xb112, align 8, !tbaa !91
  call void @PyTuple_SET_ITEM(ptr noundef %76, i64 noundef %conv111, ptr noundef %79)
  %80 = load ptr, ptr %__pyx_cur_scope, align 8, !tbaa !4
  %__pyx_v_xtol113 = getelementptr inbounds %struct.__pyx_obj_5scipy_8optimize_15cython_optimize_6_zeros___pyx_scope_struct__loop_example, ptr %80, i32 0, i32 6
  %81 = load ptr, ptr %__pyx_v_xtol113, align 8, !tbaa !92
  call void @Py_INCREF(ptr noundef %81)
  %82 = load ptr, ptr %__pyx_t_5, align 8, !tbaa !4
  %83 = load i32, ptr %__pyx_t_4, align 4, !tbaa !10
  %add114 = add nsw i32 3, %83
  %conv115 = sext i32 %add114 to i64
  %84 = load ptr, ptr %__pyx_cur_scope, align 8, !tbaa !4
  %__pyx_v_xtol116 = getelementptr inbounds %struct.__pyx_obj_5scipy_8optimize_15cython_optimize_6_zeros___pyx_scope_struct__loop_example, ptr %84, i32 0, i32 6
  %85 = load ptr, ptr %__pyx_v_xtol116, align 8, !tbaa !92
  call void @PyTuple_SET_ITEM(ptr noundef %82, i64 noundef %conv115, ptr noundef %85)
  %86 = load ptr, ptr %__pyx_cur_scope, align 8, !tbaa !4
  %__pyx_v_rtol117 = getelementptr inbounds %struct.__pyx_obj_5scipy_8optimize_15cython_optimize_6_zeros___pyx_scope_struct__loop_example, ptr %86, i32 0, i32 3
  %87 = load ptr, ptr %__pyx_v_rtol117, align 8, !tbaa !89
  call void @Py_INCREF(ptr noundef %87)
  %88 = load ptr, ptr %__pyx_t_5, align 8, !tbaa !4
  %89 = load i32, ptr %__pyx_t_4, align 4, !tbaa !10
  %add118 = add nsw i32 4, %89
  %conv119 = sext i32 %add118 to i64
  %90 = load ptr, ptr %__pyx_cur_scope, align 8, !tbaa !4
  %__pyx_v_rtol120 = getelementptr inbounds %struct.__pyx_obj_5scipy_8optimize_15cython_optimize_6_zeros___pyx_scope_struct__loop_example, ptr %90, i32 0, i32 3
  %91 = load ptr, ptr %__pyx_v_rtol120, align 8, !tbaa !89
  call void @PyTuple_SET_ITEM(ptr noundef %88, i64 noundef %conv119, ptr noundef %91)
  %92 = load ptr, ptr %__pyx_cur_scope, align 8, !tbaa !4
  %__pyx_v_mitr121 = getelementptr inbounds %struct.__pyx_obj_5scipy_8optimize_15cython_optimize_6_zeros___pyx_scope_struct__loop_example, ptr %92, i32 0, i32 2
  %93 = load ptr, ptr %__pyx_v_mitr121, align 8, !tbaa !88
  call void @Py_INCREF(ptr noundef %93)
  %94 = load ptr, ptr %__pyx_t_5, align 8, !tbaa !4
  %95 = load i32, ptr %__pyx_t_4, align 4, !tbaa !10
  %add122 = add nsw i32 5, %95
  %conv123 = sext i32 %add122 to i64
  %96 = load ptr, ptr %__pyx_cur_scope, align 8, !tbaa !4
  %__pyx_v_mitr124 = getelementptr inbounds %struct.__pyx_obj_5scipy_8optimize_15cython_optimize_6_zeros___pyx_scope_struct__loop_example, ptr %96, i32 0, i32 2
  %97 = load ptr, ptr %__pyx_v_mitr124, align 8, !tbaa !88
  call void @PyTuple_SET_ITEM(ptr noundef %94, i64 noundef %conv123, ptr noundef %97)
  %98 = load ptr, ptr %__pyx_t_2, align 8, !tbaa !4
  %99 = load ptr, ptr %__pyx_t_5, align 8, !tbaa !4
  %call125 = call ptr @__Pyx_PyObject_Call(ptr noundef %98, ptr noundef %99, ptr noundef null)
  store ptr %call125, ptr %__pyx_t_1, align 8, !tbaa !4
  %100 = load ptr, ptr %__pyx_t_1, align 8, !tbaa !4
  %tobool126 = icmp ne ptr %100, null
  %lnot127 = xor i1 %tobool126, true
  %lnot129 = xor i1 %lnot127, true
  %lnot131 = xor i1 %lnot129, true
  %lnot.ext132 = zext i1 %lnot131 to i32
  %conv133 = sext i32 %lnot.ext132 to i64
  %expval134 = call i64 @llvm.expect.i64(i64 %conv133, i64 0)
  %tobool135 = icmp ne i64 %expval134, 0
  br i1 %tobool135, label %if.then136, label %if.end137

if.then136:                                       ; preds = %if.end102
  %101 = load ptr, ptr @__pyx_f, align 16, !tbaa !4
  store ptr %101, ptr %__pyx_filename, align 8, !tbaa !4
  %102 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 208, ptr %__pyx_lineno, align 4, !tbaa !10
  %103 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 2711, ptr %__pyx_clineno, align 4, !tbaa !10
  %104 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  br label %__pyx_L1_error

if.end137:                                        ; preds = %if.end102
  %105 = load ptr, ptr %__pyx_t_5, align 8, !tbaa !4
  call void @Py_DECREF(ptr noundef %105)
  store ptr null, ptr %__pyx_t_5, align 8, !tbaa !4
  %106 = load ptr, ptr %__pyx_t_2, align 8, !tbaa !4
  call void @Py_DECREF(ptr noundef %106)
  store ptr null, ptr %__pyx_t_2, align 8, !tbaa !4
  %107 = load ptr, ptr %__pyx_t_1, align 8, !tbaa !4
  store ptr %107, ptr %__pyx_r, align 8, !tbaa !4
  store ptr null, ptr %__pyx_t_1, align 8, !tbaa !4
  br label %__pyx_L0

__pyx_L1_error:                                   ; preds = %if.then136, %if.then98, %if.then62, %if.then50, %if.then38, %if.then26, %if.then14, %if.then
  %108 = load ptr, ptr %__pyx_t_1, align 8, !tbaa !4
  call void @Py_XDECREF(ptr noundef %108)
  %109 = load ptr, ptr %__pyx_t_2, align 8, !tbaa !4
  call void @Py_XDECREF(ptr noundef %109)
  %110 = load ptr, ptr %__pyx_t_3, align 8, !tbaa !4
  call void @Py_XDECREF(ptr noundef %110)
  %111 = load ptr, ptr %__pyx_t_5, align 8, !tbaa !4
  call void @Py_XDECREF(ptr noundef %111)
  %112 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  %113 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  %114 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  call void @__Pyx_AddTraceback(ptr noundef @.str.122, i32 noundef %112, i32 noundef %113, ptr noundef %114)
  store ptr null, ptr %__pyx_r, align 8, !tbaa !4
  br label %__pyx_L0

__pyx_L0:                                         ; preds = %__pyx_L1_error, %if.end137
  %115 = load ptr, ptr %__pyx_r, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 4, ptr %__pyx_clineno) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pyx_filename) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %__pyx_lineno) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pyx_t_5) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %__pyx_t_4) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pyx_t_3) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pyx_t_2) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pyx_t_1) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pyx_r) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pyx_outer_scope) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pyx_cur_scope) #9
  ret ptr %115
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @__Pyx_RaiseClosureNameError(ptr noundef %varname) #5 {
entry:
  %varname.addr = alloca ptr, align 8
  store ptr %varname, ptr %varname.addr, align 8, !tbaa !4
  %0 = load ptr, ptr @PyExc_NameError, align 8, !tbaa !4
  %1 = load ptr, ptr %varname.addr, align 8, !tbaa !4
  %call = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %0, ptr noundef @.str.123, ptr noundef %1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @__pyx_pw_5scipy_8optimize_15cython_optimize_6_zeros_3full_output_example(ptr noundef %__pyx_self, ptr noundef %__pyx_args, ptr noundef %__pyx_kwds) #0 {
entry:
  %retval = alloca ptr, align 8
  %__pyx_self.addr = alloca ptr, align 8
  %__pyx_args.addr = alloca ptr, align 8
  %__pyx_kwds.addr = alloca ptr, align 8
  %__pyx_v_args = alloca ptr, align 8
  %__pyx_v_xa = alloca ptr, align 8
  %__pyx_v_xb = alloca ptr, align 8
  %__pyx_v_xtol = alloca ptr, align 8
  %__pyx_v_rtol = alloca ptr, align 8
  %__pyx_v_mitr = alloca ptr, align 8
  %__pyx_lineno = alloca i32, align 4
  %__pyx_filename = alloca ptr, align 8
  %__pyx_clineno = alloca i32, align 4
  %__pyx_r = alloca ptr, align 8
  %values = alloca [6 x ptr], align 16
  %kw_args = alloca i64, align 8
  %pos_args = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %__pyx_self, ptr %__pyx_self.addr, align 8, !tbaa !4
  store ptr %__pyx_args, ptr %__pyx_args.addr, align 8, !tbaa !4
  store ptr %__pyx_kwds, ptr %__pyx_kwds.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pyx_v_args) #9
  store ptr null, ptr %__pyx_v_args, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pyx_v_xa) #9
  store ptr null, ptr %__pyx_v_xa, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pyx_v_xb) #9
  store ptr null, ptr %__pyx_v_xb, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pyx_v_xtol) #9
  store ptr null, ptr %__pyx_v_xtol, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pyx_v_rtol) #9
  store ptr null, ptr %__pyx_v_rtol, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pyx_v_mitr) #9
  store ptr null, ptr %__pyx_v_mitr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %__pyx_lineno) #9
  store i32 0, ptr %__pyx_lineno, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pyx_filename) #9
  store ptr null, ptr %__pyx_filename, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %__pyx_clineno) #9
  store i32 0, ptr %__pyx_clineno, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pyx_r) #9
  store ptr null, ptr %__pyx_r, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 48, ptr %values) #9
  call void @llvm.memset.p0.i64(ptr align 16 %values, i8 0, i64 48, i1 false)
  %0 = load ptr, ptr %__pyx_kwds.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  %lnot = xor i1 %tobool, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool2 = icmp ne i64 %expval, 0
  br i1 %tobool2, label %if.then, label %if.else147

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %kw_args) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %pos_args) #9
  %1 = load ptr, ptr %__pyx_args.addr, align 8, !tbaa !4
  %call = call i64 @PyTuple_GET_SIZE(ptr noundef %1)
  store i64 %call, ptr %pos_args, align 8, !tbaa !24
  %2 = load i64, ptr %pos_args, align 8, !tbaa !24
  switch i64 %2, label %sw.default [
    i64 6, label %sw.bb
    i64 5, label %sw.bb4
    i64 4, label %sw.bb8
    i64 3, label %sw.bb12
    i64 2, label %sw.bb16
    i64 1, label %sw.bb20
    i64 0, label %sw.epilog
  ]

sw.bb:                                            ; preds = %if.then
  %3 = load ptr, ptr %__pyx_args.addr, align 8, !tbaa !4
  %ob_item = getelementptr inbounds %struct.PyTupleObject, ptr %3, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x ptr], ptr %ob_item, i64 0, i64 5
  %4 = load ptr, ptr %arrayidx, align 8, !tbaa !4
  %arrayidx3 = getelementptr inbounds [6 x ptr], ptr %values, i64 0, i64 5
  store ptr %4, ptr %arrayidx3, align 8, !tbaa !4
  br label %sw.bb4

sw.bb4:                                           ; preds = %if.then, %sw.bb
  %5 = load ptr, ptr %__pyx_args.addr, align 8, !tbaa !4
  %ob_item5 = getelementptr inbounds %struct.PyTupleObject, ptr %5, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x ptr], ptr %ob_item5, i64 0, i64 4
  %6 = load ptr, ptr %arrayidx6, align 8, !tbaa !4
  %arrayidx7 = getelementptr inbounds [6 x ptr], ptr %values, i64 0, i64 4
  store ptr %6, ptr %arrayidx7, align 16, !tbaa !4
  br label %sw.bb8

sw.bb8:                                           ; preds = %if.then, %sw.bb4
  %7 = load ptr, ptr %__pyx_args.addr, align 8, !tbaa !4
  %ob_item9 = getelementptr inbounds %struct.PyTupleObject, ptr %7, i32 0, i32 1
  %arrayidx10 = getelementptr inbounds [1 x ptr], ptr %ob_item9, i64 0, i64 3
  %8 = load ptr, ptr %arrayidx10, align 8, !tbaa !4
  %arrayidx11 = getelementptr inbounds [6 x ptr], ptr %values, i64 0, i64 3
  store ptr %8, ptr %arrayidx11, align 8, !tbaa !4
  br label %sw.bb12

sw.bb12:                                          ; preds = %if.then, %sw.bb8
  %9 = load ptr, ptr %__pyx_args.addr, align 8, !tbaa !4
  %ob_item13 = getelementptr inbounds %struct.PyTupleObject, ptr %9, i32 0, i32 1
  %arrayidx14 = getelementptr inbounds [1 x ptr], ptr %ob_item13, i64 0, i64 2
  %10 = load ptr, ptr %arrayidx14, align 8, !tbaa !4
  %arrayidx15 = getelementptr inbounds [6 x ptr], ptr %values, i64 0, i64 2
  store ptr %10, ptr %arrayidx15, align 16, !tbaa !4
  br label %sw.bb16

sw.bb16:                                          ; preds = %if.then, %sw.bb12
  %11 = load ptr, ptr %__pyx_args.addr, align 8, !tbaa !4
  %ob_item17 = getelementptr inbounds %struct.PyTupleObject, ptr %11, i32 0, i32 1
  %arrayidx18 = getelementptr inbounds [1 x ptr], ptr %ob_item17, i64 0, i64 1
  %12 = load ptr, ptr %arrayidx18, align 8, !tbaa !4
  %arrayidx19 = getelementptr inbounds [6 x ptr], ptr %values, i64 0, i64 1
  store ptr %12, ptr %arrayidx19, align 8, !tbaa !4
  br label %sw.bb20

sw.bb20:                                          ; preds = %if.then, %sw.bb16
  %13 = load ptr, ptr %__pyx_args.addr, align 8, !tbaa !4
  %ob_item21 = getelementptr inbounds %struct.PyTupleObject, ptr %13, i32 0, i32 1
  %arrayidx22 = getelementptr inbounds [1 x ptr], ptr %ob_item21, i64 0, i64 0
  %14 = load ptr, ptr %arrayidx22, align 8, !tbaa !4
  %arrayidx23 = getelementptr inbounds [6 x ptr], ptr %values, i64 0, i64 0
  store ptr %14, ptr %arrayidx23, align 16, !tbaa !4
  br label %sw.epilog

sw.default:                                       ; preds = %if.then
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb20, %if.then
  %15 = load ptr, ptr %__pyx_kwds.addr, align 8, !tbaa !4
  %call24 = call i64 @PyDict_Size(ptr noundef %15)
  store i64 %call24, ptr %kw_args, align 8, !tbaa !24
  %16 = load i64, ptr %pos_args, align 8, !tbaa !24
  switch i64 %16, label %sw.epilog122 [
    i64 0, label %sw.bb25
    i64 1, label %sw.bb37
    i64 2, label %sw.bb54
    i64 3, label %sw.bb71
    i64 4, label %sw.bb88
    i64 5, label %sw.bb105
  ]

sw.bb25:                                          ; preds = %sw.epilog
  %17 = load ptr, ptr %__pyx_kwds.addr, align 8, !tbaa !4
  %18 = load ptr, ptr @__pyx_n_s_args, align 8, !tbaa !4
  %19 = load ptr, ptr @__pyx_n_s_args, align 8, !tbaa !4
  %hash = getelementptr inbounds %struct.PyASCIIObject, ptr %19, i32 0, i32 2
  %20 = load i64, ptr %hash, align 8, !tbaa !97
  %call26 = call ptr @_PyDict_GetItem_KnownHash(ptr noundef %17, ptr noundef %18, i64 noundef %20)
  %arrayidx27 = getelementptr inbounds [6 x ptr], ptr %values, i64 0, i64 0
  store ptr %call26, ptr %arrayidx27, align 16, !tbaa !4
  %cmp = icmp ne ptr %call26, null
  %lnot29 = xor i1 %cmp, true
  %lnot31 = xor i1 %lnot29, true
  %lnot.ext32 = zext i1 %lnot31 to i32
  %conv33 = sext i32 %lnot.ext32 to i64
  %expval34 = call i64 @llvm.expect.i64(i64 %conv33, i64 1)
  %tobool35 = icmp ne i64 %expval34, 0
  br i1 %tobool35, label %if.then36, label %if.else

if.then36:                                        ; preds = %sw.bb25
  %21 = load i64, ptr %kw_args, align 8, !tbaa !24
  %dec = add nsw i64 %21, -1
  store i64 %dec, ptr %kw_args, align 8, !tbaa !24
  br label %if.end

if.else:                                          ; preds = %sw.bb25
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then36
  br label %sw.bb37

sw.bb37:                                          ; preds = %sw.epilog, %if.end
  %22 = load ptr, ptr %__pyx_kwds.addr, align 8, !tbaa !4
  %23 = load ptr, ptr @__pyx_n_s_xa, align 8, !tbaa !4
  %24 = load ptr, ptr @__pyx_n_s_xa, align 8, !tbaa !4
  %hash38 = getelementptr inbounds %struct.PyASCIIObject, ptr %24, i32 0, i32 2
  %25 = load i64, ptr %hash38, align 8, !tbaa !97
  %call39 = call ptr @_PyDict_GetItem_KnownHash(ptr noundef %22, ptr noundef %23, i64 noundef %25)
  %arrayidx40 = getelementptr inbounds [6 x ptr], ptr %values, i64 0, i64 1
  store ptr %call39, ptr %arrayidx40, align 8, !tbaa !4
  %cmp41 = icmp ne ptr %call39, null
  %lnot43 = xor i1 %cmp41, true
  %lnot45 = xor i1 %lnot43, true
  %lnot.ext46 = zext i1 %lnot45 to i32
  %conv47 = sext i32 %lnot.ext46 to i64
  %expval48 = call i64 @llvm.expect.i64(i64 %conv47, i64 1)
  %tobool49 = icmp ne i64 %expval48, 0
  br i1 %tobool49, label %if.then50, label %if.else52

if.then50:                                        ; preds = %sw.bb37
  %26 = load i64, ptr %kw_args, align 8, !tbaa !24
  %dec51 = add nsw i64 %26, -1
  store i64 %dec51, ptr %kw_args, align 8, !tbaa !24
  br label %if.end53

if.else52:                                        ; preds = %sw.bb37
  call void @__Pyx_RaiseArgtupleInvalid(ptr noundef @.str.124, i32 noundef 1, i64 noundef 6, i64 noundef 6, i64 noundef 1)
  %27 = load ptr, ptr @__pyx_f, align 16, !tbaa !4
  store ptr %27, ptr %__pyx_filename, align 8, !tbaa !4
  %28 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 222, ptr %__pyx_lineno, align 4, !tbaa !10
  %29 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 3064, ptr %__pyx_clineno, align 4, !tbaa !10
  %30 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end53:                                         ; preds = %if.then50
  br label %sw.bb54

sw.bb54:                                          ; preds = %sw.epilog, %if.end53
  %31 = load ptr, ptr %__pyx_kwds.addr, align 8, !tbaa !4
  %32 = load ptr, ptr @__pyx_n_s_xb, align 8, !tbaa !4
  %33 = load ptr, ptr @__pyx_n_s_xb, align 8, !tbaa !4
  %hash55 = getelementptr inbounds %struct.PyASCIIObject, ptr %33, i32 0, i32 2
  %34 = load i64, ptr %hash55, align 8, !tbaa !97
  %call56 = call ptr @_PyDict_GetItem_KnownHash(ptr noundef %31, ptr noundef %32, i64 noundef %34)
  %arrayidx57 = getelementptr inbounds [6 x ptr], ptr %values, i64 0, i64 2
  store ptr %call56, ptr %arrayidx57, align 16, !tbaa !4
  %cmp58 = icmp ne ptr %call56, null
  %lnot60 = xor i1 %cmp58, true
  %lnot62 = xor i1 %lnot60, true
  %lnot.ext63 = zext i1 %lnot62 to i32
  %conv64 = sext i32 %lnot.ext63 to i64
  %expval65 = call i64 @llvm.expect.i64(i64 %conv64, i64 1)
  %tobool66 = icmp ne i64 %expval65, 0
  br i1 %tobool66, label %if.then67, label %if.else69

if.then67:                                        ; preds = %sw.bb54
  %35 = load i64, ptr %kw_args, align 8, !tbaa !24
  %dec68 = add nsw i64 %35, -1
  store i64 %dec68, ptr %kw_args, align 8, !tbaa !24
  br label %if.end70

if.else69:                                        ; preds = %sw.bb54
  call void @__Pyx_RaiseArgtupleInvalid(ptr noundef @.str.124, i32 noundef 1, i64 noundef 6, i64 noundef 6, i64 noundef 2)
  %36 = load ptr, ptr @__pyx_f, align 16, !tbaa !4
  store ptr %36, ptr %__pyx_filename, align 8, !tbaa !4
  %37 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 222, ptr %__pyx_lineno, align 4, !tbaa !10
  %38 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 3070, ptr %__pyx_clineno, align 4, !tbaa !10
  %39 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end70:                                         ; preds = %if.then67
  br label %sw.bb71

sw.bb71:                                          ; preds = %sw.epilog, %if.end70
  %40 = load ptr, ptr %__pyx_kwds.addr, align 8, !tbaa !4
  %41 = load ptr, ptr @__pyx_n_s_xtol, align 8, !tbaa !4
  %42 = load ptr, ptr @__pyx_n_s_xtol, align 8, !tbaa !4
  %hash72 = getelementptr inbounds %struct.PyASCIIObject, ptr %42, i32 0, i32 2
  %43 = load i64, ptr %hash72, align 8, !tbaa !97
  %call73 = call ptr @_PyDict_GetItem_KnownHash(ptr noundef %40, ptr noundef %41, i64 noundef %43)
  %arrayidx74 = getelementptr inbounds [6 x ptr], ptr %values, i64 0, i64 3
  store ptr %call73, ptr %arrayidx74, align 8, !tbaa !4
  %cmp75 = icmp ne ptr %call73, null
  %lnot77 = xor i1 %cmp75, true
  %lnot79 = xor i1 %lnot77, true
  %lnot.ext80 = zext i1 %lnot79 to i32
  %conv81 = sext i32 %lnot.ext80 to i64
  %expval82 = call i64 @llvm.expect.i64(i64 %conv81, i64 1)
  %tobool83 = icmp ne i64 %expval82, 0
  br i1 %tobool83, label %if.then84, label %if.else86

if.then84:                                        ; preds = %sw.bb71
  %44 = load i64, ptr %kw_args, align 8, !tbaa !24
  %dec85 = add nsw i64 %44, -1
  store i64 %dec85, ptr %kw_args, align 8, !tbaa !24
  br label %if.end87

if.else86:                                        ; preds = %sw.bb71
  call void @__Pyx_RaiseArgtupleInvalid(ptr noundef @.str.124, i32 noundef 1, i64 noundef 6, i64 noundef 6, i64 noundef 3)
  %45 = load ptr, ptr @__pyx_f, align 16, !tbaa !4
  store ptr %45, ptr %__pyx_filename, align 8, !tbaa !4
  %46 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 222, ptr %__pyx_lineno, align 4, !tbaa !10
  %47 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 3076, ptr %__pyx_clineno, align 4, !tbaa !10
  %48 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end87:                                         ; preds = %if.then84
  br label %sw.bb88

sw.bb88:                                          ; preds = %sw.epilog, %if.end87
  %49 = load ptr, ptr %__pyx_kwds.addr, align 8, !tbaa !4
  %50 = load ptr, ptr @__pyx_n_s_rtol, align 8, !tbaa !4
  %51 = load ptr, ptr @__pyx_n_s_rtol, align 8, !tbaa !4
  %hash89 = getelementptr inbounds %struct.PyASCIIObject, ptr %51, i32 0, i32 2
  %52 = load i64, ptr %hash89, align 8, !tbaa !97
  %call90 = call ptr @_PyDict_GetItem_KnownHash(ptr noundef %49, ptr noundef %50, i64 noundef %52)
  %arrayidx91 = getelementptr inbounds [6 x ptr], ptr %values, i64 0, i64 4
  store ptr %call90, ptr %arrayidx91, align 16, !tbaa !4
  %cmp92 = icmp ne ptr %call90, null
  %lnot94 = xor i1 %cmp92, true
  %lnot96 = xor i1 %lnot94, true
  %lnot.ext97 = zext i1 %lnot96 to i32
  %conv98 = sext i32 %lnot.ext97 to i64
  %expval99 = call i64 @llvm.expect.i64(i64 %conv98, i64 1)
  %tobool100 = icmp ne i64 %expval99, 0
  br i1 %tobool100, label %if.then101, label %if.else103

if.then101:                                       ; preds = %sw.bb88
  %53 = load i64, ptr %kw_args, align 8, !tbaa !24
  %dec102 = add nsw i64 %53, -1
  store i64 %dec102, ptr %kw_args, align 8, !tbaa !24
  br label %if.end104

if.else103:                                       ; preds = %sw.bb88
  call void @__Pyx_RaiseArgtupleInvalid(ptr noundef @.str.124, i32 noundef 1, i64 noundef 6, i64 noundef 6, i64 noundef 4)
  %54 = load ptr, ptr @__pyx_f, align 16, !tbaa !4
  store ptr %54, ptr %__pyx_filename, align 8, !tbaa !4
  %55 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 222, ptr %__pyx_lineno, align 4, !tbaa !10
  %56 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 3082, ptr %__pyx_clineno, align 4, !tbaa !10
  %57 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end104:                                        ; preds = %if.then101
  br label %sw.bb105

sw.bb105:                                         ; preds = %sw.epilog, %if.end104
  %58 = load ptr, ptr %__pyx_kwds.addr, align 8, !tbaa !4
  %59 = load ptr, ptr @__pyx_n_s_mitr, align 8, !tbaa !4
  %60 = load ptr, ptr @__pyx_n_s_mitr, align 8, !tbaa !4
  %hash106 = getelementptr inbounds %struct.PyASCIIObject, ptr %60, i32 0, i32 2
  %61 = load i64, ptr %hash106, align 8, !tbaa !97
  %call107 = call ptr @_PyDict_GetItem_KnownHash(ptr noundef %58, ptr noundef %59, i64 noundef %61)
  %arrayidx108 = getelementptr inbounds [6 x ptr], ptr %values, i64 0, i64 5
  store ptr %call107, ptr %arrayidx108, align 8, !tbaa !4
  %cmp109 = icmp ne ptr %call107, null
  %lnot111 = xor i1 %cmp109, true
  %lnot113 = xor i1 %lnot111, true
  %lnot.ext114 = zext i1 %lnot113 to i32
  %conv115 = sext i32 %lnot.ext114 to i64
  %expval116 = call i64 @llvm.expect.i64(i64 %conv115, i64 1)
  %tobool117 = icmp ne i64 %expval116, 0
  br i1 %tobool117, label %if.then118, label %if.else120

if.then118:                                       ; preds = %sw.bb105
  %62 = load i64, ptr %kw_args, align 8, !tbaa !24
  %dec119 = add nsw i64 %62, -1
  store i64 %dec119, ptr %kw_args, align 8, !tbaa !24
  br label %if.end121

if.else120:                                       ; preds = %sw.bb105
  call void @__Pyx_RaiseArgtupleInvalid(ptr noundef @.str.124, i32 noundef 1, i64 noundef 6, i64 noundef 6, i64 noundef 5)
  %63 = load ptr, ptr @__pyx_f, align 16, !tbaa !4
  store ptr %63, ptr %__pyx_filename, align 8, !tbaa !4
  %64 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 222, ptr %__pyx_lineno, align 4, !tbaa !10
  %65 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 3088, ptr %__pyx_clineno, align 4, !tbaa !10
  %66 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end121:                                        ; preds = %if.then118
  br label %sw.epilog122

sw.epilog122:                                     ; preds = %if.end121, %sw.epilog
  %67 = load i64, ptr %kw_args, align 8, !tbaa !24
  %cmp123 = icmp sgt i64 %67, 0
  %lnot125 = xor i1 %cmp123, true
  %lnot127 = xor i1 %lnot125, true
  %lnot.ext128 = zext i1 %lnot127 to i32
  %conv129 = sext i32 %lnot.ext128 to i64
  %expval130 = call i64 @llvm.expect.i64(i64 %conv129, i64 0)
  %tobool131 = icmp ne i64 %expval130, 0
  br i1 %tobool131, label %if.then132, label %if.end145

if.then132:                                       ; preds = %sw.epilog122
  %68 = load ptr, ptr %__pyx_kwds.addr, align 8, !tbaa !4
  %arraydecay = getelementptr inbounds [6 x ptr], ptr %values, i64 0, i64 0
  %69 = load i64, ptr %pos_args, align 8, !tbaa !24
  %call133 = call i32 @__Pyx_ParseOptionalKeywords(ptr noundef %68, ptr noundef @__pyx_pw_5scipy_8optimize_15cython_optimize_6_zeros_3full_output_example.__pyx_pyargnames, ptr noundef null, ptr noundef %arraydecay, i64 noundef %69, ptr noundef @.str.124)
  %cmp134 = icmp slt i32 %call133, 0
  %lnot136 = xor i1 %cmp134, true
  %lnot138 = xor i1 %lnot136, true
  %lnot.ext139 = zext i1 %lnot138 to i32
  %conv140 = sext i32 %lnot.ext139 to i64
  %expval141 = call i64 @llvm.expect.i64(i64 %conv140, i64 0)
  %tobool142 = icmp ne i64 %expval141, 0
  br i1 %tobool142, label %if.then143, label %if.end144

if.then143:                                       ; preds = %if.then132
  %70 = load ptr, ptr @__pyx_f, align 16, !tbaa !4
  store ptr %70, ptr %__pyx_filename, align 8, !tbaa !4
  %71 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 222, ptr %__pyx_lineno, align 4, !tbaa !10
  %72 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 3092, ptr %__pyx_clineno, align 4, !tbaa !10
  %73 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end144:                                        ; preds = %if.then132
  br label %if.end145

if.end145:                                        ; preds = %if.end144, %sw.epilog122
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then143, %if.else120, %if.else103, %if.else86, %if.else69, %if.else52, %if.else, %sw.default, %if.end145
  call void @llvm.lifetime.end.p0(i64 8, ptr %pos_args) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %kw_args) #9
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup179 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end172

if.else147:                                       ; preds = %entry
  %74 = load ptr, ptr %__pyx_args.addr, align 8, !tbaa !4
  %call148 = call i64 @PyTuple_GET_SIZE(ptr noundef %74)
  %cmp149 = icmp ne i64 %call148, 6
  br i1 %cmp149, label %if.then151, label %if.else152

if.then151:                                       ; preds = %if.else147
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup179

if.else152:                                       ; preds = %if.else147
  %75 = load ptr, ptr %__pyx_args.addr, align 8, !tbaa !4
  %ob_item153 = getelementptr inbounds %struct.PyTupleObject, ptr %75, i32 0, i32 1
  %arrayidx154 = getelementptr inbounds [1 x ptr], ptr %ob_item153, i64 0, i64 0
  %76 = load ptr, ptr %arrayidx154, align 8, !tbaa !4
  %arrayidx155 = getelementptr inbounds [6 x ptr], ptr %values, i64 0, i64 0
  store ptr %76, ptr %arrayidx155, align 16, !tbaa !4
  %77 = load ptr, ptr %__pyx_args.addr, align 8, !tbaa !4
  %ob_item156 = getelementptr inbounds %struct.PyTupleObject, ptr %77, i32 0, i32 1
  %arrayidx157 = getelementptr inbounds [1 x ptr], ptr %ob_item156, i64 0, i64 1
  %78 = load ptr, ptr %arrayidx157, align 8, !tbaa !4
  %arrayidx158 = getelementptr inbounds [6 x ptr], ptr %values, i64 0, i64 1
  store ptr %78, ptr %arrayidx158, align 8, !tbaa !4
  %79 = load ptr, ptr %__pyx_args.addr, align 8, !tbaa !4
  %ob_item159 = getelementptr inbounds %struct.PyTupleObject, ptr %79, i32 0, i32 1
  %arrayidx160 = getelementptr inbounds [1 x ptr], ptr %ob_item159, i64 0, i64 2
  %80 = load ptr, ptr %arrayidx160, align 8, !tbaa !4
  %arrayidx161 = getelementptr inbounds [6 x ptr], ptr %values, i64 0, i64 2
  store ptr %80, ptr %arrayidx161, align 16, !tbaa !4
  %81 = load ptr, ptr %__pyx_args.addr, align 8, !tbaa !4
  %ob_item162 = getelementptr inbounds %struct.PyTupleObject, ptr %81, i32 0, i32 1
  %arrayidx163 = getelementptr inbounds [1 x ptr], ptr %ob_item162, i64 0, i64 3
  %82 = load ptr, ptr %arrayidx163, align 8, !tbaa !4
  %arrayidx164 = getelementptr inbounds [6 x ptr], ptr %values, i64 0, i64 3
  store ptr %82, ptr %arrayidx164, align 8, !tbaa !4
  %83 = load ptr, ptr %__pyx_args.addr, align 8, !tbaa !4
  %ob_item165 = getelementptr inbounds %struct.PyTupleObject, ptr %83, i32 0, i32 1
  %arrayidx166 = getelementptr inbounds [1 x ptr], ptr %ob_item165, i64 0, i64 4
  %84 = load ptr, ptr %arrayidx166, align 8, !tbaa !4
  %arrayidx167 = getelementptr inbounds [6 x ptr], ptr %values, i64 0, i64 4
  store ptr %84, ptr %arrayidx167, align 16, !tbaa !4
  %85 = load ptr, ptr %__pyx_args.addr, align 8, !tbaa !4
  %ob_item168 = getelementptr inbounds %struct.PyTupleObject, ptr %85, i32 0, i32 1
  %arrayidx169 = getelementptr inbounds [1 x ptr], ptr %ob_item168, i64 0, i64 5
  %86 = load ptr, ptr %arrayidx169, align 8, !tbaa !4
  %arrayidx170 = getelementptr inbounds [6 x ptr], ptr %values, i64 0, i64 5
  store ptr %86, ptr %arrayidx170, align 8, !tbaa !4
  br label %if.end171

if.end171:                                        ; preds = %if.else152
  br label %if.end172

if.end172:                                        ; preds = %if.end171, %cleanup.cont
  %arrayidx173 = getelementptr inbounds [6 x ptr], ptr %values, i64 0, i64 0
  %87 = load ptr, ptr %arrayidx173, align 16, !tbaa !4
  store ptr %87, ptr %__pyx_v_args, align 8, !tbaa !4
  %arrayidx174 = getelementptr inbounds [6 x ptr], ptr %values, i64 0, i64 1
  %88 = load ptr, ptr %arrayidx174, align 8, !tbaa !4
  store ptr %88, ptr %__pyx_v_xa, align 8, !tbaa !4
  %arrayidx175 = getelementptr inbounds [6 x ptr], ptr %values, i64 0, i64 2
  %89 = load ptr, ptr %arrayidx175, align 16, !tbaa !4
  store ptr %89, ptr %__pyx_v_xb, align 8, !tbaa !4
  %arrayidx176 = getelementptr inbounds [6 x ptr], ptr %values, i64 0, i64 3
  %90 = load ptr, ptr %arrayidx176, align 8, !tbaa !4
  store ptr %90, ptr %__pyx_v_xtol, align 8, !tbaa !4
  %arrayidx177 = getelementptr inbounds [6 x ptr], ptr %values, i64 0, i64 4
  %91 = load ptr, ptr %arrayidx177, align 16, !tbaa !4
  store ptr %91, ptr %__pyx_v_rtol, align 8, !tbaa !4
  %arrayidx178 = getelementptr inbounds [6 x ptr], ptr %values, i64 0, i64 5
  %92 = load ptr, ptr %arrayidx178, align 8, !tbaa !4
  store ptr %92, ptr %__pyx_v_mitr, align 8, !tbaa !4
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup179

cleanup179:                                       ; preds = %if.then151, %if.end172, %cleanup
  call void @llvm.lifetime.end.p0(i64 48, ptr %values) #9
  %cleanup.dest180 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest180, label %cleanup184 [
    i32 0, label %cleanup.cont181
    i32 3, label %__pyx_L5_argtuple_error
    i32 5, label %__pyx_L3_error
  ]

cleanup.cont181:                                  ; preds = %cleanup179
  br label %__pyx_L4_argument_unpacking_done

__pyx_L5_argtuple_error:                          ; preds = %cleanup179
  %93 = load ptr, ptr %__pyx_args.addr, align 8, !tbaa !4
  %call182 = call i64 @PyTuple_GET_SIZE(ptr noundef %93)
  call void @__Pyx_RaiseArgtupleInvalid(ptr noundef @.str.124, i32 noundef 1, i64 noundef 6, i64 noundef 6, i64 noundef %call182)
  %94 = load ptr, ptr @__pyx_f, align 16, !tbaa !4
  store ptr %94, ptr %__pyx_filename, align 8, !tbaa !4
  %95 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 222, ptr %__pyx_lineno, align 4, !tbaa !10
  %96 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 3113, ptr %__pyx_clineno, align 4, !tbaa !10
  %97 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  br label %__pyx_L3_error

__pyx_L3_error:                                   ; preds = %cleanup179, %__pyx_L5_argtuple_error
  %98 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  %99 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  %100 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  call void @__Pyx_AddTraceback(ptr noundef @.str.125, i32 noundef %98, i32 noundef %99, ptr noundef %100)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup184

__pyx_L4_argument_unpacking_done:                 ; preds = %cleanup.cont181
  %101 = load ptr, ptr %__pyx_self.addr, align 8, !tbaa !4
  %102 = load ptr, ptr %__pyx_v_args, align 8, !tbaa !4
  %103 = load ptr, ptr %__pyx_v_xa, align 8, !tbaa !4
  %104 = load ptr, ptr %__pyx_v_xb, align 8, !tbaa !4
  %105 = load ptr, ptr %__pyx_v_xtol, align 8, !tbaa !4
  %106 = load ptr, ptr %__pyx_v_rtol, align 8, !tbaa !4
  %107 = load ptr, ptr %__pyx_v_mitr, align 8, !tbaa !4
  %call183 = call ptr @__pyx_pf_5scipy_8optimize_15cython_optimize_6_zeros_2full_output_example(ptr noundef %101, ptr noundef %102, ptr noundef %103, ptr noundef %104, ptr noundef %105, ptr noundef %106, ptr noundef %107)
  store ptr %call183, ptr %__pyx_r, align 8, !tbaa !4
  %108 = load ptr, ptr %__pyx_r, align 8, !tbaa !4
  store ptr %108, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup184

cleanup184:                                       ; preds = %__pyx_L4_argument_unpacking_done, %__pyx_L3_error, %cleanup179
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pyx_r) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %__pyx_clineno) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pyx_filename) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %__pyx_lineno) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pyx_v_mitr) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pyx_v_rtol) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pyx_v_xtol) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pyx_v_xb) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pyx_v_xa) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pyx_v_args) #9
  %109 = load ptr, ptr %retval, align 8
  ret ptr %109
}

; Function Attrs: nounwind uwtable
define internal ptr @__pyx_pf_5scipy_8optimize_15cython_optimize_6_zeros_2full_output_example(ptr noundef %__pyx_self, ptr noundef %__pyx_v_args, ptr noundef %__pyx_v_xa, ptr noundef %__pyx_v_xb, ptr noundef %__pyx_v_xtol, ptr noundef %__pyx_v_rtol, ptr noundef %__pyx_v_mitr) #0 {
entry:
  %__pyx_self.addr = alloca ptr, align 8
  %__pyx_v_args.addr = alloca ptr, align 8
  %__pyx_v_xa.addr = alloca ptr, align 8
  %__pyx_v_xb.addr = alloca ptr, align 8
  %__pyx_v_xtol.addr = alloca ptr, align 8
  %__pyx_v_rtol.addr = alloca ptr, align 8
  %__pyx_v_mitr.addr = alloca ptr, align 8
  %__pyx_r = alloca ptr, align 8
  %__pyx_t_1 = alloca float, align 4
  %__pyx_t_2 = alloca float, align 4
  %__pyx_t_3 = alloca float, align 4
  %__pyx_t_4 = alloca float, align 4
  %__pyx_t_5 = alloca i32, align 4
  %__pyx_t_6 = alloca ptr, align 8
  %__pyx_lineno = alloca i32, align 4
  %__pyx_filename = alloca ptr, align 8
  %__pyx_clineno = alloca i32, align 4
  %agg.tmp = alloca %struct.__pyx_t_5scipy_8optimize_15cython_optimize_6_zeros_zeros_full_output, align 8
  store ptr %__pyx_self, ptr %__pyx_self.addr, align 8, !tbaa !4
  store ptr %__pyx_v_args, ptr %__pyx_v_args.addr, align 8, !tbaa !4
  store ptr %__pyx_v_xa, ptr %__pyx_v_xa.addr, align 8, !tbaa !4
  store ptr %__pyx_v_xb, ptr %__pyx_v_xb.addr, align 8, !tbaa !4
  store ptr %__pyx_v_xtol, ptr %__pyx_v_xtol.addr, align 8, !tbaa !4
  store ptr %__pyx_v_rtol, ptr %__pyx_v_rtol.addr, align 8, !tbaa !4
  store ptr %__pyx_v_mitr, ptr %__pyx_v_mitr.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pyx_r) #9
  store ptr null, ptr %__pyx_r, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %__pyx_t_1) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %__pyx_t_2) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %__pyx_t_3) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %__pyx_t_4) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %__pyx_t_5) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pyx_t_6) #9
  store ptr null, ptr %__pyx_t_6, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %__pyx_lineno) #9
  store i32 0, ptr %__pyx_lineno, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pyx_filename) #9
  store ptr null, ptr %__pyx_filename, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %__pyx_clineno) #9
  store i32 0, ptr %__pyx_clineno, align 4, !tbaa !10
  %0 = load ptr, ptr %__pyx_r, align 8, !tbaa !4
  call void @Py_XDECREF(ptr noundef %0)
  %1 = load ptr, ptr %__pyx_v_args.addr, align 8, !tbaa !4
  %call = call i32 @Py_IS_TYPE(ptr noundef %1, ptr noundef @PyTuple_Type)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1)
  %tobool2 = icmp ne i64 %expval, 0
  br i1 %tobool2, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %__pyx_v_args.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %2, @_Py_NoneStruct
  br i1 %cmp, label %if.end, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %3 = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !4
  %4 = load ptr, ptr %__pyx_v_args.addr, align 8, !tbaa !4
  %call5 = call ptr @Py_TYPE(ptr noundef %4)
  %tp_name = getelementptr inbounds %struct._typeobject, ptr %call5, i32 0, i32 1
  %5 = load ptr, ptr %tp_name, align 8, !tbaa !38
  %call6 = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %3, ptr noundef @.str.126, ptr noundef @.str.127, ptr noundef %5)
  br i1 false, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false4
  %6 = load ptr, ptr @__pyx_f, align 16, !tbaa !4
  store ptr %6, ptr %__pyx_filename, align 8, !tbaa !4
  %7 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 250, ptr %__pyx_lineno, align 4, !tbaa !10
  %8 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 3146, ptr %__pyx_clineno, align 4, !tbaa !10
  %9 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  br label %__pyx_L1_error

if.end:                                           ; preds = %lor.lhs.false4, %lor.lhs.false, %entry
  %10 = load ptr, ptr %__pyx_v_xa.addr, align 8, !tbaa !4
  %call7 = call i32 @Py_IS_TYPE(ptr noundef %10, ptr noundef @PyFloat_Type)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %11 = load ptr, ptr %__pyx_v_xa.addr, align 8, !tbaa !4
  %ob_fval = getelementptr inbounds %struct.PyFloatObject, ptr %11, i32 0, i32 1
  %12 = load double, ptr %ob_fval, align 8, !tbaa !100
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %13 = load ptr, ptr %__pyx_v_xa.addr, align 8, !tbaa !4
  %call9 = call double @PyFloat_AsDouble(ptr noundef %13)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %12, %cond.true ], [ %call9, %cond.false ]
  %conv10 = fptrunc double %cond to float
  store float %conv10, ptr %__pyx_t_1, align 4, !tbaa !34
  %14 = load float, ptr %__pyx_t_1, align 4, !tbaa !34
  %cmp11 = fcmp oeq float %14, -1.000000e+00
  br i1 %cmp11, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %cond.end
  %call13 = call ptr @PyErr_Occurred()
  %tobool14 = icmp ne ptr %call13, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cond.end
  %15 = phi i1 [ false, %cond.end ], [ %tobool14, %land.rhs ]
  %lnot15 = xor i1 %15, true
  %lnot17 = xor i1 %lnot15, true
  %lnot.ext18 = zext i1 %lnot17 to i32
  %conv19 = sext i32 %lnot.ext18 to i64
  %expval20 = call i64 @llvm.expect.i64(i64 %conv19, i64 0)
  %tobool21 = icmp ne i64 %expval20, 0
  br i1 %tobool21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %land.end
  %16 = load ptr, ptr @__pyx_f, align 16, !tbaa !4
  store ptr %16, ptr %__pyx_filename, align 8, !tbaa !4
  %17 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 250, ptr %__pyx_lineno, align 4, !tbaa !10
  %18 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 3147, ptr %__pyx_clineno, align 4, !tbaa !10
  %19 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  br label %__pyx_L1_error

if.end23:                                         ; preds = %land.end
  %20 = load ptr, ptr %__pyx_v_xb.addr, align 8, !tbaa !4
  %call24 = call i32 @Py_IS_TYPE(ptr noundef %20, ptr noundef @PyFloat_Type)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %cond.true26, label %cond.false28

cond.true26:                                      ; preds = %if.end23
  %21 = load ptr, ptr %__pyx_v_xb.addr, align 8, !tbaa !4
  %ob_fval27 = getelementptr inbounds %struct.PyFloatObject, ptr %21, i32 0, i32 1
  %22 = load double, ptr %ob_fval27, align 8, !tbaa !100
  br label %cond.end30

cond.false28:                                     ; preds = %if.end23
  %23 = load ptr, ptr %__pyx_v_xb.addr, align 8, !tbaa !4
  %call29 = call double @PyFloat_AsDouble(ptr noundef %23)
  br label %cond.end30

cond.end30:                                       ; preds = %cond.false28, %cond.true26
  %cond31 = phi double [ %22, %cond.true26 ], [ %call29, %cond.false28 ]
  %conv32 = fptrunc double %cond31 to float
  store float %conv32, ptr %__pyx_t_2, align 4, !tbaa !34
  %24 = load float, ptr %__pyx_t_2, align 4, !tbaa !34
  %cmp33 = fcmp oeq float %24, -1.000000e+00
  br i1 %cmp33, label %land.rhs35, label %land.end38

land.rhs35:                                       ; preds = %cond.end30
  %call36 = call ptr @PyErr_Occurred()
  %tobool37 = icmp ne ptr %call36, null
  br label %land.end38

land.end38:                                       ; preds = %land.rhs35, %cond.end30
  %25 = phi i1 [ false, %cond.end30 ], [ %tobool37, %land.rhs35 ]
  %lnot39 = xor i1 %25, true
  %lnot41 = xor i1 %lnot39, true
  %lnot.ext42 = zext i1 %lnot41 to i32
  %conv43 = sext i32 %lnot.ext42 to i64
  %expval44 = call i64 @llvm.expect.i64(i64 %conv43, i64 0)
  %tobool45 = icmp ne i64 %expval44, 0
  br i1 %tobool45, label %if.then46, label %if.end47

if.then46:                                        ; preds = %land.end38
  %26 = load ptr, ptr @__pyx_f, align 16, !tbaa !4
  store ptr %26, ptr %__pyx_filename, align 8, !tbaa !4
  %27 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 250, ptr %__pyx_lineno, align 4, !tbaa !10
  %28 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 3148, ptr %__pyx_clineno, align 4, !tbaa !10
  %29 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  br label %__pyx_L1_error

if.end47:                                         ; preds = %land.end38
  %30 = load ptr, ptr %__pyx_v_xtol.addr, align 8, !tbaa !4
  %call48 = call i32 @Py_IS_TYPE(ptr noundef %30, ptr noundef @PyFloat_Type)
  %tobool49 = icmp ne i32 %call48, 0
  br i1 %tobool49, label %cond.true50, label %cond.false52

cond.true50:                                      ; preds = %if.end47
  %31 = load ptr, ptr %__pyx_v_xtol.addr, align 8, !tbaa !4
  %ob_fval51 = getelementptr inbounds %struct.PyFloatObject, ptr %31, i32 0, i32 1
  %32 = load double, ptr %ob_fval51, align 8, !tbaa !100
  br label %cond.end54

cond.false52:                                     ; preds = %if.end47
  %33 = load ptr, ptr %__pyx_v_xtol.addr, align 8, !tbaa !4
  %call53 = call double @PyFloat_AsDouble(ptr noundef %33)
  br label %cond.end54

cond.end54:                                       ; preds = %cond.false52, %cond.true50
  %cond55 = phi double [ %32, %cond.true50 ], [ %call53, %cond.false52 ]
  %conv56 = fptrunc double %cond55 to float
  store float %conv56, ptr %__pyx_t_3, align 4, !tbaa !34
  %34 = load float, ptr %__pyx_t_3, align 4, !tbaa !34
  %cmp57 = fcmp oeq float %34, -1.000000e+00
  br i1 %cmp57, label %land.rhs59, label %land.end62

land.rhs59:                                       ; preds = %cond.end54
  %call60 = call ptr @PyErr_Occurred()
  %tobool61 = icmp ne ptr %call60, null
  br label %land.end62

land.end62:                                       ; preds = %land.rhs59, %cond.end54
  %35 = phi i1 [ false, %cond.end54 ], [ %tobool61, %land.rhs59 ]
  %lnot63 = xor i1 %35, true
  %lnot65 = xor i1 %lnot63, true
  %lnot.ext66 = zext i1 %lnot65 to i32
  %conv67 = sext i32 %lnot.ext66 to i64
  %expval68 = call i64 @llvm.expect.i64(i64 %conv67, i64 0)
  %tobool69 = icmp ne i64 %expval68, 0
  br i1 %tobool69, label %if.then70, label %if.end71

if.then70:                                        ; preds = %land.end62
  %36 = load ptr, ptr @__pyx_f, align 16, !tbaa !4
  store ptr %36, ptr %__pyx_filename, align 8, !tbaa !4
  %37 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 250, ptr %__pyx_lineno, align 4, !tbaa !10
  %38 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 3149, ptr %__pyx_clineno, align 4, !tbaa !10
  %39 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  br label %__pyx_L1_error

if.end71:                                         ; preds = %land.end62
  %40 = load ptr, ptr %__pyx_v_rtol.addr, align 8, !tbaa !4
  %call72 = call i32 @Py_IS_TYPE(ptr noundef %40, ptr noundef @PyFloat_Type)
  %tobool73 = icmp ne i32 %call72, 0
  br i1 %tobool73, label %cond.true74, label %cond.false76

cond.true74:                                      ; preds = %if.end71
  %41 = load ptr, ptr %__pyx_v_rtol.addr, align 8, !tbaa !4
  %ob_fval75 = getelementptr inbounds %struct.PyFloatObject, ptr %41, i32 0, i32 1
  %42 = load double, ptr %ob_fval75, align 8, !tbaa !100
  br label %cond.end78

cond.false76:                                     ; preds = %if.end71
  %43 = load ptr, ptr %__pyx_v_rtol.addr, align 8, !tbaa !4
  %call77 = call double @PyFloat_AsDouble(ptr noundef %43)
  br label %cond.end78

cond.end78:                                       ; preds = %cond.false76, %cond.true74
  %cond79 = phi double [ %42, %cond.true74 ], [ %call77, %cond.false76 ]
  %conv80 = fptrunc double %cond79 to float
  store float %conv80, ptr %__pyx_t_4, align 4, !tbaa !34
  %44 = load float, ptr %__pyx_t_4, align 4, !tbaa !34
  %cmp81 = fcmp oeq float %44, -1.000000e+00
  br i1 %cmp81, label %land.rhs83, label %land.end86

land.rhs83:                                       ; preds = %cond.end78
  %call84 = call ptr @PyErr_Occurred()
  %tobool85 = icmp ne ptr %call84, null
  br label %land.end86

land.end86:                                       ; preds = %land.rhs83, %cond.end78
  %45 = phi i1 [ false, %cond.end78 ], [ %tobool85, %land.rhs83 ]
  %lnot87 = xor i1 %45, true
  %lnot89 = xor i1 %lnot87, true
  %lnot.ext90 = zext i1 %lnot89 to i32
  %conv91 = sext i32 %lnot.ext90 to i64
  %expval92 = call i64 @llvm.expect.i64(i64 %conv91, i64 0)
  %tobool93 = icmp ne i64 %expval92, 0
  br i1 %tobool93, label %if.then94, label %if.end95

if.then94:                                        ; preds = %land.end86
  %46 = load ptr, ptr @__pyx_f, align 16, !tbaa !4
  store ptr %46, ptr %__pyx_filename, align 8, !tbaa !4
  %47 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 250, ptr %__pyx_lineno, align 4, !tbaa !10
  %48 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 3150, ptr %__pyx_clineno, align 4, !tbaa !10
  %49 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  br label %__pyx_L1_error

if.end95:                                         ; preds = %land.end86
  %50 = load ptr, ptr %__pyx_v_mitr.addr, align 8, !tbaa !4
  %call96 = call i32 @__Pyx_PyInt_As_int(ptr noundef %50)
  store i32 %call96, ptr %__pyx_t_5, align 4, !tbaa !10
  %51 = load i32, ptr %__pyx_t_5, align 4, !tbaa !10
  %cmp97 = icmp eq i32 %51, -1
  br i1 %cmp97, label %land.rhs99, label %land.end102

land.rhs99:                                       ; preds = %if.end95
  %call100 = call ptr @PyErr_Occurred()
  %tobool101 = icmp ne ptr %call100, null
  br label %land.end102

land.end102:                                      ; preds = %land.rhs99, %if.end95
  %52 = phi i1 [ false, %if.end95 ], [ %tobool101, %land.rhs99 ]
  %lnot103 = xor i1 %52, true
  %lnot105 = xor i1 %lnot103, true
  %lnot.ext106 = zext i1 %lnot105 to i32
  %conv107 = sext i32 %lnot.ext106 to i64
  %expval108 = call i64 @llvm.expect.i64(i64 %conv107, i64 0)
  %tobool109 = icmp ne i64 %expval108, 0
  br i1 %tobool109, label %if.then110, label %if.end111

if.then110:                                       ; preds = %land.end102
  %53 = load ptr, ptr @__pyx_f, align 16, !tbaa !4
  store ptr %53, ptr %__pyx_filename, align 8, !tbaa !4
  %54 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 250, ptr %__pyx_lineno, align 4, !tbaa !10
  %55 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 3151, ptr %__pyx_clineno, align 4, !tbaa !10
  %56 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  br label %__pyx_L1_error

if.end111:                                        ; preds = %land.end102
  call void @llvm.lifetime.start.p0(i64 24, ptr %agg.tmp) #9
  %57 = load ptr, ptr %__pyx_v_args.addr, align 8, !tbaa !4
  %58 = load float, ptr %__pyx_t_1, align 4, !tbaa !34
  %59 = load float, ptr %__pyx_t_2, align 4, !tbaa !34
  %60 = load float, ptr %__pyx_t_3, align 4, !tbaa !34
  %61 = load float, ptr %__pyx_t_4, align 4, !tbaa !34
  %62 = load i32, ptr %__pyx_t_5, align 4, !tbaa !10
  call void @__pyx_f_5scipy_8optimize_15cython_optimize_6_zeros_brentq_full_output_example(ptr sret(%struct.__pyx_t_5scipy_8optimize_15cython_optimize_6_zeros_zeros_full_output) align 8 %agg.tmp, ptr noundef %57, float noundef %58, float noundef %59, float noundef %60, float noundef %61, i32 noundef %62)
  %call112 = call ptr @__pyx_convert__to_py___pyx_t_5scipy_8optimize_15cython_optimize_6_zeros_zeros_full_output(ptr noundef byval(%struct.__pyx_t_5scipy_8optimize_15cython_optimize_6_zeros_zeros_full_output) align 8 %agg.tmp)
  call void @llvm.lifetime.end.p0(i64 24, ptr %agg.tmp) #9
  store ptr %call112, ptr %__pyx_t_6, align 8, !tbaa !4
  %63 = load ptr, ptr %__pyx_t_6, align 8, !tbaa !4
  %tobool113 = icmp ne ptr %63, null
  %lnot114 = xor i1 %tobool113, true
  %lnot116 = xor i1 %lnot114, true
  %lnot118 = xor i1 %lnot116, true
  %lnot.ext119 = zext i1 %lnot118 to i32
  %conv120 = sext i32 %lnot.ext119 to i64
  %expval121 = call i64 @llvm.expect.i64(i64 %conv120, i64 0)
  %tobool122 = icmp ne i64 %expval121, 0
  br i1 %tobool122, label %if.then123, label %if.end124

if.then123:                                       ; preds = %if.end111
  %64 = load ptr, ptr @__pyx_f, align 16, !tbaa !4
  store ptr %64, ptr %__pyx_filename, align 8, !tbaa !4
  %65 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 250, ptr %__pyx_lineno, align 4, !tbaa !10
  %66 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 3152, ptr %__pyx_clineno, align 4, !tbaa !10
  %67 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  br label %__pyx_L1_error

if.end124:                                        ; preds = %if.end111
  %68 = load ptr, ptr %__pyx_t_6, align 8, !tbaa !4
  store ptr %68, ptr %__pyx_r, align 8, !tbaa !4
  store ptr null, ptr %__pyx_t_6, align 8, !tbaa !4
  br label %__pyx_L0

__pyx_L1_error:                                   ; preds = %if.then123, %if.then110, %if.then94, %if.then70, %if.then46, %if.then22, %if.then
  %69 = load ptr, ptr %__pyx_t_6, align 8, !tbaa !4
  call void @Py_XDECREF(ptr noundef %69)
  %70 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  %71 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  %72 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  call void @__Pyx_AddTraceback(ptr noundef @.str.125, i32 noundef %70, i32 noundef %71, ptr noundef %72)
  store ptr null, ptr %__pyx_r, align 8, !tbaa !4
  br label %__pyx_L0

__pyx_L0:                                         ; preds = %__pyx_L1_error, %if.end124
  %73 = load ptr, ptr %__pyx_r, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 4, ptr %__pyx_clineno) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pyx_filename) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %__pyx_lineno) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pyx_t_6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %__pyx_t_5) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %__pyx_t_4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %__pyx_t_3) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %__pyx_t_2) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %__pyx_t_1) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pyx_r) #9
  ret ptr %73
}

; Function Attrs: nounwind uwtable
define internal ptr @__pyx_convert__to_py___pyx_t_5scipy_8optimize_15cython_optimize_6_zeros_zeros_full_output(ptr noundef byval(%struct.__pyx_t_5scipy_8optimize_15cython_optimize_6_zeros_zeros_full_output) align 8 %s) #0 {
entry:
  %retval = alloca ptr, align 8
  %res = alloca ptr, align 8
  %member = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %member) #9
  %call = call ptr @PyDict_New()
  store ptr %call, ptr %res, align 8, !tbaa !4
  %0 = load ptr, ptr %res, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  %lnot = xor i1 %tobool, true
  %lnot1 = xor i1 %lnot, true
  %lnot2 = xor i1 %lnot1, true
  %lnot.ext = zext i1 %lnot2 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool3 = icmp ne i64 %expval, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %funcalls = getelementptr inbounds %struct.__pyx_t_5scipy_8optimize_15cython_optimize_6_zeros_zeros_full_output, ptr %s, i32 0, i32 0
  %1 = load i32, ptr %funcalls, align 8, !tbaa !81
  %call4 = call ptr @__Pyx_PyInt_From_int(i32 noundef %1)
  store ptr %call4, ptr %member, align 8, !tbaa !4
  %2 = load ptr, ptr %member, align 8, !tbaa !4
  %tobool5 = icmp ne ptr %2, null
  %lnot6 = xor i1 %tobool5, true
  %lnot8 = xor i1 %lnot6, true
  %lnot10 = xor i1 %lnot8, true
  %lnot.ext11 = zext i1 %lnot10 to i32
  %conv12 = sext i32 %lnot.ext11 to i64
  %expval13 = call i64 @llvm.expect.i64(i64 %conv12, i64 0)
  %tobool14 = icmp ne i64 %expval13, 0
  br i1 %tobool14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end
  br label %bad

if.end16:                                         ; preds = %if.end
  %3 = load ptr, ptr %res, align 8, !tbaa !4
  %4 = load ptr, ptr @__pyx_n_s_funcalls, align 8, !tbaa !4
  %5 = load ptr, ptr %member, align 8, !tbaa !4
  %call17 = call i32 @PyDict_SetItem(ptr noundef %3, ptr noundef %4, ptr noundef %5)
  %cmp = icmp slt i32 %call17, 0
  %lnot19 = xor i1 %cmp, true
  %lnot21 = xor i1 %lnot19, true
  %lnot.ext22 = zext i1 %lnot21 to i32
  %conv23 = sext i32 %lnot.ext22 to i64
  %expval24 = call i64 @llvm.expect.i64(i64 %conv23, i64 0)
  %tobool25 = icmp ne i64 %expval24, 0
  br i1 %tobool25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end16
  br label %bad

if.end27:                                         ; preds = %if.end16
  %6 = load ptr, ptr %member, align 8, !tbaa !4
  call void @Py_DECREF(ptr noundef %6)
  %iterations = getelementptr inbounds %struct.__pyx_t_5scipy_8optimize_15cython_optimize_6_zeros_zeros_full_output, ptr %s, i32 0, i32 1
  %7 = load i32, ptr %iterations, align 4, !tbaa !83
  %call28 = call ptr @__Pyx_PyInt_From_int(i32 noundef %7)
  store ptr %call28, ptr %member, align 8, !tbaa !4
  %8 = load ptr, ptr %member, align 8, !tbaa !4
  %tobool29 = icmp ne ptr %8, null
  %lnot30 = xor i1 %tobool29, true
  %lnot32 = xor i1 %lnot30, true
  %lnot34 = xor i1 %lnot32, true
  %lnot.ext35 = zext i1 %lnot34 to i32
  %conv36 = sext i32 %lnot.ext35 to i64
  %expval37 = call i64 @llvm.expect.i64(i64 %conv36, i64 0)
  %tobool38 = icmp ne i64 %expval37, 0
  br i1 %tobool38, label %if.then39, label %if.end40

if.then39:                                        ; preds = %if.end27
  br label %bad

if.end40:                                         ; preds = %if.end27
  %9 = load ptr, ptr %res, align 8, !tbaa !4
  %10 = load ptr, ptr @__pyx_n_s_iterations, align 8, !tbaa !4
  %11 = load ptr, ptr %member, align 8, !tbaa !4
  %call41 = call i32 @PyDict_SetItem(ptr noundef %9, ptr noundef %10, ptr noundef %11)
  %cmp42 = icmp slt i32 %call41, 0
  %lnot44 = xor i1 %cmp42, true
  %lnot46 = xor i1 %lnot44, true
  %lnot.ext47 = zext i1 %lnot46 to i32
  %conv48 = sext i32 %lnot.ext47 to i64
  %expval49 = call i64 @llvm.expect.i64(i64 %conv48, i64 0)
  %tobool50 = icmp ne i64 %expval49, 0
  br i1 %tobool50, label %if.then51, label %if.end52

if.then51:                                        ; preds = %if.end40
  br label %bad

if.end52:                                         ; preds = %if.end40
  %12 = load ptr, ptr %member, align 8, !tbaa !4
  call void @Py_DECREF(ptr noundef %12)
  %error_num = getelementptr inbounds %struct.__pyx_t_5scipy_8optimize_15cython_optimize_6_zeros_zeros_full_output, ptr %s, i32 0, i32 2
  %13 = load i32, ptr %error_num, align 8, !tbaa !84
  %call53 = call ptr @__Pyx_PyInt_From_int(i32 noundef %13)
  store ptr %call53, ptr %member, align 8, !tbaa !4
  %14 = load ptr, ptr %member, align 8, !tbaa !4
  %tobool54 = icmp ne ptr %14, null
  %lnot55 = xor i1 %tobool54, true
  %lnot57 = xor i1 %lnot55, true
  %lnot59 = xor i1 %lnot57, true
  %lnot.ext60 = zext i1 %lnot59 to i32
  %conv61 = sext i32 %lnot.ext60 to i64
  %expval62 = call i64 @llvm.expect.i64(i64 %conv61, i64 0)
  %tobool63 = icmp ne i64 %expval62, 0
  br i1 %tobool63, label %if.then64, label %if.end65

if.then64:                                        ; preds = %if.end52
  br label %bad

if.end65:                                         ; preds = %if.end52
  %15 = load ptr, ptr %res, align 8, !tbaa !4
  %16 = load ptr, ptr @__pyx_n_s_error_num, align 8, !tbaa !4
  %17 = load ptr, ptr %member, align 8, !tbaa !4
  %call66 = call i32 @PyDict_SetItem(ptr noundef %15, ptr noundef %16, ptr noundef %17)
  %cmp67 = icmp slt i32 %call66, 0
  %lnot69 = xor i1 %cmp67, true
  %lnot71 = xor i1 %lnot69, true
  %lnot.ext72 = zext i1 %lnot71 to i32
  %conv73 = sext i32 %lnot.ext72 to i64
  %expval74 = call i64 @llvm.expect.i64(i64 %conv73, i64 0)
  %tobool75 = icmp ne i64 %expval74, 0
  br i1 %tobool75, label %if.then76, label %if.end77

if.then76:                                        ; preds = %if.end65
  br label %bad

if.end77:                                         ; preds = %if.end65
  %18 = load ptr, ptr %member, align 8, !tbaa !4
  call void @Py_DECREF(ptr noundef %18)
  %root = getelementptr inbounds %struct.__pyx_t_5scipy_8optimize_15cython_optimize_6_zeros_zeros_full_output, ptr %s, i32 0, i32 3
  %19 = load double, ptr %root, align 8, !tbaa !85
  %call78 = call ptr @PyFloat_FromDouble(double noundef %19)
  store ptr %call78, ptr %member, align 8, !tbaa !4
  %20 = load ptr, ptr %member, align 8, !tbaa !4
  %tobool79 = icmp ne ptr %20, null
  %lnot80 = xor i1 %tobool79, true
  %lnot82 = xor i1 %lnot80, true
  %lnot84 = xor i1 %lnot82, true
  %lnot.ext85 = zext i1 %lnot84 to i32
  %conv86 = sext i32 %lnot.ext85 to i64
  %expval87 = call i64 @llvm.expect.i64(i64 %conv86, i64 0)
  %tobool88 = icmp ne i64 %expval87, 0
  br i1 %tobool88, label %if.then89, label %if.end90

if.then89:                                        ; preds = %if.end77
  br label %bad

if.end90:                                         ; preds = %if.end77
  %21 = load ptr, ptr %res, align 8, !tbaa !4
  %22 = load ptr, ptr @__pyx_n_s_root, align 8, !tbaa !4
  %23 = load ptr, ptr %member, align 8, !tbaa !4
  %call91 = call i32 @PyDict_SetItem(ptr noundef %21, ptr noundef %22, ptr noundef %23)
  %cmp92 = icmp slt i32 %call91, 0
  %lnot94 = xor i1 %cmp92, true
  %lnot96 = xor i1 %lnot94, true
  %lnot.ext97 = zext i1 %lnot96 to i32
  %conv98 = sext i32 %lnot.ext97 to i64
  %expval99 = call i64 @llvm.expect.i64(i64 %conv98, i64 0)
  %tobool100 = icmp ne i64 %expval99, 0
  br i1 %tobool100, label %if.then101, label %if.end102

if.then101:                                       ; preds = %if.end90
  br label %bad

if.end102:                                        ; preds = %if.end90
  %24 = load ptr, ptr %member, align 8, !tbaa !4
  call void @Py_DECREF(ptr noundef %24)
  %25 = load ptr, ptr %res, align 8, !tbaa !4
  store ptr %25, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

bad:                                              ; preds = %if.then101, %if.then89, %if.then76, %if.then64, %if.then51, %if.then39, %if.then26, %if.then15
  %26 = load ptr, ptr %member, align 8, !tbaa !4
  call void @Py_XDECREF(ptr noundef %26)
  %27 = load ptr, ptr %res, align 8, !tbaa !4
  call void @Py_DECREF(ptr noundef %27)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %bad, %if.end102, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %member) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #9
  %28 = load ptr, ptr %retval, align 8
  ret ptr %28
}

; Function Attrs: nounwind uwtable
define internal void @__pyx_f_5scipy_8optimize_15cython_optimize_6_zeros_brentq_full_output_example(ptr noalias sret(%struct.__pyx_t_5scipy_8optimize_15cython_optimize_6_zeros_zeros_full_output) align 8 %agg.result, ptr noundef %__pyx_v_args, float noundef %__pyx_v_xa, float noundef %__pyx_v_xb, float noundef %__pyx_v_xtol, float noundef %__pyx_v_rtol, i32 noundef %__pyx_v_mitr) #0 {
entry:
  %__pyx_v_args.addr = alloca ptr, align 8
  %__pyx_v_xa.addr = alloca float, align 4
  %__pyx_v_xb.addr = alloca float, align 4
  %__pyx_v_xtol.addr = alloca float, align 4
  %__pyx_v_rtol.addr = alloca float, align 4
  %__pyx_v_mitr.addr = alloca i32, align 4
  %__pyx_v_full_output = alloca %struct.__pyx_t_5scipy_8optimize_15cython_optimize_6_zeros_zeros_full_output, align 8
  %__pyx_v_myargs = alloca %struct.__pyx_t_5scipy_8optimize_15cython_optimize_6_zeros_extra_params, align 8
  %__pyx_t_1 = alloca [4 x double], align 16
  %__pyx_lineno = alloca i32, align 4
  %__pyx_filename = alloca ptr, align 8
  %__pyx_clineno = alloca i32, align 4
  store ptr %__pyx_v_args, ptr %__pyx_v_args.addr, align 8, !tbaa !4
  store float %__pyx_v_xa, ptr %__pyx_v_xa.addr, align 4, !tbaa !34
  store float %__pyx_v_xb, ptr %__pyx_v_xb.addr, align 4, !tbaa !34
  store float %__pyx_v_xtol, ptr %__pyx_v_xtol.addr, align 4, !tbaa !34
  store float %__pyx_v_rtol, ptr %__pyx_v_rtol.addr, align 4, !tbaa !34
  store i32 %__pyx_v_mitr, ptr %__pyx_v_mitr.addr, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pyx_v_full_output) #9
  call void @llvm.lifetime.start.p0(i64 32, ptr %__pyx_v_myargs) #9
  call void @llvm.lifetime.start.p0(i64 32, ptr %__pyx_t_1) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %__pyx_lineno) #9
  store i32 0, ptr %__pyx_lineno, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pyx_filename) #9
  store ptr null, ptr %__pyx_filename, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %__pyx_clineno) #9
  store i32 0, ptr %__pyx_clineno, align 4, !tbaa !10
  %0 = load ptr, ptr %__pyx_v_args.addr, align 8, !tbaa !4
  %arraydecay = getelementptr inbounds [4 x double], ptr %__pyx_t_1, i64 0, i64 0
  %call = call i32 @__Pyx_carray_from_py_double(ptr noundef %0, ptr noundef %arraydecay, i64 noundef 4)
  %cmp = icmp slt i32 %call, 0
  %lnot = xor i1 %cmp, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @__pyx_f, align 16, !tbaa !4
  store ptr %1, ptr %__pyx_filename, align 8, !tbaa !4
  %2 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  store i32 216, ptr %__pyx_lineno, align 4, !tbaa !10
  %3 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  store i32 2969, ptr %__pyx_clineno, align 4, !tbaa !10
  %4 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  br label %__pyx_L1_error

if.end:                                           ; preds = %entry
  %a = getelementptr inbounds %struct.__pyx_t_5scipy_8optimize_15cython_optimize_6_zeros_extra_params, ptr %__pyx_v_myargs, i32 0, i32 0
  %arrayidx = getelementptr inbounds [4 x double], ptr %a, i64 0, i64 0
  %arraydecay2 = getelementptr inbounds [4 x double], ptr %__pyx_t_1, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx, ptr align 16 %arraydecay2, i64 32, i1 false)
  %5 = load float, ptr %__pyx_v_xa.addr, align 4, !tbaa !34
  %conv3 = fpext float %5 to double
  %6 = load float, ptr %__pyx_v_xb.addr, align 4, !tbaa !34
  %conv4 = fpext float %6 to double
  %7 = load float, ptr %__pyx_v_xtol.addr, align 4, !tbaa !34
  %conv5 = fpext float %7 to double
  %8 = load float, ptr %__pyx_v_rtol.addr, align 4, !tbaa !34
  %conv6 = fpext float %8 to double
  %9 = load i32, ptr %__pyx_v_mitr.addr, align 4, !tbaa !10
  %call7 = call double @__pyx_f_5scipy_8optimize_15cython_optimize_6_zeros_brentq(ptr noundef @__pyx_f_5scipy_8optimize_15cython_optimize_6_zeros_f_example, double noundef %conv3, double noundef %conv4, ptr noundef %__pyx_v_myargs, double noundef %conv5, double noundef %conv6, i32 noundef %9, ptr noundef %__pyx_v_full_output)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.result, ptr align 8 %__pyx_v_full_output, i64 24, i1 false), !tbaa.struct !125
  br label %__pyx_L0

__pyx_L1_error:                                   ; preds = %if.then
  %10 = load i32, ptr %__pyx_clineno, align 4, !tbaa !10
  %11 = load i32, ptr %__pyx_lineno, align 4, !tbaa !10
  %12 = load ptr, ptr %__pyx_filename, align 8, !tbaa !4
  call void @__Pyx_WriteUnraisable(ptr noundef @.str.128, i32 noundef %10, i32 noundef %11, ptr noundef %12, i32 noundef 1, i32 noundef 0)
  call void @__Pyx_pretend_to_initialize(ptr noundef %agg.result)
  br label %__pyx_L0

__pyx_L0:                                         ; preds = %__pyx_L1_error, %if.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %__pyx_clineno) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pyx_filename) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %__pyx_lineno) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr %__pyx_t_1) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr %__pyx_v_myargs) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pyx_v_full_output) #9
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @__Pyx_PyInt_From_int(i32 noundef %value) #5 {
entry:
  %value.addr = alloca i32, align 4
  %neg_one = alloca i32, align 4
  %const_zero = alloca i32, align 4
  %is_unsigned = alloca i32, align 4
  %one = alloca i32, align 4
  %little = alloca i32, align 4
  %bytes = alloca ptr, align 8
  store i32 %value, ptr %value.addr, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %neg_one) #9
  store i32 -1, ptr %neg_one, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %const_zero) #9
  store i32 0, ptr %const_zero, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %is_unsigned) #9
  store i32 0, ptr %is_unsigned, align 4, !tbaa !10
  %0 = load i32, ptr %value.addr, align 4, !tbaa !10
  %conv = sext i32 %0 to i64
  %call = call ptr @PyLong_FromLong(i64 noundef %conv)
  call void @llvm.lifetime.end.p0(i64 4, ptr %is_unsigned) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %const_zero) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %neg_one) #9
  ret ptr %call
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @__Pyx_pretend_to_initialize(ptr noundef %ptr) #5 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %ptr.addr, align 8, !tbaa !4
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @__Pyx_CLineForTraceback(ptr noundef %tstate, i32 noundef %c_line) #0 {
entry:
  %retval = alloca i32, align 4
  %tstate.addr = alloca ptr, align 8
  %c_line.addr = alloca i32, align 4
  %use_cline = alloca ptr, align 8
  %ptype = alloca ptr, align 8
  %pvalue = alloca ptr, align 8
  %ptraceback = alloca ptr, align 8
  %cython_runtime_dict = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %use_cline_obj = alloca ptr, align 8
  store ptr %tstate, ptr %tstate.addr, align 8, !tbaa !4
  store i32 %c_line, ptr %c_line.addr, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %use_cline) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptype) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %pvalue) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptraceback) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %cython_runtime_dict) #9
  %0 = load ptr, ptr @__pyx_cython_runtime, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  %lnot = xor i1 %tobool, true
  %lnot1 = xor i1 %lnot, true
  %lnot2 = xor i1 %lnot1, true
  %lnot.ext = zext i1 %lnot2 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool3 = icmp ne i64 %expval, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %c_line.addr, align 4, !tbaa !10
  store i32 %1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @PyErr_Fetch(ptr noundef %ptype, ptr noundef %pvalue, ptr noundef %ptraceback)
  %2 = load ptr, ptr @__pyx_cython_runtime, align 8, !tbaa !4
  %call = call ptr @_PyObject_GetDictPtr(ptr noundef %2)
  store ptr %call, ptr %cython_runtime_dict, align 8, !tbaa !4
  %3 = load ptr, ptr %cython_runtime_dict, align 8, !tbaa !4
  %tobool4 = icmp ne ptr %3, null
  %lnot5 = xor i1 %tobool4, true
  %lnot7 = xor i1 %lnot5, true
  %lnot.ext8 = zext i1 %lnot7 to i32
  %conv9 = sext i32 %lnot.ext8 to i64
  %expval10 = call i64 @llvm.expect.i64(i64 %conv9, i64 1)
  %tobool11 = icmp ne i64 %expval10, 0
  br i1 %tobool11, label %if.then12, label %if.else25

if.then12:                                        ; preds = %if.end
  %4 = load ptr, ptr %cython_runtime_dict, align 8, !tbaa !4
  %5 = load ptr, ptr %4, align 8, !tbaa !4
  %ma_version_tag = getelementptr inbounds %struct.PyDictObject, ptr %5, i32 0, i32 2
  %6 = load i64, ptr %ma_version_tag, align 8, !tbaa !111
  %7 = load i64, ptr @__Pyx_CLineForTraceback.__pyx_dict_version, align 8, !tbaa !24
  %cmp = icmp eq i64 %6, %7
  %lnot14 = xor i1 %cmp, true
  %lnot16 = xor i1 %lnot14, true
  %lnot.ext17 = zext i1 %lnot16 to i32
  %conv18 = sext i32 %lnot.ext17 to i64
  %expval19 = call i64 @llvm.expect.i64(i64 %conv18, i64 1)
  %tobool20 = icmp ne i64 %expval19, 0
  br i1 %tobool20, label %if.then21, label %if.else

if.then21:                                        ; preds = %if.then12
  %8 = load ptr, ptr @__Pyx_CLineForTraceback.__pyx_dict_cached_value, align 8, !tbaa !4
  store ptr %8, ptr %use_cline, align 8, !tbaa !4
  br label %if.end24

if.else:                                          ; preds = %if.then12
  %9 = load ptr, ptr %cython_runtime_dict, align 8, !tbaa !4
  %10 = load ptr, ptr %9, align 8, !tbaa !4
  %11 = load ptr, ptr @__pyx_n_s_cline_in_traceback, align 8, !tbaa !4
  %12 = load ptr, ptr @__pyx_n_s_cline_in_traceback, align 8, !tbaa !4
  %hash = getelementptr inbounds %struct.PyASCIIObject, ptr %12, i32 0, i32 2
  %13 = load i64, ptr %hash, align 8, !tbaa !97
  %call22 = call ptr @_PyDict_GetItem_KnownHash(ptr noundef %10, ptr noundef %11, i64 noundef %13)
  store ptr %call22, ptr @__Pyx_CLineForTraceback.__pyx_dict_cached_value, align 8, !tbaa !4
  store ptr %call22, ptr %use_cline, align 8, !tbaa !4
  %14 = load ptr, ptr %cython_runtime_dict, align 8, !tbaa !4
  %15 = load ptr, ptr %14, align 8, !tbaa !4
  %ma_version_tag23 = getelementptr inbounds %struct.PyDictObject, ptr %15, i32 0, i32 2
  %16 = load i64, ptr %ma_version_tag23, align 8, !tbaa !111
  store i64 %16, ptr @__Pyx_CLineForTraceback.__pyx_dict_version, align 8, !tbaa !24
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then21
  br label %if.end33

if.else25:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %use_cline_obj) #9
  %17 = load ptr, ptr @__pyx_cython_runtime, align 8, !tbaa !4
  %18 = load ptr, ptr @__pyx_n_s_cline_in_traceback, align 8, !tbaa !4
  %call26 = call ptr @__Pyx_PyObject_GetAttrStr(ptr noundef %17, ptr noundef %18)
  store ptr %call26, ptr %use_cline_obj, align 8, !tbaa !4
  %19 = load ptr, ptr %use_cline_obj, align 8, !tbaa !4
  %tobool27 = icmp ne ptr %19, null
  br i1 %tobool27, label %if.then28, label %if.else31

if.then28:                                        ; preds = %if.else25
  %20 = load ptr, ptr %use_cline_obj, align 8, !tbaa !4
  %call29 = call i32 @PyObject_Not(ptr noundef %20)
  %tobool30 = icmp ne i32 %call29, 0
  %21 = zext i1 %tobool30 to i64
  %cond = select i1 %tobool30, ptr @_Py_FalseStruct, ptr @_Py_TrueStruct
  store ptr %cond, ptr %use_cline, align 8, !tbaa !4
  %22 = load ptr, ptr %use_cline_obj, align 8, !tbaa !4
  call void @Py_DECREF(ptr noundef %22)
  br label %if.end32

if.else31:                                        ; preds = %if.else25
  call void @PyErr_Clear()
  store ptr null, ptr %use_cline, align 8, !tbaa !4
  br label %if.end32

if.end32:                                         ; preds = %if.else31, %if.then28
  call void @llvm.lifetime.end.p0(i64 8, ptr %use_cline_obj) #9
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.end24
  %23 = load ptr, ptr %use_cline, align 8, !tbaa !4
  %tobool34 = icmp ne ptr %23, null
  br i1 %tobool34, label %if.else37, label %if.then35

if.then35:                                        ; preds = %if.end33
  store i32 0, ptr %c_line.addr, align 4, !tbaa !10
  %24 = load ptr, ptr @__pyx_cython_runtime, align 8, !tbaa !4
  %25 = load ptr, ptr @__pyx_n_s_cline_in_traceback, align 8, !tbaa !4
  %call36 = call i32 @PyObject_SetAttr(ptr noundef %24, ptr noundef %25, ptr noundef @_Py_FalseStruct)
  br label %if.end47

if.else37:                                        ; preds = %if.end33
  %26 = load ptr, ptr %use_cline, align 8, !tbaa !4
  %cmp38 = icmp eq ptr %26, @_Py_FalseStruct
  br i1 %cmp38, label %if.then45, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else37
  %27 = load ptr, ptr %use_cline, align 8, !tbaa !4
  %cmp40 = icmp ne ptr %27, @_Py_TrueStruct
  br i1 %cmp40, label %land.lhs.true, label %if.end46

land.lhs.true:                                    ; preds = %lor.lhs.false
  %28 = load ptr, ptr %use_cline, align 8, !tbaa !4
  %call42 = call i32 @PyObject_Not(ptr noundef %28)
  %cmp43 = icmp ne i32 %call42, 0
  br i1 %cmp43, label %if.then45, label %if.end46

if.then45:                                        ; preds = %land.lhs.true, %if.else37
  store i32 0, ptr %c_line.addr, align 4, !tbaa !10
  br label %if.end46

if.end46:                                         ; preds = %if.then45, %land.lhs.true, %lor.lhs.false
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %if.then35
  %29 = load ptr, ptr %ptype, align 8, !tbaa !4
  %30 = load ptr, ptr %pvalue, align 8, !tbaa !4
  %31 = load ptr, ptr %ptraceback, align 8, !tbaa !4
  call void @PyErr_Restore(ptr noundef %29, ptr noundef %30, ptr noundef %31)
  %32 = load i32, ptr %c_line.addr, align 4, !tbaa !10
  store i32 %32, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %cython_runtime_dict) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptraceback) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %pvalue) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptype) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %use_cline) #9
  %33 = load i32, ptr %retval, align 4
  ret i32 %33
}

; Function Attrs: nounwind uwtable
define internal ptr @__pyx_find_code_object(i32 noundef %code_line) #0 {
entry:
  %retval = alloca ptr, align 8
  %code_line.addr = alloca i32, align 4
  %code_object = alloca ptr, align 8
  %pos = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %code_line, ptr %code_line.addr, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %code_object) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %pos) #9
  %0 = load i32, ptr %code_line.addr, align 4, !tbaa !10
  %tobool = icmp ne i32 %0, 0
  %lnot = xor i1 %tobool, true
  %lnot1 = xor i1 %lnot, true
  %lnot2 = xor i1 %lnot1, true
  %lnot.ext = zext i1 %lnot2 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool3 = icmp ne i64 %expval, 0
  br i1 %tobool3, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr getelementptr inbounds (%struct.__Pyx_CodeObjectCache, ptr @__pyx_code_cache, i32 0, i32 2), align 8, !tbaa !126
  %tobool4 = icmp ne ptr %1, null
  %lnot5 = xor i1 %tobool4, true
  %lnot7 = xor i1 %lnot5, true
  %lnot9 = xor i1 %lnot7, true
  %lnot.ext10 = zext i1 %lnot9 to i32
  %conv11 = sext i32 %lnot.ext10 to i64
  %expval12 = call i64 @llvm.expect.i64(i64 %conv11, i64 0)
  %tobool13 = icmp ne i64 %expval12, 0
  br i1 %tobool13, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %2 = load ptr, ptr getelementptr inbounds (%struct.__Pyx_CodeObjectCache, ptr @__pyx_code_cache, i32 0, i32 2), align 8, !tbaa !126
  %3 = load i32, ptr @__pyx_code_cache, align 8, !tbaa !128
  %4 = load i32, ptr %code_line.addr, align 4, !tbaa !10
  %call = call i32 @__pyx_bisect_code_objects(ptr noundef %2, i32 noundef %3, i32 noundef %4)
  store i32 %call, ptr %pos, align 4, !tbaa !10
  %5 = load i32, ptr %pos, align 4, !tbaa !10
  %6 = load i32, ptr @__pyx_code_cache, align 8, !tbaa !128
  %cmp = icmp sge i32 %5, %6
  %lnot15 = xor i1 %cmp, true
  %lnot17 = xor i1 %lnot15, true
  %lnot.ext18 = zext i1 %lnot17 to i32
  %conv19 = sext i32 %lnot.ext18 to i64
  %expval20 = call i64 @llvm.expect.i64(i64 %conv19, i64 0)
  %tobool21 = icmp ne i64 %expval20, 0
  br i1 %tobool21, label %if.then33, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %if.end
  %7 = load ptr, ptr getelementptr inbounds (%struct.__Pyx_CodeObjectCache, ptr @__pyx_code_cache, i32 0, i32 2), align 8, !tbaa !126
  %8 = load i32, ptr %pos, align 4, !tbaa !10
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds %struct.__Pyx_CodeObjectCacheEntry, ptr %7, i64 %idxprom
  %code_line23 = getelementptr inbounds %struct.__Pyx_CodeObjectCacheEntry, ptr %arrayidx, i32 0, i32 1
  %9 = load i32, ptr %code_line23, align 8, !tbaa !129
  %10 = load i32, ptr %code_line.addr, align 4, !tbaa !10
  %cmp24 = icmp ne i32 %9, %10
  %lnot26 = xor i1 %cmp24, true
  %lnot28 = xor i1 %lnot26, true
  %lnot.ext29 = zext i1 %lnot28 to i32
  %conv30 = sext i32 %lnot.ext29 to i64
  %expval31 = call i64 @llvm.expect.i64(i64 %conv30, i64 0)
  %tobool32 = icmp ne i64 %expval31, 0
  br i1 %tobool32, label %if.then33, label %if.end34

if.then33:                                        ; preds = %lor.lhs.false22, %if.end
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end34:                                         ; preds = %lor.lhs.false22
  %11 = load ptr, ptr getelementptr inbounds (%struct.__Pyx_CodeObjectCache, ptr @__pyx_code_cache, i32 0, i32 2), align 8, !tbaa !126
  %12 = load i32, ptr %pos, align 4, !tbaa !10
  %idxprom35 = sext i32 %12 to i64
  %arrayidx36 = getelementptr inbounds %struct.__Pyx_CodeObjectCacheEntry, ptr %11, i64 %idxprom35
  %code_object37 = getelementptr inbounds %struct.__Pyx_CodeObjectCacheEntry, ptr %arrayidx36, i32 0, i32 0
  %13 = load ptr, ptr %code_object37, align 8, !tbaa !131
  store ptr %13, ptr %code_object, align 8, !tbaa !4
  %14 = load ptr, ptr %code_object, align 8, !tbaa !4
  call void @Py_INCREF(ptr noundef %14)
  %15 = load ptr, ptr %code_object, align 8, !tbaa !4
  store ptr %15, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.then33, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %pos) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %code_object) #9
  %16 = load ptr, ptr %retval, align 8
  ret ptr %16
}

; Function Attrs: nounwind uwtable
define internal ptr @__Pyx_CreateCodeObjectForTraceback(ptr noundef %funcname, i32 noundef %c_line, i32 noundef %py_line, ptr noundef %filename) #0 {
entry:
  %retval = alloca ptr, align 8
  %funcname.addr = alloca ptr, align 8
  %c_line.addr = alloca i32, align 4
  %py_line.addr = alloca i32, align 4
  %filename.addr = alloca ptr, align 8
  %py_code = alloca ptr, align 8
  %py_funcname = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %funcname, ptr %funcname.addr, align 8, !tbaa !4
  store i32 %c_line, ptr %c_line.addr, align 4, !tbaa !10
  store i32 %py_line, ptr %py_line.addr, align 4, !tbaa !10
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %py_code) #9
  store ptr null, ptr %py_code, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %py_funcname) #9
  store ptr null, ptr %py_funcname, align 8, !tbaa !4
  %0 = load i32, ptr %c_line.addr, align 4, !tbaa !10
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %funcname.addr, align 8, !tbaa !4
  %2 = load ptr, ptr @__pyx_cfilenm, align 8, !tbaa !4
  %3 = load i32, ptr %c_line.addr, align 4, !tbaa !10
  %call = call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef @.str.129, ptr noundef %1, ptr noundef %2, i32 noundef %3)
  store ptr %call, ptr %py_funcname, align 8, !tbaa !4
  %4 = load ptr, ptr %py_funcname, align 8, !tbaa !4
  %tobool1 = icmp ne ptr %4, null
  br i1 %tobool1, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  br label %bad

if.end:                                           ; preds = %if.then
  %5 = load ptr, ptr %py_funcname, align 8, !tbaa !4
  %call3 = call ptr @PyUnicode_AsUTF8(ptr noundef %5)
  store ptr %call3, ptr %funcname.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %funcname.addr, align 8, !tbaa !4
  %tobool4 = icmp ne ptr %6, null
  br i1 %tobool4, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  br label %bad

if.end6:                                          ; preds = %if.end
  br label %if.end7

if.else:                                          ; preds = %entry
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.end6
  %7 = load ptr, ptr %filename.addr, align 8, !tbaa !4
  %8 = load ptr, ptr %funcname.addr, align 8, !tbaa !4
  %9 = load i32, ptr %py_line.addr, align 4, !tbaa !10
  %call8 = call ptr @PyCode_NewEmpty(ptr noundef %7, ptr noundef %8, i32 noundef %9)
  store ptr %call8, ptr %py_code, align 8, !tbaa !4
  %10 = load ptr, ptr %py_funcname, align 8, !tbaa !4
  call void @Py_XDECREF(ptr noundef %10)
  %11 = load ptr, ptr %py_code, align 8, !tbaa !4
  store ptr %11, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

bad:                                              ; preds = %if.then5, %if.then2
  %12 = load ptr, ptr %py_funcname, align 8, !tbaa !4
  call void @Py_XDECREF(ptr noundef %12)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %bad, %if.end7
  call void @llvm.lifetime.end.p0(i64 8, ptr %py_funcname) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %py_code) #9
  %13 = load ptr, ptr %retval, align 8
  ret ptr %13
}

; Function Attrs: nounwind uwtable
define internal void @__pyx_insert_code_object(i32 noundef %code_line, ptr noundef %code_object) #0 {
entry:
  %code_line.addr = alloca i32, align 4
  %code_object.addr = alloca ptr, align 8
  %pos = alloca i32, align 4
  %i = alloca i32, align 4
  %entries = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca ptr, align 8
  %new_max = alloca i32, align 4
  store i32 %code_line, ptr %code_line.addr, align 4, !tbaa !10
  store ptr %code_object, ptr %code_object.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %pos) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %entries) #9
  %0 = load ptr, ptr getelementptr inbounds (%struct.__Pyx_CodeObjectCache, ptr @__pyx_code_cache, i32 0, i32 2), align 8, !tbaa !126
  store ptr %0, ptr %entries, align 8, !tbaa !4
  %1 = load i32, ptr %code_line.addr, align 4, !tbaa !10
  %tobool = icmp ne i32 %1, 0
  %lnot = xor i1 %tobool, true
  %lnot1 = xor i1 %lnot, true
  %lnot2 = xor i1 %lnot1, true
  %lnot.ext = zext i1 %lnot2 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool3 = icmp ne i64 %expval, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup80

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %entries, align 8, !tbaa !4
  %tobool4 = icmp ne ptr %2, null
  %lnot5 = xor i1 %tobool4, true
  %lnot7 = xor i1 %lnot5, true
  %lnot9 = xor i1 %lnot7, true
  %lnot.ext10 = zext i1 %lnot9 to i32
  %conv11 = sext i32 %lnot.ext10 to i64
  %expval12 = call i64 @llvm.expect.i64(i64 %conv11, i64 0)
  %tobool13 = icmp ne i64 %expval12, 0
  br i1 %tobool13, label %if.then14, label %if.end28

if.then14:                                        ; preds = %if.end
  %call = call ptr @PyMem_Malloc(i64 noundef 1024)
  store ptr %call, ptr %entries, align 8, !tbaa !4
  %3 = load ptr, ptr %entries, align 8, !tbaa !4
  %tobool15 = icmp ne ptr %3, null
  %lnot16 = xor i1 %tobool15, true
  %lnot18 = xor i1 %lnot16, true
  %lnot.ext19 = zext i1 %lnot18 to i32
  %conv20 = sext i32 %lnot.ext19 to i64
  %expval21 = call i64 @llvm.expect.i64(i64 %conv20, i64 1)
  %tobool22 = icmp ne i64 %expval21, 0
  br i1 %tobool22, label %if.then23, label %if.end27

if.then23:                                        ; preds = %if.then14
  %4 = load ptr, ptr %entries, align 8, !tbaa !4
  store ptr %4, ptr getelementptr inbounds (%struct.__Pyx_CodeObjectCache, ptr @__pyx_code_cache, i32 0, i32 2), align 8, !tbaa !126
  store i32 64, ptr getelementptr inbounds (%struct.__Pyx_CodeObjectCache, ptr @__pyx_code_cache, i32 0, i32 1), align 4, !tbaa !132
  store i32 1, ptr @__pyx_code_cache, align 8, !tbaa !128
  %5 = load i32, ptr %code_line.addr, align 4, !tbaa !10
  %6 = load ptr, ptr %entries, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds %struct.__Pyx_CodeObjectCacheEntry, ptr %6, i64 0
  %code_line24 = getelementptr inbounds %struct.__Pyx_CodeObjectCacheEntry, ptr %arrayidx, i32 0, i32 1
  store i32 %5, ptr %code_line24, align 8, !tbaa !129
  %7 = load ptr, ptr %code_object.addr, align 8, !tbaa !4
  %8 = load ptr, ptr %entries, align 8, !tbaa !4
  %arrayidx25 = getelementptr inbounds %struct.__Pyx_CodeObjectCacheEntry, ptr %8, i64 0
  %code_object26 = getelementptr inbounds %struct.__Pyx_CodeObjectCacheEntry, ptr %arrayidx25, i32 0, i32 0
  store ptr %7, ptr %code_object26, align 8, !tbaa !131
  %9 = load ptr, ptr %code_object.addr, align 8, !tbaa !4
  call void @Py_INCREF(ptr noundef %9)
  br label %if.end27

if.end27:                                         ; preds = %if.then23, %if.then14
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup80

if.end28:                                         ; preds = %if.end
  %10 = load ptr, ptr getelementptr inbounds (%struct.__Pyx_CodeObjectCache, ptr @__pyx_code_cache, i32 0, i32 2), align 8, !tbaa !126
  %11 = load i32, ptr @__pyx_code_cache, align 8, !tbaa !128
  %12 = load i32, ptr %code_line.addr, align 4, !tbaa !10
  %call29 = call i32 @__pyx_bisect_code_objects(ptr noundef %10, i32 noundef %11, i32 noundef %12)
  store i32 %call29, ptr %pos, align 4, !tbaa !10
  %13 = load i32, ptr %pos, align 4, !tbaa !10
  %14 = load i32, ptr @__pyx_code_cache, align 8, !tbaa !128
  %cmp = icmp slt i32 %13, %14
  br i1 %cmp, label %land.lhs.true, label %if.end49

land.lhs.true:                                    ; preds = %if.end28
  %15 = load ptr, ptr getelementptr inbounds (%struct.__Pyx_CodeObjectCache, ptr @__pyx_code_cache, i32 0, i32 2), align 8, !tbaa !126
  %16 = load i32, ptr %pos, align 4, !tbaa !10
  %idxprom = sext i32 %16 to i64
  %arrayidx31 = getelementptr inbounds %struct.__Pyx_CodeObjectCacheEntry, ptr %15, i64 %idxprom
  %code_line32 = getelementptr inbounds %struct.__Pyx_CodeObjectCacheEntry, ptr %arrayidx31, i32 0, i32 1
  %17 = load i32, ptr %code_line32, align 8, !tbaa !129
  %18 = load i32, ptr %code_line.addr, align 4, !tbaa !10
  %cmp33 = icmp eq i32 %17, %18
  %lnot35 = xor i1 %cmp33, true
  %lnot37 = xor i1 %lnot35, true
  %lnot.ext38 = zext i1 %lnot37 to i32
  %conv39 = sext i32 %lnot.ext38 to i64
  %expval40 = call i64 @llvm.expect.i64(i64 %conv39, i64 0)
  %tobool41 = icmp ne i64 %expval40, 0
  br i1 %tobool41, label %if.then42, label %if.end49

if.then42:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #9
  %19 = load ptr, ptr %entries, align 8, !tbaa !4
  %20 = load i32, ptr %pos, align 4, !tbaa !10
  %idxprom43 = sext i32 %20 to i64
  %arrayidx44 = getelementptr inbounds %struct.__Pyx_CodeObjectCacheEntry, ptr %19, i64 %idxprom43
  %code_object45 = getelementptr inbounds %struct.__Pyx_CodeObjectCacheEntry, ptr %arrayidx44, i32 0, i32 0
  %21 = load ptr, ptr %code_object45, align 8, !tbaa !131
  store ptr %21, ptr %tmp, align 8, !tbaa !4
  %22 = load ptr, ptr %code_object.addr, align 8, !tbaa !4
  %23 = load ptr, ptr %entries, align 8, !tbaa !4
  %24 = load i32, ptr %pos, align 4, !tbaa !10
  %idxprom46 = sext i32 %24 to i64
  %arrayidx47 = getelementptr inbounds %struct.__Pyx_CodeObjectCacheEntry, ptr %23, i64 %idxprom46
  %code_object48 = getelementptr inbounds %struct.__Pyx_CodeObjectCacheEntry, ptr %arrayidx47, i32 0, i32 0
  store ptr %22, ptr %code_object48, align 8, !tbaa !131
  %25 = load ptr, ptr %tmp, align 8, !tbaa !4
  call void @Py_DECREF(ptr noundef %25)
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #9
  br label %cleanup80

if.end49:                                         ; preds = %land.lhs.true, %if.end28
  %26 = load i32, ptr @__pyx_code_cache, align 8, !tbaa !128
  %27 = load i32, ptr getelementptr inbounds (%struct.__Pyx_CodeObjectCache, ptr @__pyx_code_cache, i32 0, i32 1), align 4, !tbaa !132
  %cmp50 = icmp eq i32 %26, %27
  br i1 %cmp50, label %if.then52, label %if.end67

if.then52:                                        ; preds = %if.end49
  call void @llvm.lifetime.start.p0(i64 4, ptr %new_max) #9
  %28 = load i32, ptr getelementptr inbounds (%struct.__Pyx_CodeObjectCache, ptr @__pyx_code_cache, i32 0, i32 1), align 4, !tbaa !132
  %add = add nsw i32 %28, 64
  store i32 %add, ptr %new_max, align 4, !tbaa !10
  %29 = load ptr, ptr getelementptr inbounds (%struct.__Pyx_CodeObjectCache, ptr @__pyx_code_cache, i32 0, i32 2), align 8, !tbaa !126
  %30 = load i32, ptr %new_max, align 4, !tbaa !10
  %conv53 = sext i32 %30 to i64
  %mul = mul i64 %conv53, 16
  %call54 = call ptr @PyMem_Realloc(ptr noundef %29, i64 noundef %mul)
  store ptr %call54, ptr %entries, align 8, !tbaa !4
  %31 = load ptr, ptr %entries, align 8, !tbaa !4
  %tobool55 = icmp ne ptr %31, null
  %lnot56 = xor i1 %tobool55, true
  %lnot58 = xor i1 %lnot56, true
  %lnot60 = xor i1 %lnot58, true
  %lnot.ext61 = zext i1 %lnot60 to i32
  %conv62 = sext i32 %lnot.ext61 to i64
  %expval63 = call i64 @llvm.expect.i64(i64 %conv62, i64 0)
  %tobool64 = icmp ne i64 %expval63, 0
  br i1 %tobool64, label %if.then65, label %if.end66

if.then65:                                        ; preds = %if.then52
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end66:                                         ; preds = %if.then52
  %32 = load ptr, ptr %entries, align 8, !tbaa !4
  store ptr %32, ptr getelementptr inbounds (%struct.__Pyx_CodeObjectCache, ptr @__pyx_code_cache, i32 0, i32 2), align 8, !tbaa !126
  %33 = load i32, ptr %new_max, align 4, !tbaa !10
  store i32 %33, ptr getelementptr inbounds (%struct.__Pyx_CodeObjectCache, ptr @__pyx_code_cache, i32 0, i32 1), align 4, !tbaa !132
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end66, %if.then65
  call void @llvm.lifetime.end.p0(i64 4, ptr %new_max) #9
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup80 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end67

if.end67:                                         ; preds = %cleanup.cont, %if.end49
  %34 = load i32, ptr @__pyx_code_cache, align 8, !tbaa !128
  store i32 %34, ptr %i, align 4, !tbaa !10
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end67
  %35 = load i32, ptr %i, align 4, !tbaa !10
  %36 = load i32, ptr %pos, align 4, !tbaa !10
  %cmp68 = icmp sgt i32 %35, %36
  br i1 %cmp68, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %37 = load ptr, ptr %entries, align 8, !tbaa !4
  %38 = load i32, ptr %i, align 4, !tbaa !10
  %idxprom70 = sext i32 %38 to i64
  %arrayidx71 = getelementptr inbounds %struct.__Pyx_CodeObjectCacheEntry, ptr %37, i64 %idxprom70
  %39 = load ptr, ptr %entries, align 8, !tbaa !4
  %40 = load i32, ptr %i, align 4, !tbaa !10
  %sub = sub nsw i32 %40, 1
  %idxprom72 = sext i32 %sub to i64
  %arrayidx73 = getelementptr inbounds %struct.__Pyx_CodeObjectCacheEntry, ptr %39, i64 %idxprom72
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx71, ptr align 8 %arrayidx73, i64 16, i1 false), !tbaa.struct !133
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %41 = load i32, ptr %i, align 4, !tbaa !10
  %dec = add nsw i32 %41, -1
  store i32 %dec, ptr %i, align 4, !tbaa !10
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %42 = load i32, ptr %code_line.addr, align 4, !tbaa !10
  %43 = load ptr, ptr %entries, align 8, !tbaa !4
  %44 = load i32, ptr %pos, align 4, !tbaa !10
  %idxprom74 = sext i32 %44 to i64
  %arrayidx75 = getelementptr inbounds %struct.__Pyx_CodeObjectCacheEntry, ptr %43, i64 %idxprom74
  %code_line76 = getelementptr inbounds %struct.__Pyx_CodeObjectCacheEntry, ptr %arrayidx75, i32 0, i32 1
  store i32 %42, ptr %code_line76, align 8, !tbaa !129
  %45 = load ptr, ptr %code_object.addr, align 8, !tbaa !4
  %46 = load ptr, ptr %entries, align 8, !tbaa !4
  %47 = load i32, ptr %pos, align 4, !tbaa !10
  %idxprom77 = sext i32 %47 to i64
  %arrayidx78 = getelementptr inbounds %struct.__Pyx_CodeObjectCacheEntry, ptr %46, i64 %idxprom77
  %code_object79 = getelementptr inbounds %struct.__Pyx_CodeObjectCacheEntry, ptr %arrayidx78, i32 0, i32 0
  store ptr %45, ptr %code_object79, align 8, !tbaa !131
  %48 = load i32, ptr @__pyx_code_cache, align 8, !tbaa !128
  %inc = add nsw i32 %48, 1
  store i32 %inc, ptr @__pyx_code_cache, align 8, !tbaa !128
  %49 = load ptr, ptr %code_object.addr, align 8, !tbaa !4
  call void @Py_INCREF(ptr noundef %49)
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup80

cleanup80:                                        ; preds = %for.end, %cleanup, %if.then42, %if.end27, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %entries) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %pos) #9
  %cleanup.dest83 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest83, label %unreachable [
    i32 0, label %cleanup.cont84
    i32 1, label %cleanup.cont84
  ]

cleanup.cont84:                                   ; preds = %cleanup80, %cleanup80
  ret void

unreachable:                                      ; preds = %cleanup80
  unreachable
}

declare ptr @PyFrame_New(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #4

declare i32 @PyTraceBack_Here(ptr noundef) #4

declare ptr @_PyObject_GetDictPtr(ptr noundef) #4

declare i32 @PyObject_Not(ptr noundef) #4

; Function Attrs: nounwind uwtable
define internal i32 @__pyx_bisect_code_objects(ptr noundef %entries, i32 noundef %count, i32 noundef %code_line) #0 {
entry:
  %retval = alloca i32, align 4
  %entries.addr = alloca ptr, align 8
  %count.addr = alloca i32, align 4
  %code_line.addr = alloca i32, align 4
  %start = alloca i32, align 4
  %mid = alloca i32, align 4
  %end = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %entries, ptr %entries.addr, align 8, !tbaa !4
  store i32 %count, ptr %count.addr, align 4, !tbaa !10
  store i32 %code_line, ptr %code_line.addr, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %start) #9
  store i32 0, ptr %start, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %mid) #9
  store i32 0, ptr %mid, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %end) #9
  %0 = load i32, ptr %count.addr, align 4, !tbaa !10
  %sub = sub nsw i32 %0, 1
  store i32 %sub, ptr %end, align 4, !tbaa !10
  %1 = load i32, ptr %end, align 4, !tbaa !10
  %cmp = icmp sge i32 %1, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr %code_line.addr, align 4, !tbaa !10
  %3 = load ptr, ptr %entries.addr, align 8, !tbaa !4
  %4 = load i32, ptr %end, align 4, !tbaa !10
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds %struct.__Pyx_CodeObjectCacheEntry, ptr %3, i64 %idxprom
  %code_line1 = getelementptr inbounds %struct.__Pyx_CodeObjectCacheEntry, ptr %arrayidx, i32 0, i32 1
  %5 = load i32, ptr %code_line1, align 8, !tbaa !129
  %cmp2 = icmp sgt i32 %2, %5
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %6 = load i32, ptr %count.addr, align 4, !tbaa !10
  store i32 %6, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end18, %if.end
  %7 = load i32, ptr %start, align 4, !tbaa !10
  %8 = load i32, ptr %end, align 4, !tbaa !10
  %cmp3 = icmp slt i32 %7, %8
  br i1 %cmp3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load i32, ptr %start, align 4, !tbaa !10
  %10 = load i32, ptr %end, align 4, !tbaa !10
  %11 = load i32, ptr %start, align 4, !tbaa !10
  %sub4 = sub nsw i32 %10, %11
  %div = sdiv i32 %sub4, 2
  %add = add nsw i32 %9, %div
  store i32 %add, ptr %mid, align 4, !tbaa !10
  %12 = load i32, ptr %code_line.addr, align 4, !tbaa !10
  %13 = load ptr, ptr %entries.addr, align 8, !tbaa !4
  %14 = load i32, ptr %mid, align 4, !tbaa !10
  %idxprom5 = sext i32 %14 to i64
  %arrayidx6 = getelementptr inbounds %struct.__Pyx_CodeObjectCacheEntry, ptr %13, i64 %idxprom5
  %code_line7 = getelementptr inbounds %struct.__Pyx_CodeObjectCacheEntry, ptr %arrayidx6, i32 0, i32 1
  %15 = load i32, ptr %code_line7, align 8, !tbaa !129
  %cmp8 = icmp slt i32 %12, %15
  br i1 %cmp8, label %if.then9, label %if.else

if.then9:                                         ; preds = %while.body
  %16 = load i32, ptr %mid, align 4, !tbaa !10
  store i32 %16, ptr %end, align 4, !tbaa !10
  br label %if.end18

if.else:                                          ; preds = %while.body
  %17 = load i32, ptr %code_line.addr, align 4, !tbaa !10
  %18 = load ptr, ptr %entries.addr, align 8, !tbaa !4
  %19 = load i32, ptr %mid, align 4, !tbaa !10
  %idxprom10 = sext i32 %19 to i64
  %arrayidx11 = getelementptr inbounds %struct.__Pyx_CodeObjectCacheEntry, ptr %18, i64 %idxprom10
  %code_line12 = getelementptr inbounds %struct.__Pyx_CodeObjectCacheEntry, ptr %arrayidx11, i32 0, i32 1
  %20 = load i32, ptr %code_line12, align 8, !tbaa !129
  %cmp13 = icmp sgt i32 %17, %20
  br i1 %cmp13, label %if.then14, label %if.else16

if.then14:                                        ; preds = %if.else
  %21 = load i32, ptr %mid, align 4, !tbaa !10
  %add15 = add nsw i32 %21, 1
  store i32 %add15, ptr %start, align 4, !tbaa !10
  br label %if.end17

if.else16:                                        ; preds = %if.else
  %22 = load i32, ptr %mid, align 4, !tbaa !10
  store i32 %22, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end17:                                         ; preds = %if.then14
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then9
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %23 = load i32, ptr %code_line.addr, align 4, !tbaa !10
  %24 = load ptr, ptr %entries.addr, align 8, !tbaa !4
  %25 = load i32, ptr %mid, align 4, !tbaa !10
  %idxprom19 = sext i32 %25 to i64
  %arrayidx20 = getelementptr inbounds %struct.__Pyx_CodeObjectCacheEntry, ptr %24, i64 %idxprom19
  %code_line21 = getelementptr inbounds %struct.__Pyx_CodeObjectCacheEntry, ptr %arrayidx20, i32 0, i32 1
  %26 = load i32, ptr %code_line21, align 8, !tbaa !129
  %cmp22 = icmp sle i32 %23, %26
  br i1 %cmp22, label %if.then23, label %if.else24

if.then23:                                        ; preds = %while.end
  %27 = load i32, ptr %mid, align 4, !tbaa !10
  store i32 %27, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else24:                                        ; preds = %while.end
  %28 = load i32, ptr %mid, align 4, !tbaa !10
  %add25 = add nsw i32 %28, 1
  store i32 %add25, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else24, %if.then23, %if.else16, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %end) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %mid) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %start) #9
  %29 = load i32, ptr %retval, align 4
  ret i32 %29
}

declare ptr @PyUnicode_AsUTF8(ptr noundef) #4

declare ptr @PyMem_Malloc(i64 noundef) #4

declare ptr @PyMem_Realloc(ptr noundef, i64 noundef) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nounwind }

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
!9 = !{!"double", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !6, i64 0}
!12 = !{!13, !11, i64 8}
!13 = !{!"", !11, i64 0, !11, i64 4, !11, i64 8}
!14 = !{!13, !11, i64 0}
!15 = !{!13, !11, i64 4}
!16 = !{!17, !5, i64 16}
!17 = !{!"_ts", !5, i64 0, !5, i64 8, !5, i64 16, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !5, i64 88, !5, i64 96, !5, i64 104, !5, i64 112, !5, i64 120, !5, i64 128, !11, i64 136, !5, i64 144, !18, i64 152, !18, i64 160, !11, i64 168, !5, i64 176, !5, i64 184, !5, i64 192, !11, i64 200, !5, i64 208, !5, i64 216, !5, i64 224, !18, i64 232, !18, i64 240, !19, i64 248, !5, i64 296, !5, i64 304, !5, i64 312, !22, i64 320, !23, i64 336}
!18 = !{!"long", !6, i64 0}
!19 = !{!"", !5, i64 0, !20, i64 8}
!20 = !{!"_line_offsets", !11, i64 0, !11, i64 4, !11, i64 8, !21, i64 16}
!21 = !{!"_opaque", !11, i64 0, !5, i64 8, !5, i64 16}
!22 = !{!"_err_stackitem", !5, i64 0, !5, i64 8}
!23 = !{!"_PyCFrame", !6, i64 0, !5, i64 8, !5, i64 16}
!24 = !{!18, !18, i64 0}
!25 = !{!26, !18, i64 0}
!26 = !{!"_object", !18, i64 0, !5, i64 8}
!27 = !{!6, !6, i64 0}
!28 = !{!29, !18, i64 288}
!29 = !{!"_typeobject", !30, i64 0, !5, i64 24, !18, i64 32, !18, i64 40, !5, i64 48, !18, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !5, i64 88, !5, i64 96, !5, i64 104, !5, i64 112, !5, i64 120, !5, i64 128, !5, i64 136, !5, i64 144, !5, i64 152, !5, i64 160, !18, i64 168, !5, i64 176, !5, i64 184, !5, i64 192, !5, i64 200, !18, i64 208, !5, i64 216, !5, i64 224, !5, i64 232, !5, i64 240, !5, i64 248, !5, i64 256, !5, i64 264, !5, i64 272, !5, i64 280, !18, i64 288, !5, i64 296, !5, i64 304, !5, i64 312, !5, i64 320, !5, i64 328, !5, i64 336, !5, i64 344, !5, i64 352, !5, i64 360, !5, i64 368, !5, i64 376, !11, i64 384, !5, i64 392, !5, i64 400}
!30 = !{!"", !26, i64 0, !18, i64 16}
!31 = !{!29, !5, i64 144}
!32 = !{!33, !5, i64 16}
!33 = !{!"__pyx_obj___pyx_scope_struct____Pyx_CFunc_double____tuple____float____float____float____float____int___to_py", !26, i64 0, !5, i64 16}
!34 = !{!35, !35, i64 0}
!35 = !{!"float", !6, i64 0}
!36 = !{!37, !11, i64 40}
!37 = !{!"_frame", !26, i64 0, !5, i64 16, !5, i64 24, !5, i64 32, !11, i64 40, !6, i64 44, !6, i64 45, !6, i64 46, !6, i64 48}
!38 = !{!29, !5, i64 24}
!39 = !{!29, !18, i64 32}
!40 = !{!29, !18, i64 168}
!41 = !{!26, !5, i64 8}
!42 = !{!43, !5, i64 72}
!43 = !{!"", !44, i64 0, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !5, i64 88, !5, i64 96, !5, i64 104, !5, i64 112, !5, i64 120, !11, i64 128, !18, i64 136, !11, i64 144, !5, i64 152, !5, i64 160, !5, i64 168, !5, i64 176}
!44 = !{!"", !26, i64 0, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48}
!45 = !{!43, !11, i64 144}
!46 = !{!43, !5, i64 104}
!47 = !{!43, !5, i64 32}
!48 = !{!43, !5, i64 56}
!49 = !{!43, !5, i64 64}
!50 = !{!43, !5, i64 80}
!51 = !{!43, !5, i64 88}
!52 = !{!43, !5, i64 96}
!53 = !{!43, !5, i64 112}
!54 = !{!43, !5, i64 152}
!55 = !{!43, !5, i64 160}
!56 = !{!43, !5, i64 120}
!57 = !{!43, !11, i64 128}
!58 = !{!43, !5, i64 176}
!59 = !{!43, !5, i64 40}
!60 = !{!44, !5, i64 16}
!61 = !{!62, !5, i64 8}
!62 = !{!"PyMethodDef", !5, i64 0, !5, i64 8, !11, i64 16, !5, i64 24}
!63 = !{!62, !11, i64 16}
!64 = !{!62, !5, i64 0}
!65 = !{!44, !5, i64 24}
!66 = !{!30, !18, i64 16}
!67 = !{!43, !5, i64 16}
!68 = !{!62, !5, i64 24}
!69 = !{!43, !5, i64 168}
!70 = !{!71, !5, i64 0}
!71 = !{!"", !5, i64 0, !5, i64 8, !18, i64 16, !5, i64 24, !6, i64 32, !6, i64 33, !6, i64 34}
!72 = !{!71, !6, i64 32}
!73 = !{!71, !6, i64 33}
!74 = !{!71, !6, i64 34}
!75 = !{!71, !5, i64 8}
!76 = !{!71, !5, i64 24}
!77 = !{!71, !18, i64 16}
!78 = !{!79, !5, i64 8}
!79 = !{!"__pyx_t_5scipy_8optimize_15cython_optimize_6_zeros_zeros_parameters", !5, i64 0, !5, i64 8}
!80 = !{!79, !5, i64 0}
!81 = !{!82, !11, i64 0}
!82 = !{!"__pyx_t_5scipy_8optimize_15cython_optimize_6_zeros_zeros_full_output", !11, i64 0, !11, i64 4, !11, i64 8, !9, i64 16}
!83 = !{!82, !11, i64 4}
!84 = !{!82, !11, i64 8}
!85 = !{!82, !9, i64 16}
!86 = !{!87, !5, i64 16}
!87 = !{!"__pyx_obj_5scipy_8optimize_15cython_optimize_6_zeros___pyx_scope_struct__loop_example", !26, i64 0, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56}
!88 = !{!87, !5, i64 24}
!89 = !{!87, !5, i64 32}
!90 = !{!87, !5, i64 40}
!91 = !{!87, !5, i64 48}
!92 = !{!87, !5, i64 56}
!93 = !{!29, !5, i64 320}
!94 = !{!29, !5, i64 304}
!95 = !{!43, !5, i64 24}
!96 = !{!43, !18, i64 136}
!97 = !{!98, !18, i64 24}
!98 = !{!"", !26, i64 0, !18, i64 16, !18, i64 24, !99, i64 32, !5, i64 40}
!99 = !{!"", !11, i64 0, !11, i64 0, !11, i64 0, !11, i64 0, !11, i64 0}
!100 = !{!101, !9, i64 16}
!101 = !{!"", !26, i64 0, !9, i64 16}
!102 = !{!98, !18, i64 16}
!103 = !{!29, !5, i64 96}
!104 = !{!105, !5, i64 128}
!105 = !{!"", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !5, i64 88, !5, i64 96, !5, i64 104, !5, i64 112, !5, i64 120, !5, i64 128, !5, i64 136, !5, i64 144, !5, i64 152, !5, i64 160, !5, i64 168, !5, i64 176, !5, i64 184, !5, i64 192, !5, i64 200, !5, i64 208, !5, i64 216, !5, i64 224, !5, i64 232, !5, i64 240, !5, i64 248, !5, i64 256, !5, i64 264, !5, i64 272, !5, i64 280}
!106 = !{!29, !5, i64 344}
!107 = !{!29, !5, i64 256}
!108 = !{!29, !5, i64 224}
!109 = !{!110, !5, i64 24}
!110 = !{!"", !30, i64 0, !5, i64 24, !18, i64 32}
!111 = !{!112, !18, i64 24}
!112 = !{!"", !26, i64 0, !18, i64 16, !18, i64 24, !5, i64 32, !5, i64 40}
!113 = !{!114, !5, i64 24}
!114 = !{!"", !26, i64 0, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40}
!115 = !{!114, !5, i64 16}
!116 = !{!29, !5, i64 112}
!117 = !{!118, !5, i64 8}
!118 = !{!"", !5, i64 0, !5, i64 8, !5, i64 16}
!119 = !{!110, !18, i64 32}
!120 = !{!29, !5, i64 128}
!121 = !{!29, !5, i64 104}
!122 = !{!123, !5, i64 24}
!123 = !{!"", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72}
!124 = !{!123, !5, i64 0}
!125 = !{i64 0, i64 4, !10, i64 4, i64 4, !10, i64 8, i64 4, !10, i64 16, i64 8, !8}
!126 = !{!127, !5, i64 8}
!127 = !{!"__Pyx_CodeObjectCache", !11, i64 0, !11, i64 4, !5, i64 8}
!128 = !{!127, !11, i64 0}
!129 = !{!130, !11, i64 8}
!130 = !{!"", !5, i64 0, !11, i64 8}
!131 = !{!130, !5, i64 0}
!132 = !{!127, !11, i64 4}
!133 = !{i64 0, i64 8, !4, i64 8, i64 4, !10}

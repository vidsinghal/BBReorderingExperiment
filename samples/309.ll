; ModuleID = 'samples/309.bc'
source_filename = "examples/pmem_and_default_kind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rlimit = type { i64, i64 }

@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [32 x i8] c"Usage: %s [pmem_kind_dir_path]\0A\00", align 1, !dbg !0
@path = internal global [4096 x i8] c"/tmp/\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16, !dbg !7
@.str.1 = private unnamed_addr constant [33 x i8] c"Incorrect pmem_kind_dir_path %s\0A\00", align 1, !dbg !44
@__const.main.heap_limit = private unnamed_addr constant %struct.rlimit { i64 1073741824, i64 1073741824 }, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"Unable to set heap limit.\0A\00", align 1, !dbg !49
@stdout = external global ptr, align 8
@.str.3 = private unnamed_addr constant [146 x i8] c"This example shows how to allocate memory using standard memory (MEMKIND_DEFAULT) and file-backed kind of memory (PMEM).\0APMEM kind directory: %s\0A\00", align 1, !dbg !54
@.str.4 = private unnamed_addr constant [45 x i8] c"PMEM kind %s is on DAX-enabled file system.\0A\00", align 1, !dbg !59
@.str.5 = private unnamed_addr constant [49 x i8] c"PMEM kind %s is not on DAX-enabled file system.\0A\00", align 1, !dbg !64
@MEMKIND_DEFAULT = external global ptr, align 8
@.str.6 = private unnamed_addr constant [47 x i8] c"Unable allocate 512 bytes in standard memory.\0A\00", align 1, !dbg !69
@.str.7 = private unnamed_addr constant [107 x i8] c"Failure, this allocation should not be possible (expected result was NULL), because of setlimit function.\0A\00", align 1, !dbg !74
@.str.8 = private unnamed_addr constant [90 x i8] c"Failure, this allocation should set errno to ENOMEM value, because of setlimit function.\0A\00", align 1, !dbg !79
@.str.9 = private unnamed_addr constant [60 x i8] c"Unable allocate HEAP_LIMIT_SIMULATE in file-backed memory.\0A\00", align 1, !dbg !84
@.str.10 = private unnamed_addr constant [54 x i8] c"Failure, this allocation should not set errno value.\0A\00", align 1, !dbg !89
@.str.11 = private unnamed_addr constant [49 x i8] c"Hello world from standard memory - ptr_default.\0A\00", align 1, !dbg !94
@.str.12 = private unnamed_addr constant [49 x i8] c"Hello world from file-backed memory - ptr_pmem.\0A\00", align 1, !dbg !96
@.str.13 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !98
@.str.14 = private unnamed_addr constant [49 x i8] c"Memory was successfully allocated and released.\0A\00", align 1, !dbg !103
@.str.15 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1, !dbg !105

; Function Attrs: nounwind ssp uwtable
define hidden i32 @main(i32 noundef %argc, ptr noundef %argv) #0 !dbg !120 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %size = alloca i64, align 8
  %pmem_kind = alloca ptr, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %heap_limit = alloca %struct.rlimit, align 8
  %ptr_default = alloca ptr, align 8
  %ptr_default_not_possible = alloca ptr, align 8
  %ptr_pmem = alloca ptr, align 8
  %status = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4, !tbaa !150
  tail call void @llvm.dbg.declare(metadata ptr %argc.addr, metadata !126, metadata !DIExpression()), !dbg !154
  store ptr %argv, ptr %argv.addr, align 8, !tbaa !155
  tail call void @llvm.dbg.declare(metadata ptr %argv.addr, metadata !127, metadata !DIExpression()), !dbg !157
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #7, !dbg !158
  tail call void @llvm.dbg.declare(metadata ptr %size, metadata !128, metadata !DIExpression()), !dbg !159
  store i64 512, ptr %size, align 8, !dbg !159, !tbaa !160
  call void @llvm.lifetime.start.p0(i64 8, ptr %pmem_kind) #7, !dbg !162
  tail call void @llvm.dbg.declare(metadata ptr %pmem_kind, metadata !133, metadata !DIExpression()), !dbg !163
  store ptr null, ptr %pmem_kind, align 8, !dbg !163, !tbaa !155
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #7, !dbg !164
  tail call void @llvm.dbg.declare(metadata ptr %err, metadata !136, metadata !DIExpression()), !dbg !165
  store i32 0, ptr %err, align 4, !dbg !165, !tbaa !150
  %call = call ptr @__errno_location() #8, !dbg !166
  store i32 0, ptr %call, align 4, !dbg !167, !tbaa !150
  %0 = load i32, ptr %argc.addr, align 4, !dbg !168, !tbaa !150
  %cmp = icmp sgt i32 %0, 2, !dbg !170
  br i1 %cmp, label %if.then, label %if.else, !dbg !171

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @stderr, align 8, !dbg !172, !tbaa !155
  %2 = load ptr, ptr %argv.addr, align 8, !dbg !172, !tbaa !155
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 0, !dbg !172
  %3 = load ptr, ptr %arrayidx, align 8, !dbg !172, !tbaa !155
  %call1 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %1, i32 noundef 1, ptr noundef @.str, ptr noundef %3), !dbg !172
  store i32 1, ptr %retval, align 4, !dbg !174
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup68, !dbg !174

if.else:                                          ; preds = %entry
  %4 = load i32, ptr %argc.addr, align 4, !dbg !175, !tbaa !150
  %cmp2 = icmp eq i32 %4, 2, !dbg !177
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !178

if.then3:                                         ; preds = %if.else
  %5 = load ptr, ptr %argv.addr, align 8, !dbg !179, !tbaa !155
  %arrayidx4 = getelementptr inbounds ptr, ptr %5, i64 1, !dbg !179
  %6 = load ptr, ptr %arrayidx4, align 8, !dbg !179, !tbaa !155
  %call5 = call ptr @realpath(ptr noundef %6, ptr noundef @path) #7, !dbg !182
  %cmp6 = icmp eq ptr %call5, null, !dbg !183
  br i1 %cmp6, label %if.then7, label %if.end, !dbg !184

if.then7:                                         ; preds = %if.then3
  %7 = load ptr, ptr @stderr, align 8, !dbg !185, !tbaa !155
  %8 = load ptr, ptr %argv.addr, align 8, !dbg !185, !tbaa !155
  %arrayidx8 = getelementptr inbounds ptr, ptr %8, i64 1, !dbg !185
  %9 = load ptr, ptr %arrayidx8, align 8, !dbg !185, !tbaa !155
  %call9 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %7, i32 noundef 1, ptr noundef @.str.1, ptr noundef %9), !dbg !185
  store i32 1, ptr %retval, align 4, !dbg !187
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup68, !dbg !187

if.end:                                           ; preds = %if.then3
  br label %if.end10, !dbg !188

if.end10:                                         ; preds = %if.end, %if.else
  br label %if.end11

if.end11:                                         ; preds = %if.end10
  call void @llvm.lifetime.start.p0(i64 16, ptr %heap_limit) #7, !dbg !189
  tail call void @llvm.dbg.declare(metadata ptr %heap_limit, metadata !137, metadata !DIExpression()), !dbg !190
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %heap_limit, ptr align 8 @__const.main.heap_limit, i64 16, i1 false), !dbg !190
  %call12 = call i32 @setrlimit(i32 noundef 2, ptr noundef %heap_limit) #7, !dbg !191
  store i32 %call12, ptr %err, align 4, !dbg !192, !tbaa !150
  %10 = load i32, ptr %err, align 4, !dbg !193, !tbaa !150
  %tobool = icmp ne i32 %10, 0, !dbg !193
  br i1 %tobool, label %if.then13, label %if.end15, !dbg !195

if.then13:                                        ; preds = %if.end11
  %11 = load ptr, ptr @stderr, align 8, !dbg !196, !tbaa !155
  %call14 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %11, i32 noundef 1, ptr noundef @.str.2), !dbg !196
  store i32 1, ptr %retval, align 4, !dbg !198
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup67, !dbg !198

if.end15:                                         ; preds = %if.end11
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptr_default) #7, !dbg !199
  tail call void @llvm.dbg.declare(metadata ptr %ptr_default, metadata !146, metadata !DIExpression()), !dbg !200
  store ptr null, ptr %ptr_default, align 8, !dbg !200, !tbaa !155
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptr_default_not_possible) #7, !dbg !201
  tail call void @llvm.dbg.declare(metadata ptr %ptr_default_not_possible, metadata !147, metadata !DIExpression()), !dbg !202
  store ptr null, ptr %ptr_default_not_possible, align 8, !dbg !202, !tbaa !155
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptr_pmem) #7, !dbg !203
  tail call void @llvm.dbg.declare(metadata ptr %ptr_pmem, metadata !148, metadata !DIExpression()), !dbg !204
  store ptr null, ptr %ptr_pmem, align 8, !dbg !204, !tbaa !155
  %12 = load ptr, ptr @stdout, align 8, !dbg !205, !tbaa !155
  %call16 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %12, i32 noundef 1, ptr noundef @.str.3, ptr noundef @path), !dbg !205
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #7, !dbg !206
  tail call void @llvm.dbg.declare(metadata ptr %status, metadata !149, metadata !DIExpression()), !dbg !207
  %call17 = call i32 @memkind_check_dax_path(ptr noundef @path), !dbg !208
  store i32 %call17, ptr %status, align 4, !dbg !207, !tbaa !150
  %13 = load i32, ptr %status, align 4, !dbg !209, !tbaa !150
  %tobool18 = icmp ne i32 %13, 0, !dbg !209
  br i1 %tobool18, label %if.else21, label %if.then19, !dbg !211

if.then19:                                        ; preds = %if.end15
  %14 = load ptr, ptr @stdout, align 8, !dbg !212, !tbaa !155
  %call20 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %14, i32 noundef 1, ptr noundef @.str.4, ptr noundef @path), !dbg !212
  br label %if.end23, !dbg !214

if.else21:                                        ; preds = %if.end15
  %15 = load ptr, ptr @stdout, align 8, !dbg !215, !tbaa !155
  %call22 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %15, i32 noundef 1, ptr noundef @.str.5, ptr noundef @path), !dbg !215
  br label %if.end23

if.end23:                                         ; preds = %if.else21, %if.then19
  %call24 = call i32 @memkind_create_pmem(ptr noundef @path, i64 noundef 0, ptr noundef %pmem_kind), !dbg !217
  store i32 %call24, ptr %err, align 4, !dbg !218, !tbaa !150
  %16 = load i32, ptr %err, align 4, !dbg !219, !tbaa !150
  %tobool25 = icmp ne i32 %16, 0, !dbg !219
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !221

if.then26:                                        ; preds = %if.end23
  %17 = load i32, ptr %err, align 4, !dbg !222, !tbaa !150
  call void @print_err_message(i32 noundef %17), !dbg !224
  store i32 1, ptr %retval, align 4, !dbg !225
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !225

if.end27:                                         ; preds = %if.end23
  %18 = load ptr, ptr @MEMKIND_DEFAULT, align 8, !dbg !226, !tbaa !155
  %call28 = call ptr @memkind_malloc(ptr noundef %18, i64 noundef 512), !dbg !227
  store ptr %call28, ptr %ptr_default, align 8, !dbg !228, !tbaa !155
  %19 = load ptr, ptr %ptr_default, align 8, !dbg !229, !tbaa !155
  %tobool29 = icmp ne ptr %19, null, !dbg !229
  br i1 %tobool29, label %if.end32, label %if.then30, !dbg !231

if.then30:                                        ; preds = %if.end27
  %20 = load ptr, ptr @stderr, align 8, !dbg !232, !tbaa !155
  %call31 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %20, i32 noundef 1, ptr noundef @.str.6), !dbg !232
  store i32 1, ptr %retval, align 4, !dbg !234
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !234

if.end32:                                         ; preds = %if.end27
  %call33 = call ptr @__errno_location() #8, !dbg !235
  store i32 0, ptr %call33, align 4, !dbg !236, !tbaa !150
  %21 = load ptr, ptr @MEMKIND_DEFAULT, align 8, !dbg !237, !tbaa !155
  %call34 = call ptr @memkind_malloc(ptr noundef %21, i64 noundef 1073741824), !dbg !238
  store ptr %call34, ptr %ptr_default_not_possible, align 8, !dbg !239, !tbaa !155
  %22 = load ptr, ptr %ptr_default_not_possible, align 8, !dbg !240, !tbaa !155
  %tobool35 = icmp ne ptr %22, null, !dbg !240
  br i1 %tobool35, label %if.then36, label %if.end38, !dbg !242

if.then36:                                        ; preds = %if.end32
  %23 = load ptr, ptr @stderr, align 8, !dbg !243, !tbaa !155
  %call37 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %23, i32 noundef 1, ptr noundef @.str.7), !dbg !243
  store i32 1, ptr %retval, align 4, !dbg !245
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !245

if.end38:                                         ; preds = %if.end32
  %call39 = call ptr @__errno_location() #8, !dbg !246
  %24 = load i32, ptr %call39, align 4, !dbg !246, !tbaa !150
  %cmp40 = icmp ne i32 %24, 12, !dbg !248
  br i1 %cmp40, label %if.then41, label %if.end43, !dbg !249

if.then41:                                        ; preds = %if.end38
  %25 = load ptr, ptr @stderr, align 8, !dbg !250, !tbaa !155
  %call42 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %25, i32 noundef 1, ptr noundef @.str.8), !dbg !250
  store i32 1, ptr %retval, align 4, !dbg !252
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !252

if.end43:                                         ; preds = %if.end38
  %call44 = call ptr @__errno_location() #8, !dbg !253
  store i32 0, ptr %call44, align 4, !dbg !254, !tbaa !150
  %26 = load ptr, ptr %pmem_kind, align 8, !dbg !255, !tbaa !155
  %call45 = call ptr @memkind_malloc(ptr noundef %26, i64 noundef 1073741824), !dbg !256
  store ptr %call45, ptr %ptr_pmem, align 8, !dbg !257, !tbaa !155
  %27 = load ptr, ptr %ptr_pmem, align 8, !dbg !258, !tbaa !155
  %tobool46 = icmp ne ptr %27, null, !dbg !258
  br i1 %tobool46, label %if.end49, label %if.then47, !dbg !260

if.then47:                                        ; preds = %if.end43
  %28 = load ptr, ptr @stderr, align 8, !dbg !261, !tbaa !155
  %call48 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %28, i32 noundef 1, ptr noundef @.str.9), !dbg !261
  store i32 1, ptr %retval, align 4, !dbg !263
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !263

if.end49:                                         ; preds = %if.end43
  %call50 = call ptr @__errno_location() #8, !dbg !264
  %29 = load i32, ptr %call50, align 4, !dbg !264, !tbaa !150
  %cmp51 = icmp ne i32 %29, 0, !dbg !266
  br i1 %cmp51, label %if.then52, label %if.end54, !dbg !267

if.then52:                                        ; preds = %if.end49
  %30 = load ptr, ptr @stderr, align 8, !dbg !268, !tbaa !155
  %call53 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %30, i32 noundef 1, ptr noundef @.str.10), !dbg !268
  store i32 1, ptr %retval, align 4, !dbg !270
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !270

if.end54:                                         ; preds = %if.end49
  %31 = load ptr, ptr %ptr_default, align 8, !dbg !271, !tbaa !155
  %32 = load ptr, ptr %ptr_default, align 8, !dbg !271, !tbaa !155
  %33 = call i64 @llvm.objectsize.i64.p0(ptr %32, i1 false, i1 true, i1 false), !dbg !271
  %call55 = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %31, i32 noundef 1, i64 noundef %33, ptr noundef @.str.11), !dbg !271
  %34 = load ptr, ptr %ptr_pmem, align 8, !dbg !272, !tbaa !155
  %35 = load ptr, ptr %ptr_pmem, align 8, !dbg !272, !tbaa !155
  %36 = call i64 @llvm.objectsize.i64.p0(ptr %35, i1 false, i1 true, i1 false), !dbg !272
  %call56 = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %34, i32 noundef 1, i64 noundef %36, ptr noundef @.str.12), !dbg !272
  %37 = load ptr, ptr @stdout, align 8, !dbg !273, !tbaa !155
  %38 = load ptr, ptr %ptr_default, align 8, !dbg !273, !tbaa !155
  %call57 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %37, i32 noundef 1, ptr noundef @.str.13, ptr noundef %38), !dbg !273
  %39 = load ptr, ptr @stdout, align 8, !dbg !274, !tbaa !155
  %40 = load ptr, ptr %ptr_pmem, align 8, !dbg !274, !tbaa !155
  %call58 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %39, i32 noundef 1, ptr noundef @.str.13, ptr noundef %40), !dbg !274
  %41 = load ptr, ptr @MEMKIND_DEFAULT, align 8, !dbg !275, !tbaa !155
  %42 = load ptr, ptr %ptr_default, align 8, !dbg !276, !tbaa !155
  call void @memkind_free(ptr noundef %41, ptr noundef %42), !dbg !277
  %43 = load ptr, ptr %pmem_kind, align 8, !dbg !278, !tbaa !155
  %44 = load ptr, ptr %ptr_pmem, align 8, !dbg !279, !tbaa !155
  call void @memkind_free(ptr noundef %43, ptr noundef %44), !dbg !280
  %45 = load ptr, ptr %pmem_kind, align 8, !dbg !281, !tbaa !155
  %call59 = call i32 @memkind_destroy_kind(ptr noundef %45), !dbg !282
  store i32 %call59, ptr %err, align 4, !dbg !283, !tbaa !150
  %46 = load i32, ptr %err, align 4, !dbg !284, !tbaa !150
  %tobool60 = icmp ne i32 %46, 0, !dbg !284
  br i1 %tobool60, label %if.then61, label %if.end62, !dbg !286

if.then61:                                        ; preds = %if.end54
  %47 = load i32, ptr %err, align 4, !dbg !287, !tbaa !150
  call void @print_err_message(i32 noundef %47), !dbg !289
  store i32 1, ptr %retval, align 4, !dbg !290
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !290

if.end62:                                         ; preds = %if.end54
  %48 = load ptr, ptr @stdout, align 8, !dbg !291, !tbaa !155
  %call63 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %48, i32 noundef 1, ptr noundef @.str.14), !dbg !291
  store i32 0, ptr %retval, align 4, !dbg !292
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !292

cleanup:                                          ; preds = %if.end62, %if.then61, %if.then52, %if.then47, %if.then41, %if.then36, %if.then30, %if.then26
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #7, !dbg !293
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptr_pmem) #7, !dbg !293
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptr_default_not_possible) #7, !dbg !293
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptr_default) #7, !dbg !293
  br label %cleanup67

cleanup67:                                        ; preds = %cleanup, %if.then13
  call void @llvm.lifetime.end.p0(i64 16, ptr %heap_limit) #7, !dbg !293
  br label %cleanup68

cleanup68:                                        ; preds = %cleanup67, %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #7, !dbg !293
  call void @llvm.lifetime.end.p0(i64 8, ptr %pmem_kind) #7, !dbg !293
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #7, !dbg !293
  %49 = load i32, ptr %retval, align 4, !dbg !293
  ret i32 %49, !dbg !293
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind willreturn memory(none)
declare !dbg !294 ptr @__errno_location() #2

declare !dbg !299 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: nounwind
declare ptr @realpath(ptr noundef, ptr noundef) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nounwind
declare !dbg !362 i32 @setrlimit(i32 noundef, ptr noundef) #4

declare !dbg !368 i32 @memkind_check_dax_path(ptr noundef) #3

declare !dbg !371 i32 @memkind_create_pmem(ptr noundef, i64 noundef, ptr noundef) #3

; Function Attrs: nounwind ssp uwtable
define internal void @print_err_message(i32 noundef %err) #0 !dbg !376 {
entry:
  %err.addr = alloca i32, align 4
  %error_message = alloca [128 x i8], align 16
  store i32 %err, ptr %err.addr, align 4, !tbaa !150
  tail call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !380, metadata !DIExpression()), !dbg !385
  call void @llvm.lifetime.start.p0(i64 128, ptr %error_message) #7, !dbg !386
  tail call void @llvm.dbg.declare(metadata ptr %error_message, metadata !381, metadata !DIExpression()), !dbg !387
  %0 = load i32, ptr %err.addr, align 4, !dbg !388, !tbaa !150
  %arraydecay = getelementptr inbounds [128 x i8], ptr %error_message, i64 0, i64 0, !dbg !389
  call void @memkind_error_message(i32 noundef %0, ptr noundef %arraydecay, i64 noundef 128), !dbg !390
  %1 = load ptr, ptr @stderr, align 8, !dbg !391, !tbaa !155
  %arraydecay1 = getelementptr inbounds [128 x i8], ptr %error_message, i64 0, i64 0, !dbg !391
  %call = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %1, i32 noundef 1, ptr noundef @.str.15, ptr noundef %arraydecay1), !dbg !391
  call void @llvm.lifetime.end.p0(i64 128, ptr %error_message) #7, !dbg !392
  ret void, !dbg !392
}

declare !dbg !393 ptr @memkind_malloc(ptr noundef, i64 noundef) #3

declare !dbg !396 i32 @__sprintf_chk(ptr noundef, i32 noundef, i64 noundef, ptr noundef, ...) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #6

declare !dbg !400 void @memkind_free(ptr noundef, ptr noundef) #3

declare !dbg !403 i32 @memkind_destroy_kind(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare !dbg !406 void @memkind_error_message(i32 noundef, ptr noundef, i64 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #6

attributes #0 = { nounwind ssp uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(none) }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!113, !114, !115, !116, !117, !118}
!llvm.ident = !{!119}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 32, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "examples/pmem_and_default_kind.c", directory: "/local-ssd/memkind-fjqz6bdcywckzienbodqhysscvwe3njh-build/aidengro/spack-stage-memkind-1.13.0-fjqz6bdcywckzienbodqhysscvwe3njh/spack-src", checksumkind: CSK_MD5, checksum: "1972ff6ea7bf759ebbd66457a787d8ef")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 32)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "path", scope: !9, file: !2, line: 15, type: !110, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !10, retainedTypes: !40, globals: !43, splitDebugInlining: false, nameTableKind: None)
!10 = !{!11, !34}
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__rlimit_resource", file: !12, line: 31, baseType: !13, size: 32, elements: !14)
!12 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/resource.h", directory: "", checksumkind: CSK_MD5, checksum: "bb0bdc9e7ae341ef435e98e05276a863")
!13 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!14 = !{!15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33}
!15 = !DIEnumerator(name: "RLIMIT_CPU", value: 0)
!16 = !DIEnumerator(name: "RLIMIT_FSIZE", value: 1)
!17 = !DIEnumerator(name: "RLIMIT_DATA", value: 2)
!18 = !DIEnumerator(name: "RLIMIT_STACK", value: 3)
!19 = !DIEnumerator(name: "RLIMIT_CORE", value: 4)
!20 = !DIEnumerator(name: "__RLIMIT_RSS", value: 5)
!21 = !DIEnumerator(name: "RLIMIT_NOFILE", value: 7)
!22 = !DIEnumerator(name: "__RLIMIT_OFILE", value: 7)
!23 = !DIEnumerator(name: "RLIMIT_AS", value: 9)
!24 = !DIEnumerator(name: "__RLIMIT_NPROC", value: 6)
!25 = !DIEnumerator(name: "__RLIMIT_MEMLOCK", value: 8)
!26 = !DIEnumerator(name: "__RLIMIT_LOCKS", value: 10)
!27 = !DIEnumerator(name: "__RLIMIT_SIGPENDING", value: 11)
!28 = !DIEnumerator(name: "__RLIMIT_MSGQUEUE", value: 12)
!29 = !DIEnumerator(name: "__RLIMIT_NICE", value: 13)
!30 = !DIEnumerator(name: "__RLIMIT_RTPRIO", value: 14)
!31 = !DIEnumerator(name: "__RLIMIT_RTTIME", value: 15)
!32 = !DIEnumerator(name: "__RLIMIT_NLIMITS", value: 16)
!33 = !DIEnumerator(name: "__RLIM_NLIMITS", value: 16)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memkind_const", file: !35, line: 111, baseType: !13, size: 32, elements: !36)
!35 = !DIFile(filename: "./include/memkind.h", directory: "/local-ssd/memkind-fjqz6bdcywckzienbodqhysscvwe3njh-build/aidengro/spack-stage-memkind-1.13.0-fjqz6bdcywckzienbodqhysscvwe3njh/spack-src", checksumkind: CSK_MD5, checksum: "18043f44c4dfd9de99bda9773e70992e")
!36 = !{!37, !38, !39}
!37 = !DIEnumerator(name: "MEMKIND_MAX_KIND", value: 512)
!38 = !DIEnumerator(name: "MEMKIND_ERROR_MESSAGE_SIZE", value: 128)
!39 = !DIEnumerator(name: "MEMKIND_PMEM_MIN_SIZE", value: 16777216)
!40 = !{!41, !42}
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!43 = !{!0, !44, !49, !54, !59, !64, !69, !74, !79, !84, !89, !94, !96, !98, !103, !7, !105}
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(scope: null, file: !2, line: 36, type: !46, isLocal: true, isDefinition: true)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !47)
!47 = !{!48}
!48 = !DISubrange(count: 33)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(scope: null, file: !2, line: 46, type: !51, isLocal: true, isDefinition: true)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !52)
!52 = !{!53}
!53 = !DISubrange(count: 27)
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(scope: null, file: !2, line: 54, type: !56, isLocal: true, isDefinition: true)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1168, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 146)
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(scope: null, file: !2, line: 62, type: !61, isLocal: true, isDefinition: true)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 360, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 45)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(scope: null, file: !2, line: 64, type: !66, isLocal: true, isDefinition: true)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 392, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 49)
!69 = !DIGlobalVariableExpression(var: !70, expr: !DIExpression())
!70 = distinct !DIGlobalVariable(scope: null, file: !2, line: 76, type: !71, isLocal: true, isDefinition: true)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 376, elements: !72)
!72 = !{!73}
!73 = !DISubrange(count: 47)
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(scope: null, file: !2, line: 84, type: !76, isLocal: true, isDefinition: true)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 856, elements: !77)
!77 = !{!78}
!78 = !DISubrange(count: 107)
!79 = !DIGlobalVariableExpression(var: !80, expr: !DIExpression())
!80 = distinct !DIGlobalVariable(scope: null, file: !2, line: 90, type: !81, isLocal: true, isDefinition: true)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 720, elements: !82)
!82 = !{!83}
!83 = !DISubrange(count: 90)
!84 = !DIGlobalVariableExpression(var: !85, expr: !DIExpression())
!85 = distinct !DIGlobalVariable(scope: null, file: !2, line: 99, type: !86, isLocal: true, isDefinition: true)
!86 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !87)
!87 = !{!88}
!88 = !DISubrange(count: 60)
!89 = !DIGlobalVariableExpression(var: !90, expr: !DIExpression())
!90 = distinct !DIGlobalVariable(scope: null, file: !2, line: 104, type: !91, isLocal: true, isDefinition: true)
!91 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 432, elements: !92)
!92 = !{!93}
!93 = !DISubrange(count: 54)
!94 = !DIGlobalVariableExpression(var: !95, expr: !DIExpression())
!95 = distinct !DIGlobalVariable(scope: null, file: !2, line: 109, type: !66, isLocal: true, isDefinition: true)
!96 = !DIGlobalVariableExpression(var: !97, expr: !DIExpression())
!97 = distinct !DIGlobalVariable(scope: null, file: !2, line: 110, type: !66, isLocal: true, isDefinition: true)
!98 = !DIGlobalVariableExpression(var: !99, expr: !DIExpression())
!99 = distinct !DIGlobalVariable(scope: null, file: !2, line: 112, type: !100, isLocal: true, isDefinition: true)
!100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !101)
!101 = !{!102}
!102 = !DISubrange(count: 3)
!103 = !DIGlobalVariableExpression(var: !104, expr: !DIExpression())
!104 = distinct !DIGlobalVariable(scope: null, file: !2, line: 124, type: !66, isLocal: true, isDefinition: true)
!105 = !DIGlobalVariableExpression(var: !106, expr: !DIExpression())
!106 = distinct !DIGlobalVariable(scope: null, file: !2, line: 21, type: !107, isLocal: true, isDefinition: true)
!107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !108)
!108 = !{!109}
!109 = !DISubrange(count: 4)
!110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32768, elements: !111)
!111 = !{!112}
!112 = !DISubrange(count: 4096)
!113 = !{i32 7, !"Dwarf Version", i32 5}
!114 = !{i32 2, !"Debug Info Version", i32 3}
!115 = !{i32 1, !"wchar_size", i32 4}
!116 = !{i32 8, !"PIC Level", i32 2}
!117 = !{i32 7, !"PIE Level", i32 2}
!118 = !{i32 7, !"uwtable", i32 2}
!119 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!120 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 24, type: !121, scopeLine: 25, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !125)
!121 = !DISubroutineType(types: !122)
!122 = !{!123, !123, !124}
!123 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!125 = !{!126, !127, !128, !133, !136, !137, !146, !147, !148, !149}
!126 = !DILocalVariable(name: "argc", arg: 1, scope: !120, file: !2, line: 24, type: !123)
!127 = !DILocalVariable(name: "argv", arg: 2, scope: !120, file: !2, line: 24, type: !124)
!128 = !DILocalVariable(name: "size", scope: !120, file: !2, line: 26, type: !129)
!129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !130)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !131, line: 70, baseType: !132)
!131 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!132 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!133 = !DILocalVariable(name: "pmem_kind", scope: !120, file: !2, line: 27, type: !134)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DICompositeType(tag: DW_TAG_structure_type, name: "memkind", file: !35, line: 107, flags: DIFlagFwdDecl)
!136 = !DILocalVariable(name: "err", scope: !120, file: !2, line: 28, type: !123)
!137 = !DILocalVariable(name: "heap_limit", scope: !120, file: !2, line: 43, type: !138)
!138 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !139)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !12, line: 139, size: 128, elements: !140)
!140 = !{!141, !145}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !139, file: !12, line: 142, baseType: !142, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "rlim_t", file: !12, line: 131, baseType: !143)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "__rlim_t", file: !144, line: 157, baseType: !132)
!144 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!145 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !139, file: !12, line: 144, baseType: !142, size: 64, offset: 64)
!146 = !DILocalVariable(name: "ptr_default", scope: !120, file: !2, line: 50, type: !42)
!147 = !DILocalVariable(name: "ptr_default_not_possible", scope: !120, file: !2, line: 51, type: !42)
!148 = !DILocalVariable(name: "ptr_pmem", scope: !120, file: !2, line: 52, type: !42)
!149 = !DILocalVariable(name: "status", scope: !120, file: !2, line: 60, type: !123)
!150 = !{!151, !151, i64 0}
!151 = !{!"int", !152, i64 0}
!152 = !{!"omnipotent char", !153, i64 0}
!153 = !{!"Simple C/C++ TBAA"}
!154 = !DILocation(line: 24, column: 14, scope: !120)
!155 = !{!156, !156, i64 0}
!156 = !{!"any pointer", !152, i64 0}
!157 = !DILocation(line: 24, column: 26, scope: !120)
!158 = !DILocation(line: 26, column: 5, scope: !120)
!159 = !DILocation(line: 26, column: 18, scope: !120)
!160 = !{!161, !161, i64 0}
!161 = !{!"long", !152, i64 0}
!162 = !DILocation(line: 27, column: 5, scope: !120)
!163 = !DILocation(line: 27, column: 21, scope: !120)
!164 = !DILocation(line: 28, column: 5, scope: !120)
!165 = !DILocation(line: 28, column: 9, scope: !120)
!166 = !DILocation(line: 29, column: 5, scope: !120)
!167 = !DILocation(line: 29, column: 11, scope: !120)
!168 = !DILocation(line: 31, column: 9, scope: !169)
!169 = distinct !DILexicalBlock(scope: !120, file: !2, line: 31, column: 9)
!170 = !DILocation(line: 31, column: 14, scope: !169)
!171 = !DILocation(line: 31, column: 9, scope: !120)
!172 = !DILocation(line: 32, column: 9, scope: !173)
!173 = distinct !DILexicalBlock(scope: !169, file: !2, line: 31, column: 19)
!174 = !DILocation(line: 33, column: 9, scope: !173)
!175 = !DILocation(line: 34, column: 16, scope: !176)
!176 = distinct !DILexicalBlock(scope: !169, file: !2, line: 34, column: 16)
!177 = !DILocation(line: 34, column: 21, scope: !176)
!178 = !DILocation(line: 34, column: 16, scope: !169)
!179 = !DILocation(line: 35, column: 22, scope: !180)
!180 = distinct !DILexicalBlock(scope: !181, file: !2, line: 35, column: 13)
!181 = distinct !DILexicalBlock(scope: !176, file: !2, line: 34, column: 27)
!182 = !DILocation(line: 35, column: 13, scope: !180)
!183 = !DILocation(line: 35, column: 37, scope: !180)
!184 = !DILocation(line: 35, column: 13, scope: !181)
!185 = !DILocation(line: 36, column: 13, scope: !186)
!186 = distinct !DILexicalBlock(scope: !180, file: !2, line: 35, column: 46)
!187 = !DILocation(line: 37, column: 13, scope: !186)
!188 = !DILocation(line: 39, column: 5, scope: !181)
!189 = !DILocation(line: 43, column: 5, scope: !120)
!190 = !DILocation(line: 43, column: 25, scope: !120)
!191 = !DILocation(line: 44, column: 11, scope: !120)
!192 = !DILocation(line: 44, column: 9, scope: !120)
!193 = !DILocation(line: 45, column: 9, scope: !194)
!194 = distinct !DILexicalBlock(scope: !120, file: !2, line: 45, column: 9)
!195 = !DILocation(line: 45, column: 9, scope: !120)
!196 = !DILocation(line: 46, column: 9, scope: !197)
!197 = distinct !DILexicalBlock(scope: !194, file: !2, line: 45, column: 14)
!198 = !DILocation(line: 47, column: 9, scope: !197)
!199 = !DILocation(line: 50, column: 5, scope: !120)
!200 = !DILocation(line: 50, column: 11, scope: !120)
!201 = !DILocation(line: 51, column: 5, scope: !120)
!202 = !DILocation(line: 51, column: 11, scope: !120)
!203 = !DILocation(line: 52, column: 5, scope: !120)
!204 = !DILocation(line: 52, column: 11, scope: !120)
!205 = !DILocation(line: 54, column: 5, scope: !120)
!206 = !DILocation(line: 60, column: 5, scope: !120)
!207 = !DILocation(line: 60, column: 9, scope: !120)
!208 = !DILocation(line: 60, column: 18, scope: !120)
!209 = !DILocation(line: 61, column: 10, scope: !210)
!210 = distinct !DILexicalBlock(scope: !120, file: !2, line: 61, column: 9)
!211 = !DILocation(line: 61, column: 9, scope: !120)
!212 = !DILocation(line: 62, column: 9, scope: !213)
!213 = distinct !DILexicalBlock(scope: !210, file: !2, line: 61, column: 18)
!214 = !DILocation(line: 63, column: 5, scope: !213)
!215 = !DILocation(line: 64, column: 9, scope: !216)
!216 = distinct !DILexicalBlock(scope: !210, file: !2, line: 63, column: 12)
!217 = !DILocation(line: 68, column: 11, scope: !120)
!218 = !DILocation(line: 68, column: 9, scope: !120)
!219 = !DILocation(line: 69, column: 9, scope: !220)
!220 = distinct !DILexicalBlock(scope: !120, file: !2, line: 69, column: 9)
!221 = !DILocation(line: 69, column: 9, scope: !120)
!222 = !DILocation(line: 70, column: 27, scope: !223)
!223 = distinct !DILexicalBlock(scope: !220, file: !2, line: 69, column: 14)
!224 = !DILocation(line: 70, column: 9, scope: !223)
!225 = !DILocation(line: 71, column: 9, scope: !223)
!226 = !DILocation(line: 74, column: 42, scope: !120)
!227 = !DILocation(line: 74, column: 27, scope: !120)
!228 = !DILocation(line: 74, column: 17, scope: !120)
!229 = !DILocation(line: 75, column: 10, scope: !230)
!230 = distinct !DILexicalBlock(scope: !120, file: !2, line: 75, column: 9)
!231 = !DILocation(line: 75, column: 9, scope: !120)
!232 = !DILocation(line: 76, column: 9, scope: !233)
!233 = distinct !DILexicalBlock(scope: !230, file: !2, line: 75, column: 23)
!234 = !DILocation(line: 77, column: 9, scope: !233)
!235 = !DILocation(line: 80, column: 5, scope: !120)
!236 = !DILocation(line: 80, column: 11, scope: !120)
!237 = !DILocation(line: 82, column: 32, scope: !120)
!238 = !DILocation(line: 82, column: 17, scope: !120)
!239 = !DILocation(line: 81, column: 30, scope: !120)
!240 = !DILocation(line: 83, column: 9, scope: !241)
!241 = distinct !DILexicalBlock(scope: !120, file: !2, line: 83, column: 9)
!242 = !DILocation(line: 83, column: 9, scope: !120)
!243 = !DILocation(line: 84, column: 9, scope: !244)
!244 = distinct !DILexicalBlock(scope: !241, file: !2, line: 83, column: 35)
!245 = !DILocation(line: 87, column: 9, scope: !244)
!246 = !DILocation(line: 89, column: 9, scope: !247)
!247 = distinct !DILexicalBlock(scope: !120, file: !2, line: 89, column: 9)
!248 = !DILocation(line: 89, column: 15, scope: !247)
!249 = !DILocation(line: 89, column: 9, scope: !120)
!250 = !DILocation(line: 90, column: 9, scope: !251)
!251 = distinct !DILexicalBlock(scope: !247, file: !2, line: 89, column: 26)
!252 = !DILocation(line: 93, column: 9, scope: !251)
!253 = !DILocation(line: 96, column: 5, scope: !120)
!254 = !DILocation(line: 96, column: 11, scope: !120)
!255 = !DILocation(line: 97, column: 39, scope: !120)
!256 = !DILocation(line: 97, column: 24, scope: !120)
!257 = !DILocation(line: 97, column: 14, scope: !120)
!258 = !DILocation(line: 98, column: 10, scope: !259)
!259 = distinct !DILexicalBlock(scope: !120, file: !2, line: 98, column: 9)
!260 = !DILocation(line: 98, column: 9, scope: !120)
!261 = !DILocation(line: 99, column: 9, scope: !262)
!262 = distinct !DILexicalBlock(scope: !259, file: !2, line: 98, column: 20)
!263 = !DILocation(line: 101, column: 9, scope: !262)
!264 = !DILocation(line: 103, column: 9, scope: !265)
!265 = distinct !DILexicalBlock(scope: !120, file: !2, line: 103, column: 9)
!266 = !DILocation(line: 103, column: 15, scope: !265)
!267 = !DILocation(line: 103, column: 9, scope: !120)
!268 = !DILocation(line: 104, column: 9, scope: !269)
!269 = distinct !DILexicalBlock(scope: !265, file: !2, line: 103, column: 21)
!270 = !DILocation(line: 106, column: 9, scope: !269)
!271 = !DILocation(line: 109, column: 5, scope: !120)
!272 = !DILocation(line: 110, column: 5, scope: !120)
!273 = !DILocation(line: 112, column: 5, scope: !120)
!274 = !DILocation(line: 113, column: 5, scope: !120)
!275 = !DILocation(line: 115, column: 18, scope: !120)
!276 = !DILocation(line: 115, column: 35, scope: !120)
!277 = !DILocation(line: 115, column: 5, scope: !120)
!278 = !DILocation(line: 116, column: 18, scope: !120)
!279 = !DILocation(line: 116, column: 29, scope: !120)
!280 = !DILocation(line: 116, column: 5, scope: !120)
!281 = !DILocation(line: 118, column: 32, scope: !120)
!282 = !DILocation(line: 118, column: 11, scope: !120)
!283 = !DILocation(line: 118, column: 9, scope: !120)
!284 = !DILocation(line: 119, column: 9, scope: !285)
!285 = distinct !DILexicalBlock(scope: !120, file: !2, line: 119, column: 9)
!286 = !DILocation(line: 119, column: 9, scope: !120)
!287 = !DILocation(line: 120, column: 27, scope: !288)
!288 = distinct !DILexicalBlock(scope: !285, file: !2, line: 119, column: 14)
!289 = !DILocation(line: 120, column: 9, scope: !288)
!290 = !DILocation(line: 121, column: 9, scope: !288)
!291 = !DILocation(line: 124, column: 5, scope: !120)
!292 = !DILocation(line: 126, column: 5, scope: !120)
!293 = !DILocation(line: 127, column: 1, scope: !120)
!294 = !DISubprogram(name: "__errno_location", scope: !295, file: !295, line: 37, type: !296, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!295 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!296 = !DISubroutineType(types: !297)
!297 = !{!298}
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!299 = !DISubprogram(name: "__fprintf_chk", scope: !300, file: !300, line: 93, type: !301, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!300 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!301 = !DISubroutineType(types: !302)
!302 = !{!123, !303, !123, !359, null}
!303 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !304)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !306, line: 7, baseType: !307)
!306 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !308, line: 49, size: 1728, elements: !309)
!308 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!309 = !{!310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !325, !327, !328, !329, !332, !334, !336, !340, !343, !345, !348, !351, !352, !353, !354, !355}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !307, file: !308, line: 51, baseType: !123, size: 32)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !307, file: !308, line: 54, baseType: !42, size: 64, offset: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !307, file: !308, line: 55, baseType: !42, size: 64, offset: 128)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !307, file: !308, line: 56, baseType: !42, size: 64, offset: 192)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !307, file: !308, line: 57, baseType: !42, size: 64, offset: 256)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !307, file: !308, line: 58, baseType: !42, size: 64, offset: 320)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !307, file: !308, line: 59, baseType: !42, size: 64, offset: 384)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !307, file: !308, line: 60, baseType: !42, size: 64, offset: 448)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !307, file: !308, line: 61, baseType: !42, size: 64, offset: 512)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !307, file: !308, line: 64, baseType: !42, size: 64, offset: 576)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !307, file: !308, line: 65, baseType: !42, size: 64, offset: 640)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !307, file: !308, line: 66, baseType: !42, size: 64, offset: 704)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !307, file: !308, line: 68, baseType: !323, size: 64, offset: 768)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !308, line: 36, flags: DIFlagFwdDecl)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !307, file: !308, line: 70, baseType: !326, size: 64, offset: 832)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !307, file: !308, line: 72, baseType: !123, size: 32, offset: 896)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !307, file: !308, line: 73, baseType: !123, size: 32, offset: 928)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !307, file: !308, line: 74, baseType: !330, size: 64, offset: 960)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !144, line: 152, baseType: !331)
!331 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !307, file: !308, line: 77, baseType: !333, size: 16, offset: 1024)
!333 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !307, file: !308, line: 78, baseType: !335, size: 8, offset: 1040)
!335 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !307, file: !308, line: 79, baseType: !337, size: 8, offset: 1048)
!337 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !338)
!338 = !{!339}
!339 = !DISubrange(count: 1)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !307, file: !308, line: 81, baseType: !341, size: 64, offset: 1088)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !308, line: 43, baseType: null)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !307, file: !308, line: 89, baseType: !344, size: 64, offset: 1152)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !144, line: 153, baseType: !331)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !307, file: !308, line: 91, baseType: !346, size: 64, offset: 1216)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !308, line: 37, flags: DIFlagFwdDecl)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !307, file: !308, line: 92, baseType: !349, size: 64, offset: 1280)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !308, line: 38, flags: DIFlagFwdDecl)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !307, file: !308, line: 93, baseType: !326, size: 64, offset: 1344)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !307, file: !308, line: 94, baseType: !41, size: 64, offset: 1408)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !307, file: !308, line: 95, baseType: !130, size: 64, offset: 1472)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !307, file: !308, line: 96, baseType: !123, size: 32, offset: 1536)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !307, file: !308, line: 98, baseType: !356, size: 160, offset: 1568)
!356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !357)
!357 = !{!358}
!358 = !DISubrange(count: 20)
!359 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !360)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!362 = !DISubprogram(name: "setrlimit", scope: !363, file: !363, line: 70, type: !364, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!363 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/resource.h", directory: "", checksumkind: CSK_MD5, checksum: "e55940cb1bf33174af2c45f02cd69e8a")
!364 = !DISubroutineType(types: !365)
!365 = !{!123, !366, !367}
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "__rlimit_resource_t", file: !363, line: 38, baseType: !11)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!368 = !DISubprogram(name: "memkind_check_dax_path", scope: !35, file: !35, line: 659, type: !369, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!369 = !DISubroutineType(types: !370)
!370 = !{!123, !360}
!371 = !DISubprogram(name: "memkind_create_pmem", scope: !35, file: !35, line: 499, type: !372, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!372 = !DISubroutineType(types: !373)
!373 = !{!123, !360, !130, !374}
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "memkind_t", file: !35, line: 107, baseType: !134)
!376 = distinct !DISubprogram(name: "print_err_message", scope: !2, file: !2, line: 17, type: !377, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !379)
!377 = !DISubroutineType(types: !378)
!378 = !{null, !123}
!379 = !{!380, !381}
!380 = !DILocalVariable(name: "err", arg: 1, scope: !376, file: !2, line: 17, type: !123)
!381 = !DILocalVariable(name: "error_message", scope: !376, file: !2, line: 19, type: !382)
!382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1024, elements: !383)
!383 = !{!384}
!384 = !DISubrange(count: 128)
!385 = !DILocation(line: 17, column: 35, scope: !376)
!386 = !DILocation(line: 19, column: 5, scope: !376)
!387 = !DILocation(line: 19, column: 10, scope: !376)
!388 = !DILocation(line: 20, column: 27, scope: !376)
!389 = !DILocation(line: 20, column: 32, scope: !376)
!390 = !DILocation(line: 20, column: 5, scope: !376)
!391 = !DILocation(line: 21, column: 5, scope: !376)
!392 = !DILocation(line: 22, column: 1, scope: !376)
!393 = !DISubprogram(name: "memkind_malloc", scope: !35, file: !35, line: 584, type: !394, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!394 = !DISubroutineType(types: !395)
!395 = !{!41, !375, !130}
!396 = !DISubprogram(name: "__builtin___sprintf_chk", scope: !2, file: !2, line: 109, type: !397, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!397 = !DISubroutineType(types: !398)
!398 = !{!123, !399, !123, !132, !359, null}
!399 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !42)
!400 = !DISubprogram(name: "memkind_free", scope: !35, file: !35, line: 640, type: !401, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!401 = !DISubroutineType(types: !402)
!402 = !{null, !375, !41}
!403 = !DISubprogram(name: "memkind_destroy_kind", scope: !35, file: !35, line: 390, type: !404, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!404 = !DISubroutineType(types: !405)
!405 = !{!123, !375}
!406 = !DISubprogram(name: "memkind_error_message", scope: !35, file: !35, line: 487, type: !407, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!407 = !DISubroutineType(types: !408)
!408 = !{null, !123, !42, !130}

; ModuleID = 'samples/471.bc'
source_filename = "lib/src/tree_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TSTreeCursor = type { ptr, ptr, [2 x i32] }
%struct.TSNode = type { [4 x i32], ptr, ptr }
%struct.TreeCursorEntry = type { ptr, %struct.Length, i32, i32 }
%struct.Length = type { i32, %struct.TSPoint }
%struct.TSPoint = type { i32, i32 }
%struct.TreeCursor = type { ptr, %struct.anon }
%struct.anon = type { ptr, i32, i32 }
%struct.VoidArray = type { ptr, i32, i32 }
%struct.CursorChildIterator = type { %union.Subtree, ptr, %struct.Length, i32, i32, ptr }
%union.Subtree = type { ptr }
%struct.TSTree = type { %union.Subtree, ptr, ptr, i32 }
%struct.SubtreeHeapData = type { i32, %struct.Length, %struct.Length, i32, i32, i32, i16, i16, i16, %union.anon }
%union.anon = type { %struct.ExternalScannerState }
%struct.ExternalScannerState = type { %union.anon.2, i32 }
%union.anon.2 = type { ptr, [16 x i8] }
%struct.anon.0 = type { i32, i32, i32, i32, i16, i16, %struct.anon.1 }
%struct.anon.1 = type { i16, i16 }
%struct.TSLanguage = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.anon.3, ptr }
%struct.anon.3 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.TSSymbolMetadata = type { i8, i8, i8 }
%struct.TSFieldMapEntry = type { i16, i8, i8 }
%struct.SubtreeInlineData = type { i8, i8, i16, i8, i8, i8, i8 }
%struct.TSFieldMapSlice = type { i16, i16 }

@.str = private unnamed_addr constant [58 x i8] c"(uint32_t)(&self->stack)->size - 1 < (&self->stack)->size\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"lib/src/tree_cursor.c\00", align 1
@__PRETTY_FUNCTION__.ts_tree_cursor_current_node = private unnamed_addr constant [57 x i8] c"TSNode ts_tree_cursor_current_node(const TSTreeCursor *)\00", align 1
@ts_current_realloc = external global ptr, align 8
@ts_current_malloc = external global ptr, align 8
@ts_current_free = external global ptr, align 8
@__PRETTY_FUNCTION__.ts_tree_cursor_iterate_children = private unnamed_addr constant [72 x i8] c"CursorChildIterator ts_tree_cursor_iterate_children(const TreeCursor *)\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"old_end <= self->size\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"lib/src/./././array.h\00", align 1
@__PRETTY_FUNCTION__.array__splice = private unnamed_addr constant [84 x i8] c"void array__splice(VoidArray *, size_t, uint32_t, uint32_t, uint32_t, const void *)\00", align 1

; Function Attrs: nounwind uwtable
define void @ts_tree_cursor_new(ptr noalias sret(%struct.TSTreeCursor) align 8 %agg.result, ptr noundef byval(%struct.TSNode) align 8 %node) #0 {
entry:
  call void @llvm.memset.p0.i64(ptr align 8 %agg.result, i8 0, i64 24, i1 false)
  call void @ts_tree_cursor_init(ptr noundef %agg.result, ptr noundef byval(%struct.TSNode) align 8 %node)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define void @ts_tree_cursor_init(ptr noundef %self, ptr noundef byval(%struct.TSNode) align 8 %node) #0 {
entry:
  %self.addr = alloca ptr, align 8
  %.compoundliteral = alloca %struct.TreeCursorEntry, align 8
  store ptr %self, ptr %self.addr, align 8, !tbaa !4
  %tree = getelementptr inbounds %struct.TSNode, ptr %node, i32 0, i32 2
  %0 = load ptr, ptr %tree, align 8, !tbaa !8
  %1 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %tree1 = getelementptr inbounds %struct.TreeCursor, ptr %1, i32 0, i32 0
  store ptr %0, ptr %tree1, align 8, !tbaa !10
  %2 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %stack = getelementptr inbounds %struct.TreeCursor, ptr %2, i32 0, i32 1
  %size = getelementptr inbounds %struct.anon, ptr %stack, i32 0, i32 1
  store i32 0, ptr %size, align 8, !tbaa !14
  %3 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %stack2 = getelementptr inbounds %struct.TreeCursor, ptr %3, i32 0, i32 1
  call void @array__grow(ptr noundef %stack2, i32 noundef 1, i64 noundef 32)
  %4 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %stack3 = getelementptr inbounds %struct.TreeCursor, ptr %4, i32 0, i32 1
  %contents = getelementptr inbounds %struct.anon, ptr %stack3, i32 0, i32 0
  %5 = load ptr, ptr %contents, align 8, !tbaa !15
  %6 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %stack4 = getelementptr inbounds %struct.TreeCursor, ptr %6, i32 0, i32 1
  %size5 = getelementptr inbounds %struct.anon, ptr %stack4, i32 0, i32 1
  %7 = load i32, ptr %size5, align 8, !tbaa !14
  %inc = add i32 %7, 1
  store i32 %inc, ptr %size5, align 8, !tbaa !14
  %idxprom = zext i32 %7 to i64
  %arrayidx = getelementptr inbounds %struct.TreeCursorEntry, ptr %5, i64 %idxprom
  %subtree = getelementptr inbounds %struct.TreeCursorEntry, ptr %.compoundliteral, i32 0, i32 0
  %id = getelementptr inbounds %struct.TSNode, ptr %node, i32 0, i32 1
  %8 = load ptr, ptr %id, align 8, !tbaa !16
  store ptr %8, ptr %subtree, align 8, !tbaa !17
  %position = getelementptr inbounds %struct.TreeCursorEntry, ptr %.compoundliteral, i32 0, i32 1
  %bytes = getelementptr inbounds %struct.Length, ptr %position, i32 0, i32 0
  %call = call i32 @ts_node_start_byte(ptr noundef byval(%struct.TSNode) align 8 %node)
  store i32 %call, ptr %bytes, align 8, !tbaa !21
  %extent = getelementptr inbounds %struct.Length, ptr %position, i32 0, i32 1
  %call6 = call i64 @ts_node_start_point(ptr noundef byval(%struct.TSNode) align 8 %node)
  store i64 %call6, ptr %extent, align 4
  %child_index = getelementptr inbounds %struct.TreeCursorEntry, ptr %.compoundliteral, i32 0, i32 2
  store i32 0, ptr %child_index, align 4, !tbaa !22
  %structural_child_index = getelementptr inbounds %struct.TreeCursorEntry, ptr %.compoundliteral, i32 0, i32 3
  store i32 0, ptr %structural_child_index, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx, ptr align 8 %.compoundliteral, i64 32, i1 false), !tbaa.struct !24
  ret void
}

; Function Attrs: nounwind uwtable
define void @ts_tree_cursor_reset(ptr noundef %_self, ptr noundef byval(%struct.TSNode) align 8 %node) #0 {
entry:
  %_self.addr = alloca ptr, align 8
  store ptr %_self, ptr %_self.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %_self.addr, align 8, !tbaa !4
  call void @ts_tree_cursor_init(ptr noundef %0, ptr noundef byval(%struct.TSNode) align 8 %node)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @array__grow(ptr noundef %self, i32 noundef %count, i64 noundef %element_size) #2 {
entry:
  %self.addr = alloca ptr, align 8
  %count.addr = alloca i32, align 4
  %element_size.addr = alloca i64, align 8
  %new_size = alloca i32, align 4
  %new_capacity = alloca i32, align 4
  store ptr %self, ptr %self.addr, align 8, !tbaa !4
  store i32 %count, ptr %count.addr, align 4, !tbaa !25
  store i64 %element_size, ptr %element_size.addr, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(i64 4, ptr %new_size) #7
  %0 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %size = getelementptr inbounds %struct.VoidArray, ptr %0, i32 0, i32 1
  %1 = load i32, ptr %size, align 8, !tbaa !28
  %2 = load i32, ptr %count.addr, align 4, !tbaa !25
  %add = add i32 %1, %2
  store i32 %add, ptr %new_size, align 4, !tbaa !25
  %3 = load i32, ptr %new_size, align 4, !tbaa !25
  %4 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %capacity = getelementptr inbounds %struct.VoidArray, ptr %4, i32 0, i32 2
  %5 = load i32, ptr %capacity, align 4, !tbaa !29
  %cmp = icmp ugt i32 %3, %5
  br i1 %cmp, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %new_capacity) #7
  %6 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %capacity1 = getelementptr inbounds %struct.VoidArray, ptr %6, i32 0, i32 2
  %7 = load i32, ptr %capacity1, align 4, !tbaa !29
  %mul = mul i32 %7, 2
  store i32 %mul, ptr %new_capacity, align 4, !tbaa !25
  %8 = load i32, ptr %new_capacity, align 4, !tbaa !25
  %cmp2 = icmp ult i32 %8, 8
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  store i32 8, ptr %new_capacity, align 4, !tbaa !25
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  %9 = load i32, ptr %new_capacity, align 4, !tbaa !25
  %10 = load i32, ptr %new_size, align 4, !tbaa !25
  %cmp4 = icmp ult i32 %9, %10
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  %11 = load i32, ptr %new_size, align 4, !tbaa !25
  store i32 %11, ptr %new_capacity, align 4, !tbaa !25
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end
  %12 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %13 = load i64, ptr %element_size.addr, align 8, !tbaa !26
  %14 = load i32, ptr %new_capacity, align 4, !tbaa !25
  call void @array__reserve(ptr noundef %12, i64 noundef %13, i32 noundef %14)
  call void @llvm.lifetime.end.p0(i64 4, ptr %new_capacity) #7
  br label %if.end7

if.end7:                                          ; preds = %if.end6, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr %new_size) #7
  ret void
}

declare i32 @ts_node_start_byte(ptr noundef byval(%struct.TSNode) align 8) #3

declare i64 @ts_node_start_point(ptr noundef byval(%struct.TSNode) align 8) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define void @ts_tree_cursor_delete(ptr noundef %_self) #0 {
entry:
  %_self.addr = alloca ptr, align 8
  %self = alloca ptr, align 8
  store ptr %_self, ptr %_self.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %self) #7
  %0 = load ptr, ptr %_self.addr, align 8, !tbaa !4
  store ptr %0, ptr %self, align 8, !tbaa !4
  %1 = load ptr, ptr %self, align 8, !tbaa !4
  %stack = getelementptr inbounds %struct.TreeCursor, ptr %1, i32 0, i32 1
  call void @array__delete(ptr noundef %stack)
  call void @llvm.lifetime.end.p0(i64 8, ptr %self) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: inlinehint nounwind uwtable
define internal void @array__delete(ptr noundef %self) #2 {
entry:
  %self.addr = alloca ptr, align 8
  store ptr %self, ptr %self.addr, align 8, !tbaa !4
  %0 = load ptr, ptr @ts_current_free, align 8, !tbaa !4
  %1 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %contents = getelementptr inbounds %struct.VoidArray, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %contents, align 8, !tbaa !30
  call void %0(ptr noundef %2)
  %3 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %contents1 = getelementptr inbounds %struct.VoidArray, ptr %3, i32 0, i32 0
  store ptr null, ptr %contents1, align 8, !tbaa !30
  %4 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %size = getelementptr inbounds %struct.VoidArray, ptr %4, i32 0, i32 1
  store i32 0, ptr %size, align 8, !tbaa !28
  %5 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %capacity = getelementptr inbounds %struct.VoidArray, ptr %5, i32 0, i32 2
  store i32 0, ptr %capacity, align 4, !tbaa !29
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nounwind uwtable
define i32 @ts_tree_cursor_goto_first_child_internal(ptr noundef %_self) #0 {
entry:
  %retval = alloca i32, align 4
  %_self.addr = alloca ptr, align 8
  %self = alloca ptr, align 8
  %visible = alloca i8, align 1
  %entry1 = alloca %struct.TreeCursorEntry, align 8
  %iterator = alloca %struct.CursorChildIterator, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %_self, ptr %_self.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %self) #7
  %0 = load ptr, ptr %_self.addr, align 8, !tbaa !4
  store ptr %0, ptr %self, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 1, ptr %visible) #7
  call void @llvm.lifetime.start.p0(i64 32, ptr %entry1) #7
  call void @llvm.lifetime.start.p0(i64 48, ptr %iterator) #7
  %1 = load ptr, ptr %self, align 8, !tbaa !4
  call void @ts_tree_cursor_iterate_children(ptr sret(%struct.CursorChildIterator) align 8 %iterator, ptr noundef %1)
  br label %while.cond

while.cond:                                       ; preds = %if.end14, %entry
  %call = call zeroext i1 @ts_tree_cursor_child_iterator_next(ptr noundef %iterator, ptr noundef %entry1, ptr noundef %visible)
  br i1 %call, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i8, ptr %visible, align 1, !tbaa !31, !range !33, !noundef !34
  %tobool = trunc i8 %2 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %3 = load ptr, ptr %self, align 8, !tbaa !4
  %stack = getelementptr inbounds %struct.TreeCursor, ptr %3, i32 0, i32 1
  call void @array__grow(ptr noundef %stack, i32 noundef 1, i64 noundef 32)
  %4 = load ptr, ptr %self, align 8, !tbaa !4
  %stack2 = getelementptr inbounds %struct.TreeCursor, ptr %4, i32 0, i32 1
  %contents = getelementptr inbounds %struct.anon, ptr %stack2, i32 0, i32 0
  %5 = load ptr, ptr %contents, align 8, !tbaa !15
  %6 = load ptr, ptr %self, align 8, !tbaa !4
  %stack3 = getelementptr inbounds %struct.TreeCursor, ptr %6, i32 0, i32 1
  %size = getelementptr inbounds %struct.anon, ptr %stack3, i32 0, i32 1
  %7 = load i32, ptr %size, align 8, !tbaa !14
  %inc = add i32 %7, 1
  store i32 %inc, ptr %size, align 8, !tbaa !14
  %idxprom = zext i32 %7 to i64
  %arrayidx = getelementptr inbounds %struct.TreeCursorEntry, ptr %5, i64 %idxprom
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx, ptr align 8 %entry1, i64 32, i1 false), !tbaa.struct !24
  store i32 2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %while.body
  %subtree = getelementptr inbounds %struct.TreeCursorEntry, ptr %entry1, i32 0, i32 0
  %8 = load ptr, ptr %subtree, align 8, !tbaa !17
  %coerce.dive = getelementptr inbounds %union.Subtree, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %coerce.dive, align 8
  %call4 = call i32 @ts_subtree_visible_child_count(ptr %9)
  %cmp = icmp ugt i32 %call4, 0
  br i1 %cmp, label %if.then5, label %if.end14

if.then5:                                         ; preds = %if.end
  %10 = load ptr, ptr %self, align 8, !tbaa !4
  %stack6 = getelementptr inbounds %struct.TreeCursor, ptr %10, i32 0, i32 1
  call void @array__grow(ptr noundef %stack6, i32 noundef 1, i64 noundef 32)
  %11 = load ptr, ptr %self, align 8, !tbaa !4
  %stack7 = getelementptr inbounds %struct.TreeCursor, ptr %11, i32 0, i32 1
  %contents8 = getelementptr inbounds %struct.anon, ptr %stack7, i32 0, i32 0
  %12 = load ptr, ptr %contents8, align 8, !tbaa !15
  %13 = load ptr, ptr %self, align 8, !tbaa !4
  %stack9 = getelementptr inbounds %struct.TreeCursor, ptr %13, i32 0, i32 1
  %size10 = getelementptr inbounds %struct.anon, ptr %stack9, i32 0, i32 1
  %14 = load i32, ptr %size10, align 8, !tbaa !14
  %inc11 = add i32 %14, 1
  store i32 %inc11, ptr %size10, align 8, !tbaa !14
  %idxprom12 = zext i32 %14 to i64
  %arrayidx13 = getelementptr inbounds %struct.TreeCursorEntry, ptr %12, i64 %idxprom12
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx13, ptr align 8 %entry1, i64 32, i1 false), !tbaa.struct !24
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end14:                                         ; preds = %if.end
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 48, ptr %iterator) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr %entry1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr %visible) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %self) #7
  %15 = load i32, ptr %retval, align 4
  ret i32 %15
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @ts_tree_cursor_iterate_children(ptr noalias sret(%struct.CursorChildIterator) align 8 %agg.result, ptr noundef %self) #2 {
entry:
  %self.addr = alloca ptr, align 8
  %last_entry = alloca ptr, align 8
  %tmp.coerce = alloca { i64, i32 }, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %alias_sequence12 = alloca ptr, align 8
  store ptr %self, ptr %self.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %last_entry) #7
  %0 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %stack = getelementptr inbounds %struct.TreeCursor, ptr %0, i32 0, i32 1
  %size = getelementptr inbounds %struct.anon, ptr %stack, i32 0, i32 1
  %1 = load i32, ptr %size, align 8, !tbaa !14
  %sub = sub i32 %1, 1
  %2 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %stack1 = getelementptr inbounds %struct.TreeCursor, ptr %2, i32 0, i32 1
  %size2 = getelementptr inbounds %struct.anon, ptr %stack1, i32 0, i32 1
  %3 = load i32, ptr %size2, align 8, !tbaa !14
  %cmp = icmp ult i32 %sub, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 19, ptr noundef @__PRETTY_FUNCTION__.ts_tree_cursor_iterate_children) #8
  unreachable

if.end:                                           ; preds = %if.then
  %4 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %stack3 = getelementptr inbounds %struct.TreeCursor, ptr %4, i32 0, i32 1
  %contents = getelementptr inbounds %struct.anon, ptr %stack3, i32 0, i32 0
  %5 = load ptr, ptr %contents, align 8, !tbaa !15
  %6 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %stack4 = getelementptr inbounds %struct.TreeCursor, ptr %6, i32 0, i32 1
  %size5 = getelementptr inbounds %struct.anon, ptr %stack4, i32 0, i32 1
  %7 = load i32, ptr %size5, align 8, !tbaa !14
  %sub6 = sub i32 %7, 1
  %idxprom = zext i32 %sub6 to i64
  %arrayidx = getelementptr inbounds %struct.TreeCursorEntry, ptr %5, i64 %idxprom
  store ptr %arrayidx, ptr %last_entry, align 8, !tbaa !4
  %8 = load ptr, ptr %last_entry, align 8, !tbaa !4
  %subtree = getelementptr inbounds %struct.TreeCursorEntry, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %subtree, align 8, !tbaa !17
  %coerce.dive = getelementptr inbounds %union.Subtree, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %coerce.dive, align 8
  %call = call i32 @ts_subtree_child_count(ptr %10)
  %cmp7 = icmp eq i32 %call, 0
  br i1 %cmp7, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end
  %parent = getelementptr inbounds %struct.CursorChildIterator, ptr %agg.result, i32 0, i32 0
  store ptr null, ptr %parent, align 8, !tbaa !35
  %tree = getelementptr inbounds %struct.CursorChildIterator, ptr %agg.result, i32 0, i32 1
  %11 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %tree9 = getelementptr inbounds %struct.TreeCursor, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %tree9, align 8, !tbaa !10
  store ptr %12, ptr %tree, align 8, !tbaa !36
  %position = getelementptr inbounds %struct.CursorChildIterator, ptr %agg.result, i32 0, i32 2
  %call10 = call { i64, i32 } @length_zero()
  store { i64, i32 } %call10, ptr %tmp.coerce, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %position, ptr align 8 %tmp.coerce, i64 12, i1 false)
  %child_index = getelementptr inbounds %struct.CursorChildIterator, ptr %agg.result, i32 0, i32 3
  store i32 0, ptr %child_index, align 4, !tbaa !38
  %structural_child_index = getelementptr inbounds %struct.CursorChildIterator, ptr %agg.result, i32 0, i32 4
  store i32 0, ptr %structural_child_index, align 8, !tbaa !39
  %alias_sequence = getelementptr inbounds %struct.CursorChildIterator, ptr %agg.result, i32 0, i32 5
  store ptr null, ptr %alias_sequence, align 8, !tbaa !40
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end11:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %alias_sequence12) #7
  %13 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %tree13 = getelementptr inbounds %struct.TreeCursor, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %tree13, align 8, !tbaa !10
  %language = getelementptr inbounds %struct.TSTree, ptr %14, i32 0, i32 1
  %15 = load ptr, ptr %language, align 8, !tbaa !41
  %16 = load ptr, ptr %last_entry, align 8, !tbaa !4
  %subtree14 = getelementptr inbounds %struct.TreeCursorEntry, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %subtree14, align 8, !tbaa !17
  %18 = load ptr, ptr %17, align 8, !tbaa !35
  %19 = getelementptr inbounds %struct.SubtreeHeapData, ptr %18, i32 0, i32 9
  %production_id = getelementptr inbounds %struct.anon.0, ptr %19, i32 0, i32 5
  %20 = load i16, ptr %production_id, align 2, !tbaa !35
  %conv = zext i16 %20 to i32
  %call15 = call ptr @ts_language_alias_sequence(ptr noundef %15, i32 noundef %conv)
  store ptr %call15, ptr %alias_sequence12, align 8, !tbaa !4
  %parent16 = getelementptr inbounds %struct.CursorChildIterator, ptr %agg.result, i32 0, i32 0
  %21 = load ptr, ptr %last_entry, align 8, !tbaa !4
  %subtree17 = getelementptr inbounds %struct.TreeCursorEntry, ptr %21, i32 0, i32 0
  %22 = load ptr, ptr %subtree17, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %parent16, ptr align 8 %22, i64 8, i1 false), !tbaa.struct !43
  %tree18 = getelementptr inbounds %struct.CursorChildIterator, ptr %agg.result, i32 0, i32 1
  %23 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %tree19 = getelementptr inbounds %struct.TreeCursor, ptr %23, i32 0, i32 0
  %24 = load ptr, ptr %tree19, align 8, !tbaa !10
  store ptr %24, ptr %tree18, align 8, !tbaa !36
  %position20 = getelementptr inbounds %struct.CursorChildIterator, ptr %agg.result, i32 0, i32 2
  %25 = load ptr, ptr %last_entry, align 8, !tbaa !4
  %position21 = getelementptr inbounds %struct.TreeCursorEntry, ptr %25, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %position20, ptr align 8 %position21, i64 12, i1 false), !tbaa.struct !46
  %child_index22 = getelementptr inbounds %struct.CursorChildIterator, ptr %agg.result, i32 0, i32 3
  store i32 0, ptr %child_index22, align 4, !tbaa !38
  %structural_child_index23 = getelementptr inbounds %struct.CursorChildIterator, ptr %agg.result, i32 0, i32 4
  store i32 0, ptr %structural_child_index23, align 8, !tbaa !39
  %alias_sequence24 = getelementptr inbounds %struct.CursorChildIterator, ptr %agg.result, i32 0, i32 5
  %26 = load ptr, ptr %alias_sequence12, align 8, !tbaa !4
  store ptr %26, ptr %alias_sequence24, align 8, !tbaa !40
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %alias_sequence12) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then8
  call void @llvm.lifetime.end.p0(i64 8, ptr %last_entry) #7
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i1 @ts_tree_cursor_child_iterator_next(ptr noundef %self, ptr noundef %result, ptr noundef %visible) #2 {
entry:
  %retval = alloca i1, align 1
  %self.addr = alloca ptr, align 8
  %result.addr = alloca ptr, align 8
  %visible.addr = alloca ptr, align 8
  %child = alloca ptr, align 8
  %.compoundliteral = alloca %struct.TreeCursorEntry, align 8
  %extra = alloca i8, align 1
  %tmp = alloca %struct.Length, align 4
  %agg.tmp = alloca %struct.Length, align 4
  %tmp.coerce = alloca { i64, i32 }, align 8
  %position28.coerce = alloca { i64, i32 }, align 8
  %agg.tmp.coerce = alloca { i64, i32 }, align 4
  %tmp.coerce32 = alloca { i64, i32 }, align 8
  %next_child = alloca %union.Subtree, align 8
  %tmp60 = alloca %struct.Length, align 4
  %agg.tmp62 = alloca %struct.Length, align 4
  %tmp.coerce65 = alloca { i64, i32 }, align 8
  %position61.coerce = alloca { i64, i32 }, align 8
  %agg.tmp62.coerce = alloca { i64, i32 }, align 4
  %tmp.coerce67 = alloca { i64, i32 }, align 8
  store ptr %self, ptr %self.addr, align 8, !tbaa !4
  store ptr %result, ptr %result.addr, align 8, !tbaa !4
  store ptr %visible, ptr %visible.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %parent = getelementptr inbounds %struct.CursorChildIterator, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %parent, align 8, !tbaa !35
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %child_index = getelementptr inbounds %struct.CursorChildIterator, ptr %2, i32 0, i32 3
  %3 = load i32, ptr %child_index, align 4, !tbaa !38
  %4 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %parent1 = getelementptr inbounds %struct.CursorChildIterator, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %parent1, align 8, !tbaa !35
  %child_count = getelementptr inbounds %struct.SubtreeHeapData, ptr %5, i32 0, i32 5
  %6 = load i32, ptr %child_count, align 4, !tbaa !47
  %cmp = icmp eq i32 %3, %6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i1 false, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 8, ptr %child) #7
  %7 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %parent2 = getelementptr inbounds %struct.CursorChildIterator, ptr %7, i32 0, i32 0
  %bf.load = load i8, ptr %parent2, align 8
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = trunc i8 %bf.clear to i1
  br i1 %bf.cast, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %8 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %parent3 = getelementptr inbounds %struct.CursorChildIterator, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %parent3, align 8, !tbaa !35
  %10 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %parent4 = getelementptr inbounds %struct.CursorChildIterator, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %parent4, align 8, !tbaa !35
  %child_count5 = getelementptr inbounds %struct.SubtreeHeapData, ptr %11, i32 0, i32 5
  %12 = load i32, ptr %child_count5, align 4, !tbaa !47
  %idx.ext = zext i32 %12 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds %union.Subtree, ptr %9, i64 %idx.neg
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ null, %cond.true ], [ %add.ptr, %cond.false ]
  %13 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %child_index6 = getelementptr inbounds %struct.CursorChildIterator, ptr %13, i32 0, i32 3
  %14 = load i32, ptr %child_index6, align 4, !tbaa !38
  %idxprom = zext i32 %14 to i64
  %arrayidx = getelementptr inbounds %union.Subtree, ptr %cond, i64 %idxprom
  store ptr %arrayidx, ptr %child, align 8, !tbaa !4
  %15 = load ptr, ptr %result.addr, align 8, !tbaa !4
  %subtree = getelementptr inbounds %struct.TreeCursorEntry, ptr %.compoundliteral, i32 0, i32 0
  %16 = load ptr, ptr %child, align 8, !tbaa !4
  store ptr %16, ptr %subtree, align 8, !tbaa !17
  %position = getelementptr inbounds %struct.TreeCursorEntry, ptr %.compoundliteral, i32 0, i32 1
  %17 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %position7 = getelementptr inbounds %struct.CursorChildIterator, ptr %17, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %position, ptr align 8 %position7, i64 12, i1 false), !tbaa.struct !46
  %child_index8 = getelementptr inbounds %struct.TreeCursorEntry, ptr %.compoundliteral, i32 0, i32 2
  %18 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %child_index9 = getelementptr inbounds %struct.CursorChildIterator, ptr %18, i32 0, i32 3
  %19 = load i32, ptr %child_index9, align 4, !tbaa !38
  store i32 %19, ptr %child_index8, align 4, !tbaa !22
  %structural_child_index = getelementptr inbounds %struct.TreeCursorEntry, ptr %.compoundliteral, i32 0, i32 3
  %20 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %structural_child_index10 = getelementptr inbounds %struct.CursorChildIterator, ptr %20, i32 0, i32 4
  %21 = load i32, ptr %structural_child_index10, align 8, !tbaa !39
  store i32 %21, ptr %structural_child_index, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %15, ptr align 8 %.compoundliteral, i64 32, i1 false), !tbaa.struct !24
  %22 = load ptr, ptr %child, align 8, !tbaa !4
  %coerce.dive = getelementptr inbounds %union.Subtree, ptr %22, i32 0, i32 0
  %23 = load ptr, ptr %coerce.dive, align 8
  %call = call zeroext i1 @ts_subtree_visible(ptr %23)
  %24 = load ptr, ptr %visible.addr, align 8, !tbaa !4
  %frombool = zext i1 %call to i8
  store i8 %frombool, ptr %24, align 1, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 1, ptr %extra) #7
  %25 = load ptr, ptr %child, align 8, !tbaa !4
  %coerce.dive11 = getelementptr inbounds %union.Subtree, ptr %25, i32 0, i32 0
  %26 = load ptr, ptr %coerce.dive11, align 8
  %call12 = call zeroext i1 @ts_subtree_extra(ptr %26)
  %frombool13 = zext i1 %call12 to i8
  store i8 %frombool13, ptr %extra, align 1, !tbaa !31
  %27 = load i8, ptr %extra, align 1, !tbaa !31, !range !33, !noundef !34
  %tobool14 = trunc i8 %27 to i1
  br i1 %tobool14, label %if.end26, label %land.lhs.true

land.lhs.true:                                    ; preds = %cond.end
  %28 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %alias_sequence = getelementptr inbounds %struct.CursorChildIterator, ptr %28, i32 0, i32 5
  %29 = load ptr, ptr %alias_sequence, align 8, !tbaa !40
  %tobool15 = icmp ne ptr %29, null
  br i1 %tobool15, label %if.then16, label %if.end26

if.then16:                                        ; preds = %land.lhs.true
  %30 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %alias_sequence17 = getelementptr inbounds %struct.CursorChildIterator, ptr %30, i32 0, i32 5
  %31 = load ptr, ptr %alias_sequence17, align 8, !tbaa !40
  %32 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %structural_child_index18 = getelementptr inbounds %struct.CursorChildIterator, ptr %32, i32 0, i32 4
  %33 = load i32, ptr %structural_child_index18, align 8, !tbaa !39
  %idxprom19 = zext i32 %33 to i64
  %arrayidx20 = getelementptr inbounds i16, ptr %31, i64 %idxprom19
  %34 = load i16, ptr %arrayidx20, align 2, !tbaa !44
  %conv = zext i16 %34 to i32
  %35 = load ptr, ptr %visible.addr, align 8, !tbaa !4
  %36 = load i8, ptr %35, align 1, !tbaa !31, !range !33, !noundef !34
  %tobool21 = trunc i8 %36 to i1
  %conv22 = zext i1 %tobool21 to i32
  %or = or i32 %conv22, %conv
  %tobool23 = icmp ne i32 %or, 0
  %frombool24 = zext i1 %tobool23 to i8
  store i8 %frombool24, ptr %35, align 1, !tbaa !31
  %37 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %structural_child_index25 = getelementptr inbounds %struct.CursorChildIterator, ptr %37, i32 0, i32 4
  %38 = load i32, ptr %structural_child_index25, align 8, !tbaa !39
  %inc = add i32 %38, 1
  store i32 %inc, ptr %structural_child_index25, align 8, !tbaa !39
  br label %if.end26

if.end26:                                         ; preds = %if.then16, %land.lhs.true, %cond.end
  %39 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %position27 = getelementptr inbounds %struct.CursorChildIterator, ptr %39, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr %tmp) #7
  %40 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %position28 = getelementptr inbounds %struct.CursorChildIterator, ptr %40, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr %agg.tmp) #7
  %41 = load ptr, ptr %child, align 8, !tbaa !4
  %coerce.dive29 = getelementptr inbounds %union.Subtree, ptr %41, i32 0, i32 0
  %42 = load ptr, ptr %coerce.dive29, align 8
  %call30 = call { i64, i32 } @ts_subtree_size(ptr %42)
  store { i64, i32 } %call30, ptr %tmp.coerce, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %agg.tmp, ptr align 8 %tmp.coerce, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %position28.coerce, ptr align 8 %position28, i64 12, i1 false)
  %43 = getelementptr inbounds { i64, i32 }, ptr %position28.coerce, i32 0, i32 0
  %44 = load i64, ptr %43, align 8
  %45 = getelementptr inbounds { i64, i32 }, ptr %position28.coerce, i32 0, i32 1
  %46 = load i32, ptr %45, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %agg.tmp.coerce, ptr align 4 %agg.tmp, i64 12, i1 false)
  %47 = getelementptr inbounds { i64, i32 }, ptr %agg.tmp.coerce, i32 0, i32 0
  %48 = load i64, ptr %47, align 4
  %49 = getelementptr inbounds { i64, i32 }, ptr %agg.tmp.coerce, i32 0, i32 1
  %50 = load i32, ptr %49, align 4
  %call31 = call { i64, i32 } @length_add(i64 %44, i32 %46, i64 %48, i32 %50)
  store { i64, i32 } %call31, ptr %tmp.coerce32, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %tmp, ptr align 8 %tmp.coerce32, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(i64 12, ptr %agg.tmp) #7
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %position27, ptr align 4 %tmp, i64 12, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 12, ptr %tmp) #7
  %51 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %child_index33 = getelementptr inbounds %struct.CursorChildIterator, ptr %51, i32 0, i32 3
  %52 = load i32, ptr %child_index33, align 4, !tbaa !38
  %inc34 = add i32 %52, 1
  store i32 %inc34, ptr %child_index33, align 4, !tbaa !38
  %53 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %child_index35 = getelementptr inbounds %struct.CursorChildIterator, ptr %53, i32 0, i32 3
  %54 = load i32, ptr %child_index35, align 4, !tbaa !38
  %55 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %parent36 = getelementptr inbounds %struct.CursorChildIterator, ptr %55, i32 0, i32 0
  %56 = load ptr, ptr %parent36, align 8, !tbaa !35
  %child_count37 = getelementptr inbounds %struct.SubtreeHeapData, ptr %56, i32 0, i32 5
  %57 = load i32, ptr %child_count37, align 4, !tbaa !47
  %cmp38 = icmp ult i32 %54, %57
  br i1 %cmp38, label %if.then40, label %if.end68

if.then40:                                        ; preds = %if.end26
  call void @llvm.lifetime.start.p0(i64 8, ptr %next_child) #7
  %58 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %parent41 = getelementptr inbounds %struct.CursorChildIterator, ptr %58, i32 0, i32 0
  %bf.load42 = load i8, ptr %parent41, align 8
  %bf.clear43 = and i8 %bf.load42, 1
  %bf.cast44 = trunc i8 %bf.clear43 to i1
  br i1 %bf.cast44, label %cond.true46, label %cond.false47

cond.true46:                                      ; preds = %if.then40
  br label %cond.end54

cond.false47:                                     ; preds = %if.then40
  %59 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %parent48 = getelementptr inbounds %struct.CursorChildIterator, ptr %59, i32 0, i32 0
  %60 = load ptr, ptr %parent48, align 8, !tbaa !35
  %61 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %parent49 = getelementptr inbounds %struct.CursorChildIterator, ptr %61, i32 0, i32 0
  %62 = load ptr, ptr %parent49, align 8, !tbaa !35
  %child_count50 = getelementptr inbounds %struct.SubtreeHeapData, ptr %62, i32 0, i32 5
  %63 = load i32, ptr %child_count50, align 4, !tbaa !47
  %idx.ext51 = zext i32 %63 to i64
  %idx.neg52 = sub i64 0, %idx.ext51
  %add.ptr53 = getelementptr inbounds %union.Subtree, ptr %60, i64 %idx.neg52
  br label %cond.end54

cond.end54:                                       ; preds = %cond.false47, %cond.true46
  %cond55 = phi ptr [ null, %cond.true46 ], [ %add.ptr53, %cond.false47 ]
  %64 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %child_index56 = getelementptr inbounds %struct.CursorChildIterator, ptr %64, i32 0, i32 3
  %65 = load i32, ptr %child_index56, align 4, !tbaa !38
  %idxprom57 = zext i32 %65 to i64
  %arrayidx58 = getelementptr inbounds %union.Subtree, ptr %cond55, i64 %idxprom57
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %next_child, ptr align 8 %arrayidx58, i64 8, i1 false), !tbaa.struct !43
  %66 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %position59 = getelementptr inbounds %struct.CursorChildIterator, ptr %66, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr %tmp60) #7
  %67 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %position61 = getelementptr inbounds %struct.CursorChildIterator, ptr %67, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr %agg.tmp62) #7
  %coerce.dive63 = getelementptr inbounds %union.Subtree, ptr %next_child, i32 0, i32 0
  %68 = load ptr, ptr %coerce.dive63, align 8
  %call64 = call { i64, i32 } @ts_subtree_padding(ptr %68)
  store { i64, i32 } %call64, ptr %tmp.coerce65, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %agg.tmp62, ptr align 8 %tmp.coerce65, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %position61.coerce, ptr align 8 %position61, i64 12, i1 false)
  %69 = getelementptr inbounds { i64, i32 }, ptr %position61.coerce, i32 0, i32 0
  %70 = load i64, ptr %69, align 8
  %71 = getelementptr inbounds { i64, i32 }, ptr %position61.coerce, i32 0, i32 1
  %72 = load i32, ptr %71, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %agg.tmp62.coerce, ptr align 4 %agg.tmp62, i64 12, i1 false)
  %73 = getelementptr inbounds { i64, i32 }, ptr %agg.tmp62.coerce, i32 0, i32 0
  %74 = load i64, ptr %73, align 4
  %75 = getelementptr inbounds { i64, i32 }, ptr %agg.tmp62.coerce, i32 0, i32 1
  %76 = load i32, ptr %75, align 4
  %call66 = call { i64, i32 } @length_add(i64 %70, i32 %72, i64 %74, i32 %76)
  store { i64, i32 } %call66, ptr %tmp.coerce67, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %tmp60, ptr align 8 %tmp.coerce67, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(i64 12, ptr %agg.tmp62) #7
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %position59, ptr align 4 %tmp60, i64 12, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 12, ptr %tmp60) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %next_child) #7
  br label %if.end68

if.end68:                                         ; preds = %cond.end54, %if.end26
  store i1 true, ptr %retval, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr %extra) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %child) #7
  br label %return

return:                                           ; preds = %if.end68, %if.then
  %77 = load i1, ptr %retval, align 1
  ret i1 %77
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @ts_subtree_visible_child_count(ptr %self.coerce) #2 {
entry:
  %retval = alloca i32, align 4
  %self = alloca %union.Subtree, align 8
  %coerce.dive = getelementptr inbounds %union.Subtree, ptr %self, i32 0, i32 0
  store ptr %self.coerce, ptr %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %union.Subtree, ptr %self, i32 0, i32 0
  %0 = load ptr, ptr %coerce.dive1, align 8
  %call = call i32 @ts_subtree_child_count(ptr %0)
  %cmp = icmp ugt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %self, align 8, !tbaa !35
  %2 = getelementptr inbounds %struct.SubtreeHeapData, ptr %1, i32 0, i32 9
  %visible_child_count = getelementptr inbounds %struct.anon.0, ptr %2, i32 0, i32 0
  %3 = load i32, ptr %visible_child_count, align 8, !tbaa !35
  store i32 %3, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %4 = load i32, ptr %retval, align 4
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define zeroext i1 @ts_tree_cursor_goto_first_child(ptr noundef %self) #0 {
entry:
  %retval = alloca i1, align 1
  %self.addr = alloca ptr, align 8
  store ptr %self, ptr %self.addr, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %sw.bb, %entry
  %0 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %call = call i32 @ts_tree_cursor_goto_first_child_internal(ptr noundef %0)
  switch i32 %call, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
  ]

sw.bb:                                            ; preds = %for.cond
  br label %for.cond

sw.bb1:                                           ; preds = %for.cond
  store i1 true, ptr %retval, align 1
  br label %return

sw.default:                                       ; preds = %for.cond
  store i1 false, ptr %retval, align 1
  br label %return

return:                                           ; preds = %sw.default, %sw.bb1
  %1 = load i1, ptr %retval, align 1
  ret i1 %1
}

; Function Attrs: nounwind uwtable
define i64 @ts_tree_cursor_goto_first_child_for_byte(ptr noundef %self, i32 noundef %goal_byte) #0 {
entry:
  %self.addr = alloca ptr, align 8
  %goal_byte.addr = alloca i32, align 4
  %.compoundliteral = alloca %struct.TSPoint, align 4
  store ptr %self, ptr %self.addr, align 8, !tbaa !4
  store i32 %goal_byte, ptr %goal_byte.addr, align 4, !tbaa !25
  %0 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %1 = load i32, ptr %goal_byte.addr, align 4, !tbaa !25
  %row = getelementptr inbounds %struct.TSPoint, ptr %.compoundliteral, i32 0, i32 0
  store i32 0, ptr %row, align 4, !tbaa !49
  %column = getelementptr inbounds %struct.TSPoint, ptr %.compoundliteral, i32 0, i32 1
  store i32 0, ptr %column, align 4, !tbaa !50
  %2 = load i64, ptr %.compoundliteral, align 4
  %call = call i64 @ts_tree_cursor_goto_first_child_for_byte_and_point(ptr noundef %0, i32 noundef %1, i64 %2)
  ret i64 %call
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @ts_tree_cursor_goto_first_child_for_byte_and_point(ptr noundef %_self, i32 noundef %goal_byte, i64 %goal_point.coerce) #2 {
entry:
  %retval = alloca i64, align 8
  %goal_point = alloca %struct.TSPoint, align 4
  %_self.addr = alloca ptr, align 8
  %goal_byte.addr = alloca i32, align 4
  %self = alloca ptr, align 8
  %initial_size = alloca i32, align 4
  %visible_child_index = alloca i32, align 4
  %did_descend = alloca i8, align 1
  %visible = alloca i8, align 1
  %entry1 = alloca %struct.TreeCursorEntry, align 8
  %iterator = alloca %struct.CursorChildIterator, align 8
  %entry_end = alloca %struct.Length, align 4
  %agg.tmp = alloca %struct.Length, align 4
  %tmp.coerce = alloca { i64, i32 }, align 8
  %position.coerce = alloca { i64, i32 }, align 8
  %agg.tmp.coerce = alloca { i64, i32 }, align 4
  %tmp.coerce4 = alloca { i64, i32 }, align 8
  %at_goal = alloca i8, align 1
  %visible_child_count = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %goal_point.coerce, ptr %goal_point, align 4
  store ptr %_self, ptr %_self.addr, align 8, !tbaa !4
  store i32 %goal_byte, ptr %goal_byte.addr, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 8, ptr %self) #7
  %0 = load ptr, ptr %_self.addr, align 8, !tbaa !4
  store ptr %0, ptr %self, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %initial_size) #7
  %1 = load ptr, ptr %self, align 8, !tbaa !4
  %stack = getelementptr inbounds %struct.TreeCursor, ptr %1, i32 0, i32 1
  %size = getelementptr inbounds %struct.anon, ptr %stack, i32 0, i32 1
  %2 = load i32, ptr %size, align 8, !tbaa !14
  store i32 %2, ptr %initial_size, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 4, ptr %visible_child_index) #7
  store i32 0, ptr %visible_child_index, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 1, ptr %did_descend) #7
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  store i8 0, ptr %did_descend, align 1, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 1, ptr %visible) #7
  call void @llvm.lifetime.start.p0(i64 32, ptr %entry1) #7
  call void @llvm.lifetime.start.p0(i64 48, ptr %iterator) #7
  %3 = load ptr, ptr %self, align 8, !tbaa !4
  call void @ts_tree_cursor_iterate_children(ptr sret(%struct.CursorChildIterator) align 8 %iterator, ptr noundef %3)
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %do.body
  %call = call zeroext i1 @ts_tree_cursor_child_iterator_next(ptr noundef %iterator, ptr noundef %entry1, ptr noundef %visible)
  br i1 %call, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 12, ptr %entry_end) #7
  %position = getelementptr inbounds %struct.TreeCursorEntry, ptr %entry1, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 12, ptr %agg.tmp) #7
  %subtree = getelementptr inbounds %struct.TreeCursorEntry, ptr %entry1, i32 0, i32 0
  %4 = load ptr, ptr %subtree, align 8, !tbaa !17
  %coerce.dive = getelementptr inbounds %union.Subtree, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %coerce.dive, align 8
  %call2 = call { i64, i32 } @ts_subtree_size(ptr %5)
  store { i64, i32 } %call2, ptr %tmp.coerce, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %agg.tmp, ptr align 8 %tmp.coerce, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %position.coerce, ptr align 8 %position, i64 12, i1 false)
  %6 = getelementptr inbounds { i64, i32 }, ptr %position.coerce, i32 0, i32 0
  %7 = load i64, ptr %6, align 8
  %8 = getelementptr inbounds { i64, i32 }, ptr %position.coerce, i32 0, i32 1
  %9 = load i32, ptr %8, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %agg.tmp.coerce, ptr align 4 %agg.tmp, i64 12, i1 false)
  %10 = getelementptr inbounds { i64, i32 }, ptr %agg.tmp.coerce, i32 0, i32 0
  %11 = load i64, ptr %10, align 4
  %12 = getelementptr inbounds { i64, i32 }, ptr %agg.tmp.coerce, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %call3 = call { i64, i32 } @length_add(i64 %7, i32 %9, i64 %11, i32 %13)
  store { i64, i32 } %call3, ptr %tmp.coerce4, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %entry_end, ptr align 8 %tmp.coerce4, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(i64 12, ptr %agg.tmp) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr %at_goal) #7
  %bytes = getelementptr inbounds %struct.Length, ptr %entry_end, i32 0, i32 0
  %14 = load i32, ptr %bytes, align 4, !tbaa !21
  %15 = load i32, ptr %goal_byte.addr, align 4, !tbaa !25
  %cmp = icmp uge i32 %14, %15
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.body
  %extent = getelementptr inbounds %struct.Length, ptr %entry_end, i32 0, i32 1
  %16 = load i64, ptr %extent, align 4
  %17 = load i64, ptr %goal_point, align 4
  %call5 = call zeroext i1 @point_gte(i64 %16, i64 %17)
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.body
  %18 = phi i1 [ false, %while.body ], [ %call5, %land.rhs ]
  %frombool = zext i1 %18 to i8
  store i8 %frombool, ptr %at_goal, align 1, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 4, ptr %visible_child_count) #7
  %subtree6 = getelementptr inbounds %struct.TreeCursorEntry, ptr %entry1, i32 0, i32 0
  %19 = load ptr, ptr %subtree6, align 8, !tbaa !17
  %coerce.dive7 = getelementptr inbounds %union.Subtree, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %coerce.dive7, align 8
  %call8 = call i32 @ts_subtree_visible_child_count(ptr %20)
  store i32 %call8, ptr %visible_child_count, align 4, !tbaa !25
  %21 = load i8, ptr %at_goal, align 1, !tbaa !31, !range !33, !noundef !34
  %tobool = trunc i8 %21 to i1
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %land.end
  %22 = load i8, ptr %visible, align 1, !tbaa !31, !range !33, !noundef !34
  %tobool9 = trunc i8 %22 to i1
  br i1 %tobool9, label %if.then10, label %if.end

if.then10:                                        ; preds = %if.then
  %23 = load ptr, ptr %self, align 8, !tbaa !4
  %stack11 = getelementptr inbounds %struct.TreeCursor, ptr %23, i32 0, i32 1
  call void @array__grow(ptr noundef %stack11, i32 noundef 1, i64 noundef 32)
  %24 = load ptr, ptr %self, align 8, !tbaa !4
  %stack12 = getelementptr inbounds %struct.TreeCursor, ptr %24, i32 0, i32 1
  %contents = getelementptr inbounds %struct.anon, ptr %stack12, i32 0, i32 0
  %25 = load ptr, ptr %contents, align 8, !tbaa !15
  %26 = load ptr, ptr %self, align 8, !tbaa !4
  %stack13 = getelementptr inbounds %struct.TreeCursor, ptr %26, i32 0, i32 1
  %size14 = getelementptr inbounds %struct.anon, ptr %stack13, i32 0, i32 1
  %27 = load i32, ptr %size14, align 8, !tbaa !14
  %inc = add i32 %27, 1
  store i32 %inc, ptr %size14, align 8, !tbaa !14
  %idxprom = zext i32 %27 to i64
  %arrayidx = getelementptr inbounds %struct.TreeCursorEntry, ptr %25, i64 %idxprom
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx, ptr align 8 %entry1, i64 32, i1 false), !tbaa.struct !24
  %28 = load i32, ptr %visible_child_index, align 4, !tbaa !25
  %conv = zext i32 %28 to i64
  store i64 %conv, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then
  %29 = load i32, ptr %visible_child_count, align 4, !tbaa !25
  %cmp15 = icmp ugt i32 %29, 0
  br i1 %cmp15, label %if.then17, label %if.end26

if.then17:                                        ; preds = %if.end
  %30 = load ptr, ptr %self, align 8, !tbaa !4
  %stack18 = getelementptr inbounds %struct.TreeCursor, ptr %30, i32 0, i32 1
  call void @array__grow(ptr noundef %stack18, i32 noundef 1, i64 noundef 32)
  %31 = load ptr, ptr %self, align 8, !tbaa !4
  %stack19 = getelementptr inbounds %struct.TreeCursor, ptr %31, i32 0, i32 1
  %contents20 = getelementptr inbounds %struct.anon, ptr %stack19, i32 0, i32 0
  %32 = load ptr, ptr %contents20, align 8, !tbaa !15
  %33 = load ptr, ptr %self, align 8, !tbaa !4
  %stack21 = getelementptr inbounds %struct.TreeCursor, ptr %33, i32 0, i32 1
  %size22 = getelementptr inbounds %struct.anon, ptr %stack21, i32 0, i32 1
  %34 = load i32, ptr %size22, align 8, !tbaa !14
  %inc23 = add i32 %34, 1
  store i32 %inc23, ptr %size22, align 8, !tbaa !14
  %idxprom24 = zext i32 %34 to i64
  %arrayidx25 = getelementptr inbounds %struct.TreeCursorEntry, ptr %32, i64 %idxprom24
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx25, ptr align 8 %entry1, i64 32, i1 false), !tbaa.struct !24
  store i8 1, ptr %did_descend, align 1, !tbaa !31
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end26:                                         ; preds = %if.end
  br label %if.end32

if.else:                                          ; preds = %land.end
  %35 = load i8, ptr %visible, align 1, !tbaa !31, !range !33, !noundef !34
  %tobool27 = trunc i8 %35 to i1
  br i1 %tobool27, label %if.then28, label %if.else30

if.then28:                                        ; preds = %if.else
  %36 = load i32, ptr %visible_child_index, align 4, !tbaa !25
  %inc29 = add i32 %36, 1
  store i32 %inc29, ptr %visible_child_index, align 4, !tbaa !25
  br label %if.end31

if.else30:                                        ; preds = %if.else
  %37 = load i32, ptr %visible_child_count, align 4, !tbaa !25
  %38 = load i32, ptr %visible_child_index, align 4, !tbaa !25
  %add = add i32 %38, %37
  store i32 %add, ptr %visible_child_index, align 4, !tbaa !25
  br label %if.end31

if.end31:                                         ; preds = %if.else30, %if.then28
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %if.end26
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.then17, %if.then10
  call void @llvm.lifetime.end.p0(i64 4, ptr %visible_child_count) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr %at_goal) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr %entry_end) #7
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup35 [
    i32 0, label %cleanup.cont
    i32 5, label %while.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond

while.end:                                        ; preds = %cleanup, %while.cond
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup35

cleanup35:                                        ; preds = %while.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 48, ptr %iterator) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr %entry1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr %visible) #7
  %cleanup.dest38 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest38, label %cleanup43 [
    i32 0, label %cleanup.cont39
  ]

cleanup.cont39:                                   ; preds = %cleanup35
  br label %do.cond

do.cond:                                          ; preds = %cleanup.cont39
  %39 = load i8, ptr %did_descend, align 1, !tbaa !31, !range !33, !noundef !34
  %tobool40 = trunc i8 %39 to i1
  br i1 %tobool40, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %40 = load i32, ptr %initial_size, align 4, !tbaa !25
  %41 = load ptr, ptr %self, align 8, !tbaa !4
  %stack41 = getelementptr inbounds %struct.TreeCursor, ptr %41, i32 0, i32 1
  %size42 = getelementptr inbounds %struct.anon, ptr %stack41, i32 0, i32 1
  store i32 %40, ptr %size42, align 8, !tbaa !14
  store i64 -1, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup43

cleanup43:                                        ; preds = %do.end, %cleanup35
  call void @llvm.lifetime.end.p0(i64 1, ptr %did_descend) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %visible_child_index) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %initial_size) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %self) #7
  %42 = load i64, ptr %retval, align 8
  ret i64 %42
}

; Function Attrs: nounwind uwtable
define i64 @ts_tree_cursor_goto_first_child_for_point(ptr noundef %self, i64 %goal_point.coerce) #0 {
entry:
  %goal_point = alloca %struct.TSPoint, align 4
  %self.addr = alloca ptr, align 8
  store i64 %goal_point.coerce, ptr %goal_point, align 4
  store ptr %self, ptr %self.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %1 = load i64, ptr %goal_point, align 4
  %call = call i64 @ts_tree_cursor_goto_first_child_for_byte_and_point(ptr noundef %0, i32 noundef 0, i64 %1)
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define i32 @ts_tree_cursor_goto_next_sibling_internal(ptr noundef %_self) #0 {
entry:
  %retval = alloca i32, align 4
  %_self.addr = alloca ptr, align 8
  %self = alloca ptr, align 8
  %initial_size = alloca i32, align 4
  %entry3 = alloca %struct.TreeCursorEntry, align 8
  %iterator = alloca %struct.CursorChildIterator, align 8
  %visible = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %_self, ptr %_self.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %self) #7
  %0 = load ptr, ptr %_self.addr, align 8, !tbaa !4
  store ptr %0, ptr %self, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %initial_size) #7
  %1 = load ptr, ptr %self, align 8, !tbaa !4
  %stack = getelementptr inbounds %struct.TreeCursor, ptr %1, i32 0, i32 1
  %size = getelementptr inbounds %struct.anon, ptr %stack, i32 0, i32 1
  %2 = load i32, ptr %size, align 8, !tbaa !14
  store i32 %2, ptr %initial_size, align 4, !tbaa !25
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %entry
  %3 = load ptr, ptr %self, align 8, !tbaa !4
  %stack1 = getelementptr inbounds %struct.TreeCursor, ptr %3, i32 0, i32 1
  %size2 = getelementptr inbounds %struct.anon, ptr %stack1, i32 0, i32 1
  %4 = load i32, ptr %size2, align 8, !tbaa !14
  %cmp = icmp ugt i32 %4, 1
  br i1 %cmp, label %while.body, label %while.end40

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 32, ptr %entry3) #7
  %5 = load ptr, ptr %self, align 8, !tbaa !4
  %stack4 = getelementptr inbounds %struct.TreeCursor, ptr %5, i32 0, i32 1
  %contents = getelementptr inbounds %struct.anon, ptr %stack4, i32 0, i32 0
  %6 = load ptr, ptr %contents, align 8, !tbaa !15
  %7 = load ptr, ptr %self, align 8, !tbaa !4
  %stack5 = getelementptr inbounds %struct.TreeCursor, ptr %7, i32 0, i32 1
  %size6 = getelementptr inbounds %struct.anon, ptr %stack5, i32 0, i32 1
  %8 = load i32, ptr %size6, align 8, !tbaa !14
  %dec = add i32 %8, -1
  store i32 %dec, ptr %size6, align 8, !tbaa !14
  %idxprom = zext i32 %dec to i64
  %arrayidx = getelementptr inbounds %struct.TreeCursorEntry, ptr %6, i64 %idxprom
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %entry3, ptr align 8 %arrayidx, i64 32, i1 false), !tbaa.struct !24
  call void @llvm.lifetime.start.p0(i64 48, ptr %iterator) #7
  %9 = load ptr, ptr %self, align 8, !tbaa !4
  call void @ts_tree_cursor_iterate_children(ptr sret(%struct.CursorChildIterator) align 8 %iterator, ptr noundef %9)
  %child_index = getelementptr inbounds %struct.TreeCursorEntry, ptr %entry3, i32 0, i32 2
  %10 = load i32, ptr %child_index, align 4, !tbaa !22
  %child_index7 = getelementptr inbounds %struct.CursorChildIterator, ptr %iterator, i32 0, i32 3
  store i32 %10, ptr %child_index7, align 4, !tbaa !38
  %structural_child_index = getelementptr inbounds %struct.TreeCursorEntry, ptr %entry3, i32 0, i32 3
  %11 = load i32, ptr %structural_child_index, align 8, !tbaa !23
  %structural_child_index8 = getelementptr inbounds %struct.CursorChildIterator, ptr %iterator, i32 0, i32 4
  store i32 %11, ptr %structural_child_index8, align 8, !tbaa !39
  %position = getelementptr inbounds %struct.CursorChildIterator, ptr %iterator, i32 0, i32 2
  %position9 = getelementptr inbounds %struct.TreeCursorEntry, ptr %entry3, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %position, ptr align 8 %position9, i64 12, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.start.p0(i64 1, ptr %visible) #7
  store i8 0, ptr %visible, align 1, !tbaa !31
  %call = call zeroext i1 @ts_tree_cursor_child_iterator_next(ptr noundef %iterator, ptr noundef %entry3, ptr noundef %visible)
  %12 = load i8, ptr %visible, align 1, !tbaa !31, !range !33, !noundef !34
  %tobool = trunc i8 %12 to i1
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.body
  %13 = load ptr, ptr %self, align 8, !tbaa !4
  %stack10 = getelementptr inbounds %struct.TreeCursor, ptr %13, i32 0, i32 1
  %size11 = getelementptr inbounds %struct.anon, ptr %stack10, i32 0, i32 1
  %14 = load i32, ptr %size11, align 8, !tbaa !14
  %add = add i32 %14, 1
  %15 = load i32, ptr %initial_size, align 4, !tbaa !25
  %cmp12 = icmp ult i32 %add, %15
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %while.body
  br label %while.cond13

while.cond13:                                     ; preds = %if.end37, %if.end
  %call14 = call zeroext i1 @ts_tree_cursor_child_iterator_next(ptr noundef %iterator, ptr noundef %entry3, ptr noundef %visible)
  br i1 %call14, label %while.body15, label %while.end

while.body15:                                     ; preds = %while.cond13
  %16 = load i8, ptr %visible, align 1, !tbaa !31, !range !33, !noundef !34
  %tobool16 = trunc i8 %16 to i1
  br i1 %tobool16, label %if.then17, label %if.end25

if.then17:                                        ; preds = %while.body15
  %17 = load ptr, ptr %self, align 8, !tbaa !4
  %stack18 = getelementptr inbounds %struct.TreeCursor, ptr %17, i32 0, i32 1
  call void @array__grow(ptr noundef %stack18, i32 noundef 1, i64 noundef 32)
  %18 = load ptr, ptr %self, align 8, !tbaa !4
  %stack19 = getelementptr inbounds %struct.TreeCursor, ptr %18, i32 0, i32 1
  %contents20 = getelementptr inbounds %struct.anon, ptr %stack19, i32 0, i32 0
  %19 = load ptr, ptr %contents20, align 8, !tbaa !15
  %20 = load ptr, ptr %self, align 8, !tbaa !4
  %stack21 = getelementptr inbounds %struct.TreeCursor, ptr %20, i32 0, i32 1
  %size22 = getelementptr inbounds %struct.anon, ptr %stack21, i32 0, i32 1
  %21 = load i32, ptr %size22, align 8, !tbaa !14
  %inc = add i32 %21, 1
  store i32 %inc, ptr %size22, align 8, !tbaa !14
  %idxprom23 = zext i32 %21 to i64
  %arrayidx24 = getelementptr inbounds %struct.TreeCursorEntry, ptr %19, i64 %idxprom23
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx24, ptr align 8 %entry3, i64 32, i1 false), !tbaa.struct !24
  store i32 2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end25:                                         ; preds = %while.body15
  %subtree = getelementptr inbounds %struct.TreeCursorEntry, ptr %entry3, i32 0, i32 0
  %22 = load ptr, ptr %subtree, align 8, !tbaa !17
  %coerce.dive = getelementptr inbounds %union.Subtree, ptr %22, i32 0, i32 0
  %23 = load ptr, ptr %coerce.dive, align 8
  %call26 = call i32 @ts_subtree_visible_child_count(ptr %23)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.then28, label %if.end37

if.then28:                                        ; preds = %if.end25
  %24 = load ptr, ptr %self, align 8, !tbaa !4
  %stack29 = getelementptr inbounds %struct.TreeCursor, ptr %24, i32 0, i32 1
  call void @array__grow(ptr noundef %stack29, i32 noundef 1, i64 noundef 32)
  %25 = load ptr, ptr %self, align 8, !tbaa !4
  %stack30 = getelementptr inbounds %struct.TreeCursor, ptr %25, i32 0, i32 1
  %contents31 = getelementptr inbounds %struct.anon, ptr %stack30, i32 0, i32 0
  %26 = load ptr, ptr %contents31, align 8, !tbaa !15
  %27 = load ptr, ptr %self, align 8, !tbaa !4
  %stack32 = getelementptr inbounds %struct.TreeCursor, ptr %27, i32 0, i32 1
  %size33 = getelementptr inbounds %struct.anon, ptr %stack32, i32 0, i32 1
  %28 = load i32, ptr %size33, align 8, !tbaa !14
  %inc34 = add i32 %28, 1
  store i32 %inc34, ptr %size33, align 8, !tbaa !14
  %idxprom35 = zext i32 %28 to i64
  %arrayidx36 = getelementptr inbounds %struct.TreeCursorEntry, ptr %26, i64 %idxprom35
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx36, ptr align 8 %entry3, i64 32, i1 false), !tbaa.struct !24
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end37:                                         ; preds = %if.end25
  br label %while.cond13

while.end:                                        ; preds = %while.cond13
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then28, %if.then17, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %visible) #7
  call void @llvm.lifetime.end.p0(i64 48, ptr %iterator) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr %entry3) #7
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup43 [
    i32 0, label %cleanup.cont
    i32 3, label %while.end40
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond

while.end40:                                      ; preds = %cleanup, %while.cond
  %29 = load i32, ptr %initial_size, align 4, !tbaa !25
  %30 = load ptr, ptr %self, align 8, !tbaa !4
  %stack41 = getelementptr inbounds %struct.TreeCursor, ptr %30, i32 0, i32 1
  %size42 = getelementptr inbounds %struct.anon, ptr %stack41, i32 0, i32 1
  store i32 %29, ptr %size42, align 8, !tbaa !14
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup43

cleanup43:                                        ; preds = %while.end40, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %initial_size) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %self) #7
  %31 = load i32, ptr %retval, align 4
  ret i32 %31
}

; Function Attrs: nounwind uwtable
define zeroext i1 @ts_tree_cursor_goto_next_sibling(ptr noundef %self) #0 {
entry:
  %retval = alloca i1, align 1
  %self.addr = alloca ptr, align 8
  store ptr %self, ptr %self.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %call = call i32 @ts_tree_cursor_goto_next_sibling_internal(ptr noundef %0)
  switch i32 %call, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  %1 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %call1 = call zeroext i1 @ts_tree_cursor_goto_first_child(ptr noundef %1)
  store i1 true, ptr %retval, align 1
  br label %return

sw.bb2:                                           ; preds = %entry
  store i1 true, ptr %retval, align 1
  br label %return

sw.default:                                       ; preds = %entry
  store i1 false, ptr %retval, align 1
  br label %return

return:                                           ; preds = %sw.default, %sw.bb2, %sw.bb
  %2 = load i1, ptr %retval, align 1
  ret i1 %2
}

; Function Attrs: nounwind uwtable
define zeroext i1 @ts_tree_cursor_goto_parent(ptr noundef %_self) #0 {
entry:
  %retval = alloca i1, align 1
  %_self.addr = alloca ptr, align 8
  %self = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %entry1 = alloca ptr, align 8
  %parent_entry = alloca ptr, align 8
  store ptr %_self, ptr %_self.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %self) #7
  %0 = load ptr, ptr %_self.addr, align 8, !tbaa !4
  store ptr %0, ptr %self, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7
  %1 = load ptr, ptr %self, align 8, !tbaa !4
  %stack = getelementptr inbounds %struct.TreeCursor, ptr %1, i32 0, i32 1
  %size = getelementptr inbounds %struct.anon, ptr %stack, i32 0, i32 1
  %2 = load i32, ptr %size, align 8, !tbaa !14
  %sub = sub i32 %2, 2
  store i32 %sub, ptr %i, align 4, !tbaa !25
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, ptr %i, align 4, !tbaa !25
  %add = add i32 %3, 1
  %cmp = icmp ugt i32 %add, 0
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup27

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #7
  %4 = load ptr, ptr %self, align 8, !tbaa !4
  %stack2 = getelementptr inbounds %struct.TreeCursor, ptr %4, i32 0, i32 1
  %contents = getelementptr inbounds %struct.anon, ptr %stack2, i32 0, i32 0
  %5 = load ptr, ptr %contents, align 8, !tbaa !15
  %6 = load i32, ptr %i, align 4, !tbaa !25
  %idxprom = zext i32 %6 to i64
  %arrayidx = getelementptr inbounds %struct.TreeCursorEntry, ptr %5, i64 %idxprom
  store ptr %arrayidx, ptr %entry1, align 8, !tbaa !4
  %7 = load ptr, ptr %entry1, align 8, !tbaa !4
  %subtree = getelementptr inbounds %struct.TreeCursorEntry, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %subtree, align 8, !tbaa !17
  %coerce.dive = getelementptr inbounds %union.Subtree, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %coerce.dive, align 8
  %call = call zeroext i1 @ts_subtree_visible(ptr %9)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %10 = load i32, ptr %i, align 4, !tbaa !25
  %add3 = add i32 %10, 1
  %11 = load ptr, ptr %self, align 8, !tbaa !4
  %stack4 = getelementptr inbounds %struct.TreeCursor, ptr %11, i32 0, i32 1
  %size5 = getelementptr inbounds %struct.anon, ptr %stack4, i32 0, i32 1
  store i32 %add3, ptr %size5, align 8, !tbaa !14
  store i1 true, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup24

if.end:                                           ; preds = %for.body
  %12 = load i32, ptr %i, align 4, !tbaa !25
  %cmp6 = icmp ugt i32 %12, 0
  br i1 %cmp6, label %land.lhs.true, label %if.end23

land.lhs.true:                                    ; preds = %if.end
  %13 = load ptr, ptr %entry1, align 8, !tbaa !4
  %subtree7 = getelementptr inbounds %struct.TreeCursorEntry, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %subtree7, align 8, !tbaa !17
  %coerce.dive8 = getelementptr inbounds %union.Subtree, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %coerce.dive8, align 8
  %call9 = call zeroext i1 @ts_subtree_extra(ptr %15)
  br i1 %call9, label %if.end23, label %if.then10

if.then10:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent_entry) #7
  %16 = load ptr, ptr %self, align 8, !tbaa !4
  %stack11 = getelementptr inbounds %struct.TreeCursor, ptr %16, i32 0, i32 1
  %contents12 = getelementptr inbounds %struct.anon, ptr %stack11, i32 0, i32 0
  %17 = load ptr, ptr %contents12, align 8, !tbaa !15
  %18 = load i32, ptr %i, align 4, !tbaa !25
  %sub13 = sub i32 %18, 1
  %idxprom14 = zext i32 %sub13 to i64
  %arrayidx15 = getelementptr inbounds %struct.TreeCursorEntry, ptr %17, i64 %idxprom14
  store ptr %arrayidx15, ptr %parent_entry, align 8, !tbaa !4
  %19 = load ptr, ptr %self, align 8, !tbaa !4
  %tree = getelementptr inbounds %struct.TreeCursor, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %tree, align 8, !tbaa !10
  %language = getelementptr inbounds %struct.TSTree, ptr %20, i32 0, i32 1
  %21 = load ptr, ptr %language, align 8, !tbaa !41
  %22 = load ptr, ptr %parent_entry, align 8, !tbaa !4
  %subtree16 = getelementptr inbounds %struct.TreeCursorEntry, ptr %22, i32 0, i32 0
  %23 = load ptr, ptr %subtree16, align 8, !tbaa !17
  %24 = load ptr, ptr %23, align 8, !tbaa !35
  %25 = getelementptr inbounds %struct.SubtreeHeapData, ptr %24, i32 0, i32 9
  %production_id = getelementptr inbounds %struct.anon.0, ptr %25, i32 0, i32 5
  %26 = load i16, ptr %production_id, align 2, !tbaa !35
  %conv = zext i16 %26 to i32
  %27 = load ptr, ptr %entry1, align 8, !tbaa !4
  %structural_child_index = getelementptr inbounds %struct.TreeCursorEntry, ptr %27, i32 0, i32 3
  %28 = load i32, ptr %structural_child_index, align 8, !tbaa !23
  %call17 = call zeroext i16 @ts_language_alias_at(ptr noundef %21, i32 noundef %conv, i32 noundef %28)
  %tobool = icmp ne i16 %call17, 0
  br i1 %tobool, label %if.then18, label %if.end22

if.then18:                                        ; preds = %if.then10
  %29 = load i32, ptr %i, align 4, !tbaa !25
  %add19 = add i32 %29, 1
  %30 = load ptr, ptr %self, align 8, !tbaa !4
  %stack20 = getelementptr inbounds %struct.TreeCursor, ptr %30, i32 0, i32 1
  %size21 = getelementptr inbounds %struct.anon, ptr %stack20, i32 0, i32 1
  store i32 %add19, ptr %size21, align 8, !tbaa !14
  store i1 true, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end22:                                         ; preds = %if.then10
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.then18
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent_entry) #7
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup24 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end23

if.end23:                                         ; preds = %cleanup.cont, %land.lhs.true, %if.end
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup24

cleanup24:                                        ; preds = %if.end23, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #7
  %cleanup.dest25 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest25, label %cleanup27 [
    i32 0, label %cleanup.cont26
  ]

cleanup.cont26:                                   ; preds = %cleanup24
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont26
  %31 = load i32, ptr %i, align 4, !tbaa !25
  %dec = add i32 %31, -1
  store i32 %dec, ptr %i, align 4, !tbaa !25
  br label %for.cond

cleanup27:                                        ; preds = %cleanup24, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7
  %cleanup.dest28 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest28, label %cleanup29 [
    i32 2, label %for.end
  ]

for.end:                                          ; preds = %cleanup27
  store i1 false, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup29

cleanup29:                                        ; preds = %for.end, %cleanup27
  call void @llvm.lifetime.end.p0(i64 8, ptr %self) #7
  %32 = load i1, ptr %retval, align 1
  ret i1 %32
}

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i1 @ts_subtree_visible(ptr %self.coerce) #2 {
entry:
  %self = alloca %union.Subtree, align 8
  %coerce.dive = getelementptr inbounds %union.Subtree, ptr %self, i32 0, i32 0
  store ptr %self.coerce, ptr %coerce.dive, align 8
  %bf.load = load i8, ptr %self, align 8
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = trunc i8 %bf.clear to i1
  br i1 %bf.cast, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %bf.load1 = load i8, ptr %self, align 8
  %bf.lshr = lshr i8 %bf.load1, 1
  %bf.clear2 = and i8 %bf.lshr, 1
  %bf.cast3 = trunc i8 %bf.clear2 to i1
  %conv = zext i1 %bf.cast3 to i32
  br label %cond.end

cond.false:                                       ; preds = %entry
  %0 = load ptr, ptr %self, align 8, !tbaa !35
  %visible = getelementptr inbounds %struct.SubtreeHeapData, ptr %0, i32 0, i32 8
  %bf.load4 = load i16, ptr %visible, align 4
  %bf.clear5 = and i16 %bf.load4, 1
  %bf.cast6 = trunc i16 %bf.clear5 to i1
  %conv7 = zext i1 %bf.cast6 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv7, %cond.false ]
  %tobool = icmp ne i32 %cond, 0
  ret i1 %tobool
}

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i1 @ts_subtree_extra(ptr %self.coerce) #2 {
entry:
  %self = alloca %union.Subtree, align 8
  %coerce.dive = getelementptr inbounds %union.Subtree, ptr %self, i32 0, i32 0
  store ptr %self.coerce, ptr %coerce.dive, align 8
  %bf.load = load i8, ptr %self, align 8
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = trunc i8 %bf.clear to i1
  br i1 %bf.cast, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %bf.load1 = load i8, ptr %self, align 8
  %bf.lshr = lshr i8 %bf.load1, 3
  %bf.clear2 = and i8 %bf.lshr, 1
  %bf.cast3 = trunc i8 %bf.clear2 to i1
  %conv = zext i1 %bf.cast3 to i32
  br label %cond.end

cond.false:                                       ; preds = %entry
  %0 = load ptr, ptr %self, align 8, !tbaa !35
  %extra = getelementptr inbounds %struct.SubtreeHeapData, ptr %0, i32 0, i32 8
  %bf.load4 = load i16, ptr %extra, align 4
  %bf.lshr5 = lshr i16 %bf.load4, 2
  %bf.clear6 = and i16 %bf.lshr5, 1
  %bf.cast7 = trunc i16 %bf.clear6 to i1
  %conv8 = zext i1 %bf.cast7 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv8, %cond.false ]
  %tobool = icmp ne i32 %cond, 0
  ret i1 %tobool
}

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i16 @ts_language_alias_at(ptr noundef %self, i32 noundef %production_id, i32 noundef %child_index) #2 {
entry:
  %self.addr = alloca ptr, align 8
  %production_id.addr = alloca i32, align 4
  %child_index.addr = alloca i32, align 4
  store ptr %self, ptr %self.addr, align 8, !tbaa !4
  store i32 %production_id, ptr %production_id.addr, align 4, !tbaa !25
  store i32 %child_index, ptr %child_index.addr, align 4, !tbaa !25
  %0 = load i32, ptr %production_id.addr, align 4, !tbaa !25
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %alias_sequences = getelementptr inbounds %struct.TSLanguage, ptr %1, i32 0, i32 21
  %2 = load ptr, ptr %alias_sequences, align 8, !tbaa !51
  %3 = load i32, ptr %production_id.addr, align 4, !tbaa !25
  %4 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %max_alias_sequence_length = getelementptr inbounds %struct.TSLanguage, ptr %4, i32 0, i32 9
  %5 = load i16, ptr %max_alias_sequence_length, align 4, !tbaa !54
  %conv = zext i16 %5 to i32
  %mul = mul i32 %3, %conv
  %6 = load i32, ptr %child_index.addr, align 4, !tbaa !25
  %add = add i32 %mul, %6
  %idxprom = zext i32 %add to i64
  %arrayidx = getelementptr inbounds i16, ptr %2, i64 %idxprom
  %7 = load i16, ptr %arrayidx, align 2, !tbaa !44
  %conv1 = zext i16 %7 to i32
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv1, %cond.true ], [ 0, %cond.false ]
  %conv2 = trunc i32 %cond to i16
  ret i16 %conv2
}

; Function Attrs: nounwind uwtable
define void @ts_tree_cursor_current_node(ptr noalias sret(%struct.TSNode) align 8 %agg.result, ptr noundef %_self) #0 {
entry:
  %_self.addr = alloca ptr, align 8
  %self = alloca ptr, align 8
  %last_entry = alloca ptr, align 8
  %alias_symbol = alloca i16, align 2
  %parent_entry = alloca ptr, align 8
  %position.coerce = alloca { i64, i32 }, align 8
  store ptr %_self, ptr %_self.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %self) #7
  %0 = load ptr, ptr %_self.addr, align 8, !tbaa !4
  store ptr %0, ptr %self, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %last_entry) #7
  %1 = load ptr, ptr %self, align 8, !tbaa !4
  %stack = getelementptr inbounds %struct.TreeCursor, ptr %1, i32 0, i32 1
  %size = getelementptr inbounds %struct.anon, ptr %stack, i32 0, i32 1
  %2 = load i32, ptr %size, align 8, !tbaa !14
  %sub = sub i32 %2, 1
  %3 = load ptr, ptr %self, align 8, !tbaa !4
  %stack1 = getelementptr inbounds %struct.TreeCursor, ptr %3, i32 0, i32 1
  %size2 = getelementptr inbounds %struct.anon, ptr %stack1, i32 0, i32 1
  %4 = load i32, ptr %size2, align 8, !tbaa !14
  %cmp = icmp ult i32 %sub, %4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 252, ptr noundef @__PRETTY_FUNCTION__.ts_tree_cursor_current_node) #8
  unreachable

if.end:                                           ; preds = %if.then
  %5 = load ptr, ptr %self, align 8, !tbaa !4
  %stack3 = getelementptr inbounds %struct.TreeCursor, ptr %5, i32 0, i32 1
  %contents = getelementptr inbounds %struct.anon, ptr %stack3, i32 0, i32 0
  %6 = load ptr, ptr %contents, align 8, !tbaa !15
  %7 = load ptr, ptr %self, align 8, !tbaa !4
  %stack4 = getelementptr inbounds %struct.TreeCursor, ptr %7, i32 0, i32 1
  %size5 = getelementptr inbounds %struct.anon, ptr %stack4, i32 0, i32 1
  %8 = load i32, ptr %size5, align 8, !tbaa !14
  %sub6 = sub i32 %8, 1
  %idxprom = zext i32 %sub6 to i64
  %arrayidx = getelementptr inbounds %struct.TreeCursorEntry, ptr %6, i64 %idxprom
  store ptr %arrayidx, ptr %last_entry, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 2, ptr %alias_symbol) #7
  store i16 0, ptr %alias_symbol, align 2, !tbaa !44
  %9 = load ptr, ptr %self, align 8, !tbaa !4
  %stack7 = getelementptr inbounds %struct.TreeCursor, ptr %9, i32 0, i32 1
  %size8 = getelementptr inbounds %struct.anon, ptr %stack7, i32 0, i32 1
  %10 = load i32, ptr %size8, align 8, !tbaa !14
  %cmp9 = icmp ugt i32 %10, 1
  br i1 %cmp9, label %land.lhs.true, label %if.end20

land.lhs.true:                                    ; preds = %if.end
  %11 = load ptr, ptr %last_entry, align 8, !tbaa !4
  %subtree = getelementptr inbounds %struct.TreeCursorEntry, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %subtree, align 8, !tbaa !17
  %coerce.dive = getelementptr inbounds %union.Subtree, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %coerce.dive, align 8
  %call = call zeroext i1 @ts_subtree_extra(ptr %13)
  br i1 %call, label %if.end20, label %if.then10

if.then10:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent_entry) #7
  %14 = load ptr, ptr %self, align 8, !tbaa !4
  %stack11 = getelementptr inbounds %struct.TreeCursor, ptr %14, i32 0, i32 1
  %contents12 = getelementptr inbounds %struct.anon, ptr %stack11, i32 0, i32 0
  %15 = load ptr, ptr %contents12, align 8, !tbaa !15
  %16 = load ptr, ptr %self, align 8, !tbaa !4
  %stack13 = getelementptr inbounds %struct.TreeCursor, ptr %16, i32 0, i32 1
  %size14 = getelementptr inbounds %struct.anon, ptr %stack13, i32 0, i32 1
  %17 = load i32, ptr %size14, align 8, !tbaa !14
  %sub15 = sub i32 %17, 2
  %idxprom16 = zext i32 %sub15 to i64
  %arrayidx17 = getelementptr inbounds %struct.TreeCursorEntry, ptr %15, i64 %idxprom16
  store ptr %arrayidx17, ptr %parent_entry, align 8, !tbaa !4
  %18 = load ptr, ptr %self, align 8, !tbaa !4
  %tree = getelementptr inbounds %struct.TreeCursor, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %tree, align 8, !tbaa !10
  %language = getelementptr inbounds %struct.TSTree, ptr %19, i32 0, i32 1
  %20 = load ptr, ptr %language, align 8, !tbaa !41
  %21 = load ptr, ptr %parent_entry, align 8, !tbaa !4
  %subtree18 = getelementptr inbounds %struct.TreeCursorEntry, ptr %21, i32 0, i32 0
  %22 = load ptr, ptr %subtree18, align 8, !tbaa !17
  %23 = load ptr, ptr %22, align 8, !tbaa !35
  %24 = getelementptr inbounds %struct.SubtreeHeapData, ptr %23, i32 0, i32 9
  %production_id = getelementptr inbounds %struct.anon.0, ptr %24, i32 0, i32 5
  %25 = load i16, ptr %production_id, align 2, !tbaa !35
  %conv = zext i16 %25 to i32
  %26 = load ptr, ptr %last_entry, align 8, !tbaa !4
  %structural_child_index = getelementptr inbounds %struct.TreeCursorEntry, ptr %26, i32 0, i32 3
  %27 = load i32, ptr %structural_child_index, align 8, !tbaa !23
  %call19 = call zeroext i16 @ts_language_alias_at(ptr noundef %20, i32 noundef %conv, i32 noundef %27)
  store i16 %call19, ptr %alias_symbol, align 2, !tbaa !44
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent_entry) #7
  br label %if.end20

if.end20:                                         ; preds = %if.then10, %land.lhs.true, %if.end
  %28 = load ptr, ptr %self, align 8, !tbaa !4
  %tree21 = getelementptr inbounds %struct.TreeCursor, ptr %28, i32 0, i32 0
  %29 = load ptr, ptr %tree21, align 8, !tbaa !10
  %30 = load ptr, ptr %last_entry, align 8, !tbaa !4
  %subtree22 = getelementptr inbounds %struct.TreeCursorEntry, ptr %30, i32 0, i32 0
  %31 = load ptr, ptr %subtree22, align 8, !tbaa !17
  %32 = load ptr, ptr %last_entry, align 8, !tbaa !4
  %position = getelementptr inbounds %struct.TreeCursorEntry, ptr %32, i32 0, i32 1
  %33 = load i16, ptr %alias_symbol, align 2, !tbaa !44
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %position.coerce, ptr align 8 %position, i64 12, i1 false)
  %34 = getelementptr inbounds { i64, i32 }, ptr %position.coerce, i32 0, i32 0
  %35 = load i64, ptr %34, align 8
  %36 = getelementptr inbounds { i64, i32 }, ptr %position.coerce, i32 0, i32 1
  %37 = load i32, ptr %36, align 8
  call void @ts_node_new(ptr sret(%struct.TSNode) align 8 %agg.result, ptr noundef %29, ptr noundef %31, i64 %35, i32 %37, i16 noundef zeroext %33)
  call void @llvm.lifetime.end.p0(i64 2, ptr %alias_symbol) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %last_entry) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %self) #7
  ret void
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #6

declare void @ts_node_new(ptr sret(%struct.TSNode) align 8, ptr noundef, ptr noundef, i64, i32, i16 noundef zeroext) #3

; Function Attrs: nounwind uwtable
define void @ts_tree_cursor_current_status(ptr noundef %_self, ptr noundef %field_id, ptr noundef %has_later_siblings, ptr noundef %has_later_named_siblings, ptr noundef %can_have_later_siblings_with_this_field, ptr noundef %supertypes, ptr noundef %supertype_count) #0 {
entry:
  %_self.addr = alloca ptr, align 8
  %field_id.addr = alloca ptr, align 8
  %has_later_siblings.addr = alloca ptr, align 8
  %has_later_named_siblings.addr = alloca ptr, align 8
  %can_have_later_siblings_with_this_field.addr = alloca ptr, align 8
  %supertypes.addr = alloca ptr, align 8
  %supertype_count.addr = alloca ptr, align 8
  %self = alloca ptr, align 8
  %max_supertypes = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %entry1 = alloca ptr, align 8
  %parent_entry = alloca ptr, align 8
  %alias_sequence = alloca ptr, align 8
  %entry_symbol = alloca i16, align 2
  %entry_metadata = alloca %struct.TSSymbolMetadata, align 1
  %tmp.coerce = alloca i24, align 4
  %sibling_count = alloca i32, align 4
  %structural_child_index47 = alloca i32, align 4
  %j = alloca i32, align 4
  %sibling = alloca %union.Subtree, align 8
  %sibling_metadata = alloca %struct.TSSymbolMetadata, align 1
  %tmp.coerce94 = alloca i24, align 4
  %field_map = alloca ptr, align 8
  %field_map_end = alloca ptr, align 8
  %i138 = alloca ptr, align 8
  %i160 = alloca ptr, align 8
  store ptr %_self, ptr %_self.addr, align 8, !tbaa !4
  store ptr %field_id, ptr %field_id.addr, align 8, !tbaa !4
  store ptr %has_later_siblings, ptr %has_later_siblings.addr, align 8, !tbaa !4
  store ptr %has_later_named_siblings, ptr %has_later_named_siblings.addr, align 8, !tbaa !4
  store ptr %can_have_later_siblings_with_this_field, ptr %can_have_later_siblings_with_this_field.addr, align 8, !tbaa !4
  store ptr %supertypes, ptr %supertypes.addr, align 8, !tbaa !4
  store ptr %supertype_count, ptr %supertype_count.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %self) #7
  %0 = load ptr, ptr %_self.addr, align 8, !tbaa !4
  store ptr %0, ptr %self, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %max_supertypes) #7
  %1 = load ptr, ptr %supertype_count.addr, align 8, !tbaa !4
  %2 = load i32, ptr %1, align 4, !tbaa !25
  store i32 %2, ptr %max_supertypes, align 4, !tbaa !25
  %3 = load ptr, ptr %field_id.addr, align 8, !tbaa !4
  store i16 0, ptr %3, align 2, !tbaa !44
  %4 = load ptr, ptr %supertype_count.addr, align 8, !tbaa !4
  store i32 0, ptr %4, align 4, !tbaa !25
  %5 = load ptr, ptr %has_later_siblings.addr, align 8, !tbaa !4
  store i8 0, ptr %5, align 1, !tbaa !31
  %6 = load ptr, ptr %has_later_named_siblings.addr, align 8, !tbaa !4
  store i8 0, ptr %6, align 1, !tbaa !31
  %7 = load ptr, ptr %can_have_later_siblings_with_this_field.addr, align 8, !tbaa !4
  store i8 0, ptr %7, align 1, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7
  %8 = load ptr, ptr %self, align 8, !tbaa !4
  %stack = getelementptr inbounds %struct.TreeCursor, ptr %8, i32 0, i32 1
  %size = getelementptr inbounds %struct.anon, ptr %stack, i32 0, i32 1
  %9 = load i32, ptr %size, align 8, !tbaa !14
  %sub = sub i32 %9, 1
  store i32 %sub, ptr %i, align 4, !tbaa !25
  br label %for.cond

for.cond:                                         ; preds = %for.inc192, %entry
  %10 = load i32, ptr %i, align 4, !tbaa !25
  %cmp = icmp ugt i32 %10, 0
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup193

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #7
  %11 = load ptr, ptr %self, align 8, !tbaa !4
  %stack2 = getelementptr inbounds %struct.TreeCursor, ptr %11, i32 0, i32 1
  %contents = getelementptr inbounds %struct.anon, ptr %stack2, i32 0, i32 0
  %12 = load ptr, ptr %contents, align 8, !tbaa !15
  %13 = load i32, ptr %i, align 4, !tbaa !25
  %idxprom = zext i32 %13 to i64
  %arrayidx = getelementptr inbounds %struct.TreeCursorEntry, ptr %12, i64 %idxprom
  store ptr %arrayidx, ptr %entry1, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent_entry) #7
  %14 = load ptr, ptr %self, align 8, !tbaa !4
  %stack3 = getelementptr inbounds %struct.TreeCursor, ptr %14, i32 0, i32 1
  %contents4 = getelementptr inbounds %struct.anon, ptr %stack3, i32 0, i32 0
  %15 = load ptr, ptr %contents4, align 8, !tbaa !15
  %16 = load i32, ptr %i, align 4, !tbaa !25
  %sub5 = sub i32 %16, 1
  %idxprom6 = zext i32 %sub5 to i64
  %arrayidx7 = getelementptr inbounds %struct.TreeCursorEntry, ptr %15, i64 %idxprom6
  store ptr %arrayidx7, ptr %parent_entry, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %alias_sequence) #7
  %17 = load ptr, ptr %self, align 8, !tbaa !4
  %tree = getelementptr inbounds %struct.TreeCursor, ptr %17, i32 0, i32 0
  %18 = load ptr, ptr %tree, align 8, !tbaa !10
  %language = getelementptr inbounds %struct.TSTree, ptr %18, i32 0, i32 1
  %19 = load ptr, ptr %language, align 8, !tbaa !41
  %20 = load ptr, ptr %parent_entry, align 8, !tbaa !4
  %subtree = getelementptr inbounds %struct.TreeCursorEntry, ptr %20, i32 0, i32 0
  %21 = load ptr, ptr %subtree, align 8, !tbaa !17
  %22 = load ptr, ptr %21, align 8, !tbaa !35
  %23 = getelementptr inbounds %struct.SubtreeHeapData, ptr %22, i32 0, i32 9
  %production_id = getelementptr inbounds %struct.anon.0, ptr %23, i32 0, i32 5
  %24 = load i16, ptr %production_id, align 2, !tbaa !35
  %conv = zext i16 %24 to i32
  %call = call ptr @ts_language_alias_sequence(ptr noundef %19, i32 noundef %conv)
  store ptr %call, ptr %alias_sequence, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 2, ptr %entry_symbol) #7
  %25 = load ptr, ptr %entry1, align 8, !tbaa !4
  %subtree8 = getelementptr inbounds %struct.TreeCursorEntry, ptr %25, i32 0, i32 0
  %26 = load ptr, ptr %subtree8, align 8, !tbaa !17
  %coerce.dive = getelementptr inbounds %union.Subtree, ptr %26, i32 0, i32 0
  %27 = load ptr, ptr %coerce.dive, align 8
  %call9 = call zeroext i1 @ts_subtree_extra(ptr %27)
  br i1 %call9, label %cond.false, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %28 = load ptr, ptr %alias_sequence, align 8, !tbaa !4
  %tobool = icmp ne ptr %28, null
  br i1 %tobool, label %land.lhs.true10, label %cond.false

land.lhs.true10:                                  ; preds = %land.lhs.true
  %29 = load ptr, ptr %alias_sequence, align 8, !tbaa !4
  %30 = load ptr, ptr %entry1, align 8, !tbaa !4
  %structural_child_index = getelementptr inbounds %struct.TreeCursorEntry, ptr %30, i32 0, i32 3
  %31 = load i32, ptr %structural_child_index, align 8, !tbaa !23
  %idxprom11 = zext i32 %31 to i64
  %arrayidx12 = getelementptr inbounds i16, ptr %29, i64 %idxprom11
  %32 = load i16, ptr %arrayidx12, align 2, !tbaa !44
  %conv13 = zext i16 %32 to i32
  %tobool14 = icmp ne i32 %conv13, 0
  br i1 %tobool14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true10
  %33 = load ptr, ptr %alias_sequence, align 8, !tbaa !4
  %34 = load ptr, ptr %entry1, align 8, !tbaa !4
  %structural_child_index15 = getelementptr inbounds %struct.TreeCursorEntry, ptr %34, i32 0, i32 3
  %35 = load i32, ptr %structural_child_index15, align 8, !tbaa !23
  %idxprom16 = zext i32 %35 to i64
  %arrayidx17 = getelementptr inbounds i16, ptr %33, i64 %idxprom16
  %36 = load i16, ptr %arrayidx17, align 2, !tbaa !44
  %conv18 = zext i16 %36 to i32
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true10, %land.lhs.true, %for.body
  %37 = load ptr, ptr %entry1, align 8, !tbaa !4
  %subtree19 = getelementptr inbounds %struct.TreeCursorEntry, ptr %37, i32 0, i32 0
  %38 = load ptr, ptr %subtree19, align 8, !tbaa !17
  %coerce.dive20 = getelementptr inbounds %union.Subtree, ptr %38, i32 0, i32 0
  %39 = load ptr, ptr %coerce.dive20, align 8
  %call21 = call zeroext i16 @ts_subtree_symbol(ptr %39)
  %conv22 = zext i16 %call21 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv18, %cond.true ], [ %conv22, %cond.false ]
  %conv23 = trunc i32 %cond to i16
  store i16 %conv23, ptr %entry_symbol, align 2, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 3, ptr %entry_metadata) #7
  %40 = load ptr, ptr %self, align 8, !tbaa !4
  %tree24 = getelementptr inbounds %struct.TreeCursor, ptr %40, i32 0, i32 0
  %41 = load ptr, ptr %tree24, align 8, !tbaa !10
  %language25 = getelementptr inbounds %struct.TSTree, ptr %41, i32 0, i32 1
  %42 = load ptr, ptr %language25, align 8, !tbaa !41
  %43 = load i16, ptr %entry_symbol, align 2, !tbaa !44
  %call26 = call i24 @ts_language_symbol_metadata(ptr noundef %42, i16 noundef zeroext %43)
  store i24 %call26, ptr %tmp.coerce, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %entry_metadata, ptr align 4 %tmp.coerce, i64 3, i1 false)
  %44 = load i32, ptr %i, align 4, !tbaa !25
  %45 = load ptr, ptr %self, align 8, !tbaa !4
  %stack27 = getelementptr inbounds %struct.TreeCursor, ptr %45, i32 0, i32 1
  %size28 = getelementptr inbounds %struct.anon, ptr %stack27, i32 0, i32 1
  %46 = load i32, ptr %size28, align 8, !tbaa !14
  %sub29 = sub i32 %46, 1
  %cmp30 = icmp ne i32 %44, %sub29
  br i1 %cmp30, label %land.lhs.true32, label %if.end

land.lhs.true32:                                  ; preds = %cond.end
  %visible = getelementptr inbounds %struct.TSSymbolMetadata, ptr %entry_metadata, i32 0, i32 0
  %47 = load i8, ptr %visible, align 1, !tbaa !55, !range !33, !noundef !34
  %tobool33 = trunc i8 %47 to i1
  br i1 %tobool33, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true32
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup185

if.end:                                           ; preds = %land.lhs.true32, %cond.end
  %supertype = getelementptr inbounds %struct.TSSymbolMetadata, ptr %entry_metadata, i32 0, i32 2
  %48 = load i8, ptr %supertype, align 1, !tbaa !57, !range !33, !noundef !34
  %tobool35 = trunc i8 %48 to i1
  br i1 %tobool35, label %land.lhs.true37, label %if.end43

land.lhs.true37:                                  ; preds = %if.end
  %49 = load ptr, ptr %supertype_count.addr, align 8, !tbaa !4
  %50 = load i32, ptr %49, align 4, !tbaa !25
  %51 = load i32, ptr %max_supertypes, align 4, !tbaa !25
  %cmp38 = icmp ult i32 %50, %51
  br i1 %cmp38, label %if.then40, label %if.end43

if.then40:                                        ; preds = %land.lhs.true37
  %52 = load i16, ptr %entry_symbol, align 2, !tbaa !44
  %53 = load ptr, ptr %supertypes.addr, align 8, !tbaa !4
  %54 = load ptr, ptr %supertype_count.addr, align 8, !tbaa !4
  %55 = load i32, ptr %54, align 4, !tbaa !25
  %idxprom41 = zext i32 %55 to i64
  %arrayidx42 = getelementptr inbounds i16, ptr %53, i64 %idxprom41
  store i16 %52, ptr %arrayidx42, align 2, !tbaa !44
  %56 = load ptr, ptr %supertype_count.addr, align 8, !tbaa !4
  %57 = load i32, ptr %56, align 4, !tbaa !25
  %inc = add i32 %57, 1
  store i32 %inc, ptr %56, align 4, !tbaa !25
  br label %if.end43

if.end43:                                         ; preds = %if.then40, %land.lhs.true37, %if.end
  %58 = load ptr, ptr %has_later_siblings.addr, align 8, !tbaa !4
  %59 = load i8, ptr %58, align 1, !tbaa !31, !range !33, !noundef !34
  %tobool44 = trunc i8 %59 to i1
  br i1 %tobool44, label %if.end126, label %if.then45

if.then45:                                        ; preds = %if.end43
  call void @llvm.lifetime.start.p0(i64 4, ptr %sibling_count) #7
  %60 = load ptr, ptr %parent_entry, align 8, !tbaa !4
  %subtree46 = getelementptr inbounds %struct.TreeCursorEntry, ptr %60, i32 0, i32 0
  %61 = load ptr, ptr %subtree46, align 8, !tbaa !17
  %62 = load ptr, ptr %61, align 8, !tbaa !35
  %child_count = getelementptr inbounds %struct.SubtreeHeapData, ptr %62, i32 0, i32 5
  %63 = load i32, ptr %child_count, align 4, !tbaa !47
  store i32 %63, ptr %sibling_count, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 4, ptr %structural_child_index47) #7
  %64 = load ptr, ptr %entry1, align 8, !tbaa !4
  %structural_child_index48 = getelementptr inbounds %struct.TreeCursorEntry, ptr %64, i32 0, i32 3
  %65 = load i32, ptr %structural_child_index48, align 8, !tbaa !23
  store i32 %65, ptr %structural_child_index47, align 4, !tbaa !25
  %66 = load ptr, ptr %entry1, align 8, !tbaa !4
  %subtree49 = getelementptr inbounds %struct.TreeCursorEntry, ptr %66, i32 0, i32 0
  %67 = load ptr, ptr %subtree49, align 8, !tbaa !17
  %coerce.dive50 = getelementptr inbounds %union.Subtree, ptr %67, i32 0, i32 0
  %68 = load ptr, ptr %coerce.dive50, align 8
  %call51 = call zeroext i1 @ts_subtree_extra(ptr %68)
  br i1 %call51, label %if.end54, label %if.then52

if.then52:                                        ; preds = %if.then45
  %69 = load i32, ptr %structural_child_index47, align 4, !tbaa !25
  %inc53 = add i32 %69, 1
  store i32 %inc53, ptr %structural_child_index47, align 4, !tbaa !25
  br label %if.end54

if.end54:                                         ; preds = %if.then52, %if.then45
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #7
  %70 = load ptr, ptr %entry1, align 8, !tbaa !4
  %child_index = getelementptr inbounds %struct.TreeCursorEntry, ptr %70, i32 0, i32 2
  %71 = load i32, ptr %child_index, align 4, !tbaa !22
  %add = add i32 %71, 1
  store i32 %add, ptr %j, align 4, !tbaa !25
  br label %for.cond55

for.cond55:                                       ; preds = %for.inc, %if.end54
  %72 = load i32, ptr %j, align 4, !tbaa !25
  %73 = load i32, ptr %sibling_count, align 4, !tbaa !25
  %cmp56 = icmp ult i32 %72, %73
  br i1 %cmp56, label %for.body59, label %for.cond.cleanup58

for.cond.cleanup58:                               ; preds = %for.cond55
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup125

for.body59:                                       ; preds = %for.cond55
  call void @llvm.lifetime.start.p0(i64 8, ptr %sibling) #7
  %74 = load ptr, ptr %parent_entry, align 8, !tbaa !4
  %subtree60 = getelementptr inbounds %struct.TreeCursorEntry, ptr %74, i32 0, i32 0
  %75 = load ptr, ptr %subtree60, align 8, !tbaa !17
  %bf.load = load i8, ptr %75, align 8
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = trunc i8 %bf.clear to i1
  br i1 %bf.cast, label %cond.true62, label %cond.false63

cond.true62:                                      ; preds = %for.body59
  br label %cond.end67

cond.false63:                                     ; preds = %for.body59
  %76 = load ptr, ptr %parent_entry, align 8, !tbaa !4
  %subtree64 = getelementptr inbounds %struct.TreeCursorEntry, ptr %76, i32 0, i32 0
  %77 = load ptr, ptr %subtree64, align 8, !tbaa !17
  %78 = load ptr, ptr %77, align 8, !tbaa !35
  %79 = load ptr, ptr %parent_entry, align 8, !tbaa !4
  %subtree65 = getelementptr inbounds %struct.TreeCursorEntry, ptr %79, i32 0, i32 0
  %80 = load ptr, ptr %subtree65, align 8, !tbaa !17
  %81 = load ptr, ptr %80, align 8, !tbaa !35
  %child_count66 = getelementptr inbounds %struct.SubtreeHeapData, ptr %81, i32 0, i32 5
  %82 = load i32, ptr %child_count66, align 4, !tbaa !47
  %idx.ext = zext i32 %82 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds %union.Subtree, ptr %78, i64 %idx.neg
  br label %cond.end67

cond.end67:                                       ; preds = %cond.false63, %cond.true62
  %cond68 = phi ptr [ null, %cond.true62 ], [ %add.ptr, %cond.false63 ]
  %83 = load i32, ptr %j, align 4, !tbaa !25
  %idxprom69 = zext i32 %83 to i64
  %arrayidx70 = getelementptr inbounds %union.Subtree, ptr %cond68, i64 %idxprom69
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %sibling, ptr align 8 %arrayidx70, i64 8, i1 false), !tbaa.struct !43
  call void @llvm.lifetime.start.p0(i64 3, ptr %sibling_metadata) #7
  %84 = load ptr, ptr %self, align 8, !tbaa !4
  %tree71 = getelementptr inbounds %struct.TreeCursor, ptr %84, i32 0, i32 0
  %85 = load ptr, ptr %tree71, align 8, !tbaa !10
  %language72 = getelementptr inbounds %struct.TSTree, ptr %85, i32 0, i32 1
  %86 = load ptr, ptr %language72, align 8, !tbaa !41
  %coerce.dive73 = getelementptr inbounds %union.Subtree, ptr %sibling, i32 0, i32 0
  %87 = load ptr, ptr %coerce.dive73, align 8
  %call74 = call zeroext i1 @ts_subtree_extra(ptr %87)
  br i1 %call74, label %cond.false86, label %land.lhs.true75

land.lhs.true75:                                  ; preds = %cond.end67
  %88 = load ptr, ptr %alias_sequence, align 8, !tbaa !4
  %tobool76 = icmp ne ptr %88, null
  br i1 %tobool76, label %land.lhs.true77, label %cond.false86

land.lhs.true77:                                  ; preds = %land.lhs.true75
  %89 = load ptr, ptr %alias_sequence, align 8, !tbaa !4
  %90 = load i32, ptr %structural_child_index47, align 4, !tbaa !25
  %idxprom78 = zext i32 %90 to i64
  %arrayidx79 = getelementptr inbounds i16, ptr %89, i64 %idxprom78
  %91 = load i16, ptr %arrayidx79, align 2, !tbaa !44
  %conv80 = zext i16 %91 to i32
  %tobool81 = icmp ne i32 %conv80, 0
  br i1 %tobool81, label %cond.true82, label %cond.false86

cond.true82:                                      ; preds = %land.lhs.true77
  %92 = load ptr, ptr %alias_sequence, align 8, !tbaa !4
  %93 = load i32, ptr %structural_child_index47, align 4, !tbaa !25
  %idxprom83 = zext i32 %93 to i64
  %arrayidx84 = getelementptr inbounds i16, ptr %92, i64 %idxprom83
  %94 = load i16, ptr %arrayidx84, align 2, !tbaa !44
  %conv85 = zext i16 %94 to i32
  br label %cond.end90

cond.false86:                                     ; preds = %land.lhs.true77, %land.lhs.true75, %cond.end67
  %coerce.dive87 = getelementptr inbounds %union.Subtree, ptr %sibling, i32 0, i32 0
  %95 = load ptr, ptr %coerce.dive87, align 8
  %call88 = call zeroext i16 @ts_subtree_symbol(ptr %95)
  %conv89 = zext i16 %call88 to i32
  br label %cond.end90

cond.end90:                                       ; preds = %cond.false86, %cond.true82
  %cond91 = phi i32 [ %conv85, %cond.true82 ], [ %conv89, %cond.false86 ]
  %conv92 = trunc i32 %cond91 to i16
  %call93 = call i24 @ts_language_symbol_metadata(ptr noundef %86, i16 noundef zeroext %conv92)
  store i24 %call93, ptr %tmp.coerce94, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %sibling_metadata, ptr align 4 %tmp.coerce94, i64 3, i1 false)
  %visible95 = getelementptr inbounds %struct.TSSymbolMetadata, ptr %sibling_metadata, i32 0, i32 0
  %96 = load i8, ptr %visible95, align 1, !tbaa !55, !range !33, !noundef !34
  %tobool96 = trunc i8 %96 to i1
  br i1 %tobool96, label %if.then97, label %if.else

if.then97:                                        ; preds = %cond.end90
  %97 = load ptr, ptr %has_later_siblings.addr, align 8, !tbaa !4
  store i8 1, ptr %97, align 1, !tbaa !31
  %98 = load ptr, ptr %has_later_named_siblings.addr, align 8, !tbaa !4
  %99 = load i8, ptr %98, align 1, !tbaa !31, !range !33, !noundef !34
  %tobool98 = trunc i8 %99 to i1
  br i1 %tobool98, label %if.then99, label %if.end100

if.then99:                                        ; preds = %if.then97
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end100:                                        ; preds = %if.then97
  %named = getelementptr inbounds %struct.TSSymbolMetadata, ptr %sibling_metadata, i32 0, i32 1
  %100 = load i8, ptr %named, align 1, !tbaa !58, !range !33, !noundef !34
  %tobool101 = trunc i8 %100 to i1
  br i1 %tobool101, label %if.then102, label %if.end103

if.then102:                                       ; preds = %if.end100
  %101 = load ptr, ptr %has_later_named_siblings.addr, align 8, !tbaa !4
  store i8 1, ptr %101, align 1, !tbaa !31
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end103:                                        ; preds = %if.end100
  br label %if.end117

if.else:                                          ; preds = %cond.end90
  %coerce.dive104 = getelementptr inbounds %union.Subtree, ptr %sibling, i32 0, i32 0
  %102 = load ptr, ptr %coerce.dive104, align 8
  %call105 = call i32 @ts_subtree_visible_child_count(ptr %102)
  %cmp106 = icmp ugt i32 %call105, 0
  br i1 %cmp106, label %if.then108, label %if.end116

if.then108:                                       ; preds = %if.else
  %103 = load ptr, ptr %has_later_siblings.addr, align 8, !tbaa !4
  store i8 1, ptr %103, align 1, !tbaa !31
  %104 = load ptr, ptr %has_later_named_siblings.addr, align 8, !tbaa !4
  %105 = load i8, ptr %104, align 1, !tbaa !31, !range !33, !noundef !34
  %tobool109 = trunc i8 %105 to i1
  br i1 %tobool109, label %if.then110, label %if.end111

if.then110:                                       ; preds = %if.then108
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end111:                                        ; preds = %if.then108
  %106 = load ptr, ptr %sibling, align 8, !tbaa !35
  %107 = getelementptr inbounds %struct.SubtreeHeapData, ptr %106, i32 0, i32 9
  %named_child_count = getelementptr inbounds %struct.anon.0, ptr %107, i32 0, i32 1
  %108 = load i32, ptr %named_child_count, align 4, !tbaa !35
  %cmp112 = icmp ugt i32 %108, 0
  br i1 %cmp112, label %if.then114, label %if.end115

if.then114:                                       ; preds = %if.end111
  %109 = load ptr, ptr %has_later_named_siblings.addr, align 8, !tbaa !4
  store i8 1, ptr %109, align 1, !tbaa !31
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end115:                                        ; preds = %if.end111
  br label %if.end116

if.end116:                                        ; preds = %if.end115, %if.else
  br label %if.end117

if.end117:                                        ; preds = %if.end116, %if.end103
  %coerce.dive118 = getelementptr inbounds %union.Subtree, ptr %sibling, i32 0, i32 0
  %110 = load ptr, ptr %coerce.dive118, align 8
  %call119 = call zeroext i1 @ts_subtree_extra(ptr %110)
  br i1 %call119, label %if.end122, label %if.then120

if.then120:                                       ; preds = %if.end117
  %111 = load i32, ptr %structural_child_index47, align 4, !tbaa !25
  %inc121 = add i32 %111, 1
  store i32 %inc121, ptr %structural_child_index47, align 4, !tbaa !25
  br label %if.end122

if.end122:                                        ; preds = %if.then120, %if.end117
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end122, %if.then114, %if.then110, %if.then102, %if.then99
  call void @llvm.lifetime.end.p0(i64 3, ptr %sibling_metadata) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %sibling) #7
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup125 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %112 = load i32, ptr %j, align 4, !tbaa !25
  %inc124 = add i32 %112, 1
  store i32 %inc124, ptr %j, align 4, !tbaa !25
  br label %for.cond55

cleanup125:                                       ; preds = %cleanup, %for.cond.cleanup58
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #7
  br label %for.end

for.end:                                          ; preds = %cleanup125
  call void @llvm.lifetime.end.p0(i64 4, ptr %structural_child_index47) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %sibling_count) #7
  br label %if.end126

if.end126:                                        ; preds = %for.end, %if.end43
  %113 = load ptr, ptr %entry1, align 8, !tbaa !4
  %subtree127 = getelementptr inbounds %struct.TreeCursorEntry, ptr %113, i32 0, i32 0
  %114 = load ptr, ptr %subtree127, align 8, !tbaa !17
  %coerce.dive128 = getelementptr inbounds %union.Subtree, ptr %114, i32 0, i32 0
  %115 = load ptr, ptr %coerce.dive128, align 8
  %call129 = call zeroext i1 @ts_subtree_extra(ptr %115)
  br i1 %call129, label %if.end184, label %if.then130

if.then130:                                       ; preds = %if.end126
  call void @llvm.lifetime.start.p0(i64 8, ptr %field_map) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %field_map_end) #7
  %116 = load ptr, ptr %self, align 8, !tbaa !4
  %tree131 = getelementptr inbounds %struct.TreeCursor, ptr %116, i32 0, i32 0
  %117 = load ptr, ptr %tree131, align 8, !tbaa !10
  %language132 = getelementptr inbounds %struct.TSTree, ptr %117, i32 0, i32 1
  %118 = load ptr, ptr %language132, align 8, !tbaa !41
  %119 = load ptr, ptr %parent_entry, align 8, !tbaa !4
  %subtree133 = getelementptr inbounds %struct.TreeCursorEntry, ptr %119, i32 0, i32 0
  %120 = load ptr, ptr %subtree133, align 8, !tbaa !17
  %121 = load ptr, ptr %120, align 8, !tbaa !35
  %122 = getelementptr inbounds %struct.SubtreeHeapData, ptr %121, i32 0, i32 9
  %production_id134 = getelementptr inbounds %struct.anon.0, ptr %122, i32 0, i32 5
  %123 = load i16, ptr %production_id134, align 2, !tbaa !35
  %conv135 = zext i16 %123 to i32
  call void @ts_language_field_map(ptr noundef %118, i32 noundef %conv135, ptr noundef %field_map, ptr noundef %field_map_end)
  %124 = load ptr, ptr %field_id.addr, align 8, !tbaa !4
  %125 = load i16, ptr %124, align 2, !tbaa !44
  %tobool136 = icmp ne i16 %125, 0
  br i1 %tobool136, label %if.end157, label %if.then137

if.then137:                                       ; preds = %if.then130
  call void @llvm.lifetime.start.p0(i64 8, ptr %i138) #7
  %126 = load ptr, ptr %field_map, align 8, !tbaa !4
  store ptr %126, ptr %i138, align 8, !tbaa !4
  br label %for.cond139

for.cond139:                                      ; preds = %for.inc154, %if.then137
  %127 = load ptr, ptr %i138, align 8, !tbaa !4
  %128 = load ptr, ptr %field_map_end, align 8, !tbaa !4
  %cmp140 = icmp ult ptr %127, %128
  br i1 %cmp140, label %for.body143, label %for.cond.cleanup142

for.cond.cleanup142:                              ; preds = %for.cond139
  store i32 8, ptr %cleanup.dest.slot, align 4
  br label %cleanup155

for.body143:                                      ; preds = %for.cond139
  %129 = load ptr, ptr %i138, align 8, !tbaa !4
  %inherited = getelementptr inbounds %struct.TSFieldMapEntry, ptr %129, i32 0, i32 2
  %130 = load i8, ptr %inherited, align 1, !tbaa !59, !range !33, !noundef !34
  %tobool144 = trunc i8 %130 to i1
  br i1 %tobool144, label %if.end153, label %land.lhs.true145

land.lhs.true145:                                 ; preds = %for.body143
  %131 = load ptr, ptr %i138, align 8, !tbaa !4
  %child_index146 = getelementptr inbounds %struct.TSFieldMapEntry, ptr %131, i32 0, i32 1
  %132 = load i8, ptr %child_index146, align 2, !tbaa !61
  %conv147 = zext i8 %132 to i32
  %133 = load ptr, ptr %entry1, align 8, !tbaa !4
  %structural_child_index148 = getelementptr inbounds %struct.TreeCursorEntry, ptr %133, i32 0, i32 3
  %134 = load i32, ptr %structural_child_index148, align 8, !tbaa !23
  %cmp149 = icmp eq i32 %conv147, %134
  br i1 %cmp149, label %if.then151, label %if.end153

if.then151:                                       ; preds = %land.lhs.true145
  %135 = load ptr, ptr %i138, align 8, !tbaa !4
  %field_id152 = getelementptr inbounds %struct.TSFieldMapEntry, ptr %135, i32 0, i32 0
  %136 = load i16, ptr %field_id152, align 2, !tbaa !62
  %137 = load ptr, ptr %field_id.addr, align 8, !tbaa !4
  store i16 %136, ptr %137, align 2, !tbaa !44
  store i32 8, ptr %cleanup.dest.slot, align 4
  br label %cleanup155

if.end153:                                        ; preds = %land.lhs.true145, %for.body143
  br label %for.inc154

for.inc154:                                       ; preds = %if.end153
  %138 = load ptr, ptr %i138, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds %struct.TSFieldMapEntry, ptr %138, i32 1
  store ptr %incdec.ptr, ptr %i138, align 8, !tbaa !4
  br label %for.cond139

cleanup155:                                       ; preds = %if.then151, %for.cond.cleanup142
  call void @llvm.lifetime.end.p0(i64 8, ptr %i138) #7
  br label %for.end156

for.end156:                                       ; preds = %cleanup155
  br label %if.end157

if.end157:                                        ; preds = %for.end156, %if.then130
  %139 = load ptr, ptr %field_id.addr, align 8, !tbaa !4
  %140 = load i16, ptr %139, align 2, !tbaa !44
  %tobool158 = icmp ne i16 %140, 0
  br i1 %tobool158, label %if.then159, label %if.end183

if.then159:                                       ; preds = %if.end157
  call void @llvm.lifetime.start.p0(i64 8, ptr %i160) #7
  %141 = load ptr, ptr %field_map, align 8, !tbaa !4
  store ptr %141, ptr %i160, align 8, !tbaa !4
  br label %for.cond161

for.cond161:                                      ; preds = %for.inc179, %if.then159
  %142 = load ptr, ptr %i160, align 8, !tbaa !4
  %143 = load ptr, ptr %field_map_end, align 8, !tbaa !4
  %cmp162 = icmp ult ptr %142, %143
  br i1 %cmp162, label %for.body165, label %for.cond.cleanup164

for.cond.cleanup164:                              ; preds = %for.cond161
  store i32 11, ptr %cleanup.dest.slot, align 4
  br label %cleanup181

for.body165:                                      ; preds = %for.cond161
  %144 = load ptr, ptr %i160, align 8, !tbaa !4
  %field_id166 = getelementptr inbounds %struct.TSFieldMapEntry, ptr %144, i32 0, i32 0
  %145 = load i16, ptr %field_id166, align 2, !tbaa !62
  %conv167 = zext i16 %145 to i32
  %146 = load ptr, ptr %field_id.addr, align 8, !tbaa !4
  %147 = load i16, ptr %146, align 2, !tbaa !44
  %conv168 = zext i16 %147 to i32
  %cmp169 = icmp eq i32 %conv167, %conv168
  br i1 %cmp169, label %land.lhs.true171, label %if.end178

land.lhs.true171:                                 ; preds = %for.body165
  %148 = load ptr, ptr %i160, align 8, !tbaa !4
  %child_index172 = getelementptr inbounds %struct.TSFieldMapEntry, ptr %148, i32 0, i32 1
  %149 = load i8, ptr %child_index172, align 2, !tbaa !61
  %conv173 = zext i8 %149 to i32
  %150 = load ptr, ptr %entry1, align 8, !tbaa !4
  %structural_child_index174 = getelementptr inbounds %struct.TreeCursorEntry, ptr %150, i32 0, i32 3
  %151 = load i32, ptr %structural_child_index174, align 8, !tbaa !23
  %cmp175 = icmp ugt i32 %conv173, %151
  br i1 %cmp175, label %if.then177, label %if.end178

if.then177:                                       ; preds = %land.lhs.true171
  %152 = load ptr, ptr %can_have_later_siblings_with_this_field.addr, align 8, !tbaa !4
  store i8 1, ptr %152, align 1, !tbaa !31
  store i32 11, ptr %cleanup.dest.slot, align 4
  br label %cleanup181

if.end178:                                        ; preds = %land.lhs.true171, %for.body165
  br label %for.inc179

for.inc179:                                       ; preds = %if.end178
  %153 = load ptr, ptr %i160, align 8, !tbaa !4
  %incdec.ptr180 = getelementptr inbounds %struct.TSFieldMapEntry, ptr %153, i32 1
  store ptr %incdec.ptr180, ptr %i160, align 8, !tbaa !4
  br label %for.cond161

cleanup181:                                       ; preds = %if.then177, %for.cond.cleanup164
  call void @llvm.lifetime.end.p0(i64 8, ptr %i160) #7
  br label %for.end182

for.end182:                                       ; preds = %cleanup181
  br label %if.end183

if.end183:                                        ; preds = %for.end182, %if.end157
  call void @llvm.lifetime.end.p0(i64 8, ptr %field_map_end) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %field_map) #7
  br label %if.end184

if.end184:                                        ; preds = %if.end183, %if.end126
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup185

cleanup185:                                       ; preds = %if.end184, %if.then
  call void @llvm.lifetime.end.p0(i64 3, ptr %entry_metadata) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr %entry_symbol) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %alias_sequence) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent_entry) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #7
  %cleanup.dest190 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest190, label %cleanup193 [
    i32 0, label %cleanup.cont191
  ]

cleanup.cont191:                                  ; preds = %cleanup185
  br label %for.inc192

for.inc192:                                       ; preds = %cleanup.cont191
  %154 = load i32, ptr %i, align 4, !tbaa !25
  %dec = add i32 %154, -1
  store i32 %dec, ptr %i, align 4, !tbaa !25
  br label %for.cond

cleanup193:                                       ; preds = %cleanup185, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7
  br label %for.end194

for.end194:                                       ; preds = %cleanup193
  call void @llvm.lifetime.end.p0(i64 4, ptr %max_supertypes) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %self) #7
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @ts_language_alias_sequence(ptr noundef %self, i32 noundef %production_id) #2 {
entry:
  %self.addr = alloca ptr, align 8
  %production_id.addr = alloca i32, align 4
  store ptr %self, ptr %self.addr, align 8, !tbaa !4
  store i32 %production_id, ptr %production_id.addr, align 4, !tbaa !25
  %0 = load i32, ptr %production_id.addr, align 4, !tbaa !25
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %alias_sequences = getelementptr inbounds %struct.TSLanguage, ptr %1, i32 0, i32 21
  %2 = load ptr, ptr %alias_sequences, align 8, !tbaa !51
  %3 = load i32, ptr %production_id.addr, align 4, !tbaa !25
  %4 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %max_alias_sequence_length = getelementptr inbounds %struct.TSLanguage, ptr %4, i32 0, i32 9
  %5 = load i16, ptr %max_alias_sequence_length, align 4, !tbaa !54
  %conv = zext i16 %5 to i32
  %mul = mul i32 %3, %conv
  %idxprom = zext i32 %mul to i64
  %arrayidx = getelementptr inbounds i16, ptr %2, i64 %idxprom
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %arrayidx, %cond.true ], [ null, %cond.false ]
  ret ptr %cond
}

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i16 @ts_subtree_symbol(ptr %self.coerce) #2 {
entry:
  %self = alloca %union.Subtree, align 8
  %coerce.dive = getelementptr inbounds %union.Subtree, ptr %self, i32 0, i32 0
  store ptr %self.coerce, ptr %coerce.dive, align 8
  %bf.load = load i8, ptr %self, align 8
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = trunc i8 %bf.clear to i1
  br i1 %bf.cast, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %symbol = getelementptr inbounds %struct.SubtreeInlineData, ptr %self, i32 0, i32 1
  %0 = load i8, ptr %symbol, align 1, !tbaa !35
  %conv = zext i8 %0 to i32
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load ptr, ptr %self, align 8, !tbaa !35
  %symbol1 = getelementptr inbounds %struct.SubtreeHeapData, ptr %1, i32 0, i32 6
  %2 = load i16, ptr %symbol1, align 8, !tbaa !63
  %conv2 = zext i16 %2 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ]
  %conv3 = trunc i32 %cond to i16
  ret i16 %conv3
}

declare i24 @ts_language_symbol_metadata(ptr noundef, i16 noundef zeroext) #3

; Function Attrs: inlinehint nounwind uwtable
define internal void @ts_language_field_map(ptr noundef %self, i32 noundef %production_id, ptr noundef %start, ptr noundef %end) #2 {
entry:
  %self.addr = alloca ptr, align 8
  %production_id.addr = alloca i32, align 4
  %start.addr = alloca ptr, align 8
  %end.addr = alloca ptr, align 8
  %slice = alloca %struct.TSFieldMapSlice, align 2
  store ptr %self, ptr %self.addr, align 8, !tbaa !4
  store i32 %production_id, ptr %production_id.addr, align 4, !tbaa !25
  store ptr %start, ptr %start.addr, align 8, !tbaa !4
  store ptr %end, ptr %end.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %field_count = getelementptr inbounds %struct.TSLanguage, ptr %0, i32 0, i32 8
  %1 = load i32, ptr %field_count, align 8, !tbaa !64
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %start.addr, align 8, !tbaa !4
  store ptr null, ptr %2, align 8, !tbaa !4
  %3 = load ptr, ptr %end.addr, align 8, !tbaa !4
  store ptr null, ptr %3, align 8, !tbaa !4
  br label %return

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %slice) #7
  %4 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %field_map_slices = getelementptr inbounds %struct.TSLanguage, ptr %4, i32 0, i32 16
  %5 = load ptr, ptr %field_map_slices, align 8, !tbaa !65
  %6 = load i32, ptr %production_id.addr, align 4, !tbaa !25
  %idxprom = zext i32 %6 to i64
  %arrayidx = getelementptr inbounds %struct.TSFieldMapSlice, ptr %5, i64 %idxprom
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %slice, ptr align 2 %arrayidx, i64 4, i1 false), !tbaa.struct !66
  %7 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %field_map_entries = getelementptr inbounds %struct.TSLanguage, ptr %7, i32 0, i32 17
  %8 = load ptr, ptr %field_map_entries, align 8, !tbaa !67
  %index = getelementptr inbounds %struct.TSFieldMapSlice, ptr %slice, i32 0, i32 0
  %9 = load i16, ptr %index, align 2, !tbaa !68
  %idxprom1 = zext i16 %9 to i64
  %arrayidx2 = getelementptr inbounds %struct.TSFieldMapEntry, ptr %8, i64 %idxprom1
  %10 = load ptr, ptr %start.addr, align 8, !tbaa !4
  store ptr %arrayidx2, ptr %10, align 8, !tbaa !4
  %11 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %field_map_entries3 = getelementptr inbounds %struct.TSLanguage, ptr %11, i32 0, i32 17
  %12 = load ptr, ptr %field_map_entries3, align 8, !tbaa !67
  %index4 = getelementptr inbounds %struct.TSFieldMapSlice, ptr %slice, i32 0, i32 0
  %13 = load i16, ptr %index4, align 2, !tbaa !68
  %idxprom5 = zext i16 %13 to i64
  %arrayidx6 = getelementptr inbounds %struct.TSFieldMapEntry, ptr %12, i64 %idxprom5
  %length = getelementptr inbounds %struct.TSFieldMapSlice, ptr %slice, i32 0, i32 1
  %14 = load i16, ptr %length, align 2, !tbaa !70
  %conv = zext i16 %14 to i32
  %idx.ext = sext i32 %conv to i64
  %add.ptr = getelementptr inbounds %struct.TSFieldMapEntry, ptr %arrayidx6, i64 %idx.ext
  %15 = load ptr, ptr %end.addr, align 8, !tbaa !4
  store ptr %add.ptr, ptr %15, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 4, ptr %slice) #7
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @ts_tree_cursor_parent_node(ptr noalias sret(%struct.TSNode) align 8 %agg.result, ptr noundef %_self) #0 {
entry:
  %_self.addr = alloca ptr, align 8
  %self = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %entry1 = alloca ptr, align 8
  %is_visible = alloca i8, align 1
  %alias_symbol = alloca i16, align 2
  %parent_entry = alloca ptr, align 8
  %position.coerce = alloca { i64, i32 }, align 8
  %agg.tmp = alloca %struct.Length, align 4
  %tmp.coerce = alloca { i64, i32 }, align 8
  %agg.tmp.coerce = alloca { i64, i32 }, align 4
  store ptr %_self, ptr %_self.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %self) #7
  %0 = load ptr, ptr %_self.addr, align 8, !tbaa !4
  store ptr %0, ptr %self, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7
  %1 = load ptr, ptr %self, align 8, !tbaa !4
  %stack = getelementptr inbounds %struct.TreeCursor, ptr %1, i32 0, i32 1
  %size = getelementptr inbounds %struct.anon, ptr %stack, i32 0, i32 1
  %2 = load i32, ptr %size, align 8, !tbaa !14
  %sub = sub nsw i32 %2, 2
  store i32 %sub, ptr %i, align 4, !tbaa !25
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, ptr %i, align 4, !tbaa !25
  %cmp = icmp sge i32 %3, 0
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup21

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #7
  %4 = load ptr, ptr %self, align 8, !tbaa !4
  %stack2 = getelementptr inbounds %struct.TreeCursor, ptr %4, i32 0, i32 1
  %contents = getelementptr inbounds %struct.anon, ptr %stack2, i32 0, i32 0
  %5 = load ptr, ptr %contents, align 8, !tbaa !15
  %6 = load i32, ptr %i, align 4, !tbaa !25
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds %struct.TreeCursorEntry, ptr %5, i64 %idxprom
  store ptr %arrayidx, ptr %entry1, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 1, ptr %is_visible) #7
  store i8 1, ptr %is_visible, align 1, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 2, ptr %alias_symbol) #7
  store i16 0, ptr %alias_symbol, align 2, !tbaa !44
  %7 = load i32, ptr %i, align 4, !tbaa !25
  %cmp3 = icmp sgt i32 %7, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent_entry) #7
  %8 = load ptr, ptr %self, align 8, !tbaa !4
  %stack4 = getelementptr inbounds %struct.TreeCursor, ptr %8, i32 0, i32 1
  %contents5 = getelementptr inbounds %struct.anon, ptr %stack4, i32 0, i32 0
  %9 = load ptr, ptr %contents5, align 8, !tbaa !15
  %10 = load i32, ptr %i, align 4, !tbaa !25
  %sub6 = sub nsw i32 %10, 1
  %idxprom7 = sext i32 %sub6 to i64
  %arrayidx8 = getelementptr inbounds %struct.TreeCursorEntry, ptr %9, i64 %idxprom7
  store ptr %arrayidx8, ptr %parent_entry, align 8, !tbaa !4
  %11 = load ptr, ptr %self, align 8, !tbaa !4
  %tree = getelementptr inbounds %struct.TreeCursor, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %tree, align 8, !tbaa !10
  %language = getelementptr inbounds %struct.TSTree, ptr %12, i32 0, i32 1
  %13 = load ptr, ptr %language, align 8, !tbaa !41
  %14 = load ptr, ptr %parent_entry, align 8, !tbaa !4
  %subtree = getelementptr inbounds %struct.TreeCursorEntry, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %subtree, align 8, !tbaa !17
  %16 = load ptr, ptr %15, align 8, !tbaa !35
  %17 = getelementptr inbounds %struct.SubtreeHeapData, ptr %16, i32 0, i32 9
  %production_id = getelementptr inbounds %struct.anon.0, ptr %17, i32 0, i32 5
  %18 = load i16, ptr %production_id, align 2, !tbaa !35
  %conv = zext i16 %18 to i32
  %19 = load ptr, ptr %entry1, align 8, !tbaa !4
  %structural_child_index = getelementptr inbounds %struct.TreeCursorEntry, ptr %19, i32 0, i32 3
  %20 = load i32, ptr %structural_child_index, align 8, !tbaa !23
  %call = call zeroext i16 @ts_language_alias_at(ptr noundef %13, i32 noundef %conv, i32 noundef %20)
  store i16 %call, ptr %alias_symbol, align 2, !tbaa !44
  %21 = load i16, ptr %alias_symbol, align 2, !tbaa !44
  %conv9 = zext i16 %21 to i32
  %cmp10 = icmp ne i32 %conv9, 0
  br i1 %cmp10, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.then
  %22 = load ptr, ptr %entry1, align 8, !tbaa !4
  %subtree12 = getelementptr inbounds %struct.TreeCursorEntry, ptr %22, i32 0, i32 0
  %23 = load ptr, ptr %subtree12, align 8, !tbaa !17
  %coerce.dive = getelementptr inbounds %union.Subtree, ptr %23, i32 0, i32 0
  %24 = load ptr, ptr %coerce.dive, align 8
  %call13 = call zeroext i1 @ts_subtree_visible(ptr %24)
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then
  %25 = phi i1 [ true, %if.then ], [ %call13, %lor.rhs ]
  %frombool = zext i1 %25 to i8
  store i8 %frombool, ptr %is_visible, align 1, !tbaa !31
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent_entry) #7
  br label %if.end

if.end:                                           ; preds = %lor.end, %for.body
  %26 = load i8, ptr %is_visible, align 1, !tbaa !31, !range !33, !noundef !34
  %tobool = trunc i8 %26 to i1
  br i1 %tobool, label %if.then15, label %if.end18

if.then15:                                        ; preds = %if.end
  %27 = load ptr, ptr %self, align 8, !tbaa !4
  %tree16 = getelementptr inbounds %struct.TreeCursor, ptr %27, i32 0, i32 0
  %28 = load ptr, ptr %tree16, align 8, !tbaa !10
  %29 = load ptr, ptr %entry1, align 8, !tbaa !4
  %subtree17 = getelementptr inbounds %struct.TreeCursorEntry, ptr %29, i32 0, i32 0
  %30 = load ptr, ptr %subtree17, align 8, !tbaa !17
  %31 = load ptr, ptr %entry1, align 8, !tbaa !4
  %position = getelementptr inbounds %struct.TreeCursorEntry, ptr %31, i32 0, i32 1
  %32 = load i16, ptr %alias_symbol, align 2, !tbaa !44
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %position.coerce, ptr align 8 %position, i64 12, i1 false)
  %33 = getelementptr inbounds { i64, i32 }, ptr %position.coerce, i32 0, i32 0
  %34 = load i64, ptr %33, align 8
  %35 = getelementptr inbounds { i64, i32 }, ptr %position.coerce, i32 0, i32 1
  %36 = load i32, ptr %35, align 8
  call void @ts_node_new(ptr sret(%struct.TSNode) align 8 %agg.result, ptr noundef %28, ptr noundef %30, i64 %34, i32 %36, i16 noundef zeroext %32)
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end18:                                         ; preds = %if.end
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then15
  call void @llvm.lifetime.end.p0(i64 2, ptr %alias_symbol) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr %is_visible) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #7
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup21 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %37 = load i32, ptr %i, align 4, !tbaa !25
  %dec = add nsw i32 %37, -1
  store i32 %dec, ptr %i, align 4, !tbaa !25
  br label %for.cond

cleanup21:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7
  %cleanup.dest22 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest22, label %cleanup24 [
    i32 2, label %for.end
  ]

for.end:                                          ; preds = %cleanup21
  call void @llvm.lifetime.start.p0(i64 12, ptr %agg.tmp) #7
  %call23 = call { i64, i32 } @length_zero()
  store { i64, i32 } %call23, ptr %tmp.coerce, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %agg.tmp, ptr align 8 %tmp.coerce, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %agg.tmp.coerce, ptr align 4 %agg.tmp, i64 12, i1 false)
  %38 = getelementptr inbounds { i64, i32 }, ptr %agg.tmp.coerce, i32 0, i32 0
  %39 = load i64, ptr %38, align 4
  %40 = getelementptr inbounds { i64, i32 }, ptr %agg.tmp.coerce, i32 0, i32 1
  %41 = load i32, ptr %40, align 4
  call void @ts_node_new(ptr sret(%struct.TSNode) align 8 %agg.result, ptr noundef null, ptr noundef null, i64 %39, i32 %41, i16 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(i64 12, ptr %agg.tmp) #7
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup24

cleanup24:                                        ; preds = %for.end, %cleanup21
  call void @llvm.lifetime.end.p0(i64 8, ptr %self) #7
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal { i64, i32 } @length_zero() #2 {
entry:
  %retval = alloca %struct.Length, align 4
  %retval.coerce = alloca { i64, i32 }, align 8
  call void @llvm.memset.p0.i64(ptr align 4 %retval, i8 0, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval.coerce, ptr align 4 %retval, i64 12, i1 false)
  %0 = load { i64, i32 }, ptr %retval.coerce, align 8
  ret { i64, i32 } %0
}

; Function Attrs: nounwind uwtable
define zeroext i16 @ts_tree_cursor_current_field_id(ptr noundef %_self) #0 {
entry:
  %retval = alloca i16, align 2
  %_self.addr = alloca ptr, align 8
  %self = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %entry1 = alloca ptr, align 8
  %parent_entry = alloca ptr, align 8
  %field_map = alloca ptr, align 8
  %field_map_end = alloca ptr, align 8
  %i32 = alloca ptr, align 8
  store ptr %_self, ptr %_self.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %self) #7
  %0 = load ptr, ptr %_self.addr, align 8, !tbaa !4
  store ptr %0, ptr %self, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7
  %1 = load ptr, ptr %self, align 8, !tbaa !4
  %stack = getelementptr inbounds %struct.TreeCursor, ptr %1, i32 0, i32 1
  %size = getelementptr inbounds %struct.anon, ptr %stack, i32 0, i32 1
  %2 = load i32, ptr %size, align 8, !tbaa !14
  %sub = sub i32 %2, 1
  store i32 %sub, ptr %i, align 4, !tbaa !25
  br label %for.cond

for.cond:                                         ; preds = %for.inc51, %entry
  %3 = load i32, ptr %i, align 4, !tbaa !25
  %cmp = icmp ugt i32 %3, 0
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup52

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #7
  %4 = load ptr, ptr %self, align 8, !tbaa !4
  %stack2 = getelementptr inbounds %struct.TreeCursor, ptr %4, i32 0, i32 1
  %contents = getelementptr inbounds %struct.anon, ptr %stack2, i32 0, i32 0
  %5 = load ptr, ptr %contents, align 8, !tbaa !15
  %6 = load i32, ptr %i, align 4, !tbaa !25
  %idxprom = zext i32 %6 to i64
  %arrayidx = getelementptr inbounds %struct.TreeCursorEntry, ptr %5, i64 %idxprom
  store ptr %arrayidx, ptr %entry1, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent_entry) #7
  %7 = load ptr, ptr %self, align 8, !tbaa !4
  %stack3 = getelementptr inbounds %struct.TreeCursor, ptr %7, i32 0, i32 1
  %contents4 = getelementptr inbounds %struct.anon, ptr %stack3, i32 0, i32 0
  %8 = load ptr, ptr %contents4, align 8, !tbaa !15
  %9 = load i32, ptr %i, align 4, !tbaa !25
  %sub5 = sub i32 %9, 1
  %idxprom6 = zext i32 %sub5 to i64
  %arrayidx7 = getelementptr inbounds %struct.TreeCursorEntry, ptr %8, i64 %idxprom6
  store ptr %arrayidx7, ptr %parent_entry, align 8, !tbaa !4
  %10 = load i32, ptr %i, align 4, !tbaa !25
  %11 = load ptr, ptr %self, align 8, !tbaa !4
  %stack8 = getelementptr inbounds %struct.TreeCursor, ptr %11, i32 0, i32 1
  %size9 = getelementptr inbounds %struct.anon, ptr %stack8, i32 0, i32 1
  %12 = load i32, ptr %size9, align 8, !tbaa !14
  %sub10 = sub i32 %12, 1
  %cmp11 = icmp ne i32 %10, %sub10
  br i1 %cmp11, label %if.then, label %if.end21

if.then:                                          ; preds = %for.body
  %13 = load ptr, ptr %entry1, align 8, !tbaa !4
  %subtree = getelementptr inbounds %struct.TreeCursorEntry, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %subtree, align 8, !tbaa !17
  %coerce.dive = getelementptr inbounds %union.Subtree, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %coerce.dive, align 8
  %call = call zeroext i1 @ts_subtree_visible(ptr %15)
  br i1 %call, label %if.then12, label %if.end

if.then12:                                        ; preds = %if.then
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup48

if.end:                                           ; preds = %if.then
  %16 = load ptr, ptr %entry1, align 8, !tbaa !4
  %subtree13 = getelementptr inbounds %struct.TreeCursorEntry, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %subtree13, align 8, !tbaa !17
  %coerce.dive14 = getelementptr inbounds %union.Subtree, ptr %17, i32 0, i32 0
  %18 = load ptr, ptr %coerce.dive14, align 8
  %call15 = call zeroext i1 @ts_subtree_extra(ptr %18)
  br i1 %call15, label %if.end20, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %19 = load ptr, ptr %self, align 8, !tbaa !4
  %tree = getelementptr inbounds %struct.TreeCursor, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %tree, align 8, !tbaa !10
  %language = getelementptr inbounds %struct.TSTree, ptr %20, i32 0, i32 1
  %21 = load ptr, ptr %language, align 8, !tbaa !41
  %22 = load ptr, ptr %parent_entry, align 8, !tbaa !4
  %subtree16 = getelementptr inbounds %struct.TreeCursorEntry, ptr %22, i32 0, i32 0
  %23 = load ptr, ptr %subtree16, align 8, !tbaa !17
  %24 = load ptr, ptr %23, align 8, !tbaa !35
  %25 = getelementptr inbounds %struct.SubtreeHeapData, ptr %24, i32 0, i32 9
  %production_id = getelementptr inbounds %struct.anon.0, ptr %25, i32 0, i32 5
  %26 = load i16, ptr %production_id, align 2, !tbaa !35
  %conv = zext i16 %26 to i32
  %27 = load ptr, ptr %entry1, align 8, !tbaa !4
  %structural_child_index = getelementptr inbounds %struct.TreeCursorEntry, ptr %27, i32 0, i32 3
  %28 = load i32, ptr %structural_child_index, align 8, !tbaa !23
  %call17 = call zeroext i16 @ts_language_alias_at(ptr noundef %21, i32 noundef %conv, i32 noundef %28)
  %conv18 = zext i16 %call17 to i32
  %tobool = icmp ne i32 %conv18, 0
  br i1 %tobool, label %if.then19, label %if.end20

if.then19:                                        ; preds = %land.lhs.true
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup48

if.end20:                                         ; preds = %land.lhs.true, %if.end
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %for.body
  %29 = load ptr, ptr %entry1, align 8, !tbaa !4
  %subtree22 = getelementptr inbounds %struct.TreeCursorEntry, ptr %29, i32 0, i32 0
  %30 = load ptr, ptr %subtree22, align 8, !tbaa !17
  %coerce.dive23 = getelementptr inbounds %union.Subtree, ptr %30, i32 0, i32 0
  %31 = load ptr, ptr %coerce.dive23, align 8
  %call24 = call zeroext i1 @ts_subtree_extra(ptr %31)
  br i1 %call24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end21
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup48

if.end26:                                         ; preds = %if.end21
  call void @llvm.lifetime.start.p0(i64 8, ptr %field_map) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %field_map_end) #7
  %32 = load ptr, ptr %self, align 8, !tbaa !4
  %tree27 = getelementptr inbounds %struct.TreeCursor, ptr %32, i32 0, i32 0
  %33 = load ptr, ptr %tree27, align 8, !tbaa !10
  %language28 = getelementptr inbounds %struct.TSTree, ptr %33, i32 0, i32 1
  %34 = load ptr, ptr %language28, align 8, !tbaa !41
  %35 = load ptr, ptr %parent_entry, align 8, !tbaa !4
  %subtree29 = getelementptr inbounds %struct.TreeCursorEntry, ptr %35, i32 0, i32 0
  %36 = load ptr, ptr %subtree29, align 8, !tbaa !17
  %37 = load ptr, ptr %36, align 8, !tbaa !35
  %38 = getelementptr inbounds %struct.SubtreeHeapData, ptr %37, i32 0, i32 9
  %production_id30 = getelementptr inbounds %struct.anon.0, ptr %38, i32 0, i32 5
  %39 = load i16, ptr %production_id30, align 2, !tbaa !35
  %conv31 = zext i16 %39 to i32
  call void @ts_language_field_map(ptr noundef %34, i32 noundef %conv31, ptr noundef %field_map, ptr noundef %field_map_end)
  call void @llvm.lifetime.start.p0(i64 8, ptr %i32) #7
  %40 = load ptr, ptr %field_map, align 8, !tbaa !4
  store ptr %40, ptr %i32, align 8, !tbaa !4
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc, %if.end26
  %41 = load ptr, ptr %i32, align 8, !tbaa !4
  %42 = load ptr, ptr %field_map_end, align 8, !tbaa !4
  %cmp34 = icmp ult ptr %41, %42
  br i1 %cmp34, label %for.body37, label %for.cond.cleanup36

for.cond.cleanup36:                               ; preds = %for.cond33
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup

for.body37:                                       ; preds = %for.cond33
  %43 = load ptr, ptr %i32, align 8, !tbaa !4
  %inherited = getelementptr inbounds %struct.TSFieldMapEntry, ptr %43, i32 0, i32 2
  %44 = load i8, ptr %inherited, align 1, !tbaa !59, !range !33, !noundef !34
  %tobool38 = trunc i8 %44 to i1
  br i1 %tobool38, label %if.end45, label %land.lhs.true39

land.lhs.true39:                                  ; preds = %for.body37
  %45 = load ptr, ptr %i32, align 8, !tbaa !4
  %child_index = getelementptr inbounds %struct.TSFieldMapEntry, ptr %45, i32 0, i32 1
  %46 = load i8, ptr %child_index, align 2, !tbaa !61
  %conv40 = zext i8 %46 to i32
  %47 = load ptr, ptr %entry1, align 8, !tbaa !4
  %structural_child_index41 = getelementptr inbounds %struct.TreeCursorEntry, ptr %47, i32 0, i32 3
  %48 = load i32, ptr %structural_child_index41, align 8, !tbaa !23
  %cmp42 = icmp eq i32 %conv40, %48
  br i1 %cmp42, label %if.then44, label %if.end45

if.then44:                                        ; preds = %land.lhs.true39
  %49 = load ptr, ptr %i32, align 8, !tbaa !4
  %field_id = getelementptr inbounds %struct.TSFieldMapEntry, ptr %49, i32 0, i32 0
  %50 = load i16, ptr %field_id, align 2, !tbaa !62
  store i16 %50, ptr %retval, align 2
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end45:                                         ; preds = %land.lhs.true39, %for.body37
  br label %for.inc

for.inc:                                          ; preds = %if.end45
  %51 = load ptr, ptr %i32, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds %struct.TSFieldMapEntry, ptr %51, i32 1
  store ptr %incdec.ptr, ptr %i32, align 8, !tbaa !4
  br label %for.cond33

cleanup:                                          ; preds = %if.then44, %for.cond.cleanup36
  call void @llvm.lifetime.end.p0(i64 8, ptr %i32) #7
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup46 [
    i32 5, label %for.end
  ]

for.end:                                          ; preds = %cleanup
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup46

cleanup46:                                        ; preds = %for.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %field_map_end) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %field_map) #7
  br label %cleanup48

cleanup48:                                        ; preds = %cleanup46, %if.then25, %if.then19, %if.then12
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent_entry) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #7
  %cleanup.dest50 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest50, label %cleanup52 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup48
  br label %for.inc51

for.inc51:                                        ; preds = %cleanup.cont
  %52 = load i32, ptr %i, align 4, !tbaa !25
  %dec = add i32 %52, -1
  store i32 %dec, ptr %i, align 4, !tbaa !25
  br label %for.cond

cleanup52:                                        ; preds = %cleanup48, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7
  %cleanup.dest53 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest53, label %cleanup55 [
    i32 2, label %for.end54
  ]

for.end54:                                        ; preds = %cleanup52
  store i16 0, ptr %retval, align 2
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup55

cleanup55:                                        ; preds = %for.end54, %cleanup52
  call void @llvm.lifetime.end.p0(i64 8, ptr %self) #7
  %53 = load i16, ptr %retval, align 2
  ret i16 %53
}

; Function Attrs: nounwind uwtable
define ptr @ts_tree_cursor_current_field_name(ptr noundef %_self) #0 {
entry:
  %retval = alloca ptr, align 8
  %_self.addr = alloca ptr, align 8
  %id = alloca i16, align 2
  %self = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %_self, ptr %_self.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 2, ptr %id) #7
  %0 = load ptr, ptr %_self.addr, align 8, !tbaa !4
  %call = call zeroext i16 @ts_tree_cursor_current_field_id(ptr noundef %0)
  store i16 %call, ptr %id, align 2, !tbaa !44
  %1 = load i16, ptr %id, align 2, !tbaa !44
  %tobool = icmp ne i16 %1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %self) #7
  %2 = load ptr, ptr %_self.addr, align 8, !tbaa !4
  store ptr %2, ptr %self, align 8, !tbaa !4
  %3 = load ptr, ptr %self, align 8, !tbaa !4
  %tree = getelementptr inbounds %struct.TreeCursor, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %tree, align 8, !tbaa !10
  %language = getelementptr inbounds %struct.TSTree, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %language, align 8, !tbaa !41
  %field_names = getelementptr inbounds %struct.TSLanguage, ptr %5, i32 0, i32 15
  %6 = load ptr, ptr %field_names, align 8, !tbaa !71
  %7 = load i16, ptr %id, align 2, !tbaa !44
  %idxprom = zext i16 %7 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %6, i64 %idxprom
  %8 = load ptr, ptr %arrayidx, align 8, !tbaa !4
  store ptr %8, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %self) #7
  br label %cleanup

if.else:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 2, ptr %id) #7
  %9 = load ptr, ptr %retval, align 8
  ret ptr %9
}

; Function Attrs: nounwind uwtable
define void @ts_tree_cursor_copy(ptr noalias sret(%struct.TSTreeCursor) align 8 %agg.result, ptr noundef %_cursor) #0 {
entry:
  %_cursor.addr = alloca ptr, align 8
  %cursor = alloca ptr, align 8
  %copy = alloca ptr, align 8
  store ptr %_cursor, ptr %_cursor.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %cursor) #7
  %0 = load ptr, ptr %_cursor.addr, align 8, !tbaa !4
  store ptr %0, ptr %cursor, align 8, !tbaa !4
  call void @llvm.memset.p0.i64(ptr align 8 %agg.result, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %copy) #7
  store ptr %agg.result, ptr %copy, align 8, !tbaa !4
  %1 = load ptr, ptr %cursor, align 8, !tbaa !4
  %tree = getelementptr inbounds %struct.TreeCursor, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %tree, align 8, !tbaa !10
  %3 = load ptr, ptr %copy, align 8, !tbaa !4
  %tree1 = getelementptr inbounds %struct.TreeCursor, ptr %3, i32 0, i32 0
  store ptr %2, ptr %tree1, align 8, !tbaa !10
  %4 = load ptr, ptr %copy, align 8, !tbaa !4
  %stack = getelementptr inbounds %struct.TreeCursor, ptr %4, i32 0, i32 1
  %size = getelementptr inbounds %struct.anon, ptr %stack, i32 0, i32 1
  store i32 0, ptr %size, align 8, !tbaa !14
  %5 = load ptr, ptr %copy, align 8, !tbaa !4
  %stack2 = getelementptr inbounds %struct.TreeCursor, ptr %5, i32 0, i32 1
  %capacity = getelementptr inbounds %struct.anon, ptr %stack2, i32 0, i32 2
  store i32 0, ptr %capacity, align 4, !tbaa !72
  %6 = load ptr, ptr %copy, align 8, !tbaa !4
  %stack3 = getelementptr inbounds %struct.TreeCursor, ptr %6, i32 0, i32 1
  %contents = getelementptr inbounds %struct.anon, ptr %stack3, i32 0, i32 0
  store ptr null, ptr %contents, align 8, !tbaa !15
  %7 = load ptr, ptr %copy, align 8, !tbaa !4
  %stack4 = getelementptr inbounds %struct.TreeCursor, ptr %7, i32 0, i32 1
  %8 = load ptr, ptr %copy, align 8, !tbaa !4
  %stack5 = getelementptr inbounds %struct.TreeCursor, ptr %8, i32 0, i32 1
  %size6 = getelementptr inbounds %struct.anon, ptr %stack5, i32 0, i32 1
  %9 = load i32, ptr %size6, align 8, !tbaa !14
  %10 = load ptr, ptr %cursor, align 8, !tbaa !4
  %stack7 = getelementptr inbounds %struct.TreeCursor, ptr %10, i32 0, i32 1
  %size8 = getelementptr inbounds %struct.anon, ptr %stack7, i32 0, i32 1
  %11 = load i32, ptr %size8, align 8, !tbaa !14
  %12 = load ptr, ptr %cursor, align 8, !tbaa !4
  %stack9 = getelementptr inbounds %struct.TreeCursor, ptr %12, i32 0, i32 1
  %contents10 = getelementptr inbounds %struct.anon, ptr %stack9, i32 0, i32 0
  %13 = load ptr, ptr %contents10, align 8, !tbaa !15
  call void @array__splice(ptr noundef %stack4, i64 noundef 32, i32 noundef %9, i32 noundef 0, i32 noundef %11, ptr noundef %13)
  call void @llvm.lifetime.end.p0(i64 8, ptr %copy) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %cursor) #7
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @array__splice(ptr noundef %self, i64 noundef %element_size, i32 noundef %index, i32 noundef %old_count, i32 noundef %new_count, ptr noundef %elements) #2 {
entry:
  %self.addr = alloca ptr, align 8
  %element_size.addr = alloca i64, align 8
  %index.addr = alloca i32, align 4
  %old_count.addr = alloca i32, align 4
  %new_count.addr = alloca i32, align 4
  %elements.addr = alloca ptr, align 8
  %new_size = alloca i32, align 4
  %old_end = alloca i32, align 4
  %new_end = alloca i32, align 4
  %contents = alloca ptr, align 8
  store ptr %self, ptr %self.addr, align 8, !tbaa !4
  store i64 %element_size, ptr %element_size.addr, align 8, !tbaa !26
  store i32 %index, ptr %index.addr, align 4, !tbaa !25
  store i32 %old_count, ptr %old_count.addr, align 4, !tbaa !25
  store i32 %new_count, ptr %new_count.addr, align 4, !tbaa !25
  store ptr %elements, ptr %elements.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %new_size) #7
  %0 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %size = getelementptr inbounds %struct.VoidArray, ptr %0, i32 0, i32 1
  %1 = load i32, ptr %size, align 8, !tbaa !28
  %2 = load i32, ptr %new_count.addr, align 4, !tbaa !25
  %add = add i32 %1, %2
  %3 = load i32, ptr %old_count.addr, align 4, !tbaa !25
  %sub = sub i32 %add, %3
  store i32 %sub, ptr %new_size, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 4, ptr %old_end) #7
  %4 = load i32, ptr %index.addr, align 4, !tbaa !25
  %5 = load i32, ptr %old_count.addr, align 4, !tbaa !25
  %add1 = add i32 %4, %5
  store i32 %add1, ptr %old_end, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 4, ptr %new_end) #7
  %6 = load i32, ptr %index.addr, align 4, !tbaa !25
  %7 = load i32, ptr %new_count.addr, align 4, !tbaa !25
  %add2 = add i32 %6, %7
  store i32 %add2, ptr %new_end, align 4, !tbaa !25
  %8 = load i32, ptr %old_end, align 4, !tbaa !25
  %9 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %size3 = getelementptr inbounds %struct.VoidArray, ptr %9, i32 0, i32 1
  %10 = load i32, ptr %size3, align 8, !tbaa !28
  %cmp = icmp ule i32 %8, %10
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(ptr noundef @.str.2, ptr noundef @.str.3, i32 noundef 189, ptr noundef @__PRETTY_FUNCTION__.array__splice) #8
  unreachable

if.end:                                           ; preds = %if.then
  %11 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %12 = load i64, ptr %element_size.addr, align 8, !tbaa !26
  %13 = load i32, ptr %new_size, align 4, !tbaa !25
  call void @array__reserve(ptr noundef %11, i64 noundef %12, i32 noundef %13)
  call void @llvm.lifetime.start.p0(i64 8, ptr %contents) #7
  %14 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %contents4 = getelementptr inbounds %struct.VoidArray, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %contents4, align 8, !tbaa !30
  store ptr %15, ptr %contents, align 8, !tbaa !4
  %16 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %size5 = getelementptr inbounds %struct.VoidArray, ptr %16, i32 0, i32 1
  %17 = load i32, ptr %size5, align 8, !tbaa !28
  %18 = load i32, ptr %old_end, align 4, !tbaa !25
  %cmp6 = icmp ugt i32 %17, %18
  br i1 %cmp6, label %if.then7, label %if.end15

if.then7:                                         ; preds = %if.end
  %19 = load ptr, ptr %contents, align 8, !tbaa !4
  %20 = load i32, ptr %new_end, align 4, !tbaa !25
  %conv = zext i32 %20 to i64
  %21 = load i64, ptr %element_size.addr, align 8, !tbaa !26
  %mul = mul i64 %conv, %21
  %add.ptr = getelementptr inbounds i8, ptr %19, i64 %mul
  %22 = load ptr, ptr %contents, align 8, !tbaa !4
  %23 = load i32, ptr %old_end, align 4, !tbaa !25
  %conv8 = zext i32 %23 to i64
  %24 = load i64, ptr %element_size.addr, align 8, !tbaa !26
  %mul9 = mul i64 %conv8, %24
  %add.ptr10 = getelementptr inbounds i8, ptr %22, i64 %mul9
  %25 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %size11 = getelementptr inbounds %struct.VoidArray, ptr %25, i32 0, i32 1
  %26 = load i32, ptr %size11, align 8, !tbaa !28
  %27 = load i32, ptr %old_end, align 4, !tbaa !25
  %sub12 = sub i32 %26, %27
  %conv13 = zext i32 %sub12 to i64
  %28 = load i64, ptr %element_size.addr, align 8, !tbaa !26
  %mul14 = mul i64 %conv13, %28
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %add.ptr, ptr align 1 %add.ptr10, i64 %mul14, i1 false)
  br label %if.end15

if.end15:                                         ; preds = %if.then7, %if.end
  %29 = load i32, ptr %new_count.addr, align 4, !tbaa !25
  %cmp16 = icmp ugt i32 %29, 0
  br i1 %cmp16, label %if.then18, label %if.end32

if.then18:                                        ; preds = %if.end15
  %30 = load ptr, ptr %elements.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %30, null
  br i1 %tobool, label %if.then19, label %if.else25

if.then19:                                        ; preds = %if.then18
  %31 = load ptr, ptr %contents, align 8, !tbaa !4
  %32 = load i32, ptr %index.addr, align 4, !tbaa !25
  %conv20 = zext i32 %32 to i64
  %33 = load i64, ptr %element_size.addr, align 8, !tbaa !26
  %mul21 = mul i64 %conv20, %33
  %add.ptr22 = getelementptr inbounds i8, ptr %31, i64 %mul21
  %34 = load ptr, ptr %elements.addr, align 8, !tbaa !4
  %35 = load i32, ptr %new_count.addr, align 4, !tbaa !25
  %conv23 = zext i32 %35 to i64
  %36 = load i64, ptr %element_size.addr, align 8, !tbaa !26
  %mul24 = mul i64 %conv23, %36
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr22, ptr align 1 %34, i64 %mul24, i1 false)
  br label %if.end31

if.else25:                                        ; preds = %if.then18
  %37 = load ptr, ptr %contents, align 8, !tbaa !4
  %38 = load i32, ptr %index.addr, align 4, !tbaa !25
  %conv26 = zext i32 %38 to i64
  %39 = load i64, ptr %element_size.addr, align 8, !tbaa !26
  %mul27 = mul i64 %conv26, %39
  %add.ptr28 = getelementptr inbounds i8, ptr %37, i64 %mul27
  %40 = load i32, ptr %new_count.addr, align 4, !tbaa !25
  %conv29 = zext i32 %40 to i64
  %41 = load i64, ptr %element_size.addr, align 8, !tbaa !26
  %mul30 = mul i64 %conv29, %41
  call void @llvm.memset.p0.i64(ptr align 1 %add.ptr28, i8 0, i64 %mul30, i1 false)
  br label %if.end31

if.end31:                                         ; preds = %if.else25, %if.then19
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %if.end15
  %42 = load i32, ptr %new_count.addr, align 4, !tbaa !25
  %43 = load i32, ptr %old_count.addr, align 4, !tbaa !25
  %sub33 = sub i32 %42, %43
  %44 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %size34 = getelementptr inbounds %struct.VoidArray, ptr %44, i32 0, i32 1
  %45 = load i32, ptr %size34, align 8, !tbaa !28
  %add35 = add i32 %45, %sub33
  store i32 %add35, ptr %size34, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0(i64 8, ptr %contents) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %new_end) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %old_end) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %new_size) #7
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @array__reserve(ptr noundef %self, i64 noundef %element_size, i32 noundef %new_capacity) #2 {
entry:
  %self.addr = alloca ptr, align 8
  %element_size.addr = alloca i64, align 8
  %new_capacity.addr = alloca i32, align 4
  store ptr %self, ptr %self.addr, align 8, !tbaa !4
  store i64 %element_size, ptr %element_size.addr, align 8, !tbaa !26
  store i32 %new_capacity, ptr %new_capacity.addr, align 4, !tbaa !25
  %0 = load i32, ptr %new_capacity.addr, align 4, !tbaa !25
  %1 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %capacity = getelementptr inbounds %struct.VoidArray, ptr %1, i32 0, i32 2
  %2 = load i32, ptr %capacity, align 4, !tbaa !29
  %cmp = icmp ugt i32 %0, %2
  br i1 %cmp, label %if.then, label %if.end9

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %contents = getelementptr inbounds %struct.VoidArray, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %contents, align 8, !tbaa !30
  %tobool = icmp ne ptr %4, null
  br i1 %tobool, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.then
  %5 = load ptr, ptr @ts_current_realloc, align 8, !tbaa !4
  %6 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %contents2 = getelementptr inbounds %struct.VoidArray, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %contents2, align 8, !tbaa !30
  %8 = load i32, ptr %new_capacity.addr, align 4, !tbaa !25
  %conv = zext i32 %8 to i64
  %9 = load i64, ptr %element_size.addr, align 8, !tbaa !26
  %mul = mul i64 %conv, %9
  %call = call ptr %5(ptr noundef %7, i64 noundef %mul)
  %10 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %contents3 = getelementptr inbounds %struct.VoidArray, ptr %10, i32 0, i32 0
  store ptr %call, ptr %contents3, align 8, !tbaa !30
  br label %if.end

if.else:                                          ; preds = %if.then
  %11 = load ptr, ptr @ts_current_malloc, align 8, !tbaa !4
  %12 = load i32, ptr %new_capacity.addr, align 4, !tbaa !25
  %conv4 = zext i32 %12 to i64
  %13 = load i64, ptr %element_size.addr, align 8, !tbaa !26
  %mul5 = mul i64 %conv4, %13
  %call6 = call ptr %11(i64 noundef %mul5)
  %14 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %contents7 = getelementptr inbounds %struct.VoidArray, ptr %14, i32 0, i32 0
  store ptr %call6, ptr %contents7, align 8, !tbaa !30
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then1
  %15 = load i32, ptr %new_capacity.addr, align 4, !tbaa !25
  %16 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %capacity8 = getelementptr inbounds %struct.VoidArray, ptr %16, i32 0, i32 2
  store i32 %15, ptr %capacity8, align 4, !tbaa !29
  br label %if.end9

if.end9:                                          ; preds = %if.end, %entry
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @ts_subtree_child_count(ptr %self.coerce) #2 {
entry:
  %self = alloca %union.Subtree, align 8
  %coerce.dive = getelementptr inbounds %union.Subtree, ptr %self, i32 0, i32 0
  store ptr %self.coerce, ptr %coerce.dive, align 8
  %bf.load = load i8, ptr %self, align 8
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = trunc i8 %bf.clear to i1
  br i1 %bf.cast, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %0 = load ptr, ptr %self, align 8, !tbaa !35
  %child_count = getelementptr inbounds %struct.SubtreeHeapData, ptr %0, i32 0, i32 5
  %1 = load i32, ptr %child_count, align 4, !tbaa !47
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %1, %cond.false ]
  ret i32 %cond
}

; Function Attrs: inlinehint nounwind uwtable
define internal { i64, i32 } @length_add(i64 %len1.coerce0, i32 %len1.coerce1, i64 %len2.coerce0, i32 %len2.coerce1) #2 {
entry:
  %retval = alloca %struct.Length, align 4
  %len1 = alloca %struct.Length, align 4
  %coerce = alloca { i64, i32 }, align 4
  %len2 = alloca %struct.Length, align 4
  %coerce1 = alloca { i64, i32 }, align 4
  %tmp = alloca %struct.TSPoint, align 4
  %retval.coerce = alloca { i64, i32 }, align 8
  %0 = getelementptr inbounds { i64, i32 }, ptr %coerce, i32 0, i32 0
  store i64 %len1.coerce0, ptr %0, align 4
  %1 = getelementptr inbounds { i64, i32 }, ptr %coerce, i32 0, i32 1
  store i32 %len1.coerce1, ptr %1, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %len1, ptr align 4 %coerce, i64 12, i1 false)
  %2 = getelementptr inbounds { i64, i32 }, ptr %coerce1, i32 0, i32 0
  store i64 %len2.coerce0, ptr %2, align 4
  %3 = getelementptr inbounds { i64, i32 }, ptr %coerce1, i32 0, i32 1
  store i32 %len2.coerce1, ptr %3, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %len2, ptr align 4 %coerce1, i64 12, i1 false)
  %bytes = getelementptr inbounds %struct.Length, ptr %len1, i32 0, i32 0
  %4 = load i32, ptr %bytes, align 4, !tbaa !21
  %bytes2 = getelementptr inbounds %struct.Length, ptr %len2, i32 0, i32 0
  %5 = load i32, ptr %bytes2, align 4, !tbaa !21
  %add = add i32 %4, %5
  %bytes3 = getelementptr inbounds %struct.Length, ptr %retval, i32 0, i32 0
  store i32 %add, ptr %bytes3, align 4, !tbaa !21
  %extent = getelementptr inbounds %struct.Length, ptr %retval, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #7
  %extent4 = getelementptr inbounds %struct.Length, ptr %len1, i32 0, i32 1
  %extent5 = getelementptr inbounds %struct.Length, ptr %len2, i32 0, i32 1
  %6 = load i64, ptr %extent4, align 4
  %7 = load i64, ptr %extent5, align 4
  %call = call i64 @point_add(i64 %6, i64 %7)
  store i64 %call, ptr %tmp, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %extent, ptr align 4 %tmp, i64 8, i1 false), !tbaa.struct !73
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #7
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval.coerce, ptr align 4 %retval, i64 12, i1 false)
  %8 = load { i64, i32 }, ptr %retval.coerce, align 8
  ret { i64, i32 } %8
}

; Function Attrs: inlinehint nounwind uwtable
define internal { i64, i32 } @ts_subtree_size(ptr %self.coerce) #2 {
entry:
  %retval = alloca %struct.Length, align 4
  %self = alloca %union.Subtree, align 8
  %retval.coerce = alloca { i64, i32 }, align 8
  %coerce.dive = getelementptr inbounds %union.Subtree, ptr %self, i32 0, i32 0
  store ptr %self.coerce, ptr %coerce.dive, align 8
  %bf.load = load i8, ptr %self, align 8
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = trunc i8 %bf.clear to i1
  br i1 %bf.cast, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %bytes = getelementptr inbounds %struct.Length, ptr %retval, i32 0, i32 0
  %size_bytes = getelementptr inbounds %struct.SubtreeInlineData, ptr %self, i32 0, i32 6
  %0 = load i8, ptr %size_bytes, align 1, !tbaa !35
  %conv = zext i8 %0 to i32
  store i32 %conv, ptr %bytes, align 4, !tbaa !21
  %extent = getelementptr inbounds %struct.Length, ptr %retval, i32 0, i32 1
  %row = getelementptr inbounds %struct.TSPoint, ptr %extent, i32 0, i32 0
  store i32 0, ptr %row, align 4, !tbaa !49
  %column = getelementptr inbounds %struct.TSPoint, ptr %extent, i32 0, i32 1
  %size_bytes1 = getelementptr inbounds %struct.SubtreeInlineData, ptr %self, i32 0, i32 6
  %1 = load i8, ptr %size_bytes1, align 1, !tbaa !35
  %conv2 = zext i8 %1 to i32
  store i32 %conv2, ptr %column, align 4, !tbaa !50
  br label %return

if.else:                                          ; preds = %entry
  %2 = load ptr, ptr %self, align 8, !tbaa !35
  %size = getelementptr inbounds %struct.SubtreeHeapData, ptr %2, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %retval, ptr align 8 %size, i64 12, i1 false), !tbaa.struct !46
  br label %return

return:                                           ; preds = %if.else, %if.then
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval.coerce, ptr align 4 %retval, i64 12, i1 false)
  %3 = load { i64, i32 }, ptr %retval.coerce, align 8
  ret { i64, i32 } %3
}

; Function Attrs: inlinehint nounwind uwtable
define internal { i64, i32 } @ts_subtree_padding(ptr %self.coerce) #2 {
entry:
  %retval = alloca %struct.Length, align 4
  %self = alloca %union.Subtree, align 8
  %retval.coerce = alloca { i64, i32 }, align 8
  %coerce.dive = getelementptr inbounds %union.Subtree, ptr %self, i32 0, i32 0
  store ptr %self.coerce, ptr %coerce.dive, align 8
  %bf.load = load i8, ptr %self, align 8
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = trunc i8 %bf.clear to i1
  br i1 %bf.cast, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %bytes = getelementptr inbounds %struct.Length, ptr %retval, i32 0, i32 0
  %padding_bytes = getelementptr inbounds %struct.SubtreeInlineData, ptr %self, i32 0, i32 5
  %0 = load i8, ptr %padding_bytes, align 2, !tbaa !35
  %conv = zext i8 %0 to i32
  store i32 %conv, ptr %bytes, align 4, !tbaa !21
  %extent = getelementptr inbounds %struct.Length, ptr %retval, i32 0, i32 1
  %row = getelementptr inbounds %struct.TSPoint, ptr %extent, i32 0, i32 0
  %padding_rows = getelementptr inbounds %struct.SubtreeInlineData, ptr %self, i32 0, i32 4
  %bf.load1 = load i8, ptr %padding_rows, align 1
  %bf.clear2 = and i8 %bf.load1, 15
  %conv3 = zext i8 %bf.clear2 to i32
  store i32 %conv3, ptr %row, align 4, !tbaa !49
  %column = getelementptr inbounds %struct.TSPoint, ptr %extent, i32 0, i32 1
  %padding_columns = getelementptr inbounds %struct.SubtreeInlineData, ptr %self, i32 0, i32 3
  %1 = load i8, ptr %padding_columns, align 4, !tbaa !35
  %conv4 = zext i8 %1 to i32
  store i32 %conv4, ptr %column, align 4, !tbaa !50
  br label %return

if.else:                                          ; preds = %entry
  %2 = load ptr, ptr %self, align 8, !tbaa !35
  %padding = getelementptr inbounds %struct.SubtreeHeapData, ptr %2, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %retval, ptr align 4 %padding, i64 12, i1 false), !tbaa.struct !46
  br label %return

return:                                           ; preds = %if.else, %if.then
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval.coerce, ptr align 4 %retval, i64 12, i1 false)
  %3 = load { i64, i32 }, ptr %retval.coerce, align 8
  ret { i64, i32 } %3
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @point_add(i64 %a.coerce, i64 %b.coerce) #2 {
entry:
  %retval = alloca %struct.TSPoint, align 4
  %a = alloca %struct.TSPoint, align 4
  %b = alloca %struct.TSPoint, align 4
  store i64 %a.coerce, ptr %a, align 4
  store i64 %b.coerce, ptr %b, align 4
  %row = getelementptr inbounds %struct.TSPoint, ptr %b, i32 0, i32 0
  %0 = load i32, ptr %row, align 4, !tbaa !49
  %cmp = icmp ugt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %row1 = getelementptr inbounds %struct.TSPoint, ptr %a, i32 0, i32 0
  %1 = load i32, ptr %row1, align 4, !tbaa !49
  %row2 = getelementptr inbounds %struct.TSPoint, ptr %b, i32 0, i32 0
  %2 = load i32, ptr %row2, align 4, !tbaa !49
  %add = add i32 %1, %2
  %column = getelementptr inbounds %struct.TSPoint, ptr %b, i32 0, i32 1
  %3 = load i32, ptr %column, align 4, !tbaa !50
  %call = call i64 @point__new(i32 noundef %add, i32 noundef %3)
  store i64 %call, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %row3 = getelementptr inbounds %struct.TSPoint, ptr %a, i32 0, i32 0
  %4 = load i32, ptr %row3, align 4, !tbaa !49
  %column4 = getelementptr inbounds %struct.TSPoint, ptr %a, i32 0, i32 1
  %5 = load i32, ptr %column4, align 4, !tbaa !50
  %column5 = getelementptr inbounds %struct.TSPoint, ptr %b, i32 0, i32 1
  %6 = load i32, ptr %column5, align 4, !tbaa !50
  %add6 = add i32 %5, %6
  %call7 = call i64 @point__new(i32 noundef %4, i32 noundef %add6)
  store i64 %call7, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %7 = load i64, ptr %retval, align 4
  ret i64 %7
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @point__new(i32 noundef %row, i32 noundef %column) #2 {
entry:
  %retval = alloca %struct.TSPoint, align 4
  %row.addr = alloca i32, align 4
  %column.addr = alloca i32, align 4
  store i32 %row, ptr %row.addr, align 4, !tbaa !25
  store i32 %column, ptr %column.addr, align 4, !tbaa !25
  %row1 = getelementptr inbounds %struct.TSPoint, ptr %retval, i32 0, i32 0
  %0 = load i32, ptr %row.addr, align 4, !tbaa !25
  store i32 %0, ptr %row1, align 4, !tbaa !49
  %column2 = getelementptr inbounds %struct.TSPoint, ptr %retval, i32 0, i32 1
  %1 = load i32, ptr %column.addr, align 4, !tbaa !25
  store i32 %1, ptr %column2, align 4, !tbaa !50
  %2 = load i64, ptr %retval, align 4
  ret i64 %2
}

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i1 @point_gte(i64 %a.coerce, i64 %b.coerce) #2 {
entry:
  %a = alloca %struct.TSPoint, align 4
  %b = alloca %struct.TSPoint, align 4
  store i64 %a.coerce, ptr %a, align 4
  store i64 %b.coerce, ptr %b, align 4
  %row = getelementptr inbounds %struct.TSPoint, ptr %a, i32 0, i32 0
  %0 = load i32, ptr %row, align 4, !tbaa !49
  %row1 = getelementptr inbounds %struct.TSPoint, ptr %b, i32 0, i32 0
  %1 = load i32, ptr %row1, align 4, !tbaa !49
  %cmp = icmp ugt i32 %0, %1
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %row2 = getelementptr inbounds %struct.TSPoint, ptr %a, i32 0, i32 0
  %2 = load i32, ptr %row2, align 4, !tbaa !49
  %row3 = getelementptr inbounds %struct.TSPoint, ptr %b, i32 0, i32 0
  %3 = load i32, ptr %row3, align 4, !tbaa !49
  %cmp4 = icmp eq i32 %2, %3
  br i1 %cmp4, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %column = getelementptr inbounds %struct.TSPoint, ptr %a, i32 0, i32 1
  %4 = load i32, ptr %column, align 4, !tbaa !50
  %column5 = getelementptr inbounds %struct.TSPoint, ptr %b, i32 0, i32 1
  %5 = load i32, ptr %column5, align 4, !tbaa !50
  %cmp6 = icmp uge i32 %4, %5
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %6 = phi i1 [ false, %lor.rhs ], [ %cmp6, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %entry
  %7 = phi i1 [ true, %entry ], [ %6, %land.end ]
  ret i1 %7
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }

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
!8 = !{!9, !5, i64 24}
!9 = !{!"", !6, i64 0, !5, i64 16, !5, i64 24}
!10 = !{!11, !5, i64 0}
!11 = !{!"", !5, i64 0, !12, i64 8}
!12 = !{!"", !5, i64 0, !13, i64 8, !13, i64 12}
!13 = !{!"int", !6, i64 0}
!14 = !{!11, !13, i64 16}
!15 = !{!11, !5, i64 8}
!16 = !{!9, !5, i64 16}
!17 = !{!18, !5, i64 0}
!18 = !{!"", !5, i64 0, !19, i64 8, !13, i64 20, !13, i64 24}
!19 = !{!"", !13, i64 0, !20, i64 4}
!20 = !{!"", !13, i64 0, !13, i64 4}
!21 = !{!19, !13, i64 0}
!22 = !{!18, !13, i64 20}
!23 = !{!18, !13, i64 24}
!24 = !{i64 0, i64 8, !4, i64 8, i64 4, !25, i64 12, i64 4, !25, i64 16, i64 4, !25, i64 20, i64 4, !25, i64 24, i64 4, !25}
!25 = !{!13, !13, i64 0}
!26 = !{!27, !27, i64 0}
!27 = !{!"long", !6, i64 0}
!28 = !{!12, !13, i64 8}
!29 = !{!12, !13, i64 12}
!30 = !{!12, !5, i64 0}
!31 = !{!32, !32, i64 0}
!32 = !{!"_Bool", !6, i64 0}
!33 = !{i8 0, i8 2}
!34 = !{}
!35 = !{!6, !6, i64 0}
!36 = !{!37, !5, i64 8}
!37 = !{!"", !6, i64 0, !5, i64 8, !19, i64 16, !13, i64 28, !13, i64 32, !5, i64 40}
!38 = !{!37, !13, i64 28}
!39 = !{!37, !13, i64 32}
!40 = !{!37, !5, i64 40}
!41 = !{!42, !5, i64 8}
!42 = !{!"TSTree", !6, i64 0, !5, i64 8, !5, i64 16, !13, i64 24}
!43 = !{i64 0, i64 1, !31, i64 0, i64 1, !31, i64 0, i64 1, !31, i64 0, i64 1, !31, i64 0, i64 1, !31, i64 0, i64 1, !31, i64 0, i64 1, !31, i64 1, i64 1, !35, i64 2, i64 2, !44, i64 4, i64 1, !35, i64 5, i64 1, !35, i64 5, i64 1, !35, i64 6, i64 1, !35, i64 7, i64 1, !35, i64 0, i64 8, !4}
!44 = !{!45, !45, i64 0}
!45 = !{!"short", !6, i64 0}
!46 = !{i64 0, i64 4, !25, i64 4, i64 4, !25, i64 8, i64 4, !25}
!47 = !{!48, !13, i64 36}
!48 = !{!"", !13, i64 0, !19, i64 4, !19, i64 16, !13, i64 28, !13, i64 32, !13, i64 36, !45, i64 40, !45, i64 42, !32, i64 44, !32, i64 44, !32, i64 44, !32, i64 44, !32, i64 44, !32, i64 44, !32, i64 44, !32, i64 44, !32, i64 45, !32, i64 45, !32, i64 45, !6, i64 48}
!49 = !{!20, !13, i64 0}
!50 = !{!20, !13, i64 4}
!51 = !{!52, !5, i64 128}
!52 = !{!"TSLanguage", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20, !13, i64 24, !13, i64 28, !13, i64 32, !45, i64 36, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !5, i64 88, !5, i64 96, !5, i64 104, !5, i64 112, !5, i64 120, !5, i64 128, !5, i64 136, !5, i64 144, !5, i64 152, !45, i64 160, !53, i64 168, !5, i64 224}
!53 = !{!"", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48}
!54 = !{!52, !45, i64 36}
!55 = !{!56, !32, i64 0}
!56 = !{!"", !32, i64 0, !32, i64 1, !32, i64 2}
!57 = !{!56, !32, i64 2}
!58 = !{!56, !32, i64 1}
!59 = !{!60, !32, i64 3}
!60 = !{!"", !45, i64 0, !6, i64 2, !32, i64 3}
!61 = !{!60, !6, i64 2}
!62 = !{!60, !45, i64 0}
!63 = !{!48, !45, i64 40}
!64 = !{!52, !13, i64 32}
!65 = !{!52, !5, i64 88}
!66 = !{i64 0, i64 2, !44, i64 2, i64 2, !44}
!67 = !{!52, !5, i64 96}
!68 = !{!69, !45, i64 0}
!69 = !{!"", !45, i64 0, !45, i64 2}
!70 = !{!69, !45, i64 2}
!71 = !{!52, !5, i64 80}
!72 = !{!11, !13, i64 20}
!73 = !{i64 0, i64 4, !25, i64 4, i64 4, !25}

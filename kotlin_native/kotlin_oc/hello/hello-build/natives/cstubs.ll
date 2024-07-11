; ModuleID = 'cstubs.bc'
source_filename = "-"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%0 = type opaque
%1 = type opaque
%struct.__NSConstantString_tag = type { i32*, i32, i8*, i64 }
%struct._class_t = type { %struct._class_t*, %struct._class_t*, %struct._objc_cache*, i8* (i8*, i8*)**, %struct._class_ro_t* }
%struct._objc_cache = type opaque
%struct._class_ro_t = type { i32, i32, i32, i8*, i8*, %struct.__method_list_t*, %struct._objc_protocol_list*, %struct._ivar_list_t*, i8*, %struct._prop_list_t* }
%struct.__method_list_t = type { i32, i32, [0 x %struct._objc_method] }
%struct._objc_method = type { i8*, i8*, i8* }
%struct._objc_protocol_list = type { i64, [0 x %struct._protocol_t*] }
%struct._protocol_t = type { i8*, i8*, %struct._objc_protocol_list*, %struct.__method_list_t*, %struct.__method_list_t*, %struct.__method_list_t*, %struct.__method_list_t*, %struct._prop_list_t*, i32, i32, i8**, i8*, %struct._prop_list_t* }
%struct._ivar_list_t = type { i32, i32, [0 x %struct._ivar_t] }
%struct._ivar_t = type { i32*, i8*, i8*, i32, i32 }
%struct._prop_list_t = type { i32, i32, [0 x %struct._prop_t] }
%struct._prop_t = type { i8*, i8* }

@__CFConstantStringClassReference = external global [0 x i32]
@.str = private unnamed_addr constant [18 x i8] c"hello Objective-C\00", section "__TEXT,__cstring,cstring_literals", align 1
@_unnamed_cfstring_ = private global %struct.__NSConstantString_tag { i32* getelementptr inbounds ([0 x i32], [0 x i32]* @__CFConstantStringClassReference, i32 0, i32 0), i32 1992, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i64 17 }, section "__DATA,__cfstring", align 8 #0
@.str.1 = private unnamed_addr constant [4 x i8] c"%ld\00", section "__TEXT,__cstring,cstring_literals", align 1
@_unnamed_cfstring_.2 = private global %struct.__NSConstantString_tag { i32* getelementptr inbounds ([0 x i32], [0 x i32]* @__CFConstantStringClassReference, i32 0, i32 0), i32 1992, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i64 3 }, section "__DATA,__cfstring", align 8 #0
@OBJC_METH_VAR_NAME_ = private unnamed_addr constant [6 x i8] c"count\00", section "__TEXT,__objc_methname,cstring_literals", align 1
@OBJC_SELECTOR_REFERENCES_ = internal externally_initialized global i8* getelementptr inbounds ([6 x i8], [6 x i8]* @OBJC_METH_VAR_NAME_, i64 0, i64 0), section "__DATA,__objc_selrefs,literal_pointers,no_dead_strip", align 8
@.str.3 = private unnamed_addr constant [3 x i8] c"%@\00", section "__TEXT,__cstring,cstring_literals", align 1
@_unnamed_cfstring_.4 = private global %struct.__NSConstantString_tag { i32* getelementptr inbounds ([0 x i32], [0 x i32]* @__CFConstantStringClassReference, i32 0, i32 0), i32 1992, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i64 2 }, section "__DATA,__cfstring", align 8 #0
@OBJC_METH_VAR_NAME_.5 = private unnamed_addr constant [26 x i8] c"objectAtIndexedSubscript:\00", section "__TEXT,__objc_methname,cstring_literals", align 1
@OBJC_SELECTOR_REFERENCES_.6 = internal externally_initialized global i8* getelementptr inbounds ([26 x i8], [26 x i8]* @OBJC_METH_VAR_NAME_.5, i64 0, i64 0), section "__DATA,__objc_selrefs,literal_pointers,no_dead_strip", align 8
@"OBJC_CLASS_$_NSNumber" = external global %struct._class_t
@"OBJC_CLASSLIST_REFERENCES_$_" = internal global %struct._class_t* @"OBJC_CLASS_$_NSNumber", section "__DATA,__objc_classrefs,regular,no_dead_strip", align 8
@OBJC_METH_VAR_NAME_.7 = private unnamed_addr constant [15 x i8] c"numberWithInt:\00", section "__TEXT,__objc_methname,cstring_literals", align 1
@OBJC_SELECTOR_REFERENCES_.8 = internal externally_initialized global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @OBJC_METH_VAR_NAME_.7, i64 0, i64 0), section "__DATA,__objc_selrefs,literal_pointers,no_dead_strip", align 8
@"OBJC_CLASS_$_NSArray" = external global %struct._class_t
@"OBJC_CLASSLIST_REFERENCES_$_.9" = internal global %struct._class_t* @"OBJC_CLASS_$_NSArray", section "__DATA,__objc_classrefs,regular,no_dead_strip", align 8
@OBJC_METH_VAR_NAME_.10 = private unnamed_addr constant [24 x i8] c"arrayWithObjects:count:\00", section "__TEXT,__objc_methname,cstring_literals", align 1
@OBJC_SELECTOR_REFERENCES_.11 = internal externally_initialized global i8* getelementptr inbounds ([24 x i8], [24 x i8]* @OBJC_METH_VAR_NAME_.10, i64 0, i64 0), section "__DATA,__objc_selrefs,literal_pointers,no_dead_strip", align 8
@"\01knifunptr_hello0_sayHello" = local_unnamed_addr global i8* bitcast (void ()* @hello_sayHello_wrapper0 to i8*), align 8
@"\01knifunptr_hello1_printArray" = local_unnamed_addr global i8* bitcast (%0* (%0*)* @hello_printArray_wrapper1 to i8*), align 8
@"\01knifunptr_hello2_callint" = local_unnamed_addr global i8* bitcast (i32 (i32)* @hello_callint_wrapper2 to i8*), align 8
@llvm.compiler.used = appending global [10 x i8*] [i8* bitcast (%struct._class_t** @"OBJC_CLASSLIST_REFERENCES_$_" to i8*), i8* bitcast (%struct._class_t** @"OBJC_CLASSLIST_REFERENCES_$_.9" to i8*), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @OBJC_METH_VAR_NAME_, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @OBJC_METH_VAR_NAME_.10, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @OBJC_METH_VAR_NAME_.5, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @OBJC_METH_VAR_NAME_.7, i32 0, i32 0), i8* bitcast (i8** @OBJC_SELECTOR_REFERENCES_ to i8*), i8* bitcast (i8** @OBJC_SELECTOR_REFERENCES_.11 to i8*), i8* bitcast (i8** @OBJC_SELECTOR_REFERENCES_.6 to i8*), i8* bitcast (i8** @OBJC_SELECTOR_REFERENCES_.8 to i8*)], section "llvm.metadata"

; Function Attrs: uwtable
define void @sayHello() local_unnamed_addr #1 {
  notail call void (i8*, ...) @NSLog(i8* bitcast (%struct.__NSConstantString_tag* @_unnamed_cfstring_ to i8*)), !clang.arc.no_objc_arc_exceptions !10
  ret void
}

declare void @NSLog(i8*, ...) local_unnamed_addr #2

; Function Attrs: norecurse nounwind readnone uwtable
define i32 @callint(i32 returned %0) local_unnamed_addr #3 {
  ret i32 %0
}

; Function Attrs: uwtable
define %0* @printArray(%0* %0) local_unnamed_addr #1 {
  %2 = alloca [5 x i8*], align 8
  %3 = bitcast %0* %0 to i8*
  %4 = tail call i8* @llvm.objc.retain(i8* %3) #4
  %5 = load i8*, i8** @OBJC_SELECTOR_REFERENCES_, align 8, !invariant.load !10
  %6 = tail call i64 bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to i64 (i8*, i8*)*)(i8* %3, i8* %5), !clang.arc.no_objc_arc_exceptions !10
  notail call void (i8*, ...) @NSLog(i8* bitcast (%struct.__NSConstantString_tag* @_unnamed_cfstring_.2 to i8*), i64 %6), !clang.arc.no_objc_arc_exceptions !10
  %7 = tail call i64 bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to i64 (i8*, i8*)*)(i8* %3, i8* %5), !clang.arc.no_objc_arc_exceptions !10
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = load i8*, i8** @OBJC_SELECTOR_REFERENCES_.6, align 8, !invariant.load !10
  br label %49

11:                                               ; preds = %49, %1
  %12 = load i8*, i8** bitcast (%struct._class_t** @"OBJC_CLASSLIST_REFERENCES_$_" to i8**), align 8
  %13 = load i8*, i8** @OBJC_SELECTOR_REFERENCES_.8, align 8, !invariant.load !10
  %14 = tail call %1* bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to %1* (i8*, i8*, i32)*)(i8* %12, i8* %13, i32 1), !clang.arc.no_objc_arc_exceptions !10
  %15 = bitcast %1* %14 to i8*
  %16 = tail call i8* @llvm.objc.retainAutoreleasedReturnValue(i8* %15) #4
  %17 = bitcast [5 x i8*]* %2 to %1**
  store %1* %14, %1** %17, align 8, !tbaa !11
  %18 = getelementptr inbounds [5 x i8*], [5 x i8*]* %2, i64 0, i64 1
  %19 = load i8*, i8** bitcast (%struct._class_t** @"OBJC_CLASSLIST_REFERENCES_$_" to i8**), align 8
  %20 = tail call %1* bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to %1* (i8*, i8*, i32)*)(i8* %19, i8* %13, i32 2), !clang.arc.no_objc_arc_exceptions !10
  %21 = bitcast %1* %20 to i8*
  %22 = tail call i8* @llvm.objc.retainAutoreleasedReturnValue(i8* %21) #4
  %23 = bitcast i8** %18 to %1**
  store %1* %20, %1** %23, align 8, !tbaa !11
  %24 = getelementptr inbounds [5 x i8*], [5 x i8*]* %2, i64 0, i64 2
  %25 = load i8*, i8** bitcast (%struct._class_t** @"OBJC_CLASSLIST_REFERENCES_$_" to i8**), align 8
  %26 = tail call %1* bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to %1* (i8*, i8*, i32)*)(i8* %25, i8* %13, i32 3), !clang.arc.no_objc_arc_exceptions !10
  %27 = bitcast %1* %26 to i8*
  %28 = tail call i8* @llvm.objc.retainAutoreleasedReturnValue(i8* %27) #4
  %29 = bitcast i8** %24 to %1**
  store %1* %26, %1** %29, align 8, !tbaa !11
  %30 = getelementptr inbounds [5 x i8*], [5 x i8*]* %2, i64 0, i64 3
  %31 = load i8*, i8** bitcast (%struct._class_t** @"OBJC_CLASSLIST_REFERENCES_$_" to i8**), align 8
  %32 = tail call %1* bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to %1* (i8*, i8*, i32)*)(i8* %31, i8* %13, i32 4), !clang.arc.no_objc_arc_exceptions !10
  %33 = bitcast %1* %32 to i8*
  %34 = tail call i8* @llvm.objc.retainAutoreleasedReturnValue(i8* %33) #4
  %35 = bitcast i8** %30 to %1**
  store %1* %32, %1** %35, align 8, !tbaa !11
  %36 = getelementptr inbounds [5 x i8*], [5 x i8*]* %2, i64 0, i64 4
  %37 = load i8*, i8** bitcast (%struct._class_t** @"OBJC_CLASSLIST_REFERENCES_$_" to i8**), align 8
  %38 = tail call %1* bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to %1* (i8*, i8*, i32)*)(i8* %37, i8* %13, i32 5), !clang.arc.no_objc_arc_exceptions !10
  %39 = bitcast %1* %38 to i8*
  %40 = tail call i8* @llvm.objc.retainAutoreleasedReturnValue(i8* %39) #4
  %41 = bitcast i8** %36 to %1**
  store %1* %38, %1** %41, align 8, !tbaa !11
  %42 = load i8*, i8** bitcast (%struct._class_t** @"OBJC_CLASSLIST_REFERENCES_$_.9" to i8**), align 8
  %43 = load i8*, i8** @OBJC_SELECTOR_REFERENCES_.11, align 8, !invariant.load !10
  %44 = getelementptr inbounds [5 x i8*], [5 x i8*]* %2, i64 0, i64 0
  %45 = call i8* bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to i8* (i8*, i8*, i8**, i64)*)(i8* %42, i8* %43, i8** nonnull %44, i64 5), !clang.arc.no_objc_arc_exceptions !10
  %46 = tail call i8* @llvm.objc.retainAutoreleasedReturnValue(i8* %45) #4
  call void (...) @llvm.objc.clang.arc.use(%1* %14, %1* %20, %1* %26, %1* %32, %1* %38) #4
  %47 = bitcast i8* %45 to %0*
  call void @llvm.objc.release(i8* %39) #4, !clang.imprecise_release !10
  call void @llvm.objc.release(i8* %33) #4, !clang.imprecise_release !10
  call void @llvm.objc.release(i8* %27) #4, !clang.imprecise_release !10
  call void @llvm.objc.release(i8* %21) #4, !clang.imprecise_release !10
  call void @llvm.objc.release(i8* %15) #4, !clang.imprecise_release !10
  call void @llvm.objc.release(i8* %3) #4, !clang.imprecise_release !10
  %48 = tail call i8* @llvm.objc.autoreleaseReturnValue(i8* %45) #4
  ret %0* %47

49:                                               ; preds = %9, %49
  %50 = phi i64 [ 0, %9 ], [ %53, %49 ]
  %51 = tail call i8* bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to i8* (i8*, i8*, i64)*)(i8* %3, i8* %10, i64 %50), !clang.arc.no_objc_arc_exceptions !10
  %52 = tail call i8* @llvm.objc.retainAutoreleasedReturnValue(i8* %51) #4
  notail call void (i8*, ...) @NSLog(i8* bitcast (%struct.__NSConstantString_tag* @_unnamed_cfstring_.4 to i8*), i8* %51), !clang.arc.no_objc_arc_exceptions !10
  tail call void @llvm.objc.release(i8* %51) #4, !clang.imprecise_release !10
  %53 = add nuw i64 %50, 1
  %54 = tail call i64 bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to i64 (i8*, i8*)*)(i8* %3, i8* %5), !clang.arc.no_objc_arc_exceptions !10
  %55 = icmp ugt i64 %54, %53
  br i1 %55, label %49, label %11
}

; Function Attrs: nounwind
declare i8* @llvm.objc.retain(i8*) #4

; Function Attrs: nonlazybind
declare i8* @objc_msgSend(i8*, i8*, ...) local_unnamed_addr #5

; Function Attrs: nounwind
declare i8* @llvm.objc.retainAutoreleasedReturnValue(i8*) #4

; Function Attrs: nounwind
declare void @llvm.objc.release(i8*) #4

; Function Attrs: nounwind
declare void @llvm.objc.clang.arc.use(...) #4

; Function Attrs: nounwind
declare i8* @llvm.objc.autoreleaseReturnValue(i8*) #4

; Function Attrs: alwaysinline uwtable
define void @hello_sayHello_wrapper0() #6 {
  notail call void (i8*, ...) @NSLog(i8* bitcast (%struct.__NSConstantString_tag* @_unnamed_cfstring_ to i8*)), !clang.arc.no_objc_arc_exceptions !10
  ret void
}

; Function Attrs: alwaysinline uwtable
define %0* @hello_printArray_wrapper1(%0* %0) #6 {
  %2 = tail call %0* @printArray(%0* %0), !clang.arc.no_objc_arc_exceptions !10
  ret %0* %2
}

; Function Attrs: alwaysinline norecurse nounwind readnone uwtable
define i32 @hello_callint_wrapper2(i32 returned %0) #7 {
  ret i32 %0
}

attributes #0 = { "objc_arc_inert" }
attributes #1 = { uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="non-leaf" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-a7" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="non-leaf" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-a7" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { norecurse nounwind readnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="non-leaf" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-a7" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nonlazybind }
attributes #6 = { alwaysinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="non-leaf" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-a7" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { alwaysinline norecurse nounwind readnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="non-leaf" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-a7" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 14, i32 5]}
!1 = !{i32 1, !"clang.arc.retainAutoreleasedReturnValueMarker", !"mov\09fp, fp\09\09// marker for objc_retainAutoreleaseReturnValue"}
!2 = !{i32 1, !"Objective-C Version", i32 2}
!3 = !{i32 1, !"Objective-C Image Info Version", i32 0}
!4 = !{i32 1, !"Objective-C Image Info Section", !"__DATA,__objc_imageinfo,regular,no_dead_strip"}
!5 = !{i32 1, !"Objective-C Garbage Collection", i8 0}
!6 = !{i32 1, !"Objective-C Class Properties", i32 64}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{i32 8, !"PIC Level", i32 2}
!9 = !{!"clang version 11.1.0 (https://github.com/apple/llvm-project 9205ffc7869a87cf3906b80dbd45b969c5794ef7)"}
!10 = !{}
!11 = !{!12, !12, i64 0}
!12 = !{!"omnipotent char", !13, i64 0}
!13 = !{!"Simple C/C++ TBAA"}

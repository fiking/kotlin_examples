; ModuleID = 'cstubs.bc'
source_filename = "-"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%0 = type opaque

@"\01knifunptr_call0_callee" = local_unnamed_addr global i8* bitcast (%0* (%0*)* @call_callee_wrapper0 to i8*), align 8

; Function Attrs: nounwind uwtable
define %0* @callee(%0* returned %0) local_unnamed_addr #0 {
  %2 = bitcast %0* %0 to i8*
  %3 = tail call i8* @llvm.objc.retain(i8* %2) #1
  %4 = tail call i8* @llvm.objc.autoreleaseReturnValue(i8* %2) #1
  ret %0* %0
}

; Function Attrs: nounwind
declare i8* @llvm.objc.retain(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.objc.autoreleaseReturnValue(i8*) #1

; Function Attrs: alwaysinline nounwind uwtable
define %0* @call_callee_wrapper0(%0* returned %0) #2 {
  %2 = bitcast %0* %0 to i8*
  %3 = tail call i8* @llvm.objc.retain(i8* %2) #1
  %4 = tail call i8* @llvm.objc.autoreleaseReturnValue(i8* %2) #1
  ret %0* %0
}

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="non-leaf" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-a7" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { alwaysinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="non-leaf" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-a7" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }

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

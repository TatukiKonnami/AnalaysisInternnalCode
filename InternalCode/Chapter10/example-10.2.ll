; ModuleID = 'ClangNoteBook/Chapter10/example-10.2.c'
source_filename = "ClangNoteBook/Chapter10/example-10.2.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@.str = private unnamed_addr constant [10 x i8] c"data2.txt\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"\E3\82\AA\E3\83\BC\E3\83\97\E3\83\B3\E3\81\A7\E3\81\8D\E3\81\BE\E3\81\9B\E3\82\93\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"\E5\90\88\E8\A8\88=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.__sFILE*, align 8
  store i32 0, i32* %1, align 4
  %5 = call %struct.__sFILE* @"\01_fopen"(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  store %struct.__sFILE* %5, %struct.__sFILE** %4, align 8
  %6 = icmp eq %struct.__sFILE* %5, null
  br i1 %6, label %7, label %9

; <label>:7:                                      ; preds = %0
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0))
  store i32 1, i32* %1, align 4
  br label %23

; <label>:9:                                      ; preds = %0
  store i32 0, i32* %3, align 4
  br label %10

; <label>:10:                                     ; preds = %14, %9
  %11 = load %struct.__sFILE*, %struct.__sFILE** %4, align 8
  %12 = call i32 (%struct.__sFILE*, i8*, ...) @fscanf(%struct.__sFILE* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i32* %2)
  %13 = icmp ne i32 %12, -1
  br i1 %13, label %14, label %18

; <label>:14:                                     ; preds = %10
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* %3, align 4
  %17 = add nsw i32 %16, %15
  store i32 %17, i32* %3, align 4
  br label %10

; <label>:18:                                     ; preds = %10
  %19 = load %struct.__sFILE*, %struct.__sFILE** %4, align 8
  %20 = call i32 @fclose(%struct.__sFILE* %19)
  %21 = load i32, i32* %3, align 4
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 %21)
  store i32 0, i32* %1, align 4
  br label %23

; <label>:23:                                     ; preds = %18, %7
  %24 = load i32, i32* %1, align 4
  ret i32 %24
}

declare %struct.__sFILE* @"\01_fopen"(i8*, i8*) #1

declare i32 @printf(i8*, ...) #1

declare i32 @fscanf(%struct.__sFILE*, i8*, ...) #1

declare i32 @fclose(%struct.__sFILE*) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 6.0.1 (tags/RELEASE_601/final)"}

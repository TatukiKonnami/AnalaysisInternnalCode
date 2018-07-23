; ModuleID = 'ClangNoteBook/Chapter13/example-13.4.c'
source_filename = "ClangNoteBook/Chapter13/example-13.4.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@.str = private unnamed_addr constant [13 x i8] c"data13_4.txt\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"\E3\82\AA\E3\83\BC\E3\83\97\E3\83\B3\E3\81\A7\E3\81\8D\E3\81\BE\E3\81\9B\E3\82\93\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"\E6\9C\80\E5\A4\A7\E5\80\A4 \EF\BC\9A %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"\E6\9C\80\E5\A4\A7\E3\81\AE\E4\BD\8D\E7\BD\AE \EF\BC\9A %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"\E6\9C\80\E5\B0\8F\E5\80\A4 \EF\BC\9A %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"\E6\9C\80\E5\B0\8F\E3\81\AE\E4\BD\8D\E7\BD\AE \EF\BC\9A %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.__sFILE*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %9 = call %struct.__sFILE* @"\01_fopen"(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  store %struct.__sFILE* %9, %struct.__sFILE** %2, align 8
  %10 = icmp eq %struct.__sFILE* %9, null
  br i1 %10, label %11, label %13

; <label>:11:                                     ; preds = %0
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0))
  store i32 9, i32* %1, align 4
  br label %46

; <label>:13:                                     ; preds = %0
  store i32 0, i32* %3, align 4
  store i32 -9999, i32* %5, align 4
  store i32 9999, i32* %7, align 4
  br label %14

; <label>:14:                                     ; preds = %32, %13
  %15 = load %struct.__sFILE*, %struct.__sFILE** %2, align 8
  %16 = call i32 (%struct.__sFILE*, i8*, ...) @fscanf(%struct.__sFILE* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i32* %4)
  %17 = icmp ne i32 %16, -1
  br i1 %17, label %18, label %35

; <label>:18:                                     ; preds = %14
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %22, label %25

; <label>:22:                                     ; preds = %18
  %23 = load i32, i32* %4, align 4
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %3, align 4
  store i32 %24, i32* %6, align 4
  br label %25

; <label>:25:                                     ; preds = %22, %18
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %32

; <label>:29:                                     ; preds = %25
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %3, align 4
  store i32 %31, i32* %8, align 4
  br label %32

; <label>:32:                                     ; preds = %29, %25
  %33 = load i32, i32* %3, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %3, align 4
  br label %14

; <label>:35:                                     ; preds = %14
  %36 = load %struct.__sFILE*, %struct.__sFILE** %2, align 8
  %37 = call i32 @fclose(%struct.__sFILE* %36)
  %38 = load i32, i32* %5, align 4
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), i32 %38)
  %40 = load i32, i32* %6, align 4
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i32 0, i32 0), i32 %40)
  %42 = load i32, i32* %7, align 4
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i32 0, i32 0), i32 %42)
  %44 = load i32, i32* %8, align 4
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i32 0, i32 0), i32 %44)
  store i32 0, i32* %1, align 4
  br label %46

; <label>:46:                                     ; preds = %35, %11
  %47 = load i32, i32* %1, align 4
  ret i32 %47
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

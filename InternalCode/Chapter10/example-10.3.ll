; ModuleID = 'ClangNoteBook/Chapter10/example-10.3.c'
source_filename = "ClangNoteBook/Chapter10/example-10.3.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@.str = private unnamed_addr constant [41 x i8] c"\E3\83\95\E3\82\A1\E3\82\A4\E3\83\AB\E5\90\8D\E3\82\92\E5\85\A5\E3\82\8C\E3\81\A6\E3\81\8F\E3\81\A0\E3\81\95\E3\81\84 \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"\E3\82\AA\E3\83\BC\E3\83\97\E3\83\B3\E3\81\A7\E3\81\8D\E3\81\BE\E3\81\9B\E3\82\93\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"%04d:%s\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [200 x i8], align 16
  %4 = alloca [50 x i8], align 16
  %5 = alloca %struct.__sFILE*, align 8
  store i32 0, i32* %1, align 4
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i32 0, i32 0))
  %7 = getelementptr inbounds [50 x i8], [50 x i8]* %4, i32 0, i32 0
  %8 = call i8* @gets(i8* %7)
  %9 = getelementptr inbounds [50 x i8], [50 x i8]* %4, i32 0, i32 0
  %10 = call %struct.__sFILE* @"\01_fopen"(i8* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  store %struct.__sFILE* %10, %struct.__sFILE** %5, align 8
  %11 = icmp eq %struct.__sFILE* %10, null
  br i1 %11, label %12, label %14

; <label>:12:                                     ; preds = %0
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0))
  store i32 1, i32* %1, align 4
  br label %29

; <label>:14:                                     ; preds = %0
  store i32 0, i32* %2, align 4
  br label %15

; <label>:15:                                     ; preds = %20, %14
  %16 = getelementptr inbounds [200 x i8], [200 x i8]* %3, i32 0, i32 0
  %17 = load %struct.__sFILE*, %struct.__sFILE** %5, align 8
  %18 = call i8* @fgets(i8* %16, i32 200, %struct.__sFILE* %17)
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %26

; <label>:20:                                     ; preds = %15
  %21 = load i32, i32* %2, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %2, align 4
  %23 = load i32, i32* %2, align 4
  %24 = getelementptr inbounds [200 x i8], [200 x i8]* %3, i32 0, i32 0
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i32 %23, i8* %24)
  br label %15

; <label>:26:                                     ; preds = %15
  %27 = load %struct.__sFILE*, %struct.__sFILE** %5, align 8
  %28 = call i32 @fclose(%struct.__sFILE* %27)
  store i32 0, i32* %1, align 4
  br label %29

; <label>:29:                                     ; preds = %26, %12
  %30 = load i32, i32* %1, align 4
  ret i32 %30
}

declare i32 @printf(i8*, ...) #1

declare i8* @gets(i8*) #1

declare %struct.__sFILE* @"\01_fopen"(i8*, i8*) #1

declare i8* @fgets(i8*, i32, %struct.__sFILE*) #1

declare i32 @fclose(%struct.__sFILE*) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 6.0.1 (tags/RELEASE_601/final)"}

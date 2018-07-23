; ModuleID = 'ClangNoteBook/Chapter8/example-8.5.c'
source_filename = "ClangNoteBook/Chapter8/example-8.5.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

@.str = private unnamed_addr constant [31 x i8] c"1 \E3\81\A4\E3\82\81\E3\81\AE\E5\8D\98\E8\AA\9E\E3\82\92\E5\85\A5\E3\82\8C\E3\81\A6 \00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"2 \E3\81\A4\E3\82\81\E3\81\AE\E5\8D\98\E8\AA\9E\E3\82\92\E5\85\A5\E3\82\8C\E3\81\A6 \00", align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"\E6\AD\A3\E9\A0\86\E3\81\AA\E3\82\89 yes \E9\80\86\E9\A0\86\E3\81\AA\E3\82\89\E3\81\9D\E3\81\AE\E4\BB\96\E3\81\AE\E6\96\87\E5\AD\97\E3\82\92\E5\85\A5\E3\82\8C\E3\81\A6 \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"\E9\80\A3\E7\B5\90\E3\81\97\E3\81\9F\E5\8D\98\E8\AA\9E\E3\81\AF %s \0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [30 x i8], align 16
  %3 = alloca [30 x i8], align 16
  %4 = alloca [60 x i8], align 16
  %5 = alloca [10 x i8], align 1
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %7 = bitcast [60 x i8]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* %7, i8 0, i64 60, i32 16, i1 false)
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i32 0, i32 0))
  %9 = getelementptr inbounds [30 x i8], [30 x i8]* %2, i32 0, i32 0
  %10 = call i8* @gets(i8* %9)
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i32 0, i32 0))
  %12 = getelementptr inbounds [30 x i8], [30 x i8]* %3, i32 0, i32 0
  %13 = call i8* @gets(i8* %12)
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i32 0, i32 0))
  %15 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i32 0, i32 0
  %16 = call i8* @gets(i8* %15)
  %17 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i32 0, i32 0
  %18 = call i32 @strcmp(i8* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0))
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %27, label %20

; <label>:20:                                     ; preds = %0
  %21 = getelementptr inbounds [60 x i8], [60 x i8]* %4, i32 0, i32 0
  %22 = getelementptr inbounds [30 x i8], [30 x i8]* %2, i32 0, i32 0
  %23 = call i8* @__strcat_chk(i8* %21, i8* %22, i64 60) #4
  %24 = getelementptr inbounds [60 x i8], [60 x i8]* %4, i32 0, i32 0
  %25 = getelementptr inbounds [30 x i8], [30 x i8]* %3, i32 0, i32 0
  %26 = call i8* @__strcat_chk(i8* %24, i8* %25, i64 60) #4
  br label %34

; <label>:27:                                     ; preds = %0
  %28 = getelementptr inbounds [60 x i8], [60 x i8]* %4, i32 0, i32 0
  %29 = getelementptr inbounds [30 x i8], [30 x i8]* %3, i32 0, i32 0
  %30 = call i8* @__strcat_chk(i8* %28, i8* %29, i64 60) #4
  %31 = getelementptr inbounds [60 x i8], [60 x i8]* %4, i32 0, i32 0
  %32 = getelementptr inbounds [30 x i8], [30 x i8]* %2, i32 0, i32 0
  %33 = call i8* @__strcat_chk(i8* %31, i8* %32, i64 60) #4
  br label %34

; <label>:34:                                     ; preds = %27, %20
  %35 = getelementptr inbounds [60 x i8], [60 x i8]* %4, i32 0, i32 0
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i32 0, i32 0), i8* %35)
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #1

declare i32 @printf(i8*, ...) #2

declare i8* @gets(i8*) #2

declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind
declare i8* @__strcat_chk(i8*, i8*, i64) #3

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 6.0.1 (tags/RELEASE_601/final)"}

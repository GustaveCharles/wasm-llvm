; ModuleID = 'hello-translation'
source_filename = "hello-translation"

@my_global_var = external global [0 x i8]

declare i32 @fd_write(i32, i32, i32, i32)

define i32 @"%F1"(i32 %0) {
entry:
  %"%R0_1" = alloca i32, align 4
  %"%R1_1" = load i32, ptr %"%R0_1", align 4
  %"1" = icmp slt i32 2, %"%R1_1"
  %"%R1_11" = load i32, ptr %"%R0_1", align 4
  ret i32 %"%R1_11"
  ret i1 %"1"
}

define void @"%F2"() {
entry:
  %"%R0_2" = alloca i32, align 4
  store i32 8, ptr @memory, align 4
  store i32 12, ptr inttoptr (i64 add (i64 ptrtoint (ptr @memory to i64), i64 4) to ptr), align 4
  %"%F0" = call i32 @fd_write(i32 1, i32 0, i32 1, i32 20)
  %"%F1" = call i32 @"%F1"(i32 10)
  store i32 %"%F1", ptr %"%R0_2", align 4
  %"%R1_2" = load i32, ptr %"%R0_2", align 4
  store i32 %"%R1_2", ptr inttoptr (i64 add (i64 ptrtoint (ptr @memory to i64), i64 1036) to ptr), align 4
  store i32 1036, ptr inttoptr (i64 add (i64 ptrtoint (ptr @memory to i64), i64 32) to ptr), align 4
  store i32 4, ptr inttoptr (i64 add (i64 ptrtoint (ptr @memory to i64), i64 36) to ptr), align 4
  %"%F01" = call i32 @fd_write(i32 1, i32 32, i32 1, i32 40)
  ret void
}
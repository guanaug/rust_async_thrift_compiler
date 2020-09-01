typedef i32 type_a
typedef i64 type_b

const i32 adder = 5;

union test_union{
    1: type_a a,
    2: type_b b
}

enum numbers{
    ONE = 1,
    TWO = 2,
    THREE = 3
}

exception Xecption {
    1: i32 errorCode;
    2: string message;
}

struct nested {
    1:test_union my_union;
    2:numbers my_enum;
}

service TestService{
    void test_add(1: nested arg0, 2: nested arg1) throws (1: Xecption err)
}
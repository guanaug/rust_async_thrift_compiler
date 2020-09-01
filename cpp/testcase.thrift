typedef i32 type_a
typedef i64 type_b

const i32 adder = 5;

union number {
    1: type_a a,
    2: type_b b
}

enum operator{
    DIVIDE = 1,
    ADD = 2
}

exception Xecption {
    1: i32 errorCode;
    2: string message;
}

struct material {
    1: number num;
    2: operator op;
}

service CalculatorService{
    number calculate(1: material input) throws (1: Xecption err)
}
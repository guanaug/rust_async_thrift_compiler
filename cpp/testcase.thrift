typedef i32 type_a
typedef i64 type_b

const i32 test_const = 5;

union Number {
    1: type_a a,
    2: type_b b
}

enum Operator{
    DIVIDE = 1,
    ADD = 2
}

exception Xecption {
    1: i32 errorCode;
    2: string message;
}

struct Material {
    1: Number num1;
    2: Number num2;	
    3: Operator op;
}

service CalculatorService{
    Number calculate(1: Material input) throws (1: Xecption err)
}

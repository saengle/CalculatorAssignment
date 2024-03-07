//
//  main.swift
//  CalculatorAssignment
//
//  Created by 쌩 on 3/5/24.
/*
 계산기 사용법
 입력은 숫자 - 엔터 - 연산부호 - 엔터 - 숫자 - 엔터 순서로 구분해 받습니다.
 사용 가능한 연산부호는 다음과 같습니다. (+, -, *, /, %)
 사용법에 어긋난 사용시 에러나옴
 */

import Foundation

let input0 = readLine()!.split(separator: " ").map { Double(String($0))!}
let input1 = readLine()!.split(separator: " ").map { String($0)}
let input2 = readLine()!.split(separator: " ").map { Double(String($0))!}

class Input {
    
    func checkOperationType() -> TypesOfOperation {
        var res = TypesOfOperation()
        
        switch input1 {
        case ["+"]: res = AddOperation()
        case ["-"]: res = SubtractOperation()
        case ["*"]: res = MultiplyOperation()
        case ["/"]: res = DivideOperation()
        case ["%"]: res = ModuloOperation()
        default: res = TypesOfOperation()
        }
        return res
     }
}

class TypesOfOperation {
    func calculate(a: Double, b: Double) {
        
    }
}

class AddOperation: TypesOfOperation {
   override func calculate(a: Double, b: Double) {
        print("\(a) + \(b) 의 값은 \(a + b)입니다.")
    }
}

class SubtractOperation: TypesOfOperation {
    override func calculate(a: Double, b: Double) {
        print("\(a) - \(b) 의 값은 \(a - b)입니다.")
    }
}

class MultiplyOperation: TypesOfOperation {
    override func calculate(a: Double, b: Double) {
        print("\(a) * \(b) 의 값은 \(a * b)입니다.")
    }
}

class DivideOperation: TypesOfOperation {
    override func calculate(a: Double, b: Double) {
        print("\(a) / \(b) 의 값은 \(a / b)입니다.")
    }
}

class ModuloOperation: TypesOfOperation { //나머지 연산
    override func calculate(a: Double, b: Double) {
        print("\(a) 을 \(b)으로 나눈 나머지 값은 \(a.truncatingRemainder(dividingBy: b))입니다.")
    }
}

class Calculator {
    
    final let firstNum: Double
    final let secondNum: Double
    var typesOfOperation: TypesOfOperation
    
    init(firstNum: Double, secondNum: Double, typesOfOperation: TypesOfOperation) {
        self.typesOfOperation = typesOfOperation
        self.firstNum = firstNum
        self.secondNum = secondNum
    }
    
    func calculate() {
        return typesOfOperation.calculate(a: firstNum, b: secondNum)
    }
}


let input = Input()

let calculator = Calculator(firstNum: input0[0], secondNum: input2[0],
                            typesOfOperation: input.checkOperationType())

calculator.calculate()


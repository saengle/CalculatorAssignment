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

let input0 = readLine()!.split(separator: " ").map { Int(String($0))!}
let input1 = readLine()!.split(separator: " ").map { String($0)}
let input2 = readLine()!.split(separator: " ").map { Int(String($0))!}

class Input {
    func checkFirstNum() {
        
    }
    func checkSecondNum() {
        
    }
    func checkOperationType() -> TypesOfOperation {
        return MultiplyOperation()
    }
}
class TypesOfOperation {
    func calculate(a: Double, b: Double) {
        print("안들어가졌는데 ?")
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

class Calculator {
    
    final let firstNum: Double
    final let secondNum: Double
    var typesOfOperation: TypesOfOperation
    
    init(firstNum: Double, secondNum: Double
         ,typesOfOperation: TypesOfOperation
    ) {
        self.typesOfOperation = typesOfOperation
        self.firstNum = firstNum
        self.secondNum = secondNum
    }
    
    func calculate() {
        return typesOfOperation.calculate(a: firstNum, b: secondNum)
    }
}

func inputTest() {
    print(type(of:input0))
    print(input1)
    print(input2)
}
let input = Input()
let calculator = Calculator(firstNum: Double(input0[0]), secondNum: Double(input2[0]),
                            typesOfOperation: input.checkOperationType())
inputTest()
calculator.calculate()

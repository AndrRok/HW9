//
//  CalculatorView.swift
//  HW9
//
//  Created by ARMBP on 8/7/24.
//

import SwiftUI

struct CalculatorView: View {
//    @State private var display = "0"
//    @State private var firstOperand: Double?
//    @State private var operation: String?
//    private let calculator = Calculator()
    
    var body: some View {
        Text("")
//        VStack {
//            Text(display)
//                .font(.largeTitle)
//                .padding()
//                .accessibility(identifier: "display")
//            
//            HStack(spacing: 40) {
//                Button(action: { self.addDigit("1") }) { Text("1") }
//                    .accessibility(identifier: "1")
//                Button(action: { self.addDigit("2") }) { Text("2") }
//                    .accessibility(identifier: "2")
//                Button(action: { self.addDigit("3") }) { Text("3") }
//                    .accessibility(identifier: "3")
//                Button(action: { self.performOperation("+") }) { Text("+") }
//                    .accessibility(identifier: "+")
//            }
//            .padding(20)
//            
//            HStack(spacing: 40) {
//                Button(action: { self.addDigit("4") }) { Text("4") }
//                    .accessibility(identifier: "4")
//                Button(action: { self.addDigit("5") }) { Text("5") }
//                    .accessibility(identifier: "5")
//                Button(action: { self.addDigit("6") }) { Text("6") }
//                    .accessibility(identifier: "6")
//                Button(action: { self.performOperation("-") }) { Text("-") }
//                    .accessibility(identifier: "-")
//            }
//            .padding(20)
//            
//            HStack(spacing: 40) {
//                Button(action: { self.addDigit("7") }) { Text("7") }
//                    .accessibility(identifier: "7")
//                Button(action: { self.addDigit("8") }) { Text("8") }
//                    .accessibility(identifier: "8")
//                Button(action: { self.addDigit("9") }) { Text("9") }
//                    .accessibility(identifier: "9")
//                Button(action: { self.performOperation("*") }) { Text("*") }
//                    .accessibility(identifier: "*")
//            }
//            .padding(20)
//            
//            HStack(spacing: 40) {
//                Button(action: { self.addDigit("0") }) { Text("0") }
//                    .accessibility(identifier: "0")
//                Button(action: { self.performOperation("/") }) { Text("/") }
//                    .accessibility(identifier: "/")
//                Button(action: { self.clear() }) { Text("C") }
//                    .accessibility(identifier: "C")
//                Button(action: { self.calculateResult() }) { Text("=") }
//                    .accessibility(identifier: "=")
//            }
//        }
    }
    
//    private func addDigit(_ digit: String) {
//        if display == "0" {
//            display = digit
//        } else {
//            display += digit
//        }
//    }
//    
//    private func performOperation(_ operation: String) {
//        self.firstOperand = Double(display)
//        self.operation = operation
//        display = "0"
//    }
//    
//    private func clear() {
//        display = "0"
//        firstOperand = nil
//        operation = nil
//    }
//    
//    private func calculateResult() {
//        guard let firstOperand = firstOperand, let operation = operation else {
//            return
//        }
//        
//        let secondOperand = Double(display) ?? 0
//        var result: Double = 0
//        
//        switch operation {
//        case "+":
//            result = calculator.add(firstOperand, secondOperand)
//        case "-":
//            result = calculator.minusOperation(firstOperand, secondOperand)
//        case "*":
//            result = calculator.multiply(firstOperand, secondOperand)
//        case "/":
//            result = calculator.divide(firstOperand, secondOperand)
//        default:
//            break
//        }
//        
//        display = String(result)
//        self.firstOperand = nil
//        self.operation = nil
//    }
}


#Preview {
    CalculatorView()
}

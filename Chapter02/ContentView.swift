//
//  ContentView.swift
//  Chapter02
//
//  Created by Mike Panitz on 3/29/23.
//

import SwiftUI

struct ContentView: View {
    @State private var message = true
    var body: some View {
        setup()
    }
    func setup()-> some View{
        let number1 = 23
        let number2 = 78
        let sum = addTwoNumbers(number1, number2)
       return VStack {
            Toggle(isOn: $message) {
                Text("Toggle message on/off")
            }
            if message {
                Text ("Hello, did you know that \(number1) + \(number2) = \(sum)?")
                    .background(Color.yellow)
                    .padding()
            }
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
let addTwoNumbers = {( num1: Int, num2: Int) -> Int in
    let sum = num1 + num2
    print("\(num1) + \(num2) = \(sum)")
    return sum
    //return num1 + num2
}

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
        let num1 = 47
        let num2 = 22
        let sum = addTwo(num1, num2)
        return VStack{
            Toggle(isOn: $message) {
                Text("Toggle message on/off")
            }
            if message {
                Text ("Sum of \(num1) + \(num2) = \(sum)")
                    .background(Color.yellow)
                    .padding()
            }
        }.padding()
    }
}
let addTwo = {(num1: Int, num2: Int) -> Int in
    let sum = num1 + num2
    return sum
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

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
        let x = 2
        let y = 3
        let sum = x + y
        
       return VStack {
            Toggle(isOn: $message) {
                Text("Toggle message on/off")
            }
            if message {
                Text ("Here's a secret message!")
                    .background(Color.yellow)
                    .padding()
                Text ("The sum of \(x) and  \(y) is \(sum)")
            }
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//The explicit return statement can be useful where you need control over the flow of your code or when you want to write complex logic. While using an explicit return statement can be useful in some cases, in general, it's better to stick to a more declarative approach in SwiftUI to keep our code simple, readable, and maintainable.
//
//
//
//

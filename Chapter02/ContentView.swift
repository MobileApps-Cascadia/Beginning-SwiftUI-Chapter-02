//
//  ContentView.swift
//  Chapter02
//
//  Created by Mike Panitz on 3/29/23.
//

import SwiftUI

struct ContentView: View {
    @State private var message = true
    @State private var buttonTapped = false
    
    var body: some View {
        setup()
            .padding()
    }
    
    func setup() -> some View {
        let name = "John"
        let age = 30
        let total = age * 2
        
        return VStack {
            Toggle(isOn: $message) {
                Text("Toggle message on/off")
            }
            if message {
                Text("Hello, my name is \(name) and I am \(age) years old.")
                Text("If you double my age, you get \(total).")
                    .padding()
                    .background(Color.green)
            }
            Button("Tap me!") {
                self.buttonTapped = true
            }
            if buttonTapped {
                Text("You tapped the button!")
                    .padding()
                    .background(Color.blue)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

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
    @State private var speed = 50.0
    @State private var isEditing = false
    @State private var fullText: String = "This is some editable text..."

    var body: some View {
        setup()
            .padding()
    }
    
    func setup() -> some View {
        let name = "John"
        let age = 30
        let total = age * 2
        
        return VStack {
            
            Slider(
                value: $speed,
                in: 0...100,
                onEditingChanged: { editing in
                    isEditing = editing
                }
            )
            Text("\(speed)")
                .foregroundColor(isEditing ? .red : .blue)
            
            Image(systemName: "house.circle.fill")
            Image(systemName: "gear.circle")
            
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
            TextEditor(text: $fullText)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

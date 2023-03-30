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
        VStack {
            Toggle(isOn: $message) {
                Text("Toggle message on/off")
            }
            if message {
                Text ("Here's a secret message!")
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

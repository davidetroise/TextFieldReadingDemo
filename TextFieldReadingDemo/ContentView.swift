//
//  ContentView.swift
//  TextFieldReadingDemo
//
//  Created by Davide Troise with Swift 5.0
//  for the YouTube channel "Coding con Davide" https://bit.ly/3QJziJE
//

import SwiftUI

struct ContentView: View {
    @State private var username: String = ""
    
    var body: some View {
        VStack {
            TextField("Username", text: $username)
                .padding()
                .border(.secondary)
                .textInputAutocapitalization(.never)
                .disableAutocorrection(true)
            if username.count > 0 {
                Text("Welcome back, \(username)!")
            }
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

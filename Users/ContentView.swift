//
//  ContentView.swift
//  Users
//
//  Created by Jan Andrzejewski on 06/07/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var users = [User]()
    
    var body: some View {
        Text("Hello, world!")
            .padding()
   //         .onAppear(perform: )
    }
    
    func loadUserData() {
        guard let url = URL(string: "https://www.hackingwithswift.com/samples/friendface.json") else {
            print("Error: Invalid URL")
            return
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

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
        NavigationView {
            List {
                ForEach(users) { user in
                    Text(user.name)
                }
            }
            .navigationTitle("Users")
        }
            .onAppear(perform: loadUserData)
    }
    
    func loadUserData() {
        guard let url = URL(string: "https://www.hackingwithswift.com/samples/friendface.json") else {
            print("Error: Invalid URL")
            return
        }
        
        let request = URLRequest(url: url)
        
        URLSession.shared.dataTask(with: request) { data, response, error in
                    guard let userData = data else {
                        print("No data in response: \(error?.localizedDescription ?? "Unknown Error")")
                        return
                    }

                    let userDecoder = JSONDecoder()

                    userDecoder.dateDecodingStrategy = .iso8601

                    do {
                        users = try userDecoder.decode([User].self, from: userData)
                        return
                    } catch {
                        print("Decoding Failed: \(error)")
                    }

                    print("Fetch Failed: \(error?.localizedDescription ?? "Unknown Error")")

                }.resume()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

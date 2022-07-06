//
//  DetailView.swift
//  Users
//
//  Created by Jan Andrzejewski on 06/07/2022.
//

import SwiftUI

struct DetailView: View {
    let user: User
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 5) {
                    Text(user.isActive == true ? "Active" : "Inactive")
                        .font(.headline)
                        .foregroundColor(user.isActive == true ? .green : .red)
                
                    HStack {
                        Text("Age:")
                            .font(.headline)
                        Text("\(user.age)")
                            .font(.subheadline)
                    }
                    
                    HStack {
                        Text("Company:")
                            .font(.headline)
                        Text("\(user.company)")
                            .font(.subheadline)
                    }
                    
                    HStack {
                        Text("Email address:")
                            .font(.headline)
                        Text(user.email)
                            .font(.subheadline)
                    }
                    
                    HStack {
                        Text("Address: ")
                            .font(.headline)
                        Text(user.address)
                            .font(.subheadline)
                    }
                    
                    VStack(alignment: .leading) {
                        Text("About:")
                            .font(.headline)
                        Text(user.about)
                    }
                    
                    HStack {
                        Text("Date of registration:")
                            .font(.headline)
                        //figure out how to display date
                        //Text(user.registered)
                            //.font(.subheadline)
                    }
                    
                    VStack(alignment: .leading) {
                        Text("Friends:")
                            .font(.headline)
                        ForEach(user.friends) { friend in
                            Text(friend.name)
                                .font(.subheadline)
                        }
                    }
                
            }
            }
            .navigationTitle(user.name)
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(user: User(id: UUID(), isActive: true, name: "Test", age: 1, company: "Test", email: "Test", address: "Test", about: "Test", registered: Date.now, tags: ["Test"], friends: [Friend(id: UUID(), name: "Test")]))
    }
}

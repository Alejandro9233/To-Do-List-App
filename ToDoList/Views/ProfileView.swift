//
//  ProfileView.swift
//  ToDoList
//
//  Created by Alejandro  on 03/09/24.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var viewModel = ProfielViewViewModel()
    
    init() {}
    
    var body: some View {
        NavigationView {
            VStack {
                if let user = viewModel.user{
                    profile(user: user)
                    
                } else {
                    Text("Loading Profile...")
                }
                
            }.navigationTitle("Profile")
        }
        .onAppear {
            viewModel.fetchUser()
        }
    }
    @ViewBuilder
    func profile(user: User) -> some View {
        
        Image(systemName: "person.circle")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            .frame(width: 125, height: 125)
            .padding()
        
        VStack{
            
            HStack{
                Text("Name: ")
                    .bold()
                Text(user.name)
            }
            .padding()
            
            HStack {
                Text("Email: ")
                    .bold()
                Text(user.email)
            }
            .padding()
            Button("Log Out") {
                viewModel.logOut()
            }
            .tint(.red)
            .padding()
            
            Spacer()
        }
    }
}
    
    #Preview {
        ProfileView()
    }

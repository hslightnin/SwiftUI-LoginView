//
//  LoginPageView.swift
//  SwiftUI-LoginView
//
//  Created by Максим on 16.04.2020.
//  Copyright © 2020 Максим. All rights reserved.
//

import SwiftUI

struct LoginPageView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var confirmemail = ""
    
    var buttonGradient = LinearGradient(
        gradient: Gradient(colors: [Color.init(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)), Color.init(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1))]),
        startPoint: .topLeading,
        endPoint: .bottomTrailing)
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Create an account")
                .font(.system(size: 24))
                .bold()
                .padding(.bottom, 5)
            Text("Please enter your credentials")
                .foregroundColor(.secondary)
            
            Spacer()
            
            VStack {
                Button(action: {}) {
                    Rectangle()
                        .fill(buttonGradient)
                        .frame(width: 270, height: 50, alignment: .center)
                        .overlay(
                            Text("Continue")
                                .foregroundColor(.white)
                                .bold())
                        .cornerRadius(15)
                }
                .padding(.bottom, 5)
                
                Text("Already have an account ?")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            .padding(.bottom, 40)
        }
        .padding()
    }
}

struct LoginPageView_Previews: PreviewProvider {
    static var previews: some View {
        LoginPageView()
    }
}

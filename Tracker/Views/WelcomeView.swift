//
//  WelcomeView.swift
//  Tracker
//
//  Created by Heang Bunnarith on 11/8/24.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        VStack {
            Spacer()
            Text("Welcome Logo Animation")
            Text("Display welcome messages")
            
            Spacer()
            
            Button(action: {}, label: {
                Text("Login")
            }).buttonStyle(.borderedProminent)
            
            Button(action: {}, label: {
                Text("Create an Account")
            })
            Spacer()
        }
    }
}

#Preview {
    WelcomeView()
}

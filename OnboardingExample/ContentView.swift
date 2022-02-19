//
//  ContentView.swift
//  OnboardingExample
//
//  Created by Tom Phillips on 2/19/22.
//

import SwiftUI

/*
 Simple example of an onboarding screen based on the example of Apple's Human Interface Guideliens
 
 https://developer.apple.com/design/human-interface-guidelines/ios/app-architecture/onboarding/
 */
struct ContentView: View {
    @AppStorage("isFirstTimeUser") private var isFirstTimeUser = true
    
    var body: some View {
        ZStack {
            Color.secondary
            VStack {
                Text("Welcome To My Awesome App!")
                    .foregroundColor(.white)
                    .padding()
                    .sheet(isPresented: $isFirstTimeUser, onDismiss: {isFirstTimeUser = false}) {
                        OnboardingView()
                    }
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(.primaryBlue)
                            .shadow(radius: 10)
                    )
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

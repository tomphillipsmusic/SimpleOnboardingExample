//
//  OnboardingView.swift
//  OnboardingExample
//
//  Created by Tom Phillips on 2/19/22.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
        VStack {
            Text("What's New in Translate")
                .font(.largeTitle)
                .bold()
                .padding()
            
            OnboardingInformationRow()
            OnboardingInformationRow()
            OnboardingInformationRow()
            Spacer()
            Button(action: {}) {
                Text("About Translation & Privacy...")
                    .foregroundColor(.primaryBlue)
            }

            
            Button(action: {}) {
                Text("Continue")
                    .foregroundColor(.white)
            }
            
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(.primaryBlue)
                    .frame(width: 300, height: 40)
            )
            .padding()
        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}

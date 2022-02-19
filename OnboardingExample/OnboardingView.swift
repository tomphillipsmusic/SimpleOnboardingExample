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
            
            VStack(alignment: .leading) {
                ForEach(OnboardingView.rowsData) { rowData in
                    OnboardingInformationRow(data: rowData)
                }
            }
            
            Spacer()
            Button(action: {}) {
                Text("About Translation & Privacy...")
                    .foregroundColor(.primaryBlue)
            }
            
            
            Button(action: {
                
            }) {
                Text("Continue")
                    .foregroundColor(.white)
            }
            
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(.primaryBlue)
                    .frame(width: 300, height: 40)
            )
            .padding()
            Spacer()
                .frame(height: 50)
        }
    }
    
    static var rowsData = [
        OnbardingInformationRowData(imageName: "platter.2.filled.iphone", imageColor: .primaryBlue, title: "Conversation Views", description: "Choose a side-by-side or face-to-face conversation view"),
        OnbardingInformationRowData(imageName: "mic.fill", imageColor: .primaryBlue, title: "Auto Translate", description: "Respond in conversations without tapping the microphone button."),
        OnbardingInformationRowData(imageName: "iphone", imageColor: .primaryBlue, title: "System-Wide-Translation", description: "Translates selected text anywhere on your iPhone.")
    ]
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}

//
//  OnboardingInformationRow.swift
//  OnboardingExample
//
//  Created by Tom Phillips on 2/19/22.
//

import SwiftUI

struct OnboardingInformationRow: View {
    var body: some View {
        HStack {
            Image(systemName: "platter.2.filled.iphone")
                .font(.title)
                .foregroundColor(.primaryBlue)
                .padding(.trailing, 5)
                
            
            VStack(alignment: .leading) {
                Text("Conversation Views")
                    .font(.headline)
                    .padding(.bottom, 5)
                    
                Text("Choose a side-by-side or face-to-face vonersation view.")
                    .font(.body
                    )
                    .foregroundColor(.secondary)
            }
        }
        .padding()
    }
}

struct OnboardingInformationRow_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingInformationRow()
    }
}

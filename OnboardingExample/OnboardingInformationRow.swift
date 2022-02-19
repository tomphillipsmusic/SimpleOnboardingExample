//
//  OnboardingInformationRow.swift
//  OnboardingExample
//
//  Created by Tom Phillips on 2/19/22.
//

import SwiftUI

struct OnboardingInformationRow: View {
    let data: OnbardingInformationRowData
    
    var body: some View {
        HStack {
            Image(systemName: data.imageName)
                .font(.largeTitle)
                .foregroundColor(data.imageColor)
                .padding(.trailing, 5)
                
            VStack(alignment: .leading) {
                Text(data.title)
                    .font(.headline)
                    .padding(.bottom, 5)
                    
                Text(data.description)
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
        OnboardingInformationRow(data: OnbardingInformationRowData(imageName: "platter.2.filled.iphone", imageColor: .primaryBlue, title: "Conversation Views", description: "Choose a side-by-side or face-to-face conversation view"))
    }
}

//
//  OnboardingInformationRowModel.swift
//  OnboardingExample
//
//  Created by Tom Phillips on 2/19/22.
//

import Foundation
import SwiftUI

struct OnbardingInformationRowData: Identifiable {
    var id = UUID()
    var imageName: String
    var imageColor: Color
    var title: String
    var description: String
}

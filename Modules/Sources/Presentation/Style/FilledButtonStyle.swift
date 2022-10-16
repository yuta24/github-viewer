//
//  FilledButtonStyle.swift
//  Presentation
//
//  Created by yuta24 on 2022/10/16.
//

import SwiftUI

struct FilledButtonStyle: ButtonStyle {

    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding([.horizontal])
            .foregroundColor(.white)
            .background(Color.accentColor)
            .clipShape(Capsule())
    }

}

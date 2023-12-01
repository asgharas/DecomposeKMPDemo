//
//  BView.swift
//  iosApp
//
//  Created by Asghar on 12/2/23.
//  Copyright © 2023 orgName. All rights reserved.
//

import SwiftUI
import shared

struct BView: View {
    private let component: ScreenBComponent
    private let text: String
    
    init(_ component: ScreenBComponent, text: String) {
        self.component = component
        self.text = text
    }
    
    var body: some View {
        VStack(alignment: .center) {
            Text(text)
                .padding()
            Button("Go Back!") {
                component.goBack()
            }
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.brown)
    }
}

//
//  AView.swift
//  iosApp
//
//  Created by Asghar on 12/2/23.
//  Copyright © 2023 orgName. All rights reserved.
//

import SwiftUI
import shared

struct AView: View {
    private let component: ScreenAComponent
    
    
    init(_ component: ScreenAComponent) {
        self.component = component
    }
    
    var body: some View {
        VStack(alignment: .center) {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .padding()
            
            Button("Go!", action: {
                component.onEvent(event: ScreenAEventOnTextUpdated(text: "this is just dumb text!"))
                component.onEvent(event: ScreenAEventOnGoClicked())
            })
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.green)
    }
    
}

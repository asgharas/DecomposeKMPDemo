//
//  DecomposeApp.swift
//  iosApp
//
//  Created by Asghar on 12/2/23.
//  Copyright © 2023 orgName. All rights reserved.
//

import SwiftUI
import shared

struct DecomposeApp: View {
    private let component: RootComponent
    
    @StateValue
    private var stack: ChildStack<RootComponent.Configuration, RootComponentChild>
    
    init(_ component: RootComponent) {
        self.component = component
        _stack = StateValue(component.childStack)
    }
    
    var body: some View {
        return NavigationView {
            VStack{
                switch stack.active.instance {
                case let child as RootComponentChildScreenA: AView(child.component)
                case let child as RootComponentChildScreenB: BView(child.component, text: child.component.text)
                default: EmptyView()
                }
            }
            .navigationTitle("KMP Decompose Demo App")
            .navigationBarTitleDisplayMode(.inline)
            .transition(.slide)
//            .animation(.easeOut, value: stack.active)
        }
    }
}


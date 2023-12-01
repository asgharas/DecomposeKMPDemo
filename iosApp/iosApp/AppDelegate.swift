//
//  AppDelegate.swift
//  iosApp
//
//  Created by Asghar on 12/2/23.
//  Copyright © 2023 orgName. All rights reserved.
//

import SwiftUI
import shared


class AppDelegate: NSObject, UIApplicationDelegate {
    let lifecycle: LifecycleRegistry
    let root: RootComponent
    
    override init() {
        lifecycle = LifecycleRegistryKt.LifecycleRegistry()
        LifecycleRegistryExtKt.resume(lifecycle)
        
        
        root = RootComponent(componentContext: DefaultComponentContext(lifecycle: lifecycle))
    }
}



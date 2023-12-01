//
//  StateValue.swift
//  iosApp
//
//  Created by Asghar on 12/1/23.
//  Copyright © 2023 orgName. All rights reserved.
//

import SwiftUI
import shared

@propertyWrapper struct StateValue<T : AnyObject>: DynamicProperty {
    @ObservedObject
    private var obj: ObservableValue<T>

    var wrappedValue: T { obj.value }

    init(_ value: Value<T>) {
        obj = ObservableValue(value)
    }
}

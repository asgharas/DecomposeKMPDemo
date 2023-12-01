//
//  ObservableValue.swift
//  iosApp
//
//  Created by Asghar on 12/1/23.
//  Copyright © 2023 orgName. All rights reserved.
//

import SwiftUI
import shared

public class ObservableValue<T : AnyObject> : ObservableObject {
    @Published
    var value: T

    private var cancellation: Cancellation?
    
    init(_ value: Value<T>) {
        self.value = value.value
        self.cancellation = value.observe { [weak self] value in self?.value = value }
    }

    deinit {
        cancellation?.cancel()
    }
}

//
//  MutableValue.swift
//  iosApp
//
//  Created by Asghar on 12/1/23.
//  Copyright © 2023 orgName. All rights reserved.
//

import shared

func mutableValue<T: AnyObject>(_ initialValue: T) -> MutableValue<T> {
    return MutableValueBuilderKt.MutableValue(initialValue: initialValue) as! MutableValue<T>
}

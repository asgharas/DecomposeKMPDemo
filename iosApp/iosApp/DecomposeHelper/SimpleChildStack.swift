//
//  SimpleChildStack.swift
//  iosApp
//
//  Created by Asghar on 12/1/23.
//  Copyright © 2023 orgName. All rights reserved.
//

import shared

func simpleChildStack<T : AnyObject>(_ child: T) -> Value<ChildStack<AnyObject, T>> {
    return mutableValue(
        ChildStack(
            configuration: "config" as AnyObject,
            instance: child
        )
    )
}

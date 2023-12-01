package com.assgharas.decomposesample.android

import androidx.compose.foundation.background
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.ui.Modifier
import com.arkivanov.decompose.extensions.compose.jetbrains.stack.Children
import com.arkivanov.decompose.extensions.compose.jetbrains.stack.animation.slide
import com.arkivanov.decompose.extensions.compose.jetbrains.stack.animation.stackAnimation
import com.arkivanov.decompose.extensions.compose.jetbrains.subscribeAsState
import com.assgharas.decomposesample.navigation.RootComponent

@Composable
fun App(root: RootComponent) {

    MyApplicationTheme {
        val childStack by root.childStack.subscribeAsState()

        Surface(
            Modifier
                .fillMaxSize()
                .background(MaterialTheme.colorScheme.background)
        ) {
            Children(
                stack = childStack,
                animation = stackAnimation(slide())
            ) { child ->
                when(val instance = child.instance) {
                    is RootComponent.Child.ScreenA -> ScreenA(component = instance.component)
                    is RootComponent.Child.ScreenB -> ScreenB(text = instance.component.text, component = instance.component )
                }
                
            }
        }
    }
}
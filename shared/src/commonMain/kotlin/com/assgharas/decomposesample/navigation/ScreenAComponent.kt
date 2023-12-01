package com.assgharas.decomposesample.navigation

import com.arkivanov.decompose.ComponentContext
import com.arkivanov.decompose.value.MutableValue
import com.arkivanov.decompose.value.Value

class ScreenAComponent(
    componentContext: ComponentContext,
    private val onNavigate: (String) -> Unit
): ComponentContext by componentContext {

    private val _text = MutableValue("")
    val text: Value<String> = _text

    fun onEvent(event: ScreenAEvent) {
        when(event) {
            is ScreenAEvent.OnGoClicked -> {
                onNavigate(text.value)
            }
            is ScreenAEvent.OnTextUpdated -> _text.value = event.text
        }

    }
}

sealed interface ScreenAEvent {
    data class OnTextUpdated(val text: String): ScreenAEvent
    data object OnGoClicked: ScreenAEvent
}
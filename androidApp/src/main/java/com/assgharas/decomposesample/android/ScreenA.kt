package com.assgharas.decomposesample.android

import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.height
import androidx.compose.material3.Button
import androidx.compose.material3.OutlinedTextField
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import com.arkivanov.decompose.extensions.compose.jetbrains.subscribeAsState
import com.assgharas.decomposesample.navigation.ScreenAComponent
import com.assgharas.decomposesample.navigation.ScreenAEvent

@Composable
fun ScreenA(component: ScreenAComponent) {
    val text by component.text.subscribeAsState()

    Column(
        Modifier.fillMaxSize(),
        verticalArrangement = Arrangement.Center,
        horizontalAlignment = Alignment.CenterHorizontally
    ) {
        Text(text = "Screen A")
        Spacer(modifier = Modifier.height(16.dp))
        OutlinedTextField(
            value = text,
            onValueChange = { component.onEvent(ScreenAEvent.OnTextUpdated(it)) }
        )
        Spacer(modifier = Modifier.height(16.dp))
        Button(onClick = { component.onEvent(ScreenAEvent.OnGoClicked) }) {
            Text(text = "Go!")
        }
    }
}
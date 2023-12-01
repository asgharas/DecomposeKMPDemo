# Demo KMP App with Decompose

This repository demonstrates a basic Kotlin Multiplatform (KMP) app that utilizes Decompose, a framework for structuring lifecycle-aware business logic components in KMP projects. The UI components are built using Jetpack Compose for Android and SwiftUI for iOS.

## What is Decompose?

<a href="https://github.com/arkivanov/Decompose"><img src="https://raw.githubusercontent.com/arkivanov/Decompose/master/docs/media/logo/logo-titled-dark.png" width="240"/></a>

Decompose is a Kotlin Multiplatform library that facilitates the decomposition of code into tree-structured, lifecycle-aware business logic components, commonly referred to as BLoCs. It provides routing functionality and allows for pluggable UI implementations, enabling the use of Jetpack Compose, Android Views, SwiftUI, JS React, or other UI frameworks.

Decompose offers several benefits, including:

- **Modular Architecture:** Promotes a modular code structure, enhancing maintainability and testability.
- **Lifecycle Awareness:** Components are automatically managed based on their lifecycles, simplifying state management.
- **Routing Flexibility:** Enables seamless navigation between components within the UI hierarchy.
- **Pluggable UI:** Supports various UI frameworks, providing flexibility in UI implementation.

## What is Kotlin Multiplatform?

<a href="https://www.jetbrains.com/kotlin-multiplatform/"><img src="https://plugins.jetbrains.com/files/14936/435303/icon/pluginIcon.svg" width="120"/></a>

Kotlin Multiplatform is a technology that empowers developers to write code once and share it across multiple platforms, including Android, iOS, web, and more. It allows for creating a common codebase that targets different platforms while enabling platform-specific customizations.

Key advantages of Kotlin Multiplatform include:

- **Code Reusability:** Reduces code duplication and maintenance effort.
- **Platform-Specific Customizations:** Allows for tailoring the app to each platform's specific requirements.
- **Shared Business Logic:** Maintains consistent business logic across all targeted platforms.
- **Unified Codebase:** Facilitates collaboration among developers with varying platform expertise.

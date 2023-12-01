plugins {
    alias(libs.plugins.kotlinMultiplatform)
    alias(libs.plugins.androidLibrary)
    alias(libs.plugins.kotlinSerialization)
}

kotlin {
    androidTarget {
        compilations.all {
            kotlinOptions {
                jvmTarget = "1.8"
            }
        }
    }
    
    listOf(
        iosX64(),
        iosArm64(),
        iosSimulatorArm64()
    ).forEach {
        it.binaries.framework {
            baseName = "shared"
            isStatic = true

            export(libs.arkivanov.decompose)
            export(libs.essentry)

            // Optional, only if you need state preservation on Darwin (Apple) targets
            export("com.arkivanov.essenty:state-keeper:1.3.0-beta01")

            // Optional, only if you need state preservation on Darwin (Apple) targets
            export("com.arkivanov.parcelize.darwin:runtime:0.2.3")
        }
    }

    sourceSets {
        commonMain.dependencies {
            //put your multiplatform dependencies here
            implementation(libs.arkivanov.decompose)
            implementation(libs.kotlinx.serialization.json)

        }
        commonTest.dependencies {
            implementation(libs.kotlin.test)
        }

        iosMain.dependencies {
            api(libs.arkivanov.decompose)
            api(libs.essentry)
            api(libs.state.keeper)
            api(libs.parcelize.darwin.runtime)
        }
    }
}

android {
    namespace = "com.assgharas.decomposesample"
    compileSdk = 34
    defaultConfig {
        minSdk = 24
    }
}

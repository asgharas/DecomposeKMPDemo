package com.assgharas.decomposesample

interface Platform {
    val name: String
}

expect fun getPlatform(): Platform
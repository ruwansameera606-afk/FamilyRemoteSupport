package com.example.familyremotesupport.ui.theme

import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.lightColorScheme
import androidx.compose.runtime.Composable

private val FamilyColorScheme = lightColorScheme(
    primary = Primary,
    secondary = Secondary,
    background = Background,
    surface = Surface,
    onBackground = TextPrimary,
    onSurface = TextPrimary
)

@Composable
fun FamilyRemoteSupportTheme(
    content: @Composable () -> Unit
) {
    MaterialTheme(
        colorScheme = FamilyColorScheme,
        content = content
    )
}

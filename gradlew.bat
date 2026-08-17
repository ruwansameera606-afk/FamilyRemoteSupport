name: Android Build

on:
  push:
    branches:
      - main
  pull_request:
    branches:
      - main
  workflow_dispatch:

jobs:
  build:
    name: Build Android APK
    runs-on: ubuntu-latest

    steps:
      - name: Checkout repository
        uses: actions/checkout@v4

      - name: Set up JDK 17
        uses: actions/setup-java@v4
        with:
          distribution: temurin
          java-version: '17'

      - name: Set up Gradle
        uses: gradle/actions/setup-gradle@v4

      - name: Generate Gradle Wrapper
        run: gradle wrapper --gradle-version 8.10

      - name: Make Gradle Wrapper executable
        run: chmod +x gradlew

      - name: Build Debug APK
        run: ./gradlew assembleDebug

      - name: Upload APK
        if: success()
        uses: actions/upload-artifact@v4
        with:
          name: FamilyRemoteSupport-debug
          path: App/build/outputs/apk/debug/*.apk

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

      - name: Set up Gradle 8.10
        uses: gradle/actions/setup-gradle@v4
        with:
          gradle-version: '8.10'

      - name: Build Debug APK
        run: gradle assembleDebug

      - name: Upload APK
        if: success()
        uses: actions/upload-artifact@v4
        with:
          name: FamilyRemoteSupport-debug
          path: App/build/outputs/apk/debug/*.apk

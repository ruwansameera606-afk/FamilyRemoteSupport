name: Android Build

on:
  workflow_dispatch:

jobs:
  prepare-wrapper:
    runs-on: ubuntu-latest

    steps:
      - name: Checkout
        uses: actions/checkout@v4

      - name: Set up JDK 17
        uses: actions/setup-java@v4
        with:
          distribution: temurin
          java-version: '17'

      - name: Install Gradle
        uses: gradle/actions/setup-gradle@v4

      - name: Generate Gradle Wrapper
        run: gradle wrapper --gradle-version 8.10

      - name: Upload Gradle Wrapper
        uses: actions/upload-artifact@v4
        with:
          name: gradle-wrapper
          path: |
            gradlew
            gradlew.bat
            gradle/wrapper/gradle-wrapper.jar
            gradle/wrapper/gradle-wrapper.properties

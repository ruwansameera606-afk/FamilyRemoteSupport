#!/bin/sh

APP_HOME=$( cd "${0%/*}" && pwd -P )

CLASSPATH=$APP_HOME/gradle/wrapper/gradle-wrapper.jar

exec java -classpath "$CLASSPATH" org.gradle.wrapper.GradleWrapperMain "$@"

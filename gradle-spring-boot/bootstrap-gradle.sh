#!/bin/bash

# Bootstrap script to download and set up the Gradle wrapper JAR

GRADLE_VERSION="8.5"
WRAPPER_JAR="gradle/wrapper/gradle-wrapper.jar"

if [ -f "$WRAPPER_JAR" ]; then
    echo "gradle-wrapper.jar already exists"
    exit 0
fi

echo "Downloading gradle-wrapper.jar for Gradle $GRADLE_VERSION..."

# Create the directory if it doesn't exist
mkdir -p gradle/wrapper

# Download the wrapper JAR from the official Gradle distribution
curl -L -o "$WRAPPER_JAR" \
    "https://raw.githubusercontent.com/gradle/gradle/v${GRADLE_VERSION}/gradle/wrapper/gradle-wrapper.jar"

if [ $? -eq 0 ]; then
    echo "Successfully downloaded gradle-wrapper.jar"
else
    echo "Failed to download gradle-wrapper.jar"
    echo "You can manually download it from:"
    echo "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-wrapper.zip"
    echo "And extract the gradle-wrapper.jar to gradle/wrapper/"
    exit 1
fi

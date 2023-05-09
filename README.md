## Installation
- This project requires [JAVA JDK 1.8](https://www.oracle.com/ro/java/technologies/javase/javase8-archive-downloads.html) in order to run.
Make sure to set up the environment JAVA_HOME and PATH variables as well.
> **Note:** this can also be installed using [Chocolatey](https://chocolatey.org/install) with ```choco install jdk8```

- Install [Android Studio](https://developer.android.com/studio)
1. Make sure you have all the right SDKs downloaded under Settings -> Appearance & Behavior -> System Settings -> Android SDK -> SDK Tools:
    - Android Emulator
    - Android Emulator hypervisor driver(installer)
    - Android SDK Platform-Tools
    - Google Play Services
    - Google USB Driver
    - Intel x86 Emulator Accelerator (HAXM installer)
2. Add ANDROID_HOME system variable (usually %AppData%\Local\Android\Sdk)
3. Add 4 environment Path variables:
    - %ANDROID_HOME%\tools
    - %ANDROID_HOME%\build-tools
    - %ANDROID_HOME%\emulator
    - %ANDROID_HOME%\tools\bin

- Install [Node.js](https://nodejs.org/en)
- Install [Appium](https://appium.io/docs/en/2.0/quickstart/install/) - if you already installed **Node.js** this should be very simple: 
```
npm i -g appium@next
npm install -g appium-doctor
appium-doctor
```
If everything goes smoothly, you should see the results from the Appium Doctor

- Install [Python](https://www.python.org/downloads/) then install RobotFramework using ```pip install robotframework-appiumlibrary```
> The project is based on the [DEMO APP APK](https://github.com/saucelabs/my-demo-app-rn/releases) which you can install on your Android device/emulator

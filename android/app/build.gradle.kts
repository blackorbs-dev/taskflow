import com.android.build.gradle.internal.dsl.BaseAppModuleExtension

plugins {
    id("com.android.application")
    // START: FlutterFire Configuration
    id("com.google.gms.google-services")
    // END: FlutterFire Configuration
    id("kotlin-android")
    // The Flutter Gradle Plugin must be applied after the Android and Kotlin Gradle plugins.
    id("dev.flutter.flutter-gradle-plugin")
}

android {
    namespace = "blackorbs.dev.taskflow"
    compileSdk = flutter.compileSdkVersion
    ndkVersion = flutter.ndkVersion

    compileOptions {
        isCoreLibraryDesugaringEnabled = true
        sourceCompatibility = JavaVersion.VERSION_11
        targetCompatibility = JavaVersion.VERSION_11
    }

    kotlinOptions {
        jvmTarget = JavaVersion.VERSION_11.toString()
    }

    defaultConfig {
        // TODO: Specify your own unique Application ID (https://developer.android.com/studio/build/application-id.html).
        applicationId = "blackorbs.dev.taskflow"
        // You can update the following values to match your application needs.
        // For more information, see: https://flutter.dev/to/review-gradle-config.
        minSdk = flutter.minSdkVersion
        targetSdk = flutter.targetSdkVersion
        versionCode = flutter.versionCode
        versionName = flutter.versionName
    }

    buildTypes {
        release {
            // TODO: Add your own signing config for the release build.
            // Signing with the debug keys for now, so `flutter run --release` works.
            signingConfig = signingConfigs.getByName("debug")
        }
    }

    flavorDimensions += "env"

    productFlavors {
        create("dev") {
            dimension = "env"
            resValue("string", "app_name", "Taskflow dev")
            versionNameSuffix = "-dev"
        }
        create("prod") {
            dimension = "env"
            resValue("string", "app_name", "Taskflow")
            // no suffix for prod
        }
    }
}

afterEvaluate {

    val androidExt = extensions.getByType<BaseAppModuleExtension>()

    val flavors = androidExt.productFlavors.map { it.name }

    gradle.taskGraph.whenReady {

        val requested = gradle.startParameter.taskNames.joinToString(" ")

        val isGenericTask =
            requested.contains("assembleDebug") ||
                    requested.contains("assembleRelease") ||
                    requested.contains("installDebug") ||
                    requested.contains("installRelease")

        val hasFlavorInTask = flavors.any { flavor ->
            Regex("(?i)(assemble|install|bundle)${flavor}").containsMatchIn(requested)
        }

        if (isGenericTask && !hasFlavorInTask) {
            val exampleCommands = flavors.joinToString("\n") {
                "     flutter run --flavor $it"
            }
            throw GradleException(
                """
    The Android project defines product flavors: ${flavors.joinToString(", ")}.
    Error: You must specify a --flavor option.

    Examples:
$exampleCommands
                """.trimIndent()
            )
        }
    }
}

dependencies {
    coreLibraryDesugaring("com.android.tools:desugar_jdk_libs:2.1.4")
}

flutter {
    source = "../.."
}

# Flutter Makefile with staging and production environments

# Default target
all: help

# Help
help:
	@echo "Flutter Makefile Commands:"
	@echo "  make get              - Run flutter pub get"
	@echo "  make clean            - Run flutter clean"
	@echo "  make format           - Format Dart files"
	@echo "  make analyze          - Analyze Dart code"
	@echo "  make test             - Run unit tests"
	@echo "  make run-stg          - Run app with STG environment"
	@echo "  make run-prod         - Run app with PROD environment"
	@echo "  make build-stg-android - Build Android APK for STG"
	@echo "  make build-prod-android - Build Android APK for PROD"
	@echo "  make build-stg-ios    - Build iOS app for STG"
	@echo "  make build-prod-ios   - Build iOS app for PROD"

# Common Tasks
get:
	flutter pub get

clean:
	flutter clean

format:
	dart format .

analyze:
	flutter analyze

test:
	flutter test


run-build:
	flutter clean
	flutter pub get
	flutter pub run build_runner build --delete-conflicting-outputs
# Run with Environments
run-stg:
	flutter run --flavor dev \
      -t lib/main_dev.dart \
      --dart-define-from-file=lib/api_keys/api_keys_staging.json

# For PROD
run-prod:
	 flutter run \
       --flavor prod \
       -t lib/main.dart \
       --dart-define-from-file=lib/api_keys/api_keys_production.json


# Android Builds
build-stg-android:
	flutter clean
	flutter pub get
	flutter build apk --flavor dev -t lib/main_dev.dart \
    --dart-define-from-file=lib/api_keys/api_keys_staging.json


build-prod-android:
	flutter clean
	flutter pub get
	flutter build appbundle --flavor prod -t lib/main.dart \
    	--dart-define-from-file=lib/api_keys/api_keys_production.json
    # for .aab file for PlayStore

    # for APK
    #    flutter clean
    #    flutter pub get
    #	flutter build apk --flavor prod -t lib/main.dart \
    #	--dart-define-from-file=lib/api_keys/api_keys_production.json

# iOS Builds
build-stg-ios:
	flutter build ipa \
      --flavor dev \
      -t lib/main_dev.dart \
      --dart-define-from-file=lib/api_keys/api_keys_staging.json


build-prod-ios:
	flutter build ipa \
      --flavor prod \
      -t lib/main.dart \
      --dart-define-from-file=lib/api_keys/api_keys_production.json

flutterfire-dev-config:
	flutterfire config \
	  --project=vifit---stg-f618b \
	  --out=lib/firebase_options_stg.dart \
	  --ios-bundle-id=com.vifit.vifit \
	  --ios-out=ios/flavors/dev/GoogleService-Info.plist \
	  --android-package-name=com.vifit.vifit \
	  --android-out=android/app/src/dev/google-services.json \
	  --platforms=ios,android

flutterfire-prod-config:
	flutterfire config \
	  --project=vifit---app \
	  --out=lib/firebase_options_prod.dart \
	  --ios-bundle-id=com.vifit.ai \
	  --ios-out=ios/flavors/prod/GoogleService-Info.plist \
	  --android-package-name=com.vifit.ai \
	  --android-out=android/app/src/prod/google-services.json \
	  --platforms=ios,android

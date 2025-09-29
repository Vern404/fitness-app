# Project Overview

ViFIT.ai, an fitness mobile application built using [Flutter](https://flutter.dev/) that allows you to booking your fitness class, search and favourite studio even instructors.

#### **Coding Standards**
1. [Commit message](https://www.conventionalcommits.org/en/v1.0.0/)
2. Follow Flutter naming conventions
3. Use dart analysis to catch bugs, enforce coding standards and keep our codebase clean.
4. Follow UI/UX Design

## Core Features

-   **User Authentication** – Sign up, log in, and secure session handling.
    
-   **Profile Management** – Edit member/instructor information, instructor can manage their working rate and working hours.
    
-   **Booking Management** – Book, update, and cancel sessions or events with ease.
    
-   **Favorites** – Save preferred studios or instructors for quick access.
    
-   **View Schedule** – Browse and filter upcoming classes or appointments.
    
-   **Credit System** – View and manage credits for booking classes.
    
-   **Notification Management** – Receive and configure app notifications.
    
-   **Studio & Instructor Reviews** – Submit and view reviews for studios and instructors.

-   **More feature coming soon** –


## Getting Started


### Prerequisites

Before running the app, ensure you have:

-   Flutter SDK (v3.29.3)
-   Dart (3.7.2)
-   IDE (Android Studio/VSCode with Flutter plugin)
-   Xcode (for iOS, on macOS)
-   Physical device or emulator (Android/iOS)


#### Setup Instructions

1.  Clone the repo:  
    `git clone (insert github link)`
    
2.  Navigate to the project folder:  
    `cd your-app`
    
3.  Install dependencies:  
    `flutter pub get`
    
4.  Run the app:  
    `flutter run`

#### To check your environment, run: 

    flutter doctor
    flutter clean
    flutter pub get
    flutter run



## 🧪 Generate release APK
```bash
flutter build apk --release
```

## 📁 Project Structure

```
lib/
├── core/                          # Core app logic and reusable utilities
│   ├── alert/                     # Snackbars
│   ├── enums/                     # App-wide enums
│   ├── extensions/                # Dart and Flutter extension methods
│   ├── navigation/                # route nav, route animtation, route params
│   ├── routes/                    # GoRoute setup, page transition
│   ├── theme/                     # App themes, text styles, color schemes
│   └── utils/                     # General assets, constants and style

├── data/                          # Data layer (implements domain contracts)
│   ├── datasources/               # Local/remote data sources
│   ├── models/                    # JSON-serializable models
│   └── repositories/              # Implementation of domain repositories

├── domain/                        # Business logic layer
│   ├── entities/                  # Core business objects
│   ├── repositories/              # Abstract interfaces for repositories
│   ├── stores/                    # booking, equipment type store use cases
│   ├── usecases/                  # Application-specific use cases
│   └── http_req_param/            # Request parameter objects for API calls

├── network/                       # Network configuration and API infrastructure
│   ├── api_endpoints.dart         # Centralized API endpoint paths
│   ├── api_status.dart            # Status handling for API responses
│   ├── dio/			           # Configured Dio client
│   ├── interceptors/              # Custom Dio interceptors
│   ├── file_field.dart            # File-related request helpers
│   └── network_repository.dart    # Wrapper for network operations

├── service_locator/              # App-wide dependency injection
│   ├── app_cubits/                # Global Cubits (e.g., ThemeCubit, AuthCubit)
│   ├── app_services/              # Global services (e.g., AuthService, LoggerService)
│   └── service_locator.dart       # Initializes and registers dependencies

├── services/                      # Platform-level services and integrations
│   ├── date_time/                 # Date and time utilities
│   ├── ip/                        # fetch country code from ip-api
│   ├── location/                  # Location permission & GPS helper
│   ├── media/                     # image picker, file access
│   ├── notification/              # FCM notification setup
│   └── permission/                # permission handler for notification and location

├── presentation/                  # UI layer
│   ├── pages/
│   │   └── booking/
│   │       ├── booking_cubit.dart          # Logic and state handling
│   │       ├── booking_page.dart           # Main booking screen
│   │       ├── booking_page_initial_param.dart # Navigation params
│   │       └── booking_state.dart          # UI state class
|	|		├── widgets/                   	# Specific/single-purpose UI widgets
│   ├── widgets/                  # Reusable UI components
│   └── sheets/                   # Bottom sheets and modals

│   ├── widgets/                   # Reusable UI components
│   └── cubits/                    # UI logic and state management (Cubit/Bloc)


└── firebase_options.dart      # Generated Firebase config (FlutterFire CLI)
└── main.dart                      # App entry point


```


## 📦 Packages Used

This app makes use of a wide range of powerful Flutter packages, grouped below by category for clarity:

----------

### 🔧 Core & Utilities

-   **`get_it`** – Service locator for dependency injection.
    
-   **`equatable`** – Simplifies value comparison for Dart objects.
    
-   **`intl`** – Date, time, and number formatting.
    
-   **`path`**, **`mime`**, **`http_parser`** – File and content type utilities.

-   **`url_launcher`** - Call/open web browser.
    

----------

### 🧱 Architecture & State Management

-   **`flutter_bloc`** – State management using Cubit and Bloc patterns.
    
-   **`go_router`** – Declarative navigation and routing.
    
-   **`url_strategy`** – Removes the `#` in Flutter web URLs.
    

----------

### 🧩 UI & Animations

-   **`google_fonts`** – Use Google Fonts in your app.
    
-   **`flutter_svg`** – Rendering SVG assets.
    
-   **`skeletonizer`** – Shimmer/skeleton loading placeholders.
    
-   **`carousel_slider`** – Image and item carousels.
    
-   **`readmore`** – Expandable text widget.
    
-   **`dotted_border`** – Draws dotted borders around widgets.
    
-   **`linear_progress_bar`** – Customizable linear progress indicators.
    
-   **`badges`** – Add notification-style badges to widgets.
    
-   **`flutter_widget_from_html`** – Render HTML as Flutter widgets.
    
-   **`expand_tap_area`** – Increases the touch area of widgets.
    

----------

### 📱 Input & Form

-   **`intl_phone_field`** – International phone number input.
    
-   **`pinput`** – PIN code input widget.
    

----------

### 🌐 Networking & API

-   **`dio`** – Powerful HTTP client for API calls.
    
-   **`cookie_jar`**, **`dio_cookie_manager`** – Cookie handling for `dio`.
    
-   **`pretty_dio_logger`** – Log HTTP requests and responses.
    

----------

### 🔐 Firebase & Authentication

-   **`firebase_core`**, **`firebase_auth`**, **`firebase_messaging`** – Firebase integration for core, auth, and messaging.
    
-   **`google_sign_in`**, **`sign_in_with_apple`** – Social login providers.
    
-   **`flutter_local_notifications`** – Local device notifications.
    

----------

### 📍 Location & Maps

-   **`google_maps_flutter`** – Embed Google Maps.
    
-   **`geolocator`**, **`location`** – Geolocation and permission handling.
    
-   **`map_launcher`** – Launch maps externally from your app.
    

----------

### 📅 Calendar & Scheduling

-   **`table_calendar`** – Feature-rich calendar UI.
    
-   **`syncfusion_flutter_datepicker`** – Date picker with advanced features.
    
-   **`syncfusion_flutter_sliders`** – Highly customizable slider components.
    

----------

### 📷 Media & File

-   **`image_picker`** – Pick images from camera or gallery.
    
-   **`flutter_cache_manager`** – Cache and manage files/images.

-   **`cached_network_image`** - Cache Network image.
    

----------

### ⚙️ Permissions & Device Services

-   **`permission_handler`** – Request runtime permissions.
    
-   **`visibility_detector`** – Track widget visibility in viewport.
    

----------

### 💬 Communication & Support

-   **`flutter_tawkto`** – Integrate Tawk.to live chat.
    
-   **`elegant_notification`** – Beautiful toast and notification UI.
    


# Flutter Information

## Flutter

| Version | Channel | Repository                                             |
|---------|---------|--------------------------------------------------------|
| 3.29.3  | stable  | [Flutter Repo](https://github.com/flutter/flutter.git) |

### Framework/FEATURES
May read this document to understand [Clean Code Architecture](https://medium.com/@yamen.abd98/clean-architecture-in-flutter-mvvm-bloc-dio-79b1615530e1) 


| Architecture & Services       | 
|-------------------------------|
| CLEAN CODE ARCHITECTURE       |
| REST APIS                     |
| BLOC (CUBIT) STATE MANAGEMENT |

### Engine

| Revision       |
|----------------|
| cb4b5fff73     |

## Tools

| Dart Version | DevTools Version |
|--------------|------------------|
| 3.7.2        | 2.42.3           |

## Keystore
keyAlias: key0
keystore password: vfitai

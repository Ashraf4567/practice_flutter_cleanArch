# Posts Clean Architecture App

This is a Flutter application that demonstrates a clean architecture approach for fetching and displaying posts from a remote API. The app utilizes the BLoC (Business Logic Component) pattern for state management and dependency injection using GetIt.

## Features

- Fetches posts from a remote API (JSONPlaceholder).
- Displays posts in a scrollable list.
- Implements loading and error states.
- Allows refreshing of posts.

## Architecture

The project follows a clean architecture pattern, which separates the application into different layers:

- **Presentation Layer**: Contains UI components and BLoC classes.
- **Domain Layer**: Contains business logic, entities, and use cases.
- **Data Layer**: Contains data sources and repositories.

## Technologies Used

- Flutter
- Dart
- BLoC for state management
- GetIt for dependency injection
- HTTP package for making network requests


## Project Structure

ib/
├── data/
│ ├── models/ # Data models
│ └── repositories/ # Repository implementations
├── di/ # Dependency injection setup
├── domain/
│ ├── entities/ # Domain entities
│ ├── repositories/ # Repository interfaces
│ └── usecases/ # Use cases
├── presentation/
│ ├── blocs/ # BLoC classes
│ ├── pages/ # UI pages
│ └── widgets/ # Reusable widgets
└── main.dart # Entry point of the application



# Flutter Posts App with Clean Architecture

A simple Flutter application that fetches posts from a remote API (JSONPlaceholder) and displays them using a Clean Architecture pattern. The project demonstrates state management using `BLoC`, dependency injection with `GetIt`, and error handling using sealed classes.

## Features

- Fetch posts from a remote API (https://jsonplaceholder.typicode.com/posts)
- State management using BLoC with different states: Loading, Success, Error
- Clean Architecture structure with separation of concerns (Presentation, Domain, Data layers)
- Dependency Injection using `GetIt`
- Real HTTP requests using `http` package
- Sealed classes for handling states and events
- Error handling and loading states

## Tech Stack

- **Flutter**: Cross-platform mobile development framework
- **Dart**: The programming language for Flutter
- **BLoC (Business Logic Component)**: For state management
- **GetIt**: Simple dependency injection framework for Dart and Flutter
- **http**: For making HTTP requests
- **Equatable**: For value equality in Dart classes

## Project Structure

The project follows a Clean Architecture structure:


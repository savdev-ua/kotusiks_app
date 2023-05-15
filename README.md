# Flutter Cat Facts

This project is a Flutter application that uses different technologies and techniques to provide an engaging, informative, and fun user experience. The app fetches interesting cat facts from [CatFact Ninja](https://catfact.ninja/fact) and presents them alongside images sourced from [Cat as a Service (CATAAS)](https://cataas.com/cat). All liked cat facts are stored locally on the device using Hive DB.

https://github.com/savdev-ua/kotusiks_app/assets/62287261/eecd84e6-7cbf-4a4d-9574-47200de7c00e

## Key Features
- Fetching random cat facts from the CatFact Ninja API
- Displaying random cat images from CATAAS
- Storing cat facts locally using Hive DB for offline access

**Note:** The CatFact Ninja API does not provide a creation date for the facts. To mitigate this, I'm generating a random date for each fact to simulate a timeline of creation.

## Tech Stack

This project uses a number of high-quality Flutter packages and methodologies:

- **BLoC** for state management, providing a predictable state that responds to user inputs and system events
- **Clean Architecture** practices are followed to ensure separation of concerns and scalability of the application
- **Retrofit** and **Dio**, along with **pretty_dio_logger**, are used for efficient, reliable, and developer-friendly network operations
- The project is **modular** for efficient code organization and easy navigation
- **Freezed** package is used for immutable data modeling
- **flutter_hive** is used for local data storage
- User feedback is facilitated through **flutter_toast**
- A delightful loading state is achieved using the **shimmer** package
- **intl** package is used for internationalizing the application
- **Equatable** is used to simplify equality comparisons in Dart objects

## Getting Started

To get started with this project, you'll need to have [Flutter](https://flutter.dev/) and [Dart](https://dart.dev/) installed on your local machine. Once you have those installed, you can clone this repository and install the dependencies.


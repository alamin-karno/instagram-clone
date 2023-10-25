# Instagram Clone with Clean Architecture in Flutter

An Instagram clone application developed in Flutter, implementing Clean Architecture principles for a robust and maintainable codebase.

## Features

- **User Authentication**: Sign up, log in, and authenticate users securely.
- **Feed**: Display posts from followed users, including images and captions.
- **Upload Posts**: Allow users to upload images with captions to their profile.
- **User Profile**: View and edit user profiles, including profile pictures and bio.
- **Comments and Likes**: Users can comment on and like posts.
- **Follow/Unfollow**: Follow and unfollow other users to customize your feed.
- **Explore**: Discover new users and posts based on interests and trending topics.

## Tech Stack

- **Flutter**: Cross-platform framework for building mobile applications.
- **Dart**: Programming language used for Flutter app development.
- **Clean Architecture**: Separation of concerns for maintainable and testable code.
- **Firebase**: Backend services for authentication, database, and storage.
- **Provider**: State management for efficient and reactive UI updates.
- **Dio**: HTTP client for making API calls to the backend server.
- **CachedNetworkImage**: Caching images for faster loading and improved performance.

## Setup

1. **Clone the Repository:**
   ```sh
   git clone https://github.com/alamin-karno/instagram-clone.git
   cd instagram-clone
   ```
2. **Install Dependencies:**   
   ```sh
   flutter pub get
   ```
3. **Configure Firebase:**   
   - Create a new Firebase project on the Firebase Console.
   - Add your Android and iOS apps to the project and download the configuration files.
   - Place the configuration files (`google-services.json` for Android, `GoogleService-Info.plist` for iOS) in the respective directories of your Flutter project.
4. **Run the App:**   
   ```sh
   flutter run
   ```
   
## Contributing

Contributions are welcome! Please fork the repository and create a pull request with your changes. For major modifications, please open an issue first to discuss what you would like to change.


## License

This project is licensed under the [MIT License](http://www.google.com)

Feel free to customize the content according to your project specifics. Good luck with your Instagram clone project!
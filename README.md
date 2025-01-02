# Mockify - Random Data Generator for Flutter

`Mockify` is a comprehensive random data generator library for Flutter that helps developers generate random data, such as names, addresses, emails, phone numbers, company details, and much more. This is particularly useful for testing, mocking APIs, or creating placeholder data during development.

## Installation

To use `Mockify` in your Flutter project, add it as a dependency in your `pubspec.yaml` file:

```yaml
dependencies:
  mockify: ^1.0.0
```

Then, run the following command to install the package:

```bash
flutter pub get
```

## Usage

Once installed, you can start using `Mockify` to generate random data. Here are some examples of how to use the different methods available in the library.

### Generate Random Name

```dart
import 'package:mockify/mockify.dart';

void main() {
  String randomName = Mockify.name();
  print(randomName); // e.g., "John Doe"
}
```

You can also specify gender and locale:

```dart
String maleName = Mockify.name(gender: 'male');
String femaleName = Mockify.name(gender: 'female', locale: Locale('en', 'US'));
```

### Generate Random Email

```dart
String randomEmail = Mockify.email();
print(randomEmail); // e.g., "abc123@mockify.org"
```

### Generate Random Phone Number

```dart
String randomPhone = Mockify.phone();
print(randomPhone); // e.g., "+84-123-456-789"
```

### Generate Random Address

```dart
String randomAddress = Mockify.address();
print(randomAddress); // e.g., "1234 Elm St, Springfield, IL"
```

### Generate Random Color

```dart
Color randomColor = Mockify.color();
print(randomColor); // e.g., Color(0xFF3D5B6E)
```

### Generate Random Avatar

```dart
String avatarUrl = Mockify.avatar();
print(avatarUrl); // e.g., "https://randomuser.me/api/portraits/men/12.jpg"
```

### Generate Random Company Name

```dart
String companyName = Mockify.companyName();
print(companyName); // e.g., "TechWorks"
```

### Generate Random Job Title

```dart
String jobTitle = Mockify.jobTitle();
print(jobTitle); // e.g., "Software Engineer"
```

### Generate Random Date

```dart
DateTime randomDate = Mockify.date(minYear: 2000, maxYear: 2025);
print(randomDate); // e.g., "2023-07-12 14:34:22.123"
```

### Generate Random Credit Card Number

```dart
String creditCardNumber = Mockify.creditCardNumber();
print(creditCardNumber); // e.g., "4111111111111111"
```

### Generate Random UUID

```dart
String randomUUID = Mockify.uuid();
print(randomUUID); // e.g., "7a8c2bb8-39c1-4b68-9447-8586ff083b4d"
```

### Generate Random Image URL

You can also generate random image URLs with customizable options such as width, height, grayscale, and blur.

```dart
String imageUrl = Mockify.imageUrl(width: 300, height: 200, grayscale: true, blur: 5);
print(imageUrl); // e.g., "https://picsum.photos/300/200?random=1234&grayscale&blur=5"
```

### Generate Random JWT

Generate a random JWT with a customizable payload.

```dart
String jwt = Mockify.generateJwt();
print(jwt); // e.g., "eyJhbGciOiAiSFMyNTYiLCJ0eXAiOiAiSldUIn0.eyJzdWIiOiAiMTAwMDEyMyIsIm5hbWUiOiAiVXNlciA2OCIsImlhdCI6IDE2MjA5NjI1NzYsImV4cCI6IDE2MjA5NjYxNzYifQ.Sm91bmdXYXM="
```

### Generate Random Location

```dart
String location = Mockify.location();
print(location); // e.g., "37.7749, -122.4194"
```

### Generate Random Emoji

```dart
String randomEmoji = Mockify.emoji();
print(randomEmoji); // e.g., "😊"
```

### Generate Random File Name

```dart
String randomFileName = Mockify.fileName(extension: 'pdf');
print(randomFileName); // e.g., "document-042.pdf"
```

## Available Methods

- `name`: Generate a random name (first, middle, last).
- `email`: Generate a random email address.
- `phone`: Generate a random phone number with customizable country code.
- `address`: Generate a random address.
- `color`: Generate a random color.
- `avatar`: Generate a random avatar URL.
- `companyName`: Generate a random company name.
- `jobTitle`: Generate a random job title.
- `date`: Generate a random date within a specified range of years.
- `creditCardNumber`: Generate a random credit card number.
- `uuid`: Generate a random UUID.
- `imageUrl`: Generate a random image URL with options for width, height, grayscale, and blur.
- `generateJwt`: Generate a random JWT token with a customizable payload.
- `location`: Generate a random latitude and longitude.
- `emoji`: Generate a random emoji.
- `fileName`: Generate a random file name with a customizable extension.

## Contributing

Feel free to contribute to this project by forking the repository, making improvements, and submitting pull requests.

### Issues

If you encounter any issues, please report them by opening an issue in the GitHub repository.

## License

`Mockify` is open-source and available under the MIT License. See the [LICENSE](LICENSE) file for more information.

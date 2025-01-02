import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:mockify/generators/address_gen.dart';
import 'package:mockify/generators/companies_gen.dart';
import 'package:mockify/generators/currencies_gen.dart';
import 'package:mockify/generators/department_gen.dart';
import 'package:mockify/generators/emoji_gen.dart';
import 'package:mockify/generators/filename_gen.dart';
import 'package:mockify/generators/hobbies_gen.dart';
import 'package:mockify/generators/jobs_titles_gen.dart';
import 'package:mockify/generators/lorem_gen.dart';
import 'package:mockify/generators/name_gen.dart';
import 'package:mockify/supports/get_locale.dart';

class Mockify {
  static final _random = Random();

  /// Generate a random name based on locale and gender.
  static String name(
      {String? gender, bool includeMiddleName = true, Locale? locale}) {
    // Get the device's locale
    final localeString = locale?.toString() ?? getDeviceLocale();

    final names = localizedNames[localeString] ?? localizedNames['en']!;

    // If gender is not provided, choose randomly between 'male' or 'female'
    gender ??= _random.nextBool() ? 'male' : 'female';

    final firstName = names[gender]?[_random.nextInt(names[gender]!.length)] ??
        names['male']![_random.nextInt(names['male']!.length)];
    final lastName =
        names['lastNames']![_random.nextInt(names['lastNames']!.length)];

    return includeMiddleName && names.containsKey('middleNames')
        ? '$firstName ${names['middleNames']![_random.nextInt(names['middleNames']!.length)]}$lastName'
        : '$firstName $lastName';
  }

  /// Generate a random email.
  static String email() {
    const domains = ['mockify.org', 'mockify.com', 'mockify.io', 'mockify.dev'];
    final username = '${_randomString(5)}${_random.nextInt(100)}';
    final domain = domains[_random.nextInt(domains.length)];
    return '$username@$domain';
  }

  /// Generate a random phone number.
  static String phone([String countryCode = '+84']) {
    final part1 = _random.nextInt(900) + 100; // 100-999
    final part2 = _random.nextInt(900) + 100; // 100-999
    final part3 = _random.nextInt(900) + 100; // 0000-9999
    return '$countryCode-$part1-$part2-${part3.toString().padLeft(3, '0')}';
  }
  // /// Generate a random address.
  // static String address() {

  // }

  /// Generate a random color.
  static Color color() {
    return Color.fromARGB(
      _random.nextInt(256),
      _random.nextInt(256),
      _random.nextInt(256),
      _random.nextInt(256),
    );
  }

  /// Generate a random avatar. 1: male, 0: female
  static String avatar({int? random}) {
    final avatars = [
      'https://randomuser.me/api/portraits/men/${_random.nextInt(100)}.jpg',
      'https://randomuser.me/api/portraits/women/${_random.nextInt(100)}.jpg',
      'https://i.pravatar.cc/150?u=${_random.nextInt(100)}',
    ];

    return avatars[_random.nextInt(random ?? avatars.length)];
  }

  /// Generate a random address.
  static String address() {
    // const zipCodes = ['10001', '94101', '60601', '33101', '75201'];
    final streetNumber = _random.nextInt(9999) + 1;
    final street = streets[_random.nextInt(streets.length)];
    final city = cities[_random.nextInt(cities.length)];
    final state = states[_random.nextInt(states.length)];
    // final zipCode = zipCodes[_random.nextInt(zipCodes.length)];

    return '$streetNumber $street, $city, $state';
  }

  /// Generate a random date year within a range.
  static DateTime date({required int minYear, required int maxYear}) {
    final min = DateTime(minYear, 1, 1);
    final max = DateTime(maxYear, 12, 31);
    // random hour, minute, second, millisecond
    final randomDate = min.add(Duration(
      days: _random.nextInt(max.difference(min).inDays),
      hours: _random.nextInt(24),
      minutes: _random.nextInt(60),
      seconds: _random.nextInt(60),
      milliseconds: _random.nextInt(1000),
    ));
    return randomDate;
  }

  /// Generate a random company name
  static String companyName() {
    return companies[_random.nextInt(companies.length)];
  }

  /// Generate a random job title
  static String jobTitle() {
    return titles[_random.nextInt(titles.length)];
  }

  // Generate a random company department
  static String department() {
    return departments[_random.nextInt(departments.length)];
  }

  /// Generate a random user bio
  static String bio() {
    final hobby1 = hobbies[_random.nextInt(hobbies.length)];
    final hobby2 = hobbies[_random.nextInt(hobbies.length)];
    return 'Loves $hobby1 and $hobby2.';
  }

  /// Generate a random credit card number
  static String creditCardNumber() {
    const prefixes = ['4', '5', '6']; // Visa, Mastercard, Discover
    final prefix = prefixes[_random.nextInt(prefixes.length)];
    return prefix + List.generate(15, (_) => _random.nextInt(10)).join();
  }

  // Generate a random IP address
  static String ipAddress() {
    return List.generate(4, (_) => _random.nextInt(256)).join('.');
  }

  // Generate a random MAC address
  static String macAddress() {
    return List.generate(
            6, (_) => _random.nextInt(256).toRadixString(16).padLeft(2, '0'))
        .join(':')
        .toUpperCase();
  }

  /// Generate a random currency and amount.
  static String currency() {
    final amount = (_random.nextDouble() * 1000).toStringAsFixed(2);
    return '${currencies[_random.nextInt(currencies.length)]} $amount';
  }

  /// Generate a random time in 24-hour format.
  static String time24Hour() {
    final hour = _random.nextInt(24).toString().padLeft(2, '0');
    final minute = _random.nextInt(60).toString().padLeft(2, '0');
    return '$hour:$minute';
  }

  /// Generate a random academic grade.
  static String grade() {
    const grades = ['A', 'B', 'C', 'D', 'F'];
    final modifiers = ['', '+', '-'];
    return grades[_random.nextInt(grades.length)] +
        (modifiers[_random.nextInt(modifiers.length)]);
  }

  /// Generate a random file name.
  static String fileName({String extension = 'txt'}) {
    final name = fileNames[_random.nextInt(fileNames.length)];
    final number = _random.nextInt(1000).toString().padLeft(3, '0');
    return '$name-$number.$extension';
  }

  /// Generate a random emoji.
  static String emoji() {
    return emojis[_random.nextInt(emojis.length)];
  }

  /// Generate a random paragraph.
  static String paragraph({int sentenceCount = 5, bool useLorem = true}) {
    if (useLorem) {
      return '${List.generate(
        sentenceCount,
        (_) => loremSentences[_random.nextInt(loremSentences.length)],
      ).join('. ')}.';
    }

    return '${List.generate(sentenceCount, (_) => sentence()).join('. ')}.';
  }

  /// Generate a random URL (example.com).
  static String randomURL() {
    final random = Random();
    const domains = ['com', 'org', 'net', 'io', 'co', 'edu'];
    final domain = domains[random.nextInt(domains.length)];
    return 'https://www.mockify.$domain';
  }

  /// Generate a random UUID.
  static String uuid() {
    final part1 = _random.nextInt(0xFFFFFFFF).toRadixString(16).padLeft(8, '0');
    final part2 = _random.nextInt(0xFFFF).toRadixString(16).padLeft(4, '0');
    final part3 = _random.nextInt(0xFFFF).toRadixString(16).padLeft(4, '0');
    final part4 = _random.nextInt(0xFFFF).toRadixString(16).padLeft(4, '0');
    final part5 = _random
        .nextInt(0xFFFFFFFF)
        .toRadixString(16)
        .padLeft(8, '0'); // Sửa lại đây
    return '$part1-$part2-$part3-$part4-$part5';
  }

  /// Generate a random latitude.
  static double latitude() => _random.nextDouble() * 180 - 90;

  /// Generate a random longitude.
  static double longitude() => _random.nextDouble() * 360 - 180;

  /// Generate a random location.
  static String location() {
    return '${latitude()}, ${longitude()}';
  }

  /// Generate a random sentence.
  static T value<T>(List<T> enumValues) {
    return enumValues[_random.nextInt(enumValues.length)];
  }

  /// Generate a random image URL with customizable options.
  ///
  /// Parameters:
  /// - [width]: The width of the image.
  /// - [height]: The height of the image.
  /// - [grayscale]: Whether the image should be in grayscale.
  /// - [blur]: The level of blur (e.g., `5` for a moderate blur).
  static String imageUrl({
    int width = 400,
    int height = 200,
    bool grayscale = false,
    int blur = 0,
  }) {
    final randomInt = _random.nextInt(1000);

    // Base URL
    String url = 'https://picsum.photos/$width/$height?random=$randomInt';

    // Add grayscale if needed
    if (grayscale) {
      url += '&grayscale';
    }

    // Add blur if needed
    if (blur > 0) {
      url += '&blur=$blur';
    }

    return url;
  }

  /// Generate a random JWT.
  static String generateJwt({
    Map<String, dynamic>? customPayload,
    String algorithm = 'HS256',
  }) {
    // Generate the header
    final header = {
      'alg': algorithm,
      'typ': 'JWT',
    };

    // Generate the payload
    final payload = customPayload ??
        {
          'sub': _randomString(10),
          'name': 'User ${_random.nextInt(1000)}',
          'iat': DateTime.now().millisecondsSinceEpoch ~/ 1000,
          'exp': DateTime.now()
                  .add(const Duration(days: 1))
                  .millisecondsSinceEpoch ~/
              1000,
        };

    // Encode header and payload
    final encodedHeader = _base64UrlEncode(jsonEncode(header));
    final encodedPayload = _base64UrlEncode(jsonEncode(payload));

    // Generate a dummy signature (you can replace this with a real one if needed)
    final signature = _base64UrlEncode(_randomString(20));

    // Combine all parts to form a JWT
    return '$encodedHeader.$encodedPayload.$signature';
  }

  /// Generate data.
  static List<T> generateObjects<T>(
    int length,
    T Function(int) generator,
  ) {
    return List.generate(length, generator);
  }
}

/// Helper function to Base64Url encode a string
String _base64UrlEncode(String input) {
  return base64Url
      .encode(utf8.encode(input))
      .replaceAll('=', ''); // Remove padding
}

/// Helper function to generate a random string
String _randomString(int length) {
  const chars =
      'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
  return List.generate(length, (_) => chars[Random().nextInt(chars.length)])
      .join();
}

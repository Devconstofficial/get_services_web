import 'dart:convert';

class UserResponseModel {
  final String name;
  final String phoneNumber;
  final String profilePicture;
  final List<String> role;
  final String id;
  final String createdAt;
  final String updatedAt;
  final List<String> reviews;

  UserResponseModel({
    required this.name,
    required this.phoneNumber,
    required this.profilePicture,
    required this.role,
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.reviews,
  });

  factory UserResponseModel.fromJson(Map<String, dynamic> json) {
    final userData = json;

    return UserResponseModel(
      name: userData['name'] ?? '',
      phoneNumber: userData['phoneNumber'] ?? '',
      profilePicture: userData['profilePicture'] ?? '',
      role: userData['role'] != null && userData['role'] is List
          ? (userData['role'] as List)
              .expand((x) => x is List ? x : [x])
              .cast<String>()
              .toList()
          : [],
      id: userData['_id'] ?? '',
      createdAt: userData['createdAt'] ?? '',
      updatedAt: userData['updatedAt'] ?? '',
      reviews: userData['reviews'] != null && userData['reviews'] is List
          ? (userData['reviews'] as List).cast<String>()
          : [], // Parse reviews
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'phoneNumber': phoneNumber,
      'profilePicture': profilePicture,
      'role': role,
      '_id': id,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      'reviews': reviews, // Include reviews in toJson
    };
  }

  static UserResponseModel fromJsonString(String jsonString) {
    return UserResponseModel.fromJson(jsonDecode(jsonString));
  }

  String toJsonString() {
    return jsonEncode(toJson());
  }
}

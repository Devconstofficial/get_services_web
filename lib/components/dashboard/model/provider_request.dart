import 'dart:convert';

class ProviderRequest {
  final String providerId;
  final String providerName;
  final String location;
  final String category;
  final String status;

  ProviderRequest({
    required this.providerId,
    required this.providerName,
    required this.location,
    required this.category,
    required this.status,
  });

  // Factory method to create an instance from JSON
  factory ProviderRequest.fromJson(Map<String, dynamic> json) {
    return ProviderRequest(
      providerId: json['providerId'],
      providerName: json['providerName'],
      location: json['location'],
      category: json['category'],
      status: json['status'],
    );
  }

  // Method to convert the instance to JSON
  Map<String, dynamic> toJson() {
    return {
      'providerId': providerId,
      'providerName': providerName,
      'location': location,
      'category': category,
      'status': status,
    };
  }

  // CopyWith method
  ProviderRequest copyWith({
    String? providerId,
    String? providerName,
    String? location,
    String? category,
    String? status,
  }) {
    return ProviderRequest(
      providerId: providerId ?? this.providerId,
      providerName: providerName ?? this.providerName,
      location: location ?? this.location,
      category: category ?? this.category,
      status: status ?? this.status,
    );
  }

  @override
  String toString() {
    return 'ProviderRequest(providerId: $providerId, providerName: $providerName, location: $location, category: $category, status: $status)';
  }
}

class ProviderRequestModel {
  final String businessName;
  final String owner;
  final List<Service> services;
  final String status;
  final String id;
  final List<MapLocation> mapLocations;
  final DateTime createdAt;
  final DateTime updatedAt;
  final int v;

  ProviderRequestModel({
    required this.businessName,
    required this.owner,
    required this.services,
    required this.status,
    required this.id,
    required this.mapLocations,
    required this.createdAt,
    required this.updatedAt,
    required this.v,
  });

  factory ProviderRequestModel.fromJson(Map<String, dynamic> json) {
    return ProviderRequestModel(
      businessName: json['businessName'] ?? '',
      owner: json['owner'] ?? '',
      services: (json['services'] as List?)
              ?.map((item) => Service.fromJson(item))
              .toList() ??
          [],
      status: json['status'] ?? '',
      id: json['_id'] ?? '',
      mapLocations: (json['mapLocations'] as List?)
              ?.map((item) => MapLocation.fromJson(item))
              .toList() ??
          [],
      createdAt:
          DateTime.parse(json['createdAt'] ?? DateTime.now().toIso8601String()),
      updatedAt:
          DateTime.parse(json['updatedAt'] ?? DateTime.now().toIso8601String()),
      v: json['__v'] ?? 0,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'businessName': businessName,
      'owner': owner,
      'services': services.map((e) => e.toJson()).toList(),
      'status': status,
      '_id': id,
      'mapLocations': mapLocations.map((e) => e.toJson()).toList(),
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
      '__v': v,
    };
  }

  static ProviderRequestModel fromJsonString(String jsonString) {
    return ProviderRequestModel.fromJson(jsonDecode(jsonString));
  }

  String toJsonString() {
    return jsonEncode(toJson());
  }
}

class MapLocation {
  final double latitude;
  final double longitude;
  final double radius;
  final String id;

  MapLocation({
    required this.latitude,
    required this.longitude,
    required this.radius,
    required this.id,
  });

  factory MapLocation.fromJson(Map<String, dynamic> json) {
    return MapLocation(
      latitude: (json['latitude'] as num?)?.toDouble() ?? 0.0,
      longitude: (json['longitude'] as num?)?.toDouble() ?? 0.0,
      radius: (json['radius'] as num?)?.toDouble() ?? 0.0,
      id: json['_id'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'latitude': latitude,
      'longitude': longitude,
      'radius': radius,
      '_id': id,
    };
  }
}

class Service {
  final String service;
  final double price;
  final String id;

  Service({
    required this.service,
    required this.price,
    required this.id,
  });

  factory Service.fromJson(Map<String, dynamic> json) {
    return Service(
      service: json['service'] ?? '',
      price: (json['price'] as num?)?.toDouble() ?? 0.0,
      id: json['_id'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'service': service,
      'price': price,
      '_id': id,
    };
  }

  static Service fromJsonString(String jsonString) {
    return Service.fromJson(jsonDecode(jsonString));
  }

  String toJsonString() {
    return jsonEncode(toJson());
  }
}

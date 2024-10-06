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

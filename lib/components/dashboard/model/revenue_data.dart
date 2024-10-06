class RevenueData {
  final int value;
  final int lastMonth;
  final int thisMonth;

  RevenueData({
    required this.value,
    required this.lastMonth,
    required this.thisMonth,
  });

  // Factory method to create an instance from JSON
  factory RevenueData.fromJson(Map<String, dynamic> json) {
    return RevenueData(
      value: json['value'],
      lastMonth: json['lastMonth'],
      thisMonth: json['thisMonth'],
    );
  }

  // Method to convert the instance to JSON
  Map<String, dynamic> toJson() {
    return {
      'month': value,
      'lastMonth': lastMonth,
      'thisMonth': thisMonth,
    };
  }

  // CopyWith method
  RevenueData copyWith({
    int? value,
    int? lastMonth,
    int? thisMonth,
  }) {
    return RevenueData(
      value: value ?? this.value,
      lastMonth: lastMonth ?? this.lastMonth,
      thisMonth: thisMonth ?? this.thisMonth,
    );
  }

  @override
  String toString() {
    return 'RevenueData(value: $value, lastMonth: $lastMonth, thisMonth: $thisMonth)';
  }
}

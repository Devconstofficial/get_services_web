class Payment {
  final String paymentId;
  final String client;
  final String provider;
  final double amount;
  final String status;

  Payment({
    required this.paymentId,
    required this.client,
    required this.provider,
    required this.amount,
    required this.status,
  });

  // Factory method to create an instance from JSON
  factory Payment.fromJson(Map<String, dynamic> json) {
    return Payment(
      paymentId: json['paymentId'],
      client: json['client'],
      provider: json['provider'],
      amount: json['amount'],
      status: json['status'],
    );
  }

  // Method to convert the instance to JSON
  Map<String, dynamic> toJson() {
    return {
      'paymentId': paymentId,
      'client': client,
      'provider': provider,
      'amount': amount,
      'status': status,
    };
  }

  // CopyWith method
  Payment copyWith({
    String? paymentId,
    String? client,
    String? provider,
    double? amount,
    String? status,
  }) {
    return Payment(
      paymentId: paymentId ?? this.paymentId,
      client: client ?? this.client,
      provider: provider ?? this.provider,
      amount: amount ?? this.amount,
      status: status ?? this.status,
    );
  }

  @override
  String toString() {
    return 'Payment(paymentId: $paymentId, client: $client, provider: $provider, amount: $amount, status: $status)';
  }
}

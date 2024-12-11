part of 'payment_bloc.dart';


@freezed
class PaymentState with _$PaymentState {
  const factory PaymentState({
    required DateTime? customStartDate,
    required DateTime? customEndDate,
    required int currentTablePageIndex,
    required List<CategoriesModel> paymentStatus,
    required List<Payment> paymentData,
  }) = _PaymentState;

  factory PaymentState.initial() => PaymentState(
      currentTablePageIndex: 0,
      customStartDate:null,
      customEndDate:null,
      paymentStatus:[
        CategoriesModel(name: "completed".tr(), isSelected: false),
        CategoriesModel(name: "pending".tr(), isSelected: false),
        CategoriesModel(name: "refunded".tr(), isSelected: false),
        CategoriesModel(name: "onHold".tr(), isSelected: false),
      ],
      paymentData: [
        Payment(paymentId: 'P001', client: 'Client A', provider: 'Provider X', amount: 100.0, status: "completed".tr()),
        Payment(paymentId: 'P002', client: 'Client B', provider: 'Provider Y', amount: 200.0, status: 'pending'.tr()),
        Payment(paymentId: 'P003', client: 'Client C', provider: 'Provider Z', amount: 150.0, status: "completed".tr()),
        Payment(paymentId: 'P004', client: 'Client D', provider: 'Provider X', amount: 120.0, status: "failed".tr()),
        Payment(paymentId: 'P005', client: 'Client E', provider: 'Provider Y', amount: 80.0, status: 'pending'.tr()),
        Payment(paymentId: 'P006', client: 'Client F', provider: 'Provider Z', amount: 90.0, status: "completed".tr()),
        Payment(paymentId: 'P007', client: 'Client G', provider: 'Provider X', amount: 300.0, status: "completed".tr()),
        Payment(paymentId: 'P008', client: 'Client H', provider: 'Provider Y', amount: 250.0, status: 'pending'.tr()),
        Payment(paymentId: 'P009', client: 'Client I', provider: 'Provider Z', amount: 320.0, status: "completed".tr()),
        Payment(paymentId: 'P010', client: 'Client J', provider: 'Provider X', amount: 400.0, status: "failed".tr()),
        Payment(paymentId: 'P011', client: 'Client K', provider: 'Provider Y', amount: 500.0, status: 'pending'.tr()),
        Payment(paymentId: 'P012', client: 'Client L', provider: 'Provider Z', amount: 600.0, status: "completed".tr()),
        Payment(paymentId: 'P013', client: 'Client M', provider: 'Provider X', amount: 720.0, status: "completed".tr()),
        Payment(paymentId: 'P014', client: 'Client N', provider: 'Provider Y', amount: 530.0, status: "failed".tr()),
        Payment(paymentId: 'P015', client: 'Client O', provider: 'Provider Z', amount: 410.0, status: 'pending'.tr()),
        Payment(paymentId: 'P016', client: 'Client P', provider: 'Provider X', amount: 330.0, status: "completed".tr()),
        Payment(paymentId: 'P017', client: 'Client Q', provider: 'Provider Y', amount: 760.0, status: "completed".tr()),
        Payment(paymentId: 'P018', client: 'Client R', provider: 'Provider Z', amount: 620.0, status: "failed".tr()),
        Payment(paymentId: 'P019', client: 'Client S', provider: 'Provider X', amount: 830.0, status: 'pending'.tr()),
        Payment(paymentId: 'P020', client: 'Client T', provider: 'Provider Y', amount: 920.0, status: "completed".tr()),
        Payment(paymentId: 'P021', client: 'Client U', provider: 'Provider Z', amount: 710.0, status: "completed".tr()),
        Payment(paymentId: 'P022', client: 'Client V', provider: 'Provider X', amount: 560.0, status: "failed".tr()),
        Payment(paymentId: 'P023', client: 'Client W', provider: 'Provider Y', amount: 450.0, status: 'pending'.tr()),
        Payment(paymentId: 'P024', client: 'Client X', provider: 'Provider Z', amount: 640.0, status: "completed".tr()),
        Payment(paymentId: 'P025', client: 'Client Y', provider: 'Provider X', amount: 860.0, status: "completed".tr()),
        Payment(paymentId: 'P026', client: 'Client Z', provider: 'Provider Y', amount: 980.0, status: "failed".tr()),
        Payment(paymentId: 'P027', client: 'Client A1', provider: 'Provider Z', amount: 890.0, status: 'pending'.tr()),
        Payment(paymentId: 'P028', client: 'Client B1', provider: 'Provider X', amount: 770.0, status: "completed".tr()),
        Payment(paymentId: 'P029', client: 'Client C1', provider: 'Provider Y', amount: 850.0, status: "completed".tr()),
        Payment(paymentId: 'P030', client: 'Client D1', provider: 'Provider Z', amount: 670.0, status: 'pending'.tr()),
      ]


  );
}



import 'package:json_annotation/json_annotation.dart';
part 'payment.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Payment {
  final int paymentId;
  final int hostelId;
  final int roomId;
  final int bookedSpace;
  final String studyPeriod;
  final DateTime studyYear;
  final String paymentMethod;
  final int paymentMethodId;
  final DateTime paymentDate;
  final double amountPaid;
  final double totalAmount;
  final double balance;

  Payment({
    required this.paymentId,
    required this.hostelId,
    required this.roomId,
    required this.bookedSpace,
    required this.studyYear,
    required this.studyPeriod,
    required this.paymentMethod,
    required this.paymentMethodId,
    required this.paymentDate,
    required this.amountPaid,
    required this.totalAmount,
    required this.balance,
  });

  factory Payment.fromJson(Map<String, dynamic> json) =>
      _$PaymentFromJson(json);

  Map<String, dynamic> toJson() => _$PaymentToJson(this);

  /*  factory Payment.fromJson(Map<String, dynamic> json) {
    return Payment(
      paymentId: json['payment_id'] as int,
      roomNumber: json['room_number'] as int,
      studyPeriod: json['study_period'] as String,
      studyYear: json['study_year'] as DateTime,
      paymentMethod: json['payment_method'] as String,
      paymentMethodId: json['payment_method_id'] as int,
      paymentDate: json['payment_date'] as DateTime,
      amountPaid: json['amount_paid'] as double,
      totalAmount: json['total_amount'] as double,
      balance: json['balance'] as double,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'payment_id': paymentId,
      'room_number': roomNumber,
      'study_period': studyPeriod,
      'study_year': studyYear,
      'payment_method': paymentMethod,
      'payment_method_id': paymentMethodId,
      'payment_date': paymentDate,
      'amount_paid': amountPaid,
      'total_amount': totalAmount,
      'balance': balance,
    };
  } */
}

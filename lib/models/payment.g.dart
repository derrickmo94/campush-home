// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Payment _$PaymentFromJson(Map<String, dynamic> json) {
  return Payment(
    paymentId: json['payment_id'] as int,
    hostelId: json['hostel_id'] as int,
    roomId: json['room_id'] as int,
    bookedSpace: json['booked_space'] as int,
    studyYear: DateTime.parse(json['study_year'] as String),
    studyPeriod: json['study_period'] as String,
    paymentMethod: json['payment_method'] as String,
    paymentMethodId: json['payment_method_id'] as int,
    paymentDate: DateTime.parse(json['payment_date'] as String),
    amountPaid: (json['amount_paid'] as num).toDouble(),
    totalAmount: (json['total_amount'] as num).toDouble(),
    balance: (json['balance'] as num).toDouble(),
  );
}

Map<String, dynamic> _$PaymentToJson(Payment instance) => <String, dynamic>{
      'payment_id': instance.paymentId,
      'hostel_id': instance.hostelId,
      'room_id': instance.roomId,
      'booked_space': instance.bookedSpace,
      'study_period': instance.studyPeriod,
      'study_year': instance.studyYear.toIso8601String(),
      'payment_method': instance.paymentMethod,
      'payment_method_id': instance.paymentMethodId,
      'payment_date': instance.paymentDate.toIso8601String(),
      'amount_paid': instance.amountPaid,
      'total_amount': instance.totalAmount,
      'balance': instance.balance,
    };

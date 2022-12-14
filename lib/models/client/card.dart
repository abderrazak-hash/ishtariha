import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ishtariha/constants.dart';

class PaymentCard {
  String title, firstname, lastname, number, cvc, expirationDate;
  LinearGradient gradient;
  Bank bank;
  double sold;
  PaymentCard({
    required this.title,
    required this.firstname,
    required this.lastname,
    required this.number,
    required this.cvc,
    required this.expirationDate,
    required this.gradient,
    required this.bank,
    required this.sold,
  });

  String get fullname => '$firstname $lastname'.toUpperCase();

  static PaymentCard emptyCard() => PaymentCard(
        title: 'Shopping',
        firstname: 'KENNICHE',
        lastname: 'AbdErrazak',
        number: '1234 5678 9123 4567',
        cvc: '653',
        expirationDate: '12 / 24',
        gradient: blueGradient,
        bank: Bank.Eddahabia,
        sold: 120.0,
      );
}

// ignore: constant_identifier_names
enum Bank { Eddahabia, CIB }

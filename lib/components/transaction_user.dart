import 'dart:math';

import 'package:flutter/material.dart';
import '../models/transactions.dart';
import 'transaction_form.dart';
import 'transaction_list.dart';

class TransactionUser extends StatefulWidget {
  const TransactionUser({super.key});

  @override
  State<TransactionUser> createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {
  final _transactions = [
    Transactions(
        id: 't1', title: 'Novo tênis', value: 310.76, date: DateTime.now()),
    Transactions(
        id: 't2', title: 'Conta de L2uz', value: 211.30, date: DateTime.now()),
    Transactions(
        id: 't2', title: 'Conta de 4Luz', value: 211.30, date: DateTime.now()),
    Transactions(
        id: 't2', title: 'Conta de L4uz', value: 211.30, date: DateTime.now()),
    Transactions(
        id: 't2', title: 'Conta de L5uz', value: 211.30, date: DateTime.now()),
    Transactions(
        id: 't2', title: 'Conta5 de Luz', value: 211.30, date: DateTime.now()),
    Transactions(
        id: 't2', title: 'Conta6 de Luz', value: 211.30, date: DateTime.now()),
  ];

  _addTransaction(String title, double value) {
    final newTransaction = Transactions(
      id: Random().nextDouble().toString(),
      title: title,
      value: value,
      date: DateTime.now(),
    );

    setState(() {
      _transactions.add(newTransaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TransactionForm(_addTransaction),
        TransactionList(_transactions),
      ],
    );
  }
}

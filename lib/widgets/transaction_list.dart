import 'package:expense_tracker/widgets/transactio_item.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  final Function deleteTx;

  TransactionList(this.transactions, this.deleteTx);

  @override
  Widget build(BuildContext context) {
    return transactions.isEmpty
        ? Column(
      children: <Widget>[
        Text(
          'No transactions added yet!',
          style: Theme.of(context).textTheme.title,
        ),
        SizedBox(
          height: 20,
        ),
        Container(
            height: 200,
            child: Image.asset(
              'assets/image/img.png',
              fit: BoxFit.cover,
            )),
      ],
    )
        : ListView.builder(
      itemBuilder: (ctx, index) {
        return transactionitem(transaction: transactions[index], deleteTx: deleteTx);
      },
      itemCount: transactions.length,
    );
  }
}

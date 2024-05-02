import 'package:flutter/material.dart';
import 'package:resposiveapp/widgets/custom_backgound_container.dart';
import 'package:resposiveapp/widgets/lastest_transaction_section.dart';
import 'package:resposiveapp/widgets/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgorundContainer(child: Column(children: [
      QuickInvoiceHeader(),
      LastestTransactionSection()
    ],));
  }
}
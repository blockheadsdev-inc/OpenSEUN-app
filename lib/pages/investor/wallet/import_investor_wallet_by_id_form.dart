import 'package:flutter/material.dart';

import '../../../modules/form_button.dart';

class ImportInvestorWalletByIdForm extends StatefulWidget {
  const ImportInvestorWalletByIdForm({Key? key}) : super(key: key);

  @override
  State<ImportInvestorWalletByIdForm> createState() =>
      _ImportInvestorWalletByIdFormState();
}

class _ImportInvestorWalletByIdFormState
    extends State<ImportInvestorWalletByIdForm> {
  final GlobalKey _importInvestorWallet = GlobalKey<FormState>();

  late TextEditingController _investorIdField;
  late TextEditingController _investorWalletIdField;

  @override
  void initState() {
    _investorIdField = TextEditingController();
    _investorWalletIdField = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _investorIdField.dispose();
    _investorWalletIdField.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _importInvestorWallet,
      child: Column(
        children: [
          TextFormField(
            controller: _investorIdField,
            decoration: const InputDecoration(labelText: "Investor ID"),
          ),
          TextFormField(
            controller: _investorWalletIdField,
            decoration: const InputDecoration(labelText: "Wallet ID"),
          ),
          const SizedBox(
            height: 40.0,
          ),
          FormButton(text: "Fetch Wallet"),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../../modules/form_button.dart';

class ImportProjectWalletbyIdForm extends StatefulWidget {
  const ImportProjectWalletbyIdForm({Key? key}) : super(key: key);

  @override
  State<ImportProjectWalletbyIdForm> createState() =>
      _ImportProjectWalletbyIdFormState();
}

class _ImportProjectWalletbyIdFormState
    extends State<ImportProjectWalletbyIdForm> {
  final GlobalKey _importProjectWallet = GlobalKey<FormState>();

  late TextEditingController _projectIdField;
  late TextEditingController _projectWalletIdField;

  @override
  void initState() {
    _projectIdField = TextEditingController();
    _projectWalletIdField = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _projectIdField.dispose();
    _projectWalletIdField.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _importProjectWallet,
      child: Column(
        children: [
          TextFormField(
            controller: _projectIdField,
            decoration: const InputDecoration(labelText: "Project ID"),
          ),
          TextFormField(
            controller: _projectWalletIdField,
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

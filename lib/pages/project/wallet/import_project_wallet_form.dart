import 'package:flutter/material.dart';

import '../../../modules/form_button.dart';

class ImportProjectWalletForm extends StatefulWidget {
  const ImportProjectWalletForm({Key? key}) : super(key: key);

  @override
  State<ImportProjectWalletForm> createState() =>
      _ImportProjectWalletFormState();
}

class _ImportProjectWalletFormState extends State<ImportProjectWalletForm> {
  final GlobalKey _importProjectWallet = GlobalKey<FormState>();

  late TextEditingController _projectIdField;
  late TextEditingController _accountIdField;
  late TextEditingController _publicKeyField;
  late TextEditingController _privateKeyField;
  late TextEditingController _walletNameField;

  @override
  void initState() {
    _projectIdField = TextEditingController();
    _accountIdField = TextEditingController();
    _publicKeyField = TextEditingController();
    _privateKeyField = TextEditingController();
    _walletNameField = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _projectIdField.dispose();
    _accountIdField.dispose();
    _publicKeyField.dispose();
    _privateKeyField.dispose();
    _walletNameField.dispose();

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
            controller: _accountIdField,
            decoration: const InputDecoration(labelText: "Account ID"),
          ),
          TextFormField(
            controller: _publicKeyField,
            decoration: const InputDecoration(labelText: "Public Key"),
          ),
          TextFormField(
            controller: _privateKeyField,
            decoration: const InputDecoration(labelText: "Private Key"),
            obscureText: true,
          ),
          TextFormField(
            controller: _walletNameField,
            decoration: const InputDecoration(labelText: "Wallet Name"),
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

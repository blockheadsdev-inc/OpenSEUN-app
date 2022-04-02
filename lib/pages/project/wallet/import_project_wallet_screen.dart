import 'package:flutter/material.dart';

import '../../../modules/menu_drawer.dart';
import 'import_project_wallet_form.dart';

class ImportProjectWalletScreen extends StatefulWidget {
  const ImportProjectWalletScreen({Key? key}) : super(key: key);

  @override
  State<ImportProjectWalletScreen> createState() =>
      _ImportProjectWalletScreenState();
}

class _ImportProjectWalletScreenState extends State<ImportProjectWalletScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MenuDrawer(),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Import Project Wallet'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Padding(
              padding: EdgeInsets.only(left: 18.0, right: 30.0),
              child: ImportProjectWalletForm(),
            ),
          ],
        ),
      ),
    );
  }
}

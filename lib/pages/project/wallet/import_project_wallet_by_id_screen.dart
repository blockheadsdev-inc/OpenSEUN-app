import 'package:flutter/material.dart';

import '../../../modules/menu_drawer.dart';
import 'import_project_wallet_by_id_form.dart';

class ImportProjectWalletByIdScreen extends StatefulWidget {
  const ImportProjectWalletByIdScreen({Key? key}) : super(key: key);

  @override
  State<ImportProjectWalletByIdScreen> createState() =>
      _ImportProjectWalletByIdScreenState();
}

class _ImportProjectWalletByIdScreenState
    extends State<ImportProjectWalletByIdScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MenuDrawer(),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Import Project Wallet By ID'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Padding(
              padding: EdgeInsets.only(left: 18.0, right: 30.0),
              child: ImportProjectWalletbyIdForm(),
            ),
          ],
        ),
      ),
    );
  }
}
